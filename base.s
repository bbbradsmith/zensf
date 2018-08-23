; base.s
;
; common functionality for NES ROM, stuff that doesn't need to be "custom"
; handles direct interaction with ramp.s (intermediary layer between it and custom.s)

.macpack longbranch

.import ramp_play
.import ramp_nmi
.import ramp_irq

.import bank_add
.import bank_8000
.import bank_9000
.import bank_A000
.import bank_B000
.import sta_5FFC
.import sta_5FFD
.import sta_5FFE
.import sta_5FFF

.import nsf_init
.import nsf_play
.import nsf_init_a
.import nsf_init_x
.import nsf_adjust
.import nsf_playing
.import ramp_play_exit

.import getTVSystem ; region.s

.import custom_main
.import custom_nmi

.export base_nmi
.export base_banks

.include "base.inc" ; exports RAM and utilities for custom.s

; build info, NSF collection, art collection

.include "out_info/build.inc"
.include "out_info/nsfs.inc"
.include "out_info/art.inc"

; used by cfg
.export ZP_LOW    : abs
.export RAM_LOW   : abs
.export BANK_ART  : abs
.export BANK_BASE : abs
.export BANK_END  : abs

; RAM usage

.segment "BASE_ZP" : zeropage
nmi_count:     .res 1
nmi_ready:     .res 1
region:        .res 1
gamepad:       .res 1
ppu_ctrl:      .res 1
ppu_mask:      .res 1
ppu_scroll_x:  .res 1
ppu_scroll_y:  .res 1
oam_pos:       .res 1
nmt_count:     .res 1
nmt_addr:      .res 2
ptr:           .res 2
temp:          .res 2

.segment "STACK"
nmt_buffer:    .res 64

.segment "BASE_RAM"
palette:       .res 32
time_fps:      .res 1
time_frame:    .res 1
time_seconds:  .res 2
time_d0:       .res 1
time_d1:       .res 1
time_d2:       .res 1
time_d3:       .res 1
nsf_looping:   .res 1
nsf_track:     .res 1
advance:       .res 1


.segment "OAM"
.align $100
oam: .res $100

; iNES header

.segment "HEADER"

INES_MAPPER     = 31
INES_MIRROR     = 0 ; 0=vertical nametables, 1=horizontal
INES_PRG_16K    = BANK_END / 4
INES_CHR_8K     = 0
INES_BATTERY    = 0
INES2           = %00001000 ; NES 2.0 flag for bit 7
INES2_SUBMAPPER = 0
INES2_PRGRAM    = 0 ; x: 2^(6+x) bytes (0 for none)
INES2_PRGBAT    = 0
INES2_CHRRAM    = 7
INES2_CHRBAT    = 0
INES2_REGION    = 2 ; 0=NTSC, 1=PAL, 2=Dual

.byte 'N', 'E', 'S', $1A ; ID
.byte INES_PRG_16K
.byte INES_CHR_8K
.byte INES_MIRROR | (INES_BATTERY << 1) | ((INES_MAPPER & $f) << 4)
.byte (<INES_MAPPER & %11110000) | INES2
; iNES 2 section
.byte (INES2_SUBMAPPER << 4) | (INES_MAPPER>>8)
.byte ((INES_CHR_8K >> 8) << 4) | (INES_PRG_16K >> 4)
.byte (INES2_PRGBAT << 4) | INES2_PRGRAM
.byte (INES2_CHRBAT << 4) | INES2_CHRRAM
.byte INES2_REGION
.byte $00 ; VS system
.byte $00, $00 ; padding/reserved
.assert * = 16, error, "NES header must be 16 bytes."

; reset stub

.segment "RESET"
reset:
	sei
	lda #0
	sta $2000
	lda #BANK_BASE
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
.import __BASE_LOW_LOAD__
.import __BASE_LOW_SIZE__
.assert (__BASE_LOW_LOAD__ + __BASE_LOW_SIZE__) <= $9000, error, "BASE_LOW must fit in $8000 bank."

base_banks:
	ldx #BANK_BASE+1
	stx $5FF9
	inx
	stx $5FFA
	inx
	stx $5FFB
	rts

base_unbanks:
	ldx bank_B000
	stx $5FFB
	ldx bank_A000
	stx $5FFA
	ldx bank_9000
	stx $5FF9
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
	jsr base_nmi_
	jmp base_unbanks

base_ramp_play:
	lda #0
	sta $2000 ; disable NMI (NMI has to restore BASE banks, will interfere with INIT)
	jsr base_unbanks
	jsr ramp_play
	bit $2002
	lda ppu_ctrl
	sta $2000 ; restore NMI
	jmp base_banks

; main routines

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
	lda #$40
	sta $4017 ; disable APU IRQ
	; warmup frame 1
	bit $2002
	:
		bit $2002
		bpl :-
	; clear memory
	;ldx #$00
	txa
	:
		sta  $00, X
		sta $100, X
		sta $200, X
		sta $300, X
		sta $400, X
		sta $500, X
		sta $600, X
		sta $700, X
		inx
		bne :-
	; warmup frame 2
	:
		bit $2002
		bpl :-
	; copy RAM code from ramp.s
	.import __RAMP_CODE_LOAD__
	.import __RAMP_CODE_RUN__
	.import __RAMP_CODE_SIZE__
	__RAMP_CODE_END__ = __RAMP_CODE_RUN__ + __RAMP_CODE_SIZE__
	@src = nmt_addr ; temporarily alias these pointer variables
	@dst = ptr
	lda #<__RAMP_CODE_LOAD__
	sta @src+0
	lda #>__RAMP_CODE_LOAD__
	sta @src+1
	lda #<__RAMP_CODE_RUN__
	sta @dst+0
	lda #>__RAMP_CODE_RUN__
	sta @dst+1
	ldy #0
	@ramp_loop:
		lda (@src), Y
		sta (@dst), Y
		inc @src+0
		bne :+
			inc @src+1
		:
		inc @dst+0
		bne :+
			inc @dst+1
		:
		lda @dst+0
		cmp #<__RAMP_CODE_END__
		lda @dst+1
		sbc #>__RAMP_CODE_END__
		bcc @ramp_loop
	; permanently enable NMI
	lda #%10001000
	sta ppu_ctrl
	sta $2000
	; detect platform
	jsr getTVSystem
	cmp #3
	bcc :+
		lda #0 ; 3+ = unknown: defaults to NTSC
	:
	sta region
	tax
	lda REGION_FPS, X
	sta time_fps
	; begin
	jmp custom_main

REGION_FPS:
.byte 60, 50, 50
; nmi handler

base_nmi_:
	inc nmi_count
	lda nmi_ready
	beq @ppu_end
		; 
		lda #0
		sta nmi_ready
		; apply PPU mask
		lda ppu_mask
		sta $2001
		beq @ppu_end ; rendering is off
		; OAM DMA
		lda #0
		sta $2003
		lda #>oam
		sta $4014
		; palettes
		bit $2002
		lda #>$3F00
		sta $2006
		lda #<$3F00
		sta $2006
		ldx #0
		:
			lda palette, X
			sta $2007
			inx
			cpx #32
			bcc :-
		; nametables
		ldy nmt_count
		beq @ppu_scroll
		lda ppu_ctrl ; sets direction of update
		sta $2000
		lda nmt_addr+1
		sta $2006
		lda nmt_addr+0
		sta $2006
		tsx
		txa
		ldx #<(nmt_buffer-1)
		txs
		tax
		; X = stack pointer
		; Y = nmt_count
		; stack points at first nmt_buffer byte
		:
			pla
			sta $2007
			dey
			bne :-
		txs ; restore stack
		sty nmt_count ; = 0
	@ppu_scroll:
		lda ppu_ctrl
		sta $2000
		lda ppu_scroll_x
		sta $2005
		lda ppu_scroll_y
		sta $2005
	@ppu_end:
	jsr custom_nmi
	lda nsf_playing
	jeq @play_timer_end
		ldx #0
		inc time_frame
		lda time_frame
		cmp time_fps
		bcc @play_timer_end
			stx time_frame
			; internal timer
			inc time_seconds+0
			bne :+
			inc time_seconds+1
			bne :+ ; max out as 65535 seconds
				lda #$FF
				sta time_seconds+0
				sta time_seconds+1
			:
			; automatic stop
			ldy nsf_track
			lda nsf_looping
			beq :+
				lda track_loop, Y
				bne :++ ; track is loopable, and nsf_looping is true, play forever
			:
			tya
			asl
			tay
			lda time_seconds+0
			cmp track_time+0, Y
			lda time_seconds+1
			sbc track_time+1, Y
			bcc :+
				stx nsf_playing ; stop playback if not looping and track finished
				stx $4015 ; silence all channels
				lda #1
				sta advance ; signal that track may advance
			:
			; display counter
			inc time_d0 ; seconds
			lda time_d0
			cmp #10
			bcc :+
			stx time_d0
			inc time_d1
			lda time_d1
			cmp #6
			bcc :+
			stx time_d1
			inc time_d2 ; minutes
			lda time_d2
			cmp #10
			bcc :+
			stx time_d2
			inc time_d3
			lda time_d3
			cmp #6
			bcc :+ ; max at 59:59
				ldx #5
				sta time_d1
				sta time_d3
				ldx #9
				sta time_d0
				sta time_d2
			:
	@play_timer_end:
	rts

; player utilities called by custom.s

.include "out_info/tracks.inc"

.exportzp TRACK_ORDER_LENGTH

; ensure there's enough RAM/ZP in the open areas to run the NSFs
.assert TRACK_HIGH_ZP < ZP_LOW, error, "Embedded NSFs have conflicting ZP use."
.assert TRACK_HIGH_RAM < RAM_LOW, error, "Embedded NSFs have conflicting RAM use."
.import __STACK_LOAD__
.import __STACK_SIZE__
STACK_SAFETY = 16 ; a few extra bytes of stack as a safety buffer
.assert (TRACK_LOW_STACK - STACK_SAFETY) >= (__STACK_LOAD__ + __STACK_SIZE__), error, "Stack area too small for embedded NSFs."

.include "out_info/screen.inc"

play_track:
	; in: X = track
	lda #0
	sta nsf_playing
	sta advance
	sta time_frame
	sta time_seconds+0
	sta time_seconds+1
	sta time_d0
	sta time_d1
	sta time_d2
	sta time_d3
	lda track_order, X
	sta nsf_track
	; NSF init
	; clear ZP
	ldy #0
	tya
	:
		sta $00, Y
		iny
		.assert <ZP_LOW = ZP_LOW, error, "Impossible ZP_LOW address?"
		cpy #<ZP_LOW
		bcc :-
	; clear RAM
	lda #<$0200
	sta ptr+0
	lda #>$0200
	sta ptr+1
	ldy #0
	@clear_loop:
		tya ; A = Y = 0
		sta (ptr), Y
		inc ptr+0
		bne :+
			inc ptr+1
		:
		lda ptr+0
		cmp #<RAM_LOW
		lda ptr+1
		sbc #>RAM_LOW
		bcc @clear_loop
	; setup APU
	; A = Y = 0
	:
		sta $4000, Y
		iny
		cpy #$14
		bcc :-
	lda #$0F
	sta $4015
	lda #$40
	sta $4017
	; setup INIT parameter X / region adjustment
	ldy nsf_track
	ldx region
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
		stx nsf_init_x ; adjust 0 = play as PAL (x=1), 1/2 = play as NTSC (x=0)
		jmp @init_x_set
		;
	@init_x_ntsc:
		; 0 = NTSC 
		lda #0
		sta nsf_adjust
		sta nsf_init_x
	;
	@init_x_set:
	; rest of track data
	lda track_song, Y
	sta nsf_init_a
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
	txa
	asl
	asl
	tax ; X = track * 8 (8 byte data)
	; top 4 banks apply immediately
	lda track_bank_start+7, X
	jsr sta_5FFF
	lda track_bank_start+6, X
	jsr sta_5FFE
	lda track_bank_start+5, X
	jsr sta_5FFD
	lda track_bank_start+4, X
	jsr sta_5FFC
	; bottom 4 banks are applied by the base_low $8000 bank / RAM code
	lda track_bank_start+3, X
	clc
	adc bank_add
	sta bank_B000
	lda track_bank_start+2, X
	clc
	adc bank_add
	sta bank_A000
	lda track_bank_start+1, X
	clc
	adc bank_add
	sta bank_9000
	lda track_bank_start+0, X
	clc
	adc bank_add
	sta bank_8000
	jsr base_ramp_play

; other utilities

gamepad_poll_: ; standard single read
	lda #1
	sta $4016
	lda #0
	sta $4016
	ldx #8
	:
		pha
		lda $4016
		and #%00000011
		cmp #%00000001
		pla
		ror
		dex
		bne :-
	sta gamepad
	rts

gamepad_poll: ; DPCM safe read-until-consistent
	jsr gamepad_poll_
	:
		lda gamepad
		pha
		jsr gamepad_poll_
		pla
		cmp gamepad
		bne :-
	cmp #0 ; refresh flags
	rts

ppu_off:
	lda #0
	sta ppu_mask
	jmp ppu_update
ppu_on:
	lda #%00011110
	sta ppu_mask
	;jmp ppu_update
ppu_update:
	lda #1
	sta nmi_ready
	;jmp ppu_skip
ppu_skip:
	lda nmi_count
	:
		cmp nmi_count
		beq :-
	rts

ppu_skip_frames:
	; X = number of frames to skip
	cpx #0
	beq :++
	:
		jsr ppu_skip
		dex
		bne :-
	:
	rts

ppu_string:
	; load null-terminated string to nmt_addr immediately, '\' for newline
	;   in: ptr = string
	;   in: nmt_addr = address
	;   clobbers: A, Y, ptr, nmt_addr
	ldy #0
	bit $2002
@restart:
	lda nmt_addr+1
	sta $2006
	lda nmt_addr+0
	sta $2006
	:
	lda (ptr), Y
	beq @end
	iny
	cmp #'\'
	beq @next_line
	sta $2007
	jmp :-
@next_line:
	lda nmt_addr+0
	clc
	adc #<32
	sta nmt_addr+0
	lda nmt_addr+1
	adc #>32
	sta nmt_addr+1
	jmp @restart
@end:
	rts

ppu_string_buffer:
	; load null-terminated string to nmt_buffer
	;   in: ptr = string
	;   out: nmt_count
	;   clobbers: A, X, Y, ptr
	ldx #0
	ldy #0
	:
		lda (ptr), Y
		beq :+
		sta nmt_buffer, X
		inx
		iny
		jmp :-
	:
	stx nmt_count
	rts

sprite_begin:
	; reserve sprite 0 and place offscreen
	lda #$FF
	sta oam+0
	; set oam_pos to start at sprite 1
	lda #4
	sta oam_pos
	rts

sprite_finish:
	ldx oam_pos
	lda #$FF
	:
		sta oam+0, X
		inx
		inx
		inx
		inx
		bne :-
	rts

sprite:
	; adds a sprite to OAM
	;   in: ptr = sprite data (list of 4-byte tiles)
	;             [ x, y, tile, attribute ]
	;             x=128 marks the end of list
	;   in: X = sprite x
	;   in: Y = sprite y
	;   out: oam_pos
	;   clobbers: A, X, Y, temp
	@sprite_x = temp+0
	@sprite_y = temp+1
	stx @sprite_x
	sty @sprite_y
	ldy #0
	ldx oam_pos
	beq @finish ; OAM full
@tile:
	lda (ptr), Y
	iny
	cmp #128
	beq @finish
	clc
	adc @sprite_x
	sta oam+3, X
	lda (ptr), Y
	iny
	clc
	adc @sprite_y
	sta oam+0, X
	lda (ptr), Y
	iny
	sta oam+1, X
	lda (ptr), Y
	iny
	sta oam+2, X
	inx
	inx
	inx
	inx
	stx oam_pos
	bne @tile
@finish:
	rts

fade_copy_palette_:
	; temporarily copy palette to nmt_buffer for fade
	ldx #32
	:
		lda palette-1, X
		sta nmt_buffer+31, X
		dex
		bne :-
	rts

fade_apply_:
	; in: A = value to subtract from palette, copying from nmt_buffer
	@sub = temp+0
	sta @sub
	ldx #32
	@loop:
		lda nmt_buffer+31, X
		sec
		sbc @sub
		bcs :+
			lda #$0F
		:
		sta palette-1, X
		dex
		bne @loop
	rts

fade_step_:
	; in: A = value to subtract from palette
	; in: @time = frames-1 to wait
	@time = temp+1
	jsr fade_apply_
	jsr ppu_update
	ldx @time
	jsr ppu_skip_frames
	rts

fade_out:
	; in: X+1 = frames to wait on each fade level
	; clobbers: A, X, temp
	@time = temp+1
	stx @time
	jsr fade_copy_palette_
	lda #$10
	jsr fade_step_
	lda #$20
	jsr fade_step_
	lda #$30
	jsr fade_step_
	jsr ppu_off
	lda #$00
	jsr fade_apply_ ; restore orgiinal palette now that rendering is off
	rts

fade_in:
	; in: X+1 = frames to wait on each fade level
	; clobbers: A, X, temp
	@time = temp+1
	stx @time
	jsr fade_copy_palette_
	lda #$30
	jsr fade_apply_
	jsr ppu_on
	ldx @time
	jsr ppu_skip_frames
	lda #$20
	jsr fade_step_
	lda #$10
	jsr fade_step_
	lda #$00
	jsr fade_apply_
	jsr ppu_update
	rts

art_prepare_:
	; in: A = art
	; out: bank $C000 contains art, and (ptr) points to it
	; clobbers: Y
	asl
	tay
	lda art_table+0, Y
	sta ptr+0
	lda art_table+1, Y
	sta ptr+1
	; high nybble selects bank
	lsr
	lsr
	lsr
	lsr
	clc
	adc #BANK_ART
	sta $5FFC
	; remap to $C000
	lda ptr+1
	and #$0F
	ora #$C0
	sta ptr+1
	rts

art_load_ppu_4k_:
	jsr art_load_ppu_1k_
	jsr art_load_ppu_1k_
	jsr art_load_ppu_1k_
art_load_ppu_1k_:
	jsr art_load_ppu_256b_
	jsr art_load_ppu_256b_
	jsr art_load_ppu_256b_
art_load_ppu_256b_:
	ldy #0
	:
		lda (ptr), Y
		sta $2007
		iny
		bne :-
	inc ptr+1
	rts

load_screen:
	; in: A = screen to load
	; out: palette, CHR/nametables
	; clobbers: A, X, Y, ptr
	asl
	asl
	asl
	tax ; X = screen * 8
	; latch PPU address to 0
	bit $2002
	lda #0
	sta $2006
	sta $2006
	; CHR $0000
	lda screen_table+1, X
	jsr art_prepare_
	jsr art_load_ppu_4k_
	; CHR $1000
	lda screen_table+2, X
	jsr art_prepare_
	jsr art_load_ppu_4k_
	; NMT $2000
	lda screen_table+0, X
	jsr art_prepare_
	jsr art_load_ppu_1k_
	; palette BG
	lda screen_table+3, X
	jsr art_prepare_
	ldy #0
	:
		lda (ptr), Y
		sta palette+0, Y
		iny
		cpy #16
		bcc :-
	; palette FG
	lda screen_table+4, X
	jsr art_prepare_
	ldy #0
	:
		lda (ptr), Y
		sta palette+16, Y
		iny
		cpy #16
		bcc :-
	rts

track_index_:
	tax
	lda track_order, X
	rts

load_track_title:
	; in: A = track
	; out: ptr
	; clobbers A, X
	jsr track_index_
	asl
	tax
	lda track_title_list+0, X
	sta ptr+0
	lda track_title_list+1, X
	sta ptr+1
	rts

load_track_title_short:
	; in: A = track
	; out: ptr
	; clobbers A, X
	jsr track_index_
	asl
	tax
	lda track_title_short_list+0, X
	sta ptr+0
	lda track_title_short_list+1, X
	sta ptr+1
	rts

load_track_artist:
	; in: A = track
	; out: ptr
	; clobbers A, X
	jsr track_index_
	asl
	tax
	lda track_artist_list+0, X
	sta ptr+0
	lda track_artist_list+1, X
	sta ptr+1
	rts

; end of file
