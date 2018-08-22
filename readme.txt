# zensf
Difficult to use tools for making an NES ROM album from NSF files.

This is mostly for my personal use, though I offer it freely for anyone to use.
Comments and documentation are written for my own benefit, but if you're lucky they'll be enough for you.
This is not a tutorial. If you'd like something easier to use, try EZNSF instead:
https://github.com/bbbradsmith/eznsf


Instructions:

1. Place NSFs in /in_nsf folder, edit tracks.txt to build the track list
2. Run nsfspider.py to build /in_nsf/tracks.txt and work through any exceptions you get
  2.1. Input:
    2.1.1. /in_nsf/tracks.txt
    2.1.2. /in_nsf/*.nsf - if named in tracks.txt
  2.2. Output:
    2.2.1. out_src/*.bin - 4k .bin files of each bank from the NSFs
    2.2.2. out_src/*.s - disassembly of any bank that needs modifications
    2.2.3. out_info/binlist.txt - list of 4k banks to be prepared
    2.2.4. out_info/modlist.txt - list of detected modifications to be done
    2.2.5. out_info/tracks.inc - track data tables
    2.2.6. out_info/nsfe.inc - NSFe data tables
    2.2.7. out_info/nsfspider_result.txt - diagnostic output
  Note: this may take a few minutes to analyze the NSFs.
    In nsfspider.py, debug_track_skip can be used for faster iteration.
    All of the data will still be valid, but it will fail to identify some mods:
    - modlist.txt will be incomplete.
    - Some disassemblies will not be produced.
    This is OK if you've already identified the mods previously.
    (The contents of out_mod are not touched.)

3. Prepare modified banks.
  3.1. Copy disassembled .s files from /out_src to /out_mod
  3.2. Review /out_info/modlist.txt for things you need to modify:
    3.2.1. Any bank F: comment out last 6 bytes and replace with VECTORS macro
    3.2.2. Any bankswitch write needs to be replaced
  3.3. Any extra banks needed can be manually added to binlist.txt
4. Place nmt/chr/pal art files in /in_art folder, edit art.txt to provide an art list and other build paramters
5. Run package.py to build /out_mod and /in_art and work through any exceptions you get
   5.1. Input:
   5.1.1. /in_art/art.txt
   5.1.2. /out_info/binlist.txt
   5.1.3. /out_mod/*.s - if named in binlist.txt and this file exists
   5.1.4. /in_art/*.nmt - if named in art.txt
   5.1.5. /in_art/*.chr - if named in chr.txt
   5.1.6. /in_art/*.pal - if named in pal.txt
   5.1.7. ramp.s
   5.1.8. mod.cfg
   5.2. Output:
   5.2.1. /out_info/art.inc
   5.2.2. /out_info/screen.inc
   5.2.3. /out_info/screen_enum.inc
   5.2.4. /out_info/build.inc
   5.2.5. /out_info/strings.inc
   5.2.6. /out_mod/*.bin
   5.2.7. /out_info/nsfs.inc
   5.2.8. /out_info/package.txt
   5.2.9. /out_build/*.o (temporary)
   5.2.10. /out_build/command_temp.txt (temporary)

6. Build NSF with build_nsf.bat
7. Build NSFe with build_nsfe.bat (test this and/or the NSF to verify that everything done so far is correct)

8. Prepare /in_code/custom.s to do your custom stuff. All the menus and stuff are handled in here.
9. Build NES with build_nes.bat

This isn't finished, so the NES ROM isn't functional yet.

All input text files will be interpreted as UTF-8.


Dependencies:

cc65 - place in cc65/ folder
http://cc65.github.io/cc65/

py65emu - already included in py65emu/
https://github.com/docmarionum1/py65emu

If you're on a host platform other than Windows, you can probably figure out how to replace those batch files with whatever script you think is appropriate.

If you need a way to edit the files in /in_art/ try Shiru's NES Screen Tool:
https://shiru.untergrund.net/software.shtml


License:

Go ahead and use this code, fork it, modify it, do whatever you like with it, commercial (good luck) or otherwise.
The project contained in py65emu was not written by me, but it has a license compatible with the above.
The 3 NSFs included under /in_nsf/ are not included in this license. See below.


License exception: 

The 3 NSF files contained under /in_nsf/ are my own and may not be reused or modified without my permission, but may be restristributed freely. If you don't intend to properly credit me for them, replace them with your own NSF files instead.

Two of the NSFs are from my album of classical music for the NES:
http://rainwarrior.ca/music/classic_chips.html

The other NSF was composed for Famicompo Mini Vol. 8 and is available here:
http://rainwarrior.ca/music/index.html
