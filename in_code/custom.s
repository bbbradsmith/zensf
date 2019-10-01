; custom.s
;
; A basic set of menus to demonstrate how to implement them on top of the base layer.
;
;
; https://github.com/bbbradsmith/zensf

.feature force_range ; required for negative values in .byte
.macpack longbranch

.include "../base.inc"
.export custom_main
.export custom_nmi
.export custom_nmt_update
.export seed

.import nsf_playing ; ramp.s

TRACKS = TRACK_ORDER_LENGTH
STARS = 4*3 ; must be multiple of 3
ITEMS = 3

.include "../out_info/screen_enum.inc"

.segment "CUSTOM_ZP" : zeropage
; probably don't want to add any more ZP burden
; this is not high performance code anyway

.segment "CUSTOM_RAM"
gamepad_last:   .res 1
gamepad_new:    .res 1
title_pos:      .res 1
track:          .res 1
paused:         .res 1
sx:             .res 2
sy:             .res 2
sa:             .res 1
sync:           .res 1 ; synchronizes the animations
claw_anim_pos:  .res 1
claw_anim_wait: .res 1
seed:           .res 2
star_x:         .res STARS
star_y:         .res STARS
brick:          .res 3
comp_col:       .res 1
comp_spr:       .res 1
belt_x:         .res 1
belt_y:         .res 1
belt_time:      .res 1
item_xl:        .res ITEMS
item_xh:        .res ITEMS
item_y:         .res ITEMS
item_spr:       .res ITEMS
item_time:      .res ITEMS
item_next:      .res 1
item_last:      .res 1

.segment "CUSTOM"

custom_main:
	jsr common_init
	jsr sfx_setup
	lda #SCREEN_Upper
	jsr load_screen
	lda #SCREEN_Lower
	jsr load_screen_aux
	jmp menu_title

custom_nmi:
	jmp sfx_tick

; sfx

.segment "CUSTOM_RAM"
sfx__lda_abs_y: .res 1
sfx_ptr:        .res 2
sfx__rts:       .res 1
sfx_on:         .res 1
sfx_pos:        .res 1
sfx_wait:       .res 1

.segment "CUSTOM"

sfx_read = sfx__lda_abs_y ; reads a byte from sfx_ptr + Y

sfx_setup:
	; sfx_read is a bit of RAM code around the pointer
	; (saves having to put the pointer on ZP at the expense of 2 more RAM bytes)
	lda #$B9 ; LDA ABS, Y
	sta sfx__lda_abs_y
	lda #$60 ; RTS
	sta sfx__rts
	rts

sfx_tick:
	lda sfx_on
	beq @end
	lda sfx_wait
	beq :+
		dec sfx_wait
		jmp @end
	:
	ldy sfx_pos
@loop:
	jsr sfx_read ; fake equivalent of: lda (sfx_ptr), Y
	cmp #$20
	bcs :+
		; command <$20 = direct write to $40XX register
		tax
		iny
		jsr sfx_read
		sta $4000, X
		iny
		jmp @loop
	:
	cmp #$21
	bcs :+
		; command $20 = finish frame and wait (0 = next frame)
		iny
		jsr sfx_read
		sta sfx_wait
		iny
		jmp @finish
	:
		; command $FF (or anything > $20) = finish sfx
		lda #0
		sta sfx_on
		jmp @end
	;
@finish:
	sty sfx_pos
@end:
	rts

sfx_play:
	lda #0
	sta sfx_on
	sta sfx_wait
	sta sfx_pos
	lda ptr+0
	sta sfx_ptr+0
	lda ptr+1
	sta sfx_ptr+1
	lda #1
	sta sfx_on
	rts

sfx_cursor_move:
.byte $15, $01 ; enable square 0
.byte $00, $B4 ; square, constant volume 4
.byte $02, $FF ; low frequency $FF
.byte $03, $F0 ; enable channel, high freq $0
.byte $01, $8B ; sweep up
.byte $20, 6   ; wait a few frames
.byte $15, $00 ; disable
.byte $FF      ; end

sfx_cursor_act:
.byte $15, $02 ; enable square 1
.byte $04, $B5 ; square, constant volume 5
.byte $05, $07 ; disable sweep
.byte $06, $E0 ; low frequency $EO
.byte $07, $F0 ; enable channel, high freq $0
.byte $20, 2   ; wait
.byte $06, $D0 ;
.byte $20, 2   ;
.byte $06, $F0 ;
.byte $20, 2   ;
.byte $04, $31 ; narrow pulse, constant volume 1 (echo)
.byte $06, $E0 ;
.byte $20, 2   ;
.byte $06, $D0 ;
.byte $20, 2   ;
.byte $06, $F0 ;
.byte $20, 2   ;
.byte $15, $00 ; disable
.byte $FF      ; end

.macro SFX addr
	LOAD_PTR addr
	jsr sfx_play
.endmacro

; utilities

.macro LOAD_PTR addr
	lda #<addr
	sta ptr+0
	lda #>addr
	sta ptr+1
.endmacro

.macro LOAD_NMT addr
	lda #<addr
	sta nmt_addr+0
	lda #>addr
	sta nmt_addr+1
.endmacro

custom_nmt_update:
	; called from NMI,
	; but can also be used while rendering is off (and nmi_ready=0)
	; to push a pending nametable update.
	lda ppu_ctrl ; sets direction of update
	sta $2000
	bit $2002
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
	cpy #255
	beq @nmt_brick ; custom modification for updating animated bricks
	:
		pla
		sta $2007
		dey
		bne :-
	jmp @nmt_update_end
@nmt_brick: ; animated brick is 3 rows of 4 tiles
	ldy #4
	:
		pla
		sta $2007
		dey
		bne :-
	.repeat 2, I
		lda nmt_addr+0
		clc
		adc #(I+1)*32
		tay
		lda nmt_addr+1
		adc #0
		sta $2006
		sty $2006
		ldy #4
		:
			pla
			sta $2007
			dey
			bne :-
	.endrepeat
@nmt_update_end:
	txs ; restore stack
	sty nmt_count ; = 0
	rts

ffade_in: ; fastest fade_in
	ldx #0
	jmp fade_in

ffade_out: ; fastest fade_out
	ldx #0
	jmp fade_out

gamepad_poll_new:
	; return/gamepad_new = only buttons that are newly pressed on this poll
	jsr gamepad_poll
	eor gamepad_last
	and gamepad
	sta gamepad_new
	; store last value
	lda gamepad
	sta gamepad_last
	; return new
	lda gamepad_new
	rts

gamepad_wait_release:
	:
		jsr gamepad_poll
		bne :-
	rts

prng_init: ; makes sure seed is not 0
	lda seed+0
	ora seed+1
	bne :+
		inc seed+0
	:
	rts

prng: ; random value in A, clobbers Y
	; https://github.com/bbbradsmith/prng_6502
	lda seed+1
	tay
	lsr
	lsr
	lsr
	sta seed+1
	lsr
	eor seed+1
	lsr
	eor seed+1
	eor seed+0
	sta seed+1
	tya
	sta seed+0
	asl
	eor seed+0
	asl
	eor seed+0
	asl
	asl
	asl
	eor seed+0
	sta seed+0
	rts

rainbow17:
	; only do this 1/8 frames
	lda nmi_count
	and #7
	beq :+
		rts
	:
	; cycle hue of palette 17 by -1
	lda palette+17
	pha
	and #$F0
	sta temp
	pla
	and #$0F
	beq @combine
	cmp #$0D
	bcs @combine
	clc
	adc #$0B ; -1 hue
	:
		cmp #$0D
		bcc :+
		sec
		sbc #$0C
		jmp :-
	:
@combine:
	ora temp
	sta palette+17
	rts

; sprites

.macro SPRITE addr
	LOAD_PTR addr
	jsr sprite
.endmacro

.macro SPRITEXY addr, x_, y_
	LOAD_PTR addr
	ldx #x_
	ldy #y_
	jsr sprite
.endmacro

; sprite definitions:  [x     y tile attr] 128=end

sprite_ballr:  .byte  -12,  -25, $40, $00
               .byte   -4,  -25, $41, $00
               .byte    4,  -25, $60, $C0
               .byte  -12,  -17, $50, $00
               .byte   -4,  -17, $51, $00
               .byte    4,  -17, $50, $40
               .byte  -12,   -9, $60, $00
               .byte   -4,   -9, $41, $80
               .byte    4,   -9, $60, $40, 128
sprite_bally:  .byte  -12,  -25, $40, $03
               .byte   -4,  -25, $41, $03
               .byte    4,  -25, $60, $C3
               .byte  -12,  -17, $50, $03
               .byte   -4,  -17, $51, $03
               .byte    4,  -17, $50, $43
               .byte  -12,   -9, $60, $03
               .byte   -4,   -9, $41, $83
               .byte    4,   -9, $60, $43, 128
sprite_box:    .byte  -12,  -25, $44, $01
               .byte   -4,  -25, $45, $01
               .byte    4,  -25, $46, $01
               .byte  -12,  -17, $54, $03
               .byte   -4,  -17, $55, $01
               .byte    4,  -17, $56, $01
               .byte  -12,   -9, $64, $01
               .byte   -4,   -9, $65, $01
               .byte    4,   -9, $66, $01, 128
sprite_cone:   .byte   -4,  -28, $47, $80
               .byte   -4,  -33, $48, $02
               .byte   -8,  -25, $57, $02
               .byte    0,  -25, $57, $42
               .byte  -12,  -17, $67, $02
               .byte   -4,  -17, $68, $02
               .byte    4,  -17, $67, $42
               .byte  -12,   -9, $77, $02
               .byte   -4,   -9, $68, $02
               .byte    4,   -9, $77, $42, 128
sprite_armu:   .byte    0,   -4, $39, $00
               .byte   -8,  -18, $18, $00
               .byte   -8,  -10, $28, $00
               .byte   -8,   -2, $38, $00, 128
sprite_claw0u: .byte   -5,  -26, $20, $00 ; closed claw
               .byte   -5,  -34, $10, $00
               .byte  -13,  -26, $20, $40
               .byte  -13,  -34, $10, $40, 128
sprite_claw1u: .byte   -5,  -21, $21, $00 ; open claw
               .byte   -4,  -29, $11, $00
               .byte  -13,  -21, $21, $40
               .byte  -14,  -29, $11, $40, 128
sprite_claw2u: .byte   -9,  -26, $23, $00 ; spin 1
               .byte   -9,  -34, $13, $00, 128
sprite_claw3u: .byte   -9,  -26, $22, $00 ; spin 2
               .byte   -9,  -34, $12, $00, 128
sprite_claw4u: .byte   -9,  -26, $23, $40 ; spin 3
               .byte   -9,  -34, $13, $40, 128
sprite_armd:   .byte    0,   -3, $39, $80
               .byte   -8,   11, $18, $80
               .byte   -8,    3, $28, $80
               .byte   -8,   -5, $38, $80, 128
sprite_claw0d: .byte   -5,   19, $20, $80
               .byte   -5,   27, $10, $80
               .byte  -13,   19, $20, $C0
               .byte  -13,   27, $10, $C0, 128
sprite_claw1d: .byte   -5,   14, $21, $80
               .byte   -4,   22, $11, $80
               .byte  -13,   14, $21, $C0
               .byte  -14,   22, $11, $C0, 128
sprite_claw2d: .byte   -9,   19, $23, $80
               .byte   -9,   27, $13, $80, 128
sprite_claw3d: .byte   -9,   19, $22, $80
               .byte   -9,   27, $12, $80, 128
sprite_claw4d: .byte   -9,   19, $23, $C0
               .byte   -9,   27, $13, $C0, 128
sprite_belt0:  .byte    0,   -1, $49, $00, 128
sprite_belt1:  .byte    0,   -1, $4A, $00, 128
sprite_belt2:  .byte    0,   -1, $4B, $00, 128
sprite_comp0a: .byte    0,   -1, $15, $00, 128
sprite_comp1a: .byte    0,   -1, $16, $00, 128
sprite_comp2a: .byte    0,   -1, $17, $00, 128
sprite_comp0b: .byte    0,   -2, $25, $00, 128
sprite_comp1b: .byte    0,   -2, $26, $00, 128
sprite_comp2b: .byte    0,   -2, $27, $00, 128
sprite_star0:  .byte    0,   -1, $35, $00, 128
sprite_star1:  .byte    0,   -1, $36, $00, 128
sprite_star2:  .byte    0,   -1, $37, $00, 128
sprite_num0:   .byte    0,   -1, $00, $00, 128
sprite_num1:   .byte    0,   -1, $01, $00, 128
sprite_num2:   .byte    0,   -1, $02, $00, 128
sprite_num3:   .byte    0,   -1, $03, $00, 128
sprite_num4:   .byte    0,   -1, $04, $00, 128
sprite_num5:   .byte    0,   -1, $05, $00, 128
sprite_num6:   .byte    0,   -1, $06, $00, 128
sprite_num7:   .byte    0,   -1, $07, $00, 128
sprite_num8:   .byte    0,   -1, $08, $00, 128
sprite_num9:   .byte    0,   -1, $09, $00, 128
sprite_colon:  .byte    0,   -1, $0A, $00, 128
sprite_play:   .byte    0,   -1, $0B, $00, 128
sprite_loop:   .byte    0,   -1, $0C, $00, 128
sprite_pause:  .byte    0,   -1, $0D, $00, 128

; TODO get rid of these
sprite_title:  .byte    0,    0, $0C, $00
               .byte   55,    0, $0C, $40, 128
sprite_tracks: .byte   -3,    0, $0C, $00, 128
sprite_info0:  .byte    0,   -2, $10, $00, 128
sprite_info1:  .byte    1,   -2, $11, $00, 128
sprite_info2:  .byte    1,   -2, $12, $00, 128
sprite_info3:  .byte    1,   -2, $13, $00, 128
sprite_infu0:  .byte    0,   -1, $10, $01, 128
sprite_infu1:  .byte    1,   -1, $11, $01, 128
sprite_infu2:  .byte    1,   -1, $12, $01, 128
sprite_infu3:  .byte    1,   -1, $13, $01, 128

sprite_num_table:
.word sprite_num0
.word sprite_num1
.word sprite_num2
.word sprite_num3
.word sprite_num4
.word sprite_num5
.word sprite_num6
.word sprite_num7
.word sprite_num8
.word sprite_num9

load_sprite_num:
	; A = number 0-9
	; clobbers X
	asl
	tax
	lda sprite_num_table+0, X
	sta ptr+0
	lda sprite_num_table+1, X
	sta ptr+1
	rts

scrolled_sprite:
	;   in: ptr = sprite data
	;       sx = 16-bit sprite x
	;       sy = 16-bit sprite y
	;       sa = 8-bit attribute XOR
	;   out: oam_pos
	;   clobbers: A, X, Y, ptr, sy
	ldy #0
	ldx oam_pos
	beq @finish ; OAM full
	; adjust Y for scroll
	lda sy+0
	sec
	sbc ppu_scroll_y
	sta sy+0
	lda sy+1
	sbc #0 ; ignoring high bit of scroll_y (would be in ppu_ctrl), don't need it for this project
	sta sy+1
@tile:
	; generate X coordinate
	lda (ptr), Y
	cmp #128
	beq @finish
	clc
	adc sx+0
	sta oam+3, X
	; check if 16-bit X-coordinate was onscreen
	lda (ptr), Y
	iny
	ora #$7F
	bmi :+
		lda #0
	:
	adc sx+1
	beq :+
		iny
		iny
		iny
		jmp @tile ; skip
	:
	; generate Y coordinate
	lda (ptr), Y
	clc
	adc sy+0
	sta oam+0, X
	; check if 16-bit Y coordinate was onscreen
	lda (ptr), Y
	iny
	ora #$7F
	bmi :+
		lda #0
	:
	adc sy+1
	beq :+
		lda #$FF
		sta oam+0, X ; keep offscreen in case not replaced
		iny
		iny
		jmp @tile ; skip
	:
	; tile
	lda (ptr), Y
	iny
	sta oam+1, X
	; attribute
	lda (ptr), Y
	iny
	eor sa
	sta oam+2, X
@next_tile:
	inx
	inx
	inx
	inx
	stx oam_pos
	bne @tile
@finish:
	rts

; for sprites in a fixed location
.macro SCROLLED_SPRITE coord_sx, coord_sy, ptr_sprite
	lda #<coord_sx
	sta sx+0
	lda #>coord_sy
	sta sx+1
	lda #<coord_sy
	sta sy+0
	lda #>coord_sy
	sta sy+1
	lda #<ptr_sprite
	sta ptr+0
	lda #>ptr_sprite
	sta ptr+1
	jsr scrolled_sprite
.endmacro

; claw animation

sprite_claw_table:
.word sprite_claw0u ; closed
.word sprite_claw0d
.word sprite_claw1u ; open
.word sprite_claw1d
.word sprite_claw2u ; spin 1
.word sprite_claw2d
.word sprite_claw3u ; spin 2
.word sprite_claw3d
.word sprite_claw4u ; spin 3
.word sprite_claw4d
.word sprite_armu
.word sprite_armd

claw_anim:
            .byte 255, 255
claw_anim0: .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255 ; 0 = wait
claw_anim1: .byte 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 255 ; 1 = grab
claw_anim2: .byte 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 255 ; 2 = spin
claw_anim3: .byte 0, 0, 4, 3, 2, 0, 0, 0, 0, 0, 0, 255 ; 3 = spin reverse
.assert (*-claw_anim) <= 256, error, "claw_anim data overflow"

claw_anim_start:
.byte claw_anim0 - claw_anim
.byte claw_anim1 - claw_anim
.byte claw_anim2 - claw_anim
.byte claw_anim3 - claw_anim
.byte claw_anim0 - claw_anim
.byte claw_anim0 - claw_anim
.byte claw_anim0 - claw_anim
.byte claw_anim0 - claw_anim

CLAW_SPEED = 7 ; frames per tick

claw_init:
	lda #0
	sta claw_anim_wait
	lda claw_anim_start+0
	sta claw_anim_pos
	rts

claw_tick:
	lda claw_anim_wait
	and #$7F
	beq :+
		dec claw_anim_wait
		rts
	:
	lda #CLAW_SPEED
	ora claw_anim_wait
	sta claw_anim_wait
	inc claw_anim_pos
	ldx claw_anim_pos
	lda claw_anim, X
	cmp #255
	bne :+
		; choose random animation
		jsr prng
		sta claw_anim_pos ; temporary for bit combining
		asl
		and claw_anim_pos
		asl
		and claw_anim_pos
		asl
		and claw_anim_pos
		and #$80 ; AND of high 4 bits = flip
		eor claw_anim_wait
		sta claw_anim_wait
		lda claw_anim_pos
		and #7
		tax
		lda claw_anim_start, X
		sta claw_anim_pos
	:
	rts

claw_draw:
	; draw arm in up or down position
	lda claw_anim_wait ; & $80 = down
	rol
	php ; save carry
	lda #0
	rol
	asl
	tax
	lda sprite_claw_table+(5*4)+0, X
	sta ptr+0
	lda sprite_claw_table+(5*4)+1, X
	sta ptr+1
	lda #74
	sta sx+0
	lda #96
	sta sy+0
	lda #0
	sta sx+1
	sta sy+1
	jsr scrolled_sprite
	; draw claw
	; sx = 74
	lda #96
	sta sy+0
	lda #0
	sta sy+1
	plp ; carry = claw_anim_wait & 80 = down
	ldx claw_anim_pos
	lda claw_anim, X
	rol ; * 2 + up/down
	asl ; * 2 for pointer
	tax
	lda sprite_claw_table+0, X
	sta ptr+0
	lda sprite_claw_table+1, X
	sta ptr+1
	jmp scrolled_sprite

; stars

star_randy: ; X = star, randomizes star_y
	jsr prng
	sta star_y, X
	rts

stars_init:
	ldx #0
	:
		jsr star_randy
		; star_x = (x * 105) % 256
		; 105 = 3*5*7 is relatively prime to 256 (hits all possible points)
		; but also close to a "golden angle" division of 256 (~98)
		; and also a multiple of 21 (~256/12) which might evenly distribute 12 stars
		txa
		sta star_x, X
		asl star_x, X
		asl star_x, X
		asl star_x, X
		clc
		adc star_x, X
		asl star_x, X
		asl star_x, X
		clc
		adc star_x, X
		asl star_x, X
		clc
		adc star_x, X
		sta star_x, X
		inx
		cpx #STARS
		bcc :-
	rts

stars_tick:
	jsr prng_init ; probably unnecessary, but just in case
	ldy #0
	ldx #0
	@loop: ; 3 passes: stars that move 1x, 2x, 3x
		dec star_x, X
		bne :+
			jsr star_randy
		:
		inx
		cpx #STARS
		bcc @loop
	tya
	clc
	adc #(STARS/3)
	tax
	tay
	cpy #STARS
	bcc @loop
	rts

stars_draw:
	ldy oam_pos
	ldx #0
	:
		cpy #0
		beq :+
		txa
		lsr
		lsr ; X/4
		.assert (STARS=12), error, "Stars colour"
		clc
		adc #$35
		sta oam+1, Y ; tile
		lda star_x, X
		sta oam+3, Y ; X
		lda star_y, X
		sec
		sbc ppu_scroll_y
		sta oam+0, Y ; Y
		lda #$22 ; behind background, palette 2
		sta oam+2, Y ; attribute
		iny
		iny
		iny
		iny
		inx
		cpx #STARS
		bcc :-
	:
	sty oam_pos
	rts

; bricks

brick_up:
.byte $AC, $AD, $AE, $AF
.byte $BC, $BD, $BE, $BF
.byte $CC, $CD, $CE, $CF

brick_down:
.byte $10, $11, $12, $13
.byte $14, $15, $8E, $8F
.byte $9C, $9D, $9E, $9F

brick_nmt0:
.byte <$21A1
.byte <$2138
.byte <$221B
brick_nmt1:
.byte >$21A1
.byte >$2138
.byte >$221B

brick_speed:
.byte 11,13,7

brick_tick: ; tick brick X
	inc brick, X
	lda brick, X
	and #$7F
	cmp brick_speed, X
	bcc :+
		lda brick, X
		eor #$80
		and #$80
		sta brick, X
	:
	rts

bricks_tick:
	; ticks 3 bricks on frames 0, 3, 6
	lda sync
	and #3
	bne:+
		lda sync
		lsr
		lsr
		and #3
		beq :+
		tax
		dex
		jsr brick_tick
	:
	rts

brick_draw: ; redraw brick X
	lda brick_nmt0, X
	sta nmt_addr+0
	lda brick_nmt1, X
	sta nmt_addr+1
	ldy #0
	lda brick, X
	bmi @brick_down
@brick_up:
	:
		lda brick_up, Y
		sta nmt_buffer, Y
		iny
		cpy #12
		bcc :-
	jmp @brick_done
@brick_down:
	:
		lda brick_down, Y
		sta nmt_buffer, Y
		iny
		cpy #12
		bcc :-
	;jmp @brick_done
@brick_done:
	lda #255
	sta nmt_count
	rts

bricks_draw:
	lda sync
	and #3
	bne:+
		lda sync
		lsr
		lsr
		and #3
		beq :+
		tax
		dex
		jsr brick_draw
	:
	rts

bricks_init:
	ldx #0
	:
		jsr prng
		sta brick, X
		jsr brick_tick
		jsr brick_draw
		jsr custom_nmt_update
		inx
		cpx #3
		bcc :-
	rts

; computer lights

; comp_col = palette
; comp_spr = sprite
; stored as: %33.22.11 (. bit for carry padding)

comp_packed3: ; A = packed value to increment all 3 fields randomly by 0,1,2, result of 3/4 wraps back to 0/1
	sta temp+0
	jsr prng
	and #%01001001 ; +1 or +0 each
	clc
	adc temp+0
	sta temp+0
	jsr prng
	and #%01001001 ; +1 or +0 each, again
	clc
	adc temp+0
	sta temp+0
	ror
	lsr
	and #%01001001 ; 4 == carry, low 2 bits will be 0 so just add it back in to map 4->1
	clc
	adc temp+0
	sta temp+0
	and #%01001001 ; map 3 to 0...
	asl
	eor temp+0
	and #%10010010
	sta temp+1
	lsr
	ora temp+1 ; %11 if 1 or 2 (keep), %00 if 0 or 3 (wrap to 0)
	and temp+0
	rts

comp_cycle:
	;lda comp_col
	;jsr comp_packed3
	jsr prng ; randomly use all 4 palettes
	sta comp_col
	lda comp_spr
	jsr comp_packed3 ; randomly set 0,1,2 only
	sta comp_spr
	rts

comp_init:
	lda #0
	sta comp_col
	sta comp_spr
	ldx #4
	:
		jsr comp_cycle ; 4 random cycles for random starting state
		dex
		bne :-
	rts

comp_tick:
	lda sync
	;and #63
	;cmp #62
	and #15
	cmp #6
	bne :+
		jsr comp_cycle
	:
	rts

sprite_compa_table:
.word sprite_comp0a
.word sprite_comp1a
.word sprite_comp2a

sprite_compb_table:
.word sprite_comp0b
.word sprite_comp1b
.word sprite_comp2b

comp_draw:
	; top left pair
	lda #<94
	sta sx+0
	lda #<98
	sta sy+0
	lda #0
	sta sx+1
	sta sy+1
	lda comp_col
	and #3
	sta sa
	lda comp_spr
	asl
	and #(3<<1)
	tax
	lda sprite_compb_table+0, X
	sta ptr+0
	lda sprite_compb_table+1, X
	sta ptr+1
	jsr scrolled_sprite
	; bottom left
	;lda #<94
	;sta sx+0
	lda #<106
	sta sy+0
	lda #0
	;sta sx+1
	sta sy+1
	lda comp_col
	lsr
	lsr
	lsr
	and #3
	sta sa
	lda comp_spr
	lsr
	lsr
	and #(3<<1)
	tax
	lda sprite_compa_table+0, X
	sta ptr+0
	lda sprite_compa_table+1, X
	sta ptr+1
	jsr scrolled_sprite
	; bottom right
	lda #<106
	sta sx+0
	lda #<111
	sta sy+0
	lda #0
	;sta sx+1
	sta sy+1
	lda comp_col
	rol
	rol
	rol
	and #3
	sta sa
	lda comp_spr
	rol
	rol
	rol
	asl
	and #(3<<1)
	tax
	lda sprite_compa_table+0, X
	sta ptr+0
	lda sprite_compa_table+1, X
	sta ptr+1
	jsr scrolled_sprite
	; return sprite attribute XOR to 0
	lda #0
	sta sa
	rts

; belt and items

belt_init: ; random starting position
	jsr prng
	and #63
	tax
	inx
	:
		jsr belt_tick
		dex
		bne :-
	rts

belt_tick:
	inc belt_x
	lda belt_x
	cmp #72
	bcc :+
		lda #0
		sta belt_x
		sta belt_y
		sta belt_time
		rts
	:
	ldy belt_time
	iny
	iny
	cpy #(3*2)
	bcc :+
		ldy #0
		inc belt_y
	:
	sty belt_time
	rts

sprite_belt_table:
.word sprite_belt0
.word sprite_belt1
.word sprite_belt2

belt_draw:
	lda belt_x
	sta sx+0
	lda #0
	sta sx+1
	lda belt_y
	clc
	adc #<214
	sta sy+0
	lda #0
	rol
	sta sy+1
	:
		ldx belt_time
		lda sprite_belt_table+0, X
		sta ptr+0
		lda sprite_belt_table+1, X
		sta ptr+1
		lda sy+1
		pha
		lda sy+0
		pha
		jsr scrolled_sprite ; clobbers sy, but not sx
		pla ; next belt at sy+24
		clc
		adc #<24
		sta sy+0
		pla
		adc #>24
		sta sy+1
		lda sx+0 ; next belt at sx+72
		clc
		adc #72
		sta sx+0
		bcc :- ; repeat until belt is offscreen
	rts

sprite_items_table:
.word sprite_ballr
.word sprite_bally
.word sprite_box
.word sprite_cone

items_permute: ; so we can't get AA or ABA repetition
.byte 3,1 ; 0,0 (impossible)
.byte 2,3 ; 0,1
.byte 1,3 ; 0,2
.byte 1,2 ; 0,3
.byte 2,3 ; 1,0
.byte 0,2 ; 1,1 (impossible)
.byte 0,3 ; 1,2
.byte 0,2 ; 1,3
.byte 1,3 ; 2,0
.byte 0,3 ; 2,1
.byte 1,3 ; 2,2 (impossible)
.byte 0,1 ; 2,3
.byte 1,2 ; 3,0
.byte 0,2 ; 3,1
.byte 0,1 ; 3,2
.byte 2,0 ; 3,3 (impossible)

items_init:
	; place items offscreen
	lda #2
	.repeat ITEMS, I
		sta item_xh+I
	.endrepeat
	jsr prng
	sta item_next
	jsr prng
	sta item_last
	rts

item_tick: ; X = item
	inc item_xl, X
	bne :+
		inc item_xh, X
	:
	lda item_time, X
	tay
	iny
	cpy #3
	bcc :+
		inc item_y, X
		ldy #0
	:
	tya
	sta item_time, X
	rts

items_tick:
	.repeat ITEMS, I
		ldx #I
		jsr item_tick
	.endrepeat
	; frames until next item appears
	dec item_next
	bne @finish
	jsr prng
	and #63
	clc
	adc #60
	sta item_next
	; find an empty item
	ldx #0
@find_empty:
	lda item_xh, X
	tay
	iny ; -1 -> 0
	cpy #3
	bcs @found ; more than 1 screen past the edge
	cpy #2
	bne @next ; less than 1 screen past the edge
	lda item_xl, X
	cmp #24 ; 24 pixels past the screen = it's definitely gone
	bcs @found
@next:
	inx
	cpx #ITEMS
	bcc @find_empty
	; none found, just delay for a few frames and try again
	jsr prng
	and #31
	clc
	adc #15
	sta item_next
	rts
@found:
	; X = empty item
	lda #0
	sta item_time, X
	sta item_y, X
	lda #<-24
	sta item_xl, X
	lda #>-24
	sta item_xh, X
	; next item should not repeat either of last two
	jsr prng
	lsr
	lda item_last
	rol
	and #%11111 ; two items ago (2-bit), one item ago (2-bit), random bit
	tay
	lda items_permute, Y
	asl
	sta item_spr, X
	lsr
	asl item_last
	asl item_last
	ora item_last
	sta item_last
@finish:
	rts

item_draw: ; X = item
	lda item_xh, X
	tay
	iny
	cpy #3
	bcc :+
		rts
	:
	sta sx+1
	lda item_xl, X
	sta sx+0
	lda item_y, X
	clc
	adc #214-26
	sta sy+0
	lda #0
	rol
	sta sy+1
	lda item_spr, X
	tay
	lda sprite_items_table+0, Y
	sta ptr+0
	lda sprite_items_table+1, Y
	sta ptr+1
	jmp scrolled_sprite

items_draw:
	.repeat ITEMS, I
		ldx #I
		jsr item_draw
	.endrepeat
	rts

; common animation

common_init:
	jsr prng_init
	jsr items_init
	jsr claw_init
	jsr comp_init
	jsr bricks_init
	jsr belt_init
	jsr stars_init
	rts

common_tick:
	;lda sync
	;and #3
	;bne :+
	;	inc ppu_scroll_y ; HACK test
	;:
	lda #50
	sta ppu_scroll_y ; HACK test
	jsr items_tick
	jsr claw_tick
	jsr comp_tick
	jsr bricks_tick
	jsr belt_tick
	jsr stars_tick
	;jsr rainbow17
	inc sync
	rts

common_draw:
	jsr bricks_draw ; not sprites
	jsr sprite_begin
	lda #0
	sta sa ; clear sprite attribute xor
	jsr items_draw
	jsr claw_draw
	jsr comp_draw
	jsr belt_draw
	jsr stars_draw
	jsr sprite_finish
	rts

; menu screens

menu_title_tick = common_tick

menu_title_redraw:
	jmp common_draw

menu_title:
	jsr menu_title_redraw
	jsr ffade_in
@loop:
	jsr gamepad_poll_new
	;lda gamepad_new
	and #(PAD_L | PAD_R | PAD_U | PAD_D | PAD_SELECT)
	beq :+
		lda title_pos
		eor #1
		sta title_pos
		SFX sfx_cursor_move
		jmp @finish
	:
	lda gamepad_new
	and #(PAD_A | PAD_B | PAD_START)
	beq :+
		SFX sfx_cursor_act
		jsr ffade_out
		lda title_pos
		jne menu_info
		jmp menu_tracks
	:
@finish:
	jsr menu_title_tick
	jsr menu_title_redraw
	jsr ppu_update
	jmp @loop

menu_info_bob_:
	clc
	adc nmi_count
	lsr
	lsr
	lsr
	lsr
	lsr
	tay
	lda @anim, Y
	tay
	rts
@anim:
	.byte 0, -1, -2, -1, 0, 1, 2, 1

.macro MENU_INFO_BOB angle, x_, y_, spr_
	lda #angle
	jsr menu_info_bob_
	clc
	adc #(y_ * 8)
	tay
	ldx #(x_ * 8)
	SPRITE spr_
.endmacro

menu_info_redraw:
	jsr sprite_begin
	; INFO letters bobbing up and down
	MENU_INFO_BOB   0,  8, 20, sprite_info0
	MENU_INFO_BOB  53, 13, 19, sprite_info1
	MENU_INFO_BOB 106, 18, 22, sprite_info2
	MENU_INFO_BOB 159, 23, 21, sprite_info3
	; shadow underlay
	MENU_INFO_BOB   0,  8, 20, sprite_infu0
	MENU_INFO_BOB  53, 13, 19, sprite_infu1
	MENU_INFO_BOB 106, 18, 22, sprite_infu2
	MENU_INFO_BOB 159, 23, 21, sprite_infu3
	jsr sprite_finish
	jmp rainbow17

menu_info:
	jsr menu_info_redraw
	jsr ffade_in
@loop:
	jsr gamepad_poll_new
	beq :+
		SFX sfx_cursor_act
		jsr ffade_out
		jmp menu_title
	:
	jsr menu_info_redraw
	jsr ppu_update
	jmp @loop

menu_tracks_redraw:
	; update artist
	LOAD_NMT ($2000+6+(23*32))
	lda track
	jsr load_track_artist
	jsr ppu_string_buffer
	lda #$00
	ldx nmt_count ; fill with spaces to 20 characters wide
	:
		cpx #20
		bcs :+
		sta nmt_buffer, X
		inx
		jmp :-
	:
	stx nmt_count
	; draw track cursor
	jsr sprite_begin
	lda track
	asl
	asl
	asl
	clc
	adc #(6*8)
	tay
	ldx #(5*8)
	SPRITE sprite_tracks
	jsr sprite_finish
	jmp rainbow17

menu_tracks:
	; fill track names
	LOAD_NMT ($2000+6+(6*32))
	lda #0
	:
		pha
		jsr load_track_title_short
		jsr ppu_string
		lda nmt_addr+0
		clc
		adc #<32
		sta nmt_addr+0
		lda nmt_addr+1
		adc #>32
		sta nmt_addr+1
		pla
		clc
		adc #1
		cmp #TRACKS
		bcc :-
	jsr menu_tracks_redraw
	jsr ppu_update
	jsr ffade_in
@loop:
	jsr gamepad_poll_new
	;lda gamepad_new
	and #(PAD_R | PAD_D)
	beq :+
		lda track
		cmp #(TRACKS-1)
		bcs :+
		inc track
		SFX sfx_cursor_move
	:
	lda gamepad_new
	and #(PAD_L | PAD_U)
	beq :+
		lda track
		beq :+
		dec track
		SFX sfx_cursor_move
	:
	lda gamepad_new
	and #(PAD_SELECT)
	beq :+
		SFX sfx_cursor_act
		jsr ffade_out
		jmp menu_title
	:
	lda gamepad_new
	and #(PAD_B)
	beq :+
		lda #1
		sta nsf_looping
		jmp menu_tracks_play
	:
	lda gamepad_new
	and #(PAD_A | PAD_START)
	beq :+
		lda #0
		sta nsf_looping
		jmp menu_tracks_play
	:
	jsr menu_tracks_redraw
	jsr ppu_update
	jmp @loop

menu_tracks_play:
	jsr ffade_out
	lda #0
	sta sfx_on
	jmp menu_play

.macro SPRITENUM num, x_, y_
	lda num
	jsr load_sprite_num
	ldx #x_
	ldy #y_
	jsr sprite
.endmacro

menu_play_redraw:
	jsr sprite_begin
	SPRITENUM time_d0, 140, 144
	SPRITENUM time_d1, 132, 144
	SPRITENUM time_d2, 116, 144
	SPRITENUM time_d3, 108, 144
	SPRITEXY sprite_colon, 124, 144
	lda nsf_playing
	bne :+
		LOAD_PTR sprite_pause
		jmp @mode
	:
	lda nsf_looping
	beq :+
		LOAD_PTR sprite_loop
		jmp @mode
	:
		LOAD_PTR sprite_play
	;
@mode:
	ldx #124
	ldy #156
	jsr sprite
	jsr sprite_finish
	jmp rainbow17

menu_play:
	LOAD_NMT ($2000+6+(6*32))
	lda track
	jsr load_track_artist
	jsr ppu_string
	LOAD_NMT ($2000+6+(8*32))
	lda track
	jsr load_track_title
	jsr ppu_string
	jsr menu_play_restart_
	jsr menu_play_redraw
	jsr ffade_in
@loop:
	jsr gamepad_poll_new
	;lda gamepad_new
	and #(PAD_SELECT)
	beq :+
		jsr menu_play_stop_
		jmp menu_tracks
	:
	lda gamepad_new
	and #(PAD_B)
	beq :+
		lda #1
		sta nsf_looping
		lda nsf_playing
		bne :+
		lda paused
		bne @unpause
		jsr menu_play_restart_
	:
	lda gamepad_new
	and #(PAD_A)
	beq :+
		lda #0
		sta nsf_looping
		lda nsf_playing
		bne :+
		lda paused
		bne @unpause
		jsr menu_play_restart_
	:
	lda gamepad_new
	and #(PAD_START)
	beq @pause_end
		lda paused
		beq :+
		@unpause:
			; unpause
			lda #$0F
			sta $4015 ; re-enable channels
			lda #1
			sta nsf_playing
			lda #0
			sta paused
			jmp @pause_end
		:
		lda nsf_playing
		beq :+
			; pause
			lda #$00
			sta nsf_playing
			sta $4015 ; disable channels
			lda #1
			sta paused
			jmp @pause_end
		:
			; restart
			jsr menu_play_restart_
		;
	@pause_end:
	lda gamepad_new
	and #(PAD_L | PAD_U)
	beq @track_prev_end
		lda track
		bne :+
			jsr menu_play_restart_
			jmp @track_prev_end
		:
		jsr menu_play_stop_
		dec track
		jmp menu_play
	@track_prev_end:
	lda gamepad_new
	and #(PAD_R | PAD_D)
	beq :+
		lda track
		cmp #(TRACKS-1)
		bcs :+
		jsr menu_play_stop_
		inc track
		jmp menu_play
	:
	; auto-advance if track finished and not looping
	lda nsf_looping
	bne :+
	lda advance
	beq :+
	lda track
	cmp #(TRACKS-1)
	bcs :+
		jsr menu_play_stop_
		inc track
		jmp menu_play
	:
	; redraw and go to next frame
	jsr menu_play_redraw
	jsr ppu_update
	jmp @loop

menu_play_stop_:
	; silence and fade out
	lda #$00
	sta nsf_playing
	sta $4015
	jmp ffade_out

menu_play_restart_:
	lda #0
	sta paused
	ldx track
	jsr play_track
	rts

; end of file
