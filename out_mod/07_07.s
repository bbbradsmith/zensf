.include "../mod.inc"
.segment "MF000"
.org $F000

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-28 15:19:57
; Input file: out_src\07_07.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L0000           := $0000
L14DD           := $14DD
L5494           := $5494
L5555           := $5555
L5A69           := $5A69
L5AAB           := $5AAB
L6AA5           := $6AA5
L9555           := $9555
L96AD           := $96AD
LA155           := $A155
LAAA2           := $AAA2
LAAAA           := $AAAA
LAB75           := $AB75
LADBB           := $ADBB
LAEB5           := $AEB5
LBAB5           := $BAB5
LDF59           := $DF59
; ----------------------------------------------------------------------------
        eor     $55,x                           ; F000 55 55                    UU
        eor     $55,x                           ; F002 55 55                    UU
        lda     $A2                             ; F004 A5 A2                    ..
        .byte   $54                             ; F006 54                       T
        bit     $44                             ; F007 24 44                    $D
        jmp     LAEB5                           ; F009 4C B5 AE                 L..

; ----------------------------------------------------------------------------
        .byte   $EF                             ; F00C EF                       .
        lda     $AADB                           ; F00D AD DB AA                 ...
        tax                                     ; F010 AA                       .
        tax                                     ; F011 AA                       .
        tax                                     ; F012 AA                       .
        tax                                     ; F013 AA                       .
        rol     a                               ; F014 2A                       *
        eor     $55,x                           ; F015 55 55                    UU
        eor     #$A9                            ; F017 49 A9                    I.
        tax                                     ; F019 AA                       .
        rol     a                               ; F01A 2A                       *
        .byte   $B3                             ; F01B B3                       .
        .byte   $52                             ; F01C 52                       R
        and     #$95                            ; F01D 29 95                    ).
        and     $EB,x                           ; F01F 35 EB                    5.
        ldy     $D2D2                           ; F021 AC D2 D2                 ...
        tax                                     ; F024 AA                       .
        tax                                     ; F025 AA                       .
        tax                                     ; F026 AA                       .
        .byte   $64                             ; F027 64                       d
        .byte   $D2                             ; F028 D2                       .
        .byte   $5A                             ; F029 5A                       Z
        lda     $B5B6                           ; F02A AD B6 B5                 ...
        txa                                     ; F02D 8A                       .
        eor     ($AA),y                         ; F02E 51 AA                    Q.
        tax                                     ; F030 AA                       .
        tax                                     ; F031 AA                       .
        tax                                     ; F032 AA                       .
        lda     $A52A                           ; F033 AD 2A A5                 .*.
        rol     a                               ; F036 2A                       *
        and     $A5                             ; F037 25 A5                    %.
        eor     $6D,x                           ; F039 55 6D                    Um
        sbc     $92AE                           ; F03B ED AE 92                 ...
        lsr     a                               ; F03E 4A                       J
        lda     $CA                             ; F03F A5 CA                    ..
        plp                                     ; F041 28                       (
        eor     $55,x                           ; F042 55 55                    UU
        cmp     $DA,x                           ; F044 D5 DA                    ..
        txs                                     ; F046 9A                       .
        sta     $AAA9,y                         ; F047 99 A9 AA                 ...
        tax                                     ; F04A AA                       .
        and     $47,x                           ; F04B 35 47                    5G
        adc     $AA                             ; F04D 65 AA                    e.
        tax                                     ; F04F AA                       .
        tax                                     ; F050 AA                       .
        tax                                     ; F051 AA                       .
        .byte   $5A                             ; F052 5A                       Z
        .byte   $53                             ; F053 53                       S
        lda     $AA                             ; F054 A5 AA                    ..
        lsr     a                               ; F056 4A                       J
        eor     #$75                            ; F057 49 75                    Iu
        .byte   $B3                             ; F059 B3                       .
        tax                                     ; F05A AA                       .
        tax                                     ; F05B AA                       .
        lda     #$AA                            ; F05C A9 AA                    ..
        tax                                     ; F05E AA                       .
        tax                                     ; F05F AA                       .
        tax                                     ; F060 AA                       .
        ror     a                               ; F061 6A                       j
        cmp     $A6,x                           ; F062 D5 A6                    ..
        .byte   $52                             ; F064 52                       R
        lda     #$22                            ; F065 A9 22                    ."
        .byte   $22                             ; F067 22                       "
        eor     $B5,x                           ; F068 55 B5                    U.
        dec     $B5EF                           ; F06A CE EF B5                 ...
        tax                                     ; F06D AA                       .
        tax                                     ; F06E AA                       .
        tax                                     ; F06F AA                       .
        tax                                     ; F070 AA                       .
        .byte   $54                             ; F071 54                       T
        eor     $55,x                           ; F072 55 55                    UU
        eor     $55,x                           ; F074 55 55                    UU
        sta     ($14),y                         ; F076 91 14                    ..
        sta     $A4,x                           ; F078 95 A4                    ..
        adc     #$35                            ; F07A 69 35                    i5
        stx     $66,y                           ; F07C 96 66                    .f
        .byte   $D7                             ; F07E D7                       .
        lda     $AA,x                           ; F07F B5 AA                    ..
        lsr     $6B,x                           ; F081 56 6B                    Vk
        lda     LAAAA                           ; F083 AD AA AA                 ...
        .byte   $44                             ; F086 44                       D
        tax                                     ; F087 AA                       .
        tax                                     ; F088 AA                       .
        tax                                     ; F089 AA                       .
        .byte   $5A                             ; F08A 5A                       Z
        .byte   $3B                             ; F08B 3B                       ;
        .byte   $52                             ; F08C 52                       R
        tax                                     ; F08D AA                       .
        tax                                     ; F08E AA                       .
        tax                                     ; F08F AA                       .
        tax                                     ; F090 AA                       .
        ldx     $26,y                           ; F091 B6 26                    .&
        lda     #$A4                            ; F093 A9 A4                    ..
        bit     $25                             ; F095 24 25                    $%
        .byte   $53                             ; F097 53                       S
        cmp     $DA,x                           ; F098 D5 DA                    ..
        lda     $AB5E,x                         ; F09A BD 5E AB                 .^.
        tax                                     ; F09D AA                       .
        lsr     a                               ; F09E 4A                       J
        and     ($AA),y                         ; F09F 31 AA                    1.
        tax                                     ; F0A1 AA                       .
        tax                                     ; F0A2 AA                       .
        tax                                     ; F0A3 AA                       .
        .byte   $B3                             ; F0A4 B3                       .
        sta     $92,x                           ; F0A5 95 92                    ..
        tax                                     ; F0A7 AA                       .
        tax                                     ; F0A8 AA                       .
        tax                                     ; F0A9 AA                       .
        lsr     $4B,x                           ; F0AA 56 4B                    VK
        lda     #$AA                            ; F0AC A9 AA                    ..
        lsr     a                               ; F0AE 4A                       J
        lda     $A6                             ; F0AF A5 A6                    ..
        lsr     a                               ; F0B1 4A                       J
        eor     $55,x                           ; F0B2 55 55                    UU
        eor     $65,x                           ; F0B4 55 65                    Ue
        nop                                     ; F0B6 EA                       .
        .byte   $5C                             ; F0B7 5C                       \
        .byte   $AB                             ; F0B8 AB                       .
        ror     a                               ; F0B9 6A                       j
        .byte   $5B                             ; F0BA 5B                       [
        .byte   $AB                             ; F0BB AB                       .
        tax                                     ; F0BC AA                       .
        tax                                     ; F0BD AA                       .
        rol     a                               ; F0BE 2A                       *
        eor     $55,x                           ; F0BF 55 55                    UU
        eor     $A5,x                           ; F0C1 55 A5                    U.
        .byte   $52                             ; F0C3 52                       R
        lsr     a                               ; F0C4 4A                       J
        .byte   $22                             ; F0C5 22                       "
        .byte   $52                             ; F0C6 52                       R
        lsr     $2D,x                           ; F0C7 56 2D                    V-
        .byte   $DF                             ; F0C9 DF                       .
        .byte   $7B                             ; F0CA 7B                       {
        sta     $8A,x                           ; F0CB 95 8A                    ..
        ldx     $AA                             ; F0CD A6 AA                    ..
        tax                                     ; F0CF AA                       .
        tax                                     ; F0D0 AA                       .
        tax                                     ; F0D1 AA                       .
        sbc     #$6A                            ; F0D2 E9 6A                    .j
        .byte   $3A                             ; F0D4 3A                       :
        and     #$A9                            ; F0D5 29 A9                    ).
        .byte   $34                             ; F0D7 34                       4
        .byte   $52                             ; F0D8 52                       R
        ldx     $3A,y                           ; F0D9 B6 3A                    .:
        stx     $5A,y                           ; F0DB 96 5A                    .Z
        .byte   $AB                             ; F0DD AB                       .
        tax                                     ; F0DE AA                       .
        tax                                     ; F0DF AA                       .
        dec     $6A,x                           ; F0E0 D6 6A                    .j
        lda     $5554                           ; F0E2 AD 54 55                 .TU
        eor     #$AA                            ; F0E5 49 AA                    I.
        .byte   $54                             ; F0E7 54                       T
        rol     a                               ; F0E8 2A                       *
        .byte   $9B                             ; F0E9 9B                       .
        txs                                     ; F0EA 9A                       .
        .byte   $54                             ; F0EB 54                       T
        eor     $55,x                           ; F0EC 55 55                    UU
        .byte   $AB                             ; F0EE AB                       .
        lda     $2AEB                           ; F0EF AD EB 2A                 ..*
        dex                                     ; F0F2 CA                       .
        ldy     $AA                             ; F0F3 A4 AA                    ..
        .byte   $22                             ; F0F5 22                       "
        .byte   $53                             ; F0F6 53                       S
        cmp     $72,x                           ; F0F7 D5 72                    .r
        eor     $AAAF,x                         ; F0F9 5D AF AA                 ]..
        rol     a                               ; F0FC 2A                       *
        lsr     $AA                             ; F0FD 46 AA                    F.
        tax                                     ; F0FF AA                       .
        tax                                     ; F100 AA                       .
        tax                                     ; F101 AA                       .
        ldx     $A6,y                           ; F102 B6 A6                    ..
        .byte   $92                             ; F104 92                       .
        .byte   $92                             ; F105 92                       .
        tya                                     ; F106 98                       .
        stx     $65,y                           ; F107 96 65                    .e
        .byte   $67                             ; F109 67                       g
        .byte   $53                             ; F10A 53                       S
        rol     $AB,x                           ; F10B 36 AB                    6.
        tax                                     ; F10D AA                       .
        tax                                     ; F10E AA                       .
        tax                                     ; F10F AA                       .
        tax                                     ; F110 AA                       .
        tax                                     ; F111 AA                       .
        tax                                     ; F112 AA                       .
        tax                                     ; F113 AA                       .
        tax                                     ; F114 AA                       .
        tax                                     ; F115 AA                       .
        tax                                     ; F116 AA                       .
        tax                                     ; F117 AA                       .
        tax                                     ; F118 AA                       .
        .byte   $B3                             ; F119 B3                       .
        .byte   $AB                             ; F11A AB                       .
        .byte   $54                             ; F11B 54                       T
        eor     $55,x                           ; F11C 55 55                    UU
        eor     $95,x                           ; F11E 55 95                    U.
        .byte   $52                             ; F120 52                       R
        lda     #$88                            ; F121 A9 88                    ..
        .byte   $14                             ; F123 14                       .
        and     #$2A                            ; F124 29 2A                    )*
        lda     $DE,x                           ; F126 B5 DE                    ..
        inc     $AADE,x                         ; F128 FE DE AA                 ...
        tax                                     ; F12B AA                       .
        tax                                     ; F12C AA                       .
        tax                                     ; F12D AA                       .
        tax                                     ; F12E AA                       .
        tax                                     ; F12F AA                       .
        lsr     a                               ; F130 4A                       J
        eor     $55,x                           ; F131 55 55                    UU
        eor     $29,x                           ; F133 55 29                    U)
        and     #$4A                            ; F135 29 4A                    )J
        lda     #$76                            ; F137 A9 76                    .v
        ror     a                               ; F139 6A                       j
        adc     $D5                             ; F13A 65 D5                    e.
        sty     $5349                           ; F13C 8C 49 53                 .IS
        adc     $B9,x                           ; F13F 75 B9                    u.
        tax                                     ; F141 AA                       .
        tax                                     ; F142 AA                       .
        sbc     $98                             ; F143 E5 98                    ..
        tax                                     ; F145 AA                       .
        tax                                     ; F146 AA                       .
        tax                                     ; F147 AA                       .
        txs                                     ; F148 9A                       .
        ror     a                               ; F149 6A                       j
        tax                                     ; F14A AA                       .
        tax                                     ; F14B AA                       .
        tax                                     ; F14C AA                       .
        lda     $52EA,y                         ; F14D B9 EA 52                 ..R
        sta     $4A,x                           ; F150 95 4A                    .J
        lda     $2A                             ; F152 A5 2A                    .*
        and     $65                             ; F154 25 65                    %e
        adc     $5D                             ; F156 65 5D                    e]
        ldx     $AA99                           ; F158 AE 99 AA                 ...
        sty     $5551                           ; F15B 8C 51 55                 .QU
        eor     $AB,x                           ; F15E 55 AB                    U.
        lda     $AADB                           ; F160 AD DB AA                 ...
        lsr     a                               ; F163 4A                       J
        sta     ($AA),y                         ; F164 91 AA                    ..
        tax                                     ; F166 AA                       .
        tax                                     ; F167 AA                       .
        ror     $55                             ; F168 66 55                    fU
        lda     #$AA                            ; F16A A9 AA                    ..
        tax                                     ; F16C AA                       .
        rol     a                               ; F16D 2A                       *
        eor     $55,x                           ; F16E 55 55                    UU
        .byte   $AB                             ; F170 AB                       .
        tax                                     ; F171 AA                       .
        tax                                     ; F172 AA                       .
        cmp     $A8,x                           ; F173 D5 A8                    ..
        pla                                     ; F175 68                       h
        .byte   $54                             ; F176 54                       T
        lda     $B6,x                           ; F177 B5 B6                    ..
        tax                                     ; F179 AA                       .
        tax                                     ; F17A AA                       .
        stx     $2E,y                           ; F17B 96 2E                    ..
        .byte   $5B                             ; F17D 5B                       [
        eor     $2555                           ; F17E 4D 55 25                 MU%
        rol     a                               ; F181 2A                       *
        lsr     a                               ; F182 4A                       J
        rol     $46                             ; F183 26 46                    &F
        lda     $6D,x                           ; F185 B5 6D                    .m
        .byte   $B7                             ; F187 B7                       .
        eor     $AAAB,x                         ; F188 5D AB AA                 ]..
        tax                                     ; F18B AA                       .
        rol     a                               ; F18C 2A                       *
        eor     $55,x                           ; F18D 55 55                    UU
        eor     $A5,x                           ; F18F 55 A5                    U.
        .byte   $52                             ; F191 52                       R
        lda     #$22                            ; F192 A9 22                    ."
        ora     ($55),y                         ; F194 11 55                    .U
        eor     $DD,x                           ; F196 55 DD                    U.
        .byte   $DC                             ; F198 DC                       .
        lda     $AA,x                           ; F199 B5 AA                    ..
        tax                                     ; F19B AA                       .
        tax                                     ; F19C AA                       .
        tax                                     ; F19D AA                       .
        sbc     $5A                             ; F19E E5 5A                    .Z
        .byte   $AB                             ; F1A0 AB                       .
        tax                                     ; F1A1 AA                       .
        dex                                     ; F1A2 CA                       .
        pha                                     ; F1A3 48                       H
        lda     #$AA                            ; F1A4 A9 AA                    ..
        .byte   $32                             ; F1A6 32                       2
        lsr     $B3,x                           ; F1A7 56 B3                    V.
        tax                                     ; F1A9 AA                       .
        tax                                     ; F1AA AA                       .
        ror     a                               ; F1AB 6A                       j
        .byte   $AB                             ; F1AC AB                       .
        lsr     a                               ; F1AD 4A                       J
        lda     $2A                             ; F1AE A5 2A                    .*
        lda     $52                             ; F1B0 A5 52                    .R
        lsr     $62,x                           ; F1B2 56 62                    Vb
        adc     #$75                            ; F1B4 69 75                    iu
        eor     $B5DB,x                         ; F1B6 5D DB B5                 ]..
        .byte   $12                             ; F1B9 12                       .
        .byte   $63                             ; F1BA 63                       c
        tax                                     ; F1BB AA                       .
        tax                                     ; F1BC AA                       .
        tax                                     ; F1BD AA                       .
        and     $AAD7,y                         ; F1BE 39 D7 AA                 9..
        .byte   $54                             ; F1C1 54                       T
        eor     $52,x                           ; F1C2 55 52                    UR
        tax                                     ; F1C4 AA                       .
        tax                                     ; F1C5 AA                       .
        tax                                     ; F1C6 AA                       .
        ror     $55                             ; F1C7 66 55                    fU
        txa                                     ; F1C9 8A                       .
        rol     a                               ; F1CA 2A                       *
        eor     $4C,x                           ; F1CB 55 4C                    UL
        and     #$D7                            ; F1CD 29 D7                    ).
        ror     a                               ; F1CF 6A                       j
        .byte   $EB                             ; F1D0 EB                       .
        ror     a                               ; F1D1 6A                       j
        .byte   $3B                             ; F1D2 3B                       ;
        .byte   $89                             ; F1D3 89                       .
        tax                                     ; F1D4 AA                       .
        tax                                     ; F1D5 AA                       .
        ror     a                               ; F1D6 6A                       j
        adc     $AAAB                           ; F1D7 6D AB AA                 m..
        .byte   $52                             ; F1DA 52                       R
        eor     $55,x                           ; F1DB 55 55                    UU
        eor     $55,x                           ; F1DD 55 55                    UU
        ldy     $14                             ; F1DF A4 14                    ..
        lda     $4A                             ; F1E1 A5 4A                    .J
        tax                                     ; F1E3 AA                       .
        inc     $DC                             ; F1E4 E6 DC                    ..
        ldy     $AE,x                           ; F1E6 B4 AE                    ..
        tax                                     ; F1E8 AA                       .
        tax                                     ; F1E9 AA                       .
        tax                                     ; F1EA AA                       .
        tax                                     ; F1EB AA                       .
        stx     $AB,y                           ; F1EC 96 AB                    ..
        cmp     $AA,x                           ; F1EE D5 AA                    ..
        .byte   $52                             ; F1F0 52                       R
        eor     $22,x                           ; F1F1 55 22                    U"
        eor     $66                             ; F1F3 45 66                    Ef
        eor     $6D,x                           ; F1F5 55 6D                    Um
        .byte   $AB                             ; F1F7 AB                       .
        ldx     $AA                             ; F1F8 A6 AA                    ..
        tax                                     ; F1FA AA                       .
        tax                                     ; F1FB AA                       .
        tax                                     ; F1FC AA                       .
        and     $53AB,y                         ; F1FD 39 AB 53                 9.S
        eor     $A9,x                           ; F200 55 A9                    U.
        ldx     #$48                            ; F202 A2 48                    .H
        dec     $28                             ; F204 C6 28                    .(
        .byte   $73                             ; F206 73                       s
        .byte   $6B                             ; F207 6B                       k
        lda     $B6CE                           ; F208 AD CE B6                 ...
        .byte   $AB                             ; F20B AB                       .
        tax                                     ; F20C AA                       .
        tax                                     ; F20D AA                       .
        txa                                     ; F20E 8A                       .
        .byte   $52                             ; F20F 52                       R
        lda     #$AA                            ; F210 A9 AA                    ..
        ldy     $54                             ; F212 A4 54                    .T
        and     $9D,x                           ; F214 35 9D                    5.
        .byte   $EB                             ; F216 EB                       .
        eor     $94,x                           ; F217 55 94                    U.
        tax                                     ; F219 AA                       .
        tax                                     ; F21A AA                       .
        tax                                     ; F21B AA                       .
        ror     a                               ; F21C 6A                       j
        .byte   $CB                             ; F21D CB                       .
        lsr     a                               ; F21E 4A                       J
        lda     #$AA                            ; F21F A9 AA                    ..
        tax                                     ; F221 AA                       .
        bit     $55                             ; F222 24 55                    $U
        and     $F3,x                           ; F224 35 F3                    5.
        ldy     $A92E                           ; F226 AC 2E A9                 ...
        tax                                     ; F229 AA                       .
        rol     a                               ; F22A 2A                       *
        eor     $AD                             ; F22B 45 AD                    E.
        dec     $AA,x                           ; F22D D6 AA                    ..
        lda     $D6,x                           ; F22F B5 D6                    ..
        txa                                     ; F231 8A                       .
        .byte   $92                             ; F232 92                       .
        tax                                     ; F233 AA                       .
        tax                                     ; F234 AA                       .
        tax                                     ; F235 AA                       .
        ldx     $56,y                           ; F236 B6 56                    .V
        eor     $55,x                           ; F238 55 55                    UU
        lsr     a                               ; F23A 4A                       J
        sta     $AA,x                           ; F23B 95 AA                    ..
        sty     $28,x                           ; F23D 94 28                    .(
        lsr     a                               ; F23F 4A                       J
        eor     $CB,x                           ; F240 55 CB                    U.
        jmp     (LAB75)                         ; F242 6C 75 AB                 lu.

; ----------------------------------------------------------------------------
        lda     $5D,x                           ; F245 B5 5D                    .]
        .byte   $AB                             ; F247 AB                       .
        tax                                     ; F248 AA                       .
        tax                                     ; F249 AA                       .
        tax                                     ; F24A AA                       .
        tax                                     ; F24B AA                       .
        .byte   $52                             ; F24C 52                       R
        eor     $55,x                           ; F24D 55 55                    UU
        eor     $4A,x                           ; F24F 55 4A                    UJ
        .byte   $89                             ; F251 89                       .
        .byte   $92                             ; F252 92                       .
        tax                                     ; F253 AA                       .
        ror     a                               ; F254 6A                       j
        .byte   $D7                             ; F255 D7                       .
        ldy     $5452                           ; F256 AC 52 54                 .RT
        eor     $55,x                           ; F259 55 55                    UU
        cmp     $5A,x                           ; F25B D5 5A                    .Z
        .byte   $AB                             ; F25D AB                       .
        .byte   $AB                             ; F25E AB                       .
        cmp     $AA,x                           ; F25F D5 AA                    ..
        clc                                     ; F261 18                       .
        and     #$63                            ; F262 29 63                    )c
        .byte   $54                             ; F264 54                       T
        adc     $9AAB                           ; F265 6D AB 9A                 m..
        .byte   $6B                             ; F268 6B                       k
        ldx     $552A                           ; F269 AE 2A 55                 .*U
        eor     $A5,x                           ; F26C 55 A5                    U.
        .byte   $52                             ; F26E 52                       R
        tax                                     ; F26F AA                       .
        tax                                     ; F270 AA                       .
        ldy     $48                             ; F271 A4 48                    .H
        eor     $DB56,y                         ; F273 59 56 DB                 YV.
        sta     $5552,y                         ; F276 99 52 55                 .RU
        lda     $B6AE                           ; F279 AD AE B6                 ...
        .byte   $AB                             ; F27C AB                       .
        tax                                     ; F27D AA                       .
        tax                                     ; F27E AA                       .
        tax                                     ; F27F AA                       .
        rol     a                               ; F280 2A                       *
        .byte   $52                             ; F281 52                       R
        tax                                     ; F282 AA                       .
        tax                                     ; F283 AA                       .
        tax                                     ; F284 AA                       .
        ror     a                               ; F285 6A                       j
        lsr     $AA,x                           ; F286 56 AA                    V.
        .byte   $52                             ; F288 52                       R
        eor     #$59                            ; F289 49 59                    IY
        dec     $B5,x                           ; F28B D6 B5                    ..
        nop                                     ; F28D EA                       .
        cpy     $A949                           ; F28E CC 49 A9                 .I.
        clc                                     ; F291 18                       .
        eor     $55,x                           ; F292 55 55                    UU
        lda     $B6,x                           ; F294 B5 B6                    ..
        ldx     $5A,y                           ; F296 B6 5A                    .Z
        .byte   $AB                             ; F298 AB                       .
        tax                                     ; F299 AA                       .
        .byte   $54                             ; F29A 54                       T
        and     #$A5                            ; F29B 29 A5                    ).
        sty     $4A,x                           ; F29D 94 4A                    .J
        eor     $4B,x                           ; F29F 55 4B                    UK
        cmp     $6B54                           ; F2A1 CD 54 6B                 .Tk
        lda     $AB6E                           ; F2A4 AD 6E AB                 .n.
        tax                                     ; F2A7 AA                       .
        lsr     a                               ; F2A8 4A                       J
        eor     $95,x                           ; F2A9 55 95                    U.
        lsr     a                               ; F2AB 4A                       J
        lda     $AA                             ; F2AC A5 AA                    ..
        .byte   $92                             ; F2AE 92                       .
        .byte   $52                             ; F2AF 52                       R
        rol     a                               ; F2B0 2A                       *
        tax                                     ; F2B1 AA                       .
        jmp     (LADBB)                         ; F2B2 6C BB AD                 l..

; ----------------------------------------------------------------------------
        cmp     $54,x                           ; F2B5 D5 54                    .T
        tax                                     ; F2B7 AA                       .
        tax                                     ; F2B8 AA                       .
        tax                                     ; F2B9 AA                       .
        ror     a                               ; F2BA 6A                       j
        lda     $AAD6,y                         ; F2BB B9 D6 AA                 ...
        .byte   $52                             ; F2BE 52                       R
        eor     $49,x                           ; F2BF 55 49                    UI
        txa                                     ; F2C1 8A                       .
        .byte   $92                             ; F2C2 92                       .
        lsr     $75,x                           ; F2C3 56 75                    Vu
        ldx     $1CD6                           ; F2C5 AE D6 1C                 ...
        sta     $AA,x                           ; F2C8 95 AA                    ..
        tax                                     ; F2CA AA                       .
        tax                                     ; F2CB AA                       .
        lsr     a                               ; F2CC 4A                       J
        lda     #$AA                            ; F2CD A9 AA                    ..
        sbc     $68                             ; F2CF E5 68                    .h
        jmp     L96AD                           ; F2D1 4C AD 96                 L..

; ----------------------------------------------------------------------------
        .byte   $B3                             ; F2D4 B3                       .
        tax                                     ; F2D5 AA                       .
        tax                                     ; F2D6 AA                       .
        tax                                     ; F2D7 AA                       .
        ror     a                               ; F2D8 6A                       j
        .byte   $6B                             ; F2D9 6B                       k
        lda     $52AA                           ; F2DA AD AA 52                 ..R
        eor     $55,x                           ; F2DD 55 55                    UU
        eor     $4A,x                           ; F2DF 55 4A                    UJ
        tax                                     ; F2E1 AA                       .
        tax                                     ; F2E2 AA                       .
        .byte   $D4                             ; F2E3 D4                       .
        cli                                     ; F2E4 58                       X
        .byte   $1A                             ; F2E5 1A                       .
        ora     $19,x                           ; F2E6 15 19                    ..
        .byte   $53                             ; F2E8 53                       S
        eor     $D7,x                           ; F2E9 55 D7                    U.
        ror     $ABBB                           ; F2EB 6E BB AB                 n..
        tax                                     ; F2EE AA                       .
        rol     a                               ; F2EF 2A                       *
        sta     ($A9),y                         ; F2F0 91 A9                    ..
        tax                                     ; F2F2 AA                       .
        tax                                     ; F2F3 AA                       .
        ror     $AE,x                           ; F2F4 76 AE                    v.
        .byte   $54                             ; F2F6 54                       T
        eor     $55,x                           ; F2F7 55 55                    UU
        lda     $94                             ; F2F9 A5 94                    ..
        rol     a                               ; F2FB 2A                       *
        sta     $4A,x                           ; F2FC 95 4A                    .J
        lda     $CA,x                           ; F2FE B5 CA                    ..
        .byte   $42                             ; F300 42                       B
        lda     ($6A),y                         ; F301 B1 6A                    .j
        adc     $B7,x                           ; F303 75 B7                    u.
        tax                                     ; F305 AA                       .
        .byte   $5A                             ; F306 5A                       Z
        lda     $AB56                           ; F307 AD 56 AB                 .V.
        tax                                     ; F30A AA                       .
        rol     a                               ; F30B 2A                       *
        .byte   $23                             ; F30C 23                       #
        lda     $AA                             ; F30D A5 AA                    ..
        rol     a                               ; F30F 2A                       *
        lsr     a                               ; F310 4A                       J
        .byte   $73                             ; F311 73                       s
        ldx     $EAAA                           ; F312 AE AA EA                 ...
        tay                                     ; F315 A8                       .
        tax                                     ; F316 AA                       .
        tax                                     ; F317 AA                       .
        tax                                     ; F318 AA                       .
        tax                                     ; F319 AA                       .
        lsr     $AB,x                           ; F31A 56 AB                    V.
        lsr     a                               ; F31C 4A                       J
        lda     $AA                             ; F31D A5 AA                    ..
        plp                                     ; F31F 28                       (
        .byte   $22                             ; F320 22                       "
        eor     $B5,x                           ; F321 55 B5                    U.
        .byte   $FA                             ; F323 FA                       .
        .byte   $7A                             ; F324 7A                       z
        .byte   $B7                             ; F325 B7                       .
        tax                                     ; F326 AA                       .
        tax                                     ; F327 AA                       .
        tax                                     ; F328 AA                       .
        tax                                     ; F329 AA                       .
        .byte   $54                             ; F32A 54                       T
        lda     $54                             ; F32B A5 54                    .T
        tax                                     ; F32D AA                       .
        tax                                     ; F32E AA                       .
        sty     $94,x                           ; F32F 94 94                    ..
        eor     $D5,x                           ; F331 55 D5                    U.
        .byte   $74                             ; F333 74                       t
        .byte   $AB                             ; F334 AB                       .
        tax                                     ; F335 AA                       .
        tax                                     ; F336 AA                       .
        ldx     $951A                           ; F337 AE 1A 95                 ...
        tax                                     ; F33A AA                       .
        tax                                     ; F33B AA                       .
        tax                                     ; F33C AA                       .
        tax                                     ; F33D AA                       .
        tax                                     ; F33E AA                       .
        lsr     a                               ; F33F 4A                       J
        and     $B5,x                           ; F340 35 B5                    5.
        tax                                     ; F342 AA                       .
        tax                                     ; F343 AA                       .
        stx     $5462                           ; F344 8E 62 54                 .bT
        eor     $55,x                           ; F347 55 55                    UU
        .byte   $EB                             ; F349 EB                       .
        nop                                     ; F34A EA                       .
        ldx     LAAAA                           ; F34B AE AA AA                 ...
        .byte   $52                             ; F34E 52                       R
        .byte   $92                             ; F34F 92                       .
        tax                                     ; F350 AA                       .
        tax                                     ; F351 AA                       .
        tax                                     ; F352 AA                       .
        dec     $2A,x                           ; F353 D6 2A                    .*
        eor     $AA,x                           ; F355 55 AA                    U.
        lsr     a                               ; F357 4A                       J
        and     #$65                            ; F358 29 65                    )e
        eor     $CA,x                           ; F35A 55 CA                    U.
        nop                                     ; F35C EA                       .
        .byte   $F2                             ; F35D F2                       .
        tax                                     ; F35E AA                       .
        ldy     $D4                             ; F35F A4 D4                    ..
        ror     a                               ; F361 6A                       j
        lda     $AB6B                           ; F362 AD 6B AB                 .k.
        tax                                     ; F365 AA                       .
        tax                                     ; F366 AA                       .
        tax                                     ; F367 AA                       .
        .byte   $54                             ; F368 54                       T
        eor     $A5,x                           ; F369 55 A5                    U.
        sty     $AA,x                           ; F36B 94 AA                    ..
        tax                                     ; F36D AA                       .
        lsr     a                               ; F36E 4A                       J
        ror     $AA                             ; F36F 66 AA                    f.
        lda     #$4C                            ; F371 A9 4C                    .L
        cmp     $54,x                           ; F373 D5 54                    .T
        eor     $55,x                           ; F375 55 55                    UU
        lda     $56B6                           ; F377 AD B6 56                 ..V
        .byte   $D7                             ; F37A D7                       .
        tax                                     ; F37B AA                       .
        tax                                     ; F37C AA                       .
        .byte   $54                             ; F37D 54                       T
        bit     $51                             ; F37E 24 51                    $Q
        eor     $55,x                           ; F380 55 55                    UU
        .byte   $EB                             ; F382 EB                       .
        inc     LAAAA                           ; F383 EE AA AA                 ...
        .byte   $52                             ; F386 52                       R
        eor     $55,x                           ; F387 55 55                    UU
        eor     $A9,x                           ; F389 55 A9                    U.
        sty     $4A,x                           ; F38B 94 4A                    .J
        lda     $48                             ; F38D A5 48                    .H
        .byte   $54                             ; F38F 54                       T
        tax                                     ; F390 AA                       .
        adc     #$76                            ; F391 69 76                    iv
        .byte   $BB                             ; F393 BB                       .
        .byte   $DA                             ; F394 DA                       .
        .byte   $5A                             ; F395 5A                       Z
        .byte   $B7                             ; F396 B7                       .
        tax                                     ; F397 AA                       .
        tax                                     ; F398 AA                       .
        tax                                     ; F399 AA                       .
        tax                                     ; F39A AA                       .
        rol     a                               ; F39B 2A                       *
        eor     $55,x                           ; F39C 55 55                    UU
        lsr     a                               ; F39E 4A                       J
        tax                                     ; F39F AA                       .
        tax                                     ; F3A0 AA                       .
        tax                                     ; F3A1 AA                       .
        tax                                     ; F3A2 AA                       .
        lsr     a                               ; F3A3 4A                       J
        sta     ($59),y                         ; F3A4 91 59                    .Y
        eor     $D5,x                           ; F3A6 55 D5                    U.
        ldx     $A69A                           ; F3A8 AE 9A A6                 ...
        ldx     $AA                             ; F3AB A6 AA                    ..
        tax                                     ; F3AD AA                       .
        .byte   $12                             ; F3AE 12                       .
        cmp     $6A,x                           ; F3AF D5 6A                    .j
        lda     $6E,x                           ; F3B1 B5 6E                    .n
        lda     $2AAA                           ; F3B3 AD AA 2A                 ..*
        lsr     $A9                             ; F3B6 46 A9                    F.
        tax                                     ; F3B8 AA                       .
        rol     a                               ; F3B9 2A                       *
        eor     $D3,x                           ; F3BA 55 D3                    U.
        ldy     $C8CA                           ; F3BC AC CA C8                 ...
        .byte   $D4                             ; F3BF D4                       .
        .byte   $5A                             ; F3C0 5A                       Z
        lda     $AD73                           ; F3C1 AD 73 AD                 .s.
        .byte   $52                             ; F3C4 52                       R
        rol     a                               ; F3C5 2A                       *
        eor     $AA,x                           ; F3C6 55 AA                    U.
        rol     a                               ; F3C8 2A                       *
        and     #$55                            ; F3C9 29 55                    )U
        eor     $D3,x                           ; F3CB 55 D3                    U.
LF3CD:  sbc     $B4                             ; F3CD E5 B4                    ..
        tax                                     ; F3CF AA                       .
        tax                                     ; F3D0 AA                       .
        tax                                     ; F3D1 AA                       .
        eor     $AA9A,y                         ; F3D2 59 9A AA                 Y..
        tax                                     ; F3D5 AA                       .
        tax                                     ; F3D6 AA                       .
        tax                                     ; F3D7 AA                       .
        dec     $5535                           ; F3D8 CE 35 55                 .5U
        sta     $94,x                           ; F3DB 95 94                    ..
        .byte   $52                             ; F3DD 52                       R
        .byte   $52                             ; F3DE 52                       R
        adc     $D5                             ; F3DF 65 D5                    e.
        lda     $AA6A,y                         ; F3E1 B9 6A AA                 .j.
        tax                                     ; F3E4 AA                       .
        tax                                     ; F3E5 AA                       .
        tax                                     ; F3E6 AA                       .
        tax                                     ; F3E7 AA                       .
        tax                                     ; F3E8 AA                       .
        lda     $AA                             ; F3E9 A5 AA                    ..
        tax                                     ; F3EB AA                       .
        tax                                     ; F3EC AA                       .
        sty     $8D21                           ; F3ED 8C 21 8D                 .!.
        lda     $6E,x                           ; F3F0 B5 6E                    .n
        .byte   $AB                             ; F3F2 AB                       .
        ldx     $DA,y                           ; F3F3 B6 DA                    ..
        tax                                     ; F3F5 AA                       .
        tax                                     ; F3F6 AA                       .
        tax                                     ; F3F7 AA                       .
        .byte   $54                             ; F3F8 54                       T
        eor     $55,x                           ; F3F9 55 55                    UU
        eor     $55,x                           ; F3FB 55 55                    UU
        ldx     #$A2                            ; F3FD A2 A2                    ..
        .byte   $52                             ; F3FF 52                       R
        tax                                     ; F400 AA                       .
        rol     a                               ; F401 2A                       *
        lda     $54                             ; F402 A5 54                    .T
        lda     $5A,x                           ; F404 B5 5A                    .Z
        .byte   $BB                             ; F406 BB                       .
        .byte   $BB                             ; F407 BB                       .
        .byte   $5A                             ; F408 5A                       Z
        .byte   $AB                             ; F409 AB                       .
        tax                                     ; F40A AA                       .
        tax                                     ; F40B AA                       .
        rol     a                               ; F40C 2A                       *
        and     ($AA),y                         ; F40D 31 AA                    1.
        tax                                     ; F40F AA                       .
        tax                                     ; F410 AA                       .
        dec     $4E,x                           ; F411 D6 4E                    .N
        eor     $4A,x                           ; F413 55 4A                    UJ
        lda     #$AA                            ; F415 A9 AA                    ..
        tax                                     ; F417 AA                       .
        tax                                     ; F418 AA                       .
        dex                                     ; F419 CA                       .
        .byte   $52                             ; F41A 52                       R
        lsr     a                               ; F41B 4A                       J
        lda     $98                             ; F41C A5 98                    ..
        ldy     $5A,x                           ; F41E B4 5A                    .Z
        .byte   $EB                             ; F420 EB                       .
        adc     $5B,x                           ; F421 75 5B                    u[
        lda     LAAAA                           ; F423 AD AA AA                 ...
        rol     a                               ; F426 2A                       *
        lsr     $AA                             ; F427 46 AA                    F.
        tax                                     ; F429 AA                       .
        tax                                     ; F42A AA                       .
        tax                                     ; F42B AA                       .
        lsr     $9A,x                           ; F42C 56 9A                    V.
        tax                                     ; F42E AA                       .
        tax                                     ; F42F AA                       .
        tax                                     ; F430 AA                       .
        tax                                     ; F431 AA                       .
        tax                                     ; F432 AA                       .
        tax                                     ; F433 AA                       .
        tax                                     ; F434 AA                       .
        tax                                     ; F435 AA                       .
        bit     $AACB                           ; F436 2C CB AA                 ,..
        rol     a                               ; F439 2A                       *
        .byte   $23                             ; F43A 23                       #
        .byte   $53                             ; F43B 53                       S
        and     $A5                             ; F43C 25 A5                    %.
        adc     $EB,x                           ; F43E 75 EB                    u.
        dec     $D6,x                           ; F440 D6 D6                    ..
        tax                                     ; F442 AA                       .
        tax                                     ; F443 AA                       .
        tax                                     ; F444 AA                       .
        rol     a                               ; F445 2A                       *
        eor     $55,x                           ; F446 55 55                    UU
        and     #$95                            ; F448 29 95                    ).
        tax                                     ; F44A AA                       .
        tax                                     ; F44B AA                       .
        .byte   $42                             ; F44C 42                       B
        ora     ($D3),y                         ; F44D 11 D3                    ..
        ldx     $6E,y                           ; F44F B6 6E                    .n
        .byte   $EB                             ; F451 EB                       .
        sec                                     ; F452 38                       8
        .byte   $2B                             ; F453 2B                       +
        tax                                     ; F454 AA                       .
        tax                                     ; F455 AA                       .
        tax                                     ; F456 AA                       .
        tax                                     ; F457 AA                       .
        tax                                     ; F458 AA                       .
        ldx     $D3                             ; F459 A6 D3                    ..
        cmp     $A948,y                         ; F45B D9 48 A9                 .H.
        tax                                     ; F45E AA                       .
        rol     a                               ; F45F 2A                       *
        dex                                     ; F460 CA                       .
        .byte   $32                             ; F461 32                       2
        eor     $55,x                           ; F462 55 55                    UU
        adc     $B5AD                           ; F464 6D AD B5                 m..
        .byte   $5A                             ; F467 5A                       Z
        .byte   $AB                             ; F468 AB                       .
        tax                                     ; F469 AA                       .
        .byte   $54                             ; F46A 54                       T
        eor     $52,x                           ; F46B 55 52                    UR
        tax                                     ; F46D AA                       .
        .byte   $52                             ; F46E 52                       R
        adc     #$D9                            ; F46F 69 D9                    i.
        ldy     $4A2A                           ; F471 AC 2A 4A                 .*J
        eor     $D5,x                           ; F474 55 D5                    U.
        lsr     $AB,x                           ; F476 56 AB                    V.
        inc     $A4                             ; F478 E6 A4                    ..
        tax                                     ; F47A AA                       .
        tax                                     ; F47B AA                       .
        sty     $B4,x                           ; F47C 94 B4                    ..
        .byte   $5A                             ; F47E 5A                       Z
        .byte   $6B                             ; F47F 6B                       k
        and     $5B33,y                         ; F480 39 33 5B                 93[
        lda     $56AA                           ; F483 AD AA 56                 ..V
        .byte   $AB                             ; F486 AB                       .
        and     $46,x                           ; F487 35 46                    5F
        lda     #$AA                            ; F489 A9 AA                    ..
        rol     a                               ; F48B 2A                       *
        rol     $D7                             ; F48C 26 D7                    &.
        tax                                     ; F48E AA                       .
        ror     a                               ; F48F 6A                       j
        cmp     $54AA,x                         ; F490 DD AA 54                 ..T
        eor     $55,x                           ; F493 55 55                    UU
        eor     $55,x                           ; F495 55 55                    UU
        sty     $8A,x                           ; F497 94 8A                    ..
        ldx     #$2A                            ; F499 A2 2A                    .*
        .byte   $83                             ; F49B 83                       .
        pha                                     ; F49C 48                       H
        .byte   $EB                             ; F49D EB                       .
        .byte   $DA                             ; F49E DA                       .
        ror     $AD7B,x                         ; F49F 7E 7B AD                 ~{.
        tax                                     ; F4A2 AA                       .
        tax                                     ; F4A3 AA                       .
        tax                                     ; F4A4 AA                       .
        tax                                     ; F4A5 AA                       .
        tax                                     ; F4A6 AA                       .
        lsr     a                               ; F4A7 4A                       J
        eor     $55,x                           ; F4A8 55 55                    UU
        eor     $49,x                           ; F4AA 55 49                    UI
        lda     #$4A                            ; F4AC A9 4A                    .J
        and     #$A5                            ; F4AE 29 A5                    ).
        eor     $99,x                           ; F4B0 55 99                    U.
        cmp     $5C,x                           ; F4B2 D5 5C                    .\
        stx     $5A,y                           ; F4B4 96 5A                    .Z
        .byte   $AB                             ; F4B6 AB                       .
        tax                                     ; F4B7 AA                       .
        tax                                     ; F4B8 AA                       .
        tax                                     ; F4B9 AA                       .
        ldx     $AA                             ; F4BA A6 AA                    ..
        tax                                     ; F4BC AA                       .
        tax                                     ; F4BD AA                       .
        tax                                     ; F4BE AA                       .
        dec     $55,x                           ; F4BF D6 55                    .U
        sty     $AA,x                           ; F4C1 94 AA                    ..
        tax                                     ; F4C3 AA                       .
        tax                                     ; F4C4 AA                       .
        ror     a                               ; F4C5 6A                       j
        cmp     $A951                           ; F4C6 CD 51 A9                 .Q.
        tax                                     ; F4C9 AA                       .
        rol     a                               ; F4CA 2A                       *
        and     #$59                            ; F4CB 29 59                    )Y
        .byte   $57                             ; F4CD 57                       W
        .byte   $AB                             ; F4CE AB                       .
        inc     $54                             ; F4CF E6 54                    .T
        lda     #$AA                            ; F4D1 A9 AA                    ..
        .byte   $52                             ; F4D3 52                       R
        eor     $55                             ; F4D4 45 55                    EU
        lda     $9B56                           ; F4D6 AD 56 9B                 .V.
        .byte   $D7                             ; F4D9 D7                       .
        lsr     a                               ; F4DA 4A                       J
        jmp     LAAAA                           ; F4DB 4C AA AA                 L..

; ----------------------------------------------------------------------------
        tax                                     ; F4DE AA                       .
        txs                                     ; F4DF 9A                       .
        tax                                     ; F4E0 AA                       .
        tax                                     ; F4E1 AA                       .
        tax                                     ; F4E2 AA                       .
        tax                                     ; F4E3 AA                       .
        tax                                     ; F4E4 AA                       .
        lda     $2C,x                           ; F4E5 B5 2C                    .,
        lda     #$AA                            ; F4E7 A9 AA                    ..
        tax                                     ; F4E9 AA                       .
        lsr     a                               ; F4EA 4A                       J
        lda     $AA                             ; F4EB A5 AA                    ..
        .byte   $32                             ; F4ED 32                       2
        lda     $AAAD                           ; F4EE AD AD AA                 ...
        tax                                     ; F4F1 AA                       .
        tax                                     ; F4F2 AA                       .
        lsr     $5D,x                           ; F4F3 56 5D                    V]
        dec     $28,x                           ; F4F5 D6 28                    .(
        lda     $2A                             ; F4F7 A5 2A                    .*
        sta     $3118                           ; F4F9 8D 18 31                 ..1
        .byte   $6B                             ; F4FC 6B                       k
        adc     $DBAF                           ; F4FD 6D AF DB                 m..
        eor     L0000,x                         ; F500 55 00                    U.
        brk                                     ; F502 00                       .
        brk                                     ; F503 00                       .
        brk                                     ; F504 00                       .
        brk                                     ; F505 00                       .
        brk                                     ; F506 00                       .
        brk                                     ; F507 00                       .
        brk                                     ; F508 00                       .
        brk                                     ; F509 00                       .
        brk                                     ; F50A 00                       .
        brk                                     ; F50B 00                       .
        brk                                     ; F50C 00                       .
        brk                                     ; F50D 00                       .
        brk                                     ; F50E 00                       .
        brk                                     ; F50F 00                       .
        brk                                     ; F510 00                       .
        brk                                     ; F511 00                       .
        brk                                     ; F512 00                       .
        brk                                     ; F513 00                       .
        brk                                     ; F514 00                       .
        brk                                     ; F515 00                       .
        brk                                     ; F516 00                       .
        brk                                     ; F517 00                       .
        brk                                     ; F518 00                       .
        brk                                     ; F519 00                       .
        brk                                     ; F51A 00                       .
        brk                                     ; F51B 00                       .
        brk                                     ; F51C 00                       .
        brk                                     ; F51D 00                       .
        brk                                     ; F51E 00                       .
        brk                                     ; F51F 00                       .
        brk                                     ; F520 00                       .
        brk                                     ; F521 00                       .
        brk                                     ; F522 00                       .
        brk                                     ; F523 00                       .
        brk                                     ; F524 00                       .
        brk                                     ; F525 00                       .
        brk                                     ; F526 00                       .
        brk                                     ; F527 00                       .
        brk                                     ; F528 00                       .
        brk                                     ; F529 00                       .
        brk                                     ; F52A 00                       .
        brk                                     ; F52B 00                       .
        brk                                     ; F52C 00                       .
        brk                                     ; F52D 00                       .
        brk                                     ; F52E 00                       .
        brk                                     ; F52F 00                       .
        brk                                     ; F530 00                       .
        brk                                     ; F531 00                       .
        brk                                     ; F532 00                       .
        brk                                     ; F533 00                       .
        brk                                     ; F534 00                       .
        brk                                     ; F535 00                       .
        brk                                     ; F536 00                       .
        brk                                     ; F537 00                       .
        brk                                     ; F538 00                       .
        brk                                     ; F539 00                       .
        brk                                     ; F53A 00                       .
        brk                                     ; F53B 00                       .
        brk                                     ; F53C 00                       .
        brk                                     ; F53D 00                       .
        brk                                     ; F53E 00                       .
        brk                                     ; F53F 00                       .
        .byte   $FF                             ; F540 FF                       .
        .byte   $FF                             ; F541 FF                       .
        .byte   $FF                             ; F542 FF                       .
        .byte   $FF                             ; F543 FF                       .
        .byte   $FF                             ; F544 FF                       .
        .byte   $FF                             ; F545 FF                       .
        .byte   $FF                             ; F546 FF                       .
        .byte   $FF                             ; F547 FF                       .
        .byte   $FF                             ; F548 FF                       .
        .byte   $FF                             ; F549 FF                       .
        .byte   $5F                             ; F54A 5F                       _
        brk                                     ; F54B 00                       .
        brk                                     ; F54C 00                       .
        brk                                     ; F54D 00                       .
        brk                                     ; F54E 00                       .
        cpy     #$DD                            ; F54F C0 DD                    ..
        .byte   $DF                             ; F551 DF                       .
        .byte   $BF                             ; F552 BF                       .
        .byte   $EF                             ; F553 EF                       .
        .byte   $FF                             ; F554 FF                       .
        .byte   $EF                             ; F555 EF                       .
        .byte   $FF                             ; F556 FF                       .
        .byte   $FF                             ; F557 FF                       .
        .byte   $FF                             ; F558 FF                       .
        .byte   $FF                             ; F559 FF                       .
        .byte   $FF                             ; F55A FF                       .
        .byte   $FF                             ; F55B FF                       .
        .byte   $3F                             ; F55C 3F                       ?
        ora     ($C4),y                         ; F55D 11 C4                    ..
        pla                                     ; F55F 68                       h
        jsr     L0000                           ; F560 20 00 00                  ..
        brk                                     ; F563 00                       .
        ldx     #$BC                            ; F564 A2 BC                    ..
        sbc     LFFFF,x                         ; F566 FD FF FF                 ...
        .byte   $FF                             ; F569 FF                       .
        .byte   $DC                             ; F56A DC                       .
        .byte   $BB                             ; F56B BB                       .
        .byte   $DB                             ; F56C DB                       .
        .byte   $FF                             ; F56D FF                       .
        .byte   $FF                             ; F56E FF                       .
        .byte   $FF                             ; F56F FF                       .
        .byte   $FF                             ; F570 FF                       .
        .byte   $FF                             ; F571 FF                       .
        .byte   $7F                             ; F572 7F                       .
        bit     $01                             ; F573 24 01                    $.
        .byte   $23                             ; F575 23                       #
        .byte   $04                             ; F576 04                       .
        .byte   $02                             ; F577 02                       .
        .byte   $02                             ; F578 02                       .
        ora     $90                             ; F579 05 90                    ..
        bit     $15                             ; F57B 24 15                    $.
        eor     $DB,x                           ; F57D 55 DB                    U.
        .byte   $F7                             ; F57F F7                       .
        .byte   $F7                             ; F580 F7                       .
        .byte   $FF                             ; F581 FF                       .
        .byte   $7F                             ; F582 7F                       .
        .byte   $D7                             ; F583 D7                       .
        ror     a                               ; F584 6A                       j
        .byte   $92                             ; F585 92                       .
        ldy     $54,x                           ; F586 B4 54                    .T
        .byte   $5B                             ; F588 5B                       [
        .byte   $77                             ; F589 77                       w
        dec     $48,x                           ; F58A D6 48                    .H
        bit     $29                             ; F58C 24 29                    $)
        lda     $A8                             ; F58E A5 A8                    ..
        .byte   $14                             ; F590 14                       .
        and     #$89                            ; F591 29 89                    ).
        sty     $02                             ; F593 84 02                    ..
        iny                                     ; F595 C8                       .
        .byte   $54                             ; F596 54                       T
        .byte   $DB                             ; F597 DB                       .
        lsr     $CF,x                           ; F598 56 CF                    V.
        adc     $6E9D                           ; F59A 6D 9D 6E                 m.n
        sta     $5AEB,x                         ; F59D 9D EB 5A                 ..Z
        .byte   $9B                             ; F5A0 9B                       .
        .byte   $4B                             ; F5A1 4B                       K
        .byte   $1A                             ; F5A2 1A                       .
        lda     $39B5                           ; F5A3 AD B5 39                 ..9
        .byte   $73                             ; F5A6 73                       s
        ror     a                               ; F5A7 6A                       j
        ror     a                               ; F5A8 6A                       j
        lda     $36,x                           ; F5A9 B5 36                    .6
        .byte   $2B                             ; F5AB 2B                       +
        sta     $24,x                           ; F5AC 95 24                    .$
        lda     ($08,x)                         ; F5AE A1 08                    ..
        eor     ($24,x)                         ; F5B0 41 24                    A$
        dex                                     ; F5B2 CA                       .
        sbc     ($58),y                         ; F5B3 F1 58                    .X
        bit     $41                             ; F5B5 24 41                    $A
        dey                                     ; F5B7 88                       .
        cli                                     ; F5B8 58                       X
        ldy     $DDDA                           ; F5B9 AC DA DD                 ...
        cmp     $1D,x                           ; F5BC D5 1D                    ..
        .byte   $CB                             ; F5BE CB                       .
        cmp     $6EB5,y                         ; F5BF D9 B5 6E                 ..n
        .byte   $77                             ; F5C2 77                       w
        .byte   $8B                             ; F5C3 8B                       .
        eor     $1A,x                           ; F5C4 55 1A                    U.
        ora     $B555                           ; F5C6 0D 55 B5                 .U.
        adc     $9D,x                           ; F5C9 75 9D                    u.
        .byte   $77                             ; F5CB 77                       w
        .byte   $73                             ; F5CC 73                       s
        lda     $AD6A,y                         ; F5CD B9 6A AD                 .j.
        .byte   $F3                             ; F5D0 F3                       .
        .byte   $54                             ; F5D1 54                       T
        sta     $4B,x                           ; F5D2 95 4B                    .K
        eor     $69,x                           ; F5D4 55 69                    Ui
        .byte   $54                             ; F5D6 54                       T
        sta     $10,x                           ; F5D7 95 10                    ..
        .byte   $42                             ; F5D9 42                       B
        .byte   $42                             ; F5DA 42                       B
        sty     $99,x                           ; F5DB 94 99                    ..
        and     $4C6D,y                         ; F5DD 39 6D 4C                 9mL
        ora     $25                             ; F5E0 05 25                    .%
        sta     ($28),y                         ; F5E2 91 28                    .(
        adc     $56                             ; F5E4 65 56                    eV
        .byte   $8B                             ; F5E6 8B                       .
        .byte   $AB                             ; F5E7 AB                       .
        .byte   $44                             ; F5E8 44                       D
        cli                                     ; F5E9 58                       X
        tax                                     ; F5EA AA                       .
        ror     $6DFB                           ; F5EB 6E FB 6D                 n.m
        asl     $AEAD,x                         ; F5EE 1E AD AE                 ...
        lsr     $5B,x                           ; F5F1 56 5B                    V[
        eor     $AAEB,x                         ; F5F3 5D EB AA                 ]..
        lda     #$48                            ; F5F6 A9 48                    .H
        lda     #$52                            ; F5F8 A9 52                    .R
        lda     $D6AD                           ; F5FA AD AD D6                 ...
        .byte   $7A                             ; F5FD 7A                       z
        .byte   $7B                             ; F5FE 7B                       {
        .byte   $AF                             ; F5FF AF                       .
        lsr     $B5,x                           ; F600 56 B5                    V.
        .byte   $52                             ; F602 52                       R
        .byte   $54                             ; F603 54                       T
        .byte   $22                             ; F604 22                       "
        ldy     $54                             ; F605 A4 54                    .T
        adc     ($79),y                         ; F607 71 79                    qy
        .byte   $6B                             ; F609 6B                       k
        ldy     $50                             ; F60A A4 50                    .P
        lda     #$A4                            ; F60C A9 A4                    ..
        ror     a                               ; F60E 6A                       j
        cmp     $4A,x                           ; F60F D5 4A                    .J
        lda     #$24                            ; F611 A9 24                    .$
        .byte   $12                             ; F613 12                       .
        eor     $95,x                           ; F614 55 95                    U.
        adc     $5A1D                           ; F616 6D 1D 5A                 m.Z
        .byte   $52                             ; F619 52                       R
        stx     $52                             ; F61A 86 52                    .R
        tax                                     ; F61C AA                       .
        sbc     ($D6),y                         ; F61D F1 D6                    ..
        adc     $67,x                           ; F61F 75 67                    ug
        rol     a                               ; F621 2A                       *
        .byte   $57                             ; F622 57                       W
        lda     $6DB6                           ; F623 AD B6 6D                 ..m
        lda     $AA,x                           ; F626 B5 AA                    ..
        tax                                     ; F628 AA                       .
        txa                                     ; F629 8A                       .
        cmp     $91                             ; F62A C5 91                    ..
        .byte   $14                             ; F62C 14                       .
        lda     $18                             ; F62D A5 18                    ..
        adc     $ED                             ; F62F 65 ED                    e.
        tsx                                     ; F631 BA                       .
        sbc     $AB5D                           ; F632 ED 5D AB                 .].
        tax                                     ; F635 AA                       .
        tax                                     ; F636 AA                       .
        .byte   $52                             ; F637 52                       R
        eor     $55,x                           ; F638 55 55                    UU
        eor     $55,x                           ; F63A 55 55                    UU
        eor     $50                             ; F63C 45 50                    EP
        tax                                     ; F63E AA                       .
        tax                                     ; F63F AA                       .
        .byte   $5A                             ; F640 5A                       Z
        .byte   $77                             ; F641 77                       w
        rol     $52                             ; F642 26 52                    &R
        ldx     #$AA                            ; F644 A2 AA                    ..
        tax                                     ; F646 AA                       .
        dec     $6A,x                           ; F647 D6 6A                    .j
        lsr     $AB,x                           ; F649 56 AB                    V.
        sty     $AA,x                           ; F64B 94 AA                    ..
        ldy     $CC                             ; F64D A4 CC                    ..
        .byte   $DA                             ; F64F DA                       .
        tax                                     ; F650 AA                       .
        .byte   $5A                             ; F651 5A                       Z
        sbc     LAAAA                           ; F652 ED AA AA                 ...
        tax                                     ; F655 AA                       .
        tax                                     ; F656 AA                       .
        sty     $52,x                           ; F657 94 52                    .R
        ldx     #$52                            ; F659 A2 52                    .R
        eor     $9A,x                           ; F65B 55 9A                    U.
        .byte   $6F                             ; F65D 6F                       o
        lda     $A4                             ; F65E A5 A4                    ..
        tax                                     ; F660 AA                       .
        tax                                     ; F661 AA                       .
        lsr     $B577,x                         ; F662 5E 77 B5                 ^w.
        eor     $55,x                           ; F665 55 55                    UU
        lsr     a                               ; F667 4A                       J
        lda     $AA                             ; F668 A5 AA                    ..
        ror     a                               ; F66A 6A                       j
        .byte   $9B                             ; F66B 9B                       .
        and     $2946,y                         ; F66C 39 46 29                 9F)
        and     #$55                            ; F66F 29 55                    )U
        eor     $CB,x                           ; F671 55 CB                    U.
        cmp     $08B2,x                         ; F673 DD B2 08                 ...
        eor     $45                             ; F676 45 45                    EE
        lda     $B6,x                           ; F678 B5 B6                    ..
        lsr     $5A,x                           ; F67A 56 5A                    VZ
        eor     $D5,x                           ; F67C 55 D5                    U.
        rol     a                               ; F67E 2A                       *
        eor     $4A,x                           ; F67F 55 4A                    UJ
        .byte   $52                             ; F681 52                       R
        sty     $A2,x                           ; F682 94 A2                    ..
        dex                                     ; F684 CA                       .
        dec     $7D6A                           ; F685 CE 6A 7D                 .j}
        .byte   $57                             ; F688 57                       W
        cmp     $AA,x                           ; F689 D5 AA                    ..
        tax                                     ; F68B AA                       .
        tax                                     ; F68C AA                       .
        tax                                     ; F68D AA                       .
        rol     a                               ; F68E 2A                       *
        eor     $89,x                           ; F68F 55 89                    U.
        .byte   $22                             ; F691 22                       "
        and     #$D5                            ; F692 29 D5                    ).
        .byte   $DA                             ; F694 DA                       .
        sbc     $91CB,x                         ; F695 FD CB 91                 ...
        ror     $55                             ; F698 66 55                    fU
        ldx     $ADD2                           ; F69A AE D2 AD                 ...
        ldx     $6A,y                           ; F69D B6 6A                    .j
        lda     #$24                            ; F69F A9 24                    .$
        eor     #$4A                            ; F6A1 49 4A                    IJ
        .byte   $DB                             ; F6A3 DB                       .
        .byte   $5A                             ; F6A4 5A                       Z
        cmp     $A4DA                           ; F6A5 CD DA A4                 ...
        .byte   $54                             ; F6A8 54                       T
        rol     a                               ; F6A9 2A                       *
        eor     $46,x                           ; F6AA 55 46                    UF
        eor     $4A,x                           ; F6AC 55 4A                    UJ
        tax                                     ; F6AE AA                       .
        tax                                     ; F6AF AA                       .
        sta     $B56B,y                         ; F6B0 99 6B B5                 .k.
        .byte   $52                             ; F6B3 52                       R
        eor     $55,x                           ; F6B4 55 55                    UU
        lda     $B5,x                           ; F6B6 B5 B5                    ..
        tax                                     ; F6B8 AA                       .
        tax                                     ; F6B9 AA                       .
        tax                                     ; F6BA AA                       .
        rol     a                               ; F6BB 2A                       *
        .byte   $89                             ; F6BC 89                       .
        tax                                     ; F6BD AA                       .
        tax                                     ; F6BE AA                       .
        jmp     (LA155)                         ; F6BF 6C 55 A1                 lU.

; ----------------------------------------------------------------------------
        .byte   $04                             ; F6C2 04                       .
        eor     #$A9                            ; F6C3 49 A9                    I.
        txs                                     ; F6C5 9A                       .
        sbc     $5DDE                           ; F6C6 ED DE 5D                 ..]
        .byte   $17                             ; F6C9 17                       .
        eor     $A9,x                           ; F6CA 55 A9                    U.
        tax                                     ; F6CC AA                       .
        .byte   $5A                             ; F6CD 5A                       Z
        adc     L5555                           ; F6CE 6D 55 55                 mUU
        eor     $33,x                           ; F6D1 55 33                    U3
        .byte   $53                             ; F6D3 53                       S
        .byte   $52                             ; F6D4 52                       R
        eor     $4A,x                           ; F6D5 55 4A                    UJ
        eor     $4AA6,y                         ; F6D7 59 A6 4A                 Y.J
        lda     $DA                             ; F6DA A5 DA                    ..
        ldx     $B5,y                           ; F6DC B6 B5                    ..
        tax                                     ; F6DE AA                       .
        tax                                     ; F6DF AA                       .
        cmp     $5A,x                           ; F6E0 D5 5A                    .Z
        adc     $2955                           ; F6E2 6D 55 29                 mU)
        eor     #$4A                            ; F6E5 49 4A                    IJ
        lda     $5A                             ; F6E7 A5 5A                    .Z
        adc     $DF,x                           ; F6E9 75 DF                    u.
        .byte   $14                             ; F6EB 14                       .
        lda     #$8C                            ; F6EC A9 8C                    ..
        and     $56A9                           ; F6EE 2D A9 56                 -.V
        .byte   $6B                             ; F6F1 6B                       k
        and     $5115                           ; F6F2 2D 15 51                 -.Q
        jsr     L6AA5                           ; F6F5 20 A5 6A                  .j
        .byte   $6B                             ; F6F8 6B                       k
        .byte   $D7                             ; F6F9 D7                       .
        adc     $AD,x                           ; F6FA 75 AD                    u.
        tax                                     ; F6FC AA                       .
        tax                                     ; F6FD AA                       .
        tax                                     ; F6FE AA                       .
        tax                                     ; F6FF AA                       .
        .byte   $54                             ; F700 54                       T
        txa                                     ; F701 8A                       .
        and     ($94),y                         ; F702 31 94                    1.
        tax                                     ; F704 AA                       .
        txs                                     ; F705 9A                       .
        lda     $AAAB                           ; F706 AD AB AA                 ...
        tax                                     ; F709 AA                       .
        cmp     $5A,x                           ; F70A D5 5A                    .Z
        rol     a                               ; F70C 2A                       *
        eor     $A5,x                           ; F70D 55 A5                    U.
        tax                                     ; F70F AA                       .
        .byte   $52                             ; F710 52                       R
        .byte   $52                             ; F711 52                       R
        lsr     $6B,x                           ; F712 56 6B                    Vk
        .byte   $DB                             ; F714 DB                       .
        ldx     $94                             ; F715 A6 94                    ..
        cpy     $54                             ; F717 C4 54                    .T
        eor     $75,x                           ; F719 55 75                    Uu
        ror     $557B                           ; F71B 6E 7B 55                 n{U
        and     $26                             ; F71E 25 26                    %&
        eor     $55,x                           ; F720 55 55                    UU
        .byte   $DB                             ; F722 DB                       .
        .byte   $5A                             ; F723 5A                       Z
        lda     $54                             ; F724 A5 54                    .T
        lsr     a                               ; F726 4A                       J
        and     $25                             ; F727 25 25                    %%
        .byte   $67                             ; F729 67                       g
        lda     $2C                             ; F72A A5 2C                    .,
        .byte   $57                             ; F72C 57                       W
        .byte   $4B                             ; F72D 4B                       K
        eor     $D5,x                           ; F72E 55 D5                    U.
        ldx     $DB,y                           ; F730 B6 DB                    ..
        tax                                     ; F732 AA                       .
        tax                                     ; F733 AA                       .
        tax                                     ; F734 AA                       .
        .byte   $52                             ; F735 52                       R
        eor     $4D,x                           ; F736 55 4D                    UM
        sta     $94,x                           ; F738 95 94                    ..
        rol     a                               ; F73A 2A                       *
        sta     $6C,x                           ; F73B 95 6C                    .l
        cmp     $6A,x                           ; F73D D5 6A                    .j
        bit     $9515                           ; F73F 2C 15 95                 ,..
        tax                                     ; F742 AA                       .
        rol     a                               ; F743 2A                       *
        lda     $6D,x                           ; F744 B5 6D                    .m
        lda     $2AAB                           ; F746 AD AB 2A                 ..*
        .byte   $12                             ; F749 12                       .
        eor     ($55),y                         ; F74A 51 55                    QU
        adc     $B5B7                           ; F74C 6D B7 B5                 m..
        tax                                     ; F74F AA                       .
        .byte   $34                             ; F750 34                       4
        eor     $AB,x                           ; F751 55 AB                    U.
        tax                                     ; F753 AA                       .
        rol     a                               ; F754 2A                       *
        lda     $54                             ; F755 A5 54                    .T
        .byte   $22                             ; F757 22                       "
        eor     ($8A),y                         ; F758 51 8A                    Q.
        cmp     #$F9                            ; F75A C9 F9                    ..
        lsr     $D5,x                           ; F75C 56 D5                    V.
        ror     $AB5D                           ; F75E 6E 5D AB                 n].
        tax                                     ; F761 AA                       .
        lsr     a                               ; F762 4A                       J
        eor     $55,x                           ; F763 55 55                    UU
        eor     #$A5                            ; F765 49 A5                    I.
        tax                                     ; F767 AA                       .
        .byte   $5A                             ; F768 5A                       Z
        and     $4543,x                         ; F769 3D 43 45                 =CE
        tax                                     ; F76C AA                       .
        tax                                     ; F76D AA                       .
        ror     a                               ; F76E 6A                       j
        .byte   $57                             ; F76F 57                       W
        .byte   $67                             ; F770 67                       g
        ldx     $34                             ; F771 A6 34                    .4
        cmp     #$A8                            ; F773 C9 A8                    ..
        tax                                     ; F775 AA                       .
        nop                                     ; F776 EA                       .
        ldx     $B5,y                           ; F777 B6 B5                    ..
        dec     $AA,x                           ; F779 D6 AA                    ..
        clc                                     ; F77B 18                       .
        sta     $AA,x                           ; F77C 95 AA                    ..
        jmp     L5555                           ; F77E 4C 55 55                 LUU

; ----------------------------------------------------------------------------
        .byte   $93                             ; F781 93                       .
        lda     #$AA                            ; F782 A9 AA                    ..
        .byte   $5A                             ; F784 5A                       Z
        .byte   $EB                             ; F785 EB                       .
        .byte   $9E                             ; F786 9E                       .
        tax                                     ; F787 AA                       .
        tax                                     ; F788 AA                       .
        lsr     a                               ; F789 4A                       J
        lda     $28                             ; F78A A5 28                    .(
        and     $A5                             ; F78C 25 A5                    %.
        tax                                     ; F78E AA                       .
        .byte   $52                             ; F78F 52                       R
        .byte   $D3                             ; F790 D3                       .
        ror     $55,x                           ; F791 76 55                    vU
        adc     $4A53                           ; F793 6D 53 4A                 mSJ
        eor     $55,x                           ; F796 55 55                    UU
        eor     $55,x                           ; F798 55 55                    UU
        adc     $2AB5                           ; F79A 6D B5 2A                 m.*
        ora     ($91),y                         ; F79D 11 91                    ..
        tax                                     ; F79F AA                       .
        tax                                     ; F7A0 AA                       .
        .byte   $BB                             ; F7A1 BB                       .
        eor     $554A,x                         ; F7A2 5D 4A 55                 ]JU
        lda     #$AA                            ; F7A5 A9 AA                    ..
        tax                                     ; F7A7 AA                       .
        tax                                     ; F7A8 AA                       .
        lda     $49                             ; F7A9 A5 49                    .I
        sta     $A4,x                           ; F7AB 95 A4                    ..
        .byte   $62                             ; F7AD 62                       b
        cpy     $6F6D                           ; F7AE CC 6D 6F                 .mo
        eor     $6B,x                           ; F7B1 55 6B                    Uk
        lda     L5555                           ; F7B3 AD 55 55                 .UU
        eor     $55,x                           ; F7B6 55 55                    UU
        sta     $1A,x                           ; F7B8 95 1A                    ..
        eor     #$55                            ; F7BA 49 55                    IU
        rol     a                               ; F7BC 2A                       *
        cmp     $3132                           ; F7BD CD 32 31                 .21
        .byte   $52                             ; F7C0 52                       R
        eor     $5D,x                           ; F7C1 55 5D                    U]
        .byte   $77                             ; F7C3 77                       w
        .byte   $BB                             ; F7C4 BB                       .
        dec     $AA,x                           ; F7C5 D6 AA                    ..
        rol     a                               ; F7C7 2A                       *
        sta     ($AA),y                         ; F7C8 91 AA                    ..
        lsr     a                               ; F7CA 4A                       J
        cmp     $B6,x                           ; F7CB D5 B6                    ..
        tax                                     ; F7CD AA                       .
        tax                                     ; F7CE AA                       .
        sty     $54,x                           ; F7CF 94 54                    .T
        eor     $55,x                           ; F7D1 55 55                    UU
        eor     $D5,x                           ; F7D3 55 D5                    U.
        .byte   $14                             ; F7D5 14                       .
        .byte   $12                             ; F7D6 12                       .
        lda     $AA                             ; F7D7 A5 AA                    ..
        lda     $7D,x                           ; F7D9 B5 7D                    .}
        lda     $6B56                           ; F7DB AD 56 6B                 .Vk
        eor     $A5,x                           ; F7DE 55 A5                    U.
        bit     $55                             ; F7E0 24 55                    $U
        eor     $55,x                           ; F7E2 55 55                    UU
        eor     $56,x                           ; F7E4 55 56                    UV
        eor     $D5,x                           ; F7E6 55 D5                    U.
        .byte   $3A                             ; F7E8 3A                       :
        lda     $54                             ; F7E9 A5 54                    .T
        eor     $55,x                           ; F7EB 55 55                    UU
        eor     $55,x                           ; F7ED 55 55                    UU
        eor     $95,x                           ; F7EF 55 95                    U.
        sty     $48,x                           ; F7F1 94 48                    .H
        eor     #$75                            ; F7F3 49 75                    Iu
        cmp     $ABB7,x                         ; F7F5 DD B7 AB                 ...
        tax                                     ; F7F8 AA                       .
        tax                                     ; F7F9 AA                       .
        tax                                     ; F7FA AA                       .
        tax                                     ; F7FB AA                       .
        tax                                     ; F7FC AA                       .
        tax                                     ; F7FD AA                       .
        sty     $54,x                           ; F7FE 94 54                    .T
        eor     #$09                            ; F800 49 09                    I.
        lda     $EC                             ; F802 A5 EC                    ..
        ror     $57,x                           ; F804 76 57                    vW
        .byte   $6B                             ; F806 6B                       k
        .byte   $53                             ; F807 53                       S
        lda     #$54                            ; F808 A9 54                    .T
        eor     $55,x                           ; F80A 55 55                    UU
        eor     $55,x                           ; F80C 55 55                    UU
        eor     $95,x                           ; F80E 55 95                    U.
        lsr     $55,x                           ; F810 56 55                    VU
        eor     $15,x                           ; F812 55 15                    U.
        lda     $34                             ; F814 A5 34                    .4
        adc     $559D                           ; F816 6D 9D 55                 m.U
        .byte   $6B                             ; F819 6B                       k
        lda     $4AAA                           ; F81A AD AA 4A                 ..J
        lsr     a                               ; F81D 4A                       J
        eor     $55,x                           ; F81E 55 55                    UU
        cmp     $AA,x                           ; F820 D5 AA                    ..
        .byte   $52                             ; F822 52                       R
        lsr     a                               ; F823 4A                       J
        eor     #$55                            ; F824 49 55                    IU
        cmp     $75,x                           ; F826 D5 75                    .u
        cmp     $4C,x                           ; F828 D5 4C                    .L
        sta     $A4,x                           ; F82A 95 A4                    ..
        tax                                     ; F82C AA                       .
        .byte   $5A                             ; F82D 5A                       Z
        .byte   $57                             ; F82E 57                       W
        .byte   $7B                             ; F82F 7B                       {
        eor     $A9,x                           ; F830 55 A9                    U.
        tax                                     ; F832 AA                       .
        rol     a                               ; F833 2A                       *
        and     $55                             ; F834 25 55                    %U
        eor     $55,x                           ; F836 55 55                    UU
        eor     $53,x                           ; F838 55 53                    US
        lsr     a                               ; F83A 4A                       J
        lda     $6C                             ; F83B A5 6C                    .l
        .byte   $AB                             ; F83D AB                       .
        sty     $AA,x                           ; F83E 94 AA                    ..
        nop                                     ; F840 EA                       .
        .byte   $72                             ; F841 72                       r
        eor     $AD,x                           ; F842 55 AD                    U.
        .byte   $4B                             ; F844 4B                       K
        lsr     a                               ; F845 4A                       J
        eor     $91,x                           ; F846 55 91                    U.
        ror     a                               ; F848 6A                       j
        ror     $6DCD                           ; F849 6E CD 6D                 n.m
        sta     $AA,x                           ; F84C 95 AA                    ..
        tax                                     ; F84E AA                       .
        tax                                     ; F84F AA                       .
        tax                                     ; F850 AA                       .
        tax                                     ; F851 AA                       .
        lsr     a                               ; F852 4A                       J
        .byte   $92                             ; F853 92                       .
        txa                                     ; F854 8A                       .
        jsr     LAAA2                           ; F855 20 A2 AA                  ..
        sbc     $DE,x                           ; F858 F5 DE                    ..
        .byte   $77                             ; F85A 77                       w
        .byte   $6B                             ; F85B 6B                       k
        eor     $55,x                           ; F85C 55 55                    UU
        eor     $55,x                           ; F85E 55 55                    UU
        lda     $AA                             ; F860 A5 AA                    ..
        tax                                     ; F862 AA                       .
        ldy     $54                             ; F863 A4 54                    .T
        eor     $A9,x                           ; F865 55 A9                    U.
        sta     $C952,y                         ; F867 99 52 C9                 .R.
        cpx     $955C                           ; F86A EC 5C 95                 .\.
        tax                                     ; F86D AA                       .
        .byte   $5A                             ; F86E 5A                       Z
        eor     $55,x                           ; F86F 55 55                    UU
        sta     $CB64,y                         ; F871 99 64 CB                 .d.
        eor     $57,x                           ; F874 55 57                    UW
        .byte   $97                             ; F876 97                       .
        .byte   $62                             ; F877 62                       b
        .byte   $54                             ; F878 54                       T
        eor     $55,x                           ; F879 55 55                    UU
        lda     $36,x                           ; F87B B5 36                    .6
        lda     $52                             ; F87D A5 52                    .R
        and     #$A9                            ; F87F 29 A9                    ).
        rol     a                               ; F881 2A                       *
        .byte   $EB                             ; F882 EB                       .
        ror     $97,x                           ; F883 76 97                    v.
        .byte   $54                             ; F885 54                       T
        rol     a                               ; F886 2A                       *
        sta     $92,x                           ; F887 95 92                    ..
        tax                                     ; F889 AA                       .
        tax                                     ; F88A AA                       .
        .byte   $5A                             ; F88B 5A                       Z
        .byte   $57                             ; F88C 57                       W
        .byte   $97                             ; F88D 97                       .
        eor     #$55                            ; F88E 49 55                    IU
        eor     $DD,x                           ; F890 55 DD                    U.
        sty     $5552                           ; F892 8C 52 55                 .RU
        eor     $55,x                           ; F895 55 55                    UU
        cmp     $A6,x                           ; F897 D5 A6                    ..
        jmp     L9555                           ; F899 4C 55 95                 LU.

; ----------------------------------------------------------------------------
        .byte   $64                             ; F89C 64                       d
        ror     $96,x                           ; F89D 76 96                    v.
        eor     $554D,y                         ; F89F 59 4D 55                 YMU
        eor     $55,x                           ; F8A2 55 55                    UU
        eor     $AD,x                           ; F8A4 55 AD                    U.
        dec     $92,x                           ; F8A6 D6 92                    ..
        lsr     a                               ; F8A8 4A                       J
        sta     $50                             ; F8A9 85 50                    .P
        tax                                     ; F8AB AA                       .
        .byte   $5A                             ; F8AC 5A                       Z
        .byte   $F7                             ; F8AD F7                       .
        lda     L5555,x                         ; F8AE BD 55 55                 .UU
        eor     $55,x                           ; F8B1 55 55                    UU
        lda     #$AA                            ; F8B3 A9 AA                    ..
        tax                                     ; F8B5 AA                       .
        tax                                     ; F8B6 AA                       .
        txa                                     ; F8B7 8A                       .
        sty     $28,x                           ; F8B8 94 28                    .(
        lsr     a                               ; F8BA 4A                       J
        eor     $73,x                           ; F8BB 55 73                    Us
        dex                                     ; F8BD CA                       .
        .byte   $DC                             ; F8BE DC                       .
        ror     $B555                           ; F8BF 6E 55 B5                 nU.
        lsr     $5B,x                           ; F8C2 56 5B                    V[
        eor     $15,x                           ; F8C4 55 15                    U.
        and     #$55                            ; F8C6 29 55                    )U
        eor     $D5,x                           ; F8C8 55 D5                    U.
        rol     $25,x                           ; F8CA 36 25                    6%
        eor     $55,x                           ; F8CC 55 55                    UU
        eor     $B5,x                           ; F8CE 55 B5                    U.
        and     $45,x                           ; F8D0 35 45                    5E
        and     #$52                            ; F8D2 29 52                    )R
        .byte   $32                             ; F8D4 32                       2
        lda     #$6A                            ; F8D5 A9 6A                    .j
        cmp     $56FB,x                         ; F8D7 DD FB 56                 ..V
        eor     $A5,x                           ; F8DA 55 A5                    U.
        clc                                     ; F8DC 18                       .
        eor     $55,x                           ; F8DD 55 55                    UU
        eor     $ED,x                           ; F8DF 55 ED                    U.
        jmp     (L5494)                         ; F8E1 6C 94 54                 l.T

; ----------------------------------------------------------------------------
        eor     $55,x                           ; F8E4 55 55                    UU
        .byte   $5B                             ; F8E6 5B                       [
        and     #$55                            ; F8E7 29 55                    )U
        eor     $4A,x                           ; F8E9 55 4A                    UJ
        .byte   $63                             ; F8EB 63                       c
        lda     #$D2                            ; F8EC A9 D2                    ..
        tax                                     ; F8EE AA                       .
        tax                                     ; F8EF AA                       .
        dex                                     ; F8F0 CA                       .
        inc     $56                             ; F8F1 E6 56                    .V
        lda     $B6,x                           ; F8F3 B5 B6                    ..
        eor     $55,x                           ; F8F5 55 55                    UU
        eor     $A5,x                           ; F8F7 55 A5                    U.
        tax                                     ; F8F9 AA                       .
        tax                                     ; F8FA AA                       .
        rol     a                               ; F8FB 2A                       *
        lda     $14                             ; F8FC A5 14                    ..
        ora     ($A9),y                         ; F8FE 11 A9                    ..
        tax                                     ; F900 AA                       .
        inc     $DE,x                           ; F901 F6 DE                    ..
        stx     $5325                           ; F903 8E 25 53                 .%S
        eor     $55,x                           ; F906 55 55                    UU
        eor     $55,x                           ; F908 55 55                    UU
        .byte   $EB                             ; F90A EB                       .
        .byte   $B2                             ; F90B B2                       .
        .byte   $52                             ; F90C 52                       R
        .byte   $52                             ; F90D 52                       R
        lsr     a                               ; F90E 4A                       J
        tax                                     ; F90F AA                       .
        cmp     $C6,x                           ; F910 D5 C6                    ..
        .byte   $34                             ; F912 34                       4
        .byte   $57                             ; F913 57                       W
        eor     $55,x                           ; F914 55 55                    UU
        cmp     $55,x                           ; F916 D5 55                    .U
        .byte   $57                             ; F918 57                       W
        tax                                     ; F919 AA                       .
        lsr     a                               ; F91A 4A                       J
        .byte   $52                             ; F91B 52                       R
        and     #$95                            ; F91C 29 95                    ).
        sta     $A959                           ; F91E 8D 59 A9                 .Y.
        tax                                     ; F921 AA                       .
        .byte   $5A                             ; F922 5A                       Z
        .byte   $D7                             ; F923 D7                       .
        adc     $55,x                           ; F924 75 55                    uU
        sty     $52,x                           ; F926 94 52                    .R
        eor     $54,x                           ; F928 55 54                    UT
        tax                                     ; F92A AA                       .
        txs                                     ; F92B 9A                       .
        .byte   $D7                             ; F92C D7                       .
        lsr     $4555,x                         ; F92D 5E 55 45                 ^UE
        eor     #$55                            ; F930 49 55                    IU
        eor     $55,x                           ; F932 55 55                    UU
        .byte   $6B                             ; F934 6B                       k
        eor     $2A,x                           ; F935 55 2A                    U*
        .byte   $89                             ; F937 89                       .
        bit     $E6AB                           ; F938 2C AB E6                 ,..
        .byte   $5C                             ; F93B 5C                       \
        ldx     $59                             ; F93C A6 59                    .Y
        eor     $55,x                           ; F93E 55 55                    UU
        eor     $69,x                           ; F940 55 69                    Ui
        eor     $55,x                           ; F942 55 55                    UU
        and     $53,x                           ; F944 35 53                    5S
        eor     $55,x                           ; F946 55 55                    UU
        .byte   $D5                             ; F948 D5                       .
LF949:  ror     $95,x                           ; F949 76 95                    v.
        tax                                     ; F94B AA                       .
        tax                                     ; F94C AA                       .
        tax                                     ; F94D AA                       .
        .byte   $52                             ; F94E 52                       R
        and     #$15                            ; F94F 29 15                    ).
        .byte   $89                             ; F951 89                       .
        plp                                     ; F952 28                       (
        .byte   $52                             ; F953 52                       R
        adc     #$DD                            ; F954 69 DD                    i.
        .byte   $EF                             ; F956 EF                       .
        .byte   $7B                             ; F957 7B                       {
        eor     $55,x                           ; F958 55 55                    UU
        eor     $55,x                           ; F95A 55 55                    UU
        eor     $95,x                           ; F95C 55 95                    U.
        tax                                     ; F95E AA                       .
        tax                                     ; F95F AA                       .
        tax                                     ; F960 AA                       .
        bit     $51                             ; F961 24 51                    $Q
        lsr     a                               ; F963 4A                       J
        .byte   $B3                             ; F964 B3                       .
        cmp     $6599                           ; F965 CD 99 65                 ..e
        .byte   $D2                             ; F968 D2                       .
        ldy     $AA                             ; F969 A4 AA                    ..
        lda     $D555,y                         ; F96B B9 55 D5                 .U.
        .byte   $72                             ; F96E 72                       r
        jmp     L5555                           ; F96F 4C 55 55                 LUU

; ----------------------------------------------------------------------------
        eor     $55,x                           ; F972 55 55                    UU
        eor     $55,x                           ; F974 55 55                    UU
        eor     $ED,x                           ; F976 55 ED                    U.
        .byte   $5C                             ; F978 5C                       \
        tax                                     ; F979 AA                       .
        lsr     a                               ; F97A 4A                       J
        lda     #$54                            ; F97B A9 54                    .T
        and     $49                             ; F97D 25 49                    %I
        .byte   $CB                             ; F97F CB                       .
        .byte   $5A                             ; F980 5A                       Z
        .byte   $67                             ; F981 67                       g
        .byte   $53                             ; F982 53                       S
        eor     $A4,x                           ; F983 55 A4                    U.
        tax                                     ; F985 AA                       .
        tax                                     ; F986 AA                       .
        adc     $75,x                           ; F987 75 75                    uu
        eor     $3155,x                         ; F989 5D 55 31                 ]U1
        .byte   $52                             ; F98C 52                       R
        eor     $55,x                           ; F98D 55 55                    UU
        lda     $54A6                           ; F98F AD A6 54                 ..T
        eor     $55,x                           ; F992 55 55                    UU
        sta     $5D34,y                         ; F994 99 34 5D                 .4]
        eor     $D5,x                           ; F997 55 D5                    U.
        and     #$15                            ; F999 29 15                    ).
        .byte   $A3                             ; F99B A3                       .
        tax                                     ; F99C AA                       .
        lda     $55,x                           ; F99D B5 55                    .U
        eor     $CB,x                           ; F99F 55 CB                    U.
        lda     $5A,x                           ; F9A1 B5 5A                    .Z
        lda     #$6A                            ; F9A3 A9 6A                    .j
        bvc     LF949                           ; F9A5 50 A2                    P.
        txa                                     ; F9A7 8A                       .
        .byte   $64                             ; F9A8 64                       d
        dec     $EE,x                           ; F9A9 D6 EE                    ..
        ldx     $5D,y                           ; F9AB B6 5D                    .]
        eor     $55,x                           ; F9AD 55 55                    UU
        eor     $AA,x                           ; F9AF 55 AA                    U.
        tax                                     ; F9B1 AA                       .
        tax                                     ; F9B2 AA                       .
        sty     $4A,x                           ; F9B3 94 4A                    .J
        ora     $11,x                           ; F9B5 15 11                    ..
        lda     ($AA),y                         ; F9B7 B1 AA                    ..
        ldx     $B5B7                           ; F9B9 AE B7 B5                 ...
        .byte   $54                             ; F9BC 54                       T
        eor     $55,x                           ; F9BD 55 55                    UU
        lda     $5AB6                           ; F9BF AD B6 5A                 ..Z
        eor     $29,x                           ; F9C2 55 29                    U)
        and     #$55                            ; F9C4 29 55                    )U
        adc     $CC                             ; F9C6 65 CC                    e.
        ror     a                               ; F9C8 6A                       j
        eor     $55,x                           ; F9C9 55 55                    UU
        .byte   $EB                             ; F9CB EB                       .
        .byte   $54                             ; F9CC 54                       T
        lsr     a                               ; F9CD 4A                       J
        eor     $29,x                           ; F9CE 55 29                    U)
        sta     $2C,x                           ; F9D0 95 2C                    .,
        and     $AB                             ; F9D2 25 AB                    %.
        adc     $5B,x                           ; F9D4 75 5B                    u[
        adc     $2529,x                         ; F9D6 7D 29 25                 })%
        eor     $55,x                           ; F9D9 55 55                    UU
        cmp     $39,x                           ; F9DB D5 39                    .9
        .byte   $57                             ; F9DD 57                       W
        lda     #$AA                            ; F9DE A9 AA                    ..
        bit     $55                             ; F9E0 24 55                    $U
        eor     $55,x                           ; F9E2 55 55                    UU
        .byte   $B3                             ; F9E4 B3                       .
        .byte   $52                             ; F9E5 52                       R
        .byte   $92                             ; F9E6 92                       .
        dex                                     ; F9E7 CA                       .
        tay                                     ; F9E8 A8                       .
        sty     $AD,x                           ; F9E9 94 AD                    ..
        adc     $5D,x                           ; F9EB 75 5D                    u]
        cmp     $5449,x                         ; F9ED DD 49 54                 .IT
        eor     $55,x                           ; F9F0 55 55                    UU
        .byte   $B7                             ; F9F2 B7                       .
        lsr     $55,x                           ; F9F3 56 55                    VU
        lda     #$AA                            ; F9F5 A9 AA                    ..
        tax                                     ; F9F7 AA                       .
        rol     a                               ; F9F8 2A                       *
        eor     ($51),y                         ; F9F9 51 51                    QQ
        lsr     a                               ; F9FB 4A                       J
        and     $B3                             ; F9FC 25 B3                    %.
        nop                                     ; F9FE EA                       .
        .byte   $54                             ; F9FF 54                       T
        .byte   $6F                             ; FA00 6F                       o
        eor     $55,x                           ; FA01 55 55                    UU
        eor     $35,x                           ; FA03 55 35                    U5
        .byte   $5B                             ; FA05 5B                       [
        lda     L9555                           ; FA06 AD 55 95                 .U.
        lsr     a                               ; FA09 4A                       J
        eor     #$A2                            ; FA0A 49 A2                    I.
        ldy     $DDAA                           ; FA0C AC AA DD                 ...
        .byte   $5C                             ; FA0F 5C                       \
        lsr     a                               ; FA10 4A                       J
        eor     $55,x                           ; FA11 55 55                    UU
        eor     $75,x                           ; FA13 55 75                    Uu
        dec     $A9,x                           ; FA15 D6 A9                    ..
        lsr     a                               ; FA17 4A                       J
        eor     $52                             ; FA18 45 52                    ER
        .byte   $62                             ; FA1A 62                       b
        .byte   $52                             ; FA1B 52                       R
        ldx     $6D,y                           ; FA1C B6 6D                    .m
        adc     $75,x                           ; FA1E 75 75                    uu
        .byte   $57                             ; FA20 57                       W
        eor     $55,x                           ; FA21 55 55                    UU
        ora     $A5,x                           ; FA23 15 A5                    ..
        .byte   $54                             ; FA25 54                       T
        sta     $A4,x                           ; FA26 95 A4                    ..
        tax                                     ; FA28 AA                       .
        nop                                     ; FA29 EA                       .
        dec     $99,x                           ; FA2A D6 99                    ..
        .byte   $52                             ; FA2C 52                       R
        eor     $55,x                           ; FA2D 55 55                    UU
        cmp     $99,x                           ; FA2F D5 99                    ..
        lda     $52                             ; FA31 A5 52                    .R
        eor     $55,x                           ; FA33 55 55                    UU
        sta     ($CA),y                         ; FA35 91 CA                    ..
        inc     $5A                             ; FA37 E6 5A                    .Z
        .byte   $5B                             ; FA39 5B                       [
        .byte   $52                             ; FA3A 52                       R
        eor     $45,x                           ; FA3B 55 45                    UE
        lda     $D6                             ; FA3D A5 D6                    ..
        ror     a                               ; FA3F 6A                       j
        adc     $156D                           ; FA40 6D 6D 15                 mm.
        and     #$55                            ; FA43 29 55                    )U
        eor     $D5,x                           ; FA45 55 D5                    U.
        ror     $2AAA                           ; FA47 6E AA 2A                 n.*
        sta     $4A,x                           ; FA4A 95 4A                    .J
        sta     $92,x                           ; FA4C 95 92                    ..
        bit     $A5                             ; FA4E 24 A5                    $.
        cmp     $B9B4,y                         ; FA50 D9 B4 B9                 ...
        lsr     $DB,x                           ; FA53 56 DB                    V.
        ldx     L5555                           ; FA55 AE 55 55                 .UU
        eor     $55,x                           ; FA58 55 55                    UU
        lda     $AA                             ; FA5A A5 AA                    ..
        tax                                     ; FA5C AA                       .
        lsr     a                               ; FA5D 4A                       J
        lsr     a                               ; FA5E 4A                       J
        eor     #$CA                            ; FA5F 49 CA                    I.
        ldy     $76,x                           ; FA61 B4 76                    .v
        eor     $45,x                           ; FA63 55 45                    UE
        lda     ($AA),y                         ; FA65 B1 AA                    ..
        tax                                     ; FA67 AA                       .
        .byte   $5A                             ; FA68 5A                       Z
        .byte   $67                             ; FA69 67                       g
        .byte   $DB                             ; FA6A DB                       .
        ror     a                               ; FA6B 6A                       j
        eor     $89,x                           ; FA6C 55 89                    U.
        bit     $A3                             ; FA6E 24 A3                    $.
        ror     a                               ; FA70 6A                       j
        .byte   $6B                             ; FA71 6B                       k
        lda     $35,x                           ; FA72 B5 35                    .5
        .byte   $57                             ; FA74 57                       W
        sta     $AA,x                           ; FA75 95 AA                    ..
        tax                                     ; FA77 AA                       .
        .byte   $52                             ; FA78 52                       R
        eor     #$55                            ; FA79 49 55                    IU
        and     #$91                            ; FA7B 29 91                    ).
        .byte   $34                             ; FA7D 34                       4
        cmp     $A975                           ; FA7E CD 75 A9                 .u.
        tax                                     ; FA81 AA                       .
        .byte   $5A                             ; FA82 5A                       Z
        .byte   $57                             ; FA83 57                       W
        .byte   $DB                             ; FA84 DB                       .
        eor     $55,x                           ; FA85 55 55                    UU
        eor     $95,x                           ; FA87 55 95                    U.
        .byte   $52                             ; FA89 52                       R
        .byte   $52                             ; FA8A 52                       R
        eor     $55,x                           ; FA8B 55 55                    UU
        cmp     $552A                           ; FA8D CD 2A 55                 .*U
        lsr     a                               ; FA90 4A                       J
        tax                                     ; FA91 AA                       .
        tax                                     ; FA92 AA                       .
        .byte   $5A                             ; FA93 5A                       Z
        .byte   $77                             ; FA94 77                       w
        lda     $28,x                           ; FA95 B5 28                    .(
        eor     LAAA2                           ; FA97 4D A2 AA                 M..
        tax                                     ; FA9A AA                       .
        adc     $AB5D,y                         ; FA9B 79 5D AB                 y].
        eor     $55,x                           ; FA9E 55 55                    UU
        txs                                     ; FAA0 9A                       .
        plp                                     ; FAA1 28                       (
        sta     $52,x                           ; FAA2 95 52                    .R
        tax                                     ; FAA4 AA                       .
        eor     $AA55,y                         ; FAA5 59 55 AA                 YU.
        lda     $B6,x                           ; FAA8 B5 B6                    ..
        .byte   $5B                             ; FAAA 5B                       [
        eor     $55,x                           ; FAAB 55 55                    UU
        tax                                     ; FAAD AA                       .
        .byte   $52                             ; FAAE 52                       R
        lda     #$54                            ; FAAF A9 54                    .T
        lda     $A4                             ; FAB1 A5 A4                    ..
        .byte   $54                             ; FAB3 54                       T
        eor     #$79                            ; FAB4 49 79                    Iy
        .byte   $BB                             ; FAB6 BB                       .
        ldx     $66,y                           ; FAB7 B6 66                    .f
        bit     L5555                           ; FAB9 2C 55 55                 ,UU
        eor     $6B,x                           ; FABC 55 6B                    Uk
        and     $A957                           ; FABE 2D 57 A9                 -W.
        rol     a                               ; FAC1 2A                       *
        .byte   $91                             ; FAC2 91                       .
LFAC3:  plp                                     ; FAC3 28                       (
        .byte   $AB                             ; FAC4 AB                       .
        .byte   $DA                             ; FAC5 DA                       .
        dec     $99,x                           ; FAC6 D6 99                    ..
        .byte   $A3                             ; FAC8 A3                       .
        .byte   $52                             ; FAC9 52                       R
        eor     $55,x                           ; FACA 55 55                    UU
        eor     $AA,x                           ; FACC 55 AA                    U.
        .byte   $32                             ; FACE 32                       2
        .byte   $5B                             ; FACF 5B                       [
        rol     a                               ; FAD0 2A                       *
        lda     #$56                            ; FAD1 A9 56                    .V
        cmp     $56,x                           ; FAD3 D5 56                    .V
        eor     $55,x                           ; FAD5 55 55                    UU
        .byte   $6B                             ; FAD7 6B                       k
        lda     L5555                           ; FAD8 AD 55 55                 .UU
        tax                                     ; FADB AA                       .
        tax                                     ; FADC AA                       .
        tax                                     ; FADD AA                       .
        ldy     $54                             ; FADE A4 54                    .T
        sta     $AA,x                           ; FAE0 95 AA                    ..
        lda     #$24                            ; FAE2 A9 24                    .$
        eor     ($AA),y                         ; FAE4 51 AA                    Q.
        tax                                     ; FAE6 AA                       .
        adc     $7B7B                           ; FAE7 6D 7B 7B                 m{{
        eor     $55,x                           ; FAEA 55 55                    UU
        eor     #$52                            ; FAEC 49 52                    IR
        eor     $55,x                           ; FAEE 55 55                    UU
        .byte   $B7                             ; FAF0 B7                       .
        eor     $AA,x                           ; FAF1 55 AA                    U.
        tax                                     ; FAF3 AA                       .
        lsr     a                               ; FAF4 4A                       J
        lsr     a                               ; FAF5 4A                       J
        eor     $29,x                           ; FAF6 55 29                    U)
        eor     $35,x                           ; FAF8 55 35                    U5
        .byte   $13                             ; FAFA 13                       .
        .byte   $89                             ; FAFB 89                       .
        eor     $76EB,y                         ; FAFC 59 EB 76                 Y.v
        eor     $AD,x                           ; FAFF 55 AD                    U.
        cmp     $6A,x                           ; FB01 D5 6A                    .j
        eor     $55,x                           ; FB03 55 55                    UU
        eor     ($52),y                         ; FB05 51 52                    QR
        eor     $15,x                           ; FB07 55 15                    U.
        sta     $6B,x                           ; FB09 95 6B                    .k
        eor     $D5,x                           ; FB0B 55 D5                    U.
        asl     $55,x                           ; FB0D 16 55                    .U
        eor     $55,x                           ; FB0F 55 55                    UU
        eor     $AD,x                           ; FB11 55 AD                    U.
        adc     #$4A                            ; FB13 69 4A                    iJ
        eor     $89,x                           ; FB15 55 89                    U.
        bcc     LFAC3                           ; FB17 90 AA                    ..
        .byte   $5A                             ; FB19 5A                       Z
        .byte   $DF                             ; FB1A DF                       .
        cmp     L5555,x                         ; FB1B DD 55 55                 .UU
        eor     $55,x                           ; FB1E 55 55                    UU
        lda     #$4A                            ; FB20 A9 4A                    .J
        and     #$55                            ; FB22 29 55                    )U
        sta     $A4,x                           ; FB24 95 A4                    ..
        rol     a                               ; FB26 2A                       *
        and     $EB,x                           ; FB27 35 EB                    5.
        eor     $55,x                           ; FB29 55 55                    UU
        .byte   $73                             ; FB2B 73                       s
        adc     $1A                             ; FB2C 65 1A                    e.
        eor     $55,x                           ; FB2E 55 55                    UU
        eor     $55,x                           ; FB30 55 55                    UU
        eor     $95,x                           ; FB32 55 95                    U.
        adc     $55                             ; FB34 65 55                    eU
        eor     $33,x                           ; FB36 55 33                    U3
        .byte   $89                             ; FB38 89                       .
        lda     #$AA                            ; FB39 A9 AA                    ..
        tax                                     ; FB3B AA                       .
        eor     $55BD,x                         ; FB3C 5D BD 55                 ].U
        eor     $25,x                           ; FB3F 55 25                    U%
        and     $55                             ; FB41 25 55                    %U
        eor     $D5,x                           ; FB43 55 D5                    U.
        ror     $29                             ; FB45 66 29                    f)
        eor     $25,x                           ; FB47 55 25                    U%
        lda     $B4                             ; FB49 A5 B4                    ..
        rol     a                               ; FB4B 2A                       *
        lda     $55B6                           ; FB4C AD B6 55                 ..U
        and     #$A9                            ; FB4F 29 A9                    ).
        dec     $5A,x                           ; FB51 D6 5A                    .Z
        .byte   $6F                             ; FB53 6F                       o
        eor     $55,x                           ; FB54 55 55                    UU
        eor     $A5,x                           ; FB56 55 A5                    U.
        tax                                     ; FB58 AA                       .
        sty     $52,x                           ; FB59 94 52                    .R
        eor     $55,x                           ; FB5B 55 55                    UU
        lda     #$CA                            ; FB5D A9 CA                    ..
        eor     ($59),y                         ; FB5F 51 59                    QY
        txs                                     ; FB61 9A                       .
        .byte   $63                             ; FB62 63                       c
        tax                                     ; FB63 AA                       .
        ror     a                               ; FB64 6A                       j
        lda     $56,x                           ; FB65 B5 56                    .V
        .byte   $B7                             ; FB67 B7                       .
        lsr     $55,x                           ; FB68 56 55                    VU
        sty     $94,x                           ; FB6A 94 94                    ..
        tay                                     ; FB6C A8                       .
        tax                                     ; FB6D AA                       .
        inc     $EE                             ; FB6E E6 EE                    ..
        eor     $55,x                           ; FB70 55 55                    UU
        lda     #$AA                            ; FB72 A9 AA                    ..
        tax                                     ; FB74 AA                       .
        tax                                     ; FB75 AA                       .
        sty     $52,x                           ; FB76 94 52                    .R
        eor     ($91),y                         ; FB78 51 91                    Q.
        plp                                     ; FB7A 28                       (
        lda     #$EA                            ; FB7B A9 EA                    ..
        inc     $B5D6                           ; FB7D EE D6 B5                 ...
        ror     L5555                           ; FB80 6E 55 55                 nUU
        eor     $55,x                           ; FB83 55 55                    UU
        sta     $AA,x                           ; FB85 95 AA                    ..
        lsr     a                               ; FB87 4A                       J
        .byte   $52                             ; FB88 52                       R
        eor     $55,x                           ; FB89 55 55                    UU
        eor     $45,x                           ; FB8B 55 45                    UE
        lda     ($AC),y                         ; FB8D B1 AC                    ..
        ror     a                               ; FB8F 6A                       j
        ldx     $B2D6                           ; FB90 AE D6 B2                 ...
        .byte   $54                             ; FB93 54                       T
        eor     $95,x                           ; FB94 55 95                    U.
        ldx     #$DA                            ; FB96 A2 DA                    ..
        ror     a                               ; FB98 6A                       j
        eor     $555B,x                         ; FB99 5D 5B 55                 ][U
        and     #$52                            ; FB9C 29 52                    )R
        eor     $55,x                           ; FB9E 55 55                    UU
        eor     $55,x                           ; FBA0 55 55                    UU
        .byte   $53                             ; FBA2 53                       S
        sta     $A4,x                           ; FBA3 95 A4                    ..
        ror     a                               ; FBA5 6A                       j
        lda     $5BB6                           ; FBA6 AD B6 5B                 ..[
        adc     $8C                             ; FBA9 65 8C                    e.
        lsr     a                               ; FBAB 4A                       J
        eor     $49,x                           ; FBAC 55 49                    UI
        lda     #$AA                            ; FBAE A9 AA                    ..
        ldx     $6B                             ; FBB0 A6 6B                    .k
        cmp     $54,x                           ; FBB2 D5 54                    .T
        eor     $55,x                           ; FBB4 55 55                    UU
        .byte   $2B                             ; FBB6 2B                       +
        .byte   $4B                             ; FBB7 4B                       K
        eor     $55,x                           ; FBB8 55 55                    UU
        cmp     $9C,x                           ; FBBA D5 9C                    ..
        dec     $29,x                           ; FBBC D6 29                    .)
        lda     $54                             ; FBBE A5 54                    .T
        .byte   $92                             ; FBC0 92                       .
        dex                                     ; FBC1 CA                       .
        ldx     $6C,y                           ; FBC2 B6 6C                    .l
        eor     L5555                           ; FBC4 4D 55 55                 MUU
        eor     $55,x                           ; FBC7 55 55                    UU
        eor     $97,x                           ; FBC9 55 97                    U.
        .byte   $72                             ; FBCB 72                       r
        .byte   $54                             ; FBCC 54                       T
        eor     $05,x                           ; FBCD 55 05                    U.
        and     #$B9                            ; FBCF 29 B9                    ).
        ldx     $DB,y                           ; FBD1 B6 DB                    ..
        .byte   $5A                             ; FBD3 5A                       Z
        .byte   $5B                             ; FBD4 5B                       [
        eor     $55,x                           ; FBD5 55 55                    UU
        sta     $AA,x                           ; FBD7 95 AA                    ..
        tax                                     ; FBD9 AA                       .
        tax                                     ; FBDA AA                       .
        tax                                     ; FBDB AA                       .
        pha                                     ; FBDC 48                       H
        .byte   $92                             ; FBDD 92                       .
        lsr     a                               ; FBDE 4A                       J
        adc     $CA                             ; FBDF 65 CA                    e.
        tya                                     ; FBE1 98                       .
        .byte   $5A                             ; FBE2 5A                       Z
        adc     $ABD7                           ; FBE3 6D D7 AB                 m..
        lda     $5556                           ; FBE6 AD 56 55                 .VU
        eor     $89,x                           ; FBE9 55 89                    U.
        .byte   $54                             ; FBEB 54                       T
        eor     $55,x                           ; FBEC 55 55                    UU
        .byte   $3B                             ; FBEE 3B                       ;
        .byte   $AB                             ; FBEF AB                       .
        .byte   $52                             ; FBF0 52                       R
        .byte   $52                             ; FBF1 52                       R
        eor     $55,x                           ; FBF2 55 55                    UU
        eor     $55,x                           ; FBF4 55 55                    UU
        and     $AA                             ; FBF6 25 AA                    %.
        plp                                     ; FBF8 28                       (
        lda     #$56                            ; FBF9 A9 56                    .V
        .byte   $EB                             ; FBFB EB                       .
        dec     $55AE,x                         ; FBFC DE AE 55                 ..U
        eor     $55,x                           ; FBFF 55 55                    UU
        sty     $54,x                           ; FC01 94 54                    .T
        eor     $55,x                           ; FC03 55 55                    UU
        cmp     $66,x                           ; FC05 D5 66                    .f
        .byte   $52                             ; FC07 52                       R
        eor     $55,x                           ; FC08 55 55                    UU
        eor     $4D,x                           ; FC0A 55 4D                    UM
        eor     $55,x                           ; FC0C 55 55                    UU
        lda     $AA                             ; FC0E A5 AA                    ..
        ror     a                               ; FC10 6A                       j
        .byte   $5A                             ; FC11 5A                       Z
        .byte   $32                             ; FC12 32                       2
        tax                                     ; FC13 AA                       .
        .byte   $52                             ; FC14 52                       R
        ldx     $5E                             ; FC15 A6 5E                    .^
        .byte   $57                             ; FC17 57                       W
        .byte   $DB                             ; FC18 DB                       .
        lsr     $55,x                           ; FC19 56 55                    VU
        eor     $55,x                           ; FC1B 55 55                    UU
        tax                                     ; FC1D AA                       .
        tax                                     ; FC1E AA                       .
        .byte   $52                             ; FC1F 52                       R
        lsr     a                               ; FC20 4A                       J
        eor     $45,x                           ; FC21 55 45                    UE
        .byte   $44                             ; FC23 44                       D
        ldy     LF3CD                           ; FC24 AC CD F3                 ...
        sta     $4955,x                         ; FC27 9D 55 49                 .UI
        eor     $55,x                           ; FC2A 55 55                    UU
        eor     $55,x                           ; FC2C 55 55                    UU
        adc     $BA,x                           ; FC2E 75 BA                    u.
        .byte   $1A                             ; FC30 1A                       .
        eor     #$55                            ; FC31 49 55                    IU
        lda     $62                             ; FC33 A5 62                    .b
        stx     $AA,y                           ; FC35 96 AA                    ..
        ror     a                               ; FC37 6A                       j
        .byte   $6B                             ; FC38 6B                       k
        cmp     $9A,x                           ; FC39 D5 9A                    ..
        .byte   $6B                             ; FC3B 6B                       k
        eor     $A9,x                           ; FC3C 55 A9                    U.
        rol     a                               ; FC3E 2A                       *
        and     #$55                            ; FC3F 29 55                    )U
        lsr     a                               ; FC41 4A                       J
        cmp     $6A,x                           ; FC42 D5 6A                    .j
        ora     $AAA9,y                         ; FC44 19 A9 AA                 ...
        .byte   $DA                             ; FC47 DA                       .
        jmp     (L14DD)                         ; FC48 6C DD 14                 l..

; ----------------------------------------------------------------------------
        eor     $55,x                           ; FC4B 55 55                    UU
        rol     $A9                             ; FC4D 26 A9                    &.
        lda     $D6,x                           ; FC4F B5 D6                    ..
        lda     $55,x                           ; FC51 B5 55                    .U
        eor     $69,x                           ; FC53 55 69                    Ui
        ldy     $54                             ; FC55 A4 54                    .T
        eor     $55,x                           ; FC57 55 55                    UU
        and     $6B,x                           ; FC59 35 6B                    5k
        ldy     $C8                             ; FC5B A4 C8                    ..
        dex                                     ; FC5D CA                       .
        .byte   $B2                             ; FC5E B2                       .
        .byte   $DA                             ; FC5F DA                       .
        sty     $AB,x                           ; FC60 94 AB                    ..
        eor     $55,x                           ; FC62 55 55                    UU
        .byte   $6B                             ; FC64 6B                       k
        sta     $5519                           ; FC65 8D 19 55                 ..U
        eor     $C9,x                           ; FC68 55 C9                    U.
        ldy     L5555                           ; FC6A AC 55 55                 .UU
        .byte   $B7                             ; FC6D B7                       .
        lsr     $A9,x                           ; FC6E 56 A9                    V.
        tax                                     ; FC70 AA                       .
        tax                                     ; FC71 AA                       .
        tax                                     ; FC72 AA                       .
        .byte   $14                             ; FC73 14                       .
        sta     $24,x                           ; FC74 95 24                    .$
        adc     $84                             ; FC76 65 84                    e.
        tay                                     ; FC78 A8                       .
        ror     $7FBB                           ; FC79 6E BB 7F                 n..
        .byte   $57                             ; FC7C 57                       W
        eor     $55,x                           ; FC7D 55 55                    UU
        eor     $55,x                           ; FC7F 55 55                    UU
        eor     $A9,x                           ; FC81 55 A9                    U.
        tax                                     ; FC83 AA                       .
        tax                                     ; FC84 AA                       .
        .byte   $92                             ; FC85 92                       .
        .byte   $52                             ; FC86 52                       R
        and     #$A5                            ; FC87 29 A5                    ).
        cpy     $ACA6                           ; FC89 CC A6 AC                 ...
        lda     $CD94,y                         ; FC8C B9 94 CD                 ...
        ror     a                               ; FC8F 6A                       j
        eor     $55,x                           ; FC90 55 55                    UU
        and     $4D,x                           ; FC92 35 4D                    5M
        .byte   $53                             ; FC94 53                       S
        eor     $55,x                           ; FC95 55 55                    UU
        .byte   $DB                             ; FC97 DB                       .
        sty     $54,x                           ; FC98 94 54                    .T
        eor     $55,x                           ; FC9A 55 55                    UU
        cmp     $D6,x                           ; FC9C D5 D6                    ..
        .byte   $52                             ; FC9E 52                       R
        .byte   $52                             ; FC9F 52                       R
        eor     $95,x                           ; FCA0 55 95                    U.
        sty     $9A,x                           ; FCA2 94 9A                    ..
        adc     $35,x                           ; FCA4 75 35                    u5
        .byte   $2B                             ; FCA6 2B                       +
        eor     $55,x                           ; FCA7 55 55                    UU
        and     ($A6),y                         ; FCA9 31 A6                    1.
        ror     a                               ; FCAB 6A                       j
        lda     $B6,x                           ; FCAC B5 B6                    ..
        .byte   $6B                             ; FCAE 6B                       k
        sta     $48,x                           ; FCAF 95 48                    .H
        eor     $55,x                           ; FCB1 55 55                    UU
        eor     $35,x                           ; FCB3 55 35                    U5
        eor     $55,x                           ; FCB5 55 55                    UU
        eor     $55,x                           ; FCB7 55 55                    UU
        cmp     $552C                           ; FCB9 CD 2C 55                 .,U
        eor     $55,x                           ; FCBC 55 55                    UU
        lda     $52                             ; FCBE A5 52                    .R
        lda     #$EA                            ; FCC0 A9 EA                    ..
        lsr     $55,x                           ; FCC2 56 55                    VU
        eor     $73,x                           ; FCC4 55 73                    Us
        lsr     $97,x                           ; FCC6 56 97                    V.
        .byte   $52                             ; FCC8 52                       R
        and     #$A5                            ; FCC9 29 A5                    ).
        ldy     $50                             ; FCCB A4 50                    .P
        adc     #$6D                            ; FCCD 69 6D                    im
        .byte   $77                             ; FCCF 77                       w
        .byte   $6F                             ; FCD0 6F                       o
        eor     $55,x                           ; FCD1 55 55                    UU
        eor     $A5,x                           ; FCD3 55 A5                    U.
        tax                                     ; FCD5 AA                       .
        tax                                     ; FCD6 AA                       .
        lsr     a                               ; FCD7 4A                       J
        lda     $52                             ; FCD8 A5 52                    .R
        eor     #$24                            ; FCDA 49 24                    I$
        lda     #$AA                            ; FCDC A9 AA                    ..
        lda     $5DB5,y                         ; FCDE B9 B5 5D                 ..]
        eor     $D5,x                           ; FCE1 55 D5                    U.
        .byte   $5A                             ; FCE3 5A                       Z
        lda     L5555                           ; FCE4 AD 55 55                 .UU
        sta     $94,x                           ; FCE7 95 94                    ..
        .byte   $54                             ; FCE9 54                       T
        eor     $55,x                           ; FCEA 55 55                    UU
        eor     $55,x                           ; FCEC 55 55                    UU
        eor     $55,x                           ; FCEE 55 55                    UU
        and     $AD,x                           ; FCF0 35 AD                    5.
        lsr     a                               ; FCF2 4A                       J
        eor     #$AA                            ; FCF3 49 AA                    I.
        ldy     $CC92                           ; FCF5 AC 92 CC                 ...
        inc     $5D                             ; FCF8 E6 5D                    .]
        .byte   $D7                             ; FCFA D7                       .
        lsr     $15,x                           ; FCFB 56 15                    V.
        ora     $5553,y                         ; FCFD 19 53 55                 .SU
        eor     $AD,x                           ; FD00 55 AD                    U.
        sta     $52AA,x                         ; FD02 9D AA 52                 ..R
        .byte   $52                             ; FD05 52                       R
        eor     $55,x                           ; FD06 55 55                    UU
        eor     $53,x                           ; FD08 55 53                    US
        rol     a                               ; FD0A 2A                       *
        sta     $C6B2                           ; FD0B 8D B2 C6                 ...
        jmp     L5AAB                           ; FD0E 4C AB 5A                 L.Z

; ----------------------------------------------------------------------------
        .byte   $6B                             ; FD11 6B                       k
        adc     $2A,x                           ; FD12 75 2A                    u*
        eor     $55,x                           ; FD14 55 55                    UU
        .byte   $5B                             ; FD16 5B                       [
        .byte   $5B                             ; FD17 5B                       [
        eor     $95,x                           ; FD18 55 95                    U.
        tax                                     ; FD1A AA                       .
        tax                                     ; FD1B AA                       .
        tax                                     ; FD1C AA                       .
        sty     $92,x                           ; FD1D 94 92                    ..
        ldy     $94                             ; FD1F A4 94                    ..
        .byte   $64                             ; FD21 64                       d
        .byte   $DA                             ; FD22 DA                       .
        adc     $559E,y                         ; FD23 79 9E 55                 y.U
        eor     $55,x                           ; FD26 55 55                    UU
        eor     $35,x                           ; FD28 55 35                    U5
        .byte   $97                             ; FD2A 97                       .
        .byte   $AB                             ; FD2B AB                       .
        eor     $A9,x                           ; FD2C 55 A9                    U.
        tax                                     ; FD2E AA                       .
        bcc     LFD59                           ; FD2F 90 28                    .(
        cmp     $D734                           ; FD31 CD 34 D7                 .4.
        .byte   $5A                             ; FD34 5A                       Z
        eor     $55,x                           ; FD35 55 55                    UU
        and     $EB,x                           ; FD37 35 EB                    5.
        .byte   $5A                             ; FD39 5A                       Z
        tax                                     ; FD3A AA                       .
        tax                                     ; FD3B AA                       .
        .byte   $52                             ; FD3C 52                       R
        .byte   $14                             ; FD3D 14                       .
        eor     #$33                            ; FD3E 49 33                    I3
        ror     $E6                             ; FD40 66 E6                    f.
        ror     a                               ; FD42 6A                       j
        lda     $6DB5                           ; FD43 AD B5 6D                 ..m
        eor     $31,x                           ; FD46 55 31                    U1
        eor     #$55                            ; FD48 49 55                    IU
        eor     $26,x                           ; FD4A 55 26                    U&
        adc     #$CD                            ; FD4C 69 CD                    i.
        lda     $6D,x                           ; FD4E B5 6D                    .m
        sta     $28,x                           ; FD50 95 28                    .(
        eor     $55,x                           ; FD52 55 55                    UU
        eor     $D5,x                           ; FD54 55 D5                    U.
        ldy     $5554                           ; FD56 AC 54 55                 .TU
LFD59:  eor     $B2                             ; FD59 45 B2                    E.
        tax                                     ; FD5B AA                       .
        lsr     $9B,x                           ; FD5C 56 9B                    V.
        .byte   $53                             ; FD5E 53                       S
        eor     $55,x                           ; FD5F 55 55                    UU
        eor     $9A,x                           ; FD61 55 9A                    U.
        lsr     $55,x                           ; FD63 56 55                    VU
        eor     $37,x                           ; FD65 55 37                    U7
        .byte   $8B                             ; FD67 8B                       .
        .byte   $54                             ; FD68 54                       T
        eor     $55,x                           ; FD69 55 55                    UU
        .byte   $BB                             ; FD6B BB                       .
        lda     #$AA                            ; FD6C A9 AA                    ..
        lsr     a                               ; FD6E 4A                       J
        lda     $54                             ; FD6F A5 54                    .T
        sta     $28,x                           ; FD71 95 28                    .(
        ldx     #$AA                            ; FD73 A2 AA                    ..
        lda     ($9C),y                         ; FD75 B1 9C                    ..
        .byte   $77                             ; FD77 77                       w
        .byte   $D7                             ; FD78 D7                       .
        dec     $56,x                           ; FD79 D6 56                    .V
        eor     $55,x                           ; FD7B 55 55                    UU
        eor     $55,x                           ; FD7D 55 55                    UU
        tax                                     ; FD7F AA                       .
        tax                                     ; FD80 AA                       .
        tax                                     ; FD81 AA                       .
        tax                                     ; FD82 AA                       .
        .byte   $44                             ; FD83 44                       D
        eor     ($55,x)                         ; FD84 41 55                    AU
        sta     $CE67                           ; FD86 8D 67 CE                 .g.
        .byte   $92                             ; FD89 92                       .
        tax                                     ; FD8A AA                       .
        tax                                     ; FD8B AA                       .
        ldx     $5A,y                           ; FD8C B6 5A                    .Z
        .byte   $6B                             ; FD8E 6B                       k
        lda     $5A,x                           ; FD8F B5 5A                    .Z
        and     $26                             ; FD91 25 26                    %&
        eor     $91,x                           ; FD93 55 91                    U.
        lda     $55,x                           ; FD95 B5 55                    .U
        eor     $AB,x                           ; FD97 55 AB                    U.
        .byte   $5B                             ; FD99 5B                       [
        lda     #$AA                            ; FD9A A9 AA                    ..
        ldy     $52                             ; FD9C A4 52                    .R
        eor     $95,x                           ; FD9E 55 95                    U.
        bit     $56                             ; FDA0 24 56                    $V
        eor     $BB,x                           ; FDA2 55 BB                    U.
        lsr     $4C,x                           ; FDA4 56 4C                    VL
        tax                                     ; FDA6 AA                       .
        dec     $6A,x                           ; FDA7 D6 6A                    .j
        sbc     $5556                           ; FDA9 ED 56 55                 .VU
        eor     $29,x                           ; FDAC 55 29                    U)
        eor     #$55                            ; FDAE 49 55                    IU
        eor     $55,x                           ; FDB0 55 55                    UU
        eor     $55,x                           ; FDB2 55 55                    UU
        eor     $25,x                           ; FDB4 55 25                    U%
        eor     $B3,x                           ; FDB6 55 B3                    U.
        lsr     $B5,x                           ; FDB8 56 B5                    V.
        .byte   $34                             ; FDBA 34                       4
        .byte   $4B                             ; FDBB 4B                       K
        .byte   $89                             ; FDBC 89                       .
        tax                                     ; FDBD AA                       .
        tax                                     ; FDBE AA                       .
        .byte   $DA                             ; FDBF DA                       .
        eor     L0000,x                         ; FDC0 55 00                    U.
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
        dec     LFFFF,x                         ; FE00 DE FF FF                 ...
        .byte   $FF                             ; FE03 FF                       .
        .byte   $FF                             ; FE04 FF                       .
        .byte   $FF                             ; FE05 FF                       .
        .byte   $FF                             ; FE06 FF                       .
        .byte   $7F                             ; FE07 7F                       .
        brk                                     ; FE08 00                       .
        brk                                     ; FE09 00                       .
        ldy     #$5A                            ; FE0A A0 5A                    .Z
        sbc     $7F9B                           ; FE0C ED 9B 7F                 ...
        .byte   $FF                             ; FE0F FF                       .
        .byte   $FF                             ; FE10 FF                       .
        .byte   $FF                             ; FE11 FF                       .
        .byte   $FF                             ; FE12 FF                       .
        .byte   $FF                             ; FE13 FF                       .
        .byte   $FF                             ; FE14 FF                       .
        .byte   $FF                             ; FE15 FF                       .
        .byte   $FF                             ; FE16 FF                       .
        .byte   $FF                             ; FE17 FF                       .
        .byte   $FF                             ; FE18 FF                       .
        .byte   $FF                             ; FE19 FF                       .
        .byte   $1F                             ; FE1A 1F                       .
        brk                                     ; FE1B 00                       .
        brk                                     ; FE1C 00                       .
        brk                                     ; FE1D 00                       .
        dey                                     ; FE1E 88                       .
        .byte   $42                             ; FE1F 42                       B
        lda     $BFDB                           ; FE20 AD DB BF                 ...
        .byte   $FF                             ; FE23 FF                       .
        .byte   $FF                             ; FE24 FF                       .
        .byte   $FF                             ; FE25 FF                       .
        .byte   $FF                             ; FE26 FF                       .
        .byte   $FF                             ; FE27 FF                       .
        .byte   $FF                             ; FE28 FF                       .
        .byte   $FF                             ; FE29 FF                       .
        .byte   $FF                             ; FE2A FF                       .
        .byte   $FF                             ; FE2B FF                       .
        .byte   $FF                             ; FE2C FF                       .
        .byte   $FF                             ; FE2D FF                       .
        .byte   $04                             ; FE2E 04                       .
        rti                                     ; FE2F 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; FE30 00                       .
        brk                                     ; FE31 00                       .
        brk                                     ; FE32 00                       .
        jsr     LDF59                           ; FE33 20 59 DF                  Y.
        .byte   $BF                             ; FE36 BF                       .
        .byte   $FF                             ; FE37 FF                       .
        sbc     $DDBD,x                         ; FE38 FD BD DD                 ...
        .byte   $BB                             ; FE3B BB                       .
        .byte   $DB                             ; FE3C DB                       .
        .byte   $FF                             ; FE3D FF                       .
        .byte   $FF                             ; FE3E FF                       .
        .byte   $FF                             ; FE3F FF                       .
        .byte   $3F                             ; FE40 3F                       ?
        eor     $29,x                           ; FE41 55 29                    U)
        adc     $0249                           ; FE43 6D 49 02                 mI.
        brk                                     ; FE46 00                       .
        .byte   $02                             ; FE47 02                       .
        ora     ($42,x)                         ; FE48 01 42                    .B
        .byte   $80                             ; FE4A 80                       .
        bit     $18                             ; FE4B 24 18                    $.
        .byte   $B2                             ; FE4D B2                       .
        sbc     LFFFE,y                         ; FE4E F9 FE FF                 ...
        .byte   $DF                             ; FE51 DF                       .
        .byte   $7F                             ; FE52 7F                       .
        .byte   $F7                             ; FE53 F7                       .
        .byte   $EF                             ; FE54 EF                       .
        adc     $AAB6                           ; FE55 6D B6 AA                 m..
        .byte   $12                             ; FE58 12                       .
        eor     ($94,x)                         ; FE59 41 94                    A.
        sty     $2C,x                           ; FE5B 94 2C                    .,
        and     ($84,x)                         ; FE5D 21 84                    !.
        rti                                     ; FE5F 40                       @

; ----------------------------------------------------------------------------
        lsr     a                               ; FE60 4A                       J
        .byte   $12                             ; FE61 12                       .
        .byte   $B3                             ; FE62 B3                       .
        sta     $AA6B,x                         ; FE63 9D 6B AA                 .k.
        ldy     $AA                             ; FE66 A4 AA                    ..
        .byte   $DA                             ; FE68 DA                       .
        ror     $4EE9                           ; FE69 6E E9 4E                 n.N
        .byte   $D7                             ; FE6C D7                       .
        .byte   $5A                             ; FE6D 5A                       Z
        .byte   $6B                             ; FE6E 6B                       k
        .byte   $22                             ; FE6F 22                       "
        lda     #$51                            ; FE70 A9 51                    .Q
        tax                                     ; FE72 AA                       .
        ldy     $BB3D,x                         ; FE73 BC 3D BB                 .=.
        .byte   $E7                             ; FE76 E7                       .
        cpx     $CA                             ; FE77 E4 CA                    ..
        tax                                     ; FE79 AA                       .
        tax                                     ; FE7A AA                       .
        cmp     $56A9,y                         ; FE7B D9 A9 56                 ..V
        .byte   $22                             ; FE7E 22                       "
        brk                                     ; FE7F 00                       .
        eor     #$22                            ; FE80 49 22                    I"
        adc     $0892                           ; FE82 6D 92 08                 m..
        bit     $42                             ; FE85 24 42                    $B
        lsr     a                               ; FE87 4A                       J
        lda     $D5B4                           ; FE88 AD B4 D5                 ...
        ldy     $C9                             ; FE8B A4 C9                    ..
        .byte   $5A                             ; FE8D 5A                       Z
        .byte   $67                             ; FE8E 67                       g
        eor     $56F3,x                         ; FE8F 5D F3 56                 ].V
        .byte   $7B                             ; FE92 7B                       {
        .byte   $9F                             ; FE93 9F                       .
        .byte   $EF                             ; FE94 EF                       .
        .byte   $5A                             ; FE95 5A                       Z
        .byte   $62                             ; FE96 62                       b
        sty     $5AA5                           ; FE97 8C A5 5A                 ..Z
        sbc     $7AFB                           ; FE9A ED FB 7A                 ..z
        ror     a                               ; FE9D 6A                       j
        and     $23                             ; FE9E 25 23                    %#
        .byte   $B3                             ; FEA0 B3                       .
        tax                                     ; FEA1 AA                       .
        .byte   $DA                             ; FEA2 DA                       .
        cmp     $44,x                           ; FEA3 D5 44                    .D
        rts                                     ; FEA5 60                       `

; ----------------------------------------------------------------------------
        .byte   $92                             ; FEA6 92                       .
        ldx     $96,y                           ; FEA7 B6 96                    ..
        .byte   $22                             ; FEA9 22                       "
        lsr     $56                             ; FEAA 46 56                    FV
        sta     $292C,y                         ; FEAC 99 2C 29                 .,)
        lda     $04                             ; FEAF A5 04                    ..
        ora     #$62                            ; FEB1 09 62                    .b
        adc     #$E5                            ; FEB3 69 E5                    i.
        .byte   $B2                             ; FEB5 B2                       .
        txa                                     ; FEB6 8A                       .
        eor     $5D55,y                         ; FEB7 59 55 5D                 YU]
        eor     $4D,x                           ; FEBA 55 4D                    UM
        .byte   $1C                             ; FEBC 1C                       .
        .byte   $89                             ; FEBD 89                       .
        pha                                     ; FEBE 48                       H
        lda     $DFDE                           ; FEBF AD DE DF                 ...
        .byte   $FB                             ; FEC2 FB                       .
        .byte   $7A                             ; FEC3 7A                       z
        .byte   $6B                             ; FEC4 6B                       k
        cmp     $6A,x                           ; FEC5 D5 6A                    .j
        eor     $D5,x                           ; FEC7 55 D5                    U.
        ror     a                               ; FEC9 6A                       j
        lsr     a                               ; FECA 4A                       J
        lsr     $6B,x                           ; FECB 56 6B                    Vk
        lda     $A252,x                         ; FECD BD 52 A2                 .R.
        ldx     $EA                             ; FED0 A6 EA                    ..
        .byte   $DA                             ; FED2 DA                       .
        rol     $2933                           ; FED3 2E 33 29                 .3)
        .byte   $12                             ; FED6 12                       .
        sta     ($29),y                         ; FED7 91 29                    .)
        cmp     $5CBA,y                         ; FED9 D9 BA 5C                 ..\
        lda     #$94                            ; FEDC A9 94                    ..
        pha                                     ; FEDE 48                       H
        tax                                     ; FEDF AA                       .
        tax                                     ; FEE0 AA                       .
        .byte   $34                             ; FEE1 34                       4
        ror     $0A                             ; FEE2 66 0A                    f.
        lda     #$9A                            ; FEE4 A9 9A                    ..
        ror     $B7,x                           ; FEE6 76 B7                    v.
        .byte   $54                             ; FEE8 54                       T
        eor     ($A5),y                         ; FEE9 51 A5                    Q.
        lsr     a                               ; FEEB 4A                       J
        lda     #$24                            ; FEEC A9 24                    .$
        lsr     $65                             ; FEEE 46 65                    Fe
        .byte   $52                             ; FEF0 52                       R
        .byte   $BB                             ; FEF1 BB                       .
        .byte   $DF                             ; FEF2 DF                       .
        .byte   $EF                             ; FEF3 EF                       .
        jmp     L5A69                           ; FEF4 4C 69 5A                 LiZ

; ----------------------------------------------------------------------------
        eor     $D5,x                           ; FEF7 55 D5                    U.
        .byte   $DA                             ; FEF9 DA                       .
        .byte   $DA                             ; FEFA DA                       .
        tax                                     ; FEFB AA                       .
        ldy     $90                             ; FEFC A4 90                    ..
        and     #$6B                            ; FEFE 29 6B                    )k
        .byte   $5B                             ; FF00 5B                       [
        cmp     $51CE                           ; FF01 CD CE 51                 ..Q
        rol     a                               ; FF04 2A                       *
        lda     $AA                             ; FF05 A5 AA                    ..
        ldy     $8A                             ; FF07 A4 8A                    ..
        jmp     LBAB5                           ; FF09 4C B5 BA                 L..

; ----------------------------------------------------------------------------
        inc     $9496                           ; FF0C EE 96 94                 ...
        tax                                     ; FF0F AA                       .
        tax                                     ; FF10 AA                       .
        ror     a                               ; FF11 6A                       j
        .byte   $6B                             ; FF12 6B                       k
        ora     $AB,x                           ; FF13 15 AB                    ..
        .byte   $12                             ; FF15 12                       .
        lda     #$AA                            ; FF16 A9 AA                    ..
        ror     a                               ; FF18 6A                       j
        rol     $A9,x                           ; FF19 36 A9                    6.
        dey                                     ; FF1B 88                       .
        lsr     a                               ; FF1C 4A                       J
        eor     ($AC),y                         ; FF1D 51 AC                    Q.
        lda     $D6,x                           ; FF1F B5 D6                    ..
        lda     $B9,x                           ; FF21 B5 B9                    ..
        ldy     $DAAA                           ; FF23 AC AA DA                 ...
        lsr     $55,x                           ; FF26 56 55                    VU
        eor     $55,x                           ; FF28 55 55                    UU
        eor     $55,x                           ; FF2A 55 55                    UU
        and     $2A                             ; FF2C 25 2A                    %*
        .byte   $22                             ; FF2E 22                       "
        eor     #$D5                            ; FF2F 49 D5                    I.
        inc     $4AFB                           ; FF31 EE FB 4A                 ..J
        lda     #$AA                            ; FF34 A9 AA                    ..
        tax                                     ; FF36 AA                       .
        tax                                     ; FF37 AA                       .
        lda     $5A,x                           ; FF38 B5 5A                    .Z
        .byte   $AB                             ; FF3A AB                       .
        .byte   $12                             ; FF3B 12                       .
        eor     $B549,y                         ; FF3C 59 49 B5                 YI.
        eor     $7554,y                         ; FF3F 59 54 75                 YTu
        lda     $AA                             ; FF42 A5 AA                    ..
        adc     $AD                             ; FF44 65 AD                    e.
        tax                                     ; FF46 AA                       .
        ldx     #$A4                            ; FF47 A2 A4                    ..
        tax                                     ; FF49 AA                       .
        .byte   $52                             ; FF4A 52                       R
        cmp     $4A0C,y                         ; FF4B D9 0C 4A                 ..J
        rol     a                               ; FF4E 2A                       *
        eor     $5D,x                           ; FF4F 55 5D                    U]
        .byte   $B7                             ; FF51 B7                       .
        lda     #$4A                            ; FF52 A9 4A                    .J
        bit     $A5                             ; FF54 24 A5                    $.
        lsr     $BD,x                           ; FF56 56 BD                    V.
        .byte   $BB                             ; FF58 BB                       .
        tax                                     ; FF59 AA                       .
        eor     $55,x                           ; FF5A 55 55                    UU
        lda     $52                             ; FF5C A5 52                    .R
        lsr     $55,x                           ; FF5E 56 55                    VU
        lda     $58CC                           ; FF60 AD CC 58                 ..X
        tax                                     ; FF63 AA                       .
        ror     $2D                             ; FF64 66 2D                    f-
        and     #$AD                            ; FF66 29 AD                    ).
        ldx     $6A,y                           ; FF68 B6 6A                    .j
        lda     $28DD,x                         ; FF6A BD DD 28                 ..(
        ora     ($69),y                         ; FF6D 11 69                    .i
        txs                                     ; FF6F 9A                       .
        sbc     $AAEE                           ; FF70 ED EE AA                 ...
        tax                                     ; FF73 AA                       .
        tax                                     ; FF74 AA                       .
        .byte   $52                             ; FF75 52                       R
        sta     $A52A,y                         ; FF76 99 2A A5                 .*.
        .byte   $14                             ; FF79 14                       .
        asl     a                               ; FF7A 0A                       .
        lsr     $54                             ; FF7B 46 54                    FT
        .byte   $DB                             ; FF7D DB                       .
        ldx     $B2EA                           ; FF7E AE EA B2                 ...
        eor     $52AB,x                         ; FF81 5D AB 52                 ].R
        eor     $55,x                           ; FF84 55 55                    UU
        and     $A9                             ; FF86 25 A9                    %.
        tax                                     ; FF88 AA                       .
        tax                                     ; FF89 AA                       .
        cmp     $92,x                           ; FF8A D5 92                    ..
        .byte   $82                             ; FF8C 82                       .
        .byte   $52                             ; FF8D 52                       R
        eor     $59,x                           ; FF8E 55 59                    UY
        .byte   $EF                             ; FF90 EF                       .
        txs                                     ; FF91 9A                       .
        lsr     a                               ; FF92 4A                       J
        bit     $54                             ; FF93 24 54                    $T
        eor     $DB,x                           ; FF95 55 DB                    U.
        lda     $96AE                           ; FF97 AD AE 96                 ...
        ldx     $298A                           ; FF9A AE 8A 29                 ..)
        sta     $98,x                           ; FF9D 95 98                    ..
        .byte   $62                             ; FF9F 62                       b
        tax                                     ; FFA0 AA                       .
        lsr     $67,x                           ; FFA1 56 67                    Vg
        .byte   $DF                             ; FFA3 DF                       .
        eor     $55,x                           ; FFA4 55 55                    UU
        eor     $B3,x                           ; FFA6 55 B3                    U.
        tax                                     ; FFA8 AA                       .
        .byte   $52                             ; FFA9 52                       R
        rol     a                               ; FFAA 2A                       *
        lda     $08                             ; FFAB A5 08                    ..
        .byte   $B2                             ; FFAD B2                       .
        tax                                     ; FFAE AA                       .
        inc     $AAEB                           ; FFAF EE EB AA                 ...
        dex                                     ; FFB2 CA                       .
        tax                                     ; FFB3 AA                       .
        tax                                     ; FFB4 AA                       .
        ldx     $DA,y                           ; FFB5 B6 DA                    ..
        tax                                     ; FFB7 AA                       .
        txa                                     ; FFB8 8A                       .
        ldy     $5A                             ; FFB9 A4 5A                    .Z
        and     $6E                             ; FFBB 25 6E                    %n
        stx     $A6,y                           ; FFBD 96 A6                    ..
        ldy     $296D                           ; FFBF AC 6D 29                 .m)
        lda     $22                             ; FFC2 A5 22                    ."
        .byte   $93                             ; FFC4 93                       .
        plp                                     ; FFC5 28                       (
        eor     #$EB                            ; FFC6 49 EB                    I.
        .byte   $7A                             ; FFC8 7A                       z
        .byte   $77                             ; FFC9 77                       w
        eor     $29,x                           ; FFCA 55 29                    U)
        lda     #$AA                            ; FFCC A9 AA                    ..
        tax                                     ; FFCE AA                       .
        ror     a                               ; FFCF 6A                       j
        adc     $9915                           ; FFD0 6D 15 99                 m..
        .byte   $54                             ; FFD3 54                       T
        eor     $AB,x                           ; FFD4 55 AB                    U.
        stx     $2A,y                           ; FFD6 96 2A                    .*
        sta     $4A,x                           ; FFD8 95 4A                    .J
        adc     #$4C                            ; FFDA 69 4C                    iL
        and     $AB,x                           ; FFDC 35 AB                    5.
        .byte   $62                             ; FFDE 62                       b
        lda     $AB5E,y                         ; FFDF B9 5E AB                 .^.
        adc     $5655                           ; FFE2 6D 55 56                 mUV
        eor     $A9,x                           ; FFE5 55 A9                    U.
        tax                                     ; FFE7 AA                       .
        tax                                     ; FFE8 AA                       .
        ldy     $2A                             ; FFE9 A4 2A                    .*
        .byte   $04                             ; FFEB 04                       .
        eor     $EED5,y                         ; FFEC 59 D5 EE                 Y..
        lda     $A54D,x                         ; FFEF BD 4D A5                 .M.
        sty     $AA,x                           ; FFF2 94 AA                    ..
        tax                                     ; FFF4 AA                       .
        tax                                     ; FFF5 AA                       .
        ror     a                               ; FFF6 6A                       j
        lsr     $66A6                           ; FFF7 4E A6 66                 N.f
;        sta     $93,x                           ; FFFA 95 93                    ..
;        and     #$A6                            ; FFFC 29 A6                    ).
;LFFFE:  ror     a                               ; FFFE 6A                       j
;LFFFF:  .byte   $AD                             ; FFFF AD                       .
LFFFE = $FFFE
LFFFF = $FFFF
VECTORS ; mod
