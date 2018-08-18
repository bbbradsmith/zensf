; base.s
;
; TODO

.import ramp_play

.import bank_add
.import bank_8000
.import bank_9000
.import bank_A000
.import BANK_B000

.import nsf_init_a
.import nsf_init_x
.import nsf_adjust
.import nsf_playing
.import ramp_play_exit

.export BASE_BANK
.export base_nmi


; reset stub

.import ramp_nmi
.import ramp_irq

.segment "RESET"
reset:
	sei
	lda #0
	sta $2000
	lda #BASE_BANK
	sta $5FF8
	.assert (base_main < $9000), error, "base_main must be in $8000 bank"
	jmp base_main

; vectors

.segment "VECTORS"
.word ramp_nmi
.word reset
.word ramp_irq

; base_low
; these routines are safe to run when only $8000 is banked in

.segment "BASE_LOW"
.assert (__BASE_LOW_LOAD__ + __BASE_LOW_SIZE__) <= $9000, error, "BASE_LOW must fit in $8000 bank."

base_banks:
	ldx #BASE_BANK+1
	stx $5FF9
	inx
	stx $5FFA
	inx
	stx $5FFB
	rts

base_main:
	;sei
	cld
	ldx #$ff
	txs
	jsr base_banks
	jmp base_main_

base_nmi:
	jsr base_banks
	jmp base_nmi_

base_ramp_play:
	ldx bank_B000
	stx $5FFB
	ldx bank_A000
	stx $5FFA
	ldx bank_9000
	sta $5FF9
	jsr ramp_play
	jmp base_banks

.segment "BASE"

base_main_:
	;sei
	;cld
	;ldx #$ff
	;txs
	ldx #$00
	;stx $2000 ; disable NMI
	stx $2001 ; disable rendering
	stx $4010 ; disable DPCM IRQ
	stx $4015 ; mute APU
	ldx #$40
	stx $4017 ; disable APU IRQ
	; warmup
	bit $2002
	:
		bit $2002
		bpl :-
	:
		bit $2002
		bpl :-
	; clear memory
	; TODO

; nmi handler

base_nmi_
	; TODO
	rts




; end of file
