.include "../mod.inc"
.segment "MF000"

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-23 02:19:31
; Input file: out_src\0A_07.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L5555           := $5555
L5955           := $5955
LD514           := $D514
LEFD3           := $EFD3
; ----------------------------------------------------------------------------
        brk                                     ; F000 00                       .
        .byte   $1F                             ; F001 1F                       .
        sei                                     ; F002 78                       x
LF003:  cpx     #$07                            ; F003 E0 07                    ..
        .byte   $7F                             ; F005 7F                       .
        .byte   $F0                             ; F006 F0                       .
LF007:  .byte   $07                             ; F007 07                       .
        rol     a:$F8,x                         ; F008 3E F8 00                 >..
        .byte   $07                             ; F00B 07                       .
        rol     $81FF,x                         ; F00C 3E FF 81                 >..
LF00F:  .byte   $3F                             ; F00F 3F                       ?
;        beq     LEFD3                           ; F010 F0 C1                    ..
.byte $F0, $C1 ; mod range error
        .byte   $07                             ; F012 07                       .
        rol     $1FE0,x                         ; F013 3E E0 1F                 >..
        sed                                     ; F016 F8                       .
        .byte   $07                             ; F017 07                       .
        .byte   $FC                             ; F018 FC                       .
        ora     ($3F,x)                         ; F019 01 3F                    .?
        rts                                     ; F01B 60                       `

; ----------------------------------------------------------------------------
        .byte   $80                             ; F01C 80                       .
        .byte   $7F                             ; F01D 7F                       .
        cpx     #$F1                            ; F01E E0 F1                    ..
        .byte   $07                             ; F020 07                       .
        .byte   $3F                             ; F021 3F                       ?
        cpx     #$0F                            ; F022 E0 0F                    ..
        .byte   $3F                             ; F024 3F                       ?
        cpx     #$8F                            ; F025 E0 8F                    ..
        .byte   $07                             ; F027 07                       .
        .byte   $0C                             ; F028 0C                       .
        cpy     #$3F                            ; F029 C0 3F                    .?
        inc     LFFC1,x                         ; F02B FE C1 FF                 ...
        .byte   $07                             ; F02E 07                       .
        .byte   $80                             ; F02F 80                       .
        ora     ($FC,x)                         ; F030 01 FC                    ..
        .byte   $F0                             ; F032 F0                       .
LF033:  .byte   $FF                             ; F033 FF                       .
        ora     ($0E,x)                         ; F034 01 0E                    ..
        bvs     LF038                           ; F036 70 00                    p.
LF038:  .byte   $FF                             ; F038 FF                       .
        .byte   $FF                             ; F039 FF                       .
        .byte   $FB                             ; F03A FB                       .
        .byte   $07                             ; F03B 07                       .
        brk                                     ; F03C 00                       .
        cpy     #$03                            ; F03D C0 03                    ..
        .byte   $FC                             ; F03F FC                       .
        .byte   $3F                             ; F040 3F                       ?
        sed                                     ; F041 F8                       .
        .byte   $07                             ; F042 07                       .
        beq     LF046                           ; F043 F0 01                    ..
        .byte   $E0                             ; F045 E0                       .
LF046:  .byte   $FF                             ; F046 FF                       .
        .byte   $FF                             ; F047 FF                       .
        .byte   $0F                             ; F048 0F                       .
        asl     $1C00,x                         ; F049 1E 00 1C                 ...
        .byte   $80                             ; F04C 80                       .
        .byte   $FF                             ; F04D FF                       .
        sbc     $801F,y                         ; F04E F9 1F 80                 ...
        .byte   $0F                             ; F051 0F                       .
        brk                                     ; F052 00                       .
        cpy     #$FF                            ; F053 C0 FF                    ..
        .byte   $FF                             ; F055 FF                       .
        ora     ($3F,x)                         ; F056 01 3F                    .?
        brk                                     ; F058 00                       .
LF059:  brk                                     ; F059 00                       .
        .byte   $F0                             ; F05A F0                       .
LF05B:  .byte   $FF                             ; F05B FF                       .
        .byte   $FF                             ; F05C FF                       .
        .byte   $07                             ; F05D 07                       .
        brk                                     ; F05E 00                       .
        brk                                     ; F05F 00                       .
        sed                                     ; F060 F8                       .
        .byte   $FF                             ; F061 FF                       .
        .byte   $FF                             ; F062 FF                       .
        sed                                     ; F063 F8                       .
        .byte   $3F                             ; F064 3F                       ?
        brk                                     ; F065 00                       .
        php                                     ; F066 08                       .
        beq     LF0A8                           ; F067 F0 3F                    .?
        sed                                     ; F069 F8                       .
        .byte   $FF                             ; F06A FF                       .
        .byte   $7F                             ; F06B 7F                       .
        brk                                     ; F06C 00                       .
        cpy     #$0F                            ; F06D C0 0F                    ..
        .byte   $FC                             ; F06F FC                       .
        .byte   $1F                             ; F070 1F                       .
        sed                                     ; F071 F8                       .
        .byte   $03                             ; F072 03                       .
        brk                                     ; F073 00                       .
        cpy     #$3F                            ; F074 C0 3F                    .?
        .byte   $FF                             ; F076 FF                       .
        .byte   $7F                             ; F077 7F                       .
        brk                                     ; F078 00                       .
        asl     $C0                             ; F079 06 C0                    ..
        .byte   $3F                             ; F07B 3F                       ?
        brk                                     ; F07C 00                       .
        .byte   $FF                             ; F07D FF                       .
        inc     LF800,x                         ; F07E FE 00 F8                 ...
        .byte   $E3                             ; F081 E3                       .
        .byte   $1F                             ; F082 1F                       .
        brk                                     ; F083 00                       .
        .byte   $FC                             ; F084 FC                       .
        .byte   $7F                             ; F085 7F                       .
        beq     LF088                           ; F086 F0 00                    ..
LF088:  .byte   $7C                             ; F088 7C                       |
        inc     LFC03,x                         ; F089 FE 03 FC                 ...
        brk                                     ; F08C 00                       .
        .byte   $FF                             ; F08D FF                       .
        brk                                     ; F08E 00                       .
        .byte   $3F                             ; F08F 3F                       ?
        cpx     #$1F                            ; F090 E0 1F                    ..
        cpx     #$1F                            ; F092 E0 1F                    ..
        .byte   $FC                             ; F094 FC                       .
        .byte   $03                             ; F095 03                       .
        sei                                     ; F096 78                       x
        cpy     #$3F                            ; F097 C0 3F                    .?
        cpy     #$1F                            ; F099 C0 1F                    ..
        beq     LF0A4                           ; F09B F0 07                    ..
        .byte   $7F                             ; F09D 7F                       .
        brk                                     ; F09E 00                       .
        inc     $0783,x                         ; F09F FE 83 07                 ...
        cpx     #$FF                            ; F0A2 E0 FF                    ..
LF0A4:  brk                                     ; F0A4 00                       .
        .byte   $02                             ; F0A5 02                       .
        sed                                     ; F0A6 F8                       .
        .byte   $0F                             ; F0A7 0F                       .
LF0A8:  sed                                     ; F0A8 F8                       .
        .byte   $FF                             ; F0A9 FF                       .
        .byte   $1F                             ; F0AA 1F                       .
        brk                                     ; F0AB 00                       .
        inc     a:$3F,x                         ; F0AC FE 3F 00                 .?.
        .byte   $80                             ; F0AF 80                       .
        .byte   $3F                             ; F0B0 3F                       ?
        beq     LF0D2                           ; F0B1 F0 1F                    ..
        .byte   $FC                             ; F0B3 FC                       .
        .byte   $07                             ; F0B4 07                       .
        beq     LF0BE                           ; F0B5 F0 07                    ..
        sed                                     ; F0B7 F8                       .
        ora     ($FF,x)                         ; F0B8 01 FF                    ..
        ora     ($FF,x)                         ; F0BA 01 FF                    ..
        cpy     #$3F                            ; F0BC C0 3F                    .?
LF0BE:  brk                                     ; F0BE 00                       .
        brk                                     ; F0BF 00                       .
        .byte   $FF                             ; F0C0 FF                       .
        .byte   $3F                             ; F0C1 3F                       ?
        beq     LF0D3                           ; F0C2 F0 0F                    ..
        brk                                     ; F0C4 00                       .
        brk                                     ; F0C5 00                       .
        .byte   $FF                             ; F0C6 FF                       .
        sbc     ($FF,x)                         ; F0C7 E1 FF                    ..
        .byte   $73                             ; F0C9 73                       s
        cmp     ($03,x)                         ; F0CA C1 03                    ..
        .byte   $80                             ; F0CC 80                       .
        .byte   $3F                             ; F0CD 3F                       ?
        cpx     #$3F                            ; F0CE E0 3F                    .?
        sed                                     ; F0D0 F8                       .
        .byte   $07                             ; F0D1 07                       .
LF0D2:  sed                                     ; F0D2 F8                       .
LF0D3:  .byte   $03                             ; F0D3 03                       .
        beq     LF059                           ; F0D4 F0 83                    ..
        .byte   $FF                             ; F0D6 FF                       .
        .byte   $03                             ; F0D7 03                       .
        .byte   $FC                             ; F0D8 FC                       .
        brk                                     ; F0D9 00                       .
        .byte   $03                             ; F0DA 03                       .
        .byte   $F0                             ; F0DB F0                       .
LF0DC:  .byte   $FF                             ; F0DC FF                       .
        .byte   $3F                             ; F0DD 3F                       ?
        .byte   $80                             ; F0DE 80                       .
        .byte   $1F                             ; F0DF 1F                       .
        beq     LF0F1                           ; F0E0 F0 0F                    ..
        cpx     #$3F                            ; F0E2 E0 3F                    .?
        beq     LF0F5                           ; F0E4 F0 0F                    ..
        beq     LF107                           ; F0E6 F0 1F                    ..
        .byte   $80                             ; F0E8 80                       .
        .byte   $FF                             ; F0E9 FF                       .
        sbc     $E01F,x                         ; F0EA FD 1F E0                 ...
        .byte   $0F                             ; F0ED 0F                       .
        brk                                     ; F0EE 00                       .
        .byte   $80                             ; F0EF 80                       .
        .byte   $FF                             ; F0F0 FF                       .
LF0F1:  .byte   $3F                             ; F0F1 3F                       ?
        brk                                     ; F0F2 00                       .
        sed                                     ; F0F3 F8                       .
        .byte   $03                             ; F0F4 03                       .
LF0F5:  sed                                     ; F0F5 F8                       .
        ora     ($FF,x)                         ; F0F6 01 FF                    ..
        .byte   $03                             ; F0F8 03                       .
        .byte   $3F                             ; F0F9 3F                       ?
        cpx     #$1F                            ; F0FA E0 1F                    ..
        cpy     #$FF                            ; F0FC C0 FF                    ..
        brk                                     ; F0FE 00                       .
        .byte   $FF                             ; F0FF FF                       .
        .byte   $03                             ; F100 03                       .
        beq     LF112                           ; F101 F0 0F                    ..
        brk                                     ; F103 00                       .
        .byte   $FF                             ; F104 FF                       .
        .byte   $FF                             ; F105 FF                       .
        .byte   $03                             ; F106 03                       .
LF107:  brk                                     ; F107 00                       .
        sed                                     ; F108 F8                       .
        .byte   $0F                             ; F109 0F                       .
        .byte   $80                             ; F10A 80                       .
        .byte   $FF                             ; F10B FF                       .
        ora     ($F8,x)                         ; F10C 01 F8                    ..
        .byte   $1F                             ; F10E 1F                       .
        beq     LF130                           ; F10F F0 1F                    ..
        .byte   $E0                             ; F111 E0                       .
LF112:  .byte   $3F                             ; F112 3F                       ?
        brk                                     ; F113 00                       .
        .byte   $1F                             ; F114 1F                       .
        inc     LFF03,x                         ; F115 FE 03 FF                 ...
        brk                                     ; F118 00                       .
        brk                                     ; F119 00                       .
        .byte   $1F                             ; F11A 1F                       .
        .byte   $FF                             ; F11B FF                       .
        .byte   $F3                             ; F11C F3                       .
        .byte   $7F                             ; F11D 7F                       .
        brk                                     ; F11E 00                       .
        .byte   $F0                             ; F11F F0                       .
LF120:  .byte   $FF                             ; F120 FF                       .
        ora     ($7C,x)                         ; F121 01 7C                    .|
        brk                                     ; F123 00                       .
        sed                                     ; F124 F8                       .
        .byte   $3F                             ; F125 3F                       ?
        brk                                     ; F126 00                       .
        .byte   $FF                             ; F127 FF                       .
        .byte   $07                             ; F128 07                       .
        cpx     #$07                            ; F129 E0 07                    ..
        .byte   $FC                             ; F12B FC                       .
        .byte   $FF                             ; F12C FF                       .
        ora     ($C0,x)                         ; F12D 01 C0                    ..
        .byte   $3F                             ; F12F 3F                       ?
LF130:  .byte   $80                             ; F130 80                       .
        .byte   $FF                             ; F131 FF                       .
        .byte   $07                             ; F132 07                       .
        cpy     #$1F                            ; F133 C0 1F                    ..
        brk                                     ; F135 00                       .
        .byte   $FC                             ; F136 FC                       .
        .byte   $0F                             ; F137 0F                       .
        sed                                     ; F138 F8                       .
        .byte   $07                             ; F139 07                       .
        .byte   $80                             ; F13A 80                       .
        .byte   $FF                             ; F13B FF                       .
        .byte   $3F                             ; F13C 3F                       ?
        brk                                     ; F13D 00                       .
        .byte   $D7                             ; F13E D7                       .
        .byte   $3F                             ; F13F 3F                       ?
        brk                                     ; F140 00                       .
        .byte   $80                             ; F141 80                       .
        .byte   $FF                             ; F142 FF                       .
        .byte   $FF                             ; F143 FF                       .
        ora     ($00,x)                         ; F144 01 00                    ..
        inc     a:$03,x                         ; F146 FE 03 00                 ...
        .byte   $FC                             ; F149 FC                       .
        .byte   $1F                             ; F14A 1F                       .
        beq     LF16C                           ; F14B F0 1F                    ..
        cpx     #$3F                            ; F14D E0 3F                    .?
        cpy     #$FF                            ; F14F C0 FF                    ..
        brk                                     ; F151 00                       .
        .byte   $F0                             ; F152 F0                       .
LF153:  .byte   $FF                             ; F153 FF                       .
        brk                                     ; F154 00                       .
        inc     LFE3F,x                         ; F155 FE 3F FE                 .?.
        ora     ($80,x)                         ; F158 01 80                    ..
        .byte   $FF                             ; F15A FF                       .
        .byte   $03                             ; F15B 03                       .
        cpx     #$3F                            ; F15C E0 3F                    .?
        brk                                     ; F15E 00                       .
        .byte   $FF                             ; F15F FF                       .
        .byte   $1F                             ; F160 1F                       .
        cpx     #$0F                            ; F161 E0 0F                    ..
        .byte   $80                             ; F163 80                       .
        .byte   $3F                             ; F164 3F                       ?
        cpx     #$FF                            ; F165 E0 FF                    ..
        .byte   $3F                             ; F167 3F                       ?
        brk                                     ; F168 00                       .
        cpy     #$83                            ; F169 C0 83                    ..
        .byte   $7F                             ; F16B 7F                       .
LF16C:  beq     LF171                           ; F16C F0 03                    ..
        inc     $1C01,x                         ; F16E FE 01 1C                 ...
LF171:  sed                                     ; F171 F8                       .
        .byte   $03                             ; F172 03                       .
        .byte   $FF                             ; F173 FF                       .
        bcs     LF176                           ; F174 B0 00                    ..
LF176:  .byte   $FF                             ; F176 FF                       .
        ora     ($7E,x)                         ; F177 01 7E                    .~
        brk                                     ; F179 00                       .
        .byte   $FC                             ; F17A FC                       .
        .byte   $7F                             ; F17B 7F                       .
        .byte   $80                             ; F17C 80                       .
        .byte   $1F                             ; F17D 1F                       .
        ror     LFF80,x                         ; F17E 7E 80 FF                 ~..
        .byte   $80                             ; F181 80                       .
        .byte   $FF                             ; F182 FF                       .
        cpy     #$1F                            ; F183 C0 1F                    ..
        brk                                     ; F185 00                       .
        .byte   $FC                             ; F186 FC                       .
        .byte   $07                             ; F187 07                       .
        .byte   $7C                             ; F188 7C                       |
        cpy     #$FF                            ; F189 C0 FF                    ..
        .byte   $FF                             ; F18B FF                       .
        brk                                     ; F18C 00                       .
        cpy     #$FE                            ; F18D C0 FE                    ..
        .byte   $03                             ; F18F 03                       .
        inc     $1F80,x                         ; F190 FE 80 1F                 ...
        .byte   $80                             ; F193 80                       .
        .byte   $C7                             ; F194 C7                       .
        .byte   $EF                             ; F195 EF                       .
        .byte   $07                             ; F196 07                       .
        cpx     #$07                            ; F197 E0 07                    ..
        beq     LF1AA                           ; F199 F0 0F                    ..
        inc     $C003,x                         ; F19B FE 03 C0                 ...
        .byte   $0F                             ; F19E 0F                       .
        beq     LF1B0                           ; F19F F0 0F                    ..
        .byte   $FC                             ; F1A1 FC                       .
        .byte   $07                             ; F1A2 07                       .
        .byte   $FC                             ; F1A3 FC                       .
        brk                                     ; F1A4 00                       .
        .byte   $FF                             ; F1A5 FF                       .
        .byte   $1F                             ; F1A6 1F                       .
        cpy     #$01                            ; F1A7 C0 01                    ..
        .byte   $FC                             ; F1A9 FC                       .
LF1AA:  .byte   $07                             ; F1AA 07                       .
        .byte   $FF                             ; F1AB FF                       .
        cpy     #$1F                            ; F1AC C0 1F                    ..
        cpy     #$0F                            ; F1AE C0 0F                    ..
LF1B0:  beq     LF1D1                           ; F1B0 F0 1F                    ..
        sec                                     ; F1B2 38                       8
LF1B3:  .byte   $80                             ; F1B3 80                       .
        .byte   $FF                             ; F1B4 FF                       .
        .byte   $80                             ; F1B5 80                       .
        .byte   $FF                             ; F1B6 FF                       .
        ora     ($F8,x)                         ; F1B7 01 F8                    ..
        .byte   $1F                             ; F1B9 1F                       .
        .byte   $80                             ; F1BA 80                       .
        .byte   $FF                             ; F1BB FF                       .
        .byte   $3F                             ; F1BC 3F                       ?
        brk                                     ; F1BD 00                       .
        brk                                     ; F1BE 00                       .
        .byte   $F0                             ; F1BF F0                       .
LF1C0:  .byte   $FF                             ; F1C0 FF                       .
        .byte   $0F                             ; F1C1 0F                       .
        brk                                     ; F1C2 00                       .
        sed                                     ; F1C3 F8                       .
        .byte   $1F                             ; F1C4 1F                       .
        sed                                     ; F1C5 F8                       .
        .byte   $1F                             ; F1C6 1F                       .
        brk                                     ; F1C7 00                       .
        .byte   $7F                             ; F1C8 7F                       .
        brk                                     ; F1C9 00                       .
        inc     $7FFF,x                         ; F1CA FE FF 7F                 ...
        brk                                     ; F1CD 00                       .
        brk                                     ; F1CE 00                       .
        .byte   $FE                             ; F1CF FE                       .
        .byte   $7F                             ; F1D0 7F                       .
LF1D1:  brk                                     ; F1D1 00                       .
        cpy     #$FF                            ; F1D2 C0 FF                    ..
        .byte   $07                             ; F1D4 07                       .
        cpy     #$FF                            ; F1D5 C0 FF                    ..
        .byte   $07                             ; F1D7 07                       .
        cpy     #$FF                            ; F1D8 C0 FF                    ..
        brk                                     ; F1DA 00                       .
        inc     a:$1F,x                         ; F1DB FE 1F 00                 ...
        inc     LF003,x                         ; F1DE FE 03 F0                 ...
        .byte   $1F                             ; F1E1 1F                       .
        cpy     #$FF                            ; F1E2 C0 FF                    ..
        ora     ($FE,x)                         ; F1E4 01 FE                    ..
        .byte   $07                             ; F1E6 07                       .
        cpy     #$7F                            ; F1E7 C0 7F                    ..
        brk                                     ; F1E9 00                       .
        .byte   $FF                             ; F1EA FF                       .
        .byte   $0F                             ; F1EB 0F                       .
        cpy     #$1F                            ; F1EC C0 1F                    ..
        brk                                     ; F1EE 00                       .
        .byte   $FC                             ; F1EF FC                       .
        .byte   $07                             ; F1F0 07                       .
        sed                                     ; F1F1 F8                       .
        .byte   $0F                             ; F1F2 0F                       .
        cpy     #$7F                            ; F1F3 C0 7F                    ..
        .byte   $80                             ; F1F5 80                       .
        .byte   $FF                             ; F1F6 FF                       .
        brk                                     ; F1F7 00                       .
        .byte   $FF                             ; F1F8 FF                       .
        brk                                     ; F1F9 00                       .
        sed                                     ; F1FA F8                       .
        .byte   $1F                             ; F1FB 1F                       .
        cpx     #$1F                            ; F1FC E0 1F                    ..
        cpy     #$3F                            ; F1FE C0 3F                    .?
        .byte   $80                             ; F200 80                       .
        .byte   $FF                             ; F201 FF                       .
        brk                                     ; F202 00                       .
        inc     LFC03,x                         ; F203 FE 03 FC                 ...
        ora     ($FF,x)                         ; F206 01 FF                    ..
        .byte   $80                             ; F208 80                       .
        .byte   $7F                             ; F209 7F                       .
        .byte   $80                             ; F20A 80                       .
        .byte   $7F                             ; F20B 7F                       .
        .byte   $80                             ; F20C 80                       .
        .byte   $3F                             ; F20D 3F                       ?
        .byte   $80                             ; F20E 80                       .
        .byte   $7F                             ; F20F 7F                       .
        beq     LF219                           ; F210 F0 07                    ..
        inc     LFF00,x                         ; F212 FE 00 FF                 ...
        .byte   $80                             ; F215 80                       .
        .byte   $1F                             ; F216 1F                       .
        sed                                     ; F217 F8                       .
        .byte   $07                             ; F218 07                       .
LF219:  ror     $3FC0,x                         ; F219 7E C0 3F                 ~.?
        cpx     #$83                            ; F21C E0 83                    ..
        .byte   $1F                             ; F21E 1F                       .
        beq     LF224                           ; F21F F0 03                    ..
        ror     $0FC0,x                         ; F221 7E C0 0F                 ~..
LF224:  .byte   $7C                             ; F224 7C                       |
        beq     LF22E                           ; F225 F0 07                    ..
        inc     $03E0,x                         ; F227 FE E0 03                 ...
        ror     $83E0,x                         ; F22A 7E E0 83                 ~..
        .byte   $1F                             ; F22D 1F                       .
LF22E:  beq     LF1B3                           ; F22E F0 83                    ..
        .byte   $0F                             ; F230 0F                       .
        ror     $07E0,x                         ; F231 7E E0 07                 ~..
        asl     $C0FC,x                         ; F234 1E FC C0                 ...
        .byte   $FF                             ; F237 FF                       .
        .byte   $03                             ; F238 03                       .
        ror     $0FC0,x                         ; F239 7E C0 0F                 ~..
        sed                                     ; F23C F8                       .
        .byte   $0F                             ; F23D 0F                       .
        sed                                     ; F23E F8                       .
        ora     ($F0,x)                         ; F23F 01 F0                    ..
        .byte   $07                             ; F241 07                       .
        .byte   $3F                             ; F242 3F                       ?
        sec                                     ; F243 38                       8
        .byte   $7C                             ; F244 7C                       |
        cpx     #$E3                            ; F245 E0 E3                    ..
        .byte   $03                             ; F247 03                       .
        .byte   $1F                             ; F248 1F                       .
        .byte   $03                             ; F249 03                       .
        .byte   $1F                             ; F24A 1F                       .
        sed                                     ; F24B F8                       .
        .byte   $1F                             ; F24C 1F                       .
        sed                                     ; F24D F8                       .
        ora     $03F0                           ; F24E 0D F0 03                 ...
        inc     $E061,x                         ; F251 FE 61 E0                 .a.
        cmp     ($7F,x)                         ; F254 C1 7F                    ..
        cpx     #$37                            ; F256 E0 37                    .7
        beq     LF25A                           ; F258 F0 00                    ..
LF25A:  beq     LF2DA                           ; F25A F0 7E                    .~
        .byte   $7C                             ; F25C 7C                       |
        .byte   $FC                             ; F25D FC                       .
        ora     ($F8,x)                         ; F25E 01 F8                    ..
        ora     ($7F,x)                         ; F260 01 7F                    ..
        .byte   $80                             ; F262 80                       .
        .byte   $FF                             ; F263 FF                       .
        ora     ($FE,x)                         ; F264 01 FE                    ..
        brk                                     ; F266 00                       .
        .byte   $7F                             ; F267 7F                       .
        cpx     #$83                            ; F268 E0 83                    ..
        .byte   $FB                             ; F26A FB                       .
        .byte   $0F                             ; F26B 0F                       .
        cpx     #$BF                            ; F26C E0 BF                    ..
        brk                                     ; F26E 00                       .
        .byte   $FC                             ; F26F FC                       .
        brk                                     ; F270 00                       .
        inc     $3FE1,x                         ; F271 FE E1 3F                 ..?
        brk                                     ; F274 00                       .
        ror     LFF00,x                         ; F275 7E 00 FF                 ~..
        .byte   $07                             ; F278 07                       .
        sed                                     ; F279 F8                       .
        .byte   $07                             ; F27A 07                       .
        sed                                     ; F27B F8                       .
        .byte   $87                             ; F27C 87                       .
        .byte   $02                             ; F27D 02                       .
        sed                                     ; F27E F8                       .
        .byte   $1F                             ; F27F 1F                       .
        cpx     #$1F                            ; F280 E0 1F                    ..
        cpx     #$1F                            ; F282 E0 1F                    ..
        sed                                     ; F284 F8                       .
        brk                                     ; F285 00                       .
        inc     LFE07,x                         ; F286 FE 07 FE                 ...
        brk                                     ; F289 00                       .
        .byte   $3F                             ; F28A 3F                       ?
        cpx     #$0F                            ; F28B E0 0F                    ..
        beq     LF2AE                           ; F28D F0 1F                    ..
        cpy     #$3F                            ; F28F C0 3F                    .?
        cpx     #$1F                            ; F291 E0 1F                    ..
        beq     LF2A4                           ; F293 F0 0F                    ..
        beq     LF2A6                           ; F295 F0 0F                    ..
        sed                                     ; F297 F8                       .
        .byte   $03                             ; F298 03                       .
        inc     LFF00,x                         ; F299 FE 00 FF                 ...
        .byte   $80                             ; F29C 80                       .
        .byte   $3F                             ; F29D 3F                       ?
        beq     LF2A3                           ; F29E F0 03                    ..
        ror     $0FE0,x                         ; F2A0 7E E0 0F                 ~..
LF2A3:  .byte   $F0                             ; F2A3 F0                       .
LF2A4:  .byte   $07                             ; F2A4 07                       .
        .byte   $FC                             ; F2A5 FC                       .
LF2A6:  .byte   $03                             ; F2A6 03                       .
        .byte   $FC                             ; F2A7 FC                       .
        sta     ($3F,x)                         ; F2A8 81 3F                    .?
        cpx     #$03                            ; F2AA E0 03                    ..
        .byte   $FE                             ; F2AC FE                       .
        .byte   $03                             ; F2AD 03                       .
LF2AE:  .byte   $3F                             ; F2AE 3F                       ?
        cpy     #$4F                            ; F2AF C0 4F                    .O
        inc     $09,x                           ; F2B1 F6 09                    ..
        beq     LF2BC                           ; F2B3 F0 07                    ..
LF2B5:  .byte   $F0                             ; F2B5 F0                       .
LF2B6:  .byte   $FF                             ; F2B6 FF                       .
        brk                                     ; F2B7 00                       .
        sed                                     ; F2B8 F8                       .
        inx                                     ; F2B9 E8                       .
        .byte   $FD                             ; F2BA FD                       .
        .byte   $07                             ; F2BB 07                       .
LF2BC:  sed                                     ; F2BC F8                       .
        .byte   $07                             ; F2BD 07                       .
        beq     LF2C7                           ; F2BE F0 07                    ..
        cpx     #$07                            ; F2C0 E0 07                    ..
        beq     LF2B5                           ; F2C2 F0 F1                    ..
        .byte   $3F                             ; F2C4 3F                       ?
        cpy     #$3F                            ; F2C5 C0 3F                    .?
LF2C7:  beq     LF2D8                           ; F2C7 F0 0F                    ..
        cpx     #$0F                            ; F2C9 E0 0F                    ..
        .byte   $FF                             ; F2CB FF                       .
        brk                                     ; F2CC 00                       .
        ror     $0700,x                         ; F2CD 7E 00 07                 ~..
        asl     $1FF0,x                         ; F2D0 1E F0 1F                 ...
        sed                                     ; F2D3 F8                       .
        .byte   $07                             ; F2D4 07                       .
        inc     $7F01,x                         ; F2D5 FE 01 7F                 ...
LF2D8:  cpy     #$7F                            ; F2D8 C0 7F                    ..
LF2DA:  cpy     #$1F                            ; F2DA C0 1F                    ..
        sei                                     ; F2DC 78                       x
        brk                                     ; F2DD 00                       .
        .byte   $FC                             ; F2DE FC                       .
        .byte   $0F                             ; F2DF 0F                       .
        sed                                     ; F2E0 F8                       .
        ora     ($7E,x)                         ; F2E1 01 7E                    .~
        .byte   $80                             ; F2E3 80                       .
        .byte   $7F                             ; F2E4 7F                       .
        cpy     #$7F                            ; F2E5 C0 7F                    ..
        cpx     #$3F                            ; F2E7 E0 3F                    .?
        cpx     #$07                            ; F2E9 E0 07                    ..
        beq     LF2F4                           ; F2EB F0 07                    ..
        sed                                     ; F2ED F8                       .
        .byte   $03                             ; F2EE 03                       .
        .byte   $FC                             ; F2EF FC                       .
        .byte   $83                             ; F2F0 83                       .
        .byte   $FF                             ; F2F1 FF                       .
        cpy     #$3F                            ; F2F2 C0 3F                    .?
LF2F4:  cpy     #$3F                            ; F2F4 C0 3F                    .?
        cpy     #$3F                            ; F2F6 C0 3F                    .?
        cpy     #$03                            ; F2F8 C0 03                    ..
        sed                                     ; F2FA F8                       .
        .byte   $07                             ; F2FB 07                       .
        sed                                     ; F2FC F8                       .
        .byte   $03                             ; F2FD 03                       .
        .byte   $FC                             ; F2FE FC                       .
        cmp     ($1F,x)                         ; F2FF C1 1F                    ..
        cpy     #$1F                            ; F301 C0 1F                    ..
        inc     LFE01,x                         ; F303 FE 01 FE                 ...
        .byte   $03                             ; F306 03                       .
        .byte   $FC                             ; F307 FC                       .
        sta     ($7F,x)                         ; F308 81 7F                    ..
        .byte   $80                             ; F30A 80                       .
        .byte   $FF                             ; F30B FF                       .
        brk                                     ; F30C 00                       .
        .byte   $FC                             ; F30D FC                       .
        cpy     #$1F                            ; F30E C0 1F                    ..
        cpy     #$17                            ; F310 C0 17                    ..
        dec     LFE02,x                         ; F312 DE 02 FE                 ...
        .byte   $80                             ; F315 80                       .
        .byte   $7F                             ; F316 7F                       .
        brk                                     ; F317 00                       .
        inc     LFC03,x                         ; F318 FE 03 FC                 ...
        .byte   $07                             ; F31B 07                       .
        inc     LFF01,x                         ; F31C FE 01 FF                 ...
        brk                                     ; F31F 00                       .
        .byte   $FF                             ; F320 FF                       .
        brk                                     ; F321 00                       .
        .byte   $FF                             ; F322 FF                       .
        cpy     #$07                            ; F323 C0 07                    ..
        .byte   $FC                             ; F325 FC                       .
        ora     ($FE,x)                         ; F326 01 FE                    ..
        brk                                     ; F328 00                       .
        .byte   $7F                             ; F329 7F                       .
        cpy     #$0F                            ; F32A C0 0F                    ..
        cpx     #$0F                            ; F32C E0 0F                    ..
        sed                                     ; F32E F8                       .
        .byte   $07                             ; F32F 07                       .
        .byte   $FC                             ; F330 FC                       .
        .byte   $03                             ; F331 03                       .
        inc     $7F80,x                         ; F332 FE 80 7F                 ...
        cpy     #$3F                            ; F335 C0 3F                    .?
        beq     LF348                           ; F337 F0 0F                    ..
        sed                                     ; F339 F8                       .
        .byte   $03                             ; F33A 03                       .
        inc     $1FC0,x                         ; F33B FE C0 1F                 ...
        sed                                     ; F33E F8                       .
        ora     ($FF,x)                         ; F33F 01 FF                    ..
        .byte   $80                             ; F341 80                       .
        .byte   $87                             ; F342 87                       .
        lsr     $95,x                           ; F343 56 95                    V.
        pla                                     ; F345 68                       h
        eor     $68,x                           ; F346 55 68                    Uh
LF348:  .byte   $0B                             ; F348 0B                       .
        .byte   $89                             ; F349 89                       .
        .byte   $3F                             ; F34A 3F                       ?
        ldy     #$5F                            ; F34B A0 5F                    ._
        bvs     LF35A                           ; F34D 70 0B                    p.
        .byte   $FC                             ; F34F FC                       .
        .byte   $03                             ; F350 03                       .
        .byte   $FF                             ; F351 FF                       .
        .byte   $80                             ; F352 80                       .
        .byte   $FF                             ; F353 FF                       .
        cpy     #$3F                            ; F354 C0 3F                    .?
        beq     LF377                           ; F356 F0 1F                    ..
        .byte   $FC                             ; F358 FC                       .
        .byte   $81                             ; F359 81                       .
LF35A:  .byte   $1F                             ; F35A 1F                       .
        cpx     #$07                            ; F35B E0 07                    ..
        cpx     #$01                            ; F35D E0 01                    ..
        sed                                     ; F35F F8                       .
        brk                                     ; F360 00                       .
        asl     $3FA0,x                         ; F361 1E A0 3F                 ..?
        .byte   $FA                             ; F364 FA                       .
        .byte   $47                             ; F365 47                       G
        .byte   $FF                             ; F366 FF                       .
        sta     ($FF,x)                         ; F367 81 FF                    ..
        sbc     ($1F),y                         ; F369 F1 1F                    ..
        ror     a                               ; F36B 6A                       j
        sta     $3E                             ; F36C 85 3E                    .>
        brk                                     ; F36E 00                       .
        .byte   $1F                             ; F36F 1F                       .
        .byte   $80                             ; F370 80                       .
        .byte   $03                             ; F371 03                       .
        cpx     #$03                            ; F372 E0 03                    ..
        sed                                     ; F374 F8                       .
        .byte   $07                             ; F375 07                       .
        .byte   $FF                             ; F376 FF                       .
LF377:  .byte   $FF                             ; F377 FF                       .
        .byte   $3F                             ; F378 3F                       ?
        .byte   $5F                             ; F379 5F                       _
        cpy     #$7F                            ; F37A C0 7F                    ..
        brk                                     ; F37C 00                       .
        asl     $0500,x                         ; F37D 1E 00 05                 ...
        cpx     #$03                            ; F380 E0 03                    ..
        .byte   $FC                             ; F382 FC                       .
        sbc     LFFFF,y                         ; F383 F9 FF FF                 ...
        lda     #$CA                            ; F386 A9 CA                    ..
        .byte   $0B                             ; F388 0B                       .
        rts                                     ; F389 60                       `

; ----------------------------------------------------------------------------
        brk                                     ; F38A 00                       .
        .byte   $34                             ; F38B 34                       4
        brk                                     ; F38C 00                       .
        .byte   $0F                             ; F38D 0F                       .
        .byte   $F0                             ; F38E F0                       .
LF38F:  .byte   $FF                             ; F38F FF                       .
        .byte   $E7                             ; F390 E7                       .
        .byte   $FF                             ; F391 FF                       .
        .byte   $A7                             ; F392 A7                       .
        .byte   $FF                             ; F393 FF                       .
        brk                                     ; F394 00                       .
        .byte   $07                             ; F395 07                       .
        brk                                     ; F396 00                       .
        ora     ($80,x)                         ; F397 01 80                    ..
        ora     ($FE,x)                         ; F399 01 FE                    ..
        .byte   $FF                             ; F39B FF                       .
        .byte   $FF                             ; F39C FF                       .
        .byte   $FF                             ; F39D FF                       .
        .byte   $7F                             ; F39E 7F                       .
LF39F:  brk                                     ; F39F 00                       .
        .byte   $0F                             ; F3A0 0F                       .
        brk                                     ; F3A1 00                       .
        brk                                     ; F3A2 00                       .
        brk                                     ; F3A3 00                       .
        .byte   $F2                             ; F3A4 F2                       .
        .byte   $FF                             ; F3A5 FF                       .
        .byte   $FF                             ; F3A6 FF                       .
        .byte   $FF                             ; F3A7 FF                       .
        .byte   $AF                             ; F3A8 AF                       .
        .byte   $0F                             ; F3A9 0F                       .
        brk                                     ; F3AA 00                       .
        brk                                     ; F3AB 00                       .
        brk                                     ; F3AC 00                       .
        beq     LF39F                           ; F3AD F0 F0                    ..
        .byte   $FF                             ; F3AF FF                       .
        .byte   $FF                             ; F3B0 FF                       .
        .byte   $7F                             ; F3B1 7F                       .
        asl     a                               ; F3B2 0A                       .
        brk                                     ; F3B3 00                       .
        brk                                     ; F3B4 00                       .
        brk                                     ; F3B5 00                       .
        sed                                     ; F3B6 F8                       .
        .byte   $FF                             ; F3B7 FF                       .
        .byte   $FF                             ; F3B8 FF                       .
        .byte   $FF                             ; F3B9 FF                       .
        .byte   $7F                             ; F3BA 7F                       .
        brk                                     ; F3BB 00                       .
        brk                                     ; F3BC 00                       .
        brk                                     ; F3BD 00                       .
        .byte   $80                             ; F3BE 80                       .
        .byte   $FF                             ; F3BF FF                       .
        .byte   $FF                             ; F3C0 FF                       .
        .byte   $FF                             ; F3C1 FF                       .
        .byte   $0F                             ; F3C2 0F                       .
        brk                                     ; F3C3 00                       .
        brk                                     ; F3C4 00                       .
        brk                                     ; F3C5 00                       .
        .byte   $FC                             ; F3C6 FC                       .
        .byte   $FF                             ; F3C7 FF                       .
        .byte   $FF                             ; F3C8 FF                       .
        .byte   $3F                             ; F3C9 3F                       ?
        brk                                     ; F3CA 00                       .
        brk                                     ; F3CB 00                       .
        brk                                     ; F3CC 00                       .
        .byte   $FC                             ; F3CD FC                       .
        .byte   $FF                             ; F3CE FF                       .
        .byte   $FF                             ; F3CF FF                       .
        .byte   $FF                             ; F3D0 FF                       .
        ora     ($00,x)                         ; F3D1 01 00                    ..
        brk                                     ; F3D3 00                       .
        sed                                     ; F3D4 F8                       .
        .byte   $FF                             ; F3D5 FF                       .
        .byte   $FF                             ; F3D6 FF                       .
        .byte   $0F                             ; F3D7 0F                       .
        brk                                     ; F3D8 00                       .
        brk                                     ; F3D9 00                       .
        cpy     #$FF                            ; F3DA C0 FF                    ..
        .byte   $FF                             ; F3DC FF                       .
        .byte   $FF                             ; F3DD FF                       .
        ora     ($00,x)                         ; F3DE 01 00                    ..
        brk                                     ; F3E0 00                       .
        sed                                     ; F3E1 F8                       .
        .byte   $FF                             ; F3E2 FF                       .
        .byte   $FF                             ; F3E3 FF                       .
        .byte   $07                             ; F3E4 07                       .
        brk                                     ; F3E5 00                       .
        brk                                     ; F3E6 00                       .
        sed                                     ; F3E7 F8                       .
        .byte   $FF                             ; F3E8 FF                       .
        .byte   $FF                             ; F3E9 FF                       .
        ora     ($00,x)                         ; F3EA 01 00                    ..
        .byte   $80                             ; F3EC 80                       .
        .byte   $FF                             ; F3ED FF                       .
        .byte   $FF                             ; F3EE FF                       .
        .byte   $1F                             ; F3EF 1F                       .
        brk                                     ; F3F0 00                       .
        brk                                     ; F3F1 00                       .
        sed                                     ; F3F2 F8                       .
        .byte   $FF                             ; F3F3 FF                       .
        .byte   $FF                             ; F3F4 FF                       .
        ora     ($00,x)                         ; F3F5 01 00                    ..
        cpy     #$FF                            ; F3F7 C0 FF                    ..
        .byte   $FF                             ; F3F9 FF                       .
        .byte   $07                             ; F3FA 07                       .
        brk                                     ; F3FB 00                       .
        brk                                     ; F3FC 00                       .
        .byte   $FF                             ; F3FD FF                       .
        .byte   $FF                             ; F3FE FF                       .
        .byte   $0F                             ; F3FF 0F                       .
        brk                                     ; F400 00                       .
        brk                                     ; F401 00                       .
        .byte   $FF                             ; F402 FF                       .
        .byte   $FF                             ; F403 FF                       .
        .byte   $07                             ; F404 07                       .
        brk                                     ; F405 00                       .
        .byte   $80                             ; F406 80                       .
        .byte   $FF                             ; F407 FF                       .
        .byte   $FF                             ; F408 FF                       .
        .byte   $03                             ; F409 03                       .
        brk                                     ; F40A 00                       .
        cpx     #$FF                            ; F40B E0 FF                    ..
        .byte   $7F                             ; F40D 7F                       .
        brk                                     ; F40E 00                       .
        brk                                     ; F40F 00                       .
        .byte   $FC                             ; F410 FC                       .
        .byte   $FF                             ; F411 FF                       .
        .byte   $0F                             ; F412 0F                       .
        brk                                     ; F413 00                       .
        cpx     #$FF                            ; F414 E0 FF                    ..
        .byte   $7F                             ; F416 7F                       .
        brk                                     ; F417 00                       .
        brk                                     ; F418 00                       .
        .byte   $FF                             ; F419 FF                       .
        .byte   $FF                             ; F41A FF                       .
        .byte   $03                             ; F41B 03                       .
        brk                                     ; F41C 00                       .
        sed                                     ; F41D F8                       .
        .byte   $FF                             ; F41E FF                       .
        .byte   $07                             ; F41F 07                       .
        brk                                     ; F420 00                       .
        .byte   $F0                             ; F421 F0                       .
LF422:  .byte   $FF                             ; F422 FF                       .
        .byte   $1F                             ; F423 1F                       .
        brk                                     ; F424 00                       .
        cpx     #$FF                            ; F425 E0 FF                    ..
        .byte   $1F                             ; F427 1F                       .
        brk                                     ; F428 00                       .
        .byte   $F0                             ; F429 F0                       .
LF42A:  .byte   $FF                             ; F42A FF                       .
        .byte   $0F                             ; F42B 0F                       .
        brk                                     ; F42C 00                       .
        sed                                     ; F42D F8                       .
        .byte   $FF                             ; F42E FF                       .
        .byte   $03                             ; F42F 03                       .
        brk                                     ; F430 00                       .
        inc     a:$7F,x                         ; F431 FE 7F 00                 ...
        cpy     #$FF                            ; F434 C0 FF                    ..
        .byte   $1F                             ; F436 1F                       .
        brk                                     ; F437 00                       .
        sed                                     ; F438 F8                       .
        .byte   $FF                             ; F439 FF                       .
        ora     ($80,x)                         ; F43A 01 80                    ..
        .byte   $07                             ; F43C 07                       .
        sed                                     ; F43D F8                       .
        .byte   $3F                             ; F43E 3F                       ?
        beq     LF450                           ; F43F F0 0F                    ..
        sed                                     ; F441 F8                       .
        .byte   $03                             ; F442 03                       .
        .byte   $FC                             ; F443 FC                       .
        cpx     #$15                            ; F444 E0 15                    ..
        sty     $FC,x                           ; F446 94 FC                    ..
        .byte   $07                             ; F448 07                       .
        sed                                     ; F449 F8                       .
        .byte   $03                             ; F44A 03                       .
        .byte   $FF                             ; F44B FF                       .
        .byte   $80                             ; F44C 80                       .
        .byte   $3F                             ; F44D 3F                       ?
        cpx     #$3F                            ; F44E E0 3F                    .?
LF450:  .byte   $80                             ; F450 80                       .
        .byte   $57                             ; F451 57                       W
        .byte   $F4                             ; F452 F4                       .
        .byte   $5F                             ; F453 5F                       _
        brk                                     ; F454 00                       .
        ror     $68E9,x                         ; F455 7E E9 68                 ~.h
        .byte   $07                             ; F458 07                       .
        cpx     #$3F                            ; F459 E0 3F                    .?
        sei                                     ; F45B 78                       x
        ora     ($7B,x)                         ; F45C 01 7B                    .{
        .byte   $BB                             ; F45E BB                       .
        .byte   $02                             ; F45F 02                       .
        .byte   $F4                             ; F460 F4                       .
        ror     $B6A0,x                         ; F461 7E A0 B6                 ~..
        .byte   $04                             ; F464 04                       .
        inc     LF807,x                         ; F465 FE 07 F8                 ...
        .byte   $03                             ; F468 03                       .
        .byte   $FC                             ; F469 FC                       .
        .byte   $07                             ; F46A 07                       .
        .byte   $FC                             ; F46B FC                       .
        ora     ($F8,x)                         ; F46C 01 F8                    ..
        .byte   $D7                             ; F46E D7                       .
        .byte   $02                             ; F46F 02                       .
        .byte   $17                             ; F470 17                       .
        cpx     #$7F                            ; F471 E0 7F                    ..
        .byte   $0B                             ; F473 0B                       .
        bne     LF4C5                           ; F474 D0 4F                    .O
        sed                                     ; F476 F8                       .
        .byte   $0F                             ; F477 0F                       .
        brk                                     ; F478 00                       .
        .byte   $FF                             ; F479 FF                       .
        .byte   $03                             ; F47A 03                       .
        .byte   $FC                             ; F47B FC                       .
        .byte   $07                             ; F47C 07                       .
        sed                                     ; F47D F8                       .
        sta     ($3F,x)                         ; F47E 81 3F                    .?
        beq     LF489                           ; F480 F0 07                    ..
        sed                                     ; F482 F8                       .
        ora     ($FF,x)                         ; F483 01 FF                    ..
        .byte   $80                             ; F485 80                       .
        .byte   $7F                             ; F486 7F                       .
        cpy     #$0F                            ; F487 C0 0F                    ..
LF489:  beq     LF49A                           ; F489 F0 0F                    ..
        .byte   $FC                             ; F48B FC                       .
        .byte   $80                             ; F48C 80                       .
        .byte   $7F                             ; F48D 7F                       .
        cpx     #$07                            ; F48E E0 07                    ..
        sed                                     ; F490 F8                       .
        lda     ($3E,x)                         ; F491 A1 3E                    .>
        eor     ($1B),y                         ; F493 51 1B                    Q.
        sed                                     ; F495 F8                       .
        .byte   $43                             ; F496 43                       C
        .byte   $FC                             ; F497 FC                       .
        brk                                     ; F498 00                       .
        .byte   $FF                             ; F499 FF                       .
LF49A:  cpy     #$0F                            ; F49A C0 0F                    ..
        sed                                     ; F49C F8                       .
        .byte   $07                             ; F49D 07                       .
        sed                                     ; F49E F8                       .
        .byte   $03                             ; F49F 03                       .
        inc     $4F01,x                         ; F4A0 FE 01 4F                 ..O
        .byte   $DC                             ; F4A3 DC                       .
        .byte   $92                             ; F4A4 92                       .
        lda     $3F80,x                         ; F4A5 BD 80 3F                 ..?
        ldy     #$77                            ; F4A8 A0 77                    .w
        sty     $3F                             ; F4AA 84 3F                    .?
        .byte   $04                             ; F4AC 04                       .
        .byte   $FF                             ; F4AD FF                       .
        brk                                     ; F4AE 00                       .
        .byte   $7F                             ; F4AF 7F                       .
        cpx     #$15                            ; F4B0 E0 15                    ..
        .byte   $FC                             ; F4B2 FC                       .
        .byte   $03                             ; F4B3 03                       .
        .byte   $FC                             ; F4B4 FC                       .
        ora     ($FF,x)                         ; F4B5 01 FF                    ..
        brk                                     ; F4B7 00                       .
        .byte   $7F                             ; F4B8 7F                       .
        cpy     #$1F                            ; F4B9 C0 1F                    ..
        beq     LF4DC                           ; F4BB F0 1F                    ..
        beq     LF4C6                           ; F4BD F0 07                    ..
        sed                                     ; F4BF F8                       .
        .byte   $03                             ; F4C0 03                       .
        inc     $3F01,x                         ; F4C1 FE 01 3F                 ..?
        .byte   $E0                             ; F4C4 E0                       .
LF4C5:  .byte   $1F                             ; F4C5 1F                       .
LF4C6:  beq     LF4CF                           ; F4C6 F0 07                    ..
        .byte   $DC                             ; F4C8 DC                       .
        ora     #$9F                            ; F4C9 09 9F                    ..
        bne     LF4D4                           ; F4CB D0 07                    ..
        .byte   $FC                             ; F4CD FC                       .
        .byte   $03                             ; F4CE 03                       .
LF4CF:  inc     LFE01,x                         ; F4CF FE 01 FE                 ...
        ora     ($FE,x)                         ; F4D2 01 FE                    ..
LF4D4:  .byte   $80                             ; F4D4 80                       .
        .byte   $3F                             ; F4D5 3F                       ?
        cpy     #$1F                            ; F4D6 C0 1F                    ..
        beq     LF4E1                           ; F4D8 F0 07                    ..
        .byte   $FC                             ; F4DA FC                       .
        .byte   $03                             ; F4DB 03                       .
LF4DC:  .byte   $FC                             ; F4DC FC                       .
        .byte   $03                             ; F4DD 03                       .
        .byte   $FC                             ; F4DE FC                       .
        sta     ($3F,x)                         ; F4DF 81 3F                    .?
LF4E1:  cpx     #$0F                            ; F4E1 E0 0F                    ..
        .byte   $FA                             ; F4E3 FA                       .
        ora     ($FE,x)                         ; F4E4 01 FE                    ..
        sta     ($3F,x)                         ; F4E6 81 3F                    .?
        cpy     #$5B                            ; F4E8 C0 5B                    .[
        .byte   $D4                             ; F4EA D4                       .
        ora     $55,x                           ; F4EB 15 55                    .U
        eor     $2B,x                           ; F4ED 55 2B                    U+
        eor     $A5,x                           ; F4EF 55 A5                    U.
        ora     $07E9,x                         ; F4F1 1D E9 07                 ...
        sed                                     ; F4F4 F8                       .
        ora     ($DE),y                         ; F4F5 11 DE                    ..
        .byte   $92                             ; F4F7 92                       .
        rol     $7F80,x                         ; F4F8 3E 80 7F                 >..
        beq     LF51C                           ; F4FB F0 1F                    ..
        cpy     #$1F                            ; F4FD C0 1F                    ..
        .byte   $80                             ; F4FF 80                       .
        .byte   $7F                             ; F500 7F                       .
        cpy     #$1F                            ; F501 C0 1F                    ..
        beq     LF514                           ; F503 F0 0F                    ..
        .byte   $FC                             ; F505 FC                       .
        .byte   $03                             ; F506 03                       .
        .byte   $7C                             ; F507 7C                       |
        eor     ($5A),y                         ; F508 51 5A                    QZ
        cmp     $56                             ; F50A C5 56                    .V
        .byte   $D2                             ; F50C D2                       .
        ora     $17F0,x                         ; F50D 1D F0 17                 ...
        ldy     $6B,x                           ; F510 B4 6B                    .k
        bit     $FF                             ; F512 24 FF                    $.
LF514:  brk                                     ; F514 00                       .
        .byte   $FF                             ; F515 FF                       .
        .byte   $80                             ; F516 80                       .
        .byte   $1F                             ; F517 1F                       .
        cpx     #$4F                            ; F518 E0 4F                    .O
        tay                                     ; F51A A8                       .
        .byte   $4D                             ; F51B 4D                       M
LF51C:  .byte   $F4                             ; F51C F4                       .
        .byte   $12                             ; F51D 12                       .
        lsr     L5555,x                         ; F51E 5E 55 55                 ^UU
        .byte   $53                             ; F521 53                       S
        .byte   $DC                             ; F522 DC                       .
        .byte   $03                             ; F523 03                       .
        cmp     $5D51,x                         ; F524 DD 51 5D                 .Q]
        bne     LF546                           ; F527 D0 1D                    ..
        sbc     #$0B                            ; F529 E9 0B                    ..
        .byte   $DC                             ; F52B DC                       .
        sta     ($76),y                         ; F52C 91 76                    .v
        ora     ($DD),y                         ; F52E 11 DD                    ..
        asl     $FE                             ; F530 06 FE                    ..
LF532:  bpl     LF532                           ; F532 10 FE                    ..
        rti                                     ; F534 40                       @

; ----------------------------------------------------------------------------
        .byte   $77                             ; F535 77                       w
        sty     $5F                             ; F536 84 5F                    ._
        cpy     #$1F                            ; F538 C0 1F                    ..
        cmp     ($07),y                         ; F53A D1 07                    ..
        .byte   $7A                             ; F53C 7A                       z
        .byte   $4B                             ; F53D 4B                       K
        jmp     (L5955)                         ; F53E 6C 55 59                 lUY

; ----------------------------------------------------------------------------
        and     $D655                           ; F541 2D 55 D6                 -U.
        .byte   $02                             ; F544 02                       .
        .byte   $FF                             ; F545 FF                       .
LF546:  .byte   $80                             ; F546 80                       .
        .byte   $3F                             ; F547 3F                       ?
        ora     ($F7),y                         ; F548 11 F7                    ..
        .byte   $80                             ; F54A 80                       .
        .byte   $7F                             ; F54B 7F                       .
        cpy     #$0F                            ; F54C C0 0F                    ..
        sed                                     ; F54E F8                       .
        .byte   $03                             ; F54F 03                       .
        .byte   $77                             ; F550 77                       w
        ldx     #$56                            ; F551 A2 56                    .V
        eor     $4D,x                           ; F553 55 4D                    UM
        .byte   $72                             ; F555 72                       r
        .byte   $4B                             ; F556 4B                       K
        nop                                     ; F557 EA                       .
        lsr     $5A                             ; F558 46 5A                    FZ
        eor     $55,x                           ; F55A 55 55                    UU
        cmp     $12,x                           ; F55C D5 12                    ..
        inc     $03,x                           ; F55E F6 03                    ..
        ldx     $5691,y                         ; F560 BE 91 56                 ..V
        cmp     $A2,x                           ; F563 D5 A2                    ..
        ora     $0FE1,x                         ; F565 1D E1 0F                 ...
        .byte   $DC                             ; F568 DC                       .
        .byte   $03                             ; F569 03                       .
        sbc     $7F80,x                         ; F56A FD 80 7F                 ...
        .byte   $80                             ; F56D 80                       .
        .byte   $3F                             ; F56E 3F                       ?
        cpx     #$5D                            ; F56F E0 5D                    .]
        bne     LF5C2                           ; F571 D0 4F                    .O
        beq     LF57A                           ; F573 F0 05                    ..
        .byte   $F7                             ; F575 F7                       .
        .byte   $80                             ; F576 80                       .
        .byte   $7F                             ; F577 7F                       .
        .byte   $80                             ; F578 80                       .
        .byte   $3F                             ; F579 3F                       ?
LF57A:  cpx     #$0F                            ; F57A E0 0F                    ..
        sed                                     ; F57C F8                       .
        .byte   $03                             ; F57D 03                       .
        ror     $3741,x                         ; F57E 7E 41 37                 ~A7
        lda     ($53),y                         ; F581 B1 53                    .S
        eor     $56,x                           ; F583 55 56                    UV
        eor     $69,x                           ; F585 55 69                    Ui
        eor     $55,x                           ; F587 55 55                    UU
        eor     $55,x                           ; F589 55 55                    UU
        cmp     $4A,x                           ; F58B D5 4A                    .J
        lda     $64,x                           ; F58D B5 64                    .d
        .byte   $4B                             ; F58F 4B                       K
        cpx     $B692                           ; F590 EC 92 B6                 ...
        .byte   $54                             ; F593 54                       T
        eor     $55,x                           ; F594 55 55                    UU
        .byte   $7A                             ; F596 7A                       z
        sta     ($3F,x)                         ; F597 81 3F                    .?
        bvs     LF5AE                           ; F599 70 13                    p.
        ldx     $55A4,y                         ; F59B BE A4 55                 ..U
        sta     $5A,x                           ; F59E 95 5A                    .Z
        sta     $2D,x                           ; F5A0 95 2D                    .-
        lda     #$2D                            ; F5A2 A9 2D                    .-
        adc     $4D                             ; F5A4 65 4D                    eM
        cmp     $52,x                           ; F5A6 D5 52                    .R
        and     $A5,x                           ; F5A8 35 A5                    5.
        eor     $6A,x                           ; F5AA 55 6A                    Uj
        .byte   $4B                             ; F5AC 4B                       K
        .byte   $DA                             ; F5AD DA                       .
LF5AE:  .byte   $92                             ; F5AE 92                       .
        lda     $1368                           ; F5AF AD 68 13                 .h.
        .byte   $57                             ; F5B2 57                       W
        cmp     $29,x                           ; F5B3 D5 29                    .)
        .byte   $DA                             ; F5B5 DA                       .
        .byte   $0F                             ; F5B6 0F                       .
        cpx     #$C1                            ; F5B7 E0 C1                    ..
        .byte   $FF                             ; F5B9 FF                       .
        .byte   $0F                             ; F5BA 0F                       .
        brk                                     ; F5BB 00                       .
        sed                                     ; F5BC F8                       .
        .byte   $FF                             ; F5BD FF                       .
        brk                                     ; F5BE 00                       .
        .byte   $80                             ; F5BF 80                       .
        .byte   $FF                             ; F5C0 FF                       .
        .byte   $3F                             ; F5C1 3F                       ?
LF5C2:  brk                                     ; F5C2 00                       .
        cpx     #$FF                            ; F5C3 E0 FF                    ..
        .byte   $07                             ; F5C5 07                       .
        brk                                     ; F5C6 00                       .
        inc     $807F,x                         ; F5C7 FE 7F 80                 ...
        ora     ($FD,x)                         ; F5CA 01 FD                    ..
        .byte   $0F                             ; F5CC 0F                       .
        .byte   $1C                             ; F5CD 1C                       .
        cpy     #$FF                            ; F5CE C0 FF                    ..
        .byte   $03                             ; F5D0 03                       .
        cpy     #$FF                            ; F5D1 C0 FF                    ..
        .byte   $0F                             ; F5D3 0F                       .
        brk                                     ; F5D4 00                       .
        inc     a:$3F,x                         ; F5D5 FE 3F 00                 .?.
        .byte   $F0                             ; F5D8 F0                       .
LF5D9:  .byte   $FF                             ; F5D9 FF                       .
        brk                                     ; F5DA 00                       .
        cpx     #$FF                            ; F5DB E0 FF                    ..
        ora     ($E8,x)                         ; F5DD 01 E8                    ..
        .byte   $FF                             ; F5DF FF                       .
        .byte   $07                             ; F5E0 07                       .
        .byte   $80                             ; F5E1 80                       .
        .byte   $FF                             ; F5E2 FF                       .
        .byte   $23                             ; F5E3 23                       #
        ora     ($FC,x)                         ; F5E4 01 FC                    ..
        .byte   $1F                             ; F5E6 1F                       .
        .byte   $04                             ; F5E7 04                       .
        sed                                     ; F5E8 F8                       .
        .byte   $7F                             ; F5E9 7F                       .
        brk                                     ; F5EA 00                       .
        sed                                     ; F5EB F8                       .
        .byte   $7F                             ; F5EC 7F                       .
        brk                                     ; F5ED 00                       .
        .byte   $F0                             ; F5EE F0                       .
LF5EF:  .byte   $FF                             ; F5EF FF                       .
        ora     ($F0,x)                         ; F5F0 01 F0                    ..
        .byte   $FF                             ; F5F2 FF                       .
        brk                                     ; F5F3 00                       .
        beq     LF675                           ; F5F4 F0 7F                    ..
        brk                                     ; F5F6 00                       .
        sed                                     ; F5F7 F8                       .
        .byte   $FF                             ; F5F8 FF                       .
        brk                                     ; F5F9 00                       .
        sed                                     ; F5FA F8                       .
        .byte   $1F                             ; F5FB 1F                       .
        brk                                     ; F5FC 00                       .
        .byte   $FC                             ; F5FD FC                       .
        .byte   $1F                             ; F5FE 1F                       .
        .byte   $80                             ; F5FF 80                       .
        .byte   $FF                             ; F600 FF                       .
        .byte   $07                             ; F601 07                       .
        cpy     #$FF                            ; F602 C0 FF                    ..
        brk                                     ; F604 00                       .
        .byte   $FC                             ; F605 FC                       .
        .byte   $0F                             ; F606 0F                       .
        .byte   $C0                             ; F607 C0                       .
LF608:  .byte   $FF                             ; F608 FF                       .
        brk                                     ; F609 00                       .
        .byte   $FC                             ; F60A FC                       .
        .byte   $0F                             ; F60B 0F                       .
        cpy     #$FF                            ; F60C C0 FF                    ..
        brk                                     ; F60E 00                       .
        inc     LF007,x                         ; F60F FE 07 F0                 ...
        .byte   $3F                             ; F612 3F                       ?
        brk                                     ; F613 00                       .
        inc     LF803,x                         ; F614 FE 03 F8                 ...
        .byte   $1F                             ; F617 1F                       .
        cpy     #$3F                            ; F618 C0 3F                    .?
        cpy     #$3F                            ; F61A C0 3F                    .?
        brk                                     ; F61C 00                       .
        .byte   $FF                             ; F61D FF                       .
        .byte   $03                             ; F61E 03                       .
        sed                                     ; F61F F8                       .
        .byte   $07                             ; F620 07                       .
        sed                                     ; F621 F8                       .
        .byte   $0F                             ; F622 0F                       .
        beq     LF644                           ; F623 F0 1F                    ..
        cpy     #$7F                            ; F625 C0 7F                    ..
        .byte   $80                             ; F627 80                       .
        .byte   $3F                             ; F628 3F                       ?
        cpy     #$7F                            ; F629 C0 7F                    ..
        .byte   $80                             ; F62B 80                       .
        .byte   $7F                             ; F62C 7F                       .
        .byte   $80                             ; F62D 80                       .
        .byte   $7F                             ; F62E 7F                       .
        .byte   $80                             ; F62F 80                       .
        .byte   $7F                             ; F630 7F                       .
        .byte   $80                             ; F631 80                       .
        .byte   $3F                             ; F632 3F                       ?
        cpx     #$0F                            ; F633 E0 0F                    ..
        beq     LF646                           ; F635 F0 0F                    ..
        beq     LF640                           ; F637 F0 07                    ..
        .byte   $FC                             ; F639 FC                       .
        ora     ($7F,x)                         ; F63A 01 7F                    ..
        cpx     #$1F                            ; F63C E0 1F                    ..
        cpx     #$1F                            ; F63E E0 1F                    ..
LF640:  beq     LF645                           ; F640 F0 03                    ..
        .byte   $FE                             ; F642 FE                       .
        .byte   $80                             ; F643 80                       .
LF644:  .byte   $3F                             ; F644 3F                       ?
LF645:  .byte   $F0                             ; F645 F0                       .
LF646:  sta     ($3F,x)                         ; F646 81 3F                    .?
        cpx     #$07                            ; F648 E0 07                    ..
        .byte   $3F                             ; F64A 3F                       ?
        cpx     #$07                            ; F64B E0 07                    ..
        .byte   $FC                             ; F64D FC                       .
        sta     ($8F,x)                         ; F64E 81 8F                    ..
        ror     $E0,x                           ; F650 76 E0                    v.
        .byte   $0F                             ; F652 0F                       .
        sed                                     ; F653 F8                       .
        .byte   $83                             ; F654 83                       .
        .byte   $07                             ; F655 07                       .
        .byte   $FA                             ; F656 FA                       .
        cmp     ($93,x)                         ; F657 C1 93                    ..
        rol     $0FE0,x                         ; F659 3E E0 0F                 >..
        .byte   $FC                             ; F65C FC                       .
        rts                                     ; F65D 60                       `

; ----------------------------------------------------------------------------
        cmp     $03,x                           ; F65E D5 03                    ..
        .byte   $FC                             ; F660 FC                       .
        cmp     ($0F,x)                         ; F661 C1 0F                    ..
        .byte   $FC                             ; F663 FC                       .
        rts                                     ; F664 60                       `

; ----------------------------------------------------------------------------
        cmp     ($3F,x)                         ; F665 C1 3F                    .?
        pla                                     ; F667 68                       h
        sbc     ($03),y                         ; F668 F1 03                    ..
        .byte   $1F                             ; F66A 1F                       .
        sed                                     ; F66B F8                       .
        cpx     #$87                            ; F66C E0 87                    ..
        .byte   $0F                             ; F66E 0F                       .
        .byte   $FC                             ; F66F FC                       .
        cpx     #$C1                            ; F670 E0 C1                    ..
        .byte   $87                             ; F672 87                       .
LF673:  .byte   $BC                             ; F673 BC                       .
        cld                                     ; F674 D8                       .
LF675:  cmp     ($0F,x)                         ; F675 C1 0F                    ..
        rol     $C078,x                         ; F677 3E 78 C0                 >x.
        .byte   $9F                             ; F67A 9F                       .
        asl     $7E                             ; F67B 06 7E                    .~
        cpx     #$D5                            ; F67D E0 D5                    ..
        .byte   $03                             ; F67F 03                       .
        asl     $7C3D,x                         ; F680 1E 3D 7C                 .=|
        .byte   $F0                             ; F683 F0                       .
LF684:  .byte   $83                             ; F684 83                       .
        .byte   $0F                             ; F685 0F                       .
        .byte   $07                             ; F686 07                       .
        .byte   $3F                             ; F687 3F                       ?
        sed                                     ; F688 F8                       .
        cpx     #$E2                            ; F689 E0 E2                    ..
        .byte   $07                             ; F68B 07                       .
        .byte   $07                             ; F68C 07                       .
        .byte   $17                             ; F68D 17                       .
        .byte   $3F                             ; F68E 3F                       ?
        .byte   $1C                             ; F68F 1C                       .
        .byte   $7C                             ; F690 7C                       |
        beq     LF684                           ; F691 F0 F1                    ..
        cpy     #$C3                            ; F693 C0 C3                    ..
        .byte   $C3                             ; F695 C3                       .
        .byte   $0F                             ; F696 0F                       .
        .byte   $07                             ; F697 07                       .
        .byte   $0F                             ; F698 0F                       .
        .byte   $1F                             ; F699 1F                       .
        asl     $1F1E                           ; F69A 0E 1E 1F                 ...
        asl     $3E1E,x                         ; F69D 1E 1E 3E                 ..>
        .byte   $1C                             ; F6A0 1C                       .
        .byte   $3C                             ; F6A1 3C                       <
        .byte   $3C                             ; F6A2 3C                       <
        asl     $0E1E,x                         ; F6A3 1E 1E 0E                 ...
        asl     $8F0F,x                         ; F6A6 1E 0F 8F                 ...
        .byte   $07                             ; F6A9 07                       .
        .byte   $C7                             ; F6AA C7                       .
        .byte   $83                             ; F6AB 83                       .
        .byte   $CF                             ; F6AC CF                       .
        sbc     ($38,x)                         ; F6AD E1 38                    .8
        sei                                     ; F6AF 78                       x
        rol     $1E18,x                         ; F6B0 3E 18 1E                 >..
        .byte   $9E                             ; F6B3 9E                       .
        .byte   $0F                             ; F6B4 0F                       .
        .byte   $C3                             ; F6B5 C3                       .
        .byte   $E3                             ; F6B6 E3                       .
        beq     LF729                           ; F6B7 F0 70                    .p
        .byte   $3C                             ; F6B9 3C                       <
        asl     $C3C6,x                         ; F6BA 1E C6 C3                 ...
        sbc     ($70),y                         ; F6BD F1 70                    .p
        asl     $878E,x                         ; F6BF 1E 8E 87                 ...
        sbc     ($71,x)                         ; F6C2 E1 71                    .q
        .byte   $3C                             ; F6C4 3C                       <
        .byte   $07                             ; F6C5 07                       .
        .byte   $F7                             ; F6C6 F7                       .
        bvs     LF6E5                           ; F6C7 70 1C                    p.
        inc     $F1                             ; F6C9 E6 F1                    ..
        bvs     LF6E9                           ; F6CB 70 1C                    p.
        .byte   $E3                             ; F6CD E3                       .
        and     ($3C),y                         ; F6CE 31 3C                    1<
        .byte   $87                             ; F6D0 87                       .
        .byte   $73                             ; F6D1 73                       s
        sty     $31C7                           ; F6D2 8C C7 31                 ..1
        stx     $54D3                           ; F6D5 8E D3 54                 ..T
        .byte   $C3                             ; F6D8 C3                       .
        .byte   $E3                             ; F6D9 E3                       .
        sty     $0CE3                           ; F6DA 8C E3 0C                 ...
        .byte   $E7                             ; F6DD E7                       .
        ora     $18E6,y                         ; F6DE 19 E6 18                 ...
        .byte   $EF                             ; F6E1 EF                       .
        bpl     LF673                           ; F6E2 10 8F                    ..
        .byte   $E3                             ; F6E4 E3                       .
LF6E5:  eor     $35                             ; F6E5 45 35                    E5
        .byte   $8E                             ; F6E7 8E                       .
        .byte   $2B                             ; F6E8 2B                       +
LF6E9:  sta     $55,x                           ; F6E9 95 55                    .U
        sta     $53,x                           ; F6EB 95 53                    .S
        sta     $55,x                           ; F6ED 95 55                    .U
        ora     $29F4,x                         ; F6EF 1D F4 29                 ..)
        .byte   $DC                             ; F6F2 DC                       .
        asl     $E7                             ; F6F3 06 E7                    ..
        clc                                     ; F6F5 18                       .
        .byte   $AF                             ; F6F6 AF                       .
        clc                                     ; F6F7 18                       .
        .byte   $CF                             ; F6F8 CF                       .
        bvs     LF748                           ; F6F9 70 4D                    pM
        adc     ($8D),y                         ; F6FB 71 8D                    q.
        .byte   $7A                             ; F6FD 7A                       z
        .byte   $14                             ; F6FE 14                       .
        .byte   $B7                             ; F6FF B7                       .
        tay                                     ; F700 A8                       .
        lsr     $5565                           ; F701 4E 65 55                 NeU
        .byte   $4B                             ; F704 4B                       K
        eor     $4AEA,y                         ; F705 59 EA 4A                 Y.J
        eor     $56,x                           ; F708 55 56                    UV
        .byte   $A7                             ; F70A A7                       .
        .byte   $54                             ; F70B 54                       T
        eor     $75,x                           ; F70C 55 75                    Uu
        .byte   $12                             ; F70E 12                       .
        .byte   $F7                             ; F70F F7                       .
        bvc     LF75F                           ; F710 50 4D                    PM
        cmp     $4B,x                           ; F712 D5 4B                    .K
        ldy     $A7                             ; F714 A4 A7                    ..
        .byte   $32                             ; F716 32                       2
        cmp     $AD                             ; F717 C5 AD                    ..
        .byte   $92                             ; F719 92                       .
        eor     $55,x                           ; F71A 55 55                    UU
        .byte   $53                             ; F71C 53                       S
        dex                                     ; F71D CA                       .
        cmp     $5658                           ; F71E CD 58 56                 .XV
        adc     $55                             ; F721 65 55                    eU
        eor     $5A55,y                         ; F723 59 55 5A                 YUZ
        sta     $6A,x                           ; F726 95 6A                    .j
        .byte   $35                             ; F728 35                       5
LF729:  eor     $55,x                           ; F729 55 55                    UU
        eor     $55,x                           ; F72B 55 55                    UU
        dec     $21,x                           ; F72D D6 21                    .!
        .byte   $57                             ; F72F 57                       W
        lda     $55                             ; F730 A5 55                    .U
        eor     $55,x                           ; F732 55 55                    UU
        eor     $55,x                           ; F734 55 55                    UU
        eor     $69,x                           ; F736 55 69                    Ui
        sta     $D6,x                           ; F738 95 D6                    ..
        .byte   $54                             ; F73A 54                       T
        eor     $55,x                           ; F73B 55 55                    UU
        adc     $94,x                           ; F73D 75 94                    u.
        ldx     $64,y                           ; F73F B6 64                    .d
        eor     $55,x                           ; F741 55 55                    UU
        eor     L5555                           ; F743 4D 55 55                 MUU
        .byte   $4B                             ; F746 4B                       K
        .byte   $55                             ; F747 55                       U
LF748:  lda     $AD                             ; F748 A5 AD                    ..
        ldy     $55                             ; F74A A4 55                    .U
        ror     a                               ; F74C 6A                       j
        .byte   $4B                             ; F74D 4B                       K
        eor     $95,x                           ; F74E 55 95                    U.
        and     $BA94,x                         ; F750 3D 94 BA                 =..
        jmp     L5555                           ; F753 4C 55 55                 LUU

; ----------------------------------------------------------------------------
        lda     $5554                           ; F756 AD 54 55                 .TU
        eor     $53,x                           ; F759 55 53                    US
        eor     $55,x                           ; F75B 55 55                    UU
        .byte   $4B                             ; F75D 4B                       K
        .byte   $5A                             ; F75E 5A                       Z
LF75F:  eor     $D9,x                           ; F75F 55 D9                    U.
        .byte   $54                             ; F761 54                       T
        lda     $94,x                           ; F762 B5 94                    ..
        .byte   $3A                             ; F764 3A                       :
        eor     $55,x                           ; F765 55 55                    UU
        .byte   $DA                             ; F767 DA                       .
        lsr     $55                             ; F768 46 55                    FU
        eor     $35,x                           ; F76A 55 35                    U5
        eor     $55,x                           ; F76C 55 55                    UU
        .byte   $53                             ; F76E 53                       S
        eor     $55,x                           ; F76F 55 55                    UU
        eor     $4D,x                           ; F771 55 4D                    UM
        eor     $55,x                           ; F773 55 55                    UU
        and     $55,x                           ; F775 35 55                    5U
        eor     $4B,x                           ; F777 55 4B                    UK
        eor     $55,x                           ; F779 55 55                    UU
        eor     $55,x                           ; F77B 55 55                    UU
        eor     $55,x                           ; F77D 55 55                    UU
        eor     $55,x                           ; F77F 55 55                    UU
        eor     $55,x                           ; F781 55 55                    UU
        eor     $55,x                           ; F783 55 55                    UU
        eor     $55,x                           ; F785 55 55                    UU
        eor     $55,x                           ; F787 55 55                    UU
        eor     $55,x                           ; F789 55 55                    UU
        eor     $55,x                           ; F78B 55 55                    UU
        eor     $55,x                           ; F78D 55 55                    UU
        eor     $55,x                           ; F78F 55 55                    UU
        eor     $95,x                           ; F791 55 95                    U.
        lsr     $55,x                           ; F793 56 55                    VU
        eor     $55,x                           ; F795 55 55                    UU
        eor     $55,x                           ; F797 55 55                    UU
        eor     $55,x                           ; F799 55 55                    UU
        eor     $55,x                           ; F79B 55 55                    UU
        eor     $55,x                           ; F79D 55 55                    UU
        eor     $55,x                           ; F79F 55 55                    UU
        lda     $54,x                           ; F7A1 B5 54                    .T
        .byte   $53                             ; F7A3 53                       S
        eor     $55,x                           ; F7A4 55 55                    UU
        eor     $55,x                           ; F7A6 55 55                    UU
        eor     $55,x                           ; F7A8 55 55                    UU
        adc     $55                             ; F7AA 65 55                    eU
        eor     $55,x                           ; F7AC 55 55                    UU
        lda     $55                             ; F7AE A5 55                    .U
        eor     $55,x                           ; F7B0 55 55                    UU
        eor     $53,x                           ; F7B2 55 53                    US
        eor     $95,x                           ; F7B4 55 95                    U.
        and     $65,x                           ; F7B6 35 65                    5e
        eor     $4B59                           ; F7B8 4D 59 4B                 MYK
        .byte   $5A                             ; F7BB 5A                       Z
        eor     $55,x                           ; F7BC 55 55                    UU
        eor     $55,x                           ; F7BE 55 55                    UU
        eor     $55,x                           ; F7C0 55 55                    UU
        sta     L5955,y                         ; F7C2 99 55 59                 .UY
        eor     $5A,x                           ; F7C5 55 5A                    UZ
        eor     $55,x                           ; F7C7 55 55                    UU
        eor     $55,x                           ; F7C9 55 55                    UU
        eor     $55,x                           ; F7CB 55 55                    UU
        eor     $55,x                           ; F7CD 55 55                    UU
        eor     $55,x                           ; F7CF 55 55                    UU
        eor     $55,x                           ; F7D1 55 55                    UU
        adc     $55                             ; F7D3 65 55                    eU
        .byte   $59                             ; F7D5 59                       Y
        .byte   $55                             ; F7D6 55                       U
LF7D7:  eor     $55,x                           ; F7D7 55 55                    UU
        eor     $55,x                           ; F7D9 55 55                    UU
        eor     $55,x                           ; F7DB 55 55                    UU
        .byte   $55                             ; F7DD 55                       U
LF7DE:  eor     $55,x                           ; F7DE 55 55                    UU
        eor     $55,x                           ; F7E0 55 55                    UU
        eor     $55,x                           ; F7E2 55 55                    UU
        eor     $55,x                           ; F7E4 55 55                    UU
        eor     $55,x                           ; F7E6 55 55                    UU
        eor     $55,x                           ; F7E8 55 55                    UU
        eor     $55,x                           ; F7EA 55 55                    UU
        eor     $55,x                           ; F7EC 55 55                    UU
        eor     $55,x                           ; F7EE 55 55                    UU
        lda     $51,x                           ; F7F0 B5 51                    .Q
        lsr     $55,x                           ; F7F2 56 55                    VU
LF7F4:  lsr     $D075                           ; F7F4 4E 75 D0                 Nu.
        cmp     $C7                             ; F7F7 C5 C7                    ..
        .byte   $DC                             ; F7F9 DC                       .
        bvc     LF7DE                           ; F7FA 50 E2                    P.
        .byte   $9C                             ; F7FC 9C                       .
        .byte   $3A                             ; F7FD 3A                       :
        .byte   $CF                             ; F7FE CF                       .
        .byte   $1C                             ; F7FF 1C                       .
LF800:  .byte   $23                             ; F800 23                       #
        cpx     $98                             ; F801 E4 98                    ..
LF803:  .byte   $67                             ; F803 67                       g
        .byte   $CF                             ; F804 CF                       .
        and     ($46),y                         ; F805 31 46                    1F
LF807:  bvs     LF7D7                           ; F807 70 CE                    p.
        sbc     ($9C),y                         ; F809 F1 9C                    ..
        .byte   $63                             ; F80B 63                       c
        clc                                     ; F80C 18                       .
        dec     $79                             ; F80D C6 79                    .y
        stx     $31C7                           ; F80F 8E C7 31                 ..1
        asl     $E387                           ; F812 0E 87 E3                 ...
        adc     $078C,x                         ; F815 7D 8C 07                 }..
LF818:  .byte   $03                             ; F818 03                       .
        .byte   $C7                             ; F819 C7                       .
        sta     $876F,y                         ; F81A 99 6F 87                 .o.
        .byte   $03                             ; F81D 03                       .
        .byte   $C3                             ; F81E C3                       .
        .byte   $B3                             ; F81F B3                       .
        .byte   $E3                             ; F820 E3                       .
        ora     $08C7,y                         ; F821 19 C7 08                 ...
LF824:  .byte   $E7                             ; F824 E7                       .
        and     $33C7,y                         ; F825 39 C7 33                 9.3
        .byte   $86                             ; F828 86                       .
LF829:  .byte   $43                             ; F829 43                       C
        sec                                     ; F82A 38                       8
        .byte   $CF                             ; F82B CF                       .
        .byte   $F3                             ; F82C F3                       .
        .byte   $1C                             ; F82D 1C                       .
        .byte   $83                             ; F82E 83                       .
        adc     ($3C,x)                         ; F82F 61 3C                    a<
        dec     $31E3                           ; F831 CE E3 31                 ..1
        .byte   $1C                             ; F834 1C                       .
        stx     LF9E3                           ; F835 8E E3 F9                 ...
        .byte   $1C                             ; F838 1C                       .
        asl     $E30E                           ; F839 0E 0E E3                 ...
        sbc     ($F1),y                         ; F83C F1 F1                    ..
        sec                                     ; F83E 38                       8
        sec                                     ; F83F 38                       8
        .byte   $1C                             ; F840 1C                       .
        .byte   $87                             ; F841 87                       .
        .byte   $8F                             ; F842 8F                       .
        .byte   $8F                             ; F843 8F                       .
        .byte   $C3                             ; F844 C3                       .
        .byte   $83                             ; F845 83                       .
        .byte   $07                             ; F846 07                       .
        .byte   $C7                             ; F847 C7                       .
        sbc     ($83,x)                         ; F848 E1 83                    ..
LF84A:  .byte   $87                             ; F84A 87                       .
        .byte   $C3                             ; F84B C3                       .
        .byte   $C3                             ; F84C C3                       .
        .byte   $07                             ; F84D 07                       .
        .byte   $BF                             ; F84E BF                       .
        cmp     ($07,x)                         ; F84F C1 07                    ..
        asl     LFC7C,x                         ; F851 1E 7C FC                 .|.
        sec                                     ; F854 38                       8
        sei                                     ; F855 78                       x
        cpx     #$C1                            ; F856 E0 C1                    ..
LF858:  .byte   $0F                             ; F858 0F                       .
        .byte   $1F                             ; F859 1F                       .
        rol     LF818,x                         ; F85A 3E 18 F8                 >..
        sbc     ($83),y                         ; F85D F1 83                    ..
        .byte   $0F                             ; F85F 0F                       .
        .byte   $3C                             ; F860 3C                       <
        beq     LF824                           ; F861 F0 C1                    ..
        .byte   $87                             ; F863 87                       .
        .byte   $1F                             ; F864 1F                       .
        .byte   $7C                             ; F865 7C                       |
        cpx     #$83                            ; F866 E0 83                    ..
        .byte   $1F                             ; F868 1F                       .
        .byte   $FC                             ; F869 FC                       .
        beq     LF86F                           ; F86A F0 03                    ..
        .byte   $07                             ; F86C 07                       .
        .byte   $FC                             ; F86D FC                       .
        .byte   $E1                             ; F86E E1                       .
LF86F:  .byte   $07                             ; F86F 07                       .
        .byte   $1F                             ; F870 1F                       .
        beq     LF7F4                           ; F871 F0 81                    ..
        .byte   $1F                             ; F873 1F                       .
        .byte   $FC                             ; F874 FC                       .
        cpx     #$07                            ; F875 E0 07                    ..
        .byte   $3C                             ; F877 3C                       <
        cpx     #$C3                            ; F878 E0 C3                    ..
        .byte   $3F                             ; F87A 3F                       ?
        sed                                     ; F87B F8                       .
        .byte   $01                             ; F87C 01                       .
LF87D:  .byte   $0F                             ; F87D 0F                       .
        sed                                     ; F87E F8                       .
        sbc     ($0F),y                         ; F87F F1 0F                    ..
        asl     $07E0,x                         ; F881 1E E0 07                 ...
        ror     $83F0,x                         ; F884 7E F0 83                 ~..
        .byte   $1F                             ; F887 1F                       .
        beq     LF84A                           ; F888 F0 C0                    ..
        .byte   $0F                             ; F88A 0F                       .
        inc     $0781,x                         ; F88B FE 81 07                 ...
        .byte   $3C                             ; F88E 3C                       <
        beq     LF858                           ; F88F F0 C7                    ..
        .byte   $17                             ; F891 17                       .
        nop                                     ; F892 EA                       .
        cpy     #$C7                            ; F893 C0 C7                    ..
        .byte   $3F                             ; F895 3F                       ?
        .byte   $FC                             ; F896 FC                       .
        cpx     #$02                            ; F897 E0 02                    ..
        .byte   $3C                             ; F899 3C                       <
        .byte   $9C                             ; F89A 9C                       .
        .byte   $3F                             ; F89B 3F                       ?
        sed                                     ; F89C F8                       .
        .byte   $80                             ; F89D 80                       .
        .byte   $07                             ; F89E 07                       .
        .byte   $7C                             ; F89F 7C                       |
        .byte   $F0                             ; F8A0 F0                       .
LF8A1:  .byte   $87                             ; F8A1 87                       .
        adc     $03C0,x                         ; F8A2 7D C0 03                 }..
        .byte   $7F                             ; F8A5 7F                       .
        sed                                     ; F8A6 F8                       .
        .byte   $83                             ; F8A7 83                       .
        .byte   $0F                             ; F8A8 0F                       .
        sei                                     ; F8A9 78                       x
        cpx     #$F0                            ; F8AA E0 F0                    ..
        .byte   $C3                             ; F8AC C3                       .
        .byte   $0F                             ; F8AD 0F                       .
        rol     $C1E0,x                         ; F8AE 3E E0 C1                 >..
        .byte   $87                             ; F8B1 87                       .
        .byte   $1F                             ; F8B2 1F                       .
        .byte   $C3                             ; F8B3 C3                       .
        .byte   $07                             ; F8B4 07                       .
        .byte   $7C                             ; F8B5 7C                       |
        sed                                     ; F8B6 F8                       .
        .byte   $62                             ; F8B7 62                       b
        .byte   $47                             ; F8B8 47                       G
        .byte   $17                             ; F8B9 17                       .
        .byte   $7C                             ; F8BA 7C                       |
        sed                                     ; F8BB F8                       .
        cpx     #$07                            ; F8BC E0 07                    ..
        .byte   $3F                             ; F8BE 3F                       ?
        bvs     LF8A1                           ; F8BF 70 E0                    p.
        .byte   $13                             ; F8C1 13                       .
LF8C2:  .byte   $3F                             ; F8C2 3F                       ?
        .byte   $1C                             ; F8C3 1C                       .
        tsx                                     ; F8C4 BA                       .
LF8C5:  cpx     #$61                            ; F8C5 E0 61                    .a
        .byte   $B7                             ; F8C7 B7                       .
        cld                                     ; F8C8 D8                       .
        sta     ($56),y                         ; F8C9 91 56                    .V
        inx                                     ; F8CB E8                       .
        .byte   $83                             ; F8CC 83                       .
        .byte   $1F                             ; F8CD 1F                       .
        .byte   $FC                             ; F8CE FC                       .
        cpy     #$07                            ; F8CF C0 07                    ..
        rol     $43F8,x                         ; F8D1 3E F8 43                 >.C
        .byte   $0F                             ; F8D4 0F                       .
        rol     $E0F0,x                         ; F8D5 3E F0 E0                 >..
        .byte   $43                             ; F8D8 43                       C
        .byte   $1F                             ; F8D9 1F                       .
        .byte   $DC                             ; F8DA DC                       .
        beq     LF87D                           ; F8DB F0 A0                    ..
        .byte   $0F                             ; F8DD 0F                       .
        .byte   $3F                             ; F8DE 3F                       ?
        sed                                     ; F8DF F8                       .
        beq     LF8C2                           ; F8E0 F0 E0                    ..
        .byte   $83                             ; F8E2 83                       .
        .byte   $47                             ; F8E3 47                       G
        .byte   $0F                             ; F8E4 0F                       .
        inc     $C0,x                           ; F8E5 F6 C0                    ..
        .byte   $83                             ; F8E7 83                       .
        .byte   $0F                             ; F8E8 0F                       .
        rol     $70B9,x                         ; F8E9 3E B9 70                 >.p
        eor     $97                             ; F8EC 45 97                    E.
        .byte   $87                             ; F8EE 87                       .
        .byte   $1F                             ; F8EF 1F                       .
        .byte   $7C                             ; F8F0 7C                       |
        beq     LF8F4                           ; F8F1 F0 01                    ..
        .byte   $1F                             ; F8F3 1F                       .
LF8F4:  ror     $85D0,x                         ; F8F4 7E D0 85                 ~..
        stx     $86,y                           ; F8F7 96 86                    ..
        rol     $50FC,x                         ; F8F9 3E FC 50                 >.P
        eor     $5D74                           ; F8FC 4D 74 5D                 Mt]
        tax                                     ; F8FF AA                       .
        lsr     $35,x                           ; F900 56 35                    V5
        beq     LF8C5                           ; F902 F0 C1                    ..
        .byte   $87                             ; F904 87                       .
        .byte   $0F                             ; F905 0F                       .
        rol     $7838,x                         ; F906 3E 38 78                 >8x
        cmp     ($55),y                         ; F909 D1 55                    .U
        .byte   $8B                             ; F90B 8B                       .
        eor     $5A56                           ; F90C 4D 56 5A                 MVZ
        lda     $6A,x                           ; F90F B5 6A                    .j
        sta     $4A,x                           ; F911 95 4A                    .J
        eor     $55,x                           ; F913 55 55                    UU
        lda     $AAAC                           ; F915 AD AC AA                 ...
        .byte   $54                             ; F918 54                       T
        eor     $55,x                           ; F919 55 55                    UU
        and     $55,x                           ; F91B 35 55                    5U
        eor     $49,x                           ; F91D 55 49                    UI
        lda     $A5,x                           ; F91F B5 A5                    ..
        .byte   $5A                             ; F921 5A                       Z
        sta     $AA,x                           ; F922 95 AA                    ..
        lda     #$55                            ; F924 A9 55                    .U
        eor     $55,x                           ; F926 55 55                    UU
        eor     $95,x                           ; F928 55 95                    U.
        lsr     $55,x                           ; F92A 56 55                    VU
        .byte   $AB                             ; F92C AB                       .
        .byte   $54                             ; F92D 54                       T
        eor     $72,x                           ; F92E 55 72                    Ur
        eor     $75,x                           ; F930 55 75                    Uu
        .byte   $5A                             ; F932 5A                       Z
        .byte   $34                             ; F933 34                       4
        eor     $6A,x                           ; F934 55 6A                    Uj
        lsr     $55,x                           ; F936 56 55                    VU
        txs                                     ; F938 9A                       .
        .byte   $52                             ; F939 52                       R
        cmp     $AC,x                           ; F93A D5 AC                    ..
        dec     $52,x                           ; F93C D6 52                    .R
        .byte   $CB                             ; F93E CB                       .
        .byte   $52                             ; F93F 52                       R
        lda     $AA,x                           ; F940 B5 AA                    ..
        eor     $25,x                           ; F942 55 25                    U%
        sta     $95,x                           ; F944 95 95                    ..
        .byte   $72                             ; F946 72                       r
        eor     $6A,x                           ; F947 55 6A                    Uj
        and     #$55                            ; F949 29 55                    )U
        .byte   $AB                             ; F94B AB                       .
        .byte   $5A                             ; F94C 5A                       Z
        cmp     $32,x                           ; F94D D5 32                    .2
        .byte   $4B                             ; F94F 4B                       K
        .byte   $53                             ; F950 53                       S
        .byte   $53                             ; F951 53                       S
        eor     $B5,x                           ; F952 55 B5                    U.
        .byte   $B2                             ; F954 B2                       .
        tax                                     ; F955 AA                       .
        .byte   $52                             ; F956 52                       R
        eor     $9D,x                           ; F957 55 9D                    U.
        .byte   $72                             ; F959 72                       r
        .byte   $54                             ; F95A 54                       T
        .byte   $34                             ; F95B 34                       4
        lsr     $6B,x                           ; F95C 56 6B                    Vk
        and     $55,x                           ; F95E 35 55                    5U
        lsr     a                               ; F960 4A                       J
        cmp     $65,x                           ; F961 D5 65                    .e
        eor     $55,x                           ; F963 55 55                    UU
        eor     $55,x                           ; F965 55 55                    UU
        eor     $5A,x                           ; F967 55 5A                    UZ
        eor     $4555,y                         ; F969 59 55 45                 YUE
        cmp     $74,x                           ; F96C D5 74                    .t
        cmp     $B2,x                           ; F96E D5 B2                    ..
        .byte   $54                             ; F970 54                       T
        eor     $AD,x                           ; F971 55 AD                    U.
        tax                                     ; F973 AA                       .
        ldx     $2A                             ; F974 A6 2A                    .*
        and     $CA95                           ; F976 2D 95 CA                 -..
        ldy     $9A,x                           ; F979 B4 9A                    ..
        eor     $55                             ; F97B 45 55                    EU
        .byte   $D3                             ; F97D D3                       .
        lsr     $55,x                           ; F97E 56 55                    VU
        cmp     $4A,x                           ; F980 D5 4A                    .J
        eor     $5D,x                           ; F982 55 5D                    U]
        .byte   $9C                             ; F984 9C                       .
        stx     $69,y                           ; F985 96 69                    .i
        .byte   $32                             ; F987 32                       2
        eor     $AA,x                           ; F988 55 AA                    U.
        ror     a                               ; F98A 6A                       j
        eor     $55,x                           ; F98B 55 55                    UU
        stx     $D2,y                           ; F98D 96 D2                    ..
        adc     #$A9                            ; F98F 69 A9                    i.
        lsr     $55,x                           ; F991 56 55                    VU
        eor     $55,x                           ; F993 55 55                    UU
        eor     $55,x                           ; F995 55 55                    UU
        cmp     $38,x                           ; F997 D5 38                    .8
        eor     $47,x                           ; F999 55 47                    UG
        eor     $55,x                           ; F99B 55 55                    UU
        lsr     $55,x                           ; F99D 56 55                    VU
        cmp     $AA,x                           ; F99F D5 AA                    ..
        .byte   $54                             ; F9A1 54                       T
        .byte   $C3                             ; F9A2 C3                       .
        adc     ($5A),y                         ; F9A3 71 5A                    qZ
        lsr     $53,x                           ; F9A5 56 53                    VS
        adc     ($71),y                         ; F9A7 71 71                    qq
        ldy     $65,x                           ; F9A9 B4 65                    .e
        eor     $8B,x                           ; F9AB 55 8B                    U.
        stx     $65,y                           ; F9AD 96 65                    .e
        adc     $6D                             ; F9AF 65 6D                    em
        .byte   $5A                             ; F9B1 5A                       Z
        .byte   $5A                             ; F9B2 5A                       Z
        rol     a                               ; F9B3 2A                       *
        eor     $55,x                           ; F9B4 55 55                    UU
        eor     $55,x                           ; F9B6 55 55                    UU
        cmp     $54,x                           ; F9B8 D5 54                    .T
        eor     $5A,x                           ; F9BA 55 5A                    UZ
        .byte   $5A                             ; F9BC 5A                       Z
        eor     $B5,x                           ; F9BD 55 B5                    U.
        rol     a                               ; F9BF 2A                       *
        eor     $55,x                           ; F9C0 55 55                    UU
        eor     $0F8D,y                         ; F9C2 59 8D 0F                 Y..
        .byte   $A7                             ; F9C5 A7                       .
        .byte   $54                             ; F9C6 54                       T
        lda     $D2                             ; F9C7 A5 D2                    ..
        lsr     $55,x                           ; F9C9 56 55                    VU
        eor     $65,x                           ; F9CB 55 65                    Ue
        lda     $AA                             ; F9CD A5 AA                    ..
        rol     $B5,x                           ; F9CF 36 B5                    6.
        ldy     $554A                           ; F9D1 AC 4A 55                 .JU
        eor     $55,x                           ; F9D4 55 55                    UU
        eor     $55,x                           ; F9D6 55 55                    UU
        eor     $55,x                           ; F9D8 55 55                    UU
        eor     $55,x                           ; F9DA 55 55                    UU
        lda     $D4,x                           ; F9DC B5 D4                    ..
        .byte   $52                             ; F9DE 52                       R
        eor     $55,x                           ; F9DF 55 55                    UU
        eor     $35,x                           ; F9E1 55 35                    U5
LF9E3:  lda     $54,x                           ; F9E3 B5 54                    .T
        lda     #$85                            ; F9E5 A9 85                    ..
        .byte   $17                             ; F9E7 17                       .
        .byte   $37                             ; F9E8 37                       7
        adc     $D4,x                           ; F9E9 75 D4                    u.
        adc     ($95,x)                         ; F9EB 61 95                    a.
        stx     $56,y                           ; F9ED 96 56                    .V
        eor     $55,x                           ; F9EF 55 55                    UU
        sta     $56,x                           ; F9F1 95 56                    .V
        .byte   $5C                             ; F9F3 5C                       \
        eor     $4B,x                           ; F9F4 55 4B                    UK
        and     L5555                           ; F9F6 2D 55 55                 -UU
        eor     $55,x                           ; F9F9 55 55                    UU
        .byte   $4B                             ; F9FB 4B                       K
        eor     $55,x                           ; F9FC 55 55                    UU
        sbc     ($4B,x)                         ; F9FE E1 4B                    .K
        tsx                                     ; FA00 BA                       .
        .byte   $54                             ; FA01 54                       T
        eor     $B5,x                           ; FA02 55 B5                    U.
        .byte   $54                             ; FA04 54                       T
LFA05:  .byte   $53                             ; FA05 53                       S
        ror     a                               ; FA06 6A                       j
        .byte   $53                             ; FA07 53                       S
        eor     $AD,x                           ; FA08 55 AD                    U.
        .byte   $D4                             ; FA0A D4                       .
        ldx     #$17                            ; FA0B A2 17                    ..
        tsx                                     ; FA0D BA                       .
        .byte   $52                             ; FA0E 52                       R
        .byte   $2B                             ; FA0F 2B                       +
        cmp     $52,x                           ; FA10 D5 52                    .R
        .byte   $53                             ; FA12 53                       S
        eor     $55,x                           ; FA13 55 55                    UU
        lsr     $E1,x                           ; FA15 56 E1                    V.
        ora     $5E,x                           ; FA17 15 5E                    .^
        cmp     #$1F                            ; FA19 C9 1F                    ..
        .byte   $F4                             ; FA1B F4                       .
        rts                                     ; FA1C 60                       `

; ----------------------------------------------------------------------------
        .byte   $2B                             ; FA1D 2B                       +
        adc     ($A5),y                         ; FA1E 71 A5                    q.
        eor     $85F8                           ; FA20 4D F8 85                 M..
        ror     $5750,x                         ; FA23 7E 50 57                 ~PW
        ldy     $49,x                           ; FA26 B4 49                    .I
        lsr     $45,x                           ; FA28 56 45                    VE
        lda     $DAA8                           ; FA2A AD A8 DA                 ...
        .byte   $07                             ; FA2D 07                       .
        .byte   $FC                             ; FA2E FC                       .
        .byte   $03                             ; FA2F 03                       .
        inc     $1FC0,x                         ; FA30 FE C0 1F                 ...
        pla                                     ; FA33 68                       h
        .byte   $1F                             ; FA34 1F                       .
        inx                                     ; FA35 E8                       .
        .byte   $8B                             ; FA36 8B                       .
        .byte   $D4                             ; FA37 D4                       .
        .byte   $92                             ; FA38 92                       .
        asl     $FA,x                           ; FA39 16 FA                    ..
        .byte   $03                             ; FA3B 03                       .
        .byte   $FC                             ; FA3C FC                       .
        sta     ($5F,x)                         ; FA3D 81 5F                    ._
        eor     ($2F),y                         ; FA3F 51 2F                    Q/
        pla                                     ; FA41 68                       h
        and     $5569                           ; FA42 2D 69 55                 -iU
        .byte   $72                             ; FA45 72                       r
        .byte   $0F                             ; FA46 0F                       .
        beq     LFA4C                           ; FA47 F0 03                    ..
        .byte   $FC                             ; FA49 FC                       .
        .byte   $87                             ; FA4A 87                       .
        .byte   $7E                             ; FA4B 7E                       ~
LFA4C:  pha                                     ; FA4C 48                       H
        ldx     $44,y                           ; FA4D B6 44                    .D
        .byte   $77                             ; FA4F 77                       w
        .byte   $52                             ; FA50 52                       R
        .byte   $EF                             ; FA51 EF                       .
        .byte   $02                             ; FA52 02                       .
        ror     $7F00,x                         ; FA53 7E 00 7F                 ~..
        cpx     #$1F                            ; FA56 E0 1F                    ..
        ldy     $2B                             ; FA58 A4 2B                    .+
        bne     LFA87                           ; FA5A D0 2B                    .+
        sbc     #$57                            ; FA5C E9 57                    .W
        .byte   $D4                             ; FA5E D4                       .
        .byte   $07                             ; FA5F 07                       .
        beq     LFA71                           ; FA60 F0 0F                    ..
        sed                                     ; FA62 F8                       .
        .byte   $43                             ; FA63 43                       C
        inc     $90,x                           ; FA64 F6 90                    ..
        ror     $81,x                           ; FA66 76 81                    v.
        ror     $BC83,x                         ; FA68 7E 83 BC                 ~..
        sta     ($FF,x)                         ; FA6B 81 FF                    ..
        brk                                     ; FA6D 00                       .
        inc     LFC01,x                         ; FA6E FE 01 FC                 ...
LFA71:  ora     ($FD,x)                         ; FA71 01 FD                    ..
        ora     ($F7),y                         ; FA73 11 F7                    ..
        .byte   $02                             ; FA75 02                       .
        cmp     $1DA2,x                         ; FA76 DD A2 1D                 ...
        inx                                     ; FA79 E8                       .
        .byte   $17                             ; FA7A 17                       .
        .byte   $D4                             ; FA7B D4                       .
        .byte   $0F                             ; FA7C 0F                       .
        adc     ($0F),y                         ; FA7D 71 0F                    q.
        adc     #$17                            ; FA7F 69 17                    i.
        eor     $D527,y                         ; FA81 59 27 D5                 Y'.
        ora     $07F0                           ; FA84 0D F0 07                 ...
LFA87:  sed                                     ; FA87 F8                       .
        .byte   $07                             ; FA88 07                       .
        .byte   $FC                             ; FA89 FC                       .
        ora     $FD                             ; FA8A 05 FD                    ..
        .byte   $44                             ; FA8C 44                       D
        ror     $13,x                           ; FA8D 76 13                    v.
        cmp     $4742,x                         ; FA8F DD 42 47                 .BG
        .byte   $74                             ; FA92 74                       t
        eor     $E4,x                           ; FA93 55 E4                    U.
        eor     $D4,x                           ; FA95 55 D4                    U.
        asl     $D5,x                           ; FA97 16 D5                    ..
        lda     $ABB4                           ; FA99 AD B4 AB                 ...
        ldy     $0D                             ; FA9C A4 0D                    ..
        .byte   $DC                             ; FA9E DC                       .
        .byte   $07                             ; FA9F 07                       .
        .byte   $F4                             ; FAA0 F4                       .
        .byte   $07                             ; FAA1 07                       .
        inx                                     ; FAA2 E8                       .
        and     $37A8                           ; FAA3 2D A8 37                 -.7
        sta     ($BE),y                         ; FAA6 91 BE                    ..
        eor     #$F5                            ; FAA8 49 F5                    I.
        .byte   $42                             ; FAAA 42                       B
        sbc     LFE00,x                         ; FAAB FD 00 FE                 ...
        ora     ($FC,x)                         ; FAAE 01 FC                    ..
        .byte   $03                             ; FAB0 03                       .
        sed                                     ; FAB1 F8                       .
        .byte   $13                             ; FAB2 13                       .
        sed                                     ; FAB3 F8                       .
        .byte   $17                             ; FAB4 17                       .
        beq     LFB06                           ; FAB5 F0 4F                    .O
        pla                                     ; FAB7 68                       h
        .byte   $1F                             ; FAB8 1F                       .
        cpx     #$1F                            ; FAB9 E0 1F                    ..
        .byte   $E0                             ; FABB E0                       .
LFABC:  .byte   $1F                             ; FABC 1F                       .
        cpy     #$1F                            ; FABD C0 1F                    ..
        cpx     #$57                            ; FABF E0 57                    .W
        ldx     #$6F                            ; FAC1 A2 6F                    .o
        sta     ($6D),y                         ; FAC3 91 6D                    .m
        .byte   $D4                             ; FAC5 D4                       .
        .byte   $07                             ; FAC6 07                       .
        .byte   $DC                             ; FAC7 DC                       .
        .byte   $03                             ; FAC8 03                       .
        .byte   $7A                             ; FAC9 7A                       z
        .byte   $4B                             ; FACA 4B                       K
        cld                                     ; FACB D8                       .
        and     $2DD2                           ; FACC 2D D2 2D                 -.-
        eor     ($57),y                         ; FACF 51 57                    QW
        lda     #$F6                            ; FAD1 A9 F6                    ..
        .byte   $80                             ; FAD3 80                       .
        .byte   $7F                             ; FAD4 7F                       .
        .byte   $80                             ; FAD5 80                       .
        .byte   $BF                             ; FAD6 BF                       .
        .byte   $80                             ; FAD7 80                       .
        ldx     LFA05,y                         ; FAD8 BE 05 FA                 ...
        ora     $6A,x                           ; FADB 15 6A                    .j
        .byte   $1B                             ; FADD 1B                       .
        lda     #$3B                            ; FADE A9 3B                    .;
        .byte   $D4                             ; FAE0 D4                       .
        .byte   $07                             ; FAE1 07                       .
        .byte   $F4                             ; FAE2 F4                       .
        .byte   $43                             ; FAE3 43                       C
        inx                                     ; FAE4 E8                       .
        .byte   $2B                             ; FAE5 2B                       +
        cmp     ($3D),y                         ; FAE6 D1 3D                    .=
        bit     $6D                             ; FAE8 24 6D                    $m
        eor     $76                             ; FAEA 45 76                    Ev
        eor     $DA,x                           ; FAEC 55 DA                    U.
        .byte   $03                             ; FAEE 03                       .
        inc     LFC01,x                         ; FAEF FE 01 FC                 ...
        .byte   $07                             ; FAF2 07                       .
        .byte   $72                             ; FAF3 72                       r
        .byte   $17                             ; FAF4 17                       .
        eor     ($57),y                         ; FAF5 51 57                    QW
        and     $5B                             ; FAF7 25 5B                    %[
        .byte   $53                             ; FAF9 53                       S
        cmp     $16,x                           ; FAFA D5 16                    ..
        adc     $09,x                           ; FAFC 75 09                    u.
        .byte   $7A                             ; FAFE 7A                       z
        ora     $D4,x                           ; FAFF 15 D4                    ..
        .byte   $AF                             ; FB01 AF                       .
        ldy     $BD                             ; FB02 A4 BD                    ..
        bcc     LFABC                           ; FB04 90 B6                    ..
LFB06:  and     $D5                             ; FB06 25 D5                    %.
        asl     $C5,x                           ; FB08 16 C5                    ..
        .byte   $B6                             ; FB0A B6                       .
LFB0B:  .byte   $80                             ; FB0B 80                       .
        .byte   $FF                             ; FB0C FF                       .
        brk                                     ; FB0D 00                       .
        .byte   $7F                             ; FB0E 7F                       .
        ora     ($FC),y                         ; FB0F 11 FC                    ..
        .byte   $4B                             ; FB11 4B                       K
        .byte   $D4                             ; FB12 D4                       .
        .byte   $17                             ; FB13 17                       .
        ldy     $56                             ; FB14 A4 56                    .V
        lda     ($DD,x)                         ; FB16 A1 DD                    ..
        .byte   $44                             ; FB18 44                       D
        .byte   $7F                             ; FB19 7F                       .
        cpy     #$BE                            ; FB1A C0 BE                    ..
        bcc     LFB0B                           ; FB1C 90 ED                    ..
        .byte   $82                             ; FB1E 82                       .
        inx                                     ; FB1F E8                       .
        ora     $E9,x                           ; FB20 15 E9                    ..
        adc     $DDA4                           ; FB22 6D A4 DD                 m..
        .byte   $44                             ; FB25 44                       D
        sbc     $05,x                           ; FB26 F5 05                    ..
        sed                                     ; FB28 F8                       .
        .byte   $0F                             ; FB29 0F                       .
        cpx     #$17                            ; FB2A E0 17                    ..
        cpx     #$7F                            ; FB2C E0 7F                    ..
        brk                                     ; FB2E 00                       .
        .byte   $FF                             ; FB2F FF                       .
        .byte   $02                             ; FB30 02                       .
        inc     $25,x                           ; FB31 F6 25                    .%
        ldy     $57,x                           ; FB33 B4 57                    .W
        cpx     #$1F                            ; FB35 E0 1F                    ..
        cpx     #$3F                            ; FB37 E0 3F                    .?
        brk                                     ; FB39 00                       .
        .byte   $FF                             ; FB3A FF                       .
        brk                                     ; FB3B 00                       .
        .byte   $FF                             ; FB3C FF                       .
        bpl     LFBB9                           ; FB3D 10 7A                    .z
        .byte   $4B                             ; FB3F 4B                       K
        eor     $4B,x                           ; FB40 55 4B                    UK
        .byte   $74                             ; FB42 74                       t
        .byte   $AF                             ; FB43 AF                       .
        brk                                     ; FB44 00                       .
        .byte   $FF                             ; FB45 FF                       .
        ora     ($FC,x)                         ; FB46 01 FC                    ..
        .byte   $03                             ; FB48 03                       .
        sed                                     ; FB49 F8                       .
        .byte   $17                             ; FB4A 17                       .
        .byte   $72                             ; FB4B 72                       r
        .byte   $2B                             ; FB4C 2B                       +
        cmp     ($AD),y                         ; FB4D D1 AD                    ..
        sty     $F7                             ; FB4F 84 F7                    ..
        .byte   $42                             ; FB51 42                       B
        .byte   $F4                             ; FB52 F4                       .
        .byte   $03                             ; FB53 03                       .
        sed                                     ; FB54 F8                       .
        .byte   $0F                             ; FB55 0F                       .
        bne     LFB97                           ; FB56 D0 3F                    .?
        sta     ($7D,x)                         ; FB58 81 7D                    .}
        sta     ($7C,x)                         ; FB5A 81 7C                    .|
        .byte   $17                             ; FB5C 17                       .
        cmp     $17,x                           ; FB5D D5 17                    ..
        sty     $DD                             ; FB5F 84 DD                    ..
        asl     $E0,x                           ; FB61 16 E0                    ..
        .byte   $7F                             ; FB63 7F                       .
        brk                                     ; FB64 00                       .
        .byte   $FF                             ; FB65 FF                       .
        ora     ($FC,x)                         ; FB66 01 FC                    ..
        .byte   $07                             ; FB68 07                       .
        beq     LFB8A                           ; FB69 F0 1F                    ..
        cpx     #$3F                            ; FB6B E0 3F                    .?
        cpy     #$FD                            ; FB6D C0 FD                    ..
        brk                                     ; FB6F 00                       .
        cpx     $801F                           ; FB70 EC 1F 80                 ...
        .byte   $FF                             ; FB73 FF                       .
        brk                                     ; FB74 00                       .
        .byte   $FF                             ; FB75 FF                       .
        brk                                     ; FB76 00                       .
        .byte   $FC                             ; FB77 FC                       .
        .byte   $0F                             ; FB78 0F                       .
        sed                                     ; FB79 F8                       .
        .byte   $07                             ; FB7A 07                       .
        adc     ($AF,x)                         ; FB7B 61 AF                    a.
        cpy     $DE                             ; FB7D C4 DE                    ..
        .byte   $5C                             ; FB7F 5C                       \
        brk                                     ; FB80 00                       .
        .byte   $FF                             ; FB81 FF                       .
        ora     ($FC,x)                         ; FB82 01 FC                    ..
        .byte   $07                             ; FB84 07                       .
        beq     LFB96                           ; FB85 F0 0F                    ..
        cpx     #$3F                            ; FB87 E0 3F                    .?
        .byte   $E0                             ; FB89 E0                       .
LFB8A:  .byte   $5F                             ; FB8A 5F                       _
        brk                                     ; FB8B 00                       .
        .byte   $7F                             ; FB8C 7F                       .
        .byte   $82                             ; FB8D 82                       .
        lsr     a:$3F,x                         ; FB8E 5E 3F 00                 ^?.
        .byte   $FF                             ; FB91 FF                       .
        brk                                     ; FB92 00                       .
        inc     LFC03,x                         ; FB93 FE 03 FC                 ...
LFB96:  .byte   $03                             ; FB96 03                       .
LFB97:  .byte   $FC                             ; FB97 FC                       .
        .byte   $23                             ; FB98 23                       #
        .byte   $DA                             ; FB99 DA                       .
        ora     $72,x                           ; FB9A 15 72                    .r
        .byte   $4B                             ; FB9C 4B                       K
        .byte   $F4                             ; FB9D F4                       .
        ora     ($FE,x)                         ; FB9E 01 FE                    ..
        .byte   $03                             ; FBA0 03                       .
        .byte   $FC                             ; FBA1 FC                       .
        .byte   $03                             ; FBA2 03                       .
        sed                                     ; FBA3 F8                       .
        .byte   $0F                             ; FBA4 0F                       .
        beq     LFBB6                           ; FBA5 F0 0F                    ..
        inx                                     ; FBA7 E8                       .
        .byte   $2F                             ; FBA8 2F                       /
        bvs     LFBE2                           ; FBA9 70 37                    p7
        ldy     $35                             ; FBAB A4 35                    .5
        adc     $41,x                           ; FBAD 75 41                    uA
        .byte   $F7                             ; FBAF F7                       .
        .byte   $02                             ; FBB0 02                       .
        inc     $4A,x                           ; FBB1 F6 4A                    .J
        .byte   $DA                             ; FBB3 DA                       .
        and     $51                             ; FBB4 25 51                    %Q
LFBB6:  .byte   $57                             ; FBB6 57                       W
        cmp     $15,x                           ; FBB7 D5 15                    ..
LFBB9:  cmp     ($56),y                         ; FBB9 D1 56                    .V
        adc     a:$DD                           ; FBBB 6D DD 00                 m..
        .byte   $FC                             ; FBBE FC                       .
        ora     ($FE,x)                         ; FBBF 01 FE                    ..
        .byte   $07                             ; FBC1 07                       .
        sed                                     ; FBC2 F8                       .
        ora     ($FC,x)                         ; FBC3 01 FC                    ..
        .byte   $0F                             ; FBC5 0F                       .
        .byte   $DC                             ; FBC6 DC                       .
        ora     #$7A                            ; FBC7 09 7A                    .z
        .byte   $8F                             ; FBC9 8F                       .
        .byte   $54                             ; FBCA 54                       T
        .byte   $4B                             ; FBCB 4B                       K
        ldy     #$3F                            ; FBCC A0 3F                    .?
        sta     ($FF,x)                         ; FBCE 81 FF                    ..
        brk                                     ; FBD0 00                       .
        inc     $BFA3,x                         ; FBD1 FE A3 BF                 ...
        .byte   $80                             ; FBD4 80                       .
        ldx     $50,y                           ; FBD5 B6 50                    .P
        .byte   $3B                             ; FBD7 3B                       ;
        lda     ($56,x)                         ; FBD8 A1 56                    .V
        eor     ($57),y                         ; FBDA 51 57                    QW
        adc     $80,x                           ; FBDC 75 80                    u.
        .byte   $7F                             ; FBDE 7F                       .
        .byte   $80                             ; FBDF 80                       .
        .byte   $FF                             ; FBE0 FF                       .
        .byte   $80                             ; FBE1 80                       .
LFBE2:  .byte   $3F                             ; FBE2 3F                       ?
        cpx     #$1F                            ; FBE3 E0 1F                    ..
        bvs     LFC2E                           ; FBE5 70 47                    pG
        .byte   $74                             ; FBE7 74                       t
        .byte   $4B                             ; FBE8 4B                       K
        .byte   $DC                             ; FBE9 DC                       .
        eor     #$5A                            ; FBEA 49 5A                    IZ
        adc     $11,x                           ; FBEC 75 11                    u.
        .byte   $BF                             ; FBEE BF                       .
        rti                                     ; FBEF 40                       @

; ----------------------------------------------------------------------------
        .byte   $5F                             ; FBF0 5F                       _
        tay                                     ; FBF1 A8                       .
        .byte   $1B                             ; FBF2 1B                       .
        adc     #$4B                            ; FBF3 69 4B                    iK
        .byte   $DA                             ; FBF5 DA                       .
        rol     $55                             ; FBF6 26 55                    &U
        eor     $55,x                           ; FBF8 55 55                    UU
        eor     $F5,x                           ; FBFA 55 F5                    U.
        brk                                     ; FBFC 00                       .
        inc     LFF01,x                         ; FBFD FE 01 FF                 ...
        .byte   $80                             ; FC00 80                       .
LFC01:  .byte   $3F                             ; FC01 3F                       ?
        .byte   $F0                             ; FC02 F0                       .
LFC03:  .byte   $07                             ; FC03 07                       .
        .byte   $FA                             ; FC04 FA                       .
        .byte   $82                             ; FC05 82                       .
        ror     $91,x                           ; FC06 76 91                    v.
        lsr     $51,x                           ; FC08 56 51                    VQ
        .byte   $97                             ; FC0A 97                       .
        .byte   $54                             ; FC0B 54                       T
        .byte   $3B                             ; FC0C 3B                       ;
        cmp     ($5F,x)                         ; FC0D C1 5F                    ._
        rti                                     ; FC0F 40                       @

; ----------------------------------------------------------------------------
        .byte   $0F                             ; FC10 0F                       .
        bcs     LFC62                           ; FC11 B0 4F                    .O
        .byte   $6F                             ; FC13 6F                       o
        .byte   $27                             ; FC14 27                       '
        .byte   $77                             ; FC15 77                       w
        .byte   $AB                             ; FC16 AB                       .
        .byte   $2B                             ; FC17 2B                       +
        eor     #$93                            ; FC18 49 93                    I.
        tax                                     ; FC1A AA                       .
        .byte   $92                             ; FC1B 92                       .
        ora     $F8                             ; FC1C 05 F8                    ..
        .byte   $07                             ; FC1E 07                       .
        sed                                     ; FC1F F8                       .
        ora     ($7F,x)                         ; FC20 01 7F                    ..
        beq     LFC3B                           ; FC22 F0 17                    ..
        .byte   $DA                             ; FC24 DA                       .
        .byte   $0B                             ; FC25 0B                       .
        .byte   $BB                             ; FC26 BB                       .
        .byte   $42                             ; FC27 42                       B
        and     $5559                           ; FC28 2D 59 55                 -YU
        .byte   $5A                             ; FC2B 5A                       Z
        lda     $3E                             ; FC2C A5 3E                    .>
LFC2E:  bvs     LFC3F                           ; FC2E 70 0F                    p.
        sbc     $01,x                           ; FC30 F5 01                    ..
        .byte   $57                             ; FC32 57                       W
        lda     #$2D                            ; FC33 A9 2D                    .-
        eor     $95,x                           ; FC35 55 95                    U.
        lsr     $D5,x                           ; FC37 56 D5                    V.
        lsr     a                               ; FC39 4A                       J
        .byte   $55                             ; FC3A 55                       U
LFC3B:  eor     $55,x                           ; FC3B 55 55                    UU
        .byte   $0B                             ; FC3D 0B                       .
        sed                                     ; FC3E F8                       .
LFC3F:  .byte   $03                             ; FC3F 03                       .
        .byte   $7F                             ; FC40 7F                       .
        cpx     #$0F                            ; FC41 E0 0F                    ..
        .byte   $DA                             ; FC43 DA                       .
        sta     ($B6),y                         ; FC44 91 B6                    ..
        .byte   $54                             ; FC46 54                       T
        .byte   $4B                             ; FC47 4B                       K
        eor     $55,x                           ; FC48 55 55                    UU
        eor     $55,x                           ; FC4A 55 55                    UU
        eor     ($AD),y                         ; FC4C 51 AD                    Q.
        ldx     $C0,y                           ; FC4E B6 C0                    ..
        .byte   $4F                             ; FC50 4F                       O
        .byte   $74                             ; FC51 74                       t
        sta     $5C,x                           ; FC52 95 5C                    .\
        sta     $56,x                           ; FC54 95 56                    .V
        eor     $55,x                           ; FC56 55 55                    UU
        eor     $55,x                           ; FC58 55 55                    UU
        eor     L5555,y                         ; FC5A 59 55 55                 YUU
        eor     $D2,x                           ; FC5D 55 D2                    U.
        rol     $1FE0                           ; FC5F 2E E0 1F                 ...
LFC62:  sed                                     ; FC62 F8                       .
        eor     #$77                            ; FC63 49 77                    Iw
        tax                                     ; FC65 AA                       .
        txs                                     ; FC66 9A                       .
        .byte   $34                             ; FC67 34                       4
        eor     $49,x                           ; FC68 55 49                    UI
        cmp     ($56),y                         ; FC6A D1 56                    .V
        cmp     $2546,x                         ; FC6C DD 46 25                 .F%
        eor     $4D,x                           ; FC6F 55 4D                    UM
        ror     a                               ; FC71 6A                       j
        sta     ($7F,x)                         ; FC72 81 7F                    ..
        jmp     (LD514)                         ; FC74 6C 14 D5                 l..

; ----------------------------------------------------------------------------
        lda     $5524                           ; FC77 AD 24 55                 .$U
        .byte   $5B                             ; FC7A 5B                       [
        .byte   $AB                             ; FC7B AB                       .
LFC7C:  .byte   $54                             ; FC7C 54                       T
        eor     $AD,x                           ; FC7D 55 AD                    U.
        .byte   $54                             ; FC7F 54                       T
        ror     a                               ; FC80 6A                       j
        eor     $B5,x                           ; FC81 55 B5                    U.
        cpy     #$1F                            ; FC83 C0 1F                    ..
        .byte   $7C                             ; FC85 7C                       |
        .byte   $D4                             ; FC86 D4                       .
        ldx     #$4D                            ; FC87 A2 4D                    .M
        tax                                     ; FC89 AA                       .
        tax                                     ; FC8A AA                       .
        eor     $55,x                           ; FC8B 55 55                    UU
        .byte   $5A                             ; FC8D 5A                       Z
        cmp     $95,x                           ; FC8E D5 95                    ..
        tax                                     ; FC90 AA                       .
        lsr     a                               ; FC91 4A                       J
        eor     $25,x                           ; FC92 55 25                    U%
        .byte   $7B                             ; FC94 7B                       {
        cpy     #$87                            ; FC95 C0 87                    ..
        asl     $6ABC,x                         ; FC97 1E BC 6A                 ..j
        .byte   $93                             ; FC9A 93                       .
        rol     a                               ; FC9B 2A                       *
        .byte   $6B                             ; FC9C 6B                       k
        eor     $95,x                           ; FC9D 55 95                    U.
        .byte   $5A                             ; FC9F 5A                       Z
        eor     $A5,x                           ; FCA0 55 A5                    U.
        txs                                     ; FCA2 9A                       .
        lsr     $95,x                           ; FCA3 56 95                    V.
        eor     $E8,x                           ; FCA5 55 E8                    U.
        .byte   $0F                             ; FCA7 0F                       .
        .byte   $5C                             ; FCA8 5C                       \
        lsr     $A9,x                           ; FCA9 56 A9                    V.
        eor     $F5,x                           ; FCAB 55 F5                    U.
        .byte   $D2                             ; FCAD D2                       .
        lsr     a                               ; FCAE 4A                       J
        lda     $4AAA                           ; FCAF AD AA 4A                 ..J
        sta     $56,x                           ; FCB2 95 56                    .V
        lsr     a                               ; FCB4 4A                       J
        eor     #$6D                            ; FCB5 49 6D                    Im
        cmp     $1F,x                           ; FCB7 D5 1F                    ..
        sei                                     ; FCB9 78                       x
        sta     $25                             ; FCBA 85 25                    .%
        lda     $54,x                           ; FCBC B5 54                    .T
        lda     $56                             ; FCBE A5 56                    .V
        eor     ($6B),y                         ; FCC0 51 6B                    Qk
        and     $AA                             ; FCC2 25 AA                    %.
        dec     $AA4A,x                         ; FCC4 DE 4A AA                 .J.
        dec     $55,x                           ; FCC7 D6 55                    .U
        sty     $A5,x                           ; FCC9 94 A5                    ..
        ror     $D3C0                           ; FCCB 6E C0 D3                 n..
        lsr     $6A,x                           ; FCCE 56 6A                    Vj
        .byte   $B2                             ; FCD0 B2                       .
        eor     $55,x                           ; FCD1 55 55                    UU
        .byte   $5A                             ; FCD3 5A                       Z
        eor     $55,x                           ; FCD4 55 55                    UU
        .byte   $5A                             ; FCD6 5A                       Z
        eor     $55,x                           ; FCD7 55 55                    UU
        eor     $55,x                           ; FCD9 55 55                    UU
        eor     $55,x                           ; FCDB 55 55                    UU
        eor     $5A,x                           ; FCDD 55 5A                    UZ
        lda     $69                             ; FCDF A5 69                    .i
        eor     $55,x                           ; FCE1 55 55                    UU
        eor     $55,x                           ; FCE3 55 55                    UU
        tax                                     ; FCE5 AA                       .
        ror     a                               ; FCE6 6A                       j
        eor     $A9,x                           ; FCE7 55 A9                    U.
        lsr     $55,x                           ; FCE9 56 55                    VU
        sta     $55,x                           ; FCEB 95 55                    .U
        eor     $55,x                           ; FCED 55 55                    UU
        cmp     $52,x                           ; FCEF D5 52                    .R
        eor     $55,x                           ; FCF1 55 55                    UU
        eor     $55,x                           ; FCF3 55 55                    UU
        eor     $55,x                           ; FCF5 55 55                    UU
        eor     $AD,x                           ; FCF7 55 AD                    U.
        tax                                     ; FCF9 AA                       .
        .byte   $52                             ; FCFA 52                       R
        .byte   $4B                             ; FCFB 4B                       K
        eor     $55,x                           ; FCFC 55 55                    UU
        lda     #$5A                            ; FCFE A9 5A                    .Z
        lda     #$6A                            ; FD00 A9 6A                    .j
        sta     $5A,x                           ; FD02 95 5A                    .Z
        .byte   $EB                             ; FD04 EB                       .
        lsr     $55,x                           ; FD05 56 55                    VU
        eor     $AB,x                           ; FD07 55 AB                    U.
        .byte   $32                             ; FD09 32                       2
        and     $55                             ; FD0A 25 55                    %U
        eor     $94,x                           ; FD0C 55 94                    U.
        tya                                     ; FD0E 98                       .
        lsr     $55,x                           ; FD0F 56 55                    VU
        .byte   $5A                             ; FD11 5A                       Z
        .byte   $5B                             ; FD12 5B                       [
        eor     $AA,x                           ; FD13 55 AA                    U.
        eor     $59,x                           ; FD15 55 59                    UY
        eor     $55,x                           ; FD17 55 55                    UU
        eor     $55,x                           ; FD19 55 55                    UU
        eor     $A9,x                           ; FD1B 55 A9                    U.
        eor     $A5,x                           ; FD1D 55 A5                    U.
        .byte   $5A                             ; FD1F 5A                       Z
        eor     $55,x                           ; FD20 55 55                    UU
        tax                                     ; FD22 AA                       .
        eor     $49,x                           ; FD23 55 49                    UI
        lda     $55,x                           ; FD25 B5 55                    .U
        .byte   $D2                             ; FD27 D2                       .
        ror     a                               ; FD28 6A                       j
        eor     $AA,x                           ; FD29 55 AA                    U.
        eor     $95,x                           ; FD2B 55 95                    U.
        eor     $55,x                           ; FD2D 55 55                    UU
        eor     $4B,x                           ; FD2F 55 4B                    UK
        eor     $55,x                           ; FD31 55 55                    UU
        eor     $55,x                           ; FD33 55 55                    UU
        and     $4555                           ; FD35 2D 55 45                 -UE
        lda     $AD,x                           ; FD38 B5 AD                    ..
        .byte   $54                             ; FD3A 54                       T
        cmp     $26,x                           ; FD3B D5 26                    .&
        sta     $D6,x                           ; FD3D 95 D6                    ..
        lsr     a                               ; FD3F 4A                       J
        eor     $D5,x                           ; FD40 55 D5                    U.
        rol     a                               ; FD42 2A                       *
        lda     $5554                           ; FD43 AD 54 55                 .TU
        cmp     $52,x                           ; FD46 D5 52                    .R
        adc     $4AA5                           ; FD48 6D A5 4A                 m.J
        sta     $9A,x                           ; FD4B 95 9A                    ..
        tax                                     ; FD4D AA                       .
        tax                                     ; FD4E AA                       .
        tax                                     ; FD4F AA                       .
        lsr     $6A,x                           ; FD50 56 6A                    Vj
        sta     $6A,x                           ; FD52 95 6A                    .j
        eor     $55,x                           ; FD54 55 55                    UU
        eor     $55,x                           ; FD56 55 55                    UU
        eor     $55,x                           ; FD58 55 55                    UU
        .byte   $BB                             ; FD5A BB                       .
        lsr     a                               ; FD5B 4A                       J
        .byte   $52                             ; FD5C 52                       R
        eor     $55,x                           ; FD5D 55 55                    UU
        cmp     $54,x                           ; FD5F D5 54                    .T
        ror     a                               ; FD61 6A                       j
        adc     $2DA9                           ; FD62 6D A9 2D                 m.-
        eor     $A9,x                           ; FD65 55 A9                    U.
        .byte   $52                             ; FD67 52                       R
        lsr     a                               ; FD68 4A                       J
        cmp     $52,x                           ; FD69 D5 52                    .R
        lda     $AAA5                           ; FD6B AD A5 AA                 ...
        eor     $C9,x                           ; FD6E 55 C9                    U.
        ror     $5A92                           ; FD70 6E 92 5A                 n.Z
        ora     $6D,x                           ; FD73 15 6D                    .m
        ora     $B5,x                           ; FD75 15 B5                    ..
        eor     $B2,x                           ; FD77 55 B2                    U.
        lsr     $A5,x                           ; FD79 56 A5                    V.
        .byte   $5A                             ; FD7B 5A                       Z
        sta     $5A,x                           ; FD7C 95 5A                    .Z
        eor     $A5,x                           ; FD7E 55 A5                    U.
        and     $4B69                           ; FD80 2D 69 4B                 -iK
        .byte   $D2                             ; FD83 D2                       .
        .byte   $37                             ; FD84 37                       7
        cpy     $7D                             ; FD85 C4 7D                    .}
        .byte   $42                             ; FD87 42                       B
        adc     $49,x                           ; FD88 75 49                    uI
        cmp     $52,x                           ; FD8A D5 52                    .R
        eor     $2D,x                           ; FD8C 55 2D                    U-
        eor     $55,x                           ; FD8E 55 55                    UU
        eor     $55,x                           ; FD90 55 55                    UU
        lda     $54,x                           ; FD92 B5 54                    .T
        eor     $D5,x                           ; FD94 55 D5                    U.
        .byte   $B2                             ; FD96 B2                       .
        lsr     a                               ; FD97 4A                       J
        eor     $95,x                           ; FD98 55 95                    U.
        .byte   $5A                             ; FD9A 5A                       Z
        lda     $AA                             ; FD9B A5 AA                    ..
        tax                                     ; FD9D AA                       .
        ror     a                               ; FD9E 6A                       j
        eor     $55,x                           ; FD9F 55 55                    UU
        cmp     $45,x                           ; FDA1 D5 45                    .E
        adc     #$2B                            ; FDA3 69 2B                    i+
        eor     $2D,x                           ; FDA5 55 2D                    U-
        eor     $2D,x                           ; FDA7 55 2D                    U-
        eor     $75,x                           ; FDA9 55 75                    Uu
        and     ($B7,x)                         ; FDAB 21 B7                    !.
        .byte   $44                             ; FDAD 44                       D
        cmp     $EC92,x                         ; FDAE DD 92 EC                 ...
        ora     $F5,x                           ; FDB1 15 F5                    ..
        ora     $59,x                           ; FDB3 15 59                    .Y
        .byte   $AB                             ; FDB5 AB                       .
        bvc     LFE05                           ; FDB6 50 4D                    PM
        tax                                     ; FDB8 AA                       .
        tax                                     ; FDB9 AA                       .
        .byte   $52                             ; FDBA 52                       R
        lda     $AA,x                           ; FDBB B5 AA                    ..
        lsr     $55,x                           ; FDBD 56 55                    VU
        eor     $55,x                           ; FDBF 55 55                    UU
        eor     $95,x                           ; FDC1 55 95                    U.
        .byte   $5A                             ; FDC3 5A                       Z
        eor     $6A,x                           ; FDC4 55 6A                    Uj
        lda     $56                             ; FDC6 A5 56                    .V
        sta     $6A,x                           ; FDC8 95 6A                    .j
        eor     $5A,x                           ; FDCA 55 5A                    UZ
        eor     $55,x                           ; FDCC 55 55                    UU
        eor     $55,x                           ; FDCE 55 55                    UU
        eor     $55,x                           ; FDD0 55 55                    UU
        eor     $55,x                           ; FDD2 55 55                    UU
        eor     $6D,x                           ; FDD4 55 6D                    Um
        eor     #$55                            ; FDD6 49 55                    IU
        lda     $A4,x                           ; FDD8 B5 A4                    ..
        ror     $91,x                           ; FDDA 76 91                    v.
        lda     $2A,x                           ; FDDC B5 2A                    .*
        adc     $55                             ; FDDE 65 55                    eU
        cmp     $AA,x                           ; FDE0 D5 AA                    ..
        .byte   $D2                             ; FDE2 D2                       .
        lsr     a                               ; FDE3 4A                       J
        eor     $55,x                           ; FDE4 55 55                    UU
        tax                                     ; FDE6 AA                       .
        tax                                     ; FDE7 AA                       .
        .byte   $D4                             ; FDE8 D4                       .
        tax                                     ; FDE9 AA                       .
        eor     $55,x                           ; FDEA 55 55                    UU
        .byte   $AB                             ; FDEC AB                       .
        lsr     a                               ; FDED 4A                       J
        and     $954D                           ; FDEE 2D 4D 95                 -M.
        lsr     $55,x                           ; FDF1 56 55                    VU
        eor     $B555,y                         ; FDF3 59 55 B5                 YU.
        .byte   $52                             ; FDF6 52                       R
        eor     $25,x                           ; FDF7 55 25                    U%
        lda     $AA,x                           ; FDF9 B5 AA                    ..
        lsr     $D5,x                           ; FDFB 56 D5                    V.
        tax                                     ; FDFD AA                       .
        tax                                     ; FDFE AA                       .
        .byte   $AB                             ; FDFF AB                       .
LFE00:  .byte   $52                             ; FE00 52                       R
LFE01:  .byte   $A9                             ; FE01 A9                       .
LFE02:  .byte   $52                             ; FE02 52                       R
        .byte   $D2                             ; FE03 D2                       .
        txa                                     ; FE04 8A                       .
LFE05:  ldx     $49,y                           ; FE05 B6 49                    .I
LFE07:  .byte   $5B                             ; FE07 5B                       [
        sta     $56,x                           ; FE08 95 56                    .V
        eor     $55,x                           ; FE0A 55 55                    UU
        lda     $56                             ; FE0C A5 56                    .V
        lda     #$56                            ; FE0E A9 56                    .V
        .byte   $5A                             ; FE10 5A                       Z
        eor     $55,x                           ; FE11 55 55                    UU
        eor     $55,x                           ; FE13 55 55                    UU
        eor     $55,x                           ; FE15 55 55                    UU
        eor     $55,x                           ; FE17 55 55                    UU
        eor     $B5,x                           ; FE19 55 B5                    U.
        lsr     a                               ; FE1B 4A                       J
        lda     $552A                           ; FE1C AD 2A 55                 .*U
        eor     $55,x                           ; FE1F 55 55                    UU
        lda     $45,x                           ; FE21 B5 45                    .E
        and     $55,x                           ; FE23 35 55                    5U
        lda     $AD54                           ; FE25 AD 54 AD                 .T.
        pla                                     ; FE28 68                       h
        .byte   $53                             ; FE29 53                       S
        lda     $94,x                           ; FE2A B5 94                    ..
        lsr     a                               ; FE2C 4A                       J
        .byte   $4B                             ; FE2D 4B                       K
        lda     $56,x                           ; FE2E B5 56                    .V
        cmp     $4A,x                           ; FE30 D5 4A                    .J
        inc     $44,x                           ; FE32 F6 44                    .D
        and     $54B5                           ; FE34 2D B5 54                 -.T
        eor     $55,x                           ; FE37 55 55                    UU
        eor     $55,x                           ; FE39 55 55                    UU
        .byte   $5A                             ; FE3B 5A                       Z
        eor     $D5,x                           ; FE3C 55 D5                    U.
        lsr     a                               ; FE3E 4A                       J
LFE3F:  eor     $55,x                           ; FE3F 55 55                    UU
        eor     $55,x                           ; FE41 55 55                    UU
        tax                                     ; FE43 AA                       .
        tax                                     ; FE44 AA                       .
        cmp     $4E,x                           ; FE45 D5 4E                    .N
        .byte   $DC                             ; FE47 DC                       .
        lsr     a                               ; FE48 4A                       J
        and     #$B5                            ; FE49 29 B5                    ).
        .byte   $54                             ; FE4B 54                       T
        tax                                     ; FE4C AA                       .
        ldy     $AA,x                           ; FE4D B4 AA                    ..
        eor     $55,x                           ; FE4F 55 55                    UU
        eor     $55,x                           ; FE51 55 55                    UU
        eor     $55,x                           ; FE53 55 55                    UU
        sta     $56,x                           ; FE55 95 56                    .V
        eor     $55,x                           ; FE57 55 55                    UU
        eor     $55,x                           ; FE59 55 55                    UU
        sta     $55,x                           ; FE5B 95 55                    .U
        eor     $55,x                           ; FE5D 55 55                    UU
        eor     $55,x                           ; FE5F 55 55                    UU
        lda     $AA,x                           ; FE61 B5 AA                    ..
        lsr     a                               ; FE63 4A                       J
        eor     $55,x                           ; FE64 55 55                    UU
        eor     $AD,x                           ; FE66 55 AD                    U.
        .byte   $54                             ; FE68 54                       T
        eor     $55,x                           ; FE69 55 55                    UU
        cmp     $4A,x                           ; FE6B D5 4A                    .J
        and     $A2A9                           ; FE6D 2D A9 A2                 -..
        .byte   $5A                             ; FE70 5A                       Z
        cmp     $55,x                           ; FE71 D5 55                    .U
        lda     $AA,x                           ; FE73 B5 AA                    ..
        lda     #$AA                            ; FE75 A9 AA                    ..
        .byte   $52                             ; FE77 52                       R
        .byte   $53                             ; FE78 53                       S
        eor     $55,x                           ; FE79 55 55                    UU
        sta     $56,x                           ; FE7B 95 56                    .V
        lda     #$55                            ; FE7D A9 55                    .U
        eor     $35,x                           ; FE7F 55 35                    U5
        lda     $54AA                           ; FE81 AD AA 54                 ..T
        sta     $AA,x                           ; FE84 95 AA                    ..
        stx     $56,y                           ; FE86 96 56                    .V
        .byte   $74                             ; FE88 74                       t
        cmp     $AA,x                           ; FE89 D5 AA                    ..
        lda     $5294                           ; FE8B AD 94 52                 ..R
        .byte   $2B                             ; FE8E 2B                       +
        eor     $5A,x                           ; FE8F 55 5A                    UZ
        asl     $5D,x                           ; FE91 16 5D                    .]
        eor     $55,x                           ; FE93 55 55                    UU
        eor     $95,x                           ; FE95 55 95                    U.
        .byte   $5A                             ; FE97 5A                       Z
        lda     $55                             ; FE98 A5 55                    .U
        eor     $55,x                           ; FE9A 55 55                    UU
        eor     $55,x                           ; FE9C 55 55                    UU
        eor     $55,x                           ; FE9E 55 55                    UU
        eor     $55,x                           ; FEA0 55 55                    UU
        eor     $55,x                           ; FEA2 55 55                    UU
        cmp     $9A,x                           ; FEA4 D5 9A                    ..
        .byte   $54                             ; FEA6 54                       T
        eor     $55,x                           ; FEA7 55 55                    UU
        lda     $91D4                           ; FEA9 AD D4 91                 ...
        eor     $C936                           ; FEAC 4D 36 C9                 M6.
        and     $F2                             ; FEAF 25 F2                    %.
        sta     $57                             ; FEB1 85 57                    .W
        adc     #$4B                            ; FEB3 69 4B                    iK
        adc     $95AA                           ; FEB5 6D AA 95                 m..
        stx     $D2,y                           ; FEB8 96 D2                    ..
        .byte   $52                             ; FEBA 52                       R
        eor     $55,x                           ; FEBB 55 55                    UU
        cmp     ($49),y                         ; FEBD D1 49                    .I
        lda     $556A                           ; FEBF AD 6A 55                 .jU
        lda     $956A                           ; FEC2 AD 6A 95                 .j.
        .byte   $52                             ; FEC5 52                       R
        eor     $AA,x                           ; FEC6 55 AA                    U.
        tax                                     ; FEC8 AA                       .
        ror     a                               ; FEC9 6A                       j
        cmp     $A5                             ; FECA C5 A5                    ..
        tax                                     ; FECC AA                       .
        ror     a                               ; FECD 6A                       j
        sbc     $5155                           ; FECE ED 55 51                 .UQ
        eor     $AA,x                           ; FED1 55 AA                    U.
        .byte   $54                             ; FED3 54                       T
        lda     #$4A                            ; FED4 A9 4A                    .J
        .byte   $AB                             ; FED6 AB                       .
        ror     a                               ; FED7 6A                       j
        eor     $55,x                           ; FED8 55 55                    UU
        eor     $55,x                           ; FEDA 55 55                    UU
        eor     $55,x                           ; FEDC 55 55                    UU
        eor     $55,x                           ; FEDE 55 55                    UU
        eor     $65,x                           ; FEE0 55 65                    Ue
        eor     $2D,x                           ; FEE2 55 2D                    U-
        sbc     $D0,x                           ; FEE4 F5 D0                    ..
        lsr     $97                             ; FEE6 46 97                    F.
        .byte   $54                             ; FEE8 54                       T
        cmp     $9A,x                           ; FEE9 D5 9A                    ..
        lsr     $55                             ; FEEB 46 55                    FU
        lda     #$AA                            ; FEED A9 AA                    ..
        .byte   $D2                             ; FEEF D2                       .
        tax                                     ; FEF0 AA                       .
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
LFF00:  brk                                     ; FF00 00                       .
LFF01:  brk                                     ; FF01 00                       .
        brk                                     ; FF02 00                       .
LFF03:  brk                                     ; FF03 00                       .
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
        brk                                     ; FFBF 00                       .
        brk                                     ; FFC0 00                       .
LFFC1:  brk                                     ; FFC1 00                       .
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
;LFFFF:  brk                                     ; FFFF 00                       .
VECTORS
LFFFF = $FFFF
; mod
