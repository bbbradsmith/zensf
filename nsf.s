; nsf.s
;
; used to generate NSF compilation

.include "out_info/build.inc"
.include "out_info/strings.inc"
.include "out_info/nsfs.inc"
BANK_STUB = BANK_ART

.export ZP_LOW : abs
.export RAM_LOW : abs
.export BANK_STUB : abs

.segment "HEADER"
.byte 'N', 'E', 'S', 'M', $1A ; ID
.byte $01 ; version
.byte TRACK_ORDER_LENGTH ; songs
.byte 1 ; starting song
.word $8000 ; LOAD
.word stub_init ; INIT
.word ramp_nsf_play ; PLAY
.byte NSF_TITLE
.res 32 - .strlen(NSF_TITLE)
.byte NSF_ARTIST
.res 32 - .strlen(NSF_ARTIST)
.byte NSF_COPYRIGHT
.res 32 - .strlen(NSF_COPYRIGHT)
.assert * = $6E, error, "NSF strings may be too long?"
.word 16639 ; NTSC speed
.repeat 8
	.byte BANK_STUB ; bankswitch init
.endrepeat
.word 19997 ; PAL speed
.byte %00000010 ; PAL/NTSC bits
.byte %00000000 ; expansion bits
.byte 0,0,0,0 ; pad to $80
.assert * = $80, error, "NSF header has incorrect length."

.segment "BASE_ZP" : zeropage
; temporary pointers for copying
psrc: .res 2
pdst: .res 2

.segment "STUB"

.include "out_info/tracks.inc"
.assert TRACK_HIGH_ZP < ZP_LOW, error, "Embedded NSFs have conflicting ZP use."
.assert TRACK_HIGH_RAM < RAM_LOW, error, "Embedded NSFs have conflicting RAM use."

.import ramp_nsf_init
.import ramp_nsf_play

.import sta_5FF8
.import sta_5FF9
.import sta_5FFA
.import sta_5FFB
.import sta_5FFC
.import sta_5FFD
.import sta_5FFE
.import sta_5FFF

.import bank_add
.import bank_8000
.import bank_9000
.import bank_A000
.import bank_B000

.import nsf_init
.import nsf_play
.import nsf_init_a
.import nsf_init_x
.import nsf_adjust
.import nsf_playing

; exports for nsfe.s
.export stub_init
.exportzp TRACK_ORDER_LENGTH

; dummy NMI for ramp.s
.export base_nmi
base_nmi:
	rts

; A = track
; X = 0,1,2 NTSC, PAL, Dendy
stub_init:
	tay
	lda track_order, Y
	tay ; Y = track
	; setup INIT parameter A
	lda track_song, Y
	sta nsf_init_a
	; setup INIT parameter X / region adjustment
	cpx #2
	bne :+
		; 2 = Dendy
		lda #1 ; 1/5 frame doubling
		sta nsf_adjust
		lda #0
		sta nsf_init_x ; play as if NTSC
		jmp @init_x_set
	:
	cpx #1
	bne @init_x_ntsc
		; PAL
		lda track_pal_adjust, Y
		sta nsf_adjust
		beq :+
			dex ; X=0 if adjust 1/2
		:
		stx nsf_init_x ; adjust 0 = play as PAL, 1/2 = play as NTSC
		jmp @init_x_set
		;
	@init_x_ntsc:
		; 0 = NTSC 
		lda #0
		sta nsf_adjust
		sta nsf_init_x
	;
	@init_x_set:
	; copy RAMP_CODE to RAM
	tya
	pha
	jsr ramp_code_load
	pla
	tay
	; setup the rest
	lda track_bank_offset, Y
	sta bank_add
	tya
	asl
	tax ; X = track * 2 (word data)
	lda track_init_addr+0, X
	sta nsf_init+0
	lda track_init_addr+1, X
	sta nsf_init+1
	lda track_play_addr+0, X
	sta nsf_play+0
	lda track_play_addr+1, X
	sta nsf_play+1
	tya
	asl
	asl
	asl
	tax ; X = track * 8 (8 byte data)
	lda track_bank_start+7, X
	jsr sta_5FFF
	lda track_bank_start+6, X
	jsr sta_5FFE
	lda track_bank_start+5, X
	jsr sta_5FFD
	lda track_bank_start+4, X
	jsr sta_5FFC
	lda track_bank_start+3, X
	jsr sta_5FFB
	lda track_bank_start+2, X
	jsr sta_5FFA
	lda track_bank_start+1, X
	jsr sta_5FF9
	lda track_bank_start+0, X
	clc
	adc bank_add
	sta bank_8000 ; defer this bankswitch for a moment
	; run stub_finish from RAM
	jmp stub_finish

.import __RAMP_CODE_LOAD__
.import __RAMP_CODE_RUN__
.import __RAMP_CODE_SIZE__
ramp_code_load:
	lda #<__RAMP_CODE_LOAD__
	sta psrc+0
	lda #>__RAMP_CODE_LOAD__
	sta psrc+1
	lda #<__RAMP_CODE_RUN__
	sta pdst+0
	lda #>__RAMP_CODE_RUN__
	sta pdst+1
	ldy #0
	@loop:
		lda (psrc), Y
		sta (pdst), Y
		inc psrc+0
		bne :+
			inc psrc+1
		:
		inc pdst+0
		bne :+
			inc pdst+1
		:
		lda pdst+0
		cmp #<(__RAMP_CODE_RUN__ + __RAMP_CODE_SIZE__)
		lda pdst+1
		sbc #>(__RAMP_CODE_RUN__ + __RAMP_CODE_SIZE__)
		bcc @loop
	rts

.segment "RAMP_CODE"
stub_finish:
	lda bank_8000
	sta $5FF8
	jmp ramp_nsf_init

.assert stub_finish > ramp_nsf_init, error, "nsf.o must be linked after ramp.o (mods will rely on its address)"

; end of file
