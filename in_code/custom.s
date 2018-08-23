; custom.s
;
; A basic set of menus to demonstrate how to implement them on top of the base layer.

.feature force_range ; required for negative values in .byte
.macpack longbranch

.include "../base.inc"
.export custom_main
.export custom_nmi

TRACKS = TRACK_ORDER_LENGTH

.include "../out_info/screen_enum.inc"

.segment "CUSTOM_ZP" : zeropage
; probably don't want to add any more ZP burden
; this is not high performance code anyway

.segment "CUSTOM_RAM"
gamepad_last: .res 1
gamepad_new:  .res 1
title_pos:    .res 1
track:        .res 1

.segment "CUSTOM"

custom_main:
	jsr sfx_setup
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
	beq :+
		; TODO
	:
	rts

sfx_play:
	; TODO
	rts

sfx_cursor_move: ; TODO
sfx_cursor_act: ; TODO

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

.macro SFX addr
	LOAD_PTR addr
	jsr sfx_play
.endmacro

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
; menu screens

menu_title_redraw:
	jsr sprite_begin
	lda title_pos
	asl
	asl
	asl
	asl
	clc
	adc #(15*8)
	tay
	ldx #(12*8)
	SPRITE sprite_title
	jsr sprite_finish
	jmp rainbow17

menu_title:
	lda #SCREEN_Title
	jsr load_screen
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
	lda #SCREEN_Info
	jsr load_screen
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
	lda #SCREEN_Tracks
	jsr load_screen
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

menu_play_redraw:
	jsr sprite_begin
	; TODO timer, play mode, etc.
	jsr sprite_finish
	rts

menu_play:
	lda #SCREEN_Play
	jsr load_screen
	LOAD_NMT ($2000+6+(6*32))
	lda track
	jsr load_track_artist
	jsr ppu_string
	LOAD_NMT ($2000+6+(8*32))
	lda track
	jsr load_track_title
	jsr ppu_string
	jsr menu_play_redraw
	jsr ffade_in
	ldx track
	jsr play_track
	:
	jmp :-

; end of file
