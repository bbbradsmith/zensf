; base.inc
;
; utilities and RAM variables from base.s
;
;
; https://github.com/bbbradsmith/zensf

; RAM

.globalzp nmi_count
.globalzp nmi_ready
.globalzp region
.globalzp gamepad
.globalzp ppu_ctrl
.globalzp ppu_mask
.globalzp ppu_scroll_x
.globalzp ppu_scroll_y
.globalzp oam_pos
.globalzp nmt_count ; bytes to load from nmt_buffer during NMI
.globalzp nmt_addr ; address to load nmt_buffer during NMI
.globalzp ptr
.globalzp temp

.global nmt_buffer ; nmt_count bytes to push to NMT at nmt_addr (next update0
.global oam
.global palette

.global time_fps
.global time_frame
.global time_seconds ; internal time (16-bit)
.global time_d0 ; display seconds
.global time_d1
.global time_d2 ; display minutes
.global time_d3
.global nsf_looping ; 0 to continue to next track, 1 to loop
.global nsf_track ; internal NSF track
.global advance ; 1 if track is finished playing, ready to advance

; constants

.globalzp TRACK_ORDER_LENGTH

PAD_A      = $01
PAD_B      = $02
PAD_SELECT = $04
PAD_START  = $08
PAD_U      = $10
PAD_D      = $20
PAD_L      = $40
PAD_R      = $80

; utilities

.global play_track ; X = track
.global gamepad_poll ; result in A/gamepad, DPCM-safe
.global ppu_off
.global ppu_on
.global ppu_update
.global ppu_skip
.global ppu_skip_frames ; X = frames to skip
.global ppu_string ; nmt_addr, ptr - immediate string to NMT
.global ppu_string_buffer ; ptr - string to nmt_buffer
.global sprite_begin ; call before adding sprites
.global sprite_finish ; call when finished adding sprites
.global sprite ; ptr, X, Y - add sprite (data list of x,y,tile,attrib, ends with x=128)
.global fade_out ; X=speed (0 fastest), fades out, PPU off (clobbers nmt_buffer 32-64, $0D column forbidden)
.global fade_in ; X=speed (0 fastest), fades in, PPU on (clobbers nmt_buffer 32-64, $0D column forbidden)
.global load_screen ; A = screen from screen_enums.inc
.global load_screen_aux ; A = screen from screen_enums.inc, loads only nametable to location $2800
.global load_track_title ; A = track, out to ptr
.global load_track_title_short ; A = track, out to ptr
.global load_track_artist ; A = track, out to ptr

; end of file
