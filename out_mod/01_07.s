.include "../mod.inc"
.segment "MF000"
.org $F000

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-28 01:38:20
; Input file: out_src\01_07.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L0005           := $0005
L006F           := $006F
L0304           := $0304
L0609           := $0609
L060A           := $060A
L0732           := $0732
L111F           := $111F
L2074           := $2074
L2DFD           := $2DFD
L2FFD           := $2FFD
L32FD           := $32FD
L3775           := $3775
L3B31           := $3B31
L3B75           := $3B75
L3C75           := $3C75
L3E31           := $3E31
L4031           := $4031
L4175           := $4175
L4177           := $4177
L4375           := $4375
L4531           := $4531
L4575           := $4575
L4731           := $4731
L4931           := $4931
L4933           := $4933
L710A           := $710A
L7315           := $7315
LD413           := $D413
; ----------------------------------------------------------------------------
        inc     LFE11,x                         ; F000 FE 11 FE                 ...
        ora     ($FE),y                         ; F003 11 FE                    ..
        .byte   $FF                             ; F005 FF                       .
        .byte   $5F                             ; F006 5F                       _
        ora     $10                             ; F007 05 10                    ..
        .byte   $13                             ; F009 13                       .
        cpy     $B3                             ; F00A C4 B3                    ..
        and     $10,x                           ; F00C 35 10                    5.
        .byte   $1F                             ; F00E 1F                       .
        adc     ($40),y                         ; F00F 71 40                    q@
        adc     ($37),y                         ; F011 71 37                    q7
        and     ($3B),y                         ; F013 31 3B                    1;
        .byte   $FF                             ; F015 FF                       .
        .byte   $3C                             ; F016 3C                       <
        .byte   $13                             ; F017 13                       .
        bmi     LF01E                           ; F018 30 04                    0.
        .byte   $04                             ; F01A 04                       .
        .byte   $B3                             ; F01B B3                       .
        .byte   $3C                             ; F01C 3C                       <
        .byte   $0C                             ; F01D 0C                       .
LF01E:  .byte   $1F                             ; F01E 1F                       .
        adc     ($42),y                         ; F01F 71 42                    qB
        adc     ($39),y                         ; F021 71 39                    q9
        and     ($3D),y                         ; F023 31 3D                    1=
        sed                                     ; F025 F8                       .
        .byte   $04                             ; F026 04                       .
        brk                                     ; F027 00                       .
        bcs     LF049                           ; F028 B0 1F                    ..
        ora     ($FE),y                         ; F02A 11 FE                    ..
        ora     ($FE),y                         ; F02C 11 FE                    ..
        ora     ($FE),y                         ; F02E 11 FE                    ..
        .byte   $FF                             ; F030 FF                       .
        .byte   $5F                             ; F031 5F                       _
        ora     $10                             ; F032 05 10                    ..
        .byte   $13                             ; F034 13                       .
        cpy     $B3                             ; F035 C4 B3                    ..
        and     $0B,x                           ; F037 35 0B                    5.
        .byte   $1F                             ; F039 1F                       .
        adc     ($45),y                         ; F03A 71 45                    qE
        adc     ($3C),y                         ; F03C 71 3C                    q<
        and     ($40),y                         ; F03E 31 40                    1@
        .byte   $FF                             ; F040 FF                       .
        .byte   $3C                             ; F041 3C                       <
        .byte   $13                             ; F042 13                       .
        bmi     LF049                           ; F043 30 04                    0.
        .byte   $04                             ; F045 04                       .
        .byte   $B3                             ; F046 B3                       .
        .byte   $3C                             ; F047 3C                       <
        .byte   $0C                             ; F048 0C                       .
LF049:  .byte   $1F                             ; F049 1F                       .
        adc     ($47),y                         ; F04A 71 47                    qG
        adc     ($3E),y                         ; F04C 71 3E                    q>
        and     ($42),y                         ; F04E 31 42                    1B
        sed                                     ; F050 F8                       .
        .byte   $04                             ; F051 04                       .
        brk                                     ; F052 00                       .
        bcs     LF074                           ; F053 B0 1F                    ..
        ora     ($FE),y                         ; F055 11 FE                    ..
        ora     ($FE),y                         ; F057 11 FE                    ..
        ora     ($FE),y                         ; F059 11 FE                    ..
        .byte   $FF                             ; F05B FF                       .
        .byte   $5F                             ; F05C 5F                       _
        ora     $10                             ; F05D 05 10                    ..
        .byte   $13                             ; F05F 13                       .
        cpy     $B3                             ; F060 C4 B3                    ..
        and     $0B,x                           ; F062 35 0B                    5.
        .byte   $1F                             ; F064 1F                       .
        adc     ($47),y                         ; F065 71 47                    qG
        adc     ($3E),y                         ; F067 71 3E                    q>
        and     ($42),y                         ; F069 31 42                    1B
        .byte   $FF                             ; F06B FF                       .
        .byte   $3C                             ; F06C 3C                       <
        .byte   $13                             ; F06D 13                       .
        bmi     LF074                           ; F06E 30 04                    0.
        .byte   $04                             ; F070 04                       .
        .byte   $B3                             ; F071 B3                       .
        .byte   $3C                             ; F072 3C                       <
        .byte   $0C                             ; F073 0C                       .
LF074:  .byte   $1F                             ; F074 1F                       .
        adc     ($49),y                         ; F075 71 49                    qI
        adc     ($40),y                         ; F077 71 40                    q@
        and     ($44),y                         ; F079 31 44                    1D
        sed                                     ; F07B F8                       .
        .byte   $04                             ; F07C 04                       .
        brk                                     ; F07D 00                       .
        bcs     LF09F                           ; F07E B0 1F                    ..
        ora     ($FE),y                         ; F080 11 FE                    ..
        ora     ($FE),y                         ; F082 11 FE                    ..
        ora     ($FE),y                         ; F084 11 FE                    ..
        .byte   $FF                             ; F086 FF                       .
        .byte   $5F                             ; F087 5F                       _
        ora     $10                             ; F088 05 10                    ..
        .byte   $13                             ; F08A 13                       .
        cpy     $B3                             ; F08B C4 B3                    ..
        and     $0B,x                           ; F08D 35 0B                    5.
        .byte   $1F                             ; F08F 1F                       .
        adc     ($49),y                         ; F090 71 49                    qI
        adc     ($40),y                         ; F092 71 40                    q@
        and     ($44),y                         ; F094 31 44                    1D
        .byte   $FF                             ; F096 FF                       .
        .byte   $3C                             ; F097 3C                       <
        .byte   $13                             ; F098 13                       .
        bmi     LF09F                           ; F099 30 04                    0.
        .byte   $04                             ; F09B 04                       .
        .byte   $B3                             ; F09C B3                       .
        .byte   $3C                             ; F09D 3C                       <
        .byte   $0C                             ; F09E 0C                       .
LF09F:  .byte   $1F                             ; F09F 1F                       .
        adc     ($4C),y                         ; F0A0 71 4C                    qL
        adc     ($43),y                         ; F0A2 71 43                    qC
        and     ($47),y                         ; F0A4 31 47                    1G
        sed                                     ; F0A6 F8                       .
        .byte   $04                             ; F0A7 04                       .
        brk                                     ; F0A8 00                       .
        bcs     LF0CA                           ; F0A9 B0 1F                    ..
        ora     ($FE),y                         ; F0AB 11 FE                    ..
        ora     ($FE),y                         ; F0AD 11 FE                    ..
        ora     ($FE),y                         ; F0AF 11 FE                    ..
        .byte   $FF                             ; F0B1 FF                       .
        .byte   $5F                             ; F0B2 5F                       _
        ora     $10                             ; F0B3 05 10                    ..
        .byte   $13                             ; F0B5 13                       .
        cpy     $B3                             ; F0B6 C4 B3                    ..
        and     $0B,x                           ; F0B8 35 0B                    5.
        .byte   $1F                             ; F0BA 1F                       .
        adc     ($4E),y                         ; F0BB 71 4E                    qN
        adc     ($45),y                         ; F0BD 71 45                    qE
        and     ($49),y                         ; F0BF 31 49                    1I
        .byte   $FF                             ; F0C1 FF                       .
        .byte   $3C                             ; F0C2 3C                       <
        .byte   $13                             ; F0C3 13                       .
        bmi     LF0CA                           ; F0C4 30 04                    0.
        .byte   $04                             ; F0C6 04                       .
        .byte   $B3                             ; F0C7 B3                       .
        .byte   $3C                             ; F0C8 3C                       <
        .byte   $0C                             ; F0C9 0C                       .
LF0CA:  .byte   $1F                             ; F0CA 1F                       .
        ora     ($FE),y                         ; F0CB 11 FE                    ..
        ora     ($FE),y                         ; F0CD 11 FE                    ..
        ora     ($FE),y                         ; F0CF 11 FE                    ..
        .byte   $FF                             ; F0D1 FF                       .
        .byte   $5F                             ; F0D2 5F                       _
        ora     $10                             ; F0D3 05 10                    ..
        .byte   $13                             ; F0D5 13                       .
        cpy     $B3                             ; F0D6 C4 B3                    ..
        eor     ($0B,x)                         ; F0D8 41 0B                    A.
        .byte   $1F                             ; F0DA 1F                       .
        adc     ($51),y                         ; F0DB 71 51                    qQ
        adc     ($48),y                         ; F0DD 71 48                    qH
        and     ($4C),y                         ; F0DF 31 4C                    1L
        .byte   $FF                             ; F0E1 FF                       .
        .byte   $3C                             ; F0E2 3C                       <
        .byte   $13                             ; F0E3 13                       .
        bmi     LF0EA                           ; F0E4 30 04                    0.
        .byte   $04                             ; F0E6 04                       .
        .byte   $B3                             ; F0E7 B3                       .
        .byte   $3C                             ; F0E8 3C                       <
        .byte   $0C                             ; F0E9 0C                       .
LF0EA:  .byte   $1F                             ; F0EA 1F                       .
        ora     ($FE),y                         ; F0EB 11 FE                    ..
        ora     ($FE),y                         ; F0ED 11 FE                    ..
        ora     ($FE),y                         ; F0EF 11 FE                    ..
        .byte   $FF                             ; F0F1 FF                       .
        .byte   $5F                             ; F0F2 5F                       _
        ora     $10                             ; F0F3 05 10                    ..
        .byte   $13                             ; F0F5 13                       .
        cpy     $B3                             ; F0F6 C4 B3                    ..
        and     $10,x                           ; F0F8 35 10                    5.
        bmi     LF11B                           ; F0FA 30 1F                    0.
        .byte   $FF                             ; F0FC FF                       .
        lsr     $2001                           ; F0FD 4E 01 20                 N. 
        ora     ($06,x)                         ; F100 01 06                    ..
        .byte   $77                             ; F102 77                       w
        eor     $01                             ; F103 45 01                    E.
        jsr     L4933                           ; F105 20 33 49                  3I
        .byte   $04                             ; F108 04                       .
        .byte   $FF                             ; F109 FF                       .
        .byte   $5F                             ; F10A 5F                       _
        asl     $10                             ; F10B 06 10                    ..
        .byte   $13                             ; F10D 13                       .
        cpy     $BB                             ; F10E C4 BB                    ..
        .byte   $3C                             ; F110 3C                       <
        .byte   $0C                             ; F111 0C                       .
        .byte   $13                             ; F112 13                       .
        cpy     $18                             ; F113 C4 18                    ..
        .byte   $FB                             ; F115 FB                       .
        .byte   $53                             ; F116 53                       S
        ora     $13                             ; F117 05 13                    ..
        brk                                     ; F119 00                       .
        .byte   $BB                             ; F11A BB                       .
LF11B:  and     $10,x                           ; F11B 35 10                    5.
        .byte   $13                             ; F11D 13                       .
        brk                                     ; F11E 00                       .
        clc                                     ; F11F 18                       .
        sbc     $303B,x                         ; F120 FD 3B 30                 .;0
        .byte   $04                             ; F123 04                       .
        .byte   $04                             ; F124 04                       .
        .byte   $B2                             ; F125 B2                       .
        .byte   $0B                             ; F126 0B                       .
LF127:  clc                                     ; F127 18                       .
        sbc     $105F,x                         ; F128 FD 5F 10                 ._.
        .byte   $13                             ; F12B 13                       .
        brk                                     ; F12C 00                       .
        .byte   $B2                             ; F12D B2                       .
        bpl     LF14B                           ; F12E 10 1B                    ..
        .byte   $44                             ; F130 44                       D
        bpl     LF177                           ; F131 10 44                    .D
        bpl     LF127                           ; F133 10 F2                    ..
        asl     $B3                             ; F135 06 B3                    ..
        .byte   $3C                             ; F137 3C                       <
        .byte   $0C                             ; F138 0C                       .
        .byte   $1F                             ; F139 1F                       .
        .byte   $44                             ; F13A 44                       D
        .byte   $0C                             ; F13B 0C                       .
        .byte   $44                             ; F13C 44                       D
        .byte   $0C                             ; F13D 0C                       .
        ora     ($FE),y                         ; F13E 11 FE                    ..
        .byte   $F3                             ; F140 F3                       .
        .byte   $53                             ; F141 53                       S
        ora     $B3                             ; F142 05 B3                    ..
        and     $10,x                           ; F144 35 10                    5.
        .byte   $1B                             ; F146 1B                       .
        .byte   $44                             ; F147 44                       D
        php                                     ; F148 08                       .
        .byte   $44                             ; F149 44                       D
        php                                     ; F14A 08                       .
LF14B:  sbc     $303B,x                         ; F14B FD 3B 30                 .;0
        .byte   $04                             ; F14E 04                       .
        .byte   $04                             ; F14F 04                       .
        .byte   $B2                             ; F150 B2                       .
        .byte   $0B                             ; F151 0B                       .
        .byte   $1F                             ; F152 1F                       .
        adc     $4C,x                           ; F153 75 4C                    uL
        jsr     L4375                           ; F155 20 75 43                  uC
        jsr     L4731                           ; F158 20 31 47                  1G
        sbc     $105F,x                         ; F15B FD 5F 10                 ._.
        .byte   $13                             ; F15E 13                       .
        brk                                     ; F15F 00                       .
        .byte   $B2                             ; F160 B2                       .
        bpl     LF182                           ; F161 10 1F                    ..
        adc     ($4E),y                         ; F163 71 4E                    qN
        adc     ($45),y                         ; F165 71 45                    qE
        and     ($49),y                         ; F167 31 49                    1I
        .byte   $F2                             ; F169 F2                       .
        asl     $B3                             ; F16A 06 B3                    ..
        .byte   $3C                             ; F16C 3C                       <
        .byte   $0C                             ; F16D 0C                       .
        clc                                     ; F16E 18                       .
        .byte   $F3                             ; F16F F3                       .
        .byte   $53                             ; F170 53                       S
        ora     $B3                             ; F171 05 B3                    ..
        and     $10,x                           ; F173 35 10                    5.
        clc                                     ; F175 18                       .
        .byte   $FD                             ; F176 FD                       .
LF177:  .byte   $3B                             ; F177 3B                       ;
        bmi     LF17E                           ; F178 30 04                    0.
        .byte   $04                             ; F17A 04                       .
        .byte   $B2                             ; F17B B2                       .
        .byte   $0B                             ; F17C 0B                       .
LF17D:  clc                                     ; F17D 18                       .
LF17E:  sbc     $105F,x                         ; F17E FD 5F 10                 ._.
        .byte   $13                             ; F181 13                       .
LF182:  brk                                     ; F182 00                       .
        .byte   $B2                             ; F183 B2                       .
        bpl     LF1A1                           ; F184 10 1B                    ..
        .byte   $44                             ; F186 44                       D
        bpl     LF1CD                           ; F187 10 44                    .D
        bpl     LF17D                           ; F189 10 F2                    ..
        asl     $B3                             ; F18B 06 B3                    ..
        .byte   $3C                             ; F18D 3C                       <
        .byte   $0C                             ; F18E 0C                       .
        .byte   $1F                             ; F18F 1F                       .
        .byte   $44                             ; F190 44                       D
        .byte   $0C                             ; F191 0C                       .
        .byte   $44                             ; F192 44                       D
        .byte   $0C                             ; F193 0C                       .
        ora     ($FE),y                         ; F194 11 FE                    ..
        .byte   $F3                             ; F196 F3                       .
        .byte   $53                             ; F197 53                       S
        ora     $B3                             ; F198 05 B3                    ..
        and     $10,x                           ; F19A 35 10                    5.
        .byte   $1B                             ; F19C 1B                       .
        .byte   $44                             ; F19D 44                       D
        php                                     ; F19E 08                       .
        .byte   $44                             ; F19F 44                       D
        php                                     ; F1A0 08                       .
LF1A1:  sbc     $303B,x                         ; F1A1 FD 3B 30                 .;0
        .byte   $04                             ; F1A4 04                       .
        .byte   $04                             ; F1A5 04                       .
        .byte   $B2                             ; F1A6 B2                       .
        .byte   $0B                             ; F1A7 0B                       .
        .byte   $1F                             ; F1A8 1F                       .
        adc     $4C,x                           ; F1A9 75 4C                    uL
        jsr     L4375                           ; F1AB 20 75 43                  uC
        jsr     L4731                           ; F1AE 20 31 47                  1G
        sbc     $105F,x                         ; F1B1 FD 5F 10                 ._.
        .byte   $13                             ; F1B4 13                       .
        brk                                     ; F1B5 00                       .
        .byte   $B2                             ; F1B6 B2                       .
        bpl     LF1D8                           ; F1B7 10 1F                    ..
        adc     ($4E),y                         ; F1B9 71 4E                    qN
        adc     ($45),y                         ; F1BB 71 45                    qE
        and     ($49),y                         ; F1BD 31 49                    1I
        .byte   $F2                             ; F1BF F2                       .
        asl     $B3                             ; F1C0 06 B3                    ..
        .byte   $3C                             ; F1C2 3C                       <
        .byte   $0C                             ; F1C3 0C                       .
        clc                                     ; F1C4 18                       .
        .byte   $F3                             ; F1C5 F3                       .
        .byte   $53                             ; F1C6 53                       S
        ora     $B3                             ; F1C7 05 B3                    ..
        and     $10,x                           ; F1C9 35 10                    5.
        clc                                     ; F1CB 18                       .
        .byte   $FD                             ; F1CC FD                       .
LF1CD:  .byte   $3B                             ; F1CD 3B                       ;
        bmi     LF1D4                           ; F1CE 30 04                    0.
        .byte   $04                             ; F1D0 04                       .
        .byte   $B2                             ; F1D1 B2                       .
        .byte   $0B                             ; F1D2 0B                       .
LF1D3:  clc                                     ; F1D3 18                       .
LF1D4:  sbc     $105F,x                         ; F1D4 FD 5F 10                 ._.
        .byte   $13                             ; F1D7 13                       .
LF1D8:  brk                                     ; F1D8 00                       .
        .byte   $B2                             ; F1D9 B2                       .
        bpl     LF1F7                           ; F1DA 10 1B                    ..
        .byte   $44                             ; F1DC 44                       D
        bpl     LF223                           ; F1DD 10 44                    .D
        bpl     LF1D3                           ; F1DF 10 F2                    ..
        asl     $B3                             ; F1E1 06 B3                    ..
        .byte   $3C                             ; F1E3 3C                       <
        .byte   $0C                             ; F1E4 0C                       .
        .byte   $1F                             ; F1E5 1F                       .
        .byte   $44                             ; F1E6 44                       D
        .byte   $0C                             ; F1E7 0C                       .
        .byte   $44                             ; F1E8 44                       D
        .byte   $0C                             ; F1E9 0C                       .
        ora     ($FE),y                         ; F1EA 11 FE                    ..
        .byte   $F3                             ; F1EC F3                       .
        .byte   $53                             ; F1ED 53                       S
        ora     $B3                             ; F1EE 05 B3                    ..
        and     $10,x                           ; F1F0 35 10                    5.
        .byte   $1F                             ; F1F2 1F                       .
        .byte   $FC                             ; F1F3 FC                       .
        jsr     LD413                           ; F1F4 20 13 D4                  ..
LF1F7:  .byte   $FC                             ; F1F7 FC                       .
        jsr     LD413                           ; F1F8 20 13 D4                  ..
        lda     $1349,y                         ; F1FB B9 49 13                 .I.
        .byte   $D4                             ; F1FE D4                       .
        sbc     $303B,x                         ; F1FF FD 3B 30                 .;0
        .byte   $04                             ; F202 04                       .
        .byte   $04                             ; F203 04                       .
        .byte   $B2                             ; F204 B2                       .
        .byte   $0B                             ; F205 0B                       .
        .byte   $1F                             ; F206 1F                       .
        sbc     $134D,y                         ; F207 F9 4D 13                 .M.
        cmp     ($F9),y                         ; F20A D1 F9                    ..
        .byte   $44                             ; F20C 44                       D
        .byte   $13                             ; F20D 13                       .
        cmp     ($B9),y                         ; F20E D1 B9                    ..
        pha                                     ; F210 48                       H
        .byte   $13                             ; F211 13                       .
        cmp     ($FD),y                         ; F212 D1 FD                    ..
        .byte   $5F                             ; F214 5F                       _
        bpl     LF22A                           ; F215 10 13                    ..
        brk                                     ; F217 00                       .
        .byte   $B2                             ; F218 B2                       .
        bpl     LF23A                           ; F219 10 1F                    ..
        adc     ($4C),y                         ; F21B 71 4C                    qL
        adc     ($43),y                         ; F21D 71 43                    qC
        and     ($47),y                         ; F21F 31 47                    1G
        .byte   $F2                             ; F221 F2                       .
        .byte   $06                             ; F222 06                       .
LF223:  .byte   $B3                             ; F223 B3                       .
        .byte   $3C                             ; F224 3C                       <
        .byte   $0C                             ; F225 0C                       .
        clc                                     ; F226 18                       .
        .byte   $F3                             ; F227 F3                       .
        .byte   $53                             ; F228 53                       S
        .byte   $05                             ; F229 05                       .
LF22A:  .byte   $B3                             ; F22A B3                       .
        and     $10,x                           ; F22B 35 10                    5.
        clc                                     ; F22D 18                       .
        sbc     $303B,x                         ; F22E FD 3B 30                 .;0
        .byte   $04                             ; F231 04                       .
        .byte   $04                             ; F232 04                       .
        .byte   $B2                             ; F233 B2                       .
        .byte   $0B                             ; F234 0B                       .
LF235:  clc                                     ; F235 18                       .
        sbc     $105F,x                         ; F236 FD 5F 10                 ._.
        .byte   $13                             ; F239 13                       .
LF23A:  brk                                     ; F23A 00                       .
        .byte   $B2                             ; F23B B2                       .
        bpl     LF259                           ; F23C 10 1B                    ..
        .byte   $44                             ; F23E 44                       D
        bpl     LF285                           ; F23F 10 44                    .D
        bpl     LF235                           ; F241 10 F2                    ..
        asl     $B3                             ; F243 06 B3                    ..
        .byte   $3C                             ; F245 3C                       <
        .byte   $0C                             ; F246 0C                       .
        .byte   $1F                             ; F247 1F                       .
        .byte   $44                             ; F248 44                       D
        .byte   $0C                             ; F249 0C                       .
        .byte   $44                             ; F24A 44                       D
        .byte   $0C                             ; F24B 0C                       .
        ora     ($FE),y                         ; F24C 11 FE                    ..
        .byte   $F3                             ; F24E F3                       .
        .byte   $53                             ; F24F 53                       S
        ora     $B3                             ; F250 05 B3                    ..
        and     $10,x                           ; F252 35 10                    5.
        .byte   $1B                             ; F254 1B                       .
        .byte   $44                             ; F255 44                       D
        php                                     ; F256 08                       .
        .byte   $44                             ; F257 44                       D
        php                                     ; F258 08                       .
LF259:  sbc     $303B,x                         ; F259 FD 3B 30                 .;0
        .byte   $04                             ; F25C 04                       .
        .byte   $04                             ; F25D 04                       .
        .byte   $B2                             ; F25E B2                       .
        .byte   $0B                             ; F25F 0B                       .
        .byte   $1F                             ; F260 1F                       .
        adc     $4A,x                           ; F261 75 4A                    uJ
        jsr     L4175                           ; F263 20 75 41                  uA
        jsr     L4531                           ; F266 20 31 45                  1E
        sbc     $105F,x                         ; F269 FD 5F 10                 ._.
        .byte   $13                             ; F26C 13                       .
        brk                                     ; F26D 00                       .
        .byte   $B2                             ; F26E B2                       .
        bpl     LF290                           ; F26F 10 1F                    ..
        adc     ($4C),y                         ; F271 71 4C                    qL
        adc     ($43),y                         ; F273 71 43                    qC
        and     ($47),y                         ; F275 31 47                    1G
        .byte   $F2                             ; F277 F2                       .
        asl     $B3                             ; F278 06 B3                    ..
        .byte   $3C                             ; F27A 3C                       <
        .byte   $0C                             ; F27B 0C                       .
        clc                                     ; F27C 18                       .
        .byte   $F3                             ; F27D F3                       .
        .byte   $53                             ; F27E 53                       S
        ora     $B3                             ; F27F 05 B3                    ..
        and     $10,x                           ; F281 35 10                    5.
        clc                                     ; F283 18                       .
        .byte   $FD                             ; F284 FD                       .
LF285:  .byte   $3B                             ; F285 3B                       ;
        bmi     LF28C                           ; F286 30 04                    0.
        .byte   $04                             ; F288 04                       .
        .byte   $B2                             ; F289 B2                       .
        .byte   $0B                             ; F28A 0B                       .
LF28B:  clc                                     ; F28B 18                       .
LF28C:  sbc     $105F,x                         ; F28C FD 5F 10                 ._.
        .byte   $13                             ; F28F 13                       .
LF290:  brk                                     ; F290 00                       .
        .byte   $B2                             ; F291 B2                       .
        bpl     LF2AF                           ; F292 10 1B                    ..
        .byte   $44                             ; F294 44                       D
        bpl     LF2DB                           ; F295 10 44                    .D
        bpl     LF28B                           ; F297 10 F2                    ..
        asl     $B3                             ; F299 06 B3                    ..
        .byte   $3C                             ; F29B 3C                       <
        .byte   $0C                             ; F29C 0C                       .
        .byte   $1F                             ; F29D 1F                       .
        .byte   $44                             ; F29E 44                       D
        .byte   $0C                             ; F29F 0C                       .
        .byte   $44                             ; F2A0 44                       D
        .byte   $0C                             ; F2A1 0C                       .
        ora     ($FE),y                         ; F2A2 11 FE                    ..
        .byte   $F3                             ; F2A4 F3                       .
        .byte   $53                             ; F2A5 53                       S
        ora     $B3                             ; F2A6 05 B3                    ..
        and     $10,x                           ; F2A8 35 10                    5.
        .byte   $1B                             ; F2AA 1B                       .
        .byte   $44                             ; F2AB 44                       D
        php                                     ; F2AC 08                       .
        .byte   $44                             ; F2AD 44                       D
        php                                     ; F2AE 08                       .
LF2AF:  sbc     $303B,x                         ; F2AF FD 3B 30                 .;0
        .byte   $04                             ; F2B2 04                       .
        .byte   $04                             ; F2B3 04                       .
        .byte   $B2                             ; F2B4 B2                       .
        .byte   $0B                             ; F2B5 0B                       .
        .byte   $1F                             ; F2B6 1F                       .
        adc     $4A,x                           ; F2B7 75 4A                    uJ
        jsr     L4175                           ; F2B9 20 75 41                  uA
        jsr     L4531                           ; F2BC 20 31 45                  1E
        sbc     $105F,x                         ; F2BF FD 5F 10                 ._.
        .byte   $13                             ; F2C2 13                       .
        brk                                     ; F2C3 00                       .
        .byte   $B2                             ; F2C4 B2                       .
        bpl     LF2E6                           ; F2C5 10 1F                    ..
        adc     ($4C),y                         ; F2C7 71 4C                    qL
        adc     ($43),y                         ; F2C9 71 43                    qC
        and     ($47),y                         ; F2CB 31 47                    1G
        .byte   $F2                             ; F2CD F2                       .
        asl     $B3                             ; F2CE 06 B3                    ..
        .byte   $3C                             ; F2D0 3C                       <
        .byte   $0C                             ; F2D1 0C                       .
        clc                                     ; F2D2 18                       .
        .byte   $F3                             ; F2D3 F3                       .
        .byte   $53                             ; F2D4 53                       S
        ora     $B3                             ; F2D5 05 B3                    ..
        and     $10,x                           ; F2D7 35 10                    5.
        clc                                     ; F2D9 18                       .
        .byte   $FD                             ; F2DA FD                       .
LF2DB:  .byte   $3B                             ; F2DB 3B                       ;
        bmi     LF2E2                           ; F2DC 30 04                    0.
        .byte   $04                             ; F2DE 04                       .
        .byte   $B2                             ; F2DF B2                       .
        .byte   $0B                             ; F2E0 0B                       .
LF2E1:  clc                                     ; F2E1 18                       .
LF2E2:  sbc     $105F,x                         ; F2E2 FD 5F 10                 ._.
        .byte   $13                             ; F2E5 13                       .
LF2E6:  brk                                     ; F2E6 00                       .
        .byte   $B2                             ; F2E7 B2                       .
        bpl     LF305                           ; F2E8 10 1B                    ..
        .byte   $44                             ; F2EA 44                       D
        bpl     LF331                           ; F2EB 10 44                    .D
        bpl     LF2E1                           ; F2ED 10 F2                    ..
        asl     $B3                             ; F2EF 06 B3                    ..
        .byte   $3C                             ; F2F1 3C                       <
        .byte   $0C                             ; F2F2 0C                       .
        .byte   $1F                             ; F2F3 1F                       .
        .byte   $44                             ; F2F4 44                       D
        .byte   $0C                             ; F2F5 0C                       .
        .byte   $44                             ; F2F6 44                       D
        .byte   $0C                             ; F2F7 0C                       .
        ora     ($FE),y                         ; F2F8 11 FE                    ..
        .byte   $F3                             ; F2FA F3                       .
        .byte   $53                             ; F2FB 53                       S
        ora     $B3                             ; F2FC 05 B3                    ..
        and     $10,x                           ; F2FE 35 10                    5.
        .byte   $1B                             ; F300 1B                       .
        .byte   $44                             ; F301 44                       D
        php                                     ; F302 08                       .
        .byte   $44                             ; F303 44                       D
        php                                     ; F304 08                       .
LF305:  sbc     $303B,x                         ; F305 FD 3B 30                 .;0
        .byte   $04                             ; F308 04                       .
        .byte   $04                             ; F309 04                       .
        .byte   $B2                             ; F30A B2                       .
        .byte   $0B                             ; F30B 0B                       .
        .byte   $1B                             ; F30C 1B                       .
        .byte   $44                             ; F30D 44                       D
        .byte   $04                             ; F30E 04                       .
        .byte   $44                             ; F30F 44                       D
LF310:  .byte   $04                             ; F310 04                       .
        sbc     $105F,x                         ; F311 FD 5F 10                 ._.
        .byte   $13                             ; F314 13                       .
        brk                                     ; F315 00                       .
        .byte   $B2                             ; F316 B2                       .
        bpl     LF349                           ; F317 10 30                    .0
        .byte   $1F                             ; F319 1F                       .
        .byte   $FF                             ; F31A FF                       .
        lsr     $2001                           ; F31B 4E 01 20                 N. 
        ora     ($06,x)                         ; F31E 01 06                    ..
        .byte   $77                             ; F320 77                       w
        eor     $01                             ; F321 45 01                    E.
        jsr     L4933                           ; F323 20 33 49                  3I
        .byte   $04                             ; F326 04                       .
        .byte   $FF                             ; F327 FF                       .
        .byte   $5F                             ; F328 5F                       _
        asl     $10                             ; F329 06 10                    ..
        .byte   $13                             ; F32B 13                       .
        cpy     $BB                             ; F32C C4 BB                    ..
        .byte   $3C                             ; F32E 3C                       <
        .byte   $0C                             ; F32F 0C                       .
        .byte   $13                             ; F330 13                       .
LF331:  cpy     $18                             ; F331 C4 18                    ..
        .byte   $FB                             ; F333 FB                       .
        .byte   $53                             ; F334 53                       S
        ora     $13                             ; F335 05 13                    ..
        brk                                     ; F337 00                       .
        .byte   $BB                             ; F338 BB                       .
        and     $10,x                           ; F339 35 10                    5.
        .byte   $13                             ; F33B 13                       .
        brk                                     ; F33C 00                       .
        clc                                     ; F33D 18                       .
        sbc     $303B,x                         ; F33E FD 3B 30                 .;0
        .byte   $04                             ; F341 04                       .
        .byte   $04                             ; F342 04                       .
        .byte   $B2                             ; F343 B2                       .
        .byte   $0B                             ; F344 0B                       .
        .byte   $1C                             ; F345 1C                       .
        lda     $1355,y                         ; F346 B9 55 13                 .U.
LF349:  .byte   $C3                             ; F349 C3                       .
        sbc     $105F,x                         ; F34A FD 5F 10                 ._.
        .byte   $13                             ; F34D 13                       .
        brk                                     ; F34E 00                       .
        .byte   $B2                             ; F34F B2                       .
        bpl     LF371                           ; F350 10 1F                    ..
        .byte   $44                             ; F352 44                       D
        bpl     LF399                           ; F353 10 44                    .D
        bpl     LF310                           ; F355 10 B9                    ..
        eor     #$13                            ; F357 49 13                    I.
LF359:  brk                                     ; F359 00                       .
        .byte   $F2                             ; F35A F2                       .
        asl     $B3                             ; F35B 06 B3                    ..
        .byte   $3C                             ; F35D 3C                       <
        .byte   $0C                             ; F35E 0C                       .
        .byte   $1F                             ; F35F 1F                       .
        .byte   $44                             ; F360 44                       D
        .byte   $0C                             ; F361 0C                       .
        .byte   $44                             ; F362 44                       D
        .byte   $0C                             ; F363 0C                       .
        bcs     LF359                           ; F364 B0 F3                    ..
        .byte   $53                             ; F366 53                       S
        ora     $B3                             ; F367 05 B3                    ..
        and     $10,x                           ; F369 35 10                    5.
        .byte   $1F                             ; F36B 1F                       .
        .byte   $44                             ; F36C 44                       D
        php                                     ; F36D 08                       .
LF36E:  .byte   $44                             ; F36E 44                       D
        php                                     ; F36F 08                       .
        .byte   $B0                             ; F370 B0                       .
LF371:  sbc     $303B,x                         ; F371 FD 3B 30                 .;0
        .byte   $04                             ; F374 04                       .
        .byte   $04                             ; F375 04                       .
        .byte   $B2                             ; F376 B2                       .
        .byte   $0B                             ; F377 0B                       .
        .byte   $1F                             ; F378 1F                       .
        adc     $4C,x                           ; F379 75 4C                    uL
        jsr     L4375                           ; F37B 20 75 43                  uC
        jsr     L4731                           ; F37E 20 31 47                  1G
        sbc     $105F,x                         ; F381 FD 5F 10                 ._.
        .byte   $13                             ; F384 13                       .
        brk                                     ; F385 00                       .
        .byte   $B2                             ; F386 B2                       .
        bpl     LF3A8                           ; F387 10 1F                    ..
        adc     ($4E),y                         ; F389 71 4E                    qN
        adc     ($45),y                         ; F38B 71 45                    qE
        and     ($49),y                         ; F38D 31 49                    1I
        .byte   $F2                             ; F38F F2                       .
        asl     $B3                             ; F390 06 B3                    ..
        .byte   $3C                             ; F392 3C                       <
        .byte   $0C                             ; F393 0C                       .
        clc                                     ; F394 18                       .
        .byte   $F3                             ; F395 F3                       .
        .byte   $53                             ; F396 53                       S
        ora     $B3                             ; F397 05 B3                    ..
LF399:  and     $10,x                           ; F399 35 10                    5.
        clc                                     ; F39B 18                       .
        sbc     $303B,x                         ; F39C FD 3B 30                 .;0
        .byte   $04                             ; F39F 04                       .
        .byte   $04                             ; F3A0 04                       .
        .byte   $B2                             ; F3A1 B2                       .
        .byte   $0B                             ; F3A2 0B                       .
        .byte   $1C                             ; F3A3 1C                       .
        lda     $1355,y                         ; F3A4 B9 55 13                 .U.
        .byte   $C3                             ; F3A7 C3                       .
LF3A8:  sbc     $105F,x                         ; F3A8 FD 5F 10                 ._.
        .byte   $13                             ; F3AB 13                       .
        brk                                     ; F3AC 00                       .
        .byte   $B2                             ; F3AD B2                       .
        bpl     LF3CF                           ; F3AE 10 1F                    ..
        .byte   $44                             ; F3B0 44                       D
        bpl     LF3F7                           ; F3B1 10 44                    .D
        bpl     LF36E                           ; F3B3 10 B9                    ..
        eor     #$13                            ; F3B5 49 13                    I.
LF3B7:  brk                                     ; F3B7 00                       .
        .byte   $F2                             ; F3B8 F2                       .
        asl     $B3                             ; F3B9 06 B3                    ..
        .byte   $3C                             ; F3BB 3C                       <
        .byte   $0C                             ; F3BC 0C                       .
        .byte   $1F                             ; F3BD 1F                       .
        .byte   $44                             ; F3BE 44                       D
        .byte   $0C                             ; F3BF 0C                       .
        .byte   $44                             ; F3C0 44                       D
        .byte   $0C                             ; F3C1 0C                       .
        bcs     LF3B7                           ; F3C2 B0 F3                    ..
        .byte   $53                             ; F3C4 53                       S
        ora     $B3                             ; F3C5 05 B3                    ..
        and     $10,x                           ; F3C7 35 10                    5.
        .byte   $1F                             ; F3C9 1F                       .
        .byte   $44                             ; F3CA 44                       D
        php                                     ; F3CB 08                       .
LF3CC:  .byte   $44                             ; F3CC 44                       D
        php                                     ; F3CD 08                       .
        .byte   $B0                             ; F3CE B0                       .
LF3CF:  sbc     $303B,x                         ; F3CF FD 3B 30                 .;0
        .byte   $04                             ; F3D2 04                       .
        .byte   $04                             ; F3D3 04                       .
        .byte   $B2                             ; F3D4 B2                       .
        .byte   $0B                             ; F3D5 0B                       .
        .byte   $1F                             ; F3D6 1F                       .
        adc     $4C,x                           ; F3D7 75 4C                    uL
        jsr     L4375                           ; F3D9 20 75 43                  uC
        jsr     L4731                           ; F3DC 20 31 47                  1G
        sbc     $105F,x                         ; F3DF FD 5F 10                 ._.
        .byte   $13                             ; F3E2 13                       .
        brk                                     ; F3E3 00                       .
        .byte   $B2                             ; F3E4 B2                       .
        bpl     LF406                           ; F3E5 10 1F                    ..
        adc     ($4E),y                         ; F3E7 71 4E                    qN
        adc     ($45),y                         ; F3E9 71 45                    qE
        and     ($49),y                         ; F3EB 31 49                    1I
        .byte   $F2                             ; F3ED F2                       .
        asl     $B3                             ; F3EE 06 B3                    ..
        .byte   $3C                             ; F3F0 3C                       <
        .byte   $0C                             ; F3F1 0C                       .
        clc                                     ; F3F2 18                       .
        .byte   $F3                             ; F3F3 F3                       .
        .byte   $53                             ; F3F4 53                       S
        ora     $B3                             ; F3F5 05 B3                    ..
LF3F7:  and     $10,x                           ; F3F7 35 10                    5.
        clc                                     ; F3F9 18                       .
        sbc     $303B,x                         ; F3FA FD 3B 30                 .;0
        .byte   $04                             ; F3FD 04                       .
        .byte   $04                             ; F3FE 04                       .
        .byte   $B2                             ; F3FF B2                       .
        .byte   $0B                             ; F400 0B                       .
        .byte   $1C                             ; F401 1C                       .
        lda     $1355,y                         ; F402 B9 55 13                 .U.
        .byte   $C3                             ; F405 C3                       .
LF406:  sbc     $105F,x                         ; F406 FD 5F 10                 ._.
        .byte   $13                             ; F409 13                       .
        brk                                     ; F40A 00                       .
        .byte   $B2                             ; F40B B2                       .
        bpl     LF42D                           ; F40C 10 1F                    ..
        .byte   $44                             ; F40E 44                       D
        bpl     LF455                           ; F40F 10 44                    .D
        bpl     LF3CC                           ; F411 10 B9                    ..
        eor     #$13                            ; F413 49 13                    I.
LF415:  brk                                     ; F415 00                       .
        .byte   $F2                             ; F416 F2                       .
        asl     $B3                             ; F417 06 B3                    ..
        .byte   $3C                             ; F419 3C                       <
        .byte   $0C                             ; F41A 0C                       .
        .byte   $1F                             ; F41B 1F                       .
        .byte   $44                             ; F41C 44                       D
        .byte   $0C                             ; F41D 0C                       .
        .byte   $44                             ; F41E 44                       D
        .byte   $0C                             ; F41F 0C                       .
        bcs     LF415                           ; F420 B0 F3                    ..
        .byte   $53                             ; F422 53                       S
        ora     $B3                             ; F423 05 B3                    ..
        and     $10,x                           ; F425 35 10                    5.
        .byte   $1F                             ; F427 1F                       .
        .byte   $FC                             ; F428 FC                       .
        jsr     LD413                           ; F429 20 13 D4                  ..
        .byte   $FC                             ; F42C FC                       .
LF42D:  jsr     LD413                           ; F42D 20 13 D4                  ..
        clv                                     ; F430 B8                       .
        .byte   $13                             ; F431 13                       .
        .byte   $D4                             ; F432 D4                       .
        .byte   $FD                             ; F433 FD                       .
LF434:  .byte   $3B                             ; F434 3B                       ;
        bmi     $F43B                           ; F435 30 04                    0.
        .byte   $04                             ; F437 04                       .
        .byte   $B2                             ; F438 B2                       .
        .byte   $0B                             ; F439 0B                       .
        .byte   $1F                             ; F43A 1F                       .
        sbc     $134F,y                         ; F43B F9 4F 13                 .O.
        cmp     ($F9),y                         ; F43E D1 F9                    ..
        lsr     $13                             ; F440 46 13                    F.
        cmp     ($B9),y                         ; F442 D1 B9                    ..
        lsr     a                               ; F444 4A                       J
        .byte   $13                             ; F445 13                       .
        cmp     ($FD),y                         ; F446 D1 FD                    ..
        .byte   $5F                             ; F448 5F                       _
        bpl     LF45E                           ; F449 10 13                    ..
        brk                                     ; F44B 00                       .
        .byte   $B2                             ; F44C B2                       .
        bpl     LF46E                           ; F44D 10 1F                    ..
        adc     ($50),y                         ; F44F 71 50                    qP
        adc     ($47),y                         ; F451 71 47                    qG
        and     ($4B),y                         ; F453 31 4B                    1K
LF455:  .byte   $F2                             ; F455 F2                       .
        asl     $B3                             ; F456 06 B3                    ..
        .byte   $3C                             ; F458 3C                       <
        .byte   $0C                             ; F459 0C                       .
        clc                                     ; F45A 18                       .
        .byte   $F3                             ; F45B F3                       .
        .byte   $53                             ; F45C 53                       S
        .byte   $05                             ; F45D 05                       .
LF45E:  .byte   $B3                             ; F45E B3                       .
        and     $10,x                           ; F45F 35 10                    5.
        clc                                     ; F461 18                       .
        sbc     $303B,x                         ; F462 FD 3B 30                 .;0
        .byte   $04                             ; F465 04                       .
        .byte   $04                             ; F466 04                       .
        .byte   $B2                             ; F467 B2                       .
        .byte   $0B                             ; F468 0B                       .
        .byte   $1C                             ; F469 1C                       .
        lda     $1357,y                         ; F46A B9 57 13                 .W.
        .byte   $C3                             ; F46D C3                       .
LF46E:  sbc     $105F,x                         ; F46E FD 5F 10                 ._.
        .byte   $13                             ; F471 13                       .
        brk                                     ; F472 00                       .
        .byte   $B2                             ; F473 B2                       .
        bpl     LF495                           ; F474 10 1F                    ..
        .byte   $44                             ; F476 44                       D
        bpl     LF4BD                           ; F477 10 44                    .D
        bpl     LF434                           ; F479 10 B9                    ..
        .byte   $4B                             ; F47B 4B                       K
        .byte   $13                             ; F47C 13                       .
LF47D:  brk                                     ; F47D 00                       .
        .byte   $F2                             ; F47E F2                       .
        asl     $B3                             ; F47F 06 B3                    ..
        .byte   $3C                             ; F481 3C                       <
        .byte   $0C                             ; F482 0C                       .
        .byte   $1F                             ; F483 1F                       .
        .byte   $44                             ; F484 44                       D
        .byte   $0C                             ; F485 0C                       .
        .byte   $44                             ; F486 44                       D
        .byte   $0C                             ; F487 0C                       .
        bcs     LF47D                           ; F488 B0 F3                    ..
        .byte   $53                             ; F48A 53                       S
        ora     $B3                             ; F48B 05 B3                    ..
        and     $10,x                           ; F48D 35 10                    5.
        .byte   $1F                             ; F48F 1F                       .
        .byte   $44                             ; F490 44                       D
        php                                     ; F491 08                       .
LF492:  .byte   $44                             ; F492 44                       D
        php                                     ; F493 08                       .
        .byte   $B0                             ; F494 B0                       .
LF495:  sbc     $303B,x                         ; F495 FD 3B 30                 .;0
        .byte   $04                             ; F498 04                       .
        .byte   $04                             ; F499 04                       .
        .byte   $B2                             ; F49A B2                       .
        .byte   $0B                             ; F49B 0B                       .
        .byte   $1F                             ; F49C 1F                       .
        adc     $4E,x                           ; F49D 75 4E                    uN
        jsr     L4575                           ; F49F 20 75 45                  uE
        jsr     L4931                           ; F4A2 20 31 49                  1I
        sbc     $105F,x                         ; F4A5 FD 5F 10                 ._.
        .byte   $13                             ; F4A8 13                       .
        brk                                     ; F4A9 00                       .
        .byte   $B2                             ; F4AA B2                       .
        bpl     LF4CC                           ; F4AB 10 1F                    ..
        adc     ($50),y                         ; F4AD 71 50                    qP
        adc     ($47),y                         ; F4AF 71 47                    qG
        and     ($4B),y                         ; F4B1 31 4B                    1K
        .byte   $F2                             ; F4B3 F2                       .
        asl     $B3                             ; F4B4 06 B3                    ..
        .byte   $3C                             ; F4B6 3C                       <
        .byte   $0C                             ; F4B7 0C                       .
        clc                                     ; F4B8 18                       .
        .byte   $F3                             ; F4B9 F3                       .
        .byte   $53                             ; F4BA 53                       S
        ora     $B3                             ; F4BB 05 B3                    ..
LF4BD:  and     $10,x                           ; F4BD 35 10                    5.
        clc                                     ; F4BF 18                       .
        sbc     $303B,x                         ; F4C0 FD 3B 30                 .;0
        .byte   $04                             ; F4C3 04                       .
        .byte   $04                             ; F4C4 04                       .
        .byte   $B2                             ; F4C5 B2                       .
        .byte   $0B                             ; F4C6 0B                       .
        .byte   $1C                             ; F4C7 1C                       .
        lda     $1357,y                         ; F4C8 B9 57 13                 .W.
        .byte   $C3                             ; F4CB C3                       .
LF4CC:  sbc     $105F,x                         ; F4CC FD 5F 10                 ._.
        .byte   $13                             ; F4CF 13                       .
        brk                                     ; F4D0 00                       .
        .byte   $B2                             ; F4D1 B2                       .
        bpl     LF4F3                           ; F4D2 10 1F                    ..
        .byte   $44                             ; F4D4 44                       D
        bpl     LF51B                           ; F4D5 10 44                    .D
        bpl     LF492                           ; F4D7 10 B9                    ..
        .byte   $4B                             ; F4D9 4B                       K
        .byte   $13                             ; F4DA 13                       .
LF4DB:  brk                                     ; F4DB 00                       .
        .byte   $F2                             ; F4DC F2                       .
        asl     $B3                             ; F4DD 06 B3                    ..
        .byte   $3C                             ; F4DF 3C                       <
        .byte   $0C                             ; F4E0 0C                       .
        .byte   $1F                             ; F4E1 1F                       .
        .byte   $44                             ; F4E2 44                       D
        .byte   $0C                             ; F4E3 0C                       .
        .byte   $44                             ; F4E4 44                       D
        .byte   $0C                             ; F4E5 0C                       .
        bcs     LF4DB                           ; F4E6 B0 F3                    ..
        .byte   $53                             ; F4E8 53                       S
        ora     $B3                             ; F4E9 05 B3                    ..
        and     $10,x                           ; F4EB 35 10                    5.
        .byte   $1F                             ; F4ED 1F                       .
        .byte   $44                             ; F4EE 44                       D
        php                                     ; F4EF 08                       .
LF4F0:  .byte   $44                             ; F4F0 44                       D
        php                                     ; F4F1 08                       .
        .byte   $B0                             ; F4F2 B0                       .
LF4F3:  sbc     $303B,x                         ; F4F3 FD 3B 30                 .;0
        .byte   $04                             ; F4F6 04                       .
        .byte   $04                             ; F4F7 04                       .
        .byte   $B2                             ; F4F8 B2                       .
        .byte   $0B                             ; F4F9 0B                       .
        .byte   $1F                             ; F4FA 1F                       .
        adc     $4E,x                           ; F4FB 75 4E                    uN
        jsr     L4575                           ; F4FD 20 75 45                  uE
        jsr     L4931                           ; F500 20 31 49                  1I
        sbc     $105F,x                         ; F503 FD 5F 10                 ._.
        .byte   $13                             ; F506 13                       .
        brk                                     ; F507 00                       .
        .byte   $B2                             ; F508 B2                       .
        bpl     LF52A                           ; F509 10 1F                    ..
        adc     ($50),y                         ; F50B 71 50                    qP
        adc     ($47),y                         ; F50D 71 47                    qG
        and     ($4B),y                         ; F50F 31 4B                    1K
        .byte   $F2                             ; F511 F2                       .
        asl     $B3                             ; F512 06 B3                    ..
        .byte   $3C                             ; F514 3C                       <
        .byte   $0C                             ; F515 0C                       .
        clc                                     ; F516 18                       .
        .byte   $F3                             ; F517 F3                       .
        .byte   $53                             ; F518 53                       S
        ora     $B3                             ; F519 05 B3                    ..
LF51B:  and     $10,x                           ; F51B 35 10                    5.
        clc                                     ; F51D 18                       .
        sbc     $303B,x                         ; F51E FD 3B 30                 .;0
        .byte   $04                             ; F521 04                       .
        .byte   $04                             ; F522 04                       .
        .byte   $B2                             ; F523 B2                       .
        .byte   $0B                             ; F524 0B                       .
        .byte   $1C                             ; F525 1C                       .
        lda     $1357,y                         ; F526 B9 57 13                 .W.
        .byte   $C3                             ; F529 C3                       .
LF52A:  sbc     $105F,x                         ; F52A FD 5F 10                 ._.
        .byte   $13                             ; F52D 13                       .
        brk                                     ; F52E 00                       .
        .byte   $B2                             ; F52F B2                       .
        bpl     LF551                           ; F530 10 1F                    ..
        .byte   $44                             ; F532 44                       D
        bpl     LF579                           ; F533 10 44                    .D
        bpl     LF4F0                           ; F535 10 B9                    ..
        .byte   $4B                             ; F537 4B                       K
        .byte   $13                             ; F538 13                       .
LF539:  brk                                     ; F539 00                       .
        .byte   $F2                             ; F53A F2                       .
        asl     $B3                             ; F53B 06 B3                    ..
        .byte   $3C                             ; F53D 3C                       <
        .byte   $0C                             ; F53E 0C                       .
        .byte   $1F                             ; F53F 1F                       .
        .byte   $44                             ; F540 44                       D
        .byte   $0C                             ; F541 0C                       .
        .byte   $44                             ; F542 44                       D
        .byte   $0C                             ; F543 0C                       .
        bcs     LF539                           ; F544 B0 F3                    ..
        .byte   $53                             ; F546 53                       S
        ora     $B3                             ; F547 05 B3                    ..
        and     $10,x                           ; F549 35 10                    5.
        .byte   $1F                             ; F54B 1F                       .
        .byte   $44                             ; F54C 44                       D
        php                                     ; F54D 08                       .
        .byte   $44                             ; F54E 44                       D
        php                                     ; F54F 08                       .
        .byte   $B0                             ; F550 B0                       .
LF551:  sbc     $303B,x                         ; F551 FD 3B 30                 .;0
        .byte   $04                             ; F554 04                       .
        .byte   $04                             ; F555 04                       .
        .byte   $B2                             ; F556 B2                       .
        .byte   $0B                             ; F557 0B                       .
        .byte   $1F                             ; F558 1F                       .
        .byte   $44                             ; F559 44                       D
        .byte   $04                             ; F55A 04                       .
        .byte   $44                             ; F55B 44                       D
LF55C:  .byte   $04                             ; F55C 04                       .
        bcs     LF55C                           ; F55D B0 FD                    ..
        .byte   $5F                             ; F55F 5F                       _
        bpl     LF575                           ; F560 10 13                    ..
        brk                                     ; F562 00                       .
        .byte   $B2                             ; F563 B2                       .
        bpl     LF586                           ; F564 10 20                    . 
        .byte   $1F                             ; F566 1F                       .
        ora     ($FE),y                         ; F567 11 FE                    ..
        ora     ($FE),y                         ; F569 11 FE                    ..
        .byte   $BB                             ; F56B BB                       .
        plp                                     ; F56C 28                       (
        .byte   $07                             ; F56D 07                       .
        .byte   $13                             ; F56E 13                       .
        cpy     $FF                             ; F56F C4 FF                    ..
        .byte   $5F                             ; F571 5F                       _
        asl     $10                             ; F572 06 10                    ..
        .byte   $13                             ; F574 13                       .
LF575:  cpy     $88                             ; F575 C4 88                    ..
        ora     ($07,x)                         ; F577 01 07                    ..
LF579:  .byte   $0C                             ; F579 0C                       .
        tsx                                     ; F57A BA                       .
        .byte   $04                             ; F57B 04                       .
        .byte   $13                             ; F57C 13                       .
        brk                                     ; F57D 00                       .
        .byte   $FB                             ; F57E FB                       .
        .byte   $53                             ; F57F 53                       S
        ora     $13                             ; F580 05 13                    ..
        brk                                     ; F582 00                       .
        .byte   $0F                             ; F583 0F                       .
        .byte   $77                             ; F584 77                       w
        lsr     a                               ; F585 4A                       J
LF586:  .byte   $1A                             ; F586 1A                       .
        jsr     L4177                           ; F587 20 77 41                  wA
        .byte   $1A                             ; F58A 1A                       .
        jsr     LFDB0                           ; F58B 20 B0 FD                  ..
        .byte   $3B                             ; F58E 3B                       ;
        bmi     LF595                           ; F58F 30 04                    0.
        .byte   $04                             ; F591 04                       .
        .byte   $0F                             ; F592 0F                       .
        adc     ($4C),y                         ; F593 71 4C                    qL
LF595:  .byte   $71                             ; F595 71                       q
LF596:  .byte   $43                             ; F596 43                       C
        bcs     LF596                           ; F597 B0 FD                    ..
        .byte   $5F                             ; F599 5F                       _
        bpl     LF5AF                           ; F59A 10 13                    ..
        brk                                     ; F59C 00                       .
        .byte   $0C                             ; F59D 0C                       .
        .byte   $B2                             ; F59E B2                       .
        .byte   $07                             ; F59F 07                       .
        .byte   $F2                             ; F5A0 F2                       .
        asl     $0F                             ; F5A1 06 0F                    ..
        adc     ($3E),y                         ; F5A3 71 3E                    q>
        adc     ($35),y                         ; F5A5 71 35                    q5
        .byte   $B2                             ; F5A7 B2                       .
        .byte   $04                             ; F5A8 04                       .
        .byte   $F3                             ; F5A9 F3                       .
        .byte   $53                             ; F5AA 53                       S
        ora     $0F                             ; F5AB 05 0F                    ..
        adc     ($40),y                         ; F5AD 71 40                    q@
LF5AF:  .byte   $71                             ; F5AF 71                       q
LF5B0:  .byte   $37                             ; F5B0 37                       7
        bcs     LF5B0                           ; F5B1 B0 FD                    ..
        .byte   $3B                             ; F5B3 3B                       ;
        bmi     LF5BA                           ; F5B4 30 04                    0.
        .byte   $04                             ; F5B6 04                       .
LF5B7:  .byte   $0C                             ; F5B7 0C                       .
        bcs     LF5B7                           ; F5B8 B0 FD                    ..
LF5BA:  .byte   $5F                             ; F5BA 5F                       _
        bpl     LF5D0                           ; F5BB 10 13                    ..
        brk                                     ; F5BD 00                       .
        .byte   $0F                             ; F5BE 0F                       .
        adc     ($4A),y                         ; F5BF 71 4A                    qJ
        adc     ($40),y                         ; F5C1 71 40                    q@
        .byte   $B2                             ; F5C3 B2                       .
        .byte   $07                             ; F5C4 07                       .
        .byte   $F2                             ; F5C5 F2                       .
        asl     $0F                             ; F5C6 06 0F                    ..
        adc     ($4C),y                         ; F5C8 71 4C                    qL
        adc     ($42),y                         ; F5CA 71 42                    qB
        .byte   $B2                             ; F5CC B2                       .
        .byte   $04                             ; F5CD 04                       .
        .byte   $F3                             ; F5CE F3                       .
        .byte   $53                             ; F5CF 53                       S
LF5D0:  .byte   $05                             ; F5D0 05                       .
LF5D1:  .byte   $0C                             ; F5D1 0C                       .
        bcs     LF5D1                           ; F5D2 B0 FD                    ..
        .byte   $3B                             ; F5D4 3B                       ;
        bmi     LF5DB                           ; F5D5 30 04                    0.
        .byte   $04                             ; F5D7 04                       .
        .byte   $0F                             ; F5D8 0F                       .
        adc     ($3E),y                         ; F5D9 71 3E                    q>
LF5DB:  .byte   $71                             ; F5DB 71                       q
LF5DC:  .byte   $34                             ; F5DC 34                       4
        bcs     LF5DC                           ; F5DD B0 FD                    ..
        .byte   $5F                             ; F5DF 5F                       _
        bpl     LF5F5                           ; F5E0 10 13                    ..
        brk                                     ; F5E2 00                       .
        .byte   $0F                             ; F5E3 0F                       .
        adc     ($40),y                         ; F5E4 71 40                    q@
        adc     ($36),y                         ; F5E6 71 36                    q6
        .byte   $B2                             ; F5E8 B2                       .
        .byte   $07                             ; F5E9 07                       .
        .byte   $F2                             ; F5EA F2                       .
        asl     $0C                             ; F5EB 06 0C                    ..
        .byte   $B2                             ; F5ED B2                       .
        .byte   $04                             ; F5EE 04                       .
        .byte   $F3                             ; F5EF F3                       .
        .byte   $53                             ; F5F0 53                       S
        ora     $0F                             ; F5F1 05 0F                    ..
        adc     ($3E),y                         ; F5F3 71 3E                    q>
LF5F5:  .byte   $71                             ; F5F5 71                       q
LF5F6:  .byte   $34                             ; F5F6 34                       4
        bcs     LF5F6                           ; F5F7 B0 FD                    ..
        .byte   $3B                             ; F5F9 3B                       ;
        bmi     LF600                           ; F5FA 30 04                    0.
        .byte   $04                             ; F5FC 04                       .
LF5FD:  .byte   $0C                             ; F5FD 0C                       .
        bcs     LF5FD                           ; F5FE B0 FD                    ..
LF600:  .byte   $5F                             ; F600 5F                       _
        bpl     LF616                           ; F601 10 13                    ..
        brk                                     ; F603 00                       .
        .byte   $0F                             ; F604 0F                       .
        .byte   $73                             ; F605 73                       s
        .byte   $34                             ; F606 34                       4
        .byte   $02                             ; F607 02                       .
        .byte   $FA                             ; F608 FA                       .
        .byte   $02                             ; F609 02                       .
        ora     $F2                             ; F60A 05 F2                    ..
        tsx                                     ; F60C BA                       .
        .byte   $07                             ; F60D 07                       .
        .byte   $13                             ; F60E 13                       .
        cpy     $FA                             ; F60F C4 FA                    ..
        asl     $13                             ; F611 06 13                    ..
        cpy     $0C                             ; F613 C4 0C                    ..
        tsx                                     ; F615 BA                       .
LF616:  .byte   $04                             ; F616 04                       .
        .byte   $13                             ; F617 13                       .
        brk                                     ; F618 00                       .
        .byte   $FB                             ; F619 FB                       .
        .byte   $53                             ; F61A 53                       S
        ora     $13                             ; F61B 05 13                    ..
        brk                                     ; F61D 00                       .
LF61E:  .byte   $0C                             ; F61E 0C                       .
        bcs     LF61E                           ; F61F B0 FD                    ..
        .byte   $3B                             ; F621 3B                       ;
        bmi     LF628                           ; F622 30 04                    0.
        .byte   $04                             ; F624 04                       .
        .byte   $0F                             ; F625 0F                       .
        .byte   $FD                             ; F626 FD                       .
        .byte   $77                             ; F627 77                       w
LF628:  brk                                     ; F628 00                       .
        .byte   $13                             ; F629 13                       .
        dec     $FD,x                           ; F62A D6 FD                    ..
        .byte   $77                             ; F62C 77                       w
        brk                                     ; F62D 00                       .
        .byte   $13                             ; F62E 13                       .
        dec     $B0,x                           ; F62F D6 B0                    ..
        sbc     $105F,x                         ; F631 FD 5F 10                 ._.
        .byte   $13                             ; F634 13                       .
        brk                                     ; F635 00                       .
        .byte   $0F                             ; F636 0F                       .
        adc     $2F,x                           ; F637 75 2F                    u/
        jsr     L2FFD                           ; F639 20 FD 2F                  ./
        jsr     L0005                           ; F63C 20 05 00                  ..
        .byte   $B2                             ; F63F B2                       .
        .byte   $07                             ; F640 07                       .
        .byte   $F2                             ; F641 F2                       .
        asl     $0C                             ; F642 06 0C                    ..
        .byte   $B2                             ; F644 B2                       .
        .byte   $04                             ; F645 04                       .
        .byte   $F3                             ; F646 F3                       .
        .byte   $53                             ; F647 53                       S
        .byte   $05                             ; F648 05                       .
LF649:  .byte   $0C                             ; F649 0C                       .
        bcs     LF649                           ; F64A B0 FD                    ..
        .byte   $3B                             ; F64C 3B                       ;
        bmi     LF653                           ; F64D 30 04                    0.
        .byte   $04                             ; F64F 04                       .
        .byte   $0F                             ; F650 0F                       .
        sbc     $77,x                           ; F651 F5 77                    .w
LF653:  brk                                     ; F653 00                       .
        sbc     a:$77,x                         ; F654 FD 77 00                 .w.
        .byte   $13                             ; F657 13                       .
        dec     $B0,x                           ; F658 D6 B0                    ..
        sbc     $105F,x                         ; F65A FD 5F 10                 ._.
        .byte   $13                             ; F65D 13                       .
        brk                                     ; F65E 00                       .
        .byte   $0F                             ; F65F 0F                       .
        adc     $2D,x                           ; F660 75 2D                    u-
        jsr     L2DFD                           ; F662 20 FD 2D                  .-
        jsr     L0005                           ; F665 20 05 00                  ..
        .byte   $B2                             ; F668 B2                       .
        .byte   $07                             ; F669 07                       .
        .byte   $F2                             ; F66A F2                       .
        asl     $0C                             ; F66B 06 0C                    ..
        .byte   $B2                             ; F66D B2                       .
        .byte   $04                             ; F66E 04                       .
        .byte   $F3                             ; F66F F3                       .
        .byte   $53                             ; F670 53                       S
        .byte   $05                             ; F671 05                       .
LF672:  .byte   $0C                             ; F672 0C                       .
        bcs     LF672                           ; F673 B0 FD                    ..
        .byte   $3B                             ; F675 3B                       ;
        bmi     LF67C                           ; F676 30 04                    0.
        .byte   $04                             ; F678 04                       .
        .byte   $0F                             ; F679 0F                       .
        sbc     $77,x                           ; F67A F5 77                    .w
LF67C:  brk                                     ; F67C 00                       .
        sbc     a:$77,x                         ; F67D FD 77 00                 .w.
        .byte   $13                             ; F680 13                       .
        dec     $B0,x                           ; F681 D6 B0                    ..
        sbc     $105F,x                         ; F683 FD 5F 10                 ._.
        .byte   $13                             ; F686 13                       .
        brk                                     ; F687 00                       .
        .byte   $0F                             ; F688 0F                       .
        adc     $32,x                           ; F689 75 32                    u2
        jsr     L32FD                           ; F68B 20 FD 32                  .2
        jsr     L0005                           ; F68E 20 05 00                  ..
        .byte   $B2                             ; F691 B2                       .
        .byte   $07                             ; F692 07                       .
        .byte   $F2                             ; F693 F2                       .
        asl     $0C                             ; F694 06 0C                    ..
        .byte   $B2                             ; F696 B2                       .
        .byte   $04                             ; F697 04                       .
        .byte   $F3                             ; F698 F3                       .
        .byte   $53                             ; F699 53                       S
        .byte   $05                             ; F69A 05                       .
LF69B:  .byte   $0C                             ; F69B 0C                       .
        bcs     LF69B                           ; F69C B0 FD                    ..
        .byte   $3B                             ; F69E 3B                       ;
        bmi     LF6A5                           ; F69F 30 04                    0.
        .byte   $04                             ; F6A1 04                       .
        .byte   $0F                             ; F6A2 0F                       .
        sbc     $77,x                           ; F6A3 F5 77                    .w
LF6A5:  brk                                     ; F6A5 00                       .
        sbc     a:$77,x                         ; F6A6 FD 77 00                 .w.
        .byte   $13                             ; F6A9 13                       .
        dec     $B0,x                           ; F6AA D6 B0                    ..
        sbc     $105F,x                         ; F6AC FD 5F 10                 ._.
        .byte   $13                             ; F6AF 13                       .
        brk                                     ; F6B0 00                       .
        bmi     LF6D2                           ; F6B1 30 1F                    0.
        ora     ($FE),y                         ; F6B3 11 FE                    ..
        ora     ($FE),y                         ; F6B5 11 FE                    ..
        .byte   $BB                             ; F6B7 BB                       .
        plp                                     ; F6B8 28                       (
        .byte   $07                             ; F6B9 07                       .
        .byte   $13                             ; F6BA 13                       .
        cpy     $FF                             ; F6BB C4 FF                    ..
        .byte   $5F                             ; F6BD 5F                       _
        asl     $10                             ; F6BE 06 10                    ..
        .byte   $13                             ; F6C0 13                       .
        cpy     $88                             ; F6C1 C4 88                    ..
        ora     ($07,x)                         ; F6C3 01 07                    ..
        .byte   $0C                             ; F6C5 0C                       .
        tsx                                     ; F6C6 BA                       .
        .byte   $04                             ; F6C7 04                       .
        .byte   $13                             ; F6C8 13                       .
        brk                                     ; F6C9 00                       .
        .byte   $FB                             ; F6CA FB                       .
        .byte   $53                             ; F6CB 53                       S
        ora     $13                             ; F6CC 05 13                    ..
        brk                                     ; F6CE 00                       .
        .byte   $0F                             ; F6CF 0F                       .
        .byte   $77                             ; F6D0 77                       w
        lsr     a                               ; F6D1 4A                       J
LF6D2:  .byte   $1A                             ; F6D2 1A                       .
        jsr     L4177                           ; F6D3 20 77 41                  wA
        .byte   $1A                             ; F6D6 1A                       .
        jsr     LFDB0                           ; F6D7 20 B0 FD                  ..
        .byte   $3B                             ; F6DA 3B                       ;
        bmi     LF6E1                           ; F6DB 30 04                    0.
        .byte   $04                             ; F6DD 04                       .
        .byte   $0F                             ; F6DE 0F                       .
        adc     ($4C),y                         ; F6DF 71 4C                    qL
LF6E1:  .byte   $71                             ; F6E1 71                       q
LF6E2:  .byte   $43                             ; F6E2 43                       C
        bcs     LF6E2                           ; F6E3 B0 FD                    ..
        .byte   $5F                             ; F6E5 5F                       _
        bpl     LF6FB                           ; F6E6 10 13                    ..
        brk                                     ; F6E8 00                       .
        .byte   $0C                             ; F6E9 0C                       .
        .byte   $B2                             ; F6EA B2                       .
        .byte   $07                             ; F6EB 07                       .
        .byte   $F2                             ; F6EC F2                       .
        asl     $0F                             ; F6ED 06 0F                    ..
        adc     ($3E),y                         ; F6EF 71 3E                    q>
        adc     ($35),y                         ; F6F1 71 35                    q5
        .byte   $B2                             ; F6F3 B2                       .
        .byte   $04                             ; F6F4 04                       .
        .byte   $F3                             ; F6F5 F3                       .
        .byte   $53                             ; F6F6 53                       S
        ora     $0F                             ; F6F7 05 0F                    ..
        adc     ($40),y                         ; F6F9 71 40                    q@
LF6FB:  .byte   $71                             ; F6FB 71                       q
LF6FC:  .byte   $37                             ; F6FC 37                       7
        bcs     LF6FC                           ; F6FD B0 FD                    ..
        .byte   $3B                             ; F6FF 3B                       ;
        bmi     LF706                           ; F700 30 04                    0.
        .byte   $04                             ; F702 04                       .
LF703:  .byte   $0C                             ; F703 0C                       .
        bcs     LF703                           ; F704 B0 FD                    ..
LF706:  .byte   $5F                             ; F706 5F                       _
        bpl     LF71C                           ; F707 10 13                    ..
        brk                                     ; F709 00                       .
        .byte   $0F                             ; F70A 0F                       .
        adc     ($4A),y                         ; F70B 71 4A                    qJ
        adc     ($40),y                         ; F70D 71 40                    q@
        .byte   $B2                             ; F70F B2                       .
        .byte   $07                             ; F710 07                       .
        .byte   $F2                             ; F711 F2                       .
        asl     $0F                             ; F712 06 0F                    ..
        adc     ($4C),y                         ; F714 71 4C                    qL
        adc     ($42),y                         ; F716 71 42                    qB
        .byte   $B2                             ; F718 B2                       .
        .byte   $04                             ; F719 04                       .
        .byte   $F3                             ; F71A F3                       .
        .byte   $53                             ; F71B 53                       S
LF71C:  .byte   $05                             ; F71C 05                       .
LF71D:  .byte   $0C                             ; F71D 0C                       .
        .byte   $B0                             ; F71E B0                       .
LF71F:  sbc     $303B,x                         ; F71F FD 3B 30                 .;0
        .byte   $04                             ; F722 04                       .
        .byte   $04                             ; F723 04                       .
        .byte   $0F                             ; F724 0F                       .
        adc     ($3E),y                         ; F725 71 3E                    q>
LF727:  .byte   $71                             ; F727 71                       q
LF728:  .byte   $34                             ; F728 34                       4
        bcs     LF728                           ; F729 B0 FD                    ..
        .byte   $5F                             ; F72B 5F                       _
LF72C:  bpl     LF741                           ; F72C 10 13                    ..
        brk                                     ; F72E 00                       .
        .byte   $0F                             ; F72F 0F                       .
        adc     ($40),y                         ; F730 71 40                    q@
        adc     ($36),y                         ; F732 71 36                    q6
        .byte   $B2                             ; F734 B2                       .
        .byte   $07                             ; F735 07                       .
        .byte   $F2                             ; F736 F2                       .
        asl     $0C                             ; F737 06 0C                    ..
        .byte   $B2                             ; F739 B2                       .
        .byte   $04                             ; F73A 04                       .
        .byte   $F3                             ; F73B F3                       .
        .byte   $53                             ; F73C 53                       S
        ora     $0F                             ; F73D 05 0F                    ..
        adc     ($3E),y                         ; F73F 71 3E                    q>
LF741:  .byte   $71                             ; F741 71                       q
LF742:  .byte   $34                             ; F742 34                       4
        bcs     LF742                           ; F743 B0 FD                    ..
        .byte   $3B                             ; F745 3B                       ;
        bmi     LF74C                           ; F746 30 04                    0.
        .byte   $04                             ; F748 04                       .
LF749:  .byte   $0C                             ; F749 0C                       .
        bcs     LF749                           ; F74A B0 FD                    ..
LF74C:  .byte   $5F                             ; F74C 5F                       _
        bpl     LF762                           ; F74D 10 13                    ..
        brk                                     ; F74F 00                       .
        .byte   $1F                             ; F750 1F                       .
        adc     ($40),y                         ; F751 71 40                    q@
        ora     ($FE),y                         ; F753 11 FE                    ..
        .byte   $33                             ; F755 33                       3
        and     LFF07                           ; F756 2D 07 FF                 -..
        .byte   $3C                             ; F759 3C                       <
        .byte   $13                             ; F75A 13                       .
        bmi     LF761                           ; F75B 30 04                    0.
        asl     $88                             ; F75D 06 88                    ..
        ora     ($04,x)                         ; F75F 01 04                    ..
LF761:  .byte   $1C                             ; F761 1C                       .
LF762:  ora     ($FE),y                         ; F762 11 FE                    ..
        dey                                     ; F764 88                       .
        .byte   $04                             ; F765 04                       .
        brk                                     ; F766 00                       .
        dey                                     ; F767 88                       .
        ora     ($03,x)                         ; F768 01 03                    ..
        asl     $40FD,x                         ; F76A 1E FD 40                 ..@
        bpl     LF777                           ; F76D 10 08                    ..
        sty     $33                             ; F76F 84 33                    .3
        and     $8004                           ; F771 2D 04 80                 -..
        dey                                     ; F774 88                       .
        ora     ($04,x)                         ; F775 01 04                    ..
LF777:  asl     $0888,x                         ; F777 1E 88 08                 ...
        brk                                     ; F77A 00                       .
        ora     ($FE),y                         ; F77B 11 FE                    ..
        .byte   $80                             ; F77D 80                       .
        dey                                     ; F77E 88                       .
        ora     ($03,x)                         ; F77F 01 03                    ..
        .byte   $1F                             ; F781 1F                       .
        adc     ($39),y                         ; F782 71 39                    q9
        .byte   $80                             ; F784 80                       .
        and     ($2D),y                         ; F785 31 2D                    1-
        sed                                     ; F787 F8                       .
        .byte   $04                             ; F788 04                       .
        asl     $88                             ; F789 06 88                    ..
        ora     ($04,x)                         ; F78B 01 04                    ..
        .byte   $1F                             ; F78D 1F                       .
        sbc     $133E,y                         ; F78E F9 3E 13                 .>.
        cmp     ($80),y                         ; F791 D1 80                    ..
        ora     ($FE),y                         ; F793 11 FE                    ..
        beq     LF71F                           ; F795 F0 88                    ..
        ora     ($03,x)                         ; F797 01 03                    ..
        .byte   $1F                             ; F799 1F                       .
        sbc     $1340,y                         ; F79A F9 40 13                 .@.
        .byte   $D2                             ; F79D D2                       .
        adc     ($39),y                         ; F79E 71 39                    q9
        and     ($2D),y                         ; F7A0 31 2D                    1-
        beq     LF72C                           ; F7A2 F0 88                    ..
        ora     ($04,x)                         ; F7A4 01 04                    ..
        asl     $3EF9,x                         ; F7A6 1E F9 3E                 ..>
        .byte   $13                             ; F7A9 13                       .
        cmp     ($11),y                         ; F7AA D1 11                    ..
        inc     $0488,x                         ; F7AC FE 88 04                 ...
        brk                                     ; F7AF 00                       .
        dey                                     ; F7B0 88                       .
        ora     ($03,x)                         ; F7B1 01 03                    ..
        .byte   $1F                             ; F7B3 1F                       .
        adc     ($43),y                         ; F7B4 71 43                    qC
        sbc     $1340,y                         ; F7B6 F9 40 13                 .@.
        .byte   $D2                             ; F7B9 D2                       .
        .byte   $33                             ; F7BA 33                       3
        and     LF807                           ; F7BB 2D 07 F8                 -..
        .byte   $04                             ; F7BE 04                       .
        asl     $88                             ; F7BF 06 88                    ..
        ora     ($04,x)                         ; F7C1 01 04                    ..
        ora     $4AF9,x                         ; F7C3 1D F9 4A                 ..J
        .byte   $13                             ; F7C6 13                       .
        cmp     ($11),y                         ; F7C7 D1 11                    ..
        inc     $0488,x                         ; F7C9 FE 88 04                 ...
        brk                                     ; F7CC 00                       .
        dey                                     ; F7CD 88                       .
        ora     ($03,x)                         ; F7CE 01 03                    ..
        .byte   $1F                             ; F7D0 1F                       .
        sbc     $134F,y                         ; F7D1 F9 4F 13                 .O.
        .byte   $D2                             ; F7D4 D2                       .
        adc     ($43),y                         ; F7D5 71 43                    qC
        .byte   $33                             ; F7D7 33                       3
        and     $8004                           ; F7D8 2D 04 80                 -..
        dey                                     ; F7DB 88                       .
        ora     ($04,x)                         ; F7DC 01 04                    ..
        asl     $4AF9,x                         ; F7DE 1E F9 4A                 ..J
        .byte   $13                             ; F7E1 13                       .
        cmp     ($11),y                         ; F7E2 D1 11                    ..
        inc     $8880,x                         ; F7E4 FE 80 88                 ...
        ora     ($03,x)                         ; F7E7 01 03                    ..
        .byte   $1F                             ; F7E9 1F                       .
        adc     ($51),y                         ; F7EA 71 51                    qQ
        sbc     $134F,y                         ; F7EC F9 4F 13                 .O.
LF7EF:  .byte   $D2                             ; F7EF D2                       .
        and     ($2D),y                         ; F7F0 31 2D                    1-
        sed                                     ; F7F2 F8                       .
        .byte   $04                             ; F7F3 04                       .
        asl     $88                             ; F7F4 06 88                    ..
        ora     ($04,x)                         ; F7F6 01 04                    ..
        .byte   $1D                             ; F7F8 1D                       .
        .byte   $F9                             ; F7F9 F9                       .
LF7FA:  .byte   $53                             ; F7FA 53                       S
        .byte   $13                             ; F7FB 13                       .
        cmp     ($11),y                         ; F7FC D1 11                    ..
        inc     $0488,x                         ; F7FE FE 88 04                 ...
        brk                                     ; F801 00                       .
        dey                                     ; F802 88                       .
        ora     ($03,x)                         ; F803 01 03                    ..
        .byte   $1F                             ; F805 1F                       .
        .byte   $F9                             ; F806 F9                       .
LF807:  .byte   $54                             ; F807 54                       T
        .byte   $13                             ; F808 13                       .
        .byte   $D2                             ; F809 D2                       .
        adc     ($51),y                         ; F80A 71 51                    qQ
        and     ($2D),y                         ; F80C 31 2D                    1-
        .byte   $80                             ; F80E 80                       .
        dey                                     ; F80F 88                       .
        ora     ($04,x)                         ; F810 01 04                    ..
        asl     $53F9,x                         ; F812 1E F9 53                 ..S
        .byte   $13                             ; F815 13                       .
        cmp     ($11),y                         ; F816 D1 11                    ..
        inc     $8880,x                         ; F818 FE 80 88                 ...
        ora     ($03,x)                         ; F81B 01 03                    ..
        .byte   $1F                             ; F81D 1F                       .
        adc     ($58),y                         ; F81E 71 58                    qX
        sbc     $1354,y                         ; F820 F9 54 13                 .T.
        .byte   $D2                             ; F823 D2                       .
        .byte   $33                             ; F824 33                       3
        and     LF807                           ; F825 2D 07 F8                 -..
        .byte   $04                             ; F828 04                       .
        asl     $88                             ; F829 06 88                    ..
        ora     ($04,x)                         ; F82B 01 04                    ..
        ora     $5671,x                         ; F82D 1D 71 56                 .qV
        ora     ($FE),y                         ; F830 11 FE                    ..
        dey                                     ; F832 88                       .
        .byte   $04                             ; F833 04                       .
        brk                                     ; F834 00                       .
        dey                                     ; F835 88                       .
        ora     ($03,x)                         ; F836 01 03                    ..
        .byte   $1F                             ; F838 1F                       .
        adc     ($54),y                         ; F839 71 54                    qT
        adc     ($56),y                         ; F83B 71 56                    qV
        .byte   $33                             ; F83D 33                       3
        and     $8004                           ; F83E 2D 04 80                 -..
        dey                                     ; F841 88                       .
        ora     ($04,x)                         ; F842 01 04                    ..
        .byte   $1F                             ; F844 1F                       .
        adc     ($53),y                         ; F845 71 53                    qS
        sbc     $1358,y                         ; F847 F9 58 13                 .X.
        cmp     ($11),y                         ; F84A D1 11                    ..
        inc     $8880,x                         ; F84C FE 80 88                 ...
        ora     ($03,x)                         ; F84F 01 03                    ..
        .byte   $1F                             ; F851 1F                       .
        adc     ($54),y                         ; F852 71 54                    qT
        sbc     $135A,y                         ; F854 F9 5A 13                 .Z.
        .byte   $D2                             ; F857 D2                       .
        and     ($2D),y                         ; F858 31 2D                    1-
        sed                                     ; F85A F8                       .
        .byte   $04                             ; F85B 04                       .
        asl     $88                             ; F85C 06 88                    ..
        ora     ($04,x)                         ; F85E 01 04                    ..
        ora     $5371,x                         ; F860 1D 71 53                 .qS
        ora     ($FE),y                         ; F863 11 FE                    ..
        beq     LF7EF                           ; F865 F0 88                    ..
        ora     ($03,x)                         ; F867 01 03                    ..
        .byte   $1F                             ; F869 1F                       .
        adc     ($51),y                         ; F86A 71 51                    qQ
        adc     ($5B),y                         ; F86C 71 5B                    q[
        and     ($2D),y                         ; F86E 31 2D                    1-
        beq     LF7FA                           ; F870 F0 88                    ..
        ora     ($04,x)                         ; F872 01 04                    ..
        .byte   $1F                             ; F874 1F                       .
        adc     ($4F),y                         ; F875 71 4F                    qO
        sbc     $135D,y                         ; F877 F9 5D 13                 .].
        cmp     ($11),y                         ; F87A D1 11                    ..
        inc     $0488,x                         ; F87C FE 88 04                 ...
        brk                                     ; F87F 00                       .
        dey                                     ; F880 88                       .
        ora     ($03,x)                         ; F881 01 03                    ..
        .byte   $1F                             ; F883 1F                       .
        adc     ($51),y                         ; F884 71 51                    qQ
        sbc     $135F,y                         ; F886 F9 5F 13                 ._.
        .byte   $D2                             ; F889 D2                       .
        .byte   $33                             ; F88A 33                       3
        and     LF807                           ; F88B 2D 07 F8                 -..
        .byte   $04                             ; F88E 04                       .
        asl     $88                             ; F88F 06 88                    ..
        ora     ($04,x)                         ; F891 01 04                    ..
        ora     $4F71,x                         ; F893 1D 71 4F                 .qO
        ora     ($FE),y                         ; F896 11 FE                    ..
        dey                                     ; F898 88                       .
        .byte   $04                             ; F899 04                       .
        brk                                     ; F89A 00                       .
        dey                                     ; F89B 88                       .
        ora     ($03,x)                         ; F89C 01 03                    ..
        .byte   $1F                             ; F89E 1F                       .
        adc     ($4E),y                         ; F89F 71 4E                    qN
        adc     ($60),y                         ; F8A1 71 60                    q`
        .byte   $33                             ; F8A3 33                       3
        and     $8004                           ; F8A4 2D 04 80                 -..
        dey                                     ; F8A7 88                       .
        ora     ($04,x)                         ; F8A8 01 04                    ..
        .byte   $1F                             ; F8AA 1F                       .
        adc     ($4F),y                         ; F8AB 71 4F                    qO
        sbc     $1362,y                         ; F8AD F9 62 13                 .b.
        cmp     ($11),y                         ; F8B0 D1 11                    ..
        inc     $8880,x                         ; F8B2 FE 80 88                 ...
        ora     ($03,x)                         ; F8B5 01 03                    ..
        .byte   $1F                             ; F8B7 1F                       .
        adc     ($4E),y                         ; F8B8 71 4E                    qN
        sbc     $1364,y                         ; F8BA F9 64 13                 .d.
        .byte   $D2                             ; F8BD D2                       .
        and     ($2D),y                         ; F8BE 31 2D                    1-
        sed                                     ; F8C0 F8                       .
        .byte   $04                             ; F8C1 04                       .
        asl     $88                             ; F8C2 06 88                    ..
        ora     ($04,x)                         ; F8C4 01 04                    ..
        ora     $4C71,x                         ; F8C6 1D 71 4C                 .qL
        ora     ($FE),y                         ; F8C9 11 FE                    ..
        dey                                     ; F8CB 88                       .
        .byte   $04                             ; F8CC 04                       .
        brk                                     ; F8CD 00                       .
        dey                                     ; F8CE 88                       .
        ora     ($03,x)                         ; F8CF 01 03                    ..
        .byte   $1F                             ; F8D1 1F                       .
        adc     ($4A),y                         ; F8D2 71 4A                    qJ
        adc     ($67),y                         ; F8D4 71 67                    qg
        and     ($2D),y                         ; F8D6 31 2D                    1-
        .byte   $80                             ; F8D8 80                       .
        dey                                     ; F8D9 88                       .
        ora     ($04,x)                         ; F8DA 01 04                    ..
        ora     $4C71,x                         ; F8DC 1D 71 4C                 .qL
        ora     ($FE),y                         ; F8DF 11 FE                    ..
        .byte   $80                             ; F8E1 80                       .
        dey                                     ; F8E2 88                       .
        ora     ($03,x)                         ; F8E3 01 03                    ..
        jsr     L111F                           ; F8E5 20 1F 11                  ..
        inc     LFE11,x                         ; F8E8 FE 11 FE                 ...
        .byte   $BB                             ; F8EB BB                       .
        plp                                     ; F8EC 28                       (
        .byte   $07                             ; F8ED 07                       .
        .byte   $13                             ; F8EE 13                       .
        cpy     $FF                             ; F8EF C4 FF                    ..
        .byte   $5F                             ; F8F1 5F                       _
        asl     $10                             ; F8F2 06 10                    ..
        .byte   $13                             ; F8F4 13                       .
        cpy     $88                             ; F8F5 C4 88                    ..
        ora     ($07,x)                         ; F8F7 01 07                    ..
        .byte   $0C                             ; F8F9 0C                       .
        tsx                                     ; F8FA BA                       .
        .byte   $04                             ; F8FB 04                       .
        .byte   $13                             ; F8FC 13                       .
        brk                                     ; F8FD 00                       .
        .byte   $FB                             ; F8FE FB                       .
        .byte   $53                             ; F8FF 53                       S
        ora     $13                             ; F900 05 13                    ..
        brk                                     ; F902 00                       .
        .byte   $0F                             ; F903 0F                       .
        .byte   $77                             ; F904 77                       w
        lsr     a                               ; F905 4A                       J
        .byte   $1A                             ; F906 1A                       .
        jsr     L4177                           ; F907 20 77 41                  wA
        .byte   $1A                             ; F90A 1A                       .
        jsr     LFDB0                           ; F90B 20 B0 FD                  ..
        .byte   $3B                             ; F90E 3B                       ;
        bmi     LF915                           ; F90F 30 04                    0.
        .byte   $04                             ; F911 04                       .
        .byte   $0F                             ; F912 0F                       .
        adc     ($4C),y                         ; F913 71 4C                    qL
LF915:  .byte   $71                             ; F915 71                       q
LF916:  .byte   $43                             ; F916 43                       C
        bcs     LF916                           ; F917 B0 FD                    ..
        .byte   $5F                             ; F919 5F                       _
        bpl     LF92F                           ; F91A 10 13                    ..
        brk                                     ; F91C 00                       .
        .byte   $0C                             ; F91D 0C                       .
        .byte   $B2                             ; F91E B2                       .
        .byte   $07                             ; F91F 07                       .
        .byte   $F2                             ; F920 F2                       .
        asl     $0F                             ; F921 06 0F                    ..
        adc     ($3E),y                         ; F923 71 3E                    q>
        adc     ($35),y                         ; F925 71 35                    q5
        .byte   $B2                             ; F927 B2                       .
        .byte   $04                             ; F928 04                       .
        .byte   $F3                             ; F929 F3                       .
        .byte   $53                             ; F92A 53                       S
        ora     $0F                             ; F92B 05 0F                    ..
        adc     ($40),y                         ; F92D 71 40                    q@
LF92F:  .byte   $71                             ; F92F 71                       q
LF930:  .byte   $37                             ; F930 37                       7
        bcs     LF930                           ; F931 B0 FD                    ..
        .byte   $3B                             ; F933 3B                       ;
        bmi     LF93A                           ; F934 30 04                    0.
        .byte   $04                             ; F936 04                       .
LF937:  .byte   $0C                             ; F937 0C                       .
        bcs     LF937                           ; F938 B0 FD                    ..
LF93A:  .byte   $5F                             ; F93A 5F                       _
        bpl     LF950                           ; F93B 10 13                    ..
        brk                                     ; F93D 00                       .
        .byte   $0F                             ; F93E 0F                       .
        adc     ($4A),y                         ; F93F 71 4A                    qJ
        adc     ($40),y                         ; F941 71 40                    q@
        .byte   $B2                             ; F943 B2                       .
        .byte   $07                             ; F944 07                       .
        .byte   $F2                             ; F945 F2                       .
        asl     $0F                             ; F946 06 0F                    ..
        adc     ($4C),y                         ; F948 71 4C                    qL
        adc     ($42),y                         ; F94A 71 42                    qB
        .byte   $B2                             ; F94C B2                       .
        .byte   $04                             ; F94D 04                       .
        .byte   $F3                             ; F94E F3                       .
        .byte   $53                             ; F94F 53                       S
LF950:  .byte   $05                             ; F950 05                       .
LF951:  .byte   $0C                             ; F951 0C                       .
        bcs     LF951                           ; F952 B0 FD                    ..
        .byte   $3B                             ; F954 3B                       ;
        bmi     LF95B                           ; F955 30 04                    0.
        .byte   $04                             ; F957 04                       .
        .byte   $0F                             ; F958 0F                       .
        adc     ($3E),y                         ; F959 71 3E                    q>
LF95B:  .byte   $71                             ; F95B 71                       q
LF95C:  .byte   $34                             ; F95C 34                       4
        bcs     LF95C                           ; F95D B0 FD                    ..
        .byte   $5F                             ; F95F 5F                       _
        bpl     LF975                           ; F960 10 13                    ..
        brk                                     ; F962 00                       .
        .byte   $0F                             ; F963 0F                       .
        adc     ($40),y                         ; F964 71 40                    q@
        adc     ($36),y                         ; F966 71 36                    q6
        .byte   $B2                             ; F968 B2                       .
        .byte   $07                             ; F969 07                       .
        .byte   $F2                             ; F96A F2                       .
        asl     $0C                             ; F96B 06 0C                    ..
        .byte   $B2                             ; F96D B2                       .
        .byte   $04                             ; F96E 04                       .
        .byte   $F3                             ; F96F F3                       .
        .byte   $53                             ; F970 53                       S
        ora     $0F                             ; F971 05 0F                    ..
        adc     ($3E),y                         ; F973 71 3E                    q>
LF975:  .byte   $71                             ; F975 71                       q
LF976:  .byte   $34                             ; F976 34                       4
        bcs     LF976                           ; F977 B0 FD                    ..
        .byte   $3B                             ; F979 3B                       ;
        bmi     LF980                           ; F97A 30 04                    0.
        .byte   $04                             ; F97C 04                       .
LF97D:  .byte   $0C                             ; F97D 0C                       .
        bcs     LF97D                           ; F97E B0 FD                    ..
LF980:  .byte   $5F                             ; F980 5F                       _
        bpl     LF996                           ; F981 10 13                    ..
        brk                                     ; F983 00                       .
        .byte   $07                             ; F984 07                       .
        .byte   $73                             ; F985 73                       s
        eor     #$01                            ; F986 49 01                    I.
        .byte   $73                             ; F988 73                       s
        .byte   $3F                             ; F989 3F                       ?
        ora     ($31,x)                         ; F98A 01 31                    .1
        .byte   $42                             ; F98C 42                       B
        brk                                     ; F98D 00                       .
        .byte   $07                             ; F98E 07                       .
        adc     ($47),y                         ; F98F 71 47                    qG
        adc     ($3D),y                         ; F991 71 3D                    q=
        and     ($40),y                         ; F993 31 40                    1@
        brk                                     ; F995 00                       .
LF996:  .byte   $07                             ; F996 07                       .
        .byte   $44                             ; F997 44                       D
        php                                     ; F998 08                       .
        .byte   $44                             ; F999 44                       D
        php                                     ; F99A 08                       .
        ora     ($FE),y                         ; F99B 11 FE                    ..
        .byte   $07                             ; F99D 07                       .
        .byte   $74                             ; F99E 74                       t
        jsr     L2074                           ; F99F 20 74 20                  t 
        and     ($40),y                         ; F9A2 31 40                    1@
        brk                                     ; F9A4 00                       .
        .byte   $07                             ; F9A5 07                       .
        .byte   $44                             ; F9A6 44                       D
        php                                     ; F9A7 08                       .
        .byte   $44                             ; F9A8 44                       D
        php                                     ; F9A9 08                       .
        ora     ($FE),y                         ; F9AA 11 FE                    ..
        .byte   $07                             ; F9AC 07                       .
        adc     $45,x                           ; F9AD 75 45                    uE
        jsr     L3B75                           ; F9AF 20 75 3B                  u;
        jsr     L3E31                           ; F9B2 20 31 3E                  1>
        brk                                     ; F9B5 00                       .
        .byte   $07                             ; F9B6 07                       .
        adc     ($47),y                         ; F9B7 71 47                    qG
        adc     ($3D),y                         ; F9B9 71 3D                    q=
        and     ($40),y                         ; F9BB 31 40                    1@
        brk                                     ; F9BD 00                       .
        .byte   $07                             ; F9BE 07                       .
        .byte   $44                             ; F9BF 44                       D
        php                                     ; F9C0 08                       .
        .byte   $44                             ; F9C1 44                       D
        php                                     ; F9C2 08                       .
        ora     ($FE),y                         ; F9C3 11 FE                    ..
        .byte   $07                             ; F9C5 07                       .
        .byte   $74                             ; F9C6 74                       t
        jsr     L2074                           ; F9C7 20 74 20                  t 
        and     ($40),y                         ; F9CA 31 40                    1@
        brk                                     ; F9CC 00                       .
        .byte   $07                             ; F9CD 07                       .
        .byte   $44                             ; F9CE 44                       D
        php                                     ; F9CF 08                       .
        .byte   $44                             ; F9D0 44                       D
        php                                     ; F9D1 08                       .
        ora     ($FE),y                         ; F9D2 11 FE                    ..
        jsr     L111F                           ; F9D4 20 1F 11                  ..
        inc     LFE11,x                         ; F9D7 FE 11 FE                 ...
        .byte   $33                             ; F9DA 33                       3
        plp                                     ; F9DB 28                       (
        .byte   $07                             ; F9DC 07                       .
        .byte   $FF                             ; F9DD FF                       .
        .byte   $3C                             ; F9DE 3C                       <
        .byte   $13                             ; F9DF 13                       .
        bmi     LF9E6                           ; F9E0 30 04                    0.
        .byte   $04                             ; F9E2 04                       .
        dey                                     ; F9E3 88                       .
        ora     ($07,x)                         ; F9E4 01 07                    ..
LF9E6:  .byte   $0C                             ; F9E6 0C                       .
        ora     ($FE),y                         ; F9E7 11 FE                    ..
        .byte   $FF                             ; F9E9 FF                       .
        .byte   $5F                             ; F9EA 5F                       _
        ora     $10                             ; F9EB 05 10                    ..
        .byte   $13                             ; F9ED 13                       .
        cpy     $0C                             ; F9EE C4 0C                    ..
        and     ($28),y                         ; F9F0 31 28                    1(
        .byte   $FF                             ; F9F2 FF                       .
        .byte   $3C                             ; F9F3 3C                       <
        .byte   $13                             ; F9F4 13                       .
        bmi     LF9FB                           ; F9F5 30 04                    0.
        .byte   $04                             ; F9F7 04                       .
        .byte   $0C                             ; F9F8 0C                       .
        ora     ($FE),y                         ; F9F9 11 FE                    ..
LF9FB:  .byte   $FF                             ; F9FB FF                       .
        .byte   $5F                             ; F9FC 5F                       _
        ora     $10                             ; F9FD 05 10                    ..
        .byte   $13                             ; F9FF 13                       .
        brk                                     ; FA00 00                       .
        .byte   $0F                             ; FA01 0F                       .
        .byte   $FF                             ; FA02 FF                       .
        eor     #$01                            ; FA03 49 01                    I.
        bpl     LFA0B                           ; FA05 10 04                    ..
        ora     ($FF,x)                         ; FA07 01 FF                    ..
        rti                                     ; FA09 40                       @

; ----------------------------------------------------------------------------
        .byte   $01                             ; FA0A 01                       .
LFA0B:  bpl     LFA11                           ; FA0B 10 04                    ..
        ora     ($33,x)                         ; FA0D 01 33                    .3
        plp                                     ; FA0F 28                       (
        .byte   $04                             ; FA10 04                       .
LFA11:  beq     LFA22                           ; FA11 F0 0F                    ..
        .byte   $FC                             ; FA13 FC                       .
        clc                                     ; FA14 18                       .
        .byte   $04                             ; FA15 04                       .
        .byte   $02                             ; FA16 02                       .
        .byte   $FC                             ; FA17 FC                       .
        clc                                     ; FA18 18                       .
        .byte   $04                             ; FA19 04                       .
        .byte   $02                             ; FA1A 02                       .
        ora     ($FE),y                         ; FA1B 11 FE                    ..
        sbc     ($53),y                         ; FA1D F1 53                    .S
        .byte   $0F                             ; FA1F 0F                       .
        .byte   $FC                             ; FA20 FC                       .
        .byte   $20                             ; FA21 20                        
LFA22:  .byte   $04                             ; FA22 04                       .
        .byte   $03                             ; FA23 03                       .
        .byte   $FC                             ; FA24 FC                       .
        jsr     L0304                           ; FA25 20 04 03                  ..
        and     ($28),y                         ; FA28 31 28                    1(
        .byte   $F3                             ; FA2A F3                       .
        .byte   $5F                             ; FA2B 5F                       _
        asl     $0F                             ; FA2C 06 0F                    ..
        .byte   $FC                             ; FA2E FC                       .
        plp                                     ; FA2F 28                       (
        .byte   $04                             ; FA30 04                       .
        .byte   $04                             ; FA31 04                       .
        .byte   $FC                             ; FA32 FC                       .
        plp                                     ; FA33 28                       (
        .byte   $04                             ; FA34 04                       .
        .byte   $04                             ; FA35 04                       .
        ora     ($FE),y                         ; FA36 11 FE                    ..
        .byte   $F2                             ; FA38 F2                       .
        ora     $0F                             ; FA39 05 0F                    ..
        .byte   $74                             ; FA3B 74                       t
        bmi     LFAB2                           ; FA3C 30 74                    0t
        bmi     LFA71                           ; FA3E 30 31                    01
        plp                                     ; FA40 28                       (
        beq     LFA4F                           ; FA41 F0 0C                    ..
        ora     ($FE),y                         ; FA43 11 FE                    ..
        sbc     ($53),y                         ; FA45 F1 53                    .S
        .byte   $0F                             ; FA47 0F                       .
        adc     ($47),y                         ; FA48 71 47                    qG
        adc     ($3E),y                         ; FA4A 71 3E                    q>
        and     ($28),y                         ; FA4C 31 28                    1(
        .byte   $F3                             ; FA4E F3                       .
LFA4F:  .byte   $6B                             ; FA4F 6B                       k
        asl     $0C                             ; FA50 06 0C                    ..
        ora     ($FE),y                         ; FA52 11 FE                    ..
        .byte   $F3                             ; FA54 F3                       .
        .byte   $5F                             ; FA55 5F                       _
        ora     $0F                             ; FA56 05 0F                    ..
        .byte   $44                             ; FA58 44                       D
        bpl     LFA9F                           ; FA59 10 44                    .D
        bpl     LFA8E                           ; FA5B 10 31                    .1
        plp                                     ; FA5D 28                       (
        beq     LFA6F                           ; FA5E F0 0F                    ..
        .byte   $74                             ; FA60 74                       t
        bmi     LFAD7                           ; FA61 30 74                    0t
        bmi     LFA76                           ; FA63 30 11                    0.
        inc     $53F1,x                         ; FA65 FE F1 53                 ..S
        .byte   $0C                             ; FA68 0C                       .
        and     ($28),y                         ; FA69 31 28                    1(
        .byte   $F3                             ; FA6B F3                       .
        .byte   $5F                             ; FA6C 5F                       _
        asl     $0F                             ; FA6D 06 0F                    ..
LFA6F:  .byte   $44                             ; FA6F 44                       D
        .byte   $10                             ; FA70 10                       .
LFA71:  .byte   $44                             ; FA71 44                       D
        bpl     LFA85                           ; FA72 10 11                    ..
        .byte   $FE                             ; FA74 FE                       .
        .byte   $F2                             ; FA75 F2                       .
LFA76:  ora     $07                             ; FA76 05 07                    ..
        adc     $45,x                           ; FA78 75 45                    uE
        jsr     L3C75                           ; FA7A 20 75 3C                  u<
        jsr     L4031                           ; FA7D 20 31 40                  1@
        .byte   $07                             ; FA80 07                       .
        adc     ($42),y                         ; FA81 71 42                    qB
        adc     ($39),y                         ; FA83 71 39                    q9
LFA85:  and     ($3D),y                         ; FA85 31 3D                    1=
        .byte   $07                             ; FA87 07                       .
        .byte   $44                             ; FA88 44                       D
        .byte   $04                             ; FA89 04                       .
        .byte   $44                             ; FA8A 44                       D
        .byte   $04                             ; FA8B 04                       .
        ora     ($FE),y                         ; FA8C 11 FE                    ..
LFA8E:  .byte   $07                             ; FA8E 07                       .
        adc     $40,x                           ; FA8F 75 40                    u@
        jsr     L3775                           ; FA91 20 75 37                  u7
        jsr     L3B31                           ; FA94 20 31 3B                  1;
        .byte   $07                             ; FA97 07                       .
        adc     ($42),y                         ; FA98 71 42                    qB
        adc     ($39),y                         ; FA9A 71 39                    q9
        and     ($3D),y                         ; FA9C 31 3D                    1=
        brk                                     ; FA9E 00                       .
LFA9F:  .byte   $07                             ; FA9F 07                       .
        adc     ($45),y                         ; FAA0 71 45                    qE
        adc     ($3C),y                         ; FAA2 71 3C                    q<
        and     ($40),y                         ; FAA4 31 40                    1@
        .byte   $07                             ; FAA6 07                       .
        adc     ($42),y                         ; FAA7 71 42                    qB
        adc     ($39),y                         ; FAA9 71 39                    q9
        and     ($3D),y                         ; FAAB 31 3D                    1=
        .byte   $07                             ; FAAD 07                       .
        .byte   $44                             ; FAAE 44                       D
        .byte   $04                             ; FAAF 04                       .
        .byte   $44                             ; FAB0 44                       D
        .byte   $04                             ; FAB1 04                       .
LFAB2:  ora     ($FE),y                         ; FAB2 11 FE                    ..
        .byte   $07                             ; FAB4 07                       .
        adc     $40,x                           ; FAB5 75 40                    u@
        jsr     L3775                           ; FAB7 20 75 37                  u7
        jsr     L3B31                           ; FABA 20 31 3B                  1;
        .byte   $07                             ; FABD 07                       .
        adc     ($42),y                         ; FABE 71 42                    qB
        adc     ($39),y                         ; FAC0 71 39                    q9
        and     ($3D),y                         ; FAC2 31 3D                    1=
        brk                                     ; FAC4 00                       .
        .byte   $07                             ; FAC5 07                       .
        adc     ($45),y                         ; FAC6 71 45                    qE
        adc     ($3C),y                         ; FAC8 71 3C                    q<
        and     ($40),y                         ; FACA 31 40                    1@
        brk                                     ; FACC 00                       .
        .byte   $07                             ; FACD 07                       .
        adc     ($47),y                         ; FACE 71 47                    qG
        adc     ($3E),y                         ; FAD0 71 3E                    q>
        and     ($42),y                         ; FAD2 31 42                    1B
        brk                                     ; FAD4 00                       .
        rti                                     ; FAD5 40                       @

; ----------------------------------------------------------------------------
        .byte   $1F                             ; FAD6 1F                       .
LFAD7:  .byte   $77                             ; FAD7 77                       w
        .byte   $47                             ; FAD8 47                       G
        asl     a                               ; FAD9 0A                       .
        bpl     LFB53                           ; FADA 10 77                    .w
        .byte   $47                             ; FADC 47                       G
        .byte   $17                             ; FADD 17                       .
        .byte   $14                             ; FADE 14                       .
        .byte   $BB                             ; FADF BB                       .
        plp                                     ; FAE0 28                       (
        .byte   $07                             ; FAE1 07                       .
        .byte   $13                             ; FAE2 13                       .
        cpy     $FF                             ; FAE3 C4 FF                    ..
        .byte   $5F                             ; FAE5 5F                       _
        asl     $10                             ; FAE6 06 10                    ..
        .byte   $13                             ; FAE8 13                       .
        cpy     $88                             ; FAE9 C4 88                    ..
        ora     ($07,x)                         ; FAEB 01 07                    ..
        ora     $4C73                           ; FAED 0D 73 4C                 .sL
        ora     #$BA                            ; FAF0 09 BA                    ..
        .byte   $04                             ; FAF2 04                       .
        .byte   $13                             ; FAF3 13                       .
        brk                                     ; FAF4 00                       .
        .byte   $FB                             ; FAF5 FB                       .
        .byte   $53                             ; FAF6 53                       S
        ora     $13                             ; FAF7 05 13                    ..
        brk                                     ; FAF9 00                       .
        ora     $4EFB                           ; FAFA 0D FB 4E                 ..N
        php                                     ; FAFD 08                       .
        .byte   $06                             ; FAFE 06                       .
LFAFF:  .byte   $F4                             ; FAFF F4                       .
        bcs     LFAFF                           ; FB00 B0 FD                    ..
        .byte   $3B                             ; FB02 3B                       ;
        bmi     LFB09                           ; FB03 30 04                    0.
        .byte   $04                             ; FB05 04                       .
        .byte   $0F                             ; FB06 0F                       .
        .byte   $FB                             ; FB07 FB                       .
        .byte   $53                             ; FB08 53                       S
LFB09:  .byte   $09                             ; FB09 09                       .
LFB0A:  asl     $00                             ; FB0A 06 00                    ..
        dey                                     ; FB0C 88                       .
        .byte   $06                             ; FB0D 06                       .
LFB0E:  ora     ($B0,x)                         ; FB0E 01 B0                    ..
        sbc     $105F,x                         ; FB10 FD 5F 10                 ._.
        .byte   $13                             ; FB13 13                       .
        brk                                     ; FB14 00                       .
        .byte   $0F                             ; FB15 0F                       .
        .byte   $FB                             ; FB16 FB                       .
        .byte   $47                             ; FB17 47                       G
        asl     a                               ; FB18 0A                       .
        asl     $F8                             ; FB19 06 F8                    ..
        dey                                     ; FB1B 88                       .
        asl     $00                             ; FB1C 06 00                    ..
        .byte   $B2                             ; FB1E B2                       .
        .byte   $07                             ; FB1F 07                       .
        .byte   $F2                             ; FB20 F2                       .
        asl     $0F                             ; FB21 06 0F                    ..
        .byte   $FB                             ; FB23 FB                       .
        jmp     L0609                           ; FB24 4C 09 06                 L..

; ----------------------------------------------------------------------------
LFB27:  brk                                     ; FB27 00                       .
        .byte   $80                             ; FB28 80                       .
        .byte   $B2                             ; FB29 B2                       .
        .byte   $04                             ; FB2A 04                       .
        .byte   $F3                             ; FB2B F3                       .
        .byte   $53                             ; FB2C 53                       S
        ora     $0F                             ; FB2D 05 0F                    ..
        .byte   $FB                             ; FB2F FB                       .
        lsr     $0608                           ; FB30 4E 08 06                 N..
        .byte   $FC                             ; FB33 FC                       .
LFB34:  .byte   $80                             ; FB34 80                       .
        bcs     LFB34                           ; FB35 B0 FD                    ..
        .byte   $3B                             ; FB37 3B                       ;
        bmi     LFB3E                           ; FB38 30 04                    0.
        .byte   $04                             ; FB3A 04                       .
        .byte   $0F                             ; FB3B 0F                       .
        .byte   $FB                             ; FB3C FB                       .
        .byte   $53                             ; FB3D 53                       S
LFB3E:  ora     #$06                            ; FB3E 09 06                    ..
        brk                                     ; FB40 00                       .
        dey                                     ; FB41 88                       .
        .byte   $06                             ; FB42 06                       .
LFB43:  .byte   $F4                             ; FB43 F4                       .
        bcs     LFB43                           ; FB44 B0 FD                    ..
        .byte   $5F                             ; FB46 5F                       _
        bpl     LFB5C                           ; FB47 10 13                    ..
        brk                                     ; FB49 00                       .
        .byte   $0F                             ; FB4A 0F                       .
        .byte   $73                             ; FB4B 73                       s
        pha                                     ; FB4C 48                       H
        asl     a                               ; FB4D 0A                       .
        dey                                     ; FB4E 88                       .
        php                                     ; FB4F 08                       .
        sty     $B2                             ; FB50 84 B2                    ..
        .byte   $07                             ; FB52 07                       .
LFB53:  .byte   $F2                             ; FB53 F2                       .
        asl     $0F                             ; FB54 06 0F                    ..
        .byte   $73                             ; FB56 73                       s
        eor     $8809                           ; FB57 4D 09 88                 M..
        php                                     ; FB5A 08                       .
        brk                                     ; FB5B 00                       .
LFB5C:  .byte   $B2                             ; FB5C B2                       .
        .byte   $04                             ; FB5D 04                       .
        .byte   $F3                             ; FB5E F3                       .
        .byte   $53                             ; FB5F 53                       S
        ora     $0F                             ; FB60 05 0F                    ..
        .byte   $FB                             ; FB62 FB                       .
        .byte   $4F                             ; FB63 4F                       O
        php                                     ; FB64 08                       .
        asl     $F4                             ; FB65 06 F4                    ..
LFB67:  .byte   $80                             ; FB67 80                       .
        bcs     LFB67                           ; FB68 B0 FD                    ..
        .byte   $3B                             ; FB6A 3B                       ;
        bmi     LFB71                           ; FB6B 30 04                    0.
        .byte   $04                             ; FB6D 04                       .
        .byte   $0F                             ; FB6E 0F                       .
        .byte   $FB                             ; FB6F FB                       .
        .byte   $54                             ; FB70 54                       T
LFB71:  ora     #$06                            ; FB71 09 06                    ..
        brk                                     ; FB73 00                       .
LFB74:  .byte   $80                             ; FB74 80                       .
        bcs     LFB74                           ; FB75 B0 FD                    ..
        .byte   $5F                             ; FB77 5F                       _
        bpl     LFB8D                           ; FB78 10 13                    ..
        brk                                     ; FB7A 00                       .
        .byte   $0F                             ; FB7B 0F                       .
        .byte   $FB                             ; FB7C FB                       .
        pha                                     ; FB7D 48                       H
        asl     a                               ; FB7E 0A                       .
        asl     $F8                             ; FB7F 06 F8                    ..
        .byte   $80                             ; FB81 80                       .
        .byte   $B2                             ; FB82 B2                       .
        .byte   $07                             ; FB83 07                       .
        .byte   $F2                             ; FB84 F2                       .
        asl     $0F                             ; FB85 06 0F                    ..
        .byte   $FB                             ; FB87 FB                       .
        eor     L0609                           ; FB88 4D 09 06                 M..
        brk                                     ; FB8B 00                       .
        .byte   $80                             ; FB8C 80                       .
LFB8D:  .byte   $B2                             ; FB8D B2                       .
        .byte   $04                             ; FB8E 04                       .
        .byte   $F3                             ; FB8F F3                       .
        .byte   $53                             ; FB90 53                       S
        ora     $0F                             ; FB91 05 0F                    ..
        .byte   $FB                             ; FB93 FB                       .
        .byte   $4F                             ; FB94 4F                       O
        php                                     ; FB95 08                       .
        asl     $FC                             ; FB96 06 FC                    ..
LFB98:  .byte   $80                             ; FB98 80                       .
        bcs     LFB98                           ; FB99 B0 FD                    ..
        .byte   $3B                             ; FB9B 3B                       ;
        bmi     LFBA2                           ; FB9C 30 04                    0.
        .byte   $04                             ; FB9E 04                       .
        .byte   $0F                             ; FB9F 0F                       .
        .byte   $FB                             ; FBA0 FB                       .
        .byte   $54                             ; FBA1 54                       T
LFBA2:  ora     #$06                            ; FBA2 09 06                    ..
        brk                                     ; FBA4 00                       .
LFBA5:  .byte   $80                             ; FBA5 80                       .
        bcs     LFBA5                           ; FBA6 B0 FD                    ..
        .byte   $5F                             ; FBA8 5F                       _
        bpl     LFBBE                           ; FBA9 10 13                    ..
        brk                                     ; FBAB 00                       .
        .byte   $0F                             ; FBAC 0F                       .
        .byte   $73                             ; FBAD 73                       s
        eor     #$0A                            ; FBAE 49 0A                    I.
        adc     ($49),y                         ; FBB0 71 49                    qI
        .byte   $B2                             ; FBB2 B2                       .
        .byte   $07                             ; FBB3 07                       .
        .byte   $FA                             ; FBB4 FA                       .
        asl     $13                             ; FBB5 06 13                    ..
        cpy     $0D                             ; FBB7 C4 0D                    ..
        .byte   $73                             ; FBB9 73                       s
        lsr     $B209                           ; FBBA 4E 09 B2                 N..
        .byte   $04                             ; FBBD 04                       .
LFBBE:  .byte   $FB                             ; FBBE FB                       .
        .byte   $53                             ; FBBF 53                       S
        ora     $13                             ; FBC0 05 13                    ..
        brk                                     ; FBC2 00                       .
        ora     $50FB                           ; FBC3 0D FB 50                 ..P
        php                                     ; FBC6 08                       .
        .byte   $06                             ; FBC7 06                       .
LFBC8:  .byte   $F4                             ; FBC8 F4                       .
        bcs     LFBC8                           ; FBC9 B0 FD                    ..
        .byte   $3B                             ; FBCB 3B                       ;
        bmi     LFBD2                           ; FBCC 30 04                    0.
        .byte   $04                             ; FBCE 04                       .
        ora     $55FB                           ; FBCF 0D FB 55                 ..U
LFBD2:  ora     #$06                            ; FBD2 09 06                    ..
LFBD4:  brk                                     ; FBD4 00                       .
        bcs     LFBD4                           ; FBD5 B0 FD                    ..
        .byte   $5F                             ; FBD7 5F                       _
        bpl     LFBED                           ; FBD8 10 13                    ..
        brk                                     ; FBDA 00                       .
        .byte   $0F                             ; FBDB 0F                       .
        .byte   $FB                             ; FBDC FB                       .
        eor     #$0A                            ; FBDD 49 0A                    I.
        asl     $F8                             ; FBDF 06 F8                    ..
        dey                                     ; FBE1 88                       .
        asl     $F4                             ; FBE2 06 F4                    ..
        .byte   $B2                             ; FBE4 B2                       .
        .byte   $07                             ; FBE5 07                       .
        .byte   $F2                             ; FBE6 F2                       .
        asl     $0F                             ; FBE7 06 0F                    ..
        .byte   $FB                             ; FBE9 FB                       .
        lsr     L0609                           ; FBEA 4E 09 06                 N..
LFBED:  brk                                     ; FBED 00                       .
        dey                                     ; FBEE 88                       .
        asl     $00                             ; FBEF 06 00                    ..
        .byte   $B2                             ; FBF1 B2                       .
        .byte   $04                             ; FBF2 04                       .
        .byte   $F3                             ; FBF3 F3                       .
        .byte   $53                             ; FBF4 53                       S
        ora     $0F                             ; FBF5 05 0F                    ..
        .byte   $FB                             ; FBF7 FB                       .
        bvc     LFC02                           ; FBF8 50 08                    P.
        asl     $FC                             ; FBFA 06 FC                    ..
LFBFC:  .byte   $80                             ; FBFC 80                       .
        bcs     LFBFC                           ; FBFD B0 FD                    ..
        .byte   $3B                             ; FBFF 3B                       ;
        bmi     LFC06                           ; FC00 30 04                    0.
LFC02:  .byte   $04                             ; FC02 04                       .
        .byte   $0F                             ; FC03 0F                       .
        .byte   $FB                             ; FC04 FB                       .
        .byte   $55                             ; FC05 55                       U
LFC06:  ora     #$06                            ; FC06 09 06                    ..
        brk                                     ; FC08 00                       .
LFC09:  .byte   $80                             ; FC09 80                       .
        bcs     LFC09                           ; FC0A B0 FD                    ..
        .byte   $5F                             ; FC0C 5F                       _
        bpl     LFC22                           ; FC0D 10 13                    ..
        brk                                     ; FC0F 00                       .
        .byte   $0F                             ; FC10 0F                       .
        .byte   $73                             ; FC11 73                       s
        lsr     a                               ; FC12 4A                       J
        asl     a                               ; FC13 0A                       .
        dey                                     ; FC14 88                       .
        php                                     ; FC15 08                       .
        sty     $B2                             ; FC16 84 B2                    ..
        .byte   $07                             ; FC18 07                       .
        .byte   $F2                             ; FC19 F2                       .
        asl     $0F                             ; FC1A 06 0F                    ..
        .byte   $73                             ; FC1C 73                       s
        .byte   $4F                             ; FC1D 4F                       O
        ora     #$88                            ; FC1E 09 88                    ..
        php                                     ; FC20 08                       .
        brk                                     ; FC21 00                       .
LFC22:  .byte   $B2                             ; FC22 B2                       .
        .byte   $04                             ; FC23 04                       .
        .byte   $F3                             ; FC24 F3                       .
        .byte   $53                             ; FC25 53                       S
        ora     $0F                             ; FC26 05 0F                    ..
        .byte   $73                             ; FC28 73                       s
        eor     ($08),y                         ; FC29 51 08                    Q.
LFC2B:  .byte   $80                             ; FC2B 80                       .
        bcs     LFC2B                           ; FC2C B0 FD                    ..
        .byte   $3B                             ; FC2E 3B                       ;
        bmi     LFC35                           ; FC2F 30 04                    0.
        .byte   $04                             ; FC31 04                       .
        .byte   $0F                             ; FC32 0F                       .
        .byte   $73                             ; FC33 73                       s
        .byte   $56                             ; FC34 56                       V
LFC35:  .byte   $09                             ; FC35 09                       .
LFC36:  .byte   $80                             ; FC36 80                       .
        bcs     LFC36                           ; FC37 B0 FD                    ..
        .byte   $5F                             ; FC39 5F                       _
        bpl     LFC4F                           ; FC3A 10 13                    ..
        brk                                     ; FC3C 00                       .
        .byte   $0F                             ; FC3D 0F                       .
        .byte   $73                             ; FC3E 73                       s
        lsr     a                               ; FC3F 4A                       J
        asl     a                               ; FC40 0A                       .
        .byte   $80                             ; FC41 80                       .
        .byte   $B2                             ; FC42 B2                       .
        .byte   $07                             ; FC43 07                       .
        .byte   $F2                             ; FC44 F2                       .
        asl     $0F                             ; FC45 06 0F                    ..
        .byte   $73                             ; FC47 73                       s
        .byte   $4F                             ; FC48 4F                       O
        ora     #$80                            ; FC49 09 80                    ..
        .byte   $B2                             ; FC4B B2                       .
        .byte   $04                             ; FC4C 04                       .
        .byte   $F3                             ; FC4D F3                       .
        .byte   $53                             ; FC4E 53                       S
LFC4F:  ora     $0F                             ; FC4F 05 0F                    ..
        .byte   $73                             ; FC51 73                       s
        eor     ($08),y                         ; FC52 51 08                    Q.
LFC54:  .byte   $80                             ; FC54 80                       .
        bcs     LFC54                           ; FC55 B0 FD                    ..
        .byte   $3B                             ; FC57 3B                       ;
        bmi     LFC5E                           ; FC58 30 04                    0.
        .byte   $04                             ; FC5A 04                       .
        .byte   $0F                             ; FC5B 0F                       .
        .byte   $73                             ; FC5C 73                       s
        .byte   $56                             ; FC5D 56                       V
LFC5E:  .byte   $09                             ; FC5E 09                       .
LFC5F:  .byte   $80                             ; FC5F 80                       .
        bcs     LFC5F                           ; FC60 B0 FD                    ..
        .byte   $5F                             ; FC62 5F                       _
        bpl     LFC78                           ; FC63 10 13                    ..
        brk                                     ; FC65 00                       .
        .byte   $0F                             ; FC66 0F                       .
        .byte   $73                             ; FC67 73                       s
        lsr     a                               ; FC68 4A                       J
        asl     a                               ; FC69 0A                       .
        adc     ($4A),y                         ; FC6A 71 4A                    qJ
        .byte   $32                             ; FC6C 32                       2
        .byte   $07                             ; FC6D 07                       .
        .byte   $FA                             ; FC6E FA                       .
        asl     $13                             ; FC6F 06 13                    ..
        cpy     $0D                             ; FC71 C4 0D                    ..
        .byte   $73                             ; FC73 73                       s
        .byte   $4F                             ; FC74 4F                       O
        ora     #$80                            ; FC75 09 80                    ..
        .byte   $FB                             ; FC77 FB                       .
LFC78:  .byte   $53                             ; FC78 53                       S
        ora     $13                             ; FC79 05 13                    ..
        brk                                     ; FC7B 00                       .
        ora     $51FB                           ; FC7C 0D FB 51                 ..Q
        php                                     ; FC7F 08                       .
        asl     $F4                             ; FC80 06 F4                    ..
        .byte   $B2                             ; FC82 B2                       .
        .byte   $04                             ; FC83 04                       .
        sbc     $303B,x                         ; FC84 FD 3B 30                 .;0
        .byte   $04                             ; FC87 04                       .
        .byte   $04                             ; FC88 04                       .
        .byte   $0F                             ; FC89 0F                       .
        .byte   $FB                             ; FC8A FB                       .
        lsr     $09,x                           ; FC8B 56 09                    V.
        asl     $00                             ; FC8D 06 00                    ..
        dey                                     ; FC8F 88                       .
        .byte   $06                             ; FC90 06                       .
LFC91:  ora     ($B0,x)                         ; FC91 01 B0                    ..
        sbc     $105F,x                         ; FC93 FD 5F 10                 ._.
        .byte   $13                             ; FC96 13                       .
        brk                                     ; FC97 00                       .
        .byte   $0F                             ; FC98 0F                       .
        .byte   $FB                             ; FC99 FB                       .
        lsr     a                               ; FC9A 4A                       J
        asl     a                               ; FC9B 0A                       .
        asl     $F8                             ; FC9C 06 F8                    ..
        dey                                     ; FC9E 88                       .
        asl     $00                             ; FC9F 06 00                    ..
        .byte   $32                             ; FCA1 32                       2
        .byte   $07                             ; FCA2 07                       .
        .byte   $F2                             ; FCA3 F2                       .
        asl     $0F                             ; FCA4 06 0F                    ..
        .byte   $FB                             ; FCA6 FB                       .
        .byte   $4F                             ; FCA7 4F                       O
        ora     #$06                            ; FCA8 09 06                    ..
LFCAA:  brk                                     ; FCAA 00                       .
        .byte   $80                             ; FCAB 80                       .
        .byte   $80                             ; FCAC 80                       .
        .byte   $F3                             ; FCAD F3                       .
        .byte   $53                             ; FCAE 53                       S
        ora     $0F                             ; FCAF 05 0F                    ..
        .byte   $FB                             ; FCB1 FB                       .
        eor     ($08),y                         ; FCB2 51 08                    Q.
        asl     $FC                             ; FCB4 06 FC                    ..
        .byte   $80                             ; FCB6 80                       .
        .byte   $B2                             ; FCB7 B2                       .
        .byte   $04                             ; FCB8 04                       .
        sbc     $303B,x                         ; FCB9 FD 3B 30                 .;0
        .byte   $04                             ; FCBC 04                       .
        .byte   $04                             ; FCBD 04                       .
        .byte   $0F                             ; FCBE 0F                       .
        .byte   $FB                             ; FCBF FB                       .
        lsr     $09,x                           ; FCC0 56 09                    V.
        asl     $00                             ; FCC2 06 00                    ..
LFCC4:  .byte   $80                             ; FCC4 80                       .
        bcs     LFCC4                           ; FCC5 B0 FD                    ..
        .byte   $5F                             ; FCC7 5F                       _
        bpl     LFCDD                           ; FCC8 10 13                    ..
        brk                                     ; FCCA 00                       .
        .byte   $0F                             ; FCCB 0F                       .
        .byte   $73                             ; FCCC 73                       s
        .byte   $4B                             ; FCCD 4B                       K
        asl     a                               ; FCCE 0A                       .
        dey                                     ; FCCF 88                       .
        php                                     ; FCD0 08                       .
        sty     $32                             ; FCD1 84 32                    .2
        .byte   $07                             ; FCD3 07                       .
        .byte   $F2                             ; FCD4 F2                       .
        asl     $0F                             ; FCD5 06 0F                    ..
        .byte   $73                             ; FCD7 73                       s
        bvc     LFCE3                           ; FCD8 50 09                    P.
        dey                                     ; FCDA 88                       .
        php                                     ; FCDB 08                       .
        brk                                     ; FCDC 00                       .
LFCDD:  .byte   $80                             ; FCDD 80                       .
        .byte   $F3                             ; FCDE F3                       .
        .byte   $53                             ; FCDF 53                       S
        ora     $0F                             ; FCE0 05 0F                    ..
        .byte   $FB                             ; FCE2 FB                       .
LFCE3:  .byte   $52                             ; FCE3 52                       R
        php                                     ; FCE4 08                       .
        asl     $F4                             ; FCE5 06 F4                    ..
        .byte   $80                             ; FCE7 80                       .
        .byte   $B2                             ; FCE8 B2                       .
        .byte   $04                             ; FCE9 04                       .
        sbc     $303B,x                         ; FCEA FD 3B 30                 .;0
        .byte   $04                             ; FCED 04                       .
        .byte   $04                             ; FCEE 04                       .
        .byte   $0F                             ; FCEF 0F                       .
        .byte   $FB                             ; FCF0 FB                       .
        .byte   $57                             ; FCF1 57                       W
        ora     #$06                            ; FCF2 09 06                    ..
        brk                                     ; FCF4 00                       .
LFCF5:  .byte   $80                             ; FCF5 80                       .
        bcs     LFCF5                           ; FCF6 B0 FD                    ..
        .byte   $5F                             ; FCF8 5F                       _
        bpl     LFD0E                           ; FCF9 10 13                    ..
        brk                                     ; FCFB 00                       .
        .byte   $0F                             ; FCFC 0F                       .
        .byte   $FB                             ; FCFD FB                       .
        .byte   $4B                             ; FCFE 4B                       K
        asl     a                               ; FCFF 0A                       .
        asl     $F8                             ; FD00 06 F8                    ..
        .byte   $80                             ; FD02 80                       .
        .byte   $32                             ; FD03 32                       2
        .byte   $07                             ; FD04 07                       .
        .byte   $F2                             ; FD05 F2                       .
        asl     $0F                             ; FD06 06 0F                    ..
        .byte   $FB                             ; FD08 FB                       .
        bvc     LFD14                           ; FD09 50 09                    P.
        asl     $00                             ; FD0B 06 00                    ..
        .byte   $80                             ; FD0D 80                       .
LFD0E:  .byte   $80                             ; FD0E 80                       .
        .byte   $F3                             ; FD0F F3                       .
        .byte   $53                             ; FD10 53                       S
        ora     $0F                             ; FD11 05 0F                    ..
        .byte   $FB                             ; FD13 FB                       .
LFD14:  .byte   $52                             ; FD14 52                       R
        php                                     ; FD15 08                       .
        asl     $FC                             ; FD16 06 FC                    ..
        .byte   $80                             ; FD18 80                       .
        .byte   $B2                             ; FD19 B2                       .
        .byte   $04                             ; FD1A 04                       .
        sbc     $303B,x                         ; FD1B FD 3B 30                 .;0
        .byte   $04                             ; FD1E 04                       .
        .byte   $04                             ; FD1F 04                       .
        .byte   $0F                             ; FD20 0F                       .
        .byte   $FB                             ; FD21 FB                       .
        .byte   $57                             ; FD22 57                       W
        ora     #$06                            ; FD23 09 06                    ..
        brk                                     ; FD25 00                       .
LFD26:  .byte   $80                             ; FD26 80                       .
        bcs     LFD26                           ; FD27 B0 FD                    ..
        .byte   $5F                             ; FD29 5F                       _
        bpl     LFD3F                           ; FD2A 10 13                    ..
        brk                                     ; FD2C 00                       .
        .byte   $0F                             ; FD2D 0F                       .
        .byte   $73                             ; FD2E 73                       s
        jmp     L710A                           ; FD2F 4C 0A 71                 L.q

; ----------------------------------------------------------------------------
        jmp     L0732                           ; FD32 4C 32 07                 L2.

; ----------------------------------------------------------------------------
        .byte   $FA                             ; FD35 FA                       .
        asl     $13                             ; FD36 06 13                    ..
        cpy     $0D                             ; FD38 C4 0D                    ..
        .byte   $73                             ; FD3A 73                       s
        eor     ($09),y                         ; FD3B 51 09                    Q.
        .byte   $80                             ; FD3D 80                       .
        .byte   $FB                             ; FD3E FB                       .
LFD3F:  .byte   $53                             ; FD3F 53                       S
        ora     $13                             ; FD40 05 13                    ..
        brk                                     ; FD42 00                       .
        ora     $53FB                           ; FD43 0D FB 53                 ..S
        php                                     ; FD46 08                       .
        asl     $F4                             ; FD47 06 F4                    ..
        .byte   $B2                             ; FD49 B2                       .
        .byte   $04                             ; FD4A 04                       .
        sbc     $303B,x                         ; FD4B FD 3B 30                 .;0
        .byte   $04                             ; FD4E 04                       .
        .byte   $04                             ; FD4F 04                       .
        .byte   $0F                             ; FD50 0F                       .
        .byte   $FB                             ; FD51 FB                       .
        cli                                     ; FD52 58                       X
        ora     #$06                            ; FD53 09 06                    ..
        brk                                     ; FD55 00                       .
        dey                                     ; FD56 88                       .
        .byte   $06                             ; FD57 06                       .
LFD58:  ora     ($B0,x)                         ; FD58 01 B0                    ..
        sbc     $105F,x                         ; FD5A FD 5F 10                 ._.
        .byte   $13                             ; FD5D 13                       .
        brk                                     ; FD5E 00                       .
        .byte   $0F                             ; FD5F 0F                       .
        .byte   $FB                             ; FD60 FB                       .
        jmp     L060A                           ; FD61 4C 0A 06                 L..

; ----------------------------------------------------------------------------
        sed                                     ; FD64 F8                       .
        dey                                     ; FD65 88                       .
        asl     $00                             ; FD66 06 00                    ..
        .byte   $32                             ; FD68 32                       2
        .byte   $07                             ; FD69 07                       .
        .byte   $F2                             ; FD6A F2                       .
        asl     $0F                             ; FD6B 06 0F                    ..
        .byte   $FB                             ; FD6D FB                       .
        eor     ($09),y                         ; FD6E 51 09                    Q.
        .byte   $06                             ; FD70 06                       .
LFD71:  brk                                     ; FD71 00                       .
        .byte   $80                             ; FD72 80                       .
        .byte   $80                             ; FD73 80                       .
        .byte   $F3                             ; FD74 F3                       .
        .byte   $53                             ; FD75 53                       S
        ora     $0F                             ; FD76 05 0F                    ..
        .byte   $FB                             ; FD78 FB                       .
        .byte   $53                             ; FD79 53                       S
        php                                     ; FD7A 08                       .
        asl     $FC                             ; FD7B 06 FC                    ..
        .byte   $80                             ; FD7D 80                       .
        .byte   $B2                             ; FD7E B2                       .
        .byte   $04                             ; FD7F 04                       .
        sbc     $303B,x                         ; FD80 FD 3B 30                 .;0
        .byte   $04                             ; FD83 04                       .
        .byte   $04                             ; FD84 04                       .
        .byte   $0F                             ; FD85 0F                       .
        .byte   $FB                             ; FD86 FB                       .
        cli                                     ; FD87 58                       X
        ora     #$06                            ; FD88 09 06                    ..
        brk                                     ; FD8A 00                       .
LFD8B:  .byte   $80                             ; FD8B 80                       .
        bcs     LFD8B                           ; FD8C B0 FD                    ..
        .byte   $5F                             ; FD8E 5F                       _
        bpl     LFDA4                           ; FD8F 10 13                    ..
        brk                                     ; FD91 00                       .
        .byte   $0F                             ; FD92 0F                       .
        .byte   $73                             ; FD93 73                       s
        eor     LFB0A                           ; FD94 4D 0A FB                 M..
        lsr     $0802                           ; FD97 4E 02 08                 N..
        sty     $32                             ; FD9A 84 32                    .2
        .byte   $07                             ; FD9C 07                       .
        .byte   $F2                             ; FD9D F2                       .
        asl     $0F                             ; FD9E 06 0F                    ..
        .byte   $73                             ; FDA0 73                       s
        .byte   $52                             ; FDA1 52                       R
        ora     #$88                            ; FDA2 09 88                    ..
LFDA4:  php                                     ; FDA4 08                       .
        brk                                     ; FDA5 00                       .
        .byte   $80                             ; FDA6 80                       .
        .byte   $F3                             ; FDA7 F3                       .
        .byte   $53                             ; FDA8 53                       S
        ora     $0F                             ; FDA9 05 0F                    ..
        .byte   $FB                             ; FDAB FB                       .
        .byte   $54                             ; FDAC 54                       T
        php                                     ; FDAD 08                       .
        asl     $F4                             ; FDAE 06 F4                    ..
LFDB0:  .byte   $80                             ; FDB0 80                       .
        .byte   $B2                             ; FDB1 B2                       .
        .byte   $04                             ; FDB2 04                       .
        sbc     $303B,x                         ; FDB3 FD 3B 30                 .;0
        .byte   $04                             ; FDB6 04                       .
        .byte   $04                             ; FDB7 04                       .
        .byte   $0F                             ; FDB8 0F                       .
        .byte   $FB                             ; FDB9 FB                       .
        eor     L0609,y                         ; FDBA 59 09 06                 Y..
        brk                                     ; FDBD 00                       .
LFDBE:  .byte   $80                             ; FDBE 80                       .
        bcs     LFDBE                           ; FDBF B0 FD                    ..
        .byte   $5F                             ; FDC1 5F                       _
        bpl     LFDD7                           ; FDC2 10 13                    ..
        brk                                     ; FDC4 00                       .
        .byte   $0F                             ; FDC5 0F                       .
        .byte   $FB                             ; FDC6 FB                       .
        eor     L060A                           ; FDC7 4D 0A 06                 M..
        sed                                     ; FDCA F8                       .
        .byte   $80                             ; FDCB 80                       .
        .byte   $32                             ; FDCC 32                       2
        .byte   $07                             ; FDCD 07                       .
        .byte   $FF                             ; FDCE FF                       .
        .byte   $3B                             ; FDCF 3B                       ;
        .byte   $13                             ; FDD0 13                       .
        bmi     LFDD7                           ; FDD1 30 04                    0.
        .byte   $04                             ; FDD3 04                       .
        .byte   $0F                             ; FDD4 0F                       .
        .byte   $FB                             ; FDD5 FB                       .
        .byte   $52                             ; FDD6 52                       R
LFDD7:  ora     #$06                            ; FDD7 09 06                    ..
        brk                                     ; FDD9 00                       .
        .byte   $80                             ; FDDA 80                       .
        .byte   $80                             ; FDDB 80                       .
        .byte   $FF                             ; FDDC FF                       .
        .byte   $53                             ; FDDD 53                       S
        ora     $10                             ; FDDE 05 10                    ..
        .byte   $13                             ; FDE0 13                       .
        brk                                     ; FDE1 00                       .
        .byte   $0F                             ; FDE2 0F                       .
        .byte   $FB                             ; FDE3 FB                       .
        .byte   $54                             ; FDE4 54                       T
        php                                     ; FDE5 08                       .
        asl     $FC                             ; FDE6 06 FC                    ..
        .byte   $80                             ; FDE8 80                       .
        .byte   $B2                             ; FDE9 B2                       .
        .byte   $04                             ; FDEA 04                       .
LFDEB:  sbc     $303B,x                         ; FDEB FD 3B 30                 .;0
        .byte   $04                             ; FDEE 04                       .
        .byte   $04                             ; FDEF 04                       .
        .byte   $0F                             ; FDF0 0F                       .
        .byte   $FB                             ; FDF1 FB                       .
        eor     L0609,y                         ; FDF2 59 09 06                 Y..
        brk                                     ; FDF5 00                       .
        .byte   $80                             ; FDF6 80                       .
        bcs     LFDEB                           ; FDF7 B0 F2                    ..
        .byte   $13                             ; FDF9 13                       .
        rti                                     ; FDFA 40                       @

; ----------------------------------------------------------------------------
        .byte   $1F                             ; FDFB 1F                       .
        .byte   $77                             ; FDFC 77                       w
        .byte   $53                             ; FDFD 53                       S
        .byte   $14                             ; FDFE 14                       .
        clc                                     ; FDFF 18                       .
        .byte   $77                             ; FE00 77                       w
        pha                                     ; FE01 48                       H
        .byte   $14                             ; FE02 14                       .
        clc                                     ; FE03 18                       .
        .byte   $33                             ; FE04 33                       3
        plp                                     ; FE05 28                       (
        .byte   $04                             ; FE06 04                       .
        .byte   $FF                             ; FE07 FF                       .
        .byte   $3C                             ; FE08 3C                       <
        .byte   $13                             ; FE09 13                       .
        bmi     LFE10                           ; FE0A 30 04                    0.
        asl     $BB                             ; FE0C 06 BB                    ..
        .byte   $3C                             ; FE0E 3C                       <
        .byte   $0C                             ; FE0F 0C                       .
LFE10:  .byte   $01                             ; FE10 01                       .
LFE11:  .byte   $03                             ; FE11 03                       .
        .byte   $0F                             ; FE12 0F                       .
        .byte   $73                             ; FE13 73                       s
        .byte   $4F                             ; FE14 4F                       O
        ora     $73,x                           ; FE15 15 73                    .s
        .byte   $44                             ; FE17 44                       D
        ora     $31,x                           ; FE18 15 31                    .1
        .byte   $1C                             ; FE1A 1C                       .
        dey                                     ; FE1B 88                       .
        .byte   $04                             ; FE1C 04                       .
        brk                                     ; FE1D 00                       .
        .byte   $0F                             ; FE1E 0F                       .
        .byte   $73                             ; FE1F 73                       s
        lsr     $7316                           ; FE20 4E 16 73                 N.s
        .byte   $43                             ; FE23 43                       C
        asl     $31,x                           ; FE24 16 31                    .1
        .byte   $34                             ; FE26 34                       4
        .byte   $77                             ; FE27 77                       w
        .byte   $5F                             ; FE28 5F                       _
        ora     $10                             ; FE29 05 10                    ..
        .byte   $0F                             ; FE2B 0F                       .
        .byte   $73                             ; FE2C 73                       s
        jmp     L7315                           ; FE2D 4C 15 73                 L.s

; ----------------------------------------------------------------------------
        eor     ($15,x)                         ; FE30 41 15                    A.
        and     ($28),y                         ; FE32 31 28                    1(
        ora     ($FE),y                         ; FE34 11 FE                    ..
        .byte   $0F                             ; FE36 0F                       .
        .byte   $73                             ; FE37 73                       s
        pha                                     ; FE38 48                       H
        .byte   $14                             ; FE39 14                       .
        .byte   $73                             ; FE3A 73                       s
        and     $3114,x                         ; FE3B 3D 14 31                 =.1
        rti                                     ; FE3E 40                       @

; ----------------------------------------------------------------------------
        adc     ($53),y                         ; FE3F 71 53                    qS
        .byte   $0F                             ; FE41 0F                       .
        .byte   $73                             ; FE42 73                       s
        .byte   $47                             ; FE43 47                       G
        ora     $73,x                           ; FE44 15 73                    .s
        .byte   $3C                             ; FE46 3C                       <
        ora     $31,x                           ; FE47 15 31                    .1
        .byte   $34                             ; FE49 34                       4
        ora     ($FE),y                         ; FE4A 11 FE                    ..
        .byte   $1F                             ; FE4C 1F                       .
        .byte   $73                             ; FE4D 73                       s
        .byte   $43                             ; FE4E 43                       C
        asl     $73,x                           ; FE4F 16 73                    .s
        sec                                     ; FE51 38                       8
        asl     $30,x                           ; FE52 16 30                    .0
        .byte   $FF                             ; FE54 FF                       .
        .byte   $3C                             ; FE55 3C                       <
        .byte   $13                             ; FE56 13                       .
        bmi     LFE5D                           ; FE57 30 04                    0.
        asl     $30                             ; FE59 06 30                    .0
        .byte   $0F                             ; FE5B 0F                       .
        .byte   $73                             ; FE5C 73                       s
LFE5D:  .byte   $42                             ; FE5D 42                       B
        ora     $73,x                           ; FE5E 15 73                    .s
        .byte   $37                             ; FE60 37                       7
        ora     $31,x                           ; FE61 15 31                    .1
        plp                                     ; FE63 28                       (
        dey                                     ; FE64 88                       .
        .byte   $04                             ; FE65 04                       .
        brk                                     ; FE66 00                       .
        .byte   $0F                             ; FE67 0F                       .
        .byte   $73                             ; FE68 73                       s
        rti                                     ; FE69 40                       @

; ----------------------------------------------------------------------------
        .byte   $14                             ; FE6A 14                       .
        .byte   $73                             ; FE6B 73                       s
        and     $14,x                           ; FE6C 35 14                    5.
        bmi     LFEE7                           ; FE6E 30 77                    0w
        .byte   $5F                             ; FE70 5F                       _
        ora     $10                             ; FE71 05 10                    ..
        .byte   $0F                             ; FE73 0F                       .
        .byte   $73                             ; FE74 73                       s
        .byte   $42                             ; FE75 42                       B
        ora     $73,x                           ; FE76 15 73                    .s
        .byte   $37                             ; FE78 37                       7
        ora     $31,x                           ; FE79 15 31                    .1
        .byte   $1C                             ; FE7B 1C                       .
        ora     ($FE),y                         ; FE7C 11 FE                    ..
        .byte   $0F                             ; FE7E 0F                       .
        .byte   $73                             ; FE7F 73                       s
        .byte   $43                             ; FE80 43                       C
        asl     $73,x                           ; FE81 16 73                    .s
        sec                                     ; FE83 38                       8
        asl     $31,x                           ; FE84 16 31                    .1
        .byte   $34                             ; FE86 34                       4
        adc     ($53),y                         ; FE87 71 53                    qS
        .byte   $0F                             ; FE89 0F                       .
        .byte   $73                             ; FE8A 73                       s
        .byte   $47                             ; FE8B 47                       G
        ora     $73,x                           ; FE8C 15 73                    .s
        .byte   $3C                             ; FE8E 3C                       <
        ora     $31,x                           ; FE8F 15 31                    .1
        plp                                     ; FE91 28                       (
        ora     ($FE),y                         ; FE92 11 FE                    ..
        .byte   $1F                             ; FE94 1F                       .
        .byte   $73                             ; FE95 73                       s
        pha                                     ; FE96 48                       H
        .byte   $14                             ; FE97 14                       .
        .byte   $73                             ; FE98 73                       s
        and     $3114,x                         ; FE99 3D 14 31                 =.1
        rti                                     ; FE9C 40                       @

; ----------------------------------------------------------------------------
        .byte   $FF                             ; FE9D FF                       .
        .byte   $3C                             ; FE9E 3C                       <
        .byte   $13                             ; FE9F 13                       .
        bmi     LFEA6                           ; FEA0 30 04                    0.
        asl     $30                             ; FEA2 06 30                    .0
        .byte   $0F                             ; FEA4 0F                       .
        .byte   $73                             ; FEA5 73                       s
LFEA6:  jmp     L7315                           ; FEA6 4C 15 73                 L.s

; ----------------------------------------------------------------------------
        eor     ($15,x)                         ; FEA9 41 15                    A.
        and     ($34),y                         ; FEAB 31 34                    14
        dey                                     ; FEAD 88                       .
        .byte   $04                             ; FEAE 04                       .
        brk                                     ; FEAF 00                       .
        .byte   $0F                             ; FEB0 0F                       .
        .byte   $73                             ; FEB1 73                       s
        lsr     $7316                           ; FEB2 4E 16 73                 N.s
        .byte   $43                             ; FEB5 43                       C
        asl     $30,x                           ; FEB6 16 30                    .0
        .byte   $77                             ; FEB8 77                       w
        .byte   $5F                             ; FEB9 5F                       _
        ora     $10                             ; FEBA 05 10                    ..
        .byte   $0F                             ; FEBC 0F                       .
        .byte   $73                             ; FEBD 73                       s
        .byte   $4F                             ; FEBE 4F                       O
        ora     $73,x                           ; FEBF 15 73                    .s
        .byte   $44                             ; FEC1 44                       D
        ora     $31,x                           ; FEC2 15 31                    .1
        plp                                     ; FEC4 28                       (
        ora     ($FE),y                         ; FEC5 11 FE                    ..
        .byte   $0F                             ; FEC7 0F                       .
        .byte   $73                             ; FEC8 73                       s
        .byte   $53                             ; FEC9 53                       S
        .byte   $14                             ; FECA 14                       .
        .byte   $73                             ; FECB 73                       s
        eor     $14                             ; FECC 45 14                    E.
        bmi     LFF41                           ; FECE 30 71                    0q
        .byte   $53                             ; FED0 53                       S
        .byte   $0F                             ; FED1 0F                       .
        .byte   $73                             ; FED2 73                       s
        .byte   $4F                             ; FED3 4F                       O
        ora     $73,x                           ; FED4 15 73                    .s
        eor     ($15,x)                         ; FED6 41 15                    A.
        and     ($1C),y                         ; FED8 31 1C                    1.
        ora     ($FE),y                         ; FEDA 11 FE                    ..
        .byte   $1F                             ; FEDC 1F                       .
        .byte   $73                             ; FEDD 73                       s
        lsr     $7316                           ; FEDE 4E 16 73                 N.s
        rti                                     ; FEE1 40                       @

; ----------------------------------------------------------------------------
        asl     $31,x                           ; FEE2 16 31                    .1
        .byte   $34                             ; FEE4 34                       4
        .byte   $FF                             ; FEE5 FF                       .
        .byte   $3C                             ; FEE6 3C                       <
LFEE7:  .byte   $13                             ; FEE7 13                       .
        bmi     LFEEE                           ; FEE8 30 04                    0.
        asl     $30                             ; FEEA 06 30                    .0
        .byte   $0F                             ; FEEC 0F                       .
        .byte   $73                             ; FEED 73                       s
LFEEE:  jmp     L7315                           ; FEEE 4C 15 73                 L.s

; ----------------------------------------------------------------------------
        rol     $3115,x                         ; FEF1 3E 15 31                 >.1
        plp                                     ; FEF4 28                       (
        dey                                     ; FEF5 88                       .
        .byte   $04                             ; FEF6 04                       .
        brk                                     ; FEF7 00                       .
        .byte   $0F                             ; FEF8 0F                       .
        .byte   $73                             ; FEF9 73                       s
        pha                                     ; FEFA 48                       H
        .byte   $14                             ; FEFB 14                       .
        .byte   $73                             ; FEFC 73                       s
        .byte   $3A                             ; FEFD 3A                       :
        .byte   $14                             ; FEFE 14                       .
        and     ($40),y                         ; FEFF 31 40                    1@
        .byte   $77                             ; FF01 77                       w
        .byte   $5F                             ; FF02 5F                       _
        ora     $10                             ; FF03 05 10                    ..
        .byte   $0F                             ; FF05 0F                       .
        .byte   $73                             ; FF06 73                       s
LFF07:  .byte   $47                             ; FF07 47                       G
        ora     $73,x                           ; FF08 15 73                    .s
        and     $3115,y                         ; FF0A 39 15 31                 9.1
        .byte   $34                             ; FF0D 34                       4
        ora     ($FE),y                         ; FF0E 11 FE                    ..
        .byte   $0F                             ; FF10 0F                       .
        .byte   $73                             ; FF11 73                       s
        .byte   $43                             ; FF12 43                       C
        asl     $73,x                           ; FF13 16 73                    .s
        and     $16,x                           ; FF15 35 16                    5.
        bmi     LFF8A                           ; FF17 30 71                    0q
        .byte   $53                             ; FF19 53                       S
        .byte   $0F                             ; FF1A 0F                       .
        .byte   $73                             ; FF1B 73                       s
        .byte   $42                             ; FF1C 42                       B
        ora     $73,x                           ; FF1D 15 73                    .s
        .byte   $34                             ; FF1F 34                       4
        ora     $31,x                           ; FF20 15 31                    .1
        plp                                     ; FF22 28                       (
        ora     ($FE),y                         ; FF23 11 FE                    ..
        .byte   $1F                             ; FF25 1F                       .
        .byte   $73                             ; FF26 73                       s
        rti                                     ; FF27 40                       @

; ----------------------------------------------------------------------------
        .byte   $14                             ; FF28 14                       .
        .byte   $73                             ; FF29 73                       s
        .byte   $32                             ; FF2A 32                       2
        .byte   $14                             ; FF2B 14                       .
        .byte   $30                             ; FF2C 30                       0
LFF2D:  .byte   $FF                             ; FF2D FF                       .
        .byte   $3C                             ; FF2E 3C                       <
        .byte   $13                             ; FF2F 13                       .
        bmi     LFF36                           ; FF30 30 04                    0.
        asl     $30                             ; FF32 06 30                    .0
        .byte   $0F                             ; FF34 0F                       .
        .byte   $73                             ; FF35 73                       s
LFF36:  .byte   $42                             ; FF36 42                       B
        ora     $73,x                           ; FF37 15 73                    .s
        .byte   $34                             ; FF39 34                       4
        ora     $31,x                           ; FF3A 15 31                    .1
        .byte   $1C                             ; FF3C 1C                       .
        dey                                     ; FF3D 88                       .
        .byte   $04                             ; FF3E 04                       .
        brk                                     ; FF3F 00                       .
        .byte   $0F                             ; FF40 0F                       .
LFF41:  .byte   $73                             ; FF41 73                       s
        .byte   $43                             ; FF42 43                       C
        asl     $73,x                           ; FF43 16 73                    .s
        and     $16,x                           ; FF45 35 16                    5.
        and     ($34),y                         ; FF47 31 34                    14
        .byte   $77                             ; FF49 77                       w
        .byte   $5F                             ; FF4A 5F                       _
        ora     $10                             ; FF4B 05 10                    ..
        .byte   $0F                             ; FF4D 0F                       .
        .byte   $73                             ; FF4E 73                       s
        .byte   $47                             ; FF4F 47                       G
        ora     $73,x                           ; FF50 15 73                    .s
        and     $3115,y                         ; FF52 39 15 31                 9.1
        plp                                     ; FF55 28                       (
        ora     ($FE),y                         ; FF56 11 FE                    ..
        .byte   $1F                             ; FF58 1F                       .
        .byte   $73                             ; FF59 73                       s
        pha                                     ; FF5A 48                       H
        .byte   $14                             ; FF5B 14                       .
        .byte   $73                             ; FF5C 73                       s
        .byte   $3A                             ; FF5D 3A                       :
        .byte   $14                             ; FF5E 14                       .
        and     ($40),y                         ; FF5F 31 40                    1@
        .byte   $FF                             ; FF61 FF                       .
        .byte   $3C                             ; FF62 3C                       <
        .byte   $13                             ; FF63 13                       .
        bmi     LFF6A                           ; FF64 30 04                    0.
        asl     $30                             ; FF66 06 30                    .0
        .byte   $0F                             ; FF68 0F                       .
        .byte   $73                             ; FF69 73                       s
LFF6A:  jmp     L7315                           ; FF6A 4C 15 73                 L.s

; ----------------------------------------------------------------------------
        rol     $3115,x                         ; FF6D 3E 15 31                 >.1
        .byte   $34                             ; FF70 34                       4
        dey                                     ; FF71 88                       .
        .byte   $04                             ; FF72 04                       .
        brk                                     ; FF73 00                       .
        .byte   $0F                             ; FF74 0F                       .
        .byte   $73                             ; FF75 73                       s
        lsr     $7316                           ; FF76 4E 16 73                 N.s
        rti                                     ; FF79 40                       @

; ----------------------------------------------------------------------------
        asl     $30,x                           ; FF7A 16 30                    .0
        .byte   $77                             ; FF7C 77                       w
        .byte   $53                             ; FF7D 53                       S
        ora     $10                             ; FF7E 05 10                    ..
        .byte   $0F                             ; FF80 0F                       .
        .byte   $73                             ; FF81 73                       s
        .byte   $4F                             ; FF82 4F                       O
        ora     $73,x                           ; FF83 15 73                    .s
        eor     ($15,x)                         ; FF85 41 15                    A.
        and     ($28),y                         ; FF87 31 28                    1(
        .byte   $11                             ; FF89 11                       .
LFF8A:  inc     $731F,x                         ; FF8A FE 1F 73                 ..s
        .byte   $53                             ; FF8D 53                       S
        .byte   $14                             ; FF8E 14                       .
        .byte   $73                             ; FF8F 73                       s
        pha                                     ; FF90 48                       H
        .byte   $14                             ; FF91 14                       .
        .byte   $30                             ; FF92 30                       0
LFF93:  .byte   $FF                             ; FF93 FF                       .
        .byte   $3C                             ; FF94 3C                       <
        .byte   $13                             ; FF95 13                       .
        bmi     LFF9C                           ; FF96 30 04                    0.
        asl     $30                             ; FF98 06 30                    .0
        .byte   $0F                             ; FF9A 0F                       .
        .byte   $73                             ; FF9B 73                       s
LFF9C:  .byte   $4F                             ; FF9C 4F                       O
        ora     $73,x                           ; FF9D 15 73                    .s
        .byte   $44                             ; FF9F 44                       D
        ora     $31,x                           ; FFA0 15 31                    .1
        .byte   $1C                             ; FFA2 1C                       .
        dey                                     ; FFA3 88                       .
        .byte   $04                             ; FFA4 04                       .
        brk                                     ; FFA5 00                       .
        .byte   $0F                             ; FFA6 0F                       .
        .byte   $73                             ; FFA7 73                       s
        lsr     $7316                           ; FFA8 4E 16 73                 N.s
        .byte   $43                             ; FFAB 43                       C
        asl     $31,x                           ; FFAC 16 31                    .1
        .byte   $34                             ; FFAE 34                       4
        .byte   $77                             ; FFAF 77                       w
        .byte   $5F                             ; FFB0 5F                       _
        ora     $10                             ; FFB1 05 10                    ..
        .byte   $0F                             ; FFB3 0F                       .
        .byte   $73                             ; FFB4 73                       s
        jmp     L7315                           ; FFB5 4C 15 73                 L.s

; ----------------------------------------------------------------------------
        eor     ($15,x)                         ; FFB8 41 15                    A.
        and     ($28),y                         ; FFBA 31 28                    1(
        ora     ($FE),y                         ; FFBC 11 FE                    ..
        .byte   $0F                             ; FFBE 0F                       .
        .byte   $73                             ; FFBF 73                       s
        pha                                     ; FFC0 48                       H
        .byte   $14                             ; FFC1 14                       .
        .byte   $73                             ; FFC2 73                       s
        and     $3114,x                         ; FFC3 3D 14 31                 =.1
        rti                                     ; FFC6 40                       @

; ----------------------------------------------------------------------------
        adc     ($53),y                         ; FFC7 71 53                    qS
        .byte   $0F                             ; FFC9 0F                       .
        .byte   $73                             ; FFCA 73                       s
        .byte   $47                             ; FFCB 47                       G
        ora     $73,x                           ; FFCC 15 73                    .s
        .byte   $3C                             ; FFCE 3C                       <
        ora     $31,x                           ; FFCF 15 31                    .1
        .byte   $34                             ; FFD1 34                       4
        ora     ($FE),y                         ; FFD2 11 FE                    ..
        .byte   $1F                             ; FFD4 1F                       .
        .byte   $73                             ; FFD5 73                       s
        .byte   $43                             ; FFD6 43                       C
        asl     $73,x                           ; FFD7 16 73                    .s
        sec                                     ; FFD9 38                       8
        asl     $30,x                           ; FFDA 16 30                    .0
        .byte   $FF                             ; FFDC FF                       .
        .byte   $3C                             ; FFDD 3C                       <
        .byte   $13                             ; FFDE 13                       .
        bmi     LFFE5                           ; FFDF 30 04                    0.
        asl     $30                             ; FFE1 06 30                    .0
        .byte   $0F                             ; FFE3 0F                       .
        .byte   $73                             ; FFE4 73                       s
LFFE5:  .byte   $42                             ; FFE5 42                       B
        ora     $73,x                           ; FFE6 15 73                    .s
        .byte   $37                             ; FFE8 37                       7
        ora     $31,x                           ; FFE9 15 31                    .1
        plp                                     ; FFEB 28                       (
        dey                                     ; FFEC 88                       .
        .byte   $04                             ; FFED 04                       .
        brk                                     ; FFEE 00                       .
        .byte   $0F                             ; FFEF 0F                       .
        .byte   $73                             ; FFF0 73                       s
        rti                                     ; FFF1 40                       @

; ----------------------------------------------------------------------------
        .byte   $14                             ; FFF2 14                       .
        .byte   $73                             ; FFF3 73                       s
        and     $14,x                           ; FFF4 35 14                    5.
;        bmi     L006F                           ; FFF6 30 77                    0w
.byte $30, $77
        .byte   $5F                             ; FFF8 5F                       _
;        ora     $10                             ; FFF9 05 10                    ..
;        .byte   $0F                             ; FFFB 0F                       .
;        .byte   $73                             ; FFFC 73                       s
;        .byte   $42                             ; FFFD 42                       B
;        ora     $73,x                           ; FFFE 15 73                    .s
.byte $05
VECTORS ; mod
