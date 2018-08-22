REM remove temporary stuff
del out_build\ramp.o
del out_build\base.o
del out_build\region.o
del out_build\custom.o
del out_build\zensf.nes
del out_build\zensf.dbg
del out_build\zensf.map.txt

REM build ramp.s
cc65\bin\ca65 ramp.s -o out_build\ramp.o -g
@IF ERRORLEVEL 1 GOTO badbuild

REM build base.s
cc65\bin\ca65 base.s -o out_build\base.o -g
@IF ERRORLEVEL 1 GOTO badbuild

REM build region.s
cc65\bin\ca65 region.s -o out_build\region.o -g
@IF ERRORLEVEL 1 GOTO badbuild

REM build custom.s
cc65\bin\ca65 in_code\custom.s -o out_build\custom.o -g
@IF ERRORLEVEL 1 GOTO badbuild

REM link zensf.nes
cc65\bin\ld65 -o out_build\zensf.nes -C nes.cfg -m out_build\zensf.map.txt --dbgfile out_build\zensf.dbg out_build\ramp.o out_build\base.o out_build\region.o out_build\custom.o
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
