REM remove temporary stuff
del out_build\nsfe.o
del out_build\ramp.o
del out_build\pico3.nsfe
del out_build\pico3.nsfe.dbg
del out_build\pico3.nsfe.map.txt

REM build ramp.s
cc65\bin\ca65 ramp.s -o out_build\ramp.o -g
@IF ERRORLEVEL 1 GOTO badbuild

REM build nsf.s
cc65\bin\ca65 nsf.s -o out_build\nsf.o -g
@IF ERRORLEVEL 1 GOTO badbuild

REM build nsfe.s
cc65\bin\ca65 nsfe.s -o out_build\nsfe.o -g
@IF ERRORLEVEL 1 GOTO badbuild

REM link pico3.nsfe
cc65\bin\ld65 -o out_build\pico3.nsfe -C nsfe.cfg -m out_build\pico3.nsfe.map.txt --dbgfile out_build\pico3.nsfe.dbg out_build\ramp.o out_build\nsf.o out_build\nsfe.o
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
