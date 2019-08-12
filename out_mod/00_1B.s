.include "../mod.inc"
.segment "MF000"

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-23 02:19:29
; Input file: out_src\00_1B.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L8549           := $8549
; ----------------------------------------------------------------------------
        tax                                     ; F000 AA                       .
        eor     $55,x                           ; F001 55 55                    UU
        eor     $55,x                           ; F003 55 55                    UU
        lda     #$AA                            ; F005 A9 AA                    ..
        .byte   $52                             ; F007 52                       R
        eor     $55,x                           ; F008 55 55                    UU
        eor     $AA,x                           ; F00A 55 AA                    U.
        lsr     $55,x                           ; F00C 56 55                    VU
        eor     $55,x                           ; F00E 55 55                    UU
        eor     $95,x                           ; F010 55 95                    U.
        tax                                     ; F012 AA                       .
        lsr     $55,x                           ; F013 56 55                    VU
        eor     $55,x                           ; F015 55 55                    UU
        eor     $55,x                           ; F017 55 55                    UU
        eor     $A5,x                           ; F019 55 A5                    U.
        tax                                     ; F01B AA                       .
        tax                                     ; F01C AA                       .
        .byte   $5A                             ; F01D 5A                       Z
        eor     $55,x                           ; F01E 55 55                    UU
        eor     $55,x                           ; F020 55 55                    UU
        eor     $55,x                           ; F022 55 55                    UU
        eor     $55,x                           ; F024 55 55                    UU
        eor     $55,x                           ; F026 55 55                    UU
        eor     $55,x                           ; F028 55 55                    UU
        eor     $55,x                           ; F02A 55 55                    UU
        eor     $55,x                           ; F02C 55 55                    UU
        eor     $B5,x                           ; F02E 55 B5                    U.
        tax                                     ; F030 AA                       .
        tax                                     ; F031 AA                       .
        tax                                     ; F032 AA                       .
        lsr     $55,x                           ; F033 56 55                    VU
        eor     $2B,x                           ; F035 55 2B                    U+
        eor     $AA,x                           ; F037 55 AA                    U.
        lsr     a                               ; F039 4A                       J
        eor     $55,x                           ; F03A 55 55                    UU
        lda     $AA                             ; F03C A5 AA                    ..
        tax                                     ; F03E AA                       .
        tax                                     ; F03F AA                       .
        tax                                     ; F040 AA                       .
        tax                                     ; F041 AA                       .
        tax                                     ; F042 AA                       .
        tax                                     ; F043 AA                       .
        tax                                     ; F044 AA                       .
        tax                                     ; F045 AA                       .
        tax                                     ; F046 AA                       .
        tax                                     ; F047 AA                       .
        tax                                     ; F048 AA                       .
        tax                                     ; F049 AA                       .
        tax                                     ; F04A AA                       .
        lsr     $55,x                           ; F04B 56 55                    VU
        eor     $55,x                           ; F04D 55 55                    UU
        eor     $55,x                           ; F04F 55 55                    UU
        eor     $A9,x                           ; F051 55 A9                    U.
        eor     $55,x                           ; F053 55 55                    UU
        lda     $AAAA                           ; F055 AD AA AA                 ...
        .byte   $54                             ; F058 54                       T
        eor     $55,x                           ; F059 55 55                    UU
        eor     $55,x                           ; F05B 55 55                    UU
        eor     $55,x                           ; F05D 55 55                    UU
        eor     $D5,x                           ; F05F 55 D5                    U.
        tax                                     ; F061 AA                       .
        lsr     $95,x                           ; F062 56 95                    V.
        rol     a                               ; F064 2A                       *
        eor     $55,x                           ; F065 55 55                    UU
        cmp     $AA,x                           ; F067 D5 AA                    ..
        sta     $4A,x                           ; F069 95 4A                    .J
        eor     $A5,x                           ; F06B 55 A5                    U.
        .byte   $52                             ; F06D 52                       R
        eor     $AD,x                           ; F06E 55 AD                    U.
        .byte   $5A                             ; F070 5A                       Z
        eor     $55,x                           ; F071 55 55                    UU
        eor     $55,x                           ; F073 55 55                    UU
        eor     $55,x                           ; F075 55 55                    UU
        lda     #$AA                            ; F077 A9 AA                    ..
        tax                                     ; F079 AA                       .
        tax                                     ; F07A AA                       .
        tax                                     ; F07B AA                       .
        tax                                     ; F07C AA                       .
        ror     a                               ; F07D 6A                       j
        eor     $A9,x                           ; F07E 55 A9                    U.
        tax                                     ; F080 AA                       .
        tax                                     ; F081 AA                       .
        ror     a                               ; F082 6A                       j
        eor     $55,x                           ; F083 55 55                    UU
        eor     $55,x                           ; F085 55 55                    UU
        eor     $55,x                           ; F087 55 55                    UU
        lda     $AAAA                           ; F089 AD AA AA                 ...
        tax                                     ; F08C AA                       .
        tax                                     ; F08D AA                       .
        tax                                     ; F08E AA                       .
        tax                                     ; F08F AA                       .
        tax                                     ; F090 AA                       .
        .byte   $5A                             ; F091 5A                       Z
        eor     $55,x                           ; F092 55 55                    UU
        eor     $55,x                           ; F094 55 55                    UU
        sta     $4A,x                           ; F096 95 4A                    .J
        eor     $55,x                           ; F098 55 55                    UU
        eor     $A9,x                           ; F09A 55 A9                    U.
        tax                                     ; F09C AA                       .
        tax                                     ; F09D AA                       .
        tax                                     ; F09E AA                       .
        tax                                     ; F09F AA                       .
        tax                                     ; F0A0 AA                       .
        .byte   $52                             ; F0A1 52                       R
        cmp     $AA,x                           ; F0A2 D5 AA                    ..
        ror     a                               ; F0A4 6A                       j
        eor     $55,x                           ; F0A5 55 55                    UU
        eor     $55,x                           ; F0A7 55 55                    UU
        eor     $55,x                           ; F0A9 55 55                    UU
        lda     #$AA                            ; F0AB A9 AA                    ..
        tax                                     ; F0AD AA                       .
        ror     a                               ; F0AE 6A                       j
        eor     $55,x                           ; F0AF 55 55                    UU
        eor     $55,x                           ; F0B1 55 55                    UU
        eor     $55,x                           ; F0B3 55 55                    UU
        eor     $55,x                           ; F0B5 55 55                    UU
        eor     $B5,x                           ; F0B7 55 B5                    U.
        .byte   $5A                             ; F0B9 5A                       Z
        eor     $A9,x                           ; F0BA 55 A9                    U.
        tax                                     ; F0BC AA                       .
        .byte   $5A                             ; F0BD 5A                       Z
        lda     $4A                             ; F0BE A5 4A                    .J
        eor     $55,x                           ; F0C0 55 55                    UU
        eor     $D5,x                           ; F0C2 55 D5                    U.
        tax                                     ; F0C4 AA                       .
        tax                                     ; F0C5 AA                       .
        tax                                     ; F0C6 AA                       .
        .byte   $52                             ; F0C7 52                       R
        eor     $55,x                           ; F0C8 55 55                    UU
        eor     $55,x                           ; F0CA 55 55                    UU
        eor     $55,x                           ; F0CC 55 55                    UU
        eor     $55,x                           ; F0CE 55 55                    UU
        eor     $55,x                           ; F0D0 55 55                    UU
        eor     $55,x                           ; F0D2 55 55                    UU
        eor     $A9,x                           ; F0D4 55 A9                    U.
        tax                                     ; F0D6 AA                       .
        tax                                     ; F0D7 AA                       .
        lsr     $55,x                           ; F0D8 56 55                    VU
        eor     $A9,x                           ; F0DA 55 A9                    U.
        .byte   $54                             ; F0DC 54                       T
        sta     $AA,x                           ; F0DD 95 AA                    ..
        ror     a                               ; F0DF 6A                       j
        eor     $AB,x                           ; F0E0 55 AB                    U.
        lsr     $55,x                           ; F0E2 56 55                    VU
        eor     $55,x                           ; F0E4 55 55                    UU
        lda     $5556                           ; F0E6 AD 56 55                 .VU
        eor     $AD,x                           ; F0E9 55 AD                    U.
        tax                                     ; F0EB AA                       .
        tax                                     ; F0EC AA                       .
        .byte   $54                             ; F0ED 54                       T
        eor     $AA,x                           ; F0EE 55 AA                    U.
        tax                                     ; F0F0 AA                       .
        tax                                     ; F0F1 AA                       .
        .byte   $54                             ; F0F2 54                       T
        eor     $55,x                           ; F0F3 55 55                    UU
        eor     $55,x                           ; F0F5 55 55                    UU
        eor     $55,x                           ; F0F7 55 55                    UU
        eor     $55,x                           ; F0F9 55 55                    UU
        eor     $AA,x                           ; F0FB 55 AA                    U.
        tax                                     ; F0FD AA                       .
        rol     a                               ; F0FE 2A                       *
        eor     $55,x                           ; F0FF 55 55                    UU
        eor     $55,x                           ; F101 55 55                    UU
        .byte   $AB                             ; F103 AB                       .
        tax                                     ; F104 AA                       .
        tax                                     ; F105 AA                       .
        ror     a                               ; F106 6A                       j
        eor     $55,x                           ; F107 55 55                    UU
        lda     $56                             ; F109 A5 56                    .V
        eor     $55,x                           ; F10B 55 55                    UU
        eor     $55,x                           ; F10D 55 55                    UU
        eor     $55,x                           ; F10F 55 55                    UU
        sta     $AA,x                           ; F111 95 AA                    ..
        eor     $55,x                           ; F113 55 55                    UU
        .byte   $AB                             ; F115 AB                       .
        eor     $69,x                           ; F116 55 69                    Ui
        eor     $AA,x                           ; F118 55 AA                    U.
        .byte   $52                             ; F11A 52                       R
        eor     $55,x                           ; F11B 55 55                    UU
        eor     $55,x                           ; F11D 55 55                    UU
        eor     $55,x                           ; F11F 55 55                    UU
        lda     $AA,x                           ; F121 B5 AA                    ..
        tax                                     ; F123 AA                       .
        .byte   $54                             ; F124 54                       T
        lda     $AAAA                           ; F125 AD AA AA                 ...
        tax                                     ; F128 AA                       .
        tax                                     ; F129 AA                       .
        eor     $55,x                           ; F12A 55 55                    UU
        sta     $AA,x                           ; F12C 95 AA                    ..
        .byte   $54                             ; F12E 54                       T
        eor     $55,x                           ; F12F 55 55                    UU
        lda     $2A                             ; F131 A5 2A                    .*
        eor     $55,x                           ; F133 55 55                    UU
        eor     $55,x                           ; F135 55 55                    UU
        eor     $D5,x                           ; F137 55 D5                    U.
        tax                                     ; F139 AA                       .
        tax                                     ; F13A AA                       .
        eor     $55,x                           ; F13B 55 55                    UU
        eor     $55,x                           ; F13D 55 55                    UU
        eor     $55,x                           ; F13F 55 55                    UU
        eor     $55,x                           ; F141 55 55                    UU
        eor     $55,x                           ; F143 55 55                    UU
        eor     $55,x                           ; F145 55 55                    UU
        eor     $55,x                           ; F147 55 55                    UU
        eor     $55,x                           ; F149 55 55                    UU
        .byte   $AB                             ; F14B AB                       .
        tax                                     ; F14C AA                       .
        lsr     a                               ; F14D 4A                       J
        cmp     $2A,x                           ; F14E D5 2A                    .*
        eor     $55,x                           ; F150 55 55                    UU
        eor     $55,x                           ; F152 55 55                    UU
        eor     $55,x                           ; F154 55 55                    UU
        eor     $55,x                           ; F156 55 55                    UU
        eor     $B5,x                           ; F158 55 B5                    U.
        tax                                     ; F15A AA                       .
        eor     $55,x                           ; F15B 55 55                    UU
        eor     $95,x                           ; F15D 55 95                    U.
        tax                                     ; F15F AA                       .
        .byte   $52                             ; F160 52                       R
        eor     $55,x                           ; F161 55 55                    UU
        eor     $55,x                           ; F163 55 55                    UU
        eor     $55,x                           ; F165 55 55                    UU
        eor     $55,x                           ; F167 55 55                    UU
        lda     #$52                            ; F169 A9 52                    .R
        eor     $55,x                           ; F16B 55 55                    UU
        lda     $AA,x                           ; F16D B5 AA                    ..
        tax                                     ; F16F AA                       .
        tax                                     ; F170 AA                       .
        .byte   $52                             ; F171 52                       R
        eor     $55,x                           ; F172 55 55                    UU
        .byte   $AB                             ; F174 AB                       .
        tax                                     ; F175 AA                       .
        tax                                     ; F176 AA                       .
        ror     a                               ; F177 6A                       j
        eor     $55,x                           ; F178 55 55                    UU
        lda     $5A,x                           ; F17A B5 5A                    .Z
        eor     $55,x                           ; F17C 55 55                    UU
        eor     $55,x                           ; F17E 55 55                    UU
        lda     #$AA                            ; F180 A9 AA                    ..
        tax                                     ; F182 AA                       .
        eor     $55,x                           ; F183 55 55                    UU
        eor     $55,x                           ; F185 55 55                    UU
        eor     $55,x                           ; F187 55 55                    UU
        tax                                     ; F189 AA                       .
        rol     a                               ; F18A 2A                       *
        eor     $55,x                           ; F18B 55 55                    UU
        eor     $55,x                           ; F18D 55 55                    UU
        lda     $AA                             ; F18F A5 AA                    ..
        tax                                     ; F191 AA                       .
        tax                                     ; F192 AA                       .
        .byte   $54                             ; F193 54                       T
        eor     $55,x                           ; F194 55 55                    UU
        eor     $55,x                           ; F196 55 55                    UU
        .byte   $AB                             ; F198 AB                       .
        tax                                     ; F199 AA                       .
        tax                                     ; F19A AA                       .
        .byte   $5A                             ; F19B 5A                       Z
        eor     $55,x                           ; F19C 55 55                    UU
        eor     $55,x                           ; F19E 55 55                    UU
        eor     $55,x                           ; F1A0 55 55                    UU
        eor     $55,x                           ; F1A2 55 55                    UU
        eor     $55,x                           ; F1A4 55 55                    UU
        eor     $55,x                           ; F1A6 55 55                    UU
        lda     #$55                            ; F1A8 A9 55                    .U
        eor     $55,x                           ; F1AA 55 55                    UU
        eor     $55,x                           ; F1AC 55 55                    UU
        eor     $D5,x                           ; F1AE 55 D5                    U.
        tax                                     ; F1B0 AA                       .
        eor     $AD,x                           ; F1B1 55 AD                    U.
        tax                                     ; F1B3 AA                       .
        tax                                     ; F1B4 AA                       .
        tax                                     ; F1B5 AA                       .
        tax                                     ; F1B6 AA                       .
        .byte   $52                             ; F1B7 52                       R
        eor     $AA,x                           ; F1B8 55 AA                    U.
        .byte   $54                             ; F1BA 54                       T
        eor     $55,x                           ; F1BB 55 55                    UU
        eor     $55,x                           ; F1BD 55 55                    UU
        eor     $95,x                           ; F1BF 55 95                    U.
        tax                                     ; F1C1 AA                       .
        tax                                     ; F1C2 AA                       .
        tax                                     ; F1C3 AA                       .
        tax                                     ; F1C4 AA                       .
        tax                                     ; F1C5 AA                       .
        .byte   $52                             ; F1C6 52                       R
        eor     $55,x                           ; F1C7 55 55                    UU
        lda     $AA,x                           ; F1C9 B5 AA                    ..
        tax                                     ; F1CB AA                       .
        tax                                     ; F1CC AA                       .
        eor     $55,x                           ; F1CD 55 55                    UU
        eor     $55,x                           ; F1CF 55 55                    UU
        eor     $55,x                           ; F1D1 55 55                    UU
        eor     $55,x                           ; F1D3 55 55                    UU
        eor     $55,x                           ; F1D5 55 55                    UU
        eor     $55,x                           ; F1D7 55 55                    UU
        eor     $A9,x                           ; F1D9 55 A9                    U.
        lsr     $55,x                           ; F1DB 56 55                    VU
        eor     $55,x                           ; F1DD 55 55                    UU
        eor     $55,x                           ; F1DF 55 55                    UU
        eor     $AB,x                           ; F1E1 55 AB                    U.
        eor     $AD,x                           ; F1E3 55 AD                    U.
        tax                                     ; F1E5 AA                       .
        tax                                     ; F1E6 AA                       .
        tax                                     ; F1E7 AA                       .
        tax                                     ; F1E8 AA                       .
        .byte   $52                             ; F1E9 52                       R
        eor     $AA,x                           ; F1EA 55 AA                    U.
        .byte   $54                             ; F1EC 54                       T
        eor     $55,x                           ; F1ED 55 55                    UU
        eor     $55,x                           ; F1EF 55 55                    UU
        eor     $95,x                           ; F1F1 55 95                    U.
        tax                                     ; F1F3 AA                       .
        tax                                     ; F1F4 AA                       .
        tax                                     ; F1F5 AA                       .
        tax                                     ; F1F6 AA                       .
        tax                                     ; F1F7 AA                       .
        tax                                     ; F1F8 AA                       .
        .byte   $52                             ; F1F9 52                       R
        eor     $AB,x                           ; F1FA 55 AB                    U.
        tax                                     ; F1FC AA                       .
        ror     a                               ; F1FD 6A                       j
        eor     $55,x                           ; F1FE 55 55                    UU
        eor     $55,x                           ; F200 55 55                    UU
        eor     $55,x                           ; F202 55 55                    UU
        eor     $55,x                           ; F204 55 55                    UU
        eor     $55,x                           ; F206 55 55                    UU
        eor     $55,x                           ; F208 55 55                    UU
        eor     $55,x                           ; F20A 55 55                    UU
        eor     $55,x                           ; F20C 55 55                    UU
        eor     $55,x                           ; F20E 55 55                    UU
        eor     $55,x                           ; F210 55 55                    UU
        eor     $55,x                           ; F212 55 55                    UU
        lda     $4A,x                           ; F214 B5 4A                    .J
        eor     $55,x                           ; F216 55 55                    UU
        eor     $B5,x                           ; F218 55 B5                    U.
        tax                                     ; F21A AA                       .
        ror     a                               ; F21B 6A                       j
        eor     $A5,x                           ; F21C 55 A5                    U.
        tax                                     ; F21E AA                       .
        .byte   $52                             ; F21F 52                       R
        eor     $55,x                           ; F220 55 55                    UU
        eor     $55,x                           ; F222 55 55                    UU
        eor     $55,x                           ; F224 55 55                    UU
        eor     $55,x                           ; F226 55 55                    UU
        eor     $55,x                           ; F228 55 55                    UU
        eor     $55,x                           ; F22A 55 55                    UU
        eor     $55,x                           ; F22C 55 55                    UU
        rol     a                               ; F22E 2A                       *
        eor     $55,x                           ; F22F 55 55                    UU
        eor     $55,x                           ; F231 55 55                    UU
        eor     $55,x                           ; F233 55 55                    UU
        lda     $55AA                           ; F235 AD AA 55                 ..U
        eor     $55,x                           ; F238 55 55                    UU
        eor     $55,x                           ; F23A 55 55                    UU
        eor     $55,x                           ; F23C 55 55                    UU
        lda     $AA,x                           ; F23E B5 AA                    ..
        tax                                     ; F240 AA                       .
        tax                                     ; F241 AA                       .
        tax                                     ; F242 AA                       .
        tax                                     ; F243 AA                       .
        lsr     $55,x                           ; F244 56 55                    VU
        eor     $55,x                           ; F246 55 55                    UU
        eor     $55,x                           ; F248 55 55                    UU
        lda     $AA                             ; F24A A5 AA                    ..
        tax                                     ; F24C AA                       .
        lsr     a                               ; F24D 4A                       J
        eor     $55,x                           ; F24E 55 55                    UU
        lda     #$AA                            ; F250 A9 AA                    ..
        tax                                     ; F252 AA                       .
        tax                                     ; F253 AA                       .
        eor     $55,x                           ; F254 55 55                    UU
        sta     $AA,x                           ; F256 95 AA                    ..
        tax                                     ; F258 AA                       .
        tax                                     ; F259 AA                       .
        tax                                     ; F25A AA                       .
        lsr     $95,x                           ; F25B 56 95                    V.
        tax                                     ; F25D AA                       .
        tax                                     ; F25E AA                       .
        tax                                     ; F25F AA                       .
        tax                                     ; F260 AA                       .
        lsr     $55,x                           ; F261 56 55                    VU
        eor     $55,x                           ; F263 55 55                    UU
        eor     $55,x                           ; F265 55 55                    UU
        eor     $55,x                           ; F267 55 55                    UU
        eor     $B5,x                           ; F269 55 B5                    U.
        lsr     a                               ; F26B 4A                       J
        eor     $55,x                           ; F26C 55 55                    UU
        eor     $55,x                           ; F26E 55 55                    UU
        eor     $55,x                           ; F270 55 55                    UU
        eor     $55,x                           ; F272 55 55                    UU
        eor     $55,x                           ; F274 55 55                    UU
        eor     $B5,x                           ; F276 55 B5                    U.
        tax                                     ; F278 AA                       .
        tax                                     ; F279 AA                       .
        tax                                     ; F27A AA                       .
        tax                                     ; F27B AA                       .
        tax                                     ; F27C AA                       .
        tax                                     ; F27D AA                       .
        tax                                     ; F27E AA                       .
        tax                                     ; F27F AA                       .
        tax                                     ; F280 AA                       .
        tax                                     ; F281 AA                       .
        tax                                     ; F282 AA                       .
        .byte   $54                             ; F283 54                       T
        eor     $55,x                           ; F284 55 55                    UU
        lda     $AA                             ; F286 A5 AA                    ..
        tax                                     ; F288 AA                       .
        .byte   $54                             ; F289 54                       T
        .byte   $AB                             ; F28A AB                       .
        tax                                     ; F28B AA                       .
        tax                                     ; F28C AA                       .
        tax                                     ; F28D AA                       .
        tax                                     ; F28E AA                       .
        rol     a                               ; F28F 2A                       *
        eor     $B5,x                           ; F290 55 B5                    U.
        tax                                     ; F292 AA                       .
        tax                                     ; F293 AA                       .
        ror     a                               ; F294 6A                       j
        eor     $55,x                           ; F295 55 55                    UU
        eor     $55,x                           ; F297 55 55                    UU
        eor     $55,x                           ; F299 55 55                    UU
        eor     $55,x                           ; F29B 55 55                    UU
        eor     $55,x                           ; F29D 55 55                    UU
        eor     $AD,x                           ; F29F 55 AD                    U.
        ror     a                               ; F2A1 6A                       j
        eor     $55,x                           ; F2A2 55 55                    UU
        eor     $A9,x                           ; F2A4 55 A9                    U.
        tax                                     ; F2A6 AA                       .
        tax                                     ; F2A7 AA                       .
        tax                                     ; F2A8 AA                       .
        tax                                     ; F2A9 AA                       .
        tax                                     ; F2AA AA                       .
        .byte   $54                             ; F2AB 54                       T
        eor     $55,x                           ; F2AC 55 55                    UU
        eor     $55,x                           ; F2AE 55 55                    UU
        eor     $55,x                           ; F2B0 55 55                    UU
        eor     $55,x                           ; F2B2 55 55                    UU
        eor     $55,x                           ; F2B4 55 55                    UU
        eor     $AA,x                           ; F2B6 55 AA                    U.
        tax                                     ; F2B8 AA                       .
        tax                                     ; F2B9 AA                       .
        .byte   $D4                             ; F2BA D4                       .
        tax                                     ; F2BB AA                       .
        tax                                     ; F2BC AA                       .
        tax                                     ; F2BD AA                       .
        lsr     $55,x                           ; F2BE 56 55                    VU
        eor     $55,x                           ; F2C0 55 55                    UU
        eor     $55,x                           ; F2C2 55 55                    UU
        eor     $AA,x                           ; F2C4 55 AA                    U.
        tax                                     ; F2C6 AA                       .
        tax                                     ; F2C7 AA                       .
        tax                                     ; F2C8 AA                       .
        lsr     $55,x                           ; F2C9 56 55                    VU
        eor     $55,x                           ; F2CB 55 55                    UU
        eor     $55,x                           ; F2CD 55 55                    UU
        eor     $55,x                           ; F2CF 55 55                    UU
        eor     $AB,x                           ; F2D1 55 AB                    U.
        tax                                     ; F2D3 AA                       .
        tax                                     ; F2D4 AA                       .
        tax                                     ; F2D5 AA                       .
        tax                                     ; F2D6 AA                       .
        tax                                     ; F2D7 AA                       .
        tax                                     ; F2D8 AA                       .
        tax                                     ; F2D9 AA                       .
        lsr     a                               ; F2DA 4A                       J
        lda     $AAAA                           ; F2DB AD AA AA                 ...
        tax                                     ; F2DE AA                       .
        tax                                     ; F2DF AA                       .
        .byte   $52                             ; F2E0 52                       R
        eor     $55,x                           ; F2E1 55 55                    UU
        eor     $55,x                           ; F2E3 55 55                    UU
        eor     $55,x                           ; F2E5 55 55                    UU
        eor     $55,x                           ; F2E7 55 55                    UU
        eor     $55,x                           ; F2E9 55 55                    UU
        eor     $55,x                           ; F2EB 55 55                    UU
        eor     $55,x                           ; F2ED 55 55                    UU
        eor     $55,x                           ; F2EF 55 55                    UU
        eor     $AA,x                           ; F2F1 55 AA                    U.
        tax                                     ; F2F3 AA                       .
        tax                                     ; F2F4 AA                       .
        tax                                     ; F2F5 AA                       .
        tax                                     ; F2F6 AA                       .
        tax                                     ; F2F7 AA                       .
        tax                                     ; F2F8 AA                       .
        tax                                     ; F2F9 AA                       .
        tax                                     ; F2FA AA                       .
        eor     $55,x                           ; F2FB 55 55                    UU
        eor     $55,x                           ; F2FD 55 55                    UU
        eor     $55,x                           ; F2FF 55 55                    UU
        eor     $55,x                           ; F301 55 55                    UU
        eor     $55,x                           ; F303 55 55                    UU
        eor     $55,x                           ; F305 55 55                    UU
        eor     $55,x                           ; F307 55 55                    UU
        .byte   $AB                             ; F309 AB                       .
        tax                                     ; F30A AA                       .
        tax                                     ; F30B AA                       .
        eor     $95,x                           ; F30C 55 95                    U.
        tax                                     ; F30E AA                       .
        tax                                     ; F30F AA                       .
        tax                                     ; F310 AA                       .
        tax                                     ; F311 AA                       .
        tax                                     ; F312 AA                       .
        tax                                     ; F313 AA                       .
        tax                                     ; F314 AA                       .
        tax                                     ; F315 AA                       .
        tax                                     ; F316 AA                       .
        lsr     a                               ; F317 4A                       J
        eor     $55,x                           ; F318 55 55                    UU
        eor     $55,x                           ; F31A 55 55                    UU
        eor     $55,x                           ; F31C 55 55                    UU
        eor     $A9,x                           ; F31E 55 A9                    U.
        rol     a                               ; F320 2A                       *
        eor     $55,x                           ; F321 55 55                    UU
        eor     $55,x                           ; F323 55 55                    UU
        eor     $55,x                           ; F325 55 55                    UU
        eor     $D5,x                           ; F327 55 D5                    U.
        tax                                     ; F329 AA                       .
        lsr     $55,x                           ; F32A 56 55                    VU
        eor     $55,x                           ; F32C 55 55                    UU
        eor     $55,x                           ; F32E 55 55                    UU
        lda     $AAAA                           ; F330 AD AA AA                 ...
        tax                                     ; F333 AA                       .
        tax                                     ; F334 AA                       .
        tax                                     ; F335 AA                       .
        rol     a                               ; F336 2A                       *
        eor     $AD,x                           ; F337 55 AD                    U.
        tax                                     ; F339 AA                       .
        tax                                     ; F33A AA                       .
        lsr     a                               ; F33B 4A                       J
        eor     $55,x                           ; F33C 55 55                    UU
        eor     $55,x                           ; F33E 55 55                    UU
        eor     $55,x                           ; F340 55 55                    UU
        eor     $55,x                           ; F342 55 55                    UU
        eor     $55,x                           ; F344 55 55                    UU
        eor     $55,x                           ; F346 55 55                    UU
        eor     $55,x                           ; F348 55 55                    UU
        eor     $55,x                           ; F34A 55 55                    UU
        eor     $55,x                           ; F34C 55 55                    UU
        eor     $55,x                           ; F34E 55 55                    UU
        eor     $55,x                           ; F350 55 55                    UU
        eor     $55,x                           ; F352 55 55                    UU
        eor     $A5,x                           ; F354 55 A5                    U.
        tax                                     ; F356 AA                       .
        tax                                     ; F357 AA                       .
        tax                                     ; F358 AA                       .
        tax                                     ; F359 AA                       .
        tax                                     ; F35A AA                       .
        tax                                     ; F35B AA                       .
        ror     a                               ; F35C 6A                       j
        eor     $55,x                           ; F35D 55 55                    UU
        eor     $55,x                           ; F35F 55 55                    UU
        eor     $55,x                           ; F361 55 55                    UU
        eor     $55,x                           ; F363 55 55                    UU
        eor     $55,x                           ; F365 55 55                    UU
        eor     $55,x                           ; F367 55 55                    UU
        eor     $B5,x                           ; F369 55 B5                    U.
        tax                                     ; F36B AA                       .
        tax                                     ; F36C AA                       .
        tax                                     ; F36D AA                       .
        .byte   $5A                             ; F36E 5A                       Z
        eor     $55,x                           ; F36F 55 55                    UU
        eor     $55,x                           ; F371 55 55                    UU
        eor     $A5,x                           ; F373 55 A5                    U.
        rol     a                               ; F375 2A                       *
        eor     $55,x                           ; F376 55 55                    UU
        sta     $AA,x                           ; F378 95 AA                    ..
        tax                                     ; F37A AA                       .
        tax                                     ; F37B AA                       .
        tax                                     ; F37C AA                       .
        tax                                     ; F37D AA                       .
        tax                                     ; F37E AA                       .
        tax                                     ; F37F AA                       .
        rol     a                               ; F380 2A                       *
        eor     $55,x                           ; F381 55 55                    UU
        eor     $55,x                           ; F383 55 55                    UU
        eor     $D5,x                           ; F385 55 D5                    U.
        tax                                     ; F387 AA                       .
        tax                                     ; F388 AA                       .
        tax                                     ; F389 AA                       .
        tax                                     ; F38A AA                       .
        .byte   $5A                             ; F38B 5A                       Z
        eor     $55,x                           ; F38C 55 55                    UU
        eor     $AB,x                           ; F38E 55 AB                    U.
        ror     a                               ; F390 6A                       j
        eor     $A9,x                           ; F391 55 A9                    U.
        tax                                     ; F393 AA                       .
        tax                                     ; F394 AA                       .
        lsr     a                               ; F395 4A                       J
        lda     $AA,x                           ; F396 B5 AA                    ..
        tax                                     ; F398 AA                       .
        tax                                     ; F399 AA                       .
        lsr     a                               ; F39A 4A                       J
        eor     $55,x                           ; F39B 55 55                    UU
        eor     $55,x                           ; F39D 55 55                    UU
        eor     $55,x                           ; F39F 55 55                    UU
        eor     $55,x                           ; F3A1 55 55                    UU
        eor     $55,x                           ; F3A3 55 55                    UU
        eor     $55,x                           ; F3A5 55 55                    UU
        eor     $55,x                           ; F3A7 55 55                    UU
        eor     $55,x                           ; F3A9 55 55                    UU
        eor     $55,x                           ; F3AB 55 55                    UU
        eor     $55,x                           ; F3AD 55 55                    UU
        eor     $A9,x                           ; F3AF 55 A9                    U.
        tax                                     ; F3B1 AA                       .
        tax                                     ; F3B2 AA                       .
        ror     a                               ; F3B3 6A                       j
        eor     $55,x                           ; F3B4 55 55                    UU
        eor     $55,x                           ; F3B6 55 55                    UU
        eor     $55,x                           ; F3B8 55 55                    UU
        lda     #$AA                            ; F3BA A9 AA                    ..
        tax                                     ; F3BC AA                       .
        tax                                     ; F3BD AA                       .
        tax                                     ; F3BE AA                       .
        .byte   $5A                             ; F3BF 5A                       Z
        eor     $55,x                           ; F3C0 55 55                    UU
        eor     $55,x                           ; F3C2 55 55                    UU
        eor     $AB,x                           ; F3C4 55 AB                    U.
        tax                                     ; F3C6 AA                       .
        tax                                     ; F3C7 AA                       .
        tax                                     ; F3C8 AA                       .
        tax                                     ; F3C9 AA                       .
        tax                                     ; F3CA AA                       .
        tax                                     ; F3CB AA                       .
        eor     $55,x                           ; F3CC 55 55                    UU
        eor     $55,x                           ; F3CE 55 55                    UU
        eor     $95,x                           ; F3D0 55 95                    U.
        tax                                     ; F3D2 AA                       .
        tax                                     ; F3D3 AA                       .
        .byte   $52                             ; F3D4 52                       R
        eor     $55,x                           ; F3D5 55 55                    UU
        eor     $55,x                           ; F3D7 55 55                    UU
        lda     $AA                             ; F3D9 A5 AA                    ..
        tax                                     ; F3DB AA                       .
        .byte   $52                             ; F3DC 52                       R
        eor     $55,x                           ; F3DD 55 55                    UU
        eor     $55,x                           ; F3DF 55 55                    UU
        eor     $55,x                           ; F3E1 55 55                    UU
        eor     $B5,x                           ; F3E3 55 B5                    U.
        tax                                     ; F3E5 AA                       .
        tax                                     ; F3E6 AA                       .
        lsr     $55,x                           ; F3E7 56 55                    VU
        eor     $55,x                           ; F3E9 55 55                    UU
        eor     $D5,x                           ; F3EB 55 D5                    U.
        tax                                     ; F3ED AA                       .
        tax                                     ; F3EE AA                       .
        tax                                     ; F3EF AA                       .
        tax                                     ; F3F0 AA                       .
        tax                                     ; F3F1 AA                       .
        tax                                     ; F3F2 AA                       .
        tax                                     ; F3F3 AA                       .
        tax                                     ; F3F4 AA                       .
        tax                                     ; F3F5 AA                       .
        rol     a                               ; F3F6 2A                       *
        eor     $55,x                           ; F3F7 55 55                    UU
        eor     $55,x                           ; F3F9 55 55                    UU
        eor     $55,x                           ; F3FB 55 55                    UU
        eor     $55,x                           ; F3FD 55 55                    UU
        eor     $55,x                           ; F3FF 55 55                    UU
        eor     $55,x                           ; F401 55 55                    UU
        eor     $55,x                           ; F403 55 55                    UU
        eor     $55,x                           ; F405 55 55                    UU
        eor     $55,x                           ; F407 55 55                    UU
        eor     $55,x                           ; F409 55 55                    UU
        eor     $55,x                           ; F40B 55 55                    UU
        eor     $55,x                           ; F40D 55 55                    UU
        eor     $55,x                           ; F40F 55 55                    UU
        eor     $55,x                           ; F411 55 55                    UU
        eor     $55,x                           ; F413 55 55                    UU
        eor     $A9,x                           ; F415 55 A9                    U.
        tax                                     ; F417 AA                       .
        tax                                     ; F418 AA                       .
        tax                                     ; F419 AA                       .
        tax                                     ; F41A AA                       .
        tax                                     ; F41B AA                       .
        tax                                     ; F41C AA                       .
        tax                                     ; F41D AA                       .
        tax                                     ; F41E AA                       .
        lsr     $55,x                           ; F41F 56 55                    VU
        eor     $55,x                           ; F421 55 55                    UU
        lda     $AA,x                           ; F423 B5 AA                    ..
        tax                                     ; F425 AA                       .
        tax                                     ; F426 AA                       .
        rol     a                               ; F427 2A                       *
        eor     $55,x                           ; F428 55 55                    UU
        eor     $55,x                           ; F42A 55 55                    UU
        .byte   $AB                             ; F42C AB                       .
        tax                                     ; F42D AA                       .
        tax                                     ; F42E AA                       .
        lsr     $A9,x                           ; F42F 56 A9                    V.
        tax                                     ; F431 AA                       .
        tax                                     ; F432 AA                       .
        tax                                     ; F433 AA                       .
        lsr     a                               ; F434 4A                       J
        eor     $55,x                           ; F435 55 55                    UU
        eor     $55,x                           ; F437 55 55                    UU
        eor     $55,x                           ; F439 55 55                    UU
        eor     $A9,x                           ; F43B 55 A9                    U.
        tax                                     ; F43D AA                       .
        tax                                     ; F43E AA                       .
        tax                                     ; F43F AA                       .
        .byte   $52                             ; F440 52                       R
        eor     $AD,x                           ; F441 55 AD                    U.
        tax                                     ; F443 AA                       .
        tax                                     ; F444 AA                       .
        tax                                     ; F445 AA                       .
        tax                                     ; F446 AA                       .
        tax                                     ; F447 AA                       .
        eor     $55,x                           ; F448 55 55                    UU
        eor     $55,x                           ; F44A 55 55                    UU
        eor     $55,x                           ; F44C 55 55                    UU
        eor     $B5,x                           ; F44E 55 B5                    U.
        tax                                     ; F450 AA                       .
        tax                                     ; F451 AA                       .
        tax                                     ; F452 AA                       .
        tax                                     ; F453 AA                       .
        tax                                     ; F454 AA                       .
        tax                                     ; F455 AA                       .
        .byte   $52                             ; F456 52                       R
        eor     $55,x                           ; F457 55 55                    UU
        eor     $55,x                           ; F459 55 55                    UU
        eor     $55,x                           ; F45B 55 55                    UU
        eor     $55,x                           ; F45D 55 55                    UU
        eor     $55,x                           ; F45F 55 55                    UU
        eor     $55,x                           ; F461 55 55                    UU
        eor     $55,x                           ; F463 55 55                    UU
        eor     $55,x                           ; F465 55 55                    UU
        eor     $55,x                           ; F467 55 55                    UU
        eor     $55,x                           ; F469 55 55                    UU
        eor     $55,x                           ; F46B 55 55                    UU
        eor     $55,x                           ; F46D 55 55                    UU
        lda     $AA                             ; F46F A5 AA                    ..
        tax                                     ; F471 AA                       .
        tax                                     ; F472 AA                       .
        tax                                     ; F473 AA                       .
        tax                                     ; F474 AA                       .
        tax                                     ; F475 AA                       .
        tax                                     ; F476 AA                       .
        eor     $55,x                           ; F477 55 55                    UU
        eor     $55,x                           ; F479 55 55                    UU
        eor     $55,x                           ; F47B 55 55                    UU
        eor     $55,x                           ; F47D 55 55                    UU
        eor     $55,x                           ; F47F 55 55                    UU
        eor     $55,x                           ; F481 55 55                    UU
        eor     $55,x                           ; F483 55 55                    UU
        eor     $55,x                           ; F485 55 55                    UU
        .byte   $AB                             ; F487 AB                       .
        .byte   $54                             ; F488 54                       T
        eor     $D5,x                           ; F489 55 D5                    U.
        tax                                     ; F48B AA                       .
        lsr     a                               ; F48C 4A                       J
        eor     $55,x                           ; F48D 55 55                    UU
        eor     $55,x                           ; F48F 55 55                    UU
        eor     $55,x                           ; F491 55 55                    UU
        eor     $55,x                           ; F493 55 55                    UU
        eor     $55,x                           ; F495 55 55                    UU
        eor     $55,x                           ; F497 55 55                    UU
        eor     $55,x                           ; F499 55 55                    UU
        eor     $55,x                           ; F49B 55 55                    UU
        eor     $55,x                           ; F49D 55 55                    UU
        eor     $55,x                           ; F49F 55 55                    UU
        eor     $55,x                           ; F4A1 55 55                    UU
        eor     $55,x                           ; F4A3 55 55                    UU
        eor     $55,x                           ; F4A5 55 55                    UU
        tax                                     ; F4A7 AA                       .
        tax                                     ; F4A8 AA                       .
        tax                                     ; F4A9 AA                       .
        tax                                     ; F4AA AA                       .
        tax                                     ; F4AB AA                       .
        tax                                     ; F4AC AA                       .
        tax                                     ; F4AD AA                       .
        lsr     $55,x                           ; F4AE 56 55                    VU
        eor     $55,x                           ; F4B0 55 55                    UU
        eor     $55,x                           ; F4B2 55 55                    UU
        eor     $55,x                           ; F4B4 55 55                    UU
        eor     $55,x                           ; F4B6 55 55                    UU
        eor     $55,x                           ; F4B8 55 55                    UU
        eor     $55,x                           ; F4BA 55 55                    UU
        eor     $55,x                           ; F4BC 55 55                    UU
        lda     $4A,x                           ; F4BE B5 4A                    .J
        eor     $55,x                           ; F4C0 55 55                    UU
        lda     $4A,x                           ; F4C2 B5 4A                    .J
        eor     $55,x                           ; F4C4 55 55                    UU
        eor     $55,x                           ; F4C6 55 55                    UU
        eor     $55,x                           ; F4C8 55 55                    UU
        eor     $55,x                           ; F4CA 55 55                    UU
        eor     $55,x                           ; F4CC 55 55                    UU
        eor     $55,x                           ; F4CE 55 55                    UU
        eor     $55,x                           ; F4D0 55 55                    UU
        eor     $55,x                           ; F4D2 55 55                    UU
        eor     $55,x                           ; F4D4 55 55                    UU
        eor     $55,x                           ; F4D6 55 55                    UU
        eor     $55,x                           ; F4D8 55 55                    UU
        eor     $55,x                           ; F4DA 55 55                    UU
        lda     $AA                             ; F4DC A5 AA                    ..
        tax                                     ; F4DE AA                       .
        tax                                     ; F4DF AA                       .
        lsr     $55,x                           ; F4E0 56 55                    VU
        eor     $55,x                           ; F4E2 55 55                    UU
        eor     $55,x                           ; F4E4 55 55                    UU
        eor     $55,x                           ; F4E6 55 55                    UU
        eor     $55,x                           ; F4E8 55 55                    UU
        eor     $55,x                           ; F4EA 55 55                    UU
        eor     $55,x                           ; F4EC 55 55                    UU
        eor     $B5,x                           ; F4EE 55 B5                    U.
        tax                                     ; F4F0 AA                       .
        tax                                     ; F4F1 AA                       .
        tax                                     ; F4F2 AA                       .
        tax                                     ; F4F3 AA                       .
        tax                                     ; F4F4 AA                       .
        tax                                     ; F4F5 AA                       .
        tax                                     ; F4F6 AA                       .
        tax                                     ; F4F7 AA                       .
        tax                                     ; F4F8 AA                       .
        lsr     a                               ; F4F9 4A                       J
        eor     $55,x                           ; F4FA 55 55                    UU
        eor     $55,x                           ; F4FC 55 55                    UU
        eor     $55,x                           ; F4FE 55 55                    UU
        eor     $55,x                           ; F500 55 55                    UU
        eor     $55,x                           ; F502 55 55                    UU
        eor     $55,x                           ; F504 55 55                    UU
        eor     $55,x                           ; F506 55 55                    UU
        tax                                     ; F508 AA                       .
        tax                                     ; F509 AA                       .
        tax                                     ; F50A AA                       .
        eor     $55,x                           ; F50B 55 55                    UU
        ror     a                               ; F50D 6A                       j
        eor     $55,x                           ; F50E 55 55                    UU
        eor     $55,x                           ; F510 55 55                    UU
        eor     $55,x                           ; F512 55 55                    UU
        eor     $55,x                           ; F514 55 55                    UU
        eor     $55,x                           ; F516 55 55                    UU
        eor     $55,x                           ; F518 55 55                    UU
        eor     $55,x                           ; F51A 55 55                    UU
        eor     $55,x                           ; F51C 55 55                    UU
        eor     $55,x                           ; F51E 55 55                    UU
        eor     $00,x                           ; F520 55 00                    U.
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
        eor     $55,x                           ; F540 55 55                    UU
        eor     $95,x                           ; F542 55 95                    U.
        and     #$93                            ; F544 29 93                    ).
        ldx     $D6,y                           ; F546 B6 D6                    ..
        .byte   $52                             ; F548 52                       R
        .byte   $A7                             ; F549 A7                       .
        tsx                                     ; F54A BA                       .
        dec     $57,x                           ; F54B D6 57                    .W
        adc     $CA,x                           ; F54D 75 CA                    u.
        .byte   $AB                             ; F54F AB                       .
        bit     $89                             ; F550 24 89                    $.
        .byte   $42                             ; F552 42                       B
        eor     ($AE,x)                         ; F553 41 AE                    A.
        tax                                     ; F555 AA                       .
        .byte   $C6                             ; F556 C6                       .
LF557:  .byte   $47                             ; F557 47                       G
LF558:  pla                                     ; F558 68                       h
        cmp     #$00                            ; F559 C9 00                    ..
        ora     ($98,x)                         ; F55B 01 98                    ..
        .byte   $FF                             ; F55D FF                       .
        .byte   $3F                             ; F55E 3F                       ?
        .byte   $03                             ; F55F 03                       .
        .byte   $0F                             ; F560 0F                       .
        bmi     LF558                           ; F561 30 F5                    0.
        .byte   $BF                             ; F563 BF                       .
        dec     LFEFF                           ; F564 CE FF FE                 ...
        .byte   $7F                             ; F567 7F                       .
        cpy     #$40                            ; F568 C0 40                    .@
        .byte   $14                             ; F56A 14                       .
        tay                                     ; F56B A8                       .
        .byte   $8F                             ; F56C 8F                       .
        .byte   $2F                             ; F56D 2F                       /
        .byte   $6E                             ; F56E 6E                       n
LF56F:  and     $08                             ; F56F 25 08                    %.
        bmi     LF578                           ; F571 30 05                    0.
        sei                                     ; F573 78                       x
        .byte   $FF                             ; F574 FF                       .
        bvs     LF557                           ; F575 70 E0                    p.
        .byte   $1D                             ; F577 1D                       .
LF578:  .byte   $7F                             ; F578 7F                       .
        .byte   $F4                             ; F579 F4                       .
        .byte   $FC                             ; F57A FC                       .
        adc     $18                             ; F57B 65 18                    e.
        cpx     #$5A                            ; F57D E0 5A                    .Z
        .byte   $4B                             ; F57F 4B                       K
        nop                                     ; F580 EA                       .
        .byte   $83                             ; F581 83                       .
        stx     LF877                           ; F582 8E 77 F8                 .w.
        adc     ($00),y                         ; F585 71 00                    q.
        sta     ($01,x)                         ; F587 81 01                    ..
        php                                     ; F589 08                       .
        ror     $1FF5,x                         ; F58A 7E F5 1F                 ~..
        bmi     LF56F                           ; F58D 30 E0                    0.
        .byte   $B7                             ; F58F B7                       .
        cld                                     ; F590 D8                       .
        .byte   $FF                             ; F591 FF                       .
        .byte   $B7                             ; F592 B7                       .
        .byte   $DF                             ; F593 DF                       .
        dec     $3F                             ; F594 C6 3F                    .?
        sty     $4A40                           ; F596 8C 40 4A                 .@J
        lsr     a                               ; F599 4A                       J
        and     $6129                           ; F59A 2D 29 61                 -)a
        adc     $B0                             ; F59D 65 B0                    e.
        .byte   $E7                             ; F59F E7                       .
        dec     $5F                             ; F5A0 C6 5F                    ._
        dex                                     ; F5A2 CA                       .
        .byte   $E3                             ; F5A3 E3                       .
        .byte   $1F                             ; F5A4 1F                       .
        inc     $81E1,x                         ; F5A5 FE E1 81                 ...
        asl     a                               ; F5A8 0A                       .
        ldy     $42                             ; F5A9 A4 42                    .B
        brk                                     ; F5AB 00                       .
        eor     $5762,x                         ; F5AC 5D 62 57                 ]bW
        .byte   $54                             ; F5AF 54                       T
        inc     $84D3,x                         ; F5B0 FE D3 84                 ...
        ora     ($80,x)                         ; F5B3 01 80                    ..
        .byte   $E3                             ; F5B5 E3                       .
        .byte   $9F                             ; F5B6 9F                       .
LF5B7:  .byte   $CF                             ; F5B7 CF                       .
        .byte   $3F                             ; F5B8 3F                       ?
        inx                                     ; F5B9 E8                       .
        cmp     $DA96                           ; F5BA CD 96 DA                 ...
        sbc     $9FFD                           ; F5BD ED FD 9F                 ...
        .byte   $32                             ; F5C0 32                       2
        .byte   $FC                             ; F5C1 FC                       .
        ora     ($00,x)                         ; F5C2 01 00                    ..
        .byte   $F4                             ; F5C4 F4                       .
        .byte   $4B                             ; F5C5 4B                       K
        stx     $24,y                           ; F5C6 96 24                    .$
        lda     $61                             ; F5C8 A5 61                    .a
        cmp     $00                             ; F5CA C5 00                    ..
        ldx     $ABF1                           ; F5CC AE F1 AB                 ...
        .byte   $3F                             ; F5CF 3F                       ?
        bvs     LF5B7                           ; F5D0 70 E5                    p.
        cmp     $4078,x                         ; F5D2 DD 78 40                 .x@
        .byte   $EB                             ; F5D5 EB                       .
        .byte   $80                             ; F5D6 80                       .
        .byte   $43                             ; F5D7 43                       C
        tax                                     ; F5D8 AA                       .
        .byte   $52                             ; F5D9 52                       R
        sta     $83                             ; F5DA 85 83                    ..
        .byte   $FF                             ; F5DC FF                       .
        .byte   $F4                             ; F5DD F4                       .
        sei                                     ; F5DE 78                       x
        ora     #$78                            ; F5DF 09 78                    .x
        .byte   $80                             ; F5E1 80                       .
        .byte   $67                             ; F5E2 67                       g
        .byte   $FF                             ; F5E3 FF                       .
        .byte   $A7                             ; F5E4 A7                       .
        sbc     $5D07,y                         ; F5E5 F9 07 5D                 ..]
        brk                                     ; F5E8 00                       .
        .byte   $57                             ; F5E9 57                       W
        adc     $6FD5                           ; F5EA 6D D5 6F                 m.o
        .byte   $7B                             ; F5ED 7B                       {
        .byte   $7F                             ; F5EE 7F                       .
        rti                                     ; F5EF 40                       @

; ----------------------------------------------------------------------------
        asl     a                               ; F5F0 0A                       .
        ora     ($51),y                         ; F5F1 11 51                    .Q
        .byte   $92                             ; F5F3 92                       .
        asl     $6C                             ; F5F4 06 6C                    .l
        ora     $4AD8,y                         ; F5F6 19 D8 4A                 ..J
        .byte   $5B                             ; F5F9 5B                       [
        .byte   $FF                             ; F5FA FF                       .
        .byte   $5C                             ; F5FB 5C                       \
        and     $D8,x                           ; F5FC 35 D8                    5.
        .byte   $F4                             ; F5FE F4                       .
        .byte   $42                             ; F5FF 42                       B
        .byte   $5F                             ; F600 5F                       _
        tay                                     ; F601 A8                       .
        and     $15                             ; F602 25 15                    %.
        .byte   $14                             ; F604 14                       .
        sty     $20,x                           ; F605 94 20                    . 
        sbc     $FE,x                           ; F607 F5 FE                    ..
        .byte   $EB                             ; F609 EB                       .
        dec     $96,x                           ; F60A D6 96                    ..
        .byte   $04                             ; F60C 04                       .
        .byte   $80                             ; F60D 80                       .
        .byte   $FF                             ; F60E FF                       .
        .byte   $57                             ; F60F 57                       W
        .byte   $D7                             ; F610 D7                       .
        bit     $6DF4                           ; F611 2C F4 6D                 ,.m
        .byte   $AB                             ; F614 AB                       .
        adc     $AB,x                           ; F615 75 AB                    u.
        nop                                     ; F617 EA                       .
        tax                                     ; F618 AA                       .
        tax                                     ; F619 AA                       .
        ldy     $F1,x                           ; F61A B4 F1                    ..
        .byte   $03                             ; F61C 03                       .
        php                                     ; F61D 08                       .
        .byte   $02                             ; F61E 02                       .
        eor     #$9B                            ; F61F 49 9B                    I.
        .byte   $04                             ; F621 04                       .
        ora     ($74,x)                         ; F622 01 74                    .t
        brk                                     ; F624 00                       .
        .byte   $A7                             ; F625 A7                       .
        .byte   $F7                             ; F626 F7                       .
        .byte   $3F                             ; F627 3F                       ?
        .byte   $57                             ; F628 57                       W
        stx     LFC7A                           ; F629 8E 7A FC                 .z.
        cmp     $3F                             ; F62C C5 3F                    .?
        .byte   $5B                             ; F62E 5B                       [
        clc                                     ; F62F 18                       .
        tay                                     ; F630 A8                       .
        .byte   $22                             ; F631 22                       "
        adc     $56AD                           ; F632 6D AD 56                 m.V
        sbc     $5428,x                         ; F635 FD 28 54                 .(T
        lda     $4A                             ; F638 A5 4A                    .J
        tsx                                     ; F63A BA                       .
        eor     $77,x                           ; F63B 55 77                    Uw
        ror     a                               ; F63D 6A                       j
        .byte   $DB                             ; F63E DB                       .
        rol     $90,x                           ; F63F 36 90                    6.
        tax                                     ; F641 AA                       .
        ror     a                               ; F642 6A                       j
        lda     $76,x                           ; F643 B5 76                    .v
        .byte   $5B                             ; F645 5B                       [
        .byte   $E7                             ; F646 E7                       .
        .byte   $2F                             ; F647 2F                       /
        asl     a                               ; F648 0A                       .
        rti                                     ; F649 40                       @

; ----------------------------------------------------------------------------
        php                                     ; F64A 08                       .
        ora     ($49),y                         ; F64B 11 49                    .I
        .byte   $04                             ; F64D 04                       .
        .byte   $02                             ; F64E 02                       .
        .byte   $3C                             ; F64F 3C                       <
        .byte   $D4                             ; F650 D4                       .
        cmp     $BF,x                           ; F651 D5 BF                    ..
        inc     $6BB3,x                         ; F653 FE B3 6B                 ..k
        eor     $55                             ; F656 45 55                    EU
        .byte   $FA                             ; F658 FA                       .
        sbc     ($4F),y                         ; F659 F1 4F                    .O
        lda     $5A                             ; F65B A5 5A                    .Z
        and     $11                             ; F65D 25 11                    %.
        .byte   $92                             ; F65F 92                       .
        lsr     $6D,x                           ; F660 56 6D                    Vm
        lda     $AD,x                           ; F662 B5 AD                    ..
        .byte   $54                             ; F664 54                       T
        rol     a                               ; F665 2A                       *
        .byte   $03                             ; F666 03                       .
        ldx     $56AA,y                         ; F667 BE AA 56                 ..V
        .byte   $DA                             ; F66A DA                       .
        lda     $D6AD                           ; F66B AD AD D6                 ...
        ror     a                               ; F66E 6A                       j
        lda     $2DB5                           ; F66F AD B5 2D                 ..-
        and     $25                             ; F672 25 25                    %%
        and     #$2F                            ; F674 29 2F                    )/
        jsr     L8549                           ; F676 20 49 85                  I.
        php                                     ; F679 08                       .
        eor     #$06                            ; F67A 49 06                    I.
        ldy     $41                             ; F67C A4 41                    .A
        .byte   $AF                             ; F67E AF                       .
        sbc     $BD5F                           ; F67F ED 5F BD                 ._.
        lda     $A0,x                           ; F682 B5 A0                    ..
        lsr     $FD,x                           ; F684 56 FD                    V.
        sbc     $A7,x                           ; F686 F5 A7                    ..
        sta     $52,x                           ; F688 95 52                    .R
        lda     ($56,x)                         ; F68A A1 56                    .V
        and     #$55                            ; F68C 29 55                    )U
        .byte   $BB                             ; F68E BB                       .
        eor     $D5,x                           ; F68F 55 D5                    U.
        bvc     LF6EA                           ; F691 50 57                    PW
        adc     $AB,x                           ; F693 75 AB                    u.
        tax                                     ; F695 AA                       .
        sty     $56,x                           ; F696 94 56                    .V
        sta     $5A,x                           ; F698 95 5A                    .Z
        .byte   $AB                             ; F69A AB                       .
        .byte   $52                             ; F69B 52                       R
        lsr     a                               ; F69C 4A                       J
        tax                                     ; F69D AA                       .
        eor     $44AA                           ; F69E 4D AA 44                 M.D
        sta     ($44),y                         ; F6A1 91 44                    .D
        eor     #$15                            ; F6A3 49 15                    I.
        adc     #$25                            ; F6A5 69 25                    i%
        ora     $7A38,y                         ; F6A7 19 38 7A                 .8z
        .byte   $F7                             ; F6AA F7                       .
        lda     $6BF5                           ; F6AB AD F5 6B                 ..k
        eor     $55,x                           ; F6AE 55 55                    UU
        eor     $7575,y                         ; F6B0 59 75 75                 Yuu
        .byte   $AF                             ; F6B3 AF                       .
        ldy     $92                             ; F6B4 A4 92                    ..
        lsr     $A9,x                           ; F6B6 56 A9                    V.
        ldy     $B6                             ; F6B8 A4 B6                    ..
        lsr     $D5,x                           ; F6BA 56 D5                    V.
        rts                                     ; F6BC 60                       `

; ----------------------------------------------------------------------------
        .byte   $AB                             ; F6BD AB                       .
        tsx                                     ; F6BE BA                       .
        .byte   $AB                             ; F6BF AB                       .
        .byte   $52                             ; F6C0 52                       R
        lda     $56                             ; F6C1 A5 56                    .V
        sta     $5A,x                           ; F6C3 95 5A                    .Z
        .byte   $AB                             ; F6C5 AB                       .
        .byte   $52                             ; F6C6 52                       R
        lsr     a                               ; F6C7 4A                       J
        tax                                     ; F6C8 AA                       .
        eor     $44AA                           ; F6C9 4D AA 44                 M.D
        sta     ($24),y                         ; F6CC 91 24                    .$
        eor     #$15                            ; F6CE 49 15                    I.
        adc     #$25                            ; F6D0 69 25                    i%
        and     $30,x                           ; F6D2 35 30                    50
        inc     $BD,x                           ; F6D4 F6 BD                    ..
        .byte   $6B                             ; F6D6 6B                       k
        sbc     $6F57                           ; F6D7 ED 57 6F                 .Wo
        .byte   $53                             ; F6DA 53                       S
        bvc     LF732                           ; F6DB 50 55                    PU
        .byte   $7A                             ; F6DD 7A                       z
        .byte   $7F                             ; F6DE 7F                       .
        lda     #$CA                            ; F6DF A9 CA                    ..
        tax                                     ; F6E1 AA                       .
        rol     a                               ; F6E2 2A                       *
        eor     $D4                             ; F6E3 45 D4                    E.
        ror     a                               ; F6E5 6A                       j
        .byte   $93                             ; F6E6 93                       .
        bit     $55                             ; F6E7 24 55                    $U
        .byte   $6D                             ; F6E9 6D                       m
LF6EA:  .byte   $53                             ; F6EA 53                       S
        eor     ($95,x)                         ; F6EB 41 95                    A.
        .byte   $5A                             ; F6ED 5A                       Z
        .byte   $AB                             ; F6EE AB                       .
        eor     $6B,x                           ; F6EF 55 6B                    Uk
        .byte   $AB                             ; F6F1 AB                       .
        tax                                     ; F6F2 AA                       .
        eor     $55,x                           ; F6F3 55 55                    UU
        lda     $5255                           ; F6F5 AD 55 52                 .UR
        tax                                     ; F6F8 AA                       .
        asl     $9548,x                         ; F6F9 1E 48 95                 .H.
        .byte   $42                             ; F6FC 42                       B
        .byte   $54                             ; F6FD 54                       T
        lda     $54                             ; F6FE A5 54                    .T
        ldy     #$06                            ; F700 A0 06                    ..
        rol     LFF55                           ; F702 2E 55 FF                 .U.
        .byte   $BB                             ; F705 BB                       .
        adc     $B455                           ; F706 6D 55 B4                 mU.
        .byte   $6B                             ; F709 6B                       k
        adc     $7F,x                           ; F70A 75 7F                    u.
        adc     $AB,x                           ; F70C 75 AB                    u.
        eor     $44,x                           ; F70E 55 44                    UD
        .byte   $52                             ; F710 52                       R
        eor     $53,x                           ; F711 55 53                    US
        lda     $94                             ; F713 A5 94                    ..
        lsr     a                               ; F715 4A                       J
        .byte   $43                             ; F716 43                       C
        lda     $94A6,x                         ; F717 BD A6 94                 ...
        tax                                     ; F71A AA                       .
        .byte   $5A                             ; F71B 5A                       Z
        lda     #$AA                            ; F71C A9 AA                    ..
        adc     #$CA                            ; F71E 69 CA                    i.
        .byte   $DA                             ; F720 DA                       .
        and     $A9                             ; F721 25 A9                    %.
        .byte   $54                             ; F723 54                       T
        .byte   $22                             ; F724 22                       "
        eor     #$25                            ; F725 49 25                    I%
        eor     ($6A),y                         ; F727 51 6A                    Qj
        lda     $D255                           ; F729 AD 55 D2                 .U.
        cpy     #$57                            ; F72C C0 57                    .W
        .byte   $BB                             ; F72E BB                       .
        .byte   $EB                             ; F72F EB                       .
        .byte   $5E                             ; F730 5E                       ^
        .byte   $7B                             ; F731 7B                       {
LF732:  .byte   $6B                             ; F732 6B                       k
        sta     $54,x                           ; F733 95 54                    .T
        cmp     $DA,x                           ; F735 D5 DA                    ..
        .byte   $FC                             ; F737 FC                       .
        cmp     $AA                             ; F738 C5 AA                    ..
        tax                                     ; F73A AA                       .
        lsr     a                               ; F73B 4A                       J
        ora     ($42),y                         ; F73C 11 42                    .B
        .byte   $52                             ; F73E 52                       R
        eor     $52,x                           ; F73F 55 52                    UR
        tax                                     ; F741 AA                       .
        adc     $0A55                           ; F742 6D 55 0A                 mU.
LF745:  .byte   $54                             ; F745 54                       T
        adc     #$DB                            ; F746 69 DB                    i.
        ldx     $D5,y                           ; F748 B6 D5                    ..
        ldx     $AA                             ; F74A A6 AA                    ..
        .byte   $54                             ; F74C 54                       T
        lda     $AA,x                           ; F74D B5 AA                    ..
        ror     a                               ; F74F 6A                       j
        eor     $55,x                           ; F750 55 55                    UU
        tsx                                     ; F752 BA                       .
        ldy     $4A                             ; F753 A4 4A                    .J
        and     #$A5                            ; F755 29 A5                    ).
        lsr     a                               ; F757 4A                       J
        lda     #$A8                            ; F758 A9 A8                    ..
        asl     $35                             ; F75A 06 35                    .5
        cmp     $B5,x                           ; F75C D5 B5                    ..
        cmp     $B576,x                         ; F75E DD 76 B5                 .v.
        tax                                     ; F761 AA                       .
        tax                                     ; F762 AA                       .
        .byte   $DA                             ; F763 DA                       .
        inc     $2B55,x                         ; F764 FE 55 2B                 .U+
        eor     #$92                            ; F767 49 92                    I.
        bit     $55                             ; F769 24 55                    $U
        cmp     $AA,x                           ; F76B D5 AA                    ..
        tax                                     ; F76D AA                       .
        .byte   $92                             ; F76E 92                       .
        .byte   $52                             ; F76F 52                       R
        txa                                     ; F770 8A                       .
        ldx     $5A,y                           ; F771 B6 5A                    .Z
        eor     $AA,x                           ; F773 55 AA                    U.
        tax                                     ; F775 AA                       .
        ror     a                               ; F776 6A                       j
        eor     $55,x                           ; F777 55 55                    UU
        .byte   $5B                             ; F779 5B                       [
        .byte   $52                             ; F77A 52                       R
        eor     #$4A                            ; F77B 49 4A                    IJ
        eor     $AD,x                           ; F77D 55 AD                    U.
        tax                                     ; F77F AA                       .
        tax                                     ; F780 AA                       .
        tax                                     ; F781 AA                       .
        .byte   $54                             ; F782 54                       T
        .byte   $54                             ; F783 54                       T
        .byte   $AB                             ; F784 AB                       .
        lda     $56B5                           ; F785 AD B5 56                 ..V
        .byte   $DB                             ; F788 DB                       .
        lsr     $AB,x                           ; F789 56 AB                    V.
        tax                                     ; F78B AA                       .
        .byte   $54                             ; F78C 54                       T
        eor     $55,x                           ; F78D 55 55                    UU
        lda     $4937                           ; F78F AD 37 49                 .7I
        .byte   $92                             ; F792 92                       .
        tax                                     ; F793 AA                       .
        sty     $CA,x                           ; F794 94 CA                    ..
        rol     a                               ; F796 2A                       *
        sta     $48,x                           ; F797 95 48                    .H
        lda     #$55                            ; F799 A9 55                    .U
        .byte   $DB                             ; F79B DB                       .
        tax                                     ; F79C AA                       .
        tax                                     ; F79D AA                       .
        bcc     LF745                           ; F79E 90 A5                    ..
        ldx     $AA,y                           ; F7A0 B6 AA                    ..
        .byte   $DA                             ; F7A2 DA                       .
        lsr     $4B,x                           ; F7A3 56 4B                    VK
        eor     $55,x                           ; F7A5 55 55                    UU
        cmp     $D6,x                           ; F7A7 D5 D6                    ..
        tax                                     ; F7A9 AA                       .
        lsr     a                               ; F7AA 4A                       J
        tax                                     ; F7AB AA                       .
        eor     $AD,x                           ; F7AC 55 AD                    U.
        lsr     a                               ; F7AE 4A                       J
        eor     #$49                            ; F7AF 49 49                    II
        txa                                     ; F7B1 8A                       .
        ror     a                               ; F7B2 6A                       j
        eor     $AB,x                           ; F7B3 55 AB                    U.
        tax                                     ; F7B5 AA                       .
        tax                                     ; F7B6 AA                       .
        ldx     $D6,y                           ; F7B7 B6 D6                    ..
        dec     $5A,x                           ; F7B9 D6 5A                    .Z
        cmp     $DC,x                           ; F7BB D5 DC                    ..
        .byte   $92                             ; F7BD 92                       .
        .byte   $52                             ; F7BE 52                       R
        eor     $55,x                           ; F7BF 55 55                    UU
        .byte   $92                             ; F7C1 92                       .
        .byte   $54                             ; F7C2 54                       T
        eor     $55,x                           ; F7C3 55 55                    UU
        eor     $55,x                           ; F7C5 55 55                    UU
        lda     $94                             ; F7C7 A5 94                    ..
        .byte   $52                             ; F7C9 52                       R
        lda     $5696                           ; F7CA AD 96 56                 ..V
        lda     $2A                             ; F7CD A5 2A                    .*
        cmp     $5A,x                           ; F7CF D5 5A                    .Z
        eor     $5B,x                           ; F7D1 55 5B                    U[
        .byte   $2B                             ; F7D3 2B                       +
        eor     $55,x                           ; F7D4 55 55                    UU
        eor     $5B,x                           ; F7D6 55 5B                    U[
        .byte   $AB                             ; F7D8 AB                       .
        rol     a                               ; F7D9 2A                       *
        lda     #$56                            ; F7DA A9 56                    .V
        cmp     $2A,x                           ; F7DC D5 2A                    .*
        and     $25                             ; F7DE 25 25                    %%
        and     #$A9                            ; F7E0 29 A9                    ).
        eor     $AD,x                           ; F7E2 55 AD                    U.
        tax                                     ; F7E4 AA                       .
        tax                                     ; F7E5 AA                       .
        .byte   $DA                             ; F7E6 DA                       .
        .byte   $5A                             ; F7E7 5A                       Z
        .byte   $6B                             ; F7E8 6B                       k
        .byte   $6B                             ; F7E9 6B                       k
        eor     $B3,x                           ; F7EA 55 B3                    U.
        .byte   $4B                             ; F7EC 4B                       K
        lsr     a                               ; F7ED 4A                       J
        eor     $55,x                           ; F7EE 55 55                    UU
        .byte   $92                             ; F7F0 92                       .
        .byte   $54                             ; F7F1 54                       T
        lda     #$AA                            ; F7F2 A9 AA                    ..
        eor     $55,x                           ; F7F4 55 55                    UU
        eor     $95,x                           ; F7F6 55 95                    U.
        bit     $55                             ; F7F8 24 55                    $U
        eor     $DAD5                           ; F7FA 4D D5 DA                 M..
        tax                                     ; F7FD AA                       .
        sty     $6A,x                           ; F7FE 94 6A                    .j
        adc     $5AD5                           ; F800 6D D5 5A                 m.Z
        lsr     a                               ; F803 4A                       J
        and     #$AD                            ; F804 29 AD                    ).
        cmp     $AA,x                           ; F806 D5 AA                    ..
        tax                                     ; F808 AA                       .
        .byte   $52                             ; F809 52                       R
        lda     $54                             ; F80A A5 54                    .T
        lda     $AB55                           ; F80C AD 55 AB                 .U.
        ldx     $AA                             ; F80F A6 AA                    ..
        tax                                     ; F811 AA                       .
        lda     $B6,x                           ; F812 B5 B6                    ..
        rol     a                               ; F814 2A                       *
        eor     $55,x                           ; F815 55 55                    UU
        cmp     $4A,x                           ; F817 D5 4A                    .J
        eor     $A9,x                           ; F819 55 A9                    U.
        lsr     a                               ; F81B 4A                       J
        lsr     a                               ; F81C 4A                       J
        lda     $4A                             ; F81D A5 4A                    .J
        lsr     a                               ; F81F 4A                       J
        lda     #$AA                            ; F820 A9 AA                    ..
        .byte   $52                             ; F822 52                       R
        tax                                     ; F823 AA                       .
        ldx     $55,y                           ; F824 B6 55                    .U
        lda     $B4,x                           ; F826 B5 B4                    ..
        tax                                     ; F828 AA                       .
        .byte   $B2                             ; F829 B2                       .
        .byte   $DA                             ; F82A DA                       .
        .byte   $5A                             ; F82B 5A                       Z
        cmp     $6A,x                           ; F82C D5 6A                    .j
        cmp     $6A,x                           ; F82E D5 6A                    .j
        eor     $B5,x                           ; F830 55 B5                    U.
        tax                                     ; F832 AA                       .
        .byte   $44                             ; F833 44                       D
        ldy     $AC,x                           ; F834 B4 AC                    ..
        tax                                     ; F836 AA                       .
        .byte   $54                             ; F837 54                       T
        lda     $AA                             ; F838 A5 AA                    ..
        tax                                     ; F83A AA                       .
        ror     a                               ; F83B 6A                       j
        eor     $2D,x                           ; F83C 55 2D                    U-
        eor     $D5,x                           ; F83E 55 D5                    U.
        ldx     $66                             ; F840 A6 66                    .f
        lda     $AD26                           ; F842 AD 26 AD                 .&.
        .byte   $54                             ; F845 54                       T
        lda     $52                             ; F846 A5 52                    .R
        eor     $95,x                           ; F848 55 95                    U.
        .byte   $52                             ; F84A 52                       R
        tax                                     ; F84B AA                       .
        eor     $56,x                           ; F84C 55 56                    UV
        lda     $5555                           ; F84E AD 55 55                 .UU
        sta     $AA,x                           ; F851 95 AA                    ..
        .byte   $B2                             ; F853 B2                       .
        sta     $A5,x                           ; F854 95 A5                    ..
        .byte   $54                             ; F856 54                       T
        cmp     $55AA,y                         ; F857 D9 AA 55                 ..U
        eor     $55,x                           ; F85A 55 55                    UU
        sta     $92,x                           ; F85C 95 92                    ..
        tax                                     ; F85E AA                       .
        ror     a                               ; F85F 6A                       j
        eor     $2ADB,x                         ; F860 5D DB 2A                 ].*
        lda     $5A                             ; F863 A5 5A                    .Z
        lda     $AA,x                           ; F865 B5 AA                    ..
        tax                                     ; F867 AA                       .
        tax                                     ; F868 AA                       .
        .byte   $54                             ; F869 54                       T
        eor     $AD,x                           ; F86A 55 AD                    U.
        tax                                     ; F86C AA                       .
        lsr     a                               ; F86D 4A                       J
        lda     #$54                            ; F86E A9 54                    .T
        lda     #$AA                            ; F870 A9 AA                    ..
        tax                                     ; F872 AA                       .
        tax                                     ; F873 AA                       .
        tax                                     ; F874 AA                       .
        tax                                     ; F875 AA                       .
        .byte   $52                             ; F876 52                       R
LF877:  sta     $AA,x                           ; F877 95 AA                    ..
        lsr     $A9,x                           ; F879 56 A9                    V.
        .byte   $B2                             ; F87B B2                       .
        ldx     $D5,y                           ; F87C B6 D5                    ..
        ldx     $9A,y                           ; F87E B6 9A                    ..
        .byte   $52                             ; F880 52                       R
        rol     a                               ; F881 2A                       *
        eor     $55,x                           ; F882 55 55                    UU
        lda     $AA,x                           ; F884 B5 AA                    ..
        lsr     a                               ; F886 4A                       J
        eor     $55,x                           ; F887 55 55                    UU
        eor     $29,x                           ; F889 55 29                    U)
        eor     $B5,x                           ; F88B 55 B5                    U.
        .byte   $54                             ; F88D 54                       T
        cmp     $56,x                           ; F88E D5 56                    .V
        lda     $AA,x                           ; F890 B5 AA                    ..
        tax                                     ; F892 AA                       .
        .byte   $D2                             ; F893 D2                       .
        tax                                     ; F894 AA                       .
        .byte   $54                             ; F895 54                       T
        cmp     $AA,x                           ; F896 D5 AA                    ..
        eor     $55,x                           ; F898 55 55                    UU
        eor     $AA,x                           ; F89A 55 AA                    U.
        tax                                     ; F89C AA                       .
        .byte   $54                             ; F89D 54                       T
        eor     $55,x                           ; F89E 55 55                    UU
        eor     $AB,x                           ; F8A0 55 AB                    U.
        eor     $95,x                           ; F8A2 55 95                    U.
        .byte   $14                             ; F8A4 14                       .
        lda     #$B4                            ; F8A5 A9 B4                    ..
        tax                                     ; F8A7 AA                       .
        cmp     $AA,x                           ; F8A8 D5 AA                    ..
        .byte   $54                             ; F8AA 54                       T
        eor     $B5,x                           ; F8AB 55 B5                    U.
        ror     a                               ; F8AD 6A                       j
        eor     $A5,x                           ; F8AE 55 A5                    U.
        eor     $55,x                           ; F8B0 55 55                    UU
        eor     $55,x                           ; F8B2 55 55                    UU
        eor     $AB,x                           ; F8B4 55 AB                    U.
        sta     $52,x                           ; F8B6 95 52                    .R
        eor     $AD,x                           ; F8B8 55 AD                    U.
        .byte   $5A                             ; F8BA 5A                       Z
        lda     $AA,x                           ; F8BB B5 AA                    ..
        .byte   $D4                             ; F8BD D4                       .
        tax                                     ; F8BE AA                       .
        lsr     a                               ; F8BF 4A                       J
        lsr     a                               ; F8C0 4A                       J
        eor     $55,x                           ; F8C1 55 55                    UU
        eor     $95,x                           ; F8C3 55 95                    U.
        tax                                     ; F8C5 AA                       .
        tax                                     ; F8C6 AA                       .
        tax                                     ; F8C7 AA                       .
        tax                                     ; F8C8 AA                       .
        eor     $55,x                           ; F8C9 55 55                    UU
        eor     $55,x                           ; F8CB 55 55                    UU
        eor     $A5,x                           ; F8CD 55 A5                    U.
        tax                                     ; F8CF AA                       .
        .byte   $5A                             ; F8D0 5A                       Z
        eor     $55,x                           ; F8D1 55 55                    UU
        and     #$55                            ; F8D3 29 55                    )U
        .byte   $6B                             ; F8D5 6B                       k
        eor     $B5,x                           ; F8D6 55 B5                    U.
        lsr     $55,x                           ; F8D8 56 55                    VU
        lda     $2A                             ; F8DA A5 2A                    .*
        eor     $55,x                           ; F8DC 55 55                    UU
        eor     $55,x                           ; F8DE 55 55                    UU
        eor     $55,x                           ; F8E0 55 55                    UU
        eor     $55,x                           ; F8E2 55 55                    UU
        eor     $A5,x                           ; F8E4 55 A5                    U.
        .byte   $54                             ; F8E6 54                       T
        eor     $55,x                           ; F8E7 55 55                    UU
        .byte   $6B                             ; F8E9 6B                       k
        lda     $AA,x                           ; F8EA B5 AA                    ..
        tax                                     ; F8EC AA                       .
        .byte   $52                             ; F8ED 52                       R
        eor     $55,x                           ; F8EE 55 55                    UU
        eor     $55,x                           ; F8F0 55 55                    UU
        .byte   $6B                             ; F8F2 6B                       k
        .byte   $6B                             ; F8F3 6B                       k
        sta     $52,x                           ; F8F4 95 52                    .R
        eor     $A5,x                           ; F8F6 55 A5                    U.
        .byte   $52                             ; F8F8 52                       R
        lda     $4A                             ; F8F9 A5 4A                    .J
        eor     $55,x                           ; F8FB 55 55                    UU
        eor     $AA,x                           ; F8FD 55 AA                    U.
        tax                                     ; F8FF AA                       .
        tax                                     ; F900 AA                       .
        ror     a                               ; F901 6A                       j
        lda     $AA,x                           ; F902 B5 AA                    ..
        tax                                     ; F904 AA                       .
        .byte   $5A                             ; F905 5A                       Z
        lda     $AA,x                           ; F906 B5 AA                    ..
        rol     a                               ; F908 2A                       *
        eor     $55,x                           ; F909 55 55                    UU
        eor     $55,x                           ; F90B 55 55                    UU
        lda     $4AAA                           ; F90D AD AA 4A                 ..J
        eor     $55,x                           ; F910 55 55                    UU
        lda     $5A,x                           ; F912 B5 5A                    .Z
        eor     $55,x                           ; F914 55 55                    UU
        lda     $A52A                           ; F916 AD 2A A5                 .*.
        .byte   $54                             ; F919 54                       T
        eor     $55,x                           ; F91A 55 55                    UU
        eor     $AA,x                           ; F91C 55 AA                    U.
        tax                                     ; F91E AA                       .
        tax                                     ; F91F AA                       .
        tax                                     ; F920 AA                       .
        .byte   $5A                             ; F921 5A                       Z
        eor     $55,x                           ; F922 55 55                    UU
        eor     $55,x                           ; F924 55 55                    UU
        eor     $AA,x                           ; F926 55 AA                    U.
        tax                                     ; F928 AA                       .
        eor     $55,x                           ; F929 55 55                    UU
        lda     $54                             ; F92B A5 54                    .T
        lda     $56,x                           ; F92D B5 56                    .V
        cmp     $5A,x                           ; F92F D5 5A                    .Z
        eor     $55,x                           ; F931 55 55                    UU
        tax                                     ; F933 AA                       .
        .byte   $52                             ; F934 52                       R
        eor     $55,x                           ; F935 55 55                    UU
        eor     $55,x                           ; F937 55 55                    UU
        eor     $55,x                           ; F939 55 55                    UU
        eor     $55,x                           ; F93B 55 55                    UU
        eor     $4A,x                           ; F93D 55 4A                    UJ
        eor     $55,x                           ; F93F 55 55                    UU
        lda     $D5,x                           ; F941 B5 D5                    ..
        tax                                     ; F943 AA                       .
        tax                                     ; F944 AA                       .
        rol     a                               ; F945 2A                       *
        eor     $55,x                           ; F946 55 55                    UU
        eor     $55,x                           ; F948 55 55                    UU
        lda     $B5,x                           ; F94A B5 B5                    ..
        lsr     $29,x                           ; F94C 56 29                    V)
        eor     $95,x                           ; F94E 55 95                    U.
        rol     a                               ; F950 2A                       *
        eor     $2A,x                           ; F951 55 2A                    U*
        eor     $55,x                           ; F953 55 55                    UU
        eor     $A9,x                           ; F955 55 A9                    U.
        tax                                     ; F957 AA                       .
        .byte   $52                             ; F958 52                       R
        lda     $AAD6                           ; F959 AD D6 AA                 ...
        tax                                     ; F95C AA                       .
        .byte   $5A                             ; F95D 5A                       Z
        lda     $AD,x                           ; F95E B5 AD                    ..
        lsr     a                               ; F960 4A                       J
        eor     $A9,x                           ; F961 55 A9                    U.
        tax                                     ; F963 AA                       .
        tax                                     ; F964 AA                       .
        tax                                     ; F965 AA                       .
        tax                                     ; F966 AA                       .
        .byte   $52                             ; F967 52                       R
        eor     $AA,x                           ; F968 55 AA                    U.
        tax                                     ; F96A AA                       .
        eor     $55,x                           ; F96B 55 55                    UU
        eor     $AD,x                           ; F96D 55 AD                    U.
        lda     $52,x                           ; F96F B5 52                    .R
        .byte   $52                             ; F971 52                       R
        sta     $AA,x                           ; F972 95 AA                    ..
        ror     a                               ; F974 6A                       j
        eor     $55,x                           ; F975 55 55                    UU
        sta     $4A,x                           ; F977 95 4A                    .J
        eor     $D5,x                           ; F979 55 D5                    U.
        ror     a                               ; F97B 6A                       j
        eor     $AB,x                           ; F97C 55 AB                    U.
        .byte   $52                             ; F97E 52                       R
        eor     $55,x                           ; F97F 55 55                    UU
        eor     $55,x                           ; F981 55 55                    UU
        eor     $B5,x                           ; F983 55 B5                    U.
        .byte   $5A                             ; F985 5A                       Z
        .byte   $AB                             ; F986 AB                       .
        lsr     a                               ; F987 4A                       J
        eor     $55,x                           ; F988 55 55                    UU
        rol     a                               ; F98A 2A                       *
        eor     $A9,x                           ; F98B 55 A9                    U.
        .byte   $54                             ; F98D 54                       T
        eor     $55,x                           ; F98E 55 55                    UU
        lda     $AA                             ; F990 A5 AA                    ..
        .byte   $52                             ; F992 52                       R
        lda     $AB5A                           ; F993 AD 5A AB                 .Z.
        tax                                     ; F996 AA                       .
        ror     a                               ; F997 6A                       j
        lda     $B5,x                           ; F998 B5 B5                    ..
        lsr     a                               ; F99A 4A                       J
        eor     $A5,x                           ; F99B 55 A5                    U.
        tax                                     ; F99D AA                       .
        tax                                     ; F99E AA                       .
        tax                                     ; F99F AA                       .
        tax                                     ; F9A0 AA                       .
        lsr     a                               ; F9A1 4A                       J
        eor     $AA,x                           ; F9A2 55 AA                    U.
        tax                                     ; F9A4 AA                       .
        lsr     $55,x                           ; F9A5 56 55                    VU
        eor     $AD,x                           ; F9A7 55 AD                    U.
        lda     $52,x                           ; F9A9 B5 52                    .R
        .byte   $52                             ; F9AB 52                       R
        sta     $AA,x                           ; F9AC 95 AA                    ..
        tax                                     ; F9AE AA                       .
        eor     $55,x                           ; F9AF 55 55                    UU
        eor     $2A,x                           ; F9B1 55 2A                    U*
        eor     $B5,x                           ; F9B3 55 B5                    U.
        .byte   $5A                             ; F9B5 5A                       Z
        eor     $55,x                           ; F9B6 55 55                    UU
        eor     $55,x                           ; F9B8 55 55                    UU
        eor     $55,x                           ; F9BA 55 55                    UU
        eor     $AB,x                           ; F9BC 55 AB                    U.
        tax                                     ; F9BE AA                       .
        tax                                     ; F9BF AA                       .
        tax                                     ; F9C0 AA                       .
        tax                                     ; F9C1 AA                       .
        ror     a                               ; F9C2 6A                       j
        eor     $A5,x                           ; F9C3 55 A5                    U.
        tax                                     ; F9C5 AA                       .
        lsr     a                               ; F9C6 4A                       J
        sta     $54,x                           ; F9C7 95 54                    .T
        eor     $AA,x                           ; F9C9 55 AA                    U.
        tax                                     ; F9CB AA                       .
        .byte   $5A                             ; F9CC 5A                       Z
        .byte   $AB                             ; F9CD AB                       .
        tax                                     ; F9CE AA                       .
        .byte   $5A                             ; F9CF 5A                       Z
        eor     $D5,x                           ; F9D0 55 D5                    U.
        tax                                     ; F9D2 AA                       .
        tax                                     ; F9D3 AA                       .
        tax                                     ; F9D4 AA                       .
        cmp     $AA,x                           ; F9D5 D5 AA                    ..
        rol     a                               ; F9D7 2A                       *
        eor     $55,x                           ; F9D8 55 55                    UU
        lda     #$54                            ; F9DA A9 54                    .T
        eor     $55,x                           ; F9DC 55 55                    UU
        lda     $AA                             ; F9DE A5 AA                    ..
        eor     $55,x                           ; F9E0 55 55                    UU
        eor     $55,x                           ; F9E2 55 55                    UU
        sta     $52,x                           ; F9E4 95 52                    .R
        eor     $AB,x                           ; F9E6 55 AB                    U.
        .byte   $5A                             ; F9E8 5A                       Z
        eor     $55,x                           ; F9E9 55 55                    UU
        lda     #$AA                            ; F9EB A9 AA                    ..
        lsr     $55,x                           ; F9ED 56 55                    VU
        eor     $55,x                           ; F9EF 55 55                    UU
        .byte   $AB                             ; F9F1 AB                       .
        sta     $AA,x                           ; F9F2 95 AA                    ..
        .byte   $52                             ; F9F4 52                       R
        eor     $55,x                           ; F9F5 55 55                    UU
        eor     $55,x                           ; F9F7 55 55                    UU
        eor     $55,x                           ; F9F9 55 55                    UU
        eor     $55,x                           ; F9FB 55 55                    UU
        cmp     $AA,x                           ; F9FD D5 AA                    ..
        lsr     a                               ; F9FF 4A                       J
        eor     $55,x                           ; FA00 55 55                    UU
        eor     $AA,x                           ; FA02 55 AA                    U.
        tax                                     ; FA04 AA                       .
        tax                                     ; FA05 AA                       .
        tax                                     ; FA06 AA                       .
        tax                                     ; FA07 AA                       .
        tax                                     ; FA08 AA                       .
        ror     a                               ; FA09 6A                       j
        eor     $55,x                           ; FA0A 55 55                    UU
        eor     $D5,x                           ; FA0C 55 D5                    U.
        .byte   $5A                             ; FA0E 5A                       Z
        lda     $AAAA                           ; FA0F AD AA AA                 ...
        sty     $52,x                           ; FA12 94 52                    .R
        eor     $AA,x                           ; FA14 55 AA                    U.
        .byte   $5A                             ; FA16 5A                       Z
        lda     #$52                            ; FA17 A9 52                    .R
        lda     $55AA                           ; FA19 AD AA 55                 ..U
        eor     $55,x                           ; FA1C 55 55                    UU
        eor     $55,x                           ; FA1E 55 55                    UU
        lda     #$D2                            ; FA20 A9 D2                    ..
        tax                                     ; FA22 AA                       .
        tax                                     ; FA23 AA                       .
        .byte   $5A                             ; FA24 5A                       Z
        eor     $55,x                           ; FA25 55 55                    UU
        cmp     $AA,x                           ; FA27 D5 AA                    ..
        ror     a                               ; FA29 6A                       j
        eor     $55,x                           ; FA2A 55 55                    UU
        eor     $A5,x                           ; FA2C 55 A5                    U.
        tax                                     ; FA2E AA                       .
        lsr     a                               ; FA2F 4A                       J
        eor     $55,x                           ; FA30 55 55                    UU
        sta     $6A,x                           ; FA32 95 6A                    .j
        eor     $55,x                           ; FA34 55 55                    UU
        eor     $55,x                           ; FA36 55 55                    UU
        sta     $AA,x                           ; FA38 95 AA                    ..
        eor     $55,x                           ; FA3A 55 55                    UU
        eor     $55,x                           ; FA3C 55 55                    UU
        eor     $55,x                           ; FA3E 55 55                    UU
        lda     $AA                             ; FA40 A5 AA                    ..
        tax                                     ; FA42 AA                       .
        lsr     $55,x                           ; FA43 56 55                    VU
        eor     $55,x                           ; FA45 55 55                    UU
        eor     $55,x                           ; FA47 55 55                    UU
        eor     $55,x                           ; FA49 55 55                    UU
        eor     $55,x                           ; FA4B 55 55                    UU
        eor     $55,x                           ; FA4D 55 55                    UU
        eor     $55,x                           ; FA4F 55 55                    UU
        eor     $55,x                           ; FA51 55 55                    UU
        lda     $AAAA                           ; FA53 AD AA AA                 ...
        ror     a                               ; FA56 6A                       j
        eor     $55,x                           ; FA57 55 55                    UU
        .byte   $2B                             ; FA59 2B                       +
        sta     $AA,x                           ; FA5A 95 AA                    ..
        .byte   $52                             ; FA5C 52                       R
        eor     $55,x                           ; FA5D 55 55                    UU
        tax                                     ; FA5F AA                       .
        tax                                     ; FA60 AA                       .
        tax                                     ; FA61 AA                       .
        tax                                     ; FA62 AA                       .
        tax                                     ; FA63 AA                       .
        tax                                     ; FA64 AA                       .
        tax                                     ; FA65 AA                       .
        tax                                     ; FA66 AA                       .
        tax                                     ; FA67 AA                       .
        tax                                     ; FA68 AA                       .
        tax                                     ; FA69 AA                       .
        tax                                     ; FA6A AA                       .
        tax                                     ; FA6B AA                       .
        eor     $55,x                           ; FA6C 55 55                    UU
        eor     $55,x                           ; FA6E 55 55                    UU
        eor     $55,x                           ; FA70 55 55                    UU
        ror     a                               ; FA72 6A                       j
        eor     $D5,x                           ; FA73 55 D5                    U.
        tax                                     ; FA75 AA                       .
        tax                                     ; FA76 AA                       .
        .byte   $52                             ; FA77 52                       R
        eor     $55,x                           ; FA78 55 55                    UU
        eor     $55,x                           ; FA7A 55 55                    UU
        eor     $55,x                           ; FA7C 55 55                    UU
        eor     $AB,x                           ; FA7E 55 AB                    U.
        .byte   $5A                             ; FA80 5A                       Z
        sta     $2A,x                           ; FA81 95 2A                    .*
        eor     $55,x                           ; FA83 55 55                    UU
        lda     $2A56                           ; FA85 AD 56 2A                 .V*
        eor     $A5,x                           ; FA88 55 A5                    U.
        .byte   $52                             ; FA8A 52                       R
        eor     $AB,x                           ; FA8B 55 AB                    U.
        eor     $55,x                           ; FA8D 55 55                    UU
        eor     $55,x                           ; FA8F 55 55                    UU
        eor     $55,x                           ; FA91 55 55                    UU
        tax                                     ; FA93 AA                       .
        tax                                     ; FA94 AA                       .
        tax                                     ; FA95 AA                       .
        tax                                     ; FA96 AA                       .
        tax                                     ; FA97 AA                       .
        tax                                     ; FA98 AA                       .
        eor     $A9,x                           ; FA99 55 A9                    U.
        tax                                     ; FA9B AA                       .
        tax                                     ; FA9C AA                       .
        .byte   $5A                             ; FA9D 5A                       Z
        eor     $55,x                           ; FA9E 55 55                    UU
        eor     $55,x                           ; FAA0 55 55                    UU
        eor     $AB,x                           ; FAA2 55 AB                    U.
        tax                                     ; FAA4 AA                       .
        tax                                     ; FAA5 AA                       .
        tax                                     ; FAA6 AA                       .
        tax                                     ; FAA7 AA                       .
        tax                                     ; FAA8 AA                       .
        tax                                     ; FAA9 AA                       .
        .byte   $5A                             ; FAAA 5A                       Z
        eor     $55,x                           ; FAAB 55 55                    UU
        eor     $55,x                           ; FAAD 55 55                    UU
        rol     a                               ; FAAF 2A                       *
        eor     $55,x                           ; FAB0 55 55                    UU
        eor     $A9,x                           ; FAB2 55 A9                    U.
        tax                                     ; FAB4 AA                       .
        tax                                     ; FAB5 AA                       .
        tax                                     ; FAB6 AA                       .
        tax                                     ; FAB7 AA                       .
        lsr     a                               ; FAB8 4A                       J
        cmp     $AA,x                           ; FAB9 D5 AA                    ..
        ror     a                               ; FABB 6A                       j
        eor     $55,x                           ; FABC 55 55                    UU
        eor     $55,x                           ; FABE 55 55                    UU
        eor     $A5,x                           ; FAC0 55 A5                    U.
        tax                                     ; FAC2 AA                       .
        tax                                     ; FAC3 AA                       .
        .byte   $5A                             ; FAC4 5A                       Z
        eor     $55,x                           ; FAC5 55 55                    UU
        eor     $55,x                           ; FAC7 55 55                    UU
        eor     $55,x                           ; FAC9 55 55                    UU
        eor     $55,x                           ; FACB 55 55                    UU
        lda     $9556                           ; FACD AD 56 95                 .V.
        tax                                     ; FAD0 AA                       .
        ror     a                               ; FAD1 6A                       j
        lda     $4A                             ; FAD2 A5 4A                    .J
        eor     $55,x                           ; FAD4 55 55                    UU
        eor     $AD,x                           ; FAD6 55 AD                    U.
        tax                                     ; FAD8 AA                       .
        tax                                     ; FAD9 AA                       .
        lsr     a                               ; FADA 4A                       J
        eor     $55,x                           ; FADB 55 55                    UU
        eor     $55,x                           ; FADD 55 55                    UU
        eor     $55,x                           ; FADF 55 55                    UU
        lda     #$55                            ; FAE1 A9 55                    .U
        eor     $A9,x                           ; FAE3 55 A9                    U.
        tax                                     ; FAE5 AA                       .
        tax                                     ; FAE6 AA                       .
        tax                                     ; FAE7 AA                       .
        ror     a                               ; FAE8 6A                       j
        eor     $55,x                           ; FAE9 55 55                    UU
        eor     $55,x                           ; FAEB 55 55                    UU
        lda     #$AA                            ; FAED A9 AA                    ..
        tax                                     ; FAEF AA                       .
        tax                                     ; FAF0 AA                       .
        eor     $55,x                           ; FAF1 55 55                    UU
        eor     $55,x                           ; FAF3 55 55                    UU
        eor     $55,x                           ; FAF5 55 55                    UU
        eor     $55,x                           ; FAF7 55 55                    UU
        cmp     $5A,x                           ; FAF9 D5 5A                    .Z
        eor     $AA,x                           ; FAFB 55 AA                    U.
        tax                                     ; FAFD AA                       .
        stx     $2A,y                           ; FAFE 96 2A                    .*
        eor     $55,x                           ; FB00 55 55                    UU
        eor     $D5,x                           ; FB02 55 D5                    U.
        tax                                     ; FB04 AA                       .
        tax                                     ; FB05 AA                       .
        rol     a                               ; FB06 2A                       *
        eor     $55,x                           ; FB07 55 55                    UU
        eor     $55,x                           ; FB09 55 55                    UU
        eor     $55,x                           ; FB0B 55 55                    UU
        eor     $55,x                           ; FB0D 55 55                    UU
        eor     $55,x                           ; FB0F 55 55                    UU
        eor     $55,x                           ; FB11 55 55                    UU
        lda     #$AA                            ; FB13 A9 AA                    ..
        ror     a                               ; FB15 6A                       j
        eor     $55,x                           ; FB16 55 55                    UU
        lda     $52                             ; FB18 A5 52                    .R
        sta     $AA,x                           ; FB1A 95 AA                    ..
        .byte   $5A                             ; FB1C 5A                       Z
        cmp     $6A,x                           ; FB1D D5 6A                    .j
        eor     $55,x                           ; FB1F 55 55                    UU
        eor     $AD,x                           ; FB21 55 AD                    U.
        lsr     $55,x                           ; FB23 56 55                    VU
        eor     $AB,x                           ; FB25 55 AB                    U.
        tax                                     ; FB27 AA                       .
        lsr     a                               ; FB28 4A                       J
        eor     $A9,x                           ; FB29 55 A9                    U.
        tax                                     ; FB2B AA                       .
        rol     a                               ; FB2C 2A                       *
        eor     $55,x                           ; FB2D 55 55                    UU
        eor     $55,x                           ; FB2F 55 55                    UU
        eor     $55,x                           ; FB31 55 55                    UU
        eor     $55,x                           ; FB33 55 55                    UU
        sta     $AA,x                           ; FB35 95 AA                    ..
        tax                                     ; FB37 AA                       .
        .byte   $52                             ; FB38 52                       R
        eor     $55,x                           ; FB39 55 55                    UU
        eor     $AB,x                           ; FB3B 55 AB                    U.
        tax                                     ; FB3D AA                       .
        tax                                     ; FB3E AA                       .
        .byte   $5A                             ; FB3F 5A                       Z
        eor     $95,x                           ; FB40 55 95                    U.
        .byte   $5A                             ; FB42 5A                       Z
        eor     $55,x                           ; FB43 55 55                    UU
        eor     $55,x                           ; FB45 55 55                    UU
        eor     $55,x                           ; FB47 55 55                    UU
        tax                                     ; FB49 AA                       .
        lsr     $55,x                           ; FB4A 56 55                    VU
        .byte   $AB                             ; FB4C AB                       .
        eor     $5A,x                           ; FB4D 55 5A                    UZ
        lda     $2A                             ; FB4F A5 2A                    .*
        eor     $55,x                           ; FB51 55 55                    UU
        eor     $55,x                           ; FB53 55 55                    UU
        eor     $55,x                           ; FB55 55 55                    UU
        lda     $52AA                           ; FB57 AD AA 52                 ..R
        lda     $AA,x                           ; FB5A B5 AA                    ..
        tax                                     ; FB5C AA                       .
        tax                                     ; FB5D AA                       .
        ror     a                               ; FB5E 6A                       j
        eor     $55,x                           ; FB5F 55 55                    UU
        lda     #$52                            ; FB61 A9 52                    .R
        eor     $55,x                           ; FB63 55 55                    UU
        lda     #$4A                            ; FB65 A9 4A                    .J
        eor     $55,x                           ; FB67 55 55                    UU
        eor     $55,x                           ; FB69 55 55                    UU
        cmp     $AA,x                           ; FB6B D5 AA                    ..
        tax                                     ; FB6D AA                       .
        eor     $55,x                           ; FB6E 55 55                    UU
        eor     $55,x                           ; FB70 55 55                    UU
        eor     $55,x                           ; FB72 55 55                    UU
        eor     $55,x                           ; FB74 55 55                    UU
        eor     $55,x                           ; FB76 55 55                    UU
        eor     $55,x                           ; FB78 55 55                    UU
        eor     $55,x                           ; FB7A 55 55                    UU
        .byte   $AB                             ; FB7C AB                       .
        tax                                     ; FB7D AA                       .
        lsr     a                               ; FB7E 4A                       J
        lda     $52,x                           ; FB7F B5 52                    .R
        eor     $55,x                           ; FB81 55 55                    UU
        eor     $55,x                           ; FB83 55 55                    UU
        eor     $55,x                           ; FB85 55 55                    UU
        eor     $55,x                           ; FB87 55 55                    UU
        .byte   $AB                             ; FB89 AB                       .
        .byte   $5A                             ; FB8A 5A                       Z
        eor     $55,x                           ; FB8B 55 55                    UU
        sta     $AA,x                           ; FB8D 95 AA                    ..
        .byte   $54                             ; FB8F 54                       T
        eor     $55,x                           ; FB90 55 55                    UU
        eor     $55,x                           ; FB92 55 55                    UU
        eor     $55,x                           ; FB94 55 55                    UU
        eor     $A9,x                           ; FB96 55 A9                    U.
        .byte   $54                             ; FB98 54                       T
        eor     $D5,x                           ; FB99 55 D5                    U.
        tax                                     ; FB9B AA                       .
        tax                                     ; FB9C AA                       .
        tax                                     ; FB9D AA                       .
        .byte   $52                             ; FB9E 52                       R
        eor     $D5,x                           ; FB9F 55 D5                    U.
        tax                                     ; FBA1 AA                       .
        tax                                     ; FBA2 AA                       .
        tax                                     ; FBA3 AA                       .
        eor     $55,x                           ; FBA4 55 55                    UU
        lda     $5556                           ; FBA6 AD 56 55                 .VU
        eor     $55,x                           ; FBA9 55 55                    UU
        lda     $AA                             ; FBAB A5 AA                    ..
        tax                                     ; FBAD AA                       .
        eor     $55,x                           ; FBAE 55 55                    UU
        eor     $55,x                           ; FBB0 55 55                    UU
        eor     $A9,x                           ; FBB2 55 A9                    U.
        rol     a                               ; FBB4 2A                       *
        eor     $55,x                           ; FBB5 55 55                    UU
        eor     $55,x                           ; FBB7 55 55                    UU
        tax                                     ; FBB9 AA                       .
        tax                                     ; FBBA AA                       .
        tax                                     ; FBBB AA                       .
        .byte   $52                             ; FBBC 52                       R
        eor     $55,x                           ; FBBD 55 55                    UU
        eor     $D5,x                           ; FBBF 55 D5                    U.
        tax                                     ; FBC1 AA                       .
        tax                                     ; FBC2 AA                       .
        ror     a                               ; FBC3 6A                       j
        eor     $55,x                           ; FBC4 55 55                    UU
        eor     $55,x                           ; FBC6 55 55                    UU
        eor     $55,x                           ; FBC8 55 55                    UU
        eor     $55,x                           ; FBCA 55 55                    UU
        eor     $55,x                           ; FBCC 55 55                    UU
        eor     $A9,x                           ; FBCE 55 A9                    U.
        eor     $55,x                           ; FBD0 55 55                    UU
        eor     $55,x                           ; FBD2 55 55                    UU
        eor     $55,x                           ; FBD4 55 55                    UU
        .byte   $AB                             ; FBD6 AB                       .
        eor     $AB,x                           ; FBD7 55 AB                    U.
        tax                                     ; FBD9 AA                       .
        tax                                     ; FBDA AA                       .
        tax                                     ; FBDB AA                       .
        lsr     a                               ; FBDC 4A                       J
        eor     $A9,x                           ; FBDD 55 A9                    U.
        .byte   $54                             ; FBDF 54                       T
        eor     $55,x                           ; FBE0 55 55                    UU
        eor     $55,x                           ; FBE2 55 55                    UU
        eor     $AA,x                           ; FBE4 55 AA                    U.
        tax                                     ; FBE6 AA                       .
        tax                                     ; FBE7 AA                       .
        tax                                     ; FBE8 AA                       .
        tax                                     ; FBE9 AA                       .
        .byte   $54                             ; FBEA 54                       T
        eor     $D5,x                           ; FBEB 55 D5                    U.
        tax                                     ; FBED AA                       .
        tax                                     ; FBEE AA                       .
        tax                                     ; FBEF AA                       .
        eor     $55,x                           ; FBF0 55 55                    UU
        eor     $55,x                           ; FBF2 55 55                    UU
        eor     $55,x                           ; FBF4 55 55                    UU
        eor     $55,x                           ; FBF6 55 55                    UU
        eor     $55,x                           ; FBF8 55 55                    UU
        eor     $95,x                           ; FBFA 55 95                    U.
        .byte   $5A                             ; FBFC 5A                       Z
        eor     $55,x                           ; FBFD 55 55                    UU
        eor     $55,x                           ; FBFF 55 55                    UU
        eor     $B5,x                           ; FC01 55 B5                    U.
        .byte   $5A                             ; FC03 5A                       Z
        cmp     $AA,x                           ; FC04 D5 AA                    ..
        tax                                     ; FC06 AA                       .
        tax                                     ; FC07 AA                       .
        tax                                     ; FC08 AA                       .
        .byte   $54                             ; FC09 54                       T
        sta     $2A,x                           ; FC0A 95 2A                    .*
        eor     $55,x                           ; FC0C 55 55                    UU
        eor     $55,x                           ; FC0E 55 55                    UU
        eor     $A5,x                           ; FC10 55 A5                    U.
        tax                                     ; FC12 AA                       .
        tax                                     ; FC13 AA                       .
        tax                                     ; FC14 AA                       .
        tax                                     ; FC15 AA                       .
        tax                                     ; FC16 AA                       .
        lsr     a                               ; FC17 4A                       J
        cmp     $AA,x                           ; FC18 D5 AA                    ..
        tax                                     ; FC1A AA                       .
        lsr     $55,x                           ; FC1B 56 55                    VU
        eor     $55,x                           ; FC1D 55 55                    UU
        eor     $55,x                           ; FC1F 55 55                    UU
        eor     $55,x                           ; FC21 55 55                    UU
        eor     $55,x                           ; FC23 55 55                    UU
        eor     $55,x                           ; FC25 55 55                    UU
        eor     $55,x                           ; FC27 55 55                    UU
        eor     $55,x                           ; FC29 55 55                    UU
        eor     $55,x                           ; FC2B 55 55                    UU
        eor     $55,x                           ; FC2D 55 55                    UU
        lda     $4A,x                           ; FC2F B5 4A                    .J
        eor     $55,x                           ; FC31 55 55                    UU
        eor     $AB,x                           ; FC33 55 AB                    U.
        tax                                     ; FC35 AA                       .
        lsr     $95,x                           ; FC36 56 95                    V.
        tax                                     ; FC38 AA                       .
        .byte   $52                             ; FC39 52                       R
        eor     $55,x                           ; FC3A 55 55                    UU
        eor     $55,x                           ; FC3C 55 55                    UU
        eor     $55,x                           ; FC3E 55 55                    UU
        eor     $55,x                           ; FC40 55 55                    UU
        eor     $55,x                           ; FC42 55 55                    UU
        eor     $55,x                           ; FC44 55 55                    UU
        tax                                     ; FC46 AA                       .
        .byte   $52                             ; FC47 52                       R
        eor     $55,x                           ; FC48 55 55                    UU
        eor     $55,x                           ; FC4A 55 55                    UU
        lda     $AA,x                           ; FC4C B5 AA                    ..
        lsr     $55,x                           ; FC4E 56 55                    VU
        eor     $55,x                           ; FC50 55 55                    UU
        eor     $55,x                           ; FC52 55 55                    UU
        eor     $55,x                           ; FC54 55 55                    UU
        eor     $55,x                           ; FC56 55 55                    UU
        eor     $55,x                           ; FC58 55 55                    UU
        eor     $55,x                           ; FC5A 55 55                    UU
        eor     $55,x                           ; FC5C 55 55                    UU
        eor     $55,x                           ; FC5E 55 55                    UU
        eor     $55,x                           ; FC60 55 55                    UU
        lda     $5552                           ; FC62 AD 52 55                 .RU
        eor     $D5,x                           ; FC65 55 D5                    U.
        tax                                     ; FC67 AA                       .
        ror     a                               ; FC68 6A                       j
        eor     $A5,x                           ; FC69 55 A5                    U.
        tax                                     ; FC6B AA                       .
        .byte   $54                             ; FC6C 54                       T
        eor     $55,x                           ; FC6D 55 55                    UU
        eor     $55,x                           ; FC6F 55 55                    UU
        eor     $55,x                           ; FC71 55 55                    UU
        eor     $55,x                           ; FC73 55 55                    UU
        eor     $55,x                           ; FC75 55 55                    UU
        eor     $55,x                           ; FC77 55 55                    UU
        rol     a                               ; FC79 2A                       *
LFC7A:  eor     $55,x                           ; FC7A 55 55                    UU
        eor     $55,x                           ; FC7C 55 55                    UU
        eor     $B5,x                           ; FC7E 55 B5                    U.
        tax                                     ; FC80 AA                       .
        eor     $55,x                           ; FC81 55 55                    UU
        eor     $55,x                           ; FC83 55 55                    UU
        eor     $55,x                           ; FC85 55 55                    UU
        eor     $AB,x                           ; FC87 55 AB                    U.
        tax                                     ; FC89 AA                       .
        tax                                     ; FC8A AA                       .
        tax                                     ; FC8B AA                       .
        tax                                     ; FC8C AA                       .
        eor     $55,x                           ; FC8D 55 55                    UU
        eor     $55,x                           ; FC8F 55 55                    UU
        eor     $A5,x                           ; FC91 55 A5                    U.
        tax                                     ; FC93 AA                       .
        tax                                     ; FC94 AA                       .
        .byte   $54                             ; FC95 54                       T
        eor     $A5,x                           ; FC96 55 A5                    U.
        tax                                     ; FC98 AA                       .
        tax                                     ; FC99 AA                       .
        tax                                     ; FC9A AA                       .
        eor     $55,x                           ; FC9B 55 55                    UU
        lda     $AA                             ; FC9D A5 AA                    ..
        tax                                     ; FC9F AA                       .
        tax                                     ; FCA0 AA                       .
        lsr     $95,x                           ; FCA1 56 95                    V.
        tax                                     ; FCA3 AA                       .
        tax                                     ; FCA4 AA                       .
        tax                                     ; FCA5 AA                       .
        ror     a                               ; FCA6 6A                       j
        eor     $55,x                           ; FCA7 55 55                    UU
        eor     $55,x                           ; FCA9 55 55                    UU
        eor     $55,x                           ; FCAB 55 55                    UU
        eor     $55,x                           ; FCAD 55 55                    UU
        .byte   $2B                             ; FCAF 2B                       +
        eor     $55,x                           ; FCB0 55 55                    UU
        eor     $55,x                           ; FCB2 55 55                    UU
        eor     $55,x                           ; FCB4 55 55                    UU
        eor     $55,x                           ; FCB6 55 55                    UU
        eor     $55,x                           ; FCB8 55 55                    UU
        lda     $AA,x                           ; FCBA B5 AA                    ..
        tax                                     ; FCBC AA                       .
        tax                                     ; FCBD AA                       .
        tax                                     ; FCBE AA                       .
        tax                                     ; FCBF AA                       .
        tax                                     ; FCC0 AA                       .
        tax                                     ; FCC1 AA                       .
        tax                                     ; FCC2 AA                       .
        tax                                     ; FCC3 AA                       .
        rol     a                               ; FCC4 2A                       *
        eor     $55,x                           ; FCC5 55 55                    UU
        eor     $AA,x                           ; FCC7 55 AA                    U.
        tax                                     ; FCC9 AA                       .
        .byte   $54                             ; FCCA 54                       T
        .byte   $AB                             ; FCCB AB                       .
        tax                                     ; FCCC AA                       .
        tax                                     ; FCCD AA                       .
        tax                                     ; FCCE AA                       .
        tax                                     ; FCCF AA                       .
        .byte   $52                             ; FCD0 52                       R
        cmp     $AA,x                           ; FCD1 D5 AA                    ..
        tax                                     ; FCD3 AA                       .
        .byte   $5A                             ; FCD4 5A                       Z
        eor     $55,x                           ; FCD5 55 55                    UU
        eor     $55,x                           ; FCD7 55 55                    UU
        eor     $55,x                           ; FCD9 55 55                    UU
        eor     $55,x                           ; FCDB 55 55                    UU
        eor     $D5,x                           ; FCDD 55 D5                    U.
        tax                                     ; FCDF AA                       .
        lsr     $55,x                           ; FCE0 56 55                    VU
        eor     $A5,x                           ; FCE2 55 A5                    U.
        tax                                     ; FCE4 AA                       .
        tax                                     ; FCE5 AA                       .
        tax                                     ; FCE6 AA                       .
        tax                                     ; FCE7 AA                       .
        .byte   $52                             ; FCE8 52                       R
        eor     $55,x                           ; FCE9 55 55                    UU
        eor     $55,x                           ; FCEB 55 55                    UU
        eor     $55,x                           ; FCED 55 55                    UU
        eor     $55,x                           ; FCEF 55 55                    UU
        eor     $55,x                           ; FCF1 55 55                    UU
        lda     #$AA                            ; FCF3 A9 AA                    ..
        tax                                     ; FCF5 AA                       .
        ldy     $AA,x                           ; FCF6 B4 AA                    ..
        tax                                     ; FCF8 AA                       .
        .byte   $5A                             ; FCF9 5A                       Z
        eor     $55,x                           ; FCFA 55 55                    UU
        eor     $55,x                           ; FCFC 55 55                    UU
        eor     $A5,x                           ; FCFE 55 A5                    U.
        tax                                     ; FD00 AA                       .
        tax                                     ; FD01 AA                       .
        tax                                     ; FD02 AA                       .
        lsr     $55,x                           ; FD03 56 55                    VU
        eor     $55,x                           ; FD05 55 55                    UU
        eor     $55,x                           ; FD07 55 55                    UU
        eor     $55,x                           ; FD09 55 55                    UU
        lda     $AAAA                           ; FD0B AD AA AA                 ...
        tax                                     ; FD0E AA                       .
        tax                                     ; FD0F AA                       .
        tax                                     ; FD10 AA                       .
        tax                                     ; FD11 AA                       .
        rol     a                               ; FD12 2A                       *
        lda     $AA,x                           ; FD13 B5 AA                    ..
        tax                                     ; FD15 AA                       .
        tax                                     ; FD16 AA                       .
        tax                                     ; FD17 AA                       .
        .byte   $54                             ; FD18 54                       T
        eor     $55,x                           ; FD19 55 55                    UU
        eor     $55,x                           ; FD1B 55 55                    UU
        eor     $55,x                           ; FD1D 55 55                    UU
        eor     $55,x                           ; FD1F 55 55                    UU
        eor     $55,x                           ; FD21 55 55                    UU
        eor     $55,x                           ; FD23 55 55                    UU
        eor     $55,x                           ; FD25 55 55                    UU
        sta     $AA,x                           ; FD27 95 AA                    ..
        tax                                     ; FD29 AA                       .
        tax                                     ; FD2A AA                       .
        tax                                     ; FD2B AA                       .
        tax                                     ; FD2C AA                       .
        tax                                     ; FD2D AA                       .
        tax                                     ; FD2E AA                       .
        ror     a                               ; FD2F 6A                       j
        eor     $55,x                           ; FD30 55 55                    UU
        eor     $55,x                           ; FD32 55 55                    UU
        eor     $55,x                           ; FD34 55 55                    UU
        eor     $55,x                           ; FD36 55 55                    UU
        eor     $55,x                           ; FD38 55 55                    UU
        eor     $55,x                           ; FD3A 55 55                    UU
        lda     $6AAA                           ; FD3C AD AA 6A                 ..j
        eor     $A5,x                           ; FD3F 55 A5                    U.
        tax                                     ; FD41 AA                       .
        tax                                     ; FD42 AA                       .
        tax                                     ; FD43 AA                       .
        tax                                     ; FD44 AA                       .
        tax                                     ; FD45 AA                       .
        tax                                     ; FD46 AA                       .
        tax                                     ; FD47 AA                       .
        tax                                     ; FD48 AA                       .
        .byte   $52                             ; FD49 52                       R
        eor     $55,x                           ; FD4A 55 55                    UU
        eor     $55,x                           ; FD4C 55 55                    UU
        eor     $55,x                           ; FD4E 55 55                    UU
        tax                                     ; FD50 AA                       .
        .byte   $52                             ; FD51 52                       R
        eor     $55,x                           ; FD52 55 55                    UU
        eor     $55,x                           ; FD54 55 55                    UU
        eor     $55,x                           ; FD56 55 55                    UU
        lda     $6A,x                           ; FD58 B5 6A                    .j
        eor     $55,x                           ; FD5A 55 55                    UU
        eor     $55,x                           ; FD5C 55 55                    UU
        eor     $AB,x                           ; FD5E 55 AB                    U.
        tax                                     ; FD60 AA                       .
        tax                                     ; FD61 AA                       .
        tax                                     ; FD62 AA                       .
        tax                                     ; FD63 AA                       .
        tax                                     ; FD64 AA                       .
        .byte   $54                             ; FD65 54                       T
        lda     $AAAA                           ; FD66 AD AA AA                 ...
        .byte   $54                             ; FD69 54                       T
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
        lda     #$AA                            ; FD80 A9 AA                    ..
        tax                                     ; FD82 AA                       .
        tax                                     ; FD83 AA                       .
        tax                                     ; FD84 AA                       .
        tax                                     ; FD85 AA                       .
        ror     a                               ; FD86 6A                       j
        eor     $55,x                           ; FD87 55 55                    UU
        eor     $55,x                           ; FD89 55 55                    UU
        eor     $55,x                           ; FD8B 55 55                    UU
        eor     $55,x                           ; FD8D 55 55                    UU
        eor     $55,x                           ; FD8F 55 55                    UU
        eor     $55,x                           ; FD91 55 55                    UU
        .byte   $AB                             ; FD93 AB                       .
        tax                                     ; FD94 AA                       .
        tax                                     ; FD95 AA                       .
        .byte   $5A                             ; FD96 5A                       Z
        eor     $55,x                           ; FD97 55 55                    UU
        eor     $55,x                           ; FD99 55 55                    UU
        eor     $AA,x                           ; FD9B 55 AA                    U.
        .byte   $54                             ; FD9D 54                       T
        eor     $95,x                           ; FD9E 55 95                    U.
        tax                                     ; FDA0 AA                       .
        tax                                     ; FDA1 AA                       .
        tax                                     ; FDA2 AA                       .
        tax                                     ; FDA3 AA                       .
        tax                                     ; FDA4 AA                       .
        tax                                     ; FDA5 AA                       .
        tax                                     ; FDA6 AA                       .
        .byte   $54                             ; FDA7 54                       T
        eor     $55,x                           ; FDA8 55 55                    UU
        eor     $55,x                           ; FDAA 55 55                    UU
        lda     $AAAA                           ; FDAC AD AA AA                 ...
        tax                                     ; FDAF AA                       .
        .byte   $5A                             ; FDB0 5A                       Z
        eor     $55,x                           ; FDB1 55 55                    UU
        lda     $AA,x                           ; FDB3 B5 AA                    ..
        lsr     $95,x                           ; FDB5 56 95                    V.
        tax                                     ; FDB7 AA                       .
        tax                                     ; FDB8 AA                       .
        lsr     a                               ; FDB9 4A                       J
        lda     $AAAA                           ; FDBA AD AA AA                 ...
        tax                                     ; FDBD AA                       .
        .byte   $54                             ; FDBE 54                       T
        eor     $55,x                           ; FDBF 55 55                    UU
        eor     $55,x                           ; FDC1 55 55                    UU
        eor     $55,x                           ; FDC3 55 55                    UU
        eor     $55,x                           ; FDC5 55 55                    UU
        eor     $55,x                           ; FDC7 55 55                    UU
        eor     $55,x                           ; FDC9 55 55                    UU
        eor     $55,x                           ; FDCB 55 55                    UU
        eor     $55,x                           ; FDCD 55 55                    UU
        eor     $55,x                           ; FDCF 55 55                    UU
        lda     #$AA                            ; FDD1 A9 AA                    ..
        tax                                     ; FDD3 AA                       .
        .byte   $5A                             ; FDD4 5A                       Z
        eor     $55,x                           ; FDD5 55 55                    UU
        eor     $55,x                           ; FDD7 55 55                    UU
        eor     $A9,x                           ; FDD9 55 A9                    U.
        tax                                     ; FDDB AA                       .
        tax                                     ; FDDC AA                       .
        tax                                     ; FDDD AA                       .
        tax                                     ; FDDE AA                       .
        eor     $55,x                           ; FDDF 55 55                    UU
        eor     $55,x                           ; FDE1 55 55                    UU
        cmp     $AA,x                           ; FDE3 D5 AA                    ..
        tax                                     ; FDE5 AA                       .
        tax                                     ; FDE6 AA                       .
        tax                                     ; FDE7 AA                       .
        tax                                     ; FDE8 AA                       .
        tax                                     ; FDE9 AA                       .
        eor     $55,x                           ; FDEA 55 55                    UU
        eor     $55,x                           ; FDEC 55 55                    UU
        eor     $A9,x                           ; FDEE 55 A9                    U.
        tax                                     ; FDF0 AA                       .
        .byte   $52                             ; FDF1 52                       R
        eor     $55,x                           ; FDF2 55 55                    UU
        eor     $55,x                           ; FDF4 55 55                    UU
        lda     #$AA                            ; FDF6 A9 AA                    ..
        lsr     a                               ; FDF8 4A                       J
        eor     $55,x                           ; FDF9 55 55                    UU
        eor     $55,x                           ; FDFB 55 55                    UU
        eor     $55,x                           ; FDFD 55 55                    UU
        eor     $AB,x                           ; FDFF 55 AB                    U.
        tax                                     ; FE01 AA                       .
        lsr     $55,x                           ; FE02 56 55                    VU
        eor     $55,x                           ; FE04 55 55                    UU
        eor     $AD,x                           ; FE06 55 AD                    U.
        tax                                     ; FE08 AA                       .
        tax                                     ; FE09 AA                       .
        tax                                     ; FE0A AA                       .
        tax                                     ; FE0B AA                       .
        tax                                     ; FE0C AA                       .
        tax                                     ; FE0D AA                       .
        tax                                     ; FE0E AA                       .
        tax                                     ; FE0F AA                       .
        .byte   $54                             ; FE10 54                       T
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
        eor     $A9,x                           ; FE2B 55 A9                    U.
        tax                                     ; FE2D AA                       .
        tax                                     ; FE2E AA                       .
        tax                                     ; FE2F AA                       .
        tax                                     ; FE30 AA                       .
        tax                                     ; FE31 AA                       .
        tax                                     ; FE32 AA                       .
        tax                                     ; FE33 AA                       .
        lsr     $55,x                           ; FE34 56 55                    VU
        eor     $55,x                           ; FE36 55 55                    UU
        .byte   $AB                             ; FE38 AB                       .
        tax                                     ; FE39 AA                       .
        tax                                     ; FE3A AA                       .
        rol     a                               ; FE3B 2A                       *
        eor     $55,x                           ; FE3C 55 55                    UU
        eor     $B5,x                           ; FE3E 55 B5                    U.
        tax                                     ; FE40 AA                       .
        tax                                     ; FE41 AA                       .
        .byte   $5A                             ; FE42 5A                       Z
        lda     #$AA                            ; FE43 A9 AA                    ..
        tax                                     ; FE45 AA                       .
        tax                                     ; FE46 AA                       .
        .byte   $54                             ; FE47 54                       T
        eor     $55,x                           ; FE48 55 55                    UU
        eor     $55,x                           ; FE4A 55 55                    UU
        eor     $55,x                           ; FE4C 55 55                    UU
        tax                                     ; FE4E AA                       .
        tax                                     ; FE4F AA                       .
        tax                                     ; FE50 AA                       .
        rol     a                               ; FE51 2A                       *
        eor     $B5,x                           ; FE52 55 B5                    U.
        tax                                     ; FE54 AA                       .
        tax                                     ; FE55 AA                       .
        tax                                     ; FE56 AA                       .
        tax                                     ; FE57 AA                       .
        .byte   $5A                             ; FE58 5A                       Z
        eor     $55,x                           ; FE59 55 55                    UU
        eor     $55,x                           ; FE5B 55 55                    UU
        eor     $55,x                           ; FE5D 55 55                    UU
        lda     $AAAA                           ; FE5F AD AA AA                 ...
        tax                                     ; FE62 AA                       .
        tax                                     ; FE63 AA                       .
        tax                                     ; FE64 AA                       .
        .byte   $52                             ; FE65 52                       R
        eor     $55,x                           ; FE66 55 55                    UU
        eor     $55,x                           ; FE68 55 55                    UU
        eor     $55,x                           ; FE6A 55 55                    UU
        eor     $55,x                           ; FE6C 55 55                    UU
        eor     $55,x                           ; FE6E 55 55                    UU
        eor     $55,x                           ; FE70 55 55                    UU
        eor     $55,x                           ; FE72 55 55                    UU
        eor     $55,x                           ; FE74 55 55                    UU
        eor     $55,x                           ; FE76 55 55                    UU
        eor     $55,x                           ; FE78 55 55                    UU
        eor     $95,x                           ; FE7A 55 95                    U.
        tax                                     ; FE7C AA                       .
        tax                                     ; FE7D AA                       .
        tax                                     ; FE7E AA                       .
        tax                                     ; FE7F AA                       .
        tax                                     ; FE80 AA                       .
        tax                                     ; FE81 AA                       .
        lsr     $55,x                           ; FE82 56 55                    VU
        eor     $55,x                           ; FE84 55 55                    UU
        eor     $55,x                           ; FE86 55 55                    UU
        eor     $55,x                           ; FE88 55 55                    UU
        eor     $55,x                           ; FE8A 55 55                    UU
        eor     $55,x                           ; FE8C 55 55                    UU
        eor     $55,x                           ; FE8E 55 55                    UU
        cmp     $4A,x                           ; FE90 D5 4A                    .J
        eor     $55,x                           ; FE92 55 55                    UU
        .byte   $AB                             ; FE94 AB                       .
        lsr     a                               ; FE95 4A                       J
        eor     $55,x                           ; FE96 55 55                    UU
        eor     $55,x                           ; FE98 55 55                    UU
        eor     $55,x                           ; FE9A 55 55                    UU
        eor     $55,x                           ; FE9C 55 55                    UU
        eor     $55,x                           ; FE9E 55 55                    UU
        eor     $55,x                           ; FEA0 55 55                    UU
        eor     $55,x                           ; FEA2 55 55                    UU
        eor     $55,x                           ; FEA4 55 55                    UU
        eor     $55,x                           ; FEA6 55 55                    UU
        eor     $55,x                           ; FEA8 55 55                    UU
        eor     $55,x                           ; FEAA 55 55                    UU
        eor     $A9,x                           ; FEAC 55 A9                    U.
        tax                                     ; FEAE AA                       .
        tax                                     ; FEAF AA                       .
        tax                                     ; FEB0 AA                       .
        tax                                     ; FEB1 AA                       .
        tax                                     ; FEB2 AA                       .
        ror     a                               ; FEB3 6A                       j
        eor     $55,x                           ; FEB4 55 55                    UU
        eor     $55,x                           ; FEB6 55 55                    UU
        eor     $55,x                           ; FEB8 55 55                    UU
        eor     $55,x                           ; FEBA 55 55                    UU
        eor     $55,x                           ; FEBC 55 55                    UU
        eor     $55,x                           ; FEBE 55 55                    UU
        eor     $55,x                           ; FEC0 55 55                    UU
        .byte   $AB                             ; FEC2 AB                       .
        .byte   $54                             ; FEC3 54                       T
        eor     $D5,x                           ; FEC4 55 D5                    U.
        rol     a                               ; FEC6 2A                       *
        eor     $55,x                           ; FEC7 55 55                    UU
        eor     $55,x                           ; FEC9 55 55                    UU
        eor     $55,x                           ; FECB 55 55                    UU
        eor     $55,x                           ; FECD 55 55                    UU
        eor     $55,x                           ; FECF 55 55                    UU
        eor     $55,x                           ; FED1 55 55                    UU
        eor     $55,x                           ; FED3 55 55                    UU
        eor     $55,x                           ; FED5 55 55                    UU
        eor     $55,x                           ; FED7 55 55                    UU
        eor     $55,x                           ; FED9 55 55                    UU
        eor     $95,x                           ; FEDB 55 95                    U.
        tax                                     ; FEDD AA                       .
        tax                                     ; FEDE AA                       .
        tax                                     ; FEDF AA                       .
        lsr     $55,x                           ; FEE0 56 55                    VU
        eor     $55,x                           ; FEE2 55 55                    UU
        eor     $55,x                           ; FEE4 55 55                    UU
        eor     $55,x                           ; FEE6 55 55                    UU
        eor     $55,x                           ; FEE8 55 55                    UU
        eor     $55,x                           ; FEEA 55 55                    UU
        eor     $D5,x                           ; FEEC 55 D5                    U.
        tax                                     ; FEEE AA                       .
        tax                                     ; FEEF AA                       .
        tax                                     ; FEF0 AA                       .
        tax                                     ; FEF1 AA                       .
        tax                                     ; FEF2 AA                       .
        tax                                     ; FEF3 AA                       .
        tax                                     ; FEF4 AA                       .
        tax                                     ; FEF5 AA                       .
        rol     a                               ; FEF6 2A                       *
        eor     $55,x                           ; FEF7 55 55                    UU
        eor     $55,x                           ; FEF9 55 55                    UU
        eor     $55,x                           ; FEFB 55 55                    UU
        eor     $55,x                           ; FEFD 55 55                    UU
LFEFF:  eor     $55,x                           ; FEFF 55 55                    UU
        eor     $55,x                           ; FF01 55 55                    UU
        sta     $AA,x                           ; FF03 95 AA                    ..
        tax                                     ; FF05 AA                       .
        lsr     $55,x                           ; FF06 56 55                    VU
        eor     $55,x                           ; FF08 55 55                    UU
        eor     $55,x                           ; FF0A 55 55                    UU
        eor     $55,x                           ; FF0C 55 55                    UU
        eor     $55,x                           ; FF0E 55 55                    UU
        eor     $00,x                           ; FF10 55 00                    U.
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
LFF55:  brk                                     ; FF55 00                       .
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
;        brk                                     ; FFFD 00                       .
;        brk                                     ; FFFE 00                       .
;        brk                                     ; FFFF 00                       .
VECTORS
; mod
