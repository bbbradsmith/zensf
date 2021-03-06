#!/usr/bin/env python3
import sys
assert sys.version_info[0] >= 3, "Python 3 required."

import datetime
import glob
import os
import shlex
import subprocess

# package.py
#
# This program prepares art data, NSF binary banks,
# and modifications.
#
# Input:
# /out_mod/*.s
# /in_info/binlist.txt
# /in_art/*.nmt
# /in_art/*.chr
# /in_art/*.pal
# /in_art/art.txt
# ramp.s
# mod.cfg
# mod.inc
#
# Output:
# /out_info/art.inc
# /out_info/screen.inc
# /out_info/screen_enum.inc
# /out_info/build.inc
# /out_info/strings.inc
# /out_mod/*.bin
# /out_info/nsfs.inc
# /out_info/package.txt
# /out_build/*.o (temporary)
# /out_build/command_temp.txt (temporary)
#
# See art.txt and readme.txt for information.
#
#
# https://github.com/bbbradsmith/zensf

delete_output = True # delete output files before beginning

dir_art = "in_art"
dir_src = "out_src"
dir_mod = "out_mod"
dir_info = "out_info"
dir_build = "out_build"

in_art = "art.txt"
in_bins = "binlist.txt"
in_ramp = "ramp"

out_build = "build.inc"
out_nsfs = "nsfs.inc"
out_art = "art.inc"
out_screen = "screen.inc"
out_screen_enum = "screen_enum.inc"
out_strings = "strings.inc"
out_result = "package.txt"
out_command = "command.txt"

ca65 = os.path.join("cc65","bin","ca65")
ld65 = os.path.join("cc65","bin","ld65")
ca65_args = " %s -o %s"
ld65_args = " -o %s -C mod.cfg %s %s"

now_string = datetime.datetime.now().strftime("%a %b %d %H:%M:%S %Y")

def parse_address(s):
    if (s.startswith("$")):
        return int(s[1:],16)
    else:
        return int(s,10)

def file_size(s):
    try:
        return os.stat(s).st_size
    except:
        return 0

def command(cline):
    global result
    result += cline + "\n"
    print(cline)
    out_command = os.path.join(dir_build,"command_temp.txt")
    try:
        output = open(out_command,"wt")
        returncode = subprocess.call(cline,stdout=output,stderr=output)
        output.close()
    except:
        raise Exception("Command failed to execute.\n> " + cline)
    if returncode != 0:
        print(open(out_command,"rt").read())
        raise Exception("Command returned failure.\n> " + cline)
    

# ====
# MAIN
# ====

screens = []
bins = []
zp = 0x30
ram = 0x100
banks = 64
result = ""

nsf_title = "untitled (ZENSF)"
nsf_artist = "unknown"
nsf_copyright = "github.com/bbbradsmith/zensf"

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
    rm(os.path.join(dir_mod,"*.bin"))
    rm(os.path.join(dir_info,out_build))
    rm(os.path.join(dir_info,out_nsfs))
    rm(os.path.join(dir_info,out_art))
    rm(os.path.join(dir_info,out_screen))
    rm(os.path.join(dir_info,out_screen_enum))
    rm(os.path.join(dir_info,out_strings))
    rm(os.path.join(dir_info,out_result))
    result += "\n"
    print()

# parse art.txt

in_line_count = 0
for line in open(os.path.join(dir_art,in_art),"rt",encoding="UTF-8").readlines():   
    try:
        args = shlex.split(line,comments=True)
    except Exception as e:
        raise Exception(("Parsing error. (%d)\n" % in_line_count) + str(e) + "\n>" + line)
    in_line_count += 1
    if len(args) <= 0:
        continue
    elif args[0] == "SCREEN":
        if len(args) != 7:
            raise Execption("SCREEN requires 6 arguments. (%d)" % in_line_count)
        screens.append((args[1],args[2],args[3],args[4],args[5],args[6]))
        continue
    elif args[0] == "ZP":
        if len(args) != 2:
            raise Exception("ZP requires 1 argument. (%d)" % in_line_count)
        zp = parse_address(args[1])
        continue
    elif args[0] == "RAM":
        if len(args) != 2:
            raise Exception("RAM requires 1 argument. (%d)" % in_line_count)
        ram = parse_address(args[1])
        continue
    elif args[0] == "BANKS":
        if len(args) != 2:
            raise Exception("ZP requires 1 argument. (%d)" % in_line_count)
        banks = parse_address(args[1])
        continue
    elif args[0] == "NSF_TITLE":
        if len(args) != 2:
            raise Exception("NSF_TITLE requires 1 argument. (%d)" % in_line_count)
        nsf_title = args[1]
        continue
    elif args[0] == "NSF_ARTIST":
        if len(args) != 2:
            raise Exception("NSF_ARTIST requires 1 argument. (%d)" % in_line_count)
        nsf_artist = args[1]
        continue
    elif args[0] == "NSF_COPYRIGHT":
        if len(args) != 2:
            raise Exception("NSF_COPYRIGHT requires 1 argument. (%d)" % in_line_count)
        nsf_copyright = args[1]
        continue
    else:
        raise Exception("Unknown statement. (%d)" % in_line_count)
s  = "ZP: $%02X\n" % zp
s += "RAM: $%04X\n" % ram
s += "BANKS: %d\n" % banks
result += s + "\n"
print(s)

# parse binlist.txt
in_line_count = 0
for line in open(os.path.join(dir_info,in_bins),"rt",encoding="UTF-8").readlines():   
    args = shlex.split(line)
    in_line_count += 1
    if len(args) <= 0:
        continue
    elif args[0] == "#":
        continue
    elif len(args) != 1:
        raise Exception("BIN list should contain a single entry per line. (%d)" % in_line_count)
    bins.append(args[0])
s  = "NSF BINS: %d" % len(bins)
result += s + "\n"
print(s)

# output art.inc / screen.inc / screen_enum.inc / strings.inc

art_nmt = []
art_chr = []
art_pal = []
for (name, nmt, chr0, chr1, pal0, pal1) in screens:
    if nmt not in art_nmt:
        art_nmt.append(nmt)
    if chr0 not in art_chr:
        art_chr.append(chr0)
    if chr1 not in art_chr:
        art_chr.append(chr1)
    if pal0 not in art_pal:
        art_pal.append(pal0)
    if pal1 not in art_pal:
        art_pal.append(pal1)

art = "; generated by package.py " + now_string + "\n\n"
art += ".segment \"ART\"\n"
art_count = 0
art_size = 0
art_index = {}

# Note:
#   Art data blocks are all power-of-two sizes,
#   sorted in decreasing order of size.
#   This ensures that no art block will cross a 4k bank boundary.

for chr_ in art_chr:
    path = os.path.join(dir_art,chr_)
    if file_size(path) != 0x1000:
        raise Exception("CHR file must be 4kb: " + path)
    art_index[chr_] = art_count
    art += "art_data%02X: .incbin \"%s\"\n"  % (art_count,path)
    s = "ART %02X: %s" % (art_count, path)
    result += s + "\n"
    print(s)
    art_size += 0x1000
    art_count += 1
for nmt in art_nmt:
    path = os.path.join(dir_art,nmt)
    if file_size(path) != 0x400:
        raise Exception("NMT file must be 1kb: " + path)
    art_index[nmt] = art_count
    art += "art_data%02X: .incbin \"%s\"\n"  % (art_count,path)
    s = "ART %02X: %s" % (art_count, path)
    result += s + "\n"
    print(s)
    art_size += 0x400
    art_count += 1
for pal in art_pal:
    path = os.path.join(dir_art,pal)
    if file_size(path) != 0x10:
        raise Exception("PAL file must be 16b: " + path)
    art_index[pal] = art_count
    art += "art_data%02X: .incbin \"%s\"\n"  % (art_count,path)
    s = "ART %02X: %s" % (art_count, path)
    result += s + "\n"
    print(s)
    art_size += 0x10
    art_count += 1
art += "\n"
art += "; end of file\n"
open(os.path.join(dir_info,out_art),"wt",encoding="UTF-8").write(art)

if art_count > 128:
    raise Exception("Art file count may not be more than 128. (%d)" % art_count)
if art_size > 0x10000:
    raise Exception("Art data may not be more than 64k! (%d bytes)" % art_size)

screen = "; generated by package.py " + now_string + "\n\n"
screen_enum = "; generated by package.py " + now_string + "\n\n"
screen_table = "screen_table:\n"
count = 0
for (name, nmt, chr0, chr1, pal0, pal1) in screens:
    screen_table += ".byte $%02X, $%02X, $%02X, $%02X, $%02X, 0, 0, 0 ; %s\n" % \
                    (art_index[nmt],
                     art_index[chr0],
                     art_index[chr1],
                     art_index[pal0],
                     art_index[pal1],
                     name)
    screen_enum += "%s = %d\n" % ("SCREEN_"+name, count)
    s = "SCREEN %d: %s" % (count, name)
    result += s + "\n"
    print(s)
    count += 1

screen_art = "art_table:\n"
count = 0
for (name, index) in sorted(art_index.items(), key=lambda i: i[1]):
    screen_art += ".word art_data%02X ; %s\n" % (index,name)
    if index != count:
        raise Exception("Unexpected error: sorted art index out of order?")
    count += 1

screen += screen_table + "\n"
screen += screen_art + "\n"
screen += "; end of file\n"
open(os.path.join(dir_info,out_screen),"wt",encoding="UTF-8").write(screen)

screen_enum += "\n"
screen_enum += "; end of file\n"
open(os.path.join(dir_info,out_screen_enum),"wt",encoding="UTF-8").write(screen_enum)

s  = "ART SIZE: $%X bytes in %d files\n" % (art_size, art_count)
s += "SCREENS: %d\n" % len(screens)
result += s + "\n"
print(s)

s = "; generated by package.py " + now_string + "\n\n"
s += ".define NSF_TITLE \"" + nsf_title + "\"\n"
s += ".define NSF_ARTIST \"" + nsf_artist + "\"\n"
s += ".define NSF_COPYRIGHT \"" + nsf_copyright + "\"\n"
s += "\n"
s += "; end of file\n"
open(os.path.join(dir_info,out_strings),"wt",encoding="UTF-8").write(s)

s  = "NSF_TITLE \"" + nsf_title + "\"\n"
s += "NSF_ARTIST \"" + nsf_artist + "\"\n"
s += "NSF_COPYRIGHT \"" + nsf_copyright + "\"\n"
result += s + "\n"
print(s)

# calculate bank structure, output build.inc

if (banks & (banks-1)) != 0:
    raise Exception("BANKS must be a power of two.")

bank_art = len(bins) # BANK_ART is first bank after NSF bins
bank_art_end = bank_art + (art_size >> 12)
if (art_size & 0x0FFF) != 0:
    bank_art_end += 1

bank_base = banks - 4 # ideal BANK_BASE is 4 from the end
while bank_base < bank_art_end:
    bank_base += 1 # shrink if there's not enough for 4

s  = "BANKS: %d\n" % banks
s += "BANK_ART: %d to %d\n" % (bank_art,bank_art_end-1)
s += "BANK_BASE: %d (%d total)\n" % (bank_base, banks-bank_base)
result += s + "\n"
print(s)

if (banks - bank_base) < 1:
    raise Exception("No banks remain for BANK_BASE. (Minimum banks: %d)" % (bank_base+1))

inc = "; generated by package.py " + now_string + "\n\n"
inc += "BANK_ART  = $%02X\n" % bank_art
inc += "BANK_BASE = $%02X\n" % bank_base
inc += "BANK_END  = $%02X\n" % banks
inc += "ZP_LOW    = $%02X\n" % zp
inc += "RAM_LOW   = $%04X\n" % ram
inc += "\n"
inc += "; end of file\n"
open(os.path.join(dir_info,out_build),"wt",encoding="UTF-8").write(inc)

# build ramp.s to use with mods

ramp_s = in_ramp + ".s"
ramp_o = os.path.join(dir_build, in_ramp + ".o")
cline = ca65 + ca65_args % (ramp_s, ramp_o)
command(cline)

# build the mods

for b in bins:
    mod_s   = os.path.join(dir_mod,   b + ".s")
    mod_o   = os.path.join(dir_build, b + ".o")
    mod_bin = os.path.join(dir_mod,   b + ".bin")
    if os.path.exists(mod_s):
        cline = ca65 + ca65_args % (mod_s, mod_o)
        command(cline)
        cline = ld65 + ld65_args % (mod_bin, mod_o, ramp_o)
        command(cline)
        mod_size = file_size(mod_bin)
        if mod_size != 0x1000:
            raise Exception("Compiled mod bin files must be 4k. (%d bytes)" % mod_size)

result += "\n"
print()

# output nsfs.inc

nsfs = "; generated by package.py " + now_string + "\n\n"
nsfs += ".segment \"NSFS\"\n"
count = 0
for b in bins:
    name = b + ".bin"
    path_src = os.path.join(dir_src,name)
    path_mod = os.path.join(dir_mod,name)
    path_use = path_src
    if os.path.exists(path_mod):
        path_use = path_mod
    nsfs += ".incbin \"" + path_use + "\" ; %02X\n" % count
    s = "BANK $%02X: %s" % (count, path_use)
    result += s + "\n"
    print(s)
    if file_size(path_use) != 0x1000:
        raise Exception("BIN file must be 4kb: " + path_use)
    count += 1
nsfs += "\n"
result += "\n"
print()
nsfs += "; end of file\n"
open(os.path.join(dir_info,out_nsfs),"wt",encoding="UTF-8").write(nsfs)

#end
open(os.path.join(dir_info,out_result ),"wt",encoding="UTF-8").write(result)
print("Finished!")
