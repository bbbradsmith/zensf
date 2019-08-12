.include "../mod.inc"
.segment "MF000"

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-23 02:19:31
; Input file: out_src\0C_08.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L1CFC           := $1CFC
L7EF8           := $7EF8
LBFC0           := $BFC0
; ----------------------------------------------------------------------------
LF000:  .byte   $FF                             ; F000 FF                       .
        ora     ($80,x)                         ; F001 01 80                    ..
LF003:  .byte   $6D                             ; F003 6D                       m
        .byte   $AB                             ; F004 AB                       .
LF005:  .byte   $6D                             ; F005 6D                       m
        .byte   $DF                             ; F006 DF                       .
LF007:  .byte   $BB                             ; F007 BB                       .
        .byte   $77                             ; F008 77                       w
        .byte   $7B                             ; F009 7B                       {
        .byte   $AB                             ; F00A AB                       .
        .byte   $AF                             ; F00B AF                       .
        .byte   $DD                             ; F00C DD                       .
LF00D:  cmp     $7D,x                           ; F00D D5 7D                    .}
        cmp     LFFBF,x                         ; F00F DD BF FF                 ...
        .byte   $EF                             ; F012 EF                       .
        .byte   $B6                             ; F013 B6                       .
LF014:  adc     $BB6F                           ; F014 6D 6F BB                 mo.
        adc     $2AAF                           ; F017 6D AF 2A                 m.*
        sta     $94,x                           ; F01A 95 94                    ..
        bit     $49                             ; F01C 24 49                    $I
        .byte   $92                             ; F01E 92                       .
        dey                                     ; F01F 88                       .
        .byte   $42                             ; F020 42                       B
        sty     $48                             ; F021 84 48                    .H
        dey                                     ; F023 88                       .
        .byte   $04                             ; F024 04                       .
        ora     #$49                            ; F025 09 49                    .I
        .byte   $92                             ; F027 92                       .
        bit     $51                             ; F028 24 51                    $Q
        .byte   $22                             ; F02A 22                       "
        lda     $92                             ; F02B A5 92                    ..
        .byte   $22                             ; F02D 22                       "
        eor     #$AA                            ; F02E 49 AA                    I.
        .byte   $52                             ; F030 52                       R
        lda     #$AA                            ; F031 A9 AA                    ..
        .byte   $5A                             ; F033 5A                       Z
        eor     $AD,x                           ; F034 55 AD                    U.
        eor     $55,x                           ; F036 55 55                    UU
        lda     $B56D                           ; F038 AD 6D B5                 .m.
        lda     $B56D                           ; F03B AD 6D B5                 .m.
        adc     a:$DB                           ; F03E 6D DB 00                 m..
        brk                                     ; F041 00                       .
        brk                                     ; F042 00                       .
        brk                                     ; F043 00                       .
        brk                                     ; F044 00                       .
        brk                                     ; F045 00                       .
        brk                                     ; F046 00                       .
        brk                                     ; F047 00                       .
        brk                                     ; F048 00                       .
        brk                                     ; F049 00                       .
        brk                                     ; F04A 00                       .
        brk                                     ; F04B 00                       .
        brk                                     ; F04C 00                       .
        brk                                     ; F04D 00                       .
        brk                                     ; F04E 00                       .
        brk                                     ; F04F 00                       .
        brk                                     ; F050 00                       .
        brk                                     ; F051 00                       .
        brk                                     ; F052 00                       .
        brk                                     ; F053 00                       .
LF054:  brk                                     ; F054 00                       .
        brk                                     ; F055 00                       .
        brk                                     ; F056 00                       .
        brk                                     ; F057 00                       .
        brk                                     ; F058 00                       .
        brk                                     ; F059 00                       .
        brk                                     ; F05A 00                       .
        brk                                     ; F05B 00                       .
        brk                                     ; F05C 00                       .
        brk                                     ; F05D 00                       .
        brk                                     ; F05E 00                       .
        brk                                     ; F05F 00                       .
LF060:  brk                                     ; F060 00                       .
        brk                                     ; F061 00                       .
        brk                                     ; F062 00                       .
        brk                                     ; F063 00                       .
        brk                                     ; F064 00                       .
        brk                                     ; F065 00                       .
        brk                                     ; F066 00                       .
        brk                                     ; F067 00                       .
        brk                                     ; F068 00                       .
        brk                                     ; F069 00                       .
        brk                                     ; F06A 00                       .
        brk                                     ; F06B 00                       .
        brk                                     ; F06C 00                       .
        brk                                     ; F06D 00                       .
        brk                                     ; F06E 00                       .
        brk                                     ; F06F 00                       .
        brk                                     ; F070 00                       .
        brk                                     ; F071 00                       .
        brk                                     ; F072 00                       .
        brk                                     ; F073 00                       .
        brk                                     ; F074 00                       .
        brk                                     ; F075 00                       .
        brk                                     ; F076 00                       .
        brk                                     ; F077 00                       .
        brk                                     ; F078 00                       .
        brk                                     ; F079 00                       .
        brk                                     ; F07A 00                       .
        brk                                     ; F07B 00                       .
        brk                                     ; F07C 00                       .
        brk                                     ; F07D 00                       .
        brk                                     ; F07E 00                       .
        brk                                     ; F07F 00                       .
        eor     $D5,x                           ; F080 55 D5                    U.
        inc     LF800,x                         ; F082 FE 00 F8                 ...
        .byte   $7F                             ; F085 7F                       .
        brk                                     ; F086 00                       .
        inc     $3F,x                           ; F087 F6 3F                    .?
        brk                                     ; F089 00                       .
        sbc     $400F,x                         ; F08A FD 0F 40                 ..@
        inc     $8007,x                         ; F08D FE 07 80                 ...
        .byte   $FF                             ; F090 FF                       .
        .byte   $03                             ; F091 03                       .
        cpx     #$FF                            ; F092 E0 FF                    ..
        brk                                     ; F094 00                       .
        sed                                     ; F095 F8                       .
        .byte   $7F                             ; F096 7F                       .
        brk                                     ; F097 00                       .
        sed                                     ; F098 F8                       .
        .byte   $1F                             ; F099 1F                       .
        brk                                     ; F09A 00                       .
        sed                                     ; F09B F8                       .
        .byte   $BF                             ; F09C BF                       .
        .byte   $03                             ; F09D 03                       .
        cpx     #$7F                            ; F09E E0 7F                    ..
        asl     $C0                             ; F0A0 06 C0                    ..
        .byte   $FF                             ; F0A2 FF                       .
        ora     ($80),y                         ; F0A3 11 80                    ..
        .byte   $FF                             ; F0A5 FF                       .
        .byte   $3B                             ; F0A6 3B                       ;
        brk                                     ; F0A7 00                       .
        sed                                     ; F0A8 F8                       .
        .byte   $3F                             ; F0A9 3F                       ?
        .byte   $03                             ; F0AA 03                       .
        cpx     #$FF                            ; F0AB E0 FF                    ..
        .byte   $03                             ; F0AD 03                       .
        brk                                     ; F0AE 00                       .
        .byte   $FF                             ; F0AF FF                       .
        .byte   $0F                             ; F0B0 0F                       .
        brk                                     ; F0B1 00                       .
        inc     a:$3F,x                         ; F0B2 FE 3F 00                 .?.
        sed                                     ; F0B5 F8                       .
        .byte   $9F                             ; F0B6 9F                       .
        asl     $9C                             ; F0B7 06 9C                    ..
        .byte   $DF                             ; F0B9 DF                       .
        sbc     ($18,x)                         ; F0BA E1 18                    ..
        inc     $0C39,x                         ; F0BC FE 39 0C                 .9.
        cpx     #$FF                            ; F0BF E0 FF                    ..
        cmp     ($00,x)                         ; F0C1 C1 00                    ..
        .byte   $FC                             ; F0C3 FC                       .
        .byte   $3F                             ; F0C4 3F                       ?
        brk                                     ; F0C5 00                       .
        beq     LF147                           ; F0C6 F0 7F                    ..
        .byte   $0F                             ; F0C8 0F                       .
        brk                                     ; F0C9 00                       .
        inc     a:$3F,x                         ; F0CA FE 3F 00                 .?.
        sed                                     ; F0CD F8                       .
        .byte   $FF                             ; F0CE FF                       .
        .byte   $07                             ; F0CF 07                       .
        .byte   $80                             ; F0D0 80                       .
        .byte   $FF                             ; F0D1 FF                       .
        .byte   $63                             ; F0D2 63                       c
        brk                                     ; F0D3 00                       .
        inc     $0C39,x                         ; F0D4 FE 39 0C                 .9.
        sbc     ($39),y                         ; F0D7 F1 39                    .9
        .byte   $83                             ; F0D9 83                       .
        and     ($DF,x)                         ; F0DA 21 DF                    !.
LF0DC:  .byte   $1F                             ; F0DC 1F                       .
        .byte   $04                             ; F0DD 04                       .
        cmp     ($FF,x)                         ; F0DE C1 FF                    ..
        rol     LFE00                           ; F0E0 2E 00 FE                 ...
        .byte   $77                             ; F0E3 77                       w
        brk                                     ; F0E4 00                       .
        .byte   $F0                             ; F0E5 F0                       .
LF0E6:  .byte   $FF                             ; F0E6 FF                       .
        ora     ($80,x)                         ; F0E7 01 80                    ..
LF0E9:  .byte   $FF                             ; F0E9 FF                       .
        .byte   $C3                             ; F0EA C3                       .
        bpl     LF0E9                           ; F0EB 10 FC                    ..
        .byte   $3F                             ; F0ED 3F                       ?
        .byte   $0C                             ; F0EE 0C                       .
        sbc     ($FF,x)                         ; F0EF E1 FF                    ..
        eor     ($00,x)                         ; F0F1 41 00                    A.
        .byte   $EF                             ; F0F3 EF                       .
        .byte   $67                             ; F0F4 67                       g
        .byte   $80                             ; F0F5 80                       .
        beq     LF137                           ; F0F6 F0 3F                    .?
LF0F8:  .byte   $03                             ; F0F8 03                       .
        .byte   $84                             ; F0F9 84                       .
LF0FA:  .byte   $FF                             ; F0FA FF                       .
        .byte   $0B                             ; F0FB 0B                       .
        bmi     LF0FA                           ; F0FC 30 FC                    0.
        .byte   $67                             ; F0FE 67                       g
        .byte   $C2                             ; F0FF C2                       .
        ora     ($FF,x)                         ; F100 01 FF                    ..
        .byte   $03                             ; F102 03                       .
        stx     $FC                             ; F103 86 FC                    ..
        .byte   $0F                             ; F105 0F                       .
        bmi     LF0F8                           ; F106 30 F0                    0.
        .byte   $FF                             ; F108 FF                       .
        jsr     LBFC0                           ; F109 20 C0 BF                  ..
        .byte   $87                             ; F10C 87                       .
        ora     #$FE                            ; F10D 09 FE                    ..
        .byte   $0F                             ; F10F 0F                       .
        .byte   $02                             ; F110 02                       .
        .byte   $FC                             ; F111 FC                       .
        .byte   $3F                             ; F112 3F                       ?
        brk                                     ; F113 00                       .
        .byte   $F0                             ; F114 F0                       .
LF115:  .byte   $FF                             ; F115 FF                       .
        brk                                     ; F116 00                       .
        cpx     #$FF                            ; F117 E0 FF                    ..
        cmp     ($C0,x)                         ; F119 C1 C0                    ..
        .byte   $DF                             ; F11B DF                       .
        .byte   $43                             ; F11C 43                       C
        .byte   $80                             ; F11D 80                       .
        .byte   $7F                             ; F11E 7F                       .
        .byte   $07                             ; F11F 07                       .
        ora     ($FF,x)                         ; F120 01 FF                    ..
        asl     LFE06                           ; F122 0E 06 FE                 ...
        .byte   $0F                             ; F125 0F                       .
        .byte   $03                             ; F126 03                       .
        .byte   $FC                             ; F127 FC                       .
        .byte   $0F                             ; F128 0F                       .
        ora     ($FC,x)                         ; F129 01 FC                    ..
        .byte   $1F                             ; F12B 1F                       .
        .byte   $03                             ; F12C 03                       .
        sed                                     ; F12D F8                       .
        .byte   $57                             ; F12E 57                       W
        ora     $DFF0                           ; F12F 0D F0 DF                 ...
        .byte   $0C                             ; F132 0C                       .
        cpx     #$0F                            ; F133 E0 0F                    ..
        .byte   $0F                             ; F135 0F                       .
        .byte   $C6                             ; F136 C6                       .
LF137:  .byte   $87                             ; F137 87                       .
        .byte   $3F                             ; F138 3F                       ?
        .byte   $80                             ; F139 80                       .
        cmp     $607F,y                         ; F13A D9 7F 60                 ..`
        .byte   $F2                             ; F13D F2                       .
        .byte   $17                             ; F13E 17                       .
        beq     LF0DC                           ; F13F F0 9B                    ..
        brk                                     ; F141 00                       .
        .byte   $9F                             ; F142 9F                       .
        .byte   $07                             ; F143 07                       .
        .byte   $13                             ; F144 13                       .
        .byte   $9F                             ; F145 9F                       .
        .byte   $CB                             ; F146 CB                       .
LF147:  .byte   $04                             ; F147 04                       .
        ror     $E076,x                         ; F148 7E 76 E0                 ~v.
        .byte   $9F                             ; F14B 9F                       .
        clc                                     ; F14C 18                       .
        sed                                     ; F14D F8                       .
        .byte   $07                             ; F14E 07                       .
        .byte   $5A                             ; F14F 5A                       Z
        cmp     $EE84                           ; F150 CD 84 EE                 ...
        .byte   $03                             ; F153 03                       .
        .byte   $B2                             ; F154 B2                       .
        inc     $E850,x                         ; F155 FE 50 E8                 .P.
        and     $6962,x                         ; F158 3D 62 69                 =bi
        sta     $52D4,x                         ; F15B 9D D4 52                 ..R
        eor     $0B55                           ; F15E 4D 55 0B                 MU.
        eor     $0B55,x                         ; F161 5D 55 0B                 ]U.
        lsr     $5555,x                         ; F164 5E 55 55                 ^UU
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
        .byte   $55                             ; F1F7 55                       U
LF1F8:  eor     $55,x                           ; F1F8 55 55                    UU
        eor     $55,x                           ; F1FA 55 55                    UU
        eor     $55,x                           ; F1FC 55 55                    UU
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
        eor     $55,x                           ; F214 55 55                    UU
        eor     $55,x                           ; F216 55 55                    UU
        eor     $55,x                           ; F218 55 55                    UU
        eor     $55,x                           ; F21A 55 55                    UU
        eor     $55,x                           ; F21C 55 55                    UU
        eor     $55,x                           ; F21E 55 55                    UU
        eor     $55,x                           ; F220 55 55                    UU
        eor     $55,x                           ; F222 55 55                    UU
        eor     $55,x                           ; F224 55 55                    UU
        eor     $55,x                           ; F226 55 55                    UU
        eor     $55,x                           ; F228 55 55                    UU
        eor     $55,x                           ; F22A 55 55                    UU
        eor     $55,x                           ; F22C 55 55                    UU
        eor     $55,x                           ; F22E 55 55                    UU
        eor     $55,x                           ; F230 55 55                    UU
        eor     $55,x                           ; F232 55 55                    UU
        eor     $55,x                           ; F234 55 55                    UU
        eor     $55,x                           ; F236 55 55                    UU
        eor     $55,x                           ; F238 55 55                    UU
        eor     $55,x                           ; F23A 55 55                    UU
        eor     $55,x                           ; F23C 55 55                    UU
        eor     $55,x                           ; F23E 55 55                    UU
        eor     $55,x                           ; F240 55 55                    UU
        eor     $55,x                           ; F242 55 55                    UU
        eor     $55,x                           ; F244 55 55                    UU
        eor     $55,x                           ; F246 55 55                    UU
        eor     $55,x                           ; F248 55 55                    UU
        eor     $55,x                           ; F24A 55 55                    UU
        eor     $55,x                           ; F24C 55 55                    UU
        eor     $55,x                           ; F24E 55 55                    UU
        eor     $55,x                           ; F250 55 55                    UU
        eor     $55,x                           ; F252 55 55                    UU
        eor     $55,x                           ; F254 55 55                    UU
        eor     $55,x                           ; F256 55 55                    UU
        eor     $55,x                           ; F258 55 55                    UU
        eor     $55,x                           ; F25A 55 55                    UU
        eor     $55,x                           ; F25C 55 55                    UU
        eor     $55,x                           ; F25E 55 55                    UU
        eor     $55,x                           ; F260 55 55                    UU
        eor     $55,x                           ; F262 55 55                    UU
        eor     $55,x                           ; F264 55 55                    UU
        eor     $55,x                           ; F266 55 55                    UU
        eor     $55,x                           ; F268 55 55                    UU
        eor     $55,x                           ; F26A 55 55                    UU
        eor     $55,x                           ; F26C 55 55                    UU
        eor     $55,x                           ; F26E 55 55                    UU
        eor     $55,x                           ; F270 55 55                    UU
        eor     $55,x                           ; F272 55 55                    UU
        eor     $55,x                           ; F274 55 55                    UU
        eor     $55,x                           ; F276 55 55                    UU
        eor     $55,x                           ; F278 55 55                    UU
        eor     $55,x                           ; F27A 55 55                    UU
        eor     $55,x                           ; F27C 55 55                    UU
        eor     $55,x                           ; F27E 55 55                    UU
        eor     $55,x                           ; F280 55 55                    UU
        eor     $55,x                           ; F282 55 55                    UU
        eor     $55,x                           ; F284 55 55                    UU
        eor     $55,x                           ; F286 55 55                    UU
        eor     $55,x                           ; F288 55 55                    UU
        eor     $55,x                           ; F28A 55 55                    UU
        eor     $55,x                           ; F28C 55 55                    UU
        eor     $55,x                           ; F28E 55 55                    UU
        eor     $55,x                           ; F290 55 55                    UU
        eor     $D2,x                           ; F292 55 D2                    U.
        .byte   $47                             ; F294 47                       G
        .byte   $4B                             ; F295 4B                       K
        asl     $BF,x                           ; F296 16 BF                    ..
        ora     ($9E,x)                         ; F298 01 9E                    ..
        .byte   $CF                             ; F29A CF                       .
        .byte   $80                             ; F29B 80                       .
        .byte   $E3                             ; F29C E3                       .
        .byte   $3F                             ; F29D 3F                       ?
        cpx     #$F8                            ; F29E E0 F8                    ..
        and     ($E0),y                         ; F2A0 31 E0                    1.
        inc     LF060,x                         ; F2A2 FE 60 F0                 .`.
        sbc     LF000,x                         ; F2A5 FD 00 F0                 ...
        .byte   $FF                             ; F2A8 FF                       .
        brk                                     ; F2A9 00                       .
LF2AA:  beq     LF32B                           ; F2AA F0 7F                    ..
LF2AC:  jsr     L7EF8                           ; F2AC 20 F8 7E                  .~
LF2AF:  brk                                     ; F2AF 00                       .
        sed                                     ; F2B0 F8                       .
        .byte   $3F                             ; F2B1 3F                       ?
        bpl     LF2AC                           ; F2B2 10 F8                    ..
        .byte   $1F                             ; F2B4 1F                       .
        bmi     LF2AF                           ; F2B5 30 F8                    0.
        .byte   $3F                             ; F2B7 3F                       ?
        bvs     LF2AA                           ; F2B8 70 F0                    p.
        adc     $C030,x                         ; F2BA 7D 30 C0                 }0.
        .byte   $FF                             ; F2BD FF                       .
        brk                                     ; F2BE 00                       .
        cpy     #$FF                            ; F2BF C0 FF                    ..
        .byte   $03                             ; F2C1 03                       .
        .byte   $10                             ; F2C2 10                       .
LF2C3:  .byte   $FF                             ; F2C3 FF                       .
        .byte   $1F                             ; F2C4 1F                       .
        cpy     #$F1                            ; F2C5 C0 F1                    ..
        .byte   $3F                             ; F2C7 3F                       ?
        brk                                     ; F2C8 00                       .
        .byte   $9E                             ; F2C9 9E                       .
        .byte   $BF                             ; F2CA BF                       .
        ora     ($F8,x)                         ; F2CB 01 F8                    ..
        .byte   $2F                             ; F2CD 2F                       /
        .byte   $62                             ; F2CE 62                       b
        .byte   $1C                             ; F2CF 1C                       .
        .byte   $7F                             ; F2D0 7F                       .
        cpx     #$1E                            ; F2D1 E0 1E                    ..
        cmp     ($13,x)                         ; F2D3 C1 13                    ..
        rol     LF007,x                         ; F2D5 3E 07 F0                 >..
        .byte   $1F                             ; F2D8 1F                       .
        .byte   $0F                             ; F2D9 0F                       .
        stx     $CF                             ; F2DA 86 CF                    ..
        .byte   $0F                             ; F2DC 0F                       .
        .byte   $07                             ; F2DD 07                       .
        .byte   $E3                             ; F2DE E3                       .
        sed                                     ; F2DF F8                       .
        sta     ($C7,x)                         ; F2E0 81 C7                    ..
        adc     ($F8,x)                         ; F2E2 61 F8                    a.
        .byte   $C3                             ; F2E4 C3                       .
        .byte   $83                             ; F2E5 83                       .
        .byte   $C3                             ; F2E6 C3                       .
        sed                                     ; F2E7 F8                       .
        .byte   $87                             ; F2E8 87                       .
        .byte   $83                             ; F2E9 83                       .
        sbc     ($7E,x)                         ; F2EA E1 7E                    .~
        cpy     #$C3                            ; F2EC C0 C3                    ..
        adc     ($7F,x)                         ; F2EE 61 7F                    a.
        cpx     #$E1                            ; F2F0 E0 E1                    ..
        ora     LF1F8,y                         ; F2F2 19 F8 F1                 ...
        eor     ($18,x)                         ; F2F5 41 18                    A.
LF2F7:  inc     $43F0,x                         ; F2F7 FE F0 43                 ..C
        sec                                     ; F2FA 38                       8
        .byte   $BF                             ; F2FB BF                       .
        cpx     #$71                            ; F2FC E0 71                    .q
        .byte   $0C                             ; F2FE 0C                       .
        .byte   $FC                             ; F2FF FC                       .
        sbc     ($30),y                         ; F300 F1 30                    .0
        sty     $707F                           ; F302 8C 7F 70                 ..p
        .byte   $1C                             ; F305 1C                       .
        .byte   $83                             ; F306 83                       .
        .byte   $1F                             ; F307 1F                       .
        ldx     LF003,y                         ; F308 BE 03 F0                 ...
        .byte   $8F                             ; F30B 8F                       .
        .byte   $67                             ; F30C 67                       g
        brk                                     ; F30D 00                       .
        inc     $39C3,x                         ; F30E FE C3 39                 ..9
        .byte   $80                             ; F311 80                       .
        .byte   $FF                             ; F312 FF                       .
        beq     LF331                           ; F313 F0 1C                    ..
        cpy     #$3F                            ; F315 C0 3F                    .?
        .byte   $3C                             ; F317 3C                       <
        .byte   $03                             ; F318 03                       .
        sed                                     ; F319 F8                       .
        .byte   $07                             ; F31A 07                       .
        .byte   $9F                             ; F31B 9F                       .
        sta     ($1F,x)                         ; F31C 81 1F                    ..
        cpx     #$3F                            ; F31E E0 3F                    .?
        cpx     #$01                            ; F320 E0 01                    ..
        .byte   $FE                             ; F322 FE                       .
        .byte   $03                             ; F323 03                       .
LF324:  .byte   $3F                             ; F324 3F                       ?
        beq     LF336                           ; F325 F0 0F                    ..
        sed                                     ; F327 F8                       .
        cmp     ($7F,x)                         ; F328 C1 7F                    ..
        .byte   $C0                             ; F32A C0                       .
LF32B:  .byte   $03                             ; F32B 03                       .
        .byte   $FF                             ; F32C FF                       .
        ora     ($1E,x)                         ; F32D 01 1E                    ..
        .byte   $FC                             ; F32F FC                       .
        .byte   $07                             ; F330 07                       .
LF331:  sei                                     ; F331 78                       x
        beq     LF353                           ; F332 F0 1F                    ..
        beq     LF2F7                           ; F334 F0 C1                    ..
LF336:  .byte   $7F                             ; F336 7F                       .
        .byte   $80                             ; F337 80                       .
        .byte   $07                             ; F338 07                       .
        .byte   $FE                             ; F339 FE                       .
        .byte   $01                             ; F33A 01                       .
LF33B:  asl     $07FC,x                         ; F33B 1E FC 07                 ...
        sec                                     ; F33E 38                       8
        sed                                     ; F33F F8                       .
        .byte   $1F                             ; F340 1F                       .
        bpl     LF33B                           ; F341 10 F8                    ..
        .byte   $3F                             ; F343 3F                       ?
        brk                                     ; F344 00                       .
        sed                                     ; F345 F8                       .
        .byte   $3F                             ; F346 3F                       ?
        clc                                     ; F347 18                       .
        beq     LF3C9                           ; F348 F0 7F                    ..
        jsr     LFFE0                           ; F34A 20 E0 FF                  ..
        rts                                     ; F34D 60                       `

; ----------------------------------------------------------------------------
        cpy     #$FF                            ; F34E C0 FF                    ..
        cmp     ($80,x)                         ; F350 C1 80                    ..
        .byte   $FF                             ; F352 FF                       .
LF353:  sta     $80                             ; F353 85 80                    ..
        .byte   $FF                             ; F355 FF                       .
        ora     $80                             ; F356 05 80                    ..
        .byte   $FF                             ; F358 FF                       .
        ora     LFF80                           ; F359 0D 80 FF                 ...
        .byte   $0C                             ; F35C 0C                       .
        .byte   $80                             ; F35D 80                       .
        .byte   $FF                             ; F35E FF                       .
        .byte   $1C                             ; F35F 1C                       .
        .byte   $80                             ; F360 80                       .
        .byte   $FF                             ; F361 FF                       .
        .byte   $03                             ; F362 03                       .
        beq     LF324                           ; F363 F0 BF                    ..
        sta     ($F1,x)                         ; F365 81 F1                    ..
        .byte   $1F                             ; F367 1F                       .
        bcs     LF3A9                           ; F368 B0 3F                    .?
        brk                                     ; F36A 00                       .
        .byte   $FC                             ; F36B FC                       .
        .byte   $1F                             ; F36C 1F                       .
        brk                                     ; F36D 00                       .
        .byte   $FF                             ; F36E FF                       .
        .byte   $03                             ; F36F 03                       .
        beq     LF3F1                           ; F370 F0 7F                    ..
        brk                                     ; F372 00                       .
        inc     $800F,x                         ; F373 FE 0F 80                 ...
        .byte   $FF                             ; F376 FF                       .
        brk                                     ; F377 00                       .
        .byte   $F2                             ; F378 F2                       .
        .byte   $1F                             ; F379 1F                       .
        beq     LF3AF                           ; F37A F0 33                    .3
        .byte   $07                             ; F37C 07                       .
        .byte   $FC                             ; F37D FC                       .
        .byte   $07                             ; F37E 07                       .
        cmp     ($7F,x)                         ; F37F C1 7F                    ..
        brk                                     ; F381 00                       .
        inc     $C07C,x                         ; F382 FE 7C C0                 .|.
        .byte   $9E                             ; F385 9E                       .
        cmp     ($D6,x)                         ; F386 C1 D6                    ..
        .byte   $32                             ; F388 32                       2
        lda     #$79                            ; F389 A9 79                    .y
        sty     $A6,x                           ; F38B 94 A6                    ..
        .byte   $1B                             ; F38D 1B                       .
        .byte   $89                             ; F38E 89                       .
        .byte   $B7                             ; F38F B7                       .
        .byte   $52                             ; F390 52                       R
        .byte   $74                             ; F391 74                       t
        eor     $95,x                           ; F392 55 95                    U.
        cpx     $5546                           ; F394 EC 46 55                 .FU
        eor     $55,x                           ; F397 55 55                    UU
        eor     $55,x                           ; F399 55 55                    UU
        eor     $55,x                           ; F39B 55 55                    UU
        eor     $55,x                           ; F39D 55 55                    UU
        eor     $55,x                           ; F39F 55 55                    UU
        eor     $55,x                           ; F3A1 55 55                    UU
        eor     $55,x                           ; F3A3 55 55                    UU
        eor     $55,x                           ; F3A5 55 55                    UU
        eor     $55,x                           ; F3A7 55 55                    UU
LF3A9:  eor     $55,x                           ; F3A9 55 55                    UU
        eor     $55,x                           ; F3AB 55 55                    UU
        eor     $55,x                           ; F3AD 55 55                    UU
LF3AF:  eor     $55,x                           ; F3AF 55 55                    UU
        eor     $55,x                           ; F3B1 55 55                    UU
        eor     $55,x                           ; F3B3 55 55                    UU
        eor     $55,x                           ; F3B5 55 55                    UU
        eor     $55,x                           ; F3B7 55 55                    UU
        eor     $55,x                           ; F3B9 55 55                    UU
        eor     $55,x                           ; F3BB 55 55                    UU
        eor     $55,x                           ; F3BD 55 55                    UU
        eor     $55,x                           ; F3BF 55 55                    UU
        eor     $55,x                           ; F3C1 55 55                    UU
        eor     $55,x                           ; F3C3 55 55                    UU
        eor     $55,x                           ; F3C5 55 55                    UU
        eor     $55,x                           ; F3C7 55 55                    UU
LF3C9:  eor     $55,x                           ; F3C9 55 55                    UU
        eor     $55,x                           ; F3CB 55 55                    UU
        eor     $55,x                           ; F3CD 55 55                    UU
        eor     $55,x                           ; F3CF 55 55                    UU
        eor     $55,x                           ; F3D1 55 55                    UU
        eor     $55,x                           ; F3D3 55 55                    UU
        eor     $55,x                           ; F3D5 55 55                    UU
        eor     $55,x                           ; F3D7 55 55                    UU
        eor     $55,x                           ; F3D9 55 55                    UU
        eor     $55,x                           ; F3DB 55 55                    UU
        eor     $55,x                           ; F3DD 55 55                    UU
        eor     $55,x                           ; F3DF 55 55                    UU
        eor     $55,x                           ; F3E1 55 55                    UU
        eor     $55,x                           ; F3E3 55 55                    UU
        eor     $55,x                           ; F3E5 55 55                    UU
        eor     $55,x                           ; F3E7 55 55                    UU
        eor     $55,x                           ; F3E9 55 55                    UU
        eor     $55,x                           ; F3EB 55 55                    UU
        eor     $55,x                           ; F3ED 55 55                    UU
        eor     $55,x                           ; F3EF 55 55                    UU
LF3F1:  eor     $55,x                           ; F3F1 55 55                    UU
        eor     $55,x                           ; F3F3 55 55                    UU
        eor     $55,x                           ; F3F5 55 55                    UU
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
        eor     $55,x                           ; F415 55 55                    UU
        eor     $55,x                           ; F417 55 55                    UU
        eor     $55,x                           ; F419 55 55                    UU
        eor     $55,x                           ; F41B 55 55                    UU
        eor     $55,x                           ; F41D 55 55                    UU
        eor     $55,x                           ; F41F 55 55                    UU
        eor     $55,x                           ; F421 55 55                    UU
        eor     $55,x                           ; F423 55 55                    UU
        eor     $55,x                           ; F425 55 55                    UU
        eor     $55,x                           ; F427 55 55                    UU
        eor     $55,x                           ; F429 55 55                    UU
        eor     $55,x                           ; F42B 55 55                    UU
        eor     $55,x                           ; F42D 55 55                    UU
        eor     $55,x                           ; F42F 55 55                    UU
        eor     $55,x                           ; F431 55 55                    UU
        eor     $55,x                           ; F433 55 55                    UU
        eor     $55,x                           ; F435 55 55                    UU
        eor     $55,x                           ; F437 55 55                    UU
        eor     $55,x                           ; F439 55 55                    UU
        eor     $55,x                           ; F43B 55 55                    UU
        eor     $55,x                           ; F43D 55 55                    UU
        eor     $55,x                           ; F43F 55 55                    UU
        eor     $55,x                           ; F441 55 55                    UU
        eor     $55,x                           ; F443 55 55                    UU
        eor     $55,x                           ; F445 55 55                    UU
        eor     $55,x                           ; F447 55 55                    UU
        eor     $55,x                           ; F449 55 55                    UU
        eor     $55,x                           ; F44B 55 55                    UU
        eor     $55,x                           ; F44D 55 55                    UU
        eor     $55,x                           ; F44F 55 55                    UU
        eor     $55,x                           ; F451 55 55                    UU
        eor     $55,x                           ; F453 55 55                    UU
        eor     $55,x                           ; F455 55 55                    UU
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
        eor     $55,x                           ; F46F 55 55                    UU
        eor     $55,x                           ; F471 55 55                    UU
        eor     $55,x                           ; F473 55 55                    UU
        eor     $55,x                           ; F475 55 55                    UU
        eor     $55,x                           ; F477 55 55                    UU
        eor     $55,x                           ; F479 55 55                    UU
        eor     $55,x                           ; F47B 55 55                    UU
        eor     $55,x                           ; F47D 55 55                    UU
        eor     $55,x                           ; F47F 55 55                    UU
        eor     $55,x                           ; F481 55 55                    UU
        eor     $55,x                           ; F483 55 55                    UU
        eor     $55,x                           ; F485 55 55                    UU
        eor     $55,x                           ; F487 55 55                    UU
        eor     $55,x                           ; F489 55 55                    UU
        eor     $55,x                           ; F48B 55 55                    UU
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
        eor     $55,x                           ; F4A7 55 55                    UU
        eor     $55,x                           ; F4A9 55 55                    UU
        eor     $55,x                           ; F4AB 55 55                    UU
        eor     $55,x                           ; F4AD 55 55                    UU
        eor     $55,x                           ; F4AF 55 55                    UU
        eor     $55,x                           ; F4B1 55 55                    UU
        eor     $55,x                           ; F4B3 55 55                    UU
        eor     $55,x                           ; F4B5 55 55                    UU
        eor     $55,x                           ; F4B7 55 55                    UU
        eor     $55,x                           ; F4B9 55 55                    UU
        eor     $55,x                           ; F4BB 55 55                    UU
        eor     $55,x                           ; F4BD 55 55                    UU
        eor     $55,x                           ; F4BF 55 55                    UU
        eor     $55,x                           ; F4C1 55 55                    UU
        eor     $55,x                           ; F4C3 55 55                    UU
        eor     $55,x                           ; F4C5 55 55                    UU
        eor     $55,x                           ; F4C7 55 55                    UU
        eor     $55,x                           ; F4C9 55 55                    UU
        eor     $55,x                           ; F4CB 55 55                    UU
        eor     $55,x                           ; F4CD 55 55                    UU
        eor     $55,x                           ; F4CF 55 55                    UU
        eor     $55,x                           ; F4D1 55 55                    UU
        eor     $55,x                           ; F4D3 55 55                    UU
        rol     $1D,x                           ; F4D5 36 1D                    6.
        stx     $5F                             ; F4D7 86 5F                    ._
        eor     ($B2),y                         ; F4D9 51 B2                    Q.
        .byte   $1F                             ; F4DB 1F                       .
        .byte   $34                             ; F4DC 34                       4
        .byte   $9C                             ; F4DD 9C                       .
        .byte   $87                             ; F4DE 87                       .
        .byte   $C2                             ; F4DF C2                       .
        .byte   $0F                             ; F4E0 0F                       .
        ora     $01FF,y                         ; F4E1 19 FF 01                 ...
        cpx     #$7F                            ; F4E4 E0 7F                    ..
        brk                                     ; F4E6 00                       .
        inc     $801F,x                         ; F4E7 FE 1F 80                 ...
        .byte   $FF                             ; F4EA FF                       .
        .byte   $03                             ; F4EB 03                       .
        cpx     #$FF                            ; F4EC E0 FF                    ..
        brk                                     ; F4EE 00                       .
        sed                                     ; F4EF F8                       .
        .byte   $7F                             ; F4F0 7F                       .
        brk                                     ; F4F1 00                       .
        inc     a:$07,x                         ; F4F2 FE 07 00                 ...
        .byte   $FF                             ; F4F5 FF                       .
        .byte   $03                             ; F4F6 03                       .
        cpy     #$FF                            ; F4F7 C0 FF                    ..
        sta     ($C0,x)                         ; F4F9 81 C0                    ..
        .byte   $FF                             ; F4FB FF                       .
        .byte   $80                             ; F4FC 80                       .
        .byte   $03                             ; F4FD 03                       .
        .byte   $FF                             ; F4FE FF                       .
        and     ($07),y                         ; F4FF 31 07                    1.
        inc     a:$6F,x                         ; F501 FE 6F 00                 .o.
        cpx     #$FF                            ; F504 E0 FF                    ..
        ora     ($E0,x)                         ; F506 01 E0                    ..
        .byte   $FF                             ; F508 FF                       .
LF509:  .byte   $03                             ; F509 03                       .
        .byte   $80                             ; F50A 80                       .
        .byte   $FF                             ; F50B FF                       .
        .byte   $0F                             ; F50C 0F                       .
        brk                                     ; F50D 00                       .
        .byte   $FC                             ; F50E FC                       .
        .byte   $1F                             ; F50F 1F                       .
        cpy     #$E3                            ; F510 C0 E3                    ..
        .byte   $7F                             ; F512 7F                       .
        brk                                     ; F513 00                       .
        asl     $03FF,x                         ; F514 1E FF 03                 ...
        beq     LF509                           ; F517 F0 F0                    ..
        .byte   $3F                             ; F519 3F                       ?
        .byte   $80                             ; F51A 80                       .
        .byte   $8F                             ; F51B 8F                       .
        .byte   $FF                             ; F51C FF                       .
        ora     ($78,x)                         ; F51D 01 78                    .x
        sed                                     ; F51F F8                       .
        .byte   $0F                             ; F520 0F                       .
        cpy     #$87                            ; F521 C0 87                    ..
        .byte   $FF                             ; F523 FF                       .
        brk                                     ; F524 00                       .
        sei                                     ; F525 78                       x
        sed                                     ; F526 F8                       .
        .byte   $0F                             ; F527 0F                       .
        .byte   $80                             ; F528 80                       .
        .byte   $8F                             ; F529 8F                       .
        .byte   $FF                             ; F52A FF                       .
        brk                                     ; F52B 00                       .
        .byte   $FC                             ; F52C FC                       .
        beq     LF54E                           ; F52D F0 1F                    ..
        cpy     #$0F                            ; F52F C0 0F                    ..
        inc     LF801,x                         ; F531 FE 01 F8                 ...
        beq     LF575                           ; F534 F0 3F                    .?
        .byte   $80                             ; F536 80                       .
        .byte   $0F                             ; F537 0F                       .
        inc     LF803,x                         ; F538 FE 03 F8                 ...
        rts                                     ; F53B 60                       `

; ----------------------------------------------------------------------------
        .byte   $7F                             ; F53C 7F                       .
        brk                                     ; F53D 00                       .
        .byte   $0F                             ; F53E 0F                       .
        .byte   $FF                             ; F53F FF                       .
        .byte   $03                             ; F540 03                       .
        beq     LF5B3                           ; F541 F0 70                    .p
        .byte   $3F                             ; F543 3F                       ?
        .byte   $80                             ; F544 80                       .
        .byte   $0F                             ; F545 0F                       .
        .byte   $F7                             ; F546 F7                       .
        .byte   $03                             ; F547 03                       .
        .byte   $FC                             ; F548 FC                       .
        beq     LF56A                           ; F549 F0 1F                    ..
        .byte   $80                             ; F54B 80                       .
        .byte   $07                             ; F54C 07                       .
        .byte   $FF                             ; F54D FF                       .
LF54E:  ora     ($7C,x)                         ; F54E 01 7C                    .|
        cld                                     ; F550 D8                       .
        .byte   $0F                             ; F551 0F                       .
        cpx     #$E1                            ; F552 E0 E1                    ..
        .byte   $7B                             ; F554 7B                       {
        brk                                     ; F555 00                       .
        .byte   $1F                             ; F556 1F                       .
        .byte   $CF                             ; F557 CF                       .
        .byte   $03                             ; F558 03                       .
        sed                                     ; F559 F8                       .
        sei                                     ; F55A 78                       x
        .byte   $1F                             ; F55B 1F                       .
        .byte   $E0                             ; F55C E0                       .
LF55D:  .byte   $C3                             ; F55D C3                       .
        .byte   $F3                             ; F55E F3                       .
        brk                                     ; F55F 00                       .
        rol     $07BE,x                         ; F560 3E BE 07                 >..
        beq     LF55D                           ; F563 F0 F8                    ..
        ora     $C3C0,x                         ; F565 1D C0 C3                 ...
        .byte   $77                             ; F568 77                       w
        .byte   $F0                             ; F569 F0                       .
LF56A:  .byte   $02                             ; F56A 02                       .
        .byte   $BF                             ; F56B BF                       .
        .byte   $C3                             ; F56C C3                       .
        .byte   $0B                             ; F56D 0B                       .
        sed                                     ; F56E F8                       .
        asl     LF00D                           ; F56F 0E 0D F0                 ...
        .byte   $3F                             ; F572 3F                       ?
        clc                                     ; F573 18                       .
        .byte   $C0                             ; F574 C0                       .
LF575:  .byte   $FF                             ; F575 FF                       .
        beq     LF578                           ; F576 F0 00                    ..
LF578:  .byte   $FF                             ; F578 FF                       .
        .byte   $C3                             ; F579 C3                       .
        .byte   $02                             ; F57A 02                       .
        inc     $060F,x                         ; F57B FE 0F 06                 ...
        sed                                     ; F57E F8                       .
        .byte   $1F                             ; F57F 1F                       .
        .byte   $0C                             ; F580 0C                       .
        sed                                     ; F581 F8                       .
        .byte   $CF                             ; F582 CF                       .
        ora     ($F0),y                         ; F583 11 F0                    ..
        .byte   $1F                             ; F585 1F                       .
        .byte   $33                             ; F586 33                       3
        cpx     #$1F                            ; F587 E0 1F                    ..
        .byte   $42                             ; F589 42                       B
        cpx     #$1F                            ; F58A E0 1F                    ..
        asl     $1FF0                           ; F58C 0E F0 1F                 ...
        .byte   $07                             ; F58F 07                       .
        sed                                     ; F590 F8                       .
        .byte   $0F                             ; F591 0F                       .
        .byte   $03                             ; F592 03                       .
        .byte   $FC                             ; F593 FC                       .
        .byte   $87                             ; F594 87                       .
        .byte   $04                             ; F595 04                       .
        .byte   $FF                             ; F596 FF                       .
        .byte   $07                             ; F597 07                       .
        iny                                     ; F598 C8                       .
        .byte   $3F                             ; F599 3F                       ?
        .byte   $83                             ; F59A 83                       .
        sbc     $80C7,y                         ; F59B F9 C7 80                 ...
        .byte   $FF                             ; F59E FF                       .
        ora     ($F0),y                         ; F59F 11 F0                    ..
        .byte   $3F                             ; F5A1 3F                       ?
        brk                                     ; F5A2 00                       .
        .byte   $FC                             ; F5A3 FC                       .
        .byte   $0F                             ; F5A4 0F                       .
        brk                                     ; F5A5 00                       .
        .byte   $FF                             ; F5A6 FF                       .
        .byte   $07                             ; F5A7 07                       .
        cpy     #$FF                            ; F5A8 C0 FF                    ..
        brk                                     ; F5AA 00                       .
        sed                                     ; F5AB F8                       .
        .byte   $1F                             ; F5AC 1F                       .
        .byte   $80                             ; F5AD 80                       .
        .byte   $FF                             ; F5AE FF                       .
        ora     ($F8,x)                         ; F5AF 01 F8                    ..
        .byte   $0F                             ; F5B1 0F                       .
        .byte   $C0                             ; F5B2 C0                       .
LF5B3:  .byte   $FF                             ; F5B3 FF                       .
        brk                                     ; F5B4 00                       .
        .byte   $FC                             ; F5B5 FC                       .
        .byte   $0F                             ; F5B6 0F                       .
        cpy     #$FF                            ; F5B7 C0 FF                    ..
        ora     ($FC,x)                         ; F5B9 01 FC                    ..
        .byte   $0F                             ; F5BB 0F                       .
        cpy     #$FF                            ; F5BC C0 FF                    ..
        brk                                     ; F5BE 00                       .
        .byte   $FC                             ; F5BF FC                       .
        .byte   $1F                             ; F5C0 1F                       .
        cpy     #$FF                            ; F5C1 C0 FF                    ..
        brk                                     ; F5C3 00                       .
        sed                                     ; F5C4 F8                       .
        .byte   $1F                             ; F5C5 1F                       .
        cpy     #$7F                            ; F5C6 C0 7F                    ..
        .byte   $80                             ; F5C8 80                       .
        inc     LF014,x                         ; F5C9 FE 14 F0                 ...
        .byte   $1F                             ; F5CC 1F                       .
        .byte   $44                             ; F5CD 44                       D
        eor     $E40F,x                         ; F5CE 5D 0F E4                 ]..
        .byte   $57                             ; F5D1 57                       W
        bcc     LF652                           ; F5D2 90 7E                    .~
        eor     $F0                             ; F5D4 45 F0                    E.
        and     $B852,x                         ; F5D6 3D 52 B8                 =R.
        .byte   $97                             ; F5D9 97                       .
        .byte   $64                             ; F5DA 64                       d
        .byte   $F2                             ; F5DB F2                       .
        ora     $3569,y                         ; F5DC 19 69 35                 .i5
        eor     $9359                           ; F5DF 4D 59 93                 MY.
        eor     $59,x                           ; F5E2 55 59                    UY
        eor     $55,x                           ; F5E4 55 55                    UU
        eor     $5555,y                         ; F5E6 59 55 55                 YUU
        eor     $39,x                           ; F5E9 55 39                    U9
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
        .byte   $55                             ; F651 55                       U
LF652:  eor     $55,x                           ; F652 55 55                    UU
        eor     $55,x                           ; F654 55 55                    UU
        eor     $55,x                           ; F656 55 55                    UU
        eor     $55,x                           ; F658 55 55                    UU
        eor     $55,x                           ; F65A 55 55                    UU
        eor     $55,x                           ; F65C 55 55                    UU
        eor     $55,x                           ; F65E 55 55                    UU
        eor     $55,x                           ; F660 55 55                    UU
        eor     $55,x                           ; F662 55 55                    UU
        eor     $55,x                           ; F664 55 55                    UU
        eor     $55,x                           ; F666 55 55                    UU
        eor     $55,x                           ; F668 55 55                    UU
        eor     $55,x                           ; F66A 55 55                    UU
        eor     $55,x                           ; F66C 55 55                    UU
        eor     $55,x                           ; F66E 55 55                    UU
        eor     $55,x                           ; F670 55 55                    UU
        eor     $55,x                           ; F672 55 55                    UU
        eor     $55,x                           ; F674 55 55                    UU
        eor     $55,x                           ; F676 55 55                    UU
        eor     $55,x                           ; F678 55 55                    UU
        eor     $55,x                           ; F67A 55 55                    UU
        eor     $55,x                           ; F67C 55 55                    UU
        eor     $55,x                           ; F67E 55 55                    UU
        eor     $55,x                           ; F680 55 55                    UU
        eor     $55,x                           ; F682 55 55                    UU
        eor     $55,x                           ; F684 55 55                    UU
        eor     $55,x                           ; F686 55 55                    UU
        eor     $55,x                           ; F688 55 55                    UU
        eor     $55,x                           ; F68A 55 55                    UU
        eor     $55,x                           ; F68C 55 55                    UU
        eor     $55,x                           ; F68E 55 55                    UU
        eor     $55,x                           ; F690 55 55                    UU
        eor     $55,x                           ; F692 55 55                    UU
        eor     $55,x                           ; F694 55 55                    UU
        eor     $55,x                           ; F696 55 55                    UU
        eor     $55,x                           ; F698 55 55                    UU
        eor     $55,x                           ; F69A 55 55                    UU
        eor     $55,x                           ; F69C 55 55                    UU
        eor     $55,x                           ; F69E 55 55                    UU
        eor     $55,x                           ; F6A0 55 55                    UU
        eor     $55,x                           ; F6A2 55 55                    UU
        eor     $55,x                           ; F6A4 55 55                    UU
        eor     $55,x                           ; F6A6 55 55                    UU
        eor     $55,x                           ; F6A8 55 55                    UU
        eor     $55,x                           ; F6AA 55 55                    UU
        eor     $55,x                           ; F6AC 55 55                    UU
        eor     $55,x                           ; F6AE 55 55                    UU
        eor     $55,x                           ; F6B0 55 55                    UU
        eor     $55,x                           ; F6B2 55 55                    UU
        eor     $55,x                           ; F6B4 55 55                    UU
        eor     $55,x                           ; F6B6 55 55                    UU
        eor     $55,x                           ; F6B8 55 55                    UU
        eor     $55,x                           ; F6BA 55 55                    UU
        eor     $55,x                           ; F6BC 55 55                    UU
        eor     $55,x                           ; F6BE 55 55                    UU
        eor     $55,x                           ; F6C0 55 55                    UU
        eor     $55,x                           ; F6C2 55 55                    UU
        eor     $55,x                           ; F6C4 55 55                    UU
        eor     $55,x                           ; F6C6 55 55                    UU
        eor     $55,x                           ; F6C8 55 55                    UU
        eor     $55,x                           ; F6CA 55 55                    UU
        eor     $55,x                           ; F6CC 55 55                    UU
        eor     $55,x                           ; F6CE 55 55                    UU
        eor     $55,x                           ; F6D0 55 55                    UU
        eor     $55,x                           ; F6D2 55 55                    UU
        eor     $55,x                           ; F6D4 55 55                    UU
        eor     $55,x                           ; F6D6 55 55                    UU
        eor     $55,x                           ; F6D8 55 55                    UU
        eor     $55,x                           ; F6DA 55 55                    UU
        eor     $55,x                           ; F6DC 55 55                    UU
        eor     $55,x                           ; F6DE 55 55                    UU
        eor     $55,x                           ; F6E0 55 55                    UU
        eor     $55,x                           ; F6E2 55 55                    UU
        eor     $55,x                           ; F6E4 55 55                    UU
        eor     $55,x                           ; F6E6 55 55                    UU
        eor     $55,x                           ; F6E8 55 55                    UU
        eor     $55,x                           ; F6EA 55 55                    UU
        eor     $55,x                           ; F6EC 55 55                    UU
        eor     $55,x                           ; F6EE 55 55                    UU
        eor     $55,x                           ; F6F0 55 55                    UU
        eor     $55,x                           ; F6F2 55 55                    UU
        eor     $55,x                           ; F6F4 55 55                    UU
        eor     $55,x                           ; F6F6 55 55                    UU
        eor     $55,x                           ; F6F8 55 55                    UU
        eor     $55,x                           ; F6FA 55 55                    UU
        eor     $55,x                           ; F6FC 55 55                    UU
        eor     $55,x                           ; F6FE 55 55                    UU
        eor     $55,x                           ; F700 55 55                    UU
        eor     $55,x                           ; F702 55 55                    UU
        eor     $55,x                           ; F704 55 55                    UU
        eor     $55,x                           ; F706 55 55                    UU
        eor     $55,x                           ; F708 55 55                    UU
        eor     $55,x                           ; F70A 55 55                    UU
        eor     $55,x                           ; F70C 55 55                    UU
        eor     $55,x                           ; F70E 55 55                    UU
        eor     $55,x                           ; F710 55 55                    UU
        eor     $55,x                           ; F712 55 55                    UU
        eor     $55,x                           ; F714 55 55                    UU
        eor     $55,x                           ; F716 55 55                    UU
        eor     $55,x                           ; F718 55 55                    UU
        eor     $55,x                           ; F71A 55 55                    UU
        eor     $55,x                           ; F71C 55 55                    UU
        .byte   $5A                             ; F71E 5A                       Z
        eor     $55,x                           ; F71F 55 55                    UU
        .byte   $0B                             ; F721 0B                       .
        ror     LF054,x                         ; F722 7E 54 F0                 ~T.
        .byte   $0F                             ; F725 0F                       .
        asl     $7DF8                           ; F726 0E F8 7D                 ..}
        brk                                     ; F729 00                       .
        .byte   $9F                             ; F72A 9F                       .
        asl     $9EC3,x                         ; F72B 1E C3 9E                 ...
        .byte   $03                             ; F72E 03                       .
        .byte   $8F                             ; F72F 8F                       .
        sbc     ($02),y                         ; F730 F1 02                    ..
        .byte   $3F                             ; F732 3F                       ?
        stx     $1F                             ; F733 86 1F                    ..
        sed                                     ; F735 F8                       .
        php                                     ; F736 08                       .
        .byte   $3F                             ; F737 3F                       ?
        cpx     #$63                            ; F738 E0 63                    .c
        sed                                     ; F73A F8                       .
        ora     ($BE,x)                         ; F73B 01 BE                    ..
        .byte   $C3                             ; F73D C3                       .
        .byte   $87                             ; F73E 87                       .
        sbc     ($11),y                         ; F73F F1 11                    ..
        ror     $9F0C,x                         ; F741 7E 0C 9F                 ~..
        sbc     ($07,x)                         ; F744 E1 07                    ..
        beq     LF775                           ; F746 F0 2D                    .-
        inc     $BE00,x                         ; F748 FE 00 BE                 ...
        cpy     $1F                             ; F74B C4 1F                    ..
        cpx     #$5B                            ; F74D E0 5B                    .[
        .byte   $F3                             ; F74F F3                       .
        .byte   $03                             ; F750 03                       .
        bvs     LF7D2                           ; F751 70 7F                    p.
        cpx     #$3B                            ; F753 E0 3B                    .;
        bmi     LF775                           ; F755 30 1E                    0.
        inc     $4F                             ; F757 E6 4F                    .O
        jsr     L1CFC                           ; F759 20 FC 1C                  ..
        and     LF802,x                         ; F75C 3D 02 F8                 =..
        .byte   $1B                             ; F75F 1B                       .
        inc     $E300,x                         ; F760 FE 00 E3                 ...
        .byte   $4F                             ; F763 4F                       O
        beq     LF775                           ; F764 F0 0F                    ..
        .byte   $80                             ; F766 80                       .
        .byte   $FF                             ; F767 FF                       .
        .byte   $C3                             ; F768 C3                       .
        .byte   $8F                             ; F769 8F                       .
        ora     ($FC,x)                         ; F76A 01 FC                    ..
        ora     ($7F),y                         ; F76C 11 7F                    ..
        asl     $E0                             ; F76E 06 E0                    ..
        .byte   $07                             ; F770 07                       .
        .byte   $FC                             ; F771 FC                       .
        .byte   $0F                             ; F772 0F                       .
        .byte   $80                             ; F773 80                       .
        .byte   $FF                             ; F774 FF                       .
LF775:  cmp     ($CF,x)                         ; F775 C1 CF                    ..
        ora     ($FC,x)                         ; F777 01 FC                    ..
        sbc     ($F0,x)                         ; F779 E1 F0                    ..
        .byte   $1F                             ; F77B 1F                       .
        cpy     #$0F                            ; F77C C0 0F                    ..
        inc     $07,x                           ; F77E F6 07                    ..
        brk                                     ; F780 00                       .
        .byte   $FF                             ; F781 FF                       .
        .byte   $0C                             ; F782 0C                       .
        .byte   $3F                             ; F783 3F                       ?
        .byte   $07                             ; F784 07                       .
        beq     LF7CE                           ; F785 F0 47                    .G
        sed                                     ; F787 F8                       .
        .byte   $3B                             ; F788 3B                       ;
        brk                                     ; F789 00                       .
        .byte   $1F                             ; F78A 1F                       .
        .byte   $E3                             ; F78B E3                       .
        .byte   $3F                             ; F78C 3F                       ?
        brk                                     ; F78D 00                       .
        ror     $3FC2,x                         ; F78E 7E C2 3F                 ~.?
        clc                                     ; F791 18                       .
        sed                                     ; F792 F8                       .
        .byte   $0F                             ; F793 0F                       .
        rol     LF005,x                         ; F794 3E 05 F0                 >..
        .byte   $87                             ; F797 87                       .
        sbc     $8C21,x                         ; F798 FD 21 8C                 .!.
        .byte   $1F                             ; F79B 1F                       .
        sed                                     ; F79C F8                       .
        .byte   $0B                             ; F79D 0B                       .
        .byte   $1C                             ; F79E 1C                       .
        rol     $07F8,x                         ; F79F 3E F8 07                 >..
        .byte   $1C                             ; F7A2 1C                       .
        asl     $07FB,x                         ; F7A3 1E FB 07                 ...
        .byte   $1C                             ; F7A6 1C                       .
        .byte   $1C                             ; F7A7 1C                       .
        .byte   $E7                             ; F7A8 E7                       .
        .byte   $07                             ; F7A9 07                       .
        sec                                     ; F7AA 38                       8
        .byte   $3C                             ; F7AB 3C                       <
        inc     $3807,x                         ; F7AC FE 07 38                 ..8
        .byte   $1C                             ; F7AF 1C                       .
        .byte   $FC                             ; F7B0 FC                       .
        .byte   $07                             ; F7B1 07                       .
        .byte   $3C                             ; F7B2 3C                       <
        asl     $7F                             ; F7B3 06 7F                    ..
        .byte   $02                             ; F7B5 02                       .
        .byte   $1F                             ; F7B6 1F                       .
        .byte   $83                             ; F7B7 83                       .
        .byte   $3F                             ; F7B8 3F                       ?
        sta     ($8F,x)                         ; F7B9 81 8F                    ..
        cmp     ($1F,x)                         ; F7BB C1 1F                    ..
        .byte   $E0                             ; F7BD E0                       .
LF7BE:  .byte   $87                             ; F7BE 87                       .
        sbc     ($07),y                         ; F7BF F1 07                    ..
        sed                                     ; F7C1 F8                       .
        ora     ($FF,x)                         ; F7C2 01 FF                    ..
        cpy     #$3F                            ; F7C4 C0 3F                    .?
        beq     LF7CF                           ; F7C6 F0 07                    ..
        .byte   $FC                             ; F7C8 FC                       .
        cpx     #$3F                            ; F7C9 E0 3F                    .?
        sec                                     ; F7CB 38                       8
        cpx     #$1F                            ; F7CC E0 1F                    ..
LF7CE:  sei                                     ; F7CE 78                       x
LF7CF:  .byte   $80                             ; F7CF 80                       .
        .byte   $7F                             ; F7D0 7F                       .
        .byte   $F0                             ; F7D1 F0                       .
LF7D2:  .byte   $07                             ; F7D2 07                       .
        inc     $0DE0,x                         ; F7D3 FE E0 0D                 ...
        sed                                     ; F7D6 F8                       .
        cmp     ($49,x)                         ; F7D7 C1 49                    .I
        beq     LF7BE                           ; F7D9 F0 E3                    ..
LF7DB:  adc     ($F0,x)                         ; F7DB 61 F0                    a.
        sbc     ($3D,x)                         ; F7DD E1 3D                    .=
        beq     LF7E2                           ; F7DF F0 01                    ..
        .byte   $7E                             ; F7E1 7E                       ~
LF7E2:  sed                                     ; F7E2 F8                       .
        .byte   $83                             ; F7E3 83                       .
        .byte   $8F                             ; F7E4 8F                       .
        .byte   $02                             ; F7E5 02                       .
        .byte   $FF                             ; F7E6 FF                       .
        .byte   $07                             ; F7E7 07                       .
        beq     LF7DB                           ; F7E8 F0 F1                    ..
        ora     ($7C,x)                         ; F7EA 01 7C                    .|
        and     $7F80,x                         ; F7EC 3D 80 7F                 =..
        .byte   $02                             ; F7EF 02                       .
        .byte   $E3                             ; F7F0 E3                       .
        .byte   $0F                             ; F7F1 0F                       .
        .byte   $07                             ; F7F2 07                       .
        .byte   $FF                             ; F7F3 FF                       .
        .byte   $80                             ; F7F4 80                       .
        .byte   $FB                             ; F7F5 FB                       .
        cmp     ($C1,x)                         ; F7F6 C1 C1                    ..
        .byte   $07                             ; F7F8 07                       .
        .byte   $1F                             ; F7F9 1F                       .
        inx                                     ; F7FA E8                       .
        .byte   $63                             ; F7FB 63                       c
        lda     ($7F,x)                         ; F7FC A1 7F                    ..
        brk                                     ; F7FE 00                       .
        .byte   $BF                             ; F7FF BF                       .
LF800:  .byte   $54                             ; F800 54                       T
LF801:  .byte   $B4                             ; F801 B4                       .
LF802:  .byte   $87                             ; F802 87                       .
LF803:  and     $B7                             ; F803 25 B7                    %.
        ldx     #$65                            ; F805 A2 65                    .e
        .byte   $2F                             ; F807 2F                       /
        tay                                     ; F808 A8                       .
        adc     #$07                            ; F809 69 07                    i.
        and     $C555,x                         ; F80B 3D 55 C5                 =U.
        eor     $A5,x                           ; F80E 55 A5                    U.
        sta     $4D,x                           ; F810 95 4D                    .M
        sta     $D5,x                           ; F812 95 D5                    ..
        .byte   $52                             ; F814 52                       R
        eor     $55,x                           ; F815 55 55                    UU
        eor     $D5,x                           ; F817 55 D5                    U.
        .byte   $54                             ; F819 54                       T
        eor     $53,x                           ; F81A 55 53                    US
        eor     $55,x                           ; F81C 55 55                    UU
        eor     $55,x                           ; F81E 55 55                    UU
        eor     $55,x                           ; F820 55 55                    UU
        eor     $55,x                           ; F822 55 55                    UU
        eor     $55,x                           ; F824 55 55                    UU
        eor     $55,x                           ; F826 55 55                    UU
        eor     $55,x                           ; F828 55 55                    UU
        eor     $55,x                           ; F82A 55 55                    UU
        eor     $55,x                           ; F82C 55 55                    UU
        eor     $55,x                           ; F82E 55 55                    UU
        eor     $55,x                           ; F830 55 55                    UU
        eor     $55,x                           ; F832 55 55                    UU
        eor     $55,x                           ; F834 55 55                    UU
        eor     $55,x                           ; F836 55 55                    UU
        eor     $55,x                           ; F838 55 55                    UU
        eor     $55,x                           ; F83A 55 55                    UU
        eor     $55,x                           ; F83C 55 55                    UU
        eor     $55,x                           ; F83E 55 55                    UU
        eor     $55,x                           ; F840 55 55                    UU
        eor     $55,x                           ; F842 55 55                    UU
        eor     $55,x                           ; F844 55 55                    UU
        eor     $55,x                           ; F846 55 55                    UU
        eor     $55,x                           ; F848 55 55                    UU
        eor     $55,x                           ; F84A 55 55                    UU
        eor     $55,x                           ; F84C 55 55                    UU
        eor     $55,x                           ; F84E 55 55                    UU
        eor     $55,x                           ; F850 55 55                    UU
        eor     $55,x                           ; F852 55 55                    UU
        eor     $55,x                           ; F854 55 55                    UU
        eor     $55,x                           ; F856 55 55                    UU
        eor     $55,x                           ; F858 55 55                    UU
        eor     $55,x                           ; F85A 55 55                    UU
        eor     $55,x                           ; F85C 55 55                    UU
        eor     $55,x                           ; F85E 55 55                    UU
        eor     $55,x                           ; F860 55 55                    UU
        eor     $55,x                           ; F862 55 55                    UU
        eor     $55,x                           ; F864 55 55                    UU
        eor     $55,x                           ; F866 55 55                    UU
        eor     $55,x                           ; F868 55 55                    UU
        eor     $55,x                           ; F86A 55 55                    UU
        eor     $55,x                           ; F86C 55 55                    UU
        eor     $55,x                           ; F86E 55 55                    UU
        eor     $55,x                           ; F870 55 55                    UU
        eor     $55,x                           ; F872 55 55                    UU
        eor     $55,x                           ; F874 55 55                    UU
        eor     $55,x                           ; F876 55 55                    UU
        eor     $55,x                           ; F878 55 55                    UU
        eor     $55,x                           ; F87A 55 55                    UU
        eor     $55,x                           ; F87C 55 55                    UU
        eor     $55,x                           ; F87E 55 55                    UU
        eor     $55,x                           ; F880 55 55                    UU
        eor     $55,x                           ; F882 55 55                    UU
        eor     $55,x                           ; F884 55 55                    UU
        eor     $55,x                           ; F886 55 55                    UU
        eor     $55,x                           ; F888 55 55                    UU
        eor     $55,x                           ; F88A 55 55                    UU
        eor     $55,x                           ; F88C 55 55                    UU
        eor     $55,x                           ; F88E 55 55                    UU
        eor     $55,x                           ; F890 55 55                    UU
        eor     $55,x                           ; F892 55 55                    UU
        eor     $55,x                           ; F894 55 55                    UU
        eor     $55,x                           ; F896 55 55                    UU
        eor     $55,x                           ; F898 55 55                    UU
        eor     $55,x                           ; F89A 55 55                    UU
        eor     $55,x                           ; F89C 55 55                    UU
        eor     $55,x                           ; F89E 55 55                    UU
        eor     $55,x                           ; F8A0 55 55                    UU
        eor     $55,x                           ; F8A2 55 55                    UU
        eor     $55,x                           ; F8A4 55 55                    UU
        eor     $55,x                           ; F8A6 55 55                    UU
        eor     $55,x                           ; F8A8 55 55                    UU
        eor     $55,x                           ; F8AA 55 55                    UU
        eor     $55,x                           ; F8AC 55 55                    UU
        eor     $55,x                           ; F8AE 55 55                    UU
        eor     $55,x                           ; F8B0 55 55                    UU
        eor     $55,x                           ; F8B2 55 55                    UU
        eor     $55,x                           ; F8B4 55 55                    UU
        eor     $55,x                           ; F8B6 55 55                    UU
        eor     $55,x                           ; F8B8 55 55                    UU
        eor     $55,x                           ; F8BA 55 55                    UU
        eor     $55,x                           ; F8BC 55 55                    UU
        eor     $55,x                           ; F8BE 55 55                    UU
        eor     $55,x                           ; F8C0 55 55                    UU
        eor     $55,x                           ; F8C2 55 55                    UU
        eor     $55,x                           ; F8C4 55 55                    UU
        eor     $55,x                           ; F8C6 55 55                    UU
        eor     $55,x                           ; F8C8 55 55                    UU
        eor     $55,x                           ; F8CA 55 55                    UU
        eor     $55,x                           ; F8CC 55 55                    UU
        eor     $55,x                           ; F8CE 55 55                    UU
        eor     $55,x                           ; F8D0 55 55                    UU
        eor     $55,x                           ; F8D2 55 55                    UU
        eor     $55,x                           ; F8D4 55 55                    UU
        eor     $55,x                           ; F8D6 55 55                    UU
        eor     $55,x                           ; F8D8 55 55                    UU
        eor     $55,x                           ; F8DA 55 55                    UU
        eor     $55,x                           ; F8DC 55 55                    UU
        eor     $55,x                           ; F8DE 55 55                    UU
        eor     $55,x                           ; F8E0 55 55                    UU
        eor     $55,x                           ; F8E2 55 55                    UU
        eor     $55,x                           ; F8E4 55 55                    UU
        eor     $55,x                           ; F8E6 55 55                    UU
        eor     $55,x                           ; F8E8 55 55                    UU
        eor     $55,x                           ; F8EA 55 55                    UU
        eor     $55,x                           ; F8EC 55 55                    UU
        eor     $55,x                           ; F8EE 55 55                    UU
        eor     $55,x                           ; F8F0 55 55                    UU
        eor     $55,x                           ; F8F2 55 55                    UU
        eor     $55,x                           ; F8F4 55 55                    UU
        eor     $55,x                           ; F8F6 55 55                    UU
        eor     $55,x                           ; F8F8 55 55                    UU
        eor     $55,x                           ; F8FA 55 55                    UU
        eor     $55,x                           ; F8FC 55 55                    UU
        eor     $55,x                           ; F8FE 55 55                    UU
        eor     $55,x                           ; F900 55 55                    UU
        eor     $55,x                           ; F902 55 55                    UU
        eor     $55,x                           ; F904 55 55                    UU
        eor     $55,x                           ; F906 55 55                    UU
        eor     $55,x                           ; F908 55 55                    UU
        eor     $55,x                           ; F90A 55 55                    UU
        eor     $55,x                           ; F90C 55 55                    UU
        eor     $55,x                           ; F90E 55 55                    UU
        eor     $55,x                           ; F910 55 55                    UU
        eor     $55,x                           ; F912 55 55                    UU
        eor     $55,x                           ; F914 55 55                    UU
        eor     $55,x                           ; F916 55 55                    UU
        eor     $55,x                           ; F918 55 55                    UU
        eor     $55,x                           ; F91A 55 55                    UU
        eor     $55,x                           ; F91C 55 55                    UU
        eor     $55,x                           ; F91E 55 55                    UU
        eor     $55,x                           ; F920 55 55                    UU
        eor     $55,x                           ; F922 55 55                    UU
        eor     $55,x                           ; F924 55 55                    UU
        eor     $55,x                           ; F926 55 55                    UU
        eor     $55,x                           ; F928 55 55                    UU
        eor     $55,x                           ; F92A 55 55                    UU
        eor     $55,x                           ; F92C 55 55                    UU
        eor     $55,x                           ; F92E 55 55                    UU
        eor     $55,x                           ; F930 55 55                    UU
        eor     $55,x                           ; F932 55 55                    UU
        eor     $55,x                           ; F934 55 55                    UU
        eor     $55,x                           ; F936 55 55                    UU
        eor     $55,x                           ; F938 55 55                    UU
        eor     $55,x                           ; F93A 55 55                    UU
        eor     $55,x                           ; F93C 55 55                    UU
        eor     $55,x                           ; F93E 55 55                    UU
        eor     $55,x                           ; F940 55 55                    UU
        eor     $55,x                           ; F942 55 55                    UU
        eor     $55,x                           ; F944 55 55                    UU
        eor     $55,x                           ; F946 55 55                    UU
        eor     $55,x                           ; F948 55 55                    UU
        eor     $55,x                           ; F94A 55 55                    UU
        eor     $55,x                           ; F94C 55 55                    UU
        eor     $55,x                           ; F94E 55 55                    UU
        eor     $00,x                           ; F950 55 00                    U.
        brk                                     ; F952 00                       .
        brk                                     ; F953 00                       .
        brk                                     ; F954 00                       .
        brk                                     ; F955 00                       .
        brk                                     ; F956 00                       .
        brk                                     ; F957 00                       .
        brk                                     ; F958 00                       .
        brk                                     ; F959 00                       .
        brk                                     ; F95A 00                       .
        brk                                     ; F95B 00                       .
        brk                                     ; F95C 00                       .
        brk                                     ; F95D 00                       .
        brk                                     ; F95E 00                       .
        brk                                     ; F95F 00                       .
        brk                                     ; F960 00                       .
        brk                                     ; F961 00                       .
        brk                                     ; F962 00                       .
        brk                                     ; F963 00                       .
        brk                                     ; F964 00                       .
        brk                                     ; F965 00                       .
        brk                                     ; F966 00                       .
        brk                                     ; F967 00                       .
        brk                                     ; F968 00                       .
        brk                                     ; F969 00                       .
        brk                                     ; F96A 00                       .
        brk                                     ; F96B 00                       .
        brk                                     ; F96C 00                       .
        brk                                     ; F96D 00                       .
        brk                                     ; F96E 00                       .
        brk                                     ; F96F 00                       .
        brk                                     ; F970 00                       .
        brk                                     ; F971 00                       .
        brk                                     ; F972 00                       .
        brk                                     ; F973 00                       .
        brk                                     ; F974 00                       .
        brk                                     ; F975 00                       .
        brk                                     ; F976 00                       .
        brk                                     ; F977 00                       .
        brk                                     ; F978 00                       .
        brk                                     ; F979 00                       .
        brk                                     ; F97A 00                       .
        brk                                     ; F97B 00                       .
        brk                                     ; F97C 00                       .
        brk                                     ; F97D 00                       .
        brk                                     ; F97E 00                       .
        brk                                     ; F97F 00                       .
        brk                                     ; F980 00                       .
        brk                                     ; F981 00                       .
        brk                                     ; F982 00                       .
        brk                                     ; F983 00                       .
        brk                                     ; F984 00                       .
        brk                                     ; F985 00                       .
        brk                                     ; F986 00                       .
        brk                                     ; F987 00                       .
        brk                                     ; F988 00                       .
        brk                                     ; F989 00                       .
        brk                                     ; F98A 00                       .
        brk                                     ; F98B 00                       .
        brk                                     ; F98C 00                       .
        brk                                     ; F98D 00                       .
        brk                                     ; F98E 00                       .
        brk                                     ; F98F 00                       .
        brk                                     ; F990 00                       .
        brk                                     ; F991 00                       .
        brk                                     ; F992 00                       .
        brk                                     ; F993 00                       .
        brk                                     ; F994 00                       .
        brk                                     ; F995 00                       .
        brk                                     ; F996 00                       .
        brk                                     ; F997 00                       .
        brk                                     ; F998 00                       .
        brk                                     ; F999 00                       .
        brk                                     ; F99A 00                       .
        brk                                     ; F99B 00                       .
        brk                                     ; F99C 00                       .
        brk                                     ; F99D 00                       .
        brk                                     ; F99E 00                       .
        brk                                     ; F99F 00                       .
        brk                                     ; F9A0 00                       .
        brk                                     ; F9A1 00                       .
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
        brk                                     ; FAF7 00                       .
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
LFE00:  brk                                     ; FE00 00                       .
        brk                                     ; FE01 00                       .
        brk                                     ; FE02 00                       .
        brk                                     ; FE03 00                       .
        brk                                     ; FE04 00                       .
        brk                                     ; FE05 00                       .
LFE06:  brk                                     ; FE06 00                       .
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
LFF80:  brk                                     ; FF80 00                       .
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
LFFBF:  brk                                     ; FFBF 00                       .
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
LFFE0:  brk                                     ; FFE0 00                       .
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
