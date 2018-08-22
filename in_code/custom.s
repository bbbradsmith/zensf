

.include "../base.inc"
.export custom_main
.export custom_nmi

.include "../out_info/screen_enum.inc"

.segment "CUSTOM_ZP" : zeropage

.segment "CUSTOM_RAM"

.segment "CUSTOM"

custom_main:
	lda #SCREEN_Title
	jsr load_screen
	; TODO
	:
	jmp :-

custom_nmi:
	rts

; end of file
