.include "../mod.inc"
.segment "M8000"
.org $8000

; da65 V2.17 - Git a9ce4dc
; Created:    2018-08-28 01:38:20
; Input file: out_src\01_00.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L0000           := $0000
L0004           := $0004
L0291           := $0291
L0B16           := $0B16
L2020           := $2020
L2072           := $2072
L4C4C           := $4C4C
L4D4D           := $4D4D
L5041           := $5041
L6D6C           := $6D6C
L7030           := $7030
L9002           := $9002
L9012           := $9012
L9382           := $9382
L943C           := $943C
L944A           := $944A
; ----------------------------------------------------------------------------
        jmp     L943C                           ; 8000 4C 3C 94                 L<.

; ----------------------------------------------------------------------------
        jmp     L944A                           ; 8003 4C 4A 94                 LJ.

; ----------------------------------------------------------------------------
        .byte   $53                             ; 8006 53                       S
        jmp     L5041                           ; 8007 4C 41 50                 LAP

; ----------------------------------------------------------------------------
        and     ($20,x)                         ; 800A 21 20                    ! 
        .byte   $77                             ; 800C 77                       w
        adc     ($74,x)                         ; 800D 61 74                    at
        jsr     L2072                           ; 800F 20 72 20                  r 
        adc     $20,x                           ; 8012 75 20                    u 
        .byte   $64                             ; 8014 64                       d
        adc     $69,x                           ; 8015 75 69                    ui
        ror     $2067                           ; 8017 6E 67 20                 ng 
        pla                                     ; 801A 68                       h
        adc     $61                             ; 801B 65 61                    ea
        .byte   $72                             ; 801D 72                       r
        .byte   $3F                             ; 801E 3F                       ?
        brk                                     ; 801F 00                       .
        brk                                     ; 8020 00                       .
        brk                                     ; 8021 00                       .
        brk                                     ; 8022 00                       .
        brk                                     ; 8023 00                       .
L8024:  eor     $ABA5                           ; 8024 4D A5 AB                 M..
        ldx     $C5,y                           ; 8027 B6 C5                    ..
        rol     $C464,x                         ; 8029 3E 64 C4                 >d.
        .byte   $42                             ; 802C 42                       B
L802D:  .byte   $93                             ; 802D 93                       .
        .byte   $B2                             ; 802E B2                       .
        .byte   $E7                             ; 802F E7                       .
        sbc     ($4D),y                         ; 8030 F1 4D                    .M
        eor     L4D4D                           ; 8032 4D 4D 4D                 MMM
        .byte   $F2                             ; 8035 F2                       .
        ldy     $FF35,x                         ; 8036 BC 35 FF                 .5.
        plp                                     ; 8039 28                       (
        and     #$4D                            ; 803A 29 4D                    )M
        eor     L4D4D                           ; 803C 4D 4D 4D                 MMM
L803F:  sta     L8989                           ; 803F 8D 89 89                 ...
        .byte   $89                             ; 8042 89                       .
        .byte   $89                             ; 8043 89                       .
        txa                                     ; 8044 8A                       .
        txa                                     ; 8045 8A                       .
        txa                                     ; 8046 8A                       .
        .byte   $8B                             ; 8047 8B                       .
        .byte   $8B                             ; 8048 8B                       .
        .byte   $8B                             ; 8049 8B                       .
        .byte   $8B                             ; 804A 8B                       .
        .byte   $8B                             ; 804B 8B                       .
        sta     L8D8D                           ; 804C 8D 8D 8D                 ...
        sta     L8C8B                           ; 804F 8D 8B 8C                 ...
        sta     L8D8C                           ; 8052 8D 8C 8D                 ...
        sta     L8D8D                           ; 8055 8D 8D 8D                 ...
        .byte   $8D                             ; 8058 8D                       .
        .byte   $8D                             ; 8059 8D                       .
L805A:  eor     L4D4D                           ; 805A 4D 4D 4D                 MMM
        eor     L4D4D                           ; 805D 4D 4D 4D                 MMM
        eor     L4D4D                           ; 8060 4D 4D 4D                 MMM
        eor     L4D4D                           ; 8063 4D 4D 4D                 MMM
        lsr     $6E5A                           ; 8066 4E 5A 6E                 NZn
        .byte   $4D                             ; 8069 4D                       M
L806A:  sta     L8D8D                           ; 806A 8D 8D 8D                 ...
        sta     L8D8D                           ; 806D 8D 8D 8D                 ...
        sta     L8D8D                           ; 8070 8D 8D 8D                 ...
        sta     L8D8D                           ; 8073 8D 8D 8D                 ...
        sta     L8D8D                           ; 8076 8D 8D 8D                 ...
        .byte   $8D                             ; 8079 8D                       .
L807A:  sta     $C39E,y                         ; 807A 99 9E C3                 ...
        .byte   $EF                             ; 807D EF                       .
        .byte   $77                             ; 807E 77                       w
        .byte   $3A                             ; 807F 3A                       :
        rol     L8881,x                         ; 8080 3E 81 88                 >..
        dey                                     ; 8083 88                       .
        dey                                     ; 8084 88                       .
        dey                                     ; 8085 88                       .
        dey                                     ; 8086 88                       .
        dey                                     ; 8087 88                       .
        dey                                     ; 8088 88                       .
        dey                                     ; 8089 88                       .
        cmp     $DDDD,x                         ; 808A DD DD DD                 ...
        cmp     $DDDD,x                         ; 808D DD DD DD                 ...
        stx     $9A,y                           ; 8090 96 9A                    ..
        iny                                     ; 8092 C8                       .
        cmp     $2EF2,x                         ; 8093 DD F2 2E                 ...
L8096:  .byte   $8F                             ; 8096 8F                       .
        .byte   $8F                             ; 8097 8F                       .
        .byte   $8F                             ; 8098 8F                       .
        .byte   $8F                             ; 8099 8F                       .
        bcc     L802D                           ; 809A 90 91                    ..
        sta     ($91),y                         ; 809C 91 91                    ..
        sta     ($91),y                         ; 809E 91 91                    ..
        sta     ($91),y                         ; 80A0 91 91                    ..
L80A2:  sta     ($91),y                         ; 80A2 91 91                    ..
        sta     ($91),y                         ; 80A4 91 91                    ..
        sta     ($91),y                         ; 80A6 91 91                    ..
        sta     ($91),y                         ; 80A8 91 91                    ..
        sta     ($91),y                         ; 80AA 91 91                    ..
        .byte   $92                             ; 80AC 92                       .
        .byte   $92                             ; 80AD 92                       .
        .byte   $92                             ; 80AE 92                       .
        .byte   $92                             ; 80AF 92                       .
        .byte   $92                             ; 80B0 92                       .
        .byte   $93                             ; 80B1 93                       .
        brk                                     ; 80B2 00                       .
        brk                                     ; 80B3 00                       .
        ora     ($01,x)                         ; 80B4 01 01                    ..
        .byte   $02                             ; 80B6 02                       .
        .byte   $02                             ; 80B7 02                       .
        .byte   $02                             ; 80B8 02                       .
        .byte   $03                             ; 80B9 03                       .
        .byte   $03                             ; 80BA 03                       .
        .byte   $04                             ; 80BB 04                       .
        .byte   $04                             ; 80BC 04                       .
        .byte   $04                             ; 80BD 04                       .
        ora     $05                             ; 80BE 05 05                    ..
        ora     $06                             ; 80C0 05 06                    ..
        brk                                     ; 80C2 00                       .
        ora     ($02,x)                         ; 80C3 01 02                    ..
        .byte   $02                             ; 80C5 02                       .
        .byte   $03                             ; 80C6 03                       .
        .byte   $04                             ; 80C7 04                       .
        ora     $05                             ; 80C8 05 05                    ..
        asl     $07                             ; 80CA 06 07                    ..
        php                                     ; 80CC 08                       .
        ora     #$09                            ; 80CD 09 09                    ..
        asl     a                               ; 80CF 0A                       .
        .byte   $0B                             ; 80D0 0B                       .
        .byte   $0C                             ; 80D1 0C                       .
        brk                                     ; 80D2 00                       .
        ora     ($02,x)                         ; 80D3 01 02                    ..
        .byte   $03                             ; 80D5 03                       .
        ora     $06                             ; 80D6 05 06                    ..
        .byte   $07                             ; 80D8 07                       .
        php                                     ; 80D9 08                       .
        ora     #$0A                            ; 80DA 09 0A                    ..
        .byte   $0C                             ; 80DC 0C                       .
        ora     $0F0E                           ; 80DD 0D 0E 0F                 ...
        bpl     L80F3                           ; 80E0 10 11                    ..
        brk                                     ; 80E2 00                       .
        .byte   $02                             ; 80E3 02                       .
        .byte   $03                             ; 80E4 03                       .
        ora     $06                             ; 80E5 05 06                    ..
        php                                     ; 80E7 08                       .
        ora     #$0B                            ; 80E8 09 0B                    ..
        .byte   $0C                             ; 80EA 0C                       .
        asl     $110F                           ; 80EB 0E 0F 11                 ...
        .byte   $12                             ; 80EE 12                       .
        .byte   $14                             ; 80EF 14                       .
        ora     $17,x                           ; 80F0 15 17                    ..
        brk                                     ; 80F2 00                       .
L80F3:  .byte   $02                             ; 80F3 02                       .
        .byte   $04                             ; 80F4 04                       .
        asl     $08                             ; 80F5 06 08                    ..
        ora     #$0B                            ; 80F7 09 0B                    ..
        ora     $110F                           ; 80F9 0D 0F 11                 ...
        .byte   $13                             ; 80FC 13                       .
        ora     $17,x                           ; 80FD 15 17                    ..
        ora     $1C1A,y                         ; 80FF 19 1A 1C                 ...
        brk                                     ; 8102 00                       .
        .byte   $02                             ; 8103 02                       .
        .byte   $04                             ; 8104 04                       .
        .byte   $07                             ; 8105 07                       .
        ora     #$0B                            ; 8106 09 0B                    ..
        ora     $1210                           ; 8108 0D 10 12                 ...
        .byte   $14                             ; 810B 14                       .
        asl     $18,x                           ; 810C 16 18                    ..
        .byte   $1B                             ; 810E 1B                       .
        ora     $211F,x                         ; 810F 1D 1F 21                 ..!
        brk                                     ; 8112 00                       .
        .byte   $03                             ; 8113 03                       .
        ora     $08                             ; 8114 05 08                    ..
        asl     a                               ; 8116 0A                       .
        ora     $120F                           ; 8117 0D 0F 12                 ...
        .byte   $14                             ; 811A 14                       .
        .byte   $17                             ; 811B 17                       .
        ora     $1E1C,y                         ; 811C 19 1C 1E                 ...
        and     ($24,x)                         ; 811F 21 24                    !$
        rol     L0000                           ; 8121 26 00                    &.
        .byte   $03                             ; 8123 03                       .
        asl     $08                             ; 8124 06 08                    ..
        .byte   $0B                             ; 8126 0B                       .
        asl     $1411                           ; 8127 0E 11 14                 ...
        .byte   $17                             ; 812A 17                       .
        ora     $1F1C,y                         ; 812B 19 1C 1F                 ...
        .byte   $22                             ; 812E 22                       "
        and     $28                             ; 812F 25 28                    %(
        rol     a                               ; 8131 2A                       *
        brk                                     ; 8132 00                       .
        .byte   $03                             ; 8133 03                       .
        asl     $09                             ; 8134 06 09                    ..
        .byte   $0C                             ; 8136 0C                       .
        .byte   $0F                             ; 8137 0F                       .
        .byte   $13                             ; 8138 13                       .
        .byte   $16                             ; 8139 16                       .
L813A:  ora     $1F1C,y                         ; 813A 19 1C 1F                 ...
        .byte   $22                             ; 813D 22                       "
        and     $28                             ; 813E 25 28                    %(
        .byte   $2B                             ; 8140 2B                       +
        rol     $0300                           ; 8141 2E 00 03                 ...
        .byte   $07                             ; 8144 07                       .
        asl     a                               ; 8145 0A                       .
        ora     $1411                           ; 8146 0D 11 14                 ...
        .byte   $17                             ; 8149 17                       .
        .byte   $1B                             ; 814A 1B                       .
        asl     $2521,x                         ; 814B 1E 21 25                 .!%
        plp                                     ; 814E 28                       (
        .byte   $2B                             ; 814F 2B                       +
        .byte   $2F                             ; 8150 2F                       /
        .byte   $32                             ; 8151 32                       2
        brk                                     ; 8152 00                       .
        .byte   $04                             ; 8153 04                       .
        .byte   $07                             ; 8154 07                       .
        .byte   $0B                             ; 8155 0B                       .
        asl     $1512                           ; 8156 0E 12 15                 ...
        ora     $201C,y                         ; 8159 19 1C 20                 .. 
L815C:  .byte   $23                             ; 815C 23                       #
        .byte   $27                             ; 815D 27                       '
        rol     a                               ; 815E 2A                       *
        .byte   $2E                             ; 815F 2E                       .
L8160:  and     ($35),y                         ; 8160 31 35                    15
        brk                                     ; 8162 00                       .
        .byte   $04                             ; 8163 04                       .
        .byte   $07                             ; 8164 07                       .
        .byte   $0B                             ; 8165 0B                       .
        .byte   $0F                             ; 8166 0F                       .
        .byte   $12                             ; 8167 12                       .
        asl     $1A,x                           ; 8168 16 1A                    ..
        asl     $2521,x                         ; 816A 1E 21 25                 .!%
        and     #$2C                            ; 816D 29 2C                    ),
        bmi     L81A5                           ; 816F 30 34                    04
        .byte   $37                             ; 8171 37                       7
        brk                                     ; 8172 00                       .
        .byte   $04                             ; 8173 04                       .
        php                                     ; 8174 08                       .
        .byte   $0B                             ; 8175 0B                       .
        .byte   $0F                             ; 8176 0F                       .
        .byte   $13                             ; 8177 13                       .
        .byte   $17                             ; 8178 17                       .
        .byte   $1B                             ; 8179 1B                       .
        .byte   $1F                             ; 817A 1F                       .
        .byte   $22                             ; 817B 22                       "
        rol     $2A                             ; 817C 26 2A                    &*
L817E:  rol     $3632                           ; 817E 2E 32 36                 .26
        and     $0400,y                         ; 8181 39 00 04                 9..
        php                                     ; 8184 08                       .
        .byte   $0C                             ; 8185 0C                       .
        bpl     L819C                           ; 8186 10 14                    ..
        clc                                     ; 8188 18                       .
        .byte   $1B                             ; 8189 1B                       .
        .byte   $1F                             ; 818A 1F                       .
        .byte   $23                             ; 818B 23                       #
        .byte   $27                             ; 818C 27                       '
        .byte   $2B                             ; 818D 2B                       +
        .byte   $2F                             ; 818E 2F                       /
L818F:  .byte   $33                             ; 818F 33                       3
        .byte   $37                             ; 8190 37                       7
        .byte   $3B                             ; 8191 3B                       ;
        brk                                     ; 8192 00                       .
        .byte   $04                             ; 8193 04                       .
        php                                     ; 8194 08                       .
        .byte   $0C                             ; 8195 0C                       .
        bpl     L81AC                           ; 8196 10 14                    ..
        clc                                     ; 8198 18                       .
        .byte   $1C                             ; 8199 1C                       .
        .byte   $20                             ; 819A 20                        
        .byte   $24                             ; 819B 24                       $
L819C:  plp                                     ; 819C 28                       (
        bit     $3430                           ; 819D 2C 30 34                 ,04
L81A0:  sec                                     ; 81A0 38                       8
        .byte   $3C                             ; 81A1 3C                       <
        ora     ($02,x)                         ; 81A2 01 02                    ..
        .byte   $04                             ; 81A4 04                       .
L81A5:  php                                     ; 81A5 08                       .
        bpl     L81C8                           ; 81A6 10 20                    . 
        rti                                     ; 81A8 40                       @

; ----------------------------------------------------------------------------
        .byte   $80                             ; 81A9 80                       .
        .byte   $FE                             ; 81AA FE                       .
        .byte   $FC                             ; 81AB FC                       .
L81AC:  sed                                     ; 81AC F8                       .
        beq     L818F                           ; 81AD F0 E0                    ..
        cpy     #$80                            ; 81AF C0 80                    ..
L81B1:  brk                                     ; 81B1 00                       .
        bpl     L81D4                           ; 81B2 10 20                    . 
        bmi     L81F6                           ; 81B4 30 40                    0@
        bvc     L8218                           ; 81B6 50 60                    P`
        bvs     L813A                           ; 81B8 70 80                    p.
        bcc     L815C                           ; 81BA 90 A0                    ..
        bcs     L817E                           ; 81BC B0 C0                    ..
        bne     L81A0                           ; 81BE D0 E0                    ..
        .byte   $F0                             ; 81C0 F0                       .
L81C1:  .byte   $FF                             ; 81C1 FF                       .
        .byte   $3A                             ; 81C2 3A                       :
        ror     $B1,x                           ; 81C3 76 B1                    v.
        sbc     $6629                           ; 81C5 ED 29 66                 .)f
L81C8:  ldx     #$DF                            ; 81C8 A2 DF                    ..
        .byte   $1C                             ; 81CA 1C                       .
        eor     $D497,y                         ; 81CB 59 97 D4                 Y..
        .byte   $12                             ; 81CE 12                       .
        bvc     L8160                           ; 81CF 50 8F                    P.
        cmp     $4B0C                           ; 81D1 CD 0C 4B                 ..K
L81D4:  txa                                     ; 81D4 8A                       .
        dex                                     ; 81D5 CA                       .
        ora     #$49                            ; 81D6 09 49                    .I
        .byte   $89                             ; 81D8 89                       .
        dex                                     ; 81D9 CA                       .
        asl     a                               ; 81DA 0A                       .
        .byte   $4B                             ; 81DB 4B                       K
        sty     $0FCE                           ; 81DC 8C CE 0F                 ...
        eor     ($93),y                         ; 81DF 51 93                    Q.
        cmp     $18,x                           ; 81E1 D5 18                    ..
        .byte   $5B                             ; 81E3 5B                       [
        .byte   $9E                             ; 81E4 9E                       .
        sbc     ($24,x)                         ; 81E5 E1 24                    .$
        pla                                     ; 81E7 68                       h
        ldy     $35F0                           ; 81E8 AC F0 35                 ..5
        adc     $03BE,y                         ; 81EB 79 BE 03                 y..
        eor     #$8F                            ; 81EE 49 8F                    I.
        cmp     $1B,x                           ; 81F0 D5 1B                    ..
        adc     ($A8,x)                         ; 81F2 61 A8                    a.
        .byte   $EF                             ; 81F4 EF                       .
        .byte   $36                             ; 81F5 36                       6
L81F6:  ror     $0DC5,x                         ; 81F6 7E C5 0D                 ~..
        lsr     $9E,x                           ; 81F9 56 9E                    V.
        .byte   $E7                             ; 81FB E7                       .
        bmi     L8277                           ; 81FC 30 79                    0y
        .byte   $C3                             ; 81FE C3                       .
        ora     $A157                           ; 81FF 0D 57 A1                 .W.
        cpx     L8237                           ; 8202 EC 37 82                 .7.
        dec     $6519                           ; 8205 CE 19 65                 ..e
        .byte   $B2                             ; 8208 B2                       .
        inc     $984B,x                         ; 8209 FE 4B 98                 .K.
        sbc     $33                             ; 820C E5 33                    .3
        sta     ($CF,x)                         ; 820E 81 CF                    ..
        asl     $BC6D,x                         ; 8210 1E 6D BC                 .m.
        .byte   $0B                             ; 8213 0B                       .
        .byte   $5B                             ; 8214 5B                       [
        .byte   $AB                             ; 8215 AB                       .
        .byte   $FB                             ; 8216 FB                       .
        .byte   $4C                             ; 8217 4C                       L
L8218:  .byte   $9C                             ; 8218 9C                       .
        sbc     $913F                           ; 8219 ED 3F 91                 .?.
        .byte   $E3                             ; 821C E3                       .
        and     $87,x                           ; 821D 35 87                    5.
        .byte   $DA                             ; 821F DA                       .
        rol     $D581                           ; 8220 2E 81 D5                 ...
        and     #$7D                            ; 8223 29 7D                    )}
        .byte   $D2                             ; 8225 D2                       .
        .byte   $27                             ; 8226 27                       '
        .byte   $7C                             ; 8227 7C                       |
        .byte   $D2                             ; 8228 D2                       .
        plp                                     ; 8229 28                       (
        ror     $2CD5,x                         ; 822A 7E D5 2C                 ~.,
        .byte   $83                             ; 822D 83                       .
        .byte   $DA                             ; 822E DA                       .
        .byte   $32                             ; 822F 32                       2
        txa                                     ; 8230 8A                       .
        .byte   $E3                             ; 8231 E3                       .
        .byte   $3C                             ; 8232 3C                       <
        sta     $EE,x                           ; 8233 95 EE                    ..
        pha                                     ; 8235 48                       H
        .byte   $A2                             ; 8236 A2                       .
L8237:  .byte   $FC                             ; 8237 FC                       .
        .byte   $57                             ; 8238 57                       W
        .byte   $B2                             ; 8239 B2                       .
        .byte   $0D                             ; 823A 0D                       .
        .byte   $69                             ; 823B 69                       i
L823C:  cmp     $22                             ; 823C C5 22                    ."
        ror     $39DB,x                         ; 823E 7E DB 39                 ~.9
        stx     $F4,y                           ; 8241 96 F4                    ..
        .byte   $53                             ; 8243 53                       S
        .byte   $B2                             ; 8244 B2                       .
        ora     ($70),y                         ; 8245 11 70                    .p
        bne     L8279                           ; 8247 D0 30                    .0
        bcc     L823C                           ; 8249 90 F1                    ..
        .byte   $52                             ; 824B 52                       R
        ldy     $16,x                           ; 824C B4 16                    ..
        sei                                     ; 824E 78                       x
        .byte   $DB                             ; 824F DB                       .
        rol     $04A1,x                         ; 8250 3E A1 04                 >..
        pla                                     ; 8253 68                       h
        cmp     $9732                           ; 8254 CD 32 97                 .2.
        .byte   $FC                             ; 8257 FC                       .
        .byte   $62                             ; 8258 62                       b
        iny                                     ; 8259 C8                       .
        .byte   $2F                             ; 825A 2F                       /
        stx     $FD,y                           ; 825B 96 FD                    ..
        adc     $CD                             ; 825D 65 CD                    e.
        and     $9E,x                           ; 825F 35 9E                    5.
        .byte   $07                             ; 8261 07                       .
        adc     ($DB),y                         ; 8262 71 DB                    q.
        eor     $B0                             ; 8264 45 B0                    E.
        .byte   $1B                             ; 8266 1B                       .
        stx     $F2                             ; 8267 86 F2                    ..
        .byte   $5F                             ; 8269 5F                       _
        .byte   $CB                             ; 826A CB                       .
        sec                                     ; 826B 38                       8
        ldx     $14                             ; 826C A6 14                    ..
        .byte   $82                             ; 826E 82                       .
        beq     L82D1                           ; 826F F0 60                    .`
        .byte   $CF                             ; 8271 CF                       .
        .byte   $3F                             ; 8272 3F                       ?
        .byte   $AF                             ; 8273 AF                       .
        jsr     L0291                           ; 8274 20 91 02                  ..
L8277:  .byte   $74                             ; 8277 74                       t
        .byte   $E7                             ; 8278 E7                       .
L8279:  eor     $40CC,y                         ; 8279 59 CC 40                 Y.@
        ldy     $28,x                           ; 827C B4 28                    .(
        sta     L8812,x                         ; 827E 9D 12 88                 ...
        inc     $403F,x                         ; 8281 FE 3F 40                 .?@
        rti                                     ; 8284 40                       @

; ----------------------------------------------------------------------------
        rti                                     ; 8285 40                       @

; ----------------------------------------------------------------------------
        rti                                     ; 8286 40                       @

; ----------------------------------------------------------------------------
        eor     ($41,x)                         ; 8287 41 41                    AA
        eor     ($41,x)                         ; 8289 41 41                    AA
        .byte   $42                             ; 828B 42                       B
        .byte   $42                             ; 828C 42                       B
        .byte   $42                             ; 828D 42                       B
        .byte   $42                             ; 828E 42                       B
        .byte   $43                             ; 828F 43                       C
        .byte   $43                             ; 8290 43                       C
        .byte   $43                             ; 8291 43                       C
        .byte   $43                             ; 8292 43                       C
        .byte   $44                             ; 8293 44                       D
        .byte   $44                             ; 8294 44                       D
        .byte   $44                             ; 8295 44                       D
        .byte   $44                             ; 8296 44                       D
        eor     $45                             ; 8297 45 45                    EE
        eor     $45                             ; 8299 45 45                    EE
        lsr     $46                             ; 829B 46 46                    FF
        lsr     $46                             ; 829D 46 46                    FF
        .byte   $47                             ; 829F 47                       G
        .byte   $47                             ; 82A0 47                       G
        .byte   $47                             ; 82A1 47                       G
        .byte   $47                             ; 82A2 47                       G
        pha                                     ; 82A3 48                       H
        pha                                     ; 82A4 48                       H
        pha                                     ; 82A5 48                       H
        pha                                     ; 82A6 48                       H
        eor     #$49                            ; 82A7 49 49                    II
        eor     #$49                            ; 82A9 49 49                    II
        lsr     a                               ; 82AB 4A                       J
        lsr     a                               ; 82AC 4A                       J
        lsr     a                               ; 82AD 4A                       J
        .byte   $4B                             ; 82AE 4B                       K
        .byte   $4B                             ; 82AF 4B                       K
        .byte   $4B                             ; 82B0 4B                       K
        .byte   $4B                             ; 82B1 4B                       K
        jmp     L4C4C                           ; 82B2 4C 4C 4C                 LLL

; ----------------------------------------------------------------------------
        jmp     L4D4D                           ; 82B5 4C 4D 4D                 LMM

; ----------------------------------------------------------------------------
        eor     $4E4E                           ; 82B8 4D 4E 4E                 MNN
        lsr     $4F4E                           ; 82BB 4E 4E 4F                 NNO
        .byte   $4F                             ; 82BE 4F                       O
        .byte   $4F                             ; 82BF 4F                       O
        bvc     L8312                           ; 82C0 50 50                    PP
        bvc     L8314                           ; 82C2 50 50                    PP
        eor     ($51),y                         ; 82C4 51 51                    QQ
        eor     ($52),y                         ; 82C6 51 52                    QR
        .byte   $52                             ; 82C8 52                       R
        .byte   $52                             ; 82C9 52                       R
        .byte   $52                             ; 82CA 52                       R
        .byte   $53                             ; 82CB 53                       S
        .byte   $53                             ; 82CC 53                       S
        .byte   $53                             ; 82CD 53                       S
        .byte   $54                             ; 82CE 54                       T
        .byte   $54                             ; 82CF 54                       T
        .byte   $54                             ; 82D0 54                       T
L82D1:  eor     $55,x                           ; 82D1 55 55                    UU
        eor     $56,x                           ; 82D3 55 56                    UV
        lsr     $56,x                           ; 82D5 56 56                    VV
        lsr     $57,x                           ; 82D7 56 57                    VW
        .byte   $57                             ; 82D9 57                       W
        .byte   $57                             ; 82DA 57                       W
        cli                                     ; 82DB 58                       X
        cli                                     ; 82DC 58                       X
        cli                                     ; 82DD 58                       X
        eor     $5959,y                         ; 82DE 59 59 59                 YYY
        .byte   $5A                             ; 82E1 5A                       Z
        .byte   $5A                             ; 82E2 5A                       Z
        .byte   $5A                             ; 82E3 5A                       Z
        .byte   $5B                             ; 82E4 5B                       [
        .byte   $5B                             ; 82E5 5B                       [
        .byte   $5B                             ; 82E6 5B                       [
        .byte   $5C                             ; 82E7 5C                       \
        .byte   $5C                             ; 82E8 5C                       \
        .byte   $5C                             ; 82E9 5C                       \
        eor     $5D5D,x                         ; 82EA 5D 5D 5D                 ]]]
        lsr     $5E5E,x                         ; 82ED 5E 5E 5E                 ^^^
        .byte   $5F                             ; 82F0 5F                       _
        .byte   $5F                             ; 82F1 5F                       _
        .byte   $5F                             ; 82F2 5F                       _
        rts                                     ; 82F3 60                       `

; ----------------------------------------------------------------------------
        rts                                     ; 82F4 60                       `

; ----------------------------------------------------------------------------
        rts                                     ; 82F5 60                       `

; ----------------------------------------------------------------------------
        adc     ($61,x)                         ; 82F6 61 61                    aa
        adc     ($62,x)                         ; 82F8 61 62                    ab
        .byte   $62                             ; 82FA 62                       b
        .byte   $63                             ; 82FB 63                       c
        .byte   $63                             ; 82FC 63                       c
        .byte   $63                             ; 82FD 63                       c
        .byte   $64                             ; 82FE 64                       d
        .byte   $64                             ; 82FF 64                       d
        .byte   $64                             ; 8300 64                       d
        adc     $65                             ; 8301 65 65                    ee
        adc     $66                             ; 8303 65 66                    ef
        ror     $67                             ; 8305 66 67                    fg
        .byte   $67                             ; 8307 67                       g
        .byte   $67                             ; 8308 67                       g
        pla                                     ; 8309 68                       h
        pla                                     ; 830A 68                       h
        pla                                     ; 830B 68                       h
        adc     #$69                            ; 830C 69 69                    ii
        ror     a                               ; 830E 6A                       j
        ror     a                               ; 830F 6A                       j
        ror     a                               ; 8310 6A                       j
        .byte   $6B                             ; 8311 6B                       k
L8312:  .byte   $6B                             ; 8312 6B                       k
        .byte   $6C                             ; 8313 6C                       l
L8314:  jmp     (L6D6C)                         ; 8314 6C 6C 6D                 llm

; ----------------------------------------------------------------------------
        adc     $6E6D                           ; 8317 6D 6D 6E                 mmn
        ror     $6F6F                           ; 831A 6E 6F 6F                 noo
        .byte   $6F                             ; 831D 6F                       o
        bvs     L8390                           ; 831E 70 70                    pp
        adc     ($71),y                         ; 8320 71 71                    qq
        .byte   $72                             ; 8322 72                       r
L8323:  .byte   $72                             ; 8323 72                       r
        .byte   $72                             ; 8324 72                       r
        .byte   $73                             ; 8325 73                       s
        .byte   $73                             ; 8326 73                       s
        .byte   $74                             ; 8327 74                       t
        .byte   $74                             ; 8328 74                       t
        .byte   $74                             ; 8329 74                       t
        adc     $75,x                           ; 832A 75 75                    uu
        ror     $76,x                           ; 832C 76 76                    vv
        .byte   $77                             ; 832E 77                       w
        .byte   $77                             ; 832F 77                       w
        .byte   $77                             ; 8330 77                       w
        sei                                     ; 8331 78                       x
        sei                                     ; 8332 78                       x
        adc     $7A79,y                         ; 8333 79 79 7A                 yyz
        .byte   $7A                             ; 8336 7A                       z
        .byte   $7B                             ; 8337 7B                       {
        .byte   $7B                             ; 8338 7B                       {
        .byte   $7B                             ; 8339 7B                       {
        .byte   $7C                             ; 833A 7C                       |
        .byte   $7C                             ; 833B 7C                       |
        adc     $7E7D,x                         ; 833C 7D 7D 7E                 }}~
        ror     $7F7F,x                         ; 833F 7E 7F 7F                 ~..
        .byte   $7F                             ; 8342 7F                       .
        brk                                     ; 8343 00                       .
        tsx                                     ; 8344 BA                       .
        .byte   $97                             ; 8345 97                       .
        .byte   $92                             ; 8346 92                       .
        .byte   $AB                             ; 8347 AB                       .
        cmp     L8A28,x                         ; 8348 DD 28 8A                 .(.
        brk                                     ; 834B 00                       .
        .byte   $89                             ; 834C 89                       .
        and     $D0                             ; 834D 25 D0                    %.
        sty     $2D55                           ; 834F 8C 55 2D                 .U-
        bpl     L8354                           ; 8352 10 00                    ..
L8354:  .byte   $FB                             ; 8354 FB                       .
        brk                                     ; 8355 00                       .
        .byte   $0F                             ; 8356 0F                       .
        .byte   $27                             ; 8357 27                       '
        pha                                     ; 8358 48                       H
        .byte   $72                             ; 8359 72                       r
        .byte   $A3                             ; 835A A3                       .
        .byte   $DB                             ; 835B DB                       .
        .byte   $1B                             ; 835C 1B                       .
        adc     ($AE,x)                         ; 835D 61 AE                    a.
        brk                                     ; 835F 00                       .
        cli                                     ; 8360 58                       X
        ldx     $18,y                           ; 8361 B6 18                    ..
        .byte   $80                             ; 8363 80                       .
        cpx     $D25D                           ; 8364 EC 5D D2                 .].
        .byte   $4B                             ; 8367 4B                       K
        iny                                     ; 8368 C8                       .
        eor     #$CE                            ; 8369 49 CE                    I.
        eor     $E0,x                           ; 836B 55 E0                    U.
        .byte   $6F                             ; 836D 6F                       o
        brk                                     ; 836E 00                       .
        sty     $2B,x                           ; 836F 94 2B                    .+
        cmp     $61                             ; 8371 C5 61                    .a
        brk                                     ; 8373 00                       .
        lda     ($45,x)                         ; 8374 A1 45                    .E
        nop                                     ; 8376 EA                       .
        .byte   $92                             ; 8377 92                       .
        .byte   $3C                             ; 8378 3C                       <
        inx                                     ; 8379 E8                       .
        stx     $46,y                           ; 837A 96 46                    .F
        .byte   $F7                             ; 837C F7                       .
        .byte   $AB                             ; 837D AB                       .
        rts                                     ; 837E 60                       `

; ----------------------------------------------------------------------------
        asl     $CE,x                           ; 837F 16 CE                    ..
        dey                                     ; 8381 88                       .
        .byte   $43                             ; 8382 43                       C
        brk                                     ; 8383 00                       .
        ldx     $3E7D,y                         ; 8384 BE 7D 3E                 .}>
        brk                                     ; 8387 00                       .
        .byte   $C3                             ; 8388 C3                       .
        dey                                     ; 8389 88                       .
        eor     $DB14                           ; 838A 4D 14 DB                 M..
        ldy     $6E                             ; 838D A4 6E                    .n
        .byte   $39                             ; 838F 39                       9
L8390:  ora     $D1                             ; 8390 05 D1                    ..
        .byte   $9F                             ; 8392 9F                       .
        ror     $0D3D                           ; 8393 6E 3D 0D                 n=.
        .byte   $DF                             ; 8396 DF                       .
        lda     ($83),y                         ; 8397 B1 83                    ..
        .byte   $57                             ; 8399 57                       W
        .byte   $2B                             ; 839A 2B                       +
        brk                                     ; 839B 00                       .
        dec     $AC,x                           ; 839C D6 AC                    ..
        .byte   $83                             ; 839E 83                       .
        .byte   $5B                             ; 839F 5B                       [
        .byte   $33                             ; 83A0 33                       3
        .byte   $0C                             ; 83A1 0C                       .
        inc     $C0                             ; 83A2 E6 C0                    ..
        .byte   $9B                             ; 83A4 9B                       .
        .byte   $76                             ; 83A5 76                       v
L83A6:  .byte   $52                             ; 83A6 52                       R
        .byte   $2F                             ; 83A7 2F                       /
        .byte   $0C                             ; 83A8 0C                       .
        sbc     #$C7                            ; 83A9 E9 C7                    ..
        ldx     $85                             ; 83AB A6 85                    ..
        .byte   $64                             ; 83AD 64                       d
        .byte   $44                             ; 83AE 44                       D
        and     $05                             ; 83AF 25 05                    %.
        .byte   $E7                             ; 83B1 E7                       .
        cmp     #$AB                            ; 83B2 C9 AB                    ..
        sta     $5470                           ; 83B4 8D 70 54                 .pT
        .byte   $37                             ; 83B7 37                       7
        .byte   $1B                             ; 83B8 1B                       .
        brk                                     ; 83B9 00                       .
        sbc     $CA                             ; 83BA E5 CA                    ..
        bcs     L8354                           ; 83BC B0 96                    ..
        .byte   $7C                             ; 83BE 7C                       |
        .byte   $62                             ; 83BF 62                       b
        eor     #$31                            ; 83C0 49 31                    I1
        clc                                     ; 83C2 18                       .
        brk                                     ; 83C3 00                       .
        inx                                     ; 83C4 E8                       .
        .byte   $D1                             ; 83C5 D1                       .
L83C6:  lda     $8CA2,y                         ; 83C6 B9 A2 8C                 ...
        adc     $5F,x                           ; 83C9 75 5F                    u_
        eor     #$34                            ; 83CB 49 34                    I4
        asl     $F409,x                         ; 83CD 1E 09 F4                 ...
        .byte   $DF                             ; 83D0 DF                       .
        .byte   $CB                             ; 83D1 CB                       .
        .byte   $B7                             ; 83D2 B7                       .
        .byte   $A3                             ; 83D3 A3                       .
        .byte   $8F                             ; 83D4 8F                       .
        .byte   $7C                             ; 83D5 7C                       |
        pla                                     ; 83D6 68                       h
        eor     $42,x                           ; 83D7 55 42                    UB
        bmi     L83F8                           ; 83D9 30 1D                    0.
        .byte   $0B                             ; 83DB 0B                       .
        sbc     $D6E7,y                         ; 83DC F9 E7 D6                 ...
        cpy     $B3                             ; 83DF C4 B3                    ..
        ldx     #$91                            ; 83E1 A2 91                    ..
        .byte   $80                             ; 83E3 80                       .
        .byte   $6F                             ; 83E4 6F                       o
        .byte   $5F                             ; 83E5 5F                       _
        .byte   $4F                             ; 83E6 4F                       O
        .byte   $3F                             ; 83E7 3F                       ?
        .byte   $2F                             ; 83E8 2F                       /
        .byte   $1F                             ; 83E9 1F                       .
        .byte   $0F                             ; 83EA 0F                       .
        brk                                     ; 83EB 00                       .
        sbc     ($E2),y                         ; 83EC F1 E2                    ..
        .byte   $D3                             ; 83EE D3                       .
        cpy     $B5                             ; 83EF C4 B5                    ..
        .byte   $A7                             ; 83F1 A7                       .
        tya                                     ; 83F2 98                       .
        txa                                     ; 83F3 8A                       .
        .byte   $7C                             ; 83F4 7C                       |
        ror     $5260                           ; 83F5 6E 60 52                 n`R
L83F8:  eor     $37                             ; 83F8 45 37                    E7
        rol     a                               ; 83FA 2A                       *
        .byte   $1C                             ; 83FB 1C                       .
        .byte   $0F                             ; 83FC 0F                       .
        .byte   $02                             ; 83FD 02                       .
        sbc     $E9,x                           ; 83FE F5 E9                    ..
        .byte   $DC                             ; 8400 DC                       .
        bne     L83C6                           ; 8401 D0 C3                    ..
L8403:  .byte   $B7                             ; 8403 B7                       .
        .byte   $AB                             ; 8404 AB                       .
        .byte   $9F                             ; 8405 9F                       .
        .byte   $93                             ; 8406 93                       .
        .byte   $87                             ; 8407 87                       .
        .byte   $7B                             ; 8408 7B                       {
        .byte   $6F                             ; 8409 6F                       o
        .byte   $64                             ; 840A 64                       d
        cli                                     ; 840B 58                       X
        eor     $3642                           ; 840C 4D 42 36                 MB6
        .byte   $2B                             ; 840F 2B                       +
        jsr     L0B16                           ; 8410 20 16 0B                  ..
        brk                                     ; 8413 00                       .
        sbc     $EB,x                           ; 8414 F5 EB                    ..
        cpx     #$D6                            ; 8416 E0 D6                    ..
        cpy     $B7C2                           ; 8418 CC C2 B7                 ...
        lda     $9AA3                           ; 841B AD A3 9A                 ...
        bcc     L83A6                           ; 841E 90 86                    ..
        .byte   $7C                             ; 8420 7C                       |
        .byte   $73                             ; 8421 73                       s
        adc     #$4B                            ; 8422 69 4B                    iK
        pha                                     ; 8424 48                       H
        lsr     $44                             ; 8425 46 44                    FD
        .byte   $42                             ; 8427 42                       B
        rti                                     ; 8428 40                       @

; ----------------------------------------------------------------------------
        .byte   $3F                             ; 8429 3F                       ?
        and     $3A3C,x                         ; 842A 3D 3C 3A                 =<:
        and     $3637,y                         ; 842D 39 37 36                 976
        and     $34,x                           ; 8430 35 34                    54
        .byte   $33                             ; 8432 33                       3
        .byte   $32                             ; 8433 32                       2
        bmi     L8466                           ; 8434 30 30                    00
        .byte   $2F                             ; 8436 2F                       /
        rol     $2C2D                           ; 8437 2E 2D 2C                 .-,
        .byte   $2B                             ; 843A 2B                       +
        rol     a                               ; 843B 2A                       *
        rol     a                               ; 843C 2A                       *
        and     #$28                            ; 843D 29 28                    )(
        plp                                     ; 843F 28                       (
        .byte   $27                             ; 8440 27                       '
        rol     $26                             ; 8441 26 26                    &&
        and     $24                             ; 8443 25 24                    %$
        bit     $23                             ; 8445 24 23                    $#
        .byte   $23                             ; 8447 23                       #
        .byte   $22                             ; 8448 22                       "
        .byte   $22                             ; 8449 22                       "
        and     ($21,x)                         ; 844A 21 21                    !!
        jsr     L2020                           ; 844C 20 20 20                    
        .byte   $1F                             ; 844F 1F                       .
        .byte   $1F                             ; 8450 1F                       .
        asl     $1E1E,x                         ; 8451 1E 1E 1E                 ...
        ora     $1C1D,x                         ; 8454 1D 1D 1C                 ...
        .byte   $1C                             ; 8457 1C                       .
        .byte   $1C                             ; 8458 1C                       .
        .byte   $1B                             ; 8459 1B                       .
        .byte   $1B                             ; 845A 1B                       .
        .byte   $1B                             ; 845B 1B                       .
        .byte   $1A                             ; 845C 1A                       .
        .byte   $1A                             ; 845D 1A                       .
        .byte   $1A                             ; 845E 1A                       .
        .byte   $1A                             ; 845F 1A                       .
        ora     $1919,y                         ; 8460 19 19 19                 ...
        ora     $1818,y                         ; 8463 19 18 18                 ...
L8466:  clc                                     ; 8466 18                       .
        clc                                     ; 8467 18                       .
        .byte   $17                             ; 8468 17                       .
        .byte   $17                             ; 8469 17                       .
        .byte   $17                             ; 846A 17                       .
        .byte   $17                             ; 846B 17                       .
        asl     $16,x                           ; 846C 16 16                    ..
        asl     $16,x                           ; 846E 16 16                    ..
        asl     $15,x                           ; 8470 16 15                    ..
        ora     $15,x                           ; 8472 15 15                    ..
        ora     $15,x                           ; 8474 15 15                    ..
        .byte   $14                             ; 8476 14                       .
        .byte   $14                             ; 8477 14                       .
        .byte   $14                             ; 8478 14                       .
        .byte   $14                             ; 8479 14                       .
        .byte   $14                             ; 847A 14                       .
        .byte   $14                             ; 847B 14                       .
        .byte   $13                             ; 847C 13                       .
        .byte   $13                             ; 847D 13                       .
        .byte   $13                             ; 847E 13                       .
        .byte   $13                             ; 847F 13                       .
        .byte   $13                             ; 8480 13                       .
        .byte   $13                             ; 8481 13                       .
        .byte   $12                             ; 8482 12                       .
        .byte   $12                             ; 8483 12                       .
        .byte   $12                             ; 8484 12                       .
        .byte   $12                             ; 8485 12                       .
        .byte   $12                             ; 8486 12                       .
        .byte   $12                             ; 8487 12                       .
        .byte   $12                             ; 8488 12                       .
        ora     ($11),y                         ; 8489 11 11                    ..
        ora     ($11),y                         ; 848B 11 11                    ..
        ora     ($11),y                         ; 848D 11 11                    ..
        ora     ($11),y                         ; 848F 11 11                    ..
        bpl     L84A3                           ; 8491 10 10                    ..
        bpl     L84A5                           ; 8493 10 10                    ..
        bpl     L84A7                           ; 8495 10 10                    ..
        bpl     L84A9                           ; 8497 10 10                    ..
        bpl     L84AA                           ; 8499 10 0F                    ..
        .byte   $0F                             ; 849B 0F                       .
        .byte   $0F                             ; 849C 0F                       .
        .byte   $0F                             ; 849D 0F                       .
        .byte   $0F                             ; 849E 0F                       .
        .byte   $0F                             ; 849F 0F                       .
        .byte   $0F                             ; 84A0 0F                       .
        .byte   $0F                             ; 84A1 0F                       .
        .byte   $0F                             ; 84A2 0F                       .
L84A3:  .byte   $0F                             ; 84A3 0F                       .
        .byte   $0E                             ; 84A4 0E                       .
L84A5:  .byte   $0E                             ; 84A5 0E                       .
        .byte   $0E                             ; 84A6 0E                       .
L84A7:  .byte   $0E                             ; 84A7 0E                       .
        .byte   $0E                             ; 84A8 0E                       .
L84A9:  .byte   $0E                             ; 84A9 0E                       .
L84AA:  asl     $0E0E                           ; 84AA 0E 0E 0E                 ...
        asl     $0D0E                           ; 84AD 0E 0E 0D                 ...
        ora     $0D0D                           ; 84B0 0D 0D 0D                 ...
        ora     $0D0D                           ; 84B3 0D 0D 0D                 ...
        ora     $0D0D                           ; 84B6 0D 0D 0D                 ...
        ora     $0D0D                           ; 84B9 0D 0D 0D                 ...
        .byte   $0C                             ; 84BC 0C                       .
        .byte   $0C                             ; 84BD 0C                       .
        .byte   $0C                             ; 84BE 0C                       .
        .byte   $0C                             ; 84BF 0C                       .
        .byte   $0C                             ; 84C0 0C                       .
        .byte   $0C                             ; 84C1 0C                       .
        .byte   $0C                             ; 84C2 0C                       .
        .byte   $0C                             ; 84C3 0C                       .
        .byte   $0C                             ; 84C4 0C                       .
        .byte   $0C                             ; 84C5 0C                       .
        .byte   $0C                             ; 84C6 0C                       .
        .byte   $0C                             ; 84C7 0C                       .
        .byte   $0C                             ; 84C8 0C                       .
        .byte   $0C                             ; 84C9 0C                       .
        .byte   $0C                             ; 84CA 0C                       .
        .byte   $0C                             ; 84CB 0C                       .
        .byte   $0B                             ; 84CC 0B                       .
        .byte   $0B                             ; 84CD 0B                       .
        .byte   $0B                             ; 84CE 0B                       .
        .byte   $0B                             ; 84CF 0B                       .
        .byte   $0B                             ; 84D0 0B                       .
        .byte   $0B                             ; 84D1 0B                       .
        .byte   $0B                             ; 84D2 0B                       .
        .byte   $0B                             ; 84D3 0B                       .
        .byte   $0B                             ; 84D4 0B                       .
        .byte   $0B                             ; 84D5 0B                       .
        .byte   $0B                             ; 84D6 0B                       .
        .byte   $0B                             ; 84D7 0B                       .
        .byte   $0B                             ; 84D8 0B                       .
        .byte   $0B                             ; 84D9 0B                       .
        .byte   $0B                             ; 84DA 0B                       .
        .byte   $0B                             ; 84DB 0B                       .
        .byte   $0B                             ; 84DC 0B                       .
        .byte   $0B                             ; 84DD 0B                       .
        asl     a                               ; 84DE 0A                       .
        asl     a                               ; 84DF 0A                       .
        asl     a                               ; 84E0 0A                       .
        asl     a                               ; 84E1 0A                       .
        asl     a                               ; 84E2 0A                       .
        asl     a                               ; 84E3 0A                       .
        asl     a                               ; 84E4 0A                       .
        asl     a                               ; 84E5 0A                       .
        asl     a                               ; 84E6 0A                       .
        asl     a                               ; 84E7 0A                       .
        asl     a                               ; 84E8 0A                       .
        asl     a                               ; 84E9 0A                       .
        asl     a                               ; 84EA 0A                       .
        asl     a                               ; 84EB 0A                       .
        asl     a                               ; 84EC 0A                       .
        asl     a                               ; 84ED 0A                       .
        asl     a                               ; 84EE 0A                       .
        asl     a                               ; 84EF 0A                       .
        asl     a                               ; 84F0 0A                       .
        asl     a                               ; 84F1 0A                       .
        asl     a                               ; 84F2 0A                       .
        asl     a                               ; 84F3 0A                       .
        ora     #$09                            ; 84F4 09 09                    ..
        ora     #$09                            ; 84F6 09 09                    ..
        ora     #$09                            ; 84F8 09 09                    ..
        ora     #$09                            ; 84FA 09 09                    ..
        ora     #$09                            ; 84FC 09 09                    ..
        ora     #$09                            ; 84FE 09 09                    ..
        ora     #$09                            ; 8500 09 09                    ..
        ora     #$8E                            ; 8502 09 8E                    ..
        and     $03,x                           ; 8504 35 03                    5.
        clc                                     ; 8506 18                       .
        adc     #$01                            ; 8507 69 01                    i.
        sta     $2E                             ; 8509 85 2E                    ..
        tya                                     ; 850B 98                       .
        adc     #$A0                            ; 850C 69 A0                    i.
        sta     $2F                             ; 850E 85 2F                    ./
        rts                                     ; 8510 60                       `

; ----------------------------------------------------------------------------
        sty     $0350                           ; 8511 8C 50 03                 .P.
        sta     $0339                           ; 8514 8D 39 03                 .9.
        asl     a                               ; 8517 0A                       .
        adc     $0339                           ; 8518 6D 39 03                 m9.
        adc     $2E                             ; 851B 65 2E                    e.
        sta     L0000                           ; 851D 85 00                    ..
        lda     $2F                             ; 851F A5 2F                    ./
        adc     #$00                            ; 8521 69 00                    i.
        sta     $01                             ; 8523 85 01                    ..
        lda     $0335                           ; 8525 AD 35 03                 .5.
;        sta     $5FFA                           ; 8528 8D FA 5F                 .._
 jsr sta_5FFA ; mod
        ldy     #$00                            ; 852B A0 00                    ..
        lda     (L0000),y                       ; 852D B1 00                    ..
        sta     $02                             ; 852F 85 02                    ..
        iny                                     ; 8531 C8                       .
        lda     (L0000),y                       ; 8532 B1 00                    ..
        sta     $03                             ; 8534 85 03                    ..
        iny                                     ; 8536 C8                       .
        lda     (L0000),y                       ; 8537 B1 00                    ..
;        sta     $5FFA                           ; 8539 8D FA 5F                 .._
 jsr sta_5FFA ; mod
        sta     $0336                           ; 853C 8D 36 03                 .6.
        ldy     #$00                            ; 853F A0 00                    ..
        lda     ($02),y                         ; 8541 B1 02                    ..
        sta     $0332                           ; 8543 8D 32 03                 .2.
        iny                                     ; 8546 C8                       .
        lda     ($02),y                         ; 8547 B1 02                    ..
        sta     $0334                           ; 8549 8D 34 03                 .4.
        iny                                     ; 854C C8                       .
        lda     ($02),y                         ; 854D B1 02                    ..
        sta     $0333                           ; 854F 8D 33 03                 .3.
        iny                                     ; 8552 C8                       .
        lda     ($02),y                         ; 8553 B1 02                    ..
        sta     L0000                           ; 8555 85 00                    ..
        iny                                     ; 8557 C8                       .
        lda     ($02),y                         ; 8558 B1 02                    ..
        sta     $01                             ; 855A 85 01                    ..
        iny                                     ; 855C C8                       .
        lda     ($02),y                         ; 855D B1 02                    ..
        sta     $0338                           ; 855F 8D 38 03                 .8.
        iny                                     ; 8562 C8                       .
        lda     ($02),y                         ; 8563 B1 02                    ..
        sta     $0337                           ; 8565 8D 37 03                 .7.
        iny                                     ; 8568 C8                       .
        lda     ($02),y                         ; 8569 B1 02                    ..
        sta     $033A                           ; 856B 8D 3A 03                 .:.
        and     #$10                            ; 856E 29 10                    ).
        beq     L859A                           ; 8570 F0 28                    .(
        ldy     #$C0                            ; 8572 A0 C0                    ..
        sty     $F800                           ; 8574 8C 00 F8                 ...
        lda     #$00                            ; 8577 A9 00                    ..
L8579:  sta     $4800                           ; 8579 8D 00 48                 ..H
        iny                                     ; 857C C8                       .
        bne     L8579                           ; 857D D0 FA                    ..
        lda     #$7F                            ; 857F A9 7F                    ..
        sta     $F800                           ; 8581 8D 00 F8                 ...
        lda     #$70                            ; 8584 A9 70                    .p
        sta     $4800                           ; 8586 8D 00 48                 ..H
        lda     #$80                            ; 8589 A9 80                    ..
        sta     $F800                           ; 858B 8D 00 F8                 ...
        ldy     #$10                            ; 858E A0 10                    ..
L8590:  lda     ($02),y                         ; 8590 B1 02                    ..
        sta     $4800                           ; 8592 8D 00 48                 ..H
        iny                                     ; 8595 C8                       .
        cpy     #$50                            ; 8596 C0 50                    .P
        bne     L8590                           ; 8598 D0 F6                    ..
L859A:  ldy     #$50                            ; 859A A0 50                    .P
L859C:  lda     ($02),y                         ; 859C B1 02                    ..
        sta     $02EE,y                         ; 859E 99 EE 02                 ...
        iny                                     ; 85A1 C8                       .
        cpy     #$60                            ; 85A2 C0 60                    .`
        bne     L859C                           ; 85A4 D0 F6                    ..
        clc                                     ; 85A6 18                       .
        lda     #$60                            ; 85A7 A9 60                    .`
        ldy     #$0E                            ; 85A9 A0 0E                    ..
        jsr     L8642                           ; 85AB 20 42 86                  B.
        lda     $0338                           ; 85AE AD 38 03                 .8.
        ldy     #$08                            ; 85B1 A0 08                    ..
        jsr     L8642                           ; 85B3 20 42 86                  B.
        lda     L0000                           ; 85B6 A5 00                    ..
        ldy     #$0A                            ; 85B8 A0 0A                    ..
        jsr     L8642                           ; 85BA 20 42 86                  B.
        lda     L0000                           ; 85BD A5 00                    ..
        ldy     #$0C                            ; 85BF A0 0C                    ..
        jsr     L8642                           ; 85C1 20 42 86                  B.
        lda     L0000                           ; 85C4 A5 00                    ..
        ldy     #$02                            ; 85C6 A0 02                    ..
        jsr     L8642                           ; 85C8 20 42 86                  B.
        lda     $01                             ; 85CB A5 01                    ..
        ldy     #$04                            ; 85CD A0 04                    ..
        jsr     L8642                           ; 85CF 20 42 86                  B.
        lda     $01                             ; 85D2 A5 01                    ..
        ldy     #$06                            ; 85D4 A0 06                    ..
        jsr     L8642                           ; 85D6 20 42 86                  B.
        lda     $0332                           ; 85D9 AD 32 03                 .2.
        jsr     L8698                           ; 85DC 20 98 86                  ..
        ldy     #$00                            ; 85DF A0 00                    ..
        sty     $035B                           ; 85E1 8C 5B 03                 .[.
        sty     $035A                           ; 85E4 8C 5A 03                 .Z.
        jsr     L8654                           ; 85E7 20 54 86                  T.
        lda     #$80                            ; 85EA A9 80                    ..
        sta     $0358                           ; 85EC 8D 58 03                 .X.
        lda     #$0F                            ; 85EF A9 0F                    ..
        sta     $4015                           ; 85F1 8D 15 40                 ..@
        lda     #$08                            ; 85F4 A9 08                    ..
        sta     $4001                           ; 85F6 8D 01 40                 ..@
        sta     $4005                           ; 85F9 8D 05 40                 ..@
        lda     $033A                           ; 85FC AD 3A 03                 .:.
        and     #$08                            ; 85FF 29 08                    ).
        beq     L8608                           ; 8601 F0 05                    ..
        lda     #$03                            ; 8603 A9 03                    ..
        sta     $5015                           ; 8605 8D 15 50                 ..P
L8608:  lda     #$FF                            ; 8608 A9 FF                    ..
        sta     $033D                           ; 860A 8D 3D 03                 .=.
        lda     $033A                           ; 860D AD 3A 03                 .:.
        and     #$20                            ; 8610 29 20                    ) 
        beq     L862B                           ; 8612 F0 17                    ..
        ldy     #$0D                            ; 8614 A0 0D                    ..
        lda     #$00                            ; 8616 A9 00                    ..
L8618:  sty     $C000                           ; 8618 8C 00 C0                 ...
        sta     $E000                           ; 861B 8D 00 E0                 ...
        dey                                     ; 861E 88                       .
        bpl     L8618                           ; 861F 10 F7                    ..
        lda     #$07                            ; 8621 A9 07                    ..
        sta     $C000                           ; 8623 8D 00 C0                 ...
        lda     #$38                            ; 8626 A9 38                    .8
        sta     $E000                           ; 8628 8D 00 E0                 ...
L862B:  lda     $033A                           ; 862B AD 3A 03                 .:.
        and     #$02                            ; 862E 29 02                    ).
        beq     L8641                           ; 8630 F0 0F                    ..
        ldy     #$20                            ; 8632 A0 20                    . 
        lda     #$00                            ; 8634 A9 00                    ..
L8636:  sty     $9010                           ; 8636 8C 10 90                 ...
        sta     $9030                           ; 8639 8D 30 90                 .0.
        iny                                     ; 863C C8                       .
        cpy     #$26                            ; 863D C0 26                    .&
        bne     L8636                           ; 863F D0 F5                    ..
L8641:  rts                                     ; 8641 60                       `

; ----------------------------------------------------------------------------
L8642:  clc                                     ; 8642 18                       .
        adc     $02                             ; 8643 65 02                    e.
        sta     $02                             ; 8645 85 02                    ..
        sta     $2E,y                           ; 8647 99 2E 00                 ...
        lda     $03                             ; 864A A5 03                    ..
        adc     #$00                            ; 864C 69 00                    i.
        sta     $03                             ; 864E 85 03                    ..
        sta     $2F,y                           ; 8650 99 2F 00                 ./.
        rts                                     ; 8653 60                       `

; ----------------------------------------------------------------------------
L8654:  lda     $0336                           ; 8654 AD 36 03                 .6.
;        sta     $5FFA                           ; 8657 8D FA 5F                 .._
 jsr sta_5FFA ; mod
L865A:  lda     ($3C),y                         ; 865A B1 3C                    .<
        cmp     #$FE                            ; 865C C9 FE                    ..
        beq     L8667                           ; 865E F0 07                    ..
        bcc     L866D                           ; 8660 90 0B                    ..
        ldy     #$00                            ; 8662 A0 00                    ..
        jmp     L865A                           ; 8664 4C 5A 86                 LZ.

; ----------------------------------------------------------------------------
L8667:  bne     L866D                           ; 8667 D0 04                    ..
        iny                                     ; 8669 C8                       .
        jmp     L865A                           ; 866A 4C 5A 86                 LZ.

; ----------------------------------------------------------------------------
L866D:  sty     $0350                           ; 866D 8C 50 03                 .P.
        tay                                     ; 8670 A8                       .
        lda     ($36),y                         ; 8671 B1 36                    .6
        sta     $3E                             ; 8673 85 3E                    .>
        lda     ($38),y                         ; 8675 B1 38                    .8
        sta     $3F                             ; 8677 85 3F                    .?
        lda     ($3A),y                         ; 8679 B1 3A                    .:
        sta     $033B                           ; 867B 8D 3B 03                 .;.
;        sta     $5FFA                           ; 867E 8D FA 5F                 .._
 jsr sta_5FFA ; mod
        ldy     #$00                            ; 8681 A0 00                    ..
        lda     ($3E),y                         ; 8683 B1 3E                    .>
        sta     $033C                           ; 8685 8D 3C 03                 .<.
        inc     $3E                             ; 8688 E6 3E                    .>
        lda     $3E                             ; 868A A5 3E                    .>
        bne     L8690                           ; 868C D0 02                    ..
        inc     $3F                             ; 868E E6 3F                    .?
L8690:  lda     #$00                            ; 8690 A9 00                    ..
        sta     $0359                           ; 8692 8D 59 03                 .Y.
        sta     $28                             ; 8695 85 28                    .(
        rts                                     ; 8697 60                       `

; ----------------------------------------------------------------------------
L8698:  sta     $0332                           ; 8698 8D 32 03                 .2.
        tay                                     ; 869B A8                       .
        lda     L8323,y                         ; 869C B9 23 83                 .#.
        sta     $0330                           ; 869F 8D 30 03                 .0.
        lda     L8403,y                         ; 86A2 B9 03 84                 ...
        sta     $0331                           ; 86A5 8D 31 03                 .1.
        rts                                     ; 86A8 60                       `

; ----------------------------------------------------------------------------
L86A9:  bit     $035B                           ; 86A9 2C 5B 03                 ,[.
        bmi     L86C7                           ; 86AC 30 19                    0.
        jsr     L86D4                           ; 86AE 20 D4 86                  ..
        sec                                     ; 86B1 38                       8
        lda     $035A                           ; 86B2 AD 5A 03                 .Z.
        sbc     $0330                           ; 86B5 ED 30 03                 .0.
        sta     $035A                           ; 86B8 8D 5A 03                 .Z.
        lda     $035B                           ; 86BB AD 5B 03                 .[.
        sbc     $0331                           ; 86BE ED 31 03                 .1.
        sta     $035B                           ; 86C1 8D 5B 03                 .[.
        jmp     L86A9                           ; 86C4 4C A9 86                 L..

; ----------------------------------------------------------------------------
L86C7:  clc                                     ; 86C7 18                       .
        lda     $035B                           ; 86C8 AD 5B 03                 .[.
        adc     #$10                            ; 86CB 69 10                    i.
        sta     $035B                           ; 86CD 8D 5B 03                 .[.
        jsr     L8D6F                           ; 86D0 20 6F 8D                  o.
        rts                                     ; 86D3 60                       `

; ----------------------------------------------------------------------------
L86D4:  lda     $28                             ; 86D4 A5 28                    .(
        bne     L86DB                           ; 86D6 D0 03                    ..
        jsr     L8712                           ; 86D8 20 12 87                  ..
L86DB:  lda     $0336                           ; 86DB AD 36 03                 .6.
;        sta     $5FFA                           ; 86DE 8D FA 5F                 .._
 jsr sta_5FFA ; mod
        jsr     L8794                           ; 86E1 20 94 87                  ..
        inc     $28                             ; 86E4 E6 28                    .(
        lda     $28                             ; 86E6 A5 28                    .(
        cmp     $0333                           ; 86E8 CD 33 03                 .3.
        bcc     L8711                           ; 86EB 90 24                    .$
        lda     #$00                            ; 86ED A9 00                    ..
        sta     $28                             ; 86EF 85 28                    .(
        bit     $0356                           ; 86F1 2C 56 03                 ,V.
        bpl     L86FF                           ; 86F4 10 09                    ..
        sta     $0356                           ; 86F6 8D 56 03                 .V.
        ldy     $0355                           ; 86F9 AC 55 03                 .U.
        jmp     L8654                           ; 86FC 4C 54 86                 LT.

; ----------------------------------------------------------------------------
L86FF:  inc     $0359                           ; 86FF EE 59 03                 .Y.
        lda     $0359                           ; 8702 AD 59 03                 .Y.
        cmp     $033C                           ; 8705 CD 3C 03                 .<.
        bne     L8711                           ; 8708 D0 07                    ..
        ldy     $0350                           ; 870A AC 50 03                 .P.
        iny                                     ; 870D C8                       .
        jmp     L8654                           ; 870E 4C 54 86                 LT.

; ----------------------------------------------------------------------------
L8711:  rts                                     ; 8711 60                       `

; ----------------------------------------------------------------------------
L8712:  ldy     $033B                           ; 8712 AC 3B 03                 .;.
;        sty     $5FFA                           ; 8715 8C FA 5F                 .._
 jsr sty_5FFA ; mod
        iny                                     ; 8718 C8                       .
;        sty     $5FFB                           ; 8719 8C FB 5F                 .._
 jsr sty_5FFB ; mod
        ldy     #$00                            ; 871C A0 00                    ..
        lda     ($3E),y                         ; 871E B1 3E                    .>
        iny                                     ; 8720 C8                       .
        sta     $034E                           ; 8721 8D 4E 03                 .N.
        ldx     #$00                            ; 8724 A2 00                    ..
        jsr     L8751                           ; 8726 20 51 87                  Q.
        lda     $0337                           ; 8729 AD 37 03                 .7.
        cmp     #$08                            ; 872C C9 08                    ..
        bcc     L873B                           ; 872E 90 0B                    ..
        lda     ($3E),y                         ; 8730 B1 3E                    .>
        iny                                     ; 8732 C8                       .
        sta     $034F                           ; 8733 8D 4F 03                 .O.
        ldx     #$08                            ; 8736 A2 08                    ..
        jsr     L8751                           ; 8738 20 51 87                  Q.
L873B:  tya                                     ; 873B 98                       .
        clc                                     ; 873C 18                       .
        adc     $3E                             ; 873D 65 3E                    e>
        sta     $3E                             ; 873F 85 3E                    .>
        lda     $3F                             ; 8741 A5 3F                    .?
        adc     #$00                            ; 8743 69 00                    i.
        cmp     #$D0                            ; 8745 C9 D0                    ..
        bcc     L874E                           ; 8747 90 05                    ..
        inc     $033B                           ; 8749 EE 3B 03                 .;.
        and     #$EF                            ; 874C 29 EF                    ).
L874E:  sta     $3F                             ; 874E 85 3F                    .?
        rts                                     ; 8750 60                       `

; ----------------------------------------------------------------------------
L8751:  lsr     a                               ; 8751 4A                       J
        sta     $01                             ; 8752 85 01                    ..
        bcc     L878C                           ; 8754 90 36                    .6
L8756:  lda     ($3E),y                         ; 8756 B1 3E                    .>
        iny                                     ; 8758 C8                       .
        lsr     a                               ; 8759 4A                       J
        sta     L0000                           ; 875A 85 00                    ..
        bcc     L8764                           ; 875C 90 06                    ..
        lda     ($3E),y                         ; 875E B1 3E                    .>
        iny                                     ; 8760 C8                       .
        sta     $0260,x                         ; 8761 9D 60 02                 .`.
L8764:  lsr     L0000                           ; 8764 46 00                    F.
        bcc     L876E                           ; 8766 90 06                    ..
        lda     ($3E),y                         ; 8768 B1 3E                    .>
        iny                                     ; 876A C8                       .
        sta     $0220,x                         ; 876B 9D 20 02                 . .
L876E:  lsr     L0000                           ; 876E 46 00                    F.
        bcc     L8778                           ; 8770 90 06                    ..
        lda     ($3E),y                         ; 8772 B1 3E                    .>
        iny                                     ; 8774 C8                       .
        sta     $0230,x                         ; 8775 9D 30 02                 .0.
L8778:  lsr     L0000                           ; 8778 46 00                    F.
        bcc     L8787                           ; 877A 90 0B                    ..
        lda     ($3E),y                         ; 877C B1 3E                    .>
        iny                                     ; 877E C8                       .
        sta     $0240,x                         ; 877F 9D 40 02                 .@.
L8782:  lda     ($3E),y                         ; 8782 B1 3E                    .>
        iny                                     ; 8784 C8                       .
        sta     $08,x                           ; 8785 95 08                    ..
L8787:  lda     L0000                           ; 8787 A5 00                    ..
        sta     $0270,x                         ; 8789 9D 70 02                 .p.
L878C:  inx                                     ; 878C E8                       .
        lsr     $01                             ; 878D 46 01                    F.
        bcs     L8756                           ; 878F B0 C5                    ..
        bne     L878C                           ; 8791 D0 F9                    ..
        rts                                     ; 8793 60                       `

; ----------------------------------------------------------------------------
L8794:  ldx     #$00                            ; 8794 A2 00                    ..
        lda     $034E                           ; 8796 AD 4E 03                 .N.
L8799:  lsr     a                               ; 8799 4A                       J
        pha                                     ; 879A 48                       H
        jsr     L87B7                           ; 879B 20 B7 87                  ..
        pla                                     ; 879E 68                       h
        inx                                     ; 879F E8                       .
        cmp     #$00                            ; 87A0 C9 00                    ..
        bne     L8799                           ; 87A2 D0 F5                    ..
        lda     $034F                           ; 87A4 AD 4F 03                 .O.
        beq     L87B6                           ; 87A7 F0 0D                    ..
        ldx     #$08                            ; 87A9 A2 08                    ..
L87AB:  lsr     a                               ; 87AB 4A                       J
        pha                                     ; 87AC 48                       H
        jsr     L87B7                           ; 87AD 20 B7 87                  ..
        pla                                     ; 87B0 68                       h
        inx                                     ; 87B1 E8                       .
        cmp     #$00                            ; 87B2 C9 00                    ..
        bne     L87AB                           ; 87B4 D0 F5                    ..
L87B6:  rts                                     ; 87B6 60                       `

; ----------------------------------------------------------------------------
L87B7:  bcs     L87BC                           ; 87B7 B0 03                    ..
        jmp     L886E                           ; 87B9 4C 6E 88                 Ln.

; ----------------------------------------------------------------------------
L87BC:  lda     $28                             ; 87BC A5 28                    .(
        bne     L881E                           ; 87BE D0 5E                    .^
        lda     $0270,x                         ; 87C0 BD 70 02                 .p.
        lsr     a                               ; 87C3 4A                       J
        bcc     L8814                           ; 87C4 90 4E                    .N
        asl     a                               ; 87C6 0A                       .
        sta     $0270,x                         ; 87C7 9D 70 02                 .p.
        lda     $0260,x                         ; 87CA BD 60 02                 .`.
        cmp     #$FE                            ; 87CD C9 FE                    ..
        beq     L87E7                           ; 87CF F0 16                    ..
        bcs     L87EE                           ; 87D1 B0 1B                    ..
        lda     $0270,x                         ; 87D3 BD 70 02                 .p.
        and     #$08                            ; 87D6 29 08                    ).
        beq     L87E1                           ; 87D8 F0 07                    ..
        lda     $0240,x                         ; 87DA BD 40 02                 .@.
        cmp     #$07                            ; 87DD C9 07                    ..
        beq     L8814                           ; 87DF F0 33                    .3
L87E1:  jsr     L8885                           ; 87E1 20 85 88                  ..
        jmp     L87FA                           ; 87E4 4C FA 87                 L..

; ----------------------------------------------------------------------------
L87E7:  lda     #$00                            ; 87E7 A9 00                    ..
        sta     $0250,x                         ; 87E9 9D 50 02                 .P.
        beq     L8814                           ; 87EC F0 26                    .&
L87EE:  lda     $0280,x                         ; 87EE BD 80 02                 ...
        and     #$7F                            ; 87F1 29 7F                    ).
        ora     #$02                            ; 87F3 09 02                    ..
        sta     $0280,x                         ; 87F5 9D 80 02                 ...
        bne     L8814                           ; 87F8 D0 1A                    ..
L87FA:  ldy     $0220,x                         ; 87FA BC 20 02                 . .
        lda     ($30),y                         ; 87FD B1 30                    .0
        sta     L0000                           ; 87FF 85 00                    ..
        lda     ($32),y                         ; 8801 B1 32                    .2
        sta     $01                             ; 8803 85 01                    ..
        lda     ($34),y                         ; 8805 B1 34                    .4
;        sta     $5FFB                           ; 8807 8D FB 5F                 .._
 jsr sta_5FFB ; mod
        ldy     #$01                            ; 880A A0 01                    ..
        lda     (L0000),y                       ; 880C B1 00                    ..
        sta     $0250,x                         ; 880E 9D 50 02                 .P.
        .byte   $4C                             ; 8811 4C                       L
L8812:  .byte   $1B                             ; 8812 1B                       .
        dey                                     ; 8813 88                       .
L8814:  lda     $0270,x                         ; 8814 BD 70 02                 .p.
        and     #$02                            ; 8817 29 02                    ).
        beq     L881E                           ; 8819 F0 03                    ..
        jsr     L88A4                           ; 881B 20 A4 88                  ..
L881E:  lda     $0270,x                         ; 881E BD 70 02                 .p.
        and     #$04                            ; 8821 29 04                    ).
        beq     L8828                           ; 8823 F0 03                    ..
        jsr     L88BA                           ; 8825 20 BA 88                  ..
L8828:  lda     $0270,x                         ; 8828 BD 70 02                 .p.
        and     #$08                            ; 882B 29 08                    ).
        beq     L886E                           ; 882D F0 3F                    .?
        jsr     L8875                           ; 882F 20 75 88                  u.
        jsr     L8985                           ; 8832 20 85 89                  ..
        lda     $2B                             ; 8835 A5 2B                    .+
L8837:  beq     L8847                           ; 8837 F0 0E                    ..
        lsr     a                               ; 8839 4A                       J
        lsr     a                               ; 883A 4A                       J
        cmp     #$00                            ; 883B C9 00                    ..
        bne     L8841                           ; 883D D0 02                    ..
        lda     #$01                            ; 883F A9 01                    ..
L8841:  cmp     #$10                            ; 8841 C9 10                    ..
        bcc     L8847                           ; 8843 90 02                    ..
        lda     #$0F                            ; 8845 A9 0F                    ..
L8847:  sta     $02B0,x                         ; 8847 9D B0 02                 ...
        lda     $29                             ; 884A A5 29                    .)
        cmp     $0290,x                         ; 884C DD 90 02                 ...
        beq     L8864                           ; 884F F0 13                    ..
        sta     $0290,x                         ; 8851 9D 90 02                 ...
        lda     $2A                             ; 8854 A5 2A                    .*
L8856:  sta     $02A0,x                         ; 8856 9D A0 02                 ...
        lda     $0280,x                         ; 8859 BD 80 02                 ...
        ora     #$01                            ; 885C 09 01                    ..
        sta     $0280,x                         ; 885E 9D 80 02                 ...
        jmp     L8874                           ; 8861 4C 74 88                 Lt.

; ----------------------------------------------------------------------------
L8864:  lda     $2A                             ; 8864 A5 2A                    .*
        cmp     $02A0,x                         ; 8866 DD A0 02                 ...
        bne     L8856                           ; 8869 D0 EB                    ..
        jmp     L8874                           ; 886B 4C 74 88                 Lt.

; ----------------------------------------------------------------------------
L886E:  jsr     L8875                           ; 886E 20 75 88                  u.
        jmp     L8837                           ; 8871 4C 37 88                 L7.

; ----------------------------------------------------------------------------
L8874:  rts                                     ; 8874 60                       `

; ----------------------------------------------------------------------------
L8875:  lda     $0200,x                         ; 8875 BD 00 02                 ...
        sta     $29                             ; 8878 85 29                    .)
        lda     $0210,x                         ; 887A BD 10 02                 ...
        sta     $2A                             ; 887D 85 2A                    .*
        .byte   $BD                             ; 887F BD                       .
        .byte   $50                             ; 8880 50                       P
L8881:  .byte   $02                             ; 8881 02                       .
        sta     $2B                             ; 8882 85 2B                    .+
        rts                                     ; 8884 60                       `

; ----------------------------------------------------------------------------
L8885:  lda     #$00                            ; 8885 A9 00                    ..
        sta     L0000                           ; 8887 85 00                    ..
        lda     $0260,x                         ; 8889 BD 60 02                 .`.
        lsr     a                               ; 888C 4A                       J
        ror     L0000                           ; 888D 66 00                    f.
        lsr     a                               ; 888F 4A                       J
        sta     $0210,x                         ; 8890 9D 10 02                 ...
        lda     L0000                           ; 8893 A5 00                    ..
        ror     a                               ; 8895 6A                       j
        sta     $0200,x                         ; 8896 9D 00 02                 ...
        lda     #$51                            ; 8899 A9 51                    .Q
        ora     $0280,x                         ; 889B 1D 80 02                 ...
        and     #$FD                            ; 889E 29 FD                    ).
        sta     $0280,x                         ; 88A0 9D 80 02                 ...
        rts                                     ; 88A3 60                       `

; ----------------------------------------------------------------------------
L88A4:  lda     #$00                            ; 88A4 A9 00                    ..
        sta     $02D0,x                         ; 88A6 9D D0 02                 ...
        sta     $02E0,x                         ; 88A9 9D E0 02                 ...
        sta     $02F0,x                         ; 88AC 9D F0 02                 ...
        sta     $18,x                           ; 88AF 95 18                    ..
        lda     $0280,x                         ; 88B1 BD 80 02                 ...
        ora     #$80                            ; 88B4 09 80                    ..
        sta     $0280,x                         ; 88B6 9D 80 02                 ...
        rts                                     ; 88B9 60                       `

; ----------------------------------------------------------------------------
L88BA:  lda     $0250,x                         ; 88BA BD 50 02                 .P.
        sta     L0000                           ; 88BD 85 00                    ..
        ldy     $0230,x                         ; 88BF BC 30 02                 .0.
        jsr     L88C9                           ; 88C2 20 C9 88                  ..
        sta     $0250,x                         ; 88C5 9D 50 02                 .P.
        rts                                     ; 88C8 60                       `

; ----------------------------------------------------------------------------
L88C9:  cpy     #$41                            ; 88C9 C0 41                    .A
        bcs     L88D3                           ; 88CB B0 06                    ..
        lda     $28                             ; 88CD A5 28                    .(
        bne     L88E3                           ; 88CF D0 12                    ..
        tya                                     ; 88D1 98                       .
        rts                                     ; 88D2 60                       `

; ----------------------------------------------------------------------------
L88D3:  cpy     #$4B                            ; 88D3 C0 4B                    .K
        bcc     L88E6                           ; 88D5 90 0F                    ..
        cpy     #$55                            ; 88D7 C0 55                    .U
        bcc     L88F6                           ; 88D9 90 1B                    ..
        cpy     #$5F                            ; 88DB C0 5F                    ._
        bcc     L8908                           ; 88DD 90 29                    .)
        cpy     #$69                            ; 88DF C0 69                    .i
        bcc     L8912                           ; 88E1 90 2F                    ./
L88E3:  lda     L0000                           ; 88E3 A5 00                    ..
L88E5:  rts                                     ; 88E5 60                       `

; ----------------------------------------------------------------------------
L88E6:  lda     $28                             ; 88E6 A5 28                    .(
        bne     L88E3                           ; 88E8 D0 F9                    ..
        tya                                     ; 88EA 98                       .
        sbc     #$41                            ; 88EB E9 41                    .A
L88ED:  adc     L0000                           ; 88ED 65 00                    e.
        cmp     #$41                            ; 88EF C9 41                    .A
        bcc     L88E5                           ; 88F1 90 F2                    ..
        lda     #$40                            ; 88F3 A9 40                    .@
        rts                                     ; 88F5 60                       `

; ----------------------------------------------------------------------------
L88F6:  lda     $28                             ; 88F6 A5 28                    .(
        bne     L88E3                           ; 88F8 D0 E9                    ..
        tya                                     ; 88FA 98                       .
        sbc     #$4A                            ; 88FB E9 4A                    .J
L88FD:  sta     $01                             ; 88FD 85 01                    ..
        lda     L0000                           ; 88FF A5 00                    ..
        sbc     $01                             ; 8901 E5 01                    ..
        bcs     L88E5                           ; 8903 B0 E0                    ..
        lda     #$00                            ; 8905 A9 00                    ..
        rts                                     ; 8907 60                       `

; ----------------------------------------------------------------------------
L8908:  lda     $28                             ; 8908 A5 28                    .(
        beq     L88E3                           ; 890A F0 D7                    ..
        tya                                     ; 890C 98                       .
        sbc     #$55                            ; 890D E9 55                    .U
        jmp     L88ED                           ; 890F 4C ED 88                 L..

; ----------------------------------------------------------------------------
L8912:  lda     $28                             ; 8912 A5 28                    .(
        beq     L88E3                           ; 8914 F0 CD                    ..
        tya                                     ; 8916 98                       .
        sbc     #$5E                            ; 8917 E9 5E                    .^
        .byte   $4C                             ; 8919 4C                       L
        .byte   $FD                             ; 891A FD                       .
L891B:  dey                                     ; 891B 88                       .
        brk                                     ; 891C 00                       .
        brk                                     ; 891D 00                       .
        brk                                     ; 891E 00                       .
        bpl     L8941                           ; 891F 10 20                    . 
        jsr     L7030                           ; 8921 20 30 70                  0p
        brk                                     ; 8924 00                       .
        rti                                     ; 8925 40                       @

; ----------------------------------------------------------------------------
        bpl     L8938                           ; 8926 10 10                    ..
        brk                                     ; 8928 00                       .
        bpl     L897B                           ; 8929 10 50                    .P
        brk                                     ; 892B 00                       .
        .byte   $80                             ; 892C 80                       .
        bvs     L898F                           ; 892D 70 60                    p`
        brk                                     ; 892F 00                       .
        bvs     L8932                           ; 8930 70 00                    p.
L8932:  bpl     L8934                           ; 8932 10 00                    ..
L8934:  brk                                     ; 8934 00                       .
        brk                                     ; 8935 00                       .
        .byte   $BC                             ; 8936 BC                       .
        rti                                     ; 8937 40                       @

; ----------------------------------------------------------------------------
L8938:  .byte   $02                             ; 8938 02                       .
        lda     L891B,y                         ; 8939 B9 1B 89                 ...
        beq     L8984                           ; 893C F0 46                    .F
        stx     L0000                           ; 893E 86 00                    ..
        clc                                     ; 8940 18                       .
L8941:  adc     L0000                           ; 8941 65 00                    e.
        tay                                     ; 8943 A8                       .
        cpy     #$70                            ; 8944 C0 70                    .p
        bcc     L8977                           ; 8946 90 2F                    ./
        lda     $0355,y                         ; 8948 B9 55 03                 .U.
        sta     L0000                           ; 894B 85 00                    ..
        lda     $08,x                           ; 894D B5 08                    ..
        cmp     #$10                            ; 894F C9 10                    ..
        bcc     L8961                           ; 8951 90 0E                    ..
        and     #$F0                            ; 8953 29 F0                    ).
        sta     $01                             ; 8955 85 01                    ..
        lda     L0000                           ; 8957 A5 00                    ..
        and     #$0F                            ; 8959 29 0F                    ).
        ora     $01                             ; 895B 05 01                    ..
        sta     L0000                           ; 895D 85 00                    ..
        lda     $08,x                           ; 895F B5 08                    ..
L8961:  and     #$0F                            ; 8961 29 0F                    ).
        beq     L896F                           ; 8963 F0 0A                    ..
        sta     $01                             ; 8965 85 01                    ..
        lda     L0000                           ; 8967 A5 00                    ..
        and     #$F0                            ; 8969 29 F0                    ).
        ora     $01                             ; 896B 05 01                    ..
        sta     L0000                           ; 896D 85 00                    ..
L896F:  lda     L0000                           ; 896F A5 00                    ..
        sta     $08,x                           ; 8971 95 08                    ..
        sta     $0355,y                         ; 8973 99 55 03                 .U.
        rts                                     ; 8976 60                       `

; ----------------------------------------------------------------------------
L8977:  lda     $08,x                           ; 8977 B5 08                    ..
        beq     L897F                           ; 8979 F0 04                    ..
L897B:  sta     $0355,y                         ; 897B 99 55 03                 .U.
        rts                                     ; 897E 60                       `

; ----------------------------------------------------------------------------
L897F:  lda     $0355,y                         ; 897F B9 55 03                 .U.
        sta     $08,x                           ; 8982 95 08                    ..
L8984:  rts                                     ; 8984 60                       `

; ----------------------------------------------------------------------------
L8985:  lda     $0240,x                         ; 8985 BD 40 02                 .@.
        .byte   $F0                             ; 8988 F0                       .
L8989:  .byte   $FA                             ; 8989 FA                       .
        lda     $28                             ; 898A A5 28                    .(
        bne     L8991                           ; 898C D0 03                    ..
        .byte   $20                             ; 898E 20                        
L898F:  rol     $89,x                           ; 898F 36 89                    6.
L8991:  ldy     $0240,x                         ; 8991 BC 40 02                 .@.
        lda     L8024,y                         ; 8994 B9 24 80                 .$.
        sta     L0000                           ; 8997 85 00                    ..
        lda     L803F,y                         ; 8999 B9 3F 80                 .?.
        sta     $01                             ; 899C 85 01                    ..
        lda     $08,x                           ; 899E B5 08                    ..
        ldy     $28                             ; 89A0 A4 28                    .(
        jmp     (L0000)                         ; 89A2 6C 00 00                 l..

; ----------------------------------------------------------------------------
        bne     L89AA                           ; 89A5 D0 03                    ..
        sta     $0333                           ; 89A7 8D 33 03                 .3.
L89AA:  rts                                     ; 89AA 60                       `

; ----------------------------------------------------------------------------
        bne     L89B5                           ; 89AB D0 08                    ..
        sta     $0355                           ; 89AD 8D 55 03                 .U.
        lda     #$80                            ; 89B0 A9 80                    ..
        sta     $0356                           ; 89B2 8D 56 03                 .V.
L89B5:  rts                                     ; 89B5 60                       `

; ----------------------------------------------------------------------------
        bne     L89C4                           ; 89B6 D0 0C                    ..
        ldy     $0350                           ; 89B8 AC 50 03                 .P.
        iny                                     ; 89BB C8                       .
        sty     $0355                           ; 89BC 8C 55 03                 .U.
        lda     #$80                            ; 89BF A9 80                    ..
        sta     $0356                           ; 89C1 8D 56 03                 .V.
L89C4:  rts                                     ; 89C4 60                       `

; ----------------------------------------------------------------------------
L89C5:  sta     L0000                           ; 89C5 85 00                    ..
        and     #$0F                            ; 89C7 29 0F                    ).
        beq     L8A25                           ; 89C9 F0 5A                    .Z
        lda     L0000                           ; 89CB A5 00                    ..
        and     #$F0                            ; 89CD 29 F0                    ).
        beq     L8A11                           ; 89CF F0 40                    .@
        lda     L0000                           ; 89D1 A5 00                    ..
        and     #$0F                            ; 89D3 29 0F                    ).
        cmp     #$0F                            ; 89D5 C9 0F                    ..
        beq     L89FB                           ; 89D7 F0 22                    ."
        lda     L0000                           ; 89D9 A5 00                    ..
        cmp     #$F0                            ; 89DB C9 F0                    ..
        bcs     L89E8                           ; 89DD B0 09                    ..
L89DF:  rts                                     ; 89DF 60                       `

; ----------------------------------------------------------------------------
L89E0:  lda     #$00                            ; 89E0 A9 00                    ..
L89E2:  sta     $2B                             ; 89E2 85 2B                    .+
        sta     $0250,x                         ; 89E4 9D 50 02                 .P.
        rts                                     ; 89E7 60                       `

; ----------------------------------------------------------------------------
L89E8:  cpy     #$00                            ; 89E8 C0 00                    ..
        bne     L89DF                           ; 89EA D0 F3                    ..
        lda     L0000                           ; 89EC A5 00                    ..
        and     #$0F                            ; 89EE 29 0F                    ).
        sta     L0000                           ; 89F0 85 00                    ..
        lda     $2B                             ; 89F2 A5 2B                    .+
        sbc     L0000                           ; 89F4 E5 00                    ..
        bcs     L89E2                           ; 89F6 B0 EA                    ..
        jmp     L89E0                           ; 89F8 4C E0 89                 L..

; ----------------------------------------------------------------------------
L89FB:  cpy     #$00                            ; 89FB C0 00                    ..
        bne     L89DF                           ; 89FD D0 E0                    ..
        lda     L0000                           ; 89FF A5 00                    ..
        lsr     a                               ; 8A01 4A                       J
        lsr     a                               ; 8A02 4A                       J
        lsr     a                               ; 8A03 4A                       J
        lsr     a                               ; 8A04 4A                       J
        clc                                     ; 8A05 18                       .
        adc     $2B                             ; 8A06 65 2B                    e+
        cmp     #$40                            ; 8A08 C9 40                    .@
        bcc     L89E2                           ; 8A0A 90 D6                    ..
        lda     #$40                            ; 8A0C A9 40                    .@
        jmp     L89E2                           ; 8A0E 4C E2 89                 L..

; ----------------------------------------------------------------------------
L8A11:  lda     L0000                           ; 8A11 A5 00                    ..
        cmp     #$0F                            ; 8A13 C9 0F                    ..
        beq     L8A1B                           ; 8A15 F0 04                    ..
        cpy     #$00                            ; 8A17 C0 00                    ..
        .byte   $F0                             ; 8A19 F0                       .
L8A1A:  .byte   $C4                             ; 8A1A C4                       .
L8A1B:  lda     $2B                             ; 8A1B A5 2B                    .+
        sec                                     ; 8A1D 38                       8
        sbc     L0000                           ; 8A1E E5 00                    ..
        bcs     L89E2                           ; 8A20 B0 C0                    ..
        jmp     L89E0                           ; 8A22 4C E0 89                 L..

; ----------------------------------------------------------------------------
L8A25:  lda     L0000                           ; 8A25 A5 00                    ..
        .byte   $C9                             ; 8A27 C9                       .
L8A28:  beq     L8A1A                           ; 8A28 F0 F0                    ..
        .byte   $04                             ; 8A2A 04                       .
        cpy     #$00                            ; 8A2B C0 00                    ..
        beq     L89DF                           ; 8A2D F0 B0                    ..
        lsr     a                               ; 8A2F 4A                       J
        lsr     a                               ; 8A30 4A                       J
        lsr     a                               ; 8A31 4A                       J
        lsr     a                               ; 8A32 4A                       J
        clc                                     ; 8A33 18                       .
        adc     $2B                             ; 8A34 65 2B                    e+
        cmp     #$40                            ; 8A36 C9 40                    .@
        bcc     L89E2                           ; 8A38 90 A8                    ..
        lda     #$40                            ; 8A3A A9 40                    .@
        bne     L89E2                           ; 8A3C D0 A4                    ..
        jsr     L8A8E                           ; 8A3E 20 8E 8A                  ..
        lda     $29                             ; 8A41 A5 29                    .)
        sec                                     ; 8A43 38                       8
        sbc     L0000                           ; 8A44 E5 00                    ..
        sta     $29                             ; 8A46 85 29                    .)
        sta     $0200,x                         ; 8A48 9D 00 02                 ...
        lda     $2A                             ; 8A4B A5 2A                    .*
        sbc     $01                             ; 8A4D E5 01                    ..
        bmi     L8A57                           ; 8A4F 30 06                    0.
        sta     $2A                             ; 8A51 85 2A                    .*
        sta     $0210,x                         ; 8A53 9D 10 02                 ...
        rts                                     ; 8A56 60                       `

; ----------------------------------------------------------------------------
L8A57:  lda     #$00                            ; 8A57 A9 00                    ..
        sta     $29                             ; 8A59 85 29                    .)
        sta     $2A                             ; 8A5B 85 2A                    .*
        sta     $0200,x                         ; 8A5D 9D 00 02                 ...
        sta     $0210,x                         ; 8A60 9D 10 02                 ...
        rts                                     ; 8A63 60                       `

; ----------------------------------------------------------------------------
        jsr     L8A8E                           ; 8A64 20 8E 8A                  ..
        clc                                     ; 8A67 18                       .
        lda     $29                             ; 8A68 A5 29                    .)
        adc     L0000                           ; 8A6A 65 00                    e.
        sta     $29                             ; 8A6C 85 29                    .)
        sta     $0200,x                         ; 8A6E 9D 00 02                 ...
        lda     $2A                             ; 8A71 A5 2A                    .*
        adc     $01                             ; 8A73 65 01                    e.
        cmp     #$1A                            ; 8A75 C9 1A                    ..
        bcs     L8A7F                           ; 8A77 B0 06                    ..
        sta     $2A                             ; 8A79 85 2A                    .*
        sta     $0210,x                         ; 8A7B 9D 10 02                 ...
        rts                                     ; 8A7E 60                       `

; ----------------------------------------------------------------------------
L8A7F:  lda     #$1A                            ; 8A7F A9 1A                    ..
        sta     $2A                             ; 8A81 85 2A                    .*
        sta     $0210,x                         ; 8A83 9D 10 02                 ...
        lda     #$00                            ; 8A86 A9 00                    ..
        sta     $29                             ; 8A88 85 29                    .)
        sta     $0200,x                         ; 8A8A 9D 00 02                 ...
        rts                                     ; 8A8D 60                       `

; ----------------------------------------------------------------------------
L8A8E:  cmp     #$F0                            ; 8A8E C9 F0                    ..
        bcs     L8AA7                           ; 8A90 B0 15                    ..
        cmp     #$E0                            ; 8A92 C9 E0                    ..
        bcs     L8AB0                           ; 8A94 B0 1A                    ..
        cpy     #$00                            ; 8A96 C0 00                    ..
        beq     L8ABD                           ; 8A98 F0 23                    .#
L8A9A:  ldy     #$00                            ; 8A9A A0 00                    ..
        sty     $01                             ; 8A9C 84 01                    ..
        asl     a                               ; 8A9E 0A                       .
        rol     $01                             ; 8A9F 26 01                    &.
        asl     a                               ; 8AA1 0A                       .
        rol     $01                             ; 8AA2 26 01                    &.
        sta     L0000                           ; 8AA4 85 00                    ..
        rts                                     ; 8AA6 60                       `

; ----------------------------------------------------------------------------
L8AA7:  cpy     #$00                            ; 8AA7 C0 00                    ..
        bne     L8ABD                           ; 8AA9 D0 12                    ..
        and     #$0F                            ; 8AAB 29 0F                    ).
        jmp     L8A9A                           ; 8AAD 4C 9A 8A                 L..

; ----------------------------------------------------------------------------
L8AB0:  cpy     #$00                            ; 8AB0 C0 00                    ..
        bne     L8ABD                           ; 8AB2 D0 09                    ..
        ldy     #$00                            ; 8AB4 A0 00                    ..
        sty     $01                             ; 8AB6 84 01                    ..
        and     #$0F                            ; 8AB8 29 0F                    ).
        sta     L0000                           ; 8ABA 85 00                    ..
        rts                                     ; 8ABC 60                       `

; ----------------------------------------------------------------------------
L8ABD:  lda     #$00                            ; 8ABD A9 00                    ..
        sta     L0000                           ; 8ABF 85 00                    ..
        sta     $01                             ; 8AC1 85 01                    ..
        rts                                     ; 8AC3 60                       `

; ----------------------------------------------------------------------------
        beq     L8AEF                           ; 8AC4 F0 29                    .)
        ldy     #$00                            ; 8AC6 A0 00                    ..
        sty     $01                             ; 8AC8 84 01                    ..
        sty     $02                             ; 8ACA 84 02                    ..
        asl     a                               ; 8ACC 0A                       .
        rol     $01                             ; 8ACD 26 01                    &.
        asl     a                               ; 8ACF 0A                       .
        rol     $01                             ; 8AD0 26 01                    &.
        sta     L0000                           ; 8AD2 85 00                    ..
        lda     $0260,x                         ; 8AD4 BD 60 02                 .`.
        lsr     a                               ; 8AD7 4A                       J
        ror     $02                             ; 8AD8 66 02                    f.
        lsr     a                               ; 8ADA 4A                       J
        ror     $02                             ; 8ADB 66 02                    f.
        sta     $03                             ; 8ADD 85 03                    ..
        lda     $2A                             ; 8ADF A5 2A                    .*
        cmp     $03                             ; 8AE1 C5 03                    ..
        bcc     L8B28                           ; 8AE3 90 43                    .C
        bne     L8AF0                           ; 8AE5 D0 09                    ..
        lda     $29                             ; 8AE7 A5 29                    .)
        cmp     $02                             ; 8AE9 C5 02                    ..
        bcc     L8B28                           ; 8AEB 90 3B                    .;
        bne     L8AF0                           ; 8AED D0 01                    ..
L8AEF:  rts                                     ; 8AEF 60                       `

; ----------------------------------------------------------------------------
L8AF0:  lda     $29                             ; 8AF0 A5 29                    .)
        sbc     L0000                           ; 8AF2 E5 00                    ..
        sta     L0000                           ; 8AF4 85 00                    ..
        lda     $2A                             ; 8AF6 A5 2A                    .*
        sbc     $01                             ; 8AF8 E5 01                    ..
        bcc     L8B19                           ; 8AFA 90 1D                    ..
        sta     $01                             ; 8AFC 85 01                    ..
        cmp     $03                             ; 8AFE C5 03                    ..
        bcc     L8B19                           ; 8B00 90 17                    ..
        bne     L8B0A                           ; 8B02 D0 06                    ..
        lda     L0000                           ; 8B04 A5 00                    ..
        cmp     $02                             ; 8B06 C5 02                    ..
        bcc     L8B19                           ; 8B08 90 0F                    ..
L8B0A:  lda     L0000                           ; 8B0A A5 00                    ..
        sta     $29                             ; 8B0C 85 29                    .)
        sta     $0200,x                         ; 8B0E 9D 00 02                 ...
        lda     $01                             ; 8B11 A5 01                    ..
        sta     $2A                             ; 8B13 85 2A                    .*
        sta     $0210,x                         ; 8B15 9D 10 02                 ...
        rts                                     ; 8B18 60                       `

; ----------------------------------------------------------------------------
L8B19:  lda     $02                             ; 8B19 A5 02                    ..
        sta     $29                             ; 8B1B 85 29                    .)
        sta     $0200,x                         ; 8B1D 9D 00 02                 ...
        lda     $03                             ; 8B20 A5 03                    ..
        sta     $2A                             ; 8B22 85 2A                    .*
        sta     $0210,x                         ; 8B24 9D 10 02                 ...
        rts                                     ; 8B27 60                       `

; ----------------------------------------------------------------------------
L8B28:  lda     $29                             ; 8B28 A5 29                    .)
        adc     L0000                           ; 8B2A 65 00                    e.
        sta     L0000                           ; 8B2C 85 00                    ..
        lda     $2A                             ; 8B2E A5 2A                    .*
        adc     $01                             ; 8B30 65 01                    e.
        sta     $01                             ; 8B32 85 01                    ..
        cmp     $03                             ; 8B34 C5 03                    ..
        bcc     L8B0A                           ; 8B36 90 D2                    ..
        bne     L8B19                           ; 8B38 D0 DF                    ..
        lda     L0000                           ; 8B3A A5 00                    ..
        cmp     $02                             ; 8B3C C5 02                    ..
        bcc     L8B0A                           ; 8B3E 90 CA                    ..
        bcs     L8B19                           ; 8B40 B0 D7                    ..
L8B42:  lda     #$70                            ; 8B42 A9 70                    .p
        stx     L0000                           ; 8B44 86 00                    ..
        ora     L0000                           ; 8B46 05 00                    ..
        tay                                     ; 8B48 A8                       .
        lda     $0355,y                         ; 8B49 B9 55 03                 .U.
        sta     L0000                           ; 8B4C 85 00                    ..
        lsr     a                               ; 8B4E 4A                       J
        lsr     a                               ; 8B4F 4A                       J
        lsr     a                               ; 8B50 4A                       J
        lsr     a                               ; 8B51 4A                       J
        clc                                     ; 8B52 18                       .
        adc     $18,x                           ; 8B53 75 18                    u.
        and     #$3F                            ; 8B55 29 3F                    )?
        sta     $18,x                           ; 8B57 95 18                    ..
        ldy     #$10                            ; 8B59 A0 10                    ..
        sty     $01                             ; 8B5B 84 01                    ..
        cmp     #$20                            ; 8B5D C9 20                    . 
        bit     $01                             ; 8B5F 24 01                    $.
        beq     L8B65                           ; 8B61 F0 02                    ..
        eor     #$0F                            ; 8B63 49 0F                    I.
L8B65:  and     #$0F                            ; 8B65 29 0F                    ).
        beq     L8B92                           ; 8B67 F0 29                    .)
        tay                                     ; 8B69 A8                       .
        lda     L0000                           ; 8B6A A5 00                    ..
        and     #$0F                            ; 8B6C 29 0F                    ).
        beq     L8B92                           ; 8B6E F0 22                    ."
        ora     L81B1,y                         ; 8B70 19 B1 81                 ...
        tay                                     ; 8B73 A8                       .
        lda     L80A2,y                         ; 8B74 B9 A2 80                 ...
        bcs     L8B84                           ; 8B77 B0 0B                    ..
        adc     $29                             ; 8B79 65 29                    e)
        sta     $29                             ; 8B7B 85 29                    .)
        lda     $2A                             ; 8B7D A5 2A                    .*
        adc     #$00                            ; 8B7F 69 00                    i.
        sta     $2A                             ; 8B81 85 2A                    .*
        rts                                     ; 8B83 60                       `

; ----------------------------------------------------------------------------
L8B84:  sta     L0000                           ; 8B84 85 00                    ..
        lda     $29                             ; 8B86 A5 29                    .)
        sbc     L0000                           ; 8B88 E5 00                    ..
        sta     $29                             ; 8B8A 85 29                    .)
        lda     $2A                             ; 8B8C A5 2A                    .*
        sbc     #$00                            ; 8B8E E9 00                    ..
        sta     $2A                             ; 8B90 85 2A                    .*
L8B92:  rts                                     ; 8B92 60                       `

; ----------------------------------------------------------------------------
        and     #$F0                            ; 8B93 29 F0                    ).
        sta     L0000                           ; 8B95 85 00                    ..
        lda     $18,x                           ; 8B97 B5 18                    ..
        cmp     L0000                           ; 8B99 C5 00                    ..
        bcc     L8BAD                           ; 8B9B 90 10                    ..
        cmp     $18,x                           ; 8B9D D5 18                    ..
        bcc     L8BA5                           ; 8B9F 90 04                    ..
        lda     #$00                            ; 8BA1 A9 00                    ..
        beq     L8BAD                           ; 8BA3 F0 08                    ..
L8BA5:  adc     #$01                            ; 8BA5 69 01                    i.
        sta     $18,x                           ; 8BA7 95 18                    ..
        lda     #$00                            ; 8BA9 A9 00                    ..
        sta     $2B                             ; 8BAB 85 2B                    .+
L8BAD:  adc     #$10                            ; 8BAD 69 10                    i.
        sta     $18,x                           ; 8BAF 95 18                    ..
        rts                                     ; 8BB1 60                       `

; ----------------------------------------------------------------------------
        bne     L8BB9                           ; 8BB2 D0 05                    ..
L8BB4:  lda     #$00                            ; 8BB4 A9 00                    ..
        sta     $18,x                           ; 8BB6 95 18                    ..
        rts                                     ; 8BB8 60                       `

; ----------------------------------------------------------------------------
L8BB9:  inc     $18,x                           ; 8BB9 F6 18                    ..
        ldy     $18,x                           ; 8BBB B4 18                    ..
        cpy     #$02                            ; 8BBD C0 02                    ..
        beq     L8BD8                           ; 8BBF F0 17                    ..
        bcs     L8BB4                           ; 8BC1 B0 F1                    ..
        ldy     #$00                            ; 8BC3 A0 00                    ..
        sty     $01                             ; 8BC5 84 01                    ..
        asl     a                               ; 8BC7 0A                       .
        rol     $01                             ; 8BC8 26 01                    &.
        asl     a                               ; 8BCA 0A                       .
        rol     $01                             ; 8BCB 26 01                    &.
L8BCD:  adc     $29                             ; 8BCD 65 29                    e)
        sta     $29                             ; 8BCF 85 29                    .)
        lda     $2A                             ; 8BD1 A5 2A                    .*
        adc     $01                             ; 8BD3 65 01                    e.
        sta     $2A                             ; 8BD5 85 2A                    .*
        rts                                     ; 8BD7 60                       `

; ----------------------------------------------------------------------------
L8BD8:  and     #$0F                            ; 8BD8 29 0F                    ).
        sta     $01                             ; 8BDA 85 01                    ..
        lda     #$00                            ; 8BDC A9 00                    ..
        lsr     $01                             ; 8BDE 46 01                    F.
        ror     a                               ; 8BE0 6A                       j
        lsr     $01                             ; 8BE1 46 01                    F.
        ror     a                               ; 8BE3 6A                       j
        jmp     L8BCD                           ; 8BE4 4C CD 8B                 L..

; ----------------------------------------------------------------------------
        jsr     L8B42                           ; 8BE7 20 42 8B                  B.
        lda     $08,x                           ; 8BEA B5 08                    ..
        ldy     $28                             ; 8BEC A4 28                    .(
        jmp     L89C5                           ; 8BEE 4C C5 89                 L..

; ----------------------------------------------------------------------------
        rts                                     ; 8BF1 60                       `

; ----------------------------------------------------------------------------
        and     #$0F                            ; 8BF2 29 0F                    ).
        bne     L8BF8                           ; 8BF4 D0 02                    ..
        lda     #$01                            ; 8BF6 A9 01                    ..
L8BF8:  sta     L0000                           ; 8BF8 85 00                    ..
        lda     $18,x                           ; 8BFA B5 18                    ..
        bne     L8C03                           ; 8BFC D0 05                    ..
        lda     L0000                           ; 8BFE A5 00                    ..
L8C00:  sta     $18,x                           ; 8C00 95 18                    ..
        rts                                     ; 8C02 60                       `

; ----------------------------------------------------------------------------
L8C03:  sec                                     ; 8C03 38                       8
        sbc     #$01                            ; 8C04 E9 01                    ..
        bne     L8C00                           ; 8C06 D0 F8                    ..
        lda     L0000                           ; 8C08 A5 00                    ..
        sta     $18,x                           ; 8C0A 95 18                    ..
        lda     $08,x                           ; 8C0C B5 08                    ..
        lsr     a                               ; 8C0E 4A                       J
        lsr     a                               ; 8C0F 4A                       J
        lsr     a                               ; 8C10 4A                       J
        lsr     a                               ; 8C11 4A                       J
        tay                                     ; 8C12 A8                       .
        lda     L8C23,y                         ; 8C13 B9 23 8C                 .#.
        sta     L0000                           ; 8C16 85 00                    ..
        lda     L8C33,y                         ; 8C18 B9 33 8C                 .3.
        sta     $01                             ; 8C1B 85 01                    ..
        lda     $2B                             ; 8C1D A5 2B                    .+
        clc                                     ; 8C1F 18                       .
        jmp     (L0000)                         ; 8C20 6C 00 00                 l..

; ----------------------------------------------------------------------------
L8C23:  .byte   $7A                             ; 8C23 7A                       z
        .byte   $43                             ; 8C24 43                       C
        pha                                     ; 8C25 48                       H
        eor     $5752                           ; 8C26 4D 52 57                 MRW
        .byte   $5C                             ; 8C29 5C                       \
        ror     $7A,x                           ; 8C2A 76 7A                    vz
        adc     L8782,x                         ; 8C2C 7D 82 87                 }..
        sty     $9691                           ; 8C2F 8C 91 96                 ...
        .byte   $9D                             ; 8C32 9D                       .
L8C33:  sty     L8C8C                           ; 8C33 8C 8C 8C                 ...
        sty     L8C8C                           ; 8C36 8C 8C 8C                 ...
        sty     L8C8C                           ; 8C39 8C 8C 8C                 ...
        sty     L8C8C                           ; 8C3C 8C 8C 8C                 ...
        sty     L8C8C                           ; 8C3F 8C 8C 8C                 ...
        sty     a:$E9                           ; 8C42 8C E9 00                 ...
        jmp     L8CA1                           ; 8C45 4C A1 8C                 L..

; ----------------------------------------------------------------------------
        sbc     #$01                            ; 8C48 E9 01                    ..
        jmp     L8CA1                           ; 8C4A 4C A1 8C                 L..

; ----------------------------------------------------------------------------
        sbc     #$03                            ; 8C4D E9 03                    ..
        jmp     L8CA1                           ; 8C4F 4C A1 8C                 L..

; ----------------------------------------------------------------------------
        sbc     #$07                            ; 8C52 E9 07                    ..
        jmp     L8CA1                           ; 8C54 4C A1 8C                 L..

; ----------------------------------------------------------------------------
        sbc     #$0F                            ; 8C57 E9 0F                    ..
        jmp     L8CA1                           ; 8C59 4C A1 8C                 L..

; ----------------------------------------------------------------------------
        tay                                     ; 8C5C A8                       .
        lsr     a                               ; 8C5D 4A                       J
        lsr     a                               ; 8C5E 4A                       J
        pha                                     ; 8C5F 48                       H
        adc     #$00                            ; 8C60 69 00                    i.
        sta     $01                             ; 8C62 85 01                    ..
        pla                                     ; 8C64 68                       h
        lsr     a                               ; 8C65 4A                       J
        lsr     a                               ; 8C66 4A                       J
        adc     #$00                            ; 8C67 69 00                    i.
        adc     $01                             ; 8C69 65 01                    e.
        cpy     #$20                            ; 8C6B C0 20                    . 
        adc     #$00                            ; 8C6D 69 00                    i.
        sbc     L0000                           ; 8C6F E5 00                    ..
        eor     #$FF                            ; 8C71 49 FF                    I.
        jmp     L8CAE                           ; 8C73 4C AE 8C                 L..

; ----------------------------------------------------------------------------
        lsr     a                               ; 8C76 4A                       J
        jmp     L8CAE                           ; 8C77 4C AE 8C                 L..

; ----------------------------------------------------------------------------
        jmp     L8CAE                           ; 8C7A 4C AE 8C                 L..

; ----------------------------------------------------------------------------
        adc     #$01                            ; 8C7D 69 01                    i.
        jmp     L8CA8                           ; 8C7F 4C A8 8C                 L..

; ----------------------------------------------------------------------------
        adc     #$02                            ; 8C82 69 02                    i.
        jmp     L8CA8                           ; 8C84 4C A8 8C                 L..

; ----------------------------------------------------------------------------
        adc     #$04                            ; 8C87 69 04                    i.
        .byte   $4C                             ; 8C89 4C                       L
        tay                                     ; 8C8A A8                       .
L8C8B:  .byte   $8C                             ; 8C8B 8C                       .
L8C8C:  adc     #$08                            ; 8C8C 69 08                    i.
        jmp     L8CA8                           ; 8C8E 4C A8 8C                 L..

; ----------------------------------------------------------------------------
        adc     #$10                            ; 8C91 69 10                    i.
        jmp     L8CA8                           ; 8C93 4C A8 8C                 L..

; ----------------------------------------------------------------------------
        asl     a                               ; 8C96 0A                       .
        adc     $2B                             ; 8C97 65 2B                    e+
        lsr     a                               ; 8C99 4A                       J
        jmp     L8CA8                           ; 8C9A 4C A8 8C                 L..

; ----------------------------------------------------------------------------
        asl     a                               ; 8C9D 0A                       .
        jmp     L8CA8                           ; 8C9E 4C A8 8C                 L..

; ----------------------------------------------------------------------------
L8CA1:  bpl     L8CAE                           ; 8CA1 10 0B                    ..
        lda     #$00                            ; 8CA3 A9 00                    ..
        jmp     L8CAE                           ; 8CA5 4C AE 8C                 L..

; ----------------------------------------------------------------------------
L8CA8:  cmp     #$41                            ; 8CA8 C9 41                    .A
        bcc     L8CAE                           ; 8CAA 90 02                    ..
        lda     #$40                            ; 8CAC A9 40                    .@
L8CAE:  sta     $2B                             ; 8CAE 85 2B                    .+
        sta     $0250,x                         ; 8CB0 9D 50 02                 .P.
        lda     $0280,x                         ; 8CB3 BD 80 02                 ...
        ora     #$40                            ; 8CB6 09 40                    .@
        sta     $0280,x                         ; 8CB8 9D 80 02                 ...
        rts                                     ; 8CBB 60                       `

; ----------------------------------------------------------------------------
        lsr     a                               ; 8CBC 4A                       J
        lsr     a                               ; 8CBD 4A                       J
        lsr     a                               ; 8CBE 4A                       J
        lsr     a                               ; 8CBF 4A                       J
        clc                                     ; 8CC0 18                       .
        adc     $18,x                           ; 8CC1 75 18                    u.
        and     #$3F                            ; 8CC3 29 3F                    )?
        sta     $18,x                           ; 8CC5 95 18                    ..
        ldy     #$10                            ; 8CC7 A0 10                    ..
        sty     $01                             ; 8CC9 84 01                    ..
        cmp     #$20                            ; 8CCB C9 20                    . 
        bit     $01                             ; 8CCD 24 01                    $.
        beq     L8CD3                           ; 8CCF F0 02                    ..
        eor     #$0F                            ; 8CD1 49 0F                    I.
L8CD3:  and     #$0F                            ; 8CD3 29 0F                    ).
        beq     L8CFE                           ; 8CD5 F0 27                    .'
        tay                                     ; 8CD7 A8                       .
        lda     $08,x                           ; 8CD8 B5 08                    ..
        and     #$0F                            ; 8CDA 29 0F                    ).
        beq     L8CFE                           ; 8CDC F0 20                    . 
        ora     L81B1,y                         ; 8CDE 19 B1 81                 ...
        tay                                     ; 8CE1 A8                       .
        lda     L80A2,y                         ; 8CE2 B9 A2 80                 ...
        bcs     L8CF2                           ; 8CE5 B0 0B                    ..
        adc     $2B                             ; 8CE7 65 2B                    e+
        cmp     #$40                            ; 8CE9 C9 40                    .@
        bcc     L8CEF                           ; 8CEB 90 02                    ..
        lda     #$40                            ; 8CED A9 40                    .@
L8CEF:  sta     $2B                             ; 8CEF 85 2B                    .+
        rts                                     ; 8CF1 60                       `

; ----------------------------------------------------------------------------
L8CF2:  sta     L0000                           ; 8CF2 85 00                    ..
        lda     $2B                             ; 8CF4 A5 2B                    .+
        sbc     L0000                           ; 8CF6 E5 00                    ..
        bpl     L8CFC                           ; 8CF8 10 02                    ..
        lda     #$00                            ; 8CFA A9 00                    ..
L8CFC:  sta     $2B                             ; 8CFC 85 2B                    .+
L8CFE:  rts                                     ; 8CFE 60                       `

; ----------------------------------------------------------------------------
        cmp     #$20                            ; 8CFF C9 20                    . 
        bcc     L8D06                           ; 8D01 90 03                    ..
        jmp     L8698                           ; 8D03 4C 98 86                 L..

; ----------------------------------------------------------------------------
L8D06:  cmp     #$10                            ; 8D06 C9 10                    ..
        bcc     L8D17                           ; 8D08 90 0D                    ..
        and     #$0F                            ; 8D0A 29 0F                    ).
        clc                                     ; 8D0C 18                       .
        adc     $0332                           ; 8D0D 6D 32 03                 m2.
        bcc     L8D14                           ; 8D10 90 02                    ..
        lda     #$FF                            ; 8D12 A9 FF                    ..
L8D14:  jmp     L8698                           ; 8D14 4C 98 86                 L..

; ----------------------------------------------------------------------------
L8D17:  sta     L0000                           ; 8D17 85 00                    ..
        lda     $0332                           ; 8D19 AD 32 03                 .2.
        sec                                     ; 8D1C 38                       8
        sbc     L0000                           ; 8D1D E5 00                    ..
        cmp     #$20                            ; 8D1F C9 20                    . 
        bcs     L8D25                           ; 8D21 B0 02                    ..
        lda     #$20                            ; 8D23 A9 20                    . 
L8D25:  jmp     L8698                           ; 8D25 4C 98 86                 L..

; ----------------------------------------------------------------------------
        rts                                     ; 8D28 60                       `

; ----------------------------------------------------------------------------
        bne     L8D34                           ; 8D29 D0 09                    ..
        cmp     #$80                            ; 8D2B C9 80                    ..
        bcc     L8D31                           ; 8D2D 90 02                    ..
        lda     #$80                            ; 8D2F A9 80                    ..
L8D31:  sta     $0334                           ; 8D31 8D 34 03                 .4.
L8D34:  rts                                     ; 8D34 60                       `

; ----------------------------------------------------------------------------
        lsr     a                               ; 8D35 4A                       J
        lsr     a                               ; 8D36 4A                       J
        lsr     a                               ; 8D37 4A                       J
        lsr     a                               ; 8D38 4A                       J
        tay                                     ; 8D39 A8                       .
        lda     L805A,y                         ; 8D3A B9 5A 80                 .Z.
        sta     L0000                           ; 8D3D 85 00                    ..
        lda     L806A,y                         ; 8D3F B9 6A 80                 .j.
        sta     $01                             ; 8D42 85 01                    ..
        lda     $08,x                           ; 8D44 B5 08                    ..
        and     #$0F                            ; 8D46 29 0F                    ).
        ldy     $28                             ; 8D48 A4 28                    .(
        jmp     (L0000)                         ; 8D4A 6C 00 00                 l..

; ----------------------------------------------------------------------------
L8D4D:  rts                                     ; 8D4D 60                       `

; ----------------------------------------------------------------------------
        cmp     $28                             ; 8D4E C5 28                    .(
        bne     L8D59                           ; 8D50 D0 07                    ..
        lda     #$00                            ; 8D52 A9 00                    ..
        sta     $2B                             ; 8D54 85 2B                    .+
        sta     $0250,x                         ; 8D56 9D 50 02                 .P.
L8D59:  rts                                     ; 8D59 60                       `

; ----------------------------------------------------------------------------
        cmp     $28                             ; 8D5A C5 28                    .(
        beq     L8D6A                           ; 8D5C F0 0C                    ..
        bcs     L8D61                           ; 8D5E B0 01                    ..
        rts                                     ; 8D60 60                       `

; ----------------------------------------------------------------------------
L8D61:  lda     #$08                            ; 8D61 A9 08                    ..
L8D63:  ora     $0280,x                         ; 8D63 1D 80 02                 ...
        sta     $0280,x                         ; 8D66 9D 80 02                 ...
        rts                                     ; 8D69 60                       `

; ----------------------------------------------------------------------------
L8D6A:  lda     #$41                            ; 8D6A A9 41                    .A
        bne     L8D63                           ; 8D6C D0 F5                    ..
        rts                                     ; 8D6E 60                       `

; ----------------------------------------------------------------------------
L8D6F:  ldx     #$00                            ; 8D6F A2 00                    ..
        lda     $0336                           ; 8D71 AD 36 03                 .6.
;        sta     $5FFA                           ; 8D74 8D FA 5F                 .._
 jsr sta_5FFA ; mod
L8D77:  ldy     $0220,x                         ; 8D77 BC 20 02                 . .
        lda     ($30),y                         ; 8D7A B1 30                    .0
        sta     L0000                           ; 8D7C 85 00                    ..
        lda     ($32),y                         ; 8D7E B1 32                    .2
        sta     $01                             ; 8D80 85 01                    ..
        lda     ($34),y                         ; 8D82 B1 34                    .4
;        sta     $5FFB                           ; 8D84 8D FB 5F                 .._
 jsr sta_5FFB ; mod
        lda     $0290,x                         ; 8D87 BD 90 02                 ...
        sta     $29                             ; 8D8A 85 29                    .)
L8D8C:  .byte   $BD                             ; 8D8C BD                       .
L8D8D:  ldy     #$02                            ; 8D8D A0 02                    ..
        sta     $2A                             ; 8D8F 85 2A                    .*
        lda     $02B0,x                         ; 8D91 BD B0 02                 ...
        sta     $2B                             ; 8D94 85 2B                    .+
        lda     $0280,x                         ; 8D96 BD 80 02                 ...
        sta     $2C                             ; 8D99 85 2C                    .,
        and     #$BE                            ; 8D9B 29 BE                    ).
        sta     $0280,x                         ; 8D9D 9D 80 02                 ...
        and     #$10                            ; 8DA0 29 10                    ).
        beq     L8DD5                           ; 8DA2 F0 31                    .1
        lda     $0280,x                         ; 8DA4 BD 80 02                 ...
        and     #$08                            ; 8DA7 29 08                    ).
        beq     L8DB6                           ; 8DA9 F0 0B                    ..
        lda     $0280,x                         ; 8DAB BD 80 02                 ...
        and     #$F7                            ; 8DAE 29 F7                    ).
        sta     $0280,x                         ; 8DB0 9D 80 02                 ...
        jmp     L8DD5                           ; 8DB3 4C D5 8D                 L..

; ----------------------------------------------------------------------------
L8DB6:  jsr     L8ECB                           ; 8DB6 20 CB 8E                  ..
        jsr     L8DDC                           ; 8DB9 20 DC 8D                  ..
        ldy     #$02                            ; 8DBC A0 02                    ..
        clc                                     ; 8DBE 18                       .
        lda     $29                             ; 8DBF A5 29                    .)
        adc     (L0000),y                       ; 8DC1 71 00                    q.
        sta     $29                             ; 8DC3 85 29                    .)
        lda     $2A                             ; 8DC5 A5 2A                    .*
        iny                                     ; 8DC7 C8                       .
        adc     (L0000),y                       ; 8DC8 71 00                    q.
        bpl     L8DD0                           ; 8DCA 10 04                    ..
        lda     #$00                            ; 8DCC A9 00                    ..
        sta     $29                             ; 8DCE 85 29                    .)
L8DD0:  sta     $2A                             ; 8DD0 85 2A                    .*
        jsr     L8F81                           ; 8DD2 20 81 8F                  ..
L8DD5:  inx                                     ; 8DD5 E8                       .
        cpx     $0337                           ; 8DD6 EC 37 03                 .7.
        bne     L8D77                           ; 8DD9 D0 9C                    ..
        rts                                     ; 8DDB 60                       `

; ----------------------------------------------------------------------------
L8DDC:  lda     #$19                            ; 8DDC A9 19                    ..
        clc                                     ; 8DDE 18                       .
        adc     L0000                           ; 8DDF 65 00                    e.
        sta     $02                             ; 8DE1 85 02                    ..
        lda     $01                             ; 8DE3 A5 01                    ..
        adc     #$00                            ; 8DE5 69 00                    i.
        sta     $03                             ; 8DE7 85 03                    ..
        ldy     #$08                            ; 8DE9 A0 08                    ..
        lda     (L0000),y                       ; 8DEB B1 00                    ..
        lsr     a                               ; 8DED 4A                       J
        sta     $06                             ; 8DEE 85 06                    ..
        bcc     L8E34                           ; 8DF0 90 42                    .B
        lda     $02D0,x                         ; 8DF2 BD D0 02                 ...
        jsr     L8E92                           ; 8DF5 20 92 8E                  ..
        sta     $02D0,x                         ; 8DF8 9D D0 02                 ...
        tya                                     ; 8DFB 98                       .
        bmi     L8E34                           ; 8DFC 30 36                    06
        ldy     $2B                             ; 8DFE A4 2B                    .+
        cpy     #$0F                            ; 8E00 C0 0F                    ..
        bcc     L8E0D                           ; 8E02 90 09                    ..
        tay                                     ; 8E04 A8                       .
        lda     L8E82,y                         ; 8E05 B9 82 8E                 ...
        sta     $2B                             ; 8E08 85 2B                    .+
        jmp     L8E34                           ; 8E0A 4C 34 8E                 L4.

; ----------------------------------------------------------------------------
L8E0D:  sty     $05                             ; 8E0D 84 05                    ..
        sta     L0004                           ; 8E0F 85 04                    ..
        lda     #$00                            ; 8E11 A9 00                    ..
        lsr     L0004                           ; 8E13 46 04                    F.
        bcs     L8E19                           ; 8E15 B0 02                    ..
        adc     $05                             ; 8E17 65 05                    e.
L8E19:  asl     a                               ; 8E19 0A                       .
        lsr     L0004                           ; 8E1A 46 04                    F.
        bcs     L8E20                           ; 8E1C B0 02                    ..
        adc     $05                             ; 8E1E 65 05                    e.
L8E20:  asl     a                               ; 8E20 0A                       .
        lsr     L0004                           ; 8E21 46 04                    F.
        bcs     L8E27                           ; 8E23 B0 02                    ..
        adc     $05                             ; 8E25 65 05                    e.
L8E27:  asl     a                               ; 8E27 0A                       .
        lsr     L0004                           ; 8E28 46 04                    F.
        bcs     L8E2E                           ; 8E2A B0 02                    ..
        adc     $05                             ; 8E2C 65 05                    e.
L8E2E:  lsr     a                               ; 8E2E 4A                       J
        lsr     a                               ; 8E2F 4A                       J
        lsr     a                               ; 8E30 4A                       J
        lsr     a                               ; 8E31 4A                       J
        sta     $2B                             ; 8E32 85 2B                    .+
L8E34:  lsr     $06                             ; 8E34 46 06                    F.
        bcc     L8E6B                           ; 8E36 90 33                    .3
        lda     $02E0,x                         ; 8E38 BD E0 02                 ...
        jsr     L8E92                           ; 8E3B 20 92 8E                  ..
        sta     $02E0,x                         ; 8E3E 9D E0 02                 ...
        tya                                     ; 8E41 98                       .
        eor     #$80                            ; 8E42 49 80                    I.
        bpl     L8E4A                           ; 8E44 10 04                    ..
        ldy     #$FF                            ; 8E46 A0 FF                    ..
        bne     L8E4C                           ; 8E48 D0 02                    ..
L8E4A:  ldy     #$00                            ; 8E4A A0 00                    ..
L8E4C:  sty     L0004                           ; 8E4C 84 04                    ..
        asl     a                               ; 8E4E 0A                       .
        rol     L0004                           ; 8E4F 26 04                    &.
        asl     a                               ; 8E51 0A                       .
        rol     L0004                           ; 8E52 26 04                    &.
        asl     a                               ; 8E54 0A                       .
        rol     L0004                           ; 8E55 26 04                    &.
        asl     a                               ; 8E57 0A                       .
        rol     L0004                           ; 8E58 26 04                    &.
        clc                                     ; 8E5A 18                       .
        adc     $29                             ; 8E5B 65 29                    e)
        sta     $29                             ; 8E5D 85 29                    .)
        lda     $2A                             ; 8E5F A5 2A                    .*
        adc     L0004                           ; 8E61 65 04                    e.
        sta     $2A                             ; 8E63 85 2A                    .*
        lda     $2C                             ; 8E65 A5 2C                    .,
        ora     #$01                            ; 8E67 09 01                    ..
        sta     $2C                             ; 8E69 85 2C                    .,
L8E6B:  lsr     $06                             ; 8E6B 46 06                    F.
        bcc     L8E7D                           ; 8E6D 90 0E                    ..
        lda     $02F0,x                         ; 8E6F BD F0 02                 ...
        jsr     L8E92                           ; 8E72 20 92 8E                  ..
        sta     $02F0,x                         ; 8E75 9D F0 02                 ...
        sty     $2D                             ; 8E78 84 2D                    .-
        jmp     L8E81                           ; 8E7A 4C 81 8E                 L..

; ----------------------------------------------------------------------------
L8E7D:  lda     #$80                            ; 8E7D A9 80                    ..
        sta     $2D                             ; 8E7F 85 2D                    .-
L8E81:  rts                                     ; 8E81 60                       `

; ----------------------------------------------------------------------------
L8E82:  .byte   $0F                             ; 8E82 0F                       .
        .byte   $07                             ; 8E83 07                       .
        .byte   $0B                             ; 8E84 0B                       .
        .byte   $03                             ; 8E85 03                       .
        ora     $0905                           ; 8E86 0D 05 09                 ...
        ora     ($0E,x)                         ; 8E89 01 0E                    ..
        asl     $0A                             ; 8E8B 06 0A                    ..
        .byte   $02                             ; 8E8D 02                       .
        .byte   $0C                             ; 8E8E 0C                       .
        .byte   $04                             ; 8E8F 04                       .
        php                                     ; 8E90 08                       .
        brk                                     ; 8E91 00                       .
L8E92:  sta     L0004                           ; 8E92 85 04                    ..
        ldy     #$00                            ; 8E94 A0 00                    ..
        lda     ($02),y                         ; 8E96 B1 02                    ..
        sta     $05                             ; 8E98 85 05                    ..
        ldy     L0004                           ; 8E9A A4 04                    ..
L8E9C:  iny                                     ; 8E9C C8                       .
L8E9D:  lda     ($02),y                         ; 8E9D B1 02                    ..
        cmp     #$FE                            ; 8E9F C9 FE                    ..
        bcc     L8EB8                           ; 8EA1 90 15                    ..
        beq     L8EAC                           ; 8EA3 F0 07                    ..
        iny                                     ; 8EA5 C8                       .
        lda     ($02),y                         ; 8EA6 B1 02                    ..
        tay                                     ; 8EA8 A8                       .
        jmp     L8E9D                           ; 8EA9 4C 9D 8E                 L..

; ----------------------------------------------------------------------------
L8EAC:  iny                                     ; 8EAC C8                       .
        lda     $0280,x                         ; 8EAD BD 80 02                 ...
        bpl     L8E9C                           ; 8EB0 10 EA                    ..
        lda     ($02),y                         ; 8EB2 B1 02                    ..
        tay                                     ; 8EB4 A8                       .
        jmp     L8E9D                           ; 8EB5 4C 9D 8E                 L..

; ----------------------------------------------------------------------------
L8EB8:  sta     L0004                           ; 8EB8 85 04                    ..
        clc                                     ; 8EBA 18                       .
        lda     $05                             ; 8EBB A5 05                    ..
        adc     $02                             ; 8EBD 65 02                    e.
        sta     $02                             ; 8EBF 85 02                    ..
        lda     $03                             ; 8EC1 A5 03                    ..
        adc     #$00                            ; 8EC3 69 00                    i.
        sta     $03                             ; 8EC5 85 03                    ..
        tya                                     ; 8EC7 98                       .
        ldy     L0004                           ; 8EC8 A4 04                    ..
        rts                                     ; 8ECA 60                       `

; ----------------------------------------------------------------------------
L8ECB:  lda     $2C                             ; 8ECB A5 2C                    .,
        and     #$40                            ; 8ECD 29 40                    )@
        beq     L8EEF                           ; 8ECF F0 1E                    ..
        ldy     #$06                            ; 8ED1 A0 06                    ..
        lda     (L0000),y                       ; 8ED3 B1 00                    ..
        beq     L8EEE                           ; 8ED5 F0 17                    ..
        lda     $0280,x                         ; 8ED7 BD 80 02                 ...
        and     #$FB                            ; 8EDA 29 FB                    ).
        sta     $0280,x                         ; 8EDC 9D 80 02                 ...
        ldy     #$04                            ; 8EDF A0 04                    ..
        lda     (L0000),y                       ; 8EE1 B1 00                    ..
        sta     $0300,x                         ; 8EE3 9D 00 03                 ...
        lda     #$00                            ; 8EE6 A9 00                    ..
        sta     $0320,x                         ; 8EE8 9D 20 03                 . .
        sta     $0310,x                         ; 8EEB 9D 10 03                 ...
L8EEE:  rts                                     ; 8EEE 60                       `

; ----------------------------------------------------------------------------
L8EEF:  lda     $0280,x                         ; 8EEF BD 80 02                 ...
        and     #$04                            ; 8EF2 29 04                    ).
        beq     L8F66                           ; 8EF4 F0 70                    .p
        lda     $0310,x                         ; 8EF6 BD 10 03                 ...
        ldy     #$06                            ; 8EF9 A0 06                    ..
        cmp     (L0000),y                       ; 8EFB D1 00                    ..
        beq     L8F18                           ; 8EFD F0 19                    ..
        ldy     $0300,x                         ; 8EFF BC 00 03                 ...
        dey                                     ; 8F02 88                       .
        bne     L8F14                           ; 8F03 D0 0F                    ..
        adc     #$01                            ; 8F05 69 01                    i.
        sta     $0310,x                         ; 8F07 9D 10 03                 ...
        ldy     #$05                            ; 8F0A A0 05                    ..
        lda     (L0000),y                       ; 8F0C B1 00                    ..
        sta     $0300,x                         ; 8F0E 9D 00 03                 ...
        jmp     L8F18                           ; 8F11 4C 18 8F                 L..

; ----------------------------------------------------------------------------
L8F14:  tya                                     ; 8F14 98                       .
        sta     $0300,x                         ; 8F15 9D 00 03                 ...
L8F18:  lda     $2C                             ; 8F18 A5 2C                    .,
        ora     #$01                            ; 8F1A 09 01                    ..
        sta     $2C                             ; 8F1C 85 2C                    .,
        lda     $0320,x                         ; 8F1E BD 20 03                 . .
        ldy     #$07                            ; 8F21 A0 07                    ..
        clc                                     ; 8F23 18                       .
        adc     (L0000),y                       ; 8F24 71 00                    q.
        sta     $0320,x                         ; 8F26 9D 20 03                 . .
        asl     a                               ; 8F29 0A                       .
        asl     a                               ; 8F2A 0A                       .
        asl     a                               ; 8F2B 0A                       .
        bcs     L8F48                           ; 8F2C B0 1A                    ..
        asl     a                               ; 8F2E 0A                       .
        bcc     L8F34                           ; 8F2F 90 03                    ..
        eor     #$F0                            ; 8F31 49 F0                    I.
        clc                                     ; 8F33 18                       .
L8F34:  beq     L8F47                           ; 8F34 F0 11                    ..
        ora     $0310,x                         ; 8F36 1D 10 03                 ...
        tay                                     ; 8F39 A8                       .
        lda     L80A2,y                         ; 8F3A B9 A2 80                 ...
        adc     $29                             ; 8F3D 65 29                    e)
        sta     $29                             ; 8F3F 85 29                    .)
        lda     $2A                             ; 8F41 A5 2A                    .*
        adc     #$00                            ; 8F43 69 00                    i.
        sta     $2A                             ; 8F45 85 2A                    .*
L8F47:  rts                                     ; 8F47 60                       `

; ----------------------------------------------------------------------------
L8F48:  asl     a                               ; 8F48 0A                       .
        bcc     L8F4D                           ; 8F49 90 02                    ..
        eor     #$F0                            ; 8F4B 49 F0                    I.
L8F4D:  beq     L8F47                           ; 8F4D F0 F8                    ..
        ora     $0310,x                         ; 8F4F 1D 10 03                 ...
        tay                                     ; 8F52 A8                       .
        lda     L80A2,y                         ; 8F53 B9 A2 80                 ...
        sec                                     ; 8F56 38                       8
        sta     $02                             ; 8F57 85 02                    ..
        lda     $29                             ; 8F59 A5 29                    .)
        sbc     $02                             ; 8F5B E5 02                    ..
        sta     $29                             ; 8F5D 85 29                    .)
        lda     $2A                             ; 8F5F A5 2A                    .*
        sbc     #$00                            ; 8F61 E9 00                    ..
        sta     $2A                             ; 8F63 85 2A                    .*
        rts                                     ; 8F65 60                       `

; ----------------------------------------------------------------------------
L8F66:  ldy     $0300,x                         ; 8F66 BC 00 03                 ...
        dey                                     ; 8F69 88                       .
        beq     L8F71                           ; 8F6A F0 05                    ..
        tya                                     ; 8F6C 98                       .
        sta     $0300,x                         ; 8F6D 9D 00 03                 ...
        rts                                     ; 8F70 60                       `

; ----------------------------------------------------------------------------
L8F71:  lda     $0280,x                         ; 8F71 BD 80 02                 ...
        ora     #$04                            ; 8F74 09 04                    ..
        sta     $0280,x                         ; 8F76 9D 80 02                 ...
        ldy     #$05                            ; 8F79 A0 05                    ..
        lda     (L0000),y                       ; 8F7B B1 00                    ..
        sta     $0300,x                         ; 8F7D 9D 00 03                 ...
        rts                                     ; 8F80 60                       `

; ----------------------------------------------------------------------------
L8F81:  ldy     $033E,x                         ; 8F81 BC 3E 03                 .>.
        lda     L807A,y                         ; 8F84 B9 7A 80                 .z.
        sta     L0004                           ; 8F87 85 04                    ..
        lda     L8096,y                         ; 8F89 B9 96 80                 ...
        sta     $05                             ; 8F8C 85 05                    ..
        lda     $2C                             ; 8F8E A5 2C                    .,
        lsr     a                               ; 8F90 4A                       J
        lda     #$00                            ; 8F91 A9 00                    ..
        bit     $2C                             ; 8F93 24 2C                    $,
        jmp     (L0004)                         ; 8F95 6C 04 00                 l..

; ----------------------------------------------------------------------------
        rts                                     ; 8F98 60                       `

; ----------------------------------------------------------------------------
        ldy     #$00                            ; 8F99 A0 00                    ..
        jmp     L8FA0                           ; 8F9B 4C A0 8F                 L..

; ----------------------------------------------------------------------------
        ldy     #$04                            ; 8F9E A0 04                    ..
L8FA0:  bcc     L8FBB                           ; 8FA0 90 19                    ..
        sty     $01                             ; 8FA2 84 01                    ..
        jsr     L9382                           ; 8FA4 20 82 93                  ..
        ldy     $01                             ; 8FA7 A4 01                    ..
        sta     $4002,y                         ; 8FA9 99 02 40                 ..@
        lda     $03                             ; 8FAC A5 03                    ..
        cmp     $035D,y                         ; 8FAE D9 5D 03                 .].
        beq     L8FBB                           ; 8FB1 F0 08                    ..
        sta     $035D,y                         ; 8FB3 99 5D 03                 .].
        ora     #$F8                            ; 8FB6 09 F8                    ..
        sta     $4003,y                         ; 8FB8 99 03 40                 ..@
L8FBB:  lda     $2D                             ; 8FBB A5 2D                    .-
        ora     $2B                             ; 8FBD 05 2B                    .+
        sta     $4000,y                         ; 8FBF 99 00 40                 ..@
        rts                                     ; 8FC2 60                       `

; ----------------------------------------------------------------------------
        bvc     L8FC8                           ; 8FC3 50 03                    P.
        jsr     L8FE1                           ; 8FC5 20 E1 8F                  ..
L8FC8:  bcc     L8FD7                           ; 8FC8 90 0D                    ..
        jsr     L9382                           ; 8FCA 20 82 93                  ..
        sta     $400A                           ; 8FCD 8D 0A 40                 ..@
        lda     $03                             ; 8FD0 A5 03                    ..
        ora     #$F8                            ; 8FD2 09 F8                    ..
        sta     $400B                           ; 8FD4 8D 0B 40                 ..@
L8FD7:  lda     $2B                             ; 8FD7 A5 2B                    .+
        beq     L8FE1                           ; 8FD9 F0 06                    ..
        lda     #$FF                            ; 8FDB A9 FF                    ..
        sta     $4008                           ; 8FDD 8D 08 40                 ..@
        rts                                     ; 8FE0 60                       `

; ----------------------------------------------------------------------------
L8FE1:  lda     #$80                            ; 8FE1 A9 80                    ..
        sta     $4008                           ; 8FE3 8D 08 40                 ..@
        lda     #$00                            ; 8FE6 A9 00                    ..
        sta     $400A                           ; 8FE8 8D 0A 40                 ..@
        sta     $400B                           ; 8FEB 8D 0B 40                 ..@
        rts                                     ; 8FEE 60                       `

; ----------------------------------------------------------------------------
        bvc     L8FF6                           ; 8FEF 50 05                    P.
        lda     #$08                            ; 8FF1 A9 08                    ..
        sta     $400C                           ; 8FF3 8D 0C 40                 ..@
L8FF6:  lda     $2D                             ; 8FF6 A5 2D                    .-
        bmi     L9012                           ; 8FF8 30 18                    0.
        cmp     #$10                            ; 8FFA C9 10                    ..
        bcc     L9002                           ; 8FFC 90 04                    ..
        ora     #$80                            ; 8FFE 09 80                    ..
