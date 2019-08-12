.include "../mod.inc"
.segment "MF000"

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-23 02:19:31
; Input file: out_src\10_15.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L0957           := $0957
L56B5           := $56B5
LEFC5           := $EFC5
; ----------------------------------------------------------------------------
        beq     LF041                           ; F000 F0 3F                    .?
        brk                                     ; F002 00                       .
        cpx     #$FF                            ; F003 E0 FF                    ..
        .byte   $0F                             ; F005 0F                       .
        cpy     #$0F                            ; F006 C0 0F                    ..
        .byte   $FC                             ; F008 FC                       .
        .byte   $EF                             ; F009 EF                       .
        .byte   $07                             ; F00A 07                       .
        brk                                     ; F00B 00                       .
        inc     a:$0F,x                         ; F00C FE 0F 00                 ...
        cpy     #$3F                            ; F00F C0 3F                    .?
        sed                                     ; F011 F8                       .
        .byte   $1F                             ; F012 1F                       .
        brk                                     ; F013 00                       .
        sed                                     ; F014 F8                       .
        .byte   $FF                             ; F015 FF                       .
        .byte   $07                             ; F016 07                       .
        beq     LF028                           ; F017 F0 0F                    ..
        inc     $03FF,x                         ; F019 FE FF 03                 ...
        brk                                     ; F01C 00                       .
        .byte   $FF                             ; F01D FF                       .
        .byte   $03                             ; F01E 03                       .
        brk                                     ; F01F 00                       .
        cpy     #$0F                            ; F020 C0 0F                    ..
        .byte   $FC                             ; F022 FC                       .
        .byte   $0F                             ; F023 0F                       .
        brk                                     ; F024 00                       .
        .byte   $FC                             ; F025 FC                       .
        .byte   $FF                             ; F026 FF                       .
        .byte   $03                             ; F027 03                       .
LF028:  .byte   $FC                             ; F028 FC                       .
        .byte   $87                             ; F029 87                       .
        .byte   $FF                             ; F02A FF                       .
        .byte   $FF                             ; F02B FF                       .
        brk                                     ; F02C 00                       .
        .byte   $80                             ; F02D 80                       .
        .byte   $FF                             ; F02E FF                       .
        brk                                     ; F02F 00                       .
        brk                                     ; F030 00                       .
        cpx     #$03                            ; F031 E0 03                    ..
        inc     a:$07,x                         ; F033 FE 07 00                 ...
        .byte   $FF                             ; F036 FF                       .
        .byte   $FF                             ; F037 FF                       .
        .byte   $03                             ; F038 03                       .
        inc     LFFC7,x                         ; F039 FE C7 FF                 ...
        asl     $C000,x                         ; F03C 1E 00 C0                 ...
        .byte   $FF                             ; F03F FF                       .
        brk                                     ; F040 00                       .
LF041:  brk                                     ; F041 00                       .
;        beq     LEFC5                           ; F042 F0 81                    ..
.byte $F0, $81 ; mod range error
        .byte   $FF                             ; F044 FF                       .
        .byte   $03                             ; F045 03                       .
        cpy     #$FF                            ; F046 C0 FF                    ..
        .byte   $FF                             ; F048 FF                       .
        .byte   $80                             ; F049 80                       .
        .byte   $FF                             ; F04A FF                       .
        sbc     ($7F,x)                         ; F04B E1 7F                    ..
        asl     $E000                           ; F04D 0E 00 E0                 ...
        .byte   $3F                             ; F050 3F                       ?
        brk                                     ; F051 00                       .
        brk                                     ; F052 00                       .
        .byte   $7C                             ; F053 7C                       |
        cpy     #$FF                            ; F054 C0 FF                    ..
        .byte   $03                             ; F056 03                       .
        .byte   $F0                             ; F057 F0                       .
LF058:  .byte   $FF                             ; F058 FF                       .
        .byte   $7F                             ; F059 7F                       .
        cpy     #$FF                            ; F05A C0 FF                    ..
        sed                                     ; F05C F8                       .
        .byte   $4F                             ; F05D 4F                       O
        ora     $00                             ; F05E 05 00                    ..
        beq     LF081                           ; F060 F0 1F                    ..
        brk                                     ; F062 00                       .
        brk                                     ; F063 00                       .
        rol     LFFF0,x                         ; F064 3E F0 FF                 >..
        brk                                     ; F067 00                       .
        .byte   $FC                             ; F068 FC                       .
        .byte   $FF                             ; F069 FF                       .
        .byte   $3F                             ; F06A 3F                       ?
        beq     LF0EC                           ; F06B F0 7F                    ..
        sed                                     ; F06D F8                       .
        .byte   $93                             ; F06E 93                       .
        ora     ($00,x)                         ; F06F 01 00                    ..
        sed                                     ; F071 F8                       .
        .byte   $07                             ; F072 07                       .
        brk                                     ; F073 00                       .
        .byte   $80                             ; F074 80                       .
        .byte   $1F                             ; F075 1F                       .
        sed                                     ; F076 F8                       .
        .byte   $7F                             ; F077 7F                       .
        brk                                     ; F078 00                       .
        .byte   $FF                             ; F079 FF                       .
        .byte   $FF                             ; F07A FF                       .
        .byte   $1F                             ; F07B 1F                       .
        sed                                     ; F07C F8                       .
        .byte   $3F                             ; F07D 3F                       ?
        .byte   $FC                             ; F07E FC                       .
        ldy     $00                             ; F07F A4 00                    ..
LF081:  brk                                     ; F081 00                       .
        inc     a:$01,x                         ; F082 FE 01 00                 ...
        cpx     #$0B                            ; F085 E0 0B                    ..
        sbc     $C03F,x                         ; F087 FD 3F C0                 .?.
        .byte   $FF                             ; F08A FF                       .
        .byte   $FF                             ; F08B FF                       .
        .byte   $0F                             ; F08C 0F                       .
        .byte   $FC                             ; F08D FC                       .
        .byte   $87                             ; F08E 87                       .
        .byte   $7A                             ; F08F 7A                       z
        lsr     a                               ; F090 4A                       J
        brk                                     ; F091 00                       .
        brk                                     ; F092 00                       .
        .byte   $FF                             ; F093 FF                       .
        brk                                     ; F094 00                       .
        brk                                     ; F095 00                       .
        beq     LF0BB                           ; F096 F0 23                    .#
        .byte   $FF                             ; F098 FF                       .
        .byte   $1F                             ; F099 1F                       .
        cpx     #$FF                            ; F09A E0 FF                    ..
        .byte   $FF                             ; F09C FF                       .
        .byte   $03                             ; F09D 03                       .
        .byte   $FF                             ; F09E FF                       .
        .byte   $03                             ; F09F 03                       .
        .byte   $BB                             ; F0A0 BB                       .
        .byte   $14                             ; F0A1 14                       .
        brk                                     ; F0A2 00                       .
        .byte   $80                             ; F0A3 80                       .
        .byte   $3F                             ; F0A4 3F                       ?
        brk                                     ; F0A5 00                       .
        brk                                     ; F0A6 00                       .
        .byte   $FB                             ; F0A7 FB                       .
        ldx     #$FF                            ; F0A8 A2 FF                    ..
        .byte   $07                             ; F0AA 07                       .
        .byte   $F4                             ; F0AB F4                       .
        .byte   $FF                             ; F0AC FF                       .
        .byte   $FF                             ; F0AD FF                       .
        sta     ($FF,x)                         ; F0AE 81 FF                    ..
        jsr     L0957                           ; F0B0 20 57 09                  W.
        brk                                     ; F0B3 00                       .
        cpx     #$4F                            ; F0B4 E0 4F                    .O
        brk                                     ; F0B6 00                       .
        .byte   $80                             ; F0B7 80                       .
        ldx     LFFD4,y                         ; F0B8 BE D4 FF                 ...
LF0BB:  sta     ($FA,x)                         ; F0BB 81 FA                    ..
        .byte   $FF                             ; F0BD FF                       .
        .byte   $7F                             ; F0BE 7F                       .
        rts                                     ; F0BF 60                       `

; ----------------------------------------------------------------------------
        .byte   $7F                             ; F0C0 7F                       .
        pha                                     ; F0C1 48                       H
        .byte   $AB                             ; F0C2 AB                       .
        .byte   $04                             ; F0C3 04                       .
        brk                                     ; F0C4 00                       .
        beq     LF0DE                           ; F0C5 F0 17                    ..
        brk                                     ; F0C7 00                       .
        rts                                     ; F0C8 60                       `

; ----------------------------------------------------------------------------
        .byte   $B7                             ; F0C9 B7                       .
        .byte   $F4                             ; F0CA F4                       .
        .byte   $7F                             ; F0CB 7F                       .
        sta     ($FE,x)                         ; F0CC 81 FE                    ..
        .byte   $FF                             ; F0CE FF                       .
        .byte   $1F                             ; F0CF 1F                       .
        .byte   $D4                             ; F0D0 D4                       .
        .byte   $9F                             ; F0D1 9F                       .
        bvc     LF0FF                           ; F0D2 50 2B                    P+
        ora     ($00,x)                         ; F0D4 01 00                    ..
        .byte   $FC                             ; F0D6 FC                       .
        ora     $00                             ; F0D7 05 00                    ..
        cld                                     ; F0D9 D8                       .
        lda     $5FFA                           ; F0DA AD FA 5F                 .._
        pha                                     ; F0DD 48                       H
LF0DE:  .byte   $FF                             ; F0DE FF                       .
        .byte   $FF                             ; F0DF FF                       .
        .byte   $17                             ; F0E0 17                       .
        .byte   $F4                             ; F0E1 F4                       .
        .byte   $2B                             ; F0E2 2B                       +
        .byte   $52                             ; F0E3 52                       R
        eor     $04,x                           ; F0E4 55 04                    U.
        brk                                     ; F0E6 00                       .
        ldx     a:$02,y                         ; F0E7 BE 02 00                 ...
        lda     $AB,x                           ; F0EA B5 AB                    ..
LF0EC:  .byte   $FA                             ; F0EC FA                       .
        .byte   $AF                             ; F0ED AF                       .
        tay                                     ; F0EE A8                       .
        .byte   $FF                             ; F0EF FF                       .
        .byte   $FF                             ; F0F0 FF                       .
        sta     $DA                             ; F0F1 85 DA                    ..
        .byte   $4B                             ; F0F3 4B                       K
        .byte   $54                             ; F0F4 54                       T
        and     $01                             ; F0F5 25 01                    %.
        brk                                     ; F0F7 00                       .
        .byte   $5F                             ; F0F8 5F                       _
        ora     ($40,x)                         ; F0F9 01 40                    .@
        .byte   $DB                             ; F0FB DB                       .
        tax                                     ; F0FC AA                       .
        .byte   $FE                             ; F0FD FE                       .
        .byte   $2D                             ; F0FE 2D                       -
LF0FF:  sbc     #$F7                            ; F0FF E9 F7                    ..
        .byte   $FF                             ; F101 FF                       .
        lda     ($BA,x)                         ; F102 A1 BA                    ..
        ora     $55,x                           ; F104 15 55                    .U
        lsr     a                               ; F106 4A                       J
        brk                                     ; F107 00                       .
        ldy     #$57                            ; F108 A0 57                    .W
        brk                                     ; F10A 00                       .
        tay                                     ; F10B A8                       .
        ldx     $6A,y                           ; F10C B6 6A                    .j
        .byte   $F7                             ; F10E F7                       .
        .byte   $2B                             ; F10F 2B                       +
        lda     $FF,x                           ; F110 B5 FF                    ..
        .byte   $BF                             ; F112 BF                       .
        ldy     $76                             ; F113 A4 76                    .v
        and     $A9                             ; F115 25 A9                    %.
        .byte   $12                             ; F117 12                       .
        brk                                     ; F118 00                       .
        pla                                     ; F119 68                       h
        .byte   $17                             ; F11A 17                       .
        brk                                     ; F11B 00                       .
        lda     #$AD                            ; F11C A9 AD                    ..
        cmp     $7E,x                           ; F11E D5 7E                    .~
        .byte   $2B                             ; F120 2B                       +
        sbc     $2FFF                           ; F121 ED FF 2F                 ../
        lda     #$AE                            ; F124 A9 AE                    ..
        lsr     a                               ; F126 4A                       J
        tax                                     ; F127 AA                       .
        .byte   $44                             ; F128 44                       D
        brk                                     ; F129 00                       .
        .byte   $D4                             ; F12A D4                       .
        lsr     a                               ; F12B 4A                       J
        brk                                     ; F12C 00                       .
        eor     $5B,x                           ; F12D 55 5B                    U[
        lda     $77,x                           ; F12F B5 77                    .w
        .byte   $4B                             ; F131 4B                       K
        .byte   $7B                             ; F132 7B                       {
        .byte   $FF                             ; F133 FF                       .
        .byte   $57                             ; F134 57                       W
        tax                                     ; F135 AA                       .
        lda     $4A94                           ; F136 AD 94 4A                 ..J
        ora     #$80                            ; F139 09 80                    ..
        ldy     $0A,x                           ; F13B B4 0A                    ..
        jsr     L56B5                           ; F13D 20 B5 56                  .V
        sbc     $AADE                           ; F140 ED DE AA                 ...
        .byte   $EE                             ; F143 EE                       .
LF144:  .byte   $FF                             ; F144 FF                       .
        sta     $AA,x                           ; F145 95 AA                    ..
        and     $25,x                           ; F147 35 25                    5%
        sta     $02,x                           ; F149 95 02                    ..
        sty     $B4                             ; F14B 84 B4                    ..
        .byte   $42                             ; F14D 42                       B
        ldy     #$6A                            ; F14E A0 6A                    .j
        lda     $DA,x                           ; F150 B5 DA                    ..
        .byte   $DB                             ; F152 DB                       .
        tax                                     ; F153 AA                       .
        .byte   $FB                             ; F154 FB                       .
        .byte   $DF                             ; F155 DF                       .
        rol     a                               ; F156 2A                       *
        lda     $4A55                           ; F157 AD 55 4A                 .UJ
        and     $09                             ; F15A 25 09                    %.
        sty     $AA                             ; F15C 84 AA                    ..
        php                                     ; F15E 08                       .
        sta     ($56),y                         ; F15F 91 56                    .V
        .byte   $AB                             ; F161 AB                       .
        ror     $B7,x                           ; F162 76 B7                    v.
        ror     a                               ; F164 6A                       j
        .byte   $F7                             ; F165 F7                       .
        .byte   $DF                             ; F166 DF                       .
        lsr     a                               ; F167 4A                       J
        lda     $5295                           ; F168 AD 95 52                 ..R
        lsr     a                               ; F16B 4A                       J
        .byte   $02                             ; F16C 02                       .
        .byte   $89                             ; F16D 89                       .
        rol     a                               ; F16E 2A                       *
        ora     ($52),y                         ; F16F 11 52                    .R
        lda     $6A,x                           ; F171 B5 6A                    .j
        sbc     $D6B6                           ; F173 ED B6 D6                 ...
        sbc     $555D,x                         ; F176 FD 5D 55                 .]U
        lda     $2A,x                           ; F179 B5 2A                    .*
        lda     $92                             ; F17B A5 92                    ..
        php                                     ; F17D 08                       .
        sta     ($2A),y                         ; F17E 91 2A                    .*
        .byte   $22                             ; F180 22                       "
        lsr     a                               ; F181 4A                       J
        .byte   $AB                             ; F182 AB                       .
        lsr     $BB,x                           ; F183 56 BB                    V.
        lda     LFDB5                           ; F185 AD B5 FD                 ...
        .byte   $5B                             ; F188 5B                       [
        eor     $B5,x                           ; F189 55 B5                    U.
        lsr     a                               ; F18B 4A                       J
        lda     #$24                            ; F18C A9 24                    .$
        eor     ($91,x)                         ; F18E 41 91                    A.
        lsr     a                               ; F190 4A                       J
        .byte   $42                             ; F191 42                       B
        tax                                     ; F192 AA                       .
        .byte   $5A                             ; F193 5A                       Z
        lda     $76,x                           ; F194 B5 76                    .v
        .byte   $6B                             ; F196 6B                       k
        adc     $ABDF                           ; F197 6D DF AB                 m..
        tax                                     ; F19A AA                       .
        eor     $95,x                           ; F19B 55 95                    U.
        lsr     a                               ; F19D 4A                       J
        eor     #$44                            ; F19E 49 44                    ID
        .byte   $92                             ; F1A0 92                       .
        lsr     a                               ; F1A1 4A                       J
        .byte   $44                             ; F1A2 44                       D
        lda     #$55                            ; F1A3 A9 55                    .U
        .byte   $AB                             ; F1A5 AB                       .
        adc     $5B5B                           ; F1A6 6D 5B 5B                 m[[
        .byte   $BF                             ; F1A9 BF                       .
        lda     $55AA                           ; F1AA AD AA 55                 ..U
        lda     $54                             ; F1AD A5 54                    .T
        .byte   $92                             ; F1AF 92                       .
        bvc     LF144                           ; F1B0 50 92                    P.
        .byte   $92                             ; F1B2 92                       .
        .byte   $44                             ; F1B3 44                       D
        eor     $B5,x                           ; F1B4 55 B5                    U.
        .byte   $5A                             ; F1B6 5A                       Z
        .byte   $DB                             ; F1B7 DB                       .
        dec     $D6,x                           ; F1B8 D6 D6                    ..
        .byte   $BB                             ; F1BA BB                       .
        lda     $AA,x                           ; F1BB B5 AA                    ..
        .byte   $5A                             ; F1BD 5A                       Z
        rol     a                               ; F1BE 2A                       *
        lda     $24                             ; F1BF A5 24                    .$
        .byte   $52                             ; F1C1 52                       R
        sty     $92,x                           ; F1C2 94 92                    ..
        plp                                     ; F1C4 28                       (
        cmp     $AA,x                           ; F1C5 D5 AA                    ..
        dec     $B6,x                           ; F1C7 D6 B6                    ..
        lda     $B6,x                           ; F1C9 B5 B6                    ..
        .byte   $B7                             ; F1CB B7                       .
        eor     $AD,x                           ; F1CC 55 AD                    U.
        tax                                     ; F1CE AA                       .
        .byte   $52                             ; F1CF 52                       R
        and     #$49                            ; F1D0 29 49                    )I
        sty     $94,x                           ; F1D2 94 94                    ..
        bit     $A5                             ; F1D4 24 A5                    $.
        tax                                     ; F1D6 AA                       .
        ror     a                               ; F1D7 6A                       j
        lda     $AD,x                           ; F1D8 B5 AD                    ..
        lda     $75,x                           ; F1DA B5 75                    .u
        .byte   $B7                             ; F1DC B7                       .
        eor     $D5,x                           ; F1DD 55 D5                    U.
        rol     a                               ; F1DF 2A                       *
        sta     $4A,x                           ; F1E0 95 4A                    .J
        .byte   $92                             ; F1E2 92                       .
        sty     $94,x                           ; F1E3 94 94                    ..
        bit     $A5                             ; F1E5 24 A5                    $.
        tax                                     ; F1E7 AA                       .
        eor     $6B,x                           ; F1E8 55 6B                    Uk
        .byte   $6B                             ; F1EA 6B                       k
        adc     $B6ED                           ; F1EB 6D ED B6                 m..
        lsr     $55,x                           ; F1EE 56 55                    VU
        .byte   $53                             ; F1F0 53                       S
        lda     $52                             ; F1F1 A5 52                    .R
        .byte   $12                             ; F1F3 12                       .
        lda     $A4                             ; F1F4 A5 A4                    ..
        bit     $95                             ; F1F6 24 95                    $.
        .byte   $5A                             ; F1F8 5A                       Z
        cmp     $5A,x                           ; F1F9 D5 5A                    .Z
        .byte   $5B                             ; F1FB 5B                       [
        .byte   $6B                             ; F1FC 6B                       k
        cmp     $56AD,x                         ; F1FD DD AD 56                 ..V
        eor     $55,x                           ; F200 55 55                    UU
        lda     #$94                            ; F202 A9 94                    ..
        bit     $25                             ; F204 24 25                    $%
        and     $25                             ; F206 25 25                    %%
        eor     $55,x                           ; F208 55 55                    UU
        lda     $D6,x                           ; F20A B5 D6                    ..
        .byte   $DA                             ; F20C DA                       .
        .byte   $5A                             ; F20D 5A                       Z
        .byte   $BB                             ; F20E BB                       .
        lda     $555A                           ; F20F AD 5A 55                 .ZU
        eor     $2A,x                           ; F212 55 2A                    U*
        and     $49                             ; F214 25 49                    %I
        and     $29                             ; F216 25 29                    %)
        and     #$55                            ; F218 29 55                    )U
        eor     $AD,x                           ; F21A 55 AD                    U.
        ldx     $D6,y                           ; F21C B6 D6                    ..
        lsr     $B7,x                           ; F21E 56 B7                    V.
        lda     $556A                           ; F220 AD 6A 55                 .jU
        lda     $4A                             ; F223 A5 4A                    .J
        and     #$49                            ; F225 29 49                    )I
        eor     #$49                            ; F227 49 49                    II
        and     #$55                            ; F229 29 55                    )U
        cmp     $AA,x                           ; F22B D5 AA                    ..
        lda     $D6B5                           ; F22D AD B5 D6                 ...
        ldx     $AD,y                           ; F230 B6 AD                    ..
        tax                                     ; F232 AA                       .
        eor     $A9,x                           ; F233 55 A9                    U.
        .byte   $54                             ; F235 54                       T
        lsr     a                               ; F236 4A                       J
        .byte   $52                             ; F237 52                       R
        eor     #$49                            ; F238 49 49                    II
        and     #$55                            ; F23A 29 55                    )U
        lda     $6D6A                           ; F23C AD 6A 6D                 .jm
        lda     $6DD5                           ; F23F AD D5 6D                 ..m
        lda     $AA,x                           ; F242 B5 AA                    ..
        tax                                     ; F244 AA                       .
        rol     a                               ; F245 2A                       *
        sta     $92,x                           ; F246 95 92                    ..
        .byte   $52                             ; F248 52                       R
        lsr     a                               ; F249 4A                       J
        lsr     a                               ; F24A 4A                       J
        lda     #$AA                            ; F24B A9 AA                    ..
        tax                                     ; F24D AA                       .
        lsr     $6B,x                           ; F24E 56 6B                    Vk
        adc     $6DB5                           ; F250 6D B5 6D                 m.m
        lda     $AA,x                           ; F253 B5 AA                    ..
        tax                                     ; F255 AA                       .
        lsr     a                               ; F256 4A                       J
        lda     $94                             ; F257 A5 94                    ..
        .byte   $54                             ; F259 54                       T
        .byte   $52                             ; F25A 52                       R
        lsr     a                               ; F25B 4A                       J
        lda     #$AA                            ; F25C A9 AA                    ..
        tax                                     ; F25E AA                       .
        cmp     $5A,x                           ; F25F D5 5A                    .Z
        .byte   $6B                             ; F261 6B                       k
        lda     $6D,x                           ; F262 B5 6D                    .m
        lda     $AA,x                           ; F264 B5 AA                    ..
        tax                                     ; F266 AA                       .
        .byte   $52                             ; F267 52                       R
        lda     #$24                            ; F268 A9 24                    .$
        sta     $52,x                           ; F26A 95 52                    .R
        .byte   $52                             ; F26C 52                       R
        lda     #$AA                            ; F26D A9 AA                    ..
        ror     a                               ; F26F 6A                       j
        lda     $D6,x                           ; F270 B5 D6                    ..
        .byte   $5A                             ; F272 5A                       Z
        adc     $D56B                           ; F273 6D 6B D5                 mk.
        tax                                     ; F276 AA                       .
        rol     a                               ; F277 2A                       *
        eor     $2A,x                           ; F278 55 2A                    U*
        and     #$95                            ; F27A 29 95                    ).
        sty     $52,x                           ; F27C 94 52                    .R
        lda     #$AA                            ; F27E A9 AA                    ..
        lsr     $AD,x                           ; F280 56 AD                    V.
        lda     $56,x                           ; F282 B5 56                    .V
        adc     $556B                           ; F284 6D 6B 55                 mkU
        .byte   $AB                             ; F287 AB                       .
        .byte   $52                             ; F288 52                       R
        sta     $4A,x                           ; F289 95 4A                    .J
        eor     #$95                            ; F28B 49 95                    I.
        sty     $52,x                           ; F28D 94 52                    .R
        lda     $5A                             ; F28F A5 5A                    .Z
        eor     $6B,x                           ; F291 55 6B                    Uk
        lda     $56,x                           ; F293 B5 56                    .V
        .byte   $5B                             ; F295 5B                       [
        .byte   $6B                             ; F296 6B                       k
        eor     $55,x                           ; F297 55 55                    UU
        eor     $A5,x                           ; F299 55 A5                    U.
        .byte   $52                             ; F29B 52                       R
        lsr     a                               ; F29C 4A                       J
        lda     $94                             ; F29D A5 94                    ..
        .byte   $52                             ; F29F 52                       R
        eor     $55,x                           ; F2A0 55 55                    UU
        cmp     $5A,x                           ; F2A2 D5 5A                    .Z
        lda     $DB55                           ; F2A4 AD 55 DB                 .U.
        ror     a                               ; F2A7 6A                       j
        eor     $55,x                           ; F2A8 55 55                    UU
        eor     $AA,x                           ; F2AA 55 AA                    U.
        sty     $52,x                           ; F2AC 94 52                    .R
        and     $A5                             ; F2AE 25 A5                    %.
        .byte   $52                             ; F2B0 52                       R
        eor     $55,x                           ; F2B1 55 55                    UU
        lda     $6B5A                           ; F2B3 AD 5A 6B                 .Zk
        cmp     $DA,x                           ; F2B6 D5 DA                    ..
        tax                                     ; F2B8 AA                       .
        eor     $55,x                           ; F2B9 55 55                    UU
        sta     $2A,x                           ; F2BB 95 2A                    .*
        lda     $54                             ; F2BD A5 54                    .T
        and     #$A5                            ; F2BF 29 A5                    ).
        .byte   $52                             ; F2C1 52                       R
        eor     $55,x                           ; F2C2 55 55                    UU
        .byte   $AB                             ; F2C4 AB                       .
        dec     $6A,x                           ; F2C5 D6 6A                    .j
        cmp     $D6,x                           ; F2C7 D5 D6                    ..
        tax                                     ; F2C9 AA                       .
        lsr     $55,x                           ; F2CA 56 55                    VU
        lda     #$4A                            ; F2CC A9 4A                    .J
        lda     $54                             ; F2CE A5 54                    .T
        and     #$A5                            ; F2D0 29 A5                    ).
        lsr     a                               ; F2D2 4A                       J
        eor     $AD,x                           ; F2D3 55 AD                    U.
        tax                                     ; F2D5 AA                       .
        lda     $5A,x                           ; F2D6 B5 5A                    .Z
        lda     $D6,x                           ; F2D8 B5 D6                    ..
        tax                                     ; F2DA AA                       .
        .byte   $5A                             ; F2DB 5A                       Z
        sta     $AA,x                           ; F2DC 95 AA                    ..
        .byte   $52                             ; F2DE 52                       R
        and     #$55                            ; F2DF 29 55                    )U
        lsr     a                               ; F2E1 4A                       J
        lda     $AA                             ; F2E2 A5 AA                    ..
        ldy     $AA,x                           ; F2E4 B4 AA                    ..
        .byte   $5A                             ; F2E6 5A                       Z
        lda     $56,x                           ; F2E7 B5 56                    .V
        lda     $D6,x                           ; F2E9 B5 D6                    ..
        tax                                     ; F2EB AA                       .
        tax                                     ; F2EC AA                       .
        tax                                     ; F2ED AA                       .
        rol     a                               ; F2EE 2A                       *
        eor     $4A,x                           ; F2EF 55 4A                    UJ
        eor     $4A,x                           ; F2F1 55 4A                    UJ
        lda     $AA                             ; F2F3 A5 AA                    ..
        tax                                     ; F2F5 AA                       .
        tax                                     ; F2F6 AA                       .
        lsr     $AD,x                           ; F2F7 56 AD                    V.
        lsr     $AD,x                           ; F2F9 56 AD                    V.
        eor     $AB,x                           ; F2FB 55 AB                    U.
        tax                                     ; F2FD AA                       .
        tax                                     ; F2FE AA                       .
        lsr     a                               ; F2FF 4A                       J
        sta     $4A,x                           ; F300 95 4A                    .J
        eor     $4A,x                           ; F302 55 4A                    UJ
        lda     $AA                             ; F304 A5 AA                    ..
        tax                                     ; F306 AA                       .
        tax                                     ; F307 AA                       .
        eor     $AB,x                           ; F308 55 AB                    U.
        eor     $AD,x                           ; F30A 55 AD                    U.
        eor     $AB,x                           ; F30C 55 AB                    U.
        tax                                     ; F30E AA                       .
        tax                                     ; F30F AA                       .
        .byte   $52                             ; F310 52                       R
        lda     $52                             ; F311 A5 52                    .R
        sta     $4A,x                           ; F313 95 4A                    .J
        lda     $AA                             ; F315 A5 AA                    ..
        tax                                     ; F317 AA                       .
        ror     a                               ; F318 6A                       j
        cmp     $6A,x                           ; F319 D5 6A                    .j
        eor     $AD,x                           ; F31B 55 AD                    U.
        eor     $AB,x                           ; F31D 55 AB                    U.
        tax                                     ; F31F AA                       .
        rol     a                               ; F320 2A                       *
        eor     $A9,x                           ; F321 55 A9                    U.
        .byte   $54                             ; F323 54                       T
        sta     $52,x                           ; F324 95 52                    .R
        lda     $AA                             ; F326 A5 AA                    ..
        tax                                     ; F328 AA                       .
        lsr     $B5,x                           ; F329 56 B5                    V.
        ror     a                               ; F32B 6A                       j
        eor     $6B,x                           ; F32C 55 6B                    Uk
        eor     $AB,x                           ; F32E 55 AB                    U.
        tax                                     ; F330 AA                       .
        lsr     a                               ; F331 4A                       J
        eor     $AA,x                           ; F332 55 AA                    U.
        .byte   $54                             ; F334 54                       T
        lda     $52                             ; F335 A5 52                    .R
        lda     $AA                             ; F337 A5 AA                    ..
        tax                                     ; F339 AA                       .
        eor     $B5,x                           ; F33A 55 B5                    U.
        .byte   $5A                             ; F33C 5A                       Z
        eor     $6B,x                           ; F33D 55 6B                    Uk
        eor     $AB,x                           ; F33F 55 AB                    U.
        tax                                     ; F341 AA                       .
        .byte   $52                             ; F342 52                       R
        eor     $2A,x                           ; F343 55 2A                    U*
        eor     $A5,x                           ; F345 55 A5                    U.
        .byte   $52                             ; F347 52                       R
        sta     $AA,x                           ; F348 95 AA                    ..
        ror     a                               ; F34A 6A                       j
        eor     $AD,x                           ; F34B 55 AD                    U.
        lsr     $D5,x                           ; F34D 56 D5                    V.
        ror     a                               ; F34F 6A                       j
        eor     $AD,x                           ; F350 55 AD                    U.
        rol     a                               ; F352 2A                       *
        eor     $95,x                           ; F353 55 95                    U.
        lsr     a                               ; F355 4A                       J
        eor     $A9,x                           ; F356 55 A9                    U.
        .byte   $54                             ; F358 54                       T
        eor     $AA,x                           ; F359 55 AA                    U.
        eor     $55,x                           ; F35B 55 55                    UU
        .byte   $AB                             ; F35D AB                       .
        lsr     $D5,x                           ; F35E 56 D5                    V.
        ror     a                               ; F360 6A                       j
        eor     $D5,x                           ; F361 55 D5                    U.
        .byte   $54                             ; F363 54                       T
        eor     $A5,x                           ; F364 55 A5                    U.
        lsr     a                               ; F366 4A                       J
        eor     $A9,x                           ; F367 55 A9                    U.
        .byte   $54                             ; F369 54                       T
        eor     $55,x                           ; F36A 55 55                    UU
        eor     $D5,x                           ; F36C 55 D5                    U.
        tax                                     ; F36E AA                       .
        eor     $B5,x                           ; F36F 55 B5                    U.
        ror     a                               ; F371 6A                       j
        eor     $55,x                           ; F372 55 55                    UU
        eor     $55,x                           ; F374 55 55                    UU
        lda     #$52                            ; F376 A9 52                    .R
        eor     $A9,x                           ; F378 55 A9                    U.
        .byte   $54                             ; F37A 54                       T
        eor     $55,x                           ; F37B 55 55                    UU
        eor     $B5,x                           ; F37D 55 B5                    U.
        ror     a                               ; F37F 6A                       j
        eor     $B5,x                           ; F380 55 B5                    U.
        .byte   $5A                             ; F382 5A                       Z
        eor     $55,x                           ; F383 55 55                    UU
        eor     $55,x                           ; F385 55 55                    UU
        tax                                     ; F387 AA                       .
        .byte   $54                             ; F388 54                       T
        eor     $AA,x                           ; F389 55 AA                    U.
        .byte   $54                             ; F38B 54                       T
        eor     $55,x                           ; F38C 55 55                    UU
        eor     $AD,x                           ; F38E 55 AD                    U.
        ror     a                               ; F390 6A                       j
        eor     $B5,x                           ; F391 55 B5                    U.
        .byte   $5A                             ; F393 5A                       Z
        eor     $55,x                           ; F394 55 55                    UU
        eor     $95,x                           ; F396 55 95                    U.
        tax                                     ; F398 AA                       .
        .byte   $54                             ; F399 54                       T
        eor     $AA,x                           ; F39A 55 AA                    U.
        .byte   $54                             ; F39C 54                       T
        eor     $55,x                           ; F39D 55 55                    UU
        eor     $AB,x                           ; F39F 55 AB                    U.
        .byte   $5A                             ; F3A1 5A                       Z
        eor     $AD,x                           ; F3A2 55 AD                    U.
        .byte   $5A                             ; F3A4 5A                       Z
        eor     $55,x                           ; F3A5 55 55                    UU
        eor     $A5,x                           ; F3A7 55 A5                    U.
        rol     a                               ; F3A9 2A                       *
        eor     $95,x                           ; F3AA 55 95                    U.
        tax                                     ; F3AC AA                       .
        .byte   $54                             ; F3AD 54                       T
        eor     $55,x                           ; F3AE 55 55                    UU
        cmp     $AA,x                           ; F3B0 D5 AA                    ..
        lsr     $55,x                           ; F3B2 56 55                    VU
        lda     $555A                           ; F3B4 AD 5A 55                 .ZU
        eor     $55,x                           ; F3B7 55 55                    UU
        lda     #$4A                            ; F3B9 A9 4A                    .J
        eor     $95,x                           ; F3BB 55 95                    U.
        tax                                     ; F3BD AA                       .
        .byte   $54                             ; F3BE 54                       T
        eor     $55,x                           ; F3BF 55 55                    UU
        .byte   $AD                             ; F3C1 AD                       .
        tax                                     ; F3C2 AA                       .
LF3C3:  eor     $55,x                           ; F3C3 55 55                    UU
        .byte   $AB                             ; F3C5 AB                       .
        .byte   $5A                             ; F3C6 5A                       Z
        eor     $55,x                           ; F3C7 55 55                    UU
        sta     $AA,x                           ; F3C9 95 AA                    ..
        lsr     a                               ; F3CB 4A                       J
        eor     $95,x                           ; F3CC 55 95                    U.
        tax                                     ; F3CE AA                       .
        .byte   $54                             ; F3CF 54                       T
        eor     $55,x                           ; F3D0 55 55                    UU
        .byte   $AB                             ; F3D2 AB                       .
        tax                                     ; F3D3 AA                       .
        eor     $55,x                           ; F3D4 55 55                    UU
        .byte   $AB                             ; F3D6 AB                       .
        ror     a                               ; F3D7 6A                       j
        eor     $55,x                           ; F3D8 55 55                    UU
        lda     $AA                             ; F3DA A5 AA                    ..
        .byte   $52                             ; F3DC 52                       R
        eor     $A5,x                           ; F3DD 55 A5                    U.
        tax                                     ; F3DF AA                       .
        .byte   $54                             ; F3E0 54                       T
        eor     $D5,x                           ; F3E1 55 D5                    U.
        tax                                     ; F3E3 AA                       .
        ror     a                               ; F3E4 6A                       j
        eor     $55,x                           ; F3E5 55 55                    UU
        .byte   $AB                             ; F3E7 AB                       .
        ror     a                               ; F3E8 6A                       j
        eor     $55,x                           ; F3E9 55 55                    UU
        tax                                     ; F3EB AA                       .
        tax                                     ; F3EC AA                       .
        .byte   $54                             ; F3ED 54                       T
        eor     $A5,x                           ; F3EE 55 A5                    U.
        tax                                     ; F3F0 AA                       .
        .byte   $52                             ; F3F1 52                       R
        eor     $AD,x                           ; F3F2 55 AD                    U.
        tax                                     ; F3F4 AA                       .
        .byte   $5A                             ; F3F5 5A                       Z
        eor     $D5,x                           ; F3F6 55 D5                    U.
        tax                                     ; F3F8 AA                       .
        tax                                     ; F3F9 AA                       .
        eor     $A5,x                           ; F3FA 55 A5                    U.
        tax                                     ; F3FC AA                       .
        rol     a                               ; F3FD 2A                       *
        eor     $55,x                           ; F3FE 55 55                    UU
        lda     $AA                             ; F400 A5 AA                    ..
        rol     a                               ; F402 2A                       *
        lda     $AAAA                           ; F403 AD AA AA                 ...
        lsr     $55,x                           ; F406 56 55                    VU
        cmp     $AA,x                           ; F408 D5 AA                    ..
        tax                                     ; F40A AA                       .
        tax                                     ; F40B AA                       .
        tax                                     ; F40C AA                       .
        tax                                     ; F40D AA                       .
        lsr     a                               ; F40E 4A                       J
        eor     $55,x                           ; F40F 55 55                    UU
        lda     $AA                             ; F411 A5 AA                    ..
        tax                                     ; F413 AA                       .
        tax                                     ; F414 AA                       .
        tax                                     ; F415 AA                       .
        tax                                     ; F416 AA                       .
        eor     $55,x                           ; F417 55 55                    UU
        cmp     $AA,x                           ; F419 D5 AA                    ..
        tax                                     ; F41B AA                       .
        tax                                     ; F41C AA                       .
        tax                                     ; F41D AA                       .
        tax                                     ; F41E AA                       .
        .byte   $52                             ; F41F 52                       R
        eor     $55,x                           ; F420 55 55                    UU
        lda     #$AA                            ; F422 A9 AA                    ..
        tax                                     ; F424 AA                       .
        tax                                     ; F425 AA                       .
        tax                                     ; F426 AA                       .
        ror     a                               ; F427 6A                       j
        eor     $55,x                           ; F428 55 55                    UU
        cmp     $AA,x                           ; F42A D5 AA                    ..
        tax                                     ; F42C AA                       .
        tax                                     ; F42D AA                       .
        tax                                     ; F42E AA                       .
        tax                                     ; F42F AA                       .
        .byte   $54                             ; F430 54                       T
        eor     $55,x                           ; F431 55 55                    UU
        lda     #$AA                            ; F433 A9 AA                    ..
        tax                                     ; F435 AA                       .
        tax                                     ; F436 AA                       .
        tax                                     ; F437 AA                       .
        .byte   $5A                             ; F438 5A                       Z
        eor     $55,x                           ; F439 55 55                    UU
        lda     $AA,x                           ; F43B B5 AA                    ..
        tax                                     ; F43D AA                       .
        tax                                     ; F43E AA                       .
        tax                                     ; F43F AA                       .
        tax                                     ; F440 AA                       .
        .byte   $54                             ; F441 54                       T
        eor     $55,x                           ; F442 55 55                    UU
        lda     #$AA                            ; F444 A9 AA                    ..
        tax                                     ; F446 AA                       .
        tax                                     ; F447 AA                       .
        tax                                     ; F448 AA                       .
        .byte   $5A                             ; F449 5A                       Z
        eor     $55,x                           ; F44A 55 55                    UU
        lda     $AA,x                           ; F44C B5 AA                    ..
        tax                                     ; F44E AA                       .
        tax                                     ; F44F AA                       .
        tax                                     ; F450 AA                       .
        rol     a                               ; F451 2A                       *
        eor     $55,x                           ; F452 55 55                    UU
        eor     $AA,x                           ; F454 55 AA                    U.
        tax                                     ; F456 AA                       .
        tax                                     ; F457 AA                       .
        tax                                     ; F458 AA                       .
        tax                                     ; F459 AA                       .
        lsr     $55,x                           ; F45A 56 55                    VU
        eor     $B5,x                           ; F45C 55 B5                    U.
        tax                                     ; F45E AA                       .
        tax                                     ; F45F AA                       .
        tax                                     ; F460 AA                       .
        tax                                     ; F461 AA                       .
        lsr     a                               ; F462 4A                       J
        eor     $55,x                           ; F463 55 55                    UU
        eor     $AA,x                           ; F465 55 AA                    U.
        tax                                     ; F467 AA                       .
        tax                                     ; F468 AA                       .
        tax                                     ; F469 AA                       .
        tax                                     ; F46A AA                       .
        eor     $55,x                           ; F46B 55 55                    UU
        eor     $AD,x                           ; F46D 55 AD                    U.
        tax                                     ; F46F AA                       .
        tax                                     ; F470 AA                       .
        tax                                     ; F471 AA                       .
        tax                                     ; F472 AA                       .
        .byte   $52                             ; F473 52                       R
        eor     $55,x                           ; F474 55 55                    UU
        eor     $AA,x                           ; F476 55 AA                    U.
        tax                                     ; F478 AA                       .
        tax                                     ; F479 AA                       .
        tax                                     ; F47A AA                       .
        ror     a                               ; F47B 6A                       j
        eor     $55,x                           ; F47C 55 55                    UU
        eor     $AD,x                           ; F47E 55 AD                    U.
        tax                                     ; F480 AA                       .
        tax                                     ; F481 AA                       .
        tax                                     ; F482 AA                       .
        tax                                     ; F483 AA                       .
        .byte   $54                             ; F484 54                       T
        eor     $55,x                           ; F485 55 55                    UU
        sta     $AA,x                           ; F487 95 AA                    ..
        tax                                     ; F489 AA                       .
        tax                                     ; F48A AA                       .
        tax                                     ; F48B AA                       .
        .byte   $5A                             ; F48C 5A                       Z
        eor     $55,x                           ; F48D 55 55                    UU
        eor     $AD,x                           ; F48F 55 AD                    U.
        tax                                     ; F491 AA                       .
        tax                                     ; F492 AA                       .
        tax                                     ; F493 AA                       .
        rol     a                               ; F494 2A                       *
        eor     $55,x                           ; F495 55 55                    UU
        eor     $95,x                           ; F497 55 95                    U.
        tax                                     ; F499 AA                       .
        tax                                     ; F49A AA                       .
        tax                                     ; F49B AA                       .
        tax                                     ; F49C AA                       .
        lsr     $55,x                           ; F49D 56 55                    VU
        eor     $55,x                           ; F49F 55 55                    UU
        lda     $AAAA                           ; F4A1 AD AA AA                 ...
        tax                                     ; F4A4 AA                       .
        lsr     a                               ; F4A5 4A                       J
        eor     $55,x                           ; F4A6 55 55                    UU
        eor     $95,x                           ; F4A8 55 95                    U.
        tax                                     ; F4AA AA                       .
        tax                                     ; F4AB AA                       .
        tax                                     ; F4AC AA                       .
        tax                                     ; F4AD AA                       .
        eor     $55,x                           ; F4AE 55 55                    UU
        eor     $55,x                           ; F4B0 55 55                    UU
        .byte   $AB                             ; F4B2 AB                       .
        tax                                     ; F4B3 AA                       .
        tax                                     ; F4B4 AA                       .
        tax                                     ; F4B5 AA                       .
        .byte   $52                             ; F4B6 52                       R
        eor     $55,x                           ; F4B7 55 55                    UU
        eor     $95,x                           ; F4B9 55 95                    U.
        tax                                     ; F4BB AA                       .
        tax                                     ; F4BC AA                       .
        tax                                     ; F4BD AA                       .
        ror     a                               ; F4BE 6A                       j
        eor     $55,x                           ; F4BF 55 55                    UU
        eor     $55,x                           ; F4C1 55 55                    UU
        .byte   $AB                             ; F4C3 AB                       .
        tax                                     ; F4C4 AA                       .
        tax                                     ; F4C5 AA                       .
        tax                                     ; F4C6 AA                       .
        .byte   $54                             ; F4C7 54                       T
        eor     $55,x                           ; F4C8 55 55                    UU
        eor     $95,x                           ; F4CA 55 95                    U.
        tax                                     ; F4CC AA                       .
        tax                                     ; F4CD AA                       .
        tax                                     ; F4CE AA                       .
        .byte   $5A                             ; F4CF 5A                       Z
        eor     $55,x                           ; F4D0 55 55                    UU
        eor     $55,x                           ; F4D2 55 55                    UU
        lda     $AAAA                           ; F4D4 AD AA AA                 ...
        rol     a                               ; F4D7 2A                       *
        eor     $55,x                           ; F4D8 55 55                    UU
        eor     $55,x                           ; F4DA 55 55                    UU
        sta     $AA,x                           ; F4DC 95 AA                    ..
        tax                                     ; F4DE AA                       .
        tax                                     ; F4DF AA                       .
        lsr     $55,x                           ; F4E0 56 55                    VU
        eor     $55,x                           ; F4E2 55 55                    UU
        eor     $AD,x                           ; F4E4 55 AD                    U.
        tax                                     ; F4E6 AA                       .
        tax                                     ; F4E7 AA                       .
        lsr     a                               ; F4E8 4A                       J
        eor     $55,x                           ; F4E9 55 55                    UU
        eor     $55,x                           ; F4EB 55 55                    UU
        sta     $AA,x                           ; F4ED 95 AA                    ..
        tax                                     ; F4EF AA                       .
        tax                                     ; F4F0 AA                       .
        eor     $55,x                           ; F4F1 55 55                    UU
        eor     $55,x                           ; F4F3 55 55                    UU
        eor     $AD,x                           ; F4F5 55 AD                    U.
        tax                                     ; F4F7 AA                       .
        tax                                     ; F4F8 AA                       .
        .byte   $54                             ; F4F9 54                       T
        eor     $55,x                           ; F4FA 55 55                    UU
        eor     $55,x                           ; F4FC 55 55                    UU
        sta     $AA,x                           ; F4FE 95 AA                    ..
        tax                                     ; F500 AA                       .
        .byte   $5A                             ; F501 5A                       Z
        eor     $55,x                           ; F502 55 55                    UU
        eor     $55,x                           ; F504 55 55                    UU
        eor     $AD,x                           ; F506 55 AD                    U.
        tax                                     ; F508 AA                       .
        rol     a                               ; F509 2A                       *
        eor     $55,x                           ; F50A 55 55                    UU
        eor     $55,x                           ; F50C 55 55                    UU
        eor     $55,x                           ; F50E 55 55                    UU
        tax                                     ; F510 AA                       .
        tax                                     ; F511 AA                       .
        eor     $55,x                           ; F512 55 55                    UU
        eor     $55,x                           ; F514 55 55                    UU
        eor     $55,x                           ; F516 55 55                    UU
        cmp     $AA,x                           ; F518 D5 AA                    ..
        .byte   $54                             ; F51A 54                       T
        eor     $55,x                           ; F51B 55 55                    UU
        eor     $55,x                           ; F51D 55 55                    UU
        eor     $55,x                           ; F51F 55 55                    UU
        lda     #$56                            ; F521 A9 56                    .V
        eor     $55,x                           ; F523 55 55                    UU
        eor     $55,x                           ; F525 55 55                    UU
        eor     $55,x                           ; F527 55 55                    UU
        eor     $55,x                           ; F529 55 55                    UU
        eor     $55,x                           ; F52B 55 55                    UU
        eor     $55,x                           ; F52D 55 55                    UU
        eor     $55,x                           ; F52F 55 55                    UU
        eor     $55,x                           ; F531 55 55                    UU
        eor     $55,x                           ; F533 55 55                    UU
        eor     $55,x                           ; F535 55 55                    UU
        eor     $55,x                           ; F537 55 55                    UU
        eor     $55,x                           ; F539 55 55                    UU
        eor     $55,x                           ; F53B 55 55                    UU
        eor     $55,x                           ; F53D 55 55                    UU
        eor     $55,x                           ; F53F 55 55                    UU
        eor     $55,x                           ; F541 55 55                    UU
        eor     $55,x                           ; F543 55 55                    UU
        eor     $55,x                           ; F545 55 55                    UU
        eor     $55,x                           ; F547 55 55                    UU
        eor     $55,x                           ; F549 55 55                    UU
        eor     $55,x                           ; F54B 55 55                    UU
        eor     $55,x                           ; F54D 55 55                    UU
        eor     $55,x                           ; F54F 55 55                    UU
        eor     $55,x                           ; F551 55 55                    UU
        eor     $55,x                           ; F553 55 55                    UU
        eor     $55,x                           ; F555 55 55                    UU
        eor     $55,x                           ; F557 55 55                    UU
        eor     $55,x                           ; F559 55 55                    UU
        eor     $55,x                           ; F55B 55 55                    UU
        eor     $55,x                           ; F55D 55 55                    UU
        eor     $55,x                           ; F55F 55 55                    UU
        eor     $55,x                           ; F561 55 55                    UU
        eor     $55,x                           ; F563 55 55                    UU
        eor     $55,x                           ; F565 55 55                    UU
        eor     $55,x                           ; F567 55 55                    UU
        eor     $55,x                           ; F569 55 55                    UU
        eor     $55,x                           ; F56B 55 55                    UU
        eor     $55,x                           ; F56D 55 55                    UU
        eor     $55,x                           ; F56F 55 55                    UU
        eor     $55,x                           ; F571 55 55                    UU
        eor     $55,x                           ; F573 55 55                    UU
        eor     $55,x                           ; F575 55 55                    UU
        eor     $55,x                           ; F577 55 55                    UU
        eor     $55,x                           ; F579 55 55                    UU
        eor     $55,x                           ; F57B 55 55                    UU
        eor     $55,x                           ; F57D 55 55                    UU
        eor     $55,x                           ; F57F 55 55                    UU
        eor     $55,x                           ; F581 55 55                    UU
        eor     $55,x                           ; F583 55 55                    UU
        eor     $55,x                           ; F585 55 55                    UU
        eor     $55,x                           ; F587 55 55                    UU
        eor     $55,x                           ; F589 55 55                    UU
        eor     $55,x                           ; F58B 55 55                    UU
        eor     $55,x                           ; F58D 55 55                    UU
        eor     $55,x                           ; F58F 55 55                    UU
        eor     $55,x                           ; F591 55 55                    UU
        eor     $55,x                           ; F593 55 55                    UU
        eor     $55,x                           ; F595 55 55                    UU
        eor     $55,x                           ; F597 55 55                    UU
        eor     $55,x                           ; F599 55 55                    UU
        eor     $55,x                           ; F59B 55 55                    UU
        eor     $55,x                           ; F59D 55 55                    UU
        eor     $55,x                           ; F59F 55 55                    UU
        eor     $55,x                           ; F5A1 55 55                    UU
        eor     $55,x                           ; F5A3 55 55                    UU
        eor     $55,x                           ; F5A5 55 55                    UU
        eor     $55,x                           ; F5A7 55 55                    UU
        eor     $55,x                           ; F5A9 55 55                    UU
        eor     $55,x                           ; F5AB 55 55                    UU
        eor     $55,x                           ; F5AD 55 55                    UU
        eor     $55,x                           ; F5AF 55 55                    UU
        eor     $55,x                           ; F5B1 55 55                    UU
        eor     $55,x                           ; F5B3 55 55                    UU
        eor     $55,x                           ; F5B5 55 55                    UU
        eor     $55,x                           ; F5B7 55 55                    UU
        eor     $55,x                           ; F5B9 55 55                    UU
        eor     $55,x                           ; F5BB 55 55                    UU
        eor     $55,x                           ; F5BD 55 55                    UU
        eor     $55,x                           ; F5BF 55 55                    UU
        eor     $55,x                           ; F5C1 55 55                    UU
        eor     $55,x                           ; F5C3 55 55                    UU
        eor     $55,x                           ; F5C5 55 55                    UU
        eor     $55,x                           ; F5C7 55 55                    UU
        eor     $55,x                           ; F5C9 55 55                    UU
        eor     $55,x                           ; F5CB 55 55                    UU
        eor     $55,x                           ; F5CD 55 55                    UU
        eor     $55,x                           ; F5CF 55 55                    UU
        eor     $55,x                           ; F5D1 55 55                    UU
        eor     $55,x                           ; F5D3 55 55                    UU
        eor     $55,x                           ; F5D5 55 55                    UU
        eor     $55,x                           ; F5D7 55 55                    UU
        eor     $55,x                           ; F5D9 55 55                    UU
        eor     $55,x                           ; F5DB 55 55                    UU
        eor     $55,x                           ; F5DD 55 55                    UU
        eor     $55,x                           ; F5DF 55 55                    UU
        eor     $55,x                           ; F5E1 55 55                    UU
        eor     $55,x                           ; F5E3 55 55                    UU
        eor     $55,x                           ; F5E5 55 55                    UU
        eor     $55,x                           ; F5E7 55 55                    UU
        eor     $55,x                           ; F5E9 55 55                    UU
        eor     $55,x                           ; F5EB 55 55                    UU
        eor     $55,x                           ; F5ED 55 55                    UU
        eor     $55,x                           ; F5EF 55 55                    UU
        eor     $55,x                           ; F5F1 55 55                    UU
        eor     $55,x                           ; F5F3 55 55                    UU
        eor     $55,x                           ; F5F5 55 55                    UU
        eor     $55,x                           ; F5F7 55 55                    UU
        eor     $55,x                           ; F5F9 55 55                    UU
        eor     $55,x                           ; F5FB 55 55                    UU
        eor     $55,x                           ; F5FD 55 55                    UU
        eor     $55,x                           ; F5FF 55 55                    UU
        eor     $55,x                           ; F601 55 55                    UU
        eor     $55,x                           ; F603 55 55                    UU
        eor     $55,x                           ; F605 55 55                    UU
        eor     $55,x                           ; F607 55 55                    UU
        eor     $55,x                           ; F609 55 55                    UU
        eor     $55,x                           ; F60B 55 55                    UU
        eor     $55,x                           ; F60D 55 55                    UU
        eor     $55,x                           ; F60F 55 55                    UU
        eor     $55,x                           ; F611 55 55                    UU
        eor     $55,x                           ; F613 55 55                    UU
        eor     $55,x                           ; F615 55 55                    UU
        eor     $55,x                           ; F617 55 55                    UU
        eor     $55,x                           ; F619 55 55                    UU
        eor     $55,x                           ; F61B 55 55                    UU
        eor     $55,x                           ; F61D 55 55                    UU
        eor     $55,x                           ; F61F 55 55                    UU
        eor     $55,x                           ; F621 55 55                    UU
        eor     $55,x                           ; F623 55 55                    UU
        eor     $55,x                           ; F625 55 55                    UU
        eor     $55,x                           ; F627 55 55                    UU
        eor     $55,x                           ; F629 55 55                    UU
        eor     $55,x                           ; F62B 55 55                    UU
        eor     $55,x                           ; F62D 55 55                    UU
        eor     $55,x                           ; F62F 55 55                    UU
        eor     $55,x                           ; F631 55 55                    UU
        eor     $55,x                           ; F633 55 55                    UU
        eor     $55,x                           ; F635 55 55                    UU
        eor     $55,x                           ; F637 55 55                    UU
        eor     $55,x                           ; F639 55 55                    UU
        eor     $55,x                           ; F63B 55 55                    UU
        eor     $55,x                           ; F63D 55 55                    UU
        eor     $55,x                           ; F63F 55 55                    UU
        eor     $55,x                           ; F641 55 55                    UU
        eor     $55,x                           ; F643 55 55                    UU
        eor     $55,x                           ; F645 55 55                    UU
        eor     $55,x                           ; F647 55 55                    UU
        eor     $55,x                           ; F649 55 55                    UU
        eor     $55,x                           ; F64B 55 55                    UU
        eor     $55,x                           ; F64D 55 55                    UU
        eor     $55,x                           ; F64F 55 55                    UU
        eor     $55,x                           ; F651 55 55                    UU
        eor     $55,x                           ; F653 55 55                    UU
        eor     $55,x                           ; F655 55 55                    UU
        eor     $55,x                           ; F657 55 55                    UU
        eor     $55,x                           ; F659 55 55                    UU
        eor     $55,x                           ; F65B 55 55                    UU
        eor     $55,x                           ; F65D 55 55                    UU
        eor     $55,x                           ; F65F 55 55                    UU
        eor     $55,x                           ; F661 55 55                    UU
        eor     $55,x                           ; F663 55 55                    UU
        eor     $55,x                           ; F665 55 55                    UU
        eor     $55,x                           ; F667 55 55                    UU
        eor     $55,x                           ; F669 55 55                    UU
        eor     $55,x                           ; F66B 55 55                    UU
        eor     $55,x                           ; F66D 55 55                    UU
        eor     $55,x                           ; F66F 55 55                    UU
        eor     $55,x                           ; F671 55 55                    UU
        eor     $55,x                           ; F673 55 55                    UU
        eor     $55,x                           ; F675 55 55                    UU
        eor     $55,x                           ; F677 55 55                    UU
        eor     $55,x                           ; F679 55 55                    UU
        eor     $55,x                           ; F67B 55 55                    UU
        eor     $55,x                           ; F67D 55 55                    UU
        eor     $55,x                           ; F67F 55 55                    UU
        eor     $55,x                           ; F681 55 55                    UU
        eor     $55,x                           ; F683 55 55                    UU
        eor     $55,x                           ; F685 55 55                    UU
        eor     $55,x                           ; F687 55 55                    UU
        eor     $55,x                           ; F689 55 55                    UU
        eor     $55,x                           ; F68B 55 55                    UU
        eor     $55,x                           ; F68D 55 55                    UU
        eor     $55,x                           ; F68F 55 55                    UU
        eor     $55,x                           ; F691 55 55                    UU
        eor     $55,x                           ; F693 55 55                    UU
        eor     $55,x                           ; F695 55 55                    UU
        eor     $55,x                           ; F697 55 55                    UU
        eor     $55,x                           ; F699 55 55                    UU
        eor     $55,x                           ; F69B 55 55                    UU
        eor     $55,x                           ; F69D 55 55                    UU
        eor     $55,x                           ; F69F 55 55                    UU
        eor     $55,x                           ; F6A1 55 55                    UU
        eor     $55,x                           ; F6A3 55 55                    UU
        eor     $55,x                           ; F6A5 55 55                    UU
        eor     $55,x                           ; F6A7 55 55                    UU
        eor     $55,x                           ; F6A9 55 55                    UU
        eor     $55,x                           ; F6AB 55 55                    UU
        eor     $55,x                           ; F6AD 55 55                    UU
        eor     $55,x                           ; F6AF 55 55                    UU
        eor     $55,x                           ; F6B1 55 55                    UU
        eor     $55,x                           ; F6B3 55 55                    UU
        eor     $55,x                           ; F6B5 55 55                    UU
        eor     $55,x                           ; F6B7 55 55                    UU
        eor     $55,x                           ; F6B9 55 55                    UU
        eor     $55,x                           ; F6BB 55 55                    UU
        eor     $55,x                           ; F6BD 55 55                    UU
        eor     $55,x                           ; F6BF 55 55                    UU
        eor     $55,x                           ; F6C1 55 55                    UU
        eor     $55,x                           ; F6C3 55 55                    UU
        eor     $55,x                           ; F6C5 55 55                    UU
        eor     $55,x                           ; F6C7 55 55                    UU
        eor     $55,x                           ; F6C9 55 55                    UU
        eor     $55,x                           ; F6CB 55 55                    UU
        eor     $55,x                           ; F6CD 55 55                    UU
        eor     $55,x                           ; F6CF 55 55                    UU
        eor     $55,x                           ; F6D1 55 55                    UU
        eor     $55,x                           ; F6D3 55 55                    UU
        eor     $55,x                           ; F6D5 55 55                    UU
        eor     $55,x                           ; F6D7 55 55                    UU
        eor     $55,x                           ; F6D9 55 55                    UU
        eor     $55,x                           ; F6DB 55 55                    UU
        eor     $55,x                           ; F6DD 55 55                    UU
        eor     $55,x                           ; F6DF 55 55                    UU
        eor     $55,x                           ; F6E1 55 55                    UU
        eor     $55,x                           ; F6E3 55 55                    UU
        eor     $55,x                           ; F6E5 55 55                    UU
        eor     $55,x                           ; F6E7 55 55                    UU
        eor     $55,x                           ; F6E9 55 55                    UU
        eor     $55,x                           ; F6EB 55 55                    UU
        eor     $55,x                           ; F6ED 55 55                    UU
        eor     $D5,x                           ; F6EF 55 D5                    U.
        lsr     $FB                             ; F6F1 46 FB                    F.
        eor     $55,x                           ; F6F3 55 55                    UU
        eor     $55,x                           ; F6F5 55 55                    UU
        eor     $55,x                           ; F6F7 55 55                    UU
        eor     $55,x                           ; F6F9 55 55                    UU
        eor     $55,x                           ; F6FB 55 55                    UU
        eor     $55,x                           ; F6FD 55 55                    UU
        eor     $55,x                           ; F6FF 55 55                    UU
        brk                                     ; F701 00                       .
        brk                                     ; F702 00                       .
        brk                                     ; F703 00                       .
        brk                                     ; F704 00                       .
        brk                                     ; F705 00                       .
        brk                                     ; F706 00                       .
        brk                                     ; F707 00                       .
        brk                                     ; F708 00                       .
        brk                                     ; F709 00                       .
        brk                                     ; F70A 00                       .
        brk                                     ; F70B 00                       .
        brk                                     ; F70C 00                       .
        brk                                     ; F70D 00                       .
        brk                                     ; F70E 00                       .
        brk                                     ; F70F 00                       .
        brk                                     ; F710 00                       .
        brk                                     ; F711 00                       .
        brk                                     ; F712 00                       .
        brk                                     ; F713 00                       .
        brk                                     ; F714 00                       .
        brk                                     ; F715 00                       .
        brk                                     ; F716 00                       .
        brk                                     ; F717 00                       .
        brk                                     ; F718 00                       .
        brk                                     ; F719 00                       .
        brk                                     ; F71A 00                       .
LF71B:  brk                                     ; F71B 00                       .
        brk                                     ; F71C 00                       .
        brk                                     ; F71D 00                       .
        brk                                     ; F71E 00                       .
        brk                                     ; F71F 00                       .
        brk                                     ; F720 00                       .
        brk                                     ; F721 00                       .
        brk                                     ; F722 00                       .
        brk                                     ; F723 00                       .
        brk                                     ; F724 00                       .
        brk                                     ; F725 00                       .
        brk                                     ; F726 00                       .
        brk                                     ; F727 00                       .
        brk                                     ; F728 00                       .
LF729:  brk                                     ; F729 00                       .
        brk                                     ; F72A 00                       .
        brk                                     ; F72B 00                       .
        brk                                     ; F72C 00                       .
        brk                                     ; F72D 00                       .
        brk                                     ; F72E 00                       .
        brk                                     ; F72F 00                       .
        brk                                     ; F730 00                       .
        brk                                     ; F731 00                       .
        brk                                     ; F732 00                       .
        brk                                     ; F733 00                       .
        brk                                     ; F734 00                       .
        brk                                     ; F735 00                       .
        brk                                     ; F736 00                       .
        brk                                     ; F737 00                       .
        brk                                     ; F738 00                       .
        brk                                     ; F739 00                       .
        brk                                     ; F73A 00                       .
        brk                                     ; F73B 00                       .
        brk                                     ; F73C 00                       .
        brk                                     ; F73D 00                       .
        brk                                     ; F73E 00                       .
        brk                                     ; F73F 00                       .
        eor     $55,x                           ; F740 55 55                    UU
        eor     $55,x                           ; F742 55 55                    UU
        eor     $55,x                           ; F744 55 55                    UU
        eor     $55,x                           ; F746 55 55                    UU
        eor     $55,x                           ; F748 55 55                    UU
        eor     $55,x                           ; F74A 55 55                    UU
        eor     $55,x                           ; F74C 55 55                    UU
        eor     $55,x                           ; F74E 55 55                    UU
        eor     $55,x                           ; F750 55 55                    UU
        eor     $55,x                           ; F752 55 55                    UU
        eor     $55,x                           ; F754 55 55                    UU
        eor     $55,x                           ; F756 55 55                    UU
        eor     $55,x                           ; F758 55 55                    UU
        eor     $55,x                           ; F75A 55 55                    UU
        cmp     $01,x                           ; F75C D5 01                    ..
        .byte   $0F                             ; F75E 0F                       .
        .byte   $C3                             ; F75F C3                       .
        .byte   $03                             ; F760 03                       .
        sei                                     ; F761 78                       x
        cpy     #$F3                            ; F762 C0 F3                    ..
        .byte   $E7                             ; F764 E7                       .
        .byte   $E7                             ; F765 E7                       .
        .byte   $E3                             ; F766 E3                       .
        .byte   $1F                             ; F767 1F                       .
        inc     LF3C3,x                         ; F768 FE C3 F3                 ...
        cpx     #$C1                            ; F76B E0 C1                    ..
        .byte   $80                             ; F76D 80                       .
        .byte   $07                             ; F76E 07                       .
        cpy     #$01                            ; F76F C0 01                    ..
        .byte   $7C                             ; F771 7C                       |
        cpx     #$E3                            ; F772 E0 E3                    ..
        sbc     ($FF,x)                         ; F774 E1 FF                    ..
        sbc     ($0F,x)                         ; F776 E1 0F                    ..
        .byte   $FF                             ; F778 FF                       .
        .byte   $E1                             ; F779 E1                       .
LF77A:  .byte   $3F                             ; F77A 3F                       ?
        brk                                     ; F77B 00                       .
        cpx     #$C1                            ; F77C E0 C1                    ..
        .byte   $03                             ; F77E 03                       .
LF77F:  cpx     #$01                            ; F77F E0 01                    ..
        ror     $01F8,x                         ; F781 7E F8 01                 ~..
        .byte   $F0                             ; F784 F0                       .
LF785:  .byte   $FF                             ; F785 FF                       .
        sbc     ($07),y                         ; F786 F1 07                    ..
        .byte   $FF                             ; F788 FF                       .
        .byte   $F0                             ; F789 F0                       .
LF78A:  .byte   $3F                             ; F78A 3F                       ?
        brk                                     ; F78B 00                       .
        beq     LF77F                           ; F78C F0 F1                    ..
        ora     ($F0,x)                         ; F78E 01 F0                    ..
        brk                                     ; F790 00                       .
        .byte   $3F                             ; F791 3F                       ?
        .byte   $FC                             ; F792 FC                       .
        brk                                     ; F793 00                       .
        sed                                     ; F794 F8                       .
        .byte   $FF                             ; F795 FF                       .
        beq     LF71B                           ; F796 F0 83                    ..
        .byte   $7F                             ; F798 7F                       .
        beq     LF7BA                           ; F799 F0 1F                    ..
        brk                                     ; F79B 00                       .
        sed                                     ; F79C F8                       .
        .byte   $FF                             ; F79D FF                       .
        ora     ($F8,x)                         ; F79E 01 F8                    ..
        .byte   $80                             ; F7A0 80                       .
        .byte   $1F                             ; F7A1 1F                       .
        .byte   $7C                             ; F7A2 7C                       |
        brk                                     ; F7A3 00                       .
        sed                                     ; F7A4 F8                       .
        .byte   $7F                             ; F7A5 7F                       .
        beq     LF729                           ; F7A6 F0 81                    ..
        .byte   $3F                             ; F7A8 3F                       ?
        sed                                     ; F7A9 F8                       .
        .byte   $1F                             ; F7AA 1F                       .
        brk                                     ; F7AB 00                       .
        sed                                     ; F7AC F8                       .
        .byte   $FF                             ; F7AD FF                       .
        brk                                     ; F7AE 00                       .
        .byte   $7C                             ; F7AF 7C                       |
        cpy     #$3F                            ; F7B0 C0 3F                    .?
        rol     LFC00,x                         ; F7B2 3E 00 FC                 >..
        .byte   $3F                             ; F7B5 3F                       ?
        rts                                     ; F7B6 60                       `

; ----------------------------------------------------------------------------
        cpy     #$1F                            ; F7B7 C0 1F                    ..
        .byte   $FC                             ; F7B9 FC                       .
LF7BA:  .byte   $0F                             ; F7BA 0F                       .
        brk                                     ; F7BB 00                       .
        .byte   $FC                             ; F7BC FC                       .
        .byte   $FF                             ; F7BD FF                       .
        brk                                     ; F7BE 00                       .
        ror     $BFE0,x                         ; F7BF 7E E0 BF                 ~..
        .byte   $1F                             ; F7C2 1F                       .
        brk                                     ; F7C3 00                       .
        .byte   $FC                             ; F7C4 FC                       .
        .byte   $1F                             ; F7C5 1F                       .
        brk                                     ; F7C6 00                       .
        cpy     #$1F                            ; F7C7 C0 1F                    ..
        .byte   $FC                             ; F7C9 FC                       .
LF7CA:  .byte   $07                             ; F7CA 07                       .
        brk                                     ; F7CB 00                       .
        inc     a:$FF,x                         ; F7CC FE FF 00                 ...
        .byte   $7F                             ; F7CF 7F                       .
        .byte   $F0                             ; F7D0 F0                       .
LF7D1:  .byte   $FF                             ; F7D1 FF                       .
        .byte   $0F                             ; F7D2 0F                       .
        brk                                     ; F7D3 00                       .
        .byte   $FC                             ; F7D4 FC                       .
        .byte   $0F                             ; F7D5 0F                       .
        brk                                     ; F7D6 00                       .
        cpx     #$07                            ; F7D7 E0 07                    ..
        inc     a:$07,x                         ; F7D9 FE 07 00                 ...
        .byte   $FF                             ; F7DC FF                       .
        .byte   $7F                             ; F7DD 7F                       .
        .byte   $80                             ; F7DE 80                       .
        .byte   $7F                             ; F7DF 7F                       .
        sed                                     ; F7E0 F8                       .
        .byte   $FF                             ; F7E1 FF                       .
        .byte   $07                             ; F7E2 07                       .
        brk                                     ; F7E3 00                       .
        inc     a:$03,x                         ; F7E4 FE 03 00                 ...
        cpx     #$03                            ; F7E7 E0 03                    ..
        inc     $C003,x                         ; F7E9 FE 03 C0                 ...
        .byte   $FF                             ; F7EC FF                       .
        .byte   $7F                             ; F7ED 7F                       .
        cpy     #$7F                            ; F7EE C0 7F                    ..
        .byte   $FC                             ; F7F0 FC                       .
        .byte   $EF                             ; F7F1 EF                       .
        ora     ($00,x)                         ; F7F2 01 00                    ..
        inc     a:$01,x                         ; F7F4 FE 01 00                 ...
        beq     LF77A                           ; F7F7 F0 81                    ..
        .byte   $FF                             ; F7F9 FF                       .
        .byte   $03                             ; F7FA 03                       .
        cpx     #$FF                            ; F7FB E0 FF                    ..
        .byte   $3F                             ; F7FD 3F                       ?
        cpx     #$3F                            ; F7FE E0 3F                    .?
        inc     a:$E7,x                         ; F800 FE E7 00                 ...
        brk                                     ; F803 00                       .
        .byte   $FF                             ; F804 FF                       .
        brk                                     ; F805 00                       .
        brk                                     ; F806 00                       .
        beq     LF78A                           ; F807 F0 81                    ..
        .byte   $FF                             ; F809 FF                       .
        ora     ($F8,x)                         ; F80A 01 F8                    ..
        .byte   $FF                             ; F80C FF                       .
        .byte   $3F                             ; F80D 3F                       ?
        beq     LF84F                           ; F80E F0 3F                    .?
        inc     a:$55,x                         ; F810 FE 55 00                 .U.
        .byte   $80                             ; F813 80                       .
        .byte   $7F                             ; F814 7F                       .
        brk                                     ; F815 00                       .
        brk                                     ; F816 00                       .
        sed                                     ; F817 F8                       .
        cpx     #$FF                            ; F818 E0 FF                    ..
        brk                                     ; F81A 00                       .
        .byte   $FC                             ; F81B FC                       .
        .byte   $FF                             ; F81C FF                       .
        .byte   $1F                             ; F81D 1F                       .
LF81E:  sed                                     ; F81E F8                       .
        .byte   $1F                             ; F81F 1F                       .
        .byte   $FF                             ; F820 FF                       .
        clc                                     ; F821 18                       .
        brk                                     ; F822 00                       .
        cpy     #$3F                            ; F823 C0 3F                    .?
        brk                                     ; F825 00                       .
        brk                                     ; F826 00                       .
        .byte   $7C                             ; F827 7C                       |
        .byte   $F0                             ; F828 F0                       .
LF829:  .byte   $FF                             ; F829 FF                       .
        brk                                     ; F82A 00                       .
        inc     $1FFF,x                         ; F82B FE FF 1F                 ...
        .byte   $FC                             ; F82E FC                       .
        .byte   $0F                             ; F82F 0F                       .
        .byte   $3F                             ; F830 3F                       ?
        and     #$00                            ; F831 29 00                    ).
        cpy     #$1F                            ; F833 C0 1F                    ..
        brk                                     ; F835 00                       .
        brk                                     ; F836 00                       .
        rol     $7FF4,x                         ; F837 3E F4 7F                 >..
        rti                                     ; F83A 40                       @

; ----------------------------------------------------------------------------
        .byte   $FF                             ; F83B FF                       .
        .byte   $FF                             ; F83C FF                       .
        .byte   $0F                             ; F83D 0F                       .
        inc     $9E87,x                         ; F83E FE 87 9E                 ...
        .byte   $12                             ; F841 12                       .
        brk                                     ; F842 00                       .
        cpx     #$0F                            ; F843 E0 0F                    ..
        brk                                     ; F845 00                       .
        .byte   $80                             ; F846 80                       .
        .byte   $4F                             ; F847 4F                       O
        .byte   $FC                             ; F848 FC                       .
        .byte   $3F                             ; F849 3F                       ?
        ldy     #$FF                            ; F84A A0 FF                    ..
        .byte   $FF                             ; F84C FF                       .
        .byte   $07                             ; F84D 07                       .
        .byte   $FF                             ; F84E FF                       .
LF84F:  lda     ($2E,x)                         ; F84F A1 2E                    ..
        ora     $00                             ; F851 05 00                    ..
        beq     LF85C                           ; F853 F0 07                    ..
        brk                                     ; F855 00                       .
        cpx     #$4D                            ; F856 E0 4D                    .M
        inc     $D01F,x                         ; F858 FE 1F D0                 ...
        .byte   $FF                             ; F85B FF                       .
LF85C:  .byte   $FF                             ; F85C FF                       .
LF85D:  .byte   $83                             ; F85D 83                       .
        .byte   $FF                             ; F85E FF                       .
        cpy     #$56                            ; F85F C0 56                    .V
        .byte   $02                             ; F861 02                       .
        brk                                     ; F862 00                       .
        sed                                     ; F863 F8                       .
        .byte   $03                             ; F864 03                       .
        brk                                     ; F865 00                       .
        cld                                     ; F866 D8                       .
        .byte   $4B                             ; F867 4B                       K
        .byte   $FF                             ; F868 FF                       .
        .byte   $0F                             ; F869 0F                       .
        inx                                     ; F86A E8                       .
        .byte   $FF                             ; F86B FF                       .
        .byte   $FF                             ; F86C FF                       .
        ldy     #$7F                            ; F86D A0 7F                    ..
        pha                                     ; F86F 48                       H
        .byte   $AB                             ; F870 AB                       .
        php                                     ; F871 08                       .
        brk                                     ; F872 00                       .
        sed                                     ; F873 F8                       .
        ora     ($00,x)                         ; F874 01 00                    ..
        ror     $4B,x                           ; F876 76 4B                    vK
        .byte   $FF                             ; F878 FF                       .
        .byte   $07                             ; F879 07                       .
        sbc     $7FFF,y                         ; F87A F9 FF 7F                 ...
        bne     LF81E                           ; F87D D0 9F                    ..
        bvc     LF8CC                           ; F87F 50 4B                    PK
        ora     ($00,x)                         ; F881 01 00                    ..
        ror     a:$01,x                         ; F883 7E 01 00                 ~..
        sbc     LFFAA                           ; F886 ED AA FF                 ...
        ora     $ED                             ; F889 05 ED                    ..
        .byte   $FF                             ; F88B FF                       .
        .byte   $3F                             ; F88C 3F                       ?
        .byte   $B2                             ; F88D B2                       .
        .byte   $2F                             ; F88E 2F                       /
        eor     ($55),y                         ; F88F 51 55                    QU
        brk                                     ; F891 00                       .
        brk                                     ; F892 00                       .
        .byte   $BF                             ; F893 BF                       .
        brk                                     ; F894 00                       .
        rti                                     ; F895 40                       @

; ----------------------------------------------------------------------------
        .byte   $DB                             ; F896 DB                       .
        tax                                     ; F897 AA                       .
        .byte   $FF                             ; F898 FF                       .
        txa                                     ; F899 8A                       .
        .byte   $FA                             ; F89A FA                       .
        .byte   $FF                             ; F89B FF                       .
        .byte   $1F                             ; F89C 1F                       .
        nop                                     ; F89D EA                       .
        lsr     $2552                           ; F89E 4E 52 25                 NR%
        ora     ($80,x)                         ; F8A1 01 80                    ..
        .byte   $57                             ; F8A3 57                       W
        brk                                     ; F8A4 00                       .
        bne     LF85D                           ; F8A5 D0 B6                    ..
        nop                                     ; F8A7 EA                       .
        .byte   $EF                             ; F8A8 EF                       .
        .byte   $92                             ; F8A9 92                       .
        inc     $47FF,x                         ; F8AA FE FF 47                 ..G
LF8AD:  nop                                     ; F8AD EA                       .
        sta     $54,x                           ; F8AE 95 54                    .T
        and     #$00                            ; F8B0 29 00                    ).
        ldy     #$17                            ; F8B2 A0 17                    ..
        brk                                     ; F8B4 00                       .
        tax                                     ; F8B5 AA                       .
        lda     $DFDA                           ; F8B6 AD DA DF                 ...
        .byte   $52                             ; F8B9 52                       R
        .byte   $FB                             ; F8BA FB                       .
        .byte   $FF                             ; F8BB FF                       .
        .byte   $8B                             ; F8BC 8B                       .
LF8BD:  .byte   $DA                             ; F8BD DA                       .
        asl     $A5,x                           ; F8BE 16 A5                    ..
        txa                                     ; F8C0 8A                       .
        brk                                     ; F8C1 00                       .
        rts                                     ; F8C2 60                       `

; ----------------------------------------------------------------------------
        .byte   $17                             ; F8C3 17                       .
        brk                                     ; F8C4 00                       .
        ror     a                               ; F8C5 6A                       j
        .byte   $6B                             ; F8C6 6B                       k
        lda     $DF,x                           ; F8C7 B5 DF                    ..
        .byte   $52                             ; F8C9 52                       R
        .byte   $FF                             ; F8CA FF                       .
        .byte   $FF                             ; F8CB FF                       .
LF8CC:  .byte   $92                             ; F8CC 92                       .
        .byte   $DA                             ; F8CD DA                       .
        rol     a                               ; F8CE 2A                       *
        lda     #$14                            ; F8CF A9 14                    ..
        brk                                     ; F8D1 00                       .
        .byte   $D4                             ; F8D2 D4                       .
        lsr     a                               ; F8D3 4A                       J
        brk                                     ; F8D4 00                       .
        cmp     $5A,x                           ; F8D5 D5 5A                    .Z
        sbc     $B2BD                           ; F8D7 ED BD B2                 ...
        sbc     $A57F,x                         ; F8DA FD 7F A5                 ...
        .byte   $DA                             ; F8DD DA                       .
        lsr     a                               ; F8DE 4A                       J
        rol     a                               ; F8DF 2A                       *
        and     $00                             ; F8E0 25 00                    %.
        .byte   $D4                             ; F8E2 D4                       .
        asl     a                               ; F8E3 0A                       .
        jsr     L56B5                           ; F8E4 20 B5 56                  .V
        .byte   $DB                             ; F8E7 DB                       .
        .byte   $BB                             ; F8E8 BB                       .
        tax                                     ; F8E9 AA                       .
        .byte   $F7                             ; F8EA F7                       .
        .byte   $7F                             ; F8EB 7F                       .
        lda     #$DA                            ; F8EC A9 DA                    ..
        .byte   $92                             ; F8EE 92                       .
        .byte   $52                             ; F8EF 52                       R
        ora     #$10                            ; F8F0 09 10                    ..
        .byte   $B2                             ; F8F2 B2                       .
        .byte   $12                             ; F8F3 12                       .
        bcc     LF960                           ; F8F4 90 6A                    .j
        lda     $BA,x                           ; F8F6 B5 BA                    ..
        .byte   $B7                             ; F8F8 B7                       .
        nop                                     ; F8F9 EA                       .
        inc     $CAAF,x                         ; F8FA FE AF CA                 ...
        .byte   $5A                             ; F8FD 5A                       Z
        lda     $94                             ; F8FE A5 94                    ..
        .byte   $12                             ; F900 12                       .
        bpl     LF8AD                           ; F901 10 AA                    ..
        .byte   $44                             ; F903 44                       D
        bcc     LF95C                           ; F904 90 56                    .V
        .byte   $AB                             ; F906 AB                       .
        inc     $B6,x                           ; F907 F6 B6                    ..
        .byte   $DA                             ; F909 DA                       .
        sbc     $54B7,x                         ; F90A FD B7 54                 ..T
        .byte   $6B                             ; F90D 6B                       k
        and     #$A5                            ; F90E 29 A5                    ).
        .byte   $44                             ; F910 44                       D
        bpl     LF8BD                           ; F911 10 AA                    ..
        sty     $50                             ; F913 84 50                    .P
        cmp     $6A,x                           ; F915 D5 6A                    .j
        cmp     $B6AD,x                         ; F917 DD AD B6                 ...
        sbc     $5557,x                         ; F91A FD 57 55                 .WU
        .byte   $AB                             ; F91D AB                       .
        lsr     a                               ; F91E 4A                       J
        rol     a                               ; F91F 2A                       *
        ora     #$24                            ; F920 09 24                    .$
        tax                                     ; F922 AA                       .
        dey                                     ; F923 88                       .
        pha                                     ; F924 48                       H
        .byte   $AB                             ; F925 AB                       .
        lsr     $BB,x                           ; F926 56 BB                    V.
        lda     $7F75                           ; F928 AD 75 7F                 .u.
        .byte   $5B                             ; F92B 5B                       [
        eor     $AD,x                           ; F92C 55 AD                    U.
        sty     $4A,x                           ; F92E 94 4A                    .J
        .byte   $12                             ; F930 12                       .
        bit     $29                             ; F931 24 29                    $)
        .byte   $89                             ; F933 89                       .
        tay                                     ; F934 A8                       .
        ror     a                               ; F935 6A                       j
        cmp     $B6,x                           ; F936 D5 B6                    ..
        .byte   $6B                             ; F938 6B                       k
        adc     $AB7F                           ; F939 6D 7F AB                 m..
        ror     a                               ; F93C 6A                       j
        eor     $A5,x                           ; F93D 55 A5                    U.
        sty     $44,x                           ; F93F 94 44                    .D
        bit     $29                             ; F941 24 29                    $)
        .byte   $89                             ; F943 89                       .
        ldy     $56                             ; F944 A4 56                    .V
        lda     $5B6D                           ; F946 AD 6D 5B                 .m[
        .byte   $DB                             ; F949 DB                       .
        ror     $6AAB,x                         ; F94A 7E AB 6A                 ~.j
        eor     $29,x                           ; F94D 55 29                    U)
        lda     $84                             ; F94F A5 84                    ..
        bit     $29                             ; F951 24 29                    $)
        sta     ($54),y                         ; F953 91 54                    .T
        cmp     $6A,x                           ; F955 D5 6A                    .j
        cmp     $DB5A,x                         ; F957 DD 5A DB                 .Z.
        .byte   $BB                             ; F95A BB                       .
        .byte   $AD                             ; F95B AD                       .
LF95C:  tax                                     ; F95C AA                       .
        stx     $4A,y                           ; F95D 96 4A                    .J
        .byte   $29                             ; F95F 29                       )
LF960:  ora     #$25                            ; F960 09 25                    .%
        and     #$91                            ; F962 29 91                    ).
        .byte   $52                             ; F964 52                       R
        .byte   $AB                             ; F965 AB                       .
        .byte   $5A                             ; F966 5A                       Z
        .byte   $DB                             ; F967 DB                       .
        dec     $D6,x                           ; F968 D6 D6                    ..
        .byte   $BB                             ; F96A BB                       .
        eor     $AD,x                           ; F96B 55 AD                    U.
        tax                                     ; F96D AA                       .
        .byte   $54                             ; F96E 54                       T
        lsr     a                               ; F96F 4A                       J
        .byte   $12                             ; F970 12                       .
        and     $29                             ; F971 25 29                    %)
        eor     ($AA),y                         ; F973 51 AA                    Q.
        tax                                     ; F975 AA                       .
        cmp     $B6,x                           ; F976 D5 B6                    ..
        ldx     $B6,y                           ; F978 B6 B6                    ..
        .byte   $B7                             ; F97A B7                       .
        lsr     $B5,x                           ; F97B 56 B5                    V.
        rol     a                               ; F97D 2A                       *
        lda     $52                             ; F97E A5 52                    .R
        bit     $49                             ; F980 24 49                    $I
        eor     #$49                            ; F982 49 49                    II
        tax                                     ; F984 AA                       .
        .byte   $5A                             ; F985 5A                       Z
        lda     $B5,x                           ; F986 B5 B5                    ..
        lda     $B5,x                           ; F988 B5 B5                    ..
        .byte   $B7                             ; F98A B7                       .
        lsr     $55,x                           ; F98B 56 55                    VU
        .byte   $53                             ; F98D 53                       S
        lda     $94                             ; F98E A5 94                    ..
        .byte   $44                             ; F990 44                       D
        eor     #$49                            ; F991 49 49                    II
        lsr     a                               ; F993 4A                       J
        lda     #$55                            ; F994 A9 55                    .U
        lda     $ADAD                           ; F996 AD AD AD                 ...
        adc     $B7,x                           ; F999 75 B7                    u.
        .byte   $5A                             ; F99B 5A                       Z
        eor     $55,x                           ; F99C 55 55                    UU
        and     #$A5                            ; F99E 29 A5                    ).
        pha                                     ; F9A0 48                       H
        eor     #$49                            ; F9A1 49 49                    II
        lsr     a                               ; F9A3 4A                       J
        eor     $55,x                           ; F9A4 55 55                    UU
        .byte   $6B                             ; F9A6 6B                       k
        adc     $ED6D                           ; F9A7 6D 6D ED                 mm.
        ldx     $6A,y                           ; F9AA B6 6A                    .j
        eor     $55,x                           ; F9AC 55 55                    UU
        rol     a                               ; F9AE 2A                       *
        and     $49                             ; F9AF 25 49                    %I
        eor     #$4A                            ; F9B1 49 4A                    IJ
        lsr     a                               ; F9B3 4A                       J
        eor     $D5,x                           ; F9B4 55 D5                    U.
        ror     a                               ; F9B6 6A                       j
        .byte   $6B                             ; F9B7 6B                       k
        .byte   $6B                             ; F9B8 6B                       k
        sbc     $AAB6                           ; F9B9 ED B6 AA                 ...
        eor     $95,x                           ; F9BC 55 95                    U.
        lsr     a                               ; F9BE 4A                       J
        and     #$51                            ; F9BF 29 51                    )Q
        eor     #$4A                            ; F9C1 49 4A                    IJ
        lsr     a                               ; F9C3 4A                       J
        eor     $AD,x                           ; F9C4 55 AD                    U.
        .byte   $5A                             ; F9C6 5A                       Z
        .byte   $5B                             ; F9C7 5B                       [
        .byte   $5B                             ; F9C8 5B                       [
        cmp     $AAD6,x                         ; F9C9 DD D6 AA                 ...
        lsr     $A9,x                           ; F9CC 56 A9                    V.
        .byte   $52                             ; F9CE 52                       R
        lsr     a                               ; F9CF 4A                       J
        .byte   $52                             ; F9D0 52                       R
        lsr     a                               ; F9D1 4A                       J
        lsr     a                               ; F9D2 4A                       J
        rol     a                               ; F9D3 2A                       *
        cmp     $AA,x                           ; F9D4 D5 AA                    ..
        dec     $DA,x                           ; F9D6 D6 DA                    ..
        .byte   $5A                             ; F9D8 5A                       Z
        .byte   $DB                             ; F9D9 DB                       .
        dec     $AA,x                           ; F9DA D6 AA                    ..
        tax                                     ; F9DC AA                       .
        tax                                     ; F9DD AA                       .
        .byte   $54                             ; F9DE 54                       T
        .byte   $52                             ; F9DF 52                       R
        .byte   $52                             ; F9E0 52                       R
        .byte   $52                             ; F9E1 52                       R
        .byte   $52                             ; F9E2 52                       R
        tax                                     ; F9E3 AA                       .
        tax                                     ; F9E4 AA                       .
        tax                                     ; F9E5 AA                       .
        lda     $D6,x                           ; F9E6 B5 D6                    ..
        lsr     $DB,x                           ; F9E8 56 DB                    V.
        dec     $AA,x                           ; F9EA D6 AA                    ..
        tax                                     ; F9EC AA                       .
        rol     a                               ; F9ED 2A                       *
        sta     $92,x                           ; F9EE 95 92                    ..
        .byte   $54                             ; F9F0 54                       T
        .byte   $52                             ; F9F1 52                       R
        .byte   $52                             ; F9F2 52                       R
        tax                                     ; F9F3 AA                       .
        tax                                     ; F9F4 AA                       .
        ror     a                               ; F9F5 6A                       j
        lda     $B6,x                           ; F9F6 B5 B6                    ..
        lsr     $DB,x                           ; F9F8 56 DB                    V.
        lsr     $AB,x                           ; F9FA 56 AB                    V.
        tax                                     ; F9FC AA                       .
        lsr     a                               ; F9FD 4A                       J
        lda     $94                             ; F9FE A5 94                    ..
        .byte   $54                             ; FA00 54                       T
        .byte   $52                             ; FA01 52                       R
        .byte   $52                             ; FA02 52                       R
        lda     #$AA                            ; FA03 A9 AA                    ..
        .byte   $5A                             ; FA05 5A                       Z
        lda     L56B5                           ; FA06 AD B5 56                 ..V
        .byte   $B7                             ; FA09 B7                       .
        lsr     $AD,x                           ; FA0A 56 AD                    V.
        tax                                     ; FA0C AA                       .
        .byte   $52                             ; FA0D 52                       R
        lda     #$A4                            ; FA0E A9 A4                    ..
        .byte   $54                             ; FA10 54                       T
        .byte   $52                             ; FA11 52                       R
        .byte   $52                             ; FA12 52                       R
        lda     #$AA                            ; FA13 A9 AA                    ..
        eor     $6B,x                           ; FA15 55 6B                    Uk
        lda     $B6D5                           ; FA17 AD D5 B6                 ...
        lsr     $B5,x                           ; FA1A 56 B5                    V.
        rol     a                               ; FA1C 2A                       *
        eor     $2A,x                           ; FA1D 55 2A                    U*
        and     $95                             ; FA1F 25 95                    %.
        .byte   $92                             ; FA21 92                       .
        .byte   $52                             ; FA22 52                       R
        lda     $5A                             ; FA23 A5 5A                    .Z
        cmp     $6A,x                           ; FA25 D5 6A                    .j
        lda     $B6D5                           ; FA27 AD D5 B6                 ...
        .byte   $5A                             ; FA2A 5A                       Z
        eor     $55,x                           ; FA2B 55 55                    UU
        sta     $4A,x                           ; FA2D 95 4A                    .J
        and     #$95                            ; FA2F 29 95                    ).
        .byte   $92                             ; FA31 92                       .
        lsr     a                               ; FA32 4A                       J
        eor     $55,x                           ; FA33 55 55                    UU
        lda     $5A,x                           ; FA35 B5 5A                    .Z
        .byte   $6B                             ; FA37 6B                       k
        cmp     $B6,x                           ; FA38 D5 B6                    ..
        .byte   $5A                             ; FA3A 5A                       Z
        eor     $55,x                           ; FA3B 55 55                    UU
        lda     $4A                             ; FA3D A5 4A                    .J
        eor     #$95                            ; FA3F 49 95                    I.
        sty     $4A,x                           ; FA41 94 4A                    .J
        eor     $55,x                           ; FA43 55 55                    UU
        lda     $6B56                           ; FA45 AD 56 6B                 .Vk
        cmp     $B6,x                           ; FA48 D5 B6                    ..
        ror     a                               ; FA4A 6A                       j
        eor     $55,x                           ; FA4B 55 55                    UU
        lda     #$52                            ; FA4D A9 52                    .R
        lsr     a                               ; FA4F 4A                       J
        sta     $94,x                           ; FA50 95 94                    ..
        lsr     a                               ; FA52 4A                       J
        eor     $55,x                           ; FA53 55 55                    UU
        .byte   $AB                             ; FA55 AB                       .
        dec     $5A,x                           ; FA56 D6 5A                    .Z
        lda     $D6,x                           ; FA58 B5 D6                    ..
        tax                                     ; FA5A AA                       .
        eor     $55,x                           ; FA5B 55 55                    UU
        tax                                     ; FA5D AA                       .
        .byte   $54                             ; FA5E 54                       T
        lsr     a                               ; FA5F 4A                       J
        lda     $94                             ; FA60 A5 94                    ..
        rol     a                               ; FA62 2A                       *
        eor     $B5,x                           ; FA63 55 B5                    U.
        tax                                     ; FA65 AA                       .
        cmp     $5A,x                           ; FA66 D5 5A                    .Z
        lda     $D5,x                           ; FA68 B5 D5                    ..
        tax                                     ; FA6A AA                       .
        lsr     $A9,x                           ; FA6B 56 A9                    V.
        rol     a                               ; FA6D 2A                       *
        sta     $52,x                           ; FA6E 95 52                    .R
        lda     $54                             ; FA70 A5 54                    .T
        tax                                     ; FA72 AA                       .
        .byte   $D2                             ; FA73 D2                       .
        tax                                     ; FA74 AA                       .
        ror     a                               ; FA75 6A                       j
        lda     $5A,x                           ; FA76 B5 5A                    .Z
        lda     $D5,x                           ; FA78 B5 D5                    ..
        tax                                     ; FA7A AA                       .
        tax                                     ; FA7B AA                       .
        tax                                     ; FA7C AA                       .
        lsr     a                               ; FA7D 4A                       J
        lda     $52                             ; FA7E A5 52                    .R
        lda     $54                             ; FA80 A5 54                    .T
        tax                                     ; FA82 AA                       .
        tax                                     ; FA83 AA                       .
        tax                                     ; FA84 AA                       .
        .byte   $5A                             ; FA85 5A                       Z
        lda     $B556                           ; FA86 AD 56 B5                 .V.
        cmp     $AA,x                           ; FA89 D5 AA                    ..
        tax                                     ; FA8B AA                       .
        tax                                     ; FA8C AA                       .
        .byte   $52                             ; FA8D 52                       R
        lda     $54                             ; FA8E A5 54                    .T
        lda     $54                             ; FA90 A5 54                    .T
        tax                                     ; FA92 AA                       .
        tax                                     ; FA93 AA                       .
        tax                                     ; FA94 AA                       .
        lsr     $AD,x                           ; FA95 56 AD                    V.
        lsr     $AD,x                           ; FA97 56 AD                    V.
        eor     $AB,x                           ; FA99 55 AB                    U.
        tax                                     ; FA9B AA                       .
        tax                                     ; FA9C AA                       .
        .byte   $54                             ; FA9D 54                       T
        lda     #$54                            ; FA9E A9 54                    .T
        lda     $54                             ; FAA0 A5 54                    .T
        tax                                     ; FAA2 AA                       .
        tax                                     ; FAA3 AA                       .
        tax                                     ; FAA4 AA                       .
        eor     $AB,x                           ; FAA5 55 AB                    U.
        eor     $AD,x                           ; FAA7 55 AD                    U.
        eor     $AB,x                           ; FAA9 55 AB                    U.
        tax                                     ; FAAB AA                       .
        rol     a                               ; FAAC 2A                       *
        eor     $2A,x                           ; FAAD 55 2A                    U*
        eor     $A9,x                           ; FAAF 55 A9                    U.
        .byte   $54                             ; FAB1 54                       T
        lda     #$AA                            ; FAB2 A9 AA                    ..
        ror     a                               ; FAB4 6A                       j
        eor     $AB,x                           ; FAB5 55 AB                    U.
        eor     $AD,x                           ; FAB7 55 AD                    U.
        eor     $AB,x                           ; FAB9 55 AB                    U.
        tax                                     ; FABB AA                       .
        lsr     a                               ; FABC 4A                       J
        eor     $2A,x                           ; FABD 55 2A                    U*
        eor     $A9,x                           ; FABF 55 A9                    U.
        .byte   $54                             ; FAC1 54                       T
        lda     #$AA                            ; FAC2 A9 AA                    ..
        .byte   $5A                             ; FAC4 5A                       Z
        cmp     $6A,x                           ; FAC5 D5 6A                    .j
        eor     $AD,x                           ; FAC7 55 AD                    U.
        eor     $AD,x                           ; FAC9 55 AD                    U.
        tax                                     ; FACB AA                       .
        .byte   $52                             ; FACC 52                       R
        sta     $2A,x                           ; FACD 95 2A                    .*
        eor     $A9,x                           ; FACF 55 A9                    U.
        .byte   $54                             ; FAD1 54                       T
        lda     #$AA                            ; FAD2 A9 AA                    ..
        lsr     $B5,x                           ; FAD4 56 B5                    V.
        ror     a                               ; FAD6 6A                       j
        eor     $AB,x                           ; FAD7 55 AB                    U.
        eor     $B5,x                           ; FAD9 55 B5                    U.
        rol     a                               ; FADB 2A                       *
        eor     $95,x                           ; FADC 55 95                    U.
        lsr     a                               ; FADE 4A                       J
        eor     $A9,x                           ; FADF 55 A9                    U.
        .byte   $54                             ; FAE1 54                       T
        sta     $6A,x                           ; FAE2 95 6A                    .j
        eor     $B5,x                           ; FAE4 55 B5                    U.
        .byte   $5A                             ; FAE6 5A                       Z
        eor     $AB,x                           ; FAE7 55 AB                    U.
        eor     $D5,x                           ; FAE9 55 D5                    U.
        .byte   $52                             ; FAEB 52                       R
        eor     $A5,x                           ; FAEC 55 A5                    U.
        lsr     a                               ; FAEE 4A                       J
        eor     $2A,x                           ; FAEF 55 2A                    U*
        eor     $55,x                           ; FAF1 55 55                    UU
        eor     $55,x                           ; FAF3 55 55                    UU
        lda     $555A                           ; FAF5 AD 5A 55                 .ZU
        .byte   $AB                             ; FAF8 AB                       .
        eor     $55,x                           ; FAF9 55 55                    UU
        eor     $55,x                           ; FAFB 55 55                    UU
        lda     #$52                            ; FAFD A9 52                    .R
        eor     $2A,x                           ; FAFF 55 2A                    U*
        eor     $55,x                           ; FB01 55 55                    UU
        eor     $55,x                           ; FB03 55 55                    UU
        .byte   $AB                             ; FB05 AB                       .
        lsr     $55,x                           ; FB06 56 55                    VU
        .byte   $AB                             ; FB08 AB                       .
        eor     $55,x                           ; FB09 55 55                    UU
        eor     $55,x                           ; FB0B 55 55                    UU
        tax                                     ; FB0D AA                       .
        .byte   $52                             ; FB0E 52                       R
        eor     $2A,x                           ; FB0F 55 2A                    U*
        eor     $55,x                           ; FB11 55 55                    UU
        eor     $55,x                           ; FB13 55 55                    UU
        .byte   $AB                             ; FB15 AB                       .
        lsr     $D5,x                           ; FB16 56 D5                    V.
        tax                                     ; FB18 AA                       .
        eor     $55,x                           ; FB19 55 55                    UU
        eor     $55,x                           ; FB1B 55 55                    UU
        tax                                     ; FB1D AA                       .
        .byte   $54                             ; FB1E 54                       T
        eor     $2A,x                           ; FB1F 55 2A                    U*
        eor     $55,x                           ; FB21 55 55                    UU
        eor     $D5,x                           ; FB23 55 D5                    U.
        tax                                     ; FB25 AA                       .
        lsr     $D5,x                           ; FB26 56 D5                    V.
        tax                                     ; FB28 AA                       .
        eor     $55,x                           ; FB29 55 55                    UU
        eor     $95,x                           ; FB2B 55 95                    U.
        tax                                     ; FB2D AA                       .
        .byte   $54                             ; FB2E 54                       T
        eor     $AA,x                           ; FB2F 55 AA                    U.
        .byte   $54                             ; FB31 54                       T
        eor     $55,x                           ; FB32 55 55                    UU
        lda     $AA,x                           ; FB34 B5 AA                    ..
        eor     $D5,x                           ; FB36 55 D5                    U.
        tax                                     ; FB38 AA                       .
        eor     $55,x                           ; FB39 55 55                    UU
        eor     $A5,x                           ; FB3B 55 A5                    U.
        rol     a                               ; FB3D 2A                       *
        eor     $55,x                           ; FB3E 55 55                    UU
        tax                                     ; FB40 AA                       .
        .byte   $54                             ; FB41 54                       T
        eor     $55,x                           ; FB42 55 55                    UU
        lda     $556A                           ; FB44 AD 6A 55                 .jU
        cmp     $AA,x                           ; FB47 D5 AA                    ..
        lsr     $55,x                           ; FB49 56 55                    VU
        eor     $A9,x                           ; FB4B 55 A9                    U.
        rol     a                               ; FB4D 2A                       *
        eor     $95,x                           ; FB4E 55 95                    U.
        tax                                     ; FB50 AA                       .
        .byte   $54                             ; FB51 54                       T
        eor     $55,x                           ; FB52 55 55                    UU
        .byte   $AB                             ; FB54 AB                       .
        ror     a                               ; FB55 6A                       j
        eor     $D5,x                           ; FB56 55 D5                    U.
        tax                                     ; FB58 AA                       .
        lsr     $55,x                           ; FB59 56 55                    VU
        eor     $AA,x                           ; FB5B 55 AA                    U.
        lsr     a                               ; FB5D 4A                       J
        eor     $95,x                           ; FB5E 55 95                    U.
        tax                                     ; FB60 AA                       .
        .byte   $52                             ; FB61 52                       R
        eor     $D5,x                           ; FB62 55 D5                    U.
        tax                                     ; FB64 AA                       .
        .byte   $5A                             ; FB65 5A                       Z
        eor     $D5,x                           ; FB66 55 D5                    U.
        tax                                     ; FB68 AA                       .
        .byte   $5A                             ; FB69 5A                       Z
        eor     $A5,x                           ; FB6A 55 A5                    U.
        tax                                     ; FB6C AA                       .
        .byte   $52                             ; FB6D 52                       R
        eor     $95,x                           ; FB6E 55 95                    U.
        tax                                     ; FB70 AA                       .
        lsr     a                               ; FB71 4A                       J
        eor     $AD,x                           ; FB72 55 AD                    U.
        tax                                     ; FB74 AA                       .
        .byte   $5A                             ; FB75 5A                       Z
        eor     $D5,x                           ; FB76 55 D5                    U.
        tax                                     ; FB78 AA                       .
        ror     a                               ; FB79 6A                       j
        eor     $AA,x                           ; FB7A 55 AA                    U.
        tax                                     ; FB7C AA                       .
        .byte   $52                             ; FB7D 52                       R
        eor     $95,x                           ; FB7E 55 95                    U.
        tax                                     ; FB80 AA                       .
        rol     a                               ; FB81 2A                       *
        lda     $AA,x                           ; FB82 B5 AA                    ..
        tax                                     ; FB84 AA                       .
        lsr     $55,x                           ; FB85 56 55                    VU
        lda     $AA,x                           ; FB87 B5 AA                    ..
        tax                                     ; FB89 AA                       .
        tax                                     ; FB8A AA                       .
        tax                                     ; FB8B AA                       .
        tax                                     ; FB8C AA                       .
        .byte   $54                             ; FB8D 54                       T
        eor     $95,x                           ; FB8E 55 95                    U.
        tax                                     ; FB90 AA                       .
        tax                                     ; FB91 AA                       .
        tax                                     ; FB92 AA                       .
        tax                                     ; FB93 AA                       .
        tax                                     ; FB94 AA                       .
        eor     $55,x                           ; FB95 55 55                    UU
        lda     $AA,x                           ; FB97 B5 AA                    ..
        tax                                     ; FB99 AA                       .
        tax                                     ; FB9A AA                       .
        tax                                     ; FB9B AA                       .
        tax                                     ; FB9C AA                       .
        .byte   $54                             ; FB9D 54                       T
        eor     $95,x                           ; FB9E 55 95                    U.
        tax                                     ; FBA0 AA                       .
        tax                                     ; FBA1 AA                       .
        tax                                     ; FBA2 AA                       .
        tax                                     ; FBA3 AA                       .
        tax                                     ; FBA4 AA                       .
        eor     $55,x                           ; FBA5 55 55                    UU
        lda     $AA,x                           ; FBA7 B5 AA                    ..
        tax                                     ; FBA9 AA                       .
        tax                                     ; FBAA AA                       .
        tax                                     ; FBAB AA                       .
        rol     a                               ; FBAC 2A                       *
        eor     $55,x                           ; FBAD 55 55                    UU
        sta     $AA,x                           ; FBAF 95 AA                    ..
        tax                                     ; FBB1 AA                       .
        tax                                     ; FBB2 AA                       .
        tax                                     ; FBB3 AA                       .
        ror     a                               ; FBB4 6A                       j
        eor     $55,x                           ; FBB5 55 55                    UU
        lda     $AA,x                           ; FBB7 B5 AA                    ..
        tax                                     ; FBB9 AA                       .
        tax                                     ; FBBA AA                       .
        tax                                     ; FBBB AA                       .
        lsr     a                               ; FBBC 4A                       J
        eor     $55,x                           ; FBBD 55 55                    UU
        sta     $AA,x                           ; FBBF 95 AA                    ..
        tax                                     ; FBC1 AA                       .
        tax                                     ; FBC2 AA                       .
        tax                                     ; FBC3 AA                       .
        ror     a                               ; FBC4 6A                       j
        eor     $55,x                           ; FBC5 55 55                    UU
        lda     $AA,x                           ; FBC7 B5 AA                    ..
        tax                                     ; FBC9 AA                       .
        tax                                     ; FBCA AA                       .
        tax                                     ; FBCB AA                       .
        lsr     a                               ; FBCC 4A                       J
        eor     $55,x                           ; FBCD 55 55                    UU
        sta     $AA,x                           ; FBCF 95 AA                    ..
        tax                                     ; FBD1 AA                       .
        tax                                     ; FBD2 AA                       .
        tax                                     ; FBD3 AA                       .
        .byte   $5A                             ; FBD4 5A                       Z
        eor     $55,x                           ; FBD5 55 55                    UU
        lda     $AA,x                           ; FBD7 B5 AA                    ..
        tax                                     ; FBD9 AA                       .
        tax                                     ; FBDA AA                       .
        tax                                     ; FBDB AA                       .
        .byte   $52                             ; FBDC 52                       R
        eor     $55,x                           ; FBDD 55 55                    UU
        lda     $AA                             ; FBDF A5 AA                    ..
        tax                                     ; FBE1 AA                       .
        tax                                     ; FBE2 AA                       .
        tax                                     ; FBE3 AA                       .
        .byte   $5A                             ; FBE4 5A                       Z
        eor     $55,x                           ; FBE5 55 55                    UU
        lda     $AA,x                           ; FBE7 B5 AA                    ..
        tax                                     ; FBE9 AA                       .
        tax                                     ; FBEA AA                       .
        tax                                     ; FBEB AA                       .
        .byte   $52                             ; FBEC 52                       R
        eor     $55,x                           ; FBED 55 55                    UU
        lda     $AA                             ; FBEF A5 AA                    ..
        tax                                     ; FBF1 AA                       .
        tax                                     ; FBF2 AA                       .
        tax                                     ; FBF3 AA                       .
        lsr     $55,x                           ; FBF4 56 55                    VU
        eor     $B5,x                           ; FBF6 55 B5                    U.
        tax                                     ; FBF8 AA                       .
        tax                                     ; FBF9 AA                       .
        tax                                     ; FBFA AA                       .
        tax                                     ; FBFB AA                       .
        .byte   $54                             ; FBFC 54                       T
        eor     $55,x                           ; FBFD 55 55                    UU
        .byte   $A5                             ; FBFF A5                       .
LFC00:  tax                                     ; FC00 AA                       .
        tax                                     ; FC01 AA                       .
        tax                                     ; FC02 AA                       .
        tax                                     ; FC03 AA                       .
        eor     $55,x                           ; FC04 55 55                    UU
        eor     $B5,x                           ; FC06 55 B5                    U.
        tax                                     ; FC08 AA                       .
        tax                                     ; FC09 AA                       .
        tax                                     ; FC0A AA                       .
        rol     a                               ; FC0B 2A                       *
        eor     $55,x                           ; FC0C 55 55                    UU
        eor     $A5,x                           ; FC0E 55 A5                    U.
        tax                                     ; FC10 AA                       .
        tax                                     ; FC11 AA                       .
        tax                                     ; FC12 AA                       .
        ror     a                               ; FC13 6A                       j
        eor     $55,x                           ; FC14 55 55                    UU
        eor     $B5,x                           ; FC16 55 B5                    U.
        tax                                     ; FC18 AA                       .
        tax                                     ; FC19 AA                       .
        tax                                     ; FC1A AA                       .
        rol     a                               ; FC1B 2A                       *
        eor     $55,x                           ; FC1C 55 55                    UU
        eor     $A5,x                           ; FC1E 55 A5                    U.
        tax                                     ; FC20 AA                       .
        tax                                     ; FC21 AA                       .
        tax                                     ; FC22 AA                       .
        ror     a                               ; FC23 6A                       j
        eor     $55,x                           ; FC24 55 55                    UU
        eor     $B5,x                           ; FC26 55 B5                    U.
        tax                                     ; FC28 AA                       .
        tax                                     ; FC29 AA                       .
        tax                                     ; FC2A AA                       .
        lsr     a                               ; FC2B 4A                       J
        eor     $55,x                           ; FC2C 55 55                    UU
        eor     $A5,x                           ; FC2E 55 A5                    U.
        tax                                     ; FC30 AA                       .
        tax                                     ; FC31 AA                       .
        tax                                     ; FC32 AA                       .
        .byte   $5A                             ; FC33 5A                       Z
        eor     $55,x                           ; FC34 55 55                    UU
        eor     $B5,x                           ; FC36 55 B5                    U.
        tax                                     ; FC38 AA                       .
        tax                                     ; FC39 AA                       .
        tax                                     ; FC3A AA                       .
        .byte   $52                             ; FC3B 52                       R
        eor     $55,x                           ; FC3C 55 55                    UU
        eor     $A5,x                           ; FC3E 55 A5                    U.
        tax                                     ; FC40 AA                       .
        tax                                     ; FC41 AA                       .
        tax                                     ; FC42 AA                       .
        lsr     $55,x                           ; FC43 56 55                    VU
        eor     $55,x                           ; FC45 55 55                    UU
        lda     $AA,x                           ; FC47 B5 AA                    ..
        tax                                     ; FC49 AA                       .
        tax                                     ; FC4A AA                       .
        .byte   $54                             ; FC4B 54                       T
        eor     $55,x                           ; FC4C 55 55                    UU
        eor     $95,x                           ; FC4E 55 95                    U.
        tax                                     ; FC50 AA                       .
        tax                                     ; FC51 AA                       .
        tax                                     ; FC52 AA                       .
        eor     $55,x                           ; FC53 55 55                    UU
        eor     $55,x                           ; FC55 55 55                    UU
        cmp     $AA,x                           ; FC57 D5 AA                    ..
        tax                                     ; FC59 AA                       .
        rol     a                               ; FC5A 2A                       *
        eor     $55,x                           ; FC5B 55 55                    UU
        eor     $55,x                           ; FC5D 55 55                    UU
        sta     $AA,x                           ; FC5F 95 AA                    ..
        tax                                     ; FC61 AA                       .
        ror     a                               ; FC62 6A                       j
        eor     $55,x                           ; FC63 55 55                    UU
        eor     $55,x                           ; FC65 55 55                    UU
        cmp     $AA,x                           ; FC67 D5 AA                    ..
        tax                                     ; FC69 AA                       .
        lsr     a                               ; FC6A 4A                       J
        eor     $55,x                           ; FC6B 55 55                    UU
        eor     $55,x                           ; FC6D 55 55                    UU
        eor     $AA,x                           ; FC6F 55 AA                    U.
        tax                                     ; FC71 AA                       .
        .byte   $5A                             ; FC72 5A                       Z
        eor     $55,x                           ; FC73 55 55                    UU
        eor     $55,x                           ; FC75 55 55                    UU
        eor     $AB,x                           ; FC77 55 AB                    U.
        tax                                     ; FC79 AA                       .
        .byte   $52                             ; FC7A 52                       R
        eor     $55,x                           ; FC7B 55 55                    UU
        eor     $55,x                           ; FC7D 55 55                    UU
        eor     $A9,x                           ; FC7F 55 A9                    U.
        tax                                     ; FC81 AA                       .
        eor     $55,x                           ; FC82 55 55                    UU
        eor     $55,x                           ; FC84 55 55                    UU
        eor     $55,x                           ; FC86 55 55                    UU
        lda     $554A                           ; FC88 AD 4A 55                 .JU
        eor     $55,x                           ; FC8B 55 55                    UU
        eor     $55,x                           ; FC8D 55 55                    UU
        eor     $A5,x                           ; FC8F 55 A5                    U.
        .byte   $5A                             ; FC91 5A                       Z
        eor     $55,x                           ; FC92 55 55                    UU
        eor     $55,x                           ; FC94 55 55                    UU
        eor     $55,x                           ; FC96 55 55                    UU
        eor     $55,x                           ; FC98 55 55                    UU
        eor     $55,x                           ; FC9A 55 55                    UU
        eor     $55,x                           ; FC9C 55 55                    UU
        eor     $55,x                           ; FC9E 55 55                    UU
        eor     $55,x                           ; FCA0 55 55                    UU
        eor     $55,x                           ; FCA2 55 55                    UU
        eor     $55,x                           ; FCA4 55 55                    UU
        eor     $55,x                           ; FCA6 55 55                    UU
        eor     $55,x                           ; FCA8 55 55                    UU
        eor     $55,x                           ; FCAA 55 55                    UU
        eor     $55,x                           ; FCAC 55 55                    UU
        eor     $55,x                           ; FCAE 55 55                    UU
        eor     $55,x                           ; FCB0 55 55                    UU
        eor     $55,x                           ; FCB2 55 55                    UU
        eor     $55,x                           ; FCB4 55 55                    UU
        eor     $55,x                           ; FCB6 55 55                    UU
        eor     $55,x                           ; FCB8 55 55                    UU
        eor     $55,x                           ; FCBA 55 55                    UU
        eor     $55,x                           ; FCBC 55 55                    UU
        eor     $55,x                           ; FCBE 55 55                    UU
        eor     $55,x                           ; FCC0 55 55                    UU
        eor     $55,x                           ; FCC2 55 55                    UU
        eor     $55,x                           ; FCC4 55 55                    UU
        eor     $55,x                           ; FCC6 55 55                    UU
        eor     $55,x                           ; FCC8 55 55                    UU
        eor     $55,x                           ; FCCA 55 55                    UU
        eor     $55,x                           ; FCCC 55 55                    UU
        eor     $55,x                           ; FCCE 55 55                    UU
        eor     $55,x                           ; FCD0 55 55                    UU
        eor     $55,x                           ; FCD2 55 55                    UU
        eor     $55,x                           ; FCD4 55 55                    UU
        eor     $55,x                           ; FCD6 55 55                    UU
        eor     $55,x                           ; FCD8 55 55                    UU
        eor     $55,x                           ; FCDA 55 55                    UU
        eor     $55,x                           ; FCDC 55 55                    UU
        eor     $55,x                           ; FCDE 55 55                    UU
        eor     $55,x                           ; FCE0 55 55                    UU
        eor     $55,x                           ; FCE2 55 55                    UU
        eor     $55,x                           ; FCE4 55 55                    UU
        eor     $55,x                           ; FCE6 55 55                    UU
        eor     $55,x                           ; FCE8 55 55                    UU
        eor     $55,x                           ; FCEA 55 55                    UU
        eor     $55,x                           ; FCEC 55 55                    UU
        eor     $55,x                           ; FCEE 55 55                    UU
        eor     $55,x                           ; FCF0 55 55                    UU
        eor     $55,x                           ; FCF2 55 55                    UU
        eor     $55,x                           ; FCF4 55 55                    UU
        eor     $55,x                           ; FCF6 55 55                    UU
        eor     $55,x                           ; FCF8 55 55                    UU
        eor     $55,x                           ; FCFA 55 55                    UU
        eor     $55,x                           ; FCFC 55 55                    UU
        eor     $55,x                           ; FCFE 55 55                    UU
        eor     $55,x                           ; FD00 55 55                    UU
        eor     $55,x                           ; FD02 55 55                    UU
        eor     $55,x                           ; FD04 55 55                    UU
        eor     $55,x                           ; FD06 55 55                    UU
        eor     $55,x                           ; FD08 55 55                    UU
        eor     $55,x                           ; FD0A 55 55                    UU
        eor     $55,x                           ; FD0C 55 55                    UU
        eor     $55,x                           ; FD0E 55 55                    UU
        eor     $55,x                           ; FD10 55 55                    UU
        eor     $55,x                           ; FD12 55 55                    UU
        eor     $55,x                           ; FD14 55 55                    UU
        eor     $55,x                           ; FD16 55 55                    UU
        eor     $55,x                           ; FD18 55 55                    UU
        eor     $55,x                           ; FD1A 55 55                    UU
        eor     $55,x                           ; FD1C 55 55                    UU
        eor     $55,x                           ; FD1E 55 55                    UU
        eor     $55,x                           ; FD20 55 55                    UU
        eor     $55,x                           ; FD22 55 55                    UU
        eor     $55,x                           ; FD24 55 55                    UU
        eor     $55,x                           ; FD26 55 55                    UU
        eor     $55,x                           ; FD28 55 55                    UU
        eor     $55,x                           ; FD2A 55 55                    UU
        eor     $55,x                           ; FD2C 55 55                    UU
        eor     $55,x                           ; FD2E 55 55                    UU
        eor     $55,x                           ; FD30 55 55                    UU
        eor     $55,x                           ; FD32 55 55                    UU
        eor     $55,x                           ; FD34 55 55                    UU
        eor     $55,x                           ; FD36 55 55                    UU
        eor     $55,x                           ; FD38 55 55                    UU
        eor     $55,x                           ; FD3A 55 55                    UU
        eor     $55,x                           ; FD3C 55 55                    UU
        eor     $55,x                           ; FD3E 55 55                    UU
        eor     $55,x                           ; FD40 55 55                    UU
        eor     $55,x                           ; FD42 55 55                    UU
        eor     $55,x                           ; FD44 55 55                    UU
        eor     $55,x                           ; FD46 55 55                    UU
        eor     $55,x                           ; FD48 55 55                    UU
        eor     $55,x                           ; FD4A 55 55                    UU
        eor     $55,x                           ; FD4C 55 55                    UU
        eor     $55,x                           ; FD4E 55 55                    UU
        eor     $55,x                           ; FD50 55 55                    UU
        eor     $55,x                           ; FD52 55 55                    UU
        eor     $55,x                           ; FD54 55 55                    UU
        eor     $55,x                           ; FD56 55 55                    UU
        eor     $55,x                           ; FD58 55 55                    UU
        eor     $55,x                           ; FD5A 55 55                    UU
        eor     $55,x                           ; FD5C 55 55                    UU
        eor     $55,x                           ; FD5E 55 55                    UU
        eor     $55,x                           ; FD60 55 55                    UU
        eor     $55,x                           ; FD62 55 55                    UU
        eor     $55,x                           ; FD64 55 55                    UU
        eor     $55,x                           ; FD66 55 55                    UU
        eor     $55,x                           ; FD68 55 55                    UU
        eor     $55,x                           ; FD6A 55 55                    UU
        eor     $55,x                           ; FD6C 55 55                    UU
        eor     $55,x                           ; FD6E 55 55                    UU
        eor     $55,x                           ; FD70 55 55                    UU
        eor     $55,x                           ; FD72 55 55                    UU
        eor     $55,x                           ; FD74 55 55                    UU
        eor     $55,x                           ; FD76 55 55                    UU
        eor     $55,x                           ; FD78 55 55                    UU
        eor     $55,x                           ; FD7A 55 55                    UU
        eor     $55,x                           ; FD7C 55 55                    UU
        eor     $55,x                           ; FD7E 55 55                    UU
        eor     $55,x                           ; FD80 55 55                    UU
        eor     $55,x                           ; FD82 55 55                    UU
        eor     $55,x                           ; FD84 55 55                    UU
        eor     $55,x                           ; FD86 55 55                    UU
        eor     $55,x                           ; FD88 55 55                    UU
        eor     $55,x                           ; FD8A 55 55                    UU
        eor     $55,x                           ; FD8C 55 55                    UU
        eor     $55,x                           ; FD8E 55 55                    UU
        eor     $55,x                           ; FD90 55 55                    UU
        eor     $55,x                           ; FD92 55 55                    UU
        eor     $55,x                           ; FD94 55 55                    UU
        eor     $55,x                           ; FD96 55 55                    UU
        eor     $55,x                           ; FD98 55 55                    UU
        eor     $55,x                           ; FD9A 55 55                    UU
        eor     $55,x                           ; FD9C 55 55                    UU
        eor     $55,x                           ; FD9E 55 55                    UU
        eor     $55,x                           ; FDA0 55 55                    UU
        eor     $55,x                           ; FDA2 55 55                    UU
        eor     $55,x                           ; FDA4 55 55                    UU
        eor     $55,x                           ; FDA6 55 55                    UU
        eor     $55,x                           ; FDA8 55 55                    UU
        eor     $55,x                           ; FDAA 55 55                    UU
        eor     $55,x                           ; FDAC 55 55                    UU
        eor     $55,x                           ; FDAE 55 55                    UU
        eor     $55,x                           ; FDB0 55 55                    UU
        eor     $55,x                           ; FDB2 55 55                    UU
        .byte   $55                             ; FDB4 55                       U
LFDB5:  eor     $55,x                           ; FDB5 55 55                    UU
        eor     $55,x                           ; FDB7 55 55                    UU
        eor     $55,x                           ; FDB9 55 55                    UU
        eor     $55,x                           ; FDBB 55 55                    UU
        eor     $55,x                           ; FDBD 55 55                    UU
        eor     $55,x                           ; FDBF 55 55                    UU
        eor     $55,x                           ; FDC1 55 55                    UU
        eor     $55,x                           ; FDC3 55 55                    UU
        eor     $55,x                           ; FDC5 55 55                    UU
        eor     $55,x                           ; FDC7 55 55                    UU
        eor     $55,x                           ; FDC9 55 55                    UU
        eor     $55,x                           ; FDCB 55 55                    UU
        eor     $55,x                           ; FDCD 55 55                    UU
        eor     $55,x                           ; FDCF 55 55                    UU
        eor     $55,x                           ; FDD1 55 55                    UU
        eor     $55,x                           ; FDD3 55 55                    UU
        eor     $55,x                           ; FDD5 55 55                    UU
        eor     $55,x                           ; FDD7 55 55                    UU
        eor     $55,x                           ; FDD9 55 55                    UU
        eor     $55,x                           ; FDDB 55 55                    UU
        eor     $55,x                           ; FDDD 55 55                    UU
        eor     $55,x                           ; FDDF 55 55                    UU
        eor     $55,x                           ; FDE1 55 55                    UU
        eor     $55,x                           ; FDE3 55 55                    UU
        eor     $55,x                           ; FDE5 55 55                    UU
        eor     $55,x                           ; FDE7 55 55                    UU
        eor     $55,x                           ; FDE9 55 55                    UU
        eor     $55,x                           ; FDEB 55 55                    UU
        eor     $55,x                           ; FDED 55 55                    UU
        eor     $55,x                           ; FDEF 55 55                    UU
        eor     $55,x                           ; FDF1 55 55                    UU
        eor     $55,x                           ; FDF3 55 55                    UU
        eor     $55,x                           ; FDF5 55 55                    UU
        eor     $55,x                           ; FDF7 55 55                    UU
        eor     $55,x                           ; FDF9 55 55                    UU
        eor     $55,x                           ; FDFB 55 55                    UU
        eor     $55,x                           ; FDFD 55 55                    UU
        eor     $55,x                           ; FDFF 55 55                    UU
        eor     $55,x                           ; FE01 55 55                    UU
        eor     $55,x                           ; FE03 55 55                    UU
        eor     $55,x                           ; FE05 55 55                    UU
        eor     $55,x                           ; FE07 55 55                    UU
        eor     $55,x                           ; FE09 55 55                    UU
        eor     $55,x                           ; FE0B 55 55                    UU
        eor     $55,x                           ; FE0D 55 55                    UU
        eor     $55,x                           ; FE0F 55 55                    UU
        eor     $55,x                           ; FE11 55 55                    UU
        eor     $55,x                           ; FE13 55 55                    UU
        eor     $55,x                           ; FE15 55 55                    UU
        eor     $55,x                           ; FE17 55 55                    UU
        eor     $55,x                           ; FE19 55 55                    UU
        eor     $55,x                           ; FE1B 55 55                    UU
        eor     $55,x                           ; FE1D 55 55                    UU
        eor     $55,x                           ; FE1F 55 55                    UU
        eor     $55,x                           ; FE21 55 55                    UU
        eor     $55,x                           ; FE23 55 55                    UU
        eor     $55,x                           ; FE25 55 55                    UU
        eor     $55,x                           ; FE27 55 55                    UU
        eor     $55,x                           ; FE29 55 55                    UU
        eor     $55,x                           ; FE2B 55 55                    UU
        eor     $55,x                           ; FE2D 55 55                    UU
        eor     $55,x                           ; FE2F 55 55                    UU
        eor     $55,x                           ; FE31 55 55                    UU
        eor     $55,x                           ; FE33 55 55                    UU
        eor     $55,x                           ; FE35 55 55                    UU
        eor     $55,x                           ; FE37 55 55                    UU
        eor     $55,x                           ; FE39 55 55                    UU
        eor     $55,x                           ; FE3B 55 55                    UU
        eor     $55,x                           ; FE3D 55 55                    UU
        eor     $55,x                           ; FE3F 55 55                    UU
        eor     $55,x                           ; FE41 55 55                    UU
        eor     $55,x                           ; FE43 55 55                    UU
        eor     $55,x                           ; FE45 55 55                    UU
        eor     $55,x                           ; FE47 55 55                    UU
        eor     $55,x                           ; FE49 55 55                    UU
        eor     $55,x                           ; FE4B 55 55                    UU
        eor     $55,x                           ; FE4D 55 55                    UU
        eor     $55,x                           ; FE4F 55 55                    UU
        eor     $55,x                           ; FE51 55 55                    UU
        eor     $55,x                           ; FE53 55 55                    UU
        eor     $55,x                           ; FE55 55 55                    UU
        eor     $55,x                           ; FE57 55 55                    UU
        eor     $55,x                           ; FE59 55 55                    UU
        eor     $55,x                           ; FE5B 55 55                    UU
        eor     $55,x                           ; FE5D 55 55                    UU
        eor     $55,x                           ; FE5F 55 55                    UU
        eor     $55,x                           ; FE61 55 55                    UU
        eor     $55,x                           ; FE63 55 55                    UU
        eor     $55,x                           ; FE65 55 55                    UU
        eor     $55,x                           ; FE67 55 55                    UU
        eor     $55,x                           ; FE69 55 55                    UU
        eor     $55,x                           ; FE6B 55 55                    UU
        eor     $55,x                           ; FE6D 55 55                    UU
        eor     $55,x                           ; FE6F 55 55                    UU
        eor     $55,x                           ; FE71 55 55                    UU
        eor     $55,x                           ; FE73 55 55                    UU
        eor     $55,x                           ; FE75 55 55                    UU
        eor     $55,x                           ; FE77 55 55                    UU
        eor     $55,x                           ; FE79 55 55                    UU
        eor     $55,x                           ; FE7B 55 55                    UU
        eor     $55,x                           ; FE7D 55 55                    UU
        eor     $55,x                           ; FE7F 55 55                    UU
        eor     $55,x                           ; FE81 55 55                    UU
        eor     $55,x                           ; FE83 55 55                    UU
        eor     $55,x                           ; FE85 55 55                    UU
        eor     $55,x                           ; FE87 55 55                    UU
        eor     $55,x                           ; FE89 55 55                    UU
        eor     $55,x                           ; FE8B 55 55                    UU
        eor     $55,x                           ; FE8D 55 55                    UU
        eor     $55,x                           ; FE8F 55 55                    UU
        eor     $55,x                           ; FE91 55 55                    UU
        eor     $55,x                           ; FE93 55 55                    UU
        eor     $55,x                           ; FE95 55 55                    UU
        eor     $55,x                           ; FE97 55 55                    UU
        eor     $55,x                           ; FE99 55 55                    UU
        eor     $55,x                           ; FE9B 55 55                    UU
        eor     $55,x                           ; FE9D 55 55                    UU
        eor     $55,x                           ; FE9F 55 55                    UU
        eor     $55,x                           ; FEA1 55 55                    UU
        eor     $55,x                           ; FEA3 55 55                    UU
        eor     $55,x                           ; FEA5 55 55                    UU
        eor     $55,x                           ; FEA7 55 55                    UU
        eor     $55,x                           ; FEA9 55 55                    UU
        eor     $55,x                           ; FEAB 55 55                    UU
        eor     $55,x                           ; FEAD 55 55                    UU
        eor     $D5,x                           ; FEAF 55 D5                    U.
        lsr     $FB                             ; FEB1 46 FB                    F.
        eor     $55,x                           ; FEB3 55 55                    UU
        eor     $55,x                           ; FEB5 55 55                    UU
        eor     $55,x                           ; FEB7 55 55                    UU
        eor     $55,x                           ; FEB9 55 55                    UU
        eor     $55,x                           ; FEBB 55 55                    UU
        eor     $55,x                           ; FEBD 55 55                    UU
        eor     $55,x                           ; FEBF 55 55                    UU
        brk                                     ; FEC1 00                       .
        brk                                     ; FEC2 00                       .
        brk                                     ; FEC3 00                       .
        brk                                     ; FEC4 00                       .
        brk                                     ; FEC5 00                       .
        brk                                     ; FEC6 00                       .
        brk                                     ; FEC7 00                       .
        brk                                     ; FEC8 00                       .
        brk                                     ; FEC9 00                       .
        brk                                     ; FECA 00                       .
        brk                                     ; FECB 00                       .
        brk                                     ; FECC 00                       .
        brk                                     ; FECD 00                       .
        brk                                     ; FECE 00                       .
        brk                                     ; FECF 00                       .
        brk                                     ; FED0 00                       .
        brk                                     ; FED1 00                       .
        brk                                     ; FED2 00                       .
        brk                                     ; FED3 00                       .
        brk                                     ; FED4 00                       .
        brk                                     ; FED5 00                       .
        brk                                     ; FED6 00                       .
        brk                                     ; FED7 00                       .
        brk                                     ; FED8 00                       .
        brk                                     ; FED9 00                       .
        brk                                     ; FEDA 00                       .
        brk                                     ; FEDB 00                       .
        brk                                     ; FEDC 00                       .
        brk                                     ; FEDD 00                       .
        brk                                     ; FEDE 00                       .
        brk                                     ; FEDF 00                       .
        brk                                     ; FEE0 00                       .
        brk                                     ; FEE1 00                       .
        brk                                     ; FEE2 00                       .
        brk                                     ; FEE3 00                       .
        brk                                     ; FEE4 00                       .
        brk                                     ; FEE5 00                       .
        brk                                     ; FEE6 00                       .
        brk                                     ; FEE7 00                       .
        brk                                     ; FEE8 00                       .
        brk                                     ; FEE9 00                       .
        brk                                     ; FEEA 00                       .
        brk                                     ; FEEB 00                       .
        brk                                     ; FEEC 00                       .
        brk                                     ; FEED 00                       .
        brk                                     ; FEEE 00                       .
        brk                                     ; FEEF 00                       .
        brk                                     ; FEF0 00                       .
        brk                                     ; FEF1 00                       .
        brk                                     ; FEF2 00                       .
        brk                                     ; FEF3 00                       .
        brk                                     ; FEF4 00                       .
        brk                                     ; FEF5 00                       .
        brk                                     ; FEF6 00                       .
        brk                                     ; FEF7 00                       .
        brk                                     ; FEF8 00                       .
        brk                                     ; FEF9 00                       .
        brk                                     ; FEFA 00                       .
        brk                                     ; FEFB 00                       .
        brk                                     ; FEFC 00                       .
        brk                                     ; FEFD 00                       .
        brk                                     ; FEFE 00                       .
        brk                                     ; FEFF 00                       .
        brk                                     ; FF00 00                       .
        brk                                     ; FF01 00                       .
        brk                                     ; FF02 00                       .
        brk                                     ; FF03 00                       .
        brk                                     ; FF04 00                       .
        brk                                     ; FF05 00                       .
        brk                                     ; FF06 00                       .
        brk                                     ; FF07 00                       .
        brk                                     ; FF08 00                       .
        brk                                     ; FF09 00                       .
        brk                                     ; FF0A 00                       .
        brk                                     ; FF0B 00                       .
        brk                                     ; FF0C 00                       .
        brk                                     ; FF0D 00                       .
        brk                                     ; FF0E 00                       .
        brk                                     ; FF0F 00                       .
        brk                                     ; FF10 00                       .
        brk                                     ; FF11 00                       .
        brk                                     ; FF12 00                       .
        brk                                     ; FF13 00                       .
        brk                                     ; FF14 00                       .
        brk                                     ; FF15 00                       .
        brk                                     ; FF16 00                       .
        brk                                     ; FF17 00                       .
        brk                                     ; FF18 00                       .
        brk                                     ; FF19 00                       .
        brk                                     ; FF1A 00                       .
        brk                                     ; FF1B 00                       .
        brk                                     ; FF1C 00                       .
        brk                                     ; FF1D 00                       .
        brk                                     ; FF1E 00                       .
        brk                                     ; FF1F 00                       .
        brk                                     ; FF20 00                       .
        brk                                     ; FF21 00                       .
        brk                                     ; FF22 00                       .
        brk                                     ; FF23 00                       .
        brk                                     ; FF24 00                       .
        brk                                     ; FF25 00                       .
        brk                                     ; FF26 00                       .
        brk                                     ; FF27 00                       .
        brk                                     ; FF28 00                       .
        brk                                     ; FF29 00                       .
        brk                                     ; FF2A 00                       .
        brk                                     ; FF2B 00                       .
        brk                                     ; FF2C 00                       .
        brk                                     ; FF2D 00                       .
        brk                                     ; FF2E 00                       .
        brk                                     ; FF2F 00                       .
        brk                                     ; FF30 00                       .
        brk                                     ; FF31 00                       .
        brk                                     ; FF32 00                       .
        brk                                     ; FF33 00                       .
        brk                                     ; FF34 00                       .
        brk                                     ; FF35 00                       .
        brk                                     ; FF36 00                       .
        brk                                     ; FF37 00                       .
        brk                                     ; FF38 00                       .
        brk                                     ; FF39 00                       .
        brk                                     ; FF3A 00                       .
        brk                                     ; FF3B 00                       .
        brk                                     ; FF3C 00                       .
        brk                                     ; FF3D 00                       .
        brk                                     ; FF3E 00                       .
        brk                                     ; FF3F 00                       .
        brk                                     ; FF40 00                       .
        brk                                     ; FF41 00                       .
        brk                                     ; FF42 00                       .
        brk                                     ; FF43 00                       .
        brk                                     ; FF44 00                       .
        brk                                     ; FF45 00                       .
        brk                                     ; FF46 00                       .
        brk                                     ; FF47 00                       .
        brk                                     ; FF48 00                       .
        brk                                     ; FF49 00                       .
        brk                                     ; FF4A 00                       .
        brk                                     ; FF4B 00                       .
        brk                                     ; FF4C 00                       .
        brk                                     ; FF4D 00                       .
        brk                                     ; FF4E 00                       .
        brk                                     ; FF4F 00                       .
        brk                                     ; FF50 00                       .
        brk                                     ; FF51 00                       .
        brk                                     ; FF52 00                       .
        brk                                     ; FF53 00                       .
        brk                                     ; FF54 00                       .
        brk                                     ; FF55 00                       .
        brk                                     ; FF56 00                       .
        brk                                     ; FF57 00                       .
        brk                                     ; FF58 00                       .
        brk                                     ; FF59 00                       .
        brk                                     ; FF5A 00                       .
        brk                                     ; FF5B 00                       .
        brk                                     ; FF5C 00                       .
        brk                                     ; FF5D 00                       .
        brk                                     ; FF5E 00                       .
        brk                                     ; FF5F 00                       .
        brk                                     ; FF60 00                       .
        brk                                     ; FF61 00                       .
        brk                                     ; FF62 00                       .
        brk                                     ; FF63 00                       .
        brk                                     ; FF64 00                       .
        brk                                     ; FF65 00                       .
        brk                                     ; FF66 00                       .
        brk                                     ; FF67 00                       .
        brk                                     ; FF68 00                       .
        brk                                     ; FF69 00                       .
        brk                                     ; FF6A 00                       .
        brk                                     ; FF6B 00                       .
        brk                                     ; FF6C 00                       .
        brk                                     ; FF6D 00                       .
        brk                                     ; FF6E 00                       .
        brk                                     ; FF6F 00                       .
        brk                                     ; FF70 00                       .
        brk                                     ; FF71 00                       .
        brk                                     ; FF72 00                       .
        brk                                     ; FF73 00                       .
        brk                                     ; FF74 00                       .
        brk                                     ; FF75 00                       .
        brk                                     ; FF76 00                       .
        brk                                     ; FF77 00                       .
        brk                                     ; FF78 00                       .
        brk                                     ; FF79 00                       .
        brk                                     ; FF7A 00                       .
        brk                                     ; FF7B 00                       .
        brk                                     ; FF7C 00                       .
        brk                                     ; FF7D 00                       .
        brk                                     ; FF7E 00                       .
        brk                                     ; FF7F 00                       .
        brk                                     ; FF80 00                       .
        brk                                     ; FF81 00                       .
        brk                                     ; FF82 00                       .
        brk                                     ; FF83 00                       .
        brk                                     ; FF84 00                       .
        brk                                     ; FF85 00                       .
        brk                                     ; FF86 00                       .
        brk                                     ; FF87 00                       .
        brk                                     ; FF88 00                       .
        brk                                     ; FF89 00                       .
        brk                                     ; FF8A 00                       .
        brk                                     ; FF8B 00                       .
        brk                                     ; FF8C 00                       .
        brk                                     ; FF8D 00                       .
        brk                                     ; FF8E 00                       .
        brk                                     ; FF8F 00                       .
        brk                                     ; FF90 00                       .
        brk                                     ; FF91 00                       .
        brk                                     ; FF92 00                       .
        brk                                     ; FF93 00                       .
        brk                                     ; FF94 00                       .
        brk                                     ; FF95 00                       .
        brk                                     ; FF96 00                       .
        brk                                     ; FF97 00                       .
        brk                                     ; FF98 00                       .
        brk                                     ; FF99 00                       .
        brk                                     ; FF9A 00                       .
        brk                                     ; FF9B 00                       .
        brk                                     ; FF9C 00                       .
        brk                                     ; FF9D 00                       .
        brk                                     ; FF9E 00                       .
        brk                                     ; FF9F 00                       .
        brk                                     ; FFA0 00                       .
        brk                                     ; FFA1 00                       .
        brk                                     ; FFA2 00                       .
        brk                                     ; FFA3 00                       .
        brk                                     ; FFA4 00                       .
        brk                                     ; FFA5 00                       .
        brk                                     ; FFA6 00                       .
        brk                                     ; FFA7 00                       .
        brk                                     ; FFA8 00                       .
        brk                                     ; FFA9 00                       .
LFFAA:  brk                                     ; FFAA 00                       .
        brk                                     ; FFAB 00                       .
        brk                                     ; FFAC 00                       .
        brk                                     ; FFAD 00                       .
        brk                                     ; FFAE 00                       .
        brk                                     ; FFAF 00                       .
        brk                                     ; FFB0 00                       .
        brk                                     ; FFB1 00                       .
        brk                                     ; FFB2 00                       .
        brk                                     ; FFB3 00                       .
        brk                                     ; FFB4 00                       .
        brk                                     ; FFB5 00                       .
        brk                                     ; FFB6 00                       .
        brk                                     ; FFB7 00                       .
        brk                                     ; FFB8 00                       .
        brk                                     ; FFB9 00                       .
        brk                                     ; FFBA 00                       .
        brk                                     ; FFBB 00                       .
        brk                                     ; FFBC 00                       .
        brk                                     ; FFBD 00                       .
        brk                                     ; FFBE 00                       .
        brk                                     ; FFBF 00                       .
        brk                                     ; FFC0 00                       .
        brk                                     ; FFC1 00                       .
        brk                                     ; FFC2 00                       .
        brk                                     ; FFC3 00                       .
        brk                                     ; FFC4 00                       .
        brk                                     ; FFC5 00                       .
        brk                                     ; FFC6 00                       .
LFFC7:  brk                                     ; FFC7 00                       .
        brk                                     ; FFC8 00                       .
        brk                                     ; FFC9 00                       .
        brk                                     ; FFCA 00                       .
        brk                                     ; FFCB 00                       .
        brk                                     ; FFCC 00                       .
        brk                                     ; FFCD 00                       .
        brk                                     ; FFCE 00                       .
        brk                                     ; FFCF 00                       .
        brk                                     ; FFD0 00                       .
        brk                                     ; FFD1 00                       .
        brk                                     ; FFD2 00                       .
        brk                                     ; FFD3 00                       .
LFFD4:  brk                                     ; FFD4 00                       .
        brk                                     ; FFD5 00                       .
        brk                                     ; FFD6 00                       .
        brk                                     ; FFD7 00                       .
        brk                                     ; FFD8 00                       .
        brk                                     ; FFD9 00                       .
        brk                                     ; FFDA 00                       .
        brk                                     ; FFDB 00                       .
        brk                                     ; FFDC 00                       .
        brk                                     ; FFDD 00                       .
        brk                                     ; FFDE 00                       .
        brk                                     ; FFDF 00                       .
        brk                                     ; FFE0 00                       .
        brk                                     ; FFE1 00                       .
        brk                                     ; FFE2 00                       .
        brk                                     ; FFE3 00                       .
        brk                                     ; FFE4 00                       .
        brk                                     ; FFE5 00                       .
        brk                                     ; FFE6 00                       .
        brk                                     ; FFE7 00                       .
        brk                                     ; FFE8 00                       .
        brk                                     ; FFE9 00                       .
        brk                                     ; FFEA 00                       .
        brk                                     ; FFEB 00                       .
        brk                                     ; FFEC 00                       .
        brk                                     ; FFED 00                       .
        brk                                     ; FFEE 00                       .
        brk                                     ; FFEF 00                       .
LFFF0:  brk                                     ; FFF0 00                       .
        brk                                     ; FFF1 00                       .
        brk                                     ; FFF2 00                       .
        brk                                     ; FFF3 00                       .
        brk                                     ; FFF4 00                       .
        brk                                     ; FFF5 00                       .
        brk                                     ; FFF6 00                       .
        brk                                     ; FFF7 00                       .
        brk                                     ; FFF8 00                       .
        brk                                     ; FFF9 00                       .
;        brk                                     ; FFFA 00                       .
;        brk                                     ; FFFB 00                       .
;        brk                                     ; FFFC 00                       .
;        brk                                     ; FFFD 00                       .
;        brk                                     ; FFFE 00                       .
;        brk                                     ; FFFF 00                       .
VECTORS
; mod
