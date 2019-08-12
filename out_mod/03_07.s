.include "../mod.inc"
.segment "MF000"
.org $F000

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-28 15:19:56
; Input file: out_src\03_07.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L0035           := $0035
L0188           := $0188
L030F           := $030F
L0701           := $0701
L080F           := $080F
L0A0F           := $0A0F
L1388           := $1388
L18B0           := $18B0
L1B80           := $1B80
L1F40           := $1F40
L1F80           := $1F80
L2833           := $2833
L2A75           := $2A75
L2B75           := $2B75
L2D75           := $2D75
L2F75           := $2F75
L3275           := $3275
L3533           := $3533
L35B1           := $35B1
L35B9           := $35B9
L4131           := $4131
L41B1           := $41B1
L41BB           := $41BB
L43BB           := $43BB
L45B9           := $45B9
L4775           := $4775
L7103           := $7103
L7106           := $7106
L710B           := $710B
L710F           := $710F
L711B           := $711B
L711F           := $711F
L7704           := $7704
; ----------------------------------------------------------------------------
        plp                                     ; F000 28                       (
        adc     ($58),y                         ; F001 71 58                    qX
        .byte   $30                             ; F003 30                       0
LF004:  .byte   $FF                             ; F004 FF                       .
        .byte   $5F                             ; F005 5F                       _
        ora     #$28                            ; F006 09 28                    .(
        ora     $0A40                           ; F008 0D 40 0A                 .@.
        adc     ($5F),y                         ; F00B 71 5F                    q_
        sbc     $0D6B,y                         ; F00D F9 6B 0D                 .k.
        .byte   $20                             ; F010 20                        
LF011:  .byte   $1F                             ; F011 1F                       .
        adc     ($2D),y                         ; F012 71 2D                    q-
        adc     ($4F),y                         ; F014 71 4F                    qO
        bmi     LF011                           ; F016 30 F9                    0.
        .byte   $77                             ; F018 77                       w
        ora     $3310                           ; F019 0D 10 33                 ..3
        eor     ($08,x)                         ; F01C 41 08                    A.
        asl     a                               ; F01E 0A                       .
        adc     ($51),y                         ; F01F 71 51                    qQ
        sbc     $0D6B,y                         ; F021 F9 6B 0D                 .k.
        jsr     L710B                           ; F024 20 0B 71                  .q
        plp                                     ; F027 28                       (
        adc     ($56),y                         ; F028 71 56                    qV
        sbc     $0D5F,y                         ; F02A F9 5F 0D                 ._.
        rti                                     ; F02D 40                       @

; ----------------------------------------------------------------------------
        asl     a                               ; F02E 0A                       .
        adc     ($5D),y                         ; F02F 71 5D                    q]
        adc     ($53),y                         ; F031 71 53                    qS
        .byte   $1F                             ; F033 1F                       .
        .byte   $71                             ; F034 71                       q
LF035:  and     $4F71                           ; F035 2D 71 4F                 -qO
        bmi     LF035                           ; F038 30 FB                    0.
        rti                                     ; F03A 40                       @

; ----------------------------------------------------------------------------
        ora     $04                             ; F03B 05 04                    ..
        brk                                     ; F03D 00                       .
        .byte   $33                             ; F03E 33                       3
        jmp     L0A0F                           ; F03F 4C 0F 0A                 L..

; ----------------------------------------------------------------------------
        adc     ($51),y                         ; F042 71 51                    qQ
        .byte   $44                             ; F044 44                       D
        .byte   $64                             ; F045 64                       d
        .byte   $0F                             ; F046 0F                       .
        adc     ($2F),y                         ; F047 71 2F                    q/
        adc     ($56),y                         ; F049 71 56                    qV
        .byte   $30                             ; F04B 30                       0
LF04C:  .byte   $FF                             ; F04C FF                       .
        .byte   $5F                             ; F04D 5F                       _
        ora     #$28                            ; F04E 09 28                    .(
        ora     $0A40                           ; F050 0D 40 0A                 .@.
        adc     ($5D),y                         ; F053 71 5D                    q]
        sbc     $0D6B,y                         ; F055 F9 6B 0D                 .k.
        .byte   $20                             ; F058 20                        
LF059:  .byte   $1F                             ; F059 1F                       .
        adc     ($2B),y                         ; F05A 71 2B                    q+
        adc     ($51),y                         ; F05C 71 51                    qQ
        bmi     LF059                           ; F05E 30 F9                    0.
        .byte   $77                             ; F060 77                       w
        ora     $3010                           ; F061 0D 10 30                 ..0
        asl     a                               ; F064 0A                       .
        adc     ($53),y                         ; F065 71 53                    qS
        sbc     $0D6B,y                         ; F067 F9 6B 0D                 .k.
        jsr     L711B                           ; F06A 20 1B 71                  .q
        plp                                     ; F06D 28                       (
        adc     ($58),y                         ; F06E 71 58                    qX
        sbc     $0D5F,y                         ; F070 F9 5F 0D                 ._.
        rti                                     ; F073 40                       @

; ----------------------------------------------------------------------------
        bmi     LF080                           ; F074 30 0A                    0.
        adc     ($5F),y                         ; F076 71 5F                    q_
        adc     ($53),y                         ; F078 71 53                    qS
        .byte   $1F                             ; F07A 1F                       .
        adc     ($26),y                         ; F07B 71 26                    q&
        adc     ($51),y                         ; F07D 71 51                    qQ
        .byte   $30                             ; F07F 30                       0
LF080:  .byte   $FB                             ; F080 FB                       .
        rti                                     ; F081 40                       @

; ----------------------------------------------------------------------------
        ora     $04                             ; F082 05 04                    ..
        ora     $33                             ; F084 05 33                    .3
        eor     ($0A,x)                         ; F086 41 0A                    A.
        .byte   $1A                             ; F088 1A                       .
        adc     ($53),y                         ; F089 71 53                    qS
        .byte   $44                             ; F08B 44                       D
        .byte   $64                             ; F08C 64                       d
        dey                                     ; F08D 88                       .
        .byte   $13                             ; F08E 13                       .
        .byte   $C2                             ; F08F C2                       .
        .byte   $1F                             ; F090 1F                       .
        adc     ($28),y                         ; F091 71 28                    q(
        adc     ($58),y                         ; F093 71 58                    qX
        .byte   $30                             ; F095 30                       0
LF096:  .byte   $FF                             ; F096 FF                       .
        .byte   $5F                             ; F097 5F                       _
        ora     #$28                            ; F098 09 28                    .(
        ora     $3040                           ; F09A 0D 40 30                 .@0
        .byte   $1A                             ; F09D 1A                       .
        adc     ($5F),y                         ; F09E 71 5F                    q_
        sbc     $0D6B,y                         ; F0A0 F9 6B 0D                 .k.
        jsr     L1388                           ; F0A3 20 88 13                  ..
        brk                                     ; F0A6 00                       .
LF0A7:  .byte   $1F                             ; F0A7 1F                       .
        adc     ($2B),y                         ; F0A8 71 2B                    q+
        adc     ($51),y                         ; F0AA 71 51                    qQ
        bmi     LF0A7                           ; F0AC 30 F9                    0.
        .byte   $77                             ; F0AE 77                       w
        ora     $3310                           ; F0AF 0D 10 33                 ..3
        .byte   $43                             ; F0B2 43                       C
        php                                     ; F0B3 08                       .
        asl     a                               ; F0B4 0A                       .
        adc     ($53),y                         ; F0B5 71 53                    qS
        sbc     $0D6B,y                         ; F0B7 F9 6B 0D                 .k.
        jsr     L710B                           ; F0BA 20 0B 71                  .q
        plp                                     ; F0BD 28                       (
        adc     ($58),y                         ; F0BE 71 58                    qX
        sbc     $0D5F,y                         ; F0C0 F9 5F 0D                 ._.
        rti                                     ; F0C3 40                       @

; ----------------------------------------------------------------------------
        asl     a                               ; F0C4 0A                       .
        adc     ($5F),y                         ; F0C5 71 5F                    q_
        adc     ($53),y                         ; F0C7 71 53                    qS
        .byte   $1F                             ; F0C9 1F                       .
        .byte   $71                             ; F0CA 71                       q
LF0CB:  rol     $71                             ; F0CB 26 71                    &q
        eor     ($30),y                         ; F0CD 51 30                    Q0
        .byte   $FB                             ; F0CF FB                       .
        rti                                     ; F0D0 40                       @

; ----------------------------------------------------------------------------
        ora     $04                             ; F0D1 05 04                    ..
        brk                                     ; F0D3 00                       .
        .byte   $33                             ; F0D4 33                       3
        eor     ($0A,x)                         ; F0D5 41 0A                    A.
        .byte   $1A                             ; F0D7 1A                       .
        adc     ($53),y                         ; F0D8 71 53                    qS
        .byte   $44                             ; F0DA 44                       D
        .byte   $64                             ; F0DB 64                       d
        .byte   $80                             ; F0DC 80                       .
        .byte   $1F                             ; F0DD 1F                       .
        adc     ($28),y                         ; F0DE 71 28                    q(
        adc     ($58),y                         ; F0E0 71 58                    qX
        .byte   $30                             ; F0E2 30                       0
LF0E3:  .byte   $FF                             ; F0E3 FF                       .
        .byte   $5F                             ; F0E4 5F                       _
        ora     #$28                            ; F0E5 09 28                    .(
        ora     $3040                           ; F0E7 0D 40 30                 .@0
        .byte   $1A                             ; F0EA 1A                       .
        adc     ($5F),y                         ; F0EB 71 5F                    q_
        sbc     $0D6B,y                         ; F0ED F9 6B 0D                 .k.
        .byte   $20                             ; F0F0 20                        
        .byte   $80                             ; F0F1 80                       .
LF0F2:  .byte   $1F                             ; F0F2 1F                       .
        adc     ($2B),y                         ; F0F3 71 2B                    q+
        adc     ($51),y                         ; F0F5 71 51                    qQ
        bmi     LF0F2                           ; F0F7 30 F9                    0.
        .byte   $77                             ; F0F9 77                       w
        ora     $3010                           ; F0FA 0D 10 30                 ..0
        .byte   $1A                             ; F0FD 1A                       .
        adc     ($53),y                         ; F0FE 71 53                    qS
        sbc     $0D6B,y                         ; F100 F9 6B 0D                 .k.
        jsr     L1B80                           ; F103 20 80 1B                  ..
        adc     ($28),y                         ; F106 71 28                    q(
        adc     ($58),y                         ; F108 71 58                    qX
        sbc     $0D5F,y                         ; F10A F9 5F 0D                 ._.
        rti                                     ; F10D 40                       @

; ----------------------------------------------------------------------------
        bmi     LF12A                           ; F10E 30 1A                    0.
        adc     ($5F),y                         ; F110 71 5F                    q_
        adc     ($53),y                         ; F112 71 53                    qS
        .byte   $80                             ; F114 80                       .
        .byte   $1F                             ; F115 1F                       .
        .byte   $71                             ; F116 71                       q
LF117:  rol     $71                             ; F117 26 71                    &q
        eor     ($30),y                         ; F119 51 30                    Q0
        .byte   $FB                             ; F11B FB                       .
        rti                                     ; F11C 40                       @

; ----------------------------------------------------------------------------
        ora     $04                             ; F11D 05 04                    ..
        brk                                     ; F11F 00                       .
        .byte   $33                             ; F120 33                       3
        .byte   $4F                             ; F121 4F                       O
        .byte   $0F                             ; F122 0F                       .
        asl     a                               ; F123 0A                       .
        adc     ($53),y                         ; F124 71 53                    qS
        .byte   $44                             ; F126 44                       D
        .byte   $64                             ; F127 64                       d
        .byte   $0F                             ; F128 0F                       .
        .byte   $71                             ; F129 71                       q
LF12A:  plp                                     ; F12A 28                       (
        adc     ($58),y                         ; F12B 71 58                    qX
        .byte   $30                             ; F12D 30                       0
LF12E:  .byte   $FF                             ; F12E FF                       .
        .byte   $5F                             ; F12F 5F                       _
        ora     #$28                            ; F130 09 28                    .(
        ora     $0A40                           ; F132 0D 40 0A                 .@.
        adc     ($5F),y                         ; F135 71 5F                    q_
        sbc     $0D6B,y                         ; F137 F9 6B 0D                 .k.
        .byte   $20                             ; F13A 20                        
LF13B:  .byte   $1F                             ; F13B 1F                       .
        adc     ($32),y                         ; F13C 71 32                    q2
        adc     ($54),y                         ; F13E 71 54                    qT
        bmi     LF13B                           ; F140 30 F9                    0.
        .byte   $77                             ; F142 77                       w
        ora     $3110                           ; F143 0D 10 31                 ..1
        .byte   $43                             ; F146 43                       C
        asl     a                               ; F147 0A                       .
        adc     ($56),y                         ; F148 71 56                    qV
        sbc     $0D6B,y                         ; F14A F9 6B 0D                 .k.
        jsr     L710B                           ; F14D 20 0B 71                  .q
        and     $5B71                           ; F150 2D 71 5B                 -q[
        sbc     $0D5F,y                         ; F153 F9 5F 0D                 ._.
        rti                                     ; F156 40                       @

; ----------------------------------------------------------------------------
        asl     a                               ; F157 0A                       .
        adc     ($62),y                         ; F158 71 62                    qb
        adc     ($53),y                         ; F15A 71 53                    qS
        .byte   $1F                             ; F15C 1F                       .
        .byte   $71                             ; F15D 71                       q
LF15E:  .byte   $2B                             ; F15E 2B                       +
        adc     ($54),y                         ; F15F 71 54                    qT
        bmi     LF15E                           ; F161 30 FB                    0.
        rti                                     ; F163 40                       @

; ----------------------------------------------------------------------------
        ora     $04                             ; F164 05 04                    ..
        brk                                     ; F166 00                       .
        and     ($4F),y                         ; F167 31 4F                    1O
        asl     a                               ; F169 0A                       .
        adc     ($56),y                         ; F16A 71 56                    qV
        .byte   $44                             ; F16C 44                       D
        .byte   $64                             ; F16D 64                       d
        .byte   $0F                             ; F16E 0F                       .
        adc     ($26),y                         ; F16F 71 26                    q&
        adc     ($5B),y                         ; F171 71 5B                    q[
        .byte   $30                             ; F173 30                       0
LF174:  .byte   $FF                             ; F174 FF                       .
        .byte   $5F                             ; F175 5F                       _
        ora     #$28                            ; F176 09 28                    .(
        ora     $0A40                           ; F178 0D 40 0A                 .@.
        adc     ($62),y                         ; F17B 71 62                    qb
        sbc     $0D6B,y                         ; F17D F9 6B 0D                 .k.
        jsr     L1F40                           ; F180 20 40 1F                  @.
        .byte   $77                             ; F183 77                       w
        .byte   $2B                             ; F184 2B                       +
        ora     ($18,x)                         ; F185 01 18                    ..
        .byte   $77                             ; F187 77                       w
        bit     $01                             ; F188 24 01                    $.
        clc                                     ; F18A 18                       .
        .byte   $BB                             ; F18B BB                       .
        plp                                     ; F18C 28                       (
        bpl     LF190                           ; F18D 10 01                    ..
        .byte   $04                             ; F18F 04                       .
LF190:  .byte   $FF                             ; F190 FF                       .
        .byte   $77                             ; F191 77                       w
        ora     #$28                            ; F192 09 28                    .(
        ora     $3310                           ; F194 0D 10 33                 ..3
        jmp     L080F                           ; F197 4C 0F 08                 L..

; ----------------------------------------------------------------------------
        sbc     $0D6B,y                         ; F19A F9 6B 0D                 .k.
        jsr     L711B                           ; F19D 20 1B 71                  .q
        plp                                     ; F1A0 28                       (
        adc     ($21),y                         ; F1A1 71 21                    q!
        sbc     $0D5F,y                         ; F1A3 F9 5F 0D                 ._.
        rti                                     ; F1A6 40                       @

; ----------------------------------------------------------------------------
        bmi     LF1B1                           ; F1A7 30 08                    0.
        adc     ($53),y                         ; F1A9 71 53                    qS
        .byte   $0F                             ; F1AB 0F                       .
        adc     ($26),y                         ; F1AC 71 26                    q&
        bvs     LF1E0                           ; F1AE 70 30                    p0
        .byte   $FB                             ; F1B0 FB                       .
LF1B1:  rti                                     ; F1B1 40                       @

; ----------------------------------------------------------------------------
        ora     $04                             ; F1B2 05 04                    ..
        ora     $08                             ; F1B4 05 08                    ..
        .byte   $44                             ; F1B6 44                       D
        .byte   $64                             ; F1B7 64                       d
        .byte   $1F                             ; F1B8 1F                       .
        adc     ($28),y                         ; F1B9 71 28                    q(
        bvs     LF1ED                           ; F1BB 70 30                    p0
        .byte   $FF                             ; F1BD FF                       .
        .byte   $5F                             ; F1BE 5F                       _
        ora     #$28                            ; F1BF 09 28                    .(
        ora     $3340                           ; F1C1 0D 40 33                 .@3
        .byte   $43                             ; F1C4 43                       C
        php                                     ; F1C5 08                       .
        php                                     ; F1C6 08                       .
        sbc     $0D6B,y                         ; F1C7 F9 6B 0D                 .k.
        .byte   $20                             ; F1CA 20                        
LF1CB:  .byte   $0F                             ; F1CB 0F                       .
        adc     ($2B),y                         ; F1CC 71 2B                    q+
        adc     ($24),y                         ; F1CE 71 24                    q$
        bmi     LF1CB                           ; F1D0 30 F9                    0.
        .byte   $77                             ; F1D2 77                       w
        ora     $0810                           ; F1D3 0D 10 08                 ...
        sbc     $0D6B,y                         ; F1D6 F9 6B 0D                 .k.
        jsr     L710B                           ; F1D9 20 0B 71                  .q
        plp                                     ; F1DC 28                       (
        adc     ($21),y                         ; F1DD 71 21                    q!
        .byte   $F9                             ; F1DF F9                       .
LF1E0:  .byte   $5F                             ; F1E0 5F                       _
        ora     $0840                           ; F1E1 0D 40 08                 .@.
        adc     ($53),y                         ; F1E4 71 53                    qS
        .byte   $1F                             ; F1E6 1F                       .
        adc     ($26),y                         ; F1E7 71 26                    q&
        bvs     LF21B                           ; F1E9 70 30                    p0
        .byte   $FB                             ; F1EB FB                       .
        rti                                     ; F1EC 40                       @

; ----------------------------------------------------------------------------
LF1ED:  ora     $04                             ; F1ED 05 04                    ..
        brk                                     ; F1EF 00                       .
        and     ($48),y                         ; F1F0 31 48                    1H
        php                                     ; F1F2 08                       .
        .byte   $44                             ; F1F3 44                       D
        .byte   $64                             ; F1F4 64                       d
        .byte   $0F                             ; F1F5 0F                       .
        adc     ($28),y                         ; F1F6 71 28                    q(
        bvs     LF22A                           ; F1F8 70 30                    p0
        .byte   $FF                             ; F1FA FF                       .
        .byte   $5F                             ; F1FB 5F                       _
        ora     #$28                            ; F1FC 09 28                    .(
        ora     $0840                           ; F1FE 0D 40 08                 .@.
        sbc     $0D6B,y                         ; F201 F9 6B 0D                 .k.
        .byte   $20                             ; F204 20                        
LF205:  .byte   $0F                             ; F205 0F                       .
        adc     ($2B),y                         ; F206 71 2B                    q+
        adc     ($24),y                         ; F208 71 24                    q$
        bmi     LF205                           ; F20A 30 F9                    0.
        .byte   $77                             ; F20C 77                       w
        ora     $0810                           ; F20D 0D 10 08                 ...
        sbc     $0D6B,y                         ; F210 F9 6B 0D                 .k.
        jsr     L711B                           ; F213 20 1B 71                  .q
        plp                                     ; F216 28                       (
        adc     ($21),y                         ; F217 71 21                    q!
        .byte   $F9                             ; F219 F9                       .
        .byte   $5F                             ; F21A 5F                       _
LF21B:  ora     $3140                           ; F21B 0D 40 31                 .@1
        .byte   $4F                             ; F21E 4F                       O
        php                                     ; F21F 08                       .
        adc     ($53),y                         ; F220 71 53                    qS
        .byte   $0F                             ; F222 0F                       .
        adc     ($26),y                         ; F223 71 26                    q&
        bvs     LF257                           ; F225 70 30                    p0
        .byte   $FB                             ; F227 FB                       .
        rti                                     ; F228 40                       @

; ----------------------------------------------------------------------------
        .byte   $05                             ; F229 05                       .
LF22A:  .byte   $04                             ; F22A 04                       .
        brk                                     ; F22B 00                       .
        php                                     ; F22C 08                       .
        .byte   $44                             ; F22D 44                       D
        .byte   $64                             ; F22E 64                       d
        .byte   $0F                             ; F22F 0F                       .
        adc     ($28),y                         ; F230 71 28                    q(
        bvs     LF264                           ; F232 70 30                    p0
        .byte   $FF                             ; F234 FF                       .
        .byte   $5F                             ; F235 5F                       _
        ora     #$28                            ; F236 09 28                    .(
        ora     $0840                           ; F238 0D 40 08                 .@.
        sbc     $0D6B,y                         ; F23B F9 6B 0D                 .k.
        .byte   $20                             ; F23E 20                        
LF23F:  .byte   $1F                             ; F23F 1F                       .
        adc     ($2D),y                         ; F240 71 2D                    q-
        adc     ($26),y                         ; F242 71 26                    q&
        bmi     LF23F                           ; F244 30 F9                    0.
        .byte   $77                             ; F246 77                       w
        ora     $3210                           ; F247 0D 10 32                 ..2
        .byte   $0F                             ; F24A 0F                       .
        php                                     ; F24B 08                       .
        sbc     $0D6B,y                         ; F24C F9 6B 0D                 .k.
        jsr     L710B                           ; F24F 20 0B 71                  .q
        plp                                     ; F252 28                       (
        adc     ($21),y                         ; F253 71 21                    q!
        .byte   $F9                             ; F255 F9                       .
        .byte   $5F                             ; F256 5F                       _
LF257:  ora     $0840                           ; F257 0D 40 08                 .@.
        adc     ($53),y                         ; F25A 71 53                    qS
        .byte   $1F                             ; F25C 1F                       .
        .byte   $71                             ; F25D 71                       q
LF25E:  and     $2671                           ; F25E 2D 71 26                 -q&
        bmi     LF25E                           ; F261 30 FB                    0.
        rti                                     ; F263 40                       @

; ----------------------------------------------------------------------------
LF264:  ora     $04                             ; F264 05 04                    ..
        brk                                     ; F266 00                       .
        and     ($4C),y                         ; F267 31 4C                    1L
        php                                     ; F269 08                       .
        .byte   $44                             ; F26A 44                       D
        .byte   $64                             ; F26B 64                       d
        .byte   $0F                             ; F26C 0F                       .
        adc     ($2F),y                         ; F26D 71 2F                    q/
        adc     ($28),y                         ; F26F 71 28                    q(
        .byte   $30                             ; F271 30                       0
LF272:  .byte   $FF                             ; F272 FF                       .
        .byte   $5F                             ; F273 5F                       _
        ora     #$28                            ; F274 09 28                    .(
        ora     $0840                           ; F276 0D 40 08                 .@.
        sbc     $0D6B,y                         ; F279 F9 6B 0D                 .k.
        .byte   $20                             ; F27C 20                        
LF27D:  .byte   $1F                             ; F27D 1F                       .
        adc     ($2B),y                         ; F27E 71 2B                    q+
        adc     ($24),y                         ; F280 71 24                    q$
        bmi     LF27D                           ; F282 30 F9                    0.
        .byte   $77                             ; F284 77                       w
        ora     $3010                           ; F285 0D 10 30                 ..0
        php                                     ; F288 08                       .
        sbc     $0D6B,y                         ; F289 F9 6B 0D                 .k.
        jsr     L711B                           ; F28C 20 1B 71                  .q
        plp                                     ; F28F 28                       (
        adc     ($21),y                         ; F290 71 21                    q!
        sbc     $0D5F,y                         ; F292 F9 5F 0D                 ._.
        rti                                     ; F295 40                       @

; ----------------------------------------------------------------------------
        bmi     LF2A0                           ; F296 30 08                    0.
        adc     ($53),y                         ; F298 71 53                    qS
        .byte   $0F                             ; F29A 0F                       .
        adc     ($26),y                         ; F29B 71 26                    q&
        bvs     LF2CF                           ; F29D 70 30                    p0
        .byte   $FB                             ; F29F FB                       .
LF2A0:  rti                                     ; F2A0 40                       @

; ----------------------------------------------------------------------------
        ora     $04                             ; F2A1 05 04                    ..
        ora     $08                             ; F2A3 05 08                    ..
        .byte   $44                             ; F2A5 44                       D
        .byte   $64                             ; F2A6 64                       d
        .byte   $1F                             ; F2A7 1F                       .
        adc     ($28),y                         ; F2A8 71 28                    q(
        bvs     LF2DC                           ; F2AA 70 30                    p0
        .byte   $FF                             ; F2AC FF                       .
        .byte   $5F                             ; F2AD 5F                       _
        ora     #$28                            ; F2AE 09 28                    .(
        ora     $3340                           ; F2B0 0D 40 33                 .@3
        .byte   $43                             ; F2B3 43                       C
        php                                     ; F2B4 08                       .
        php                                     ; F2B5 08                       .
        sbc     $0D6B,y                         ; F2B6 F9 6B 0D                 .k.
        .byte   $20                             ; F2B9 20                        
LF2BA:  .byte   $0F                             ; F2BA 0F                       .
        adc     ($2B),y                         ; F2BB 71 2B                    q+
        adc     ($24),y                         ; F2BD 71 24                    q$
        bmi     LF2BA                           ; F2BF 30 F9                    0.
        .byte   $77                             ; F2C1 77                       w
        ora     $0810                           ; F2C2 0D 10 08                 ...
        sbc     $0D6B,y                         ; F2C5 F9 6B 0D                 .k.
        jsr     L710B                           ; F2C8 20 0B 71                  .q
        plp                                     ; F2CB 28                       (
        adc     ($21),y                         ; F2CC 71 21                    q!
        .byte   $F9                             ; F2CE F9                       .
LF2CF:  .byte   $5F                             ; F2CF 5F                       _
        ora     $0840                           ; F2D0 0D 40 08                 .@.
        adc     ($53),y                         ; F2D3 71 53                    qS
        .byte   $1F                             ; F2D5 1F                       .
        adc     ($26),y                         ; F2D6 71 26                    q&
        bvs     LF30A                           ; F2D8 70 30                    p0
        .byte   $FB                             ; F2DA FB                       .
        rti                                     ; F2DB 40                       @

; ----------------------------------------------------------------------------
LF2DC:  ora     $04                             ; F2DC 05 04                    ..
        brk                                     ; F2DE 00                       .
        and     ($48),y                         ; F2DF 31 48                    1H
        php                                     ; F2E1 08                       .
        .byte   $44                             ; F2E2 44                       D
        .byte   $64                             ; F2E3 64                       d
        .byte   $0F                             ; F2E4 0F                       .
        adc     ($28),y                         ; F2E5 71 28                    q(
        bvs     LF319                           ; F2E7 70 30                    p0
        .byte   $FF                             ; F2E9 FF                       .
        .byte   $5F                             ; F2EA 5F                       _
        ora     #$28                            ; F2EB 09 28                    .(
        ora     $0840                           ; F2ED 0D 40 08                 .@.
        sbc     $0D6B,y                         ; F2F0 F9 6B 0D                 .k.
        .byte   $20                             ; F2F3 20                        
LF2F4:  .byte   $0F                             ; F2F4 0F                       .
        adc     ($2B),y                         ; F2F5 71 2B                    q+
        adc     ($24),y                         ; F2F7 71 24                    q$
        bmi     LF2F4                           ; F2F9 30 F9                    0.
        .byte   $77                             ; F2FB 77                       w
        ora     $0810                           ; F2FC 0D 10 08                 ...
        sbc     $0D6B,y                         ; F2FF F9 6B 0D                 .k.
        jsr     L711B                           ; F302 20 1B 71                  .q
        plp                                     ; F305 28                       (
        adc     ($21),y                         ; F306 71 21                    q!
        .byte   $F9                             ; F308 F9                       .
        .byte   $5F                             ; F309 5F                       _
LF30A:  ora     $3140                           ; F30A 0D 40 31                 .@1
        .byte   $4F                             ; F30D 4F                       O
        php                                     ; F30E 08                       .
        adc     ($53),y                         ; F30F 71 53                    qS
        .byte   $0F                             ; F311 0F                       .
        adc     ($26),y                         ; F312 71 26                    q&
        bvs     LF346                           ; F314 70 30                    p0
        .byte   $FB                             ; F316 FB                       .
        rti                                     ; F317 40                       @

; ----------------------------------------------------------------------------
        .byte   $05                             ; F318 05                       .
LF319:  .byte   $04                             ; F319 04                       .
        brk                                     ; F31A 00                       .
        php                                     ; F31B 08                       .
        .byte   $44                             ; F31C 44                       D
        .byte   $64                             ; F31D 64                       d
        .byte   $0F                             ; F31E 0F                       .
        adc     ($28),y                         ; F31F 71 28                    q(
        bvs     LF353                           ; F321 70 30                    p0
        .byte   $FF                             ; F323 FF                       .
        .byte   $5F                             ; F324 5F                       _
        ora     #$28                            ; F325 09 28                    .(
        ora     $0840                           ; F327 0D 40 08                 .@.
        sbc     $0D6B,y                         ; F32A F9 6B 0D                 .k.
        .byte   $20                             ; F32D 20                        
LF32E:  .byte   $1F                             ; F32E 1F                       .
        adc     ($32),y                         ; F32F 71 32                    q2
        adc     ($2B),y                         ; F331 71 2B                    q+
        bmi     LF32E                           ; F333 30 F9                    0.
        .byte   $77                             ; F335 77                       w
        ora     $3210                           ; F336 0D 10 32                 ..2
        .byte   $0F                             ; F339 0F                       .
        php                                     ; F33A 08                       .
        sbc     $0D6B,y                         ; F33B F9 6B 0D                 .k.
        jsr     L710B                           ; F33E 20 0B 71                  .q
        and     $2671                           ; F341 2D 71 26                 -q&
        .byte   $F9                             ; F344 F9                       .
        .byte   $5F                             ; F345 5F                       _
LF346:  ora     $0840                           ; F346 0D 40 08                 .@.
        adc     ($53),y                         ; F349 71 53                    qS
        .byte   $1F                             ; F34B 1F                       .
        .byte   $71                             ; F34C 71                       q
LF34D:  .byte   $2B                             ; F34D 2B                       +
        adc     ($24),y                         ; F34E 71 24                    q$
        bmi     LF34D                           ; F350 30 FB                    0.
        rti                                     ; F352 40                       @

; ----------------------------------------------------------------------------
LF353:  ora     $04                             ; F353 05 04                    ..
        brk                                     ; F355 00                       .
        bmi     LF360                           ; F356 30 08                    0.
        .byte   $44                             ; F358 44                       D
        .byte   $64                             ; F359 64                       d
        .byte   $0F                             ; F35A 0F                       .
        adc     ($26),y                         ; F35B 71 26                    q&
        adc     ($21),y                         ; F35D 71 21                    q!
        .byte   $30                             ; F35F 30                       0
LF360:  .byte   $FF                             ; F360 FF                       .
        .byte   $5F                             ; F361 5F                       _
        ora     #$28                            ; F362 09 28                    .(
        ora     $0840                           ; F364 0D 40 08                 .@.
        sbc     $0D6B,y                         ; F367 F9 6B 0D                 .k.
        jsr     L1F40                           ; F36A 20 40 1F                  @.
        .byte   $77                             ; F36D 77                       w
        .byte   $34                             ; F36E 34                       4
        ora     ($10,x)                         ; F36F 01 10                    ..
        .byte   $77                             ; F371 77                       w
        .byte   $3B                             ; F372 3B                       ;
        ora     ($10,x)                         ; F373 01 10                    ..
        .byte   $BB                             ; F375 BB                       .
        plp                                     ; F376 28                       (
        bpl     LF37A                           ; F377 10 01                    ..
        .byte   $04                             ; F379 04                       .
LF37A:  .byte   $BB                             ; F37A BB                       .
        .byte   $77                             ; F37B 77                       w
        .byte   $17                             ; F37C 17                       .
        ora     $3310                           ; F37D 0D 10 33                 ..3
        jmp     L030F                           ; F380 4C 0F 03                 L..

; ----------------------------------------------------------------------------
        adc     ($36),y                         ; F383 71 36                    q6
        adc     ($3D),y                         ; F385 71 3D                    q=
        .byte   $0B                             ; F387 0B                       .
        adc     ($37),y                         ; F388 71 37                    q7
        adc     ($3E),y                         ; F38A 71 3E                    q>
        lda     $0D6B,y                         ; F38C B9 6B 0D                 .k.
        jsr     L7103                           ; F38F 20 03 71                  .q
        .byte   $3B                             ; F392 3B                       ;
        adc     ($42),y                         ; F393 71 42                    qB
        .byte   $0B                             ; F395 0B                       .
        .byte   $73                             ; F396 73                       s
        .byte   $34                             ; F397 34                       4
        .byte   $02                             ; F398 02                       .
        .byte   $73                             ; F399 73                       s
        .byte   $3B                             ; F39A 3B                       ;
        .byte   $02                             ; F39B 02                       .
        lda     $0D5F,y                         ; F39C B9 5F 0D                 ._.
        rti                                     ; F39F 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F3A0 03                       .
        adc     ($36),y                         ; F3A1 71 36                    q6
        adc     ($3D),y                         ; F3A3 71 3D                    q=
        .byte   $0B                             ; F3A5 0B                       .
        adc     ($37),y                         ; F3A6 71 37                    q7
        adc     ($3E),y                         ; F3A8 71 3E                    q>
        lda     $0D6B,y                         ; F3AA B9 6B 0D                 .k.
        jsr     L7103                           ; F3AD 20 03 71                  .q
        .byte   $3B                             ; F3B0 3B                       ;
        adc     ($42),y                         ; F3B1 71 42                    qB
        .byte   $0F                             ; F3B3 0F                       .
        .byte   $73                             ; F3B4 73                       s
        .byte   $34                             ; F3B5 34                       4
        .byte   $03                             ; F3B6 03                       .
        .byte   $73                             ; F3B7 73                       s
        .byte   $3B                             ; F3B8 3B                       ;
        .byte   $03                             ; F3B9 03                       .
        .byte   $33                             ; F3BA 33                       3
        .byte   $1C                             ; F3BB 1C                       .
        .byte   $04                             ; F3BC 04                       .
        lda     $0D77,y                         ; F3BD B9 77 0D                 .w.
        bpl     LF3C5                           ; F3C0 10 03                    ..
        adc     ($36),y                         ; F3C2 71 36                    q6
        .byte   $71                             ; F3C4 71                       q
LF3C5:  and     L710B,x                         ; F3C5 3D 0B 71                 =.q
        .byte   $37                             ; F3C8 37                       7
        adc     ($3E),y                         ; F3C9 71 3E                    q>
        lda     $0D6B,y                         ; F3CB B9 6B 0D                 .k.
        jsr     L7103                           ; F3CE 20 03 71                  .q
        .byte   $3B                             ; F3D1 3B                       ;
        adc     ($42),y                         ; F3D2 71 42                    qB
        .byte   $0B                             ; F3D4 0B                       .
        .byte   $73                             ; F3D5 73                       s
        .byte   $34                             ; F3D6 34                       4
        .byte   $02                             ; F3D7 02                       .
        .byte   $73                             ; F3D8 73                       s
        .byte   $3B                             ; F3D9 3B                       ;
        .byte   $02                             ; F3DA 02                       .
        lda     $0D5F,y                         ; F3DB B9 5F 0D                 ._.
        rti                                     ; F3DE 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F3DF 03                       .
        adc     ($36),y                         ; F3E0 71 36                    q6
        adc     ($3D),y                         ; F3E2 71 3D                    q=
        .byte   $1B                             ; F3E4 1B                       .
        adc     ($37),y                         ; F3E5 71 37                    q7
        adc     ($3E),y                         ; F3E7 71 3E                    q>
        lda     $0D6B,y                         ; F3E9 B9 6B 0D                 .k.
        jsr     L3533                           ; F3EC 20 33 35                  35
        asl     a                               ; F3EF 0A                       .
        .byte   $03                             ; F3F0 03                       .
        adc     ($3B),y                         ; F3F1 71 3B                    q;
        adc     ($42),y                         ; F3F3 71 42                    qB
        .byte   $0B                             ; F3F5 0B                       .
        .byte   $73                             ; F3F6 73                       s
        .byte   $34                             ; F3F7 34                       4
        ora     ($73,x)                         ; F3F8 01 73                    .s
        .byte   $3B                             ; F3FA 3B                       ;
        ora     ($B9,x)                         ; F3FB 01 B9                    ..
        .byte   $77                             ; F3FD 77                       w
        ora     $0310                           ; F3FE 0D 10 03                 ...
        adc     ($36),y                         ; F401 71 36                    q6
        adc     ($3D),y                         ; F403 71 3D                    q=
        .byte   $0B                             ; F405 0B                       .
        adc     ($37),y                         ; F406 71 37                    q7
        adc     ($3E),y                         ; F408 71 3E                    q>
        lda     $0D6B,y                         ; F40A B9 6B 0D                 .k.
        jsr     L7103                           ; F40D 20 03 71                  .q
        .byte   $3B                             ; F410 3B                       ;
        adc     ($42),y                         ; F411 71 42                    qB
        .byte   $0B                             ; F413 0B                       .
        .byte   $73                             ; F414 73                       s
        .byte   $34                             ; F415 34                       4
        .byte   $02                             ; F416 02                       .
        .byte   $73                             ; F417 73                       s
        .byte   $3B                             ; F418 3B                       ;
        .byte   $02                             ; F419 02                       .
        lda     $0D5F,y                         ; F41A B9 5F 0D                 ._.
        rti                                     ; F41D 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F41E 03                       .
        adc     ($36),y                         ; F41F 71 36                    q6
        adc     ($3D),y                         ; F421 71 3D                    q=
        .byte   $0B                             ; F423 0B                       .
        adc     ($37),y                         ; F424 71 37                    q7
        adc     ($3E),y                         ; F426 71 3E                    q>
        lda     $0D6B,y                         ; F428 B9 6B 0D                 .k.
        jsr     L7103                           ; F42B 20 03 71                  .q
        .byte   $3B                             ; F42E 3B                       ;
        adc     ($42),y                         ; F42F 71 42                    qB
LF431:  .byte   $0B                             ; F431 0B                       .
        .byte   $73                             ; F432 73                       s
        .byte   $34                             ; F433 34                       4
        .byte   $03                             ; F434 03                       .
        .byte   $73                             ; F435 73                       s
        .byte   $3B                             ; F436 3B                       ;
        .byte   $03                             ; F437 03                       .
        lda     $0D77,y                         ; F438 B9 77 0D                 .w.
        bpl     LF440                           ; F43B 10 03                    ..
        adc     ($36),y                         ; F43D 71 36                    q6
        .byte   $71                             ; F43F 71                       q
LF440:  and     L710B,x                         ; F440 3D 0B 71                 =.q
        .byte   $37                             ; F443 37                       7
        adc     ($3E),y                         ; F444 71 3E                    q>
        lda     $0D6B,y                         ; F446 B9 6B 0D                 .k.
        jsr     L7103                           ; F449 20 03 71                  .q
        .byte   $3B                             ; F44C 3B                       ;
        adc     ($42),y                         ; F44D 71 42                    qB
        .byte   $0B                             ; F44F 0B                       .
        .byte   $73                             ; F450 73                       s
        .byte   $34                             ; F451 34                       4
        .byte   $02                             ; F452 02                       .
        .byte   $73                             ; F453 73                       s
        .byte   $3B                             ; F454 3B                       ;
        .byte   $02                             ; F455 02                       .
        lda     $0D5F,y                         ; F456 B9 5F 0D                 ._.
        rti                                     ; F459 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F45A 03                       .
        adc     ($36),y                         ; F45B 71 36                    q6
        adc     ($3D),y                         ; F45D 71 3D                    q=
        .byte   $0B                             ; F45F 0B                       .
        adc     ($37),y                         ; F460 71 37                    q7
        adc     ($3E),y                         ; F462 71 3E                    q>
        lda     $0D6B,y                         ; F464 B9 6B 0D                 .k.
        jsr     L7103                           ; F467 20 03 71                  .q
        .byte   $3B                             ; F46A 3B                       ;
        adc     ($42),y                         ; F46B 71 42                    qB
        .byte   $1F                             ; F46D 1F                       .
        .byte   $73                             ; F46E 73                       s
        .byte   $33                             ; F46F 33                       3
        ora     ($73,x)                         ; F470 01 73                    .s
        .byte   $3A                             ; F472 3A                       :
        ora     ($33,x)                         ; F473 01 33                    .3
        .byte   $27                             ; F475 27                       '
        bpl     LF431                           ; F476 10 B9                    ..
        .byte   $77                             ; F478 77                       w
        ora     $3110                           ; F479 0D 10 31                 ..1
        .byte   $34                             ; F47C 34                       4
        .byte   $03                             ; F47D 03                       .
        adc     (L0035),y                       ; F47E 71 35                    q5
        adc     ($3C),y                         ; F480 71 3C                    q<
        .byte   $0B                             ; F482 0B                       .
        adc     ($36),y                         ; F483 71 36                    q6
        adc     ($3D),y                         ; F485 71 3D                    q=
        lda     $0D6B,y                         ; F487 B9 6B 0D                 .k.
        jsr     L7103                           ; F48A 20 03 71                  .q
        .byte   $3A                             ; F48D 3A                       :
        adc     ($41),y                         ; F48E 71 41                    qA
        .byte   $0B                             ; F490 0B                       .
        .byte   $73                             ; F491 73                       s
        .byte   $33                             ; F492 33                       3
        .byte   $02                             ; F493 02                       .
        .byte   $73                             ; F494 73                       s
        .byte   $3A                             ; F495 3A                       :
        .byte   $02                             ; F496 02                       .
        lda     $0D5F,y                         ; F497 B9 5F 0D                 ._.
        rti                                     ; F49A 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F49B 03                       .
        adc     (L0035),y                       ; F49C 71 35                    q5
        adc     ($3C),y                         ; F49E 71 3C                    q<
        .byte   $0B                             ; F4A0 0B                       .
        adc     ($36),y                         ; F4A1 71 36                    q6
        adc     ($3D),y                         ; F4A3 71 3D                    q=
        lda     $0D6B,y                         ; F4A5 B9 6B 0D                 .k.
        jsr     L7103                           ; F4A8 20 03 71                  .q
        .byte   $3A                             ; F4AB 3A                       :
        adc     ($41),y                         ; F4AC 71 41                    qA
        .byte   $0F                             ; F4AE 0F                       .
        .byte   $73                             ; F4AF 73                       s
        .byte   $33                             ; F4B0 33                       3
        .byte   $03                             ; F4B1 03                       .
        .byte   $73                             ; F4B2 73                       s
        .byte   $3A                             ; F4B3 3A                       :
        .byte   $03                             ; F4B4 03                       .
        .byte   $33                             ; F4B5 33                       3
        .byte   $1B                             ; F4B6 1B                       .
        .byte   $04                             ; F4B7 04                       .
        lda     $0D77,y                         ; F4B8 B9 77 0D                 .w.
        bpl     LF4C0                           ; F4BB 10 03                    ..
        adc     (L0035),y                       ; F4BD 71 35                    q5
        .byte   $71                             ; F4BF 71                       q
LF4C0:  .byte   $3C                             ; F4C0 3C                       <
        .byte   $0B                             ; F4C1 0B                       .
        adc     ($36),y                         ; F4C2 71 36                    q6
        adc     ($3D),y                         ; F4C4 71 3D                    q=
        lda     $0D6B,y                         ; F4C6 B9 6B 0D                 .k.
        jsr     L7103                           ; F4C9 20 03 71                  .q
        .byte   $3A                             ; F4CC 3A                       :
        adc     ($41),y                         ; F4CD 71 41                    qA
        .byte   $0B                             ; F4CF 0B                       .
        .byte   $73                             ; F4D0 73                       s
        .byte   $33                             ; F4D1 33                       3
        .byte   $02                             ; F4D2 02                       .
        .byte   $73                             ; F4D3 73                       s
        .byte   $3A                             ; F4D4 3A                       :
        .byte   $02                             ; F4D5 02                       .
        lda     $0D5F,y                         ; F4D6 B9 5F 0D                 ._.
        rti                                     ; F4D9 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F4DA 03                       .
        adc     (L0035),y                       ; F4DB 71 35                    q5
        adc     ($3C),y                         ; F4DD 71 3C                    q<
        .byte   $0B                             ; F4DF 0B                       .
        adc     ($36),y                         ; F4E0 71 36                    q6
        adc     ($3D),y                         ; F4E2 71 3D                    q=
        lda     $0D6B,y                         ; F4E4 B9 6B 0D                 .k.
        jsr     L7103                           ; F4E7 20 03 71                  .q
        .byte   $3A                             ; F4EA 3A                       :
        adc     ($41),y                         ; F4EB 71 41                    qA
        .byte   $1B                             ; F4ED 1B                       .
        .byte   $73                             ; F4EE 73                       s
        .byte   $33                             ; F4EF 33                       3
        ora     ($73,x)                         ; F4F0 01 73                    .s
        .byte   $3A                             ; F4F2 3A                       :
        ora     ($B9,x)                         ; F4F3 01 B9                    ..
        .byte   $77                             ; F4F5 77                       w
        ora     $3310                           ; F4F6 0D 10 33                 ..3
        rol     $0307,x                         ; F4F9 3E 07 03                 >..
        adc     (L0035),y                       ; F4FC 71 35                    q5
        adc     ($3C),y                         ; F4FE 71 3C                    q<
        .byte   $0B                             ; F500 0B                       .
        adc     ($36),y                         ; F501 71 36                    q6
        adc     ($3D),y                         ; F503 71 3D                    q=
        lda     $0D6B,y                         ; F505 B9 6B 0D                 .k.
        jsr     L7103                           ; F508 20 03 71                  .q
        .byte   $3A                             ; F50B 3A                       :
        adc     ($41),y                         ; F50C 71 41                    qA
        .byte   $0B                             ; F50E 0B                       .
        .byte   $73                             ; F50F 73                       s
        .byte   $33                             ; F510 33                       3
        .byte   $02                             ; F511 02                       .
        .byte   $73                             ; F512 73                       s
        .byte   $3A                             ; F513 3A                       :
        .byte   $02                             ; F514 02                       .
        lda     $0D5F,y                         ; F515 B9 5F 0D                 ._.
        rti                                     ; F518 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F519 03                       .
        adc     (L0035),y                       ; F51A 71 35                    q5
        adc     ($3C),y                         ; F51C 71 3C                    q<
        .byte   $0B                             ; F51E 0B                       .
        adc     ($36),y                         ; F51F 71 36                    q6
        adc     ($3D),y                         ; F521 71 3D                    q=
        lda     $0D6B,y                         ; F523 B9 6B 0D                 .k.
        jsr     L7103                           ; F526 20 03 71                  .q
        .byte   $3A                             ; F529 3A                       :
        adc     ($41),y                         ; F52A 71 41                    qA
        .byte   $0B                             ; F52C 0B                       .
        .byte   $73                             ; F52D 73                       s
        .byte   $33                             ; F52E 33                       3
        .byte   $03                             ; F52F 03                       .
        .byte   $73                             ; F530 73                       s
        .byte   $3A                             ; F531 3A                       :
        .byte   $03                             ; F532 03                       .
        lda     $0D77,y                         ; F533 B9 77 0D                 .w.
        bpl     LF53B                           ; F536 10 03                    ..
        adc     (L0035),y                       ; F538 71 35                    q5
        .byte   $71                             ; F53A 71                       q
LF53B:  .byte   $3C                             ; F53B 3C                       <
        .byte   $0B                             ; F53C 0B                       .
        adc     ($36),y                         ; F53D 71 36                    q6
        adc     ($3D),y                         ; F53F 71 3D                    q=
        lda     $0D6B,y                         ; F541 B9 6B 0D                 .k.
        jsr     L7103                           ; F544 20 03 71                  .q
        .byte   $3A                             ; F547 3A                       :
        adc     ($41),y                         ; F548 71 41                    qA
        .byte   $0B                             ; F54A 0B                       .
        .byte   $73                             ; F54B 73                       s
        .byte   $33                             ; F54C 33                       3
        .byte   $02                             ; F54D 02                       .
        .byte   $73                             ; F54E 73                       s
        .byte   $3A                             ; F54F 3A                       :
        .byte   $02                             ; F550 02                       .
        lda     $0D5F,y                         ; F551 B9 5F 0D                 ._.
        rti                                     ; F554 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F555 03                       .
        adc     (L0035),y                       ; F556 71 35                    q5
        adc     ($3C),y                         ; F558 71 3C                    q<
        .byte   $0B                             ; F55A 0B                       .
        adc     ($36),y                         ; F55B 71 36                    q6
        adc     ($3D),y                         ; F55D 71 3D                    q=
        lda     $0D6B,y                         ; F55F B9 6B 0D                 .k.
        jsr     L7103                           ; F562 20 03 71                  .q
        .byte   $3A                             ; F565 3A                       :
        adc     ($41),y                         ; F566 71 41                    qA
        rti                                     ; F568 40                       @

; ----------------------------------------------------------------------------
        .byte   $1F                             ; F569 1F                       .
        .byte   $77                             ; F56A 77                       w
        and     ($01),y                         ; F56B 31 01                    1.
        bpl     LF5E6                           ; F56D 10 77                    .w
        sec                                     ; F56F 38                       8
        ora     ($10,x)                         ; F570 01 10                    ..
        .byte   $33                             ; F572 33                       3
        and     $10                             ; F573 25 10                    %.
        .byte   $BB                             ; F575 BB                       .
        .byte   $77                             ; F576 77                       w
        .byte   $17                             ; F577 17                       .
        ora     $3310                           ; F578 0D 10 33                 ..3
        .byte   $3C                             ; F57B 3C                       <
        .byte   $07                             ; F57C 07                       .
        .byte   $03                             ; F57D 03                       .
        adc     ($33),y                         ; F57E 71 33                    q3
        adc     ($3A),y                         ; F580 71 3A                    q:
        .byte   $0B                             ; F582 0B                       .
        adc     ($34),y                         ; F583 71 34                    q4
        adc     ($3B),y                         ; F585 71 3B                    q;
        lda     $0D6B,y                         ; F587 B9 6B 0D                 .k.
        jsr     L7103                           ; F58A 20 03 71                  .q
        sec                                     ; F58D 38                       8
        adc     ($3F),y                         ; F58E 71 3F                    q?
        .byte   $0B                             ; F590 0B                       .
        .byte   $73                             ; F591 73                       s
        and     ($02),y                         ; F592 31 02                    1.
        .byte   $73                             ; F594 73                       s
        sec                                     ; F595 38                       8
        .byte   $02                             ; F596 02                       .
        lda     $0D5F,y                         ; F597 B9 5F 0D                 ._.
        rti                                     ; F59A 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F59B 03                       .
        adc     ($33),y                         ; F59C 71 33                    q3
        adc     ($3A),y                         ; F59E 71 3A                    q:
        .byte   $0B                             ; F5A0 0B                       .
        adc     ($34),y                         ; F5A1 71 34                    q4
        adc     ($3B),y                         ; F5A3 71 3B                    q;
        lda     $0D6B,y                         ; F5A5 B9 6B 0D                 .k.
        jsr     L7103                           ; F5A8 20 03 71                  .q
        sec                                     ; F5AB 38                       8
        adc     ($3F),y                         ; F5AC 71 3F                    q?
        .byte   $0F                             ; F5AE 0F                       .
        .byte   $73                             ; F5AF 73                       s
        and     ($03),y                         ; F5B0 31 03                    1.
        .byte   $73                             ; F5B2 73                       s
        sec                                     ; F5B3 38                       8
        .byte   $03                             ; F5B4 03                       .
        .byte   $33                             ; F5B5 33                       3
        ora     $B904,y                         ; F5B6 19 04 B9                 ...
        .byte   $77                             ; F5B9 77                       w
        ora     $0310                           ; F5BA 0D 10 03                 ...
        adc     ($33),y                         ; F5BD 71 33                    q3
        adc     ($3A),y                         ; F5BF 71 3A                    q:
        .byte   $0B                             ; F5C1 0B                       .
        adc     ($34),y                         ; F5C2 71 34                    q4
        adc     ($3B),y                         ; F5C4 71 3B                    q;
        lda     $0D6B,y                         ; F5C6 B9 6B 0D                 .k.
        jsr     L7103                           ; F5C9 20 03 71                  .q
        sec                                     ; F5CC 38                       8
        adc     ($3F),y                         ; F5CD 71 3F                    q?
        .byte   $0B                             ; F5CF 0B                       .
        .byte   $73                             ; F5D0 73                       s
        and     ($02),y                         ; F5D1 31 02                    1.
        .byte   $73                             ; F5D3 73                       s
        sec                                     ; F5D4 38                       8
        .byte   $02                             ; F5D5 02                       .
        lda     $0D5F,y                         ; F5D6 B9 5F 0D                 ._.
        rti                                     ; F5D9 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F5DA 03                       .
        adc     ($33),y                         ; F5DB 71 33                    q3
        adc     ($3A),y                         ; F5DD 71 3A                    q:
        .byte   $0B                             ; F5DF 0B                       .
        adc     ($34),y                         ; F5E0 71 34                    q4
        adc     ($3B),y                         ; F5E2 71 3B                    q;
        .byte   $B9                             ; F5E4 B9                       .
        .byte   $6B                             ; F5E5 6B                       k
LF5E6:  ora     $0320                           ; F5E6 0D 20 03                 . .
        adc     ($38),y                         ; F5E9 71 38                    q8
        adc     ($3F),y                         ; F5EB 71 3F                    q?
        .byte   $0B                             ; F5ED 0B                       .
        .byte   $73                             ; F5EE 73                       s
        and     ($01),y                         ; F5EF 31 01                    1.
        .byte   $73                             ; F5F1 73                       s
        sec                                     ; F5F2 38                       8
        ora     ($B9,x)                         ; F5F3 01 B9                    ..
        .byte   $77                             ; F5F5 77                       w
        ora     $0310                           ; F5F6 0D 10 03                 ...
        adc     ($33),y                         ; F5F9 71 33                    q3
        adc     ($3A),y                         ; F5FB 71 3A                    q:
        .byte   $0B                             ; F5FD 0B                       .
        adc     ($34),y                         ; F5FE 71 34                    q4
        adc     ($3B),y                         ; F600 71 3B                    q;
        lda     $0D6B,y                         ; F602 B9 6B 0D                 .k.
        jsr     L7103                           ; F605 20 03 71                  .q
        sec                                     ; F608 38                       8
        adc     ($3F),y                         ; F609 71 3F                    q?
        .byte   $0B                             ; F60B 0B                       .
        .byte   $73                             ; F60C 73                       s
        and     ($02),y                         ; F60D 31 02                    1.
        .byte   $73                             ; F60F 73                       s
        sec                                     ; F610 38                       8
        .byte   $02                             ; F611 02                       .
        lda     $0D5F,y                         ; F612 B9 5F 0D                 ._.
        rti                                     ; F615 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F616 03                       .
        adc     ($33),y                         ; F617 71 33                    q3
        adc     ($3A),y                         ; F619 71 3A                    q:
        .byte   $0B                             ; F61B 0B                       .
        adc     ($34),y                         ; F61C 71 34                    q4
        adc     ($3B),y                         ; F61E 71 3B                    q;
        lda     $0D6B,y                         ; F620 B9 6B 0D                 .k.
        jsr     L7103                           ; F623 20 03 71                  .q
        sec                                     ; F626 38                       8
        adc     ($3F),y                         ; F627 71 3F                    q?
        .byte   $0B                             ; F629 0B                       .
        .byte   $73                             ; F62A 73                       s
        and     ($03),y                         ; F62B 31 03                    1.
        .byte   $73                             ; F62D 73                       s
        sec                                     ; F62E 38                       8
        .byte   $03                             ; F62F 03                       .
        lda     $0D77,y                         ; F630 B9 77 0D                 .w.
        bpl     LF638                           ; F633 10 03                    ..
        adc     ($33),y                         ; F635 71 33                    q3
        .byte   $71                             ; F637 71                       q
LF638:  .byte   $3A                             ; F638 3A                       :
        .byte   $0B                             ; F639 0B                       .
        adc     ($34),y                         ; F63A 71 34                    q4
        adc     ($3B),y                         ; F63C 71 3B                    q;
        lda     $0D6B,y                         ; F63E B9 6B 0D                 .k.
        jsr     L7103                           ; F641 20 03 71                  .q
        sec                                     ; F644 38                       8
        adc     ($3F),y                         ; F645 71 3F                    q?
        .byte   $0B                             ; F647 0B                       .
        .byte   $73                             ; F648 73                       s
        and     ($02),y                         ; F649 31 02                    1.
        .byte   $73                             ; F64B 73                       s
        sec                                     ; F64C 38                       8
        .byte   $02                             ; F64D 02                       .
        lda     $0D5F,y                         ; F64E B9 5F 0D                 ._.
        rti                                     ; F651 40                       @

; ----------------------------------------------------------------------------
        .byte   $03                             ; F652 03                       .
        adc     ($33),y                         ; F653 71 33                    q3
        adc     ($3A),y                         ; F655 71 3A                    q:
        .byte   $0B                             ; F657 0B                       .
        adc     ($34),y                         ; F658 71 34                    q4
        adc     ($3B),y                         ; F65A 71 3B                    q;
        lda     $0D6B,y                         ; F65C B9 6B 0D                 .k.
        jsr     L7103                           ; F65F 20 03 71                  .q
        sec                                     ; F662 38                       8
        adc     ($3F),y                         ; F663 71 3F                    q?
        .byte   $1F                             ; F665 1F                       .
        .byte   $33                             ; F666 33                       3
        eor     $7313,y                         ; F667 59 13 73                 Y.s
        and     $3101,x                         ; F66A 3D 01 31                 =.1
        and     $B9                             ; F66D 25 B9                    %.
        .byte   $77                             ; F66F 77                       w
        ora     $3110                           ; F670 0D 10 31                 ..1
        and     L7106,y                         ; F673 39 06 71                 9.q
        .byte   $3F                             ; F676 3F                       ?
        ora     ($FE),y                         ; F677 11 FE                    ..
        .byte   $0F                             ; F679 0F                       .
        and     ($55),y                         ; F67A 31 55                    1U
        adc     ($41),y                         ; F67C 71 41                    qA
        and     ($25),y                         ; F67E 31 25                    1%
        lda     $0D6B,y                         ; F680 B9 6B 0D                 .k.
        jsr     L7106                           ; F683 20 06 71                  .q
        .byte   $44                             ; F686 44                       D
        ora     ($FE),y                         ; F687 11 FE                    ..
        .byte   $0F                             ; F689 0F                       .
        and     ($54),y                         ; F68A 31 54                    1T
        .byte   $73                             ; F68C 73                       s
        and     $3102,x                         ; F68D 3D 02 31                 =.1
        and     ($B9),y                         ; F690 31 B9                    1.
        .byte   $5F                             ; F692 5F                       _
        ora     $0640                           ; F693 0D 40 06                 .@.
        adc     ($3F),y                         ; F696 71 3F                    q?
        ora     ($FE),y                         ; F698 11 FE                    ..
        .byte   $0F                             ; F69A 0F                       .
        and     ($55),y                         ; F69B 31 55                    1U
        adc     ($41),y                         ; F69D 71 41                    qA
        and     ($25),y                         ; F69F 31 25                    1%
        lda     $0D6B,y                         ; F6A1 B9 6B 0D                 .k.
        jsr     L7106                           ; F6A4 20 06 71                  .q
        .byte   $44                             ; F6A7 44                       D
        ora     ($FE),y                         ; F6A8 11 FE                    ..
        .byte   $0F                             ; F6AA 0F                       .
        and     ($54),y                         ; F6AB 31 54                    1T
        .byte   $73                             ; F6AD 73                       s
        and     $3103,x                         ; F6AE 3D 03 31                 =.1
        and     $B9                             ; F6B1 25 B9                    %.
        .byte   $77                             ; F6B3 77                       w
        ora     $0610                           ; F6B4 0D 10 06                 ...
        adc     ($3F),y                         ; F6B7 71 3F                    q?
        ora     ($FE),y                         ; F6B9 11 FE                    ..
        .byte   $0F                             ; F6BB 0F                       .
        and     ($50),y                         ; F6BC 31 50                    1P
        adc     ($41),y                         ; F6BE 71 41                    qA
        and     ($31),y                         ; F6C0 31 31                    11
        lda     $0D6B,y                         ; F6C2 B9 6B 0D                 .k.
        jsr     L7106                           ; F6C5 20 06 71                  .q
        .byte   $44                             ; F6C8 44                       D
        ora     ($FE),y                         ; F6C9 11 FE                    ..
        .byte   $0F                             ; F6CB 0F                       .
        and     ($4D),y                         ; F6CC 31 4D                    1M
        .byte   $73                             ; F6CE 73                       s
        and     $3102,x                         ; F6CF 3D 02 31                 =.1
        and     $B9                             ; F6D2 25 B9                    %.
        .byte   $5F                             ; F6D4 5F                       _
        ora     $0640                           ; F6D5 0D 40 06                 .@.
        adc     ($3F),y                         ; F6D8 71 3F                    q?
        ora     ($FE),y                         ; F6DA 11 FE                    ..
        .byte   $0F                             ; F6DC 0F                       .
        and     ($50),y                         ; F6DD 31 50                    1P
        adc     ($41),y                         ; F6DF 71 41                    qA
        and     ($25),y                         ; F6E1 31 25                    1%
        lda     $0D6B,y                         ; F6E3 B9 6B 0D                 .k.
        jsr     L7106                           ; F6E6 20 06 71                  .q
        .byte   $44                             ; F6E9 44                       D
        ora     ($FE),y                         ; F6EA 11 FE                    ..
        .byte   $1F                             ; F6EC 1F                       .
        and     ($59),y                         ; F6ED 31 59                    1Y
        .byte   $73                             ; F6EF 73                       s
        and     $3101,x                         ; F6F0 3D 01 31                 =.1
        and     ($B9),y                         ; F6F3 31 B9                    1.
        .byte   $77                             ; F6F5 77                       w
        ora     $3110                           ; F6F6 0D 10 31                 ..1
        eor     ($06,x)                         ; F6F9 41 06                    A.
        adc     ($3F),y                         ; F6FB 71 3F                    q?
        ora     ($FE),y                         ; F6FD 11 FE                    ..
        .byte   $0F                             ; F6FF 0F                       .
        and     ($55),y                         ; F700 31 55                    1U
        adc     ($41),y                         ; F702 71 41                    qA
        and     ($25),y                         ; F704 31 25                    1%
        lda     $0D6B,y                         ; F706 B9 6B 0D                 .k.
        jsr     L7106                           ; F709 20 06 71                  .q
        .byte   $44                             ; F70C 44                       D
        ora     ($FE),y                         ; F70D 11 FE                    ..
        .byte   $0F                             ; F70F 0F                       .
        and     ($54),y                         ; F710 31 54                    1T
        .byte   $73                             ; F712 73                       s
        .byte   $3D                             ; F713 3D                       =
LF714:  .byte   $02                             ; F714 02                       .
        and     ($31),y                         ; F715 31 31                    11
        lda     $0D5F,y                         ; F717 B9 5F 0D                 ._.
        rti                                     ; F71A 40                       @

; ----------------------------------------------------------------------------
        asl     $71                             ; F71B 06 71                    .q
        .byte   $3F                             ; F71D 3F                       ?
        ora     ($FE),y                         ; F71E 11 FE                    ..
        .byte   $0F                             ; F720 0F                       .
        and     ($55),y                         ; F721 31 55                    1U
        adc     ($41),y                         ; F723 71 41                    qA
        and     ($3D),y                         ; F725 31 3D                    1=
        lda     $0D6B,y                         ; F727 B9 6B 0D                 .k.
        jsr     L7106                           ; F72A 20 06 71                  .q
        .byte   $44                             ; F72D 44                       D
        ora     ($FE),y                         ; F72E 11 FE                    ..
        .byte   $0F                             ; F730 0F                       .
        and     ($54),y                         ; F731 31 54                    1T
        .byte   $73                             ; F733 73                       s
        and     $3103,x                         ; F734 3D 03 31                 =.1
        eor     #$B9                            ; F737 49 B9                    I.
        .byte   $77                             ; F739 77                       w
        ora     $0610                           ; F73A 0D 10 06                 ...
        adc     ($3F),y                         ; F73D 71 3F                    q?
        ora     ($FE),y                         ; F73F 11 FE                    ..
        .byte   $0F                             ; F741 0F                       .
LF742:  and     ($50),y                         ; F742 31 50                    1P
        adc     ($41),y                         ; F744 71 41                    qA
        and     ($55),y                         ; F746 31 55                    1U
        .byte   $B9                             ; F748 B9                       .
        .byte   $6B                             ; F749 6B                       k
LF74A:  ora     $0620                           ; F74A 0D 20 06                 . .
        adc     ($44),y                         ; F74D 71 44                    qD
        ora     ($FE),y                         ; F74F 11 FE                    ..
        .byte   $0F                             ; F751 0F                       .
        .byte   $31                             ; F752 31                       1
LF753:  eor     $3D73                           ; F753 4D 73 3D                 Ms=
        .byte   $02                             ; F756 02                       .
        and     ($49),y                         ; F757 31 49                    1I
        lda     $0D5F,y                         ; F759 B9 5F 0D                 ._.
        rti                                     ; F75C 40                       @

; ----------------------------------------------------------------------------
        asl     $71                             ; F75D 06 71                    .q
        .byte   $3F                             ; F75F 3F                       ?
        ora     ($FE),y                         ; F760 11 FE                    ..
LF762:  .byte   $0F                             ; F762 0F                       .
        and     ($50),y                         ; F763 31 50                    1P
        adc     ($41),y                         ; F765 71 41                    qA
        and     ($3D),y                         ; F767 31 3D                    1=
        lda     $0D6B,y                         ; F769 B9 6B 0D                 .k.
        jsr     L7106                           ; F76C 20 06 71                  .q
        .byte   $44                             ; F76F 44                       D
        ora     ($FE),y                         ; F770 11 FE                    ..
        rti                                     ; F772 40                       @

; ----------------------------------------------------------------------------
        .byte   $1F                             ; F773 1F                       .
LF774:  .byte   $FF                             ; F774 FF                       .
        .byte   $2F                             ; F775 2F                       /
        brk                                     ; F776 00                       .
        jsr     L0701                           ; F777 20 01 07                  ..
        .byte   $77                             ; F77A 77                       w
        plp                                     ; F77B 28                       (
LF77C:  brk                                     ; F77C 00                       .
        jsr     L2833                           ; F77D 20 33 28                  3(
        .byte   $04                             ; F780 04                       .
        .byte   $77                             ; F781 77                       w
        .byte   $17                             ; F782 17                       .
        ora     #$20                            ; F783 09 20                    . 
LF785:  .byte   $33                             ; F785 33                       3
        eor     ($0A,x)                         ; F786 41 0A                    A.
        clc                                     ; F788 18                       .
        .byte   $74                             ; F789 74                       t
        bpl     LF714                           ; F78A 10 88                    ..
        .byte   $13                             ; F78C 13                       .
        .byte   $C3                             ; F78D C3                       .
        clc                                     ; F78E 18                       .
        adc     $23,x                           ; F78F 75 23                    u#
        jsr     L35B9                           ; F791 20 B9 35                  .5
LF794:  .byte   $13                             ; F794 13                       .
        brk                                     ; F795 00                       .
        clc                                     ; F796 18                       .
        .byte   $74                             ; F797 74                       t
        bpl     LF74A                           ; F798 10 B0                    ..
        clc                                     ; F79A 18                       .
        adc     $2F,x                           ; F79B 75 2F                    u/
        jsr     L18B0                           ; F79D 20 B0 18                  ..
        .byte   $74                             ; F7A0 74                       t
        bpl     LF753                           ; F7A1 10 B0                    ..
        .byte   $1B                             ; F7A3 1B                       .
        .byte   $44                             ; F7A4 44                       D
        .byte   $10                             ; F7A5 10                       .
LF7A6:  .byte   $44                             ; F7A6 44                       D
        bpl     LF81E                           ; F7A7 10 75                    .u
        .byte   $3B                             ; F7A9 3B                       ;
        jsr     L41B1                           ; F7AA 20 B1 41                  .A
        clc                                     ; F7AD 18                       .
LF7AE:  .byte   $74                             ; F7AE 74                       t
        bpl     LF762                           ; F7AF 10 B1                    ..
        and     $1B,x                           ; F7B1 35 1B                    5.
        adc     $31,x                           ; F7B3 75 31                    u1
        .byte   $20                             ; F7B5 20                        
        .byte   $75                             ; F7B6 75                       u
LF7B7:  rol     a                               ; F7B7 2A                       *
        jsr     L4775                           ; F7B8 20 75 47                  uG
        jsr     L4131                           ; F7BB 20 31 41                  1A
        clc                                     ; F7BE 18                       .
        .byte   $74                             ; F7BF 74                       t
        bpl     LF742                           ; F7C0 10 80                    ..
        clc                                     ; F7C2 18                       .
        adc     $3B,x                           ; F7C3 75 3B                    u;
        .byte   $20                             ; F7C5 20                        
LF7C6:  lda     (L0035),y                       ; F7C6 B1 35                    .5
        clc                                     ; F7C8 18                       .
        .byte   $74                             ; F7C9 74                       t
        bpl     LF77C                           ; F7CA 10 B0                    ..
        clc                                     ; F7CC 18                       .
        adc     $2F,x                           ; F7CD 75 2F                    u/
        jsr     L18B0                           ; F7CF 20 B0 18                  ..
        .byte   $74                             ; F7D2 74                       t
        bpl     LF785                           ; F7D3 10 B0                    ..
        .byte   $1B                             ; F7D5 1B                       .
        .byte   $44                             ; F7D6 44                       D
        .byte   $10                             ; F7D7 10                       .
LF7D8:  .byte   $44                             ; F7D8 44                       D
        bpl     LF850                           ; F7D9 10 75                    .u
        .byte   $23                             ; F7DB 23                       #
        jsr     L41B1                           ; F7DC 20 B1 41                  .A
        clc                                     ; F7DF 18                       .
LF7E0:  .byte   $74                             ; F7E0 74                       t
        bpl     LF794                           ; F7E1 10 B1                    ..
        and     $1B,x                           ; F7E3 35 1B                    5.
        adc     $32,x                           ; F7E5 75 32                    u2
        .byte   $20                             ; F7E7 20                        
        .byte   $75                             ; F7E8 75                       u
LF7E9:  .byte   $2B                             ; F7E9 2B                       +
        .byte   $20                             ; F7EA 20                        
LF7EB:  adc     $17,x                           ; F7EB 75 17                    u.
        jsr     L4131                           ; F7ED 20 31 41                  1A
        clc                                     ; F7F0 18                       .
        .byte   $74                             ; F7F1 74                       t
        bpl     LF774                           ; F7F2 10 80                    ..
        clc                                     ; F7F4 18                       .
        adc     $23,x                           ; F7F5 75 23                    u#
        .byte   $20                             ; F7F7 20                        
LF7F8:  lda     (L0035),y                       ; F7F8 B1 35                    .5
        clc                                     ; F7FA 18                       .
        .byte   $74                             ; F7FB 74                       t
        bpl     LF7AE                           ; F7FC 10 B0                    ..
        clc                                     ; F7FE 18                       .
        adc     $2F,x                           ; F7FF 75 2F                    u/
        jsr     L18B0                           ; F801 20 B0 18                  ..
        .byte   $74                             ; F804 74                       t
        bpl     LF7B7                           ; F805 10 B0                    ..
        .byte   $1B                             ; F807 1B                       .
        .byte   $44                             ; F808 44                       D
        .byte   $10                             ; F809 10                       .
LF80A:  .byte   $44                             ; F80A 44                       D
        bpl     LF882                           ; F80B 10 75                    .u
        .byte   $3B                             ; F80D 3B                       ;
        jsr     L41B1                           ; F80E 20 B1 41                  .A
        clc                                     ; F811 18                       .
LF812:  .byte   $74                             ; F812 74                       t
        bpl     LF7C6                           ; F813 10 B1                    ..
        and     $1B,x                           ; F815 35 1B                    5.
        adc     $31,x                           ; F817 75 31                    u1
        .byte   $20                             ; F819 20                        
        .byte   $75                             ; F81A 75                       u
LF81B:  rol     a                               ; F81B 2A                       *
        .byte   $20                             ; F81C 20                        
LF81D:  .byte   $75                             ; F81D 75                       u
LF81E:  .byte   $47                             ; F81E 47                       G
        jsr     L4131                           ; F81F 20 31 41                  1A
        clc                                     ; F822 18                       .
        .byte   $74                             ; F823 74                       t
        bpl     LF7A6                           ; F824 10 80                    ..
        clc                                     ; F826 18                       .
        adc     $3B,x                           ; F827 75 3B                    u;
        .byte   $20                             ; F829 20                        
LF82A:  lda     (L0035),y                       ; F82A B1 35                    .5
        clc                                     ; F82C 18                       .
        .byte   $74                             ; F82D 74                       t
        bpl     LF7E0                           ; F82E 10 B0                    ..
        clc                                     ; F830 18                       .
        adc     $2F,x                           ; F831 75 2F                    u/
        jsr     L18B0                           ; F833 20 B0 18                  ..
        .byte   $74                             ; F836 74                       t
        bpl     LF7E9                           ; F837 10 B0                    ..
        .byte   $1B                             ; F839 1B                       .
        .byte   $44                             ; F83A 44                       D
        .byte   $10                             ; F83B 10                       .
LF83C:  .byte   $44                             ; F83C 44                       D
        bpl     LF8B4                           ; F83D 10 75                    .u
        .byte   $23                             ; F83F 23                       #
        jsr     L41B1                           ; F840 20 B1 41                  .A
        clc                                     ; F843 18                       .
LF844:  .byte   $74                             ; F844 74                       t
        bpl     LF7F8                           ; F845 10 B1                    ..
        and     $1B,x                           ; F847 35 1B                    5.
        adc     $32,x                           ; F849 75 32                    u2
        .byte   $20                             ; F84B 20                        
        .byte   $75                             ; F84C 75                       u
LF84D:  .byte   $2B                             ; F84D 2B                       +
        .byte   $20                             ; F84E 20                        
LF84F:  .byte   $75                             ; F84F 75                       u
LF850:  .byte   $17                             ; F850 17                       .
        jsr     L4131                           ; F851 20 31 41                  1A
        clc                                     ; F854 18                       .
        .byte   $74                             ; F855 74                       t
        bpl     LF7D8                           ; F856 10 80                    ..
        clc                                     ; F858 18                       .
        adc     $23,x                           ; F859 75 23                    u#
        .byte   $20                             ; F85B 20                        
LF85C:  lda     (L0035),y                       ; F85C B1 35                    .5
        clc                                     ; F85E 18                       .
        .byte   $74                             ; F85F 74                       t
        bpl     LF812                           ; F860 10 B0                    ..
        clc                                     ; F862 18                       .
        adc     $2F,x                           ; F863 75 2F                    u/
        jsr     L18B0                           ; F865 20 B0 18                  ..
        .byte   $74                             ; F868 74                       t
        .byte   $10                             ; F869 10                       .
LF86A:  bcs     $F887                           ; F86A B0 1B                    ..
        .byte   $44                             ; F86C 44                       D
        bpl     LF8B3                           ; F86D 10 44                    .D
        bpl     LF8E6                           ; F86F 10 75                    .u
        .byte   $3B                             ; F871 3B                       ;
        jsr     L41B1                           ; F872 20 B1 41                  .A
LF875:  clc                                     ; F875 18                       .
        .byte   $74                             ; F876 74                       t
        bpl     LF82A                           ; F877 10 B1                    ..
        and     $1B,x                           ; F879 35 1B                    5.
        adc     $34,x                           ; F87B 75 34                    u4
        .byte   $20                             ; F87D 20                        
LF87E:  adc     $2D,x                           ; F87E 75 2D                    u-
        .byte   $20                             ; F880 20                        
LF881:  .byte   $75                             ; F881 75                       u
LF882:  .byte   $47                             ; F882 47                       G
        jsr     L4131                           ; F883 20 31 41                  1A
        clc                                     ; F886 18                       .
        .byte   $74                             ; F887 74                       t
        bpl     LF80A                           ; F888 10 80                    ..
        clc                                     ; F88A 18                       .
LF88B:  adc     $3B,x                           ; F88B 75 3B                    u;
        jsr     L35B1                           ; F88D 20 B1 35                  .5
        clc                                     ; F890 18                       .
        .byte   $74                             ; F891 74                       t
        bpl     LF844                           ; F892 10 B0                    ..
        clc                                     ; F894 18                       .
        adc     $2F,x                           ; F895 75 2F                    u/
        jsr     L18B0                           ; F897 20 B0 18                  ..
        .byte   $74                             ; F89A 74                       t
        bpl     LF84D                           ; F89B 10 B0                    ..
        .byte   $1B                             ; F89D 1B                       .
        .byte   $44                             ; F89E 44                       D
        bpl     LF8E5                           ; F89F 10 44                    .D
        bpl     LF918                           ; F8A1 10 75                    .u
LF8A3:  .byte   $23                             ; F8A3 23                       #
        jsr     L41B1                           ; F8A4 20 B1 41                  .A
        clc                                     ; F8A7 18                       .
        .byte   $74                             ; F8A8 74                       t
        bpl     LF85C                           ; F8A9 10 B1                    ..
        .byte   $35                             ; F8AB 35                       5
LF8AC:  .byte   $1B                             ; F8AC 1B                       .
        adc     $36,x                           ; F8AD 75 36                    u6
        jsr     L2F75                           ; F8AF 20 75 2F                  u/
        .byte   $20                             ; F8B2 20                        
LF8B3:  .byte   $75                             ; F8B3 75                       u
LF8B4:  .byte   $17                             ; F8B4 17                       .
        jsr     L4131                           ; F8B5 20 31 41                  1A
        clc                                     ; F8B8 18                       .
LF8B9:  .byte   $74                             ; F8B9 74                       t
        bpl     LF83C                           ; F8BA 10 80                    ..
        clc                                     ; F8BC 18                       .
        adc     $23,x                           ; F8BD 75 23                    u#
        jsr     L18B0                           ; F8BF 20 B0 18                  ..
        .byte   $74                             ; F8C2 74                       t
        bpl     LF875                           ; F8C3 10 B0                    ..
        clc                                     ; F8C5 18                       .
        adc     $2F,x                           ; F8C6 75 2F                    u/
        jsr     L18B0                           ; F8C8 20 B0 18                  ..
        .byte   $74                             ; F8CB 74                       t
        bpl     LF87E                           ; F8CC 10 B0                    ..
        .byte   $1B                             ; F8CE 1B                       .
        .byte   $44                             ; F8CF 44                       D
        bpl     LF916                           ; F8D0 10 44                    .D
        bpl     LF949                           ; F8D2 10 75                    .u
        .byte   $3B                             ; F8D4 3B                       ;
        jsr     L18B0                           ; F8D5 20 B0 18                  ..
        .byte   $74                             ; F8D8 74                       t
        bpl     LF88B                           ; F8D9 10 B0                    ..
        .byte   $1B                             ; F8DB 1B                       .
        adc     $39,x                           ; F8DC 75 39                    u9
        jsr     L3275                           ; F8DE 20 75 32                  u2
        jsr     L4775                           ; F8E1 20 75 47                  uG
LF8E4:  .byte   $20                             ; F8E4 20                        
LF8E5:  .byte   $30                             ; F8E5 30                       0
LF8E6:  clc                                     ; F8E6 18                       .
        .byte   $74                             ; F8E7 74                       t
        bpl     LF86A                           ; F8E8 10 80                    ..
        clc                                     ; F8EA 18                       .
        adc     $3B,x                           ; F8EB 75 3B                    u;
        jsr     L18B0                           ; F8ED 20 B0 18                  ..
        .byte   $74                             ; F8F0 74                       t
        bpl     LF8A3                           ; F8F1 10 B0                    ..
        clc                                     ; F8F3 18                       .
        adc     $2F,x                           ; F8F4 75 2F                    u/
        jsr     L18B0                           ; F8F6 20 B0 18                  ..
        .byte   $74                             ; F8F9 74                       t
        bpl     LF8AC                           ; F8FA 10 B0                    ..
        .byte   $1B                             ; F8FC 1B                       .
        .byte   $44                             ; F8FD 44                       D
        .byte   $10                             ; F8FE 10                       .
LF8FF:  .byte   $44                             ; F8FF 44                       D
        bpl     LF977                           ; F900 10 75                    .u
        .byte   $23                             ; F902 23                       #
        jsr     L18B0                           ; F903 20 B0 18                  ..
        .byte   $74                             ; F906 74                       t
        bpl     LF8B9                           ; F907 10 B0                    ..
        rti                                     ; F909 40                       @

; ----------------------------------------------------------------------------
        .byte   $1F                             ; F90A 1F                       .
LF90B:  .byte   $77                             ; F90B 77                       w
        .byte   $64                             ; F90C 64                       d
        ora     ($10,x)                         ; F90D 01 10                    ..
        .byte   $77                             ; F90F 77                       w
        rol     a                               ; F910 2A                       *
        ora     ($10,x)                         ; F911 01 10                    ..
        .byte   $33                             ; F913 33                       3
        .byte   $1E                             ; F914 1E                       .
        .byte   $04                             ; F915 04                       .
LF916:  .byte   $77                             ; F916 77                       w
        .byte   $17                             ; F917 17                       .
LF918:  ora     #$20                            ; F918 09 20                    . 
        .byte   $BB                             ; F91A BB                       .
        eor     $08                             ; F91B 45 08                    E.
        ora     ($03,x)                         ; F91D 01 03                    ..
        ora     ($75),y                         ; F91F 11 75                    .u
        adc     ($04,x)                         ; F921 61 04                    a.
        dey                                     ; F923 88                       .
        ora     ($04,x)                         ; F924 01 04                    ..
        .byte   $1F                             ; F926 1F                       .
        adc     $5D,x                           ; F927 75 5D                    u]
        php                                     ; F929 08                       .
        adc     ($2F),y                         ; F92A 71 2F                    q/
        and     ($23),y                         ; F92C 31 23                    1#
        .byte   $74                             ; F92E 74                       t
        .byte   $10                             ; F92F 10                       .
LF930:  dey                                     ; F930 88                       .
        ora     ($03,x)                         ; F931 01 03                    ..
        ora     ($75),y                         ; F933 11 75                    .u
        .byte   $5C                             ; F935 5C                       \
        .byte   $0C                             ; F936 0C                       .
        dey                                     ; F937 88                       .
        ora     ($04,x)                         ; F938 01 04                    ..
        .byte   $1F                             ; F93A 1F                       .
        adc     $5A,x                           ; F93B 75 5A                    uZ
        bpl     LF9B0                           ; F93D 10 71                    .q
        and     ($31),y                         ; F93F 31 31                    11
        and     $75                             ; F941 25 75                    %u
        .byte   $23                             ; F943 23                       #
LF944:  jsr     L41BB                           ; F944 20 BB 41                  .A
        .byte   $07                             ; F947 07                       .
        .byte   $01                             ; F948 01                       .
LF949:  .byte   $03                             ; F949 03                       .
        ora     ($75),y                         ; F94A 11 75                    .u
        cli                                     ; F94C 58                       X
        .byte   $04                             ; F94D 04                       .
        dey                                     ; F94E 88                       .
        ora     ($04,x)                         ; F94F 01 04                    ..
        .byte   $1F                             ; F951 1F                       .
        adc     $57,x                           ; F952 75 57                    uW
        php                                     ; F954 08                       .
        adc     ($34),y                         ; F955 71 34                    q4
LF957:  and     ($28),y                         ; F957 31 28                    1(
        .byte   $74                             ; F959 74                       t
        bpl     LF8E4                           ; F95A 10 88                    ..
        ora     ($03,x)                         ; F95C 01 03                    ..
        ora     ($75),y                         ; F95E 11 75                    .u
        .byte   $53                             ; F960 53                       S
        .byte   $0C                             ; F961 0C                       .
        dey                                     ; F962 88                       .
        ora     ($04,x)                         ; F963 01 04                    ..
        .byte   $1F                             ; F965 1F                       .
        adc     $51,x                           ; F966 75 51                    uQ
        bpl     LF9DB                           ; F968 10 71                    .q
        sec                                     ; F96A 38                       8
        and     ($34),y                         ; F96B 31 34                    14
        adc     $2F,x                           ; F96D 75 2F                    u/
        jsr     L0188                           ; F96F 20 88 01                  ..
        .byte   $03                             ; F972 03                       .
        ora     ($71),y                         ; F973 11 71                    .q
        bvc     LF8FF                           ; F975 50 88                    P.
LF977:  ora     ($04,x)                         ; F977 01 04                    ..
        .byte   $1F                             ; F979 1F                       .
        adc     ($4E),y                         ; F97A 71 4E                    qN
        adc     ($39),y                         ; F97C 71 39                    q9
        and     ($31),y                         ; F97E 31 31                    11
LF980:  .byte   $74                             ; F980 74                       t
        bpl     LF90B                           ; F981 10 88                    ..
        ora     ($03,x)                         ; F983 01 03                    ..
        ora     ($71),y                         ; F985 11 71                    .q
        eor     #$88                            ; F987 49 88                    I.
        ora     ($04,x)                         ; F989 01 04                    ..
        .byte   $1F                             ; F98B 1F                       .
        adc     ($4C),y                         ; F98C 71 4C                    qL
        adc     ($38),y                         ; F98E 71 38                    q8
        and     ($2F),y                         ; F990 31 2F                    1/
        adc     $3B,x                           ; F992 75 3B                    u;
        jsr     L0188                           ; F994 20 88 01                  ..
        .byte   $03                             ; F997 03                       .
        ora     ($71),y                         ; F998 11 71                    .q
        .byte   $4B                             ; F99A 4B                       K
LF99B:  dey                                     ; F99B 88                       .
        ora     ($04,x)                         ; F99C 01 04                    ..
        .byte   $1F                             ; F99E 1F                       .
        adc     ($47),y                         ; F99F 71 47                    qG
        adc     ($34),y                         ; F9A1 71 34                    q4
        and     ($2A),y                         ; F9A3 31 2A                    1*
        .byte   $74                             ; F9A5 74                       t
        .byte   $10                             ; F9A6 10                       .
LF9A7:  dey                                     ; F9A7 88                       .
        ora     ($03,x)                         ; F9A8 01 03                    ..
        ora     ($71),y                         ; F9AA 11 71                    .q
        .byte   $42                             ; F9AC 42                       B
        dey                                     ; F9AD 88                       .
        ora     ($04,x)                         ; F9AE 01 04                    ..
LF9B0:  .byte   $1F                             ; F9B0 1F                       .
        adc     ($64),y                         ; F9B1 71 64                    qd
        adc     ($2A),y                         ; F9B3 71 2A                    q*
        and     ($1E),y                         ; F9B5 31 1E                    1.
        adc     $47,x                           ; F9B7 75 47                    uG
        jsr     L0188                           ; F9B9 20 88 01                  ..
        .byte   $03                             ; F9BC 03                       .
        ora     ($75),y                         ; F9BD 11 75                    .u
        adc     ($04,x)                         ; F9BF 61 04                    a.
        dey                                     ; F9C1 88                       .
        ora     ($04,x)                         ; F9C2 01 04                    ..
        .byte   $1F                             ; F9C4 1F                       .
        adc     $5D,x                           ; F9C5 75 5D                    u]
        php                                     ; F9C7 08                       .
        adc     ($2F),y                         ; F9C8 71 2F                    q/
        and     ($23),y                         ; F9CA 31 23                    1#
        .byte   $74                             ; F9CC 74                       t
        .byte   $10                             ; F9CD 10                       .
LF9CE:  dey                                     ; F9CE 88                       .
        ora     ($03,x)                         ; F9CF 01 03                    ..
        ora     ($75),y                         ; F9D1 11 75                    .u
        .byte   $5C                             ; F9D3 5C                       \
        .byte   $0C                             ; F9D4 0C                       .
        dey                                     ; F9D5 88                       .
        ora     ($04,x)                         ; F9D6 01 04                    ..
        .byte   $1F                             ; F9D8 1F                       .
        adc     $5A,x                           ; F9D9 75 5A                    uZ
LF9DB:  bpl     LFA4E                           ; F9DB 10 71                    .q
        and     ($31),y                         ; F9DD 31 31                    11
        and     $75                             ; F9DF 25 75                    %u
        .byte   $3B                             ; F9E1 3B                       ;
        jsr     L0188                           ; F9E2 20 88 01                  ..
        .byte   $03                             ; F9E5 03                       .
        ora     ($75),y                         ; F9E6 11 75                    .u
        cli                                     ; F9E8 58                       X
        .byte   $04                             ; F9E9 04                       .
        dey                                     ; F9EA 88                       .
        ora     ($04,x)                         ; F9EB 01 04                    ..
        .byte   $1F                             ; F9ED 1F                       .
        adc     $57,x                           ; F9EE 75 57                    uW
        php                                     ; F9F0 08                       .
        adc     ($34),y                         ; F9F1 71 34                    q4
        .byte   $31                             ; F9F3 31                       1
LF9F4:  plp                                     ; F9F4 28                       (
        .byte   $74                             ; F9F5 74                       t
        bpl     LF980                           ; F9F6 10 88                    ..
        ora     ($03,x)                         ; F9F8 01 03                    ..
        ora     ($75),y                         ; F9FA 11 75                    .u
        .byte   $53                             ; F9FC 53                       S
        .byte   $0C                             ; F9FD 0C                       .
        dey                                     ; F9FE 88                       .
        ora     ($04,x)                         ; F9FF 01 04                    ..
        .byte   $1F                             ; FA01 1F                       .
        adc     $51,x                           ; FA02 75 51                    uQ
        bpl     LFA77                           ; FA04 10 71                    .q
        sec                                     ; FA06 38                       8
        and     ($34),y                         ; FA07 31 34                    14
        adc     $2F,x                           ; FA09 75 2F                    u/
        jsr     L0188                           ; FA0B 20 88 01                  ..
        .byte   $03                             ; FA0E 03                       .
        ora     ($71),y                         ; FA0F 11 71                    .q
        bvc     LF99B                           ; FA11 50 88                    P.
        ora     ($04,x)                         ; FA13 01 04                    ..
        .byte   $1F                             ; FA15 1F                       .
        adc     ($4E),y                         ; FA16 71 4E                    qN
        adc     ($39),y                         ; FA18 71 39                    q9
        .byte   $31                             ; FA1A 31                       1
LFA1B:  and     ($74),y                         ; FA1B 31 74                    1t
        bpl     LF9A7                           ; FA1D 10 88                    ..
        ora     ($03,x)                         ; FA1F 01 03                    ..
        ora     ($71),y                         ; FA21 11 71                    .q
        eor     #$88                            ; FA23 49 88                    I.
        ora     ($04,x)                         ; FA25 01 04                    ..
        .byte   $1F                             ; FA27 1F                       .
        adc     ($4C),y                         ; FA28 71 4C                    qL
        adc     ($38),y                         ; FA2A 71 38                    q8
        and     ($2F),y                         ; FA2C 31 2F                    1/
        adc     $23,x                           ; FA2E 75 23                    u#
        jsr     L43BB                           ; FA30 20 BB 43                  .C
        php                                     ; FA33 08                       .
LFA34:  ora     ($03,x)                         ; FA34 01 03                    ..
        ora     ($71),y                         ; FA36 11 71                    .q
        .byte   $4B                             ; FA38 4B                       K
        dey                                     ; FA39 88                       .
        ora     ($04,x)                         ; FA3A 01 04                    ..
        .byte   $1F                             ; FA3C 1F                       .
        adc     ($47),y                         ; FA3D 71 47                    qG
        .byte   $71                             ; FA3F 71                       q
LFA40:  .byte   $34                             ; FA40 34                       4
        and     ($2A),y                         ; FA41 31 2A                    1*
        .byte   $74                             ; FA43 74                       t
        bpl     LF9CE                           ; FA44 10 88                    ..
        ora     ($03,x)                         ; FA46 01 03                    ..
        ora     ($71),y                         ; FA48 11 71                    .q
        .byte   $42                             ; FA4A 42                       B
        dey                                     ; FA4B 88                       .
        ora     ($04,x)                         ; FA4C 01 04                    ..
LFA4E:  .byte   $1F                             ; FA4E 1F                       .
        adc     ($40),y                         ; FA4F 71 40                    q@
        adc     ($2A),y                         ; FA51 71 2A                    q*
        and     ($1E),y                         ; FA53 31 1E                    1.
        adc     $17,x                           ; FA55 75 17                    u.
        jsr     L45B9                           ; FA57 20 B9 45                  .E
        ora     ($03,x)                         ; FA5A 01 03                    ..
        ora     ($71),y                         ; FA5C 11 71                    .q
        .byte   $42                             ; FA5E 42                       B
        dey                                     ; FA5F 88                       .
        ora     ($04,x)                         ; FA60 01 04                    ..
        .byte   $1F                             ; FA62 1F                       .
        adc     ($44),y                         ; FA63 71 44                    qD
LFA65:  adc     ($2F),y                         ; FA65 71 2F                    q/
        and     ($23),y                         ; FA67 31 23                    1#
        .byte   $74                             ; FA69 74                       t
        bpl     LF9F4                           ; FA6A 10 88                    ..
        ora     ($03,x)                         ; FA6C 01 03                    ..
        ora     ($71),y                         ; FA6E 11 71                    .q
        eor     $88                             ; FA70 45 88                    E.
        ora     ($04,x)                         ; FA72 01 04                    ..
        .byte   $1F                             ; FA74 1F                       .
        adc     ($47),y                         ; FA75 71 47                    qG
LFA77:  adc     ($31),y                         ; FA77 71 31                    q1
        and     ($25),y                         ; FA79 31 25                    1%
        adc     $23,x                           ; FA7B 75 23                    u#
        jsr     L41BB                           ; FA7D 20 BB 41                  .A
        .byte   $07                             ; FA80 07                       .
        ora     ($03,x)                         ; FA81 01 03                    ..
        ora     ($71),y                         ; FA83 11 71                    .q
        eor     #$88                            ; FA85 49 88                    I.
        ora     ($04,x)                         ; FA87 01 04                    ..
        .byte   $1F                             ; FA89 1F                       .
LFA8A:  adc     ($4B),y                         ; FA8A 71 4B                    qK
        adc     ($34),y                         ; FA8C 71 34                    q4
        and     ($28),y                         ; FA8E 31 28                    1(
        .byte   $74                             ; FA90 74                       t
        bpl     LFA1B                           ; FA91 10 88                    ..
        ora     ($03,x)                         ; FA93 01 03                    ..
        ora     ($71),y                         ; FA95 11 71                    .q
        jmp     L0188                           ; FA97 4C 88 01                 L..

; ----------------------------------------------------------------------------
        .byte   $04                             ; FA9A 04                       .
        .byte   $1F                             ; FA9B 1F                       .
        adc     ($4E),y                         ; FA9C 71 4E                    qN
        adc     ($38),y                         ; FA9E 71 38                    q8
        and     ($34),y                         ; FAA0 31 34                    14
        adc     $2F,x                           ; FAA2 75 2F                    u/
        jsr     L0188                           ; FAA4 20 88 01                  ..
        .byte   $03                             ; FAA7 03                       .
        ora     ($71),y                         ; FAA8 11 71                    .q
        bvc     LFA34                           ; FAAA 50 88                    P.
        ora     ($04,x)                         ; FAAC 01 04                    ..
        .byte   $1F                             ; FAAE 1F                       .
        .byte   $71                             ; FAAF 71                       q
LFAB0:  eor     ($71),y                         ; FAB0 51 71                    Qq
        and     $3131,y                         ; FAB2 39 31 31                 911
        .byte   $74                             ; FAB5 74                       t
        bpl     LFA40                           ; FAB6 10 88                    ..
        ora     ($03,x)                         ; FAB8 01 03                    ..
        ora     ($71),y                         ; FABA 11 71                    .q
        .byte   $53                             ; FABC 53                       S
        dey                                     ; FABD 88                       .
        ora     ($04,x)                         ; FABE 01 04                    ..
        .byte   $1F                             ; FAC0 1F                       .
        adc     ($55),y                         ; FAC1 71 55                    qU
        adc     ($38),y                         ; FAC3 71 38                    q8
        and     ($2F),y                         ; FAC5 31 2F                    1/
        adc     $3B,x                           ; FAC7 75 3B                    u;
        jsr     L0188                           ; FAC9 20 88 01                  ..
        .byte   $03                             ; FACC 03                       .
        ora     ($71),y                         ; FACD 11 71                    .q
        .byte   $57                             ; FACF 57                       W
        dey                                     ; FAD0 88                       .
        ora     ($04,x)                         ; FAD1 01 04                    ..
        .byte   $1F                             ; FAD3 1F                       .
        adc     ($58),y                         ; FAD4 71 58                    qX
LFAD6:  adc     ($34),y                         ; FAD6 71 34                    q4
        and     ($2A),y                         ; FAD8 31 2A                    1*
        .byte   $74                             ; FADA 74                       t
        bpl     LFA65                           ; FADB 10 88                    ..
        ora     ($03,x)                         ; FADD 01 03                    ..
        ora     ($71),y                         ; FADF 11 71                    .q
        .byte   $5A                             ; FAE1 5A                       Z
        dey                                     ; FAE2 88                       .
        ora     ($04,x)                         ; FAE3 01 04                    ..
        .byte   $1F                             ; FAE5 1F                       .
        adc     ($5C),y                         ; FAE6 71 5C                    q\
        adc     ($2A),y                         ; FAE8 71 2A                    q*
        and     ($1E),y                         ; FAEA 31 1E                    1.
        adc     $47,x                           ; FAEC 75 47                    uG
        jsr     L0188                           ; FAEE 20 88 01                  ..
        .byte   $03                             ; FAF1 03                       .
        ora     ($71),y                         ; FAF2 11 71                    .q
        eor     L0188,x                         ; FAF4 5D 88 01                 ]..
        .byte   $04                             ; FAF7 04                       .
        .byte   $1F                             ; FAF8 1F                       .
        adc     ($5F),y                         ; FAF9 71 5F                    q_
        .byte   $71                             ; FAFB 71                       q
LFAFC:  .byte   $2F                             ; FAFC 2F                       /
        and     ($23),y                         ; FAFD 31 23                    1#
        .byte   $74                             ; FAFF 74                       t
        bpl     LFA8A                           ; FB00 10 88                    ..
        ora     ($03,x)                         ; FB02 01 03                    ..
        ora     ($71),y                         ; FB04 11 71                    .q
        adc     ($88,x)                         ; FB06 61 88                    a.
        ora     ($04,x)                         ; FB08 01 04                    ..
        .byte   $1F                             ; FB0A 1F                       .
        adc     $5C,x                           ; FB0B 75 5C                    u\
        .byte   $0C                             ; FB0D 0C                       .
        adc     ($31),y                         ; FB0E 71 31                    q1
        and     ($25),y                         ; FB10 31 25                    1%
        adc     $3B,x                           ; FB12 75 3B                    u;
        jsr     L0188                           ; FB14 20 88 01                  ..
        .byte   $03                             ; FB17 03                       .
        ora     ($71),y                         ; FB18 11 71                    .q
        eor     L0188,x                         ; FB1A 5D 88 01                 ]..
        .byte   $04                             ; FB1D 04                       .
        .byte   $1F                             ; FB1E 1F                       .
        adc     ($5F),y                         ; FB1F 71 5F                    q_
        adc     ($34),y                         ; FB21 71 34                    q4
        and     ($28),y                         ; FB23 31 28                    1(
        .byte   $74                             ; FB25 74                       t
        bpl     LFAB0                           ; FB26 10 88                    ..
        ora     ($03,x)                         ; FB28 01 03                    ..
        ora     ($71),y                         ; FB2A 11 71                    .q
LFB2C:  adc     ($88,x)                         ; FB2C 61 88                    a.
        ora     ($04,x)                         ; FB2E 01 04                    ..
        .byte   $1F                             ; FB30 1F                       .
        adc     $5C,x                           ; FB31 75 5C                    u\
        php                                     ; FB33 08                       .
        adc     ($38),y                         ; FB34 71 38                    q8
        and     ($34),y                         ; FB36 31 34                    14
        adc     $2F,x                           ; FB38 75 2F                    u/
        jsr     L0188                           ; FB3A 20 88 01                  ..
        .byte   $03                             ; FB3D 03                       .
        ora     ($71),y                         ; FB3E 11 71                    .q
        eor     L0188,x                         ; FB40 5D 88 01                 ]..
        .byte   $04                             ; FB43 04                       .
        .byte   $1F                             ; FB44 1F                       .
        adc     ($5F),y                         ; FB45 71 5F                    q_
        adc     ($39),y                         ; FB47 71 39                    q9
        and     ($31),y                         ; FB49 31 31                    11
        .byte   $74                             ; FB4B 74                       t
        bpl     LFAD6                           ; FB4C 10 88                    ..
        ora     ($03,x)                         ; FB4E 01 03                    ..
        ora     ($71),y                         ; FB50 11 71                    .q
        adc     ($88,x)                         ; FB52 61 88                    a.
        .byte   $01                             ; FB54 01                       .
LFB55:  .byte   $04                             ; FB55 04                       .
        .byte   $1F                             ; FB56 1F                       .
        adc     $5C,x                           ; FB57 75 5C                    u\
        .byte   $04                             ; FB59 04                       .
        adc     ($38),y                         ; FB5A 71 38                    q8
LFB5C:  and     ($2F),y                         ; FB5C 31 2F                    1/
        adc     $23,x                           ; FB5E 75 23                    u#
        jsr     L0188                           ; FB60 20 88 01                  ..
        .byte   $03                             ; FB63 03                       .
        ora     ($71),y                         ; FB64 11 71                    .q
        eor     L0188,x                         ; FB66 5D 88 01                 ]..
        .byte   $04                             ; FB69 04                       .
        .byte   $1F                             ; FB6A 1F                       .
        adc     ($5F),y                         ; FB6B 71 5F                    q_
        adc     ($34),y                         ; FB6D 71 34                    q4
        and     ($2A),y                         ; FB6F 31 2A                    1*
        .byte   $74                             ; FB71 74                       t
        bpl     LFAFC                           ; FB72 10 88                    ..
        ora     ($03,x)                         ; FB74 01 03                    ..
        ora     ($71),y                         ; FB76 11 71                    .q
        adc     ($88,x)                         ; FB78 61 88                    a.
        ora     ($04,x)                         ; FB7A 01 04                    ..
        rti                                     ; FB7C 40                       @

; ----------------------------------------------------------------------------
        .byte   $1F                             ; FB7D 1F                       .
LFB7E:  .byte   $77                             ; FB7E 77                       w
        .byte   $63                             ; FB7F 63                       c
        ora     ($04,x)                         ; FB80 01 04                    ..
        .byte   $77                             ; FB82 77                       w
        bit     $1001                           ; FB83 2C 01 10                 ,..
        .byte   $33                             ; FB86 33                       3
        jsr     L7704                           ; FB87 20 04 77                  .w
        .byte   $17                             ; FB8A 17                       .
        ora     #$20                            ; FB8B 09 20                    . 
        .byte   $BB                             ; FB8D BB                       .
        .byte   $43                             ; FB8E 43                       C
        .byte   $07                             ; FB8F 07                       .
        ora     ($03,x)                         ; FB90 01 03                    ..
        ora     ($75),y                         ; FB92 11 75                    .u
        lsr     $8808,x                         ; FB94 5E 08 88                 ^..
        ora     ($04,x)                         ; FB97 01 04                    ..
        .byte   $1F                             ; FB99 1F                       .
        adc     $5A,x                           ; FB9A 75 5A                    uZ
        .byte   $0C                             ; FB9C 0C                       .
        adc     ($31),y                         ; FB9D 71 31                    q1
        and     ($25),y                         ; FB9F 31 25                    1%
        .byte   $74                             ; FBA1 74                       t
        bpl     LFB2C                           ; FBA2 10 88                    ..
        ora     ($03,x)                         ; FBA4 01 03                    ..
        .byte   $11                             ; FBA6 11                       .
LFBA7:  adc     $59,x                           ; FBA7 75 59                    uY
        bpl     $FB33                           ; FBA9 10 88                    ..
        ora     ($04,x)                         ; FBAB 01 04                    ..
        .byte   $1F                             ; FBAD 1F                       .
        adc     $5A,x                           ; FBAE 75 5A                    uZ
        .byte   $04                             ; FBB0 04                       .
        adc     ($33),y                         ; FBB1 71 33                    q3
        and     ($27),y                         ; FBB3 31 27                    1'
        adc     $23,x                           ; FBB5 75 23                    u#
        jsr     L0188                           ; FBB7 20 88 01                  ..
        .byte   $03                             ; FBBA 03                       .
        ora     ($75),y                         ; FBBB 11 75                    .u
        eor     $8808,y                         ; FBBD 59 08 88                 Y..
        ora     ($04,x)                         ; FBC0 01 04                    ..
        .byte   $1F                             ; FBC2 1F                       .
        adc     $57,x                           ; FBC3 75 57                    uW
        .byte   $0C                             ; FBC5 0C                       .
        adc     ($36),y                         ; FBC6 71 36                    q6
        and     ($2A),y                         ; FBC8 31 2A                    1*
        .byte   $74                             ; FBCA 74                       t
        bpl     LFB55                           ; FBCB 10 88                    ..
        ora     ($03,x)                         ; FBCD 01 03                    ..
        .byte   $11                             ; FBCF 11                       .
LFBD0:  adc     $52,x                           ; FBD0 75 52                    uR
        bpl     LFB5C                           ; FBD2 10 88                    ..
        ora     ($04,x)                         ; FBD4 01 04                    ..
        .byte   $1F                             ; FBD6 1F                       .
        adc     $57,x                           ; FBD7 75 57                    uW
        .byte   $04                             ; FBD9 04                       .
        adc     ($3A),y                         ; FBDA 71 3A                    q:
        and     ($36),y                         ; FBDC 31 36                    16
        adc     $2F,x                           ; FBDE 75 2F                    u/
        jsr     L0188                           ; FBE0 20 88 01                  ..
        .byte   $03                             ; FBE3 03                       .
        ora     ($75),y                         ; FBE4 11 75                    .u
        .byte   $52                             ; FBE6 52                       R
        php                                     ; FBE7 08                       .
        dey                                     ; FBE8 88                       .
        ora     ($04,x)                         ; FBE9 01 04                    ..
        .byte   $1F                             ; FBEB 1F                       .
        adc     $4E,x                           ; FBEC 75 4E                    uN
        .byte   $0C                             ; FBEE 0C                       .
        adc     ($3B),y                         ; FBEF 71 3B                    q;
        and     ($33),y                         ; FBF1 31 33                    13
        .byte   $74                             ; FBF3 74                       t
        bpl     LFB7E                           ; FBF4 10 88                    ..
        ora     ($03,x)                         ; FBF6 01 03                    ..
        .byte   $11                             ; FBF8 11                       .
LFBF9:  adc     $4D,x                           ; FBF9 75 4D                    uM
        bpl     $FB85                           ; FBFB 10 88                    ..
        ora     ($04,x)                         ; FBFD 01 04                    ..
        .byte   $1F                             ; FBFF 1F                       .
        adc     $4E,x                           ; FC00 75 4E                    uN
        .byte   $04                             ; FC02 04                       .
        adc     ($3A),y                         ; FC03 71 3A                    q:
        and     ($31),y                         ; FC05 31 31                    11
        adc     $3B,x                           ; FC07 75 3B                    u;
        jsr     L0188                           ; FC09 20 88 01                  ..
        .byte   $03                             ; FC0C 03                       .
        ora     ($75),y                         ; FC0D 11 75                    .u
        eor     $8808                           ; FC0F 4D 08 88                 M..
        ora     ($04,x)                         ; FC12 01 04                    ..
        .byte   $1F                             ; FC14 1F                       .
        adc     $4B,x                           ; FC15 75 4B                    uK
        .byte   $0C                             ; FC17 0C                       .
        adc     ($36),y                         ; FC18 71 36                    q6
        and     ($2C),y                         ; FC1A 31 2C                    1,
        .byte   $74                             ; FC1C 74                       t
        bpl     LFBA7                           ; FC1D 10 88                    ..
        ora     ($03,x)                         ; FC1F 01 03                    ..
        .byte   $11                             ; FC21 11                       .
LFC22:  adc     $46,x                           ; FC22 75 46                    uF
        bpl     $FBAE                           ; FC24 10 88                    ..
        ora     ($04,x)                         ; FC26 01 04                    ..
        .byte   $1F                             ; FC28 1F                       .
        adc     $57,x                           ; FC29 75 57                    uW
        .byte   $04                             ; FC2B 04                       .
        adc     ($2C),y                         ; FC2C 71 2C                    q,
        and     ($20),y                         ; FC2E 31 20                    1 
        adc     $47,x                           ; FC30 75 47                    uG
        jsr     L0188                           ; FC32 20 88 01                  ..
        .byte   $03                             ; FC35 03                       .
        ora     ($75),y                         ; FC36 11 75                    .u
        .byte   $52                             ; FC38 52                       R
        php                                     ; FC39 08                       .
        dey                                     ; FC3A 88                       .
        ora     ($04,x)                         ; FC3B 01 04                    ..
        .byte   $1F                             ; FC3D 1F                       .
        adc     $4E,x                           ; FC3E 75 4E                    uN
        .byte   $0C                             ; FC40 0C                       .
        adc     ($31),y                         ; FC41 71 31                    q1
        and     ($25),y                         ; FC43 31 25                    1%
        .byte   $74                             ; FC45 74                       t
        bpl     LFBD0                           ; FC46 10 88                    ..
        ora     ($03,x)                         ; FC48 01 03                    ..
        .byte   $11                             ; FC4A 11                       .
LFC4B:  adc     $4D,x                           ; FC4B 75 4D                    uM
        bpl     $FBD7                           ; FC4D 10 88                    ..
        ora     ($04,x)                         ; FC4F 01 04                    ..
        .byte   $1F                             ; FC51 1F                       .
LFC52:  adc     $4E,x                           ; FC52 75 4E                    uN
        .byte   $04                             ; FC54 04                       .
        adc     ($33),y                         ; FC55 71 33                    q3
        and     ($27),y                         ; FC57 31 27                    1'
        adc     $3B,x                           ; FC59 75 3B                    u;
        jsr     L0188                           ; FC5B 20 88 01                  ..
        .byte   $03                             ; FC5E 03                       .
        ora     ($75),y                         ; FC5F 11 75                    .u
        eor     $8808                           ; FC61 4D 08 88                 M..
        ora     ($04,x)                         ; FC64 01 04                    ..
        .byte   $1F                             ; FC66 1F                       .
        adc     $4B,x                           ; FC67 75 4B                    uK
        .byte   $0C                             ; FC69 0C                       .
        adc     ($36),y                         ; FC6A 71 36                    q6
        and     ($2A),y                         ; FC6C 31 2A                    1*
        .byte   $74                             ; FC6E 74                       t
        bpl     LFBF9                           ; FC6F 10 88                    ..
LFC71:  ora     ($03,x)                         ; FC71 01 03                    ..
        ora     ($75),y                         ; FC73 11 75                    .u
        lsr     $10                             ; FC75 46 10                    F.
        dey                                     ; FC77 88                       .
        ora     ($04,x)                         ; FC78 01 04                    ..
        .byte   $1F                             ; FC7A 1F                       .
        adc     $4B,x                           ; FC7B 75 4B                    uK
        .byte   $04                             ; FC7D 04                       .
        adc     ($3A),y                         ; FC7E 71 3A                    q:
        and     ($36),y                         ; FC80 31 36                    16
        adc     $2F,x                           ; FC82 75 2F                    u/
        jsr     L0188                           ; FC84 20 88 01                  ..
        .byte   $03                             ; FC87 03                       .
        ora     ($75),y                         ; FC88 11 75                    .u
LFC8A:  lsr     $08                             ; FC8A 46 08                    F.
        dey                                     ; FC8C 88                       .
        ora     ($04,x)                         ; FC8D 01 04                    ..
        .byte   $1F                             ; FC8F 1F                       .
        adc     $42,x                           ; FC90 75 42                    uB
        .byte   $0C                             ; FC92 0C                       .
        adc     ($3B),y                         ; FC93 71 3B                    q;
        .byte   $31                             ; FC95 31                       1
LFC96:  .byte   $33                             ; FC96 33                       3
        .byte   $74                             ; FC97 74                       t
        bpl     LFC22                           ; FC98 10 88                    ..
        ora     ($03,x)                         ; FC9A 01 03                    ..
        ora     ($75),y                         ; FC9C 11 75                    .u
        eor     ($10,x)                         ; FC9E 41 10                    A.
        dey                                     ; FCA0 88                       .
        ora     ($04,x)                         ; FCA1 01 04                    ..
        .byte   $1F                             ; FCA3 1F                       .
        adc     $42,x                           ; FCA4 75 42                    uB
        .byte   $04                             ; FCA6 04                       .
        adc     ($3A),y                         ; FCA7 71 3A                    q:
        and     ($31),y                         ; FCA9 31 31                    11
        adc     $23,x                           ; FCAB 75 23                    u#
        jsr     L0188                           ; FCAD 20 88 01                  ..
        .byte   $03                             ; FCB0 03                       .
        ora     ($75),y                         ; FCB1 11 75                    .u
        eor     ($08,x)                         ; FCB3 41 08                    A.
        dey                                     ; FCB5 88                       .
        ora     ($04,x)                         ; FCB6 01 04                    ..
        .byte   $1F                             ; FCB8 1F                       .
        adc     $3F,x                           ; FCB9 75 3F                    u?
LFCBB:  .byte   $0C                             ; FCBB 0C                       .
        adc     ($36),y                         ; FCBC 71 36                    q6
        and     ($2C),y                         ; FCBE 31 2C                    1,
        .byte   $74                             ; FCC0 74                       t
        bpl     LFC4B                           ; FCC1 10 88                    ..
        ora     ($03,x)                         ; FCC3 01 03                    ..
        ora     ($75),y                         ; FCC5 11 75                    .u
        .byte   $3A                             ; FCC7 3A                       :
        bpl     LFC52                           ; FCC8 10 88                    ..
        ora     ($04,x)                         ; FCCA 01 04                    ..
        .byte   $1F                             ; FCCC 1F                       .
        adc     ($38),y                         ; FCCD 71 38                    q8
        adc     ($2C),y                         ; FCCF 71 2C                    q,
        and     ($20),y                         ; FCD1 31 20                    1 
        adc     $17,x                           ; FCD3 75 17                    u.
        jsr     L0188                           ; FCD5 20 88 01                  ..
        .byte   $03                             ; FCD8 03                       .
        ora     ($71),y                         ; FCD9 11 71                    .q
        bit     L0188                           ; FCDB 2C 88 01                 ,..
        .byte   $04                             ; FCDE 04                       .
        .byte   $1F                             ; FCDF 1F                       .
LFCE0:  adc     ($3A),y                         ; FCE0 71 3A                    q:
        adc     ($31),y                         ; FCE2 71 31                    q1
        and     ($25),y                         ; FCE4 31 25                    1%
        .byte   $74                             ; FCE6 74                       t
        bpl     LFC71                           ; FCE7 10 88                    ..
        ora     ($03,x)                         ; FCE9 01 03                    ..
        ora     ($71),y                         ; FCEB 11 71                    .q
        rol     L0188                           ; FCED 2E 88 01                 ...
        .byte   $04                             ; FCF0 04                       .
        .byte   $1F                             ; FCF1 1F                       .
        adc     ($3C),y                         ; FCF2 71 3C                    q<
        adc     ($33),y                         ; FCF4 71 33                    q3
        and     ($27),y                         ; FCF6 31 27                    1'
        adc     $23,x                           ; FCF8 75 23                    u#
        jsr     L0188                           ; FCFA 20 88 01                  ..
        .byte   $03                             ; FCFD 03                       .
        ora     ($71),y                         ; FCFE 11 71                    .q
        bmi     LFC8A                           ; FD00 30 88                    0.
        ora     ($04,x)                         ; FD02 01 04                    ..
        .byte   $1F                             ; FD04 1F                       .
LFD05:  adc     ($3D),y                         ; FD05 71 3D                    q=
        adc     ($36),y                         ; FD07 71 36                    q6
        and     ($2A),y                         ; FD09 31 2A                    1*
        .byte   $74                             ; FD0B 74                       t
        bpl     LFC96                           ; FD0C 10 88                    ..
        ora     ($03,x)                         ; FD0E 01 03                    ..
        ora     ($71),y                         ; FD10 11 71                    .q
        and     ($88),y                         ; FD12 31 88                    1.
        ora     ($04,x)                         ; FD14 01 04                    ..
        .byte   $1F                             ; FD16 1F                       .
        adc     ($3F),y                         ; FD17 71 3F                    q?
        adc     ($3A),y                         ; FD19 71 3A                    q:
        and     ($36),y                         ; FD1B 31 36                    16
        adc     $2F,x                           ; FD1D 75 2F                    u/
        jsr     L0188                           ; FD1F 20 88 01                  ..
        .byte   $03                             ; FD22 03                       .
        ora     ($71),y                         ; FD23 11 71                    .q
        .byte   $33                             ; FD25 33                       3
        dey                                     ; FD26 88                       .
        ora     ($04,x)                         ; FD27 01 04                    ..
        .byte   $1F                             ; FD29 1F                       .
LFD2A:  adc     ($41),y                         ; FD2A 71 41                    qA
        adc     ($3B),y                         ; FD2C 71 3B                    q;
        and     ($33),y                         ; FD2E 31 33                    13
        .byte   $74                             ; FD30 74                       t
        bpl     LFCBB                           ; FD31 10 88                    ..
        ora     ($03,x)                         ; FD33 01 03                    ..
        ora     ($71),y                         ; FD35 11 71                    .q
        and     $88,x                           ; FD37 35 88                    5.
        ora     ($04,x)                         ; FD39 01 04                    ..
        .byte   $1F                             ; FD3B 1F                       .
        adc     ($42),y                         ; FD3C 71 42                    qB
        adc     ($3A),y                         ; FD3E 71 3A                    q:
        and     ($31),y                         ; FD40 31 31                    11
        adc     $3B,x                           ; FD42 75 3B                    u;
        jsr     L0188                           ; FD44 20 88 01                  ..
        .byte   $03                             ; FD47 03                       .
        ora     ($71),y                         ; FD48 11 71                    .q
        rol     $88,x                           ; FD4A 36 88                    6.
        ora     ($04,x)                         ; FD4C 01 04                    ..
        .byte   $1F                             ; FD4E 1F                       .
LFD4F:  adc     ($44),y                         ; FD4F 71 44                    qD
        adc     ($36),y                         ; FD51 71 36                    q6
        and     ($2C),y                         ; FD53 31 2C                    1,
        .byte   $74                             ; FD55 74                       t
        bpl     LFCE0                           ; FD56 10 88                    ..
        ora     ($03,x)                         ; FD58 01 03                    ..
        ora     ($71),y                         ; FD5A 11 71                    .q
        sec                                     ; FD5C 38                       8
        dey                                     ; FD5D 88                       .
        ora     ($04,x)                         ; FD5E 01 04                    ..
        .byte   $1F                             ; FD60 1F                       .
        adc     ($46),y                         ; FD61 71 46                    qF
        adc     ($2C),y                         ; FD63 71 2C                    q,
        and     ($20),y                         ; FD65 31 20                    1 
        adc     $47,x                           ; FD67 75 47                    uG
        jsr     L0188                           ; FD69 20 88 01                  ..
        .byte   $03                             ; FD6C 03                       .
        ora     ($71),y                         ; FD6D 11 71                    .q
        .byte   $3A                             ; FD6F 3A                       :
        dey                                     ; FD70 88                       .
        ora     ($04,x)                         ; FD71 01 04                    ..
        .byte   $1F                             ; FD73 1F                       .
LFD74:  adc     ($47),y                         ; FD74 71 47                    qG
        adc     ($31),y                         ; FD76 71 31                    q1
        and     ($25),y                         ; FD78 31 25                    1%
        .byte   $74                             ; FD7A 74                       t
        bpl     LFD05                           ; FD7B 10 88                    ..
        ora     ($03,x)                         ; FD7D 01 03                    ..
        ora     ($71),y                         ; FD7F 11 71                    .q
        .byte   $3B                             ; FD81 3B                       ;
        dey                                     ; FD82 88                       .
        ora     ($04,x)                         ; FD83 01 04                    ..
        .byte   $1F                             ; FD85 1F                       .
        adc     ($46),y                         ; FD86 71 46                    qF
        adc     ($33),y                         ; FD88 71 33                    q3
        and     ($27),y                         ; FD8A 31 27                    1'
        adc     $3B,x                           ; FD8C 75 3B                    u;
        jsr     L0188                           ; FD8E 20 88 01                  ..
        .byte   $03                             ; FD91 03                       .
        ora     ($71),y                         ; FD92 11 71                    .q
        .byte   $3A                             ; FD94 3A                       :
        dey                                     ; FD95 88                       .
        ora     ($04,x)                         ; FD96 01 04                    ..
        .byte   $1F                             ; FD98 1F                       .
        adc     ($44),y                         ; FD99 71 44                    qD
        adc     ($36),y                         ; FD9B 71 36                    q6
        and     ($2A),y                         ; FD9D 31 2A                    1*
        .byte   $74                             ; FD9F 74                       t
        bpl     LFD2A                           ; FDA0 10 88                    ..
LFDA2:  ora     ($03,x)                         ; FDA2 01 03                    ..
        ora     ($71),y                         ; FDA4 11 71                    .q
        sec                                     ; FDA6 38                       8
        dey                                     ; FDA7 88                       .
        ora     ($04,x)                         ; FDA8 01 04                    ..
        .byte   $1F                             ; FDAA 1F                       .
        adc     ($46),y                         ; FDAB 71 46                    qF
        adc     ($3A),y                         ; FDAD 71 3A                    q:
        and     ($36),y                         ; FDAF 31 36                    16
        adc     $2F,x                           ; FDB1 75 2F                    u/
        jsr     L0188                           ; FDB3 20 88 01                  ..
        .byte   $03                             ; FDB6 03                       .
        ora     ($71),y                         ; FDB7 11 71                    .q
        .byte   $3A                             ; FDB9 3A                       :
        dey                                     ; FDBA 88                       .
        ora     ($04,x)                         ; FDBB 01 04                    ..
        .byte   $1F                             ; FDBD 1F                       .
        adc     ($47),y                         ; FDBE 71 47                    qG
        adc     ($3B),y                         ; FDC0 71 3B                    q;
        and     ($33),y                         ; FDC2 31 33                    13
        .byte   $74                             ; FDC4 74                       t
        bpl     LFD4F                           ; FDC5 10 88                    ..
        .byte   $01                             ; FDC7 01                       .
LFDC8:  .byte   $03                             ; FDC8 03                       .
        ora     ($71),y                         ; FDC9 11 71                    .q
        .byte   $3B                             ; FDCB 3B                       ;
        dey                                     ; FDCC 88                       .
        ora     ($04,x)                         ; FDCD 01 04                    ..
        .byte   $1F                             ; FDCF 1F                       .
        adc     ($49),y                         ; FDD0 71 49                    qI
        adc     ($3A),y                         ; FDD2 71 3A                    q:
        and     ($31),y                         ; FDD4 31 31                    11
        adc     $23,x                           ; FDD6 75 23                    u#
        jsr     L0188                           ; FDD8 20 88 01                  ..
        .byte   $03                             ; FDDB 03                       .
        ora     ($71),y                         ; FDDC 11 71                    .q
        and     L0188,x                         ; FDDE 3D 88 01                 =..
        .byte   $04                             ; FDE1 04                       .
        .byte   $1F                             ; FDE2 1F                       .
        adc     ($4B),y                         ; FDE3 71 4B                    qK
        adc     ($36),y                         ; FDE5 71 36                    q6
        and     ($2C),y                         ; FDE7 31 2C                    1,
        .byte   $74                             ; FDE9 74                       t
        bpl     LFD74                           ; FDEA 10 88                    ..
        ora     ($03,x)                         ; FDEC 01 03                    ..
LFDEE:  ora     ($71),y                         ; FDEE 11 71                    .q
        .byte   $3F                             ; FDF0 3F                       ?
        dey                                     ; FDF1 88                       .
        ora     ($04,x)                         ; FDF2 01 04                    ..
        rti                                     ; FDF4 40                       @

; ----------------------------------------------------------------------------
        .byte   $1F                             ; FDF5 1F                       .
        .byte   $77                             ; FDF6 77                       w
        .byte   $63                             ; FDF7 63                       c
        ora     ($04,x)                         ; FDF8 01 04                    ..
        .byte   $77                             ; FDFA 77                       w
        rol     $1001                           ; FDFB 2E 01 10                 ...
        .byte   $33                             ; FDFE 33                       3
        .byte   $22                             ; FDFF 22                       "
        .byte   $04                             ; FE00 04                       .
        .byte   $77                             ; FE01 77                       w
        .byte   $17                             ; FE02 17                       .
        ora     #$20                            ; FE03 09 20                    . 
        .byte   $BB                             ; FE05 BB                       .
        eor     $07                             ; FE06 45 07                    E.
        ora     ($03,x)                         ; FE08 01 03                    ..
        ora     ($71),y                         ; FE0A 11 71                    .q
        lsr     L0188,x                         ; FE0C 5E 88 01                 ^..
        .byte   $04                             ; FE0F 04                       .
        .byte   $1F                             ; FE10 1F                       .
        adc     ($5A),y                         ; FE11 71 5A                    qZ
        .byte   $71                             ; FE13 71                       q
LFE14:  .byte   $33                             ; FE14 33                       3
        and     ($27),y                         ; FE15 31 27                    1'
        .byte   $74                             ; FE17 74                       t
        bpl     LFDA2                           ; FE18 10 88                    ..
        ora     ($03,x)                         ; FE1A 01 03                    ..
        ora     ($71),y                         ; FE1C 11 71                    .q
        eor     L0188,y                         ; FE1E 59 88 01                 Y..
        .byte   $04                             ; FE21 04                       .
        .byte   $1F                             ; FE22 1F                       .
        adc     $57,x                           ; FE23 75 57                    uW
        php                                     ; FE25 08                       .
        adc     (L0035),y                       ; FE26 71 35                    q5
        and     ($29),y                         ; FE28 31 29                    1)
        adc     $23,x                           ; FE2A 75 23                    u#
        jsr     L0188                           ; FE2C 20 88 01                  ..
        .byte   $03                             ; FE2F 03                       .
        ora     ($71),y                         ; FE30 11 71                    .q
        .byte   $52                             ; FE32 52                       R
        dey                                     ; FE33 88                       .
        ora     ($04,x)                         ; FE34 01 04                    ..
        .byte   $1F                             ; FE36 1F                       .
        adc     ($4E),y                         ; FE37 71 4E                    qN
LFE39:  adc     ($38),y                         ; FE39 71 38                    q8
        and     ($2C),y                         ; FE3B 31 2C                    1,
        .byte   $74                             ; FE3D 74                       t
        bpl     LFDC8                           ; FE3E 10 88                    ..
        ora     ($03,x)                         ; FE40 01 03                    ..
        ora     ($71),y                         ; FE42 11 71                    .q
        eor     L0188                           ; FE44 4D 88 01                 M..
        .byte   $04                             ; FE47 04                       .
        .byte   $1F                             ; FE48 1F                       .
        adc     $4B,x                           ; FE49 75 4B                    uK
        .byte   $0C                             ; FE4B 0C                       .
        adc     ($3C),y                         ; FE4C 71 3C                    q<
        and     ($38),y                         ; FE4E 31 38                    18
        adc     $2F,x                           ; FE50 75 2F                    u/
        jsr     L0188                           ; FE52 20 88 01                  ..
        .byte   $03                             ; FE55 03                       .
        ora     ($71),y                         ; FE56 11 71                    .q
        lsr     $88                             ; FE58 46 88                    F.
        ora     ($04,x)                         ; FE5A 01 04                    ..
        .byte   $1F                             ; FE5C 1F                       .
        .byte   $71                             ; FE5D 71                       q
LFE5E:  .byte   $42                             ; FE5E 42                       B
        adc     ($3D),y                         ; FE5F 71 3D                    q=
        and     (L0035),y                       ; FE61 31 35                    15
        .byte   $74                             ; FE63 74                       t
        bpl     LFDEE                           ; FE64 10 88                    ..
        ora     ($03,x)                         ; FE66 01 03                    ..
        ora     ($71),y                         ; FE68 11 71                    .q
        eor     ($88,x)                         ; FE6A 41 88                    A.
        ora     ($04,x)                         ; FE6C 01 04                    ..
        .byte   $1F                             ; FE6E 1F                       .
        adc     $3F,x                           ; FE6F 75 3F                    u?
        bpl     LFEE4                           ; FE71 10 71                    .q
        .byte   $3C                             ; FE73 3C                       <
        and     ($33),y                         ; FE74 31 33                    13
        adc     $3B,x                           ; FE76 75 3B                    u;
        jsr     L0188                           ; FE78 20 88 01                  ..
        .byte   $03                             ; FE7B 03                       .
        ora     ($71),y                         ; FE7C 11 71                    .q
        .byte   $3A                             ; FE7E 3A                       :
        dey                                     ; FE7F 88                       .
        ora     ($04,x)                         ; FE80 01 04                    ..
        .byte   $1F                             ; FE82 1F                       .
LFE83:  adc     ($36),y                         ; FE83 71 36                    q6
        adc     ($38),y                         ; FE85 71 38                    q8
        and     ($2E),y                         ; FE87 31 2E                    1.
        .byte   $74                             ; FE89 74                       t
        bpl     LFE14                           ; FE8A 10 88                    ..
        ora     ($03,x)                         ; FE8C 01 03                    ..
        ora     ($71),y                         ; FE8E 11 71                    .q
        and     $88,x                           ; FE90 35 88                    5.
        ora     ($04,x)                         ; FE92 01 04                    ..
        .byte   $1F                             ; FE94 1F                       .
        adc     ($33),y                         ; FE95 71 33                    q3
        adc     ($2E),y                         ; FE97 71 2E                    q.
        and     ($22),y                         ; FE99 31 22                    1"
        adc     $47,x                           ; FE9B 75 47                    uG
        jsr     L0188                           ; FE9D 20 88 01                  ..
        .byte   $03                             ; FEA0 03                       .
        ora     ($71),y                         ; FEA1 11 71                    .q
        and     $88,x                           ; FEA3 35 88                    5.
        ora     ($04,x)                         ; FEA5 01 04                    ..
        .byte   $1F                             ; FEA7 1F                       .
LFEA8:  adc     ($36),y                         ; FEA8 71 36                    q6
        adc     ($33),y                         ; FEAA 71 33                    q3
        and     ($27),y                         ; FEAC 31 27                    1'
        .byte   $74                             ; FEAE 74                       t
        bpl     LFE39                           ; FEAF 10 88                    ..
        ora     ($03,x)                         ; FEB1 01 03                    ..
        ora     ($71),y                         ; FEB3 11 71                    .q
        .byte   $3A                             ; FEB5 3A                       :
        dey                                     ; FEB6 88                       .
        ora     ($04,x)                         ; FEB7 01 04                    ..
        .byte   $1F                             ; FEB9 1F                       .
        adc     ($3F),y                         ; FEBA 71 3F                    q?
        adc     (L0035),y                       ; FEBC 71 35                    q5
        and     ($29),y                         ; FEBE 31 29                    1)
        adc     $3B,x                           ; FEC0 75 3B                    u;
        jsr     L0188                           ; FEC2 20 88 01                  ..
        .byte   $03                             ; FEC5 03                       .
        ora     ($71),y                         ; FEC6 11 71                    .q
        eor     ($88,x)                         ; FEC8 41 88                    A.
        ora     ($04,x)                         ; FECA 01 04                    ..
        .byte   $1F                             ; FECC 1F                       .
LFECD:  adc     ($42),y                         ; FECD 71 42                    qB
        adc     ($38),y                         ; FECF 71 38                    q8
        and     ($2C),y                         ; FED1 31 2C                    1,
        .byte   $74                             ; FED3 74                       t
        bpl     LFE5E                           ; FED4 10 88                    ..
        ora     ($03,x)                         ; FED6 01 03                    ..
        ora     ($71),y                         ; FED8 11 71                    .q
        lsr     $88                             ; FEDA 46 88                    F.
        ora     ($04,x)                         ; FEDC 01 04                    ..
        .byte   $1F                             ; FEDE 1F                       .
        adc     ($4B),y                         ; FEDF 71 4B                    qK
        adc     ($3C),y                         ; FEE1 71 3C                    q<
        .byte   $31                             ; FEE3 31                       1
LFEE4:  sec                                     ; FEE4 38                       8
        adc     $2F,x                           ; FEE5 75 2F                    u/
        jsr     L0188                           ; FEE7 20 88 01                  ..
        .byte   $03                             ; FEEA 03                       .
        ora     ($71),y                         ; FEEB 11 71                    .q
        eor     L0188                           ; FEED 4D 88 01                 M..
        .byte   $04                             ; FEF0 04                       .
        .byte   $1F                             ; FEF1 1F                       .
        .byte   $71                             ; FEF2 71                       q
LFEF3:  lsr     $3D71                           ; FEF3 4E 71 3D                 Nq=
        and     (L0035),y                       ; FEF6 31 35                    15
        .byte   $74                             ; FEF8 74                       t
        bpl     LFE83                           ; FEF9 10 88                    ..
        ora     ($03,x)                         ; FEFB 01 03                    ..
        ora     ($71),y                         ; FEFD 11 71                    .q
        .byte   $52                             ; FEFF 52                       R
        dey                                     ; FF00 88                       .
        ora     ($04,x)                         ; FF01 01 04                    ..
        .byte   $1F                             ; FF03 1F                       .
        adc     ($57),y                         ; FF04 71 57                    qW
        adc     ($3C),y                         ; FF06 71 3C                    q<
        and     ($33),y                         ; FF08 31 33                    13
        adc     $23,x                           ; FF0A 75 23                    u#
        jsr     L0188                           ; FF0C 20 88 01                  ..
        .byte   $03                             ; FF0F 03                       .
        ora     ($71),y                         ; FF10 11 71                    .q
        eor     L0188,y                         ; FF12 59 88 01                 Y..
        .byte   $04                             ; FF15 04                       .
        .byte   $1F                             ; FF16 1F                       .
        adc     ($5A),y                         ; FF17 71 5A                    qZ
LFF19:  adc     ($38),y                         ; FF19 71 38                    q8
        and     ($2E),y                         ; FF1B 31 2E                    1.
        .byte   $74                             ; FF1D 74                       t
        bpl     LFEA8                           ; FF1E 10 88                    ..
        ora     ($03,x)                         ; FF20 01 03                    ..
        ora     ($71),y                         ; FF22 11 71                    .q
        lsr     L0188,x                         ; FF24 5E 88 01                 ^..
        .byte   $04                             ; FF27 04                       .
        .byte   $1F                             ; FF28 1F                       .
        adc     ($63),y                         ; FF29 71 63                    qc
        adc     ($2E),y                         ; FF2B 71 2E                    q.
        and     ($22),y                         ; FF2D 31 22                    1"
        adc     $17,x                           ; FF2F 75 17                    u.
        jsr     L0188                           ; FF31 20 88 01                  ..
        .byte   $03                             ; FF34 03                       .
        ora     ($71),y                         ; FF35 11 71                    .q
        adc     $88                             ; FF37 65 88                    e.
        ora     ($04,x)                         ; FF39 01 04                    ..
        .byte   $1F                             ; FF3B 1F                       .
        adc     ($66),y                         ; FF3C 71 66                    qf
        .byte   $71                             ; FF3E 71                       q
LFF3F:  .byte   $33                             ; FF3F 33                       3
        and     ($27),y                         ; FF40 31 27                    1'
        .byte   $74                             ; FF42 74                       t
        bpl     LFECD                           ; FF43 10 88                    ..
        ora     ($03,x)                         ; FF45 01 03                    ..
        ora     ($71),y                         ; FF47 11 71                    .q
        ror     a                               ; FF49 6A                       j
        dey                                     ; FF4A 88                       .
        ora     ($04,x)                         ; FF4B 01 04                    ..
        .byte   $1F                             ; FF4D 1F                       .
        adc     $63,x                           ; FF4E 75 63                    uc
        php                                     ; FF50 08                       .
        adc     (L0035),y                       ; FF51 71 35                    q5
        and     ($29),y                         ; FF53 31 29                    1)
        adc     $23,x                           ; FF55 75 23                    u#
        jsr     L0188                           ; FF57 20 88 01                  ..
        .byte   $03                             ; FF5A 03                       .
        ora     ($71),y                         ; FF5B 11 71                    .q
        adc     $88                             ; FF5D 65 88                    e.
        ora     ($04,x)                         ; FF5F 01 04                    ..
        .byte   $1F                             ; FF61 1F                       .
        adc     ($66),y                         ; FF62 71 66                    qf
        .byte   $71                             ; FF64 71                       q
LFF65:  sec                                     ; FF65 38                       8
        and     ($2C),y                         ; FF66 31 2C                    1,
        .byte   $74                             ; FF68 74                       t
        bpl     LFEF3                           ; FF69 10 88                    ..
        ora     ($03,x)                         ; FF6B 01 03                    ..
        ora     ($71),y                         ; FF6D 11 71                    .q
        ror     a                               ; FF6F 6A                       j
        dey                                     ; FF70 88                       .
        ora     ($04,x)                         ; FF71 01 04                    ..
        .byte   $1F                             ; FF73 1F                       .
        adc     $5E,x                           ; FF74 75 5E                    u^
        bpl     LFFE9                           ; FF76 10 71                    .q
        .byte   $3C                             ; FF78 3C                       <
        and     ($38),y                         ; FF79 31 38                    18
        adc     $2F,x                           ; FF7B 75 2F                    u/
        jsr     L0188                           ; FF7D 20 88 01                  ..
        .byte   $03                             ; FF80 03                       .
        ora     ($71),y                         ; FF81 11 71                    .q
        rts                                     ; FF83 60                       `

; ----------------------------------------------------------------------------
        dey                                     ; FF84 88                       .
        ora     ($04,x)                         ; FF85 01 04                    ..
        .byte   $1F                             ; FF87 1F                       .
        adc     ($61),y                         ; FF88 71 61                    qa
        adc     ($3D),y                         ; FF8A 71 3D                    q=
        and     (L0035),y                       ; FF8C 31 35                    15
        .byte   $74                             ; FF8E 74                       t
        bpl     LFF19                           ; FF8F 10 88                    ..
        ora     ($03,x)                         ; FF91 01 03                    ..
        ora     ($71),y                         ; FF93 11 71                    .q
        adc     $88                             ; FF95 65 88                    e.
        ora     ($04,x)                         ; FF97 01 04                    ..
        .byte   $1F                             ; FF99 1F                       .
        adc     $5E,x                           ; FF9A 75 5E                    u^
        php                                     ; FF9C 08                       .
        adc     ($3C),y                         ; FF9D 71 3C                    q<
        and     ($33),y                         ; FF9F 31 33                    13
        adc     $3B,x                           ; FFA1 75 3B                    u;
        jsr     L0188                           ; FFA3 20 88 01                  ..
        .byte   $03                             ; FFA6 03                       .
        ora     ($71),y                         ; FFA7 11 71                    .q
        rts                                     ; FFA9 60                       `

; ----------------------------------------------------------------------------
        dey                                     ; FFAA 88                       .
        ora     ($04,x)                         ; FFAB 01 04                    ..
        .byte   $1F                             ; FFAD 1F                       .
        adc     ($61),y                         ; FFAE 71 61                    qa
        adc     ($38),y                         ; FFB0 71 38                    q8
        and     ($2E),y                         ; FFB2 31 2E                    1.
        .byte   $74                             ; FFB4 74                       t
        bpl     LFF3F                           ; FFB5 10 88                    ..
        ora     ($03,x)                         ; FFB7 01 03                    ..
        ora     ($71),y                         ; FFB9 11 71                    .q
        adc     $88                             ; FFBB 65 88                    e.
        ora     ($04,x)                         ; FFBD 01 04                    ..
        .byte   $1F                             ; FFBF 1F                       .
        adc     $57,x                           ; FFC0 75 57                    uW
;        bpl     L0035                           ; FFC2 10 71                    .q
.byte $10, $71 ; range error
        rol     $2231                           ; FFC4 2E 31 22                 .1"
        adc     $47,x                           ; FFC7 75 47                    uG
        jsr     L0188                           ; FFC9 20 88 01                  ..
        .byte   $03                             ; FFCC 03                       .
        ora     ($71),y                         ; FFCD 11 71                    .q
        eor     L0188,y                         ; FFCF 59 88 01                 Y..
        .byte   $04                             ; FFD2 04                       .
        .byte   $1F                             ; FFD3 1F                       .
        adc     ($5A),y                         ; FFD4 71 5A                    qZ
        adc     ($33),y                         ; FFD6 71 33                    q3
        and     ($27),y                         ; FFD8 31 27                    1'
        .byte   $74                             ; FFDA 74                       t
        bpl     LFF65                           ; FFDB 10 88                    ..
        ora     ($03,x)                         ; FFDD 01 03                    ..
        ora     ($71),y                         ; FFDF 11 71                    .q
        lsr     L0188,x                         ; FFE1 5E 88 01                 ^..
        .byte   $04                             ; FFE4 04                       .
        .byte   $1F                             ; FFE5 1F                       .
        adc     $57,x                           ; FFE6 75 57                    uW
        php                                     ; FFE8 08                       .
LFFE9:  adc     (L0035),y                       ; FFE9 71 35                    q5
        and     ($29),y                         ; FFEB 31 29                    1)
        adc     $3B,x                           ; FFED 75 3B                    u;
        jsr     L0188                           ; FFEF 20 88 01                  ..
        .byte   $03                             ; FFF2 03                       .
        ora     ($71),y                         ; FFF3 11 71                    .q
        eor     L0188,y                         ; FFF5 59 88 01                 Y..
        .byte   $04                             ; FFF8 04                       .
        .byte   $1F                             ; FFF9 1F                       .
;        adc     ($5A),y                         ; FFFA 71 5A                    qZ
;        adc     ($38),y                         ; FFFC 71 38                    q8
;        and     ($2C),y                         ; FFFE 31 2C                    1,
VECTORS ; mod
