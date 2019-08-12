.include "../mod.inc"
.segment "MF000"

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-23 02:19:30
; Input file: out_src\06_07.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L00B7           := $00B7
L024D           := $024D
L2555           := $2555
L4410           := $4410
L5535           := $5535
L5ADB           := $5ADB
L5D15           := $5D15
L60D0           := $60D0
; ----------------------------------------------------------------------------
        lsr     a                               ; F000 4A                       J
        eor     $AB,x                           ; F001 55 AB                    U.
        tax                                     ; F003 AA                       .
        .byte   $54                             ; F004 54                       T
        lda     $AA,x                           ; F005 B5 AA                    ..
        .byte   $54                             ; F007 54                       T
        eor     $AB,x                           ; F008 55 AB                    U.
        .byte   $52                             ; F00A 52                       R
        eor     $AB,x                           ; F00B 55 AB                    U.
        lsr     a                               ; F00D 4A                       J
        lda     $54,x                           ; F00E B5 54                    .T
        eor     $B5,x                           ; F010 55 B5                    U.
        tax                                     ; F012 AA                       .
        rol     a                               ; F013 2A                       *
        eor     $55,x                           ; F014 55 55                    UU
        and     $AAD5                           ; F016 2D D5 AA                 -..
        .byte   $D4                             ; F019 D4                       .
        tax                                     ; F01A AA                       .
        tax                                     ; F01B AA                       .
        tax                                     ; F01C AA                       .
        tax                                     ; F01D AA                       .
        tax                                     ; F01E AA                       .
        tax                                     ; F01F AA                       .
        tax                                     ; F020 AA                       .
        brk                                     ; F021 00                       .
        brk                                     ; F022 00                       .
        brk                                     ; F023 00                       .
        brk                                     ; F024 00                       .
        brk                                     ; F025 00                       .
        brk                                     ; F026 00                       .
        brk                                     ; F027 00                       .
        brk                                     ; F028 00                       .
        brk                                     ; F029 00                       .
        brk                                     ; F02A 00                       .
        brk                                     ; F02B 00                       .
        brk                                     ; F02C 00                       .
        brk                                     ; F02D 00                       .
        brk                                     ; F02E 00                       .
        brk                                     ; F02F 00                       .
        brk                                     ; F030 00                       .
        brk                                     ; F031 00                       .
        brk                                     ; F032 00                       .
        brk                                     ; F033 00                       .
        brk                                     ; F034 00                       .
        brk                                     ; F035 00                       .
        brk                                     ; F036 00                       .
        brk                                     ; F037 00                       .
        brk                                     ; F038 00                       .
        brk                                     ; F039 00                       .
        brk                                     ; F03A 00                       .
        brk                                     ; F03B 00                       .
        brk                                     ; F03C 00                       .
        brk                                     ; F03D 00                       .
        brk                                     ; F03E 00                       .
        brk                                     ; F03F 00                       .
        eor     $55,x                           ; F040 55 55                    UU
        eor     $55,x                           ; F042 55 55                    UU
        eor     $55,x                           ; F044 55 55                    UU
        eor     $55,x                           ; F046 55 55                    UU
        eor     $55,x                           ; F048 55 55                    UU
        eor     $55,x                           ; F04A 55 55                    UU
        eor     $55,x                           ; F04C 55 55                    UU
        eor     $55,x                           ; F04E 55 55                    UU
        eor     $55,x                           ; F050 55 55                    UU
        eor     $55,x                           ; F052 55 55                    UU
        eor     $55,x                           ; F054 55 55                    UU
        eor     $55,x                           ; F056 55 55                    UU
        eor     $55,x                           ; F058 55 55                    UU
        eor     $55,x                           ; F05A 55 55                    UU
        eor     $55,x                           ; F05C 55 55                    UU
        eor     $55,x                           ; F05E 55 55                    UU
        eor     $55,x                           ; F060 55 55                    UU
        eor     $55,x                           ; F062 55 55                    UU
        eor     $55,x                           ; F064 55 55                    UU
        eor     $55,x                           ; F066 55 55                    UU
        eor     $55,x                           ; F068 55 55                    UU
        eor     $55,x                           ; F06A 55 55                    UU
        eor     $55,x                           ; F06C 55 55                    UU
        eor     $55,x                           ; F06E 55 55                    UU
        eor     $55,x                           ; F070 55 55                    UU
        eor     $55,x                           ; F072 55 55                    UU
        eor     $55,x                           ; F074 55 55                    UU
        eor     $55,x                           ; F076 55 55                    UU
        .byte   $55                             ; F078 55                       U
LF079:  eor     $55,x                           ; F079 55 55                    UU
        eor     $55,x                           ; F07B 55 55                    UU
        eor     $55,x                           ; F07D 55 55                    UU
        eor     $55,x                           ; F07F 55 55                    UU
        eor     $55,x                           ; F081 55 55                    UU
        eor     $55,x                           ; F083 55 55                    UU
        eor     $55,x                           ; F085 55 55                    UU
        eor     $55,x                           ; F087 55 55                    UU
        eor     $55,x                           ; F089 55 55                    UU
        eor     $55,x                           ; F08B 55 55                    UU
        eor     $55,x                           ; F08D 55 55                    UU
        eor     $55,x                           ; F08F 55 55                    UU
        eor     $55,x                           ; F091 55 55                    UU
        eor     $55,x                           ; F093 55 55                    UU
        eor     $55,x                           ; F095 55 55                    UU
        eor     $55,x                           ; F097 55 55                    UU
        eor     $55,x                           ; F099 55 55                    UU
        eor     $55,x                           ; F09B 55 55                    UU
        eor     $55,x                           ; F09D 55 55                    UU
        eor     $55,x                           ; F09F 55 55                    UU
        eor     $55,x                           ; F0A1 55 55                    UU
        eor     $55,x                           ; F0A3 55 55                    UU
        eor     $55,x                           ; F0A5 55 55                    UU
        eor     $55,x                           ; F0A7 55 55                    UU
        eor     $55,x                           ; F0A9 55 55                    UU
        eor     $55,x                           ; F0AB 55 55                    UU
        eor     $55,x                           ; F0AD 55 55                    UU
        eor     $55,x                           ; F0AF 55 55                    UU
        eor     $55,x                           ; F0B1 55 55                    UU
        eor     $55,x                           ; F0B3 55 55                    UU
        eor     $55,x                           ; F0B5 55 55                    UU
        eor     $55,x                           ; F0B7 55 55                    UU
        eor     $55,x                           ; F0B9 55 55                    UU
        eor     $55,x                           ; F0BB 55 55                    UU
        eor     $55,x                           ; F0BD 55 55                    UU
        eor     $55,x                           ; F0BF 55 55                    UU
        eor     $55,x                           ; F0C1 55 55                    UU
        eor     $55,x                           ; F0C3 55 55                    UU
        eor     $55,x                           ; F0C5 55 55                    UU
        eor     $55,x                           ; F0C7 55 55                    UU
        eor     $55,x                           ; F0C9 55 55                    UU
        eor     $55,x                           ; F0CB 55 55                    UU
        eor     $55,x                           ; F0CD 55 55                    UU
        eor     $55,x                           ; F0CF 55 55                    UU
        eor     $55,x                           ; F0D1 55 55                    UU
        eor     $55,x                           ; F0D3 55 55                    UU
        eor     $55,x                           ; F0D5 55 55                    UU
        eor     $55,x                           ; F0D7 55 55                    UU
        eor     $55,x                           ; F0D9 55 55                    UU
        eor     $55,x                           ; F0DB 55 55                    UU
        eor     $55,x                           ; F0DD 55 55                    UU
        eor     $55,x                           ; F0DF 55 55                    UU
        eor     $55,x                           ; F0E1 55 55                    UU
        eor     $55,x                           ; F0E3 55 55                    UU
        eor     $55,x                           ; F0E5 55 55                    UU
        eor     $55,x                           ; F0E7 55 55                    UU
        eor     $55,x                           ; F0E9 55 55                    UU
        eor     $55,x                           ; F0EB 55 55                    UU
        eor     $55,x                           ; F0ED 55 55                    UU
        eor     $55,x                           ; F0EF 55 55                    UU
        eor     $55,x                           ; F0F1 55 55                    UU
        eor     $55,x                           ; F0F3 55 55                    UU
        eor     $55,x                           ; F0F5 55 55                    UU
        eor     $55,x                           ; F0F7 55 55                    UU
        eor     $55,x                           ; F0F9 55 55                    UU
        eor     $55,x                           ; F0FB 55 55                    UU
        eor     $55,x                           ; F0FD 55 55                    UU
        eor     $55,x                           ; F0FF 55 55                    UU
        eor     $55,x                           ; F101 55 55                    UU
        eor     $55,x                           ; F103 55 55                    UU
        eor     $55,x                           ; F105 55 55                    UU
        eor     $55,x                           ; F107 55 55                    UU
        eor     $55,x                           ; F109 55 55                    UU
        eor     $55,x                           ; F10B 55 55                    UU
        eor     $55,x                           ; F10D 55 55                    UU
        eor     $55,x                           ; F10F 55 55                    UU
        eor     $55,x                           ; F111 55 55                    UU
        eor     $55,x                           ; F113 55 55                    UU
        eor     $55,x                           ; F115 55 55                    UU
        eor     $55,x                           ; F117 55 55                    UU
        eor     $55,x                           ; F119 55 55                    UU
        eor     $55,x                           ; F11B 55 55                    UU
        eor     $55,x                           ; F11D 55 55                    UU
        eor     $55,x                           ; F11F 55 55                    UU
        eor     $55,x                           ; F121 55 55                    UU
        eor     $55,x                           ; F123 55 55                    UU
        eor     $55,x                           ; F125 55 55                    UU
        eor     $55,x                           ; F127 55 55                    UU
        eor     $55,x                           ; F129 55 55                    UU
        eor     $55,x                           ; F12B 55 55                    UU
        eor     $55,x                           ; F12D 55 55                    UU
        eor     $55,x                           ; F12F 55 55                    UU
        eor     $55,x                           ; F131 55 55                    UU
        eor     $55,x                           ; F133 55 55                    UU
        eor     $55,x                           ; F135 55 55                    UU
        eor     $55,x                           ; F137 55 55                    UU
        eor     $55,x                           ; F139 55 55                    UU
        eor     $55,x                           ; F13B 55 55                    UU
        eor     $55,x                           ; F13D 55 55                    UU
        eor     $55,x                           ; F13F 55 55                    UU
        eor     $55,x                           ; F141 55 55                    UU
        eor     $55,x                           ; F143 55 55                    UU
        eor     $55,x                           ; F145 55 55                    UU
        eor     $55,x                           ; F147 55 55                    UU
        eor     $55,x                           ; F149 55 55                    UU
        eor     $55,x                           ; F14B 55 55                    UU
        eor     $55,x                           ; F14D 55 55                    UU
        eor     $55,x                           ; F14F 55 55                    UU
        eor     $55,x                           ; F151 55 55                    UU
        eor     $55,x                           ; F153 55 55                    UU
        eor     $55,x                           ; F155 55 55                    UU
        eor     $55,x                           ; F157 55 55                    UU
        eor     $55,x                           ; F159 55 55                    UU
        eor     $55,x                           ; F15B 55 55                    UU
        eor     $55,x                           ; F15D 55 55                    UU
        eor     $55,x                           ; F15F 55 55                    UU
        eor     $55,x                           ; F161 55 55                    UU
        eor     $55,x                           ; F163 55 55                    UU
        eor     $55,x                           ; F165 55 55                    UU
        eor     $55,x                           ; F167 55 55                    UU
        eor     $55,x                           ; F169 55 55                    UU
        eor     $55,x                           ; F16B 55 55                    UU
        eor     $55,x                           ; F16D 55 55                    UU
        eor     $55,x                           ; F16F 55 55                    UU
        eor     $55,x                           ; F171 55 55                    UU
        eor     $55,x                           ; F173 55 55                    UU
        eor     $55,x                           ; F175 55 55                    UU
        eor     $55,x                           ; F177 55 55                    UU
        eor     $55,x                           ; F179 55 55                    UU
        eor     $55,x                           ; F17B 55 55                    UU
        eor     $55,x                           ; F17D 55 55                    UU
        eor     $55,x                           ; F17F 55 55                    UU
        eor     $55,x                           ; F181 55 55                    UU
        eor     $55,x                           ; F183 55 55                    UU
        eor     $55,x                           ; F185 55 55                    UU
        eor     $55,x                           ; F187 55 55                    UU
        eor     $55,x                           ; F189 55 55                    UU
        eor     $55,x                           ; F18B 55 55                    UU
        eor     $55,x                           ; F18D 55 55                    UU
        eor     $55,x                           ; F18F 55 55                    UU
        eor     $55,x                           ; F191 55 55                    UU
        eor     $55,x                           ; F193 55 55                    UU
        eor     $55,x                           ; F195 55 55                    UU
        eor     $55,x                           ; F197 55 55                    UU
        eor     $55,x                           ; F199 55 55                    UU
        eor     $55,x                           ; F19B 55 55                    UU
        eor     $55,x                           ; F19D 55 55                    UU
        eor     $55,x                           ; F19F 55 55                    UU
        eor     $55,x                           ; F1A1 55 55                    UU
        eor     $55,x                           ; F1A3 55 55                    UU
        eor     $55,x                           ; F1A5 55 55                    UU
        eor     $55,x                           ; F1A7 55 55                    UU
        eor     $55,x                           ; F1A9 55 55                    UU
        eor     $55,x                           ; F1AB 55 55                    UU
        eor     $55,x                           ; F1AD 55 55                    UU
        eor     $55,x                           ; F1AF 55 55                    UU
        eor     $55,x                           ; F1B1 55 55                    UU
        eor     $55,x                           ; F1B3 55 55                    UU
        eor     $55,x                           ; F1B5 55 55                    UU
        eor     $55,x                           ; F1B7 55 55                    UU
        eor     $55,x                           ; F1B9 55 55                    UU
        eor     $55,x                           ; F1BB 55 55                    UU
        eor     $55,x                           ; F1BD 55 55                    UU
        eor     $55,x                           ; F1BF 55 55                    UU
        eor     $55,x                           ; F1C1 55 55                    UU
        eor     $55,x                           ; F1C3 55 55                    UU
        eor     $55,x                           ; F1C5 55 55                    UU
        eor     $55,x                           ; F1C7 55 55                    UU
        eor     $55,x                           ; F1C9 55 55                    UU
        eor     $55,x                           ; F1CB 55 55                    UU
        eor     $55,x                           ; F1CD 55 55                    UU
        eor     $55,x                           ; F1CF 55 55                    UU
        eor     $55,x                           ; F1D1 55 55                    UU
        eor     $55,x                           ; F1D3 55 55                    UU
        eor     $55,x                           ; F1D5 55 55                    UU
        eor     $55,x                           ; F1D7 55 55                    UU
        eor     $55,x                           ; F1D9 55 55                    UU
        eor     $55,x                           ; F1DB 55 55                    UU
        eor     $55,x                           ; F1DD 55 55                    UU
        eor     $55,x                           ; F1DF 55 55                    UU
        eor     $55,x                           ; F1E1 55 55                    UU
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
        eor     $55,x                           ; F201 55 55                    UU
        eor     $55,x                           ; F203 55 55                    UU
        eor     $55,x                           ; F205 55 55                    UU
        eor     $55,x                           ; F207 55 55                    UU
        eor     $55,x                           ; F209 55 55                    UU
        eor     $55,x                           ; F20B 55 55                    UU
        eor     $55,x                           ; F20D 55 55                    UU
        eor     $55,x                           ; F20F 55 55                    UU
        eor     $55,x                           ; F211 55 55                    UU
        eor     $55,x                           ; F213 55 55                    UU
        eor     $55,x                           ; F215 55 55                    UU
        eor     $55,x                           ; F217 55 55                    UU
        eor     $55,x                           ; F219 55 55                    UU
        eor     $55,x                           ; F21B 55 55                    UU
        eor     $55,x                           ; F21D 55 55                    UU
        eor     $55,x                           ; F21F 55 55                    UU
        eor     $55,x                           ; F221 55 55                    UU
        eor     $55,x                           ; F223 55 55                    UU
        eor     $55,x                           ; F225 55 55                    UU
        eor     $55,x                           ; F227 55 55                    UU
        eor     $55,x                           ; F229 55 55                    UU
        eor     $55,x                           ; F22B 55 55                    UU
        eor     $55,x                           ; F22D 55 55                    UU
        eor     $55,x                           ; F22F 55 55                    UU
        eor     $55,x                           ; F231 55 55                    UU
        eor     $55,x                           ; F233 55 55                    UU
        eor     $55,x                           ; F235 55 55                    UU
        eor     $55,x                           ; F237 55 55                    UU
        eor     $55,x                           ; F239 55 55                    UU
        eor     $55,x                           ; F23B 55 55                    UU
        eor     $55,x                           ; F23D 55 55                    UU
        eor     $55,x                           ; F23F 55 55                    UU
        eor     $55,x                           ; F241 55 55                    UU
        eor     $55,x                           ; F243 55 55                    UU
        eor     $55,x                           ; F245 55 55                    UU
        eor     $55,x                           ; F247 55 55                    UU
        eor     $55,x                           ; F249 55 55                    UU
        eor     $55,x                           ; F24B 55 55                    UU
        eor     $55,x                           ; F24D 55 55                    UU
        eor     $55,x                           ; F24F 55 55                    UU
        eor     $55,x                           ; F251 55 55                    UU
        eor     $55,x                           ; F253 55 55                    UU
        eor     $55,x                           ; F255 55 55                    UU
        eor     $55,x                           ; F257 55 55                    UU
        eor     $55,x                           ; F259 55 55                    UU
        eor     $55,x                           ; F25B 55 55                    UU
        eor     $55,x                           ; F25D 55 55                    UU
        eor     $55,x                           ; F25F 55 55                    UU
        eor     $55,x                           ; F261 55 55                    UU
        eor     $55,x                           ; F263 55 55                    UU
        eor     $55,x                           ; F265 55 55                    UU
        eor     $55,x                           ; F267 55 55                    UU
        eor     $55,x                           ; F269 55 55                    UU
        eor     $55,x                           ; F26B 55 55                    UU
        eor     $55,x                           ; F26D 55 55                    UU
        eor     $55,x                           ; F26F 55 55                    UU
        eor     $55,x                           ; F271 55 55                    UU
        eor     $55,x                           ; F273 55 55                    UU
        eor     $55,x                           ; F275 55 55                    UU
        eor     $55,x                           ; F277 55 55                    UU
        sta     $AA,x                           ; F279 95 AA                    ..
        tax                                     ; F27B AA                       .
        tax                                     ; F27C AA                       .
        tax                                     ; F27D AA                       .
        tax                                     ; F27E AA                       .
        tax                                     ; F27F AA                       .
        tax                                     ; F280 AA                       .
        eor     $B5,x                           ; F281 55 B5                    U.
        adc     $52A5                           ; F283 6D A5 52                 m.R
        eor     $AB,x                           ; F286 55 AB                    U.
        rol     a                               ; F288 2A                       *
        eor     $AA,x                           ; F289 55 AA                    U.
        .byte   $52                             ; F28B 52                       R
        sta     $AA,x                           ; F28C 95 AA                    ..
        lsr     a                               ; F28E 4A                       J
        and     #$65                            ; F28F 29 65                    )e
        lsr     $35,x                           ; F291 56 35                    V5
        eor     $55,x                           ; F293 55 55                    UU
        lda     $B5,x                           ; F295 B5 B5                    ..
        eor     $F5,x                           ; F297 55 F5                    U.
        .byte   $DB                             ; F299 DB                       .
        asl     a                               ; F29A 0A                       .
        ldx     #$6A                            ; F29B A2 6A                    .j
        .byte   $2F                             ; F29D 2F                       /
        lda     $A4                             ; F29E A5 A4                    ..
        eor     $29,x                           ; F2A0 55 29                    U)
        lda     $6A                             ; F2A2 A5 6A                    .j
        lda     $54,x                           ; F2A4 B5 54                    .T
        lda     $56                             ; F2A6 A5 56                    .V
        eor     $B5,x                           ; F2A8 55 B5                    U.
        ldx     $4A,y                           ; F2AA B6 4A                    .J
        .byte   $52                             ; F2AC 52                       R
        tax                                     ; F2AD AA                       .
        tax                                     ; F2AE AA                       .
        bit     $A5                             ; F2AF 24 A5                    $.
        lsr     a                               ; F2B1 4A                       J
        eor     $69,x                           ; F2B2 55 69                    Ui
        eor     $55,x                           ; F2B4 55 55                    UU
        cmp     $56,x                           ; F2B6 D5 56                    .V
        eor     $D5,x                           ; F2B8 55 D5                    U.
        ror     $DFFF                           ; F2BA 6E FF DF                 n..
        rti                                     ; F2BD 40                       @

; ----------------------------------------------------------------------------
        .byte   $52                             ; F2BE 52                       R
        ldx     $92,y                           ; F2BF B6 92                    ..
        rol     a                               ; F2C1 2A                       *
        .byte   $6B                             ; F2C2 6B                       k
        and     $22                             ; F2C3 25 22                    %"
        lda     $56,x                           ; F2C5 B5 56                    .V
        .byte   $52                             ; F2C7 52                       R
        cmp     $AE,x                           ; F2C8 D5 AE                    ..
        sty     $52,x                           ; F2CA 94 52                    .R
        lda     $DA,x                           ; F2CC B5 DA                    ..
        .byte   $92                             ; F2CE 92                       .
        .byte   $54                             ; F2CF 54                       T
        dey                                     ; F2D0 88                       .
        dey                                     ; F2D1 88                       .
        .byte   $54                             ; F2D2 54                       T
        cmp     $52,x                           ; F2D3 D5 52                    .R
        lda     $554A                           ; F2D5 AD 4A 55                 .JU
        cmp     $AAB6,x                         ; F2D8 DD B6 AA                 ...
        tsx                                     ; F2DB BA                       .
        eor     $FB,x                           ; F2DC 55 FB                    U.
        .byte   $FF                             ; F2DE FF                       .
        .byte   $FF                             ; F2DF FF                       .
        brk                                     ; F2E0 00                       .
        .byte   $D2                             ; F2E1 D2                       .
        rol     $40                             ; F2E2 26 40                    &@
        ldx     $37,y                           ; F2E4 B6 37                    .7
        ora     ($88,x)                         ; F2E6 01 88                    ..
        tsx                                     ; F2E8 BA                       .
        .byte   $92                             ; F2E9 92                       .
        lda     $6D,x                           ; F2EA B5 6D                    .m
        eor     $24                             ; F2EC 45 24                    E$
        .byte   $BB                             ; F2EE BB                       .
        and     $6D,x                           ; F2EF 35 6D                    5m
        .byte   $6B                             ; F2F1 6B                       k
        .byte   $53                             ; F2F2 53                       S
        .byte   $42                             ; F2F3 42                       B
        and     #$AD                            ; F2F4 29 AD                    ).
        tax                                     ; F2F6 AA                       .
        tax                                     ; F2F7 AA                       .
        lsr     a                               ; F2F8 4A                       J
        ldx     #$4A                            ; F2F9 A2 4A                    .J
        eor     $52,x                           ; F2FB 55 52                    UR
        eor     $BB,x                           ; F2FD 55 BB                    U.
        .byte   $52                             ; F2FF 52                       R
        lda     $D2                             ; F300 A5 D2                    ..
        dec     $6E,x                           ; F302 D6 6E                    .n
        dec     $CA,x                           ; F304 D6 CA                    ..
LF306:  lsr     a                               ; F306 4A                       J
        sbc     $2BFF,x                         ; F307 FD FF 2B                 ..+
        .byte   $9B                             ; F30A 9B                       .
        .byte   $52                             ; F30B 52                       R
        ora     ($59),y                         ; F30C 11 59                    .Y
        eor     $92,x                           ; F30E 55 92                    U.
        .byte   $54                             ; F310 54                       T
        and     $49                             ; F311 25 49                    %I
        cmp     #$B4                            ; F313 C9 B4                    ..
        lda     $A6                             ; F315 A5 A6                    ..
        lsr     $D5,x                           ; F317 56 D5                    V.
        .byte   $DA                             ; F319 DA                       .
        sbc     $22AA                           ; F31A ED AA 22                 .."
        eor     $2A                             ; F31D 45 2A                    E*
        eor     $54,x                           ; F31F 55 54                    UT
        ldy     $22,x                           ; F321 B4 22                    ."
        .byte   $22                             ; F323 22                       "
        cmp     $92,x                           ; F324 D5 92                    ..
        tax                                     ; F326 AA                       .
        .byte   $74                             ; F327 74                       t
        eor     $65                             ; F328 45 65                    Ee
        .byte   $2B                             ; F32A 2B                       +
        adc     $6DD9                           ; F32B 6D D9 6D                 m.m
        .byte   $57                             ; F32E 57                       W
        .byte   $FF                             ; F32F FF                       .
        .byte   $FF                             ; F330 FF                       .
        .byte   $1F                             ; F331 1F                       .
        .byte   $5F                             ; F332 5F                       _
        ora     $04                             ; F333 05 04                    ..
        sed                                     ; F335 F8                       .
        .byte   $03                             ; F336 03                       .
        .byte   $89                             ; F337 89                       .
        ldy     $05,x                           ; F338 B4 05                    ..
        adc     ($D5,x)                         ; F33A 61 D5                    a.
        txs                                     ; F33C 9A                       .
        iny                                     ; F33D C8                       .
        .byte   $97                             ; F33E 97                       .
        eor     $5F5A                           ; F33F 4D 5A 5F                 MZ_
        sta     $E8,x                           ; F342 95 E8                    ..
        tax                                     ; F344 AA                       .
        .byte   $52                             ; F345 52                       R
        .byte   $54                             ; F346 54                       T
        ora     $D1,x                           ; F347 15 D1                    ..
        ldx     $2A                             ; F349 A6 2A                    .*
        sta     ($B6),y                         ; F34B 91 B6                    ..
        .byte   $44                             ; F34D 44                       D
        asl     a                               ; F34E 0A                       .
        adc     $4A,x                           ; F34F 75 4A                    uJ
        eor     $BB,x                           ; F351 55 BB                    U.
        .byte   $2B                             ; F353 2B                       +
        eor     $4AED,y                         ; F354 59 ED 4A                 Y.J
        adc     LF95B                           ; F357 6D 5B F9                 m[.
        .byte   $FF                             ; F35A FF                       .
        .byte   $FF                             ; F35B FF                       .
        bne     LF38D                           ; F35C D0 2F                    ./
        .byte   $53                             ; F35E 53                       S
        bpl     LF306                           ; F35F 10 A5                    ..
        pha                                     ; F361 48                       H
        .byte   $52                             ; F362 52                       R
        sta     $24,x                           ; F363 95 24                    .$
        eor     ($95),y                         ; F365 51 95                    Q.
        lsr     $52,x                           ; F367 56 52                    VR
        cmp     $56,x                           ; F369 D5 56                    .V
        eor     $5B,x                           ; F36B 55 5B                    U[
        lda     $A2,x                           ; F36D B5 A2                    ..
        and     $33,x                           ; F36F 35 33                    53
        lda     $4A                             ; F371 A5 4A                    .J
        and     $91                             ; F373 25 91                    %.
        .byte   $54                             ; F375 54                       T
        .byte   $22                             ; F376 22                       "
        eor     #$55                            ; F377 49 55                    IU
        ldx     #$B2                            ; F379 A2 B2                    ..
        tax                                     ; F37B AA                       .
        .byte   $DA                             ; F37C DA                       .
        lda     $B5B5                           ; F37D AD B5 B5                 ...
        .byte   $BB                             ; F380 BB                       .
        tax                                     ; F381 AA                       .
        sta     $6EF5,x                         ; F382 9D F5 6E                 ..n
        .byte   $EF                             ; F385 EF                       .
        dec     $B75D,x                         ; F386 DE 5D B7                 .].
        stx     $12,y                           ; F389 96 12                    ..
        .byte   $22                             ; F38B 22                       "
        .byte   $49                             ; F38C 49                       I
LF38D:  asl     a                               ; F38D 0A                       .
        and     ($A4,x)                         ; F38E 21 A4                    !.
        .byte   $54                             ; F390 54                       T
        ora     ($52),y                         ; F391 11 52                    .R
        lda     $AD                             ; F393 A5 AD                    ..
        dec     $6E,x                           ; F395 D6 6E                    .n
        cmp     $BA,x                           ; F397 D5 BA                    ..
        adc     $54A5                           ; F399 6D A5 54                 m.T
        and     #$52                            ; F39C 29 52                    )R
        .byte   $12                             ; F39E 12                       .
        eor     #$84                            ; F39F 49 84                    I.
        bit     $2A                             ; F3A1 24 2A                    $*
        lda     #$52                            ; F3A3 A9 52                    .R
        lda     $76,x                           ; F3A5 B5 76                    .v
        .byte   $6B                             ; F3A7 6B                       k
        .byte   $6B                             ; F3A8 6B                       k
        .byte   $BB                             ; F3A9 BB                       .
        .byte   $EB                             ; F3AA EB                       .
        lsr     $7EF7,x                         ; F3AB 5E F7 7E                 ^.~
        .byte   $FF                             ; F3AE FF                       .
        cmp     $555B,x                         ; F3AF DD 5B 55                 .[U
        .byte   $92                             ; F3B2 92                       .
        pha                                     ; F3B3 48                       H
        jsr     L4410                           ; F3B4 20 10 44                  .D
        sty     $88,x                           ; F3B7 94 88                    ..
        tay                                     ; F3B9 A8                       .
        .byte   $52                             ; F3BA 52                       R
        .byte   $AB                             ; F3BB AB                       .
        jmp     (L5ADB)                         ; F3BC 6C DB 5A                 l.Z

; ----------------------------------------------------------------------------
        .byte   $6B                             ; F3BF 6B                       k
        lda     $B5B5                           ; F3C0 AD B5 B5                 ...
        lda     $AA,x                           ; F3C3 B5 AA                    ..
        rol     a                               ; F3C5 2A                       *
        and     $11                             ; F3C6 25 11                    %.
        eor     $44                             ; F3C8 45 44                    ED
        sty     $44                             ; F3CA 84 44                    .D
        .byte   $92                             ; F3CC 92                       .
        .byte   $52                             ; F3CD 52                       R
        eor     $AD,x                           ; F3CE 55 AD                    U.
        dec     $6E,x                           ; F3D0 D6 6E                    .n
        .byte   $DB                             ; F3D2 DB                       .
        ldx     $B6,y                           ; F3D3 B6 B6                    ..
        sbc     $DD,x                           ; F3D5 F5 DD                    ..
        .byte   $FB                             ; F3D7 FB                       .
        cmp     $777F,x                         ; F3D8 DD 7F 77                 ..w
        .byte   $6B                             ; F3DB 6B                       k
        .byte   $92                             ; F3DC 92                       .
        bpl     LF3F0                           ; F3DD 10 11                    ..
        eor     ($40,x)                         ; F3DF 41 40                    A@
        .byte   $44                             ; F3E1 44                       D
        .byte   $12                             ; F3E2 12                       .
        eor     #$4A                            ; F3E3 49 4A                    IJ
        cmp     $5A,x                           ; F3E5 D5 5A                    .Z
        lda     $D6B5                           ; F3E7 AD B5 D6                 ...
        ror     a                               ; F3EA 6A                       j
        eor     $DB,x                           ; F3EB 55 DB                    U.
        dec     $5A,x                           ; F3ED D6 5A                    .Z
        .byte   $AD                             ; F3EF AD                       .
LF3F0:  .byte   $52                             ; F3F0 52                       R
        eor     #$92                            ; F3F1 49 92                    I.
        bit     $11                             ; F3F3 24 11                    $.
        .byte   $89                             ; F3F5 89                       .
        .byte   $44                             ; F3F6 44                       D
        ldy     $A4                             ; F3F7 A4 A4                    ..
        lsr     a                               ; F3F9 4A                       J
        lda     $B6DA                           ; F3FA AD DA B6                 ...
        adc     $75B7                           ; F3FD 6D B7 75                 m.u
        adc     $77,x                           ; F400 75 77                    uw
        .byte   $F7                             ; F402 F7                       .
        .byte   $BB                             ; F403 BB                       .
        .byte   $BF                             ; F404 BF                       .
        .byte   $EF                             ; F405 EF                       .
        ldx     $4452                           ; F406 AE 52 44                 .RD
        .byte   $44                             ; F409 44                       D
        bpl     LF410                           ; F40A 10 04                    ..
        .byte   $42                             ; F40C 42                       B
        and     ($49,x)                         ; F40D 21 49                    !I
        lsr     a                               ; F40F 4A                       J
LF410:  eor     $B5,x                           ; F410 55 B5                    U.
        dec     $D6,x                           ; F412 D6 D6                    ..
        .byte   $DA                             ; F414 DA                       .
        .byte   $5A                             ; F415 5A                       Z
        lda     $5A,x                           ; F416 B5 5A                    .Z
        .byte   $6B                             ; F418 6B                       k
        lda     $555A                           ; F419 AD 5A 55                 .ZU
        lsr     a                               ; F41C 4A                       J
        .byte   $92                             ; F41D 92                       .
        sty     $44,x                           ; F41E 94 44                    .D
        .byte   $22                             ; F420 22                       "
LF421:  eor     #$92                            ; F421 49 92                    I.
        .byte   $52                             ; F423 52                       R
        tax                                     ; F424 AA                       .
        tax                                     ; F425 AA                       .
        ror     a                               ; F426 6A                       j
        adc     $6B,x                           ; F427 75 6B                    uk
        .byte   $BB                             ; F429 BB                       .
        ldx     $D5,y                           ; F42A B6 D5                    ..
        .byte   $DA                             ; F42C DA                       .
        ldx     $BB,y                           ; F42D B6 BB                    ..
        .byte   $EF                             ; F42F EF                       .
        sbc     $AEDD,x                         ; F430 FD DD AE                 ...
        lsr     a                               ; F433 4A                       J
        .byte   $22                             ; F434 22                       "
        .byte   $12                             ; F435 12                       .
        eor     ($08,x)                         ; F436 41 08                    A.
        .byte   $42                             ; F438 42                       B
        .byte   $89                             ; F439 89                       .
        ldy     $94                             ; F43A A4 94                    ..
        tax                                     ; F43C AA                       .
        ror     a                               ; F43D 6A                       j
        lda     $D6B5                           ; F43E AD B5 D6                 ...
        lsr     $B5,x                           ; F441 56 B5                    V.
        ror     a                               ; F443 6A                       j
        .byte   $AB                             ; F444 AB                       .
        lsr     $AB,x                           ; F445 56 AB                    V.
        rol     a                               ; F447 2A                       *
        sta     $24,x                           ; F448 95 24                    .$
        and     $92                             ; F44A 25 92                    %.
        pha                                     ; F44C 48                       H
        .byte   $92                             ; F44D 92                       .
        sty     $4A,x                           ; F44E 94 4A                    .J
        eor     $B5,x                           ; F450 55 B5                    U.
        .byte   $5A                             ; F452 5A                       Z
        .byte   $6B                             ; F453 6B                       k
        .byte   $DB                             ; F454 DB                       .
        ror     $6D,x                           ; F455 76 6D                    vm
        .byte   $6B                             ; F457 6B                       k
        eor     $55,x                           ; F458 55 55                    UU
        .byte   $77                             ; F45A 77                       w
        adc     $BBB7                           ; F45B 6D B7 BB                 m..
        lda     $AD,x                           ; F45E B5 AD                    ..
        lsr     a                               ; F460 4A                       J
        sta     ($94),y                         ; F461 91 94                    ..
        bit     $11                             ; F463 24 11                    $.
        eor     #$52                            ; F465 49 52                    IR
        .byte   $92                             ; F467 92                       .
        .byte   $52                             ; F468 52                       R
        sta     $AA,x                           ; F469 95 AA                    ..
        lda     $6A,x                           ; F46B B5 6A                    .j
        eor     $AB,x                           ; F46D 55 AB                    U.
        .byte   $5A                             ; F46F 5A                       Z
        eor     $AB,x                           ; F470 55 AB                    U.
        tax                                     ; F472 AA                       .
        eor     $95,x                           ; F473 55 95                    U.
        .byte   $54                             ; F475 54                       T
        lda     $A2                             ; F476 A5 A2                    ..
        ldy     $92                             ; F478 A4 92                    ..
        .byte   $52                             ; F47A 52                       R
        lda     #$2A                            ; F47B A9 2A                    .*
        eor     $66AD                           ; F47D 4D AD 66                 M.f
        .byte   $6B                             ; F480 6B                       k
        .byte   $5B                             ; F481 5B                       [
        .byte   $6B                             ; F482 6B                       k
        .byte   $57                             ; F483 57                       W
        lda     $55,x                           ; F484 B5 55                    .U
        .byte   $B3                             ; F486 B3                       .
        .byte   $52                             ; F487 52                       R
        .byte   $2B                             ; F488 2B                       +
        .byte   $B3                             ; F489 B3                       .
        tax                                     ; F48A AA                       .
        lda     #$AD                            ; F48B A9 AD                    ..
        tax                                     ; F48D AA                       .
        eor     $6B,x                           ; F48E 55 6B                    Uk
        eor     $55,x                           ; F490 55 55                    UU
        sta     $4A,x                           ; F492 95 4A                    .J
        lda     $94                             ; F494 A5 94                    ..
        .byte   $52                             ; F496 52                       R
        and     #$55                            ; F497 29 55                    )U
        sta     $AA,x                           ; F499 95 AA                    ..
        .byte   $54                             ; F49B 54                       T
        eor     $65,x                           ; F49C 55 65                    Ue
        ror     $56                             ; F49E 66 56                    fV
        lda     $6A,x                           ; F4A0 B5 6A                    .j
        lsr     $99,x                           ; F4A2 56 99                    V.
        tax                                     ; F4A4 AA                       .
        tax                                     ; F4A5 AA                       .
        .byte   $54                             ; F4A6 54                       T
        rol     a                               ; F4A7 2A                       *
        .byte   $53                             ; F4A8 53                       S
        tax                                     ; F4A9 AA                       .
        tax                                     ; F4AA AA                       .
        tax                                     ; F4AB AA                       .
        .byte   $B2                             ; F4AC B2                       .
        .byte   $5A                             ; F4AD 5A                       Z
        eor     $6AB5,y                         ; F4AE 59 B5 6A                 Y.j
        lda     $5A,x                           ; F4B1 B5 5A                    .Z
        eor     $55,x                           ; F4B3 55 55                    UU
        cmp     $5656                           ; F4B5 CD 56 56                 .VV
        cmp     $AA,x                           ; F4B8 D5 AA                    ..
        tax                                     ; F4BA AA                       .
        tax                                     ; F4BB AA                       .
        .byte   $32                             ; F4BC 32                       2
        eor     $55,x                           ; F4BD 55 55                    UU
        .byte   $53                             ; F4BF 53                       S
        eor     $D5,x                           ; F4C0 55 D5                    U.
        jmp     L5535                           ; F4C2 4C 35 55                 L5U

; ----------------------------------------------------------------------------
        adc     $A6                             ; F4C5 65 A6                    e.
        txs                                     ; F4C7 9A                       .
        tax                                     ; F4C8 AA                       .
        lda     #$AA                            ; F4C9 A9 AA                    ..
        tax                                     ; F4CB AA                       .
        rol     a                               ; F4CC 2A                       *
        .byte   $AB                             ; F4CD AB                       .
        cpy     $546C                           ; F4CE CC 6C 54                 .lT
        eor     $2A,x                           ; F4D1 55 2A                    U*
        .byte   $4B                             ; F4D3 4B                       K
        lda     $99                             ; F4D4 A5 99                    ..
        .byte   $9C                             ; F4D6 9C                       .
        tax                                     ; F4D7 AA                       .
        lsr     a                               ; F4D8 4A                       J
        eor     $B955                           ; F4D9 4D 55 B9                 MU.
        tax                                     ; F4DC AA                       .
        tax                                     ; F4DD AA                       .
        txs                                     ; F4DE 9A                       .
        ldx     $B2,y                           ; F4DF B6 B2                    ..
        eor     $55,x                           ; F4E1 55 55                    UU
        eor     $55,x                           ; F4E3 55 55                    UU
        eor     $55,x                           ; F4E5 55 55                    UU
        eor     $53,x                           ; F4E7 55 53                    US
        .byte   $CB                             ; F4E9 CB                       .
        tax                                     ; F4EA AA                       .
        .byte   $32                             ; F4EB 32                       2
        .byte   $AB                             ; F4EC AB                       .
        dex                                     ; F4ED CA                       .
        ror     a                               ; F4EE 6A                       j
        lsr     $55,x                           ; F4EF 56 55                    VU
        eor     $55C9,y                         ; F4F1 59 C9 55                 Y.U
        .byte   $93                             ; F4F4 93                       .
        cmp     #$CC                            ; F4F5 C9 CC                    ..
        cpy     $554C                           ; F4F7 CC 4C 55                 .LU
        eor     $55,x                           ; F4FA 55 55                    UU
        eor     $55,x                           ; F4FC 55 55                    UU
        eor     $55,x                           ; F4FE 55 55                    UU
        eor     $55,x                           ; F500 55 55                    UU
        eor     $55,x                           ; F502 55 55                    UU
        eor     $55,x                           ; F504 55 55                    UU
        eor     $55,x                           ; F506 55 55                    UU
        eor     $55,x                           ; F508 55 55                    UU
        .byte   $53                             ; F50A 53                       S
        .byte   $2B                             ; F50B 2B                       +
        .byte   $33                             ; F50C 33                       3
        .byte   $33                             ; F50D 33                       3
        sta     $266A,x                         ; F50E 9D 6A 26                 .j&
        .byte   $33                             ; F511 33                       3
        .byte   $53                             ; F512 53                       S
        .byte   $1B                             ; F513 1B                       .
        .byte   $4B                             ; F514 4B                       K
        eor     $D5,x                           ; F515 55 D5                    U.
        .byte   $54                             ; F517 54                       T
        eor     $55,x                           ; F518 55 55                    UU
        eor     $55,x                           ; F51A 55 55                    UU
        eor     $55,x                           ; F51C 55 55                    UU
        lsr     $59,x                           ; F51E 56 59                    VY
        adc     #$66                            ; F520 69 66                    if
        lsr     $55,x                           ; F522 56 55                    VU
        eor     $55,x                           ; F524 55 55                    UU
        adc     $55                             ; F526 65 55                    eU
        eor     $5555,y                         ; F528 59 55 55                 YUU
        adc     $55                             ; F52B 65 55                    eU
        eor     $55,x                           ; F52D 55 55                    UU
        eor     $55,x                           ; F52F 55 55                    UU
        eor     $65,x                           ; F531 55 65                    Ue
        eor     $35,x                           ; F533 55 35                    U5
        eor     $55,x                           ; F535 55 55                    UU
        eor     $55,x                           ; F537 55 55                    UU
        sta     $55,x                           ; F539 95 55                    .U
        eor     $55,x                           ; F53B 55 55                    UU
        eor     $65,x                           ; F53D 55 65                    Ue
        eor     $55,x                           ; F53F 55 55                    UU
        eor     $4D,x                           ; F541 55 4D                    UM
        eor     $55,x                           ; F543 55 55                    UU
        eor     $D5,x                           ; F545 55 D5                    U.
        .byte   $54                             ; F547 54                       T
        eor     $55,x                           ; F548 55 55                    UU
        .byte   $53                             ; F54A 53                       S
        cmp     $54,x                           ; F54B D5 54                    .T
        adc     $53                             ; F54D 65 53                    eS
        eor     $5555,y                         ; F54F 59 55 55                 YUU
        lsr     $55,x                           ; F552 56 55                    VU
        eor     $D4D5                           ; F554 4D D5 D4                 M..
        .byte   $54                             ; F557 54                       T
        cmp     $5364                           ; F558 CD 64 53                 .dS
        eor     $55,x                           ; F55B 55 55                    UU
        and     $55,x                           ; F55D 35 55                    5U
        eor     $4D,x                           ; F55F 55 4D                    UM
        eor     $55,x                           ; F561 55 55                    UU
        eor     $55,x                           ; F563 55 55                    UU
        eor     $33,x                           ; F565 55 33                    U3
        eor     $55,x                           ; F567 55 55                    UU
        sta     $5555,y                         ; F569 99 55 55                 .UU
        cmp     $55                             ; F56C C5 55                    .U
        eor     $6A,x                           ; F56E 55 6A                    Uj
        ror     $95                             ; F570 66 95                    f.
        eor     $55,x                           ; F572 55 55                    UU
        eor     $55,x                           ; F574 55 55                    UU
        sta     $55,x                           ; F576 95 55                    .U
        cmp     $54,x                           ; F578 D5 54                    .T
        eor     $D5,x                           ; F57A 55 D5                    U.
        .byte   $54                             ; F57C 54                       T
        eor     $4D,x                           ; F57D 55 4D                    UM
        eor     $55,x                           ; F57F 55 55                    UU
        eor     $55,x                           ; F581 55 55                    UU
        eor     $55,x                           ; F583 55 55                    UU
        eor     $55,x                           ; F585 55 55                    UU
        eor     $D5,x                           ; F587 55 D5                    U.
        .byte   $54                             ; F589 54                       T
        eor     $35,x                           ; F58A 55 35                    U5
        eor     $5555,y                         ; F58C 59 55 55                 YUU
        eor     $65,x                           ; F58F 55 65                    Ue
        eor     $55,x                           ; F591 55 55                    UU
        eor     $65,x                           ; F593 55 65                    Ue
        adc     $55                             ; F595 65 55                    eU
        adc     ($99),y                         ; F597 71 99                    q.
        eor     $5559,y                         ; F599 59 59 55                 YYU
        eor     $55,x                           ; F59C 55 55                    UU
        eor     $55,x                           ; F59E 55 55                    UU
        lsr     $55,x                           ; F5A0 56 55                    VU
        cmp     $4C,x                           ; F5A2 D5 4C                    .L
        lsr     $55,x                           ; F5A4 56 55                    VU
        eor     $55,x                           ; F5A6 55 55                    UU
        eor     $55,x                           ; F5A8 55 55                    UU
        eor     $65,x                           ; F5AA 55 65                    Ue
        eor     $55,x                           ; F5AC 55 55                    UU
        eor     $53,x                           ; F5AE 55 53                    US
        eor     $55,x                           ; F5B0 55 55                    UU
        eor     $55,x                           ; F5B2 55 55                    UU
        eor     $55,x                           ; F5B4 55 55                    UU
        eor     $53,x                           ; F5B6 55 53                    US
        eor     $55,x                           ; F5B8 55 55                    UU
        eor     $55,x                           ; F5BA 55 55                    UU
        eor     $66,x                           ; F5BC 55 66                    Uf
        rol     $59,x                           ; F5BE 36 59                    6Y
        eor     $55,x                           ; F5C0 55 55                    UU
        eor     $55,x                           ; F5C2 55 55                    UU
        eor     $55,x                           ; F5C4 55 55                    UU
        adc     $66                             ; F5C6 65 66                    ef
        .byte   $93                             ; F5C8 93                       .
        cmp     $54,x                           ; F5C9 D5 54                    .T
        lsr     $55,x                           ; F5CB 56 55                    VU
        lda     $54,x                           ; F5CD B5 54                    .T
        eor     $D5,x                           ; F5CF 55 D5                    U.
        .byte   $52                             ; F5D1 52                       R
        eor     $55,x                           ; F5D2 55 55                    UU
        eor     $55,x                           ; F5D4 55 55                    UU
        lsr     $56,x                           ; F5D6 56 56                    VV
        lsr     $55,x                           ; F5D8 56 55                    VU
        eor     $D6,x                           ; F5DA 55 D6                    U.
        .byte   $54                             ; F5DC 54                       T
        cmp     $54,x                           ; F5DD D5 54                    .T
        eor     $55,x                           ; F5DF 55 55                    UU
        eor     $55,x                           ; F5E1 55 55                    UU
        eor     $66,x                           ; F5E3 55 66                    Uf
        eor     $55,x                           ; F5E5 55 55                    UU
        eor     $55,x                           ; F5E7 55 55                    UU
        eor     $55,x                           ; F5E9 55 55                    UU
        sta     $35,x                           ; F5EB 95 35                    .5
        eor     $55,x                           ; F5ED 55 55                    UU
        eor     $59,x                           ; F5EF 55 59                    UY
        eor     $65,x                           ; F5F1 55 65                    Ue
        adc     $55                             ; F5F3 65 55                    eU
        eor     $55,x                           ; F5F5 55 55                    UU
        eor     $1D35                           ; F5F7 4D 35 1D                 M5.
        eor     $9D,x                           ; F5FA 55 9D                    U.
        eor     #$D5                            ; F5FC 49 D5                    I.
        cpy     $64CC                           ; F5FE CC CC 64                 ..d
        lsr     $66,x                           ; F601 56 66                    Vf
        rol     $93,x                           ; F603 36 93                    6.
        eor     $5C,x                           ; F605 55 5C                    U\
        lsr     $66,x                           ; F607 56 66                    Vf
        eor     $33,x                           ; F609 55 33                    U3
        sta     $55,x                           ; F60B 95 55                    .U
        cmp     $34,x                           ; F60D D5 34                    .4
        eor     $55,x                           ; F60F 55 55                    UU
        eor     $55,x                           ; F611 55 55                    UU
        eor     $59,x                           ; F613 55 59                    UY
        eor     $55,x                           ; F615 55 55                    UU
        eor     $D5,x                           ; F617 55 D5                    U.
        .byte   $54                             ; F619 54                       T
        eor     $4D,x                           ; F61A 55 4D                    UM
        eor     $55,x                           ; F61C 55 55                    UU
        .byte   $53                             ; F61E 53                       S
        eor     $93,x                           ; F61F 55 93                    U.
        eor     $35,x                           ; F621 55 35                    U5
        sta     $56,x                           ; F623 95 56                    .V
        and     $56,x                           ; F625 35 56                    5V
        lsr     $65,x                           ; F627 56 65                    Ve
        rol     $59,x                           ; F629 36 59                    6Y
        eor     $55,x                           ; F62B 55 55                    UU
        .byte   $93                             ; F62D 93                       .
        eor     $E4D9,y                         ; F62E 59 D9 E4                 Y..
        .byte   $64                             ; F631 64                       d
        ror     $65                             ; F632 66 65                    fe
        eor     $65,x                           ; F634 55 65                    Ue
        .byte   $C7                             ; F636 C7                       .
        .byte   $64                             ; F637 64                       d
        eor     $55,x                           ; F638 55 55                    UU
        sta     $9D,x                           ; F63A 95 9D                    ..
LF63C:  .byte   $54                             ; F63C 54                       T
        eor     $55,x                           ; F63D 55 55                    UU
        eor     $55,x                           ; F63F 55 55                    UU
        and     $55,x                           ; F641 35 55                    5U
        sta     $55,x                           ; F643 95 55                    .U
        eor     $5555,y                         ; F645 59 55 55                 YUU
        eor     $55,x                           ; F648 55 55                    UU
        eor     $59,x                           ; F64A 55 59                    UY
        eor     $55,x                           ; F64C 55 55                    UU
        eor     $55,x                           ; F64E 55 55                    UU
        eor     $6555,y                         ; F650 59 55 65                 YUe
        eor     $A5,x                           ; F653 55 A5                    U.
        lsr     $55,x                           ; F655 56 55                    VU
        eor     $55,x                           ; F657 55 55                    UU
        sta     $55,x                           ; F659 95 55                    .U
        adc     $55                             ; F65B 65 55                    eU
        eor     $AB55                           ; F65D 4D 55 AB                 MU.
        lsr     a                               ; F660 4A                       J
        and     $55,x                           ; F661 35 55                    5U
        eor     $2D,x                           ; F663 55 2D                    U-
        eor     $9AAD                           ; F665 4D AD 9A                 M..
        .byte   $D4                             ; F668 D4                       .
        cpy     $4D54                           ; F669 CC 54 4D                 .TM
        sta     $5A,x                           ; F66C 95 5A                    .Z
        sta     ($AA),y                         ; F66E 91 AA                    ..
        bit     $54AA                           ; F670 2C AA 54                 ,.T
        lda     $5AD4                           ; F673 AD D4 5A                 ..Z
        eor     $75,x                           ; F676 55 75                    Uu
        nop                                     ; F678 EA                       .
        ror     $77,x                           ; F679 76 77                    vw
        adc     $57,x                           ; F67B 75 57                    uW
        eor     $6D,x                           ; F67D 55 6D                    Um
        rol     a                               ; F67F 2A                       *
        ldy     $54                             ; F680 A4 54                    .T
        eor     ($4D,x)                         ; F682 41 4D                    AM
        sta     $A4,x                           ; F684 95 A4                    ..
        sta     $5C,x                           ; F686 95 5C                    .\
        lda     #$C9                            ; F688 A9 C9                    ..
        dex                                     ; F68A CA                       .
        ldx     $56                             ; F68B A6 56                    .V
        ldy     $52,x                           ; F68D B4 52                    .R
        eor     $15                             ; F68F 45 15                    E.
        rol     a                               ; F691 2A                       *
        eor     ($50),y                         ; F692 51 50                    QP
        eor     ($4D),y                         ; F694 51 4D                    QM
        adc     $3753                           ; F696 6D 53 37                 mS7
        sbc     LFFFF,x                         ; F699 FD FF FF                 ...
        .byte   $FF                             ; F69C FF                       .
        .byte   $3F                             ; F69D 3F                       ?
        clv                                     ; F69E B8                       .
        ora     ($00,x)                         ; F69F 01 00                    ..
        sta     $52,x                           ; F6A1 95 52                    .R
        bvs     LF63C                           ; F6A3 70 97                    p.
        php                                     ; F6A5 08                       .
        adc     $6094                           ; F6A6 6D 94 60                 m.`
        .byte   $5F                             ; F6A9 5F                       _
        ldx     #$37                            ; F6AA A2 37                    .7
        adc     $42FD                           ; F6AC 6D FD 42                 m.B
        .byte   $8B                             ; F6AF 8B                       .
        txs                                     ; F6B0 9A                       .
        .byte   $12                             ; F6B1 12                       .
        eor     $8212                           ; F6B2 4D 12 82                 M..
        pha                                     ; F6B5 48                       H
        eor     ($A4,x)                         ; F6B6 41 A4                    A.
        .byte   $80                             ; F6B8 80                       .
        .byte   $5B                             ; F6B9 5B                       [
        tax                                     ; F6BA AA                       .
        inc     $D6,x                           ; F6BB F6 D6                    ..
        sta     LFFFF                           ; F6BD 8D FF FF                 ...
        .byte   $FF                             ; F6C0 FF                       .
        .byte   $FF                             ; F6C1 FF                       .
        .byte   $9F                             ; F6C2 9F                       .
        .byte   $FF                             ; F6C3 FF                       .
        brk                                     ; F6C4 00                       .
        brk                                     ; F6C5 00                       .
        .byte   $03                             ; F6C6 03                       .
        .byte   $80                             ; F6C7 80                       .
        .byte   $FE                             ; F6C8 FE                       .
        brk                                     ; F6C9 00                       .
LF6CA:  cpy     $0445                           ; F6CA CC 45 04                 .E.
        .byte   $FF                             ; F6CD FF                       .
LF6CE:  bne     LF6CA                           ; F6CE D0 FA                    ..
        eor     $A9                             ; F6D0 45 A9                    E.
        .byte   $FF                             ; F6D2 FF                       .
        cmp     ($5E,x)                         ; F6D3 C1 5E                    .^
        ora     $50                             ; F6D5 05 50                    .P
        .byte   $4B                             ; F6D7 4B                       K
        .byte   $80                             ; F6D8 80                       .
        ldy     $A090,x                         ; F6D9 BC 90 A0                 ...
        .byte   $02                             ; F6DC 02                       .
        jsr     L5D15                           ; F6DD 20 15 5D                  .]
        cmp     $AF,x                           ; F6E0 D5 AF                    ..
        dex                                     ; F6E2 CA                       .
        .byte   $FF                             ; F6E3 FF                       .
        .byte   $FF                             ; F6E4 FF                       .
        .byte   $FF                             ; F6E5 FF                       .
        .byte   $FF                             ; F6E6 FF                       .
        .byte   $FF                             ; F6E7 FF                       .
        .byte   $3F                             ; F6E8 3F                       ?
        brk                                     ; F6E9 00                       .
        bcs     LF6EC                           ; F6EA B0 00                    ..
LF6EC:  cpy     #$3F                            ; F6EC C0 3F                    .?
        brk                                     ; F6EE 00                       .
        ror     $20,x                           ; F6EF 76 20                    v 
LF6F1:  sbc     #$17                            ; F6F1 E9 17                    ..
        beq     LF774                           ; F6F3 F0 7F                    ..
        bvc     LF6CE                           ; F6F5 50 D7                    P.
        .byte   $3F                             ; F6F7 3F                       ?
        bne     LF711                           ; F6F8 D0 17                    ..
        .byte   $02                             ; F6FA 02                       .
        cld                                     ; F6FB D8                       .
        .byte   $42                             ; F6FC 42                       B
        cpy     #$9E                            ; F6FD C0 9E                    ..
        bpl     LF6F1                           ; F6FF 10 F0                    ..
        ora     #$00                            ; F701 09 00                    ..
        lda     LFA44                           ; F703 AD 44 FA                 .D.
        .byte   $9F                             ; F706 9F                       .
        cpx     #$FF                            ; F707 E0 FF                    ..
        .byte   $FF                             ; F709 FF                       .
        .byte   $FF                             ; F70A FF                       .
        .byte   $FF                             ; F70B FF                       .
        .byte   $FF                             ; F70C FF                       .
        .byte   $1F                             ; F70D 1F                       .
        brk                                     ; F70E 00                       .
        sei                                     ; F70F 78                       x
        brk                                     ; F710 00                       .
LF711:  cpx     #$0F                            ; F711 E0 0F                    ..
        brk                                     ; F713 00                       .
        .byte   $5F                             ; F714 5F                       _
        rti                                     ; F715 40                       @

; ----------------------------------------------------------------------------
        sbc     LFA07,y                         ; F716 F9 07 FA                 ...
        adc     LF7D0,x                         ; F719 7D D0 F7                 }..
        .byte   $1F                             ; F71C 1F                       .
        jmp     (L024D)                         ; F71D 6C 4D 02                 lM.

; ----------------------------------------------------------------------------
        bne     LF726                           ; F720 D0 04                    ..
        .byte   $64                             ; F722 64                       d
        jmp     L60D0                           ; F723 4C D0 60                 L.`

; ----------------------------------------------------------------------------
LF726:  ora     ($90,x)                         ; F726 01 90                    ..
        ora     #$74                            ; F728 09 74                    .t
        .byte   $F3                             ; F72A F3                       .
        .byte   $83                             ; F72B 83                       .
        sbc     LFFFF,y                         ; F72C F9 FF FF                 ...
        .byte   $FF                             ; F72F FF                       .
        .byte   $FF                             ; F730 FF                       .
        .byte   $FF                             ; F731 FF                       .
        .byte   $1F                             ; F732 1F                       .
        ldy     #$1D                            ; F733 A0 1D                    ..
        brk                                     ; F735 00                       .
        beq     LF73B                           ; F736 F0 03                    ..
        .byte   $80                             ; F738 80                       .
        .byte   $1D                             ; F739 1D                       .
        .byte   $80                             ; F73A 80                       .
LF73B:  inc     $E603,x                         ; F73B FE 03 E6                 ...
        .byte   $3F                             ; F73E 3F                       ?
        .byte   $42                             ; F73F 42                       B
        .byte   $FF                             ; F740 FF                       .
        .byte   $1F                             ; F741 1F                       .
        .byte   $EB                             ; F742 EB                       .
        .byte   $0F                             ; F743 0F                       .
        ora     ($F8,x)                         ; F744 01 F8                    ..
        ora     ($B0,x)                         ; F746 01 B0                    ..
        sty     $00,x                           ; F748 94 00                    ..
        eor     $01,x                           ; F74A 55 01                    U.
        dey                                     ; F74C 88                       .
        rol     a                               ; F74D 2A                       *
        cld                                     ; F74E D8                       .
        inc     LFFC5                           ; F74F EE C5 FF                 ...
        .byte   $FF                             ; F752 FF                       .
        .byte   $FF                             ; F753 FF                       .
        .byte   $FF                             ; F754 FF                       .
        .byte   $FF                             ; F755 FF                       .
        .byte   $FF                             ; F756 FF                       .
        .byte   $07                             ; F757 07                       .
        brk                                     ; F758 00                       .
        bvs     LF75B                           ; F759 70 00                    p.
LF75B:  cpx     #$07                            ; F75B E0 07                    ..
        brk                                     ; F75D 00                       .
        adc     LFE00,x                         ; F75E 7D 00 FE                 }..
        sta     $A8                             ; F761 85 A8                    ..
        .byte   $FF                             ; F763 FF                       .
        brk                                     ; F764 00                       .
        sbc     $A65F,x                         ; F765 FD 5F A6                 ._.
        rol     LF421,x                         ; F768 3E 21 F4                 >!.
        eor     ($21,x)                         ; F76B 41 21                    A!
        sta     $04,x                           ; F76D 95 04                    ..
        rol     a                               ; F76F 2A                       *
        ldy     #$05                            ; F770 A0 05                    ..
        cmp     $4A,x                           ; F772 D5 4A                    .J
LF774:  .byte   $5B                             ; F774 5B                       [
        .byte   $EB                             ; F775 EB                       .
        ldx     LFFFF                           ; F776 AE FF FF                 ...
        .byte   $FF                             ; F779 FF                       .
        .byte   $FF                             ; F77A FF                       .
        .byte   $93                             ; F77B 93                       .
        lsr     $A005,x                         ; F77C 5E 05 A0                 ^..
        .byte   $2B                             ; F77F 2B                       +
        brk                                     ; F780 00                       .
        sec                                     ; F781 38                       8
        ora     $D0,x                           ; F782 15 D0                    ..
        lsr     a                               ; F784 4A                       J
        eor     $AA                             ; F785 45 AA                    E.
        sta     $74,x                           ; F787 95 74                    .t
        .byte   $B3                             ; F789 B3                       .
        lsr     L00B7,x                         ; F78A 56 B7                    V.
        .byte   $BB                             ; F78C BB                       .
        .byte   $DC                             ; F78D DC                       .
        adc     $51                             ; F78E 65 51                    eQ
        sta     $44,x                           ; F790 95 44                    .D
        .byte   $52                             ; F792 52                       R
        rol     a                               ; F793 2A                       *
        sta     ($44),y                         ; F794 91 44                    .D
        lsr     a                               ; F796 4A                       J
        pha                                     ; F797 48                       H
        .byte   $42                             ; F798 42                       B
        sta     $A4,x                           ; F799 95 A4                    ..
        .byte   $DA                             ; F79B DA                       .
        ldx     $F3,y                           ; F79C B6 F3                    ..
        .byte   $FF                             ; F79E FF                       .
        .byte   $6F                             ; F79F 6F                       o
        .byte   $FF                             ; F7A0 FF                       .
        .byte   $FF                             ; F7A1 FF                       .
        .byte   $7F                             ; F7A2 7F                       .
        .byte   $7F                             ; F7A3 7F                       .
        eor     ($25,x)                         ; F7A4 41 25                    A%
        ora     $00,x                           ; F7A6 15 00                    ..
        and     #$00                            ; F7A8 29 00                    ).
        ora     ($21),y                         ; F7AA 11 21                    .!
        .byte   $22                             ; F7AC 22                       "
        sta     $B4,x                           ; F7AD 95 B4                    ..
        lda     $DFB5                           ; F7AF AD B5 DF                 ...
        adc     $DB,x                           ; F7B2 75 DB                    u.
        .byte   $57                             ; F7B4 57                       W
        .byte   $4B                             ; F7B5 4B                       K
        .byte   $2B                             ; F7B6 2B                       +
        rol     a                               ; F7B7 2A                       *
        .byte   $92                             ; F7B8 92                       .
        pha                                     ; F7B9 48                       H
        .byte   $44                             ; F7BA 44                       D
        .byte   $04                             ; F7BB 04                       .
        .byte   $52                             ; F7BC 52                       R
        .byte   $92                             ; F7BD 92                       .
        pha                                     ; F7BE 48                       H
        eor     $A5,x                           ; F7BF 55 A5                    U.
        adc     $57                             ; F7C1 65 57                    eW
        .byte   $9B                             ; F7C3 9B                       .
        sbc     LFDFF,x                         ; F7C4 FD FF FD                 ...
        .byte   $FF                             ; F7C7 FF                       .
        .byte   $FF                             ; F7C8 FF                       .
        .byte   $BB                             ; F7C9 BB                       .
        .byte   $27                             ; F7CA 27                       '
        tay                                     ; F7CB A8                       .
        sty     $08,x                           ; F7CC 94 08                    ..
        brk                                     ; F7CE 00                       .
        .byte   $12                             ; F7CF 12                       .
LF7D0:  bit     $A0                             ; F7D0 24 A0                    $.
        pha                                     ; F7D2 48                       H
        .byte   $22                             ; F7D3 22                       "
        .byte   $D3                             ; F7D4 D3                       .
        eor     $97,x                           ; F7D5 55 97                    U.
        inc     $6F,x                           ; F7D7 F6 6F                    .o
        cmp     $DD,x                           ; F7D9 D5 DD                    ..
        .byte   $DB                             ; F7DB DB                       .
        .byte   $D4                             ; F7DC D4                       .
        lsr     $85,x                           ; F7DD 56 85                    V.
        ldy     $08                             ; F7DF A4 08                    ..
        ora     #$49                            ; F7E1 09 49                    .I
        .byte   $22                             ; F7E3 22                       "
        bit     $A9                             ; F7E4 24 A9                    $.
        .byte   $92                             ; F7E6 92                       .
        .byte   $54                             ; F7E7 54                       T
        cmp     $AC,x                           ; F7E8 D5 AC                    ..
        dec     $B6,x                           ; F7EA D6 B6                    ..
        inc     LFB7F,x                         ; F7EC FE 7F FB                 ...
        .byte   $FF                             ; F7EF FF                       .
        .byte   $FF                             ; F7F0 FF                       .
        .byte   $DB                             ; F7F1 DB                       .
        and     $1264                           ; F7F2 2D 64 12                 -d.
        .byte   $12                             ; F7F5 12                       .
        .byte   $80                             ; F7F6 80                       .
        bvc     LF7F9                           ; F7F7 50 00                    P.
LF7F9:  bcc     LF81F                           ; F7F9 90 24                    .$
        ldx     #$BA                            ; F7FB A2 BA                    ..
        .byte   $DA                             ; F7FD DA                       .
        ror     a                               ; F7FE 6A                       j
        .byte   $BF                             ; F7FF BF                       .
        .byte   $5B                             ; F800 5B                       [
        .byte   $DB                             ; F801 DB                       .
        ror     $6B2D,x                         ; F802 7E 2D 6B                 ~-k
        eor     $88,x                           ; F805 55 88                    U.
        .byte   $44                             ; F807 44                       D
        .byte   $12                             ; F808 12                       .
        .byte   $92                             ; F809 92                       .
        ldy     $48,x                           ; F80A B4 48                    .H
        eor     #$4B                            ; F80C 49 4B                    IK
        and     $55                             ; F80E 25 55                    %U
        lda     $54                             ; F810 A5 54                    .T
        .byte   $DA                             ; F812 DA                       .
        lsr     a                               ; F813 4A                       J
        lda     LFFFD                           ; F814 AD FD FF                 ...
        .byte   $BF                             ; F817 BF                       .
        .byte   $FB                             ; F818 FB                       .
        .byte   $DF                             ; F819 DF                       .
        nop                                     ; F81A EA                       .
        and     $05                             ; F81B 25 05                    %.
        .byte   $6C                             ; F81D 6C                       l
        .byte   $10                             ; F81E 10                       .
LF81F:  rti                                     ; F81F 40                       @

; ----------------------------------------------------------------------------
        sta     $12                             ; F820 85 12                    ..
        bit     $A855                           ; F822 2C 55 A8                 ,U.
        lda     $53,x                           ; F825 B5 53                    .S
        .byte   $5B                             ; F827 5B                       [
        .byte   $57                             ; F828 57                       W
        lda     $9ADA                           ; F829 AD DA 9A                 ...
        rol     a                               ; F82C 2A                       *
        .byte   $AB                             ; F82D AB                       .
LF82E:  tax                                     ; F82E AA                       .
        .byte   $52                             ; F82F 52                       R
        .byte   $93                             ; F830 93                       .
        .byte   $52                             ; F831 52                       R
        sta     $52,x                           ; F832 95 52                    .R
        lsr     a                               ; F834 4A                       J
        eor     $49,x                           ; F835 55 49                    UI
        ror     a                               ; F837 6A                       j
        eor     #$A9                            ; F838 49 A9                    I.
        tax                                     ; F83A AA                       .
        lsr     a                               ; F83B 4A                       J
        eor     $2B,x                           ; F83C 55 2B                    U+
        lda     $52DA                           ; F83E AD DA 52                 ..R
        .byte   $6B                             ; F841 6B                       k
        .byte   $FF                             ; F842 FF                       .
        .byte   $B7                             ; F843 B7                       .
        .byte   $BF                             ; F844 BF                       .
        .byte   $AF                             ; F845 AF                       .
        .byte   $5A                             ; F846 5A                       Z
        .byte   $5B                             ; F847 5B                       [
        tay                                     ; F848 A8                       .
        rti                                     ; F849 40                       @

; ----------------------------------------------------------------------------
        ora     $4A84                           ; F84A 0D 84 4A                 ..J
        .byte   $54                             ; F84D 54                       T
        ldx     #$A5                            ; F84E A2 A5                    ..
        tax                                     ; F850 AA                       .
        eor     $5B,x                           ; F851 55 5B                    U[
        cmp     $55,x                           ; F853 D5 55                    .U
        ror     a                               ; F855 6A                       j
        .byte   $DA                             ; F856 DA                       .
        .byte   $92                             ; F857 92                       .
        .byte   $54                             ; F858 54                       T
        eor     $A9,x                           ; F859 55 A9                    U.
        ldx     $64,y                           ; F85B B6 64                    .d
        eor     $53,x                           ; F85D 55 53                    US
        eor     $5A4B,y                         ; F85F 59 4B 5A                 YKZ
        lda     #$24                            ; F862 A9 24                    .$
        eor     $A9,x                           ; F864 55 A9                    U.
        .byte   $D4                             ; F866 D4                       .
        rol     $55                             ; F867 26 55                    &U
        eor     $AAA1,x                         ; F869 5D A1 AA                 ]..
        txa                                     ; F86C 8A                       .
        cpx     $B526                           ; F86D EC 26 B5                 .&.
        lda     $15                             ; F870 A5 15                    ..
        .byte   $FF                             ; F872 FF                       .
        .byte   $FF                             ; F873 FF                       .
        sbc     $81E7,x                         ; F874 FD E7 81                 ...
        .byte   $1F                             ; F877 1F                       .
        jsr     L2555                           ; F878 20 55 25                  U%
        bvc     LF8C4                           ; F87B 50 47                    PG
        bvc     LF8D4                           ; F87D 50 55                    PU
        .byte   $54                             ; F87F 54                       T
        ror     a                               ; F880 6A                       j
        .byte   $AB                             ; F881 AB                       .
        .byte   $B2                             ; F882 B2                       .
        eor     $55,x                           ; F883 55 55                    UU
        lda     $4A,x                           ; F885 B5 4A                    .J
        lda     $54,x                           ; F887 B5 54                    .T
        eor     $95,x                           ; F889 55 95                    U.
        rol     a                               ; F88B 2A                       *
        .byte   $5B                             ; F88C 5B                       [
        lda     #$55                            ; F88D A9 55                    .U
        eor     $55,x                           ; F88F 55 55                    UU
        adc     #$52                            ; F891 69 52                    iR
        eor     $52,x                           ; F893 55 52                    UR
        sta     $5A,x                           ; F895 95 5A                    .Z
        tax                                     ; F897 AA                       .
        tax                                     ; F898 AA                       .
        tax                                     ; F899 AA                       .
        lda     $AA                             ; F89A A5 AA                    ..
        ldx     $52,y                           ; F89C B6 52                    .R
        eor     $AA55,y                         ; F89E 59 55 AA                 YU.
        lda     $6D4A                           ; F8A1 AD 4A 6D                 .Jm
        eor     $E1,x                           ; F8A4 55 E1                    U.
        .byte   $FF                             ; F8A6 FF                       .
        sbc     ($DF),y                         ; F8A7 F1 DF                    ..
        .byte   $0F                             ; F8A9 0F                       .
        ldy     $C00F                           ; F8AA AC 0F C0                 ...
        ldx     #$02                            ; F8AD A2 02                    ..
        .byte   $BB                             ; F8AF BB                       .
        .byte   $02                             ; F8B0 02                       .
        ldx     $44,y                           ; F8B1 B6 44                    .D
        cmp     #$5E                            ; F8B3 C9 5E                    .^
        .byte   $E2                             ; F8B5 E2                       .
        and     $55,x                           ; F8B6 35 55                    5U
        adc     $55                             ; F8B8 65 55                    eU
        ror     a                               ; F8BA 6A                       j
        sta     $96,x                           ; F8BB 95 96                    ..
        ror     a                               ; F8BD 6A                       j
        .byte   $52                             ; F8BE 52                       R
        .byte   $DA                             ; F8BF DA                       .
        eor     $97                             ; F8C0 45 97                    E.
        lsr     $A5,x                           ; F8C2 56 A5                    V.
LF8C4:  lsr     $A9,x                           ; F8C4 56 A9                    V.
        dex                                     ; F8C6 CA                       .
        lsr     a                               ; F8C7 4A                       J
        tax                                     ; F8C8 AA                       .
        stx     $E8,y                           ; F8C9 96 E8                    ..
        rol     a                               ; F8CB 2A                       *
        lda     $E9                             ; F8CC A5 E9                    ..
        txa                                     ; F8CE 8A                       .
        lda     $6A2E                           ; F8CF AD 2E 6A                 ..j
        .byte   $4D                             ; F8D2 4D                       M
        .byte   $95                             ; F8D3 95                       .
LF8D4:  .byte   $DA                             ; F8D4 DA                       .
        ldy     $DA                             ; F8D5 A4 DA                    ..
        .byte   $52                             ; F8D7 52                       R
        lda     $34,x                           ; F8D8 B5 34                    .4
        cmp     ($FF),y                         ; F8DA D1 FF                    ..
        .byte   $F0                             ; F8DC F0                       .
LF8DD:  .byte   $FF                             ; F8DD FF                       .
        .byte   $03                             ; F8DE 03                       .
        cmp     $E005,x                         ; F8DF DD 05 E0                 ...
        .byte   $A3                             ; F8E2 A3                       .
        jsr     L00B7                           ; F8E3 20 B7 00                  ..
        lda     $A948,x                         ; F8E6 BD 48 A9                 .H.
        .byte   $9B                             ; F8E9 9B                       .
        tay                                     ; F8EA A8                       .
        .byte   $5B                             ; F8EB 5B                       [
        cmp     ($5A),y                         ; F8EC D1 5A                    .Z
        eor     $74,x                           ; F8EE 55 74                    Ut
        .byte   $53                             ; F8F0 53                       S
        .byte   $B2                             ; F8F1 B2                       .
        dex                                     ; F8F2 CA                       .
        txa                                     ; F8F3 8A                       .
        .byte   $DA                             ; F8F4 DA                       .
        dex                                     ; F8F5 CA                       .
        .byte   $5A                             ; F8F6 5A                       Z
        cmp     $54,x                           ; F8F7 D5 54                    .T
        eor     $55,x                           ; F8F9 55 55                    UU
        eor     $59,x                           ; F8FB 55 59                    UY
        lda     #$29                            ; F8FD A9 29                    .)
        eor     $AA,x                           ; F8FF 55 AA                    U.
        lsr     a                               ; F901 4A                       J
        eor     $B5,x                           ; F902 55 B5                    U.
        ror     a                               ; F904 6A                       j
        cmp     $D2,x                           ; F905 D5 D2                    ..
        .byte   $52                             ; F907 52                       R
        .byte   $AB                             ; F908 AB                       .
        tax                                     ; F909 AA                       .
        ror     a                               ; F90A 6A                       j
        eor     $55,x                           ; F90B 55 55                    UU
        lda     $25                             ; F90D A5 25                    .%
        lda     $4A,x                           ; F90F B5 4A                    .J
        .byte   $AB                             ; F911 AB                       .
        rol     a                               ; F912 2A                       *
        .byte   $D7                             ; F913 D7                       .
        .byte   $2F                             ; F914 2F                       /
        sbc     $64D9,x                         ; F915 FD D9 64                 ..d
        .byte   $AB                             ; F918 AB                       .
        php                                     ; F919 08                       .
        lda     $A4A8                           ; F91A AD A8 A4                 ...
        .byte   $52                             ; F91D 52                       R
        .byte   $54                             ; F91E 54                       T
        sta     $A4,x                           ; F91F 95 A4                    ..
        tax                                     ; F921 AA                       .
        dex                                     ; F922 CA                       .
        ror     a                               ; F923 6A                       j
        eor     $AB,x                           ; F924 55 AB                    U.
        .byte   $5A                             ; F926 5A                       Z
        eor     $9555,y                         ; F927 59 55 95                 YU.
        tax                                     ; F92A AA                       .
        tax                                     ; F92B AA                       .
        tax                                     ; F92C AA                       .
        sta     $5A,x                           ; F92D 95 5A                    .Z
        eor     $55,x                           ; F92F 55 55                    UU
        eor     $95,x                           ; F931 55 95                    U.
        tax                                     ; F933 AA                       .
        .byte   $54                             ; F934 54                       T
        eor     $A9A5,y                         ; F935 59 A5 A9                 Y..
        rol     a                               ; F938 2A                       *
        eor     $55,x                           ; F939 55 55                    UU
        eor     $AD,x                           ; F93B 55 AD                    U.
        tax                                     ; F93D AA                       .
        .byte   $5A                             ; F93E 5A                       Z
        eor     $AB,x                           ; F93F 55 AB                    U.
        .byte   $5A                             ; F941 5A                       Z
        eor     $55,x                           ; F942 55 55                    UU
        eor     $55,x                           ; F944 55 55                    UU
        eor     $55,x                           ; F946 55 55                    UU
        eor     $55,x                           ; F948 55 55                    UU
        adc     $B5B5                           ; F94A 6D B5 B5                 m..
        lda     $5656                           ; F94D AD 56 56                 .VV
        sta     $2A,x                           ; F950 95 2A                    .*
        lda     $52                             ; F952 A5 52                    .R
        lda     $52                             ; F954 A5 52                    .R
        tax                                     ; F956 AA                       .
        .byte   $54                             ; F957 54                       T
        sta     $4A,x                           ; F958 95 4A                    .J
        .byte   $55                             ; F95A 55                       U
LF95B:  eor     $5A,x                           ; F95B 55 5A                    UZ
        cmp     $AA,x                           ; F95D D5 AA                    ..
        lsr     $55,x                           ; F95F 56 55                    VU
        lsr     $55,x                           ; F961 56 55                    VU
        tax                                     ; F963 AA                       .
        ldx     $52                             ; F964 A6 52                    .R
        .byte   $AB                             ; F966 AB                       .
        lsr     a                               ; F967 4A                       J
        .byte   $AB                             ; F968 AB                       .
        .byte   $5A                             ; F969 5A                       Z
        adc     #$55                            ; F96A 69 55                    iU
        eor     $55,x                           ; F96C 55 55                    UU
        sta     $AA,x                           ; F96E 95 AA                    ..
        lsr     a                               ; F970 4A                       J
        eor     $95,x                           ; F971 55 95                    U.
        tax                                     ; F973 AA                       .
        tax                                     ; F974 AA                       .
        ror     a                               ; F975 6A                       j
        eor     $55,x                           ; F976 55 55                    UU
        lda     $AA,x                           ; F978 B5 AA                    ..
        .byte   $5A                             ; F97A 5A                       Z
        eor     $55,x                           ; F97B 55 55                    UU
        eor     $55,x                           ; F97D 55 55                    UU
        lda     $AA,x                           ; F97F B5 AA                    ..
        tax                                     ; F981 AA                       .
        lsr     $69,x                           ; F982 56 69                    Vi
        adc     #$A9                            ; F984 69 A9                    i.
        tax                                     ; F986 AA                       .
        tax                                     ; F987 AA                       .
        ror     a                               ; F988 6A                       j
        eor     $55,x                           ; F989 55 55                    UU
        and     $CAB5                           ; F98B 2D B5 CA                 -..
        lsr     a                               ; F98E 4A                       J
        lda     $5532                           ; F98F AD 32 55                 .2U
        eor     $A6,x                           ; F992 55 A6                    U.
        tax                                     ; F994 AA                       .
        .byte   $52                             ; F995 52                       R
        eor     $55,x                           ; F996 55 55                    UU
        lda     #$AA                            ; F998 A9 AA                    ..
        .byte   $B2                             ; F99A B2                       .
        .byte   $54                             ; F99B 54                       T
        eor     $55,x                           ; F99C 55 55                    UU
        and     $B5,x                           ; F99E 35 B5                    5.
        tax                                     ; F9A0 AA                       .
        ror     a                               ; F9A1 6A                       j
        lda     $56                             ; F9A2 A5 56                    .V
        eor     $6AA5,y                         ; F9A4 59 A5 6A                 Y.j
        tax                                     ; F9A7 AA                       .
        ldy     $52AA                           ; F9A8 AC AA 52                 ..R
        .byte   $AB                             ; F9AB AB                       .
        .byte   $D4                             ; F9AC D4                       .
        rol     a                               ; F9AD 2A                       *
        .byte   $AB                             ; F9AE AB                       .
        tax                                     ; F9AF AA                       .
        lsr     $A9,x                           ; F9B0 56 A9                    V.
        eor     $59,x                           ; F9B2 55 59                    UY
        eor     $55,x                           ; F9B4 55 55                    UU
        eor     $55,x                           ; F9B6 55 55                    UU
        lda     $5352                           ; F9B8 AD 52 53                 .RS
        .byte   $2B                             ; F9BB 2B                       +
        .byte   $2B                             ; F9BC 2B                       +
        adc     $52,x                           ; F9BD 75 52                    uR
        .byte   $6B                             ; F9BF 6B                       k
        dex                                     ; F9C0 CA                       .
        tax                                     ; F9C1 AA                       .
        .byte   $D4                             ; F9C2 D4                       .
        .byte   $52                             ; F9C3 52                       R
        .byte   $2B                             ; F9C4 2B                       +
        eor     $D3,x                           ; F9C5 55 D3                    U.
        .byte   $54                             ; F9C7 54                       T
        eor     $55,x                           ; F9C8 55 55                    UU
        cmp     $52,x                           ; F9CA D5 52                    .R
        eor     $D5,x                           ; F9CC 55 D5                    U.
        .byte   $64                             ; F9CE 64                       d
        eor     $55,x                           ; F9CF 55 55                    UU
        eor     $65,x                           ; F9D1 55 65                    Ue
        eor     $55,x                           ; F9D3 55 55                    UU
        eor     $56,x                           ; F9D5 55 56                    UV
        eor     $C8DC,y                         ; F9D7 59 DC C8                 Y..
        sta     $5A,x                           ; F9DA 95 5A                    .Z
        adc     $69                             ; F9DC 65 69                    ei
        eor     $5A,x                           ; F9DE 55 5A                    UZ
        eor     $55,x                           ; F9E0 55 55                    UU
        eor     $55,x                           ; F9E2 55 55                    UU
        eor     $55,x                           ; F9E4 55 55                    UU
        eor     $55,x                           ; F9E6 55 55                    UU
LF9E8:  eor     $B5,x                           ; F9E8 55 B5                    U.
        .byte   $54                             ; F9EA 54                       T
        eor     $55,x                           ; F9EB 55 55                    UU
        eor     $55,x                           ; F9ED 55 55                    UU
        eor     $55,x                           ; F9EF 55 55                    UU
        ora     $57,x                           ; F9F1 15 57                    .W
        .byte   $5A                             ; F9F3 5A                       Z
        cpx     $A5C8                           ; F9F4 EC C8 A5                 ...
        ror     $A5                             ; F9F7 66 A5                    f.
        adc     #$55                            ; F9F9 69 55                    iU
        .byte   $72                             ; F9FB 72                       r
        lda     $55                             ; F9FC A5 55                    .U
        eor     $65,x                           ; F9FE 55 65                    Ue
        eor     $59,x                           ; FA00 55 59                    UY
        eor     $95,x                           ; FA02 55 95                    U.
        eor     $35,x                           ; FA04 55 35                    U5
        sed                                     ; FA06 F8                       .
LFA07:  sta     ($35),y                         ; FA07 91 35                    .5
        eor     $79,x                           ; FA09 55 79                    Uy
        cli                                     ; FA0B 58                       X
        .byte   $53                             ; FA0C 53                       S
        adc     $35                             ; FA0D 65 35                    e5
        ldx     $07                             ; FA0F A6 07                    ..
        .byte   $1F                             ; FA11 1F                       .
        ror     $54,x                           ; FA12 76 54                    vT
        adc     $47                             ; FA14 65 47                    eG
        ror     $70,x                           ; FA16 76 70                    vp
        eor     $55,x                           ; FA18 55 55                    UU
        .byte   $33                             ; FA1A 33                       3
        adc     $87                             ; FA1B 65 87                    e.
        cmp     $E4,x                           ; FA1D D5 E4                    ..
        .byte   $64                             ; FA1F 64                       d
        .byte   $53                             ; FA20 53                       S
        and     $D5,x                           ; FA21 35 D5                    5.
        cmp     ($0F,x)                         ; FA23 C1 0F                    ..
        lsr     $27E0,x                         ; FA25 5E E0 27                 ^.'
        ldx     $53                             ; FA28 A6 53                    .S
        .byte   $5C                             ; FA2A 5C                       \
        ora     $7B,x                           ; FA2B 15 7B                    .{
        cmp     ($07,x)                         ; FA2D C1 07                    ..
        ldx     $D9B0,y                         ; FA2F BE B0 D9                 ...
        sta     ($1F,x)                         ; FA32 81 1F                    ..
        sei                                     ; FA34 78                       x
        ora     $593C,x                         ; FA35 1D 3C 59                 .<Y
        .byte   $93                             ; FA38 93                       .
        eor     $3E,x                           ; FA39 55 3E                    U>
        bne     LFA44                           ; FA3B D0 07                    ..
        .byte   $1F                             ; FA3D 1F                       .
        .byte   $3C                             ; FA3E 3C                       <
LFA3F:  .byte   $63                             ; FA3F 63                       c
        adc     $55                             ; FA40 65 55                    eU
        cmp     $54,x                           ; FA42 D5 54                    .T
LFA44:  .byte   $47                             ; FA44 47                       G
        .byte   $5C                             ; FA45 5C                       \
        ora     $563E                           ; FA46 0D 3E 56                 .>V
        .byte   $13                             ; FA49 13                       .
        .byte   $37                             ; FA4A 37                       7
        eor     $63,x                           ; FA4B 55 63                    Uc
        .byte   $13                             ; FA4D 13                       .
        .byte   $8F                             ; FA4E 8F                       .
        and     $8763,y                         ; FA4F 39 63 87                 9c.
        .byte   $53                             ; FA52 53                       S
        .byte   $07                             ; FA53 07                       .
        and     $D87C,x                         ; FA54 3D 7C D8                 =|.
        cli                                     ; FA57 58                       X
        .byte   $C3                             ; FA58 C3                       .
        cmp     $87                             ; FA59 C5 87                    ..
        eor     $13,x                           ; FA5B 55 13                    U.
        ror     $13E0,x                         ; FA5D 7E E0 13                 ~..
        .byte   $3F                             ; FA60 3F                       ?
        beq     LFA44                           ; FA61 F0 E1                    ..
        .byte   $03                             ; FA63 03                       .
        .byte   $3F                             ; FA64 3F                       ?
        beq     LF9E8                           ; FA65 F0 81                    ..
        .byte   $D7                             ; FA67 D7                       .
        cmp     ($0F,x)                         ; FA68 C1 0F                    ..
        sbc     ($0D),y                         ; FA6A F1 0D                    ..
        .byte   $3C                             ; FA6C 3C                       <
        sbc     $99C0,y                         ; FA6D F9 C0 99                 ...
        .byte   $17                             ; FA70 17                       .
        ldy     $8358,x                         ; FA71 BC 58 83                 .X.
        .byte   $1F                             ; FA74 1F                       .
        .byte   $7C                             ; FA75 7C                       |
        beq     LFA7B                           ; FA76 F0 03                    ..
        ror     $7878,x                         ; FA78 7E 78 78                 ~xx
LFA7B:  cld                                     ; FA7B D8                       .
        beq     LFA3F                           ; FA7C F0 C1                    ..
        .byte   $33                             ; FA7E 33                       3
        .byte   $E1                             ; FA7F E1                       .
LFA80:  .byte   $83                             ; FA80 83                       .
        .byte   $97                             ; FA81 97                       .
        .byte   $07                             ; FA82 07                       .
        .byte   $FC                             ; FA83 FC                       .
        cpx     #$4E                            ; FA84 E0 4E                    .N
        lsr     LF82E                           ; FA86 4E 2E F8                 N..
        cpx     #$07                            ; FA89 E0 07                    ..
        .byte   $3F                             ; FA8B 3F                       ?
        .byte   $F0                             ; FA8C F0                       .
LFA8D:  sec                                     ; FA8D 38                       8
        .byte   $23                             ; FA8E 23                       #
        rol     $3C36,x                         ; FA8F 3E 36 3C                 >6<
        sed                                     ; FA92 F8                       .
        .byte   $1C                             ; FA93 1C                       .
        .byte   $FA                             ; FA94 FA                       .
        cpy     #$F1                            ; FA95 C0 F1                    ..
        .byte   $62                             ; FA97 62                       b
        dec     $62B8                           ; FA98 CE B8 62                 ..b
        .byte   $C3                             ; FA9B C3                       .
        .byte   $0B                             ; FA9C 0B                       .
        ror     $1CF0,x                         ; FA9D 7E F0 1C                 ~..
        sbc     #$E2                            ; FAA0 E9 E2                    ..
        bvs     LFAAB                           ; FAA2 70 07                    p.
        lsr     $07C9,x                         ; FAA4 5E C9 07                 ^..
        .byte   $1F                             ; FAA7 1F                       .
        .byte   $7C                             ; FAA8 7C                       |
        bvs     LFB1C                           ; FAA9 70 71                    pq
LFAAB:  .byte   $87                             ; FAAB 87                       .
        .byte   $0F                             ; FAAC 0F                       .
        rol     $8CF0,x                         ; FAAD 3E F0 8C                 >..
        rol     $C1F0,x                         ; FAB0 3E F0 C1                 >..
        .byte   $63                             ; FAB3 63                       c
LFAB4:  .byte   $07                             ; FAB4 07                       .
        .byte   $4F                             ; FAB5 4F                       O
        dec     $54,x                           ; FAB6 D6 54                    .T
        eor     $0D,x                           ; FAB8 55 0D                    U.
        .byte   $1F                             ; FABA 1F                       .
        .byte   $3C                             ; FABB 3C                       <
        sed                                     ; FABC F8                       .
        beq     LFA80                           ; FABD F0 C1                    ..
        .byte   $87                             ; FABF 87                       .
        .byte   $07                             ; FAC0 07                       .
        .byte   $1F                             ; FAC1 1F                       .
        dec     $18,x                           ; FAC2 D6 18                    ..
        .byte   $D7                             ; FAC4 D7                       .
        .byte   $54                             ; FAC5 54                       T
LFAC6:  asl     $0FE1,x                         ; FAC6 1E E1 0F                 ...
        ora     $6F,x                           ; FAC9 15 6F                    .o
        beq     LFB2E                           ; FACB F0 61                    .a
        sbc     #$03                            ; FACD E9 03                    ..
        .byte   $CF                             ; FACF CF                       .
        clc                                     ; FAD0 18                       .
        .byte   $4F                             ; FAD1 4F                       O
        .byte   $F4                             ; FAD2 F4                       .
        cli                                     ; FAD3 58                       X
        eor     $4E,x                           ; FAD4 55 4E                    UN
        .byte   $D9                             ; FAD6 D9                       .
LFAD7:  tay                                     ; FAD7 A8                       .
        .byte   $53                             ; FAD8 53                       S
        ora     $E06F                           ; FAD9 0D 6F E0                 .o.
        .byte   $07                             ; FADC 07                       .
        ldx     $DE14,y                         ; FADD BE 14 DE                 ...
        sed                                     ; FAE0 F8                       .
        cpy     #$07                            ; FAE1 C0 07                    ..
        .byte   $4F                             ; FAE3 4F                       O
        .byte   $9C                             ; FAE4 9C                       .
        .byte   $07                             ; FAE5 07                       .
        .byte   $3E                             ; FAE6 3E                       >
        .byte   $1E                             ; FAE7 1E                       .
LFAE8:  sei                                     ; FAE8 78                       x
        .byte   $F2                             ; FAE9 F2                       .
        .byte   $43                             ; FAEA 43                       C
        .byte   $13                             ; FAEB 13                       .
        .byte   $4F                             ; FAEC 4F                       O
        asl     $7F,x                           ; FAED 16 7F                    ..
        cpx     #$03                            ; FAEF E0 03                    ..
        inc     $7888,x                         ; FAF1 FE 88 78                 ..x
        .byte   $07                             ; FAF4 07                       .
        rol     $4CF1,x                         ; FAF5 3E F1 4C                 >.L
        sed                                     ; FAF8 F8                       .
        cmp     ($83,x)                         ; FAF9 C1 83                    ..
        .byte   $1F                             ; FAFB 1F                       .
        sed                                     ; FAFC F8                       .
        iny                                     ; FAFD C8                       .
        .byte   $07                             ; FAFE 07                       .
        .byte   $8F                             ; FAFF 8F                       .
        lda     $1DC1,y                         ; FB00 B9 C1 1D                 ...
        beq     LFAE8                           ; FB03 F0 E3                    ..
        cmp     ($1F,x)                         ; FB05 C1 1F                    ..
        .byte   $3C                             ; FB07 3C                       <
        beq     LFA8D                           ; FB08 F0 83                    ..
        eor     $D876                           ; FB0A 4D 76 D8                 Mv.
        cpx     #$13                            ; FB0D E0 13                    ..
        .byte   $C7                             ; FB0F C7                       .
        and     $91F0,x                         ; FB10 3D F0 91                 =..
        .byte   $4B                             ; FB13 4B                       K
        .byte   $5C                             ; FB14 5C                       \
        .byte   $63                             ; FB15 63                       c
        rol     $33C8,x                         ; FB16 3E C8 33                 >.3
        cpx     LFE03                           ; FB19 EC 03 FE                 ...
LFB1C:  .byte   $80                             ; FB1C 80                       .
        .byte   $1F                             ; FB1D 1F                       .
        cmp     $8D                             ; FB1E C5 8D                    ..
        .byte   $C3                             ; FB20 C3                       .
        sta     $07E0,x                         ; FB21 9D E0 07                 ...
        .byte   $1F                             ; FB24 1F                       .
        asl     LF079,x                         ; FB25 1E 79 F0                 .y.
        .byte   $82                             ; FB28 82                       .
        .byte   $0F                             ; FB29 0F                       .
        ror     $0FD0,x                         ; FB2A 7E D0 0F                 ~..
        .byte   $4E                             ; FB2D 4E                       N
LFB2E:  .byte   $DC                             ; FB2E DC                       .
        sta     ($3F,x)                         ; FB2F 81 3F                    .?
        beq     LFAB4                           ; FB31 F0 81                    ..
        .byte   $1F                             ; FB33 1F                       .
        ldy     $07E0,x                         ; FB34 BC E0 07                 ...
        .byte   $1F                             ; FB37 1F                       .
        sed                                     ; FB38 F8                       .
        cmp     ($93,x)                         ; FB39 C1 93                    ..
        sta     $61D5                           ; FB3B 8D D5 61                 ..a
        asl     $21F8,x                         ; FB3E 1E F8 21                 ..!
        .byte   $B7                             ; FB41 B7                       .
        cpy     $39                             ; FB42 C4 39                    .9
        cmp     $87                             ; FB44 C5 87                    ..
        .byte   $3A                             ; FB46 3A                       :
        .byte   $07                             ; FB47 07                       .
        ror     $4770,x                         ; FB48 7E 70 47                 ~pG
        cmp     $A538                           ; FB4B CD 38 A5                 .8.
        .byte   $63                             ; FB4E 63                       c
        eor     $81F2                           ; FB4F 4D F2 81                 M..
        .byte   $4F                             ; FB52 4F                       O
        .byte   $7C                             ; FB53 7C                       |
        beq     LFAD7                           ; FB54 F0 81                    ..
        .byte   $1F                             ; FB56 1F                       .
        .byte   $7C                             ; FB57 7C                       |
        tya                                     ; FB58 98                       .
        .byte   $07                             ; FB59 07                       .
        rol     $83F8,x                         ; FB5A 3E F8 83                 >..
        ora     $E0F8,x                         ; FB5D 1D F8 E0                 ...
        .byte   $0B                             ; FB60 0B                       .
        .byte   $77                             ; FB61 77                       w
        cli                                     ; FB62 58                       X
        sbc     $34                             ; FB63 E5 34                    .4
        lsr     $35,x                           ; FB65 56 35                    V5
        dec     $58,x                           ; FB67 D6 58                    .X
        ora     $1F,x                           ; FB69 15 1F                    ..
        sed                                     ; FB6B F8                       .
        lda     ($1E,x)                         ; FB6C A1 1E                    ..
        .byte   $DC                             ; FB6E DC                       .
        cpy     $8B                             ; FB6F C4 8B                    ..
        eor     $55,x                           ; FB71 55 55                    UU
        eor     $55,x                           ; FB73 55 55                    UU
        cmp     $58,x                           ; FB75 D5 58                    .X
        eor     $55,x                           ; FB77 55 55                    UU
        eor     $92E5,y                         ; FB79 59 E5 92                 Y..
        and     $C4BA                           ; FB7C 2D BA C4                 -..
LFB7F:  .byte   $47                             ; FB7F 47                       G
        lsr     $64D9                           ; FB80 4E D9 64                 N.d
        eor     $55,x                           ; FB83 55 55                    UU
        .byte   $53                             ; FB85 53                       S
        lsr     $5555                           ; FB86 4E 55 55                 NUU
        eor     $55,x                           ; FB89 55 55                    UU
        eor     $55,x                           ; FB8B 55 55                    UU
        eor     $35,x                           ; FB8D 55 35                    U5
        eor     $55,x                           ; FB8F 55 55                    UU
        eor     $D5,x                           ; FB91 55 D5                    U.
        .byte   $54                             ; FB93 54                       T
        eor     $65,x                           ; FB94 55 65                    Ue
        sta     $5555                           ; FB96 8D 55 55                 .UU
        eor     $36,x                           ; FB99 55 36                    U6
        eor     $55,x                           ; FB9B 55 55                    UU
        eor     $55,x                           ; FB9D 55 55                    UU
        eor     $56,x                           ; FB9F 55 56                    UV
        eor     $55,x                           ; FBA1 55 55                    UU
        eor     $55,x                           ; FBA3 55 55                    UU
        eor     $55,x                           ; FBA5 55 55                    UU
        eor     $55,x                           ; FBA7 55 55                    UU
        eor     $55,x                           ; FBA9 55 55                    UU
        eor     $55,x                           ; FBAB 55 55                    UU
        eor     $55,x                           ; FBAD 55 55                    UU
        eor     $55,x                           ; FBAF 55 55                    UU
        eor     $55,x                           ; FBB1 55 55                    UU
        eor     $55,x                           ; FBB3 55 55                    UU
        eor     $55,x                           ; FBB5 55 55                    UU
        eor     $55,x                           ; FBB7 55 55                    UU
        eor     $55,x                           ; FBB9 55 55                    UU
        eor     $55,x                           ; FBBB 55 55                    UU
        eor     $55,x                           ; FBBD 55 55                    UU
        eor     $55,x                           ; FBBF 55 55                    UU
        eor     $55,x                           ; FBC1 55 55                    UU
        eor     $55,x                           ; FBC3 55 55                    UU
        eor     $55,x                           ; FBC5 55 55                    UU
        eor     $55,x                           ; FBC7 55 55                    UU
        eor     $55,x                           ; FBC9 55 55                    UU
        eor     $55,x                           ; FBCB 55 55                    UU
        eor     $55,x                           ; FBCD 55 55                    UU
        eor     $55,x                           ; FBCF 55 55                    UU
        eor     $55,x                           ; FBD1 55 55                    UU
        eor     $55,x                           ; FBD3 55 55                    UU
        eor     $55,x                           ; FBD5 55 55                    UU
        eor     $55,x                           ; FBD7 55 55                    UU
        eor     $55,x                           ; FBD9 55 55                    UU
        eor     $55,x                           ; FBDB 55 55                    UU
        eor     $55,x                           ; FBDD 55 55                    UU
        eor     $55,x                           ; FBDF 55 55                    UU
        eor     $55,x                           ; FBE1 55 55                    UU
        eor     $55,x                           ; FBE3 55 55                    UU
        eor     $55,x                           ; FBE5 55 55                    UU
        eor     $55,x                           ; FBE7 55 55                    UU
        eor     $55,x                           ; FBE9 55 55                    UU
        eor     $55,x                           ; FBEB 55 55                    UU
        eor     $55,x                           ; FBED 55 55                    UU
        eor     $55,x                           ; FBEF 55 55                    UU
        eor     $55,x                           ; FBF1 55 55                    UU
        eor     $55,x                           ; FBF3 55 55                    UU
        eor     $55,x                           ; FBF5 55 55                    UU
        eor     $55,x                           ; FBF7 55 55                    UU
        eor     $55,x                           ; FBF9 55 55                    UU
        eor     $55,x                           ; FBFB 55 55                    UU
        eor     $55,x                           ; FBFD 55 55                    UU
        eor     $55,x                           ; FBFF 55 55                    UU
        eor     $55,x                           ; FC01 55 55                    UU
        eor     $55,x                           ; FC03 55 55                    UU
        eor     $55,x                           ; FC05 55 55                    UU
        eor     $55,x                           ; FC07 55 55                    UU
        eor     $55,x                           ; FC09 55 55                    UU
        eor     $55,x                           ; FC0B 55 55                    UU
        eor     $55,x                           ; FC0D 55 55                    UU
        eor     $55,x                           ; FC0F 55 55                    UU
        eor     $55,x                           ; FC11 55 55                    UU
        eor     $55,x                           ; FC13 55 55                    UU
        eor     $55,x                           ; FC15 55 55                    UU
        eor     $55,x                           ; FC17 55 55                    UU
        eor     $55,x                           ; FC19 55 55                    UU
        eor     $55,x                           ; FC1B 55 55                    UU
        eor     $55,x                           ; FC1D 55 55                    UU
        eor     $55,x                           ; FC1F 55 55                    UU
        eor     $55,x                           ; FC21 55 55                    UU
        eor     $55,x                           ; FC23 55 55                    UU
        eor     $55,x                           ; FC25 55 55                    UU
        eor     $55,x                           ; FC27 55 55                    UU
        eor     $55,x                           ; FC29 55 55                    UU
        eor     $55,x                           ; FC2B 55 55                    UU
        eor     $55,x                           ; FC2D 55 55                    UU
        eor     $55,x                           ; FC2F 55 55                    UU
        eor     $55,x                           ; FC31 55 55                    UU
        eor     $55,x                           ; FC33 55 55                    UU
        eor     $55,x                           ; FC35 55 55                    UU
        eor     $55,x                           ; FC37 55 55                    UU
        eor     $55,x                           ; FC39 55 55                    UU
        eor     $55,x                           ; FC3B 55 55                    UU
        eor     $55,x                           ; FC3D 55 55                    UU
        eor     $55,x                           ; FC3F 55 55                    UU
        eor     $55,x                           ; FC41 55 55                    UU
        eor     $55,x                           ; FC43 55 55                    UU
        eor     $55,x                           ; FC45 55 55                    UU
        eor     $55,x                           ; FC47 55 55                    UU
        eor     $55,x                           ; FC49 55 55                    UU
        eor     $55,x                           ; FC4B 55 55                    UU
        eor     $55,x                           ; FC4D 55 55                    UU
        eor     $55,x                           ; FC4F 55 55                    UU
        eor     $55,x                           ; FC51 55 55                    UU
        eor     $55,x                           ; FC53 55 55                    UU
        eor     $55,x                           ; FC55 55 55                    UU
        eor     $55,x                           ; FC57 55 55                    UU
        eor     $55,x                           ; FC59 55 55                    UU
        eor     $55,x                           ; FC5B 55 55                    UU
        eor     $55,x                           ; FC5D 55 55                    UU
        eor     $55,x                           ; FC5F 55 55                    UU
        eor     $55,x                           ; FC61 55 55                    UU
        eor     $55,x                           ; FC63 55 55                    UU
        eor     $55,x                           ; FC65 55 55                    UU
        eor     $55,x                           ; FC67 55 55                    UU
        eor     $55,x                           ; FC69 55 55                    UU
        eor     $55,x                           ; FC6B 55 55                    UU
        eor     $55,x                           ; FC6D 55 55                    UU
        eor     $55,x                           ; FC6F 55 55                    UU
        eor     $55,x                           ; FC71 55 55                    UU
        eor     $55,x                           ; FC73 55 55                    UU
        eor     $55,x                           ; FC75 55 55                    UU
        eor     $55,x                           ; FC77 55 55                    UU
        eor     $55,x                           ; FC79 55 55                    UU
        eor     $55,x                           ; FC7B 55 55                    UU
        .byte   $55                             ; FC7D 55                       U
LFC7E:  eor     $55,x                           ; FC7E 55 55                    UU
        eor     $55,x                           ; FC80 55 55                    UU
        eor     $5D,x                           ; FC82 55 5D                    U]
;        beq     $FC18                           ; FC84 F0 92                    ..
.byte $F0, $92 ; mod range error fix
        lsr     $555A                           ; FC86 4E 5A 55                 NZU
        eor     $55,x                           ; FC89 55 55                    UU
        eor     $55,x                           ; FC8B 55 55                    UU
        eor     $55,x                           ; FC8D 55 55                    UU
        eor     $55,x                           ; FC8F 55 55                    UU
        eor     $55,x                           ; FC91 55 55                    UU
        eor     $55,x                           ; FC93 55 55                    UU
        eor     $55,x                           ; FC95 55 55                    UU
        eor     $55,x                           ; FC97 55 55                    UU
        eor     $55,x                           ; FC99 55 55                    UU
        eor     $55,x                           ; FC9B 55 55                    UU
        eor     $55,x                           ; FC9D 55 55                    UU
        eor     $55,x                           ; FC9F 55 55                    UU
        eor     $55,x                           ; FCA1 55 55                    UU
        eor     $55,x                           ; FCA3 55 55                    UU
        rol     $55,x                           ; FCA5 36 55                    6U
        eor     $4D,x                           ; FCA7 55 4D                    UM
        eor     $55,x                           ; FCA9 55 55                    UU
        eor     $55,x                           ; FCAB 55 55                    UU
        and     $55,x                           ; FCAD 35 55                    5U
        adc     $95                             ; FCAF 65 95                    e.
        lsr     $55,x                           ; FCB1 56 55                    VU
        eor     $55,x                           ; FCB3 55 55                    UU
        .byte   $53                             ; FCB5 53                       S
        eor     $5555                           ; FCB6 4D 55 55                 MUU
        adc     #$55                            ; FCB9 69 55                    iU
        cmp     $5564,y                         ; FCBB D9 64 55                 .dU
        lsr     $55,x                           ; FCBE 56 55                    VU
        adc     $55                             ; FCC0 65 55                    eU
        eor     $65,x                           ; FCC2 55 65                    Ue
        eor     $55,x                           ; FCC4 55 55                    UU
        eor     $55,x                           ; FCC6 55 55                    UU
        eor     $D5,x                           ; FCC8 55 D5                    U.
        cpy     $8B                             ; FCCA C4 8B                    ..
        rol     $D478,x                         ; FCCC 3E 78 D4                 >x.
        cpy     $55                             ; FCCF C4 55                    .U
        .byte   $5A                             ; FCD1 5A                       Z
        .byte   $74                             ; FCD2 74                       t
        eor     $A5,x                           ; FCD3 55 A5                    U.
        .byte   $4B                             ; FCD5 4B                       K
        eor     $55,x                           ; FCD6 55 55                    UU
        eor     $55,x                           ; FCD8 55 55                    UU
        eor     $55,x                           ; FCDA 55 55                    UU
        .byte   $5A                             ; FCDC 5A                       Z
        adc     $55                             ; FCDD 65 55                    eU
        eor     $55,x                           ; FCDF 55 55                    UU
        eor     $93,x                           ; FCE1 55 93                    U.
        eor     $56,x                           ; FCE3 55 56                    UV
        and     $DC,x                           ; FCE5 35 DC                    5.
        cpx     $83                             ; FCE7 E4 83                    ..
        .byte   $0F                             ; FCE9 0F                       .
        and     $6C,x                           ; FCEA 35 6C                    5l
        lda     $25                             ; FCEC A5 25                    .%
        eor     $DA55,x                         ; FCEE 5D 55 DA                 ]U.
        .byte   $52                             ; FCF1 52                       R
        eor     $55,x                           ; FCF2 55 55                    UU
        sta     $56,x                           ; FCF4 95 56                    .V
        eor     $A9,x                           ; FCF6 55 A9                    U.
        eor     $55,x                           ; FCF8 55 55                    UU
        eor     $55,x                           ; FCFA 55 55                    UU
        eor     $35,x                           ; FCFC 55 35                    U5
        eor     $55,x                           ; FCFE 55 55                    UU
        eor     $55,x                           ; FD00 55 55                    UU
        eor     $55,x                           ; FD02 55 55                    UU
        eor     $4B,x                           ; FD04 55 4B                    UK
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
        eor     $55,x                           ; FDB4 55 55                    UU
        eor     $55,x                           ; FDB6 55 55                    UU
        eor     $55,x                           ; FDB8 55 55                    UU
        eor     $55,x                           ; FDBA 55 55                    UU
        eor     $55,x                           ; FDBC 55 55                    UU
        eor     $55,x                           ; FDBE 55 55                    UU
        eor     $55,x                           ; FDC0 55 55                    UU
        eor     $55,x                           ; FDC2 55 55                    UU
        eor     $55,x                           ; FDC4 55 55                    UU
        eor     $55,x                           ; FDC6 55 55                    UU
        eor     $55,x                           ; FDC8 55 55                    UU
        eor     $55,x                           ; FDCA 55 55                    UU
        eor     $55,x                           ; FDCC 55 55                    UU
        eor     $55,x                           ; FDCE 55 55                    UU
        eor     $55,x                           ; FDD0 55 55                    UU
        eor     $55,x                           ; FDD2 55 55                    UU
        eor     $55,x                           ; FDD4 55 55                    UU
        eor     $55,x                           ; FDD6 55 55                    UU
        eor     $55,x                           ; FDD8 55 55                    UU
        eor     $55,x                           ; FDDA 55 55                    UU
        eor     $55,x                           ; FDDC 55 55                    UU
        eor     $55,x                           ; FDDE 55 55                    UU
        eor     $55,x                           ; FDE0 55 55                    UU
        eor     $55,x                           ; FDE2 55 55                    UU
        eor     $55,x                           ; FDE4 55 55                    UU
        eor     $55,x                           ; FDE6 55 55                    UU
        eor     $55,x                           ; FDE8 55 55                    UU
        eor     $55,x                           ; FDEA 55 55                    UU
        eor     $55,x                           ; FDEC 55 55                    UU
        eor     $55,x                           ; FDEE 55 55                    UU
        eor     $55,x                           ; FDF0 55 55                    UU
        eor     $55,x                           ; FDF2 55 55                    UU
        eor     $55,x                           ; FDF4 55 55                    UU
        eor     $55,x                           ; FDF6 55 55                    UU
        eor     $55,x                           ; FDF8 55 55                    UU
        eor     $55,x                           ; FDFA 55 55                    UU
        eor     $55,x                           ; FDFC 55 55                    UU
        .byte   $55                             ; FDFE 55                       U
LFDFF:  .byte   $55                             ; FDFF 55                       U
LFE00:  eor     $55,x                           ; FE00 55 55                    UU
        .byte   $55                             ; FE02 55                       U
LFE03:  eor     $55,x                           ; FE03 55 55                    UU
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
        .byte   $55                             ; FE25 55                       U
LFE26:  .byte   $55                             ; FE26 55                       U
LFE27:  eor     $55,x                           ; FE27 55 55                    UU
        eor     $55,x                           ; FE29 55 55                    UU
        eor     $55,x                           ; FE2B 55 55                    UU
LFE2D:  eor     $55,x                           ; FE2D 55 55                    UU
        eor     $55,x                           ; FE2F 55 55                    UU
        eor     $55,x                           ; FE31 55 55                    UU
        adc     LFC7E,x                         ; FE33 7D 7E FC                 }~.
        .byte   $E7                             ; FE36 E7                       .
        sed                                     ; FE37 F8                       .
        .byte   $64                             ; FE38 64                       d
        .byte   $93                             ; FE39 93                       .
        and     $EE7E,y                         ; FE3A 39 7E EE                 9~.
        bmi     LFE2D                           ; FE3D 30 EE                    0.
        .byte   $4F                             ; FE3F 4F                       O
        .byte   $0C                             ; FE40 0C                       .
        rts                                     ; FE41 60                       `

; ----------------------------------------------------------------------------
        .byte   $3C                             ; FE42 3C                       <
        .byte   $03                             ; FE43 03                       .
        beq     LFE26                           ; FE44 F0 E0                    ..
        .byte   $CF                             ; FE46 CF                       .
        .byte   $37                             ; FE47 37                       7
        beq     LFE5D                           ; FE48 F0 13                    ..
        sei                                     ; FE4A 78                       x
        .byte   $1F                             ; FE4B 1F                       .
        bmi     LFEC5                           ; FE4C 30 77                    0w
        .byte   $80                             ; FE4E 80                       .
        .byte   $F3                             ; FE4F F3                       .
        .byte   $FF                             ; FE50 FF                       .
        sta     ($3B,x)                         ; FE51 81 3B                    .;
        .byte   $73                             ; FE53 73                       s
        .byte   $04                             ; FE54 04                       .
        .byte   $3A                             ; FE55 3A                       :
        beq     LFE27                           ; FE56 F0 CF                    ..
        .byte   $2F                             ; FE58 2F                       /
        cpx     #$55                            ; FE59 E0 55                    .U
        eor     $55,x                           ; FE5B 55 55                    UU
LFE5D:  eor     $55,x                           ; FE5D 55 55                    UU
        eor     $55,x                           ; FE5F 55 55                    UU
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
LFEC5:  brk                                     ; FEC5 00                       .
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
LFFC5:  brk                                     ; FFC5 00                       .
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
