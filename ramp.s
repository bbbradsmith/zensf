; ramp.s
;
; code placed in RAM to run the NSF
;
;
; external dependencies:
;   base_nmi
;   BASE_BANK
;
; when compiling the ROM, these are in base.s
; when compiling mods, these are in mod.inc
;
;
; ramp_play must be called from $8000 bank
; base_nmi must reside in $8000 bank
;
; BASE_BANK will be loaded automatically into $8000 before base_nmi is called
; $9000, $A000, $B000 must be pre-banked by the caller before entering ramp_play
; or returning from base_nmi
; (these values will be cached in bank_9000, bank_A000, bank_B000)

.export ramp_play      ; will call INIT, enable NMI, then enter playing until ramp_play_exit
.export ramp_nmi
.export ramp_reset
.export ramp_irq

.export sta_5FF8       ; mod replacement for STA $5FF8
.export sta_5FF9
.export sta_5FFA
.export sta_5FFB
.export sta_5FFC
.export sta_5FFD
.export sta_5FFE
.export sta_5FFF

.export bank_add       ; re-location of original NSF banks
.export bank_8000      ; rembers the last bank required by NSF (so they can be temporarily replaced)
.export bank_9000
.export bank_A000
.export bank_B000

; ramp_play parameters
.export nsf_init_a     ; NSF song
.export nsf_init_x     ; 0/1 = NTSC/PAL mode
.export nsf_adjust     ; 0 = none, 1 = double every 5th frame, 2 = FT PAL pitch adjust hack + double 5th
.export nsf_playing    ; 1 = call PLAY on every NMI
.export ramp_play_exit ; 1 = exit from ramp_play loop

.import base_nmi
.importzp BASE_BANK

.segment "RAMP_RAM"
bank_add:       .res 1
bank_8000:      .res 1
bank_9000:      .res 1
bank_A000:      .res 1
bank_B000:      .res 1
nsf_init_a:     .res 1
nsf_init_x:     .res 1
nsf_adjust:     .res 1 
nsf_playing:    .res 1
ramp_nmi_now:   .res 1 ; prevents NMI re-entry
ramp_play_exit: .res 1

.segment "RAMP_CODE"

ramp_play:
	; swap out PLAYER segment
	lda bank_8000
	sta $5FF8
	; call NSF INIT
	lda nsf_init_a
	ldx nsf_init_x
	ldy #0
	jsr do_nsf_init
	lda nsf_adjust
	cmp #2 
	bne :+
		; FT pitch adjust hack:
		;   On FT, the pitch table pointer usually resides at $12.
		;   PAL pitch table is 192 bytes past the NTSC pitch table
		lda $12
		clc
		adc #<192
		sta $12
		lda $13
		adc #>192
		sta $13
		lda #1
		sta nsf_adjust
	:
	; enable NMI to play music
	bit $2002
	lda #%10001000
	sta $2000
	:
		lda ramp_play_exit
		bne :-
	; disable NMI to stop playing
	lda #0
	sta $2000
	; return to PLAYER segment
	lda #BANK_PLAYER
	sta $5FF8
	rts

ramp_nmi:
	pha
	txa
	pha
	tya
	pha
	; 
	lda ramp_nmi_now
	bne @skip
	lda #1
	sta ramp_nmi_now
	; call base_nmi
	lda #BANK_PLAYER
	sta $5FF8
	.assert (base_nmi >= $8000 && base_nmi < $9000), error, "base_nmi must be in $8000 bank"
	jsr base_nmi
	lda nsf_playing
	beq @skip
	; call NSF PLAY
	lda bank_8000
	sta $5FF8
	lda #0
	sta nsf_playing
	jsr do_nsf_play
	; if nsf_adjust, double every 5th frame (NTSC to PAL speed conversion)
	lda nsf_adjust
	beq  :+
		inc nsf_adjust
		lda nsf_adjust
		cmp #6
		bcc :+
		jsr do_nsf_play
		lda #1
		sta nsf_adjust
	:
	lda #0
	sta ramp_nmi_now
@skip:
	pla
	tay
	pla
	tax
	pla
	; rti
ramp_irq:
	rti

ramp_reset:
	lda #$FF
	sta #$5FFF
	jmp ($FFFC)

; trampolines for playback/init

do_nsf_play:
	jmp (play_addr)

do_nsf_init:
	jmp (init_addr)

; STA ABS bank switching
; (add more of these if needed for STX, STY, indexed, etc.)

sta_5FF8:
	php
	pha
	clc
	adc bank_add
	sta bank_8000
	sta $5FF8
	pla
	plp
	rts

sta_5FF9:
	php
	pha
	clc
	adc bank_add
	sta bank_9000
	sta $5FF9
	pla
	plp
	rts

sta_5FFA:
	php
	pha
	clc
	adc bank_add
	sta bank_A000
	sta $5FFA
	pla
	plp
	rts

sta_5FFB:
	php
	pha
	clc
	adc bank_add
	sta bank_B000
	sta $5FFB
	pla
	plp
	rts

sta_5FFC:
	php
	pha
	clc
	adc bank_add
	sta $5FFC
	pla
	plp
	rts

sta_5FFD:
	php
	pha
	clc
	adc bank_add
	sta $5FFD
	pla
	plp
	rts

sta_5FFE:
	php
	pha
	clc
	adc bank_add
	sta $5FFE
	pla
	plp
	rts

sta_5FFF:
	php
	pha
	clc
	adc bank_add
	sta $5FFF
	pla
	plp
	rts

; end of file
