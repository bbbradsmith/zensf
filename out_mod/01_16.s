.include "../mod.inc"
.segment "MF000"

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-23 02:19:29
; Input file: out_src\01_16.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L6D55           := $6D55
L9489           := $9489
; ----------------------------------------------------------------------------
        eor     $2D,x                           ; F000 55 2D                    U-
        eor     $25,x                           ; F002 55 25                    U%
        lda     #$2A                            ; F004 A9 2A                    .*
        eor     $5A,x                           ; F006 55 5A                    UZ
        .byte   $6B                             ; F008 6B                       k
        lda     $ED,x                           ; F009 B5 ED                    ..
        inc     $B56E                           ; F00B EE 6E B5                 .n.
        lsr     $55,x                           ; F00E 56 55                    VU
        sta     $AA,x                           ; F010 95 AA                    ..
        sty     $54,x                           ; F012 94 54                    .T
        sta     $5A,x                           ; F014 95 5A                    .Z
        eor     $6D,x                           ; F016 55 6D                    Um
        lda     $555A                           ; F018 AD 5A 55                 .ZU
        sta     $24,x                           ; F01B 95 24                    .$
        ora     #$89                            ; F01D 09 89                    ..
        jsr     L6D55                           ; F01F 20 55 6D                  Um
        .byte   $EF                             ; F022 EF                       .
        .byte   $BF                             ; F023 BF                       .
        .byte   $5B                             ; F024 5B                       [
        eor     $09,x                           ; F025 55 09                    U.
        pha                                     ; F027 48                       H
        .byte   $44                             ; F028 44                       D
        .byte   $92                             ; F029 92                       .
        .byte   $52                             ; F02A 52                       R
        eor     $AD,x                           ; F02B 55 AD                    U.
        eor     $6D,x                           ; F02D 55 6D                    Um
        eor     $B5,x                           ; F02F 55 B5                    U.
        .byte   $52                             ; F031 52                       R
        eor     $92,x                           ; F032 55 92                    U.
        tax                                     ; F034 AA                       .
        .byte   $52                             ; F035 52                       R
        eor     $B5,x                           ; F036 55 B5                    U.
        dec     $DA,x                           ; F038 D6 DA                    ..
        cmp     $56DE,x                         ; F03A DD DE 56                 ..V
        .byte   $AB                             ; F03D AB                       .
        eor     $55,x                           ; F03E 55 55                    UU
        tax                                     ; F040 AA                       .
        .byte   $52                             ; F041 52                       R
        eor     #$55                            ; F042 49 55                    IU
        lda     #$55                            ; F044 A9 55                    .U
        cmp     $56,x                           ; F046 D5 56                    .V
        .byte   $AB                             ; F048 AB                       .
        lsr     $55,x                           ; F049 56 55                    VU
        eor     #$92                            ; F04B 49 92                    I.
        bcc     LF05F                           ; F04D 90 10                    ..
        .byte   $52                             ; F04F 52                       R
        cmp     $EE,x                           ; F050 D5 EE                    ..
        sbc     $55BB,x                         ; F052 FD BB 55                 ..U
        and     $81                             ; F055 25 81                    %.
        .byte   $44                             ; F057 44                       D
        bit     $25                             ; F058 24 25                    $%
        eor     $B5,x                           ; F05A 55 B5                    U.
        lsr     $B5,x                           ; F05C 56 B5                    V.
        .byte   $56                             ; F05E 56                       V
LF05F:  eor     $AB,x                           ; F05F 55 AB                    U.
        .byte   $54                             ; F061 54                       T
        and     $A5                             ; F062 25 A5                    %.
        tax                                     ; F064 AA                       .
        .byte   $54                             ; F065 54                       T
        cmp     $5A,x                           ; F066 D5 5A                    .Z
        .byte   $AB                             ; F068 AB                       .
        .byte   $DB                             ; F069 DB                       .
        cmp     $D5AE,x                         ; F06A DD AE D5                 ...
        .byte   $5A                             ; F06D 5A                       Z
        eor     $A9,x                           ; F06E 55 A9                    U.
        .byte   $54                             ; F070 54                       T
        sta     $54,x                           ; F071 95 54                    .T
        lda     $6A                             ; F073 A5 6A                    .j
        eor     $AD,x                           ; F075 55 AD                    U.
        eor     $AB,x                           ; F077 55 AB                    U.
        eor     $25,x                           ; F079 55 25                    U%
        eor     #$09                            ; F07B 49 09                    I.
        ora     #$21                            ; F07D 09 21                    .!
        eor     $DB,x                           ; F07F 55 DB                    U.
        ror     $6DBF,x                         ; F081 7E BF 6D                 ~.m
        eor     $12,x                           ; F084 55 12                    U.
        pha                                     ; F086 48                       H
        .byte   $44                             ; F087 44                       D
        lsr     a                               ; F088 4A                       J
        lsr     a                               ; F089 4A                       J
        cmp     $6A,x                           ; F08A D5 6A                    .j
        cmp     $5A,x                           ; F08C D5 5A                    .Z
        eor     $AD,x                           ; F08E 55 AD                    U.
        lsr     a                               ; F090 4A                       J
        eor     $52,x                           ; F091 55 52                    UR
        eor     $AA,x                           ; F093 55 AA                    U.
        .byte   $54                             ; F095 54                       T
        .byte   $6B                             ; F096 6B                       k
        lda     $DDB6                           ; F097 AD B6 DD                 ...
        adc     $AD5B                           ; F09A 6D 5B AD                 m[.
        lsr     $A9,x                           ; F09D 56 A9                    V.
        .byte   $52                             ; F09F 52                       R
        eor     $52,x                           ; F0A0 55 52                    UR
        sta     $AA,x                           ; F0A2 95 AA                    ..
        lsr     $55,x                           ; F0A4 56 55                    VU
        .byte   $5B                             ; F0A6 5B                       [
        cmp     $5A,x                           ; F0A7 D5 5A                    .Z
        sta     $92,x                           ; F0A9 95 92                    ..
        .byte   $14                             ; F0AB 14                       .
        sta     ($10),y                         ; F0AC 91 10                    ..
        lsr     a                               ; F0AE 4A                       J
        lda     LF7DD                           ; F0AF AD DD F7                 ...
        .byte   $DB                             ; F0B2 DB                       .
        .byte   $5A                             ; F0B3 5A                       Z
        and     #$02                            ; F0B4 29 02                    ).
        .byte   $45                             ; F0B6 45                       E
LF0B7:  ldy     $A4                             ; F0B7 A4 A4                    ..
        .byte   $D4                             ; F0B9 D4                       .
        tax                                     ; F0BA AA                       .
        eor     $AB,x                           ; F0BB 55 AB                    U.
        eor     $D5,x                           ; F0BD 55 D5                    U.
        tax                                     ; F0BF AA                       .
        .byte   $54                             ; F0C0 54                       T
        lda     $54                             ; F0C1 A5 54                    .T
        lda     $AA                             ; F0C3 A5 AA                    ..
        ldy     $6AD6                           ; F0C5 AC D6 6A                 ..j
        .byte   $DB                             ; F0C8 DB                       .
        cmp     $55B6,x                         ; F0C9 DD B6 55                 ..U
        .byte   $AB                             ; F0CC AB                       .
        lda     #$4A                            ; F0CD A9 4A                    .J
        eor     $29,x                           ; F0CF 55 29                    U)
        lda     #$AA                            ; F0D1 A9 AA                    ..
        ror     a                               ; F0D3 6A                       j
        eor     $B5,x                           ; F0D4 55 B5                    U.
        eor     $AD,x                           ; F0D6 55 AD                    U.
        tax                                     ; F0D8 AA                       .
        lsr     a                               ; F0D9 4A                       J
        lsr     a                               ; F0DA 4A                       J
        .byte   $12                             ; F0DB 12                       .
        ora     #$A1                            ; F0DC 09 A1                    ..
        tax                                     ; F0DE AA                       .
        ldx     $7B,y                           ; F0DF B6 7B                    .{
        .byte   $BF                             ; F0E1 BF                       .
        lda     $44AA                           ; F0E2 AD AA 44                 ..D
        bvc     LF12F                           ; F0E5 50 48                    PH
        lsr     a                               ; F0E7 4A                       J
        lda     #$AA                            ; F0E8 A9 AA                    ..
        lsr     $AB,x                           ; F0EA 56 AB                    V.
        dec     $52,x                           ; F0EC D6 52                    .R
        .byte   $AB                             ; F0EE AB                       .
        rol     a                               ; F0EF 2A                       *
        eor     $4A,x                           ; F0F0 55 4A                    UJ
        eor     $A9,x                           ; F0F2 55 A9                    U.
        tax                                     ; F0F4 AA                       .
        .byte   $5A                             ; F0F5 5A                       Z
        .byte   $AB                             ; F0F6 AB                       .
        lda     $DB,x                           ; F0F7 B5 DB                    ..
        adc     $B56B                           ; F0F9 6D 6B B5                 mk.
        tax                                     ; F0FC AA                       .
        rol     a                               ; F0FD 2A                       *
        eor     $A5,x                           ; F0FE 55 A5                    U.
        .byte   $92                             ; F100 92                       .
        tax                                     ; F101 AA                       .
        tax                                     ; F102 AA                       .
        .byte   $5A                             ; F103 5A                       Z
        eor     $6B,x                           ; F104 55 6B                    Uk
        eor     $AB,x                           ; F106 55 AB                    U.
        tax                                     ; F108 AA                       .
        bit     $25                             ; F109 24 25                    $%
        .byte   $92                             ; F10B 92                       .
        bpl     LF0B7                           ; F10C 10 A9                    ..
        ror     a                               ; F10E 6A                       j
        .byte   $BB                             ; F10F BB                       .
        .byte   $F7                             ; F110 F7                       .
        cmp     $4AAA,x                         ; F111 DD AA 4A                 ..J
        php                                     ; F114 08                       .
        sta     $A4                             ; F115 85 A4                    ..
        sty     $AA,x                           ; F117 94 AA                    ..
        ror     a                               ; F119 6A                       j
        lda     $2B6A                           ; F11A AD 6A 2B                 .j+
        lda     $AAAA                           ; F11D AD AA AA                 ...
        sty     $54,x                           ; F120 94 54                    .T
        eor     $AA,x                           ; F122 55 AA                    U.
        ror     a                               ; F124 6A                       j
        lda     $DA,x                           ; F125 B5 DA                    ..
        ldx     $DD,y                           ; F127 B6 DD                    ..
        ldx     $5A,y                           ; F129 B6 5A                    .Z
        lda     $54AA                           ; F12B AD AA 54                 ..T
        .byte   $95                             ; F12E 95                       .
LF12F:  lsr     a                               ; F12F 4A                       J
        lda     #$AA                            ; F130 A9 AA                    ..
        tax                                     ; F132 AA                       .
        sta     $B5,x                           ; F133 95 B5                    ..
        .byte   $5A                             ; F135 5A                       Z
        lda     $AA,x                           ; F136 B5 AA                    ..
        .byte   $52                             ; F138 52                       R
        .byte   $52                             ; F139 52                       R
        .byte   $22                             ; F13A 22                       "
        ora     ($91),y                         ; F13B 11 91                    ..
        tax                                     ; F13D AA                       .
        lda     $77,x                           ; F13E B5 77                    .w
        .byte   $DF                             ; F140 DF                       .
        lda     $2A,x                           ; F141 B5 2A                    .*
        ora     #$51                            ; F143 09 51                    .Q
        pha                                     ; F145 48                       H
        and     #$A9                            ; F146 29 A9                    ).
        tax                                     ; F148 AA                       .
        lda     $AA,x                           ; F149 B5 AA                    ..
        lda     $AA,x                           ; F14B B5 AA                    ..
        tax                                     ; F14D AA                       .
        tax                                     ; F14E AA                       .
        lsr     a                               ; F14F 4A                       J
        and     #$55                            ; F150 29 55                    )U
        sta     $AA,x                           ; F152 95 AA                    ..
        dec     $6A,x                           ; F154 D6 6A                    .j
        adc     $6DDB                           ; F156 6D DB 6D                 m.m
        .byte   $AB                             ; F159 AB                       .
        lsr     $AB,x                           ; F15A 56 AB                    V.
        .byte   $52                             ; F15C 52                       R
        lda     $AA                             ; F15D A5 AA                    ..
        ldy     $AA                             ; F15F A4 AA                    ..
        .byte   $B2                             ; F161 B2                       .
        tax                                     ; F162 AA                       .
        ror     a                               ; F163 6A                       j
        .byte   $AB                             ; F164 AB                       .
        .byte   $5A                             ; F165 5A                       Z
        lda     $292A                           ; F166 AD 2A 29                 .*)
        eor     #$14                            ; F169 49 14                    I.
        ora     ($A9),y                         ; F16B 11 A9                    ..
        dec     $76,x                           ; F16D D6 76                    .v
        .byte   $EF                             ; F16F EF                       .
        eor     $94AB,x                         ; F170 5D AB 94                 ]..
        jsr     L9489                           ; F173 20 89 94                  ..
        .byte   $52                             ; F176 52                       R
        tax                                     ; F177 AA                       .
        eor     $AB,x                           ; F178 55 AB                    U.
        .byte   $5A                             ; F17A 5A                       Z
        .byte   $AB                             ; F17B AB                       .
        tax                                     ; F17C AA                       .
        ldx     $AA                             ; F17D A6 AA                    ..
        sty     $2A,x                           ; F17F 94 2A                    .*
        eor     $95,x                           ; F181 55 95                    U.
        lsr     $AB,x                           ; F183 56 AB                    V.
        cmp     $76,x                           ; F185 D5 76                    .v
        cmp     $6AD6,x                         ; F187 DD D6 6A                 ..j
        cmp     $52,x                           ; F18A D5 52                    .R
        sta     $AA,x                           ; F18C 95 AA                    ..
        .byte   $52                             ; F18E 52                       R
        tax                                     ; F18F AA                       .
        lsr     a                               ; F190 4A                       J
        lda     $D6AA                           ; F191 AD AA D6                 ...
        tax                                     ; F194 AA                       .
        eor     $AD,x                           ; F195 55 AD                    U.
        sty     $94,x                           ; F197 94 94                    ..
        .byte   $44                             ; F199 44                       D
        ora     ($51),y                         ; F19A 11 51                    .Q
        .byte   $5A                             ; F19C 5A                       Z
        adc     $DDEF                           ; F19D 6D EF DD                 m..
        lsr     $55,x                           ; F1A0 56 55                    VU
        .byte   $12                             ; F1A2 12                       .
        .byte   $92                             ; F1A3 92                       .
        pha                                     ; F1A4 48                       H
        and     #$55                            ; F1A5 29 55                    )U
        eor     $AD,x                           ; F1A7 55 AD                    U.
        ror     a                               ; F1A9 6A                       j
        lda     $5AAA                           ; F1AA AD AA 5A                 ..Z
        lda     #$2A                            ; F1AD A9 2A                    .*
        lda     #$2A                            ; F1AF A9 2A                    .*
        eor     $55,x                           ; F1B1 55 55                    UU
        lda     $5A,x                           ; F1B3 B5 5A                    .Z
        .byte   $6B                             ; F1B5 6B                       k
        .byte   $D7                             ; F1B6 D7                       .
        adc     $5AAD                           ; F1B7 6D AD 5A                 m.Z
        eor     $55,x                           ; F1BA 55 55                    UU
        tax                                     ; F1BC AA                       .
        rol     a                               ; F1BD 2A                       *
        lda     #$2A                            ; F1BE A9 2A                    .*
        cmp     $AA,x                           ; F1C0 D5 AA                    ..
        ror     a                               ; F1C2 6A                       j
        lda     $556A                           ; F1C3 AD 6A 55                 .jU
        eor     $4A,x                           ; F1C6 55 4A                    UJ
        eor     #$14                            ; F1C8 49 14                    I.
        ora     ($55),y                         ; F1CA 11 55                    .U
        cmp     $EE,x                           ; F1CC D5 EE                    ..
        dec     $556D,x                         ; F1CE DE 6D 55                 .mU
        and     $22                             ; F1D1 25 22                    %"
        .byte   $89                             ; F1D3 89                       .
        sty     $52,x                           ; F1D4 94 52                    .R
        eor     $B5,x                           ; F1D6 55 B5                    U.
        tax                                     ; F1D8 AA                       .
        cmp     $AA,x                           ; F1D9 D5 AA                    ..
        tax                                     ; F1DB AA                       .
        sta     $AA,x                           ; F1DC 95 AA                    ..
        .byte   $52                             ; F1DE 52                       R
        tax                                     ; F1DF AA                       .
        lsr     a                               ; F1E0 4A                       J
        eor     $D5,x                           ; F1E1 55 D5                    U.
        ror     a                               ; F1E3 6A                       j
        lda     $6D,x                           ; F1E4 B5 6D                    .m
        cmp     $AAD6,x                         ; F1E6 DD D6 AA                 ...
        eor     $55,x                           ; F1E9 55 55                    UU
        lda     #$AA                            ; F1EB A9 AA                    ..
        sty     $AA,x                           ; F1ED 94 AA                    ..
        .byte   $52                             ; F1EF 52                       R
        lda     $56AA                           ; F1F0 AD AA 56                 ..V
        .byte   $AB                             ; F1F3 AB                       .
        .byte   $5A                             ; F1F4 5A                       Z
        eor     $25,x                           ; F1F5 55 25                    U%
        lda     $48                             ; F1F7 A5 48                    .H
        ora     ($49),y                         ; F1F9 11 49                    .I
        eor     $DB,x                           ; F1FB 55 DB                    U.
        dec     $56DD,x                         ; F1FD DE DD 56                 ..V
        eor     $22,x                           ; F200 55 22                    U"
        sty     $28,x                           ; F202 94 28                    .(
        lda     $54                             ; F204 A5 54                    .T
        cmp     $AA,x                           ; F206 D5 AA                    ..
        eor     $AB,x                           ; F208 55 AB                    U.
        tax                                     ; F20A AA                       .
        lsr     $A9,x                           ; F20B 56 A9                    V.
        rol     a                               ; F20D 2A                       *
        lda     $AA                             ; F20E A5 AA                    ..
        .byte   $52                             ; F210 52                       R
        eor     $AD,x                           ; F211 55 AD                    U.
        eor     $DB,x                           ; F213 55 DB                    U.
        ldx     $6D,y                           ; F215 B6 6D                    .m
        lda     $6A,x                           ; F217 B5 6A                    .j
        eor     $A5,x                           ; F219 55 A5                    U.
        tax                                     ; F21B AA                       .
        .byte   $52                             ; F21C 52                       R
        lda     #$4A                            ; F21D A9 4A                    .J
        cmp     $AA,x                           ; F21F D5 AA                    ..
        ror     a                               ; F221 6A                       j
        lda     $AA,x                           ; F222 B5 AA                    ..
        eor     $95,x                           ; F224 55 95                    U.
        .byte   $52                             ; F226 52                       R
        .byte   $92                             ; F227 92                       .
        .byte   $14                             ; F228 14                       .
        sta     ($54),y                         ; F229 91 54                    .T
        lda     $DDDD                           ; F22B AD DD DD                 ...
        adc     $4955                           ; F22E 6D 55 49                 mUI
        .byte   $44                             ; F231 44                       D
        .byte   $89                             ; F232 89                       .
        .byte   $52                             ; F233 52                       R
        lsr     a                               ; F234 4A                       J
        eor     $AB,x                           ; F235 55 AB                    U.
        lsr     $B5,x                           ; F237 56 B5                    V.
        tax                                     ; F239 AA                       .
        ror     a                               ; F23A 6A                       j
        eor     $AA,x                           ; F23B 55 AA                    U.
        .byte   $52                             ; F23D 52                       R
        tax                                     ; F23E AA                       .
        tax                                     ; F23F AA                       .
        .byte   $54                             ; F240 54                       T
        lda     $5A,x                           ; F241 B5 5A                    .Z
        lda     $DB6D                           ; F243 AD 6D DB                 .m.
        lsr     $AD,x                           ; F246 56 AD                    V.
        .byte   $5A                             ; F248 5A                       Z
        sta     $AA,x                           ; F249 95 AA                    ..
        .byte   $52                             ; F24B 52                       R
        lda     $2A                             ; F24C A5 2A                    .*
        eor     $B5,x                           ; F24E 55 B5                    U.
        tax                                     ; F250 AA                       .
        .byte   $5A                             ; F251 5A                       Z
        lda     $6A,x                           ; F252 B5 6A                    .j
        eor     $2A,x                           ; F254 55 2A                    U*
        and     #$49                            ; F256 29 49                    )I
        ora     ($49),y                         ; F258 11 49                    .I
        lda     $DA,x                           ; F25A B5 DA                    ..
        cmp     $5ADD,x                         ; F25C DD DD 5A                 ..Z
        lda     $44                             ; F25F A5 44                    .D
        sty     $28,x                           ; F261 94 28                    .(
        lda     $52                             ; F263 A5 52                    .R
        lda     $D55A                           ; F265 AD 5A D5                 .Z.
        tax                                     ; F268 AA                       .
        tax                                     ; F269 AA                       .
        eor     $A5,x                           ; F26A 55 A5                    U.
        rol     a                               ; F26C 2A                       *
        sta     $AA,x                           ; F26D 95 AA                    ..
        rol     a                               ; F26F 2A                       *
        cmp     $6A,x                           ; F270 D5 6A                    .j
        lda     $D6,x                           ; F272 B5 D6                    ..
        ldx     $AD,y                           ; F274 B6 AD                    ..
        cmp     $AA,x                           ; F276 D5 AA                    ..
        stx     $AA,y                           ; F278 96 AA                    ..
        .byte   $52                             ; F27A 52                       R
        eor     $4A,x                           ; F27B 55 4A                    UJ
        eor     $55,x                           ; F27D 55 55                    UU
        .byte   $AB                             ; F27F AB                       .
        tax                                     ; F280 AA                       .
        eor     $AD,x                           ; F281 55 AD                    U.
        .byte   $5A                             ; F283 5A                       Z
        lda     $94                             ; F284 A5 94                    ..
        .byte   $92                             ; F286 92                       .
        bit     $91                             ; F287 24 91                    $.
        .byte   $D2                             ; F289 D2                       .
        ror     a                               ; F28A 6A                       j
        .byte   $DB                             ; F28B DB                       .
        cmp     $96AD,x                         ; F28C DD AD 96                 ...
        lsr     a                               ; F28F 4A                       J
        .byte   $44                             ; F290 44                       D
        .byte   $89                             ; F291 89                       .
        .byte   $52                             ; F292 52                       R
        tax                                     ; F293 AA                       .
        ldy     $556A                           ; F294 AC 6A 55                 .jU
        lda     $56A6                           ; F297 AD A6 56                 ..V
        eor     $AA,x                           ; F29A 55 AA                    U.
        .byte   $52                             ; F29C 52                       R
        sta     $AA,x                           ; F29D 95 AA                    ..
        tax                                     ; F29F AA                       .
        tax                                     ; F2A0 AA                       .
        eor     $6B,x                           ; F2A1 55 6B                    Uk
        eor     $5ADB,x                         ; F2A3 5D DB 5A                 ].Z
        lda     $AA,x                           ; F2A6 B5 AA                    ..
        tax                                     ; F2A8 AA                       .
        lsr     a                               ; F2A9 4A                       J
        eor     $A9,x                           ; F2AA 55 A9                    U.
        .byte   $54                             ; F2AC 54                       T
        eor     $D5,x                           ; F2AD 55 D5                    U.
        tax                                     ; F2AF AA                       .
        .byte   $5A                             ; F2B0 5A                       Z
        cmp     $AA,x                           ; F2B1 D5 AA                    ..
        tax                                     ; F2B3 AA                       .
        lsr     a                               ; F2B4 4A                       J
        and     #$51                            ; F2B5 29 51                    )Q
        .byte   $12                             ; F2B7 12                       .
        lda     #$AA                            ; F2B8 A9 AA                    ..
        ldx     $DB,y                           ; F2BA B6 DB                    ..
        eor     $2AAB,x                         ; F2BC 5D AB 2A                 ].*
        .byte   $89                             ; F2BF 89                       .
        sty     $24,x                           ; F2C0 94 24                    .$
        sta     $AA,x                           ; F2C2 95 AA                    ..
        tax                                     ; F2C4 AA                       .
        lsr     $B5,x                           ; F2C5 56 B5                    V.
        .byte   $5A                             ; F2C7 5A                       Z
        eor     $55,x                           ; F2C8 55 55                    UU
        eor     $A9,x                           ; F2CA 55 A9                    U.
        .byte   $54                             ; F2CC 54                       T
        sta     $AA,x                           ; F2CD 95 AA                    ..
        tax                                     ; F2CF AA                       .
        .byte   $5A                             ; F2D0 5A                       Z
        lda     $B5B6                           ; F2D1 AD B6 B5                 ...
        lda     $AB55                           ; F2D4 AD 55 AB                 .U.
        tax                                     ; F2D7 AA                       .
        rol     a                               ; F2D8 2A                       *
        eor     $95,x                           ; F2D9 55 95                    U.
        .byte   $52                             ; F2DB 52                       R
        eor     $55,x                           ; F2DC 55 55                    UU
        and     $55AB                           ; F2DE 2D AB 55                 -.U
        lda     $AA,x                           ; F2E1 B5 AA                    ..
        rol     a                               ; F2E3 2A                       *
        lda     $24                             ; F2E4 A5 24                    .$
        and     $91                             ; F2E6 25 91                    %.
        tax                                     ; F2E8 AA                       .
        .byte   $5A                             ; F2E9 5A                       Z
        .byte   $B7                             ; F2EA B7                       .
        cmp     $AAB5,x                         ; F2EB DD B5 AA                 ...
        .byte   $92                             ; F2EE 92                       .
        pha                                     ; F2EF 48                       H
        eor     #$4A                            ; F2F0 49 4A                    IJ
        lda     #$AA                            ; F2F2 A9 AA                    ..
        .byte   $5A                             ; F2F4 5A                       Z
        cmp     $AA,x                           ; F2F5 D5 AA                    ..
        eor     $55,x                           ; F2F7 55 55                    UU
        eor     $95,x                           ; F2F9 55 95                    U.
        lsr     a                               ; F2FB 4A                       J
        eor     $A5,x                           ; F2FC 55 A5                    U.
        tax                                     ; F2FE AA                       .
        ror     a                               ; F2FF 6A                       j
        cmp     $6A,x                           ; F300 D5 6A                    .j
        .byte   $5B                             ; F302 5B                       [
        .byte   $DB                             ; F303 DB                       .
        .byte   $5A                             ; F304 5A                       Z
        cmp     $AA,x                           ; F305 D5 AA                    ..
        tax                                     ; F307 AA                       .
        .byte   $54                             ; F308 54                       T
        eor     $2A,x                           ; F309 55 2A                    U*
        eor     $55,x                           ; F30B 55 55                    UU
        eor     $D5,x                           ; F30D 55 D5                    U.
        ror     a                               ; F30F 6A                       j
        eor     $AB,x                           ; F310 55 AB                    U.
        tax                                     ; F312 AA                       .
        .byte   $52                             ; F313 52                       R
        lsr     a                               ; F314 4A                       J
        .byte   $52                             ; F315 52                       R
        .byte   $12                             ; F316 12                       .
        lda     #$AA                            ; F317 A9 AA                    ..
        adc     $5DD7                           ; F319 6D D7 5D                 m.]
        .byte   $AB                             ; F31C AB                       .
        lsr     a                               ; F31D 4A                       J
        sta     ($14),y                         ; F31E 91 14                    ..
        lda     $94                             ; F320 A5 94                    ..
        tax                                     ; F322 AA                       .
        ror     a                               ; F323 6A                       j
        eor     $AB,x                           ; F324 55 AB                    U.
        lsr     $55,x                           ; F326 56 55                    VU
        eor     $55,x                           ; F328 55 55                    UU
        lda     $54                             ; F32A A5 54                    .T
        eor     $A9,x                           ; F32C 55 A9                    U.
        tax                                     ; F32E AA                       .
        eor     $AB,x                           ; F32F 55 AB                    U.
        lda     $B5,x                           ; F331 B5 B5                    ..
        lda     $B556                           ; F333 AD 56 B5                 .V.
        tax                                     ; F336 AA                       .
        .byte   $52                             ; F337 52                       R
        eor     $A9,x                           ; F338 55 A9                    U.
        .byte   $54                             ; F33A 54                       T
        eor     $55,x                           ; F33B 55 55                    UU
        eor     $AD,x                           ; F33D 55 AD                    U.
        lsr     $D5,x                           ; F33F 56 D5                    V.
        tax                                     ; F341 AA                       .
        lsr     a                               ; F342 4A                       J
        and     #$25                            ; F343 29 25                    )%
        and     $51                             ; F345 25 51                    %Q
        tax                                     ; F347 AA                       .
        dec     $76,x                           ; F348 D6 76                    .v
        cmp     $AAB6,x                         ; F34A DD B6 AA                 ...
        bit     $51                             ; F34D 24 51                    $Q
        eor     ($4A),y                         ; F34F 51 4A                    QJ
        lda     $AA                             ; F351 A5 AA                    ..
        eor     $AD,x                           ; F353 55 AD                    U.
        ror     a                               ; F355 6A                       j
        eor     $55,x                           ; F356 55 55                    UU
        eor     $55,x                           ; F358 55 55                    UU
        rol     a                               ; F35A 2A                       *
        eor     $95,x                           ; F35B 55 95                    U.
        tax                                     ; F35D AA                       .
        .byte   $5A                             ; F35E 5A                       Z
        lda     $5B5A                           ; F35F AD 5A 5B                 .Z[
        .byte   $5B                             ; F362 5B                       [
        .byte   $6B                             ; F363 6B                       k
        eor     $AB,x                           ; F364 55 AB                    U.
        .byte   $52                             ; F366 52                       R
        eor     $A5,x                           ; F367 55 A5                    U.
        lsr     a                               ; F369 4A                       J
        eor     $55,x                           ; F36A 55 55                    UU
        eor     $D5,x                           ; F36C 55 D5                    U.
        tax                                     ; F36E AA                       .
        eor     $B5,x                           ; F36F 55 B5                    U.
        tax                                     ; F371 AA                       .
        sty     $52,x                           ; F372 94 52                    .R
        .byte   $52                             ; F374 52                       R
        .byte   $12                             ; F375 12                       .
        lda     $5A                             ; F376 A5 5A                    .Z
        adc     $6DB7                           ; F378 6D B7 6D                 m.m
        lda     $1252                           ; F37B AD 52 12                 .R.
        ora     $A5,x                           ; F37E 15 A5                    ..
        .byte   $54                             ; F380 54                       T
        tax                                     ; F381 AA                       .
        lsr     $B5,x                           ; F382 56 B5                    V.
        tax                                     ; F384 AA                       .
        eor     $55,x                           ; F385 55 55                    UU
        eor     $55,x                           ; F387 55 55                    UU
        lda     $52                             ; F389 A5 52                    .R
        eor     $95,x                           ; F38B 55 95                    U.
        ror     a                               ; F38D 6A                       j
        cmp     $6A,x                           ; F38E D5 6A                    .j
        lda     $B5B5                           ; F390 AD B5 B5                 ...
        .byte   $5A                             ; F393 5A                       Z
        cmp     $4A,x                           ; F394 D5 4A                    .J
        eor     $95,x                           ; F396 55 95                    U.
        tax                                     ; F398 AA                       .
        .byte   $54                             ; F399 54                       T
        eor     $55,x                           ; F39A 55 55                    UU
        eor     $B5,x                           ; F39C 55 B5                    U.
        ror     a                               ; F39E 6A                       j
        eor     $B5,x                           ; F39F 55 B5                    U.
        .byte   $54                             ; F3A1 54                       T
        and     #$25                            ; F3A2 29 25                    )%
        and     $51                             ; F3A4 25 51                    %Q
        adc     #$B5                            ; F3A6 69 B5                    i.
        ror     $56BB                           ; F3A8 6E BB 56                 n.V
        eor     $25,x                           ; F3AB 55 25                    U%
        .byte   $52                             ; F3AD 52                       R
        .byte   $52                             ; F3AE 52                       R
        rol     a                               ; F3AF 2A                       *
        eor     $55,x                           ; F3B0 55 55                    UU
        cmp     $AA,x                           ; F3B2 D5 AA                    ..
        .byte   $5A                             ; F3B4 5A                       Z
        eor     $55,x                           ; F3B5 55 55                    UU
        eor     $55,x                           ; F3B7 55 55                    UU
        tax                                     ; F3B9 AA                       .
        .byte   $54                             ; F3BA 54                       T
        eor     $55,x                           ; F3BB 55 55                    UU
        eor     $AB,x                           ; F3BD 55 AB                    U.
        dec     $56,x                           ; F3BF D6 56                    .V
        .byte   $5B                             ; F3C1 5B                       [
        .byte   $AB                             ; F3C2 AB                       .
        eor     $55,x                           ; F3C3 55 55                    UU
        eor     $95,x                           ; F3C5 55 95                    U.
        tax                                     ; F3C7 AA                       .
        .byte   $52                             ; F3C8 52                       R
        eor     $65,x                           ; F3C9 55 65                    Ue
        eor     $55,x                           ; F3CB 55 55                    UU
        .byte   $AB                             ; F3CD AB                       .
        .byte   $5A                             ; F3CE 5A                       Z
        eor     $55,x                           ; F3CF 55 55                    UU
        lda     $94                             ; F3D1 A5 94                    ..
        .byte   $52                             ; F3D3 52                       R
        .byte   $92                             ; F3D4 92                       .
        .byte   $54                             ; F3D5 54                       T
        eor     $DB,x                           ; F3D6 55 DB                    U.
        ldx     $6D,y                           ; F3D8 B6 6D                    .m
        eor     $95,x                           ; F3DA 55 95                    U.
        bit     $25                             ; F3DC 24 25                    $%
        lda     $52                             ; F3DE A5 52                    .R
        eor     $55,x                           ; F3E0 55 55                    UU
        .byte   $AB                             ; F3E2 AB                       .
        ror     a                               ; F3E3 6A                       j
        eor     $55,x                           ; F3E4 55 55                    UU
        eor     $55,x                           ; F3E6 55 55                    UU
        lda     $2A                             ; F3E8 A5 2A                    .*
        eor     $55,x                           ; F3EA 55 55                    UU
        eor     $AD,x                           ; F3EC 55 AD                    U.
        ror     a                               ; F3EE 6A                       j
        adc     $B5B5                           ; F3EF 6D B5 B5                 m..
        ror     a                               ; F3F2 6A                       j
        eor     $55,x                           ; F3F3 55 55                    UU
        eor     $AA,x                           ; F3F5 55 AA                    U.
        rol     a                               ; F3F7 2A                       *
        eor     $95,x                           ; F3F8 55 95                    U.
        lsr     $55,x                           ; F3FA 56 55                    VU
        lda     $AA,x                           ; F3FC B5 AA                    ..
        lsr     $55,x                           ; F3FE 56 55                    VU
        eor     $4A,x                           ; F400 55 4A                    UJ
        eor     #$25                            ; F402 49 25                    I%
        eor     #$55                            ; F404 49 55                    IU
        lda     $DB6D                           ; F406 AD 6D DB                 .m.
        lsr     $55,x                           ; F409 56 55                    VU
        eor     #$52                            ; F40B 49 52                    IR
        .byte   $52                             ; F40D 52                       R
        rol     a                               ; F40E 2A                       *
        eor     $55,x                           ; F40F 55 55                    UU
        lda     $AA,x                           ; F411 B5 AA                    ..
        lsr     $55,x                           ; F413 56 55                    VU
        lda     $54,x                           ; F415 B5 54                    .T
        eor     $A9,x                           ; F417 55 A9                    U.
        rol     a                               ; F419 2A                       *
        eor     $55,x                           ; F41A 55 55                    UU
        cmp     $AA,x                           ; F41C D5 AA                    ..
        cmp     $56,x                           ; F41E D5 56                    .V
        .byte   $5B                             ; F420 5B                       [
        .byte   $AB                             ; F421 AB                       .
        .byte   $5A                             ; F422 5A                       Z
        eor     $55,x                           ; F423 55 55                    UU
        lda     #$AA                            ; F425 A9 AA                    ..
        .byte   $54                             ; F427 54                       T
        eor     $AA,x                           ; F428 55 AA                    U.
        eor     $55,x                           ; F42A 55 55                    UU
        .byte   $AB                             ; F42C AB                       .
        ror     a                               ; F42D 6A                       j
        eor     $55,x                           ; F42E 55 55                    UU
        lda     #$94                            ; F430 A9 94                    ..
        .byte   $54                             ; F432 54                       T
        .byte   $92                             ; F433 92                       .
        .byte   $54                             ; F434 54                       T
        cmp     $DA,x                           ; F435 D5 DA                    ..
        ldx     $6D,y                           ; F437 B6 6D                    .m
        eor     $95,x                           ; F439 55 95                    U.
        bit     $25                             ; F43B 24 25                    $%
        lda     $52                             ; F43D A5 52                    .R
        eor     $D5,x                           ; F43F 55 D5                    U.
        tax                                     ; F441 AA                       .
        .byte   $5A                             ; F442 5A                       Z
        eor     $D5,x                           ; F443 55 D5                    U.
        rol     a                               ; F445 2A                       *
        eor     $95,x                           ; F446 55 95                    U.
        tax                                     ; F448 AA                       .
        lsr     a                               ; F449 4A                       J
        eor     $55,x                           ; F44A 55 55                    UU
        .byte   $AB                             ; F44C AB                       .
        .byte   $5A                             ; F44D 5A                       Z
        .byte   $6B                             ; F44E 6B                       k
        lda     $B5,x                           ; F44F B5 B5                    ..
        tax                                     ; F451 AA                       .
        eor     $55,x                           ; F452 55 55                    UU
        lda     $AA                             ; F454 A5 AA                    ..
        lsr     a                               ; F456 4A                       J
        eor     $A5,x                           ; F457 55 A5                    U.
        .byte   $5A                             ; F459 5A                       Z
        eor     $D5,x                           ; F45A 55 D5                    U.
        tax                                     ; F45C AA                       .
        .byte   $5A                             ; F45D 5A                       Z
        eor     $95,x                           ; F45E 55 95                    U.
        .byte   $52                             ; F460 52                       R
        eor     #$25                            ; F461 49 25                    I%
        eor     #$55                            ; F463 49 55                    IU
        lda     $DB5D                           ; F465 AD 5D DB                 .].
        lsr     $55,x                           ; F468 56 55                    VU
        lsr     a                               ; F46A 4A                       J
        .byte   $54                             ; F46B 54                       T
        .byte   $52                             ; F46C 52                       R
        lda     #$54                            ; F46D A9 54                    .T
        eor     $AB,x                           ; F46F 55 AB                    U.
        tax                                     ; F471 AA                       .
        eor     $55,x                           ; F472 55 55                    UU
        lda     $5552                           ; F474 AD 52 55                 .RU
        lda     #$AA                            ; F477 A9 AA                    ..
        .byte   $52                             ; F479 52                       R
        eor     $B5,x                           ; F47A 55 B5                    U.
        ror     a                               ; F47C 6A                       j
        lda     $56,x                           ; F47D B5 56                    .V
        .byte   $5B                             ; F47F 5B                       [
        .byte   $AB                             ; F480 AB                       .
        ror     a                               ; F481 6A                       j
        eor     $95,x                           ; F482 55 95                    U.
        tax                                     ; F484 AA                       .
        rol     a                               ; F485 2A                       *
        eor     $95,x                           ; F486 55 95                    U.
        tax                                     ; F488 AA                       .
        eor     $55,x                           ; F489 55 55                    UU
        lda     $56AA                           ; F48B AD AA 56                 ..V
        eor     $2A,x                           ; F48E 55 2A                    U*
        lda     $54                             ; F490 A5 54                    .T
        .byte   $92                             ; F492 92                       .
        .byte   $54                             ; F493 54                       T
        lda     $B6,x                           ; F494 B5 B6                    ..
        lda     $AD,x                           ; F496 B5 AD                    ..
        eor     $25,x                           ; F498 55 25                    U%
        eor     #$25                            ; F49A 49 25                    I%
        sta     $4A,x                           ; F49C 95 4A                    .J
        eor     $AD,x                           ; F49E 55 AD                    U.
        tax                                     ; F4A0 AA                       .
        lsr     $55,x                           ; F4A1 56 55                    VU
        lda     $AA,x                           ; F4A3 B5 AA                    ..
        .byte   $54                             ; F4A5 54                       T
        sta     $AA,x                           ; F4A6 95 AA                    ..
        tax                                     ; F4A8 AA                       .
        .byte   $54                             ; F4A9 54                       T
        cmp     $AA,x                           ; F4AA D5 AA                    ..
        eor     $6B,x                           ; F4AC 55 6B                    Uk
        lda     $AAD5                           ; F4AE AD D5 AA                 ...
        .byte   $5A                             ; F4B1 5A                       Z
        eor     $AA,x                           ; F4B2 55 AA                    U.
        tax                                     ; F4B4 AA                       .
        .byte   $52                             ; F4B5 52                       R
        eor     $AA,x                           ; F4B6 55 AA                    U.
        ror     a                               ; F4B8 6A                       j
        eor     $D5,x                           ; F4B9 55 D5                    U.
        tax                                     ; F4BB AA                       .
        ror     a                               ; F4BC 6A                       j
        eor     $A9,x                           ; F4BD 55 A9                    U.
        .byte   $52                             ; F4BF 52                       R
        lsr     a                               ; F4C0 4A                       J
        and     $29                             ; F4C1 25 29                    %)
        cmp     $6A,x                           ; F4C3 D5 6A                    .j
        .byte   $5B                             ; F4C5 5B                       [
        .byte   $DB                             ; F4C6 DB                       .
        ror     a                               ; F4C7 6A                       j
        sta     $92,x                           ; F4C8 95 92                    ..
        .byte   $54                             ; F4CA 54                       T
        .byte   $52                             ; F4CB 52                       R
        lda     #$52                            ; F4CC A9 52                    .R
        lda     $AA,x                           ; F4CE B5 AA                    ..
        .byte   $5A                             ; F4D0 5A                       Z
        eor     $55,x                           ; F4D1 55 55                    UU
        .byte   $AB                             ; F4D3 AB                       .
        lsr     a                               ; F4D4 4A                       J
        eor     $A5,x                           ; F4D5 55 A5                    U.
        tax                                     ; F4D7 AA                       .
        rol     a                               ; F4D8 2A                       *
        eor     $AB,x                           ; F4D9 55 AB                    U.
        .byte   $5A                             ; F4DB 5A                       Z
        lda     $5AD5                           ; F4DC AD D5 5A                 ..Z
        lda     $55AA                           ; F4DF AD AA 55                 ..U
        lda     #$AA                            ; F4E2 A9 AA                    ..
        lsr     a                               ; F4E4 4A                       J
        eor     $AA,x                           ; F4E5 55 AA                    U.
        tax                                     ; F4E7 AA                       .
        lsr     $55,x                           ; F4E8 56 55                    VU
        lda     $AA,x                           ; F4EA B5 AA                    ..
        .byte   $5A                             ; F4EC 5A                       Z
        sta     $4A,x                           ; F4ED 95 4A                    .J
        lda     $54                             ; F4EF A5 54                    .T
        .byte   $92                             ; F4F1 92                       .
        .byte   $52                             ; F4F2 52                       R
        .byte   $AB                             ; F4F3 AB                       .
        ldx     $B5,y                           ; F4F4 B6 B5                    ..
        lda     $2A56                           ; F4F6 AD 56 2A                 .V*
        eor     #$A5                            ; F4F9 49 A5                    I.
        sty     $AA,x                           ; F4FB 94 AA                    ..
        ldy     $AA,x                           ; F4FD B4 AA                    ..
        ror     a                               ; F4FF 6A                       j
        eor     $2D,x                           ; F500 55 2D                    U-
        .byte   $AB                             ; F502 AB                       .
        tax                                     ; F503 AA                       .
        .byte   $52                             ; F504 52                       R
        eor     $AA,x                           ; F505 55 AA                    U.
        tax                                     ; F507 AA                       .
        rol     a                               ; F508 2A                       *
        .byte   $AB                             ; F509 AB                       .
        ror     a                               ; F50A 6A                       j
        cmp     $5A,x                           ; F50B D5 5A                    .Z
        lda     $AAD5                           ; F50D AD D5 AA                 ...
        ror     a                               ; F510 6A                       j
        lda     #$AA                            ; F511 A9 AA                    ..
        rol     a                               ; F513 2A                       *
        eor     $A9,x                           ; F514 55 A9                    U.
        tax                                     ; F516 AA                       .
        tax                                     ; F517 AA                       .
        eor     $55,x                           ; F518 55 55                    UU
        .byte   $AB                             ; F51A AB                       .
        tax                                     ; F51B AA                       .
        tax                                     ; F51C AA                       .
        tax                                     ; F51D AA                       .
        .byte   $54                             ; F51E 54                       T
        .byte   $52                             ; F51F 52                       R
        and     $A9                             ; F520 25 A9                    %.
        tax                                     ; F522 AA                       .
        .byte   $5A                             ; F523 5A                       Z
        .byte   $5B                             ; F524 5B                       [
        .byte   $DB                             ; F525 DB                       .
        tax                                     ; F526 AA                       .
        tax                                     ; F527 AA                       .
        .byte   $92                             ; F528 92                       .
        .byte   $54                             ; F529 54                       T
        lsr     a                               ; F52A 4A                       J
        lda     #$AA                            ; F52B A9 AA                    ..
        tax                                     ; F52D AA                       .
        tax                                     ; F52E AA                       .
        eor     $B5,x                           ; F52F 55 B5                    U.
        tax                                     ; F531 AA                       .
        tax                                     ; F532 AA                       .
        tax                                     ; F533 AA                       .
        .byte   $52                             ; F534 52                       R
        sta     $AA,x                           ; F535 95 AA                    ..
        tax                                     ; F537 AA                       .
        tax                                     ; F538 AA                       .
        tax                                     ; F539 AA                       .
        lsr     $AD,x                           ; F53A 56 AD                    V.
        cmp     $5A,x                           ; F53C D5 5A                    .Z
        lda     $AA,x                           ; F53E B5 AA                    ..
        tax                                     ; F540 AA                       .
        tax                                     ; F541 AA                       .
        tax                                     ; F542 AA                       .
        .byte   $54                             ; F543 54                       T
        lda     $AA                             ; F544 A5 AA                    ..
        tax                                     ; F546 AA                       .
        ror     a                               ; F547 6A                       j
        lsr     $D5,x                           ; F548 56 D5                    V.
        tax                                     ; F54A AA                       .
        tax                                     ; F54B AA                       .
        tax                                     ; F54C AA                       .
        .byte   $52                             ; F54D 52                       R
        and     #$95                            ; F54E 29 95                    ).
        .byte   $92                             ; F550 92                       .
        tax                                     ; F551 AA                       .
        tax                                     ; F552 AA                       .
        lda     $B5,x                           ; F553 B5 B5                    ..
        lda     $4AAA                           ; F555 AD AA 4A                 ..J
        eor     #$A5                            ; F558 49 A5                    I.
        .byte   $54                             ; F55A 54                       T
        tax                                     ; F55B AA                       .
        tax                                     ; F55C AA                       .
        tax                                     ; F55D AA                       .
        lsr     $55,x                           ; F55E 56 55                    VU
        .byte   $AB                             ; F560 AB                       .
        tax                                     ; F561 AA                       .
        tax                                     ; F562 AA                       .
        rol     a                               ; F563 2A                       *
        eor     $A9,x                           ; F564 55 A9                    U.
        tax                                     ; F566 AA                       .
        tax                                     ; F567 AA                       .
        tax                                     ; F568 AA                       .
        .byte   $5A                             ; F569 5A                       Z
        cmp     $5A,x                           ; F56A D5 5A                    .Z
        lda     $AB55                           ; F56C AD 55 AB                 .U.
        tax                                     ; F56F AA                       .
        tax                                     ; F570 AA                       .
        tax                                     ; F571 AA                       .
        .byte   $52                             ; F572 52                       R
        eor     $AA,x                           ; F573 55 AA                    U.
        tax                                     ; F575 AA                       .
        tax                                     ; F576 AA                       .
        ror     a                               ; F577 6A                       j
        eor     $B5,x                           ; F578 55 B5                    U.
        tax                                     ; F57A AA                       .
        tax                                     ; F57B AA                       .
        rol     a                               ; F57C 2A                       *
        sta     $52,x                           ; F57D 95 52                    .R
        and     #$A9                            ; F57F 29 A9                    ).
        tax                                     ; F581 AA                       .
        .byte   $DA                             ; F582 DA                       .
        lsr     $DB,x                           ; F583 56 DB                    V.
        tax                                     ; F585 AA                       .
        tax                                     ; F586 AA                       .
        ldy     $54                             ; F587 A4 54                    .T
        lsr     a                               ; F589 4A                       J
        lda     $AA                             ; F58A A5 AA                    ..
        tax                                     ; F58C AA                       .
        .byte   $5A                             ; F58D 5A                       Z
        eor     $AD,x                           ; F58E 55 AD                    U.
        tax                                     ; F590 AA                       .
        tax                                     ; F591 AA                       .
        tax                                     ; F592 AA                       .
        .byte   $52                             ; F593 52                       R
        eor     $AA,x                           ; F594 55 AA                    U.
        tax                                     ; F596 AA                       .
        tax                                     ; F597 AA                       .
        ror     a                               ; F598 6A                       j
        eor     $AB,x                           ; F599 55 AB                    U.
        cmp     $5A,x                           ; F59B D5 5A                    .Z
        cmp     $AA,x                           ; F59D D5 AA                    ..
        tax                                     ; F59F AA                       .
        tax                                     ; F5A0 AA                       .
        .byte   $52                             ; F5A1 52                       R
        eor     $A5,x                           ; F5A2 55 A5                    U.
        tax                                     ; F5A4 AA                       .
        tax                                     ; F5A5 AA                       .
        tax                                     ; F5A6 AA                       .
        .byte   $5A                             ; F5A7 5A                       Z
        eor     $AD,x                           ; F5A8 55 AD                    U.
        tax                                     ; F5AA AA                       .
        tax                                     ; F5AB AA                       .
        .byte   $54                             ; F5AC 54                       T
        and     #$95                            ; F5AD 29 95                    ).
        .byte   $92                             ; F5AF 92                       .
        tax                                     ; F5B0 AA                       .
        ror     a                               ; F5B1 6A                       j
        adc     $ADB5                           ; F5B2 6D B5 AD                 m..
        tax                                     ; F5B5 AA                       .
        .byte   $52                             ; F5B6 52                       R
        .byte   $52                             ; F5B7 52                       R
        lda     $54                             ; F5B8 A5 54                    .T
        tax                                     ; F5BA AA                       .
        tax                                     ; F5BB AA                       .
        ror     a                               ; F5BC 6A                       j
        eor     $D5,x                           ; F5BD 55 D5                    U.
        tax                                     ; F5BF AA                       .
        tax                                     ; F5C0 AA                       .
        tax                                     ; F5C1 AA                       .
        tax                                     ; F5C2 AA                       .
        .byte   $54                             ; F5C3 54                       T
        eor     $AA,x                           ; F5C4 55 AA                    U.
        tax                                     ; F5C6 AA                       .
        tax                                     ; F5C7 AA                       .
        lsr     $B5,x                           ; F5C8 56 B5                    V.
        lsr     $AD,x                           ; F5CA 56 AD                    V.
        eor     $AD,x                           ; F5CC 55 AD                    U.
        tax                                     ; F5CE AA                       .
        tax                                     ; F5CF AA                       .
        lsr     a                               ; F5D0 4A                       J
        eor     $95,x                           ; F5D1 55 95                    U.
        tax                                     ; F5D3 AA                       .
        tax                                     ; F5D4 AA                       .
        tax                                     ; F5D5 AA                       .
        tax                                     ; F5D6 AA                       .
        eor     $D5,x                           ; F5D7 55 D5                    U.
        tax                                     ; F5D9 AA                       .
        tax                                     ; F5DA AA                       .
        lsr     a                               ; F5DB 4A                       J
        lda     $52                             ; F5DC A5 52                    .R
        and     #$A9                            ; F5DE 29 A9                    ).
        tax                                     ; F5E0 AA                       .
        dec     $D6,x                           ; F5E1 D6 D6                    ..
        .byte   $5A                             ; F5E3 5A                       Z
        .byte   $AB                             ; F5E4 AB                       .
        rol     a                               ; F5E5 2A                       *
        and     $55                             ; F5E6 25 55                    %U
        lsr     a                               ; F5E8 4A                       J
        sta     $AA,x                           ; F5E9 95 AA                    ..
        tax                                     ; F5EB AA                       .
        lsr     $55,x                           ; F5EC 56 55                    VU
        .byte   $AB                             ; F5EE AB                       .
        tax                                     ; F5EF AA                       .
        tax                                     ; F5F0 AA                       .
        tax                                     ; F5F1 AA                       .
        lsr     a                               ; F5F2 4A                       J
        eor     $95,x                           ; F5F3 55 95                    U.
        tax                                     ; F5F5 AA                       .
        tax                                     ; F5F6 AA                       .
        .byte   $5A                             ; F5F7 5A                       Z
        cmp     $6A,x                           ; F5F8 D5 6A                    .j
        cmp     $6A,x                           ; F5FA D5 6A                    .j
        eor     $AB,x                           ; F5FC 55 AB                    U.
        tax                                     ; F5FE AA                       .
        rol     a                               ; F5FF 2A                       *
        eor     $55,x                           ; F600 55 55                    UU
        lda     #$AA                            ; F602 A9 AA                    ..
        tax                                     ; F604 AA                       .
        tax                                     ; F605 AA                       .
        ror     a                               ; F606 6A                       j
        eor     $B5,x                           ; F607 55 B5                    U.
        tax                                     ; F609 AA                       .
        tax                                     ; F60A AA                       .
        .byte   $54                             ; F60B 54                       T
        lsr     a                               ; F60C 4A                       J
        sta     $92,x                           ; F60D 95 92                    ..
        tax                                     ; F60F AA                       .
        .byte   $5A                             ; F610 5A                       Z
        adc     $B5AD                           ; F611 6D AD B5                 m..
        tax                                     ; F614 AA                       .
        .byte   $52                             ; F615 52                       R
        .byte   $52                             ; F616 52                       R
        lda     $54                             ; F617 A5 54                    .T
        lda     #$AA                            ; F619 A9 AA                    ..
        .byte   $5A                             ; F61B 5A                       Z
        eor     $B5,x                           ; F61C 55 B5                    U.
        tax                                     ; F61E AA                       .
        tax                                     ; F61F AA                       .
        tax                                     ; F620 AA                       .
        tax                                     ; F621 AA                       .
        .byte   $54                             ; F622 54                       T
        eor     $A5,x                           ; F623 55 A5                    U.
        tax                                     ; F625 AA                       .
        ror     a                               ; F626 6A                       j
        eor     $AD,x                           ; F627 55 AD                    U.
        lsr     $AD,x                           ; F629 56 AD                    V.
        lsr     $D5,x                           ; F62B 56 D5                    V.
        tax                                     ; F62D AA                       .
        tax                                     ; F62E AA                       .
        .byte   $54                             ; F62F 54                       T
        eor     $A5,x                           ; F630 55 A5                    U.
        tax                                     ; F632 AA                       .
        tax                                     ; F633 AA                       .
        tax                                     ; F634 AA                       .
        tax                                     ; F635 AA                       .
        lsr     $55,x                           ; F636 56 55                    VU
        lda     $52AA                           ; F638 AD AA 52                 ..R
        lda     $54                             ; F63B A5 54                    .T
        and     #$A5                            ; F63D 29 A5                    ).
        tax                                     ; F63F AA                       .
        lda     $D6,x                           ; F640 B5 D6                    ..
        .byte   $5A                             ; F642 5A                       Z
        .byte   $AB                             ; F643 AB                       .
        lsr     a                               ; F644 4A                       J
        and     $55                             ; F645 25 55                    %U
        lsr     a                               ; F647 4A                       J
        sta     $AA,x                           ; F648 95 AA                    ..
        ror     a                               ; F64A 6A                       j
        eor     $D5,x                           ; F64B 55 D5                    U.
        tax                                     ; F64D AA                       .
        tax                                     ; F64E AA                       .
        tax                                     ; F64F AA                       .
        tax                                     ; F650 AA                       .
        lsr     a                               ; F651 4A                       J
        eor     $55,x                           ; F652 55 55                    UU
        tax                                     ; F654 AA                       .
        tax                                     ; F655 AA                       .
        lsr     $D5,x                           ; F656 56 D5                    V.
        ror     a                               ; F658 6A                       j
        cmp     $6A,x                           ; F659 D5 6A                    .j
        eor     $AD,x                           ; F65B 55 AD                    U.
        tax                                     ; F65D AA                       .
        .byte   $52                             ; F65E 52                       R
        eor     $55,x                           ; F65F 55 55                    UU
        tax                                     ; F661 AA                       .
        tax                                     ; F662 AA                       .
        tax                                     ; F663 AA                       .
        tax                                     ; F664 AA                       .
        ror     a                               ; F665 6A                       j
        eor     $D5,x                           ; F666 55 D5                    U.
        tax                                     ; F668 AA                       .
        lsr     a                               ; F669 4A                       J
        sta     $4A,x                           ; F66A 95 4A                    .J
        sta     $52,x                           ; F66C 95 52                    .R
        tax                                     ; F66E AA                       .
        lsr     $6B,x                           ; F66F 56 6B                    Vk
        lda     $AAB5                           ; F671 AD B5 AA                 ...
        sty     $52,x                           ; F674 94 52                    .R
        lda     $54                             ; F676 A5 54                    .T
        lda     $AA                             ; F678 A5 AA                    ..
        eor     $55,x                           ; F67A 55 55                    UU
        lda     $AAAA                           ; F67C AD AA AA                 ...
        tax                                     ; F67F AA                       .
        tax                                     ; F680 AA                       .
        .byte   $52                             ; F681 52                       R
        eor     $95,x                           ; F682 55 95                    U.
        tax                                     ; F684 AA                       .
        .byte   $5A                             ; F685 5A                       Z
        eor     $AB,x                           ; F686 55 AB                    U.
        lsr     $AD,x                           ; F688 56 AD                    V.
        lsr     $55,x                           ; F68A 56 55                    VU
        .byte   $AB                             ; F68C AB                       .
        lsr     a                               ; F68D 4A                       J
        eor     $55,x                           ; F68E 55 55                    UU
        lda     #$AA                            ; F690 A9 AA                    ..
        tax                                     ; F692 AA                       .
        tax                                     ; F693 AA                       .
        tax                                     ; F694 AA                       .
        lsr     $55,x                           ; F695 56 55                    VU
        lda     $2A,x                           ; F697 B5 2A                    .*
        eor     $A9,x                           ; F699 55 A9                    U.
        .byte   $54                             ; F69B 54                       T
        and     #$95                            ; F69C 29 95                    ).
        .byte   $5A                             ; F69E 5A                       Z
        lda     $D5,x                           ; F69F B5 D5                    ..
        .byte   $5A                             ; F6A1 5A                       Z
        lda     $2952                           ; F6A2 AD 52 29                 .R)
        eor     $4A,x                           ; F6A5 55 4A                    UJ
        eor     $A9,x                           ; F6A7 55 A9                    U.
        eor     $55,x                           ; F6A9 55 55                    UU
        lda     $AA,x                           ; F6AB B5 AA                    ..
        tax                                     ; F6AD AA                       .
        tax                                     ; F6AE AA                       .
        tax                                     ; F6AF AA                       .
        rol     a                               ; F6B0 2A                       *
        eor     $55,x                           ; F6B1 55 55                    UU
        sta     $6A,x                           ; F6B3 95 6A                    .j
        eor     $B5,x                           ; F6B5 55 B5                    U.
        .byte   $5A                             ; F6B7 5A                       Z
        cmp     $6A,x                           ; F6B8 D5 6A                    .j
        eor     $D5,x                           ; F6BA 55 D5                    U.
        lsr     a                               ; F6BC 4A                       J
        eor     $55,x                           ; F6BD 55 55                    UU
        sta     $AA,x                           ; F6BF 95 AA                    ..
        tax                                     ; F6C1 AA                       .
        tax                                     ; F6C2 AA                       .
        tax                                     ; F6C3 AA                       .
        tax                                     ; F6C4 AA                       .
        eor     $55,x                           ; F6C5 55 55                    UU
        lda     $54,x                           ; F6C7 B5 54                    .T
        sta     $4A,x                           ; F6C9 95 4A                    .J
        sta     $52,x                           ; F6CB 95 52                    .R
        adc     #$55                            ; F6CD 69 55                    iU
        .byte   $5B                             ; F6CF 5B                       [
        lda     $5555                           ; F6D0 AD 55 55                 .UU
        sta     $55,x                           ; F6D3 95 55                    .U
        eor     $55,x                           ; F6D5 55 55                    UU
        eor     $55,x                           ; F6D7 55 55                    UU
        eor     $55,x                           ; F6D9 55 55                    UU
        eor     $55,x                           ; F6DB 55 55                    UU
        eor     $55,x                           ; F6DD 55 55                    UU
        eor     $55,x                           ; F6DF 55 55                    UU
        brk                                     ; F6E1 00                       .
        brk                                     ; F6E2 00                       .
        brk                                     ; F6E3 00                       .
        brk                                     ; F6E4 00                       .
        brk                                     ; F6E5 00                       .
        brk                                     ; F6E6 00                       .
        brk                                     ; F6E7 00                       .
        brk                                     ; F6E8 00                       .
        brk                                     ; F6E9 00                       .
        brk                                     ; F6EA 00                       .
        brk                                     ; F6EB 00                       .
        brk                                     ; F6EC 00                       .
        brk                                     ; F6ED 00                       .
        brk                                     ; F6EE 00                       .
        brk                                     ; F6EF 00                       .
        brk                                     ; F6F0 00                       .
        brk                                     ; F6F1 00                       .
        brk                                     ; F6F2 00                       .
        brk                                     ; F6F3 00                       .
        brk                                     ; F6F4 00                       .
        brk                                     ; F6F5 00                       .
        brk                                     ; F6F6 00                       .
        brk                                     ; F6F7 00                       .
        brk                                     ; F6F8 00                       .
        brk                                     ; F6F9 00                       .
        brk                                     ; F6FA 00                       .
        brk                                     ; F6FB 00                       .
        brk                                     ; F6FC 00                       .
        brk                                     ; F6FD 00                       .
        brk                                     ; F6FE 00                       .
        brk                                     ; F6FF 00                       .
        .byte   $63                             ; F700 63                       c
        .byte   $1C                             ; F701 1C                       .
        .byte   $3C                             ; F702 3C                       <
        stx     $E373                           ; F703 8E 73 E3                 .s.
        .byte   $FC                             ; F706 FC                       .
        and     ($E7),y                         ; F707 31 E7                    1.
        .byte   $3C                             ; F709 3C                       <
        .byte   $E7                             ; F70A E7                       .
        sbc     $87C7,x                         ; F70B FD C7 87                 ...
        cmp     ($61,x)                         ; F70E C1 61                    .a
        brk                                     ; F710 00                       .
        brk                                     ; F711 00                       .
LF712:  and     ($00),y                         ; F712 31 00                    1.
        .byte   $80                             ; F714 80                       .
        brk                                     ; F715 00                       .
        .byte   $02                             ; F716 02                       .
        jsr     LF990                           ; F717 20 90 F9                  ..
        sbc     $7FFD,x                         ; F71A FD FD 7F                 ...
        .byte   $FF                             ; F71D FF                       .
        .byte   $6B                             ; F71E 6B                       k
        tax                                     ; F71F AA                       .
        tax                                     ; F720 AA                       .
        dex                                     ; F721 CA                       .
        .byte   $D2                             ; F722 D2                       .
        cpy     $AAAA                           ; F723 CC AA AA                 ...
        .byte   $07                             ; F726 07                       .
        .byte   $82                             ; F727 82                       .
        dey                                     ; F728 88                       .
        brk                                     ; F729 00                       .
        brk                                     ; F72A 00                       .
        brk                                     ; F72B 00                       .
        cpx     #$38                            ; F72C E0 38                    .8
        .byte   $CF                             ; F72E CF                       .
        sed                                     ; F72F F8                       .
        .byte   $9F                             ; F730 9F                       .
        .byte   $FF                             ; F731 FF                       .
        .byte   $0F                             ; F732 0F                       .
        .byte   $E7                             ; F733 E7                       .
        .byte   $FB                             ; F734 FB                       .
        .byte   $FF                             ; F735 FF                       .
        .byte   $FF                             ; F736 FF                       .
        .byte   $FF                             ; F737 FF                       .
        .byte   $FF                             ; F738 FF                       .
        .byte   $FF                             ; F739 FF                       .
        .byte   $FF                             ; F73A FF                       .
        .byte   $FF                             ; F73B FF                       .
        .byte   $FF                             ; F73C FF                       .
        .byte   $FF                             ; F73D FF                       .
        .byte   $FF                             ; F73E FF                       .
        .byte   $FF                             ; F73F FF                       .
        .byte   $FF                             ; F740 FF                       .
        .byte   $FF                             ; F741 FF                       .
        .byte   $FF                             ; F742 FF                       .
        .byte   $FF                             ; F743 FF                       .
        .byte   $7F                             ; F744 7F                       .
        .byte   $0C                             ; F745 0C                       .
        bpl     LF748                           ; F746 10 00                    ..
LF748:  brk                                     ; F748 00                       .
        .byte   $04                             ; F749 04                       .
        brk                                     ; F74A 00                       .
        .byte   $92                             ; F74B 92                       .
        .byte   $1C                             ; F74C 1C                       .
        inc     $43                             ; F74D E6 43                    .C
        .byte   $1B                             ; F74F 1B                       .
        ldy     $6A6B                           ; F750 AC 6B 6A                 .kj
        bvc     LF712                           ; F753 50 BD                    P.
        .byte   $52                             ; F755 52                       R
        .byte   $73                             ; F756 73                       s
        .byte   $CF                             ; F757 CF                       .
        .byte   $F3                             ; F758 F3                       .
        adc     $D7,x                           ; F759 75 D7                    u.
        lda     $7ADA,y                         ; F75B B9 DA 7A                 ..z
        .byte   $6B                             ; F75E 6B                       k
        .byte   $A7                             ; F75F A7                       .
        rol     $5A                             ; F760 26 5A                    &Z
        .byte   $52                             ; F762 52                       R
        and     #$CA                            ; F763 29 CA                    ).
        .byte   $12                             ; F765 12                       .
        ora     $55,x                           ; F766 15 55                    .U
        eor     $A29A,y                         ; F768 59 9A A2                 Y..
        .byte   $92                             ; F76B 92                       .
        .byte   $92                             ; F76C 92                       .
        .byte   $22                             ; F76D 22                       "
        .byte   $89                             ; F76E 89                       .
        .byte   $92                             ; F76F 92                       .
        ldy     $24                             ; F770 A4 24                    .$
        eor     #$49                            ; F772 49 49                    II
        .byte   $52                             ; F774 52                       R
        .byte   $92                             ; F775 92                       .
        dec     $06                             ; F776 C6 06                    ..
        and     $D535                           ; F778 2D 35 D5                 -5.
        cpx     $1C                             ; F77B E4 1C                    ..
        .byte   $D7                             ; F77D D7                       .
        .byte   $D2                             ; F77E D2                       .
        ora     $2F,x                           ; F77F 15 2F                    ./
        adc     $CE,x                           ; F781 75 CE                    u.
        eor     $F3,x                           ; F783 55 F3                    U.
        .byte   $9C                             ; F785 9C                       .
        adc     $5F,x                           ; F786 75 5F                    u_
        adc     LFAF7,x                         ; F788 7D F7 FA                 }..
        inc     $7FBB                           ; F78B EE BB 7F                 ...
        .byte   $FB                             ; F78E FB                       .
        .byte   $AF                             ; F78F AF                       .
        cmp     LFFFD,x                         ; F790 DD FD FF                 ...
        .byte   $FF                             ; F793 FF                       .
        .byte   $FF                             ; F794 FF                       .
        .byte   $FF                             ; F795 FF                       .
        .byte   $FF                             ; F796 FF                       .
        .byte   $FF                             ; F797 FF                       .
        .byte   $FF                             ; F798 FF                       .
        .byte   $FF                             ; F799 FF                       .
        .byte   $FF                             ; F79A FF                       .
        .byte   $FF                             ; F79B FF                       .
        .byte   $BF                             ; F79C BF                       .
        dex                                     ; F79D CA                       .
        .byte   $52                             ; F79E 52                       R
        and     $55                             ; F79F 25 55                    %U
        ldy     $A2                             ; F7A1 A4 A2                    ..
        .byte   $44                             ; F7A3 44                       D
        asl     a                               ; F7A4 0A                       .
        asl     $50,x                           ; F7A5 16 50                    .P
        .byte   $02                             ; F7A7 02                       .
        .byte   $83                             ; F7A8 83                       .
        asl     a                               ; F7A9 0A                       .
        bit     $52                             ; F7AA 24 52                    $R
        .byte   $22                             ; F7AC 22                       "
        .byte   $03                             ; F7AD 03                       .
        .byte   $0F                             ; F7AE 0F                       .
        bit     $A0AA                           ; F7AF 2C AA A0                 ,..
        ror     a                               ; F7B2 6A                       j
        adc     #$AA                            ; F7B3 69 AA                    i.
        .byte   $D4                             ; F7B5 D4                       .
        inx                                     ; F7B6 E8                       .
        ldy     #$45                            ; F7B7 A0 45                    .E
        adc     $52D8,y                         ; F7B9 79 D8 52                 y.R
        and     $26AD                           ; F7BC 2D AD 26                 -.&
        .byte   $5A                             ; F7BF 5A                       Z
        lda     $B4,x                           ; F7C0 B5 B4                    ..
        tax                                     ; F7C2 AA                       .
        ror     a                               ; F7C3 6A                       j
        .byte   $AB                             ; F7C4 AB                       .
        ldx     $DE,y                           ; F7C5 B6 DE                    ..
        lda     $DBBA                           ; F7C7 AD BA DB                 ...
        .byte   $DB                             ; F7CA DB                       .
        cmp     $AF66,x                         ; F7CB DD 66 AF                 .f.
        .byte   $B7                             ; F7CE B7                       .
        lda     $7ABB                           ; F7CF AD BB 7A                 ..z
        .byte   $5B                             ; F7D2 5B                       [
        .byte   $BB                             ; F7D3 BB                       .
        lsr     $BAEB,x                         ; F7D4 5E EB BA                 ^..
        tsx                                     ; F7D7 BA                       .
        eor     $AB,x                           ; F7D8 55 AB                    U.
        inc     LFFFF,x                         ; F7DA FE FF FF                 ...
LF7DD:  .byte   $FF                             ; F7DD FF                       .
        .byte   $FF                             ; F7DE FF                       .
        .byte   $FF                             ; F7DF FF                       .
        .byte   $FF                             ; F7E0 FF                       .
        .byte   $FF                             ; F7E1 FF                       .
        .byte   $7F                             ; F7E2 7F                       .
        lda     $94                             ; F7E3 A5 94                    ..
        .byte   $52                             ; F7E5 52                       R
        eor     #$15                            ; F7E6 49 15                    I.
        stx     $52,y                           ; F7E8 96 52                    .R
        .byte   $12                             ; F7EA 12                       .
        cmp     $52                             ; F7EB C5 52                    .R
        .byte   $92                             ; F7ED 92                       .
        .byte   $52                             ; F7EE 52                       R
        and     $9A                             ; F7EF 25 9A                    %.
        rol     $16                             ; F7F1 26 16                    &.
        eor     $34,x                           ; F7F3 55 34                    U4
        ora     $95,x                           ; F7F5 15 95                    ..
        .byte   $32                             ; F7F7 32                       2
        .byte   $14                             ; F7F8 14                       .
        .byte   $8B                             ; F7F9 8B                       .
        .byte   $52                             ; F7FA 52                       R
        .byte   $52                             ; F7FB 52                       R
        eor     ($98),y                         ; F7FC 51 98                    Q.
        ldy     $92                             ; F7FE A4 92                    ..
        and     $2A                             ; F800 25 2A                    %*
        and     #$49                            ; F802 29 49                    )I
        eor     $A5,x                           ; F804 55 A5                    U.
        lsr     a                               ; F806 4A                       J
        sta     $34,x                           ; F807 95 34                    .4
        eor     $55,x                           ; F809 55 55                    UU
        .byte   $97                             ; F80B 97                       .
        cmp     $AA,x                           ; F80C D5 AA                    ..
        cmp     $6A,x                           ; F80E D5 6A                    .j
        cmp     $D6,x                           ; F810 D5 D6                    ..
        ror     a                               ; F812 6A                       j
        .byte   $AB                             ; F813 AB                       .
        tsx                                     ; F814 BA                       .
        adc     $BAED                           ; F815 6D ED BA                 m..
        cmp     $EAB6,y                         ; F818 D9 B6 EA                 ...
        lsr     $AD,x                           ; F81B 56 AD                    V.
        cmp     $DA,x                           ; F81D D5 DA                    ..
        stx     $CB,y                           ; F81F 96 CB                    ..
        ror     a                               ; F821 6A                       j
        eor     $A5AD,x                         ; F822 5D AD A5                 ]..
        rol     a                               ; F825 2A                       *
        and     $6D6B                           ; F826 2D 6B 6D                 -km
        eor     $5D55,y                         ; F829 59 55 5D                 YU]
        tax                                     ; F82C AA                       .
        nop                                     ; F82D EA                       .
        .byte   $52                             ; F82E 52                       R
        .byte   $AB                             ; F82F AB                       .
        .byte   $5A                             ; F830 5A                       Z
        eor     $D5,x                           ; F831 55 D5                    U.
        tax                                     ; F833 AA                       .
        lda     $56AA                           ; F834 AD AA 56                 ..V
        eor     $CB5B                           ; F837 4D 5B CB                 M[.
        rol     a                               ; F83A 2A                       *
        .byte   $5B                             ; F83B 5B                       [
        lda     $9354                           ; F83C AD 54 93                 .T.
        .byte   $52                             ; F83F 52                       R
        lda     $CA                             ; F840 A5 CA                    ..
        sty     $52,x                           ; F842 94 52                    .R
        eor     ($54),y                         ; F844 51 54                    QT
        ldx     #$54                            ; F846 A2 54                    .T
        bit     $25                             ; F848 24 25                    $%
        and     $15                             ; F84A 25 15                    %.
        lda     $A4                             ; F84C A5 A4                    ..
        .byte   $92                             ; F84E 92                       .
        .byte   $54                             ; F84F 54                       T
        eor     $00,x                           ; F850 55 00                    U.
        brk                                     ; F852 00                       .
        brk                                     ; F853 00                       .
        brk                                     ; F854 00                       .
        brk                                     ; F855 00                       .
        brk                                     ; F856 00                       .
        brk                                     ; F857 00                       .
        brk                                     ; F858 00                       .
        brk                                     ; F859 00                       .
        brk                                     ; F85A 00                       .
        brk                                     ; F85B 00                       .
        brk                                     ; F85C 00                       .
        brk                                     ; F85D 00                       .
        brk                                     ; F85E 00                       .
        brk                                     ; F85F 00                       .
        brk                                     ; F860 00                       .
        brk                                     ; F861 00                       .
        brk                                     ; F862 00                       .
        brk                                     ; F863 00                       .
        brk                                     ; F864 00                       .
        brk                                     ; F865 00                       .
        brk                                     ; F866 00                       .
        brk                                     ; F867 00                       .
        brk                                     ; F868 00                       .
        brk                                     ; F869 00                       .
        brk                                     ; F86A 00                       .
        brk                                     ; F86B 00                       .
        brk                                     ; F86C 00                       .
        brk                                     ; F86D 00                       .
        brk                                     ; F86E 00                       .
        brk                                     ; F86F 00                       .
        brk                                     ; F870 00                       .
        brk                                     ; F871 00                       .
        brk                                     ; F872 00                       .
        brk                                     ; F873 00                       .
        brk                                     ; F874 00                       .
        brk                                     ; F875 00                       .
        brk                                     ; F876 00                       .
        brk                                     ; F877 00                       .
        brk                                     ; F878 00                       .
        brk                                     ; F879 00                       .
        brk                                     ; F87A 00                       .
        brk                                     ; F87B 00                       .
        brk                                     ; F87C 00                       .
        brk                                     ; F87D 00                       .
        brk                                     ; F87E 00                       .
        brk                                     ; F87F 00                       .
        eor     $55,x                           ; F880 55 55                    UU
        sta     $56,x                           ; F882 95 56                    .V
        .byte   $F2                             ; F884 F2                       .
        .byte   $34                             ; F885 34                       4
        .byte   $D3                             ; F886 D3                       .
        cpy     $3564                           ; F887 CC 64 35                 .d5
        .byte   $DB                             ; F88A DB                       .
        ror     $6003,x                         ; F88B 7E 03 60                 ~.`
        .byte   $80                             ; F88E 80                       .
        .byte   $0C                             ; F88F 0C                       .
        inc     $2180,x                         ; F890 FE 80 21                 ..!
        .byte   $FC                             ; F893 FC                       .
        .byte   $FB                             ; F894 FB                       .
        .byte   $F7                             ; F895 F7                       .
        .byte   $FF                             ; F896 FF                       .
        sbc     $8E1D,x                         ; F897 FD 1D 8E                 ...
        .byte   $03                             ; F89A 03                       .
        ldx     a:$00,y                         ; F89B BE 00 00                 ...
        .byte   $0C                             ; F89E 0C                       .
LF89F:  .byte   $04                             ; F89F 04                       .
        bmi     LF8A2                           ; F8A0 30 00                    0.
LF8A2:  brk                                     ; F8A2 00                       .
        brk                                     ; F8A3 00                       .
        .byte   $F0                             ; F8A4 F0                       .
LF8A5:  sbc     LFFFF,y                         ; F8A5 F9 FF FF                 ...
        .byte   $FF                             ; F8A8 FF                       .
        .byte   $FF                             ; F8A9 FF                       .
        .byte   $FF                             ; F8AA FF                       .
        .byte   $FF                             ; F8AB FF                       .
        .byte   $FF                             ; F8AC FF                       .
        .byte   $FF                             ; F8AD FF                       .
        .byte   $FF                             ; F8AE FF                       .
        .byte   $FF                             ; F8AF FF                       .
        .byte   $03                             ; F8B0 03                       .
        brk                                     ; F8B1 00                       .
        brk                                     ; F8B2 00                       .
        brk                                     ; F8B3 00                       .
        brk                                     ; F8B4 00                       .
        brk                                     ; F8B5 00                       .
        brk                                     ; F8B6 00                       .
        brk                                     ; F8B7 00                       .
        brk                                     ; F8B8 00                       .
        brk                                     ; F8B9 00                       .
        brk                                     ; F8BA 00                       .
        brk                                     ; F8BB 00                       .
        sec                                     ; F8BC 38                       8
        .byte   $FF                             ; F8BD FF                       .
        .byte   $FF                             ; F8BE FF                       .
        .byte   $FF                             ; F8BF FF                       .
        .byte   $FF                             ; F8C0 FF                       .
        .byte   $FF                             ; F8C1 FF                       .
        .byte   $FF                             ; F8C2 FF                       .
        .byte   $FF                             ; F8C3 FF                       .
        .byte   $FF                             ; F8C4 FF                       .
        .byte   $FF                             ; F8C5 FF                       .
        .byte   $F7                             ; F8C6 F7                       .
        sbc     $CC89                           ; F8C7 ED 89 CC                 ...
        cpy     a:$80                           ; F8CA CC 80 00                 ...
        brk                                     ; F8CD 00                       .
        brk                                     ; F8CE 00                       .
        brk                                     ; F8CF 00                       .
        brk                                     ; F8D0 00                       .
        brk                                     ; F8D1 00                       .
        ora     ($AC,x)                         ; F8D2 01 AC                    ..
        adc     $CF3E,x                         ; F8D4 7D 3E CF                 }>.
        .byte   $F7                             ; F8D7 F7                       .
        .byte   $FF                             ; F8D8 FF                       .
        .byte   $FF                             ; F8D9 FF                       .
        .byte   $7F                             ; F8DA 7F                       .
        .byte   $7B                             ; F8DB 7B                       {
        .byte   $E3                             ; F8DC E3                       .
        cmp     $CE71,x                         ; F8DD DD 71 CE                 .q.
        sec                                     ; F8E0 38                       8
        .byte   $9E                             ; F8E1 9E                       .
        .byte   $03                             ; F8E2 03                       .
        brk                                     ; F8E3 00                       .
        sta     ($01),y                         ; F8E4 91 01                    ..
        php                                     ; F8E6 08                       .
        .byte   $93                             ; F8E7 93                       .
        adc     $38                             ; F8E8 65 38                    e8
        dec     $C9C0                           ; F8EA CE C0 C9                 ...
        clv                                     ; F8ED B8                       .
        .byte   $67                             ; F8EE 67                       g
        .byte   $9C                             ; F8EF 9C                       .
        .byte   $6F                             ; F8F0 6F                       o
        .byte   $92                             ; F8F1 92                       .
        cmp     $9CB1,y                         ; F8F2 D9 B1 9C                 ...
        .byte   $1C                             ; F8F5 1C                       .
        .byte   $9E                             ; F8F6 9E                       .
        .byte   $73                             ; F8F7 73                       s
        inc     $1CFF                           ; F8F8 EE FF 1C                 ...
        dec     $E043                           ; F8FB CE 43 E0                 .C.
        sei                                     ; F8FE 78                       x
        sty     $C1C7                           ; F8FF 8C C7 C1                 ...
        ora     #$37                            ; F902 09 37                    .7
        .byte   $47                             ; F904 47                       G
        asl     $0E27,x                         ; F905 1E 27 0E                 .'.
        .byte   $FC                             ; F908 FC                       .
        clc                                     ; F909 18                       .
LF90A:  .byte   $CB                             ; F90A CB                       .
        bmi     LF8A5                           ; F90B 30 98                    0.
        adc     ($4E,x)                         ; F90D 61 4E                    aN
        bcs     LF94C                           ; F90F B0 3B                    .;
        .byte   $E7                             ; F911 E7                       .
        cpy     $7338                           ; F912 CC 38 73                 .8s
        .byte   $E7                             ; F915 E7                       .
        .byte   $74                             ; F916 74                       t
        .byte   $9C                             ; F917 9C                       .
        .byte   $E7                             ; F918 E7                       .
        .byte   $33                             ; F919 33                       3
        .byte   $93                             ; F91A 93                       .
        .byte   $33                             ; F91B 33                       3
        .byte   $E3                             ; F91C E3                       .
        and     $3673,y                         ; F91D 39 73 36                 9s6
        .byte   $63                             ; F920 63                       c
        pla                                     ; F921 68                       h
        .byte   $92                             ; F922 92                       .
        .byte   $63                             ; F923 63                       c
        rts                                     ; F924 60                       `

; ----------------------------------------------------------------------------
        stx     $11                             ; F925 86 11                    ..
        sta     $C631,y                         ; F927 99 31 C6                 .1.
        sec                                     ; F92A 38                       8
        .byte   $8F                             ; F92B 8F                       .
        ora     $D9B2,y                         ; F92C 19 B2 D9                 ...
        and     $CEF7,y                         ; F92F 39 F7 CE                 9..
        sta     $33CF                           ; F932 8D CF 33                 ..3
        .byte   $F3                             ; F935 F3                       .
        asl     $07DE                           ; F936 0E DE 07                 ...
        bcs     LF957                           ; F939 B0 1C                    ..
        .byte   $87                             ; F93B 87                       .
        .byte   $43                             ; F93C 43                       C
        .byte   $64                             ; F93D 64                       d
        .byte   $3C                             ; F93E 3C                       <
        asl     $22                             ; F93F 06 22                    ."
        beq     LF90A                           ; F941 F0 C7                    ..
        cpy     #$60                            ; F943 C0 60                    .`
        cpy     $C8F7                           ; F945 CC F7 C8                 ...
        .byte   $F3                             ; F948 F3                       .
        .byte   $9C                             ; F949 9C                       .
        .byte   $9C                             ; F94A 9C                       .
        .byte   $37                             ; F94B 37                       7
LF94C:  .byte   $6F                             ; F94C 6F                       o
        .byte   $32                             ; F94D 32                       2
        .byte   $77                             ; F94E 77                       w
        .byte   $8F                             ; F94F 8F                       .
        .byte   $E3                             ; F950 E3                       .
        .byte   $73                             ; F951 73                       s
        .byte   $9C                             ; F952 9C                       .
        adc     $23E0,y                         ; F953 79 E0 23                 y.#
        .byte   $46                             ; F956 46                       F
LF957:  .byte   $0C                             ; F957 0C                       .
        .byte   $33                             ; F958 33                       3
        .byte   $32                             ; F959 32                       2
        stx     $0748                           ; F95A 8E 48 07                 .H.
        .byte   $93                             ; F95D 93                       .
        .byte   $89                             ; F95E 89                       .
        .byte   $E3                             ; F95F E3                       .
        cpx     #$94                            ; F960 E0 94                    ..
        sbc     $C3                             ; F962 E5 C3                    ..
        ldy     $EE79,x                         ; F964 BC 79 EE                 .y.
        .byte   $D3                             ; F967 D3                       .
        .byte   $9F                             ; F968 9F                       .
        .byte   $87                             ; F969 87                       .
        cmp     $31D8,x                         ; F96A DD D8 31                 ..1
        sbc     ($B1),y                         ; F96D F1 B1                    ..
        adc     ($8C,x)                         ; F96F 61 8C                    a.
        sta     $31E1,y                         ; F971 99 E1 31                 ..1
        .byte   $32                             ; F974 32                       2
        dec     $40                             ; F975 C6 40                    .@
        .byte   $9C                             ; F977 9C                       .
        sta     $B0CC,y                         ; F978 99 CC B0                 ...
        cmp     $C68E                           ; F97B CD 8E C6                 ...
        cmp     $5AF1                           ; F97E CD F1 5A                 ..Z
        .byte   $E3                             ; F981 E3                       .
        sty     $3ED3                           ; F982 8C D3 3E                 ..>
        rol     $87,x                           ; F985 36 87                    6.
        .byte   $1B                             ; F987 1B                       .
        ror     $9C                             ; F988 66 9C                    f.
        .byte   $9C                             ; F98A 9C                       .
        and     ($6C),y                         ; F98B 31 6C                    1l
        bit     $98C7                           ; F98D 2C C7 98                 ,..
LF990:  dec     $61                             ; F990 C6 61                    .a
        .byte   $3A                             ; F992 3A                       :
        .byte   $63                             ; F993 63                       c
        dec     $638C                           ; F994 CE 8C 63                 ..c
        sbc     ($47),y                         ; F997 F1 47                    .G
        .byte   $5C                             ; F999 5C                       \
        inc     $C4                             ; F99A E6 C4                    ..
        cmp     $1C                             ; F99C C5 1C                    ..
        .byte   $1F                             ; F99E 1F                       .
        .byte   $27                             ; F99F 27                       '
        eor     $00,x                           ; F9A0 55 00                    U.
        brk                                     ; F9A2 00                       .
        brk                                     ; F9A3 00                       .
        brk                                     ; F9A4 00                       .
        brk                                     ; F9A5 00                       .
        brk                                     ; F9A6 00                       .
        brk                                     ; F9A7 00                       .
        brk                                     ; F9A8 00                       .
        brk                                     ; F9A9 00                       .
        brk                                     ; F9AA 00                       .
        brk                                     ; F9AB 00                       .
        brk                                     ; F9AC 00                       .
        brk                                     ; F9AD 00                       .
        brk                                     ; F9AE 00                       .
        brk                                     ; F9AF 00                       .
        brk                                     ; F9B0 00                       .
        brk                                     ; F9B1 00                       .
        brk                                     ; F9B2 00                       .
        brk                                     ; F9B3 00                       .
        brk                                     ; F9B4 00                       .
        brk                                     ; F9B5 00                       .
        brk                                     ; F9B6 00                       .
        brk                                     ; F9B7 00                       .
        brk                                     ; F9B8 00                       .
        brk                                     ; F9B9 00                       .
        brk                                     ; F9BA 00                       .
        brk                                     ; F9BB 00                       .
        brk                                     ; F9BC 00                       .
        brk                                     ; F9BD 00                       .
        brk                                     ; F9BE 00                       .
        brk                                     ; F9BF 00                       .
        brk                                     ; F9C0 00                       .
        brk                                     ; F9C1 00                       .
        brk                                     ; F9C2 00                       .
        brk                                     ; F9C3 00                       .
        brk                                     ; F9C4 00                       .
        brk                                     ; F9C5 00                       .
        brk                                     ; F9C6 00                       .
        brk                                     ; F9C7 00                       .
        brk                                     ; F9C8 00                       .
        brk                                     ; F9C9 00                       .
        brk                                     ; F9CA 00                       .
        brk                                     ; F9CB 00                       .
        brk                                     ; F9CC 00                       .
        brk                                     ; F9CD 00                       .
        brk                                     ; F9CE 00                       .
        brk                                     ; F9CF 00                       .
        brk                                     ; F9D0 00                       .
        brk                                     ; F9D1 00                       .
        brk                                     ; F9D2 00                       .
        brk                                     ; F9D3 00                       .
        brk                                     ; F9D4 00                       .
        brk                                     ; F9D5 00                       .
        brk                                     ; F9D6 00                       .
        brk                                     ; F9D7 00                       .
        brk                                     ; F9D8 00                       .
        brk                                     ; F9D9 00                       .
        brk                                     ; F9DA 00                       .
        brk                                     ; F9DB 00                       .
        brk                                     ; F9DC 00                       .
        brk                                     ; F9DD 00                       .
        brk                                     ; F9DE 00                       .
        brk                                     ; F9DF 00                       .
        brk                                     ; F9E0 00                       .
        brk                                     ; F9E1 00                       .
        brk                                     ; F9E2 00                       .
        brk                                     ; F9E3 00                       .
        brk                                     ; F9E4 00                       .
        brk                                     ; F9E5 00                       .
        brk                                     ; F9E6 00                       .
        brk                                     ; F9E7 00                       .
        brk                                     ; F9E8 00                       .
        brk                                     ; F9E9 00                       .
        brk                                     ; F9EA 00                       .
        brk                                     ; F9EB 00                       .
        brk                                     ; F9EC 00                       .
        brk                                     ; F9ED 00                       .
        brk                                     ; F9EE 00                       .
        brk                                     ; F9EF 00                       .
        brk                                     ; F9F0 00                       .
        brk                                     ; F9F1 00                       .
        brk                                     ; F9F2 00                       .
        brk                                     ; F9F3 00                       .
        brk                                     ; F9F4 00                       .
        brk                                     ; F9F5 00                       .
        brk                                     ; F9F6 00                       .
        brk                                     ; F9F7 00                       .
        brk                                     ; F9F8 00                       .
        brk                                     ; F9F9 00                       .
        brk                                     ; F9FA 00                       .
        brk                                     ; F9FB 00                       .
        brk                                     ; F9FC 00                       .
        brk                                     ; F9FD 00                       .
        brk                                     ; F9FE 00                       .
        brk                                     ; F9FF 00                       .
        brk                                     ; FA00 00                       .
        brk                                     ; FA01 00                       .
        brk                                     ; FA02 00                       .
        brk                                     ; FA03 00                       .
        brk                                     ; FA04 00                       .
        brk                                     ; FA05 00                       .
        brk                                     ; FA06 00                       .
        brk                                     ; FA07 00                       .
        brk                                     ; FA08 00                       .
        brk                                     ; FA09 00                       .
        brk                                     ; FA0A 00                       .
        brk                                     ; FA0B 00                       .
        brk                                     ; FA0C 00                       .
        brk                                     ; FA0D 00                       .
        brk                                     ; FA0E 00                       .
        brk                                     ; FA0F 00                       .
        brk                                     ; FA10 00                       .
        brk                                     ; FA11 00                       .
        brk                                     ; FA12 00                       .
        brk                                     ; FA13 00                       .
        brk                                     ; FA14 00                       .
        brk                                     ; FA15 00                       .
        brk                                     ; FA16 00                       .
        brk                                     ; FA17 00                       .
        brk                                     ; FA18 00                       .
        brk                                     ; FA19 00                       .
        brk                                     ; FA1A 00                       .
        brk                                     ; FA1B 00                       .
        brk                                     ; FA1C 00                       .
        brk                                     ; FA1D 00                       .
        brk                                     ; FA1E 00                       .
        brk                                     ; FA1F 00                       .
        brk                                     ; FA20 00                       .
        brk                                     ; FA21 00                       .
        brk                                     ; FA22 00                       .
        brk                                     ; FA23 00                       .
        brk                                     ; FA24 00                       .
        brk                                     ; FA25 00                       .
        brk                                     ; FA26 00                       .
        brk                                     ; FA27 00                       .
        brk                                     ; FA28 00                       .
        brk                                     ; FA29 00                       .
        brk                                     ; FA2A 00                       .
        brk                                     ; FA2B 00                       .
        brk                                     ; FA2C 00                       .
        brk                                     ; FA2D 00                       .
        brk                                     ; FA2E 00                       .
        brk                                     ; FA2F 00                       .
        brk                                     ; FA30 00                       .
        brk                                     ; FA31 00                       .
        brk                                     ; FA32 00                       .
        brk                                     ; FA33 00                       .
        brk                                     ; FA34 00                       .
        brk                                     ; FA35 00                       .
        brk                                     ; FA36 00                       .
        brk                                     ; FA37 00                       .
        brk                                     ; FA38 00                       .
        brk                                     ; FA39 00                       .
        brk                                     ; FA3A 00                       .
        brk                                     ; FA3B 00                       .
        brk                                     ; FA3C 00                       .
        brk                                     ; FA3D 00                       .
        brk                                     ; FA3E 00                       .
        brk                                     ; FA3F 00                       .
        brk                                     ; FA40 00                       .
        brk                                     ; FA41 00                       .
        brk                                     ; FA42 00                       .
        brk                                     ; FA43 00                       .
        brk                                     ; FA44 00                       .
        brk                                     ; FA45 00                       .
        brk                                     ; FA46 00                       .
        brk                                     ; FA47 00                       .
        brk                                     ; FA48 00                       .
        brk                                     ; FA49 00                       .
        brk                                     ; FA4A 00                       .
        brk                                     ; FA4B 00                       .
        brk                                     ; FA4C 00                       .
        brk                                     ; FA4D 00                       .
        brk                                     ; FA4E 00                       .
        brk                                     ; FA4F 00                       .
        brk                                     ; FA50 00                       .
        brk                                     ; FA51 00                       .
        brk                                     ; FA52 00                       .
        brk                                     ; FA53 00                       .
        brk                                     ; FA54 00                       .
        brk                                     ; FA55 00                       .
        brk                                     ; FA56 00                       .
        brk                                     ; FA57 00                       .
        brk                                     ; FA58 00                       .
        brk                                     ; FA59 00                       .
        brk                                     ; FA5A 00                       .
        brk                                     ; FA5B 00                       .
        brk                                     ; FA5C 00                       .
        brk                                     ; FA5D 00                       .
        brk                                     ; FA5E 00                       .
        brk                                     ; FA5F 00                       .
        brk                                     ; FA60 00                       .
        brk                                     ; FA61 00                       .
        brk                                     ; FA62 00                       .
        brk                                     ; FA63 00                       .
        brk                                     ; FA64 00                       .
        brk                                     ; FA65 00                       .
        brk                                     ; FA66 00                       .
        brk                                     ; FA67 00                       .
        brk                                     ; FA68 00                       .
        brk                                     ; FA69 00                       .
        brk                                     ; FA6A 00                       .
        brk                                     ; FA6B 00                       .
        brk                                     ; FA6C 00                       .
        brk                                     ; FA6D 00                       .
        brk                                     ; FA6E 00                       .
        brk                                     ; FA6F 00                       .
        brk                                     ; FA70 00                       .
        brk                                     ; FA71 00                       .
        brk                                     ; FA72 00                       .
        brk                                     ; FA73 00                       .
        brk                                     ; FA74 00                       .
        brk                                     ; FA75 00                       .
        brk                                     ; FA76 00                       .
        brk                                     ; FA77 00                       .
        brk                                     ; FA78 00                       .
        brk                                     ; FA79 00                       .
        brk                                     ; FA7A 00                       .
        brk                                     ; FA7B 00                       .
        brk                                     ; FA7C 00                       .
        brk                                     ; FA7D 00                       .
        brk                                     ; FA7E 00                       .
        brk                                     ; FA7F 00                       .
        brk                                     ; FA80 00                       .
        brk                                     ; FA81 00                       .
        brk                                     ; FA82 00                       .
        brk                                     ; FA83 00                       .
        brk                                     ; FA84 00                       .
        brk                                     ; FA85 00                       .
        brk                                     ; FA86 00                       .
        brk                                     ; FA87 00                       .
        brk                                     ; FA88 00                       .
        brk                                     ; FA89 00                       .
        brk                                     ; FA8A 00                       .
        brk                                     ; FA8B 00                       .
        brk                                     ; FA8C 00                       .
        brk                                     ; FA8D 00                       .
        brk                                     ; FA8E 00                       .
        brk                                     ; FA8F 00                       .
        brk                                     ; FA90 00                       .
        brk                                     ; FA91 00                       .
        brk                                     ; FA92 00                       .
        brk                                     ; FA93 00                       .
        brk                                     ; FA94 00                       .
        brk                                     ; FA95 00                       .
        brk                                     ; FA96 00                       .
        brk                                     ; FA97 00                       .
        brk                                     ; FA98 00                       .
        brk                                     ; FA99 00                       .
        brk                                     ; FA9A 00                       .
        brk                                     ; FA9B 00                       .
        brk                                     ; FA9C 00                       .
        brk                                     ; FA9D 00                       .
        brk                                     ; FA9E 00                       .
        brk                                     ; FA9F 00                       .
        brk                                     ; FAA0 00                       .
        brk                                     ; FAA1 00                       .
        brk                                     ; FAA2 00                       .
        brk                                     ; FAA3 00                       .
        brk                                     ; FAA4 00                       .
        brk                                     ; FAA5 00                       .
        brk                                     ; FAA6 00                       .
        brk                                     ; FAA7 00                       .
        brk                                     ; FAA8 00                       .
        brk                                     ; FAA9 00                       .
        brk                                     ; FAAA 00                       .
        brk                                     ; FAAB 00                       .
        brk                                     ; FAAC 00                       .
        brk                                     ; FAAD 00                       .
        brk                                     ; FAAE 00                       .
        brk                                     ; FAAF 00                       .
        brk                                     ; FAB0 00                       .
        brk                                     ; FAB1 00                       .
        brk                                     ; FAB2 00                       .
        brk                                     ; FAB3 00                       .
        brk                                     ; FAB4 00                       .
        brk                                     ; FAB5 00                       .
        brk                                     ; FAB6 00                       .
        brk                                     ; FAB7 00                       .
        brk                                     ; FAB8 00                       .
        brk                                     ; FAB9 00                       .
        brk                                     ; FABA 00                       .
        brk                                     ; FABB 00                       .
        brk                                     ; FABC 00                       .
        brk                                     ; FABD 00                       .
        brk                                     ; FABE 00                       .
        brk                                     ; FABF 00                       .
        brk                                     ; FAC0 00                       .
        brk                                     ; FAC1 00                       .
        brk                                     ; FAC2 00                       .
        brk                                     ; FAC3 00                       .
        brk                                     ; FAC4 00                       .
        brk                                     ; FAC5 00                       .
        brk                                     ; FAC6 00                       .
        brk                                     ; FAC7 00                       .
        brk                                     ; FAC8 00                       .
        brk                                     ; FAC9 00                       .
        brk                                     ; FACA 00                       .
        brk                                     ; FACB 00                       .
        brk                                     ; FACC 00                       .
        brk                                     ; FACD 00                       .
        brk                                     ; FACE 00                       .
        brk                                     ; FACF 00                       .
        brk                                     ; FAD0 00                       .
        brk                                     ; FAD1 00                       .
        brk                                     ; FAD2 00                       .
        brk                                     ; FAD3 00                       .
        brk                                     ; FAD4 00                       .
        brk                                     ; FAD5 00                       .
        brk                                     ; FAD6 00                       .
        brk                                     ; FAD7 00                       .
        brk                                     ; FAD8 00                       .
        brk                                     ; FAD9 00                       .
        brk                                     ; FADA 00                       .
        brk                                     ; FADB 00                       .
        brk                                     ; FADC 00                       .
        brk                                     ; FADD 00                       .
        brk                                     ; FADE 00                       .
        brk                                     ; FADF 00                       .
        brk                                     ; FAE0 00                       .
        brk                                     ; FAE1 00                       .
        brk                                     ; FAE2 00                       .
        brk                                     ; FAE3 00                       .
        brk                                     ; FAE4 00                       .
        brk                                     ; FAE5 00                       .
        brk                                     ; FAE6 00                       .
        brk                                     ; FAE7 00                       .
        brk                                     ; FAE8 00                       .
        brk                                     ; FAE9 00                       .
        brk                                     ; FAEA 00                       .
        brk                                     ; FAEB 00                       .
        brk                                     ; FAEC 00                       .
        brk                                     ; FAED 00                       .
        brk                                     ; FAEE 00                       .
        brk                                     ; FAEF 00                       .
        brk                                     ; FAF0 00                       .
        brk                                     ; FAF1 00                       .
        brk                                     ; FAF2 00                       .
        brk                                     ; FAF3 00                       .
        brk                                     ; FAF4 00                       .
        brk                                     ; FAF5 00                       .
        brk                                     ; FAF6 00                       .
LFAF7:  brk                                     ; FAF7 00                       .
        brk                                     ; FAF8 00                       .
        brk                                     ; FAF9 00                       .
        brk                                     ; FAFA 00                       .
        brk                                     ; FAFB 00                       .
        brk                                     ; FAFC 00                       .
        brk                                     ; FAFD 00                       .
        brk                                     ; FAFE 00                       .
        brk                                     ; FAFF 00                       .
        brk                                     ; FB00 00                       .
        brk                                     ; FB01 00                       .
        brk                                     ; FB02 00                       .
        brk                                     ; FB03 00                       .
        brk                                     ; FB04 00                       .
        brk                                     ; FB05 00                       .
        brk                                     ; FB06 00                       .
        brk                                     ; FB07 00                       .
        brk                                     ; FB08 00                       .
        brk                                     ; FB09 00                       .
        brk                                     ; FB0A 00                       .
        brk                                     ; FB0B 00                       .
        brk                                     ; FB0C 00                       .
        brk                                     ; FB0D 00                       .
        brk                                     ; FB0E 00                       .
        brk                                     ; FB0F 00                       .
        brk                                     ; FB10 00                       .
        brk                                     ; FB11 00                       .
        brk                                     ; FB12 00                       .
        brk                                     ; FB13 00                       .
        brk                                     ; FB14 00                       .
        brk                                     ; FB15 00                       .
        brk                                     ; FB16 00                       .
        brk                                     ; FB17 00                       .
        brk                                     ; FB18 00                       .
        brk                                     ; FB19 00                       .
        brk                                     ; FB1A 00                       .
        brk                                     ; FB1B 00                       .
        brk                                     ; FB1C 00                       .
        brk                                     ; FB1D 00                       .
        brk                                     ; FB1E 00                       .
        brk                                     ; FB1F 00                       .
        brk                                     ; FB20 00                       .
        brk                                     ; FB21 00                       .
        brk                                     ; FB22 00                       .
        brk                                     ; FB23 00                       .
        brk                                     ; FB24 00                       .
        brk                                     ; FB25 00                       .
        brk                                     ; FB26 00                       .
        brk                                     ; FB27 00                       .
        brk                                     ; FB28 00                       .
        brk                                     ; FB29 00                       .
        brk                                     ; FB2A 00                       .
        brk                                     ; FB2B 00                       .
        brk                                     ; FB2C 00                       .
        brk                                     ; FB2D 00                       .
        brk                                     ; FB2E 00                       .
        brk                                     ; FB2F 00                       .
        brk                                     ; FB30 00                       .
        brk                                     ; FB31 00                       .
        brk                                     ; FB32 00                       .
        brk                                     ; FB33 00                       .
        brk                                     ; FB34 00                       .
        brk                                     ; FB35 00                       .
        brk                                     ; FB36 00                       .
        brk                                     ; FB37 00                       .
        brk                                     ; FB38 00                       .
        brk                                     ; FB39 00                       .
        brk                                     ; FB3A 00                       .
        brk                                     ; FB3B 00                       .
        brk                                     ; FB3C 00                       .
        brk                                     ; FB3D 00                       .
        brk                                     ; FB3E 00                       .
        brk                                     ; FB3F 00                       .
        brk                                     ; FB40 00                       .
        brk                                     ; FB41 00                       .
        brk                                     ; FB42 00                       .
        brk                                     ; FB43 00                       .
        brk                                     ; FB44 00                       .
        brk                                     ; FB45 00                       .
        brk                                     ; FB46 00                       .
        brk                                     ; FB47 00                       .
        brk                                     ; FB48 00                       .
        brk                                     ; FB49 00                       .
        brk                                     ; FB4A 00                       .
        brk                                     ; FB4B 00                       .
        brk                                     ; FB4C 00                       .
        brk                                     ; FB4D 00                       .
        brk                                     ; FB4E 00                       .
        brk                                     ; FB4F 00                       .
        brk                                     ; FB50 00                       .
        brk                                     ; FB51 00                       .
        brk                                     ; FB52 00                       .
        brk                                     ; FB53 00                       .
        brk                                     ; FB54 00                       .
        brk                                     ; FB55 00                       .
        brk                                     ; FB56 00                       .
        brk                                     ; FB57 00                       .
        brk                                     ; FB58 00                       .
        brk                                     ; FB59 00                       .
        brk                                     ; FB5A 00                       .
        brk                                     ; FB5B 00                       .
        brk                                     ; FB5C 00                       .
        brk                                     ; FB5D 00                       .
        brk                                     ; FB5E 00                       .
        brk                                     ; FB5F 00                       .
        brk                                     ; FB60 00                       .
        brk                                     ; FB61 00                       .
        brk                                     ; FB62 00                       .
        brk                                     ; FB63 00                       .
        brk                                     ; FB64 00                       .
        brk                                     ; FB65 00                       .
        brk                                     ; FB66 00                       .
        brk                                     ; FB67 00                       .
        brk                                     ; FB68 00                       .
        brk                                     ; FB69 00                       .
        brk                                     ; FB6A 00                       .
        brk                                     ; FB6B 00                       .
        brk                                     ; FB6C 00                       .
        brk                                     ; FB6D 00                       .
        brk                                     ; FB6E 00                       .
        brk                                     ; FB6F 00                       .
        brk                                     ; FB70 00                       .
        brk                                     ; FB71 00                       .
        brk                                     ; FB72 00                       .
        brk                                     ; FB73 00                       .
        brk                                     ; FB74 00                       .
        brk                                     ; FB75 00                       .
        brk                                     ; FB76 00                       .
        brk                                     ; FB77 00                       .
        brk                                     ; FB78 00                       .
        brk                                     ; FB79 00                       .
        brk                                     ; FB7A 00                       .
        brk                                     ; FB7B 00                       .
        brk                                     ; FB7C 00                       .
        brk                                     ; FB7D 00                       .
        brk                                     ; FB7E 00                       .
        brk                                     ; FB7F 00                       .
        brk                                     ; FB80 00                       .
        brk                                     ; FB81 00                       .
        brk                                     ; FB82 00                       .
        brk                                     ; FB83 00                       .
        brk                                     ; FB84 00                       .
        brk                                     ; FB85 00                       .
        brk                                     ; FB86 00                       .
        brk                                     ; FB87 00                       .
        brk                                     ; FB88 00                       .
        brk                                     ; FB89 00                       .
        brk                                     ; FB8A 00                       .
        brk                                     ; FB8B 00                       .
        brk                                     ; FB8C 00                       .
        brk                                     ; FB8D 00                       .
        brk                                     ; FB8E 00                       .
        brk                                     ; FB8F 00                       .
        brk                                     ; FB90 00                       .
        brk                                     ; FB91 00                       .
        brk                                     ; FB92 00                       .
        brk                                     ; FB93 00                       .
        brk                                     ; FB94 00                       .
        brk                                     ; FB95 00                       .
        brk                                     ; FB96 00                       .
        brk                                     ; FB97 00                       .
        brk                                     ; FB98 00                       .
        brk                                     ; FB99 00                       .
        brk                                     ; FB9A 00                       .
        brk                                     ; FB9B 00                       .
        brk                                     ; FB9C 00                       .
        brk                                     ; FB9D 00                       .
        brk                                     ; FB9E 00                       .
        brk                                     ; FB9F 00                       .
        brk                                     ; FBA0 00                       .
        brk                                     ; FBA1 00                       .
        brk                                     ; FBA2 00                       .
        brk                                     ; FBA3 00                       .
        brk                                     ; FBA4 00                       .
        brk                                     ; FBA5 00                       .
        brk                                     ; FBA6 00                       .
        brk                                     ; FBA7 00                       .
        brk                                     ; FBA8 00                       .
        brk                                     ; FBA9 00                       .
        brk                                     ; FBAA 00                       .
        brk                                     ; FBAB 00                       .
        brk                                     ; FBAC 00                       .
        brk                                     ; FBAD 00                       .
        brk                                     ; FBAE 00                       .
        brk                                     ; FBAF 00                       .
        brk                                     ; FBB0 00                       .
        brk                                     ; FBB1 00                       .
        brk                                     ; FBB2 00                       .
        brk                                     ; FBB3 00                       .
        brk                                     ; FBB4 00                       .
        brk                                     ; FBB5 00                       .
        brk                                     ; FBB6 00                       .
        brk                                     ; FBB7 00                       .
        brk                                     ; FBB8 00                       .
        brk                                     ; FBB9 00                       .
        brk                                     ; FBBA 00                       .
        brk                                     ; FBBB 00                       .
        brk                                     ; FBBC 00                       .
        brk                                     ; FBBD 00                       .
        brk                                     ; FBBE 00                       .
        brk                                     ; FBBF 00                       .
        brk                                     ; FBC0 00                       .
        brk                                     ; FBC1 00                       .
        brk                                     ; FBC2 00                       .
        brk                                     ; FBC3 00                       .
        brk                                     ; FBC4 00                       .
        brk                                     ; FBC5 00                       .
        brk                                     ; FBC6 00                       .
        brk                                     ; FBC7 00                       .
        brk                                     ; FBC8 00                       .
        brk                                     ; FBC9 00                       .
        brk                                     ; FBCA 00                       .
        brk                                     ; FBCB 00                       .
        brk                                     ; FBCC 00                       .
        brk                                     ; FBCD 00                       .
        brk                                     ; FBCE 00                       .
        brk                                     ; FBCF 00                       .
        brk                                     ; FBD0 00                       .
        brk                                     ; FBD1 00                       .
        brk                                     ; FBD2 00                       .
        brk                                     ; FBD3 00                       .
        brk                                     ; FBD4 00                       .
        brk                                     ; FBD5 00                       .
        brk                                     ; FBD6 00                       .
        brk                                     ; FBD7 00                       .
        brk                                     ; FBD8 00                       .
        brk                                     ; FBD9 00                       .
        brk                                     ; FBDA 00                       .
        brk                                     ; FBDB 00                       .
        brk                                     ; FBDC 00                       .
        brk                                     ; FBDD 00                       .
        brk                                     ; FBDE 00                       .
        brk                                     ; FBDF 00                       .
        brk                                     ; FBE0 00                       .
        brk                                     ; FBE1 00                       .
        brk                                     ; FBE2 00                       .
        brk                                     ; FBE3 00                       .
        brk                                     ; FBE4 00                       .
        brk                                     ; FBE5 00                       .
        brk                                     ; FBE6 00                       .
        brk                                     ; FBE7 00                       .
        brk                                     ; FBE8 00                       .
        brk                                     ; FBE9 00                       .
        brk                                     ; FBEA 00                       .
        brk                                     ; FBEB 00                       .
        brk                                     ; FBEC 00                       .
        brk                                     ; FBED 00                       .
        brk                                     ; FBEE 00                       .
        brk                                     ; FBEF 00                       .
        brk                                     ; FBF0 00                       .
        brk                                     ; FBF1 00                       .
        brk                                     ; FBF2 00                       .
        brk                                     ; FBF3 00                       .
        brk                                     ; FBF4 00                       .
        brk                                     ; FBF5 00                       .
        brk                                     ; FBF6 00                       .
        brk                                     ; FBF7 00                       .
        brk                                     ; FBF8 00                       .
        brk                                     ; FBF9 00                       .
        brk                                     ; FBFA 00                       .
        brk                                     ; FBFB 00                       .
        brk                                     ; FBFC 00                       .
        brk                                     ; FBFD 00                       .
        brk                                     ; FBFE 00                       .
        brk                                     ; FBFF 00                       .
        brk                                     ; FC00 00                       .
        brk                                     ; FC01 00                       .
        brk                                     ; FC02 00                       .
        brk                                     ; FC03 00                       .
        brk                                     ; FC04 00                       .
        brk                                     ; FC05 00                       .
        brk                                     ; FC06 00                       .
        brk                                     ; FC07 00                       .
        brk                                     ; FC08 00                       .
        brk                                     ; FC09 00                       .
        brk                                     ; FC0A 00                       .
        brk                                     ; FC0B 00                       .
        brk                                     ; FC0C 00                       .
        brk                                     ; FC0D 00                       .
        brk                                     ; FC0E 00                       .
        brk                                     ; FC0F 00                       .
        brk                                     ; FC10 00                       .
        brk                                     ; FC11 00                       .
        brk                                     ; FC12 00                       .
        brk                                     ; FC13 00                       .
        brk                                     ; FC14 00                       .
        brk                                     ; FC15 00                       .
        brk                                     ; FC16 00                       .
        brk                                     ; FC17 00                       .
        brk                                     ; FC18 00                       .
        brk                                     ; FC19 00                       .
        brk                                     ; FC1A 00                       .
        brk                                     ; FC1B 00                       .
        brk                                     ; FC1C 00                       .
        brk                                     ; FC1D 00                       .
        brk                                     ; FC1E 00                       .
        brk                                     ; FC1F 00                       .
        brk                                     ; FC20 00                       .
        brk                                     ; FC21 00                       .
        brk                                     ; FC22 00                       .
        brk                                     ; FC23 00                       .
        brk                                     ; FC24 00                       .
        brk                                     ; FC25 00                       .
        brk                                     ; FC26 00                       .
        brk                                     ; FC27 00                       .
        brk                                     ; FC28 00                       .
        brk                                     ; FC29 00                       .
        brk                                     ; FC2A 00                       .
        brk                                     ; FC2B 00                       .
        brk                                     ; FC2C 00                       .
        brk                                     ; FC2D 00                       .
        brk                                     ; FC2E 00                       .
        brk                                     ; FC2F 00                       .
        brk                                     ; FC30 00                       .
        brk                                     ; FC31 00                       .
        brk                                     ; FC32 00                       .
        brk                                     ; FC33 00                       .
        brk                                     ; FC34 00                       .
        brk                                     ; FC35 00                       .
        brk                                     ; FC36 00                       .
        brk                                     ; FC37 00                       .
        brk                                     ; FC38 00                       .
        brk                                     ; FC39 00                       .
        brk                                     ; FC3A 00                       .
        brk                                     ; FC3B 00                       .
        brk                                     ; FC3C 00                       .
        brk                                     ; FC3D 00                       .
        brk                                     ; FC3E 00                       .
        brk                                     ; FC3F 00                       .
        brk                                     ; FC40 00                       .
        brk                                     ; FC41 00                       .
        brk                                     ; FC42 00                       .
        brk                                     ; FC43 00                       .
        brk                                     ; FC44 00                       .
        brk                                     ; FC45 00                       .
        brk                                     ; FC46 00                       .
        brk                                     ; FC47 00                       .
        brk                                     ; FC48 00                       .
        brk                                     ; FC49 00                       .
        brk                                     ; FC4A 00                       .
        brk                                     ; FC4B 00                       .
        brk                                     ; FC4C 00                       .
        brk                                     ; FC4D 00                       .
        brk                                     ; FC4E 00                       .
        brk                                     ; FC4F 00                       .
        brk                                     ; FC50 00                       .
        brk                                     ; FC51 00                       .
        brk                                     ; FC52 00                       .
        brk                                     ; FC53 00                       .
        brk                                     ; FC54 00                       .
        brk                                     ; FC55 00                       .
        brk                                     ; FC56 00                       .
        brk                                     ; FC57 00                       .
        brk                                     ; FC58 00                       .
        brk                                     ; FC59 00                       .
        brk                                     ; FC5A 00                       .
        brk                                     ; FC5B 00                       .
        brk                                     ; FC5C 00                       .
        brk                                     ; FC5D 00                       .
        brk                                     ; FC5E 00                       .
        brk                                     ; FC5F 00                       .
        brk                                     ; FC60 00                       .
        brk                                     ; FC61 00                       .
        brk                                     ; FC62 00                       .
        brk                                     ; FC63 00                       .
        brk                                     ; FC64 00                       .
        brk                                     ; FC65 00                       .
        brk                                     ; FC66 00                       .
        brk                                     ; FC67 00                       .
        brk                                     ; FC68 00                       .
        brk                                     ; FC69 00                       .
        brk                                     ; FC6A 00                       .
        brk                                     ; FC6B 00                       .
        brk                                     ; FC6C 00                       .
        brk                                     ; FC6D 00                       .
        brk                                     ; FC6E 00                       .
        brk                                     ; FC6F 00                       .
        brk                                     ; FC70 00                       .
        brk                                     ; FC71 00                       .
        brk                                     ; FC72 00                       .
        brk                                     ; FC73 00                       .
        brk                                     ; FC74 00                       .
        brk                                     ; FC75 00                       .
        brk                                     ; FC76 00                       .
        brk                                     ; FC77 00                       .
        brk                                     ; FC78 00                       .
        brk                                     ; FC79 00                       .
        brk                                     ; FC7A 00                       .
        brk                                     ; FC7B 00                       .
        brk                                     ; FC7C 00                       .
        brk                                     ; FC7D 00                       .
        brk                                     ; FC7E 00                       .
        brk                                     ; FC7F 00                       .
        brk                                     ; FC80 00                       .
        brk                                     ; FC81 00                       .
        brk                                     ; FC82 00                       .
        brk                                     ; FC83 00                       .
        brk                                     ; FC84 00                       .
        brk                                     ; FC85 00                       .
        brk                                     ; FC86 00                       .
        brk                                     ; FC87 00                       .
        brk                                     ; FC88 00                       .
        brk                                     ; FC89 00                       .
        brk                                     ; FC8A 00                       .
        brk                                     ; FC8B 00                       .
        brk                                     ; FC8C 00                       .
        brk                                     ; FC8D 00                       .
        brk                                     ; FC8E 00                       .
        brk                                     ; FC8F 00                       .
        brk                                     ; FC90 00                       .
        brk                                     ; FC91 00                       .
        brk                                     ; FC92 00                       .
        brk                                     ; FC93 00                       .
        brk                                     ; FC94 00                       .
        brk                                     ; FC95 00                       .
        brk                                     ; FC96 00                       .
        brk                                     ; FC97 00                       .
        brk                                     ; FC98 00                       .
        brk                                     ; FC99 00                       .
        brk                                     ; FC9A 00                       .
        brk                                     ; FC9B 00                       .
        brk                                     ; FC9C 00                       .
        brk                                     ; FC9D 00                       .
        brk                                     ; FC9E 00                       .
        brk                                     ; FC9F 00                       .
        brk                                     ; FCA0 00                       .
        brk                                     ; FCA1 00                       .
        brk                                     ; FCA2 00                       .
        brk                                     ; FCA3 00                       .
        brk                                     ; FCA4 00                       .
        brk                                     ; FCA5 00                       .
        brk                                     ; FCA6 00                       .
        brk                                     ; FCA7 00                       .
        brk                                     ; FCA8 00                       .
        brk                                     ; FCA9 00                       .
        brk                                     ; FCAA 00                       .
        brk                                     ; FCAB 00                       .
        brk                                     ; FCAC 00                       .
        brk                                     ; FCAD 00                       .
        brk                                     ; FCAE 00                       .
        brk                                     ; FCAF 00                       .
        brk                                     ; FCB0 00                       .
        brk                                     ; FCB1 00                       .
        brk                                     ; FCB2 00                       .
        brk                                     ; FCB3 00                       .
        brk                                     ; FCB4 00                       .
        brk                                     ; FCB5 00                       .
        brk                                     ; FCB6 00                       .
        brk                                     ; FCB7 00                       .
        brk                                     ; FCB8 00                       .
        brk                                     ; FCB9 00                       .
        brk                                     ; FCBA 00                       .
        brk                                     ; FCBB 00                       .
        brk                                     ; FCBC 00                       .
        brk                                     ; FCBD 00                       .
        brk                                     ; FCBE 00                       .
        brk                                     ; FCBF 00                       .
        brk                                     ; FCC0 00                       .
        brk                                     ; FCC1 00                       .
        brk                                     ; FCC2 00                       .
        brk                                     ; FCC3 00                       .
        brk                                     ; FCC4 00                       .
        brk                                     ; FCC5 00                       .
        brk                                     ; FCC6 00                       .
        brk                                     ; FCC7 00                       .
        brk                                     ; FCC8 00                       .
        brk                                     ; FCC9 00                       .
        brk                                     ; FCCA 00                       .
        brk                                     ; FCCB 00                       .
        brk                                     ; FCCC 00                       .
        brk                                     ; FCCD 00                       .
        brk                                     ; FCCE 00                       .
        brk                                     ; FCCF 00                       .
        brk                                     ; FCD0 00                       .
        brk                                     ; FCD1 00                       .
        brk                                     ; FCD2 00                       .
        brk                                     ; FCD3 00                       .
        brk                                     ; FCD4 00                       .
        brk                                     ; FCD5 00                       .
        brk                                     ; FCD6 00                       .
        brk                                     ; FCD7 00                       .
        brk                                     ; FCD8 00                       .
        brk                                     ; FCD9 00                       .
        brk                                     ; FCDA 00                       .
        brk                                     ; FCDB 00                       .
        brk                                     ; FCDC 00                       .
        brk                                     ; FCDD 00                       .
        brk                                     ; FCDE 00                       .
        brk                                     ; FCDF 00                       .
        brk                                     ; FCE0 00                       .
        brk                                     ; FCE1 00                       .
        brk                                     ; FCE2 00                       .
        brk                                     ; FCE3 00                       .
        brk                                     ; FCE4 00                       .
        brk                                     ; FCE5 00                       .
        brk                                     ; FCE6 00                       .
        brk                                     ; FCE7 00                       .
        brk                                     ; FCE8 00                       .
        brk                                     ; FCE9 00                       .
        brk                                     ; FCEA 00                       .
        brk                                     ; FCEB 00                       .
        brk                                     ; FCEC 00                       .
        brk                                     ; FCED 00                       .
        brk                                     ; FCEE 00                       .
        brk                                     ; FCEF 00                       .
        brk                                     ; FCF0 00                       .
        brk                                     ; FCF1 00                       .
        brk                                     ; FCF2 00                       .
        brk                                     ; FCF3 00                       .
        brk                                     ; FCF4 00                       .
        brk                                     ; FCF5 00                       .
        brk                                     ; FCF6 00                       .
        brk                                     ; FCF7 00                       .
        brk                                     ; FCF8 00                       .
        brk                                     ; FCF9 00                       .
        brk                                     ; FCFA 00                       .
        brk                                     ; FCFB 00                       .
        brk                                     ; FCFC 00                       .
        brk                                     ; FCFD 00                       .
        brk                                     ; FCFE 00                       .
        brk                                     ; FCFF 00                       .
        brk                                     ; FD00 00                       .
        brk                                     ; FD01 00                       .
        brk                                     ; FD02 00                       .
        brk                                     ; FD03 00                       .
        brk                                     ; FD04 00                       .
        brk                                     ; FD05 00                       .
        brk                                     ; FD06 00                       .
        brk                                     ; FD07 00                       .
        brk                                     ; FD08 00                       .
        brk                                     ; FD09 00                       .
        brk                                     ; FD0A 00                       .
        brk                                     ; FD0B 00                       .
        brk                                     ; FD0C 00                       .
        brk                                     ; FD0D 00                       .
        brk                                     ; FD0E 00                       .
        brk                                     ; FD0F 00                       .
        brk                                     ; FD10 00                       .
        brk                                     ; FD11 00                       .
        brk                                     ; FD12 00                       .
        brk                                     ; FD13 00                       .
        brk                                     ; FD14 00                       .
        brk                                     ; FD15 00                       .
        brk                                     ; FD16 00                       .
        brk                                     ; FD17 00                       .
        brk                                     ; FD18 00                       .
        brk                                     ; FD19 00                       .
        brk                                     ; FD1A 00                       .
        brk                                     ; FD1B 00                       .
        brk                                     ; FD1C 00                       .
        brk                                     ; FD1D 00                       .
        brk                                     ; FD1E 00                       .
        brk                                     ; FD1F 00                       .
        brk                                     ; FD20 00                       .
        brk                                     ; FD21 00                       .
        brk                                     ; FD22 00                       .
        brk                                     ; FD23 00                       .
        brk                                     ; FD24 00                       .
        brk                                     ; FD25 00                       .
        brk                                     ; FD26 00                       .
        brk                                     ; FD27 00                       .
        brk                                     ; FD28 00                       .
        brk                                     ; FD29 00                       .
        brk                                     ; FD2A 00                       .
        brk                                     ; FD2B 00                       .
        brk                                     ; FD2C 00                       .
        brk                                     ; FD2D 00                       .
        brk                                     ; FD2E 00                       .
        brk                                     ; FD2F 00                       .
        brk                                     ; FD30 00                       .
        brk                                     ; FD31 00                       .
        brk                                     ; FD32 00                       .
        brk                                     ; FD33 00                       .
        brk                                     ; FD34 00                       .
        brk                                     ; FD35 00                       .
        brk                                     ; FD36 00                       .
        brk                                     ; FD37 00                       .
        brk                                     ; FD38 00                       .
        brk                                     ; FD39 00                       .
        brk                                     ; FD3A 00                       .
        brk                                     ; FD3B 00                       .
        brk                                     ; FD3C 00                       .
        brk                                     ; FD3D 00                       .
        brk                                     ; FD3E 00                       .
        brk                                     ; FD3F 00                       .
        brk                                     ; FD40 00                       .
        brk                                     ; FD41 00                       .
        brk                                     ; FD42 00                       .
        brk                                     ; FD43 00                       .
        brk                                     ; FD44 00                       .
        brk                                     ; FD45 00                       .
        brk                                     ; FD46 00                       .
        brk                                     ; FD47 00                       .
        brk                                     ; FD48 00                       .
        brk                                     ; FD49 00                       .
        brk                                     ; FD4A 00                       .
        brk                                     ; FD4B 00                       .
        brk                                     ; FD4C 00                       .
        brk                                     ; FD4D 00                       .
        brk                                     ; FD4E 00                       .
        brk                                     ; FD4F 00                       .
        brk                                     ; FD50 00                       .
        brk                                     ; FD51 00                       .
        brk                                     ; FD52 00                       .
        brk                                     ; FD53 00                       .
        brk                                     ; FD54 00                       .
        brk                                     ; FD55 00                       .
        brk                                     ; FD56 00                       .
        brk                                     ; FD57 00                       .
        brk                                     ; FD58 00                       .
        brk                                     ; FD59 00                       .
        brk                                     ; FD5A 00                       .
        brk                                     ; FD5B 00                       .
        brk                                     ; FD5C 00                       .
        brk                                     ; FD5D 00                       .
        brk                                     ; FD5E 00                       .
        brk                                     ; FD5F 00                       .
        brk                                     ; FD60 00                       .
        brk                                     ; FD61 00                       .
        brk                                     ; FD62 00                       .
        brk                                     ; FD63 00                       .
        brk                                     ; FD64 00                       .
        brk                                     ; FD65 00                       .
        brk                                     ; FD66 00                       .
        brk                                     ; FD67 00                       .
        brk                                     ; FD68 00                       .
        brk                                     ; FD69 00                       .
        brk                                     ; FD6A 00                       .
        brk                                     ; FD6B 00                       .
        brk                                     ; FD6C 00                       .
        brk                                     ; FD6D 00                       .
        brk                                     ; FD6E 00                       .
        brk                                     ; FD6F 00                       .
        brk                                     ; FD70 00                       .
        brk                                     ; FD71 00                       .
        brk                                     ; FD72 00                       .
        brk                                     ; FD73 00                       .
        brk                                     ; FD74 00                       .
        brk                                     ; FD75 00                       .
        brk                                     ; FD76 00                       .
        brk                                     ; FD77 00                       .
        brk                                     ; FD78 00                       .
        brk                                     ; FD79 00                       .
        brk                                     ; FD7A 00                       .
        brk                                     ; FD7B 00                       .
        brk                                     ; FD7C 00                       .
        brk                                     ; FD7D 00                       .
        brk                                     ; FD7E 00                       .
        brk                                     ; FD7F 00                       .
        brk                                     ; FD80 00                       .
        brk                                     ; FD81 00                       .
        brk                                     ; FD82 00                       .
        brk                                     ; FD83 00                       .
        brk                                     ; FD84 00                       .
        brk                                     ; FD85 00                       .
        brk                                     ; FD86 00                       .
        brk                                     ; FD87 00                       .
        brk                                     ; FD88 00                       .
        brk                                     ; FD89 00                       .
        brk                                     ; FD8A 00                       .
        brk                                     ; FD8B 00                       .
        brk                                     ; FD8C 00                       .
        brk                                     ; FD8D 00                       .
        brk                                     ; FD8E 00                       .
        brk                                     ; FD8F 00                       .
        brk                                     ; FD90 00                       .
        brk                                     ; FD91 00                       .
        brk                                     ; FD92 00                       .
        brk                                     ; FD93 00                       .
        brk                                     ; FD94 00                       .
        brk                                     ; FD95 00                       .
        brk                                     ; FD96 00                       .
        brk                                     ; FD97 00                       .
        brk                                     ; FD98 00                       .
        brk                                     ; FD99 00                       .
        brk                                     ; FD9A 00                       .
        brk                                     ; FD9B 00                       .
        brk                                     ; FD9C 00                       .
        brk                                     ; FD9D 00                       .
        brk                                     ; FD9E 00                       .
        brk                                     ; FD9F 00                       .
        brk                                     ; FDA0 00                       .
        brk                                     ; FDA1 00                       .
        brk                                     ; FDA2 00                       .
        brk                                     ; FDA3 00                       .
        brk                                     ; FDA4 00                       .
        brk                                     ; FDA5 00                       .
        brk                                     ; FDA6 00                       .
        brk                                     ; FDA7 00                       .
        brk                                     ; FDA8 00                       .
        brk                                     ; FDA9 00                       .
        brk                                     ; FDAA 00                       .
        brk                                     ; FDAB 00                       .
        brk                                     ; FDAC 00                       .
        brk                                     ; FDAD 00                       .
        brk                                     ; FDAE 00                       .
        brk                                     ; FDAF 00                       .
        brk                                     ; FDB0 00                       .
        brk                                     ; FDB1 00                       .
        brk                                     ; FDB2 00                       .
        brk                                     ; FDB3 00                       .
        brk                                     ; FDB4 00                       .
        brk                                     ; FDB5 00                       .
        brk                                     ; FDB6 00                       .
        brk                                     ; FDB7 00                       .
        brk                                     ; FDB8 00                       .
        brk                                     ; FDB9 00                       .
        brk                                     ; FDBA 00                       .
        brk                                     ; FDBB 00                       .
        brk                                     ; FDBC 00                       .
        brk                                     ; FDBD 00                       .
        brk                                     ; FDBE 00                       .
        brk                                     ; FDBF 00                       .
        brk                                     ; FDC0 00                       .
        brk                                     ; FDC1 00                       .
        brk                                     ; FDC2 00                       .
        brk                                     ; FDC3 00                       .
        brk                                     ; FDC4 00                       .
        brk                                     ; FDC5 00                       .
        brk                                     ; FDC6 00                       .
        brk                                     ; FDC7 00                       .
        brk                                     ; FDC8 00                       .
        brk                                     ; FDC9 00                       .
        brk                                     ; FDCA 00                       .
        brk                                     ; FDCB 00                       .
        brk                                     ; FDCC 00                       .
        brk                                     ; FDCD 00                       .
        brk                                     ; FDCE 00                       .
        brk                                     ; FDCF 00                       .
        brk                                     ; FDD0 00                       .
        brk                                     ; FDD1 00                       .
        brk                                     ; FDD2 00                       .
        brk                                     ; FDD3 00                       .
        brk                                     ; FDD4 00                       .
        brk                                     ; FDD5 00                       .
        brk                                     ; FDD6 00                       .
        brk                                     ; FDD7 00                       .
        brk                                     ; FDD8 00                       .
        brk                                     ; FDD9 00                       .
        brk                                     ; FDDA 00                       .
        brk                                     ; FDDB 00                       .
        brk                                     ; FDDC 00                       .
        brk                                     ; FDDD 00                       .
        brk                                     ; FDDE 00                       .
        brk                                     ; FDDF 00                       .
        brk                                     ; FDE0 00                       .
        brk                                     ; FDE1 00                       .
        brk                                     ; FDE2 00                       .
        brk                                     ; FDE3 00                       .
        brk                                     ; FDE4 00                       .
        brk                                     ; FDE5 00                       .
        brk                                     ; FDE6 00                       .
        brk                                     ; FDE7 00                       .
        brk                                     ; FDE8 00                       .
        brk                                     ; FDE9 00                       .
        brk                                     ; FDEA 00                       .
        brk                                     ; FDEB 00                       .
        brk                                     ; FDEC 00                       .
        brk                                     ; FDED 00                       .
        brk                                     ; FDEE 00                       .
        brk                                     ; FDEF 00                       .
        brk                                     ; FDF0 00                       .
        brk                                     ; FDF1 00                       .
        brk                                     ; FDF2 00                       .
        brk                                     ; FDF3 00                       .
        brk                                     ; FDF4 00                       .
        brk                                     ; FDF5 00                       .
        brk                                     ; FDF6 00                       .
        brk                                     ; FDF7 00                       .
        brk                                     ; FDF8 00                       .
        brk                                     ; FDF9 00                       .
        brk                                     ; FDFA 00                       .
        brk                                     ; FDFB 00                       .
        brk                                     ; FDFC 00                       .
        brk                                     ; FDFD 00                       .
        brk                                     ; FDFE 00                       .
        brk                                     ; FDFF 00                       .
        brk                                     ; FE00 00                       .
        brk                                     ; FE01 00                       .
        brk                                     ; FE02 00                       .
        brk                                     ; FE03 00                       .
        brk                                     ; FE04 00                       .
        brk                                     ; FE05 00                       .
        brk                                     ; FE06 00                       .
        brk                                     ; FE07 00                       .
        brk                                     ; FE08 00                       .
        brk                                     ; FE09 00                       .
        brk                                     ; FE0A 00                       .
        brk                                     ; FE0B 00                       .
        brk                                     ; FE0C 00                       .
        brk                                     ; FE0D 00                       .
        brk                                     ; FE0E 00                       .
        brk                                     ; FE0F 00                       .
        brk                                     ; FE10 00                       .
        brk                                     ; FE11 00                       .
        brk                                     ; FE12 00                       .
        brk                                     ; FE13 00                       .
        brk                                     ; FE14 00                       .
        brk                                     ; FE15 00                       .
        brk                                     ; FE16 00                       .
        brk                                     ; FE17 00                       .
        brk                                     ; FE18 00                       .
        brk                                     ; FE19 00                       .
        brk                                     ; FE1A 00                       .
        brk                                     ; FE1B 00                       .
        brk                                     ; FE1C 00                       .
        brk                                     ; FE1D 00                       .
        brk                                     ; FE1E 00                       .
        brk                                     ; FE1F 00                       .
        brk                                     ; FE20 00                       .
        brk                                     ; FE21 00                       .
        brk                                     ; FE22 00                       .
        brk                                     ; FE23 00                       .
        brk                                     ; FE24 00                       .
        brk                                     ; FE25 00                       .
        brk                                     ; FE26 00                       .
        brk                                     ; FE27 00                       .
        brk                                     ; FE28 00                       .
        brk                                     ; FE29 00                       .
        brk                                     ; FE2A 00                       .
        brk                                     ; FE2B 00                       .
        brk                                     ; FE2C 00                       .
        brk                                     ; FE2D 00                       .
        brk                                     ; FE2E 00                       .
        brk                                     ; FE2F 00                       .
        brk                                     ; FE30 00                       .
        brk                                     ; FE31 00                       .
        brk                                     ; FE32 00                       .
        brk                                     ; FE33 00                       .
        brk                                     ; FE34 00                       .
        brk                                     ; FE35 00                       .
        brk                                     ; FE36 00                       .
        brk                                     ; FE37 00                       .
        brk                                     ; FE38 00                       .
        brk                                     ; FE39 00                       .
        brk                                     ; FE3A 00                       .
        brk                                     ; FE3B 00                       .
        brk                                     ; FE3C 00                       .
        brk                                     ; FE3D 00                       .
        brk                                     ; FE3E 00                       .
        brk                                     ; FE3F 00                       .
        brk                                     ; FE40 00                       .
        brk                                     ; FE41 00                       .
        brk                                     ; FE42 00                       .
        brk                                     ; FE43 00                       .
        brk                                     ; FE44 00                       .
        brk                                     ; FE45 00                       .
        brk                                     ; FE46 00                       .
        brk                                     ; FE47 00                       .
        brk                                     ; FE48 00                       .
        brk                                     ; FE49 00                       .
        brk                                     ; FE4A 00                       .
        brk                                     ; FE4B 00                       .
        brk                                     ; FE4C 00                       .
        brk                                     ; FE4D 00                       .
        brk                                     ; FE4E 00                       .
        brk                                     ; FE4F 00                       .
        brk                                     ; FE50 00                       .
        brk                                     ; FE51 00                       .
        brk                                     ; FE52 00                       .
        brk                                     ; FE53 00                       .
        brk                                     ; FE54 00                       .
        brk                                     ; FE55 00                       .
        brk                                     ; FE56 00                       .
        brk                                     ; FE57 00                       .
        brk                                     ; FE58 00                       .
        brk                                     ; FE59 00                       .
        brk                                     ; FE5A 00                       .
        brk                                     ; FE5B 00                       .
        brk                                     ; FE5C 00                       .
        brk                                     ; FE5D 00                       .
        brk                                     ; FE5E 00                       .
        brk                                     ; FE5F 00                       .
        brk                                     ; FE60 00                       .
        brk                                     ; FE61 00                       .
        brk                                     ; FE62 00                       .
        brk                                     ; FE63 00                       .
        brk                                     ; FE64 00                       .
        brk                                     ; FE65 00                       .
        brk                                     ; FE66 00                       .
        brk                                     ; FE67 00                       .
        brk                                     ; FE68 00                       .
        brk                                     ; FE69 00                       .
        brk                                     ; FE6A 00                       .
        brk                                     ; FE6B 00                       .
        brk                                     ; FE6C 00                       .
        brk                                     ; FE6D 00                       .
        brk                                     ; FE6E 00                       .
        brk                                     ; FE6F 00                       .
        brk                                     ; FE70 00                       .
        brk                                     ; FE71 00                       .
        brk                                     ; FE72 00                       .
        brk                                     ; FE73 00                       .
        brk                                     ; FE74 00                       .
        brk                                     ; FE75 00                       .
        brk                                     ; FE76 00                       .
        brk                                     ; FE77 00                       .
        brk                                     ; FE78 00                       .
        brk                                     ; FE79 00                       .
        brk                                     ; FE7A 00                       .
        brk                                     ; FE7B 00                       .
        brk                                     ; FE7C 00                       .
        brk                                     ; FE7D 00                       .
        brk                                     ; FE7E 00                       .
        brk                                     ; FE7F 00                       .
        brk                                     ; FE80 00                       .
        brk                                     ; FE81 00                       .
        brk                                     ; FE82 00                       .
        brk                                     ; FE83 00                       .
        brk                                     ; FE84 00                       .
        brk                                     ; FE85 00                       .
        brk                                     ; FE86 00                       .
        brk                                     ; FE87 00                       .
        brk                                     ; FE88 00                       .
        brk                                     ; FE89 00                       .
        brk                                     ; FE8A 00                       .
        brk                                     ; FE8B 00                       .
        brk                                     ; FE8C 00                       .
        brk                                     ; FE8D 00                       .
        brk                                     ; FE8E 00                       .
        brk                                     ; FE8F 00                       .
        brk                                     ; FE90 00                       .
        brk                                     ; FE91 00                       .
        brk                                     ; FE92 00                       .
        brk                                     ; FE93 00                       .
        brk                                     ; FE94 00                       .
        brk                                     ; FE95 00                       .
        brk                                     ; FE96 00                       .
        brk                                     ; FE97 00                       .
        brk                                     ; FE98 00                       .
        brk                                     ; FE99 00                       .
        brk                                     ; FE9A 00                       .
        brk                                     ; FE9B 00                       .
        brk                                     ; FE9C 00                       .
        brk                                     ; FE9D 00                       .
        brk                                     ; FE9E 00                       .
        brk                                     ; FE9F 00                       .
        brk                                     ; FEA0 00                       .
        brk                                     ; FEA1 00                       .
        brk                                     ; FEA2 00                       .
        brk                                     ; FEA3 00                       .
        brk                                     ; FEA4 00                       .
        brk                                     ; FEA5 00                       .
        brk                                     ; FEA6 00                       .
        brk                                     ; FEA7 00                       .
        brk                                     ; FEA8 00                       .
        brk                                     ; FEA9 00                       .
        brk                                     ; FEAA 00                       .
        brk                                     ; FEAB 00                       .
        brk                                     ; FEAC 00                       .
        brk                                     ; FEAD 00                       .
        brk                                     ; FEAE 00                       .
        brk                                     ; FEAF 00                       .
        brk                                     ; FEB0 00                       .
        brk                                     ; FEB1 00                       .
        brk                                     ; FEB2 00                       .
        brk                                     ; FEB3 00                       .
        brk                                     ; FEB4 00                       .
        brk                                     ; FEB5 00                       .
        brk                                     ; FEB6 00                       .
        brk                                     ; FEB7 00                       .
        brk                                     ; FEB8 00                       .
        brk                                     ; FEB9 00                       .
        brk                                     ; FEBA 00                       .
        brk                                     ; FEBB 00                       .
        brk                                     ; FEBC 00                       .
        brk                                     ; FEBD 00                       .
        brk                                     ; FEBE 00                       .
        brk                                     ; FEBF 00                       .
        brk                                     ; FEC0 00                       .
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
        brk                                     ; FFAA 00                       .
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
        brk                                     ; FFC7 00                       .
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
        brk                                     ; FFD4 00                       .
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
        brk                                     ; FFF0 00                       .
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
;LFFFD:  brk                                     ; FFFD 00                       .
;        brk                                     ; FFFE 00                       .
;LFFFF:  brk                                     ; FFFF 00                       .
VECTORS
LFFFD = $FFFD
LFFFF = $FFFF
; mod
