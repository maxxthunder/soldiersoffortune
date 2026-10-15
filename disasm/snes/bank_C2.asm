; bank $C2  (file offset $020000)
org $C20000

L_C20000:
    PHP                             ; $C20000  08           mX
    REP #$20                        ; $C20001  C2 20        mX
    PHA                             ; $C20003  48           MX
    PHY                             ; $C20004  5A           MX
    PHX                             ; $C20005  DA           MX
    LDA #$0000                      ; $C20006  A9 00 00     MX
    LDX #$FFFF                      ; $C20009  A2 FF FF     MX
    JSL L_C2024D                    ; $C2000C  22 4D 02 C2  MX
    PLX                             ; $C20010  FA           MX
    PLY                             ; $C20011  7A           MX
    PLA                             ; $C20012  68           MX
    PLP                             ; $C20013  28           MX
    RTL                             ; $C20014  6B           mX
L_C20015:
    PHP                             ; $C20015  08           mX
    REP #$20                        ; $C20016  C2 20        mX
    PHA                             ; $C20018  48           MX
    PHY                             ; $C20019  5A           MX
    PHX                             ; $C2001A  DA           MX
    LDA #$0006                      ; $C2001B  A9 06 00     MX
    LDX #$FFFF                      ; $C2001E  A2 FF FF     MX
    JSL L_C2024D                    ; $C20021  22 4D 02 C2  MX
    PLX                             ; $C20025  FA           MX
    PLY                             ; $C20026  7A           MX
    PLA                             ; $C20027  68           MX
    PLP                             ; $C20028  28           MX
    RTL                             ; $C20029  6B           mX
L_C2002A:
    PHP                             ; $C2002A  08           mX
    REP #$20                        ; $C2002B  C2 20        mX
    PHA                             ; $C2002D  48           MX
    PHY                             ; $C2002E  5A           MX
    PHX                             ; $C2002F  DA           MX
    LDA #$0005                      ; $C20030  A9 05 00     MX
    LDX #$FFFF                      ; $C20033  A2 FF FF     MX
    JSL L_C2024D                    ; $C20036  22 4D 02 C2  MX
    PLX                             ; $C2003A  FA           MX
    PLY                             ; $C2003B  7A           MX
    PLA                             ; $C2003C  68           MX
    PLP                             ; $C2003D  28           MX
    RTL                             ; $C2003E  6B           mX
L_C2003F:
    PHP                             ; $C2003F  08           mX
    REP #$20                        ; $C20040  C2 20        mX
    PHA                             ; $C20042  48           MX
    PHY                             ; $C20043  5A           MX
    PHX                             ; $C20044  DA           MX
    LDA #$0003                      ; $C20045  A9 03 00     MX
    LDX #$FFFF                      ; $C20048  A2 FF FF     MX
    JSL L_C2024D                    ; $C2004B  22 4D 02 C2  MX
    PLX                             ; $C2004F  FA           MX
    PLY                             ; $C20050  7A           MX
    PLA                             ; $C20051  68           MX
    PLP                             ; $C20052  28           MX
    RTL                             ; $C20053  6B           mX
L_C20054:
    LDA $0739                       ; $C20054  AD 39 07     MX
    BMI L_C200B2                    ; $C20057  30 59        MX
    JSL L_C203C2                    ; $C20059  22 C2 03 C2  MX
    LDA $46                         ; $C2005D  A5 46        MX
    STA $004204                     ; $C2005F  8F 04 42 00  MX
    SEP #$20                        ; $C20063  E2 20        MX
    LDA $24                         ; $C20065  A5 24        mX
    STA $004206                     ; $C20067  8F 06 42 00  mX
    REP #$20                        ; $C2006B  C2 20        mX
    NOP                             ; $C2006D  EA           MX
    NOP                             ; $C2006E  EA           MX
    NOP                             ; $C2006F  EA           MX
    NOP                             ; $C20070  EA           MX
    NOP                             ; $C20071  EA           MX
    NOP                             ; $C20072  EA           MX
    NOP                             ; $C20073  EA           MX
    LDA $004216                     ; $C20074  AF 16 42 00  MX
    BNE L_C200B2                    ; $C20078  D0 38        MX
    LDA $0739                       ; $C2007A  AD 39 07     MX
    TAX                             ; $C2007D  AA           MX
    PHX                             ; $C2007E  DA           MX
    LDA $C113A5,X                   ; $C2007F  BF A5 13 C1  MX
    AND #$00FF                      ; $C20083  29 FF 00     MX
    CMP $073B                       ; $C20086  CD 3B 07     MX
    BEQ L_C20092                    ; $C20089  F0 07        MX
    STA $073B                       ; $C2008B  8D 3B 07     MX
    JSL L_C2010F                    ; $C2008E  22 0F 01 C2  MX
L_C20092:
    PLX                             ; $C20092  FA           MX
    LDA $C113B5,X                   ; $C20093  BF B5 13 C1  MX
    AND #$00FF                      ; $C20097  29 FF 00     MX
    BEQ L_C200AC                    ; $C2009A  F0 10        MX
    ASL                             ; $C2009C  0A           MX
    TAX                             ; $C2009D  AA           MX
    LDA $C1609A,X                   ; $C2009E  BF 9A 60 C1  MX
    AND #$00FF                      ; $C200A2  29 FF 00     MX
    LDX #$FFFF                      ; $C200A5  A2 FF FF     MX
    JSL L_C2024D                    ; $C200A8  22 4D 02 C2  MX
L_C200AC:
    LDA #$FFFF                      ; $C200AC  A9 FF FF     MX
    STA $0739                       ; $C200AF  8D 39 07     MX
L_C200B2:
    RTL                             ; $C200B2  6B           MX
L_C200B3:
    LDA #$00FF                      ; $C200B3  A9 FF 00     MX
    STA $004204                     ; $C200B6  8F 04 42 00  MX
    LDA $4E                         ; $C200BA  A5 4E        MX
    SEC                             ; $C200BC  38           MX
    SBC $4A                         ; $C200BD  E5 4A        MX
    SEP #$20                        ; $C200BF  E2 20        MX
    STA $004206                     ; $C200C1  8F 06 42 00  mX
    REP #$20                        ; $C200C5  C2 20        mX
    NOP                             ; $C200C7  EA           MX
    NOP                             ; $C200C8  EA           MX
    NOP                             ; $C200C9  EA           MX
    NOP                             ; $C200CA  EA           MX
    NOP                             ; $C200CB  EA           MX
    NOP                             ; $C200CC  EA           MX
    NOP                             ; $C200CD  EA           MX
    NOP                             ; $C200CE  EA           MX
    LDA $004214                     ; $C200CF  AF 14 42 00  MX
    INC                             ; $C200D3  1A           MX
    STA $46                         ; $C200D4  85 46        MX
    JSL L_C048A9                    ; $C200D6  22 A9 48 C0  MX
    CMP #$0000                      ; $C200DA  C9 00 00     MX
    BNE L_C200E0                    ; $C200DD  D0 01        MX
    INC                             ; $C200DF  1A           MX
L_C200E0:
    STA $004204                     ; $C200E0  8F 04 42 00  MX
    LDA $46                         ; $C200E4  A5 46        MX
    SEP #$20                        ; $C200E6  E2 20        MX
    STA $004206                     ; $C200E8  8F 06 42 00  mX
    REP #$20                        ; $C200EC  C2 20        mX
    NOP                             ; $C200EE  EA           MX
    NOP                             ; $C200EF  EA           MX
    NOP                             ; $C200F0  EA           MX
    NOP                             ; $C200F1  EA           MX
    NOP                             ; $C200F2  EA           MX
    NOP                             ; $C200F3  EA           MX
    NOP                             ; $C200F4  EA           MX
    NOP                             ; $C200F5  EA           MX
    LDA $004214                     ; $C200F6  AF 14 42 00  MX
    CLC                             ; $C200FA  18           MX
    ADC $4A                         ; $C200FB  65 4A        MX
    STA $46                         ; $C200FD  85 46        MX
    RTL                             ; $C200FF  6B           MX
L_C20100:
    PHP                             ; $C20100  08           MX
    REP #$20                        ; $C20101  C2 20        MX
    LDA #$0081                      ; $C20103  A9 81 00     MX
    LDX #$0000                      ; $C20106  A2 00 00     MX
    JSL L_C2024D                    ; $C20109  22 4D 02 C2  MX
    PLP                             ; $C2010D  28           MX
    RTL                             ; $C2010E  6B           MX
L_C2010F:
    PHP                             ; $C2010F  08           mX
    REP #$20                        ; $C20110  C2 20        mX
    AND #$00FF                      ; $C20112  29 FF 00     MX
    CMP #$002A                      ; $C20115  C9 2A 00     MX
    BCC L_C2011D                    ; $C20118  90 03        MX
    JMP L_C20180                    ; $C2011A  4C 80 01     MX
L_C2011D:
    SEP #$20                        ; $C2011D  E2 20        MX
    STA $0E                         ; $C2011F  85 0E        mX
    REP #$20                        ; $C20121  C2 20        mX
    ASL                             ; $C20123  0A           MX
    TAX                             ; $C20124  AA           MX
    LDA $C80000,X                   ; $C20125  BF 00 00 C8  MX
    STA $24                         ; $C20129  85 24        MX
    LDA $C1609A,X                   ; $C2012B  BF 9A 60 C1  MX
    BEQ L_C20155                    ; $C2012F  F0 24        MX
    PHX                             ; $C20131  DA           MX
    PHA                             ; $C20132  48           MX
    XBA                             ; $C20133  EB           MX
    AND #$00FF                      ; $C20134  29 FF 00     MX
    SEP #$20                        ; $C20137  E2 20        MX
    CMP $0D                         ; $C20139  C5 0D        mX
    REP #$20                        ; $C2013B  C2 20        mX
    BEQ L_C20153                    ; $C2013D  F0 14        MX
    LDA #$0000                      ; $C2013F  A9 00 00     MX
    LDX #$0000                      ; $C20142  A2 00 00     MX
    JSL L_C2024D                    ; $C20145  22 4D 02 C2  MX
    LDA $01,S                       ; $C20149  A3 01        MX
    XBA                             ; $C2014B  EB           MX
    AND #$00FF                      ; $C2014C  29 FF 00     MX
    JSL L_C04171                    ; $C2014F  22 71 41 C0  MX
L_C20153:
    PLA                             ; $C20153  68           MX
    PLX                             ; $C20154  FA           MX
L_C20155:
    LDA $C1609A,X                   ; $C20155  BF 9A 60 C1  MX
    SEP #$20                        ; $C20159  E2 20        MX
    CMP #$FF                        ; $C2015B  C9 FF        mX
    BEQ L_C2017E                    ; $C2015D  F0 1F        mX
    PHA                             ; $C2015F  48           mX
    LDA #$FF                        ; $C20160  A9 FF        mX
    PHA                             ; $C20162  48           mX
    STZ $20                         ; $C20163  64 20        mX
    LDA $23                         ; $C20165  A5 23        mX
    BNE L_C20171                    ; $C20167  D0 08        mX
    PLA                             ; $C20169  68           mX
    STA $22                         ; $C2016A  85 22        mX
    PLA                             ; $C2016C  68           mX
    STA $23                         ; $C2016D  85 23        mX
    BRA L_C2017A                    ; $C2016F  80 09        mX
L_C20171:
    PLA                             ; $C20171  68           mX
    PLA                             ; $C20172  68           mX
    LDX #$FFFF                      ; $C20173  A2 FF FF     mX
    JSL L_C2024D                    ; $C20176  22 4D 02 C2  mX
L_C2017A:
    LDA #$FF                        ; $C2017A  A9 FF        mX
    STA $20                         ; $C2017C  85 20        mX
L_C2017E:
    REP #$20                        ; $C2017E  C2 20        mX
L_C20180:
    PLP                             ; $C20180  28           MX
    RTL                             ; $C20181  6B           mX
L_C20182:
    PHX                             ; $C20182  DA           MX
    PHY                             ; $C20183  5A           MX
    PHP                             ; $C20184  08           MX
    DEC                             ; $C20185  3A           MX
    BPL L_C2018B                    ; $C20186  10 03        MX
    JMP L_C20249                    ; $C20188  4C 49 02     MX
L_C2018B:
    REP #$30                        ; $C2018B  C2 30        MX
    AND #$00FF                      ; $C2018D  29 FF 00     MX
    ASL                             ; $C20190  0A           MX
    ASL                             ; $C20191  0A           MX
    TAX                             ; $C20192  AA           MX
    SEP #$20                        ; $C20193  E2 20        MX
    LDA $C10E40,X                   ; $C20195  BF 40 0E C1  mX
    BPL L_C2019E                    ; $C20199  10 03        mX
    JMP L_C20249                    ; $C2019B  4C 49 02     mX
L_C2019E:
    XBA                             ; $C2019E  EB           mX
    LDA $C10E41,X                   ; $C2019F  BF 41 0E C1  mX
    AND #$0F                        ; $C201A3  29 0F        mX
    BEQ L_C201C0                    ; $C201A5  F0 19        mX
    PHX                             ; $C201A7  DA           mX
    SEP #$10                        ; $C201A8  E2 10        mX
    LDA $08C7                       ; $C201AA  AD C7 08     mx
    LSR                             ; $C201AD  4A           mx
    LSR                             ; $C201AE  4A           mx
    TAX                             ; $C201AF  AA           mx
    LDA $C1605E,X                   ; $C201B0  BF 5E 60 C1  mx
    REP #$10                        ; $C201B4  C2 10        mx
    PLX                             ; $C201B6  FA           mX
    AND $C10E41,X                   ; $C201B7  3F 41 0E C1  mX
    BNE L_C201C0                    ; $C201BB  D0 03        mX
    JMP L_C20249                    ; $C201BD  4C 49 02     mX
L_C201C0:
    LDA $C10E41,X                   ; $C201C0  BF 41 0E C1  mX
    BIT #$40                        ; $C201C4  89 40        mX
    BNE L_C2020D                    ; $C201C6  D0 45        mX
    BIT #$20                        ; $C201C8  89 20        mX
    BEQ L_C20233                    ; $C201CA  F0 67        mX
    XBA                             ; $C201CC  EB           mX
    REP #$20                        ; $C201CD  C2 20        mX
    AND #$0FFF                      ; $C201CF  29 FF 0F     MX
    ASL                             ; $C201D2  0A           MX
    TAX                             ; $C201D3  AA           MX
    LDA $C10D78,X                   ; $C201D4  BF 78 0D C1  MX
    TAX                             ; $C201D8  AA           MX
    PHA                             ; $C201D9  48           MX
    LDA $C10D78,X                   ; $C201DA  BF 78 0D C1  MX
    STA $4E                         ; $C201DE  85 4E        MX
    LDA #$0000                      ; $C201E0  A9 00 00     MX
    STA $4A                         ; $C201E3  85 4A        MX
    JSL L_C200B3                    ; $C201E5  22 B3 00 C2  MX
    LDA $46                         ; $C201E9  A5 46        MX
    ASL                             ; $C201EB  0A           MX
    ASL                             ; $C201EC  0A           MX
    CLC                             ; $C201ED  18           MX
    ADC $01,S                       ; $C201EE  63 01        MX
    PLX                             ; $C201F0  FA           MX
    TAX                             ; $C201F1  AA           MX
    LDA $C10D7A,X                   ; $C201F2  BF 7A 0D C1  MX
    SEP #$20                        ; $C201F6  E2 20        MX
    CMP #$00                        ; $C201F8  C9 00        mX
    BEQ L_C20249                    ; $C201FA  F0 4D        mX
    CMP #$42                        ; $C201FC  C9 42        mX
    BCS L_C20249                    ; $C201FE  B0 49        mX
    TAY                             ; $C20200  A8           mX
    LDA $C10D7C,X                   ; $C20201  BF 7C 0D C1  mX
    ASL                             ; $C20205  0A           mX
    ASL                             ; $C20206  0A           mX
    LDA #$FF                        ; $C20207  A9 FF        mX
    TAX                             ; $C20209  AA           mX
    TYA                             ; $C2020A  98           mX
    BRA L_C20245                    ; $C2020B  80 38        mX
L_C2020D:
    XBA                             ; $C2020D  EB           mX
    REP #$20                        ; $C2020E  C2 20        mX
    AND #$0FFF                      ; $C20210  29 FF 0F     MX
    ASL                             ; $C20213  0A           MX
    TAX                             ; $C20214  AA           MX
    LDA $C10D78,X                   ; $C20215  BF 78 0D C1  MX
    TAX                             ; $C20219  AA           MX
    SEP #$20                        ; $C2021A  E2 20        MX
    LDA $C10D78,X                   ; $C2021C  BF 78 0D C1  mX
    BEQ L_C20249                    ; $C20220  F0 27        mX
    CMP #$42                        ; $C20222  C9 42        mX
    BCS L_C20249                    ; $C20224  B0 23        mX
    TAY                             ; $C20226  A8           mX
    LDA $C10D7A,X                   ; $C20227  BF 7A 0D C1  mX
    ASL                             ; $C2022B  0A           mX
    ASL                             ; $C2022C  0A           mX
    LDA #$FF                        ; $C2022D  A9 FF        mX
    TAX                             ; $C2022F  AA           mX
    TYA                             ; $C20230  98           mX
    BRA L_C20245                    ; $C20231  80 12        mX
L_C20233:
    XBA                             ; $C20233  EB           mX
    BEQ L_C20249                    ; $C20234  F0 13        mX
    CMP #$42                        ; $C20236  C9 42        mX
    BCS L_C20249                    ; $C20238  B0 0F        mX
    TAY                             ; $C2023A  A8           mX
    LDA $C10E43,X                   ; $C2023B  BF 43 0E C1  mX
    ASL                             ; $C2023F  0A           mX
    ASL                             ; $C20240  0A           mX
    LDA #$FF                        ; $C20241  A9 FF        mX
    TAX                             ; $C20243  AA           mX
    TYA                             ; $C20244  98           mX
L_C20245:
    JSL L_C2024D                    ; $C20245  22 4D 02 C2  mX
L_C20249:
    PLP                             ; $C20249  28           MX
    PLY                             ; $C2024A  7A           MX
    PLX                             ; $C2024B  FA           MX
    RTL                             ; $C2024C  6B           MX
L_C2024D:
    PHP                             ; $C2024D  08           MX
    SEP #$20                        ; $C2024E  E2 20        MX
    STZ $20                         ; $C20250  64 20        mX
    PHX                             ; $C20252  DA           mX
    PHA                             ; $C20253  48           mX
    CMP #$00                        ; $C20254  C9 00        mX
    BEQ L_C2027B                    ; $C20256  F0 23        mX
    BMI L_C2027B                    ; $C20258  30 21        mX
    LDX #$0000                      ; $C2025A  A2 00 00     mX
L_C2025D:
    LDA $10,X                       ; $C2025D  B5 10        mX
    BEQ L_C20269                    ; $C2025F  F0 08        mX
    INX                             ; $C20261  E8           mX
    CPX #$0008                      ; $C20262  E0 08 00     mX
    BNE L_C2025D                    ; $C20265  D0 F6        mX
    BRA L_C20271                    ; $C20267  80 08        mX
L_C20269:
    LDA $02,S                       ; $C20269  A3 02        mX
    STA $18,X                       ; $C2026B  95 18        mX
    LDA $01,S                       ; $C2026D  A3 01        mX
    STA $10,X                       ; $C2026F  95 10        mX
L_C20271:
    LDA #$FF                        ; $C20271  A9 FF        mX
    STA $20                         ; $C20273  85 20        mX
    PLA                             ; $C20275  68           mX
    PLX                             ; $C20276  FA           mX
    REP #$20                        ; $C20277  C2 20        mX
    PLP                             ; $C20279  28           MX
    RTL                             ; $C2027A  6B           MX
L_C2027B:
    PHA                             ; $C2027B  48           mX
    LDX #$000F                      ; $C2027C  A2 0F 00     mX
    LDA #$00                        ; $C2027F  A9 00        mX
    STA $004200                     ; $C20281  8F 00 42 00  mX
L_C20285:
    STA $0F,X                       ; $C20285  95 0F        mX
    DEX                             ; $C20287  CA           mX
    BNE L_C20285                    ; $C20288  D0 FB        mX
L_C2028A:
    LDA $002140                     ; $C2028A  AF 40 21 00  mX
    CMP $0C                         ; $C2028E  C5 0C        mX
    BNE L_C2028A                    ; $C20290  D0 F8        mX
    LDA #$FF                        ; $C20292  A9 FF        mX
    STA $002141                     ; $C20294  8F 41 21 00  mX
    PLA                             ; $C20298  68           mX
    STA $002140                     ; $C20299  8F 40 21 00  mX
    LDA $0C                         ; $C2029D  A5 0C        mX
    INC                             ; $C2029F  1A           mX
    STA $0C                         ; $C202A0  85 0C        mX
    STA $002143                     ; $C202A2  8F 43 21 00  mX
    LDA $0B                         ; $C202A6  A5 0B        mX
    STA $004200                     ; $C202A8  8F 00 42 00  mX
    JMP L_C20271                    ; $C202AC  4C 71 02     mX
L_C202AF:
    PHP                             ; $C202AF  08           MX
    SEP #$20                        ; $C202B0  E2 20        MX
    STZ $20                         ; $C202B2  64 20        mX
    PHX                             ; $C202B4  DA           mX
    PHA                             ; $C202B5  48           mX
    LDX #$0000                      ; $C202B6  A2 00 00     mX
L_C202B9:
    LDA $10,X                       ; $C202B9  B5 10        mX
    BEQ L_C202C4                    ; $C202BB  F0 07        mX
    INX                             ; $C202BD  E8           mX
    CPX #$0008                      ; $C202BE  E0 08 00     mX
    BNE L_C202B9                    ; $C202C1  D0 F6        mX
    DEX                             ; $C202C3  CA           mX
L_C202C4:
    LDA #$FF                        ; $C202C4  A9 FF        mX
    STA $18,X                       ; $C202C6  95 18        mX
    LDA $01,S                       ; $C202C8  A3 01        mX
    STA $10,X                       ; $C202CA  95 10        mX
    LDA #$FF                        ; $C202CC  A9 FF        mX
    STA $20                         ; $C202CE  85 20        mX
    PLA                             ; $C202D0  68           mX
    PLX                             ; $C202D1  FA           mX
    REP #$20                        ; $C202D2  C2 20        mX
    PLP                             ; $C202D4  28           MX
    RTL                             ; $C202D5  6B           MX
L_C202D6:
    PHY                             ; $C202D6  5A           MX
    LDY #$0000                      ; $C202D7  A0 00 00     MX
    PHA                             ; $C202DA  48           MX
    LDA #$9703                      ; $C202DB  A9 03 97     MX
    PHX                             ; $C202DE  DA           MX
    INY                             ; $C202DF  C8           MX
    LDA #$9700                      ; $C202E0  A9 00 97     MX
    PHX                             ; $C202E3  DA           MX
    INY                             ; $C202E4  C8           MX
    PLA                             ; $C202E5  68           MX
    STA [$DA],Y                     ; $C202E6  97 DA        MX
    LDY $DA                         ; $C202E8  A4 DA        MX
    INY                             ; $C202EA  C8           MX
    INY                             ; $C202EB  C8           MX
    INY                             ; $C202EC  C8           MX
    STY $DA                         ; $C202ED  84 DA        MX
    PLY                             ; $C202EF  7A           MX
    RTS                             ; $C202F0  60           MX
L_C202F1:
    LDA $20                         ; $C202F1  A5 20        MX
    BEQ L_C20344                    ; $C202F3  F0 4F        MX
    LDA $002140                     ; $C202F5  AF 40 21 00  MX
    CMP $0C                         ; $C202F9  C5 0C        MX
    BNE L_C20344                    ; $C202FB  D0 47        MX
    LDA $23                         ; $C202FD  A5 23        MX
    BEQ L_C20309                    ; $C202FF  F0 08        MX
    PHA                             ; $C20301  48           MX
    LDA $22                         ; $C20302  A5 22        MX
    PHA                             ; $C20304  48           MX
    STZ $23                         ; $C20305  64 23        MX
    BRA L_C20331                    ; $C20307  80 28        MX
L_C20309:
    LDX #$0000                      ; $C20309  A2 00 00     MX
    LDY #$0008                      ; $C2030C  A0 08 00     MX
L_C2030F:
    LDA $10,X                       ; $C2030F  B5 10        MX
    BNE L_C20319                    ; $C20311  D0 06        MX
    INX                             ; $C20313  E8           MX
    DEY                             ; $C20314  88           MX
    BNE L_C2030F                    ; $C20315  D0 F8        MX
    BRA L_C20344                    ; $C20317  80 2B        MX
L_C20319:
    PHA                             ; $C20319  48           MX
    LDA $18,X                       ; $C2031A  B5 18        MX
    PHA                             ; $C2031C  48           MX
L_C2031D:
    STZ $10,X                       ; $C2031D  74 10        MX
    STZ $18,X                       ; $C2031F  74 18        MX
    CPX #$0007                      ; $C20321  E0 07 00     MX
    BEQ L_C20331                    ; $C20324  F0 0B        MX
    LDA $11,X                       ; $C20326  B5 11        MX
    STA $10,X                       ; $C20328  95 10        MX
    LDA $19,X                       ; $C2032A  B5 19        MX
    STA $18,X                       ; $C2032C  95 18        MX
    INX                             ; $C2032E  E8           MX
    BRA L_C2031D                    ; $C2032F  80 EC        MX
L_C20331:
    PLA                             ; $C20331  68           MX
    STA $002141                     ; $C20332  8F 41 21 00  MX
    PLA                             ; $C20336  68           MX
    STA $002140                     ; $C20337  8F 40 21 00  MX
    LDA $0C                         ; $C2033B  A5 0C        MX
    INC                             ; $C2033D  1A           MX
    STA $0C                         ; $C2033E  85 0C        MX
    STA $002143                     ; $C20340  8F 43 21 00  MX
L_C20344:
    RTL                             ; $C20344  6B           MX
L_C20345:
    PHP                             ; $C20345  08           MX
    REP #$30                        ; $C20346  C2 30        MX
    STZ $10                         ; $C20348  64 10        MX
    STZ $12                         ; $C2034A  64 12        MX
    STZ $14                         ; $C2034C  64 14        MX
    STZ $16                         ; $C2034E  64 16        MX
    STZ $18                         ; $C20350  64 18        MX
    STZ $1A                         ; $C20352  64 1A        MX
    STZ $1C                         ; $C20354  64 1C        MX
    STZ $1E                         ; $C20356  64 1E        MX
    STZ $22                         ; $C20358  64 22        MX
    LDA #$0000                      ; $C2035A  A9 00 00     MX
    STA $26                         ; $C2035D  85 26        MX
    LDA #$00D4                      ; $C2035F  A9 D4 00     MX
    STA $28                         ; $C20362  85 28        MX
    JSL L_C203CF                    ; $C20364  22 CF 03 C2  MX
    LDA #$00CD                      ; $C20368  A9 CD 00     MX
    STA $26                         ; $C2036B  85 26        MX
    LDA #$00D4                      ; $C2036D  A9 D4 00     MX
    STA $28                         ; $C20370  85 28        MX
    JSR L_C2037B                    ; $C20372  20 7B 03     MX
    STA $002143                     ; $C20375  8F 43 21 00  mX
    PLP                             ; $C20379  28           mX
    RTL                             ; $C2037A  6B           MX
L_C2037B:
    SEP #$20                        ; $C2037B  E2 20        MX
    LDA #$00                        ; $C2037D  A9 00        mX
    STA $004200                     ; $C2037F  8F 00 42 00  mX
    JSL L_C203CF                    ; $C20383  22 CF 03 C2  mX
    LDA $0B                         ; $C20387  A5 0B        mX
    STA $004200                     ; $C20389  8F 00 42 00  mX
L_C2038D:
    LDA $002140                     ; $C2038D  AF 40 21 00  mX
    BNE L_C2038D                    ; $C20391  D0 FA        mX
    LDA #$FF                        ; $C20393  A9 FF        mX
    STA $002142                     ; $C20395  8F 42 21 00  mX
    STA $0C                         ; $C20399  85 0C        mX
    RTS                             ; $C2039B  60           mX
L_C2039C:
    PHP                             ; $C2039C  08           MX
    SEI                             ; $C2039D  78           MX
    SEP #$30                        ; $C2039E  E2 30        MX
L_C203A0:
    LDA $002140                     ; $C203A0  AF 40 21 00  mx
    CMP $0C                         ; $C203A4  C5 0C        mx
    BNE L_C203A0                    ; $C203A6  D0 F8        mx
    LDA #$82                        ; $C203A8  A9 82        mx
    STA $002140                     ; $C203AA  8F 40 21 00  mx
    LDA $0C                         ; $C203AE  A5 0C        mx
    INC                             ; $C203B0  1A           mx
    STA $0C                         ; $C203B1  85 0C        mx
    STA $002143                     ; $C203B3  8F 43 21 00  mx
    REP #$30                        ; $C203B7  C2 30        mx
    JSR L_C2037B                    ; $C203B9  20 7B 03     MX
    STA $002143                     ; $C203BC  8F 43 21 00  mX
    PLP                             ; $C203C0  28           mX
    RTL                             ; $C203C1  6B           MX
L_C203C2:
    PHP                             ; $C203C2  08           mX
    REP #$20                        ; $C203C3  C2 20        mX
    LDA $002141                     ; $C203C5  AF 41 21 00  MX
    STA $46                         ; $C203C9  85 46        MX
    SEP #$20                        ; $C203CB  E2 20        MX
    PLP                             ; $C203CD  28           mX
    RTL                             ; $C203CE  6B           mX
L_C203CF:
    PHP                             ; $C203CF  08           mX
    REP #$30                        ; $C203D0  C2 30        mX
    LDY #$0000                      ; $C203D2  A0 00 00     MX
    LDA #$BBAA                      ; $C203D5  A9 AA BB     MX
L_C203D8:
    CMP $002140                     ; $C203D8  CF 40 21 00  MX
    BNE L_C203D8                    ; $C203DC  D0 FA        MX
    SEP #$20                        ; $C203DE  E2 20        MX
    LDA #$CC                        ; $C203E0  A9 CC        mX
    BRA L_C2040D                    ; $C203E2  80 29        mX
L_C203E4:
    LDA [$26],Y                     ; $C203E4  B7 26        mX
    INY                             ; $C203E6  C8           mX
    XBA                             ; $C203E7  EB           mX
    LDA #$00                        ; $C203E8  A9 00        mX
    BRA L_C203F8                    ; $C203EA  80 0C        mX
L_C203EC:
    XBA                             ; $C203EC  EB           mX
    LDA [$26],Y                     ; $C203ED  B7 26        mX
    INY                             ; $C203EF  C8           mX
    XBA                             ; $C203F0  EB           mX
L_C203F1:
    CMP $002140                     ; $C203F1  CF 40 21 00  mX
    BNE L_C203F1                    ; $C203F5  D0 FA        mX
    INC                             ; $C203F7  1A           mX
L_C203F8:
    REP #$20                        ; $C203F8  C2 20        mX
    STA $002140                     ; $C203FA  8F 40 21 00  MX
    SEP #$20                        ; $C203FE  E2 20        MX
    DEX                             ; $C20400  CA           mX
    BNE L_C203EC                    ; $C20401  D0 E9        mX
L_C20403:
    CMP $002140                     ; $C20403  CF 40 21 00  mX
    BNE L_C20403                    ; $C20407  D0 FA        mX
L_C20409:
    ADC #$03                        ; $C20409  69 03        mX
    BEQ L_C20409                    ; $C2040B  F0 FC        mX
L_C2040D:
    PHA                             ; $C2040D  48           mX
    REP #$20                        ; $C2040E  C2 20        mX
    LDA [$26],Y                     ; $C20410  B7 26        MX
    INY                             ; $C20412  C8           MX
    INY                             ; $C20413  C8           MX
    TAX                             ; $C20414  AA           MX
    LDA [$26],Y                     ; $C20415  B7 26        MX
    INY                             ; $C20417  C8           MX
    INY                             ; $C20418  C8           MX
    STA $002142                     ; $C20419  8F 42 21 00  MX
    SEP #$20                        ; $C2041D  E2 20        MX
    CPX #$0001                      ; $C2041F  E0 01 00     mX
    LDA #$00                        ; $C20422  A9 00        mX
    ROL                             ; $C20424  2A           mX
    STA $002141                     ; $C20425  8F 41 21 00  mX
    ADC #$7F                        ; $C20429  69 7F        mX
    PLA                             ; $C2042B  68           mX
    STA $002140                     ; $C2042C  8F 40 21 00  mX
L_C20430:
    CMP $002140                     ; $C20430  CF 40 21 00  mX
    BNE L_C20430                    ; $C20434  D0 FA        mX
    BVS L_C203E4                    ; $C20436  70 AC        mX
    PLP                             ; $C20438  28           mX
    RTL                             ; $C20439  6B           mX
L_C2043A:
    PHA                             ; $C2043A  48           mX
    JSL L_C20445                    ; $C2043B  22 45 04 C2  mX
    PLA                             ; $C2043F  68           MX
    JSL L_C20466                    ; $C20440  22 66 04 C2  MX
    RTL                             ; $C20444  6B           MX
L_C20445:
    SEP #$20                        ; $C20445  E2 20        MX
    STA $002131                     ; $C20447  8F 31 21 00  mX
    LDA #$E0                        ; $C2044B  A9 E0        mX
L_C2044D:
    PHA                             ; $C2044D  48           mX
    STA $002132                     ; $C2044E  8F 32 21 00  mX
    LDA $66                         ; $C20452  A5 66        mX
L_C20454:
    CMP $66                         ; $C20454  C5 66        mX
    BEQ L_C20454                    ; $C20456  F0 FC        mX
    PLA                             ; $C20458  68           mX
    INC                             ; $C20459  1A           mX
    INC                             ; $C2045A  1A           mX
    BMI L_C2044D                    ; $C2045B  30 F0        mX
    LDA #$FF                        ; $C2045D  A9 FF        mX
    STA $002132                     ; $C2045F  8F 32 21 00  mX
    REP #$20                        ; $C20463  C2 20        mX
    RTL                             ; $C20465  6B           MX
L_C20466:
    SEP #$20                        ; $C20466  E2 20        MX
    STA $002131                     ; $C20468  8F 31 21 00  mX
    LDA #$FF                        ; $C2046C  A9 FF        mX
L_C2046E:
    STA $002132                     ; $C2046E  8F 32 21 00  mX
    PHA                             ; $C20472  48           mX
    LDA $66                         ; $C20473  A5 66        mX
L_C20475:
    CMP $66                         ; $C20475  C5 66        mX
    BEQ L_C20475                    ; $C20477  F0 FC        mX
    PLA                             ; $C20479  68           mX
    DEC                             ; $C2047A  3A           mX
    DEC                             ; $C2047B  3A           mX
    CMP #$E0                        ; $C2047C  C9 E0        mX
    BCS L_C2046E                    ; $C2047E  B0 EE        mX
    LDA #$00                        ; $C20480  A9 00        mX
    STA $002132                     ; $C20482  8F 32 21 00  mX
    REP #$20                        ; $C20486  C2 20        mX
    RTL                             ; $C20488  6B           MX
L_C20489:
    SEP #$20                        ; $C20489  E2 20        MX
    LDA $DE                         ; $C2048B  A5 DE        mX
    STA $00420C                     ; $C2048D  8F 0C 42 00  mX
    LDA #$00                        ; $C20491  A9 00        mX
    STA $002132                     ; $C20493  8F 32 21 00  mX
L_C20497:
    XBA                             ; $C20497  EB           mX
    LDA $66                         ; $C20498  A5 66        mX
L_C2049A:
    CMP $66                         ; $C2049A  C5 66        mX
    BEQ L_C2049A                    ; $C2049C  F0 FC        mX
    XBA                             ; $C2049E  EB           mX
    STA $002100                     ; $C2049F  8F 00 21 00  mX
    INC                             ; $C204A3  1A           mX
    CMP #$10                        ; $C204A4  C9 10        mX
    BCC L_C20497                    ; $C204A6  90 EF        mX
    REP #$20                        ; $C204A8  C2 20        mX
    RTL                             ; $C204AA  6B           MX
L_C204AB:
    SEP #$20                        ; $C204AB  E2 20        MX
    LDA #$0F                        ; $C204AD  A9 0F        mX
L_C204AF:
    XBA                             ; $C204AF  EB           mX
    LDA $66                         ; $C204B0  A5 66        mX
L_C204B2:
    CMP $66                         ; $C204B2  C5 66        mX
    BEQ L_C204B2                    ; $C204B4  F0 FC        mX
    XBA                             ; $C204B6  EB           mX
    STA $002100                     ; $C204B7  8F 00 21 00  mX
    DEC                             ; $C204BB  3A           mX
    BPL L_C204AF                    ; $C204BC  10 F1        mX
    LDA #$80                        ; $C204BE  A9 80        mX
    STA $002100                     ; $C204C0  8F 00 21 00  mX
    LDA #$00                        ; $C204C4  A9 00        mX
    STA $00420C                     ; $C204C6  8F 0C 42 00  mX
    REP #$20                        ; $C204CA  C2 20        mX
    RTL                             ; $C204CC  6B           MX
L_C204CD:
    SEP #$20                        ; $C204CD  E2 20        MX
    AND #$FE                        ; $C204CF  29 FE        mX
    PHA                             ; $C204D1  48           mX
    LDA #$0F                        ; $C204D2  A9 0F        mX
    STA $002100                     ; $C204D4  8F 00 21 00  mX
    LDA #$80                        ; $C204D8  A9 80        mX
L_C204DA:
    PHA                             ; $C204DA  48           mX
    LDA $66                         ; $C204DB  A5 66        mX
L_C204DD:
    CMP $66                         ; $C204DD  C5 66        mX
    BEQ L_C204DD                    ; $C204DF  F0 FC        mX
    PLA                             ; $C204E1  68           mX
    DEC                             ; $C204E2  3A           mX
    DEC                             ; $C204E3  3A           mX
    STA $002126                     ; $C204E4  8F 26 21 00  mX
    EOR #$FF                        ; $C204E8  49 FF        mX
    STA $002127                     ; $C204EA  8F 27 21 00  mX
    EOR #$FF                        ; $C204EE  49 FF        mX
    CMP $01,S                       ; $C204F0  C3 01        mX
    BNE L_C204DA                    ; $C204F2  D0 E6        mX
    PLA                             ; $C204F4  68           mX
    BNE L_C20507                    ; $C204F5  D0 10        mX
    STA $002123                     ; $C204F7  8F 23 21 00  mX
    STA $002124                     ; $C204FB  8F 24 21 00  mX
    STA $002125                     ; $C204FF  8F 25 21 00  mX
    STA $00212E                     ; $C20503  8F 2E 21 00  mX
L_C20507:
    REP #$20                        ; $C20507  C2 20        mX
    RTL                             ; $C20509  6B           MX
L_C2050A:
    SEP #$20                        ; $C2050A  E2 20        MX
    AND #$FE                        ; $C2050C  29 FE        mX
    PHA                             ; $C2050E  48           mX
    LDA $66                         ; $C2050F  A5 66        mX
L_C20511:
    CMP $66                         ; $C20511  C5 66        mX
    BEQ L_C20511                    ; $C20513  F0 FC        mX
    LDA $01,S                       ; $C20515  A3 01        mX
    STA $002126                     ; $C20517  8F 26 21 00  mX
    EOR #$FF                        ; $C2051B  49 FF        mX
    STA $002127                     ; $C2051D  8F 27 21 00  mX
    LDA #$33                        ; $C20521  A9 33        mX
    STA $002123                     ; $C20523  8F 23 21 00  mX
    STA $002124                     ; $C20527  8F 24 21 00  mX
    STA $002125                     ; $C2052B  8F 25 21 00  mX
    LDA #$1F                        ; $C2052F  A9 1F        mX
    STA $00212E                     ; $C20531  8F 2E 21 00  mX
    PLA                             ; $C20535  68           mX
L_C20536:
    PHA                             ; $C20536  48           mX
    LDA $66                         ; $C20537  A5 66        mX
L_C20539:
    CMP $66                         ; $C20539  C5 66        mX
    BEQ L_C20539                    ; $C2053B  F0 FC        mX
    PLA                             ; $C2053D  68           mX
    STA $002126                     ; $C2053E  8F 26 21 00  mX
    EOR #$FF                        ; $C20542  49 FF        mX
    STA $002127                     ; $C20544  8F 27 21 00  mX
    EOR #$FF                        ; $C20548  49 FF        mX
    INC                             ; $C2054A  1A           mX
    INC                             ; $C2054B  1A           mX
    BPL L_C20536                    ; $C2054C  10 E8        mX
    LDA #$80                        ; $C2054E  A9 80        mX
    STA $002100                     ; $C20550  8F 00 21 00  mX
    REP #$20                        ; $C20554  C2 20        mX
    RTL                             ; $C20556  6B           MX
L_C20557:
    PHA                             ; $C20557  48           MX
    PHX                             ; $C20558  DA           MX
    PHY                             ; $C20559  5A           MX
    LDA #$2200                      ; $C2055A  A9 00 22     MX
    STA $004300                     ; $C2055D  8F 00 43 00  MX
    LDA #$0008                      ; $C20561  A9 08 00     MX
L_C20564:
    PHA                             ; $C20564  48           MX
    JSR L_C20608                    ; $C20565  20 08 06     MX
    TXA                             ; $C20568  8A           MX
    STA $004302                     ; $C20569  8F 02 43 00  MX
    LDA #$007F                      ; $C2056D  A9 7F 00     MX
    STA $004304                     ; $C20570  8F 04 43 00  MX
    TYA                             ; $C20574  98           MX
    ASL                             ; $C20575  0A           MX
    STA $004305                     ; $C20576  8F 05 43 00  MX
    LDA $66                         ; $C2057A  A5 66        MX
L_C2057C:
    CMP $66                         ; $C2057C  C5 66        MX
    BEQ L_C2057C                    ; $C2057E  F0 FC        MX
    LDA $66                         ; $C20580  A5 66        MX
L_C20582:
    CMP $66                         ; $C20582  C5 66        MX
    BEQ L_C20582                    ; $C20584  F0 FC        MX
    SEP #$20                        ; $C20586  E2 20        MX
    LDA $07,S                       ; $C20588  A3 07        mX
    STA $002121                     ; $C2058A  8F 21 21 00  mX
    LDA #$01                        ; $C2058E  A9 01        mX
    STA $00420B                     ; $C20590  8F 0B 42 00  mX
    REP #$20                        ; $C20594  C2 20        mX
    PLA                             ; $C20596  68           MX
    DEC                             ; $C20597  3A           MX
    BNE L_C20564                    ; $C20598  D0 CA        MX
    PLY                             ; $C2059A  7A           MX
    PLX                             ; $C2059B  FA           MX
    PLA                             ; $C2059C  68           MX
    RTL                             ; $C2059D  6B           MX
L_C2059E:
    PHX                             ; $C2059E  DA           MX
    PHY                             ; $C2059F  5A           MX
    LDA #$2200                      ; $C205A0  A9 00 22     MX
    STA $004300                     ; $C205A3  8F 00 43 00  MX
    LDA #$0020                      ; $C205A7  A9 20 00     MX
L_C205AA:
    JSR L_C205F1                    ; $C205AA  20 F1 05     MX
    PHA                             ; $C205AD  48           MX
    PHX                             ; $C205AE  DA           MX
    TXA                             ; $C205AF  8A           MX
    CLC                             ; $C205B0  18           MX
    ADC #$0100                      ; $C205B1  69 00 01     MX
    TAX                             ; $C205B4  AA           MX
    LDA $03,S                       ; $C205B5  A3 03        MX
L_C205B7:
    JSR L_C20608                    ; $C205B7  20 08 06     MX
    DEC                             ; $C205BA  3A           MX
    BNE L_C205B7                    ; $C205BB  D0 FA        MX
    PLX                             ; $C205BD  FA           MX
    TXA                             ; $C205BE  8A           MX
    CLC                             ; $C205BF  18           MX
    ADC #$0100                      ; $C205C0  69 00 01     MX
    STA $004302                     ; $C205C3  8F 02 43 00  MX
    LDA #$007F                      ; $C205C7  A9 7F 00     MX
    STA $004304                     ; $C205CA  8F 04 43 00  MX
    TYA                             ; $C205CE  98           MX
    ASL                             ; $C205CF  0A           MX
    STA $004305                     ; $C205D0  8F 05 43 00  MX
    LDA $66                         ; $C205D4  A5 66        MX
L_C205D6:
    CMP $66                         ; $C205D6  C5 66        MX
    BEQ L_C205D6                    ; $C205D8  F0 FC        MX
    TXA                             ; $C205DA  8A           MX
    LSR                             ; $C205DB  4A           MX
    SEP #$20                        ; $C205DC  E2 20        MX
    STA $002121                     ; $C205DE  8F 21 21 00  mX
    LDA #$01                        ; $C205E2  A9 01        mX
    STA $00420B                     ; $C205E4  8F 0B 42 00  mX
    REP #$20                        ; $C205E8  C2 20        mX
    PLA                             ; $C205EA  68           MX
    DEC                             ; $C205EB  3A           MX
    BNE L_C205AA                    ; $C205EC  D0 BC        MX
    PLY                             ; $C205EE  7A           MX
    PLX                             ; $C205EF  FA           MX
    RTL                             ; $C205F0  6B           MX
L_C205F1:
    PHA                             ; $C205F1  48           MX
    PHX                             ; $C205F2  DA           MX
    PHY                             ; $C205F3  5A           MX
    TYA                             ; $C205F4  98           MX
    ASL                             ; $C205F5  0A           MX
    DEC                             ; $C205F6  3A           MX
    PHA                             ; $C205F7  48           MX
    TXA                             ; $C205F8  8A           MX
    CLC                             ; $C205F9  18           MX
    ADC #$0100                      ; $C205FA  69 00 01     MX
    TAY                             ; $C205FD  A8           MX
    PLA                             ; $C205FE  68           MX
    PHB                             ; $C205FF  8B           MX
    MVN $7F,$7F                     ; $C20600  54 7F 7F     MX
    PLB                             ; $C20603  AB           MX
    PLY                             ; $C20604  7A           MX
    PLX                             ; $C20605  FA           MX
    PLA                             ; $C20606  68           MX
    RTS                             ; $C20607  60           MX
L_C20608:
    PHA                             ; $C20608  48           MX
    PHX                             ; $C20609  DA           MX
    PHY                             ; $C2060A  5A           MX
L_C2060B:
    LDA $7F0000,X                   ; $C2060B  BF 00 00 7F  MX
    PHA                             ; $C2060F  48           MX
    AND #$7FE0                      ; $C20610  29 E0 7F     MX
    STA $7F0000,X                   ; $C20613  9F 00 00 7F  MX
    PLA                             ; $C20617  68           MX
    AND #$001F                      ; $C20618  29 1F 00     MX
    SEC                             ; $C2061B  38           MX
    SBC #$0001                      ; $C2061C  E9 01 00     MX
    BMI L_C20629                    ; $C2061F  30 08        MX
    ORA $7F0000,X                   ; $C20621  1F 00 00 7F  MX
    STA $7F0000,X                   ; $C20625  9F 00 00 7F  MX
L_C20629:
    LDA $7F0000,X                   ; $C20629  BF 00 00 7F  MX
    PHA                             ; $C2062D  48           MX
    AND #$7C1F                      ; $C2062E  29 1F 7C     MX
    STA $7F0000,X                   ; $C20631  9F 00 00 7F  MX
    PLA                             ; $C20635  68           MX
    AND #$03E0                      ; $C20636  29 E0 03     MX
    SEC                             ; $C20639  38           MX
    SBC #$0020                      ; $C2063A  E9 20 00     MX
    BMI L_C20647                    ; $C2063D  30 08        MX
    ORA $7F0000,X                   ; $C2063F  1F 00 00 7F  MX
    STA $7F0000,X                   ; $C20643  9F 00 00 7F  MX
L_C20647:
    LDA $7F0000,X                   ; $C20647  BF 00 00 7F  MX
    PHA                             ; $C2064B  48           MX
    AND #$03FF                      ; $C2064C  29 FF 03     MX
    STA $7F0000,X                   ; $C2064F  9F 00 00 7F  MX
    PLA                             ; $C20653  68           MX
    AND #$7C00                      ; $C20654  29 00 7C     MX
    SEC                             ; $C20657  38           MX
    SBC #$0400                      ; $C20658  E9 00 04     MX
    BMI L_C20665                    ; $C2065B  30 08        MX
    ORA $7F0000,X                   ; $C2065D  1F 00 00 7F  MX
    STA $7F0000,X                   ; $C20661  9F 00 00 7F  MX
L_C20665:
    INX                             ; $C20665  E8           MX
    INX                             ; $C20666  E8           MX
    DEY                             ; $C20667  88           MX
    BNE L_C2060B                    ; $C20668  D0 A1        MX
    PLY                             ; $C2066A  7A           MX
    PLX                             ; $C2066B  FA           MX
    PLA                             ; $C2066C  68           MX
    RTS                             ; $C2066D  60           MX
L_C2066E:
    LDA $0831                       ; $C2066E  AD 31 08     MX
    SEC                             ; $C20671  38           MX
    SBC $082D                       ; $C20672  ED 2D 08     MX
    BPL L_C20683                    ; $C20675  10 0C        MX
    EOR #$FFFF                      ; $C20677  49 FF FF     MX
    INC                             ; $C2067A  1A           MX
    STA $0831                       ; $C2067B  8D 31 08     MX
    LDA #$FFFF                      ; $C2067E  A9 FF FF     MX
    BRA L_C20689                    ; $C20681  80 06        MX
L_C20683:
    STA $0831                       ; $C20683  8D 31 08     MX
    LDA #$0001                      ; $C20686  A9 01 00     MX
L_C20689:
    STA $083B                       ; $C20689  8D 3B 08     MX
    LDA $0833                       ; $C2068C  AD 33 08     MX
    SEC                             ; $C2068F  38           MX
    SBC $082F                       ; $C20690  ED 2F 08     MX
    BPL L_C206A1                    ; $C20693  10 0C        MX
    EOR #$FFFF                      ; $C20695  49 FF FF     MX
    INC                             ; $C20698  1A           MX
    STA $0833                       ; $C20699  8D 33 08     MX
    LDA #$FFFF                      ; $C2069C  A9 FF FF     MX
    BRA L_C206A7                    ; $C2069F  80 06        MX
L_C206A1:
    STA $0833                       ; $C206A1  8D 33 08     MX
    LDA #$0001                      ; $C206A4  A9 01 00     MX
L_C206A7:
    STA $083D                       ; $C206A7  8D 3D 08     MX
    LDA $0833                       ; $C206AA  AD 33 08     MX
    SEC                             ; $C206AD  38           MX
    SBC $0831                       ; $C206AE  ED 31 08     MX
    ASL                             ; $C206B1  0A           MX
    BPL L_C206C9                    ; $C206B2  10 15        MX
    STA $0837                       ; $C206B4  8D 37 08     MX
    LDA $0833                       ; $C206B7  AD 33 08     MX
    ASL                             ; $C206BA  0A           MX
    STA $0839                       ; $C206BB  8D 39 08     MX
    SEC                             ; $C206BE  38           MX
    SBC $0831                       ; $C206BF  ED 31 08     MX
    STA $0835                       ; $C206C2  8D 35 08     MX
    STZ $083F                       ; $C206C5  9C 3F 08     MX
    RTL                             ; $C206C8  6B           MX
L_C206C9:
    EOR #$FFFF                      ; $C206C9  49 FF FF     MX
    INC                             ; $C206CC  1A           MX
    STA $0837                       ; $C206CD  8D 37 08     MX
    LDA $0831                       ; $C206D0  AD 31 08     MX
    ASL                             ; $C206D3  0A           MX
    STA $0839                       ; $C206D4  8D 39 08     MX
    SEC                             ; $C206D7  38           MX
    SBC $0833                       ; $C206D8  ED 33 08     MX
    STA $0835                       ; $C206DB  8D 35 08     MX
    LDA #$0001                      ; $C206DE  A9 01 00     MX
    STA $083F                       ; $C206E1  8D 3F 08     MX
    RTL                             ; $C206E4  6B           MX
L_C206E5:
    LDX #$0010                      ; $C206E5  A2 10 00     MX
    LDA $083B                       ; $C206E8  AD 3B 08     MX
    STA $0831                       ; $C206EB  8D 31 08     MX
    LDA $083D                       ; $C206EE  AD 3D 08     MX
    STA $0833                       ; $C206F1  8D 33 08     MX
    LDA $083F                       ; $C206F4  AD 3F 08     MX
    BNE L_C20726                    ; $C206F7  D0 2D        MX
L_C206F9:
    LDA $082D                       ; $C206F9  AD 2D 08     MX
    CLC                             ; $C206FC  18           MX
    ADC $0831                       ; $C206FD  6D 31 08     MX
    STA $082D                       ; $C20700  8D 2D 08     MX
    LDA $0835                       ; $C20703  AD 35 08     MX
    BMI L_C2071B                    ; $C20706  30 13        MX
    CLC                             ; $C20708  18           MX
    ADC $0837                       ; $C20709  6D 37 08     MX
    STA $0835                       ; $C2070C  8D 35 08     MX
    LDA $082F                       ; $C2070F  AD 2F 08     MX
    CLC                             ; $C20712  18           MX
    ADC $0833                       ; $C20713  6D 33 08     MX
    STA $082F                       ; $C20716  8D 2F 08     MX
    BRA L_C20722                    ; $C20719  80 07        MX
L_C2071B:
    CLC                             ; $C2071B  18           MX
    ADC $0839                       ; $C2071C  6D 39 08     MX
    STA $0835                       ; $C2071F  8D 35 08     MX
L_C20722:
    DEX                             ; $C20722  CA           MX
    BNE L_C206F9                    ; $C20723  D0 D4        MX
    RTL                             ; $C20725  6B           MX
L_C20726:
    LDA $082F                       ; $C20726  AD 2F 08     MX
    CLC                             ; $C20729  18           MX
    ADC $0833                       ; $C2072A  6D 33 08     MX
    STA $082F                       ; $C2072D  8D 2F 08     MX
    LDA $0835                       ; $C20730  AD 35 08     MX
    BMI L_C20748                    ; $C20733  30 13        MX
    CLC                             ; $C20735  18           MX
    ADC $0837                       ; $C20736  6D 37 08     MX
    STA $0835                       ; $C20739  8D 35 08     MX
    LDA $082D                       ; $C2073C  AD 2D 08     MX
    CLC                             ; $C2073F  18           MX
    ADC $0831                       ; $C20740  6D 31 08     MX
    STA $082D                       ; $C20743  8D 2D 08     MX
    BRA L_C2074F                    ; $C20746  80 07        MX
L_C20748:
    CLC                             ; $C20748  18           MX
    ADC $0839                       ; $C20749  6D 39 08     MX
    STA $0835                       ; $C2074C  8D 35 08     MX
L_C2074F:
    DEX                             ; $C2074F  CA           MX
    BNE L_C20726                    ; $C20750  D0 D4        MX
    RTL                             ; $C20752  6B           MX
L_C20753:
    PHP                             ; $C20753  08           MX
    REP #$20                        ; $C20754  C2 20        MX
    PHX                             ; $C20756  DA           MX
    PHA                             ; $C20757  48           MX
    AND #$00FF                      ; $C20758  29 FF 00     MX
    SEP #$20                        ; $C2075B  E2 20        MX
    BEQ L_C2076D                    ; $C2075D  F0 0E        mX
    TAX                             ; $C2075F  AA           mX
    LDA $C80054,X                   ; $C20760  BF 54 00 C8  mX
    CLC                             ; $C20764  18           mX
    ADC $01,S                       ; $C20765  63 01        mX
    BEQ L_C2076B                    ; $C20767  F0 02        mX
    BPL L_C2076D                    ; $C20769  10 02        mX
L_C2076B:
    LDA #$01                        ; $C2076B  A9 01        mX
L_C2076D:
    REP #$20                        ; $C2076D  C2 20        mX
    PLX                             ; $C2076F  FA           MX
    AND #$00FF                      ; $C20770  29 FF 00     MX
    PLX                             ; $C20773  FA           MX
    PLP                             ; $C20774  28           MX
    RTL                             ; $C20775  6B           MX
L_C20776:
    PHP                             ; $C20776  08           MX
    REP #$20                        ; $C20777  C2 20        MX
    PHA                             ; $C20779  48           MX
    PHX                             ; $C2077A  DA           MX
    LDA $46                         ; $C2077B  A5 46        MX
    AND #$00FF                      ; $C2077D  29 FF 00     MX
    SEP #$20                        ; $C20780  E2 20        MX
    BEQ L_C20792                    ; $C20782  F0 0E        mX
    TAX                             ; $C20784  AA           mX
    LDA $C80054,X                   ; $C20785  BF 54 00 C8  mX
    CLC                             ; $C20789  18           mX
    ADC $46                         ; $C2078A  65 46        mX
    BEQ L_C20790                    ; $C2078C  F0 02        mX
    BPL L_C20792                    ; $C2078E  10 02        mX
L_C20790:
    LDA #$01                        ; $C20790  A9 01        mX
L_C20792:
    REP #$20                        ; $C20792  C2 20        mX
    AND #$00FF                      ; $C20794  29 FF 00     MX
    STA $46                         ; $C20797  85 46        MX
    PLX                             ; $C20799  FA           MX
    PLA                             ; $C2079A  68           MX
    PLP                             ; $C2079B  28           MX
    RTL                             ; $C2079C  6B           MX
L_C2079D:
    PHX                             ; $C2079D  DA           MX
    PHA                             ; $C2079E  48           MX
    AND #$00FF                      ; $C2079F  29 FF 00     MX
    BEQ L_C207BF                    ; $C207A2  F0 1B        MX
    SEP #$20                        ; $C207A4  E2 20        MX
    TAX                             ; $C207A6  AA           mX
    LDA $C80154,X                   ; $C207A7  BF 54 01 C8  mX
    CLC                             ; $C207AB  18           mX
    ADC $01,S                       ; $C207AC  63 01        mX
    BNE L_C207B2                    ; $C207AE  D0 02        mX
    LDA #$01                        ; $C207B0  A9 01        mX
L_C207B2:
    REP #$20                        ; $C207B2  C2 20        mX
    AND #$00FF                      ; $C207B4  29 FF 00     MX
    BIT #$0080                      ; $C207B7  89 80 00     MX
    BEQ L_C207BF                    ; $C207BA  F0 03        MX
    ORA #$FF00                      ; $C207BC  09 00 FF     MX
L_C207BF:
    PLX                             ; $C207BF  FA           MX
    PLX                             ; $C207C0  FA           MX
    RTL                             ; $C207C1  6B           MX
L_C207C2:
    LDA $076D                       ; $C207C2  AD 6D 07     MX
    LSR                             ; $C207C5  4A           MX
    LSR                             ; $C207C6  4A           MX
    STA $004202                     ; $C207C7  8F 02 42 00  MX
    LDA $0757                       ; $C207CB  AD 57 07     MX
    CLC                             ; $C207CE  18           MX
    ADC #$0060                      ; $C207CF  69 60 00     MX
    BPL L_C207D7                    ; $C207D2  10 03        MX
    LDA #$0000                      ; $C207D4  A9 00 00     MX
L_C207D7:
    LSR                             ; $C207D7  4A           MX
    LSR                             ; $C207D8  4A           MX
    LSR                             ; $C207D9  4A           MX
    LSR                             ; $C207DA  4A           MX
    LSR                             ; $C207DB  4A           MX
    LSR                             ; $C207DC  4A           MX
    SEP #$20                        ; $C207DD  E2 20        MX
    STA $004203                     ; $C207DF  8F 03 42 00  mX
    REP #$20                        ; $C207E3  C2 20        mX
    NOP                             ; $C207E5  EA           MX
    NOP                             ; $C207E6  EA           MX
    NOP                             ; $C207E7  EA           MX
    NOP                             ; $C207E8  EA           MX
    NOP                             ; $C207E9  EA           MX
    NOP                             ; $C207EA  EA           MX
    NOP                             ; $C207EB  EA           MX
    NOP                             ; $C207EC  EA           MX
    LDA $004216                     ; $C207ED  AF 16 42 00  MX
    STA $46                         ; $C207F1  85 46        MX
    SEP #$20                        ; $C207F3  E2 20        MX
    LDA $076D                       ; $C207F5  AD 6D 07     mX
    STA $004202                     ; $C207F8  8F 02 42 00  mX
    REP #$20                        ; $C207FC  C2 20        mX
    LDA $0755                       ; $C207FE  AD 55 07     MX
    CLC                             ; $C20801  18           MX
    ADC #$0080                      ; $C20802  69 80 00     MX
    LSR                             ; $C20805  4A           MX
    LSR                             ; $C20806  4A           MX
    LSR                             ; $C20807  4A           MX
    LSR                             ; $C20808  4A           MX
    LSR                             ; $C20809  4A           MX
    LSR                             ; $C2080A  4A           MX
    CLC                             ; $C2080B  18           MX
    ADC $46                         ; $C2080C  65 46        MX
    CLC                             ; $C2080E  18           MX
    ADC $06DE                       ; $C2080F  6D DE 06     MX
    TAY                             ; $C20812  A8           MX
    LDA $68E0,Y                     ; $C20813  B9 E0 68     MX
    AND #$000F                      ; $C20816  29 0F 00     MX
    BEQ L_C20830                    ; $C20819  F0 15        MX
    SEP #$20                        ; $C2081B  E2 20        MX
    CMP $0F                         ; $C2081D  C5 0F        mX
    REP #$20                        ; $C2081F  C2 20        mX
    BEQ L_C20830                    ; $C20821  F0 0D        MX
    SEP #$20                        ; $C20823  E2 20        MX
    STA $0F                         ; $C20825  85 0F        mX
    REP #$20                        ; $C20827  C2 20        mX
    CLC                             ; $C20829  18           MX
    ADC $06E8                       ; $C2082A  6D E8 06     MX
    STA $0739                       ; $C2082D  8D 39 07     MX
L_C20830:
    RTL                             ; $C20830  6B           MX
pause_on_start:
    PHP                             ; $C20831  08           mX
    SEP #$20                        ; $C20832  E2 20        mX
    LDA $414B                       ; $C20834  AD 4B 41     mX
    CMP #$06                        ; $C20837  C9 06        mX
    BEQ L_C20846                    ; $C20839  F0 0B        mX
    LDA $4188                       ; $C2083B  AD 88 41     mX
    BPL L_C20846                    ; $C2083E  10 06        mX
    LDA $94                         ; $C20840  A5 94        mX
    BIT #$10                        ; $C20842  89 10        mX
    BNE L_C20851                    ; $C20844  D0 0B        mX
L_C20846:
    LDA $4113                       ; $C20846  AD 13 41     mX
    BPL L_C20858                    ; $C20849  10 0D        mX
    LDA $96                         ; $C2084B  A5 96        mX
    BIT #$10                        ; $C2084D  89 10        mX
    BEQ L_C20858                    ; $C2084F  F0 07        mX
L_C20851:
    REP #$20                        ; $C20851  C2 20        mX
    LDA #$0001                      ; $C20853  A9 01 00     MX
    PLP                             ; $C20856  28           MX
    RTL                             ; $C20857  6B           mX
L_C20858:
    REP #$20                        ; $C20858  C2 20        mX
    LDA #$0000                      ; $C2085A  A9 00 00     MX
    PLP                             ; $C2085D  28           MX
    RTL                             ; $C2085E  6B           mX
L_C2085F:
    PHP                             ; $C2085F  08           MX
    SEP #$20                        ; $C20860  E2 20        MX
    LDA $414B                       ; $C20862  AD 4B 41     mX
    CMP #$06                        ; $C20865  C9 06        mX
    BEQ L_C20874                    ; $C20867  F0 0B        mX
    LDA $4188                       ; $C20869  AD 88 41     mX
    BPL L_C20874                    ; $C2086C  10 06        mX
    LDA $94                         ; $C2086E  A5 94        mX
    BIT #$90                        ; $C20870  89 90        mX
    BNE L_C2087F                    ; $C20872  D0 0B        mX
L_C20874:
    LDA $4113                       ; $C20874  AD 13 41     mX
    BPL L_C20886                    ; $C20877  10 0D        mX
    LDA $96                         ; $C20879  A5 96        mX
    BIT #$90                        ; $C2087B  89 90        mX
    BEQ L_C20886                    ; $C2087D  F0 07        mX
L_C2087F:
    REP #$20                        ; $C2087F  C2 20        mX
    LDA #$0001                      ; $C20881  A9 01 00     MX
    PLP                             ; $C20884  28           MX
    RTL                             ; $C20885  6B           MX
L_C20886:
    REP #$20                        ; $C20886  C2 20        mX
    LDA #$0000                      ; $C20888  A9 00 00     MX
    PLP                             ; $C2088B  28           MX
    RTL                             ; $C2088C  6B           MX
L_C2088D:
    SEP #$20                        ; $C2088D  E2 20        MX
    LDA $0862                       ; $C2088F  AD 62 08     mX
    BNE L_C208A0                    ; $C20892  D0 0C        mX
    LDA $0863                       ; $C20894  AD 63 08     mX
    STA $0862                       ; $C20897  8D 62 08     mX
    LDA $0864                       ; $C2089A  AD 64 08     mX
    STA $0863                       ; $C2089D  8D 63 08     mX
L_C208A0:
    LDA $0863                       ; $C208A0  AD 63 08     mX
    BNE L_C208AB                    ; $C208A3  D0 06        mX
    LDA $0864                       ; $C208A5  AD 64 08     mX
    STA $0863                       ; $C208A8  8D 63 08     mX
L_C208AB:
    LDA $0866                       ; $C208AB  AD 66 08     mX
    BNE L_C208BC                    ; $C208AE  D0 0C        mX
    LDA $0867                       ; $C208B0  AD 67 08     mX
    STA $0866                       ; $C208B3  8D 66 08     mX
    LDA $0868                       ; $C208B6  AD 68 08     mX
    STA $0867                       ; $C208B9  8D 67 08     mX
L_C208BC:
    LDA $0867                       ; $C208BC  AD 67 08     mX
    BNE L_C208C7                    ; $C208BF  D0 06        mX
    LDA $0868                       ; $C208C1  AD 68 08     mX
    STA $0867                       ; $C208C4  8D 67 08     mX
L_C208C7:
    REP #$20                        ; $C208C7  C2 20        mX
    RTL                             ; $C208C9  6B           MX
L_C208CA:
    JSL L_C0CC51                    ; $C208CA  22 51 CC C0  MX
    BPL L_C208D3                    ; $C208CE  10 03        MX
    TAX                             ; $C208D0  AA           MX
    BRA L_C2092A                    ; $C208D1  80 57        MX
L_C208D3:
    TAX                             ; $C208D3  AA           MX
    LDA $0000,Y                     ; $C208D4  B9 00 00     MX
    STA $0000,X                     ; $C208D7  9D 00 00     MX
    STA $0004,X                     ; $C208DA  9D 04 00     MX
    LDA $0002,Y                     ; $C208DD  B9 02 00     MX
    STA $0002,X                     ; $C208E0  9D 02 00     MX
    STA $0006,X                     ; $C208E3  9D 06 00     MX
    STZ $002A,X                     ; $C208E6  9E 2A 00     MX
    STZ $002C,X                     ; $C208E9  9E 2C 00     MX
    LDA #$03BE                      ; $C208EC  A9 BE 03     MX
    STA $0026,X                     ; $C208EF  9D 26 00     MX
    LDA #$00C0                      ; $C208F2  A9 C0 00     MX
    STA $0028,X                     ; $C208F5  9D 28 00     MX
    STZ $0022,X                     ; $C208F8  9E 22 00     MX
    SEP #$20                        ; $C208FB  E2 20        MX
    LDA #$C1                        ; $C208FD  A9 C1        mX
    STA $006B,X                     ; $C208FF  9D 6B 00     mX
    LDA #$00                        ; $C20902  A9 00        mX
    STA $0041,X                     ; $C20904  9D 41 00     mX
    LDA #$00                        ; $C20907  A9 00        mX
    STA $0043,X                     ; $C20909  9D 43 00     mX
    REP #$20                        ; $C2090C  C2 20        mX
    PHY                             ; $C2090E  5A           MX
    LDY #$078D                      ; $C2090F  A0 8D 07     MX
    LDA $0000,Y                     ; $C20912  B9 00 00     MX
    STA $0061,X                     ; $C20915  9D 61 00     MX
    LDA $0002,Y                     ; $C20918  B9 02 00     MX
    STA $005F,X                     ; $C2091B  9D 5F 00     MX
    PLY                             ; $C2091E  7A           MX
    LDA $0008,Y                     ; $C2091F  B9 08 00     MX
    STA $0008,X                     ; $C20922  9D 08 00     MX
    LDA $56                         ; $C20925  A5 56        MX
    STA $005D,X                     ; $C20927  9D 5D 00     MX
L_C2092A:
    RTL                             ; $C2092A  6B           MX
L_C2092B:
    JSL L_C0CC51                    ; $C2092B  22 51 CC C0  MX
    BPL L_C20934                    ; $C2092F  10 03        MX
    TAX                             ; $C20931  AA           MX
    BRA L_C209A1                    ; $C20932  80 6D        MX
L_C20934:
    TAX                             ; $C20934  AA           MX
    LDA $0000,Y                     ; $C20935  B9 00 00     MX
    STA $0000,X                     ; $C20938  9D 00 00     MX
    STA $0004,X                     ; $C2093B  9D 04 00     MX
    LDA $0002,Y                     ; $C2093E  B9 02 00     MX
    STA $0002,X                     ; $C20941  9D 02 00     MX
    STA $0006,X                     ; $C20944  9D 06 00     MX
    STZ $002A,X                     ; $C20947  9E 2A 00     MX
    STZ $002C,X                     ; $C2094A  9E 2C 00     MX
    LDA $0045,X                     ; $C2094D  BD 45 00     MX
    ORA #$0040                      ; $C20950  09 40 00     MX
    STA $0045,X                     ; $C20953  9D 45 00     MX
    LDA #$03BE                      ; $C20956  A9 BE 03     MX
    STA $0026,X                     ; $C20959  9D 26 00     MX
    LDA #$00C0                      ; $C2095C  A9 C0 00     MX
    STA $0028,X                     ; $C2095F  9D 28 00     MX
    STZ $0022,X                     ; $C20962  9E 22 00     MX
    PHY                             ; $C20965  5A           MX
    LDY #$078D                      ; $C20966  A0 8D 07     MX
    LDA $0000,Y                     ; $C20969  B9 00 00     MX
    STA $0061,X                     ; $C2096C  9D 61 00     MX
    LDA $0002,Y                     ; $C2096F  B9 02 00     MX
    STA $005F,X                     ; $C20972  9D 5F 00     MX
    PLY                             ; $C20975  7A           MX
    LDA $0008,Y                     ; $C20976  B9 08 00     MX
    STA $0008,X                     ; $C20979  9D 08 00     MX
    LDA $005D,Y                     ; $C2097C  B9 5D 00     MX
    STA $005D,X                     ; $C2097F  9D 5D 00     MX
    SEP #$20                        ; $C20982  E2 20        MX
    LDA #$C1                        ; $C20984  A9 C1        mX
    STA $006B,X                     ; $C20986  9D 6B 00     mX
    STZ $0043,X                     ; $C20989  9E 43 00     mX
    LDA #$00                        ; $C2098C  A9 00        mX
    ORA #$02                        ; $C2098E  09 02        mX
    STA $0041,X                     ; $C20990  9D 41 00     mX
    LDA $0051,Y                     ; $C20993  B9 51 00     mX
    STA $0048,X                     ; $C20996  9D 48 00     mX
    LDA $0042,Y                     ; $C20999  B9 42 00     mX
    STA $0042,X                     ; $C2099C  9D 42 00     mX
    REP #$20                        ; $C2099F  C2 20        mX
L_C209A1:
    RTL                             ; $C209A1  6B           MX
L_C209A2:
    PHA                             ; $C209A2  48           MX
    JSR L_C20ADE                    ; $C209A3  20 DE 0A     MX
    PLY                             ; $C209A6  7A           MX
    JSR L_C20A47                    ; $C209A7  20 47 0A     MX
    JSR L_C20B2C                    ; $C209AA  20 2C 0B     MX
    JSR L_C20BC0                    ; $C209AD  20 C0 0B     MX
    JSR L_C20C87                    ; $C209B0  20 87 0C     MX
    JSL L_C0B23D                    ; $C209B3  22 3D B2 C0  MX
    SEP #$20                        ; $C209B7  E2 20        MX
    LDA #$02                        ; $C209B9  A9 02        mX
    STA $00420B                     ; $C209BB  8F 0B 42 00  mX
    REP #$20                        ; $C209BF  C2 20        mX
    LDA #$0000                      ; $C209C1  A9 00 00     MX
    BIT $08ED                       ; $C209C4  2C ED 08     MX
    BPL L_C209D0                    ; $C209C7  10 07        MX
    LDA $08ED                       ; $C209C9  AD ED 08     MX
    EOR #$FFFF                      ; $C209CC  49 FF FF     MX
    INC                             ; $C209CF  1A           MX
L_C209D0:
    JSL L_C204CD                    ; $C209D0  22 CD 04 C2  MX
L_C209D4:
    INC $089F                       ; $C209D4  EE 9F 08     MX
    LDA $089F                       ; $C209D7  AD 9F 08     MX
    BIT #$0007                      ; $C209DA  89 07 00     MX
    BNE L_C209E2                    ; $C209DD  D0 03        MX
    JSR L_C20C87                    ; $C209DF  20 87 0C     MX
L_C209E2:
    LDA $004212                     ; $C209E2  AF 12 42 00  MX
    BIT #$0001                      ; $C209E6  89 01 00     MX
    BEQ L_C209E2                    ; $C209E9  F0 F7        MX
L_C209EB:
    LDA $004212                     ; $C209EB  AF 12 42 00  MX
    BIT #$0001                      ; $C209EF  89 01 00     MX
    BNE L_C209EB                    ; $C209F2  D0 F7        MX
    JSL L_C0B23D                    ; $C209F4  22 3D B2 C0  MX
    SEP #$20                        ; $C209F8  E2 20        MX
    LDA #$02                        ; $C209FA  A9 02        mX
    STA $00420B                     ; $C209FC  8F 0B 42 00  mX
    LDA #$00                        ; $C20A00  A9 00        mX
    REP #$20                        ; $C20A02  C2 20        mX
    LDA $004218                     ; $C20A04  AF 18 42 00  MX
    ORA $00421A                     ; $C20A08  0F 1A 42 00  MX
    BIT #$D0C0                      ; $C20A0C  89 C0 D0     MX
    BEQ L_C209D4                    ; $C20A0F  F0 C3        MX
L_C20A11:
    LDA $004212                     ; $C20A11  AF 12 42 00  MX
    BIT #$0001                      ; $C20A15  89 01 00     MX
    BEQ L_C20A11                    ; $C20A18  F0 F7        MX
L_C20A1A:
    LDA $004212                     ; $C20A1A  AF 12 42 00  MX
    BIT #$0001                      ; $C20A1E  89 01 00     MX
    BNE L_C20A1A                    ; $C20A21  D0 F7        MX
    LDA $004218                     ; $C20A23  AF 18 42 00  MX
    ORA $00421A                     ; $C20A27  0F 1A 42 00  MX
    BIT #$D0C0                      ; $C20A2B  89 C0 D0     MX
    BNE L_C20A11                    ; $C20A2E  D0 E1        MX
    LDA #$0000                      ; $C20A30  A9 00 00     MX
    BIT $08ED                       ; $C20A33  2C ED 08     MX
    BPL L_C20A3F                    ; $C20A36  10 07        MX
    LDA $08ED                       ; $C20A38  AD ED 08     MX
    EOR #$FFFF                      ; $C20A3B  49 FF FF     MX
    INC                             ; $C20A3E  1A           MX
L_C20A3F:
    JSL L_C2050A                    ; $C20A3F  22 0A 05 C2  MX
    JSR L_C20DF0                    ; $C20A43  20 F0 0D     MX
    RTL                             ; $C20A46  6B           MX
L_C20A47:
    LDA #$0200                      ; $C20A47  A9 00 02     MX
    STA $08E1                       ; $C20A4A  8D E1 08     MX
    STA $08E3                       ; $C20A4D  8D E3 08     MX
    SEP #$20                        ; $C20A50  E2 20        MX
    STA $00211B                     ; $C20A52  8F 1B 21 00  mX
    STA $00211E                     ; $C20A56  8F 1E 21 00  mX
    XBA                             ; $C20A5A  EB           mX
    STA $00211B                     ; $C20A5B  8F 1B 21 00  mX
    STA $00211E                     ; $C20A5F  8F 1E 21 00  mX
    REP #$20                        ; $C20A63  C2 20        mX
    LDA $076D                       ; $C20A65  AD 6D 07     MX
    SEC                             ; $C20A68  38           MX
    SBC #$0040                      ; $C20A69  E9 40 00     MX
    BPL L_C20A71                    ; $C20A6C  10 03        MX
    ASL                             ; $C20A6E  0A           MX
    BRA L_C20A90                    ; $C20A6F  80 1F        MX
L_C20A71:
    STA $08ED                       ; $C20A71  8D ED 08     MX
    LDA $0000,Y                     ; $C20A74  B9 00 00     MX
    LSR                             ; $C20A77  4A           MX
    LSR                             ; $C20A78  4A           MX
    LSR                             ; $C20A79  4A           MX
    LSR                             ; $C20A7A  4A           MX
    SEC                             ; $C20A7B  38           MX
    SBC #$0020                      ; $C20A7C  E9 20 00     MX
    BPL L_C20A86                    ; $C20A7F  10 05        MX
    LDA #$0000                      ; $C20A81  A9 00 00     MX
    BRA L_C20A90                    ; $C20A84  80 0A        MX
L_C20A86:
    CMP $08ED                       ; $C20A86  CD ED 08     MX
    BCC L_C20A8E                    ; $C20A89  90 03        MX
    LDA $08ED                       ; $C20A8B  AD ED 08     MX
L_C20A8E:
    ASL                             ; $C20A8E  0A           MX
    ASL                             ; $C20A8F  0A           MX
L_C20A90:
    STA $08ED                       ; $C20A90  8D ED 08     MX
    LDA $076F                       ; $C20A93  AD 6F 07     MX
    SEC                             ; $C20A96  38           MX
    SBC #$0038                      ; $C20A97  E9 38 00     MX
    BPL L_C20A9F                    ; $C20A9A  10 03        MX
    ASL                             ; $C20A9C  0A           MX
    BRA L_C20ABE                    ; $C20A9D  80 1F        MX
L_C20A9F:
    STA $08EF                       ; $C20A9F  8D EF 08     MX
    LDA $0002,Y                     ; $C20AA2  B9 02 00     MX
    LSR                             ; $C20AA5  4A           MX
    LSR                             ; $C20AA6  4A           MX
    LSR                             ; $C20AA7  4A           MX
    LSR                             ; $C20AA8  4A           MX
    SEC                             ; $C20AA9  38           MX
    SBC #$001C                      ; $C20AAA  E9 1C 00     MX
    BPL L_C20AB4                    ; $C20AAD  10 05        MX
    LDA #$0000                      ; $C20AAF  A9 00 00     MX
    BRA L_C20ABE                    ; $C20AB2  80 0A        MX
L_C20AB4:
    CMP $08EF                       ; $C20AB4  CD EF 08     MX
    BCC L_C20ABC                    ; $C20AB7  90 03        MX
    LDA $08EF                       ; $C20AB9  AD EF 08     MX
L_C20ABC:
    ASL                             ; $C20ABC  0A           MX
    ASL                             ; $C20ABD  0A           MX
L_C20ABE:
    STA $08EF                       ; $C20ABE  8D EF 08     MX
    LDA $076D                       ; $C20AC1  AD 6D 07     MX
    CMP #$0040                      ; $C20AC4  C9 40 00     MX
    BCC L_C20ACC                    ; $C20AC7  90 03        MX
    LDA #$0040                      ; $C20AC9  A9 40 00     MX
L_C20ACC:
    STA $08E5                       ; $C20ACC  8D E5 08     MX
    LDA $076F                       ; $C20ACF  AD 6F 07     MX
    CMP #$0038                      ; $C20AD2  C9 38 00     MX
    BCC L_C20ADA                    ; $C20AD5  90 03        MX
    LDA #$0038                      ; $C20AD7  A9 38 00     MX
L_C20ADA:
    STA $08E7                       ; $C20ADA  8D E7 08     MX
    RTS                             ; $C20ADD  60           MX
L_C20ADE:
    PHB                             ; $C20ADE  8B           MX
    PEA $0000                       ; $C20ADF  F4 00 00     MX
    PLB                             ; $C20AE2  AB           MX
    SEP #$20                        ; $C20AE3  E2 20        MX
    STZ $420C                       ; $C20AE5  9C 0C 42     mX
    STZ $210D                       ; $C20AE8  9C 0D 21     mX
    STZ $210D                       ; $C20AEB  9C 0D 21     mX
    STZ $210E                       ; $C20AEE  9C 0E 21     mX
    STZ $210E                       ; $C20AF1  9C 0E 21     mX
    LDA #$80                        ; $C20AF4  A9 80        mX
    STA $211A                       ; $C20AF6  8D 1A 21     mX
    LDA #$07                        ; $C20AF9  A9 07        mX
    STA $2105                       ; $C20AFB  8D 05 21     mX
    LDA #$11                        ; $C20AFE  A9 11        mX
    STA $212C                       ; $C20B00  8D 2C 21     mX
    STZ $211C                       ; $C20B03  9C 1C 21     mX
    STZ $211C                       ; $C20B06  9C 1C 21     mX
    STZ $211D                       ; $C20B09  9C 1D 21     mX
    STZ $211D                       ; $C20B0C  9C 1D 21     mX
    STZ $211F                       ; $C20B0F  9C 1F 21     mX
    STZ $211F                       ; $C20B12  9C 1F 21     mX
    STZ $2120                       ; $C20B15  9C 20 21     mX
    STZ $2120                       ; $C20B18  9C 20 21     mX
    REP #$20                        ; $C20B1B  C2 20        mX
    STZ $2116                       ; $C20B1D  9C 16 21     MX
    LDX #$4000                      ; $C20B20  A2 00 40     MX
L_C20B23:
    STZ $2118                       ; $C20B23  9C 18 21     MX
    DEX                             ; $C20B26  CA           MX
    BNE L_C20B23                    ; $C20B27  D0 FA        MX
    PLB                             ; $C20B29  AB           MX
    PLB                             ; $C20B2A  AB           MX
    RTS                             ; $C20B2B  60           MX
L_C20B2C:
    LDA #$0000                      ; $C20B2C  A9 00 00     MX
    BIT $08ED                       ; $C20B2F  2C ED 08     MX
    BPL L_C20B3D                    ; $C20B32  10 09        MX
    LDA $08ED                       ; $C20B34  AD ED 08     MX
    EOR #$FFFF                      ; $C20B37  49 FF FF     MX
    INC                             ; $C20B3A  1A           MX
    LSR                             ; $C20B3B  4A           MX
    LSR                             ; $C20B3C  4A           MX
L_C20B3D:
    STA $002116                     ; $C20B3D  8F 16 21 00  MX
    SEP #$20                        ; $C20B41  E2 20        MX
    LDA #$00                        ; $C20B43  A9 00        mX
    STA $002115                     ; $C20B45  8F 15 21 00  mX
    LDA $076D                       ; $C20B49  AD 6D 07     mX
    STA $004202                     ; $C20B4C  8F 02 42 00  mX
    REP #$20                        ; $C20B50  C2 20        mX
    LDA $08EF                       ; $C20B52  AD EF 08     MX
    LSR                             ; $C20B55  4A           MX
    LSR                             ; $C20B56  4A           MX
    SEP #$20                        ; $C20B57  E2 20        MX
    STA $004203                     ; $C20B59  8F 03 42 00  mX
    REP #$20                        ; $C20B5D  C2 20        mX
    LDA $08ED                       ; $C20B5F  AD ED 08     MX
    BPL L_C20B67                    ; $C20B62  10 03        MX
    LDA #$0000                      ; $C20B64  A9 00 00     MX
L_C20B67:
    LSR                             ; $C20B67  4A           MX
    LSR                             ; $C20B68  4A           MX
    CLC                             ; $C20B69  18           MX
    ADC $004216                     ; $C20B6A  6F 16 42 00  MX
    ASL                             ; $C20B6E  0A           MX
    CLC                             ; $C20B6F  18           MX
    ADC $076B                       ; $C20B70  6D 6B 07     MX
    TAX                             ; $C20B73  AA           MX
    LDY $08E7                       ; $C20B74  AC E7 08     MX
L_C20B77:
    PHX                             ; $C20B77  DA           MX
    PHY                             ; $C20B78  5A           MX
    LDY $08E5                       ; $C20B79  AC E5 08     MX
L_C20B7C:
    LDA $68E0,X                     ; $C20B7C  BD E0 68     MX
    AND #$0007                      ; $C20B7F  29 07 00     MX
    PHA                             ; $C20B82  48           MX
    LDA $68E0,X                     ; $C20B83  BD E0 68     MX
    AND #$01F0                      ; $C20B86  29 F0 01     MX
    LSR                             ; $C20B89  4A           MX
    ORA $01,S                       ; $C20B8A  03 01        MX
    STA $01,S                       ; $C20B8C  83 01        MX
    PLA                             ; $C20B8E  68           MX
    SEP #$20                        ; $C20B8F  E2 20        MX
    STA $002118                     ; $C20B91  8F 18 21 00  mX
    REP #$20                        ; $C20B95  C2 20        mX
    INX                             ; $C20B97  E8           MX
    INX                             ; $C20B98  E8           MX
    DEY                             ; $C20B99  88           MX
    BNE L_C20B7C                    ; $C20B9A  D0 E0        MX
    LDA #$0080                      ; $C20B9C  A9 80 00     MX
    SEC                             ; $C20B9F  38           MX
    SBC $08E5                       ; $C20BA0  ED E5 08     MX
    BEQ L_C20BB5                    ; $C20BA3  F0 10        MX
    BMI L_C20BB5                    ; $C20BA5  30 0E        MX
    TAY                             ; $C20BA7  A8           MX
    SEP #$20                        ; $C20BA8  E2 20        MX
    LDA #$00                        ; $C20BAA  A9 00        mX
L_C20BAC:
    STA $002118                     ; $C20BAC  8F 18 21 00  mX
    DEY                             ; $C20BB0  88           mX
    BNE L_C20BAC                    ; $C20BB1  D0 F9        mX
    REP #$20                        ; $C20BB3  C2 20        mX
L_C20BB5:
    PLY                             ; $C20BB5  7A           MX
    PLA                             ; $C20BB6  68           MX
    CLC                             ; $C20BB7  18           MX
    ADC $0773                       ; $C20BB8  6D 73 07     MX
    TAX                             ; $C20BBB  AA           MX
    DEY                             ; $C20BBC  88           MX
    BNE L_C20B77                    ; $C20BBD  D0 B8        MX
    RTS                             ; $C20BBF  60           MX
L_C20BC0:
    PHB                             ; $C20BC0  8B           MX
    PEA $007F                       ; $C20BC1  F4 7F 00     MX
    PLB                             ; $C20BC4  AB           MX
    LDA #$0000                      ; $C20BC5  A9 00 00     MX
    STA $002116                     ; $C20BC8  8F 16 21 00  MX
    SEP #$20                        ; $C20BCC  E2 20        MX
    LDA #$80                        ; $C20BCE  A9 80        mX
    STA $002115                     ; $C20BD0  8F 15 21 00  mX
    REP #$20                        ; $C20BD4  C2 20        mX
    LDX #$0000                      ; $C20BD6  A2 00 00     MX
L_C20BD9:
    JSR L_C20BEA                    ; $C20BD9  20 EA 0B     MX
    TXA                             ; $C20BDC  8A           MX
    CLC                             ; $C20BDD  18           MX
    ADC #$0080                      ; $C20BDE  69 80 00     MX
    TAX                             ; $C20BE1  AA           MX
    CPX #$8000                      ; $C20BE2  E0 00 80     MX
    BCC L_C20BD9                    ; $C20BE5  90 F2        MX
    PLB                             ; $C20BE7  AB           MX
    PLB                             ; $C20BE8  AB           MX
    RTS                             ; $C20BE9  60           MX
L_C20BEA:
    PHX                             ; $C20BEA  DA           MX
    JSR L_C20C23                    ; $C20BEB  20 23 0C     MX
    INX                             ; $C20BEE  E8           MX
    INX                             ; $C20BEF  E8           MX
    INX                             ; $C20BF0  E8           MX
    INX                             ; $C20BF1  E8           MX
    JSR L_C20C23                    ; $C20BF2  20 23 0C     MX
    INX                             ; $C20BF5  E8           MX
    INX                             ; $C20BF6  E8           MX
    INX                             ; $C20BF7  E8           MX
    INX                             ; $C20BF8  E8           MX
    JSR L_C20C23                    ; $C20BF9  20 23 0C     MX
    INX                             ; $C20BFC  E8           MX
    INX                             ; $C20BFD  E8           MX
    INX                             ; $C20BFE  E8           MX
    INX                             ; $C20BFF  E8           MX
    JSR L_C20C23                    ; $C20C00  20 23 0C     MX
    TXA                             ; $C20C03  8A           MX
    CLC                             ; $C20C04  18           MX
    ADC #$0034                      ; $C20C05  69 34 00     MX
    TAX                             ; $C20C08  AA           MX
    JSR L_C20C23                    ; $C20C09  20 23 0C     MX
    INX                             ; $C20C0C  E8           MX
    INX                             ; $C20C0D  E8           MX
    INX                             ; $C20C0E  E8           MX
    INX                             ; $C20C0F  E8           MX
    JSR L_C20C23                    ; $C20C10  20 23 0C     MX
    INX                             ; $C20C13  E8           MX
    INX                             ; $C20C14  E8           MX
    INX                             ; $C20C15  E8           MX
    INX                             ; $C20C16  E8           MX
    JSR L_C20C23                    ; $C20C17  20 23 0C     MX
    INX                             ; $C20C1A  E8           MX
    INX                             ; $C20C1B  E8           MX
    INX                             ; $C20C1C  E8           MX
    INX                             ; $C20C1D  E8           MX
    JSR L_C20C23                    ; $C20C1E  20 23 0C     MX
    PLX                             ; $C20C21  FA           MX
    RTS                             ; $C20C22  60           MX
L_C20C23:
    PHX                             ; $C20C23  DA           MX
    JSR L_C20C32                    ; $C20C24  20 32 0C     MX
    TXA                             ; $C20C27  8A           MX
    CLC                             ; $C20C28  18           MX
    ADC #$0020                      ; $C20C29  69 20 00     MX
    TAX                             ; $C20C2C  AA           MX
    JSR L_C20C32                    ; $C20C2D  20 32 0C     MX
    PLX                             ; $C20C30  FA           MX
    RTS                             ; $C20C31  60           MX
L_C20C32:
    SEP #$20                        ; $C20C32  E2 20        MX
    LDA #$80                        ; $C20C34  A9 80        mX
    JSR L_C20C63                    ; $C20C36  20 63 0C     mX
    LDA $46                         ; $C20C39  A5 46        mX
    STA $002119                     ; $C20C3B  8F 19 21 00  mX
    LDA #$20                        ; $C20C3F  A9 20        mX
    JSR L_C20C63                    ; $C20C41  20 63 0C     mX
    LDA $46                         ; $C20C44  A5 46        mX
    STA $002119                     ; $C20C46  8F 19 21 00  mX
    LDA #$08                        ; $C20C4A  A9 08        mX
    JSR L_C20C63                    ; $C20C4C  20 63 0C     mX
    LDA $46                         ; $C20C4F  A5 46        mX
    STA $002119                     ; $C20C51  8F 19 21 00  mX
    LDA #$02                        ; $C20C55  A9 02        mX
    JSR L_C20C63                    ; $C20C57  20 63 0C     mX
    LDA $46                         ; $C20C5A  A5 46        mX
    STA $002119                     ; $C20C5C  8F 19 21 00  mX
    REP #$20                        ; $C20C60  C2 20        mX
    RTS                             ; $C20C62  60           MX
L_C20C63:
    STZ $46                         ; $C20C63  64 46        mX
    CLC                             ; $C20C65  18           mX
    BIT $0011,X                     ; $C20C66  3C 11 00     mX
    BEQ L_C20C6C                    ; $C20C69  F0 01        mX
    SEC                             ; $C20C6B  38           mX
L_C20C6C:
    ROL $46                         ; $C20C6C  26 46        mX
    BIT $0010,X                     ; $C20C6E  3C 10 00     mX
    BEQ L_C20C74                    ; $C20C71  F0 01        mX
    SEC                             ; $C20C73  38           mX
L_C20C74:
    ROL $46                         ; $C20C74  26 46        mX
    BIT $0001,X                     ; $C20C76  3C 01 00     mX
    BEQ L_C20C7C                    ; $C20C79  F0 01        mX
    SEC                             ; $C20C7B  38           mX
L_C20C7C:
    ROL $46                         ; $C20C7C  26 46        mX
    BIT $0000,X                     ; $C20C7E  3C 00 00     mX
    BEQ L_C20C84                    ; $C20C81  F0 01        mX
    SEC                             ; $C20C83  38           mX
L_C20C84:
    ROL $46                         ; $C20C84  26 46        mX
    RTS                             ; $C20C86  60           mX
L_C20C87:
    LDA #$01FC                      ; $C20C87  A9 FC 01     MX
    STA $18FE                       ; $C20C8A  8D FE 18     MX
    LDA $089F                       ; $C20C8D  AD 9F 08     MX
    LSR                             ; $C20C90  4A           MX
    LSR                             ; $C20C91  4A           MX
    LSR                             ; $C20C92  4A           MX
    AND #$0001                      ; $C20C93  29 01 00     MX
    CLC                             ; $C20C96  18           MX
    ADC #$0048                      ; $C20C97  69 48 00     MX
    STA $46                         ; $C20C9A  85 46        MX
    LDY #$40A8                      ; $C20C9C  A0 A8 40     MX
    JSR L_C20DA9                    ; $C20C9F  20 A9 0D     MX
    LDY #$411D                      ; $C20CA2  A0 1D 41     MX
    JSR L_C20DA9                    ; $C20CA5  20 A9 0D     MX
    LDA $089F                       ; $C20CA8  AD 9F 08     MX
    LSR                             ; $C20CAB  4A           MX
    LSR                             ; $C20CAC  4A           MX
    LSR                             ; $C20CAD  4A           MX
    AND #$0001                      ; $C20CAE  29 01 00     MX
    CLC                             ; $C20CB1  18           MX
    ADC #$004A                      ; $C20CB2  69 4A 00     MX
    STA $46                         ; $C20CB5  85 46        MX
    LDA $08C7                       ; $C20CB7  AD C7 08     MX
    CMP #$000F                      ; $C20CBA  C9 0F 00     MX
    BNE L_C20D0B                    ; $C20CBD  D0 4C        MX
    LDY $097C                       ; $C20CBF  AC 7C 09     MX
    LDX $68E0,Y                     ; $C20CC2  BE E0 68     MX
    BNE L_C20CCA                    ; $C20CC5  D0 03        MX
    JMP L_C20D8E                    ; $C20CC7  4C 8E 0D     MX
L_C20CCA:
    INY                             ; $C20CCA  C8           MX
    INY                             ; $C20CCB  C8           MX
    LDA $68E0,Y                     ; $C20CCC  B9 E0 68     MX
    PHA                             ; $C20CCF  48           MX
    INY                             ; $C20CD0  C8           MX
    INY                             ; $C20CD1  C8           MX
L_C20CD2:
    LDA $68E0,Y                     ; $C20CD2  B9 E0 68     MX
    ORA $68E2,Y                     ; $C20CD5  19 E2 68     MX
    BEQ L_C20CFF                    ; $C20CD8  F0 25        MX
    LDA $68EC,Y                     ; $C20CDA  B9 EC 68     MX
    CMP #$0030                      ; $C20CDD  C9 30 00     MX
    BNE L_C20CFF                    ; $C20CE0  D0 1D        MX
    LDA $68E0,Y                     ; $C20CE2  B9 E0 68     MX
    ASL                             ; $C20CE5  0A           MX
    ASL                             ; $C20CE6  0A           MX
    ASL                             ; $C20CE7  0A           MX
    ASL                             ; $C20CE8  0A           MX
    CLC                             ; $C20CE9  18           MX
    ADC #$0008                      ; $C20CEA  69 08 00     MX
    STA $5E                         ; $C20CED  85 5E        MX
    LDA $68E2,Y                     ; $C20CEF  B9 E2 68     MX
    ASL                             ; $C20CF2  0A           MX
    ASL                             ; $C20CF3  0A           MX
    ASL                             ; $C20CF4  0A           MX
    ASL                             ; $C20CF5  0A           MX
    CLC                             ; $C20CF6  18           MX
    ADC #$0008                      ; $C20CF7  69 08 00     MX
    STA $62                         ; $C20CFA  85 62        MX
    JSR L_C20DBF                    ; $C20CFC  20 BF 0D     MX
L_C20CFF:
    TYA                             ; $C20CFF  98           MX
    CLC                             ; $C20D00  18           MX
    ADC $01,S                       ; $C20D01  63 01        MX
    TAY                             ; $C20D03  A8           MX
    DEX                             ; $C20D04  CA           MX
    BNE L_C20CD2                    ; $C20D05  D0 CB        MX
    PLA                             ; $C20D07  68           MX
    JMP L_C20D8E                    ; $C20D08  4C 8E 0D     MX
L_C20D0B:
    LDX #$0014                      ; $C20D0B  A2 14 00     MX
    LDY #$3784                      ; $C20D0E  A0 84 37     MX
L_C20D11:
    LDA $0041,Y                     ; $C20D11  B9 41 00     MX
    AND #$00FF                      ; $C20D14  29 FF 00     MX
    CMP #$0014                      ; $C20D17  C9 14 00     MX
    BNE L_C20D27                    ; $C20D1A  D0 0B        MX
    LDA $006B,Y                     ; $C20D1C  B9 6B 00     MX
    BIT #$0008                      ; $C20D1F  89 08 00     MX
    BNE L_C20D27                    ; $C20D22  D0 03        MX
    JSR L_C20D8F                    ; $C20D24  20 8F 0D     MX
L_C20D27:
    TYA                             ; $C20D27  98           MX
    CLC                             ; $C20D28  18           MX
    ADC #$0075                      ; $C20D29  69 75 00     MX
    TAY                             ; $C20D2C  A8           MX
    DEX                             ; $C20D2D  CA           MX
    BNE L_C20D11                    ; $C20D2E  D0 E1        MX
    LDX #$0064                      ; $C20D30  A2 64 00     MX
    LDY #$F4E0                      ; $C20D33  A0 E0 F4     MX
L_C20D36:
    LDA $0000,Y                     ; $C20D36  B9 00 00     MX
    ORA $0002,Y                     ; $C20D39  19 02 00     MX
    BEQ L_C20D85                    ; $C20D3C  F0 47        MX
    LDA $0004,Y                     ; $C20D3E  B9 04 00     MX
    AND #$00FF                      ; $C20D41  29 FF 00     MX
    BEQ L_C20D85                    ; $C20D44  F0 3F        MX
    PHX                             ; $C20D46  DA           MX
    LDA $000B,Y                     ; $C20D47  B9 0B 00     MX
    AND #$00FF                      ; $C20D4A  29 FF 00     MX
    ASL                             ; $C20D4D  0A           MX
    ASL                             ; $C20D4E  0A           MX
    STA $42                         ; $C20D4F  85 42        MX
    ASL                             ; $C20D51  0A           MX
    ASL                             ; $C20D52  0A           MX
    CLC                             ; $C20D53  18           MX
    ADC $42                         ; $C20D54  65 42        MX
    CLC                             ; $C20D56  18           MX
    ADC $08AB                       ; $C20D57  6D AB 08     MX
    TAX                             ; $C20D5A  AA           MX
    LDA $C116C6,X                   ; $C20D5B  BF C6 16 C1  MX
    ASL                             ; $C20D5F  0A           MX
    STA $42                         ; $C20D60  85 42        MX
    ASL                             ; $C20D62  0A           MX
    ASL                             ; $C20D63  0A           MX
    ASL                             ; $C20D64  0A           MX
    ASL                             ; $C20D65  0A           MX
    SEC                             ; $C20D66  38           MX
    SBC $42                         ; $C20D67  E5 42        MX
    TAX                             ; $C20D69  AA           MX
    LDA $C15AE4,X                   ; $C20D6A  BF E4 5A C1  MX
    PLX                             ; $C20D6E  FA           MX
    CMP #$0014                      ; $C20D6F  C9 14 00     MX
    BNE L_C20D85                    ; $C20D72  D0 11        MX
    LDA $0000,Y                     ; $C20D74  B9 00 00     MX
    STA $5E                         ; $C20D77  85 5E        MX
    LDA $0002,Y                     ; $C20D79  B9 02 00     MX
    CLC                             ; $C20D7C  18           MX
    ADC #$0010                      ; $C20D7D  69 10 00     MX
    STA $62                         ; $C20D80  85 62        MX
    JSR L_C20DBF                    ; $C20D82  20 BF 0D     MX
L_C20D85:
    TYA                             ; $C20D85  98           MX
    CLC                             ; $C20D86  18           MX
    ADC #$0014                      ; $C20D87  69 14 00     MX
    TAY                             ; $C20D8A  A8           MX
    DEX                             ; $C20D8B  CA           MX
    BNE L_C20D36                    ; $C20D8C  D0 A8        MX
L_C20D8E:
    RTS                             ; $C20D8E  60           MX
L_C20D8F:
    LDA $006B,Y                     ; $C20D8F  B9 6B 00     MX
    BIT #$0080                      ; $C20D92  89 80 00     MX
    BEQ L_C20DA8                    ; $C20D95  F0 11        MX
    LDA $0000,Y                     ; $C20D97  B9 00 00     MX
    STA $5E                         ; $C20D9A  85 5E        MX
    LDA $0002,Y                     ; $C20D9C  B9 02 00     MX
    CLC                             ; $C20D9F  18           MX
    ADC #$0010                      ; $C20DA0  69 10 00     MX
    STA $62                         ; $C20DA3  85 62        MX
    JSR L_C20DBF                    ; $C20DA5  20 BF 0D     MX
L_C20DA8:
    RTS                             ; $C20DA8  60           MX
L_C20DA9:
    LDA $006B,Y                     ; $C20DA9  B9 6B 00     MX
    BIT #$0080                      ; $C20DAC  89 80 00     MX
    BEQ L_C20DBE                    ; $C20DAF  F0 0D        MX
    LDA $0000,Y                     ; $C20DB1  B9 00 00     MX
    STA $5E                         ; $C20DB4  85 5E        MX
    LDA $0002,Y                     ; $C20DB6  B9 02 00     MX
    STA $62                         ; $C20DB9  85 62        MX
    JSR L_C20DBF                    ; $C20DBB  20 BF 0D     MX
L_C20DBE:
    RTS                             ; $C20DBE  60           MX
L_C20DBF:
    LDA $5E                         ; $C20DBF  A5 5E        MX
    LSR                             ; $C20DC1  4A           MX
    LSR                             ; $C20DC2  4A           MX
    SEC                             ; $C20DC3  38           MX
    SBC $08ED                       ; $C20DC4  ED ED 08     MX
    BPL L_C20DCE                    ; $C20DC7  10 05        MX
    CMP #$FFF8                      ; $C20DC9  C9 F8 FF     MX
    BCS L_C20DD3                    ; $C20DCC  B0 05        MX
L_C20DCE:
    CMP #$0100                      ; $C20DCE  C9 00 01     MX
    BCS L_C20DEF                    ; $C20DD1  B0 1C        MX
L_C20DD3:
    STA $5E                         ; $C20DD3  85 5E        MX
    LDA $62                         ; $C20DD5  A5 62        MX
    LSR                             ; $C20DD7  4A           MX
    LSR                             ; $C20DD8  4A           MX
    SEC                             ; $C20DD9  38           MX
    SBC $08EF                       ; $C20DDA  ED EF 08     MX
    BPL L_C20DE4                    ; $C20DDD  10 05        MX
    CMP #$FFF8                      ; $C20DDF  C9 F8 FF     MX
    BCS L_C20DE9                    ; $C20DE2  B0 05        MX
L_C20DE4:
    CMP #$00E0                      ; $C20DE4  C9 E0 00     MX
    BCS L_C20DEF                    ; $C20DE7  B0 06        MX
L_C20DE9:
    STA $62                         ; $C20DE9  85 62        MX
    JSL L_C0BBD1                    ; $C20DEB  22 D1 BB C0  MX
L_C20DEF:
    RTS                             ; $C20DEF  60           MX
L_C20DF0:
    LDA #$0000                      ; $C20DF0  A9 00 00     MX
    TAX                             ; $C20DF3  AA           MX
L_C20DF4:
    PHA                             ; $C20DF4  48           MX
    JSL L_C03F6E                    ; $C20DF5  22 6E 3F C0  MX
    TXA                             ; $C20DF9  8A           MX
    CLC                             ; $C20DFA  18           MX
    ADC #$0080                      ; $C20DFB  69 80 00     MX
    TAX                             ; $C20DFE  AA           MX
    PLA                             ; $C20DFF  68           MX
    INC                             ; $C20E00  1A           MX
    INC                             ; $C20E01  1A           MX
    BIT #$000F                      ; $C20E02  89 0F 00     MX
    BNE L_C20E0B                    ; $C20E05  D0 04        MX
    CLC                             ; $C20E07  18           MX
    ADC #$0010                      ; $C20E08  69 10 00     MX
L_C20E0B:
    CPX #$8000                      ; $C20E0B  E0 00 80     MX
    BCC L_C20DF4                    ; $C20E0E  90 E4        MX
    RTS                             ; $C20E10  60           MX
cycle_item:
    SEP #$20                        ; $C20E11  E2 20        MX
    LDA #$00                        ; $C20E13  A9 00        mX
    STA $D6                         ; $C20E15  85 D6        mX
    LDA $414B                       ; $C20E17  AD 4B 41     mX
    CMP #$06                        ; $C20E1A  C9 06        mX
    BEQ L_C20E21                    ; $C20E1C  F0 03        mX
    JMP L_C20F05                    ; $C20E1E  4C 05 0F     mX
L_C20E21:
    LDA $4188                       ; $C20E21  AD 88 41     mX
    BMI L_C20E29                    ; $C20E24  30 03        mX
    JMP L_C20EDF                    ; $C20E26  4C DF 0E     mX
L_C20E29:
    LDA $06FB                       ; $C20E29  AD FB 06     mX
    BIT #$40                        ; $C20E2C  89 40        mX
    BEQ L_C20E49                    ; $C20E2E  F0 19        mX
    LDA $073E                       ; $C20E30  AD 3E 07     mX
    BIT #$40                        ; $C20E33  89 40        mX
    BNE L_C20E49                    ; $C20E35  D0 12        mX
    LDA $0866                       ; $C20E37  AD 66 08     mX
    BEQ L_C20E45                    ; $C20E3A  F0 09        mX
    JSR L_C20F89                    ; $C20E3C  20 89 0F     mX
    LDA #$02                        ; $C20E3F  A9 02        mX
    STA $D6                         ; $C20E41  85 D6        mX
    BRA L_C20E49                    ; $C20E43  80 04        mX
L_C20E45:
    LDA #$01                        ; $C20E45  A9 01        mX
    STA $D6                         ; $C20E47  85 D6        mX
L_C20E49:
    LDA $06F3                       ; $C20E49  AD F3 06     mX
    BIT #$20                        ; $C20E4C  89 20        mX
    BEQ L_C20EBC                    ; $C20E4E  F0 6C        mX
    LDA $073D                       ; $C20E50  AD 3D 07     mX
    BIT #$20                        ; $C20E53  89 20        mX
    BNE L_C20EBC                    ; $C20E55  D0 65        mX
    LDY #$0000                      ; $C20E57  A0 00 00     mX
    LDA $09BC                       ; $C20E5A  AD BC 09     mX
    CMP $0861,Y                     ; $C20E5D  D9 61 08     mX
    BEQ L_C20E78                    ; $C20E60  F0 16        mX
    INY                             ; $C20E62  C8           mX
    CMP $0861,Y                     ; $C20E63  D9 61 08     mX
    BEQ L_C20E78                    ; $C20E66  F0 10        mX
    INY                             ; $C20E68  C8           mX
    CMP $0861,Y                     ; $C20E69  D9 61 08     mX
    BEQ L_C20E78                    ; $C20E6C  F0 0A        mX
    INY                             ; $C20E6E  C8           mX
    CMP $0861,Y                     ; $C20E6F  D9 61 08     mX
    BEQ L_C20E78                    ; $C20E72  F0 04        mX
    INY                             ; $C20E74  C8           mX
    JMP L_C20F58                    ; $C20E75  4C 58 0F     mX
L_C20E78:
    PHA                             ; $C20E78  48           mX
    LDA $09E4                       ; $C20E79  AD E4 09     mX
    STA $0861,Y                     ; $C20E7C  99 61 08     mX
    STA $09BC                       ; $C20E7F  8D BC 09     mX
    LDY #$0000                      ; $C20E82  A0 00 00     mX
    CMP $0865,Y                     ; $C20E85  D9 65 08     mX
    BEQ L_C20EA1                    ; $C20E88  F0 17        mX
    INY                             ; $C20E8A  C8           mX
    CMP $0865,Y                     ; $C20E8B  D9 65 08     mX
    BEQ L_C20EA1                    ; $C20E8E  F0 11        mX
    INY                             ; $C20E90  C8           mX
    CMP $0865,Y                     ; $C20E91  D9 65 08     mX
    BEQ L_C20EA1                    ; $C20E94  F0 0B        mX
    INY                             ; $C20E96  C8           mX
    CMP $0865,Y                     ; $C20E97  D9 65 08     mX
    BEQ L_C20EA1                    ; $C20E9A  F0 05        mX
    INY                             ; $C20E9C  C8           mX
    PLA                             ; $C20E9D  68           mX
    JMP L_C20F58                    ; $C20E9E  4C 58 0F     mX
L_C20EA1:
    PLA                             ; $C20EA1  68           mX
    STA $0865,Y                     ; $C20EA2  99 65 08     mX
    STA $09E4                       ; $C20EA5  8D E4 09     mX
    LDA $40F1                       ; $C20EA8  AD F1 40     mX
    ORA #$08                        ; $C20EAB  09 08        mX
    STA $40F1                       ; $C20EAD  8D F1 40     mX
    LDA $4166                       ; $C20EB0  AD 66 41     mX
    ORA #$08                        ; $C20EB3  09 08        mX
    STA $4166                       ; $C20EB5  8D 66 41     mX
    LDA #$02                        ; $C20EB8  A9 02        mX
    STA $D6                         ; $C20EBA  85 D6        mX
L_C20EBC:
    LDA $06FB                       ; $C20EBC  AD FB 06     mX
    BIT #$80                        ; $C20EBF  89 80        mX
    BEQ L_C20EDC                    ; $C20EC1  F0 19        mX
    LDA $073E                       ; $C20EC3  AD 3E 07     mX
    BIT #$80                        ; $C20EC6  89 80        mX
    BNE L_C20EDC                    ; $C20EC8  D0 12        mX
    LDA $0862                       ; $C20ECA  AD 62 08     mX
    BEQ L_C20ED8                    ; $C20ECD  F0 09        mX
    JSR L_C20FBE                    ; $C20ECF  20 BE 0F     mX
    LDA #$02                        ; $C20ED2  A9 02        mX
    STA $D6                         ; $C20ED4  85 D6        mX
    BRA L_C20EDC                    ; $C20ED6  80 04        mX
L_C20ED8:
    LDA #$01                        ; $C20ED8  A9 01        mX
    STA $D6                         ; $C20EDA  85 D6        mX
L_C20EDC:
    JMP L_C20F58                    ; $C20EDC  4C 58 0F     mX
L_C20EDF:
    LDA $06FB                       ; $C20EDF  AD FB 06     mX
    BIT #$80                        ; $C20EE2  89 80        mX
    BEQ L_C20EFF                    ; $C20EE4  F0 19        mX
    LDA $073E                       ; $C20EE6  AD 3E 07     mX
    BIT #$80                        ; $C20EE9  89 80        mX
    BNE L_C20EFF                    ; $C20EEB  D0 12        mX
    LDA $0862                       ; $C20EED  AD 62 08     mX
    BEQ L_C20EFB                    ; $C20EF0  F0 09        mX
    JSR L_C20FBE                    ; $C20EF2  20 BE 0F     mX
    LDA #$02                        ; $C20EF5  A9 02        mX
    STA $D6                         ; $C20EF7  85 D6        mX
    BRA L_C20EFF                    ; $C20EF9  80 04        mX
L_C20EFB:
    LDA #$01                        ; $C20EFB  A9 01        mX
    STA $D6                         ; $C20EFD  85 D6        mX
L_C20EFF:
    JSR L_C20FF3                    ; $C20EFF  20 F3 0F     mX
    JMP L_C20F58                    ; $C20F02  4C 58 0F     mX
L_C20F05:
    LDA $4113                       ; $C20F05  AD 13 41     mX
    BMI L_C20F0D                    ; $C20F08  30 03        mX
    JMP L_C20F30                    ; $C20F0A  4C 30 0F     mX
L_C20F0D:
    JSR L_C20FF3                    ; $C20F0D  20 F3 0F     mX
    LDA $06FB                       ; $C20F10  AD FB 06     mX
    BIT #$80                        ; $C20F13  89 80        mX
    BEQ L_C20F30                    ; $C20F15  F0 19        mX
    LDA $073E                       ; $C20F17  AD 3E 07     mX
    BIT #$80                        ; $C20F1A  89 80        mX
    BNE L_C20F30                    ; $C20F1C  D0 12        mX
    LDA $0862                       ; $C20F1E  AD 62 08     mX
    BEQ L_C20F2C                    ; $C20F21  F0 09        mX
    JSR L_C20FBE                    ; $C20F23  20 BE 0F     mX
    LDA #$02                        ; $C20F26  A9 02        mX
    STA $D6                         ; $C20F28  85 D6        mX
    BRA L_C20F30                    ; $C20F2A  80 04        mX
L_C20F2C:
    LDA #$01                        ; $C20F2C  A9 01        mX
    STA $D6                         ; $C20F2E  85 D6        mX
L_C20F30:
    LDA $4188                       ; $C20F30  AD 88 41     mX
    BMI L_C20F38                    ; $C20F33  30 03        mX
    JMP L_C20F58                    ; $C20F35  4C 58 0F     mX
L_C20F38:
    LDA $06FD                       ; $C20F38  AD FD 06     mX
    BIT #$80                        ; $C20F3B  89 80        mX
    BEQ L_C20F58                    ; $C20F3D  F0 19        mX
    LDA $0740                       ; $C20F3F  AD 40 07     mX
    BIT #$80                        ; $C20F42  89 80        mX
    BNE L_C20F58                    ; $C20F44  D0 12        mX
    LDA $0866                       ; $C20F46  AD 66 08     mX
    BEQ L_C20F54                    ; $C20F49  F0 09        mX
    JSR L_C20F89                    ; $C20F4B  20 89 0F     mX
    LDA #$02                        ; $C20F4E  A9 02        mX
    STA $D6                         ; $C20F50  85 D6        mX
    BRA L_C20F58                    ; $C20F52  80 04        mX
L_C20F54:
    LDA #$01                        ; $C20F54  A9 01        mX
    STA $D6                         ; $C20F56  85 D6        mX
L_C20F58:
    LDA $D6                         ; $C20F58  A5 D6        mX
    BEQ L_C20F74                    ; $C20F5A  F0 18        mX
    BIT #$01                        ; $C20F5C  89 01        mX
    BEQ L_C20F68                    ; $C20F5E  F0 08        mX
    PHA                             ; $C20F60  48           mX
    LDA #$7C                        ; $C20F61  A9 7C        mX
    JSL L_C20182                    ; $C20F63  22 82 01 C2  mX
    PLA                             ; $C20F67  68           mX
L_C20F68:
    BIT #$02                        ; $C20F68  89 02        mX
    BEQ L_C20F74                    ; $C20F6A  F0 08        mX
    PHA                             ; $C20F6C  48           mX
    LDA #$7B                        ; $C20F6D  A9 7B        mX
    JSL L_C20182                    ; $C20F6F  22 82 01 C2  mX
    PLA                             ; $C20F73  68           mX
L_C20F74:
    LDA $06F3                       ; $C20F74  AD F3 06     mX
    STA $073D                       ; $C20F77  8D 3D 07     mX
    LDA $06FB                       ; $C20F7A  AD FB 06     mX
    STA $073E                       ; $C20F7D  8D 3E 07     mX
    LDA $06FD                       ; $C20F80  AD FD 06     mX
    STA $0740                       ; $C20F83  8D 40 07     mX
    REP #$20                        ; $C20F86  C2 20        mX
    RTL                             ; $C20F88  6B           MX
L_C20F89:
    LDY #$0000                      ; $C20F89  A0 00 00     mX
    LDA $0865                       ; $C20F8C  AD 65 08     mX
    PHA                             ; $C20F8F  48           mX
    LDA $0866,Y                     ; $C20F90  B9 66 08     mX
    BEQ L_C20FAB                    ; $C20F93  F0 16        mX
    STA $0865,Y                     ; $C20F95  99 65 08     mX
    INY                             ; $C20F98  C8           mX
    LDA $0866,Y                     ; $C20F99  B9 66 08     mX
    BEQ L_C20FAB                    ; $C20F9C  F0 0D        mX
    STA $0865,Y                     ; $C20F9E  99 65 08     mX
    INY                             ; $C20FA1  C8           mX
    LDA $0866,Y                     ; $C20FA2  B9 66 08     mX
    BEQ L_C20FAB                    ; $C20FA5  F0 04        mX
    STA $0865,Y                     ; $C20FA7  99 65 08     mX
    INY                             ; $C20FAA  C8           mX
L_C20FAB:
    PLA                             ; $C20FAB  68           mX
    STA $0865,Y                     ; $C20FAC  99 65 08     mX
    LDA $0865                       ; $C20FAF  AD 65 08     mX
    STA $09E4                       ; $C20FB2  8D E4 09     mX
    LDA $4166                       ; $C20FB5  AD 66 41     mX
    ORA #$08                        ; $C20FB8  09 08        mX
    STA $4166                       ; $C20FBA  8D 66 41     mX
    RTS                             ; $C20FBD  60           mX
L_C20FBE:
    LDY #$0000                      ; $C20FBE  A0 00 00     mX
    LDA $0861                       ; $C20FC1  AD 61 08     mX
    PHA                             ; $C20FC4  48           mX
    LDA $0862,Y                     ; $C20FC5  B9 62 08     mX
    BEQ L_C20FE0                    ; $C20FC8  F0 16        mX
    STA $0861,Y                     ; $C20FCA  99 61 08     mX
    INY                             ; $C20FCD  C8           mX
    LDA $0862,Y                     ; $C20FCE  B9 62 08     mX
    BEQ L_C20FE0                    ; $C20FD1  F0 0D        mX
    STA $0861,Y                     ; $C20FD3  99 61 08     mX
    INY                             ; $C20FD6  C8           mX
    LDA $0862,Y                     ; $C20FD7  B9 62 08     mX
    BEQ L_C20FE0                    ; $C20FDA  F0 04        mX
    STA $0861,Y                     ; $C20FDC  99 61 08     mX
    INY                             ; $C20FDF  C8           mX
L_C20FE0:
    PLA                             ; $C20FE0  68           mX
    STA $0861,Y                     ; $C20FE1  99 61 08     mX
    LDA $0861                       ; $C20FE4  AD 61 08     mX
    STA $09BC                       ; $C20FE7  8D BC 09     mX
    LDA $40F1                       ; $C20FEA  AD F1 40     mX
    ORA #$08                        ; $C20FED  09 08        mX
    STA $40F1                       ; $C20FEF  8D F1 40     mX
    RTS                             ; $C20FF2  60           mX
L_C20FF3:
    LDA $06F3                       ; $C20FF3  AD F3 06     mX
    BIT #$20                        ; $C20FF6  89 20        mX
    BEQ L_C21005                    ; $C20FF8  F0 0B        mX
    LDA $073D                       ; $C20FFA  AD 3D 07     mX
    BIT #$20                        ; $C20FFD  89 20        mX
    BNE L_C21005                    ; $C20FFF  D0 04        mX
    LDA #$01                        ; $C21001  A9 01        mX
    STA $D6                         ; $C21003  85 D6        mX
L_C21005:
    LDA $06FB                       ; $C21005  AD FB 06     mX
    BIT #$40                        ; $C21008  89 40        mX
    BEQ L_C21017                    ; $C2100A  F0 0B        mX
    LDA $073E                       ; $C2100C  AD 3E 07     mX
    BIT #$40                        ; $C2100F  89 40        mX
    BNE L_C21017                    ; $C21011  D0 04        mX
    LDA #$01                        ; $C21013  A9 01        mX
    STA $D6                         ; $C21015  85 D6        mX
L_C21017:
    RTS                             ; $C21017  60           mX
    db $52,$4E,$43,$02,$00,$00,$BE,$20,$00,$00,$7B,$84,$F4,$C9,$4A,$0C ; $C21018
    db $02,$04,$2E,$BB,$00,$00,$DA,$6B,$5A,$2B,$86,$02,$90,$62,$92,$21 ; $C21028
    db $4E,$01,$0A,$01,$8C,$29,$CC,$41,$4A,$21,$86,$08,$10,$52,$06,$2A ; $C21038
    db $84,$01,$04,$19,$1F,$CF,$07,$00,$FF,$07,$79,$01,$57,$1F,$C8,$73 ; $C21048
    db $44,$88,$04,$5D,$04,$AE,$07,$50,$02,$A9,$02,$51,$02,$B0,$3C,$53 ; $C21058
    db $BF,$32,$FF,$04,$FB,$06,$FD,$01,$A1,$1D,$30,$CF,$72,$8A,$24,$B4 ; $C21068
    db $3C,$1E,$40,$21,$8E,$A1,$10,$A3,$10,$5F,$00,$AA,$00,$51,$FF,$34 ; $C21078
    db $EB,$82,$19,$40,$60,$3F,$55,$C0,$4A,$40,$1B,$15,$40,$8A,$03,$40 ; $C21088
    db $1B,$03,$00,$40,$03,$BF,$60,$BF,$20,$FF,$20,$CE,$01,$5F,$55,$7B ; $C21098
    db $13,$04,$03,$C0,$08,$7F,$0A,$80,$1A,$80,$15,$06,$C0,$1A,$20,$40 ; $C210A8
    db $2F,$7F,$62,$54,$83,$00,$75,$8A,$3B,$80,$41,$1B,$83,$A8,$70,$02 ; $C210B8
    db $AA,$02,$57,$03,$A8,$04,$01,$A8,$5E,$00,$FD,$80,$43,$FE,$03,$FD ; $C210C8
    db $30,$03,$FE,$19,$02,$FF,$A0,$A4,$23,$33,$33,$03,$A8,$43,$17,$03 ; $C210D8
    db $89,$1F,$01,$AC,$37,$01,$7B,$77,$17,$7F,$19,$10,$BB,$00,$23,$BA ; $C210E8
    db $C5,$1B,$EA,$1E,$1F,$FF,$09,$1F,$1C,$BE,$00,$D7,$1F,$71,$D5,$1B ; $C210F8
    db $D5,$EF,$0B,$1F,$18,$79,$DF,$18,$1F,$02,$71,$01,$1A,$01,$34,$01 ; $C21108
    db $6B,$01,$57,$07,$20,$08,$31,$F0,$32,$10,$1C,$E2,$FF,$40,$E5,$FF ; $C21118
    db $81,$FE,$87,$79,$83,$FF,$34,$DF,$D8,$6F,$08,$02,$2B,$02,$0E,$FE ; $C21128
    db $A8,$01,$D4,$30,$3F,$F1,$7F,$82,$1E,$FD,$0E,$F1,$02,$3F,$2E,$45 ; $C21138
    db $10,$38,$22,$10,$D5,$10,$12,$38,$02,$C7,$1A,$02,$54,$01,$2A,$01 ; $C21148
    db $88,$FF,$01,$18,$EF,$01,$90,$FF,$1A,$FD,$E2,$7D,$80,$D9,$47,$54 ; $C21158
    db $40,$37,$6A,$00,$15,$00,$79,$2A,$03,$7F,$80,$C5,$63,$40,$60,$65 ; $C21168
    db $D0,$20,$AA,$20,$01,$E4,$E1,$CB,$21,$53,$3F,$BE,$40,$1F,$0E,$FF ; $C21178
    db $30,$FF,$02,$F0,$5F,$01,$FE,$13,$EC,$45,$29,$08,$C7,$04,$68,$02 ; $C21188
    db $56,$02,$EA,$02,$52,$02,$2E,$8F,$30,$71,$92,$11,$F0,$99,$35,$81 ; $C21198
    db $02,$D8,$7F,$0C,$F3,$DB,$9F,$69,$C7,$06,$DF,$80,$05,$83,$08,$DF ; $C211A8
    db $45,$11,$A3,$11,$5C,$03,$20,$AF,$11,$17,$3F,$A4,$41,$34,$41,$4B ; $C211B8
    db $E1,$09,$FE,$01,$01,$0E,$FF,$16,$F9,$1A,$1F,$1D,$41,$FE,$09,$BC ; $C211C8
    db $8F,$0B,$01,$38,$C0,$93,$FB,$20,$FB,$23,$F3,$14,$02,$E7,$04,$2F ; $C211D8
    db $00,$38,$DF,$30,$EF,$20,$FF,$22,$DD,$74,$02,$4E,$A9,$1E,$27,$F4 ; $C211E8
    db $04,$2F,$79,$01,$03,$55,$04,$70,$FD,$08,$FD,$F8,$FB,$10,$1B,$90 ; $C211F8
    db $F7,$10,$B7,$10,$CC,$03,$F7,$31,$08,$00,$F7,$E8,$37,$10,$FF,$90 ; $C21208
    db $EF,$10,$A1,$01,$30,$20,$70,$21,$63,$7F,$FF,$A3,$C7,$53,$87,$B7 ; $C21218
    db $7F,$77,$7F,$C0,$09,$20,$DF,$21,$DF,$58,$1A,$AF,$81,$7F,$53,$E1 ; $C21228
    db $35,$DA,$47,$BB,$2D,$F2,$78,$D7,$D0,$D7,$C0,$F7,$30,$03,$FF,$D0 ; $C21238
    db $F7,$0E,$50,$AF,$50,$EF,$03,$07,$6F,$C0,$7F,$D0,$2F,$82,$03,$6F ; $C21248
    db $F7,$FF,$C2,$00,$FE,$FF,$E5,$F8,$FC,$F9,$F9,$B7,$7B,$6D,$D2,$7F ; $C21258
    db $B3,$6C,$93,$6D,$B6,$62,$9D,$68,$B7,$69,$96,$C6,$2B,$FF,$03,$60 ; $C21268
    db $F0,$89,$0B,$30,$7F,$F8,$E0,$07,$80,$7F,$90,$62,$6F,$03,$30,$CF ; $C21278
    db $26,$5B,$E3,$F8,$67,$B0,$4F,$F4,$F0,$84,$18,$42,$09,$0D,$19,$7D ; $C21288
    db $B9,$5C,$3B,$83,$03,$14,$3B,$F0,$0F,$00,$19,$84,$FF,$49,$FE,$39 ; $C21298
    db $DE,$18,$18,$F7,$39,$D6,$A7,$18,$32,$01,$18,$51,$E8,$F2,$80,$01 ; $C212A8
    db $C0,$D0,$87,$5D,$0E,$3E,$4E,$3F,$12,$0A,$B3,$E2,$1F,$01,$90,$81 ; $C212B8
    db $1C,$E3,$0E,$F1,$73,$31,$33,$5C,$03,$31,$10,$BB,$21,$FD,$11,$F9 ; $C212C8
    db $27,$FF,$03,$F3,$31,$DE,$33,$31,$CE,$AE,$23,$10,$21,$DE,$11,$EE ; $C212D8
    db $26,$D9,$03,$FD,$5F,$3F,$4F,$3F,$03,$50,$1F,$03,$08,$F8,$00,$1F ; $C212E8
    db $E6,$0F,$F3,$1E,$E7,$0E,$FB,$91,$03,$08,$CF,$B7,$03,$C1,$BE,$2A ; $C212F8
    db $98,$05,$FF,$F1,$07,$A1,$50,$EF,$BF,$02,$00,$7F,$00,$AF,$00,$5F ; $C21308
    db $18,$03,$0C,$A0,$FF,$11,$14,$FF,$08,$11,$19,$05,$BD,$FF,$A4,$C3 ; $C21318
    db $0E,$8C,$1F,$9E,$3F,$00,$17,$40,$14,$00,$15,$AA,$38,$93,$1F,$1B ; $C21328
    db $F7,$07,$16,$F9,$80,$FF,$94,$40,$27,$AA,$55,$8A,$71,$FF,$33,$57 ; $C21338
    db $CC,$03,$5B,$2B,$E0,$07,$EB,$00,$85,$84,$33,$25,$BD,$54,$21,$84 ; $C21348
    db $54,$9F,$C0,$80,$00,$F0,$80,$F8,$C0,$FE,$80,$FE,$D0,$A8,$91,$C0 ; $C21358
    db $D7,$90,$7F,$88,$7F,$C2,$61,$3F,$0B,$D1,$AF,$80,$F5,$19,$BF,$1C ; $C21368
    db $D4,$FF,$E0,$03,$07,$F8,$FF,$D2,$FF,$E8,$6E,$69,$0C,$0B,$AB,$E0 ; $C21378
    db $9F,$03,$F8,$01,$87,$D2,$AD,$E8,$97,$D0,$AF,$8C,$0B,$00,$80,$5F ; $C21388
    db $00,$03,$E0,$00,$F8,$80,$FC,$00,$25,$01,$FE,$57,$59,$20,$08,$BB ; $C21398
    db $84,$7F,$7C,$89,$08,$9F,$9F,$8A,$30,$17,$2F,$BF,$08,$04,$60,$1B ; $C213A8
    db $47,$48,$DF,$05,$40,$01,$02,$80,$09,$80,$16,$00,$4D,$43,$1F,$9B ; $C213B8
    db $03,$A3,$71,$8E,$01,$08,$98,$45,$2E,$21,$63,$55,$FC,$59,$1C,$B0 ; $C213C8
    db $3E,$41,$18,$AB,$01,$55,$01,$A6,$1E,$40,$10,$12,$F0,$18,$EF,$30 ; $C213D8
    db $00,$A1,$01,$FF,$06,$FB,$07,$7C,$FF,$06,$C5,$3F,$FE,$43,$28,$A0 ; $C213E8
    db $3F,$15,$40,$66,$7E,$0C,$44,$81,$DA,$DB,$45,$DF,$66,$DB,$30,$4B ; $C213F8
    db $DB,$80,$C2,$03,$3F,$60,$F8,$5B,$2E,$A3,$40,$24,$2F,$80,$35,$09 ; $C21408
    db $62,$9F,$64,$BF,$60,$81,$1E,$1F,$1D,$3F,$1E,$1E,$3F,$1C,$01,$03 ; $C21418
    db $00,$16,$ED,$35,$FE,$2E,$F9,$0C,$FF,$4D,$0F,$03,$E0,$08,$6F,$28 ; $C21428
    db $FF,$50,$FF,$56,$64,$69,$93,$03,$8C,$33,$1F,$43,$0E,$E1,$01,$07 ; $C21438
    db $0F,$80,$01,$03,$07,$2F,$F9,$1C,$FF,$07,$17,$E9,$06,$FD,$1A,$5C ; $C21448
    db $A5,$0D,$FA,$79,$01,$07,$3D,$80,$D7,$B5,$72,$C0,$03,$19,$3B,$A3 ; $C21458
    db $60,$9F,$07,$7F,$07,$9F,$DD,$02,$07,$7E,$1D,$C9,$FF,$01,$00,$00 ; $C21468
    db $7F,$62,$1F,$4A,$9F,$42,$5A,$1E,$F8,$DD,$05,$77,$88,$0E,$DF,$A2 ; $C21478
    db $56,$A9,$3C,$33,$01,$01,$03,$02,$E2,$03,$FF,$DD,$01,$54,$01,$00 ; $C21488
    db $69,$4A,$9E,$4A,$1E,$4B,$9E,$4F,$E1,$01,$4D,$8E,$79,$4D,$8C,$5E ; $C21498
    db $8C,$DE,$A3,$5E,$AB,$DB,$AE,$D3,$AE,$57,$AC,$45,$BA,$4D,$BA,$5E ; $C214A8
    db $AD,$63,$9B,$F9,$0B,$F9,$09,$69,$99,$7F,$FF,$7F,$8F,$CF,$BB,$CD ; $C214B8
    db $BB,$92,$6D,$78,$8F,$70,$8F,$F0,$0F,$E6,$39,$B7,$4F,$C2,$05,$FE ; $C214C8
    db $09,$80,$B2,$49,$C0,$24,$E0,$8F,$FF,$01,$B8,$AF,$BB,$E0,$7F,$F0 ; $C214D8
    db $7F,$80,$BF,$D4,$3F,$FF,$F8,$BB,$47,$C0,$81,$27,$D8,$CD,$B9,$DD ; $C214E8
    db $38,$BD,$DC,$01,$DE,$E5,$01,$D2,$CA,$BD,$EE,$B9,$FD,$8B,$F5,$0A ; $C214F8
    db $E0,$9F,$E1,$9E,$E3,$9C,$75,$8A,$FD,$8A,$7B,$8C,$BB,$BB,$A9,$BB ; $C21508
    db $BA,$FF,$A9,$FF,$0E,$03,$E2,$8B,$A3,$8F,$33,$CC,$21,$DE,$3E,$C9 ; $C21518
    db $2D,$DA,$3E,$C1,$2D,$D2,$66,$99,$7C,$83,$C8,$02,$67,$F8,$90,$D8 ; $C21528
    db $09,$B7,$D8,$95,$02,$AE,$F7,$38,$EF,$3E,$A8,$D7,$7F,$90,$5D,$B2 ; $C21538
    db $00,$F5,$01,$F9,$01,$F1,$01,$FB,$1F,$DE,$E9,$01,$AC,$CB,$CC,$9B ; $C21548
    db $54,$FF,$B9,$D8,$81,$B8,$FF,$00,$F7,$3F,$F3,$4C,$6C,$9B,$5C,$AB ; $C21558
    db $81,$33,$D8,$B0,$C0,$03,$92,$C8,$90,$CC,$18,$90,$EA,$90,$33,$55 ; $C21568
    db $BA,$B8,$60,$78,$97,$55,$AA,$5A,$A5,$40,$BF,$44,$BB,$72,$8D,$31 ; $C21578
    db $8E,$DB,$8A,$DB,$CE,$03,$CA,$39,$05,$CA,$01,$80,$31,$5E,$A9,$1A ; $C21588
    db $ED,$1E,$E9,$0D,$5A,$AD,$1A,$E5,$23,$83,$01,$60,$90,$F8,$08,$0E ; $C21598
    db $01,$68,$98,$7E,$18,$FF,$CC,$BB,$01,$90,$6F,$F0,$02,$FF,$F3,$0C ; $C215A8
    db $FF,$7E,$08,$02,$9A,$61,$80,$00,$C0,$80,$E0,$F9,$03,$CB,$7F,$12 ; $C215B8
    db $01,$CC,$3C,$B9,$DC,$06,$FF,$8A,$DB,$FF,$FD,$C6,$02,$FF,$80,$D0 ; $C215C8
    db $33,$F3,$01,$03,$F0,$39,$03,$10,$33,$63,$03,$30,$81,$03,$68,$9F ; $C215D8
    db $FC,$0F,$8B,$01,$6E,$9F,$60,$7F,$9B,$6F,$7E,$8B,$02,$75,$8F,$F2 ; $C215E8
    db $0D,$E3,$3E,$5B,$7F,$F4,$02,$1F,$B4,$7F,$44,$D9,$47,$B9,$EB,$50 ; $C215F8
    db $7F,$3F,$0F,$01,$74,$7F,$42,$43,$01,$DA,$7F,$D1,$7F,$F8,$1C,$7F ; $C21608
    db $04,$FB,$FC,$1A,$7F,$55,$4E,$00,$8E,$BB,$0F,$03,$54,$02,$B9,$05 ; $C21618
    db $87,$FF,$01,$CC,$05,$FF,$50,$A3,$BB,$F9,$09,$FF,$C5,$33,$FA,$02 ; $C21628
    db $C3,$46,$1E,$8D,$21,$D5,$C1,$2A,$81,$7C,$81,$21,$81,$06,$33,$03 ; $C21638
    db $FD,$06,$FB,$05,$22,$C1,$3E,$0C,$45,$4B,$B5,$33,$E3,$5C,$08,$2B ; $C21648
    db $7F,$08,$9A,$F8,$71,$04,$A8,$02,$9D,$02,$40,$C0,$E2,$D3,$F7,$98 ; $C21658
    db $67,$57,$07,$24,$7F,$DE,$5B,$00,$A2,$00,$51,$07,$EA,$04,$51,$04 ; $C21668
    db $3F,$F8,$04,$02,$F1,$43,$38,$3F,$01,$45,$80,$30,$6A,$90,$03,$EA ; $C21678
    db $91,$81,$7D,$FB,$05,$01,$3F,$7F,$81,$FE,$C0,$4B,$09,$8E,$D5,$04 ; $C21688
    db $1D,$7E,$14,$C0,$0C,$80,$51,$98,$68,$80,$35,$83,$1F,$00,$7B,$30 ; $C21698
    db $1C,$E7,$39,$22,$DF,$16,$C0,$85,$FF,$41,$FF,$40,$BF,$85,$33,$C2 ; $C216A8
    db $45,$18,$A2,$10,$50,$80,$90,$C6,$0E,$CE,$DC,$1F,$7F,$95,$19,$FF ; $C216B8
    db $0F,$FB,$81,$0E,$D5,$2B,$A6,$7F,$63,$8A,$EE,$BF,$3F,$AF,$A3,$8F ; $C216C8
    db $06,$DD,$20,$FF,$01,$14,$9F,$08,$A6,$03,$FF,$01,$CC,$D7,$03,$55 ; $C216D8
    db $1B,$40,$60,$71,$9F,$2E,$3B,$31,$15,$84,$0D,$80,$A7,$80,$B0,$80 ; $C216E8
    db $60,$BF,$60,$DF,$38,$D0,$45,$72,$FF,$D8,$FF,$03,$CE,$F3,$55,$08 ; $C216F8
    db $0A,$58,$00,$D7,$AA,$03,$54,$02,$BC,$02,$0C,$16,$00,$40,$E0,$EB ; $C21708
    db $B7,$01,$81,$9D,$11,$FE,$4D,$BF,$0D,$5B,$23,$61,$03,$A6,$08,$F7 ; $C21718
    db $28,$7F,$00,$59,$08,$AC,$0F,$41,$10,$22,$70,$75,$05,$00,$82,$CF ; $C21728
    db $0F,$0D,$1F,$0C,$18,$F7,$0C,$FB,$F9,$28,$DF,$18,$F0,$FF,$0B,$DF ; $C21738
    db $F7,$CD,$B8,$61,$7A,$15,$40,$4A,$C0,$95,$40,$EA,$40,$61,$78,$4A ; $C21748
    db $DF,$80,$02,$00,$A2,$D1,$DE,$1F,$B5,$25,$DF,$14,$98,$E7,$78,$9F ; $C21758
    db $53,$3A,$00,$0D,$7D,$E0,$0A,$00,$3F,$82,$03,$46,$03,$18,$02,$2B ; $C21768
    db $6D,$88,$1B,$50,$FF,$07,$01,$12,$FF,$E1,$7F,$74,$93,$C0,$D5,$00 ; $C21778
    db $80,$EA,$80,$95,$80,$AA,$80,$81,$40,$E8,$7F,$80,$7F,$83,$01,$C0 ; $C21788
    db $55,$01,$F0,$E1,$D7,$28,$82,$FE,$EB,$92,$25,$81,$00,$EB,$03,$81 ; $C21798
    db $8E,$D9,$FE,$12,$03,$7E,$FF,$AC,$B9,$05,$B3,$05,$A0,$EA,$59,$BB ; $C217A8
    db $E7,$0C,$BF,$56,$8B,$01,$DB,$A8,$01,$5B,$3F,$E1,$04,$01,$97,$01 ; $C217B8
    db $AF,$DD,$BB,$5C,$A1,$2B,$03,$53,$03,$3F,$7F,$47,$23,$9F,$23,$41 ; $C217C8
    db $FE,$01,$03,$79,$02,$FF,$39,$EF,$1B,$A2,$6B,$07,$33,$50,$02,$EC ; $C217D8
    db $12,$1F,$33,$B9,$01,$23,$65,$E3,$A9,$21,$5B,$1F,$1F,$03,$00,$BF ; $C217E8
    db $01,$13,$FD,$21,$DF,$71,$BF,$C4,$03,$1B,$F5,$E5,$57,$00,$80,$50 ; $C217F8
    db $FB,$04,$BB,$44,$E7,$1C,$0A,$FB,$07,$FD,$03,$9F,$68,$01,$A6,$4F ; $C21808
    db $00,$00,$D0,$3F,$E8,$1F,$78,$0E,$8F,$D8,$EF,$F8,$EC,$31,$1D,$F1 ; $C21818
    db $F0,$FC,$EB,$01,$70,$8C,$41,$9F,$B8,$71,$C0,$3F,$80,$7F,$CF,$31 ; $C21828
    db $FB,$0F,$F6,$09,$EF,$10,$45,$07,$53,$30,$EB,$07,$00,$5F,$BF,$6C ; $C21838
    db $37,$45,$49,$F0,$56,$1F,$3D,$C9,$0F,$BF,$35,$47,$05,$C6,$1C,$01 ; $C21848
    db $3A,$00,$47,$10,$DE,$20,$D6,$00,$CE,$00,$F5,$00,$6B,$01,$51,$55 ; $C21858
    db $83,$48,$09,$FF,$31,$FE,$31,$E3,$15,$0B,$80,$C0,$70,$E0,$F0,$F0 ; $C21868
    db $A8,$88,$64,$8C,$A4,$8C,$8C,$DC,$FC,$EA,$00,$41,$C0,$7F,$B0,$6F ; $C21878
    db $88,$77,$3A,$14,$FB,$82,$A5,$F7,$58,$E5,$FF,$25,$83,$60,$F2,$4E ; $C21888
    db $E0,$4D,$63,$3F,$7F,$13,$3F,$0F,$1F,$00,$07,$19,$FE,$60,$D8,$D7 ; $C21898
    db $41,$BE,$08,$2E,$FB,$12,$FD,$80,$69,$3C,$3E,$6C,$7F,$75,$5C,$F0 ; $C218A8
    db $AF,$69,$E0,$FE,$C0,$0E,$FC,$00,$F0,$08,$C0,$FF,$54,$EF,$A8,$DF ; $C218B8
    db $D0,$E8,$05,$D2,$85,$E6,$9F,$E1,$3F,$00,$64,$03,$40,$86,$40,$04 ; $C218C8
    db $15,$84,$1E,$9F,$2C,$35,$18,$04,$FF,$38,$F7,$38,$E7,$73,$87,$0B ; $C218D8
    db $1F,$85,$08,$00,$04,$C6,$20,$20,$90,$30,$B0,$78,$F8,$F8,$A0,$FD ; $C218E8
    db $20,$DF,$E9,$1D,$03,$DF,$E8,$77,$13,$70,$18,$A9,$D7,$60,$07,$37 ; $C218F8
    db $2F,$20,$25,$60,$6E,$70,$2B,$B0,$31,$F7,$3D,$00,$EF,$97,$F8,$2D ; $C21908
    db $FF,$65,$9F,$40,$E0,$5F,$78,$7C,$70,$0C,$FC,$E0,$FC,$80,$37,$F0 ; $C21918
    db $20,$00,$40,$4B,$68,$3A,$F7,$50,$45,$55,$80,$7F,$50,$B9,$C1,$E0 ; $C21928
    db $32,$00,$42,$00,$18,$A8,$05,$50,$08,$03,$80,$CE,$BF,$00,$B8,$99 ; $C21938
    db $42,$FF,$A8,$09,$FF,$52,$FF,$07,$51,$41,$07,$20,$18,$00,$04,$40 ; $C21948
    db $80,$22,$E0,$30,$60,$41,$FD,$75,$10,$3E,$E0,$A3,$47,$45,$BF,$03 ; $C21958
    db $03,$A2,$A1,$0C,$BE,$7F,$0A,$C7,$A8,$03,$FC,$0A,$41,$EF,$08,$CE ; $C21968
    db $43,$0A,$1C,$A7,$E0,$FA,$79,$30,$01,$14,$1A,$42,$16,$03,$02,$0E ; $C21978
    db $AF,$00,$06,$A2,$DF,$01,$19,$08,$F7,$52,$F7,$88,$07,$AA,$FD,$A5 ; $C21988
    db $BF,$FA,$CC,$03,$00,$C0,$2A,$F8,$E8,$90,$C3,$D4,$AB,$FA,$85,$D8 ; $C21998
    db $03,$1A,$C0,$BF,$22,$E8,$97,$97,$C3,$08,$48,$AF,$0F,$FF,$F0,$07 ; $C219A8
    db $F8,$10,$37,$10,$F7,$52,$BF,$F7,$DC,$39,$0F,$0E,$FC,$F0,$BF,$10 ; $C219B8
    db $41,$65,$85,$F1,$CE,$33,$C5,$5B,$FF,$F5,$19,$07,$E4,$0F,$8E,$80 ; $C219C8
    db $33,$F0,$8F,$E0,$9F,$F5,$CA,$E0,$07,$CF,$E4,$9B,$E4,$33,$87,$01 ; $C219D8
    db $FF,$00,$F0,$0D,$6B,$E1,$00,$82,$E0,$8C,$A5,$90,$B3,$90,$9F,$60 ; $C219E8
    db $97,$00,$96,$D7,$B7,$F7,$EB,$F7,$C0,$2B,$41,$9C,$87,$67,$91,$6F ; $C219F8
    db $93,$6E,$96,$7F,$B7,$7F,$45,$10,$A2,$58,$FC,$DF,$03,$1F,$FE,$FF ; $C21A08
    db $5F,$FF,$1F,$8A,$61,$08,$A8,$3F,$17,$FF,$EE,$01,$DD,$4F,$BC,$07 ; $C21A18
    db $FE,$70,$DF,$80,$A8,$B4,$C0,$4A,$C1,$45,$E1,$0C,$2F,$EF,$5F,$EF ; $C21A28
    db $03,$3F,$44,$EF,$2E,$5F,$50,$5A,$BF,$59,$AF,$36,$DF,$4F,$B9,$2F ; $C21A38
    db $D9,$2F,$DF,$D5,$80,$BE,$80,$F8,$FF,$D5,$00,$3E,$45,$9D,$00,$23 ; $C21A48
    db $B9,$FF,$78,$C7,$A0,$45,$FF,$BF,$19,$FF,$7F,$E1,$0C,$54,$71,$01 ; $C21A58
    db $B4,$0C,$ED,$08,$F8,$F8,$BC,$FA,$5F,$FA,$FF,$FA,$07,$F2,$00,$AB ; $C21A68
    db $2E,$3D,$52,$FF,$FB,$B1,$4E,$52,$AD,$E2,$BD,$02,$FD,$5C,$01,$AD ; $C21A78
    db $01,$7D,$03,$0B,$03,$FF,$3F,$8A,$CF,$B8,$99,$FE,$F3,$FE,$0E,$2B ; $C21A88
    db $FE,$DB,$36,$00,$01,$3E,$23,$42,$54,$80,$2A,$00,$4E,$2F,$02,$F7 ; $C21A98
    db $FC,$FE,$02,$FD,$05,$D5,$50,$FF,$C7,$81,$7F,$7B,$EE,$7B,$C4,$7C ; $C21AA8
    db $EF,$F3,$FF,$06,$0F,$A7,$0F,$6E,$0F,$0E,$6C,$5E,$7F,$2F,$F8,$64 ; $C21AB8
    db $D1,$3E,$04,$60,$FB,$3F,$84,$FF,$75,$FE,$06,$54,$AF,$21,$DE,$37 ; $C21AC8
    db $4D,$18,$07,$01,$03,$01,$03,$07,$0C,$07,$0F,$0F,$1F,$01,$1E,$2B ; $C21AD8
    db $3F,$04,$5C,$15,$2C,$06,$FD,$0D,$FB,$1B,$F6,$07,$FC,$36,$F9,$80 ; $C21AE8
    db $FF,$01,$96,$2F,$0C,$D0,$7F,$E4,$7F,$03,$E8,$03,$7F,$F4,$7F,$68 ; $C21AF8
    db $FF,$F4,$A7,$41,$28,$31,$3C,$01,$38,$A5,$03,$C3,$1C,$3F,$0F,$F9 ; $C21B08
    db $2D,$DB,$2F,$F3,$3F,$FB,$2B,$D7,$07,$03,$3B,$D7,$1F,$FB,$E7,$08 ; $C21B18
    db $6F,$F4,$5D,$95,$F0,$D0,$5F,$C0,$A3,$03,$E0,$27,$11,$04,$4A,$B7 ; $C21B28
    db $02,$54,$A7,$C3,$04,$4A,$B7,$02,$74,$83,$C3,$7E,$9C,$5E,$BD,$5A ; $C21B38
    db $82,$01,$5E,$B9,$4C,$00,$01,$BB,$76,$8D,$EF,$98,$23,$6F,$90,$80 ; $C21B48
    db $22,$FD,$8A,$7D,$82,$3E,$FF,$88,$03,$95,$FF,$02,$3E,$07,$01,$95 ; $C21B58
    db $FF,$02,$30,$07,$33,$6C,$FB,$5C,$18,$E9,$1C,$EB,$01,$7C,$8B,$DA ; $C21B68
    db $3D,$01,$02,$33,$5D,$AA,$1F,$E1,$E8,$2F,$D8,$1F,$E0,$3F,$C8,$7F ; $C21B78
    db $80,$CC,$BB,$EC,$CB,$01,$B6,$BE,$FB,$6C,$9B,$FE,$0B,$FE,$0A,$7E ; $C21B88
    db $9A,$DF,$A0,$7D,$8A,$FD,$AA,$DF,$A8,$9D,$6A,$77,$88,$76,$89,$F6 ; $C21B98
    db $0B,$80,$AF,$80,$95,$C0,$92,$C0,$95,$C8,$90,$01,$70,$D8,$01,$2F ; $C21BA8
    db $D0,$00,$15,$EA,$52,$AD,$55,$AA,$48,$B7,$C0,$01,$58,$A7,$18,$E7 ; $C21BB8
    db $7F,$12,$FA,$5F,$FF,$5C,$01,$ED,$DF,$FF,$7B,$FF,$03,$BF,$B5,$7A ; $C21BC8
    db $F5,$5F,$F0,$5F,$F4,$1F,$F4,$5B,$B4,$DB,$0B,$F7,$AB,$FD,$BE,$F1 ; $C21BD8
    db $E4,$21,$AA,$BF,$67,$3B,$98,$0F,$D7,$BD,$57,$40,$F0,$E5,$9F,$DE ; $C21BE8
    db $04,$3F,$A8,$7F,$C2,$FF,$00,$01,$CA,$FF,$E3,$FF,$EA,$FF,$75,$F6 ; $C21BF8
    db $57,$F3,$7E,$0C,$81,$57,$A8,$6A,$D5,$4A,$F7,$63,$DE,$6A,$F7,$76 ; $C21C08
    db $B3,$F3,$03,$9A,$FD,$9E,$F9,$8C,$F9,$3A,$A5,$8D,$98,$1B,$1B,$01 ; $C21C18
    db $3F,$D0,$B5,$60,$A1,$25,$3F,$C0,$7F,$89,$73,$7E,$01,$16,$31,$FE ; $C21C28
    db $FE,$88,$19,$09,$01,$7D,$FA,$5C,$5F,$04,$AE,$89,$AA,$E6,$09,$31 ; $C21C38
    db $4A,$BB,$03,$19,$FC,$A8,$FC,$02,$98,$01,$D3,$76,$99,$E1,$7F,$FD ; $C21C48
    db $FC,$80,$66,$57,$AC,$FF,$7C,$FF,$EC,$6B,$A9,$01,$8E,$F4,$AB,$D8 ; $C21C58
    db $AB,$E0,$8B,$C0,$BF,$C1,$BB,$C1,$BF,$ED,$92,$6D,$B2,$1A,$0D,$7B ; $C21C68
    db $84,$42,$BD,$63,$8E,$05,$77,$88,$A5,$B3,$E4,$C4,$03,$E8,$52,$BB ; $C21C78
    db $80,$61,$C8,$03,$30,$FF,$24,$D4,$AA,$B7,$28,$92,$BB,$08,$FF,$2B ; $C21C88
    db $C3,$AE,$01,$1B,$C4,$BF,$CC,$BD,$C4,$BD,$CE,$BD,$C2,$B9,$CC,$B9 ; $C21C98
    db $35,$60,$61,$35,$7D,$82,$F5,$8E,$03,$5B,$A4,$F3,$8C,$59,$A6,$E9 ; $C21CA8
    db $18,$FF,$F0,$04,$7F,$C0,$BB,$C0,$F0,$01,$7F,$43,$BC,$7F,$41,$80 ; $C21CB8
    db $7F,$C1,$D2,$D7,$C0,$A2,$03,$E0,$80,$03,$45,$FA,$7C,$83,$46,$60 ; $C21CC8
    db $F9,$03,$4E,$F1,$75,$8A,$87,$03,$B6,$08,$7F,$35,$33,$F0,$04,$7F ; $C21CD8
    db $C0,$FF,$C0,$AD,$77,$40,$01,$DF,$80,$FB,$4E,$18,$B1,$55,$AA,$03 ; $C21CE8
    db $17,$E8,$0D,$2F,$D0,$5F,$A0,$01,$9D,$61,$CD,$4B,$B3,$CD,$BE,$5F ; $C21CF8
    db $CD,$E5,$DC,$C3,$C0,$A0,$C0,$89,$15,$EA,$32,$CD,$0D,$F2,$62,$9D ; $C21D08
    db $00,$03,$48,$B7,$60,$9F,$49,$B6,$C2,$1C,$DF,$CA,$DB,$03,$0E,$DF ; $C21D18
    db $C2,$DE,$CA,$01,$01,$CB,$DE,$56,$A9,$5A,$A5,$9D,$9F,$5F,$C3,$79 ; $C21D28
    db $5E,$B8,$49,$2E,$5B,$AE,$38,$C0,$A2,$C0,$91,$80,$AA,$C0,$95,$80 ; $C21D38
    db $BF,$80,$96,$82,$BF,$82,$FF,$39,$51,$AE,$30,$2A,$D5,$63,$3F,$C0 ; $C21D48
    db $16,$60,$E9,$03,$3B,$C4,$CF,$DE,$CB,$01,$CD,$87,$CE,$CD,$CC,$DE ; $C21D58
    db $CC,$FE,$DC,$9E,$FD,$DA,$FD,$53,$F1,$01,$79,$70,$76,$8D,$2F,$D8 ; $C21D68
    db $6F,$90,$D7,$B5,$D5,$B5,$C5,$BD,$C1,$03,$85,$BD,$97,$B7,$83,$03 ; $C21D78
    db $95,$B5,$95,$EB,$06,$01,$85,$FA,$95,$EA,$03,$1C,$92,$EF,$05,$07 ; $C21D88
    db $07,$E3,$DE,$42,$CE,$E2,$1C,$03,$62,$03,$70,$42,$03,$C2,$3D,$66 ; $C21D98
    db $42,$E7,$3F,$03,$20,$42,$BF,$03,$40,$31,$FF,$94,$31,$B5,$94,$06 ; $C21DA8
    db $01,$B7,$3F,$74,$97,$33,$3F,$94,$3F,$EA,$3B,$03,$94,$D8,$7F,$A9 ; $C21DB8
    db $09,$06,$FD,$00,$33,$4E,$DE,$7E,$FE,$C0,$00,$F0,$F8,$E1,$E0,$27 ; $C21DC8
    db $3A,$20,$42,$17,$13,$0C,$5A,$F7,$30,$DF,$82,$7D,$10,$EF,$60,$BF ; $C21DD8
    db $38,$FF,$7F,$A0,$32,$A0,$38,$E3,$3C,$A3,$2C,$E3,$74,$F3,$0C,$CB ; $C21DE8
    db $07,$A7,$20,$DF,$2C,$DB,$24,$B4,$61,$50,$AF,$01,$08,$F7,$07,$FB ; $C21DF8
    db $3E,$7F,$7F,$CB,$55,$30,$03,$00,$36,$FF,$6B,$04,$9C,$F6,$3F,$6B ; $C21E08
    db $DC,$8D,$03,$80,$4B,$70,$D3,$05,$E3,$04,$F3,$C1,$EB,$F0,$F3,$F1 ; $C21E18
    db $FB,$FB,$E9,$05,$8A,$BA,$9F,$00,$CC,$7D,$5D,$21,$06,$FE,$FB,$A4 ; $C21E28
    db $5F,$A9,$33,$60,$7C,$07,$FC,$FA,$FC,$F8,$33,$FC,$F9,$01,$FE,$00 ; $C21E38
    db $05,$F6,$3D,$74,$FB,$F0,$3F,$E1,$3A,$7F,$C1,$EB,$09,$90,$8E,$EF ; $C21E48
    db $30,$EF,$D0,$83,$C9,$83,$D8,$83,$49,$83,$98,$03,$09,$C3,$18,$0B ; $C21E58
    db $38,$E3,$08,$3F,$80,$A5,$43,$00,$47,$BE,$EB,$F6,$D2,$F6,$E2,$F0 ; $C21E68
    db $01,$03,$F2,$F7,$E2,$14,$9D,$D2,$6D,$03,$60,$9F,$03,$A2,$DF,$32 ; $C21E78
    db $CF,$01,$09,$13,$07,$0F,$00,$00,$6A,$2A,$1A,$77,$AA,$54,$3D,$57 ; $C21E88
    db $7D,$00,$01,$70,$AD,$01,$52,$9F,$9F,$03,$3F,$31,$7B,$0B,$07,$37 ; $C21E98
    db $AE,$9B,$2F,$3A,$EF,$AF,$0C,$77,$41,$FE,$9B,$11,$00,$FF,$26,$FB ; $C21EA8
    db $2D,$F3,$2E,$F3,$AD,$62,$73,$1D,$9E,$7F,$C0,$03,$80,$30,$8B,$60 ; $C21EB8
    db $0C,$17,$E8,$16,$ED,$03,$1E,$A4,$03,$5F,$8B,$02,$5D,$46,$9F,$44 ; $C21EC8
    db $2F,$06,$00,$03,$BF,$00,$1F,$38,$7F,$0D,$47,$FC,$06,$F9,$15,$23 ; $C21ED8
    db $03,$00,$BF,$A5,$70,$74,$73,$74,$7B,$70,$73,$64,$FB,$40,$73,$20 ; $C21EE8
    db $FB,$EF,$E6,$51,$03,$BF,$D3,$0C,$30,$CF,$60,$DF,$07,$20,$47,$DF ; $C21EF8
    db $DD,$7F,$F0,$E4,$E5,$79,$EB,$07,$03,$A0,$0C,$03,$F0,$6F,$1B,$E0 ; $C21F08
    db $73,$1F,$0F,$08,$03,$BF,$A0,$5F,$B6,$1F,$29,$B7,$00,$ED,$FF,$33 ; $C21F18
    db $04,$28,$04,$53,$00,$D2,$03,$80,$A9,$6D,$DA,$C0,$FF,$73,$82,$07 ; $C21F28
    db $04,$03,$01,$E8,$3E,$80,$52,$FF,$D5,$EB,$02,$E3,$01,$A8,$7E,$00 ; $C21F38
    db $2C,$D9,$8A,$23,$C1,$98,$7D,$41,$E7,$33,$53,$70,$04,$E2,$FC,$05 ; $C21F48
    db $02,$6A,$01,$54,$01,$2A,$01,$80,$A6,$37,$63,$7D,$78,$03,$32,$FF ; $C21F58
    db $1F,$03,$00,$50,$08,$4D,$9F,$65,$25,$2A,$53,$FB,$81,$03,$01,$AB ; $C21F68
    db $03,$50,$01,$23,$1F,$02,$A0,$37,$01,$FE,$97,$8B,$89,$01,$8F,$F1 ; $C21F78
    db $A7,$09,$0B,$0F,$A2,$88,$91,$C8,$A2,$C8,$09,$8F,$A6,$08,$05,$5C ; $C21F88
    db $53,$0B,$F5,$76,$84,$19,$0F,$84,$7F,$09,$F6,$1A,$B6,$1F,$18,$13 ; $C21F98
    db $97,$0F,$5F,$1D,$55,$04,$AE,$C1,$5F,$98,$3F,$20,$15,$0F,$F5,$04 ; $C21FA8
    db $3B,$FB,$04,$01,$A7,$18,$F7,$F3,$FF,$FB,$FF,$C5,$03,$FB,$81,$03 ; $C21FB8
    db $33,$DC,$7B,$E4,$E8,$04,$03,$FF,$D5,$87,$05,$03,$F7,$B0,$4F,$A6 ; $C21FC8
    db $04,$03,$3F,$F7,$01,$03,$83,$28,$3F,$35,$A3,$0D,$63,$C6,$04,$03 ; $C21FD8
    db $21,$DF,$DF,$F0,$04,$03,$1D,$B9,$8D,$78,$B9,$04,$03,$19,$E7,$3D ; $C21FE8
    db $89,$FF,$04,$03,$E8,$38,$3F,$D9,$B3,$03,$2B,$D6,$B8,$1B,$2B,$07 ; $C21FF8
    db $A9,$4B,$02,$0E,$B5,$81,$FE,$81,$2B,$03,$80,$4B,$3F,$91,$77,$95 ; $C22008
    db $E8,$8A,$49,$07,$22,$1F,$08,$03,$70,$BF,$02,$1F,$EC,$FC,$90,$04 ; $C22018
    db $51,$18,$23,$47,$02,$54,$60,$02,$07,$ED,$97,$6A,$BD,$20,$82,$7F ; $C22028
    db $41,$82,$73,$FD,$05,$F3,$01,$9F,$D5,$B8,$63,$1F,$25,$00,$1A,$01 ; $C22038
    db $8E,$9F,$C0,$3F,$A4,$41,$FF,$E0,$7E,$BF,$1C,$BF,$F4,$54,$1F,$A9 ; $C22048
    db $FF,$75,$EA,$1F,$17,$04,$48,$FF,$EA,$95,$F4,$4A,$8B,$9F,$FF,$03 ; $C22058
    db $46,$2B,$0F,$FA,$05,$62,$C3,$7E,$03,$19,$9F,$FF,$0F,$A6,$F7,$C1 ; $C22068
    db $01,$2A,$E0,$25,$70,$E0,$32,$E0,$22,$E0,$2F,$E7,$A7,$E7,$27,$E7 ; $C22078
    db $BF,$EE,$C7,$93,$6E,$DD,$10,$2D,$F7,$24,$FF,$A3,$7F,$23,$FF,$B1 ; $C22088
    db $7F,$63,$7F,$B5,$97,$D8,$52,$D5,$71,$EB,$63,$49,$DD,$37,$C1,$0C ; $C22098
    db $EA,$D5,$AA,$80,$81,$32,$F8,$B5,$F0,$36,$F0,$07,$B2,$F0,$3F,$F7 ; $C220A8
    db $B7,$0B,$01,$F7,$E7,$8C,$30,$DF,$B0,$4F,$38,$CF,$BD,$47,$34,$CF ; $C220B8
    db $B3,$5F,$B3,$FF,$67,$FF,$80,$F5,$8F,$00,$D2,$E0,$C7,$04,$E7,$CD ; $C220C8
    db $E7,$C5,$E7,$80,$3D,$70,$FF,$CC,$F7,$CF,$18,$F9,$C4,$FB,$01,$C0 ; $C220D8
    db $F0,$83,$1F,$1B,$F8,$01,$B7,$AE,$39,$13,$C7,$DA,$12,$E5,$A1,$FE ; $C220E8
    db $55,$FE,$FF,$41,$41,$75,$41,$89,$43,$4B,$43,$FF,$DF,$87,$CF,$9F ; $C220F8
    db $BF,$9F,$DB,$F9,$AA,$59,$FF,$1D,$72,$BD,$1C,$52,$7F,$9E,$E1,$E1 ; $C22108
    db $9D,$67,$A9,$01,$53,$07,$AF,$00,$C0,$0C,$7D,$FD,$07,$01,$F3,$49 ; $C22118
    db $B7,$03,$FD,$12,$C1,$4C,$38,$FB,$3D,$01,$B1,$00,$EE,$53,$03,$B7 ; $C22128
    db $87,$67,$4F,$5F,$20,$4F,$DF,$00,$FF,$75,$D9,$D7,$55,$85,$0D,$7A ; $C22138
    db $41,$BE,$25,$FE,$D5,$EE,$D5,$6E,$D7,$6D,$D0,$DD,$C5,$68,$50,$56 ; $C22148
    db $09,$57,$33,$03,$55,$AA,$EA,$15,$52,$AF,$0E,$D7,$2A,$FF,$85,$45 ; $C22158
    db $03,$9F,$49,$06,$9B,$2F,$50,$6C,$A9,$B9,$7A,$00,$0B,$19,$47,$01 ; $C22168
    db $A8,$E0,$0E,$67,$FE,$00,$FC,$00,$53,$FA,$03,$FD,$01,$BD,$97,$B5 ; $C22178
    db $89,$4C,$FF,$52,$B7,$01,$95,$89,$03,$04,$D2,$BF,$01,$9D,$91,$03 ; $C22188
    db $4C,$B3,$0C,$01,$6D,$AB,$01,$7D,$01,$AB,$5D,$2B,$5F,$A0,$7F,$80 ; $C22198
    db $80,$03,$5E,$A1,$EF,$90,$EF,$B9,$0A,$DE,$A9,$7E,$89,$3E,$3B,$02 ; $C221A8
    db $01,$93,$FF,$00,$00,$EC,$01,$3B,$95,$47,$BF,$6D,$8B,$3B,$74,$C1 ; $C221B8
    db $03,$7F,$03,$01,$97,$00,$4B,$00,$15,$06,$23,$C6,$B9,$76,$99,$E9 ; $C221C8
    db $07,$43,$FD,$95,$FF,$4A,$72,$DD,$02,$E8,$9F,$2E,$69,$03,$11,$94 ; $C221D8
    db $06,$A0,$0C,$09,$08,$22,$18,$11,$10,$32,$10,$2E,$39,$44,$B9,$C9 ; $C221E8
    db $48,$F7,$8D,$03,$50,$EF,$01,$D2,$7F,$C0,$8C,$A1,$65,$A8,$BF,$54 ; $C221F8
    db $DA,$45,$BF,$0A,$BD,$10,$A3,$C1,$03,$01,$25,$00,$2B,$00,$34,$80 ; $C22208
    db $1B,$B5,$00,$73,$FF,$0B,$E9,$CB,$ED,$9F,$A3,$5D,$07,$A5,$FF,$73 ; $C22218
    db $8D,$F5,$45,$B1,$C3,$B5,$02,$6A,$04,$D5,$22,$AA,$05,$55,$02,$82 ; $C22228
    db $D0,$80,$47,$01,$42,$FF,$84,$FF,$1C,$22,$FF,$05,$79,$88,$BD,$EF ; $C22238
    db $2E,$EE,$1D,$18,$1B,$ED,$BF,$7F,$1A,$E7,$BE,$C3,$DF,$E3,$77,$02 ; $C22248
    db $17,$EF,$EF,$FE,$29,$D0,$61,$FD,$02,$BD,$FF,$9F,$FE,$01,$3B,$C5 ; $C22258
    db $3F,$87,$7B,$1F,$1D,$07,$FB,$81,$39,$7D,$FF,$54,$FF,$ED,$D1,$21 ; $C22268
    db $80,$03,$0D,$FB,$5A,$F7,$98,$FF,$73,$8F,$01,$3B,$00,$39,$CC,$33 ; $C22278
    db $0B,$F8,$3A,$F9,$FF,$46,$05,$F7,$FE,$2F,$08,$03,$FE,$EA,$FD,$EE ; $C22288
    db $F9,$08,$99,$31,$12,$FC,$3F,$61,$4B,$00,$71,$3A,$F5,$5B,$FC,$FD ; $C22298
    db $7A,$DE,$3D,$E1,$7F,$CA,$3F,$DF,$7A,$DF,$35,$FB,$19,$12,$FF,$F0 ; $C222A8
    db $A6,$B7,$C4,$03,$30,$E9,$B7,$B2,$03,$56,$00,$FF,$5E,$FF,$5C,$FC ; $C222B8
    db $DC,$FC,$78,$12,$FC,$00,$38,$B0,$FF,$F6,$1D,$07,$F4,$5B,$BC,$5B ; $C222C8
    db $78,$72,$E3,$80,$70,$C0,$37,$C0,$00,$56,$A0,$9B,$AD,$9F,$D6,$77 ; $C222D8
    db $33,$ED,$09,$1F,$19,$42,$6B,$7F,$DE,$B6,$3D,$4F,$90,$7F,$F5,$1F ; $C222E8
    db $07,$F7,$5D,$BE,$59,$72,$2D,$EF,$6A,$7F,$FD,$71,$DF,$2B,$70,$7F ; $C222F8
    db $2D,$FD,$02,$95,$3B,$7F,$BE,$7D,$A5,$40,$AF,$7F,$57,$07,$B7,$7F ; $C22308
    db $0F,$45,$55,$FF,$AB,$03,$B7,$7F,$29,$00,$2A,$1F,$2B,$58,$7F,$D5 ; $C22318
    db $0E,$15,$2A,$38,$D5,$AA,$35,$E1,$11,$F3,$01,$8F,$09,$EB,$03,$8E ; $C22328
    db $01,$E1,$DE,$E6,$DF,$21,$C3,$FD,$20,$4F,$B0,$6F,$20,$80,$01,$67 ; $C22338
    db $F0,$FB,$53,$F8,$01,$A1,$73,$DF,$C4,$01,$FF,$7B,$E7,$88,$01,$38 ; $C22348
    db $E7,$5C,$33,$38,$01,$57,$00,$AB,$28,$05,$F0,$02,$00,$07,$8F,$3F ; $C22358
    db $0F,$FC,$4E,$01,$B7,$F1,$18,$F0,$FF,$07,$FC,$C4,$FB,$84,$C3,$0D ; $C22368
    db $83,$1B,$87,$37,$0F,$2F,$9F,$F0,$42,$C0,$3F,$38,$80,$7F,$6D,$FE ; $C22378
    db $BB,$41,$07,$FD,$0F,$FA,$3F,$D5,$FC,$0F,$0F,$FF,$0B,$BF,$0D,$9F ; $C22388
    db $48,$BF,$8C,$9D,$C8,$BC,$8E,$9C,$CB,$BC,$0E,$F3,$0B,$F5,$0D,$F2 ; $C22398
    db $08,$FF,$8C,$7B,$88,$7F,$03,$E9,$71,$FE,$E8,$FC,$E8,$FF,$68,$FC ; $C223A8
    db $3A,$7F,$3D,$BF,$3F,$7F,$7F,$3F,$68,$EB,$B5,$67,$E8,$05,$C3,$BF ; $C223B8
    db $32,$ED,$15,$FA,$07,$F8,$17,$ED,$8C,$9C,$CA,$5C,$37,$36,$9D,$CA ; $C223C8
    db $BD,$9E,$FD,$FA,$FD,$CC,$FD,$AA,$CD,$8F,$33,$3B,$3A,$FB,$80,$CC ; $C223D8
    db $87,$7F,$44,$61,$BB,$6B,$AF,$3F,$3F,$D6,$40,$39,$01,$6E,$FF,$65 ; $C223E8
    db $6C,$47,$EC,$C3,$07,$FF,$12,$EF,$50,$AF,$51,$AF,$53,$AF,$46,$BD ; $C223F8
    db $0B,$1F,$48,$B7,$A2,$87,$80,$80,$87,$B1,$8F,$91,$8F,$BF,$FF,$C8 ; $C22408
    db $E1,$A0,$17,$07,$9C,$0E,$7F,$90,$7F,$81,$7E,$81,$FE,$B8,$DF,$50 ; $C22418
    db $FF,$90,$AB,$AD,$EF,$1D,$00,$FF,$EF,$83,$9B,$E7,$FF,$6A,$EF,$33 ; $C22428
    db $03,$EA,$0D,$F2,$30,$9D,$0F,$9F,$F7,$27,$D8,$03,$6A,$97,$E7,$D8 ; $C22438
    db $2A,$D5,$81,$3B,$CF,$C1,$EF,$E1,$CC,$D9,$41,$01,$11,$53,$51,$01 ; $C22448
    db $EE,$1D,$01,$02,$41,$FE,$FF,$51,$B0,$4F,$33,$03,$E2,$81,$33,$F2 ; $C22458
    db $EF,$E2,$EE,$20,$03,$C2,$EE,$22,$1A,$FD,$2A,$F5,$03,$80,$01,$DD ; $C22468
    db $62,$DD,$C2,$FD,$FE,$14,$F8,$1B,$5C,$01,$05,$E1,$1D,$38,$1F,$47 ; $C22478
    db $50,$77,$58,$1F,$00,$20,$0C,$0D,$40,$5A,$40,$BB,$D8,$00,$67,$88 ; $C22488
    db $FF,$98,$EF,$98,$F7,$8F,$E4,$FF,$7C,$9F,$2A,$80,$75,$D5,$41,$5F ; $C22498
    db $05,$40,$12,$00,$51,$9E,$07,$04,$02,$39,$51,$E0,$05,$D5,$AE,$33 ; $C224A8
    db $3D,$C0,$15,$00,$09,$00,$40,$0E,$2A,$00,$95,$00,$80,$00,$60,$BF ; $C224B8
    db $60,$20,$5D,$92,$7D,$81,$7F,$C0,$C1,$09,$DF,$7F,$E7,$51,$D4,$C5 ; $C224C8
    db $77,$20,$7B,$D5,$0C,$6A,$1C,$71,$3A,$78,$AB,$62,$7F,$97,$79,$04 ; $C224D8
    db $54,$47,$88,$7F,$3F,$70,$9F,$1A,$E0,$9F,$65,$10,$A2,$10,$4D,$98 ; $C224E8
    db $03,$55,$10,$15,$B2,$10,$08,$79,$B5,$04,$03,$18,$EF,$18,$C0,$3F ; $C224F8
    db $A3,$17,$D5,$01,$AA,$04,$01,$14,$01,$2A,$41,$84,$35,$03,$FD,$44 ; $C22508
    db $83,$50,$A9,$5D,$01,$1F,$A3,$10,$47,$20,$0F,$C0,$80,$DE,$3C,$01 ; $C22518
    db $39,$03,$0B,$07,$1C,$1D,$FB,$0C,$39,$EA,$17,$79,$FF,$2C,$C2,$7F ; $C22528
    db $C4,$7F,$F0,$3F,$4F,$20,$9D,$21,$2F,$7F,$1B,$87,$23,$07,$17,$3F ; $C22538
    db $B7,$7F,$00,$10,$E8,$FB,$2E,$2C,$F7,$33,$21,$FF,$51,$FF,$95,$FA ; $C22548
    db $07,$FB,$2D,$F2,$78,$D7,$D0,$D7,$C0,$F7,$00,$03,$FF,$D0,$F7,$50 ; $C22558
    db $AF,$50,$EF,$E0,$07,$6F,$C0,$7F,$38,$D0,$2F,$03,$6F,$7D,$F7,$01 ; $C22568
    db $4E,$D9,$FE,$FF,$E1,$63,$F9,$71,$37,$FB,$6D,$D2,$7F,$B3,$6C,$93 ; $C22578
    db $6D,$B6,$62,$9D,$68,$B7,$69,$96,$E7,$2B,$55,$6F,$F0,$83,$93,$0B ; $C22588
    db $30,$7F,$F8,$9D,$07,$C3,$75,$6F,$1B,$03,$30,$CF,$9D,$00,$03,$F8 ; $C22598
    db $67,$B0,$4F,$0B,$80,$E2,$30,$00,$B0,$B7,$09,$3B,$B9,$02,$18,$39 ; $C225A8
    db $37,$B9,$54,$39,$30,$19,$46,$FB,$4C,$01,$B7,$7D,$D6,$5C,$F7,$71 ; $C225B8
    db $DE,$9C,$8D,$45,$F7,$B8,$41,$05,$E0,$7A,$00,$75,$00,$86,$00,$1D ; $C225C8
    db $3C,$0E,$3E,$FF,$08,$41,$D9,$78,$BF,$5C,$71,$E3,$4E,$F3,$35,$B9 ; $C225D8
    db $14,$3B,$31,$B9,$10,$BB,$21,$FD,$11,$FB,$27,$C7,$F7,$F3,$31,$0E ; $C225E8
    db $33,$31,$CE,$E0,$FD,$DE,$11,$03,$EE,$26,$D9,$03,$FD,$5F,$20,$E1 ; $C225F8
    db $3F,$03,$1F,$A0,$03,$08,$F8,$1F,$01,$E6,$0F,$F3,$1E,$E7,$0E,$FB ; $C22608
    db $23,$03,$08,$E9,$39,$3F,$88,$1B,$55,$D5,$82,$23,$6A,$00,$35,$AF ; $C22618
    db $5F,$2B,$60,$D9,$01,$C0,$1F,$7F,$7F,$E7,$3A,$4C,$BF,$59,$77,$C4 ; $C22628
    db $03,$20,$9E,$03,$0E,$3F,$00,$28,$81,$75,$00,$AF,$00,$D2,$07,$3F ; $C22638
    db $8E,$0F,$04,$80,$5B,$02,$FD,$6E,$F9,$90,$37,$0A,$60,$01,$44,$11 ; $C22648
    db $E2,$0C,$33,$08,$D0,$E0,$05,$3F,$44,$FF,$27,$DB,$B5,$AE,$99,$F4 ; $C22658
    db $D9,$A5,$00,$E9,$91,$0B,$CF,$4E,$B7,$03,$0C,$F4,$CB,$C0,$BF,$12 ; $C22668
    db $E9,$7D,$96,$05,$1F,$7B,$0B,$43,$8B,$D4,$A1,$49,$D4,$C7,$3F,$D0 ; $C22678
    db $7D,$11,$50,$D8,$BB,$D4,$EB,$36,$E0,$9F,$03,$3F,$0D,$D0,$EF,$E4 ; $C22688
    db $DB,$1F,$1C,$7D,$63,$01,$8A,$37,$FE,$4E,$01,$CB,$37,$2E,$01,$18 ; $C22698
    db $B0,$E3,$6A,$E0,$2D,$E0,$20,$E0,$7F,$ED,$6D,$CD,$01,$7D,$DD,$07 ; $C226A8
    db $A0,$5F,$70,$9F,$30,$7C,$6F,$68,$BF,$00,$4C,$F7,$4D,$F7,$59,$AF ; $C226B8
    db $07,$E7,$70,$A0,$DF,$C7,$20,$75,$E7,$45,$87,$F7,$FF,$EB,$79,$5D ; $C226C8
    db $DC,$75,$B7,$2B,$D9,$EF,$B6,$B5,$F7,$69,$EB,$B5,$50,$C1,$4D,$C0 ; $C226D8
    db $5A,$D8,$78,$D8,$77,$DB,$53,$DB,$5B,$DB,$1B,$FB,$60,$BF,$70,$BF ; $C226E8
    db $6C,$BF,$4F,$B7,$40,$BF,$41,$BF,$49,$B7,$19,$2B,$60,$55,$3D,$AB ; $C226F8
    db $00,$F8,$7C,$25,$E6,$E0,$12,$A5,$0E,$75,$78,$B7,$21,$01,$4B,$FF ; $C22708
    db $AC,$FF,$DE,$80,$E0,$18,$3F,$F3,$08,$0C,$F8,$F8,$EC,$E0,$62,$EA ; $C22718
    db $27,$EF,$80,$4D,$1F,$C7,$F8,$E7,$E0,$3F,$EF,$38,$CA,$75,$01,$01 ; $C22728
    db $A9,$03,$57,$07,$EF,$0F,$75,$2C,$1D,$C6,$FA,$CB,$2E,$1D,$FB,$18 ; $C22738
    db $06,$FF,$B7,$7D,$76,$ED,$B0,$6F,$99,$77,$08,$4F,$3D,$F8,$00,$11 ; $C22748
    db $2F,$00,$3F,$70,$DC,$FF,$F5,$FB,$08,$EF,$BB,$73,$06,$5C,$0D,$7E ; $C22758
    db $BF,$D5,$FF,$FE,$F3,$1F,$E1,$9F,$C1,$FF,$51,$03,$AB,$07,$F7,$07 ; $C22768
    db $01,$C4,$5F,$7F,$B9,$E1,$5C,$FA,$7A,$5F,$FA,$87,$FB,$46,$F3,$BC ; $C22778
    db $60,$70,$88,$C0,$8B,$80,$1C,$80,$70,$90,$3E,$21,$00,$18,$60,$23 ; $C22788
    db $60,$DF,$C0,$5B,$03,$FF,$0E,$FF,$66,$1C,$01,$FB,$BF,$11,$0E,$10 ; $C22798
    db $DF,$48,$36,$00,$97,$0F,$3A,$1F,$1F,$F4,$FF,$7F,$03,$AA,$FF,$FD ; $C227A8
    db $CF,$66,$BF,$5C,$63,$30,$81,$7F,$07,$FE,$40,$02,$01,$03,$81,$01 ; $C227B8
    db $81,$03,$00,$07,$03,$7B,$00,$03,$27,$03,$3C,$C3,$7D,$F3,$7C,$EF ; $C227C8
    db $83,$37,$FE,$E9,$FA,$F7,$78,$1D,$65,$27,$FE,$40,$7D,$F9,$FC,$F0 ; $C227D8
    db $06,$F8,$F3,$F1,$EB,$F3,$00,$C6,$03,$0E,$FD,$55,$06,$38,$F7,$33 ; $C227E8
    db $EF,$75,$41,$B9,$52,$DF,$FA,$CF,$62,$DF,$A8,$00,$D4,$00,$58,$00 ; $C227F8
    db $A4,$00,$E0,$F0,$F2,$F8,$F0,$FC,$82,$5F,$E1,$A0,$FF,$58,$FF,$26 ; $C22808
    db $FF,$B0,$FF,$70,$EF,$82,$7D,$DE,$2E,$B6,$00,$12,$38,$00,$54,$40 ; $C22818
    db $4A,$C0,$84,$B0,$51,$38,$19,$1E,$D1,$3F,$4E,$5F,$A7,$00,$90,$6F ; $C22828
    db $D8,$2F,$03,$D0,$04,$A0,$75,$C2,$80,$44,$C0,$E8,$F1,$EC,$C4,$09 ; $C22838
    db $EC,$C2,$CC,$00,$D8,$3F,$C0,$EF,$AE,$27,$17,$39,$FB,$11,$FF,$04 ; $C22848
    db $1E,$08,$0F,$2C,$0F,$8B,$0F,$0D,$CF,$8F,$4F,$0F,$00,$4F,$71,$E4 ; $C22858
    db $FF,$E8,$DF,$CC,$FF,$1B,$EE,$3D,$CE,$3F,$EF,$BF,$6F,$BF,$7F,$F8 ; $C22868
    db $06,$FF,$3E,$BA,$01,$04,$1A,$5F,$10,$27,$70,$DF,$D6,$00,$00,$3A ; $C22878
    db $01,$FD,$02,$EA,$05,$D0,$48,$2F,$17,$54,$3B,$FF,$3B,$AE,$D1,$EF ; $C22888
    db $2E,$03,$57,$1D,$00,$FA,$05,$74,$0B,$AF,$57,$2C,$FE,$3B,$78,$07 ; $C22898
    db $9D,$22,$57,$BB,$63,$5C,$A8,$F0,$FE,$7C,$FF,$38,$DF,$07,$FA,$DF ; $C228A8
    db $6F,$7F,$F8,$7B,$F8,$CF,$FC,$05,$84,$54,$03,$2A,$00,$15,$80,$83 ; $C228B8
    db $96,$D7,$FB,$FF,$08,$CF,$B7,$05,$FB,$05,$A1,$21,$FF,$9B,$7F,$7A ; $C228C8
    db $7B,$02,$00,$AC,$00,$5F,$00,$AE,$01,$6B,$9C,$24,$77,$88,$79,$76 ; $C228D8
    db $0C,$7F,$56,$0F,$AF,$85,$7F,$C2,$75,$00,$EA,$00,$F5,$10,$D2,$30 ; $C228E8
    db $B1,$C8,$7A,$88,$56,$3A,$7F,$E0,$73,$33,$01,$F8,$86,$01,$3F,$40 ; $C228F8
    db $10,$00,$9F,$60,$FF,$40,$FB,$C4,$3B,$C4,$33,$CC,$3F,$0E,$7F,$EF ; $C22908
    db $01,$0F,$01,$00,$F3,$FF,$EC,$71,$1E,$9E,$61,$DD,$23,$F7,$0F,$BD ; $C22918
    db $43,$5F,$E1,$EE,$11,$FD,$0F,$FE,$B5,$E8,$2C,$00,$F7,$FE,$3A,$6E ; $C22928
    db $DF,$3D,$08,$24,$1B,$1F,$E1,$8A,$F5,$39,$C7,$DD,$A2,$3C,$DF,$CD ; $C22938
    db $BA,$04,$02,$7D,$1F,$FF,$BF,$22,$AC,$08,$8A,$7F,$EE,$BF,$BB,$00 ; $C22948
    db $E2,$28,$D8,$2D,$78,$9E,$F8,$3E,$22,$78,$CF,$B1,$19,$30,$EF,$BB ; $C22958
    db $37,$F8,$F7,$03,$54,$B1,$05,$5C,$07,$00,$83,$C0,$C1,$F0,$71,$1D ; $C22968
    db $52,$9F,$05,$A9,$A1,$1D,$D0,$3F,$0C,$62,$55,$BE,$03,$1F,$40,$00 ; $C22978
    db $90,$80,$03,$25,$80,$43,$80,$25,$23,$60,$03,$38,$FB,$90,$03,$25 ; $C22988
    db $EB,$5D,$65,$25,$47,$FB,$88,$08,$8F,$4B,$FF,$B5,$D9,$85,$DA,$23 ; $C22998
    db $5C,$00,$63,$10,$01,$0C,$80,$03,$E0,$03,$4B,$F7,$88,$13,$87,$19 ; $C229A8
    db $80,$60,$3D,$63,$FD,$B2,$FD,$32,$29,$FE,$29,$0A,$0E,$5F,$08,$E1 ; $C229B8
    db $3D,$A0,$CC,$05,$03,$48,$23,$01,$A1,$AE,$D7,$01,$87,$81,$08,$1D ; $C229C8
    db $03,$48,$CB,$82,$00,$A0,$7D,$07,$00,$63,$1C,$B9,$7F,$60,$B2,$B1 ; $C229D8
    db $C0,$60,$65,$1C,$E3,$59,$B7,$60,$2F,$FB,$FF,$6A,$BF,$01,$07,$53 ; $C229E8
    db $03,$27,$0F,$1F,$76,$7B,$75,$9D,$76,$50,$D5,$00,$0B,$FE,$AE,$FD ; $C229F8
    db $F9,$AF,$56,$AF,$77,$5D,$29,$0D,$80,$D9,$77,$F5,$01,$6F,$38,$FF ; $C22A08
    db $C4,$49,$D0,$2B,$FF,$60,$DC,$C5,$0F,$8E,$16,$7F,$0D,$7F,$00,$03 ; $C22A18
    db $0E,$7F,$1D,$7F,$06,$F9,$05,$78,$FE,$02,$03,$15,$EE,$5C,$A9,$39 ; $C22A28
    db $03,$7D,$01,$4F,$81,$05,$0F,$2B,$8F,$27,$5F,$0B,$03,$06,$C1,$30 ; $C22A38
    db $F9,$04,$FB,$0B,$F5,$07,$F8,$0D,$03,$0E,$FF,$33,$05,$03,$2E,$08 ; $C22A48
    db $03,$1F,$7F,$40,$33,$03,$26,$D9,$E0,$03,$DF,$13,$EE,$50,$0B,$37 ; $C22A58
    db $07,$DF,$30,$0B,$9F,$03,$8B,$DF,$20,$4C,$81,$37,$F9,$81,$03,$8B ; $C22A68
    db $77,$80,$4D,$4C,$9D,$88,$3F,$8D,$7F,$2C,$8A,$7F,$03,$30,$0C,$FB ; $C22A78
    db $F9,$0D,$FA,$0A,$73,$FD,$03,$AC,$07,$C6,$03,$71,$E0,$00,$5C,$F0 ; $C22A88
    db $3B,$E0,$FC,$EE,$C8,$EF,$C8,$CE,$C0,$ED,$80,$DE,$40,$00,$DB,$A0 ; $C22A98
    db $5F,$AC,$D7,$C8,$7F,$C8,$0E,$B7,$C0,$BF,$80,$A0,$45,$98,$7B,$60 ; $C22AA8
    db $90,$01,$73,$90,$57,$90,$04,$55,$D0,$57,$14,$55,$7E,$DB,$24,$21 ; $C22AB8
    db $10,$EF,$75,$10,$27,$E7,$14,$EB,$5A,$BF,$DE,$03,$90,$B7,$80,$BE ; $C22AC8
    db $90,$B5,$04,$03,$94,$B5,$90,$BE,$62,$0F,$90,$EF,$43,$03,$94,$EB ; $C22AD8
    db $00,$05,$FD,$01,$1D,$03,$CF,$1F,$67,$26,$1F,$AB,$03,$8A,$06,$D7 ; $C22AE8
    db $2C,$F7,$06,$DF,$71,$F7,$A3,$F6,$81,$03,$E0,$EF,$C2,$FE,$A0,$C0 ; $C22AF8
    db $03,$B0,$FF,$D2,$F6,$35,$B0,$F7,$03,$C3,$E0,$9F,$C2,$7D,$A0,$DF ; $C22B08
    db $C2,$3D,$B0,$CF,$D2,$2D,$87,$03,$3D,$2B,$00,$33,$6B,$1F,$9F,$3F ; $C22B18
    db $9F,$7F,$C1,$FB,$9C,$7E,$1D,$7C,$0D,$33,$3B,$71,$59,$EF,$11,$FE ; $C22B28
    db $03,$FE,$04,$FF,$0C,$F3,$90,$F7,$F2,$F6,$12,$76,$82,$01,$F2,$E1 ; $C22B38
    db $FE,$0A,$1E,$06,$0E,$90,$FF,$E2,$3D,$12,$FD,$12,$D7,$01,$22,$C2 ; $C22B48
    db $FF,$E7,$2B,$00,$BF,$50,$CB,$BF,$24,$88,$BB,$01,$45,$F8,$1C,$D7 ; $C22B58
    db $15,$39,$88,$77,$01,$C4,$A9,$60,$7A,$8D,$DF,$E8,$73,$38,$DF,$08 ; $C22B68
    db $03,$48,$E4,$01,$EB,$7F,$9B,$35,$F7,$03,$B8,$83,$00,$F7,$B0,$E7 ; $C22B78
    db $A3,$EF,$A2,$EE,$A2,$71,$AE,$01,$A6,$80,$03,$F2,$AE,$A0,$FF,$A1 ; $C22B88
    db $5F,$61,$A2,$01,$5D,$A2,$7F,$03,$01,$80,$7F,$28,$31,$C8,$37,$48 ; $C22B98
    db $68,$5F,$41,$63,$03,$37,$88,$F7,$6C,$03,$37,$3B,$08,$A5,$03,$CF ; $C22BA8
    db $8E,$0E,$8D,$0F,$99,$0F,$09,$1F,$22,$17,$17,$07,$46,$0F,$2F,$0F ; $C22BB8
    db $7E,$F7,$7D,$FA,$69,$FE,$E9,$FE,$5C,$9D,$B0,$C7,$FC,$96,$FF,$9B ; $C22BC8
    db $F4,$7F,$01,$BC,$01,$0E,$03,$47,$07,$62,$87,$27,$17,$62,$97,$03 ; $C22BD8
    db $81,$FE,$40,$06,$FF,$72,$DD,$27,$FA,$BF,$20,$07,$F8,$03,$8E,$BA ; $C22BE8
    db $61,$0F,$4F,$0F,$3E,$3F,$7E,$2F,$4F,$2F,$4C,$2E,$49,$28,$48,$28 ; $C22BF8
    db $3E,$F7,$2B,$FC,$7E,$DF,$AA,$DD,$9F,$FE,$9C,$FF,$9A,$3F,$F7,$72 ; $C22C08
    db $97,$72,$33,$17,$7E,$9F,$53,$1F,$52,$37,$2B,$37,$BA,$27,$BB,$27 ; $C22C18
    db $12,$EF,$13,$FE,$0C,$FF,$C2,$03,$12,$FF,$23,$E3,$DE,$22,$DF,$23 ; $C22C28
    db $FE,$F5,$41,$8D,$43,$8F,$5F,$87,$5F,$8B,$5F,$A7,$C3,$03,$27,$DF ; $C22C38
    db $00,$D5,$30,$FF,$2E,$F7,$26,$FB,$2A,$10,$F7,$06,$F9,$03,$EA,$7A ; $C22C48
    db $92,$5D,$CB,$D7,$6B,$7F,$C7,$1D,$03,$F7,$C7,$80,$37,$3A,$CF,$7A ; $C22C58
    db $C7,$D2,$6F,$31,$E6,$5F,$A1,$66,$9F,$8E,$03,$EB,$1F,$BD,$07,$C3 ; $C22C68
    db $0F,$8F,$1F,$BF,$5F,$7E,$5F,$FC,$5F,$5C,$5E,$0A,$B0,$17,$0C,$F7 ; $C22C78
    db $28,$E0,$61,$42,$BD,$44,$1C,$BF,$4C,$BB,$33,$49,$F7,$03,$99,$01 ; $C22C88
    db $67,$01,$77,$00,$33,$66,$DF,$42,$FF,$0C,$62,$DF,$E2,$5F,$03,$62 ; $C22C98
    db $32,$9F,$FB,$00,$FF,$0A,$01,$FF,$60,$03,$00,$6B,$B4,$6B,$95,$E0 ; $C22CA8
    db $03,$9D,$6F,$B8,$30,$6B,$BD,$03,$6C,$BF,$E8,$09,$FD,$F4,$FF,$EC ; $C22CB8
    db $0E,$03,$FD,$FC,$01,$03,$E8,$F7,$B4,$CB,$EC,$F3,$40,$03,$CF,$BC ; $C22CC8
    db $E3,$34,$44,$CF,$80,$79,$F1,$FF,$E3,$F3,$C3,$E7,$DF,$DB,$60,$00 ; $C22CD8
    db $5C,$57,$69,$BD,$48,$B7,$11,$EF,$63,$9E,$43,$BE,$45,$BA,$75,$EE ; $C22CE8
    db $75,$8E,$FC,$37,$4A,$01,$A8,$F4,$BC,$63,$B4,$01,$4F,$BC,$E7,$BC ; $C22CF8
    db $47,$B8,$67,$B1,$01,$20,$81,$7F,$73,$25,$E3,$0D,$E3,$23,$EF,$77 ; $C22D08
    db $FF,$6F,$0F,$31,$83,$1C,$40,$0B,$80,$21,$DF,$01,$FF,$23,$DD,$77 ; $C22D18
    db $AB,$D1,$C3,$60,$C1,$04,$FF,$9C,$00,$B8,$8A,$F8,$D8,$FB,$C9,$FB ; $C22D28
    db $F9,$E2,$01,$09,$E3,$1B,$C7,$0F,$98,$67,$0C,$FF,$58,$A7,$49,$FE ; $C22D38
    db $39,$EE,$E1,$7E,$09,$D0,$A7,$11,$0F,$43,$0F,$83,$17,$03,$3B,$03 ; $C22D48
    db $05,$9F,$5B,$04,$00,$01,$A1,$C3,$D1,$E1,$B1,$E1,$51,$30,$E1,$AD ; $C22D58
    db $03,$EF,$B1,$EF,$74,$61,$00,$F5,$C1,$3F,$A1,$5E,$41,$BE,$B1,$E6 ; $C22D68
    db $03,$07,$2E,$61,$9E,$30,$81,$BB,$80,$BD,$9C,$BD,$CB,$BD,$C9,$BB ; $C22D78
    db $8F,$FF,$CF,$BF,$1E,$FF,$75,$0C,$14,$EF,$89,$FE,$01,$8E,$B8,$71 ; $C22D88
    db $7B,$83,$FE,$16,$F9,$DF,$9F,$AA,$BF,$80,$BF,$BF,$B9,$E2,$DE,$81 ; $C22D98
    db $E7,$3F,$FF,$9F,$E0,$AA,$D5,$D6,$00,$BB,$DF,$1D,$F2,$E2,$9F,$8F ; $C22DA8
    db $73,$C0,$AD,$3D,$FF,$7B,$FF,$77,$9F,$30,$61,$01,$00,$2D,$F2,$5A ; $C22DB8
    db $A7,$74,$EF,$38,$CF,$6E,$30,$01,$F3,$27,$7F,$03,$05,$78,$0E,$00 ; $C22DC8
    db $A1,$EF,$3E,$3B,$04,$A0,$8F,$F1,$EF,$A1,$EF,$21,$38,$EF,$E1,$01 ; $C22DD8
    db $33,$3B,$6F,$EF,$1B,$21,$E1,$1E,$95,$19,$55,$E1,$BF,$A5,$02,$D7 ; $C22DE8
    db $03,$2E,$12,$EF,$30,$00,$5B,$00,$7B,$38,$7F,$30,$7B,$24,$7B,$98 ; $C22DF8
    db $63,$80,$C7,$E8,$E7,$33,$09,$28,$DF,$10,$FF,$07,$45,$A0,$DF,$FE ; $C22E08
    db $9B,$07,$5F,$16,$BD,$C0,$05,$5F,$30,$F7,$90,$FB,$D8,$09,$FB,$E8 ; $C22E18
    db $FD,$E8,$EC,$85,$DB,$80,$1A,$7F,$5A,$AF,$41,$F9,$28,$FF,$1C,$EB ; $C22E28
    db $1D,$EB,$0D,$F7,$FE,$DF,$DE,$DE,$96,$FE,$D3,$D6,$93,$D6,$D2,$D6 ; $C22E38
    db $82,$D6,$C2,$DE,$4E,$FD,$CE,$B9,$17,$E9,$D2,$AF,$92,$EF,$D2,$2D ; $C22E48
    db $82,$FF,$C2,$3D,$6C,$1B,$E9,$1B,$A8,$5B,$69,$DB,$48,$DB,$49,$DB ; $C22E58
    db $4F,$DF,$48,$D9,$08,$F7,$09,$F6,$8B,$03,$49,$B6,$86,$48,$B7,$49 ; $C22E68
    db $BE,$47,$BD,$48,$BF,$82,$F7,$82,$DE,$A9,$76,$82,$35,$77,$02,$79 ; $C22E78
    db $3D,$09,$87,$01,$7D,$02,$FD,$51,$37,$5E,$EC,$41,$03,$35,$00,$32 ; $C22E88
    db $DB,$41,$03,$FF,$9D,$03,$3B,$BD,$39,$8F,$07,$BE,$02,$47,$03,$41 ; $C22E98
    db $D3,$50,$0B,$AB,$00,$54,$C0,$07,$56,$00,$AC,$00,$7F,$00,$01,$6B ; $C22EA8
    db $27,$DB,$95,$9E,$FE,$5F,$39,$21,$65,$E3,$E7,$41,$61,$47,$C1,$C9 ; $C22EB8
    db $C1,$86,$C1,$8D,$C1,$19,$E7,$83,$FF,$E1,$5E,$43,$3B,$00,$FE,$C3 ; $C22EC8
    db $7E,$80,$FF,$83,$FE,$51,$38,$0B,$AF,$3B,$AB,$00,$0C,$51,$10,$A0 ; $C22ED8
    db $10,$45,$00,$A2,$46,$00,$BF,$74,$01,$8E,$E5,$10,$EF,$02,$92,$2B ; $C22EE8
    db $0C,$FF,$E3,$94,$81,$89,$81,$9B,$81,$33,$03,$80,$05,$A2,$01,$4F ; $C22EF8
    db $0F,$82,$10,$80,$9F,$87,$7E,$85,$7B,$0F,$FE,$31,$78,$EF,$27,$0F ; $C22F08
    db $FB,$FF,$1A,$5F,$5C,$4C,$39,$21,$9A,$01,$45,$21,$89,$03,$43,$27 ; $C22F18
    db $8F,$07,$57,$03,$17,$5D,$77,$11,$80,$E1,$13,$FF,$07,$FA,$05,$E4 ; $C22F28
    db $01,$87,$37,$AB,$01,$9F,$04,$3F,$02,$03,$E0,$D5,$53,$2B,$81,$60 ; $C22F38
    db $07,$A3,$23,$85,$51,$09,$03,$A3,$05,$50,$09,$AA,$05,$49,$D1,$D9 ; $C22F48
    db $1E,$C0,$25,$1F,$27,$03,$60,$21,$01,$01,$83,$01,$80,$3A,$01,$01 ; $C22F58
    db $90,$45,$41,$00,$FA,$B5,$01,$FC,$F7,$3D,$FF,$5D,$BA,$5E,$DF,$7D ; $C22F68
    db $2E,$5B,$FF,$70,$1E,$FF,$F1,$F3,$E1,$F8,$F0,$F3,$E0,$F9,$F0,$F4 ; $C22F78
    db $E0,$F8,$70,$FC,$58,$7F,$F1,$CE,$60,$DF,$F0,$CF,$03,$2E,$A0,$7F ; $C22F88
    db $3C,$30,$FF,$18,$E7,$0A,$20,$14,$20,$1C,$E1,$08,$12,$0D,$0C,$06 ; $C22F98
    db $04,$40,$23,$04,$15,$F1,$53,$40,$C1,$F7,$04,$FB,$8C,$01,$27,$C0 ; $C22FA8
    db $91,$80,$20,$00,$C5,$1F,$18,$0B,$2F,$05,$03,$BF,$05,$EB,$86,$DF ; $C22FB8
    db $3F,$DF,$40,$FF,$B7,$24,$0B,$F4,$03,$5C,$18,$FB,$88,$2E,$18,$38 ; $C22FC8
    db $F0,$98,$C1,$A4,$00,$70,$00,$48,$E0,$E0,$80,$2B,$F7,$C9,$F7,$37 ; $C22FD8
    db $CF,$86,$7F,$09,$E0,$DB,$47,$FE,$9E,$FF,$4F,$03,$4F,$1F,$1F,$0F ; $C22FE8
    db $9F,$1F,$A9,$59,$EA,$86,$E5,$7E,$FE,$FE,$FF,$0B,$5C,$EF,$30,$6F ; $C22FF8
    db $DF,$FF,$BE,$DF,$BE,$BE,$7F,$7E,$FF,$FE,$FD,$D0,$13,$07,$BF,$98 ; $C23008
    db $00,$BE,$BF,$06,$B0,$BC,$79,$BF,$63,$08,$75,$CF,$20,$08,$DB,$3F ; $C23018
    db $EF,$3E,$D5,$08,$B0,$EF,$FC,$FC,$B0,$7D,$E2,$F0,$07,$C4,$E0,$8A ; $C23028
    db $80,$14,$7C,$EC,$FC,$FF,$8F,$1D,$05,$E0,$F9,$C9,$71,$05,$73,$BF ; $C23038
    db $3F,$BD,$7F,$FF,$7D,$F9,$77,$48,$7F,$73,$6F,$29,$57,$73,$EC,$39 ; $C23048
    db $DF,$36,$FF,$62,$BF,$7F,$EF,$B4,$8B,$4F,$C7,$E7,$E7,$BE,$F7,$97 ; $C23058
    db $F7,$76,$BF,$7D,$FF,$5E,$BF,$FC,$7F,$9E,$7F,$C7,$BF,$E7,$FE,$F7 ; $C23068
    db $FD,$F6,$ED,$9D,$F6,$FE,$F9,$AC,$F7,$FF,$F9,$08,$FF,$75,$BF,$2D ; $C23078
    db $77,$3D,$F7,$35,$7F,$3F,$03,$DC,$ED,$31,$00,$5B,$FF,$7A,$FF,$6A ; $C23088
    db $FF,$7B,$EF,$33,$7B,$EE,$01,$6F,$E5,$00,$FE,$2C,$C7,$DF,$FE,$5F ; $C23098
    db $CC,$7F,$7D,$DF,$DD,$7F,$4D,$FF,$D9,$7F,$49,$FF,$FC,$81,$33,$BC ; $C230A8
    db $F7,$BD,$FA,$97,$42,$FD,$0D,$FA,$F9,$F6,$D9,$FE,$C7,$FB,$FB,$C7 ; $C230B8
    db $F5,$CE,$DF,$5A,$D2,$48,$63,$EA,$1D,$D3,$BE,$2B,$83,$FB,$8E,$7F ; $C230C8
    db $F3,$7F,$4B,$FF,$BC,$67,$7D,$9F,$FD,$BF,$7A,$8D,$EF,$F8,$7D,$25 ; $C230D8
    db $3A,$7F,$F7,$EE,$85,$FE,$CE,$8F,$FF,$97,$ED,$A7,$5C,$2B,$9B,$FE ; $C230E8
    db $36,$A3,$FE,$67,$44,$5C,$37,$B8,$CF,$1F,$FF,$39,$7F,$31,$FF,$31 ; $C230F8
    db $7F,$2B,$F7,$27,$7F,$2F,$FF,$BD,$FF,$B2,$FF,$3E,$45,$7E,$00,$CF ; $C23108
    db $AE,$FF,$69,$DF,$A7,$FE,$0E,$C7,$0B,$CF,$EE,$1D,$39,$FE,$70,$25 ; $C23118
    db $FB,$E7,$F3,$EF,$73,$F6,$33,$1C,$E1,$56,$FD,$6E,$B8,$73,$AF,$FF ; $C23128
    db $5D,$FC,$BF,$EE,$D1,$9D,$E3,$DB,$F4,$ED,$16,$65,$D7,$03,$E6,$4E ; $C23138
    db $C3,$FD,$C0,$03,$FD,$AF,$FB,$5D,$FB,$E2,$03,$DC,$E3,$3B,$69,$9F ; $C23148
    db $B8,$5B,$79,$DB,$D8,$FB,$59,$FB,$DF,$FF,$58,$F9,$F8,$9B,$19,$F6 ; $C23158
    db $03,$00,$B9,$78,$F7,$F9,$FE,$77,$FD,$F8,$60,$BF,$33,$B4,$FF,$D7 ; $C23168
    db $FE,$01,$84,$FF,$C5,$FE,$AC,$FF,$DD,$DB,$9E,$00,$33,$BB,$4F,$DF ; $C23178
    db $AD,$87,$FF,$CD,$0C,$BF,$AF,$D7,$DD,$A2,$D5,$01,$D9,$DB,$50,$DB ; $C23188
    db $DD,$DF,$3E,$D9,$17,$7E,$80,$8F,$F7,$55,$EB,$D9,$F6,$D0,$0E,$AF ; $C23198
    db $DD,$BE,$A2,$96,$7B,$D6,$13,$2D,$FE,$7F,$00,$A7,$FE,$03,$F8,$04 ; $C231A8
    db $F1,$64,$08,$01,$F0,$02,$0D,$0A,$FF,$24,$FF,$28,$47,$55,$80,$10 ; $C231B8
    db $4B,$01,$00,$F8,$07,$12,$53,$03,$83,$46,$07,$2D,$CF,$0F,$E0,$5B ; $C231C8
    db $12,$ED,$0B,$00,$FE,$04,$FB,$0B,$F6,$00,$F0,$03,$95,$84,$05,$FE ; $C231D8
    db $1A,$78,$FD,$00,$03,$20,$FF,$8B,$FC,$5F,$FC,$26,$FB,$56,$39,$23 ; $C231E8
    db $1F,$7F,$86,$81,$00,$13,$10,$00,$A4,$04,$1F,$01,$17,$EC,$0E,$F9 ; $C231F8
    db $FD,$63,$AC,$5C,$BE,$45,$02,$09,$CF,$3D,$04,$45,$01,$9E,$29,$12 ; $C23208
    db $21,$8A,$BA,$FF,$52,$99,$DF,$00,$29,$30,$7F,$C4,$0F,$23,$67,$07 ; $C23218
    db $54,$41,$31,$00,$25,$00,$BD,$1F,$FE,$36,$CF,$05,$FB,$1D,$23,$DC ; $C23228
    db $40,$40,$3D,$68,$0F,$C4,$03,$07,$84,$07,$04,$CF,$3C,$80,$27,$F9 ; $C23238
    db $FC,$5E,$00,$0D,$EE,$B8,$33,$05,$57,$A5,$EB,$BA,$B7,$F8,$EB,$4D ; $C23248
    db $3F,$97,$FF,$5A,$7F,$20,$F5,$40,$EA,$40,$C0,$A8,$C0,$55,$80,$FA ; $C23258
    db $80,$3F,$CF,$5A,$B5,$20,$7F,$85,$44,$01,$60,$9F,$03,$F0,$80,$86 ; $C23268
    db $80,$03,$2D,$9F,$19,$BD,$11,$3D,$AA,$44,$3F,$30,$83,$3F,$11,$F8 ; $C23278
    db $7F,$45,$0A,$FF,$49,$F7,$11,$9C,$E7,$47,$25,$00,$80,$81,$80,$03 ; $C23288
    db $C7,$87,$A7,$0F,$66,$D7,$03,$8F,$03,$17,$E7,$18,$FF,$0C,$9E,$7F ; $C23298
    db $0B,$FF,$8F,$7C,$07,$FC,$87,$7C,$87,$FC,$05,$9F,$5C,$3F,$62,$28 ; $C232A8
    db $40,$D5,$C0,$D6,$F0,$D1,$F6,$D3,$F6,$F3,$FE,$FA,$FE,$1B,$FE,$9B ; $C232B8
    db $61,$A4,$D9,$7F,$90,$FF,$92,$7D,$B2,$DD,$BA,$75,$0F,$30,$1D,$22 ; $C232C8
    db $1E,$23,$15,$2E,$19,$3E,$02,$03,$01,$06,$07,$0C,$1F,$FF,$84,$01 ; $C232D8
    db $19,$FF,$65,$57,$07,$BC,$B0,$3B,$00,$BF,$8E,$61,$A1,$EE,$08,$FD ; $C232E8
    db $08,$4F,$00,$02,$07,$01,$07,$03,$04,$07,$3C,$C0,$45,$3F,$20,$2F ; $C232F8
    db $30,$35,$3B,$7A,$03,$3B,$0D,$07,$87,$BB,$1F,$20,$D9,$01,$DF,$1B ; $C23308
    db $38,$F9,$C6,$3B,$FB,$03,$74,$E0,$07,$00,$19,$7E,$1C,$7C,$62,$18 ; $C23318
    db $03,$7D,$98,$4D,$03,$0B,$D4,$F8,$B3,$04,$03,$65,$0E,$00,$96,$7D ; $C23328
    db $14,$7D,$94,$7D,$1C,$7E,$E7,$1D,$1D,$03,$80,$F3,$1D,$14,$FB,$03 ; $C23338
    db $01,$1C,$F7,$18,$F7,$1C,$01,$21,$F7,$99,$7E,$9C,$7C,$9D,$E2,$01 ; $C23348
    db $03,$7E,$FF,$00,$33,$1C,$FB,$0C,$FB,$04,$DD,$03,$F1,$BD,$62,$BD ; $C23358
    db $9C,$CC,$33,$03,$18,$E7,$1D,$04,$65,$7C,$3C,$FE,$88,$55,$98,$B0 ; $C23368
    db $19,$FF,$8C,$02,$FB,$24,$DB,$FE,$FE,$FE,$5E,$80,$95,$00,$7C,$41 ; $C23378
    db $E7,$4F,$9D,$4F,$32,$C0,$7F,$61,$AB,$AE,$19,$C0,$2E,$BF,$57,$5D ; $C23388
    db $B8,$0D,$FE,$08,$5F,$08,$7F,$0C,$6F,$08,$CF,$6C,$0F,$D8,$EE,$8C ; $C23398
    db $EF,$08,$CE,$08,$4E,$BD,$3B,$70,$08,$7B,$C8,$3F,$06,$8C,$73,$08 ; $C233A8
    db $FF,$DE,$33,$40,$6F,$03,$CE,$4F,$70,$DD,$03,$4D,$6F,$34,$4E,$B9 ; $C233B8
    db $33,$2E,$03,$19,$46,$B9,$4D,$BE,$46,$F9,$4D,$FE,$1C,$8F,$0C,$CE ; $C233C8
    db $03,$1E,$C7,$03,$3E,$0C,$03,$2E,$CE,$3B,$0C,$E1,$99,$06,$F9,$08 ; $C233D8
    db $03,$C0,$C1,$C9,$2C,$09,$2C,$E8,$E0,$03,$A8,$2C,$B8,$06,$6A,$38 ; $C233E8
    db $6D,$68,$EB,$9D,$77,$98,$E0,$DD,$03,$20,$EF,$83,$23,$68,$FF,$3B ; $C233F8
    db $67,$7B,$8D,$01,$73,$01,$C0,$A5,$CF,$EF,$8F,$CF,$06,$03,$FF,$43 ; $C23408
    db $BD,$42,$01,$B8,$F6,$FD,$72,$FF,$FE,$4B,$CA,$7F,$8F,$F7,$89,$0D ; $C23418
    db $D0,$03,$88,$01,$C0,$85,$77,$CF,$A2,$A1,$BF,$3F,$49,$E1,$FE,$20 ; $C23428
    db $FF,$70,$FF,$38,$FF,$71,$FE,$23,$FE,$41,$18,$85,$8F,$6F,$67,$0F ; $C23438
    db $19,$AE,$58,$25,$1E,$31,$0F,$8F,$2F,$7F,$0F,$72,$F7,$1F,$F6,$3F ; $C23448
    db $F4,$5E,$F7,$BB,$F4,$EE,$F7,$0B,$F4,$0F,$F6,$5C,$5E,$5C,$7C,$58 ; $C23458
    db $C2,$03,$7D,$D8,$7E,$80,$03,$7C,$4C,$FB,$4C,$B3,$09,$58,$FF,$4C ; $C23468
    db $F3,$30,$03,$AD,$BF,$77,$FF,$00,$37,$7F,$37,$D7,$3F,$1F,$3F,$DF ; $C23478
    db $A0,$03,$32,$CF,$32,$18,$DF,$22,$DF,$85,$42,$FF,$0C,$0A,$F7,$4A ; $C23488
    db $F7,$03,$D9,$09,$7E,$DC,$7C,$DD,$0E,$03,$7E,$DE,$A8,$A3,$48,$FF ; $C23498
    db $0C,$AC,$7D,$04,$A8,$9F,$3A,$21,$FF,$DF,$99,$01,$01,$01,$9E,$3F ; $C234A8
    db $FC,$FF,$4A,$F7,$30,$01,$FF,$4B,$FE,$C3,$C5,$CC,$FB,$F7,$E2,$03 ; $C234B8
    db $0B,$2F,$9B,$71,$75,$9E,$7D,$97,$6C,$97,$61,$9F,$67,$9C,$6F,$BA ; $C234C8
    db $1C,$F3,$38,$E7,$93,$17,$01,$01,$F0,$FD,$80,$F9,$00,$A3,$D7,$AF ; $C234D8
    db $00,$F0,$BF,$E8,$7C,$C3,$EC,$3B,$F0,$4B,$2F,$91,$57,$F0,$FF,$FA ; $C234E8
    db $DC,$8E,$4D,$E8,$FF,$F2,$0C,$03,$D5,$FF,$EA,$0F,$8F,$77,$FA,$A1 ; $C234F8
    db $A5,$E8,$17,$F2,$0D,$83,$03,$D5,$2A,$EA,$15,$E5,$06,$B5,$40,$F2 ; $C23508
    db $07,$C5,$40,$03,$BF,$C7,$E3,$B7,$F3,$5B,$A1,$B1,$15,$53,$EB,$80 ; $C23518
    db $03,$C1,$FE,$B1,$6E,$59,$A6,$C4,$BF,$15,$EA,$A8,$3F,$8A,$53,$B3 ; $C23528
    db $E1,$62,$01,$09,$A1,$F3,$29,$B3,$00,$E1,$1E,$01,$FE,$E1,$7E,$E1 ; $C23538
    db $3E,$D8,$09,$0D,$00,$FF,$F0,$16,$01,$5F,$FF,$17,$EB,$C4,$68,$A4 ; $C23548
    db $F1,$15,$0F,$01,$A7,$17,$E8,$AF,$50,$05,$FA,$B4,$59,$61,$1E,$0F ; $C23558
    db $7F,$07,$01,$8A,$70,$B3,$01,$70,$EF,$78,$60,$EF,$03,$58,$BF,$54 ; $C23568
    db $AF,$F9,$08,$2F,$F2,$08,$5F,$3F,$C3,$01,$BF,$1F,$0E,$01,$DF,$0F ; $C23578
    db $DF,$8B,$DD,$87,$FF,$4D,$FF,$66,$FF,$27,$DD,$03,$FC,$53,$FC,$03 ; $C23588
    db $D3,$01,$9E,$9D,$08,$F5,$9D,$1D,$50,$20,$9D,$2A,$FF,$57,$FF,$BF ; $C23598
    db $60,$FC,$C0,$F5,$8A,$EA,$15,$79,$50,$15,$5F,$05,$CA,$2B,$A7,$B5 ; $C235A8
    db $89,$00,$FE,$8C,$03,$0D,$F7,$01,$0C,$E0,$01,$14,$FF,$AC,$04,$FF ; $C235B8
    db $5C,$FB,$BC,$F3,$80,$35,$F4,$FF,$A9,$FC,$42,$0D,$FC,$33,$DF,$3C ; $C235C8
    db $5B,$05,$68,$A8,$C3,$F4,$0B,$A8,$57,$41,$BF,$12,$EF,$2C,$F3,$FA ; $C235D8
    db $FC,$00,$01,$AB,$FC,$50,$FD,$09,$F8,$C0,$22,$FB,$E0,$E0,$C9,$AF ; $C235E8
    db $FC,$57,$AC,$57,$C0,$D7,$08,$F7,$42,$BF,$64,$EE,$4E,$55,$03,$E3 ; $C235F8
    db $E4,$FE,$BF,$3F,$F6,$01,$FF,$B5,$EB,$0E,$FF,$FB,$24,$D2,$99,$C2 ; $C23608
    db $AB,$30,$B9,$FC,$BB,$BD,$30,$01,$FE,$30,$CF,$08,$0C,$FB,$06,$FD ; $C23618
    db $AC,$F9,$93,$01,$72,$37,$00,$32,$05,$1A,$BD,$6F,$8F,$73,$59,$7D ; $C23628
    db $AB,$08,$96,$DD,$5A,$ED,$74,$33,$00,$3F,$FE,$FD,$FE,$F8,$FC,$D3 ; $C23638
    db $FC,$38,$A1,$F8,$39,$FD,$80,$BB,$7E,$FB,$F8,$03,$A7,$D0,$2F,$A0 ; $C23648
    db $5F,$11,$80,$F2,$E8,$F7,$30,$07,$D0,$07,$FF,$E0,$05,$00,$3F,$52 ; $C23658
    db $8F,$EE,$C0,$0F,$D7,$68,$37,$C8,$D6,$0E,$29,$E5,$1A,$3F,$F5,$EE ; $C23668
    db $E0,$C8,$1F,$01,$87,$15,$FF,$3D,$FC,$06,$E0,$8C,$07,$F4,$1F,$0C ; $C23678
    db $FA,$60,$05,$03,$95,$6A,$F8,$0F,$25,$E6,$19,$55,$CF,$55,$7B,$F7 ; $C23688
    db $6E,$8E,$99,$FF,$AA,$55,$18,$01,$5A,$A5,$0A,$2A,$D5,$1D,$85,$7A ; $C23698
    db $FF,$74,$6D,$00,$A9,$8F,$4B,$FE,$00,$55,$E7,$98,$09,$F6,$57,$A8 ; $C236A8
    db $AF,$18,$50,$FE,$01,$E2,$5F,$A0,$C1,$BB,$6F,$98,$FC,$0B,$80,$01 ; $C236B8
    db $EF,$1F,$BB,$7C,$BC,$7F,$60,$BE,$C6,$8C,$7B,$84,$7F,$EF,$00,$7C ; $C236C8
    db $B1,$4F,$E5,$3A,$F7,$28,$EE,$78,$48,$7F,$01,$38,$FF,$7C,$06,$FD ; $C236D8
    db $38,$7E,$0F,$89,$FA,$40,$BF,$44,$C7,$38,$0D,$83,$FF,$C6,$39,$47 ; $C236E8
    db $D7,$97,$5C,$7F,$30,$B8,$78,$BB,$7B,$3A,$FB,$0F,$FF,$0F,$FC,$07 ; $C236F8
    db $FD,$01,$F4,$2B,$F8,$B8,$60,$2F,$FB,$2C,$6A,$BD,$8C,$FB,$6B,$F4 ; $C23708
    db $37,$FC,$77,$FA,$FF,$03,$3F,$FF,$EE,$B0,$A7,$FD,$2A,$3F,$AA,$FF ; $C23718
    db $71,$D4,$3C,$03,$DF,$0E,$0D,$A9,$56,$3D,$F2,$DD,$87,$A6,$D4,$2B ; $C23728
    db $FF,$8F,$07,$FF,$80,$FF,$06,$3C,$FF,$FF,$07,$FF,$0A,$7A,$FF,$46 ; $C23738
    db $FF,$09,$5F,$61,$0E,$46,$00,$17,$FF,$A7,$06,$10,$00,$6F,$90,$03 ; $C23748
    db $75,$F8,$03,$1A,$97,$69,$FC,$87,$AC,$DA,$67,$5A,$6A,$C3,$B9,$E7 ; $C23758
    db $FA,$C7,$EE,$5F,$EE,$DF,$CE,$7F,$3D,$E3,$DF,$63,$DF,$23,$DD,$63 ; $C23768
    db $2D,$D3,$F9,$47,$3D,$C7,$FD,$47,$2E,$3F,$58,$61,$03,$01,$7F,$0F ; $C23778
    db $80,$00,$D0,$00,$A0,$C0,$03,$FF,$3E,$C1,$80,$04,$7F,$73,$8C,$8F ; $C23788
    db $70,$6C,$DD,$03,$EE,$3B,$FF,$76,$9C,$39,$00,$BF,$EA,$30,$6C,$53 ; $C23798
    db $78,$FF,$3C,$B8,$F5,$E7,$BD,$67,$B0,$6F,$3E,$E7,$4B,$BE,$DE,$3D ; $C237A8
    db $DB,$37,$DD,$77,$37,$23,$B3,$2D,$FF,$25,$8E,$03,$A5,$90,$37,$AD ; $C237B8
    db $FF,$7F,$EE,$C2,$6E,$3D,$F6,$67,$E1,$DF,$2D,$D6,$A7,$5F,$4D,$B6 ; $C237C8
    db $AF,$5F,$59,$FF,$4B,$30,$01,$EB,$EF,$EF,$EB,$80,$81,$F9,$E6,$5F ; $C237D8
    db $FC,$EB,$F6,$5F,$60,$FD,$03,$AB,$FD,$6F,$D3,$75,$4F,$A3,$25,$BD ; $C237E8
    db $FF,$DE,$B7,$5D,$52,$17,$F7,$00,$F2,$FF,$F7,$FE,$5F,$B7,$BF,$4F ; $C237F8
    db $3B,$DF,$37,$97,$AA,$DF,$18,$72,$DF,$1B,$CC,$EF,$12,$CE,$E9,$CC ; $C23808
    db $A7,$55,$80,$10,$3C,$FF,$4F,$BF,$CF,$C0,$20,$BF,$FE,$FB,$7F,$F5 ; $C23818
    db $1C,$DE,$FB,$DC,$24,$74,$2F,$00,$B7,$63,$FF,$33,$EF,$E9,$F7,$D2 ; $C23828
    db $0C,$3F,$A2,$5F,$80,$0F,$D5,$1D,$BE,$EB,$7E,$49,$2F,$DE,$7F,$29 ; $C23838
    db $59,$03,$E6,$FF,$58,$BF,$AA,$5D,$04,$D5,$B8,$FF,$60,$DF,$48,$11 ; $C23848
    db $9F,$FF,$F7,$F9,$05,$AF,$55,$40,$8E,$C7,$E0,$C3,$79,$89,$FF,$D9 ; $C23858
    db $AF,$AC,$24,$00,$4B,$4F,$FF,$9D,$29,$07,$CC,$FF,$06,$50,$E7,$0E ; $C23868
    db $03,$FF,$23,$FF,$A1,$7F,$C9,$24,$3D,$EF,$1F,$4E,$FD,$AE,$13,$F0 ; $C23878
    db $8C,$59,$29,$AF,$47,$DF,$C1,$AF,$0A,$F7,$01,$FF,$21,$8C,$CD,$EB ; $C23888
    db $8F,$1C,$FE,$75,$F6,$8A,$2D,$FD,$0E,$21,$08,$F7,$45,$61,$48,$0F ; $C23898
    db $1E,$F7,$36,$C7,$55,$FE,$52,$C5,$5E,$01,$BF,$FB,$AF,$FA,$EF,$FE ; $C238A8
    db $FD,$83,$5B,$9F,$F4,$3E,$F7,$03,$EA,$F9,$E7,$A4,$7B,$38,$80,$1B ; $C238B8
    db $FA,$FD,$10,$FF,$1A,$11,$F7,$FC,$FF,$E3,$72,$CF,$AD,$5F,$71,$9F ; $C238C8
    db $07,$EF,$D8,$08,$A6,$DF,$70,$9F,$C5,$D3,$EF,$CE,$13,$79,$A3,$55 ; $C238D8
    db $A4,$8A,$FF,$73,$00,$FC,$3E,$FD,$7F,$FE,$FB,$FE,$C7,$E4,$A1,$B9 ; $C238E8
    db $6F,$74,$01,$02,$57,$07,$FF,$0D,$FB,$08,$11,$0B,$C8,$41,$FE,$0A ; $C238F8
    db $F5,$0D,$07,$F8,$0F,$F7,$01,$6A,$A8,$8B,$A4,$03,$F8,$FA,$01,$90 ; $C23908
    db $9B,$A4,$5B,$03,$15,$F8,$F7,$4C,$40,$69,$9B,$F7,$32,$0E,$FF,$E8 ; $C23918
    db $DF,$C0,$00,$75,$4F,$B7,$1E,$E7,$3F,$DF,$9D,$6A,$7F,$03,$BD,$16 ; $C23928
    db $74,$53,$7C,$9F,$75,$1A,$83,$51,$06,$FB,$26,$80,$10,$7C,$E3,$78 ; $C23938
    db $F7,$EC,$11,$F3,$EA,$FD,$5C,$55,$03,$C7,$41,$FC,$4B,$82,$C3,$7F ; $C23948
    db $83,$FF,$05,$1D,$8F,$FE,$55,$FA,$18,$0F,$7D,$7F,$83,$7C,$03,$27 ; $C23958
    db $DB,$8F,$77,$5F,$AF,$BC,$25,$EC,$63,$E9,$0A,$FF,$34,$FF,$BA,$CE ; $C23968
    db $A9,$02,$A8,$59,$40,$BF,$E9,$01,$56,$F4,$CB,$FA,$E5,$CF,$FE,$9D ; $C23978
    db $64,$AC,$F7,$25,$E4,$67,$9B,$C0,$00,$67,$E0,$FF,$F6,$CD,$BF,$5F ; $C23988
    db $3A,$5F,$BF,$C5,$74,$BF,$57,$96,$86,$81,$13,$EF,$D7,$15,$13,$FD ; $C23998
    db $01,$4E,$4B,$05,$77,$98,$A9,$62,$FD,$D6,$CB,$59,$83,$C7,$C6,$26 ; $C239A8
    db $2F,$9B,$03,$FF,$0E,$FE,$06,$FE,$BE,$60,$03,$0F,$BC,$7F,$B4,$2F ; $C239B8
    db $63,$DF,$AB,$0E,$F3,$03,$03,$BE,$4F,$06,$F9,$FA,$A8,$9F,$00,$06 ; $C239C8
    db $8F,$12,$07,$23,$0F,$43,$0F,$30,$87,$1F,$EB,$BA,$FD,$1E,$38,$FB ; $C239D8
    db $06,$A3,$13,$00,$FF,$22,$FF,$46,$FB,$1D,$E7,$01,$FE,$06,$8F,$0F ; $C239E8
    db $E8,$01,$FE,$06,$EE,$1F,$00,$78,$2E,$04,$0F,$2B,$83,$1E,$FE,$2E ; $C239F8
    db $D1,$04,$1F,$07,$BE,$A1,$A5,$BF,$A5,$40,$F7,$AB,$E7,$F3,$18,$E7 ; $C23A08
    db $E7,$FF,$B6,$A0,$7F,$30,$A5,$7A,$01,$AD,$7E,$A3,$01,$7E,$29,$FE ; $C23A18
    db $E5,$FF,$B3,$5E,$04,$A3,$F5,$73,$2D,$DD,$3D,$B8,$71,$80,$F5,$50 ; $C23A28
    db $FF,$AE,$5F,$9F,$7A,$B5,$EA,$C0,$BF,$0F,$95,$87,$03,$50,$AF,$54 ; $C23A38
    db $0F,$19,$20,$FF,$01,$00,$75,$DB,$54,$AB,$80,$7F,$20,$DF,$FF,$0A ; $C23A48
    db $AA,$07,$D0,$A7,$1B,$00,$AB,$92,$01,$0F,$AF,$E7,$7F,$04,$00,$BA ; $C23A58
    db $EF,$0D,$FF,$60,$F7,$00,$FA,$00,$6D,$CE,$03,$0E,$A8,$3E,$0D,$FA ; $C23A68
    db $08,$79,$F7,$02,$BF,$BF,$2F,$83,$39,$55,$00,$8A,$00,$05,$62,$3F ; $C23A78
    db $1F,$BF,$40,$5F,$39,$91,$01,$55,$3B,$66,$83,$01,$07,$D0,$55,$AA ; $C23A88
    db $A8,$57,$A8,$04,$77,$3B,$D5,$F3,$01,$0F,$2F,$D0,$04,$3B,$01,$72 ; $C23A98
    db $CF,$00,$5C,$0E,$85,$28,$FF,$54,$E8,$EF,$07,$FC,$86,$14,$FF,$71 ; $C23AA8
    db $8F,$0F,$61,$D7,$CB,$2A,$D5,$FF,$54,$58,$5F,$2D,$90,$E0,$C5,$3A ; $C23AB8
    db $E5,$D0,$78,$2F,$01,$0F,$6F,$51,$E7,$05,$87,$03,$81,$82,$51,$AE ; $C23AC8
    db $1F,$0F,$57,$18,$47,$15,$FC,$03,$BF,$7F,$1F,$1D,$3F,$01,$1F,$77 ; $C23AD8
    db $79,$1F,$00,$01,$0F,$00,$07,$1F,$F5,$1F,$7E,$E0,$04,$C3,$20,$0F ; $C23AE8
    db $7F,$01,$FF,$E4,$99,$81,$0F,$09,$F6,$0B,$F7,$85,$03,$87,$FC,$2A ; $C23AF8
    db $8A,$D3,$01,$E3,$F6,$DE,$02,$00,$0A,$63,$83,$5B,$0B,$71,$59,$29 ; $C23B08
    db $01,$E7,$0A,$1F,$FF,$62,$D7,$00,$F5,$5F,$ED,$A2,$8F,$FC,$D4,$AA ; $C23B18
    db $33,$05,$46,$0B,$FE,$FF,$A1,$05,$E2,$CF,$AA,$77,$E1,$25,$FE,$01 ; $C23B28
    db $40,$F3,$AA,$55,$50,$7B,$AF,$22,$E5,$C5,$12,$01,$55,$00,$C2,$0A ; $C23B38
    db $C0,$85,$E0,$82,$F0,$C1,$FC,$80,$FE,$D0,$FE,$54,$98,$D3,$80,$7F ; $C23B48
    db $01,$C0,$3F,$44,$80,$70,$23,$1F,$AA,$00,$F7,$04,$03,$9D,$08,$3F ; $C23B58
    db $D4,$2E,$75,$D4,$97,$7B,$D2,$52,$FF,$D0,$80,$0B,$AB,$E0,$9F,$C0 ; $C23B68
    db $03,$F8,$87,$D2,$AD,$E8,$6D,$97,$3F,$0B,$80,$33,$2A,$C0,$05,$E0 ; $C23B78
    db $02,$F8,$07,$81,$FC,$00,$FC,$00,$E9,$03,$57,$45,$7D,$63,$7F,$7F ; $C23B88
    db $01,$18,$6B,$3F,$40,$03,$1F,$40,$3F,$0F,$A0,$29,$1E,$7F,$54,$01 ; $C23B98
    db $16,$9F,$E0,$01,$7F,$40,$1F,$02,$A0,$0B,$50,$07,$A8,$01,$1E,$2B ; $C23BA8
    db $09,$1D,$F3,$05,$00,$08,$D7,$07,$1F,$1C,$08,$FF,$18,$04,$02,$3E ; $C23BB8
    db $46,$3B,$0E,$FF,$30,$DE,$70,$F8,$00,$70,$1E,$1C,$0E,$FF,$3A,$FF ; $C23BC8
    db $6C,$B8,$6B,$60,$FF,$50,$40,$EF,$21,$50,$2E,$0C,$04,$7B,$A2,$5F ; $C23BD8
    db $1F,$7C,$68,$7E,$1A,$0E,$41,$5E,$FF,$36,$C1,$B3,$B2,$FD,$4C,$BB ; $C23BE8
    db $60,$5F,$04,$08,$10,$B8,$75,$2E,$20,$5F,$4A,$37,$06,$7F,$3C,$3F ; $C23BF8
    db $00,$1E,$00,$80,$1F,$1E,$FF,$72,$FF,$5C,$E2,$45,$30,$00,$61,$10 ; $C23C08
    db $60,$1C,$40,$BE,$06,$94,$6E,$0C,$FE,$78,$41,$67,$3C,$2D,$18,$75 ; $C23C18
    db $11,$F4,$DD,$6D,$1E,$D8,$FF,$60,$01,$9F,$24,$08,$04,$65,$41,$4E ; $C23C28
    db $65,$FF,$07,$41,$7E,$04,$65,$EE,$FF,$F2,$29,$65,$00,$D0,$58,$03 ; $C23C38
    db $EF,$1C,$3F,$03,$08,$9F,$B1,$11,$E5,$3D,$56,$9B,$80,$95,$00,$80 ; $C23C48
    db $40,$C0,$C0,$04,$60,$C0,$E0,$00,$C0,$F4,$7D,$75,$B7,$FF,$1E,$87 ; $C23C58
    db $1F,$00,$72,$6F,$18,$D0,$04,$FF,$02,$7D,$FF,$06,$07,$FF,$00,$BF ; $C23C68
    db $D0,$06,$FF,$B5,$7D,$FF,$06,$00,$FF,$3F,$7F,$0E,$F8,$8F,$19,$1B ; $C23C78
    db $FA,$FB,$16,$5F,$54,$0B,$FF,$74,$AB,$CA,$87,$FD,$0F,$F8,$FA,$FD ; $C23C88
    db $FC,$AB,$5B,$A4,$77,$FC,$F7,$D0,$19,$FF,$00,$1F,$FE,$EF,$10,$04 ; $C23C98
    db $43,$7F,$AE,$E8,$07,$7F,$3E,$00,$BC,$02,$86,$7F,$CE,$F3,$16,$7F ; $C23CA8
    db $A0,$FF,$A0,$7F,$FD,$4F,$FA,$1C,$07,$7F,$FE,$FF,$78,$47,$95,$D0 ; $C23CB8
    db $02,$7F,$22,$07,$FD,$B9,$67,$A0,$7F,$D1,$02,$7F,$DE,$8E,$2B,$F8 ; $C23CC8
    db $0C,$FA,$A4,$BD,$F8,$08,$18,$FB,$08,$FA,$03,$34,$FF,$06,$5B,$F4 ; $C23CD8
    db $3E,$F9,$13,$55,$01,$F8,$1B,$FC,$3A,$FD,$1B,$F4,$54,$9C,$FF,$A0 ; $C23CE8
    db $F8,$05,$08,$02,$D0,$01,$88,$5C,$5F,$36,$FD,$02,$A1,$5E,$F9,$E6 ; $C23CF8
    db $A8,$57,$D2,$2D,$89,$76,$5F,$3F,$02,$05,$FE,$0A,$FC,$0C,$F9,$0E ; $C23D08
    db $41,$0C,$F8,$3F,$3C,$FB,$1F,$61,$FC,$3F,$5D,$FA,$33,$99,$47,$FC ; $C23D18
    db $0B,$EC,$D8,$17,$8B,$7F,$89,$F5,$DA,$00,$3A,$55,$E7,$11,$CB,$34 ; $C23D28
    db $00,$98,$43,$F8,$3B,$7F,$80,$90,$F7,$50,$02,$06,$00,$C0,$FC,$01 ; $C23D38
    db $A8,$07,$3B,$00,$A8,$00,$BF,$17,$E8,$52,$AD,$C0,$3F,$2D,$60,$D2 ; $C23D48
    db $61,$50,$AF,$A9,$56,$E3,$37,$01,$AE,$B5,$5F,$01,$00,$2B,$00,$1F ; $C23D58
    db $03,$AF,$00,$DF,$75,$D7,$37,$0A,$AB,$54,$5F,$A0,$2B,$D4,$1E,$E1 ; $C23D68
    db $AF,$50,$5B,$A4,$71,$40,$5F,$57,$D6,$61,$8A,$09,$01,$F0,$00,$56 ; $C23D78
    db $75,$2F,$46,$32,$AB,$BE,$41,$4A,$22,$31,$CE,$80,$6B,$04,$03,$0F ; $C23D88
    db $C7,$8A,$02,$4B,$CF,$E0,$F0,$03,$17,$BF,$08,$07,$F8,$CC,$33,$1B ; $C23D98
    db $FE,$7F,$CC,$CF,$B0,$F3,$0C,$3A,$3F,$0F,$1C,$2B,$15,$03,$57,$FF ; $C23DA8
    db $72,$07,$FA,$AF,$E1,$57,$C3,$3D,$B5,$4A,$C3,$3C,$FE,$1F,$48,$B7 ; $C23DB8
    db $F0,$D3,$DB,$66,$03,$01,$01,$38,$BF,$12,$FF,$DC,$F7,$92,$C6,$03 ; $C23DC8
    db $D2,$03,$0E,$77,$1A,$F7,$9E,$A1,$F0,$17,$D6,$22,$95,$C0,$91,$5F ; $C23DD8
    db $80,$C0,$1F,$02,$DF,$37,$C8,$A1,$60,$67,$8E,$05,$DF,$20,$C1,$C7 ; $C23DE8
    db $FF,$B8,$7F,$7C,$D9,$83,$FC,$36,$07,$33,$00,$D9,$37,$CE,$33,$D9 ; $C23DF8
    db $7F,$0E,$F3,$1C,$D9,$3F,$CF,$07,$0C,$FF,$7E,$F8,$F7,$01,$F4,$3B ; $C23E08
    db $FB,$49,$AE,$D1,$E0,$84,$95,$B9,$50,$34,$DF,$42,$EF,$AE,$07,$09 ; $C23E18
    db $FF,$3C,$7C,$9F,$ED,$F3,$77,$43,$D8,$BD,$1C,$C7,$FF,$23,$0A,$FE ; $C23E28
    db $DB,$FF,$C2,$A4,$CA,$FC,$FB,$4F,$F3,$90,$2F,$E8,$9F,$D8,$FF,$77 ; $C23E38
    db $81,$A0,$F3,$7D,$FF,$E3,$FF,$D6,$AA,$65,$5F,$48,$85,$BE,$FF,$3D ; $C23E48
    db $C3,$EB,$7F,$E7,$3B,$01,$48,$64,$FF,$CE,$F7,$DF,$E7,$1D,$C9,$6E ; $C23E58
    db $75,$37,$A7,$11,$38,$07,$BB,$89,$C3,$CB,$10,$F2,$86,$D5,$EA,$60 ; $C23E68
    db $FF,$E5,$DF,$F7,$CF,$CE,$FF,$F3,$FE,$63,$38,$2F,$F7,$58,$DF,$C6 ; $C23E78
    db $75,$B9,$7F,$37,$76,$FD,$37,$CE,$2B,$FB,$A4,$9B,$F5,$FF,$18,$11 ; $C23E88
    db $FF,$1B,$10,$FF,$CB,$18,$FF,$D7,$EB,$26,$72,$FF,$74,$3E,$B8,$79 ; $C23E98
    db $EE,$F1,$3F,$E1,$47,$DD,$FE,$18,$5F,$FA,$7F,$1A,$B5,$7E,$E2,$1D ; $C23EA8
    db $2E,$C9,$FF,$60,$97,$15,$F6,$DF,$FD,$DF,$EA,$70,$15,$A5,$FE,$BD ; $C23EB8
    db $35,$E3,$41,$5F,$8E,$B7,$15,$F0,$83,$D1,$AF,$1B,$5A,$FF,$10,$6D ; $C23EC8
    db $0E,$11,$AE,$FD,$FB,$DB,$AA,$04,$75,$1F,$F2,$D3,$A5,$F9,$2C,$BB ; $C23ED8
    db $41,$FB,$B1,$AA,$D9,$36,$E9,$C7,$E9,$A7,$64,$CD,$F1,$00,$0E,$55 ; $C23EE8
    db $AA,$7F,$AF,$7F,$C7,$C8,$6D,$F7,$CA,$0E,$D5,$8C,$3D,$2D,$3F,$00 ; $C23EF8
    db $FE,$9A,$FD,$E3,$FC,$FE,$A9,$D5,$3B,$AA,$5A,$0A,$95,$02,$FD,$D5 ; $C23F08
    db $B8,$1B,$42,$FD,$0C,$EA,$4E,$47,$00,$F5,$B9,$2A,$7F,$2A,$D2,$6F ; $C23F18
    db $5F,$EC,$D5,$82,$AB,$B8,$63,$50,$55,$15,$9D,$03,$03,$00,$AF,$40 ; $C23F28
    db $8E,$05,$9F,$39,$9D,$C0,$07,$1F,$57,$75,$38,$98,$73,$13,$24,$DF ; $C23F38
    db $1C,$7D,$FE,$1F,$79,$75,$03,$32,$0B,$F0,$0B,$43,$FF,$00,$1D,$EF ; $C23F48
    db $06,$F9,$03,$FD,$6E,$BF,$C2,$7F,$4E,$F7,$7D,$A9,$2F,$75,$D0,$85 ; $C23F58
    db $01,$FA,$FD,$C2,$7F,$FC,$BE,$FD,$85,$FE,$BA,$FD,$7D,$C2,$D0,$AF ; $C23F68
    db $2C,$05,$F3,$05,$01,$EA,$FA,$17,$6F,$37,$F3,$08,$11,$1D,$80,$81 ; $C23F78
    db $0E,$F9,$5D,$BB,$3B,$AB,$5C,$35,$15,$03,$76,$27,$BF,$76,$77,$61 ; $C23F88
    db $60,$99,$0B,$CB,$15,$EA,$9C,$8B,$78,$F4,$1B,$2F,$E0,$CF,$BF,$DF ; $C23F98
    db $FC,$EB,$00,$B1,$70,$FF,$33,$FF,$47,$FE,$0C,$F7,$FD,$F7,$FE,$25 ; $C23FA8
    db $AF,$EA,$FD,$AF,$05,$23,$81,$D1,$02,$FD,$E9,$06,$81,$77,$F8,$AE ; $C23FB8
    db $25,$2F,$C6,$25,$04,$FB,$CD,$C0,$DF,$0C,$7F,$DF,$3F,$5F,$0E,$AF ; $C23FC8
    db $2E,$DF,$07,$3A,$EB,$0F,$E5,$47,$0C,$FB,$5C,$3C,$04,$00,$18,$0A ; $C23FD8
    db $00,$24,$07,$08,$04,$8B,$BB,$9F,$01,$3A,$AF,$0A,$C5,$AF,$01,$5E ; $C23FE8
    db $A9,$2F,$3C,$2B,$A5,$C1,$6A,$7A,$C1,$BB,$7F,$3E,$AE,$81,$7C,$E0 ; $C23FF8
    db $01,$30,$FF,$16,$01,$1B,$0E,$1F,$00,$0E,$00,$10,$C7,$43,$2A,$52 ; $C24008
    db $1F,$10,$6E,$1C,$3B,$E5,$6D,$10,$C7,$43,$2A,$7F,$D1,$62,$07,$51 ; $C24018
    db $08,$00,$2E,$BD,$B2,$95,$D1,$BD,$1C,$D7,$53,$7E,$12,$01,$FE,$BD ; $C24028
    db $BD,$BE,$5F,$05,$06,$54,$0A,$A8,$05,$50,$03,$B7,$F8,$FB,$81,$04 ; $C24038
    db $E2,$29,$14,$00,$1F,$04,$55,$0A,$AA,$44,$07,$55,$A0,$2A,$50,$15 ; $C24048
    db $14,$03,$00,$9D,$1D,$44,$FF,$A0,$9C,$D7,$20,$03,$C0,$37,$AA,$15 ; $C24058
    db $45,$2A,$82,$60,$55,$03,$AA,$50,$55,$28,$CE,$4B,$0A,$CE,$43,$2A ; $C24068
    db $A5,$95,$2A,$C4,$1B,$28,$7C,$DF,$A0,$AA,$1C,$40,$55,$80,$03,$9F ; $C24078
    db $D2,$1F,$A0,$BF,$F9,$F7,$05,$FF,$BA,$83,$5C,$04,$58,$BE,$D4,$6E ; $C24088
    db $2C,$77,$83,$9D,$13,$D0,$83,$BF,$FC,$E7,$F8,$23,$BF,$F8,$B5,$83 ; $C24098
    db $D2,$7F,$06,$1E,$64,$E7,$00,$84,$FF,$1E,$F9,$9C,$E7,$01,$30,$3C ; $C240A8
    db $01,$16,$05,$09,$0F,$00,$16,$0B,$09,$1F,$0F,$0F,$00,$03,$8C,$3F ; $C240B8
    db $0F,$00,$FB,$0F,$F6,$1F,$FD,$1E,$F7,$09,$48,$F7,$5F,$80,$01,$C0 ; $C240C8
    db $80,$60,$40,$E0,$C0,$E0,$88,$07,$00,$80,$11,$33,$C0,$7F,$C1,$29 ; $C240D8
    db $40,$BF,$14,$60,$03,$7B,$20,$5C,$08,$F6,$28,$D4,$3E,$7B,$3C,$30 ; $C240E8
    db $02,$01,$7B,$74,$FF,$BC,$14,$FF,$F8,$EF,$7B,$E8,$8F,$FA,$07,$7F ; $C240F8
    db $5D,$0A,$E0,$BF,$07,$01,$06,$03,$07,$E4,$77,$CE,$00,$06,$3C,$33 ; $C24108
    db $02,$03,$1F,$80,$B8,$F5,$80,$84,$C2,$81,$CF,$03,$8D,$2B,$17,$02 ; $C24118
    db $7F,$46,$7B,$2E,$7F,$80,$A0,$EB,$8D,$7F,$0E,$FF,$3D,$3B,$FE,$7A ; $C24128
    db $E1,$81,$2A,$FD,$CA,$0C,$87,$01,$CF,$0C,$EF,$00,$03,$6F,$0C,$AE ; $C24138
    db $0C,$4F,$0C,$77,$19,$23,$23,$1C,$FB,$1C,$B3,$B9,$90,$BE,$A3,$BC ; $C24148
    db $0E,$F3,$3B,$67,$7B,$00,$01,$73,$67,$33,$7F,$3F,$3F,$0F,$18,$1F ; $C24158
    db $5F,$0F,$5D,$43,$BD,$70,$42,$01,$32,$FF,$18,$3E,$DB,$0A,$E9,$F7 ; $C24168
    db $A2,$EA,$4E,$D8,$48,$06,$08,$00,$0E,$0E,$0F,$3A,$01,$50,$00,$71 ; $C24178
    db $B0,$FF,$F6,$FB,$F6,$FF,$20,$FE,$F7,$01,$9F,$B9,$77,$0F,$6F,$0F ; $C24188
    db $8F,$0F,$4E,$0F,$87,$0F,$76,$0F,$B7,$07,$53,$03,$2F,$F7,$1F,$F6 ; $C24198
    db $3F,$23,$B7,$77,$FC,$06,$AC,$EB,$00,$03,$FE,$18,$DE,$1D,$7C,$38 ; $C241A8
    db $FE,$30,$1C,$FD,$03,$14,$FF,$28,$E0,$03,$08,$FF,$0C,$0E,$F3,$38 ; $C241B8
    db $D7,$1C,$0E,$03,$14,$EB,$28,$00,$03,$07,$07,$7F,$07,$97,$07,$BF ; $C241C8
    db $DD,$7C,$C4,$CB,$30,$03,$35,$86,$FF,$66,$01,$BF,$7E,$DF,$7E,$F7 ; $C241D8
    db $3E,$EB,$C1,$03,$E3,$08,$FE,$56,$98,$B9,$EF,$40,$03,$D5,$41,$16 ; $C241E8
    db $EB,$41,$C1,$B6,$B9,$3E,$DB,$41,$1D,$BE,$41,$BF,$CB,$34,$3F,$39 ; $C241F8
    db $03,$BF,$03,$C6,$00,$7F,$00,$DE,$31,$01,$01,$2E,$F3,$22,$1D,$FF ; $C24208
    db $42,$FF,$1E,$F1,$1B,$FF,$05,$FB,$1D,$F3,$13,$56,$CD,$FE,$B7,$9F ; $C24218
    db $8A,$BF,$FE,$F0,$9B,$1F,$F7,$0E,$DF,$63,$3F,$C0,$D8,$32,$5E,$10 ; $C24228
    db $DF,$00,$E0,$BF,$C0,$36,$C9,$7F,$F8,$FF,$FF,$01,$20,$E1,$00,$DF ; $C24238
    db $2E,$FF,$FB,$1D,$F7,$E8,$F7,$FA,$E5,$DA,$E5,$BE,$C1,$42,$BD,$38 ; $C24248
    db $50,$1D,$DB,$67,$BA,$65,$0C,$BB,$C4,$7E,$81,$33,$E6,$00,$19,$BF ; $C24258
    db $58,$C6,$79,$E7,$F9,$C6,$EC,$EB,$78,$EA,$BA,$3D,$70,$E8,$DF,$71 ; $C24268
    db $75,$37,$41,$5E,$5F,$BF,$E7,$3F,$5F,$D7,$6A,$EE,$7F,$AB,$01,$18 ; $C24278
    db $AA,$BF,$40,$69,$F7,$88,$FF,$05,$65,$5C,$7F,$E0,$04,$A5,$CA,$80 ; $C24288
    db $E2,$08,$1E,$1F,$F0,$E1,$FE,$21,$FF,$20,$F3,$FC,$DB,$E4,$7D,$C6 ; $C24298
    db $77,$C8,$CF,$B4,$05,$3B,$00,$6F,$A1,$95,$FF,$80,$8F,$70,$E5,$12 ; $C242A8
    db $3F,$55,$C7,$00,$A9,$00,$55,$01,$A2,$01,$46,$02,$AA,$02,$45,$1D ; $C242B8
    db $AF,$0F,$00,$AA,$2B,$01,$03,$FF,$1C,$EF,$1A,$FD,$03,$AD,$81,$3A ; $C242C8
    db $0C,$F7,$C7,$BF,$00,$4C,$3F,$01,$03,$C0,$95,$C0,$8A,$C0,$F1,$03 ; $C242D8
    db $59,$56,$18,$C5,$50,$03,$1B,$45,$00,$3E,$92,$18,$04,$C1,$7F,$20 ; $C242E8
    db $DF,$10,$FC,$02,$24,$FF,$80,$17,$03,$61,$00,$9A,$0C,$55,$18,$EC ; $C242F8
    db $02,$7F,$14,$10,$EF,$28,$25,$C5,$1B,$BE,$00,$C2,$77,$07,$E8,$1C ; $C24308
    db $50,$10,$E0,$30,$60,$20,$A0,$20,$03,$1B,$07,$FE,$08,$A1,$7F,$20 ; $C24318
    db $05,$01,$DF,$18,$57,$80,$83,$35,$00,$83,$03,$6A,$E0,$09,$FF,$40 ; $C24328
    db $20,$75,$A1,$1F,$1C,$12,$64,$FF,$00,$33,$D9,$38,$A6,$30,$6D,$20 ; $C24338
    db $52,$96,$1F,$24,$FD,$18,$F7,$85,$59,$72,$F3,$FF,$FA,$12,$1D,$FF ; $C24348
    db $5B,$43,$FF,$5B,$E8,$19,$FF,$C5,$39,$0D,$EE,$D3,$3A,$8C,$FC,$09 ; $C24358
    db $6F,$EF,$9F,$88,$6C,$1B,$38,$7F,$7C,$F3,$AF,$F4,$8E,$F9,$0D,$FA ; $C24368
    db $63,$9F,$8B,$7C,$0C,$FB,$3C,$CB,$E8,$1B,$FF,$FA,$15,$0F,$7F,$F8 ; $C24378
    db $FF,$04,$00,$01,$38,$BF,$1A,$F7,$D8,$F7,$9A,$E3,$03,$DA,$75,$03 ; $C24388
    db $0F,$7F,$99,$17,$A0,$7F,$EF,$10,$8A,$30,$7F,$77,$70,$F8,$F0,$01 ; $C24398
    db $FC,$B0,$7A,$70,$FC,$78,$FE,$14,$17,$7F,$DF,$3C,$0D,$D0,$6F,$14 ; $C243A8
    db $EF,$D2,$2F,$D4,$2F,$DA,$7F,$63,$1F,$74,$70,$FC,$0B,$EC,$1B,$BF ; $C243B8
    db $7F,$BF,$7C,$BE,$7D,$3E,$7D,$D1,$45,$60,$FF,$B7,$48,$E1,$01,$3F ; $C243C8
    db $FD,$2E,$FF,$2C,$7F,$AC,$4F,$FF,$01,$B0,$FF,$01,$FC,$3E,$FA,$BF ; $C243D8
    db $04,$C0,$FF,$FD,$02,$3D,$7F,$AE,$7C,$D9,$01,$00,$7E,$3F,$F9,$04 ; $C243E8
    db $05,$AE,$91,$FE,$EF,$B9,$72,$BF,$AA,$EE,$D0,$1B,$00,$2E,$FD,$1D ; $C243F8
    db $2F,$D0,$56,$F7,$DA,$05,$F3,$01,$FF,$83,$04,$E8,$F7,$30,$07,$B9 ; $C24408
    db $3B,$0E,$04,$00,$3F,$9F,$E7,$75,$18,$0F,$D7,$68,$C3,$D6,$29,$02 ; $C24418
    db $E4,$1B,$3F,$C0,$9F,$6E,$A9,$DE,$AF,$40,$47,$3D,$7C,$46,$60,$A0 ; $C24428
    db $DF,$71,$0A,$0F,$FA,$C0,$3C,$95,$6A,$78,$8F,$01,$66,$99,$BF,$40 ; $C24438
    db $0F,$FF,$EB,$D7,$ED,$41,$00,$63,$0A,$00,$5F,$FC,$07,$EB,$15,$1D ; $C24448
    db $55,$AA,$E1,$42,$41,$0A,$64,$5F,$FD,$5D,$ED,$FA,$DE,$25,$63,$A8 ; $C24458
    db $70,$3F,$FD,$F2,$47,$BF,$13,$5A,$FF,$F5,$F7,$35,$03,$00,$CF,$30 ; $C24468
    db $79,$F7,$10,$ED,$01,$7F,$00,$B0,$FF,$F7,$28,$67,$BC,$FF,$08,$B5 ; $C24478
    db $A1,$7F,$FC,$FE,$DA,$66,$F6,$04,$89,$7F,$3C,$E3,$DE,$DA,$7F,$F9 ; $C24488
    db $4A,$47,$DA,$7F,$67,$C7,$DF,$51,$DE,$02,$9F,$28,$BA,$4C,$51,$DF ; $C24498
    db $FC,$80,$05,$FE,$00,$54,$B6,$1F,$76,$3D,$1D,$77,$56,$B6,$E9,$C0 ; $C244A8
    db $1F,$77,$CE,$3F,$DF,$35,$1D,$7F,$00,$7F,$EB,$25,$A5,$81,$1E,$15 ; $C244B8
    db $79,$BF,$B6,$8E,$EB,$FA,$55,$AA,$27,$A5,$80,$F5,$A0,$7F,$60,$FC ; $C244C8
    db $C0,$30,$FA,$80,$BD,$C2,$00,$40,$07,$00,$90,$00,$7A,$C0,$74,$F9 ; $C244D8
    db $4A,$FF,$75,$95,$8E,$05,$40,$BB,$A1,$7A,$A8,$D1,$0D,$00,$16,$00 ; $C244E8
    db $4D,$BA,$D9,$5F,$12,$1F,$CB,$01,$AF,$FF,$16,$FF,$4D,$FF,$17,$D9 ; $C244F8
    db $5F,$12,$5C,$F1,$07,$F7,$AA,$D6,$B9,$58,$80,$3D,$99,$07,$15,$05 ; $C24508
    db $F5,$5E,$C7,$49,$DC,$01,$AA,$5D,$EC,$19,$00,$5C,$18,$38,$3C,$22 ; $C24518
    db $38,$22,$30,$02,$20,$1C,$00,$02,$00,$09,$BF,$38,$03,$E7,$28,$DF ; $C24528
    db $30,$DF,$04,$FC,$09,$1F,$C1,$42,$30,$7C,$40,$F2,$F2,$04,$5B,$70 ; $C24538
    db $0E,$CF,$D2,$BF,$03,$00,$78,$0A,$00,$06,$0F,$08,$0E,$08,$09,$0C ; $C24548
    db $01,$08,$07,$C8,$7F,$0E,$F9,$0A,$2A,$F7,$0C,$E6,$89,$81,$C0,$01 ; $C24558
    db $06,$03,$80,$05,$40,$BC,$3F,$1B,$38,$80,$60,$7F,$BD,$59,$EE,$AB ; $C24568
    db $F5,$42,$EE,$65,$60,$78,$7F,$08,$00,$20,$FF,$71,$45,$03,$41,$CC ; $C24578
    db $03,$BB,$22,$EA,$BC,$05,$77,$07,$1F,$88,$31,$FF,$DD,$03,$77,$09 ; $C24588
    db $D4,$E7,$EB,$03,$23,$3C,$23,$08,$00,$02,$E0,$33,$02,$FF,$08,$9F ; $C24598
    db $8F,$BD,$00,$09,$3A,$1F,$22,$C7,$CD,$22,$67,$01,$22,$07,$7B,$20 ; $C245A8
    db $FF,$00,$DC,$03,$5F,$FE,$01,$3C,$FB,$04,$0A,$30,$BC,$B8,$D7,$7F ; $C245B8
    db $7E,$83,$FD,$03,$F7,$0F,$BC,$43,$5E,$E1,$D7,$3F,$FD,$13,$E0,$51 ; $C245C8
    db $1B,$F8,$6D,$9E,$2C,$03,$3B,$F7,$01,$47,$80,$07,$00,$EE,$11,$97 ; $C245D8
    db $F9,$7F,$87,$30,$6F,$9F,$47,$A2,$5F,$E2,$10,$1F,$EC,$1F,$35,$77 ; $C245E8
    db $FC,$54,$67,$E4,$47,$4F,$FC,$00,$5F,$02,$01,$00,$0B,$29,$56,$08 ; $C245F8
    db $12,$77,$1B,$6F,$38,$44,$03,$DD,$7F,$04,$FF,$6D,$FF,$32,$FD,$2E ; $C24608
    db $1D,$15,$40,$00,$80,$70,$60,$98,$10,$F8,$70,$F8,$E0,$F0,$5E,$F3 ; $C24618
    db $B1,$89,$F0,$DD,$4F,$00,$90,$EF,$60,$DF,$38,$7C,$04,$38,$97,$AA ; $C24628
    db $5F,$16,$F4,$5F,$28,$F7,$75,$1C,$2E,$B5,$76,$FA,$BB,$7C,$BD,$5F ; $C24638
    db $25,$00,$E0,$43,$BF,$06,$E8,$06,$BF,$E4,$03,$A8,$BF,$B7,$53,$EF ; $C24648
    db $FC,$44,$08,$0E,$33,$02,$FF,$0B,$0E,$81,$05,$FF,$13,$B9,$1D,$77 ; $C24658
    db $88,$DD,$99,$00,$C8,$77,$F8,$5F,$E0,$FD,$C2,$5F,$1E,$A0,$D7,$38 ; $C24668
    db $08,$DF,$3D,$FD,$FE,$06,$0F,$2F,$65,$77,$64,$95,$3B,$03,$91,$03 ; $C24678
    db $C0,$B7,$C8,$83,$01,$AB,$DC,$DF,$E0,$22,$09,$BF,$BC,$A8,$D9,$93 ; $C24688
    db $03,$FB,$0A,$DF,$FB,$0B,$B0,$CE,$57,$1F,$F8,$F8,$B3,$D8,$FF,$AD ; $C24698
    db $01,$FB,$5D,$FB,$37,$FB,$2B,$F7,$D6,$DC,$63,$6B,$F8,$7E,$F9,$5E ; $C246A8
    db $A9,$AF,$D9,$5E,$B1,$3E,$D1,$3D,$E3,$3B,$C6,$FC,$95,$FB,$F9,$54 ; $C246B8
    db $47,$FB,$FF,$0E,$F3,$FF,$E7,$3F,$E0,$3C,$DF,$FF,$08,$CF,$38,$EF ; $C246C8
    db $DF,$C5,$82,$B0,$3D,$53,$A7,$C2,$EB,$B7,$01,$3C,$A3,$10,$16,$7D ; $C246D8
    db $9A,$0F,$13,$01,$FE,$01,$86,$12,$63,$2A,$AA,$1D,$2B,$8F,$30,$97 ; $C246E8
    db $0F,$EA,$4B,$FA,$84,$F3,$97,$1E,$FD,$66,$8C,$F3,$17,$EA,$03,$FC ; $C246F8
    db $0F,$F0,$EF,$1C,$FF,$08,$7B,$8F,$7F,$FF,$73,$13,$29,$A7,$A3,$55 ; $C24708
    db $0E,$00,$C4,$FF,$DC,$DD,$91,$CE,$59,$0A,$00,$F0,$7F,$F0,$BF,$FC ; $C24718
    db $5B,$FC,$37,$19,$F8,$F6,$FB,$7F,$70,$81,$46,$7F,$EF,$AF,$E3,$C3 ; $C24728
    db $D4,$08,$AC,$FF,$DD,$FD,$38,$2D,$1D,$9F,$CC,$EA,$5D,$D3,$07,$0E ; $C24738
    db $CD,$E1,$F1,$01,$F7,$5C,$2B,$BF,$FD,$3B,$CF,$3F,$91,$5D,$74,$AF ; $C24748
    db $AF,$C7,$AE,$F1,$1C,$01,$FB,$34,$C0,$01,$DF,$DF,$58,$DF,$B7,$0C ; $C24758
    db $FD,$CF,$FE,$FE,$0A,$1F,$08,$30,$FF,$B4,$5F,$00,$94,$FB,$04,$7C ; $C24768
    db $83,$BF,$C2,$C7,$33,$FF,$EF,$24,$E8,$F6,$02,$19,$22,$C1,$00,$F7 ; $C24778
    db $D7,$DD,$22,$FF,$03,$EE,$FC,$03,$3F,$7F,$9E,$C0,$07,$8F,$F0,$0E ; $C24788
    db $FF,$8B,$61,$24,$3E,$F9,$19,$DC,$C9,$57,$00,$94,$83,$EF,$01,$0A ; $C24798
    db $E4,$FB,$03,$FE,$A0,$D9,$60,$BF,$60,$78,$27,$BE,$C1,$F7,$88,$2A ; $C247A8
    db $EF,$9C,$91,$35,$DF,$C7,$C7,$28,$07,$24,$7B,$FB,$7F,$00,$F9,$06 ; $C247B8
    db $C7,$38,$EF,$10,$ED,$12,$3F,$27,$DE,$0A,$3A,$BF,$EB,$C0,$14,$77 ; $C247C8
    db $88,$76,$89,$03,$0C,$F3,$FF,$31,$E7,$39,$D8,$06,$1C,$5E,$DB,$26 ; $C247D8
    db $00,$FD,$03,$ED,$13,$7D,$9F,$BF,$DF,$7D,$DB,$03,$2E,$BB,$E6,$E4 ; $C247E8
    db $3F,$75,$FF,$5C,$2C,$27,$FF,$65,$FB,$5F,$E7,$DE,$E3,$DA,$E7,$36 ; $C247F8
    db $EF,$2F,$EE,$17,$AA,$4F,$7D,$0E,$CB,$DF,$FF,$8A,$AD,$4B,$A0,$17 ; $C24808
    db $FD,$02,$03,$F1,$0E,$FE,$07,$BD,$47,$E0,$14,$3F,$7F,$80,$EA,$F8 ; $C24818
    db $21,$07,$00,$DD,$3F,$01,$F1,$1F,$F0,$1F,$DC,$23,$FE,$BA,$EA,$AF ; $C24828
    db $25,$FE,$09,$AE,$90,$19,$2E,$CD,$F2,$1E,$FB,$8E,$FB,$8F,$1B,$FC ; $C24838
    db $47,$B8,$F7,$18,$FC,$1F,$09,$5E,$E5,$00,$C2,$07,$07,$0E,$11,$17 ; $C24848
    db $38,$33,$4C,$7D,$86,$3B,$C4,$74,$75,$93,$E5,$C1,$E1,$87,$03,$64 ; $C24858
    db $70,$2F,$D8,$FF,$88,$FE,$81,$74,$8F,$FF,$08,$F7,$08,$CE,$7F,$03 ; $C24868
    db $A7,$D3,$C1,$04,$00,$0F,$70,$6F,$90,$80,$97,$3F,$40,$3B,$7C,$76 ; $C24878
    db $89,$C4,$3A,$3F,$C0,$8A,$35,$3F,$40,$3D,$00,$BF,$40,$8A,$0E,$07 ; $C24888
    db $EB,$34,$B0,$5D,$C0,$B7,$75,$48,$9E,$09,$08,$7F,$00,$BB,$13,$EC ; $C24898
    db $B9,$C6,$B8,$C7,$FB,$3B,$0C,$D7,$60,$81,$0E,$80,$FF,$BB,$FF,$1E ; $C248A8
    db $B9,$FF,$FB,$02,$1F,$06,$CE,$C6,$29,$E7,$18,$B9,$02,$BB,$7C,$BB ; $C248B8
    db $44,$7B,$84,$3E,$8B,$C6,$3C,$FF,$E7,$03,$3F,$EF,$7C,$10,$36,$80 ; $C248C8
    db $7F,$00,$1C,$08,$76,$1E,$E3,$FF,$0E,$43,$DB,$64,$F7,$03,$DF,$C7 ; $C248D8
    db $38,$08,$FF,$1C,$BC,$5D,$F2,$03,$1F,$10,$E1,$10,$28,$30,$CC,$3C ; $C248E8
    db $C4,$3E,$C7,$ED,$72,$FD,$42,$A3,$C5,$C7,$5B,$78,$64,$C5,$FE,$5B ; $C248F8
    db $7C,$D2,$05,$FB,$7A,$04,$37,$7F,$00,$00,$70,$60,$90,$E0,$1F,$02 ; $C24908
    db $CE,$31,$FF,$01,$FD,$03,$41,$24,$60,$FF,$E0,$2B,$F7,$DD,$82,$BF ; $C24918
    db $0E,$11,$1F,$E1,$10,$17,$18,$0D,$1E,$07,$78,$3F,$C8,$7F,$80,$1E ; $C24928
    db $D3,$FE,$0E,$01,$B2,$31,$B0,$69,$FA,$07,$E3,$7B,$1C,$04,$83,$EE ; $C24938
    db $07,$0E,$FF,$0C,$3F,$C0,$6F,$F0,$B5,$BF,$FF,$01,$1E,$70,$7F,$07 ; $C24948
    db $1F,$07,$0A,$06,$6B,$03,$54,$58,$A3,$E1,$00,$FC,$C4,$82,$95,$81 ; $C24958
    db $AA,$81,$F2,$3A,$FD,$82,$58,$6A,$01,$7F,$1F,$B8,$3B,$7F,$C1,$E2 ; $C24968
    db $2B,$01,$00,$AA,$E3,$C0,$55,$00,$22,$00,$55,$08,$A6,$08,$0B,$F8 ; $C24978
    db $89,$04,$1E,$EF,$90,$D2,$E9,$C0,$9F,$48,$DF,$70,$FF,$B5,$1B,$55 ; $C24988
    db $F6,$13,$19,$FF,$54,$02,$1F,$D5,$E7,$03,$1F,$80,$CC,$01,$C8,$CB ; $C24998
    db $01,$01,$B6,$23,$37,$04,$3F,$08,$1C,$10,$18,$11,$39,$20,$33,$20 ; $C249A8
    db $3A,$41,$FF,$27,$FC,$0D,$FB,$18,$F7,$10,$EF,$39,$EE,$21,$DF,$38 ; $C249B8
    db $DF,$E0,$F8,$00,$FC,$00,$54,$85,$00,$01,$E0,$03,$80,$11,$00,$13 ; $C249C8
    db $00,$15,$E8,$1F,$54,$42,$BD,$20,$61,$47,$20,$32,$01,$70,$B8,$40 ; $C249D8
    db $10,$0A,$00,$47,$60,$90,$C4,$14,$80,$40,$C4,$A9,$DF,$18,$F9,$7F ; $C249E8
    db $CE,$BB,$02,$67,$25,$B9,$C4,$50,$1F,$BC,$8E,$CE,$86,$93,$1F,$02 ; $C249F8
    db $FF,$F5,$04,$B2,$CB,$AE,$FD,$57,$EC,$7D,$C6,$BE,$C7,$F7,$0C,$CB ; $C24A08
    db $3C,$DB,$24,$FD,$02,$AF,$53,$D7,$FB,$F5,$04,$1F,$C2,$28,$FF,$D5 ; $C24A18
    db $3B,$DF,$31,$5E,$B1,$5F,$F0,$B7,$48,$29,$F7,$0E,$A8,$D7,$D5,$EE ; $C24A28
    db $AF,$5A,$8F,$01,$00,$BF,$40,$39,$C5,$FF,$06,$04,$C3,$8B,$EF,$71 ; $C24A38
    db $2F,$D1,$75,$8B,$FB,$0C,$FF,$08,$00,$AE,$4B,$8E,$F8,$08,$1F,$95 ; $C24A48
    db $00,$FF,$C0,$C0,$40,$40,$E0,$FE,$04,$23,$FF,$DD,$C5,$B5,$70,$F7 ; $C24A58
    db $0F,$F9,$06,$FB,$04,$F5,$0E,$FE,$01,$FD,$02,$F1,$0A,$5F,$80,$E0 ; $C24A68
    db $80,$00,$F0,$3C,$DA,$22,$BC,$64,$0C,$FC,$7C,$F4,$0C,$01,$80,$E8 ; $C24A78
    db $59,$75,$FC,$D3,$D7,$FC,$02,$01,$00,$B0,$00,$EA,$00,$3E,$89,$FB ; $C24A88
    db $FF,$09,$7E,$D9,$04,$97,$7F,$C0,$71,$79,$87,$7B,$F4,$00,$E8,$BC ; $C24A98
    db $0F,$25,$12,$01,$F4,$EB,$1D,$7D,$F4,$63,$FF,$EC,$8E,$03,$FE,$DE ; $C24AA8
    db $CB,$0A,$5F,$5C,$03,$23,$06,$1F,$18,$3E,$20,$7D,$40,$7A,$40,$F4 ; $C24AB8
    db $80,$E0,$00,$9F,$16,$F9,$3A,$E7,$6D,$DF,$5A,$0E,$BF,$74,$BF,$A0 ; $C24AC8
    db $E1,$BB,$A0,$11,$01,$D6,$0E,$43,$02,$80,$01,$B3,$21,$09,$1F,$A8 ; $C24AD8
    db $5F,$A8,$D9,$43,$58,$05,$D0,$80,$73,$A0,$9D,$01,$03,$40,$40,$10 ; $C24AE8
    db $2A,$00,$1F,$99,$A6,$7F,$33,$40,$D6,$12,$A3,$40,$FF,$AE,$18,$33 ; $C24AF8
    db $51,$03,$01,$04,$DC,$A2,$BF,$B8,$26,$05,$77,$B4,$7E,$05,$0A,$AE ; $C24B08
    db $75,$08,$38,$9B,$03,$84,$FF,$03,$C8,$7F,$F5,$7F,$EA,$BF,$CE,$04 ; $C24B18
    db $1B,$DF,$EC,$61,$A1,$F7,$44,$C7,$03,$94,$55,$07,$F4,$17,$CA,$00 ; $C24B28
    db $F8,$B7,$F8,$E6,$99,$F8,$8F,$76,$18,$89,$B7,$48,$1C,$F7,$FF,$47 ; $C24B38
    db $5F,$9E,$F5,$01,$33,$B8,$60,$99,$FF,$ED,$F3,$3D,$E3,$DF,$23,$F5 ; $C24B48
    db $0F,$FB,$04,$01,$F7,$08,$6E,$FF,$1F,$9E,$FF,$FE,$23,$0B,$1F,$83 ; $C24B58
    db $8F,$77,$FB,$03,$FA,$07,$B6,$4F,$7C,$FF,$D2,$3F,$F1,$3F,$FD,$7F ; $C24B68
    db $F7,$51,$0B,$19,$BF,$F4,$C0,$45,$DF,$DF,$96,$9F,$AD,$F3,$EB,$13 ; $C24B78
    db $3F,$8C,$07,$FF,$BA,$47,$FE,$07,$BE,$6F,$BE,$7F,$64,$9F,$F4,$1F ; $C24B88
    db $FC,$7F,$54,$B9,$F8,$FB,$1C,$D0,$D3,$F0,$45,$0F,$EC,$EF,$88,$8F ; $C24B98
    db $02,$80,$5F,$00,$03,$01,$02,$3D,$02,$05,$02,$48,$14,$BE,$47,$07 ; $C24BA8
    db $03,$00,$7F,$40,$80,$00,$E0,$40,$B0,$F3,$02,$1F,$C0,$A0,$49,$60 ; $C24BB8
    db $FF,$61,$04,$35,$07,$03,$03,$FC,$02,$B8,$81,$05,$33,$03,$F0,$03 ; $C24BC8
    db $8E,$A0,$70,$60,$1F,$F0,$C0,$F0,$02,$29,$7E,$C0,$D7,$3B,$D7,$01 ; $C24BD8
    db $AE,$1A,$00,$0F,$60,$DF,$20,$DF,$00,$C7,$10,$0F,$70,$EC,$13,$E1 ; $C24BE8
    db $0C,$FF,$E8,$5F,$DF,$FF,$D7,$AC,$43,$ED,$FC,$05,$1F,$7D,$1E,$02 ; $C24BF8
    db $F7,$08,$04,$DB,$87,$21,$5F,$B5,$CF,$07,$FF,$F7,$05,$0F,$FF,$A7 ; $C24C08
    db $08,$FC,$04,$1F,$8E,$00,$AF,$13,$21,$9F,$FD,$02,$7D,$82,$F2,$28 ; $C24C18
    db $BF,$11,$1B,$EE,$77,$88,$01,$00,$85,$E3,$1C,$BF,$40,$3D,$FA,$D1 ; $C24C28
    db $78,$37,$04,$1B,$C7,$C7,$20,$EF,$EE,$33,$EF,$08,$10,$F3,$0C,$5F ; $C24C38
    db $B8,$83,$C0,$6B,$DC,$B1,$1B,$5F,$07,$BF,$3F,$80,$02,$5F,$FD,$00 ; $C24C48
    db $F1,$06,$FE,$07,$3E,$BF,$4F,$01,$C8,$D7,$0F,$C7,$F9,$F7,$F4,$05 ; $C24C58
    db $FC,$FF,$4F,$A4,$BA,$05,$FF,$8E,$45,$B2,$0F,$E1,$FD,$1F,$DA,$27 ; $C24C68
    db $FD,$03,$DE,$27,$E7,$1F,$F5,$0B,$C1,$38,$F1,$FF,$F2,$C7,$05,$FE ; $C24C78
    db $53,$AE,$D0,$68,$DC,$5C,$E3,$78,$CD,$F6,$7B,$8E,$FF,$EF,$5B,$FC ; $C24C88
    db $AF,$F8,$56,$FD,$AB,$FF,$3F,$3F,$17,$FF,$3B,$9F,$1B,$A6,$BB,$57 ; $C24C98
    db $FB,$0E,$79,$D4,$06,$DD,$7F,$E7,$07,$DF,$7F,$D8,$1D,$DF,$DF,$EF ; $C24CA8
    db $80,$F7,$FF,$80,$FB,$84,$F1,$8E,$BE,$9C,$DA,$27,$D7,$60,$F7,$80 ; $C24CB8
    db $03,$3F,$D8,$03,$9E,$21,$3F,$E0,$F0,$02,$38,$DB,$FF,$BF,$FC,$07 ; $C24CC8
    db $5F,$F3,$74,$0C,$7B,$CD,$09,$5F,$3A,$15,$FF,$A7,$DD,$BB,$64,$5B ; $C24CD8
    db $C9,$9E,$FF,$07,$07,$1D,$62,$FE,$31,$EF,$12,$E1,$F3,$0F,$7B,$04 ; $C24CE8
    db $7F,$80,$D9,$E0,$E1,$97,$EE,$90,$F0,$02,$19,$F9,$E2,$7D,$FE,$E3 ; $C24CF8
    db $FE,$EC,$1F,$DB,$3C,$7B,$8D,$7B,$BF,$BB,$7F,$D5,$FF,$EB,$FC,$D7 ; $C24D08
    db $16,$30,$96,$F7,$15,$CF,$CF,$FF,$07,$F4,$7F,$6A,$7F,$D7,$6E,$01 ; $C24D18
    db $A5,$FD,$FD,$D0,$EA,$3F,$01,$C1,$F7,$4F,$7C,$C7,$FB,$C4,$F4,$01 ; $C24D28
    db $D5,$C4,$EE,$DC,$3A,$FF,$3F,$BF,$40,$FB,$44,$F3,$FC,$9C,$E3,$EE ; $C24D38
    db $11,$EF,$10,$C7,$38,$65,$8F,$17,$CF,$02,$90,$E0,$57,$EC,$FF,$7C ; $C24D48
    db $11,$D9,$E6,$FF,$D0,$D6,$C0,$5F,$E8,$CF,$42,$66,$D8,$56,$01,$9B ; $C24D58
    db $BF,$BF,$F7,$F7,$E9,$B9,$F8,$18,$3F,$DF,$3F,$D8,$D3,$7F,$DB,$27 ; $C24D68
    db $0C,$FE,$1F,$F2,$1F,$07,$FD,$26,$03,$FE,$7A,$3F,$ED,$FF,$08,$4A ; $C24D78
    db $89,$DB,$9B,$97,$0A,$F7,$9C,$FF,$4E,$F7,$1C,$F7,$CE,$F7,$DC,$FF ; $C24D88
    db $4C,$FF,$98,$FF,$D1,$2E,$EB,$14,$78,$39,$07,$AB,$45,$EE,$04,$FA ; $C24D98
    db $07,$A3,$3D,$FB,$01,$9F,$2A,$69,$8C,$41,$07,$0A,$CC,$5A,$62,$E4 ; $C24DA8
    db $E4,$03,$0D,$B0,$C8,$F7,$01,$C0,$D1,$00,$37,$C8,$7F,$18,$78,$3D ; $C24DB8
    db $4E,$09,$6F,$90,$1E,$5D,$B2,$7F,$01,$29,$53,$7F,$01,$D7,$18,$BF ; $C24DC8
    db $0C,$67,$FC,$1B,$24,$3F,$44,$1E,$27,$1F,$38,$37,$48,$41,$7F,$3A ; $C24DD8
    db $88,$7F,$85,$9B,$3F,$1E,$03,$3F,$09,$3F,$0F,$DF,$20,$7E,$81,$14 ; $C24DE8
    db $9C,$5F,$C3,$EF,$78,$11,$08,$1E,$FB,$04,$03,$E2,$1D,$F6,$09,$F9 ; $C24DF8
    db $06,$03,$03,$A7,$79,$C9,$37,$FE,$DA,$0A,$1F,$F1,$E1,$01,$FA,$05 ; $C24E08
    db $E6,$19,$14,$EF,$AF,$5F,$B7,$4F,$5F,$F7,$03,$AF,$57,$FB,$00,$C1 ; $C24E18
    db $F6,$19,$D7,$FF,$E2,$3E,$FF,$B6,$06,$93,$13,$FF,$5D,$BD,$BF,$77 ; $C24E28
    db $75,$4D,$45,$48,$F7,$75,$8C,$59,$CF,$30,$03,$FD,$03,$0F,$EF,$1F ; $C24E38
    db $DE,$3F,$75,$EE,$03,$9A,$F0,$A8,$C9,$01,$EF,$10,$E7,$18,$1F,$E0 ; $C24E48
    db $BF,$DE,$01,$39,$D7,$E8,$DF,$38,$D2,$3D,$F5,$06,$7D,$C0,$00,$E5 ; $C24E58
    db $FE,$34,$EF,$5F,$88,$27,$99,$15,$9F,$C7,$77,$F8,$58,$A1,$F7,$EF ; $C24E68
    db $6E,$3D,$38,$C5,$FF,$49,$FF,$AF,$70,$7F,$E0,$E7,$F8,$AC,$DF,$67 ; $C24E78
    db $98,$0F,$F0,$07,$8E,$F9,$F4,$0A,$FF,$54,$3B,$FC,$03,$03,$3F,$E3 ; $C24E88
    db $CF,$33,$DF,$3F,$E9,$04,$9D,$77,$FD,$3B,$4F,$00,$17,$7D,$7F,$90 ; $C24E98
    db $09,$AF,$F0,$F1,$FE,$CB,$FC,$8F,$F8,$97,$F8,$F7,$F8,$F0,$F5,$FF ; $C24EA8
    db $B3,$07,$00,$33,$DB,$27,$BF,$67,$E7,$1F,$FC,$45,$0F,$9F,$BF,$0A ; $C24EB8
    db $97,$9F,$CC,$1F,$FF,$83,$FC,$C7,$F8,$37,$F8,$2B,$FC,$79,$C6,$FB ; $C24EC8
    db $44,$5F,$E0,$FF,$02,$9F,$A1,$07,$A2,$5F,$D4,$F8,$1F,$07,$01,$01 ; $C24ED8
    db $00,$5C,$1F,$20,$0E,$15,$0F,$1E,$07,$0A,$0B,$1C,$1F,$20,$3F,$40 ; $C24EE8
    db $13,$0B,$02,$FB,$01,$F1,$0D,$FD,$0F,$B7,$E5,$FC,$00,$18,$3F,$3F ; $C24EF8
    db $00,$50,$3B,$7C,$0E,$11,$1E,$0D,$1A,$3A,$07,$1F,$C0,$C8,$01,$0A ; $C24F08
    db $2F,$EF,$75,$3F,$84,$B9,$13,$F3,$58,$C3,$10,$0E,$FE,$0B,$FF,$09 ; $C24F18
    db $F9,$89,$15,$FF,$72,$2F,$F1,$1F,$F8,$77,$88,$78,$87,$7F,$C4,$09 ; $C24F28
    db $F6,$02,$FD,$15,$EA,$2F,$DE,$1F,$E7,$94,$03,$89,$5F,$FC,$AF,$D8 ; $C24F38
    db $F7,$AE,$61,$74,$1B,$8F,$E7,$18,$05,$B8,$45,$77,$A3,$3F,$46,$03 ; $C24F48
    db $80,$26,$6F,$FC,$3D,$C2,$FF,$80,$EC,$9D,$F8,$30,$FE,$81,$6E,$2F ; $C24F58
    db $D0,$7F,$E8,$F0,$B4,$7D,$BA,$01,$6B,$9F,$8E,$7F,$F5,$FD,$40,$F4 ; $C24F68
    db $0B,$F5,$7F,$00,$49,$A5,$FB,$EF,$F1,$CF,$45,$F1,$26,$7F,$EF,$18 ; $C24F78
    db $0F,$09,$56,$AF,$AF,$5E,$73,$C5,$54,$97,$3F,$FE,$10,$0C,$FD,$00 ; $C24F88
    db $FE,$54,$FF,$A0,$FE,$D8,$FF,$F2,$7F,$78,$0F,$7F,$3A,$10,$EF,$C0 ; $C24F98
    db $D5,$AB,$A0,$5F,$D8,$01,$A7,$F2,$CD,$F8,$C7,$CA,$3D,$14,$8E,$7F ; $C24FA8
    db $FF,$04,$F6,$E4,$7B,$FC,$03,$E7,$09,$FF,$06,$DD,$BE,$A7,$FA,$DD ; $C24FB8
    db $37,$8C,$A3,$BE,$67,$90,$FE,$60,$0F,$2B,$F4,$8B,$7A,$E5,$75,$FE ; $C24FC8
    db $F0,$9D,$03,$D3,$FC,$FE,$8F,$AD,$CA,$00,$FD,$C1,$3F,$BE,$3D,$0A ; $C24FD8
    db $A6,$FF,$E0,$1F,$17,$00,$7F,$80,$BE,$47,$BC,$43,$3E,$C1,$DA,$3D ; $C24FE8
    db $61,$B8,$79,$9A,$9D,$00,$0B,$FE,$03,$FB,$07,$EF,$12,$1F,$FA,$07 ; $C24FF8
    db $B9,$FF,$F6,$09,$34,$74,$AF,$FF,$C3,$00,$DE,$21,$03,$DB,$7F,$8F ; $C25008
    db $F9,$8F,$7C,$A8,$77,$10,$0E,$FF,$88,$3B,$3B,$DF,$F4,$D0,$D4,$E4 ; $C25018
    db $BF,$FE,$7F,$74,$F6,$7D,$E3,$19,$2E,$BF,$FA,$A4,$7D,$FE,$00,$8A ; $C25028
    db $5C,$83,$EA,$03,$7D,$FA,$2D,$36,$FF,$7D,$3B,$0B,$38,$FF,$C1,$CD ; $C25038
    db $FE,$7D,$CE,$01,$A2,$50,$FD,$FE,$B1,$E1,$FF,$CF,$B7,$C5,$3F,$E4 ; $C25048
    db $FF,$91,$EF,$13,$EF,$93,$D4,$44,$4B,$81,$1F,$EF,$10,$CD,$F2,$E3 ; $C25058
    db $1C,$1E,$7F,$FF,$0B,$6A,$7F,$44,$13,$0F,$FE,$3F,$BB,$4D,$D2,$7F ; $C25068
    db $4F,$01,$FF,$89,$7F,$F5,$0F,$7E,$9E,$80,$EF,$FF,$B5,$FF,$AA,$BF ; $C25078
    db $40,$E8,$F3,$01,$00,$ED,$92,$9C,$63,$FB,$E6,$96,$6C,$E2,$92,$BB ; $C25088
    db $7F,$FF,$77,$4F,$B6,$7B,$80,$67,$32,$CD,$CD,$7D,$33,$0E,$7A,$9F ; $C25098
    db $03,$9B,$8F,$B6,$C9,$EE,$BD,$6A,$F0,$08,$1E,$EF,$11,$F7,$1D,$19 ; $C250A8
    db $7D,$9F,$E3,$0A,$7F,$12,$82,$FE,$3F,$EB,$3A,$E6,$AA,$71,$C2,$EA ; $C250B8
    db $1D,$C1,$CB,$E8,$45,$1D,$F2,$1F,$3B,$FE,$B2,$E3,$92,$FB,$FF,$7E ; $C250C8
    db $BC,$57,$8F,$1C,$59,$E7,$ED,$C3,$A3,$AF,$FF,$D1,$B1,$A4,$DD,$F7 ; $C250D8
    db $F8,$04,$0C,$3F,$C0,$EF,$3E,$CD,$0F,$F5,$1F,$7E,$DF,$78,$87,$08 ; $C250E8
    db $1E,$D7,$38,$01,$FC,$3F,$B1,$7F,$71,$FF,$93,$DE,$0F,$B7,$30,$FF ; $C250F8
    db $F8,$07,$30,$1D,$8F,$75,$8F,$7B,$8C,$30,$AF,$D8,$18,$AD,$FE,$8B ; $C25108
    db $3E,$FC,$5F,$01,$AF,$3F,$E7,$01,$5A,$1F,$4E,$B6,$08,$0C,$77,$04 ; $C25118
    db $32,$66,$0F,$6E,$10,$FF,$08,$06,$B6,$FF,$A9,$BA,$0F,$20,$00,$20 ; $C25128
    db $08,$0E,$E2,$1F,$9C,$3D,$00,$3C,$02,$03,$04,$3D,$04,$E9,$DB,$5B ; $C25138
    db $C4,$81,$BD,$00,$40,$60,$F5,$06,$1F,$97,$31,$38,$80,$D3,$67,$D8 ; $C25148
    db $7E,$F1,$7D,$FB,$04,$F7,$FF,$BD,$FF,$5A,$BA,$B3,$BF,$03,$EF,$BF ; $C25158
    db $E6,$B7,$E8,$9F,$8C,$0E,$A5,$1D,$FC,$B8,$4E,$03,$FD,$01,$EF,$15 ; $C25168
    db $F7,$1B,$FD,$FF,$5F,$BF,$F3,$E0,$19,$FB,$FA,$FD,$FC,$07,$03,$1E ; $C25178
    db $EE,$F3,$DF,$7D,$A9,$AA,$4D,$3C,$C5,$65,$FF,$C7,$A1,$43,$5F,$9C ; $C25188
    db $47,$E3,$06,$1D,$B9,$FF,$B8,$6E,$A1,$05,$03,$D1,$FB,$9B,$C7,$6F ; $C25198
    db $F7,$EA,$02,$32,$FA,$03,$BF,$DE,$FF,$BC,$FF,$D8,$AC,$85,$17,$16 ; $C251A8
    db $F9,$76,$0E,$99,$FE,$F3,$FE,$5F,$D7,$58,$FF,$F2,$A7,$F5,$5E,$AD ; $C251B8
    db $8F,$18,$7B,$B9,$7D,$FD,$CD,$18,$FB,$5B,$F1,$81,$FF,$07,$1D,$FB ; $C251C8
    db $F6,$B9,$20,$2A,$F0,$BF,$FC,$5B,$FC,$22,$37,$F8,$4C,$50,$70,$8F ; $C251D8
    db $48,$EF,$11,$AF,$E3,$C3,$03,$6C,$DD,$ED,$3F,$1D,$74,$FF,$9B,$43 ; $C251E8
    db $C7,$FB,$83,$05,$0B,$FF,$3B,$80,$07,$F9,$FF,$92,$ED,$57,$1D,$A9 ; $C251F8
    db $7F,$C9,$48,$B9,$F9,$E7,$F9,$01,$1F,$F8,$3D,$CB,$74,$AF,$AF,$D7 ; $C25208
    db $6D,$54,$F1,$38,$01,$BF,$01,$DF,$00,$DF,$58,$DF,$B7,$FD,$CF,$7E ; $C25218
    db $FE,$C2,$0A,$1F,$B0,$FF,$E1,$B4,$5F,$7F,$98,$0B,$FD,$BF,$7F,$7E ; $C25228
    db $83,$BE,$CF,$9D,$97,$31,$E8,$4F,$EF,$EF,$FE,$38,$FE,$F6,$E2,$F3 ; $C25238
    db $90,$EA,$DF,$55,$EE,$00,$CB,$F8,$FF,$4D,$FF,$47,$FF,$73,$65,$07 ; $C25248
    db $A8,$BE,$6C,$AA,$13,$82,$FF,$40,$B6,$4D,$9F,$FF,$1D,$97,$FF,$9C ; $C25258
    db $95,$C3,$8F,$D7,$D3,$1F,$22,$0F,$9C,$71,$38,$F1,$3A,$FE,$E9,$AE ; $C25268
    db $02,$E8,$B5,$9F,$03,$55,$8C,$76,$7E,$21,$76,$F1,$F3,$71,$CF,$23 ; $C25278
    db $D0,$72,$FF,$D1,$BF,$76,$BD,$3C,$DB,$F1,$3E,$E6,$D9,$CE,$B7,$58 ; $C25288
    db $AF,$B9,$CE,$FD,$8E,$DE,$A2,$43,$DF,$54,$77,$F6,$03,$61,$67,$FF ; $C25298
    db $73,$99,$2F,$03,$29,$C3,$03,$E7,$18,$AC,$61,$0E,$FF,$AC,$FF,$57 ; $C252A8
    db $9C,$8B,$13,$61,$97,$F0,$58,$58,$57,$FD,$AF,$22,$FC,$FF,$5D,$73 ; $C252B8
    db $FC,$BE,$4D,$02,$F8,$8E,$FF,$FB,$9F,$00,$B3,$5F,$63,$BF,$C1,$7F ; $C252C8
    db $A1,$FF,$60,$79,$1D,$F3,$39,$F6,$72,$FB,$01,$D8,$49,$00,$A5,$19 ; $C252D8
    db $FB,$25,$FF,$01,$21,$DC,$0C,$5D,$20,$FF,$89,$EF,$98,$07,$BE,$F7 ; $C252E8
    db $7B,$FD,$7D,$15,$BB,$8F,$83,$C1,$F7,$F7,$F9,$F9,$3A,$07,$C6,$B9 ; $C252F8
    db $99,$01,$34,$DD,$1D,$32,$AF,$FE,$3D,$F3,$3C,$A8,$06,$FF,$EE,$F1 ; $C25308
    db $3F,$E0,$4F,$3B,$F9,$D9,$70,$42,$8B,$2F,$FE,$61,$7F,$06,$DF,$EF ; $C25318
    db $EF,$F4,$01,$4C,$DE,$00,$C5,$D8,$27,$2C,$F7,$7E,$00,$CB,$7F,$C5 ; $C25328
    db $3F,$C3,$3F,$E5,$1F,$67,$E3,$0C,$8D,$18,$57,$99,$F7,$3F,$FD,$40 ; $C25338
    db $B3,$1F,$27,$FB,$CE,$E0,$39,$B3,$18,$00,$13,$6F,$7F,$10,$FF,$1E ; $C25348
    db $FB,$7B,$15,$8C,$F7,$88,$60,$F9,$80,$7B,$44,$0E,$FF,$71,$E7,$1B ; $C25358
    db $D3,$40,$17,$CE,$3F,$BF,$3A,$8F,$8F,$FD,$FD,$7F,$C0,$77,$E8,$6F ; $C25368
    db $F0,$FD,$22,$DC,$3B,$E1,$5E,$7F,$9C,$1B,$FC,$BF,$BF,$9F,$9F,$91 ; $C25378
    db $41,$E7,$BF,$BF,$18,$6D,$7E,$C7,$09,$DA,$E7,$FA,$EF,$62,$AC,$3A ; $C25388
    db $FF,$29,$3E,$1D,$3D,$FF,$B7,$48,$9B,$E3,$FE,$DF,$61,$FA,$19,$D2 ; $C25398
    db $FF,$FC,$E8,$01,$9F,$A5,$19,$3E,$CC,$31,$DB,$E7,$60,$FC,$1D,$E0 ; $C253A8
    db $3F,$70,$9F,$09,$11,$EE,$FE,$1D,$70,$1F,$DC,$00,$A3,$7B,$C4,$BF ; $C253B8
    db $64,$F5,$5E,$7F,$FA,$03,$B9,$9F,$DF,$DD,$97,$80,$6F,$08,$94,$FA ; $C253C8
    db $0D,$7F,$98,$FB,$BD,$7C,$FF,$D7,$7F,$EE,$8E,$F9,$BA,$D5,$EF,$E1 ; $C253D8
    db $E7,$CE,$CE,$BF,$C7,$F9,$AF,$7F,$5D,$B7,$FA,$EA,$5C,$3B,$EF,$FE ; $C253E8
    db $29,$E3,$3F,$01,$70,$9F,$F5,$1F,$EB,$E0,$FF,$F9,$0F,$71,$8F,$31 ; $C253F8
    db $DF,$C3,$61,$E1,$1F,$BA,$BE,$2E,$E3,$3C,$FF,$33,$01,$85,$C7,$03 ; $C25408
    db $7D,$FB,$AF,$7D,$FF,$DD,$A1,$FF,$DC,$D5,$31,$DB,$9D,$F0,$BE,$96 ; $C25418
    db $10,$C0,$8C,$37,$C8,$79,$8E,$6F,$11,$90,$3F,$F0,$F7,$9D,$1F,$D2 ; $C25428
    db $01,$FD,$3F,$4B,$FF,$7D,$1B,$12,$38,$FF,$3B,$1B,$7C,$30,$3F,$C0 ; $C25438
    db $21,$0F,$70,$1F,$04,$30,$03,$0C,$00,$0F,$7E,$D7,$47,$39,$1F,$0F ; $C25448
    db $49,$0F,$FF,$04,$A7,$FD,$EE,$0C,$BF,$EF,$00,$1F,$DF,$3F,$33,$CF ; $C25458
    db $73,$8F,$C3,$80,$78,$07,$F7,$0F,$4E,$FE,$D8,$7C,$A5,$BB,$FE,$51 ; $C25468
    db $CF,$0C,$01,$C1,$C1,$4B,$FF,$AE,$F9,$80,$F4,$7B,$9C,$F7,$00,$6A ; $C25478
    db $D5,$DD,$A2,$5C,$FB,$02,$FF,$75,$05,$CC,$77,$AC,$5F,$35,$FA,$45 ; $C25488
    db $05,$3E,$C7,$0C,$9F,$B5,$00,$0A,$B7,$CF,$FC,$8F,$EF,$0E,$18,$D7 ; $C25498
    db $38,$CA,$AB,$2B,$C2,$B9,$20,$FA,$06,$5C,$88,$FB,$63,$20,$EF,$FF ; $C254A8
    db $BB,$85,$EB,$97,$9B,$07,$FD,$28,$4B,$FD,$D7,$FB,$ED,$77,$79,$8F ; $C254B8
    db $15,$FF,$CC,$BF,$F7,$F8,$EF,$F0,$FF,$E0,$F3,$FC,$12,$05,$77,$88 ; $C254C8
    db $B6,$19,$52,$6F,$1F,$AE,$BA,$6F,$DF,$7B,$71,$2E,$FF,$FE,$19,$7B ; $C254D8
    db $E6,$7D,$E2,$CD,$F3,$92,$7F,$DC,$AF,$7D,$CF,$21,$AB,$52,$ED,$FF ; $C254E8
    db $8A,$F5,$DF,$04,$9D,$CF,$F0,$71,$BD,$5A,$49,$6B,$93,$31,$00,$B5 ; $C254F8
    db $ED,$13,$17,$DB,$8F,$0E,$A5,$FB,$04,$7F,$05,$08,$46,$DE,$1F,$E4 ; $C25508
    db $3F,$E7,$60,$BA,$BD,$DF,$BA,$7F,$D1,$E8,$F2,$08,$F8,$FF,$DC,$DF ; $C25518
    db $C3,$09,$E8,$EF,$FE,$AE,$27,$31,$75,$3F,$1C,$11,$01,$EE,$13,$37 ; $C25528
    db $01,$A3,$47,$D8,$07,$00,$E7,$24,$FF,$71,$22,$EF,$1E,$81,$31,$1F ; $C25538
    db $F4,$0F,$B4,$4F,$15,$43,$82,$01,$F0,$AA,$4D,$F8,$FA,$19,$5D,$BF ; $C25548
    db $03,$EB,$DF,$01,$00,$03,$03,$04,$07,$02,$07,$03,$2F,$3B,$0F,$10 ; $C25558
    db $94,$2A,$FF,$11,$03,$07,$3D,$83,$BC,$01,$18,$3F,$1F,$2E,$28,$19 ; $C25568
    db $3D,$76,$3F,$3C,$2F,$2A,$0E,$0D,$0F,$0F,$08,$0D,$00,$04,$37,$F7 ; $C25578
    db $6F,$60,$01,$2D,$FD,$0B,$0E,$FB,$08,$FF,$0D,$EC,$21,$AE,$FF,$FE ; $C25588
    db $00,$F1,$3D,$FB,$DF,$3F,$E1,$1F,$F8,$4E,$07,$E1,$FF,$FF,$E6,$F7 ; $C25598
    db $E8,$28,$08,$01,$00,$EC,$13,$ED,$11,$8F,$75,$F7,$10,$FF,$80,$F5 ; $C255A8
    db $7B,$8C,$7D,$75,$BE,$70,$0B,$6B,$7F,$0F,$3F,$97,$83,$75,$C3,$CF ; $C255B8
    db $E1,$BE,$4A,$44,$EA,$80,$C1,$D5,$7B,$BB,$47,$EF,$77,$F7,$5B,$7F ; $C255C8
    db $0B,$71,$FE,$BF,$FE,$5C,$FF,$FF,$76,$EA,$FE,$29,$08,$2F,$07,$2F ; $C255D8
    db $FD,$5F,$FA,$2A,$75,$C1,$80,$44,$03,$08,$67,$81,$FF,$FC,$04,$F4 ; $C255E8
    db $F0,$1F,$76,$CF,$F3,$23,$1B,$FF,$E5,$8E,$22,$FF,$BE,$8E,$07,$EB ; $C255F8
    db $91,$FD,$BB,$FF,$E8,$70,$81,$FF,$4A,$CC,$1F,$7E,$10,$7D,$0C,$93 ; $C25608
    db $9D,$FA,$FB,$6B,$A9,$90,$1F,$FC,$FF,$71,$D3,$05,$D5,$D7,$BC,$74 ; $C25618
    db $54,$71,$19,$26,$78,$14,$2E,$FA,$D5,$33,$6A,$AA,$55,$7F,$98,$1B ; $C25628
    db $ED,$BF,$7F,$1A,$E7,$BE,$C3,$DF,$E3,$76,$BA,$FF,$FE,$B9,$C0,$55 ; $C25638
    db $BF,$DD,$CF,$F8,$77,$6C,$C0,$5D,$29,$10,$C2,$01,$F0,$FF,$25,$40 ; $C25648
    db $60,$DF,$39,$55,$E0,$DC,$1F,$70,$0F,$75,$98,$DC,$37,$8D,$25,$05 ; $C25658
    db $30,$FF,$18,$FF,$90,$7C,$FF,$F3,$FF,$0C,$F5,$FA,$28,$F7,$1D,$E8 ; $C25668
    db $60,$F7,$25,$08,$F7,$80,$FF,$7E,$80,$05,$8F,$F7,$08,$0F,$D3,$1F ; $C25678
    db $FF,$08,$03,$3E,$01,$F4,$29,$91,$FF,$E0,$00,$F0,$D4,$F5,$FD,$BC ; $C25688
    db $43,$03,$73,$FA,$03,$FC,$0B,$4E,$76,$DF,$17,$76,$55,$4D,$74,$00 ; $C25698
    db $C6,$CF,$58,$00,$DF,$29,$AA,$55,$55,$AA,$22,$DD,$E1,$0F,$FA,$C1 ; $C256A8
    db $C7,$EB,$FC,$7D,$CB,$F1,$C4,$D7,$1F,$77,$A3,$B0,$C8,$E7,$5F,$BF ; $C256B8
    db $0E,$6F,$FF,$5F,$FE,$93,$1B,$FF,$0F,$EB,$02,$5E,$C1,$03,$AB,$00 ; $C256C8
    db $57,$61,$0F,$01,$FE,$23,$07,$27,$91,$50,$52,$D1,$19,$FF,$E5,$12 ; $C256D8
    db $FF,$0C,$FF,$30,$7F,$3F,$C0,$1F,$E0,$18,$E7,$37,$CF,$E9,$1F,$23 ; $C256E8
    db $DC,$0F,$F0,$D4,$81,$71,$1C,$FF,$08,$7B,$8F,$7F,$DD,$E9,$1F,$63 ; $C256F8
    db $FF,$A7,$01,$D7,$49,$C4,$5E,$1D,$2A,$81,$FA,$E2,$6F,$BF,$E1,$4F ; $C25708
    db $77,$8C,$B7,$C8,$E5,$FA,$FE,$E3,$EB,$F7,$F6,$92,$17,$E3,$96,$C1 ; $C25718
    db $9F,$80,$0A,$FF,$7D,$FF,$7B,$A8,$03,$CE,$FF,$06,$E8,$01,$76,$20 ; $C25728
    db $91,$1D,$E4,$FF,$F5,$0E,$09,$7F,$2A,$39,$FC,$AE,$23,$BB,$D2,$EA ; $C25738
    db $AC,$29,$78,$17,$75,$3A,$FF,$6B,$C6,$11,$EF,$01,$19,$FB,$EF,$F5 ; $C25748
    db $03,$8B,$72,$F4,$F5,$CB,$EB,$D4,$ED,$9F,$F7,$8F,$B7,$4E,$CF,$3E ; $C25758
    db $EE,$11,$FE,$11,$D6,$F9,$3C,$E2,$3B,$FB,$AB,$8F,$23,$00,$C7,$80 ; $C25768
    db $F7,$3D,$C6,$FA,$07,$DB,$1D,$27,$D3,$3F,$01,$B8,$FE,$FA,$E7,$3F ; $C25778
    db $39,$01,$61,$EC,$69,$DF,$1B,$FF,$6A,$89,$8D,$E0,$F8,$E1,$51,$BD ; $C25788
    db $D1,$D9,$AE,$03,$38,$7F,$FC,$78,$C7,$FD,$82,$7C,$C7,$E2,$FF,$36 ; $C25798
    db $DB,$FF,$E3,$EE,$F3,$FF,$7F,$F3,$07,$FD,$E3,$AD,$D3,$F9,$39,$88 ; $C257A8
    db $2D,$82,$DA,$01,$DF,$3D,$3E,$BE,$97,$E8,$7C,$F7,$04,$8F,$BA,$06 ; $C257B8
    db $01,$00,$07,$A5,$DF,$06,$69,$DF,$00,$44,$00,$10,$00,$28,$00,$02 ; $C257C8
    db $00,$48,$90,$17,$44,$E8,$8D,$75,$28,$38,$DD,$05,$01,$08,$02,$01 ; $C257D8
    db $07,$03,$03,$00,$03,$C0,$43,$02,$FD,$01,$FE,$7C,$02,$04,$00,$6F ; $C257E8
    db $C0,$80,$E4,$80,$E0,$00,$C0,$B1,$1F,$80,$D2,$F3,$80,$7D,$7F,$04 ; $C257F8
    db $B1,$FF,$0A,$E3,$F1,$98,$9A,$03,$0B,$FB,$0F,$F1,$DF,$2F,$75,$01 ; $C25808
    db $00,$1F,$AB,$DF,$77,$DF,$FC,$3A,$D7,$BA,$1C,$19,$EA,$27,$03,$EA ; $C25818
    db $15,$BF,$71,$F1,$FB,$B3,$18,$55,$AD,$D3,$4B,$F5,$3A,$1D,$8E,$6C ; $C25828
    db $C1,$00,$88,$41,$77,$00,$81,$49,$FF,$8A,$FF,$45,$11,$E2,$11,$41 ; $C25838
    db $C4,$0F,$EA,$EE,$45,$FF,$76,$B7,$AF,$31,$BD,$FE,$07,$F9,$BF,$C6 ; $C25848
    db $28,$2B,$B8,$00,$B9,$47,$5F,$AE,$BD,$56,$FB,$0C,$CE,$11,$5C,$90 ; $C25858
    db $91,$61,$9F,$FB,$3D,$75,$7F,$D8,$AE,$E5,$1F,$EF,$F5,$67,$BB,$21 ; $C25868
    db $FE,$50,$45,$D0,$04,$FF,$1F,$F7,$3F,$E1,$BF,$37,$6B,$BA,$B1,$FB ; $C25878
    db $92,$57,$DD,$FF,$ED,$14,$FF,$7D,$9F,$74,$BF,$FC,$5F,$FC,$BB,$D8 ; $C25888
    db $F7,$C9,$F7,$88,$F7,$3A,$E5,$1A,$E5,$BE,$C1,$42,$BD,$38,$FF,$FA ; $C25898
    db $FD,$5B,$E4,$DA,$A5,$FB,$04,$BE,$41,$80,$81,$E6,$19,$BF,$58,$C6 ; $C258A8
    db $79,$8B,$1D,$13,$FC,$FA,$9D,$8E,$B8,$2E,$03,$BA,$3D,$F5,$DB,$7C ; $C258B8
    db $FD,$7A,$5E,$BD,$E3,$3F,$54,$BF,$CA,$3F,$5F,$BA,$F8,$2E,$DD,$C0 ; $C258C8
    db $74,$6D,$D1,$F5,$00,$39,$71,$F6,$CF,$B0,$09,$F6,$AB,$FC,$92,$EF ; $C258D8
    db $12,$EF,$92,$FF,$02,$FD,$3F,$FF,$04,$38,$EC,$00,$B0,$00,$5F,$72 ; $C258E8
    db $9F,$D5,$7F,$92,$7F,$85,$30,$7F,$8E,$01,$7B,$8E,$73,$CD,$31,$FC ; $C258F8
    db $01,$DA,$A7,$D5,$7F,$00,$92,$FD,$44,$FF,$84,$7F,$FE,$05,$25,$7D ; $C25908
    db $92,$58,$7F,$FA,$3D,$E7,$8E,$01,$E3,$A4,$1B,$AA,$FF,$5C,$94,$7F ; $C25918
    db $7B,$9D,$6B,$E7,$7A,$FF,$7B,$F7,$5A,$F3,$BC,$C5,$7A,$AA,$55,$F8 ; $C25928
    db $01,$C5,$4F,$FD,$00,$5F,$19,$F6,$16,$FD,$13,$FE,$30,$12,$FF,$05 ; $C25938
    db $1D,$FA,$1F,$0E,$F1,$3E,$E3,$77,$87,$BB,$07,$64,$59,$F8,$CB,$1F ; $C25948
    db $70,$8F,$BF,$DD,$27,$F7,$09,$AE,$51,$FB,$34,$85,$FE,$63,$FC,$73 ; $C25958
    db $CD,$FF,$F2,$01,$B9,$FF,$8D,$9A,$97,$07,$87,$0C,$FB,$CF,$F7,$9F ; $C25968
    db $EF,$1E,$EF,$3C,$FF,$2A,$55,$AA,$5F,$ED,$3B,$FF,$ED,$0E,$53,$71 ; $C25978
    db $8F,$BE,$CE,$42,$75,$A8,$B9,$3D,$EF,$DF,$19,$E7,$FB,$EF,$50,$E3 ; $C25988
    db $81,$1F,$6A,$B5,$4A,$40,$BF,$63,$3F,$3F,$8C,$C3,$C8,$3D,$FB,$1D ; $C25998
    db $1F,$F5,$0F,$50,$05,$E0,$7F,$FC,$0F,$01,$76,$8D,$CB,$BC,$3F,$E8 ; $C259A8
    db $FF,$54,$27,$07,$FE,$80,$3F,$DF,$FF,$8F,$F9,$8D,$FA,$75,$46,$C0 ; $C259B8
    db $F4,$E9,$FE,$75,$BE,$89,$7E,$06,$59,$EF,$F7,$FB,$FB,$02,$54,$F7 ; $C259C8
    db $D4,$94,$5C,$01,$22,$06,$F9,$AC,$F3,$FA,$E7,$EB,$B7,$FF,$41,$FF ; $C259D8
    db $A2,$1D,$01,$87,$64,$F5,$A2,$01,$20,$3A,$0A,$FF,$01,$F7,$8B,$CD ; $C259E8
    db $B7,$BA,$E7,$D5,$86,$77,$58,$FD,$A3,$1F,$1D,$0A,$F5,$F2,$F1,$1B ; $C259F8
    db $FA,$FF,$0E,$70,$FB,$81,$FE,$F4,$FB,$F9,$FE,$FE,$F9,$93,$FC,$97 ; $C25A08
    db $C3,$2A,$70,$7F,$80,$06,$9B,$35,$EA,$0F,$F0,$01,$04,$26,$F9,$79 ; $C25A18
    db $E7,$27,$E6,$67,$E3,$2F,$FF,$6F,$FF,$AF,$70,$FD,$22,$36,$EB,$FC ; $C25A28
    db $07,$38,$EF,$F8,$1F,$BB,$03,$D0,$77,$FA,$F6,$F9,$DF,$0E,$E0,$1B ; $C25A38
    db $FC,$7F,$F8,$54,$5F,$FC,$AF,$D7,$01,$1E,$F0,$7F,$E0,$FF,$80,$FB ; $C25A48
    db $04,$E7,$3C,$FB,$FC,$5B,$AC,$AF,$54,$27,$B5,$33,$7E,$3A,$6E,$11 ; $C25A58
    db $5F,$4E,$BF,$7D,$FF,$3C,$E3,$EF,$30,$67,$BC,$DE,$3F,$DF,$30,$DF ; $C25A68
    db $20,$FE,$09,$DD,$7A,$01,$D9,$97,$8B,$01,$C1,$3F,$84,$91,$FE,$21 ; $C25A78
    db $FE,$11,$FE,$28,$FF,$32,$FF,$7B,$FE,$56,$46,$54,$BA,$49,$07,$97 ; $C25A88
    db $C7,$7B,$5A,$53,$FF,$2E,$54,$3F,$13,$CC,$1E,$E7,$CC,$37,$84,$7B ; $C25A98
    db $F6,$3B,$CA,$75,$49,$FF,$CD,$41,$D7,$FF,$51,$DC,$60,$29,$EF,$FD ; $C25AA8
    db $AE,$FF,$D6,$18,$BE,$6B,$BA,$2C,$E6,$55,$0E,$AE,$A4,$5F,$00,$AC ; $C25AB8
    db $A3,$8E,$00,$EA,$45,$FD,$CE,$F9,$65,$FA,$31,$08,$6A,$0A,$EA,$95 ; $C25AC8
    db $A2,$FD,$46,$87,$A2,$A1,$A7,$00,$19,$E7,$A5,$EF,$01,$E5,$D0,$FD ; $C25AD8
    db $BD,$5C,$FF,$7E,$BC,$7F,$A1,$7F,$A3,$7C,$A5,$7E,$A5,$7A,$25,$FE ; $C25AE8
    db $E5,$FA,$BD,$52,$02,$39,$79,$9D,$D2,$3F,$AB,$06,$5E,$AB,$7E,$AB ; $C25AF8
    db $FE,$01,$18,$A3,$FE,$AA,$3B,$FD,$88,$E3,$5F,$BF,$B8,$5D,$70,$78 ; $C25B08
    db $01,$70,$FE,$EE,$AE,$93,$FE,$3D,$6D,$9A,$AF,$7C,$1C,$FB,$5A,$B7 ; $C25B18
    db $5D,$F7,$16,$FF,$9D,$6F,$9E,$6F,$06,$DF,$FB,$00,$01,$57,$DD,$58 ; $C25B28
    db $01,$EF,$6F,$B8,$F7,$3E,$C0,$BF,$05,$FC,$FF,$04,$00,$FB,$07,$7F ; $C25B38
    db $03,$67,$FB,$BF,$7F,$7F,$FF,$01,$DD,$A5,$FC,$8B,$E9,$CF,$FC,$87 ; $C25B48
    db $DD,$F6,$F9,$EF,$D0,$FF,$75,$FA,$7F,$F8,$FB,$FC,$F0,$01,$43,$AF ; $C25B58
    db $EC,$D0,$CF,$05,$F7,$8F,$F3,$DF,$21,$53,$52,$E0,$08,$00,$F0,$DF ; $C25B68
    db $F1,$2F,$3A,$D0,$7F,$C9,$90,$D9,$B4,$FE,$0F,$F8,$4E,$01,$01,$64 ; $C25B78
    db $FF,$66,$C4,$74,$78,$68,$3E,$FD,$F3,$02,$80,$0A,$BF,$CF,$BF,$DF ; $C25B88
    db $71,$2E,$D1,$63,$D9,$75,$3F,$70,$C0,$3C,$C3,$BD,$41,$EE,$11,$F6 ; $C25B98
    db $19,$DC,$3F,$FF,$9C,$27,$AD,$FD,$EF,$43,$4B,$B5,$F1,$CF,$08,$5F ; $C25BA8
    db $07,$0B,$EA,$DF,$FD,$AC,$BB,$9C,$03,$C5,$F1,$7F,$F9,$25,$FA,$BD ; $C25BB8
    db $19,$2B,$FD,$12,$A3,$A5,$FE,$5F,$F7,$0F,$68,$F2,$AF,$FD,$02,$F0 ; $C25BC8
    db $7F,$9F,$9F,$09,$FD,$CD,$F3,$53,$78,$7F,$56,$7F,$F9,$18,$8F,$7F ; $C25BD8
    db $FB,$01,$38,$01,$7B,$01,$39,$00,$FF,$22,$FD,$57,$F9,$07,$F9,$87 ; $C25BE8
    db $C0,$01,$79,$47,$F9,$7F,$98,$3F,$3D,$C3,$04,$CA,$7F,$FF,$6B,$78 ; $C25BF8
    db $7F,$B6,$75,$FF,$9D,$A0,$E6,$7F,$58,$3F,$F4,$1F,$26,$1F,$FF,$F9 ; $C25C08
    db $FC,$13,$9D,$FF,$FB,$9F,$FF,$FB,$02,$9D,$FF,$12,$8C,$FF,$9A,$6F ; $C25C18
    db $B6,$C0,$CE,$E7,$F7,$3A,$01,$BB,$07,$05,$FD,$00,$DF,$E0,$08,$FF ; $C25C28
    db $0E,$5F,$0F,$2F,$0C,$08,$1F,$11,$1F,$00,$03,$75,$AE,$80,$61,$2B ; $C25C38
    db $5B,$FF,$29,$F7,$EF,$87,$AF,$EF,$11,$EF,$03,$59,$67,$BE,$1F,$04 ; $C25C48
    db $E7,$FF,$F5,$FF,$DC,$06,$FF,$8A,$FB,$00,$76,$FF,$01,$07,$00,$0B ; $C25C58
    db $00,$01,$EE,$A3,$99,$01,$BA,$7C,$02,$DF,$F7,$FC,$02,$7F,$7F,$E9 ; $C25C68
    db $F5,$CB,$07,$07,$8E,$BF,$0F,$DF,$05,$3E,$18,$7F,$F9,$BF,$7F,$95 ; $C25C78
    db $4A,$F5,$07,$F8,$09,$65,$07,$FC,$05,$FA,$1B,$E4,$DD,$17,$FF,$E9 ; $C25C88
    db $F7,$06,$FF,$17,$7B,$FF,$F5,$1E,$FE,$DD,$FE,$15,$FE,$7D,$9E,$75 ; $C25C98
    db $BE,$FD,$5E,$FD,$BB,$DA,$77,$C8,$B8,$FF,$2A,$F5,$1A,$1F,$E5,$B6 ; $C25CA8
    db $C9,$01,$71,$FF,$A7,$FB,$14,$D7,$FF,$00,$08,$E6,$99,$BF,$5A,$C7 ; $C25CB8
    db $78,$FB,$E9,$B3,$FB,$0A,$80,$FF,$DE,$3D,$E1,$3F,$4A,$BF,$DF,$0E ; $C25CC8
    db $3A,$5F,$B5,$54,$95,$95,$40,$07,$03,$A0,$FF,$48,$00,$03,$54,$AB ; $C25CD8
    db $80,$7F,$40,$BF,$80,$03,$A0,$5F,$48,$1F,$B7,$A0,$5F,$18,$4B,$5F ; $C25CE8
    db $D5,$A8,$75,$7D,$FE,$03,$80,$7F,$D5,$AA,$30,$EF,$C6,$CE,$72,$04 ; $C25CF8
    db $B8,$FF,$F3,$FB,$B4,$20,$FE,$41,$23,$A0,$E3,$5D,$F4,$91,$05,$63 ; $C25D08
    db $7F,$14,$9B,$03,$55,$18,$5D,$F4,$0B,$05,$D5,$2A,$3E,$AA,$55,$19 ; $C25D18
    db $98,$BF,$A5,$FB,$FA,$34,$03,$59,$01,$F4,$28,$8E,$FF,$D0,$00,$F8 ; $C25D28
    db $03,$39,$78,$00,$D4,$00,$A0,$A8,$05,$79,$E0,$08,$1F,$C6,$3B,$D8 ; $C25D38
    db $9F,$00,$BB,$03,$7F,$F9,$7F,$C9,$BF,$69,$85,$01,$7D,$DF,$DA,$2B ; $C25D48
    db $DF,$B7,$EE,$C1,$FF,$C9,$F7,$DD,$EF,$CB,$ED,$E7,$CB,$B7,$CF,$A8 ; $C25D58
    db $8C,$37,$98,$81,$FF,$5D,$E2,$5F,$E5,$6F,$D8,$EF,$91,$FF,$87,$AC ; $C25D68
    db $53,$BF,$40,$38,$C9,$77,$C0,$6D,$3B,$FB,$27,$CF,$5D,$FA,$B7,$E8 ; $C25D78
    db $DC,$A3,$36,$C9,$73,$9E,$C9,$3F,$95,$7F,$AB,$FE,$3C,$10,$3B,$13 ; $C25D88
    db $23,$97,$20,$D7,$23,$8C,$21,$C7,$33,$87,$23,$87,$3C,$C3,$3A,$C7 ; $C25D98
    db $B5,$4B,$77,$88,$2F,$D0,$65,$9A,$B3,$4D,$A2,$5F,$9E,$16,$7F,$37 ; $C25DA8
    db $1B,$7F,$55,$F8,$36,$EB,$00,$00,$1D,$FA,$F9,$E6,$FC,$A3,$FF,$0E ; $C25DB8
    db $D0,$43,$FE,$09,$A3,$8D,$C4,$1A,$7F,$9F,$FF,$82,$01,$9E,$FF,$BF ; $C25DC8
    db $E3,$DE,$5F,$FE,$F7,$38,$8E,$FB,$54,$BB,$BD,$DB,$55,$AA,$FD,$8E ; $C25DD8
    db $71,$8B,$0A,$0E,$FF,$8F,$0E,$5E,$B9,$BF,$F8,$BE,$F9,$3F,$E7,$EF ; $C25DE8
    db $17,$7B,$07,$6B,$F7,$FB,$58,$3D,$E7,$D7,$B1,$38,$3F,$FD,$3F,$FC ; $C25DF8
    db $7F,$7C,$FF,$9C,$7F,$8C,$7F,$DF,$30,$5B,$B6,$57,$BE,$DF,$3E,$AE ; $C25E08
    db $5E,$E6,$9E,$86,$00,$CB,$0E,$FD,$0E,$F9,$1E,$D5,$3E,$77,$FA,$42 ; $C25E18
    db $BC,$B3,$CE,$4F,$F4,$BA,$FB,$5F,$05,$FF,$1F,$BF,$DF,$DF,$18,$9F ; $C25E28
    db $B8,$0A,$F3,$E8,$03,$F7,$FF,$FE,$F5,$FF,$7A,$B8,$33,$EE,$F4,$2F ; $C25E38
    db $3A,$0F,$50,$13,$7F,$20,$E0,$17,$FD,$02,$00,$AA,$55,$50,$AF,$80 ; $C25E48
    db $7F,$20,$DF,$55,$81,$23,$A5,$01,$FF,$3E,$A1,$BD,$0A,$5C,$40,$EF ; $C25E58
    db $01,$3D,$C2,$00,$63,$9E,$5F,$A2,$0B,$F4,$29,$FE,$7E,$54,$06,$C9 ; $C25E68
    db $80,$2D,$57,$00,$2A,$F8,$0A,$01,$78,$01,$02,$0B,$D5,$00,$7D,$A2 ; $C25E78
    db $02,$B2,$99,$20,$01,$BF,$00,$FF,$90,$03,$B9,$FF,$5C,$BA,$F3,$F8 ; $C25E88
    db $BF,$4B,$BE,$57,$BC,$CF,$B8,$DF,$B8,$CF,$BD,$DF,$B9,$EE,$B8,$D7 ; $C25E98
    db $C0,$E7,$F0,$F7,$F0,$F9,$F8,$01,$FA,$00,$00,$C2,$E2,$D2,$0E,$C0 ; $C25EA8
    db $BF,$10,$E3,$35,$28,$B9,$79,$06,$5A,$FF,$C2,$3F,$22,$CF,$18,$F8 ; $C25EB8
    db $BC,$F8,$03,$B5,$F0,$73,$B2,$03,$00,$01,$B7,$F0,$AB,$5D,$AB,$7E ; $C25EC8
    db $9F,$60,$F4,$D3,$95,$FF,$A2,$FF,$32,$B2,$FD,$ED,$36,$E9,$18,$15 ; $C25ED8
    db $31,$33,$31,$37,$71,$F3,$71,$77,$79,$73,$71,$F1,$FD,$D0,$2F,$D3 ; $C25EE8
    db $7E,$B1,$DE,$B1,$EF,$51,$AE,$51,$EF,$91,$CF,$01,$04,$67,$7F,$2D ; $C25EF8
    db $BD,$86,$01,$7F,$B9,$CF,$BE,$83,$78,$EF,$06,$7F,$02,$E2,$52,$72 ; $C25F08
    db $7F,$3C,$17,$76,$48,$37,$72,$02,$01,$1B,$7F,$77,$87,$81,$F8,$B2 ; $C25F18
    db $0E,$7D,$BB,$F0,$BD,$1F,$C7,$7F,$9A,$FF,$AF,$F5,$92,$FF,$AD,$FF ; $C25F28
    db $B0,$FF,$B4,$FF,$16,$18,$55,$89,$7F,$B7,$18,$7F,$F1,$7F,$F0,$CF ; $C25F38
    db $71,$93,$7F,$31,$47,$7F,$11,$9E,$09,$7F,$BB,$01,$7F,$77,$BA,$7C ; $C25F48
    db $83,$0A,$7F,$52,$99,$FF,$88,$D9,$01,$DA,$CC,$7D,$FF,$BC,$A6,$FF ; $C25F58
    db $03,$0C,$B0,$F0,$B4,$F0,$81,$BD,$85,$7F,$C2,$7C,$9F,$F7,$AB,$F7 ; $C25F68
    db $9F,$FD,$A3,$FF,$B5,$FF,$B2,$06,$FF,$11,$73,$7F,$59,$31,$7F,$23 ; $C25F78
    db $FF,$71,$D1,$01,$7F,$6D,$93,$C2,$01,$03,$06,$0F,$0C,$1D,$19,$1B ; $C25F88
    db $12,$3E,$31,$3A,$5C,$87,$3B,$06,$FF,$0D,$FB,$58,$09,$FF,$71,$3A ; $C25F98
    db $1F,$60,$70,$00,$90,$C0,$08,$A3,$0F,$5F,$3F,$BF,$BA,$7F,$74,$A8 ; $C25FA8
    db $13,$1D,$80,$7F,$B0,$E0,$E5,$A7,$DC,$1A,$B9,$70,$F5,$54,$BB,$20 ; $C25FB8
    db $35,$21,$3B,$27,$37,$27,$2F,$0E,$3F,$1F,$1F,$3E,$0F,$0D,$1F,$24 ; $C25FC8
    db $99,$35,$FB,$00,$23,$DE,$0A,$F5,$17,$EC,$06,$FD,$75,$05,$0A,$13 ; $C25FD8
    db $E0,$8B,$59,$78,$75,$B5,$B8,$45,$6F,$6A,$DF,$9C,$7F,$3A,$FF,$F4 ; $C25FE8
    db $7F,$69,$FF,$74,$1C,$B1,$00,$1D,$3F,$7F,$FD,$77,$6D,$40,$C0,$01 ; $C25FF8
    db $13,$2B,$DE,$5D,$04,$E2,$D5,$2F,$4F,$BF,$59,$4F,$83,$1D,$38,$00 ; $C26008
    db $C7,$E8,$FC,$06,$37,$8E,$BA,$41,$74,$87,$08,$55,$6F,$E3,$08,$8C ; $C26018
    db $6D,$45,$91,$F7,$03,$6D,$9E,$0A,$01,$08,$08,$11,$E2,$00,$54,$38 ; $C26028
    db $BE,$55,$FC,$7C,$EB,$01,$17,$14,$E9,$D5,$77,$56,$1F,$28,$01,$C0 ; $C26038
    db $B7,$00,$40,$00,$07,$20,$80,$10,$80,$00,$FB,$07,$4D,$E0,$08,$5F ; $C26048
    db $06,$FF,$11,$FF,$7C,$02,$03,$2E,$F7,$08,$1C,$A0,$08,$F0,$06,$E0 ; $C26058
    db $04,$F8,$02,$F0,$02,$F8,$03,$03,$77,$80,$AE,$B5,$A0,$F8,$2D,$30 ; $C26068
    db $FF,$58,$E9,$73,$4C,$58,$5F,$07,$00,$07,$0E,$0F,$1C,$1F,$18,$3F ; $C26078
    db $38,$48,$3F,$45,$07,$0C,$FB,$0A,$FD,$15,$03,$FF,$20,$2D,$D7,$1D ; $C26088
    db $E0,$8D,$81,$B3,$43,$47,$F0,$4C,$47,$77,$7F,$74,$A0,$B8,$B5,$B0 ; $C26098
    db $3F,$30,$E4,$33,$30,$03,$3B,$0C,$1F,$00,$03,$05,$01,$00,$12,$FF ; $C260A8
    db $1D,$BE,$79,$3D,$04,$D7,$1A,$F7,$0D,$FB,$08,$81,$02,$F0,$1C,$7B ; $C260B8
    db $04,$E8,$3B,$3A,$A0,$18,$F0,$80,$33,$74,$B0,$03,$BD,$F0,$FF,$A8 ; $C260C8
    db $FF,$20,$EE,$09,$EB,$03,$48,$FC,$B9,$08,$E3,$C3,$15,$B3,$C9,$90 ; $C260D8
    db $C1,$05,$1F,$E0,$0F,$04,$67,$07,$07,$04,$1D,$7B,$AA,$CE,$66,$23 ; $C260E8
    db $18,$05,$FB,$00,$5D,$F9,$02,$EB,$A6,$E1,$03,$EF,$77,$2A,$8E,$13 ; $C260F8
    db $38,$03,$1F,$2B,$FD,$9D,$FE,$2F,$AC,$B7,$0C,$16,$87,$37,$0F,$00 ; $C26108
    db $1E,$45,$3F,$EE,$A7,$18,$01,$F8,$0A,$C0,$06,$F9,$07,$FA,$0B,$F6 ; $C26118
    db $16,$ED,$9D,$F2,$0F,$75,$58,$FD,$B9,$02,$5D,$BB,$47,$B5,$29,$B3 ; $C26128
    db $E7,$F7,$85,$99,$03,$9D,$54,$F9,$07,$6B,$80,$5B,$6F,$BC,$3F,$E0 ; $C26138
    db $5F,$E4,$FF,$D0,$3B,$7F,$AA,$DF,$51,$02,$A4,$6F,$7E,$FF,$02,$03 ; $C26148
    db $57,$00,$29,$AE,$FB,$28,$2F,$8B,$47,$35,$7E,$8D,$52,$38,$C1,$31 ; $C26158
    db $CF,$00,$18,$87,$A2,$83,$A3,$C3,$43,$E7,$8A,$6E,$BE,$3F,$FA,$7F ; $C26168
    db $05,$FF,$23,$FF,$82,$7D,$83,$7E,$41,$BE,$B3,$5E,$7F,$C0,$18,$6B ; $C26178
    db $FF,$23,$AC,$05,$1C,$27,$FF,$67,$4F,$50,$77,$03,$A7,$79,$00,$FA ; $C26188
    db $25,$36,$E9,$E6,$1B,$3E,$E3,$53,$F4,$03,$ED,$18,$FF,$1D,$3B,$FF ; $C26198
    db $73,$46,$35,$03,$76,$71,$15,$85,$01,$C3,$3A,$E7,$F0,$3F,$7A,$A7 ; $C261A8
    db $D3,$3D,$D1,$3E,$D8,$37,$1F,$01,$E8,$3F,$08,$62,$3F,$40,$64,$EB ; $C261B8
    db $40,$DF,$03,$18,$67,$BF,$95,$04,$00,$2A,$0E,$FF,$E0,$9E,$1B,$03 ; $C261C8
    db $56,$AB,$FF,$01,$2A,$D5,$CF,$06,$1F,$AA,$01,$2B,$35,$55,$98,$2E ; $C261D8
    db $F8,$FD,$13,$C7,$11,$78,$8F,$02,$03,$91,$CF,$02,$03,$FC,$01,$FF ; $C261E8
    db $03,$FD,$C7,$03,$81,$62,$1B,$D0,$FF,$E7,$BC,$FF,$D8,$FD,$92,$F9 ; $C261F8
    db $C4,$F1,$80,$FE,$C1,$FB,$FA,$E5,$D0,$AF,$B4,$DF,$C8,$37,$90,$FF ; $C26208
    db $C0,$3F,$85,$9D,$C1,$3E,$43,$C3,$EF,$3F,$3F,$BC,$7E,$78,$7F,$38 ; $C26218
    db $FE,$70,$7D,$28,$0B,$03,$7C,$43,$BC,$86,$3F,$F8,$3C,$F3,$78,$A7 ; $C26228
    db $38,$E7,$70,$8F,$28,$F7,$03,$BA,$45,$83,$FF,$47,$FF,$0F,$7F,$0F ; $C26238
    db $3F,$5F,$BF,$5F,$3F,$7F,$3F,$BF,$7F,$83,$7D,$46,$BB,$0C,$F7,$09 ; $C26248
    db $FF,$11,$EF,$12,$FF,$A5,$C1,$1C,$E2,$C3,$08,$C1,$1C,$A2,$08,$41 ; $C26258
    db $1C,$83,$07,$1F,$3F,$7F,$C0,$04,$DF,$07,$FB,$30,$DF,$C5,$12,$7F ; $C26268
    db $00,$AB,$3C,$0D,$3F,$07,$FF,$3F,$38,$CA,$0A,$C5,$7F,$7E,$F5,$06 ; $C26278
    db $1D,$74,$FE,$B8,$B1,$5F,$06,$7F,$A0,$ED,$51,$FF,$06,$3F,$FD,$FF ; $C26288
    db $07,$71,$01,$02,$40,$D1,$D6,$D4,$9D,$10,$AF,$FF,$49,$2C,$55,$21 ; $C26298
    db $DC,$E0,$9F,$2D,$E1,$E3,$E1,$EF,$77,$E1,$3B,$43,$00,$83,$0F,$BF ; $C262A8
    db $4C,$BF,$0B,$DB,$C1,$FF,$A1,$8D,$FF,$F8,$F7,$FA,$5F,$1C,$FF,$30 ; $C262B8
    db $7C,$60,$F9,$60,$7C,$40,$79,$40,$38,$03,$0F,$EF,$33,$60,$DF,$01 ; $C262C8
    db $40,$84,$42,$40,$BF,$78,$BF,$F4,$3A,$FE,$5B,$93,$5D,$40,$FD,$38 ; $C262D8
    db $07,$FE,$5C,$FE,$06,$AB,$F4,$0B,$5B,$A4,$03,$EA,$47,$61,$AB,$FE ; $C262E8
    db $49,$63,$61,$7B,$02,$8C,$D6,$BA,$B1,$55,$07,$05,$A0,$00,$D4,$06 ; $C262F8
    db $72,$01,$02,$04,$FD,$7F,$95,$BA,$45,$EA,$2D,$F9,$70,$41,$01,$51 ; $C26308
    db $FD,$48,$C9,$03,$DD,$D0,$03,$57,$0E,$51,$EF,$C9,$77,$20,$03,$36 ; $C26318
    db $03,$FA,$B8,$61,$F7,$D4,$F7,$A2,$F7,$CF,$F7,$82,$E7,$8F,$F7,$0A ; $C26328
    db $03,$C7,$72,$CD,$78,$D4,$AB,$A2,$5D,$C7,$38,$82,$7F,$87,$78,$02 ; $C26338
    db $FF,$85,$7A,$D1,$DD,$F9,$DD,$F8,$DD,$AF,$DD,$29,$0D,$E7,$0D,$73 ; $C26348
    db $05,$0B,$01,$D1,$6F,$99,$E6,$58,$E7,$8D,$72,$09,$F6,$05,$FA,$01 ; $C26358
    db $FE,$D8,$01,$26,$0E,$1F,$B8,$EB,$5C,$BE,$3E,$3F,$7D,$BF,$1A,$BF ; $C26368
    db $9D,$9F,$8E,$DF,$01,$FF,$4A,$FD,$C3,$96,$3E,$D9,$3D,$D2,$1A,$F5 ; $C26378
    db $9D,$6A,$8E,$79,$08,$3B,$48,$3B,$4C,$3B,$09,$3B,$4D,$BB,$03,$70 ; $C26388
    db $49,$03,$4C,$F7,$0C,$0C,$F7,$08,$F7,$3D,$09,$E4,$05,$1D,$01,$00 ; $C26398
    db $59,$AB,$78,$63,$FC,$67,$FD,$01,$F8,$48,$9F,$78,$B7,$8C,$3A,$FB ; $C263A8
    db $04,$D0,$F3,$7C,$EB,$FC,$D3,$18,$78,$A7,$09,$33,$39,$09,$60,$7B ; $C263B8
    db $B7,$7D,$FB,$39,$F9,$0E,$3D,$FB,$18,$F9,$30,$33,$FF,$03,$C9,$7F ; $C263C8
    db $79,$00,$AF,$39,$FE,$39,$DE,$18,$FF,$F4,$E0,$33,$F0,$FD,$E8,$0E ; $C263D8
    db $FD,$D0,$F9,$E2,$06,$03,$A2,$8D,$F4,$CB,$33,$00,$F0,$CF,$E8,$97 ; $C263E8
    db $D0,$EF,$E0,$DF,$1D,$D0,$AF,$80,$4B,$3D,$E0,$BD,$A3,$2D,$1F,$FF ; $C263F8
    db $C8,$F9,$18,$F7,$60,$01,$DF,$87,$FB,$1A,$EF,$60,$BF,$1E,$3F,$9D ; $C26408
    db $02,$09,$9E,$C1,$23,$0F,$3F,$AA,$17,$05,$CA,$3F,$E8,$0E,$13,$FB ; $C26418
    db $FB,$F3,$03,$00,$FD,$FD,$DE,$DE,$FD,$AB,$0F,$80,$73,$23,$FB,$43 ; $C26428
    db $F1,$83,$F1,$07,$1D,$F3,$1E,$DE,$61,$60,$9F,$F7,$F7,$EF,$FF,$31 ; $C26438
    db $8C,$9C,$01,$18,$EF,$0C,$09,$33,$77,$83,$A1,$9C,$9C,$01,$19,$45 ; $C26448
    db $48,$5F,$D5,$F5,$02,$E4,$5C,$01,$5F,$E0,$9F,$FC,$F3,$BF,$D0,$41 ; $C26458
    db $2D,$3A,$FF,$97,$A0,$85,$9F,$EF,$1F,$4F,$7F,$0C,$0F,$37,$8F,$C2 ; $C26468
    db $AF,$F7,$31,$F0,$FA,$AD,$81,$7F,$80,$61,$07,$FE,$07,$FD,$C2,$3D ; $C26478
    db $D8,$27,$C7,$F8,$E7,$C0,$31,$BD,$BD,$7B,$FF,$63,$63,$E7,$01,$C7 ; $C26488
    db $7B,$9D,$09,$7C,$73,$05,$42,$19,$FF,$42,$E7,$01,$43,$CC,$09,$03 ; $C26498
    db $FC,$E8,$15,$1C,$7E,$7F,$3F,$00,$03,$DF,$FF,$EF,$EF,$DF,$DF,$17 ; $C264A8
    db $5B,$FE,$D9,$4B,$3E,$6D,$1F,$34,$2F,$36,$EF,$FA,$E7,$EB,$13,$FD ; $C264B8
    db $00,$07,$03,$08,$0F,$10,$17,$20,$23,$40,$42,$80,$02,$81,$02,$80 ; $C264C8
    db $76,$A5,$E7,$1C,$E7,$3C,$EB,$7C,$D7,$7C,$CF,$00,$F8,$A0,$04,$D2 ; $C264D8
    db $06,$62,$06,$D6,$06,$1E,$BE,$5E,$0E,$9E,$0E,$8B,$1B,$58,$F7,$87 ; $C264E8
    db $28,$FF,$98,$FF,$24,$FB,$1C,$EB,$2C,$F7,$6C,$F7,$38,$33,$01,$1E ; $C264F8
    db $07,$8E,$18,$9C,$02,$98,$75,$A4,$80,$00,$33,$7C,$C7,$6E,$D7,$07 ; $C26508
    db $79,$D7,$61,$DE,$77,$01,$01,$8E,$0E,$0E,$1E,$7E,$AE,$83,$58,$FE ; $C26518
    db $F6,$FE,$E6,$F6,$86,$CE,$C6,$FE,$6C,$DF,$6C,$9F,$7C,$9F,$84,$7F ; $C26528
    db $F4,$FF,$E4,$05,$FF,$C4,$67,$BF,$7F,$08,$00,$7D,$2F,$40,$0F,$00 ; $C26538
    db $47,$80,$72,$03,$3F,$25,$77,$08,$D7,$C3,$66,$30,$01,$DF,$0B,$5C ; $C26548
    db $5F,$7A,$F2,$20,$F0,$98,$1C,$C6,$02,$E6,$03,$EF,$1F,$E3,$37,$A7 ; $C26558
    db $27,$2F,$C2,$17,$78,$E7,$E1,$2A,$FD,$0A,$FD,$0F,$F1,$23,$DF,$26 ; $C26568
    db $DB,$AE,$57,$94,$B1,$22,$01,$80,$7B,$31,$81,$13,$04,$83,$5D,$FB ; $C26578
    db $5D,$FF,$80,$01,$1D,$FE,$4D,$FE,$6F,$40,$FC,$F9,$7F,$7F,$01,$67 ; $C26588
    db $77,$47,$77,$0F,$4F,$FF,$D2,$9B,$BE,$2E,$DF,$BE,$5A,$F5,$CE,$B3 ; $C26598
    db $E6,$DD,$C6,$FB,$8E,$F5,$FE,$3B,$5E,$A9,$BA,$F0,$B6,$A1,$8B,$D1 ; $C265A8
    db $A1,$39,$E9,$C1,$23,$40,$11,$00,$21,$40,$B4,$CF,$E8,$DF,$85,$FE ; $C265B8
    db $8D,$FB,$0D,$FF,$1C,$FF,$2E,$FB,$1E,$F1,$C3,$E7,$F9,$C3,$E1,$AE ; $C265C8
    db $04,$39,$CF,$4F,$4F,$CE,$CF,$DE,$8F,$DE,$EE,$C3,$FF,$C1,$BF,$D9 ; $C265D8
    db $AE,$D7,$46,$3C,$72,$DE,$B9,$8E,$FD,$CE,$39,$01,$60,$70,$70,$7C ; $C265E8
    db $78,$F8,$78,$FA,$78,$7E,$7C,$FE,$7C,$CB,$00,$0E,$86,$FB,$77,$ED ; $C265F8
    db $0B,$F4,$5B,$FE,$2D,$FE,$5D,$FA,$3D,$85,$5E,$FE,$F0,$DC,$6F,$4E ; $C26608
    db $6E,$8C,$6F,$0E,$2E,$0C,$2F,$4E,$3E,$2E,$1F,$0E,$1E,$4C,$BF,$4E ; $C26618
    db $B9,$0C,$FF,$8E,$F9,$8C,$7F,$86,$7D,$CE,$7D,$C6,$3F,$B4,$F0,$82 ; $C26628
    db $B1,$A7,$D1,$15,$01,$B3,$C1,$02,$C0,$21,$00,$30,$40,$BB,$CF,$8C ; $C26638
    db $FB,$89,$FE,$89,$FF,$81,$3C,$FF,$1E,$3C,$F7,$0F,$01,$7F,$CF,$63 ; $C26648
    db $8F,$7F,$5E,$4F,$C6,$02,$7F,$9F,$FC,$7F,$32,$CE,$BD,$7F,$00,$62 ; $C26658
    db $7F,$F8,$7C,$40,$7F,$0F,$F9,$77,$EC,$83,$7F,$2B,$00,$7F,$FB,$3D ; $C26668
    db $FE,$5F,$FD,$5C,$EF,$C4,$7F,$4C,$2F,$84,$7F,$0E,$3F,$8C,$7F,$8C ; $C26678
    db $7F,$79,$DC,$03,$7F,$00,$FD,$C6,$7F,$A2,$F0,$86,$F1,$DB,$C0,$FE ; $C26688
    db $C1,$92,$C0,$22,$41,$72,$00,$FF,$E3,$AC,$D7,$88,$FF,$85,$FA,$8D ; $C26698
    db $FF,$AD,$FE,$9C,$FB,$3E,$EF,$1E,$FB,$E3,$01,$7F,$CF,$8E,$3C,$FD ; $C266A8
    db $CF,$03,$FF,$BC,$3C,$DE,$F9,$06,$7F,$7C,$90,$7F,$F1,$77,$06,$EA ; $C266B8
    db $0B,$F5,$5B,$FC,$7F,$6C,$5F,$FF,$83,$FF,$84,$7F,$0F,$FF,$2C,$0F ; $C266C8
    db $02,$51,$7F,$FF,$FF,$4B,$FF,$AF,$7F,$1F,$1F,$18,$19,$19,$31,$33 ; $C266D8
    db $33,$3F,$7F,$3C,$7C,$7B,$78,$76,$78,$17,$EC,$18,$F7,$01,$FF,$22 ; $C266E8
    db $FD,$19,$FF,$1C,$F3,$58,$B7,$50,$FA,$05,$AB,$40,$11,$7F,$60,$7F ; $C266F8
    db $F7,$79,$50,$7D,$57,$54,$D0,$A3,$5C,$00,$BF,$68,$DF,$74,$70,$34 ; $C26708
    db $70,$30,$3B,$78,$39,$00,$E5,$3D,$3F,$1E,$3F,$1C,$1F,$50,$EB,$30 ; $C26718
    db $9F,$01,$29,$FF,$2C,$01,$D7,$2D,$DA,$0E,$F1,$0C,$FB,$9D,$31,$60 ; $C26728
    db $2F,$E1,$E0,$01,$F8,$E9,$2C,$DF,$2A,$18,$DF,$AC,$5F,$37,$D4,$BF ; $C26738
    db $73,$38,$43,$00,$17,$01,$F0,$04,$E0,$00,$C4,$06,$3A,$80,$20,$1C ; $C26748
    db $3F,$40,$01,$22,$06,$FF,$1D,$7D,$20,$75,$05,$C0,$7C,$07,$90,$3F ; $C26758
    db $06,$08,$1F,$04,$0F,$06,$01,$00,$07,$03,$0F,$02,$07,$07,$0F,$10 ; $C26768
    db $3A,$EF,$08,$80,$01,$0E,$FD,$06,$FB,$75,$0B,$22,$AD,$0D,$FA,$40 ; $C26778
    db $22,$79,$BC,$57,$75,$07,$09,$81,$02,$D2,$93,$A0,$EA,$41,$BB,$26 ; $C26788
    db $FB,$51,$FE,$02,$B8,$27,$33,$0E,$DD,$E4,$42,$7F,$FA,$BD,$03,$D8 ; $C26798
    db $3B,$37,$1A,$FD,$02,$37,$FC,$CC,$7B,$3A,$E5,$3D,$03,$FF,$18,$00 ; $C267A8
    db $BF,$01,$F4,$02,$F8,$01,$FC,$41,$01,$03,$FA,$07,$03,$34,$4B,$7B ; $C267B8
    db $3C,$A9,$3F,$75,$1C,$5D,$83,$1C,$6F,$05,$BD,$0D,$33,$04,$0B,$34 ; $C267C8
    db $37,$C7,$43,$F8,$1C,$7E,$A5,$45,$03,$B8,$3C,$03,$12,$3F,$02,$9B ; $C267D8
    db $03,$80,$01,$E3,$01,$C1,$21,$C3,$07,$23,$C3,$03,$C7,$0E,$67,$1D ; $C267E8
    db $55,$67,$1D,$51,$00,$E5,$42,$FD,$81,$FE,$0A,$F7,$F3,$08,$3B,$09 ; $C267F8
    db $8E,$33,$03,$A5,$BB,$03,$54,$B8,$C3,$08,$AB,$18,$0C,$E6,$00,$C2 ; $C26808
    db $03,$01,$E6,$00,$1F,$FE,$0D,$FC,$03,$FC,$65,$FB,$76,$A2,$75,$70 ; $C26818
    db $C2,$01,$B6,$FD,$14,$4C,$F3,$A8,$A1,$B8,$67,$02,$E8,$05,$D1,$0A ; $C26828
    db $A3,$0C,$C6,$14,$84,$30,$84,$39,$2C,$1D,$DD,$D1,$68,$59,$C4,$FF ; $C26838
    db $04,$6E,$FB,$65,$B5,$FD,$10,$70,$C0,$E0,$18,$84,$10,$08,$10,$04 ; $C26848
    db $20,$08,$20,$10,$C0,$2F,$10,$EF,$C8,$BF,$04,$46,$FF,$85,$74,$08 ; $C26858
    db $5C,$09,$70,$63,$00,$59,$3B,$E6,$32,$A1,$20,$50,$40,$B2,$0A,$02 ; $C26868
    db $54,$00,$28,$1F,$19,$F6,$22,$00,$FD,$24,$DF,$48,$BF,$0A,$FD,$55 ; $C26878
    db $E8,$27,$60,$40,$11,$50,$80,$20,$00,$12,$48,$00,$20,$B1,$E9,$A8 ; $C26888
    db $CC,$33,$BF,$C8,$FB,$01,$17,$7B,$0C,$0E,$1E,$10,$39,$20,$30,$24 ; $C26898
    db $26,$09,$28,$02,$08,$05,$1D,$1F,$0C,$F7,$81,$FD,$DF,$24,$DB,$08 ; $C268A8
    db $F7,$2C,$CD,$78,$5C,$FF,$B6,$1E,$3F,$47,$1F,$23,$0F,$31,$07,$21 ; $C268B8
    db $0B,$20,$05,$50,$0A,$18,$F7,$1E,$ED,$15,$FA,$5B,$7D,$70,$1B,$E5 ; $C268C8
    db $2A,$FF,$5A,$03,$DB,$A0,$3F,$00,$07,$61,$0F,$33,$00,$0A,$00,$B2 ; $C268D8
    db $03,$B7,$04,$47,$1E,$C5,$5D,$D3,$05,$D0,$61,$04,$FB,$07,$1D,$5B ; $C268E8
    db $C0,$43,$E7,$E0,$AD,$9B,$8F,$2E,$5B,$1F,$72,$FF,$A8,$7F,$D5,$BF ; $C268F8
    db $58,$AF,$A5,$DF,$3E,$EF,$0C,$9E,$9F,$40,$01,$05,$EB,$5D,$CD,$7F ; $C26908
    db $68,$CB,$7F,$38,$BF,$EB,$46,$81,$BF,$1C,$1F,$01,$2E,$57,$EF,$1B ; $C26918
    db $DE,$A7,$17,$FF,$AE,$F7,$2B,$D7,$8B,$F7,$1D,$FB,$01,$DD,$0A,$3B ; $C26928
    db $4C,$39,$71,$F7,$C7,$03,$C8,$18,$03,$03,$43,$E0,$B0,$0E,$81,$C0 ; $C26938
    db $9F,$C0,$A0,$4B,$00,$3F,$C1,$03,$03,$FD,$80,$7F,$24,$01,$80,$2F ; $C26948
    db $F8,$FE,$B8,$FD,$74,$36,$FE,$A8,$67,$03,$17,$FD,$70,$F8,$08,$E0 ; $C26958
    db $F8,$F8,$C7,$B8,$47,$74,$8B,$A8,$57,$70,$8F,$01,$03,$E0,$1F,$4F ; $C26968
    db $1F,$F7,$07,$80,$00,$47,$1F,$87,$3F,$07,$3F,$31,$87,$7F,$03,$0F ; $C26978
    db $F0,$87,$D9,$F3,$FF,$83,$4A,$0D,$03,$3A,$A7,$FF,$5D,$F0,$A0,$F0 ; $C26988
    db $C1,$F9,$E1,$F3,$C3,$EB,$C3,$F7,$C7,$E7,$87,$CF,$8F,$EF,$F0,$AF ; $C26998
    db $C1,$FE,$E1,$9F,$C2,$7D,$C2,$BF,$C5,$3B,$85,$7F,$8B,$77,$21,$FE ; $C269A8
    db $50,$7D,$21,$2B,$AF,$3A,$0F,$5F,$9E,$80,$B8,$DF,$50,$AF,$21,$03 ; $C269B8
    db $DE,$02,$FD,$04,$FB,$08,$B8,$47,$1F,$65,$BF,$7F,$01,$4B,$59,$FC ; $C269C8
    db $A9,$1F,$75,$F3,$10,$F3,$99,$8D,$9B,$9C,$67,$89,$05,$F0,$08,$00 ; $C269D8
    db $DE,$7F,$BF,$B9,$F7,$FD,$7E,$EB,$FE,$F7,$FC,$EB,$FC,$C7,$F9,$A7 ; $C269E8
    db $F9,$4E,$F7,$FF,$EF,$FF,$CF,$FF,$DF,$FF,$9F,$FF,$BF,$F0,$E3,$01 ; $C269F8
    db $94,$EF,$28,$E8,$B3,$18,$50,$BF,$84,$FB,$7F,$49,$3F,$BF,$50,$3D ; $C26A08
    db $E0,$FF,$FD,$FF,$F6,$F6,$E3,$45,$E3,$04,$03,$BD,$FD,$7F,$FF,$00 ; $C26A18
    db $CF,$46,$F6,$83,$E1,$03,$F1,$23,$18,$F1,$3D,$E3,$1D,$9C,$9C,$7D ; $C26A28
    db $EF,$03,$19,$03,$33,$18,$4B,$0F,$51,$03,$FF,$3A,$FF,$1F,$E7,$E7 ; $C26A38
    db $7B,$03,$40,$03,$01,$FF,$C4,$A5,$0F,$A8,$03,$97,$C8,$FF,$BF,$BF ; $C26A48
    db $FC,$07,$51,$03,$9D,$5B,$7E,$F0,$FF,$9F,$B4,$2F,$36,$0D,$2F,$3A ; $C26A58
    db $37,$3B,$BA,$70,$86,$C1,$C2,$E0,$E1,$F0,$F0,$F8,$A1,$F8,$00,$F4 ; $C26A68
    db $EE,$18,$FF,$54,$F5,$C0,$BF,$0B,$E0,$BF,$F0,$4F,$55,$99,$C5,$72 ; $C26A78
    db $CF,$46,$E7,$2B,$67,$82,$33,$45,$13,$A5,$19,$66,$09,$B0,$00,$C5 ; $C26A88
    db $3E,$46,$B9,$23,$ED,$9F,$14,$D6,$DB,$1F,$47,$A8,$80,$9C,$20,$80 ; $C26A98
    db $02,$C0,$90,$07,$C0,$C5,$E0,$88,$E0,$C3,$03,$D3,$7F,$AD,$A1,$2E ; $C26AA8
    db $7F,$69,$3D,$00,$B2,$00,$5A,$00,$BC,$00,$1A,$00,$AC,$00,$06,$00 ; $C26AB8
    db $D3,$08,$12,$57,$21,$85,$67,$EF,$45,$1D,$03,$41,$2E,$85,$1C,$A4 ; $C26AC8
    db $B3,$1A,$F9,$01,$1B,$FD,$19,$FD,$1D,$FD,$99,$84,$B7,$FD,$18,$EF ; $C26AD8
    db $2E,$01,$38,$19,$EF,$10,$EF,$1C,$EB,$90,$7F,$AC,$5B,$C8,$99,$8A ; $C26AE8
    db $BD,$88,$B9,$03,$8A,$B9,$00,$9A,$F9,$FE,$F9,$FA,$F9,$88,$F7,$46 ; $C26AF8
    db $88,$3B,$E1,$5F,$90,$EF,$76,$E8,$FF,$F8,$97,$79,$FF,$7D,$7F,$79 ; $C26B08
    db $7F,$FD,$7F,$7A,$7F,$3D,$7F,$BA,$3F,$5D,$3F,$68,$BF,$4D,$F3,$59 ; $C26B18
    db $FF,$4D,$F2,$DA,$BD,$AD,$F2,$3A,$FD,$8D,$F2,$C0,$33,$D2,$F9,$A4 ; $C26B28
    db $F1,$8C,$19,$E3,$18,$87,$31,$3C,$B0,$5D,$31,$07,$D0,$2F,$D2,$DB ; $C26B38
    db $F4,$37,$3C,$C3,$C6,$0F,$71,$73,$00,$1C,$61,$61,$40,$00,$D0,$C6 ; $C26B48
    db $03,$07,$61,$33,$63,$71,$21,$3B,$0F,$D4,$6E,$00,$0C,$03,$CC,$DC ; $C26B58
    db $00,$48,$42,$48,$1F,$40,$23,$48,$DC,$58,$CC,$91,$0F,$00,$27,$23 ; $C26B68
    db $9E,$17,$00,$40,$08,$23,$F0,$07,$0F,$63,$E3,$E3,$0A,$E7,$43,$43 ; $C26B78
    db $41,$38,$00,$01,$00,$43,$10,$E7,$C3,$67,$0F,$71,$01,$01,$00,$C6 ; $C26B88
    db $0F,$1B,$00,$38,$3B,$17,$00,$07,$10,$07,$03,$03,$1F,$38,$13,$39 ; $C26B98
    db $01,$17,$05,$03,$17,$01,$07,$01,$37,$0F,$00,$BD,$07,$5F,$07,$0F ; $C26BA8
    db $27,$23,$94,$02,$00,$00,$03,$F5,$03,$01,$CB,$88,$0D,$9F,$60,$80 ; $C26BB8
    db $23,$87,$47,$97,$2F,$17,$4E,$17,$0E,$10,$77,$DC,$4D,$FB,$0C,$AC ; $C26BC8
    db $97,$00,$2F,$FF,$47,$FE,$26,$F9,$61,$FF,$EA,$40,$BA,$FE,$3E,$3E ; $C26BD8
    db $DE,$FE,$DE,$06,$FF,$1F,$DF,$5F,$1F,$00,$01,$FC,$C7,$FC,$F7,$38 ; $C26BE8
    db $DF,$50,$DC,$8B,$7D,$05,$FE,$2E,$A7,$FF,$CE,$F9,$17,$10,$1B,$9F ; $C26BF8
    db $13,$91,$07,$91,$23,$51,$07,$51,$03,$31,$07,$1F,$70,$EF,$7B,$E5 ; $C26C08
    db $7D,$E6,$29,$FF,$0C,$6C,$E7,$21,$06,$00,$FF,$BB,$3F,$FB,$FF,$BF ; $C26C18
    db $3F,$1F,$E9,$5E,$1D,$1E,$3F,$3C,$52,$AB,$2A,$DD,$ED,$8A,$FD,$2E ; $C26C28
    db $DB,$0E,$FB,$ED,$BB,$0A,$FF,$A4,$DF,$18,$FF,$12,$83,$03,$87,$00 ; $C26C38
    db $83,$00,$81,$13,$80,$01,$83,$12,$82,$02,$80,$6E,$FD,$63,$FC,$6C ; $C26C48
    db $FF,$03,$01,$6D,$FE,$00,$0B,$6D,$FF,$AF,$FF,$0F,$EF,$1F,$0D,$EF ; $C26C58
    db $0F,$CF,$CF,$7E,$DF,$45,$C1,$02,$AE,$5B,$0E,$F9,$8C,$3D,$0E,$FD ; $C26C68
    db $03,$1E,$31,$F5,$9E,$07,$F5,$10,$56,$00,$35,$43,$90,$40,$F0,$29 ; $C26C78
    db $70,$11,$0E,$38,$0F,$1F,$6E,$3B,$39,$6E,$A0,$43,$4E,$BF,$26,$DF ; $C26C88
    db $16,$0C,$ED,$0E,$FF,$9F,$33,$9F,$C0,$7B,$9F,$9F,$1F,$BF,$1E,$0E ; $C26C98
    db $9F,$9C,$BF,$F0,$8C,$B1,$3F,$EE,$06,$B1,$8E,$7B,$0D,$F7,$7F,$0E ; $C26CA8
    db $84,$7F,$10,$FF,$A0,$B2,$7E,$7D,$61,$7E,$00,$3F,$7E,$7F,$C6,$03 ; $C26CB8
    db $3E,$0B,$00,$FF,$5D,$BF,$7C,$FF,$5F,$BD,$3E,$30,$F5,$7E,$03,$FD ; $C26CC8
    db $3E,$D5,$0D,$3E,$1F,$3E,$1E,$01,$86,$00,$2E,$1E,$0E,$03,$65,$0E ; $C26CD8
    db $00,$DA,$C7,$6D,$D6,$AF,$D2,$6D,$F6,$EF,$C2,$FF,$E6,$BF,$CA,$FF ; $C26CE8
    db $E2,$FF,$3E,$8B,$33,$36,$87,$7E,$3C,$7E,$34,$76,$35,$7E,$10,$76 ; $C26CF8
    db $00,$77,$3F,$00,$33,$36,$E9,$3C,$D7,$34,$EB,$06,$34,$CB,$10,$EF ; $C26D08
    db $28,$1F,$00,$0E,$5E,$0E,$B6,$06,$56,$0E,$F6,$CC,$05,$0F,$03,$F6 ; $C26D18
    db $60,$07,$33,$AA,$F7,$4A,$FF,$70,$A6,$87,$47,$FF,$0D,$06,$FB,$07 ; $C26D28
    db $FD,$7E,$9C,$7D,$7C,$7B,$78,$3E,$01,$7F,$5C,$BF,$C3,$03,$5E,$BD ; $C26D38
    db $3F,$CE,$03,$7F,$1E,$20,$81,$0E,$81,$0E,$51,$2E,$7F,$F2,$CC,$03 ; $C26D48
    db $79,$C6,$3B,$7F,$EA,$FE,$45,$01,$7F,$30,$72,$34,$7F,$75,$00,$7E ; $C26D58
    db $4C,$3E,$7F,$31,$61,$EF,$7F,$12,$EF,$20,$8E,$49,$0E,$BE,$73,$81 ; $C26D68
    db $7D,$60,$03,$7F,$06,$D6,$07,$AA,$18,$FF,$4A,$F7,$81,$06,$FF,$75 ; $C26D78
    db $42,$C2,$A1,$0E,$FB,$27,$FD,$1C,$FF,$01,$2B,$7C,$3F,$61,$03,$01 ; $C26D88
    db $7D,$FE,$5D,$C3,$7F,$5F,$BF,$3C,$FF,$7F,$09,$FF,$0E,$82,$FF,$AD ; $C26D98
    db $E1,$D6,$6F,$D2,$AD,$F6,$6F,$C2,$BF,$E6,$FF,$EA,$BF,$E0,$04,$FF ; $C26DA8
    db $30,$7A,$10,$66,$1E,$00,$7F,$3E,$02,$FF,$77,$CF,$50,$FD,$FF,$36 ; $C26DB8
    db $CE,$81,$56,$38,$7F,$56,$FF,$B6,$66,$07,$B3,$EA,$FF,$38,$F7,$A6 ; $C26DC8
    db $7F,$A7,$E0,$FF,$47,$FD,$1C,$12,$3F,$18,$1F,$38,$03,$1A,$03,$16 ; $C26DD8
    db $00,$1F,$0D,$FB,$09,$FF,$1D,$FB,$19,$C6,$03,$EB,$1A,$1B,$1F,$EB ; $C26DE8
    db $16,$FD,$08,$D7,$BF,$50,$75,$B3,$48,$C1,$03,$C0,$FF,$A8,$45,$03 ; $C26DF8
    db $17,$C3,$37,$13,$17,$11,$1B,$08,$18,$08,$0C,$04,$04,$00,$BE,$8C ; $C26E08
    db $17,$04,$EC,$13,$FE,$11,$EF,$78,$39,$04,$7F,$FB,$02,$C0,$5D,$40 ; $C26E18
    db $FF,$34,$7F,$20,$0A,$89,$0F,$77,$52,$C0,$5F,$9D,$7F,$46,$BF,$34 ; $C26E28
    db $CB,$3E,$40,$FF,$18,$97,$7B,$80,$9E,$17,$1F,$20,$05,$0D,$1D,$13 ; $C26E38
    db $07,$04,$23,$5A,$25,$FF,$8A,$B8,$65,$77,$AE,$4F,$A1,$03,$FC,$08 ; $C26E48
    db $06,$2F,$F9,$FC,$5E,$00,$17,$1D,$44,$FF,$11,$D0,$3F,$D5,$FF,$7B ; $C26E58
    db $FF,$3D,$F8,$E7,$10,$59,$1D,$77,$71,$04,$43,$0A,$80,$09,$F4,$03 ; $C26E68
    db $F8,$02,$F0,$05,$E2,$03,$04,$07,$03,$F0,$54,$52,$B3,$10,$E3,$03 ; $C26E78
    db $50,$83,$03,$70,$FF,$F0,$C1,$02,$33,$FA,$00,$D4,$17,$CC,$DF,$7F ; $C26E88
    db $0B,$3B,$FF,$57,$AE,$47,$FA,$B2,$DD,$BD,$E1,$00,$E0,$0C,$C0,$08 ; $C26E98
    db $A0,$18,$40,$30,$2A,$80,$C0,$AA,$0F,$E0,$FB,$FD,$40,$C4,$02,$DB ; $C26EA8
    db $FE,$00,$5D,$C9,$FE,$6A,$73,$F5,$75,$23,$AE,$5D,$12,$E0,$07,$13 ; $C26EB8
    db $FE,$04,$E0,$7F,$C3,$38,$12,$18,$1C,$1B,$18,$03,$19,$38,$02,$31 ; $C26EC8
    db $FC,$F9,$F8,$70,$FC,$29,$7F,$75,$18,$26,$23,$08,$F7,$FD,$0F,$98 ; $C26ED8
    db $77,$70,$8F,$0A,$B1,$3B,$04,$F6,$05,$60,$7F,$97,$08,$EC,$1C,$FE ; $C26EE8
    db $42,$0C,$67,$74,$00,$7F,$B8,$F7,$54,$FB,$2C,$F3,$94,$E3,$5B,$24 ; $C26EF8
    db $98,$03,$91,$60,$74,$B8,$63,$44,$60,$44,$42,$84,$41,$08,$42,$94 ; $C26F08
    db $01,$C0,$02,$21,$64,$BF,$19,$23,$42,$BF,$43,$06,$56,$51,$4B,$B4 ; $C26F18
    db $80,$57,$37,$52,$10,$05,$79,$97,$40,$DA,$05,$1F,$05,$00,$03,$80 ; $C26F28
    db $09,$C4,$02,$70,$01,$0C,$1A,$08,$80,$04,$E0,$B0,$22,$01,$E8,$87 ; $C26F38
    db $19,$01,$EC,$04,$BF,$00,$90,$AB,$80,$73,$48,$C0,$E2,$00,$68,$00 ; $C26F48
    db $15,$EE,$D5,$37,$23,$39,$88,$FF,$82,$87,$E7,$15,$FF,$DD,$07,$3D ; $C26F58
    db $02,$FA,$09,$87,$47,$00,$08,$01,$03,$14,$00,$4A,$06,$16,$6F,$73 ; $C26F68
    db $1F,$03,$14,$AD,$7D,$38,$16,$F9,$95,$05,$03,$00,$2A,$01,$93,$03 ; $C26F78
    db $2F,$03,$1B,$04,$2C,$03,$10,$10,$A8,$19,$06,$2A,$FF,$91,$FE,$2B ; $C26F88
    db $1B,$CC,$E5,$FB,$0D,$0D,$2E,$AC,$09,$3D,$58,$06,$20,$88,$C9,$29 ; $C26F98
    db $01,$23,$07,$4F,$1F,$9E,$3F,$AC,$F7,$58,$83,$39,$88,$77,$05,$FE ; $C26FA8
    db $AD,$27,$0E,$FE,$0E,$F9,$0F,$F1,$13,$1C,$D2,$5F,$9D,$5C,$BF,$30 ; $C26FB8
    db $3A,$3F,$3C,$3F,$38,$7E,$07,$FC,$06,$F9,$15,$EB,$57,$8D,$7A,$6A ; $C26FC8
    db $04,$D5,$3D,$F3,$1C,$F7,$7C,$47,$A0,$3F,$04,$30,$7F,$F0,$FF,$60 ; $C26FD8
    db $52,$B3,$3F,$71,$40,$77,$29,$80,$03,$EF,$BA,$EF,$7C,$9F,$EA,$EA ; $C26FE8
    db $81,$E7,$73,$7C,$76,$F8,$F4,$F0,$81,$01,$D1,$F1,$D7,$FF,$0F,$C5 ; $C26FF8
    db $7B,$50,$C7,$AF,$50,$EF,$B0,$4F,$B8,$CF,$51,$AE,$F6,$29,$69,$FE ; $C27008
    db $D5,$FA,$30,$07,$53,$3F,$78,$7F,$70,$50,$E5,$D0,$AA,$4B,$F5,$32 ; $C27018
    db $DF,$86,$3C,$F7,$5A,$B7,$34,$EF,$62,$DF,$D4,$AF,$A8,$5F,$83,$8A ; $C27028
    db $54,$B3,$07,$03,$19,$06,$3F,$06,$03,$BE,$D4,$29,$5B,$FC,$03,$9B ; $C27038
    db $87,$FD,$89,$1D,$03,$8F,$DF,$73,$78,$BF,$3F,$10,$01,$7F,$7E,$01 ; $C27048
    db $B8,$E1,$FF,$8B,$7F,$17,$EF,$17,$FE,$2F,$DD,$2F,$FA,$5E,$BD,$4E ; $C27058
    db $BB,$5E,$23,$7E,$04,$FE,$C0,$03,$F6,$04,$6E,$04,$06,$F4,$04,$EE ; $C27068
    db $14,$64,$33,$20,$04,$FF,$03,$04,$48,$FB,$03,$7E,$EA,$5C,$1D,$FE ; $C27078
    db $03,$B2,$01,$E1,$2E,$F9,$9D,$7E,$BE,$79,$9D,$76,$BD,$FA,$9D,$77 ; $C27088
    db $C2,$03,$F3,$FE,$A9,$D9,$75,$FD,$2E,$DB,$FB,$2E,$01,$F3,$33,$FF ; $C27098
    db $F2,$8F,$F2,$1D,$E4,$1F,$E5,$3A,$C9,$3F,$DA,$7D,$CA,$77,$B0,$A6 ; $C270A8
    db $96,$3B,$85,$80,$00,$FC,$FC,$FA,$FA,$A8,$7F,$74,$90,$DC,$77,$32 ; $C270B8
    db $50,$FE,$20,$FE,$70,$FE,$A0,$FC,$70,$FA,$F7,$FF,$01,$E7,$02,$01 ; $C270C8
    db $EF,$C7,$FF,$E5,$EF,$EF,$CF,$FF,$D6,$EB,$B5,$6B,$E6,$FF,$A5,$DB ; $C270D8
    db $E6,$DF,$45,$FB,$EC,$97,$CD,$77,$8F,$33,$F8,$F8,$04,$09,$03,$E0 ; $C270E8
    db $FC,$50,$90,$03,$C0,$03,$01,$B8,$5E,$5E,$7D,$7F,$71,$73,$82,$01 ; $C270F8
    db $A3,$FD,$DE,$DE,$18,$09,$0F,$61,$3F,$31,$61,$33,$01,$A1,$7F,$A1 ; $C27108
    db $0F,$09,$F4,$02,$C9,$B9,$09,$F4,$02,$C9,$B9,$09,$E9,$02,$39,$3D ; $C27118
    db $09,$02,$39,$27,$09,$A4,$02,$39,$09,$F4,$02,$39,$96,$09,$A4,$B9 ; $C27128
    db $C6,$7B,$CE,$09,$7F,$5A,$09,$97,$B9,$42,$52,$C3,$46,$6C,$FB,$07 ; $C27138
    db $D3,$DF,$18,$FF,$1B,$3B,$01,$3F,$DF,$C0,$09,$FD,$FD,$19,$39,$EB ; $C27148
    db $06,$ED,$13,$FD,$13,$3B,$01,$B8,$E9,$1D,$FF,$ED,$EF,$31,$DD,$11 ; $C27158
    db $39,$63,$E3,$F0,$72,$BB,$BF,$7B,$FB,$07,$30,$09,$31,$74,$EF,$B9 ; $C27168
    db $49,$BF,$43,$00,$09,$19,$19,$05,$1D,$0D,$DD,$FD,$DD,$DD,$07,$20 ; $C27178
    db $09,$10,$39,$25,$37,$FD,$CC,$05,$33,$07,$01,$24,$80,$09,$CD,$F0 ; $C27188
    db $E6,$F0,$C5,$C0,$03,$F8,$E3,$F8,$F6,$F8,$0E,$F3,$F8,$F0,$F8,$A4 ; $C27198
    db $FD,$9F,$C0,$65,$7F,$03,$E0,$CF,$DF,$F0,$AF,$F0,$CF,$F2,$EF,$00 ; $C271A8
    db $04,$D1,$0C,$01,$06,$D1,$0E,$02,$06,$F2,$0E,$46,$07,$F2,$0F,$61 ; $C271B8
    db $B3,$7D,$60,$82,$03,$62,$FD,$02,$E3,$FD,$26,$F9,$02,$FF,$F1,$F8 ; $C271C8
    db $F5,$F0,$F0,$F6,$F2,$F7,$F2,$FE,$F6,$23,$03,$DF,$00,$33,$F0,$FF ; $C271D8
    db $F2,$ED,$F2,$FD,$F6,$70,$E9,$03,$F9,$47,$E0,$33,$07,$07,$C7,$70 ; $C271E8
    db $0F,$00,$1F,$2F,$EA,$0C,$3F,$27,$F8,$33,$67,$2E,$F8,$27,$DD,$FA ; $C271F8
    db $6F,$F4,$6F,$F6,$4F,$FC,$5F,$E6,$DE,$1F,$7F,$1F,$AF,$1F,$6F,$0F ; $C27208
    db $BE,$0F,$84,$0E,$B4,$0C,$15,$04,$1E,$F9,$9F,$EC,$47,$FE,$88,$FF ; $C27218
    db $4A,$F5,$64,$74,$29,$E4,$52,$B3,$FD,$B9,$74,$BC,$FD,$F8,$FD,$00 ; $C27228
    db $FD,$08,$0D,$1C,$1D,$38,$3F,$3C,$DB,$18,$FF,$BC,$5B,$F8,$DF,$97 ; $C27238
    db $83,$F7,$1C,$0E,$EB,$B8,$D7,$B4,$0E,$0C,$0E,$AE,$0E,$1E,$1E,$4E ; $C27248
    db $A0,$1B,$8F,$3F,$35,$9F,$5F,$33,$CA,$EC,$F7,$4E,$FD,$DE,$ED,$86 ; $C27258
    db $FF,$9F,$EE,$07,$FE,$1B,$EF,$34,$7D,$B8,$3F,$34,$7F,$81,$03,$7F ; $C27268
    db $B4,$7F,$F8,$85,$03,$FB,$38,$E7,$81,$03,$34,$FB,$78,$A7,$F4,$1A ; $C27278
    db $FA,$C1,$18,$00,$50,$A1,$F5,$A9,$5D,$AA,$F5,$6F,$C2,$DD,$FF,$FA ; $C27288
    db $F5,$4A,$76,$AD,$41,$00,$68,$D7,$20,$DF,$1A,$8A,$9D,$B3,$00,$02 ; $C27298
    db $C6,$89,$22,$80,$1B,$1A,$F5,$10,$7B,$EF,$18,$5D,$E9,$0A,$BF,$B2 ; $C272A8
    db $01,$74,$F9,$CB,$01,$5F,$00,$2B,$90,$63,$00,$94,$0E,$5A,$AA,$A4 ; $C272B8
    db $C1,$03,$03,$88,$1F,$55,$EB,$21,$D5,$AE,$9F,$03,$51,$A7,$1F,$55 ; $C272C8
    db $30,$21,$13,$12,$23,$B9,$F5,$22,$8D,$06,$0A,$0D,$74,$F8,$08,$00 ; $C272D8
    db $48,$E0,$E0,$80,$1E,$05,$3A,$15,$74,$CB,$E8,$37,$71,$8F,$03,$80 ; $C272E8
    db $01,$9E,$FF,$CF,$4F,$5F,$1D,$7F,$0F,$9F,$8E,$B8,$3F,$3E,$A0,$22 ; $C272F8
    db $FE,$FE,$60,$7F,$0B,$EF,$6F,$DF,$FF,$0E,$BE,$DF,$BE,$BE,$A8,$0D ; $C27308
    db $FE,$FD,$05,$09,$83,$13,$87,$BF,$80,$00,$BE,$BF,$B0,$BC,$79,$BF ; $C27318
    db $6B,$63,$08,$9F,$CF,$3F,$FF,$3F,$DB,$3F,$EF,$3E,$D5,$B0,$EF,$FC ; $C27328
    db $FC,$F9,$FC,$F0,$F8,$E2,$F0,$C4,$E0,$8A,$80,$14,$1D,$CF,$FC,$C9 ; $C27338
    db $71,$F0,$FF,$1D,$85,$9F,$9F,$61,$17,$EF,$3F,$80,$1D,$1F,$80,$00 ; $C27348
    db $C0,$00,$E0,$00,$77,$F0,$0F,$BF,$FC,$28,$00,$3F,$60,$70,$88,$C0 ; $C27358
    db $8B,$80,$1C,$3A,$80,$70,$E0,$FA,$21,$00,$18,$60,$60,$39,$DF,$80 ; $C27368
    db $99,$87,$FB,$0E,$FF,$1C,$70,$9B,$19,$C7,$07,$10,$DF,$77,$34,$08 ; $C27378
    db $1B,$97,$0F,$1F,$F2,$9E,$80,$33,$AA,$FF,$FD,$CF,$66,$23,$BF,$D0 ; $C27388
    db $90,$8B,$FE,$40,$02,$01,$06,$03,$81,$01,$81,$03,$00,$5C,$07,$F0 ; $C27398
    db $03,$2F,$FF,$07,$23,$3C,$C3,$7D,$F3,$7C,$EB,$7C,$F3,$FE,$E9,$FA ; $C273A8
    db $F7,$28,$DF,$DA,$B7,$FE,$FF,$FB,$FF,$F0,$E3,$F3,$24,$F7,$E7,$01 ; $C273B8
    db $00,$0E,$F9,$18,$F7,$36,$FF,$2E,$FF,$33,$6C,$DF,$69,$E0,$80,$03 ; $C273C8
    db $A8,$00,$D4,$00,$58,$30,$00,$A4,$BE,$F0,$F3,$F9,$14,$F1,$FD,$82 ; $C273D8
    db $5F,$B8,$62,$A0,$FF,$58,$FF,$26,$FF,$B0,$FF,$71,$EF,$82,$7D,$B0 ; $C273E8
    db $50,$00,$E1,$38,$00,$54,$40,$4A,$C0,$84,$B0,$51,$38,$19,$1E,$6F ; $C273F8
    db $C7,$45,$C0,$C1,$90,$6F,$D8,$AF,$03,$D0,$71,$C4,$9D,$EC,$B8,$3E ; $C27408
    db $00,$F8,$69,$F2,$00,$7C,$C7,$21,$DF,$22,$14,$EF,$FA,$7F,$6D,$E1 ; $C27418
    db $04,$1E,$08,$0F,$2C,$0F,$8B,$2F,$0D,$CF,$8F,$4F,$D2,$83,$4F,$5C ; $C27428
    db $E4,$39,$FF,$E8,$DF,$CC,$FF,$1B,$EE,$3D,$EE,$3F,$EF,$BF,$01,$80 ; $C27438
    db $B1,$21,$03,$21,$01,$83,$01,$74,$80,$17,$4A,$04,$00,$0C,$41,$00 ; $C27448
    db $DA,$B5,$FC,$F7,$3D,$FF,$5D,$BA,$5E,$FF,$01,$5B,$2E,$FF,$1E,$1D ; $C27458
    db $FF,$E4,$E4,$E2,$F2,$F4,$F0,$E0,$F8,$F0,$F5,$E0,$F0,$FD,$58,$7F ; $C27468
    db $E4,$DC,$03,$62,$DE,$F0,$CF,$63,$DF,$17,$03,$A0,$7F,$1E,$30,$FF ; $C27478
    db $18,$E7,$0A,$20,$14,$20,$1C,$E1,$08,$12,$0D,$0C,$06,$04,$11,$40 ; $C27488
    db $04,$15,$FE,$D3,$3A,$01,$0C,$97,$7F,$02,$7D,$3F,$27,$1E,$01,$1D ; $C27498
    db $00,$C5,$1F,$0B,$2F,$05,$9B,$03,$BF,$03,$18,$19,$3F,$DF,$BB,$05 ; $C274A8
    db $FA,$24,$0B,$F4,$03,$5C,$3F,$B2,$FF,$5A,$7F,$20,$F5,$40,$EA,$40 ; $C274B8
    db $C0,$A8,$C0,$55,$80,$FA,$80,$3F,$CF,$5A,$B5,$20,$21,$BF,$5E,$E1 ; $C274C8
    db $E7,$03,$F0,$80,$86,$70,$80,$2D,$9F,$19,$BD,$11,$3D,$81,$33,$03 ; $C274D8
    db $3F,$83,$EF,$00,$51,$F8,$7F,$45,$FF,$49,$F7,$47,$11,$D8,$9D,$FD ; $C274E8
    db $5F,$25,$80,$00,$81,$80,$03,$87,$87,$A7,$0F,$D7,$CE,$03,$8F,$2E ; $C274F8
    db $03,$18,$18,$FF,$9E,$7F,$0B,$FF,$AF,$7C,$57,$FC,$A7,$7C,$D7,$03 ; $C27508
    db $FC,$9F,$B8,$F4,$3F,$28,$40,$D5,$C0,$D6,$F0,$D1,$F6,$D3,$F6,$F3 ; $C27518
    db $FE,$FA,$FE,$1B,$8E,$23,$E0,$FF,$D9,$E8,$45,$92,$7D,$B2,$B8,$6E ; $C27528
    db $DD,$BA,$75,$50,$57,$54,$D5,$D4,$F5,$F4,$FD,$FC,$01,$97,$16,$AB ; $C27538
    db $7C,$3F,$54,$BB,$00,$D4,$7F,$F4,$7F,$BC,$77,$94,$7F,$60,$28,$0F ; $C27548
    db $55,$94,$B5,$B0,$66,$BE,$03,$B4,$03,$17,$B7,$B4,$B6,$0C,$B4,$B7 ; $C27558
    db $F6,$F6,$94,$EB,$B0,$4F,$94,$FB,$B4,$5B,$03,$34,$04,$DF,$24,$DF ; $C27568
    db $62,$9D,$45,$61,$C2,$E0,$00,$1D,$01,$1F,$BF,$7F,$BF,$20,$B1,$30 ; $C27578
    db $A0,$58,$9F,$61,$FE,$07,$5D,$FE,$3F,$E0,$20,$5C,$27,$F4,$F7,$00 ; $C27588
    db $76,$7E,$3E,$7F,$FE,$FE,$BE,$FF,$72,$BE,$03,$E1,$FE,$FF,$A0,$7F ; $C27598
    db $42,$BD,$2A,$F5,$6A,$D7,$AA,$DF,$C1,$01,$5F,$EA,$5F,$F4,$0C,$CA ; $C275A8
    db $F9,$95,$43,$12,$0E,$07,$02,$FC,$A6,$FF,$AC,$03,$01,$04,$E8,$06 ; $C275B8
    db $F2,$08,$E0,$54,$D6,$2A,$F3,$54,$9C,$FF,$07,$D2,$1F,$FD,$A1,$FF ; $C275C8
    db $0A,$4C,$7F,$8E,$37,$11,$23,$49,$05,$36,$87,$F0,$33,$03,$1C,$04 ; $C275D8
    db $E0,$06,$03,$72,$02,$45,$2D,$3F,$8A,$1D,$09,$50,$A0,$05,$0B,$1E ; $C275E8
    db $5C,$1F,$73,$0C,$3F,$1E,$0F,$0E,$1F,$0E,$0F,$4F,$EF,$96,$CF,$97 ; $C275F8
    db $87,$17,$F9,$35,$07,$BE,$F7,$0B,$01,$FD,$4B,$F4,$82,$FF,$85,$FE ; $C27608
    db $E7,$08,$5F,$D4,$58,$DB,$94,$3A,$FF,$CA,$1C,$7D,$E4,$3F,$30,$68 ; $C27618
    db $FF,$31,$27,$87,$57,$00,$07,$37,$37,$6F,$67,$4F,$47,$3F,$C5,$47 ; $C27628
    db $0F,$85,$C6,$7A,$15,$FA,$25,$FA,$35,$CA,$65,$BE,$43,$BE,$0B,$F6 ; $C27638
    db $0A,$FD,$80,$74,$DA,$87,$C3,$6F,$F2,$7F,$0E,$33,$F0,$7F,$64,$38 ; $C27648
    db $03,$68,$C7,$28,$B8,$54,$FF,$20,$1A,$40,$0D,$08,$1F,$9C,$FF,$7F ; $C27658
    db $FD,$3B,$44,$B9,$30,$D7,$08,$61,$6B,$4D,$FA,$06,$BA,$C7,$51,$FE ; $C27668
    db $A4,$0D,$22,$08,$10,$9E,$F5,$A8,$AD,$98,$C3,$83,$09,$C3,$07,$C7 ; $C27678
    db $08,$9D,$47,$15,$01,$1B,$A1,$7E,$45,$FA,$F9,$0A,$3F,$48,$F6,$05 ; $C27688
    db $0F,$7F,$3E,$FF,$18,$05,$02,$1F,$B2,$DD,$5A,$E7,$2A,$A9,$BB,$B5 ; $C27698
    db $40,$1F,$01,$03,$0F,$3F,$FE,$FF,$05,$F1,$FC,$40,$F8,$02,$55,$3F ; $C276A8
    db $01,$D0,$BB,$86,$04,$FD,$F0,$CF,$4A,$BF,$6B,$63,$87,$74,$F9,$F5 ; $C276B8
    db $F1,$C3,$F3,$2F,$FF,$86,$1F,$10,$1F,$53,$49,$80,$F3,$EF,$38,$CF ; $C276C8
    db $C2,$3D,$29,$18,$DE,$06,$F9,$29,$2D,$F7,$1F,$5A,$F7,$03,$06,$60 ; $C276D8
    db $ED,$FF,$16,$FF,$1C,$41,$FE,$09,$07,$4C,$82,$0F,$F0,$EA,$F8,$E9 ; $C276E8
    db $04,$1F,$75,$CF,$30,$CA,$3F,$F7,$81,$FF,$08,$FA,$0A,$83,$9F,$7C ; $C276F8
    db $08,$D6,$EC,$A3,$C2,$04,$2B,$64,$AB,$92,$E1,$5D,$70,$28,$C4,$EC ; $C27708
    db $D4,$8C,$8C,$FC,$7E,$FE,$4E,$9D,$CB,$7F,$CD,$29,$CB,$C7,$9C,$13 ; $C27718
    db $EC,$37,$B8,$CF,$B6,$FD,$FA,$8D,$66,$D9,$1C,$E3,$DD,$A3,$BB,$C7 ; $C27728
    db $47,$85,$19,$22,$3F,$CB,$36,$2F,$1E,$1F,$00,$0F,$87,$59,$EE,$11 ; $C27738
    db $7D,$83,$32,$FF,$3C,$E3,$3C,$C3,$12,$EF,$8E,$45,$AE,$A8,$40,$84 ; $C27748
    db $00,$D0,$0E,$00,$E8,$00,$C2,$B5,$09,$00,$19,$F9,$84,$C7,$03,$28 ; $C27758
    db $68,$29,$B5,$41,$0C,$70,$66,$1C,$E5,$8C,$E6,$9C,$E7,$8E,$E7,$9E ; $C27768
    db $E7,$97,$E7,$01,$52,$B3,$FB,$03,$84,$7B,$84,$7F,$86,$7D,$03,$01 ; $C27778
    db $07,$FC,$87,$7C,$FB,$A9,$9B,$71,$FA,$03,$F8,$54,$E5,$9D,$01,$3B ; $C27788
    db $D7,$FC,$1D,$F3,$3A,$FD,$5D,$F2,$38,$FF,$5B,$F4,$33,$FC,$53,$ED ; $C27798
    db $17,$E7,$10,$03,$A8,$01,$54,$00,$28,$80,$54,$80,$58,$80,$14,$80 ; $C277A8
    db $07,$ED,$01,$E7,$50,$20,$01,$E3,$FF,$77,$03,$98,$69,$01,$0F,$7F ; $C277B8
    db $1D,$1F,$3F,$3F,$7C,$40,$B0,$02,$EA,$BB,$97,$06,$01,$63,$1E,$EF ; $C277C8
    db $3F,$D5,$7F,$AB,$D4,$86,$B3,$EF,$87,$EF,$07,$01,$45,$8F,$3B,$C9 ; $C277D8
    db $01,$A9,$B3,$67,$37,$7D,$05,$40,$C1,$F5,$0F,$94,$04,$FF,$34,$FB ; $C277E8
    db $FC,$FC,$53,$F7,$2A,$63,$FF,$A1,$B8,$E0,$7C,$C0,$BE,$99,$03,$D0 ; $C277F8
    db $03,$7E,$81,$03,$E8,$3F,$F0,$BF,$F7,$56,$41,$37,$01,$FD,$5D,$E7 ; $C27808
    db $B8,$CB,$16,$FB,$BA,$F7,$5A,$F5,$BB,$FD,$5B,$FD,$3D,$FB,$1F,$FF ; $C27818
    db $2B,$FE,$B5,$FD,$67,$43,$7D,$A3,$A8,$85,$C7,$1F,$F4,$9F,$C3,$7A ; $C27828
    db $9F,$7F,$CF,$3F,$E5,$7E,$E1,$F5,$DA,$A8,$57,$E9,$06,$FD,$DF,$01 ; $C27838
    db $06,$4E,$FD,$01,$FA,$06,$4F,$FD,$8C,$9C,$06,$A7,$FD,$1F,$01,$21 ; $C27848
    db $21,$06,$FD,$FF,$0F,$FF,$06,$FF,$3F,$08,$08,$06,$FB,$FF,$0F,$FF ; $C27858
    db $06,$FF,$F4,$02,$D1,$B9,$09,$E7,$F4,$02,$C9,$B9,$09,$F4,$02,$D1 ; $C27868
    db $B9,$09,$39,$F4,$02,$B8,$B9,$11,$09,$11,$1F,$39,$42,$42,$06,$FD ; $C27878
    db $FF,$0F,$FF,$06,$FF,$3F,$13,$13,$06,$E7,$FF,$11,$13,$FD,$06,$FF ; $C27888
    db $F6,$44,$01,$F7,$8E,$03,$F7,$0C,$03,$FB,$F6,$E9,$03,$F7,$51,$EE ; $C27898
    db $03,$DB,$85,$03,$0F,$1F,$5F,$CB,$1F,$4C,$BE,$54,$10,$42,$B8,$15 ; $C278A8
    db $11,$45,$BB,$01,$13,$4F,$FC,$1F,$E6,$0C,$F3,$10,$BA,$5D,$11,$43 ; $C278B8
    db $EE,$3F,$75,$32,$A2,$7B,$F7,$C7,$E7,$E5,$0F,$EF,$07,$CF,$07,$AF ; $C278C8
    db $00,$D6,$F7,$CA,$E7,$BF,$E7,$5A,$C7,$BF,$0D,$F2,$07,$FF,$DE,$0D ; $C278D8
    db $57,$FF,$47,$BB,$81,$03,$03,$53,$3B,$00,$03,$93,$33,$33,$37,$02 ; $C278E8
    db $FD,$12,$30,$ED,$02,$95,$EF,$12,$EF,$70,$13,$01,$33,$CF,$75,$0F ; $C278F8
    db $2D,$B3,$1F,$03,$D0,$1D,$9E,$03,$7F,$1E,$3E,$15,$78,$07,$8C,$1B ; $C27908
    db $17,$19,$FF,$0C,$17,$EE,$12,$FF,$29,$10,$EF,$48,$B7,$F8,$7F,$45 ; $C27918
    db $03,$21,$BB,$80,$3F,$C0,$01,$14,$D9,$B3,$03,$0B,$7F,$96,$3A,$30 ; $C27928
    db $15,$70,$3B,$B3,$1E,$F7,$3F,$B7,$36,$F7,$E5,$E7,$98,$82,$30,$CF ; $C27938
    db $1A,$FF,$55,$2E,$16,$F9,$32,$37,$C8,$36,$D9,$E5,$7A,$A0,$FF,$80 ; $C27948
    db $01,$3C,$3E,$FC,$FE,$7C,$FF,$30,$01,$03,$A1,$FF,$24,$DB,$03,$9C ; $C27958
    db $7B,$3C,$F3,$3C,$FB,$97,$03,$0C,$F3,$03,$FC,$17,$FC,$AB,$FC,$5D ; $C27968
    db $FB,$37,$FB,$5B,$41,$F7,$18,$9E,$F7,$22,$77,$EC,$AF,$B9,$76,$50 ; $C27978
    db $5E,$A1,$3D,$C3,$5D,$A2,$3F,$C2,$9E,$61,$72,$DD,$7E,$FF,$CC,$3F ; $C27988
    db $EA,$FF,$F4,$D3,$55,$50,$4B,$C3,$FE,$31,$87,$FC,$0B,$7A,$ED,$F4 ; $C27998
    db $1B,$AA,$55,$52,$AF,$85,$7F,$D4,$07,$7D,$EF,$00,$0F,$BA,$08,$FF ; $C279A8
    db $00,$12,$0F,$01,$FA,$00,$A0,$08,$78,$13,$04,$0C,$F8,$07,$EE,$FB ; $C279B8
    db $D0,$08,$00,$98,$17,$F8,$B4,$4B,$00,$FE,$41,$5E,$E1,$17,$EF,$DD ; $C279C8
    db $23,$F4,$04,$1A,$74,$B1,$FE,$03,$0D,$FB,$07,$EF,$1F,$03,$81,$DA ; $C279D8
    db $DE,$27,$E5,$1E,$FF,$2B,$10,$0D,$F7,$04,$20,$FB,$FB,$05,$EF,$00 ; $C279E8
    db $31,$F7,$F9,$6F,$9F,$79,$8F,$C9,$C0,$0A,$1F,$F7,$1F,$D3,$3F,$89 ; $C279F8
    db $07,$76,$F4,$ED,$94,$A9,$11,$FC,$5F,$70,$71,$CE,$F7,$F8,$3F,$F0 ; $C27A08
    db $1F,$F0,$87,$78,$DF,$20,$80,$17,$BF,$BF,$EF,$43,$FF,$01,$E3,$02 ; $C27A18
    db $58,$DE,$04,$B0,$06,$00,$17,$BD,$42,$BE,$0F,$7F,$F7,$18,$6F,$90 ; $C27A28
    db $EE,$F1,$E7,$FF,$FD,$FE,$BF,$03,$90,$6F,$1F,$FF,$E7,$5F,$20,$BB ; $C27A38
    db $4F,$33,$BF,$01,$40,$7F,$C0,$EF,$F0,$1E,$E1,$C7,$5D,$00,$A4,$0C ; $C27A48
    db $DF,$01,$1E,$F6,$09,$FB,$0D,$FF,$5C,$FC,$2B,$03,$FD,$01,$EF,$15 ; $C27A58
    db $F7,$1B,$FD,$7F,$5F,$BF,$F3,$C6,$0F,$FD,$DB,$00,$FA,$FD,$FC,$87 ; $C27A68
    db $9E,$EE,$FF,$DF,$E3,$FF,$FA,$9B,$FF,$03,$06,$07,$DF,$27,$E7,$1F ; $C27A78
    db $43,$91,$D7,$FD,$E0,$01,$FF,$95,$7B,$3B,$C7,$0E,$EF,$F7,$77,$FF ; $C27A88
    db $B3,$91,$84,$0D,$9B,$FF,$78,$6F,$BC,$2B,$FF,$DA,$38,$03,$76,$0B ; $C27A98
    db $A2,$30,$A1,$A7,$00,$E7,$A5,$EF,$C6,$01,$E5,$FF,$01,$61,$BD,$1B ; $C27AA8
    db $7F,$A1,$7F,$70,$A3,$7C,$A5,$7E,$A5,$7A,$25,$FE,$E5,$FA,$BD,$52 ; $C27AB8
    db $FA,$04,$80,$3F,$FE,$FE,$F8,$FF,$AB,$5E,$AB,$18,$7E,$AB,$FE,$01 ; $C27AC8
    db $A3,$FE,$60,$AA,$3B,$FD,$88,$FF,$7D,$E9,$CD,$1C,$3C,$FF,$78,$01 ; $C27AD8
    db $75,$70,$F5,$EB,$01,$CB,$6D,$9A,$AF,$7C,$1C,$FB,$5A,$B7,$5D,$F7 ; $C27AE8
    db $16,$FF,$9D,$6F,$9E,$6F,$F8,$FC,$C0,$ED,$A5,$97,$F6,$70,$00,$7F ; $C27AF8
    db $00,$F5,$00,$FB,$00,$BD,$B8,$F7,$C0,$BF,$FF,$05,$8B,$AF,$C0,$02 ; $C27B08
    db $A0,$87,$00,$80,$42,$00,$64,$80,$43,$80,$24,$80,$22,$40,$5F,$1D ; $C27B18
    db $AE,$31,$09,$DC,$CE,$1B,$8A,$05,$E3,$48,$03,$AE,$C7,$01,$08,$00 ; $C27B28
    db $03,$00,$06,$00,$0A,$01,$95,$03,$6B,$06,$A0,$DF,$50,$17,$B9,$5B ; $C27B38
    db $FC,$3F,$0F,$F8,$57,$F4,$AF,$69,$FE,$82,$FD,$11,$80,$08,$60,$06 ; $C27B48
    db $F0,$81,$5C,$00,$3F,$20,$8F,$04,$E1,$00,$09,$FA,$0F,$75,$E9,$0C ; $C27B58
    db $0A,$08,$A0,$10,$F8,$12,$1A,$D6,$1A,$F6,$1B,$D6,$13,$B2,$06,$FB ; $C27B68
    db $0D,$F7,$07,$FC,$11,$EE,$13,$FE,$13,$FD,$12,$C8,$01,$B0,$FF,$8A ; $C27B78
    db $80,$75,$18,$80,$FF,$01,$00,$21,$05,$03,$45,$43,$8B,$FF,$81,$87 ; $C27B88
    db $7F,$05,$FE,$0B,$FE,$1A,$ED,$03,$FE,$3A,$FD,$18,$5A,$5C,$07,$3A ; $C27B98
    db $00,$2F,$8E,$DE,$C0,$77,$F8,$E8,$E1,$07,$FF,$07,$7F,$DF,$F8,$7F ; $C27BA8
    db $CC,$5C,$D9,$83,$7F,$30,$0A,$F7,$AB,$43,$03,$07,$0C,$07,$87,$07 ; $C27BB8
    db $8F,$04,$07,$1D,$1F,$1F,$0F,$C8,$E9,$38,$E7,$7C,$B9,$75,$CB,$7C ; $C27BC8
    db $EF,$70,$CF,$F0,$EF,$91,$EF,$69,$DF,$B9,$6F,$C7,$C7,$8F,$8F,$DF ; $C27BD8
    db $9F,$BF,$F6,$FB,$38,$01,$CE,$00,$14,$0E,$39,$80,$7F,$60,$98,$4B ; $C27BE8
    db $A7,$E3,$03,$01,$00,$C0,$0B,$A0,$27,$00,$C3,$00,$8D,$00,$40,$10 ; $C27BF8
    db $82,$00,$14,$45,$10,$04,$B5,$45,$05,$08,$BD,$FE,$F8,$59,$A8,$03 ; $C27C08
    db $46,$38,$01,$86,$9B,$02,$CC,$01,$01,$9E,$4B,$01,$06,$10,$EF,$A8 ; $C27C18
    db $7F,$78,$BF,$8B,$BC,$FC,$A3,$8F,$FC,$D7,$F9,$FE,$B2,$FD,$40,$88 ; $C27C28
    db $20,$85,$10,$C0,$0D,$E0,$02,$B8,$61,$61,$9F,$00,$CB,$E6,$0A,$FF ; $C27C38
    db $2A,$5C,$00,$10,$18,$12,$DA,$16,$1A,$B6,$1B,$79,$F6,$0A,$FF,$38 ; $C27C48
    db $C0,$59,$F1,$00,$C2,$F8,$03,$E1,$FC,$F8,$FE,$80,$0F,$3A,$08,$C0 ; $C27C58
    db $47,$13,$0E,$FF,$41,$09,$A5,$F8,$C7,$7C,$9F,$14,$00,$B8,$42,$2A ; $C27C68
    db $60,$04,$30,$72,$78,$8A,$8C,$0D,$0C,$85,$0E,$13,$40,$C1,$E8,$D7 ; $C27C78
    db $7C,$D7,$01,$74,$EF,$E2,$F1,$F9,$F8,$FD,$3E,$C4,$A0,$3B,$22,$20 ; $C27C88
    db $E9,$D9,$04,$D3,$C7,$00,$01,$0E,$06,$06,$87,$02,$23,$43,$87,$53 ; $C27C98
    db $23,$33,$00,$01,$27,$33,$76,$EF,$22,$18,$FF,$0B,$F7,$01,$AF,$D7 ; $C27CA8
    db $E0,$01,$F7,$AB,$77,$8C,$FF,$09,$60,$80,$83,$05,$A0,$02,$80,$09 ; $C27CB8
    db $8D,$70,$02,$20,$C7,$15,$5C,$39,$09,$F7,$70,$00,$49,$08,$03,$1D ; $C27CC8
    db $94,$01,$07,$47,$1C,$42,$01,$01,$EB,$55,$03,$AB,$06,$A0,$FF,$6A ; $C27CD8
    db $BD,$F8,$8F,$FE,$87,$FC,$0B,$F8,$A7,$A9,$FE,$42,$FD,$81,$70,$01 ; $C27CE8
    db $38,$40,$1D,$20,$82,$0A,$C0,$05,$F0,$15,$2A,$78,$02,$0E,$FF,$92 ; $C27CF8
    db $1A,$01,$16,$9A,$36,$1B,$56,$13,$F2,$9E,$FF,$CD,$05,$FF,$B8,$C5 ; $C27D08
    db $87,$D7,$87,$AF,$87,$FF,$86,$FF,$BE,$FF,$C0,$F1,$70,$00,$68,$01 ; $C27D18
    db $AE,$33,$D7,$A4,$E3,$FE,$CF,$23,$C0,$3F,$87,$89,$FA,$05,$D6,$06 ; $C27D28
    db $8F,$72,$C3,$07,$73,$0F,$03,$CF,$17,$3F,$CF,$9F,$BA,$FD,$1E,$BF ; $C27D38
    db $BD,$DE,$70,$57,$E1,$16,$EB,$01,$8E,$7F,$F1,$01,$E8,$00,$75,$D0 ; $C27D48
    db $E0,$31,$76,$03,$E2,$E1,$00,$41,$FE,$16,$00,$5F,$AA,$FF,$C1,$FE ; $C27D58
    db $3F,$DA,$3F,$0E,$DD,$3C,$DF,$6F,$87,$39,$7E,$78,$29,$FC,$9A,$01 ; $C27D68
    db $E1,$0A,$F7,$39,$DF,$7A,$BF,$3A,$F5,$B8,$6F,$B8,$77,$8F,$03,$38 ; $C27D78
    db $F7,$0C,$BA,$27,$48,$A9,$3F,$07,$E8,$FF,$B5,$FF,$6B,$DD,$0D,$47 ; $C27D88
    db $84,$DF,$47,$70,$4A,$9B,$54,$FF,$78,$A9,$01,$13,$07,$E0,$00,$3A ; $C27D98
    db $00,$D0,$01,$80,$02,$FE,$FF,$8A,$BA,$22,$3F,$8F,$7F,$06,$00,$33 ; $C27DA8
    db $C8,$0F,$8E,$1F,$F3,$F8,$AC,$3A,$00,$D2,$A0,$1B,$DF,$FF,$ED,$FF ; $C27DB8
    db $08,$07,$F7,$0E,$FD,$F0,$1F,$D7,$13,$8E,$EA,$0E,$EE,$FF,$46,$09 ; $C27DC8
    db $93,$E2,$03,$0C,$8F,$07,$0C,$05,$3A,$1B,$AA,$C8,$95,$C8,$F9,$15 ; $C27DD8
    db $00,$83,$FA,$FF,$51,$AA,$55,$15,$EA,$91,$19,$F8,$57,$92,$75,$BD ; $C27DE8
    db $41,$3F,$18,$FF,$B4,$FF,$7B,$8C,$0A,$F0,$F9,$10,$6E,$07,$BD,$56 ; $C27DF8
    db $FB,$0C,$01,$58,$0B,$C1,$A2,$01,$E1,$97,$03,$1F,$09,$F7,$91,$6F ; $C27E08
    db $C9,$37,$D1,$AF,$C9,$B7,$7B,$85,$4B,$BD,$7B,$8D,$06,$01,$7D,$FB ; $C27E18
    db $FF,$F4,$BF,$FC,$1F,$31,$03,$5F,$FC,$71,$BB,$DA,$F7,$89,$F7,$88 ; $C27E28
    db $F7,$3A,$E5,$1A,$E5,$BE,$C1,$42,$BD,$38,$C0,$74,$FD,$5B,$A4,$DA ; $C27E38
    db $B7,$0C,$FB,$04,$BE,$41,$88,$E6,$06,$19,$BF,$58,$C6,$79,$31,$76 ; $C27E48
    db $F9,$75,$71,$7E,$3B,$7F,$42,$03,$BA,$F5,$E5,$DB,$7C,$FD,$7A,$5E ; $C27E58
    db $BD,$E1,$3F,$4A,$BF,$DF,$3A,$5F,$B5,$AE,$80,$A3,$8F,$A0,$CF,$9C ; $C27E68
    db $01,$E0,$01,$70,$C0,$01,$90,$7F,$0D,$83,$7D,$80,$7F,$01,$19,$FD ; $C27E78
    db $C0,$96,$01,$7F,$29,$79,$7F,$01,$D7,$43,$5C,$75,$31,$3F,$E0,$BF ; $C27E88
    db $F0,$FF,$60,$7F,$F0,$7F,$A0,$7F,$B0,$0B,$40,$EF,$80,$0C,$03,$C7 ; $C27E98
    db $8B,$87,$B7,$87,$70,$87,$1F,$00,$DB,$60,$40,$DA,$0F,$03,$FC,$81 ; $C27EA8
    db $01,$7F,$84,$7B,$83,$7F,$67,$9C,$DC,$D2,$ED,$77,$2E,$91,$F0,$8A ; $C27EB8
    db $17,$83,$AB,$08,$1F,$F0,$5F,$F9,$87,$FE,$2E,$FD,$7D,$FA,$F0,$CF ; $C27EC8
    db $A2,$83,$5D,$85,$75,$FA,$C7,$8F,$E8,$FF,$D2,$0B,$03,$1F,$F8,$86 ; $C27ED8
    db $BE,$F1,$BC,$E3,$BA,$65,$B4,$4B,$E8,$57,$D2,$6D,$03,$8F,$8F,$75 ; $C27EE8
    db $10,$EF,$8D,$01,$B4,$2F,$50,$AF,$8F,$02,$17,$8D,$7A,$08,$F7,$DC ; $C27EF8
    db $67,$8F,$3F,$D5,$53,$D7,$3C,$AF,$D0,$00,$D4,$AB,$FE,$41,$D5,$AA ; $C27F08
    db $A8,$57,$FC,$02,$C1,$A0,$FC,$04,$CF,$2A,$E7,$0F,$F2,$06,$73,$0F ; $C27F18
    db $EA,$BA,$DE,$03,$B6,$60,$7F,$00,$12,$F0,$BD,$77,$3F,$00,$1F,$F7 ; $C27F28
    db $09,$15,$BC,$08,$00,$08,$1F,$0E,$E7,$5D,$87,$14,$1F,$FA,$00,$FD ; $C27F38
    db $4C,$3E,$1C,$03,$F5,$03,$79,$B4,$29,$5F,$E8,$D6,$FB,$DF,$14,$1F ; $C27F48
    db $CA,$18,$3F,$68,$3C,$77,$B5,$10,$F5,$33,$00,$33,$23,$77,$03,$EF ; $C27F58
    db $03,$57,$01,$51,$EB,$0F,$F5,$70,$33,$CF,$23,$DF,$03,$FF,$03,$FC ; $C27F68
    db $01,$FE,$00,$FF,$F4,$20,$01,$AC,$F9,$F4,$04,$11,$59,$F9,$20,$09 ; $C27F78
    db $B4,$80,$9A,$03,$80,$F3,$B0,$AF,$B7,$A7,$80,$01,$26,$B7,$37,$37 ; $C27F88
    db $C0,$EF,$0B,$97,$BC,$EF,$8C,$A4,$FB,$A3,$FE,$A3,$7C,$26,$FD,$37 ; $C27F98
    db $EC,$07,$0F,$8F,$1F,$3F,$7F,$A1,$81,$BF,$D1,$4D,$D3,$E9,$71,$FF ; $C27FA8
    db $2F,$DF,$E7,$FF,$EF,$1F,$67,$9F,$AF,$5F,$27,$DA,$06,$BF,$0F,$FE ; $C27FB8
    db $05,$43,$81,$06,$FD,$0F,$F3,$CE,$04,$9B,$BF,$87,$1F,$55,$80,$03 ; $C27FC8
    db $1F,$AF,$58,$FE,$F1,$55,$AA,$F7,$02,$0F,$40,$7D,$FE,$F3,$F8,$01 ; $C27FD8
    db $E0,$E1,$87,$CF,$1F,$BF,$1F,$DF,$CD,$62,$7F,$0E,$F9,$FB,$F1,$F4 ; $C27FE8
    db $E1,$DE,$8C,$F3,$3A,$CF,$DF,$3A,$7D,$82,$77,$0F,$E7,$07,$F7,$0F ; $C27FF8
    db $26,$8F,$FE,$CF,$EF,$CF,$FF,$CF,$7F,$CF,$7C,$83,$E4,$1B,$FD,$07 ; $C28008
    db $AB,$56,$7A,$85,$AF,$D4,$BE,$C7,$3B,$C6,$AA,$15,$69,$78,$FE,$02 ; $C28018
    db $83,$AA,$55,$02,$40,$BF,$06,$F9,$0F,$F6,$C0,$0F,$B7,$CF,$78,$07 ; $C28028
    db $74,$BF,$A7,$04,$60,$50,$91,$BF,$47,$7F,$80,$03,$A3,$5E,$DF,$31 ; $C28038
    db $A0,$7F,$E9,$0A,$FF,$FA,$0C,$98,$70,$BF,$7F,$7D,$FB,$07,$30,$B7 ; $C28048
    db $4F,$FD,$D3,$3F,$F1,$E3,$47,$E3,$A7,$49,$A8,$FF,$AA,$81,$4F,$DF ; $C28058
    db $DF,$96,$9F,$FD,$02,$E0,$16,$3F,$07,$FF,$BB,$47,$C6,$04,$BF,$4F ; $C28068
    db $47,$02,$67,$9F,$F7,$1F,$FE,$7F,$2C,$33,$C2,$E0,$F1,$F3,$F1,$2C ; $C28078
    db $1B,$00,$EF,$8E,$8D,$06,$FF,$1E,$E1,$0F,$EA,$40,$FB,$37,$C8,$71 ; $C28088
    db $8E,$6F,$90,$1D,$3F,$F0,$07,$4C,$B7,$16,$01,$3F,$9A,$EF,$B3,$7F ; $C28098
    db $D8,$12,$5F,$39,$13,$EC,$86,$1F,$3B,$C0,$09,$1B,$FC,$00,$0F,$1F ; $C280A8
    db $9C,$C6,$F1,$AF,$CF,$0B,$0F,$03,$14,$DF,$DF,$20,$47,$F0,$07,$00 ; $C280B8
    db $FB,$04,$BB,$60,$45,$9B,$1A,$E7,$BE,$C3,$1D,$DF,$E3,$77,$4F,$43 ; $C280C8
    db $56,$0F,$39,$E8,$EA,$47,$C0,$BD,$FF,$9F,$08,$0D,$8A,$FF,$8C,$11 ; $C280D8
    db $36,$6A,$67,$95,$FE,$F5,$26,$2E,$95,$A0,$00,$4A,$FB,$46,$0E,$FF ; $C280E8
    db $98,$FF,$8F,$45,$01,$D4,$F1,$1F,$2F,$EB,$87,$5A,$FF,$F2,$FF,$25 ; $C280F8
    db $60,$1F,$EF,$FE,$EF,$FD,$2D,$0F,$FA,$7A,$7F,$B3,$37,$AE,$7F,$01 ; $C28108
    db $EF,$83,$DB,$AB,$FF,$5F,$F0,$F9,$03,$0E,$AE,$FD,$5E,$FB,$A4,$5C ; $C28118
    db $71,$70,$3C,$7F,$02,$BF,$01,$57,$00,$0B,$00,$25,$00,$0A,$00,$01 ; $C28128
    db $54,$EF,$3B,$BA,$FF,$57,$38,$FE,$0B,$43,$0A,$F8,$03,$59,$EA,$29 ; $C28138
    db $AF,$01,$E3,$01,$0F,$7F,$40,$A1,$D3,$88,$95,$09,$04,$55,$3B,$02 ; $C28148
    db $A5,$5E,$04,$4F,$33,$02,$CE,$94,$60,$00,$01,$30,$FF,$18,$7F,$0E ; $C28158
    db $BF,$03,$40,$2F,$29,$A4,$DF,$00,$EA,$FF,$B7,$EF,$5B,$F7,$AE,$F5 ; $C28168
    db $58,$2B,$23,$5F,$12,$00,$AA,$00,$A8,$CD,$BF,$00,$EA,$F8,$08,$0E ; $C28178
    db $17,$13,$F6,$32,$49,$FE,$46,$CE,$71,$47,$60,$C2,$74,$C1,$F4,$C2 ; $C28188
    db $F4,$C1,$12,$FD,$32,$DF,$46,$BF,$41,$FE,$5A,$FF,$49,$FF,$CA,$7F ; $C28198
    db $C9,$C3,$45,$01,$BE,$8F,$84,$E8,$C7,$20,$FC,$01,$A9,$54,$E0,$E9 ; $C281A8
    db $FB,$FC,$84,$19,$7B,$F0,$CF,$17,$B0,$71,$C2,$B8,$81,$F0,$82,$E0 ; $C281B8
    db $89,$40,$14,$80,$20,$00,$48,$00,$A0,$8A,$EE,$8A,$6F,$82,$FF,$89 ; $C281C8
    db $A5,$87,$48,$D7,$1B,$5C,$0F,$31,$07,$0F,$47,$87,$87,$23,$07,$23 ; $C281D8
    db $03,$A3,$03,$C1,$3D,$01,$B1,$74,$EF,$B5,$EF,$BC,$6F,$98,$EF,$98 ; $C281E8
    db $F7,$1E,$F7,$1C,$FB,$5E,$FF,$3F,$7F,$3F,$3F,$1F,$BF,$8F,$DF,$C7 ; $C281F8
    db $EF,$E1,$F0,$F8,$AE,$15,$2E,$20,$8D,$0D,$C6,$FB,$D7,$71,$B8,$F7 ; $C28208
    db $7F,$E3,$51,$00,$06,$20,$0C,$F1,$00,$11,$0D,$0E,$06,$04,$EC,$0B ; $C28218
    db $04,$4E,$0E,$E0,$A9,$0C,$F7,$04,$FB,$02,$45,$FF,$A0,$CE,$87,$9F ; $C28228
    db $02,$01,$31,$03,$07,$8B,$2F,$05,$9F,$0B,$2E,$03,$1F,$10,$7F,$C0 ; $C28238
    db $87,$F8,$7C,$FF,$C1,$BF,$0B,$F4,$05,$FA,$03,$EA,$C0,$7D,$2F,$55 ; $C28248
    db $00,$7D,$EE,$0E,$4A,$3B,$13,$76,$3C,$FF,$C7,$11,$FF,$DF,$8B,$3C ; $C28258
    db $F3,$32,$FF,$FE,$75,$FE,$20,$BB,$FC,$FD,$F8,$F2,$E1,$03,$01,$03 ; $C28268
    db $0D,$3E,$FA,$F8,$B8,$6C,$EB,$00,$79,$0A,$FD,$2C,$FB,$F9,$CF,$C5 ; $C28278
    db $C3,$F9,$F7,$DF,$23,$63,$77,$67,$67,$47,$07,$C7,$87,$87,$8E,$0F ; $C28288
    db $0E,$1E,$1E,$3E,$AB,$7F,$E7,$9F,$5F,$FF,$3F,$EA,$F7,$EA,$7E,$D7 ; $C28298
    db $EE,$FF,$DE,$FD,$C4,$F0,$12,$C0,$89,$83,$A7,$8F,$B9,$34,$2E,$BF ; $C282A8
    db $BE,$BD,$BF,$B0,$BC,$C3,$BF,$0C,$FF,$F1,$9E,$47,$FB,$3F,$DF,$3F ; $C282B8
    db $EF,$3E,$D5,$B0,$EF,$BC,$7C,$79,$FC,$F0,$F8,$E2,$F0,$C4,$E0,$8A ; $C282C8
    db $80,$14,$11,$1F,$C3,$2B,$F0,$A0,$D1,$C0,$FF,$4B,$80,$27,$BB,$97 ; $C282D8
    db $87,$F3,$BF,$00,$ED,$BF,$13,$FF,$16,$0F,$FF,$6F,$01,$FD,$04,$3C ; $C282E8
    db $FF,$44,$23,$FF,$3F,$2E,$40,$2E,$1D,$80,$94,$80,$C1,$81,$F3,$B7 ; $C282F8
    db $5B,$93,$1B,$93,$13,$F0,$37,$51,$FF,$EA,$3F,$05,$BD,$76,$BB,$4F ; $C28308
    db $13,$7B,$A1,$14,$A8,$B3,$F8,$B1,$E0,$2E,$FE,$C0,$10,$FE,$80,$FC ; $C28318
    db $D8,$EF,$D4,$FB,$C8,$F7,$D0,$EF,$C0,$C1,$E2,$7B,$1F,$38,$CD,$3B ; $C28328
    db $B8,$04,$AB,$83,$03,$87,$A0,$00,$07,$03,$03,$9C,$E7,$FA,$FF,$B8 ; $C28338
    db $FF,$53,$56,$77,$3E,$77,$03,$07,$FC,$00,$D8,$10,$F8,$00,$F6,$40 ; $C28348
    db $00,$22,$E0,$30,$60,$04,$FD,$E0,$FA,$20,$DF,$BA,$09,$82,$E0,$7F ; $C28358
    db $45,$BF,$A2,$B8,$61,$DF,$00,$01,$01,$05,$F2,$08,$29,$08,$0C,$C8 ; $C28368
    db $0C,$27,$FC,$74,$87,$2B,$1D,$FB,$0C,$6B,$21,$E8,$A5,$6D,$85,$AE ; $C28378
    db $63,$15,$C0,$28,$08,$E0,$00,$51,$03,$8F,$1F,$7F,$FF,$7A,$2E,$77 ; $C28388
    db $08,$E3,$75,$60,$23,$05,$67,$BC,$7A,$B5,$63,$6A,$67,$0F,$0E,$A4 ; $C28398
    db $FE,$7E,$FF,$4F,$14,$2E,$2F,$43,$1F,$FC,$0A,$F5,$E7,$7C,$7E,$81 ; $C283A8
    db $14,$EB,$52,$FF,$28,$0B,$9D,$4F,$B1,$9C,$1D,$91,$03,$77,$82,$1F ; $C283B8
    db $63,$04,$36,$A7,$3E,$01,$54,$01,$84,$4B,$01,$CE,$05,$3E,$7D,$5D ; $C283C8
    db $02,$40,$09,$3D,$C2,$63,$9E,$5F,$A2,$07,$0B,$F4,$29,$FE,$54,$D1 ; $C283D8
    db $08,$1D,$91,$03,$57,$47,$5F,$BF,$08,$01,$03,$A2,$9D,$D5,$00,$A2 ; $C283E8
    db $4F,$DF,$02,$3A,$01,$F8,$9B,$B3,$A7,$D8,$FF,$AD,$FB,$5D,$FB,$37 ; $C283F8
    db $FB,$0F,$F3,$3F,$C3,$3F,$F8,$7E,$F9,$DE,$A9,$AF,$D9,$5E,$A1,$3E ; $C28408
    db $C1,$1D,$E3,$7D,$82,$74,$01,$FF,$9D,$03,$FF,$9E,$EF,$E9,$F7,$F2 ; $C28418
    db $AF,$14,$97,$9B,$FF,$2F,$3C,$BF,$50,$FD,$8A,$BE,$C5,$29,$F6,$F6 ; $C28428
    db $B9,$FD,$02,$A8,$57,$77,$FB,$FE,$FB,$0A,$03,$18,$4F,$CF,$32,$0F ; $C28438
    db $0E,$F9,$34,$04,$FB,$01,$9F,$0F,$08,$68,$07,$42,$BF,$15,$F0,$05 ; $C28448
    db $0F,$D5,$FF,$EA,$E2,$23,$80,$A6,$D3,$83,$0F,$2A,$EA,$15,$03,$23 ; $C28458
    db $80,$7F,$2A,$FF,$85,$9D,$03,$4F,$6F,$84,$07,$3F,$50,$AF,$00,$F3 ; $C28468
    db $21,$50,$F0,$0A,$5D,$77,$00,$CA,$7D,$A8,$14,$19,$09,$F9,$15,$F4 ; $C28478
    db $22,$79,$35,$2B,$01,$AF,$DC,$78,$8A,$14,$1F,$FA,$00,$78,$54,$09 ; $C28488
    db $13,$05,$00,$15,$22,$00,$09,$77,$BF,$09,$1F,$03,$01,$0A,$87,$BD ; $C28498
    db $3E,$FF,$06,$72,$55,$01,$75,$5F,$38,$FD,$03,$37,$3F,$07,$C0,$63 ; $C284A8
    db $9C,$07,$FE,$D0,$03,$FF,$00,$A7,$35,$D2,$12,$5F,$7F,$0E,$01,$17 ; $C284B8
    db $00,$2B,$38,$65,$2B,$25,$0A,$87,$1F,$E7,$51,$FF,$7F,$55,$43,$55 ; $C284C8
    db $59,$FF,$F1,$F8,$0F,$FF,$AF,$00,$7E,$56,$53,$FF,$03,$F7,$00,$7D ; $C284D8
    db $00,$AA,$A8,$F3,$10,$79,$A4,$AB,$03,$F6,$0E,$C1,$5F,$A9,$F4,$CC ; $C284E8
    db $21,$03,$D8,$3C,$00,$94,$09,$1D,$D0,$38,$00,$E0,$39,$80,$FD,$11 ; $C284F8
    db $5F,$23,$1B,$80,$EC,$30,$FF,$8A,$41,$FF,$F7,$F0,$E9,$E7,$C7,$D4 ; $C28508
    db $C5,$DE,$11,$76,$48,$FF,$F7,$E8,$EF,$00,$D0,$EC,$D3,$FA,$8F,$FF ; $C28518
    db $DA,$FD,$9D,$2F,$FF,$A6,$11,$A5,$FF,$D2,$D7,$19,$01,$D0,$FE,$EF ; $C28528
    db $FF,$D1,$FF,$E4,$D8,$11,$04,$FF,$B8,$FD,$D2,$AD,$E0,$9F,$D6,$E9 ; $C28538
    db $EF,$96,$D1,$EF,$E4,$DB,$50,$AF,$04,$FB,$19,$3D,$FF,$65,$21,$D2 ; $C28548
    db $5F,$BF,$7F,$FF,$E7,$FF,$DF,$E7,$FB,$E7,$E7,$F3,$1F,$F9,$FE,$03 ; $C28558
    db $F8,$0F,$E0,$3F,$FC,$47,$7D,$C3,$7E,$C3,$F7,$A9,$54,$67,$BF,$8A ; $C28568
    db $C3,$5E,$83,$29,$BB,$18,$0A,$FF,$17,$04,$9A,$AF,$01,$57,$DB,$A6 ; $C28578
    db $76,$E9,$AC,$FB,$81,$BE,$F1,$FF,$38,$FF,$1C,$DE,$A4,$11,$C0,$CF ; $C28588
    db $00,$55,$FF,$10,$BF,$48,$5F,$A0,$A5,$26,$DA,$C0,$5F,$1F,$AA,$FF ; $C28598
    db $54,$05,$17,$FF,$0A,$AA,$D5,$54,$AB,$80,$7F,$6A,$BF,$94,$7F,$20 ; $C285A8
    db $DF,$81,$7F,$FB,$F8,$F9,$81,$03,$F1,$F9,$F1,$FB,$F3,$80,$01,$F3 ; $C285B8
    db $E3,$F7,$AA,$FD,$48,$C0,$03,$F5,$41,$FE,$EA,$F5,$31,$FA,$F5,$C3 ; $C285C8
    db $F5,$EB,$10,$7F,$9F,$94,$2A,$7F,$FB,$00,$7F,$7C,$AF,$78,$F7,$8C ; $C285D8
    db $BA,$04,$C7,$29,$F6,$F2,$BD,$40,$7F,$E3,$E7,$C1,$77,$E3,$81,$5F ; $C285E8
    db $FE,$3E,$FE,$86,$DE,$B5,$57,$DE,$C7,$C7,$DB,$63,$9D,$E7,$18,$DE ; $C285F8
    db $3D,$7E,$B9,$BF,$C4,$FF,$CC,$FE,$51,$40,$9D,$99,$D3,$09,$7F,$F4 ; $C28608
    db $8E,$05,$D5,$3A,$8D,$56,$D0,$C4,$A0,$5F,$40,$BF,$30,$B4,$6B,$7F ; $C28618
    db $D5,$AA,$AA,$5A,$55,$C7,$07,$FD,$79,$03,$1E,$06,$07,$BF,$F4,$7F ; $C28628
    db $EA,$EA,$5C,$7F,$3B,$E0,$FD,$D2,$FA,$A5,$FC,$C3,$FA,$AD,$81,$FF ; $C28638
    db $BE,$3A,$A3,$EA,$D5,$C3,$20,$40,$A1,$BD,$42,$E3,$01,$1E,$DF,$22 ; $C28648
    db $EB,$14,$55,$AA,$9D,$3F,$AA,$DC,$C5,$37,$C7,$E9,$A3,$71,$FC,$23 ; $C28658
    db $EB,$DD,$D9,$C1,$1F,$2D,$F6,$CF,$32,$86,$06,$E5,$3E,$3E,$0F,$11 ; $C28668
    db $94,$81,$7E,$18,$FF,$15,$D0,$FF,$75,$64,$83,$59,$28,$FF,$10,$B9 ; $C28678
    db $67,$C0,$79,$89,$7E,$D0,$AF,$64,$1A,$DB,$F0,$4F,$BB,$DC,$06,$83 ; $C28688
    db $00,$E7,$04,$DF,$01,$7C,$18,$03,$44,$15,$9F,$3F,$18,$E7,$55,$5F ; $C28698
    db $AB,$02,$00,$01,$E3,$02,$C7,$03,$87,$07,$8F,$1D,$0F,$BF,$3E,$A1 ; $C286A8
    db $C9,$11,$70,$02,$FD,$03,$FC,$07,$F8,$0F,$F0,$3E,$C1,$1C,$E3,$F0 ; $C286B8
    db $59,$7D,$C7,$00,$83,$31,$39,$03,$01,$3B,$07,$CE,$81,$AD,$EB,$55 ; $C286C8
    db $F3,$FE,$D4,$80,$4F,$FD,$07,$F9,$0F,$F2,$3E,$DD,$FB,$02,$3D,$FF ; $C286D8
    db $06,$37,$3A,$3F,$BD,$01,$DB,$97,$2D,$01,$EF,$97,$81,$20,$01,$30 ; $C286E8
    db $87,$5C,$1E,$BE,$5C,$60,$6C,$00,$3E,$FE,$1D,$BC,$D7,$11,$09,$1C ; $C286F8
    db $EF,$22,$FF,$41,$BE,$41,$FE,$43,$FE,$26,$FD,$B0,$FF,$6B,$7F,$A0 ; $C28708
    db $7F,$07,$C0,$7F,$20,$7F,$40,$F8,$03,$53,$40,$40,$BF,$03,$0C,$C1 ; $C28718
    db $1E,$17,$FF,$0A,$05,$51,$0F,$17,$E8,$0A,$F5,$03,$40,$A7,$05,$CF ; $C28728
    db $08,$FD,$01,$DD,$26,$B7,$A5,$FC,$02,$DD,$1C,$B8,$73,$FF,$34,$FF ; $C28738
    db $68,$FC,$50,$FA,$60,$F4,$00,$E9,$00,$6F,$00,$73,$34,$CB,$68,$97 ; $C28748
    db $50,$AF,$60,$7E,$9F,$3F,$61,$01,$CF,$00,$8F,$04,$9F,$0C,$FF,$F0 ; $C28758
    db $06,$5F,$0C,$7C,$F3,$5F,$07,$5F,$8F,$70,$07,$72,$01,$01,$06,$8F ; $C28768
    db $0E,$FF,$3C,$33,$13,$02,$BC,$34,$03,$06,$FB,$0E,$F5,$3C,$DB,$CD ; $C28778
    db $5A,$7F,$20,$7F,$70,$3F,$38,$7D,$79,$7D,$31,$79,$05,$F3,$02,$E7 ; $C28788
    db $1C,$E8,$2F,$75,$30,$47,$77,$49,$FE,$11,$4B,$B5,$22,$B7,$EB,$9D ; $C28798
    db $5A,$81,$30,$C8,$81,$40,$FB,$00,$27,$F3,$00,$80,$6F,$30,$CF,$60 ; $C287A8
    db $9F,$40,$BF,$FE,$07,$BA,$9D,$F5,$D7,$85,$D7,$5A,$81,$D7,$F4,$0F ; $C287B8
    db $45,$E3,$ED,$EC,$08,$51,$64,$28,$2F,$EF,$A9,$E1,$7D,$01,$04,$0F ; $C287C8
    db $33,$FE,$02,$FB,$E5,$90,$8E,$33,$50,$AD,$FB,$A0,$B9,$90,$6F,$C4 ; $C287D8
    db $33,$50,$AF,$5F,$01,$CA,$07,$7F,$E8,$EB,$E9,$D0,$DD,$0F,$7F,$40 ; $C287E8
    db $7D,$18,$5F,$14,$CF,$03,$7F,$02,$07,$13,$18,$E7,$14,$EB,$43,$43 ; $C287F8
    db $E0,$AC,$55,$3A,$EB,$07,$CF,$CD,$04,$B0,$CB,$07,$F8,$08,$05,$FA ; $C28808
    db $02,$FD,$2B,$09,$34,$87,$6F,$E8,$25,$83,$20,$C1,$34,$CB,$78,$87 ; $C28818
    db $F0,$1A,$0F,$E8,$17,$83,$D2,$C1,$00,$70,$FD,$FB,$D0,$06,$01,$E0 ; $C28828
    db $0F,$C0,$0F,$A0,$06,$C0,$EC,$0D,$FB,$AB,$7F,$60,$10,$7B,$3F,$1C ; $C28838
    db $3F,$38,$F1,$01,$7F,$10,$EF,$80,$7B,$1C,$F3,$38,$DF,$00,$A0,$1D ; $C28848
    db $00,$D1,$01,$EB,$E7,$07,$ED,$03,$23,$C0,$FB,$0F,$F3,$07,$F9,$0A ; $C28858
    db $46,$F5,$03,$75,$3C,$B1,$B5,$C3,$41,$F4,$BB,$3B,$1A,$03,$E1,$3C ; $C28868
    db $D3,$7A,$BD,$FC,$73,$F8,$E7,$F4,$4B,$A8,$57,$59,$03,$FA,$C6,$BF ; $C28878
    db $A0,$7B,$00,$19,$80,$10,$40,$10,$80,$19,$40,$B1,$5F,$06,$8E,$53 ; $C28888
    db $FB,$0F,$70,$05,$7B,$5F,$0A,$00,$3F,$14,$1F,$8A,$3F,$9D,$1F,$9E ; $C28898
    db $C8,$03,$3F,$6D,$1B,$59,$F9,$80,$03,$1D,$EA,$1E,$E9,$1D,$EE,$3A ; $C288A8
    db $0F,$80,$83,$01,$AB,$0F,$BE,$15,$2F,$E2,$81,$05,$60,$3D,$0F,$F0 ; $C288B8
    db $17,$EB,$30,$2F,$D1,$23,$05,$FA,$3E,$23,$7F,$7D,$FD,$E3,$D8,$59 ; $C288C8
    db $00,$81,$50,$FF,$3E,$C9,$7D,$9E,$FE,$62,$39,$81,$FA,$E5,$1D,$81 ; $C288D8
    db $43,$CD,$EA,$00,$F3,$1B,$87,$2F,$0F,$3F,$9F,$5F,$0A,$3F,$7F,$BF ; $C288E8
    db $3F,$04,$5F,$02,$FF,$18,$F7,$75,$1B,$20,$30,$FF,$EA,$FF,$F5,$0C ; $C288F8
    db $FF,$F6,$FF,$F3,$01,$FB,$55,$F7,$20,$55,$2A,$F5,$15,$FA,$06,$10 ; $C28908
    db $FB,$03,$FE,$01,$77,$3F,$F3,$DC,$01,$1F,$83,$15,$19,$FC,$2F,$95 ; $C28918
    db $85,$05,$F3,$FF,$10,$60,$9F,$2F,$DF,$17,$E8,$C0,$31,$F7,$F3,$EB ; $C28928
    db $F7,$C7,$C1,$0B,$8F,$DE,$3F,$FC,$DA,$89,$E3,$11,$FE,$31,$FE,$61 ; $C28938
    db $FE,$D3,$FE,$0B,$FC,$06,$F9,$1C,$F3,$F0,$0F,$07,$2F,$05,$1D,$B9 ; $C28948
    db $15,$09,$27,$12,$C6,$5F,$B5,$C0,$B9,$15,$EA,$28,$D7,$12,$3E,$ED ; $C28958
    db $28,$06,$1F,$8F,$EF,$0F,$1D,$9F,$D3,$D7,$00,$FE,$E1,$0F,$39,$6F ; $C28968
    db $C7,$33,$AF,$43,$3F,$BF,$D0,$0E,$1F,$04,$60,$ED,$68,$12,$80,$7F ; $C28978
    db $F7,$05,$0E,$F7,$0C,$FB,$04,$BF,$8F,$83,$00,$F9,$F9,$FB,$FB,$01 ; $C28988
    db $05,$1D,$E2,$6A,$D7,$F7,$4C,$80,$01,$FF,$1C,$1F,$E0,$7F,$F0,$EC ; $C28998
    db $C2,$FF,$1C,$BD,$BD,$BB,$00,$3A,$E3,$E3,$81,$95,$8F,$BF,$BF,$71 ; $C289A8
    db $99,$66,$E7,$18,$EF,$14,$6D,$9B,$9D,$7B,$70,$8F,$FB,$05,$FB,$06 ; $C289B8
    db $86,$39,$37,$71,$F6,$00,$FF,$DE,$87,$5B,$FD,$FD,$FC,$43,$C5,$01 ; $C289C8
    db $46,$46,$80,$31,$F5,$02,$61,$05,$00,$00,$C7,$38,$C2,$34,$CB,$76 ; $C289D8
    db $A9,$FE,$41,$EF,$11,$F3,$0F,$FB,$0C,$42,$14,$DF,$DF,$CD,$27,$35 ; $C289E8
    db $9D,$01,$3F,$40,$DC,$EB,$14,$67,$07,$18,$FF,$F0,$AF,$70,$92,$02 ; $C289F8
    db $38,$7F,$34,$06,$08,$3F,$43,$78,$FD,$AA,$D4,$F2,$77,$0F,$BE,$BC ; $C28A08
    db $05,$00,$07,$FD,$FF,$F1,$36,$A7,$48,$00,$E7,$38,$F6,$76,$1F,$6E ; $C28A18
    db $0F,$1C,$B3,$FC,$F7,$03,$42,$1B,$00,$E3,$FE,$01,$85,$7A,$BB,$77 ; $C28A28
    db $BB,$66,$CF,$32,$BF,$40,$7F,$E0,$BF,$40,$00,$13,$CC,$CC,$DD,$DD ; $C28A38
    db $70,$FD,$1E,$9F,$9F,$80,$9F,$47,$B8,$BF,$07,$48,$FF,$0C,$ED,$12 ; $C28A48
    db $61,$BA,$03,$F5,$0E,$E2,$02,$5B,$EF,$EF,$00,$05,$CF,$30,$BB,$64 ; $C28A58
    db $BB,$18,$74,$D8,$3F,$BD,$8F,$79,$08,$EA,$1F,$FA,$0D,$22,$BB,$CF ; $C28A68
    db $C3,$4A,$FF,$F7,$98,$00,$05,$BC,$47,$18,$FE,$47,$7A,$4B,$91,$6F ; $C28A78
    db $07,$91,$FB,$9F,$30,$DF,$A6,$04,$BF,$00,$B8,$61,$07,$DE,$3F,$F7 ; $C28A88
    db $08,$F7,$0C,$37,$CC,$C6,$3D,$BB,$6A,$67,$FC,$FC,$2D,$41,$0A,$00 ; $C28A98
    db $D9,$07,$95,$80,$70,$7B,$C4,$7B,$F4,$ED,$DE,$C3,$EE,$68,$09,$7F ; $C28AA8
    db $98,$81,$1D,$BF,$BF,$1B,$79,$22,$7E,$69,$C0,$3D,$68,$FF,$70,$CE ; $C28AB8
    db $07,$31,$EF,$13,$D4,$2E,$6E,$BB,$DA,$5F,$31,$44,$56,$FE,$C5,$5E ; $C28AC8
    db $63,$F4,$C3,$CC,$63,$DF,$C3,$7F,$C3,$1C,$67,$CB,$3C,$F7,$18,$98 ; $C28AD8
    db $69,$B7,$FF,$DF,$FD,$02,$3D,$C1,$DF,$BB,$04,$9B,$80,$77,$3D,$E3 ; $C28AE8
    db $38,$B7,$38,$A3,$11,$67,$DC,$E7,$4E,$EF,$1F,$6E,$BD,$81,$70,$07 ; $C28AF8
    db $0C,$FF,$89,$01,$FE,$8E,$EF,$19,$CF,$BB,$8D,$81,$09,$C4,$FE,$C7 ; $C28B08
    db $F2,$4E,$DA,$F5,$0A,$3F,$BF,$40,$61,$4B,$9C,$C6,$1D,$FC,$C6,$FF ; $C28B18
    db $D0,$DB,$7B,$8C,$7B,$88,$07,$6B,$1C,$DF,$20,$DE,$94,$01,$79,$FB ; $C28B28
    db $63,$30,$3E,$62,$02,$61,$B2,$EE,$0A,$E1,$9F,$20,$DF,$97,$4E,$7E ; $C28B38
    db $1C,$13,$F3,$37,$B4,$00,$06,$EE,$11,$ED,$12,$03,$FC,$BB,$0C,$7C ; $C28B48
    db $BE,$63,$BD,$01,$43,$24,$0F,$F1,$15,$30,$C7,$C7,$C7,$DE,$DE,$FE ; $C28B58
    db $E1,$00,$E3,$1C,$70,$5B,$AC,$BB,$74,$FD,$26,$77,$8C,$CF,$FC,$FD ; $C28B68
    db $06,$EE,$F6,$B8,$57,$20,$CF,$CF,$E5,$3F,$49,$3F,$BF,$80,$01,$DE ; $C28B78
    db $21,$F7,$C9,$FA,$65,$07,$BE,$67,$B8,$7F,$8F,$ED,$01,$5F,$21,$2D ; $C28B88
    db $87,$AE,$1B,$12,$FD,$22,$7B,$FC,$F3,$1C,$FB,$1C,$7D,$92,$7F,$F0 ; $C28B98
    db $DE,$DF,$04,$00,$F0,$00,$52,$4E,$43,$02,$00,$00,$BE,$20,$00,$00 ; $C28BA8
    db $73,$C7,$BB,$8D,$AD,$0B,$02,$04,$0B,$00,$00,$BE,$DA,$6B,$5A,$2B ; $C28BB8
    db $5C,$02,$D2,$62,$D4,$01,$50,$01,$0A,$01,$8E,$29,$D0,$41,$4C,$21 ; $C28BC8
    db $86,$08,$52,$42,$0C,$32,$88,$29,$04,$19,$7F,$80,$80,$BF,$FF,$80 ; $C28BD8
    db $C0,$95,$C0,$AA,$03,$63,$BF,$00,$FF,$00,$39,$0C,$7F,$01,$B8,$05 ; $C28BE8
    db $09,$3F,$6D,$C0,$03,$06,$98,$03,$D4,$03,$55,$00,$6D,$AA,$03,$0C ; $C28BF8
    db $CF,$0E,$03,$43,$01,$1B,$D2,$06,$11,$7B,$13,$05,$0F,$DE,$17,$1F ; $C28C08
    db $3A,$01,$E4,$00,$CA,$BF,$AA,$6B,$BF,$02,$05,$BF,$2A,$D5,$2A,$2C ; $C28C18
    db $1F,$BF,$53,$AA,$8D,$CE,$02,$81,$AA,$5C,$11,$33,$40,$0F,$80,$0F ; $C28C28
    db $10,$0F,$2F,$0F,$41,$00,$20,$07,$0B,$20,$18,$0B,$FF,$30,$13,$FF ; $C28C38
    db $8F,$0A,$FA,$9E,$FF,$90,$10,$01,$20,$EF,$01,$0C,$E0,$EF,$80,$2F ; $C28C48
    db $05,$A0,$C0,$09,$AF,$05,$FA,$0A,$F5,$CE,$03,$CA,$60,$03,$5D,$A5 ; $C28C58
    db $7A,$2A,$F5,$70,$51,$3B,$34,$08,$B8,$60,$08,$3B,$00,$7F,$01,$7F ; $C28C68
    db $82,$7F,$3F,$FF,$81,$FE,$3B,$C0,$FF,$88,$F7,$70,$80,$09,$02,$FD ; $C28C78
    db $31,$BF,$4F,$35,$EE,$FF,$70,$02,$82,$82,$BE,$82,$FE,$C2,$DE,$02 ; $C28C88
    db $9E,$FE,$FF,$C0,$37,$CE,$77,$02,$FF,$82,$63,$7D,$1F,$42,$BF,$04 ; $C28C98
    db $81,$FC,$FF,$08,$FB,$06,$01,$0B,$FF,$0F,$57,$D7,$01,$2D,$FB,$09 ; $C28CA8
    db $FB,$50,$AF,$A8,$5F,$58,$A7,$AB,$56,$5A,$AD,$A2,$5F,$5A,$AF,$A9 ; $C28CB8
    db $57,$0F,$19,$72,$FF,$1B,$FF,$F9,$FF,$89,$0F,$09,$FF,$29,$FF,$09 ; $C28CC8
    db $EF,$07,$F8,$07,$FC,$13,$EE,$F1,$C0,$09,$F7,$01,$FF,$21,$FF,$D8 ; $C28CD8
    db $03,$31,$FB,$FF,$03,$9A,$84,$84,$9D,$80,$BF,$17,$01,$C1,$BF,$0C ; $C28CE8
    db $9F,$FF,$59,$A7,$F9,$06,$E0,$7F,$C4,$7B,$C0,$7F,$01,$81,$03,$7E ; $C28CF8
    db $DF,$27,$D9,$FF,$79,$00,$25,$41,$41,$DF,$41,$FF,$E1,$EF,$30,$01 ; $C28D08
    db $CF,$FC,$D1,$AF,$51,$06,$BF,$01,$FE,$40,$BF,$E3,$36,$A0,$5F,$7F ; $C28D18
    db $8F,$37,$00,$83,$B9,$E5,$08,$51,$02,$1B,$05,$12,$AB,$80,$05,$5B ; $C28D28
    db $FB,$5A,$FF,$13,$38,$FF,$52,$69,$12,$80,$13,$F7,$5B,$AE,$18,$FF ; $C28D38
    db $A7,$FF,$D2,$AD,$5F,$01,$FE,$3F,$ED,$7F,$FF,$F7,$ED,$E7,$08,$3B ; $C28D48
    db $01,$14,$03,$04,$05,$B0,$01,$11,$F7,$6C,$00,$AB,$03,$F5,$1C,$01 ; $C28D58
    db $F5,$00,$01,$C0,$33,$B7,$EE,$77,$FF,$37,$37,$FE,$55,$5D,$07,$03 ; $C28D68
    db $15,$FF,$DE,$00,$01,$6A,$DF,$84,$FF,$68,$DF,$73,$05,$03,$2E,$37 ; $C28D78
    db $DE,$18,$7D,$FE,$61,$FA,$B5,$FF,$7B,$FE,$B7,$FF,$FA,$FA,$03,$FE ; $C28D88
    db $83,$CF,$41,$FA,$04,$1D,$5F,$83,$7C,$1D,$A1,$9C,$A1,$00,$03,$70 ; $C28D98
    db $90,$03,$08,$FF,$71,$61,$35,$01,$30,$79,$00,$57,$FA,$1C,$F7,$F5 ; $C28DA8
    db $BE,$D6,$C0,$01,$FF,$FB,$FE,$FD,$FF,$7C,$50,$0B,$39,$2F,$20,$3F ; $C28DB8
    db $94,$17,$A0,$43,$E3,$01,$EF,$00,$01,$10,$EF,$0F,$EF,$01,$E0,$00 ; $C28DC8
    db $36,$E7,$01,$05,$0B,$38,$FF,$10,$15,$0F,$38,$FA,$1E,$07,$11,$3F ; $C28DD8
    db $FE,$11,$19,$40,$FF,$3B,$05,$E2,$2C,$00,$E4,$47,$E0,$3B,$FB,$18 ; $C28DE8
    db $FF,$24,$10,$FF,$47,$09,$0E,$FB,$20,$2F,$24,$3B,$01,$2C,$FF,$FF ; $C28DF8
    db $3B,$E7,$03,$18,$07,$D2,$1B,$C1,$00,$60,$3F,$27,$03,$FF,$0C,$FE ; $C28E08
    db $39,$20,$F9,$43,$D3,$7D,$00,$95,$03,$FC,$0C,$F3,$20,$20,$DF,$09 ; $C28E18
    db $FE,$A2,$CB,$03,$E3,$87,$01,$6B,$01,$F5,$01,$F9,$01,$FD,$7F,$EA ; $C28E28
    db $FF,$73,$22,$FF,$01,$21,$01,$FE,$01,$F3,$19,$1D,$CE,$33,$C1,$CF ; $C28E38
    db $5C,$FE,$04,$FD,$02,$01,$00,$FD,$18,$35,$15,$58,$AF,$0D,$04,$FF ; $C28E48
    db $04,$FB,$01,$8B,$09,$7F,$FF,$AE,$F0,$F1,$F0,$F5,$E0,$F3,$C0,$E7 ; $C28E58
    db $C0,$CB,$80,$D7,$C2,$EF,$86,$FF,$B0,$EF,$30,$CF,$60,$DF,$C0,$FF ; $C28E68
    db $C0,$BF,$80,$FF,$C2,$3D,$80,$8F,$7E,$21,$04,$FE,$39,$61,$51,$7A ; $C28E78
    db $CF,$0B,$3B,$18,$0D,$38,$E7,$7F,$10,$E0,$05,$40,$E1,$80,$DD,$AF ; $C28E88
    db $04,$D1,$28,$D7,$30,$15,$05,$40,$BF,$80,$7C,$7F,$1C,$E0,$BD,$9B ; $C28E98
    db $FC,$FE,$08,$1D,$89,$03,$58,$02,$0F,$07,$20,$08,$F7,$01,$02,$A1 ; $C28EA8
    db $71,$0F,$1F,$0C,$E9,$15,$02,$33,$FE,$BC,$B7,$51,$88,$0F,$F3,$6C ; $C28EB8
    db $C1,$1B,$01,$BC,$7D,$43,$3C,$46,$3D,$F0,$F7,$1F,$05,$7C,$08,$02 ; $C28EC8
    db $87,$03,$E0,$BF,$1F,$F8,$9B,$04,$1F,$0F,$21,$3C,$0F,$07,$02,$0F ; $C28ED8
    db $07,$1F,$FC,$F0,$1F,$46,$57,$BD,$FD,$6C,$E0,$03,$E8,$E0,$03,$E0 ; $C28EE8
    db $FF,$D4,$EA,$E3,$9D,$DA,$FE,$01,$18,$03,$E8,$17,$03,$E0,$1F,$1C ; $C28EF8
    db $D4,$2B,$D0,$23,$78,$A0,$03,$2F,$D0,$2F,$54,$00,$D8,$B9,$01,$E8 ; $C28F08
    db $E0,$1D,$D2,$FF,$A8,$E8,$CD,$83,$25,$80,$30,$0F,$17,$1D,$D2,$2D ; $C28F18
    db $A8,$10,$57,$40,$BF,$25,$FC,$1A,$83,$AA,$23,$BF,$EA,$A0,$01,$FF ; $C28F28
    db $BA,$20,$20,$EF,$E8,$9E,$EB,$C5,$13,$DD,$3D,$5F,$38,$25,$01,$CF ; $C28F38
    db $30,$1A,$10,$EF,$AA,$11,$AE,$E5,$03,$3A,$02,$02,$21,$8A,$1F,$04 ; $C28F48
    db $35,$FD,$60,$91,$FF,$FC,$03,$01,$80,$12,$FF,$EA,$FF,$71,$D5,$87 ; $C28F58
    db $D0,$C4,$81,$D0,$01,$0E,$55,$EA,$15,$D5,$2A,$B1,$87,$85,$A1,$5E ; $C28F68
    db $A1,$03,$10,$9F,$43,$55,$04,$76,$AD,$55,$43,$E2,$02,$AA,$12,$05 ; $C28F78
    db $78,$4D,$02,$01,$80,$FF,$B3,$17,$07,$03,$2A,$D5,$15,$EA,$9E,$08 ; $C28F88
    db $1F,$00,$03,$1F,$90,$03,$80,$FF,$95,$73,$0F,$03,$C0,$98,$7F,$03 ; $C28F98
    db $95,$6A,$D8,$37,$03,$4A,$B5,$C1,$03,$CA,$35,$B5,$4A,$BD,$03,$18 ; $C28FA8
    db $3F,$E7,$C6,$1F,$3F,$8F,$07,$1F,$BF,$40,$08,$8F,$6D,$06,$7F,$1F ; $C28FB8
    db $0A,$FD,$8D,$36,$7F,$E7,$18,$5F,$FC,$85,$07,$1F,$FC,$03,$41,$C3 ; $C28FC8
    db $1F,$81,$20,$05,$40,$0A,$80,$15,$80,$2A,$80,$55,$07,$03,$40,$01 ; $C28FD8
    db $FE,$0E,$5D,$39,$20,$DA,$D1,$57,$9F,$EF,$AE,$B8,$80,$1F,$14,$41 ; $C28FE8
    db $80,$3E,$7C,$01,$AA,$01,$54,$01,$AB,$01,$06,$1A,$D3,$2D,$E3,$15 ; $C28FF8
    db $40,$8A,$20,$4D,$30,$9A,$10,$5D,$10,$B2,$10,$5E,$1F,$B3,$18,$21 ; $C29008
    db $17,$10,$EF,$03,$01,$1E,$E1,$32,$03,$55,$33,$03,$E1,$50,$06,$A0 ; $C29018
    db $08,$41,$10,$82,$10,$05,$E0,$0A,$00,$88,$31,$03,$FC,$AB,$4F,$04 ; $C29028
    db $BB,$39,$9C,$01,$F0,$B1,$2E,$AC,$73,$11,$57,$EF,$AF,$DF,$DF,$BF ; $C29038
    db $7F,$BF,$35,$FF,$FD,$F7,$18,$A0,$A5,$F6,$FF,$00,$EE,$FB,$EF,$F1 ; $C29048
    db $CF,$F1,$8F,$F9,$84,$0F,$1C,$00,$77,$01,$B8,$6A,$32,$FF,$DD,$77 ; $C29058
    db $AA,$F7,$AF,$F7,$6F,$F7,$EF,$32,$58,$B8,$E2,$98,$99,$F7,$00,$9B ; $C29068
    db $F5,$A4,$D3,$C6,$B1,$E0,$91,$C0,$03,$A2,$D5,$DD,$B3,$FF,$18,$C8 ; $C29078
    db $FF,$8A,$52,$FF,$CE,$39,$FF,$E6,$03,$80,$FF,$CC,$98,$77,$BA,$55 ; $C29088
    db $45,$06,$32,$67,$10,$00,$10,$03,$19,$22,$55,$DD,$42,$88,$C0,$15 ; $C29098
    db $CD,$FF,$EF,$FF,$72,$67,$03,$14,$09,$00,$74,$B3,$80,$21,$19,$F7 ; $C290A8
    db $5D,$B3,$AA,$55,$A1,$0C,$FF,$ED,$F7,$EE,$0C,$11,$E4,$01,$F1,$52 ; $C290B8
    db $35,$CE,$70,$EA,$F7,$75,$FB,$5B,$FD,$8E,$7D,$CC,$3F,$AF,$57,$83 ; $C290C8
    db $2D,$3F,$0D,$3A,$7F,$F7,$0F,$01,$70,$FB,$07,$FD,$03,$E6,$11,$44 ; $C290D8
    db $11,$A2,$19,$19,$00,$81,$01,$5D,$00,$B8,$09,$D4,$A2,$38,$F7,$44 ; $C290E8
    db $01,$00,$38,$F7,$A2,$01,$44,$00,$67,$11,$45,$11,$23,$99,$99,$01 ; $C290F8
    db $81,$01,$DD,$01,$80,$09,$FF,$89,$FF,$23,$77,$45,$E0,$01,$01,$77 ; $C29108
    db $23,$E0,$01,$45,$00,$00,$B9,$47,$21,$10,$11,$00,$FC,$00,$FE,$00 ; $C29118
    db $0F,$E0,$17,$20,$C9,$30,$01,$FE,$12,$DE,$FE,$98,$6A,$73,$A0,$98 ; $C29128
    db $FF,$80,$80,$C4,$C2,$3B,$C2,$E0,$A0,$0C,$C0,$78,$87,$F8,$04,$3B ; $C29138
    db $F5,$08,$A3,$13,$FB,$FF,$F3,$A4,$F0,$EA,$FF,$B8,$7A,$D7,$FF,$BF ; $C29148
    db $FF,$5F,$63,$8C,$9D,$23,$67,$89,$99,$01,$03,$92,$39,$57,$00,$41 ; $C29158
    db $B9,$CB,$30,$A7,$C0,$1F,$D7,$5E,$C1,$01,$3D,$42,$5F,$01,$B8,$52 ; $C29168
    db $33,$DF,$19,$FF,$2F,$FF,$C7,$AF,$8C,$3F,$FE,$CA,$45,$39,$5C,$04 ; $C29178
    db $78,$21,$1C,$51,$20,$A8,$47,$91,$48,$06,$D1,$05,$13,$EA,$17,$FF ; $C29188
    db $6E,$1F,$FE,$EE,$BA,$96,$FF,$87,$D8,$FF,$57,$88,$BB,$E4,$AE,$01 ; $C29198
    db $1D,$FA,$05,$7C,$81,$BF,$41,$9E,$41,$9F,$41,$FF,$FA,$9C,$88,$DB ; $C291A8
    db $03,$00,$AD,$FF,$56,$FF,$EB,$FF,$76,$F7,$75,$08,$35,$10,$80,$29 ; $C291B8
    db $ED,$12,$F6,$01,$02,$FF,$E7,$1F,$0E,$3A,$FF,$F5,$0C,$07,$55,$FF ; $C291C8
    db $A2,$C3,$5B,$5C,$85,$38,$BF,$03,$6B,$15,$D7,$29,$EB,$15,$53,$AD ; $C291D8
    db $FD,$41,$1B,$AF,$0E,$FD,$54,$FF,$AB,$61,$1B,$03,$D5,$BF,$A9,$AE ; $C291E8
    db $5F,$18,$9D,$F8,$03,$08,$73,$08,$3B,$40,$5E,$01,$7C,$02,$01,$75 ; $C291F8
    db $0A,$E2,$7F,$FF,$AF,$90,$9C,$63,$F7,$23,$5C,$D7,$A4,$CF,$23,$C7 ; $C29208
    db $39,$FA,$04,$14,$E2,$29,$12,$D0,$2B,$B0,$68,$53,$E8,$FE,$BF,$FE ; $C29218
    db $7F,$DE,$50,$7F,$07,$2A,$55,$00,$7F,$20,$6F,$10,$57,$28,$6E,$11 ; $C29228
    db $83,$DF,$80,$08,$13,$EB,$DF,$D5,$76,$5B,$DB,$CC,$DF,$8A,$1F,$EB ; $C29238
    db $0E,$10,$17,$E0,$8F,$00,$9D,$BF,$40,$6F,$90,$B7,$40,$01,$FD,$01 ; $C29248
    db $1C,$DA,$07,$0F,$9F,$FE,$04,$C1,$7F,$57,$20,$E9,$10,$3C,$7F,$D6 ; $C29258
    db $E4,$43,$1F,$C3,$BF,$0F,$BC,$7F,$01,$00,$F3,$12,$0C,$FD,$03,$A0 ; $C29268
    db $0C,$7B,$85,$38,$BD,$01,$92,$5E,$A4,$DD,$B3,$7F,$BC,$00,$ED,$CA ; $C29278
    db $30,$A5,$C2,$16,$08,$19,$26,$22,$66,$03,$4A,$FF,$16,$40,$7F,$3A ; $C29288
    db $3F,$10,$30,$28,$03,$11,$F7,$13,$BB,$75,$FF,$17,$FF,$1D,$FE,$1E ; $C29298
    db $FD,$55,$AA,$A2,$5D,$54,$AB,$B1,$4F,$56,$BB,$BF,$56,$44,$BF,$AC ; $C292A8
    db $5B,$78,$FF,$64,$DD,$C4,$DD,$84,$CD,$FC,$FD,$C4,$0F,$02,$17,$A7 ; $C292B8
    db $48,$38,$FF,$4C,$F3,$D4,$AB,$0C,$F3,$7D,$F2,$06,$FD,$53,$AE,$AB ; $C292C8
    db $56,$38,$F9,$34,$FB,$78,$F7,$F0,$EF,$C0,$CF,$E0,$DF,$17,$01,$79 ; $C292D8
    db $96,$19,$B2,$7D,$71,$AE,$E2,$5D,$85,$FA,$4A,$F5,$55,$EA,$CA,$B5 ; $C292E8
    db $03,$FF,$1C,$01,$07,$01,$55,$0F,$76,$9F,$33,$03,$6E,$A9,$03,$07 ; $C292F8
    db $3B,$5B,$AE,$A7,$5E,$C8,$01,$CB,$FC,$05,$FC,$1F,$04,$FE,$07,$03 ; $C29308
    db $51,$2B,$06,$FB,$04,$BE,$33,$02,$90,$FB,$7F,$A0,$3F,$60,$DF,$01 ; $C29318
    db $05,$4F,$C7,$58,$03,$BF,$7D,$03,$07,$4F,$9F,$03,$FD,$06,$3E,$0F ; $C29328
    db $E0,$08,$97,$FD,$DF,$9C,$06,$0F,$78,$59,$5C,$01,$2A,$3F,$03,$1F ; $C29338
    db $06,$07,$14,$36,$24,$26,$0C,$06,$88,$C0,$49,$03,$FE,$06,$F9,$02 ; $C29348
    db $14,$EB,$2C,$DB,$14,$FB,$2D,$23,$8E,$80,$63,$30,$30,$44,$60,$40 ; $C29358
    db $40,$08,$EB,$91,$4F,$FE,$7F,$53,$81,$30,$CF,$18,$7B,$44,$BF,$A1 ; $C29368
    db $00,$06,$1C,$40,$43,$00,$00,$21,$04,$04,$05,$CE,$00,$41,$93,$99 ; $C29378
    db $04,$3A,$2E,$CF,$18,$20,$00,$05,$00,$28,$00,$6A,$00,$08,$18,$10 ; $C29388
    db $10,$1C,$02,$00,$40,$18,$A3,$FF,$14,$04,$FF,$08,$F7,$10,$EF,$57 ; $C29398
    db $85,$3B,$0D,$1F,$80,$71,$20,$BF,$E0,$20,$07,$60,$20,$C1,$10,$0C ; $C293A8
    db $01,$3F,$1F,$EE,$30,$DF,$20,$4C,$01,$0B,$43,$ED,$95,$10,$3C,$44 ; $C293B8
    db $EB,$80,$C8,$98,$18,$22,$30,$20,$20,$18,$26,$EF,$00,$5D,$01,$58 ; $C293C8
    db $E7,$A0,$DF,$22,$DF,$90,$C3,$13,$0A,$02,$4C,$99,$7D,$00,$01,$50 ; $C293D8
    db $EF,$A8,$DF,$12,$FD,$41,$48,$83,$0B,$01,$84,$A0,$10,$28,$1A,$00 ; $C293E8
    db $82,$3D,$7F,$4C,$07,$FF,$AE,$CD,$16,$41,$3F,$A3,$1F,$54,$06,$AE ; $C293F8
    db $04,$51,$04,$8B,$00,$11,$FF,$05,$FA,$4C,$E3,$18,$83,$E0,$21,$F4 ; $C29408
    db $09,$00,$55,$54,$01,$B2,$C0,$25,$C0,$CA,$E0,$9F,$E0,$7F,$82,$2A ; $C29418
    db $7D,$00,$F1,$3D,$70,$A7,$54,$18,$A2,$18,$AE,$66,$5C,$03,$FB,$08 ; $C29428
    db $3D,$91,$04,$1B,$07,$03,$80,$80,$07,$1F,$E1,$CB,$E1,$55,$A1,$4B ; $C29438
    db $82,$03,$A1,$81,$03,$C0,$3F,$40,$BF,$1B,$43,$E8,$02,$11,$F3,$07 ; $C29448
    db $01,$7F,$C7,$06,$01,$A1,$0B,$24,$37,$03,$07,$15,$95,$01,$0B,$01 ; $C29458
    db $DA,$06,$E9,$A0,$F7,$19,$3F,$1E,$27,$FE,$05,$01,$F0,$07,$9F,$86 ; $C29468
    db $2F,$87,$0F,$57,$85,$2F,$85,$01,$07,$03,$06,$FD,$07,$FE,$59,$FF ; $C29478
    db $EF,$01,$01,$07,$7A,$3D,$09,$3F,$C7,$37,$05,$03,$03,$55,$07,$AD ; $C29488
    db $07,$D0,$04,$3B,$01,$55,$D0,$10,$B5,$03,$71,$90,$03,$A8,$D4,$84 ; $C29498
    db $DF,$A0,$5F,$C0,$3F,$0C,$03,$90,$6F,$03,$A8,$7D,$57,$18,$32,$BF ; $C294A8
    db $39,$3B,$EA,$47,$14,$E9,$81,$07,$0C,$3B,$EA,$15,$47,$E8,$6D,$17 ; $C294B8
    db $03,$07,$E7,$18,$3F,$E4,$7D,$03,$E8,$47,$03,$F4,$79,$65,$80,$03 ; $C294C8
    db $E5,$1A,$F2,$0D,$E9,$16,$80,$03,$F4,$0B,$F9,$6F,$06,$03,$18,$FA ; $C294D8
    db $FF,$FA,$BE,$2D,$FD,$FB,$01,$81,$F6,$FA,$05,$FC,$03,$F6,$09,$16 ; $C294E8
    db $4F,$C3,$DF,$EE,$01,$D0,$C7,$03,$B5,$01,$1F,$2A,$D5,$D5,$2A,$14 ; $C294F8
    db $92,$A7,$FF,$E0,$81,$17,$AB,$00,$56,$01,$07,$03,$AA,$00,$6F,$0F ; $C29508
    db $45,$03,$FE,$04,$80,$3F,$6A,$C0,$55,$60,$02,$CA,$E0,$C5,$F0,$0A ; $C29518
    db $F0,$48,$15,$81,$1F,$80,$7F,$40,$46,$1F,$A2,$1F,$16,$06,$A8,$06 ; $C29528
    db $8E,$5F,$87,$99,$F7,$C7,$14,$7F,$87,$08,$CF,$44,$10,$A2,$7C,$41 ; $C29538
    db $D8,$FF,$00,$84,$82,$28,$82,$50,$84,$81,$58,$88,$D9,$B8,$77,$88 ; $C29548
    db $FF,$D8,$B7,$F9,$7F,$41,$FE,$03,$FD,$07,$FA,$72,$B1,$11,$00,$E1 ; $C29558
    db $73,$0A,$73,$08,$CC,$3B,$C0,$20,$CE,$A3,$FC,$0F,$DD,$60,$00,$3B ; $C29568
    db $FF,$2E,$FF,$5D,$FF,$BE,$FF,$60,$6F,$09,$03,$E0,$0F,$80,$77,$3F ; $C29578
    db $B8,$7C,$03,$3F,$A4,$61,$AD,$E0,$BF,$1F,$F5,$70,$7F,$8E,$7F,$95 ; $C29588
    db $FF,$3F,$7F,$9F,$7F,$9B,$FF,$2C,$D7,$A8,$1E,$81,$2E,$ED,$22,$20 ; $C29598
    db $12,$7F,$FE,$F0,$2E,$C7,$AA,$B8,$2E,$EF,$E2,$0A,$35,$DB,$CF,$87 ; $C295A8
    db $C3,$2A,$5B,$FF,$8F,$0C,$3F,$9F,$3F,$BF,$EB,$21,$07,$CF,$21,$CE ; $C295B8
    db $21,$27,$74,$89,$63,$BA,$0E,$1F,$E1,$B1,$7F,$E8,$1B,$B4,$FF,$7B ; $C295C8
    db $38,$FF,$BD,$23,$BD,$45,$55,$32,$17,$C0,$03,$80,$35,$80,$9A,$40 ; $C295D8
    db $FB,$04,$62,$2B,$C0,$F3,$92,$E8,$D3,$28,$70,$21,$5F,$63,$88,$03 ; $C295E8
    db $93,$2A,$62,$88,$97,$2F,$BD,$9B,$4D,$BF,$5F,$18,$94,$F8,$C5,$05 ; $C295F8
    db $30,$F1,$0E,$FE,$02,$0E,$01,$4A,$DA,$B5,$C2,$F0,$BB,$14,$FD,$79 ; $C29608
    db $DE,$23,$F4,$88,$FF,$CB,$C4,$7A,$54,$00,$52,$57,$A9,$00,$02,$50 ; $C29618
    db $02,$A0,$04,$41,$18,$13,$5B,$E0,$75,$7F,$20,$27,$FE,$07,$FD,$1F ; $C29628
    db $F3,$E0,$0D,$02,$3E,$0A,$18,$7A,$02,$7E,$3B,$0A,$FA,$E7,$45,$60 ; $C29638
    db $D2,$02,$FF,$75,$FF,$74,$79,$38,$2C,$F5,$03,$FD,$B8,$60,$06,$00 ; $C29648
    db $3F,$02,$38,$00,$3E,$07,$3E,$04,$8E,$FD,$03,$39,$06,$FF,$0E,$3B ; $C29658
    db $FF,$7D,$39,$17,$57,$03,$DF,$22,$D8,$07,$35,$9A,$22,$C0,$00,$70 ; $C29668
    db $BF,$AA,$60,$AA,$07,$35,$AA,$20,$75,$EA,$40,$62,$F8,$FF,$BC,$73 ; $C29678
    db $BF,$00,$9C,$E5,$00,$C0,$67,$05,$02,$FC,$82,$BD,$EE,$91,$C3,$FE ; $C29688
    db $81,$3D,$F4,$61,$23,$07,$FC,$9D,$3B,$9E,$FC,$C3,$47,$BA,$D0,$63 ; $C29698
    db $FB,$40,$D5,$FF,$80,$AA,$07,$C0,$5D,$E0,$B2,$78,$B3,$04,$FF,$FD ; $C296A8
    db $F0,$17,$F8,$80,$A7,$0C,$0A,$08,$08,$1C,$EF,$AA,$18,$AA,$4D,$AA ; $C296B8
    db $08,$5D,$31,$7A,$EC,$37,$EF,$82,$00,$FF,$38,$CE,$CC,$04,$1F,$59 ; $C296C8
    db $0F,$C0,$01,$E1,$8F,$21,$93,$7F,$0A,$83,$21,$0D,$E3,$2A,$75,$EF ; $C296D8
    db $85,$21,$FF,$C2,$FE,$EF,$FE,$FF,$99,$F7,$93,$FF,$DD,$F7,$B7,$FF ; $C296E8
    db $29,$F8,$AA,$57,$FC,$99,$18,$FF,$F1,$FF,$B9,$FF,$D1,$FF,$91,$EE ; $C296F8
    db $B3,$EE,$D5,$EE,$F7,$98,$77,$A6,$F5,$29,$FD,$53,$FF,$03,$A3,$1C ; $C29708
    db $A9,$F5,$AB,$3A,$60,$C3,$03,$EF,$77,$FF,$02,$89,$20,$00,$AA,$F7 ; $C29718
    db $C8,$E3,$22,$48,$AC,$04,$C1,$A1,$8B,$F6,$0B,$F6,$E7,$02,$19,$F5 ; $C29728
    db $50,$12,$41,$C7,$03,$77,$88,$30,$1B,$BB,$AF,$FA,$05,$00,$FA,$AA ; $C29738
    db $55,$41,$BE,$E6,$11,$4C,$EA,$4C,$F5,$19,$F7,$01,$BB,$21,$F7,$55 ; $C29748
    db $81,$EE,$02,$E0,$B0,$03,$EE,$11,$00,$67,$11,$CD,$33,$AB,$55,$99 ; $C29758
    db $77,$C2,$01,$BB,$77,$55,$0F,$81,$01,$01,$70,$01,$1F,$EF,$11,$F3 ; $C29768
    db $02,$5F,$AF,$BE,$F6,$82,$0A,$FF,$EE,$55,$4C,$80,$FF,$F5,$5F,$A0 ; $C29778
    db $5F,$0F,$55,$AA,$82,$7D,$06,$76,$9D,$16,$11,$55,$CD,$77,$63,$FF ; $C29788
    db $51,$80,$23,$D1,$7F,$C0,$7F,$67,$3E,$89,$98,$01,$90,$BB,$65,$8B ; $C29798
    db $92,$2C,$A9,$C8,$7D,$FE,$02,$2E,$C5,$00,$A5,$B7,$5E,$54,$81,$BF ; $C297A8
    db $1F,$00,$A7,$C0,$4B,$30,$59,$3D,$D6,$C1,$6C,$57,$FF,$2B,$10,$61 ; $C297B8
    db $68,$03,$90,$93,$20,$07,$E0,$0E,$AA,$F8,$CD,$07,$10,$35,$D8,$DE ; $C297C8
    db $DD,$43,$13,$F7,$8C,$21,$CF,$19,$FE,$60,$DE,$00,$22,$DE,$15,$08 ; $C297D8
    db $3A,$FB,$04,$90,$A1,$80,$BF,$C0,$D9,$15,$E2,$B6,$FB,$4B,$D3,$AE ; $C297E8
    db $95,$21,$4E,$A1,$0D,$31,$C4,$FB,$5F,$EF,$10,$F3,$02,$B0,$A2,$29 ; $C297F8
    db $B1,$42,$AA,$9B,$3B,$3D,$5C,$32,$68,$01,$20,$4A,$A5,$94,$21,$E6 ; $C29808
    db $11,$EA,$11,$F6,$09,$FA,$05,$FE,$03,$19,$3D,$2A,$FF,$FD,$01,$DF ; $C29818
    db $7F,$FD,$BD,$F1,$08,$AE,$1B,$34,$05,$D3,$8A,$57,$97,$48,$A8,$47 ; $C29828
    db $D0,$20,$61,$1C,$FF,$5F,$FB,$BB,$23,$70,$7D,$47,$78,$FF,$0E,$BC ; $C29838
    db $7E,$81,$BE,$B0,$37,$9A,$45,$63,$5C,$07,$01,$7F,$AC,$49,$EB,$1C ; $C29848
    db $51,$AD,$59,$70,$AD,$1F,$ED,$FF,$18,$DE,$FF,$BD,$7F,$35,$4A,$08 ; $C29858
    db $5A,$04,$75,$0A,$1D,$E1,$3F,$40,$EB,$32,$05,$8E,$D9,$0A,$CE,$4A ; $C29868
    db $2A,$B1,$87,$76,$B1,$03,$1F,$CF,$30,$80,$9F,$F1,$0E,$AE,$50,$CE ; $C29878
    db $30,$0A,$A1,$50,$16,$E9,$B1,$93,$B7,$C7,$1F,$AF,$31,$07,$03,$F5 ; $C29888
    db $7E,$56,$76,$37,$23,$2B,$01,$7F,$55,$25,$8E,$DF,$AF,$39,$03,$8F ; $C29898
    db $03,$97,$E9,$DF,$1C,$2E,$11,$D7,$28,$B0,$6B,$50,$EA,$E8,$12,$14 ; $C298A8
    db $E2,$8A,$04,$C5,$39,$F9,$7F,$FC,$03,$93,$FE,$C7,$92,$01,$7A,$53 ; $C298B8
    db $B7,$2C,$D1,$7D,$1D,$83,$B2,$0C,$B3,$79,$F5,$B8,$AF,$54,$1B,$21 ; $C298C8
    db $1F,$03,$FD,$66,$02,$48,$BB,$02,$A6,$C0,$3C,$49,$32,$01,$3A,$7F ; $C298D8
    db $EA,$78,$4C,$00,$A8,$3F,$10,$53,$08,$3B,$7F,$F5,$AC,$06,$C5,$03 ; $C298E8
    db $FE,$03,$D6,$DE,$DA,$22,$DE,$14,$F5,$0A,$7F,$A9,$FB,$46,$FB,$7F ; $C298F8
    db $07,$60,$DF,$40,$CF,$00,$4B,$24,$75,$A5,$4D,$80,$5E,$80,$7F,$4A ; $C29908
    db $B5,$05,$FA,$18,$EF,$75,$11,$8A,$C0,$3F,$F0,$1F,$43,$E7,$A1,$DF ; $C29918
    db $33,$81,$BF,$01,$C3,$97,$6E,$1B,$00,$E7,$00,$F7,$47,$FB,$8A,$75 ; $C29928
    db $94,$EB,$2A,$D5,$D7,$69,$23,$FE,$5C,$D7,$00,$B5,$3E,$00,$E8,$01 ; $C29938
    db $5F,$95,$7F,$07,$70,$61,$EF,$00,$DF,$00,$7F,$3F,$12,$43,$7F,$C1 ; $C29948
    db $06,$83,$00,$17,$03,$8A,$01,$0C,$C0,$04,$81,$02,$C9,$06,$93,$00 ; $C29958
    db $F8,$20,$FC,$60,$03,$F4,$04,$60,$FF,$26,$FC,$64,$05,$0B,$C0,$18 ; $C29968
    db $90,$DF,$24,$83,$60,$0F,$10,$60,$98,$D0,$04,$80,$38,$F0,$04,$27 ; $C29978
    db $00,$6B,$20,$1F,$1C,$E0,$00,$07,$00,$2B,$00,$67,$20,$0B,$00,$E9 ; $C29988
    db $02,$C3,$24,$A1,$46,$80,$41,$40,$86,$03,$0B,$04,$86,$93,$38,$86 ; $C29998
    db $F4,$10,$FC,$14,$F8,$00,$FE,$30,$F9,$21,$FC,$70,$3F,$0D,$EC,$50 ; $C299A8
    db $E0,$18,$33,$80,$03,$F2,$00,$62,$98,$32,$40,$0D,$C0,$40,$BF,$01 ; $C299B8
    db $37,$80,$33,$07,$04,$0D,$04,$01,$04,$3A,$09,$84,$90,$F9,$40,$FF ; $C299C8
    db $FF,$2E,$3A,$20,$33,$70,$CA,$03,$22,$EF,$23,$18,$EF,$60,$FE,$92 ; $C299D8
    db $20,$DF,$75,$21,$03,$39,$23,$FF,$22,$84,$03,$40,$BF,$4D,$01,$C2 ; $C299E8
    db $94,$BD,$16,$FD,$88,$7F,$1C,$F7,$94,$B5,$4A,$21,$2A,$A1,$84,$8A ; $C299F8
    db $78,$BF,$03,$94,$AF,$3D,$F1,$06,$00,$AE,$11,$35,$7A,$AF,$F2,$5F ; $C29A08
    db $EA,$BF,$DA,$7F,$BA,$FF,$36,$FD,$AE,$7B,$FF,$BF,$4A,$76,$40,$48 ; $C29A18
    db $00,$B3,$1F,$42,$0B,$01,$44,$02,$00,$7C,$21,$00,$E7,$0E,$EF,$63 ; $C29A28
    db $DE,$42,$04,$01,$E2,$EE,$10,$08,$38,$5F,$64,$FF,$71,$42,$01,$E2 ; $C29A38
    db $40,$5F,$17,$10,$18,$77,$1D,$18,$F7,$18,$6E,$A5,$01,$37,$B0,$7F ; $C29A48
    db $12,$55,$7A,$FF,$66,$01,$AB,$0C,$FD,$FF,$01,$03,$00,$01,$F7,$01 ; $C29A58
    db $00,$1C,$5F,$03,$01,$59,$01,$01,$2B,$BA,$0B,$AF,$5D,$90,$EF,$57 ; $C29A68
    db $3D,$B9,$00,$51,$A7,$7B,$C7,$3D,$A7,$5B,$C1,$03,$6B,$97,$75,$CB ; $C29A78
    db $9D,$6A,$6F,$0C,$0E,$79,$01,$FB,$5C,$DF,$70,$FF,$3D,$BF,$7D,$7D ; $C29A88
    db $FD,$7D,$2E,$D7,$3C,$CF,$38,$CF,$19,$FF,$CA,$1A,$DE,$EC,$9F,$36 ; $C29A98
    db $6C,$D7,$8E,$53,$00,$2A,$2A,$95,$95,$AF,$AF,$DB,$DB,$CE,$47,$5F ; $C29AA8
    db $9E,$0F,$17,$55,$2A,$00,$0E,$95,$00,$AF,$80,$DB,$80,$6F,$00,$DF ; $C29AB8
    db $7D,$7F,$7E,$97,$CE,$F5,$44,$3F,$2E,$01,$10,$7D,$FF,$5D,$F6,$3E ; $C29AC8
    db $F5,$B4,$DF,$B4,$5B,$34,$DB,$01,$1F,$1C,$F7,$7F,$09,$9D,$1F,$82 ; $C29AD8
    db $2E,$62,$2B,$E5,$BC,$BF,$DD,$22,$EE,$80,$FB,$03,$55,$55,$AB,$AB ; $C29AE8
    db $76,$77,$11,$DA,$DB,$F5,$43,$46,$FD,$9D,$BB,$40,$0E,$01,$77,$01 ; $C29AF8
    db $0E,$DB,$03,$F7,$02,$A8,$A7,$11,$FB,$99,$BA,$70,$FB,$D1,$FB,$55 ; $C29B08
    db $FF,$D7,$FB,$54,$D8,$D4,$78,$DD,$79,$33,$DC,$DB,$35,$FB,$D5,$57 ; $C29B18
    db $F9,$F3,$DC,$52,$FF,$D3,$FF,$DB,$33,$FD,$FE,$F3,$04,$5F,$02,$BA ; $C29B28
    db $DA,$5C,$EA,$22,$91,$A0,$C2,$FE,$FB,$FE,$DF,$D9,$18,$79,$55,$F5 ; $C29B38
    db $27,$95,$D3,$5C,$95,$F8,$BB,$55,$F3,$75,$FB,$45,$7F,$9B,$F6,$95 ; $C29B48
    db $FA,$7E,$91,$D7,$39,$BF,$51,$57,$B8,$FF,$71,$57,$E9,$DD,$F7,$7B ; $C29B58
    db $64,$7F,$A6,$7F,$B9,$CE,$5C,$FF,$7F,$CC,$F3,$2C,$D3,$EA,$95,$66 ; $C29B68
    db $DB,$5D,$E7,$3B,$CF,$B7,$DE,$AF,$7A,$08,$25,$DF,$7F,$51,$9F,$A8 ; $C29B78
    db $FF,$40,$56,$4E,$5C,$1F,$00,$FD,$01,$C0,$67,$9F,$78,$BF,$01,$60 ; $C29B88
    db $7F,$C0,$FD,$02,$E0,$1F,$3F,$78,$BE,$87,$D5,$F8,$03,$EF,$EB,$07 ; $C29B98
    db $30,$01,$D5,$2A,$BC,$03,$0F,$07,$00,$FE,$02,$F5,$FE,$AB,$FE,$45 ; $C29BA8
    db $FE,$2B,$0F,$45,$20,$47,$D6,$EB,$44,$58,$4C,$28,$29,$99,$95,$C5 ; $C29BB8
    db $CB,$E3,$E7,$F3,$F1,$F9,$EB,$14,$52,$AF,$6B,$97,$3B,$C6,$15,$EA ; $C29BC8
    db $8B,$F7,$C6,$79,$E1,$3F,$FE,$B9,$EE,$7B,$02,$01,$4F,$03,$39,$AB ; $C29BD8
    db $54,$55,$AA,$02,$F9,$01,$05,$15,$F9,$FD,$FD,$54,$A8,$15,$C0,$0F ; $C29BE8
    db $F0,$1F,$F9,$0F,$5C,$1A,$A7,$AF,$53,$3F,$40,$0F,$CF,$1F,$59,$03 ; $C29BF8
    db $1D,$AB,$00,$15,$9D,$76,$09,$C0,$9D,$01,$00,$DF,$07,$22,$FB,$A4 ; $C29C08
    db $FF,$54,$55,$41,$BC,$D8,$44,$AD,$FF,$45,$7E,$4B,$30,$3F,$7F,$8F ; $C29C18
    db $C5,$3F,$63,$1F,$E1,$0F,$BD,$07,$5A,$07,$AE,$FB,$FC,$2F,$7E,$81 ; $C29C28
    db $00,$9D,$81,$EF,$10,$FB,$40,$FF,$44,$A2,$59,$0E,$00,$1F,$AB,$E2 ; $C29C38
    db $6A,$5A,$BA,$8A,$00,$EE,$E3,$EE,$01,$55,$3E,$A8,$5D,$74,$2A,$33 ; $C29C48
    db $96,$05,$27,$02,$8E,$1F,$01,$AE,$66,$15,$64,$D4,$61,$FB,$8B,$1F ; $C29C58
    db $54,$84,$85,$08,$02,$44,$7D,$06,$0C,$FF,$7C,$7F,$A0,$1E,$07,$3F ; $C29C68
    db $60,$BF,$B0,$72,$55,$08,$16,$F7,$44,$FB,$A5,$BF,$8A,$AB,$57,$89 ; $C29C78
    db $63,$53,$E7,$FC,$02,$CA,$C1,$97,$E7,$54,$D2,$02,$DB,$30,$3B,$45 ; $C29C88
    db $30,$8B,$7F,$5A,$81,$BF,$B2,$3F,$E1,$C2,$80,$0D,$04,$26,$0C,$19 ; $C29C98
    db $BE,$F0,$7E,$41,$3C,$14,$80,$FF,$38,$FF,$F4,$8F,$C0,$1F,$10,$25 ; $C29CA8
    db $FF,$50,$5A,$AF,$A6,$B7,$29,$BF,$00,$7F,$80,$EF,$E0,$9F,$78,$FF ; $C29CB8
    db $0F,$EA,$4B,$B7,$2D,$FF,$8C,$15,$7F,$FA,$7F,$DD,$EF,$FB,$1F,$ED ; $C29CC8
    db $20,$0E,$CF,$A2,$80,$2E,$E9,$E9,$C3,$DD,$0B,$BA,$0E,$49,$D3,$FF ; $C29CD8
    db $5F,$D2,$63,$7B,$2E,$4D,$8C,$18,$26,$86,$12,$43,$89,$23,$5B,$1F ; $C29CE8
    db $B3,$11,$45,$10,$5F,$0F,$F6,$23,$07,$FB,$D0,$90,$1B,$F5,$1D,$EF ; $C29CF8
    db $44,$08,$0B,$0F,$28,$CE,$23,$87,$68,$3F,$70,$08,$F3,$08,$A7,$FE ; $C29D08
    db $06,$07,$AF,$07,$75,$13,$FB,$D4,$00,$A1,$DB,$FF,$AD,$A7,$FA,$FF ; $C29D18
    db $FD,$CA,$E9,$60,$A5,$B7,$93,$54,$87,$C3,$73,$88,$D3,$2A,$53,$1D ; $C29D28
    db $56,$D1,$4C,$5F,$EF,$84,$29,$02,$00,$FC,$53,$B7,$31,$01,$F6,$0E ; $C29D38
    db $C1,$15,$B7,$FF,$D9,$54,$C5,$7B,$2B,$C5,$DF,$8F,$F2,$88,$63,$B8 ; $C29D48
    db $03,$F8,$03,$20,$8E,$21,$C1,$3F,$01,$C1,$EB,$C1,$52,$FF,$BD,$E9 ; $C29D58
    db $5C,$75,$E9,$99,$A3,$A5,$7F,$80,$87,$DA,$38,$AE,$70,$55,$E0,$05 ; $C29D68
    db $AA,$C0,$D5,$80,$6A,$58,$47,$F9,$12,$B7,$E0,$7F,$BC,$E9,$B2,$1F ; $C29D78
    db $39,$E1,$04,$1A,$05,$3E,$14,$8D,$FE,$0D,$04,$7E,$07,$78,$1D,$BF ; $C29D88
    db $74,$7F,$3A,$2E,$FB,$5D,$D2,$3B,$39,$CC,$0B,$7F,$DA,$7F,$29,$B7 ; $C29D98
    db $00,$AA,$2A,$60,$3A,$BF,$22,$22,$BE,$40,$6A,$F4,$DF,$BF,$73,$9F ; $C29DA8
    db $01,$0B,$05,$DF,$FE,$DF,$8E,$F4,$6B,$F0,$AD,$18,$56,$04,$AA,$02 ; $C29DB8
    db $54,$03,$A8,$01,$55,$01,$AB,$70,$1D,$9F,$1F,$F7,$8A,$01,$FD,$03 ; $C29DC8
    db $B3,$43,$45,$01,$91,$33,$63,$39,$7E,$75,$01,$91,$45,$67,$91,$1C ; $C29DD8
    db $DF,$B5,$BD,$74,$B9,$B0,$16,$A9,$4B,$57,$00,$A2,$8A,$40,$B7,$AA ; $C29DE8
    db $AA,$18,$6E,$EF,$08,$11,$08,$EF,$9A,$F1,$D9,$F7,$EF,$E7,$C3,$01 ; $C29DF8
    db $F7,$AF,$0B,$84,$F7,$7D,$8D,$84,$63,$A5,$63,$8D,$27,$41,$BF,$AF ; $C29E08
    db $21,$6F,$E1,$0F,$02,$52,$75,$FE,$D3,$FE,$28,$1F,$11,$DF,$FF,$9D ; $C29E18
    db $F5,$23,$BE,$67,$C4,$BE,$00,$19,$FD,$83,$BE,$02,$7F,$FE,$EB,$73 ; $C29E28
    db $5F,$00,$6B,$B6,$03,$1B,$74,$56,$81,$49,$8F,$EF,$1F,$B2,$79,$5D ; $C29E38
    db $CE,$FF,$B2,$3F,$AC,$47,$77,$FF,$03,$EB,$C0,$FF,$80,$FB,$0D,$8B ; $C29E48
    db $C7,$AF,$FC,$9D,$08,$13,$40,$A0,$2D,$07,$10,$03,$FF,$08,$37,$A0 ; $C29E58
    db $3F,$20,$09,$0D,$BF,$C0,$7F,$22,$0F,$07,$89,$A0,$7F,$02,$7B,$CD ; $C29E68
    db $86,$7A,$03,$F9,$07,$55,$A3,$29,$02,$22,$0B,$FD,$81,$66,$05,$FE ; $C29E78
    db $40,$47,$29,$E0,$18,$6D,$18,$29,$FB,$24,$10,$FB,$08,$E7,$37,$30 ; $C29E88
    db $A0,$5F,$17,$18,$F7,$20,$F8,$01,$C5,$F6,$04,$01,$49,$FF,$02,$D3 ; $C29E98
    db $47,$0F,$A4,$C5,$27,$FF,$31,$31,$F7,$01,$11,$F7,$73,$1F,$FF,$61 ; $C29EA8
    db $F1,$81,$CF,$81,$FF,$07,$F8,$31,$EE,$31,$DE,$11,$FE,$1F,$F9,$61 ; $C29EB8
    db $9E,$81,$FE,$81,$7E,$FF,$0E,$3C,$75,$04,$01,$81,$AB,$7C,$CF,$03 ; $C29EC8
    db $0F,$7E,$87,$E9,$A8,$01,$0F,$00,$3F,$00,$00,$33,$00,$2D,$02,$2B ; $C29ED8
    db $06,$35,$55,$0E,$40,$93,$7F,$FF,$6A,$FF,$5F,$F7,$04,$77,$7F,$DF ; $C29EE8
    db $7F,$BE,$0E,$1D,$22,$00,$FB,$0C,$00,$05,$B9,$50,$90,$B7,$10,$11 ; $C29EF8
    db $1F,$BB,$12,$5B,$A8,$AF,$3F,$40,$1F,$C2,$3D,$10,$3E,$01,$E1,$3A ; $C29F08
    db $07,$18,$04,$39,$14,$39,$04,$BF,$15,$FF,$4A,$DD,$08,$54,$7B,$74 ; $C29F18
    db $47,$18,$3F,$C7,$30,$EC,$CF,$60,$01,$AF,$C0,$9F,$00,$7B,$04,$FD ; $C29F28
    db $07,$88,$FF,$5D,$68,$7F,$56,$A3,$6C,$EF,$79,$EB,$02,$5F,$1F,$1D ; $C29F38
    db $FA,$4D,$00,$5F,$17,$63,$71,$E7,$25,$EA,$E7,$02,$1F,$D0,$A2,$04 ; $C29F48
    db $1F,$C7,$7F,$2F,$1E,$1F,$AB,$02,$D8,$04,$BD,$42,$DE,$00,$E8,$5E ; $C29F58
    db $8A,$5E,$3A,$8E,$FD,$07,$01,$D4,$FF,$97,$D1,$03,$88,$D6,$71,$67 ; $C29F68
    db $3B,$57,$54,$AB,$C1,$FF,$87,$07,$F7,$80,$04,$7F,$03,$F8,$0B,$08 ; $C29F78
    db $FD,$08,$99,$5F,$FB,$D1,$9D,$04,$43,$EE,$2E,$1F,$14,$D0,$61,$C5 ; $C29F88
    db $0B,$CD,$03,$B5,$0B,$AD,$1B,$D5,$3B,$1F,$01,$F7,$F6,$E3,$FE,$7F ; $C29F98
    db $DE,$DB,$80,$03,$FE,$BB,$F1,$0C,$FE,$04,$EE,$7B,$2A,$11,$60,$BF ; $C29FA8
    db $40,$8A,$D2,$FE,$DE,$3A,$57,$FB,$C8,$5D,$8C,$A3,$42,$03,$B8,$60 ; $C29FB8
    db $F5,$83,$8D,$07,$CD,$E3,$CD,$23,$C5,$23,$CD,$27,$05,$FE,$57,$FE ; $C29FC8
    db $A3,$AE,$E4,$9B,$3B,$B7,$00,$07,$39,$04,$38,$04,$D9,$16,$1D,$DE ; $C29FD8
    db $31,$3F,$82,$83,$1F,$00,$DF,$08,$31,$33,$3F,$1F,$1E,$F6,$28,$83 ; $C29FE8
    db $22,$7D,$37,$EE,$13,$55,$F8,$6E,$2A,$15,$80,$03,$4A,$95,$8A,$40 ; $C29FF8
    db $FF,$7F,$FA,$08,$8C,$7B,$0E,$FC,$47,$38,$3F,$90,$B7,$DE,$11,$D9 ; $C2A008
    db $36,$D9,$49,$4D,$CF,$93,$12,$7E,$23,$43,$F7,$90,$87,$C1,$41,$9B ; $C2A018
    db $45,$07,$5D,$81,$3F,$81,$BF,$58,$FD,$FB,$33,$05,$FC,$A7,$4F,$A8 ; $C2A028
    db $0A,$07,$F5,$FF,$EB,$FF,$DC,$1A,$1F,$FC,$9E,$1D,$5F,$71,$3D,$AA ; $C2A038
    db $54,$01,$9D,$07,$A9,$E7,$1F,$F6,$08,$8F,$E3,$4D,$23,$8D,$63,$85 ; $C2A048
    db $61,$47,$8F,$9F,$03,$3B,$07,$73,$01,$48,$01,$00,$B3,$FB,$E1,$FE ; $C2A058
    db $CF,$1C,$FE,$BF,$FE,$65,$15,$F7,$63,$02,$63,$FB,$7E,$80,$01,$7D ; $C2A068
    db $02,$3A,$44,$D9,$13,$04,$FF,$13,$B7,$3F,$AF,$FB,$C1,$65,$D7,$5F ; $C2A078
    db $3F,$70,$77,$0F,$7B,$07,$FF,$03,$F5,$01,$37,$6F,$CF,$23,$C3,$01 ; $C2A088
    db $F8,$7F,$FC,$03,$01,$AF,$FE,$5F,$FA,$A1,$40,$7C,$43,$78,$05,$02 ; $C2A098
    db $9B,$85,$79,$14,$B8,$85,$40,$07,$BA,$85,$FF,$2F,$61,$7F,$37,$3E ; $C2A0A8
    db $7F,$57,$30,$07,$55,$F5,$00,$03,$6A,$D5,$7A,$80,$D5,$AA,$06,$07 ; $C2A0B8
    db $EA,$55,$FA,$00,$07,$AC,$BB,$AF,$9E,$C3,$E5,$07,$90,$37,$07,$79 ; $C2A0C8
    db $39,$02,$3F,$55,$44,$07,$7E,$24,$3F,$37,$B3,$47,$C0,$08,$3F,$57 ; $C2A0D8
    db $00,$AB,$55,$AF,$18,$00,$54,$AB,$C3,$A9,$57,$35,$AD,$02,$07,$70 ; $C2A0E8
    db $59,$FA,$AE,$69,$AE,$07,$80,$FD,$C5,$63,$CD,$27,$8D,$E3,$B2,$07 ; $C2A0F8
    db $AA,$7F,$B5,$2C,$FE,$DB,$07,$20,$56,$01,$3F,$55,$12,$AA,$5F,$00 ; $C2A108
    db $78,$07,$0A,$3F,$45,$E3,$21,$4D,$A7,$3F,$27,$07,$8E,$08,$3F,$08 ; $C2A118
    db $FB,$00,$01,$EB,$0F,$EF,$0F,$CA,$08,$EA,$35,$08,$CB,$09,$C3,$58 ; $C2A128
    db $A7,$A8,$57,$48,$BF,$84,$7F,$4A,$BD,$88,$77,$63,$07,$03,$0F,$FF ; $C2A138
    db $44,$01,$0E,$0E,$8F,$0F,$0F,$8C,$F0,$27,$07,$60,$F8,$01,$17,$E8 ; $C2A148
    db $F7,$F8,$71,$0F,$07,$27,$CC,$03,$33,$0B,$0C,$EF,$0E,$E8,$7C,$43 ; $C2A158
    db $8B,$E0,$45,$FF,$08,$F8,$C0,$33,$89,$77,$40,$BF,$F0,$18,$3F,$08 ; $C2A168
    db $FF,$47,$5F,$A1,$D6,$03,$43,$3B,$01,$6C,$00,$08,$3B,$C7,$A4,$3B ; $C2A178
    db $04,$01,$EF,$F8,$02,$5B,$9F,$DE,$63,$CA,$57,$01,$E0,$AD,$DD,$E0 ; $C2A188
    db $0B,$50,$BF,$B0,$EA,$8E,$A1,$AF,$5A,$5E,$40,$07,$0B,$20,$EF,$C7 ; $C2A198
    db $01,$30,$EF,$7A,$B2,$3F,$60,$3C,$03,$FD,$38,$BD,$05,$18,$FA,$0A ; $C2A1A8
    db $F5,$03,$CA,$F5,$00,$1D,$FA,$0E,$F1,$9D,$FA,$08,$F7,$70,$11,$3B ; $C2A1B8
    db $05,$E2,$93,$3B,$00,$61,$E3,$E0,$41,$BF,$AD,$5A,$58,$98,$3B,$4F ; $C2A1C8
    db $B3,$00,$FC,$FF,$28,$F3,$70,$EF,$A0,$2F,$86,$45,$01,$70,$E0,$03 ; $C2A1D8
    db $01,$FE,$01,$4A,$F5,$25,$FA,$2A,$D5,$25,$C7,$47,$85,$3E,$03,$01 ; $C2A1E8
    db $8B,$3C,$3E,$00,$07,$A0,$BD,$14,$00,$02,$0A,$16,$04,$07,$0E,$0F ; $C2A1F8
    db $00,$06,$98,$1E,$71,$12,$F7,$1F,$04,$FB,$0A,$01,$40,$DF,$10,$18 ; $C2A208
    db $04,$B8,$75,$10,$08,$00,$60,$70,$80,$C0,$88,$80,$10,$80,$20,$BB ; $C2A218
    db $1D,$13,$BE,$55,$9F,$8E,$11,$BB,$08,$70,$A5,$30,$10,$38,$00,$78 ; $C2A228
    db $18,$03,$5F,$DF,$10,$F4,$06,$61,$C0,$00,$01,$03,$02,$06,$04,$16 ; $C2A238
    db $04,$00,$04,$BE,$1B,$05,$09,$02,$FD,$04,$FB,$37,$1F,$5B,$08,$04 ; $C2A248
    db $90,$48,$3F,$09,$00,$01,$88,$F3,$EF,$1B,$1B,$01,$02,$13,$15,$7E ; $C2A258
    db $44,$7C,$41,$C1,$00,$1E,$C5,$47,$FF,$A8,$C1,$29,$74,$9B,$23,$04 ; $C2A268
    db $B3,$0C,$94,$BA,$4B,$D5,$93,$44,$17,$1E,$01,$04,$01,$7F,$00,$08 ; $C2A278
    db $08,$01,$01,$02,$03,$04,$07,$2D,$05,$05,$42,$DB,$05,$80,$7F,$05 ; $C2A288
    db $FA,$04,$0C,$08,$E0,$37,$01,$10,$88,$E3,$83,$90,$9B,$7E,$13,$47 ; $C2A298
    db $1B,$B1,$BF,$CE,$67,$03,$EA,$00,$C3,$04,$30,$30,$45,$60,$40,$09 ; $C2A2A8
    db $40,$08,$40,$20,$E0,$3F,$30,$CF,$40,$BF,$71,$44,$81,$18,$40,$49 ; $C2A2B8
    db $64,$0C,$48,$08,$C1,$A3,$40,$60,$94,$84,$A0,$7A,$8B,$94,$0E,$FB ; $C2A2C8
    db $2A,$F7,$C4,$E0,$D7,$84,$7B,$77,$12,$1C,$E5,$21,$B8,$D7,$60,$1C ; $C2A2D8
    db $80,$12,$87,$6C,$0C,$50,$18,$A0,$30,$A0,$60,$C0,$60,$00,$4C,$C3 ; $C2A2E8
    db $0C,$F3,$A5,$20,$62,$DF,$01,$40,$BF,$C7,$FF,$08,$64,$1A,$0C,$F7 ; $C2A2F8
    db $9F,$F3,$02,$E3,$90,$65,$40,$33,$DD,$01,$9D,$78,$00,$67,$43,$70 ; $C2A308
    db $E8,$BF,$3F,$40,$BF,$04,$71,$5F,$33,$02,$80,$80,$04,$02,$10,$02 ; $C2A318
    db $40,$06,$64,$20,$0C,$78,$3B,$33,$70,$1D,$01,$30,$FF,$4D,$C0,$FF ; $C2A328
    db $2B,$C0,$7F,$0B,$66,$BB,$9D,$D5,$7F,$AA,$5E,$41,$78,$09,$18,$1F ; $C2A338
    db $99,$EE,$07,$DD,$22,$66,$88,$99,$BA,$01,$03,$87,$FF,$BB,$D7,$04 ; $C2A348
    db $BF,$D8,$18,$1F,$53,$21,$10,$1D,$11,$00,$FC,$FB,$42,$87,$0F,$E0 ; $C2A358
    db $17,$20,$4B,$B2,$01,$FE,$12,$DE,$FE,$98,$53,$41,$16,$80,$56,$FA ; $C2A368
    db $FD,$F5,$80,$80,$C4,$C2,$1D,$C2,$E0,$BF,$45,$32,$C3,$78,$87,$FB ; $C2A378
    db $04,$F7,$08,$80,$FF,$C2,$FB,$FF,$F3,$BA,$1D,$EA,$3B,$FF,$D1,$80 ; $C2A388
    db $05,$55,$93,$EC,$65,$C0,$83,$EF,$67,$BB,$91,$EF,$70,$66,$07,$46 ; $C2A398
    db $BB,$A3,$5F,$EF,$C0,$02,$03,$CF,$30,$B5,$C2,$57,$03,$48,$99,$A2 ; $C2A3A8
    db $76,$08,$59,$BD,$C3,$C0,$03,$FF,$BA,$FF,$EB,$BF,$77,$3E,$D5,$03 ; $C2A3B8
    db $EF,$D7,$81,$BF,$B0,$02,$DF,$12,$74,$FF,$68,$78,$FF,$01,$DF,$FF ; $C2A3C8
    db $C1,$E1,$20,$BF,$FF,$FD,$05,$FF,$1E,$80,$B9,$02,$02,$1F,$E3,$00 ; $C2A3D8
    db $9F,$07,$20,$39,$FE,$A0,$00,$9D,$05,$DF,$FF,$7F,$D5,$03,$17,$00 ; $C2A3E8
    db $27,$08,$0E,$FD,$72,$D2,$F8,$A1,$FA,$42,$F8,$89,$72,$46,$80,$0A ; $C2A3F8
    db $1F,$7E,$9F,$FB,$FC,$80,$0F,$C5,$E7,$FF,$07,$C4,$7F,$99,$22,$D2 ; $C2A408
    db $5F,$FA,$47,$FF,$4B,$1F,$84,$20,$08,$FC,$24,$FA,$06,$06,$FE,$01 ; $C2A418
    db $00,$DB,$27,$00,$1F,$F8,$BF,$FC,$AF,$FC,$57,$75,$FC,$C8,$3D,$FC ; $C2A428
    db $B7,$3D,$73,$67,$03,$03,$2E,$3C,$C4,$02,$03,$6C,$2E,$9E,$D0,$7C ; $C2A438
    db $38,$50,$B0,$F0,$10,$78,$88,$DE,$26,$77,$E9,$8D,$83,$F0,$FF,$E0 ; $C2A448
    db $BF,$E0,$FF,$F0,$BF,$F8,$EF,$FE,$FF,$24,$9E,$FB,$7F,$00,$BF,$22 ; $C2A458
    db $7F,$00,$5C,$7F,$2E,$1E,$5A,$20,$80,$5F,$EB,$7F,$D5,$7F,$EE,$BC ; $C2A468
    db $60,$71,$07,$9F,$D9,$F4,$02,$9F,$BE,$09,$BF,$B8,$E3,$01,$40,$0D ; $C2A478
    db $22,$06,$09,$9D,$03,$DE,$E3,$34,$7B,$0F,$18,$05,$0A,$35,$3F,$FB ; $C2A488
    db $AA,$F3,$FB,$00,$FE,$E7,$3E,$FB,$0F,$FE,$07,$FF,$30,$76,$88,$33 ; $C2A498
    db $E6,$F8,$05,$01,$92,$06,$00,$15,$02,$16,$08,$A5,$0B,$8E,$77,$1F ; $C2A4A8
    db $FB,$BA,$55,$FB,$1F,$0B,$04,$4B,$7D,$1D,$A8,$B6,$09,$55,$AA,$AA ; $C2A4B8
    db $55,$00,$03,$AB,$54,$5F,$A3,$E4,$3F,$8E,$03,$2F,$3C,$FF,$0E,$FE ; $C2A4C8
    db $01,$FD,$86,$FE,$CE,$FE,$FC,$FD,$CB,$1B,$87,$75,$45,$BA,$AA,$5D ; $C2A4D8
    db $52,$AF,$A2,$5F,$4A,$BF,$84,$00,$4C,$E6,$F7,$C3,$EF,$C0,$EF,$07 ; $C2A4E8
    db $E0,$EE,$70,$F7,$30,$2E,$45,$1C,$C5,$7F,$A7,$FF,$84,$FB,$A8,$D7 ; $C2A4F8
    db $24,$DB,$02,$FD,$27,$00,$55,$78,$FB,$F0,$C7,$A0,$DF,$40,$77,$9F ; $C2A508
    db $E8,$DE,$65,$89,$01,$FE,$82,$7D,$15,$EA,$0A,$F5,$A4,$03,$67,$FA ; $C2A518
    db $18,$F8,$FF,$1B,$1F,$80,$00,$01,$C0,$00,$E0,$00,$F0,$00,$F8,$51 ; $C2A528
    db $C6,$E1,$27,$3F,$39,$04,$19,$D4,$84,$B7,$38,$04,$3B,$07,$52,$C7 ; $C2A538
    db $3F,$4E,$00,$91,$B7,$6F,$FF,$77,$C1,$07,$7E,$FE,$54,$9D,$22,$FB ; $C2A548
    db $48,$B7,$7F,$00,$1F,$30,$80,$6F,$E4,$20,$C7,$30,$9F,$8E,$EE,$D7 ; $C2A558
    db $C8,$3B,$D7,$B2,$05,$2C,$39,$03,$6D,$42,$2B,$06,$75,$4E,$08,$09 ; $C2A568
    db $1C,$7F,$67,$B4,$7B,$5D,$B7,$63,$36,$3B,$BF,$3F,$BC,$07,$EB,$81 ; $C2A578
    db $29,$F7,$90,$F7,$10,$E0,$1F,$BA,$9E,$55,$B8,$22,$E4,$ED,$59,$39 ; $C2A588
    db $10,$F9,$1B,$8F,$C2,$7D,$9F,$29,$B7,$45,$FE,$B6,$32,$F4,$10,$EB ; $C2A598
    db $FF,$23,$D6,$FF,$44,$9B,$6A,$A3,$CF,$A4,$B7,$7F,$80,$5B,$BF,$41 ; $C2A5A8
    db $40,$00,$D7,$54,$AB,$5B,$F7,$CE,$D8,$75,$13,$A6,$37,$00,$BA,$43 ; $C2A5B8
    db $22,$22,$01,$22,$73,$61,$99,$00,$52,$E5,$00,$A3,$62,$78,$9E,$1F ; $C2A5C8
    db $01,$7F,$74,$57,$F9,$D9,$03,$1F,$7F,$6A,$5D,$B7,$01,$48,$C5,$04 ; $C2A5D8
    db $F1,$0C,$A8,$57,$74,$DF,$3B,$B9,$F5,$E2,$BD,$F7,$FE,$EA,$D4,$81 ; $C2A5E8
    db $B7,$CD,$E3,$85,$03,$7D,$07,$C7,$23,$FF,$53,$B7,$9B,$17,$BB,$03 ; $C2A5F8
    db $A4,$3F,$D7,$FE,$3B,$AB,$FD,$FD,$BE,$CF,$7F,$9D,$02,$5F,$FF,$CC ; $C2A608
    db $E1,$44,$F9,$C2,$5F,$FE,$83,$CE,$76,$07,$39,$75,$FB,$B9,$C7,$30 ; $C2A618
    db $18,$33,$BB,$DF,$5F,$3A,$FE,$FB,$9C,$FF,$03,$D7,$7D,$F0,$0A,$38 ; $C2A628
    db $FF,$9F,$6F,$3F,$70,$17,$F9,$75,$FF,$60,$7A,$8B,$37,$1E,$FB,$05 ; $C2A638
    db $75,$FD,$20,$B9,$BF,$01,$3F,$81,$5B,$1C,$85,$8F,$43,$9D,$77,$7E ; $C2A648
    db $0E,$DB,$DC,$C0,$23,$DD,$FF,$EF,$FD,$75,$FA,$0F,$58,$FF,$7D,$03 ; $C2A658
    db $3F,$1D,$A9,$23,$00,$7F,$C0,$40,$8A,$55,$7F,$80,$55,$27,$AA,$FD ; $C2A668
    db $4F,$E7,$52,$FF,$CA,$E3,$01,$97,$89,$01,$2F,$5A,$BF,$5F,$E6,$3D ; $C2A678
    db $01,$04,$7E,$01,$3E,$41,$5D,$52,$FF,$EE,$EC,$5D,$AE,$E3,$5D,$AF ; $C2A688
    db $B3,$49,$CB,$AB,$85,$9F,$F9,$23,$05,$48,$FF,$BF,$FE,$77,$AA,$4E ; $C2A698
    db $FF,$AB,$FE,$45,$A9,$20,$FF,$A9,$56,$AA,$01,$54,$5A,$AB,$CE,$47 ; $C2A6A8
    db $DE,$15,$05,$00,$B5,$20,$FF,$75,$81,$97,$6F,$4F,$15,$23,$4F,$A3 ; $C2A6B8
    db $4F,$FF,$62,$1E,$FA,$F1,$1B,$05,$01,$00,$1B,$9F,$87,$7E,$17,$BD ; $C2A6C8
    db $87,$78,$11,$07,$9A,$84,$48,$C7,$FC,$2F,$7B,$1F,$57,$FB,$3F,$02 ; $C2A6D8
    db $4A,$FF,$D5,$E1,$80,$0A,$D5,$8A,$C0,$5F,$8C,$91,$1C,$30,$19,$F2 ; $C2A6E8
    db $14,$C8,$FF,$00,$DF,$E0,$A1,$3D,$FF,$B3,$FA,$1A,$5D,$FF,$D5,$4A ; $C2A6F8
    db $FF,$EA,$74,$F7,$FF,$AA,$01,$AA,$CF,$DF,$BF,$02,$E2,$03,$0E,$B7 ; $C2A708
    db $AB,$59,$B7,$07,$F5,$01,$BF,$9A,$07,$E9,$6D,$23,$B5,$63,$ED,$67 ; $C2A718
    db $7D,$E3,$AD,$63,$F5,$23,$AD,$27,$AD,$23,$FE,$F5,$DE,$E3,$9E,$F5 ; $C2A728
    db $9E,$EB,$DE,$75,$FE,$E3,$8E,$0B,$FE,$FB,$3B,$37,$54,$C0,$F9,$A9 ; $C2A738
    db $57,$01,$AB,$79,$54,$01,$3F,$FF,$E1,$04,$3F,$A5,$63,$CD,$70,$E7 ; $C2A748
    db $8D,$E3,$2D,$C3,$65,$03,$8D,$07,$4D,$A3,$DE,$C7,$3F,$F3,$3E,$38 ; $C2A758
    db $37,$3B,$F3,$E0,$03,$DB,$38,$05,$07,$3D,$05,$CF,$16,$CF,$EE,$02 ; $C2A768
    db $FF,$B4,$B3,$3F,$0E,$EC,$7B,$6A,$AC,$C5,$1F,$3B,$BF,$40,$A0,$87 ; $C2A778
    db $00,$6F,$BA,$EF,$90,$67,$95,$14,$6A,$1C,$BD,$55,$57,$54,$AA,$77 ; $C2A788
    db $E7,$3A,$1D,$0F,$D8,$FF,$CE,$11,$03,$C9,$36,$3B,$07,$39,$04,$91 ; $C2A798
    db $73,$C0,$39,$75,$3F,$0A,$08,$FF,$FD,$FC,$7C,$D7,$FF,$0E,$95,$5F ; $C2A7A8
    db $55,$8A,$2F,$BA,$AF,$10,$DA,$F5,$DF,$20,$CE,$3F,$CF,$73,$F9,$37 ; $C2A7B8
    db $77,$3F,$78,$83,$47,$FE,$00,$01,$FD,$57,$FD,$02,$FA,$AF,$FA,$3A ; $C2A7C8
    db $05,$54,$A7,$FB,$FE,$FE,$95,$01,$5F,$55,$CF,$5D,$58,$BF,$4D,$12 ; $C2A7D8
    db $E3,$45,$A1,$C7,$FF,$F3,$81,$6E,$FF,$F4,$62,$FB,$A1,$EC,$FF,$B7 ; $C2A7E8
    db $01,$FE,$6F,$7F,$5F,$F7,$23,$02,$9A,$F3,$FE,$F8,$00,$3F,$AD,$57 ; $C2A7F8
    db $ED,$02,$56,$56,$AB,$FF,$4C,$AB,$3F,$BA,$EC,$A8,$BF,$B6,$FF,$5C ; $C2A808
    db $57,$31,$EF,$4F,$A3,$8F,$E3,$78,$7F,$FC,$2F,$FC,$D7,$FE,$2F,$D1 ; $C2A818
    db $FC,$12,$49,$FB,$3A,$00,$07,$87,$36,$01,$D6,$13,$DF,$CC,$01,$E2 ; $C2A828
    db $2F,$0F,$00,$15,$00,$02,$2B,$BF,$1F,$BD,$16,$1F,$02,$01,$17,$3B ; $C2A838
    db $79,$AA,$0D,$3F,$80,$49,$03,$3C,$05,$08,$1F,$55,$95,$3E,$D7,$30 ; $C2A848
    db $7F,$00,$66,$88,$DE,$23,$79,$8E,$46,$BB,$C0,$03,$1F,$A2,$97,$E8 ; $C2A858
    db $65,$55,$BA,$54,$99,$EE,$03,$43,$FB,$07,$06,$1F,$59,$A2,$96,$E8 ; $C2A868
    db $03,$1D,$86,$E8,$D9,$F2,$DF,$DD,$22,$A2,$B5,$74,$4A,$3B,$8A,$FF ; $C2A878
    db $A7,$13,$EB,$02,$7F,$6A,$11,$DF,$13,$46,$C1,$11,$1E,$77,$88,$46 ; $C2A888
    db $0E,$1F,$9D,$7E,$9F,$02,$87,$3B,$9D,$0F,$03,$FD,$22,$03,$84,$BD ; $C2A898
    db $FB,$3E,$25,$04,$88,$5B,$FF,$4B,$C7,$05,$DF,$31,$87,$B7,$E6,$3B ; $C2A8A8
    db $E8,$09,$5F,$CE,$FB,$11,$87,$45,$D5,$1E,$11,$88,$0B,$9F,$B1,$1F ; $C2A8B8
    db $55,$23,$7F,$67,$98,$7B,$03,$98,$23,$09,$61,$8E,$C4,$3B,$CA,$37 ; $C2A8C8
    db $FB,$74,$00,$3F,$BB,$11,$EE,$87,$3A,$59,$AE,$37,$C6,$3B,$67,$52 ; $C2A8D8
    db $5F,$EE,$AA,$5C,$5F,$DB,$17,$4F,$9B,$0F,$23,$BB,$71,$8E,$0F,$3A ; $C2A8E8
    db $FF,$B1,$38,$E5,$7F,$19,$FD,$10,$1F,$31,$7F,$61,$8F,$9D,$5B,$19 ; $C2A8F8
    db $48,$BB,$F1,$8F,$5B,$05,$A3,$F5,$8B,$52,$AC,$69,$19,$53,$BB,$5A ; $C2A908
    db $67,$E3,$76,$08,$79,$22,$1F,$68,$66,$3B,$18,$6E,$26,$1B,$B9,$C6 ; $C2A918
    db $4E,$33,$48,$17,$3B,$43,$6F,$AC,$C1,$E6,$A7,$6A,$5C,$92,$7A,$33 ; $C2A928
    db $A0,$07,$E0,$1E,$10,$FE,$00,$CD,$10,$35,$D8,$DE,$DD,$FD,$F9,$95 ; $C2A938
    db $37,$ED,$CF,$EF,$CB,$FF,$54,$FE,$9A,$DE,$DE,$22,$DE,$17,$08,$FA ; $C2A948
    db $05,$F8,$07,$FC,$80,$BF,$C0,$D9,$E2,$B6,$FB,$75,$00,$2A,$9D,$AF ; $C2A958
    db $EF,$83,$77,$A7,$16,$0D,$C4,$FB,$C0,$7B,$F7,$C8,$9D,$C2,$07,$1F ; $C2A968
    db $88,$B1,$02,$01,$A3,$7B,$0F,$FF,$DE,$FF,$5F,$04,$CF,$7F,$66,$08 ; $C2A978
    db $DD,$7F,$00,$03,$5C,$B8,$FE,$3C,$3B,$3C,$FC,$02,$01,$DF,$EF,$01 ; $C2A988
    db $BF,$CF,$7E,$FE,$FE,$FD,$F8,$FF,$00,$01,$C0,$DF,$98,$F1,$3A,$28 ; $C2A998
    db $F3,$7F,$00,$04,$5F,$9F,$BF,$08,$80,$FF,$77,$8F,$88,$3C,$70,$98 ; $C2A9A8
    db $04,$80,$38,$78,$80,$9D,$D9,$5F,$3E,$F0,$CE,$01,$F9,$61,$FB,$07 ; $C2A9B8
    db $71,$89,$9B,$07,$6C,$9E,$10,$B8,$30,$10,$90,$30,$B0,$50,$F0,$70 ; $C2A9C8
    db $9E,$EF,$C0,$FC,$1D,$60,$FF,$63,$E0,$01,$7F,$90,$A3,$5F,$3F,$33 ; $C2A9D8
    db $01,$06,$3C,$5F,$FB,$04,$5F,$80,$30,$C0,$80,$02,$C0,$40,$40,$05 ; $C2A9E8
    db $A0,$20,$DF,$3F,$1F,$23,$11,$97,$37,$C0,$59,$05,$8B,$0B,$E1,$FF ; $C2A9F8
    db $9E,$0D,$FA,$03,$08,$15,$02,$27,$08,$9E,$07,$38,$0C,$38,$88,$DD ; $C2AA08
    db $E6,$34,$78,$07,$FE,$1F,$FB,$3F,$FE,$79,$0C,$FC,$EF,$F8,$DF,$CC ; $C2AA18
    db $3F,$44,$FB,$40,$73,$F7,$36,$08,$70,$19,$03,$59,$22,$B4,$0A,$FB ; $C2AA28
    db $7F,$EF,$7F,$85,$7F,$0B,$C3,$1C,$05,$06,$0F,$0F,$10,$20,$0B,$00 ; $C2AA38
    db $7F,$22,$80,$91,$12,$48,$F3,$0F,$FF,$3F,$1D,$FF,$7F,$F3,$F1,$23 ; $C2AA48
    db $D5,$80,$FF,$0F,$3B,$05,$DE,$FF,$04,$FF,$47,$7F,$06,$EB,$12,$F7 ; $C2AA58
    db $97,$03,$24,$F5,$4F,$EF,$1F,$DF,$85,$35,$7F,$55,$C3,$AA,$B2,$5D ; $C2AA68
    db $5B,$BF,$A4,$7F,$48,$B7,$90,$7F,$60,$B8,$CB,$5C,$40,$33,$77,$40 ; $C2AA78
    db $DF,$E0,$CF,$C0,$E7,$F0,$FB,$F8,$FD,$FC,$01,$FE,$2E,$1F,$CA,$13 ; $C2AA88
    db $35,$C5,$BA,$C2,$3D,$11,$EE,$08,$FF,$05,$FA,$00,$B2,$86,$C7,$00 ; $C2AA98
    db $FD,$23,$DB,$C7,$79,$85,$50,$F9,$2B,$03,$FF,$17,$FE,$7D,$D2,$FE ; $C2AAA8
    db $AF,$52,$4E,$02,$37,$00,$FA,$3D,$00,$6F,$96,$FD,$2A,$FF,$5E,$FF ; $C2AAB8
    db $EE,$8E,$01,$55,$FA,$85,$EC,$72,$FC,$7D,$70,$09,$05,$10,$00,$4E ; $C2AAC8
    db $11,$A3,$1F,$01,$FE,$06,$98,$C9,$01,$0E,$F9,$93,$1F,$B9,$81,$01 ; $C2AAD8
    db $60,$A0,$30,$F0,$70,$B0,$D0,$24,$1F,$72,$81,$20,$18,$FF,$70,$EF ; $C2AAE8
    db $65,$07,$0F,$31,$05,$01,$03,$03,$07,$6B,$8C,$43,$07,$FB,$01,$13 ; $C2AAF8
    db $FC,$7D,$02,$01,$40,$5F,$30,$F8,$70,$FC,$F0,$FC,$3A,$E0,$FC,$C5 ; $C2AB08
    db $1D,$F0,$5A,$CB,$FF,$02,$50,$BF,$90,$EF,$60,$DF,$C1,$1F,$57,$0E ; $C2AB18
    db $8F,$AE,$4B,$3D,$40,$8F,$40,$10,$40,$94,$43,$13,$47,$93,$47,$06 ; $C2AB28
    db $FD,$0F,$F6,$3F,$87,$09,$3F,$F7,$3F,$58,$F7,$3D,$75,$FE,$98,$A0 ; $C2AB38
    db $69,$00,$CF,$EB,$6A,$98,$2B,$5D,$CA,$FB,$A4,$9B,$F7,$FF,$EF,$40 ; $C2AB48
    db $5D,$04,$FB,$53,$C7,$93,$07,$C0,$37,$9A,$47,$23,$57,$82,$40,$47 ; $C2AB58
    db $3F,$7C,$BF,$71,$3C,$37,$3E,$83,$03,$F7,$3C,$DF,$3D,$98,$09,$2B ; $C2AB68
    db $DF,$EF,$00,$8F,$CF,$C7,$00,$EF,$EF,$F9,$EF,$63,$FB,$37,$EF,$30 ; $C2AB78
    db $1D,$7F,$FF,$94,$4B,$DD,$10,$A4,$80,$12,$FF,$15,$14,$FF,$55,$6D ; $C2AB88
    db $D7,$5F,$26,$8F,$54,$AF,$01,$A6,$E2,$19,$00,$23,$E4,$DF,$5F,$5C ; $C2AB98
    db $02,$2A,$F8,$01,$04,$FC,$06,$1C,$06,$6C,$97,$94,$BE,$14,$D7,$AF ; $C2ABA8
    db $FC,$B0,$03,$01,$49,$FE,$EF,$EC,$3C,$EE,$C5,$01,$5F,$31,$EA,$90 ; $C2ABB8
    db $F8,$16,$FF,$5F,$00,$31,$FE,$12,$FD,$34,$FB,$14,$3E,$31,$14,$3F ; $C2ABC8
    db $03,$94,$3F,$80,$3B,$94,$BF,$9C,$BE,$90,$BF,$21,$7C,$FF,$01,$09 ; $C2ABD8
    db $39,$3B,$09,$E8,$BF,$00,$30,$03,$51,$03,$04,$54,$0F,$1F,$B2,$10 ; $C2ABE8
    db $14,$03,$7C,$9B,$DD,$16,$59,$EF,$1F,$00,$03,$15,$C0,$8A,$20,$F3 ; $C2ABF8
    db $02,$1D,$A0,$80,$9F,$0A,$FF,$45,$10,$A2,$0E,$10,$4D,$10,$A1,$0C ; $C2AC08
    db $03,$01,$F0,$C5,$07,$0C,$71,$0D,$13,$05,$DE,$49,$DD,$03,$80,$25 ; $C2AC18
    db $75,$20,$20,$FF,$01,$10,$70,$26,$3F,$2A,$00,$07,$50,$00,$2F,$07 ; $C2AC28
    db $75,$7A,$55,$E6,$3B,$FF,$88,$40,$47,$01,$87,$FD,$90,$5B,$A3,$17 ; $C2AC38
    db $3A,$55,$01,$9D,$45,$03,$D9,$05,$02,$80,$2F,$FF,$03,$FD,$05,$FE ; $C2AC48
    db $0A,$EF,$50,$27,$00,$9F,$03,$40,$55,$40,$CA,$E0,$15,$90,$3F,$2B ; $C2AC58
    db $EC,$FB,$FF,$07,$70,$BF,$C8,$7F,$F1,$78,$7C,$D0,$23,$FF,$82,$03 ; $C2AC68
    db $3F,$C7,$C3,$31,$A3,$01,$01,$3F,$AB,$01,$35,$81,$DB,$C1,$07,$99 ; $C2AC78
    db $05,$70,$C9,$01,$45,$FF,$A4,$50,$E1,$7F,$32,$33,$9B,$2A,$E1,$90 ; $C2AC88
    db $59,$9E,$32,$90,$E5,$F0,$0A,$80,$40,$FF,$A2,$80,$B3,$FF,$2A,$FF ; $C2AC98
    db $58,$E7,$1C,$0E,$EF,$60,$9F,$32,$C6,$78,$40,$80,$00,$00,$AB,$81 ; $C2ACA8
    db $94,$81,$AA,$81,$C1,$BF,$8B,$7B,$9C,$00,$7F,$7F,$C1,$7E,$C0,$7F ; $C2ACB8
    db $C0,$FF,$1C,$81,$FE,$37,$1F,$00,$20,$40,$2B,$00,$5A,$F0,$D1,$1F ; $C2ACC8
    db $15,$AA,$10,$10,$38,$3C,$1F,$94,$FF,$0C,$50,$AF,$11,$EE,$07,$10 ; $C2ACD8
    db $B8,$F0,$EF,$CF,$FF,$FB,$FB,$0C,$59,$51,$08,$0A,$F8,$75,$08,$AC ; $C2ACE8
    db $0F,$58,$6B,$FB,$04,$31,$08,$F7,$B7,$0C,$F7,$87,$A5,$0C,$F3,$07 ; $C2ACF8
    db $03,$2B,$F7,$F7,$18,$55,$00,$7F,$90,$3E,$41,$40,$8A,$80,$15,$E1 ; $C2AD08
    db $1F,$E7,$18,$A0,$35,$39,$5C,$12,$BF,$A0,$7F,$F5,$FF,$40,$DF,$59 ; $C2AD18
    db $00,$A3,$87,$90,$88,$AA,$88,$C8,$BB,$93,$7F,$00,$03,$C3,$7C,$C3 ; $C2AD28
    db $7F,$C8,$F7,$88,$E8,$83,$00,$40,$00,$10,$20,$AB,$20,$E9,$FF,$52 ; $C2AD38
    db $35,$FB,$3C,$F2,$C1,$05,$34,$DF,$E9,$16,$4E,$3B,$AB,$6A,$F7,$03 ; $C2AD48
    db $4B,$55,$55,$10,$32,$F0,$01,$03,$A7,$0F,$5F,$02,$A8,$02,$00,$5F ; $C2AD58
    db $18,$EF,$38,$CF,$C0,$05,$07,$F8,$02,$FD,$01,$E3,$31,$04,$00,$1F ; $C2AD68
    db $04,$AE,$07,$50,$04,$00,$F8,$51,$01,$9F,$04,$83,$02,$FB,$06,$F9 ; $C2AD78
    db $01,$B3,$67,$FC,$97,$41,$99,$9F,$3F,$A2,$C1,$D9,$0D,$13,$19,$05 ; $C2AD88
    db $11,$0B,$01,$15,$01,$19,$13,$1F,$F1,$9C,$7F,$29,$F7,$B1,$EF,$A3 ; $C2AD98
    db $FF,$A5,$FF,$A1,$FF,$B3,$EF,$53,$84,$2A,$84,$54,$8F,$20,$88,$45 ; $C2ADA8
    db $90,$1A,$F0,$45,$10,$22,$88,$44,$17,$33,$D9,$61,$20,$A0,$01,$17 ; $C2ADB8
    db $03,$18,$0B,$03,$35,$03,$01,$35,$28,$01,$2B,$03,$AB,$0E,$FD,$A3 ; $C2ADC8
    db $FD,$83,$26,$39,$81,$01,$07,$5C,$87,$28,$84,$51,$00,$43,$57,$84 ; $C2ADD8
    db $0E,$9E,$C9,$E0,$30,$7A,$80,$3B,$03,$FF,$02,$A0,$43,$0E,$F1,$C6 ; $C2ADE8
    db $EE,$00,$D2,$55,$08,$A3,$08,$41,$10,$60,$AB,$C4,$10,$B8,$1E,$50 ; $C2ADF8
    db $3B,$10,$A3,$C5,$FF,$04,$38,$01,$C5,$F7,$B8,$E0,$1F,$EF,$08,$FF ; $C2AE08
    db $7D,$7F,$0F,$07,$57,$07,$2D,$05,$55,$07,$AD,$07,$03,$2D,$07,$7C ; $C2AE18
    db $87,$14,$F2,$FF,$84,$01,$51,$04,$05,$45,$C5,$33,$4D,$C3,$10,$83 ; $C2AE28
    db $3C,$04,$43,$0B,$80,$15,$80,$2B,$80,$08,$A2,$77,$0E,$A3,$18,$AB ; $C2AE38
    db $1F,$40,$98,$01,$33,$25,$1F,$5C,$75,$3A,$27,$2D,$27,$25,$67,$0D ; $C2AE48
    db $27,$CF,$3F,$A1,$05,$84,$00,$3F,$AC,$DF,$B4,$DF,$34,$DF,$C2,$09 ; $C2AE58
    db $0A,$F5,$18,$D4,$00,$9F,$03,$02,$0E,$03,$12,$01,$26,$2D,$01,$40 ; $C2AE68
    db $00,$DD,$01,$FE,$04,$FA,$08,$12,$F2,$1C,$E2,$A0,$B3,$8C,$12,$00 ; $C2AE78
    db $67,$9F,$D2,$04,$80,$38,$F0,$04,$90,$1D,$61,$C0,$07,$00,$07,$29 ; $C2AE88
    db $04,$67,$5D,$75,$2B,$70,$40,$03,$84,$41,$84,$01,$00,$41,$06,$83 ; $C2AE98
    db $00,$C1,$E1,$03,$34,$C2,$70,$3C,$E6,$7A,$A0,$7E,$E0,$78,$A0,$FC ; $C2AEA8
    db $60,$F8,$20,$C6,$03,$E0,$18,$33,$F0,$04,$03,$07,$00,$0B,$7A,$00 ; $C2AEB8
    db $04,$03,$80,$00,$8C,$83,$8B,$E8,$F3,$02,$01,$86,$76,$CB,$59,$07 ; $C2AEC8
    db $40,$5F,$87,$7C,$2F,$D0,$18,$7F,$60,$FD,$BE,$21,$00,$B5,$C0,$00 ; $C2AED8
    db $E0,$60,$F0,$30,$F8,$58,$7C,$F8,$02,$80,$7F,$C0,$3F,$E0,$1F,$F0 ; $C2AEE8
    db $0F,$34,$1E,$0B,$58,$07,$04,$03,$EE,$BC,$5A,$20,$04,$03,$AC,$00 ; $C2AEF8
    db $FC,$7C,$EC,$BE,$FE,$7E,$FE,$BE,$AF,$32,$76,$03,$F4,$E3,$0B,$F8 ; $C2AF08
    db $07,$F2,$0D,$FC,$07,$FC,$0B,$FF,$07,$FD,$0B,$FE,$07,$C0,$1E,$A3 ; $C2AF18
    db $3E,$01,$DC,$42,$BB,$11,$1D,$B6,$03,$10,$55,$BA,$70,$CB,$FE,$28 ; $C2AF28
    db $FE,$73,$F9,$2F,$F4,$7C,$08,$F0,$EC,$90,$48,$47,$4B,$E0,$27,$40 ; $C2AF38
    db $C3,$F0,$49,$03,$BF,$70,$BF,$D0,$1F,$44,$9F,$58,$03,$FC,$9F,$18 ; $C2AF48
    db $0B,$01,$84,$BF,$13,$F3,$D1,$40,$FB,$03,$E8,$30,$31,$EC,$70,$03 ; $C2AF58
    db $FC,$70,$0F,$FB,$1C,$60,$FF,$93,$87,$7F,$4B,$BF,$80,$03,$47,$3F ; $C2AF68
    db $33,$61,$0F,$FF,$FF,$0B,$FF,$2F,$5D,$0D,$01,$A1,$A8,$C3,$FC,$01 ; $C2AF78
    db $29,$F0,$9F,$07,$71,$40,$FF,$E8,$7F,$74,$FF,$38,$FF,$34,$FF,$F8 ; $C2AF88
    db $7F,$F4,$BF,$D8,$7F,$F2,$18,$FF,$EF,$6B,$F7,$2E,$03,$1D,$F4,$3F ; $C2AF98
    db $F8,$3F,$F4,$1F,$F8,$1F,$FC,$0F,$F8,$0F,$8F,$05,$07,$C1,$03,$42 ; $C2AFA8
    db $BB,$03,$CF,$B7,$20,$7B,$BF,$38,$3F,$CF,$18,$BF,$BF,$07,$3B,$BF ; $C2AFB8
    db $FC,$7B,$B3,$04,$03,$C0,$38,$3F,$00,$80,$80,$D0,$80,$46,$FE,$6A ; $C2AFC8
    db $91,$03,$00,$5F,$BF,$C4,$01,$C0,$3F,$96,$03,$8E,$7F,$87,$20,$E0 ; $C2AFD8
    db $7D,$41,$F8,$F6,$08,$BB,$BF,$C0,$B9,$07,$03,$90,$37,$07,$06,$43 ; $C2AFE8
    db $3F,$A0,$5F,$03,$24,$90,$6F,$07,$E6,$3F,$31,$51,$FC,$01,$FE,$37 ; $C2AFF8
    db $01,$80,$07,$3F,$39,$04,$19,$04,$39,$14,$2C,$39,$04,$07,$E0,$A2 ; $C2B008
    db $5F,$FF,$76,$EB,$12,$5D,$76,$00,$07,$FE,$01,$FA,$05,$FC,$01,$FE ; $C2B018
    db $A4,$01,$27,$09,$43,$66,$FD,$AA,$FA,$7D,$E2,$09,$7D,$40,$37,$3D ; $C2B028
    db $04,$0D,$7C,$48,$1D,$3F,$76,$EF,$79,$E1,$37,$DC,$C1,$A6,$07,$7F ; $C2B038
    db $20,$39,$FB,$05,$FD,$0E,$01,$F3,$0F,$F1,$8E,$59,$B5,$3D,$7D,$D4 ; $C2B048
    db $09,$FB,$75,$FF,$BD,$51,$BA,$71,$61,$8F,$98,$24,$65,$9C,$91,$20 ; $C2B058
    db $4F,$A0,$2B,$E4,$0D,$80,$3E,$81,$A3,$5D,$FF,$AC,$C3,$75,$E5,$A3 ; $C2B068
    db $65,$B7,$FF,$EB,$5C,$84,$3B,$00,$02,$74,$8A,$B9,$02,$FE,$03,$BF ; $C2B078
    db $40,$6F,$90,$C8,$8D,$B7,$95,$A9,$99,$B5,$00,$F8,$2F,$90,$36,$81 ; $C2B088
    db $3D,$63,$82,$37,$2D,$92,$60,$07,$EE,$4E,$B1,$FF,$D7,$E3,$1B,$D7 ; $C2B098
    db $A9,$7B,$50,$DF,$07,$FB,$5F,$6C,$A0,$33,$03,$BE,$00,$41,$6E,$91 ; $C2B0A8
    db $BF,$41,$5D,$AF,$A8,$7F,$58,$05,$BD,$1D,$74,$BE,$D0,$52,$9B,$44 ; $C2B0B8
    db $76,$DD,$76,$01,$35,$80,$3A,$80,$BF,$80,$FF,$2B,$13,$43,$F7,$F6 ; $C2B0C8
    db $83,$E3,$7F,$26,$C8,$A5,$42,$CA,$70,$F1,$0A,$B4,$48,$58,$0E,$FC ; $C2B0D8
    db $02,$5C,$16,$AB,$1F,$6F,$D7,$BD,$EE,$30,$05,$65,$F7,$CE,$F0,$1B ; $C2B0E8
    db $87,$80,$3D,$37,$BC,$1E,$02,$7D,$00,$7A,$80,$B5,$40,$B7,$E4,$80 ; $C2B0F8
    db $03,$00,$AC,$12,$54,$02,$BC,$02,$30,$5E,$02,$07,$56,$02,$BE,$15 ; $C2B108
    db $02,$67,$1E,$62,$9D,$EB,$2C,$D9,$A1,$07,$DF,$78,$72,$1F,$70,$1D ; $C2B118
    db $70,$1A,$60,$10,$31,$1F,$73,$3F,$7F,$7F,$1F,$7F,$EF,$BF,$ED,$DF ; $C2B128
    db $FA,$C0,$43,$D8,$FF,$3F,$AC,$3F,$1D,$CB,$FE,$E6,$80,$A1,$17,$40 ; $C2B138
    db $01,$A8,$00,$00,$B4,$BA,$85,$FF,$D2,$BC,$A9,$FF,$28,$B2,$EB,$44 ; $C2B148
    db $C1,$AA,$B0,$FF,$0F,$3F,$71,$1B,$03,$05,$3F,$BA,$ED,$D7,$FB,$9D ; $C2B158
    db $3F,$60,$E1,$60,$DF,$57,$0F,$40,$F1,$F8,$18,$02,$A3,$D4,$8D,$3F ; $C2B168
    db $F9,$7E,$D7,$E7,$8E,$11,$7F,$50,$F0,$6D,$00,$D4,$00,$06,$F4,$03 ; $C2B178
    db $1F,$72,$1D,$FD,$EB,$F1,$67,$07,$AA,$AE,$EE,$3D,$07,$F1,$E3,$15 ; $C2B188
    db $05,$11,$17,$01,$71,$83,$D7,$E3,$E7,$F7,$F1,$F7,$65,$4A,$C2,$5F ; $C2B198
    db $FE,$FD,$FE,$1F,$FE,$F3,$FA,$F3,$FC,$BF,$CE,$63,$3F,$00,$00,$F8 ; $C2B1A8
    db $07,$17,$48,$00,$5F,$05,$D8,$BD,$32,$11,$07,$99,$3F,$A7,$C7,$3F ; $C2B1B8
    db $EE,$6E,$58,$50,$01,$3F,$BC,$7F,$1D,$5E,$FF,$1B,$4E,$B3,$03,$24 ; $C2B1C8
    db $92,$47,$07,$DD,$03,$4F,$B7,$52,$BB,$3E,$72,$EB,$07,$91,$03,$49 ; $C2B1D8
    db $BF,$88,$C8,$6A,$5D,$BF,$DF,$4B,$BF,$57,$A2,$ED,$29,$5F,$22,$D0 ; $C2B1E8
    db $3F,$9B,$CB,$97,$3B,$47,$54,$C0,$38,$47,$97,$4F,$38,$43,$9F,$3F ; $C2B1F8
    db $40,$1F,$A0,$05,$3E,$D7,$7F,$AF,$58,$3F,$EF,$75,$3B,$91,$43,$04 ; $C2B208
    db $DF,$9F,$CF,$92,$9C,$09,$03,$00,$55,$98,$43,$BF,$F6,$95,$03,$38 ; $C2B218
    db $0B,$51,$1B,$CF,$21,$0F,$0F,$5F,$D1,$2F,$C7,$5F,$70,$50,$D5,$15 ; $C2B228
    db $45,$FB,$84,$27,$70,$9F,$58,$23,$B4,$12,$FE,$A4,$9F,$A4,$BF,$97 ; $C2B238
    db $BF,$05,$95,$BC,$14,$BF,$7C,$53,$B9,$14,$A8,$BF,$7D,$09,$9E,$F1 ; $C2B248
    db $03,$5F,$10,$F7,$92,$5F,$12,$C8,$41,$AA,$45,$03,$18,$69,$3B,$1C ; $C2B258
    db $3F,$01,$10,$FE,$F4,$FF,$04,$FE,$FC,$1E,$9F,$E1,$55,$7C,$03,$64 ; $C2B268
    db $3B,$23,$7F,$EB,$33,$14,$87,$80,$2A,$81,$50,$82,$20,$8C,$21,$70 ; $C2B278
    db $A7,$20,$40,$71,$D9,$9D,$03,$6A,$F1,$D9,$21,$FF,$26,$72,$DF,$B8 ; $C2B288
    db $DF,$12,$44,$28,$46,$47,$70,$A2,$08,$59,$08,$2E,$08,$08,$3B,$BF ; $C2B298
    db $7F,$A1,$E9,$E3,$07,$40,$BF,$44,$FF,$8C,$51,$9D,$14,$03,$9F,$45 ; $C2B2A8
    db $20,$9A,$20,$55,$90,$03,$07,$01,$6C,$23,$B0,$3C,$54,$FF,$8A,$D4 ; $C2B2B8
    db $B7,$5F,$0A,$57,$2E,$03,$5A,$24,$DF,$31,$CF,$7F,$7F,$80,$55,$51 ; $C2B2C8
    db $04,$AC,$07,$53,$04,$A0,$08,$09,$F0,$0A,$00,$0E,$03,$75,$84,$FB ; $C2B2D8
    db $00,$A9,$BB,$77,$04,$2B,$47,$15,$87,$01,$0B,$01,$13,$07,$A5,$05 ; $C2B2E8
    db $4B,$19,$B7,$11,$11,$1C,$BA,$A1,$77,$00,$E2,$FD,$05,$FB,$09,$F7 ; $C2B2F8
    db $11,$EF,$76,$01,$12,$00,$5D,$80,$D2,$F0,$45,$90,$22,$90,$C1,$03 ; $C2B308
    db $2C,$8E,$50,$88,$14,$03,$7F,$D8,$2F,$08,$FF,$28,$83,$43,$0C,$F3 ; $C2B318
    db $17,$92,$41,$A0,$DF,$5E,$FC,$15,$A4,$07,$A8,$63,$1F,$FB,$A0,$39 ; $C2B328
    db $06,$FB,$15,$5C,$A3,$54,$46,$A3,$01,$2E,$5D,$88,$18,$AA,$1C,$51 ; $C2B338
    db $20,$AA,$40,$D5,$C0,$8A,$40,$15,$40,$1F,$18,$F7,$07,$A8,$F7,$4E ; $C2B348
    db $FF,$1A,$75,$07,$20,$D7,$20,$75,$00,$0E,$3F,$BA,$A0,$7B,$72,$F8 ; $C2B358
    db $C3,$A3,$AB,$03,$50,$91,$A3,$46,$D7,$01,$31,$70,$8F,$07,$03,$FC ; $C2B368
    db $14,$DA,$23,$C0,$FB,$57,$02,$D6,$FC,$72,$33,$C7,$D5,$B7,$07,$02 ; $C2B378
    db $FD,$D4,$AB,$C0,$50,$C5,$41,$76,$10,$75,$00,$40,$8A,$C0,$D5,$80 ; $C2B388
    db $AA,$80,$C3,$2A,$AB,$BF,$80,$B9,$3F,$FF,$A0,$7F,$8A,$43,$DD,$83 ; $C2B398
    db $FC,$3C,$D7,$64,$F7,$11,$2B,$D9,$43,$02,$BF,$54,$3E,$F9,$D4,$01 ; $C2B3A8
    db $A3,$FD,$BF,$D5,$54,$A9,$B3,$C0,$03,$A9,$02,$55,$02,$AA,$61,$0F ; $C2B3B8
    db $4B,$3A,$E0,$01,$3B,$1D,$B9,$00,$43,$9D,$0E,$3E,$A1,$DF,$02,$D3 ; $C2B3C8
    db $7F,$2A,$C0,$1F,$BF,$A0,$3F,$06,$7E,$3D,$1D,$1F,$20,$30,$01,$EC ; $C2B3D8
    db $A8,$83,$95,$82,$94,$7F,$C0,$5F,$0E,$30,$CF,$7F,$FF,$B0,$BD,$7F ; $C2B3E8
    db $C1,$EC,$A9,$3F,$03,$D5,$7D,$20,$20,$EF,$2D,$00,$B7,$04,$55,$04 ; $C2B3F8
    db $2A,$1C,$24,$B0,$73,$FF,$31,$00,$01,$D6,$FB,$06,$FB,$86,$FB,$88 ; $C2B408
    db $6C,$F7,$09,$DE,$9F,$0E,$3F,$82,$C1,$D5,$A4,$B7,$25,$71,$1C,$03 ; $C2B418
    db $41,$55,$07,$07,$1F,$E1,$BC,$7F,$21,$52,$B7,$A1,$03,$DF,$09,$FF ; $C2B428
    db $89,$FF,$91,$5C,$20,$2B,$A0,$0A,$A0,$45,$A0,$2A,$A0,$B9,$FE,$08 ; $C2B438
    db $08,$51,$39,$7F,$10,$01,$82,$39,$B8,$6F,$6E,$F7,$29,$A7,$BA,$E7 ; $C2B448
    db $15,$03,$8B,$03,$B2,$C7,$CF,$07,$2E,$0F,$01,$01,$03,$11,$11,$13 ; $C2B458
    db $A1,$FF,$23,$FC,$82,$7F,$27,$FA,$8E,$F3,$A5,$FE,$A9,$FF,$B1,$EF ; $C2B468
    db $33,$2A,$40,$3B,$98,$F8,$56,$1D,$07,$2C,$04,$62,$07,$04,$2D,$1B ; $C2B478
    db $C1,$01,$9A,$67,$06,$F9,$95,$83,$02,$00,$7F,$29,$80,$10,$06,$61 ; $C2B488
    db $0E,$08,$53,$00,$29,$0A,$E3,$A9,$00,$40,$A4,$B5,$82,$FF,$57,$84 ; $C2B498
    db $18,$1F,$1F,$7E,$7F,$01,$0E,$07,$4F,$17,$2D,$15,$45,$80,$03,$17 ; $C2B4A8
    db $5D,$17,$7F,$7F,$7E,$09,$87,$E2,$FF,$85,$D8,$01,$94,$2E,$EF,$6E ; $C2B4B8
    db $14,$95,$54,$00,$88,$E3,$19,$1C,$AA,$08,$55,$08,$A5,$03,$8E,$85 ; $C2B4C8
    db $BF,$D8,$E7,$1D,$F7,$B1,$21,$4B,$87,$2B,$14,$37,$D5,$03,$C3,$0B ; $C2B4D8
    db $32,$FD,$44,$EC,$01,$3D,$80,$BF,$C1,$06,$63,$1B,$80,$21,$C6,$03 ; $C2B4E8
    db $3B,$07,$9C,$A8,$AA,$F4,$F8,$BF,$F0,$F8,$F0,$E0,$03,$20,$E3,$7C ; $C2B4F8
    db $0F,$E7,$3E,$FB,$7C,$02,$F8,$BB,$70,$84,$20,$1F,$58,$30,$44,$04 ; $C2B508
    db $FB,$BB,$8C,$87,$00,$8B,$00,$B8,$40,$74,$8E,$2E,$DE,$7C,$9D,$3D ; $C2B518
    db $DA,$6F,$80,$7C,$FF,$E7,$FE,$01,$F1,$FE,$E1,$FE,$E2,$FC,$E4,$91 ; $C2B528
    db $42,$E0,$F8,$FF,$08,$33,$60,$98,$80,$B7,$E4,$75,$01,$30,$43,$33 ; $C2B538
    db $C0,$3B,$3F,$08,$7F,$1C,$7F,$12,$0C,$3F,$18,$F8,$FF,$3B,$0F,$47 ; $C2B548
    db $48,$1F,$03,$5B,$FF,$0F,$C0,$BF,$00,$FB,$FF,$72,$F3,$05,$5F,$B7 ; $C2B558
    db $00,$CE,$7F,$C4,$BB,$E6,$7F,$FC,$AF,$3E,$9E,$67,$1A,$87,$FF,$4F ; $C2B568
    db $FC,$05,$FF,$9C,$7B,$00,$FE,$37,$FC,$2B,$FA,$3F,$F4,$3F,$E3,$03 ; $C2B578
    db $1F,$BE,$FF,$07,$5C,$13,$22,$04,$1F,$10,$7F,$20,$1F,$A0,$5E,$E1 ; $C2B588
    db $4C,$F3,$61,$D1,$39,$E8,$20,$E0,$91,$AE,$40,$67,$18,$2F,$01,$38 ; $C2B598
    db $60,$F0,$98,$BC,$44,$DE,$72,$EE,$73,$EF,$71,$EF,$D1,$CF,$B3,$8F ; $C2B5A8
    db $60,$9F,$78,$4F,$34,$2F,$12,$0F,$1B,$04,$19,$07,$38,$27,$72,$4D ; $C2B5B8
    db $73,$FF,$79,$F8,$79,$B8,$39,$D8,$79,$B0,$13,$EF,$76,$CD,$6D,$F3 ; $C2B5C8
    db $31,$07,$86,$00,$47,$86,$67,$86,$7F,$86,$1F,$80,$71,$03,$3F,$67 ; $C2B5D8
    db $76,$1F,$87,$7F,$0B,$3F,$07,$7F,$1F,$3F,$F9,$FF,$0F,$E3,$F7,$E7 ; $C2B5E8
    db $F6,$89,$E6,$19,$1A,$E7,$64,$9F,$12,$ED,$5A,$F5,$EE,$11,$16,$09 ; $C2B5F8
    db $59,$F0,$6F,$F4,$79,$98,$03,$39,$F0,$31,$5F,$AC,$3D,$03,$80,$66 ; $C2B608
    db $03,$47,$0D,$73,$80,$8B,$7F,$3F,$60,$03,$8F,$7F,$9F,$1A,$7F,$FA ; $C2B618
    db $05,$3F,$CB,$03,$96,$FC,$03,$FB,$0F,$53,$EF,$66,$F8,$7D,$F3,$53 ; $C2B628
    db $98,$21,$C8,$13,$60,$15,$38,$0F,$1F,$75,$38,$06,$81,$75,$80,$01 ; $C2B638
    db $77,$96,$3F,$CC,$1F,$E2,$0E,$DD,$6B,$08,$0F,$13,$B7,$8F,$65,$83 ; $C2B648
    db $92,$1C,$C7,$3F,$F0,$FF,$FA,$FD,$1E,$E1,$7E,$41,$E6,$1B,$19,$E7 ; $C2B658
    db $E2,$1F,$14,$AF,$C5,$2A,$40,$B7,$8A,$01,$C0,$04,$81,$02,$13,$C9 ; $C2B668
    db $06,$93,$A4,$BF,$F4,$60,$08,$FF,$26,$FC,$64,$00,$0B,$C0,$18,$90 ; $C2B678
    db $24,$83,$60,$0F,$0A,$10,$60,$98,$D0,$B4,$FF,$27,$00,$07,$6B,$20 ; $C2B688
    db $1F,$1C,$E0,$62,$C3,$2B,$00,$2D,$FF,$00,$E9,$02,$C3,$24,$A1,$46 ; $C2B698
    db $83,$40,$73,$41,$AF,$60,$03,$4B,$F4,$10,$FC,$14,$EA,$07,$F2,$30 ; $C2B6A8
    db $F8,$28,$5B,$03,$CF,$03,$18,$A4,$FF,$74,$8B,$00,$5A,$C7,$39,$FF ; $C2B6B8
    db $8B,$07,$36,$01,$55,$59,$A3,$FF,$7F,$00,$FD,$18,$7B,$01,$7F,$98 ; $C2B6C8
    db $C8,$7F,$45,$20,$B6,$FF,$C6,$B7,$FF,$EF,$03,$77,$3F,$ED,$F6,$48 ; $C2B6D8
    db $B7,$7C,$8B,$D6,$0F,$2F,$EC,$1B,$F6,$19,$B4,$FF,$AF,$FF,$EF,$FE ; $C2B6E8
    db $D2,$03,$FF,$04,$F8,$0F,$FA,$07,$F4,$59,$F9,$31,$47,$55,$80,$D5 ; $C2B6F8
    db $57,$03,$E0,$0A,$F0,$05,$F8,$02,$A9,$66,$FA,$08,$4F,$9D,$00,$FF ; $C2B708
    db $04,$F6,$FF,$5E,$FB,$7F,$26,$01,$D8,$18,$5F,$EF,$3F,$40,$75,$5F ; $C2B718
    db $10,$BD,$01,$85,$09,$7D,$1D,$D6,$D4,$0E,$68,$AA,$FF,$DD,$B8,$FE ; $C2B728
    db $DB,$CD,$23,$0C,$C5,$23,$ED,$27,$05,$ED,$39,$23,$E5,$07,$83,$05 ; $C2B738
    db $FE,$BF,$FE,$77,$8A,$03,$7F,$37,$07,$FF,$07,$A4,$02,$39,$09,$3A ; $C2B748
    db $FF,$AF,$9E,$75,$D5,$2D,$47,$AA,$10,$00,$CD,$37,$10,$23,$CD,$23 ; $C2B758
    db $47,$87,$05,$13,$37,$F7,$45,$3F,$00,$4B,$FF,$0F,$10,$6B,$14,$0B ; $C2B768
    db $6D,$10,$70,$00,$50,$BF,$FF,$70,$F5,$14,$F7,$FF,$5A,$F8,$80,$FF ; $C2B778
    db $F3,$08,$D2,$29,$1F,$E3,$08,$0C,$04,$47,$5F,$62,$46,$FB,$08,$83 ; $C2B788
    db $10,$AA,$A0,$FF,$E9,$09,$3F,$05,$FF,$ED,$FF,$FA,$FF,$8F,$3F,$E7 ; $C2B798
    db $03,$A4,$3F,$C0,$FF,$4E,$00,$89,$FF,$52,$3F,$D5,$3A,$AA,$AA,$80 ; $C2B7A8
    db $FF,$DA,$20,$F7,$08,$7D,$7B,$06,$1D,$BF,$42,$19,$FF,$4E,$10,$A0 ; $C2B7B8
    db $FF,$E0,$11,$07,$B7,$41,$D7,$01,$07,$D1,$01,$FF,$C6,$7D,$5F,$DD ; $C2B7C8
    db $05,$FE,$0F,$FE,$F3,$3A,$50,$FF,$C0,$03,$BF,$9F,$40,$D4,$00,$60 ; $C2B7D8
    db $87,$2E,$01,$FF,$9D,$02,$44,$DF,$E3,$C7,$55,$8E,$5F,$05,$A4,$3F ; $C2B7E8
    db $EB,$1D,$4E,$03,$84,$FF,$67,$52,$3F,$FB,$EA,$72,$3D,$60,$1D,$A9 ; $C2B7F8
    db $3F,$3C,$3F,$5E,$05,$BF,$7E,$F1,$07,$BF,$CA,$FF,$E1,$04,$BF,$9F ; $C2B808
    db $FF,$1F,$22,$BF,$FD,$40,$BF,$9F,$EA,$1F,$F5,$79,$40,$07,$FF,$1E ; $C2B818
    db $F6,$08,$00,$3F,$FD,$06,$FD,$04,$5E,$03,$A8,$49,$01,$CE,$91,$36 ; $C2B828
    db $EF,$63,$BA,$AB,$91,$AC,$60,$3F,$8A,$75,$00,$AA,$41,$BF,$54,$E0 ; $C2B838
    db $20,$40,$BF,$C7,$72,$F8,$D3,$01,$FF,$00,$BF,$F8,$AF,$F8,$57,$71 ; $C2B848
    db $01,$BF,$E7,$F4,$01,$A5,$BF,$27,$4A,$FF,$7F,$D4,$98,$BF,$3C,$FF ; $C2B858
    db $BF,$0C,$FB,$E7,$3F,$56,$A8,$01,$38,$E2,$FF,$40,$F7,$D8,$3D,$EA ; $C2B868
    db $FF,$E8,$15,$81,$5F,$E2,$9D,$A0,$56,$3F,$A7,$60,$B1,$3F,$51,$A3 ; $C2B878
    db $C7,$F3,$18,$E7,$F7,$11,$3F,$5D,$FE,$30,$AB,$5E,$03,$0B,$FE,$53 ; $C2B888
    db $04,$FA,$E3,$DC,$3F,$1E,$EE,$5B,$2A,$E0,$74,$80,$7F,$D5,$01,$6A ; $C2B898
    db $AA,$75,$6A,$BF,$DF,$7F,$CA,$0C,$82,$9C,$BF,$00,$DE,$29,$7F,$AA ; $C2B8A8
    db $12,$19,$51,$AA,$27,$A1,$C2,$01,$C0,$7F,$3E,$99,$80,$8E,$47,$1E ; $C2B8B8
    db $80,$20,$D5,$3B,$09,$A0,$B4,$2A,$7F,$55,$7F,$15,$67,$3F,$19,$2A ; $C2B8C8
    db $39,$01,$29,$53,$35,$48,$00,$72,$09,$33,$0A,$4C,$55,$43,$07,$09 ; $C2B8D8
    db $CA,$17,$5F,$FB,$38,$1F,$AB,$12,$01,$C0,$03,$AF,$AA,$57,$AE,$FB ; $C2B8E8
    db $64,$FC,$FD,$55,$A8,$24,$EA,$5E,$44,$02,$18,$5F,$B8,$71,$FE,$01 ; $C2B8F8
    db $54,$01,$AA,$01,$01,$00,$05,$00,$01,$02,$1F,$01,$46,$17,$54,$01 ; $C2B908
    db $48,$FB,$1F,$54,$5D,$FA,$BF,$FC,$F8,$F0,$F0,$EC,$EC,$D1,$89,$D3 ; $C2B918
    db $C3,$97,$0F,$87,$9F,$0F,$1F,$F1,$3F,$E3,$73,$C1,$63,$82,$E6,$A3 ; $C2B928
    db $EC,$07,$F8,$5F,$F0,$2F,$3C,$03,$2F,$1F,$BF,$04,$80,$51,$C0,$FF ; $C2B938
    db $C7,$E0,$8E,$6D,$D7,$40,$C1,$1F,$1F,$3F,$38,$7F,$3F,$02,$7F,$90 ; $C2B948
    db $00,$F0,$0F,$0C,$E0,$DF,$E0,$BF,$21,$C0,$90,$01,$7F,$FF,$FB,$08 ; $C2B958
    db $7E,$98,$08,$7C,$FF,$07,$1F,$F8,$03,$0F,$FF,$E0,$07,$FC,$01,$D6 ; $C2B968
    db $01,$1F,$98,$72,$E5,$4E,$F7,$DF,$01,$18,$32,$FF,$0D,$80,$7F,$E3 ; $C2B978
    db $00,$1E,$71,$8E,$39,$C7,$1C,$E7,$0E,$79,$F3,$0C,$5F,$01,$DF,$D7 ; $C2B988
    db $76,$0B,$02,$07,$2F,$FE,$DF,$FD,$FB,$75,$01,$FD,$3B,$0B,$EF,$FE ; $C2B998
    db $FD,$87,$C2,$FD,$0E,$F9,$17,$F9,$47,$F8,$AF,$FD,$7F,$FD,$48,$86 ; $C2B9A8
    db $C1,$FF,$35,$B7,$DD,$5B,$D5,$E0,$BF,$D5,$EA,$AA,$07,$F5,$EA,$BF ; $C2B9B8
    db $DE,$FF,$E3,$03,$FF,$A0,$7F,$97,$02,$0B,$9A,$3C,$C5,$82,$FC,$F9 ; $C2B9C8
    db $1E,$FC,$56,$AE,$AA,$56,$4F,$60,$1D,$B8,$07,$8B,$7D,$02,$9F,$87 ; $C2B9D8
    db $E0,$F5,$80,$FA,$80,$F0,$80,$B0,$80,$F8,$A0,$FD,$7B,$48,$DE,$8E ; $C2B9E8
    db $3A,$AA,$7F,$F5,$03,$01,$98,$FF,$7A,$FF,$3A,$83,$49,$03,$56,$01 ; $C2B9F8
    db $F0,$05,$9F,$03,$FF,$A8,$FD,$04,$9F,$23,$7F,$FA,$CF,$03,$7F,$DF ; $C2BA08
    db $05,$7C,$7F,$18,$7B,$1F,$19,$7F,$E1,$17,$1F,$3F,$59,$80,$7F,$1B ; $C2BA18
    db $87,$80,$38,$D5,$7F,$6A,$3F,$DE,$82,$0C,$2A,$CC,$63,$0A,$A1,$06 ; $C2BA28
    db $7F,$9B,$3D,$C4,$83,$FF,$03,$FE,$FC,$AE,$FE,$56,$FE,$DD,$08,$FF ; $C2BA38
    db $03,$E6,$55,$55,$2A,$AF,$81,$90,$08,$20,$09,$E8,$FF,$72,$AA,$CC ; $C2BA48
    db $5D,$AC,$E6,$09,$EE,$C1,$B3,$56,$A8,$FC,$00,$03,$01,$A9,$54,$4D ; $C2BA58
    db $09,$FF,$19,$92,$FE,$28,$FF,$5C,$FD,$33,$F7,$89,$F7,$44,$F3,$26 ; $C2BA68
    db $F1,$F3,$00,$75,$00,$01,$45,$F3,$AC,$5E,$D1,$F9,$6B,$E2,$04,$8E ; $C2BA78
    db $5F,$76,$5C,$6A,$70,$7F,$89,$7F,$5D,$2F,$73,$0F,$27,$09,$57,$09 ; $C2BA88
    db $01,$09,$FE,$2F,$FE,$03,$01,$FA,$81,$0E,$FE,$83,$FE,$51,$E0,$2A ; $C2BA98
    db $77,$01,$06,$88,$00,$C8,$00,$A8,$04,$87,$01,$00,$02,$C8,$77,$74 ; $C2BAA8
    db $37,$31,$77,$CA,$01,$00,$30,$01,$71,$0B,$09,$81,$09,$01,$85,$09 ; $C2BAB8
    db $83,$81,$01,$89,$01,$A0,$03,$0B,$7F,$0C,$57,$7B,$03,$7F,$01,$08 ; $C2BAC8
    db $EE,$E1,$2B,$03,$06,$7B,$02,$2C,$7F,$2B,$F9,$03,$FF,$7C,$DE,$05 ; $C2BAD8
    db $FB,$FF,$02,$FF,$F7,$0E,$FF,$CF,$19,$FF,$EE,$17,$FF,$EF,$A1,$65 ; $C2BAE8
    db $0C,$C3,$7C,$9B,$7E,$FF,$07,$FA,$7D,$7B,$FF,$7B,$1D,$58,$FE,$E8 ; $C2BAF8
    db $39,$DF,$FC,$BF,$09,$F0,$BF,$E0,$FB,$C3,$9F,$E5,$A0,$AC,$15,$EF ; $C2BB08
    db $06,$AA,$57,$5E,$FB,$7C,$27,$75,$A5,$B3,$A0,$90,$FF,$EF,$F0,$D5 ; $C2BB18
    db $E0,$0D,$AA,$C0,$40,$80,$7F,$80,$03,$95,$40,$6A,$80,$3F,$C0,$EE ; $C2BB28
    db $5C,$80,$15,$57,$77,$C0,$3F,$C4,$1B,$30,$FF,$5D,$76,$FE,$8C,$00 ; $C2BB38
    db $CC,$FE,$69,$C6,$9A,$41,$90,$60,$CB,$D8,$DF,$8F,$F5,$EE,$B1,$FD ; $C2BB48
    db $5A,$FD,$07,$C7,$39,$DF,$7E,$EF,$3D,$E0,$F5,$50,$00,$B0,$00,$1F ; $C2BB58
    db $B0,$02,$18,$01,$06,$8C,$00,$BA,$41,$F5,$82,$01,$A8,$A9,$56,$10 ; $C2BB68
    db $EF,$F2,$FD,$D1,$10,$80,$97,$BE,$4A,$30,$55,$08,$2A,$09,$84,$80 ; $C2BB78
    db $03,$C1,$80,$FF,$FD,$98,$FF,$2D,$7F,$5E,$09,$7F,$57,$3F,$01,$05 ; $C2BB88
    db $FF,$27,$1F,$0F,$C3,$00,$0C,$01,$99,$03,$00,$EF,$5F,$3F,$5B,$05 ; $C2BB98
    db $AD,$00,$FD,$61,$FC,$3F,$FF,$3E,$FA,$FD,$C1,$B7,$FC,$C7,$FE,$AB ; $C2BBA8
    db $9C,$7F,$0F,$ED,$99,$03,$7F,$83,$03,$1E,$7F,$EE,$13,$10,$77,$EF ; $C2BBB8
    db $12,$03,$03,$47,$B9,$EC,$13,$52,$AD,$E5,$06,$DD,$7D,$D6,$B8,$B5 ; $C2BBC8
    db $44,$E0,$5B,$2E,$FF,$BB,$1D,$ED,$77,$DD,$F7,$B9,$6F,$B1,$F1,$FE ; $C2BBD8
    db $87,$1F,$3F,$D6,$99,$3E,$8B,$17,$FC,$AE,$51,$0E,$D5,$2A,$F5,$EB ; $C2BBE8
    db $17,$E8,$3F,$C1,$9C,$67,$33,$DC,$85,$49,$2E,$CF,$FF,$D5,$F1,$FF ; $C2BBF8
    db $EB,$F5,$D4,$EB,$BE,$C1,$FA,$01,$FE,$03,$AB,$55,$54,$AB,$DF,$60 ; $C2BC08
    db $3F,$CA,$7F,$94,$8E,$2E,$FA,$72,$F4,$FF,$5B,$FF,$E1,$03,$FF,$BF ; $C2BC18
    db $F0,$10,$FF,$DE,$07,$FC,$96,$EE,$6A,$D6,$C0,$14,$FF,$2B,$54,$54 ; $C2BC28
    db $F8,$09,$FF,$02,$3F,$C3,$96,$41,$6A,$80,$2D,$4A,$02,$00,$1C,$1C ; $C2BC38
    db $3E,$BC,$3E,$79,$FF,$D5,$C0,$27,$A2,$E7,$DC,$CF,$40,$7C,$4C,$77 ; $C2BC48
    db $7F,$00,$3E,$79,$3D,$3E,$7E,$7E,$3C,$3E,$C0,$45,$0A,$F7,$8F,$F7 ; $C2BC58
    db $0F,$03,$F1,$0F,$F0,$07,$FC,$1B,$0F,$D5,$FD,$FF,$C0,$18,$BB,$FF ; $C2BC68
    db $1F,$A0,$55,$0E,$07,$B8,$6B,$0C,$1B,$F8,$F4,$10,$68,$05,$60,$4A ; $C2BC78
    db $E0,$3F,$E0,$C6,$84,$FF,$70,$F4,$28,$CB,$70,$77,$E2,$7F,$EA,$7F ; $C2BC88
    db $85,$6B,$FF,$84,$AB,$01,$01,$07,$0F,$07,$1F,$0F,$7F,$1F,$E1,$31 ; $C2BC98
    db $F0,$FF,$51,$FC,$07,$02,$FA,$AF,$F7,$9A,$FF,$06,$DD,$FF,$00,$53 ; $C2BCA8
    db $FF,$83,$7F,$D7,$6E,$A6,$7C,$B7,$71,$FF,$37,$FC,$03,$D0,$FF,$21 ; $C2BCB8
    db $03,$FE,$FF,$AE,$FE,$CE,$FE,$42,$03,$00,$ED,$0C,$0E,$1C,$1E,$BC ; $C2BCC8
    db $F7,$F8,$A7,$FA,$4F,$F2,$2F,$02,$FD,$E2,$1D,$F0,$9F,$F0,$CF,$FC ; $C2BCD8
    db $08,$48,$30,$60,$E8,$A0,$70,$C0,$20,$A1,$20,$FF,$11,$3D,$8E,$C0 ; $C2BCE8
    db $97,$03,$F7,$13,$2F,$76,$05,$0F,$74,$0A,$8C,$63,$40,$0E,$1E,$35 ; $C2BCF8
    db $FC,$28,$7E,$FC,$3F,$2E,$18,$9E,$02,$02,$31,$F8,$97,$22,$E0,$1F ; $C2BD08
    db $B8,$A6,$AA,$FC,$47,$30,$FE,$F1,$7B,$E1,$81,$81,$27,$BF,$BF,$98 ; $C2BD18
    db $83,$5E,$DB,$03,$81,$63,$7F,$01,$BE,$41,$3B,$1F,$BF,$C3,$87,$A1 ; $C2BD28
    db $7F,$31,$35,$C2,$34,$7E,$7E,$C7,$3D,$FD,$19,$02,$F6,$04,$81,$D8 ; $C2BD38
    db $74,$FF,$7C,$60,$83,$1F,$FC,$FB,$0D,$FA,$08,$0C,$FB,$5F,$FE,$12 ; $C2BD48
    db $01,$46,$F8,$60,$07,$01,$2F,$FF,$AF,$7F,$D0,$03,$3B,$86,$07,$03 ; $C2BD58
    db $0C,$FE,$F5,$FC,$F5,$03,$1C,$49,$E5,$07,$83,$01,$7D,$FA,$7C,$FB ; $C2BD68
    db $42,$03,$3B,$1A,$07,$03,$73,$9A,$EF,$02,$00,$08,$EF,$A1,$8C,$20 ; $C2BD78
    db $1F,$60,$40,$C9,$78,$3F,$43,$F0,$03,$D0,$9B,$9F,$F9,$06,$F3,$7A ; $C2BD88
    db $0C,$04,$39,$2F,$8B,$E8,$04,$3B,$DF,$8B,$09,$6F,$2F,$5F,$E3,$C0 ; $C2BD98
    db $04,$03,$40,$EF,$20,$F7,$1C,$0A,$FF,$18,$F7,$10,$60,$01,$07,$45 ; $C2BDA8
    db $FA,$A2,$7D,$02,$5D,$BE,$B2,$5D,$55,$BA,$04,$03,$A2,$5D,$1E,$33 ; $C2BDB8
    db $0F,$07,$3F,$3C,$5F,$A1,$02,$3F,$1E,$00,$FF,$28,$F0,$C0,$EF,$60 ; $C2BDC8
    db $DF,$40,$98,$01,$47,$BC,$00,$80,$7F,$05,$FA,$8A,$75,$55,$EA,$50 ; $C2BDD8
    db $CA,$03,$6A,$3F,$6E,$6A,$93,$F8,$BF,$34,$00,$00,$8C,$80,$7F,$22 ; $C2BDE8
    db $AA,$D5,$A3,$C2,$BF,$C0,$C0,$82,$05,$7F,$80,$40,$2B,$24,$56,$04 ; $C2BDF8
    db $8B,$03,$02,$02,$FE,$5F,$FC,$40,$51,$65,$FD,$0F,$8C,$85,$FC,$06 ; $C2BE08
    db $03,$01,$FE,$0F,$EF,$01,$07,$0A,$EF,$00,$EF,$10,$05,$07,$01,$E0 ; $C2BE18
    db $E0,$C6,$E7,$5F,$BF,$BF,$55,$5A,$B5,$B0,$5F,$40,$BF,$AF,$5A,$5E ; $C2BE28
    db $BF,$F0,$7D,$BD,$60,$25,$C5,$FF,$E0,$EF,$A0,$01,$3F,$20,$EF,$C1 ; $C2BE38
    db $FF,$DF,$75,$B0,$7D,$81,$25,$FA,$CA,$60,$F5,$03,$2A,$F5,$2A,$3F ; $C2BE48
    db $1D,$F4,$80,$80,$8C,$FE,$BA,$20,$1B,$EF,$88,$89,$74,$D5,$74,$1B ; $C2BE58
    db $B8,$3A,$20,$01,$CF,$60,$30,$55,$AF,$BF,$03,$07,$71,$03,$17,$81 ; $C2BE68
    db $A8,$00,$4B,$AE,$40,$55,$79,$FE,$FF,$81,$25,$7E,$81,$2A,$00,$1F ; $C2BE78
    db $BA,$FF,$58,$FB,$08,$FB,$0C,$0B,$FF,$0E,$F8,$05,$E7,$01,$FB,$F7 ; $C2BE88
    db $59,$B2,$4D,$58,$AF,$8C,$01,$AB,$5E,$03,$A8,$41,$5F,$1F,$AF,$D9 ; $C2BE98
    db $21,$0F,$C3,$07,$8F,$0F,$5C,$05,$22,$F7,$F8,$F7,$58,$A7,$58,$07 ; $C2BEA8
    db $F8,$07,$FC,$F7,$B8,$8E,$67,$BB,$BF,$2A,$2B,$D3,$A0,$E8,$36,$55 ; $C2BEB8
    db $AE,$05,$52,$55,$80,$3F,$F7,$01,$A3,$52,$5B,$45,$FF,$36,$0B,$44 ; $C2BEC8
    db $C0,$A7,$40,$82,$91,$02,$FE,$02,$31,$20,$15,$D5,$54,$91,$1B,$FC ; $C2BED8
    db $57,$49,$9C,$FD,$07,$6A,$BB,$B9,$EF,$DC,$8A,$01,$E0,$C9,$06,$55 ; $C2BEE8
    db $54,$58,$EF,$55,$31,$20,$DF,$01,$E0,$3F,$EE,$18,$5F,$96,$BF,$AB ; $C2BEF8
    db $1F,$74,$03,$BD,$56,$AB,$01,$1F,$2A,$62,$F7,$BA,$03,$1D,$C2,$5F ; $C2BF08
    db $F7,$FF,$51,$21,$60,$5F,$F7,$5D,$10,$EC,$93,$10,$8E,$D9,$3A,$7F ; $C2BF18
    db $80,$1D,$FB,$08,$F9,$FE,$51,$54,$F6,$01,$7F,$1F,$25,$08,$FF,$4B ; $C2BF28
    db $B5,$BF,$98,$01,$02,$DF,$BF,$C1,$02,$C0,$7F,$C0,$BF,$C2,$01,$3F ; $C2BF38
    db $E0,$03,$01,$1F,$F0,$1F,$E9,$08,$5F,$8A,$73,$5B,$03,$06,$A9,$5F ; $C2BF48
    db $20,$07,$FE,$03,$EF,$03,$DF,$F7,$EF,$FB,$F7,$F9,$AE,$4C,$13,$EF ; $C2BF58
    db $97,$B8,$79,$FF,$0C,$F0,$4F,$78,$C7,$1C,$E3,$0E,$F1,$FF,$50,$13 ; $C2BF68
    db $EC,$0F,$69,$78,$BE,$02,$39,$3E,$FF,$00,$C6,$F8,$7F,$FF,$17,$FD ; $C2BF78
    db $0F,$FE,$E0,$03,$FA,$97,$7C,$E0,$42,$01,$70,$9F,$97,$58,$7D,$F8 ; $C2BF88
    db $37,$FF,$C1,$01,$FE,$E2,$FD,$C5,$FA,$7F,$FA,$DC,$3A,$80,$D1,$D7 ; $C2BF98
    db $CA,$84,$5F,$27,$0B,$40,$80,$82,$FD,$8F,$00,$FD,$05,$F9,$2B,$D1 ; $C2BFA8
    db $59,$A3,$77,$83,$E3,$07,$CF,$07,$FF,$29,$54,$AA,$82,$FF,$1D,$05 ; $C2BFB8
    db $FE,$05,$45,$07,$C6,$1B,$FD,$23,$83,$FC,$8B,$F4,$86,$F8,$0C,$F0 ; $C2BFC8
    db $19,$E0,$45,$83,$37,$30,$E4,$20,$FF,$40,$E3,$A0,$02,$80,$A2,$38 ; $C2BFD8
    db $FC,$C3,$03,$FE,$04,$07,$0F,$0F,$3F,$1F,$59,$9D,$DF,$65,$72,$E8 ; $C2BFE8
    db $1C,$E3,$FC,$97,$D9,$07,$B0,$0F,$E0,$9F,$DF,$35,$3D,$EA,$E8,$B7 ; $C2BFF8
    db $20,$DF,$82,$3F,$A9,$FE,$F6,$BD,$AC,$1D,$E7,$21,$56,$85,$2A,$9A ; $C2C008
    db $80,$3A,$5F,$E0,$30,$60,$7F,$D4,$7F,$FC,$FC,$20,$FF,$FB,$0E,$FF ; $C2C018
    db $08,$FB,$08,$12,$DF,$FF,$9D,$C0,$7F,$F3,$5D,$08,$F7,$08,$1E,$FF ; $C2C028
    db $76,$9D,$02,$FF,$1D,$7E,$FF,$7C,$5B,$C5,$60,$9F,$DF,$7D,$5F,$F1 ; $C2C038
    db $0F,$3F,$EA,$7F,$F2,$62,$19,$7F,$7C,$FD,$01,$FC,$E0,$03,$7F,$5C ; $C2C048
    db $F3,$3C,$EB,$22,$7C,$F3,$15,$F7,$35,$79,$7B,$DA,$89,$80,$C5,$1C ; $C2C058
    db $DF,$20,$44,$FF,$7C,$03,$7F,$03,$E1,$9F,$56,$FD,$EF,$02,$9F,$03 ; $C2C068
    db $3B,$79,$A8,$A9,$47,$FC,$BC,$7E,$01,$7F,$EA,$26,$BF,$C0,$7F,$3C ; $C2C078
    db $48,$B7,$0C,$FF,$AB,$3C,$FD,$01,$05,$FF,$01,$EF,$03,$1B,$71,$00 ; $C2C088
    db $F5,$00,$00,$08,$C6,$71,$24,$F3,$0B,$F5,$77,$75,$74,$2E,$F3,$06 ; $C2C098
    db $CA,$BF,$0C,$B0,$03,$00,$09,$0E,$83,$01,$09,$07,$A4,$F9,$2F,$09 ; $C2C0A8
    db $00,$7D,$0F,$5B,$2F,$A9,$5F,$7F,$56,$E3,$1F,$70,$86,$9F,$D0,$FB ; $C2C0B8
    db $A9,$06,$82,$FE,$01,$F9,$F7,$01,$1D,$F7,$FF,$B7,$1F,$FF,$02,$C0 ; $C2C0C8
    db $00,$7E,$81,$4E,$B8,$76,$B1,$0E,$F7,$78,$E7,$78,$D7,$3F,$EF,$8F ; $C2C0D8
    db $7F,$8F,$FB,$4D,$7B,$DD,$DE,$20,$39,$01,$01,$F4,$30,$0B,$F0,$17 ; $C2C0E8
    db $7C,$8F,$7A,$3E,$FE,$FD,$40,$7F,$FF,$01,$4E,$7F,$7D,$FF,$10,$FF ; $C2C0F8
    db $F8,$08,$FF,$3F,$C0,$07,$95,$EA,$6A,$D5,$C0,$52,$AE,$EA,$EA,$3C ; $C2C108
    db $14,$05,$5F,$80,$E8,$C9,$7C,$C0,$20,$FD,$FF,$01,$09,$C5,$D5,$00 ; $C2C118
    db $5F,$2A,$FF,$1F,$FA,$AF,$F5,$2D,$9F,$7B,$31,$FF,$B6,$D8,$D8,$01 ; $C2C128
    db $B4,$90,$FF,$7F,$D5,$60,$7D,$00,$19,$60,$FF,$7F,$AB,$F5,$0C,$7F ; $C2C138
    db $39,$7D,$7F,$F5,$18,$FF,$7D,$FB,$06,$7E,$FF,$04,$B1,$7F,$57,$FF ; $C2C148
    db $00,$70,$71,$35,$39,$5F,$A3,$7F,$9D,$B1,$D5,$A4,$A9,$A6,$EE,$26 ; $C2C158
    db $F7,$7F,$80,$77,$51,$FB,$FF,$F0,$05,$7F,$FF,$04,$FD,$55,$03,$3C ; $C2C168
    db $01,$01,$3E,$7F,$BF,$07,$BC,$FF,$7F,$8F,$3E,$9D,$01,$AF,$FF,$FF ; $C2C178
    db $06,$AF,$FF,$DE,$04,$7F,$2A,$FF,$03,$03,$7C,$AD,$7A,$D3,$7D,$C1 ; $C2C188
    db $C8,$02,$FF,$80,$3F,$F3,$FF,$01,$C0,$80,$FE,$3C,$5D,$B8,$02,$B2 ; $C2C198
    db $C1,$00,$BF,$40,$3F,$58,$FF,$CF,$39,$E0,$D6,$8C,$FF,$C0,$AD,$3C ; $C2C1A8
    db $F8,$3B,$FF,$EF,$C0,$01,$DD,$C2,$7A,$C5,$2F,$DF,$33,$80,$89,$FC ; $C2C1B8
    db $1D,$E3,$EF,$1F,$FF,$18,$50,$FF,$E0,$1E,$FC,$83,$3A,$FF,$8E,$FC ; $C2C1C8
    db $14,$09,$5C,$AE,$24,$61,$CD,$63,$77,$CF,$CF,$F9,$FD,$FB,$2B,$FF ; $C2C1D8
    db $5F,$FF,$5C,$10,$2D,$BE,$41,$36,$C9,$87,$78,$F7,$09,$FB,$05,$FC ; $C2C1E8
    db $03,$EE,$3F,$3A,$03,$63,$EF,$41,$EF,$80,$9F,$48,$7F,$5F,$C1,$0E ; $C2C1F8
    db $FF,$C2,$FD,$81,$F2,$0E,$D8,$7F,$F8,$FB,$70,$F0,$01,$08,$FD,$B6 ; $C2C208
    db $7F,$EF,$7B,$DB,$61,$E6,$A1,$7C,$08,$F3,$80,$01,$48,$A3,$7C,$8E ; $C2C218
    db $7F,$AF,$63,$7F,$5F,$79,$FE,$AC,$9F,$11,$04,$BF,$04,$83,$FF,$F8 ; $C2C228
    db $0F,$F8,$07,$2E,$05,$41,$18,$03,$A3,$01,$4B,$07,$8F,$1F,$DF,$1F ; $C2C238
    db $7F,$9F,$6F,$5D,$3F,$FE,$6B,$B9,$41,$85,$FC,$A3,$F3,$6F,$E1,$3F ; $C2C248
    db $E3,$1F,$F9,$07,$E1,$1F,$99,$FF,$00,$30,$D9,$61,$E0,$D9,$86,$D7 ; $C2C258
    db $43,$FF,$CF,$75,$B9,$C6,$0F,$FF,$C0,$7F,$1F,$05,$8C,$9D,$01,$F0 ; $C2C268
    db $15,$1F,$FD,$C3,$43,$FB,$55,$00,$FD,$3F,$D5,$03,$FE,$5E,$FE,$4C ; $C2C278
    db $5A,$F0,$98,$BB,$7D,$0B,$04,$30,$BB,$0B,$02,$F6,$F5,$66,$85,$FE ; $C2C288
    db $F5,$48,$01,$4E,$0B,$91,$BB,$FF,$7D,$FE,$04,$03,$FC,$4B,$24,$00 ; $C2C298
    db $BB,$BB,$16,$F5,$BE,$AA,$72,$05,$A1,$17,$3F,$8E,$76,$80,$80,$E8 ; $C2C2A8
    db $CF,$3F,$CA,$A5,$74,$5A,$7C,$A8,$03,$AA,$23,$55,$22,$B8,$2A,$B9 ; $C2C2B8
    db $8E,$39,$F4,$4E,$26,$F8,$03,$44,$F0,$60,$F8,$48,$E0,$A9,$25,$5C ; $C2C2C8
    db $60,$38,$D0,$60,$A0,$60,$BF,$01,$F7,$0B,$FF,$06,$EF,$15,$03,$1D ; $C2C2D8
    db $07,$BF,$0A,$FF,$3D,$AA,$D3,$08,$FE,$10,$24,$AB,$2A,$FF,$57,$BC ; $C2C2E8
    db $0E,$03,$33,$60,$00,$7F,$00,$F9,$04,$FF,$07,$8A,$FF,$35,$7F,$6A ; $C2C2F8
    db $F3,$02,$FF,$EA,$04,$3B,$E6,$FF,$6B,$37,$73,$FF,$E7,$02,$1D,$01 ; $C2C308
    db $D8,$09,$5F,$03,$E8,$13,$F0,$04,$3F,$30,$10,$90,$78,$30,$02,$1D ; $C2C318
    db $E0,$FF,$70,$D0,$64,$00,$02,$3C,$01,$01,$06,$A0,$01,$FA,$05,$E0 ; $C2C328
    db $9E,$DB,$C0,$F8,$00,$F0,$F3,$02,$1E,$40,$AB,$54,$E0,$04,$1F,$A0 ; $C2C338
    db $EF,$A0,$0F,$0E,$10,$0F,$8F,$0F,$0C,$44,$07,$00,$0F,$01,$B0,$46 ; $C2C348
    db $5F,$B7,$05,$0F,$FA,$9E,$FF,$90,$22,$01,$62,$B5,$4D,$B7,$80,$2F ; $C2C358
    db $05,$80,$2B,$20,$AF,$05,$FA,$0A,$F5,$75,$05,$38,$BB,$03,$2A,$D5 ; $C2C368
    db $03,$A5,$7A,$2A,$F5,$11,$0F,$03,$00,$05,$02,$02,$06,$02,$30,$41 ; $C2C378
    db $0F,$0B,$2F,$2F,$81,$01,$FE,$8F,$FA,$98,$FF,$92,$FD,$9D,$01,$91 ; $C2C388
    db $E1,$A4,$AE,$DB,$94,$35,$60,$3B,$40,$60,$3D,$EF,$6F,$EB,$14,$7B ; $C2C398
    db $4A,$3B,$1D,$45,$FA,$AA,$61,$05,$4F,$FA,$D3,$35,$54,$E6,$BB,$71 ; $C2C3A8
    db $0A,$01,$01,$FB,$09,$FB,$58,$A7,$A8,$57,$80,$03,$AB,$56,$5A,$A5 ; $C2C3B8
    db $AA,$57,$08,$5A,$A7,$A9,$57,$A5,$B9,$1F,$3A,$58,$BB,$2F,$0B,$EF ; $C2C3C8
    db $07,$EE,$00,$B8,$17,$E9,$F6,$F9,$0E,$F1,$0C,$06,$F9,$26,$F9,$03 ; $C2C3D8
    db $09,$9D,$30,$F7,$43,$06,$0C,$FB,$FB,$FF,$59,$33,$4C,$56,$43,$55 ; $C2C3E8
    db $C4,$03,$FB,$A6,$72,$A8,$AF,$DD,$96,$60,$5A,$CF,$9F,$8F,$E0,$47 ; $C2C3F8
    db $D6,$AF,$56,$18,$B9,$2E,$D1,$39,$C6,$79,$61,$8E,$43,$F9,$36,$FD ; $C2C408
    db $F6,$39,$71,$FF,$00,$0A,$D9,$37,$10,$C8,$07,$D8,$43,$AB,$1F,$F5 ; $C2C418
    db $25,$1A,$F5,$89,$43,$1E,$FF,$54,$7F,$BE,$FF,$1D,$3E,$FE,$3E,$20 ; $C2C428
    db $FB,$BE,$3E,$3C,$FE,$C1,$EA,$8B,$E5,$8E,$7B,$1E,$87,$F7,$3E,$EB ; $C2C438
    db $DE,$F1,$3E,$E1,$3C,$F3,$AA,$BF,$EA,$D9,$05,$FF,$BE,$5F,$06,$CF ; $C2C448
    db $FF,$0F,$2C,$7F,$FF,$7F,$95,$AF,$5F,$55,$02,$E3,$53,$A2,$E4,$2D ; $C2C458
    db $F9,$B5,$BE,$FF,$18,$1F,$F3,$09,$7F,$57,$CB,$06,$7F,$2A,$84,$BF ; $C2C468
    db $6A,$00,$70,$F7,$E7,$FF,$3B,$22,$22,$EE,$FE,$AD,$9F,$01,$FF,$50 ; $C2C478
    db $BF,$A5,$DF,$22,$FF,$8F,$01,$DC,$23,$06,$45,$7F,$FD,$36,$05,$5F ; $C2C488
    db $DD,$39,$75,$FF,$71,$20,$1F,$95,$BF,$1D,$7B,$0E,$40,$8E,$E0,$F9 ; $C2C498
    db $96,$A5,$D5,$43,$17,$95,$EA,$15,$0E,$EA,$AA,$D5,$04,$FB,$E8,$97 ; $C2C4A8
    db $AB,$BF,$EC,$86,$84,$08,$7F,$BF,$21,$27,$07,$7E,$FF,$A8,$57,$84 ; $C2C4B8
    db $1D,$7F,$5B,$E6,$78,$1D,$CE,$89,$28,$FC,$15,$94,$FF,$FC,$E1,$00 ; $C2C4C8
    db $EA,$D5,$05,$69,$95,$7E,$00,$26,$48,$2E,$79,$AB,$0D,$FF,$53,$FB ; $C2C4D8
    db $07,$01,$D7,$0B,$8A,$00,$A3,$F8,$57,$A9,$57,$50,$AF,$30,$51,$AF ; $C2C4E8
    db $9B,$61,$BE,$14,$9F,$0F,$7F,$40,$01,$BF,$AE,$58,$5F,$D5,$EE,$44 ; $C2C4F8
    db $55,$BF,$80,$7F,$90,$0F,$FF,$30,$87,$BF,$37,$AA,$20,$FC,$93,$2B ; $C2C508
    db $B0,$7F,$85,$FA,$58,$E0,$FD,$18,$F7,$41,$A9,$A2,$90,$7F,$43,$42 ; $C2C518
    db $3F,$22,$DE,$02,$07,$7F,$BD,$FF,$42,$BF,$65,$7F,$83,$8F,$FF,$05 ; $C2C528
    db $01,$C4,$5F,$F5,$BF,$0B,$FF,$05,$FA,$1C,$0F,$EF,$01,$CE,$C3,$65 ; $C2C538
    db $98,$41,$91,$03,$B8,$FF,$4F,$97,$0F,$75,$0C,$EA,$35,$65,$BA,$E5 ; $C2C548
    db $3A,$2A,$D5,$65,$9A,$BA,$75,$FF,$E9,$38,$83,$82,$FF,$BC,$08,$20 ; $C2C558
    db $38,$FD,$ED,$F4,$E9,$55,$81,$65,$7E,$AB,$5C,$62,$7F,$C9,$36,$32 ; $C2C568
    db $FF,$2A,$20,$99,$FF,$73,$12,$62,$32,$CE,$D1,$7F,$2E,$BF,$9D,$DF ; $C2C578
    db $7D,$02,$81,$FF,$AE,$FF,$56,$FF,$07,$D3,$27,$72,$78,$FC,$80,$C3 ; $C2C588
    db $F1,$FF,$FB,$5D,$AA,$5D,$52,$AD,$53,$AE,$A1,$5F,$78,$B7,$82,$7D ; $C2C598
    db $8F,$AE,$99,$AE,$1D,$FE,$1D,$FE,$1A,$FD,$E8,$F3,$50,$6F,$60,$DF ; $C2C5A8
    db $55,$F0,$99,$AC,$53,$18,$E7,$77,$15,$81,$47,$45,$FA,$CA,$75,$FC ; $C2C5B8
    db $18,$BF,$7F,$AD,$07,$93,$7F,$AC,$57,$F9,$0A,$7F,$77,$FA,$73,$5D ; $C2C5C8
    db $01,$7B,$00,$0F,$F8,$78,$FB,$27,$FB,$57,$F9,$18,$3A,$FD,$B8,$E9 ; $C2C5D8
    db $6F,$BB,$07,$4E,$38,$EF,$F0,$4F,$F2,$0E,$7F,$0F,$EE,$81,$5C,$F7 ; $C2C5E8
    db $B8,$0F,$F0,$07,$F8,$F2,$38,$7F,$4F,$E9,$77,$13,$4A,$0F,$20,$AB ; $C2C5F8
    db $C3,$20,$E7,$29,$7F,$DB,$06,$7F,$02,$FC,$36,$FF,$3D,$00,$E7,$28 ; $C2C608
    db $7F,$8D,$62,$00,$84,$B6,$72,$08,$02,$14,$03,$0B,$04,$14,$08,$07 ; $C2C618
    db $09,$3B,$1F,$02,$7F,$9D,$4F,$A0,$DF,$A0,$FF,$81,$01,$A1,$FF,$17 ; $C2C628
    db $B3,$77,$0B,$4B,$37,$35,$E0,$6C,$A1,$59,$F4,$E4,$03,$53,$3D,$83 ; $C2C638
    db $01,$CF,$FF,$1D,$09,$B0,$00,$31,$0B,$41,$08,$15,$01,$0B,$01,$00 ; $C2C648
    db $03,$A9,$F7,$AF,$F1,$81,$FE,$B1,$E4,$39,$85,$01,$F8,$F8,$D3,$80 ; $C2C658
    db $A8,$08,$D0,$80,$A0,$21,$C0,$02,$00,$85,$00,$FA,$00,$F8,$57,$AF ; $C2C668
    db $FE,$57,$FE,$AF,$FD,$5E,$F9,$7C,$F3,$F8,$8F,$80,$CB,$00,$40,$80 ; $C2C678
    db $00,$80,$1C,$AA,$80,$95,$03,$1D,$C0,$BF,$BF,$BA,$82,$7B,$23,$FC ; $C2C688
    db $B7,$01,$EC,$01,$3F,$A3,$7F,$2B,$91,$7F,$D4,$BB,$00,$ED,$60,$7D ; $C2C698
    db $D4,$04,$7A,$4D,$D4,$20,$55,$D5,$1F,$D7,$DF,$00,$DB,$06,$1E,$EB ; $C2C6A8
    db $18,$1F,$01,$7F,$94,$81,$AB,$81,$C1,$E3,$05,$7F,$C1,$FE,$6B,$C7 ; $C2C6B8
    db $7F,$86,$04,$04,$06,$06,$07,$07,$2D,$C7,$55,$07,$8D,$07,$03,$00 ; $C2C6C8
    db $2D,$0F,$FC,$FB,$06,$FD,$FF,$FD,$14,$04,$FF,$24,$01,$5C,$CC,$FE ; $C2C6D8
    db $F7,$FE,$FF,$78,$7F,$78,$7A,$F0,$7D,$30,$72,$89,$20,$51,$00,$A9 ; $C2C6E8
    db $00,$8E,$7D,$1D,$FF,$3A,$F7,$75,$00,$FF,$03,$32,$EF,$06,$FF,$0E ; $C2C6F8
    db $FF,$00,$2B,$61,$13,$49,$17,$0D,$27,$0D,$34,$47,$15,$3B,$11,$3F ; $C2C708
    db $07,$81,$DD,$84,$FF,$94,$FF,$E4,$C8,$05,$5C,$01,$70,$00,$07,$13 ; $C2C718
    db $04,$1F,$10,$7F,$21,$1F,$A2,$5E,$E5,$5C,$F3,$79,$EF,$7D,$18,$E8 ; $C2C728
    db $21,$01,$E0,$42,$80,$44,$C0,$08,$80,$8B,$01,$10,$80,$CE,$60,$F0 ; $C2C738
    db $98,$FC,$64,$9E,$32,$EE,$73,$EF,$71,$EF,$D1,$CF,$B3,$8F,$60,$9F ; $C2C748
    db $78,$0F,$F4,$0F,$12,$0F,$1B,$04,$19,$07,$38,$27,$72,$4D,$6B,$F7 ; $C2C758
    db $6F,$F4,$6D,$F4,$1F,$F4,$79,$B8,$11,$EF,$77,$CC,$2C,$F3,$31,$65 ; $C2C768
    db $13,$01,$82,$C7,$53,$80,$77,$86,$1F,$80,$03,$80,$C0,$00,$67,$1F ; $C2C778
    db $87,$7F,$0B,$3F,$2E,$03,$1F,$B9,$3F,$F9,$FF,$2B,$E7,$37,$E7,$F6 ; $C2C788
    db $89,$E6,$19,$1A,$E7,$E4,$1F,$12,$ED,$DA,$75,$EE,$31,$76,$29,$D0 ; $C2C798
    db $3C,$B9,$38,$D1,$3A,$98,$02,$C0,$2C,$03,$70,$CC,$07,$9F,$0F,$EA ; $C2C7A8
    db $11,$C4,$7E,$E8,$14,$E1,$65,$E9,$48,$60,$77,$30,$F3,$6E,$C1,$C1 ; $C2C7B8
    db $15,$C7,$6F,$7F,$65,$DF,$2E,$02,$38,$F7,$1C,$FF,$1E,$53,$20,$5F ; $C2C7C8
    db $8C,$77,$0C,$F3,$88,$77,$C8,$7F,$AC,$13,$1F,$9F,$15,$3F,$FF,$3F ; $C2C7D8
    db $ED,$BF,$5C,$0B,$F1,$0F,$01,$E0,$5F,$E0,$1F,$C0,$3F,$C4,$86,$01 ; $C2C7E8
    db $7B,$04,$FB,$01,$E7,$32,$08,$00,$EF,$C4,$38,$42,$F7,$42,$4C,$18 ; $C2C7F8
    db $F3,$2C,$FB,$3B,$73,$80,$31,$04,$F3,$05,$08,$F7,$81,$03,$C4,$C3 ; $C2C808
    db $A3,$DC,$BE,$56,$C5,$1F,$70,$AA,$00,$1F,$EB,$7F,$01,$83,$C7,$3C ; $C2C818
    db $99,$6F,$18,$E7,$44,$01,$F7,$6C,$91,$5B,$DF,$47,$BF,$B8,$E7,$3E ; $C2C828
    db $F3,$FF,$0E,$FC,$EB,$FE,$E7,$04,$03,$07,$7C,$8B,$3E,$7A,$E7,$F3 ; $C2C838
    db $86,$33,$00,$21,$F0,$20,$05,$08,$41,$06,$33,$19,$E7,$CF,$07,$07 ; $C2C848
    db $B8,$EB,$5D,$F7,$37,$FE,$DF,$F5,$DF,$FB,$F9,$DF,$DF,$DD,$2F,$05 ; $C2C858
    db $DE,$DD,$00,$94,$DC,$DD,$D1,$DD,$3E,$C1,$37,$C9,$77,$E8,$DF,$80 ; $C2C868
    db $23,$DC,$EF,$BA,$EF,$F2,$EF,$36,$41,$5F,$22,$00,$D5,$CE,$88,$17 ; $C2C878
    db $15,$00,$66,$BB,$09,$33,$BB,$D3,$25,$CF,$09,$18,$00,$1F,$99,$EE ; $C2C888
    db $DC,$23,$77,$88,$99,$38,$22,$67,$03,$66,$E1,$03,$FF,$EE,$C5,$1D ; $C2C898
    db $EE,$71,$90,$4C,$00,$1F,$46,$0E,$BB,$19,$EE,$DE,$29,$23,$9D,$23 ; $C2C8A8
    db $34,$1F,$10,$03,$FB,$23,$5C,$DB,$7B,$13,$55,$00,$81,$00,$C2,$E0 ; $C2C8B8
    db $21,$F0,$10,$FC,$8C,$78,$4A,$39,$CB,$97,$85,$7F,$57,$A6,$70,$1D ; $C2C8C8
    db $00,$F9,$FC,$18,$7C,$EA,$E2,$1F,$5E,$01,$03,$BD,$03,$7B,$07,$B7 ; $C2C8D8
    db $0F,$0A,$17,$0E,$DF,$E8,$E2,$05,$3A,$67,$FB,$E1,$01,$37,$3F,$72 ; $C2C8E8
    db $AF,$1E,$CF,$9E,$5A,$CF,$5D,$4B,$1E,$49,$1D,$48,$18,$4C,$9E,$49 ; $C2C8F8
    db $F3,$BF,$FF,$DF,$EB,$BA,$3E,$5F,$87,$B4,$9F,$5C,$A6,$1F,$3D,$2B ; $C2C908
    db $7F,$3F,$97,$96,$FE,$5A,$FF,$FE,$61,$7F,$05,$C7,$FF,$C6,$D6,$83 ; $C2C918
    db $9B,$29,$FE,$E9,$FE,$EB,$80,$01,$FB,$FE,$D3,$DF,$E1,$1B,$F0,$F5 ; $C2C928
    db $80,$7F,$00,$05,$F0,$FC,$FC,$F8,$FA,$F9,$C0,$22,$FF,$E1,$E0,$06 ; $C2C938
    db $EF,$3F,$F7,$DB,$FB,$0F,$6B,$D9,$74,$AC,$08,$3C,$7F,$28,$07,$7F ; $C2C948
    db $DF,$5C,$FE,$7B,$EF,$FE,$CA,$FF,$7D,$EB,$6E,$F9,$FD,$68,$F8,$6C ; $C2C958
    db $B8,$6F,$73,$EF,$46,$AC,$B1,$71,$3F,$01,$3C,$BD,$03,$18,$7F,$F6 ; $C2C968
    db $07,$7C,$DE,$08,$BC,$9D,$FF,$1E,$1F,$01,$01,$00,$02,$00,$04,$01 ; $C2C978
    db $09,$03,$93,$00,$00,$A0,$09,$03,$FE,$3A,$07,$FC,$EC,$E5,$F5,$1B ; $C2C988
    db $10,$01,$00,$4D,$02,$1D,$3F,$FE,$7F,$6F,$59,$9E,$1F,$8E,$D0,$DF ; $C2C998
    db $90,$C4,$C8,$54,$BF,$51,$37,$E2,$39,$7F,$58,$38,$E1,$78,$89,$58 ; $C2C9A8
    db $A8,$38,$CB,$58,$AA,$B4,$CE,$E8,$F4,$DC,$00,$D9,$87,$F1,$0E,$F1 ; $C2C9B8
    db $0F,$F0,$0C,$19,$F9,$04,$FD,$86,$C1,$20,$34,$80,$80,$C0,$07,$40 ; $C2C9C8
    db $60,$20,$20,$10,$25,$8C,$E8,$5A,$7F,$C0,$3F,$01,$E0,$9F,$F0,$CF ; $C2C9D8
    db $F0,$AF,$00,$F4,$03,$D1,$BB,$0B,$FF,$F7,$02,$BB,$85,$01,$D7,$3C ; $C2C9E8
    db $FE,$3C,$FD,$34,$E5,$E4,$ED,$84,$2D,$24,$ED,$A7,$EF,$26,$AC,$1C ; $C2C9F8
    db $E7,$08,$FF,$05,$FE,$CC,$F3,$05,$FA,$2C,$D3,$A7,$7C,$2C,$F3,$EC ; $C2CA08
    db $06,$FF,$E3,$47,$FE,$06,$3B,$18,$FF,$12,$FD,$01,$76,$11,$05,$17 ; $C2CA18
    db $0E,$FB,$3C,$0E,$FB,$78,$EB,$88,$2B,$20,$EB,$64,$EF,$A2,$ED,$3E ; $C2CA28
    db $E8,$60,$19,$EE,$4A,$11,$F5,$09,$F6,$60,$FF,$A8,$77,$1B,$1E,$EC ; $C2CA38
    db $47,$FE,$08,$CF,$B5,$36,$97,$79,$03,$26,$1F,$FF,$E3,$07,$1F,$FF ; $C2CA48
    db $AA,$CB,$18,$1F,$01,$7B,$48,$D6,$85,$5D,$07,$CC,$04,$F5,$80,$1B ; $C2CA58
    db $54,$AB,$AF,$56,$44,$03,$BB,$A4,$5B,$1F,$7F,$03,$1A,$01,$7B,$87 ; $C2CA68
    db $01,$E1,$63,$9F,$5F,$1E,$5F,$3C,$DF,$5A,$AF,$29,$D7,$50,$C1,$03 ; $C2CA78
    db $40,$BF,$11,$72,$EF,$4E,$BD,$8C,$7B,$0C,$D5,$0C,$A4,$1F,$4F,$3F ; $C2CA88
    db $9F,$3A,$3F,$35,$7C,$7C,$FD,$FC,$C0,$5F,$AE,$A4,$5F,$49,$BF,$03 ; $C2CA98
    db $97,$7D,$2A,$FD,$14,$FB,$00,$23,$DC,$7F,$38,$9F,$38,$5F,$78,$3A ; $C2CAA8
    db $9F,$F1,$80,$A3,$9B,$7C,$78,$F9,$1D,$F9,$FB,$08,$E2,$73,$08,$E1 ; $C2CAB8
    db $F7,$81,$7F,$AE,$51,$18,$EF,$09,$FE,$BB,$7C,$F4,$3F,$6D,$4A,$48 ; $C2CAC8
    db $9F,$F4,$EB,$C0,$AA,$6D,$9B,$4F,$9F,$80,$1A,$01,$70,$FF,$9C,$BF ; $C2CAD8
    db $6E,$8F,$30,$87,$3F,$A7,$FD,$FF,$E7,$71,$07,$0F,$BF,$70,$9C,$EB ; $C2CAE8
    db $0E,$F5,$15,$EB,$2B,$D5,$FD,$7A,$07,$FC,$B1,$25,$80,$DC,$E3,$2F ; $C2CAF8
    db $00,$83,$CF,$C0,$01,$0F,$7F,$60,$DF,$9F,$FF,$2D,$8B,$F4,$00,$AF ; $C2CB08
    db $0F,$FF,$15,$F9,$18,$69,$F7,$01,$AE,$0F,$30,$FE,$0F,$F1,$11,$EE ; $C2CB18
    db $15,$EA,$12,$ED,$58,$E1,$E0,$DF,$80,$DF,$00,$93,$3B,$7F,$80,$D0 ; $C2CB28
    db $31,$41,$BE,$CA,$35,$03,$95,$6A,$2A,$D5,$55,$AA,$AC,$C5,$04,$6A ; $C2CB38
    db $AA,$55,$10,$F7,$87,$01,$20,$F7,$72,$25,$EE,$0D,$7F,$FC,$15,$FA ; $C2CB48
    db $33,$00,$03,$25,$DA,$2A,$F5,$0F,$E4,$FB,$7C,$AB,$04,$3B,$A9,$40 ; $C2CB58
    db $7E,$FF,$06,$7F,$3F,$17,$FA,$18,$18,$DF,$40,$DF,$DF,$70,$C7,$64 ; $C2CB68
    db $A0,$83,$9F,$5A,$41,$C0,$60,$9F,$13,$BA,$65,$45,$FA,$1D,$8A,$F5 ; $C2CB78
    db $95,$6E,$3F,$03,$D0,$07,$33,$00,$07,$FF,$0D,$FE,$18,$FD,$18,$FB ; $C2CB88
    db $23,$30,$FB,$17,$DF,$A8,$57,$2E,$56,$AB,$AC,$57,$59,$AE,$BA,$55 ; $C2CB98
    db $61,$9E,$87,$7D,$E0,$EF,$F0,$F7,$C8,$FB,$84,$1F,$F0,$4B,$FE,$02 ; $C2CBA8
    db $EA,$80,$EF,$25,$FA,$72,$8D,$C9,$B6,$04,$C7,$27,$AB,$AA,$30,$27 ; $C2CBB8
    db $06,$78,$FB,$68,$00,$FB,$48,$EB,$4B,$DF,$4F,$DA,$DA,$C5,$55,$CB ; $C2CBC8
    db $89,$C3,$BB,$40,$BF,$E8,$3F,$48,$B7,$4B,$B6,$5A,$ED,$92,$BC,$CA ; $C2CBD8
    db $FE,$0B,$58,$7F,$F8,$01,$17,$E8,$22,$F7,$F8,$97,$BB,$27,$17,$0B ; $C2CBE8
    db $09,$0E,$BB,$0B,$BF,$8E,$F8,$48,$7B,$38,$BB,$3B,$3F,$3C,$E4,$7F ; $C2CBF8
    db $19,$E7,$00,$29,$D6,$D8,$27,$68,$DF,$20,$FF,$60,$1B,$91,$F7,$DB ; $C2CC08
    db $AE,$DF,$EA,$8E,$77,$AF,$2F,$2E,$E8,$5E,$CE,$9F,$8D,$EA,$AE,$85 ; $C2CC18
    db $D7,$3D,$A8,$56,$B9,$2F,$D0,$26,$F9,$C7,$78,$8E,$F9,$0D,$FA,$36 ; $C2CC28
    db $F9,$40,$2E,$73,$30,$A5,$BB,$41,$D2,$7F,$40,$8A,$7E,$C7,$29,$70 ; $C2CC38
    db $7F,$3B,$85,$02,$22,$3A,$06,$62,$47,$7F,$51,$0F,$AF,$C8,$2A,$7F ; $C2CC48
    db $7F,$00,$3F,$3A,$00,$1F,$45,$F9,$07,$00,$03,$7A,$82,$FF,$F7,$27 ; $C2CC58
    db $01,$D7,$18,$9F,$C0,$17,$5F,$9F,$3F,$82,$C1,$D5,$9D,$30,$BB,$03 ; $C2CC68
    db $07,$1F,$E1,$BC,$7F,$21,$D3,$01,$BD,$83,$01,$55,$80,$2A,$80,$DE ; $C2CC78
    db $04,$03,$08,$3F,$72,$35,$33,$45,$03,$2B,$1C,$03,$81,$33,$92,$03 ; $C2CC88
    db $4F,$01,$18,$7D,$3F,$04,$32,$9B,$A7,$E3,$C7,$68,$1F,$A9,$00,$BC ; $C2CC98
    db $04,$03,$08,$1F,$7D,$00,$7F,$0F,$07,$57,$07,$2D,$05,$55,$9D,$22 ; $C2CCA8
    db $BF,$7C,$87,$F2,$74,$C9,$B9,$01,$EB,$18,$3F,$14,$37,$D5,$03,$2C ; $C2CCB8
    db $AD,$07,$37,$51,$04,$03,$04,$F9,$1A,$BF,$07,$D6,$B8,$7E,$17,$03 ; $C2CCC8
    db $1F,$38,$00,$2F,$03,$0A,$03,$06,$F9,$0A,$F5,$16,$E9,$00,$03,$1E ; $C2CCD8
    db $E1,$2F,$D0,$1F,$E0,$0A,$78,$F5,$19,$3F,$15,$05,$EF,$F8,$1B,$02 ; $C2CCE8
    db $00,$15,$EA,$F7,$06,$1F,$4B,$B2,$7B,$75,$01,$38,$C2,$D6,$BF,$9F ; $C2CCF8
    db $01,$FB,$7B,$DF,$44,$7B,$C4,$3B,$80,$01,$C0,$3B,$D9,$20,$E2,$19 ; $C2CD08
    db $04,$E6,$19,$76,$89,$F7,$E9,$F9,$2A,$3F,$D4,$C0,$04,$F7,$09,$F7 ; $C2CD18
    db $08,$E0,$03,$02,$F7,$E3,$CB,$4A,$F7,$8F,$0B,$F7,$1B,$E6,$CF,$7F ; $C2CD28
    db $27,$3F,$93,$1F,$09,$0F,$04,$2F,$03,$97,$43,$69,$5D,$22,$31,$3A ; $C2CD38
    db $96,$97,$F1,$9D,$02,$97,$68,$3E,$C1,$5D,$A2,$11,$33,$4E,$F9,$00 ; $C2CD48
    db $00,$3E,$FF,$C6,$F8,$3F,$7F,$3B,$D5,$C6,$33,$3A,$D5,$5A,$01,$93 ; $C2CD58
    db $7C,$FF,$1F,$FE,$01,$31,$D4,$97,$F5,$FE,$EF,$F0,$EC,$EF,$E8,$EF ; $C2CD68
    db $10,$00,$EF,$EF,$EB,$EC,$EC,$E8,$77,$DA,$F7,$BD,$F7,$D9,$F7,$AA ; $C2CD78
    db $EF,$C7,$10,$EF,$D7,$38,$B7,$5B,$90,$DD,$11,$DD,$15,$D9,$1B,$D1 ; $C2CD88
    db $25,$07,$DF,$DF,$DB,$5F,$5F,$97,$EF,$3A,$EF,$72,$EF,$B3,$EE,$15 ; $C2CD98
    db $DE,$89,$26,$D9,$ED,$32,$FD,$22,$CC,$E8,$CC,$E9,$8C,$EA,$0E,$EE ; $C2CDA8
    db $1F,$FC,$65,$83,$77,$2F,$BE,$3F,$C0,$31,$77,$9A,$F7,$19,$F7,$EB ; $C2CDB8
    db $0B,$06,$FF,$18,$84,$BD,$43,$06,$FD,$37,$8F,$0F,$3F,$1F,$7F,$3F ; $C2CDC8
    db $FF,$FF,$FE,$97,$EF,$44,$2F,$D7,$8C,$AF,$1D,$5F,$3A,$BF,$75,$7F ; $C2CDD8
    db $EA,$FF,$50,$FF,$24,$5E,$FE,$4C,$F0,$5F,$FE,$02,$3A,$01,$2F,$80 ; $C2CDE8
    db $BB,$21,$FF,$AF,$7F,$4C,$2F,$03,$F6,$07,$F5,$66,$85,$FE,$F5,$80 ; $C2CDF8
    db $02,$01,$7D,$FA,$FC,$FB,$0D,$FA,$C5,$BC,$7D,$FE,$1E,$03,$FB,$2B ; $C2CE08
    db $3F,$EB,$CD,$2D,$3F,$AE,$47,$59,$FB,$9A,$49,$12,$C8,$92,$48,$10 ; $C2CE18
    db $CA,$00,$CA,$90,$CA,$40,$C8,$C0,$CA,$FC,$1C,$FD,$01,$1D,$98,$01 ; $C2CE28
    db $ED,$03,$15,$EF,$03,$15,$ED,$15,$5F,$3F,$BE,$AD,$5B,$40,$9F,$01 ; $C2CE38
    db $3F,$97,$04,$7F,$97,$3F,$EB,$FE,$80,$01,$CB,$FE,$BB,$EE,$D3,$03 ; $C2CE48
    db $FF,$B3,$EF,$C8,$C8,$D0,$2E,$02,$C8,$38,$98,$C8,$00,$90,$68,$10 ; $C2CE58
    db $87,$70,$13,$F0,$EF,$55,$7F,$D5,$6F,$D5,$03,$FF,$A5,$02,$F4,$63 ; $C2CE68
    db $F8,$F0,$FC,$F8,$18,$33,$03,$93,$3F,$5C,$BB,$7B,$7F,$D9,$EF,$8C ; $C2CE78
    db $1F,$6E,$5F,$DB,$7F,$B9,$FF,$DC,$7F,$A4,$7F,$CE,$00,$10,$77,$3F ; $C2CE88
    db $F7,$7F,$7C,$E8,$E8,$40,$FC,$03,$FA,$EC,$81,$03,$E9,$FC,$D4,$A6 ; $C2CE98
    db $B3,$3E,$01,$00,$BF,$D7,$7E,$D7,$FF,$57,$3F,$56,$26,$3F,$57,$01 ; $C2CEA8
    db $70,$D7,$03,$FB,$7E,$04,$FB,$FE,$FB,$BE,$F9,$01,$03,$DE,$FB,$B7 ; $C2CEB8
    db $F9,$DF,$97,$33,$EB,$1C,$FC,$C9,$FE,$DE,$FD,$B5,$FE,$7D,$F3,$FB ; $C2CEC8
    db $F0,$F6,$F8,$B7,$FF,$37,$01,$FE,$45,$77,$A0,$8A,$FF,$EC,$F8,$ED ; $C2CED8
    db $FC,$42,$D7,$35,$E1,$BF,$93,$7F,$29,$FF,$D8,$EF,$2C,$1F,$0E,$7F ; $C2CEE8
    db $FA,$81,$33,$5F,$FC,$B7,$FE,$5F,$D6,$8C,$01,$FD,$F7,$7E,$7F,$13 ; $C2CEF8
    db $B9,$E4,$0F,$07,$07,$2F,$07,$87,$1F,$DF,$0F,$1F,$CF,$1F,$0F,$97 ; $C2CF08
    db $0F,$16,$F3,$1C,$F3,$FC,$E7,$E8,$A7,$E8,$03,$C7,$27,$01,$BC,$B6 ; $C2CF18
    db $01,$00,$0A,$F8,$07,$DF,$B8,$EC,$5F,$87,$97,$07,$67,$9F,$AF,$03 ; $C2CF28
    db $5B,$A7,$A7,$21,$65,$A2,$A2,$21,$37,$90,$E4,$0C,$E3,$F4,$E3,$F2 ; $C2CF38
    db $8D,$F1,$0F,$F9,$F8,$FC,$F0,$07,$7F,$3E,$05,$EE,$D5,$13,$80,$FF ; $C2CF48
    db $C0,$3F,$F5,$F8,$FA,$FC,$FD,$FE,$FF,$FE,$B4,$AE,$FF,$BF,$B8,$F7 ; $C2CF58
    db $EA,$5F,$F5,$2F,$F8,$17,$FC,$0B,$FE,$07,$FE,$03,$FE,$05,$FF,$10 ; $C2CF68
    db $37,$86,$4F,$0C,$04,$87,$04,$47,$06,$84,$07,$44,$84,$65,$86,$F8 ; $C2CF78
    db $C7,$F8,$07,$FF,$C3,$FF,$6B,$FF,$83,$FF,$67,$FF,$A7,$FF,$87,$08 ; $C2CF88
    db $3A,$9F,$02,$FE,$F5,$04,$03,$BA,$FD,$06,$C4,$ED,$86,$86,$CC,$9D ; $C2CF98
    db $CE,$8E,$DC,$BD,$DE,$DF,$BC,$BC,$7F,$FB,$AF,$FB,$07,$FB,$37,$FB ; $C2CFA8
    db $A7,$F3,$2F,$F3,$8F,$E3,$1F,$C7,$3F,$03,$FE,$99,$0E,$7E,$BF,$08 ; $C2CFB8
    db $FF,$C9,$28,$7F,$FF,$22,$7B,$5F,$38,$01,$DE,$0E,$9F,$17,$01,$78 ; $C2CFC8
    db $03,$17,$0F,$FE,$FF,$01,$0C,$FE,$44,$9E,$3D,$FE,$06,$D4,$22,$65 ; $C2CFD8
    db $5F,$AB,$AF,$0E,$87,$0E,$F5,$04,$FF,$3E,$F5,$07,$FC,$07,$FB,$5F ; $C2CFE8
    db $B5,$9C,$1A,$5F,$05,$03,$75,$02,$BE,$88,$01,$0F,$4A,$FA,$9B,$6F ; $C2CFF8
    db $08,$0F,$87,$7F,$A1,$61,$1E,$D5,$21,$17,$D1,$E7,$E1,$3E,$DF,$43 ; $C2D008
    db $DF,$53,$AE,$A8,$57,$5B,$A6,$3A,$CD,$7D,$9E,$C2,$FD,$14,$EB,$4A ; $C2D018
    db $F7,$A3,$9F,$A3,$DF,$E7,$A0,$43,$F4,$FF,$5C,$E8,$FE,$E1,$93,$E7 ; $C2D028
    db $C7,$EF,$17,$EA,$09,$F6,$F5,$4A,$82,$7F,$B4,$EB,$60,$DF,$83,$FC ; $C2D038
    db $C7,$3A,$C7,$FF,$3F,$03,$CC,$3D,$01,$D5,$1F,$6F,$23,$DE,$04,$63 ; $C2D048
    db $3D,$9E,$A9,$75,$F0,$04,$8F,$92,$6D,$40,$78,$BF,$04,$0F,$02,$FC ; $C2D058
    db $75,$03,$87,$91,$04,$FB,$E3,$03,$01,$FD,$08,$CC,$03,$1F,$F0,$77 ; $C2D068
    db $FF,$78,$D0,$03,$0F,$B0,$6F,$0F,$68,$D7,$D0,$2F,$42,$C2,$B5,$7F ; $C2D078
    db $FF,$75,$00,$C1,$F1,$38,$FF,$34,$FB,$23,$09,$E3,$91,$1D,$55,$EA ; $C2D088
    db $23,$C0,$17,$28,$DF,$10,$EF,$8C,$25,$FE,$5C,$FE,$F0,$5E,$FE,$A8 ; $C2D098
    db $FC,$D8,$FB,$78,$FB,$08,$CF,$0E,$FF,$88,$78,$50,$FF,$5A,$AF,$A8 ; $C2D0A8
    db $5F,$D8,$AF,$78,$F7,$A5,$06,$FF,$08,$F3,$1A,$61,$FB,$E3,$53,$71 ; $C2D0B8
    db $C0,$3B,$01,$50,$0F,$A8,$07,$54,$1F,$03,$AA,$01,$10,$47,$1F,$D4 ; $C2D0C8
    db $03,$2D,$7F,$40,$1F,$3F,$A0,$1F,$28,$47,$5F,$BD,$22,$5F,$38,$01 ; $C2D0D8
    db $D0,$73,$3F,$7C,$80,$29,$FD,$7F,$02,$20,$FF,$07,$07,$12,$0F,$00 ; $C2D0E8
    db $7D,$08,$02,$20,$FF,$A7,$FB,$A2,$FD,$A0,$A4,$DF,$5C,$23,$F3,$F8 ; $C2D0F8
    db $02,$05,$B0,$08,$50,$00,$A8,$0B,$33,$10,$84,$FF,$F8,$07,$F0,$0F ; $C2D108
    db $A2,$FF,$57,$FF,$AF,$FE,$12,$04,$3B,$00,$0A,$00,$30,$03,$02,$3F ; $C2D118
    db $3F,$A4,$E2,$39,$A0,$60,$01,$80,$FF,$BF,$D5,$1D,$00,$50,$81,$EC ; $C2D128
    db $E3,$C6,$FB,$AA,$FF,$33,$0F,$FE,$80,$7F,$FF,$02,$F1,$0F,$55,$F4 ; $C2D138
    db $3A,$C5,$BF,$C3,$03,$AA,$80,$95,$80,$09,$03,$C0,$AA,$BF,$C1,$D3 ; $C2D148
    db $C0,$7F,$CE,$01,$10,$7F,$3F,$D5,$1F,$7A,$2B,$03,$7F,$0F,$1F,$D4 ; $C2D158
    db $07,$06,$7F,$4F,$0F,$9F,$1F,$B9,$02,$FC,$7F,$78,$7E,$F0,$7D,$0E ; $C2D168
    db $15,$08,$A8,$6B,$1F,$FF,$5D,$0F,$BB,$3A,$F7,$35,$01,$A4,$FF,$25 ; $C2D178
    db $37,$07,$45,$47,$15,$47,$0D,$D3,$01,$FF,$70,$A4,$DF,$CC,$BF,$8C ; $C2D188
    db $FF,$B4,$FF,$70,$7A,$20,$EE,$F0,$04,$7F,$3A,$FF,$20,$78,$DF,$04 ; $C2D198
    db $7F,$5F,$1F,$1B,$21,$23,$C5,$37,$0B,$3B,$87,$E5,$87,$86,$C5,$8F ; $C2D1A8
    db $BD,$BF,$9E,$EF,$A8,$DF,$54,$BB,$24,$FF,$01,$31,$84,$7F,$45,$BC ; $C2D1B8
    db $D7,$F7,$19,$BF,$F3,$58,$1F,$3E,$B0,$1A,$0A,$2B,$00,$60,$05,$19 ; $C2D1C8
    db $08,$00,$14,$02,$02,$08,$3E,$C1,$55,$AA,$0A,$B9,$D5,$0E,$08,$F7 ; $C2D1D8
    db $14,$EB,$F6,$29,$E3,$1F,$45,$0F,$8A,$2F,$0F,$5F,$07,$3F,$07,$7F ; $C2D1E8
    db $03,$BF,$03,$7F,$01,$D7,$41,$61,$2A,$D5,$A0,$3F,$C0,$DE,$33,$8E ; $C2D1F8
    db $40,$03,$04,$EC,$05,$5D,$F1,$0A,$5F,$01,$BF,$5D,$17,$15,$AF,$00 ; $C2D208
    db $57,$08,$20,$00,$60,$33,$3B,$AF,$50,$57,$A8,$90,$65,$F1,$FF,$00 ; $C2D218
    db $70,$F7,$A1,$FB,$D0,$FD,$E8,$FB,$61,$F0,$03,$F9,$F0,$FC,$70,$31 ; $C2D228
    db $EE,$70,$8F,$A1,$5E,$D0,$2F,$E8,$17,$F0,$0F,$84,$03,$53,$B7,$20 ; $C2D238
    db $03,$AF,$FF,$15,$C0,$2F,$2A,$7F,$D0,$FF,$20,$ED,$5A,$9A,$03,$90 ; $C2D248
    db $43,$2C,$CB,$DA,$33,$3B,$E1,$69,$FB,$20,$F7,$11,$CB,$28,$87,$50 ; $C2D258
    db $01,$A0,$00,$B0,$33,$3B,$E9,$16,$E0,$13,$1F,$C1,$3E,$B9,$83,$55 ; $C2D268
    db $A0,$C4,$59,$F8,$01,$03,$FA,$50,$F9,$04,$23,$8D,$11,$A0,$5F,$55 ; $C2D278
    db $11,$BF,$98,$03,$50,$95,$FF,$F8,$03,$FE,$FC,$FD,$F0,$FE,$E8,$00 ; $C2D288
    db $03,$FB,$A0,$F5,$40,$EB,$00,$B7,$C4,$15,$FC,$03,$9A,$79,$27,$AE ; $C2D298
    db $A9,$FE,$A4,$03,$14,$01,$FC,$01,$FC,$08,$3F,$5F,$F6,$03,$0B,$23 ; $C2D2A8
    db $79,$D0,$09,$1F,$F8,$C0,$01,$F0,$00,$E0,$00,$1F,$C0,$00,$80,$0C ; $C2D2B8
    db $97,$1F,$F2,$0C,$F0,$99,$82,$89,$A6,$A1,$80,$A1,$90,$BD,$80,$FD ; $C2D2C8
    db $01,$FC,$E0,$01,$DD,$5D,$DD,$03,$5F,$DD,$4F,$C1,$7F,$FD,$02,$01 ; $C2D2D8
    db $03,$FD,$6F,$7F,$FF,$60,$01,$C5,$73,$CB,$71,$C0,$05,$F1,$FF,$F6 ; $C2D2E8
    db $FF,$CE,$E0,$01,$FE,$EB,$F6,$06,$DF,$FA,$EF,$C0,$FF,$2F,$00,$0D ; $C2D2F8
    db $8F,$07,$4F,$03,$F7,$01,$F9,$A0,$A9,$55,$FB,$AD,$3F,$0B,$FF,$04 ; $C2D308
    db $B9,$E1,$31,$FE,$81,$E3,$FC,$E0,$F3,$C0,$EF,$5F,$9B,$0E,$55,$CB ; $C2D318
    db $FE,$D6,$F4,$17,$E0,$DF,$4F,$C0,$B7,$85,$0C,$F2,$FC,$DC,$FE,$A5 ; $C2D328
    db $DE,$C3,$9C,$CC,$81,$C3,$BC,$7E,$FF,$0E,$FC,$8D,$FD,$7D,$5A,$01 ; $C2D338
    db $D2,$2D,$03,$FF,$4E,$7F,$01,$0F,$7F,$75,$FB,$F7,$79,$7F,$D9,$AF ; $C2D348
    db $B6,$DD,$D3,$CA,$01,$9C,$32,$05,$80,$87,$FD,$D4,$45,$F9,$39,$44 ; $C2D358
    db $00,$57,$80,$42,$D7,$7E,$AB,$F9,$D7,$7D,$05,$AE,$F8,$D7,$7C,$AF ; $C2D368
    db $4D,$8B,$C2,$E7,$8C,$DF,$1C,$BD,$38,$7D,$30,$7B,$00,$E7,$00,$2A ; $C2D378
    db $11,$FF,$77,$8C,$42,$EF,$28,$F7,$30,$EF,$00,$7F,$61,$A6,$B0,$22 ; $C2D388
    db $70,$03,$A7,$82,$31,$73,$94,$8E,$00,$03,$88,$96,$2F,$F8,$F8,$FD ; $C2D398
    db $F0,$75,$F8,$3B,$B7,$03,$8D,$05,$FC,$BA,$97,$3F,$67,$5E,$EF,$23 ; $C2D3A8
    db $70,$30,$AF,$27,$2F,$2D,$A3,$2D,$23,$3E,$F3,$40,$7F,$5E,$73,$CF ; $C2D3B8
    db $24,$7F,$60,$FE,$31,$7F,$70,$FF,$11,$FF,$20,$60,$8E,$98,$D9,$D3 ; $C2D3C8
    db $48,$BB,$88,$04,$22,$00,$12,$86,$FC,$FF,$A5,$CA,$BB,$0C,$04,$11 ; $C2D3D8
    db $3D,$B8,$71,$8E,$18,$08,$72,$88,$1A,$E0,$CE,$30,$FE,$08,$0C,$53 ; $C2D3E8
    db $7F,$70,$08,$FE,$E7,$FC,$47,$FC,$C7,$F8,$F7,$FC,$FB,$F0,$AA,$01 ; $C2D3F8
    db $5F,$F9,$FF,$37,$EF,$6F,$45,$32,$3F,$C3,$BF,$3F,$7F,$07,$FC,$1F ; $C2D408
    db $F0,$DE,$23,$C1,$3F,$0F,$17,$B9,$95,$3F,$0C,$CA,$3F,$C5,$7B,$FC ; $C2D418
    db $F8,$FF,$FD,$FA,$FE,$FB,$F5,$03,$F3,$01,$E9,$F6,$F6,$EB,$97,$7F ; $C2D428
    db $27,$15,$F7,$03,$FF,$CF,$FF,$9F,$FF,$DF,$60,$CD,$5F,$7F,$3D,$FF ; $C2D438
    db $13,$30,$FF,$1E,$03,$FC,$04,$E3,$B8,$E1,$1F,$EF,$1F,$FF,$33,$CC ; $C2D448
    db $B3,$4D,$9F,$60,$DF,$21,$9F,$6F,$DF,$3F,$01,$C0,$3F,$D9,$70,$EE ; $C2D458
    db $A7,$DA,$5E,$BF,$83,$7C,$03,$B8,$2F,$F2,$80,$9D,$92,$83,$E1,$88 ; $C2D468
    db $DF,$C5,$04,$04,$C3,$FF,$10,$20,$05,$2F,$2B,$48,$0F,$48,$58,$81 ; $C2D478
    db $0F,$0D,$32,$98,$4E,$89,$41,$80,$7F,$3B,$F6,$3F,$FD,$67,$C3,$61 ; $C2D488
    db $71,$1E,$F2,$FF,$E5,$71,$02,$01,$54,$FA,$FA,$02,$F3,$0F,$F2,$00 ; $C2D498
    db $F3,$00,$F0,$04,$F7,$0F,$EB,$05,$A8,$2E,$FF,$BD,$CF,$FF,$5E,$FF ; $C2D4A8
    db $BA,$FF,$7B,$FB,$DB,$FD,$FF,$6F,$88,$1F,$98,$0F,$88,$2F,$88,$0E ; $C2D4B8
    db $B9,$19,$87,$00,$99,$06,$09,$FF,$E3,$EF,$E5,$03,$07,$FF,$E7,$FF ; $C2D4C8
    db $F7,$EF,$35,$00,$3F,$C3,$7A,$02,$F8,$02,$F6,$0A,$E8,$1A,$70,$02 ; $C2D4D8
    db $78,$02,$11,$47,$88,$F2,$64,$E2,$93,$7F,$B1,$AF,$04,$AE,$95,$58 ; $C2D4E8
    db $7F,$80,$1F,$E0,$BE,$21,$2C,$B1,$6A,$30,$ED,$F0,$FD,$7D,$FF,$AA ; $C2D4F8
    db $FF,$D5,$FF,$FA,$25,$DD,$BF,$5C,$9A,$BA,$3F,$1D,$FF,$20,$10,$50 ; $C2D508
    db $B0,$90,$38,$F8,$38,$98,$0C,$FC,$FC,$DC,$3E,$9C,$3F,$E0,$80,$91 ; $C2D518
    db $E0,$7F,$F8,$FF,$18,$70,$3F,$14,$07,$BF,$F8,$5C,$77,$6A,$8F,$F0 ; $C2D528
    db $F5,$8E,$6E,$98,$FE,$90,$6D,$90,$73,$80,$7D,$82,$56,$80,$1D,$AB ; $C2D538
    db $FF,$49,$AA,$BF,$7F,$86,$E0,$AF,$57,$FF,$31,$0D,$BC,$7F,$AC,$5F ; $C2D548
    db $05,$20,$01,$1C,$3F,$E8,$6C,$FF,$33,$3D,$F8,$28,$F7,$E8,$03,$78 ; $C2D558
    db $BB,$CF,$F7,$FA,$FC,$F8,$F0,$F0,$EC,$EC,$D1,$89,$D3,$C3,$97,$0F ; $C2D568
    db $87,$9F,$0F,$1F,$F1,$3F,$E3,$73,$C1,$63,$82,$E6,$A3,$EC,$07,$F8 ; $C2D578
    db $5F,$F0,$2F,$3C,$03,$2F,$1F,$BF,$7F,$FF,$CE,$85,$F0,$48,$C0,$FF ; $C2D588
    db $00,$C7,$E0,$3F,$8C,$77,$0C,$F3,$08,$EA,$00,$81,$0C,$F7,$BF,$1F ; $C2D598
    db $1F,$3F,$38,$7F,$3F,$02,$7F,$80,$00,$7B,$7F,$F0,$1B,$0F,$E0,$DF ; $C2D5A8
    db $97,$11,$21,$C4,$3F,$E1,$C7,$C4,$7B,$CE,$32,$0A,$00,$EF,$C4,$FF ; $C2D5B8
    db $6C,$3C,$01,$37,$0C,$6C,$FB,$03,$AB,$04,$43,$F3,$41,$5A,$03,$10 ; $C2D5C8
    db $E9,$EF,$02,$EC,$31,$F8,$60,$0F,$D6,$07,$FC,$19,$EF,$EF,$20,$40 ; $C2D5D8
    db $01,$F7,$9F,$1D,$15,$9C,$EB,$EF,$3D,$06,$F3,$FF,$32,$FF,$0D,$80 ; $C2D5E8
    db $00,$7F,$E3,$1E,$71,$8E,$39,$C7,$1C,$10,$E7,$2E,$D3,$33,$C5,$00 ; $C2D5F8
    db $F0,$20,$6E,$6D,$40,$01,$33,$19,$E7,$32,$CF,$07,$07,$5D,$E3,$F7 ; $C2D608
    db $37,$FE,$DF,$F5,$DB,$FF,$F9,$DF,$DF,$DD,$2E,$05,$DE,$DD,$DC,$C1 ; $C2D618
    db $01,$D0,$DD,$3E,$72,$C1,$37,$C9,$77,$E8,$DF,$81,$23,$DD,$EF,$BB ; $C2D628
    db $EF,$F3,$EF,$37,$AA,$BF,$EA,$80,$80,$EC,$91,$BA,$73,$20,$42,$80 ; $C2D638
    db $69,$AA,$55,$80,$7F,$80,$EC,$3E,$20,$E0,$01,$CF,$30,$10,$11,$EF ; $C2D648
    db $AA,$FF,$DE,$F3,$92,$89,$02,$02,$B8,$A3,$D1,$1F,$2E,$35,$FD,$E3 ; $C2D658
    db $5B,$0A,$01,$FC,$03,$01,$80,$EB,$BD,$FF,$79,$FF,$77,$73,$0E,$8E ; $C2D668
    db $6F,$61,$37,$10,$FA,$5F,$B4,$70,$5B,$6A,$B5,$46,$BB,$EC,$77,$38 ; $C2D678
    db $CF,$F0,$4F,$FF,$9E,$90,$FE,$02,$43,$01,$7F,$D5,$60,$BF,$EC,$02 ; $C2D688
    db $AF,$8B,$1E,$5D,$E0,$01,$03,$00,$D4,$FF,$E9,$16,$D2,$2D,$E1,$1E ; $C2D698
    db $34,$D0,$2F,$03,$0F,$07,$D4,$2B,$09,$FB,$6F,$AA,$62,$81,$03,$2A ; $C2D6A8
    db $D5,$4D,$07,$03,$04,$37,$EA,$D0,$3F,$4B,$81,$3B,$EA,$15,$0D,$3B ; $C2D6B8
    db $03,$0F,$4B,$0E,$62,$3F,$03,$15,$EA,$4F,$07,$20,$F8,$FF,$50,$07 ; $C2D6C8
    db $A0,$07,$10,$54,$23,$87,$47,$BB,$02,$19,$E3,$A3,$E8,$37,$F8,$FE ; $C2D6D8
    db $18,$FF,$0F,$0E,$1F,$BF,$9F,$9F,$FE,$CD,$01,$18,$BF,$DF,$DF,$02 ; $C2D6E8
    db $FF,$31,$01,$EF,$E0,$5F,$A0,$1F,$20,$9F,$B0,$01,$05,$D0,$0F,$C8 ; $C2D6F8
    db $58,$07,$5F,$05,$01,$E0,$02,$18,$84,$0E,$A2,$87,$EC,$02,$5F,$3F ; $C2D708
    db $FC,$1E,$73,$BE,$41,$06,$9F,$78,$2A,$09,$9F,$C2,$C3,$0E,$E3,$F1 ; $C2D718
    db $F9,$F1,$2E,$02,$F9,$58,$FB,$F9,$FD,$FB,$FB,$FF,$DE,$F1,$7F,$E8 ; $C2D728
    db $3F,$E2,$1F,$E3,$1F,$F3,$1F,$F5,$1E,$F1,$01,$15,$80,$8A,$12,$7F ; $C2D738
    db $2A,$2D,$3B,$2A,$42,$7F,$80,$63,$01,$FF,$D5,$F5,$18,$FF,$D7,$CB ; $C2D748
    db $DF,$CD,$4C,$44,$C0,$C4,$C3,$42,$42,$67,$F2,$DF,$CE,$C9,$CB,$E6 ; $C2D758
    db $23,$73,$B2,$7F,$AB,$FF,$A8,$7E,$AD,$7F,$88,$FD,$22,$3E,$E1,$AE ; $C2D768
    db $77,$FD,$04,$AD,$FC,$54,$FC,$04,$C0,$01,$FF,$F8,$FF,$50,$AF,$1B ; $C2D778
    db $52,$57,$A9,$01,$8D,$05,$AA,$03,$71,$C2,$C9,$03,$C8,$C2,$08,$87 ; $C2D788
    db $08,$02,$08,$03,$04,$04,$81,$22,$41,$EA,$2E,$78,$3D,$24,$FE,$25 ; $C2D798
    db $FF,$40,$FE,$E5,$C7,$F8,$5D,$7A,$BF,$1C,$F7,$FF,$EE,$31,$40,$7D ; $C2D7A8
    db $36,$04,$D2,$45,$FF,$B9,$45,$3D,$E3,$FA,$07,$E3,$9C,$81,$7F,$F8 ; $C2D7B8
    db $7F,$FB,$3C,$3B,$FC,$B8,$7F,$AA,$FF,$2A,$80,$47,$B7,$03,$C2,$C2 ; $C2D7C8
    db $C6,$01,$7F,$A1,$88,$7F,$22,$C2,$3F,$13,$7F,$BF,$74,$37,$F7,$7F ; $C2D7D8
    db $A1,$9B,$05,$FF,$FB,$1F,$80,$01,$1B,$FF,$A7,$5F,$2F,$DA,$C1,$67 ; $C2D7E8
    db $CA,$35,$A5,$5A,$10,$72,$FA,$E8,$AF,$8B,$C1,$96,$3F,$DF,$80,$01 ; $C2D7F8
    db $F5,$DA,$E5,$DD,$62,$DD,$18,$E2,$DE,$61,$01,$DF,$60,$01,$5F,$F0 ; $C2D808
    db $00,$53,$59,$F1,$F1,$5D,$3F,$18,$1F,$FE,$0D,$04,$00,$FC,$5E,$A1 ; $C2D818
    db $68,$FF,$06,$AF,$50,$0F,$F0,$F1,$7E,$1F,$EC,$AF,$54,$81,$20,$90 ; $C2D828
    db $08,$81,$10,$83,$10,$85,$11,$83,$12,$87,$10,$00,$10,$DF,$0E,$E7 ; $C2D838
    db $43,$EF,$46,$EF,$44,$ED,$42,$EE,$44,$EF,$40,$2F,$C0,$04,$FE,$04 ; $C2D848
    db $FF,$01,$FE,$00,$09,$FE,$32,$F8,$C4,$D0,$56,$AD,$C6,$33,$57,$A8 ; $C2D858
    db $3F,$61,$56,$FF,$50,$73,$8D,$73,$D6,$AB,$10,$AF,$22,$51,$08,$00 ; $C2D868
    db $B0,$00,$C8,$00,$A6,$49,$60,$80,$00,$E8,$40,$40,$4F,$C4,$7F,$97 ; $C2D878
    db $C0,$FF,$D7,$31,$B6,$51,$6F,$0E,$99,$17,$F0,$03,$B4,$01,$19,$37 ; $C2D888
    db $1D,$97,$3F,$17,$7B,$FC,$86,$C7,$E7,$47,$1F,$C3,$3C,$B3,$4E,$3F ; $C2D898
    db $C0,$BF,$42,$03,$5C,$A3,$3E,$5F,$C7,$39,$D1,$AF,$AA,$9F,$90,$8A ; $C2D8A8
    db $8A,$FF,$8F,$01,$40,$3E,$BF,$C0,$7F,$E5,$7F,$80,$0C,$05,$FA,$70 ; $C2D8B8
    db $9F,$13,$DF,$5C,$F0,$7B,$DF,$E0,$75,$0D,$03,$E7,$39,$BF,$2C,$9F ; $C2D8C8
    db $26,$9F,$A7,$9F,$27,$5F,$91,$4A,$03,$26,$D9,$70,$3F,$C1,$6C,$DB ; $C2D8D8
    db $72,$CD,$FD,$46,$BD,$C3,$E7,$18,$F9,$04,$7A,$8A,$93,$62,$DF,$E0 ; $C2D8E8
    db $00,$01,$F0,$EF,$78,$F3,$4C,$ED,$F7,$9D,$32,$35,$F5,$9F,$06,$CF ; $C2D8F8
    db $07,$0B,$A6,$BF,$E1,$20,$00,$2A,$C0,$70,$43,$6A,$40,$68,$40,$E1 ; $C2D908
    db $C0,$60,$17,$40,$BF,$41,$07,$BF,$57,$BF,$9E,$7D,$0C,$1D,$30,$00 ; $C2D918
    db $01,$01,$C0,$00,$1B,$3F,$06,$08,$04,$5B,$08,$C0,$5D,$01,$FE,$12 ; $C2D928
    db $ED,$8F,$6E,$4D,$11,$A3,$21,$53,$17,$9F,$0F,$87,$0F,$8F,$0F,$4F ; $C2D938
    db $0F,$20,$FC,$2D,$D2,$12,$EF,$60,$3A,$FF,$70,$EB,$79,$39,$97,$EF ; $C2D948
    db $F3,$3F,$83,$FF,$30,$20,$52,$20,$A5,$20,$65,$F0,$72,$10,$18,$10 ; $C2D958
    db $57,$37,$FF,$58,$BD,$08,$EE,$6E,$FB,$72,$4A,$BF,$1D,$E7,$F7,$D3 ; $C2D968
    db $84,$FF,$C8,$77,$20,$02,$89,$02,$55,$04,$77,$0C,$AE,$0C,$0B,$1C ; $C2D978
    db $FD,$FC,$83,$BF,$04,$FB,$0A,$19,$4C,$FB,$C0,$F2,$B5,$4C,$00,$18 ; $C2D988
    db $F0,$00,$FE,$E0,$FD,$C0,$FA,$83,$F7,$01,$EF,$6E,$4D,$10,$3F,$F8 ; $C2D998
    db $7C,$F3,$F2,$CD,$E5,$9A,$CA,$35,$93,$6D,$1D,$42,$AA,$35,$A4,$42 ; $C2D9A8
    db $F0,$FD,$75,$55,$AA,$73,$AA,$44,$01,$90,$FD,$F5,$CA,$DF,$00,$9C ; $C2D9B8
    db $1F,$0F,$08,$8C,$08,$0C,$08,$14,$9C,$18,$BF,$BD,$8B,$37,$77,$01 ; $C2D9C8
    db $70,$67,$EF,$25,$A3,$5C,$A5,$1E,$49,$3A,$20,$40,$CF,$08,$05,$D7 ; $C2D9D8
    db $1D,$3C,$20,$FF,$F4,$F8,$E0,$E0,$90,$80,$20,$81,$1B,$81,$0A,$41 ; $C2D9E8
    db $18,$80,$0D,$40,$50,$FF,$AC,$5F,$8C,$7F,$01,$85,$00,$7E,$44,$BF ; $C2D9F8
    db $86,$7F,$42,$BF,$E0,$90,$40,$50,$00,$01,$A0,$00,$D0,$80,$A8,$80 ; $C2DA08
    db $FC,$FC,$06,$A7,$31,$80,$70,$1A,$BE,$FF,$9C,$BE,$07,$B1,$80,$47 ; $C2DA18
    db $80,$92,$4F,$A2,$5E,$2F,$E1,$D5,$3E,$C9,$9C,$E3,$B0,$4F,$FF,$28 ; $C2DA28
    db $EF,$45,$FF,$DF,$E7,$B8,$65,$56,$8F,$0A,$07,$84,$21,$A2,$10,$15 ; $C2DA38
    db $38,$B9,$3C,$CB,$DF,$CF,$20,$76,$A9,$7A,$C5,$5C,$8B,$CE,$05,$FF ; $C2DA48
    db $82,$C7,$7A,$88,$00,$04,$02,$23,$05,$11,$03,$2B,$03,$17,$2E,$01 ; $C2DA58
    db $0F,$18,$78,$7C,$F7,$61,$F9,$F0,$FB,$D8,$FE,$69,$FE,$51,$03,$F8 ; $C2DA68
    db $07,$01,$F8,$1F,$3E,$3D,$2D,$1F,$DF,$3D,$25,$D5,$85,$00,$5F,$C2 ; $C2DA78
    db $FD,$F2,$0D,$A2,$DD,$22,$75,$DD,$55,$39,$3D,$4F,$9F,$45,$5B,$C3 ; $C2DA88
    db $01,$FF,$F6,$F9,$F8,$F8,$F0,$F8,$64,$F3,$8B,$06,$5C,$5F,$3B,$8F ; $C2DA98
    db $77,$05,$FA,$87,$78,$07,$FF,$0F,$F3,$1F,$E0,$50,$A8,$00,$EA,$FF ; $C2DAA8
    db $00,$65,$FF,$B0,$7F,$35,$0A,$83,$34,$40,$AA,$0E,$D5,$EA,$1C,$95 ; $C2DAB8
    db $E5,$5A,$FC,$60,$C0,$27,$D7,$EC,$EC,$F9,$1F,$FF,$FD,$FD,$02,$00 ; $C2DAC8
    db $62,$00,$37,$C8,$17,$E9,$09,$13,$FD,$02,$FD,$2E,$E3,$7D,$64,$F8 ; $C2DAD8
    db $E4,$F0,$C4,$E8,$E7,$F0,$FE,$F1,$05,$83,$D7,$CF,$87,$DF,$EF,$53 ; $C2DAE8
    db $F7,$8B,$CF,$33,$F7,$08,$F6,$C8,$08,$FE,$18,$F7,$28,$00,$BF,$04 ; $C2DAF8
    db $2C,$07,$0C,$8E,$0F,$CF,$0F,$04,$02,$1F,$8F,$0F,$60,$DD,$EC,$F7 ; $C2DB08
    db $E3,$BC,$D2,$1E,$80,$A6,$0C,$00,$13,$00,$05,$C7,$00,$E7,$18,$FC ; $C2DB18
    db $AC,$11,$1D,$FB,$0F,$F4,$F0,$C4,$00,$0F,$F8,$03,$A1,$5F,$4F,$8F ; $C2DB28
    db $AE,$33,$18,$6E,$8E,$AE,$0E,$4E,$AE,$AF,$2F,$6F,$AF,$BF,$2F,$37 ; $C2DB38
    db $E1,$FE,$07,$E2,$FF,$E2,$FD,$E2,$22,$07,$8D,$2B,$00,$87,$55,$1F ; $C2DB48
    db $0F,$07,$01,$01,$93,$0F,$87,$FF,$EB,$98,$55,$9F,$33,$18,$FF,$5D ; $C2DB58
    db $1C,$B0,$EF,$3E,$DB,$FF,$BF,$FE,$FF,$7F,$DF,$08,$08,$48,$08,$A8 ; $C2DB68
    db $08,$C8,$08,$E8,$09,$24,$CD,$9B,$E7,$CF,$F3,$F0,$EF,$F0,$BF,$F0 ; $C2DB78
    db $5F,$F0,$3F,$F8,$17,$FC,$C4,$82,$5E,$E1,$AC,$FD,$80,$00,$CF,$E0 ; $C2DB88
    db $07,$12,$14,$13,$10,$00,$2B,$25,$22,$2B,$33,$BF,$72,$4B,$01,$E1 ; $C2DB98
    db $3F,$EF,$E5,$F9,$F6,$F9,$FB,$FC,$FA,$FC,$FE,$FC,$9D,$02,$FD,$61 ; $C2DBA8
    db $7F,$2C,$F3,$76,$16,$F9,$2E,$F9,$1B,$FD,$0F,$FD,$1F,$FD,$8E,$FD ; $C2DBB8
    db $1E,$FD,$BA,$B0,$CD,$CA,$7E,$FC,$05,$06,$06,$04,$05,$0E,$4F,$1C ; $C2DBC8
    db $5C,$3F,$BF,$7F,$4F,$BF,$1F,$E7,$8A,$81,$A5,$FB,$7F,$B3,$1F,$A7 ; $C2DBD8
    db $3F,$01,$5E,$15,$80,$2A,$E8,$01,$03,$EB,$3D,$40,$D8,$03,$01,$1E ; $C2DBE8
    db $14,$01,$1E,$54,$01,$AA,$01,$03,$76,$00,$8B,$F8,$04,$43,$93,$37 ; $C2DBF8
    db $FB,$02,$7F,$27,$35,$F7,$02,$7F,$16,$33,$AB,$01,$65,$03,$02,$FF ; $C2DC08
    db $4D,$99,$98,$03,$01,$FE,$55,$B8,$F5,$2F,$88,$0F,$A8,$0F,$C8,$50 ; $C2DC18
    db $81,$2F,$9F,$27,$98,$27,$88,$48,$81,$20,$BB,$E5,$FF,$F2,$EF,$C3 ; $C2DC28
    db $3A,$F1,$DF,$E2,$34,$CA,$FF,$AF,$E3,$0A,$82,$33,$8F,$F2,$00,$D3 ; $C2DC38
    db $20,$A0,$54,$D7,$2F,$FA,$02,$92,$22,$57,$28,$03,$AA,$DF,$7B,$AB ; $C2DC48
    db $FB,$DD,$B9,$12,$00,$6D,$6F,$70,$80,$6A,$9F,$54,$BF,$75,$68,$28 ; $C2DC58
    db $22,$01,$E4,$67,$1F,$EF,$C0,$74,$B0,$FE,$B3,$FD,$E3,$52,$FE,$63 ; $C2DC68
    db $2A,$3F,$A8,$97,$10,$07,$05,$45,$7F,$A0,$29,$FD,$57,$BF,$FB,$5F ; $C2DC78
    db $EB,$64,$E1,$BF,$E5,$BD,$CF,$E0,$AF,$20,$26,$B1,$6E,$31,$E5,$F2 ; $C2DC88
    db $0A,$F1,$82,$04,$AA,$FF,$75,$FF,$EF,$BA,$D7,$BD,$8F,$3B,$15,$A4 ; $C2DC98
    db $B7,$FD,$FD,$8A,$58,$B5,$FC,$03,$0F,$FC,$15,$FF,$1C,$BF,$48,$BF ; $C2DCA8
    db $F7,$F8,$77,$EA,$40,$B7,$3F,$10,$FF,$60,$FF,$E8,$18,$BF,$F8,$B7 ; $C2DCB8
    db $5F,$28,$F7,$61,$16,$AE,$FC,$BF,$DF,$3E,$35,$6F,$64,$58,$60,$77 ; $C2DCC8
    db $9B,$5F,$03,$31,$BC,$FF,$5C,$FF,$2C,$AB,$21,$3A,$33,$6F,$41,$57 ; $C2DCD8
    db $B1,$E1,$DF,$E8,$32,$0F,$7B,$29,$B4,$63,$7B,$BE,$BF,$72,$00,$02 ; $C2DCE8
    db $DF,$BB,$BB,$DF,$C4,$7B,$C4,$60,$BB,$01,$C0,$3B,$D9,$20,$01,$E2 ; $C2DCF8
    db $39,$E6,$19,$F6,$19,$F7,$3A,$48,$F9,$3F,$D4,$A7,$C1,$3A,$01,$09 ; $C2DD08
    db $B8,$19,$03,$02,$F7,$6B,$E3,$78,$87,$F7,$0B,$F7,$1B,$E6,$EF,$DF ; $C2DD18
    db $F7,$EF,$FB,$F7,$F9,$07,$5F,$13,$FF,$10,$53,$07,$70,$F6,$49,$7A ; $C2DD28
    db $C7,$1C,$E3,$0E,$F1,$FF,$50,$13,$EC,$C4,$0F,$69,$BE,$22,$33,$9C ; $C2DD38
    db $F9,$00,$3E,$3B,$FF,$C6,$83,$4D,$3B,$D5,$01,$33,$3A,$D5,$19,$E6 ; $C2DD48
    db $93,$7C,$D0,$3E,$01,$30,$70,$9F,$EC,$FE,$EF,$EC,$BF,$F5,$EF,$E8 ; $C2DD58
    db $EF,$10,$00,$EF,$EF,$EB,$EC,$EC,$E8,$77,$DA,$F7,$BD,$F7,$D9,$F7 ; $C2DD68
    db $AA,$EF,$C7,$10,$EF,$D7,$38,$B7,$5B,$90,$DD,$10,$DD,$15,$D9,$1B ; $C2DD78
    db $D1,$25,$07,$DF,$DB,$DB,$5F,$5F,$97,$EF,$3B,$EF,$73,$EF,$B2,$EF ; $C2DD88
    db $15,$DE,$89,$26,$D9,$EE,$33,$FD,$23,$CC,$E8,$CC,$E9,$8C,$EA,$0E ; $C2DD98
    db $EE,$1F,$FC,$65,$83,$37,$F0,$61,$31,$77,$9A,$F7,$DD,$B5,$60,$06 ; $C2DDA8
    db $FF,$18,$FC,$00,$C3,$03,$FE,$37,$8F,$0F,$3F,$1F,$8B,$3B,$9D,$3A ; $C2DDB8
    db $CE,$E8,$57,$B2,$FC,$1E,$47,$D9,$87,$B0,$0F,$E0,$9F,$DF,$35,$3D ; $C2DDC8
    db $EA,$E8,$B7,$20,$DF,$5F,$FB,$11,$7F,$CE,$03,$01,$18,$BD,$81,$C3 ; $C2DDD8
    db $28,$DF,$A0,$7F,$58,$FF,$D0,$6F,$58,$BF,$D0,$2F,$FA,$06,$3F,$FF ; $C2DDE8
    db $FE,$08,$CE,$1D,$91,$DD,$2F,$3F,$3F,$B8,$03,$09,$E2,$41,$E7,$33 ; $C2DDF8
    db $D9,$DF,$89,$01,$7F,$BF,$8B,$7E,$43,$BE,$A2,$6A,$F7,$7A,$D3,$83 ; $C2DE08
    db $D4,$3B,$31,$0A,$80,$BF,$BF,$FE,$FA,$A5,$20,$D4,$AB,$0D,$6A,$0E ; $C2DE18
    db $3F,$6A,$00,$00,$B4,$3F,$34,$00,$50,$00,$80,$AA,$D5,$8A,$08,$97 ; $C2DE28
    db $BF,$C0,$80,$BD,$7F,$80,$40,$FF,$FB,$0F,$16,$7F,$0F,$B0,$7F,$0F ; $C2DE38
    db $EF,$C0,$01,$0A,$EF,$00,$EF,$10,$E0,$07,$01,$E0,$00,$00,$E7,$5F ; $C2DE48
    db $BF,$BF,$55,$5A,$B5,$B0,$EF,$43,$3B,$AF,$5A,$5E,$BF,$4A,$07,$E3 ; $C2DE58
    db $5D,$3E,$FE,$3E,$A6,$9B,$E5,$BE,$3E,$3C,$FE,$C1,$FF,$D5,$7F,$8E ; $C2DE68
    db $7B,$1E,$F7,$3E,$EB,$DE,$F1,$3E,$E1,$3C,$F3,$F4,$44,$07,$FF,$0E ; $C2DE78
    db $FC,$F0,$FC,$40,$08,$54,$AF,$56,$36,$57,$AD,$01,$05,$0F,$5F,$A4 ; $C2DE88
    db $A9,$57,$86,$A1,$FF,$DF,$F4,$05,$02,$FF,$CE,$71,$F5,$4A,$06,$8C ; $C2DE98
    db $B9,$05,$01,$FE,$90,$01,$57,$A8,$02,$AC,$53,$55,$AB,$AD,$52,$28 ; $C2DEA8
    db $C3,$80,$03,$41,$20,$10,$01,$28,$01,$50,$03,$50,$05,$51,$6A,$00 ; $C2DEB8
    db $FF,$47,$C3,$2F,$86,$2F,$84,$0F,$2D,$82,$EE,$04,$02,$A0,$FF,$0C ; $C2DEC8
    db $FF,$00,$F2,$FE,$1B,$F2,$01,$16,$19,$F3,$8A,$33,$F7,$37,$BF,$31 ; $C2DED8
    db $DF,$11,$8C,$FB,$E1,$BE,$1A,$04,$81,$FF,$20,$C0,$E0,$F4,$05,$07 ; $C2DEE8
    db $FF,$AF,$59,$77,$90,$D0,$09,$FF,$3D,$3A,$B3,$4F,$81,$FF,$43,$3F ; $C2DEF8
    db $C1,$2A,$1F,$FF,$7F,$07,$07,$7F,$DF,$60,$75,$14,$60,$F4,$01,$7D ; $C2DF08
    db $C5,$17,$07,$FF,$E6,$1B,$98,$02,$39,$CB,$02,$C8,$CB,$AA,$00,$FF ; $C2DF18
    db $CF,$F0,$B7,$FC,$B7,$CB,$35,$B7,$48,$85,$C2,$77,$C8,$4C,$D3,$74 ; $C2DF28
    db $D8,$6C,$D0,$44,$D0,$4C,$D0,$40,$07,$74,$AB,$57,$BB,$04,$47,$BB ; $C2DF38
    db $57,$AB,$77,$C5,$07,$C8,$24,$C7,$C6,$21,$D7,$2F,$DC,$3F,$F3,$3F ; $C2DF48
    db $A3,$78,$47,$73,$CF,$F7,$D3,$21,$A4,$1E,$27,$DC,$B8,$C6,$3B,$F3 ; $C2DF58
    db $2D,$A3,$5C,$46,$B9,$CC,$33,$4C,$D1,$75,$D9,$43,$D7,$4F,$85,$E9 ; $C2DF68
    db $D0,$00,$0F,$FF,$76,$AB,$55,$BA,$47,$B8,$EF,$E0,$D8,$CE,$C0,$1F ; $C2DF78
    db $E0,$0F,$06,$F0,$9F,$F7,$D7,$F7,$EE,$13,$DB,$FF,$FC,$A4,$7F,$98 ; $C2DF88
    db $67,$03,$D0,$2F,$94,$6B,$DA,$2D,$00,$0F,$D4,$3F,$F8,$07,$E5,$1F ; $C2DF98
    db $7B,$0E,$17,$37,$DF,$F7,$03,$3B,$CF,$FF,$27,$7F,$D3,$BA,$9F,$EF ; $C2DFA8
    db $74,$91,$2E,$CA,$F1,$15,$3F,$D8,$CF,$F5,$27,$FA,$53,$BF,$2B,$DD ; $C2DFB8
    db $EF,$F7,$CA,$D6,$FF,$C0,$07,$E5,$DE,$E9,$F6,$0B,$ED,$DE,$ED,$F6 ; $C2DFC8
    db $01,$07,$E9,$FF,$EC,$FF,$EE,$D9,$D5,$3F,$35,$E5,$C7,$01,$FE,$04 ; $C2DFD8
    db $FB,$26,$DD,$4F,$BC,$0A,$FF,$13,$FE,$5B,$EC,$77,$AC,$38,$37,$6F ; $C2DFE8
    db $95,$0F,$AD,$FD,$11,$9C,$80,$37,$69,$F6,$0D,$FE,$0D,$F6,$61,$80 ; $C2DFF8
    db $0F,$01,$FC,$03,$80,$01,$06,$10,$0D,$10,$0E,$10,$0E,$1D,$10,$13 ; $C2E008
    db $13,$E8,$77,$00,$17,$00,$74,$01,$60,$59,$03,$12,$EF,$13,$FD,$6E ; $C2E018
    db $6F,$C1,$BC,$C1,$78,$D5,$FE,$2A,$7F,$FE,$17,$3F,$3C,$3E,$7F,$3E ; $C2E028
    db $3F,$87,$FE,$87,$FC,$0E,$FD,$86,$79,$8C,$FF,$87,$F8,$8C,$7F,$87 ; $C2E038
    db $78,$0B,$00,$15,$00,$03,$00,$03,$02,$00,$05,$00,$0A,$00,$04,$FE ; $C2E048
    db $09,$18,$9F,$3C,$44,$7F,$FC,$00,$7F,$9E,$3F,$BC,$3F,$3E,$7F,$7E ; $C2E058
    db $CC,$33,$8F,$37,$47,$33,$B8,$0C,$03,$F8,$0B,$03,$06,$F9,$46,$8F ; $C2E068
    db $BD,$B3,$5E,$07,$EF,$0C,$DF,$18,$BE,$30,$FD,$30,$BA,$20,$75,$20 ; $C2E078
    db $0B,$03,$27,$DE,$DE,$4D,$BA,$9A,$75,$75,$9A,$BA,$65,$65,$BA,$AA ; $C2E088
    db $75,$65,$9A,$00,$FE,$02,$51,$11,$98,$33,$1C,$79,$F8,$11,$7C,$03 ; $C2E098
    db $A8,$02,$50,$02,$FD,$51,$AE,$F8,$27,$44,$FB,$D8,$77,$54,$AB,$A8 ; $C2E0A8
    db $57,$50,$AF,$00,$BA,$00,$55,$01,$A0,$07,$50,$00,$AA,$3B,$E0,$0B ; $C2E0B8
    db $80,$8A,$75,$0C,$45,$BA,$A0,$5F,$17,$EA,$63,$55,$07,$0A,$F5,$2E ; $C2E0C8
    db $7F,$06,$1D,$A0,$0C,$41,$78,$02,$E0,$14,$00,$A8,$00,$40,$01,$66 ; $C2E0D8
    db $04,$1B,$31,$41,$BE,$43,$14,$EB,$A5,$3B,$60,$A9,$1D,$A0,$09,$01 ; $C2E0E8
    db $43,$01,$AC,$0C,$40,$02,$80,$98,$03,$12,$03,$00,$A2,$E6,$1F,$23 ; $C2E0F8
    db $08,$43,$BF,$85,$7F,$00,$03,$03,$FF,$9C,$FE,$E7,$F0,$F8,$C0,$3A ; $C2E108
    db $7E,$70,$7C,$60,$78,$30,$F0,$74,$03,$9C,$63,$20,$EE,$DC,$69,$35 ; $C2E118
    db $C0,$BF,$B0,$EF,$A0,$FF,$30,$EF,$20,$FF,$12,$C0,$37,$C2,$50,$40 ; $C2E128
    db $79,$7C,$B3,$87,$21,$01,$C1,$01,$81,$03,$0B,$33,$47,$8F,$FF,$38 ; $C2E138
    db $E7,$83,$7C,$5C,$FF,$3D,$FF,$7C,$F7,$70,$F4,$E0,$F8,$F0,$01,$03 ; $C2E148
    db $70,$F0,$B0,$F8,$C0,$98,$00,$E0,$33,$A0,$7F,$70,$B0,$37,$70,$EF ; $C2E158
    db $11,$B0,$4F,$40,$E8,$07,$00,$28,$70,$03,$64,$70,$82,$70,$C4,$20 ; $C2E168
    db $A5,$E7,$80,$71,$A0,$C0,$FE,$03,$BF,$C5,$E7,$9A,$C3,$3C,$E7,$1B ; $C2E178
    db $FF,$55,$FF,$57,$C0,$6A,$07,$AF,$07,$57,$1B,$11,$07,$BF,$7F,$2E ; $C2E188
    db $E5,$5F,$BC,$27,$52,$1F,$FE,$B9,$74,$21,$60,$1F,$40,$3F,$C0,$3F ; $C2E198
    db $F0,$0F,$C1,$3F,$84,$C0,$81,$DE,$E0,$DF,$E7,$DF,$DF,$00,$7D,$37 ; $C2E1A8
    db $FF,$60,$F7,$E7,$1A,$7F,$C0,$60,$80,$74,$8B,$F3,$4C,$07,$30,$DF ; $C2E1B8
    db $17,$E8,$40,$47,$17,$3A,$3B,$AE,$DF,$FD,$B9,$4F,$F5,$F8,$71,$78 ; $C2E1C8
    db $F8,$42,$3F,$55,$3F,$CF,$3D,$5F,$B8,$9D,$62,$BA,$45,$1D,$E2,$E8 ; $C2E1D8
    db $72,$02,$FD,$FC,$FC,$F7,$F8,$F3,$3B,$A0,$81,$0A,$FE,$EA,$F0,$03 ; $C2E1E8
    db $FD,$97,$BF,$1F,$3E,$E0,$07,$F8,$0C,$F7,$81,$FE,$27,$F8,$5D,$E1 ; $C2E1F8
    db $CC,$83,$2F,$1F,$8F,$3F,$0F,$BF,$AF,$9F,$59,$87,$5F,$A3,$BD,$BA ; $C2E208
    db $E4,$00,$30,$E8,$5F,$01,$EC,$1F,$BF,$B8,$E0,$00,$DF,$AE,$BF,$60 ; $C2E218
    db $FD,$F8,$FC,$FD,$DD,$FD,$AF,$FD,$47,$FD,$05,$AE,$0F,$00,$01,$AF ; $C2E228
    db $01,$F0,$57,$AA,$DB,$26,$AB,$55,$DC,$82,$FF,$51,$5E,$A1,$FF,$FE ; $C2E238
    db $D2,$BF,$FE,$E4,$81,$57,$BF,$A8,$96,$2E,$81,$FC,$98,$03,$F8,$07 ; $C2E248
    db $F6,$0D,$F5,$1A,$0E,$F1,$3F,$E0,$7F,$AF,$B7,$2F,$77,$A7,$83,$33 ; $C2E258
    db $73,$90,$8B,$34,$73,$88,$94,$2F,$F8,$8C,$FF,$FC,$C3,$E1,$F5,$FC ; $C2E268
    db $F8,$62,$00,$99,$FF,$FB,$B8,$F3,$45,$FF,$40,$DF,$3E,$FF,$7E,$7E ; $C2E278
    db $3E,$FC,$C3,$05,$15,$FF,$48,$BD,$1B,$07,$C0,$7F,$41,$7E,$C3,$40 ; $C2E288
    db $F4,$60,$8E,$98,$47,$23,$D8,$F5,$BB,$04,$22,$00,$97,$0A,$0A,$FE ; $C2E298
    db $25,$70,$BB,$D5,$AD,$01,$C3,$88,$02,$09,$72,$89,$1B,$E1,$CB,$31 ; $C2E2A8
    db $FF,$09,$0C,$8C,$53,$7F,$E0,$F3,$0C,$FF,$44,$FD,$C6,$61,$FD,$39 ; $C2E2B8
    db $FA,$F0,$1F,$DD,$16,$4D,$FF,$01,$D4,$AA,$C2,$FD,$95,$B3,$0E,$1D ; $C2E2C8
    db $03,$16,$4A,$C3,$07,$E5,$FE,$3B,$7C,$38,$7F,$BD,$3A,$BE,$3B,$75 ; $C2E2D8
    db $3A,$7E,$73,$E9,$F6,$F6,$EB,$97,$BF,$A7,$DC,$07,$F7,$6F,$FF,$CF ; $C2E2E8
    db $BF,$7B,$CD,$59,$58,$7D,$73,$FB,$1B,$E7,$DE,$FF,$F3,$DC,$A4,$C3 ; $C2E2F8
    db $DF,$2F,$1F,$FF,$8F,$79,$CF,$B1,$FF,$C1,$7F,$87,$3F,$CF,$7F,$EF ; $C2E308
    db $45,$F6,$C0,$3F,$D9,$C3,$EE,$A7,$DA,$5E,$BF,$83,$7C,$03,$B8,$2F ; $C2E318
    db $F2,$80,$EA,$04,$C8,$FB,$8F,$AB,$1A,$04,$9F,$5F,$16,$A5,$FF,$15 ; $C2E328
    db $FE,$03,$C7,$FF,$FE,$0B,$26,$9F,$FF,$05,$3F,$3B,$AA,$08,$E5,$BF ; $C2E338
    db $FF,$55,$C7,$10,$20,$0F,$2F,$2B,$4F,$08,$4F,$48,$83,$0E,$9F,$68 ; $C2E348
    db $9F,$48,$8F,$00,$C1,$1B,$F6,$3E,$F7,$3F,$F2,$77,$1D,$C5,$71,$FE ; $C2E358
    db $43,$B9,$E2,$3B,$34,$D5,$BD,$3F,$47,$FF,$54,$43,$11,$EA,$47,$12 ; $C2E368
    db $C0,$22,$2A,$FF,$85,$BF,$E0,$EF,$46,$78,$CC,$C2,$02,$69,$8F,$18 ; $C2E378
    db $E3,$9F,$08,$8F,$29,$8E,$0B,$BE,$1F,$8E,$0A,$97,$09,$8F,$FF,$E5 ; $C2E388
    db $EF,$16,$61,$41,$03,$F7,$EF,$E7,$DF,$50,$01,$E7,$1F,$E0,$9F,$7F ; $C2E398
    db $1F,$EF,$0D,$01,$3F,$90,$09,$17,$3F,$3D,$FF,$F8,$03,$01,$81,$5F ; $C2E3A8
    db $41,$FF,$AB,$FF,$D7,$18,$7C,$F9,$FA,$3A,$F0,$ED,$DB,$B0,$96,$FE ; $C2E3B8
    db $BF,$FD,$57,$FB,$2E,$F7,$AD,$EF,$FB,$5F,$F5,$3E,$EB,$20,$10,$90 ; $C2E3C8
    db $B0,$90,$38,$00,$01,$58,$8C,$7C,$FC,$DC,$3E,$1C,$DC,$30,$36,$F0 ; $C2E3D8
    db $7C,$3F,$F8,$BF,$07,$30,$3F,$94,$FF,$60,$52,$FF,$EA,$13,$F0,$EC ; $C2E3E8
    db $F0,$0C,$03,$F2,$EA,$F4,$01,$5D,$73,$F7,$6B,$D8,$03,$03,$31,$3C ; $C2E3F8
    db $7F,$0B,$2C,$5F,$1C,$3F,$3A,$01,$CE,$33,$8D,$61,$37,$16,$42,$3B ; $C2E408
    db $03,$ED,$D0,$3C,$B9,$38,$D1,$3A,$98,$02,$C0,$03,$80,$03,$CC,$07 ; $C2E418
    db $9F,$0F,$EA,$11,$C4,$7E,$E8,$14,$E1,$65,$FB,$27,$FB,$77,$FF,$2B ; $C2E428
    db $F3,$6E,$C1,$C1,$C7,$6F,$FD,$04,$83,$00,$1C,$FF,$1E,$53,$20,$5F ; $C2E438
    db $80,$7F,$8F,$8E,$85,$C0,$7F,$A0,$E1,$08,$9F,$D1,$9C,$D6,$24,$3F ; $C2E448
    db $7F,$25,$07,$F1,$0F,$E0,$5F,$E0,$6E,$F7,$25,$01,$7F,$67,$F7,$9D ; $C2E458
    db $06,$00,$40,$47,$57,$E0,$04,$81,$C4,$C3,$A3,$DC,$78,$BE,$03,$1F ; $C2E468
    db $1F,$EB,$02,$7F,$83,$C7,$3C,$81,$7F,$C8,$1F,$FE,$DF,$5B,$22,$DF ; $C2E478
    db $BF,$C0,$67,$FF,$F7,$F3,$FF,$0E,$FC,$EB,$FE,$E7,$04,$03,$07,$7C ; $C2E488
    db $8B,$3E,$58,$67,$F3,$FA,$0C,$5D,$9F,$01,$0E,$57,$0B,$A8,$3E,$2F ; $C2E498
    db $FE,$DF,$1D,$FD,$FF,$FB,$CD,$9E,$7F,$FF,$A6,$7F,$E1,$FD,$C3,$FD ; $C2E4A8
    db $0E,$F9,$17,$F9,$47,$F8,$AF,$FC,$7F,$9D,$10,$A8,$2F,$46,$34,$18 ; $C2E4B8
    db $A3,$FF,$E9,$0F,$7F,$5A,$FF,$91,$7F,$BF,$FF,$DF,$39,$D9,$90,$00 ; $C2E4C8
    db $39,$FF,$07,$5E,$A5,$0D,$FA,$02,$C7,$02,$61,$75,$B3,$EA,$D6,$80 ; $C2E4D8
    db $8D,$BC,$FE,$D8,$F9,$F8,$FB,$E8,$E8,$F5,$17,$4F,$B5,$8A,$0F,$F5 ; $C2E4E8
    db $57,$AB,$AC,$5F,$58,$B7,$39,$CE,$2A,$FD,$00,$03,$A5,$BB,$01,$B4 ; $C2E4F8
    db $05,$0B,$54,$60,$FF,$0F,$38,$FA,$1E,$07,$11,$EA,$34,$44,$95,$03 ; $C2E508
    db $01,$E0,$EF,$80,$2F,$30,$05,$A0,$09,$AF,$05,$FA,$33,$0A,$F5,$03 ; $C2E518
    db $CA,$80,$03,$2A,$D5,$A5,$7A,$2A,$40,$F5,$3B,$05,$E2,$2C,$00,$E4 ; $C2E528
    db $47,$E0,$3B,$FB,$18,$FF,$24,$10,$FF,$47,$09,$0E,$FB,$20,$2F,$2C ; $C2E538
    db $3B,$47,$B3,$3B,$94,$03,$47,$01,$5F,$F0,$00,$53,$59,$F1,$F1,$55 ; $C2E548
    db $A1,$19,$1F,$FE,$0D,$04,$00,$73,$FC,$A1,$FF,$06,$AF,$50,$0F,$F0 ; $C2E558
    db $F1,$7E,$1F,$EC,$AF,$54,$81,$20,$90,$08,$81,$10,$83,$10,$85,$11 ; $C2E568
    db $B5,$00,$FF,$E7,$43,$EF,$46,$EF,$07,$44,$ED,$42,$EE,$44,$D0,$0D ; $C2E578
    db $FF,$AD,$C7,$33,$57,$AC,$D0,$33,$FF,$3C,$3A,$B3,$4E,$86,$FF,$42 ; $C2E588
    db $03,$95,$00,$FF,$AA,$9F,$90,$8A,$8A,$EF,$6C,$A3,$00,$03,$BF,$C0 ; $C2E598
    db $7F,$E5,$7F,$80,$18,$B9,$70,$9F,$13,$DF,$F0,$FF,$00,$D1,$18,$FF ; $C2E5A8
    db $DC,$7D,$05,$15,$07,$FF,$B7,$C8,$E8,$38,$FF,$3A,$59,$AB,$1C,$6B ; $C2E5B8
    db $03,$0F,$0E,$04,$FE,$FC,$FD,$B8,$47,$55,$AB,$55,$C0,$02,$56,$AB ; $C2E5C8
    db $AA,$57,$54,$11,$AF,$40,$BF,$57,$24,$2A,$19,$1F,$E0,$35,$1F,$50 ; $C2E5D8
    db $0F,$7F,$00,$7F,$D5,$2A,$D5,$55,$AA,$F5,$CA,$36,$0A,$F5,$05,$4D ; $C2E5E8
    db $F2,$3C,$7F,$AA,$8E,$7F,$06,$C8,$85,$08,$6D,$0E,$53,$7F,$80,$7C ; $C2E5F8
    db $A9,$AE,$55,$5C,$A7,$A8,$59,$5F,$1F,$81,$63,$20,$DF,$20,$CF,$3F ; $C2E608
    db $E2,$01,$1F,$95,$6A,$20,$47,$3A,$C5,$F4,$40,$7F,$A5,$77,$FE,$E8 ; $C2E618
    db $01,$5F,$6E,$DB,$03,$79,$24,$03,$1F,$80,$D3,$FD,$EC,$04,$1F,$83 ; $C2E628
    db $8A,$79,$75,$46,$7F,$00,$E3,$07,$7F,$A9,$56,$C3,$04,$1F,$E0,$FF ; $C2E638
    db $5F,$C0,$05,$1F,$E5,$1A,$BF,$40,$01,$60,$01,$58,$03,$04,$05,$08 ; $C2E648
    db $8E,$C3,$87,$00,$1F,$51,$02,$FD,$04,$55,$9F,$33,$C3,$07,$D9,$00 ; $C2E658
    db $AC,$00,$56,$01,$0B,$01,$55,$01,$0D,$02,$84,$03,$49,$FF,$06,$FD ; $C2E668
    db $27,$DD,$41,$27,$6D,$02,$5D,$BF,$DD,$15,$65,$02,$9D,$00,$47,$9F ; $C2E678
    db $80,$04,$3F,$1E,$3E,$3D,$06,$05,$04,$6E,$02,$01,$75,$1A,$83,$1D ; $C2E688
    db $00,$18,$EF,$D7,$06,$21,$0C,$92,$80,$84,$C0,$8A,$C0,$D6,$C1,$CF ; $C2E698
    db $E1,$ED,$E1,$8B,$FD,$41,$01,$FD,$00,$DB,$27,$0E,$5F,$63,$DE,$7E ; $C2E6A8
    db $67,$89,$EE,$B6,$75,$B9,$40,$B0,$97,$3D,$01,$87,$0F,$8A,$07,$FF ; $C2E6B8
    db $08,$FF,$54,$72,$D1,$FE,$2E,$7F,$F8,$13,$4F,$67,$3B,$BF,$5D,$A9 ; $C2E6C8
    db $01,$41,$03,$01,$07,$03,$12,$03,$01,$03,$C4,$07,$03,$FC,$9A,$03 ; $C2E6D8
    db $45,$E1,$7F,$7F,$29,$7F,$D0,$7A,$80,$75,$00,$50,$00,$02,$41,$9E ; $C2E6E8
    db $80,$A9,$D6,$D6,$78,$35,$01,$7F,$03,$07,$BA,$75,$07,$0F,$0F,$1F ; $C2E6F8
    db $BE,$DF,$7E,$FF,$EC,$FE,$F4,$F7,$F0,$FA,$F9,$EF,$F3,$DF,$67,$BE ; $C2E708
    db $9E,$7D,$3E,$ED,$CC,$77,$F4,$FB,$C0,$CB,$F0,$80,$F0,$00,$D0,$00 ; $C2E718
    db $70,$A0,$3F,$80,$00,$60,$20,$03,$E0,$FF,$80,$7F,$F0,$04,$DF,$F8 ; $C2E728
    db $F8,$48,$76,$FC,$20,$76,$40,$39,$AC,$3E,$F8,$0F,$1F,$48,$BF,$00 ; $C2E738
    db $01,$DC,$8D,$01,$1B,$00,$10,$18,$F4,$00,$05,$A0,$60,$20,$30,$60 ; $C2E748
    db $70,$E0,$5A,$F8,$E6,$FD,$A0,$DF,$47,$38,$40,$BF,$0D,$83,$00,$01 ; $C2E758
    db $79,$1D,$F1,$1D,$F3,$1F,$FF,$4C,$07,$19,$07,$00,$FC,$1F,$F2,$1C ; $C2E768
    db $F3,$11,$EE,$17,$38,$F8,$05,$0D,$5F,$0E,$FB,$5B,$FF,$1B,$BA,$63 ; $C2E778
    db $C3,$E7,$FF,$9E,$EF,$24,$CF,$0E,$C7,$56,$F9,$74,$AB,$30,$EF,$F9 ; $C2E788
    db $2F,$C3,$3E,$BF,$6D,$3D,$D7,$7F,$B3,$03,$D9,$87,$01,$E4,$02,$8F ; $C2E798
    db $55,$0F,$0F,$05,$FE,$02,$00,$11,$CA,$07,$47,$8F,$EE,$9F,$FF,$3B ; $C2E7A8
    db $FF,$7E,$C3,$1B,$00,$F5,$2E,$1F,$F4,$1D,$33,$F9,$26,$E6,$9D,$CF ; $C2E7B8
    db $78,$7E,$81,$05,$FA,$55,$48,$4B,$E9,$F1,$FB,$45,$FD,$20,$61,$78 ; $C2E7C8
    db $CF,$3D,$CF,$7C,$E1,$49,$3F,$C6,$70,$06,$F9,$F8,$8F,$BF,$41,$7E ; $C2E7D8
    db $87,$F7,$CA,$E6,$9B,$88,$D0,$1D,$FC,$FE,$E8,$EA,$BB,$A0,$DE,$DC ; $C2E7E8
    db $EF,$3B,$C3,$FC,$E3,$E8,$97,$D4,$2B,$A0,$5F,$40,$FF,$90,$04,$A7 ; $C2E7F8
    db $08,$FF,$61,$DF,$94,$81,$73,$07,$55,$FA,$F7,$F5,$BE,$71,$2E,$D4 ; $C2E808
    db $99,$F7,$FB,$FE,$58,$50,$F4,$07,$75,$6F,$1D,$86,$0E,$D7,$80,$22 ; $C2E818
    db $17,$A0,$88,$DB,$2E,$01,$80,$1F,$00,$C0,$00,$E0,$00,$F0,$00,$F8 ; $C2E828
    db $00,$FC,$00,$FE,$08,$C1,$3D,$00,$FF,$F1,$01,$57,$F1,$01,$5F,$EF ; $C2E838
    db $27,$01,$18,$31,$5F,$0F,$01,$10,$0F,$BB,$00,$29,$BD,$07,$0B,$FD ; $C2E848
    db $03,$7F,$87,$01,$F5,$18,$7F,$11,$C0,$3B,$05,$02,$02,$06,$64,$02 ; $C2E858
    db $41,$0F,$0C,$0B,$01,$FE,$3B,$18,$19,$FF,$12,$FD,$01,$11,$DB,$11 ; $C2E868
    db $BA,$7F,$EF,$51,$60,$3B,$60,$0C,$3D,$05,$6F,$CA,$37,$4A,$04,$3B ; $C2E878
    db $45,$FA,$AA,$75,$08,$0B,$08,$FB,$38,$01,$0B,$71,$0A,$C0,$01,$FB ; $C2E888
    db $09,$FB,$58,$A7,$30,$A8,$57,$03,$AB,$56,$5A,$01,$A5,$AA,$57,$5A ; $C2E898
    db $A7,$A9,$57,$1C,$BA,$BB,$1F,$58,$B4,$8F,$5A,$FF,$2F,$C3,$0B,$EF ; $C2E8A8
    db $07,$F8,$01,$01,$17,$E8,$F7,$F8,$0F,$F0,$9C,$07,$27,$0B,$70,$09 ; $C2E8B8
    db $3B,$0E,$F8,$91,$43,$0C,$C6,$03,$59,$33,$4C,$56,$43,$55,$83,$47 ; $C2E8C8
    db $DF,$AE,$7F,$AF,$3A,$2F,$2F,$A4,$5A,$CF,$9F,$75,$45,$D7,$86,$1A ; $C2E8D8
    db $B8,$2F,$D0,$39,$18,$C7,$78,$8F,$43,$F8,$37,$B8,$60,$F8,$29,$8F ; $C2E8E8
    db $09,$AF,$09,$CF,$48,$83,$2E,$9F,$28,$01,$8F,$40,$8F,$FF,$8A,$43 ; $C2E8F8
    db $BD,$F3,$F7,$C7,$F1,$2E,$38,$F2,$11,$FF,$C5,$FF,$AA,$CF,$EF,$DF ; $C2E908
    db $2F,$9F,$6F,$8F,$7F,$48,$FB,$1F,$E0,$1F,$45,$EF,$2E,$B3,$B8,$15 ; $C2E918
    db $03,$DF,$FF,$70,$DA,$BF,$70,$80,$6A,$0E,$9F,$54,$BF,$68,$E0,$18 ; $C2E928
    db $01,$7F,$18,$00,$3F,$00,$20,$80,$FF,$03,$B0,$FE,$B3,$FD,$E3,$FE ; $C2E938
    db $A6,$7B,$59,$BF,$A8,$3A,$38,$07,$05,$7F,$8B,$40,$A9,$FD,$57,$BF ; $C2E948
    db $FB,$5F,$FD,$4F,$7F,$2E,$7F,$EA,$1D,$F4,$EC,$F0,$FA,$F0,$F5,$F8 ; $C2E958
    db $F6,$F9,$F9,$FC,$FA,$DE,$3E,$A5,$B3,$ED,$80,$03,$1B,$EF,$15,$FF ; $C2E968
    db $1E,$EF,$08,$19,$F7,$1E,$EB,$A4,$B3,$FC,$3F,$0C,$5C,$8F,$7C,$FF ; $C2E978
    db $07,$9C,$8A,$5D,$BF,$B7,$48,$B7,$FF,$38,$3F,$75,$90,$5D,$CD,$68 ; $C2E988
    db $4F,$BF,$72,$3F,$F7,$02,$16,$EF,$C3,$FC,$BF,$DF,$74,$10,$6F,$00 ; $C2E998
    db $7F,$99,$EA,$24,$71,$0F,$C0,$31,$BC,$FF,$5C,$FF,$2C,$EA,$24,$FF ; $C2E9A8
    db $0F,$60,$E8,$41,$57,$F0,$BF,$F0,$3E,$DF,$E8,$01,$8E,$9F,$11,$C5 ; $C2E9B8
    db $7F,$3F,$E9,$3F,$BF,$9F,$85,$08,$DF,$40,$7F,$53,$BB,$C7,$01,$E0 ; $C2E9C8
    db $0F,$EE,$70,$8F,$08,$A6,$5F,$29,$5B,$77,$01,$42,$6B,$0B,$FF,$07 ; $C2E9D8
    db $FE,$17,$03,$0E,$CF,$7F,$27,$3F,$93,$1F,$09,$0F,$04,$2F,$03,$97 ; $C2E9E8
    db $32,$FF,$5D,$31,$38,$29,$97,$00,$F1,$2F,$D0,$97,$68,$3E,$C1,$5D ; $C2E9F8
    db $78,$A2,$02,$39,$3E,$FF,$00,$C6,$F8,$3F,$7F,$17,$FD,$0F,$FE,$E0 ; $C2EA08
    db $03,$FA,$97,$7C,$E1,$42,$01,$31,$54,$3B,$77,$FC,$17,$4F,$F0,$FF ; $C2EA18
    db $1E,$C1,$FE,$E2,$FD,$C5,$FA,$7F,$FA,$FF,$ED,$FF,$D1,$FF,$E2,$FF ; $C2EA28
    db $84,$A4,$9F,$10,$FF,$5C,$80,$F8,$82,$FD,$01,$FD,$05,$F9,$2B,$D1 ; $C2EA38
    db $59,$A3,$77,$83,$E3,$07,$CF,$07,$FF,$28,$FF,$52,$FF,$83,$FE,$05 ; $C2EA48
    db $01,$09,$B9,$74,$FD,$1A,$FD,$22,$83,$FC,$8B,$F4,$86,$F8,$0C,$F0 ; $C2EA58
    db $19,$E0,$45,$83,$37,$0F,$BE,$3F,$F5,$5E,$FA,$3C,$F8,$98,$A2,$38 ; $C2EA68
    db $FD,$1D,$C3,$06,$FD,$53,$DD,$3F,$1F,$96,$DF,$B2,$C3,$E1,$FB,$94 ; $C2EA78
    db $D7,$0C,$AF,$1D,$5F,$3A,$BF,$75,$7F,$EA,$D2,$86,$24,$FB,$0C,$3C ; $C2EA88
    db $3F,$02,$01,$02,$EA,$40,$BD,$F4,$FC,$F4,$F5,$F4,$F7,$E2,$03,$F5 ; $C2EA98
    db $E1,$F3,$F7,$D4,$F5,$23,$FE,$30,$EF,$35,$FE,$36,$DD,$80,$03,$34 ; $C2EAA8
    db $DB,$73,$FF,$94,$EF,$97,$3D,$DB,$FB,$5F,$70,$8F,$FF,$02,$AF,$FD ; $C2EAB8
    db $FE,$A9,$55,$AA,$D7,$25,$C0,$31,$DC,$FF,$D3,$E7,$52,$10,$EF,$02 ; $C2EAC8
    db $EE,$01,$2E,$0E,$DF,$18,$D5,$EE,$D8,$7F,$C1,$3F,$4A,$B7,$06,$FB ; $C2EAD8
    db $0A,$F7,$03,$0C,$FB,$FA,$04,$60,$FF,$0B,$50,$3A,$BF,$90,$E0,$17 ; $C2EAE8
    db $6F,$9A,$1E,$FF,$B0,$39,$5F,$10,$03,$F3,$19,$7F,$54,$8E,$FF,$02 ; $C2EAF8
    db $E6,$02,$B2,$3B,$17,$0B,$1F,$41,$BE,$AF,$5A,$98,$7F,$32,$DD,$52 ; $C2EB08
    db $BD,$B1,$5F,$01,$FF,$AE,$5B,$18,$92,$7F,$F2,$FE,$E1,$FC,$FE,$F8 ; $C2EB18
    db $FC,$44,$D0,$4C,$D0,$74,$D8,$6C,$D0,$85,$07,$FE,$11,$0D,$EB,$F3 ; $C2EB28
    db $FB,$5F,$57,$EB,$77,$AB,$57,$BB,$47,$BB,$57,$AB,$E8,$24,$C6,$21 ; $C2EB38
    db $D7,$2F,$DC,$3F,$F3,$3F,$A3,$78,$47,$73,$CF,$F7,$F3,$01,$DF,$28 ; $C2EB48
    db $DF,$27,$DC,$3B,$F3,$2D,$A3,$5C,$46,$B9,$CC,$33,$4C,$D1,$75,$D9 ; $C2EB58
    db $43,$D7,$4F,$B3,$5F,$3F,$A5,$A7,$0F,$73,$FF,$76,$AB,$55,$BA,$47 ; $C2EB68
    db $B9,$7F,$86,$7F,$BF,$3F,$C0,$1F,$E0,$0F,$F0,$9F,$F7,$D7,$F7,$97 ; $C2EB78
    db $FF,$DB,$EC,$E3,$FF,$AB,$40,$0B,$98,$E7,$D0,$AF,$94,$6B,$30,$DA ; $C2EB88
    db $2D,$0F,$D4,$3F,$F8,$00,$07,$E5,$1F,$7B,$17,$37,$DF,$F7,$E0,$3B ; $C2EB98
    db $CF,$FF,$27,$EF,$59,$8C,$EB,$21,$91,$D8,$0E,$F1,$3F,$00,$D8,$CF ; $C2EBA8
    db $F5,$27,$FA,$53,$BF,$2B,$5B,$DD,$D7,$3D,$EF,$5B,$FE,$00,$01,$B7 ; $C2EBB8
    db $CB,$D4,$FF,$62,$E1,$B3,$E7,$E5,$E1,$DE,$E9,$F6,$ED,$DE,$ED,$F6 ; $C2EBC8
    db $E9,$FF,$EC,$FF,$EE,$D2,$8D,$3F,$B4,$0B,$9F,$FE,$04,$FB,$86,$26 ; $C2EBD8
    db $DD,$4F,$BC,$0A,$FF,$13,$FE,$5B,$EC,$77,$AC,$37,$22,$6F,$FF,$AA ; $C2EBE8
    db $43,$FE,$8D,$67,$01,$80,$37,$69,$F6,$0D,$FE,$0D,$F6,$61,$80,$0F ; $C2EBF8
    db $01,$FC,$03,$80,$01,$A6,$FF,$0B,$A7,$B3,$E7,$24,$E3,$F7,$01,$EF ; $C2EC08
    db $00,$CE,$02,$FF,$53,$FE,$09,$5E,$18,$A9,$1E,$E9,$60,$DE,$29,$13 ; $C2EC18
    db $D0,$2F,$00,$A1,$B9,$C0,$34,$01,$A8,$57,$C1,$03,$D5,$2A,$EA,$15 ; $C2EC28
    db $02,$03,$F5,$EB,$40,$39,$E5,$F3,$EA,$F1,$01,$F4,$F8,$F8,$FF,$D6 ; $C2EC38
    db $21,$DE,$9B,$01,$29,$01,$B0,$25,$24,$DF,$23,$2C,$EF,$F0,$37,$88 ; $C2EC48
    db $59,$75,$BA,$EC,$BD,$37,$E3,$0E,$5C,$82,$14,$74,$18,$FF,$01,$01 ; $C2EC58
    db $08,$FF,$03,$F8,$2B,$80,$9D,$58,$AF,$B8,$57,$58,$B7,$A8,$12,$57 ; $C2EC68
    db $50,$AF,$30,$67,$45,$7B,$D5,$8D,$E7,$09,$97,$CF,$8F,$DF,$00,$01 ; $C2EC78
    db $7F,$80,$EF,$22,$DF,$00,$E3,$BB,$27,$B9,$A1,$6F,$24,$01,$02,$E3 ; $C2EC88
    db $67,$05,$03,$10,$30,$18,$E7,$90,$9F,$14,$20,$EF,$DF,$18,$D7,$40 ; $C2EC98
    db $AF,$37,$CF,$9F,$B8,$40,$AF,$1F,$4F,$3F,$1F,$FF,$C3,$3C,$DB,$04 ; $C2ECA8
    db $FB,$04,$39,$FB,$44,$03,$FB,$8C,$F7,$1F,$03,$FE,$A8,$BE,$4B,$FE ; $C2ECB8
    db $88,$BF,$BF,$45,$22,$31,$A6,$2A,$02,$01,$13,$3A,$0B,$08,$90,$6D ; $C2ECC8
    db $E0,$7F,$70,$7F,$15,$F8,$7F,$78,$E3,$AB,$F0,$80,$18,$A5,$5A,$B2 ; $C2ECD8
    db $CD,$BD,$18,$42,$BA,$45,$03,$7A,$C5,$0C,$F5,$0A,$82,$7D,$31,$1C ; $C2ECE8
    db $38,$FF,$20,$4C,$0B,$75,$E7,$3C,$0B,$46,$00,$59,$A6,$BE,$49,$61 ; $C2ECF8
    db $9E,$A2,$5D,$30,$47,$B8,$3B,$54,$AB,$FF,$FE,$04,$BA,$AF,$7F,$BF ; $C2ED08
    db $9A,$01,$B4,$3F,$03,$5A,$05,$FF,$EA,$78,$6F,$CC,$FE,$8F,$CB,$3D ; $C2ED18
    db $F1,$B3,$4C,$B3,$86,$03,$A8,$57,$3F,$E0,$7F,$5F,$40,$40,$D5,$03 ; $C2ED28
    db $4F,$B7,$00,$7F,$D0,$F7,$BF,$40,$FF,$9F,$D8,$03,$01,$A0,$5F,$03 ; $C2ED38
    db $1F,$F0,$F0,$9F,$D2,$BD,$FD,$07,$CF,$F5,$03,$5F,$58,$7F,$00,$CC ; $C2ED48
    db $31,$80,$01,$B7,$07,$90,$B7,$00,$BF,$90,$57,$4E,$00,$00,$D5,$AA ; $C2ED58
    db $A2,$DD,$95,$EA,$B2,$1B,$4D,$15,$EA,$C3,$8F,$1F,$10,$08,$FF,$0F ; $C2ED68
    db $A5,$06,$3F,$67,$6D,$A2,$1A,$1F,$C9,$F9,$69,$49,$08,$17,$AB,$54 ; $C2ED78
    db $B2,$1A,$33,$49,$00,$EC,$01,$79,$92,$C9,$42,$1F,$EA,$15,$10,$C3 ; $C2ED88
    db $C9,$F0,$05,$5D,$F5,$01,$E9,$F1,$06,$5F,$A9,$56,$00,$17,$06,$FF ; $C2ED98
    db $08,$DE,$01,$49,$DE,$42,$D9,$60,$CF,$E0,$40,$7F,$57,$AC,$8A,$7D ; $C2EDA8
    db $01,$5C,$A3,$C0,$7F,$05,$FA,$AA,$80,$31,$F3,$06,$EF,$0C,$EF,$09 ; $C2EDB8
    db $62,$CF,$7F,$43,$FE,$E7,$0C,$02,$13,$FE,$51,$AF,$AE,$53,$4D,$B3 ; $C2EDC8
    db $83,$7E,$FF,$07,$BF,$44,$FF,$DC,$EF,$14,$10,$EF,$08,$F7,$88,$01 ; $C2EDD8
    db $E8,$F7,$39,$7F,$56,$7F,$70,$45,$FA,$A2,$FD,$55,$FA,$E2,$1D,$BF ; $C2EDE8
    db $7C,$BF,$F6,$E3,$7F,$FD,$CF,$06,$DD,$0F,$07,$12,$DF,$AF,$51,$01 ; $C2EDF8
    db $17,$70,$FF,$20,$F3,$20,$F7,$89,$05,$88,$CF,$00,$17,$FA,$25,$71 ; $C2EE08
    db $8E,$A2,$5D,$0D,$75,$AA,$8A,$75,$7F,$18,$B9,$21,$EF,$B3,$FF,$20 ; $C2EE18
    db $7F,$AB,$FF,$75,$F2,$01,$FF,$BF,$34,$F7,$5B,$F9,$10,$49,$FF,$11 ; $C2EE28
    db $7F,$15,$EA,$A2,$F7,$DC,$FB,$03,$B5,$1E,$CA,$BF,$78,$05,$7F,$CF ; $C2EE38
    db $41,$FC,$04,$05,$7F,$54,$AB,$A8,$57,$4A,$7D,$BF,$12,$03,$59,$01 ; $C2EE48
    db $3B,$61,$03,$00,$F9,$1C,$0C,$F9,$0D,$FF,$1A,$01,$FE,$DA,$01,$00 ; $C2EE58
    db $E3,$51,$AE,$A9,$57,$52,$AD,$A5,$5A,$5B,$AC,$BB,$55,$4B,$B4,$EF ; $C2EE68
    db $19,$C1,$33,$DF,$40,$EF,$F8,$02,$7F,$95,$EA,$0F,$0A,$F5,$45,$BA ; $C2EE78
    db $02,$DF,$7F,$18,$C0,$7F,$AB,$FF,$AB,$39,$01,$01,$17,$AB,$DA,$89 ; $C2EE88
    db $CA,$F1,$7F,$2F,$FF,$4D,$02,$05,$7F,$56,$FE,$C3,$02,$FE,$72,$FF ; $C2EE98
    db $7B,$FA,$7A,$FA,$FD,$FE,$FD,$56,$B9,$F9,$EE,$40,$FF,$CA,$37,$3A ; $C2EEA8
    db $EF,$BA,$57,$97,$8E,$1F,$03,$01,$01,$FD,$FF,$BB,$14,$16,$FD,$08 ; $C2EEB8
    db $1F,$DC,$D5,$53,$45,$A3,$6C,$97,$F9,$00,$02,$FC,$02,$F8,$DA,$E0 ; $C2EEC8
    db $1A,$C1,$B6,$0B,$C0,$59,$07,$FC,$4F,$F4,$4E,$76,$B4,$13,$5C,$E1 ; $C2EED8
    db $3B,$50,$81,$90,$01,$84,$0B,$85,$55,$B5,$55,$7F,$D5,$00,$A3,$FC ; $C2EEE8
    db $3F,$C4,$FF,$04,$E5,$10,$3A,$BF,$2D,$D1,$18,$51,$18,$C0,$74,$1A ; $C2EEF8
    db $C6,$0F,$FE,$F3,$FE,$23,$FE,$E3,$F6,$EA,$06,$4B,$E6,$0D,$F6,$4F ; $C2EF08
    db $B1,$3F,$C6,$D7,$EA,$3E,$E1,$D6,$E9,$EE,$E1,$D9,$01,$31,$59,$97 ; $C2EF18
    db $01,$F7,$3D,$7D,$F7,$5F,$F7,$6D,$D7,$7D,$D7,$75,$D7,$DD,$63,$D8 ; $C2EF28
    db $67,$FB,$55,$BE,$51,$FA,$47,$F4,$0F,$F7,$0D,$03,$71,$00,$78,$08 ; $C2EF38
    db $86,$07,$83,$07,$82,$04,$E2,$7A,$72,$5E,$76,$DA,$76,$EC,$EB,$1F ; $C2EF48
    db $B8,$55,$7F,$2A,$7E,$19,$1D,$0B,$FB,$75,$DF,$E2,$F3,$4E,$80,$73 ; $C2EF58
    db $80,$C0,$C0,$20,$E0,$1D,$50,$F8,$1F,$A4,$17,$9D,$00,$C0,$3F,$A0 ; $C2EF68
    db $5F,$F0,$0F,$BF,$4F,$C0,$81,$D3,$76,$E3,$5E,$D3,$03,$7E,$A3,$5E ; $C2EF78
    db $F3,$5E,$AE,$0B,$01,$5A,$8A,$7E,$8C,$F7,$0A,$EF,$10,$FF,$02,$AE ; $C2EF88
    db $51,$FE,$03,$AE,$5B,$BE,$43,$FE,$09,$0B,$33,$7B,$DF,$87,$6B,$DF ; $C2EF98
    db $6D,$DB,$2B,$DF,$6C,$D8,$0A,$FB,$BF,$4B,$00,$B5,$0B,$FC,$0B,$FF ; $C2EFA8
    db $08,$BF,$62,$43,$CA,$BF,$47,$D8,$7F,$74,$40,$1F,$40,$5F,$DF,$03 ; $C2EFB8
    db $9C,$7F,$40,$01,$0F,$9F,$60,$20,$DF,$18,$E5,$FF,$BF,$C1,$00,$EA ; $C2EFC8
    db $BF,$C0,$DB,$CC,$07,$44,$8E,$38,$68,$BF,$51,$C9,$DE,$F0,$5F,$A1 ; $C2EFD8
    db $7F,$FF,$3A,$EB,$F0,$AE,$31,$FB,$2E,$01,$FA,$19,$FB,$F9,$FB,$F0 ; $C2EFE8
    db $FB,$F8,$F7,$D0,$F7,$F0,$97,$53,$8D,$DD,$74,$7A,$8D,$79,$8E,$F1 ; $C2EFF8
    db $9E,$12,$FD,$D5,$BA,$92,$FD,$10,$20,$0F,$2F,$2F,$4F,$0F,$4F,$4B ; $C2F008
    db $87,$1B,$9F,$6F,$9F,$4F,$8F,$C0,$AF,$1F,$F4,$3F,$F6,$3D,$0C,$F7 ; $C2F018
    db $76,$C7,$76,$37,$F7,$33,$FF,$E7,$7C,$55,$7D,$07,$06,$08,$22,$AA ; $C2F028
    db $E3,$4A,$B9,$06,$00,$E0,$3F,$F4,$1F,$FA,$6F,$8F,$0F,$E3,$01,$2F ; $C2F038
    db $19,$03,$BF,$1F,$03,$9F,$B3,$09,$31,$EF,$9C,$35,$01,$34,$F7,$EF ; $C2F048
    db $09,$13,$07,$FF,$A6,$62,$74,$61,$81,$F8,$85,$FF,$82,$D5,$0F,$82 ; $C2F058
    db $01,$80,$28,$35,$38,$00,$40,$50,$D5,$F3,$04,$5F,$BF,$A8,$4E,$45 ; $C2F068
    db $2A,$FA,$10,$EB,$18,$AB,$8E,$20,$10,$10,$B0,$90,$B8,$38,$B8,$58 ; $C2F078
    db $0C,$7C,$7C,$5C,$BE,$1C,$BF,$35,$60,$F0,$03,$3F,$F8,$BF,$B0,$30 ; $C2F088
    db $3F,$94,$41,$BF,$F8,$F7,$FA,$08,$01,$BF,$FE,$D7,$7D,$FF,$A9,$D4 ; $C2F098
    db $0A,$85,$41,$FF,$09,$BE,$53,$31,$0D,$3C,$FF,$2C,$DF,$05,$61,$01 ; $C2F0A8
    db $E8,$FF,$BA,$33,$E4,$CB,$F7,$E8,$CE,$03,$03,$8E,$B9,$74,$03,$4A ; $C2F0B8
    db $9F,$E1,$7F,$57,$A8,$AB,$54,$27,$03,$DD,$0A,$7F,$F8,$CF,$1F,$04 ; $C2F0C8
    db $B9,$7F,$F8,$07,$F5,$02,$FF,$ED,$8F,$C2,$49,$FE,$FE,$D5,$B7,$E3 ; $C2F0D8
    db $43,$57,$1F,$07,$F9,$0F,$18,$5B,$FF,$BD,$79,$90,$7F,$B4,$79,$F0 ; $C2F0E8
    db $6F,$F4,$39,$F0,$5F,$AC,$55,$EE,$2E,$F2,$A7,$06,$43,$A0,$07,$86 ; $C2F0F8
    db $03,$80,$47,$86,$73,$80,$1F,$80,$C7,$01,$7F,$6B,$B7,$6F,$3B,$2F ; $C2F108
    db $37,$EF,$85,$07,$3E,$E1,$C3,$F4,$2B,$3A,$E5,$76,$09,$3E,$C1,$F4 ; $C2F118
    db $0B,$3A,$C5,$01,$07,$78,$92,$74,$BE,$70,$FA,$AE,$03,$76,$20,$CA ; $C2F128
    db $11,$63,$15,$3B,$0F,$1F,$A7,$05,$43,$A1,$07,$85,$43,$81,$77,$95 ; $C2F138
    db $3E,$CC,$1E,$E0,$0E,$FF,$00,$37,$7B,$6F,$36,$6F,$3C,$3F,$F0,$4C ; $C2F148
    db $FF,$37,$0B,$03,$39,$C7,$72,$8F,$34,$CF,$B8,$EB,$17,$07,$13,$04 ; $C2F158
    db $0D,$1F,$10,$7F,$21,$1F,$A3,$5E,$E7,$5C,$FE,$7C,$EC,$AB,$72,$18 ; $C2F168
    db $E8,$21,$E0,$43,$80,$44,$C3,$0A,$87,$09,$87,$15,$8E,$60,$F0,$68 ; $C2F178
    db $D8,$78,$F8,$C0,$00,$88,$DC,$14,$0C,$16,$60,$06,$01,$60,$9F,$38 ; $C2F188
    db $07,$72,$F0,$D5,$E1,$88,$FF,$E4,$BF,$E6,$1D,$E6,$3B,$6A,$FC,$6B ; $C2F198
    db $F8,$97,$01,$09,$2E,$F8,$78,$BF,$15,$EF,$77,$CC,$2C,$F3,$11,$8F ; $C2F1A8
    db $10,$8F,$18,$8F,$58,$87,$78,$87,$1D,$5C,$C5,$A3,$C0,$00,$36,$06 ; $C2F1B8
    db $E6,$0E,$C6,$1F,$9F,$3F,$F9,$FF,$E1,$FB,$2B,$E7,$37,$E7,$C4,$7B ; $C2F1C8
    db $D0,$FD,$16,$ED,$E8,$37,$03,$E2,$DD,$EE,$31,$76,$29,$C0,$02,$FF ; $C2F1D8
    db $6F,$74,$5D,$7E,$73,$78,$47,$02,$FF,$7B,$80,$0F,$5F,$A0,$42,$BC ; $C2F1E8
    db $18,$0A,$FF,$7D,$43,$79,$06,$01,$1B,$63,$37,$33,$FD,$05,$01,$07 ; $C2F1F8
    db $40,$BE,$44,$01,$01,$06,$FE,$32,$CE,$0E,$DE,$F8,$07,$1A,$FF,$00 ; $C2F208
    db $03,$97,$BF,$BA,$0E,$E2,$5F,$02,$E1,$FF,$0B,$EF,$02,$CF,$13,$EF ; $C2F218
    db $00,$0A,$10,$29,$04,$81,$03,$01,$02,$FD,$0B,$F4,$8F,$03,$03,$FC ; $C2F228
    db $20,$F3,$9F,$63,$33,$12,$04,$08,$9E,$03,$0F,$1F,$B8,$70,$AC,$FF ; $C2F238
    db $98,$FF,$A8,$BB,$88,$AB,$10,$A8,$04,$88,$03,$00,$AC,$01,$53,$98 ; $C2F248
    db $67,$A8,$57,$88,$77,$E7,$01,$21,$F8,$1C,$01,$F0,$01,$F0,$0F,$3F ; $C2F258
    db $10,$20,$00,$7F,$88,$15,$BE,$1F,$17,$9F,$74,$0F,$78,$F9,$04,$0F ; $C2F268
    db $0B,$FC,$7D,$02,$07,$0E,$51,$BF,$E5,$DB,$30,$E0,$02,$0F,$70,$40 ; $C2F278
    db $FF,$5F,$1F,$A0,$30,$CF,$29,$EF,$87,$9F,$0F,$01,$FE,$07,$C1,$75 ; $C2F288
    db $FD,$02,$1C,$FB,$C3,$03,$0F,$AA,$7D,$FC,$00,$FF,$24,$E7,$26,$EF ; $C2F298
    db $1E,$FF,$0E,$E1,$0F,$CD,$32,$70,$3A,$E5,$FC,$03,$2C,$DF,$22,$DD ; $C2F2A8
    db $16,$FD,$0E,$F1,$F7,$3A,$7F,$D3,$04,$FF,$2F,$3E,$3F,$01,$91,$FF ; $C2F2B8
    db $03,$00,$FF,$F4,$08,$FC,$7F,$05,$8F,$FF,$E0,$F0,$0F,$3A,$A3,$FF ; $C2F2C8
    db $EC,$12,$7F,$45,$F6,$8F,$7F,$5D,$06,$AE,$7F,$1F,$F1,$03,$7F,$E8 ; $C2F2D8
    db $F8,$80,$7F,$5D,$7F,$FF,$20,$F1,$20,$4A,$EF,$87,$7F,$5C,$00,$49 ; $C2F2E8
    db $57,$BD,$A0,$7F,$65,$BA,$0E,$AB,$74,$FF,$56,$F3,$3F,$80,$49,$F0 ; $C2F2F8
    db $FB,$80,$C7,$80,$F0,$03,$7F,$71,$DE,$82,$75,$FD,$AB,$7F,$95,$3F ; $C2F308
    db $7F,$08,$59,$7F,$F9,$67,$01,$A4,$02,$F9,$01,$B3,$F9,$F2,$40,$FF ; $C2F318
    db $F6,$91,$5F,$C3,$03,$38,$19,$DD,$DF,$07,$0A,$07,$AE,$7F,$12,$EE ; $C2F328
    db $1B,$0D,$F7,$1A,$FF,$2D,$F7,$0A,$F7,$07,$FC,$3A,$7F,$F2,$E1,$5D ; $C2F338
    db $04,$FE,$08,$FD,$8E,$CD,$BF,$6C,$00,$7F,$EA,$F6,$5F,$AA,$FD,$54 ; $C2F348
    db $FB,$08,$A8,$F7,$F0,$1F,$0F,$15,$00,$FB,$10,$02,$91,$6F,$FB,$08 ; $C2F358
    db $F7,$D2,$15,$EF,$B0,$0F,$08,$1B,$F4,$06,$6F,$3E,$1D,$0A,$22,$7F ; $C2F368
    db $F1,$BD,$49,$47,$38,$FC,$21,$FF,$02,$FD,$BB,$01,$D1,$E5,$F9,$38 ; $C2F378
    db $DF,$F6,$02,$B3,$F9,$C0,$03,$17,$18,$05,$B8,$47,$01,$78,$C7,$81 ; $C2F388
    db $FF,$C0,$3F,$52,$7F,$9B,$08,$10,$F7,$20,$F7,$F1,$A3,$00,$47,$73 ; $C2F398
    db $10,$08,$7B,$20,$DF,$48,$01,$5F,$18,$B4,$04,$BB,$7F,$60,$FF,$60 ; $C2F3A8
    db $12,$0F,$E7,$83,$BB,$8E,$F1,$12,$21,$60,$9F,$87,$3B,$01,$95,$03 ; $C2F3B8
    db $8F,$01,$C7,$0D,$E0,$08,$7F,$C8,$CF,$4C,$DF,$13,$3C,$FF,$1C,$C0 ; $C2F3C8
    db $7F,$3F,$C0,$D8,$3F,$44,$07,$BB,$2C,$FB,$1C,$E3,$E0,$3A,$7F,$32 ; $C2F3D8
    db $F6,$06,$CE,$C2,$FB,$82,$C3,$6F,$E3,$F2,$1E,$3E,$0E,$CE,$0E,$EE ; $C2F3E8
    db $72,$AF,$8E,$77,$52,$AF,$82,$FF,$62,$D6,$0B,$51,$46,$BF,$A6,$8F ; $C2F3F8
    db $5D,$10,$FD,$1C,$FE,$05,$FD,$FE,$FF,$E2,$83,$82,$BF,$83,$FF,$4D ; $C2F408
    db $54,$2F,$12,$EE,$08,$05,$F9,$FC,$BF,$A0,$A5,$81,$FE,$38,$4F,$F3 ; $C2F418
    db $33,$DF,$00,$1F,$BE,$FA,$FE,$B6,$BE,$BA,$BF,$74,$BF,$17,$C7,$46 ; $C2F428
    db $BB,$2C,$86,$79,$0E,$FB,$DA,$77,$96,$7B,$9A,$77,$C0,$3F,$9C,$E3 ; $C2F438
    db $73,$FC,$F6,$FD,$B0,$1D,$43,$3F,$0E,$FF,$F3,$E7,$23,$CE,$6D,$6F ; $C2F448
    db $F2,$C3,$01,$43,$35,$DB,$E1,$7E,$80,$F7,$CC,$BF,$2E,$CE,$0C,$12 ; $C2F458
    db $08,$B2,$26,$32,$6E,$2E,$01,$22,$7C,$6E,$E2,$EE,$EE,$EF,$1E,$01 ; $C2F468
    db $16,$EB,$7E,$A1,$6E,$93,$6E,$91,$6E,$B3,$CE,$31,$75,$D7,$75,$DF ; $C2F478
    db $55,$01,$1D,$45,$FF,$45,$40,$16,$75,$FF,$D7,$10,$2D,$DF,$21,$01 ; $C2F488
    db $5C,$EE,$B8,$11,$EF,$11,$FE,$41,$AC,$53,$E2,$0E,$42,$E6,$2A,$C6 ; $C2F498
    db $0A,$16,$BA,$26,$A2,$6E,$EE,$CF,$EE,$1B,$E3,$E6,$E9,$03,$18,$43 ; $C2F4A8
    db $B6,$6B,$3D,$D9,$6E,$DC,$0F,$3D,$EC,$43,$5F,$39,$F5,$55,$3D,$10 ; $C2F4B8
    db $E7,$FE,$01,$55,$FC,$07,$EA,$15,$FE,$11,$D8,$74,$55,$A2,$E0,$0F ; $C2F4C8
    db $AA,$5E,$CA,$01,$7F,$7F,$FF,$50,$14,$9A,$75,$AE,$01,$18,$9C,$77 ; $C2F4D8
    db $94,$77,$BE,$4B,$F7,$0A,$E5,$3F,$DA,$BF,$1A,$FB,$04,$C0,$03,$F7 ; $C2F4E8
    db $18,$6D,$DA,$4C,$EF,$40,$BA,$81,$87,$D1,$BF,$E9,$B7,$0E,$D1,$AF ; $C2F4F8
    db $07,$BF,$B0,$7E,$4C,$76,$01,$EB,$C7,$F9,$DF,$A1,$EF,$30,$80,$43 ; $C2F508
    db $3F,$C0,$BC,$7F,$B4,$67,$24,$B4,$6F,$01,$70,$7F,$4F,$EF,$14,$27 ; $C2F518
    db $F7,$0C,$86,$5A,$24,$C2,$7F,$04,$00,$CC,$B8,$8A,$FB,$CD,$BA,$84 ; $C2F528
    db $FC,$14,$C9,$BF,$89,$7F,$0C,$FF,$07,$FF,$87,$03,$F4,$75,$8C,$25 ; $C2F538
    db $3F,$89,$30,$78,$EF,$30,$3A,$7F,$C0,$E0,$63,$F8,$80,$C0,$9F,$C2 ; $C2F548
    db $03,$FF,$B0,$FE,$F0,$FF,$40,$84,$35,$3F,$EB,$00,$40,$42,$FD,$F0 ; $C2F558
    db $7F,$DC,$BF,$1D,$98,$B1,$90,$C8,$BF,$10,$B7,$94,$1A,$F3,$F8,$FB ; $C2F568
    db $01,$ED,$0D,$FA,$30,$DF,$15,$EA,$32,$DD,$15,$FA,$A2,$5D,$C9,$BE ; $C2F578
    db $BA,$FD,$8C,$3F,$6F,$BF,$5E,$A8,$38,$7B,$C9,$FF,$86,$BF,$84,$BF ; $C2F588
    db $3D,$FD,$F4,$FB,$F7,$F9,$80,$43,$48,$77,$09,$F7,$06,$FD,$C7,$C0 ; $C2F598
    db $39,$EF,$0E,$33,$FD,$7C,$A2,$97,$65,$00,$FF,$C3,$79,$DE,$78,$EF ; $C2F5A8
    db $7C,$C7,$FE,$43,$7E,$A3,$7E,$C3,$1D,$61,$7E,$81,$48,$B9,$AF,$0F ; $C2F5B8
    db $CF,$06,$4B,$87,$3B,$9F,$2F,$01,$12,$8F,$47,$8F,$A4,$BB,$F7,$C7 ; $C2F5C8
    db $30,$F7,$DF,$48,$FF,$C7,$FF,$7D,$AF,$08,$2F,$5F,$80,$07,$00,$01 ; $C2F5D8
    db $70,$80,$6A,$9F,$54,$BF,$68,$EE,$B0,$23,$01,$B7,$3F,$00,$1F,$38 ; $C2F5E8
    db $EF,$80,$C4,$B3,$09,$FD,$E3,$FE,$FF,$C1,$C7,$00,$A8,$FE,$01,$F7 ; $C2F5F8
    db $9F,$3C,$09,$06,$01,$FD,$57,$BF,$FB,$5F,$FD,$7F,$FD,$01,$5F,$F3 ; $C2F608
    db $06,$00,$01,$D1,$07,$01,$48,$B3,$7C,$BF,$5C,$13,$0F,$7C,$7F,$A5 ; $C2F618
    db $BF,$F7,$14,$8E,$B7,$B8,$3F,$90,$A8,$D3,$E8,$BF,$F8,$60,$B7,$5F ; $C2F628
    db $28,$F7,$16,$EF,$13,$C3,$FC,$BF,$9E,$6F,$75,$64,$99,$40,$00,$77 ; $C2F638
    db $30,$5F,$1C,$3F,$BC,$09,$FF,$5C,$FF,$2C,$F1,$B1,$80,$01,$E8,$3F ; $C2F648
    db $E8,$57,$F0,$BF,$1F,$F0,$DF,$E8,$0B,$78,$FF,$7D,$6F,$04,$F3,$FF ; $C2F658
    db $0D,$AB,$FD,$03,$FF,$61,$F0,$71,$F7,$00,$8F,$FE,$02,$81,$FF,$72 ; $C2F668
    db $CD,$E5,$1A,$0A,$F5,$27,$A5,$F2,$02,$FF,$55,$7F,$AB,$07,$2F,$FF ; $C2F678
    db $7F,$06,$E6,$FF,$5E,$FF,$F7,$02,$3F,$FF,$18,$CF,$7F,$DB,$18,$FF ; $C2F688
    db $2B,$5F,$90,$55,$01,$DE,$85,$23,$00,$55,$B5,$61,$E8,$27,$A8,$FF ; $C2F698
    db $7A,$F2,$04,$1F,$E0,$55,$4D,$F6,$01,$1F,$BF,$FE,$06,$FF,$7F,$32 ; $C2F6A8
    db $7E,$FF,$02,$8F,$2D,$06,$F4,$3F,$FF,$00,$F0,$18,$1F,$73,$FE,$20 ; $C2F6B8
    db $12,$3A,$17,$FA,$38,$7F,$3F,$9F,$F7,$13,$68,$EF,$F4,$5C,$7F,$28 ; $C2F6C8
    db $5F,$3F,$CB,$DF,$21,$E8,$5F,$41,$40,$E2,$5F,$5E,$1F,$FA,$EC,$85 ; $C2F6D8
    db $B7,$05,$48,$FF,$9B,$BD,$42,$00,$7F,$FD,$FA,$F5,$FA,$15,$2B,$EE ; $C2F6E8
    db $1F,$51,$09,$01,$18,$2D,$00,$6B,$95,$02,$AB,$54,$49,$B6,$A3,$5C ; $C2F6F8
    db $3F,$83,$0C,$5F,$B3,$B0,$8B,$93,$93,$FF,$10,$00,$7F,$F5,$1A,$BA ; $C2F708
    db $55,$15,$EA,$BA,$40,$45,$7F,$45,$BA,$80,$12,$E0,$80,$C0,$00,$BE ; $C2F718
    db $80,$BF,$89,$9F,$98,$BF,$B8,$EF,$4E,$5F,$FF,$F4,$AF,$D7,$40,$D7 ; $C2F728
    db $A9,$76,$88,$02,$FF,$B8,$57,$80,$7F,$FF,$B8,$A1,$04,$C0,$FF,$C2 ; $C2F738
    db $F7,$06,$50,$7F,$FE,$84,$D1,$7C,$3A,$CA,$BD,$66,$02,$0F,$F5,$0B ; $C2F748
    db $0D,$83,$BF,$81,$BF,$03,$AE,$36,$18,$FA,$80,$D9,$BF,$E3,$BB,$E5 ; $C2F758
    db $BB,$83,$7D,$81,$7F,$03,$BF,$5F,$C6,$39,$99,$67,$85,$63,$A1,$D0 ; $C2F768
    db $FE,$F2,$AA,$F1,$9F,$EE,$08,$FD,$F7,$FF,$E7,$18,$17,$31,$F2,$ED ; $C2F778
    db $0C,$EE,$D3,$9E,$63,$4E,$B3,$B6,$7B,$B6,$EB,$E6,$5B,$5F,$2E,$06 ; $C2F788
    db $20,$33,$EF,$32,$EF,$03,$07,$22,$EF,$23,$EF,$60,$1B,$5F,$20,$F4 ; $C2F798
    db $B0,$FB,$23,$FF,$22,$E1,$03,$40,$BF,$0B,$7F,$84,$94,$BD,$16,$FD ; $C2F7A8
    db $88,$7F,$1C,$F7,$94,$B5,$4A,$21,$01,$7F,$84,$FF,$14,$FF,$08,$C5 ; $C2F7B8
    db $03,$94,$1D,$D1,$FE,$0E,$0D,$FB,$60,$5B,$65,$DE,$FF,$BC,$FD,$C5 ; $C2F7C8
    db $11,$7B,$AC,$D2,$F5,$5B,$EA,$B7,$D5,$6F,$AB,$DE,$56,$BD,$AD,$7A ; $C2F7D8
    db $FF,$BF,$31,$BF,$BD,$BF,$B5,$F7,$AD,$FF,$35,$FF,$BD,$FF,$13,$55 ; $C2F7E8
    db $5F,$1B,$00,$9E,$FD,$8A,$75,$36,$E9,$BE,$41,$20,$5F,$A1,$5F,$E7 ; $C2F7F8
    db $0E,$EF,$63,$DE,$42,$04,$01,$E2,$EE,$10,$08,$11,$5F,$21,$5E,$7B ; $C2F808
    db $28,$01,$E2,$5F,$17,$06,$10,$18,$77,$18,$F7,$01,$71,$10,$01,$B0 ; $C2F818
    db $D2,$B6,$10,$16,$EF,$10,$FF,$67,$01,$AB,$FD,$30,$23,$14,$3F,$BF ; $C2F828
    db $75,$3A,$FF,$6A,$E4,$9D,$A0,$35,$7F,$17,$B3,$35,$6A,$A1,$DF,$75 ; $C2F838
    db $8C,$AE,$F5,$4A,$9C,$7D,$0E,$FD,$BD,$FD,$DD,$B9,$F7,$B7,$FF,$AE ; $C2F848
    db $EC,$30,$49,$5F,$04,$FB,$3C,$E3,$9C,$73,$CC,$BB,$66,$DD,$B3,$6F ; $C2F858
    db $59,$B7,$7F,$01,$80,$00,$01,$FB,$03,$FF,$27,$DF,$1F,$25,$E0,$FF ; $C2F868
    db $4B,$FB,$05,$AD,$B7,$1D,$A7,$DA,$20,$47,$B1,$5C,$AF,$FE,$02,$47 ; $C2F878
    db $02,$20,$59,$0A,$DE,$1A,$FE,$3A,$8E,$51,$61,$2F,$00,$F9,$02,$FD ; $C2F888
    db $2A,$F7,$0A,$1B,$FD,$3A,$D5,$07,$2E,$30,$CD,$1D,$FC,$F0,$FB,$EE ; $C2F898
    db $F0,$D6,$E0,$EA,$C0,$56,$C0,$69,$00,$CF,$CC,$37,$F0,$0F,$E0,$03 ; $C2F8A8
    db $1F,$C1,$3E,$C1,$3F,$41,$A3,$A8,$8C,$3B,$7E,$01,$7E,$00,$FE,$70 ; $C2F8B8
    db $12,$12,$36,$82,$76,$02,$47,$3E,$F0,$D9,$3F,$6E,$BF,$90,$10,$FF ; $C2F8C8
    db $12,$ED,$0B,$00,$CB,$A7,$81,$BF,$CF,$BF,$8C,$BF,$35,$81,$B8,$07 ; $C2F8D8
    db $C3,$9F,$BF,$F3,$FF,$83,$7C,$81,$7F,$8C,$77,$8C,$7B,$60,$C3,$07 ; $C2F8E8
    db $9F,$E0,$72,$FF,$76,$CF,$01,$57,$F7,$98,$BD,$1B,$EC,$FE,$5C,$9B ; $C2F8F8
    db $FA,$F3,$CE,$B3,$EE,$1B,$76,$9B,$7E,$C7,$7E,$99,$F3,$AF,$EC,$D3 ; $C2F908
    db $93,$6E,$E8,$80,$E3,$BF,$D7,$AF,$C4,$EB,$7B,$E5,$87,$FF,$C5,$EF ; $C2F918
    db $91,$CF,$80,$FF,$A3,$5D,$87,$7A,$84,$60,$A3,$E5,$DA,$C5,$BA,$C3 ; $C2F928
    db $43,$73,$F7,$F3,$FC,$01,$A3,$75,$87,$40,$99,$73,$9E,$E1,$DE,$EC ; $C2F938
    db $97,$06,$F2,$9F,$7E,$83,$28,$23,$0C,$FB,$BE,$47,$78,$99,$FC,$BA ; $C2F948
    db $E2,$68,$FD,$75,$FB,$F6,$FB,$2F,$8A,$6F,$6A,$EB,$7A,$5E,$F1,$31 ; $C2F958
    db $EE,$2F,$F2,$33,$CC,$B3,$FC,$1B,$F6,$E3,$9E,$63,$DE,$17,$BD,$6F ; $C2F968
    db $11,$39,$1F,$81,$E3,$39,$7F,$71,$C7,$95,$8F,$9D,$BF,$BB,$45,$FE ; $C2F978
    db $81,$EC,$1F,$FF,$21,$97,$05,$D7,$1E,$29,$BE,$41,$A6,$59,$7F,$7A ; $C2F988
    db $7B,$FA,$E3,$FA,$F3,$FA,$63,$FA,$73,$00,$03,$72,$FA,$43,$FE,$3B ; $C2F998
    db $F6,$A3,$0C,$FE,$BB,$46,$23,$07,$C6,$C2,$03,$3A,$C5,$2D,$E1,$EF ; $C2F9A8
    db $39,$EF,$0D,$DF,$5B,$BF,$17,$FB,$5F,$E7,$3F,$97,$47,$FF,$58,$FE ; $C2F9B8
    db $09,$F6,$19,$F6,$5D,$E6,$7F,$FC,$6F,$FC,$7B,$C2,$3D,$FE,$01,$E0 ; $C2F9C8
    db $62,$FE,$00,$7E,$FF,$3D,$03,$38,$7F,$F0,$47,$94,$0F,$9C,$3F,$76 ; $C2F9D8
    db $13,$86,$06,$40,$FA,$85,$D5,$2A,$5F,$B9,$6B,$A5,$5A,$05,$AB,$05 ; $C2F9E8
    db $D3,$45,$6B,$25,$B3,$B9,$BB,$A6,$A0,$A9,$A8,$B1,$A1,$AF,$50,$77 ; $C2F9F8
    db $A6,$6F,$91,$B7,$49,$B9,$66,$B8,$EF,$BA,$F7,$A7,$FA,$AC,$6F,$B8 ; $C2FA08
    db $6F,$8C,$5F,$DA,$3F,$97,$7B,$DF,$67,$BF,$7F,$9F,$7F,$5F,$17,$F5 ; $C2FA18
    db $1A,$F2,$0E,$5D,$E7,$7E,$FD,$6E,$FD,$7A,$83,$7C,$DF,$20,$BF,$01 ; $C2FA28
    db $00,$AB,$BF,$B5,$B3,$A5,$BB,$26,$03,$9B,$2E,$BF,$E6,$91,$AE,$F1 ; $C2FA38
    db $B7,$E9,$A7,$F9,$B7,$E8,$27,$F9,$37,$E9,$11,$43,$28,$86,$94,$C4 ; $C2FA48
    db $80,$24,$42,$18,$30,$C4,$88,$23,$D6,$90,$D2,$35,$84,$FB,$A9,$07 ; $C2FA58
    db $E0,$86,$B0,$6F,$92,$03,$FE,$12,$1E,$52,$1E,$DE,$07,$03,$32,$22 ; $C2FA68
    db $36,$22,$60,$C7,$92,$6D,$12,$ED,$01,$12,$FD,$0C,$FF,$92,$FD,$22 ; $C2FA78
    db $8B,$01,$FF,$7C,$97,$AF,$92,$90,$B4,$90,$B2,$D0,$F4,$F0,$0A,$00 ; $C2FA88
    db $04,$80,$8A,$C0,$84,$20,$B1,$EE,$91,$54,$07,$91,$6F,$8A,$B9,$0D ; $C2FA98
    db $81,$03,$71,$E0,$02,$1A,$3E,$A2,$7A,$22,$3A,$82,$66,$02,$3E,$8E ; $C2FAA8
    db $7E,$7A,$7E,$C6,$53,$1A,$F7,$37,$22,$22,$DF,$2E,$45,$58,$0C,$F7 ; $C2FAB8
    db $7A,$A5,$E3,$9F,$89,$BF,$87,$BB,$FF,$FF,$E4,$8E,$C9,$BD,$89,$BB ; $C2FAC8
    db $91,$BB,$B3,$89,$77,$1D,$83,$FC,$70,$5C,$01,$07,$89,$64,$76,$47 ; $C2FAD8
    db $BF,$F5,$F7,$B0,$C7,$BE,$D9,$F3,$3B,$2F,$6C,$76,$F7,$C7,$76,$1E ; $C2FAE8
    db $C7,$2E,$1F,$93,$1C,$B7,$A1,$B7,$A3,$EF,$C1,$EF,$C3,$DF,$89,$DF ; $C2FAF8
    db $8B,$1F,$B8,$FF,$93,$6C,$A1,$5F,$A3,$5C,$C1,$FF,$43,$BC,$89,$F7 ; $C2FB08
    db $8B,$7C,$E0,$BF,$04,$5D,$DB,$F8,$51,$47,$F6,$8B,$FE,$73,$0B,$F6 ; $C2FB18
    db $AB,$FD,$0F,$F7,$BC,$EF,$30,$B8,$E7,$40,$BF,$F1,$FF,$2C,$8F,$6A ; $C2FB28
    db $6F,$ED,$7F,$78,$7F,$7C,$E6,$1F,$00,$5C,$B3,$65,$FC,$1F,$F0,$E3 ; $C2FB38
    db $9C,$65,$DB,$40,$FF,$3E,$F1,$B9,$E6,$BF,$7C,$01,$D0,$98,$FD,$AF ; $C2FB48
    db $FD,$1F,$07,$FD,$15,$F5,$FD,$FD,$58,$1E,$FF,$CB,$03,$86,$85,$FD ; $C2FB58
    db $AE,$55,$BE,$4D,$5E,$BB,$FA,$07,$83,$C0,$FC,$13,$5B,$E0,$BE,$61 ; $C2FB68
    db $BF,$89,$41,$09,$FF,$AA,$E0,$1F,$07,$0F,$F3,$01,$01,$DA,$05,$E1 ; $C2FB78
    db $FE,$68,$0D,$3D,$58,$1F,$0F,$83,$EA,$0C,$FD,$3E,$00,$04,$EA,$2E ; $C2FB88
    db $7F,$E0,$1D,$7F,$A0,$3F,$FF,$7F,$AA,$55,$F9,$3E,$FE,$41,$8A,$71 ; $C2FB98
    db $F9,$AA,$75,$E5,$70,$5A,$DF,$20,$B9,$BB,$66,$60,$E9,$E8,$D1,$E1 ; $C2FBA8
    db $9D,$DD,$7F,$7B,$69,$8E,$FD,$FB,$99,$66,$78,$AF,$FA,$57,$C7,$BA ; $C2FBB8
    db $A1,$5E,$BF,$47,$5E,$A1,$99,$1C,$BF,$40,$80,$41,$F4,$02,$5F,$3A ; $C2FBC8
    db $04,$7C,$FF,$01,$5F,$E5,$48,$03,$7F,$15,$B0,$7F,$19,$FF,$80,$7F ; $C2FBD8
    db $AB,$15,$EA,$92,$0F,$58,$F7,$DE,$90,$01,$94,$90,$BA,$90,$B4,$D0 ; $C2FBE8
    db $F6,$3B,$49,$0D,$B0,$6F,$6B,$C7,$94,$96,$69,$A0,$62,$22,$2E,$22 ; $C2FBF8
    db $6E,$7E,$FE,$48,$0A,$0A,$7A,$0A,$3A,$FA,$FE,$20,$DF,$61,$F7,$54 ; $C2FC08
    db $BF,$88,$79,$FF,$0A,$F5,$0A,$FF,$F2,$1F,$DA,$F8,$16,$18,$94,$D0 ; $C2FC18
    db $FA,$F0,$70,$F8,$BD,$FC,$2A,$FF,$05,$FF,$D9,$AE,$11,$EF,$91,$7F ; $C2FC28
    db $E1,$FF,$71,$9F,$BC,$4B,$2A,$D5,$05,$FA,$66,$0E,$82,$7E,$22,$3E ; $C2FC38
    db $82,$6E,$02,$CD,$03,$7E,$03,$87,$78,$86,$FB,$02,$5C,$59,$02,$FF ; $C2FC48
    db $97,$88,$E5,$E1,$A0,$A3,$EF,$14,$03,$C7,$34,$CF,$64,$CF,$5C,$B8 ; $C2FC58
    db $81,$97,$11,$21,$C0,$43,$50,$BF,$54,$3F,$AB,$28,$05,$A3,$BB,$40 ; $C2FC68
    db $BF,$30,$ED,$07,$3B,$75,$30,$F3,$49,$8F,$18,$BA,$15,$01,$3B,$FC ; $C2FC78
    db $01,$89,$3F,$5A,$C7,$18,$9F,$04,$61,$03,$FC,$A9,$01,$00,$78,$03 ; $C2FC88
    db $02,$3F,$03,$7F,$07,$FF,$7D,$7E,$01,$18,$83,$D5,$2B,$D6,$08,$57 ; $C2FC98
    db $AA,$7A,$8F,$89,$E7,$F0,$B5,$F8,$00,$51,$80,$AF,$01,$53,$07,$AA ; $C2FCA8
    db $01,$93,$0F,$12,$9D,$06,$FD,$26,$3D,$17,$21,$0C,$95,$C0,$AA,$C0 ; $C2FCB8
    db $03,$2A,$27,$C0,$18,$C3,$D9,$80,$A9,$4B,$70,$80,$07,$55,$00,$3D ; $C2FCC8
    db $AA,$00,$04,$03,$F6,$08,$F8,$DF,$18,$1F,$5E,$FE,$09,$4C,$F0,$5F ; $C2FCD8
    db $FE,$20,$01,$0B,$2F,$00,$FF,$BF,$7F,$21,$FF,$AF,$71,$2F,$43,$F1 ; $C2FCE8
    db $03,$01,$0B,$F6,$F5,$66,$85,$FE,$F5,$24,$01,$07,$0B,$7D,$FA,$FC ; $C2FCF8
    db $58,$83,$7C,$10,$8F,$7D,$8E,$03,$70,$FC,$83,$40,$00,$D1,$25,$1D ; $C2FD08
    db $02,$DE,$05,$D1,$7F,$41,$BD,$3F,$C0,$BA,$04,$01,$15,$BF,$3F,$CA ; $C2FD18
    db $A5,$5A,$A7,$C9,$14,$80,$00,$73,$55,$D9,$8A,$0E,$01,$88,$83,$A1 ; $C2FD28
    db $CC,$AA,$82,$04,$E1,$81,$81,$BF,$26,$26,$2E,$63,$5E,$0E,$FF,$FE ; $C2FD38
    db $03,$81,$B9,$79,$BE,$41,$A0,$3F,$87,$A1,$04,$7F,$FE,$FE,$C2,$02 ; $C2FD48
    db $5F,$BF,$38,$00,$FD,$02,$F6,$C8,$04,$81,$C6,$BB,$7C,$83,$1F,$81 ; $C2FD58
    db $87,$0C,$FB,$21,$B9,$46,$F8,$66,$C3,$BF,$3D,$AF,$7F,$04,$C3,$9C ; $C2FD68
    db $B5,$FC,$B9,$24,$1C,$E5,$07,$D8,$01,$BF,$7C,$FB,$98,$C3,$8B,$7D ; $C2FD78
    db $69,$8A,$03,$14,$FF,$51,$01,$41,$50,$FF,$F1,$45,$3B,$7F,$92,$47 ; $C2FD88
    db $28,$FF,$8E,$01,$86,$82,$FF,$8A,$82,$3B,$FF,$7D,$FE,$1E,$03,$84 ; $C2FD98
    db $FF,$92,$C3,$DA,$B7,$CF,$C3,$02,$29,$FF,$8C,$C3,$09,$F3,$91,$C3 ; $C2FDA8
    db $FB,$92,$0B,$50,$C8,$FF,$F0,$1F,$01,$5E,$F0,$01,$BC,$FF,$01,$FF ; $C2FDB8
    db $86,$96,$FF,$40,$85,$01,$F6,$85,$FD,$01,$FF,$E9,$81,$FF,$2B,$F5 ; $C2FDC8
    db $53,$FF,$C3,$F5,$03,$FF,$14,$C3,$8E,$F7,$AD,$FF,$4F,$C3,$03,$D4 ; $C2FDD8
    db $FF,$FF,$87,$F3,$64,$3B,$F0,$8F,$01,$4F,$09,$43,$FF,$F3,$B2,$FF ; $C2FDE8
    db $85,$47,$01,$7E,$BE,$49,$FF,$05,$5B,$8D,$FE,$01,$ED,$04,$1F,$3E ; $C2FDF8
    db $54,$AB,$03,$D2,$5F,$7F,$80,$39,$5F,$78,$3F,$02,$1F,$2A,$D5,$08 ; $C2FE08
    db $95,$EA,$AA,$D5,$75,$33,$56,$7F,$FF,$E2,$7F,$18,$33,$03,$AB,$54 ; $C2FE18
    db $FE,$01,$38,$7F,$33,$80,$45,$3F,$B2,$F9,$B6,$C9,$01,$33,$15,$EA ; $C2FE28
    db $EA,$15,$16,$C5,$C3,$B6,$C9,$29,$79,$01,$01,$E9,$02,$7F,$29,$47 ; $C2FE38
    db $7F,$45,$79,$40,$21,$01,$7F,$5C,$52,$BF,$7B,$69,$7F,$F1,$79,$E8 ; $C2FE48
    db $02,$7F,$B6,$7B,$C7,$7F,$80,$59,$0D,$BD,$01,$02,$7F,$A1,$7B,$3F ; $C2FE58
    db $E9,$05,$7F,$8B,$7B,$01,$FE,$2C,$FF,$7B,$9B,$7F,$D0,$01,$7B,$C9 ; $C2FE68
    db $F3,$04,$7B,$95,$87,$4B,$00,$FF,$A4,$06,$7F,$BF,$F4,$03,$7F,$3D ; $C2FE78
    db $BD,$03,$7F,$27,$BF,$A1,$02,$7F,$75,$24,$03,$9D,$7F,$92,$3B,$55 ; $C2FE88
    db $49,$03,$7F,$25,$79,$9B,$03,$7F,$0E,$73,$8A,$F5,$D5,$3C,$7B,$D5 ; $C2FE98
    db $21,$7F,$00,$F3,$15,$7F,$00,$D0,$03,$FB,$49,$F4,$04,$FB,$33,$4B ; $C2FEA8
    db $71,$C0,$84,$01,$80,$3F,$B6,$47,$49,$8D,$3F,$64,$03,$3D,$4B,$18 ; $C2FEB8
    db $7F,$1E,$CB,$73,$9B,$F9,$21,$7F,$1F,$FB,$06,$7F,$DF,$03,$03,$07 ; $C2FEC8
    db $CF,$9F,$68,$7F,$89,$75,$10,$03,$BF,$4B,$92,$BF,$5E,$53,$C3,$1F ; $C2FED8
    db $CF,$18,$7F,$FF,$16,$5B,$7F,$A0,$7F,$57,$FE,$5B,$F6,$57,$AB,$CA ; $C2FEE8
    db $BF,$47,$7F,$27,$FB,$AB,$1F,$03,$AF,$05,$D9,$7F,$5F,$BF,$E7,$04 ; $C2FEF8
    db $7F,$A7,$BF,$FA,$03,$BF,$5F,$F2,$03,$3F,$2F,$6F,$03,$0B,$09,$3F ; $C2FF08
    db $FF,$0D,$FE,$9E,$3F,$FA,$02,$3F,$71,$53,$7F,$53,$E4,$03,$3F,$2B ; $C2FF18
    db $DE,$03,$5E,$7F,$E0,$7D,$F2,$57,$F2,$C9,$03,$53,$B0,$3F,$FB,$2B ; $C2FF28
    db $FD,$AF,$67,$7D,$03,$AB,$9E,$2A,$7F,$F7,$0E,$7F,$78,$EE,$15,$7F ; $C2FF38
    db $59,$F2,$1C,$55,$F2,$51,$03,$D2,$07,$26,$7F,$A9,$3F,$79,$A9,$19 ; $C2FF48
    db $7F,$52,$ED,$07,$7F,$B3,$EC,$0C,$7F,$7D,$DE,$3C,$E5,$EE,$03,$7F ; $C2FF58
    db $6C,$39,$DF,$5D,$03,$E7,$62,$FF,$CE,$1E,$7F,$CE,$03,$7F,$71,$5C ; $C2FF68
    db $3B,$5C,$FB,$63,$FF,$DF,$18,$FF,$5A,$1F,$FF,$10,$BC,$FF,$00,$FF ; $C2FF78
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C2FF88
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C2FF98
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C2FFA8
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C2FFB8
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C2FFC8
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C2FFD8
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C2FFE8
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF                                 ; $C2FFF8
