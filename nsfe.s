; nsfe.s
;
; usd to generate NSFe compilation

.import stub_init
.import ramp_nsf_play
.importzp TRACK_ORDER_LENGTH
.import BANK_STUB

.include "out_info/strings.inc"

.segment "NSFE_HEAD"
.byte "NSFE"

.segment "NSFE_INFO"
.import __NSFE_INFO_SIZE__
.dword __NSFE_INFO_SIZE__ - 8
.byte "INFO"
.word $8000 ; LOAD
.word stub_init ; INIT
.word ramp_nsf_play ; PLAY
.byte %00000010 ; PAL/NTSC bits
.byte %00000000 ; expansion bits
.byte TRACK_ORDER_LENGTH ; songs
.byte 0 ; starting song

.segment "NSFE_BANK"
.import __NSFE_BANK_SIZE__
.dword __NSFE_BANK_SIZE__ - 8
.byte "BANK"
.repeat 8
	.byte <BANK_STUB ; bankswitch init
.endrepeat
.assert <BANK_STUB = BANK_STUB, error, "Impossible BANK_STUB?"

.segment "NSFE_DATA"
.import __NSFS_SIZE__
.import __RAMP_CODE_SIZE__
.import __STUB_SIZE__
.dword __NSFS_SIZE__ + __RAMP_CODE_SIZE__ + __STUB_SIZE__
.byte "DATA"

.segment "NSFE_auth"
.import __NSFE_auth_SIZE__
.dword __NSFE_auth_SIZE__ - 8
.byte "auth"
.asciiz NSF_TITLE
.asciiz NSF_ARTIST
.asciiz NSF_COPYRIGHT
.asciiz "ZENSF"

.segment "NSFE_time"
.import __NSFE_time_SIZE__
.dword __NSFE_time_SIZE__ - 8
.byte "time"

.segment "NSFE_fade"
.import __NSFE_fade_SIZE__
.dword __NSFE_fade_SIZE__ - 8
.byte "fade"

.segment "NSFE_tlbl"
.import __NSFE_tlbl_SIZE__
.dword __NSFE_tlbl_SIZE__ - 8
.byte "tlbl"

.segment "NSFE_NEND"
.dword 0
.byte "NEND"

.include "out_info/nsfe.inc"

; end of file
