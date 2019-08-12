.include "../mod.inc"
.segment "MF000"
.org $F000

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-28 01:38:21
; Input file: out_src\09_07.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L2A95           := $2A95
L52B5           := $52B5
L5355           := $5355
; ----------------------------------------------------------------------------
        eor     $55,x                           ; F000 55 55                    UU
        eor     $55,x                           ; F002 55 55                    UU
        eor     $55,x                           ; F004 55 55                    UU
        eor     $55,x                           ; F006 55 55                    UU
        eor     $55,x                           ; F008 55 55                    UU
        tax                                     ; F00A AA                       .
        tax                                     ; F00B AA                       .
        tax                                     ; F00C AA                       .
        tax                                     ; F00D AA                       .
        tax                                     ; F00E AA                       .
        tax                                     ; F00F AA                       .
        eor     $55,x                           ; F010 55 55                    UU
        eor     $B5,x                           ; F012 55 B5                    U.
        tax                                     ; F014 AA                       .
        tax                                     ; F015 AA                       .
        lsr     $55,x                           ; F016 56 55                    VU
        eor     $AD,x                           ; F018 55 AD                    U.
        tax                                     ; F01A AA                       .
        tax                                     ; F01B AA                       .
        tax                                     ; F01C AA                       .
        tax                                     ; F01D AA                       .
        tax                                     ; F01E AA                       .
        tax                                     ; F01F AA                       .
        tax                                     ; F020 AA                       .
        tax                                     ; F021 AA                       .
        tax                                     ; F022 AA                       .
        tax                                     ; F023 AA                       .
        tax                                     ; F024 AA                       .
        .byte   $52                             ; F025 52                       R
        eor     $55,x                           ; F026 55 55                    UU
        eor     $55,x                           ; F028 55 55                    UU
        eor     $55,x                           ; F02A 55 55                    UU
        .byte   $AB                             ; F02C AB                       .
        tax                                     ; F02D AA                       .
        tax                                     ; F02E AA                       .
        lda     $AA                             ; F02F A5 AA                    ..
        lsr     a                               ; F031 4A                       J
        eor     $AA,x                           ; F032 55 AA                    U.
        .byte   $52                             ; F034 52                       R
        eor     $AA,x                           ; F035 55 AA                    U.
        lsr     a                               ; F037 4A                       J
        eor     $55,x                           ; F038 55 55                    UU
        tax                                     ; F03A AA                       .
        tax                                     ; F03B AA                       .
        tax                                     ; F03C AA                       .
        rol     a                               ; F03D 2A                       *
        eor     $55,x                           ; F03E 55 55                    UU
        eor     $55,x                           ; F040 55 55                    UU
        cmp     $AA,x                           ; F042 D5 AA                    ..
        tax                                     ; F044 AA                       .
        tax                                     ; F045 AA                       .
        lsr     $55,x                           ; F046 56 55                    VU
        lda     $55AA                           ; F048 AD AA 55                 ..U
        cmp     $AA,x                           ; F04B D5 AA                    ..
        .byte   $5A                             ; F04D 5A                       Z
        eor     $B5,x                           ; F04E 55 B5                    U.
        tax                                     ; F050 AA                       .
        tax                                     ; F051 AA                       .
        .byte   $5A                             ; F052 5A                       Z
        eor     $55,x                           ; F053 55 55                    UU
        eor     $55,x                           ; F055 55 55                    UU
        eor     $55,x                           ; F057 55 55                    UU
        eor     $55,x                           ; F059 55 55                    UU
        eor     $55,x                           ; F05B 55 55                    UU
        eor     $55,x                           ; F05D 55 55                    UU
        eor     $55,x                           ; F05F 55 55                    UU
        eor     $55,x                           ; F061 55 55                    UU
        eor     $55,x                           ; F063 55 55                    UU
        eor     $55,x                           ; F065 55 55                    UU
        tax                                     ; F067 AA                       .
        tax                                     ; F068 AA                       .
        tax                                     ; F069 AA                       .
        tax                                     ; F06A AA                       .
        tax                                     ; F06B AA                       .
        tax                                     ; F06C AA                       .
        .byte   $54                             ; F06D 54                       T
        eor     $55,x                           ; F06E 55 55                    UU
        eor     $55,x                           ; F070 55 55                    UU
        tax                                     ; F072 AA                       .
        tax                                     ; F073 AA                       .
        tax                                     ; F074 AA                       .
        tax                                     ; F075 AA                       .
        tax                                     ; F076 AA                       .
        tax                                     ; F077 AA                       .
        tax                                     ; F078 AA                       .
        tax                                     ; F079 AA                       .
        tax                                     ; F07A AA                       .
        .byte   $52                             ; F07B 52                       R
        eor     $55,x                           ; F07C 55 55                    UU
        eor     $55,x                           ; F07E 55 55                    UU
        eor     $55,x                           ; F080 55 55                    UU
        eor     $55,x                           ; F082 55 55                    UU
        eor     $55,x                           ; F084 55 55                    UU
        eor     $55,x                           ; F086 55 55                    UU
        eor     $55,x                           ; F088 55 55                    UU
        eor     $55,x                           ; F08A 55 55                    UU
        eor     $55,x                           ; F08C 55 55                    UU
        eor     $55,x                           ; F08E 55 55                    UU
        lda     $AA,x                           ; F090 B5 AA                    ..
        tax                                     ; F092 AA                       .
        tax                                     ; F093 AA                       .
        tax                                     ; F094 AA                       .
        lsr     $55,x                           ; F095 56 55                    VU
        eor     $55,x                           ; F097 55 55                    UU
        eor     $55,x                           ; F099 55 55                    UU
        eor     $55,x                           ; F09B 55 55                    UU
        eor     $55,x                           ; F09D 55 55                    UU
        eor     $55,x                           ; F09F 55 55                    UU
        eor     $55,x                           ; F0A1 55 55                    UU
        eor     $55,x                           ; F0A3 55 55                    UU
        eor     $55,x                           ; F0A5 55 55                    UU
        eor     $A5,x                           ; F0A7 55 A5                    U.
        tax                                     ; F0A9 AA                       .
        tax                                     ; F0AA AA                       .
        tax                                     ; F0AB AA                       .
        tax                                     ; F0AC AA                       .
        tax                                     ; F0AD AA                       .
        tax                                     ; F0AE AA                       .
        eor     $55,x                           ; F0AF 55 55                    UU
        lda     $54AA                           ; F0B1 AD AA 54                 ..T
        eor     $55,x                           ; F0B4 55 55                    UU
        tax                                     ; F0B6 AA                       .
        tax                                     ; F0B7 AA                       .
        .byte   $52                             ; F0B8 52                       R
        eor     $55,x                           ; F0B9 55 55                    UU
        tax                                     ; F0BB AA                       .
        tax                                     ; F0BC AA                       .
        tax                                     ; F0BD AA                       .
        tax                                     ; F0BE AA                       .
        rol     a                               ; F0BF 2A                       *
        eor     $55,x                           ; F0C0 55 55                    UU
        eor     $55,x                           ; F0C2 55 55                    UU
        eor     $55,x                           ; F0C4 55 55                    UU
        lda     $AA,x                           ; F0C6 B5 AA                    ..
        tax                                     ; F0C8 AA                       .
        tax                                     ; F0C9 AA                       .
        ror     a                               ; F0CA 6A                       j
        eor     $55,x                           ; F0CB 55 55                    UU
        lda     $AAAA                           ; F0CD AD AA AA                 ...
        lsr     $55,x                           ; F0D0 56 55                    VU
        eor     $B5,x                           ; F0D2 55 B5                    U.
        tax                                     ; F0D4 AA                       .
        tax                                     ; F0D5 AA                       .
        tax                                     ; F0D6 AA                       .
        tax                                     ; F0D7 AA                       .
        tax                                     ; F0D8 AA                       .
        tax                                     ; F0D9 AA                       .
        tax                                     ; F0DA AA                       .
        tax                                     ; F0DB AA                       .
        tax                                     ; F0DC AA                       .
        tax                                     ; F0DD AA                       .
        tax                                     ; F0DE AA                       .
        tax                                     ; F0DF AA                       .
        tax                                     ; F0E0 AA                       .
        tax                                     ; F0E1 AA                       .
        tax                                     ; F0E2 AA                       .
        tax                                     ; F0E3 AA                       .
        tax                                     ; F0E4 AA                       .
        tax                                     ; F0E5 AA                       .
        tax                                     ; F0E6 AA                       .
        tax                                     ; F0E7 AA                       .
        tax                                     ; F0E8 AA                       .
        tax                                     ; F0E9 AA                       .
        tax                                     ; F0EA AA                       .
        rol     a                               ; F0EB 2A                       *
        eor     $55,x                           ; F0EC 55 55                    UU
        eor     $55,x                           ; F0EE 55 55                    UU
        eor     $55,x                           ; F0F0 55 55                    UU
        eor     $95,x                           ; F0F2 55 95                    U.
        tax                                     ; F0F4 AA                       .
        tax                                     ; F0F5 AA                       .
        tax                                     ; F0F6 AA                       .
        tax                                     ; F0F7 AA                       .
        tax                                     ; F0F8 AA                       .
        tax                                     ; F0F9 AA                       .
        tax                                     ; F0FA AA                       .
        tax                                     ; F0FB AA                       .
        tax                                     ; F0FC AA                       .
        tax                                     ; F0FD AA                       .
        tax                                     ; F0FE AA                       .
        tax                                     ; F0FF AA                       .
        tax                                     ; F100 AA                       .
        tax                                     ; F101 AA                       .
        tax                                     ; F102 AA                       .
        tax                                     ; F103 AA                       .
        rol     a                               ; F104 2A                       *
        .byte   $2B                             ; F105 2B                       +
        eor     $55,x                           ; F106 55 55                    UU
        eor     $55,x                           ; F108 55 55                    UU
        eor     $55,x                           ; F10A 55 55                    UU
        eor     $55,x                           ; F10C 55 55                    UU
        eor     $55,x                           ; F10E 55 55                    UU
        eor     $55,x                           ; F110 55 55                    UU
        .byte   $AB                             ; F112 AB                       .
        tax                                     ; F113 AA                       .
        tax                                     ; F114 AA                       .
        tax                                     ; F115 AA                       .
        tax                                     ; F116 AA                       .
        tax                                     ; F117 AA                       .
        tax                                     ; F118 AA                       .
        .byte   $5A                             ; F119 5A                       Z
        eor     $55,x                           ; F11A 55 55                    UU
        eor     $55,x                           ; F11C 55 55                    UU
        eor     $55,x                           ; F11E 55 55                    UU
        eor     $55,x                           ; F120 55 55                    UU
        eor     $55,x                           ; F122 55 55                    UU
        eor     $55,x                           ; F124 55 55                    UU
        eor     $55,x                           ; F126 55 55                    UU
        eor     $55,x                           ; F128 55 55                    UU
        eor     $55,x                           ; F12A 55 55                    UU
        sta     $AA,x                           ; F12C 95 AA                    ..
        tax                                     ; F12E AA                       .
        tax                                     ; F12F AA                       .
        tax                                     ; F130 AA                       .
        tax                                     ; F131 AA                       .
        tax                                     ; F132 AA                       .
        tax                                     ; F133 AA                       .
        tax                                     ; F134 AA                       .
        tax                                     ; F135 AA                       .
        .byte   $5A                             ; F136 5A                       Z
        eor     $55,x                           ; F137 55 55                    UU
        eor     $55,x                           ; F139 55 55                    UU
        eor     $55,x                           ; F13B 55 55                    UU
        lda     #$AA                            ; F13D A9 AA                    ..
        tax                                     ; F13F AA                       .
        rol     a                               ; F140 2A                       *
        eor     $55,x                           ; F141 55 55                    UU
        eor     $55,x                           ; F143 55 55                    UU
        eor     $55,x                           ; F145 55 55                    UU
        eor     $55,x                           ; F147 55 55                    UU
        tax                                     ; F149 AA                       .
        tax                                     ; F14A AA                       .
        tax                                     ; F14B AA                       .
        lsr     $55,x                           ; F14C 56 55                    VU
        eor     $55,x                           ; F14E 55 55                    UU
        eor     $55,x                           ; F150 55 55                    UU
        eor     $AD,x                           ; F152 55 AD                    U.
        tax                                     ; F154 AA                       .
        tax                                     ; F155 AA                       .
        tax                                     ; F156 AA                       .
        .byte   $5A                             ; F157 5A                       Z
        eor     $55,x                           ; F158 55 55                    UU
        eor     $55,x                           ; F15A 55 55                    UU
        eor     $55,x                           ; F15C 55 55                    UU
        lda     $AA,x                           ; F15E B5 AA                    ..
        tax                                     ; F160 AA                       .
        tax                                     ; F161 AA                       .
        tax                                     ; F162 AA                       .
        tax                                     ; F163 AA                       .
        tax                                     ; F164 AA                       .
        tax                                     ; F165 AA                       .
        tax                                     ; F166 AA                       .
        tax                                     ; F167 AA                       .
        .byte   $54                             ; F168 54                       T
        eor     $55,x                           ; F169 55 55                    UU
        eor     $55,x                           ; F16B 55 55                    UU
        eor     $55,x                           ; F16D 55 55                    UU
        eor     $55,x                           ; F16F 55 55                    UU
        eor     $55,x                           ; F171 55 55                    UU
        eor     $55,x                           ; F173 55 55                    UU
        eor     $55,x                           ; F175 55 55                    UU
        eor     $55,x                           ; F177 55 55                    UU
        lda     $AA                             ; F179 A5 AA                    ..
        tax                                     ; F17B AA                       .
        tax                                     ; F17C AA                       .
        tax                                     ; F17D AA                       .
        tax                                     ; F17E AA                       .
        tax                                     ; F17F AA                       .
        tax                                     ; F180 AA                       .
        tax                                     ; F181 AA                       .
        tax                                     ; F182 AA                       .
        tax                                     ; F183 AA                       .
        tax                                     ; F184 AA                       .
        tax                                     ; F185 AA                       .
        tax                                     ; F186 AA                       .
LF187:  tax                                     ; F187 AA                       .
        tax                                     ; F188 AA                       .
        tax                                     ; F189 AA                       .
        tax                                     ; F18A AA                       .
        tax                                     ; F18B AA                       .
        tax                                     ; F18C AA                       .
        tax                                     ; F18D AA                       .
        tax                                     ; F18E AA                       .
        tax                                     ; F18F AA                       .
        tax                                     ; F190 AA                       .
        tax                                     ; F191 AA                       .
        tax                                     ; F192 AA                       .
        tax                                     ; F193 AA                       .
        tax                                     ; F194 AA                       .
        tax                                     ; F195 AA                       .
        tax                                     ; F196 AA                       .
        tax                                     ; F197 AA                       .
        tax                                     ; F198 AA                       .
        tax                                     ; F199 AA                       .
        tax                                     ; F19A AA                       .
        tax                                     ; F19B AA                       .
        tax                                     ; F19C AA                       .
        tax                                     ; F19D AA                       .
        tax                                     ; F19E AA                       .
        tax                                     ; F19F AA                       .
        tax                                     ; F1A0 AA                       .
        tax                                     ; F1A1 AA                       .
        eor     $55,x                           ; F1A2 55 55                    UU
        eor     $55,x                           ; F1A4 55 55                    UU
        eor     $55,x                           ; F1A6 55 55                    UU
        eor     $55,x                           ; F1A8 55 55                    UU
        eor     $55,x                           ; F1AA 55 55                    UU
        eor     $55,x                           ; F1AC 55 55                    UU
        eor     $55,x                           ; F1AE 55 55                    UU
        eor     $55,x                           ; F1B0 55 55                    UU
        eor     $55,x                           ; F1B2 55 55                    UU
        lda     #$AA                            ; F1B4 A9 AA                    ..
        tax                                     ; F1B6 AA                       .
        tax                                     ; F1B7 AA                       .
        tax                                     ; F1B8 AA                       .
        tax                                     ; F1B9 AA                       .
        tax                                     ; F1BA AA                       .
        tax                                     ; F1BB AA                       .
        tax                                     ; F1BC AA                       .
        tax                                     ; F1BD AA                       .
        tax                                     ; F1BE AA                       .
        tax                                     ; F1BF AA                       .
        tax                                     ; F1C0 AA                       .
        .byte   $5A                             ; F1C1 5A                       Z
        eor     $55,x                           ; F1C2 55 55                    UU
        eor     $55,x                           ; F1C4 55 55                    UU
        eor     $A9,x                           ; F1C6 55 A9                    U.
        tax                                     ; F1C8 AA                       .
        tax                                     ; F1C9 AA                       .
        tax                                     ; F1CA AA                       .
        tax                                     ; F1CB AA                       .
        tax                                     ; F1CC AA                       .
        rol     a                               ; F1CD 2A                       *
        eor     $55,x                           ; F1CE 55 55                    UU
        eor     $55,x                           ; F1D0 55 55                    UU
        eor     $55,x                           ; F1D2 55 55                    UU
        eor     $55,x                           ; F1D4 55 55                    UU
        eor     $55,x                           ; F1D6 55 55                    UU
        eor     $55,x                           ; F1D8 55 55                    UU
        eor     $AB,x                           ; F1DA 55 AB                    U.
        tax                                     ; F1DC AA                       .
        tax                                     ; F1DD AA                       .
        tax                                     ; F1DE AA                       .
        tax                                     ; F1DF AA                       .
        tax                                     ; F1E0 AA                       .
        tax                                     ; F1E1 AA                       .
        .byte   $5A                             ; F1E2 5A                       Z
        eor     $55,x                           ; F1E3 55 55                    UU
        eor     $55,x                           ; F1E5 55 55                    UU
        eor     $55,x                           ; F1E7 55 55                    UU
        eor     $55,x                           ; F1E9 55 55                    UU
        eor     $55,x                           ; F1EB 55 55                    UU
        eor     $55,x                           ; F1ED 55 55                    UU
        eor     $55,x                           ; F1EF 55 55                    UU
        eor     $55,x                           ; F1F1 55 55                    UU
        eor     $55,x                           ; F1F3 55 55                    UU
        eor     $55,x                           ; F1F5 55 55                    UU
        eor     $55,x                           ; F1F7 55 55                    UU
        eor     $55,x                           ; F1F9 55 55                    UU
        eor     $55,x                           ; F1FB 55 55                    UU
        eor     $55,x                           ; F1FD 55 55                    UU
        eor     $55,x                           ; F1FF 55 55                    UU
        eor     $A9,x                           ; F201 55 A9                    U.
        tax                                     ; F203 AA                       .
        tax                                     ; F204 AA                       .
        tax                                     ; F205 AA                       .
        eor     $55,x                           ; F206 55 55                    UU
        eor     $55,x                           ; F208 55 55                    UU
        eor     $55,x                           ; F20A 55 55                    UU
        eor     $55,x                           ; F20C 55 55                    UU
        eor     $55,x                           ; F20E 55 55                    UU
        eor     $AA,x                           ; F210 55 AA                    U.
        tax                                     ; F212 AA                       .
        tax                                     ; F213 AA                       .
        tax                                     ; F214 AA                       .
        tax                                     ; F215 AA                       .
        tax                                     ; F216 AA                       .
        tax                                     ; F217 AA                       .
        tax                                     ; F218 AA                       .
        tax                                     ; F219 AA                       .
        tax                                     ; F21A AA                       .
        tax                                     ; F21B AA                       .
        tax                                     ; F21C AA                       .
        tax                                     ; F21D AA                       .
        tax                                     ; F21E AA                       .
        tax                                     ; F21F AA                       .
        tax                                     ; F220 AA                       .
        tax                                     ; F221 AA                       .
        tax                                     ; F222 AA                       .
        tax                                     ; F223 AA                       .
        tax                                     ; F224 AA                       .
        tax                                     ; F225 AA                       .
        tax                                     ; F226 AA                       .
        tax                                     ; F227 AA                       .
        tax                                     ; F228 AA                       .
        tax                                     ; F229 AA                       .
        tax                                     ; F22A AA                       .
        tax                                     ; F22B AA                       .
        tax                                     ; F22C AA                       .
        tax                                     ; F22D AA                       .
        tax                                     ; F22E AA                       .
        tax                                     ; F22F AA                       .
        tax                                     ; F230 AA                       .
        tax                                     ; F231 AA                       .
        tax                                     ; F232 AA                       .
        tax                                     ; F233 AA                       .
        tax                                     ; F234 AA                       .
        tax                                     ; F235 AA                       .
        tax                                     ; F236 AA                       .
        tax                                     ; F237 AA                       .
        tax                                     ; F238 AA                       .
        tax                                     ; F239 AA                       .
        tax                                     ; F23A AA                       .
        tax                                     ; F23B AA                       .
        tax                                     ; F23C AA                       .
        tax                                     ; F23D AA                       .
        tax                                     ; F23E AA                       .
        tax                                     ; F23F AA                       .
        brk                                     ; F240 00                       .
        brk                                     ; F241 00                       .
        brk                                     ; F242 00                       .
        rti                                     ; F243 40                       @

; ----------------------------------------------------------------------------
        .byte   $02                             ; F244 02                       .
        bcs     LF285                           ; F245 B0 3E                    .>
        brk                                     ; F247 00                       .
        .byte   $54                             ; F248 54                       T
        lda     $7B,x                           ; F249 B5 7B                    .{
        .byte   $DF                             ; F24B DF                       .
        .byte   $FF                             ; F24C FF                       .
        lda     $76ED,x                         ; F24D BD ED 76                 ..v
        and     #$49                            ; F250 29 49                    )I
        and     #$91                            ; F252 29 91                    ).
        .byte   $44                             ; F254 44                       D
        .byte   $44                             ; F255 44                       D
        .byte   $22                             ; F256 22                       "
        eor     #$AA                            ; F257 49 AA                    I.
        tax                                     ; F259 AA                       .
        dec     $5A,x                           ; F25A D6 5A                    .Z
        .byte   $BB                             ; F25C BB                       .
        eor     $AD,x                           ; F25D 55 AD                    U.
        eor     $75BD,x                         ; F25F 5D BD 75                 ].u
        ldx     $24,y                           ; F262 B6 24                    .$
        ora     ($41),y                         ; F264 11 41                    .A
        .byte   $12                             ; F266 12                       .
        .byte   $02                             ; F267 02                       .
        .byte   $02                             ; F268 02                       .
        inx                                     ; F269 E8                       .
        .byte   $4F                             ; F26A 4F                       O
        .byte   $AB                             ; F26B AB                       .
        .byte   $72                             ; F26C 72                       r
        .byte   $B7                             ; F26D B7                       .
        ldx     $BB7B,y                         ; F26E BE 7B BB                 .{.
        .byte   $BB                             ; F271 BB                       .
        adc     $AD6B                           ; F272 6D 6B AD                 mk.
        eor     $DB,x                           ; F275 55 DB                    U.
        .byte   $5A                             ; F277 5A                       Z
        .byte   $AB                             ; F278 AB                       .
        lsr     a                               ; F279 4A                       J
        bit     $24                             ; F27A 24 24                    $$
        eor     ($22),y                         ; F27C 51 22                    Q"
        and     ($92,x)                         ; F27E 21 92                    !.
        bit     $A1                             ; F280 24 A1                    $.
        .byte   $92                             ; F282 92                       .
        sty     $4A,x                           ; F283 94 4A                    .J
LF285:  .byte   $52                             ; F285 52                       R
        .byte   $AB                             ; F286 AB                       .
        tax                                     ; F287 AA                       .
        tax                                     ; F288 AA                       .
        lda     $5A                             ; F289 A5 5A                    .Z
        cmp     $EDB5,y                         ; F28B D9 B5 ED                 ...
        ldx     $F6,y                           ; F28E B6 F6                    ..
        ror     $DB,x                           ; F290 76 DB                    v.
        adc     $AB,x                           ; F292 75 AB                    u.
        lda     $D6AD                           ; F294 AD AD D6                 ...
        .byte   $34                             ; F297 34                       4
        eor     $55,x                           ; F298 55 55                    UU
        .byte   $4B                             ; F29A 4B                       K
        .byte   $4B                             ; F29B 4B                       K
        eor     $A9,x                           ; F29C 55 A9                    U.
        .byte   $92                             ; F29E 92                       .
        ldy     $54                             ; F29F A4 54                    .T
        eor     #$A9                            ; F2A1 49 A9                    I.
        .byte   $54                             ; F2A3 54                       T
        eor     #$93                            ; F2A4 49 93                    I.
        .byte   $54                             ; F2A6 54                       T
        .byte   $14                             ; F2A7 14                       .
        ora     $95,x                           ; F2A8 15 95                    ..
        dec     $2C,x                           ; F2AA D6 2C                    .,
        .byte   $6B                             ; F2AC 6B                       k
        txs                                     ; F2AD 9A                       .
        .byte   $54                             ; F2AE 54                       T
        .byte   $32                             ; F2AF 32                       2
        tax                                     ; F2B0 AA                       .
        ldy     $95                             ; F2B1 A4 95                    ..
        eor     $AA,x                           ; F2B3 55 AA                    U.
        dex                                     ; F2B5 CA                       .
        .byte   $92                             ; F2B6 92                       .
        and     $7556,y                         ; F2B7 39 56 75                 9Vu
        .byte   $5A                             ; F2BA 5A                       Z
        eor     $ADBB,x                         ; F2BB 5D BB AD                 ]..
        .byte   $5A                             ; F2BE 5A                       Z
        .byte   $6B                             ; F2BF 6B                       k
        stx     $5D,y                           ; F2C0 96 5D                    .]
        eor     $AB,x                           ; F2C2 55 AB                    U.
        cmp     $CE,x                           ; F2C4 D5 CE                    ..
        ldx     $B5CA                           ; F2C6 AE CA B5                 ...
        asl     $D7,x                           ; F2C9 16 D7                    ..
        lsr     $5A,x                           ; F2CB 56 5A                    VZ
        sta     $AA,x                           ; F2CD 95 AA                    ..
        .byte   $74                             ; F2CF 74                       t
        ldy     $54,x                           ; F2D0 B4 54                    .T
        lda     $54                             ; F2D2 A5 54                    .T
        tax                                     ; F2D4 AA                       .
        .byte   $E2                             ; F2D5 E2                       .
        ldy     $51                             ; F2D6 A4 51                    .Q
        rol     a                               ; F2D8 2A                       *
        dex                                     ; F2D9 CA                       .
        lsr     a                               ; F2DA 4A                       J
        lda     $38                             ; F2DB A5 38                    .8
        rol     a                               ; F2DD 2A                       *
        and     #$25                            ; F2DE 29 25                    )%
        sta     $D4,x                           ; F2E0 95 D4                    ..
        .byte   $62                             ; F2E2 62                       b
        cmp     $32,x                           ; F2E3 D5 32                    .2
        and     $5D,x                           ; F2E5 35 5D                    5]
        stx     $A6,y                           ; F2E7 96 A6                    ..
        .byte   $9E                             ; F2E9 9E                       .
        nop                                     ; F2EA EA                       .
        tya                                     ; F2EB 98                       .
        lsr     $6B,x                           ; F2EC 56 6B                    Vk
        .byte   $5A                             ; F2EE 5A                       Z
        lda     #$15                            ; F2EF A9 15                    ..
        sta     $B4CC                           ; F2F1 8D CC B4                 ...
        and     $5555,y                         ; F2F4 39 55 55                 9UU
        lda     #$4A                            ; F2F7 A9 4A                    .J
        eor     $49,x                           ; F2F9 55 49                    UI
        lda     $B56A                           ; F2FB AD 6A B5                 .j.
        txs                                     ; F2FE 9A                       .
        .byte   $33                             ; F2FF 33                       3
        lsr     $9D76,x                         ; F300 5E 76 9D                 ^v.
        lda     $BCF1,x                         ; F303 BD F1 BC                 ...
        .byte   $74                             ; F306 74                       t
        .byte   $57                             ; F307 57                       W
        and     $D6,x                           ; F308 35 D6                    5.
        .byte   $52                             ; F30A 52                       R
        cmp     $54,x                           ; F30B D5 54                    .T
        .byte   $1A                             ; F30D 1A                       .
        .byte   $53                             ; F30E 53                       S
        .byte   $89                             ; F30F 89                       .
        txa                                     ; F310 8A                       .
        .byte   $D2                             ; F311 D2                       .
        .byte   $54                             ; F312 54                       T
        sta     $54,x                           ; F313 95 54                    .T
        stx     $8A,y                           ; F315 96 8A                    ..
        eor     $A9                             ; F317 45 A9                    E.
        lsr     a                               ; F319 4A                       J
        lsr     $AB,x                           ; F31A 56 AB                    V.
        .byte   $5A                             ; F31C 5A                       Z
        eor     $5675                           ; F31D 4D 75 56                 MuV
        sta     $5736,x                         ; F320 9D 36 57                 .6W
        lda     $B556                           ; F323 AD 56 B5                 .V.
        tax                                     ; F326 AA                       .
        tax                                     ; F327 AA                       .
        lsr     a                               ; F328 4A                       J
        eor     $55,x                           ; F329 55 55                    UU
        tax                                     ; F32B AA                       .
        tax                                     ; F32C AA                       .
        .byte   $52                             ; F32D 52                       R
        sta     $52,x                           ; F32E 95 52                    .R
        lda     #$52                            ; F330 A9 52                    .R
        adc     #$2A                            ; F332 69 2A                    i*
        eor     $AA55                           ; F334 4D 55 AA                 MU.
        .byte   $54                             ; F337 54                       T
        dex                                     ; F338 CA                       .
        rol     a                               ; F339 2A                       *
        eor     $55,x                           ; F33A 55 55                    UU
        cmp     $AAB2                           ; F33C CD B2 AA                 ...
        .byte   $B2                             ; F33F B2                       .
        .byte   $52                             ; F340 52                       R
        eor     $D5                             ; F341 45 D5                    E.
        .byte   $52                             ; F343 52                       R
        eor     $A565,y                         ; F344 59 65 A5                 Ye.
        eor     $D5,x                           ; F347 55 D5                    U.
        ldy     $AD,x                           ; F349 B4 AD                    ..
        ldx     $B2E6                           ; F34B AE E6 B2                 ...
        tax                                     ; F34E AA                       .
        .byte   $54                             ; F34F 54                       T
        lda     $AA                             ; F350 A5 AA                    ..
        tax                                     ; F352 AA                       .
        tax                                     ; F353 AA                       .
        lsr     $55,x                           ; F354 56 55                    VU
        lda     $55AA                           ; F356 AD AA 55                 ..U
        eor     $56AB                           ; F359 4D AB 56                 M.V
        lda     $2AAA                           ; F35C AD AA 2A                 ..*
        .byte   $AB                             ; F35F AB                       .
        lsr     $2D,x                           ; F360 56 2D                    V-
        .byte   $AB                             ; F362 AB                       .
        ror     a                               ; F363 6A                       j
        ror     a                               ; F364 6A                       j
        cmp     $B2,x                           ; F365 D5 B2                    ..
        rol     a                               ; F367 2A                       *
        .byte   $AB                             ; F368 AB                       .
        adc     #$AD                            ; F369 69 AD                    i.
        ror     a                               ; F36B 6A                       j
        cmp     $CA,x                           ; F36C D5 CA                    ..
        lsr     a                               ; F36E 4A                       J
        .byte   $47                             ; F36F 47                       G
        .byte   $AB                             ; F370 AB                       .
        ldx     $92                             ; F371 A6 92                    ..
        lsr     a                               ; F373 4A                       J
        .byte   $93                             ; F374 93                       .
        and     $15                             ; F375 25 15                    %.
        lda     #$2A                            ; F377 A9 2A                    .*
        eor     $A9,x                           ; F379 55 A9                    U.
        eor     $95,x                           ; F37B 55 95                    U.
        stx     $9A,y                           ; F37D 96 9A                    ..
        tax                                     ; F37F AA                       .
        rol     a                               ; F380 2A                       *
        .byte   $AB                             ; F381 AB                       .
        bit     $AACD                           ; F382 2C CD AA                 ,..
        .byte   $52                             ; F385 52                       R
        .byte   $A3                             ; F386 A3                       .
        .byte   $92                             ; F387 92                       .
        ldx     $2A                             ; F388 A6 2A                    .*
        .byte   $53                             ; F38A 53                       S
        eor     $9A,x                           ; F38B 55 9A                    U.
        .byte   $D2                             ; F38D D2                       .
        .byte   $52                             ; F38E 52                       R
        eor     $55,x                           ; F38F 55 55                    UU
        .byte   $AB                             ; F391 AB                       .
        ror     a                               ; F392 6A                       j
        lda     $96                             ; F393 A5 96                    ..
        ldx     $AA                             ; F395 A6 AA                    ..
        tax                                     ; F397 AA                       .
        tax                                     ; F398 AA                       .
        stx     $55,y                           ; F399 96 55                    .U
        lda     $6AAA                           ; F39B AD AA 6A                 ..j
        eor     $D5,x                           ; F39E 55 D5                    U.
        ldy     $AA,x                           ; F3A0 B4 AA                    ..
        lda     $AA                             ; F3A2 A5 AA                    ..
        ldy     $A954                           ; F3A4 AC 54 A9                 .T.
        tax                                     ; F3A7 AA                       .
        lsr     a                               ; F3A8 4A                       J
        .byte   $2B                             ; F3A9 2B                       +
        lda     $556A                           ; F3AA AD 6A 55                 .jU
        and     $AB,x                           ; F3AD 35 AB                    5.
        eor     $5A,x                           ; F3AF 55 5A                    UZ
        sta     $AA,x                           ; F3B1 95 AA                    ..
        tax                                     ; F3B3 AA                       .
        dex                                     ; F3B4 CA                       .
        rol     a                               ; F3B5 2A                       *
        eor     $AB,x                           ; F3B6 55 AB                    U.
        eor     $6B,x                           ; F3B8 55 6B                    Uk
        ldx     $AA,y                           ; F3BA B6 AA                    ..
        eor     $AB,x                           ; F3BC 55 AB                    U.
        tax                                     ; F3BE AA                       .
        eor     $55,x                           ; F3BF 55 55                    UU
        eor     $69,x                           ; F3C1 55 69                    Ui
        and     #$6B                            ; F3C3 29 6B                    )k
        .byte   $5A                             ; F3C5 5A                       Z
        sta     $4A,x                           ; F3C6 95 4A                    .J
        .byte   $53                             ; F3C8 53                       S
        eor     $AA,x                           ; F3C9 55 AA                    U.
        lsr     a                               ; F3CB 4A                       J
        eor     $55,x                           ; F3CC 55 55                    UU
        lda     $2A,x                           ; F3CE B5 2A                    .*
        lda     $AA,x                           ; F3D0 B5 AA                    ..
        .byte   $D4                             ; F3D2 D4                       .
        tax                                     ; F3D3 AA                       .
        tax                                     ; F3D4 AA                       .
        adc     $55                             ; F3D5 65 55                    eU
        eor     $95,x                           ; F3D7 55 95                    U.
        tax                                     ; F3D9 AA                       .
        .byte   $B2                             ; F3DA B2                       .
        .byte   $54                             ; F3DB 54                       T
        eor     $55,x                           ; F3DC 55 55                    UU
        eor     $AB,x                           ; F3DE 55 AB                    U.
        tax                                     ; F3E0 AA                       .
        ror     a                               ; F3E1 6A                       j
        adc     #$55                            ; F3E2 69 55                    iU
        sta     $9A,x                           ; F3E4 95 9A                    ..
        bit     $AA55                           ; F3E6 2C 55 AA                 ,U.
        tax                                     ; F3E9 AA                       .
        tax                                     ; F3EA AA                       .
        lsr     $55,x                           ; F3EB 56 55                    VU
        lda     $AA,x                           ; F3ED B5 AA                    ..
        tax                                     ; F3EF AA                       .
        tax                                     ; F3F0 AA                       .
        .byte   $52                             ; F3F1 52                       R
        eor     $55,x                           ; F3F2 55 55                    UU
        eor     $A9,x                           ; F3F4 55 A9                    U.
        tax                                     ; F3F6 AA                       .
        .byte   $54                             ; F3F7 54                       T
        lda     $2A                             ; F3F8 A5 2A                    .*
        eor     $AA,x                           ; F3FA 55 AA                    U.
        jmp     L2A95                           ; F3FC 4C 95 2A                 L.*

; ----------------------------------------------------------------------------
        .byte   $53                             ; F3FF 53                       S
        eor     $A5,x                           ; F400 55 A5                    U.
        tax                                     ; F402 AA                       .
        lsr     a                               ; F403 4A                       J
        eor     $95,x                           ; F404 55 95                    U.
        tax                                     ; F406 AA                       .
        tax                                     ; F407 AA                       .
        lsr     $55,x                           ; F408 56 55                    VU
        eor     $AB,x                           ; F40A 55 AB                    U.
        tax                                     ; F40C AA                       .
        eor     $AD,x                           ; F40D 55 AD                    U.
        .byte   $5A                             ; F40F 5A                       Z
        lda     $AD5A                           ; F410 AD 5A AD                 .Z.
        lsr     $B5,x                           ; F413 56 B5                    V.
        tax                                     ; F415 AA                       .
        lsr     $55,x                           ; F416 56 55                    VU
        eor     $55,x                           ; F418 55 55                    UU
        lda     #$AA                            ; F41A A9 AA                    ..
        tax                                     ; F41C AA                       .
        tax                                     ; F41D AA                       .
        tax                                     ; F41E AA                       .
        tax                                     ; F41F AA                       .
        lda     #$56                            ; F420 A9 56                    .V
        eor     $55,x                           ; F422 55 55                    UU
        and     $B5,x                           ; F424 35 B5                    5.
        ldy     $2A,x                           ; F426 B4 2A                    .*
        lda     $AAAA                           ; F428 AD AA AA                 ...
        tax                                     ; F42B AA                       .
        tax                                     ; F42C AA                       .
        tax                                     ; F42D AA                       .
        tax                                     ; F42E AA                       .
        tax                                     ; F42F AA                       .
        tax                                     ; F430 AA                       .
        tax                                     ; F431 AA                       .
        .byte   $34                             ; F432 34                       4
        lda     $54,x                           ; F433 B5 54                    .T
        eor     $53,x                           ; F435 55 53                    US
        eor     $55,x                           ; F437 55 55                    UU
        cmp     $AA,x                           ; F439 D5 AA                    ..
        tax                                     ; F43B AA                       .
        tax                                     ; F43C AA                       .
        eor     $5555,y                         ; F43D 59 55 55                 YUU
        lda     $AAAA                           ; F440 AD AA AA                 ...
        tax                                     ; F443 AA                       .
        tax                                     ; F444 AA                       .
        .byte   $52                             ; F445 52                       R
        eor     $55,x                           ; F446 55 55                    UU
        eor     $55,x                           ; F448 55 55                    UU
        tax                                     ; F44A AA                       .
        tax                                     ; F44B AA                       .
        tax                                     ; F44C AA                       .
        tax                                     ; F44D AA                       .
        tax                                     ; F44E AA                       .
        rol     a                               ; F44F 2A                       *
        eor     $5555                           ; F450 4D 55 55                 MUU
        sta     $AA,x                           ; F453 95 AA                    ..
        .byte   $54                             ; F455 54                       T
        eor     $AA,x                           ; F456 55 AA                    U.
        tax                                     ; F458 AA                       .
        lsr     a                               ; F459 4A                       J
        eor     $55,x                           ; F45A 55 55                    UU
        eor     $55,x                           ; F45C 55 55                    UU
        eor     $55,x                           ; F45E 55 55                    UU
        eor     $AB,x                           ; F460 55 AB                    U.
        tax                                     ; F462 AA                       .
        tax                                     ; F463 AA                       .
        tax                                     ; F464 AA                       .
        tax                                     ; F465 AA                       .
        lda     #$A5                            ; F466 A9 A5                    ..
        tax                                     ; F468 AA                       .
        tax                                     ; F469 AA                       .
        tax                                     ; F46A AA                       .
        .byte   $34                             ; F46B 34                       4
        eor     $55,x                           ; F46C 55 55                    UU
        eor     $55,x                           ; F46E 55 55                    UU
        eor     $55,x                           ; F470 55 55                    UU
        eor     $55,x                           ; F472 55 55                    UU
        eor     $4D,x                           ; F474 55 4D                    UM
        .byte   $AB                             ; F476 AB                       .
        tax                                     ; F477 AA                       .
        tax                                     ; F478 AA                       .
        stx     $56,y                           ; F479 96 56                    .V
        eor     $55,x                           ; F47B 55 55                    UU
        .byte   $AB                             ; F47D AB                       .
        tax                                     ; F47E AA                       .
        tax                                     ; F47F AA                       .
        tax                                     ; F480 AA                       .
        tax                                     ; F481 AA                       .
        tax                                     ; F482 AA                       .
        .byte   $5A                             ; F483 5A                       Z
        eor     $AAA9,y                         ; F484 59 A9 AA                 Y..
        tax                                     ; F487 AA                       .
        tax                                     ; F488 AA                       .
        tax                                     ; F489 AA                       .
        lsr     a                               ; F48A 4A                       J
        eor     $55,x                           ; F48B 55 55                    UU
        lda     #$AA                            ; F48D A9 AA                    ..
        tax                                     ; F48F AA                       .
        .byte   $B2                             ; F490 B2                       .
        .byte   $54                             ; F491 54                       T
        eor     $55,x                           ; F492 55 55                    UU
        eor     $55,x                           ; F494 55 55                    UU
        eor     $55,x                           ; F496 55 55                    UU
        lda     $AA,x                           ; F498 B5 AA                    ..
        tax                                     ; F49A AA                       .
        tax                                     ; F49B AA                       .
        tax                                     ; F49C AA                       .
        tax                                     ; F49D AA                       .
        tax                                     ; F49E AA                       .
        tax                                     ; F49F AA                       .
        tax                                     ; F4A0 AA                       .
        lsr     $55,x                           ; F4A1 56 55                    VU
        eor     $B5,x                           ; F4A3 55 B5                    U.
        tax                                     ; F4A5 AA                       .
        ror     a                               ; F4A6 6A                       j
        eor     $55,x                           ; F4A7 55 55                    UU
        .byte   $AB                             ; F4A9 AB                       .
        tax                                     ; F4AA AA                       .
        tax                                     ; F4AB AA                       .
        tax                                     ; F4AC AA                       .
        .byte   $D4                             ; F4AD D4                       .
        .byte   $54                             ; F4AE 54                       T
        eor     $55,x                           ; F4AF 55 55                    UU
        eor     $55,x                           ; F4B1 55 55                    UU
        eor     $55,x                           ; F4B3 55 55                    UU
        lda     $B2,x                           ; F4B5 B5 B2                    ..
        tax                                     ; F4B7 AA                       .
        .byte   $5A                             ; F4B8 5A                       Z
        eor     $55,x                           ; F4B9 55 55                    UU
        eor     $55,x                           ; F4BB 55 55                    UU
        lda     #$2A                            ; F4BD A9 2A                    .*
        eor     $55,x                           ; F4BF 55 55                    UU
        eor     $A9,x                           ; F4C1 55 A9                    U.
        tax                                     ; F4C3 AA                       .
        tax                                     ; F4C4 AA                       .
        .byte   $52                             ; F4C5 52                       R
        eor     $AAAB                           ; F4C6 4D AB AA                 M..
        tax                                     ; F4C9 AA                       .
        tax                                     ; F4CA AA                       .
        tax                                     ; F4CB AA                       .
        tax                                     ; F4CC AA                       .
        tax                                     ; F4CD AA                       .
        .byte   $5A                             ; F4CE 5A                       Z
        eor     $55,x                           ; F4CF 55 55                    UU
        eor     $55,x                           ; F4D1 55 55                    UU
        eor     $A9,x                           ; F4D3 55 A9                    U.
        tax                                     ; F4D5 AA                       .
        tax                                     ; F4D6 AA                       .
        .byte   $54                             ; F4D7 54                       T
        eor     $55,x                           ; F4D8 55 55                    UU
        lda     #$AA                            ; F4DA A9 AA                    ..
        tax                                     ; F4DC AA                       .
        tax                                     ; F4DD AA                       .
        tax                                     ; F4DE AA                       .
        tax                                     ; F4DF AA                       .
        tax                                     ; F4E0 AA                       .
        ldx     $A9                             ; F4E1 A6 A9                    ..
        tax                                     ; F4E3 AA                       .
        tax                                     ; F4E4 AA                       .
        tax                                     ; F4E5 AA                       .
        tax                                     ; F4E6 AA                       .
        tax                                     ; F4E7 AA                       .
        tax                                     ; F4E8 AA                       .
        tax                                     ; F4E9 AA                       .
        ror     a                               ; F4EA 6A                       j
        eor     $55,x                           ; F4EB 55 55                    UU
        cmp     $AA,x                           ; F4ED D5 AA                    ..
        tax                                     ; F4EF AA                       .
        eor     $55,x                           ; F4F0 55 55                    UU
        .byte   $AB                             ; F4F2 AB                       .
        tax                                     ; F4F3 AA                       .
        tax                                     ; F4F4 AA                       .
        tax                                     ; F4F5 AA                       .
        lsr     a                               ; F4F6 4A                       J
        eor     $55,x                           ; F4F7 55 55                    UU
        lda     #$4A                            ; F4F9 A9 4A                    .J
        eor     $A5,x                           ; F4FB 55 A5                    U.
        tax                                     ; F4FD AA                       .
        .byte   $54                             ; F4FE 54                       T
        eor     $55,x                           ; F4FF 55 55                    UU
        lda     #$AA                            ; F501 A9 AA                    ..
        .byte   $52                             ; F503 52                       R
        eor     $55,x                           ; F504 55 55                    UU
        eor     $55,x                           ; F506 55 55                    UU
        eor     $55,x                           ; F508 55 55                    UU
        eor     $D5,x                           ; F50A 55 D5                    U.
        tax                                     ; F50C AA                       .
        ror     a                               ; F50D 6A                       j
        eor     $B5,x                           ; F50E 55 B5                    U.
        tax                                     ; F510 AA                       .
        ror     a                               ; F511 6A                       j
        eor     $D5,x                           ; F512 55 D5                    U.
        tax                                     ; F514 AA                       .
        tax                                     ; F515 AA                       .
        lsr     $55,x                           ; F516 56 55                    VU
        eor     $55,x                           ; F518 55 55                    UU
        eor     $55,x                           ; F51A 55 55                    UU
        eor     $55,x                           ; F51C 55 55                    UU
        .byte   $4B                             ; F51E 4B                       K
        eor     $55,x                           ; F51F 55 55                    UU
        eor     $55,x                           ; F521 55 55                    UU
        eor     $55,x                           ; F523 55 55                    UU
        eor     $95,x                           ; F525 55 95                    U.
        tax                                     ; F527 AA                       .
        tax                                     ; F528 AA                       .
        tax                                     ; F529 AA                       .
        tax                                     ; F52A AA                       .
        tax                                     ; F52B AA                       .
        .byte   $34                             ; F52C 34                       4
        lda     $AAAA                           ; F52D AD AA AA                 ...
        tax                                     ; F530 AA                       .
        tax                                     ; F531 AA                       .
        tax                                     ; F532 AA                       .
        tax                                     ; F533 AA                       .
        tax                                     ; F534 AA                       .
        tax                                     ; F535 AA                       .
        tax                                     ; F536 AA                       .
        tax                                     ; F537 AA                       .
        tax                                     ; F538 AA                       .
        tax                                     ; F539 AA                       .
        tax                                     ; F53A AA                       .
        tax                                     ; F53B AA                       .
        tax                                     ; F53C AA                       .
        tax                                     ; F53D AA                       .
        tax                                     ; F53E AA                       .
        tax                                     ; F53F AA                       .
        tax                                     ; F540 AA                       .
        tax                                     ; F541 AA                       .
        tax                                     ; F542 AA                       .
        tax                                     ; F543 AA                       .
        eor     $55,x                           ; F544 55 55                    UU
        eor     $55,x                           ; F546 55 55                    UU
        eor     $55,x                           ; F548 55 55                    UU
        eor     $55,x                           ; F54A 55 55                    UU
        eor     $55,x                           ; F54C 55 55                    UU
        eor     $55,x                           ; F54E 55 55                    UU
        eor     $55,x                           ; F550 55 55                    UU
        eor     $55,x                           ; F552 55 55                    UU
        eor     $95,x                           ; F554 55 95                    U.
        tax                                     ; F556 AA                       .
        tax                                     ; F557 AA                       .
        tax                                     ; F558 AA                       .
        tax                                     ; F559 AA                       .
        rol     a                               ; F55A 2A                       *
        eor     $55,x                           ; F55B 55 55                    UU
        eor     $55,x                           ; F55D 55 55                    UU
        eor     $55,x                           ; F55F 55 55                    UU
        eor     $55,x                           ; F561 55 55                    UU
        eor     $95,x                           ; F563 55 95                    U.
        tax                                     ; F565 AA                       .
        tax                                     ; F566 AA                       .
        tax                                     ; F567 AA                       .
        tax                                     ; F568 AA                       .
        tax                                     ; F569 AA                       .
        tax                                     ; F56A AA                       .
        tax                                     ; F56B AA                       .
        tax                                     ; F56C AA                       .
        tax                                     ; F56D AA                       .
        tax                                     ; F56E AA                       .
        tax                                     ; F56F AA                       .
        tax                                     ; F570 AA                       .
        tax                                     ; F571 AA                       .
        tax                                     ; F572 AA                       .
        tax                                     ; F573 AA                       .
        tax                                     ; F574 AA                       .
        tax                                     ; F575 AA                       .
        tax                                     ; F576 AA                       .
        tax                                     ; F577 AA                       .
        tax                                     ; F578 AA                       .
        tax                                     ; F579 AA                       .
        tax                                     ; F57A AA                       .
        lsr     $55,x                           ; F57B 56 55                    VU
        eor     $55,x                           ; F57D 55 55                    UU
        eor     $B5,x                           ; F57F 55 B5                    U.
        tax                                     ; F581 AA                       .
        tax                                     ; F582 AA                       .
        tax                                     ; F583 AA                       .
        tax                                     ; F584 AA                       .
        tax                                     ; F585 AA                       .
        tax                                     ; F586 AA                       .
        tax                                     ; F587 AA                       .
        tax                                     ; F588 AA                       .
        tax                                     ; F589 AA                       .
        tax                                     ; F58A AA                       .
        rol     a                               ; F58B 2A                       *
        eor     $55,x                           ; F58C 55 55                    UU
        eor     $55,x                           ; F58E 55 55                    UU
        eor     $55,x                           ; F590 55 55                    UU
        eor     $55,x                           ; F592 55 55                    UU
        eor     $55,x                           ; F594 55 55                    UU
        eor     $D5,x                           ; F596 55 D5                    U.
        tax                                     ; F598 AA                       .
        tax                                     ; F599 AA                       .
        tax                                     ; F59A AA                       .
        tax                                     ; F59B AA                       .
        tax                                     ; F59C AA                       .
        tax                                     ; F59D AA                       .
        tax                                     ; F59E AA                       .
        .byte   $52                             ; F59F 52                       R
        eor     $55,x                           ; F5A0 55 55                    UU
        eor     $55,x                           ; F5A2 55 55                    UU
        eor     $55,x                           ; F5A4 55 55                    UU
        eor     $55,x                           ; F5A6 55 55                    UU
        eor     $55,x                           ; F5A8 55 55                    UU
        eor     $55,x                           ; F5AA 55 55                    UU
        eor     $55,x                           ; F5AC 55 55                    UU
        eor     $B5,x                           ; F5AE 55 B5                    U.
        tax                                     ; F5B0 AA                       .
        tax                                     ; F5B1 AA                       .
        tax                                     ; F5B2 AA                       .
        ror     a                               ; F5B3 6A                       j
        eor     $55,x                           ; F5B4 55 55                    UU
        eor     $55,x                           ; F5B6 55 55                    UU
        eor     $55,x                           ; F5B8 55 55                    UU
        eor     $55,x                           ; F5BA 55 55                    UU
        eor     $55,x                           ; F5BC 55 55                    UU
        eor     $55,x                           ; F5BE 55 55                    UU
        eor     $55,x                           ; F5C0 55 55                    UU
        sta     $AA,x                           ; F5C2 95 AA                    ..
        tax                                     ; F5C4 AA                       .
        tax                                     ; F5C5 AA                       .
        tax                                     ; F5C6 AA                       .
        tax                                     ; F5C7 AA                       .
        tax                                     ; F5C8 AA                       .
        tax                                     ; F5C9 AA                       .
        rol     a                               ; F5CA 2A                       *
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
        eor     $D5,x                           ; F5E3 55 D5                    U.
        tax                                     ; F5E5 AA                       .
        tax                                     ; F5E6 AA                       .
        tax                                     ; F5E7 AA                       .
        tax                                     ; F5E8 AA                       .
        tax                                     ; F5E9 AA                       .
        tax                                     ; F5EA AA                       .
        tax                                     ; F5EB AA                       .
        lsr     a                               ; F5EC 4A                       J
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
        eor     $AD,x                           ; F60B 55 AD                    U.
        tax                                     ; F60D AA                       .
        tax                                     ; F60E AA                       .
        tax                                     ; F60F AA                       .
        tax                                     ; F610 AA                       .
        tax                                     ; F611 AA                       .
        tax                                     ; F612 AA                       .
        tax                                     ; F613 AA                       .
        tax                                     ; F614 AA                       .
        tax                                     ; F615 AA                       .
        tax                                     ; F616 AA                       .
        tax                                     ; F617 AA                       .
        tax                                     ; F618 AA                       .
        rol     a                               ; F619 2A                       *
        eor     $55,x                           ; F61A 55 55                    UU
        eor     $55,x                           ; F61C 55 55                    UU
        eor     $55,x                           ; F61E 55 55                    UU
        eor     $55,x                           ; F620 55 55                    UU
        eor     $55,x                           ; F622 55 55                    UU
        eor     $55,x                           ; F624 55 55                    UU
        lda     $AAAA                           ; F626 AD AA AA                 ...
        tax                                     ; F629 AA                       .
        tax                                     ; F62A AA                       .
        tax                                     ; F62B AA                       .
        tax                                     ; F62C AA                       .
        .byte   $5A                             ; F62D 5A                       Z
        eor     $55,x                           ; F62E 55 55                    UU
        eor     $55,x                           ; F630 55 55                    UU
        eor     $55,x                           ; F632 55 55                    UU
        lda     #$AA                            ; F634 A9 AA                    ..
        tax                                     ; F636 AA                       .
        tax                                     ; F637 AA                       .
        tax                                     ; F638 AA                       .
        tax                                     ; F639 AA                       .
        lsr     a                               ; F63A 4A                       J
        eor     $55,x                           ; F63B 55 55                    UU
        eor     $55,x                           ; F63D 55 55                    UU
        eor     $55,x                           ; F63F 55 55                    UU
        eor     $55,x                           ; F641 55 55                    UU
        eor     $55,x                           ; F643 55 55                    UU
        eor     $55,x                           ; F645 55 55                    UU
        eor     $55,x                           ; F647 55 55                    UU
        lda     $AAAA                           ; F649 AD AA AA                 ...
        tax                                     ; F64C AA                       .
        tax                                     ; F64D AA                       .
        tax                                     ; F64E AA                       .
        tax                                     ; F64F AA                       .
        .byte   $5A                             ; F650 5A                       Z
        eor     $55,x                           ; F651 55 55                    UU
        eor     $55,x                           ; F653 55 55                    UU
        lda     #$AA                            ; F655 A9 AA                    ..
        tax                                     ; F657 AA                       .
        tax                                     ; F658 AA                       .
        tax                                     ; F659 AA                       .
        tax                                     ; F65A AA                       .
LF65B:  tax                                     ; F65B AA                       .
        .byte   $52                             ; F65C 52                       R
        eor     $55,x                           ; F65D 55 55                    UU
        eor     $55,x                           ; F65F 55 55                    UU
        sta     $AA,x                           ; F661 95 AA                    ..
        tax                                     ; F663 AA                       .
        tax                                     ; F664 AA                       .
        tax                                     ; F665 AA                       .
        tax                                     ; F666 AA                       .
        tax                                     ; F667 AA                       .
        tax                                     ; F668 AA                       .
        tax                                     ; F669 AA                       .
        ror     a                               ; F66A 6A                       j
        eor     $55,x                           ; F66B 55 55                    UU
        eor     $55,x                           ; F66D 55 55                    UU
        eor     $55,x                           ; F66F 55 55                    UU
        eor     $55,x                           ; F671 55 55                    UU
        lda     $AAAA                           ; F673 AD AA AA                 ...
        tax                                     ; F676 AA                       .
        tax                                     ; F677 AA                       .
        tax                                     ; F678 AA                       .
        tax                                     ; F679 AA                       .
        tax                                     ; F67A AA                       .
        lsr     a                               ; F67B 4A                       J
        eor     $55,x                           ; F67C 55 55                    UU
        eor     $55,x                           ; F67E 55 55                    UU
        eor     $55,x                           ; F680 55 55                    UU
        eor     $55,x                           ; F682 55 55                    UU
        eor     $55,x                           ; F684 55 55                    UU
        eor     $55,x                           ; F686 55 55                    UU
        eor     $B5,x                           ; F688 55 B5                    U.
        tax                                     ; F68A AA                       .
        tax                                     ; F68B AA                       .
        tax                                     ; F68C AA                       .
        tax                                     ; F68D AA                       .
        tax                                     ; F68E AA                       .
        tax                                     ; F68F AA                       .
        tax                                     ; F690 AA                       .
        tax                                     ; F691 AA                       .
        tax                                     ; F692 AA                       .
        tax                                     ; F693 AA                       .
        tax                                     ; F694 AA                       .
        tax                                     ; F695 AA                       .
        tax                                     ; F696 AA                       .
        tax                                     ; F697 AA                       .
        tax                                     ; F698 AA                       .
        tax                                     ; F699 AA                       .
        tax                                     ; F69A AA                       .
        tax                                     ; F69B AA                       .
        tax                                     ; F69C AA                       .
        tax                                     ; F69D AA                       .
        tax                                     ; F69E AA                       .
        tax                                     ; F69F AA                       .
        tax                                     ; F6A0 AA                       .
        tax                                     ; F6A1 AA                       .
        tax                                     ; F6A2 AA                       .
        tax                                     ; F6A3 AA                       .
        tax                                     ; F6A4 AA                       .
        tax                                     ; F6A5 AA                       .
        tax                                     ; F6A6 AA                       .
        tax                                     ; F6A7 AA                       .
LF6A8:  tax                                     ; F6A8 AA                       .
        eor     $55,x                           ; F6A9 55 55                    UU
        eor     $55,x                           ; F6AB 55 55                    UU
        eor     $55,x                           ; F6AD 55 55                    UU
        eor     $55,x                           ; F6AF 55 55                    UU
        tax                                     ; F6B1 AA                       .
        tax                                     ; F6B2 AA                       .
        tax                                     ; F6B3 AA                       .
        tax                                     ; F6B4 AA                       .
        tax                                     ; F6B5 AA                       .
        tax                                     ; F6B6 AA                       .
        tax                                     ; F6B7 AA                       .
        tax                                     ; F6B8 AA                       .
        tax                                     ; F6B9 AA                       .
        tax                                     ; F6BA AA                       .
        tax                                     ; F6BB AA                       .
        tax                                     ; F6BC AA                       .
        tax                                     ; F6BD AA                       .
        tax                                     ; F6BE AA                       .
        tax                                     ; F6BF AA                       .
        brk                                     ; F6C0 00                       .
        brk                                     ; F6C1 00                       .
        brk                                     ; F6C2 00                       .
        brk                                     ; F6C3 00                       .
        tya                                     ; F6C4 98                       .
        sbc     $C780,y                         ; F6C5 F9 80 C7                 ...
        .byte   $3B                             ; F6C8 3B                       ;
        .byte   $1C                             ; F6C9 1C                       .
        .byte   $7F                             ; F6CA 7F                       .
        .byte   $7C                             ; F6CB 7C                       |
        and     ($F7,x)                         ; F6CC 21 F7                    !.
        .byte   $73                             ; F6CE 73                       s
        bpl     LF710                           ; F6CF 10 3F                    .?
        asl     $0383                           ; F6D1 0E 83 03                 ...
        .byte   $0F                             ; F6D4 0F                       .
        bvs     LF65B                           ; F6D5 70 84                    p.
        .byte   $7B                             ; F6D7 7B                       {
        cpy     #$A0                            ; F6D8 C0 A0                    ..
        stx     $AAAA                           ; F6DA 8E AA AA                 ...
        tax                                     ; F6DD AA                       .
        tax                                     ; F6DE AA                       .
        asl     $3F8F,x                         ; F6DF 1E 8F 3F                 ..?
        ldy     $DF1F,x                         ; F6E2 BC 1F DF                 ...
        .byte   $E7                             ; F6E5 E7                       .
        .byte   $C7                             ; F6E6 C7                       .
        sei                                     ; F6E7 78                       x
        sta     $55,x                           ; F6E8 95 55                    .U
        eor     $55,x                           ; F6EA 55 55                    UU
        adc     ($71),y                         ; F6EC 71 71                    qq
        cmp     $69                             ; F6EE C5 69                    .i
        sec                                     ; F6F0 38                       8
        cpx     #$30                            ; F6F1 E0 30                    .0
        .byte   $9C                             ; F6F3 9C                       .
        .byte   $43                             ; F6F4 43                       C
        cpx     $B0                             ; F6F5 E4 B0                    ..
        .byte   $83                             ; F6F7 83                       .
        .byte   $03                             ; F6F8 03                       .
        .byte   $03                             ; F6F9 03                       .
        .byte   $A3                             ; F6FA A3                       .
        .byte   $FA                             ; F6FB FA                       .
        ldy     #$A6                            ; F6FC A0 A6                    ..
        stx     $E81F                           ; F6FE 8E 1F E8                 ...
        sta     ($1F),y                         ; F701 91 1F                    ..
        .byte   $63                             ; F703 63                       c
        inc     $3E1C,x                         ; F704 FE 1C 3E                 ..>
        dec     $B3D3,x                         ; F707 DE D3 B3                 ...
        ror     $38,x                           ; F70A 76 38                    v8
        .byte   $3B                             ; F70C 3B                       ;
        stx     $63E3                           ; F70D 8E E3 63                 ..c
LF710:  .byte   $E2                             ; F710 E2                       .
LF711:  sbc     ($73,x)                         ; F711 E1 73                    .s
        sty     $7807                           ; F713 8C 07 78                 ..x
        .byte   $7C                             ; F716 7C                       |
        sec                                     ; F717 38                       8
        beq     LF72F                           ; F718 F0 15                    ..
        .byte   $0F                             ; F71A 0F                       .
        .byte   $63                             ; F71B 63                       c
        .byte   $87                             ; F71C 87                       .
        .byte   $03                             ; F71D 03                       .
        .byte   $DC                             ; F71E DC                       .
        .byte   $07                             ; F71F 07                       .
        bne     LF6A8                           ; F720 D0 86                    ..
        .byte   $87                             ; F722 87                       .
        and     $90F0,y                         ; F723 39 F0 90                 9..
        ldx     #$17                            ; F726 A2 17                    ..
        .byte   $C3                             ; F728 C3                       .
        .byte   $8F                             ; F729 8F                       .
        cpx     #$F1                            ; F72A E0 F1                    ..
        sbc     ($39,x)                         ; F72C E1 39                    .9
        .byte   $66                             ; F72E 66                       f
LF72F:  sed                                     ; F72F F8                       .
        .byte   $07                             ; F730 07                       .
        .byte   $9E                             ; F731 9E                       .
        .byte   $3F                             ; F732 3F                       ?
        .byte   $7C                             ; F733 7C                       |
        beq     LF7AE                           ; F734 F0 78                    .x
        .byte   $87                             ; F736 87                       .
        .byte   $F3                             ; F737 F3                       .
        .byte   $D4                             ; F738 D4                       .
        adc     ($71,x)                         ; F739 61 71                    aq
        .byte   $C7                             ; F73B C7                       .
        bcs     LF7A1                           ; F73C B0 63                    .c
        .byte   $3A                             ; F73E 3A                       :
        adc     ($6A),y                         ; F73F 71 6A                    qj
        sec                                     ; F741 38                       8
        ror     $E2,x                           ; F742 76 E2                    v.
        .byte   $12                             ; F744 12                       .
        .byte   $AF                             ; F745 AF                       .
        sbc     ($04,x)                         ; F746 E1 04                    ..
        .byte   $9F                             ; F748 9F                       .
        inx                                     ; F749 E8                       .
        stx     LFC43                           ; F74A 8E 43 FC                 .C.
        bvs     LF711                           ; F74D 70 C2                    p.
        .byte   $97                             ; F74F 97                       .
        .byte   $C2                             ; F750 C2                       .
        .byte   $3B                             ; F751 3B                       ;
        cli                                     ; F752 58                       X
        sta     $13C9,y                         ; F753 99 C9 13                 ...
        .byte   $3F                             ; F756 3F                       ?
        and     #$C7                            ; F757 29 C7                    ).
        ora     #$7F                            ; F759 09 7F                    ..
        tya                                     ; F75B 98                       .
        .byte   $9B                             ; F75C 9B                       .
        tya                                     ; F75D 98                       .
        .byte   $E3                             ; F75E E3                       .
        .byte   $47                             ; F75F 47                       G
        cpx     #$4F                            ; F760 E0 4F                    .O
        clc                                     ; F762 18                       .
        .byte   $D7                             ; F763 D7                       .
        ldy     $1D61                           ; F764 AC 61 1D                 .a.
        .byte   $5B                             ; F767 5B                       [
        ldy     $1B                             ; F768 A4 1B                    ..
        .byte   $43                             ; F76A 43                       C
        ora     $58B3,x                         ; F76B 1D B3 58                 ..X
        eor     $98B8,y                         ; F76E 59 B8 98                 Y..
        .byte   $03                             ; F771 03                       .
        .byte   $8F                             ; F772 8F                       .
        ora     $0C3B,y                         ; F773 19 3B 0C                 .;.
        .byte   $C7                             ; F776 C7                       .
        .byte   $0F                             ; F777 0F                       .
        .byte   $EB                             ; F778 EB                       .
        clc                                     ; F779 18                       .
        rol     LF187,x                         ; F77A 3E 87 F1                 >..
        cmp     ($1F,x)                         ; F77D C1 1F                    ..
        .byte   $DA                             ; F77F DA                       .
        sei                                     ; F780 78                       x
        cpy     $73                             ; F781 C4 73                    .s
        sbc     ($F9,x)                         ; F783 E1 F9                    ..
        .byte   $0C                             ; F785 0C                       .
        ror     $6C,x                           ; F786 76 6C                    vl
        sbc     #$15                            ; F788 E9 15                    ..
        ror     $C74C,x                         ; F78A 7E 4C C7                 ~L.
        adc     ($FC),y                         ; F78D 71 FC                    q.
        cpx     #$43                            ; F78F E0 43                    .C
        ora     $BC0F,x                         ; F791 1D 0F BC                 ...
        asl     $8E5A                           ; F794 0E 5A 8E                 .Z.
        sbc     ($81),y                         ; F797 F1 81                    ..
        .byte   $A7                             ; F799 A7                       .
        inx                                     ; F79A E8                       .
        sei                                     ; F79B 78                       x
        .byte   $0C                             ; F79C 0C                       .
        .byte   $9E                             ; F79D 9E                       .
        .byte   $C2                             ; F79E C2                       .
        ror     $0A                             ; F79F 66 0A                    f.
LF7A1:  .byte   $1B                             ; F7A1 1B                       .
        ora     $C7,x                           ; F7A2 15 C7                    ..
        adc     ($58),y                         ; F7A4 71 58                    qX
        lda     $26                             ; F7A6 A5 26                    .&
        lda     $C754                           ; F7A8 AD 54 C7                 .T.
        .byte   $62                             ; F7AB 62                       b
        sei                                     ; F7AC 78                       x
        .byte   $4B                             ; F7AD 4B                       K
LF7AE:  .byte   $5A                             ; F7AE 5A                       Z
        .byte   $0F                             ; F7AF 0F                       .
        ldx     $59B8,y                         ; F7B0 BE B8 59                 ..Y
        and     $259B,y                         ; F7B3 39 9B 25                 9.%
        .byte   $8F                             ; F7B6 8F                       .
        .byte   $E3                             ; F7B7 E3                       .
        lda     ($71),y                         ; F7B8 B1 71                    .q
        inc     $84                             ; F7BA E6 84                    ..
        .byte   $DF                             ; F7BC DF                       .
        .byte   $E0                             ; F7BD E0                       .
LF7BE:  .byte   $63                             ; F7BE 63                       c
        lda     #$56                            ; F7BF A9 56                    .V
        adc     $6D                             ; F7C1 65 6D                    em
LF7C3:  .byte   $89                             ; F7C3 89                       .
        .byte   $87                             ; F7C4 87                       .
        .byte   $8B                             ; F7C5 8B                       .
        .byte   $87                             ; F7C6 87                       .
        .byte   $77                             ; F7C7 77                       w
        pha                                     ; F7C8 48                       H
        adc     $9CCC,y                         ; F7C9 79 CC 9C                 y..
        sec                                     ; F7CC 38                       8
        ldy     $1A70,x                         ; F7CD BC 70 1A                 .p.
        .byte   $87                             ; F7D0 87                       .
        .byte   $D3                             ; F7D1 D3                       .
        .byte   $83                             ; F7D2 83                       .
        cpx     $7068                           ; F7D3 EC 68 70                 .hp
        adc     $5C                             ; F7D6 65 5C                    e\
        eor     #$07                            ; F7D8 49 07                    I.
        adc     $8718,x                         ; F7DA 7D 18 87                 }..
        .byte   $B3                             ; F7DD B3                       .
        cmp     ($0E,x)                         ; F7DE C1 0E                    ..
        .byte   $17                             ; F7E0 17                       .
        tsx                                     ; F7E1 BA                       .
        clv                                     ; F7E2 B8                       .
        .byte   $1C                             ; F7E3 1C                       .
        nop                                     ; F7E4 EA                       .
        beq     LF7C3                           ; F7E5 F0 DC                    ..
        bne     LF7AE                           ; F7E7 D0 C5                    ..
        lda     $C6,x                           ; F7E9 B5 C6                    ..
        .byte   $57                             ; F7EB 57                       W
        .byte   $D4                             ; F7EC D4                       .
        .byte   $2B                             ; F7ED 2B                       +
        sta     $3D,x                           ; F7EE 95 3D                    .=
        ldy     $16A3                           ; F7F0 AC A3 16                 ...
        .byte   $CF                             ; F7F3 CF                       .
        and     ($7B),y                         ; F7F4 31 7B                    1{
        dec     $BA                             ; F7F6 C6 BA                    ..
        .byte   $1A                             ; F7F8 1A                       .
        adc     $DC,x                           ; F7F9 75 DC                    u.
        bcs     LF866                           ; F7FB B0 69                    .i
        sbc     ($B0),y                         ; F7FD F1 B0                    ..
        ora     ($37),y                         ; F7FF 11 37                    .7
        tax                                     ; F801 AA                       .
        sec                                     ; F802 38                       8
        ror     $C278                           ; F803 6E 78 C2                 nx.
        lda     #$AC                            ; F806 A9 AC                    ..
        .byte   $62                             ; F808 62                       b
        rol     $52AC                           ; F809 2E AC 52                 ..R
        .byte   $C3                             ; F80C C3                       .
        .byte   $9E                             ; F80D 9E                       .
        bcc     LF7BE                           ; F80E 90 AE                    ..
        txa                                     ; F810 8A                       .
        dec     $83                             ; F811 C6 83                    ..
        lsr     $7531,x                         ; F813 5E 31 75                 ^1u
        sty     $8D,x                           ; F816 94 8D                    ..
        sbc     $45                             ; F818 E5 45                    .E
        .byte   $4B                             ; F81A 4B                       K
        and     $B54D,y                         ; F81B 39 4D B5                 9M.
        .byte   $E2                             ; F81E E2                       .
        eor     $8F                             ; F81F 45 8F                    E.
        lda     ($5A),y                         ; F821 B1 5A                    .Z
        .byte   $6B                             ; F823 6B                       k
        .byte   $D4                             ; F824 D4                       .
        eor     $C5,x                           ; F825 55 C5                    U.
        .byte   $4F                             ; F827 4F                       O
        cld                                     ; F828 D8                       .
        ror     a                               ; F829 6A                       j
        dex                                     ; F82A CA                       .
        lda     $AA                             ; F82B A5 AA                    ..
        .byte   $23                             ; F82D 23                       #
        adc     $5768,x                         ; F82E 7D 68 57                 }hW
        adc     #$AC                            ; F831 69 AC                    i.
        .byte   $5A                             ; F833 5A                       Z
        asl     $69D5                           ; F834 0E D5 69                 ..i
        and     #$97                            ; F837 29 97                    ).
        sed                                     ; F839 F8                       .
        tay                                     ; F83A A8                       .
        .byte   $92                             ; F83B 92                       .
        ldx     $69,y                           ; F83C B6 69                    .i
        inx                                     ; F83E E8                       .
        .byte   $74                             ; F83F 74                       t
        .byte   $34                             ; F840 34                       4
        cmp     $52,x                           ; F841 D5 52                    .R
        .byte   $63                             ; F843 63                       c
        .byte   $D3                             ; F844 D3                       .
        inx                                     ; F845 E8                       .
        eor     ($27,x)                         ; F846 41 27                    A'
        .byte   $17                             ; F848 17                       .
        .byte   $5A                             ; F849 5A                       Z
        .byte   $63                             ; F84A 63                       c
        sbc     ($90),y                         ; F84B F1 90                    ..
        rol     $B562,x                         ; F84D 3E 62 B5                 >b.
        sec                                     ; F850 38                       8
        cmp     $AA                             ; F851 C5 AA                    ..
        sta     $5C6C                           ; F853 8D 6C 5C                 .l\
        .byte   $B2                             ; F856 B2                       .
        lsr     $61,x                           ; F857 56 61                    Va
        lda     $8E54,x                         ; F859 BD 54 8E                 .T.
        .byte   $9E                             ; F85C 9E                       .
        ldy     $695A                           ; F85D AC 5A 69                 .Zi
        adc     ($B9),y                         ; F860 71 B9                    q.
        lda     $EA                             ; F862 A5 EA                    ..
        eor     ($5D),y                         ; F864 51 5D                    Q]
LF866:  eor     ($75),y                         ; F866 51 75                    Qu
        tax                                     ; F868 AA                       .
        lsr     a                               ; F869 4A                       J
        .byte   $AB                             ; F86A AB                       .
        lsr     $95,x                           ; F86B 56 95                    V.
        rol     $1A3A                           ; F86D 2E 3A 1A                 .:.
        .byte   $A7                             ; F870 A7                       .
        and     $AD                             ; F871 25 AD                    %.
        eor     $B3                             ; F873 45 B3                    E.
        .byte   $92                             ; F875 92                       .
        .byte   $93                             ; F876 93                       .
        lsr     $1C,x                           ; F877 56 1C                    V.
        .byte   $17                             ; F879 17                       .
        .byte   $0F                             ; F87A 0F                       .
        .byte   $47                             ; F87B 47                       G
        adc     $96,x                           ; F87C 75 96                    u.
        tya                                     ; F87E 98                       .
        .byte   $27                             ; F87F 27                       '
        ldx     $55                             ; F880 A6 55                    .U
        lda     #$0D                            ; F882 A9 0D                    ..
        .byte   $6B                             ; F884 6B                       k
        eor     #$E5                            ; F885 49 E5                    I.
        .byte   $54                             ; F887 54                       T
        adc     #$95                            ; F888 69 95                    i.
        lda     #$36                            ; F88A A9 36                    .6
        ldy     $D554                           ; F88C AC 54 D5                 .T.
        rol     a                               ; F88F 2A                       *
        eor     $4B,x                           ; F890 55 4B                    UK
        .byte   $97                             ; F892 97                       .
        cpy     $E58D                           ; F893 CC 8D E5                 ...
        tax                                     ; F896 AA                       .
        rol     $95,x                           ; F897 36 95                    6.
        ror     $5395                           ; F899 6E 95 53                 n.S
        .byte   $2B                             ; F89C 2B                       +
        and     $5B1A,x                         ; F89D 3D 1A 5B                 =.[
        eor     $D51E                           ; F8A0 4D 1E D5                 M..
        and     #$BA                            ; F8A3 29 BA                    ).
        .byte   $54                             ; F8A5 54                       T
        stx     $4556                           ; F8A6 8E 56 45                 .VE
        .byte   $57                             ; F8A9 57                       W
        .byte   $71                             ; F8AA 71                       q
LF8AB:  eor     $72AA,y                         ; F8AB 59 AA 72                 Y.r
        and     #$5A                            ; F8AE 29 5A                    )Z
        sta     $A4AA,y                         ; F8B0 99 AA A4                 ...
        stx     $495A                           ; F8B3 8E 5A 49                 .ZI
        cmp     $6C,x                           ; F8B6 D5 6C                    .l
        .byte   $92                             ; F8B8 92                       .
        .byte   $A7                             ; F8B9 A7                       .
        dex                                     ; F8BA CA                       .
        .byte   $E2                             ; F8BB E2                       .
        sta     $EA,x                           ; F8BC 95 EA                    ..
        bvc     LF8AB                           ; F8BE 50 EB                    P.
        .byte   $64                             ; F8C0 64                       d
        cmp     ($95),y                         ; F8C1 D1 95                    ..
        dec     $96                             ; F8C3 C6 96                    ..
        .byte   $D4                             ; F8C5 D4                       .
        tax                                     ; F8C6 AA                       .
        txa                                     ; F8C7 8A                       .
        lsr     $554D                           ; F8C8 4E 4D 55                 NMU
        .byte   $93                             ; F8CB 93                       .
        dec     $8B52                           ; F8CC CE 52 8B                 .R.
        .byte   $D3                             ; F8CF D3                       .
        ror     $71                             ; F8D0 66 71                    fq
        lda     $75                             ; F8D2 A5 75                    .u
        .byte   $34                             ; F8D4 34                       4
        sbc     $54,x                           ; F8D5 F5 54                    .T
        .byte   $5A                             ; F8D7 5A                       Z
        lda     $9A,x                           ; F8D8 B5 9A                    ..
        .byte   $5A                             ; F8DA 5A                       Z
        .byte   $D4                             ; F8DB D4                       .
        .byte   $5A                             ; F8DC 5A                       Z
        lda     #$5A                            ; F8DD A9 5A                    .Z
        lda     $46                             ; F8DF A5 46                    .F
        cmp     $92C6,y                         ; F8E1 D9 C6 92                 ...
        eor     $17,x                           ; F8E4 55 17                    U.
        eor     $B6A3,y                         ; F8E6 59 A3 B6                 Y..
        .byte   $52                             ; F8E9 52                       R
        ror     a                               ; F8EA 6A                       j
        eor     $AA,x                           ; F8EB 55 AA                    U.
        tax                                     ; F8ED AA                       .
        lsr     a                               ; F8EE 4A                       J
        and     $33,x                           ; F8EF 35 33                    53
        adc     $4B                             ; F8F1 65 4B                    eK
        .byte   $5A                             ; F8F3 5A                       Z
        sta     $AA,x                           ; F8F4 95 AA                    ..
        ror     $4B                             ; F8F6 66 4B                    fK
        .byte   $13                             ; F8F8 13                       .
        .byte   $A7                             ; F8F9 A7                       .
        lsr     $55,x                           ; F8FA 56 55                    VU
        tax                                     ; F8FC AA                       .
        asl     $AD,x                           ; F8FD 16 AD                    ..
        ldx     $4C                             ; F8FF A6 4C                    .L
        .byte   $5B                             ; F901 5B                       [
        lsr     a                               ; F902 4A                       J
        lda     $5516                           ; F903 AD 16 55                 ..U
        lda     $6B49                           ; F906 AD 49 6B                 .Ik
        eor     $AA,x                           ; F909 55 AA                    U.
        sta     $5A,x                           ; F90B 95 5A                    .Z
        lsr     $55,x                           ; F90D 56 55                    VU
        eor     $6556,y                         ; F90F 59 56 65                 YVe
        lda     $46,x                           ; F912 B5 46                    .F
        dec     $AA,x                           ; F914 D6 AA                    ..
        ror     a                               ; F916 6A                       j
        lda     $4B                             ; F917 A5 4B                    .K
        eor     $4B,x                           ; F919 55 4B                    UK
        ror     $29,x                           ; F91B 76 29                    v)
        cmp     $AA,x                           ; F91D D5 AA                    ..
        lsr     a                               ; F91F 4A                       J
        eor     $AB,x                           ; F920 55 AB                    U.
        ldy     $CE4A                           ; F922 AC 4A CE                 .J.
        .byte   $52                             ; F925 52                       R
        .byte   $5A                             ; F926 5A                       Z
        eor     $55,x                           ; F927 55 55                    UU
        tax                                     ; F929 AA                       .
        tax                                     ; F92A AA                       .
        .byte   $B2                             ; F92B B2                       .
        ldy     $AA,x                           ; F92C B4 AA                    ..
        jmp     L5355                           ; F92E 4C 55 53                 LUS

; ----------------------------------------------------------------------------
        cmp     $54,x                           ; F931 D5 54                    .T
        sta     $D5,x                           ; F933 95 D5                    ..
        .byte   $64                             ; F935 64                       d
        .byte   $53                             ; F936 53                       S
        sta     $AA95,y                         ; F937 99 95 AA                 ...
        lda     $AA                             ; F93A A5 AA                    ..
        lsr     a                               ; F93C 4A                       J
        eor     $AAAB                           ; F93D 4D AB AA                 M..
        rol     a                               ; F940 2A                       *
        .byte   $2B                             ; F941 2B                       +
        .byte   $9B                             ; F942 9B                       .
        stx     $AA,y                           ; F943 96 AA                    ..
        sta     $B2,x                           ; F945 95 B2                    ..
        lsr     $65AA                           ; F947 4E AA 65                 N.e
        tax                                     ; F94A AA                       .
        stx     $EA,y                           ; F94B 96 EA                    ..
        .byte   $54                             ; F94D 54                       T
        adc     #$55                            ; F94E 69 55                    iU
        .byte   $4B                             ; F950 4B                       K
        and     $2B,x                           ; F951 35 2B                    5+
        lda     $6A,x                           ; F953 B5 6A                    .j
        tax                                     ; F955 AA                       .
        stx     $E9,y                           ; F956 96 E9                    ..
        tax                                     ; F958 AA                       .
        .byte   $54                             ; F959 54                       T
        cmp     $4A,x                           ; F95A D5 4A                    .J
        lda     $B552                           ; F95C AD 52 B5                 .R.
        ldy     $6554                           ; F95F AC 54 65                 .Te
        adc     $56                             ; F962 65 56                    eV
        lda     $95                             ; F964 A5 95                    ..
        tax                                     ; F966 AA                       .
        tax                                     ; F967 AA                       .
        ldy     $4A,x                           ; F968 B4 4A                    .J
        .byte   $AB                             ; F96A AB                       .
        .byte   $52                             ; F96B 52                       R
        .byte   $AB                             ; F96C AB                       .
        tax                                     ; F96D AA                       .
        dex                                     ; F96E CA                       .
        tax                                     ; F96F AA                       .
        tax                                     ; F970 AA                       .
        tax                                     ; F971 AA                       .
        rol     a                               ; F972 2A                       *
        .byte   $D3                             ; F973 D3                       .
        .byte   $54                             ; F974 54                       T
        eor     $AA,x                           ; F975 55 AA                    U.
        lsr     $A9,x                           ; F977 56 A9                    V.
        tax                                     ; F979 AA                       .
        cpy     $D4AA                           ; F97A CC AA D4                 ...
        stx     $AA,y                           ; F97D 96 AA                    ..
        lsr     a                               ; F97F 4A                       J
        .byte   $DB                             ; F980 DB                       .
        ldy     $AA                             ; F981 A4 AA                    ..
        tax                                     ; F983 AA                       .
        eor     $5555,y                         ; F984 59 55 55                 YUU
        adc     $53                             ; F987 65 53                    eS
        lda     $54,x                           ; F989 B5 54                    .T
        eor     $53,x                           ; F98B 55 53                    US
        eor     $AD,x                           ; F98D 55 AD                    U.
        .byte   $32                             ; F98F 32                       2
        lda     $CD2A                           ; F990 AD 2A CD                 .*.
        .byte   $52                             ; F993 52                       R
        lda     $5554                           ; F994 AD 54 55                 .TU
        lda     $52,x                           ; F997 B5 52                    .R
        cmp     $AA,x                           ; F999 D5 AA                    ..
        lda     #$AA                            ; F99B A9 AA                    ..
        dec     $A4,x                           ; F99D D6 A4                    ..
        eor     $55,x                           ; F99F 55 55                    UU
        .byte   $5A                             ; F9A1 5A                       Z
        lda     $52,x                           ; F9A2 B5 52                    .R
        eor     $4B,x                           ; F9A4 55 4B                    UK
        lda     $B552                           ; F9A6 AD 52 B5                 .R.
        .byte   $54                             ; F9A9 54                       T
        eor     $55,x                           ; F9AA 55 55                    UU
        eor     $56,x                           ; F9AC 55 56                    UV
        tax                                     ; F9AE AA                       .
        lda     $2A                             ; F9AF A5 2A                    .*
        lda     $594A                           ; F9B1 AD 4A 59                 .JY
        sta     $6A,x                           ; F9B4 95 6A                    .j
        eor     $4D,x                           ; F9B6 55 4D                    UM
        tax                                     ; F9B8 AA                       .
        ror     a                               ; F9B9 6A                       j
        tax                                     ; F9BA AA                       .
        rol     a                               ; F9BB 2A                       *
        cmp     $AA,x                           ; F9BC D5 AA                    ..
        .byte   $54                             ; F9BE 54                       T
        .byte   $AB                             ; F9BF AB                       .
        ldy     $B4,x                           ; F9C0 B4 B4                    ..
        tax                                     ; F9C2 AA                       .
        .byte   $72                             ; F9C3 72                       r
        eor     $95,x                           ; F9C4 55 95                    U.
        eor     $55,x                           ; F9C6 55 55                    UU
        eor     $35,x                           ; F9C8 55 35                    U5
        eor     $AB,x                           ; F9CA 55 AB                    U.
        ldy     $D2,x                           ; F9CC B4 D2                    ..
        tax                                     ; F9CE AA                       .
        tax                                     ; F9CF AA                       .
        dex                                     ; F9D0 CA                       .
        .byte   $52                             ; F9D1 52                       R
        eor     $D5,x                           ; F9D2 55 D5                    U.
        .byte   $54                             ; F9D4 54                       T
        eor     $652D                           ; F9D5 4D 2D 65                 M-e
        and     $AB,x                           ; F9D8 35 AB                    5.
        tax                                     ; F9DA AA                       .
        rol     a                               ; F9DB 2A                       *
        .byte   $AB                             ; F9DC AB                       .
        ldy     $AA6A                           ; F9DD AC 6A AA                 .j.
        tax                                     ; F9E0 AA                       .
        .byte   $5A                             ; F9E1 5A                       Z
        lda     $95                             ; F9E2 A5 95                    ..
        tax                                     ; F9E4 AA                       .
        lsr     $55,x                           ; F9E5 56 55                    VU
        eor     $55,x                           ; F9E7 55 55                    UU
        lda     $5A                             ; F9E9 A5 5A                    .Z
        eor     $55,x                           ; F9EB 55 55                    UU
        ror     a                               ; F9ED 6A                       j
        lda     $59                             ; F9EE A5 59                    .Y
        lda     #$6A                            ; F9F0 A9 6A                    .j
        eor     $AA,x                           ; F9F2 55 AA                    U.
        tax                                     ; F9F4 AA                       .
        jmp     L52B5                           ; F9F5 4C B5 52                 L.R

; ----------------------------------------------------------------------------
        eor     $5655                           ; F9F8 4D 55 56                 MUV
        sta     $AA,x                           ; F9FB 95 AA                    ..
        eor     $AA,x                           ; F9FD 55 AA                    U.
        eor     $A5,x                           ; F9FF 55 A5                    U.
        tax                                     ; FA01 AA                       .
        sta     $9A,x                           ; FA02 95 9A                    ..
        tax                                     ; FA04 AA                       .
        tax                                     ; FA05 AA                       .
        tax                                     ; FA06 AA                       .
        tax                                     ; FA07 AA                       .
        .byte   $5A                             ; FA08 5A                       Z
        sta     $A5,x                           ; FA09 95 A5                    ..
        tax                                     ; FA0B AA                       .
        lda     $6A                             ; FA0C A5 6A                    .j
        eor     $D5,x                           ; FA0E 55 D5                    U.
        .byte   $54                             ; FA10 54                       T
        eor     $D5,x                           ; FA11 55 D5                    U.
        tax                                     ; FA13 AA                       .
        lsr     a                               ; FA14 4A                       J
        lda     $AAAA                           ; FA15 AD AA AA                 ...
        tax                                     ; FA18 AA                       .
        tax                                     ; FA19 AA                       .
        tax                                     ; FA1A AA                       .
        tax                                     ; FA1B AA                       .
        tax                                     ; FA1C AA                       .
        tax                                     ; FA1D AA                       .
        tax                                     ; FA1E AA                       .
        tax                                     ; FA1F AA                       .
        .byte   $54                             ; FA20 54                       T
        eor     $AD,x                           ; FA21 55 AD                    U.
        lsr     a                               ; FA23 4A                       J
        .byte   $AB                             ; FA24 AB                       .
        tax                                     ; FA25 AA                       .
        lda     #$AA                            ; FA26 A9 AA                    ..
        dex                                     ; FA28 CA                       .
        tax                                     ; FA29 AA                       .
        tax                                     ; FA2A AA                       .
        tax                                     ; FA2B AA                       .
        ldx     $AA                             ; FA2C A6 AA                    ..
        txs                                     ; FA2E 9A                       .
        tax                                     ; FA2F AA                       .
        tax                                     ; FA30 AA                       .
        .byte   $5A                             ; FA31 5A                       Z
        lda     $6A                             ; FA32 A5 6A                    .j
        .byte   $5A                             ; FA34 5A                       Z
        ror     $55                             ; FA35 66 55                    fU
        lda     #$69                            ; FA37 A9 69                    .i
        tax                                     ; FA39 AA                       .
        tax                                     ; FA3A AA                       .
        tax                                     ; FA3B AA                       .
        lda     $52                             ; FA3C A5 52                    .R
        and     $55,x                           ; FA3E 35 55                    5U
        eor     $55,x                           ; FA40 55 55                    UU
        eor     $55,x                           ; FA42 55 55                    UU
        eor     $95,x                           ; FA44 55 95                    U.
        eor     $59,x                           ; FA46 55 59                    UY
        lda     #$59                            ; FA48 A9 59                    .Y
        tax                                     ; FA4A AA                       .
        lda     $5A                             ; FA4B A5 5A                    .Z
        lsr     $55,x                           ; FA4D 56 55                    VU
        lda     #$A5                            ; FA4F A9 A5                    ..
        ror     $55                             ; FA51 66 55                    fU
        lda     $95                             ; FA53 A5 95                    ..
        .byte   $5A                             ; FA55 5A                       Z
        eor     $55,x                           ; FA56 55 55                    UU
        eor     $55,x                           ; FA58 55 55                    UU
        eor     $CB,x                           ; FA5A 55 CB                    U.
        .byte   $54                             ; FA5C 54                       T
        and     $AD35                           ; FA5D 2D 35 AD                 -5.
        tax                                     ; FA60 AA                       .
        rol     a                               ; FA61 2A                       *
        .byte   $AB                             ; FA62 AB                       .
        tax                                     ; FA63 AA                       .
        rol     a                               ; FA64 2A                       *
        lda     $5352                           ; FA65 AD 52 53                 .RS
        .byte   $4B                             ; FA68 4B                       K
        lda     $2A,x                           ; FA69 B5 2A                    .*
        cmp     $2A,x                           ; FA6B D5 2A                    .*
        .byte   $AB                             ; FA6D AB                       .
        tax                                     ; FA6E AA                       .
        tax                                     ; FA6F AA                       .
        sta     $AAAA,y                         ; FA70 99 AA AA                 ...
        stx     $AA,y                           ; FA73 96 AA                    ..
        ldx     $56                             ; FA75 A6 56                    .V
        ror     a                               ; FA77 6A                       j
        ror     a                               ; FA78 6A                       j
        tax                                     ; FA79 AA                       .
        lda     $AA                             ; FA7A A5 AA                    ..
        txs                                     ; FA7C 9A                       .
        .byte   $5A                             ; FA7D 5A                       Z
        tax                                     ; FA7E AA                       .
        tax                                     ; FA7F AA                       .
        tax                                     ; FA80 AA                       .
        tax                                     ; FA81 AA                       .
        tax                                     ; FA82 AA                       .
        tax                                     ; FA83 AA                       .
        tax                                     ; FA84 AA                       .
        rol     a                               ; FA85 2A                       *
        .byte   $4B                             ; FA86 4B                       K
        eor     $55,x                           ; FA87 55 55                    UU
        eor     $55,x                           ; FA89 55 55                    UU
        eor     $55,x                           ; FA8B 55 55                    UU
        eor     $55,x                           ; FA8D 55 55                    UU
        eor     $55A5,y                         ; FA8F 59 A5 55                 Y.U
        lda     #$55                            ; FA92 A9 55                    .U
        lda     #$6A                            ; FA94 A9 6A                    .j
        tax                                     ; FA96 AA                       .
        lsr     $A5,x                           ; FA97 56 A5                    V.
        eor     $55,x                           ; FA99 55 55                    UU
        lsr     $55,x                           ; FA9B 56 55                    VU
        eor     $55,x                           ; FA9D 55 55                    UU
        eor     $55,x                           ; FA9F 55 55                    UU
        eor     $55,x                           ; FAA1 55 55                    UU
        eor     $55,x                           ; FAA3 55 55                    UU
        eor     $55,x                           ; FAA5 55 55                    UU
        cmp     $CA,x                           ; FAA7 D5 CA                    ..
        dex                                     ; FAA9 CA                       .
        ldy     $AAAA                           ; FAAA AC AA AA                 ...
        tax                                     ; FAAD AA                       .
        tax                                     ; FAAE AA                       .
        tax                                     ; FAAF AA                       .
        tax                                     ; FAB0 AA                       .
        tax                                     ; FAB1 AA                       .
        tax                                     ; FAB2 AA                       .
        tax                                     ; FAB3 AA                       .
        tax                                     ; FAB4 AA                       .
        tax                                     ; FAB5 AA                       .
        tax                                     ; FAB6 AA                       .
        tax                                     ; FAB7 AA                       .
        tax                                     ; FAB8 AA                       .
        tax                                     ; FAB9 AA                       .
        tax                                     ; FABA AA                       .
        tax                                     ; FABB AA                       .
        tax                                     ; FABC AA                       .
        tax                                     ; FABD AA                       .
        tax                                     ; FABE AA                       .
        tax                                     ; FABF AA                       .
        tax                                     ; FAC0 AA                       .
        tax                                     ; FAC1 AA                       .
        tax                                     ; FAC2 AA                       .
        tax                                     ; FAC3 AA                       .
        tax                                     ; FAC4 AA                       .
        tax                                     ; FAC5 AA                       .
        tax                                     ; FAC6 AA                       .
        tax                                     ; FAC7 AA                       .
        tax                                     ; FAC8 AA                       .
        tax                                     ; FAC9 AA                       .
        tax                                     ; FACA AA                       .
        tax                                     ; FACB AA                       .
        tax                                     ; FACC AA                       .
        tax                                     ; FACD AA                       .
        tax                                     ; FACE AA                       .
        tax                                     ; FACF AA                       .
        tax                                     ; FAD0 AA                       .
        tax                                     ; FAD1 AA                       .
        rol     a                               ; FAD2 2A                       *
        .byte   $AB                             ; FAD3 AB                       .
        tax                                     ; FAD4 AA                       .
        rol     a                               ; FAD5 2A                       *
        eor     $55,x                           ; FAD6 55 55                    UU
        eor     $55,x                           ; FAD8 55 55                    UU
        eor     $55,x                           ; FADA 55 55                    UU
        eor     $55,x                           ; FADC 55 55                    UU
        eor     $9A,x                           ; FADE 55 9A                    U.
        lsr     $55,x                           ; FAE0 56 55                    VU
        eor     $5555,y                         ; FAE2 59 55 55                 YUU
        eor     $55,x                           ; FAE5 55 55                    UU
        eor     $55,x                           ; FAE7 55 55                    UU
        cmp     $AC,x                           ; FAE9 D5 AC                    ..
        ldy     $D354                           ; FAEB AC 54 D3                 .T.
        .byte   $52                             ; FAEE 52                       R
        cmp     $54,x                           ; FAEF D5 54                    .T
        eor     $55,x                           ; FAF1 55 55                    UU
        eor     $55,x                           ; FAF3 55 55                    UU
        eor     $55,x                           ; FAF5 55 55                    UU
        eor     $5553                           ; FAF7 4D 53 55                 MSU
        .byte   $AB                             ; FAFA AB                       .
        tax                                     ; FAFB AA                       .
        tax                                     ; FAFC AA                       .
        tax                                     ; FAFD AA                       .
        tax                                     ; FAFE AA                       .
        tax                                     ; FAFF AA                       .
        tax                                     ; FB00 AA                       .
        tax                                     ; FB01 AA                       .
        tax                                     ; FB02 AA                       .
        tax                                     ; FB03 AA                       .
        tax                                     ; FB04 AA                       .
        tax                                     ; FB05 AA                       .
        tax                                     ; FB06 AA                       .
        tax                                     ; FB07 AA                       .
        tax                                     ; FB08 AA                       .
        tax                                     ; FB09 AA                       .
        tax                                     ; FB0A AA                       .
        tax                                     ; FB0B AA                       .
        tax                                     ; FB0C AA                       .
        tax                                     ; FB0D AA                       .
        tax                                     ; FB0E AA                       .
        .byte   $D4                             ; FB0F D4                       .
        tax                                     ; FB10 AA                       .
        tax                                     ; FB11 AA                       .
        rol     a                               ; FB12 2A                       *
        .byte   $2B                             ; FB13 2B                       +
        .byte   $33                             ; FB14 33                       3
        .byte   $AB                             ; FB15 AB                       .
        rol     a                               ; FB16 2A                       *
        and     $4D,x                           ; FB17 35 4D                    5M
        eor     $35,x                           ; FB19 55 35                    U5
        lda     $B554                           ; FB1B AD 54 B5                 .T.
        tax                                     ; FB1E AA                       .
        tax                                     ; FB1F AA                       .
        tax                                     ; FB20 AA                       .
        tax                                     ; FB21 AA                       .
        tax                                     ; FB22 AA                       .
        tax                                     ; FB23 AA                       .
        tax                                     ; FB24 AA                       .
        tax                                     ; FB25 AA                       .
        ldy     $554A                           ; FB26 AC 4A 55                 .JU
        eor     $55,x                           ; FB29 55 55                    UU
        eor     $55,x                           ; FB2B 55 55                    UU
        eor     $55,x                           ; FB2D 55 55                    UU
        eor     $55,x                           ; FB2F 55 55                    UU
        lsr     $55,x                           ; FB31 56 55                    VU
        eor     $55,x                           ; FB33 55 55                    UU
        eor     $55,x                           ; FB35 55 55                    UU
        eor     $55,x                           ; FB37 55 55                    UU
        eor     $55,x                           ; FB39 55 55                    UU
        eor     $55,x                           ; FB3B 55 55                    UU
        eor     $55,x                           ; FB3D 55 55                    UU
        eor     $CAB5                           ; FB3F 4D B5 CA                 M..
        lsr     a                               ; FB42 4A                       J
        and     $AAAD                           ; FB43 2D AD AA                 -..
        .byte   $B2                             ; FB46 B2                       .
        tax                                     ; FB47 AA                       .
        dex                                     ; FB48 CA                       .
        tax                                     ; FB49 AA                       .
        tax                                     ; FB4A AA                       .
        tax                                     ; FB4B AA                       .
        tax                                     ; FB4C AA                       .
        tax                                     ; FB4D AA                       .
        tax                                     ; FB4E AA                       .
        tax                                     ; FB4F AA                       .
        tax                                     ; FB50 AA                       .
        tax                                     ; FB51 AA                       .
        tax                                     ; FB52 AA                       .
        tax                                     ; FB53 AA                       .
        tax                                     ; FB54 AA                       .
        tax                                     ; FB55 AA                       .
        tax                                     ; FB56 AA                       .
        tax                                     ; FB57 AA                       .
        tax                                     ; FB58 AA                       .
        tax                                     ; FB59 AA                       .
        tax                                     ; FB5A AA                       .
        tax                                     ; FB5B AA                       .
        ldy     $AAAA                           ; FB5C AC AA AA                 ...
        tax                                     ; FB5F AA                       .
        tax                                     ; FB60 AA                       .
        tax                                     ; FB61 AA                       .
        tax                                     ; FB62 AA                       .
        tax                                     ; FB63 AA                       .
        tax                                     ; FB64 AA                       .
        ldy     $B52A                           ; FB65 AC 2A B5                 .*.
        .byte   $52                             ; FB68 52                       R
        eor     $4B,x                           ; FB69 55 4B                    UK
        eor     $55,x                           ; FB6B 55 55                    UU
        eor     $55,x                           ; FB6D 55 55                    UU
        eor     $5555                           ; FB6F 4D 55 55                 MUU
        eor     $55,x                           ; FB72 55 55                    UU
        eor     $55,x                           ; FB74 55 55                    UU
        eor     $55,x                           ; FB76 55 55                    UU
        eor     $55,x                           ; FB78 55 55                    UU
        eor     $55,x                           ; FB7A 55 55                    UU
        .byte   $4B                             ; FB7C 4B                       K
        .byte   $B3                             ; FB7D B3                       .
        .byte   $52                             ; FB7E 52                       R
        eor     $55,x                           ; FB7F 55 55                    UU
        eor     $55,x                           ; FB81 55 55                    UU
        eor     $55,x                           ; FB83 55 55                    UU
        eor     $55,x                           ; FB85 55 55                    UU
        eor     $55,x                           ; FB87 55 55                    UU
        eor     $55,x                           ; FB89 55 55                    UU
        eor     $55,x                           ; FB8B 55 55                    UU
        eor     $55,x                           ; FB8D 55 55                    UU
        eor     $55,x                           ; FB8F 55 55                    UU
        eor     $35,x                           ; FB91 55 35                    U5
        lda     $AAAA                           ; FB93 AD AA AA                 ...
        tax                                     ; FB96 AA                       .
        tax                                     ; FB97 AA                       .
        tax                                     ; FB98 AA                       .
        tax                                     ; FB99 AA                       .
        tax                                     ; FB9A AA                       .
        tax                                     ; FB9B AA                       .
        tax                                     ; FB9C AA                       .
        tax                                     ; FB9D AA                       .
        tax                                     ; FB9E AA                       .
        tax                                     ; FB9F AA                       .
        tax                                     ; FBA0 AA                       .
        tax                                     ; FBA1 AA                       .
        tax                                     ; FBA2 AA                       .
        tax                                     ; FBA3 AA                       .
        tax                                     ; FBA4 AA                       .
        tax                                     ; FBA5 AA                       .
        rol     a                               ; FBA6 2A                       *
        and     $5553                           ; FBA7 2D 53 55                 -SU
        eor     $55,x                           ; FBAA 55 55                    UU
        eor     $55,x                           ; FBAC 55 55                    UU
        eor     $55,x                           ; FBAE 55 55                    UU
        eor     $55,x                           ; FBB0 55 55                    UU
        eor     $55,x                           ; FBB2 55 55                    UU
        lda     $4D54                           ; FBB4 AD 54 4D                 .TM
        lda     $D4,x                           ; FBB7 B5 D4                    ..
        lsr     a                               ; FBB9 4A                       J
        .byte   $AB                             ; FBBA AB                       .
        .byte   $D2                             ; FBBB D2                       .
        tax                                     ; FBBC AA                       .
        tax                                     ; FBBD AA                       .
        tax                                     ; FBBE AA                       .
        tax                                     ; FBBF AA                       .
        tax                                     ; FBC0 AA                       .
        tax                                     ; FBC1 AA                       .
        tax                                     ; FBC2 AA                       .
        tax                                     ; FBC3 AA                       .
        ldy     $2D2C                           ; FBC4 AC 2C 2D                 .,-
        cmp     $54,x                           ; FBC7 D5 54                    .T
        eor     $55,x                           ; FBC9 55 55                    UU
        eor     $55,x                           ; FBCB 55 55                    UU
        eor     $55,x                           ; FBCD 55 55                    UU
        eor     $55,x                           ; FBCF 55 55                    UU
        tax                                     ; FBD1 AA                       .
        tax                                     ; FBD2 AA                       .
        tax                                     ; FBD3 AA                       .
        tax                                     ; FBD4 AA                       .
        tax                                     ; FBD5 AA                       .
        tax                                     ; FBD6 AA                       .
        tax                                     ; FBD7 AA                       .
        tax                                     ; FBD8 AA                       .
        tax                                     ; FBD9 AA                       .
        tax                                     ; FBDA AA                       .
        tax                                     ; FBDB AA                       .
        tax                                     ; FBDC AA                       .
        tax                                     ; FBDD AA                       .
        tax                                     ; FBDE AA                       .
        tax                                     ; FBDF AA                       .
        tax                                     ; FBE0 AA                       .
        tax                                     ; FBE1 AA                       .
        tax                                     ; FBE2 AA                       .
        tax                                     ; FBE3 AA                       .
        tax                                     ; FBE4 AA                       .
        tax                                     ; FBE5 AA                       .
        tax                                     ; FBE6 AA                       .
        tax                                     ; FBE7 AA                       .
        tax                                     ; FBE8 AA                       .
        tax                                     ; FBE9 AA                       .
        tax                                     ; FBEA AA                       .
        tax                                     ; FBEB AA                       .
        tax                                     ; FBEC AA                       .
        tax                                     ; FBED AA                       .
        tax                                     ; FBEE AA                       .
        tax                                     ; FBEF AA                       .
        tax                                     ; FBF0 AA                       .
        tax                                     ; FBF1 AA                       .
        tax                                     ; FBF2 AA                       .
        tax                                     ; FBF3 AA                       .
        tax                                     ; FBF4 AA                       .
        tax                                     ; FBF5 AA                       .
        tax                                     ; FBF6 AA                       .
        tax                                     ; FBF7 AA                       .
        tax                                     ; FBF8 AA                       .
        tax                                     ; FBF9 AA                       .
        tax                                     ; FBFA AA                       .
        tax                                     ; FBFB AA                       .
        tax                                     ; FBFC AA                       .
        tax                                     ; FBFD AA                       .
        tax                                     ; FBFE AA                       .
        tax                                     ; FBFF AA                       .
        tax                                     ; FC00 AA                       .
        tax                                     ; FC01 AA                       .
        tax                                     ; FC02 AA                       .
        tax                                     ; FC03 AA                       .
        tax                                     ; FC04 AA                       .
        tax                                     ; FC05 AA                       .
        tax                                     ; FC06 AA                       .
        tax                                     ; FC07 AA                       .
        tax                                     ; FC08 AA                       .
        tax                                     ; FC09 AA                       .
        tax                                     ; FC0A AA                       .
        tax                                     ; FC0B AA                       .
        tax                                     ; FC0C AA                       .
        tax                                     ; FC0D AA                       .
        tax                                     ; FC0E AA                       .
        tax                                     ; FC0F AA                       .
        tax                                     ; FC10 AA                       .
        tax                                     ; FC11 AA                       .
        tax                                     ; FC12 AA                       .
        tax                                     ; FC13 AA                       .
        tax                                     ; FC14 AA                       .
        tax                                     ; FC15 AA                       .
        tax                                     ; FC16 AA                       .
        tax                                     ; FC17 AA                       .
        tax                                     ; FC18 AA                       .
        tax                                     ; FC19 AA                       .
        tax                                     ; FC1A AA                       .
        tax                                     ; FC1B AA                       .
        tax                                     ; FC1C AA                       .
        tax                                     ; FC1D AA                       .
        tax                                     ; FC1E AA                       .
        tax                                     ; FC1F AA                       .
        tax                                     ; FC20 AA                       .
        tax                                     ; FC21 AA                       .
        tax                                     ; FC22 AA                       .
        tax                                     ; FC23 AA                       .
        tax                                     ; FC24 AA                       .
        tax                                     ; FC25 AA                       .
        tax                                     ; FC26 AA                       .
        tax                                     ; FC27 AA                       .
        tax                                     ; FC28 AA                       .
        tax                                     ; FC29 AA                       .
        tax                                     ; FC2A AA                       .
        tax                                     ; FC2B AA                       .
        tax                                     ; FC2C AA                       .
        tax                                     ; FC2D AA                       .
        tax                                     ; FC2E AA                       .
        tax                                     ; FC2F AA                       .
        tax                                     ; FC30 AA                       .
        tax                                     ; FC31 AA                       .
        tax                                     ; FC32 AA                       .
        tax                                     ; FC33 AA                       .
        tax                                     ; FC34 AA                       .
        tax                                     ; FC35 AA                       .
        tax                                     ; FC36 AA                       .
        tax                                     ; FC37 AA                       .
        tax                                     ; FC38 AA                       .
        tax                                     ; FC39 AA                       .
        tax                                     ; FC3A AA                       .
        tax                                     ; FC3B AA                       .
        tax                                     ; FC3C AA                       .
        tax                                     ; FC3D AA                       .
        tax                                     ; FC3E AA                       .
        tax                                     ; FC3F AA                       .
        tax                                     ; FC40 AA                       .
        tax                                     ; FC41 AA                       .
        tax                                     ; FC42 AA                       .
LFC43:  tax                                     ; FC43 AA                       .
        tax                                     ; FC44 AA                       .
        tax                                     ; FC45 AA                       .
        tax                                     ; FC46 AA                       .
        tax                                     ; FC47 AA                       .
        tax                                     ; FC48 AA                       .
        tax                                     ; FC49 AA                       .
        tax                                     ; FC4A AA                       .
        tax                                     ; FC4B AA                       .
        tax                                     ; FC4C AA                       .
        tax                                     ; FC4D AA                       .
        tax                                     ; FC4E AA                       .
        tax                                     ; FC4F AA                       .
        tax                                     ; FC50 AA                       .
        tax                                     ; FC51 AA                       .
        tax                                     ; FC52 AA                       .
        tax                                     ; FC53 AA                       .
        tax                                     ; FC54 AA                       .
        tax                                     ; FC55 AA                       .
        tax                                     ; FC56 AA                       .
        tax                                     ; FC57 AA                       .
        tax                                     ; FC58 AA                       .
        tax                                     ; FC59 AA                       .
        tax                                     ; FC5A AA                       .
        tax                                     ; FC5B AA                       .
        tax                                     ; FC5C AA                       .
        tax                                     ; FC5D AA                       .
        tax                                     ; FC5E AA                       .
        tax                                     ; FC5F AA                       .
        tax                                     ; FC60 AA                       .
        tax                                     ; FC61 AA                       .
        tax                                     ; FC62 AA                       .
        tax                                     ; FC63 AA                       .
        tax                                     ; FC64 AA                       .
        tax                                     ; FC65 AA                       .
        tax                                     ; FC66 AA                       .
        tax                                     ; FC67 AA                       .
        tax                                     ; FC68 AA                       .
        tax                                     ; FC69 AA                       .
        tax                                     ; FC6A AA                       .
        tax                                     ; FC6B AA                       .
        tax                                     ; FC6C AA                       .
        tax                                     ; FC6D AA                       .
        tax                                     ; FC6E AA                       .
        tax                                     ; FC6F AA                       .
        tax                                     ; FC70 AA                       .
        tax                                     ; FC71 AA                       .
        tax                                     ; FC72 AA                       .
        tax                                     ; FC73 AA                       .
        tax                                     ; FC74 AA                       .
        tax                                     ; FC75 AA                       .
        tax                                     ; FC76 AA                       .
        tax                                     ; FC77 AA                       .
        tax                                     ; FC78 AA                       .
        tax                                     ; FC79 AA                       .
        tax                                     ; FC7A AA                       .
        tax                                     ; FC7B AA                       .
        tax                                     ; FC7C AA                       .
        tax                                     ; FC7D AA                       .
        tax                                     ; FC7E AA                       .
        tax                                     ; FC7F AA                       .
        tax                                     ; FC80 AA                       .
        tax                                     ; FC81 AA                       .
        tax                                     ; FC82 AA                       .
        tax                                     ; FC83 AA                       .
        tax                                     ; FC84 AA                       .
        tax                                     ; FC85 AA                       .
        tax                                     ; FC86 AA                       .
        tax                                     ; FC87 AA                       .
        tax                                     ; FC88 AA                       .
        tax                                     ; FC89 AA                       .
        tax                                     ; FC8A AA                       .
        tax                                     ; FC8B AA                       .
        tax                                     ; FC8C AA                       .
        tax                                     ; FC8D AA                       .
        tax                                     ; FC8E AA                       .
        tax                                     ; FC8F AA                       .
        tax                                     ; FC90 AA                       .
        tax                                     ; FC91 AA                       .
        tax                                     ; FC92 AA                       .
        tax                                     ; FC93 AA                       .
        tax                                     ; FC94 AA                       .
        tax                                     ; FC95 AA                       .
        tax                                     ; FC96 AA                       .
        tax                                     ; FC97 AA                       .
        tax                                     ; FC98 AA                       .
        tax                                     ; FC99 AA                       .
        tax                                     ; FC9A AA                       .
        tax                                     ; FC9B AA                       .
        tax                                     ; FC9C AA                       .
        tax                                     ; FC9D AA                       .
        tax                                     ; FC9E AA                       .
        tax                                     ; FC9F AA                       .
        tax                                     ; FCA0 AA                       .
        tax                                     ; FCA1 AA                       .
        tax                                     ; FCA2 AA                       .
        tax                                     ; FCA3 AA                       .
        tax                                     ; FCA4 AA                       .
        tax                                     ; FCA5 AA                       .
        tax                                     ; FCA6 AA                       .
        tax                                     ; FCA7 AA                       .
        tax                                     ; FCA8 AA                       .
        tax                                     ; FCA9 AA                       .
        tax                                     ; FCAA AA                       .
        tax                                     ; FCAB AA                       .
        tax                                     ; FCAC AA                       .
        tax                                     ; FCAD AA                       .
        tax                                     ; FCAE AA                       .
        tax                                     ; FCAF AA                       .
        tax                                     ; FCB0 AA                       .
        tax                                     ; FCB1 AA                       .
        tax                                     ; FCB2 AA                       .
        tax                                     ; FCB3 AA                       .
        tax                                     ; FCB4 AA                       .
        tax                                     ; FCB5 AA                       .
        tax                                     ; FCB6 AA                       .
        tax                                     ; FCB7 AA                       .
        tax                                     ; FCB8 AA                       .
        tax                                     ; FCB9 AA                       .
        tax                                     ; FCBA AA                       .
        tax                                     ; FCBB AA                       .
        tax                                     ; FCBC AA                       .
        tax                                     ; FCBD AA                       .
        tax                                     ; FCBE AA                       .
        tax                                     ; FCBF AA                       .
        tax                                     ; FCC0 AA                       .
        tax                                     ; FCC1 AA                       .
        tax                                     ; FCC2 AA                       .
        tax                                     ; FCC3 AA                       .
        tax                                     ; FCC4 AA                       .
        tax                                     ; FCC5 AA                       .
        tax                                     ; FCC6 AA                       .
        tax                                     ; FCC7 AA                       .
        tax                                     ; FCC8 AA                       .
        tax                                     ; FCC9 AA                       .
        tax                                     ; FCCA AA                       .
        tax                                     ; FCCB AA                       .
        tax                                     ; FCCC AA                       .
        tax                                     ; FCCD AA                       .
        tax                                     ; FCCE AA                       .
        tax                                     ; FCCF AA                       .
        tax                                     ; FCD0 AA                       .
        tax                                     ; FCD1 AA                       .
        tax                                     ; FCD2 AA                       .
        tax                                     ; FCD3 AA                       .
        tax                                     ; FCD4 AA                       .
        tax                                     ; FCD5 AA                       .
        tax                                     ; FCD6 AA                       .
        tax                                     ; FCD7 AA                       .
        tax                                     ; FCD8 AA                       .
        tax                                     ; FCD9 AA                       .
        tax                                     ; FCDA AA                       .
        tax                                     ; FCDB AA                       .
        tax                                     ; FCDC AA                       .
        tax                                     ; FCDD AA                       .
        tax                                     ; FCDE AA                       .
        tax                                     ; FCDF AA                       .
        tax                                     ; FCE0 AA                       .
        tax                                     ; FCE1 AA                       .
        tax                                     ; FCE2 AA                       .
        tax                                     ; FCE3 AA                       .
        tax                                     ; FCE4 AA                       .
        tax                                     ; FCE5 AA                       .
        tax                                     ; FCE6 AA                       .
        tax                                     ; FCE7 AA                       .
        tax                                     ; FCE8 AA                       .
        tax                                     ; FCE9 AA                       .
        tax                                     ; FCEA AA                       .
        tax                                     ; FCEB AA                       .
        tax                                     ; FCEC AA                       .
        tax                                     ; FCED AA                       .
        tax                                     ; FCEE AA                       .
        tax                                     ; FCEF AA                       .
        tax                                     ; FCF0 AA                       .
        tax                                     ; FCF1 AA                       .
        tax                                     ; FCF2 AA                       .
        tax                                     ; FCF3 AA                       .
        tax                                     ; FCF4 AA                       .
        tax                                     ; FCF5 AA                       .
        tax                                     ; FCF6 AA                       .
        tax                                     ; FCF7 AA                       .
        tax                                     ; FCF8 AA                       .
        tax                                     ; FCF9 AA                       .
        tax                                     ; FCFA AA                       .
        tax                                     ; FCFB AA                       .
        tax                                     ; FCFC AA                       .
        tax                                     ; FCFD AA                       .
        tax                                     ; FCFE AA                       .
        tax                                     ; FCFF AA                       .
        tax                                     ; FD00 AA                       .
        tax                                     ; FD01 AA                       .
        tax                                     ; FD02 AA                       .
        tax                                     ; FD03 AA                       .
        tax                                     ; FD04 AA                       .
        tax                                     ; FD05 AA                       .
        tax                                     ; FD06 AA                       .
        tax                                     ; FD07 AA                       .
        tax                                     ; FD08 AA                       .
        tax                                     ; FD09 AA                       .
        tax                                     ; FD0A AA                       .
        tax                                     ; FD0B AA                       .
        tax                                     ; FD0C AA                       .
        tax                                     ; FD0D AA                       .
        tax                                     ; FD0E AA                       .
        tax                                     ; FD0F AA                       .
        tax                                     ; FD10 AA                       .
        tax                                     ; FD11 AA                       .
        tax                                     ; FD12 AA                       .
        tax                                     ; FD13 AA                       .
        tax                                     ; FD14 AA                       .
        tax                                     ; FD15 AA                       .
        tax                                     ; FD16 AA                       .
        tax                                     ; FD17 AA                       .
        tax                                     ; FD18 AA                       .
        tax                                     ; FD19 AA                       .
        tax                                     ; FD1A AA                       .
        tax                                     ; FD1B AA                       .
        tax                                     ; FD1C AA                       .
        tax                                     ; FD1D AA                       .
        tax                                     ; FD1E AA                       .
        tax                                     ; FD1F AA                       .
        tax                                     ; FD20 AA                       .
        tax                                     ; FD21 AA                       .
        tax                                     ; FD22 AA                       .
        tax                                     ; FD23 AA                       .
        tax                                     ; FD24 AA                       .
        tax                                     ; FD25 AA                       .
        tax                                     ; FD26 AA                       .
        tax                                     ; FD27 AA                       .
        tax                                     ; FD28 AA                       .
        tax                                     ; FD29 AA                       .
        tax                                     ; FD2A AA                       .
        tax                                     ; FD2B AA                       .
        tax                                     ; FD2C AA                       .
        tax                                     ; FD2D AA                       .
        tax                                     ; FD2E AA                       .
        tax                                     ; FD2F AA                       .
        tax                                     ; FD30 AA                       .
        tax                                     ; FD31 AA                       .
        tax                                     ; FD32 AA                       .
        tax                                     ; FD33 AA                       .
        tax                                     ; FD34 AA                       .
        tax                                     ; FD35 AA                       .
        tax                                     ; FD36 AA                       .
        tax                                     ; FD37 AA                       .
        tax                                     ; FD38 AA                       .
        tax                                     ; FD39 AA                       .
        tax                                     ; FD3A AA                       .
        tax                                     ; FD3B AA                       .
        tax                                     ; FD3C AA                       .
        tax                                     ; FD3D AA                       .
        tax                                     ; FD3E AA                       .
        tax                                     ; FD3F AA                       .
        tax                                     ; FD40 AA                       .
        tax                                     ; FD41 AA                       .
        tax                                     ; FD42 AA                       .
        tax                                     ; FD43 AA                       .
        tax                                     ; FD44 AA                       .
        tax                                     ; FD45 AA                       .
        tax                                     ; FD46 AA                       .
        tax                                     ; FD47 AA                       .
        tax                                     ; FD48 AA                       .
        tax                                     ; FD49 AA                       .
        tax                                     ; FD4A AA                       .
        tax                                     ; FD4B AA                       .
        tax                                     ; FD4C AA                       .
        tax                                     ; FD4D AA                       .
        tax                                     ; FD4E AA                       .
        tax                                     ; FD4F AA                       .
        tax                                     ; FD50 AA                       .
        tax                                     ; FD51 AA                       .
        tax                                     ; FD52 AA                       .
        tax                                     ; FD53 AA                       .
        tax                                     ; FD54 AA                       .
        tax                                     ; FD55 AA                       .
        tax                                     ; FD56 AA                       .
        tax                                     ; FD57 AA                       .
        tax                                     ; FD58 AA                       .
        tax                                     ; FD59 AA                       .
        tax                                     ; FD5A AA                       .
        tax                                     ; FD5B AA                       .
        tax                                     ; FD5C AA                       .
        tax                                     ; FD5D AA                       .
        tax                                     ; FD5E AA                       .
        tax                                     ; FD5F AA                       .
        tax                                     ; FD60 AA                       .
        tax                                     ; FD61 AA                       .
        tax                                     ; FD62 AA                       .
        tax                                     ; FD63 AA                       .
        tax                                     ; FD64 AA                       .
        tax                                     ; FD65 AA                       .
        tax                                     ; FD66 AA                       .
        tax                                     ; FD67 AA                       .
        tax                                     ; FD68 AA                       .
        tax                                     ; FD69 AA                       .
        tax                                     ; FD6A AA                       .
        tax                                     ; FD6B AA                       .
        tax                                     ; FD6C AA                       .
        tax                                     ; FD6D AA                       .
        tax                                     ; FD6E AA                       .
        tax                                     ; FD6F AA                       .
        tax                                     ; FD70 AA                       .
        tax                                     ; FD71 AA                       .
        tax                                     ; FD72 AA                       .
        tax                                     ; FD73 AA                       .
        tax                                     ; FD74 AA                       .
        tax                                     ; FD75 AA                       .
        tax                                     ; FD76 AA                       .
        tax                                     ; FD77 AA                       .
        tax                                     ; FD78 AA                       .
        tax                                     ; FD79 AA                       .
        tax                                     ; FD7A AA                       .
        tax                                     ; FD7B AA                       .
        tax                                     ; FD7C AA                       .
        tax                                     ; FD7D AA                       .
        tax                                     ; FD7E AA                       .
        tax                                     ; FD7F AA                       .
        tax                                     ; FD80 AA                       .
        tax                                     ; FD81 AA                       .
        tax                                     ; FD82 AA                       .
        tax                                     ; FD83 AA                       .
        tax                                     ; FD84 AA                       .
        tax                                     ; FD85 AA                       .
        tax                                     ; FD86 AA                       .
        tax                                     ; FD87 AA                       .
        tax                                     ; FD88 AA                       .
        tax                                     ; FD89 AA                       .
        tax                                     ; FD8A AA                       .
        tax                                     ; FD8B AA                       .
        tax                                     ; FD8C AA                       .
        tax                                     ; FD8D AA                       .
        tax                                     ; FD8E AA                       .
        tax                                     ; FD8F AA                       .
        tax                                     ; FD90 AA                       .
        tax                                     ; FD91 AA                       .
        tax                                     ; FD92 AA                       .
        tax                                     ; FD93 AA                       .
        tax                                     ; FD94 AA                       .
        tax                                     ; FD95 AA                       .
        tax                                     ; FD96 AA                       .
        tax                                     ; FD97 AA                       .
        tax                                     ; FD98 AA                       .
        tax                                     ; FD99 AA                       .
        tax                                     ; FD9A AA                       .
        tax                                     ; FD9B AA                       .
        tax                                     ; FD9C AA                       .
        tax                                     ; FD9D AA                       .
        tax                                     ; FD9E AA                       .
        tax                                     ; FD9F AA                       .
        tax                                     ; FDA0 AA                       .
        tax                                     ; FDA1 AA                       .
        tax                                     ; FDA2 AA                       .
        tax                                     ; FDA3 AA                       .
        tax                                     ; FDA4 AA                       .
        tax                                     ; FDA5 AA                       .
        tax                                     ; FDA6 AA                       .
        tax                                     ; FDA7 AA                       .
        tax                                     ; FDA8 AA                       .
        tax                                     ; FDA9 AA                       .
        tax                                     ; FDAA AA                       .
        tax                                     ; FDAB AA                       .
        tax                                     ; FDAC AA                       .
        tax                                     ; FDAD AA                       .
        tax                                     ; FDAE AA                       .
        tax                                     ; FDAF AA                       .
        tax                                     ; FDB0 AA                       .
        tax                                     ; FDB1 AA                       .
        tax                                     ; FDB2 AA                       .
        tax                                     ; FDB3 AA                       .
        tax                                     ; FDB4 AA                       .
        tax                                     ; FDB5 AA                       .
        tax                                     ; FDB6 AA                       .
        tax                                     ; FDB7 AA                       .
        tax                                     ; FDB8 AA                       .
        tax                                     ; FDB9 AA                       .
        tax                                     ; FDBA AA                       .
        tax                                     ; FDBB AA                       .
        tax                                     ; FDBC AA                       .
        tax                                     ; FDBD AA                       .
        tax                                     ; FDBE AA                       .
        tax                                     ; FDBF AA                       .
        tax                                     ; FDC0 AA                       .
        tax                                     ; FDC1 AA                       .
        tax                                     ; FDC2 AA                       .
        tax                                     ; FDC3 AA                       .
        tax                                     ; FDC4 AA                       .
        tax                                     ; FDC5 AA                       .
        tax                                     ; FDC6 AA                       .
        tax                                     ; FDC7 AA                       .
        tax                                     ; FDC8 AA                       .
        tax                                     ; FDC9 AA                       .
        tax                                     ; FDCA AA                       .
        tax                                     ; FDCB AA                       .
        tax                                     ; FDCC AA                       .
        tax                                     ; FDCD AA                       .
        tax                                     ; FDCE AA                       .
        tax                                     ; FDCF AA                       .
        tax                                     ; FDD0 AA                       .
        tax                                     ; FDD1 AA                       .
        tax                                     ; FDD2 AA                       .
        tax                                     ; FDD3 AA                       .
        tax                                     ; FDD4 AA                       .
        tax                                     ; FDD5 AA                       .
        tax                                     ; FDD6 AA                       .
        tax                                     ; FDD7 AA                       .
        tax                                     ; FDD8 AA                       .
        tax                                     ; FDD9 AA                       .
        tax                                     ; FDDA AA                       .
        tax                                     ; FDDB AA                       .
        tax                                     ; FDDC AA                       .
        tax                                     ; FDDD AA                       .
        tax                                     ; FDDE AA                       .
        tax                                     ; FDDF AA                       .
        tax                                     ; FDE0 AA                       .
        tax                                     ; FDE1 AA                       .
        tax                                     ; FDE2 AA                       .
        tax                                     ; FDE3 AA                       .
        tax                                     ; FDE4 AA                       .
        tax                                     ; FDE5 AA                       .
        tax                                     ; FDE6 AA                       .
        tax                                     ; FDE7 AA                       .
        tax                                     ; FDE8 AA                       .
        tax                                     ; FDE9 AA                       .
        tax                                     ; FDEA AA                       .
        tax                                     ; FDEB AA                       .
        tax                                     ; FDEC AA                       .
        tax                                     ; FDED AA                       .
        tax                                     ; FDEE AA                       .
        tax                                     ; FDEF AA                       .
        tax                                     ; FDF0 AA                       .
        tax                                     ; FDF1 AA                       .
        tax                                     ; FDF2 AA                       .
        tax                                     ; FDF3 AA                       .
        tax                                     ; FDF4 AA                       .
        tax                                     ; FDF5 AA                       .
        tax                                     ; FDF6 AA                       .
        tax                                     ; FDF7 AA                       .
        tax                                     ; FDF8 AA                       .
        tax                                     ; FDF9 AA                       .
        tax                                     ; FDFA AA                       .
        tax                                     ; FDFB AA                       .
        tax                                     ; FDFC AA                       .
        tax                                     ; FDFD AA                       .
        tax                                     ; FDFE AA                       .
        tax                                     ; FDFF AA                       .
        tax                                     ; FE00 AA                       .
        tax                                     ; FE01 AA                       .
        tax                                     ; FE02 AA                       .
        tax                                     ; FE03 AA                       .
        tax                                     ; FE04 AA                       .
        tax                                     ; FE05 AA                       .
        tax                                     ; FE06 AA                       .
        tax                                     ; FE07 AA                       .
        tax                                     ; FE08 AA                       .
        tax                                     ; FE09 AA                       .
        tax                                     ; FE0A AA                       .
        tax                                     ; FE0B AA                       .
        tax                                     ; FE0C AA                       .
        tax                                     ; FE0D AA                       .
        tax                                     ; FE0E AA                       .
        tax                                     ; FE0F AA                       .
        tax                                     ; FE10 AA                       .
        tax                                     ; FE11 AA                       .
        tax                                     ; FE12 AA                       .
        tax                                     ; FE13 AA                       .
        tax                                     ; FE14 AA                       .
        tax                                     ; FE15 AA                       .
        tax                                     ; FE16 AA                       .
        tax                                     ; FE17 AA                       .
        tax                                     ; FE18 AA                       .
        tax                                     ; FE19 AA                       .
        tax                                     ; FE1A AA                       .
        tax                                     ; FE1B AA                       .
        tax                                     ; FE1C AA                       .
        tax                                     ; FE1D AA                       .
        tax                                     ; FE1E AA                       .
        tax                                     ; FE1F AA                       .
        tax                                     ; FE20 AA                       .
        tax                                     ; FE21 AA                       .
        tax                                     ; FE22 AA                       .
        tax                                     ; FE23 AA                       .
        tax                                     ; FE24 AA                       .
        tax                                     ; FE25 AA                       .
        tax                                     ; FE26 AA                       .
        tax                                     ; FE27 AA                       .
        tax                                     ; FE28 AA                       .
        tax                                     ; FE29 AA                       .
        tax                                     ; FE2A AA                       .
        tax                                     ; FE2B AA                       .
        tax                                     ; FE2C AA                       .
        tax                                     ; FE2D AA                       .
        tax                                     ; FE2E AA                       .
        tax                                     ; FE2F AA                       .
        tax                                     ; FE30 AA                       .
        tax                                     ; FE31 AA                       .
        tax                                     ; FE32 AA                       .
        tax                                     ; FE33 AA                       .
        tax                                     ; FE34 AA                       .
        tax                                     ; FE35 AA                       .
        tax                                     ; FE36 AA                       .
        tax                                     ; FE37 AA                       .
        tax                                     ; FE38 AA                       .
        tax                                     ; FE39 AA                       .
        tax                                     ; FE3A AA                       .
        tax                                     ; FE3B AA                       .
        tax                                     ; FE3C AA                       .
        tax                                     ; FE3D AA                       .
        tax                                     ; FE3E AA                       .
        tax                                     ; FE3F AA                       .
        tax                                     ; FE40 AA                       .
        tax                                     ; FE41 AA                       .
        tax                                     ; FE42 AA                       .
        tax                                     ; FE43 AA                       .
        tax                                     ; FE44 AA                       .
        tax                                     ; FE45 AA                       .
        tax                                     ; FE46 AA                       .
        tax                                     ; FE47 AA                       .
        tax                                     ; FE48 AA                       .
        tax                                     ; FE49 AA                       .
        tax                                     ; FE4A AA                       .
        tax                                     ; FE4B AA                       .
        tax                                     ; FE4C AA                       .
        tax                                     ; FE4D AA                       .
        tax                                     ; FE4E AA                       .
        tax                                     ; FE4F AA                       .
        tax                                     ; FE50 AA                       .
        tax                                     ; FE51 AA                       .
        tax                                     ; FE52 AA                       .
        tax                                     ; FE53 AA                       .
        tax                                     ; FE54 AA                       .
        tax                                     ; FE55 AA                       .
        tax                                     ; FE56 AA                       .
        tax                                     ; FE57 AA                       .
        tax                                     ; FE58 AA                       .
        tax                                     ; FE59 AA                       .
        tax                                     ; FE5A AA                       .
        tax                                     ; FE5B AA                       .
        tax                                     ; FE5C AA                       .
        tax                                     ; FE5D AA                       .
        tax                                     ; FE5E AA                       .
        tax                                     ; FE5F AA                       .
        tax                                     ; FE60 AA                       .
        tax                                     ; FE61 AA                       .
        tax                                     ; FE62 AA                       .
        tax                                     ; FE63 AA                       .
        tax                                     ; FE64 AA                       .
        tax                                     ; FE65 AA                       .
        tax                                     ; FE66 AA                       .
        tax                                     ; FE67 AA                       .
        tax                                     ; FE68 AA                       .
        tax                                     ; FE69 AA                       .
        tax                                     ; FE6A AA                       .
        tax                                     ; FE6B AA                       .
        tax                                     ; FE6C AA                       .
        tax                                     ; FE6D AA                       .
        tax                                     ; FE6E AA                       .
        tax                                     ; FE6F AA                       .
        tax                                     ; FE70 AA                       .
        tax                                     ; FE71 AA                       .
        tax                                     ; FE72 AA                       .
        tax                                     ; FE73 AA                       .
        tax                                     ; FE74 AA                       .
        tax                                     ; FE75 AA                       .
        tax                                     ; FE76 AA                       .
        tax                                     ; FE77 AA                       .
        tax                                     ; FE78 AA                       .
        tax                                     ; FE79 AA                       .
        tax                                     ; FE7A AA                       .
        tax                                     ; FE7B AA                       .
        tax                                     ; FE7C AA                       .
        tax                                     ; FE7D AA                       .
        tax                                     ; FE7E AA                       .
        tax                                     ; FE7F AA                       .
        tax                                     ; FE80 AA                       .
        tax                                     ; FE81 AA                       .
        tax                                     ; FE82 AA                       .
        tax                                     ; FE83 AA                       .
        tax                                     ; FE84 AA                       .
        tax                                     ; FE85 AA                       .
        tax                                     ; FE86 AA                       .
        tax                                     ; FE87 AA                       .
        tax                                     ; FE88 AA                       .
        tax                                     ; FE89 AA                       .
        tax                                     ; FE8A AA                       .
        tax                                     ; FE8B AA                       .
        tax                                     ; FE8C AA                       .
        tax                                     ; FE8D AA                       .
        tax                                     ; FE8E AA                       .
        tax                                     ; FE8F AA                       .
        tax                                     ; FE90 AA                       .
        tax                                     ; FE91 AA                       .
        tax                                     ; FE92 AA                       .
        tax                                     ; FE93 AA                       .
        tax                                     ; FE94 AA                       .
        tax                                     ; FE95 AA                       .
        tax                                     ; FE96 AA                       .
        tax                                     ; FE97 AA                       .
        tax                                     ; FE98 AA                       .
        tax                                     ; FE99 AA                       .
        tax                                     ; FE9A AA                       .
        tax                                     ; FE9B AA                       .
        tax                                     ; FE9C AA                       .
        tax                                     ; FE9D AA                       .
        tax                                     ; FE9E AA                       .
        tax                                     ; FE9F AA                       .
        tax                                     ; FEA0 AA                       .
        tax                                     ; FEA1 AA                       .
        tax                                     ; FEA2 AA                       .
        tax                                     ; FEA3 AA                       .
        tax                                     ; FEA4 AA                       .
        tax                                     ; FEA5 AA                       .
        tax                                     ; FEA6 AA                       .
        tax                                     ; FEA7 AA                       .
        tax                                     ; FEA8 AA                       .
        tax                                     ; FEA9 AA                       .
        tax                                     ; FEAA AA                       .
        tax                                     ; FEAB AA                       .
        tax                                     ; FEAC AA                       .
        tax                                     ; FEAD AA                       .
        tax                                     ; FEAE AA                       .
        tax                                     ; FEAF AA                       .
        tax                                     ; FEB0 AA                       .
        tax                                     ; FEB1 AA                       .
        tax                                     ; FEB2 AA                       .
        tax                                     ; FEB3 AA                       .
        tax                                     ; FEB4 AA                       .
        tax                                     ; FEB5 AA                       .
        tax                                     ; FEB6 AA                       .
        tax                                     ; FEB7 AA                       .
        tax                                     ; FEB8 AA                       .
        tax                                     ; FEB9 AA                       .
        tax                                     ; FEBA AA                       .
        tax                                     ; FEBB AA                       .
        tax                                     ; FEBC AA                       .
        tax                                     ; FEBD AA                       .
        tax                                     ; FEBE AA                       .
        tax                                     ; FEBF AA                       .
        tax                                     ; FEC0 AA                       .
        tax                                     ; FEC1 AA                       .
        tax                                     ; FEC2 AA                       .
        tax                                     ; FEC3 AA                       .
        tax                                     ; FEC4 AA                       .
        tax                                     ; FEC5 AA                       .
        tax                                     ; FEC6 AA                       .
        tax                                     ; FEC7 AA                       .
        tax                                     ; FEC8 AA                       .
        tax                                     ; FEC9 AA                       .
        tax                                     ; FECA AA                       .
        tax                                     ; FECB AA                       .
        tax                                     ; FECC AA                       .
        tax                                     ; FECD AA                       .
        tax                                     ; FECE AA                       .
        tax                                     ; FECF AA                       .
        tax                                     ; FED0 AA                       .
        tax                                     ; FED1 AA                       .
        tax                                     ; FED2 AA                       .
        tax                                     ; FED3 AA                       .
        tax                                     ; FED4 AA                       .
        tax                                     ; FED5 AA                       .
        tax                                     ; FED6 AA                       .
        tax                                     ; FED7 AA                       .
        tax                                     ; FED8 AA                       .
        tax                                     ; FED9 AA                       .
        tax                                     ; FEDA AA                       .
        tax                                     ; FEDB AA                       .
        tax                                     ; FEDC AA                       .
        tax                                     ; FEDD AA                       .
        tax                                     ; FEDE AA                       .
        tax                                     ; FEDF AA                       .
        tax                                     ; FEE0 AA                       .
        tax                                     ; FEE1 AA                       .
        tax                                     ; FEE2 AA                       .
        tax                                     ; FEE3 AA                       .
        tax                                     ; FEE4 AA                       .
        tax                                     ; FEE5 AA                       .
        tax                                     ; FEE6 AA                       .
        tax                                     ; FEE7 AA                       .
        tax                                     ; FEE8 AA                       .
        tax                                     ; FEE9 AA                       .
        tax                                     ; FEEA AA                       .
        tax                                     ; FEEB AA                       .
        tax                                     ; FEEC AA                       .
        tax                                     ; FEED AA                       .
        tax                                     ; FEEE AA                       .
        tax                                     ; FEEF AA                       .
        tax                                     ; FEF0 AA                       .
        tax                                     ; FEF1 AA                       .
        tax                                     ; FEF2 AA                       .
        tax                                     ; FEF3 AA                       .
        tax                                     ; FEF4 AA                       .
        tax                                     ; FEF5 AA                       .
        tax                                     ; FEF6 AA                       .
        tax                                     ; FEF7 AA                       .
        tax                                     ; FEF8 AA                       .
        tax                                     ; FEF9 AA                       .
        tax                                     ; FEFA AA                       .
        tax                                     ; FEFB AA                       .
        tax                                     ; FEFC AA                       .
        tax                                     ; FEFD AA                       .
        tax                                     ; FEFE AA                       .
        tax                                     ; FEFF AA                       .
        tax                                     ; FF00 AA                       .
        tax                                     ; FF01 AA                       .
        tax                                     ; FF02 AA                       .
        tax                                     ; FF03 AA                       .
        tax                                     ; FF04 AA                       .
        tax                                     ; FF05 AA                       .
        tax                                     ; FF06 AA                       .
        tax                                     ; FF07 AA                       .
        tax                                     ; FF08 AA                       .
        tax                                     ; FF09 AA                       .
        tax                                     ; FF0A AA                       .
        tax                                     ; FF0B AA                       .
        tax                                     ; FF0C AA                       .
        tax                                     ; FF0D AA                       .
        tax                                     ; FF0E AA                       .
        tax                                     ; FF0F AA                       .
        tax                                     ; FF10 AA                       .
        tax                                     ; FF11 AA                       .
        tax                                     ; FF12 AA                       .
        tax                                     ; FF13 AA                       .
        tax                                     ; FF14 AA                       .
        tax                                     ; FF15 AA                       .
        tax                                     ; FF16 AA                       .
        tax                                     ; FF17 AA                       .
        tax                                     ; FF18 AA                       .
        tax                                     ; FF19 AA                       .
        tax                                     ; FF1A AA                       .
        tax                                     ; FF1B AA                       .
        tax                                     ; FF1C AA                       .
        tax                                     ; FF1D AA                       .
        tax                                     ; FF1E AA                       .
        tax                                     ; FF1F AA                       .
        tax                                     ; FF20 AA                       .
        tax                                     ; FF21 AA                       .
        tax                                     ; FF22 AA                       .
        tax                                     ; FF23 AA                       .
        tax                                     ; FF24 AA                       .
        tax                                     ; FF25 AA                       .
        tax                                     ; FF26 AA                       .
        tax                                     ; FF27 AA                       .
        tax                                     ; FF28 AA                       .
        tax                                     ; FF29 AA                       .
        tax                                     ; FF2A AA                       .
        tax                                     ; FF2B AA                       .
        tax                                     ; FF2C AA                       .
        tax                                     ; FF2D AA                       .
        tax                                     ; FF2E AA                       .
        tax                                     ; FF2F AA                       .
        tax                                     ; FF30 AA                       .
        tax                                     ; FF31 AA                       .
        tax                                     ; FF32 AA                       .
        tax                                     ; FF33 AA                       .
        tax                                     ; FF34 AA                       .
        tax                                     ; FF35 AA                       .
        tax                                     ; FF36 AA                       .
        tax                                     ; FF37 AA                       .
        tax                                     ; FF38 AA                       .
        tax                                     ; FF39 AA                       .
        tax                                     ; FF3A AA                       .
        tax                                     ; FF3B AA                       .
        tax                                     ; FF3C AA                       .
        tax                                     ; FF3D AA                       .
        tax                                     ; FF3E AA                       .
        tax                                     ; FF3F AA                       .
        tax                                     ; FF40 AA                       .
        tax                                     ; FF41 AA                       .
        tax                                     ; FF42 AA                       .
        tax                                     ; FF43 AA                       .
        tax                                     ; FF44 AA                       .
        tax                                     ; FF45 AA                       .
        tax                                     ; FF46 AA                       .
        tax                                     ; FF47 AA                       .
        tax                                     ; FF48 AA                       .
        tax                                     ; FF49 AA                       .
        tax                                     ; FF4A AA                       .
        tax                                     ; FF4B AA                       .
        tax                                     ; FF4C AA                       .
        tax                                     ; FF4D AA                       .
        tax                                     ; FF4E AA                       .
        tax                                     ; FF4F AA                       .
        tax                                     ; FF50 AA                       .
        tax                                     ; FF51 AA                       .
        tax                                     ; FF52 AA                       .
        tax                                     ; FF53 AA                       .
        tax                                     ; FF54 AA                       .
        tax                                     ; FF55 AA                       .
        tax                                     ; FF56 AA                       .
        tax                                     ; FF57 AA                       .
        tax                                     ; FF58 AA                       .
        tax                                     ; FF59 AA                       .
        tax                                     ; FF5A AA                       .
        tax                                     ; FF5B AA                       .
        tax                                     ; FF5C AA                       .
        tax                                     ; FF5D AA                       .
        tax                                     ; FF5E AA                       .
        tax                                     ; FF5F AA                       .
        tax                                     ; FF60 AA                       .
        tax                                     ; FF61 AA                       .
        tax                                     ; FF62 AA                       .
        tax                                     ; FF63 AA                       .
        tax                                     ; FF64 AA                       .
        tax                                     ; FF65 AA                       .
        tax                                     ; FF66 AA                       .
        tax                                     ; FF67 AA                       .
        tax                                     ; FF68 AA                       .
        tax                                     ; FF69 AA                       .
        tax                                     ; FF6A AA                       .
        tax                                     ; FF6B AA                       .
        tax                                     ; FF6C AA                       .
        tax                                     ; FF6D AA                       .
        tax                                     ; FF6E AA                       .
        tax                                     ; FF6F AA                       .
        tax                                     ; FF70 AA                       .
        tax                                     ; FF71 AA                       .
        tax                                     ; FF72 AA                       .
        tax                                     ; FF73 AA                       .
        tax                                     ; FF74 AA                       .
        tax                                     ; FF75 AA                       .
        tax                                     ; FF76 AA                       .
        tax                                     ; FF77 AA                       .
        tax                                     ; FF78 AA                       .
        tax                                     ; FF79 AA                       .
        tax                                     ; FF7A AA                       .
        tax                                     ; FF7B AA                       .
        tax                                     ; FF7C AA                       .
        tax                                     ; FF7D AA                       .
        tax                                     ; FF7E AA                       .
        tax                                     ; FF7F AA                       .
        tax                                     ; FF80 AA                       .
        tax                                     ; FF81 AA                       .
        tax                                     ; FF82 AA                       .
        tax                                     ; FF83 AA                       .
        tax                                     ; FF84 AA                       .
        tax                                     ; FF85 AA                       .
        tax                                     ; FF86 AA                       .
        tax                                     ; FF87 AA                       .
        tax                                     ; FF88 AA                       .
        tax                                     ; FF89 AA                       .
        tax                                     ; FF8A AA                       .
        tax                                     ; FF8B AA                       .
        tax                                     ; FF8C AA                       .
        tax                                     ; FF8D AA                       .
        tax                                     ; FF8E AA                       .
        tax                                     ; FF8F AA                       .
        tax                                     ; FF90 AA                       .
        tax                                     ; FF91 AA                       .
        tax                                     ; FF92 AA                       .
        tax                                     ; FF93 AA                       .
        tax                                     ; FF94 AA                       .
        tax                                     ; FF95 AA                       .
        tax                                     ; FF96 AA                       .
        tax                                     ; FF97 AA                       .
        tax                                     ; FF98 AA                       .
        tax                                     ; FF99 AA                       .
        tax                                     ; FF9A AA                       .
        tax                                     ; FF9B AA                       .
        tax                                     ; FF9C AA                       .
        tax                                     ; FF9D AA                       .
        tax                                     ; FF9E AA                       .
        tax                                     ; FF9F AA                       .
        tax                                     ; FFA0 AA                       .
        tax                                     ; FFA1 AA                       .
        tax                                     ; FFA2 AA                       .
        tax                                     ; FFA3 AA                       .
        tax                                     ; FFA4 AA                       .
        tax                                     ; FFA5 AA                       .
        tax                                     ; FFA6 AA                       .
        tax                                     ; FFA7 AA                       .
        tax                                     ; FFA8 AA                       .
        tax                                     ; FFA9 AA                       .
        tax                                     ; FFAA AA                       .
        tax                                     ; FFAB AA                       .
        tax                                     ; FFAC AA                       .
        tax                                     ; FFAD AA                       .
        tax                                     ; FFAE AA                       .
        tax                                     ; FFAF AA                       .
        tax                                     ; FFB0 AA                       .
        tax                                     ; FFB1 AA                       .
        tax                                     ; FFB2 AA                       .
        tax                                     ; FFB3 AA                       .
        tax                                     ; FFB4 AA                       .
        tax                                     ; FFB5 AA                       .
        tax                                     ; FFB6 AA                       .
        tax                                     ; FFB7 AA                       .
        tax                                     ; FFB8 AA                       .
        tax                                     ; FFB9 AA                       .
        tax                                     ; FFBA AA                       .
        tax                                     ; FFBB AA                       .
        tax                                     ; FFBC AA                       .
        tax                                     ; FFBD AA                       .
        tax                                     ; FFBE AA                       .
        tax                                     ; FFBF AA                       .
        tax                                     ; FFC0 AA                       .
        tax                                     ; FFC1 AA                       .
        tax                                     ; FFC2 AA                       .
        tax                                     ; FFC3 AA                       .
        tax                                     ; FFC4 AA                       .
        tax                                     ; FFC5 AA                       .
        tax                                     ; FFC6 AA                       .
        tax                                     ; FFC7 AA                       .
        tax                                     ; FFC8 AA                       .
        tax                                     ; FFC9 AA                       .
        tax                                     ; FFCA AA                       .
        tax                                     ; FFCB AA                       .
        tax                                     ; FFCC AA                       .
        tax                                     ; FFCD AA                       .
        tax                                     ; FFCE AA                       .
        tax                                     ; FFCF AA                       .
        tax                                     ; FFD0 AA                       .
        tax                                     ; FFD1 AA                       .
        tax                                     ; FFD2 AA                       .
        tax                                     ; FFD3 AA                       .
        tax                                     ; FFD4 AA                       .
        tax                                     ; FFD5 AA                       .
        tax                                     ; FFD6 AA                       .
        tax                                     ; FFD7 AA                       .
        tax                                     ; FFD8 AA                       .
        tax                                     ; FFD9 AA                       .
        tax                                     ; FFDA AA                       .
        tax                                     ; FFDB AA                       .
        tax                                     ; FFDC AA                       .
        tax                                     ; FFDD AA                       .
        tax                                     ; FFDE AA                       .
        tax                                     ; FFDF AA                       .
        tax                                     ; FFE0 AA                       .
        tax                                     ; FFE1 AA                       .
        tax                                     ; FFE2 AA                       .
        tax                                     ; FFE3 AA                       .
        tax                                     ; FFE4 AA                       .
        tax                                     ; FFE5 AA                       .
        tax                                     ; FFE6 AA                       .
        tax                                     ; FFE7 AA                       .
        tax                                     ; FFE8 AA                       .
        tax                                     ; FFE9 AA                       .
        tax                                     ; FFEA AA                       .
        tax                                     ; FFEB AA                       .
        tax                                     ; FFEC AA                       .
        tax                                     ; FFED AA                       .
        tax                                     ; FFEE AA                       .
        tax                                     ; FFEF AA                       .
        tax                                     ; FFF0 AA                       .
        tax                                     ; FFF1 AA                       .
        tax                                     ; FFF2 AA                       .
        tax                                     ; FFF3 AA                       .
        tax                                     ; FFF4 AA                       .
        tax                                     ; FFF5 AA                       .
        tax                                     ; FFF6 AA                       .
        tax                                     ; FFF7 AA                       .
        tax                                     ; FFF8 AA                       .
        tax                                     ; FFF9 AA                       .
;        cmp     ($02,x)                         ; FFFA C1 02                    ..
;        cpy     $02                             ; FFFC C4 02                    ..
;        .byte   $C7                             ; FFFE C7                       .
;        .byte   $02                             ; FFFF 02                       .
VECTORS ; mod