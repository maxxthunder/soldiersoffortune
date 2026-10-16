; bank $D0  (file offset $100000)
org $D00000

L_D00000:
    LDY #$0000                      ; $D00000  A0 00 00     MX
    LDX #$0380                      ; $D00003  A2 80 03     MX
    LDA #$2472                      ; $D00006  A9 72 24     MX
L_D00009:
    STA $11FE,Y                     ; $D00009  99 FE 11     MX
    INY                             ; $D0000C  C8           MX
    INY                             ; $D0000D  C8           MX
    DEX                             ; $D0000E  CA           MX
    BNE L_D00009                    ; $D0000F  D0 F8        MX
    PEA $0000                       ; $D00011  F4 00 00     MX
    PEA $00C6                       ; $D00014  F4 C6 00     MX
    PEA $C7F6                       ; $D00017  F4 F6 C7     MX
    PEA $007F                       ; $D0001A  F4 7F 00     MX
    JSL L_C30000                    ; $D0001D  22 00 00 C3  MX
    PLA                             ; $D00021  68           MX
    PLA                             ; $D00022  68           MX
    PLA                             ; $D00023  68           MX
    PLA                             ; $D00024  68           MX
    LDX #$0000                      ; $D00025  A2 00 00     MX
    LDY #$0000                      ; $D00028  A0 00 00     MX
    LDA #$4B14                      ; $D0002B  A9 14 4B     MX
    STA $26                         ; $D0002E  85 26        MX
    LDA #$00C1                      ; $D00030  A9 C1 00     MX
    STA $28                         ; $D00033  85 28        MX
    LDA #$0011                      ; $D00035  A9 11 00     MX
    STA $46                         ; $D00038  85 46        MX
L_D0003A:
    LDA [$26],Y                     ; $D0003A  B7 26        MX
    STA $7FC7F6,X                   ; $D0003C  9F F6 C7 7F  MX
    INX                             ; $D00040  E8           MX
    INX                             ; $D00041  E8           MX
    INY                             ; $D00042  C8           MX
    INY                             ; $D00043  C8           MX
    DEC $46                         ; $D00044  C6 46        MX
    BPL L_D0003A                    ; $D00046  10 F2        MX
    LDA #$107F                      ; $D00048  A9 7F 10     MX
    LDX #$C7F6                      ; $D0004B  A2 F6 C7     MX
    LDY #$0020                      ; $D0004E  A0 20 00     MX
    JSL L_C302A8                    ; $D00051  22 A8 02 C3  MX
    LDX #$0000                      ; $D00055  A2 00 00     MX
    LDY #$0010                      ; $D00058  A0 10 00     MX
L_D0005B:
    LDA $7FC7F6,X                   ; $D0005B  BF F6 C7 7F  MX
    LSR                             ; $D0005F  4A           MX
    AND #$3DEF                      ; $D00060  29 EF 3D     MX
    STA $7FC7F6,X                   ; $D00063  9F F6 C7 7F  MX
    INX                             ; $D00067  E8           MX
    INX                             ; $D00068  E8           MX
    DEY                             ; $D00069  88           MX
    BNE L_D0005B                    ; $D0006A  D0 EF        MX
    LDA #$207F                      ; $D0006C  A9 7F 20     MX
    LDX #$C7F6                      ; $D0006F  A2 F6 C7     MX
    LDY #$0020                      ; $D00072  A0 20 00     MX
    JSL L_C302A8                    ; $D00075  22 A8 02 C3  MX
    LDX #$0000                      ; $D00079  A2 00 00     MX
    LDY #$0000                      ; $D0007C  A0 00 00     MX
    LDA #$4B34                      ; $D0007F  A9 34 4B     MX
    STA $26                         ; $D00082  85 26        MX
    LDA #$00C1                      ; $D00084  A9 C1 00     MX
    STA $28                         ; $D00087  85 28        MX
    LDA #$0011                      ; $D00089  A9 11 00     MX
    STA $46                         ; $D0008C  85 46        MX
L_D0008E:
    LDA [$26],Y                     ; $D0008E  B7 26        MX
    STA $7FC7F6,X                   ; $D00090  9F F6 C7 7F  MX
    INX                             ; $D00094  E8           MX
    INX                             ; $D00095  E8           MX
    INY                             ; $D00096  C8           MX
    INY                             ; $D00097  C8           MX
    DEC $46                         ; $D00098  C6 46        MX
    BPL L_D0008E                    ; $D0009A  10 F2        MX
    LDA #$307F                      ; $D0009C  A9 7F 30     MX
    LDX #$C7F6                      ; $D0009F  A2 F6 C7     MX
    LDY #$0020                      ; $D000A2  A0 20 00     MX
    JSL L_C302A8                    ; $D000A5  22 A8 02 C3  MX
    LDX #$0000                      ; $D000A9  A2 00 00     MX
    LDY #$0010                      ; $D000AC  A0 10 00     MX
L_D000AF:
    LDA $7FC7F6,X                   ; $D000AF  BF F6 C7 7F  MX
    LSR                             ; $D000B3  4A           MX
    AND #$3DEF                      ; $D000B4  29 EF 3D     MX
    STA $7FC7F6,X                   ; $D000B7  9F F6 C7 7F  MX
    INX                             ; $D000BB  E8           MX
    INX                             ; $D000BC  E8           MX
    DEY                             ; $D000BD  88           MX
    BNE L_D000AF                    ; $D000BE  D0 EF        MX
    LDA #$407F                      ; $D000C0  A9 7F 40     MX
    LDX #$C7F6                      ; $D000C3  A2 F6 C7     MX
    LDY #$0020                      ; $D000C6  A0 20 00     MX
    JSL L_C302A8                    ; $D000C9  22 A8 02 C3  MX
    LDX #$0000                      ; $D000CD  A2 00 00     MX
    LDY #$0000                      ; $D000D0  A0 00 00     MX
    LDA #$4B54                      ; $D000D3  A9 54 4B     MX
    STA $26                         ; $D000D6  85 26        MX
    LDA #$00C1                      ; $D000D8  A9 C1 00     MX
    STA $28                         ; $D000DB  85 28        MX
    LDA #$0011                      ; $D000DD  A9 11 00     MX
    STA $46                         ; $D000E0  85 46        MX
L_D000E2:
    LDA [$26],Y                     ; $D000E2  B7 26        MX
    STA $7FC7F6,X                   ; $D000E4  9F F6 C7 7F  MX
    INX                             ; $D000E8  E8           MX
    INX                             ; $D000E9  E8           MX
    INY                             ; $D000EA  C8           MX
    INY                             ; $D000EB  C8           MX
    DEC $46                         ; $D000EC  C6 46        MX
    BPL L_D000E2                    ; $D000EE  10 F2        MX
    LDA #$507F                      ; $D000F0  A9 7F 50     MX
    LDX #$C7F6                      ; $D000F3  A2 F6 C7     MX
    LDY #$0020                      ; $D000F6  A0 20 00     MX
    JSL L_C302A8                    ; $D000F9  22 A8 02 C3  MX
    LDX #$0000                      ; $D000FD  A2 00 00     MX
    LDY #$0010                      ; $D00100  A0 10 00     MX
L_D00103:
    LDA $7FC7F6,X                   ; $D00103  BF F6 C7 7F  MX
    LSR                             ; $D00107  4A           MX
    AND #$3DEF                      ; $D00108  29 EF 3D     MX
    STA $7FC7F6,X                   ; $D0010B  9F F6 C7 7F  MX
    INX                             ; $D0010F  E8           MX
    INX                             ; $D00110  E8           MX
    DEY                             ; $D00111  88           MX
    BNE L_D00103                    ; $D00112  D0 EF        MX
    LDA #$607F                      ; $D00114  A9 7F 60     MX
    LDX #$C7F6                      ; $D00117  A2 F6 C7     MX
    LDY #$0020                      ; $D0011A  A0 20 00     MX
    JSL L_C302A8                    ; $D0011D  22 A8 02 C3  MX
    LDA #$0400                      ; $D00121  A9 00 04     MX
    STA $56                         ; $D00124  85 56        MX
    LDY #$40A8                      ; $D00126  A0 A8 40     MX
    LDX #$0000                      ; $D00129  A2 00 00     MX
    LDA $0049,Y                     ; $D0012C  B9 49 00     MX
    BIT #$0020                      ; $D0012F  89 20 00     MX
    PHP                             ; $D00132  08           MX
    AND #$FFDF                      ; $D00133  29 DF FF     MX
    STA $0049,Y                     ; $D00136  99 49 00     MX
    PLP                             ; $D00139  28           MX
    LDA $90                         ; $D0013A  A5 90        MX
    BNE L_D0014A                    ; $D0013C  D0 0C        MX
    LDA $0049,Y                     ; $D0013E  B9 49 00     MX
    ORA #$0020                      ; $D00141  09 20 00     MX
    STA $0049,Y                     ; $D00144  99 49 00     MX
    LDX #$0400                      ; $D00147  A2 00 04     MX
L_D0014A:
    STX $56                         ; $D0014A  86 56        MX
    LDY #$40A8                      ; $D0014C  A0 A8 40     MX
    LDX #$09A4                      ; $D0014F  A2 A4 09     MX
    LDA #$0108                      ; $D00152  A9 08 01     MX
    JSR L_D0073B                    ; $D00155  20 3B 07     MX
    LDA $08B1                       ; $D00158  AD B1 08     MX
    LDY #$D808                      ; $D0015B  A0 08 D8     MX
    JSR L_D005A3                    ; $D0015E  20 A3 05     MX
    LDY #$0042                      ; $D00161  A0 42 00     MX
    LDA #$0000                      ; $D00164  A9 00 00     MX
    JSR L_D005C2                    ; $D00167  20 C2 05     MX
    LDY #$40A8                      ; $D0016A  A0 A8 40     MX
    LDA $0057,Y                     ; $D0016D  B9 57 00     MX
    AND #$00FF                      ; $D00170  29 FF 00     MX
    LDY #$05C2                      ; $D00173  A0 C2 05     MX
    JSR L_D005EA                    ; $D00176  20 EA 05     MX
    LDY #$411D                      ; $D00179  A0 1D 41     MX
    LDX #$0000                      ; $D0017C  A2 00 00     MX
    LDA $0049,Y                     ; $D0017F  B9 49 00     MX
    BIT #$0020                      ; $D00182  89 20 00     MX
    PHP                             ; $D00185  08           MX
    AND #$FFDF                      ; $D00186  29 DF FF     MX
    STA $0049,Y                     ; $D00189  99 49 00     MX
    PLP                             ; $D0018C  28           MX
    LDA $92                         ; $D0018D  A5 92        MX
    BNE L_D0019D                    ; $D0018F  D0 0C        MX
    LDA $0049,Y                     ; $D00191  B9 49 00     MX
    ORA #$0020                      ; $D00194  09 20 00     MX
    STA $0049,Y                     ; $D00197  99 49 00     MX
    LDX #$0400                      ; $D0019A  A2 00 04     MX
L_D0019D:
    STX $56                         ; $D0019D  86 56        MX
    LDY #$411D                      ; $D0019F  A0 1D 41     MX
    LDX #$09CC                      ; $D001A2  A2 CC 09     MX
    LDA #$0134                      ; $D001A5  A9 34 01     MX
    JSR L_D0073B                    ; $D001A8  20 3B 07     MX
    LDA $08B3                       ; $D001AB  AD B3 08     MX
    LDY #$D8C8                      ; $D001AE  A0 C8 D8     MX
    JSR L_D005A3                    ; $D001B1  20 A3 05     MX
    LDY #$006E                      ; $D001B4  A0 6E 00     MX
    LDA #$0001                      ; $D001B7  A9 01 00     MX
    JSR L_D005C2                    ; $D001BA  20 C2 05     MX
    LDY #$411D                      ; $D001BD  A0 1D 41     MX
    LDA $0057,Y                     ; $D001C0  B9 57 00     MX
    AND #$00FF                      ; $D001C3  29 FF 00     MX
    LDY #$05F4                      ; $D001C6  A0 F4 05     MX
    JSR L_D005EA                    ; $D001C9  20 EA 05     MX
    LDA $08F8                       ; $D001CC  AD F8 08     MX
    BNE L_D001F7                    ; $D001CF  D0 26        MX
    LDY #$005C                      ; $D001D1  A0 5C 00     MX
    LDA #$001F                      ; $D001D4  A9 1F 00     MX
    ORA #$3400                      ; $D001D7  09 00 34     MX
    STA $11FE,Y                     ; $D001DA  99 FE 11     MX
    LDY #$009C                      ; $D001DD  A0 9C 00     MX
    LDA #$0020                      ; $D001E0  A9 20 00     MX
    ORA #$3400                      ; $D001E3  09 00 34     MX
    STA $11FE,Y                     ; $D001E6  99 FE 11     MX
    LDY #$011C                      ; $D001E9  A0 1C 01     MX
    LDA #$001E                      ; $D001EC  A9 1E 00     MX
    ORA #$3400                      ; $D001EF  09 00 34     MX
    STA $11FE,Y                     ; $D001F2  99 FE 11     MX
    BRA L_D00203                    ; $D001F5  80 0C        MX
L_D001F7:
    LDY $086D                       ; $D001F7  AC 6D 08     MX
    LDA $0049,Y                     ; $D001FA  B9 49 00     MX
    ORA #$0001                      ; $D001FD  09 01 00     MX
    STA $0049,Y                     ; $D00200  99 49 00     MX
L_D00203:
    LDA #$7000                      ; $D00203  A9 00 70     MX
    STA $002116                     ; $D00206  8F 16 21 00  MX
    LDA #$1000                      ; $D0020A  A9 00 10     MX
    LDX #$C9A8                      ; $D0020D  A2 A8 C9     MX
    LDY #$007F                      ; $D00210  A0 7F 00     MX
    JSL L_C308A0                    ; $D00213  22 A0 08 C3  MX
    LDA #$7800                      ; $D00217  A9 00 78     MX
    STA $002116                     ; $D0021A  8F 16 21 00  MX
    LDA #$0700                      ; $D0021E  A9 00 07     MX
    LDX #$11FE                      ; $D00221  A2 FE 11     MX
    LDY #$007E                      ; $D00224  A0 7E 00     MX
    JSL L_C308A0                    ; $D00227  22 A0 08 C3  MX
    RTL                             ; $D0022B  6B           MX
L_D0022C:
    JSR L_D00814                    ; $D0022C  20 14 08     MX
    LDY #$40A8                      ; $D0022F  A0 A8 40     MX
    LDA #$0000                      ; $D00232  A9 00 00     MX
    STA $56                         ; $D00235  85 56        MX
    LDA $0049,Y                     ; $D00237  B9 49 00     MX
    BIT #$0020                      ; $D0023A  89 20 00     MX
    BEQ L_D00260                    ; $D0023D  F0 21        MX
    LDA $0049,Y                     ; $D0023F  B9 49 00     MX
    AND #$FFD0                      ; $D00242  29 D0 FF     MX
    ORA #$000F                      ; $D00245  09 0F 00     MX
    STA $0049,Y                     ; $D00248  99 49 00     MX
    LDA #$8000                      ; $D0024B  A9 00 80     MX
    TSB $90                         ; $D0024E  04 90        MX
    TSB $8A                         ; $D00250  04 8A        MX
    LDA #$0400                      ; $D00252  A9 00 04     MX
    STA $56                         ; $D00255  85 56        MX
    LDY #$0042                      ; $D00257  A0 42 00     MX
    LDA #$0000                      ; $D0025A  A9 00 00     MX
    JSR L_D005C2                    ; $D0025D  20 C2 05     MX
L_D00260:
    LDA $0049,Y                     ; $D00260  B9 49 00     MX
    BIT #$0040                      ; $D00263  89 40 00     MX
    BEQ L_D00281                    ; $D00266  F0 19        MX
    AND #$FF00                      ; $D00268  29 00 FF     MX
    ORA #$000F                      ; $D0026B  09 0F 00     MX
    STA $0049,Y                     ; $D0026E  99 49 00     MX
    LDY #$0042                      ; $D00271  A0 42 00     MX
    LDA #$0000                      ; $D00274  A9 00 00     MX
    JSR L_D005C2                    ; $D00277  20 C2 05     MX
    LDA #$8000                      ; $D0027A  A9 00 80     MX
    TSB $90                         ; $D0027D  04 90        MX
    TSB $8A                         ; $D0027F  04 8A        MX
L_D00281:
    LDA #$8000                      ; $D00281  A9 00 80     MX
    TRB $90                         ; $D00284  14 90        MX
    BEQ L_D00293                    ; $D00286  F0 0B        MX
    LDA $90                         ; $D00288  A5 90        MX
    BEQ L_D0028D                    ; $D0028A  F0 01        MX
    DEC                             ; $D0028C  3A           MX
L_D0028D:
    LDY #$0102                      ; $D0028D  A0 02 01     MX
    JSR L_D004F7                    ; $D00290  20 F7 04     MX
L_D00293:
    LDA $8A                         ; $D00293  A5 8A        MX
    BIT #$8000                      ; $D00295  89 00 80     MX
    BEQ L_D002AF                    ; $D00298  F0 15        MX
    AND #$7FFF                      ; $D0029A  29 FF 7F     MX
    STA $8A                         ; $D0029D  85 8A        MX
    STA $4E                         ; $D0029F  85 4E        MX
    LDA $88                         ; $D002A1  A5 88        MX
    STA $4A                         ; $D002A3  85 4A        MX
    JSL L_D00474                    ; $D002A5  22 74 04 D0  MX
    LDY #$0088                      ; $D002A9  A0 88 00     MX
    JSR L_D00404                    ; $D002AC  20 04 04     MX
L_D002AF:
    LDY #$40A8                      ; $D002AF  A0 A8 40     MX
    LDA $0049,Y                     ; $D002B2  B9 49 00     MX
    BIT #$0002                      ; $D002B5  89 02 00     MX
    BEQ L_D002CC                    ; $D002B8  F0 12        MX
    AND #$FFFD                      ; $D002BA  29 FD FF     MX
    STA $0049,Y                     ; $D002BD  99 49 00     MX
    LDA $0057,Y                     ; $D002C0  B9 57 00     MX
    AND #$00FF                      ; $D002C3  29 FF 00     MX
    LDY #$05C2                      ; $D002C6  A0 C2 05     MX
    JSR L_D005EA                    ; $D002C9  20 EA 05     MX
L_D002CC:
    LDY #$40A8                      ; $D002CC  A0 A8 40     MX
    LDX #$09A4                      ; $D002CF  A2 A4 09     MX
    LDA #$0108                      ; $D002D2  A9 08 01     MX
    JSR L_D0073B                    ; $D002D5  20 3B 07     MX
    LDY #$40A8                      ; $D002D8  A0 A8 40     MX
    LDA #$0604                      ; $D002DB  A9 04 06     MX
    STA $46                         ; $D002DE  85 46        MX
    JSR L_D00A1C                    ; $D002E0  20 1C 0A     MX
    LDY #$411D                      ; $D002E3  A0 1D 41     MX
    LDA #$0000                      ; $D002E6  A9 00 00     MX
    STA $56                         ; $D002E9  85 56        MX
    LDA $0049,Y                     ; $D002EB  B9 49 00     MX
    BIT #$0020                      ; $D002EE  89 20 00     MX
    BEQ L_D00314                    ; $D002F1  F0 21        MX
    LDA $0049,Y                     ; $D002F3  B9 49 00     MX
    AND #$FFD0                      ; $D002F6  29 D0 FF     MX
    ORA #$000F                      ; $D002F9  09 0F 00     MX
    STA $0049,Y                     ; $D002FC  99 49 00     MX
    LDA #$8000                      ; $D002FF  A9 00 80     MX
    TSB $92                         ; $D00302  04 92        MX
    TSB $8E                         ; $D00304  04 8E        MX
    LDA #$0400                      ; $D00306  A9 00 04     MX
    STA $56                         ; $D00309  85 56        MX
    LDY #$006E                      ; $D0030B  A0 6E 00     MX
    LDA #$0001                      ; $D0030E  A9 01 00     MX
    JSR L_D005C2                    ; $D00311  20 C2 05     MX
L_D00314:
    LDY #$411D                      ; $D00314  A0 1D 41     MX
    LDA $0049,Y                     ; $D00317  B9 49 00     MX
    BIT #$0040                      ; $D0031A  89 40 00     MX
    BEQ L_D00338                    ; $D0031D  F0 19        MX
    AND #$FF00                      ; $D0031F  29 00 FF     MX
    ORA #$000F                      ; $D00322  09 0F 00     MX
    STA $0049,Y                     ; $D00325  99 49 00     MX
    LDY #$006E                      ; $D00328  A0 6E 00     MX
    LDA #$0001                      ; $D0032B  A9 01 00     MX
    JSR L_D005C2                    ; $D0032E  20 C2 05     MX
    LDA #$8000                      ; $D00331  A9 00 80     MX
    TSB $92                         ; $D00334  04 92        MX
    TSB $8E                         ; $D00336  04 8E        MX
L_D00338:
    LDA #$8000                      ; $D00338  A9 00 80     MX
    TRB $92                         ; $D0033B  14 92        MX
    BEQ L_D0034A                    ; $D0033D  F0 0B        MX
    LDA $92                         ; $D0033F  A5 92        MX
    BEQ L_D00344                    ; $D00341  F0 01        MX
    DEC                             ; $D00343  3A           MX
L_D00344:
    LDY #$012E                      ; $D00344  A0 2E 01     MX
    JSR L_D004F7                    ; $D00347  20 F7 04     MX
L_D0034A:
    LDA $8E                         ; $D0034A  A5 8E        MX
    BIT #$8000                      ; $D0034C  89 00 80     MX
    BEQ L_D00366                    ; $D0034F  F0 15        MX
    AND #$7FFF                      ; $D00351  29 FF 7F     MX
    STA $8E                         ; $D00354  85 8E        MX
    STA $4E                         ; $D00356  85 4E        MX
    LDA $8C                         ; $D00358  A5 8C        MX
    STA $4A                         ; $D0035A  85 4A        MX
    JSL L_D00474                    ; $D0035C  22 74 04 D0  MX
    LDY #$00B4                      ; $D00360  A0 B4 00     MX
    JSR L_D00404                    ; $D00363  20 04 04     MX
L_D00366:
    LDY #$411D                      ; $D00366  A0 1D 41     MX
    LDA $0049,Y                     ; $D00369  B9 49 00     MX
    BIT #$0002                      ; $D0036C  89 02 00     MX
    BEQ L_D00383                    ; $D0036F  F0 12        MX
    AND #$FFFD                      ; $D00371  29 FD FF     MX
    STA $0049,Y                     ; $D00374  99 49 00     MX
    LDA $0057,Y                     ; $D00377  B9 57 00     MX
    AND #$00FF                      ; $D0037A  29 FF 00     MX
    LDY #$05F4                      ; $D0037D  A0 F4 05     MX
    JSR L_D005EA                    ; $D00380  20 EA 05     MX
L_D00383:
    LDY #$411D                      ; $D00383  A0 1D 41     MX
    LDX #$09CC                      ; $D00386  A2 CC 09     MX
    LDA #$0134                      ; $D00389  A9 34 01     MX
    JSR L_D0073B                    ; $D0038C  20 3B 07     MX
    LDY #$411D                      ; $D0038F  A0 1D 41     MX
    LDA #$0636                      ; $D00392  A9 36 06     MX
    STA $46                         ; $D00395  85 46        MX
    JSR L_D00A1C                    ; $D00397  20 1C 0A     MX
    LDA $08F8                       ; $D0039A  AD F8 08     MX
    BNE L_D003D9                    ; $D0039D  D0 3A        MX
    LDA #$0000                      ; $D0039F  A9 00 00     MX
    STA $56                         ; $D003A2  85 56        MX
    LDA #$0002                      ; $D003A4  A9 02 00     MX
    TRB $68                         ; $D003A7  14 68        MX
    BEQ L_D003B4                    ; $D003A9  F0 09        MX
    LDA $08A9                       ; $D003AB  AD A9 08     MX
    LDY #$0060                      ; $D003AE  A0 60 00     MX
    JSR L_D004BC                    ; $D003B1  20 BC 04     MX
L_D003B4:
    LDA #$0008                      ; $D003B4  A9 08 00     MX
    TRB $68                         ; $D003B7  14 68        MX
    BEQ L_D003C4                    ; $D003B9  F0 09        MX
    LDA $08AD                       ; $D003BB  AD AD 08     MX
    LDY #$011E                      ; $D003BE  A0 1E 01     MX
    JSR L_D0052E                    ; $D003C1  20 2E 05     MX
L_D003C4:
    LDA $08A9                       ; $D003C4  AD A9 08     MX
    BNE L_D003D9                    ; $D003C7  D0 10        MX
    LDA $0715                       ; $D003C9  AD 15 07     MX
    BIT #$0003                      ; $D003CC  89 03 00     MX
    BNE L_D003D9                    ; $D003CF  D0 08        MX
    JSR L_D003DA                    ; $D003D1  20 DA 03     MX
    LDA #$8000                      ; $D003D4  A9 00 80     MX
    TSB $68                         ; $D003D7  04 68        MX
L_D003D9:
    RTL                             ; $D003D9  6B           MX
L_D003DA:
    LDY #$0060                      ; $D003DA  A0 60 00     MX
    BIT #$0004                      ; $D003DD  89 04 00     MX
    BEQ L_D003F4                    ; $D003E0  F0 12        MX
    LDA #$340A                      ; $D003E2  A9 0A 34     MX
    STA $11FE,Y                     ; $D003E5  99 FE 11     MX
    STA $1200,Y                     ; $D003E8  99 00 12     MX
    INC                             ; $D003EB  1A           MX
    STA $123E,Y                     ; $D003EC  99 3E 12     MX
    STA $1240,Y                     ; $D003EF  99 40 12     MX
    BRA L_D00403                    ; $D003F2  80 0F        MX
L_D003F4:
    LDA #$2472                      ; $D003F4  A9 72 24     MX
    STA $11FE,Y                     ; $D003F7  99 FE 11     MX
    STA $1200,Y                     ; $D003FA  99 00 12     MX
    STA $123E,Y                     ; $D003FD  99 3E 12     MX
    STA $1240,Y                     ; $D00400  99 40 12     MX
L_D00403:
    RTS                             ; $D00403  60           MX
L_D00404:
    LDA $48                         ; $D00404  A5 48        MX
    AND #$000F                      ; $D00406  29 0F 00     MX
    CLC                             ; $D00409  18           MX
    ADC #$0000                      ; $D0040A  69 00 00     MX
    ORA #$2400                      ; $D0040D  09 00 24     MX
    CLC                             ; $D00410  18           MX
    ADC $56                         ; $D00411  65 56        MX
    STA $11FE,Y                     ; $D00413  99 FE 11     MX
    INY                             ; $D00416  C8           MX
    INY                             ; $D00417  C8           MX
    LDA $47                         ; $D00418  A5 47        MX
    AND #$00FF                      ; $D0041A  29 FF 00     MX
    LSR                             ; $D0041D  4A           MX
    LSR                             ; $D0041E  4A           MX
    LSR                             ; $D0041F  4A           MX
    LSR                             ; $D00420  4A           MX
    CLC                             ; $D00421  18           MX
    ADC #$0000                      ; $D00422  69 00 00     MX
    ORA #$2400                      ; $D00425  09 00 24     MX
    CLC                             ; $D00428  18           MX
    ADC $56                         ; $D00429  65 56        MX
    STA $11FE,Y                     ; $D0042B  99 FE 11     MX
    INY                             ; $D0042E  C8           MX
    INY                             ; $D0042F  C8           MX
    LDA $47                         ; $D00430  A5 47        MX
    AND #$000F                      ; $D00432  29 0F 00     MX
    CLC                             ; $D00435  18           MX
    ADC #$0000                      ; $D00436  69 00 00     MX
    ORA #$2400                      ; $D00439  09 00 24     MX
    CLC                             ; $D0043C  18           MX
    ADC $56                         ; $D0043D  65 56        MX
    STA $11FE,Y                     ; $D0043F  99 FE 11     MX
    INY                             ; $D00442  C8           MX
    INY                             ; $D00443  C8           MX
    LDA $46                         ; $D00444  A5 46        MX
    AND #$00FF                      ; $D00446  29 FF 00     MX
    LSR                             ; $D00449  4A           MX
    LSR                             ; $D0044A  4A           MX
    LSR                             ; $D0044B  4A           MX
    LSR                             ; $D0044C  4A           MX
    CLC                             ; $D0044D  18           MX
    ADC #$0000                      ; $D0044E  69 00 00     MX
    ORA #$2400                      ; $D00451  09 00 24     MX
    CLC                             ; $D00454  18           MX
    ADC $56                         ; $D00455  65 56        MX
    STA $11FE,Y                     ; $D00457  99 FE 11     MX
    INY                             ; $D0045A  C8           MX
    INY                             ; $D0045B  C8           MX
    LDA $46                         ; $D0045C  A5 46        MX
    AND #$000F                      ; $D0045E  29 0F 00     MX
    CLC                             ; $D00461  18           MX
    ADC #$0000                      ; $D00462  69 00 00     MX
    ORA #$2400                      ; $D00465  09 00 24     MX
    CLC                             ; $D00468  18           MX
    ADC $56                         ; $D00469  65 56        MX
    STA $11FE,Y                     ; $D0046B  99 FE 11     MX
    LDA #$8000                      ; $D0046E  A9 00 80     MX
    TSB $68                         ; $D00471  04 68        MX
    RTS                             ; $D00473  60           MX
L_D00474:
    PHX                             ; $D00474  DA           MX
    LDX #$0000                      ; $D00475  A2 00 00     MX
    STZ $46                         ; $D00478  64 46        MX
    STZ $48                         ; $D0047A  64 48        MX
    SED                             ; $D0047C  F8           MX
L_D0047D:
    LSR $4E                         ; $D0047D  46 4E        MX
    PHP                             ; $D0047F  08           MX
    ROR $4A                         ; $D00480  66 4A        MX
    BCC L_D00495                    ; $D00482  90 11        MX
    LDA $46                         ; $D00484  A5 46        MX
    CLC                             ; $D00486  18           MX
    ADC $C14B74,X                   ; $D00487  7F 74 4B C1  MX
    STA $46                         ; $D0048B  85 46        MX
    LDA $48                         ; $D0048D  A5 48        MX
    ADC $C14B76,X                   ; $D0048F  7F 76 4B C1  MX
    STA $48                         ; $D00493  85 48        MX
L_D00495:
    INX                             ; $D00495  E8           MX
    INX                             ; $D00496  E8           MX
    INX                             ; $D00497  E8           MX
    INX                             ; $D00498  E8           MX
    PLP                             ; $D00499  28           MX
    BNE L_D0047D                    ; $D0049A  D0 E1        MX
L_D0049C:
    LSR $4A                         ; $D0049C  46 4A        MX
    PHP                             ; $D0049E  08           MX
    BCC L_D004B2                    ; $D0049F  90 11        MX
    LDA $46                         ; $D004A1  A5 46        MX
    CLC                             ; $D004A3  18           MX
    ADC $C14B74,X                   ; $D004A4  7F 74 4B C1  MX
    STA $46                         ; $D004A8  85 46        MX
    LDA $48                         ; $D004AA  A5 48        MX
    ADC $C14B76,X                   ; $D004AC  7F 76 4B C1  MX
    STA $48                         ; $D004B0  85 48        MX
L_D004B2:
    INX                             ; $D004B2  E8           MX
    INX                             ; $D004B3  E8           MX
    INX                             ; $D004B4  E8           MX
    INX                             ; $D004B5  E8           MX
    PLP                             ; $D004B6  28           MX
    BNE L_D0049C                    ; $D004B7  D0 E3        MX
    CLD                             ; $D004B9  D8           MX
    PLX                             ; $D004BA  FA           MX
    RTL                             ; $D004BB  6B           MX
L_D004BC:
    STA $004204                     ; $D004BC  8F 04 42 00  MX
    SEP #$20                        ; $D004C0  E2 20        MX
    LDA #$0A                        ; $D004C2  A9 0A        mX
    STA $004206                     ; $D004C4  8F 06 42 00  mX
    REP #$20                        ; $D004C8  C2 20        mX
    LDA #$8000                      ; $D004CA  A9 00 80     MX
    TSB $68                         ; $D004CD  04 68        MX
    NOP                             ; $D004CF  EA           MX
    LDA $004214                     ; $D004D0  AF 14 42 00  MX
    ASL                             ; $D004D4  0A           MX
    CLC                             ; $D004D5  18           MX
    ADC #$000A                      ; $D004D6  69 0A 00     MX
    ORA #$3400                      ; $D004D9  09 00 34     MX
    STA $11FE,Y                     ; $D004DC  99 FE 11     MX
    INC                             ; $D004DF  1A           MX
    STA $123E,Y                     ; $D004E0  99 3E 12     MX
    LDA $004216                     ; $D004E3  AF 16 42 00  MX
    ASL                             ; $D004E7  0A           MX
    CLC                             ; $D004E8  18           MX
    ADC #$000A                      ; $D004E9  69 0A 00     MX
    ORA #$3400                      ; $D004EC  09 00 34     MX
    STA $1200,Y                     ; $D004EF  99 00 12     MX
    INC                             ; $D004F2  1A           MX
    STA $1240,Y                     ; $D004F3  99 40 12     MX
    RTS                             ; $D004F6  60           MX
L_D004F7:
    STA $004204                     ; $D004F7  8F 04 42 00  MX
    SEP #$20                        ; $D004FB  E2 20        MX
    LDA #$0A                        ; $D004FD  A9 0A        mX
    STA $004206                     ; $D004FF  8F 06 42 00  mX
    REP #$20                        ; $D00503  C2 20        mX
    LDA #$8000                      ; $D00505  A9 00 80     MX
    TSB $68                         ; $D00508  04 68        MX
    NOP                             ; $D0050A  EA           MX
    LDA $004214                     ; $D0050B  AF 14 42 00  MX
    CLC                             ; $D0050F  18           MX
    ADC #$0000                      ; $D00510  69 00 00     MX
    ORA #$2C00                      ; $D00513  09 00 2C     MX
    CLC                             ; $D00516  18           MX
    ADC $56                         ; $D00517  65 56        MX
    STA $11FE,Y                     ; $D00519  99 FE 11     MX
    LDA $004216                     ; $D0051C  AF 16 42 00  MX
    CLC                             ; $D00520  18           MX
    ADC #$0000                      ; $D00521  69 00 00     MX
    ORA #$2C00                      ; $D00524  09 00 2C     MX
    CLC                             ; $D00527  18           MX
    ADC $56                         ; $D00528  65 56        MX
    STA $1200,Y                     ; $D0052A  99 00 12     MX
    RTS                             ; $D0052D  60           MX
L_D0052E:
    STA $004204                     ; $D0052E  8F 04 42 00  MX
    SEP #$20                        ; $D00532  E2 20        MX
    LDA #$0A                        ; $D00534  A9 0A        mX
    STA $004206                     ; $D00536  8F 06 42 00  mX
    REP #$20                        ; $D0053A  C2 20        mX
    LDA #$8000                      ; $D0053C  A9 00 80     MX
    TSB $68                         ; $D0053F  04 68        MX
    NOP                             ; $D00541  EA           MX
    LDA $004216                     ; $D00542  AF 16 42 00  MX
    TAX                             ; $D00546  AA           MX
    LDA $004214                     ; $D00547  AF 14 42 00  MX
    STA $004204                     ; $D0054B  8F 04 42 00  MX
    SEP #$20                        ; $D0054F  E2 20        MX
    LDA #$0A                        ; $D00551  A9 0A        mX
    STA $004206                     ; $D00553  8F 06 42 00  mX
    REP #$20                        ; $D00557  C2 20        mX
    TXA                             ; $D00559  8A           MX
    CLC                             ; $D0055A  18           MX
    ADC #$0000                      ; $D0055B  69 00 00     MX
    ORA #$3400                      ; $D0055E  09 00 34     MX
    STA $1204,Y                     ; $D00561  99 04 12     MX
    LDA $004216                     ; $D00564  AF 16 42 00  MX
    TAX                             ; $D00568  AA           MX
    LDA $004214                     ; $D00569  AF 14 42 00  MX
    STA $004204                     ; $D0056D  8F 04 42 00  MX
    SEP #$20                        ; $D00571  E2 20        MX
    LDA #$0A                        ; $D00573  A9 0A        mX
    STA $004206                     ; $D00575  8F 06 42 00  mX
    REP #$20                        ; $D00579  C2 20        mX
    TXA                             ; $D0057B  8A           MX
    CLC                             ; $D0057C  18           MX
    ADC #$0000                      ; $D0057D  69 00 00     MX
    ORA #$3400                      ; $D00580  09 00 34     MX
    STA $1202,Y                     ; $D00583  99 02 12     MX
    LDA $004216                     ; $D00586  AF 16 42 00  MX
    CLC                             ; $D0058A  18           MX
    ADC #$0000                      ; $D0058B  69 00 00     MX
    ORA #$3400                      ; $D0058E  09 00 34     MX
    STA $1200,Y                     ; $D00591  99 00 12     MX
    LDA $004214                     ; $D00594  AF 14 42 00  MX
    CLC                             ; $D00598  18           MX
    ADC #$0000                      ; $D00599  69 00 00     MX
    ORA #$3400                      ; $D0059C  09 00 34     MX
    STA $11FE,Y                     ; $D0059F  99 FE 11     MX
    RTS                             ; $D005A2  60           MX
L_D005A3:
    DEC                             ; $D005A3  3A           MX
    ASL                             ; $D005A4  0A           MX
    STA $42                         ; $D005A5  85 42        MX
    ASL                             ; $D005A7  0A           MX
    CLC                             ; $D005A8  18           MX
    ADC $42                         ; $D005A9  65 42        MX
    CLC                             ; $D005AB  18           MX
    ADC #$007F                      ; $D005AC  69 7F 00     MX
    ASL                             ; $D005AF  0A           MX
    ASL                             ; $D005B0  0A           MX
    ASL                             ; $D005B1  0A           MX
    ASL                             ; $D005B2  0A           MX
    ASL                             ; $D005B3  0A           MX
    CLC                             ; $D005B4  18           MX
    ADC #$C9A8                      ; $D005B5  69 A8 C9     MX
    TAX                             ; $D005B8  AA           MX
    LDA #$00C0                      ; $D005B9  A9 C0 00     MX
    PHB                             ; $D005BC  8B           MX
    MVN $7F,$7F                     ; $D005BD  54 7F 7F     MX
    PLB                             ; $D005C0  AB           MX
    RTS                             ; $D005C1  60           MX
L_D005C2:
    ASL                             ; $D005C2  0A           MX
    STA $46                         ; $D005C3  85 46        MX
    ASL                             ; $D005C5  0A           MX
    CLC                             ; $D005C6  18           MX
    ADC $46                         ; $D005C7  65 46        MX
    LDX #$0003                      ; $D005C9  A2 03 00     MX
    CLC                             ; $D005CC  18           MX
    ADC #$0073                      ; $D005CD  69 73 00     MX
    ORA #$2400                      ; $D005D0  09 00 24     MX
    CLC                             ; $D005D3  18           MX
    ADC $56                         ; $D005D4  65 56        MX
L_D005D6:
    STA $11FE,Y                     ; $D005D6  99 FE 11     MX
    INC                             ; $D005D9  1A           MX
    STA $1200,Y                     ; $D005DA  99 00 12     MX
    INC                             ; $D005DD  1A           MX
    PHA                             ; $D005DE  48           MX
    TYA                             ; $D005DF  98           MX
    CLC                             ; $D005E0  18           MX
    ADC #$0040                      ; $D005E1  69 40 00     MX
    TAY                             ; $D005E4  A8           MX
    PLA                             ; $D005E5  68           MX
    DEX                             ; $D005E6  CA           MX
    BNE L_D005D6                    ; $D005E7  D0 ED        MX
    RTS                             ; $D005E9  60           MX
L_D005EA:
    ASL                             ; $D005EA  0A           MX
    STA $42                         ; $D005EB  85 42        MX
    ASL                             ; $D005ED  0A           MX
    ASL                             ; $D005EE  0A           MX
    CLC                             ; $D005EF  18           MX
    ADC $42                         ; $D005F0  65 42        MX
    ASL                             ; $D005F2  0A           MX
    ASL                             ; $D005F3  0A           MX
    TAX                             ; $D005F4  AA           MX
    LDA #$0004                      ; $D005F5  A9 04 00     MX
    STA $4A                         ; $D005F8  85 4A        MX
L_D005FA:
    LDA #$0005                      ; $D005FA  A9 05 00     MX
    STA $46                         ; $D005FD  85 46        MX
L_D005FF:
    LDA $D00623,X                   ; $D005FF  BF 23 06 D0  MX
    BEQ L_D0060B                    ; $D00603  F0 06        MX
    CLC                             ; $D00605  18           MX
    ADC $56                         ; $D00606  65 56        MX
    STA $11FE,Y                     ; $D00608  99 FE 11     MX
L_D0060B:
    INX                             ; $D0060B  E8           MX
    INX                             ; $D0060C  E8           MX
    INY                             ; $D0060D  C8           MX
    INY                             ; $D0060E  C8           MX
    DEC $46                         ; $D0060F  C6 46        MX
    BNE L_D005FF                    ; $D00611  D0 EC        MX
    TYA                             ; $D00613  98           MX
    CLC                             ; $D00614  18           MX
    ADC #$0036                      ; $D00615  69 36 00     MX
    TAY                             ; $D00618  A8           MX
    DEC $4A                         ; $D00619  C6 4A        MX
    BNE L_D005FA                    ; $D0061B  D0 DD        MX
    LDA #$4000                      ; $D0061D  A9 00 40     MX
    TSB $68                         ; $D00620  04 68        MX
    RTS                             ; $D00622  60           MX
    db $21,$24,$22,$24,$22,$24,$26,$2C,$27,$2C,$23,$24,$00,$00,$00,$00 ; $D00623
    db $28,$2C,$29,$2C,$23,$24,$00,$00,$00,$00,$28,$2C,$29,$2C,$24,$24 ; $D00633
    db $25,$24,$25,$24,$2A,$2C,$2B,$2C,$21,$24,$22,$24,$22,$24,$26,$2C ; $D00643
    db $27,$2C,$23,$24,$00,$00,$00,$00,$28,$2C,$29,$2C,$23,$24,$00,$00 ; $D00653
    db $00,$00,$28,$2C,$29,$2C,$24,$24,$25,$24,$25,$24,$2C,$2C,$2D,$2C ; $D00663
    db $21,$24,$22,$24,$22,$24,$26,$2C,$27,$2C,$23,$24,$00,$00,$00,$00 ; $D00673
    db $28,$2C,$29,$2C,$23,$24,$00,$00,$00,$00,$2E,$2C,$2F,$2C,$24,$24 ; $D00683
    db $25,$24,$25,$24,$2C,$2C,$2D,$2C,$21,$24,$22,$24,$22,$24,$26,$2C ; $D00693
    db $27,$2C,$23,$24,$00,$00,$00,$00,$28,$2C,$29,$2C,$23,$24,$00,$00 ; $D006A3
    db $00,$00,$30,$2C,$31,$2C,$24,$24,$25,$24,$25,$24,$2C,$2C,$2D,$2C ; $D006B3
    db $21,$24,$22,$24,$22,$24,$26,$2C,$27,$2C,$23,$24,$00,$00,$00,$00 ; $D006C3
    db $2E,$2C,$2F,$2C,$23,$24,$00,$00,$00,$00,$30,$2C,$31,$2C,$24,$24 ; $D006D3
    db $25,$24,$25,$24,$2C,$2C,$2D,$2C,$21,$24,$22,$24,$22,$24,$26,$2C ; $D006E3
    db $27,$2C,$23,$24,$00,$00,$00,$00,$30,$2C,$31,$2C,$23,$24,$00,$00 ; $D006F3
    db $00,$00,$30,$2C,$31,$2C,$24,$24,$25,$24,$25,$24,$2C,$2C,$2D,$2C ; $D00703
    db $21,$24,$22,$24,$22,$24,$32,$2C,$33,$2C,$23,$24,$00,$00,$00,$00 ; $D00713
    db $30,$2C,$31,$2C,$23,$24,$00,$00,$00,$00,$30,$2C,$31,$2C,$24,$24 ; $D00723
    db $25,$24,$25,$24,$2C,$2C,$2D,$2C                                 ; $D00733
L_D0073B:
    STZ $5E                         ; $D0073B  64 5E        MX
    PHA                             ; $D0073D  48           MX
    PHX                             ; $D0073E  DA           MX
    LDA $56                         ; $D0073F  A5 56        MX
    BNE L_D0074E                    ; $D00741  D0 0B        MX
    LDA $006B,Y                     ; $D00743  B9 6B 00     MX
    BIT #$0080                      ; $D00746  89 80 00     MX
    BNE L_D0074E                    ; $D00749  D0 03        MX
    JMP L_D00811                    ; $D0074B  4C 11 08     MX
L_D0074E:
    PHY                             ; $D0074E  5A           MX
    LDA $03,S                       ; $D0074F  A3 03        MX
    TAY                             ; $D00751  A8           MX
    LDA $0004,Y                     ; $D00752  B9 04 00     MX
    PLY                             ; $D00755  7A           MX
    AND #$00FF                      ; $D00756  29 FF 00     MX
    STA $5A                         ; $D00759  85 5A        MX
    LDA $0048,Y                     ; $D0075B  B9 48 00     MX
    AND #$00FF                      ; $D0075E  29 FF 00     MX
    BNE L_D00765                    ; $D00761  D0 02        MX
    STA $5A                         ; $D00763  85 5A        MX
L_D00765:
    TAX                             ; $D00765  AA           MX
    LDA $D009B8,X                   ; $D00766  BF B8 09 D0  MX
    AND #$00FF                      ; $D0076A  29 FF 00     MX
    STA $46                         ; $D0076D  85 46        MX
    CMP #$0003                      ; $D0076F  C9 03 00     MX
    BCS L_D00789                    ; $D00772  B0 15        MX
    LDA #$0070                      ; $D00774  A9 70 00     MX
    STA $5E                         ; $D00777  85 5E        MX
    LDA $0715                       ; $D00779  AD 15 07     MX
    BIT #$0001                      ; $D0077C  89 01 00     MX
    BEQ L_D0079A                    ; $D0077F  F0 19        MX
    LDA #$0038                      ; $D00781  A9 38 00     MX
    STA $5E                         ; $D00784  85 5E        MX
    JMP L_D0079A                    ; $D00786  4C 9A 07     MX
L_D00789:
    LDA $0049,Y                     ; $D00789  B9 49 00     MX
    BIT #$0001                      ; $D0078C  89 01 00     MX
    BNE L_D00794                    ; $D0078F  D0 03        MX
    JMP L_D00811                    ; $D00791  4C 11 08     MX
L_D00794:
    AND #$FFFE                      ; $D00794  29 FE FF     MX
    STA $0049,Y                     ; $D00797  99 49 00     MX
L_D0079A:
    LDA $5A                         ; $D0079A  A5 5A        MX
    TAX                             ; $D0079C  AA           MX
    LDA $D009B8,X                   ; $D0079D  BF B8 09 D0  MX
    AND #$00FF                      ; $D007A1  29 FF 00     MX
    STA $4A                         ; $D007A4  85 4A        MX
    LDA #$0005                      ; $D007A6  A9 05 00     MX
    STA $62                         ; $D007A9  85 62        MX
    LDA $03,S                       ; $D007AB  A3 03        MX
    TAY                             ; $D007AD  A8           MX
L_D007AE:
    LDA #$0006                      ; $D007AE  A9 06 00     MX
    STA $4E                         ; $D007B1  85 4E        MX
    STA $52                         ; $D007B3  85 52        MX
    LDA $46                         ; $D007B5  A5 46        MX
    SEC                             ; $D007B7  38           MX
    SBC #$0006                      ; $D007B8  E9 06 00     MX
    STA $46                         ; $D007BB  85 46        MX
    BPL L_D007CA                    ; $D007BD  10 0B        MX
    CLC                             ; $D007BF  18           MX
    ADC #$0006                      ; $D007C0  69 06 00     MX
    STA $4E                         ; $D007C3  85 4E        MX
    LDA #$0000                      ; $D007C5  A9 00 00     MX
    STA $46                         ; $D007C8  85 46        MX
L_D007CA:
    LDA $4A                         ; $D007CA  A5 4A        MX
    SEC                             ; $D007CC  38           MX
    SBC #$0006                      ; $D007CD  E9 06 00     MX
    STA $4A                         ; $D007D0  85 4A        MX
    BPL L_D007DF                    ; $D007D2  10 0B        MX
    CLC                             ; $D007D4  18           MX
    ADC #$0006                      ; $D007D5  69 06 00     MX
    STA $52                         ; $D007D8  85 52        MX
    LDA #$0000                      ; $D007DA  A9 00 00     MX
    STA $4A                         ; $D007DD  85 4A        MX
L_D007DF:
    LDA $52                         ; $D007DF  A5 52        MX
    ASL                             ; $D007E1  0A           MX
    ASL                             ; $D007E2  0A           MX
    ASL                             ; $D007E3  0A           MX
    ORA $4E                         ; $D007E4  05 4E        MX
    CLC                             ; $D007E6  18           MX
    ADC $5E                         ; $D007E7  65 5E        MX
    TAX                             ; $D007E9  AA           MX
    LDA $D00910,X                   ; $D007EA  BF 10 09 D0  MX
    AND #$00FF                      ; $D007EE  29 FF 00     MX
    ORA #$2C00                      ; $D007F1  09 00 2C     MX
    CLC                             ; $D007F4  18           MX
    ADC $56                         ; $D007F5  65 56        MX
    STA $11FE,Y                     ; $D007F7  99 FE 11     MX
    INY                             ; $D007FA  C8           MX
    INY                             ; $D007FB  C8           MX
    DEC $62                         ; $D007FC  C6 62        MX
    BNE L_D007AE                    ; $D007FE  D0 AE        MX
    LDA #$003D                      ; $D00800  A9 3D 00     MX
    ORA #$2C00                      ; $D00803  09 00 2C     MX
    CLC                             ; $D00806  18           MX
    ADC $56                         ; $D00807  65 56        MX
    STA $11FE,Y                     ; $D00809  99 FE 11     MX
    LDA #$8000                      ; $D0080C  A9 00 80     MX
    TSB $68                         ; $D0080F  04 68        MX
L_D00811:
    PLX                             ; $D00811  FA           MX
    PLA                             ; $D00812  68           MX
    RTS                             ; $D00813  60           MX
L_D00814:
    LDA $08F8                       ; $D00814  AD F8 08     MX
    BNE L_D0081C                    ; $D00817  D0 03        MX
    JMP L_D0090F                    ; $D00819  4C 0F 09     MX
L_D0081C:
    LDA #$00DC                      ; $D0081C  A9 DC 00     MX
    LDY $086D                       ; $D0081F  AC 6D 08     MX
    STZ $5E                         ; $D00822  64 5E        MX
    PHA                             ; $D00824  48           MX
    PHX                             ; $D00825  DA           MX
    LDA #$0064                      ; $D00826  A9 64 00     MX
    AND #$00FF                      ; $D00829  29 FF 00     MX
    STA $5A                         ; $D0082C  85 5A        MX
    LDA $0048,Y                     ; $D0082E  B9 48 00     MX
    AND #$00FF                      ; $D00831  29 FF 00     MX
    BNE L_D0084B                    ; $D00834  D0 15        MX
    LDA #$0004                      ; $D00836  A9 04 00     MX
    CMP $001E,Y                     ; $D00839  D9 1E 00     MX
    BEQ L_D00846                    ; $D0083C  F0 08        MX
    LDA $0048,Y                     ; $D0083E  B9 48 00     MX
    AND #$00FF                      ; $D00841  29 FF 00     MX
    BRA L_D0084B                    ; $D00844  80 05        MX
L_D00846:
    LDA #$0000                      ; $D00846  A9 00 00     MX
    STA $5A                         ; $D00849  85 5A        MX
L_D0084B:
    TAX                             ; $D0084B  AA           MX
    LDA $006C,Y                     ; $D0084C  B9 6C 00     MX
    BIT #$0001                      ; $D0084F  89 01 00     MX
    BNE L_D0085A                    ; $D00852  D0 06        MX
    LDA $C80464,X                   ; $D00854  BF 64 04 C8  MX
    BRA L_D0085E                    ; $D00858  80 04        MX
L_D0085A:
    LDA $C804E6,X                   ; $D0085A  BF E6 04 C8  MX
L_D0085E:
    AND #$00FF                      ; $D0085E  29 FF 00     MX
    TAX                             ; $D00861  AA           MX
    LDA $D009B8,X                   ; $D00862  BF B8 09 D0  MX
    AND #$00FF                      ; $D00866  29 FF 00     MX
    STA $46                         ; $D00869  85 46        MX
    CMP #$0003                      ; $D0086B  C9 03 00     MX
    BCS L_D00885                    ; $D0086E  B0 15        MX
    LDA #$0070                      ; $D00870  A9 70 00     MX
    STA $5E                         ; $D00873  85 5E        MX
    LDA $0715                       ; $D00875  AD 15 07     MX
    BIT #$0001                      ; $D00878  89 01 00     MX
    BEQ L_D00896                    ; $D0087B  F0 19        MX
    LDA #$0038                      ; $D0087D  A9 38 00     MX
    STA $5E                         ; $D00880  85 5E        MX
    JMP L_D00896                    ; $D00882  4C 96 08     MX
L_D00885:
    LDA $0049,Y                     ; $D00885  B9 49 00     MX
    BIT #$0001                      ; $D00888  89 01 00     MX
    BNE L_D00890                    ; $D0088B  D0 03        MX
    JMP L_D0090D                    ; $D0088D  4C 0D 09     MX
L_D00890:
    AND #$FFFE                      ; $D00890  29 FE FF     MX
    STA $0049,Y                     ; $D00893  99 49 00     MX
L_D00896:
    LDA $5A                         ; $D00896  A5 5A        MX
    TAX                             ; $D00898  AA           MX
    LDA $D009B8,X                   ; $D00899  BF B8 09 D0  MX
    AND #$00FF                      ; $D0089D  29 FF 00     MX
    STA $4A                         ; $D008A0  85 4A        MX
    LDA #$0005                      ; $D008A2  A9 05 00     MX
    STA $62                         ; $D008A5  85 62        MX
    LDA $03,S                       ; $D008A7  A3 03        MX
    TAY                             ; $D008A9  A8           MX
L_D008AA:
    LDA #$0006                      ; $D008AA  A9 06 00     MX
    STA $4E                         ; $D008AD  85 4E        MX
    STA $52                         ; $D008AF  85 52        MX
    LDA $46                         ; $D008B1  A5 46        MX
    SEC                             ; $D008B3  38           MX
    SBC #$0006                      ; $D008B4  E9 06 00     MX
    STA $46                         ; $D008B7  85 46        MX
    BPL L_D008C6                    ; $D008B9  10 0B        MX
    CLC                             ; $D008BB  18           MX
    ADC #$0006                      ; $D008BC  69 06 00     MX
    STA $4E                         ; $D008BF  85 4E        MX
    LDA #$0000                      ; $D008C1  A9 00 00     MX
    STA $46                         ; $D008C4  85 46        MX
L_D008C6:
    LDA $4A                         ; $D008C6  A5 4A        MX
    SEC                             ; $D008C8  38           MX
    SBC #$0006                      ; $D008C9  E9 06 00     MX
    STA $4A                         ; $D008CC  85 4A        MX
    BPL L_D008DB                    ; $D008CE  10 0B        MX
    CLC                             ; $D008D0  18           MX
    ADC #$0006                      ; $D008D1  69 06 00     MX
    STA $52                         ; $D008D4  85 52        MX
    LDA #$0000                      ; $D008D6  A9 00 00     MX
    STA $4A                         ; $D008D9  85 4A        MX
L_D008DB:
    LDA $52                         ; $D008DB  A5 52        MX
    ASL                             ; $D008DD  0A           MX
    ASL                             ; $D008DE  0A           MX
    ASL                             ; $D008DF  0A           MX
    ORA $4E                         ; $D008E0  05 4E        MX
    CLC                             ; $D008E2  18           MX
    ADC $5E                         ; $D008E3  65 5E        MX
    TAX                             ; $D008E5  AA           MX
    LDA $D00910,X                   ; $D008E6  BF 10 09 D0  MX
    AND #$00FF                      ; $D008EA  29 FF 00     MX
    ORA #$2C00                      ; $D008ED  09 00 2C     MX
    STA $11FE,Y                     ; $D008F0  99 FE 11     MX
    STA $123E,Y                     ; $D008F3  99 3E 12     MX
    INY                             ; $D008F6  C8           MX
    INY                             ; $D008F7  C8           MX
    DEC $62                         ; $D008F8  C6 62        MX
    BNE L_D008AA                    ; $D008FA  D0 AE        MX
    LDA #$003D                      ; $D008FC  A9 3D 00     MX
    ORA #$2C00                      ; $D008FF  09 00 2C     MX
    STA $11FE,Y                     ; $D00902  99 FE 11     MX
    STA $123E,Y                     ; $D00905  99 3E 12     MX
    LDA #$8000                      ; $D00908  A9 00 80     MX
    TSB $68                         ; $D0090B  04 68        MX
L_D0090D:
    PLX                             ; $D0090D  FA           MX
    PLA                             ; $D0090E  68           MX
L_D0090F:
    RTS                             ; $D0090F  60           MX
    db $36,$36,$3A,$3B,$3B,$37,$34,$34,$36,$36,$3A,$3B,$3B,$37,$34,$34 ; $D00910
    db $3C,$3C,$3A,$3B,$3B,$37,$34,$34,$3C,$3A,$3A,$3B,$3B,$37,$34,$34 ; $D00920
    db $3C,$3A,$3A,$3B,$3B,$37,$34,$34,$35,$35,$39,$38,$38,$37,$34,$34 ; $D00930
    db $35,$35,$39,$38,$38,$37,$34,$34,$36,$36,$3B,$3B,$3B,$34,$34,$34 ; $D00940
    db $36,$36,$3B,$3B,$3B,$34,$34,$34,$3B,$36,$3B,$3B,$3B,$34,$34,$34 ; $D00950
    db $3B,$3B,$3B,$3B,$3B,$34,$34,$34,$3B,$3B,$3B,$3B,$3B,$34,$34,$34 ; $D00960
    db $34,$34,$34,$34,$34,$34,$34,$34,$34,$34,$34,$34,$34,$34,$34,$34 ; $D00970
    db $36,$36,$3C,$3C,$3C,$35,$35,$35,$36,$36,$3C,$3C,$3C,$35,$35,$35 ; $D00980
    db $3C,$36,$3C,$3C,$3C,$35,$35,$35,$3C,$3C,$3C,$3C,$3C,$35,$35,$35 ; $D00990
    db $3C,$3C,$3C,$3C,$3C,$35,$35,$35,$35,$35,$35,$35,$35,$35,$35,$35 ; $D009A0
    db $35,$35,$35,$35,$35,$35,$35,$35,$00,$01,$01,$01,$01,$02,$02,$02 ; $D009B0
    db $02,$03,$03,$03,$04,$04,$04,$05,$05,$05,$05,$06,$06,$06,$07,$07 ; $D009C0
    db $07,$08,$08,$08,$08,$09,$09,$09,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C ; $D009D0
    db $0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E,$0E,$0F,$0F,$0F,$10,$10,$10,$11 ; $D009E0
    db $11,$11,$11,$12,$12,$12,$13,$13,$13,$13,$14,$14,$14,$15,$15,$15 ; $D009F0
    db $16,$16,$16,$16,$17,$17,$17,$18,$18,$18,$19,$19,$19,$19,$1A,$1A ; $D00A00
    db $1A,$1B,$1B,$1B,$1C,$1C,$1C,$1C,$1D,$1D,$1D,$1E                 ; $D00A10
L_D00A1C:
    LDA $0049,Y                     ; $D00A1C  B9 49 00     MX
    BIT #$0008                      ; $D00A1F  89 08 00     MX
    BEQ L_D00A3E                    ; $D00A22  F0 1A        MX
    AND #$FFF7                      ; $D00A24  29 F7 FF     MX
    STA $0049,Y                     ; $D00A27  99 49 00     MX
    LDX #$09A4                      ; $D00A2A  A2 A4 09     MX
    LDA $0040,Y                     ; $D00A2D  B9 40 00     MX
    BIT #$0001                      ; $D00A30  89 01 00     MX
    BEQ L_D00A38                    ; $D00A33  F0 03        MX
    LDX #$09CC                      ; $D00A35  A2 CC 09     MX
L_D00A38:
    LDA $0018,X                     ; $D00A38  BD 18 00     MX
    JSR L_D00A3F                    ; $D00A3B  20 3F 0A     MX
L_D00A3E:
    RTS                             ; $D00A3E  60           MX
L_D00A3F:
    PHA                             ; $D00A3F  48           MX
    TAX                             ; $D00A40  AA           MX
    LDA $0841                       ; $D00A41  AD 41 08     MX
    BMI L_D00A49                    ; $D00A44  30 03        MX
    LDX #$0009                      ; $D00A46  A2 09 00     MX
L_D00A49:
    LDA $0851                       ; $D00A49  AD 51 08     MX
    BMI L_D00A51                    ; $D00A4C  30 03        MX
    LDX #$0008                      ; $D00A4E  A2 08 00     MX
L_D00A51:
    TXA                             ; $D00A51  8A           MX
    PLX                             ; $D00A52  FA           MX
    DEC                             ; $D00A53  3A           MX
    LDY $46                         ; $D00A54  A4 46        MX
    CMP #$0003                      ; $D00A56  C9 03 00     MX
    BCC L_D00A5C                    ; $D00A59  90 01        MX
    DEC                             ; $D00A5B  3A           MX
L_D00A5C:
    ASL                             ; $D00A5C  0A           MX
    ASL                             ; $D00A5D  0A           MX
    CLC                             ; $D00A5E  18           MX
    ADC #$003E                      ; $D00A5F  69 3E 00     MX
    ORA #$2400                      ; $D00A62  09 00 24     MX
    CLC                             ; $D00A65  18           MX
    ADC $56                         ; $D00A66  65 56        MX
    STA $11FE,Y                     ; $D00A68  99 FE 11     MX
    INC                             ; $D00A6B  1A           MX
    STA $1200,Y                     ; $D00A6C  99 00 12     MX
    INC                             ; $D00A6F  1A           MX
    STA $123E,Y                     ; $D00A70  99 3E 12     MX
    INC                             ; $D00A73  1A           MX
    STA $1240,Y                     ; $D00A74  99 40 12     MX
    LDA #$4000                      ; $D00A77  A9 00 40     MX
    TSB $68                         ; $D00A7A  04 68        MX
    RTS                             ; $D00A7C  60           MX
    db $01,$00,$00,$00,$00,$00,$7F,$60,$60,$60,$00,$64,$00,$7F,$01,$60 ; $D00A7D
    db $01,$01,$00,$00                                                 ; $D00A8D

; ---- RNC method 2 block: 388 bytes packed, 1298 unpacked (tools/rnc.py) ($D00A91-$D00C26) ----
    db $52,$4E,$43,$02,$00,$00,$05,$12,$00,$00,$01,$84,$A9,$FA,$1D,$29 ; $D00A91
    db $02,$01,$17,$00,$5D,$00,$D8,$7B,$92,$63,$CE,$5A,$4A,$52,$C8,$49 ; $D00AA1
    db $88,$39,$02,$31,$DE,$53,$1C,$43,$9A,$2A,$18,$22,$96,$09,$90,$19 ; $D00AB1
    db $46,$31,$CC,$10,$28,$20,$7C,$00,$01,$00,$02,$00,$03,$00,$04,$00 ; $D00AC1
    db $05,$00,$06,$00,$07,$00,$08,$00,$09,$00,$0A,$00,$0B,$00,$0C,$00 ; $D00AD1
    db $0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$00 ; $D00AE1
    db $15,$00,$16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$1B,$00,$1C,$00 ; $D00AF1
    db $1D,$00,$1E,$E3,$2D,$1F,$80,$01,$20,$00,$21,$00,$22,$0E,$00,$23 ; $D00B01
    db $00,$24,$0E,$01,$60,$00,$90,$28,$01,$F0,$05,$90,$E7,$5D,$94,$08 ; $D00B11
    db $00,$E0,$17,$B3,$05,$C2,$0A,$00,$70,$00,$80,$61,$01,$40,$00,$30 ; $D00B21
    db $E4,$0F,$3F,$88,$CF,$01,$F0,$0B,$38,$1F,$F8,$37,$40,$E4,$45,$1E ; $D00B31
    db $05,$78,$17,$1F,$7A,$40,$11,$7F,$47,$BD,$70,$87,$0B,$1F,$CC,$00 ; $D00B41
    db $48,$14,$01,$78,$05,$79,$48,$0B,$1F,$80,$EF,$05,$01,$0A,$3B,$00 ; $D00B51
    db $38,$42,$51,$01,$0F,$5F,$60,$0B,$28,$1F,$C4,$57,$70,$A3,$05,$44 ; $D00B61
    db $C9,$0D,$FF,$40,$9E,$01,$48,$0D,$DF,$07,$C6,$00,$6C,$00,$54,$24 ; $D00B71
    db $39,$01,$F0,$0C,$BF,$68,$00,$58,$9B,$BD,$C9,$0C,$BF,$60,$BC,$FB ; $D00B81
    db $10,$9F,$F0,$99,$39,$70,$FA,$0F,$3F,$C8,$3F,$87,$01,$68,$E7,$17 ; $D00B91
    db $FF,$88,$9C,$0F,$3F,$80,$05,$79,$10,$0F,$7F,$F8,$D1,$6D,$EF,$02 ; $D00BA1
    db $01,$10,$D2,$9F,$3F,$01,$30,$0D,$4B,$1F,$38,$19,$28,$01,$10,$F3 ; $D00BB1
    db $11,$1F,$54,$B7,$45,$E5,$0E,$3F,$C6,$1C,$3B,$10,$03,$CF,$07,$82 ; $D00BC1
    db $13,$49,$1F,$01,$E7,$0C,$BF,$88,$1D,$17,$20,$9C,$3B,$88,$0B,$F8 ; $D00BD1
    db $0C,$7F,$CE,$F7,$A0,$38,$43,$A8,$07,$6C,$FD,$0D,$1F,$F1,$02,$5D ; $D00BE1
    db $F9,$0C,$1F,$C0,$F9,$03,$1D,$C0,$EB,$0B,$1F,$3C,$85,$1A,$00,$C0 ; $D00BF1
    db $F2,$0D,$3F,$60,$73,$19,$FA,$10,$9F,$0F,$1F,$10,$13,$CF,$BF,$C0 ; $D00C01
    db $0F,$8F,$37,$20,$00,$29,$3C,$00,$42,$00,$BD,$00,$A1,$E3,$03,$42 ; $D00C11
    db $9E,$0B,$2A,$00,$F0,$00                                         ; $D00C21
; ---- end of region ----

    db $61,$62,$63,$64,$65,$66,$67,$68,$69,$6A,$6B,$6C,$6D,$6E,$6F,$70 ; $D00C27
    db $71,$72,$73,$74,$75,$76,$77,$78,$79,$7A,$26,$28,$29,$2D,$2E,$31 ; $D00C37
    db $39,$39,$33,$27,$2C,$43,$20,$05,$05,$05,$06,$06,$06,$05,$07,$02 ; $D00C47
    db $06,$07,$06,$08,$07,$05,$06,$06,$06,$05,$06,$07,$08,$08,$08,$08 ; $D00C57
    db $06,$07,$04,$04,$06,$03,$02,$05,$05,$05,$03,$03,$08,$04         ; $D00C67

; ---- RNC method 2 block: 7326 bytes packed, 27236 unpacked (tools/rnc.py) ($D00C75-$D02924) ----
    db $52,$4E,$43,$02,$00,$00,$6A,$64,$00,$00,$1C,$9E,$B5,$33,$A9,$79 ; $D00C75
    db $02,$03,$03,$07,$31,$35,$36,$17,$03,$28,$39,$3C,$49,$3D,$8A,$41 ; $D00C85
    db $AB,$49,$CC,$4D,$0D,$56,$2E,$5A,$6F,$62,$90,$66,$D1,$6E,$F2,$72 ; $D00C95
    db $13,$7B,$55,$7F,$1B,$47,$B8,$61,$38,$85,$44,$A5,$49,$86,$42,$C8 ; $D00CA5
    db $22,$0D,$1B,$76,$12,$0F,$DC,$0E,$70,$1C,$0A,$5B,$09,$B9,$08,$78 ; $D00CB5
    db $14,$75,$34,$50,$44,$C3,$1F,$07,$35,$28,$8D,$01,$48,$41,$C6,$43 ; $D00CC5
    db $69,$01,$63,$41,$47,$8A,$45,$6C,$01,$4B,$01,$CB,$60,$4D,$4F,$1C ; $D00CD5
    db $00,$20,$00,$C5,$00,$01,$00,$EB,$02,$00,$03,$00,$04,$00,$05,$00 ; $D00CE5
    db $06,$00,$07,$00,$08,$00,$09,$00,$0A,$00,$0B,$00,$0C,$00,$0D,$00 ; $D00CF5
    db $0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$00,$15,$00 ; $D00D05
    db $16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$1B,$00,$03,$3B,$1D,$00 ; $D00D15
    db $1E,$00,$1F,$CE,$0D,$3D,$20,$3C,$3D,$21,$1D,$3D,$22,$38,$00,$23 ; $D00D25
    db $3D,$24,$E0,$3D,$25,$00,$26,$F2,$23,$01,$27,$61,$3D,$28,$00,$29 ; $D00D35
    db $C7,$3D,$2A,$07,$7B,$2B,$00,$2C,$87,$1D,$01,$2D,$00,$2E,$13,$05 ; $D00D45
    db $2F,$26,$3D,$30,$3D,$78,$07,$1D,$3F,$31,$00,$05,$32,$00,$33,$00 ; $D00D55
    db $34,$24,$3F,$3D,$4C,$35,$3D,$08,$F0,$1B,$3F,$36,$00,$37,$0A,$00 ; $D00D65
    db $38,$00,$39,$26,$0B,$2F,$3D,$4C,$3A,$3D,$3B,$F0,$19,$3F,$3C,$00 ; $D00D75
    db $3D,$3D,$00,$3E,$01,$0D,$94,$3F,$3F,$3D,$14,$40,$00,$41,$3D,$78 ; $D00D85
    db $42,$09,$3F,$43,$00,$01,$44,$00,$45,$00,$46,$00,$47,$30,$0F,$48 ; $D00D95
    db $00,$49,$3D,$00,$4A,$03,$3F,$22,$3D,$4B,$67,$3D,$4C,$80,$09,$3F ; $D00DA5
    db $4D,$00,$4E,$00,$4F,$00,$14,$50,$00,$51,$0D,$07,$52,$00,$53,$00 ; $D00DB5
    db $54,$93,$03,$1D,$2F,$26,$3D,$55,$3D,$78,$56,$07,$3F,$57,$00,$1C ; $D00DC5
    db $58,$00,$59,$07,$14,$5A,$00,$5B,$0F,$1E,$5C,$00,$5D,$05,$1F,$50 ; $D00DD5
    db $2F,$3D,$5E,$00,$4C,$5F,$3D,$60,$F0,$07,$3F,$61,$00,$62,$38,$00 ; $D00DE5
    db $63,$07,$64,$38,$00,$65,$05,$66,$0F,$00,$67,$00,$68,$07,$40,$3F ; $D00DF5
    db $3D,$69,$00,$4C,$6A,$3D,$6B,$F0,$07,$3F,$6C,$00,$6D,$A0,$07,$6E ; $D00E05
    db $00,$6F,$00,$00,$70,$00,$71,$00,$72,$00,$73,$F4,$07,$3F,$8A,$3D ; $D00E15
    db $74,$09,$3D,$75,$00,$76,$80,$3F,$77,$00,$78,$00,$79,$00,$04,$7A ; $D00E25
    db $00,$7B,$00,$7C,$C0,$29,$7D,$00,$7E,$00,$7F,$3F,$00,$80,$07,$26 ; $D00E35
    db $1D,$2F,$3D,$50,$81,$3D,$82,$00,$51,$83,$3F,$84,$70,$00,$85,$00 ; $D00E45
    db $86,$00,$87,$00,$88,$00,$89,$00,$8A,$98,$29,$8B,$00,$07,$8C,$00 ; $D00E55
    db $8D,$00,$8E,$A4,$09,$3F,$3D,$4C,$8F,$3D,$90,$A0,$3F,$91,$00,$92 ; $D00E65
    db $E0,$05,$93,$00,$94,$3E,$00,$95,$17,$1C,$0D,$2F,$3D,$71,$96,$3D ; $D00E75
    db $97,$33,$3D,$98,$80,$3F,$99,$00,$9A,$00,$9B,$F9,$1F,$05,$4C,$2F ; $D00E85
    db $3D,$9C,$99,$3D,$9D,$C0,$3F,$9E,$00,$9F,$00,$7A,$A0,$21,$3F,$00 ; $D00E95
    db $3D,$A1,$00,$A2,$00,$A3,$38,$00,$A4,$3D,$A5,$E0,$3F,$A6,$00,$A7 ; $D00EA5
    db $BB,$F1,$00,$A8,$00,$A9,$00,$AA,$00,$AB,$00,$AC,$00,$AD,$00,$AE ; $D00EB5
    db $00,$AF,$00,$B0,$00,$B1,$00,$B2,$00,$B3,$00,$B4,$00,$B5,$00,$B6 ; $D00EC5
    db $00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$BB,$3F,$BC,$C1,$3D,$BD,$00 ; $D00ED5
    db $BE,$C7,$3D,$BF,$1C,$3D,$C0,$3F,$5E,$C1,$26,$00,$C2,$00,$C3,$00 ; $D00EE5
    db $C4,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00,$C9,$00,$CA,$00,$CB,$00 ; $D00EF5
    db $CC,$00,$CD,$00,$CE,$00,$CF,$00,$D0,$00,$D1,$00,$D2,$00,$D3,$00 ; $D00F05
    db $D4,$00,$D5,$00,$D6,$00,$D7,$3D,$4C,$D8,$3D,$D9,$E2,$3F,$DA,$F1 ; $D00F15
    db $00,$DB,$00,$DC,$00,$DD,$00,$DE,$00,$DF,$00,$E0,$00,$E1,$00,$E2 ; $D00F25
    db $00,$E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7,$00,$E8,$00,$E9,$00,$EA ; $D00F35
    db $00,$EB,$00,$EC,$00,$ED,$00,$EE,$00,$EF,$00,$F0,$41,$3D,$F1,$00 ; $D00F45
    db $F2,$33,$3D,$F3,$82,$3F,$F4,$00,$F5,$E5,$00,$F6,$00,$F7,$00,$F8 ; $D00F55
    db $00,$F9,$00,$FA,$00,$FB,$00,$FC,$00,$FD,$00,$FE,$00,$FF,$D7,$20 ; $D00F65
    db $CB,$00,$02,$8C,$01,$03,$01,$04,$01,$05,$01,$06,$01,$07,$01,$08 ; $D00F75
    db $01,$09,$01,$2F,$C4,$3D,$0A,$01,$86,$3D,$0B,$01,$3F,$2E,$0C,$01 ; $D00F85
    db $F1,$0D,$01,$0E,$01,$0F,$01,$10,$01,$11,$01,$12,$01,$13,$01,$14 ; $D00F95
    db $01,$15,$01,$16,$01,$17,$01,$18,$01,$19,$01,$1A,$01,$B6,$40,$1B ; $D00FA5
    db $01,$1C,$01,$1D,$01,$1E,$01,$1F,$01,$83,$3F,$20,$01,$21,$01,$18 ; $D00FB5
    db $3D,$22,$01,$3D,$23,$01,$1C,$24,$01,$25,$3F,$00,$26,$01,$27,$01 ; $D00FC5
    db $28,$01,$29,$01,$6C,$2A,$0B,$21,$01,$18,$2D,$01,$2E,$65,$01,$30 ; $D00FD5
    db $B9,$53,$01,$31,$01,$32,$01,$33,$01,$34,$01,$35,$01,$36,$01,$37 ; $D00FE5
    db $01,$38,$01,$39,$01,$3A,$3F,$38,$3D,$3B,$3D,$3C,$48,$01,$3D,$3D ; $D00FF5
    db $E2,$3F,$3E,$EF,$01,$3F,$01,$40,$01,$41,$01,$42,$01,$43,$01,$44 ; $D01005
    db $01,$45,$01,$46,$01,$47,$01,$48,$01,$49,$01,$4A,$01,$4B,$01,$4C ; $D01015
    db $01,$4D,$01,$4E,$01,$4F,$01,$50,$01,$51,$01,$52,$4C,$3F,$3D,$53 ; $D01025
    db $E2,$3D,$54,$83,$3D,$55,$01,$56,$97,$3F,$79,$57,$01,$58,$01,$59 ; $D01035
    db $01,$5A,$01,$5B,$01,$5C,$01,$5D,$01,$5E,$01,$5F,$01,$60,$01,$61 ; $D01045
    db $01,$62,$01,$63,$01,$64,$01,$65,$01,$66,$01,$67,$01,$68,$01,$69 ; $D01055
    db $01,$6A,$01,$6C,$FF,$3D,$6B,$E2,$3D,$6C,$80,$3D,$6D,$01,$6E,$01 ; $D01065
    db $6F,$3C,$01,$70,$23,$01,$71,$99,$3D,$72,$31,$3D,$73,$01,$77,$74 ; $D01075
    db $01,$75,$01,$76,$01,$77,$01,$78,$01,$79,$01,$7A,$01,$7B,$01,$7C ; $D01085
    db $01,$7D,$01,$7E,$01,$7F,$01,$80,$01,$96,$00,$81,$01,$82,$01,$A1 ; $D01095
    db $00,$83,$01,$84,$01,$85,$01,$83,$F7,$53,$CF,$01,$3D,$86,$19,$19 ; $D010A5
    db $3D,$87,$01,$3D,$88,$E7,$05,$3D,$89,$13,$3D,$8A,$03,$3D,$8B,$01 ; $D010B5
    db $FF,$FF,$DD,$01,$02,$FF,$75,$FF,$FE,$FF,$D5,$C7,$03,$55,$3C,$0B ; $D010C5
    db $06,$00,$00,$F7,$08,$01,$9C,$07,$00,$EE,$33,$71,$FA,$03,$E8,$C7 ; $D010D5
    db $03,$AA,$9C,$2B,$3F,$A8,$33,$70,$A0,$03,$88,$FF,$71,$54,$1D,$54 ; $D010E5
    db $E1,$29,$3F,$80,$FF,$44,$C7,$15,$50,$14,$03,$40,$1F,$F6,$28,$3F ; $D010F5
    db $11,$31,$02,$FD,$03,$0A,$F5,$8C,$03,$22,$DD,$03,$AA,$78,$55,$28 ; $D01105
    db $3F,$01,$FE,$0C,$2A,$D5,$05,$FA,$37,$11,$63,$EE,$03,$55,$AA,$C6 ; $D01115
    db $2A,$3F,$17,$E8,$33,$31,$5F,$A0,$03,$77,$88,$C7,$3B,$00,$87,$2A ; $D01125
    db $3F,$7F,$80,$AB,$67,$38,$AF,$63,$00,$BB,$44,$F7,$0C,$00,$B3,$18 ; $D01135
    db $3F,$10,$BD,$B7,$38,$3A,$FE,$AE,$39,$FF,$EF,$CF,$9D,$28,$3F,$FE ; $D01145
    db $57,$8F,$FE,$1C,$37,$EE,$03,$79,$FA,$2B,$3F,$E8,$C7,$33,$AA,$1C ; $D01155
    db $03,$A8,$03,$79,$A0,$2B,$3F,$88,$DF,$97,$71,$00,$03,$80,$DF,$EF ; $D01165
    db $77,$00,$FF,$AF,$29,$09,$FF,$00,$42,$02,$1C,$07,$02,$07,$32,$0A ; $D01175
    db $0A,$31,$FD,$68,$39,$3F,$07,$F5,$1A,$0C,$FF,$01,$22,$22,$05,$AA ; $D01185
    db $60,$AA,$07,$2A,$2A,$05,$05,$CA,$07,$FE,$95,$4F,$55,$4C,$4F,$4F ; $D01195
    db $17,$8C,$18,$3F,$11,$11,$33,$45,$61,$45,$03,$17,$17,$AA,$51,$40 ; $D011A5
    db $12,$4F,$BA,$F9,$03,$4F,$F0,$18,$3F,$77,$77,$AB,$18,$AB,$5F,$5F ; $D011B5
    db $37,$7F,$7F,$D8,$07,$77,$AF,$AF,$89,$47,$89,$4F,$54,$80,$BF,$4F ; $D011C5
    db $50,$1A,$0C,$FF,$FF,$BB,$BB,$03,$EF,$62,$EF,$03,$BD,$BF,$5A,$2F ; $D011D5
    db $21,$46,$10,$F3,$01,$4F,$E5,$1A,$3F,$DD,$68,$27,$3D,$EF,$FF,$0C ; $D011E5
    db $AF,$F1,$18,$3F,$3A,$BD,$3F,$EA,$10,$EF,$F5,$21,$3F,$87,$3B,$BF ; $D011F5
    db $2A,$3F,$02,$3D,$27,$40,$1A,$3B,$F5,$1B,$3F,$F7,$28,$3F,$D7,$08 ; $D01205
    db $3F,$D1,$28,$3F,$52,$3F,$5D,$A2,$55,$3F,$8A,$FB,$47,$28,$3F,$EB ; $D01215
    db $08,$3F,$E9,$28,$3F,$55,$3F,$FF,$3A,$BD,$3F,$F5,$29,$3F,$15,$3F ; $D01225
    db $8A,$A7,$77,$FE,$5F,$3F,$28,$3E,$3F,$EA,$03,$AF,$3F,$A8,$2B,$2A ; $D01235
    db $3F,$88,$AE,$3B,$55,$2A,$03,$54,$BF,$3F,$29,$BA,$FF,$DF,$C9,$02 ; $D01245
    db $AF,$3F,$3D,$03,$01,$29,$11,$17,$0F,$03,$18,$45,$3F,$48,$3F,$0A ; $D01255
    db $0A,$AC,$3F,$56,$47,$50,$47,$0A,$44,$F5,$7C,$17,$0D,$7D,$4F,$0B ; $D01265
    db $62,$3F,$A4,$77,$15,$15,$AB,$3F,$11,$47,$10,$4F,$15,$7C,$EA,$0F ; $D01275
    db $7D,$4F,$0F,$DF,$3F,$00,$2F,$7F,$3F,$02,$AC,$FF,$9F,$87,$02,$57 ; $D01285
    db $FF,$55,$D4,$1D,$FF,$57,$57,$D1,$33,$58,$BF,$AE,$C7,$37,$C5,$07 ; $D01295
    db $57,$A8,$BF,$0F,$11,$97,$EB,$1A,$BF,$4B,$FF,$80,$E8,$2F,$3F,$F9 ; $D012A5
    db $02,$BF,$96,$6F,$FA,$29,$1F,$7F,$80,$08,$7D,$0F,$11,$EF,$04,$00 ; $D012B5
    db $0A,$DE,$EF,$16,$00,$3D,$FF,$FF,$28,$31,$F7,$08,$4F,$3D,$01,$00 ; $D012C5
    db $04,$01,$EB,$18,$00,$76,$37,$5D,$07,$DF,$00,$19,$5F,$0F,$09,$7D ; $D012D5
    db $B0,$36,$24,$7F,$01,$FE,$A3,$AF,$E9,$30,$3F,$FD,$0A,$8F,$FB,$36 ; $D012E5
    db $7F,$C0,$30,$00,$01,$00,$0F,$00,$3F,$1F,$00,$5F,$A0,$0A,$7F,$1F ; $D012F5
    db $1A,$3B,$BE,$0C,$D4,$6D,$FC,$DE,$01,$2C,$3F,$F7,$06,$87,$E9,$26 ; $D01305
    db $FF,$7C,$F7,$F5,$FF,$4E,$FF,$73,$B7,$61,$BF,$FF,$05,$08,$EC,$23 ; $D01315
    db $80,$6C,$07,$ED,$04,$E0,$27,$BF,$01,$02,$02,$05,$0F,$01,$1E,$00 ; $D01325
    db $7F,$12,$EF,$5F,$80,$16,$3F,$3F,$C0,$A7,$58,$6F,$90,$30,$9B,$64 ; $D01335
    db $B5,$5F,$A0,$08,$1E,$F0,$30,$C0,$28,$3F,$96,$75,$1F,$F0,$00,$C0 ; $D01345
    db $10,$BD,$1F,$17,$3F,$6A,$56,$E7,$EE,$E3,$FF,$DF,$08,$2F,$1F,$80 ; $D01355
    db $3F,$01,$01,$03,$03,$07,$07,$7E,$0F,$29,$3F,$02,$06,$1F,$19,$3F ; $D01365
    db $70,$7F,$39,$BB,$07,$F8,$FF,$F6,$FF,$FF,$EA,$29,$3F,$23,$14,$FE ; $D01375
    db $1D,$02,$80,$E0,$9E,$04,$80,$29,$3F,$7C,$C0,$17,$7A,$5F,$17,$3F ; $D01385
    db $2C,$E7,$4E,$A2,$97,$BF,$20,$E8,$2B,$3F,$A1,$3F,$FA,$3E,$1F,$7F ; $D01395
    db $BA,$2B,$C7,$3F,$EF,$06,$83,$0A,$8F,$D2,$18,$0E,$3E,$1F,$1F,$3F ; $D013A5
    db $01,$00,$7F,$7F,$BF,$BF,$77,$77,$8F,$03,$57,$57,$02,$A1,$15,$88 ; $D013B5
    db $C7,$03,$A8,$C0,$1A,$7F,$FF,$FE,$FE,$07,$FC,$FC,$F8,$F8,$F0,$07 ; $D013C5
    db $00,$E0,$E0,$C0,$C5,$29,$BF,$B8,$A7,$F9,$02,$BF,$FD,$26,$3F,$F6 ; $D013D5
    db $02,$4F,$FF,$CF,$3E,$27,$7F,$3F,$02,$4F,$2F,$BF,$40,$2C,$F2,$7F ; $D013E5
    db $DC,$BF,$FF,$88,$2F,$9F,$FF,$08,$DE,$AF,$18,$10,$F0,$0C,$00,$02 ; $D013F5
    db $00,$05,$0E,$00,$2A,$00,$74,$94,$04,$EB,$8A,$10,$03,$BB,$CC,$7F ; $D01405
    db $F7,$0D,$0F,$9E,$1A,$00,$7E,$04,$30,$F7,$24,$3F,$C0,$01,$7F,$E0 ; $D01415
    db $00,$F8,$E0,$8C,$FE,$01,$FE,$F7,$28,$7F,$F5,$08,$EF,$80,$F7,$1A ; $D01425
    db $7F,$4A,$01,$CF,$B9,$02,$C3,$0B,$07,$00,$0D,$8E,$FE,$1F,$39,$01 ; $D01435
    db $3F,$01,$E8,$18,$3F,$8B,$F3,$84,$AD,$AD,$4E,$4E,$16,$16,$5C,$5C ; $D01445
    db $04,$04,$50,$50,$40,$F3,$52,$00,$B0,$EC,$D7,$A0,$E7,$C4,$C7,$1A ; $D01455
    db $FF,$FF,$18,$A3,$EA,$1A,$BF,$42,$EA,$49,$BF,$08,$F7,$5A,$37,$8A ; $D01465
    db $7C,$75,$29,$5A,$FF,$DA,$F7,$B1,$FF,$10,$F1,$29,$7F,$71,$03,$00 ; $D01475
    db $02,$05,$07,$08,$03,$0C,$0D,$12,$17,$28,$1D,$22,$15,$2A,$E4,$10 ; $D01485
    db $7D,$05,$0F,$3C,$3E,$3F,$FE,$19,$F7,$3F,$2E,$33,$FE,$AA,$C1,$FE ; $D01495
    db $AE,$84,$FC,$F7,$06,$AF,$3F,$12,$20,$3F,$FF,$80,$06,$0F,$30,$E7 ; $D014A5
    db $00,$81,$20,$A0,$3F,$03,$03,$77,$01,$F1,$84,$05,$06,$06,$8C,$03 ; $D014B5
    db $09,$09,$22,$03,$06,$FC,$01,$FE,$02,$FD,$05,$03,$06,$F9,$03,$7C ; $D014C5
    db $09,$76,$D7,$18,$3F,$0C,$C0,$C0,$40,$40,$60,$60,$A0,$A0,$70,$70 ; $D014D5
    db $F0,$F0,$03,$F8,$5C,$F8,$31,$C0,$00,$40,$80,$60,$80,$A0,$40,$70 ; $D014E5
    db $80,$F0,$00,$03,$F8,$00,$F3,$2B,$3F,$F4,$01,$39,$C7,$03,$01,$E7 ; $D014F5
    db $28,$3F,$7F,$D1,$03,$4A,$FC,$1C,$86,$BE,$28,$28,$10,$10,$C1,$2C ; $D01505
    db $20,$20,$0F,$74,$D0,$BB,$7C,$A0,$B1,$D4,$F7,$0A,$80,$D1,$1C,$BF ; $D01515
    db $3E,$62,$A7,$C0,$BF,$45,$BA,$AA,$55,$FF,$2A,$9F,$FF,$42,$02,$04 ; $D01525
    db $E4,$07,$AE,$CF,$FF,$9D,$DF,$CF,$F5,$20,$5B,$FF,$67,$2E,$07,$BD ; $D01535
    db $08,$0F,$18,$3E,$71,$0F,$70,$0B,$F4,$13,$EC,$07,$F8,$35,$CA,$27 ; $D01545
    db $D8,$0F,$F0,$12,$ED,$FD,$08,$3E,$E7,$18,$3F,$F8,$52,$3B,$F0,$EC ; $D01555
    db $33,$E0,$9E,$33,$F7,$08,$10,$D0,$19,$BF,$06,$0D,$07,$07,$01,$01 ; $D01565
    db $03,$88,$00,$0B,$0B,$01,$03,$06,$39,$07,$38,$01,$3E,$82,$03,$07 ; $D01575
    db $18,$0B,$14,$1E,$03,$19,$7F,$F3,$08,$00,$00,$DF,$06,$01,$20,$0A ; $D01585
    db $3F,$08,$3B,$03,$04,$5A,$40,$65,$BE,$7F,$01,$28,$89,$7F,$4D,$B6 ; $D01595
    db $A5,$CD,$FC,$F0,$1D,$3F,$04,$7C,$FB,$32,$5B,$3F,$D2,$E7,$77,$88 ; $D015A5
    db $5E,$F8,$37,$28,$3F,$01,$01,$23,$2A,$2A,$D2,$BF,$11,$11,$DE,$AA ; $D015B5
    db $BF,$D5,$87,$47,$EE,$FB,$1F,$BF,$FA,$01,$30,$DB,$32,$DE,$07,$0F ; $D015C5
    db $18,$3E,$08,$09,$F6,$05,$FA,$A8,$71,$06,$F9,$02,$56,$FC,$34,$FA ; $D015D5
    db $04,$FD,$FD,$1B,$47,$FF,$80,$00,$80,$BE,$15,$10,$19,$3D,$FF,$01 ; $D015E5
    db $00,$11,$83,$D6,$AC,$81,$00,$01,$53,$07,$01,$E1,$19,$7F,$FC,$E6 ; $D015F5
    db $01,$01,$FE,$01,$1F,$F0,$FE,$FC,$01,$CC,$C9,$A3,$05,$E1,$26,$3F ; $D01605
    db $01,$F4,$29,$0B,$BE,$12,$00,$28,$84,$00,$32,$00,$6C,$00,$79,$00 ; $D01615
    db $D2,$00,$DC,$00,$F4,$BB,$74,$F7,$13,$05,$7F,$00,$15,$55,$41,$80 ; $D01625
    db $3F,$33,$04,$3E,$C0,$18,$3F,$3E,$17,$E8,$36,$25,$7F,$61,$3F,$AE ; $D01635
    db $51,$9D,$03,$BB,$61,$80,$EF,$10,$E1,$28,$3F,$17,$17,$AA,$42,$80 ; $D01645
    db $57,$57,$44,$03,$E8,$F9,$87,$4D,$A8,$03,$F6,$1A,$DB,$C0,$F3,$A9 ; $D01655
    db $DE,$36,$07,$0F,$FD,$19,$3F,$19,$EA,$F8,$F9,$01,$36,$F0,$EF,$08 ; $D01665
    db $0F,$18,$3C,$3F,$03,$03,$00,$01,$E1,$00,$03,$00,$E7,$02,$01,$01 ; $D01675
    db $F1,$1B,$7F,$D1,$73,$DC,$83,$F9,$EC,$FF,$D0,$FF,$F0,$83,$03,$6C ; $D01685
    db $FF,$FE,$FA,$15,$FD,$FF,$FC,$12,$FC,$80,$AC,$EE,$E0,$F7,$08,$0E ; $D01695
    db $D6,$19,$BF,$7D,$76,$B5,$FD,$35,$08,$0F,$E0,$18,$3F,$F5,$00,$FB ; $D016A5
    db $00,$71,$ED,$17,$FD,$D2,$2B,$F7,$F7,$17,$BB,$9F,$0C,$3F,$40,$07 ; $D016B5
    db $E5,$80,$BE,$B9,$80,$FE,$20,$49,$3F,$00,$BD,$70,$B7,$00,$EB,$39 ; $D016C5
    db $3E,$8D,$F0,$34,$7F,$5F,$7C,$5F,$06,$3E,$7F,$A0,$1B,$02,$7F,$77 ; $D016D5
    db $77,$AB,$AB,$00,$37,$7F,$7F,$BB,$BB,$FF,$0E,$FF,$AF,$AF,$88,$E6 ; $D016E5
    db $8F,$0A,$37,$80,$E5,$8F,$50,$F3,$23,$C0,$1C,$3E,$B4,$3B,$05,$03 ; $D016F5
    db $59,$0F,$0F,$3F,$3F,$EC,$22,$3F,$76,$80,$4B,$FF,$04,$3E,$57,$0E ; $D01705
    db $DF,$00,$16,$1F,$00,$14,$14,$02,$68,$D7,$F0,$F0,$F8,$1F,$F8,$EA ; $D01715
    db $FE,$1F,$45,$BE,$22,$00,$7E,$03,$03,$8A,$BF,$8F,$4A,$18,$00,$3F ; $D01725
    db $48,$7F,$A0,$FF,$C8,$FF,$88,$E8,$FD,$75,$AA,$27,$2D,$F4,$FF,$D1 ; $D01735
    db $28,$BF,$55,$E8,$95,$65,$EA,$1E,$3A,$07,$0F,$FE,$19,$86,$7F,$FF ; $D01745
    db $60,$FF,$18,$73,$22,$3F,$18,$A9,$37,$0F,$53,$6F,$C4,$0E,$00,$DF ; $D01755
    db $0E,$1A,$BA,$BE,$A4,$31,$02,$FD,$5B,$71,$A3,$1C,$97,$EF,$F0,$D1 ; $D01765
    db $0B,$33,$E7,$14,$3F,$3F,$7A,$77,$7F,$B8,$7C,$80,$5F,$A0,$F7,$08 ; $D01775
    db $AF,$50,$57,$A8,$BB,$44,$3F,$27,$DA,$3F,$85,$A9,$F8,$5D,$F3,$C0 ; $D01785
    db $EF,$09,$0F,$1A,$9E,$3F,$B3,$FE,$BD,$B7,$71,$FE,$03,$FA,$1E,$FC ; $D01795
    db $BF,$27,$C4,$3F,$1F,$FF,$DF,$DF,$06,$0F,$FF,$20,$23,$8C,$FF,$33 ; $D017A5
    db $BF,$4A,$BF,$13,$A8,$FD,$B5,$2F,$40,$F7,$2A,$00,$E8,$69,$00,$01 ; $D017B5
    db $02,$03,$04,$01,$06,$02,$0D,$94,$44,$8D,$55,$89,$0F,$0D,$0F,$18 ; $D017C5
    db $2A,$3E,$7C,$88,$A8,$0E,$03,$7F,$80,$BE,$6F,$7A,$C7,$16,$F3,$40 ; $D017D5
    db $FE,$0E,$75,$00,$A9,$7D,$7C,$C0,$04,$F0,$77,$00,$C3,$C3,$FA,$1A ; $D017E5
    db $AE,$BF,$0A,$5D,$0A,$35,$35,$5A,$5A,$2F,$2F,$43,$43,$6F,$6F,$AF ; $D017F5
    db $AF,$5F,$5F,$F5,$FF,$CA,$FF,$A5,$D1,$09,$BC,$FF,$90,$D8,$3D,$A0 ; $D01805
    db $FF,$FE,$1A,$9E,$7F,$C7,$C7,$05,$AE,$1F,$03,$00,$C7,$24,$2E,$3F ; $D01815
    db $FC,$B1,$25,$EA,$59,$7D,$FE,$C7,$00,$FC,$D3,$29,$BF,$F7,$05,$AC ; $D01825
    db $F7,$0B,$0F,$9E,$19,$3F,$03,$15,$0E,$FB,$1B,$7A,$7F,$5F,$7D,$3E ; $D01835
    db $01,$CD,$37,$1E,$23,$3F,$02,$0E,$F0,$19,$3F,$6B,$94,$B6,$0F,$48 ; $D01845
    db $D8,$20,$40,$03,$F5,$7E,$FE,$D2,$3B,$C0,$F3,$21,$3F,$80,$DE,$17 ; $D01855
    db $0F,$18,$3F,$74,$EA,$B8,$73,$AA,$03,$A8,$9B,$03,$E6,$28,$7F,$5E ; $D01865
    db $11,$67,$75,$FF,$6B,$F7,$FE,$FB,$0C,$AF,$F6,$19,$FD,$40,$01,$35 ; $D01875
    db $31,$60,$74,$0F,$0F,$1F,$E3,$00,$3F,$85,$00,$7F,$7F,$4F,$0B,$80 ; $D01885
    db $17,$3E,$5E,$A0,$1E,$E0,$BC,$40,$09,$0C,$F0,$10,$E8,$53,$31,$28 ; $D01895
    db $45,$D1,$00,$CB,$CA,$F0,$9F,$00,$1A,$68,$BF,$07,$07,$03,$FC,$03 ; $D018A5
    db $F4,$30,$1F,$3F,$08,$0F,$04,$1F,$04,$19,$5B,$BF,$47,$F7,$BD,$08 ; $D018B5
    db $30,$1F,$3F,$00,$A5,$E0,$E0,$80,$80,$FF,$05,$47,$10,$E0,$00,$80 ; $D018C5
    db $93,$20,$3F,$FE,$BB,$3F,$EE,$EE,$2F,$3F,$88,$0E,$00,$54,$00,$A0 ; $D018D5
    db $67,$37,$70,$44,$1E,$0D,$50,$29,$3F,$B7,$36,$E7,$A3,$B7,$F7,$29 ; $D018E5
    db $FF,$FF,$0D,$BF,$DE,$02,$0F,$19,$3E,$3A,$FF,$C0,$A3,$AD,$F2,$FF ; $D018F5
    db $ED,$AA,$41,$FD,$FB,$07,$FD,$3A,$1D,$1F,$7F,$01,$C3,$AA,$80,$22 ; $D01905
    db $01,$80,$87,$75,$E0,$14,$00,$C0,$00,$87,$0F,$AD,$1A,$BE,$41,$F5 ; $D01915
    db $02,$02,$0F,$03,$02,$29,$29,$FD,$03,$EB,$18,$FF,$52,$E7,$80,$EE ; $D01925
    db $E7,$B7,$1D,$51,$E3,$29,$3F,$03,$03,$DF,$16,$0F,$1A,$1E,$BF,$17 ; $D01935
    db $0F,$FA,$18,$BD,$7F,$80,$16,$0F,$F8,$26,$3F,$0A,$0A,$FC,$06,$3F ; $D01945
    db $F5,$F1,$1B,$40,$22,$22,$00,$37,$01,$01,$2A,$2A,$C5,$03,$AA,$AA ; $D01955
    db $AD,$87,$89,$17,$FC,$00,$51,$53,$F5,$24,$BF,$7C,$FA,$2B,$44,$BF ; $D01965
    db $3E,$FF,$BA,$34,$2A,$FF,$88,$A7,$F0,$B6,$42,$FD,$FE,$1B,$3E,$BE ; $D01975
    db $13,$D9,$40,$59,$F0,$EC,$28,$00,$31,$0D,$5C,$02,$22,$38,$07,$61 ; $D01985
    db $1E,$C0,$3F,$81,$7E,$00,$FE,$08,$F6,$08,$41,$07,$07,$B9,$81,$7F ; $D01995
    db $7F,$17,$4B,$F7,$18,$3F,$54,$7B,$AA,$AB,$61,$54,$03,$2F,$D0,$17 ; $D019A5
    db $D7,$38,$3E,$0D,$02,$02,$FA,$11,$43,$2F,$5B,$E0,$18,$3F,$80,$00 ; $D019B5
    db $60,$80,$8F,$03,$E8,$F8,$00,$70,$80,$23,$03,$D3,$94,$81,$C0,$5E ; $D019C5
    db $B7,$2F,$BF,$0F,$00,$26,$3D,$CD,$FD,$29,$FF,$F4,$06,$9E,$8B,$D5 ; $D019D5
    db $14,$06,$11,$3C,$2A,$3E,$26,$41,$01,$F0,$35,$7F,$1F,$00,$F6,$7F ; $D019E5
    db $0F,$09,$FC,$1D,$23,$00,$C0,$1F,$00,$B0,$E0,$09,$C7,$9D,$9E,$25 ; $D019F5
    db $00,$07,$35,$BF,$0F,$FF,$00,$AB,$54,$07,$3C,$12,$7F,$26,$41,$C1 ; $D01A05
    db $FA,$18,$3C,$DE,$0B,$00,$3F,$03,$00,$20,$00,$34,$00,$60,$BA,$C7 ; $D01A15
    db $40,$2D,$00,$D0,$AD,$48,$43,$53,$3F,$C9,$1A,$3F,$F0,$98,$07,$20 ; $D01A25
    db $46,$00,$2F,$4D,$20,$12,$DD,$15,$38,$20,$C0,$03,$D0,$F3,$26,$BF ; $D01A35
    db $F3,$F6,$35,$3F,$74,$3C,$D7,$70,$06,$11,$70,$F3,$27,$41,$FC,$CF ; $D01A45
    db $35,$7F,$00,$19,$F7,$9F,$CF,$18,$00,$DF,$35,$0F,$3D,$03,$00,$CE ; $D01A55
    db $16,$B7,$9C,$C3,$17,$00,$E0,$00,$A9,$F7,$0F,$DB,$C9,$20,$FF,$EB ; $D01A65
    db $2A,$E7,$06,$11,$14,$A2,$19,$33,$97,$3F,$20,$D3,$33,$3F,$2E,$9F ; $D01A75
    db $BF,$8A,$8A,$06,$D7,$BF,$75,$F4,$21,$BF,$11,$11,$C6,$33,$05,$05 ; $D01A85
    db $03,$31,$17,$17,$03,$55,$55,$AD,$03,$62,$07,$E8,$76,$FD,$D7,$19 ; $D01A95
    db $3F,$FF,$37,$46,$7F,$11,$70,$22,$B0,$0A,$F5,$CE,$03,$2A,$B0,$88 ; $D01AA5
    db $AA,$55,$F0,$28,$3F,$02,$01,$02,$EE,$BE,$B8,$01,$07,$CF,$09,$22 ; $D01AB5
    db $C0,$B3,$02,$FC,$29,$D6,$02,$50,$FD,$03,$56,$07,$05,$18,$09,$06 ; $D01AC5
    db $FE,$FE,$BA,$7F,$7F,$47,$7F,$7C,$81,$18,$3F,$0F,$EC,$B9,$F0,$18 ; $D01AD5
    db $00,$56,$A8,$98,$77,$88,$77,$FF,$11,$4D,$D0,$B1,$C0,$C0,$F8,$F8 ; $D01AE5
    db $FB,$09,$7C,$D7,$0F,$00,$FA,$E8,$A3,$2E,$06,$00,$12,$05,$00,$0E ; $D01AF5
    db $00,$8D,$00,$8A,$00,$9D,$00,$F9,$F9,$B3,$B7,$38,$00,$87,$00,$C7 ; $D01B05
    db $78,$C7,$18,$3F,$23,$00,$05,$51,$01,$80,$00,$54,$44,$3B,$52,$0B ; $D01B15
    db $FC,$43,$FC,$C0,$F8,$02,$BF,$F1,$18,$3F,$08,$08,$70,$15,$15,$02 ; $D01B25
    db $02,$55,$55,$0B,$0B,$35,$15,$2A,$0A,$CE,$03,$F7,$F4,$4D,$FD,$FF ; $D01B35
    db $00,$2A,$7F,$34,$3F,$0A,$1F,$15,$1F,$DE,$03,$18,$3F,$B8,$F5,$87 ; $D01B45
    db $80,$0F,$03,$DF,$C7,$5F,$4F,$BF,$8F,$7D,$5F,$FF,$DF,$3D,$1F,$2B ; $D01B55
    db $C0,$83,$87,$00,$C7,$80,$CF,$40,$CF,$80,$DF,$00,$DF,$80,$9F,$FC ; $D01B65
    db $19,$71,$FF,$D6,$0E,$FF,$F0,$F1,$40,$B7,$2B,$09,$39,$FF,$C0,$56 ; $D01B75
    db $67,$E3,$F1,$76,$8A,$3D,$85,$7D,$C0,$1B,$46,$50,$F8,$A8,$FC,$F4 ; $D01B85
    db $03,$A0,$FE,$80,$7E,$88,$7E,$23,$03,$80,$CE,$FC,$74,$0F,$29,$FA ; $D01B95
    db $7E,$01,$F4,$19,$17,$7F,$1D,$02,$0D,$3A,$05,$35,$0A,$6A,$15,$45 ; $D01BA5
    db $3A,$EA,$15,$97,$68,$03,$D9,$8E,$0F,$F7,$01,$FB,$7F,$7F,$1A,$71 ; $D01BB5
    db $7F,$A0,$AE,$50,$8C,$03,$87,$40,$F4,$02,$FB,$04,$07,$B0,$C7,$00 ; $D01BC5
    db $83,$D7,$1E,$7C,$3A,$EA,$A3,$87,$B5,$A8,$5D,$A9,$A8,$54,$F5,$81 ; $D01BD5
    db $47,$84,$F0,$00,$F9,$21,$C5,$01,$E5,$1B,$00,$40,$76,$E2,$31,$2C ; $D01BE5
    db $82,$02,$0F,$03,$01,$91,$27,$7F,$02,$7D,$CF,$03,$19,$A2,$D0,$E9 ; $D01BF5
    db $12,$10,$2B,$29,$03,$01,$81,$81,$06,$02,$05,$01,$07,$03,$0D,$01 ; $D01C05
    db $10,$ED,$29,$D0,$01,$F8,$81,$02,$02,$81,$01,$02,$8F,$C0,$01,$02 ; $D01C15
    db $19,$00,$FF,$F9,$77,$77,$FF,$FF,$5E,$5F,$C4,$03,$78,$78,$42,$6F ; $D01C25
    db $F9,$A4,$07,$5F,$A0,$CA,$03,$78,$A7,$97,$C2,$18,$00,$F6,$F3,$85 ; $D01C35
    db $E3,$E3,$EC,$E3,$8D,$E7,$0A,$07,$1D,$07,$18,$0F,$15,$0F,$F3,$00 ; $D01C45
    db $E3,$C7,$01,$E7,$50,$49,$07,$ED,$88,$F4,$1B,$0C,$BE,$FC,$50,$F8 ; $D01C55
    db $AF,$41,$C0,$03,$F0,$03,$F0,$02,$F1,$13,$03,$E0,$FC,$D0,$3A,$7B ; $D01C65
    db $1E,$F1,$00,$E1,$19,$3E,$08,$8B,$74,$D5,$2A,$B3,$7F,$45,$07,$82 ; $D01C75
    db $83,$54,$AA,$7F,$B5,$F4,$B7,$44,$C0,$19,$3E,$00,$9F,$40,$01,$7D ; $D01C85
    db $80,$BF,$00,$3D,$80,$3F,$BA,$03,$07,$30,$75,$00,$CF,$1C,$01,$9F ; $D01C95
    db $01,$FA,$20,$07,$3E,$D9,$00,$56,$5D,$6B,$46,$D8,$BF,$06,$00,$75 ; $D01CA5
    db $8C,$47,$05,$C7,$00,$EF,$33,$77,$43,$87,$A1,$40,$83,$F4,$1B,$83 ; $D01CB5
    db $4F,$03,$00,$84,$04,$00,$BD,$81,$95,$06,$EA,$10,$10,$FF,$72,$FB ; $D01CC5
    db $3F,$DB,$05,$E9,$1A,$BE,$03,$05,$05,$6A,$6A,$17,$17,$00,$03,$1F ; $D01CD5
    db $1F,$6A,$2A,$5F,$1F,$EB,$0E,$2B,$FA,$00,$95,$3A,$8F,$95,$97,$0F ; $D01CE5
    db $15,$77,$97,$FA,$1A,$BF,$80,$4B,$80,$CB,$E9,$78,$EF,$01,$A8,$C5 ; $D01CF5
    db $13,$41,$00,$01,$78,$01,$18,$00,$57,$57,$0C,$AA,$AA,$5F,$5F,$03 ; $D01D05
    db $77,$06,$77,$AB,$AB,$FF,$FF,$03,$77,$A8,$5C,$73,$A0,$03,$55,$88 ; $D01D15
    db $5F,$D3,$54,$19,$D0,$7F,$01,$FE,$2A,$D5,$02,$05,$FA,$AA,$55,$15 ; $D01D25
    db $EA,$BA,$BE,$55,$FE,$2A,$00,$FF,$1F,$00,$30,$0F,$22,$1D,$20,$20 ; $D01D35
    db $1F,$03,$2A,$55,$15,$CF,$D3,$0F,$1F,$01,$7F,$00,$19,$4B,$3F,$01 ; $D01D45
    db $F1,$97,$00,$50,$A0,$A0,$40,$00,$E0,$A1,$50,$5F,$A0,$A9,$56,$03 ; $D01D55
    db $03,$01,$01,$F0,$F0,$E0,$23,$00,$8F,$83,$1A,$BE,$FF,$20,$22,$73 ; $D01D65
    db $88,$1D,$67,$FF,$DC,$09,$03,$EA,$5B,$00,$B0,$7B,$00,$DF,$07,$1A ; $D01D75
    db $CB,$3F,$DA,$B0,$AB,$F8,$00,$B5,$EC,$33,$B5,$AC,$AF,$CF,$A0,$00 ; $D01D85
    db $DF,$DF,$9F,$E3,$00,$3F,$9F,$00,$22,$C4,$79,$74,$87,$29,$29,$92 ; $D01D95
    db $BB,$41,$BF,$F9,$F9,$D6,$E2,$19,$BF,$2B,$0B,$E1,$75,$15,$6F,$2F ; $D01DA5
    db $D5,$15,$BA,$3A,$54,$54,$AC,$AC,$9D,$03,$14,$D0,$33,$10,$3F,$2A ; $D01DB5
    db $3F,$01,$44,$7E,$AA,$FE,$50,$FC,$A8,$F6,$19,$06,$50,$BF,$BF,$BD ; $D01DC5
    db $BF,$A5,$07,$75,$3F,$7E,$3F,$55,$19,$03,$15,$AF,$BF,$C7,$01,$3F ; $D01DD5
    db $BC,$03,$01,$17,$00,$E8,$EA,$0C,$77,$80,$80,$BB,$04,$02,$03,$0C ; $D01DE5
    db $83,$B8,$C7,$54,$59,$E3,$80,$53,$18,$DD,$87,$FE,$1B,$87,$3F,$FC ; $D01DF5
    db $85,$F8,$01,$5C,$70,$01,$F8,$1D,$C1,$B8,$01,$6D,$B5,$76,$3D,$BB ; $D01E05
    db $57,$55,$44,$F9,$19,$40,$B8,$CF,$9E,$60,$EA,$14,$1E,$E0,$68,$94 ; $D01E15
    db $1C,$E0,$6E,$90,$BF,$40,$6B,$94,$B2,$75,$EB,$83,$FF,$ED,$1E,$10 ; $D01E25
    db $1C,$1F,$00,$16,$03,$77,$36,$8F,$7D,$D6,$02,$A1,$56,$0F,$5D,$87 ; $D01E35
    db $7E,$FF,$1C,$B7,$1D,$F2,$00,$A2,$51,$41,$A6,$00,$04,$6E,$1D,$EE ; $D01E45
    db $01,$57,$FA,$F1,$5D,$46,$C3,$DB,$03,$E9,$1A,$01,$45,$02,$18,$05 ; $D01E55
    db $03,$28,$28,$0C,$05,$04,$2A,$2A,$B5,$02,$E1,$B9,$08,$F4,$83,$BF ; $D01E65
    db $28,$D4,$04,$FA,$A9,$93,$FA,$18,$0B,$FF,$07,$09,$86,$01,$1F,$07 ; $D01E75
    db $19,$09,$17,$07,$3B,$0B,$3F,$1F,$6F,$0E,$CC,$7C,$06,$03,$09,$C3 ; $D01E85
    db $03,$08,$0B,$04,$1F,$BE,$0F,$10,$19,$C0,$B3,$F0,$60,$60,$88,$6D ; $D01E95
    db $EA,$D5,$3D,$5D,$41,$F0,$EB,$CF,$E0,$B2,$76,$C0,$9F,$01,$1A,$C8 ; $D01EA5
    db $BE,$30,$0F,$35,$0C,$1F,$20,$1F,$34,$03,$3F,$01,$10,$3F,$40,$3F ; $D01EB5
    db $50,$3F,$0F,$FC,$05,$FC,$BC,$1A,$5C,$FE,$22,$02,$E1,$01,$E2,$02 ; $D01EC5
    db $C1,$05,$C2,$04,$E3,$8D,$72,$C5,$07,$E1,$67,$36,$C3,$1F,$05,$F3 ; $D01ED5
    db $1D,$97,$BE,$BE,$19,$40,$54,$AA,$AC,$50,$54,$A8,$BC,$40,$59,$A0 ; $D01EE5
    db $F9,$00,$51,$A8,$FE,$E7,$FC,$FC,$FD,$1F,$C2,$7E,$D5,$EB,$CE,$31 ; $D01EF5
    db $F4,$38,$03,$D4,$2D,$94,$A2,$B3,$3E,$A1,$44,$7C,$F1,$01,$8A,$F4 ; $D01F05
    db $15,$87,$BF,$00,$1C,$00,$10,$1D,$01,$30,$E0,$C3,$20,$00,$71,$5B ; $D01F15
    db $01,$F2,$37,$CF,$07,$1E,$1B,$84,$7D,$80,$EE,$A9,$43,$31,$40,$02 ; $D01F25
    db $03,$41,$F0,$2F,$38,$BC,$01,$A0,$EF,$7F,$4D,$1A,$5C,$7F,$30,$9F ; $D01F35
    db $1F,$EE,$6E,$BF,$3F,$6F,$6F,$FE,$FE,$6E,$6E,$03,$7C,$7C,$60,$3A ; $D01F45
    db $00,$11,$87,$93,$90,$1F,$19,$90,$1D,$E9,$7E,$80,$80,$F1,$08,$CF ; $D01F55
    db $EF,$06,$01,$20,$E9,$3F,$7F,$7F,$FD,$06,$3F,$7F,$80,$1F,$71,$3F ; $D01F65
    db $33,$BB,$BB,$8C,$03,$AF,$AF,$03,$BD,$4A,$BF,$D7,$AF,$44,$DB,$01 ; $D01F75
    db $4B,$F4,$03,$F8,$CF,$11,$3F,$17,$E8,$0C,$AA,$55,$5F,$A0,$03,$77 ; $D01F85
    db $6D,$88,$03,$1C,$FD,$2A,$7F,$0F,$01,$1E,$0A,$05,$04,$47,$E5,$1F ; $D01F95
    db $73,$24,$C6,$BF,$77,$0F,$AB,$54,$7F,$80,$04,$7F,$CF,$1C,$1F,$75 ; $D01FA5
    db $03,$53,$FE,$00,$B0,$F4,$01,$A5,$60,$6F,$FC,$FC,$F0,$F0,$3C,$80 ; $D01FB5
    db $80,$22,$3F,$60,$EC,$2B,$40,$E8,$BB,$76,$80,$EF,$8B,$23,$7F,$B0 ; $D01FC5
    db $73,$00,$1C,$7F,$7F,$7E,$00,$7F,$FC,$19,$41,$BF,$04,$04,$89,$89 ; $D01FD5
    db $02,$F6,$03,$01,$65,$BB,$BF,$16,$9F,$05,$07,$E0,$22,$7F,$B8,$B8 ; $D01FE5
    db $40,$40,$F0,$04,$AF,$40,$F8,$A0,$3C,$E0,$00,$23,$BF,$3E,$EE,$BD ; $D01FF5
    db $73,$02,$04,$6F,$13,$80,$EA,$23,$7F,$F1,$F7,$FC,$FF,$05,$D0,$7C ; $D02005
    db $FF,$1B,$F9,$B6,$02,$00,$C0,$EF,$17,$0F,$19,$A0,$3F,$6F,$10,$FA ; $D02015
    db $05,$C5,$E5,$8F,$BE,$3F,$22,$3A,$3F,$FB,$5E,$23,$E0,$06,$50,$7D ; $D02025
    db $FC,$1B,$BF,$B6,$02,$7F,$3F,$0A,$EB,$90,$01,$C7,$24,$BF,$11,$11 ; $D02035
    db $77,$73,$CF,$04,$0F,$EE,$1A,$EF,$73,$83,$05,$EE,$3F,$7B,$3B,$00 ; $D02045
    db $F1,$05,$BE,$3B,$04,$E8,$24,$3F,$B3,$B3,$EE,$06,$0D,$80,$FC,$25 ; $D02055
    db $7F,$40,$EE,$9F,$77,$00,$1F,$06,$0F,$3E,$1F,$23,$07,$3F,$03,$F8 ; $D02065
    db $A1,$52,$E7,$04,$F3,$FB,$77,$77,$E0,$24,$02,$B3,$40,$3F,$52,$A0 ; $D02075
    db $05,$FD,$4F,$FF,$F8,$24,$2A,$00,$E8,$FF,$A7,$03,$EF,$4E,$F9,$1E ; $D02085
    db $76,$FE,$03,$0F,$7F,$40,$00,$00,$07,$9F,$3E,$24,$07,$00,$06,$00 ; $D02095
    db $45,$41,$87,$04,$0F,$C1,$00,$82,$83,$25,$3F,$FC,$FC,$7C,$7C,$FB ; $D020A5
    db $08,$CF,$F2,$25,$3F,$FF,$75,$FD,$C1,$2F,$F5,$FF,$FE,$FF,$D5,$C3 ; $D020B5
    db $07,$55,$FF,$E7,$0B,$60,$EE,$15,$BF,$7F,$3A,$80,$AB,$A6,$00,$AF ; $D020C5
    db $50,$03,$29,$BF,$40,$1E,$FC,$29,$7F,$7F,$06,$7D,$F9,$2A,$00,$2F ; $D020D5
    db $1D,$A7,$FF,$46,$89,$03,$48,$F6,$93,$7F,$B7,$1F,$3F,$1C,$D7,$09 ; $D020E5
    db $C0,$67,$73,$81,$1D,$01,$83,$32,$CB,$9B,$CD,$72,$CB,$81,$7F,$81 ; $D020F5
    db $1C,$55,$89,$FF,$7C,$F7,$07,$8A,$69,$0A,$03,$4E,$CB,$79,$9E,$53 ; $D02105
    db $1F,$FE,$D4,$FE,$1C,$47,$7F,$F8,$02,$CB,$0D,$7D,$01,$06,$07,$13 ; $D02115
    db $02,$03,$EC,$24,$09,$6C,$EA,$7B,$FF,$09,$9C,$F8,$21,$FF,$83,$01 ; $D02125
    db $83,$F0,$2D,$7F,$80,$7F,$89,$07,$76,$82,$7D,$61,$DE,$5A,$37,$F6 ; $D02135
    db $FB,$01,$AB,$83,$7F,$79,$96,$1E,$FF,$80,$63,$FF,$0F,$F3,$08,$12 ; $D02145
    db $01,$C7,$26,$FF,$D5,$00,$9E,$36,$FF,$81,$2E,$FF,$18,$00,$85,$05 ; $D02155
    db $03,$15,$15,$09,$02,$02,$14,$14,$0C,$FF,$05,$7A,$03,$15,$07,$EA ; $D02165
    db $02,$FD,$14,$EA,$AE,$1C,$3F,$12,$17,$17,$6A,$6A,$B7,$B7,$0B,$0B ; $D02175
    db $0F,$0F,$0F,$07,$A4,$53,$6A,$95,$07,$B7,$48,$0B,$14,$0F,$FC,$1D ; $D02185
    db $88,$C0,$00,$01,$F0,$E0,$F0,$F8,$FC,$FC,$DC,$8A,$02,$FC,$F7,$FB ; $D02195
    db $79,$E0,$AA,$C3,$FC,$9B,$01,$CF,$26,$00,$F8,$2B,$29,$FF,$03,$01 ; $D021A5
    db $9D,$A9,$05,$43,$46,$BF,$D2,$03,$11,$7E,$01,$1C,$B5,$77,$FE,$AE ; $D021B5
    db $FB,$FC,$BE,$89,$03,$79,$AB,$01,$11,$FC,$3F,$3C,$42,$24,$00,$0F ; $D021C5
    db $3C,$00,$B8,$07,$11,$07,$FC,$25,$C7,$86,$1E,$06,$A9,$A9,$04,$11 ; $D021D5
    db $1E,$79,$00,$56,$25,$7F,$1F,$C0,$80,$40,$06,$D3,$0C,$00,$A0,$ED ; $D021E5
    db $27,$BF,$3E,$AF,$AF,$06,$D7,$BF,$50,$DA,$1F,$BF,$EF,$7D,$EF,$06 ; $D021F5
    db $AF,$BF,$10,$21,$B5,$BF,$FE,$D7,$F3,$71,$FA,$03,$EE,$C7,$03,$AA ; $D02205
    db $DF,$2B,$FF,$ED,$02,$FF,$8E,$FD,$07,$2A,$A1,$FF,$7F,$80,$BB,$44 ; $D02215
    db $FD,$34,$3F,$CE,$10,$BD,$38,$37,$F5,$07,$DD,$E3,$03,$55,$D2,$29 ; $D02225
    db $3F,$87,$A5,$06,$F9,$01,$37,$D5,$09,$A2,$00,$03,$8F,$00,$07,$19 ; $D02235
    db $80,$40,$FD,$00,$DE,$00,$8E,$E1,$77,$07,$D6,$00,$F9,$D1,$2F,$2E ; $D02245
    db $3D,$7F,$02,$00,$FF,$1A,$FF,$77,$04,$8E,$E9,$AA,$38,$09,$A8,$03 ; $D02255
    db $A1,$A1,$79,$83,$83,$61,$3D,$FE,$FF,$FC,$1A,$19,$3F,$48,$48,$05 ; $D02265
    db $29,$70,$28,$01,$00,$6B,$68,$13,$11,$62,$60,$FA,$FE,$B4,$EA,$80 ; $D02275
    db $07,$D4,$FC,$F8,$F8,$90,$F8,$E8,$3E,$F9,$91,$19,$9B,$0C,$96,$3F ; $D02285
    db $07,$69,$09,$FF,$3F,$AB,$2B,$DE,$DE,$AC,$AC,$7C,$7C,$BC,$BC,$00 ; $D02295
    db $07,$16,$1F,$14,$00,$54,$7F,$20,$FE,$50,$FC,$80,$FC,$3E,$40,$FC ; $D022A5
    db $1A,$87,$3F,$EA,$50,$41,$2A,$01,$3F,$14,$1F,$1A,$0F,$15,$0F,$A7 ; $D022B5
    db $03,$A2,$65,$C4,$04,$0F,$F7,$50,$AE,$15,$00,$3D,$42,$C1,$82,$C1 ; $D022C5
    db $06,$C1,$84,$E3,$44,$E3,$8C,$E3,$08,$E7,$88,$E7,$F8,$8C,$28,$01 ; $D022D5
    db $E3,$01,$E7,$E7,$01,$DA,$18,$7F,$FC,$2E,$28,$D4,$1F,$04,$F8,$29 ; $D022E5
    db $D4,$11,$EC,$2B,$D4,$07,$F8,$AB,$50,$01,$58,$3A,$3B,$01,$FD,$78 ; $D022F5
    db $92,$18,$FF,$00,$77,$63,$08,$AE,$DF,$20,$18,$03,$76,$88,$3A,$5E ; $D02305
    db $A0,$E8,$06,$E7,$FF,$F5,$01,$BD,$FE,$FC,$1A,$0E,$3F,$95,$00,$EA ; $D02315
    db $03,$03,$1A,$00,$15,$00,$18,$93,$03,$3C,$FF,$BF,$20,$FF,$83,$3A ; $D02325
    db $00,$42,$97,$F1,$52,$00,$09,$51,$01,$04,$00,$45,$01,$EB,$B8,$CE ; $D02335
    db $E1,$01,$F1,$0A,$00,$F3,$01,$F2,$78,$03,$17,$00,$08,$08,$00,$14 ; $D02345
    db $14,$02,$02,$55,$55,$0B,$0B,$C5,$03,$0A,$0A,$C3,$50,$50,$08,$F6 ; $D02355
    db $14,$EA,$02,$FC,$55,$AA,$0B,$F4,$0F,$03,$0A,$F5,$50,$19,$A8,$80 ; $D02365
    db $0F,$07,$1B,$00,$03,$3F,$0F,$EF,$0F,$BF,$BF,$7D,$EA,$4C,$2F,$7F ; $D02375
    db $7F,$FE,$03,$70,$04,$B6,$10,$BF,$0E,$40,$7F,$80,$FF,$DF,$06,$19 ; $D02385
    db $85,$FF,$FD,$D2,$F9,$C2,$F2,$F1,$42,$E1,$83,$81,$82,$81,$C2,$C1 ; $D02395
    db $42,$C1,$33,$72,$F1,$91,$C0,$4C,$51,$6F,$C8,$1A,$EB,$72,$A8,$AD ; $D023A5
    db $72,$70,$A0,$03,$81,$F8,$03,$01,$F8,$83,$F8,$F8,$00,$DE,$06,$01 ; $D023B5
    db $18,$00,$5C,$05,$6A,$3A,$6A,$15,$55,$2A,$EA,$14,$84,$7A,$E8,$14 ; $D023C5
    db $14,$E8,$68,$90,$3F,$D1,$81,$3E,$00,$7E,$D2,$55,$FC,$F0,$1B,$3F ; $D023D5
    db $BF,$00,$6E,$60,$10,$E5,$0E,$10,$1F,$00,$51,$1E,$37,$9F,$5A,$FE ; $D023E5
    db $DB,$BC,$F8,$1A,$C9,$74,$F4,$BA,$BB,$F5,$EE,$B1,$F0,$64,$03,$ED ; $D023F5
    db $A1,$F3,$FE,$F0,$8A,$01,$E0,$78,$01,$18,$00,$20,$00,$1D,$02,$02 ; $D02405
    db $40,$70,$E7,$80,$00,$83,$02,$75,$80,$99,$43,$7F,$3D,$C7,$85,$3C ; $D02415
    db $1D,$BD,$7C,$9F,$7D,$F5,$1A,$E2,$7F,$02,$2B,$31,$00,$03,$FD,$01 ; $D02425
    db $57,$57,$04,$A9,$A9,$FD,$00,$86,$FC,$95,$75,$02,$7F,$51,$1A,$A0 ; $D02435
    db $BF,$E0,$E0,$70,$70,$F0,$1A,$F0,$50,$50,$03,$04,$07,$E0,$E0,$A9 ; $D02445
    db $7C,$7F,$A0,$21,$03,$47,$FF,$FF,$DD,$F8,$35,$3F,$71,$E8,$33,$A0 ; $D02455
    db $C3,$03,$88,$FF,$BB,$3E,$E8,$2B,$3F,$A5,$F3,$FA,$D7,$F7,$71,$EE ; $D02465
    db $03,$BA,$F7,$2B,$FF,$05,$0F,$00,$19,$04,$1F,$67,$F3,$3D,$07,$03 ; $D02475
    db $75,$00,$07,$3A,$00,$9E,$87,$29,$00,$1F,$00,$E1,$18,$FF,$EC,$00 ; $D02485
    db $D4,$D4,$28,$B9,$50,$03,$A0,$E7,$03,$5F,$7C,$AF,$7B,$05,$00,$F0 ; $D02495
    db $3F,$00,$1A,$3B,$41,$18,$E0,$AD,$11,$01,$30,$00,$25,$33,$05,$20 ; $D024A5
    db $7F,$15,$41,$71,$7B,$0E,$C7,$03,$1A,$1E,$7D,$0A,$19,$7F,$BA,$FF ; $D024B5
    db $07,$01,$66,$62,$07,$03,$6E,$62,$0D,$05,$4A,$42,$87,$87,$46,$42 ; $D024C5
    db $F0,$F1,$91,$F3,$E0,$E3,$81,$E3,$E2,$E7,$85,$C7,$40,$C7,$81,$C3 ; $D024D5
    db $1A,$86,$3F,$EC,$EC,$03,$38,$B8,$B8,$AF,$F8,$45,$FD,$87,$3F,$FC ; $D024E5
    db $10,$12,$03,$40,$9F,$7C,$1B,$B2,$40,$E3,$34,$0F,$2A,$1F,$30,$1F ; $D024F5
    db $6A,$1F,$44,$3F,$EA,$3F,$D0,$7F,$AA,$FF,$53,$34,$2D,$50,$2B,$FD ; $D02505
    db $45,$18,$45,$BF,$E7,$02,$CD,$C3,$10,$CF,$9A,$C5,$11,$CE,$22,$DD ; $D02515
    db $20,$9F,$2A,$15,$AE,$F1,$CF,$99,$01,$DF,$53,$8C,$EB,$17,$00,$8F ; $D02525
    db $13,$E8,$A9,$52,$13,$E0,$A5,$52,$17,$E0,$A7,$40,$43,$A0,$A1,$42 ; $D02535
    db $5F,$90,$29,$01,$F3,$01,$2E,$F8,$43,$18,$FF,$00,$78,$45,$80,$8A ; $D02545
    db $7B,$F8,$13,$07,$EB,$00,$ED,$39,$9F,$FF,$19,$70,$FF,$32,$00,$35 ; $D02555
    db $00,$71,$28,$03,$20,$D0,$7B,$C0,$1E,$00,$94,$00,$05,$FF,$7D,$3F ; $D02565
    db $1A,$DD,$40,$04,$CD,$F3,$C3,$08,$00,$09,$01,$18,$00,$19,$09,$12 ; $D02575
    db $02,$39,$09,$17,$B1,$01,$E2,$0F,$00,$E7,$01,$C6,$00,$C7,$09,$86 ; $D02585
    db $02,$8D,$09,$06,$1A,$8B,$3F,$9E,$50,$50,$20,$20,$40,$40,$A1,$A0 ; $D02595
    db $5F,$50,$AF,$AF,$57,$57,$00,$F0,$50,$A0,$20,$C0,$40,$A0,$A0,$40 ; $D025A5
    db $07,$0F,$AF,$50,$57,$A8,$19,$E9,$FF,$3F,$3D,$81,$02,$3F,$75,$3F ; $D025B5
    db $FE,$3F,$29,$C7,$2C,$3F,$00,$01,$FF,$17,$66,$AE,$00,$07,$E2,$E1 ; $D025C5
    db $42,$E1,$A2,$22,$03,$E0,$FB,$82,$81,$02,$01,$E1,$48,$00,$01,$C1 ; $D025D5
    db $AF,$7F,$55,$1A,$90,$BE,$02,$F9,$87,$F8,$C0,$66,$05,$FA,$02,$FD ; $D025E5
    db $45,$61,$BA,$07,$15,$EA,$F9,$DF,$B4,$F9,$13,$AE,$F9,$0A,$3D,$00 ; $D025F5
    db $E0,$60,$90,$90,$60,$60,$80,$00,$1D,$E0,$40,$80,$69,$7E,$80,$F8 ; $D02605
    db $F7,$01,$7B,$53,$C0,$01,$FE,$1A,$FF,$76,$EC,$A4,$7E,$9D,$2F,$C3 ; $D02615
    db $56,$05,$CF,$BA,$7F,$1B,$EB,$FF,$43,$BF,$BD,$1F,$C1,$71,$02,$03 ; $D02625
    db $60,$D7,$FF,$4D,$C0,$F9,$2E,$FD,$FF,$1A,$C9,$FF,$01,$01,$7F,$C5 ; $D02635
    db $00,$03,$2B,$2A,$05,$05,$6A,$6A,$FE,$A8,$7C,$71,$F0,$05,$D4,$D5 ; $D02645
    db $D7,$78,$95,$19,$3F,$17,$17,$70,$00,$B1,$3B,$0B,$00,$7F,$1F,$EB ; $D02655
    db $2B,$7F,$7F,$AE,$AE,$4E,$E8,$33,$55,$00,$14,$AE,$C1,$50,$FB,$1B ; $D02665
    db $C7,$FF,$8E,$41,$C0,$1F,$00,$80,$80,$2B,$CF,$FC,$F0,$01,$3F,$EA ; $D02675
    db $FE,$2F,$15,$3F,$80,$7E,$F7,$B4,$FE,$FF,$40,$FD,$0E,$F0,$F7,$23 ; $D02685
    db $FF,$7D,$AA,$2B,$D3,$FF,$E8,$27,$37,$88,$CF,$77,$87,$28,$3F,$7E ; $D02695
    db $00,$5D,$CE,$07,$4F,$00,$FC,$24,$3F,$80,$3F,$00,$40,$07,$1E,$8F ; $D026A5
    db $E0,$E0,$24,$3F,$0F,$42,$02,$45,$05,$04,$0F,$0F,$3D,$3F,$3A,$25 ; $D026B5
    db $1F,$7F,$03,$03,$06,$E0,$B3,$C0,$C3,$81,$78,$C1,$24,$3F,$FF,$FF ; $D026C5
    db $0F,$F6,$FF,$7D,$7F,$07,$CF,$AF,$7F,$22,$1D,$3F,$40,$FE,$4B,$FF ; $D026D5
    db $C0,$F3,$05,$D0,$F8,$E7,$1B,$B6,$E5,$02,$3F,$3E,$DD,$33,$F9,$06 ; $D026E5
    db $D0,$F0,$25,$FF,$43,$80,$81,$FC,$06,$80,$C3,$79,$00,$25,$FF,$FD ; $D026F5
    db $D0,$3D,$75,$78,$00,$32,$FF,$E0,$00,$7C,$90,$06,$78,$01,$27,$FF ; $D02705
    db $24,$04,$3F,$29,$09,$05,$A3,$4F,$1B,$09,$16,$C3,$24,$BF,$BF,$BF ; $D02715
    db $5D,$E0,$05,$C0,$BF,$40,$3F,$5D,$A2,$00,$E0,$24,$3F,$FC,$FC,$D0 ; $D02725
    db $F0,$FF,$06,$BE,$4F,$F0,$25,$A7,$3F,$02,$01,$71,$70,$70,$03,$1C ; $D02735
    db $03,$F0,$0F,$C0,$7F,$80,$7F,$C1,$7E,$01,$9F,$AF,$91,$0F,$1F,$B9 ; $D02745
    db $7F,$02,$FD,$1C,$01,$E7,$54,$AA,$20,$DC,$50,$A8,$D9,$4C,$80,$29 ; $D02755
    db $A4,$95,$DF,$45,$E0,$1B,$63,$C3,$C0,$EC,$07,$E8,$3E,$C0,$00,$26 ; $D02765
    db $E3,$06,$78,$00,$16,$E3,$34,$7E,$B3,$FB,$A0,$E3,$07,$0F,$E7,$25 ; $D02775
    db $FE,$BA,$3F,$2A,$7C,$2A,$06,$3C,$3E,$15,$25,$3F,$7C,$1F,$7C,$B0 ; $D02785
    db $B0,$14,$5F,$8F,$18,$3E,$00,$A8,$37,$DC,$BF,$11,$02,$EF,$98,$F0 ; $D02795
    db $0A,$F5,$03,$22,$DD,$C7,$03,$AA,$55,$F1,$29,$3F,$D7,$B3,$7D,$A8 ; $D027A5
    db $33,$F2,$BF,$EF,$54,$29,$43,$E3,$03,$44,$DE,$0E,$6F,$18,$BF,$F7 ; $D027B5
    db $08,$4F,$9F,$05,$00,$7F,$2D,$FF,$53,$04,$79,$FC,$28,$00,$01,$EF ; $D027C5
    db $05,$01,$1A,$00,$3F,$01,$FE,$2A,$D5,$05,$FA,$AA,$18,$55,$11,$EE ; $D027D5
    db $03,$55,$AA,$FD,$2A,$7F,$1D,$81,$8F,$31,$85,$03,$22,$22,$89,$03 ; $D027E5
    db $0A,$0A,$68,$CF,$46,$03,$CF,$8D,$D7,$E9,$16,$3F,$46,$BF,$78,$31 ; $D027F5
    db $11,$11,$03,$05,$05,$A1,$03,$8F,$11,$07,$08,$8F,$78,$97,$18,$3F ; $D02805
    db $15,$15,$50,$AA,$B8,$57,$57,$90,$07,$15,$EA,$90,$C7,$57,$A8,$9B ; $D02815
    db $CF,$C6,$17,$3F,$77,$77,$24,$30,$5F,$5F,$03,$7F,$7F,$AB,$01,$AB ; $D02825
    db $FF,$FF,$AF,$AF,$77,$88,$8C,$33,$5F,$A0,$03,$7F,$3A,$80,$AB,$0F ; $D02835
    db $D0,$AF,$50,$18,$63,$3F,$33,$BB,$BB,$18,$03,$EF,$EF,$03,$BD,$BF ; $D02845
    db $EB,$70,$40,$00,$00,$BB,$44,$C3,$03,$EF,$10,$FF,$AF,$49,$4F,$2E ; $D02855
    db $19,$7F,$3F,$06,$BE,$3F,$09,$2E,$FA,$18,$3E,$FF,$07,$9F,$7F,$28 ; $D02865
    db $7C,$3F,$08,$FB,$BF,$28,$3F,$E9,$08,$BF,$F7,$28,$3F,$CF,$08,$FF ; $D02875
    db $BE,$28,$3F,$08,$3C,$BF,$28,$3F,$17,$63,$E8,$33,$5D,$A2,$46,$03 ; $D02885
    db $F7,$3D,$DF,$20,$2A,$3F,$68,$27,$96,$F7,$FA,$0B,$FE,$2E,$18,$FF ; $D02895
    db $3B,$00,$BD,$39,$38,$F7,$07,$CE,$FE,$A3,$49,$C9,$28,$3F,$EA,$D8 ; $D028A5
    db $BF,$A8,$9D,$7F,$FF,$29,$55,$BF,$53,$FF,$55,$AB,$FF,$50,$DA,$29 ; $D028B5
    db $3F,$00,$52,$BF,$01,$4A,$01,$5D,$BF,$FF,$6B,$8F,$FF,$8E,$4F,$FE ; $D028C5
    db $3E,$03,$FA,$0C,$FE,$8F,$07,$00,$89,$F7,$31,$45,$45,$03,$17,$17 ; $D028D5
    db $29,$BF,$8B,$5C,$C7,$BA,$03,$7D,$E8,$10,$BF,$CF,$17,$36,$BF,$EF ; $D028E5
    db $07,$DF,$01,$D7,$F7,$27,$FF,$F0,$2C,$7F,$FF,$9F,$0F,$7F,$BA,$31 ; $D028F5
    db $C9,$7F,$51,$E7,$7F,$10,$93,$29,$3F,$EE,$97,$FF,$E8,$F2,$31,$7F ; $D02905
    db $44,$9C,$9F,$BF,$42,$FD,$2C,$CF,$7F,$C7,$08,$FF,$BC,$28,$3F,$00 ; $D02915
; ---- end of region ----


; ---- RNC method 2 block: 7650 bytes packed, 27972 unpacked (tools/rnc.py) ($D02925-$D04718) ----
    db $52,$4E,$43,$02,$00,$00,$6D,$44,$00,$00,$1D,$E2,$F3,$5A,$DD,$E1 ; $D02925
    db $02,$03,$0B,$00,$00,$A6,$98,$10,$10,$02,$14,$02,$98,$02,$80,$01 ; $D02935
    db $8C,$31,$10,$42,$94,$52,$18,$63,$08,$22,$80,$02,$00,$01,$04,$13 ; $D02945
    db $84,$13,$0B,$DA,$1F,$11,$E9,$9C,$73,$85,$44,$A5,$49,$8A,$45,$CA ; $D02955
    db $1E,$2C,$56,$77,$18,$5B,$09,$50,$44,$35,$36,$76,$13,$3C,$0A,$7B ; $D02965
    db $0F,$B1,$6E,$8B,$1F,$C6,$18,$9E,$C0,$20,$60,$35,$AB,$35,$4C,$29 ; $D02975
    db $00,$40,$CC,$41,$08,$42,$D0,$18,$D6,$18,$1E,$03,$92,$4A,$9A,$4A ; $D02985
    db $3D,$17,$9A,$6B,$7F,$5C,$6F,$FF,$5E,$7F,$4E,$FF,$3D,$7F,$2D,$1F ; $D02995
    db $21,$9F,$10,$1F,$00,$BF,$2E,$7F,$22,$3F,$12,$FF,$01,$BC,$01,$99 ; $D029A5
    db $01,$56,$01,$33,$01,$FF,$1F,$5F,$B9,$65,$FF,$4F,$FF,$3F,$FF,$2F ; $D029B5
    db $DF,$23,$DF,$13,$DF,$03,$7C,$03,$19,$03,$B6,$02,$73,$02,$93,$AE ; $D029C5
    db $C3,$01,$4B,$01,$08,$01,$FA,$2F,$F8,$23,$F6,$13,$F4,$0B,$4F,$03 ; $D029D5
    db $30,$03,$96,$CE,$02,$6C,$02,$FB,$6F,$F7,$5F,$F3,$4F,$F0,$3F,$EC ; $D029E5
    db $2F,$E8,$23,$E4,$13,$E0,$03,$01,$01,$A0,$03,$80,$03,$40,$03,$20 ; $D029F5
    db $8C,$09,$02,$C0,$C3,$02,$00,$60,$02,$20,$02,$E0,$01,$C0,$01,$C1 ; $D02A05
    db $CD,$60,$01,$20,$01,$85,$C5,$FB,$7F,$F7,$D7,$7F,$F3,$7F,$EF,$7F ; $D02A15
    db $EB,$7F,$E8,$7F,$E4,$7F,$E0,$7F,$80,$73,$20,$67,$C0,$5A,$60,$4E ; $D02A25
    db $00,$42,$C0,$39,$60,$2D,$00,$21,$18,$00,$20,$7B,$C2,$7D,$00,$0E ; $D02A35
    db $AC,$02,$00,$03,$2E,$01,$04,$5C,$00,$05,$00,$06,$00,$07,$00,$08 ; $D02A45
    db $00,$09,$00,$0A,$00,$0B,$00,$0C,$00,$0D,$00,$0E,$0D,$5C,$0F,$38 ; $D02A55
    db $00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$00,$15,$27,$16,$3D,$00 ; $D02A65
    db $17,$05,$3F,$81,$C9,$19,$00,$1A,$00,$1B,$C0,$05,$1C,$00,$1D,$00 ; $D02A75
    db $1C,$1E,$00,$1F,$D9,$01,$21,$00,$22,$00,$23,$00,$24,$C6,$0D,$25 ; $D02A85
    db $0F,$17,$40,$26,$00,$0C,$27,$00,$28,$00,$29,$00,$2A,$00,$2B,$00 ; $D02A95
    db $2C,$00,$FC,$2E,$F3,$05,$3F,$2F,$80,$39,$30,$00,$31,$00,$32,$03 ; $D02AA5
    db $00,$33,$00,$34,$00,$35,$00,$0B,$40,$36,$00,$37,$00,$38,$00,$1C ; $D02AB5
    db $39,$00,$3A,$0D,$5C,$3B,$BC,$00,$3C,$00,$3D,$00,$3E,$00,$3F,$00 ; $D02AC5
    db $40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$05,$3F,$46,$B8,$EB ; $D02AD5
    db $00,$47,$00,$48,$00,$49,$00,$4A,$00,$4B,$00,$4C,$00,$4D,$00,$4E ; $D02AE5
    db $01,$86,$40,$4F,$00,$50,$00,$51,$00,$52,$00,$53,$00,$54,$01,$03 ; $D02AF5
    db $40,$55,$00,$56,$00,$57,$00,$0B,$40,$58,$00,$59,$00,$5A,$00,$1E ; $D02B05
    db $5B,$00,$5C,$01,$3B,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00,$1C,$61 ; $D02B15
    db $00,$62,$85,$5C,$63,$72,$00,$64,$00,$65,$00,$66,$00,$67,$00,$68 ; $D02B25
    db $00,$69,$00,$6A,$00,$6B,$07,$40,$0B,$0D,$6C,$8F,$00,$6D,$00,$6E ; $D02B35
    db $00,$6F,$00,$70,$00,$71,$00,$72,$00,$73,$00,$74,$14,$35,$75,$3F ; $D02B45
    db $00,$76,$00,$77,$00,$78,$00,$79,$00,$1C,$7A,$00,$7B,$3F,$17,$7C ; $D02B55
    db $00,$7D,$8E,$00,$7E,$00,$7F,$00,$80,$00,$81,$00,$82,$00,$83,$00 ; $D02B65
    db $84,$00,$85,$00,$86,$00,$87,$00,$88,$00,$89,$00,$8A,$00,$8B,$00 ; $D02B75
    db $8C,$00,$8D,$00,$8E,$00,$8F,$00,$90,$00,$91,$00,$92,$00,$93,$00 ; $D02B85
    db $3F,$94,$00,$95,$00,$96,$00,$97,$0E,$00,$98,$00,$99,$2E,$3F,$9A ; $D02B95
    db $38,$00,$9B,$00,$9C,$00,$9D,$00,$9E,$00,$9F,$00,$A0,$00,$A1,$00 ; $D02BA5
    db $A2,$07,$40,$9E,$0E,$40,$A3,$00,$A4,$0B,$09,$A5,$00,$A6,$8F,$00 ; $D02BB5
    db $A7,$00,$A8,$00,$A9,$00,$AA,$00,$AB,$00,$AC,$00,$AD,$00,$AE,$05 ; $D02BC5
    db $3F,$AF,$00,$B0,$C7,$00,$B1,$00,$B2,$00,$B3,$00,$B4,$00,$B5,$00 ; $D02BD5
    db $B6,$00,$B7,$00,$B8,$C2,$11,$01,$B9,$00,$BA,$E1,$00,$BB,$00,$BC ; $D02BE5
    db $00,$BD,$00,$BE,$00,$BF,$00,$C0,$40,$3F,$C1,$00,$C2,$00,$67,$C3 ; $D02BF5
    db $01,$40,$C0,$2A,$35,$C4,$00,$C5,$99,$09,$C6,$76,$00,$C7,$00,$C8 ; $D02C05
    db $00,$C9,$00,$CA,$00,$CB,$00,$CC,$00,$CD,$00,$CE,$00,$CF,$00,$D0 ; $D02C15
    db $00,$D1,$00,$D2,$00,$D3,$00,$D4,$00,$D5,$00,$D6,$00,$D7,$00,$D8 ; $D02C25
    db $D7,$0D,$0F,$40,$D9,$00,$DA,$00,$DB,$00,$DC,$00,$DD,$00,$DE,$05 ; $D02C35
    db $0B,$49,$DF,$00,$E0,$CF,$00,$E1,$00,$E2,$00,$E3,$00,$E4,$00,$E5 ; $D02C45
    db $00,$E6,$00,$E7,$00,$E8,$00,$E9,$00,$EA,$00,$EB,$00,$EC,$00,$ED ; $D02C55
    db $00,$EE,$00,$EF,$00,$F0,$00,$F1,$00,$F2,$00,$F3,$00,$F4,$00,$F5 ; $D02C65
    db $00,$F6,$00,$F7,$00,$F8,$9C,$13,$97,$F9,$79,$00,$FA,$00,$FB,$00 ; $D02C75
    db $FC,$00,$FD,$00,$1D,$FE,$00,$FF,$18,$DE,$00,$02,$01,$03,$03,$01 ; $D02C85
    db $04,$01,$05,$01,$C3,$0A,$2D,$06,$01,$07,$A4,$EB,$09,$01,$1C,$0A ; $D02C95
    db $01,$0B,$27,$B9,$61,$0C,$01,$0D,$01,$0E,$01,$0F,$01,$10,$01,$11 ; $D02CA5
    db $01,$12,$01,$13,$01,$14,$01,$15,$01,$CD,$16,$01,$17,$71,$01,$18 ; $D02CB5
    db $01,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D,$01,$1E,$01,$1F,$E9,$E1 ; $D02CC5
    db $3C,$21,$01,$0E,$7F,$22,$B9,$FA,$01,$23,$01,$24,$01,$25,$01,$26 ; $D02CD5
    db $01,$27,$01,$28,$01,$29,$01,$D3,$00,$2A,$01,$2B,$01,$2C,$01,$2D ; $D02CE5
    db $0D,$7F,$C7,$00,$2E,$80,$03,$1B,$2F,$01,$30,$01,$31,$01,$75,$32 ; $D02CF5
    db $57,$A3,$34,$0E,$01,$35,$01,$36,$01,$37,$01,$38,$01,$39,$01,$3A ; $D02D05
    db $00,$21,$3B,$01,$3C,$01,$3D,$01,$3E,$0F,$01,$3F,$01,$40,$05,$03 ; $D02D15
    db $4B,$41,$01,$42,$01,$43,$CB,$01,$11,$44,$87,$01,$45,$01,$46,$01 ; $D02D25
    db $47,$01,$48,$01,$49,$01,$4A,$54,$CB,$4C,$01,$07,$4D,$01,$4E,$01 ; $D02D35
    db $4F,$00,$1F,$50,$01,$51,$01,$52,$01,$07,$53,$01,$54,$01,$55,$8B ; $D02D45
    db $01,$2D,$56,$01,$87,$57,$01,$58,$01,$59,$01,$5A,$01,$5B,$01,$5C ; $D02D55
    db $01,$E0,$16,$F3,$5D,$01,$5E,$01,$75,$5F,$47,$DF,$61,$01,$62,$80 ; $D02D65
    db $03,$29,$63,$01,$64,$01,$65,$01,$0F,$66,$01,$67,$01,$18,$80,$33 ; $D02D75
    db $68,$01,$69,$01,$1C,$6A,$01,$6B,$01,$78,$6C,$03,$2B,$6D,$01,$01 ; $D02D85
    db $6E,$01,$6F,$01,$70,$01,$71,$E0,$19,$3F,$72,$01,$73,$01,$60,$74 ; $D02D95
    db $3D,$81,$75,$01,$76,$F0,$03,$2B,$77,$01,$78,$03,$01,$79,$01,$7A ; $D02DA5
    db $01,$7B,$C0,$19,$3F,$7C,$01,$7D,$01,$7E,$3A,$01,$7F,$EF,$A3,$81 ; $D02DB5
    db $03,$00,$2B,$82,$01,$83,$01,$84,$01,$85,$0F,$01,$86,$01,$87,$17 ; $D02DC5
    db $00,$41,$88,$01,$89,$01,$8A,$01,$8B,$0F,$01,$8C,$01,$8D,$03,$00 ; $D02DD5
    db $29,$8E,$01,$8F,$01,$90,$01,$91,$3D,$01,$92,$19,$7F,$70,$93,$01 ; $D02DE5
    db $94,$01,$95,$01,$96,$01,$97,$01,$98,$01,$FB,$47,$8E,$C3,$02,$04 ; $D02DF5
    db $0B,$BF,$A8,$81,$02,$0F,$03,$07,$0F,$0F,$0F,$EC,$1C,$39,$37,$10 ; $D02E05
    db $00,$2F,$41,$BC,$07,$F0,$1F,$C0,$7F,$A6,$0F,$37,$00,$1F,$3F,$7E ; $D02E15
    db $FC,$F8,$F0,$E0,$C0,$79,$80,$1E,$7A,$FF,$89,$01,$FF,$00,$29,$01 ; $D02E25
    db $0E,$CF,$00,$24,$00,$B9,$10,$E8,$04,$FA,$C1,$1E,$F0,$12,$07,$FC ; $D02E35
    db $01,$00,$36,$F0,$F8,$FC,$FE,$3F,$1F,$0F,$1E,$07,$03,$01,$23,$FB ; $D02E45
    db $60,$8B,$76,$01,$FC,$03,$7C,$F3,$01,$FB,$8F,$07,$83,$FE,$FC,$FC ; $D02E55
    db $7C,$8D,$1C,$3D,$40,$BF,$3B,$0C,$FB,$7D,$F0,$AC,$2F,$7F,$E4,$BF ; $D02E65
    db $9F,$FB,$1E,$A0,$3F,$F8,$E0,$01,$0F,$F8,$03,$FE,$00,$3F,$C0,$64 ; $D02E75
    db $FF,$87,$BE,$C0,$C0,$88,$20,$3F,$1F,$E0,$16,$01,$07,$F8,$28,$3F ; $D02E85
    db $E0,$00,$F8,$79,$F8,$1D,$3F,$FC,$89,$01,$E0,$1C,$29,$01,$0E,$C4 ; $D02E95
    db $00,$1C,$DE,$00,$1D,$3F,$7A,$07,$03,$01,$1E,$0E,$03,$00,$F1,$20 ; $D02EA5
    db $BF,$7F,$80,$0D,$01,$C1,$62,$BF,$80,$87,$00,$E0,$E0,$C1,$26,$3F ; $D02EB5
    db $81,$7E,$F0,$06,$3F,$7E,$78,$7E,$20,$3F,$00,$7F,$02,$C0,$1F,$F0 ; $D02EC5
    db $07,$F8,$07,$CD,$3F,$90,$11,$41,$E2,$22,$BF,$3F,$C0,$4B,$01,$13 ; $D02ED5
    db $3F,$C0,$78,$00,$26,$BF,$E0,$1F,$F1,$06,$BF,$1F,$1F,$E2,$20,$3F ; $D02EE5
    db $FE,$01,$05,$01,$7E,$81,$9D,$3F,$DE,$8A,$1E,$00,$81,$81,$26,$BF ; $D02EF5
    db $3C,$0F,$F0,$06,$BF,$F0,$7B,$F0,$26,$BF,$78,$42,$06,$BF,$3F,$3F ; $D02F05
    db $F0,$1C,$3E,$20,$D0,$08,$11,$F4,$82,$3D,$24,$01,$FC,$03,$1D,$0F ; $D02F15
    db $E0,$2A,$C0,$7E,$93,$C0,$03,$03,$E4,$1F,$BE,$05,$08,$01,$17,$00 ; $D02F25
    db $FE,$03,$F8,$0F,$E0,$F5,$01,$BA,$74,$1F,$F5,$BE,$7C,$82,$1C,$3E ; $D02F35
    db $80,$E9,$BA,$3E,$3F,$80,$06,$BF,$7F,$20,$58,$BA,$1A,$00,$02,$FD ; $D02F45
    db $32,$26,$BD,$C7,$3F,$FE,$3E,$3F,$23,$B0,$7C,$81,$5B,$40,$4C,$03 ; $D02F55
    db $0F,$C0,$B6,$03,$F3,$19,$3A,$0F,$C2,$02,$01,$02,$0D,$08,$2F,$B2 ; $D02F65
    db $EF,$05,$00,$1C,$8F,$FA,$04,$7A,$01,$28,$00,$22,$B3,$C0,$01,$E4 ; $D02F75
    db $1B,$F1,$0E,$88,$B3,$F7,$04,$00,$BB,$1A,$3F,$4C,$F4,$01,$47,$12 ; $D02F85
    db $B8,$13,$EC,$AF,$7D,$BC,$02,$00,$18,$3F,$83,$78,$7C,$02,$01,$93 ; $D02F95
    db $6C,$1E,$C7,$38,$7C,$07,$00,$F1,$18,$3F,$F0,$0F,$EC,$02,$01,$BD ; $D02FA5
    db $F4,$7E,$0B,$28,$3F,$B4,$D9,$F7,$01,$EF,$08,$00,$19,$BB,$3A,$F8 ; $D02FB5
    db $C0,$02,$01,$27,$D8,$8F,$70,$F8,$F7,$07,$00,$AD,$18,$3F,$78,$B7 ; $D02FC5
    db $0B,$01,$E8,$14,$E0,$5D,$B6,$1C,$F7,$21,$BF,$8B,$AC,$B3,$01,$01 ; $D02FD5
    db $55,$01,$E5,$BB,$59,$3B,$3C,$00,$18,$3E,$1F,$FC,$02,$FE,$E0,$12 ; $D02FE5
    db $5F,$A0,$1F,$EF,$76,$BC,$03,$00,$18,$3F,$81,$78,$7E,$02,$01,$85 ; $D02FF5
    db $7A,$1E,$D1,$2E,$7E,$07,$00,$F7,$18,$3F,$E0,$03,$3E,$07,$F9,$06 ; $D03005
    db $FC,$7F,$03,$04,$7F,$7B,$1C,$BF,$7F,$04,$83,$7F,$17,$E8,$47,$B8 ; $D03015
    db $F7,$28,$7F,$80,$03,$BE,$81,$44,$BB,$11,$EE,$81,$F7,$03,$00,$D1 ; $D03025
    db $1C,$C7,$F0,$03,$7E,$F0,$37,$4F,$B0,$03,$BD,$08,$00,$18,$3F,$F0 ; $D03035
    db $04,$7C,$E0,$0F,$1F,$C2,$3D,$3F,$07,$7F,$00,$19,$DE,$FA,$03,$04 ; $D03045
    db $01,$3A,$FE,$01,$FE,$72,$05,$00,$FC,$24,$FF,$9F,$7E,$60,$2A,$FF ; $D03055
    db $78,$FF,$03,$81,$FD,$02,$8B,$F9,$FF,$26,$7F,$FF,$F5,$03,$C2,$09 ; $D03065
    db $11,$EE,$44,$BB,$FF,$BD,$DE,$01,$00,$1A,$3F,$95,$16,$79,$75,$01 ; $D03075
    db $FD,$7B,$05,$00,$F5,$24,$3F,$1F,$F2,$0D,$F8,$29,$70,$7F,$05,$0A ; $D03085
    db $0A,$05,$0F,$0D,$02,$07,$08,$01,$BF,$C4,$80,$27,$3F,$EA,$15,$F5 ; $D03095
    db $0A,$FB,$04,$2D,$EE,$11,$BE,$04,$06,$FF,$7D,$1A,$70,$7F,$AB,$54 ; $D030A5
    db $57,$A8,$0B,$BB,$44,$EF,$10,$3E,$3F,$02,$FF,$79,$20,$BF,$3F,$10 ; $D030B5
    db $BE,$3F,$1E,$3F,$C6,$7F,$D7,$28,$7D,$D6,$81,$7D,$3F,$02,$FE,$B9 ; $D030C5
    db $1E,$E6,$FF,$FA,$05,$FF,$0B,$FE,$01,$FB,$04,$3F,$3F,$28,$06,$3F ; $D030D5
    db $BF,$40,$7F,$80,$03,$F7,$02,$BF,$DC,$28,$BF,$F4,$08,$31,$E8,$14 ; $D030E5
    db $03,$FC,$00,$67,$01,$DD,$29,$7F,$01,$17,$78,$92,$05,$57,$82,$F7 ; $D030F5
    db $06,$00,$8F,$1A,$BF,$5F,$A0,$04,$7C,$BF,$28,$87,$7F,$AB,$54,$D5 ; $D03105
    db $2A,$EF,$04,$FF,$28,$B8,$7F,$FA,$05,$FD,$7E,$02,$04,$7F,$FB,$28 ; $D03115
    db $86,$7F,$AF,$50,$57,$A8,$7D,$F7,$02,$C1,$DE,$28,$7F,$51,$FF,$EF ; $D03125
    db $02,$FF,$04,$8F,$F5,$1C,$80,$FF,$AA,$55,$55,$AA,$3D,$AE,$51,$03 ; $D03135
    db $41,$2B,$69,$FC,$00,$F1,$1C,$BF,$8F,$BF,$5F,$A0,$04,$7D,$BF,$28 ; $D03145
    db $CD,$BF,$D5,$2A,$C1,$F3,$04,$3F,$F7,$04,$B5,$FB,$1C,$C6,$BF,$7D ; $D03155
    db $C0,$35,$FD,$0A,$FF,$20,$FF,$42,$08,$3F,$57,$35,$31,$07,$07,$F9 ; $D03165
    db $07,$07,$F7,$1C,$3F,$88,$3D,$DF,$03,$32,$1A,$3F,$7D,$4B,$81,$3F ; $D03175
    db $01,$28,$B1,$3F,$8F,$7F,$EE,$11,$02,$9F,$FF,$06,$BF,$BD,$DF,$1E ; $D03185
    db $BF,$F7,$04,$3F,$DF,$02,$B9,$C4,$1E,$3F,$F5,$0A,$41,$C1,$F7,$08 ; $D03195
    db $F5,$0A,$3F,$F4,$1E,$3F,$AD,$78,$02,$0F,$08,$0F,$05,$0F,$0A,$C1 ; $D031A5
    db $39,$0D,$0F,$07,$C4,$0C,$05,$AF,$D0,$F7,$23,$3F,$CF,$C9,$DF,$08 ; $D031B5
    db $CF,$6F,$C0,$1D,$61,$3F,$BD,$02,$FF,$15,$F0,$02,$FF,$17,$03,$1F ; $D031C5
    db $1D,$1F,$0A,$1F,$00,$FC,$21,$FA,$03,$FF,$88,$FF,$22,$FF,$55,$F0 ; $D031D5
    db $02,$7F,$77,$FF,$DD,$1E,$FF,$AA,$FF,$29,$3F,$07,$2A,$F7,$0D,$FD ; $D031E5
    db $03,$84,$02,$3F,$15,$1F,$02,$59,$59,$E0,$1E,$3F,$20,$FF,$54,$FF ; $D031F5
    db $04,$A8,$FF,$DC,$FF,$74,$5F,$F3,$00,$04,$DC,$FC,$A8,$FC,$54,$FC ; $D03205
    db $20,$1E,$FC,$88,$FC,$1D,$3F,$00,$01,$FF,$04,$FF,$0A,$FF,$05,$FF ; $D03215
    db $11,$0B,$FF,$0E,$B2,$7F,$04,$0B,$B0,$8E,$04,$0F,$01,$FC,$22,$7F ; $D03225
    db $80,$0F,$FF,$40,$FF,$C0,$01,$F4,$B6,$C0,$40,$07,$C0,$80,$C0,$00 ; $D03235
    db $C0,$EC,$1F,$7F,$39,$10,$E0,$BD,$50,$FF,$E8,$55,$FF,$98,$3F,$04 ; $D03245
    db $E8,$F8,$00,$50,$F8,$A8,$F8,$10,$F8,$40,$F8,$F3,$1F,$BF,$00,$B6 ; $D03255
    db $C1,$05,$73,$03,$05,$8E,$00,$02,$93,$37,$01,$03,$39,$05,$00,$05 ; $D03265
    db $EC,$1F,$BF,$81,$A0,$A4,$03,$E4,$B5,$A0,$E0,$50,$40,$03,$00,$E0 ; $D03275
    db $F8,$1F,$3F,$8C,$7F,$2A,$08,$FF,$5C,$FF,$76,$BE,$F3,$04,$00,$5E ; $D03285
    db $7E,$2A,$7E,$54,$7E,$22,$7E,$3C,$08,$7E,$1D,$3F,$02,$E3,$03,$05 ; $D03295
    db $8D,$05,$07,$05,$17,$F3,$83,$04,$02,$8E,$05,$00,$7A,$05,$1F,$BF ; $D032A5
    db $35,$7D,$6F,$81,$02,$D3,$7D,$DE,$81,$1C,$3F,$72,$10,$39,$30,$7F ; $D032B5
    db $B8,$FF,$E8,$8C,$7F,$E8,$ED,$81,$19,$7F,$40,$DB,$81,$F3,$1F,$BF ; $D032C5
    db $0A,$B6,$7D,$7F,$2A,$81,$FF,$D1,$B3,$BF,$FF,$F5,$82,$0C,$81,$01 ; $D032D5
    db $81,$00,$1E,$01,$1C,$3F,$71,$20,$3B,$50,$D8,$7D,$70,$FF,$45,$D0 ; $D032E5
    db $F0,$F3,$04,$70,$F0,$A0,$01,$F0,$50,$F0,$80,$F0,$20,$F0,$E7,$1D ; $D032F5
    db $3F,$11,$43,$BF,$2A,$A4,$C1,$2E,$FF,$45,$3B,$CC,$F3,$2E,$3F,$06 ; $D03305
    db $15,$01,$3F,$2A,$3F,$11,$3F,$04,$3F,$E4,$1F,$BF,$00,$60,$FF,$EF ; $D03315
    db $F0,$FB,$BC,$96,$FD,$56,$E0,$FF,$3E,$00,$E0,$1F,$22,$7F,$1F,$81 ; $D03325
    db $02,$04,$77,$BF,$02,$C7,$1B,$79,$9C,$03,$3F,$44,$C1,$7D,$AA,$02 ; $D03335
    db $44,$3F,$BB,$FF,$EE,$57,$4E,$C8,$1D,$00,$FC,$48,$7B,$3F,$05,$8E ; $D03345
    db $89,$47,$FC,$FC,$FE,$9E,$3F,$02,$1F,$81,$EB,$83,$24,$40,$F0,$10 ; $D03355
    db $FC,$AC,$82,$32,$BB,$BF,$6E,$00,$0F,$80,$C0,$E0,$F0,$50,$20,$FC ; $D03365
    db $AA,$56,$3F,$F7,$20,$43,$F5,$09,$AF,$03,$37,$01,$BF,$1F,$00,$09 ; $D03375
    db $BF,$AF,$0A,$6F,$10,$83,$0D,$00,$0B,$07,$02,$01,$C9,$04,$3F,$08 ; $D03385
    db $BC,$0F,$20,$3F,$F7,$01,$F8,$FD,$FE,$BF,$7F,$2F,$1F,$27,$7C,$00 ; $D03395
    db $2E,$F0,$00,$FC,$80,$7F,$20,$7B,$1F,$1C,$3B,$D6,$01,$66,$67,$00 ; $D033A5
    db $45,$1F,$87,$05,$7B,$1F,$00,$1F,$9E,$1D,$3F,$FC,$02,$01,$9E,$D4 ; $D033B5
    db $F7,$02,$01,$98,$17,$00,$7F,$33,$7C,$FD,$16,$7E,$FF,$7F,$14,$01 ; $D033C5
    db $00,$7C,$01,$7B,$7F,$01,$01,$CE,$18,$7F,$0F,$57,$01,$E7,$39,$AD ; $D033D5
    db $7F,$F7,$73,$C0,$E8,$1E,$3F,$BF,$F3,$58,$BF,$07,$26,$EF,$1F,$3F ; $D033E5
    db $95,$5C,$73,$03,$45,$F3,$1E,$3F,$F8,$D2,$01,$01,$3D,$3F,$F8,$01 ; $D033F5
    db $01,$EE,$1E,$3F,$DF,$73,$04,$47,$F9,$EF,$03,$73,$1E,$3D,$3F,$03 ; $D03405
    db $01,$01,$23,$3F,$03,$DE,$01,$01,$1E,$3F,$7A,$E0,$01,$01,$47,$3F ; $D03415
    db $E0,$BC,$01,$01,$1E,$3F,$7E,$E7,$01,$87,$04,$BF,$7E,$00,$7E,$98 ; $D03425
    db $25,$BF,$07,$01,$F7,$0F,$16,$DF,$3F,$7F,$95,$3F,$07,$1D,$01,$1F ; $D03435
    db $BD,$F9,$1E,$3F,$17,$B3,$52,$01,$01,$48,$3F,$BC,$B3,$B9,$4A,$F3 ; $D03445
    db $1E,$3F,$F0,$D2,$01,$01,$3D,$3F,$F0,$01,$01,$E7,$1E,$3F,$3F,$A4 ; $D03455
    db $01,$01,$3F,$7B,$3F,$01,$01,$F7,$22,$BF,$EF,$04,$3F,$02,$AF,$73 ; $D03465
    db $9F,$1D,$3F,$FE,$04,$6F,$2C,$6D,$C5,$10,$F6,$03,$7F,$50,$1D,$CF ; $D03475
    db $FF,$BF,$C0,$01,$72,$3F,$8B,$2F,$3E,$F6,$02,$9F,$CC,$00,$03,$25 ; $D03485
    db $5B,$3F,$57,$FF,$EC,$04,$D4,$F3,$1C,$3F,$80,$D4,$02,$01,$14,$7B ; $D03495
    db $80,$03,$01,$DD,$17,$00,$2F,$B7,$0F,$04,$3D,$01,$00,$08,$01,$E8 ; $D034A5
    db $1F,$00,$B2,$77,$1F,$00,$03,$DF,$98,$1D,$AD,$BF,$BA,$37,$0B,$01 ; $D034B5
    db $07,$2F,$1F,$7A,$7C,$68,$70,$69,$7D,$00,$08,$07,$20,$1F,$02,$7C ; $D034C5
    db $08,$70,$F4,$18,$3F,$B8,$AB,$07,$99,$98,$9F,$80,$9F,$13,$05,$80 ; $D034D5
    db $06,$F5,$18,$87,$00,$9F,$01,$E3,$05,$80,$CE,$1C,$BB,$F8,$28,$A6 ; $D034E5
    db $07,$B2,$07,$B1,$10,$FF,$41,$0A,$FF,$00,$07,$E1,$1E,$FD,$CC,$CC ; $D034F5
    db $CF,$DB,$2A,$5A,$05,$96,$6E,$CC,$C1,$E7,$10,$1E,$05,$C0,$1C,$3D ; $D03505
    db $74,$7C,$38,$74,$83,$AA,$FE,$B4,$38,$2E,$7C,$79,$83,$A8,$47,$F8 ; $D03515
    db $19,$3F,$20,$07,$04,$01,$67,$26,$64,$E7,$05,$50,$00,$01,$60,$84 ; $D03525
    db $26,$00,$E4,$05,$FF,$19,$F9,$FB,$06,$01,$00,$EF,$08,$01,$19,$07 ; $D03535
    db $00,$BE,$80,$E3,$00,$BB,$02,$01,$1E,$91,$7F,$00,$06,$10,$F0,$17 ; $D03545
    db $00,$9F,$80,$8E,$48,$00,$01,$8F,$E7,$03,$0F,$3F,$1F,$00,$06,$7E ; $D03555
    db $10,$19,$BD,$73,$38,$01,$F9,$03,$EC,$F7,$09,$10,$C4,$17,$81,$EB ; $D03565
    db $EE,$27,$01,$BE,$0C,$10,$18,$5C,$81,$C7,$01,$8E,$A4,$F6,$F8,$70 ; $D03575
    db $F7,$09,$10,$83,$16,$00,$2F,$20,$38,$00,$DB,$02,$01,$00,$A8,$7B ; $D03585
    db $F7,$06,$10,$8F,$17,$00,$A7,$20,$06,$C7,$6E,$20,$C7,$E2,$26,$7F ; $D03595
    db $FA,$02,$78,$6E,$02,$FC,$6D,$04,$03,$0F,$A6,$06,$0E,$1B,$8C,$04 ; $D035A5
    db $F8,$03,$C3,$1A,$3F,$7F,$00,$73,$9F,$01,$03,$4F,$EE,$BE,$09,$10 ; $D035B5
    db $18,$C7,$C1,$9C,$3E,$01,$03,$BE,$AE,$09,$10,$F0,$16,$00,$F1,$00 ; $D035C5
    db $71,$F7,$03,$01,$BC,$0C,$10,$16,$00,$C7,$3D,$00,$C3,$03,$01,$EF ; $D035D5
    db $0C,$10,$1F,$D4,$3F,$01,$FD,$02,$3F,$EF,$01,$10,$17,$09,$00,$3F ; $D035E5
    db $00,$1C,$9C,$01,$1F,$03,$F7,$0C,$10,$81,$16,$00,$F0,$00,$70,$00 ; $D035F5
    db $70,$3B,$FB,$F6,$0E,$10,$CF,$15,$7D,$20,$06,$3D,$01,$00,$08,$01 ; $D03605
    db $FF,$18,$3F,$79,$02,$06,$01,$00,$EF,$08,$01,$1D,$92,$81,$67,$60 ; $D03615
    db $2C,$B4,$D6,$05,$11,$10,$60,$1F,$61,$C5,$60,$1F,$F7,$1E,$7D,$08 ; $D03625
    db $E0,$00,$F3,$03,$49,$2A,$05,$02,$10,$03,$FC,$2C,$05,$93,$05,$C0 ; $D03635
    db $1A,$00,$01,$00,$33,$30,$3E,$39,$00,$3E,$05,$61,$10,$30,$0F,$C3 ; $D03645
    db $0E,$3E,$30,$FA,$1F,$FD,$F0,$10,$00,$F9,$01,$2A,$92,$05,$04,$10 ; $D03655
    db $01,$FE,$7E,$39,$4F,$05,$16,$28,$00,$1C,$00,$9C,$00,$9C,$9D,$1E ; $D03665
    db $1F,$1F,$95,$93,$91,$4B,$10,$06,$F9,$80,$1C,$01,$9E,$BB,$07,$84 ; $D03675
    db $13,$01,$90,$00,$80,$21,$00,$40,$80,$E0,$E0,$60,$E0,$F7,$04,$0F ; $D03685
    db $D1,$1C,$BF,$51,$2B,$EF,$14,$01,$17,$04,$00,$1F,$80,$19,$98,$E4 ; $D03695
    db $A9,$FF,$10,$13,$E0,$22,$1C,$FD,$75,$03,$0F,$18,$E8,$63,$5D,$FB ; $D036A5
    db $19,$BF,$D2,$EE,$F8,$B5,$E2,$48,$81,$6F,$07,$00,$FF,$33,$10,$FF ; $D036B5
    db $E8,$1C,$7F,$77,$CF,$FF,$75,$01,$C8,$42,$A4,$2E,$CF,$CC,$FA,$02 ; $D036C5
    db $7C,$FF,$1B,$00,$83,$EF,$AD,$75,$7C,$6B,$CA,$1F,$71,$01,$10,$FF ; $D036D5
    db $37,$10,$F2,$1D,$BF,$E3,$05,$04,$63,$64,$03,$04,$10,$01,$FC,$01 ; $D036E5
    db $3B,$00,$E4,$F2,$75,$FF,$85,$D0,$1D,$FF,$80,$79,$40,$01,$01,$7F ; $D036F5
    db $0F,$01,$03,$FF,$79,$F3,$1D,$BF,$2B,$9F,$E4,$BE,$80,$01,$65,$35 ; $D03705
    db $0F,$10,$80,$7F,$20,$B2,$FF,$75,$A6,$F4,$02,$3F,$8F,$0E,$0E,$20 ; $D03715
    db $7D,$3F,$08,$9E,$8A,$13,$0F,$F9,$0F,$7B,$FF,$01,$C9,$66,$2F,$EF ; $D03725
    db $02,$10,$1D,$26,$3F,$C0,$01,$F7,$01,$2F,$BD,$02,$10,$1D,$3F,$2F ; $D03735
    db $9E,$64,$2F,$20,$01,$2F,$A1,$10,$20,$1F,$E9,$20,$3F,$63,$7F,$A3 ; $D03745
    db $20,$F1,$06,$7F,$20,$C3,$F8,$26,$7F,$8F,$00,$FD,$06,$7F,$4F,$10 ; $D03755
    db $1D,$4B,$3F,$A7,$E4,$5F,$40,$A8,$01,$2F,$10,$40,$7F,$3F,$00,$D2 ; $D03765
    db $20,$3F,$EB,$E4,$E3,$DE,$02,$7F,$02,$10,$F5,$1D,$3F,$BB,$A8,$EF ; $D03775
    db $01,$2F,$02,$7C,$10,$1F,$45,$3F,$5F,$64,$F0,$04,$16,$2F,$78,$10 ; $D03785
    db $1D,$3F,$1F,$20,$F4,$01,$01,$4B,$BE,$E0,$FA,$03,$B9,$E0,$FA,$1C ; $D03795
    db $9E,$FF,$FC,$02,$01,$01,$A9,$C0,$FE,$03,$FD,$B9,$1D,$11,$BF,$D7 ; $D037A5
    db $B5,$03,$C4,$04,$EF,$75,$B5,$03,$F0,$22,$FF,$1F,$EE,$CC,$B5,$A4 ; $D037B5
    db $FF,$8A,$EE,$00,$10,$AA,$43,$E0,$6F,$3F,$1B,$A2,$FF,$3A,$B5,$01 ; $D037C5
    db $B7,$A2,$8A,$0F,$F0,$0F,$BA,$B5,$01,$FB,$22,$BB,$3F,$0F,$AF,$B5 ; $D037D5
    db $F0,$01,$BB,$2F,$04,$3B,$B9,$0F,$B2,$B5,$03,$10,$FF,$01,$01,$0C ; $D037E5
    db $0B,$EA,$19,$BF,$10,$0A,$80,$90,$00,$10,$0E,$01,$F0,$80,$70,$E8 ; $D037F5
    db $73,$90,$80,$10,$F1,$02,$0F,$60,$A0,$FF,$1B,$BC,$F7,$16,$01,$F4 ; $D03805
    db $23,$BF,$02,$71,$EB,$F8,$2F,$03,$0F,$06,$75,$FB,$1A,$92,$3F,$04 ; $D03815
    db $03,$A8,$85,$08,$07,$41,$06,$3E,$0C,$F0,$60,$80,$F1,$76,$01,$3D ; $D03825
    db $00,$03,$02,$18,$17,$C1,$BE,$0E,$F2,$7F,$70,$19,$CE,$7F,$40,$8F ; $D03835
    db $B8,$6B,$3F,$00,$FF,$25,$31,$C0,$8C,$AA,$60,$AF,$0F,$40,$C0,$11 ; $D03845
    db $FF,$3B,$CA,$C0,$40,$FB,$22,$80,$34,$3F,$C0,$0F,$F0,$43,$3C,$10 ; $D03855
    db $1F,$0F,$04,$03,$01,$50,$D6,$F0,$C0,$BC,$30,$7E,$2F,$1A,$7F,$0B ; $D03865
    db $E0,$1F,$FF,$00,$28,$01,$04,$1F,$F7,$07,$5C,$D2,$18,$7B,$FC,$F3 ; $D03875
    db $07,$3F,$FC,$D2,$26,$3F,$00,$39,$FE,$01,$F8,$07,$E1,$1E,$04,$1F ; $D03885
    db $F8,$10,$E0,$01,$70,$D6,$07,$01,$1E,$06,$1F,$FA,$18,$E8,$19,$00 ; $D03895
    db $3F,$7F,$81,$7E,$84,$78,$CB,$37,$40,$40,$E9,$7F,$01,$7E,$30,$06 ; $D038A5
    db $7A,$37,$60,$A0,$80,$7F,$80,$1F,$7D,$75,$07,$0F,$EF,$1F,$37,$11 ; $D038B5
    db $7B,$3F,$25,$3D,$83,$2F,$08,$07,$02,$FC,$04,$25,$01,$FF,$18,$17 ; $D038C5
    db $06,$05,$01,$01,$E9,$20,$3E,$54,$B5,$87,$78,$26,$21,$1E,$47,$A8 ; $D038D5
    db $F5,$0F,$80,$78,$60,$5E,$1E,$16,$47,$FC,$03,$DD,$BD,$57,$3B,$FF ; $D038E5
    db $47,$8B,$D6,$02,$B1,$4F,$0F,$19,$7E,$BF,$07,$FF,$7E,$FF,$26,$FF ; $D038F5
    db $D6,$75,$75,$3D,$DD,$3B,$FF,$C3,$FB,$80,$ED,$03,$D6,$1F,$FF,$03 ; $D03905
    db $FD,$19,$6A,$3B,$0F,$00,$01,$C0,$3F,$08,$F0,$20,$94,$A8,$41,$0F ; $D03915
    db $01,$3F,$0F,$0D,$F5,$30,$D0,$1C,$93,$41,$22,$1C,$A1,$73,$C0,$82 ; $D03925
    db $3D,$C1,$3E,$18,$07,$00,$FA,$63,$5D,$18,$E8,$20,$18,$E0,$0C,$F4 ; $D03935
    db $0F,$38,$27,$3F,$07,$04,$24,$63,$C8,$7F,$04,$F8,$F8,$02,$71,$30 ; $D03945
    db $80,$80,$7F,$06,$FA,$E0,$7C,$9F,$19,$87,$3F,$7C,$18,$60,$40,$83 ; $D03955
    db $05,$0F,$1C,$64,$60,$20,$E3,$27,$43,$E5,$04,$0F,$80,$EE,$32,$3B ; $D03965
    db $3D,$7D,$03,$16,$0F,$E3,$0A,$00,$0C,$03,$E0,$06,$62,$1C,$13,$3C ; $D03975
    db $03,$02,$25,$72,$E0,$7B,$80,$06,$EE,$87,$0F,$60,$40,$81,$22,$3E ; $D03985
    db $04,$04,$09,$09,$0A,$CD,$00,$05,$A1,$09,$AD,$EF,$08,$0F,$19,$C1 ; $D03995
    db $B5,$20,$93,$93,$11,$C0,$00,$91,$91,$21,$21,$3D,$C0,$C0,$0A,$0F ; $D039A5
    db $E0,$1A,$00,$31,$31,$4A,$4A,$0D,$39,$39,$08,$08,$07,$EF,$0E,$0F ; $D039B5
    db $18,$01,$00,$8C,$8C,$52,$52,$C4,$C4,$B7,$03,$07,$BC,$0E,$0F,$18 ; $D039C5
    db $00,$1D,$69,$1D,$EB,$3D,$00,$0E,$0F,$E0,$18,$00,$2E,$2E,$28,$28 ; $D039D5
    db $36,$EC,$EC,$03,$07,$F7,$0E,$0F,$F8,$1A,$81,$12,$49,$12,$03,$EF ; $D039E5
    db $0E,$0F,$18,$02,$00,$BA,$BA,$93,$93,$92,$9E,$00,$0E,$0F,$F0,$18 ; $D039F5
    db $00,$26,$26,$69,$0E,$69,$AF,$AF,$29,$7B,$00,$0E,$0F,$E8,$19,$00 ; $D03A05
    db $19,$70,$48,$48,$03,$40,$CF,$00,$0E,$78,$0F,$18,$00,$73,$73,$20 ; $D03A15
    db $4A,$4A,$03,$72,$7B,$72,$0E,$0F,$F6,$1C,$FF,$EB,$C7,$03,$4C,$4C ; $D03A25
    db $BC,$0E,$0F,$18,$00,$E9,$06,$E9,$49,$49,$4F,$4F,$03,$DE,$00,$0E ; $D03A35
    db $0F,$F0,$18,$00,$77,$77,$44,$18,$44,$67,$67,$03,$74,$74,$F7,$0E ; $D03A45
    db $0F,$83,$18,$00,$18,$18,$A0,$A0,$07,$03,$84,$84,$99,$99,$BC,$0E ; $D03A55
    db $0F,$18,$00,$06,$07,$06,$09,$09,$0F,$0F,$C7,$02,$AF,$BD,$08,$0F ; $D03A65
    db $18,$00,$A4,$A9,$00,$DE,$B7,$0E,$0F,$F1,$18,$00,$0E,$0E,$A1,$69 ; $D03A75
    db $03,$67,$6F,$BC,$08,$0F,$18,$00,$4C,$38,$4C,$50,$00,$52,$1E,$52 ; $D03A85
    db $4E,$4E,$0E,$0F,$F0,$18,$00,$30,$30,$40,$63,$40,$03,$08,$08,$7B ; $D03A95
    db $03,$0E,$0F,$E0,$20,$7F,$4B,$4B,$F7,$0E,$0F,$80,$18,$00,$99,$99 ; $D03AA5
    db $21,$21,$19,$19,$2D,$05,$05,$BD,$AF,$08,$0F,$E0,$18,$00,$DC,$DC ; $D03AB5
    db $12,$12,$31,$9C,$9C,$03,$D2,$D2,$EF,$0E,$0F,$18,$06,$00,$8B,$8B ; $D03AC5
    db $8A,$8A,$03,$0F,$52,$52,$23,$23,$0E,$78,$0F,$18,$00,$B8,$B8,$50 ; $D03AD5
    db $24,$00,$B9,$B9,$F7,$0E,$0F,$AD,$18,$00,$73,$2D,$06,$06,$DE,$0E ; $D03AE5
    db $0F,$18,$00,$03,$4B,$4B,$6A,$6A,$5A,$5A,$F7,$02,$6F,$BC,$08,$0F ; $D03AF5
    db $18,$00,$9D,$06,$9D,$51,$51,$59,$59,$03,$DE,$07,$0E,$0F,$F0,$18 ; $D03B05
    db $00,$C1,$C1,$21,$43,$21,$03,$7B,$00,$0E,$0F,$C0,$18,$00,$D4,$D4 ; $D03B15
    db $15,$15,$89,$6D,$89,$03,$07,$EF,$0E,$0F,$18,$11,$00,$D1,$D1,$FC ; $D03B25
    db $2F,$00,$DC,$7B,$DC,$0E,$0F,$EE,$1A,$BF,$28,$6C,$28,$03,$AD,$C6 ; $D03B35
    db $7B,$C6,$0E,$0F,$CA,$18,$00,$51,$07,$00,$4A,$4A,$44,$44,$BE,$0E ; $D03B45
    db $0F,$1A,$E7,$FF,$40,$40,$50,$72,$40,$DE,$07,$0E,$0F,$F0,$18,$00 ; $D03B55
    db $89,$89,$8A,$A1,$00,$E9,$E9,$EF,$0E,$0F,$1A,$E8,$FF,$23,$23,$32 ; $D03B65
    db $1B,$32,$22,$22,$07,$DF,$0E,$0F,$1C,$50,$7F,$CC,$CC,$42,$42,$B7 ; $D03B75
    db $7D,$2F,$08,$0F,$E0,$18,$00,$E3,$E3,$81,$81,$31,$C1,$C1,$03,$E1 ; $D03B85
    db $E1,$EF,$0E,$0F,$18,$12,$00,$98,$98,$93,$6F,$18,$18,$DE,$0E,$0F ; $D03B95
    db $18,$00,$36,$33,$33,$AB,$03,$37,$0A,$0A,$F3,$BC,$0E,$0F,$18,$00 ; $D03BA5
    db $9C,$01,$9C,$51,$51,$99,$99,$11,$11,$6A,$3D,$6F,$08,$0F,$E2,$18 ; $D03BB5
    db $00,$DD,$DD,$52,$EF,$C9,$7B,$C9,$0E,$0F,$D8,$18,$00,$27,$29,$29 ; $D03BC5
    db $81,$03,$26,$26,$EF,$0E,$0F,$1A,$E8,$BF,$6C,$6C,$54,$47,$54,$7D ; $D03BD5
    db $B1,$0E,$0F,$E0,$18,$00,$49,$49,$4A,$4A,$35,$7A,$7A,$03,$BF,$EF ; $D03BE5
    db $EF,$08,$0F,$18,$12,$00,$90,$90,$93,$31,$9C,$9C,$DE,$0E,$0F,$18 ; $D03BF5
    db $00,$31,$CE,$CE,$EB,$2E,$2E,$B7,$03,$07,$BE,$0E,$0F,$1A,$F8,$3F ; $D03C05
    db $A9,$39,$39,$2D,$09,$09,$6F,$2F,$BE,$08,$0F,$1A,$E1,$FF,$20,$20 ; $D03C15
    db $30,$30,$B1,$03,$33,$02,$02,$EF,$0C,$0F,$18,$01,$00,$24,$24,$26 ; $D03C25
    db $26,$25,$25,$11,$B1,$EF,$0E,$0F,$1A,$85,$FF,$A0,$0F,$00,$9A,$9A ; $D03C35
    db $0E,$78,$0F,$18,$00,$3B,$3B,$0D,$22,$22,$33,$33,$03,$BD,$00,$0E ; $D03C45
    db $0F,$E0,$18,$00,$88,$88,$D8,$D8,$36,$A8,$A8,$05,$00,$F7,$0E,$0F ; $D03C55
    db $8D,$18,$00,$39,$39,$ED,$0D,$03,$00,$EF,$0E,$0F,$18,$01,$00,$D2 ; $D03C65
    db $D2,$1A,$1A,$96,$96,$FF,$02,$EF,$F7,$08,$0F,$8C,$18,$00,$E6,$E6 ; $D03C75
    db $A9,$C8,$07,$C8,$89,$89,$E7,$E7,$BE,$0E,$0F,$1A,$B2,$3F,$8B,$EF ; $D03C85
    db $7F,$6F,$DF,$08,$0F,$1A,$50,$3F,$50,$50,$58,$58,$D6,$03,$8F,$EF ; $D03C95
    db $08,$7D,$0F,$1A,$92,$FF,$A6,$2F,$D5,$EF,$F7,$08,$0F,$C8,$1A,$3F ; $D03CA5
    db $28,$28,$2C,$6D,$2C,$03,$F3,$EF,$0E,$0F,$18,$0E,$00,$E8,$E8,$48 ; $D03CB5
    db $63,$00,$EF,$45,$45,$DF,$0E,$0F,$1A,$4B,$FF,$A5,$85,$00,$BD,$BD ; $D03CC5
    db $B7,$EF,$BC,$08,$0F,$1C,$BF,$CC,$7F,$CC,$02,$9E,$2F,$08,$0F,$F1 ; $D03CD5
    db $20,$00,$80,$80,$EF,$16,$0F,$10,$06,$00,$01,$01,$02,$02,$03,$87 ; $D03CE5
    db $07,$BF,$0E,$0F,$1A,$92,$7F,$12,$12,$39,$6F,$FF,$02,$7D,$7F,$06 ; $D03CF5
    db $0F,$E1,$18,$00,$8E,$8E,$89,$43,$00,$EE,$EE,$DE,$0E,$0F,$18,$00 ; $D03D05
    db $22,$27,$27,$BB,$71,$03,$7B,$07,$0E,$0F,$C1,$18,$00,$71,$71,$4A ; $D03D15
    db $4A,$8B,$03,$48,$48,$5F,$EF,$DF,$08,$0F,$1A,$80,$77,$01,$01,$81 ; $D03D25
    db $81,$41,$41,$B6,$6F,$F7,$08,$0F,$FA,$1A,$FF,$11,$18,$11,$19,$19 ; $D03D35
    db $03,$10,$10,$F7,$0E,$0F,$F6,$20,$3F,$DF,$6F,$F7,$08,$0F,$89,$18 ; $D03D45
    db $00,$74,$74,$51,$6F,$6E,$3D,$2F,$08,$0F,$E0,$18,$00,$A5,$A5,$B5 ; $D03D55
    db $B5,$35,$AD,$AD,$05,$A3,$EF,$DE,$08,$0F,$18,$00,$03,$C2,$C2,$02 ; $D03D65
    db $02,$82,$82,$6F,$03,$07,$0E,$78,$0F,$18,$00,$60,$60,$31,$80,$80 ; $D03D75
    db $03,$10,$10,$BD,$03,$0E,$0F,$E0,$18,$00,$61,$61,$90,$90,$36,$F0 ; $D03D85
    db $F0,$03,$00,$F7,$0E,$0F,$F2,$1A,$BF,$92,$1B,$92,$9C,$9C,$03,$7B ; $D03D95
    db $00,$0E,$0F,$C0,$18,$00,$67,$67,$94,$94,$F4,$63,$F4,$03,$97,$97 ; $D03DA5
    db $DE,$0E,$0F,$18,$00,$00,$3A,$3A,$A3,$A3,$B2,$B2,$A2,$A2,$DE,$07 ; $D03DB5
    db $0E,$0F,$F1,$18,$00,$72,$72,$2F,$37,$EF,$00,$BC,$0E,$0F,$18,$00 ; $D03DC5
    db $43,$06,$43,$44,$44,$84,$84,$03,$DE,$07,$0E,$0F,$F0,$18,$00,$38 ; $D03DD5
    db $38,$A1,$18,$A1,$B1,$B1,$03,$20,$20,$F7,$0E,$0F,$80,$18,$00,$C8 ; $D03DE5
    db $C8,$2D,$2D,$2A,$2A,$FB,$02,$FB,$EF,$08,$0F,$C1,$18,$00,$B9,$B9 ; $D03DF5
    db $A2,$A2,$1A,$2F,$DE,$7B,$EF,$08,$0F,$EA,$1C,$FF,$1E,$16,$1E,$52 ; $D03E05
    db $52,$FF,$AF,$BC,$08,$0F,$18,$00,$0C,$39,$0C,$10,$00,$8F,$33,$0E ; $D03E15
    db $0E,$0E,$7F,$0F,$1A,$01,$7F,$94,$94,$E4,$E4,$8F,$03,$93,$93,$0E ; $D03E25
    db $78,$0F,$18,$00,$25,$25,$8E,$E3,$AF,$00,$19,$19,$DF,$0E,$0F,$1E ; $D03E35
    db $E8,$3F,$01,$01,$09,$4A,$09,$BE,$B1,$08,$0F,$FA,$1A,$74,$BF,$EB ; $D03E45
    db $0F,$00,$D3,$D3,$0E,$7D,$0F,$1A,$D4,$7F,$40,$00,$B4,$FB,$AF,$08 ; $D03E55
    db $0F,$F4,$1A,$7F,$68,$AF,$7B,$71,$0E,$0F,$C0,$18,$00,$97,$97,$D4 ; $D03E65
    db $D4,$B4,$7C,$B4,$02,$FB,$AF,$08,$0F,$C0,$18,$00,$09,$09,$8A,$8A ; $D03E75
    db $89,$1B,$89,$88,$88,$07,$DE,$0E,$0F,$18,$00,$08,$84,$84,$04,$04 ; $D03E85
    db $93,$6F,$83,$83,$DF,$0E,$0F,$1A,$41,$BF,$A1,$A1,$8B,$03,$85,$85 ; $D03E95
    db $6F,$EF,$08,$7D,$0F,$1A,$63,$FF,$FB,$EF,$03,$7B,$07,$0E,$0F,$E2 ; $D03EA5
    db $1A,$7F,$4F,$00,$02,$8F,$7F,$06,$78,$0F,$18,$00,$2E,$2E,$08,$A9 ; $D03EB5
    db $A9,$69,$69,$EF,$F3,$BC,$0E,$0F,$18,$00,$08,$10,$08,$88,$88,$03 ; $D03EC5
    db $3D,$8E,$8E,$0E,$0F,$E0,$18,$00,$9B,$9B,$A2,$A2,$36,$A3,$A3,$03 ; $D03ED5
    db $07,$F7,$0E,$0F,$80,$18,$00,$A4,$A4,$35,$35,$2C,$2C,$37,$24,$24 ; $D03EE5
    db $07,$BF,$0E,$0F,$1A,$FA,$FF,$AD,$2C,$2F,$FF,$02,$3D,$3F,$06,$0F ; $D03EF5
    db $F3,$1A,$00,$70,$08,$0C,$00,$04,$08,$1E,$18,$1E,$08,$0E,$18,$3F ; $D03F05
    db $E6,$0E,$0C,$E0,$12,$16,$08,$06,$C4,$03,$18,$27,$5A,$83,$0C,$A2 ; $D03F15
    db $01,$1E,$8F,$01,$3F,$12,$29,$46,$02,$00,$EF,$12,$0F,$18,$1B,$00 ; $D03F25
    db $26,$26,$B3,$7B,$00,$12,$0F,$C0,$18,$00,$E9,$E9,$8D,$8D,$CB,$7B ; $D03F35
    db $CB,$12,$0F,$F9,$1A,$07,$37,$42,$42,$03,$BF,$12,$0F,$1A,$DF,$47 ; $D03F45
    db $06,$F3,$F3,$DF,$08,$0F,$1C,$E1,$47,$38,$38,$EF,$12,$0F,$18,$38 ; $D03F55
    db $00,$21,$00,$E1,$7B,$E1,$12,$0F,$C0,$18,$00,$2A,$2A,$AB,$AB,$6A ; $D03F65
    db $7B,$6A,$12,$0F,$C1,$18,$00,$5D,$5D,$49,$49,$F6,$04,$7B,$73,$08 ; $D03F75
    db $0F,$FD,$1E,$07,$F7,$12,$0F,$FF,$1C,$07,$7B,$00,$12,$0F,$FB,$1C ; $D03F85
    db $49,$F6,$06,$FB,$B3,$08,$0F,$CE,$11,$00,$1F,$59,$01,$05,$EC,$2A ; $D03F95
    db $1E,$00,$FF,$E7,$01,$03,$05,$42,$81,$20,$1C,$C1,$13,$1E,$00,$C3 ; $D03FA5
    db $00,$3C,$E0,$0F,$3F,$22,$C1,$10,$0C,$03,$00,$FE,$10,$E0,$08,$07 ; $D03FB5
    db $C6,$0E,$3F,$E3,$00,$58,$07,$FE,$00,$F0,$00,$0F,$83,$15,$7F,$84 ; $D03FC5
    db $78,$02,$01,$C3,$14,$7F,$FC,$00,$03,$C1,$15,$3F,$40,$3F,$40,$80 ; $D03FD5
    db $E1,$14,$3F,$7F,$00,$C0,$EA,$15,$3F,$7B,$05,$2A,$1E,$FC,$04,$CB ; $D03FE5
    db $F0,$29,$20,$38,$3F,$18,$06,$1F,$38,$7F,$78,$7F,$07,$5C,$78,$30 ; $D03FF5
    db $FF,$BE,$81,$F8,$07,$07,$18,$27,$38,$47,$38,$07,$03,$78,$87,$78 ; $D04005
    db $62,$21,$D0,$3F,$00,$0A,$01,$7F,$3C,$01,$FF,$11,$82,$80,$A6,$01 ; $D04015
    db $DC,$3D,$C0,$E0,$06,$0E,$E3,$09,$1F,$00,$E0,$EE,$0A,$35,$03,$7B ; $D04025
    db $03,$14,$0F,$C1,$18,$00,$28,$28,$A6,$A6,$EF,$14,$0F,$18,$07,$00 ; $D04035
    db $89,$89,$E9,$E9,$BC,$14,$0F,$18,$00,$0A,$7D,$0A,$06,$FD,$23,$08 ; $D04045
    db $0F,$E0,$18,$00,$24,$24,$B8,$B8,$F7,$14,$0F,$BE,$1A,$3F,$06,$FE ; $D04055
    db $23,$08,$0F,$FB,$1A,$9E,$35,$C1,$C1,$14,$0F,$FB,$1A,$EF,$35,$00 ; $D04065
    db $14,$79,$0F,$18,$00,$49,$CF,$00,$14,$78,$0F,$18,$00,$12,$12,$FE ; $D04075
    db $06,$3D,$67,$08,$0F,$E0,$18,$00,$94,$94,$E3,$E3,$F7,$14,$0F,$DF ; $D04085
    db $1A,$33,$F9,$06,$A7,$F7,$08,$0F,$DC,$25,$3B,$1F,$02,$7B,$1C,$15 ; $D04095
    db $1E,$A8,$80,$F9,$09,$3F,$00,$FC,$20,$C0,$10,$0F,$00,$FF,$04,$75 ; $D040A5
    db $F8,$4F,$BB,$FF,$11,$09,$E5,$33,$FE,$D2,$72,$1F,$9D,$5F,$BB,$FF ; $D040B5
    db $0C,$70,$81,$FF,$88,$70,$04,$38,$03,$A0,$79,$21,$C3,$47,$E7,$04 ; $D040C5
    db $03,$EA,$0A,$7B,$F8,$0E,$00,$07,$00,$BF,$07,$79,$E1,$00,$F7,$00 ; $D040D5
    db $DC,$0B,$5E,$BF,$22,$03,$1C,$01,$C0,$20,$CF,$01,$07,$79,$F0,$04 ; $D040E5
    db $F3,$80,$B0,$09,$3F,$39,$3E,$00,$C1,$3A,$00,$EF,$EE,$79,$F0,$7D ; $D040F5
    db $3F,$0B,$AE,$92,$DF,$60,$BD,$A2,$EF,$08,$07,$80,$67,$70,$20,$84 ; $D04105
    db $9C,$09,$3F,$DF,$B3,$79,$E0,$01,$3F,$87,$F7,$16,$1C,$FA,$0B,$FA ; $D04115
    db $9F,$17,$1E,$C1,$00,$0F,$03,$07,$F7,$04,$FB,$C7,$6D,$04,$01,$DD ; $D04125
    db $05,$2A,$0F,$CF,$FA,$14,$A8,$97,$FF,$40,$7F,$02,$E8,$EF,$3D,$BD ; $D04135
    db $3F,$7F,$C0,$75,$3F,$80,$07,$F0,$0F,$C0,$7E,$40,$1F,$03,$2B,$86 ; $D04145
    db $FF,$BE,$02,$07,$00,$B8,$E2,$07,$01,$1F,$04,$3F,$10,$7F,$82,$7F ; $D04155
    db $80,$7F,$88,$7F,$B4,$BF,$80,$75,$07,$03,$E1,$1E,$0C,$BB,$31,$A1 ; $D04165
    db $20,$BF,$27,$BD,$08,$18,$D8,$C7,$77,$1F,$5D,$81,$FF,$EF,$01,$01 ; $D04175
    db $07,$01,$00,$F8,$07,$F9,$06,$F8,$87,$8D,$05,$FC,$03,$01,$80,$07 ; $D04185
    db $FD,$0E,$FF,$FF,$BF,$1E,$30,$FF,$7F,$05,$F3,$73,$F3,$63,$F3,$07 ; $D04195
    db $3F,$12,$DE,$03,$39,$0D,$3F,$00,$68,$B0,$FA,$0C,$7F,$C2,$1F,$F0 ; $D041A5
    db $C1,$7F,$0F,$F4,$7F,$CB,$AE,$1E,$3D,$E0,$C0,$78,$30,$DE,$8C,$F7 ; $D041B5
    db $E3,$E1,$81,$FF,$F9,$EF,$84,$06,$06,$9E,$FE,$FE,$14,$3F,$9C,$60 ; $D041C5
    db $F5,$71,$7F,$FD,$7D,$E8,$26,$6F,$40,$DF,$40,$7F,$02,$7E,$07,$1E ; $D041D5
    db $70,$3F,$80,$07,$FF,$FC,$10,$80,$FC,$3B,$A0,$B8,$13,$E6,$C0,$00 ; $D041E5
    db $03,$2F,$FC,$00,$10,$C0,$E0,$FE,$04,$2D,$FC,$E7,$87,$BF,$03,$1F ; $D041F5
    db $05,$A3,$D0,$1F,$01,$1E,$E7,$03,$22,$DF,$09,$1F,$06,$3E,$41,$09 ; $D04205
    db $00,$01,$E0,$04,$F3,$02,$01,$80,$7C,$A5,$E5,$3E,$47,$09,$1E,$E8 ; $D04215
    db $75,$72,$03,$7E,$D3,$47,$E5,$09,$F9,$78,$C3,$04,$F9,$40,$80,$21 ; $D04225
    db $1E,$80,$7F,$50,$20,$88,$07,$F1,$0B,$9F,$00,$FD,$C8,$B6,$C3,$C0 ; $D04235
    db $70,$00,$8F,$C6,$0B,$3F,$40,$3C,$14,$F7,$01,$79,$E7,$0B,$1F,$7C ; $D04245
    db $2C,$12,$79,$FC,$0C,$3E,$40,$1D,$38,$00,$FB,$03,$B9,$FC,$01,$FC ; $D04255
    db $8F,$EB,$FE,$0A,$35,$20,$78,$1E,$1F,$BF,$FD,$12,$1F,$FF,$03,$27 ; $D04265
    db $1C,$40,$3F,$CF,$16,$60,$C0,$09,$BE,$00,$2F,$1F,$3E,$03,$0B,$04 ; $D04275
    db $71,$3B,$C9,$0C,$07,$FF,$00,$05,$97,$3B,$3F,$CD,$16,$3B,$D7,$FF ; $D04285
    db $CA,$FF,$C0,$FF,$C4,$BF,$80,$7F,$A0,$FF,$40,$FF,$80,$FF,$30,$1B ; $D04295
    db $D1,$19,$D1,$17,$D3,$5F,$DF,$BF,$17,$78,$30,$FF,$7F,$7F,$4F,$E0 ; $D042A5
    db $18,$BF,$F9,$86,$21,$F9,$06,$03,$D2,$01,$83,$30,$FD,$02,$01,$9E ; $D042B5
    db $1E,$9E,$03,$9E,$FF,$1E,$FF,$DE,$FF,$07,$00,$73,$D2,$D2,$33,$C1 ; $D042C5
    db $19,$FF,$FF,$04,$8B,$12,$CF,$78,$86,$03,$FC,$0F,$F1,$7D,$C2,$01 ; $D042D5
    db $FE,$C3,$3F,$06,$02,$01,$00,$FA,$32,$FE,$FE,$FF,$FA,$C7,$83,$C7 ; $D042E5
    db $42,$3F,$3C,$BA,$18,$3F,$2A,$18,$01,$9B,$80,$40,$C0,$80,$C0,$A8 ; $D042F5
    db $03,$0E,$F0,$EC,$B1,$40,$8A,$22,$F0,$D7,$3F,$FE,$C3,$01,$BB,$C0 ; $D04305
    db $E9,$04,$12,$FB,$03,$FD,$E0,$03,$DE,$FD,$01,$14,$1E,$EB,$FA,$83 ; $D04315
    db $0A,$1F,$57,$F7,$96,$A2,$0F,$06,$01,$08,$F0,$09,$9A,$58,$BC,$F7 ; $D04325
    db $B3,$C1,$07,$9F,$88,$0E,$87,$FF,$40,$80,$20,$47,$62,$DB,$0E,$3F ; $D04335
    db $09,$3D,$47,$C1,$DB,$0F,$3F,$F7,$06,$62,$F4,$28,$1E,$5B,$33,$DD ; $D04345
    db $03,$2A,$20,$C0,$FF,$E4,$09,$63,$1F,$3F,$9F,$7B,$02,$D7,$03,$E0 ; $D04355
    db $FA,$12,$C4,$10,$31,$11,$0E,$1F,$09,$06,$E5,$01,$10,$18,$7F,$2C ; $D04365
    db $CE,$02,$B0,$1C,$3C,$44,$0F,$0A,$C0,$7F,$8B,$00,$E0,$40,$1F,$68 ; $D04375
    db $1F,$60,$0F,$39,$F0,$0E,$01,$71,$33,$21,$3F,$1F,$43,$01,$6D,$04 ; $D04385
    db $6E,$04,$F6,$04,$F4,$05,$F5,$05,$A7,$20,$D8,$13,$FF,$FE,$06,$01 ; $D04395
    db $F8,$07,$FA,$05,$01,$32,$F8,$87,$1A,$F9,$E1,$06,$FC,$03,$F3,$E1 ; $D043A5
    db $FF,$FF,$AD,$AD,$ED,$ED,$FF,$D2,$2A,$5E,$1F,$5E,$7B,$7B,$18,$01 ; $D043B5
    db $3F,$1F,$E0,$3F,$C0,$DD,$16,$01,$85,$FF,$41,$FD,$01,$DD,$21,$B8 ; $D043C5
    db $01,$3F,$FE,$00,$70,$60,$EC,$C9,$DE,$89,$18,$0B,$37,$AA,$8B,$01 ; $D043D5
    db $93,$18,$3F,$80,$E4,$A8,$0C,$02,$02,$A2,$DC,$FC,$C0,$84,$B8,$C0 ; $D043E5
    db $13,$80,$86,$40,$9E,$C4,$04,$60,$DC,$9C,$0C,$01,$54,$8E,$3E,$89 ; $D043F5
    db $FC,$16,$8F,$7F,$0A,$BF,$20,$93,$17,$1E,$00,$8F,$35,$13,$FC,$7F ; $D04405
    db $47,$35,$FE,$13,$7F,$64,$18,$80,$55,$7B,$FF,$D5,$C1,$F7,$0E,$1E ; $D04415
    db $1E,$C0,$7F,$15,$3F,$91,$05,$01,$EF,$16,$1E,$0C,$E7,$1F,$A3,$56 ; $D04425
    db $75,$C1,$DD,$83,$1F,$1E,$87,$0B,$60,$95,$0A,$79,$FF,$8F,$87,$0C ; $D04435
    db $5D,$7F,$6B,$12,$0D,$2E,$13,$2E,$17,$24,$1B,$00,$1F,$14,$0A,$10 ; $D04445
    db $0E,$11,$0E,$01,$1C,$01,$3A,$03,$34,$03,$18,$03,$1C,$02,$1D,$07 ; $D04455
    db $19,$06,$18,$F0,$BD,$01,$4D,$1F,$01,$EB,$07,$00,$A7,$0E,$E0,$1E ; $D04465
    db $D1,$7F,$B0,$6F,$E0,$6F,$74,$B7,$C2,$07,$F8,$E1,$1E,$F5,$15,$C5 ; $D04475
    db $34,$C6,$34,$97,$76,$97,$C3,$43,$81,$75,$95,$1F,$F9,$03,$F9,$F7 ; $D04485
    db $FA,$0E,$5F,$28,$01,$E8,$7B,$68,$A7,$07,$A3,$07,$01,$11,$77,$77 ; $D04495
    db $5E,$5E,$40,$40,$D4,$03,$05,$F7,$C7,$47,$7F,$3F,$E0,$18,$3F,$DF ; $D044A5
    db $23,$22,$DC,$22,$81,$3B,$FC,$4B,$FF,$72,$10,$F8,$47,$E0,$1F,$28 ; $D044B5
    db $09,$AB,$89,$9B,$88,$BB,$98,$7B,$30,$F0,$E0,$C0,$8F,$80,$F5,$19 ; $D044C5
    db $3F,$D7,$DA,$E4,$FD,$F2,$CD,$DA,$6D,$F2,$70,$FE,$02,$CC,$12,$FC ; $D044D5
    db $0A,$FC,$20,$CE,$00,$D7,$30,$EB,$90,$66,$88,$26,$F8,$36,$68,$96 ; $D044E5
    db $34,$C2,$E8,$01,$3D,$4D,$FE,$01,$F6,$14,$8F,$01,$10,$00,$17,$29 ; $D044F5
    db $7D,$1E,$06,$5E,$60,$FE,$29,$1E,$F1,$05,$20,$10,$62,$E7,$16,$3F ; $D04505
    db $72,$D1,$0B,$F9,$E3,$04,$20,$01,$72,$DE,$0C,$3D,$02,$3F,$7D,$73 ; $D04515
    db $0B,$BE,$BF,$04,$20,$3F,$45,$22,$0A,$BE,$5E,$04,$3F,$78,$67,$16 ; $D04525
    db $BF,$01,$08,$78,$31,$15,$1E,$00,$39,$F1,$09,$1D,$1A,$05,$74,$12 ; $D04535
    db $0D,$24,$1B,$28,$13,$4A,$35,$53,$2C,$0C,$33,$10,$0F,$05,$19,$09 ; $D04545
    db $15,$03,$1B,$03,$37,$05,$35,$0C,$6C,$00,$33,$E8,$FC,$4E,$1F,$15 ; $D04555
    db $C1,$7F,$7F,$09,$09,$85,$BF,$10,$CB,$EF,$D0,$2F,$3C,$C3,$C3,$1C ; $D04565
    db $44,$BB,$19,$E6,$85,$7A,$7A,$85,$E0,$EF,$20,$2F,$C0,$03,$0E,$3C ; $D04575
    db $BB,$BB,$E6,$E6,$1F,$0E,$00,$85,$18,$0E,$3F,$7F,$9B,$75,$85,$03 ; $D04585
    db $FC,$B4,$4A,$4A,$B5,$20,$DF,$0D,$72,$F1,$0C,$48,$66,$FC,$02,$4B ; $D04595
    db $00,$B5,$B5,$DF,$DF,$72,$F2,$0C,$0E,$FA,$19,$F6,$FF,$7F,$B8,$50 ; $D045A5
    db $63,$9C,$94,$6B,$2A,$D4,$5A,$A5,$21,$DE,$DE,$21,$23,$9C,$63,$06 ; $D045B5
    db $6B,$D4,$D5,$A5,$A5,$0E,$3D,$00,$21,$18,$3F,$74,$62,$9C,$A0,$5E ; $D045C5
    db $79,$86,$45,$9A,$54,$AB,$84,$73,$78,$87,$02,$FC,$0C,$92,$44,$5A ; $D045D5
    db $80,$86,$98,$BB,$A8,$AB,$70,$7B,$EE,$15,$6E,$FC,$1E,$B3,$02,$3D ; $D045E5
    db $7F,$FE,$11,$9F,$07,$0A,$63,$9A,$80,$D4,$18,$20,$00,$07,$14,$02 ; $D045F5
    db $14,$00,$15,$1D,$01,$17,$0E,$DE,$11,$78,$01,$08,$1E,$00,$16,$F0 ; $D04605
    db $14,$1E,$00,$40,$3E,$02,$08,$B2,$80,$16,$08,$52,$01,$99,$42,$8C ; $D04615
    db $00,$4A,$E0,$08,$1F,$7E,$00,$BA,$00,$14,$96,$00,$5A,$B8,$7B,$CE ; $D04625
    db $0A,$1E,$3A,$00,$52,$12,$F3,$52,$80,$F7,$50,$23,$00,$51,$F7,$09 ; $D04635
    db $1E,$42,$F3,$52,$70,$F7,$73,$F6,$0A,$1E,$00,$70,$23,$01,$22,$00 ; $D04645
    db $94,$39,$B7,$94,$AE,$EC,$26,$1E,$00,$65,$E8,$D4,$72,$A5,$01,$2D ; $D04655
    db $AB,$74,$E6,$78,$2F,$12,$1E,$00,$E7,$F6,$0A,$1E,$00,$74,$29,$38 ; $D04665
    db $F3,$21,$01,$01,$C7,$01,$20,$19,$3D,$07,$08,$1E,$D1,$F3,$35,$1E ; $D04675
    db $3F,$09,$09,$9F,$7F,$0B,$E3,$50,$DF,$16,$20,$08,$0F,$7F,$3F,$08 ; $D04685
    db $97,$6E,$07,$9E,$07,$0F,$3F,$14,$3F,$37,$1E,$E1,$21,$FA,$05,$D5 ; $D04695
    db $E1,$F8,$07,$A3,$88,$75,$7F,$1E,$14,$87,$79,$3F,$C0,$FB,$09,$B0 ; $D046A5
    db $F3,$0A,$FE,$E3,$11,$00,$78,$80,$F8,$09,$F0,$FE,$08,$3C,$C0,$16 ; $D046B5
    db $00,$11,$A3,$01,$10,$E8,$0C,$1A,$F5,$1B,$1E,$41,$B3,$40,$8A,$F6 ; $D046C5
    db $0E,$27,$1A,$00,$0F,$B3,$CA,$12,$3A,$1E,$00,$07,$92,$51,$50,$21 ; $D046D5
    db $B8,$12,$20,$1E,$00,$79,$71,$14,$3F,$1C,$D0,$94,$14,$F7,$12,$20 ; $D046E5
    db $87,$17,$1E,$00,$01,$C6,$43,$94,$E5,$CF,$12,$20,$C7,$16,$03,$1E ; $D046F5
    db $00,$28,$11,$00,$09,$A1,$C1,$01,$E6,$10,$20,$39,$1E,$E7,$03,$9E ; $D04705
    db $11,$1E,$00,$00                                                 ; $D04715
; ---- end of region ----


; ---- RNC method 2 block: 16341 bytes packed, 20708 unpacked (tools/rnc.py) ($D04719-$D086FF) ----
    db $52,$4E,$43,$02,$00,$00,$50,$E4,$00,$00,$3F,$D5,$04,$5D,$33,$47 ; $D04719
    db $04,$02,$05,$00,$00,$84,$D7,$08,$C6,$10,$08,$11,$4A,$19,$0C,$29 ; $D04729
    db $8C,$21,$CC,$29,$0E,$32,$4E,$3A,$52,$42,$90,$42,$94,$4A,$D6,$4A ; $D04739
    db $18,$53,$5A,$5B,$18,$00,$20,$51,$22,$00,$01,$70,$00,$02,$00,$03 ; $D04749
    db $00,$04,$00,$05,$00,$06,$00,$07,$A5,$11,$D7,$08,$00,$09,$00,$0A ; $D04759
    db $00,$0B,$00,$0C,$00,$0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12 ; $D04769
    db $00,$13,$00,$14,$00,$15,$00,$16,$00,$17,$00,$03,$3B,$19,$00,$1A ; $D04779
    db $00,$1B,$80,$29,$1C,$00,$1D,$00,$1E,$38,$00,$1F,$4B,$21,$2E,$00 ; $D04789
    db $22,$1E,$00,$23,$00,$24,$00,$25,$00,$26,$00,$27,$00,$28,$01,$01 ; $D04799
    db $5E,$29,$BC,$00,$2A,$00,$2B,$00,$2C,$00,$2D,$00,$2E,$00,$2F,$00 ; $D047A9
    db $30,$00,$31,$00,$32,$00,$33,$00,$34,$00,$35,$00,$36,$00,$37,$00 ; $D047B9
    db $38,$00,$39,$00,$3A,$00,$3B,$00,$3C,$00,$3D,$00,$3E,$00,$3F,$00 ; $D047C9
    db $40,$00,$41,$00,$42,$00,$43,$01,$3D,$44,$2F,$00,$45,$54,$00,$46 ; $D047D9
    db $00,$47,$00,$48,$00,$49,$00,$4A,$00,$4B,$00,$4C,$00,$4D,$00,$4E ; $D047E9
    db $00,$4F,$00,$50,$00,$51,$00,$52,$00,$53,$00,$54,$00,$55,$00,$56 ; $D047F9
    db $00,$57,$00,$58,$00,$59,$00,$5A,$00,$5B,$00,$5C,$00,$5D,$00,$5E ; $D04809
    db $00,$5F,$3B,$5F,$60,$EE,$00,$61,$00,$62,$00,$63,$00,$64,$00,$65 ; $D04819
    db $00,$66,$00,$67,$00,$68,$00,$69,$00,$6A,$00,$6B,$00,$6C,$00,$6D ; $D04829
    db $00,$6E,$00,$6F,$00,$70,$00,$71,$00,$72,$00,$73,$00,$74,$00,$75 ; $D04839
    db $00,$76,$00,$77,$00,$78,$00,$79,$00,$7A,$00,$7B,$00,$7C,$00,$7D ; $D04849
    db $00,$7E,$00,$7F,$00,$80,$00,$81,$00,$82,$00,$83,$00,$84,$7C,$00 ; $D04859
    db $85,$00,$86,$00,$87,$00,$88,$00,$89,$00,$8A,$00,$8B,$00,$8C,$00 ; $D04869
    db $8D,$00,$8E,$00,$8F,$00,$90,$3F,$5F,$91,$EF,$00,$92,$00,$93,$00 ; $D04879
    db $94,$00,$95,$00,$96,$00,$97,$00,$98,$00,$99,$00,$9A,$00,$9B,$00 ; $D04889
    db $9C,$00,$9D,$00,$9E,$00,$9F,$00,$A0,$00,$A1,$00,$A2,$00,$A3,$00 ; $D04899
    db $A4,$00,$A5,$00,$A6,$00,$A7,$00,$A8,$00,$A9,$00,$AA,$00,$AB,$00 ; $D048A9
    db $AC,$00,$AD,$00,$AE,$00,$AF,$00,$B0,$00,$B1,$00,$B2,$00,$B3,$00 ; $D048B9
    db $B4,$00,$B5,$F7,$00,$B6,$00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$BB ; $D048C9
    db $00,$BC,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00,$C1,$00,$C2,$00,$C3 ; $D048D9
    db $00,$C4,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00,$C9,$00,$CA,$00,$CB ; $D048E9
    db $00,$CC,$00,$CD,$00,$CE,$00,$CF,$00,$D0,$00,$D1,$00,$D2,$00,$D3 ; $D048F9
    db $00,$D4,$00,$D5,$00,$D6,$00,$D7,$00,$D8,$00,$D9,$F0,$00,$DA,$00 ; $D04909
    db $DB,$00,$DC,$00,$DD,$00,$DE,$00,$DF,$00,$E0,$00,$E1,$00,$E2,$00 ; $D04919
    db $E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7,$00,$E8,$00,$E9,$00,$EA,$00 ; $D04929
    db $EB,$00,$EC,$00,$ED,$00,$EE,$00,$EF,$00,$F0,$00,$F1,$00,$F2,$00 ; $D04939
    db $F3,$00,$F4,$00,$F5,$00,$F6,$00,$F7,$00,$F8,$00,$F9,$00,$FA,$00 ; $D04949
    db $FB,$00,$FC,$00,$FD,$00,$FE,$00,$FF,$E8,$1A,$C2,$00,$02,$01,$03 ; $D04959
    db $FF,$01,$04,$01,$05,$01,$06,$01,$07,$01,$08,$01,$09,$01,$0A,$01 ; $D04969
    db $0B,$01,$0C,$01,$0D,$01,$0E,$01,$0F,$01,$10,$01,$11,$01,$12,$01 ; $D04979
    db $13,$01,$14,$01,$15,$01,$16,$01,$17,$01,$18,$01,$19,$01,$1A,$01 ; $D04989
    db $1B,$01,$1C,$01,$1D,$01,$1E,$01,$1F,$01,$20,$01,$21,$01,$22,$01 ; $D04999
    db $23,$01,$24,$01,$25,$01,$26,$01,$27,$7F,$01,$28,$01,$29,$01,$2A ; $D049A9
    db $01,$2B,$01,$2C,$01,$2D,$01,$2E,$01,$2F,$01,$30,$01,$31,$01,$32 ; $D049B9
    db $01,$33,$01,$34,$01,$35,$01,$36,$01,$37,$01,$38,$01,$39,$01,$3A ; $D049C9
    db $01,$3B,$01,$3C,$01,$3D,$01,$3E,$01,$3F,$01,$40,$01,$41,$01,$42 ; $D049D9
    db $01,$43,$01,$44,$01,$45,$01,$46,$01,$47,$01,$48,$01,$49,$01,$4A ; $D049E9
    db $01,$4B,$BF,$DF,$01,$4C,$01,$4D,$01,$4E,$01,$4F,$01,$50,$01,$51 ; $D049F9
    db $01,$52,$01,$53,$01,$54,$01,$55,$01,$56,$01,$57,$01,$58,$01,$59 ; $D04A09
    db $01,$5A,$01,$5B,$01,$5C,$01,$5D,$01,$5E,$01,$5F,$01,$60,$01,$61 ; $D04A19
    db $01,$62,$01,$63,$01,$64,$01,$65,$01,$66,$01,$67,$01,$68,$01,$69 ; $D04A29
    db $01,$6A,$01,$6B,$01,$6C,$01,$6D,$01,$6E,$01,$6F,$EF,$01,$70,$01 ; $D04A39
    db $71,$01,$72,$01,$73,$01,$74,$01,$75,$01,$76,$01,$77,$01,$78,$01 ; $D04A49
    db $79,$01,$7A,$01,$7B,$01,$7C,$01,$7D,$01,$7E,$01,$7F,$01,$80,$01 ; $D04A59
    db $81,$01,$82,$01,$83,$01,$84,$01,$85,$01,$86,$01,$87,$01,$88,$01 ; $D04A69
    db $89,$01,$8A,$01,$8B,$01,$8C,$01,$8D,$01,$8E,$01,$8F,$01,$90,$01 ; $D04A79
    db $91,$01,$92,$01,$93,$F7,$01,$94,$01,$95,$01,$96,$01,$97,$01,$98 ; $D04A89
    db $01,$99,$01,$9A,$01,$9B,$01,$9C,$01,$9D,$01,$9E,$01,$9F,$01,$A0 ; $D04A99
    db $01,$A1,$01,$A2,$01,$A3,$01,$A4,$01,$A5,$01,$A6,$01,$A7,$01,$A8 ; $D04AA9
    db $01,$A9,$01,$AA,$01,$AB,$01,$AC,$01,$AD,$01,$AE,$01,$AF,$01,$B0 ; $D04AB9
    db $01,$B1,$01,$B2,$01,$B3,$01,$B4,$01,$B5,$01,$B6,$01,$B7,$FB,$01 ; $D04AC9
    db $B8,$01,$B9,$01,$BA,$01,$BB,$01,$BC,$01,$BD,$01,$BE,$01,$BF,$01 ; $D04AD9
    db $C0,$01,$C1,$01,$C2,$01,$C3,$01,$C4,$01,$C5,$01,$C6,$01,$C7,$01 ; $D04AE9
    db $C8,$01,$C9,$01,$CA,$01,$CB,$01,$CC,$01,$CD,$01,$CE,$01,$CF,$01 ; $D04AF9
    db $D0,$01,$D1,$01,$D2,$01,$D3,$01,$D4,$01,$D5,$01,$D6,$01,$D7,$01 ; $D04B09
    db $D8,$01,$D9,$01,$DA,$01,$DB,$FF,$01,$DC,$01,$DD,$01,$DE,$01,$DF ; $D04B19
    db $01,$E0,$01,$E1,$01,$E2,$01,$E3,$01,$E4,$01,$E5,$01,$E6,$01,$E7 ; $D04B29
    db $01,$E8,$01,$E9,$01,$EA,$01,$EB,$01,$EC,$01,$ED,$01,$EE,$01,$EF ; $D04B39
    db $01,$F0,$01,$F1,$01,$F2,$01,$F3,$01,$F4,$01,$F5,$01,$F6,$01,$F7 ; $D04B49
    db $01,$F8,$01,$F9,$01,$FA,$01,$FB,$01,$FC,$01,$FD,$01,$FE,$01,$FF ; $D04B59
    db $54,$18,$01,$02,$C2,$00,$03,$02,$04,$FF,$02,$05,$02,$06,$02,$07 ; $D04B69
    db $02,$08,$02,$09,$02,$0A,$02,$0B,$02,$0C,$02,$0D,$02,$0E,$02,$0F ; $D04B79
    db $02,$10,$02,$11,$02,$12,$02,$13,$02,$14,$02,$15,$02,$16,$02,$17 ; $D04B89
    db $02,$18,$02,$19,$02,$1A,$02,$1B,$02,$1C,$02,$1D,$02,$1E,$02,$1F ; $D04B99
    db $02,$20,$02,$21,$02,$22,$02,$23,$02,$24,$02,$25,$02,$26,$02,$27 ; $D04BA9
    db $02,$28,$71,$02,$29,$02,$2A,$02,$2B,$02,$2C,$02,$2D,$02,$2E,$02 ; $D04BB9
    db $2F,$02,$30,$E0,$01,$31,$02,$32,$B8,$D3,$02,$33,$02,$34,$02,$35 ; $D04BC9
    db $02,$36,$02,$37,$02,$38,$02,$39,$02,$3A,$17,$CB,$20,$01,$3B,$8F ; $D04BD9
    db $02,$3C,$02,$3D,$02,$3E,$02,$3F,$02,$40,$02,$41,$02,$42,$02,$43 ; $D04BE9
    db $A0,$25,$3D,$01,$44,$2E,$02,$45,$1E,$02,$46,$02,$47,$02,$48,$02 ; $D04BF9
    db $49,$02,$4A,$02,$4B,$29,$3F,$90,$01,$4C,$02,$01,$4D,$02,$4E,$02 ; $D04C09
    db $4F,$02,$50,$E0,$2F,$3F,$51,$02,$52,$02,$7A,$53,$2F,$3B,$41,$01 ; $D04C19
    db $54,$02,$55,$EE,$27,$31,$9F,$E2,$21,$74,$01,$78,$0E,$06,$0F,$FE ; $D04C29
    db $01,$48,$FE,$09,$03,$1D,$7F,$7C,$7F,$71,$2E,$7D,$08,$3E,$20,$0F ; $D04C39
    db $83,$7C,$FC,$01,$03,$80,$7F,$81,$7E,$8E,$71,$C5,$0D,$DF,$C3,$1F ; $D04C49
    db $DF,$C0,$DF,$00,$CC,$0E,$CF,$0C,$71,$40,$C3,$01,$0F,$20,$DF,$3F ; $D04C59
    db $C0,$E0,$1F,$8C,$05,$0F,$F0,$3D,$7F,$08,$80,$2C,$FF,$C0,$05,$31 ; $D04C69
    db $EA,$AB,$AB,$AA,$00,$5D,$3C,$C3,$D0,$2F,$10,$EF,$C4,$07,$AB,$54 ; $D04C79
    db $94,$64,$04,$00,$E8,$00,$01,$F8,$F8,$B8,$F8,$78,$10,$F8,$80,$80 ; $D04C89
    db $0F,$70,$17,$03,$F8,$07,$86,$01,$63,$A3,$1F,$57,$AE,$8E,$22,$02 ; $D04C99
    db $40,$28,$00,$35,$40,$3B,$00,$0F,$A8,$FF,$72,$FF,$1D,$E0,$25,$0A ; $D04CA9
    db $FF,$04,$F3,$02,$AD,$BF,$BA,$7A,$15,$EB,$CC,$CA,$0F,$40,$03,$FF ; $D04CB9
    db $D0,$FF,$EA,$FF,$7C,$C0,$04,$CF,$FC,$17,$E7,$1A,$DA,$F6,$04,$DF ; $D04CC9
    db $60,$24,$1A,$E5,$09,$03,$06,$F8,$68,$88,$A0,$A0,$16,$8C,$40,$40 ; $D04CD9
    db $07,$1B,$08,$F7,$A0,$5F,$30,$45,$55,$FF,$02,$FD,$27,$30,$C0,$F8 ; $D04CE9
    db $46,$7E,$00,$07,$33,$1E,$03,$FC,$E0,$03,$1C,$F3,$0A,$1F,$40,$DE ; $D04CF9
    db $06,$1D,$09,$1F,$8F,$FB,$9B,$02,$03,$C0,$0A,$1F,$48,$FF,$2D,$FF ; $D04D09
    db $96,$3B,$FF,$4B,$0D,$3B,$AB,$FF,$15,$6D,$F8,$09,$B3,$7F,$FF,$01 ; $D04D19
    db $1E,$FE,$FF,$FF,$EB,$FF,$7D,$B8,$04,$0B,$EF,$AD,$C5,$E2,$04,$1F ; $D04D29
    db $D4,$D4,$E1,$22,$22,$48,$48,$50,$50,$E8,$E8,$D0,$D0,$88,$88,$80 ; $D04D39
    db $0D,$2B,$FF,$DD,$FF,$B7,$FF,$76,$AF,$3D,$0C,$2F,$FF,$77,$FF,$0D ; $D04D49
    db $43,$75,$40,$C3,$FE,$02,$83,$82,$03,$20,$05,$00,$01,$BC,$38,$FF ; $D04D59
    db $FC,$01,$7C,$E2,$03,$FE,$97,$01,$1F,$FD,$C2,$BE,$C1,$FD,$82,$7E ; $D04D69
    db $81,$7D,$82,$FA,$05,$DD,$22,$DE,$21,$0C,$86,$37,$05,$1A,$00,$F8 ; $D04D79
    db $08,$F0,$10,$E0,$00,$E0,$20,$7A,$C0,$08,$1B,$E1,$3E,$FE,$1F,$FF ; $D04D89
    db $0E,$FE,$2F,$1F,$16,$0E,$0B,$07,$DD,$5E,$26,$03,$01,$A1,$B0,$A5 ; $D04D99
    db $A5,$B5,$5C,$0A,$F8,$3A,$A1,$B1,$08,$38,$A0,$B0,$00,$30,$90,$B0 ; $D04DA9
    db $50,$70,$4A,$FF,$C5,$FF,$4E,$FF,$C7,$FF,$4F,$FF,$CF,$03,$8F,$2B ; $D04DB9
    db $FF,$02,$3B,$17,$04,$E0,$9D,$81,$00,$0A,$80,$00,$79,$80,$08,$5F ; $D04DC9
    db $3A,$D4,$3A,$0D,$8B,$1D,$20,$AB,$43,$11,$0F,$A8,$B7,$F3,$08,$1F ; $D04DD9
    db $8F,$A8,$59,$F3,$02,$03,$C7,$CE,$09,$1F,$A0,$A1,$D7,$A0,$D4,$30 ; $D04DE9
    db $FD,$9F,$3D,$0E,$8F,$0F,$C5,$00,$3F,$FF,$81,$01,$3E,$F1,$3F,$F0 ; $D04DF9
    db $AD,$01,$9D,$B6,$C0,$40,$4B,$E8,$40,$78,$76,$70,$66,$F0,$01,$00 ; $D04E09
    db $5F,$BF,$7F,$7E,$8F,$09,$DE,$F7,$07,$00,$9E,$07,$6F,$FB,$06,$0F ; $D04E19
    db $3E,$04,$FB,$02,$40,$7B,$00,$FC,$02,$FB,$18,$DB,$F9,$02,$7B,$88 ; $D04E29
    db $79,$1D,$18,$E7,$02,$01,$E3,$08,$6F,$60,$6E,$D2,$7D,$7C,$0D,$02 ; $D04E39
    db $7E,$04,$3A,$13,$80,$33,$88,$77,$E0,$1F,$81,$7E,$C6,$01,$83,$7C ; $D04E49
    db $01,$00,$20,$25,$41,$CF,$80,$9A,$02,$5E,$61,$00,$1B,$58,$04,$78 ; $D04E59
    db $80,$05,$3C,$C3,$7D,$82,$F9,$06,$24,$FB,$04,$01,$C1,$48,$80,$B9 ; $D04E69
    db $40,$9C,$D4,$80,$BE,$AF,$06,$CE,$27,$DC,$0F,$E2,$3A,$01,$E0,$50 ; $D04E79
    db $28,$40,$01,$BA,$40,$DF,$20,$DC,$23,$92,$6D,$9E,$61,$02,$FE,$04 ; $D04E89
    db $FD,$01,$7B,$0A,$7E,$00,$74,$04,$3D,$31,$0D,$3D,$35,$FE,$01,$FC ; $D04E99
    db $03,$3F,$F3,$0C,$0C,$F7,$08,$C7,$38,$03,$1A,$5C,$82,$76,$A2,$A6 ; $D04EA9
    db $01,$43,$48,$E9,$CC,$EC,$CC,$EE,$CE,$EE,$4E,$CC,$62,$FD,$21,$3B ; $D04EB9
    db $B0,$01,$DD,$22,$B8,$D8,$20,$1F,$62,$1D,$28,$17,$58,$07,$B3,$8C ; $D04EC9
    db $18,$87,$0A,$85,$1E,$01,$BF,$80,$49,$7F,$01,$D4,$97,$98,$D2,$06 ; $D04ED9
    db $0E,$A6,$04,$F4,$02,$FA,$04,$F5,$A2,$5B,$8C,$75,$9A,$80,$CF,$5F ; $D04EE9
    db $F9,$0D,$FB,$08,$03,$FD,$0C,$FB,$76,$CB,$BA,$00,$0B,$C0,$30,$95 ; $D04EF9
    db $15,$A0,$20,$C1,$30,$41,$20,$03,$C1,$A8,$FF,$03,$F4,$FF,$0F,$FF ; $D04F09
    db $15,$EA,$18,$5C,$41,$BE,$03,$C1,$3E,$EA,$00,$C2,$7C,$01,$B1,$C3 ; $D04F19
    db $C3,$82,$06,$82,$47,$47,$83,$83,$03,$60,$10,$59,$FF,$41,$FE,$C3 ; $D04F29
    db $06,$3C,$82,$7D,$47,$B8,$FD,$C0,$03,$7D,$7D,$F4,$F4,$EA,$06,$EA ; $D04F39
    db $F0,$F0,$E4,$E4,$03,$0C,$B2,$B2,$E8,$E8,$FD,$F4,$01,$0B,$EA,$15 ; $D04F49
    db $F0,$0F,$E4,$1B,$81,$03,$B2,$4D,$E8,$17,$00,$F3,$17,$7F,$80,$6B ; $D04F59
    db $81,$7F,$93,$7F,$84,$7F,$70,$12,$03,$03,$7F,$3D,$85,$7F,$08,$1F ; $D04F69
    db $80,$00,$57,$FF,$ED,$FF,$BF,$FF,$07,$6D,$FF,$FA,$FF,$3D,$4F,$67 ; $D04F79
    db $8D,$08,$1F,$68,$E8,$7F,$B4,$03,$7B,$0C,$03,$78,$F8,$0B,$17,$3A ; $D04F89
    db $FF,$0B,$54,$5B,$0F,$03,$72,$07,$0B,$26,$54,$11,$00,$4E,$68,$03 ; $D04F99
    db $13,$80,$80,$FE,$95,$57,$FF,$0B,$03,$7F,$FF,$86,$FC,$23,$FE,$21 ; $D04FA9
    db $DD,$02,$DA,$05,$DC,$03,$DE,$01,$03,$D0,$07,$53,$78,$20,$03,$01 ; $D04FB9
    db $60,$80,$31,$00,$C0,$03,$01,$C0,$23,$07,$02,$E4,$09,$5F,$0B,$01 ; $D04FC9
    db $00,$20,$03,$16,$01,$28,$03,$5E,$01,$D8,$F7,$03,$AC,$13,$F6,$08 ; $D04FD9
    db $1F,$95,$14,$C0,$E0,$B0,$03,$1C,$40,$E0,$30,$03,$C7,$95,$1F,$FF ; $D04FE9
    db $A2,$04,$03,$5C,$5D,$02,$03,$75,$48,$A0,$93,$04,$40,$01,$40,$80 ; $D04FF9
    db $79,$FF,$06,$01,$2F,$D6,$BA,$35,$AF,$D7,$75,$0F,$67,$A8,$0D,$3E ; $D05009
    db $03,$0A,$5C,$5F,$D7,$1F,$76,$D7,$A6,$83,$03,$7F,$C3,$0A,$1F,$0F ; $D05019
    db $4F,$0F,$00,$03,$6E,$2E,$AF,$2F,$4F,$2F,$8E,$11,$2E,$6F,$0F,$38 ; $D05029
    db $53,$01,$1E,$F1,$14,$1F,$F0,$1F,$05,$06,$F8,$F0,$F4,$F0,$F3,$A4 ; $D05039
    db $00,$F7,$F2,$F3,$72,$73,$F2,$FB,$7C,$73,$73,$94,$86,$01,$FB,$0C ; $D05049
    db $01,$02,$7B,$8C,$F3,$0C,$73,$8C,$35,$B2,$C2,$F8,$00,$38,$F0,$30 ; $D05059
    db $F8,$31,$FE,$BF,$F0,$2F,$E0,$72,$56,$0F,$90,$01,$EF,$1F,$91,$65 ; $D05069
    db $C0,$DD,$83,$F0,$04,$75,$C0,$3F,$1F,$4E,$E0,$E2,$9F,$FB,$00,$F3 ; $D05079
    db $E5,$10,$DB,$40,$5B,$40,$39,$01,$F8,$03,$FC,$11,$DD,$07,$F8,$04 ; $D05089
    db $FB,$14,$EB,$44,$BB,$29,$79,$09,$1E,$E0,$D0,$CF,$80,$33,$FE,$80 ; $D05099
    db $7C,$81,$39,$FE,$6F,$FE,$39,$02,$9B,$81,$94,$02,$FC,$7D,$00,$24 ; $D050A9
    db $1C,$70,$85,$00,$EA,$48,$E9,$3C,$BE,$C8,$C9,$0C,$0F,$08,$09,$74 ; $D050B9
    db $96,$0F,$F0,$1D,$77,$80,$C3,$C3,$D9,$F3,$AD,$4F,$02,$0D,$72,$0D ; $D050C9
    db $73,$04,$70,$80,$01,$71,$04,$79,$04,$F9,$21,$FA,$0D,$BB,$23,$01 ; $D050D9
    db $F3,$85,$01,$E6,$27,$CB,$3E,$03,$33,$30,$03,$C3,$08,$7C,$00,$34 ; $D050E9
    db $60,$E8,$00,$C0,$3E,$C1,$02,$FD,$F0,$0F,$AA,$08,$04,$07,$F7,$08 ; $D050F9
    db $EF,$10,$FD,$54,$DE,$30,$30,$1D,$E8,$18,$30,$C8,$2D,$F4,$C4,$F6 ; $D05109
    db $CB,$01,$C6,$B6,$FF,$0C,$FD,$0E,$1F,$E6,$2E,$F7,$EB,$37,$EF,$33 ; $D05119
    db $ED,$33,$EF,$31,$0E,$CC,$22,$E0,$80,$82,$48,$4A,$48,$7C,$08,$3C ; $D05129
    db $04,$3C,$08,$19,$3D,$C2,$3D,$DE,$35,$31,$D9,$26,$01,$5B,$A4,$72 ; $D05139
    db $D7,$A8,$AF,$D0,$04,$0B,$1E,$01,$0C,$03,$17,$00,$46,$C1,$0B,$80 ; $D05149
    db $A3,$20,$C4,$40,$B4,$EC,$77,$C7,$01,$60,$62,$9F,$01,$86,$7F,$E3 ; $D05159
    db $0D,$F4,$D8,$21,$14,$ED,$A9,$50,$A1,$58,$59,$20,$61,$00,$06,$F9 ; $D05169
    db $0F,$F9,$02,$A8,$77,$40,$40,$E1,$48,$E1,$03,$A1,$50,$A1,$03,$BF ; $D05179
    db $E1,$48,$1E,$03,$A1,$40,$5E,$03,$93,$83,$00,$37,$07,$97,$87,$27 ; $D05189
    db $07,$FF,$8F,$C0,$03,$BF,$0F,$6F,$0F,$83,$63,$7C,$FF,$87,$78,$11 ; $D05199
    db $03,$8F,$70,$B0,$07,$01,$C0,$C0,$E4,$01,$E4,$D0,$D0,$E0,$E0,$50 ; $D051A9
    db $50,$B1,$03,$0B,$A0,$A0,$80,$75,$E4,$1B,$D0,$2F,$E0,$1F,$36,$50 ; $D051B9
    db $AF,$03,$0B,$EF,$F9,$43,$04,$00,$01,$D7,$C8,$FF,$06,$80,$3D,$FF ; $D051C9
    db $12,$7F,$45,$3F,$4B,$3F,$3B,$05,$3F,$C2,$17,$20,$3F,$D4,$51,$0F ; $D051D9
    db $01,$1F,$59,$E8,$BE,$D3,$73,$70,$AE,$FF,$F7,$FF,$C2,$3F,$08,$0F ; $D051E9
    db $C3,$03,$F1,$01,$F8,$03,$D9,$AE,$8C,$A3,$B8,$F8,$74,$DF,$F8,$30 ; $D051F9
    db $7C,$FC,$03,$AC,$FC,$38,$11,$F8,$CC,$FC,$2E,$73,$07,$58,$57,$03 ; $D05209
    db $84,$6C,$84,$95,$03,$C4,$28,$C4,$80,$03,$C0,$3A,$C4,$7B,$F9,$D9 ; $D05219
    db $03,$3B,$EB,$01,$03,$8F,$9C,$43,$9A,$45,$1C,$C3,$48,$D7,$5C,$C3 ; $D05229
    db $18,$87,$3C,$A3,$78,$87,$CF,$03,$79,$50,$43,$00,$44,$FF,$B8,$7B ; $D05239
    db $40,$03,$42,$0E,$80,$41,$80,$02,$7C,$03,$08,$00,$DF,$FE,$01,$7C ; $D05249
    db $03,$EA,$15,$FC,$45,$03,$E1,$37,$03,$E1,$08,$1F,$30,$F0,$60,$D2 ; $D05259
    db $77,$50,$48,$F0,$03,$10,$4A,$F0,$7C,$77,$02,$01,$44,$67,$40,$00 ; $D05269
    db $08,$75,$83,$28,$8C,$F9,$20,$08,$06,$20,$89,$73,$79,$C0,$03,$01 ; $D05279
    db $2B,$DE,$22,$0F,$23,$7B,$9B,$D7,$0D,$A3,$7B,$B3,$E8,$08,$5F,$98 ; $D05289
    db $73,$A1,$FC,$FF,$C7,$07,$DF,$C8,$0B,$7F,$EE,$0E,$6D,$62,$0D,$03 ; $D05299
    db $6C,$0C,$E1,$6E,$0E,$64,$04,$24,$04,$62,$02,$1E,$F1,$1D,$F2,$8C ; $D052A9
    db $03,$1C,$F3,$03,$14,$62,$FB,$01,$12,$FD,$E5,$3C,$33,$75,$7F,$3D ; $D052B9
    db $33,$7C,$77,$3C,$37,$5F,$53,$38,$37,$1C,$13,$33,$CC,$77,$88,$00 ; $D052C9
    db $03,$37,$C8,$53,$AC,$C0,$03,$13,$EC,$0F,$E0,$4F,$DD,$01,$8D,$E7 ; $D052D9
    db $8F,$F0,$05,$B1,$09,$05,$EF,$1F,$E7,$02,$01,$FF,$0C,$03,$01,$FD ; $D052E9
    db $C3,$4F,$7F,$6F,$02,$40,$EF,$01,$FE,$08,$F0,$70,$80,$FD,$03,$F3 ; $D052F9
    db $EE,$03,$0B,$A7,$DD,$D0,$05,$9C,$B9,$2E,$BE,$FE,$30,$9A,$FE,$B2 ; $D05309
    db $BE,$98,$F8,$32,$3E,$98,$B8,$12,$3E,$08,$18,$7D,$00,$01,$77,$7F ; $D05319
    db $90,$9D,$03,$C1,$1F,$04,$07,$08,$09,$88,$03,$00,$01,$19,$03,$00 ; $D05329
    db $03,$03,$FB,$D2,$73,$FB,$FF,$03,$C4,$48,$86,$73,$0C,$71,$08,$F1 ; $D05339
    db $03,$18,$0C,$F1,$04,$05,$F1,$F3,$78,$0C,$06,$01,$00,$F8,$78,$04 ; $D05349
    db $03,$01,$0C,$FC,$3C,$F9,$06,$04,$01,$FD,$07,$02,$F7,$C6,$F7,$C7 ; $D05359
    db $80,$02,$01,$97,$C7,$EE,$31,$EF,$30,$F0,$04,$01,$03,$13,$03,$03 ; $D05369
    db $03,$8B,$0B,$83,$83,$C3,$03,$01,$C3,$E3,$CB,$E1,$F9,$AA,$6A,$E0 ; $D05379
    db $2E,$7F,$E0,$98,$EF,$70,$BF,$70,$F7,$38,$D7,$38,$E3,$1C,$D1,$10 ; $D05389
    db $60,$20,$E8,$88,$B0,$90,$E4,$D4,$A0,$90,$C2,$DA,$80,$98,$30,$CF ; $D05399
    db $01,$98,$67,$C0,$01,$CC,$33,$84,$7B,$C6,$0E,$39,$82,$7D,$29,$F4 ; $D053A9
    db $81,$39,$00,$07,$90,$00,$89,$00,$30,$5D,$63,$30,$F6,$0A,$0B,$1F ; $D053B9
    db $40,$01,$00,$10,$03,$42,$07,$4A,$BF,$CB,$75,$00,$03,$CE,$0E,$6F ; $D053C9
    db $0F,$EF,$0F,$09,$CF,$0F,$DF,$1F,$08,$03,$0E,$F1,$9C,$75,$01,$1F ; $D053D9
    db $49,$E0,$03,$52,$73,$C0,$3A,$20,$20,$C8,$B9,$B1,$BD,$00,$13,$73 ; $D053E9
    db $8B,$03,$20,$DF,$3F,$3F,$06,$AF,$FC,$03,$0B,$B3,$7F,$E4,$01,$9B ; $D053F9
    db $02,$04,$1F,$0C,$00,$C0,$04,$C3,$0D,$03,$A4,$2B,$13,$00,$01,$07 ; $D05409
    db $20,$0F,$40,$0A,$80,$14,$34,$26,$43,$BF,$3F,$BB,$B7,$F4,$06,$26 ; $D05419
    db $E0,$82,$1D,$3E,$05,$05,$06,$80,$FD,$FA,$FF,$E1,$01,$03,$F2,$02 ; $D05429
    db $C1,$01,$83,$03,$01,$00,$06,$07,$2B,$2B,$56,$57,$D6,$74,$51,$C5 ; $D05439
    db $B5,$83,$63,$F8,$FF,$D4,$AD,$C9,$B8,$DA,$F1,$FF,$BC,$FF,$5E,$FF ; $D05449
    db $AC,$FC,$09,$F8,$80,$F8,$25,$DC,$74,$8C,$AA,$17,$07,$9C,$BD,$01 ; $D05459
    db $80,$03,$84,$30,$F4,$08,$FC,$84,$00,$8D,$3F,$C2,$1D,$63,$0C,$F3 ; $D05469
    db $04,$74,$7B,$C5,$DF,$A3,$05,$C0,$FF,$E0,$AB,$01,$83,$43,$FC,$03 ; $D05479
    db $78,$87,$00,$03,$F8,$07,$FC,$83,$58,$E7,$B4,$1E,$7B,$D8,$3F,$09 ; $D05489
    db $DF,$89,$B3,$3D,$80,$01,$02,$03,$F2,$09,$BF,$FC,$A9,$BF,$C0,$03 ; $D05499
    db $F4,$0B,$E8,$17,$F2,$79,$0D,$08,$1F,$20,$D3,$B3,$00,$03,$28,$F8 ; $D054A9
    db $14,$F4,$0B,$2A,$FA,$12,$FE,$4C,$B7,$55,$67,$05,$D8,$23,$28,$20 ; $D054B9
    db $00,$2A,$20,$00,$08,$08,$00,$04,$08,$60,$0C,$FE,$0C,$0B,$04,$C0 ; $D054C9
    db $A7,$99,$9D,$02,$01,$02,$89,$F9,$20,$00,$7D,$65,$2F,$F5,$05,$DF ; $D054D9
    db $92,$01,$33,$A2,$BE,$A0,$EB,$2E,$00,$D8,$89,$7F,$54,$AB,$F5,$08 ; $D054E9
    db $1F,$C6,$2C,$04,$6A,$02,$24,$0C,$62,$0A,$84,$24,$A2,$4A,$06,$E6 ; $D054F9
    db $02,$EA,$26,$B3,$0E,$03,$1C,$11,$03,$1E,$F9,$2B,$BF,$1C,$87,$13 ; $D05509
    db $3B,$33,$1F,$17,$39,$31,$1E,$13,$08,$01,$1F,$49,$BF,$13,$EC,$83 ; $D05519
    db $03,$17,$E8,$31,$CE,$18,$07,$01,$FE,$03,$8F,$E0,$07,$0F,$E0,$3E ; $D05529
    db $E0,$2F,$00,$03,$3F,$E0,$7E,$E0,$FE,$E0,$ED,$BE,$EF,$06,$01,$08 ; $D05539
    db $B3,$AF,$D1,$07,$00,$3E,$B3,$04,$03,$4E,$7F,$6C,$B7,$03,$0E,$00 ; $D05549
    db $3C,$08,$1A,$06,$03,$18,$00,$1C,$00,$07,$6F,$0C,$03,$09,$8E,$5E ; $D05559
    db $9E,$B3,$AC,$C0,$70,$5A,$21,$87,$03,$83,$08,$1F,$04,$F1,$08,$F0 ; $D05569
    db $21,$03,$00,$03,$B8,$09,$03,$F3,$1F,$0C,$F2,$0D,$04,$27,$BF,$40 ; $D05579
    db $C0,$67,$3E,$18,$50,$02,$F8,$20,$02,$FA,$03,$C1,$12,$3E,$3D,$C2 ; $D05589
    db $92,$BB,$FB,$04,$04,$03,$D7,$C7,$00,$01,$D4,$E4,$50,$E7,$D4,$E6 ; $D05599
    db $09,$D1,$E3,$B7,$C7,$48,$B5,$CC,$33,$C8,$22,$37,$CF,$57,$8A,$30 ; $D055A9
    db $4D,$F1,$ED,$F0,$EC,$80,$86,$09,$EF,$08,$5B,$30,$67,$F0,$E1,$F2 ; $D055B9
    db $E3,$E3,$1C,$E1,$1E,$81,$7E,$09,$F6,$78,$87,$E4,$1B,$01,$72,$E6 ; $D055C9
    db $19,$C1,$CD,$80,$8C,$C0,$C6,$00,$06,$40,$43,$81,$82,$21,$A0,$41 ; $D055D9
    db $C0,$C3,$3C,$DB,$1D,$63,$FF,$02,$3F,$D7,$96,$0E,$00,$88,$80,$10 ; $D055E9
    db $9C,$5B,$FD,$A0,$16,$20,$C0,$40,$B2,$DB,$CE,$1F,$E4,$3F,$00,$53 ; $D055F9
    db $0E,$40,$83,$80,$47,$04,$03,$07,$00,$8B,$80,$A7,$77,$42,$1F,$03 ; $D05609
    db $00,$29,$DF,$1F,$9E,$1E,$FF,$39,$3F,$DE,$03,$80,$07,$FE,$7E,$3E ; $D05619
    db $3E,$1F,$E0,$34,$1E,$E1,$3A,$81,$03,$7E,$81,$3E,$C1,$A2,$57,$65 ; $D05629
    db $BB,$31,$BF,$FD,$43,$37,$13,$BB,$29,$BF,$8F,$FC,$43,$02,$81,$9F ; $D05639
    db $05,$00,$07,$08,$0D,$02,$FF,$04,$3B,$76,$07,$BE,$E8,$57,$5C,$01 ; $D05649
    db $2B,$13,$08,$1E,$41,$74,$0B,$FE,$01,$AF,$50,$5B,$A4,$CE,$D7,$9B ; $D05659
    db $A1,$0C,$00,$66,$1E,$21,$AB,$47,$54,$1B,$4D,$03,$0F,$8D,$41,$3E ; $D05669
    db $01,$0D,$DD,$EF,$67,$5C,$72,$05,$C3,$1E,$03,$A6,$06,$04,$1B,$11 ; $D05679
    db $FC,$FF,$F9,$E0,$9F,$01,$1A,$1D,$0C,$21,$2E,$06,$07,$FF,$8F,$11 ; $D05689
    db $40,$47,$20,$63,$B7,$E0,$BD,$5B,$75,$F8,$70,$03,$65,$9F,$FF,$2B ; $D05699
    db $B8,$FD,$2B,$EA,$FF,$AA,$55,$EA,$00,$55,$80,$28,$30,$F2,$03,$FA ; $D056A9
    db $00,$D4,$02,$3C,$83,$3F,$81,$43,$A9,$FE,$85,$97,$AA,$00,$05,$72 ; $D056B9
    db $43,$8C,$7C,$F0,$08,$2E,$DF,$F2,$1C,$0E,$FA,$06,$5A,$06,$BB,$07 ; $D056C9
    db $58,$06,$2B,$07,$18,$03,$0F,$01,$FF,$01,$FF,$04,$F0,$23,$79,$02 ; $D056D9
    db $01,$28,$01,$75,$01,$28,$00,$92,$80,$5F,$00,$82,$80,$08,$00,$FC ; $D056E9
    db $9D,$A9,$3D,$7F,$87,$03,$EC,$1F,$F6,$48,$8C,$7A,$86,$7F,$01,$03 ; $D056F9
    db $7D,$43,$1F,$21,$0E,$11,$6A,$CB,$BB,$FD,$47,$C7,$EE,$49,$F3,$2A ; $D05709
    db $80,$83,$09,$30,$3F,$03,$03,$1E,$C1,$C0,$C0,$04,$9D,$80,$C1,$E8 ; $D05719
    db $17,$F5,$47,$0A,$B0,$E9,$01,$3F,$1A,$1F,$06,$88,$1F,$B1,$6C,$25 ; $D05729
    db $16,$C8,$C3,$01,$FC,$E3,$3D,$00,$F4,$04,$7F,$62,$65,$C8,$E7,$1D ; $D05739
    db $19,$73,$E4,$C0,$01,$BA,$A3,$33,$48,$3C,$19,$0F,$E3,$1B,$FE,$B6 ; $D05749
    db $23,$65,$38,$0C,$FC,$81,$01,$00,$18,$1F,$43,$7C,$13,$E3,$CE,$0F ; $D05759
    db $6E,$38,$85,$46,$75,$41,$C0,$9D,$03,$FC,$0F,$F0,$3F,$1D,$C0,$0A ; $D05769
    db $0A,$86,$17,$FF,$1C,$E0,$9F,$01,$86,$FE,$33,$F0,$CF,$C0,$F5,$3B ; $D05779
    db $E5,$52,$19,$FE,$CF,$01,$F0,$0F,$C0,$3F,$A4,$A4,$02,$02,$06,$C6 ; $D05789
    db $E6,$E6,$67,$E7,$23,$03,$E7,$1F,$98,$42,$5C,$FB,$FA,$A4,$F7,$FE ; $D05799
    db $19,$B8,$67,$FF,$18,$1B,$FC,$07,$F8,$3C,$FF,$09,$01,$0F,$03,$03 ; $D057A9
    db $0D,$0C,$01,$0B,$03,$01,$83,$1B,$83,$01,$FE,$57,$43,$03,$01,$60 ; $D057B9
    db $07,$01,$83,$7C,$DE,$C0,$20,$DA,$C0,$03,$DA,$60,$E0,$01,$D8,$E4 ; $D057C9
    db $D8,$C0,$3C,$DF,$3F,$02,$01,$DB,$EF,$3A,$E6,$10,$D5,$A0,$03,$81 ; $D057D9
    db $00,$B0,$B0,$9D,$03,$7F,$EC,$47,$20,$03,$01,$4F,$E7,$03,$4B,$D3 ; $D057E9
    db $0A,$8E,$03,$08,$47,$03,$BF,$86,$0A,$D7,$3E,$51,$4A,$D7,$71,$80 ; $D057F9
    db $03,$30,$00,$73,$00,$33,$F0,$09,$1F,$F1,$04,$F5,$81,$03,$08,$F9 ; $D05809
    db $82,$03,$0C,$FC,$0C,$FD,$3C,$57,$84,$03,$58,$FF,$7E,$75,$01,$1D ; $D05819
    db $AF,$30,$D3,$01,$00,$0E,$FE,$42,$C2,$02,$22,$02,$1A,$B7,$98,$BB ; $D05829
    db $39,$C3,$3C,$3A,$3F,$C0,$41,$DF,$E7,$77,$C7,$B7,$C7,$94,$03,$37 ; $D05839
    db $01,$25,$17,$C7,$3E,$D5,$02,$01,$0C,$F2,$E2,$F3,$E3,$00,$FB,$60 ; $D05849
    db $EB,$03,$EB,$EB,$F3,$F3,$03,$8B,$9B,$E6,$19,$E7,$18,$10,$01,$EF ; $D05859
    db $10,$03,$C5,$61,$8F,$70,$C6,$10,$D0,$20,$E0,$08,$68,$90,$F0,$84 ; $D05869
    db $B4,$C8,$F8,$C2,$DA,$E4,$FC,$18,$34,$20,$98,$67,$03,$8C,$73,$CC ; $D05879
    db $33,$C6,$39,$01,$2D,$D0,$10,$E0,$20,$68,$08,$80,$26,$34,$04,$38 ; $D05889
    db $08,$1A,$02,$24,$1C,$04,$1F,$D1,$01,$58,$7C,$A8,$66,$07,$00,$93 ; $D05899
    db $02,$80,$0F,$00,$97,$80,$0E,$84,$03,$9C,$80,$4F,$D3,$80,$04,$03 ; $D058A9
    db $FC,$7C,$3E,$3E,$7C,$7C,$31,$BE,$BE,$03,$FE,$FE,$41,$03,$83,$3E ; $D058B9
    db $C1,$8D,$03,$BE,$41,$03,$D6,$72,$19,$03,$26,$D3,$E1,$70,$70,$E0 ; $D058C9
    db $E2,$71,$74,$E3,$E8,$48,$57,$91,$AE,$12,$D3,$70,$5C,$8F,$60,$E1 ; $D058D9
    db $1F,$73,$8F,$E7,$1F,$4F,$BF,$9F,$7F,$10,$0F,$20,$1F,$40,$3F,$4B ; $D058E9
    db $C0,$63,$3F,$17,$E0,$07,$FF,$05,$5B,$C0,$00,$AF,$50,$17,$E8,$02 ; $D058F9
    db $0B,$F4,$05,$FA,$03,$FC,$4F,$03,$08,$BA,$AF,$A0,$E1,$1F,$91,$0E ; $D05909
    db $8A,$05,$C1,$16,$C6,$09,$C3,$08,$85,$C9,$01,$1D,$15,$EF,$6E,$31 ; $D05919
    db $01,$70,$F3,$01,$C5,$04,$5C,$E1,$69,$04,$C9,$0C,$A1,$0C,$C9,$04 ; $D05929
    db $91,$14,$82,$16,$9C,$0A,$FB,$FF,$FB,$17,$97,$01,$E3,$39,$FF,$E1 ; $D05939
    db $FF,$E9,$F7,$1B,$08,$A9,$24,$D7,$11,$CB,$08,$C0,$04,$CC,$0E,$45 ; $D05949
    db $06,$0C,$0F,$C7,$FF,$C3,$FE,$59,$41,$03,$FC,$00,$FA,$2E,$80,$06 ; $D05959
    db $40,$50,$30,$D5,$CD,$B2,$76,$92,$5F,$25,$39,$0F,$D6,$AE,$93,$71 ; $D05969
    db $5D,$8F,$60,$60,$37,$30,$67,$60,$0F,$38,$73,$68,$91,$A4,$6D,$70 ; $D05979
    db $80,$B2,$9F,$FF,$CF,$5C,$15,$45,$87,$00,$FF,$43,$FF,$83,$FF,$41 ; $D05989
    db $FF,$9D,$45,$E7,$A3,$B5,$F8,$00,$F6,$83,$47,$FD,$00,$EA,$A1,$40 ; $D05999
    db $FC,$53,$BF,$66,$00,$58,$89,$95,$00,$A0,$E0,$10,$70,$00,$30,$A8 ; $D059A9
    db $38,$14,$94,$1C,$7F,$5B,$1C,$1F,$FF,$8F,$47,$72,$C7,$A3,$E3,$1F ; $D059B9
    db $10,$27,$28,$1F,$18,$09,$0C,$1E,$1C,$0D,$0E,$1A,$1F,$2C,$2F,$15 ; $D059C9
    db $7B,$84,$9F,$9A,$03,$0B,$E3,$60,$E0,$B0,$70,$DC,$3C,$F7,$0F,$FC ; $D059D9
    db $03,$7F,$00,$1F,$00,$A7,$20,$16,$BF,$5D,$03,$02,$EB,$BD,$DF,$5C ; $D059E9
    db $3E,$EA,$EA,$0A,$2A,$FF,$EA,$15,$F6,$D0,$8B,$00,$15,$50,$E5,$01 ; $D059F9
    db $CB,$F3,$01,$87,$3E,$37,$20,$86,$B4,$8C,$D2,$D2,$2B,$84,$0B,$FE ; $D05A09
    db $1C,$57,$C0,$03,$5C,$7C,$AB,$FB,$3A,$FD,$1F,$FC,$1D,$FE,$8E,$F0 ; $D05A19
    db $39,$C1,$E3,$03,$8E,$0F,$18,$1F,$70,$7F,$C0,$B1,$F2,$31,$59,$49 ; $D05A29
    db $7B,$7F,$80,$03,$40,$63,$7F,$0E,$A5,$0E,$FE,$1C,$E0,$7B,$71,$F0 ; $D05A39
    db $CA,$00,$E1,$45,$15,$04,$53,$F8,$07,$52,$A6,$E0,$B8,$F6,$1F,$9E ; $D05A49
    db $81,$39,$04,$36,$00,$4D,$20,$E3,$28,$48,$3A,$C2,$3E,$C0,$E9,$57 ; $D05A59
    db $03,$AB,$77,$27,$87,$DF,$39,$C7,$3E,$C1,$3F,$C0,$64,$00,$90,$01 ; $D05A69
    db $44,$00,$9F,$40,$02,$C0,$0B,$43,$AF,$13,$CD,$BD,$FF,$C0,$1D,$FC ; $D05A79
    db $FF,$F3,$FC,$4F,$07,$F0,$FD,$42,$3B,$BB,$72,$74,$CF,$1D,$0F,$BF ; $D05A89
    db $2F,$8C,$D3,$AF,$BF,$03,$3B,$11,$C4,$8F,$F0,$58,$37,$3B,$7B,$BF ; $D05A99
    db $80,$A0,$98,$84,$B8,$85,$30,$98,$85,$03,$90,$85,$F8,$38,$85,$D0 ; $D05AA9
    db $03,$BB,$3D,$7F,$BA,$05,$01,$FA,$02,$69,$5B,$F5,$FE,$02,$D9,$08 ; $D05AB9
    db $A0,$01,$B0,$B0,$E0,$6C,$E0,$03,$B9,$B8,$67,$B8,$03,$F8,$1D,$00 ; $D05AC9
    db $4F,$9D,$45,$4F,$EB,$ED,$47,$8E,$03,$07,$44,$01,$B2,$F3,$60,$A4 ; $D05AD9
    db $60,$C8,$01,$3D,$77,$DF,$03,$01,$71,$00,$70,$00,$32,$10,$71,$00 ; $D05AE9
    db $28,$20,$68,$10,$3E,$21,$79,$1A,$1F,$85,$1F,$CB,$F6,$0F,$E7,$1F ; $D05AF9
    db $EE,$17,$D0,$27,$C1,$06,$E7,$00,$0C,$FC,$84,$FD,$08,$3D,$20,$FD ; $D05B09
    db $1C,$01,$1F,$20,$B4,$3B,$FD,$7F,$00,$42,$7F,$80,$1F,$C0,$9F,$40 ; $D05B19
    db $80,$3A,$5F,$40,$B1,$5F,$24,$FB,$06,$FE,$0D,$03,$86,$7E,$03,$A5 ; $D05B29
    db $01,$30,$FB,$03,$44,$7F,$80,$14,$00,$34,$C4,$10,$C7,$14,$C6,$09 ; $D05B39
    db $01,$C3,$07,$C7,$3F,$01,$02,$F2,$D9,$00,$01,$0B,$EB,$8B,$CB,$2B ; $D05B49
    db $6B,$EB,$F1,$01,$00,$0F,$F0,$8F,$33,$EF,$10,$02,$00,$01,$E1,$ED ; $D05B59
    db $F6,$FA,$E6,$E0,$F7,$31,$F1,$E3,$03,$F4,$E5,$74,$E4,$F7,$F6,$E3 ; $D05B69
    db $1C,$F3,$0C,$E1,$1E,$F1,$0E,$E0,$1F,$F4,$0B,$E4,$1B,$F6,$09,$0D ; $D05B79
    db $01,$0E,$02,$86,$80,$07,$01,$43,$EF,$84,$BF,$A1,$20,$C3,$42,$5C ; $D05B89
    db $35,$81,$7E,$D2,$01,$F9,$DF,$62,$9D,$71,$2B,$01,$94,$80,$8B,$81 ; $D05B99
    db $24,$00,$49,$41,$87,$83,$AB,$23,$C3,$43,$8F,$EC,$45,$1D,$03,$C1 ; $D05BA9
    db $06,$3E,$C3,$3C,$63,$9C,$01,$89,$F3,$B8,$44,$FC,$FC,$FB,$F8,$F8 ; $D05BB9
    db $F0,$E0,$F0,$CA,$E0,$CB,$94,$C6,$F3,$FD,$B9,$F5,$F7,$0F,$EF,$1F ; $D05BC9
    db $DF,$3F,$BF,$7F,$03,$1C,$63,$1C,$07,$78,$43,$FC,$47,$38,$2B,$54 ; $D05BD9
    db $D7,$29,$46,$89,$E9,$72,$01,$08,$00,$8B,$6B,$8C,$E4,$03,$F4,$13 ; $D05BE9
    db $C2,$19,$C4,$3B,$C2,$79,$84,$F3,$06,$E1,$4C,$C3,$4A,$BB,$E7,$A6 ; $D05BF9
    db $3F,$56,$96,$69,$02,$FD,$90,$FB,$07,$F8,$0B,$F4,$DF,$03,$08,$21 ; $D05C09
    db $FF,$85,$08,$80,$0A,$80,$01,$84,$1E,$84,$1C,$80,$1D,$07,$83,$1E ; $D05C19
    db $A4,$3F,$F3,$5B,$51,$8D,$01,$E5,$FB,$01,$73,$E4,$FB,$E6,$F9,$C7 ; $D05C29
    db $F8,$2D,$2B,$0E,$29,$7B,$58,$0A,$59,$6B,$B8,$89,$38,$4B,$58,$09 ; $D05C39
    db $98,$C8,$F7,$C6,$01,$98,$E7,$01,$31,$38,$C7,$01,$78,$87,$9D,$A7 ; $D05C49
    db $07,$37,$F3,$08,$AA,$FF,$54,$FF,$28,$FF,$82,$7D,$55,$AA,$AB,$54 ; $D05C59
    db $9F,$F3,$04,$BA,$C0,$19,$E1,$9B,$E4,$2D,$42,$96,$B1,$53,$60,$89 ; $D05C69
    db $80,$4C,$78,$98,$3D,$0E,$35,$3C,$C3,$23,$1E,$E1,$89,$79,$70,$7F ; $D05C79
    db $6A,$B8,$F0,$70,$40,$F1,$3D,$E4,$72,$02,$BF,$87,$51,$C3,$2A,$63 ; $D05C89
    db $12,$33,$81,$33,$04,$FB,$C1,$B5,$87,$78,$C3,$3C,$19,$6B,$55,$1E ; $D05C99
    db $75,$D9,$40,$3F,$C0,$40,$68,$28,$B0,$90,$3E,$8A,$9A,$02,$A2,$3F ; $D05CA9
    db $17,$FF,$8F,$E5,$7F,$85,$7F,$01,$0D,$0A,$0E,$11,$17,$08,$0F,$12 ; $D05CB9
    db $15,$2B,$2C,$51,$54,$B6,$BC,$F2,$C7,$BD,$E8,$1D,$83,$E8,$2E,$DB ; $D05CC9
    db $A8,$F5,$81,$1A,$72,$1F,$AD,$AF,$5A,$5F,$F4,$FF,$6A,$EF,$00,$EF ; $D05CD9
    db $86,$67,$E8,$03,$E0,$FF,$50,$FF,$A0,$E3,$63,$10,$8E,$01,$18,$2E ; $D05CE9
    db $03,$40,$59,$90,$64,$8C,$33,$C7,$54,$A7,$38,$C3,$56,$A3,$38,$C1 ; $D05CF9
    db $95,$61,$10,$EF,$0C,$F3,$07,$D6,$F8,$1A,$C7,$3E,$05,$AA,$E1,$7C ; $D05D09
    db $AB,$AB,$80,$49,$04,$FC,$10,$F4,$30,$E0,$57,$40,$F7,$FF,$E5,$7C ; $D05D19
    db $B2,$03,$F3,$AC,$A1,$0C,$18,$10,$28,$29,$45,$05,$FC,$23,$C0,$36 ; $D05D29
    db $90,$01,$00,$05,$0E,$FF,$1D,$26,$DF,$F0,$52,$4D,$08,$FF,$38,$A9 ; $D05D39
    db $5C,$FA,$6A,$FF,$01,$7F,$82,$BF,$B1,$3F,$0A,$1F,$05,$DF,$82,$07 ; $D05D49
    db $00,$A1,$21,$AB,$5A,$7F,$97,$80,$4F,$B0,$C7,$38,$1B,$FC,$5D,$FE ; $D05D59
    db $DD,$FE,$E2,$E0,$C1,$C0,$A4,$A0,$C0,$C1,$82,$54,$C5,$04,$81,$C4 ; $D05D69
    db $03,$E0,$1F,$B9,$81,$08,$81,$7F,$C1,$3F,$B2,$25,$56,$01,$2B,$41 ; $D05D79
    db $BF,$C4,$3C,$50,$30,$11,$D1,$D0,$56,$C0,$60,$BF,$01,$40,$BC,$C3 ; $D05D89
    db $30,$40,$CF,$1B,$0B,$AB,$30,$1F,$BF,$03,$3F,$3F,$37,$00,$77,$3F ; $D05D99
    db $7F,$BC,$7F,$B3,$7F,$EB,$CD,$9B,$40,$03,$88,$32,$37,$C8,$68,$29 ; $D05DA9
    db $01,$98,$F3,$2A,$01,$CF,$08,$33,$D5,$D5,$9F,$F3,$02,$00,$01,$D5 ; $D05DB9
    db $2A,$D0,$84,$B8,$C4,$B0,$70,$C4,$03,$84,$A8,$60,$84,$03,$18,$04 ; $D05DC9
    db $BB,$7F,$91,$01,$FB,$44,$01,$7B,$E7,$F5,$00,$01,$F2,$FE,$F0,$F3 ; $D05DD9
    db $80,$9F,$02,$27,$FF,$08,$2E,$F7,$09,$98,$DF,$95,$5F,$F8,$C7,$F8 ; $D05DE9
    db $FC,$FC,$F8,$F9,$C0,$CF,$02,$7F,$17,$FF,$2E,$FE,$F5,$F5,$07,$AD ; $D05DF9
    db $B0,$D2,$03,$E4,$46,$FE,$01,$2A,$F5,$0A,$59,$F5,$A0,$26,$BE,$C1 ; $D05E09
    db $7B,$85,$80,$2F,$39,$F5,$92,$7B,$A4,$A0,$76,$01,$B8,$70,$39,$0C ; $D05E19
    db $7C,$03,$37,$02,$B2,$64,$66,$6E,$1C,$A2,$9D,$F9,$06,$D7,$03,$0E ; $D05E29
    db $F4,$08,$F4,$09,$62,$99,$08,$F3,$1C,$F3,$20,$FD,$BD,$F6,$C2,$BD ; $D05E39
    db $C0,$FF,$06,$79,$01,$D9,$83,$DB,$09,$E5,$1F,$27,$FF,$83,$5F,$BF ; $D05E49
    db $06,$B8,$08,$01,$04,$5C,$BA,$9C,$F3,$01,$3E,$00,$FE,$C2,$E2,$06 ; $D05E59
    db $1E,$04,$FD,$14,$7C,$FC,$05,$08,$7C,$03,$FE,$03,$90,$F3,$00,$C2 ; $D05E69
    db $11,$D1,$40,$10,$01,$51,$90,$44,$D1,$84,$F3,$CE,$37,$DC,$26,$02 ; $D05E79
    db $01,$5C,$A6,$5C,$26,$D2,$F7,$EA,$11,$EA,$8B,$9B,$5B,$0B,$48,$F7 ; $D05E89
    db $EE,$11,$8F,$45,$70,$40,$0B,$E6,$E6,$D3,$D3,$E7,$E7,$C6,$03,$E5 ; $D05E99
    db $E5,$03,$00,$A5,$A5,$11,$11,$E6,$19,$D3,$2C,$31,$E7,$18,$03,$E5 ; $D05EA9
    db $1A,$AE,$03,$5A,$A5,$5A,$11,$EE,$C0,$30,$E2,$22,$61,$19,$F6,$96 ; $D05EB9
    db $B1,$8D,$FA,$CA,$D1,$C7,$F5,$E7,$5E,$E1,$32,$CD,$19,$E6,$9E,$61 ; $D05EC9
    db $8D,$72,$CE,$31,$C7,$38,$8B,$29,$C3,$33,$96,$E7,$27,$66,$1E,$F7 ; $D05ED9
    db $9E,$02,$0F,$C9,$CC,$78,$78,$F5,$E0,$33,$CC,$37,$C8,$1E,$E1,$1F ; $D05EE9
    db $5C,$0E,$FF,$F1,$CC,$33,$78,$87,$EF,$1F,$25,$1A,$56,$BD,$69,$3E ; $D05EF9
    db $3E,$7D,$79,$7E,$7C,$BF,$29,$06,$21,$44,$7F,$01,$EE,$BF,$7F,$9B ; $D05F09
    db $BF,$94,$83,$FF,$99,$10,$DB,$10,$96,$19,$C1,$0A,$CE,$09,$CB,$08 ; $D05F19
    db $D9,$18,$94,$1C,$E7,$FF,$14,$01,$F7,$01,$77,$E7,$49,$DF,$5A,$05 ; $D05F29
    db $72,$F3,$02,$15,$FD,$55,$AA,$DF,$5E,$07,$60,$00,$C3,$1B,$E4,$2F ; $D05F39
    db $D0,$07,$5E,$A0,$BC,$40,$F8,$58,$64,$E0,$F1,$09,$1F,$26,$37,$71 ; $D05F49
    db $06,$37,$07,$37,$4F,$7F,$5F,$6F,$0E,$6E,$0C,$6D,$BC,$DE,$C7,$F8 ; $D05F59
    db $81,$01,$8F,$F0,$AE,$01,$72,$8E,$F1,$8C,$F3,$1D,$E3,$1A,$18,$19 ; $D05F69
    db $18,$18,$B8,$88,$F8,$CE,$FE,$A2,$4F,$00,$0B,$00,$01,$F8,$07,$18 ; $D05F79
    db $01,$FE,$01,$59,$F3,$FC,$30,$FD,$FE,$73,$54,$00,$A8,$EB,$58,$E3 ; $D05F89
    db $AF,$00,$FF,$59,$13,$F8,$2C,$E2,$FF,$15,$5B,$B3,$D0,$1B,$07,$B8 ; $D05F99
    db $F7,$E1,$1F,$98,$1D,$38,$3E,$78,$7F,$F4,$FF,$E2,$E0,$30,$0F,$80 ; $D05FA9
    db $40,$C4,$63,$E0,$3F,$C0,$77,$E3,$B8,$99,$A8,$91,$B8,$DB,$0F,$1F ; $D05FB9
    db $06,$8F,$03,$57,$00,$E3,$90,$1C,$0A,$F3,$02,$04,$F0,$01,$61,$BB ; $D05FC9
    db $27,$03,$FC,$F8,$D2,$43,$55,$B8,$F4,$CD,$49,$C7,$24,$E3,$33,$F0 ; $D05FD9
    db $19,$F8,$0C,$3C,$86,$DE,$A3,$27,$C2,$63,$D4,$3B,$F0,$0F,$BD,$B1 ; $D05FE9
    db $6D,$03,$83,$0C,$71,$F8,$FE,$56,$FC,$B9,$FE,$63,$E3,$C2,$2F,$EA ; $D05FF9
    db $19,$27,$10,$95,$90,$91,$3E,$1C,$C2,$F7,$18,$E7,$E5,$10,$EF,$90 ; $D06009
    db $6F,$72,$15,$4D,$3A,$8F,$68,$0B,$D8,$9C,$FC,$D9,$1F,$84,$0F,$48 ; $D06019
    db $0F,$8D,$1B,$08,$F7,$01,$B4,$1B,$3D,$AA,$83,$39,$06,$C1,$54,$A0 ; $D06029
    db $F9,$01,$C3,$77,$A9,$A1,$62,$41,$C1,$2B,$EB,$2E,$24,$E9,$03,$0E ; $D06039
    db $C1,$3E,$EB,$14,$E5,$B2,$E0,$70,$00,$F3,$46,$F1,$B2,$C1,$1E,$C4 ; $D06049
    db $B8,$E1,$8A,$E6,$8B,$15,$F7,$CC,$20,$5A,$C4,$3B,$E7,$18,$E6,$74 ; $D06059
    db $19,$B0,$06,$3F,$E8,$03,$E0,$81,$01,$0E,$C3,$DC,$A6,$98,$45,$39 ; $D06069
    db $1F,$FD,$9F,$1D,$21,$3C,$BB,$45,$5C,$96,$A3,$60,$AB,$20,$37,$00 ; $D06079
    db $5F,$20,$9F,$00,$9F,$50,$48,$00,$4D,$48,$FF,$34,$DF,$28,$DF,$9C ; $D06089
    db $DD,$01,$C7,$62,$3F,$CD,$21,$A0,$E1,$C4,$C0,$61,$60,$D2,$50,$20 ; $D06099
    db $A0,$11,$D0,$08,$68,$A2,$83,$58,$FB,$60,$29,$AF,$20,$63,$DF,$BD ; $D060A9
    db $88,$F7,$B0,$23,$00,$27,$60,$B8,$68,$1E,$01,$FA,$05,$DE,$01,$7C ; $D060B9
    db $03,$B2,$0D,$43,$00,$35,$D0,$39,$01,$73,$08,$C9,$0E,$05,$8A,$7A ; $D060C9
    db $BA,$F0,$53,$A8,$57,$97,$81,$35,$58,$A7,$3A,$C5,$F6,$06,$BA,$40 ; $D060D9
    db $AA,$A0,$C0,$2F,$D0,$83,$7C,$0B,$45,$F4,$C3,$57,$03,$FA,$AA,$55 ; $D060E9
    db $C5,$04,$1D,$02,$FD,$C6,$A8,$84,$10,$04,$A8,$04,$90,$04,$00,$C4 ; $D060F9
    db $00,$8C,$00,$D4,$80,$69,$26,$F3,$00,$01,$3B,$FF,$73,$FF,$2B,$3A ; $D06109
    db $FF,$16,$82,$E7,$2F,$FF,$E1,$7E,$FE,$AC,$EC,$72,$F2,$A8,$A8,$C1 ; $D06119
    db $C0,$90,$90,$29,$D7,$0D,$EC,$13,$F2,$0D,$73,$8B,$A9,$90,$6F,$CD ; $D06129
    db $48,$C8,$51,$51,$81,$81,$01,$01,$00,$14,$00,$0E,$00,$4C,$40,$59 ; $D06139
    db $C8,$37,$51,$AE,$80,$7E,$06,$F8,$09,$FE,$30,$FF,$31,$FF,$22,$BD ; $D06149
    db $5D,$02,$3A,$05,$9C,$83,$90,$8F,$98,$C7,$70,$EF,$21,$9E,$05,$3E ; $D06159
    db $52,$55,$5F,$C0,$01,$60,$1F,$20,$1F,$41,$6B,$BF,$01,$96,$4C,$BF ; $D06169
    db $19,$FB,$06,$F1,$14,$F4,$1C,$EC,$18,$E0,$F3,$03,$44,$40,$04,$F3 ; $D06179
    db $10,$E7,$D7,$08,$0C,$E3,$0C,$F3,$A6,$E9,$FF,$C1,$3F,$B9,$CF,$80 ; $D06189
    db $80,$4F,$0F,$5B,$6B,$E7,$17,$E5,$34,$A2,$B2,$D8,$98,$30,$F8,$7F ; $D06199
    db $F0,$D9,$F0,$C4,$99,$FC,$E9,$CA,$ED,$E7,$4C,$23,$46,$E8,$7C,$2D ; $D061A9
    db $25,$2E,$20,$A5,$A0,$32,$30,$C9,$D8,$42,$20,$04,$E8,$3E,$C3,$D5 ; $D061B9
    db $7A,$9F,$7F,$DF,$3F,$6F,$9F,$77,$8F,$07,$DF,$E3,$17,$10,$D5,$94 ; $D061C9
    db $D1,$F0,$71,$70,$EC,$05,$FD,$00,$5E,$02,$1A,$0B,$69,$2F,$58,$26 ; $D061D9
    db $D7,$01,$2C,$78,$86,$F4,$FA,$FE,$FF,$FB,$FC,$EC,$F0,$B0,$C0,$2A ; $D061E9
    db $6A,$E9,$E9,$EA,$EA,$F9,$F9,$03,$78,$00,$FD,$61,$E8,$8C,$C1,$EE ; $D061F9
    db $11,$ED,$63,$12,$03,$FD,$02,$00,$03,$7C,$03,$67,$1F,$BE,$7F,$A2 ; $D06209
    db $74,$A2,$3A,$17,$41,$90,$5F,$43,$32,$0C,$B5,$06,$7F,$2F,$DF,$A2 ; $D06219
    db $5D,$97,$23,$41,$BE,$44,$6D,$DC,$3D,$FA,$3F,$FF,$E0,$E3,$52,$53 ; $D06229
    db $23,$23,$0F,$0F,$40,$3F,$2D,$9F,$47,$8F,$E1,$F3,$E3,$1C,$53,$AC ; $D06239
    db $23,$DC,$B3,$39,$9B,$C7,$8C,$F7,$EF,$EF,$9F,$AF,$9F,$00,$70,$34 ; $D06249
    db $C0,$46,$F8,$AB,$F4,$C4,$FA,$7F,$D3,$3E,$1A,$0F,$01,$57,$7F,$40 ; $D06259
    db $19,$89,$10,$E2,$88,$F1,$7C,$00,$14,$C1,$00,$75,$00,$3A,$80,$1C ; $D06269
    db $F0,$D8,$DF,$3E,$0E,$FF,$8A,$FF,$C5,$9B,$DF,$8C,$60,$FE,$58,$07 ; $D06279
    db $AC,$02,$55,$8C,$42,$A3,$04,$88,$15,$25,$3A,$5A,$BC,$D7,$74,$03 ; $D06289
    db $30,$E1,$70,$1F,$FA,$9A,$E5,$EE,$43,$FE,$00,$A5,$25,$05,$A1,$15 ; $D06299
    db $0B,$C5,$09,$BF,$04,$95,$DA,$FF,$80,$F0,$DF,$BF,$40,$81,$03,$01 ; $D062A9
    db $02,$03,$58,$5F,$40,$80,$31,$46,$BE,$6D,$1C,$08,$38,$18,$FE,$5F ; $D062B9
    db $A0,$9F,$8E,$E3,$03,$F4,$E9,$1A,$D8,$00,$68,$AA,$84,$03,$F8,$FE ; $D062C9
    db $00,$01,$75,$E0,$70,$1F,$01,$19,$E7,$29,$41,$D7,$1B,$FE,$FE,$02 ; $D062D9
    db $BA,$DF,$01,$E6,$D2,$AF,$00,$A2,$45,$FE,$E3,$7A,$D7,$3D,$FC,$7D ; $D062E9
    db $43,$83,$3F,$57,$23,$51,$2E,$C8,$63,$50,$27,$80,$17,$C8,$81,$24 ; $D062F9
    db $60,$09,$7E,$00,$3C,$80,$C7,$3F,$4F,$BF,$1F,$3B,$57,$C3,$F5,$83 ; $D06309
    db $BE,$03,$03,$03,$6E,$BF,$00,$1F,$A0,$EB,$04,$7B,$15,$E1,$77,$F8 ; $D06319
    db $9E,$FC,$02,$03,$7D,$F0,$09,$4B,$9F,$20,$4B,$86,$10,$25,$08,$12 ; $D06329
    db $14,$19,$1A,$1C,$13,$1C,$1E,$18,$03,$00,$8F,$F0,$C7,$F8,$E3,$FC ; $D06339
    db $E1,$FE,$24,$E0,$FF,$01,$B8,$C5,$E2,$F0,$28,$F8,$0E,$7E,$40,$5F ; $D06349
    db $30,$B3,$A8,$E8,$1E,$5E,$CF,$CF,$4C,$19,$FE,$01,$69,$CF,$63,$00 ; $D06359
    db $C6,$61,$80,$00,$4F,$A4,$07,$44,$07,$0C,$0F,$FC,$EA,$0C,$9F,$00 ; $D06369
    db $D6,$CA,$AA,$45,$AA,$5F,$BC,$0F,$01,$41,$A2,$55,$00,$71,$8F,$DF ; $D06379
    db $C0,$E7,$00,$89,$44,$46,$0E,$40,$0D,$20,$16,$10,$0B,$08,$80,$15 ; $D06389
    db $8F,$70,$C7,$5A,$38,$A0,$65,$10,$F4,$08,$FC,$02,$06,$5E,$0A,$3A ; $D06399
    db $01,$03,$01,$02,$84,$05,$01,$05,$F4,$0B,$2A,$77,$FA,$45,$05,$10 ; $D063A9
    db $1F,$4B,$B8,$C5,$08,$71,$72,$02,$E4,$06,$4C,$0D,$18,$1C,$B0,$B8 ; $D063B9
    db $E8,$F8,$50,$F0,$B0,$DD,$61,$BA,$C2,$1F,$E0,$BF,$40,$F7,$00,$EF ; $D063C9
    db $00,$24,$20,$14,$70,$09,$BB,$04,$5F,$02,$2D,$00,$94,$02,$0E,$02 ; $D063D9
    db $26,$E2,$1F,$F2,$0F,$F9,$06,$FD,$02,$01,$00,$6B,$8C,$74,$02,$FE ; $D063E9
    db $81,$EF,$80,$E1,$60,$1F,$30,$0F,$28,$E7,$7C,$45,$7C,$11,$FB,$58 ; $D063F9
    db $7B,$6D,$01,$81,$64,$72,$03,$1C,$33,$34,$03,$10,$80,$80,$42,$C2 ; $D06409
    db $60,$AB,$15,$DF,$D4,$3C,$1C,$E3,$3C,$C3,$C0,$03,$94,$6B,$56,$A9 ; $D06419
    db $3F,$6D,$C0,$63,$09,$16,$47,$49,$00,$29,$3C,$02,$DC,$C3,$4F,$3F ; $D06429
    db $40,$07,$01,$D7,$60,$01,$54,$7F,$40,$BF,$E9,$E1,$1D,$FB,$06,$FB ; $D06439
    db $80,$58,$E1,$00,$88,$00,$82,$01,$1D,$F9,$E6,$1E,$E3,$93,$FD,$03 ; $D06449
    db $A1,$1C,$FB,$76,$F9,$7D,$30,$C4,$FA,$0D,$00,$7C,$40,$10,$BA,$00 ; $D06459
    db $FE,$29,$00,$88,$77,$BC,$83,$1C,$23,$83,$FF,$2D,$05,$FF,$70,$84 ; $D06469
    db $A0,$7F,$20,$DF,$01,$C5,$C0,$8A,$80,$47,$41,$8A,$D4,$19,$99,$4D ; $D06479
    db $DD,$3F,$E2,$55,$D5,$0D,$41,$BE,$81,$7E,$75,$80,$71,$04,$02,$06 ; $D06489
    db $00,$12,$96,$61,$04,$E4,$06,$01,$97,$70,$08,$3F,$08,$7E,$8A,$CE ; $D06499
    db $00,$CC,$64,$E9,$09,$F0,$C5,$01,$98,$60,$C7,$F0,$00,$B1,$00,$31 ; $D064A9
    db $00,$33,$00,$02,$BE,$06,$FE,$03,$3F,$0F,$3F,$A9,$AD,$06,$FF,$53 ; $D064B9
    db $4F,$B9,$F7,$EB,$55,$81,$1D,$D1,$7C,$35,$49,$3F,$C0,$F3,$0A,$60 ; $D064C9
    db $D6,$90,$E0,$29,$E0,$C0,$01,$70,$40,$E0,$48,$EF,$E1,$1F,$71,$CF ; $D064D9
    db $9F,$DF,$9F,$C0,$91,$01,$8F,$74,$D0,$84,$BC,$C0,$FD,$F0,$FF,$94 ; $D064E9
    db $FC,$B8,$F8,$9E,$FE,$82,$F3,$09,$EF,$18,$43,$5E,$00,$0F,$60,$4C ; $D064F9
    db $03,$78,$07,$7F,$E8,$92,$C2,$65,$37,$72,$02,$E7,$02,$CA,$CB,$28 ; $D06509
    db $2F,$A0,$BB,$94,$F3,$40,$CF,$A3,$9E,$70,$8F,$43,$BC,$CC,$30,$31 ; $D06519
    db $C0,$C5,$03,$07,$80,$74,$1F,$3F,$7F,$A6,$BF,$85,$0E,$EC,$05,$D3 ; $D06529
    db $47,$8B,$93,$84,$7F,$FF,$81,$45,$CC,$DA,$C2,$01,$1C,$03,$4F,$3F ; $D06539
    db $A7,$9B,$0C,$EB,$B9,$07,$5B,$24,$CF,$02,$E3,$C7,$F1,$F9,$FC,$FE ; $D06549
    db $D0,$F1,$3F,$F8,$05,$7F,$07,$C7,$8F,$E3,$F3,$F8,$46,$F1,$01,$05 ; $D06559
    db $3A,$FF,$14,$FF,$88,$15,$13,$FD,$38,$1D,$43,$BF,$FF,$6B,$DF,$17 ; $D06569
    db $8C,$FB,$FA,$FD,$D5,$FE,$60,$FF,$22,$FD,$F5,$1A,$6F,$90,$4E,$80 ; $D06579
    db $FD,$E6,$39,$4C,$1D,$00,$E3,$00,$FC,$44,$FA,$2B,$D4,$D6,$28,$DC ; $D06589
    db $EF,$85,$25,$40,$10,$81,$04,$90,$1B,$1D,$17,$CF,$FF,$CB,$2E,$FF ; $D06599
    db $02,$2E,$81,$15,$30,$03,$18,$25,$41,$32,$A2,$4B,$1E,$AE,$08,$46 ; $D065A9
    db $D1,$FF,$EA,$2B,$6B,$FA,$90,$BF,$CE,$F1,$81,$FF,$3B,$16,$C8,$00 ; $D065B9
    db $29,$F5,$00,$FA,$03,$A0,$87,$D0,$1D,$54,$26,$01,$51,$79,$80,$FF ; $D065C9
    db $0A,$DA,$A3,$ED,$5F,$FF,$AF,$7F,$07,$F8,$40,$FF,$C0,$DF,$F0,$EE ; $D065D9
    db $42,$6C,$00,$B5,$83,$59,$89,$2D,$01,$01,$40,$60,$C0,$3F,$E1,$1F ; $D065E9
    db $60,$9F,$31,$CE,$98,$E6,$CC,$F2,$D2,$B0,$80,$3A,$09,$F8,$A0,$BF ; $D065F9
    db $50,$D0,$D8,$F0,$FC,$30,$F8,$FE,$53,$FD,$FD,$07,$E0,$7F,$4F,$BF ; $D06609
    db $37,$00,$0F,$0B,$07,$05,$03,$02,$01,$03,$AA,$1F,$13,$C0,$01,$C9 ; $D06619
    db $D3,$01,$81,$F2,$06,$7D,$7E,$77,$FF,$C0,$B2,$3B,$60,$7E,$00,$3D ; $D06629
    db $68,$07,$76,$54,$68,$A4,$C2,$7A,$C7,$FF,$33,$C4,$FF,$24,$C2,$8A ; $D06639
    db $03,$83,$AD,$41,$C3,$31,$85,$30,$CA,$01,$C4,$03,$70,$03,$38,$01 ; $D06649
    db $7E,$00,$77,$80,$47,$79,$FE,$31,$FF,$33,$EE,$08,$7D,$C7,$FF,$B5 ; $D06659
    db $C9,$38,$72,$FF,$C6,$D0,$80,$24,$E0,$08,$04,$FA,$83,$7C,$80,$7F ; $D06669
    db $32,$0C,$01,$E5,$CF,$3F,$C3,$EB,$62,$A1,$B0,$E3,$01,$1C,$19,$FE ; $D06679
    db $A0,$75,$B8,$41,$05,$05,$AB,$6B,$0A,$BF,$AA,$95,$DE,$C0,$D5,$C0 ; $D06689
    db $75,$FA,$DB,$69,$2A,$2D,$40,$17,$23,$3E,$1E,$38,$A2,$BC,$44,$78 ; $D06699
    db $2C,$D0,$58,$A0,$F1,$01,$83,$03,$06,$07,$C0,$B5,$D3,$80,$3A,$22 ; $D066A9
    db $63,$43,$69,$17,$77,$CD,$CD,$0B,$03,$CF,$CF,$97,$87,$F7,$8F,$CF ; $D066B9
    db $1E,$DE,$1C,$9C,$68,$80,$F2,$00,$68,$4B,$F7,$E8,$80,$D9,$E1,$00 ; $D066C9
    db $E3,$00,$F5,$4B,$F5,$00,$D8,$DC,$DC,$71,$77,$A7,$AF,$4E,$3A,$5E ; $D066D9
    db $0A,$B0,$CE,$00,$1D,$23,$00,$8F,$E0,$3D,$BE,$01,$42,$07,$46,$AA ; $D066E9
    db $AA,$D5,$D5,$7C,$25,$AA,$55,$EB,$0C,$A1,$A6,$A1,$11,$55,$09,$00 ; $D066F9
    db $2A,$00,$55,$D9,$A1,$71,$A0,$5F,$10,$1B,$A0,$A7,$00,$7E,$83,$BB ; $D06709
    db $7C,$7D,$56,$FE,$18,$07,$C3,$14,$1F,$E0,$5F,$83,$19,$7C,$00,$83 ; $D06719
    db $BF,$05,$05,$24,$28,$C7,$A8,$50,$50,$E8,$EA,$85,$9F,$75,$F5,$15 ; $D06729
    db $00,$0E,$F0,$05,$F9,$D7,$AE,$2A,$17,$EB,$F5,$28,$94,$F9,$A3,$3B ; $D06739
    db $00,$0A,$D0,$01,$A0,$41,$F3,$62,$01,$76,$44,$6D,$08,$DB,$28,$E7 ; $D06749
    db $6A,$DC,$79,$F6,$7E,$81,$7C,$83,$F8,$07,$E0,$1F,$08,$86,$09,$3F ; $D06759
    db $25,$99,$02,$70,$02,$E8,$02,$F0,$06,$E8,$0C,$F0,$F7,$1B,$1D,$81 ; $D06769
    db $7E,$0C,$9D,$01,$0C,$C7,$9D,$70,$A7,$74,$B9,$ED,$70,$1A,$61,$EF ; $D06779
    db $A2,$FF,$52,$72,$46,$6F,$C2,$E6,$C8,$FB,$14,$EB,$12,$ED,$E3,$1C ; $D06789
    db $E2,$1D,$73,$8D,$41,$81,$72,$F7,$00,$20,$03,$01,$08,$43,$26,$02 ; $D06799
    db $02,$06,$AE,$09,$F9,$24,$37,$18,$9B,$06,$FD,$C0,$01,$18,$FD,$F8 ; $D067A9
    db $FD,$54,$0E,$F9,$0F,$F0,$3B,$AE,$DA,$63,$2E,$43,$04,$1F,$0E,$01 ; $D067B9
    db $77,$08,$1C,$03,$86,$81,$ED,$C2,$4C,$C0,$02,$78,$8E,$9C,$85,$01 ; $D067C9
    db $20,$3A,$DF,$40,$86,$6D,$80,$E7,$18,$CF,$00,$DF,$11,$F0,$0F,$47 ; $D067D9
    db $20,$D2,$9F,$DF,$42,$01,$25,$30,$A9,$F0,$F7,$F0,$75,$FB,$20,$C1 ; $D067E9
    db $EE,$E0,$F4,$E8,$FF,$71,$06,$CE,$0C,$C0,$01,$08,$00,$19,$00,$18 ; $D067F9
    db $1B,$00,$10,$0D,$9E,$01,$B8,$F0,$FB,$CC,$FF,$E4,$F5,$86,$BF,$18 ; $D06809
    db $DF,$88,$FB,$8D,$9F,$63,$00,$66,$01,$4E,$00,$1C,$4C,$00,$EC,$25 ; $D06819
    db $B9,$67,$78,$00,$0B,$FF,$01,$DB,$04,$FD,$60,$FF,$8E,$9F,$80,$88 ; $D06829
    db $C4,$FC,$C0,$D4,$38,$07,$01,$03,$61,$7F,$60,$00,$77,$D5,$1D,$2E ; $D06839
    db $3B,$00,$78,$59,$A1,$DE,$3A,$DA,$2B,$C1,$3F,$47,$3F,$5E,$3F,$58 ; $D06849
    db $38,$11,$B7,$81,$DE,$83,$DC,$8C,$D0,$80,$C0,$01,$81,$C0,$B9,$74 ; $D06859
    db $85,$C3,$0B,$C7,$A7,$BF,$9E,$FE,$79,$FC,$EA,$FD,$88,$D7,$20,$9F ; $D06869
    db $7F,$FF,$EF,$F3,$02,$AB,$01,$05,$03,$1B,$07,$D2,$C3,$4F,$11,$3E ; $D06879
    db $9F,$7E,$EC,$0F,$5A,$37,$9F,$3E,$FF,$F5,$01,$DB,$3D,$0C,$00,$C4 ; $D06889
    db $D2,$01,$B0,$2D,$75,$C3,$F0,$6D,$FF,$31,$0F,$B1,$1F,$0F,$B3,$CF ; $D06899
    db $04,$D1,$83,$7A,$FF,$F4,$D2,$73,$D0,$0E,$FF,$A9,$FE,$40,$DF,$AF ; $D068A9
    db $08,$D5,$7F,$76,$C6,$CD,$85,$E2,$2B,$D0,$52,$AC,$B0,$42,$54,$A7 ; $D068B9
    db $E6,$04,$74,$8C,$EF,$3F,$D3,$DC,$BA,$0F,$F9,$71,$F9,$01,$F4,$FB ; $D068C9
    db $71,$A5,$40,$E0,$19,$43,$14,$8C,$18,$2C,$CA,$93,$08,$4A,$25,$29 ; $D068D9
    db $9E,$CE,$1F,$E6,$E8,$95,$E8,$F7,$09,$11,$F7,$07,$FF,$51,$73,$12 ; $D068E9
    db $58,$74,$72,$A1,$08,$22,$31,$84,$E3,$08,$C6,$11,$8C,$23,$62,$25 ; $D068F9
    db $97,$EF,$2E,$DF,$1C,$FF,$78,$EF,$BA,$1D,$E0,$C5,$29,$A0,$C7,$DF ; $D06909
    db $20,$95,$47,$20,$8F,$50,$0F,$E0,$0F,$D0,$07,$E0,$00,$B5,$00,$A5 ; $D06919
    db $DB,$1F,$D4,$C8,$71,$03,$4A,$8D,$A7,$71,$53,$04,$23,$A8,$07,$D2 ; $D06929
    db $0D,$A5,$0A,$53,$0C,$0F,$40,$05,$F0,$AC,$AA,$C8,$55,$00,$BF,$EF ; $D06939
    db $40,$E3,$02,$FB,$80,$3E,$20,$C7,$08,$B0,$43,$68,$81,$80,$F3,$54 ; $D06949
    db $00,$03,$FC,$C9,$55,$F8,$D1,$43,$53,$C1,$71,$7E,$3F,$BF,$17,$57 ; $D06959
    db $0B,$8B,$14,$F4,$2A,$EA,$04,$D6,$10,$D5,$81,$E9,$ED,$BA,$44,$68 ; $D06969
    db $80,$34,$C0,$2B,$C0,$35,$C0,$1B,$E0,$1F,$E0,$BE,$FF,$60,$5E,$90 ; $D06979
    db $B0,$E6,$EE,$F8,$F8,$7F,$7F,$0C,$8F,$26,$F7,$00,$15,$70,$0F,$1E ; $D06989
    db $01,$07,$00,$80,$E9,$41,$EA,$87,$3C,$00,$02,$02,$05,$7A,$E3,$01 ; $D06999
    db $01,$FC,$D0,$D0,$04,$FC,$A1,$FD,$16,$00,$33,$06,$F9,$0E,$F1,$FE ; $D069A9
    db $01,$2E,$45,$01,$4D,$3F,$00,$87,$20,$D4,$C0,$FD,$01,$03,$82,$C7 ; $D069B9
    db $5C,$81,$78,$25,$7B,$23,$DC,$FD,$FE,$7D,$97,$01,$2C,$67,$7F,$26 ; $D069C9
    db $FE,$00,$D8,$62,$DE,$00,$B8,$85,$F8,$0A,$78,$8D,$78,$67,$98,$E6 ; $D069D9
    db $19,$61,$DE,$1A,$21,$88,$77,$01,$2D,$89,$70,$60,$00,$4B,$EB,$B8 ; $D069E9
    db $60,$5F,$7F,$4A,$DF,$40,$DF,$20,$B4,$20,$A0,$A0,$1F,$01,$AB,$14 ; $D069F9
    db $BF,$00,$84,$01,$79,$29,$71,$1C,$1F,$F8,$FE,$E0,$FC,$C1,$F9,$03 ; $D06A09
    db $E3,$07,$87,$0E,$0E,$3C,$3D,$D5,$B1,$65,$81,$50,$2D,$F1,$2E,$00 ; $D06A19
    db $C3,$D8,$00,$38,$3A,$71,$7D,$E2,$FA,$C6,$F7,$8D,$FD,$1A,$FA,$1B ; $D06A29
    db $DF,$36,$B6,$C7,$00,$8E,$00,$1D,$00,$39,$00,$73,$00,$E6,$01,$E7 ; $D06A39
    db $00,$CE,$01,$98,$B8,$25,$5F,$C0,$97,$03,$80,$0E,$01,$1D,$02,$2E ; $D06A49
    db $AE,$FB,$78,$47,$07,$B5,$61,$E5,$79,$1D,$01,$B0,$4F,$B9,$BC,$02 ; $D06A59
    db $0D,$12,$01,$01,$01,$FE,$04,$F8,$31,$C0,$EA,$09,$EC,$06,$15,$BF ; $D06A69
    db $0B,$2E,$F3,$10,$1D,$E0,$20,$C1,$4C,$85,$21,$1D,$42,$3E,$02,$FC ; $D06A79
    db $02,$44,$15,$08,$17,$06,$F9,$A2,$1F,$3E,$C7,$60,$47,$DF,$18,$05 ; $D06A89
    db $0B,$18,$E0,$19,$21,$D1,$47,$19,$6F,$1F,$95,$D1,$01,$24,$5D,$11 ; $D06A99
    db $EE,$00,$42,$39,$C1,$73,$83,$C6,$07,$C6,$E5,$78,$7F,$D8,$64,$80 ; $D06AA9
    db $2F,$F8,$AB,$D5,$93,$E5,$7F,$A4,$C2,$87,$E7,$60,$0E,$79,$E4,$0E ; $D06AB9
    db $EE,$0C,$01,$CC,$1C,$9C,$38,$39,$F0,$F0,$07,$F5,$FB,$1D,$03,$F3 ; $D06AC9
    db $57,$DB,$C7,$71,$7C,$70,$E0,$EB,$01,$37,$07,$1F,$0E,$BE,$1C,$7C ; $D06AD9
    db $2B,$FA,$C2,$03,$2A,$FA,$1F,$7E,$E2,$79,$7E,$FA,$05,$00,$03,$43 ; $D06AE9
    db $C0,$81,$80,$20,$8A,$F4,$F3,$1B,$8B,$24,$E4,$49,$DB,$02,$FB,$61 ; $D06AF9
    db $E6,$00,$64,$9B,$01,$C0,$FF,$00,$9F,$28,$07,$B8,$EA,$81,$D9,$FC ; $D06B09
    db $FD,$49,$48,$01,$00,$EC,$02,$DB,$3D,$48,$62,$B7,$05,$C3,$DF,$E3 ; $D06B19
    db $C3,$EF,$D3,$FF,$89,$B9,$80,$D0,$A2,$FE,$0C,$7F,$0F,$BF,$30,$00 ; $D06B29
    db $9D,$01,$20,$23,$E1,$6F,$00,$41,$A3,$49,$03,$01,$11,$FF,$F1,$F7 ; $D06B39
    db $CB,$01,$23,$FF,$03,$2F,$17,$3F,$04,$81,$C1,$DE,$18,$00,$18,$00 ; $D06B49
    db $08,$23,$EA,$57,$60,$E5,$00,$62,$01,$E2,$FE,$E0,$EA,$F1,$FF,$F0 ; $D06B59
    db $F5,$F8,$FF,$F8,$FA,$FC,$FE,$7C,$7C,$19,$D9,$9D,$0C,$DC,$0E,$2A ; $D06B69
    db $06,$00,$07,$B0,$56,$83,$00,$35,$27,$AF,$53,$E3,$8F,$1E,$9D,$3E ; $D06B79
    db $98,$1D,$33,$19,$19,$35,$34,$30,$17,$CF,$2F,$DF,$1F,$FF,$1E,$FF ; $D06B89
    db $3F,$FE,$3C,$FE,$38,$FE,$39,$FE,$DF,$A3,$63,$7F,$A3,$E7,$DB,$FF ; $D06B99
    db $87,$DF,$3A,$3B,$7A,$FF,$FD,$FE,$00,$69,$C7,$83,$9B,$03,$3B,$03 ; $D06BA9
    db $7B,$57,$3B,$0C,$A6,$7B,$57,$F9,$18,$FE,$F8,$FE,$03,$D2,$FC,$03 ; $D06BB9
    db $A6,$F8,$AC,$51,$58,$A2,$E6,$04,$BB,$2C,$A9,$2E,$AA,$55,$1A,$FD ; $D06BC9
    db $02,$2F,$00,$05,$A0,$82,$50,$45,$20,$02,$10,$03,$47,$19,$5F,$CB ; $D06BD9
    db $01,$63,$02,$2E,$F5,$B6,$1E,$A3,$5C,$D4,$2A,$A2,$5C,$D5,$28,$A7 ; $D06BE9
    db $5F,$BF,$7F,$04,$3D,$81,$00,$CA,$10,$97,$13,$7D,$09,$7F,$7A,$7F ; $D06BF9
    db $3C,$7F,$18,$1F,$0C,$FF,$48,$BF,$E1,$D7,$35,$23,$02,$7F,$F7,$C2 ; $D06C09
    db $08,$DF,$BA,$7C,$FD,$FA,$1B,$F9,$02,$F9,$06,$F9,$01,$A7,$B7,$9D ; $D06C19
    db $34,$F4,$65,$FE,$15,$01,$FF,$D2,$78,$CD,$42,$E3,$B5,$A0,$48,$C0 ; $D06C29
    db $01,$80,$44,$C3,$10,$8F,$60,$DF,$C0,$ED,$40,$BF,$1C,$C4,$E1,$C0 ; $D06C39
    db $65,$03,$D2,$3F,$B8,$FC,$55,$AA,$5F,$00,$B6,$08,$89,$74,$06,$F8 ; $D06C49
    db $08,$F0,$35,$C5,$0D,$50,$04,$2E,$5D,$05,$5D,$FA,$A0,$FF,$42,$B8 ; $D06C59
    db $54,$02,$A4,$04,$2A,$2A,$1A,$1F,$F5,$FF,$5A,$5F,$1C,$C3,$07,$F0 ; $D06C69
    db $75,$04,$FB,$2A,$D5,$89,$07,$07,$5F,$A0,$3C,$FF,$A0,$5E,$89,$E1 ; $D06C79
    db $00,$81,$00,$23,$9E,$80,$51,$F1,$08,$FF,$41,$75,$2F,$BA,$B5,$1C ; $D06C89
    db $E7,$DD,$F1,$0E,$74,$65,$80,$0A,$5C,$CE,$75,$4F,$80,$B7,$30,$6F ; $D06C99
    db $78,$C7,$E8,$93,$D8,$37,$38,$72,$78,$0E,$F1,$57,$CB,$30,$CF,$78 ; $D06CA9
    db $87,$F8,$07,$E8,$07,$C8,$07,$88,$07,$33,$3B,$DB,$1F,$C9,$0D,$F9 ; $D06CB9
    db $1D,$2E,$03,$A9,$1C,$0D,$C9,$09,$93,$13,$3C,$C0,$1C,$E0,$0E,$F0 ; $D06CC9
    db $1E,$03,$86,$01,$0B,$1D,$D3,$FF,$E2,$71,$1B,$E0,$FE,$D1,$DC,$3A ; $D06CD9
    db $35,$D0,$F2,$3F,$97,$EA,$01,$D1,$01,$31,$73,$81,$05,$46,$42,$82 ; $D06CE9
    db $CA,$CE,$B6,$07,$B6,$5D,$6C,$9D,$CC,$1F,$9C,$79,$FE,$3A,$FD,$B2 ; $D06CF9
    db $7D,$86,$79,$C0,$01,$CC,$33,$4C,$33,$5C,$06,$23,$1D,$EA,$8A,$7D ; $D06D09
    db $03,$00,$AF,$58,$5D,$AA,$AF,$48,$EF,$08,$D1,$01,$3E,$F3,$04,$01 ; $D06D19
    db $01,$2A,$AA,$35,$F5,$3F,$BF,$3F,$DE,$45,$63,$C1,$C1,$1F,$9F,$D5 ; $D06D29
    db $00,$CA,$50,$57,$C1,$A1,$05,$A0,$40,$70,$F8,$F9,$F0,$F0,$E2,$E2 ; $D06D39
    db $D5,$D5,$EF,$EF,$BE,$BF,$8A,$5D,$79,$07,$0E,$F3,$1D,$F8,$A1,$10 ; $D06D49
    db $00,$40,$A0,$7F,$33,$3F,$66,$B8,$F0,$6E,$E3,$FF,$C4,$CE,$83,$9F ; $D06D59
    db $83,$AF,$01,$1F,$00,$2F,$CF,$00,$9E,$06,$3E,$01,$EE,$2B,$AA,$06 ; $D06D69
    db $44,$2A,$05,$14,$0B,$03,$C0,$11,$2C,$00,$AB,$AB,$D6,$3F,$D7,$55 ; $D06D79
    db $03,$0E,$5D,$AB,$54,$D7,$E0,$14,$03,$FC,$01,$5C,$A0,$B3,$43,$CA ; $D06D89
    db $0F,$64,$81,$2E,$8F,$90,$9F,$10,$B2,$0C,$19,$13,$0F,$74,$F0,$DC ; $D06D99
    db $7F,$33,$60,$8F,$60,$EF,$00,$B4,$33,$C8,$E7,$45,$CA,$C5,$8A,$80 ; $D06DA9
    db $70,$83,$3D,$AA,$30,$45,$CF,$63,$3F,$10,$BD,$D5,$2A,$46,$C3,$29 ; $D06DB9
    db $3C,$C0,$E0,$00,$45,$03,$15,$1F,$E0,$FA,$00,$D0,$24,$05,$05,$5B ; $D06DC9
    db $D2,$41,$AE,$A7,$12,$17,$00,$4F,$10,$1E,$1D,$80,$BC,$A0,$F2,$23 ; $D06DD9
    db $B3,$17,$17,$B5,$B5,$79,$79,$CF,$30,$5F,$E4,$7E,$DF,$00,$75,$DC ; $D06DE9
    db $C6,$AD,$4A,$00,$86,$39,$B8,$F4,$A3,$0F,$4F,$3E,$3E,$FD,$FE,$78 ; $D06DF9
    db $7A,$D2,$D2,$A1,$A4,$03,$3D,$FC,$BA,$39,$C1,$EB,$52,$86,$9C,$01 ; $D06E09
    db $2F,$01,$5E,$03,$FD,$02,$E0,$E5,$81,$8F,$00,$17,$02,$BF,$AF,$0F ; $D06E19
    db $D0,$40,$F4,$F0,$F9,$F0,$1F,$D8,$D7,$77,$45,$BF,$00,$92,$0F,$04 ; $D06E29
    db $0F,$5C,$FC,$2B,$FB,$76,$5F,$F3,$B8,$57,$C3,$83,$01,$01,$03,$07 ; $D06E39
    db $07,$3F,$FC,$03,$FB,$04,$20,$6B,$78,$43,$FC,$05,$F8,$07,$3D,$C0 ; $D06E49
    db $8C,$7C,$FF,$EE,$01,$AB,$90,$DC,$FF,$7C,$83,$00,$FE,$03,$7A,$93 ; $D06E59
    db $C5,$1B,$40,$98,$1F,$C3,$04,$04,$23,$F8,$F8,$89,$09,$1D,$1B,$FC ; $D06E69
    db $50,$67,$07,$00,$45,$F5,$62,$1A,$C4,$E0,$20,$E3,$E1,$00,$09,$00 ; $D06E79
    db $D5,$00,$FE,$B4,$FF,$8A,$00,$85,$00,$9F,$00,$1F,$EB,$01,$41,$8E ; $D06E89
    db $2A,$7F,$08,$BA,$18,$BD,$5A,$FF,$04,$6F,$82,$DA,$33,$E7,$01,$F5 ; $D06E99
    db $BB,$75,$C5,$C0,$95,$81,$00,$98,$00,$23,$1C,$C1,$01,$DD,$22,$7E ; $D06EA9
    db $FE,$00,$01,$2E,$AE,$42,$C2,$01,$22,$62,$EE,$EE,$C2,$F6,$81,$D1 ; $D06EB9
    db $3B,$81,$03,$51,$00,$3D,$00,$DD,$D5,$C5,$B9,$60,$45,$38,$B4,$B9 ; $D06EC9
    db $B5,$B9,$75,$B1,$78,$B4,$36,$F8,$3E,$FD,$3F,$1F,$1F,$BF,$B1,$7E ; $D06ED9
    db $01,$B9,$7E,$B8,$7F,$06,$BC,$7F,$BE,$7F,$BF,$01,$17,$5F,$FB,$F8 ; $D06EE9
    db $1C,$B6,$F8,$FE,$80,$87,$80,$40,$5F,$36,$3B,$42,$97,$E0,$F3,$FB ; $D06EF9
    db $7F,$01,$BB,$E0,$01,$43,$BF,$3F,$3B,$C7,$E7,$D5,$C3,$52,$C7,$04 ; $D06F09
    db $05,$58,$0A,$31,$90,$66,$A6,$00,$92,$4C,$19,$BC,$3B,$79,$F8,$A1 ; $D06F19
    db $A7,$C0,$D6,$3A,$7B,$CF,$88,$0D,$A1,$15,$8B,$71,$40,$15,$83,$2F ; $D06F29
    db $07,$3F,$1E,$79,$3E,$FB,$70,$EC,$E3,$D8,$E7,$3F,$9D,$06,$21,$FD ; $D06F39
    db $FE,$3B,$18,$FD,$F3,$DF,$42,$FC,$F3,$07,$F0,$9F,$C0,$F8,$07,$71 ; $D06F49
    db $91,$9D,$2F,$CF,$4F,$53,$01,$53,$DF,$E0,$7A,$87,$D5,$54,$00,$5F ; $D06F59
    db $7F,$81,$5C,$5F,$DA,$3F,$FC,$0E,$1F,$3A,$FF,$3D,$F5,$91,$BF,$D5 ; $D06F69
    db $13,$1D,$5F,$BF,$DF,$43,$6E,$BF,$95,$5B,$EA,$6A,$FF,$DC,$D9,$AB ; $D06F79
    db $01,$FE,$09,$2E,$BF,$5A,$50,$00,$D4,$31,$20,$19,$26,$81,$0E,$AA ; $D06F89
    db $2C,$28,$22,$30,$3B,$45,$BF,$4B,$BF,$EF,$9F,$01,$17,$CC,$9F,$C3 ; $D06F99
    db $2A,$9C,$DC,$80,$00,$82,$A1,$02,$7A,$00,$54,$86,$2C,$B9,$8B,$91 ; $D06FA9
    db $C5,$C2,$A2,$B0,$7C,$E0,$6B,$E7,$F8,$5C,$3B,$F9,$C7,$F7,$0F,$2F ; $D06FB9
    db $1F,$6F,$1F,$1A,$A1,$74,$40,$68,$C1,$D0,$E2,$A0,$F1,$10,$BA,$48 ; $D06FC9
    db $1D,$8C,$07,$7E,$BF,$75,$FE,$7F,$5D,$3F,$AE,$DF,$D5,$EF,$EA,$F7 ; $D06FD9
    db $F4,$FB,$03,$53,$01,$A9,$00,$76,$0C,$F5,$08,$B3,$1A,$E3,$47,$B3 ; $D06FE9
    db $29,$C1,$9C,$E0,$4E,$F0,$E9,$DC,$12,$F8,$43,$FC,$EA,$81,$C1,$E3 ; $D06FF9
    db $C8,$40,$48,$08,$08,$09,$59,$00,$B1,$52,$F3,$B2,$F3,$E0,$E1,$38 ; $D07009
    db $D7,$EB,$C0,$1E,$F9,$06,$F1,$0E,$F3,$6B,$0C,$01,$86,$E1,$1E,$27 ; $D07019
    db $27,$4D,$4F,$9A,$9F,$30,$3F,$28,$3F,$03,$00,$29,$3F,$03,$E3,$38 ; $D07029
    db $C0,$70,$80,$54,$E0,$C0,$7B,$01,$FC,$00,$78,$80,$01,$D9,$AA,$FF ; $D07039
    db $75,$55,$BF,$99,$03,$14,$4C,$00,$B8,$E2,$7A,$F9,$32,$F0,$1F,$F8 ; $D07049
    db $13,$D0,$1F,$D8,$AB,$E8,$2A,$E8,$15,$F4,$5F,$30,$0F,$43,$03,$08 ; $D07059
    db $17,$0E,$01,$14,$0B,$07,$B8,$F8,$93,$10,$5F,$06,$18,$92,$10,$4D ; $D07069
    db $08,$03,$37,$7D,$38,$47,$7A,$53,$EF,$31,$18,$E7,$03,$08,$F7,$AE ; $D07079
    db $03,$52,$38,$C7,$1F,$9F,$1D,$BF,$17,$BF,$32,$BF,$34,$BE,$60,$AE ; $D07089
    db $40,$8F,$40,$9E,$A0,$40,$01,$01,$A1,$40,$B0,$41,$91,$60,$9D,$01 ; $D07099
    db $FF,$45,$CD,$C2,$54,$FF,$A2,$FF,$08,$BF,$01,$7F,$07,$7F,$1A,$BA ; $D070A9
    db $CC,$77,$9B,$40,$66,$80,$01,$C5,$9F,$B8,$F5,$85,$B0,$F0,$98,$3C ; $D070B9
    db $6D,$FF,$32,$FF,$40,$F5,$51,$59,$80,$81,$7F,$6E,$1F,$1D,$D3,$E0 ; $D070C9
    db $28,$10,$14,$08,$1E,$08,$AE,$08,$6D,$1E,$40,$2A,$29,$AA,$AB,$07 ; $D070D9
    db $F5,$F5,$54,$FE,$01,$62,$39,$EA,$EA,$02,$CA,$54,$01,$0B,$75,$C1 ; $D070E9
    db $6E,$15,$3F,$0B,$6C,$8D,$6D,$0F,$8F,$BF,$20,$FF,$17,$DF,$E4,$FC ; $D070F9
    db $80,$8A,$DF,$00,$1F,$C0,$4A,$B0,$40,$60,$03,$20,$00,$13,$00,$30 ; $D07109
    db $7F,$60,$23,$0A,$0A,$7F,$E8,$0A,$0C,$5D,$FD,$D0,$D0,$0B,$06,$3B ; $D07119
    db $BE,$FF,$94,$8C,$80,$52,$15,$00,$57,$2F,$CE,$67,$2B,$2B,$BD,$F1 ; $D07129
    db $C2,$FC,$EA,$E8,$00,$04,$02,$3E,$34,$3E,$1C,$1D,$D4,$A4,$4A,$16 ; $D07139
    db $03,$0D,$3C,$C3,$3F,$C0,$03,$D6,$81,$E3,$FA,$A4,$A7,$04,$0F,$03 ; $D07149
    db $DC,$BB,$29,$DF,$B8,$32,$00,$07,$00,$74,$5B,$B9,$57,$FD,$01,$DD ; $D07159
    db $2C,$8F,$AE,$DF,$ED,$39,$87,$FF,$67,$F7,$5D,$DD,$B3,$B3,$EE,$EE ; $D07169
    db $DF,$DF,$A5,$A5,$7C,$02,$C1,$B7,$72,$08,$9D,$22,$93,$4C,$CE,$11 ; $D07179
    db $DF,$20,$A5,$5A,$70,$F0,$F5,$F1,$E1,$F5,$E3,$E3,$E7,$E2,$00,$77 ; $D07189
    db $E1,$77,$D4,$D7,$CD,$0E,$F2,$0C,$F6,$08,$F5,$08,$F3,$C0,$01,$73 ; $D07199
    db $88,$D3,$28,$01,$8F,$8F,$6F,$6F,$FE,$FE,$F6,$AE,$02,$3C,$FE,$F2 ; $D071A9
    db $FE,$C0,$FB,$08,$FF,$71,$00,$91,$00,$F0,$01,$F8,$01,$FC,$01,$F8 ; $D071B9
    db $04,$90,$14,$7E,$7F,$1C,$0E,$CE,$9F,$A2,$61,$BF,$03,$55,$80,$E3 ; $D071C9
    db $58,$D6,$F0,$F0,$70,$10,$01,$08,$F8,$14,$04,$FC,$03,$1F,$1C,$0F ; $D071D9
    db $00,$EF,$01,$71,$F7,$A3,$FC,$38,$D0,$C0,$95,$EB,$EB,$55,$55,$20 ; $D071E9
    db $19,$21,$88,$89,$D8,$10,$CC,$53,$95,$EB,$01,$14,$55,$AA,$21,$DE ; $D071F9
    db $89,$76,$14,$AF,$15,$0D,$5D,$8F,$99,$F9,$03,$53,$27,$B9,$25,$F7 ; $D07209
    db $DC,$DE,$51,$7B,$1E,$3F,$9B,$60,$AF,$40,$2D,$C0,$09,$C6,$4C,$80 ; $D07219
    db $2D,$00,$2C,$80,$E1,$00,$50,$DD,$38,$BE,$59,$FD,$69,$FD,$41,$FB ; $D07229
    db $60,$E7,$02,$8E,$01,$3E,$33,$0D,$41,$00,$70,$C0,$EE,$70,$04,$71 ; $D07239
    db $03,$08,$00,$71,$22,$C1,$1F,$8D,$00,$7E,$62,$70,$BF,$3E,$3F,$FD ; $D07249
    db $3F,$3E,$7F,$FC,$7F,$3F,$DF,$5F,$E9,$5C,$13,$BF,$7F,$7F,$9B,$A7 ; $D07259
    db $8F,$DB,$E0,$8C,$F2,$9C,$E1,$2B,$D1,$19,$E3,$37,$C3,$53,$A7,$27 ; $D07269
    db $C7,$7F,$5D,$E4,$05,$5F,$F7,$7B,$D7,$02,$09,$F6,$EF,$DD,$EC,$F7 ; $D07279
    db $C8,$8E,$D5,$C4,$9B,$2C,$83,$FE,$B9,$3E,$FA,$F9,$5E,$F5,$A3,$FB ; $D07289
    db $FE,$F3,$A5,$DE,$46,$BB,$AC,$73,$18,$ED,$11,$EF,$AB,$DB,$57,$B8 ; $D07299
    db $A0,$7F,$AD,$DE,$5E,$BB,$BC,$73,$7B,$EC,$D4,$EE,$A7,$C0,$50,$A0 ; $D072A9
    db $B0,$38,$3D,$C2,$55,$2A,$68,$D7,$DD,$E6,$ED,$18,$80,$75,$03,$F8 ; $D072B9
    db $34,$F8,$01,$00,$DD,$81,$CD,$02,$0F,$0E,$0C,$02,$1D,$05,$02,$3E ; $D072C9
    db $50,$05,$9E,$7F,$DF,$3F,$06,$FE,$9F,$7F,$9F,$1E,$A5,$22,$5F,$9E ; $D072D9
    db $15,$0A,$7F,$3D,$FC,$D8,$B3,$E3,$74,$EC,$02,$1F,$8D,$CE,$FC,$06 ; $D072E9
    db $45,$3F,$AB,$06,$41,$97,$D7,$46,$FA,$98,$34,$8C,$75,$11,$49,$38 ; $D072F9
    db $6B,$B9,$EB,$90,$E3,$38,$80,$31,$80,$63,$0B,$01,$67,$80,$9E,$47 ; $D07309
    db $80,$C7,$00,$CF,$00,$40,$42,$20,$81,$80,$8A,$20,$15,$80,$9F,$2A ; $D07319
    db $15,$95,$8A,$2E,$11,$DD,$3F,$63,$08,$95,$7F,$0A,$FF,$A6,$A5,$05 ; $D07329
    db $03,$04,$AD,$CA,$01,$5A,$04,$B2,$04,$FA,$52,$AB,$AD,$54,$5C,$AB ; $D07339
    db $F0,$1E,$54,$FB,$A2,$FD,$4A,$FD,$24,$DB,$04,$FB,$35,$08,$F7,$D5 ; $D07349
    db $C6,$D3,$03,$81,$00,$18,$07,$83,$B8,$4E,$C0,$04,$A0,$6B,$1F,$CA ; $D07359
    db $1B,$56,$38,$7F,$87,$B3,$4E,$00,$FF,$EA,$F4,$EC,$F0,$4F,$40,$00 ; $D07369
    db $35,$E6,$42,$15,$CA,$2B,$59,$DF,$43,$7F,$57,$FF,$8B,$FF,$40,$BF ; $D07379
    db $18,$FF,$E3,$FC,$CC,$F0,$60,$80,$80,$A4,$01,$D8,$1E,$07,$71,$7D ; $D07389
    db $60,$7F,$55,$84,$01,$B3,$1F,$E0,$7E,$D2,$19,$2E,$00,$D0,$3D,$FF ; $D07399
    db $A2,$F3,$1C,$FF,$18,$FB,$B2,$FF,$F4,$F7,$E1,$E1,$A0,$F2,$00,$4B ; $D073A9
    db $BD,$02,$23,$01,$04,$C2,$01,$11,$0E,$E7,$13,$0C,$04,$F4,$06,$E6 ; $D073B9
    db $1B,$FB,$03,$FB,$09,$F9,$40,$DC,$14,$FE,$85,$FD,$14,$0B,$16,$09 ; $D073C9
    db $0B,$04,$81,$01,$01,$06,$3C,$03,$E2,$1C,$0B,$1F,$10,$38,$38,$84 ; $D073D9
    db $40,$50,$B8,$B8,$E0,$F0,$F8,$F8,$60,$70,$18,$18,$48,$F3,$50,$AF ; $D073E9
    db $B8,$BA,$70,$47,$F0,$0F,$F8,$07,$70,$8F,$18,$E7,$44,$9C,$50,$9A ; $D073F9
    db $70,$99,$42,$8A,$70,$9B,$42,$0E,$75,$9F,$0B,$0F,$93,$60,$97,$01 ; $D07409
    db $85,$70,$0C,$94,$60,$81,$70,$0B,$87,$B9,$50,$70,$85,$F5,$08,$B8 ; $D07419
    db $20,$78,$09,$BB,$30,$F3,$28,$FB,$6B,$0C,$B3,$88,$0A,$00,$D7,$01 ; $D07429
    db $08,$07,$00,$F4,$07,$04,$F7,$80,$77,$43,$41,$E2,$8E,$10,$E5,$C2 ; $D07439
    db $E8,$55,$93,$DA,$19,$80,$18,$31,$29,$BD,$1E,$FC,$1F,$EE,$1F,$E6 ; $D07449
    db $1F,$13,$EE,$83,$5B,$1E,$E1,$25,$DE,$A8,$26,$5C,$4A,$23,$60,$E7 ; $D07459
    db $00,$AF,$80,$AF,$00,$3F,$1C,$BF,$BE,$BF,$87,$57,$9F,$7C,$7F,$9F ; $D07469
    db $40,$0C,$9F,$C0,$1F,$C0,$07,$08,$5D,$4F,$62,$09,$C9,$04,$D4,$18 ; $D07479
    db $84,$DA,$07,$D0,$07,$A0,$05,$87,$47,$FF,$30,$D9,$36,$C4,$3B,$82 ; $D07489
    db $79,$63,$F8,$E3,$F8,$C3,$F8,$81,$F8,$3F,$FE,$90,$C6,$7C,$FC,$12 ; $D07499
    db $B2,$3A,$15,$75,$C1,$D0,$F0,$FE,$01,$D5,$48,$00,$00,$FC,$03,$B2 ; $D074A9
    db $4D,$75,$8A,$60,$6B,$9F,$C5,$E4,$4C,$CF,$09,$49,$15,$B3,$80,$C1 ; $D074B9
    db $26,$E5,$A0,$A1,$80,$A1,$00,$A1,$FD,$02,$58,$A6,$A0,$4E,$F4,$0A ; $D074C9
    db $C0,$1A,$0C,$52,$00,$5E,$01,$5E,$FA,$FA,$95,$95,$28,$28,$15,$15 ; $D074D9
    db $00,$00,$C2,$C2,$30,$F0,$18,$F8,$7A,$05,$95,$6A,$28,$D7,$15,$EA ; $D074E9
    db $00,$FF,$C2,$3D,$62,$03,$66,$66,$E1,$29,$29,$88,$88,$84,$84,$52 ; $D074F9
    db $52,$04,$04,$40,$40,$8B,$03,$66,$99,$86,$29,$D6,$88,$77,$84,$7B ; $D07509
    db $52,$AD,$04,$FB,$40,$BF,$03,$30,$9C,$9F,$13,$59,$59,$0A,$18,$0A ; $D07519
    db $81,$81,$07,$C0,$C0,$0C,$00,$05,$9B,$60,$13,$59,$06,$A6,$0A,$F5 ; $D07529
    db $81,$7E,$07,$8E,$80,$B3,$86,$FF,$F7,$F7,$AB,$AB,$01,$8A,$83,$CE ; $D07539
    db $2B,$00,$5F,$09,$F6,$07,$9B,$F7,$08,$AB,$54,$F5,$02,$95,$AA,$DB ; $D07549
    db $D3,$01,$1F,$5D,$5D,$08,$08,$01,$C1,$95,$B6,$6C,$7C,$CE,$1F,$5D ; $D07559
    db $12,$A2,$08,$F7,$3A,$23,$AA,$40,$4F,$CA,$CA,$71,$71,$2A,$2A,$32 ; $D07569
    db $51,$51,$61,$20,$3D,$FE,$00,$00,$CA,$35,$71,$8E,$2A,$D5,$51,$60 ; $D07579
    db $AE,$61,$20,$DF,$8A,$00,$75,$D4,$1F,$CE,$02,$D4,$E4,$03,$A8,$1A ; $D07589
    db $FE,$01,$DC,$15,$32,$40,$41,$40,$7F,$8D,$FF,$55,$31,$C4,$0B,$DC ; $D07599
    db $1B,$01,$D7,$E1,$1B,$01,$BE,$00,$80,$45,$32,$1A,$E4,$38,$E6,$28 ; $D075A9
    db $C5,$01,$2B,$DB,$E4,$04,$7C,$03,$9C,$2C,$BD,$45,$F9,$90,$F0,$89 ; $D075B9
    db $B0,$61,$63,$0B,$77,$81,$03,$25,$43,$07,$43,$4B,$07,$C7,$0F,$D7 ; $D075C9
    db $0F,$8F,$1F,$AF,$1F,$7A,$FF,$7C,$AE,$E1,$F4,$00,$FF,$61,$1E,$60 ; $D075D9
    db $F4,$FC,$FA,$F8,$F9,$03,$DC,$57,$FB,$82,$C5,$6F,$87,$EE,$E1,$17 ; $D075E9
    db $58,$87,$D9,$34,$AF,$0F,$4F,$3F,$5F,$5F,$DF,$DE,$00,$FC,$EF,$FF ; $D075F9
    db $EE,$FF,$D3,$EF,$DF,$EF,$F5,$DF,$B7,$81,$CC,$3F,$A9,$06,$5A,$85 ; $D07609
    db $91,$4D,$74,$8B,$26,$DE,$2A,$95,$7F,$96,$44,$BE,$E9,$F6,$7E,$E5 ; $D07619
    db $D9,$EF,$FE,$C9,$A1,$D8,$BA,$D7,$FF,$97,$55,$B3,$00,$B3,$88,$59 ; $D07629
    db $E6,$99,$E5,$1B,$2C,$17,$D9,$FB,$3F,$03,$39,$07,$48,$3C,$A6,$C0 ; $D07639
    db $D0,$E0,$E8,$F0,$80,$78,$84,$A8,$C0,$CB,$00,$FB,$AF,$EC,$E5,$F3 ; $D07649
    db $FA,$FF,$FD,$FA,$F9,$D6,$FC,$AF,$ED,$DA,$F5,$B8,$3E,$1F,$11,$0E ; $D07659
    db $06,$00,$0D,$0E,$2D,$0E,$50,$00,$39,$06,$5F,$1E,$9F,$70,$8B,$8C ; $D07669
    db $B8,$E6,$7F,$AE,$DF,$3C,$CF,$7E,$8F,$AC,$CF,$2E,$CF,$3F,$7F,$1F ; $D07679
    db $7F,$9F,$78,$DF,$01,$D0,$06,$05,$B8,$C5,$02,$FC,$01,$FD,$07,$F9 ; $D07689
    db $01,$F9,$02,$F6,$13,$EA,$0D,$E4,$27,$D4,$62,$7B,$DB,$FD,$96,$FA ; $D07699
    db $FD,$F2,$FD,$F4,$FB,$E4,$FB,$B9,$CF,$30,$40,$28,$5E,$A3,$57,$B8 ; $D076A9
    db $5E,$83,$77,$03,$00,$03,$F7,$C7,$00,$4F,$80,$46,$81,$F0,$02,$03 ; $D076B9
    db $9B,$84,$1F,$B9,$4E,$FF,$86,$60,$1A,$05,$9C,$83,$0A,$05,$8C,$83 ; $D076C9
    db $46,$41,$80,$7F,$FF,$00,$1F,$FF,$00,$45,$FF,$40,$BF,$E1,$E3,$38 ; $D076D9
    db $23,$B0,$06,$A0,$3D,$E0,$9B,$41,$14,$C2,$29,$E5,$33,$EB,$27,$DF ; $D076E9
    db $CF,$1F,$3F,$DF,$3E,$DF,$1D,$FE,$1B,$FC,$36,$D8,$2C,$D0,$85,$27 ; $D076F9
    db $5A,$1F,$FC,$7F,$F0,$F1,$70,$7A,$F3,$FB,$C3,$18,$31,$F0,$C8,$D9 ; $D07709
    db $E0,$40,$0E,$80,$88,$06,$8F,$97,$A7,$0C,$7C,$0B,$57,$FF,$1D,$8A ; $D07719
    db $FF,$15,$C1,$49,$2B,$D4,$83,$54,$E7,$1F,$1E,$7E,$FF,$06,$BD,$70 ; $D07729
    db $A1,$60,$FD,$FF,$A9,$FE,$2A,$D5,$5F,$A0,$FC,$03,$C1,$75,$FD,$FD ; $D07739
    db $BA,$BA,$E1,$04,$1D,$02,$00,$45,$8B,$04,$DF,$04,$8D,$DF,$84,$57 ; $D07749
    db $C7,$07,$C1,$F9,$E0,$EF,$40,$5F,$B6,$B7,$3C,$00,$38,$07,$01,$3E ; $D07759
    db $00,$1E,$74,$45,$4A,$00,$E8,$0B,$3B,$FD,$BC,$80,$EC,$AA,$AA,$D5 ; $D07769
    db $D5,$02,$81,$81,$80,$80,$03,$00,$03,$01,$01,$00,$55,$AD,$A3,$75 ; $D07779
    db $7E,$85,$AB,$5C,$C0,$C6,$11,$F1,$CC,$EE,$EE,$E8,$E6,$E0,$6C,$F0 ; $D07789
    db $00,$71,$81,$AD,$C0,$3F,$38,$97,$0D,$F8,$07,$F0,$0F,$01,$B1,$09 ; $D07799
    db $21,$58,$58,$72,$A8,$EB,$9A,$9E,$B4,$F4,$BC,$BC,$04,$84,$86,$86 ; $D077A9
    db $13,$57,$D7,$20,$67,$10,$56,$21,$CB,$8D,$F4,$A6,$03,$CC,$33,$4E ; $D077B9
    db $31,$DF,$20,$11,$5D,$E0,$FB,$64,$0C,$F3,$07,$E2,$13,$F0,$04,$E8 ; $D077C9
    db $1E,$72,$0E,$E5,$02,$F7,$00,$0B,$0A,$EE,$86,$E0,$02,$FD,$0A,$F5 ; $D077D9
    db $01,$17,$8F,$E1,$5A,$9E,$45,$70,$0C,$07,$FB,$48,$B3,$CC,$4D,$06 ; $D077E9
    db $F7,$2A,$17,$DD,$3E,$F9,$3E,$B1,$7E,$22,$7C,$82,$7C,$4E,$B0,$74 ; $D077F9
    db $88,$84,$F8,$06,$CF,$80,$C3,$7E,$FE,$7B,$FB,$E8,$E8,$50,$D0,$A0 ; $D07809
    db $A0,$20,$A1,$BF,$00,$3F,$3A,$9D,$07,$E5,$33,$30,$0F,$D7,$60,$1F ; $D07819
    db $61,$1E,$61,$13,$D0,$18,$48,$4A,$08,$8F,$85,$FD,$8B,$CF,$07,$CF ; $D07829
    db $27,$B7,$95,$E8,$18,$E7,$0E,$F1,$8C,$70,$FB,$00,$CB,$30,$5C,$8B ; $D07839
    db $B6,$AF,$40,$00,$E0,$08,$88,$00,$10,$04,$94,$80,$C4,$80,$B8,$C3 ; $D07849
    db $DB,$E1,$FD,$30,$CF,$1F,$01,$22,$5C,$23,$98,$5E,$A8,$49,$49,$F9 ; $D07859
    db $07,$12,$3F,$0E,$1E,$C6,$2E,$70,$70,$FF,$02,$59,$06,$1F,$C0,$1E ; $D07869
    db $E1,$52,$1B,$70,$01,$8F,$80,$7F,$E6,$E6,$50,$51,$D8,$48,$15,$00 ; $D07879
    db $03,$AA,$00,$5F,$00,$AB,$00,$0F,$0F,$19,$50,$AF,$05,$B0,$31,$11 ; $D07889
    db $00,$50,$44,$1B,$FF,$0F,$07,$F0,$76,$80,$DB,$00,$D9,$06,$4D,$C0 ; $D07899
    db $01,$2B,$03,$5C,$00,$03,$F8,$3F,$C0,$F9,$00,$E6,$0F,$06,$00,$20 ; $D078A9
    db $01,$08,$61,$1F,$02,$33,$00,$3C,$DD,$B3,$EB,$83,$B3,$01,$06,$10 ; $D078B9
    db $73,$04,$CE,$04,$1B,$0F,$97,$59,$A4,$66,$A0,$70,$1B,$C0,$17,$22 ; $D078C9
    db $CB,$13,$7B,$9B,$4F,$7F,$AE,$AF,$03,$F0,$21,$E3,$FC,$0A,$1B,$E4 ; $D078D9
    db $7F,$80,$AF,$39,$70,$DD,$00,$01,$60,$80,$C0,$A0,$F0,$10,$90,$15 ; $D078E9
    db $15,$30,$40,$BF,$01,$60,$9F,$E0,$0C,$1F,$D0,$0F,$E0,$42,$00,$0E ; $D078F9
    db $3F,$10,$E2,$1A,$A0,$13,$E0,$EF,$63,$F7,$01,$7F,$67,$03,$1D,$90 ; $D07909
    db $6F,$16,$11,$10,$9D,$00,$C9,$82,$10,$80,$72,$10,$FC,$0B,$F9,$1F ; $D07919
    db $E0,$17,$60,$EF,$C0,$3F,$9F,$C1,$D0,$CF,$D0,$EE,$22,$F5,$76,$C6 ; $D07929
    db $34,$E0,$3F,$A9,$E0,$00,$21,$20,$00,$B9,$77,$21,$4F,$C7,$1F,$E7 ; $D07939
    db $1F,$07,$2B,$C7,$2B,$07,$6D,$93,$7E,$41,$67,$C0,$1F,$BF,$5F,$E3 ; $D07949
    db $DD,$EE,$DF,$6F,$9C,$C9,$01,$FA,$38,$FC,$FB,$01,$F8,$00,$F0,$EA ; $D07959
    db $D8,$D9,$E4,$BB,$A7,$87,$5A,$5F,$6E,$FD,$71,$F5,$E3,$E2,$C1,$C1 ; $D07969
    db $C0,$A1,$C0,$FA,$5F,$7D,$DE,$3A,$1E,$3C,$1F,$78,$1E,$7E,$1D,$1D ; $D07979
    db $5C,$8D,$1E,$C0,$14,$BF,$FF,$BE,$E0,$01,$BF,$FE,$BF,$E9,$67,$5C ; $D07989
    db $C1,$F0,$3F,$52,$A2,$EE,$3C,$83,$68,$9A,$69,$89,$77,$E5,$5C,$39 ; $D07999
    db $DB,$40,$B0,$F3,$2C,$EF,$3F,$A7,$7F,$98,$6A,$60,$E6,$58,$C3,$3B ; $D079A9
    db $1F,$43,$59,$5C,$54,$23,$43,$09,$46,$0F,$83,$9B,$B6,$0B,$07,$8F ; $D079B9
    db $86,$C0,$30,$A9,$80,$57,$70,$E0,$71,$E6,$08,$FC,$5C,$E3,$FA,$5E ; $D079C9
    db $FD,$AE,$F1,$5E,$F5,$B8,$E1,$56,$F8,$AF,$D0,$67,$A8,$F3,$A3,$1C ; $D079D9
    db $51,$00,$B1,$0E,$7F,$3E,$B1,$4B,$FF,$B8,$3F,$9C,$3C,$7F,$2C,$DF ; $D079E9
    db $EC,$1F,$A8,$DF,$9C,$EF,$18,$EF,$78,$8F,$98,$6F,$91,$6E,$3F,$DF ; $D079F9
    db $FF,$1F,$AF,$DF,$5A,$C0,$7F,$18,$8F,$DF,$6F,$01,$1A,$C9,$B9,$C0 ; $D07A09
    db $6E,$A9,$14,$B3,$1A,$D5,$E4,$23,$AA,$25,$34,$23,$4E,$C1,$E8,$F7 ; $D07A19
    db $C8,$F7,$D0,$EF,$90,$EF,$A0,$DF,$01,$40,$BF,$B9,$C8,$79,$DF,$42 ; $D07A29
    db $F7,$39,$9F,$00,$B3,$58,$BD,$60,$B2,$28,$F9,$09,$DF,$47,$80,$4F ; $D07A39
    db $80,$07,$C0,$0F,$C0,$03,$27,$BB,$E0,$C0,$83,$80,$D1,$D0,$6B,$E8 ; $D07A49
    db $F6,$F0,$2D,$E1,$5A,$C2,$89,$8D,$66,$F6,$80,$7F,$D0,$2F,$E8,$17 ; $D07A59
    db $F0,$0F,$E1,$1E,$C3,$3C,$8E,$70,$F9,$00,$27,$F7,$AE,$2F,$5C,$5F ; $D07A69
    db $BC,$47,$7E,$F9,$FE,$B3,$01,$BC,$BE,$F9,$38,$C0,$30,$C0,$DA,$AA ; $D07A79
    db $AC,$83,$71,$40,$01,$18,$72,$E5,$34,$CF,$6A,$9B,$D0,$3A,$B1,$71 ; $D07A89
    db $63,$E9,$C3,$DD,$9D,$83,$02,$01,$01,$02,$04,$C5,$03,$0E,$02,$CB ; $D07A99
    db $0C,$12,$0C,$22,$1C,$7C,$00,$45,$FD,$20,$FC,$34,$E8,$2C,$E0,$78 ; $D07AA9
    db $25,$B0,$3F,$E2,$B9,$19,$00,$AA,$10,$57,$88,$9F,$40,$5F,$80,$75 ; $D07AB9
    db $DF,$0E,$7B,$1F,$5C,$01,$22,$7C,$7C,$18,$18,$0C,$0C,$04,$54,$01 ; $D07AC9
    db $BD,$0A,$FF,$80,$1F,$83,$00,$E7,$00,$75,$F3,$36,$FD,$B8,$F1,$12 ; $D07AD9
    db $1B,$12,$B8,$F5,$13,$10,$32,$00,$7B,$00,$7A,$00,$3F,$80,$EF,$E0 ; $D07AE9
    db $FB,$EE,$00,$EE,$9F,$1F,$02,$D8,$00,$A0,$2C,$98,$BE,$EB,$80,$A7 ; $D07AF9
    db $0F,$1B,$83,$05,$81,$03,$83,$88,$60,$8F,$47,$7B,$8F,$70,$83,$4A ; $D07B09
    db $83,$80,$E1,$7C,$46,$46,$30,$30,$0E,$8E,$03,$F3,$80,$FE,$40,$83 ; $D07B19
    db $D9,$FF,$EA,$FF,$B9,$8A,$77,$F1,$44,$3F,$E0,$89,$01,$6B,$7F,$49 ; $D07B29
    db $EF,$C6,$7F,$C3,$CF,$87,$55,$03,$8E,$90,$F7,$B1,$7B,$F3,$C4,$17 ; $D07B39
    db $83,$C0,$63,$E1,$F0,$80,$8C,$7C,$EB,$BB,$54,$30,$9E,$D7,$02,$EE ; $D07B49
    db $FA,$F4,$0F,$83,$7F,$DE,$40,$BB,$05,$18,$03,$01,$2C,$17,$60,$7F ; $D07B59
    db $0C,$EF,$F0,$81,$B2,$FF,$0C,$0F,$00,$A0,$D0,$4A,$F8,$77,$80,$AE ; $D07B69
    db $43,$FC,$38,$1F,$F0,$1F,$C4,$5C,$E6,$30,$C0,$D8,$E0,$E2,$74,$F7 ; $D07B79
    db $F3,$FF,$4F,$FF,$2A,$EA,$13,$27,$18,$3E,$3A,$01,$1F,$89,$BB,$5B ; $D07B89
    db $FD,$85,$1F,$51,$77,$B0,$C7,$F3,$60,$E5,$D0,$D3,$A0,$A7,$40,$4B ; $D07B99
    db $81,$97,$00,$AF,$4F,$80,$8F,$B3,$15,$2F,$A5,$90,$BF,$5E,$80,$69 ; $D07BA9
    db $C1,$ED,$B1,$F3,$99,$FF,$87,$3A,$FE,$81,$41,$F0,$41,$F9,$63,$FB ; $D07BB9
    db $1F,$4E,$B5,$92,$87,$03,$C4,$E1,$03,$C1,$06,$E3,$04,$80,$82,$C8 ; $D07BC9
    db $C8,$E8,$E8,$C2,$D3,$9B,$DE,$80,$2F,$A3,$2F,$EF,$80,$7F,$C8,$37 ; $D07BD9
    db $25,$E8,$17,$80,$1C,$A3,$5C,$EC,$10,$01,$BE,$3B,$01,$56,$90,$72 ; $D07BE9
    db $58,$0B,$30,$0F,$07,$70,$0F,$30,$1E,$60,$C8,$08,$BF,$D0,$10,$91 ; $D07BF9
    db $BC,$74,$18,$D7,$08,$93,$18,$8D,$2F,$10,$11,$10,$25,$34,$0C,$10 ; $D07C09
    db $FF,$10,$F7,$17,$F7,$04,$F3,$23,$D0,$27,$C8,$0F,$C0,$47,$80,$37 ; $D07C19
    db $00,$71,$82,$99,$21,$FB,$03,$3B,$03,$AA,$E3,$52,$F3,$0E,$84,$D3 ; $D07C29
    db $7C,$FF,$C1,$FE,$52,$FF,$E3,$1D,$1C,$F3,$0C,$21,$FD,$43,$9F,$1F ; $D07C39
    db $F5,$DF,$C5,$77,$50,$00,$8C,$00,$1D,$00,$0E,$83,$1E,$FC,$1F,$E0 ; $D07C49
    db $04,$60,$1D,$AE,$FF,$D7,$D0,$01,$C3,$FF,$81,$E3,$03,$01,$E1,$04 ; $D07C59
    db $45,$06,$16,$CB,$04,$1B,$FB,$9F,$00,$F9,$00,$10,$D0,$18,$9C,$0C ; $D07C69
    db $CC,$1C,$9C,$2E,$EE,$1F,$9F,$3D,$FF,$1A,$9F,$E8,$07,$E4,$03,$F0 ; $D07C79
    db $52,$B9,$D1,$47,$00,$98,$05,$03,$DF,$C1,$03,$EF,$E2,$EF,$E4,$FF ; $D07C89
    db $F7,$00,$01,$61,$7F,$EE,$F3,$EF,$F4,$20,$75,$1E,$6A,$B1,$50,$FC ; $D07C99
    db $9E,$08,$00,$00,$D2,$EE,$F1,$0C,$F0,$0F,$11,$18,$CF,$D3,$CF,$1C ; $D07CA9
    db $33,$EF,$00,$D3,$2F,$01,$21,$03,$E1,$03,$21,$81,$01,$23,$01,$B8 ; $D07CB9
    db $72,$03,$C8,$2E,$E0,$C4,$B8,$E8,$CA,$FC,$CD,$E1,$D7,$CC,$E5,$F0 ; $D07CC9
    db $CA,$80,$E5,$E7,$FF,$E3,$FF,$E9,$F7,$EC,$F3,$E7,$F8,$F7,$F8,$F3 ; $D07CD9
    db $FC,$F9,$FE,$8C,$4C,$22,$0E,$46,$05,$03,$18,$33,$08,$7E,$A3,$81 ; $D07CE9
    db $7E,$03,$7F,$92,$E1,$CE,$F1,$E1,$A5,$FF,$07,$D5,$D9,$74,$7E,$2F ; $D07CF9
    db $E5,$DD,$F7,$2C,$6C,$8F,$C2,$9D,$1F,$A3,$40,$63,$10,$7F,$69,$B6 ; $D07D09
    db $4D,$C2,$DD,$FE,$DE,$FD,$CF,$FD,$ED,$DD,$CD,$9D,$90,$0D,$11,$0C ; $D07D19
    db $31,$0C,$00,$F0,$08,$F4,$63,$9C,$62,$D3,$FD,$BB,$7E,$BC,$0C,$DF ; $D07D29
    db $A4,$73,$0F,$DF,$93,$CF,$E0,$80,$78,$BC,$3D,$7E,$3F,$7F,$7F,$3F ; $D07D39
    db $AF,$1F,$4B,$E7,$2F,$16,$4F,$D5,$0F,$06,$8F,$0E,$C5,$4F,$D6,$97 ; $D07D49
    db $3C,$49,$90,$40,$80,$C1,$E0,$32,$91,$F7,$02,$00,$61,$73,$80,$DB ; $D07D59
    db $E0,$E3,$FC,$C9,$19,$F8,$87,$F1,$26,$D4,$19,$E4,$0C,$F8,$07,$C3 ; $D07D69
    db $0F,$B8,$71,$F9,$06,$78,$EB,$83,$6E,$FE,$3F,$FC,$03,$F8,$B1,$21 ; $D07D79
    db $BE,$7F,$75,$11,$EE,$F8,$06,$D8,$A7,$80,$77,$91,$E6,$70,$8E,$81 ; $D07D89
    db $7F,$E0,$BE,$1F,$6F,$FF,$0F,$DE,$2F,$2E,$BF,$9E,$2F,$7E,$0F,$AF ; $D07D99
    db $7E,$F6,$3F,$C1,$7C,$4E,$41,$74,$63,$8C,$1A,$D4,$C3,$03,$DC,$04 ; $D07DA9
    db $C3,$9E,$81,$60,$9F,$5C,$3B,$80,$7F,$24,$C0,$3F,$03,$5C,$08,$7A ; $D07DB9
    db $DB,$08,$F8,$0F,$FF,$2C,$FC,$34,$FD,$10,$D9,$00,$88,$00,$C9,$27 ; $D07DC9
    db $47,$F3,$20,$C0,$23,$17,$01,$07,$3E,$E0,$57,$E0,$17,$E0,$1B,$DB ; $D07DD9
    db $E5,$E5,$03,$63,$03,$D3,$07,$E7,$0E,$EF,$1C,$DF,$38,$3F,$E4,$00 ; $D07DE9
    db $1A,$87,$49,$FC,$42,$4F,$F0,$B2,$81,$1F,$E3,$79,$9D,$FB,$DA,$DB ; $D07DF9
    db $85,$F4,$12,$E1,$35,$DF,$62,$97,$8D,$47,$E0,$D6,$00,$84,$27,$00 ; $D07E09
    db $0C,$03,$01,$0E,$1F,$3A,$00,$1B,$EB,$FB,$8D,$8F,$83,$04,$3F,$04 ; $D07E19
    db $3C,$01,$9F,$A4,$FF,$44,$CF,$94,$FF,$54,$FD,$7C,$22,$39,$5C,$BD ; $D07E29
    db $DE,$03,$89,$AB,$1D,$20,$FF,$C5,$20,$F5,$01,$EF,$80,$EF,$51,$C0 ; $D07E39
    db $05,$BF,$01,$F7,$1F,$00,$B1,$01,$8F,$D3,$89,$9D,$01,$67,$EB,$D5 ; $D07E49
    db $DF,$A9,$56,$00,$80,$C0,$D5,$DF,$D9,$DB,$4C,$DD,$88,$17,$75,$DF ; $D07E59
    db $9A,$05,$BB,$E3,$CF,$20,$C7,$20,$C3,$20,$62,$E3,$F8,$F8,$F4,$F4 ; $D07E69
    db $ED,$ED,$16,$16,$87,$24,$5D,$FD,$1C,$40,$75,$F8,$07,$F4,$06,$0B ; $D07E79
    db $ED,$12,$16,$E9,$25,$2E,$DD,$22,$59,$DC,$23,$13,$F3,$03,$FF,$20 ; $D07E89
    db $3F,$88,$8F,$20,$23,$49,$49,$A0,$A0,$D2,$D2,$F0,$0C,$BB,$3F,$72 ; $D07E99
    db $C0,$8F,$70,$23,$DC,$49,$B6,$A0,$5F,$D2,$2D,$D5,$FF,$2B,$7F,$1E ; $D07EA9
    db $FF,$B7,$FF,$5F,$EE,$41,$34,$5C,$7C,$3F,$3F,$3F,$F0,$03,$7F,$7C ; $D07EB9
    db $65,$83,$29,$40,$58,$A1,$F5,$00,$F5,$AA,$AA,$40,$40,$A8,$A8,$C0 ; $D07EC9
    db $48,$C0,$19,$F5,$00,$0A,$AA,$55,$40,$BF,$A8,$57,$C0,$A0,$2E,$EA ; $D07ED9
    db $FF,$6B,$11,$6B,$A2,$A2,$D4,$A9,$03,$BC,$A4,$04,$00,$6B,$94,$A2 ; $D07EE9
    db $5D,$77,$A9,$B8,$ED,$57,$FD,$00,$EF,$FB,$7E,$46,$45,$7D,$1D,$55 ; $D07EF9
    db $75,$84,$01,$35,$C7,$38,$83,$78,$80,$01,$02,$81,$39,$82,$29,$82 ; $D07F09
    db $3A,$F8,$03,$8A,$88,$F4,$04,$33,$33,$07,$D3,$D3,$E2,$E2,$60,$C8 ; $D07F19
    db $01,$1B,$33,$CC,$D3,$00,$2C,$E2,$1D,$60,$9F,$0A,$7F,$0F,$E1,$1D ; $D07F29
    db $5A,$5A,$80,$5B,$B4,$B4,$08,$09,$09,$08,$90,$1D,$5A,$A5,$CB,$04 ; $D07F39
    db $B4,$E7,$4B,$08,$F7,$09,$F7,$83,$FB,$ED,$BF,$2D,$6F,$0D,$ED,$CC ; $D07F49
    db $4D,$52,$D7,$00,$D3,$09,$8F,$83,$64,$D7,$40,$07,$D0,$67,$90,$87 ; $D07F59
    db $B0,$1D,$A0,$DD,$20,$90,$60,$0C,$AF,$08,$3B,$40,$6F,$50,$7F,$08 ; $D07F69
    db $7E,$09,$7D,$01,$51,$21,$71,$EB,$10,$F7,$00,$B7,$00,$A7,$0B,$01 ; $D07F79
    db $A6,$00,$94,$AE,$00,$8E,$00,$1C,$E0,$3C,$80,$50,$E0,$50,$61,$91 ; $D07F89
    db $E0,$01,$E6,$13,$F4,$05,$72,$41,$15,$A1,$1E,$74,$80,$1E,$02,$1C ; $D07F99
    db $04,$18,$10,$08,$98,$00,$7C,$D6,$78,$12,$6E,$86,$E9,$15,$DF,$33 ; $D07FA9
    db $98,$76,$59,$B7,$5D,$F7,$87,$00,$CE,$01,$13,$2A,$01,$11,$73,$5D ; $D07FB9
    db $01,$05,$3A,$E3,$7F,$A0,$70,$1F,$40,$4B,$A0,$A5,$0B,$B0,$F2,$58 ; $D07FC9
    db $58,$08,$BF,$BF,$00,$B8,$C1,$E7,$00,$20,$B8,$F5,$2C,$10,$96,$B8 ; $D07FD9
    db $FA,$5C,$DC,$0E,$EE,$0B,$FF,$07,$B7,$01,$53,$DF,$C7,$9D,$C7,$00 ; $D07FE9
    db $E3,$5D,$63,$F0,$55,$93,$5C,$A3,$78,$A3,$51,$51,$B9,$B9,$6C,$7C ; $D07FF9
    db $12,$3E,$60,$7F,$A0,$BF,$B1,$FF,$5C,$95,$46,$EB,$BA,$5D,$C1,$5D ; $D08009
    db $5B,$40,$70,$03,$3D,$3F,$98,$9F,$01,$CD,$CF,$E8,$EF,$BC,$FF,$F0 ; $D08019
    db $D5,$43,$1D,$28,$FF,$C0,$0E,$5F,$30,$59,$77,$00,$70,$EF,$F7,$AF ; $D08029
    db $B7,$E1,$FF,$4E,$53,$ED,$F6,$CF,$D7,$EA,$19,$01,$E7,$19,$50,$D4 ; $D08039
    db $B8,$F9,$B1,$21,$30,$A0,$9F,$13,$EF,$D0,$01,$EF,$D1,$EE,$10,$ED ; $D08049
    db $D0,$2C,$C0,$09,$EE,$90,$AF,$23,$40,$01,$01,$E2,$01,$07,$22,$01 ; $D08059
    db $21,$00,$21,$17,$4B,$E2,$1E,$D4,$99,$E6,$20,$D3,$98,$65,$20,$53 ; $D08069
    db $18,$A5,$50,$03,$00,$95,$F8,$A0,$93,$FC,$FF,$70,$FA,$03,$7A,$FF ; $D08079
    db $5C,$3C,$B8,$FF,$8A,$7F,$9F,$DF,$C7,$F7,$E3,$7B,$31,$BD,$50,$9C ; $D08089
    db $58,$9E,$44,$8C,$D8,$1E,$E0,$B5,$7C,$06,$80,$3E,$C0,$1F,$E0,$01 ; $D08099
    db $35,$0F,$F0,$03,$CB,$89,$92,$45,$42,$81,$92,$04,$07,$08,$5B,$0D ; $D080A9
    db $BE,$1D,$5E,$2D,$BE,$71,$0C,$B1,$0C,$01,$03,$F4,$09,$F8,$05,$FD ; $D080B9
    db $00,$02,$01,$C5,$2C,$E3,$E4,$18,$40,$A0,$08,$FA,$12,$E6,$9F,$40 ; $D080C9
    db $C6,$2F,$60,$B0,$DC,$03,$80,$41,$40,$80,$8C,$B0,$3B,$BC,$1C,$80 ; $D080D9
    db $3F,$DF,$09,$0C,$FC,$0E,$05,$03,$3C,$0F,$00,$00,$0F,$81,$86,$C0 ; $D080E9
    db $47,$44,$07,$67,$04,$53,$00,$53,$FD,$C0,$01,$01,$C6,$01,$83,$EB ; $D080F9
    db $0B,$A9,$CC,$31,$8F,$E6,$10,$FC,$0F,$FF,$01,$A1,$C9,$68,$F3,$32 ; $D08109
    db $4C,$80,$50,$DE,$3F,$59,$99,$D2,$3B,$F1,$3A,$FE,$FC,$17,$B1,$CF ; $D08119
    db $AA,$3F,$49,$B7,$49,$37,$79,$8F,$71,$9F,$79,$87,$31,$CF,$20,$9E ; $D08129
    db $6C,$F2,$7F,$B6,$4F,$B6,$77,$06,$67,$06,$FF,$06,$77,$9E,$36,$DF ; $D08139
    db $4E,$97,$7C,$43,$9A,$85,$34,$0B,$58,$27,$A0,$5E,$00,$D5,$00,$AA ; $D08149
    db $0A,$80,$40,$BF,$80,$A4,$63,$01,$FF,$74,$2A,$AE,$59,$7F,$94,$FF ; $D08159
    db $04,$8C,$05,$8D,$4B,$8F,$0F,$0B,$47,$83,$06,$03,$44,$0B,$C4,$0B ; $D08169
    db $53,$E0,$52,$E0,$50,$E0,$D0,$E0,$58,$E0,$D8,$01,$5C,$70,$7F,$7D ; $D08179
    db $E3,$FC,$C6,$F9,$8D,$F3,$1B,$E7,$36,$CE,$6D,$9D,$DE,$3E,$83,$01 ; $D08189
    db $45,$79,$72,$A3,$03,$24,$E3,$FD,$EF,$1F,$D6,$DF,$95,$9B,$07,$1E ; $D08199
    db $0B,$7F,$5B,$67,$02,$02,$C3,$C8,$19,$D9,$57,$A3,$B0,$DB,$C1,$31 ; $D081A9
    db $FF,$93,$6B,$75,$20,$70,$F7,$D0,$F7,$F8,$3B,$F1,$FF,$E1,$FF,$F8 ; $D081B9
    db $FB,$EC,$E9,$F3,$1D,$CE,$00,$0E,$49,$F0,$0E,$00,$00,$E9,$28,$FF ; $D081C9
    db $08,$DF,$03,$08,$FB,$08,$F9,$18,$D8,$AC,$06,$E3,$99,$C7,$A1,$33 ; $D081D9
    db $E7,$DF,$63,$4E,$E7,$00,$47,$CA,$DE,$C7,$DF,$C9,$DF,$41,$00,$01 ; $D081E9
    db $C1,$D5,$6E,$0B,$C0,$C1,$20,$C0,$10,$01,$3F,$1F,$00,$1F,$FF,$1D ; $D081F9
    db $3D,$8E,$BE,$47,$FF,$A9,$78,$EA,$C4,$36,$87,$F5,$5E,$21,$1F,$20 ; $D08209
    db $2A,$01,$4B,$4B,$20,$20,$86,$48,$48,$A0,$A0,$41,$40,$A1,$A0,$E0 ; $D08219
    db $E0,$74,$F4,$01,$00,$20,$DF,$48,$B7,$A0,$5F,$40,$BF,$C1,$03,$E0 ; $D08229
    db $1F,$F4,$0B,$81,$01,$67,$07,$39,$01,$7F,$D4,$47,$3E,$DD,$37,$4F ; $D08239
    db $8F,$6F,$07,$F8,$02,$F2,$9B,$00,$01,$80,$80,$50,$50,$D2,$41,$02 ; $D08249
    db $0A,$5F,$C6,$CD,$47,$D3,$07,$7F,$50,$AF,$02,$FD,$BB,$03,$21,$03 ; $D08259
    db $08,$44,$40,$54,$03,$F8,$32,$38,$04,$03,$08,$AC,$DF,$20,$43,$BF ; $D08269
    db $05,$02,$AB,$03,$C7,$04,$59,$1C,$F6,$AD,$41,$74,$66,$00,$D4,$16 ; $D08279
    db $80,$74,$80,$73,$78,$83,$0E,$22,$C1,$8C,$F3,$E0,$5C,$F0,$9F,$5C ; $D08289
    db $60,$3B,$7D,$03,$7F,$07,$22,$62,$18,$38,$00,$A0,$00,$B3,$91,$0A ; $D08299
    db $37,$01,$DE,$74,$0F,$60,$62,$9D,$38,$C7,$A1,$5F,$87,$7F,$DF,$3C ; $D082A9
    db $77,$F8,$C6,$E1,$00,$9F,$04,$05,$20,$23,$03,$C1,$09,$67,$7F,$81 ; $D082B9
    db $8F,$70,$D7,$01,$04,$FB,$61,$30,$DE,$C2,$A1,$9E,$04,$7E,$90,$A7 ; $D082C9
    db $86,$87,$B8,$74,$04,$84,$06,$04,$7F,$04,$3F,$84,$7F,$FF,$DD,$1F ; $D082D9
    db $0E,$48,$78,$80,$7B,$BB,$60,$FB,$67,$05,$04,$1B,$41,$A1,$01,$F1 ; $D082E9
    db $73,$72,$42,$F1,$23,$F1,$32,$36,$36,$C1,$E5,$90,$DF,$80,$87,$0E ; $D082F9
    db $00,$0D,$B0,$0D,$D0,$1C,$C1,$18,$C1,$D7,$1F,$18,$C3,$20,$03,$78 ; $D08309
    db $84,$EB,$95,$7F,$C1,$79,$80,$3B,$14,$77,$F9,$FF,$EB,$D7,$90,$AC ; $D08319
    db $7D,$75,$06,$99,$03,$01,$C7,$40,$DE,$3B,$F7,$BF,$B7,$03,$5D,$55 ; $D08329
    db $1A,$52,$18,$F0,$3A,$01,$FE,$62,$15,$42,$5F,$B2,$00,$F5,$00,$29 ; $D08339
    db $07,$70,$F1,$1F,$9C,$FC,$01,$A6,$AE,$4B,$7F,$93,$97,$04,$80,$7B ; $D08349
    db $0B,$02,$4F,$05,$F7,$63,$3B,$00,$71,$2A,$F9,$78,$5D,$DB,$FC,$00 ; $D08359
    db $A7,$00,$09,$01,$01,$A0,$03,$A0,$D5,$D5,$EA,$EA,$2F,$B9,$E7,$CE ; $D08369
    db $30,$FE,$3B,$13,$5F,$94,$7B,$15,$E0,$45,$DA,$FF,$01,$60,$FF,$34 ; $D08379
    db $FF,$9A,$FF,$C9,$DD,$05,$0F,$4B,$FF,$97,$FF,$06,$E7,$FF,$9C,$8C ; $D08389
    db $33,$00,$83,$FF,$0E,$FE,$38,$F8,$E0,$E3,$45,$C0,$93,$12,$85,$7B ; $D08399
    db $07,$6F,$B1,$09,$78,$2E,$09,$00,$17,$B0,$B9,$F7,$05,$1D,$45,$77 ; $D083A9
    db $39,$45,$3D,$00,$22,$1C,$21,$5E,$73,$0C,$70,$0F,$7D,$02,$47,$38 ; $D083B9
    db $39,$7E,$7E,$7F,$F8,$7E,$01,$A0,$07,$2C,$50,$5C,$40,$F8,$58,$26 ; $D083C9
    db $C1,$00,$A0,$3A,$48,$8F,$2E,$4F,$2F,$D0,$25,$5F,$A0,$AE,$D8,$7D ; $D083D9
    db $3F,$C0,$0F,$F0,$8F,$F0,$1C,$7F,$2C,$BF,$1D,$7E,$29,$BE,$19,$7E ; $D083E9
    db $39,$FA,$59,$7A,$3F,$FE,$FC,$01,$EA,$50,$00,$CB,$01,$B6,$F9,$00 ; $D083F9
    db $5C,$BD,$13,$E6,$00,$DE,$86,$64,$C0,$20,$02,$E7,$10,$E6,$81,$5F ; $D08409
    db $7E,$80,$B8,$BC,$00,$BC,$A4,$18,$C0,$00,$24,$98,$38,$BF,$81,$3E ; $D08419
    db $03,$04,$01,$89,$CF,$AF,$13,$77,$80,$4D,$07,$01,$12,$DF,$F4,$5C ; $D08429
    db $0C,$30,$FC,$0F,$FE,$05,$FE,$0A,$FF,$06,$FE,$09,$FF,$07,$09,$FC ; $D08439
    db $03,$F0,$00,$00,$FA,$00,$F7,$03,$FB,$03,$F6,$E8,$D2,$CB,$98,$9B ; $D08449
    db $86,$E4,$35,$CA,$DF,$20,$2B,$D0,$25,$58,$63,$D8,$79,$5B,$2E,$40 ; $D08459
    db $DE,$5B,$07,$36,$07,$DE,$27,$2E,$D7,$B6,$DF,$66,$9F,$FE,$07,$BE ; $D08469
    db $07,$15,$80,$D4,$2B,$AA,$00,$07,$2A,$94,$01,$3F,$0A,$7B,$FB,$16 ; $D08479
    db $1F,$7C,$AA,$55,$02,$05,$9E,$A7,$28,$C3,$97,$38,$97,$D8,$36,$B8 ; $D08489
    db $34,$38,$54,$F8,$E4,$E8,$00,$01,$F8,$C0,$28,$C0,$E8,$00,$C8,$E3 ; $D08499
    db $01,$E8,$84,$5D,$F8,$00,$AD,$A9,$F2,$12,$00,$5E,$E7,$40,$24,$01 ; $D084A9
    db $30,$6E,$53,$33,$2F,$3F,$17,$1F,$0B,$0F,$06,$02,$7F,$3F,$5E,$3F ; $D084B9
    db $20,$1F,$33,$0C,$1F,$D0,$B0,$07,$EC,$87,$4F,$B9,$55,$8F,$93,$53 ; $D084C9
    db $6A,$9B,$EA,$9E,$8C,$FE,$6C,$6D,$F3,$FB,$09,$ED,$0F,$F0,$6F,$80 ; $D084D9
    db $87,$5D,$C1,$9F,$8B,$1F,$F3,$00,$8F,$7B,$7C,$73,$7C,$72,$75,$7F ; $D084E9
    db $FC,$E7,$F8,$E7,$E8,$FF,$F0,$C9,$F6,$46,$9A,$DF,$2A,$01,$F3,$0B ; $D084F9
    db $3F,$EF,$00,$8E,$E9,$06,$89,$6D,$C0,$30,$68,$BC,$40,$FC,$D4,$64 ; $D08509
    db $A4,$78,$A0,$60,$8C,$30,$AE,$10,$91,$D0,$80,$04,$02,$B8,$BC,$38 ; $D08519
    db $A0,$1C,$9E,$AA,$21,$03,$76,$05,$41,$33,$05,$07,$03,$01,$AE,$25 ; $D08529
    db $01,$75,$03,$64,$75,$03,$73,$06,$1B,$1D,$03,$FE,$04,$8E,$3D,$01 ; $D08539
    db $FF,$C0,$37,$FD,$03,$FE,$83,$FE,$3B,$03,$F9,$27,$93,$FD,$0E,$7D ; $D08549
    db $7C,$2E,$03,$90,$98,$8A,$11,$ED,$11,$EF,$61,$FF,$13,$2D,$B5,$AB ; $D08559
    db $77,$09,$7F,$01,$94,$6F,$13,$EE,$19,$EE,$E9,$0E,$11,$0E,$B1,$4E ; $D08569
    db $11,$09,$E6,$2F,$EC,$33,$3F,$41,$FF,$03,$5F,$C3,$03,$7F,$7F,$FC ; $D08579
    db $08,$DE,$10,$E4,$E8,$E0,$01,$A3,$00,$E8,$87,$00,$F8,$00,$9C,$02 ; $D08589
    db $01,$F0,$01,$0F,$00,$05,$02,$03,$04,$CE,$2F,$03,$CF,$13,$01,$03 ; $D08599
    db $03,$0F,$F2,$FD,$14,$EA,$1D,$09,$CA,$21,$28,$75,$00,$0F,$C3,$0C ; $D085A9
    db $D4,$09,$DC,$01,$4E,$DD,$DD,$E1,$00,$70,$B8,$1C,$86,$CF,$81,$E7 ; $D085B9
    db $00,$63,$C0,$A1,$A4,$6C,$80,$0F,$50,$E0,$F4,$3A,$F8,$F9,$E2,$DB ; $D085C9
    db $9E,$7F,$1C,$85,$57,$07,$0A,$C3,$07,$09,$2F,$4B,$1F,$A9,$3F,$C3 ; $D085D9
    db $9F,$C1,$0F,$03,$38,$FF,$05,$F3,$84,$00,$00,$26,$C0,$0C,$E0,$EE ; $D085E9
    db $00,$0C,$EB,$9D,$43,$FE,$81,$78,$CA,$4E,$03,$AE,$AE,$7E,$97,$5F ; $D085F9
    db $7E,$F2,$01,$1D,$7F,$01,$00,$5D,$E1,$A3,$39,$F1,$09,$97,$01,$B1 ; $D08609
    db $0A,$49,$B0,$59,$AA,$5B,$E2,$5A,$F9,$06,$01,$06,$31,$01,$01,$21 ; $D08619
    db $06,$23,$04,$2B,$04,$0E,$F3,$B0,$89,$7F,$BF,$E9,$FB,$74,$BE,$BD ; $D08629
    db $DF,$FF,$01,$39,$21,$01,$C0,$E8,$81,$01,$C8,$E0,$90,$F0,$80,$BA ; $D08639
    db $EA,$F9,$72,$03,$F0,$45,$F5,$E0,$22,$01,$38,$3B,$93,$09,$36,$0F ; $D08649
    db $0B,$A3,$01,$8C,$9D,$07,$E3,$93,$06,$AE,$DB,$06,$9E,$9D,$70,$07 ; $D08659
    db $49,$FD,$82,$E0,$03,$83,$FD,$03,$C3,$03,$FE,$01,$FC,$A1,$D3,$7D ; $D08669
    db $D7,$18,$0D,$7C,$02,$FC,$02,$03,$B2,$A5,$05,$CD,$E3,$6F,$AD,$7D ; $D08679
    db $DA,$5E,$9E,$3F,$37,$F7,$68,$EC,$90,$98,$D0,$E0,$1E,$DF,$BD,$1D ; $D08689
    db $3D,$00,$79,$57,$41,$70,$77,$45,$3B,$00,$70,$A0,$13,$02,$F8,$00 ; $D08699
    db $C8,$80,$4B,$E0,$47,$2F,$08,$46,$FC,$DF,$77,$01,$5F,$20,$16,$95 ; $D086A9
    db $FF,$07,$48,$7F,$03,$02,$01,$EF,$23,$78,$4A,$98,$7F,$79,$02,$3A ; $D086B9
    db $A3,$FE,$FD,$57,$09,$3F,$01,$EA,$41,$D2,$3F,$4B,$01,$7D,$05,$05 ; $D086C9
    db $7C,$8B,$0B,$6D,$7F,$74,$40,$84,$0E,$10,$07,$0C,$05,$E3,$05,$A9 ; $D086D9
    db $0A,$E9,$19,$F8,$02,$12,$47,$80,$AC,$0B,$40,$01,$40,$79,$80,$02 ; $D086E9
    db $45,$80,$EF,$03,$46,$00,$00                                     ; $D086F9
; ---- end of region ----


; ---- RNC method 2 block: 2219 bytes packed, 4644 unpacked (tools/rnc.py) ($D08700-$D08FBC) ----
    db $52,$4E,$43,$02,$00,$00,$12,$24,$00,$00,$08,$AB,$2E,$F0,$18,$30 ; $D08700
    db $02,$01,$06,$00,$00,$85,$02,$32,$01,$80,$01,$02,$E5,$04,$13,$84 ; $D08710
    db $13,$08,$22,$98,$10,$10,$02,$14,$02,$98,$02,$10,$42,$94,$52,$18 ; $D08720
    db $63,$86,$01,$07,$00,$20,$1F,$E5,$00,$C3,$01,$00,$02,$00,$03,$00 ; $D08730
    db $04,$00,$05,$00,$06,$00,$0B,$13,$08,$00,$09,$9D,$00,$0A,$00,$0B ; $D08740
    db $00,$0C,$00,$0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13 ; $D08750
    db $00,$14,$00,$15,$3C,$2D,$0A,$00,$16,$2E,$00,$17,$3C,$00,$18,$00 ; $D08760
    db $19,$00,$1A,$00,$1B,$00,$1C,$00,$1D,$00,$1E,$00,$1F,$11,$C3,$5B ; $D08770
    db $21,$00,$22,$80,$0F,$23,$00,$24,$00,$25,$03,$00,$26,$00,$27,$00 ; $D08780
    db $28,$C2,$0F,$3F,$29,$00,$2A,$E7,$00,$2B,$00,$2C,$00,$2D,$00,$2E ; $D08790
    db $00,$2F,$00,$30,$00,$31,$00,$32,$00,$33,$00,$34,$00,$35,$00,$36 ; $D087A0
    db $C0,$0F,$37,$00,$38,$00,$60,$39,$1F,$40,$3A,$00,$3B,$F0,$0B,$3B ; $D087B0
    db $3C,$00,$3D,$BC,$78,$00,$3E,$00,$3F,$00,$40,$00,$41,$00,$42,$00 ; $D087C0
    db $43,$00,$44,$00,$45,$00,$46,$00,$47,$00,$48,$00,$49,$00,$4A,$00 ; $D087D0
    db $4B,$00,$4C,$00,$4D,$00,$4E,$00,$4F,$00,$50,$00,$51,$00,$52,$00 ; $D087E0
    db $53,$09,$3F,$54,$00,$5D,$55,$F8,$00,$56,$00,$57,$00,$58,$00,$59 ; $D087F0
    db $00,$5A,$00,$5B,$00,$5C,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00,$61 ; $D08800
    db $00,$62,$00,$63,$00,$64,$00,$65,$00,$66,$00,$67,$00,$68,$00,$69 ; $D08810
    db $29,$6A,$3C,$00,$6B,$07,$3F,$6C,$2E,$00,$6D,$1E,$00,$6E,$00,$6F ; $D08820
    db $00,$70,$00,$71,$00,$72,$00,$73,$0D,$01,$5C,$74,$3C,$00,$75,$00 ; $D08830
    db $76,$00,$77,$00,$78,$00,$79,$00,$7A,$07,$3F,$7B,$03,$00,$7C,$00 ; $D08840
    db $7D,$00,$7E,$87,$01,$7D,$40,$EE,$0F,$1E,$38,$00,$7F,$1F,$7F,$E0 ; $D08850
    db $1F,$80,$00,$81,$F7,$12,$24,$AE,$0D,$00,$10,$02,$03,$08,$0F,$21 ; $D08860
    db $3F,$84,$FC,$10,$F0,$00,$E0,$01,$76,$03,$D1,$02,$3E,$01,$F8,$07 ; $D08870
    db $E0,$1F,$43,$01,$00,$FF,$96,$01,$65,$00,$1A,$0F,$12,$0E,$FF,$1B ; $D08880
    db $01,$0F,$F0,$01,$CD,$05,$1F,$F8,$01,$ED,$04,$1F,$45,$80,$01,$40 ; $D08890
    db $80,$30,$D0,$4C,$74,$0E,$10,$1F,$04,$07,$8E,$42,$18,$01,$C0,$00 ; $D088A0
    db $32,$3C,$C0,$C4,$37,$03,$FC,$80,$01,$38,$17,$60,$1F,$C4,$71,$BC ; $D088B0
    db $7D,$C1,$23,$01,$1F,$B4,$AB,$09,$7D,$C1,$3E,$21,$01,$47,$B4,$A1 ; $D088C0
    db $A5,$9A,$9D,$01,$18,$58,$56,$01,$FE,$F4,$05,$9F,$12,$19,$F0,$53 ; $D088D0
    db $01,$0E,$84,$17,$F0,$0F,$94,$01,$1B,$7A,$60,$02,$01,$8F,$0E,$80 ; $D088E0
    db $02,$76,$01,$3A,$76,$7F,$9C,$76,$70,$66,$82,$01,$1C,$8C,$0E,$0F ; $D088F0
    db $01,$7C,$40,$03,$01,$1C,$03,$F2,$01,$DF,$1F,$4B,$01,$26,$DF,$7E ; $D08900
    db $40,$E0,$0B,$80,$FF,$23,$20,$3F,$5B,$1B,$1A,$1F,$7F,$80,$17,$69 ; $D08910
    db $7E,$67,$1F,$87,$A8,$02,$01,$0E,$78,$F7,$02,$01,$92,$01,$5F,$83 ; $D08920
    db $58,$01,$5F,$83,$49,$7C,$01,$EF,$01,$1F,$03,$43,$FF,$13,$C3,$05 ; $D08930
    db $FF,$C0,$00,$C0,$C6,$04,$FF,$C0,$3F,$01,$B0,$FF,$01,$FE,$DD,$10 ; $D08940
    db $93,$3D,$00,$21,$DF,$7C,$1F,$09,$13,$80,$5E,$83,$80,$80,$40,$80 ; $D08950
    db $33,$63,$D2,$C1,$02,$3E,$A7,$2A,$8E,$01,$80,$38,$4A,$F3,$C1,$3C ; $D08960
    db $49,$C3,$01,$83,$D9,$C0,$BF,$20,$E0,$4E,$25,$A5,$08,$01,$3F,$25 ; $D08970
    db $5F,$B4,$DF,$47,$3F,$49,$03,$73,$FF,$0B,$F4,$04,$FF,$04,$04,$04 ; $D08980
    db $FC,$01,$B4,$BF,$C9,$00,$FC,$EB,$BF,$20,$23,$13,$40,$05,$C0,$10 ; $D08990
    db $F0,$80,$F0,$64,$85,$70,$20,$0F,$CC,$70,$49,$80,$01,$80,$F1,$20 ; $D089A0
    db $C0,$80,$60,$40,$A0,$60,$A0,$24,$20,$60,$80,$E0,$59,$00,$F7,$EC ; $D089B0
    db $01,$FF,$5B,$0D,$00,$08,$07,$05,$0A,$0A,$05,$0D,$02,$3B,$07,$08 ; $D089C0
    db $3D,$80,$F0,$06,$01,$71,$00,$F8,$20,$D8,$88,$70,$50,$A8,$A8,$50 ; $D089D0
    db $D8,$20,$70,$88,$FF,$00,$88,$93,$F7,$02,$01,$0C,$7E,$03,$02,$D5 ; $D089E0
    db $03,$31,$01,$02,$05,$01,$02,$1A,$EC,$D1,$97,$27,$01,$0C,$1F,$C1 ; $D089F0
    db $01,$7F,$41,$18,$40,$81,$81,$7F,$01,$41,$74,$80,$3D,$A0,$3E,$06 ; $D08A00
    db $01,$1A,$93,$1B,$9D,$03,$6F,$08,$05,$0B,$60,$9F,$D9,$70,$20,$D0 ; $D08A10
    db $50,$CC,$21,$50,$CB,$D0,$76,$20,$A0,$F4,$07,$A0,$40,$93,$40,$20 ; $D08A20
    db $20,$D9,$3F,$DD,$00,$9F,$05,$60,$05,$15,$9B,$0C,$9F,$1C,$01,$08 ; $D08A30
    db $1B,$14,$14,$08,$03,$6E,$08,$05,$3C,$0C,$03,$06,$01,$00,$5C,$1F ; $D08A40
    db $3A,$04,$1B,$11,$0E,$0A,$15,$15,$0A,$1B,$04,$0E,$11,$3C,$A0,$07 ; $D08A50
    db $80,$00,$2E,$87,$04,$1F,$83,$81,$06,$02,$85,$85,$02,$83,$04,$06 ; $D08A60
    db $81,$87,$05,$15,$7B,$1D,$7F,$0D,$73,$02,$DD,$8E,$FF,$81,$83,$AE ; $D08A70
    db $3D,$01,$B4,$40,$77,$01,$80,$7F,$DB,$01,$D0,$00,$84,$32,$CD,$4D ; $D08A80
    db $B2,$B2,$4D,$6F,$44,$90,$C2,$00,$54,$DA,$BA,$9D,$5F,$00,$53,$40 ; $D08A90
    db $3C,$14,$68,$68,$22,$14,$7C,$1E,$1F,$00,$03,$3E,$50,$83,$24,$3C ; $D08AA0
    db $20,$C1,$BF,$34,$14,$28,$28,$81,$BF,$20,$F4,$08,$3C,$40,$68,$57 ; $D08AB0
    db $81,$01,$FC,$03,$A2,$03,$39,$53,$36,$C9,$03,$9E,$05,$FE,$06,$01 ; $D08AC0
    db $C5,$41,$44,$BB,$C3,$11,$EE,$AA,$55,$55,$AA,$BB,$44,$EE,$11,$FF ; $D08AD0
    db $00,$DE,$08,$01,$06,$00,$F8,$02,$7B,$B4,$44,$81,$00,$53,$10,$60 ; $D08AE0
    db $20,$50,$50,$20,$60,$3E,$10,$70,$03,$24,$57,$01,$8A,$B8,$F4,$A0 ; $D08AF0
    db $03,$40,$E3,$05,$40,$BA,$C9,$00,$FC,$07,$BF,$F8,$3B,$07,$0F,$AE ; $D08B00
    db $F1,$0D,$EA,$EF,$05,$D7,$02,$7C,$F0,$05,$F0,$D9,$61,$77,$00,$1D ; $D08B10
    db $DD,$00,$AA,$7F,$FB,$01,$9B,$02,$3C,$99,$07,$1F,$08,$3B,$80,$22 ; $D08B20
    db $FE,$3B,$02,$1F,$8A,$8E,$25,$07,$F8,$C1,$EB,$97,$C0,$AE,$B5,$40 ; $D08B30
    db $ED,$7B,$DB,$01,$E3,$09,$5F,$CF,$04,$9F,$00,$09,$75,$9F,$4E,$E7 ; $D08B40
    db $00,$D0,$3B,$E2,$A0,$A4,$BF,$20,$00,$4F,$A4,$C7,$08,$5F,$47,$55 ; $D08B50
    db $14,$81,$28,$1F,$72,$08,$1F,$23,$53,$7C,$79,$02,$3B,$00,$1C,$EE ; $D08B60
    db $99,$EC,$FB,$4B,$28,$BF,$BF,$08,$1F,$88,$53,$D6,$97,$3B,$01,$1F ; $D08B70
    db $EE,$E3,$1B,$FB,$D9,$0A,$8E,$03,$02,$7C,$21,$08,$7E,$5F,$02,$1F ; $D08B80
    db $71,$0A,$BF,$04,$F2,$09,$7F,$87,$EA,$1D,$33,$83,$43,$67,$02,$8E ; $D08B90
    db $E3,$04,$7C,$5F,$08,$38,$7F,$83,$17,$83,$A2,$1D,$02,$57,$06,$79 ; $D08BA0
    db $7C,$06,$01,$FF,$D9,$3D,$77,$59,$3F,$80,$54,$7E,$8D,$02,$3F,$91 ; $D08BB0
    db $80,$7C,$DF,$FD,$77,$6C,$E1,$A5,$E1,$0F,$5F,$07,$1C,$3E,$83,$3C ; $D08BC0
    db $DB,$4C,$1C,$DD,$22,$8A,$1E,$0F,$C3,$04,$01,$12,$3F,$C0,$01,$AC ; $D08BD0
    db $D6,$F1,$BD,$80,$00,$F1,$04,$79,$2C,$BF,$EE,$39,$00,$B8,$7D,$87 ; $D08BE0
    db $81,$01,$10,$04,$20,$27,$14,$FC,$A4,$05,$77,$C3,$45,$06,$E4,$74 ; $D08BF0
    db $39,$56,$40,$81,$B2,$0F,$D7,$90,$F2,$0E,$00,$07,$8E,$01,$06,$79 ; $D08C00
    db $01,$07,$00,$0F,$F1,$04,$45,$C0,$0E,$0F,$C2,$C0,$30,$1E,$30,$0C ; $D08C10
    db $0C,$02,$20,$1C,$7C,$03,$1F,$39,$93,$FD,$C9,$0B,$58,$1E,$5D,$75 ; $D08C20
    db $FF,$5B,$87,$8F,$0E,$1E,$09,$3E,$21,$FF,$02,$AE,$FD,$08,$7B,$01 ; $D08C30
    db $08,$1E,$EB,$04,$FD,$88,$E8,$01,$FD,$2B,$13,$10,$40,$59,$00,$82 ; $D08C40
    db $7C,$08,$C1,$3E,$C0,$3F,$99,$17,$15,$9F,$FF,$2A,$80,$02,$89,$39 ; $D08C50
    db $51,$88,$1D,$91,$12,$01,$FE,$07,$A3,$07,$3C,$0E,$7F,$07,$5E,$E1 ; $D08C60
    db $B4,$48,$18,$1F,$E1,$78,$E1,$08,$9D,$78,$87,$FE,$02,$D9,$3B,$5F ; $D08C70
    db $E2,$02,$00,$10,$8F,$DA,$B9,$43,$1F,$BF,$BF,$C4,$06,$1F,$40,$8F ; $D08C80
    db $BF,$91,$61,$3F,$EF,$EF,$09,$15,$4C,$19,$08,$00,$08,$F1,$62,$7C ; $D08C90
    db $23,$7F,$80,$43,$1F,$FD,$FD,$D6,$08,$7F,$8F,$97,$0E,$12,$7F,$00 ; $D08CA0
    db $F7,$BE,$15,$01,$90,$1F,$F7,$F7,$F2,$07,$1F,$8E,$7F,$91,$98,$7F ; $D08CB0
    db $8E,$8E,$F7,$08,$5F,$BC,$06,$FF,$08,$5F,$80,$5A,$1F,$24,$B7,$1F ; $D08CC0
    db $3C,$DF,$DF,$07,$3F,$F8,$24,$3F,$C0,$40,$8C,$A0,$00,$0F,$03,$F8 ; $D08CD0
    db $FB,$20,$07,$12,$20,$C0,$3F,$DF,$FF,$01,$1F,$C5,$08,$0F,$78,$FF ; $D08CE0
    db $04,$BB,$3B,$07,$F3,$08,$FF,$80,$EE,$06,$5C,$80,$7C,$80,$08,$4A ; $D08CF0
    db $9F,$F5,$37,$91,$02,$80,$1F,$9F,$0E,$0A,$DF,$FE,$5A,$01,$07,$DF ; $D08D00
    db $18,$18,$C0,$42,$C5,$E2,$90,$00,$13,$75,$0E,$89,$AD,$E2,$8A,$01 ; $D08D10
    db $30,$0F,$98,$26,$11,$8C,$F0,$30,$49,$3F,$FF,$F0,$C8,$00,$D0,$17 ; $D08D20
    db $05,$CC,$5F,$C0,$08,$F1,$E9,$76,$71,$F1,$23,$F1,$CD,$0B,$04,$C3 ; $D08D30
    db $00,$01,$01,$68,$03,$1D,$60,$09,$0F,$61,$1E,$00,$E1,$46,$00,$F3 ; $D08D40
    db $CE,$23,$E1,$30,$0B,$1E,$33,$E1,$E1,$E0,$6D,$E0,$05,$23,$B0,$07 ; $D08D50
    db $05,$1E,$1E,$80,$8A,$6A,$39,$90,$3D,$08,$E8,$88,$08,$C6,$00,$E8 ; $D08D60
    db $E7,$01,$21,$08,$07,$05,$25,$09,$4F,$FC,$B3,$02,$01,$02,$FD,$C7 ; $D08D70
    db $06,$01,$00,$C7,$87,$04,$01,$82,$7C,$C7,$B8,$05,$00,$A7,$38,$A2 ; $D08D80
    db $01,$3F,$64,$07,$38,$84,$00,$3F,$3F,$CA,$08,$38,$79,$7D,$03,$00 ; $D08D90
    db $E0,$E2,$07,$0F,$00,$E3,$A9,$D7,$5A,$FC,$93,$DF,$E3,$E3,$62,$21 ; $D08DA0
    db $00,$FC,$FC,$10,$05,$00,$EA,$BC,$7C,$38,$02,$01,$10,$16,$0F,$B8 ; $D08DB0
    db $B8,$48,$59,$67,$00,$78,$E7,$04,$01,$40,$87,$7B,$E7,$07,$00,$B9 ; $D08DC0
    db $6E,$8B,$B9,$E2,$F0,$03,$D4,$03,$3C,$00,$1E,$1D,$1D,$1C,$84,$00 ; $D08DD0
    db $F8,$F8,$37,$05,$00,$55,$1F,$CE,$DB,$8E,$C3,$03,$01,$CE,$CE,$0E ; $D08DE0
    db $DD,$05,$00,$C3,$9E,$03,$CC,$02,$01,$01,$0E,$73,$78,$03,$05,$00 ; $D08DF0
    db $00,$8E,$F1,$05,$01,$FF,$8E,$EE,$05,$00,$CF,$1F,$71,$06,$7B,$01 ; $D08E00
    db $08,$00,$90,$7F,$01,$4C,$CF,$07,$EF,$D0,$7F,$00,$24,$CF,$CF,$07 ; $D08E10
    db $E9,$BF,$4E,$38,$F0,$4E,$00,$C2,$0B,$F8,$38,$3B,$B8,$45,$43,$C3 ; $D08E20
    db $05,$1F,$0B,$F8,$FB,$02,$92,$48,$01,$7D,$00,$07,$07,$3F,$18,$07 ; $D08E30
    db $72,$56,$78,$45,$00,$5C,$87,$78,$0B,$0E,$07,$7F,$7F,$78,$45,$00 ; $D08E40
    db $60,$97,$05,$07,$75,$07,$2A,$61,$78,$E3,$B9,$9C,$25,$0B,$0E,$80 ; $D08E50
    db $F8,$F8,$78,$43,$0F,$05,$63,$00,$05,$80,$80,$8E,$78,$F0,$A3,$96 ; $D08E60
    db $A0,$A3,$04,$F4,$31,$C4,$04,$00,$F6,$F0,$B0,$01,$46,$F7,$F0,$F4 ; $D08E70
    db $A4,$01,$AF,$17,$81,$25,$30,$30,$C0,$C0,$70,$49,$00,$E9,$E5,$D9 ; $D08E80
    db $CC,$80,$01,$E2,$E2,$E3,$E3,$E1,$E3,$B6,$CD,$C9,$09,$E2,$EB,$F0 ; $D08E90
    db $22,$01,$AB,$03,$E0,$85,$F0,$78,$FC,$1E,$3F,$07,$0F,$3F,$7F,$F8 ; $D08EA0
    db $FC,$00,$5A,$CE,$30,$EF,$7A,$5D,$9A,$DA,$EF,$3F,$26,$1F,$00,$C3 ; $D08EB0
    db $8F,$1E,$3E,$00,$FB,$01,$F9,$17,$85,$20,$0E,$01,$1F,$0F,$7C,$0F ; $D08EC0
    db $04,$CE,$87,$F3,$FB,$93,$C3,$08,$08,$42,$35,$00,$C4,$1D,$08,$EF ; $D08ED0
    db $FB,$F3,$02,$E3,$F8,$02,$CB,$0E,$0F,$1F,$38,$3C,$00,$03,$70,$FF ; $D08EE0
    db $0C,$F0,$30,$C0,$84,$5F,$31,$00,$A3,$80,$C0,$FD,$04,$9B,$7A,$C0 ; $D08EF0
    db $02,$6F,$9E,$00,$04,$7F,$FA,$06,$54,$97,$FC,$00,$0C,$7C,$FC,$1C ; $D08F00
    db $3C,$E1,$01,$5B,$03,$A0,$60,$3C,$03,$0C,$03,$03,$FD,$02,$B5,$3F ; $D08F10
    db $9F,$80,$C0,$C0,$06,$FE,$7D,$E3,$69,$DF,$10,$5F,$02,$4B,$66,$FF ; $D08F20
    db $E2,$02,$01,$2B,$CF,$E8,$02,$1B,$EC,$87,$00,$1F,$70,$70,$71,$73 ; $D08F30
    db $77,$7F,$31,$7E,$7F,$09,$81,$C3,$08,$1C,$A8,$C1,$73,$80,$7C,$40 ; $D08F40
    db $80,$38,$04,$04,$C4,$9B,$78,$FC,$80,$DD,$C0,$E0,$F8,$FC,$04,$E9 ; $D08F50
    db $8A,$4D,$30,$DD,$1F,$CD,$96,$D5,$F3,$03,$00,$00,$C0,$06,$01,$EF ; $D08F60
    db $FF,$FE,$FF,$F0,$3F,$F8,$80,$01,$2A,$0E,$E7,$7E,$CA,$03,$EF,$8F ; $D08F70
    db $E0,$08,$BF,$60,$DE,$07,$90,$37,$13,$FF,$04,$7F,$FA,$08,$30,$FF ; $D08F80
    db $FE,$06,$FD,$23,$08,$98,$F3,$D4,$1F,$3F,$F1,$04,$0F,$3F,$00,$F7 ; $D08F90
    db $06,$92,$3A,$3F,$7F,$C7,$C2,$01,$D1,$04,$20,$E4,$06,$61,$70,$5C ; $D08FA0
    db $6E,$F0,$10,$7A,$30,$01,$0F,$1E,$F3,$03,$1F,$F0,$00             ; $D08FB0
; ---- end of region ----


; ---- RNC method 2 block: 17079 bytes packed, 33796 unpacked (tools/rnc.py) ($D08FBD-$D0D285) ----
    db $52,$4E,$43,$02,$00,$00,$84,$04,$00,$00,$42,$B7,$FC,$10,$7E,$91 ; $D08FBD
    db $04,$03,$2E,$BA,$00,$00,$80,$10,$00,$11,$40,$15,$80,$19,$47,$0C ; $D08FCD
    db $C8,$14,$0E,$21,$C0,$21,$00,$2A,$25,$36,$60,$36,$A0,$42,$00,$57 ; $D08FDD
    db $35,$25,$90,$73,$1F,$E9,$47,$00,$4A,$00,$AD,$00,$EF,$04,$10,$05 ; $D08FED
    db $32,$09,$33,$0D,$75,$11,$B6,$15,$F8,$19,$19,$1E,$3B,$22,$9D,$2A ; $D08FFD
    db $1F,$2F,$05,$1F,$00,$D3,$10,$60,$1C,$04,$18,$84,$20,$E4,$2C,$A0 ; $D0900D
    db $2C,$06,$31,$27,$3D,$68,$4D,$C8,$51,$0C,$62,$8C,$72,$45,$45,$1C ; $D0901D
    db $70,$9C,$97,$1F,$48,$44,$04,$85,$00,$86,$08,$A6,$08,$C8,$10,$E9 ; $D0902D
    db $18,$0A,$19,$2B,$25,$6C,$29,$CF,$31,$AE,$2D,$10,$32,$32,$3E,$75 ; $D0903D
    db $46,$5C,$1F,$F4,$04,$00,$06,$00,$6C,$00,$8D,$08,$49,$00,$AF,$10 ; $D0904D
    db $D1,$14,$D5,$14,$18,$21,$99,$31,$FC,$39,$9E,$4E,$1B,$8C,$1F,$60 ; $D0905D
    db $A1,$08,$2E,$E4,$10,$50,$66,$21,$A0,$0C,$C2,$0C,$05,$11,$26,$19 ; $D0906D
    db $A9,$25,$CC,$25,$EA,$21,$2C,$2A,$91,$36,$1F,$3D,$1F,$00,$F7,$01 ; $D0907D
    db $E0,$35,$01,$FF,$7F,$16,$00,$76,$20,$C2,$F0,$9C,$00,$01,$00,$02 ; $D0908D
    db $3C,$00,$03,$1D,$29,$04,$3A,$00,$05,$1E,$53,$07,$05,$13,$01,$08 ; $D0909D
    db $00,$09,$00,$0A,$00,$0B,$E0,$1B,$3D,$0C,$00,$0D,$00,$0E,$0E,$00 ; $D090AD
    db $0F,$00,$9F,$16,$03,$00,$15,$12,$00,$13,$00,$14,$00,$15,$3C,$00 ; $D090BD
    db $16,$19,$3F,$17,$00,$00,$18,$00,$19,$00,$1A,$00,$1B,$F0,$05,$15 ; $D090CD
    db $1C,$00,$1D,$3B,$00,$1E,$7E,$71,$1A,$6D,$00,$21,$00,$22,$00,$23 ; $D090DD
    db $00,$24,$00,$78,$25,$05,$15,$26,$00,$01,$27,$00,$28,$00,$29,$00 ; $D090ED
    db $2A,$E5,$11,$37,$2B,$C7,$00,$2C,$00,$2D,$00,$2E,$00,$2F,$00,$30 ; $D090FD
    db $00,$31,$00,$32,$00,$33,$CB,$01,$19,$34,$8F,$00,$35,$00,$36,$00 ; $D0910D
    db $37,$00,$38,$00,$39,$00,$3A,$00,$3B,$00,$3C,$85,$0D,$3F,$3D,$00 ; $D0911D
    db $3E,$C7,$00,$3F,$00,$40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45 ; $D0912D
    db $00,$46,$A4,$FB,$48,$00,$74,$49,$8B,$FF,$4B,$00,$4C,$8F,$00,$4D ; $D0913D
    db $00,$4E,$00,$4F,$00,$50,$00,$51,$00,$52,$00,$53,$00,$54,$97,$03 ; $D0914D
    db $39,$55,$2E,$00,$56,$00,$57,$00,$58,$00,$59,$00,$5A,$00,$5B,$00 ; $D0915D
    db $5C,$00,$5D,$00,$5E,$00,$5F,$95,$B7,$61,$CB,$00,$62,$00,$63,$00 ; $D0916D
    db $64,$00,$65,$00,$66,$00,$67,$00,$68,$00,$69,$00,$6A,$00,$6B,$A4 ; $D0917D
    db $EB,$6D,$00,$00,$6E,$00,$6F,$00,$70,$00,$71,$00,$52,$72,$3F,$ED ; $D0918D
    db $73,$00,$74,$00,$75,$00,$76,$00,$77,$00,$78,$00,$79,$00,$7A,$00 ; $D0919D
    db $7B,$00,$7C,$00,$7D,$00,$7E,$00,$7F,$00,$80,$00,$81,$00,$82,$00 ; $D091AD
    db $83,$00,$84,$00,$D5,$43,$2E,$00,$87,$5C,$00,$88,$00,$89,$00,$8A ; $D091BD
    db $00,$8B,$00,$8C,$00,$8D,$00,$8E,$00,$8F,$00,$90,$00,$91,$3F,$5E ; $D091CD
    db $92,$BA,$00,$93,$00,$94,$00,$95,$00,$96,$00,$97,$00,$98,$00,$99 ; $D091DD
    db $00,$9A,$00,$9B,$00,$9C,$00,$9D,$00,$9E,$00,$9F,$00,$A0,$00,$A1 ; $D091ED
    db $00,$A2,$00,$A3,$00,$A4,$00,$A5,$00,$A6,$00,$A7,$00,$A8,$00,$A9 ; $D091FD
    db $00,$AA,$00,$AB,$00,$AC,$A2,$D3,$AE,$00,$AF,$FF,$00,$B0,$00,$B1 ; $D0920D
    db $00,$B2,$00,$B3,$00,$B4,$00,$B5,$00,$B6,$00,$B7,$00,$B8,$00,$B9 ; $D0921D
    db $00,$BA,$00,$BB,$00,$BC,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00,$C1 ; $D0922D
    db $00,$C2,$00,$C3,$00,$C4,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00,$C9 ; $D0923D
    db $00,$CA,$00,$CB,$00,$CC,$00,$CD,$00,$CE,$00,$CF,$00,$D0,$00,$D1 ; $D0924D
    db $00,$D2,$00,$D3,$7F,$00,$D4,$00,$D5,$00,$D6,$00,$D7,$00,$D8,$00 ; $D0925D
    db $D9,$00,$DA,$00,$DB,$00,$DC,$00,$DD,$00,$DE,$00,$DF,$00,$E0,$00 ; $D0926D
    db $E1,$00,$E2,$00,$E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7,$00,$E8,$00 ; $D0927D
    db $E9,$00,$EA,$00,$EB,$00,$EC,$00,$ED,$00,$EE,$00,$EF,$00,$F0,$00 ; $D0928D
    db $F1,$00,$F2,$00,$F3,$00,$F4,$00,$F5,$00,$F6,$00,$F7,$B8,$F4,$00 ; $D0929D
    db $F8,$00,$F9,$00,$FA,$00,$FB,$00,$FC,$00,$FD,$00,$FE,$00,$FF,$6B ; $D092AD
    db $F6,$00,$FD,$02,$01,$03,$01,$04,$01,$05,$01,$06,$01,$07,$01,$08 ; $D092BD
    db $01,$09,$01,$0A,$01,$0B,$01,$0C,$01,$0D,$01,$0E,$01,$0F,$01,$10 ; $D092CD
    db $01,$11,$01,$12,$01,$13,$01,$14,$01,$15,$01,$16,$01,$17,$01,$18 ; $D092DD
    db $01,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D,$01,$1E,$01,$1F,$01,$20 ; $D092ED
    db $01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$01,$FE,$26,$01,$27,$01 ; $D092FD
    db $28,$01,$29,$01,$2A,$01,$2B,$01,$2C,$01,$2D,$01,$2E,$01,$2F,$01 ; $D0930D
    db $30,$01,$31,$01,$32,$01,$33,$01,$34,$01,$35,$01,$36,$01,$37,$01 ; $D0931D
    db $38,$01,$39,$01,$3A,$01,$3B,$01,$3C,$01,$3D,$01,$3E,$01,$3F,$01 ; $D0932D
    db $40,$01,$41,$01,$42,$01,$43,$01,$44,$01,$45,$01,$46,$01,$47,$01 ; $D0933D
    db $48,$01,$49,$01,$FF,$4A,$01,$4B,$01,$4C,$01,$4D,$01,$4E,$01,$4F ; $D0934D
    db $01,$50,$01,$51,$01,$52,$01,$53,$01,$54,$01,$55,$01,$56,$01,$57 ; $D0935D
    db $01,$58,$01,$59,$01,$5A,$01,$5B,$01,$5C,$01,$5D,$01,$5E,$01,$5F ; $D0936D
    db $01,$60,$01,$61,$01,$62,$01,$63,$01,$64,$01,$65,$01,$66,$01,$67 ; $D0937D
    db $01,$68,$01,$69,$01,$6A,$01,$6B,$01,$6C,$01,$6D,$01,$7F,$6E,$01 ; $D0938D
    db $6F,$01,$70,$01,$71,$01,$72,$01,$73,$01,$74,$01,$75,$01,$76,$01 ; $D0939D
    db $77,$01,$78,$01,$79,$01,$7A,$01,$7B,$01,$7C,$01,$7D,$01,$7E,$01 ; $D093AD
    db $7F,$01,$80,$01,$81,$01,$82,$01,$83,$01,$84,$01,$85,$01,$86,$01 ; $D093BD
    db $87,$01,$88,$01,$89,$01,$8A,$01,$8B,$01,$8C,$01,$8D,$01,$8E,$01 ; $D093CD
    db $8F,$01,$90,$01,$91,$01,$BF,$DF,$92,$01,$93,$01,$94,$01,$95,$01 ; $D093DD
    db $96,$01,$97,$01,$98,$01,$99,$01,$9A,$01,$9B,$01,$9C,$01,$9D,$01 ; $D093ED
    db $9E,$01,$9F,$01,$A0,$01,$A1,$01,$A2,$01,$A3,$01,$A4,$01,$A5,$01 ; $D093FD
    db $A6,$01,$A7,$01,$A8,$01,$A9,$01,$AA,$01,$AB,$01,$AC,$01,$AD,$01 ; $D0940D
    db $AE,$01,$AF,$01,$B0,$01,$B1,$01,$B2,$01,$B3,$01,$B4,$01,$B5,$01 ; $D0941D
    db $EF,$B6,$01,$B7,$01,$B8,$01,$B9,$01,$BA,$01,$BB,$01,$BC,$01,$BD ; $D0942D
    db $01,$BE,$01,$BF,$01,$C0,$01,$C1,$01,$C2,$01,$C3,$01,$C4,$01,$C5 ; $D0943D
    db $01,$C6,$01,$C7,$01,$C8,$01,$C9,$01,$CA,$01,$CB,$01,$CC,$01,$CD ; $D0944D
    db $01,$CE,$01,$CF,$01,$D0,$01,$D1,$01,$D2,$01,$D3,$01,$D4,$01,$D5 ; $D0945D
    db $01,$D6,$01,$D7,$01,$D8,$01,$D9,$01,$3F,$DA,$01,$DB,$01,$DC,$01 ; $D0946D
    db $DD,$01,$DE,$01,$DF,$01,$E0,$01,$E1,$01,$E2,$01,$E3,$01,$E4,$01 ; $D0947D
    db $E5,$01,$E6,$01,$E7,$01,$E8,$01,$E9,$01,$EA,$01,$EB,$01,$EC,$01 ; $D0948D
    db $ED,$01,$EE,$01,$EF,$01,$F0,$01,$F1,$01,$18,$57,$11,$FF,$BC,$07 ; $D0949D
    db $00,$10,$27,$05,$03,$03,$14,$0C,$2C,$1C,$4C,$E4,$02,$DE,$07,$03 ; $D094AD
    db $05,$1F,$03,$3F,$03,$7F,$80,$37,$F8,$FF,$E0,$FF,$C0,$3C,$FF,$80 ; $D094BD
    db $11,$3F,$65,$74,$66,$72,$6C,$00,$CC,$0F,$2F,$FE,$A7,$01,$AC,$01 ; $D094CD
    db $77,$01,$F0,$11,$00,$40,$80,$A0,$1E,$C0,$90,$E0,$03,$10,$74,$C0 ; $D094DD
    db $BC,$00,$F0,$02,$B9,$3F,$0F,$FF,$1F,$FF,$0F,$10,$00,$3F,$03,$06 ; $D094ED
    db $0D,$1E,$13,$39,$2F,$26,$64,$4F,$BC,$00,$00,$1C,$03,$33,$0C,$6F ; $D094FD
    db $10,$DC,$78,$23,$1E,$FF,$E0,$E0,$00,$D8,$2C,$0C,$9A,$C2,$EE,$B0 ; $D0950D
    db $5D,$90,$0F,$F0,$00,$00,$CC,$F0,$FA,$04,$F7,$00,$9B,$E0,$FD,$20 ; $D0951D
    db $3F,$80,$81,$0D,$02,$0E,$33,$0B,$90,$B0,$0E,$0F,$00,$03,$18,$07 ; $D0952D
    db $1F,$0C,$64,$18,$C0,$20,$3F,$30,$40,$98,$C0,$0C,$16,$E0,$A6,$70 ; $D0953D
    db $21,$0F,$80,$FC,$DD,$0D,$F7,$1A,$3F,$6E,$72,$9C,$E5,$7F,$04,$E5 ; $D0954D
    db $01,$77,$B8,$88,$0B,$00,$51,$09,$01,$FF,$D9,$83,$FC,$C4,$01,$F8 ; $D0955D
    db $DE,$01,$08,$3D,$B8,$40,$FA,$06,$11,$F1,$30,$F0,$3C,$FF,$C5,$3A ; $D0956D
    db $EF,$10,$01,$01,$FF,$46,$0E,$65,$E0,$01,$02,$FF,$CF,$3F,$FF,$CA ; $D0957D
    db $02,$7E,$B7,$0F,$BF,$03,$02,$03,$54,$54,$70,$70,$10,$35,$55,$AA ; $D0958D
    db $1C,$32,$57,$00,$69,$AB,$79,$ED,$AA,$C7,$07,$52,$AE,$19,$3F,$38 ; $D0959D
    db $F8,$00,$44,$78,$60,$7C,$E2,$FC,$00,$E7,$B0,$46,$B9,$46,$99,$46 ; $D095AD
    db $10,$80,$FC,$03,$80,$FE,$00,$FE,$01,$FE,$06,$8C,$B0,$EF,$90,$EF ; $D095BD
    db $C0,$1C,$03,$FF,$01,$01,$F8,$11,$3F,$94,$38,$71,$02,$01,$04,$C4 ; $D095CD
    db $01,$02,$04,$3D,$10,$04,$01,$F8,$18,$3F,$46,$5B,$5C,$09,$BB,$F6 ; $D095DD
    db $37,$80,$AF,$E0,$9F,$40,$5E,$A1,$3E,$80,$3E,$C1,$F7,$0C,$E4,$18 ; $D095ED
    db $C8,$30,$70,$45,$7D,$DE,$BD,$81,$19,$3F,$5C,$02,$7A,$6C,$F1,$08 ; $D095FD
    db $C0,$2F,$8C,$53,$00,$2D,$A7,$FB,$DE,$21,$F0,$0F,$9D,$87,$3D,$1E ; $D0960D
    db $7C,$87,$DF,$00,$03,$A3,$1C,$1E,$BF,$3F,$BF,$CB,$18,$3F,$37,$8F ; $D0961D
    db $F8,$2F,$B0,$97,$48,$01,$F2,$4C,$7E,$62,$BD,$7D,$83,$1C,$E2,$30 ; $D0962D
    db $75,$FB,$60,$DF,$31,$C0,$3F,$A1,$5E,$7D,$FE,$FC,$79,$FF,$18,$3F ; $D0963D
    db $E3,$71,$0C,$F3,$00,$F3,$0C,$F9,$06,$79,$82,$39,$C4,$19,$E4,$2D ; $D0964D
    db $F0,$18,$EA,$14,$83,$04,$01,$77,$82,$5F,$7B,$C2,$1D,$2E,$FF,$80 ; $D0965D
    db $7D,$01,$31,$4E,$3F,$07,$07,$44,$6B,$3B,$72,$06,$A4,$63,$10,$0D ; $D0966D
    db $45,$73,$C2,$08,$07,$09,$06,$0A,$05,$0E,$01,$0E,$03,$32,$0F,$21 ; $D0967D
    db $73,$F0,$E7,$01,$01,$C0,$AE,$09,$3F,$38,$0F,$10,$20,$0F,$86,$29 ; $D0968D
    db $91,$56,$44,$BB,$BA,$55,$00,$7D,$01,$EE,$70,$10,$FF,$B8,$7C,$90 ; $D0969D
    db $7F,$39,$FF,$38,$C7,$54,$BB,$EE,$11,$6C,$11,$18,$5C,$3F,$F0,$57 ; $D096AD
    db $00,$F8,$07,$23,$8C,$74,$8B,$51,$26,$52,$25,$88,$75,$04,$03,$50 ; $D096BD
    db $AF,$70,$8F,$20,$DF,$24,$DF,$03,$71,$8E,$53,$1E,$8C,$F9,$FC,$18 ; $D096CD
    db $3F,$BA,$FB,$9F,$40,$27,$80,$08,$A0,$4C,$50,$17,$E8,$EB,$54,$03 ; $D096DD
    db $F4,$00,$BD,$10,$EF,$40,$FF,$48,$F7,$E4,$FB,$E3,$1C,$53,$EC,$BB ; $D096ED
    db $46,$B2,$47,$18,$3F,$F7,$09,$4A,$E8,$01,$51,$12,$01,$60,$80,$C9 ; $D096FD
    db $35,$7F,$9F,$01,$1F,$0A,$14,$3F,$01,$77,$03,$D9,$A5,$02,$01,$05 ; $D0970D
    db $88,$01,$05,$00,$4B,$01,$7E,$C1,$1C,$7F,$5C,$BD,$7A,$43,$FC,$01 ; $D0971D
    db $78,$05,$7C,$02,$70,$0B,$67,$14,$64,$0B,$60,$09,$81,$87,$F1,$82 ; $D0972D
    db $40,$B7,$87,$00,$8C,$0F,$03,$98,$07,$97,$19,$5D,$3F,$7C,$30,$8F ; $D0973D
    db $30,$CF,$58,$67,$3F,$71,$68,$D7,$9F,$F8,$4E,$B1,$C4,$BB,$FF,$3F ; $D0974D
    db $40,$3F,$DF,$3F,$F1,$0E,$CF,$3F,$F8,$07,$7B,$FF,$9B,$7F,$18,$3F ; $D0975D
    db $1A,$B9,$75,$E6,$79,$99,$2E,$D7,$E0,$FF,$2C,$D6,$E0,$31,$5B,$E4 ; $D0976D
    db $5C,$A7,$F8,$FF,$19,$E6,$E7,$70,$66,$03,$3F,$C0,$58,$1E,$BF,$B7 ; $D0977D
    db $F8,$18,$3F,$18,$2C,$F1,$0C,$01,$A2,$04,$00,$4A,$06,$08,$06,$A8 ; $D0978D
    db $C6,$F9,$06,$44,$39,$3A,$B3,$D1,$97,$57,$F1,$1C,$01,$F0,$01,$F3 ; $D0979D
    db $18,$3F,$4F,$17,$EB,$36,$20,$4F,$9E,$10,$69,$08,$E6,$03,$F4,$59 ; $D097AD
    db $00,$59,$24,$4F,$31,$81,$78,$E1,$18,$96,$08,$17,$08,$47,$08,$FC ; $D097BD
    db $03,$B8,$43,$80,$17,$DD,$BF,$F2,$B0,$7C,$AA,$E1,$7C,$46,$01,$39 ; $D097CD
    db $82,$3C,$40,$79,$00,$0F,$F0,$7D,$D8,$3F,$BB,$10,$75,$FE,$98,$45 ; $D097DD
    db $07,$79,$86,$3F,$01,$FE,$18,$2E,$FF,$FC,$3D,$02,$74,$01,$02,$A9 ; $D097ED
    db $83,$14,$44,$02,$11,$60,$DC,$00,$03,$D8,$FD,$65,$5B,$C3,$06,$70 ; $D097FD
    db $2B,$70,$A9,$70,$9E,$60,$24,$FB,$26,$F9,$CB,$18,$3F,$07,$8F,$E8 ; $D0980D
    db $04,$F3,$A8,$F3,$10,$04,$E0,$0B,$E6,$11,$E4,$00,$84,$79,$F7,$48 ; $D0981D
    db $BF,$EC,$40,$FB,$EA,$41,$CD,$0F,$00,$E1,$1E,$00,$E7,$19,$7F,$A0 ; $D0982D
    db $78,$E4,$20,$2E,$C0,$40,$9E,$B0,$80,$38,$00,$78,$D0,$00,$D0,$20 ; $D0983D
    db $B0,$40,$08,$F0,$38,$C0,$48,$80,$40,$80,$10,$80,$F8,$00,$E8,$10 ; $D0984D
    db $0F,$FF,$07,$05,$01,$F8,$09,$7F,$41,$05,$01,$0B,$C2,$01,$0A,$04 ; $D0985D
    db $1F,$01,$04,$7F,$58,$1C,$BA,$3F,$4F,$E3,$20,$47,$28,$40,$3B,$41 ; $D0986D
    db $27,$40,$2D,$CC,$BF,$E9,$8E,$64,$8B,$90,$D6,$BA,$57,$9C,$D5,$3B ; $D0987D
    db $92,$7C,$01,$18,$07,$F0,$18,$3F,$C2,$31,$FD,$B8,$F5,$03,$4C,$30 ; $D0988D
    db $C0,$E7,$04,$EF,$1C,$F3,$DC,$23,$7A,$85,$0F,$03,$03,$AE,$31,$FD ; $D0989D
    db $A0,$7C,$F7,$0F,$1F,$1F,$FF,$7B,$19,$51,$FF,$83,$0C,$7F,$71,$80 ; $D098AD
    db $62,$99,$87,$4F,$80,$6F,$10,$FF,$33,$AC,$91,$2E,$F0,$80,$80,$EB ; $D098BD
    db $EC,$81,$13,$07,$FF,$1B,$80,$E0,$9F,$01,$C0,$18,$3F,$87,$68,$E7 ; $D098CD
    db $08,$07,$60,$C8,$01,$06,$68,$C6,$A8,$07,$CE,$60,$8E,$D0,$10,$72 ; $D098DD
    db $BB,$30,$A8,$79,$1B,$B0,$40,$70,$41,$C2,$19,$FF,$20,$0E,$68,$E5 ; $D098ED
    db $07,$38,$04,$00,$0E,$02,$05,$03,$0C,$33,$04,$A1,$DC,$B2,$41,$C9 ; $D098FD
    db $30,$6B,$10,$33,$D7,$0F,$02,$0B,$30,$1B,$60,$93,$60,$33,$B3,$80 ; $D0990D
    db $AA,$F7,$F8,$95,$3F,$3D,$0A,$51,$3F,$F7,$E0,$14,$74,$63,$08,$60 ; $D0991D
    db $10,$60,$17,$63,$18,$40,$1E,$02,$C8,$04,$F8,$FB,$40,$F7,$00,$EC ; $D0992D
    db $03,$E8,$00,$E6,$01,$C1,$20,$56,$21,$FA,$19,$81,$7F,$AE,$00,$71 ; $D0993D
    db $06,$70,$88,$D5,$28,$00,$06,$50,$00,$FB,$AE,$50,$01,$70,$8E,$0E ; $D0994D
    db $DB,$F9,$06,$A0,$90,$FC,$8C,$1E,$00,$AB,$54,$19,$3F,$00,$7B,$58 ; $D0995D
    db $87,$30,$41,$30,$03,$12,$18,$05,$06,$D9,$01,$24,$89,$0E,$02,$FC ; $D0996D
    db $DC,$30,$F8,$7E,$00,$DE,$20,$70,$16,$01,$76,$00,$F0,$18,$3F,$20 ; $D0997D
    db $80,$B0,$EF,$DC,$2B,$63,$00,$80,$60,$80,$10,$D0,$08,$88,$18,$C0 ; $D0998D
    db $68,$10,$98,$60,$B0,$40,$A0,$C3,$50,$20,$48,$30,$08,$44,$30,$3A ; $D0999D
    db $73,$0F,$B1,$F7,$4F,$BB,$C7,$0C,$7F,$FC,$05,$C8,$03,$02,$7A,$05 ; $D099AD
    db $04,$10,$28,$D5,$FD,$18,$7F,$75,$07,$04,$1F,$10,$18,$27,$20,$5F ; $D099BD
    db $43,$BD,$00,$F5,$1A,$F3,$30,$E1,$0B,$07,$0F,$1F,$18,$3F,$20,$7F ; $D099CD
    db $41,$FE,$06,$F8,$1C,$E0,$3E,$C0,$F0,$18,$3F,$0E,$F2,$E3,$18,$1C ; $D099DD
    db $04,$FB,$D7,$18,$F7,$00,$04,$F7,$06,$FF,$03,$FE,$FA,$FC,$70,$FE ; $D099ED
    db $A5,$01,$FF,$0E,$F0,$0F,$0C,$03,$3E,$7F,$01,$1D,$9E,$BF,$90,$6D ; $D099FD
    db $00,$E0,$10,$E0,$09,$08,$F8,$20,$D8,$18,$0F,$C0,$00,$E0,$60,$37 ; $D09A0D
    db $F0,$38,$01,$D5,$19,$FF,$06,$D7,$FD,$F9,$06,$73,$FD,$06,$13,$EB ; $D09A1D
    db $18,$3F,$8F,$63,$92,$61,$91,$70,$81,$70,$09,$30,$4D,$30,$0E,$E7 ; $D09A2D
    db $40,$E3,$04,$73,$D7,$D2,$79,$07,$E8,$7F,$77,$47,$8F,$4F,$18,$19 ; $D09A3D
    db $0B,$FF,$23,$D8,$CC,$95,$3B,$A1,$F2,$1F,$A0,$3F,$40,$7E,$81,$F8 ; $D09A4D
    db $04,$E3,$17,$15,$E3,$2B,$C7,$CE,$01,$C0,$75,$C8,$03,$CF,$49,$18 ; $D09A5D
    db $00,$3F,$8B,$35,$4E,$EA,$24,$96,$F0,$C3,$FA,$04,$FE,$01,$00,$43 ; $D09A6D
    db $8F,$D0,$51,$8E,$DB,$A4,$CF,$A4,$7F,$AC,$C3,$F0,$18,$3F,$1E,$60 ; $D09A7D
    db $1E,$C0,$03,$C0,$1C,$E0,$1E,$62,$02,$4A,$A2,$CA,$06,$8B,$05,$0E ; $D09A8D
    db $33,$E0,$E8,$03,$82,$00,$16,$07,$00,$36,$00,$74,$02,$DB,$21,$7F ; $D09A9D
    db $5F,$4B,$3C,$14,$03,$05,$0F,$01,$EA,$F9,$FE,$03,$00,$FC,$DC,$7C ; $D09AAD
    db $C3,$0A,$47,$75,$11,$B3,$68,$2E,$6E,$01,$C2,$75,$3D,$93,$6B,$B4 ; $D09ABD
    db $4F,$06,$01,$0D,$62,$1D,$02,$FD,$01,$2E,$22,$C5,$D7,$3F,$80,$DE ; $D09ACD
    db $0E,$7F,$E7,$4F,$40,$A6,$00,$87,$40,$8B,$00,$C9,$88,$11,$80,$36 ; $D09ADD
    db $94,$62,$31,$C0,$39,$C0,$38,$C0,$7C,$80,$7E,$C3,$01,$77,$88,$7C ; $D09AED
    db $01,$18,$8B,$3F,$30,$87,$15,$9F,$40,$00,$69,$00,$BB,$00,$C1,$06 ; $D09AFD
    db $E8,$06,$F0,$01,$FA,$78,$00,$B4,$0B,$9F,$00,$44,$00,$3F,$00,$1E ; $D09B0D
    db $7A,$A3,$07,$F9,$19,$7F,$B8,$67,$00,$FB,$DD,$20,$D8,$04,$00,$FE ; $D09B1D
    db $A8,$04,$8B,$70,$B5,$FC,$5A,$00,$01,$18,$FE,$DF,$20,$C3,$8F,$70 ; $D09B2D
    db $33,$03,$FC,$01,$FF,$C0,$1A,$3F,$77,$80,$57,$00,$AF,$39,$00,$5F ; $D09B3D
    db $70,$98,$01,$7F,$3B,$EC,$00,$1D,$E8,$00,$D0,$D2,$55,$C0,$00,$21 ; $D09B4D
    db $03,$01,$E3,$19,$3F,$08,$D0,$0B,$7E,$20,$98,$00,$8E,$F7,$73,$A0 ; $D09B5D
    db $60,$23,$C0,$73,$60,$C3,$08,$30,$28,$30,$48,$30,$4F,$03,$60,$37 ; $D09B6D
    db $FC,$98,$67,$38,$C7,$9F,$7E,$75,$19,$90,$3F,$20,$00,$34,$C0,$3C ; $D09B7D
    db $06,$F8,$02,$1F,$20,$21,$C0,$04,$0D,$F9,$01,$BB,$1F,$DC,$7D,$07 ; $D09B8D
    db $18,$20,$7F,$80,$40,$C0,$10,$00,$FF,$05,$1F,$40,$10,$05,$CB,$BF ; $D09B9D
    db $3F,$FC,$0C,$3F,$18,$07,$04,$0B,$03,$01,$0E,$1D,$09,$0E,$08,$61 ; $D09BAD
    db $B7,$08,$0F,$1C,$F5,$43,$9C,$BF,$01,$33,$01,$0F,$01,$09,$FB,$19 ; $D09BBD
    db $BF,$72,$49,$B1,$00,$B8,$84,$39,$85,$3A,$83,$38,$E1,$3A,$40,$9D ; $D09BCD
    db $B4,$5A,$3E,$C0,$3F,$C0,$CA,$03,$3C,$07,$01,$1E,$E0,$9B,$E4,$C0 ; $D09BDD
    db $19,$BF,$FF,$30,$FE,$B8,$5A,$ED,$1F,$F7,$0F,$FA,$02,$F8,$01,$F9 ; $D09BED
    db $01,$71,$88,$AA,$01,$05,$E5,$BE,$06,$F5,$1A,$7F,$00,$FC,$82,$7E ; $D09BFD
    db $91,$6F,$91,$6E,$90,$68,$6F,$01,$C0,$1F,$18,$FC,$1E,$FC,$1F,$16 ; $D09C0D
    db $FE,$1F,$FF,$78,$01,$18,$3F,$03,$03,$77,$01,$A0,$FB,$EE,$D1,$3F ; $D09C1D
    db $C1,$9F,$03,$60,$AE,$51,$95,$6A,$01,$A4,$35,$09,$06,$00,$CF,$3E ; $D09C2D
    db $3F,$FE,$9E,$FF,$CE,$FF,$79,$E5,$19,$3F,$41,$73,$B2,$51,$8A,$49 ; $D09C3D
    db $B4,$E4,$BB,$72,$F5,$01,$BA,$80,$EC,$80,$78,$0C,$C0,$24,$C0,$22 ; $D09C4D
    db $C0,$B0,$40,$F8,$DD,$98,$C1,$C3,$67,$80,$E1,$18,$3F,$04,$97,$04 ; $D09C5D
    db $71,$9C,$03,$EC,$C7,$1C,$07,$DC,$83,$6F,$60,$98,$1F,$20,$78,$00 ; $D09C6D
    db $63,$EF,$5C,$BB,$3C,$01,$71,$1F,$FF,$C0,$F5,$19,$3F,$5C,$43,$B7 ; $D09C7D
    db $D4,$41,$72,$81,$6E,$C6,$71,$C1,$76,$82,$ED,$0C,$32,$F0,$08,$38 ; $D09C8D
    db $00,$8C,$00,$70,$86,$1D,$01,$F0,$CB,$BF,$07,$C0,$19,$3F,$07,$9D ; $D09C9D
    db $16,$A5,$26,$18,$4F,$C9,$1F,$BD,$03,$57,$00,$02,$2D,$06,$1D,$65 ; $D09CAD
    db $02,$4D,$02,$74,$9F,$87,$0A,$7E,$01,$FE,$01,$4F,$40,$F6,$19,$7F ; $D09CBD
    db $E3,$80,$80,$60,$60,$68,$48,$E8,$9C,$7B,$84,$F9,$06,$A8,$57,$50 ; $D09CCD
    db $AF,$BB,$11,$A1,$0B,$F0,$64,$F8,$7F,$DC,$07,$F8,$AF,$F8,$57,$F8 ; $D09CDD
    db $D4,$22,$BF,$42,$A9,$0F,$03,$E4,$1E,$E1,$02,$F4,$17,$F8,$07,$0F ; $D09CED
    db $F3,$0F,$F7,$0E,$20,$00,$3F,$02,$00,$0F,$F1,$F3,$06,$75,$7D,$82 ; $D09CFD
    db $02,$40,$FB,$04,$FB,$F6,$F9,$78,$F7,$FA,$02,$CB,$FB,$9F,$87,$0A ; $D09D0D
    db $17,$39,$05,$00,$0E,$28,$07,$CA,$3F,$55,$FF,$7E,$7F,$1F,$9F,$8F ; $D09D1D
    db $CF,$C0,$91,$03,$20,$1F,$C0,$7F,$8A,$07,$B5,$60,$FF,$B0,$5B,$FF ; $D09D2D
    db $14,$7D,$B9,$13,$88,$7F,$1F,$0E,$15,$A8,$FF,$55,$F5,$EF,$F5,$D7 ; $D09D3D
    db $29,$0F,$80,$7F,$00,$FF,$15,$7C,$01,$08,$20,$7F,$FF,$01,$02,$60 ; $D09D4D
    db $FE,$01,$48,$FC,$15,$FD,$14,$A8,$FD,$02,$01,$72,$03,$01,$3D,$F3 ; $D09D5D
    db $FB,$1A,$4B,$7F,$A2,$51,$86,$D1,$20,$F7,$00,$37,$80,$47,$80,$9F ; $D09D6D
    db $E0,$19,$1E,$1F,$00,$73,$8C,$71,$8E,$77,$8F,$34,$CF,$70,$04,$2B ; $D09D7D
    db $E0,$FF,$FA,$1B,$DC,$FF,$7A,$7E,$00,$BF,$80,$5F,$C0,$2F,$E0,$17 ; $D09D8D
    db $D0,$0B,$E8,$0D,$04,$F9,$81,$1D,$73,$E0,$0E,$41,$38,$E8,$93,$0E ; $D09D9D
    db $F0,$FE,$F2,$1A,$3F,$03,$98,$15,$BF,$F4,$18,$02,$C7,$0C,$83,$00 ; $D09DAD
    db $1F,$FC,$7D,$55,$00,$0E,$01,$30,$0F,$4F,$30,$A0,$40,$F6,$18,$3F ; $D09DBD
    db $EB,$2E,$01,$F3,$38,$18,$C6,$67,$98,$96,$61,$4C,$82,$78,$86,$00 ; $D09DCD
    db $CF,$02,$01,$08,$07,$39,$C3,$3C,$1D,$07,$F8,$0F,$9E,$AC,$3F,$19 ; $D09DDD
    db $7F,$03,$80,$A3,$40,$03,$82,$03,$17,$00,$10,$03,$0F,$33,$08,$73 ; $D09DED
    db $18,$F3,$30,$38,$C7,$78,$87,$F8,$07,$02,$7B,$01,$19,$BF,$97,$13 ; $D09DFD
    db $0F,$A0,$FF,$54,$FF,$FA,$FF,$9D,$7F,$F6,$0F,$FF,$03,$17,$DF,$BD ; $D09E0D
    db $0A,$73,$FF,$F2,$02,$BD,$63,$15,$01,$FF,$A2,$19,$01,$03,$02,$FE ; $D09E1D
    db $07,$BF,$71,$01,$1A,$D5,$3F,$80,$C2,$80,$20,$50,$E0,$BC,$F0,$64 ; $D09E2D
    db $F0,$BC,$E0,$48,$E4,$28,$35,$5C,$20,$2B,$C0,$10,$E0,$04,$F8,$04 ; $D09E3D
    db $FB,$0B,$F7,$0B,$F7,$FF,$D5,$35,$0F,$AE,$FD,$FF,$FF,$14,$51,$7A ; $D09E4D
    db $C0,$3E,$7B,$03,$0F,$E7,$0D,$D0,$03,$FF,$7F,$EB,$BC,$FF,$3F,$13 ; $D09E5D
    db $3F,$07,$C3,$CB,$07,$3E,$08,$EB,$03,$99,$C7,$03,$21,$D4,$03,$3F ; $D09E6D
    db $F8,$F8,$0F,$F0,$F0,$C0,$C0,$0C,$5C,$39,$20,$1F,$00,$67,$18,$AF ; $D09E7D
    db $70,$5F,$E0,$75,$4B,$A8,$D4,$0F,$18,$3B,$00,$43,$D7,$7F,$0E,$72 ; $D09E8D
    db $09,$03,$A0,$3F,$E0,$E0,$80,$7F,$80,$14,$48,$B7,$F0,$00,$E8,$EA ; $D09E9D
    db $83,$7C,$F7,$28,$F8,$BF,$5F,$10,$EF,$AA,$83,$C1,$14,$5A,$1F,$3F ; $D09EAD
    db $0F,$0F,$0F,$07,$07,$11,$B4,$35,$0E,$05,$3A,$02,$04,$90,$6E,$80 ; $D09EBD
    db $03,$F0,$01,$74,$F8,$C7,$2E,$4C,$B9,$04,$03,$01,$82,$38,$01,$11 ; $D09ECD
    db $45,$02,$F1,$01,$BF,$7F,$7F,$03,$45,$01,$01,$C0,$08,$3F,$5E,$99 ; $D09EDD
    db $13,$EC,$0A,$06,$F4,$04,$F9,$31,$CE,$2A,$01,$40,$3F,$1F,$B6,$ED ; $D09EED
    db $F6,$F2,$D2,$F1,$7E,$8D,$29,$D2,$CB,$70,$7D,$0F,$18,$57,$7F,$22 ; $D09EFD
    db $1E,$53,$04,$9F,$F8,$F7,$E0,$1F,$80,$3F,$03,$FD,$0D,$FF,$D0,$67 ; $D09F0D
    db $8E,$BB,$35,$F0,$AC,$36,$74,$C0,$8F,$BB,$0F,$F0,$7F,$19,$BD,$FF ; $D09F1D
    db $C6,$20,$DF,$38,$C7,$4C,$B3,$66,$99,$F3,$0C,$FB,$86,$FC,$C7,$CE ; $D09F2D
    db $F1,$35,$A3,$C3,$4F,$FF,$06,$FF,$02,$FF,$83,$7D,$C5,$3B,$DA,$3F ; $D09F3D
    db $EC,$19,$7F,$02,$75,$0C,$F3,$06,$F9,$01,$AB,$29,$8C,$AF,$C0,$3F ; $D09F4D
    db $BD,$78,$3A,$FF,$7C,$AF,$ED,$FE,$09,$EF,$B9,$DE,$0F,$3F,$E3,$B7 ; $D09F5D
    db $60,$BD,$B0,$DF,$18,$EF,$3A,$F3,$D6,$78,$FD,$7F,$6F,$9A,$38,$DF ; $D09F6D
    db $BD,$31,$1F,$E0,$B9,$03,$FC,$2E,$7C,$B7,$19,$3F,$80,$02,$00,$F5 ; $D09F7D
    db $40,$7F,$10,$E0,$04,$2D,$CF,$0F,$55,$FE,$0A,$C9,$12,$46,$AA,$45 ; $D09F8D
    db $78,$00,$1A,$3F,$03,$00,$77,$5E,$A0,$EC,$3F,$02,$FE,$0B,$F8,$0C ; $D09F9D
    db $9F,$82,$FF,$05,$76,$A1,$8B,$41,$75,$00,$FE,$01,$F8,$07,$17,$4B ; $D09FAD
    db $F1,$18,$3F,$0D,$BB,$72,$1E,$F3,$1F,$C2,$FF,$81,$FF,$04,$FF,$2B ; $D09FBD
    db $FE,$DF,$55,$BF,$78,$07,$F0,$0F,$C0,$3F,$FB,$02,$F8,$85,$19,$3F ; $D09FCD
    db $FF,$B2,$C0,$14,$BF,$FA,$52,$FD,$81,$02,$F9,$D4,$BD,$FA,$5B,$FC ; $D09FDD
    db $55,$36,$EA,$F6,$95,$4F,$1E,$04,$FF,$07,$19,$3F,$17,$56,$E9,$B5 ; $D09FED
    db $1C,$EA,$F0,$EF,$B0,$AF,$50,$4F,$50,$0F,$48,$AF,$E8,$07,$F6,$0F ; $D09FFD
    db $F5,$F6,$0F,$61,$B0,$0D,$AF,$10,$EF,$B7,$01,$19,$8B,$18,$3F,$2A ; $D0A00D
    db $C7,$86,$49,$B7,$01,$FB,$06,$D9,$04,$C9,$04,$E9,$84,$E9,$03,$0C ; $D0A01D
    db $A8,$F7,$08,$E7,$01,$0C,$32,$E3,$1C,$01,$C3,$04,$01,$E0,$FF,$1E ; $D0A02D
    db $01,$C0,$01,$01,$FB,$09,$AE,$3F,$62,$78,$A1,$11,$12,$8A,$8B,$C7 ; $D0A03D
    db $83,$CF,$C0,$83,$03,$04,$01,$20,$5D,$BF,$6E,$9F,$77,$8F,$73,$8F ; $D0A04D
    db $78,$87,$01,$BC,$C3,$DF,$01,$18,$50,$BF,$BF,$BF,$57,$57,$0C,$AB ; $D0A05D
    db $AB,$A1,$A1,$33,$A8,$03,$07,$0F,$10,$03,$08,$40,$BA,$CB,$54,$E8 ; $D0A06D
    db $3D,$C4,$29,$20,$DF,$3D,$43,$18,$3F,$70,$D5,$FC,$FF,$FD,$FE,$FC ; $D0A07D
    db $7E,$7C,$FB,$FC,$AB,$54,$80,$1E,$01,$FE,$03,$0E,$FE,$02,$FF,$82 ; $D0A08D
    db $AB,$F7,$01,$EF,$1D,$3F,$71,$00,$83,$00,$C0,$80,$60,$C0,$B0,$60 ; $D0A09D
    db $1A,$3D,$02,$9F,$10,$CF,$0D,$B5,$C0,$3E,$7F,$80,$3F,$C0,$9F,$E0 ; $D0A0AD
    db $3C,$4F,$F0,$19,$3F,$F9,$2B,$00,$1D,$90,$6E,$A1,$50,$AD,$A8,$01 ; $D0A0BD
    db $57,$FC,$56,$06,$00,$E2,$00,$14,$A9,$7B,$FE,$01,$FD,$1A,$FF,$BA ; $D0A0CD
    db $C2,$18,$27,$30,$57,$82,$66,$80,$7E,$81,$C2,$81,$82,$11,$12,$11 ; $D0A0DD
    db $72,$40,$80,$18,$80,$9B,$01,$81,$03,$BD,$0F,$FD,$0F,$7D,$8F,$5D ; $D0A0ED
    db $8F,$33,$38,$49,$20,$1F,$E0,$01,$3F,$FA,$09,$98,$FF,$01,$FA,$66 ; $D0A0FD
    db $93,$65,$03,$90,$67,$81,$66,$11,$EE,$0E,$03,$33,$CC,$07,$E8,$FB ; $D0A10D
    db $F9,$FE,$F8,$AA,$21,$6D,$03,$51,$83,$EB,$13,$BE,$8C,$F3,$70,$63 ; $D0A11D
    db $90,$5B,$66,$F7,$35,$E3,$62,$F3,$33,$E7,$67,$F3,$73,$41,$7E,$80 ; $D0A12D
    db $01,$1C,$82,$41,$3C,$C0,$78,$80,$7C,$A4,$4A,$FE,$01,$FE,$13,$D8 ; $D0A13D
    db $BE,$1B,$80,$8C,$33,$5F,$79,$98,$01,$28,$7F,$C3,$01,$07,$30,$FA ; $D0A14D
    db $01,$FF,$80,$CA,$1C,$7F,$FF,$0F,$EC,$08,$FF,$5D,$FE,$B8,$42,$75 ; $D0A15D
    db $F5,$EA,$6A,$01,$C1,$EC,$6D,$78,$87,$D9,$02,$50,$E1,$0A,$FF,$15 ; $D0A16D
    db $FF,$3E,$FF,$1E,$FF,$38,$FF,$58,$E7,$FA,$18,$3F,$E3,$F7,$C7,$B7 ; $D0A17D
    db $C7,$DE,$87,$45,$9E,$E8,$1E,$D6,$2C,$8B,$0C,$D1,$0C,$11,$F5,$03 ; $D0A18D
    db $01,$30,$CF,$07,$01,$21,$DE,$71,$9E,$85,$18,$3F,$40,$80,$C0,$73 ; $D0A19D
    db $6B,$2E,$03,$AF,$C1,$00,$00,$C0,$D0,$02,$01,$04,$3C,$3F,$FF,$04 ; $D0A1AD
    db $01,$3E,$7F,$FE,$08,$9E,$BD,$02,$00,$1F,$0F,$00,$7F,$0C,$BC,$1F ; $D0A1BD
    db $01,$00,$F0,$7F,$F0,$06,$7C,$85,$08,$2F,$FF,$EB,$0F,$71,$C0,$3F ; $D0A1CD
    db $12,$7D,$3F,$0B,$1E,$38,$05,$3F,$3B,$F0,$00,$C7,$85,$57,$9E,$06 ; $D0A1DD
    db $23,$A8,$03,$3F,$3F,$0F,$0F,$06,$AA,$7D,$F0,$8B,$9F,$8F,$95,$7A ; $D0A1ED
    db $7D,$93,$6D,$06,$56,$2C,$7E,$E4,$AB,$65,$4C,$63,$3D,$12,$4D,$C2 ; $D0A1FD
    db $C3,$01,$D0,$01,$80,$11,$01,$10,$18,$00,$98,$00,$48,$FF,$15,$37 ; $D0A20D
    db $01,$00,$D0,$A9,$5D,$70,$A2,$7B,$94,$46,$A8,$FB,$B4,$64,$39,$6D ; $D0A21D
    db $36,$CC,$C0,$70,$06,$00,$0C,$00,$08,$75,$11,$C0,$57,$82,$04,$81 ; $D0A22D
    db $08,$00,$10,$FE,$08,$3E,$ED,$09,$40,$3E,$07,$D1,$31,$4C,$CF,$EF ; $D0A23D
    db $0E,$30,$BF,$C0,$DF,$B4,$F3,$D4,$2B,$1D,$60,$00,$8E,$E8,$94,$07 ; $D0A24D
    db $C0,$1F,$07,$00,$58,$00,$40,$00,$8F,$04,$7E,$20,$20,$0C,$F8,$C5 ; $D0A25D
    db $53,$FC,$5E,$77,$5F,$78,$E5,$C9,$B8,$11,$7F,$DF,$E0,$9D,$0F,$A0 ; $D0A26D
    db $85,$95,$FB,$00,$FE,$67,$9D,$0F,$8B,$18,$BE,$00,$E6,$8D,$60,$70 ; $D0A27D
    db $8F,$F8,$07,$FE,$01,$C3,$3C,$78,$87,$F3,$0F,$FD,$03,$9F,$7F,$FD ; $D0A28D
    db $23,$C4,$3D,$81,$BB,$00,$D7,$00,$FF,$10,$B7,$B0,$00,$60,$63,$37 ; $D0A29D
    db $00,$F1,$C4,$7A,$F8,$FB,$01,$82,$7F,$07,$FA,$C8,$E7,$9F,$C7,$73 ; $D0A2AD
    db $07,$5A,$FD,$06,$03,$01,$86,$01,$CA,$05,$F0,$FF,$03,$BF,$83,$49 ; $D0A2BD
    db $3F,$3F,$1F,$1F,$D7,$08,$3F,$5F,$67,$9C,$DB,$A4,$89,$76,$56,$A9 ; $D0A2CD
    db $95,$7A,$28,$D7,$5C,$B3,$91,$CE,$BD,$7B,$DD,$7B,$65,$FB,$CB,$F7 ; $D0A2DD
    db $9F,$E7,$14,$EF,$3C,$CF,$E8,$1F,$1A,$F0,$BF,$10,$EF,$B8,$42,$A8 ; $D0A2ED
    db $57,$6C,$93,$F2,$2D,$21,$DE,$B1,$CE,$47,$BA,$23,$E1,$EF,$FF,$CF ; $D0A2FD
    db $FF,$BF,$DF,$5F,$BF,$FD,$3F,$BF,$7D,$E0,$18,$3F,$1B,$F5,$1F,$EA ; $D0A30D
    db $3B,$0F,$F4,$FB,$6F,$FA,$A0,$0E,$81,$7E,$75,$C0,$E2,$ED,$AF,$39 ; $D0A31D
    db $F8,$0F,$FF,$C3,$80,$09,$7E,$12,$FF,$AB,$DD,$7F,$F4,$18,$BF,$60 ; $D0A32D
    db $DF,$03,$6A,$9F,$3E,$70,$BF,$06,$7F,$6D,$1A,$E3,$BF,$EC,$BF,$DA ; $D0A33D
    db $BA,$E7,$40,$EA,$BE,$3E,$10,$0D,$FE,$AF,$18,$3F,$75,$A8,$18,$A9 ; $D0A34D
    db $FF,$7C,$83,$00,$C4,$3F,$0E,$E9,$DD,$33,$39,$E6,$97,$20,$0D,$7C ; $D0A35D
    db $FF,$EC,$F3,$5A,$07,$E7,$F2,$CF,$24,$DF,$FC,$19,$7F,$FA,$09,$03 ; $D0A36D
    db $FC,$45,$B9,$C2,$3A,$07,$08,$C8,$EF,$91,$EF,$FE,$73,$03,$01,$41 ; $D0A37D
    db $FE,$A2,$DD,$57,$B8,$37,$5F,$89,$F2,$18,$3F,$46,$E3,$A3,$55,$13 ; $D0A38D
    db $5E,$5B,$B3,$B9,$E7,$FC,$AF,$F6,$43,$F7,$01,$F7,$10,$80,$43,$EF ; $D0A39D
    db $48,$A7,$A8,$47,$EC,$1C,$03,$EE,$01,$0A,$FF,$19,$0B,$FF,$0A,$80 ; $D0A3AD
    db $9E,$04,$90,$DC,$E0,$68,$C4,$C0,$94,$C4,$32,$0B,$30,$84,$38,$39 ; $D0A3BD
    db $C7,$30,$CF,$77,$88,$67,$98,$47,$B8,$01,$3A,$43,$BC,$87,$49,$FF ; $D0A3CD
    db $BE,$04,$01,$0A,$A0,$60,$63,$10,$12,$08,$18,$07,$60,$01,$FC,$01 ; $D0A3DD
    db $AC,$79,$48,$70,$92,$8E,$00,$BE,$C1,$1E,$E1,$FE,$01,$03,$00,$53 ; $D0A3ED
    db $E9,$03,$0F,$F2,$0D,$E0,$1F,$18,$A9,$FF,$85,$40,$73,$80,$74,$1A ; $D0A3FD
    db $E0,$11,$EC,$19,$E6,$AC,$03,$F4,$01,$78,$03,$BC,$03,$8C,$03,$92 ; $D0A40D
    db $0D,$81,$1E,$90,$0F,$C3,$80,$1D,$E2,$0E,$FB,$19,$FF,$2B,$80,$EA ; $D0A41D
    db $0B,$00,$E7,$18,$73,$0C,$B9,$27,$06,$0C,$C0,$BF,$08,$F7,$E2,$1B ; $D0A42D
    db $1D,$61,$9E,$C9,$EE,$1A,$BF,$E3,$3F,$03,$F8,$01,$A0,$30,$BE,$01 ; $D0A43D
    db $C3,$00,$23,$3A,$FC,$18,$85,$F5,$05,$03,$12,$A0,$7F,$42,$BF,$D7 ; $D0A44D
    db $18,$3F,$1D,$FC,$FE,$04,$05,$FD,$04,$FC,$00,$F8,$04,$71,$82,$7A ; $D0A45D
    db $F8,$CA,$2D,$20,$D8,$B3,$F8,$5E,$11,$F9,$0E,$F9,$C9,$C1,$18,$F2 ; $D0A46D
    db $E2,$18,$3F,$D1,$24,$E3,$F1,$64,$E1,$34,$C3,$14,$C2,$05,$23,$24 ; $D0A47D
    db $22,$65,$A2,$49,$CB,$9F,$C0,$01,$DF,$EB,$DF,$FB,$60,$1F,$01,$3B ; $D0A48D
    db $9F,$97,$3F,$3D,$3F,$C0,$02,$01,$DD,$C2,$FA,$09,$80,$81,$01,$E6 ; $D0A49D
    db $23,$CC,$21,$CE,$03,$18,$CC,$63,$9C,$03,$67,$98,$25,$43,$8C,$EA ; $D0A4AD
    db $E5,$F0,$A6,$45,$1F,$03,$18,$40,$3E,$E6,$67,$E3,$63,$E3,$03,$C6 ; $D0A4BD
    db $C7,$00,$03,$CE,$CF,$E6,$E7,$CD,$CE,$78,$6C,$80,$CB,$03,$F8,$E4 ; $D0A4CD
    db $03,$71,$95,$F4,$1A,$5D,$7E,$62,$DF,$18,$D7,$18,$C7,$19,$EF,$32 ; $D0A4DD
    db $5E,$A5,$BC,$CB,$F8,$97,$D0,$0F,$30,$07,$31,$07,$23,$0E,$07,$1C ; $D0A4ED
    db $0F,$78,$1F,$70,$3F,$60,$5F,$E0,$0E,$C4,$F0,$0F,$E2,$1F,$1F,$BC ; $D0A4FD
    db $0B,$DB,$A0,$96,$A7,$18,$C5,$B8,$84,$58,$07,$AA,$06,$93,$04,$AA ; $D0A50D
    db $00,$95,$00,$23,$BC,$C3,$E4,$03,$01,$74,$D7,$61,$B9,$03,$EE,$00 ; $D0A51D
    db $DC,$F4,$19,$5C,$BF,$B0,$1D,$48,$85,$18,$1D,$B8,$27,$08,$16,$97 ; $D0A52D
    db $2B,$C4,$41,$30,$03,$00,$61,$9E,$E1,$1E,$01,$F0,$1F,$48,$0E,$3F ; $D0A53D
    db $4E,$30,$FE,$A7,$07,$D1,$03,$39,$4B,$10,$FC,$FE,$04,$3B,$01,$EA ; $D0A54D
    db $5A,$36,$C7,$C1,$B4,$FB,$02,$20,$BF,$40,$57,$A8,$7F,$8D,$FC,$01 ; $D0A55D
    db $67,$38,$1C,$F8,$20,$E0,$10,$7F,$80,$02,$8E,$25,$1F,$F5,$95,$7F ; $D0A56D
    db $E3,$03,$56,$FC,$03,$00,$E1,$F1,$0E,$E3,$1C,$C7,$38,$8F,$16,$71 ; $D0A57D
    db $1F,$E3,$38,$5B,$03,$29,$0E,$1F,$00,$1C,$00,$0E,$FF,$35,$02,$17 ; $D0A58D
    db $01,$07,$F8,$0D,$1F,$E0,$7F,$83,$FF,$1F,$F8,$78,$E0,$E1,$80,$8F ; $D0A59D
    db $5A,$01,$5F,$7C,$00,$E0,$DE,$3F,$3F,$1F,$0E,$FE,$CF,$07,$01,$EA ; $D0A5AD
    db $55,$1B,$54,$28,$D5,$2A,$19,$0E,$15,$FF,$E2,$AB,$EF,$05,$25,$18 ; $D0A5BD
    db $3A,$3F,$00,$8B,$7F,$84,$E0,$80,$F0,$E0,$38,$20,$18,$94,$08,$EE ; $D0A5CD
    db $04,$F7,$50,$80,$60,$EE,$BB,$83,$D8,$B1,$85,$12,$01,$EC,$35,$74 ; $D0A5DD
    db $83,$03,$03,$8E,$C7,$85,$AA,$65,$E0,$2B,$19,$FC,$E2,$BF,$6D,$12 ; $D0A5ED
    db $FB,$E5,$87,$14,$AC,$8F,$5B,$FE,$34,$CF,$28,$EF,$36,$5F,$9D,$88 ; $D0A5FD
    db $40,$08,$40,$42,$01,$20,$B6,$2D,$31,$35,$1F,$1F,$2F,$1F,$18,$D0 ; $D0A60D
    db $FF,$CB,$80,$A5,$D3,$04,$D1,$08,$A5,$E3,$82,$03,$8D,$AA,$FF,$55 ; $D0A61D
    db $32,$BE,$68,$24,$16,$C3,$10,$CF,$A8,$AF,$04,$04,$08,$7A,$08,$14 ; $D0A62D
    db $3F,$E3,$15,$FE,$55,$55,$28,$FC,$AB,$AA,$AA,$03,$FE,$01,$FE,$A9 ; $D0A63D
    db $FD,$54,$9D,$11,$AA,$6A,$83,$54,$BB,$3D,$0F,$01,$18,$5C,$7F,$63 ; $D0A64D
    db $56,$AF,$8C,$FC,$DF,$E4,$27,$3C,$B5,$3D,$D1,$1D,$9D,$53,$15,$DB ; $D0A65D
    db $9C,$90,$E6,$41,$00,$80,$02,$C0,$22,$C0,$20,$C0,$28,$7B,$C0,$18 ; $D0A66D
    db $3F,$1D,$60,$B3,$CC,$D0,$02,$01,$7E,$81,$61,$46,$9F,$4F,$76,$7D ; $D0A67D
    db $B7,$8A,$C6,$34,$C7,$74,$FF,$7A,$C5,$18,$00,$E7,$E7,$F8,$DE,$79 ; $D0A68D
    db $EE,$3A,$F4,$1E,$7C,$8D,$B7,$CE,$5A,$E7,$AF,$73,$F0,$0F,$F9,$26 ; $D0A69D
    db $FB,$14,$FF,$08,$1A,$D9,$2C,$F7,$8D,$79,$1A,$7B,$37,$7D,$D1,$0C ; $D0A6AD
    db $05,$75,$3E,$B1,$26,$5B,$5D,$7F,$B9,$CE,$72,$8B,$74,$97,$E5,$2A ; $D0A6BD
    db $4B,$EC,$F5,$0E,$C7,$3C,$DF,$20,$8E,$71,$0E,$F1,$1C,$E3,$B8,$C7 ; $D0A6CD
    db $78,$87,$FB,$18,$DD,$FF,$7D,$CE,$B3,$A3,$5E,$4B,$BC,$F4,$8F,$F2 ; $D0A6DD
    db $1D,$4F,$E8,$8C,$53,$91,$9F,$FA,$7D,$66,$F9,$6C,$F3,$AD,$73,$DB ; $D0A6ED
    db $E7,$7F,$87,$74,$8F,$F1,$0E,$18,$3F,$1E,$9D,$73,$60,$9F,$70,$69 ; $D0A6FD
    db $A7,$48,$E7,$A4,$15,$93,$36,$19,$40,$69,$FF,$BF,$FF,$01,$9F,$FF ; $D0A70D
    db $DF,$BF,$CF,$3F,$C6,$FE,$19,$80,$BF,$28,$DF,$10,$FF,$B0,$4F,$88 ; $D0A71D
    db $60,$77,$01,$0C,$F3,$02,$FD,$1D,$02,$FE,$C0,$F5,$8B,$E0,$55,$B9 ; $D0A72D
    db $78,$C3,$01,$FE,$FD,$E8,$1A,$7F,$97,$9D,$ED,$D8,$F7,$FA,$EF,$7F ; $D0A73D
    db $3E,$F3,$C0,$3F,$BF,$20,$21,$E0,$BF,$13,$ED,$0E,$FB,$0A,$98,$2B ; $D0A74D
    db $03,$FE,$1F,$3F,$F0,$18,$27,$FA,$FF,$F8,$13,$FF,$09,$FE,$00,$3A ; $D0A75D
    db $E5,$F1,$86,$EB,$0C,$A2,$3C,$97,$B2,$3F,$07,$01,$0F,$F0,$3F,$C0 ; $D0A76D
    db $8B,$18,$3F,$08,$FF,$8C,$08,$FB,$00,$F9,$42,$BE,$A0,$57,$E1,$11 ; $D0A77D
    db $40,$1E,$A0,$1B,$E7,$00,$1D,$01,$E1,$0E,$39,$EE,$3F,$05,$E7,$19 ; $D0A78D
    db $E0,$BF,$8A,$10,$82,$44,$00,$75,$41,$83,$AA,$78,$01,$FA,$BD,$B5 ; $D0A79D
    db $60,$FC,$76,$BE,$01,$BF,$00,$80,$01,$3E,$01,$02,$EF,$FD,$87,$18 ; $D0A7AD
    db $CB,$3F,$8C,$43,$8E,$8A,$51,$02,$14,$30,$05,$44,$01,$9D,$00,$2F ; $D0A7BD
    db $C0,$87,$70,$E0,$1F,$41,$30,$EE,$01,$92,$C6,$38,$01,$7F,$FE,$00 ; $D0A7CD
    db $FC,$1C,$BF,$5C,$BC,$F0,$01,$70,$8F,$56,$89,$02,$85,$AC,$13,$39 ; $D0A7DD
    db $44,$B0,$09,$A3,$5C,$06,$F8,$62,$9C,$92,$6C,$28,$70,$61,$97,$01 ; $D0A7ED
    db $44,$83,$3C,$84,$83,$18,$3F,$47,$18,$20,$02,$C0,$41,$91,$2F,$B9 ; $D0A7FD
    db $FA,$B3,$4C,$04,$C1,$6C,$83,$C8,$17,$DD,$22,$3F,$00,$50,$20,$81 ; $D0A80D
    db $70,$12,$E1,$1C,$E3,$38,$C7,$70,$8F,$18,$3F,$E5,$74,$94,$1F,$A0 ; $D0A81D
    db $15,$EA,$80,$5F,$00,$AA,$C0,$20,$80,$A0,$32,$C0,$34,$CB,$7F,$40 ; $D0A82D
    db $D7,$9F,$00,$80,$1F,$C0,$5F,$80,$DF,$00,$E7,$78,$1A,$18,$3F,$79 ; $D0A83D
    db $16,$B9,$E1,$BA,$87,$72,$AE,$20,$CF,$12,$B4,$10,$24,$03,$17,$03 ; $D0A84D
    db $0E,$49,$F2,$A8,$73,$E9,$13,$E8,$13,$F8,$03,$01,$FB,$00,$F3,$F8 ; $D0A85D
    db $19,$3F,$62,$C9,$5C,$C2,$A0,$69,$06,$29,$04,$8B,$C6,$49,$44,$CB ; $D0A86D
    db $44,$93,$C4,$93,$17,$3F,$17,$BF,$D7,$BF,$77,$01,$3F,$31,$2F,$7F ; $D0A87D
    db $01,$7F,$80,$67,$01,$DC,$0E,$8F,$47,$99,$03,$43,$9C,$07,$99,$C7 ; $D0A88D
    db $38,$00,$03,$CF,$31,$87,$19,$8F,$33,$E1,$0E,$FE,$E0,$FF,$E1,$9C ; $D0A89D
    db $05,$03,$C1,$63,$FE,$03,$C3,$FC,$FF,$18,$7F,$71,$C7,$C6,$CD,$CE ; $D0A8AD
    db $8D,$8E,$CC,$CE,$9C,$9E,$CE,$CC,$9A,$9C,$8E,$8C,$8F,$BB,$B3,$F0 ; $D0A8BD
    db $84,$12,$E1,$D6,$03,$ED,$25,$9E,$01,$08,$3F,$00,$A0,$18,$47,$32 ; $D0A8CD
    db $88,$47,$08,$0F,$E3,$01,$30,$87,$A4,$7E,$BF,$51,$65,$28,$BE,$81 ; $D0A8DD
    db $B4,$81,$7F,$F4,$19,$62,$00,$27,$67,$28,$E1,$CE,$04,$F2,$06,$E8 ; $D0A8ED
    db $92,$21,$01,$E6,$01,$4C,$F8,$DD,$19,$00,$0D,$F0,$0B,$FC,$13,$FC ; $D0A8FD
    db $8F,$70,$1F,$0B,$F0,$8B,$19,$45,$40,$C7,$06,$01,$07,$08,$1F,$20 ; $D0A90D
    db $5F,$00,$9E,$01,$1F,$C0,$1F,$60,$1F,$E0,$38,$3D,$F9,$B5,$C1,$0E ; $D0A91D
    db $30,$90,$60,$E0,$EF,$6B,$7C,$76,$F8,$00,$91,$D2,$F0,$DD,$76,$E3 ; $D0A92D
    db $01,$07,$AE,$59,$0F,$A2,$01,$1F,$97,$01,$19,$2F,$D0,$96,$69,$CA ; $D0A93D
    db $35,$A4,$DB,$D0,$AF,$FA,$45,$F4,$6B,$FE,$31,$74,$A1,$20,$00,$07 ; $D0A94D
    db $50,$00,$BA,$00,$14,$7F,$81,$FA,$18,$FF,$3E,$2E,$C6,$3C,$7C,$CC ; $D0A95D
    db $78,$89,$78,$99,$70,$93,$F0,$33,$F0,$37,$E0,$27,$39,$00,$33,$00 ; $D0A96D
    db $77,$00,$67,$00,$6F,$00,$CF,$01,$7F,$DF,$1A,$C5,$3F,$7F,$03,$FF ; $D0A97D
    db $C2,$0E,$FE,$1C,$FC,$39,$F8,$73,$F0,$67,$E0,$CF,$C0,$5A,$6D,$28 ; $D0A98D
    db $13,$8A,$3F,$F5,$0B,$DF,$4F,$09,$E0,$60,$D5,$D5,$7D,$00,$05,$07 ; $D0A99D
    db $4F,$D5,$2A,$D9,$18,$EF,$E1,$04,$01,$C2,$F9,$72,$70,$7F,$19,$1C ; $D0A9AD
    db $8D,$0F,$E6,$06,$F2,$03,$F9,$01,$FD,$E9,$B4,$00,$7C,$80,$1F,$E0 ; $D0A9BD
    db $0E,$F0,$07,$F8,$23,$03,$FC,$79,$F0,$19,$BF,$00,$58,$66,$80,$80 ; $D0A9CD
    db $75,$40,$07,$08,$40,$00,$F5,$01,$EF,$80,$34,$18,$79,$37,$04,$00 ; $D0A9DD
    db $3F,$D3,$00,$13,$2E,$00,$C0,$19,$01,$CF,$88,$BB,$5F,$71,$20,$1F ; $D0A9ED
    db $68,$66,$47,$3F,$38,$11,$20,$50,$0B,$1F,$3F,$9F,$3F,$1F,$E0,$01 ; $D0A9FD
    db $18,$3F,$5F,$C2,$05,$7F,$30,$7F,$9E,$4B,$03,$00,$F7,$10,$8F,$07 ; $D0AA0D
    db $68,$00,$E6,$07,$DE,$02,$70,$0F,$08,$F8,$0C,$8F,$6F,$08,$77,$3F ; $D0AA1D
    db $4B,$34,$FB,$00,$84,$FD,$04,$18,$F4,$37,$30,$71,$99,$BD,$72,$FC ; $D0AA2D
    db $FF,$30,$01,$39,$0B,$FC,$C8,$CF,$1A,$FC,$1A,$0B,$3F,$1A,$DE,$5B ; $D0AA3D
    db $9E,$9C,$8F,$1C,$2F,$3D,$ED,$FE,$1D,$1E,$87,$FE,$2B,$3E,$29,$C0 ; $D0AA4D
    db $2D,$C0,$2C,$C0,$4C,$80,$0E,$00,$6E,$03,$1E,$08,$4E,$84,$18,$3F ; $D0AA5D
    db $B8,$77,$B1,$CE,$7D,$83,$7F,$C0,$DF,$E0,$E0,$1F,$A2,$3F,$D1,$F7 ; $D0AA6D
    db $40,$4C,$B5,$7C,$FB,$E7,$00,$07,$5F,$01,$5F,$00,$3F,$FE,$19,$FF ; $D0AA7D
    db $E3,$C5,$3B,$B3,$DD,$74,$FF,$FA,$3F,$79,$9F,$1D,$EF,$44,$FF,$D6 ; $D0AA8D
    db $3F,$DE,$77,$86,$7B,$12,$C0,$06,$06,$FF,$C2,$FF,$1E,$33,$FF,$09 ; $D0AA9D
    db $18,$3F,$B8,$C5,$9B,$F5,$B6,$EB,$96,$EE,$CE,$DF,$41,$DA,$41,$F6 ; $D0AAAD
    db $E0,$EE,$E0,$FB,$8E,$89,$E7,$E8,$C4,$E6,$01,$EE,$EA,$09,$3D,$FC ; $D0AABD
    db $00,$7B,$F7,$02,$00,$1F,$1F,$29,$C7,$FA,$09,$0B,$3F,$AA,$34,$9D ; $D0AACD
    db $5D,$78,$BF,$F1,$77,$C0,$6F,$81,$5F,$30,$CF,$78,$87,$EB,$14,$DE ; $D0AADD
    db $20,$BC,$40,$78,$80,$70,$80,$60,$6F,$AB,$18,$ED,$7F,$D3,$3B,$ED ; $D0AAED
    db $2B,$E4,$95,$F3,$8E,$F9,$87,$BC,$87,$9E,$92,$8E,$09,$87,$63,$1E ; $D0AAFD
    db $60,$1F,$71,$0E,$7A,$07,$7D,$03,$7E,$01,$3C,$01,$7F,$19,$3F,$02 ; $D0AB0D
    db $EC,$A5,$A0,$00,$5F,$C1,$BF,$61,$DE,$F0,$0F,$69,$67,$B6,$82,$FD ; $D0AB1D
    db $52,$B4,$DF,$C0,$03,$7E,$7E,$BF,$9E,$FF,$0F,$6F,$DF,$58,$E8,$07 ; $D0AB2D
    db $3D,$3E,$F8,$08,$3F,$71,$1F,$CF,$DE,$B0,$7F,$8F,$50,$67,$3B,$E4 ; $D0AB3D
    db $79,$82,$EE,$13,$5F,$E0,$D7,$70,$0F,$D0,$6F,$AF,$70,$D7,$38,$57 ; $D0AB4D
    db $38,$5B,$3C,$0B,$1C,$07,$3E,$BF,$1F,$0A,$03,$0E,$F9,$01,$30,$3F ; $D0AB5D
    db $18,$24,$06,$F8,$38,$06,$07,$00,$69,$FF,$E3,$1F,$01,$FE,$3F,$C0 ; $D0AB6D
    db $94,$3A,$91,$F8,$1E,$E5,$1F,$08,$BF,$FB,$0A,$0B,$CF,$FC,$0A,$87 ; $D0AB7D
    db $F6,$75,$81,$0E,$0A,$CA,$FB,$19,$FB,$8E,$8F,$ED,$1D,$E0,$FD,$68 ; $D0AB8D
    db $17,$F5,$00,$04,$E2,$01,$70,$39,$3F,$F1,$17,$FF,$03,$17,$74,$A5 ; $D0AB9D
    db $AF,$69,$7E,$D1,$DE,$D2,$EC,$36,$A8,$DC,$81,$1A,$C1,$EF,$00,$5D ; $D0ABAD
    db $02,$99,$06,$31,$0E,$21,$1E,$61,$1E,$40,$3E,$C7,$01,$FE,$FF,$BC ; $D0ABBD
    db $06,$01,$09,$7F,$FE,$03,$02,$ED,$00,$C5,$02,$C4,$3A,$05,$01,$81 ; $D0ABCD
    db $6F,$0D,$F0,$01,$D6,$80,$BB,$3A,$00,$3B,$00,$13,$00,$09,$16,$06 ; $D0ABDD
    db $08,$07,$F7,$0F,$EA,$12,$4F,$8D,$B9,$F0,$3C,$28,$91,$02,$D4,$04 ; $D0ABED
    db $72,$0F,$90,$03,$E6,$43,$3A,$C3,$09,$8C,$73,$72,$0C,$23,$0C,$8D ; $D0ABFD
    db $02,$E0,$FF,$7C,$80,$3C,$1C,$E0,$18,$3F,$45,$5C,$30,$63,$47,$A8 ; $D0AC0D
    db $8E,$50,$9C,$63,$B4,$11,$A0,$A6,$20,$AF,$03,$8D,$8C,$03,$90,$1F ; $D0AC1D
    db $3E,$00,$76,$08,$07,$65,$18,$6D,$10,$7F,$FD,$19,$3F,$91,$73,$0E ; $D0AC2D
    db $08,$64,$00,$81,$38,$C6,$79,$24,$F1,$26,$E3,$D8,$E3,$CF,$F1,$0E ; $D0AC3D
    db $A1,$1E,$62,$1C,$7D,$00,$FB,$E3,$01,$F7,$9E,$01,$18,$3F,$5C,$48 ; $D0AC4D
    db $BB,$16,$40,$A6,$10,$6D,$80,$6F,$C0,$19,$20,$10,$C8,$10,$80,$62 ; $D0AC5D
    db $C1,$3A,$83,$78,$0A,$A0,$2D,$16,$E0,$29,$C6,$E9,$1E,$06,$D3,$0C ; $D0AC6D
    db $18,$3F,$3B,$02,$0D,$B7,$4A,$0E,$AE,$00,$DD,$00,$FC,$C1,$1F,$A1 ; $D0AC7D
    db $5D,$40,$9F,$F3,$F8,$F3,$53,$00,$23,$EE,$00,$05,$E0,$C0,$A3,$C0 ; $D0AC8D
    db $E0,$01,$F4,$02,$39,$BF,$40,$E6,$08,$3F,$84,$62,$00,$53,$89,$96 ; $D0AC9D
    db $88,$17,$09,$96,$09,$38,$26,$89,$01,$2F,$01,$7F,$AF,$7F,$EF,$7F ; $D0ACAD
    db $6F,$FF,$94,$01,$DF,$01,$FF,$18,$81,$3E,$87,$39,$0F,$33,$8F,$71 ; $D0ACBD
    db $8C,$03,$9F,$63,$03,$1F,$0E,$67,$0F,$73,$C1,$FB,$F3,$81,$86,$03 ; $D0ACCD
    db $83,$FC,$03,$1F,$87,$F8,$83,$19,$F0,$FF,$9A,$9C,$1B,$1C,$0C,$9A ; $D0ACDD
    db $9D,$38,$3D,$07,$35,$03,$38,$1D,$1A,$34,$3B,$E1,$BE,$F5,$E2,$18 ; $D0ACED
    db $01,$C0,$03,$03,$C1,$02,$11,$E0,$03,$C0,$CF,$15,$77,$8D,$DE,$02 ; $D0ACFD
    db $01,$08,$3F,$B9,$40,$20,$9E,$24,$3F,$0B,$F0,$01,$FD,$03,$E7,$C4 ; $D0AD0D
    db $21,$20,$D7,$B7,$47,$81,$7F,$3C,$C3,$EB,$1B,$FC,$03,$9B,$7C,$C4 ; $D0AD1D
    db $38,$18,$A0,$F2,$18,$3F,$58,$E7,$03,$A0,$74,$60,$7A,$30,$7C,$38 ; $D0AD2D
    db $FE,$9C,$37,$0E,$33,$0F,$99,$BD,$C0,$4F,$80,$87,$00,$83,$00,$81 ; $D0AD3D
    db $5D,$1D,$7E,$60,$19,$BF,$0E,$9F,$20,$BF,$40,$A0,$68,$00,$3F,$EA ; $D0AD4D
    db $41,$B5,$3F,$80,$3F,$C0,$E0,$FD,$01,$59,$8E,$F3,$8E,$00,$DC,$04 ; $D0AD5D
    db $10,$01,$88,$5D,$F2,$04,$01,$FE,$E3,$19,$FF,$0C,$F7,$0E,$FF,$07 ; $D0AD6D
    db $FF,$03,$FA,$06,$FB,$07,$FE,$00,$06,$5C,$BA,$BF,$00,$60,$7D,$05 ; $D0AD7D
    db $03,$FF,$19,$AE,$BF,$E0,$3D,$27,$E0,$2F,$61,$AF,$E1,$2F,$A1,$6F ; $D0AD8D
    db $F1,$3F,$B1,$F7,$F9,$3B,$DF,$F7,$F3,$5F,$1D,$03,$9F,$F1,$FD,$0F ; $D0AD9D
    db $00,$C7,$E0,$19,$3F,$CF,$C0,$9F,$80,$C7,$01,$BF,$80,$73,$F5,$CD ; $D0ADAD
    db $03,$09,$1C,$43,$8D,$01,$4D,$1A,$03,$FF,$18,$FF,$FD,$08,$1E,$FB ; $D0ADBD
    db $17,$2F,$D1,$08,$1E,$EB,$85,$FE,$8E,$05,$E0,$3A,$B1,$7F,$7C,$B3 ; $D0ADCD
    db $28,$3F,$00,$07,$C0,$C0,$A0,$40,$60,$52,$30,$60,$1C,$80,$60,$C0 ; $D0ADDD
    db $07,$8F,$BA,$D9,$00,$89,$0C,$34,$01,$0C,$BB,$37,$E4,$02,$00,$C0 ; $D0ADED
    db $A9,$86,$F5,$01,$01,$CB,$37,$40,$7F,$4C,$67,$08,$77,$08,$4E,$78 ; $D0ADFD
    db $38,$40,$3F,$40,$03,$44,$3B,$77,$33,$77,$1D,$00,$67,$77,$E7,$B4 ; $D0AE0D
    db $5C,$02,$10,$6C,$FF,$04,$FF,$FB,$0C,$D7,$FF,$6F,$1E,$60,$37,$42 ; $D0AE1D
    db $77,$06,$BF,$8D,$B6,$0A,$39,$21,$53,$DC,$AF,$04,$9F,$F3,$3B,$01 ; $D0AE2D
    db $01,$36,$FF,$75,$BE,$B2,$7C,$8F,$94,$71,$38,$18,$E8,$FF,$97,$2E ; $D0AE3D
    db $F1,$30,$50,$A0,$C1,$02,$52,$23,$8B,$6E,$61,$10,$BF,$7F,$C0,$FF ; $D0AE4D
    db $8E,$FF,$1E,$FF,$3C,$FF,$84,$78,$1D,$7F,$7F,$19,$D7,$7F,$36,$4C ; $D0AE5D
    db $3F,$2A,$3F,$15,$3F,$43,$7F,$45,$BF,$C3,$3F,$81,$7F,$E2,$FF,$5F ; $D0AE6D
    db $88,$5F,$94,$5F,$8A,$9F,$1C,$3F,$1A,$3F,$1C,$7F,$48,$1D,$F2,$18 ; $D0AE7D
    db $3F,$D9,$E3,$7E,$9E,$41,$DF,$00,$DB,$3C,$CF,$10,$EB,$2C,$4F,$90 ; $D0AE8D
    db $5F,$A0,$81,$DC,$BA,$79,$AF,$1D,$FD,$6F,$57,$45,$E1,$D9,$0B,$3F ; $D0AE9D
    db $E2,$08,$00,$FA,$0F,$E3,$7F,$87,$9F,$63,$CF,$31,$E6,$19,$F3,$0C ; $D0AEAD
    db $3D,$C6,$9A,$67,$FF,$05,$F9,$02,$9B,$F7,$F4,$1A,$00,$BE,$00,$70 ; $D0AEBD
    db $F5,$30,$FB,$33,$FC,$30,$98,$F8,$01,$D8,$FC,$58,$00,$FC,$EC,$7C ; $D0AECD
    db $FA,$80,$F4,$C0,$F8,$CC,$01,$60,$01,$FC,$70,$20,$01,$10,$0F,$E7 ; $D0AEDD
    db $00,$6E,$8B,$29,$00,$03,$00,$FD,$09,$BE,$EA,$DC,$21,$3C,$7F,$80 ; $D0AEED
    db $BF,$42,$1D,$66,$4A,$31,$33,$09,$53,$29,$02,$19,$04,$A5,$01,$76 ; $D0AEFD
    db $B4,$29,$50,$70,$F0,$01,$C0,$FF,$FC,$09,$BF,$02,$B8,$F7,$C5,$0F ; $D0AF0D
    db $E3,$F5,$0C,$28,$DB,$15,$F7,$E3,$E7,$DA,$DE,$1C,$1C,$3C,$5C,$7F ; $D0AF1D
    db $02,$37,$07,$08,$00,$18,$00,$31,$5F,$4B,$8F,$3B,$F0,$14,$AD,$BF ; $D0AF2D
    db $C6,$79,$87,$D3,$2F,$51,$F9,$A2,$F2,$E5,$E5,$DB,$D8,$2E,$28,$4C ; $D0AF3D
    db $59,$B8,$13,$00,$00,$0D,$00,$1B,$00,$34,$03,$F1,$1F,$06,$EA,$04 ; $D0AF4D
    db $18,$5B,$FF,$8E,$AD,$DD,$23,$E3,$AC,$AF,$C3,$DF,$B8,$B8,$2A,$6B ; $D0AF5D
    db $5C,$DE,$BB,$89,$7B,$77,$1C,$DD,$77,$E0,$20,$B9,$9C,$00,$39,$00 ; $D0AF6D
    db $4D,$78,$32,$18,$3F,$57,$6F,$00,$88,$F7,$FF,$03,$F0,$FE,$9F,$E0 ; $D0AF7D
    db $C0,$1B,$1C,$7F,$C5,$CA,$8F,$EA,$6D,$BD,$5C,$37,$EC,$30,$C8,$31 ; $D0AF8D
    db $0F,$AF,$5B,$3C,$01,$0F,$3F,$C8,$EA,$40,$AC,$F8,$0F,$80,$8F,$71 ; $D0AF9D
    db $7E,$77,$FF,$04,$8B,$FE,$01,$B8,$AA,$2D,$70,$00,$BF,$28,$03,$EE ; $D0AFAD
    db $FA,$3F,$A1,$7F,$07,$F7,$09,$7F,$17,$E1,$14,$D5,$2B,$2A,$EB,$9E ; $D0AFBD
    db $7F,$C0,$3F,$E0,$1F,$CC,$01,$00,$81,$60,$1E,$54,$2A,$6A,$14,$7E ; $D0AFCD
    db $00,$3F,$01,$18,$E7,$FF,$03,$F4,$51,$70,$87,$15,$F9,$04,$F8,$02 ; $D0AFDD
    db $01,$F0,$06,$E0,$0F,$84,$BB,$06,$00,$B9,$27,$7F,$13,$19,$4B,$FF ; $D0AFED
    db $43,$19,$86,$A2,$01,$33,$4D,$07,$F9,$03,$3C,$03,$04,$03,$0C,$01 ; $D0AFFD
    db $01,$64,$80,$CC,$30,$B0,$18,$08,$D5,$05,$53,$F8,$01,$F9,$19,$FF ; $D0B00D
    db $5C,$F4,$36,$72,$DA,$F0,$BD,$E0,$5F,$E1,$BF,$E7,$3F,$EF,$BF,$E3 ; $D0B01D
    db $42,$1F,$06,$01,$03,$17,$C7,$70,$F9,$05,$BF,$71,$93,$07,$6E,$9A ; $D0B02D
    db $6B,$12,$20,$10,$C2,$C4,$FB,$81,$FC,$C4,$FF,$EF,$EF,$40,$BB,$FB ; $D0B03D
    db $04,$F3,$0C,$33,$0C,$93,$C9,$C2,$18,$3F,$80,$73,$1A,$E3,$44,$02 ; $D0B04D
    db $DC,$06,$F5,$07,$68,$8F,$70,$DB,$0E,$14,$6F,$90,$0C,$BD,$D9,$F7 ; $D0B05D
    db $38,$3F,$1E,$2E,$80,$1A,$BF,$5C,$3E,$71,$C3,$3E,$4A,$23,$20,$47 ; $D0B06D
    db $04,$A9,$85,$56,$C5,$26,$F0,$96,$C1,$01,$00,$9B,$05,$70,$91,$0F ; $D0B07D
    db $5F,$03,$2B,$03,$1F,$03,$0B,$07,$01,$FE,$B7,$EB,$3A,$DF,$14,$09 ; $D0B08D
    db $B0,$7F,$98,$26,$00,$93,$2C,$90,$2E,$13,$2C,$12,$4C,$80,$01,$30 ; $D0B09D
    db $4C,$DF,$9F,$D3,$F7,$BF,$78,$01,$18,$7E,$1E,$66,$31,$1F,$E3,$03 ; $D0B0AD
    db $3F,$C7,$80,$03,$3E,$CE,$1E,$E6,$3C,$CC,$77,$87,$2E,$B7,$87,$3A ; $D0B0BD
    db $67,$87,$97,$CD,$07,$3C,$03,$18,$3F,$3C,$B8,$F7,$3B,$36,$39,$7B ; $D0B0CD
    db $74,$3A,$36,$6B,$76,$3B,$34,$6F,$71,$6E,$7B,$C0,$C5,$F3,$82,$01 ; $D0B0DD
    db $C1,$73,$A1,$1C,$C2,$A7,$BA,$5E,$C1,$CF,$01,$F0,$F6,$09,$DC,$FF ; $D0B0ED
    db $30,$07,$FF,$23,$D7,$01,$D7,$00,$C3,$C0,$73,$F0,$1F,$78,$7F,$C1 ; $D0B0FD
    db $10,$38,$E0,$18,$01,$FC,$3F,$00,$0C,$1F,$2E,$BF,$87,$3F,$EC,$C3 ; $D0B10D
    db $FC,$E3,$FE,$F1,$FE,$79,$F7,$3F,$EA,$3F,$F5,$3F,$F0,$10,$1B,$E7 ; $D0B11D
    db $70,$FC,$05,$FF,$E0,$DF,$00,$E0,$FF,$60,$FF,$A0,$FF,$50,$FF,$71 ; $D0B12D
    db $B0,$03,$20,$EB,$09,$E0,$76,$68,$52,$58,$F0,$4F,$1F,$D4,$F7,$0F ; $D0B13D
    db $C3,$01,$FF,$03,$FE,$A8,$AE,$09,$FD,$03,$FD,$03,$7B,$79,$12,$BB ; $D0B14D
    db $02,$A2,$38,$01,$A8,$01,$F0,$18,$8E,$B8,$DB,$F2,$00,$16,$B0,$DC ; $D0B15D
    db $F2,$06,$0D,$F7,$03,$EF,$00,$4A,$51,$AE,$27,$00,$EE,$01,$75,$2C ; $D0B16D
    db $D1,$13,$0B,$5F,$DB,$0B,$79,$41,$08,$3F,$0F,$30,$07,$8F,$80,$F1 ; $D0B17D
    db $0F,$84,$FC,$01,$5F,$01,$A4,$2F,$80,$7F,$70,$7C,$91,$5F,$00,$FF ; $D0B18D
    db $1E,$F7,$FF,$FB,$C3,$D0,$BB,$1D,$22,$03,$1C,$FB,$02,$15,$6D,$00 ; $D0B19D
    db $C7,$89,$8E,$18,$3F,$D7,$15,$F9,$F7,$40,$FF,$DD,$FB,$00,$FD,$02 ; $D0B1AD
    db $F7,$09,$EE,$15,$1A,$E0,$45,$3F,$15,$82,$47,$19,$4B,$03,$03,$F0 ; $D0B1BD
    db $19,$8E,$20,$C0,$60,$60,$C0,$03,$20,$E0,$00,$A0,$05,$40,$00,$F8 ; $D0B1CD
    db $10,$E4,$7D,$F4,$00,$1F,$E5,$44,$20,$BF,$FD,$FC,$04,$F1,$FB,$DF ; $D0B1DD
    db $43,$04,$FB,$FB,$F8,$82,$63,$07,$7D,$45,$E1,$2A,$26,$10,$01,$1E ; $D0B1ED
    db $0F,$2F,$10,$14,$3C,$0F,$3E,$AE,$31,$1D,$7C,$12,$60,$08,$61,$00 ; $D0B1FD
    db $2F,$00,$30,$38,$3F,$30,$E4,$75,$BE,$F5,$C0,$F7,$01,$00,$AE,$08 ; $D0B20D
    db $8F,$98,$86,$A9,$5E,$9B,$B4,$C3,$7C,$03,$78,$3F,$78,$37,$E4,$87 ; $D0B21D
    db $79,$1F,$03,$70,$23,$71,$3B,$73,$F3,$7B,$77,$FB,$7F,$FB,$03,$EF ; $D0B22D
    db $F6,$FE,$18,$80,$FF,$F8,$FF,$FE,$E1,$7E,$F9,$65,$1C,$FF,$E7,$DF ; $D0B23D
    db $66,$06,$F8,$0E,$F1,$FF,$07,$97,$0C,$F9,$81,$FF,$9B,$68,$C1,$0F ; $D0B24D
    db $3E,$F8,$7F,$F0,$19,$F8,$40,$11,$FF,$42,$06,$FF,$A1,$FF,$20,$FF ; $D0B25D
    db $38,$B8,$F5,$83,$FF,$06,$0F,$B0,$A7,$FF,$EE,$7F,$3D,$BF,$1E,$BF ; $D0B26D
    db $9F,$FF,$0E,$83,$93,$C1,$47,$F9,$C0,$18,$3F,$EB,$8C,$D9,$BE,$DF ; $D0B27D
    db $60,$A0,$01,$FD,$8E,$FF,$8E,$63,$7B,$01,$8C,$D1,$05,$77,$00,$CD ; $D0B28D
    db $00,$DF,$0D,$01,$FF,$84,$01,$EB,$18,$3F,$8F,$CF,$33,$F5,$1B,$EA ; $D0B29D
    db $1D,$3C,$CF,$F5,$0E,$1F,$E6,$F8,$A7,$E9,$B7,$EE,$05,$9D,$F7,$1C ; $D0B2AD
    db $C5,$18,$3F,$2D,$FC,$C7,$AF,$FD,$D6,$FC,$56,$FC,$99,$FB,$27,$F7 ; $D0B2BD
    db $0D,$F9,$DE,$6A,$FC,$10,$5C,$01,$60,$FD,$08,$FD,$88,$F5,$40,$ED ; $D0B2CD
    db $40,$EB,$64,$EB,$24,$03,$02,$03,$00,$01,$0F,$9C,$FE,$37,$09,$3F ; $D0B2DD
    db $2E,$2A,$D8,$3C,$9A,$BE,$FE,$27,$67,$67,$63,$BF,$BA,$CD,$50,$E3 ; $D0B2ED
    db $36,$05,$00,$25,$01,$00,$BD,$00,$B9,$04,$F8,$05,$62,$9D,$3E,$2A ; $D0B2FD
    db $DD,$18,$B7,$7F,$18,$21,$29,$2F,$2F,$F7,$D0,$FB,$DC,$E9,$06,$E1 ; $D0B30D
    db $0F,$30,$D2,$15,$B3,$E4,$B3,$C8,$27,$C0,$01,$10,$EF,$11,$EE,$1D ; $D0B31D
    db $1E,$EE,$5C,$EE,$18,$3F,$17,$F9,$FB,$92,$4F,$B6,$E9,$ED,$0F,$4E ; $D0B32D
    db $9B,$D9,$36,$F4,$6D,$E9,$5F,$DF,$CC,$00,$D9,$00,$93,$00,$B2,$01 ; $D0B33D
    db $25,$02,$0D,$02,$1B,$04,$3F,$19,$B8,$BE,$5B,$27,$CE,$B9,$F4,$86 ; $D0B34D
    db $BD,$3C,$56,$57,$7B,$79,$26,$2E,$43,$4F,$F4,$F7,$82,$7C,$B5,$48 ; $D0B35D
    db $5A,$81,$BA,$01,$B5,$02,$F7,$3D,$FF,$F8,$19,$3F,$75,$E3,$FF,$BA ; $D0B36D
    db $3B,$D3,$D4,$37,$18,$8F,$51,$E4,$BC,$F5,$35,$58,$53,$40,$00,$44 ; $D0B37D
    db $80,$B8,$00,$C0,$20,$20,$C0,$83,$40,$8E,$40,$F4,$08,$F5,$18,$3F ; $D0B38D
    db $CB,$E8,$F5,$7A,$86,$FF,$01,$A1,$7E,$DD,$E2,$BF,$C0,$03,$FC,$EF ; $D0B39D
    db $F0,$07,$00,$03,$04,$EB,$04,$35,$D4,$67,$3D,$01,$01,$AE,$12,$3F ; $D0B3AD
    db $BF,$94,$55,$AC,$FF,$58,$ED,$9E,$F3,$C6,$7D,$ED,$B3,$F1,$19,$FB ; $D0B3BD
    db $0D,$6A,$80,$B0,$40,$CE,$30,$F2,$0C,$7C,$82,$3E,$C0,$1E,$E0,$0E ; $D0B3CD
    db $F0,$18,$F1,$FF,$2B,$E0,$02,$71,$F4,$30,$ED,$1C,$F3,$29,$F6,$58 ; $D0B3DD
    db $F3,$F8,$F3,$F0,$FB,$18,$07,$0E,$9F,$E5,$7F,$4F,$BF,$E5,$18,$00 ; $D0B3ED
    db $83,$C3,$0C,$E3,$04,$87,$04,$07,$74,$07,$E1,$67,$99,$07,$5C,$BD ; $D0B3FD
    db $3A,$F0,$F8,$00,$38,$C0,$B8,$40,$A8,$10,$10,$08,$00,$97,$C3,$08 ; $D0B40D
    db $F0,$1A,$4F,$1E,$0E,$FF,$2B,$FF,$15,$87,$A9,$09,$54,$83,$C0,$FF ; $D0B41D
    db $3E,$60,$00,$27,$E8,$FF,$AF,$F8,$2B,$7F,$FF,$FA,$0E,$FF,$54,$FF ; $D0B42D
    db $A9,$3C,$1E,$11,$28,$3F,$FA,$01,$DF,$F5,$BF,$FE,$5F,$FB,$7F,$DF ; $D0B43D
    db $6A,$71,$7F,$4A,$7B,$E2,$28,$3F,$38,$EA,$E3,$4A,$FC,$A2,$FC,$50 ; $D0B44D
    db $F4,$F4,$F8,$C4,$F8,$E0,$F8,$80,$D8,$07,$07,$D6,$F5,$2E,$AE,$33 ; $D0B45D
    db $1F,$30,$02,$3F,$01,$3F,$0F,$F0,$80,$01,$1F,$E0,$1F,$8B,$9F,$57 ; $D0B46D
    db $C0,$7F,$09,$60,$FF,$24,$59,$20,$60,$5C,$03,$24,$98,$24,$99,$01 ; $D0B47D
    db $04,$B9,$C0,$39,$C0,$3B,$BE,$C7,$88,$BE,$14,$8A,$7E,$01,$7F,$7C ; $D0B48D
    db $19,$C0,$FF,$3E,$C6,$3C,$CC,$7E,$8E,$C6,$03,$7C,$9C,$03,$08,$78 ; $D0B49D
    db $98,$7C,$8C,$FC,$F3,$92,$71,$78,$03,$18,$3F,$68,$77,$B8,$6E,$E3 ; $D0B4AD
    db $FE,$6F,$7C,$D7,$E0,$7F,$60,$DF,$E0,$DF,$F0,$03,$1C,$A0,$01,$83 ; $D0B4BD
    db $C1,$45,$8F,$BC,$F8,$C5,$C7,$4A,$F3,$0C,$A2,$06,$3F,$AF,$0B,$07 ; $D0B4CD
    db $01,$F8,$3F,$AF,$9F,$80,$3C,$80,$FC,$03,$1F,$40,$3E,$3F,$7F,$03 ; $D0B4DD
    db $C3,$B2,$FF,$FF,$FC,$18,$AF,$15,$F2,$FC,$01,$0A,$EE,$C0,$EB,$0F ; $D0B4ED
    db $FD,$1E,$7C,$FE,$FE,$25,$3F,$B8,$64,$FF,$C0,$5F,$90,$77,$64,$0B ; $D0B4FD
    db $0A,$04,$04,$02,$02,$49,$56,$53,$B1,$83,$C3,$F8,$F0,$FC,$F8,$B8 ; $D0B50D
    db $38,$80,$49,$C0,$38,$F0,$47,$08,$96,$E3,$2B,$2F,$C7,$9F,$15,$0B ; $D0B51D
    db $00,$01,$80,$7F,$40,$37,$28,$9D,$96,$FB,$03,$41,$59,$80,$10,$C0 ; $D0B52D
    db $08,$E0,$F6,$01,$55,$27,$1F,$42,$0A,$53,$0F,$AD,$52,$FF,$05,$85 ; $D0B53D
    db $FB,$05,$5B,$1F,$D8,$02,$01,$18,$01,$4E,$2A,$D5,$EA,$15,$80,$05 ; $D0B54D
    db $E1,$0F,$A1,$5E,$4F,$D0,$04,$1F,$A0,$3F,$C0,$2A,$B7,$D5,$67,$47 ; $D0B55D
    db $A0,$7F,$96,$FD,$1A,$7F,$2E,$C1,$22,$9F,$81,$02,$87,$08,$ED,$27 ; $D0B56D
    db $3F,$0D,$DC,$3A,$F8,$17,$C0,$2F,$E3,$1C,$C3,$3C,$CC,$30,$94,$03 ; $D0B57D
    db $48,$86,$23,$CC,$0F,$E8,$0A,$67,$6F,$8B,$08,$3F,$D4,$25,$9E,$F1 ; $D0B58D
    db $1A,$B3,$5C,$27,$C8,$37,$C8,$BF,$40,$EF,$80,$5F,$70,$CA,$07,$C4 ; $D0B59D
    db $0F,$10,$0F,$60,$9F,$A0,$5F,$01,$0F,$60,$1F,$90,$0F,$18,$04,$3F ; $D0B5AD
    db $FA,$02,$FD,$01,$54,$9F,$FD,$02,$03,$F9,$07,$F4,$0E,$E8,$19,$F1 ; $D0B5BD
    db $02,$6A,$01,$FE,$87,$01,$04,$FE,$01,$E7,$07,$01,$FE,$8D,$07,$3F ; $D0B5CD
    db $3E,$18,$01,$70,$1E,$28,$0C,$20,$0D,$11,$06,$13,$0C,$1E,$01,$0C ; $D0B5DD
    db $EF,$F4,$F2,$80,$36,$1F,$1F,$0E,$1F,$0C,$0F,$01,$16,$0F,$03,$0F ; $D0B5ED
    db $FA,$F7,$E0,$87,$00,$F0,$F0,$85,$08,$8F,$69,$1F,$65,$CB,$1B,$F0 ; $D0B5FD
    db $0F,$F9,$6E,$EF,$6E,$58,$87,$02,$3F,$C0,$8F,$EF,$F6,$EB,$F0,$FF ; $D0B60D
    db $F6,$FE,$00,$01,$F0,$07,$E0,$C3,$81,$E3,$DB,$FE,$18,$80,$FF,$0E ; $D0B61D
    db $E6,$00,$EC,$1F,$C6,$35,$3B,$CC,$27,$E0,$70,$12,$D3,$20,$C1,$F1 ; $D0B62D
    db $03,$EF,$E3,$FF,$E1,$DF,$C3,$AB,$8A,$87,$01,$CC,$FF,$DE,$FC,$19 ; $D0B63D
    db $FF,$68,$13,$B8,$EB,$E2,$13,$E6,$27,$C8,$4F,$16,$9F,$A4,$3F,$4E ; $D0B64D
    db $7F,$1C,$7F,$E7,$F9,$01,$87,$CB,$F1,$97,$E3,$27,$C1,$4F,$83,$1F ; $D0B65D
    db $81,$BF,$03,$8B,$18,$3F,$72,$8F,$86,$71,$8F,$7D,$8E,$7F,$80,$1B ; $D0B66D
    db $F6,$7F,$F6,$1E,$F7,$01,$03,$FF,$8D,$FF,$8E,$BF,$80,$20,$01,$FF ; $D0B67D
    db $01,$E0,$3C,$FF,$E0,$18,$3F,$5E,$5C,$B3,$7C,$F4,$1B,$EC,$1B,$FA ; $D0B68D
    db $0D,$F6,$0D,$FD,$07,$DA,$27,$F7,$1A,$FF,$01,$01,$01,$00,$75,$EF ; $D0B69D
    db $1E,$43,$18,$00,$17,$96,$60,$45,$59,$AE,$56,$B4,$5D,$B4,$FA,$B6 ; $D0B6AD
    db $39,$F4,$34,$D3,$2C,$F4,$E9,$26,$D4,$03,$D9,$03,$D6,$09,$D3,$0C ; $D0B6BD
    db $A2,$8F,$99,$A7,$A7,$98,$1F,$00,$3F,$94,$01,$7F,$01,$F0,$08,$00 ; $D0B6CD
    db $A3,$52,$9F,$BA,$7D,$A0,$81,$34,$E5,$1A,$B0,$46,$BD,$C0,$41,$36 ; $D0B6DD
    db $A2,$08,$0E,$FD,$CC,$7F,$6E,$FF,$B6,$FF,$5B,$FF,$AB,$7F,$89,$FF ; $D0B6ED
    db $55,$19,$4B,$BF,$1B,$25,$8E,$D3,$2D,$12,$CE,$13,$FF,$97,$7A,$7E ; $D0B6FD
    db $13,$7A,$81,$10,$86,$CC,$FE,$01,$03,$EF,$FC,$FF,$EC,$FE,$ED,$0F ; $D0B70D
    db $01,$6C,$FF,$69,$19,$01,$3F,$B7,$B0,$71,$4E,$C0,$BF,$D6,$15,$B0 ; $D0B71D
    db $F5,$00,$61,$1B,$70,$0F,$2B,$1D,$BE,$0A,$EF,$2E,$D7,$0C,$3F,$C5 ; $D0B72D
    db $08,$00,$7A,$7B,$C6,$FC,$3D,$7F,$9F,$3E,$CE,$17,$E7,$1F,$67,$07 ; $D0B73D
    db $39,$03,$1D,$7C,$80,$3F,$37,$1C,$81,$3B,$87,$F8,$C1,$FE,$E1,$FE ; $D0B74D
    db $E2,$18,$3F,$FA,$EE,$E3,$2A,$AA,$4C,$C5,$57,$C7,$FD,$FD,$5F,$58 ; $D0B75D
    db $AD,$A4,$51,$56,$69,$10,$AE,$7C,$1E,$36,$08,$28,$10,$3B,$00,$A8 ; $D0B76D
    db $07,$56,$09,$B8,$01,$18,$3F,$2E,$5F,$60,$19,$37,$F8,$DF,$E0,$E7 ; $D0B77D
    db $98,$97,$98,$47,$78,$1C,$7F,$05,$80,$FC,$01,$2A,$B6,$80,$BE,$73 ; $D0B78D
    db $18,$3F,$17,$FB,$03,$9F,$3A,$01,$D7,$11,$ED,$2D,$F5,$3F,$E1,$1F ; $D0B79D
    db $61,$9E,$E1,$1E,$02,$7C,$00,$7E,$10,$2E,$2C,$12,$3E,$00,$1E,$1C ; $D0B7AD
    db $01,$FE,$7F,$01,$51,$3F,$01,$1F,$0F,$01,$08,$2E,$3F,$E4,$5F,$E2 ; $D0B7BD
    db $E9,$F0,$E2,$F4,$F0,$ED,$FF,$F0,$F8,$F7,$F8,$A7,$F8,$01,$17,$08 ; $D0B7CD
    db $19,$06,$0E,$01,$EB,$81,$06,$FB,$19,$FF,$1F,$F3,$17,$07,$50,$27 ; $D0B7DD
    db $0C,$88,$B7,$C8,$F7,$88,$1F,$F8,$0F,$F8,$08,$00,$88,$F9,$00,$0F ; $D0B7ED
    db $30,$40,$60,$10,$1E,$F8,$3F,$FF,$38,$FC,$7D,$0F,$14,$1E,$DF,$19 ; $D0B7FD
    db $3F,$6E,$34,$F8,$B7,$82,$28,$41,$04,$45,$01,$F0,$29,$3F,$BF,$FF ; $D0B80D
    db $6F,$B8,$4A,$FF,$BE,$07,$BC,$92,$69,$86,$FA,$C4,$78,$FC,$04,$E0 ; $D0B81D
    db $B8,$C1,$83,$46,$FF,$3E,$04,$7C,$18,$3C,$09,$18,$AB,$C9,$20,$3A ; $D0B82D
    db $7F,$80,$3F,$FE,$09,$0B,$7F,$84,$F8,$AF,$B2,$A5,$19,$CE,$C2,$01 ; $D0B83D
    db $E2,$D6,$0B,$04,$06,$01,$EE,$09,$3F,$7F,$6E,$1F,$EA,$F7,$FC,$FB ; $D0B84D
    db $C9,$3D,$01,$0D,$09,$05,$11,$E5,$7F,$80,$E0,$16,$BF,$C0,$B9,$70 ; $D0B85D
    db $4F,$0C,$17,$E1,$06,$F9,$01,$0F,$60,$F1,$01,$07,$F1,$FE,$7F,$02 ; $D0B86D
    db $C0,$3F,$F9,$FE,$F8,$FF,$CF,$01,$18,$CB,$FF,$79,$8F,$99,$7C,$9C ; $D0B87D
    db $F9,$F9,$4E,$01,$4B,$03,$43,$48,$47,$4C,$05,$0E,$1E,$50,$69,$FE ; $D0B88D
    db $01,$00,$B0,$C0,$B7,$C0,$F4,$83,$0F,$01,$18,$18,$3F,$CF,$E0,$01 ; $D0B89D
    db $AF,$D0,$EA,$3A,$9B,$62,$E1,$BD,$73,$FE,$F2,$63,$01,$00,$BF,$7F ; $D0B8AD
    db $43,$01,$00,$FC,$0A,$AF,$57,$0F,$16,$0B,$AF,$11,$FF,$09,$47,$DF ; $D0B8BD
    db $08,$00,$17,$FF,$BF,$02,$E9,$0F,$FC,$00,$DD,$49,$79,$02,$04,$3A ; $D0B8CD
    db $FE,$DF,$C3,$F2,$18,$3F,$AB,$60,$07,$3C,$3C,$B9,$C7,$0B,$FC,$03 ; $D0B8DD
    db $FA,$05,$16,$3B,$C3,$79,$8E,$17,$3F,$4D,$75,$08,$C7,$44,$A1,$02 ; $D0B8ED
    db $A3,$22,$00,$01,$93,$83,$D0,$D1,$63,$E3,$87,$F0,$83,$F8,$C3,$FC ; $D0B8FD
    db $C1,$FC,$E1,$FE,$60,$FC,$21,$FE,$10,$FC,$FC,$FE,$09,$F8,$B1,$07 ; $D0B90D
    db $01,$02,$7D,$00,$80,$9D,$42,$CD,$38,$E8,$14,$F0,$E8,$7F,$32,$BF ; $D0B91D
    db $40,$47,$C2,$E1,$01,$62,$01,$A2,$11,$98,$0F,$87,$08,$81,$00,$80 ; $D0B92D
    db $F4,$01,$5B,$3D,$DF,$15,$08,$11,$3F,$7F,$80,$06,$21,$FE,$01,$BB ; $D0B93D
    db $03,$79,$07,$27,$9F,$0C,$A0,$E8,$06,$92,$3E,$61,$1E,$18,$00,$CE ; $D0B94D
    db $8C,$6F,$8C,$64,$2E,$F2,$1C,$6F,$E1,$DF,$45,$8C,$8D,$03,$5C,$F0 ; $D0B95D
    db $3E,$0B,$F0,$15,$E0,$16,$E0,$40,$E0,$80,$C0,$00,$80,$1A,$57,$4E ; $D0B96D
    db $2F,$1E,$A0,$17,$D8,$02,$75,$00,$4F,$D1,$40,$D7,$28,$E3,$3C,$41 ; $D0B97D
    db $DE,$D0,$A3,$34,$00,$8B,$CF,$30,$00,$3F,$20,$1F,$10,$1E,$0F,$38 ; $D0B98D
    db $07,$18,$3F,$03,$D8,$34,$10,$C8,$D0,$E0,$19,$2E,$60,$F0,$01,$10 ; $D0B99D
    db $C0,$E6,$0A,$FC,$34,$F8,$14,$08,$F0,$00,$01,$80,$13,$01,$01,$03 ; $D0B9AD
    db $55,$03,$B3,$10,$3B,$00,$FE,$0F,$E7,$F8,$00,$F0,$01,$06,$01,$0F ; $D0B9BD
    db $04,$03,$01,$64,$03,$06,$01,$02,$02,$06,$04,$07,$00,$01,$05,$03 ; $D0B9CD
    db $0F,$5A,$40,$0F,$0C,$06,$0F,$0D,$06,$1A,$09,$0F,$06,$08,$06,$F0 ; $D0B9DD
    db $07,$7F,$00,$09,$80,$7F,$8F,$CC,$C3,$EC,$EB,$60,$01,$56,$81,$44 ; $D0B9ED
    db $39,$F3,$06,$FC,$80,$FF,$C3,$FB,$00,$04,$00,$90,$3E,$00,$7E,$57 ; $D0B9FD
    db $0E,$C0,$1B,$00,$01,$E0,$02,$E2,$B2,$03,$D0,$95,$49,$52,$F3,$C1 ; $D0BA0D
    db $A1,$7C,$06,$DF,$F1,$2E,$DC,$FF,$1E,$CD,$7E,$22,$1C,$CD,$80,$E3 ; $D0BA1D
    db $00,$F7,$01,$37,$01,$18,$3F,$01,$9E,$FF,$9C,$FF,$3A,$FF,$1C,$C9 ; $D0BA2D
    db $03,$00,$07,$3F,$01,$7F,$03,$7F,$05,$10,$FF,$03,$FF,$03,$1E,$85 ; $D0BA3D
    db $FF,$83,$18,$3F,$14,$1F,$F7,$1B,$01,$00,$09,$F7,$0D,$F3,$3D,$E3 ; $D0BA4D
    db $1D,$E3,$8F,$8A,$F3,$F7,$E0,$F3,$07,$01,$E3,$C0,$E1,$C0,$97,$18 ; $D0BA5D
    db $3F,$ED,$1E,$1A,$7F,$8C,$7B,$8E,$F0,$8F,$B1,$CF,$B0,$CF,$F4,$CF ; $D0BA6D
    db $E0,$DF,$FB,$F9,$F5,$EF,$04,$CC,$C8,$01,$07,$0F,$CF,$03,$DF,$07 ; $D0BA7D
    db $18,$0B,$3F,$1C,$80,$FE,$A5,$D9,$4D,$62,$3A,$9C,$FC,$7F,$07,$DA ; $D0BA8D
    db $51,$92,$CF,$AF,$6F,$1F,$58,$27,$DC,$3F,$CB,$07,$D0,$03,$E2,$1D ; $D0BA9D
    db $FC,$0F,$F5,$A2,$A5,$74,$7F,$03,$0A,$AB,$FF,$4F,$8F,$90,$3D,$42 ; $D0BAAD
    db $F0,$0E,$60,$98,$C0,$30,$85,$60,$8A,$40,$3F,$80,$20,$55,$44,$01 ; $D0BABD
    db $DE,$0E,$B2,$0F,$FF,$1F,$FB,$81,$7F,$EA,$19,$BF,$A8,$3C,$54,$00 ; $D0BACD
    db $01,$E3,$A9,$0B,$00,$57,$00,$03,$7F,$B7,$EB,$0F,$3F,$EC,$0A,$00 ; $D0BADD
    db $E2,$0E,$C0,$C5,$01,$38,$02,$70,$04,$0B,$E0,$09,$C5,$12,$54,$39 ; $D0BAED
    db $FD,$FF,$07,$FB,$FF,$F6,$FF,$EC,$8B,$19,$3F,$1F,$2F,$8E,$67,$18 ; $D0BAFD
    db $8F,$53,$17,$27,$3F,$5F,$7E,$AA,$FE,$46,$AC,$50,$CF,$F0,$BF,$B8 ; $D0BB0D
    db $78,$23,$FC,$C7,$F8,$9F,$E0,$2B,$D4,$47,$B8,$03,$FC,$18,$3F,$2E ; $D0BB1D
    db $2F,$5C,$57,$BA,$55,$2D,$29,$4C,$4C,$27,$27,$52,$52,$79,$79,$1D ; $D0BB2D
    db $FD,$D2,$01,$AC,$02,$DA,$04,$BF,$91,$79,$AF,$00,$87,$DC,$F8,$2B ; $D0BB3D
    db $18,$3F,$47,$7F,$5C,$C2,$7A,$C3,$69,$6F,$AE,$BF,$63,$64,$64,$6B ; $D0BB4D
    db $D2,$1E,$E5,$74,$80,$00,$3C,$47,$15,$C0,$00,$98,$03,$05,$21,$C0 ; $D0BB5D
    db $4A,$81,$CB,$18,$3F,$27,$8F,$D8,$7D,$80,$C9,$F0,$D5,$38,$F5,$08 ; $D0BB6D
    db $1D,$E0,$DD,$50,$34,$D0,$1E,$61,$0D,$06,$00,$02,$40,$01,$62,$80 ; $D0BB7D
    db $1B,$E0,$EF,$82,$F3,$0F,$FE,$07,$FE,$03,$47,$01,$FF,$D8,$09,$8F ; $D0BB8D
    db $F8,$C5,$01,$06,$E8,$C3,$15,$E6,$09,$E1,$12,$F8,$07,$FF,$08,$F1 ; $D0BB9D
    db $0F,$07,$B8,$B5,$76,$0E,$E7,$7F,$0F,$1F,$D7,$3F,$0F,$1E,$78,$0F ; $D0BBAD
    db $08,$0F,$80,$0F,$70,$8E,$50,$2C,$01,$0F,$C0,$FC,$07,$80,$3A,$B7 ; $D0BBBD
    db $70,$A0,$78,$A1,$00,$F2,$01,$21,$1F,$13,$01,$03,$02,$C1,$0D,$03 ; $D0BBCD
    db $FC,$BF,$01,$10,$80,$8F,$FD,$03,$CA,$14,$02,$0C,$25,$9A,$11,$98 ; $D0BBDD
    db $03,$DC,$80,$39,$21,$C3,$D3,$E3,$F7,$E3,$E7,$7D,$F3,$08,$FD,$C5 ; $D0BBED
    db $0C,$3F,$80,$3D,$C9,$14,$E8,$06,$1C,$B4,$09,$D4,$38,$14,$B8,$00 ; $D0BBFD
    db $15,$22,$C1,$D5,$E3,$D7,$E3,$34,$D3,$E7,$01,$3F,$20,$04,$78,$C5 ; $D0BC0D
    db $08,$00,$F1,$50,$B9,$E3,$FA,$03,$C2,$E2,$D0,$51,$60,$2D,$32,$7F ; $D0BC1D
    db $36,$7D,$74,$3F,$08,$09,$00,$09,$09,$01,$63,$81,$B3,$C1,$01,$B1 ; $D0BC2D
    db $C3,$47,$01,$BF,$B9,$14,$85,$7F,$1E,$E9,$06,$CF,$F5,$72,$A1,$53 ; $D0BC3D
    db $90,$56,$84,$96,$05,$93,$04,$93,$05,$01,$F5,$0D,$F1,$2D,$D1,$FD ; $D0BC4D
    db $E1,$E9,$F1,$E8,$8F,$01,$E9,$19,$F4,$7F,$06,$F0,$30,$06,$F8,$01 ; $D0BC5D
    db $0C,$F2,$1C,$60,$E2,$01,$0D,$E0,$01,$6C,$1E,$F9,$FF,$F1,$01,$01 ; $D0BC6D
    db $73,$F3,$01,$D7,$18,$3F,$2C,$15,$9A,$15,$9B,$8B,$1D,$88,$1A,$80 ; $D0BC7D
    db $9B,$83,$91,$22,$30,$24,$36,$60,$87,$61,$86,$01,$65,$00,$86,$E4 ; $D0BC8D
    db $00,$EC,$06,$CF,$0F,$C9,$FB,$15,$1D,$7F,$0F,$A3,$67,$A0,$7F,$7F ; $D0BC9D
    db $00,$75,$00,$FA,$2B,$00,$50,$B2,$2E,$FB,$F4,$7F,$E5,$11,$7F,$7F ; $D0BCAD
    db $37,$01,$9D,$06,$15,$5F,$F7,$87,$05,$43,$ED,$06,$FE,$29,$FF,$F9 ; $D0BCBD
    db $75,$02,$27,$B9,$04,$FB,$1D,$01,$FF,$E8,$99,$1F,$18,$FC,$3C,$FF ; $D0BCCD
    db $F8,$03,$01,$E0,$F5,$19,$3F,$C7,$FC,$03,$EA,$15,$D4,$2B,$A1,$5F ; $D0BCDD
    db $CA,$3F,$B7,$5F,$4D,$BD,$96,$7E,$FF,$05,$9A,$D5,$89,$F0,$18,$3F ; $D0BCED
    db $F0,$F1,$7B,$B8,$C7,$F3,$D0,$D9,$69,$E1,$D1,$D8,$89,$81,$19,$18 ; $D0BCFD
    db $8D,$81,$09,$F6,$00,$D8,$F7,$FE,$03,$74,$FA,$0F,$E5,$FA,$70,$FE ; $D0BD0D
    db $18,$77,$3F,$B7,$35,$4E,$13,$D8,$21,$D0,$2B,$F4,$0F,$E4,$19,$EE ; $D0BD1D
    db $93,$EE,$1E,$80,$00,$CC,$00,$CF,$00,$C7,$00,$E3,$00,$E7,$00,$6D ; $D0BD2D
    db $00,$E1,$FB,$F1,$E0,$FA,$03,$ED,$F0,$F2,$09,$3F,$B3,$E3,$53,$00 ; $D0BD3D
    db $00,$40,$CF,$A0,$9D,$5B,$3C,$5E,$39,$52,$39,$5B,$B1,$2C,$C0,$13 ; $D0BD4D
    db $CF,$30,$81,$7E,$B5,$1F,$01,$18,$FB,$7F,$AF,$BA,$45,$39,$2B,$10 ; $D0BD5D
    db $89,$02,$D9,$2E,$76,$3C,$ED,$BC,$FD,$B8,$FB,$82,$00,$C6,$00,$E9 ; $D0BD6D
    db $06,$EF,$00,$49,$80,$53,$80,$43,$80,$47,$80,$85,$18,$3F,$61,$DC ; $D0BD7D
    db $D0,$CF,$BE,$80,$42,$D6,$53,$0C,$F9,$00,$0A,$21,$06,$3A,$81,$DC ; $D0BD8D
    db $23,$8E,$71,$32,$FD,$23,$FC,$F9,$06,$F8,$A8,$07,$3D,$FC,$03,$18 ; $D0BD9D
    db $3F,$70,$B0,$30,$E0,$70,$C0,$60,$D0,$70,$D0,$60,$40,$F0,$C0,$08 ; $D0BDAD
    db $7F,$C0,$50,$E0,$10,$E2,$01,$00,$90,$03,$01,$FF,$02,$C1,$F9,$00 ; $D0BDBD
    db $00,$FA,$05,$0B,$30,$0D,$06,$08,$01,$01,$0A,$00,$02,$01,$02,$03 ; $D0BDCD
    db $04,$D0,$8C,$02,$00,$00,$04,$01,$06,$00,$07,$05,$03,$C6,$01,$01 ; $D0BDDD
    db $03,$14,$74,$01,$47,$51,$D4,$F3,$F8,$00,$71,$FC,$00,$F8,$F5,$09 ; $D0BDED
    db $3F,$B8,$E5,$07,$07,$84,$78,$0F,$5F,$E1,$65,$E7,$6C,$D7,$FC,$17 ; $D0BDFD
    db $10,$68,$78,$20,$01,$C3,$FE,$A0,$C0,$92,$EF,$93,$EF,$03,$EF,$20 ; $D0BE0D
    db $CF,$87,$FF,$19,$FF,$70,$C6,$FF,$20,$3F,$02,$1F,$50,$9F,$D3,$9F ; $D0BE1D
    db $12,$9F,$D7,$09,$0C,$C3,$FF,$07,$01,$C7,$03,$E7,$01,$23,$C3,$23 ; $D0BE2D
    db $C0,$01,$40,$7D,$80,$1A,$17,$3F,$1E,$7A,$FF,$5D,$FF,$79,$FE,$46 ; $D0BE3D
    db $F9,$94,$EB,$20,$FF,$C0,$FF,$90,$FF,$F8,$F3,$82,$FC,$80,$1F,$F0 ; $D0BE4D
    db $80,$C0,$1C,$47,$7C,$07,$00,$7C,$C3,$7C,$5A,$A3,$BE,$B8,$4E,$41 ; $D0BE5D
    db $52,$AE,$08,$F8,$20,$E0,$80,$80,$C1,$80,$80,$E0,$01,$04,$03,$11 ; $D0BE6D
    db $0E,$47,$79,$38,$18,$3F,$44,$DE,$0E,$FB,$34,$FF,$80,$3B,$BB,$28 ; $D0BE7D
    db $E2,$A0,$09,$3F,$9F,$29,$40,$01,$03,$6F,$07,$4F,$87,$DF,$07,$C7 ; $D0BE8D
    db $01,$06,$80,$18,$3F,$7D,$9B,$2F,$D5,$7F,$C7,$EF,$2E,$FF,$73,$EF ; $D0BE9D
    db $59,$EF,$E0,$DE,$C0,$BF,$F1,$86,$F5,$82,$F1,$80,$F7,$C0,$F8,$C0 ; $D0BEAD
    db $FE,$86,$FF,$0E,$FF,$0F,$0F,$B6,$F1,$3B,$17,$F4,$0C,$91,$0C,$3F ; $D0BEBD
    db $80,$C4,$35,$54,$45,$BC,$00,$08,$B2,$C7,$64,$0E,$AD,$3B,$81,$01 ; $D0BECD
    db $B8,$7F,$B1,$7F,$F5,$18,$BF,$B0,$17,$54,$00,$03,$55,$54,$A9,$FC ; $D0BEDD
    db $00,$AA,$EA,$02,$38,$AB,$EA,$5F,$40,$55,$19,$5B,$FF,$8C,$8B,$00 ; $D0BEED
    db $F0,$07,$E0,$0E,$80,$11,$34,$02,$98,$21,$83,$75,$8C,$45,$54,$3F ; $D0BEFD
    db $F1,$FF,$77,$EE,$C0,$FF,$FE,$FF,$B9,$FE,$B6,$F8,$F0,$18,$3F,$54 ; $D0BF0D
    db $AD,$09,$B8,$F5,$F2,$11,$E7,$21,$CD,$63,$BA,$C7,$76,$88,$E8,$06 ; $D0BF1D
    db $C5,$06,$F8,$04,$80,$BF,$13,$E0,$06,$C1,$0E,$07,$81,$1F,$00,$3C ; $D0BF2D
    db $03,$97,$18,$3F,$F6,$1A,$0E,$F3,$0F,$11,$1F,$9A,$6F,$4D,$C7,$46 ; $D0BF3D
    db $C7,$68,$5D,$5B,$97,$01,$F7,$BB,$00,$94,$30,$F8,$3C,$F8,$C2,$3C ; $D0BF4D
    db $32,$78,$CC,$18,$3F,$8E,$2D,$5C,$C4,$B8,$CF,$55,$5E,$D5,$DE,$82 ; $D0BF5D
    db $9D,$D2,$DF,$51,$DC,$01,$CF,$50,$83,$F0,$03,$E0,$03,$60,$01,$22 ; $D0BF6D
    db $67,$01,$01,$31,$D1,$19,$3F,$75,$86,$04,$02,$60,$E6,$94,$DE,$D8 ; $D0BF7D
    db $FE,$98,$7E,$D0,$0E,$D8,$26,$F4,$79,$80,$9D,$00,$0C,$00,$20,$04 ; $D0BF8D
    db $90,$04,$40,$8C,$28,$C4,$2C,$C0,$EB,$FB,$02,$05,$01,$C6,$08,$3F ; $D0BF9D
    db $F0,$0F,$01,$60,$70,$E8,$29,$06,$39,$00,$0B,$21,$30,$1D,$3F,$77 ; $D0BFAD
    db $D5,$A8,$01,$13,$1C,$02,$02,$CE,$A0,$80,$8B,$D9,$3D,$01,$08,$3F ; $D0BFBD
    db $71,$3C,$F5,$1A,$F1,$18,$F3,$1C,$E7,$1C,$EF,$9C,$4B,$50,$07,$10 ; $D0BFCD
    db $A3,$EB,$66,$ED,$01,$7C,$E3,$00,$07,$CB,$04,$27,$4F,$07,$07,$F8 ; $D0BFDD
    db $84,$01,$0F,$F0,$9E,$01,$08,$3F,$00,$94,$0F,$1C,$8F,$14,$B3,$38 ; $D0BFED
    db $DF,$30,$00,$D7,$67,$38,$C7,$6C,$18,$83,$E7,$F3,$01,$DB,$E7,$CF ; $D0BFFD
    db $01,$EF,$1F,$A4,$FF,$EC,$0E,$B9,$E1,$36,$B5,$2C,$AA,$38,$B5,$1A ; $D0C00D
    db $81,$36,$A9,$34,$83,$A6,$19,$D5,$E3,$EC,$C3,$D9,$C7,$D3,$CF,$E7 ; $D0C01D
    db $DF,$01,$CF,$FF,$C7,$E1,$19,$3F,$70,$B9,$60,$71,$E9,$B4,$3D,$0C ; $D0C02D
    db $D9,$0A,$C5,$3A,$E1,$10,$CB,$54,$8B,$37,$C3,$77,$C1,$83,$C3,$EB ; $D0C03D
    db $C7,$F3,$4D,$41,$01,$E1,$18,$3F,$92,$04,$93,$73,$35,$CE,$09,$0F ; $D0C04D
    db $AB,$1E,$BA,$1C,$F8,$5C,$B8,$DC,$38,$E9,$F0,$D8,$E0,$B0,$C0,$D0 ; $D0C05D
    db $C0,$C1,$C0,$83,$A7,$01,$8B,$18,$3F,$E7,$10,$96,$5E,$00,$BC,$A4 ; $D0C06D
    db $1D,$FE,$23,$30,$0D,$1A,$0F,$1A,$0D,$19,$6E,$FF,$A1,$7E,$67,$18 ; $D0C07D
    db $17,$0C,$CC,$01,$E8,$05,$01,$EA,$79,$05,$10,$3F,$01,$32,$01,$02 ; $D0C08D
    db $E7,$2F,$73,$77,$EC,$E1,$65,$E6,$0F,$F0,$DE,$40,$FF,$80,$FC,$24 ; $D0C09D
    db $D2,$0C,$9A,$2C,$12,$6C,$19,$F1,$00,$56,$9E,$7D,$D9,$E3,$0A,$3F ; $D0C0AD
    db $07,$20,$00,$60,$00,$F1,$9C,$05,$4F,$AA,$07,$00,$E2,$62,$B0,$00 ; $D0C0BD
    db $D8,$01,$91,$01,$B6,$76,$00,$1C,$FF,$7C,$FF,$BC,$FF,$DE,$FD,$FE ; $D0C0CD
    db $18,$AE,$FF,$0A,$35,$02,$37,$03,$E6,$0E,$B8,$28,$53,$30,$47,$C0 ; $D0C0DD
    db $8F,$80,$9F,$80,$FD,$2E,$7F,$C7,$B5,$FF,$3F,$55,$03,$FF,$19,$F4 ; $D0C0ED
    db $7F,$00,$5E,$F7,$06,$07,$07,$F7,$00,$FE,$72,$09,$01,$BF,$B0,$2F ; $D0C0FD
    db $A9,$FB,$F0,$01,$EB,$18,$3F,$8C,$8D,$FD,$76,$FE,$2D,$1D,$C6,$82 ; $D0C10D
    db $6D,$0C,$9B,$03,$60,$C0,$B7,$E3,$7F,$F3,$33,$03,$09,$4E,$F3,$BC ; $D0C11D
    db $68,$EA,$3D,$1E,$18,$3F,$72,$19,$18,$0D,$01,$11,$18,$0F,$03,$9B ; $D0C12D
    db $92,$B7,$86,$7F,$7C,$1F,$10,$E5,$FA,$F0,$FE,$C0,$03,$F2,$FC,$63 ; $D0C13D
    db $FC,$01,$07,$78,$03,$80,$0F,$E0,$80,$18,$3F,$E0,$98,$E0,$1C,$E0 ; $D0C14D
    db $9E,$EF,$40,$74,$08,$F8,$04,$F2,$0A,$D0,$3B,$2D,$6F,$9C,$7F,$03 ; $D0C15D
    db $EB,$00,$04,$E8,$07,$EC,$03,$E6,$01,$C3,$FE,$07,$FF,$EF,$0A,$EE ; $D0C16D
    db $FF,$58,$03,$B1,$33,$45,$03,$45,$02,$0D,$00,$AD,$01,$28,$01,$7A ; $D0C17D
    db $00,$7A,$80,$7F,$C4,$3B,$01,$CC,$33,$03,$EC,$13,$6C,$93,$7E,$81 ; $D0C18D
    db $7F,$01,$18,$EE,$7F,$78,$3F,$E0,$3C,$83,$B8,$06,$F4,$48,$78,$44 ; $D0C19D
    db $73,$02,$7E,$80,$78,$99,$5F,$80,$7C,$80,$79,$80,$36,$81,$15,$7D ; $D0C1AD
    db $80,$75,$FF,$1E,$83,$18,$3F,$2E,$A2,$4D,$9F,$28,$E5,$48,$37,$21 ; $D0C1BD
    db $D0,$01,$8A,$8D,$A0,$39,$80,$62,$01,$BC,$03,$00,$1F,$06,$F9,$1E ; $D0C1CD
    db $E1,$FA,$05,$60,$1F,$80,$7F,$0A,$1E,$B0,$08,$3F,$07,$DF,$C0,$FF ; $D0C1DD
    db $E0,$DF,$2E,$01,$12,$5F,$C0,$7F,$E0,$3F,$C0,$5F,$A0,$00,$E0,$20 ; $D0C1ED
    db $C0,$29,$01,$00,$03,$E1,$18,$3F,$03,$10,$0B,$71,$47,$2F,$1F,$BE ; $D0C1FD
    db $7F,$FC,$FE,$55,$FC,$B0,$F1,$4B,$C4,$08,$07,$20,$A4,$77,$60,$C5 ; $D0C20D
    db $0E,$FC,$30,$F8,$1F,$E0,$E0,$80,$15,$F2,$85,$10,$DF,$E1,$C6,$C8 ; $D0C21D
    db $0E,$90,$3F,$21,$FE,$41,$FE,$81,$FE,$01,$B8,$01,$7F,$F1,$3B,$41 ; $D0C22D
    db $E0,$EF,$7E,$80,$1E,$FF,$7F,$78,$A7,$1F,$B8,$60,$0F,$0F,$17,$17 ; $D0C23D
    db $8C,$8C,$72,$F1,$50,$CF,$C1,$A6,$11,$60,$80,$30,$C0,$0C,$28,$C0 ; $D0C24D
    db $73,$00,$89,$00,$1E,$3F,$18,$7F,$18,$3F,$B8,$C7,$42,$FE,$A9,$F8 ; $D0C25D
    db $67,$E0,$9E,$80,$79,$01,$66,$86,$9F,$1F,$3A,$3A,$C0,$B7,$10,$0F ; $D0C26D
    db $40,$3F,$02,$FC,$33,$09,$F0,$FF,$45,$C4,$19,$85,$60,$00,$8B,$AA ; $D0C27D
    db $40,$87,$40,$81,$81,$20,$21,$82,$83,$0F,$F0,$1F,$E0,$7F,$60,$B9 ; $D0C28D
    db $BF,$00,$7E,$00,$0F,$DE,$00,$6C,$10,$18,$2E,$3F,$53,$3D,$7F,$0D ; $D0C29D
    db $7E,$10,$7F,$A5,$FB,$0A,$F7,$3C,$CC,$50,$B0,$45,$C0,$BF,$E0,$7B ; $D0C2AD
    db $FC,$00,$78,$E0,$57,$83,$00,$0C,$1E,$03,$20,$1F,$18,$3F,$1D,$9A ; $D0C2BD
    db $7F,$09,$8B,$86,$38,$3F,$9F,$4E,$8F,$A1,$C1,$10,$20,$39,$31,$FF ; $D0C2CD
    db $05,$FF,$02,$AF,$00,$41,$80,$10,$60,$0E,$30,$47,$98,$06,$C8,$AE ; $D0C2DD
    db $18,$3F,$B2,$48,$48,$07,$C0,$88,$A1,$17,$C9,$0A,$EB,$82,$FE,$9B ; $D0C2ED
    db $BB,$63,$77,$F7,$3F,$FF,$BF,$DE,$3F,$D1,$3E,$FC,$10,$21,$10,$57 ; $D0C2FD
    db $00,$8B,$0C,$E3,$31,$A8,$9A,$EE,$FF,$51,$03,$9E,$55,$01,$00,$5C ; $D0C30D
    db $28,$7B,$01,$FC,$01,$F7,$37,$40,$7F,$33,$F3,$7F,$7F,$C3,$A5,$2F ; $D0C31D
    db $87,$FE,$E3,$B7,$39,$C0,$80,$98,$29,$39,$99,$7E,$7F,$74,$19,$CB ; $D0C32D
    db $BF,$B8,$1F,$8E,$D8,$3F,$47,$17,$6F,$8F,$FF,$07,$A1,$93,$8D,$F7 ; $D0C33D
    db $41,$3F,$D0,$E0,$01,$B8,$78,$E8,$F0,$78,$F0,$70,$F8,$FC,$78,$BC ; $D0C34D
    db $78,$B8,$7C,$18,$3F,$59,$D6,$5D,$97,$3F,$8B,$EA,$F2,$3E,$F9,$BE ; $D0C35D
    db $B8,$3C,$A3,$BA,$B0,$9F,$9C,$30,$0F,$62,$1C,$25,$19,$F5,$07,$61 ; $D0C36D
    db $03,$E7,$1F,$77,$0F,$7C,$19,$F7,$FF,$5F,$AF,$A9,$B2,$D0,$DA,$98 ; $D0C37D
    db $D7,$A9,$CF,$10,$9F,$25,$7C,$BC,$FC,$54,$D8,$06,$09,$66,$29,$66 ; $D0C38D
    db $81,$7E,$E0,$FF,$C5,$FA,$3F,$C0,$57,$A8,$18,$2E,$3F,$28,$7D,$EE ; $D0C39D
    db $29,$EF,$60,$E7,$3C,$FF,$18,$7B,$AA,$BB,$07,$17,$D7,$D7,$11,$00 ; $D0C3AD
    db $10,$00,$18,$00,$08,$00,$8C,$C0,$47,$EC,$00,$2C,$FF,$19,$80,$FF ; $D0C3BD
    db $AB,$78,$AE,$ED,$76,$31,$FF,$1D,$90,$7E,$F1,$80,$69,$88,$2B,$DC ; $D0C3CD
    db $2C,$C0,$B8,$61,$40,$01,$10,$60,$60,$FE,$1E,$AE,$BE,$00,$38,$70 ; $D0C3DD
    db $F0,$48,$C8,$14,$D4,$38,$F8,$8A,$6A,$4E,$AE,$BC,$5C,$DC,$3C,$11 ; $D0C3ED
    db $30,$00,$14,$38,$00,$1C,$01,$73,$0E,$01,$AE,$C8,$07,$EA,$5F,$88 ; $D0C3FD
    db $03,$10,$40,$3F,$08,$0B,$0C,$CE,$01,$03,$99,$2B,$58,$24,$07,$EB ; $D0C40D
    db $14,$7D,$07,$04,$E4,$01,$27,$00,$7F,$C6,$01,$7A,$01,$08,$3F,$E3 ; $D0C41D
    db $5E,$81,$EC,$03,$D6,$01,$CC,$03,$C6,$01,$4C,$A3,$C4,$23,$0C,$B3 ; $D0C42D
    db $F4,$02,$B8,$FF,$DF,$01,$CF,$FF,$19,$DC,$BF,$63,$30,$83,$B6,$09 ; $D0C43D
    db $10,$AB,$A8,$15,$0A,$94,$8A,$25,$88,$33,$85,$22,$F8,$F3,$01,$E3 ; $D0C44D
    db $FF,$1C,$F9,$FF,$DE,$3D,$78,$DF,$19,$3F,$10,$8F,$5C,$34,$78,$E3 ; $D0C45D
    db $61,$B6,$E4,$52,$E0,$47,$EB,$04,$21,$51,$C0,$3E,$E7,$DF,$AF,$01 ; $D0C46D
    db $CF,$00,$BF,$DE,$BF,$1E,$FF,$8F,$FE,$FD,$79,$FE,$18,$3F,$5C,$73 ; $D0C47D
    db $78,$14,$B0,$D4,$70,$94,$F0,$16,$73,$92,$F4,$34,$F4,$10,$F0,$C3 ; $D0C48D
    db $80,$4B,$80,$0B,$80,$8B,$00,$88,$EC,$C3,$08,$EA,$7D,$89,$18,$3F ; $D0C49D
    db $75,$2F,$2B,$1D,$3A,$1C,$5A,$0C,$8B,$0F,$09,$04,$0C,$0E,$18,$16 ; $D0C4AD
    db $11,$DA,$04,$D8,$07,$B9,$07,$18,$07,$09,$06,$03,$00,$0F,$07,$0E ; $D0C4BD
    db $0F,$F5,$18,$3F,$D7,$FA,$4B,$08,$64,$60,$1E,$08,$E4,$FA,$9B,$B4 ; $D0C4CD
    db $C0,$1F,$57,$B3,$E0,$94,$C0,$97,$0E,$FF,$FE,$1F,$FE,$24,$00,$3F ; $D0C4DD
    db $0F,$80,$2F,$80,$3F,$FF,$0A,$6F,$3D,$37,$53,$93,$AE,$01,$BF,$76 ; $D0C4ED
    db $35,$7E,$AC,$6F,$A1,$50,$92,$57,$D3,$D0,$D6,$F7,$B3,$66,$62,$48 ; $D0C4FD
    db $DF,$41,$5F,$40,$5F,$4D,$63,$A8,$47,$29,$C7,$08,$C7,$09,$97,$10 ; $D0C50D
    db $EA,$FF,$7F,$61,$0F,$2D,$01,$55,$74,$01,$2B,$03,$17,$17,$1F,$0F ; $D0C51D
    db $2D,$2C,$6D,$4C,$FB,$32,$FE,$FF,$F8,$FE,$F0,$FC,$E0,$F8,$E0,$F0 ; $D0C52D
    db $C0,$F3,$84,$F3,$C1,$FF,$19,$DC,$7F,$73,$E3,$80,$EF,$93,$F3,$CC ; $D0C53D
    db $F9,$F6,$FE,$FD,$3B,$12,$6C,$08,$9C,$04,$12,$65,$8E,$9B,$08,$F0 ; $D0C54D
    db $0A,$E1,$FC,$0F,$F0,$FF,$08,$03,$18,$0B,$3F,$5B,$FA,$B7,$A7,$71 ; $D0C55D
    db $A6,$02,$EB,$22,$3F,$0E,$1F,$87,$CF,$03,$C5,$81,$01,$FC,$0A,$FC ; $D0C56D
    db $98,$7D,$00,$1D,$10,$01,$08,$01,$84,$01,$44,$8B,$19,$3F,$FF,$7C ; $D0C57D
    db $96,$3F,$27,$DE,$91,$FF,$D0,$FB,$F7,$F4,$FC,$F9,$C1,$D3,$CB,$83 ; $D0C58D
    db $00,$18,$C0,$0F,$E0,$01,$00,$0C,$E0,$08,$E3,$18,$E6,$18,$E4,$F5 ; $D0C59D
    db $18,$3F,$C2,$D9,$27,$E2,$93,$68,$98,$E6,$1A,$AD,$D2,$5F,$60,$2D ; $D0C5AD
    db $20,$1D,$C8,$00,$4C,$E8,$FD,$C5,$00,$41,$0E,$00,$00,$80,$20,$A7 ; $D0C5BD
    db $6B,$FE,$18,$FF,$00,$5C,$7A,$62,$00,$BB,$80,$C1,$50,$71,$A4,$B8 ; $D0C5CD
    db $39,$C6,$EE,$11,$F9,$06,$FE,$01,$E0,$2D,$8F,$00,$47,$00,$39,$E9 ; $D0C5DD
    db $7D,$7F,$01,$19,$D7,$BF,$7F,$2E,$FF,$30,$B3,$30,$B6,$31,$FC,$01 ; $D0C5ED
    db $CC,$81,$8C,$60,$A4,$FC,$0C,$80,$00,$CF,$00,$CE,$90,$4F,$FC,$03 ; $D0C5FD
    db $7C,$03,$1E,$5C,$03,$F3,$19,$3F,$B8,$65,$04,$63,$13,$CF,$9C,$7C ; $D0C60D
    db $3A,$F9,$35,$F3,$23,$E6,$C8,$FB,$C3,$E4,$E0,$1F,$C0,$3F,$03,$FF ; $D0C61D
    db $06,$FF,$0C,$FE,$18,$1E,$4C,$F0,$18,$1A,$7F,$EF,$7B,$F3,$8A,$20 ; $D0C62D
    db $1B,$0B,$FB,$04,$C1,$BD,$33,$EF,$FF,$B0,$12,$7D,$F6,$08,$3F,$72 ; $D0C63D
    db $07,$98,$0B,$BC,$07,$BC,$49,$FA,$DF,$F2,$FD,$60,$FD,$40,$DD,$20 ; $D0C64D
    db $40,$E0,$40,$C0,$C0,$01,$04,$C0,$00,$CC,$82,$07,$DC,$82,$FC,$C2 ; $D0C65D
    db $FC,$F6,$18,$7F,$E3,$FD,$03,$FE,$02,$F8,$04,$FD,$05,$F0,$09,$E1 ; $D0C66D
    db $18,$EB,$1A,$C8,$3B,$16,$BA,$1A,$02,$D3,$16,$04,$02,$21,$02,$00 ; $D0C67D
    db $01,$E2,$17,$00,$A8,$38,$E3,$B8,$C4,$7C,$82,$C9,$37,$9E,$77,$34 ; $D0C68D
    db $CD,$3A,$FB,$64,$E7,$44,$83,$A5,$3D,$9C,$75,$02,$3C,$7D,$18,$19 ; $D0C69D
    db $00,$3F,$55,$55,$6A,$6A,$30,$3A,$30,$01,$AB,$FA,$BE,$97,$80,$25 ; $D0C6AD
    db $99,$42,$DA,$2A,$80,$15,$80,$4C,$83,$30,$CF,$80,$7F,$01,$7E,$42 ; $D0C6BD
    db $3C,$05,$FB,$19,$BF,$75,$05,$07,$0A,$0E,$D1,$18,$B7,$30,$4D,$42 ; $D0C6CD
    db $9A,$84,$31,$09,$62,$13,$88,$70,$11,$E0,$24,$C3,$40,$8F,$A0,$1F ; $D0C6DD
    db $41,$3E,$82,$7C,$04,$F8,$F5,$18,$3F,$C6,$AA,$80,$54,$00,$E2,$03 ; $D0C6ED
    db $4B,$8C,$2F,$30,$B8,$C7,$62,$9E,$C8,$39,$27,$98,$1D,$35,$10,$E0 ; $D0C6FD
    db $91,$87,$00,$47,$8B,$8B,$19,$C0,$10,$00,$8C,$1F,$7F,$80,$E0,$1F ; $D0C70D
    db $0F,$FF,$60,$E0,$45,$3A,$B3,$BC,$09,$E6,$60,$F3,$BC,$18,$0F,$D2 ; $D0C71D
    db $FF,$40,$FF,$18,$17,$3E,$3D,$3A,$1E,$38,$F9,$F6,$0C,$3D,$C0,$F7 ; $D0C72D
    db $FA,$0C,$0E,$A6,$07,$C3,$02,$CC,$07,$B5,$CC,$03,$C0,$00,$01,$71 ; $D0C73D
    db $81,$18,$15,$E1,$0C,$F1,$D3,$14,$00,$03,$92,$01,$E3,$AF,$FC,$09 ; $D0C74D
    db $3F,$B9,$D7,$1E,$B7,$74,$56,$8D,$F8,$44,$C8,$33,$90,$67,$05,$CF ; $D0C75D
    db $25,$C5,$C1,$E3,$88,$CB,$AC,$FB,$C3,$BF,$FC,$0F,$01,$FA,$19,$B8 ; $D0C76D
    db $BF,$C1,$FB,$C6,$B9,$6E,$FB,$40,$3D,$22,$DF,$01,$DF,$10,$EC,$43 ; $D0C77D
    db $ED,$41,$7E,$7C,$3C,$FC,$3C,$BE,$FC,$3E,$04,$BE,$03,$01,$7A,$8E ; $D0C78D
    db $19,$3F,$EB,$8F,$8E,$A2,$A1,$D5,$D6,$E5,$E2,$7D,$F8,$6C,$E9,$F4 ; $D0C79D
    db $F5,$68,$49,$7E,$01,$5C,$03,$2D,$03,$19,$07,$0B,$07,$1B,$07,$0F ; $D0C7AD
    db $03,$D7,$23,$E1,$18,$3F,$43,$C5,$FD,$16,$70,$AC,$19,$1F,$E0,$02 ; $D0C7BD
    db $39,$C6,$08,$D7,$39,$FE,$28,$C1,$F7,$03,$00,$AE,$17,$3F,$BE,$97 ; $D0C7CD
    db $F7,$85,$F5,$C5,$71,$07,$B1,$45,$F1,$4D,$79,$5C,$38,$DF,$33,$0C ; $D0C7DD
    db $00,$8E,$00,$0A,$84,$4A,$84,$48,$86,$C8,$86,$89,$C6,$82,$CC,$18 ; $D0C7ED
    db $3F,$B8,$F9,$BF,$CC,$9D,$EE,$B7,$CE,$9E,$E7,$AF,$D7,$9B,$E7,$CF ; $D0C7FD
    db $F3,$14,$6B,$06,$1D,$80,$FD,$19,$7F,$B8,$C7,$FE,$1C,$FE,$1D,$EE ; $D0C80D
    db $0D,$EC,$0D,$FC,$1D,$7E,$BF,$5A,$83,$69,$B3,$D4,$F3,$1E,$01,$0D ; $D0C81D
    db $1C,$00,$24,$18,$01,$27,$DB,$AE,$12,$3F,$31,$00,$07,$F0,$F7,$A0 ; $D0C82D
    db $A7,$C0,$CF,$A4,$AB,$4C,$43,$88,$83,$4A,$49,$FB,$F3,$87,$5F,$0F ; $D0C83D
    db $37,$0F,$57,$0F,$B7,$0F,$77,$0F,$BF,$07,$6F,$C4,$15,$06,$3F,$C5 ; $D0C84D
    db $22,$0C,$B3,$03,$00,$00,$A3,$B7,$30,$02,$A1,$BF,$38,$CA,$07,$DF ; $D0C85D
    db $FC,$B5,$8F,$05,$C7,$1B,$FA,$BF,$CD,$E3,$72,$14,$32,$E8,$76,$10 ; $D0C86D
    db $37,$FA,$75,$3B,$34,$A1,$2C,$51,$0E,$8F,$CC,$39,$03,$CE,$38,$FF ; $D0C87D
    db $8E,$03,$DE,$3D,$FF,$FC,$19,$3F,$72,$17,$C9,$36,$8B,$20,$99,$62 ; $D0C88D
    db $1F,$44,$3B,$0C,$77,$C0,$33,$8D,$77,$3C,$FE,$7E,$FC,$CE,$01,$F8 ; $D0C89D
    db $41,$01,$04,$F0,$F6,$19,$2E,$7F,$38,$3D,$FA,$5C,$FD,$3B,$FF,$69 ; $D0C8AD
    db $FF,$3C,$FF,$5D,$FF,$3E,$FF,$97,$97,$04,$5F,$37,$02,$87,$E5,$68 ; $D0C8BD
    db $E1,$19,$7F,$11,$10,$11,$74,$F8,$DD,$DA,$C7,$B9,$26,$E2,$7D,$42 ; $D0C8CD
    db $DD,$D3,$39,$F9,$1E,$0F,$16,$0F,$E8,$07,$81,$7E,$1B,$04,$C0,$3F ; $D0C8DD
    db $31,$0E,$06,$F5,$19,$3F,$CB,$BD,$F5,$BA,$F2,$95,$C5,$7C,$04,$6C ; $D0C8ED
    db $03,$7E,$57,$F0,$C3,$3E,$07,$80,$3A,$80,$3D,$00,$03,$88,$03,$80 ; $D0C8FD
    db $1F,$88,$1F,$1C,$1F,$1F,$38,$DF,$09,$E7,$2F,$A5,$01,$01,$FB,$C3 ; $D0C90D
    db $87,$EF,$E7,$9D,$8C,$3F,$1F,$7F,$08,$DF,$10,$BF,$20,$5C,$CD,$40 ; $D0C91D
    db $00,$38,$1F,$03,$16,$87,$77,$7F,$3D,$17,$EB,$C1,$3F,$FD,$19,$7F ; $D0C92D
    db $17,$FD,$81,$FF,$0C,$23,$C3,$81,$FA,$12,$FC,$08,$F7,$04,$F3,$02 ; $D0C93D
    db $F9,$FA,$FE,$70,$C0,$16,$E2,$FD,$1D,$F2,$FD,$F8,$9E,$7D,$FE,$19 ; $D0C94D
    db $3F,$00,$BF,$30,$57,$42,$2F,$0F,$9F,$11,$35,$E3,$E2,$EE,$CB,$C7 ; $D0C95D
    db $06,$E1,$00,$89,$60,$10,$A0,$C0,$F2,$60,$FE,$21,$1C,$8E,$40,$26 ; $D0C96D
    db $D9,$10,$EF,$D7,$18,$3F,$3C,$ED,$80,$FE,$02,$FD,$09,$FD,$11,$E7 ; $D0C97D
    db $67,$6C,$20,$9D,$80,$9E,$82,$44,$03,$8C,$01,$10,$06,$26,$0F,$FF ; $D0C98D
    db $1E,$0F,$FF,$7E,$FF,$7C,$19,$07,$7F,$FF,$A7,$7F,$46,$78,$C5,$80 ; $D0C99D
    db $21,$BF,$00,$01,$85,$FA,$08,$C0,$21,$78,$70,$80,$FE,$03,$A8,$AF ; $D0C9AD
    db $E0,$05,$FE,$E3,$01,$FC,$C1,$09,$3F,$EF,$90,$6F,$90,$E7,$04,$0F ; $D0C9BD
    db $40,$E5,$07,$9F,$F0,$52,$71,$80,$FE,$11,$F8,$FF,$06,$01,$FE,$01 ; $D0C9CD
    db $FB,$18,$F8,$6F,$08,$31,$80,$7F,$AC,$85,$02,$00,$EF,$10,$FA,$05 ; $D0C9DD
    db $D5,$2A,$A8,$57,$F3,$28,$3F,$0F,$A4,$9F,$F5,$0A,$08,$EA,$15,$50 ; $D0C9ED
    db $AF,$F4,$75,$03,$FC,$F1,$28,$3F,$B5,$4A,$80,$3B,$44,$BB,$90,$6F ; $D0C9FD
    db $01,$FE,$0E,$70,$8F,$BA,$45,$99,$C9,$A0,$00,$C8,$32,$1E,$00,$69 ; $D0CA0D
    db $10,$18,$3F,$17,$FF,$22,$EF,$1E,$92,$7D,$92,$71,$7A,$31,$72,$83 ; $D0CA1D
    db $A8,$4E,$DD,$CA,$5D,$C0,$FC,$60,$00,$01,$30,$FC,$B4,$78,$04,$78 ; $D0CA2D
    db $20,$3F,$18,$00,$19,$E0,$3F,$C0,$33,$81,$73,$85,$06,$77,$15,$F7 ; $D0CA3D
    db $02,$E6,$01,$01,$0A,$EE,$2C,$EC,$08,$04,$04,$16,$86,$78,$08,$11 ; $D0CA4D
    db $08,$09,$7B,$1E,$11,$02,$11,$18,$3F,$2E,$EA,$FF,$1B,$EA,$EA,$80 ; $D0CA5D
    db $80,$05,$00,$1D,$02,$39,$07,$5F,$3F,$75,$00,$11,$15,$00,$75,$0A ; $D0CA6D
    db $C0,$3F,$80,$AB,$37,$E0,$D5,$97,$18,$3F,$A4,$1C,$E4,$D5,$EC,$04 ; $D0CA7D
    db $03,$F1,$0F,$4F,$BE,$5C,$FA,$DC,$C4,$15,$31,$0A,$71,$03,$20,$70 ; $D0CA8D
    db $8F,$3B,$04,$07,$FF,$39,$FE,$88,$7E,$8B,$18,$3F,$85,$66,$97,$6B ; $D0CA9D
    db $CC,$D6,$99,$BD,$33,$7A,$66,$5D,$64,$F3,$C8,$A8,$D8,$08,$F0,$10 ; $D0CAAD
    db $E0,$20,$C0,$7C,$BD,$81,$82,$63,$01,$57,$01,$06,$C5,$18,$3F,$A2 ; $D0CABD
    db $66,$C7,$54,$CF,$97,$B8,$3E,$61,$AA,$46,$97,$0F,$69,$11,$CC,$0C ; $D0CACD
    db $11,$0F,$BD,$F3,$4B,$7F,$A1,$92,$82,$7C,$12,$E1,$E1,$18,$3F,$DD ; $D0CADD
    db $1A,$62,$72,$2D,$D9,$9E,$E6,$8D,$F9,$4E,$30,$C0,$FE,$FF,$A4,$67 ; $D0CAED
    db $E0,$FF,$D0,$FF,$60,$FF,$70,$EB,$BA,$B6,$07,$87,$7B,$18,$FC,$19 ; $D0CAFD
    db $FF,$A2,$02,$00,$C9,$01,$E1,$01,$D1,$01,$E9,$01,$C0,$00,$89,$F9 ; $D0CB0D
    db $8B,$0F,$04,$60,$F9,$37,$06,$F8,$02,$FC,$C6,$03,$E2,$1C,$BC,$DF ; $D0CB1D
    db $CB,$0C,$FF,$F3,$05,$E8,$A1,$60,$00,$70,$B8,$47,$04,$38,$40,$9F ; $D0CB2D
    db $A0,$EF,$00,$C7,$80,$C7,$0C,$C7,$EE,$32,$16,$7F,$FF,$BF,$7F,$7F ; $D0CB3D
    db $1F,$DF,$0F,$4B,$07,$C5,$03,$E3,$75,$AA,$B1,$20,$37,$3F,$30,$01 ; $D0CB4D
    db $8B,$08,$3F,$01,$1E,$8C,$11,$0E,$10,$0F,$D0,$17,$1F,$FF,$19,$F6 ; $D0CB5D
    db $10,$F9,$16,$D0,$EE,$FF,$00,$01,$FE,$EF,$DF,$E0,$D0,$EF,$0F,$D6 ; $D0CB6D
    db $EF,$FF,$EF,$18,$BA,$3F,$99,$E7,$FA,$2A,$E9,$73,$C2,$F3,$B3,$D7 ; $D0CB7D
    db $D7,$E3,$03,$96,$76,$11,$81,$95,$63,$34,$C3,$4E,$81,$8F,$00,$EF ; $D0CB8D
    db $DF,$CF,$C7,$01,$6E,$F0,$AE,$18,$3F,$BF,$00,$F7,$21,$DC,$A6,$1D ; $D0CB9D
    db $C7,$72,$87,$B9,$60,$16,$A8,$84,$75,$B9,$DF,$FF,$D3,$FF,$54,$FB ; $D0CBAD
    db $5A,$BD,$DD,$3E,$AD,$7E,$D7,$6E,$26,$CE,$19,$F1,$7F,$32,$AF,$67 ; $D0CBBD
    db $74,$2C,$60,$3F,$F7,$9C,$50,$DF,$17,$DC,$80,$DF,$97,$83,$CC,$96 ; $D0CBCD
    db $C8,$93,$CC,$16,$C8,$33,$CC,$36,$C8,$A3,$5C,$B6,$48,$F0,$18,$3F ; $D0CBDD
    db $CC,$F3,$06,$06,$79,$CE,$F1,$36,$69,$07,$02,$34,$6A,$CD,$F5,$80 ; $D0CBED
    db $F1,$55,$6B,$83,$03,$81,$A9,$73,$3D,$0E,$01,$18,$3F,$72,$6D,$D7 ; $D0CBFD
    db $0C,$BE,$42,$F6,$58,$2C,$95,$FD,$A2,$4B,$3C,$FF,$15,$52,$00,$38 ; $D0CC0D
    db $49,$30,$C3,$01,$83,$70,$93,$03,$CE,$E1,$24,$C3,$A8,$C7,$C2,$18 ; $D0CC1D
    db $3F,$8A,$8D,$00,$E3,$05,$44,$41,$E4,$E1,$E6,$21,$4C,$8B,$78,$EF ; $D0CC2D
    db $78,$CF,$7B,$07,$FB,$43,$01,$3B,$C7,$07,$01,$6B,$97,$4B,$B7,$97 ; $D0CC3D
    db $18,$3F,$AC,$1E,$3B,$E0,$33,$C4,$1B,$04,$D3,$20,$D7,$2C,$D3,$00 ; $D0CC4D
    db $D7,$4C,$B3,$C7,$F8,$BF,$E7,$FF,$EF,$9B,$01,$FD,$1A,$FF,$B8,$61 ; $D0CC5D
    db $A1,$1E,$A7,$58,$43,$BA,$01,$FC,$07,$FA,$07,$F3,$76,$06,$EA,$FC ; $D0CC6D
    db $1D,$75,$00,$FD,$FA,$FD,$F8,$FD,$F9,$FC,$F1,$E7,$01,$85,$18,$3F ; $D0CC7D
    db $D8,$2E,$8B,$CB,$6F,$B5,$4D,$97,$47,$07,$09,$C9,$4F,$6B,$BB,$E8 ; $D0CC8D
    db $F8,$F9,$F0,$F1,$F0,$E3,$F0,$EB,$01,$05,$FE,$70,$80,$27,$C0,$C7 ; $D0CC9D
    db $FF,$19,$7F,$B9,$40,$CF,$CF,$F7,$F7,$CC,$CF,$F1,$F6,$DF,$D9,$22 ; $D0CCAD
    db $3A,$47,$66,$B1,$D0,$F0,$00,$E8,$00,$03,$E0,$01,$03,$C1,$07,$99 ; $D0CCBD
    db $0F,$2F,$1F,$D1,$10,$3F,$C0,$31,$0F,$00,$1F,$C2,$01,$E6,$77,$87 ; $D0CCCD
    db $E1,$D7,$02,$4F,$05,$CD,$0C,$83,$02,$8E,$0A,$15,$15,$80,$18,$10 ; $D0CCDD
    db $0F,$70,$3F,$70,$FB,$30,$F0,$FB,$C1,$F0,$FD,$E8,$79,$FE,$08,$3F ; $D0CCED
    db $01,$C7,$35,$3F,$FB,$01,$7D,$DE,$8B,$CF,$43,$2F,$06,$A7,$F8,$73 ; $D0CCFD
    db $3F,$16,$F8,$62,$37,$05,$E7,$65,$27,$01,$3C,$9F,$38,$DF,$0C,$9F ; $D0CD0D
    db $28,$DF,$0D,$9E,$29,$DE,$08,$9E,$28,$DE,$F5,$18,$FF,$3E,$71,$00 ; $D0CD1D
    db $BB,$02,$74,$04,$EB,$8B,$F6,$96,$DD,$8D,$6B,$29,$3F,$1A,$7F,$EF ; $D0CD2D
    db $DC,$33,$3D,$7A,$FD,$70,$7C,$60,$79,$E0,$73,$40,$F7,$C0,$67,$18 ; $D0CD3D
    db $3F,$75,$5E,$40,$0D,$01,$BD,$A9,$56,$45,$BF,$98,$EE,$B1,$D9,$67 ; $D0CD4D
    db $76,$4E,$BF,$FF,$9E,$7F,$10,$7E,$22,$F8,$50,$E0,$15,$C0,$6E,$80 ; $D0CD5D
    db $1A,$81,$FF,$19,$8B,$7F,$81,$CE,$08,$86,$FF,$88,$F7,$04,$FA,$06 ; $D0CD6D
    db $B9,$40,$81,$81,$1B,$02,$10,$2E,$07,$FF,$1E,$77,$0F,$03,$0F,$AC ; $D0CD7D
    db $01,$F0,$00,$80,$7E,$E4,$1F,$18,$3F,$17,$9F,$81,$99,$4F,$00,$DB ; $D0CD8D
    db $42,$FE,$C4,$FE,$04,$F5,$40,$ED,$68,$FB,$14,$7C,$FE,$7D,$FE,$3C ; $D0CD9D
    db $FC,$3A,$FC,$78,$FC,$B8,$7C,$14,$38,$A8,$18,$55,$7D,$2F,$05,$7F ; $D0CDAD
    db $09,$D1,$9F,$D7,$78,$70,$1D,$01,$E0,$F7,$F1,$F8,$9F,$03,$01,$F0 ; $D0CDBD
    db $15,$F3,$BB,$F5,$0A,$FE,$2A,$BF,$FD,$18,$02,$DA,$25,$37,$78,$87 ; $D0CDCD
    db $00,$D4,$2B,$A0,$5F,$40,$BF,$02,$FD,$F3,$06,$2D,$02,$DA,$19,$3F ; $D0CDDD
    db $33,$3A,$A5,$12,$00,$ED,$05,$FA,$2F,$D0,$17,$E8,$BF,$4A,$42,$00 ; $D0CDED
    db $5B,$12,$00,$05,$00,$2F,$00,$1F,$17,$00,$BD,$1A,$EB,$7F,$F8,$0B ; $D0CDFD
    db $37,$57,$A8,$BE,$9F,$41,$EF,$10,$7E,$80,$FF,$08,$FF,$50,$03,$00 ; $D0CE0D
    db $29,$00,$52,$00,$BA,$00,$EB,$00,$7B,$00,$F3,$00,$A9,$AE,$19,$3F ; $D0CE1D
    db $BE,$A3,$74,$21,$38,$10,$2C,$40,$3E,$82,$C4,$00,$F1,$08,$F0,$0F ; $D0CE2D
    db $72,$A5,$18,$E2,$1C,$21,$DE,$30,$CF,$90,$6F,$99,$66,$9F,$60,$94 ; $D0CE3D
    db $60,$18,$3F,$17,$42,$C5,$14,$4F,$F3,$0E,$E3,$56,$C9,$01,$55,$49 ; $D0CE4D
    db $D8,$10,$DA,$A4,$6C,$2C,$10,$00,$0C,$1C,$0C,$04,$3E,$8A,$66,$02 ; $D0CE5D
    db $27,$25,$03,$11,$19,$F2,$BF,$EB,$01,$C8,$0D,$CC,$48,$C9,$16,$95 ; $D0CE6D
    db $1B,$98,$13,$90,$88,$88,$80,$00,$26,$11,$10,$23,$14,$23,$48,$23 ; $D0CE7D
    db $24,$43,$2C,$43,$30,$47,$3D,$C2,$E2,$18,$3F,$2B,$F3,$E3,$16,$E7 ; $D0CE8D
    db $2B,$CF,$5D,$9F,$97,$1F,$2B,$3F,$17,$3F,$6B,$7F,$04,$F8,$1F,$81 ; $D0CE9D
    db $57,$00,$DF,$83,$C0,$03,$4F,$B7,$85,$10,$00,$83,$9B,$9A,$D3,$83 ; $D0CEAD
    db $96,$87,$94,$87,$AD,$8E,$A9,$8E,$1B,$1C,$13,$1C,$40,$3C,$44,$38 ; $D0CEBD
    db $40,$38,$48,$30,$00,$70,$10,$60,$80,$60,$E0,$C2,$19,$3F,$70,$90 ; $D0CECD
    db $41,$E3,$A1,$E5,$27,$CA,$0E,$95,$5D,$E8,$7A,$46,$F2,$31,$D4,$0A ; $D0CEDD
    db $05,$1E,$D0,$7D,$30,$00,$01,$20,$03,$01,$07,$09,$07,$03,$7A,$0F ; $D0CEED
    db $18,$3F,$E5,$63,$66,$57,$D0,$1F,$40,$BC,$80,$79,$01,$F3,$03,$E7 ; $D0CEFD
    db $07,$E7,$06,$91,$0F,$0F,$3F,$DF,$3D,$EB,$63,$79,$D7,$41,$F9,$D1 ; $D0CF0D
    db $07,$BF,$F1,$0A,$9E,$71,$F6,$07,$EC,$0F,$FA,$7F,$E2,$FD,$C5,$FA ; $D0CF1D
    db $8C,$F7,$63,$BF,$10,$F0,$8F,$55,$75,$80,$40,$F9,$08,$F0,$40,$3C ; $D0CF2D
    db $80,$0F,$03,$39,$0F,$A9,$27,$F2,$08,$00,$52,$E3,$83,$E1,$01,$50 ; $D0CF3D
    db $80,$FC,$0F,$C0,$FF,$30,$F1,$01,$03,$03,$07,$04,$DF,$FB,$3B,$03 ; $D0CF4D
    db $FC,$77,$41,$91,$47,$32,$3B,$3E,$00,$1F,$11,$E0,$3F,$0A,$C4,$10 ; $D0CF5D
    db $CD,$37,$0E,$DE,$2C,$FE,$7F,$F8,$F7,$D7,$D7,$AA,$0E,$AA,$C1,$03 ; $D0CF6D
    db $42,$A2,$32,$40,$A7,$28,$00,$55,$00,$EF,$BE,$F3,$20,$14,$F7,$7F ; $D0CF7D
    db $19,$15,$C2,$30,$C7,$A0,$57,$02,$7D,$8B,$65,$09,$37,$C3,$F0,$C1 ; $D0CF8D
    db $D8,$74,$37,$E6,$FF,$00,$70,$FE,$F0,$7F,$7F,$3F,$3E,$3F,$FB,$18 ; $D0CF9D
    db $97,$BF,$01,$91,$3C,$1E,$CE,$3D,$9C,$74,$72,$B3,$B8,$9E,$80,$F7 ; $D0CFAD
    db $0B,$C3,$C3,$6E,$F0,$21,$F0,$22,$C1,$89,$07,$77,$0F,$91,$F3,$3E ; $D0CFBD
    db $FC,$FF,$19,$E2,$FF,$31,$AB,$EB,$E7,$55,$9F,$4B,$B6,$16,$68,$28 ; $D0CFCD
    db $D0,$50,$54,$54,$FE,$5E,$44,$9E,$40,$BE,$2A,$F4,$CF,$E0,$97,$C0 ; $D0CFDD
    db $2F,$D8,$46,$5F,$A0,$F0,$18,$3F,$5C,$00,$DD,$B9,$F4,$95,$DC,$C5 ; $D0CFED
    db $BE,$AF,$7A,$5B,$11,$17,$04,$0C,$14,$14,$A3,$5C,$36,$48,$66,$18 ; $D0CFFD
    db $6C,$10,$DC,$20,$F8,$BC,$7F,$EF,$19,$7F,$0A,$5C,$E8,$75,$B4,$F6 ; $D0D00D
    db $14,$D0,$68,$ED,$A9,$A0,$65,$6B,$D6,$80,$8B,$53,$1D,$03,$01,$C3 ; $D0D01D
    db $3B,$07,$3A,$07,$76,$0F,$F5,$0E,$AD,$5E,$2E,$DC,$D7,$18,$3F,$2C ; $D0D02D
    db $79,$3F,$6B,$E7,$AD,$21,$DD,$D4,$5A,$43,$BB,$B1,$9B,$8A,$35,$36 ; $D0D03D
    db $89,$C6,$53,$8C,$01,$B6,$00,$09,$A6,$19,$75,$0A,$6E,$11,$FD,$78 ; $D0D04D
    db $03,$18,$3F,$48,$BB,$B8,$F0,$0A,$F8,$0F,$FF,$3C,$DA,$F0,$67,$C0 ; $D0D05D
    db $9F,$00,$7F,$01,$FE,$0F,$F7,$01,$F0,$19,$08,$E7,$6F,$9F,$BF,$DF ; $D0D06D
    db $D2,$19,$F2,$BF,$80,$33,$E5,$7E,$BE,$E1,$D8,$83,$7C,$06,$F8,$11 ; $D0D07D
    db $E2,$43,$8C,$05,$1A,$CF,$FF,$3F,$C0,$C7,$3F,$07,$38,$FC,$43,$89 ; $D0D08D
    db $E0,$C5,$19,$3F,$07,$FF,$CA,$38,$3F,$C6,$0A,$C3,$0C,$03,$1C,$FF ; $D0D09D
    db $5F,$F1,$B1,$73,$93,$E4,$F8,$C0,$00,$F3,$FC,$00,$39,$5F,$A0,$BE ; $D0D0AD
    db $40,$1C,$7A,$E0,$18,$3F,$E3,$C9,$F9,$CE,$3F,$B6,$CF,$A9,$B7,$CF ; $D0D0BD
    db $49,$C5,$C7,$02,$03,$E3,$E3,$2B,$70,$70,$43,$70,$80,$F8,$E8,$BF ; $D0D0CD
    db $7E,$1C,$19,$7F,$0C,$7A,$BA,$FD,$7D,$E8,$57,$B8,$4F,$FF,$D5,$2F ; $D0D0DD
    db $5D,$03,$0E,$02,$B9,$09,$45,$3F,$82,$A0,$4E,$A0,$5F,$A1,$5F,$06 ; $D0D0ED
    db $7F,$7F,$0A,$AF,$7F,$7F,$05,$E8,$7D,$AF,$AD,$56,$B8,$F7,$54,$FA ; $D0D0FD
    db $FA,$FF,$FA,$75,$F0,$9D,$81,$67,$78,$CB,$0B,$50,$FE,$A8,$19,$39 ; $D0D10D
    db $01,$0E,$DE,$74,$BD,$3F,$40,$F4,$18,$B7,$BF,$5F,$7D,$78,$BD,$98 ; $D0D11D
    db $FF,$E2,$77,$42,$F3,$62,$38,$0B,$FB,$60,$BE,$85,$01,$8E,$21,$4E ; $D0D12D
    db $11,$0C,$31,$8C,$01,$8C,$33,$C4,$0B,$84,$B3,$40,$18,$5D,$3F,$31 ; $D0D13D
    db $D6,$56,$FE,$74,$ED,$25,$AD,$28,$9D,$0C,$9D,$09,$9D,$1D,$14,$00 ; $D0D14D
    db $01,$EE,$00,$CF,$02,$DC,$13,$CC,$01,$FE,$20,$DE,$01,$2A,$DD,$EB ; $D0D15D
    db $18,$3F,$AF,$F8,$98,$E1,$20,$CE,$49,$1C,$90,$9B,$81,$5B,$01,$F9 ; $D0D16D
    db $58,$6D,$48,$2B,$04,$C2,$1D,$06,$30,$88,$60,$70,$00,$2A,$C0,$00 ; $D0D17D
    db $E0,$11,$E2,$8B,$18,$3F,$BC,$0C,$86,$E6,$60,$6F,$A5,$6E,$02,$BD ; $D0D18D
    db $20,$B6,$20,$7B,$03,$C9,$B8,$F8,$42,$BF,$1E,$FF,$42,$1F,$04,$01 ; $D0D19D
    db $0C,$40,$86,$4D,$34,$0D,$01,$4D,$18,$3F,$C7,$00,$5C,$F7,$3B,$98 ; $D0D1AD
    db $67,$08,$E7,$08,$7F,$30,$BF,$00,$E7,$A0,$EF,$D6,$BB,$60,$01,$0A ; $D0D1BD
    db $90,$00,$F0,$4C,$BB,$BB,$20,$FF,$02,$9D,$DA,$CD,$2B,$8F,$FF,$12 ; $D0D1CD
    db $BD,$93,$05,$EE,$08,$F3,$E0,$7B,$00,$06,$11,$C5,$08,$37,$F4,$0B ; $D0D1DD
    db $C3,$AA,$55,$F0,$0F,$A8,$57,$C0,$3F,$90,$6F,$40,$BF,$BC,$35,$FF ; $D0D1ED
    db $29,$45,$BF,$05,$FA,$02,$C3,$FD,$17,$E8,$4B,$B4,$1F,$E0,$AF,$50 ; $D0D1FD
    db $5F,$A0,$00,$BE,$B9,$02,$EF,$BA,$B9,$4B,$E3,$33,$AF,$00,$5F,$D8 ; $D0D20D
    db $19,$3F,$31,$BF,$45,$03,$FF,$02,$FF,$17,$FF,$2D,$81,$03,$BF,$FD ; $D0D21D
    db $6D,$5F,$DF,$BB,$75,$FD,$8E,$7F,$D2,$0F,$03,$40,$00,$92,$19,$2E ; $D0D22D
    db $3F,$FF,$3D,$B8,$FF,$50,$FF,$F0,$F7,$B8,$D7,$D8,$BB,$B5,$5A,$44 ; $D0D23D
    db $AE,$B0,$43,$F3,$F3,$0B,$00,$00,$05,$23,$00,$42,$00,$B3,$00,$47 ; $D0D24D
    db $F0,$19,$3F,$8F,$E0,$BF,$B8,$F0,$81,$ED,$83,$16,$3A,$10,$BD,$14 ; $D0D25D
    db $AD,$28,$F0,$49,$7A,$12,$60,$10,$01,$81,$60,$00,$83,$60,$B3,$40 ; $D0D26D
    db $CE,$01,$86,$01,$F7,$18,$3F,$80,$00                             ; $D0D27D
; ---- end of region ----


; ---- RNC method 2 block: 4194 bytes packed, 8836 unpacked (tools/rnc.py) ($D0D286-$D0E2F9) ----
    db $52,$4E,$43,$02,$00,$00,$22,$84,$00,$00,$10,$62,$87,$CA,$CD,$55 ; $D0D286
    db $02,$01,$2E,$BA,$00,$00,$80,$10,$00,$11,$40,$15,$80,$19,$47,$0C ; $D0D296
    db $C8,$14,$0E,$21,$C0,$21,$00,$2A,$25,$36,$60,$36,$A0,$42,$00,$57 ; $D0D2A6
    db $35,$25,$90,$73,$1F,$E9,$47,$00,$4A,$00,$AD,$00,$EF,$04,$10,$05 ; $D0D2B6
    db $32,$09,$33,$0D,$75,$11,$B6,$15,$F8,$19,$19,$1E,$3B,$22,$9D,$2A ; $D0D2C6
    db $1F,$2F,$05,$1F,$00,$D3,$10,$60,$1C,$04,$18,$84,$20,$E4,$2C,$A0 ; $D0D2D6
    db $2C,$06,$31,$27,$3D,$68,$4D,$C8,$51,$0C,$62,$8C,$72,$45,$45,$1C ; $D0D2E6
    db $70,$9C,$97,$1F,$48,$44,$04,$85,$00,$86,$08,$A6,$08,$C8,$10,$E9 ; $D0D2F6
    db $18,$0A,$19,$2B,$25,$6C,$29,$CF,$31,$AE,$2D,$10,$32,$32,$3E,$75 ; $D0D306
    db $46,$5C,$1F,$F4,$04,$00,$06,$00,$6C,$00,$8D,$08,$49,$00,$AF,$10 ; $D0D316
    db $D1,$14,$D5,$14,$18,$21,$99,$31,$FC,$39,$9E,$4E,$1B,$8C,$1F,$60 ; $D0D326
    db $A1,$08,$2E,$E4,$10,$50,$66,$21,$A0,$0C,$C2,$0C,$05,$11,$26,$19 ; $D0D336
    db $A9,$25,$CC,$25,$EA,$21,$2C,$2A,$91,$36,$1F,$3D,$1F,$00,$F7,$01 ; $D0D346
    db $E0,$35,$01,$FF,$7F,$06,$00,$76,$20,$C2,$07,$01,$00,$02,$00,$03 ; $D0D356
    db $67,$89,$05,$62,$8B,$07,$00,$E3,$08,$00,$09,$00,$0A,$00,$0B,$00 ; $D0D366
    db $0C,$00,$0D,$00,$0E,$00,$0F,$00,$D0,$20,$00,$5C,$12,$F9,$00,$13 ; $D0D376
    db $00,$14,$00,$15,$00,$16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$1B ; $D0D386
    db $00,$1C,$00,$1D,$00,$1E,$45,$85,$41,$21,$00,$22,$FF,$00,$23,$00 ; $D0D396
    db $24,$00,$25,$00,$26,$00,$27,$00,$28,$00,$29,$00,$2A,$00,$2B,$00 ; $D0D3A6
    db $2C,$00,$2D,$00,$2E,$00,$2F,$00,$30,$00,$31,$00,$32,$00,$33,$00 ; $D0D3B6
    db $34,$00,$35,$00,$36,$00,$37,$00,$38,$00,$39,$00,$3A,$00,$3B,$00 ; $D0D3C6
    db $3C,$00,$3D,$00,$3E,$00,$3F,$00,$40,$00,$41,$00,$42,$00,$43,$00 ; $D0D3D6
    db $44,$00,$45,$00,$46,$A0,$6F,$48,$00,$74,$49,$2E,$73,$4B,$FD,$00 ; $D0D3E6
    db $4C,$00,$4D,$00,$4E,$00,$4F,$00,$50,$00,$51,$00,$52,$00,$53,$00 ; $D0D3F6
    db $54,$00,$55,$00,$56,$00,$57,$00,$58,$00,$59,$00,$5A,$00,$5B,$00 ; $D0D406
    db $5C,$00,$5D,$00,$5E,$00,$5F,$16,$21,$2E,$01,$61,$5D,$00,$62,$00 ; $D0D416
    db $63,$00,$64,$00,$65,$00,$66,$00,$67,$00,$68,$00,$69,$00,$6A,$00 ; $D0D426
    db $6B,$03,$5D,$6D,$00,$6E,$DE,$03,$25,$20,$01,$5C,$6F,$3D,$00,$70 ; $D0D436
    db $00,$71,$00,$72,$00,$73,$00,$74,$00,$75,$2B,$3F,$80,$01,$76,$00 ; $D0D446
    db $77,$00,$78,$00,$07,$79,$00,$7A,$00,$7B,$85,$13,$25,$88,$6D,$52 ; $D0D456
    db $CB,$B6,$C4,$B6,$29,$5B,$62,$5B,$94,$AD,$31,$AD,$4A,$D6,$12,$01 ; $D0D466
    db $08,$01,$09,$00,$84,$8E,$01,$42,$3B,$01,$21,$78,$9F,$16,$00,$10 ; $D0D476
    db $10,$74,$40,$97,$C6,$21,$01,$3F,$00,$40,$99,$89,$27,$8D,$61,$F9 ; $D0D486
    db $AA,$C5,$BD,$C2,$5B,$E4,$5E,$E0,$AF,$70,$26,$70,$5C,$26,$0A,$06 ; $D0D496
    db $18,$06,$3F,$C7,$FF,$2B,$7F,$03,$05,$8B,$FF,$47,$FF,$83,$39,$03 ; $D0D4A6
    db $4C,$EF,$19,$73,$04,$00,$00,$B7,$B8,$E7,$F8,$EF,$F0,$CF,$0E,$F0 ; $D0D4B6
    db $DF,$E0,$9F,$0F,$01,$3E,$C1,$40,$25,$60,$3D,$00,$5F,$B4,$C3,$28 ; $D0D4C6
    db $0D,$CF,$28,$FF,$2A,$86,$70,$8F,$5A,$4F,$DF,$AF,$98,$03,$0F,$17 ; $D0D4D6
    db $0F,$07,$1F,$83,$01,$27,$0F,$03,$3F,$07,$7F,$18,$06,$3F,$CE,$0D ; $D0D4E6
    db $CD,$0F,$01,$2E,$D9,$1C,$38,$DA,$1F,$92,$1D,$FA,$3C,$90,$1E,$F2 ; $D0D4F6
    db $FC,$F0,$FC,$F1,$F8,$E2,$F9,$01,$E0,$FB,$07,$C1,$FB,$E1,$FB,$03 ; $D0D506
    db $43,$DB,$07,$DE,$03,$01,$08,$00,$2E,$B8,$A8,$50,$D0,$A0,$90,$70 ; $D0D516
    db $00,$E0,$20,$C0,$20,$40,$10,$B0,$08,$10,$6F,$10,$8F,$70,$1F,$E0 ; $D0D526
    db $01,$C6,$CD,$5F,$E0,$DB,$3D,$FF,$00,$06,$01,$EB,$08,$00,$AF,$06 ; $D0D536
    db $0E,$2C,$3C,$52,$52,$82,$C2,$2C,$AC,$1F,$CF,$C7,$3F,$51,$2F,$F1 ; $D0D546
    db $00,$E3,$00,$ED,$00,$BF,$40,$7F,$C0,$6F,$F0,$77,$F8,$9D,$7E,$80 ; $D0D556
    db $18,$3F,$93,$93,$45,$45,$40,$40,$0C,$05,$05,$B0,$B0,$05,$E6,$03 ; $D0D566
    db $E6,$D8,$D8,$6C,$00,$BA,$83,$25,$FE,$00,$FF,$DE,$0F,$01,$08,$00 ; $D0D576
    db $B8,$65,$C4,$C9,$72,$7C,$AB,$A4,$6D,$6A,$2F,$28,$8F,$88,$DD,$C7 ; $D0D586
    db $C2,$C0,$3E,$1F,$9F,$0F,$57,$0F,$9B,$07,$D9,$07,$F8,$9E,$01,$18 ; $D0D596
    db $3F,$08,$7E,$81,$03,$F0,$0C,$17,$AA,$55,$80,$B2,$3F,$31,$C2,$3C ; $D0D5A6
    db $0A,$0F,$FF,$60,$00,$7F,$FF,$1F,$79,$FF,$18,$3F,$07,$72,$1B,$F3 ; $D0D5B6
    db $05,$F9,$03,$FA,$00,$A8,$54,$15,$ED,$5F,$8E,$7E,$B5,$E3,$FC,$F9 ; $D0D5C6
    db $FE,$FD,$E0,$01,$FB,$FC,$F7,$07,$F8,$EE,$F1,$34,$CB,$85,$18,$3F ; $D0D5D6
    db $3D,$30,$66,$D3,$73,$C6,$EC,$FC,$84,$EB,$18,$55,$A3,$22,$4E,$06 ; $D0D5E6
    db $D6,$D2,$0D,$AA,$1D,$55,$3B,$B7,$7B,$6E,$F7,$4D,$FE,$9B,$FC,$3F ; $D0D5F6
    db $F5,$19,$7F,$D7,$69,$A5,$7F,$43,$56,$C6,$F2,$8A,$BC,$C4,$AC,$8C ; $D0D606
    db $E4,$14,$78,$88,$3A,$DC,$D8,$BC,$7D,$B8,$B5,$78,$B3,$78,$FB,$70 ; $D0D616
    db $6B,$F0,$67,$F0,$D7,$18,$3F,$2C,$4A,$4D,$22,$29,$45,$48,$B9,$B4 ; $D0D626
    db $5A,$5D,$8E,$81,$36,$30,$25,$35,$FB,$07,$F7,$0F,$01,$E3,$00,$0F ; $D0D636
    db $EB,$07,$F6,$0F,$DD,$0E,$CF,$7A,$18,$18,$3F,$E3,$02,$FC,$04,$F8 ; $D0D646
    db $02,$F4,$11,$C1,$CB,$08,$3F,$20,$C0,$BF,$CA,$4F,$18,$37,$F9,$FE ; $D0D656
    db $00,$EF,$F0,$B8,$C7,$E0,$1F,$80,$7F,$7E,$30,$19,$3F,$EE,$9C,$E3 ; $D0D666
    db $A0,$0A,$00,$70,$FA,$1B,$7F,$80,$37,$3F,$C0,$30,$05,$03,$00,$0A ; $D0D676
    db $F5,$9F,$30,$19,$17,$7F,$3E,$0A,$7F,$61,$B8,$B8,$F6,$E6,$79,$71 ; $D0D686
    db $3C,$38,$9C,$1C,$7E,$38,$F3,$FC,$E1,$1E,$C7,$00,$F9,$00,$7E,$10 ; $D0D696
    db $4B,$1F,$E0,$4B,$F6,$16,$3F,$60,$2E,$BF,$BF,$18,$CF,$CF,$07,$07 ; $D0D6A6
    db $83,$83,$E1,$E1,$49,$79,$A4,$BC,$11,$C0,$00,$07,$F0,$00,$F8,$00 ; $D0D6B6
    db $7C,$5D,$DD,$86,$D7,$97,$F0,$18,$3F,$EB,$A8,$E0,$01,$80,$9F,$C7 ; $D0D6C6
    db $A0,$E0,$B0,$F0,$21,$03,$17,$3F,$D7,$D4,$09,$3F,$1F,$3F,$0F,$BC ; $D0D6D6
    db $03,$08,$3F,$3F,$F0,$07,$01,$1D,$19,$3E,$B9,$CA,$3E,$F3,$E3,$07 ; $D0D6E6
    db $06,$03,$03,$01,$01,$54,$00,$B8,$00,$E1,$FE,$02,$C1,$0A,$F4,$F8 ; $D0D6F6
    db $FF,$FC,$FF,$FE,$1E,$84,$00,$17,$01,$17,$20,$7F,$60,$4F,$FF,$F0 ; $D0D706
    db $7F,$70,$DD,$9A,$E7,$C4,$FB,$E2,$E9,$F1,$D7,$00,$19,$80,$49,$00 ; $D0D716
    db $0C,$80,$14,$E0,$12,$E8,$01,$FC,$04,$FA,$18,$2E,$3F,$1C,$78,$1C ; $D0D726
    db $02,$10,$9A,$9A,$80,$90,$DB,$4A,$EF,$66,$77,$B0,$FC,$1C,$22,$DD ; $D0D736
    db $2C,$DF,$84,$7F,$2F,$5E,$84,$9A,$1F,$40,$1E,$0F,$A4,$03,$18,$3F ; $D0D746
    db $BA,$F8,$37,$20,$DB,$D0,$ED,$ED,$CF,$FA,$4D,$75,$33,$2D,$34,$3B ; $D0D756
    db $7E,$7D,$06,$F8,$C2,$3C,$80,$1E,$B0,$07,$38,$83,$12,$C0,$0C,$C0 ; $D0D766
    db $62,$80,$18,$3F,$3F,$34,$18,$D7,$86,$A4,$C3,$48,$FB,$B9,$77,$B0 ; $D0D776
    db $03,$03,$7F,$BF,$EF,$10,$0A,$D8,$48,$3B,$84,$1B,$13,$80,$08,$C0 ; $D0D786
    db $02,$FC,$40,$FC,$7F,$18,$3F,$8F,$07,$00,$9F,$00,$EF,$50,$46,$3B ; $D0D796
    db $0B,$15,$C0,$FF,$80,$8E,$9F,$40,$80,$FB,$35,$30,$BF,$99,$17,$8B ; $D0D7A6
    db $76,$F8,$CD,$B1,$01,$E0,$D7,$DB,$F5,$08,$3F,$C3,$FD,$02,$F6,$09 ; $D0D7B6
    db $FC,$03,$EA,$15,$F5,$0A,$F8,$07,$1F,$03,$D8,$27,$18,$7F,$6F,$08 ; $D0D7C6
    db $00,$3F,$40,$BF,$02,$FD,$80,$7F,$01,$18,$FE,$04,$FB,$03,$22,$DD ; $D0D7D6
    db $3A,$05,$FA,$6A,$11,$87,$53,$04,$1D,$03,$22,$47,$53,$97,$18,$3F ; $D0D7E6
    db $BF,$1E,$40,$6F,$91,$BF,$44,$7F,$81,$FF,$02,$BF,$49,$FF,$03,$FF ; $D0D7F6
    db $05,$BF,$F8,$AD,$BB,$00,$7E,$C0,$97,$00,$B6,$00,$FC,$00,$78,$FA ; $D0D806
    db $19,$3F,$FE,$BE,$5C,$FD,$7A,$7D,$F6,$F6,$FD,$BD,$FA,$FA,$EC,$EC ; $D0D816
    db $FA,$7A,$F4,$F4,$41,$00,$82,$87,$C1,$42,$07,$79,$13,$00,$85,$51 ; $D0D826
    db $C7,$E1,$18,$3F,$B7,$88,$17,$71,$28,$65,$5A,$61,$1E,$63,$1C,$3F ; $D0D836
    db $41,$7C,$00,$70,$0A,$67,$00,$C7,$EF,$8E,$7B,$C0,$00,$C1,$39,$47 ; $D0D846
    db $87,$01,$EB,$18,$3F,$AF,$B2,$47,$D1,$3F,$AA,$5F,$2D,$F6,$07,$EC ; $D0D856
    db $52,$AC,$44,$D8,$A9,$12,$9E,$01,$0C,$03,$38,$07,$10,$0F,$20,$1F ; $D0D866
    db $60,$1F,$01,$3E,$C3,$3C,$8B,$18,$3F,$18,$D6,$86,$25,$EB,$9C,$7B ; $D0D876
    db $50,$BF,$C3,$FF,$9D,$7E,$7E,$81,$10,$75,$21,$2E,$71,$00,$EB,$B3 ; $D0D886
    db $0F,$B7,$03,$85,$1C,$00,$8C,$F6,$12,$CB,$EC,$13,$EE,$A3,$DF,$65 ; $D0D896
    db $9E,$E6,$1D,$22,$DD,$65,$DB,$01,$02,$20,$03,$E0,$01,$C3,$A5,$BB ; $D0D8A6
    db $04,$D4,$BC,$43,$58,$19,$3F,$80,$2E,$FF,$40,$15,$7F,$F8,$AF,$20 ; $D0D8B6
    db $F7,$DC,$33,$2C,$DB,$18,$E7,$00,$F0,$FF,$60,$F0,$C0,$18,$EB,$3C ; $D0D8C6
    db $08,$1D,$00,$3E,$2E,$C2,$3E,$1D,$C4,$3B,$CC,$77,$98,$57,$A0,$4F ; $D0D8D6
    db $80,$9F,$60,$9F,$80,$F5,$01,$03,$03,$07,$07,$0F,$0C,$0F,$1F,$3F ; $D0D8E6
    db $1F,$02,$7F,$79,$3F,$18,$3F,$7F,$72,$FC,$EB,$0E,$F5,$07,$F5,$06 ; $D0D8F6
    db $E4,$06,$C4,$06,$8C,$0E,$18,$1E,$03,$FF,$F1,$FF,$F8,$98,$01,$F0 ; $D0D906
    db $FF,$3C,$E0,$FF,$18,$3F,$F8,$77,$3E,$C1,$F3,$35,$84,$8C,$E5,$75 ; $D0D916
    db $82,$6C,$1F,$27,$A3,$95,$3E,$F3,$C9,$0E,$F3,$73,$E0,$0F,$F8,$C1 ; $D0D926
    db $87,$78,$49,$47,$3E,$DF,$F3,$0F,$03,$67,$F5,$97,$08,$00,$03,$0C ; $D0D936
    db $05,$AA,$00,$2B,$D4,$78,$66,$5D,$5D,$AA,$AA,$FF,$73,$F8,$55,$F9 ; $D0D946
    db $4F,$76,$E1,$1F,$20,$FD,$7F,$CE,$35,$22,$6C,$A9,$1A,$2B,$04,$08 ; $D0D956
    db $40,$40,$80,$80,$06,$07,$3F,$35,$EF,$1F,$3B,$C7,$CE,$F1,$F3,$FC ; $D0D966
    db $01,$2B,$F8,$00,$F5,$0A,$F7,$19,$3F,$B9,$75,$6B,$3C,$BC,$99,$49 ; $D0D976
    db $8E,$26,$42,$52,$27,$2F,$7F,$87,$FF,$7F,$7F,$80,$FF,$C0,$EF,$00 ; $D0D986
    db $39,$FF,$38,$FB,$18,$03,$EE,$FD,$11,$19,$D7,$FF,$00,$1C,$04,$03 ; $D0D996
    db $8C,$8B,$0C,$0F,$8E,$8C,$4E,$4F,$0F,$0F,$FD,$FA,$F9,$07,$01,$F1 ; $D0D9A6
    db $18,$07,$F5,$03,$01,$F6,$01,$1F,$F7,$00,$F0,$19,$FC,$FF,$11,$70 ; $D0D9B6
    db $06,$0F,$1F,$A0,$20,$CF,$08,$01,$02,$FC,$05,$F9,$A8,$D6,$00,$D5 ; $D0D9C6
    db $44,$76,$C0,$79,$80,$00,$67,$FE,$A1,$FA,$19,$05,$BF,$FC,$0B,$39 ; $D0D9D6
    db $C6,$C4,$E4,$13,$20,$1F,$00,$FE,$FB,$E4,$19,$15,$78,$66,$08,$F7 ; $D0D9E6
    db $03,$74,$01,$41,$EE,$1F,$F7,$0E,$E5,$1E,$EB,$18,$3F,$AF,$4D,$29 ; $D0D9F6
    db $17,$FA,$26,$FF,$6C,$D4,$CB,$FA,$77,$54,$FD,$F2,$75,$E8,$FB,$F4 ; $D0DA06
    db $D0,$ED,$A4,$D9,$43,$B9,$C7,$31,$CD,$23,$51,$0F,$23,$1F,$97,$18 ; $D0DA16
    db $3F,$58,$0D,$18,$C8,$28,$B0,$10,$B0,$30,$90,$50,$60,$20,$60,$02 ; $D0DA26
    db $71,$A0,$F7,$E0,$D7,$E0,$CF,$E0,$EF,$C0,$AF,$C0,$9F,$C0,$DF,$80 ; $D0DA36
    db $5F,$FC,$19,$3F,$2A,$BA,$74,$23,$25,$24,$20,$23,$21,$2E,$50,$4F ; $D0DA46
    db $61,$6E,$A0,$9F,$C1,$DE,$D6,$19,$DF,$13,$DF,$17,$D7,$1F,$AF,$1F ; $D0DA56
    db $BF,$1F,$5F,$78,$BF,$18,$3F,$05,$07,$03,$82,$03,$C3,$03,$81,$01 ; $D0DA66
    db $01,$03,$A1,$01,$C1,$01,$E1,$01,$1D,$B9,$8E,$C2,$BB,$03,$1E,$01 ; $D0DA76
    db $18,$3F,$23,$5F,$A0,$E0,$A7,$AF,$D0,$17,$E8,$8F,$1B,$F0,$47,$F8 ; $D0DA86
    db $03,$E3,$08,$70,$C1,$18,$3F,$9C,$1C,$4E,$08,$82,$03,$CE,$08,$AC ; $D0DA96
    db $0C,$4C,$03,$4B,$0F,$42,$F0,$03,$CF,$01,$18,$00,$3F,$62,$7E,$B4 ; $D0DAA6
    db $BA,$63,$7D,$32,$18,$3D,$63,$7C,$03,$E2,$FD,$1D,$B3,$3C,$81,$CB ; $D0DAB6
    db $8F,$80,$AA,$FF,$80,$10,$01,$C0,$01,$03,$F2,$10,$3F,$01,$60,$01 ; $D0DAC6
    db $B0,$F0,$A8,$E8,$CB,$03,$68,$87,$A8,$F4,$F4,$7A,$FA,$7D,$FD,$3F ; $D0DAD6
    db $FF,$0F,$3F,$17,$7C,$F7,$57,$3F,$07,$0B,$FF,$05,$FF,$02,$AD,$0B ; $D0DAE6
    db $BF,$FB,$F7,$07,$0F,$7E,$00,$7D,$50,$69,$2F,$E9,$99,$03,$2A,$03 ; $D0DAF6
    db $0F,$08,$E7,$C0,$EC,$01,$7C,$ED,$41,$8F,$BC,$08,$F7,$18,$E8,$FF ; $D0DB06
    db $74,$78,$76,$00,$78,$73,$7C,$3F,$38,$51,$61,$F0,$C0,$B5,$20,$30 ; $D0DB16
    db $C0,$82,$FD,$22,$81,$FE,$00,$C1,$89,$F6,$04,$FB,$18,$E7,$DE,$03 ; $D0DB26
    db $18,$3F,$00,$BF,$4F,$97,$CF,$77,$01,$42,$71,$30,$F8,$C0,$01,$FC ; $D0DB36
    db $E0,$F0,$38,$EE,$91,$DB,$42,$60,$80,$FE,$20,$00,$A0,$00,$12,$90 ; $D0DB46
    db $00,$D0,$03,$25,$08,$FF,$0C,$FF,$07,$85,$01,$03,$FF,$61,$0F,$F7 ; $D0DB56
    db $00,$F3,$D2,$DB,$F8,$EE,$8A,$9F,$FE,$00,$FD,$C0,$E6,$FD,$7E,$BF ; $D0DB66
    db $40,$20,$38,$1F,$0F,$3B,$43,$3B,$00,$81,$0F,$15,$83,$00,$3F,$0A ; $D0DB76
    db $BC,$EF,$A7,$56,$F4,$03,$09,$06,$2F,$9F,$60,$F7,$E4,$04,$08,$EF ; $D0DB86
    db $10,$DF,$20,$4B,$EB,$7F,$B4,$7B,$BE,$A9,$C0,$B4,$D2,$5F,$01,$3F ; $D0DB96
    db $C5,$DB,$93,$7C,$01,$07,$1F,$CF,$7F,$00,$1A,$67,$5F,$F6,$16,$7F ; $D0DBA6
    db $E1,$F2,$0D,$E8,$17,$D1,$2E,$68,$97,$D0,$2F,$A4,$5B,$8F,$03,$E0 ; $D0DBB6
    db $1F,$28,$17,$3F,$03,$FC,$0C,$05,$FA,$13,$EC,$07,$F8,$0B,$F4,$17 ; $D0DBC6
    db $E8,$8D,$72,$07,$03,$AF,$BB,$79,$07,$E3,$79,$17,$00,$8D,$F9,$0B ; $D0DBD6
    db $6F,$F0,$08,$3F,$7F,$8A,$FF,$01,$27,$FF,$0B,$FF,$17,$FF,$4B,$C6 ; $D0DBE6
    db $03,$2F,$03,$00,$75,$00,$D8,$00,$F4,$00,$E8,$00,$71,$B4,$03,$D0 ; $D0DBF6
    db $CF,$03,$18,$01,$3F,$F8,$F8,$F4,$F4,$D8,$D8,$83,$03,$E8,$E8,$B0 ; $D0DC06
    db $B0,$10,$03,$D0,$D0,$79,$51,$27,$7D,$4F,$C7,$03,$2F,$8B,$1A,$3F ; $D0DC16
    db $86,$E1,$8F,$97,$F1,$8F,$D1,$3D,$E3,$0F,$63,$9B,$A7,$7F,$86,$56 ; $D0DC26
    db $0F,$00,$0E,$40,$8F,$8E,$00,$BC,$03,$00,$3C,$00,$18,$00,$39,$FE ; $D0DC36
    db $1A,$FF,$44,$B9,$E6,$A6,$CF,$24,$16,$40,$12,$40,$A5,$C2,$A5,$40 ; $D0DC46
    db $0B,$85,$0A,$C7,$38,$49,$30,$9A,$61,$9E,$61,$BC,$43,$01,$38,$0C ; $D0DC56
    db $7A,$C7,$18,$3F,$40,$06,$80,$7F,$81,$7F,$1F,$42,$BF,$00,$03,$2F ; $D0DC66
    db $5D,$03,$0C,$D1,$3B,$1E,$3E,$07,$00,$00,$78,$C7,$7D,$DF,$B6,$DF ; $D0DC76
    db $DC,$BF,$15,$7A,$BF,$BC,$EB,$2B,$40,$A2,$27,$A3,$29,$F7,$0C,$BB ; $D0DC86
    db $A6,$0B,$3F,$7F,$F8,$1D,$3C,$F0,$0C,$3F,$3E,$80,$B8,$00,$C0,$C3 ; $D0DC96
    db $C3,$7E,$7F,$78,$7F,$01,$AA,$3A,$B0,$E1,$32,$7F,$3C,$7F,$80,$CF ; $D0DCA6
    db $01,$0A,$7A,$4F,$0C,$3F,$E1,$32,$3C,$E6,$F8,$8C,$F0,$19,$E1,$71 ; $D0DCB6
    db $81,$E3,$03,$00,$0F,$C0,$FF,$01,$FE,$C4,$01,$00,$FE,$73,$57,$E5 ; $D0DCC6
    db $1C,$3F,$C0,$C7,$C1,$8A,$80,$C7,$D0,$A1,$B8,$DE,$DD,$BF,$B5,$0A ; $D0DCD6
    db $15,$06,$1F,$1E,$A8,$06,$00,$2F,$1F,$47,$1F,$3C,$03,$55,$0A,$8F ; $D0DCE6
    db $BF,$F0,$1F,$03,$FD,$FB,$43,$4E,$E0,$CB,$08,$3F,$F6,$97,$F5,$60 ; $D0DCF6
    db $6F,$E0,$0F,$D0,$0F,$40,$17,$90,$4B,$88,$65,$10,$D2,$FC,$03,$F0 ; $D0DD06
    db $8F,$D0,$48,$A8,$F8,$FF,$3C,$3A,$FF,$1E,$3F,$90,$19,$A3,$3F,$D5 ; $D0DD16
    db $01,$FE,$EB,$14,$60,$FF,$19,$7F,$01,$0F,$7F,$83,$1F,$E1,$0F,$F1 ; $D0DD26
    db $1E,$98,$AC,$03,$FC,$03,$0F,$F0,$D5,$05,$BC,$01,$1F,$3F,$CA,$00 ; $D0DD36
    db $CD,$FC,$FB,$E8,$EC,$F8,$F9,$E8,$73,$E8,$05,$0C,$00,$7A,$F0,$07 ; $D0DD46
    db $01,$F3,$0E,$07,$F6,$07,$F7,$63,$05,$03,$75,$87,$D7,$18,$3F,$5F ; $D0DD56
    db $CD,$6B,$39,$6B,$1F,$2D,$3C,$5C,$CF,$3C,$4C,$3D,$43,$3C,$31,$6C ; $D0DD66
    db $58,$B6,$AC,$D2,$C8,$F2,$9F,$E0,$8C,$F3,$86,$E3,$92,$F7,$A6,$DF ; $D0DD76
    db $18,$5D,$3F,$7D,$60,$51,$C7,$E3,$CA,$81,$18,$7C,$4B,$11,$C4,$94 ; $D0DD86
    db $8F,$3C,$1E,$D9,$CE,$3C,$59,$3C,$34,$7B,$9B,$67,$AD,$1E,$BF,$78 ; $D0DD96
    db $6C,$F3,$78,$E7,$18,$3F,$75,$6D,$54,$9A,$68,$36,$15,$CF,$48,$23 ; $D0DDA6
    db $24,$DB,$D9,$FD,$53,$B4,$4A,$C7,$3B,$0F,$F3,$DE,$E3,$7A,$87,$FA ; $D0DDB6
    db $07,$FF,$06,$55,$AE,$05,$FE,$F5,$18,$3F,$CB,$C1,$41,$C0,$C0,$41 ; $D0DDC6
    db $41,$82,$82,$85,$84,$8B,$80,$AE,$80,$C5,$B9,$3E,$80,$BF,$00,$00 ; $D0DDD6
    db $01,$7F,$01,$7F,$03,$77,$0F,$5F,$1E,$3F,$3E,$7F,$18,$3F,$0C,$40 ; $D0DDE6
    db $3F,$C1,$BE,$2E,$81,$74,$7E,$36,$AF,$7F,$0B,$01,$67,$BF,$31,$7F ; $D0DDF6
    db $F5,$02,$83,$FF,$F8,$19,$7F,$D0,$00,$00,$61,$81,$F0,$00,$60,$80 ; $D0DE06
    db $70,$80,$C0,$05,$38,$C0,$5C,$A0,$FF,$B7,$9E,$B7,$1F,$3F,$0B,$C7 ; $D0DE16
    db $F8,$6F,$70,$02,$03,$67,$78,$1F,$30,$53,$8B,$24,$03,$77,$C7,$C0 ; $D0DE26
    db $18,$3F,$AC,$0C,$CF,$08,$BF,$0E,$1D,$CF,$0B,$9F,$04,$03,$9E,$10 ; $D0DE36
    db $FF,$23,$7E,$F3,$3E,$FF,$1D,$01,$E2,$0B,$F4,$11,$EE,$22,$DC,$EB ; $D0DE46
    db $18,$3F,$8C,$E3,$FC,$82,$3D,$E9,$FE,$C7,$7C,$09,$7E,$96,$FC,$1C ; $D0DE56
    db $FE,$3E,$FE,$BF,$F7,$0E,$01,$AF,$84,$D5,$08,$AF,$01,$8F,$01,$01 ; $D0DE66
    db $00,$02,$40,$01,$00,$8A,$7F,$23,$AA,$54,$A1,$9D,$40,$00,$30,$30 ; $D0DE76
    db $F5,$04,$E0,$0F,$A0,$5F,$B0,$4F,$09,$7E,$3F,$07,$0F,$83,$00,$83 ; $D0DE86
    db $89,$47,$02,$A0,$03,$00,$1C,$06,$E3,$06,$F9,$09,$F6,$03,$0F,$0D ; $D0DE96
    db $F2,$16,$E9,$1C,$00,$3F,$00,$E0,$D0,$60,$28,$F0,$FD,$08,$78,$83 ; $D0DEA6
    db $43,$CE,$F0,$EE,$00,$18,$6C,$E7,$39,$3D,$02,$07,$FD,$3C,$FF,$3F ; $D0DEB6
    db $FF,$AE,$1C,$3F,$10,$7E,$70,$3F,$38,$1F,$1C,$57,$06,$DB,$E3,$BD ; $D0DEC6
    db $32,$0F,$00,$48,$80,$24,$C0,$B2,$40,$A1,$58,$15,$00,$FC,$0C,$F3 ; $D0DED6
    db $82,$FF,$01,$CF,$06,$3F,$FE,$0B,$D1,$4B,$4B,$2F,$E0,$3F,$01,$18 ; $D0DEE6
    db $05,$9F,$57,$03,$AF,$B3,$46,$51,$8C,$75,$1F,$13,$3F,$AC,$BF,$92 ; $D0DEF6
    db $2F,$AB,$DE,$3F,$AA,$97,$0B,$FF,$0B,$7E,$27,$01,$A0,$DF,$C0,$E0 ; $D0DF06
    db $E0,$F0,$F0,$2D,$FA,$FA,$10,$4E,$2F,$7A,$0F,$03,$2F,$D4,$0F,$07 ; $D0DF16
    db $AB,$00,$15,$15,$B8,$BB,$40,$40,$E8,$79,$E8,$04,$FF,$BF,$DF,$1D ; $D0DF26
    db $85,$00,$C3,$50,$AF,$E4,$1B,$D0,$2F,$A9,$56,$F0,$0F,$7A,$05,$EF ; $D0DF36
    db $1C,$FF,$F8,$08,$3F,$2B,$D4,$0C,$17,$E8,$4D,$B2,$03,$0F,$2B,$F0 ; $D0DF46
    db $17,$EE,$AC,$2B,$38,$57,$4D,$03,$0F,$9B,$5F,$C7,$18,$3F,$FF,$4F ; $D0DF56
    db $65,$19,$2F,$7D,$FB,$9B,$07,$0F,$B0,$65,$19,$D0,$7D,$FB,$64,$EB ; $D0DF66
    db $1D,$3F,$84,$61,$61,$D1,$D0,$A1,$A0,$DB,$DA,$AF,$A0,$CE,$D1,$1D ; $D0DF76
    db $0F,$9E,$F1,$F3,$5E,$00,$24,$DE,$3C,$F9,$20,$1D,$3F,$CA,$00,$0A ; $D0DF86
    db $F2,$33,$62,$EB,$62,$FB,$C2,$2B,$7B,$84,$D7,$AB,$75,$1C,$BD,$1D ; $D0DF96
    db $01,$0F,$BD,$00,$FA,$01,$1C,$00,$3F,$82,$14,$CC,$50,$8A,$63,$96 ; $D0DFA6
    db $0A,$77,$9C,$7E,$62,$00,$2F,$30,$CF,$70,$8F,$63,$9C,$77,$47,$88 ; $D0DFB6
    db $BE,$CB,$1C,$3F,$FD,$1D,$73,$F5,$04,$4E,$F2,$07,$00,$1D,$E1,$01 ; $D0DFC6
    db $0F,$00,$06,$11,$18,$05,$16,$10,$19,$1B,$1E,$D0,$81,$1E,$60,$1F ; $D0DFD6
    db $00,$0F,$1F,$03,$1F,$07,$11,$0F,$18,$07,$19,$51,$42,$1D,$F3,$F7 ; $D0DFE6
    db $03,$01,$80,$09,$3F,$A0,$A3,$A8,$03,$28,$D7,$95,$1D,$83,$07,$46 ; $D0DFF6
    db $00,$5F,$BF,$07,$6D,$09,$BF,$CE,$09,$EF,$C0,$40,$4A,$DF,$00,$EF ; $D0E006
    db $EB,$47,$14,$FB,$00,$FD,$47,$DB,$55,$B3,$E0,$5F,$3F,$8E,$7C,$01 ; $D0E016
    db $1A,$3F,$03,$78,$FC,$02,$01,$05,$FA,$FA,$09,$7C,$20,$19,$3F,$F8 ; $D0E026
    db $B8,$F7,$FC,$F8,$7A,$F1,$F4,$F0,$76,$F0,$74,$F4,$70,$F4,$73,$20 ; $D0E036
    db $00,$F3,$41,$F3,$FB,$07,$79,$87,$7B,$C3,$01,$78,$87,$C7,$08,$3F ; $D0E046
    db $DF,$DF,$B0,$06,$3D,$2F,$1D,$2A,$07,$00,$0A,$01,$13,$09,$01,$01 ; $D0E056
    db $83,$41,$CC,$03,$0B,$11,$C8,$0E,$F7,$F2,$FD,$ED,$B5,$D1,$7D,$C3 ; $D0E066
    db $03,$F5,$FE,$C5,$1A,$7F,$7D,$32,$C3,$B8,$26,$B0,$4C,$80,$7A,$A4 ; $D0E076
    db $40,$FA,$28,$E5,$3A,$17,$0F,$F0,$CF,$0F,$E1,$DF,$83,$FF,$85,$FF ; $D0E086
    db $9B,$E7,$AF,$D3,$B3,$DB,$1A,$0B,$3F,$56,$B8,$37,$A7,$C1,$17,$62 ; $D0E096
    db $2A,$D3,$08,$34,$08,$94,$0E,$32,$02,$02,$15,$EE,$0D,$FE,$8E,$FD ; $D0E0A6
    db $0E,$FD,$CB,$FD,$6B,$FD,$C9,$FD,$01,$F2,$08,$7F,$FC,$F2,$08,$3F ; $D0E0B6
    db $8D,$E1,$73,$9A,$63,$1C,$E3,$39,$C0,$3C,$C3,$3D,$C0,$3D,$DE,$3F ; $D0E0C6
    db $49,$7C,$27,$CB,$7F,$8C,$00,$BF,$60,$DF,$20,$DF,$40,$9F,$90,$4F ; $D0E0D6
    db $F0,$0F,$E0,$4F,$E8,$B7,$56,$AA,$40,$01,$1F,$FF,$5F,$BF,$3C,$AF ; $D0E0E6
    db $5F,$18,$3F,$3C,$18,$C0,$1E,$E0,$01,$0E,$F0,$77,$06,$11,$01,$43 ; $D0E0F6
    db $B9,$FF,$E3,$09,$B0,$D1,$16,$3F,$DC,$F3,$03,$1E,$00,$31,$6C,$72 ; $D0E106
    db $10,$38,$60,$71,$02,$44,$04,$40,$3F,$03,$81,$FF,$07,$C7,$FF,$8E ; $D0E116
    db $FF,$F9,$FD,$19,$FF,$A4,$74,$19,$C6,$1F,$0D,$97,$1B,$2F,$37,$5F ; $D0E126
    db $6E,$FE,$DD,$FD,$B8,$F8,$02,$FC,$24,$F8,$60,$F8,$C0,$F0,$80,$E0 ; $D0E136
    db $41,$80,$82,$EB,$7C,$43,$18,$3F,$6C,$65,$FE,$00,$E6,$C2,$F6,$A2 ; $D0E146
    db $E2,$4A,$C2,$8A,$8A,$1A,$1A,$3A,$3A,$10,$3A,$43,$00,$75,$5C,$AA ; $D0E156
    db $FF,$7C,$E6,$79,$3B,$F3,$EF,$04,$01,$08,$1D,$3F,$02,$03,$FE,$09 ; $D0E166
    db $7F,$00,$04,$BE,$18,$04,$24,$FD,$02,$88,$F2,$0E,$BF,$1E,$B8,$CF ; $D0E176
    db $E1,$9E,$60,$0F,$70,$0F,$F0,$C7,$38,$87,$B8,$63,$1C,$43,$7C,$FE ; $D0E186
    db $BD,$30,$47,$84,$5A,$49,$1F,$7B,$3F,$05,$BD,$A8,$12,$F8,$09,$FF ; $D0E196
    db $B9,$F4,$E7,$F0,$F7,$F4,$FB,$FC,$73,$68,$EB,$7A,$FD,$56,$51,$6C ; $D0E1A6
    db $6D,$EF,$1F,$FF,$0F,$F7,$0F,$77,$8F,$7F,$07,$FF,$FB,$87,$FF,$83 ; $D0E1B6
    db $BE,$18,$FF,$04,$C0,$BD,$06,$F9,$1C,$E2,$FC,$06,$BC,$F1,$FD,$19 ; $D0E1C6
    db $BF,$73,$E5,$09,$0B,$D3,$57,$A7,$AC,$0C,$A0,$20,$21,$A0,$5C,$BC ; $D0E1D6
    db $C0,$0A,$F2,$FC,$E4,$F8,$C8,$F0,$D3,$E0,$EC,$C2,$C0,$1E,$DC,$E3 ; $D0E1E6
    db $F5,$19,$3F,$5C,$F0,$7B,$F0,$C0,$C0,$03,$01,$0E,$06,$3A,$19,$E8 ; $D0E1F6
    db $67,$C0,$3F,$00,$BF,$0F,$F8,$11,$25,$FE,$01,$3B,$F8,$07,$C3,$8B ; $D0E206
    db $FF,$40,$CB,$19,$3F,$7A,$9F,$7A,$FE,$CE,$F6,$86,$B6,$56,$1C,$FE ; $D0E216
    db $2C,$CE,$7E,$BC,$FC,$7C,$FC,$00,$C8,$30,$88,$70,$18,$E0,$10,$03 ; $D0E226
    db $01,$20,$C0,$40,$80,$F3,$07,$BF,$03,$C0,$08,$3F,$21,$2E,$18,$07 ; $D0E236
    db $0C,$16,$03,$03,$04,$A1,$80,$3F,$D7,$3D,$02,$07,$0F,$03,$07,$01 ; $D0E246
    db $03,$74,$7D,$FF,$04,$7F,$CE,$0B,$06,$BF,$D4,$57,$C2,$01,$01,$01 ; $D0E256
    db $83,$40,$22,$21,$25,$06,$1D,$D8,$9D,$FD,$83,$20,$BD,$C3,$01,$FD ; $D0E266
    db $0F,$C3,$DD,$E3,$63,$1B,$A9,$BF,$0F,$F8,$70,$3F,$C8,$19,$DE,$1D ; $D0E276
    db $F2,$78,$9F,$3D,$B2,$B8,$67,$C6,$0F,$E8,$F7,$01,$00,$F8,$E7,$D0 ; $D0E286
    db $EF,$D8,$E7,$F0,$CF,$3E,$A0,$DF,$1B,$E3,$7F,$80,$C0,$30,$00,$14 ; $D0E296
    db $9F,$98,$8F,$8F,$C3,$83,$E0,$EA,$07,$B1,$7F,$FF,$0F,$04,$26,$F8 ; $D0E2A6
    db $07,$F0,$43,$BB,$00,$EE,$1B,$7F,$54,$02,$0F,$B1,$FD,$05,$E7,$67 ; $D0E2B6
    db $A8,$DB,$EA,$80,$5D,$A8,$FF,$41,$FE,$06,$F8,$78,$7F,$80,$0D,$8F ; $D0E2C6
    db $AF,$01,$0A,$00,$3F,$FC,$F8,$F0,$F8,$E0,$F0,$C0,$67,$E0,$86,$80 ; $D0E2D6
    db $D1,$05,$F7,$E7,$01,$3F,$03,$50,$F7,$0F,$EA,$A5,$4C,$3F,$6F,$57 ; $D0E2E6
    db $BC,$08,$3F,$00                                                 ; $D0E2F6
; ---- end of region ----

    db $73,$6F,$6D,$65,$74,$69,$6D,$65,$20,$69,$6E,$20,$74,$68,$65,$20 ; $D0E2FA
    db $6C,$61,$73,$74,$20,$63,$65,$6E,$74,$75,$72,$79,$20,$74,$68,$65 ; $D0E30A
    db $20,$62,$61,$72,$6F,$6E,$20,$66,$6F,$72,$74,$65,$73,$71,$75,$65 ; $D0E31A
    db $20,$69,$6E,$76,$65,$6E,$74,$65,$64,$20,$61,$20,$62,$69,$7A,$61 ; $D0E32A
    db $72,$72,$65,$20,$6D,$61,$63,$68,$69,$6E,$65,$20,$63,$61,$6C,$6C ; $D0E33A
    db $65,$64,$FF,$74,$68,$65,$20,$63,$68,$61,$6F,$73,$20,$65,$6E,$67 ; $D0E34A
    db $69,$6E,$65,$2E,$2E,$2E,$00,$74,$68,$65,$20,$64,$65,$76,$69,$63 ; $D0E35A
    db $65,$20,$62,$65,$63,$61,$6D,$65,$20,$69,$6E,$63,$72,$65,$64,$69 ; $D0E36A
    db $62,$6C,$79,$20,$70,$6F,$77,$65,$72,$66,$75,$6C,$20,$61,$6E,$64 ; $D0E37A
    db $20,$74,$75,$72,$6E,$65,$64,$20,$61,$67,$61,$69,$6E,$73,$74,$20 ; $D0E38A
    db $69,$74,$73,$20,$63,$72,$65,$61,$74,$6F,$72,$2E,$20,$69,$74,$73 ; $D0E39A
    db $20,$70,$6F,$77,$65,$72,$20,$74,$6F,$20,$63,$6F,$72,$72,$75,$70 ; $D0E3AA
    db $74,$20,$74,$69,$6D,$65,$20,$61,$6E,$64,$20,$6D,$61,$74,$74,$65 ; $D0E3BA
    db $72,$20,$77,$61,$73,$20,$6F,$75,$74,$20,$6F,$66,$20,$63,$6F,$6E ; $D0E3CA
    db $74,$72,$6F,$6C,$2E,$00,$61,$20,$63,$6C,$6F,$75,$64,$20,$6F,$66 ; $D0E3DA
    db $20,$63,$68,$61,$6F,$73,$20,$64,$65,$73,$63,$65,$6E,$64,$65,$64 ; $D0E3EA
    db $20,$6F,$76,$65,$72,$20,$74,$68,$65,$20,$6C,$61,$6E,$64,$2C,$20 ; $D0E3FA
    db $74,$75,$72,$6E,$69,$6E,$67,$20,$68,$75,$6D,$61,$6E,$73,$20,$61 ; $D0E40A
    db $6E,$64,$20,$61,$6E,$69,$6D,$61,$6C,$73,$20,$69,$6E,$74,$6F,$20 ; $D0E41A
    db $72,$61,$76,$65,$6E,$69,$6E,$67,$20,$62,$65,$61,$73,$74,$73,$2E ; $D0E42A
    db $00,$65,$6E,$74,$65,$72,$20,$73,$69,$78,$20,$68,$61,$72,$64,$2D ; $D0E43A
    db $6E,$61,$69,$6C,$65,$64,$20,$6D,$65,$72,$63,$65,$6E,$61,$72,$69 ; $D0E44A
    db $65,$73,$20,$66,$6F,$72,$20,$68,$69,$72,$65,$2E,$2E,$2E,$00,$6F ; $D0E45A
    db $6E,$65,$20,$70,$6C,$61,$79,$65,$72,$20,$26,$20,$63,$70,$75,$00 ; $D0E46A
    db $74,$77,$6F,$20,$70,$6C,$61,$79,$65,$72,$73,$00,$6F,$70,$74,$69 ; $D0E47A
    db $6F,$6E,$73,$00,$73,$74,$61,$72,$74,$20,$6E,$65,$77,$20,$67,$61 ; $D0E48A
    db $6D,$65,$00,$65,$6E,$74,$65,$72,$20,$70,$61,$73,$73,$77,$6F,$72 ; $D0E49A
    db $64,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E4AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E4BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E4CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E4DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E4EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E4FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E50A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E51A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E52A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E53A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E54A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E55A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E56A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E57A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E58A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E59A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E5AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E5BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E5CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E5DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E5EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E5FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E60A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E61A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E62A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E63A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E64A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E65A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E66A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E67A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E68A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E69A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E6AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E6BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E6CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E6DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E6EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E6FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E70A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E71A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E72A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E73A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E74A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E75A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E76A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E77A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E78A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E79A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E7AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E7BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E7CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E7DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E7EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E7FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E80A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E81A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E82A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E83A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E84A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E85A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E86A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E87A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E88A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E89A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E8AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E8BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E8CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E8DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E8EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E8FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E90A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E91A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E92A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E93A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E94A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E95A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E96A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E97A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E98A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E99A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E9AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E9BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E9CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E9DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E9EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0E9FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EA9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EAAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EABA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EACA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EADA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EAEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EAFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EB9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EBAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EBBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EBCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EBDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EBEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EBFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EC9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ECAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ECBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ECCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ECDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ECEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ECFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0ED9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EDAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EDBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EDCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EDDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EDEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EDFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EE9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EEAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EEBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EECA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EEDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EEEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EEFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EF9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EFAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EFBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EFCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EFDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EFEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0EFFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F00A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F01A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F02A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F03A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F04A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F05A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F06A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F07A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F08A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F09A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F0AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F0BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F0CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F0DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F0EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F0FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F10A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F11A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F12A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F13A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F14A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F15A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F16A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F17A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F18A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F19A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F1AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F1BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F1CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F1DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F1EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F1FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F20A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F21A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F22A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F23A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F24A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F25A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F26A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F27A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F28A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F29A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F2AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F2BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F2CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F2DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F2EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F2FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F30A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F31A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F32A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F33A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F34A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F35A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F36A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F37A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F38A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F39A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F3AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F3BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F3CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F3DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F3EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F3FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F40A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F41A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F42A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F43A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F44A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F45A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F46A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F47A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F48A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F49A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F4AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F4BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F4CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F4DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F4EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F4FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F50A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F51A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F52A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F53A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F54A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F55A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F56A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F57A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F58A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F59A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F5AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F5BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F5CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F5DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F5EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F5FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F60A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F61A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F62A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F63A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F64A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F65A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F66A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F67A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F68A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F69A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F6AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F6BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F6CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F6DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F6EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F6FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F70A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F71A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F72A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F73A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F74A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F75A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F76A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F77A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F78A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F79A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F7AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F7BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F7CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F7DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F7EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F7FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F80A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F81A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F82A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F83A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F84A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F85A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F86A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F87A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F88A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F89A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F8AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F8BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F8CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F8DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F8EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F8FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F90A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F91A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F92A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F93A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F94A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F95A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F96A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F97A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F98A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F99A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F9AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F9BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F9CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F9DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F9EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0F9FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FA9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FAAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FABA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FACA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FADA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FAEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FAFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FB9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FBAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FBBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FBCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FBDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FBEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FBFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FC9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FCAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FCBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FCCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FCDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FCEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FCFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FD9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FDAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FDBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FDCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FDDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FDEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FDFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FE9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FEAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FEBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FECA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FEDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FEEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FEFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FF9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FFAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FFBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FFCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FFDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D0FFEA
    db $FF,$FF,$FF,$FF,$FF,$FF                                         ; $D0FFFA
