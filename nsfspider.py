#!/usr/bin/env python3
import sys
assert sys.version_info[0] >= 3, "Python 3 required."

import datetime
import glob
import os
import shlex
import shutil
import struct
import subprocess

import py65emu.cpu

# nsfspider.py
#
# This program executes and analyzes a collection of NSF files.
#
# Input:
# /in_nsf/*.nsf
# /in_nsf/tracks.txt
#
# Output:
# /out_src/*.bin
# /out_src/*.s
# /out_info/binlist.txt
# /out_info/modlist.txt
# /out_info/tracks.inc
# /out_info/nsfspider.txt
#
# See tracks.txt and readme.txt for information.
#
#
# https://github.com/bbbradsmith/zensf

debug_track_skip = 0 # skips the full play/analysis of tracks below this number for faster iteration (if you don't need the mod info)
delete_output = True # delete output files before beginning
disassemble_all = False # may be useful for other patching

in_dir = "in_nsf"
in_list = "tracks.txt"

out_dir_bin = "out_src"
out_dir_mod = "out_mod"
out_dir_info = "out_info"
out_dir_build = "out_build"

out_binlist = "binlist.txt"
out_modlist = "modlist.txt"
out_result = "nsfspider.txt"
out_inc = "tracks.inc"
out_nsfe = "nsfe.inc"

FPS = 60
NSF_TIMEOUT_INIT = 20000 * 120 # cycles allowed for INIT
NSF_TIMEOUT_PLAY = 10000       # cycles allowed for PLAY
gap = 2 # seconds to add to timer for gap

da65 = os.path.join("cc65","bin","da65")
da65_args = " -o %s -v --comments 4 -g -S $%04X %s" # % (output, address, input)

now_string = datetime.datetime.now().strftime("%a %b %d %H:%M:%S %Y")

DEBUG = False

def debug(message):
    if DEBUG:
        print (message)

class NSF:
    '''Parses an NSF file and unpack its ROM data.'''

    class Invalid(Exception):
        '''Invalid NSF data.'''
        
    def __init__(self, data):
        # read the header
        if (len(data) < 0x080):
            raise NSF.Invalid("Incomplete header.")
        if data[0x000:0x005] != b"NESM\x1A":
            raise NSF.Invalid("Missing NESM ID.")
        if data[0x005] != 1:
            raise NSF.Invalid("Unknown version %d." % data[0x005])
        self.songs      = data[0x006]
        self.start      = data[0x007]
        self.addr_load  = struct.unpack("<H",data[0x008:0x00A])[0]
        self.addr_init  = struct.unpack("<H",data[0x00A:0x00C])[0]
        self.addr_play  = struct.unpack("<H",data[0x00C:0x00E])[0]
        self.title      = "".join(chr(c) for c in data[0x00E:0x02E] if c != 0)
        self.artist     = "".join(chr(c) for c in data[0x02E:0x04E] if c != 0)
        self.copyright  = "".join(chr(c) for c in data[0x04E:0x06E] if c != 0)
        self.speed_ntsc = struct.unpack("<H",data[0x06E:0x070])[0]
        self.banks      = data[0x070:0x078]
        self.speed_pal  = struct.unpack("<H",data[0x078:0x07A])[0]
        self.region     = data[0x07A]
        self.expansion  = data[0x07B]
        # calculate
        self.bankswitch = False
        for i in range(8):
            if self.banks[i] != 0:
                self.bankswitch = True
        self.size = len(data) - 0x080
        # build the ROM
        self.rom = [0] * 0x1000 * 256
        if self.size <= 0:
            raise NSF.Invalid("No ROM data in file.")
        if self.size > len(self.rom):
            raise NSF.Invalid("Too much data in file. (%d bytes)" % (len(data)-0x80))
        pad = 0
        if not self.bankswitch:
            pad = self.addr_load - 0x8000
            if (pad < 0):
                raise NSF.Invalid("Low LOAD address unsupported: $%04X" % (self.addr_load))
        else:
            pad = self.addr_load & 0x0FFF
        for b in data[0x080:]:
            self.rom[pad] = b
            pad += 1
        # calculate used banks
        self.bank_begin = 0 # first bank with data
        if not self.bankswitch:
            self.bank_begin = (self.addr_load - 0x8000) >> 12
        self.bank_end = ((pad-1) >> 12) # last bank with data
        self.bank_count = (self.bank_end + 1) - self.bank_begin

    @classmethod
    def open(cls, filename):
        return cls(open(filename,"rb").read())
            
    def __str__(self):
        return \
            ("title:     " + self.title) + "\n" + \
            ("artist:    " + self.artist) + "\n" + \
            ("copyright: " + self.copyright) + "\n" + \
            ("song: %d / %d" % (self.start, self.songs)) + "\n" + \
            ("data size: $%06X = %d bytes" % (self.size, self.size)) + "\n" + \
            ("LOAD: $%04X / INIT: $%04X / PLAY: $%04X" % (self.addr_load, self.addr_init, self.addr_play)) + "\n" + \
            ("region: %02X / expansion: %02X" % (self.region, self.expansion)) + "\n" + \
            ("speed: $%05X / $%05X" % (self.speed_ntsc, self.speed_pal)) + "\n" + \
            ("banks:" + "".join((" %02X" % b) for b in self.banks)) + "\n"


class NSFSpiderMMU:
    '''MMU for py65emu.cpu that logs important information for NSF playback.'''
    
    def __init__(self, nsf):
        self.nsf = nsf
        self.rom = nsf.rom

    def bank(self,b,v,ranged=True):
        #debug("bank: %d, %d" % (b,v))
        self.bank_addr[v] = 0x8000 | (b * 0x1000)
        if self.pc >= 0:
            if self.pc >= 0x8000:
                pcb = (self.pc >> 12) - 0x8
                self.stat_bank_write.add((self.banks[pcb],self.pc)) # bank write from ROM
            else:
                self.stat_bank_write.add((-1,self.pc)) # bank write from RAM
        if (b == 7):
            if v <= self.nsf.bank_end:
                self.stat_bank_f.add(v)
            if ranged and (v > self.nsf.bank_end):
                raise Exception("Bank F (%d) outside file range. Pad NSF with zeros to fill this bank." % v)
        self.banks[b] = v * 0x1000

    # required interface for py65emu MMU
    # - reset
    # - write(addr,value)
    # - read(addr)
    # - readWord(addr) - only used by NMI/IRQ/BRK

    def reset(self):
        self.pc = -1 # set this before every cpu step
        self.ram = [0] * 0x800
        self.exram = [0] * 0x2000
        self.banks = [0] * 8
        self.bank_addr = {}
        self.stat_bank_f = set()
        self.stat_bank_write = set()
        start_banks = self.nsf.banks[:]
        if not self.nsf.bankswitch:
            start_banks = [0,1,2,3,4,5,6,7]
        for i in range(8):
            self.bank(i,start_banks[i],False)
        self.stat_highzp = 0
        self.stat_highram = 0
        self.stat_lowstack = 0x1FF
        self.stat_exram = False
        self.brk = False # BRK notify will be used to signal end of routine
        if (self.nsf.expansion != 0):
            raise Exception("Expansion audio not supported. (%02X)" % (self.nsf.expansion))
        self.last_4015 = 0x0F

    def write(self, addr, value):
        if (addr < 0x0800):
            self.ram[addr] = value
            self.stat_highram = max(self.stat_highram, addr)
            if (addr < 0x100):
                global reserve
                if (addr < reserve):
                    self.stat_highzp = max(self.stat_highzp, addr)
            elif (addr < 0x200):
                self.stat_lowstack = min(self.stat_lowstack, addr)
                if (addr == 0x100):
                    raise Exception("Write to stack at $100. Overflow?")
        elif (addr >= 0x5FF8) and (addr < 0x6000):
            if not self.nsf.bankswitch:
                raise Exception("Banskwitching in non-bankswitched NSF.")
            b = addr - 0x5FF8
            self.bank(b,value)
        elif (addr >= 0x6000) and (addr < 0x8000):
            self.stat_exram = True
            self.exram[addr - 0x6000] = value
        elif (addr >= 0x4000) and (addr < 0x4020):
            if addr == 0x4015:
                # workaround treating $4015 writes as if DPCM is always "finished"
                # correctly emulating $4015 reads is a lot more complicated
                # (requires simulation of parts of all 5 APU channels)
                # but the one engine I saw reading this only used it to avoid
                # retriggering DPCM, so this is sufficient.
                self.last_4015 = value & 0x0F
            #debug("APU write: $%04X = $%02X" % (addr, value))
            pass # Could also add a whitelist of expansion audio addresses
        else:
            raise Exception("Write to unexpected address: $%04X" % (addr))

    def read(self, addr):
        if (addr < 0x0800):
            return self.ram[addr & 0x1FFF]
        elif (addr >= 0x6000) and (addr < 0x8000):
            return self.exram[addr - 0x6000]
        elif (addr >= 0x8000):
            b = (addr >> 12) - 0x8
            mo = self.banks[b]
            mb = mo >> 12
            #debug("read: %04X = %01X : %06X" % (addr, b, mo | (addr & 0xFFF)))
            if mb < self.nsf.bank_begin or mb > self.nsf.bank_end:
                if self.pc != 0x01FF: # don't check this on the BRK
                    raise Exception("Read from padding bank: $%02X ($%04X)" % (mb,addr))
            return self.rom[ mo | (addr & 0xFFF) ]
        elif (addr == 0x4015):
            return self.last_4015
        else:
            raise Exception("Read to unexpected address: $%04X" % (addr))

    def readWord(self, addr):
        if self.pc != 0x01FF:
            raise Exception("Unexpected interrupt?")
        self.brk = True # in the absence of IRQs readWord is only called in response to BRK
        return (self.read(addr+1) << 8) + self.read(addr)

def trace(cpu):
    o0 = cpu.mmu.read(cpu.r.pc  )
    o1 = cpu.mmu.read(cpu.r.pc+1)
    o2 = cpu.mmu.read(cpu.r.pc+2)
    opcode = o0
    opname = "---"
    opargs = "--"
    found = False
    for op in cpu._ops:
        for (args, cy, codes, flags) in op[2]:
            if o0 in codes:
                opname = op[0]
                opargs = args
                found = True
                break
        if found:
            break
    stack = ""
    for i in range(cpu.r.s+1, 0x100):
        stack += " %02X" % cpu.mmu.read(0x100+i)
    print(str(cpu.r) + (" > %02X %02X %02X %3s %2s" % (o0,o1,o2,opname,opargs)) + stack)

def execute(cpu, addr, timeout):
    #debug("execute: $%04X" % (addr))
    cpu.mmu.write(0x01FF,0x00) # BRK
    cpu.mmu.write(0x01FE,0x01)
    cpu.mmu.write(0x01FD,0xFE) # stack return to BRK
    cpu.r.s = 0xFC # RTS will return to BRK on the stack
    cpu.r.pc = addr
    cycles = NSF_TIMEOUT_INIT
    cpu.mmu.brk = False
    while (cycles > 0):
        #trace(cpu) # for debugging
        cpu.mmu.pc = cpu.r.pc
        cpu.step()
        cycles -= cpu.cc
        if cpu.mmu.brk:
            break
        if (cpu.r.p & 4) == 0:
            raise Exception("NSF has enabled IRQ!")
    if cycles < 0:
        raise Exception("Subroutine at $%04X exceeded %d instructions!")
    #debug("RTS after: %d cycles" % (NSF_TIMEOUT_INIT - cycles))

def run_nsf(nsf,song,frames):
    mmu = NSFSpiderMMU(nsf)
    cpu = py65emu.cpu.CPU(mmu)
    #cpu.reset() # reset by constructor
    assert song>0
    cpu.r.a = song-1
    execute(cpu, nsf.addr_init, NSF_TIMEOUT_INIT)
    for f in range(frames):
        execute(cpu, nsf.addr_play, NSF_TIMEOUT_PLAY)
    return mmu

def parse_address(s):
    if (s.startswith("$")):
        return int(s[1:],16)
    else:
        return int(s,10)

def verify_dir(dir):
    if not os.path.exists(dir):
        os.mkdir(dir)

# ====
# MAIN
# ====

result = ""
binlist = ""
mods = ""
inc = ""
order = []
reserve = 0x100
allcaps = False
text_map = {}

def text_remap(s):
    global text_map
    if allcaps:
        s = s.upper()
    for (symbol,replacement) in text_map.items():
        s = s.replace(symbol,replacement)
    return s

if delete_output:
    s = "Removing files."
    result += s + "\n"
    print(s)
    def rm(filename):
        if '*' in filename:
            #debug("removing glob: " + filename)
            for f in glob.glob(filename):
                rm(f)
            return
        #debug("rm: " + filename)
        try:
            os.remove(filename)
            s = "removed: " + filename
            global result
            result += s + "\n"
            print(s)
        except:
            #debug("not removed: " + filename)
            pass
    rm(os.path.join(out_dir_bin,"*.s"))
    rm(os.path.join(out_dir_bin,"*.bin"))
    rm(os.path.join(out_dir_info,out_binlist))
    rm(os.path.join(out_dir_info,out_modlist))
    rm(os.path.join(out_dir_info,out_inc))
    rm(os.path.join(out_dir_info,out_nsfe))
    rm(os.path.join(out_dir_info,out_result))
    result += "\n"
    print()

verify_dir(out_dir_bin)
verify_dir(out_dir_mod)
verify_dir(out_dir_info)
verify_dir(out_dir_build)

# gather entries from in_list
track = 0
entries = []
in_line_count = 0
for line in open(os.path.join(in_dir,in_list),"rt",encoding="UTF-8").readlines():
    try:
        args = shlex.split(line,comments=True)
    except Exception as e:
        raise Exception(("Parsing error. (%d)\n" % in_line_count) + str(e) + "\n>" + line)
    in_line_count += 1
    if len(args) <= 0:
        continue
    elif args[0] == "ORDER":
        for a in args[1:]:
            order.append(int(a,10))
        continue
    elif args[0] == "ALLCAPS":
        if len(args) != 1:
            raise Exception("Unexpected argument after ALLCAPS. (%d)" % in_line_count)
        allcaps = True
        continue
    elif args[0] == "MAP":
        if len(args) != 3:
            raise Exception("MAP must have two arguments. (%d)" % in_line_count)
        if args[1] in text_map:
            raise Exception("Duplicate MAP? \"%s\" (%d)" % (args[1], in_line_count))
        text_map[args[1]] = args[2]
        continue
    elif args[0] == "GAP":
        if len(args) != 2:
            raise Exception("One argument expected after GAP. (%d)" % in_line_count)
        gap = int(args[1])
        continue
    elif args[0] == "RESERVE":
        if len(args) != 2:
            raise Exception("One argument expected after RESERVE. (%d)" % in_line_count)
        reserve = parse_address(args[1])
        continue
    if len(args) < 7 or len(args) > 8:
        raise Exception(("Incorrect number of arguments. (%d)\n> " % in_line_count) + line)
    nsf_filename = os.path.join(in_dir,args[0])
    nsf_song = int(args[1])
    nsf_time = args[2].split(":")
    nsf_min = int(nsf_time[0])
    nsf_sec = int(nsf_time[1])
    nsf_pal_adjust = int(args[3])
    nsf_loop = int(args[4])
    nsf_artist = args[5]
    nsf_title = args[6]
    nsf_title_short = None
    if len(args) >= 8:
        nsf_title_short = args[7]
    entry = (nsf_filename, nsf_song, nsf_min, nsf_sec, nsf_pal_adjust, nsf_loop, nsf_artist, nsf_title, nsf_title_short)
    entries.append(entry)
    entry_str = "%02d: %-40s %d %02d:%02d %d%d %-25s %s" % (track, nsf_filename, nsf_song, nsf_min, nsf_sec, nsf_pal_adjust, nsf_loop, nsf_artist, nsf_title)
    print(entry_str)
    result += entry_str + "\n"
    track += 1
    
if len(order) == 0: # default order
    order = [(x+1) for x in range(len(entries))]
s = "Order:"
for o in order:
    if (o > len(entries)):
        raise Exception("Order (%d) too high!" % o)
    if (o < 1):
        raise Exception("Order 0 too low!")
    s += " %02d" % o
result += s + "\n\n"
print(s)
print()

if len(entries) > 32:
    raise Exception("Too many tracks (%d), only 32 supported." % len(entries))
    # The main limiting factor here is how the starting bank data is fetched.
    # Look for uses of track_bank_start if you want to increase this limit.

# analyze NSFs
track = 0
analyzed = []
highest_zp = 0
highest_ram = 0
lowest_stack = 0x1FF
for (nsf_filename, nsf_song, nsf_min, nsf_sec, nsf_pal_adjust, nsf_loop, nsf_artist, nsf_title, nsf_title_short) in entries:
    # parse the file
    s_track = ("File %d: " % (track+1)) + nsf_filename
    print(s_track)
    result += s_track + "\n"
    nsf = NSF.open(nsf_filename)
    result += str(nsf) + "\n"
    print(nsf)
    # simulate the NSF
    frames = ((nsf_min * 60) + nsf_sec + gap) * FPS
    if track < debug_track_skip:
        frames = 5
    mmu = run_nsf(nsf,nsf_song,frames)
    # analysis
    mod  = "Track %02d: %s\n" % (track+1,nsf_title)
    mod += "High ZP:    $%02X\n" % mmu.stat_highzp
    mod += "High RAM: $%04X\n" % mmu.stat_highram
    if mmu.stat_exram != False:
        raise Exception("External RAM required!")
        mod += "EXTRA RAM\n"
    for b in mmu.stat_bank_f:
        mod += "BANK F: $%02X\n" % b
    for (offset,pc) in mmu.stat_bank_write:
        mod += "BANK WRITE: $%02X:$%04X\n" % (offset>>12,pc)
    highest_zp = max(mmu.stat_highzp, highest_zp)
    highest_ram = max(mmu.stat_highram, highest_ram)
    lowest_stack = min(mmu.stat_lowstack, lowest_stack)
    print(mod)
    mods += mod + "\n"
    result += mod + "\n"
    analyzed.append((nsf,mmu))
    track += 1

# output binaries and analyzed data

assert(len(entries) == len(analyzed))

inc = "; generated by nsfspider.py " + now_string + "\n\n"
inc_init = "track_init_addr:\n"
inc_play = "track_play_addr:\n"
inc_bank_offset = "track_bank_offset: ; bank location of NSF in ROM\n"
inc_bank_start = "track_bank_start: ; starting banks for NSF\n"
inc_bank_start += ";     8000 9000 A000 B000 C000 D000 E000 F000\n"
inc_song = "track_song: ; song index for NSF -1\n"
inc_pal_adjust = "track_pal_adjust: ; double every 5th frame if in PAL\n;     "
inc_loop = "track_loop: ; whether track loops\n;     "
inc_time = "track_time: ; time to play each track in seconds\n"
inc_artist = ""
inc_title = ""
inc_title_short = ""

inc += "TRACK_LENGTH       = %d\n" % len(entries)
inc += "TRACK_ORDER_LENGTH = %d\n" % len(order)
inc += "TRACK_HIGH_ZP      = $%02X\n" % highest_zp
inc += "TRACK_HIGH_RAM     = $%04X\n" % highest_ram
inc += "TRACK_LOW_STACK    = $%04X\n" % lowest_stack
inc += "TRACK_RESERVE_ZP   = $%04X\n" % reserve
inc += "\n"

mod_bins = "BIN numbers:\n"

outbank = 0
generated = []
disassembled = []
for track in range(len(analyzed)):
    (nsf_filename, nsf_song, nsf_min, nsf_sec, nsf_pal_adjust, nsf_loop, nsf_artist, nsf_title, nsf_title_short) = entries[track]
    (nsf,mmu) = analyzed[track]
    track_outbank = outbank
    bank_f = mmu.stat_bank_f.copy()
    bank_write = mmu.stat_bank_write.copy()
    track_write = track
    # check if track already present, 
    reuse = False
    for (r_filename, r_track, r_outbank, r_bank_f, r_bank_write) in generated:
        if nsf_filename == r_filename:
            if not reuse:
                track_write = r_track # take the number of the first used track with this NSF
                track_outbank = r_outbank
            reuse = True
            bank_f = bank_f.union(r_bank_f)
            bank_write = bank_write.union(r_bank_write)
    mod_bins += ("  Track %02d = %02X bin - " % (track,track_write)) + nsf_title + "\n"
    # export banks
    for b in range(nsf.bank_begin, nsf.bank_begin + nsf.bank_count):
        addr = -1
        bname = "%02X_%02X" % (track_write,b)
        # create a mod disassembly if needed
        if b in bank_f:
            addr = 0xF000
        for (pco,pc) in bank_write:
            pcb = pco >> 12
            if b == pcb:
                pca = pc & 0xF000
                if addr < 0:
                    addr = pca
                elif pca != addr:
                    raise Exception("Bank modification needed in two places! " + bname)
        if addr < 0 and disassemble_all:
            if b in mmu.bank_addr:
                addr = mmu.bank_addr[b]
            else:
                addr = 0x8000
        # split the banks
        bfile = os.path.join(out_dir_bin,bname+".bin")
        if not reuse:
            block = nsf.rom[b*0x1000:(b+1)*0x1000]
            open(bfile,"wb").write(bytes(block))
        # disassemble the banks to be nodified
        if (addr >= 0) and (bname not in disassembled):
            mfile = os.path.join(out_dir_bin,bname+".s")
            cline = da65 + da65_args % (mfile,addr,bfile)
            result += cline + "\n"
            print (cline)
            try:
                subprocess.call(cline)
            except:
                raise Exception("Disassembly failure.\n> " + cline)
            # prepend .segment to the generated file
            f = open(mfile,"r+")
            mtext = f.read()
            f.seek(0)
            f.write(".include \"../mod.inc\"\n")
            f.write(".segment \"M%04X\"\n" % addr)
            f.write(".org $%04X\n\n" % addr)
            f.write(mtext)
            f.close()
            disassembled.append(bname)
        binlist_entry = bname
        if not reuse:
            #result += binlist_entry + "\n"
            #print(binlist_entry)
            binlist += binlist_entry + "\n"
            outbank += 1
        generated.append((nsf_filename, track, track_outbank, mmu.stat_bank_f, mmu.stat_bank_write))
    # track data
    bank_add = (track_outbank - nsf.bank_begin) & 0xFF
    inc_init += ".word $%04X ; %02X %s\n" % (nsf.addr_init, track, nsf_title)
    inc_play += ".word $%04X ; %02X %s\n" % (nsf.addr_play, track, nsf_title)
    inc_bank_offset += ".byte $%02X ; $%02X - $%02X > %02X %s\n" % ((track_outbank - nsf.bank_begin) & 255, track_outbank, nsf.bank_begin, track, nsf_title)
    start_banks = bytearray(nsf.banks)
    if not nsf.bankswitch:
        start_banks = [0,1,2,3,4,5,6,7]
    for i in range(8):
        # replace any unused banks with $FF
        if start_banks[i] < nsf.bank_begin or start_banks[i] > nsf.bank_end:
            start_banks[i] = (0xFF - bank_add) & 0xFF
    inc_bank_start += ".byte  $%02X, $%02X, $%02X, $%02X, $%02X, $%02X, $%02X, $%02X ; %02X %s\n" % \
        (start_banks[0], start_banks[1], start_banks[2], start_banks[3], \
         start_banks[4], start_banks[5], start_banks[6], start_banks[7], track, nsf_title)
    inc_song += ".byte %02X ; %02X %s\n" % (nsf_song-1, track, nsf_title)
    inc_pal_adjust += "%02X " % track
    inc_loop += "%02X " % track
    inc_time += ".word (%2d*60)+%2d+%d ; %02X %s\n" % (nsf_min, nsf_sec, gap, track, nsf_title)
    inc_artist += "track_artist_%02X: .asciiz \"%s\"\n" % (track, text_remap(nsf_artist))
    inc_title += "track_title_%02X: .asciiz \"%s\"\n" % (track, text_remap(nsf_title))
    if nsf_title_short == None:
        inc_title_short += "track_title_short_%02X = track_title_%02X\n" % (track, track)
    else:
        inc_title_short += "track_title_short_%02X: .asciiz \"%s\"\n" % (track, text_remap(nsf_title_short))       

inc_order = "track_order:\n.byte"
for o in order:
    inc_order += " $%02X," % (o-1)
inc_order += " 0\n"

s = "Disassembled banks: %d\n" % len(disassembled)
result += s
print(s)

mods += mod_bins + "\n"
print(mod_bins)
    
# second pass for generated data
inc_pal_adjust += "end\n.byte "
inc_loop += "end\n.byte "
inc_artist += "track_artist_list:\n"
inc_title += "track_title_list:\n"
inc_title_short += "track_title_short_list:\n"
for track in range(len(analyzed)):
    (nsf_filename, nsf_song, nsf_min, nsf_sec, nsf_pal_adjust, nsf_loop, nsf_artist, nsf_title, nsf_title_short) = entries[track]
    (nsf,mmu) = analyzed[track]
    inc_pal_adjust += "%d, " % nsf_pal_adjust
    inc_loop += "%d, " % nsf_loop
    inc_artist += ".word track_artist_%02X\n" % track
    inc_title += ".word track_title_%02X\n" % track
    inc_title_short += ".word track_title_short_%02X\n" % track
inc_pal_adjust += "0\n"
inc_loop += "0\n"

# finish generating table inc
inc += inc_init + "\n"
inc += inc_play + "\n"
inc += inc_bank_offset + "\n"
inc += inc_bank_start + "\n"
inc += inc_song + "\n"
inc += inc_pal_adjust + "\n"
inc += inc_loop + "\n"
inc += inc_time + "\n"
inc += inc_order + "\n"
inc += inc_artist + "\n"
inc += inc_title + "\n"
inc += inc_title_short + "\n"
inc += "; end of file\n"

# nsfe
nsfe = "; generated by nsfspider.py " + now_string + "\n\n"
nsfe += "SONG_COUNT = %d\n" % len(entries)
nsfe += "PLAYLIST_COUNT = %d\n" % len(order)
nsfe += "\n"
nsfe_time = ".segment \"NSFE_time\"\n"
nsfe_fade = ".segment \"NSFE_fade\"\n"
nsfe_tlbl = ".segment \"NSFE_tlbl\"\n"
nsfe_taut = ".segment \"NSFE_taut\"\n"
for o in order:
    track = o-1
    (nsf_filename, nsf_song, nsf_min, nsf_sec, nsf_pal_adjust, nsf_loop, nsf_artist, nsf_title, nsf_title_short) = entries[track]
    nsfe_time += ".dword ((%2d*60)+%2d)*1000 ; %02X %s\n" % (nsf_min, nsf_sec, track, nsf_title)
    nsfe_fade += ".dword %d*1000\n" % gap
    title = nsf_title.replace('\\'," ")
    nsfe_tlbl += ".asciiz \"%s\" ; %02X\n" % (title, track)
    nsfe_taut += ".asciiz \"%s\" ; %02X\n" % (nsf_artist, track)
nsfe += nsfe_time + "\n"
nsfe += nsfe_fade + "\n"
nsfe += nsfe_tlbl + "\n"
nsfe += nsfe_taut + "\n"
nsfe += "; end of file\n"

# end
open(os.path.join(out_dir_info,out_inc    ),"wt",encoding="UTF-8").write(inc)
open(os.path.join(out_dir_info,out_nsfe   ),"wt",encoding="UTF-8").write(nsfe)
open(os.path.join(out_dir_info,out_binlist),"wt",encoding="UTF-8").write(binlist)
open(os.path.join(out_dir_info,out_modlist),"wt",encoding="UTF-8").write(mods)
open(os.path.join(out_dir_info,out_result ),"wt",encoding="UTF-8").write(result)
print("Finished!")
