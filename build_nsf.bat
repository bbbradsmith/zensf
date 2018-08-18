REM remove temporary stuff
del out_build\nsf.o
del out_build\ramp.o
del out_build\zensf.nsf
del out_build\zensf.nsf.dbg
del out_build\zensf.nsf.map.txt

REM build ramp.s
cc65\bin\ca65 ramp.s -o out_build\ramp.o -g
@IF ERRORLEVEL 1 GOTO badbuild

REM build nsf.s
cc65\bin\ca65 nsf.s -o out_build\nsf.o -g
@IF ERRORLEVEL 1 GOTO badbuild

REM link zensf.nsf
cc65\bin\ld65 -o out_build\zensf.nsf -C nsf.cfg -m out_build\zensf.nsf.map.txt --dbgfile out_build\zensf.nsf.dbg out_build\ramp.o out_build\nsf.o
@IF ERRORLEVEL 1 GOTO badbuild

@echo.
@echo.
@echo Build complete and successful!
@IF NOT "%1"=="" GOTO endbuild
@pause
@GOTO endbuild

:badbuild
@echo.
@echo.
@echo Build error!
@IF NOT "%1"=="" GOTO endbuild
@pause
:endbuild
