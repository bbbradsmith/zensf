.include "../mod.inc"
.segment "MF000"
.org $F000

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-28 01:38:21
; Input file: out_src\06_0F.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L0004           := $0004
L0029           := $0029
L0384           := $0384
L1FD2           := $1FD2
L3000           := $3000
L411C           := $411C
L5393           := $5393
L6012           := $6012
L63C6           := $63C6
; ----------------------------------------------------------------------------
        eor     $55,x                           ; F000 55 55                    UU
        eor     $55,x                           ; F002 55 55                    UU
        eor     $55,x                           ; F004 55 55                    UU
        eor     $55,x                           ; F006 55 55                    UU
        eor     $55,x                           ; F008 55 55                    UU
        eor     $55,x                           ; F00A 55 55                    UU
        eor     $55,x                           ; F00C 55 55                    UU
        eor     $55,x                           ; F00E 55 55                    UU
        eor     $00,x                           ; F010 55 00                    U.
LF012:  brk                                     ; F012 00                       .
LF013:  brk                                     ; F013 00                       .
        brk                                     ; F014 00                       .
        brk                                     ; F015 00                       .
        brk                                     ; F016 00                       .
        brk                                     ; F017 00                       .
        brk                                     ; F018 00                       .
        brk                                     ; F019 00                       .
        brk                                     ; F01A 00                       .
        brk                                     ; F01B 00                       .
        brk                                     ; F01C 00                       .
        brk                                     ; F01D 00                       .
        brk                                     ; F01E 00                       .
        brk                                     ; F01F 00                       .
        brk                                     ; F020 00                       .
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
        and     $55,x                           ; F042 35 55                    5U
        sta     $65,x                           ; F044 95 65                    .e
        ldx     $46,y                           ; F046 B6 46                    .F
        .byte   $53                             ; F048 53                       S
        cli                                     ; F049 58                       X
        beq     LF04D                           ; F04A F0 01                    ..
        .byte   $0F                             ; F04C 0F                       .
LF04D:  sei                                     ; F04D 78                       x
        inc     $7F                             ; F04E E6 7F                    ..
        .byte   $FF                             ; F050 FF                       .
        sbc     LFBB7,x                         ; F051 FD B7 FB                 ...
        .byte   $97                             ; F054 97                       .
        lsr     $00                             ; F055 46 00                    F.
        brk                                     ; F057 00                       .
        .byte   $02                             ; F058 02                       .
        asl     $CB93,x                         ; F059 1E 93 CB                 ...
        .byte   $FF                             ; F05C FF                       .
        and     ($FF),y                         ; F05D 31 FF                    1.
        .byte   $04                             ; F05F 04                       .
        brk                                     ; F060 00                       .
        .byte   $02                             ; F061 02                       .
        .byte   $80                             ; F062 80                       .
        brk                                     ; F063 00                       .
        .byte   $62                             ; F064 62                       b
        and     $3DCC,x                         ; F065 3D CC 3D                 =.=
        ora     $C71E,y                         ; F068 19 1E C7                 ...
        inc     $71C6,x                         ; F06B FE C6 71                 ..q
        .byte   $FF                             ; F06E FF                       .
        sbc     LFFFF,x                         ; F06F FD FF FF                 ...
        .byte   $C3                             ; F072 C3                       .
        .byte   $10                             ; F073 10                       .
LF074:  .byte   $63                             ; F074 63                       c
        brk                                     ; F075 00                       .
        .byte   $4F                             ; F076 4F                       O
        dey                                     ; F077 88                       .
        sbc     $07F7                           ; F078 ED F7 07                 ...
        .byte   $80                             ; F07B 80                       .
        brk                                     ; F07C 00                       .
        brk                                     ; F07D 00                       .
        brk                                     ; F07E 00                       .
        brk                                     ; F07F 00                       .
        brk                                     ; F080 00                       .
        rts                                     ; F081 60                       `

; ----------------------------------------------------------------------------
        .byte   $64                             ; F082 64                       d
        .byte   $9F                             ; F083 9F                       .
        .byte   $FC                             ; F084 FC                       .
        .byte   $FF                             ; F085 FF                       .
        .byte   $BF                             ; F086 BF                       .
        .byte   $FF                             ; F087 FF                       .
        .byte   $3F                             ; F088 3F                       ?
        .byte   $F3                             ; F089 F3                       .
        and     #$25                            ; F08A 29 25                    )%
        .byte   $3C                             ; F08C 3C                       <
        .byte   $FF                             ; F08D FF                       .
        .byte   $BF                             ; F08E BF                       .
        .byte   $F3                             ; F08F F3                       .
        bne     LF0AD                           ; F090 D0 1B                    ..
        bpl     LF0D4                           ; F092 10 40                    .@
        stx     $E0F1                           ; F094 8E F1 E0                 ...
        sbc     ($D6),y                         ; F097 F1 D6                    ..
        sei                                     ; F099 78                       x
        .byte   $DB                             ; F09A DB                       .
        sec                                     ; F09B 38                       8
        brk                                     ; F09C 00                       .
        brk                                     ; F09D 00                       .
        sbc     ($01,x)                         ; F09E E1 01                    ..
        bit     $00                             ; F0A0 24 00                    $.
        .byte   $47                             ; F0A2 47                       G
        bmi     LF074                           ; F0A3 30 CF                    0.
        sbc     $18C3,x                         ; F0A5 FD C3 18                 ...
        sbc     LFBFC,y                         ; F0A8 F9 FC FB                 ...
        .byte   $AF                             ; F0AB AF                       .
        .byte   $FF                             ; F0AC FF                       .
LF0AD:  inc     $FF                             ; F0AD E6 FF                    ..
        .byte   $F7                             ; F0AF F7                       .
        sbc     $0C63,x                         ; F0B0 FD 63 0C                 .c.
        ora     ($C6,x)                         ; F0B3 01 C6                    ..
        cpx     #$82                            ; F0B5 E0 82                    ..
        adc     #$58                            ; F0B7 69 58                    iX
        brk                                     ; F0B9 00                       .
        brk                                     ; F0BA 00                       .
        brk                                     ; F0BB 00                       .
        .byte   $80                             ; F0BC 80                       .
        sec                                     ; F0BD 38                       8
        .byte   $EF                             ; F0BE EF                       .
        clc                                     ; F0BF 18                       .
        ror     $9C,x                           ; F0C0 76 9C                    v.
        .byte   $F3                             ; F0C2 F3                       .
        .byte   $DF                             ; F0C3 DF                       .
        .byte   $FB                             ; F0C4 FB                       .
        .byte   $FF                             ; F0C5 FF                       .
        .byte   $FF                             ; F0C6 FF                       .
        ora     $9F                             ; F0C7 05 9F                    ..
        cpx     #$E0                            ; F0C9 E0 E0                    ..
        .byte   $33                             ; F0CB 33                       3
        clc                                     ; F0CC 18                       .
        clc                                     ; F0CD 18                       .
        brk                                     ; F0CE 00                       .
        .byte   $0F                             ; F0CF 0F                       .
        .byte   $37                             ; F0D0 37                       7
        .byte   $9E                             ; F0D1 9E                       .
        brk                                     ; F0D2 00                       .
        .byte   $CE                             ; F0D3 CE                       .
LF0D4:  and     $3CEE,y                         ; F0D4 39 EE 3C                 9.<
        .byte   $EF                             ; F0D7 EF                       .
LF0D8:  .byte   $FF                             ; F0D8 FF                       .
        .byte   $F3                             ; F0D9 F3                       .
        .byte   $9C                             ; F0DA 9C                       .
        .byte   $33                             ; F0DB 33                       3
        .byte   $0C                             ; F0DC 0C                       .
        .byte   $3A                             ; F0DD 3A                       :
        dec     $00                             ; F0DE C6 00                    ..
        .byte   $C7                             ; F0E0 C7                       .
        clc                                     ; F0E1 18                       .
        cpx     #$0C                            ; F0E2 E0 0C                    ..
        brk                                     ; F0E4 00                       .
        php                                     ; F0E5 08                       .
        sei                                     ; F0E6 78                       x
LF0E7:  dec     LFFFF                           ; F0E7 CE FF FF                 ...
        lda     LF7E3,x                         ; F0EA BD E3 F7                 ...
        .byte   $FB                             ; F0ED FB                       .
        cpy     #$38                            ; F0EE C0 38                    .8
        cpy     $C017                           ; F0F0 CC 17 C0                 ...
        .byte   $80                             ; F0F3 80                       .
        .byte   $87                             ; F0F4 87                       .
        clc                                     ; F0F5 18                       .
        .byte   $1F                             ; F0F6 1F                       .
        inx                                     ; F0F7 E8                       .
        brk                                     ; F0F8 00                       .
        .byte   $E7                             ; F0F9 E7                       .
        .byte   $03                             ; F0FA 03                       .
        stx     $C720                           ; F0FB 8E 20 C7                 . .
        .byte   $1F                             ; F0FE 1F                       .
        .byte   $7F                             ; F0FF 7F                       .
        inc     $CFFF,x                         ; F100 FE FF CF                 ...
        .byte   $FF                             ; F103 FF                       .
        .byte   $FF                             ; F104 FF                       .
        bpl     LF109                           ; F105 10 02                    ..
        brk                                     ; F107 00                       .
        brk                                     ; F108 00                       .
LF109:  .byte   $0C                             ; F109 0C                       .
        .byte   $02                             ; F10A 02                       .
        stx     $CE38                           ; F10B 8E 38 CE                 .8.
        clc                                     ; F10E 18                       .
        asl     $7C                             ; F10F 06 7C                    .|
LF111:  cpx     #$7C                            ; F111 E0 7C                    .|
        .byte   $7F                             ; F113 7F                       .
        ldx     LF7F7                           ; F114 AE F7 F7                 ...
        adc     $387E,y                         ; F117 79 7E 38                 y~8
        and     ($8F,x)                         ; F11A 21 8F                    !.
        .byte   $E7                             ; F11C E7                       .
        .byte   $CF                             ; F11D CF                       .
        and     ($00),y                         ; F11E 31 00                    1.
        sec                                     ; F120 38                       8
        .byte   $47                             ; F121 47                       G
        sty     $88E7                           ; F122 8C E7 88                 ...
LF125:  bvs     LF12B                           ; F125 70 04                    p.
        and     ($8E),y                         ; F127 31 8E                    1.
        .byte   $FF                             ; F129 FF                       .
        .byte   $EE                             ; F12A EE                       .
LF12B:  .byte   $1B                             ; F12B 1B                       .
        .byte   $FF                             ; F12C FF                       .
        .byte   $3C                             ; F12D 3C                       <
        .byte   $3F                             ; F12E 3F                       ?
        php                                     ; F12F 08                       .
        ora     ($00,x)                         ; F130 01 00                    ..
        bmi     LF174                           ; F132 30 40                    0@
        bmi     LF125                           ; F134 30 EF                    0.
        tya                                     ; F136 98                       .
        .byte   $F3                             ; F137 F3                       .
        .byte   $FF                             ; F138 FF                       .
        .byte   $63                             ; F139 63                       c
        inc     $EE31,x                         ; F13A FE 31 EE                 .1.
        sec                                     ; F13D 38                       8
        .byte   $E7                             ; F13E E7                       .
        ldy     $9EFF,x                         ; F13F BC FF 9E                 ...
        .byte   $33                             ; F142 33                       3
        stx     $8471                           ; F143 8E 71 84                 .q.
        bpl     LF148                           ; F146 10 00                    ..
LF148:  bmi     LF111                           ; F148 30 C7                    0.
        .byte   $07                             ; F14A 07                       .
        .byte   $1B                             ; F14B 1B                       .
        cpx     #$79                            ; F14C E0 79                    .y
        cpy     #$01                            ; F14E C0 01                    ..
        cpy     $C7F1                           ; F150 CC F1 C7                 ...
        .byte   $9F                             ; F153 9F                       .
        .byte   $FF                             ; F154 FF                       .
        .byte   $FF                             ; F155 FF                       .
        .byte   $FB                             ; F156 FB                       .
        .byte   $FF                             ; F157 FF                       .
        .byte   $1F                             ; F158 1F                       .
        .byte   $04                             ; F159 04                       .
        brk                                     ; F15A 00                       .
        brk                                     ; F15B 00                       .
        .byte   $04                             ; F15C 04                       .
        .byte   $83                             ; F15D 83                       .
        .byte   $80                             ; F15E 80                       .
        .byte   $23                             ; F15F 23                       #
        dec     $8639                           ; F160 CE 39 86                 .9.
        brk                                     ; F163 00                       .
        .byte   $1F                             ; F164 1F                       .
        .byte   $3C                             ; F165 3C                       <
        .byte   $EF                             ; F166 EF                       .
        .byte   $8F                             ; F167 8F                       .
        sbc     $FF                             ; F168 E5 FF                    ..
        and     $1F9F,x                         ; F16A 3D 9F 1F                 =..
        .byte   $47                             ; F16D 47                       G
        iny                                     ; F16E C8                       .
LF16F:  .byte   $E3                             ; F16F E3                       .
        .byte   $FC                             ; F170 FC                       .
        .byte   $73                             ; F171 73                       s
        .byte   $0C                             ; F172 0C                       .
        brk                                     ; F173 00                       .
LF174:  .byte   $C7                             ; F174 C7                       .
        ora     $39E1,y                         ; F175 19 E1 39                 ..9
        jsr     L411C                           ; F178 20 1C 41                  .A
        cpy     $F3                             ; F17B C4 F3                    ..
        .byte   $DF                             ; F17D DF                       .
        .byte   $FB                             ; F17E FB                       .
        .byte   $C2                             ; F17F C2                       .
LF180:  .byte   $3F                             ; F180 3F                       ?
LF181:  .byte   $EF                             ; F181 EF                       .
        .byte   $0F                             ; F182 0F                       .
        rts                                     ; F183 60                       `

; ----------------------------------------------------------------------------
        brk                                     ; F184 00                       .
        brk                                     ; F185 00                       .
        asl     $18                             ; F186 06 18                    ..
        cpy     $1D                             ; F188 C4 1D                    ..
        .byte   $F7                             ; F18A F7                       .
        .byte   $FC                             ; F18B FC                       .
        .byte   $7F                             ; F18C 7F                       .
        iny                                     ; F18D C8                       .
        .byte   $7F                             ; F18E 7F                       .
        sty     $E739                           ; F18F 8C 39 E7                 .9.
        sta     LFFE7,y                         ; F192 99 E7 FF                 ...
        .byte   $F3                             ; F195 F3                       .
        .byte   $9C                             ; F196 9C                       .
        .byte   $73                             ; F197 73                       s
        .byte   $9E                             ; F198 9E                       .
        jsr     L0004                           ; F199 20 04 00                  ..
        rti                                     ; F19C 40                       @

; ----------------------------------------------------------------------------
        bmi     LF181                           ; F19D 30 E2                    0.
        php                                     ; F19F 08                       .
        .byte   $23                             ; F1A0 23                       #
        .byte   $FC                             ; F1A1 FC                       .
        sbc     ($80,x)                         ; F1A2 E1 80                    ..
        and     ($1C),y                         ; F1A4 31 1C                    1.
        bcs     LF16F                           ; F1A6 B0 C7                    ..
        .byte   $FF                             ; F1A8 FF                       .
        .byte   $FF                             ; F1A9 FF                       .
        .byte   $FF                             ; F1AA FF                       .
        .byte   $FF                             ; F1AB FF                       .
        .byte   $BF                             ; F1AC BF                       .
        .byte   $1F                             ; F1AD 1F                       .
        cpx     #$01                            ; F1AE E0 01                    ..
        brk                                     ; F1B0 00                       .
        sec                                     ; F1B1 38                       8
        rts                                     ; F1B2 60                       `

; ----------------------------------------------------------------------------
        .byte   $80                             ; F1B3 80                       .
        .byte   $83                             ; F1B4 83                       .
        .byte   $FC                             ; F1B5 FC                       .
        .byte   $79                             ; F1B6 79                       y
        .byte   $7C                             ; F1B7 7C                       |
LF1B8:  brk                                     ; F1B8 00                       .
        dec     $C7FB                           ; F1B9 CE FB C7                 ...
        .byte   $FF                             ; F1BC FF                       .
        .byte   $C7                             ; F1BD C7                       .
        sec                                     ; F1BE 38                       8
        .byte   $87                             ; F1BF 87                       .
        .byte   $3F                             ; F1C0 3F                       ?
        lsr     $0820                           ; F1C1 4E 20 08                 N .
LF1C4:  asl     $801C                           ; F1C4 0E 1C 80                 ...
        .byte   $90                             ; F1C7 90                       .
LF1C8:  .byte   $FF                             ; F1C8 FF                       .
        sec                                     ; F1C9 38                       8
        inc     a:$1F,x                         ; F1CA FE 1F 00                 ...
        php                                     ; F1CD 08                       .
        sbc     $39FD,y                         ; F1CE F9 FD 39                 ..9
        sed                                     ; F1D1 F8                       .
        .byte   $FF                             ; F1D2 FF                       .
        .byte   $FF                             ; F1D3 FF                       .
        .byte   $3F                             ; F1D4 3F                       ?
        .byte   $47                             ; F1D5 47                       G
LF1D6:  brk                                     ; F1D6 00                       .
        .byte   $43                             ; F1D7 43                       C
        brk                                     ; F1D8 00                       .
        cpx     #$00                            ; F1D9 E0 00                    ..
        .byte   $03                             ; F1DB 03                       .
        .byte   $8F                             ; F1DC 8F                       .
        .byte   $FF                             ; F1DD FF                       .
        sbc     ($BC),y                         ; F1DE F1 BC                    ..
        .byte   $77                             ; F1E0 77                       w
        .byte   $9C                             ; F1E1 9C                       .
        .byte   $67                             ; F1E2 67                       g
        .byte   $04                             ; F1E3 04                       .
        .byte   $33                             ; F1E4 33                       3
        .byte   $04                             ; F1E5 04                       .
LF1E6:  bmi     LF1D6                           ; F1E6 30 EE                    0.
        .byte   $3F                             ; F1E8 3F                       ?
        inc     $39                             ; F1E9 E6 39                    .9
        .byte   $E3                             ; F1EB E3                       .
        .byte   $1F                             ; F1EC 1F                       .
        .byte   $33                             ; F1ED 33                       3
        dey                                     ; F1EE 88                       .
        jsr     L63C6                           ; F1EF 20 C6 63                  .c
        .byte   $FF                             ; F1F2 FF                       .
        bpl     LF1C4                           ; F1F3 10 CF                    ..
        clc                                     ; F1F5 18                       .
        rol     $E3C0,x                         ; F1F6 3E C0 E3                 >..
        .byte   $CF                             ; F1F9 CF                       .
        .byte   $0F                             ; F1FA 0F                       .
        inc     $0FF8,x                         ; F1FB FE F8 0F                 ...
        sed                                     ; F1FE F8                       .
        ora     $01C0,y                         ; F1FF 19 C0 01                 ...
        .byte   $3F                             ; F202 3F                       ?
        .byte   $3C                             ; F203 3C                       <
        .byte   $C3                             ; F204 C3                       .
        brk                                     ; F205 00                       .
        .byte   $42                             ; F206 42                       B
        inc     $DEE3,x                         ; F207 FE E3 DE                 ...
        .byte   $07                             ; F20A 07                       .
        php                                     ; F20B 08                       .
        sed                                     ; F20C F8                       .
        lda     ($DC),y                         ; F20D B1 DC                    ..
        .byte   $7F                             ; F20F 7F                       .
        sbc     $0FF1,y                         ; F210 F9 F1 0F                 ...
        .byte   $1F                             ; F213 1F                       .
        bmi     LF1D6                           ; F214 30 C0                    0.
        brk                                     ; F216 00                       .
        .byte   $07                             ; F217 07                       .
        bpl     LF1E6                           ; F218 10 CC                    ..
        ldy     #$FF                            ; F21A A0 FF                    ..
        .byte   $BF                             ; F21C BF                       .
        sbc     ($F8),y                         ; F21D F1 F8                    ..
        .byte   $03                             ; F21F 03                       .
        .byte   $1C                             ; F220 1C                       .
        sei                                     ; F221 78                       x
        .byte   $80                             ; F222 80                       .
        .byte   $EF                             ; F223 EF                       .
        .byte   $03                             ; F224 03                       .
        .byte   $FC                             ; F225 FC                       .
        .byte   $FF                             ; F226 FF                       .
        .byte   $FF                             ; F227 FF                       .
        .byte   $FB                             ; F228 FB                       .
        .byte   $1B                             ; F229 1B                       .
        brk                                     ; F22A 00                       .
        .byte   $03                             ; F22B 03                       .
        .byte   $0C                             ; F22C 0C                       .
        bvs     LF247                           ; F22D 70 18                    p.
        rti                                     ; F22F 40                       @

; ----------------------------------------------------------------------------
        stx     $FF                             ; F230 86 FF                    ..
        cld                                     ; F232 D8                       .
        .byte   $FF                             ; F233 FF                       .
        .byte   $07                             ; F234 07                       .
        ror     a:$FC,x                         ; F235 7E FC 00                 ~..
LF238:  .byte   $C7                             ; F238 C7                       .
        brk                                     ; F239 00                       .
        inc     $23C0,x                         ; F23A FE C0 23                 ..#
        .byte   $3F                             ; F23D 3F                       ?
        ora     ($E4),y                         ; F23E 11 E4                    ..
        .byte   $C3                             ; F240 C3                       .
        sta     ($79,x)                         ; F241 81 79                    .y
        clc                                     ; F243 18                       .
        ror     $EF1F,x                         ; F244 7E 1F EF                 ~..
LF247:  sbc     ($27,x)                         ; F247 E1 27                    .'
        .byte   $7C                             ; F249 7C                       |
        .byte   $3F                             ; F24A 3F                       ?
        asl     $80                             ; F24B 06 80                    ..
        .byte   $AF                             ; F24D AF                       .
        lda     ($E3,x)                         ; F24E A1 E3                    ..
        and     $9C67,x                         ; F250 3D 67 9C                 =g.
        .byte   $03                             ; F253 03                       .
        sty     $0103                           ; F254 8C 03 01                 ...
        asl     LF180,x                         ; F257 1E 80 F1                 ...
        .byte   $3F                             ; F25A 3F                       ?
        dec     $CE5F,x                         ; F25B DE 5F CE                 ._.
        and     ($DC,x)                         ; F25E 21 DC                    !.
        .byte   $7F                             ; F260 7F                       .
        ldx     $A1B7,y                         ; F261 BE B7 A1                 ...
        .byte   $93                             ; F264 93                       .
        .byte   $73                             ; F265 73                       s
        sty     $8400                           ; F266 8C 00 84                 ...
        sbc     ($0F),y                         ; F269 F1 0F                    ..
        bpl     LF271                           ; F26B 10 04                    ..
        .byte   $B0                             ; F26D B0                       .
LF26E:  .byte   $FF                             ; F26E FF                       .
        .byte   $3F                             ; F26F 3F                       ?
        .byte   $F2                             ; F270 F2                       .
LF271:  sed                                     ; F271 F8                       .
        ora     ($1E,x)                         ; F272 01 1E                    ..
        .byte   $7C                             ; F274 7C                       |
        cpy     #$67                            ; F275 C0 67                    .g
        .byte   $03                             ; F277 03                       .
        .byte   $FC                             ; F278 FC                       .
        .byte   $FF                             ; F279 FF                       .
        .byte   $FF                             ; F27A FF                       .
        .byte   $FB                             ; F27B FB                       .
        .byte   $1B                             ; F27C 1B                       .
        rti                                     ; F27D 40                       @

; ----------------------------------------------------------------------------
        ora     ($06,x)                         ; F27E 01 06                    ..
        bvs     LF28A                           ; F280 70 08                    p.
        rts                                     ; F282 60                       `

; ----------------------------------------------------------------------------
        .byte   $C7                             ; F283 C7                       .
        .byte   $7F                             ; F284 7F                       .
        inx                                     ; F285 E8                       .
        .byte   $FF                             ; F286 FF                       .
        .byte   $07                             ; F287 07                       .
        .byte   $3E                             ; F288 3E                       >
        .byte   $7E                             ; F289 7E                       ~
LF28A:  brk                                     ; F28A 00                       .
        .byte   $C3                             ; F28B C3                       .
        brk                                     ; F28C 00                       .
        .byte   $7F                             ; F28D 7F                       .
        cpx     #$31                            ; F28E E0 31                    .1
        .byte   $3F                             ; F290 3F                       ?
        ora     ($E2,x)                         ; F291 01 E2                    ..
        .byte   $C7                             ; F293 C7                       .
LF294:  cmp     ($78,x)                         ; F294 C1 78                    .x
        clc                                     ; F296 18                       .
        rol     $E79F,x                         ; F297 3E 9F E7                 >..
        sbc     ($33),y                         ; F29A F1 33                    .3
        ldy     $061F,x                         ; F29C BC 1F 06                 ...
        cpy     #$AF                            ; F29F C0 AF                    ..
        .byte   $B0                             ; F2A1 B0                       .
LF2A2:  sbc     ($9D),y                         ; F2A2 F1 9D                    ..
        .byte   $67                             ; F2A4 67                       g
        asl     $C403,x                         ; F2A5 1E 03 C4                 ...
        .byte   $03                             ; F2A8 03                       .
        ora     ($1B,x)                         ; F2A9 01 1B                    ..
        .byte   $80                             ; F2AB 80                       .
        sbc     ($3F),y                         ; F2AC F1 3F                    .?
        dec     $CE3F,x                         ; F2AE DE 3F CE                 .?.
        and     ($DC,x)                         ; F2B1 21 DC                    !.
        .byte   $3F                             ; F2B3 3F                       ?
        ldx     $E0BF,y                         ; F2B4 BE BF E0                 ...
        .byte   $93                             ; F2B7 93                       .
LF2B8:  .byte   $7B                             ; F2B8 7B                       {
        .byte   $0C                             ; F2B9 0C                       .
        brk                                     ; F2BA 00                       .
        .byte   $04                             ; F2BB 04                       .
        sed                                     ; F2BC F8                       .
        .byte   $0F                             ; F2BD 0F                       .
        .byte   $13                             ; F2BE 13                       .
        .byte   $80                             ; F2BF 80                       .
        clc                                     ; F2C0 18                       .
        .byte   $F3                             ; F2C1 F3                       .
        .byte   $7F                             ; F2C2 7F                       .
        ror     $E138,x                         ; F2C3 7E 38 E1                 ~8.
        .byte   $1F                             ; F2C6 1F                       .
        asl     $29F8,x                         ; F2C7 1E F8 29                 ..)
        .byte   $80                             ; F2CA 80                       .
        ora     ($FC,x)                         ; F2CB 01 FC                    ..
        .byte   $FF                             ; F2CD FF                       .
        .byte   $9F                             ; F2CE 9F                       .
        and     ($F1),y                         ; F2CF 31 F1                    1.
        beq     LF2A2                           ; F2D1 F0 CF                    ..
        ora     ($C6,x)                         ; F2D3 01 C6                    ..
        .byte   $83                             ; F2D5 83                       .
        and     ($EC,x)                         ; F2D6 21 EC                    !.
        ldy     $8783,x                         ; F2D8 BC 83 87                 ...
        .byte   $07                             ; F2DB 07                       .
        .byte   $DB                             ; F2DC DB                       .
        .byte   $FF                             ; F2DD FF                       .
        .byte   $80                             ; F2DE 80                       .
        .byte   $32                             ; F2DF 32                       2
        .byte   $0F                             ; F2E0 0F                       .
        .byte   $FC                             ; F2E1 FC                       .
        .byte   $E7                             ; F2E2 E7                       .
        ora     ($00,x)                         ; F2E3 01 00                    ..
        php                                     ; F2E5 08                       .
        .byte   $FC                             ; F2E6 FC                       .
        .byte   $FF                             ; F2E7 FF                       .
        ora     $7806,y                         ; F2E8 19 06 78                 ..x
        .byte   $E2                             ; F2EB E2                       .
LF2EC:  .byte   $0F                             ; F2EC 0F                       .
        .byte   $CF                             ; F2ED CF                       .
        lda     $80E1,x                         ; F2EE BD E1 80                 ...
        .byte   $7F                             ; F2F1 7F                       .
        asl     $83B1,x                         ; F2F2 1E B1 83                 ...
        .byte   $07                             ; F2F5 07                       .
        .byte   $3C                             ; F2F6 3C                       <
        .byte   $FC                             ; F2F7 FC                       .
        brk                                     ; F2F8 00                       .
        stx     $FB,y                           ; F2F9 96 FB                    ..
        .byte   $FF                             ; F2FB FF                       .
        ora     ($03,x)                         ; F2FC 01 03                    ..
        .byte   $0C                             ; F2FE 0C                       .
        .byte   $7F                             ; F2FF 7F                       .
        sty     $61                             ; F300 84 61                    .a
        .byte   $0F                             ; F302 0F                       .
        bvs     LF2EC                           ; F303 70 E7                    p.
        adc     ($EF),y                         ; F305 71 EF                    q.
        and     $80F4,x                         ; F307 3D F4 80                 =..
        .byte   $03                             ; F30A 03                       .
        ldx     $C3FF,y                         ; F30B BE FF C3                 ...
        bpl     LF317                           ; F30E 10 07                    ..
        .byte   $FC                             ; F310 FC                       .
        .byte   $E7                             ; F311 E7                       .
        ora     ($01,x)                         ; F312 01 01                    ..
        rol     LFEF0,x                         ; F314 3E F0 FE                 >..
LF317:  .byte   $0F                             ; F317 0F                       .
        brk                                     ; F318 00                       .
        .byte   $0C                             ; F319 0C                       .
        beq     LF2B8                           ; F31A F0 9C                    ..
        .byte   $03                             ; F31C 03                       .
        stx     LF0E7                           ; F31D 8E E7 F0                 ...
        sbc     $1C3F,x                         ; F320 FD 3F 1C                 .?.
        .byte   $FF                             ; F323 FF                       .
        .byte   $87                             ; F324 87                       .
        sta     $1805,x                         ; F325 9D 05 18                 ...
        cpx     #$BB                            ; F328 E0 BB                    ..
        .byte   $E3                             ; F32A E3                       .
        .byte   $6F                             ; F32B 6F                       o
        jsr     L3000                           ; F32C 20 00 30                  .0
        .byte   $FC                             ; F32F FC                       .
        .byte   $1F                             ; F330 1F                       .
        .byte   $C3                             ; F331 C3                       .
        rts                                     ; F332 60                       `

; ----------------------------------------------------------------------------
        .byte   $E7                             ; F333 E7                       .
        ora     ($FF),y                         ; F334 11 FF                    ..
        sed                                     ; F336 F8                       .
        tay                                     ; F337 A8                       .
        .byte   $87                             ; F338 87                       .
        ora     ($E7,x)                         ; F339 01 E7                    ..
        sec                                     ; F33B 38                       8
        .byte   $1F                             ; F33C 1F                       .
        bpl     LF35B                           ; F33D 10 1C                    ..
        .byte   $FA                             ; F33F FA                       .
        .byte   $3F                             ; F340 3F                       ?
        .byte   $1F                             ; F341 1F                       .
        bcs     LF385                           ; F342 B0 41                    .A
        .byte   $DE                             ; F344 DE                       .
LF345:  rol     $433C,x                         ; F345 3E 3C 43                 ><C
        .byte   $07                             ; F348 07                       .
        .byte   $63                             ; F349 63                       c
        .byte   $FC                             ; F34A FC                       .
        adc     $1C96,y                         ; F34B 79 96 1C                 y..
        .byte   $E7                             ; F34E E7                       .
        sed                                     ; F34F F8                       .
        adc     ($10,x)                         ; F350 61 10                    a.
        .byte   $3C                             ; F352 3C                       <
        .byte   $80                             ; F353 80                       .
        .byte   $F4                             ; F354 F4                       .
        .byte   $EF                             ; F355 EF                       .
        clc                                     ; F356 18                       .
LF357:  brk                                     ; F357 00                       .
        sec                                     ; F358 38                       8
        beq     LF357                           ; F359 F0 FC                    ..
LF35B:  .byte   $E3                             ; F35B E3                       .
        .byte   $BF                             ; F35C BF                       .
        ora     ($BE),y                         ; F35D 11 BE                    ..
        cpx     LF7E3                           ; F35F EC E3 F7                 ...
        adc     $4600,y                         ; F362 79 00 46                 y.F
        .byte   $07                             ; F365 07                       .
        .byte   $DF                             ; F366 DF                       .
        .byte   $03                             ; F367 03                       .
        cpx     #$3B                            ; F368 E0 3B                    .;
        stx     $0731                           ; F36A 8E 31 07                 .1.
        bpl     LF3DE                           ; F36D 10 6F                    .o
        sed                                     ; F36F F8                       .
        sbc     ($1F,x)                         ; F370 E1 1F                    ..
        brk                                     ; F372 00                       .
        asl     $C7E1                           ; F373 0E E1 C7                 ...
        inc     LFCFA,x                         ; F376 FE FA FC                 ...
        .byte   $E3                             ; F379 E3                       .
        ora     #$7D                            ; F37A 09 7D                    .}
        brk                                     ; F37C 00                       .
        beq     LF386                           ; F37D F0 07                    ..
        .byte   $1E                             ; F37F 1E                       .
LF380:  sei                                     ; F380 78                       x
        php                                     ; F381 08                       .
        .byte   $83                             ; F382 83                       .
        .byte   $AF                             ; F383 AF                       .
        .byte   $E3                             ; F384 E3                       .
LF385:  .byte   $FC                             ; F385 FC                       .
LF386:  .byte   $77                             ; F386 77                       w
        brk                                     ; F387 00                       .
        .byte   $9F                             ; F388 9F                       .
        .byte   $DC                             ; F389 DC                       .
        .byte   $87                             ; F38A 87                       .
        cmp     $1E3C,y                         ; F38B D9 3C 1E                 .<.
        ldx     #$83                            ; F38E A2 83                    ..
        .byte   $C7                             ; F390 C7                       .
        lda     ($B8,x)                         ; F391 A1 B8                    ..
        .byte   $7F                             ; F393 7F                       .
        .byte   $7C                             ; F394 7C                       |
        bpl     LF39E                           ; F395 10 07                    ..
        php                                     ; F397 08                       .
        stx     $E3F9                           ; F398 8E F9 E3                 ...
        sec                                     ; F39B 38                       8
        bvs     LF3DA                           ; F39C 70 3C                    p<
LF39E:  .byte   $E3                             ; F39E E3                       .
        .byte   $0F                             ; F39F 0F                       .
        .byte   $9F                             ; F3A0 9F                       .
        .byte   $F2                             ; F3A1 F2                       .
        bmi     LF345                           ; F3A2 30 A1                    0.
        .byte   $3C                             ; F3A4 3C                       <
        .byte   $E7                             ; F3A5 E7                       .
        ora     ($C1,x)                         ; F3A6 01 C1                    ..
        .byte   $83                             ; F3A8 83                       .
        .byte   $FF                             ; F3A9 FF                       .
        .byte   $F3                             ; F3AA F3                       .
        ora     ($1D,x)                         ; F3AB 01 1D                    ..
        cpy     $EF                             ; F3AD C4 EF                    ..
        .byte   $C3                             ; F3AF C3                       .
        .byte   $33                             ; F3B0 33                       3
        .byte   $74                             ; F3B1 74                       t
        bmi     LF380                           ; F3B2 30 CC                    0.
        .byte   $9F                             ; F3B4 9F                       .
        .byte   $67                             ; F3B5 67                       g
LF3B6:  cmp     #$71                            ; F3B6 C9 71                    .q
        stx     $0C1F                           ; F3B8 8E 1F 0C                 ...
        cmp     ($03,x)                         ; F3BB C1 03                    ..
        clc                                     ; F3BD 18                       .
        .byte   $FF                             ; F3BE FF                       .
        sty     $8003                           ; F3BF 8C 03 80                 ...
        .byte   $03                             ; F3C2 03                       .
        dec     LFE3F                           ; F3C3 CE 3F FE                 .?.
        .byte   $1F                             ; F3C6 1F                       .
        cmp     ($CF,x)                         ; F3C7 C1 CF                    ..
        rol     $9F7E,x                         ; F3C9 3E 7E 9F                 >~.
        .byte   $07                             ; F3CC 07                       .
        rts                                     ; F3CD 60                       `

; ----------------------------------------------------------------------------
        .byte   $74                             ; F3CE 74                       t
        beq     LF40E                           ; F3CF F0 3D                    .=
        brk                                     ; F3D1 00                       .
        ldx     $18C7,y                         ; F3D2 BE C7 18                 ...
        .byte   $63                             ; F3D5 63                       c
        rti                                     ; F3D6 40                       @

; ----------------------------------------------------------------------------
        sbc     ($0E),y                         ; F3D7 F1 0E                    ..
        .byte   $1F                             ; F3D9 1F                       .
LF3DA:  .byte   $FE                             ; F3DA FE                       .
        .byte   $01                             ; F3DB 01                       .
LF3DC:  cpx     #$10                            ; F3DC E0 10                    ..
LF3DE:  ror     $AFEC,x                         ; F3DE 7E EC AF                 ~..
        .byte   $CF                             ; F3E1 CF                       .
        .byte   $3F                             ; F3E2 3F                       ?
        .byte   $9E                             ; F3E3 9E                       .
        .byte   $E0                             ; F3E4 E0                       .
LF3E5:  .byte   $0F                             ; F3E5 0F                       .
LF3E6:  brk                                     ; F3E6 00                       .
        ror     $01E0,x                         ; F3E7 7E E0 01                 ~..
        .byte   $8F                             ; F3EA 8F                       .
        bmi     LF3E5                           ; F3EB 30 F8                    0.
        .byte   $3A                             ; F3ED 3A                       :
        dec     $077F                           ; F3EE CE 7F 07                 ...
        beq     LF3B6                           ; F3F1 F0 C3                    ..
        adc     $CD98,x                         ; F3F3 7D 98 CD                 }..
        .byte   $E3                             ; F3F6 E3                       .
        .byte   $62                             ; F3F7 62                       b
        sec                                     ; F3F8 38                       8
        inx                                     ; F3F9 E8                       .
        .byte   $1C                             ; F3FA 1C                       .
        asl     $C7FD                           ; F3FB 0E FD C7                 ...
        .byte   $03                             ; F3FE 03                       .
LF3FF:  .byte   $74                             ; F3FF 74                       t
        cpy     #$D1                            ; F400 C0 D1                    ..
        ora     LFE30,y                         ; F402 19 30 FE                 .0.
        .byte   $43                             ; F405 43                       C
        cpy     #$7F                            ; F406 C0 7F                    ..
        .byte   $3C                             ; F408 3C                       <
        cpx     #$C7                            ; F409 E0 C7                    ..
        .byte   $1F                             ; F40B 1F                       .
        .byte   $FE                             ; F40C FE                       .
        .byte   $70                             ; F40D 70                       p
LF40E:  cpy     #$1E                            ; F40E C0 1E                    ..
        asl     $B8F0,x                         ; F410 1E F0 B8                 ...
        .byte   $03                             ; F413 03                       .
        sbc     ($67),y                         ; F414 F1 67                    .g
        beq     LF454                           ; F416 F0 3C                    .<
        beq     LF3E6                           ; F418 F0 CC                    ..
        cpx     #$C3                            ; F41A E0 C3                    ..
        .byte   $F7                             ; F41C F7                       .
        .byte   $CF                             ; F41D CF                       .
        cmp     ($81,x)                         ; F41E C1 81                    ..
        lda     ($8B,x)                         ; F420 A1 8B                    ..
        ora     ($7E,x)                         ; F422 01 7E                    .~
        .byte   $07                             ; F424 07                       .
        ror     $0FFE,x                         ; F425 7E FE 0F                 ~..
        .byte   $80                             ; F428 80                       .
        .byte   $3C                             ; F429 3C                       <
LF42A:  beq     LF3DC                           ; F42A F0 B0                    ..
        .byte   $3F                             ; F42C 3F                       ?
        cpy     #$F1                            ; F42D C0 F1                    ..
        beq     LF432                           ; F42F F0 01                    ..
        .byte   $7E                             ; F431 7E                       ~
LF432:  bpl     LF42A                           ; F432 10 F6                    ..
        inc     $F9,x                           ; F434 F6 F9                    ..
        cld                                     ; F436 D8                       .
        .byte   $43                             ; F437 43                       C
        inx                                     ; F438 E8                       .
        .byte   $37                             ; F439 37                       7
        .byte   $23                             ; F43A 23                       #
        cpx     #$0A                            ; F43B E0 0A                    ..
        asl     $8E                             ; F43D 06 8E                    ..
        cpy     $8EE3                           ; F43F CC E3 8E                 ...
        .byte   $0F                             ; F442 0F                       .
        inc     LFFE3,x                         ; F443 FE E3 FF                 ...
        .byte   $FC                             ; F446 FC                       .
        .byte   $03                             ; F447 03                       .
        .byte   $80                             ; F448 80                       .
        .byte   $17                             ; F449 17                       .
        .byte   $80                             ; F44A 80                       .
        adc     ($0C),y                         ; F44B 71 0C                    q.
        sec                                     ; F44D 38                       8
        inc     $E3                             ; F44E E6 E3                    ..
        .byte   $EF                             ; F450 EF                       .
        .byte   $7F                             ; F451 7F                       .
        .byte   $80                             ; F452 80                       .
        .byte   $9C                             ; F453 9C                       .
LF454:  .byte   $03                             ; F454 03                       .
        ldx     $CE19,y                         ; F455 BE 19 CE                 ...
        bmi     LF469                           ; F458 30 0F                    0.
        .byte   $3C                             ; F45A 3C                       <
        lda     LF012,y                         ; F45B B9 12 F0                 ...
        .byte   $FF                             ; F45E FF                       .
        cpx     #$83                            ; F45F E0 83                    ..
        rts                                     ; F461 60                       `

; ----------------------------------------------------------------------------
        cpy     $3D                             ; F462 C4 3D                    .=
        .byte   $C2                             ; F464 C2                       .
        .byte   $9F                             ; F465 9F                       .
        .byte   $A3                             ; F466 A3                       .
        brk                                     ; F467 00                       .
        .byte   $09                             ; F468 09                       .
LF469:  asl     $DFFF,x                         ; F469 1E FF DF                 ...
        rol     $72FC,x                         ; F46C 3E FC 72                 >.r
        .byte   $FC                             ; F46F FC                       .
        and     LF81C,x                         ; F470 3D 1C F8                 =..
        bne     LF477                           ; F473 D0 02                    ..
        .byte   $12                             ; F475 12                       .
        rts                                     ; F476 60                       `

; ----------------------------------------------------------------------------
LF477:  beq     LF49D                           ; F477 F0 24                    .$
        .byte   $FA                             ; F479 FA                       .
        sbc     $85D0,x                         ; F47A FD D0 85                 ...
        .byte   $0F                             ; F47D 0F                       .
        .byte   $80                             ; F47E 80                       .
        sbc     ($E1,x)                         ; F47F E1 E1                    ..
        .byte   $CF                             ; F481 CF                       .
        .byte   $CF                             ; F482 CF                       .
        .byte   $3C                             ; F483 3C                       <
        .byte   $CF                             ; F484 CF                       .
        .byte   $13                             ; F485 13                       .
        .byte   $4F                             ; F486 4F                       O
        .byte   $FC                             ; F487 FC                       .
        .byte   $63                             ; F488 63                       c
        brk                                     ; F489 00                       .
        .byte   $1F                             ; F48A 1F                       .
        php                                     ; F48B 08                       .
        beq     LF48F                           ; F48C F0 01                    ..
        plp                                     ; F48E 28                       (
LF48F:  inc     $C05F,x                         ; F48F FE 5F C0                 ._.
        .byte   $0F                             ; F492 0F                       .
        ror     $CBFC,x                         ; F493 7E FC CB                 ~..
        .byte   $0F                             ; F496 0F                       .
        eor     $55,x                           ; F497 55 55                    UU
        eor     $55,x                           ; F499 55 55                    UU
        eor     $55,x                           ; F49B 55 55                    UU
LF49D:  eor     $55,x                           ; F49D 55 55                    UU
        eor     $55,x                           ; F49F 55 55                    UU
        brk                                     ; F4A1 00                       .
        brk                                     ; F4A2 00                       .
        brk                                     ; F4A3 00                       .
        brk                                     ; F4A4 00                       .
        brk                                     ; F4A5 00                       .
        brk                                     ; F4A6 00                       .
        brk                                     ; F4A7 00                       .
        brk                                     ; F4A8 00                       .
        brk                                     ; F4A9 00                       .
        brk                                     ; F4AA 00                       .
        brk                                     ; F4AB 00                       .
        brk                                     ; F4AC 00                       .
        brk                                     ; F4AD 00                       .
        brk                                     ; F4AE 00                       .
        brk                                     ; F4AF 00                       .
        brk                                     ; F4B0 00                       .
        brk                                     ; F4B1 00                       .
        brk                                     ; F4B2 00                       .
        brk                                     ; F4B3 00                       .
        brk                                     ; F4B4 00                       .
        brk                                     ; F4B5 00                       .
LF4B6:  brk                                     ; F4B6 00                       .
        brk                                     ; F4B7 00                       .
        brk                                     ; F4B8 00                       .
        brk                                     ; F4B9 00                       .
        brk                                     ; F4BA 00                       .
        brk                                     ; F4BB 00                       .
        brk                                     ; F4BC 00                       .
        brk                                     ; F4BD 00                       .
        brk                                     ; F4BE 00                       .
        brk                                     ; F4BF 00                       .
        eor     $CD,x                           ; F4C0 55 CD                    U.
        .byte   $FA                             ; F4C2 FA                       .
        eor     ($06,x)                         ; F4C3 41 06                    A.
        and     $0A61,x                         ; F4C5 3D 61 0A                 =a.
        .byte   $80                             ; F4C8 80                       .
        .byte   $DC                             ; F4C9 DC                       .
        lda     LFBFF,y                         ; F4CA B9 FF FB                 ...
        .byte   $7F                             ; F4CD 7F                       .
        .byte   $DA                             ; F4CE DA                       .
        sbc     $02                             ; F4CF E5 02                    ..
        ora     ($02,x)                         ; F4D1 01 02                    ..
        .byte   $1A                             ; F4D3 1A                       .
        bvs     LF4B6                           ; F4D4 70 E0                    p.
        cmp     $6C07,y                         ; F4D6 D9 07 6C                 ..l
        bcc     LF53B                           ; F4D9 90 60                    .`
        .byte   $7F                             ; F4DB 7F                       .
        .byte   $7F                             ; F4DC 7F                       .
        .byte   $F7                             ; F4DD F7                       .
        .byte   $FF                             ; F4DE FF                       .
        .byte   $FF                             ; F4DF FF                       .
        .byte   $FF                             ; F4E0 FF                       .
        ora     ($00,x)                         ; F4E1 01 00                    ..
        brk                                     ; F4E3 00                       .
        brk                                     ; F4E4 00                       .
        brk                                     ; F4E5 00                       .
        brk                                     ; F4E6 00                       .
        inc     LFFDF,x                         ; F4E7 FE DF FF                 ...
        .byte   $FF                             ; F4EA FF                       .
        .byte   $87                             ; F4EB 87                       .
        cpx     $6801                           ; F4EC EC 01 68                 ..h
        cpy     $607A                           ; F4EF CC 7A 60                 .z`
        .byte   $DC                             ; F4F2 DC                       .
        lda     $2443,y                         ; F4F3 B9 43 24                 .C$
        .byte   $04                             ; F4F6 04                       .
        .byte   $73                             ; F4F7 73                       s
        .byte   $7F                             ; F4F8 7F                       .
        dec     $BE37                           ; F4F9 CE 37 BE                 .7.
        and     a:$00,x                         ; F4FC 3D 00 00                 =..
        php                                     ; F4FF 08                       .
        inc     LFFBF,x                         ; F500 FE BF FF                 ...
        .byte   $2F                             ; F503 2F                       /
        jmp     L6012                           ; F504 4C 12 60                 L.`

; ----------------------------------------------------------------------------
        brk                                     ; F507 00                       .
        ora     $CDE2,x                         ; F508 1D E2 CD                 ...
        .byte   $3C                             ; F50B 3C                       <
        .byte   $FF                             ; F50C FF                       .
        inc     $03FD,x                         ; F50D FE FD 03                 ...
        .byte   $03                             ; F510 03                       .
        brk                                     ; F511 00                       .
        brk                                     ; F512 00                       .
        rol     $D9EC                           ; F513 2E EC D9                 ...
        .byte   $A7                             ; F516 A7                       .
        .byte   $E3                             ; F517 E3                       .
        lda     $38                             ; F518 A5 38                    .8
        and     $ADCE                           ; F51A 2D CE AD                 -..
        .byte   $FF                             ; F51D FF                       .
        .byte   $2F                             ; F51E 2F                       /
        .byte   $DF                             ; F51F DF                       .
        and     ($47,x)                         ; F520 21 47                    !G
        php                                     ; F522 08                       .
        jsr     L0029                           ; F523 20 29 00                  ).
        iny                                     ; F526 C8                       .
        .byte   $F3                             ; F527 F3                       .
        lda     $0F,x                           ; F528 B5 0F                    ..
        .byte   $7F                             ; F52A 7F                       .
        sbc     $8617,y                         ; F52B F9 17 86                 ...
        clv                                     ; F52E B8                       .
        adc     ($FE),y                         ; F52F 71 FE                    q.
        .byte   $CF                             ; F531 CF                       .
        bmi     LF595                           ; F532 30 61                    0a
        asl     a                               ; F534 0A                       .
        ora     ($30,x)                         ; F535 01 30                    .0
        ldx     $FF                             ; F537 A6 FF                    ..
        .byte   $33                             ; F539 33                       3
        .byte   $23                             ; F53A 23                       #
LF53B:  sty     $7B8C                           ; F53B 8C 8C 7B                 ..{
        .byte   $7F                             ; F53E 7F                       .
        lsr     $28FD                           ; F53F 4E FD 28                 N.(
        sta     ($CF,x)                         ; F542 81 CF                    ..
        lda     $C33D,x                         ; F544 BD 3D C3                 .=.
        cpx     #$00                            ; F547 E0 00                    ..
        asl     $0602                           ; F549 0E 02 06                 ...
        sed                                     ; F54C F8                       .
        ora     $E6F3,y                         ; F54D 19 F3 E6                 ...
        .byte   $DC                             ; F550 DC                       .
        .byte   $3B                             ; F551 3B                       ;
        .byte   $63                             ; F552 63                       c
        inc     LFBDC                           ; F553 EE DC FB                 ...
        .byte   $77                             ; F556 77                       w
        dec     $111C                           ; F557 CE 1C 11                 ...
        rti                                     ; F55A 40                       @

; ----------------------------------------------------------------------------
        brk                                     ; F55B 00                       .
        brk                                     ; F55C 00                       .
        .byte   $02                             ; F55D 02                       .
        .byte   $67                             ; F55E 67                       g
        inc     $7B10,x                         ; F55F FE 10 7B                 ..{
        .byte   $E3                             ; F562 E3                       .
        .byte   $FF                             ; F563 FF                       .
        .byte   $3F                             ; F564 3F                       ?
        ldy     $BDE7,x                         ; F565 BC E7 BD                 ...
        tya                                     ; F568 98                       .
        .byte   $23                             ; F569 23                       #
        .byte   $47                             ; F56A 47                       G
        php                                     ; F56B 08                       .
        .byte   $04                             ; F56C 04                       .
        .byte   $02                             ; F56D 02                       .
        sei                                     ; F56E 78                       x
        asl     LF238,x                         ; F56F 1E 38 F2                 .8.
        .byte   $CF                             ; F572 CF                       .
        .byte   $9F                             ; F573 9F                       .
        .byte   $3F                             ; F574 3F                       ?
        and     $C8EC,x                         ; F575 3D EC C8                 =..
        .byte   $7B                             ; F578 7B                       {
        rts                                     ; F579 60                       `

; ----------------------------------------------------------------------------
        stx     $FF                             ; F57A 86 FF                    ..
        .byte   $3F                             ; F57C 3F                       ?
        .byte   $83                             ; F57D 83                       .
        cpy     #$80                            ; F57E C0 80                    ..
        ora     ($02,x)                         ; F580 01 02                    ..
        brk                                     ; F582 00                       .
        .byte   $3C                             ; F583 3C                       <
        .byte   $7C                             ; F584 7C                       |
        .byte   $FF                             ; F585 FF                       .
        .byte   $CF                             ; F586 CF                       .
        .byte   $FA                             ; F587 FA                       .
        .byte   $BF                             ; F588 BF                       .
        .byte   $E7                             ; F589 E7                       .
        sed                                     ; F58A F8                       .
        sec                                     ; F58B 38                       8
        sbc     ($E7),y                         ; F58C F1 E7                    ..
        php                                     ; F58E 08                       .
        brk                                     ; F58F 00                       .
        brk                                     ; F590 00                       .
        inc     $9C                             ; F591 E6 9C                    ..
        .byte   $80                             ; F593 80                       .
        .byte   $67                             ; F594 67                       g
LF595:  cpy     #$9C                            ; F595 C0 9C                    ..
        sbc     ($F7),y                         ; F597 F1 F7                    ..
        sbc     $0719,x                         ; F599 FD 19 07                 ...
        ror     $139C,x                         ; F59C 7E 9C 13                 ~..
        .byte   $73                             ; F59F 73                       s
        .byte   $F4                             ; F5A0 F4                       .
        .byte   $DF                             ; F5A1 DF                       .
        sbc     ($41,x)                         ; F5A2 E1 41                    .A
        asl     $00                             ; F5A4 06 00                    ..
        bmi     LF5C9                           ; F5A6 30 21                    0!
        cpy     #$9D                            ; F5A8 C0 9D                    ..
        .byte   $FB                             ; F5AA FB                       .
        .byte   $77                             ; F5AB 77                       w
        .byte   $FF                             ; F5AC FF                       .
        dec     $63BF,x                         ; F5AD DE BF 63                 ..c
        cpy     $88                             ; F5B0 C4 88                    ..
        .byte   $03                             ; F5B2 03                       .
        lsr     $8C                             ; F5B3 46 8C                    F.
        sed                                     ; F5B5 F8                       .
        .byte   $63                             ; F5B6 63                       c
        cpy     $80                             ; F5B7 C4 80                    ..
        ora     ($3B),y                         ; F5B9 11 3B                    .;
        .byte   $1C                             ; F5BB 1C                       .
        .byte   $FC                             ; F5BC FC                       .
        sbc     $E7F3,y                         ; F5BD F9 F3 E7                 ...
        .byte   $9F                             ; F5C0 9F                       .
        .byte   $1F                             ; F5C1 1F                       .
        .byte   $04                             ; F5C2 04                       .
        brk                                     ; F5C3 00                       .
        cpx     #$F0                            ; F5C4 E0 F0                    ..
        .byte   $FF                             ; F5C6 FF                       .
        .byte   $C3                             ; F5C7 C3                       .
        .byte   $3F                             ; F5C8 3F                       ?
LF5C9:  rol     a:$60,x                         ; F5C9 3E 60 00                 >`.
        php                                     ; F5CC 08                       .
        ora     ($00,x)                         ; F5CD 01 00                    ..
        inc     LF3FF,x                         ; F5CF FE FF F3                 ...
        .byte   $FF                             ; F5D2 FF                       .
        sta     LFE3F,x                         ; F5D3 9D 3F FE                 .?.
        .byte   $DC                             ; F5D6 DC                       .
        .byte   $20                             ; F5D7 20                        
        .byte   $84                             ; F5D8 84                       .
LF5D9:  .byte   $03                             ; F5D9 03                       .
        .byte   $03                             ; F5DA 03                       .
        .byte   $9C                             ; F5DB 9C                       .
        clc                                     ; F5DC 18                       .
        .byte   $42                             ; F5DD 42                       B
        beq     LF5E0                           ; F5DE F0 00                    ..
LF5E0:  bmi     LF5D9                           ; F5E0 30 F7                    0.
        .byte   $FF                             ; F5E2 FF                       .
        .byte   $FF                             ; F5E3 FF                       .
        .byte   $EB                             ; F5E4 EB                       .
        .byte   $F7                             ; F5E5 F7                       .
        asl     $18                             ; F5E6 06 18                    ..
        .byte   $03                             ; F5E8 03                       .
        .byte   $F2                             ; F5E9 F2                       .
        .byte   $FC                             ; F5EA FC                       .
        .byte   $FF                             ; F5EB FF                       .
        .byte   $17                             ; F5EC 17                       .
        .byte   $04                             ; F5ED 04                       .
        .byte   $0C                             ; F5EE 0C                       .
        php                                     ; F5EF 08                       .
        brk                                     ; F5F0 00                       .
        rti                                     ; F5F1 40                       @

; ----------------------------------------------------------------------------
        iny                                     ; F5F2 C8                       .
        .byte   $C3                             ; F5F3 C3                       .
        .byte   $F7                             ; F5F4 F7                       .
        ror     LFFFE,x                         ; F5F5 7E FE FF                 ~..
        and     $C7CF,y                         ; F5F8 39 CF C7                 9..
        sta     $C63F,y                         ; F5FB 99 3F C6                 .?.
        brk                                     ; F5FE 00                       .
        brk                                     ; F5FF 00                       .
        rts                                     ; F600 60                       `

; ----------------------------------------------------------------------------
        .byte   $E7                             ; F601 E7                       .
        php                                     ; F602 08                       .
        sec                                     ; F603 38                       8
        asl     $E6                             ; F604 06 E6                    ..
        ora     $EFBF,y                         ; F606 19 BF EF                 ...
        .byte   $8F                             ; F609 8F                       .
        .byte   $39                             ; F60A 39                       9
LF60B:  beq     $F5D4                           ; F60B F0 C7                    ..
        lda     $6730,y                         ; F60D B9 30 67                 .0g
        .byte   $FF                             ; F610 FF                       .
        asl     $621B,x                         ; F611 1E 1B 62                 ..b
        brk                                     ; F614 00                       .
        brk                                     ; F615 00                       .
        ora     $CE02,y                         ; F616 19 02 CE                 ...
        cld                                     ; F619 D8                       .
        .byte   $BF                             ; F61A BF                       .
        .byte   $F7                             ; F61B F7                       .
        .byte   $EF                             ; F61C EF                       .
        .byte   $FD                             ; F61D FD                       .
        .byte   $3B                             ; F61E 3B                       ;
LF61F:  .byte   $47                             ; F61F 47                       G
        sty     $3018                           ; F620 8C 18 30                 ..0
        dec     $C0                             ; F623 C6 C0                    ..
        .byte   $1B                             ; F625 1B                       .
        .byte   $23                             ; F626 23                       #
        asl     $88                             ; F627 06 88                    ..
        clv                                     ; F629 B8                       .
        .byte   $E3                             ; F62A E3                       .
        cpx     #$DF                            ; F62B E0 DF                    ..
        .byte   $B7                             ; F62D B7                       .
        .byte   $7F                             ; F62E 7F                       .
        inc     $60F8,x                         ; F62F FE F8 60                 ..`
        brk                                     ; F632 00                       .
        brk                                     ; F633 00                       .
        .byte   $8F                             ; F634 8F                       .
        .byte   $7F                             ; F635 7F                       .
        .byte   $1F                             ; F636 1F                       .
        inc     $01F3,x                         ; F637 FE F3 01                 ...
        .byte   $03                             ; F63A 03                       .
        .byte   $80                             ; F63B 80                       .
        php                                     ; F63C 08                       .
        brk                                     ; F63D 00                       .
        beq     LF61F                           ; F63E F0 DF                    ..
        .byte   $3F                             ; F640 3F                       ?
        .byte   $FF                             ; F641 FF                       .
        .byte   $CF                             ; F642 CF                       .
        .byte   $FC                             ; F643 FC                       .
        .byte   $E3                             ; F644 E3                       .
        .byte   $CF                             ; F645 CF                       .
        ora     $3063                           ; F646 0D 63 30                 .c0
        bmi     LF60B                           ; F649 30 C0                    0.
        iny                                     ; F64B C8                       .
        ora     ($02,x)                         ; F64C 01 02                    ..
        .byte   $07                             ; F64E 07                       .
        brk                                     ; F64F 00                       .
        .byte   $33                             ; F650 33                       3
        .byte   $FF                             ; F651 FF                       .
        .byte   $FF                             ; F652 FF                       .
        .byte   $7F                             ; F653 7F                       .
        inc     $807F,x                         ; F654 FE 7F 80                 ...
        clc                                     ; F657 18                       .
        brk                                     ; F658 00                       .
        .byte   $EF                             ; F659 EF                       .
        sbc     $E0FD,x                         ; F65A FD FD E0                 ...
        cpx     #$00                            ; F65D E0 00                    ..
        ora     ($20,x)                         ; F65F 01 20                    . 
        .byte   $04                             ; F661 04                       .
        .byte   $9C                             ; F662 9C                       .
        .byte   $33                             ; F663 33                       3
        .byte   $F3                             ; F664 F3                       .
        .byte   $FF                             ; F665 FF                       .
        .byte   $FF                             ; F666 FF                       .
        .byte   $FF                             ; F667 FF                       .
        .byte   $2F                             ; F668 2F                       /
        dey                                     ; F669 88                       .
        clc                                     ; F66A 18                       .
        bvs     LF6AD                           ; F66B 70 40                    p@
        sty     $3F                             ; F66D 84 3F                    .?
        .byte   $73                             ; F66F 73                       s
        .byte   $CF                             ; F670 CF                       .
        sta     $4700,x                         ; F671 9D 00 47                 ..G
        sty     $3D8F                           ; F674 8C 8F 3D                 ..=
        .byte   $7F                             ; F677 7F                       .
        rol     LF1B8,x                         ; F678 3E B8 F1                 >..
        asl     $7C                             ; F67B 06 7C                    .|
        brk                                     ; F67D 00                       .
        .byte   $FC                             ; F67E FC                       .
        sbc     $84E3,y                         ; F67F F9 E3 84                 ...
        ora     ($67,x)                         ; F682 01 67                    .g
        .byte   $1F                             ; F684 1F                       .
        brk                                     ; F685 00                       .
        adc     ($F0,x)                         ; F686 61 F0                    a.
        inc     $F7                             ; F688 E6 F7                    ..
        .byte   $FF                             ; F68A FF                       .
        .byte   $3F                             ; F68B 3F                       ?
        bvs     LF706                           ; F68C 70 78                    px
        cpy     #$80                            ; F68E C0 80                    ..
        .byte   $E3                             ; F690 E3                       .
        .byte   $8F                             ; F691 8F                       .
        .byte   $1F                             ; F692 1F                       .
        rol     $C864,x                         ; F693 3E 64 C8                 >d.
        ora     ($00,x)                         ; F696 01 00                    ..
        .byte   $80                             ; F698 80                       .
        .byte   $0F                             ; F699 0F                       .
        .byte   $7F                             ; F69A 7F                       .
        .byte   $7F                             ; F69B 7F                       .
        .byte   $FF                             ; F69C FF                       .
        .byte   $FF                             ; F69D FF                       .
        cmp     ($DF,x)                         ; F69E C1 DF                    ..
        .byte   $07                             ; F6A0 07                       .
        brk                                     ; F6A1 00                       .
        brk                                     ; F6A2 00                       .
        cpy     #$E7                            ; F6A3 C0 E7                    ..
        .byte   $97                             ; F6A5 97                       .
        .byte   $9E                             ; F6A6 9E                       .
        .byte   $23                             ; F6A7 23                       #
        ror     a:$3C,x                         ; F6A8 7E 3C 00                 ~<.
        adc     ($00,x)                         ; F6AB 61 00                    a.
LF6AD:  .byte   $1F                             ; F6AD 1F                       .
        .byte   $1F                             ; F6AE 1F                       .
        .byte   $FF                             ; F6AF FF                       .
        .byte   $FF                             ; F6B0 FF                       .
        sbc     $03E3,x                         ; F6B1 FD E3 03                 ...
        asl     $7900                           ; F6B4 0E 00 79                 ..y
        clc                                     ; F6B7 18                       .
        .byte   $9C                             ; F6B8 9C                       .
        .byte   $C3                             ; F6B9 C3                       .
        sed                                     ; F6BA F8                       .
        .byte   $1C                             ; F6BB 1C                       .
        dec     $F0                             ; F6BC C6 F0                    ..
        ora     #$FF                            ; F6BE 09 FF                    ..
        .byte   $63                             ; F6C0 63                       c
        .byte   $D0                             ; F6C1 D0                       .
LF6C2:  .byte   $FF                             ; F6C2 FF                       .
        .byte   $E3                             ; F6C3 E3                       .
        .byte   $E3                             ; F6C4 E3                       .
        brk                                     ; F6C5 00                       .
LF6C6:  ora     ($43,x)                         ; F6C6 01 43                    .C
        cpx     #$1D                            ; F6C8 E0 1D                    ..
        adc     $E4FE                           ; F6CA 6D FE E4                 m..
        sbc     $0309,y                         ; F6CD F9 09 03                 ...
        cpy     #$0C                            ; F6D0 C0 0C                    ..
        .byte   $FB                             ; F6D2 FB                       .
        .byte   $FF                             ; F6D3 FF                       .
        ldy     LF013,x                         ; F6D4 BC 13 F0                 ...
        adc     $8F                             ; F6D7 65 8F                    e.
        .byte   $04                             ; F6D9 04                       .
        adc     ($FF),y                         ; F6DA 71 FF                    q.
        .byte   $0F                             ; F6DC 0F                       .
LF6DD:  brk                                     ; F6DD 00                       .
        brk                                     ; F6DE 00                       .
        dec     $01BE,x                         ; F6DF DE BE 01                 ...
        .byte   $C2                             ; F6E2 C2                       .
        sty     $7E7F                           ; F6E3 8C 7F 7E                 ..~
        .byte   $FC                             ; F6E6 FC                       .
        .byte   $1F                             ; F6E7 1F                       .
        ror     $1FF6,x                         ; F6E8 7E F6 1F                 ~..
        ora     ($00,x)                         ; F6EB 01 00                    ..
        cpy     #$70                            ; F6ED C0 70                    .p
        cpx     #$C0                            ; F6EF E0 C0                    ..
        sbc     $E71F,x                         ; F6F1 FD 1F E7                 ...
        .byte   $6F                             ; F6F4 6F                       o
        asl     $87                             ; F6F5 06 87                    ..
        .byte   $83                             ; F6F7 83                       .
        .byte   $EF                             ; F6F8 EF                       .
        ora     ($38,x)                         ; F6F9 01 38                    .8
        .byte   $73                             ; F6FB 73                       s
        beq     LF6DD                           ; F6FC F0 DF                    ..
        ora     ($E8,x)                         ; F6FE 01 E8                    ..
        inc     $01FF,x                         ; F700 FE FF 01                 ...
        brk                                     ; F703 00                       .
        cpy     #$89                            ; F704 C0 89                    ..
LF706:  .byte   $07                             ; F706 07                       .
        .byte   $CF                             ; F707 CF                       .
        .byte   $7C                             ; F708 7C                       |
        sed                                     ; F709 F8                       .
        sed                                     ; F70A F8                       .
        .byte   $C3                             ; F70B C3                       .
        cmp     ($C7,x)                         ; F70C C1 C7                    ..
        .byte   $1F                             ; F70E 1F                       .
        .byte   $3F                             ; F70F 3F                       ?
        .byte   $7C                             ; F710 7C                       |
        dey                                     ; F711 88                       .
        bcs     LF717                           ; F712 B0 03                    ..
        brk                                     ; F714 00                       .
        brk                                     ; F715 00                       .
        .byte   $1F                             ; F716 1F                       .
LF717:  .byte   $FC                             ; F717 FC                       .
        inc     LFFFD,x                         ; F718 FE FD FF                 ...
        .byte   $03                             ; F71B 03                       .
        .byte   $FF                             ; F71C FF                       .
        .byte   $1F                             ; F71D 1F                       .
        brk                                     ; F71E 00                       .
        brk                                     ; F71F 00                       .
        .byte   $80                             ; F720 80                       .
        .byte   $CF                             ; F721 CF                       .
        .byte   $2F                             ; F722 2F                       /
        and     LFCC6,x                         ; F723 3D C6 FC                 =..
        sei                                     ; F726 78                       x
        brk                                     ; F727 00                       .
        .byte   $C2                             ; F728 C2                       .
        ora     ($3C,x)                         ; F729 01 3C                    .<
        ror     LFFF8,x                         ; F72B 7E F8 FF                 ~..
        .byte   $FB                             ; F72E FB                       .
        .byte   $87                             ; F72F 87                       .
        .byte   $0F                             ; F730 0F                       .
        clc                                     ; F731 18                       .
        brk                                     ; F732 00                       .
        inc     $60,x                           ; F733 F6 60                    .`
        bvs     LF6C6                           ; F735 70 8F                    p.
        sbc     ($39),y                         ; F737 F1 39                    .9
        sty     $33C1                           ; F739 8C C1 33                 ..3
        inc     $60C7,x                         ; F73C FE C7 60                 ..`
        .byte   $FF                             ; F73F FF                       .
        .byte   $87                             ; F740 87                       .
        .byte   $C7                             ; F741 C7                       .
        ora     (L0004,x)                       ; F742 01 04                    ..
        asl     $7BC0                           ; F744 0E C0 7B                 ..{
        ldy     $FC,x                           ; F747 B4 FC                    ..
        .byte   $89                             ; F749 89                       .
        .byte   $F7                             ; F74A F7                       .
        .byte   $17                             ; F74B 17                       .
        asl     $80                             ; F74C 06 80                    ..
        and     ($E6),y                         ; F74E 31 E6                    1.
        .byte   $FF                             ; F750 FF                       .
        adc     $E12E,y                         ; F751 79 2E E1                 y..
        .byte   $CB                             ; F754 CB                       .
        ora     $E211,x                         ; F755 1D 11 E2                 ...
        .byte   $FC                             ; F758 FC                       .
        .byte   $1F                             ; F759 1F                       .
        brk                                     ; F75A 00                       .
        .byte   $80                             ; F75B 80                       .
        ldy     $02F9,x                         ; F75C BC F9 02                 ...
        sty     $19                             ; F75F 84 19                    ..
        .byte   $FF                             ; F761 FF                       .
        .byte   $FC                             ; F762 FC                       .
        sbc     LFC3B,y                         ; F763 F9 3B FC                 .;.
        .byte   $DC                             ; F766 DC                       .
        .byte   $7F                             ; F767 7F                       .
        asl     $00                             ; F768 06 00                    ..
        brk                                     ; F76A 00                       .
        cmp     ($C1,x)                         ; F76B C1 C1                    ..
        sta     ($F3,x)                         ; F76D 81 F3                    ..
        .byte   $7F                             ; F76F 7F                       .
LF770:  .byte   $DC                             ; F770 DC                       .
        .byte   $DF                             ; F771 DF                       .
        .byte   $0C                             ; F772 0C                       .
        .byte   $1C                             ; F773 1C                       .
        .byte   $07                             ; F774 07                       .
        .byte   $9F                             ; F775 9F                       .
        .byte   $27                             ; F776 27                       '
        ldy     #$E6                            ; F777 A0 E6                    ..
        cmp     ($37,x)                         ; F779 C1 37                    .7
        .byte   $07                             ; F77B 07                       .
        bne     LF7FD                           ; F77C D0 7F                    ..
        .byte   $FF                             ; F77E FF                       .
        .byte   $03                             ; F77F 03                       .
        brk                                     ; F780 00                       .
        .byte   $80                             ; F781 80                       .
        .byte   $33                             ; F782 33                       3
        .byte   $0F                             ; F783 0F                       .
        .byte   $1C                             ; F784 1C                       .
        .byte   $3B                             ; F785 3B                       ;
        sbc     ($F8),y                         ; F786 F1 F8                    ..
        .byte   $CF                             ; F788 CF                       .
        ora     ($3F),y                         ; F789 11 3F                    .?
        rol     $787E,x                         ; F78B 3E 7E 78                 >~x
        brk                                     ; F78E 00                       .
        dex                                     ; F78F CA                       .
        asl     a:$1C,x                         ; F790 1E 1C 00                 ...
        sed                                     ; F793 F8                       .
        .byte   $FF                             ; F794 FF                       .
        sta     $07F1                           ; F795 8D F1 07                 ...
        dec     $703D,x                         ; F798 DE 3D 70                 .=p
        cpx     #$C0                            ; F79B E0 C0                    ..
        sta     ($87,x)                         ; F79D 81 87                    ..
        .byte   $FF                             ; F79F FF                       .
        .byte   $3F                             ; F7A0 3F                       ?
        brk                                     ; F7A1 00                       .
        .byte   $7B                             ; F7A2 7B                       {
        cpx     #$9F                            ; F7A3 E0 9F                    ..
        ora     ($13,x)                         ; F7A5 01 13                    ..
        .byte   $9F                             ; F7A7 9F                       .
        .byte   $FC                             ; F7A8 FC                       .
        .byte   $0F                             ; F7A9 0F                       .
        brk                                     ; F7AA 00                       .
        beq     LF770                           ; F7AB F0 C3                    ..
        .byte   $FB                             ; F7AD FB                       .
        .byte   $03                             ; F7AE 03                       .
        .byte   $CF                             ; F7AF CF                       .
        .byte   $3B                             ; F7B0 3B                       ;
        .byte   $9C                             ; F7B1 9C                       .
        sta     $41,x                           ; F7B2 95 41                    .A
        cld                                     ; F7B4 D8                       .
        ora     ($9F,x)                         ; F7B5 01 9F                    ..
        sta     LFF1F                           ; F7B7 8D 1F FF                 ...
        .byte   $3F                             ; F7BA 3F                       ?
        .byte   $04                             ; F7BB 04                       .
        brk                                     ; F7BC 00                       .
        cpy     #$FC                            ; F7BD C0 FC                    ..
        .byte   $FF                             ; F7BF FF                       .
        ora     $00                             ; F7C0 05 00                    ..
        .byte   $7C                             ; F7C2 7C                       |
        .byte   $8F                             ; F7C3 8F                       .
        .byte   $FC                             ; F7C4 FC                       .
        sbc     ($D1,x)                         ; F7C5 E1 D1                    ..
        .byte   $C3                             ; F7C7 C3                       .
        .byte   $F2                             ; F7C8 F2                       .
        and     $4077,x                         ; F7C9 3D 77 40                 =w@
        sei                                     ; F7CC 78                       x
LF7CD:  .byte   $FC                             ; F7CD FC                       .
        .byte   $03                             ; F7CE 03                       .
        brk                                     ; F7CF 00                       .
        jsr     LFFFE                           ; F7D0 20 FE FF                  ..
        .byte   $E0                             ; F7D3 E0                       .
LF7D4:  sty     $8F                             ; F7D4 84 8F                    ..
        .byte   $67                             ; F7D6 67                       g
        ror     $DA40,x                         ; F7D7 7E 40 DA                 ~@.
        and     $83C7,y                         ; F7DA 39 C7 83                 9..
        eor     ($3C),y                         ; F7DD 51 3C                    Q<
        ror     a:$FF                           ; F7DF 6E FF 00                 n..
        brk                                     ; F7E2 00                       .
LF7E3:  .byte   $E2                             ; F7E3 E2                       .
        .byte   $CF                             ; F7E4 CF                       .
        .byte   $BF                             ; F7E5 BF                       .
        sbc     ($40,x)                         ; F7E6 E1 40                    .@
        .byte   $80                             ; F7E8 80                       .
        .byte   $BF                             ; F7E9 BF                       .
        .byte   $3F                             ; F7EA 3F                       ?
        .byte   $1F                             ; F7EB 1F                       .
        .byte   $47                             ; F7EC 47                       G
        jsr     LF7FE                           ; F7ED 20 FE F7                  ..
        .byte   $63                             ; F7F0 63                       c
        brk                                     ; F7F1 00                       .
        .byte   $9C                             ; F7F2 9C                       .
LF7F3:  and     ($46,x)                         ; F7F3 21 46                    !F
        .byte   $0C                             ; F7F5 0C                       .
        .byte   $9E                             ; F7F6 9E                       .
LF7F7:  .byte   $7F                             ; F7F7 7F                       .
        .byte   $3C                             ; F7F8 3C                       <
        sed                                     ; F7F9 F8                       .
        ora     ($F0,x)                         ; F7FA 01 F0                    ..
        .byte   $DF                             ; F7FC DF                       .
LF7FD:  .byte   $CF                             ; F7FD CF                       .
LF7FE:  and     $0E38,x                         ; F7FE 3D 38 0E                 =8.
LF801:  bpl     LF7F3                           ; F801 10 F0                    ..
        .byte   $07                             ; F803 07                       .
        .byte   $CF                             ; F804 CF                       .
        .byte   $BF                             ; F805 BF                       .
        .byte   $1C                             ; F806 1C                       .
        bmi     LF7CD                           ; F807 30 C4                    0.
        beq     LF83E                           ; F809 F0 33                    .3
        .byte   $06                             ; F80B 06                       .
LF80C:  .byte   $1F                             ; F80C 1F                       .
        brk                                     ; F80D 00                       .
        inc     $E1FF,x                         ; F80E FE FF E1                 ...
        ldx     $E7,y                           ; F811 B6 E7                    ..
        .byte   $23                             ; F813 23                       #
        .byte   $1C                             ; F814 1C                       .
        ldx     $E061,y                         ; F815 BE 61 E0                 .a.
        .byte   $07                             ; F818 07                       .
        brk                                     ; F819 00                       .
        beq     LF80C                           ; F81A F0 F0                    ..
LF81C:  .byte   $7F                             ; F81C 7F                       .
        lsr     $E6                             ; F81D 46 E6                    F.
        .byte   $1F                             ; F81F 1F                       .
        brk                                     ; F820 00                       .
        .byte   $FF                             ; F821 FF                       .
        adc     $E3F0,y                         ; F822 79 F0 E3                 y..
        sta     $0C                             ; F825 85 0C                    ..
        asl     $FF                             ; F827 06 FF                    ..
        sei                                     ; F829 78                       x
        beq     LF7D4                           ; F82A F0 A8                    ..
        cmp     ($FC,x)                         ; F82C C1 FC                    ..
        ora     $4820                           ; F82E 0D 20 48                 . H
        adc     $27BB,x                         ; F831 7D BB 27                 }.'
        asl     LF801,x                         ; F834 1E 01 F8                 ...
        .byte   $F7                             ; F837 F7                       .
        .byte   $E3                             ; F838 E3                       .
        .byte   $73                             ; F839 73                       s
        .byte   $04                             ; F83A 04                       .
        .byte   $E2                             ; F83B E2                       .
        .byte   $FD                             ; F83C FD                       .
        .byte   $7E                             ; F83D 7E                       ~
LF83E:  asl     $3380                           ; F83E 0E 80 33                 ..3
        .byte   $44                             ; F841 44                       D
        dey                                     ; F842 88                       .
        cmp     ($F3,x)                         ; F843 C1 F3                    ..
        .byte   $C7                             ; F845 C7                       .
        .byte   $87                             ; F846 87                       .
        .byte   $3F                             ; F847 3F                       ?
        brk                                     ; F848 00                       .
        inc     $B9FD,x                         ; F849 FE FD B9                 ...
        .byte   $07                             ; F84C 07                       .
        .byte   $C7                             ; F84D C7                       .
        ora     ($00,x)                         ; F84E 01 00                    ..
        inc     LFCF0,x                         ; F850 FE F0 FC                 ...
        .byte   $CB                             ; F853 CB                       .
        .byte   $03                             ; F854 03                       .
        .byte   $07                             ; F855 07                       .
        clc                                     ; F856 18                       .
        .byte   $3F                             ; F857 3F                       ?
        dec     $F0                             ; F858 C6 F0                    ..
        brk                                     ; F85A 00                       .
        cpx     #$FF                            ; F85B E0 FF                    ..
        .byte   $3F                             ; F85D 3F                       ?
        cpy     $7CF7                           ; F85E CC F7 7C                 ..|
        cpy     $E1                             ; F861 C4 E1                    ..
        .byte   $33                             ; F863 33                       3
        .byte   $0C                             ; F864 0C                       .
        sed                                     ; F865 F8                       .
        brk                                     ; F866 00                       .
        .byte   $80                             ; F867 80                       .
        asl     $DFFE                           ; F868 0E FE DF                 ...
        iny                                     ; F86B C8                       .
        .byte   $FC                             ; F86C FC                       .
        .byte   $03                             ; F86D 03                       .
        cpx     #$1F                            ; F86E E0 1F                    ..
        .byte   $0F                             ; F870 0F                       .
        ror     $98DC,x                         ; F871 7E DC 98                 ~..
        cmp     ($E0,x)                         ; F874 C1 E0                    ..
        .byte   $1F                             ; F876 1F                       .
        .byte   $0F                             ; F877 0F                       .
        asl     $8037,x                         ; F878 1E 37 80                 .7.
        .byte   $9F                             ; F87B 9F                       .
        cpx     #$A0                            ; F87C E0 A0                    ..
        sei                                     ; F87E 78                       x
        inc     $7C                             ; F87F E6 7C                    .|
        .byte   $7C                             ; F881 7C                       |
        asl     $830C,x                         ; F882 1E 0C 83                 ...
        .byte   $EF                             ; F885 EF                       .
        .byte   $DF                             ; F886 DF                       .
        sta     ($CF,x)                         ; F887 81 CF                    ..
        sta     ($03,x)                         ; F889 81 03                    ..
        .byte   $0F                             ; F88B 0F                       .
        brk                                     ; F88C 00                       .
        adc     LFCFE,y                         ; F88D 79 FE FC                 y..
        .byte   $03                             ; F890 03                       .
        sei                                     ; F891 78                       x
        .byte   $0F                             ; F892 0F                       .
        .byte   $1B                             ; F893 1B                       .
        .byte   $FC                             ; F894 FC                       .
        and     ($F6,x)                         ; F895 21 F6                    !.
        .byte   $72                             ; F897 72                       r
LF898:  clc                                     ; F898 18                       .
        sec                                     ; F899 38                       8
        cpy     #$FF                            ; F89A C0 FF                    ..
        ora     #$DE                            ; F89C 09 DE                    ..
        .byte   $1F                             ; F89E 1F                       .
        sty     $BF                             ; F89F 84 BF                    ..
        adc     ($60,x)                         ; F8A1 61 60                    a`
        sec                                     ; F8A3 38                       8
        .byte   $62                             ; F8A4 62                       b
        .byte   $7C                             ; F8A5 7C                       |
        .byte   $7C                             ; F8A6 7C                       |
        asl     $C704,x                         ; F8A7 1E 04 C7                 ...
        .byte   $FF                             ; F8AA FF                       .
        .byte   $EF                             ; F8AB EF                       .
        .byte   $80                             ; F8AC 80                       .
        .byte   $DF                             ; F8AD DF                       .
        cpy     #$01                            ; F8AE C0 01                    ..
        .byte   $0F                             ; F8B0 0F                       .
        brk                                     ; F8B1 00                       .
        and     LFEFE,y                         ; F8B2 39 FE FE                 9..
        .byte   $03                             ; F8B5 03                       .
        sei                                     ; F8B6 78                       x
        .byte   $0F                             ; F8B7 0F                       .
        .byte   $0F                             ; F8B8 0F                       .
        .byte   $FC                             ; F8B9 FC                       .
        and     ($F6,x)                         ; F8BA 21 F6                    !.
        .byte   $7A                             ; F8BC 7A                       z
        clc                                     ; F8BD 18                       .
        clc                                     ; F8BE 18                       .
        cpy     #$FF                            ; F8BF C0 FF                    ..
        jmp     L1FD2                           ; F8C1 4C D2 1F                 L..

; ----------------------------------------------------------------------------
        .byte   $83                             ; F8C4 83                       .
        .byte   $BF                             ; F8C5 BF                       .
        and     ($64),y                         ; F8C6 31 64                    1d
        pla                                     ; F8C8 68                       h
        bne     LF8CE                           ; F8C9 D0 03                    ..
        .byte   $7F                             ; F8CB 7F                       .
        clc                                     ; F8CC 18                       .
        .byte   $80                             ; F8CD 80                       .
LF8CE:  .byte   $FF                             ; F8CE FF                       .
        .byte   $7F                             ; F8CF 7F                       .
        .byte   $DF                             ; F8D0 DF                       .
        .byte   $37                             ; F8D1 37                       7
        bvs     LF898                           ; F8D2 70 C4                    p.
        .byte   $80                             ; F8D4 80                       .
        and     ($02,x)                         ; F8D5 21 02                    !.
        cpy     #$BF                            ; F8D7 C0 BF                    ..
        sed                                     ; F8D9 F8                       .
        .byte   $3F                             ; F8DA 3F                       ?
        .byte   $EF                             ; F8DB EF                       .
        bcc     LF8ED                           ; F8DC 90 0F                    ..
        .byte   $47                             ; F8DE 47                       G
        .byte   $0F                             ; F8DF 0F                       .
        sbc     ($3F,x)                         ; F8E0 E1 3F                    .?
        .byte   $80                             ; F8E2 80                       .
        sta     ($78,x)                         ; F8E3 81 78                    .x
        .byte   $77                             ; F8E5 77                       w
        .byte   $C7                             ; F8E6 C7                       .
        sed                                     ; F8E7 F8                       .
        dey                                     ; F8E8 88                       .
        .byte   $04                             ; F8E9 04                       .
        .byte   $7F                             ; F8EA 7F                       .
        .byte   $3E                             ; F8EB 3E                       >
        .byte   $1F                             ; F8EC 1F                       .
LF8ED:  .byte   $02                             ; F8ED 02                       .
        .byte   $87                             ; F8EE 87                       .
        .byte   $4B                             ; F8EF 4B                       K
        inc     $65                             ; F8F0 E6 65                    .e
        sei                                     ; F8F2 78                       x
        .byte   $FA                             ; F8F3 FA                       .
        clv                                     ; F8F4 B8                       .
        cmp     ($A5,x)                         ; F8F5 C1 A5                    ..
        stx     $5487                           ; F8F7 8E 87 54                 ..T
        .byte   $E3                             ; F8FA E3                       .
        .byte   $80                             ; F8FB 80                       .
        .byte   $89                             ; F8FC 89                       .
        .byte   $87                             ; F8FD 87                       .
        .byte   $7F                             ; F8FE 7F                       .
        lsr     $1C3E,x                         ; F8FF 5E 3E 1C                 ^>.
        .byte   $72                             ; F902 72                       r
        jmp     L5393                           ; F903 4C 93 53                 L.S

; ----------------------------------------------------------------------------
        .byte   $0F                             ; F906 0F                       .
        lsr     $30F9                           ; F907 4E F9 30                 N.0
        cmp     $51,x                           ; F90A D5 51                    .Q
        eor     $47,x                           ; F90C 55 47                    UG
        and     $3C                             ; F90E 25 3C                    %<
        .byte   $72                             ; F910 72                       r
        .byte   $67                             ; F911 67                       g
        sta     $55,x                           ; F912 95 55                    .U
        lsr     $795D                           ; F914 4E 5D 79                 N]y
        iny                                     ; F917 C8                       .
        .byte   $D2                             ; F918 D2                       .
        cmp     ($94),y                         ; F919 D1 94                    ..
        lsr     $B5,x                           ; F91B 56 B5                    V.
        .byte   $54                             ; F91D 54                       T
        eor     $69,x                           ; F91E 55 69                    Ui
        cmp     $96                             ; F920 C5 96                    ..
        stx     $B4,y                           ; F922 96 B4                    ..
        .byte   $5C                             ; F924 5C                       \
        lda     $2A,x                           ; F925 B5 2A                    .*
        lda     $CC,x                           ; F927 B5 CC                    ..
        lsr     a                               ; F929 4A                       J
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
        eor     $00,x                           ; F940 55 00                    U.
        brk                                     ; F942 00                       .
        brk                                     ; F943 00                       .
        brk                                     ; F944 00                       .
        brk                                     ; F945 00                       .
        brk                                     ; F946 00                       .
        brk                                     ; F947 00                       .
        brk                                     ; F948 00                       .
        brk                                     ; F949 00                       .
        brk                                     ; F94A 00                       .
        brk                                     ; F94B 00                       .
        brk                                     ; F94C 00                       .
        brk                                     ; F94D 00                       .
        brk                                     ; F94E 00                       .
        brk                                     ; F94F 00                       .
        brk                                     ; F950 00                       .
        brk                                     ; F951 00                       .
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
LFBB7:  brk                                     ; FBB7 00                       .
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
LFBDC:  brk                                     ; FBDC 00                       .
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
LFBFC:  brk                                     ; FBFC 00                       .
        brk                                     ; FBFD 00                       .
        brk                                     ; FBFE 00                       .
LFBFF:  brk                                     ; FBFF 00                       .
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
LFC3B:  brk                                     ; FC3B 00                       .
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
LFCC6:  brk                                     ; FCC6 00                       .
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
LFCF0:  brk                                     ; FCF0 00                       .
        brk                                     ; FCF1 00                       .
        brk                                     ; FCF2 00                       .
        brk                                     ; FCF3 00                       .
        brk                                     ; FCF4 00                       .
        brk                                     ; FCF5 00                       .
        brk                                     ; FCF6 00                       .
        brk                                     ; FCF7 00                       .
        brk                                     ; FCF8 00                       .
        brk                                     ; FCF9 00                       .
LFCFA:  brk                                     ; FCFA 00                       .
        brk                                     ; FCFB 00                       .
        brk                                     ; FCFC 00                       .
        brk                                     ; FCFD 00                       .
LFCFE:  brk                                     ; FCFE 00                       .
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
LFE30:  brk                                     ; FE30 00                       .
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
LFE3F:  brk                                     ; FE3F 00                       .
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
LFEF0:  brk                                     ; FEF0 00                       .
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
LFEFE:  brk                                     ; FEFE 00                       .
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
LFF1F:  brk                                     ; FF1F 00                       .
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
LFFDF:  brk                                     ; FFDF 00                       .
        brk                                     ; FFE0 00                       .
        brk                                     ; FFE1 00                       .
        brk                                     ; FFE2 00                       .
LFFE3:  brk                                     ; FFE3 00                       .
        brk                                     ; FFE4 00                       .
        brk                                     ; FFE5 00                       .
        brk                                     ; FFE6 00                       .
LFFE7:  brk                                     ; FFE7 00                       .
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
LFFF8:  brk                                     ; FFF8 00                       .
        brk                                     ; FFF9 00                       .
;        brk                                     ; FFFA 00                       .
;        brk                                     ; FFFB 00                       .
;        brk                                     ; FFFC 00                       .
;LFFFD:  brk                                     ; FFFD 00                       .
;LFFFE:  brk                                     ; FFFE 00                       .
;LFFFF:  brk                                     ; FFFF 00                       .
LFFFD = $FFFD
LFFFE = $FFFE
LFFFF = $FFFF
VECTORS ; mod
