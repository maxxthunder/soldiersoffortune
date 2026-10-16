; bank $D1  (file offset $110000)
org $D10000

L_D10000:
    STZ $06ED                       ; $D10000  9C ED 06     MX
    JSR L_D10A90                    ; $D10003  20 90 0A     MX
    JSR L_D101BB                    ; $D10006  20 BB 01     MX
    JSR L_D10240                    ; $D10009  20 40 02     MX
    BMI L_D10016                    ; $D1000C  30 08        MX
    JSR L_D10080                    ; $D1000E  20 80 00     MX
    JSR L_D102AE                    ; $D10011  20 AE 02     MX
    BPL L_D1001C                    ; $D10014  10 06        MX
L_D10016:
    LDA #$0001                      ; $D10016  A9 01 00     MX
    STA $06ED                       ; $D10019  8D ED 06     MX
L_D1001C:
    SEP #$20                        ; $D1001C  E2 20        MX
    LDA #$00                        ; $D1001E  A9 00        mX
    STA $00420C                     ; $D10020  8F 0C 42 00  mX
    STA $004200                     ; $D10024  8F 00 42 00  mX
    STA $0B                         ; $D10028  85 0B        mX
    REP #$20                        ; $D1002A  C2 20        mX
    RTL                             ; $D1002C  6B           MX
L_D1002D:
    TSX                             ; $D1002D  BA           MX
    STX $B2                         ; $D1002E  86 B2        MX
    PHA                             ; $D10030  48           MX
    LDA $0E                         ; $D10031  A5 0E        MX
    AND #$00FF                      ; $D10033  29 FF 00     MX
    CMP #$0018                      ; $D10036  C9 18 00     MX
    BEQ L_D10043                    ; $D10039  F0 08        MX
    LDA $01,S                       ; $D1003B  A3 01        MX
    BEQ L_D10043                    ; $D1003D  F0 04        MX
    JSL L_C20100                    ; $D1003F  22 00 01 C2  MX
L_D10043:
    JSR L_D10A90                    ; $D10043  20 90 0A     MX
    PLA                             ; $D10046  68           MX
    JSR L_D1055B                    ; $D10047  20 5B 05     MX
    JSR L_D100DB                    ; $D1004A  20 DB 00     MX
    JMP L_D10057                    ; $D1004D  4C 57 00     MX
L_D10050:
    LDA #$0010                      ; $D10050  A9 10 00     MX
    JSL L_C20445                    ; $D10053  22 45 04 C2  MX
L_D10057:
    JSR L_D1076E                    ; $D10057  20 6E 07     MX
    PHX                             ; $D1005A  DA           MX
    JSR L_D10815                    ; $D1005B  20 15 08     MX
    TXY                             ; $D1005E  9B           MX
    PLX                             ; $D1005F  FA           MX
    LDA $D4                         ; $D10060  A5 D4        MX
    BNE L_D10057                    ; $D10062  D0 F3        MX
    LDA #$0010                      ; $D10064  A9 10 00     MX
    JSL L_C20466                    ; $D10067  22 66 04 C2  MX
    JSL L_C204AB                    ; $D1006B  22 AB 04 C2  MX
    SEP #$20                        ; $D1006F  E2 20        MX
    LDA #$00                        ; $D10071  A9 00        mX
    STA $00420C                     ; $D10073  8F 0C 42 00  mX
    STA $004200                     ; $D10077  8F 00 42 00  mX
    STA $0B                         ; $D1007B  85 0B        mX
    REP #$20                        ; $D1007D  C2 20        mX
    RTL                             ; $D1007F  6B           MX
L_D10080:
    PEA $0A91                       ; $D10080  F4 91 0A     MX
    PEA $00D0                       ; $D10083  F4 D0 00     MX
    PEA $0000                       ; $D10086  F4 00 00     MX
    PEA $007F                       ; $D10089  F4 7F 00     MX
    JSL L_C30000                    ; $D1008C  22 00 00 C3  MX
    PLA                             ; $D10090  68           MX
    PLA                             ; $D10091  68           MX
    PLA                             ; $D10092  68           MX
    PLA                             ; $D10093  68           MX
    LDA #$F07F                      ; $D10094  A9 7F F0     MX
    LDX #$0000                      ; $D10097  A2 00 00     MX
    LDY #$0020                      ; $D1009A  A0 20 00     MX
    JSL L_C302A8                    ; $D1009D  22 A8 02 C3  MX
    LDX #$0000                      ; $D100A1  A2 00 00     MX
    LDA $7F0020                     ; $D100A4  AF 20 00 7F  MX
    TAY                             ; $D100A8  A8           MX
L_D100A9:
    LDA $7F0022,X                   ; $D100A9  BF 22 00 7F  MX
    ORA #$2E00                      ; $D100AD  09 00 2E     MX
    STA $7FC6C0,X                   ; $D100B0  9F C0 C6 7F  MX
    INX                             ; $D100B4  E8           MX
    INX                             ; $D100B5  E8           MX
    DEY                             ; $D100B6  88           MX
    BNE L_D100A9                    ; $D100B7  D0 F0        MX
    LDA #$4000                      ; $D100B9  A9 00 40     MX
    STA $002116                     ; $D100BC  8F 16 21 00  MX
    LDA $7F0020                     ; $D100C0  AF 20 00 7F  MX
    ASL                             ; $D100C4  0A           MX
    CLC                             ; $D100C5  18           MX
    ADC #$0022                      ; $D100C6  69 22 00     MX
    TAX                             ; $D100C9  AA           MX
    LDY #$007F                      ; $D100CA  A0 7F 00     MX
    LDA $7F0020                     ; $D100CD  AF 20 00 7F  MX
    ASL                             ; $D100D1  0A           MX
    ASL                             ; $D100D2  0A           MX
    ASL                             ; $D100D3  0A           MX
    ASL                             ; $D100D4  0A           MX
    ASL                             ; $D100D5  0A           MX
    JSL L_C308A0                    ; $D100D6  22 A0 08 C3  MX
    RTS                             ; $D100DA  60           MX
L_D100DB:
    PEA $117B                       ; $D100DB  F4 7B 11     MX
    PEA $00D1                       ; $D100DE  F4 D1 00     MX
    PEA $0000                       ; $D100E1  F4 00 00     MX
    PEA $007F                       ; $D100E4  F4 7F 00     MX
    JSL L_C30000                    ; $D100E7  22 00 00 C3  MX
    PLA                             ; $D100EB  68           MX
    PLA                             ; $D100EC  68           MX
    PLA                             ; $D100ED  68           MX
    PLA                             ; $D100EE  68           MX
    LDA $66                         ; $D100EF  A5 66        MX
L_D100F1:
    CMP $66                         ; $D100F1  C5 66        MX
    BEQ L_D100F1                    ; $D100F3  F0 FC        MX
    LDA #$C07F                      ; $D100F5  A9 7F C0     MX
    LDX #$0000                      ; $D100F8  A2 00 00     MX
    LDY #$0020                      ; $D100FB  A0 20 00     MX
    JSL L_C302A8                    ; $D100FE  22 A8 02 C3  MX
    LDA #$D0D1                      ; $D10102  A9 D1 D0     MX
    LDX #$1EB6                      ; $D10105  A2 B6 1E     MX
    LDY #$0020                      ; $D10108  A0 20 00     MX
    JSL L_C302A8                    ; $D1010B  22 A8 02 C3  MX
    PHB                             ; $D1010F  8B           MX
    PEA $007F                       ; $D10110  F4 7F 00     MX
    PLB                             ; $D10113  AB           MX
    LDX #$0000                      ; $D10114  A2 00 00     MX
    TXY                             ; $D10117  9B           MX
L_D10118:
    TXA                             ; $D10118  8A           MX
    BIT #$000F                      ; $D10119  89 0F 00     MX
    BNE L_D10124                    ; $D1011C  D0 06        MX
    LDA $66                         ; $D1011E  A5 66        MX
L_D10120:
    CMP $66                         ; $D10120  C5 66        MX
    BEQ L_D10120                    ; $D10122  F0 FC        MX
L_D10124:
    LDA $0022,X                     ; $D10124  BD 22 00     MX
    AND #$00FF                      ; $D10127  29 FF 00     MX
    JSR L_D10164                    ; $D1012A  20 64 01     MX
    LDA $46                         ; $D1012D  A5 46        MX
    ORA #$2800                      ; $D1012F  09 00 28     MX
    STA $BE20,Y                     ; $D10132  99 20 BE     MX
    INX                             ; $D10135  E8           MX
    INX                             ; $D10136  E8           MX
    INY                             ; $D10137  C8           MX
    INY                             ; $D10138  C8           MX
    INY                             ; $D10139  C8           MX
    INY                             ; $D1013A  C8           MX
    CPY #$00AC                      ; $D1013B  C0 AC 00     MX
    BCC L_D10118                    ; $D1013E  90 D8        MX
    LDA #$1EDC                      ; $D10140  A9 DC 1E     MX
    STA $BE20,Y                     ; $D10143  99 20 BE     MX
    LDA #$1F5C                      ; $D10146  A9 5C 1F     MX
    STA $BE24,Y                     ; $D10149  99 24 BE     MX
    LDA #$2AD1                      ; $D1014C  A9 D1 2A     MX
    STA $BE22,Y                     ; $D1014F  99 22 BE     MX
    STA $BE26,Y                     ; $D10152  99 26 BE     MX
    LDA #$002C                      ; $D10155  A9 2C 00     MX
    LDX #$2009                      ; $D10158  A2 09 20     MX
    LDY #$F4E0                      ; $D1015B  A0 E0 F4     MX
    MVN $D1,$7E                     ; $D1015E  54 7E D1     MX
    PLB                             ; $D10161  AB           MX
    PLB                             ; $D10162  AB           MX
    RTS                             ; $D10163  60           MX
L_D10164:
    PHA                             ; $D10164  48           MX
    PHX                             ; $D10165  DA           MX
    PHY                             ; $D10166  5A           MX
    ASL                             ; $D10167  0A           MX
    ASL                             ; $D10168  0A           MX
    ASL                             ; $D10169  0A           MX
    ASL                             ; $D1016A  0A           MX
    ASL                             ; $D1016B  0A           MX
    ASL                             ; $D1016C  0A           MX
    ASL                             ; $D1016D  0A           MX
    CLC                             ; $D1016E  18           MX
    ADC #$0078                      ; $D1016F  69 78 00     MX
    TAX                             ; $D10172  AA           MX
    LDY #$007F                      ; $D10173  A0 7F 00     MX
    LDA $05,S                       ; $D10176  A3 05        MX
    INC                             ; $D10178  1A           MX
    INC                             ; $D10179  1A           MX
    ASL                             ; $D1017A  0A           MX
    PHA                             ; $D1017B  48           MX
    AND #$000E                      ; $D1017C  29 0E 00     MX
    STA $46                         ; $D1017F  85 46        MX
    PLA                             ; $D10181  68           MX
    AND #$00F0                      ; $D10182  29 F0 00     MX
    ASL                             ; $D10185  0A           MX
    ADC $46                         ; $D10186  65 46        MX
    ORA #$0100                      ; $D10188  09 00 01     MX
    STA $46                         ; $D1018B  85 46        MX
    ASL                             ; $D1018D  0A           MX
    ASL                             ; $D1018E  0A           MX
    ASL                             ; $D1018F  0A           MX
    ASL                             ; $D10190  0A           MX
    CLC                             ; $D10191  18           MX
    ADC #$4000                      ; $D10192  69 00 40     MX
    STA $002116                     ; $D10195  8F 16 21 00  MX
    PHA                             ; $D10199  48           MX
    LDA #$0040                      ; $D1019A  A9 40 00     MX
    JSL L_C308A0                    ; $D1019D  22 A0 08 C3  MX
    PLA                             ; $D101A1  68           MX
    CLC                             ; $D101A2  18           MX
    ADC #$0100                      ; $D101A3  69 00 01     MX
    STA $002116                     ; $D101A6  8F 16 21 00  MX
    TXA                             ; $D101AA  8A           MX
    CLC                             ; $D101AB  18           MX
    ADC #$0040                      ; $D101AC  69 40 00     MX
    TAX                             ; $D101AF  AA           MX
    LDA #$0040                      ; $D101B0  A9 40 00     MX
    JSL L_C308A0                    ; $D101B3  22 A0 08 C3  MX
    PLY                             ; $D101B7  7A           MX
    PLX                             ; $D101B8  FA           MX
    PLA                             ; $D101B9  68           MX
    RTS                             ; $D101BA  60           MX
L_D101BB:
    SEP #$20                        ; $D101BB  E2 20        MX
    LDA #$03                        ; $D101BD  A9 03        mX
    STA $002105                     ; $D101BF  8F 05 21 00  mX
    REP #$20                        ; $D101C3  C2 20        mX
    PEA $0C75                       ; $D101C5  F4 75 0C     MX
    PEA $00D0                       ; $D101C8  F4 D0 00     MX
    PEA $0000                       ; $D101CB  F4 00 00     MX
    PEA $007F                       ; $D101CE  F4 7F 00     MX
    JSL L_C30000                    ; $D101D1  22 00 00 C3  MX
    PLA                             ; $D101D5  68           MX
    PLA                             ; $D101D6  68           MX
    PLA                             ; $D101D7  68           MX
    PLA                             ; $D101D8  68           MX
    STZ $09FE                       ; $D101D9  9C FE 09     MX
    LDA #$07FD                      ; $D101DC  A9 FD 07     MX
    LDX #$09FE                      ; $D101DF  A2 FE 09     MX
    LDY #$0A00                      ; $D101E2  A0 00 0A     MX
    PHB                             ; $D101E5  8B           MX
    MVN $7E,$7E                     ; $D101E6  54 7E 7E     MX
    PLB                             ; $D101E9  AB           MX
    LDA #$0000                      ; $D101EA  A9 00 00     MX
    STA $002116                     ; $D101ED  8F 16 21 00  MX
    LDX #$0060                      ; $D101F1  A2 60 00     MX
    LDY #$0000                      ; $D101F4  A0 00 00     MX
    JSR L_D1045E                    ; $D101F7  20 5E 04     MX
    ASL                             ; $D101FA  0A           MX
    ASL                             ; $D101FB  0A           MX
    ASL                             ; $D101FC  0A           MX
    ASL                             ; $D101FD  0A           MX
    ASL                             ; $D101FE  0A           MX
    ASL                             ; $D101FF  0A           MX
    LDY #$007F                      ; $D10200  A0 7F 00     MX
    JSL L_C308A0                    ; $D10203  22 A0 08 C3  MX
    LDA #$007F                      ; $D10207  A9 7F 00     MX
    LDX #$0000                      ; $D1020A  A2 00 00     MX
    LDY #$0060                      ; $D1020D  A0 60 00     MX
    JSL L_C302A8                    ; $D10210  22 A8 02 C3  MX
    LDA #$7C00                      ; $D10214  A9 00 7C     MX
    JSR L_D10402                    ; $D10217  20 02 04     MX
    JSL L_C20489                    ; $D1021A  22 89 04 C2  MX
    LDA #$000F                      ; $D1021E  A9 0F 00     MX
    TAX                             ; $D10221  AA           MX
    LDY #$0022                      ; $D10222  A0 22 00     MX
L_D10225:
    PHA                             ; $D10225  48           MX
    LDA #$0001                      ; $D10226  A9 01 00     MX
    JSL L_C30A4E                    ; $D10229  22 4E 0A C3  MX
    PLA                             ; $D1022D  68           MX
    JSR L_D10C98                    ; $D1022E  20 98 0C     MX
    DEX                             ; $D10231  CA           MX
    BNE L_D10225                    ; $D10232  D0 F1        MX
    LDA #$0040                      ; $D10234  A9 40 00     MX
    JSL L_C30A4E                    ; $D10237  22 4E 0A C3  MX
    JSL L_C204AB                    ; $D1023B  22 AB 04 C2  MX
    RTS                             ; $D1023F  60           MX
L_D10240:
    PEA $2925                       ; $D10240  F4 25 29     MX
    PEA $00D0                       ; $D10243  F4 D0 00     MX
    PEA $0000                       ; $D10246  F4 00 00     MX
    PEA $007F                       ; $D10249  F4 7F 00     MX
    JSL L_C30000                    ; $D1024C  22 00 00 C3  MX
    PLA                             ; $D10250  68           MX
    PLA                             ; $D10251  68           MX
    PLA                             ; $D10252  68           MX
    PLA                             ; $D10253  68           MX
    STZ $09FE                       ; $D10254  9C FE 09     MX
    LDA #$07FD                      ; $D10257  A9 FD 07     MX
    LDX #$09FE                      ; $D1025A  A2 FE 09     MX
    LDY #$0A00                      ; $D1025D  A0 00 0A     MX
    PHB                             ; $D10260  8B           MX
    MVN $7E,$7E                     ; $D10261  54 7E 7E     MX
    PLB                             ; $D10264  AB           MX
    LDA #$0000                      ; $D10265  A9 00 00     MX
    STA $002116                     ; $D10268  8F 16 21 00  MX
    LDX #$0100                      ; $D1026C  A2 00 01     MX
    LDY #$0000                      ; $D1026F  A0 00 00     MX
    JSR L_D1045E                    ; $D10272  20 5E 04     MX
    ASL                             ; $D10275  0A           MX
    ASL                             ; $D10276  0A           MX
    ASL                             ; $D10277  0A           MX
    ASL                             ; $D10278  0A           MX
    ASL                             ; $D10279  0A           MX
    ASL                             ; $D1027A  0A           MX
    LDY #$007F                      ; $D1027B  A0 7F 00     MX
    JSL L_C308A0                    ; $D1027E  22 A0 08 C3  MX
    LDA #$007F                      ; $D10282  A9 7F 00     MX
    LDX #$0000                      ; $D10285  A2 00 00     MX
    LDY #$0100                      ; $D10288  A0 00 01     MX
    JSL L_C302A8                    ; $D1028B  22 A8 02 C3  MX
    LDA #$7C00                      ; $D1028F  A9 00 7C     MX
    JSR L_D10402                    ; $D10292  20 02 04     MX
    JSL L_C20489                    ; $D10295  22 89 04 C2  MX
    LDA #$0029                      ; $D10299  A9 29 00     MX
    JSL L_C2010F                    ; $D1029C  22 0F 01 C2  MX
    LDA #$0080                      ; $D102A0  A9 80 00     MX
    JSL L_C30A55                    ; $D102A3  22 55 0A C3  MX
    PHP                             ; $D102A7  08           MX
    JSL L_C204AB                    ; $D102A8  22 AB 04 C2  MX
    PLP                             ; $D102AC  28           MX
    RTS                             ; $D102AD  60           MX
L_D102AE:
    SEP #$20                        ; $D102AE  E2 20        MX
    LDA #$01                        ; $D102B0  A9 01        mX
    STA $002105                     ; $D102B2  8F 05 21 00  mX
    REP #$20                        ; $D102B6  C2 20        mX
    PEA $4719                       ; $D102B8  F4 19 47     MX
    PEA $00D0                       ; $D102BB  F4 D0 00     MX
    PEA $0000                       ; $D102BE  F4 00 00     MX
    PEA $007F                       ; $D102C1  F4 7F 00     MX
    JSL L_C30000                    ; $D102C4  22 00 00 C3  MX
    PLA                             ; $D102C8  68           MX
    PLA                             ; $D102C9  68           MX
    PLA                             ; $D102CA  68           MX
    PLA                             ; $D102CB  68           MX
    STZ $09FE                       ; $D102CC  9C FE 09     MX
    LDA #$07FD                      ; $D102CF  A9 FD 07     MX
    LDX #$09FE                      ; $D102D2  A2 FE 09     MX
    LDY #$0A00                      ; $D102D5  A0 00 0A     MX
    PHB                             ; $D102D8  8B           MX
    MVN $7E,$7E                     ; $D102D9  54 7E 7E     MX
    PLB                             ; $D102DC  AB           MX
    LDA #$0230                      ; $D102DD  A9 30 02     MX
    STA $09FE                       ; $D102E0  8D FE 09     MX
    LDA #$00FD                      ; $D102E3  A9 FD 00     MX
    LDX #$09FE                      ; $D102E6  A2 FE 09     MX
    LDY #$0A00                      ; $D102E9  A0 00 0A     MX
    PHB                             ; $D102EC  8B           MX
    MVN $7E,$7E                     ; $D102ED  54 7E 7E     MX
    PLB                             ; $D102F0  AB           MX
    LDA #$0000                      ; $D102F1  A9 00 00     MX
    STA $002116                     ; $D102F4  8F 16 21 00  MX
    LDX #$0020                      ; $D102F8  A2 20 00     MX
    LDY #$0100                      ; $D102FB  A0 00 01     MX
    JSR L_D1045E                    ; $D102FE  20 5E 04     MX
    ASL                             ; $D10301  0A           MX
    ASL                             ; $D10302  0A           MX
    ASL                             ; $D10303  0A           MX
    ASL                             ; $D10304  0A           MX
    ASL                             ; $D10305  0A           MX
    LDY #$007F                      ; $D10306  A0 7F 00     MX
    JSL L_C308A0                    ; $D10309  22 A0 08 C3  MX
    LDA #$007F                      ; $D1030D  A9 7F 00     MX
    LDX #$0000                      ; $D10310  A2 00 00     MX
    LDY #$0020                      ; $D10313  A0 20 00     MX
    JSL L_C302A8                    ; $D10316  22 A8 02 C3  MX
    LDA #$7C00                      ; $D1031A  A9 00 7C     MX
    JSR L_D10402                    ; $D1031D  20 02 04     MX
    JSL L_C20489                    ; $D10320  22 89 04 C2  MX
    LDA #$0021                      ; $D10324  A9 21 00     MX
    JSL L_C2010F                    ; $D10327  22 0F 01 C2  MX
    LDA #$0080                      ; $D1032B  A9 80 00     MX
    JSL L_C30A55                    ; $D1032E  22 55 0A C3  MX
    BMI L_D10344                    ; $D10332  30 10        MX
    LDA #$0000                      ; $D10334  A9 00 00     MX
    LDX #$0000                      ; $D10337  A2 00 00     MX
    LDY #$0010                      ; $D1033A  A0 10 00     MX
    JSL L_C20557                    ; $D1033D  22 57 05 C2  MX
    JSR L_D1034B                    ; $D10341  20 4B 03     MX
L_D10344:
    PHP                             ; $D10344  08           MX
    JSL L_C204AB                    ; $D10345  22 AB 04 C2  MX
    PLP                             ; $D10349  28           MX
    RTS                             ; $D1034A  60           MX
L_D1034B:
    SEP #$20                        ; $D1034B  E2 20        MX
    LDA #$90                        ; $D1034D  A9 90        mX
    STA $002131                     ; $D1034F  8F 31 21 00  mX
    LDA #$F0                        ; $D10353  A9 F0        mX
    STA $00420C                     ; $D10355  8F 0C 42 00  mX
    REP #$20                        ; $D10359  C2 20        mX
    LDA #$00D0                      ; $D1035B  A9 D0 00     MX
    STA $28                         ; $D1035E  85 28        MX
    LDA #$E2FA                      ; $D10360  A9 FA E2     MX
    JSR L_D1037F                    ; $D10363  20 7F 03     MX
    BMI L_D1037E                    ; $D10366  30 16        MX
    LDA #$E361                      ; $D10368  A9 61 E3     MX
    JSR L_D1037F                    ; $D1036B  20 7F 03     MX
    BMI L_D1037E                    ; $D1036E  30 0E        MX
    LDA #$E3E0                      ; $D10370  A9 E0 E3     MX
    JSR L_D1037F                    ; $D10373  20 7F 03     MX
    BMI L_D1037E                    ; $D10376  30 06        MX
    LDA #$E43B                      ; $D10378  A9 3B E4     MX
    JSR L_D1037F                    ; $D1037B  20 7F 03     MX
L_D1037E:
    RTS                             ; $D1037E  60           MX
L_D1037F:
    STA $26                         ; $D1037F  85 26        MX
    LDA #$00E0                      ; $D10381  A9 E0 00     MX
L_D10384:
    PHA                             ; $D10384  48           MX
    STA $62                         ; $D10385  85 62        MX
    CMP #$0058                      ; $D10387  C9 58 00     MX
    BNE L_D10395                    ; $D1038A  D0 09        MX
    LDA #$0100                      ; $D1038C  A9 00 01     MX
    JSL L_C30A55                    ; $D1038F  22 55 0A C3  MX
    BMI L_D103C3                    ; $D10393  30 2E        MX
L_D10395:
    JSL L_C30996                    ; $D10395  22 96 09 C3  MX
    LDA #$0058                      ; $D10399  A9 58 00     MX
    STA $5E                         ; $D1039C  85 5E        MX
    LDA #$00A0                      ; $D1039E  A9 A0 00     MX
    JSR L_D10481                    ; $D103A1  20 81 04     MX
L_D103A4:
    LDA $004212                     ; $D103A4  AF 12 42 00  MX
    BIT #$0001                      ; $D103A8  89 01 00     MX
    BEQ L_D103A4                    ; $D103AB  F0 F7        MX
L_D103AD:
    LDA $004212                     ; $D103AD  AF 12 42 00  MX
    BIT #$0001                      ; $D103B1  89 01 00     MX
    BNE L_D103AD                    ; $D103B4  D0 F7        MX
    LDA $004218                     ; $D103B6  AF 18 42 00  MX
    ORA $00421A                     ; $D103BA  0F 1A 42 00  MX
    BIT #$D0C0                      ; $D103BE  89 C0 D0     MX
    BEQ L_D103C7                    ; $D103C1  F0 04        MX
L_D103C3:
    PLA                             ; $D103C3  68           MX
    SEP #$80                        ; $D103C4  E2 80        MX
    RTS                             ; $D103C6  60           MX
L_D103C7:
    JSL L_C0B23D                    ; $D103C7  22 3D B2 C0  MX
    SEP #$20                        ; $D103CB  E2 20        MX
    LDA #$02                        ; $D103CD  A9 02        mX
    STA $00420B                     ; $D103CF  8F 0B 42 00  mX
    LDA #$10                        ; $D103D3  A9 10        mX
    TSB $ED                         ; $D103D5  04 ED        mX
    TSB $EF                         ; $D103D7  04 EF        mX
    REP #$20                        ; $D103D9  C2 20        mX
    PLA                             ; $D103DB  68           MX
    DEC                             ; $D103DC  3A           MX
    BPL L_D10384                    ; $D103DD  10 A5        MX
    CMP #$FFD0                      ; $D103DF  C9 D0 FF     MX
    BCS L_D10384                    ; $D103E2  B0 A0        MX
    REP #$80                        ; $D103E4  C2 80        MX
    RTS                             ; $D103E6  60           MX
L_D103E7:
    JSR L_D10414                    ; $D103E7  20 14 04     MX
    LDA #$007F                      ; $D103EA  A9 7F 00     MX
    LDX #$0000                      ; $D103ED  A2 00 00     MX
    LDY #$0020                      ; $D103F0  A0 20 00     MX
    JSL L_C302A8                    ; $D103F3  22 A8 02 C3  MX
    LDA #$7C00                      ; $D103F7  A9 00 7C     MX
    JSR L_D10402                    ; $D103FA  20 02 04     MX
    JSL L_C20489                    ; $D103FD  22 89 04 C2  MX
    RTS                             ; $D10401  60           MX
L_D10402:
    STA $002116                     ; $D10402  8F 16 21 00  MX
    LDA #$0800                      ; $D10406  A9 00 08     MX
    LDX #$09FE                      ; $D10409  A2 FE 09     MX
    LDY #$007E                      ; $D1040C  A0 7E 00     MX
    JSL L_C308A0                    ; $D1040F  22 A0 08 C3  MX
    RTS                             ; $D10413  60           MX
L_D10414:
    SEP #$20                        ; $D10414  E2 20        MX
    LDA $ED                         ; $D10416  A5 ED        mX
    AND #$EF                        ; $D10418  29 EF        mX
    STA $ED                         ; $D1041A  85 ED        mX
    STA $EF                         ; $D1041C  85 EF        mX
    REP #$20                        ; $D1041E  C2 20        mX
    PHX                             ; $D10420  DA           MX
    PHY                             ; $D10421  5A           MX
    PEA $0000                       ; $D10422  F4 00 00     MX
    PEA $007F                       ; $D10425  F4 7F 00     MX
    JSL L_C30000                    ; $D10428  22 00 00 C3  MX
    PLA                             ; $D1042C  68           MX
    PLA                             ; $D1042D  68           MX
    PLA                             ; $D1042E  68           MX
    PLA                             ; $D1042F  68           MX
    STZ $09FE                       ; $D10430  9C FE 09     MX
    LDA #$07FD                      ; $D10433  A9 FD 07     MX
    LDX #$09FE                      ; $D10436  A2 FE 09     MX
    LDY #$0A00                      ; $D10439  A0 00 0A     MX
    PHB                             ; $D1043C  8B           MX
    MVN $7E,$7E                     ; $D1043D  54 7E 7E     MX
    PLB                             ; $D10440  AB           MX
    LDA #$0000                      ; $D10441  A9 00 00     MX
    STA $002116                     ; $D10444  8F 16 21 00  MX
    LDX #$0020                      ; $D10448  A2 20 00     MX
    LDY #$0000                      ; $D1044B  A0 00 00     MX
    JSR L_D1045E                    ; $D1044E  20 5E 04     MX
    ASL                             ; $D10451  0A           MX
    ASL                             ; $D10452  0A           MX
    ASL                             ; $D10453  0A           MX
    ASL                             ; $D10454  0A           MX
    ASL                             ; $D10455  0A           MX
    LDY #$007F                      ; $D10456  A0 7F 00     MX
    JSL L_C308A0                    ; $D10459  22 A0 08 C3  MX
    RTS                             ; $D1045D  60           MX
L_D1045E:
    LDA $7F0000,X                   ; $D1045E  BF 00 00 7F  MX
    ASL                             ; $D10462  0A           MX
    ASL                             ; $D10463  0A           MX
    ASL                             ; $D10464  0A           MX
    ASL                             ; $D10465  0A           MX
    ASL                             ; $D10466  0A           MX
    PHA                             ; $D10467  48           MX
    INX                             ; $D10468  E8           MX
    INX                             ; $D10469  E8           MX
    INX                             ; $D1046A  E8           MX
    INX                             ; $D1046B  E8           MX
L_D1046C:
    PHA                             ; $D1046C  48           MX
    LDA $7F0000,X                   ; $D1046D  BF 00 00 7F  MX
    ORA $09FE,Y                     ; $D10471  19 FE 09     MX
    STA $09FE,Y                     ; $D10474  99 FE 09     MX
    INX                             ; $D10477  E8           MX
    INX                             ; $D10478  E8           MX
    INY                             ; $D10479  C8           MX
    INY                             ; $D1047A  C8           MX
    PLA                             ; $D1047B  68           MX
    DEC                             ; $D1047C  3A           MX
    BNE L_D1046C                    ; $D1047D  D0 ED        MX
    PLA                             ; $D1047F  68           MX
    RTS                             ; $D10480  60           MX
L_D10481:
    STA $64                         ; $D10481  85 64        MX
    PHX                             ; $D10483  DA           MX
    PHY                             ; $D10484  5A           MX
    LDA $5E                         ; $D10485  A5 5E        MX
    STA $60                         ; $D10487  85 60        MX
    LDY #$0000                      ; $D10489  A0 00 00     MX
L_D1048C:
    JSR L_D104B6                    ; $D1048C  20 B6 04     MX
    JSR L_D10516                    ; $D1048F  20 16 05     MX
L_D10492:
    LDA [$26],Y                     ; $D10492  B7 26        MX
    AND #$00FF                      ; $D10494  29 FF 00     MX
    BEQ L_D104B3                    ; $D10497  F0 1A        MX
    BIT #$0080                      ; $D10499  89 80 00     MX
    BEQ L_D104A9                    ; $D1049C  F0 0B        MX
    LDA $62                         ; $D1049E  A5 62        MX
    CLC                             ; $D104A0  18           MX
    ADC #$0009                      ; $D104A1  69 09 00     MX
    STA $62                         ; $D104A4  85 62        MX
    INY                             ; $D104A6  C8           MX
    BRA L_D10492                    ; $D104A7  80 E9        MX
L_D104A9:
    LDA $62                         ; $D104A9  A5 62        MX
    CLC                             ; $D104AB  18           MX
    ADC #$0009                      ; $D104AC  69 09 00     MX
    STA $62                         ; $D104AF  85 62        MX
    BRA L_D1048C                    ; $D104B1  80 D9        MX
L_D104B3:
    PLY                             ; $D104B3  7A           MX
    PLX                             ; $D104B4  FA           MX
    RTS                             ; $D104B5  60           MX
L_D104B6:
    LDA #$0200                      ; $D104B6  A9 00 02     MX
    STA $2A                         ; $D104B9  85 2A        MX
    LDA $64                         ; $D104BB  A5 64        MX
    STA $48                         ; $D104BD  85 48        MX
    SEP #$30                        ; $D104BF  E2 30        MX
L_D104C1:
    LDA [$26],Y                     ; $D104C1  B7 26        mx
    BEQ L_D10507                    ; $D104C3  F0 42        mx
    BMI L_D10507                    ; $D104C5  30 40        mx
    SEC                             ; $D104C7  38           mx
    SBC #$61                        ; $D104C8  E9 61        mx
    BMI L_D104D3                    ; $D104CA  30 07        mx
    CMP #$1A                        ; $D104CC  C9 1A        mx
    BCS L_D104D3                    ; $D104CE  B0 03        mx
    TAX                             ; $D104D0  AA           mx
    BRA L_D104D8                    ; $D104D1  80 05        mx
L_D104D3:
    LDA [$26],Y                     ; $D104D3  B7 26        mx
    JSR L_D1050A                    ; $D104D5  20 0A 05     mx
L_D104D8:
    LDA $48                         ; $D104D8  A5 48        mx
    SEC                             ; $D104DA  38           mx
    SBC $D00C4E,X                   ; $D104DB  FF 4E 0C D0  mx
    BCC L_D104EB                    ; $D104DF  90 0A        mx
    STA $48                         ; $D104E1  85 48        mx
    TXA                             ; $D104E3  8A           mx
    STA ($2A)                       ; $D104E4  92 2A        mx
    INC $2A                         ; $D104E6  E6 2A        mx
    INY                             ; $D104E8  C8           mx
    BRA L_D104C1                    ; $D104E9  80 D6        mx
L_D104EB:
    LDA [$26],Y                     ; $D104EB  B7 26        mx
    CMP #$20                        ; $D104ED  C9 20        mx
    BEQ L_D10506                    ; $D104EF  F0 15        mx
L_D104F1:
    DEY                             ; $D104F1  88           mx
    DEC $2A                         ; $D104F2  C6 2A        mx
    LDA ($2A)                       ; $D104F4  B2 2A        mx
    TAX                             ; $D104F6  AA           mx
    LDA $48                         ; $D104F7  A5 48        mx
    CLC                             ; $D104F9  18           mx
    ADC $D00C4E,X                   ; $D104FA  7F 4E 0C D0  mx
    STA $48                         ; $D104FE  85 48        mx
    LDA [$26],Y                     ; $D10500  B7 26        mx
    CMP #$20                        ; $D10502  C9 20        mx
    BNE L_D104F1                    ; $D10504  D0 EB        mx
L_D10506:
    INY                             ; $D10506  C8           mx
L_D10507:
    REP #$30                        ; $D10507  C2 30        mx
    RTS                             ; $D10509  60           MX
L_D1050A:
    LDX #$1A                        ; $D1050A  A2 1A        mx
L_D1050C:
    CMP $D00C27,X                   ; $D1050C  DF 27 0C D0  mx
    BEQ L_D10515                    ; $D10510  F0 03        mx
    INX                             ; $D10512  E8           mx
    BRA L_D1050C                    ; $D10513  80 F7        mx
L_D10515:
    RTS                             ; $D10515  60           mx
L_D10516:
    LDA $62                         ; $D10516  A5 62        MX
    BPL L_D1051F                    ; $D10518  10 05        MX
    CMP #$FFF7                      ; $D1051A  C9 F7 FF     MX
    BCS L_D10524                    ; $D1051D  B0 05        MX
L_D1051F:
    CMP #$00E0                      ; $D1051F  C9 E0 00     MX
    BCS L_D1055A                    ; $D10522  B0 36        MX
L_D10524:
    PHY                             ; $D10524  5A           MX
    LDA $48                         ; $D10525  A5 48        MX
    LSR                             ; $D10527  4A           MX
    CLC                             ; $D10528  18           MX
    ADC $60                         ; $D10529  65 60        MX
    STA $5E                         ; $D1052B  85 5E        MX
    LDA $2A                         ; $D1052D  A5 2A        MX
    SEC                             ; $D1052F  38           MX
    SBC #$0200                      ; $D10530  E9 00 02     MX
    STA $48                         ; $D10533  85 48        MX
    LDY #$0000                      ; $D10535  A0 00 00     MX
L_D10538:
    LDA $0200,Y                     ; $D10538  B9 00 02     MX
    AND #$00FF                      ; $D1053B  29 FF 00     MX
    TAX                             ; $D1053E  AA           MX
    CMP #$0026                      ; $D1053F  C9 26 00     MX
    BCS L_D10548                    ; $D10542  B0 04        MX
    JSL L_C0BBE3                    ; $D10544  22 E3 BB C0  MX
L_D10548:
    LDA $D00C4E,X                   ; $D10548  BF 4E 0C D0  MX
    AND #$00FF                      ; $D1054C  29 FF 00     MX
    CLC                             ; $D1054F  18           MX
    ADC $5E                         ; $D10550  65 5E        MX
    STA $5E                         ; $D10552  85 5E        MX
    INY                             ; $D10554  C8           MX
    CPY $48                         ; $D10555  C4 48        MX
    BCC L_D10538                    ; $D10557  90 DF        MX
    PLY                             ; $D10559  7A           MX
L_D1055A:
    RTS                             ; $D1055A  60           MX
L_D1055B:
    PHA                             ; $D1055B  48           MX
    JSR L_D10A7F                    ; $D1055C  20 7F 0A     MX
    JSR L_D105E6                    ; $D1055F  20 E6 05     MX
    JSR L_D1063E                    ; $D10562  20 3E 06     MX
    PLA                             ; $D10565  68           MX
    BEQ L_D105A1                    ; $D10566  F0 39        MX
    LDA #$007F                      ; $D10568  A9 7F 00     MX
    LDX #$0000                      ; $D1056B  A2 00 00     MX
    LDY #$00C0                      ; $D1056E  A0 C0 00     MX
    JSL L_C302A8                    ; $D10571  22 A8 02 C3  MX
    LDA $0E                         ; $D10575  A5 0E        MX
    AND #$00FF                      ; $D10577  29 FF 00     MX
    CMP #$0018                      ; $D1057A  C9 18 00     MX
    BEQ L_D10586                    ; $D1057D  F0 07        MX
    LDA #$0018                      ; $D1057F  A9 18 00     MX
    JSL L_C2010F                    ; $D10582  22 0F 01 C2  MX
L_D10586:
    JSL L_C20489                    ; $D10586  22 89 04 C2  MX
    LDA #$0002                      ; $D1058A  A9 02 00     MX
    TSB $ED                         ; $D1058D  04 ED        MX
    JSL L_C20466                    ; $D1058F  22 66 04 C2  MX
    LDA #$0000                      ; $D10593  A9 00 00     MX
    LDX #$0000                      ; $D10596  A2 00 00     MX
    LDY #$0060                      ; $D10599  A0 60 00     MX
    JSL L_C20557                    ; $D1059C  22 57 05 C2  MX
    RTS                             ; $D105A0  60           MX
L_D105A1:
    JSR L_D106D5                    ; $D105A1  20 D5 06     MX
    JSR L_D105CC                    ; $D105A4  20 CC 05     MX
    JSL L_C20100                    ; $D105A7  22 00 01 C2  MX
    LDA #$0000                      ; $D105AB  A9 00 00     MX
    LDX #$0000                      ; $D105AE  A2 00 00     MX
    LDY #$0060                      ; $D105B1  A0 60 00     MX
    JSL L_C20557                    ; $D105B4  22 57 05 C2  MX
    LDX #$0014                      ; $D105B8  A2 14 00     MX
L_D105BB:
    LDA $66                         ; $D105BB  A5 66        MX
L_D105BD:
    CMP $66                         ; $D105BD  C5 66        MX
    BEQ L_D105BD                    ; $D105BF  F0 FC        MX
    DEX                             ; $D105C1  CA           MX
    BNE L_D105BB                    ; $D105C2  D0 F7        MX
    LDA #$0018                      ; $D105C4  A9 18 00     MX
    JSL L_C2010F                    ; $D105C7  22 0F 01 C2  MX
    RTS                             ; $D105CB  60           MX
L_D105CC:
    LDA #$0004                      ; $D105CC  A9 04 00     MX
    STA $E0                         ; $D105CF  85 E0        MX
    LDA #$0078                      ; $D105D1  A9 78 00     MX
    STA $E2                         ; $D105D4  85 E2        MX
    LDA #$0002                      ; $D105D6  A9 02 00     MX
    TSB $ED                         ; $D105D9  04 ED        MX
L_D105DB:
    LDA $66                         ; $D105DB  A5 66        MX
L_D105DD:
    CMP $66                         ; $D105DD  C5 66        MX
    BEQ L_D105DD                    ; $D105DF  F0 FC        MX
    DEC $E2                         ; $D105E1  C6 E2        MX
    BNE L_D105DB                    ; $D105E3  D0 F6        MX
    RTS                             ; $D105E5  60           MX
L_D105E6:
    PEA $8700                       ; $D105E6  F4 00 87     MX
    PEA $00D0                       ; $D105E9  F4 D0 00     MX
    PEA $0000                       ; $D105EC  F4 00 00     MX
    PEA $007F                       ; $D105EF  F4 7F 00     MX
    JSL L_C30000                    ; $D105F2  22 00 00 C3  MX
    PLA                             ; $D105F6  68           MX
    PLA                             ; $D105F7  68           MX
    PLA                             ; $D105F8  68           MX
    PLA                             ; $D105F9  68           MX
    LDA #$3800                      ; $D105FA  A9 00 38     MX
    STA $09FE                       ; $D105FD  8D FE 09     MX
    LDA #$07FD                      ; $D10600  A9 FD 07     MX
    LDX #$09FE                      ; $D10603  A2 FE 09     MX
    LDY #$0A00                      ; $D10606  A0 00 0A     MX
    PHB                             ; $D10609  8B           MX
    MVN $7E,$7E                     ; $D1060A  54 7E 7E     MX
    PLB                             ; $D1060D  AB           MX
    LDA #$6000                      ; $D1060E  A9 00 60     MX
    STA $002116                     ; $D10611  8F 16 21 00  MX
    LDX #$0020                      ; $D10615  A2 20 00     MX
    LDY #$0208                      ; $D10618  A0 08 02     MX
    JSR L_D1045E                    ; $D1061B  20 5E 04     MX
    ASL                             ; $D1061E  0A           MX
    ASL                             ; $D1061F  0A           MX
    ASL                             ; $D10620  0A           MX
    ASL                             ; $D10621  0A           MX
    ASL                             ; $D10622  0A           MX
    LDY #$007F                      ; $D10623  A0 7F 00     MX
    JSL L_C308A0                    ; $D10626  22 A0 08 C3  MX
    LDA #$607F                      ; $D1062A  A9 7F 60     MX
    LDX #$0000                      ; $D1062D  A2 00 00     MX
    LDY #$0020                      ; $D10630  A0 20 00     MX
    JSL L_C302A8                    ; $D10633  22 A8 02 C3  MX
    LDA #$7800                      ; $D10637  A9 00 78     MX
    JSR L_D10402                    ; $D1063A  20 02 04     MX
    RTS                             ; $D1063D  60           MX
L_D1063E:
    STZ $09FE                       ; $D1063E  9C FE 09     MX
    LDA #$07FD                      ; $D10641  A9 FD 07     MX
    LDX #$09FE                      ; $D10644  A2 FE 09     MX
    LDY #$0A00                      ; $D10647  A0 00 0A     MX
    PHB                             ; $D1064A  8B           MX
    MVN $7E,$7E                     ; $D1064B  54 7E 7E     MX
    PLB                             ; $D1064E  AB           MX
    PEA $8FBD                       ; $D1064F  F4 BD 8F     MX
    PEA $00D0                       ; $D10652  F4 D0 00     MX
    PEA $0000                       ; $D10655  F4 00 00     MX
    PEA $007F                       ; $D10658  F4 7F 00     MX
    JSL L_C30000                    ; $D1065B  22 00 00 C3  MX
    PLA                             ; $D1065F  68           MX
    PLA                             ; $D10660  68           MX
    PLA                             ; $D10661  68           MX
    PLA                             ; $D10662  68           MX
    LDA $7F0200                     ; $D10663  AF 00 02 7F  MX
    ASL                             ; $D10667  0A           MX
    ASL                             ; $D10668  0A           MX
    ASL                             ; $D10669  0A           MX
    SEC                             ; $D1066A  38           MX
    SBC #$0080                      ; $D1066B  E9 80 00     MX
    SEP #$20                        ; $D1066E  E2 20        MX
    STA $E7                         ; $D10670  85 E7        mX
    REP #$20                        ; $D10672  C2 20        mX
    LDA #$0000                      ; $D10674  A9 00 00     MX
    STA $002116                     ; $D10677  8F 16 21 00  MX
    LDX #$0200                      ; $D1067B  A2 00 02     MX
    LDY #$0000                      ; $D1067E  A0 00 00     MX
    JSR L_D1045E                    ; $D10681  20 5E 04     MX
    PHY                             ; $D10684  5A           MX
    ASL                             ; $D10685  0A           MX
    ASL                             ; $D10686  0A           MX
    ASL                             ; $D10687  0A           MX
    ASL                             ; $D10688  0A           MX
    ASL                             ; $D10689  0A           MX
    ASL                             ; $D1068A  0A           MX
    LDY #$007F                      ; $D1068B  A0 7F 00     MX
    JSL L_C308A0                    ; $D1068E  22 A0 08 C3  MX
    PEA $D286                       ; $D10692  F4 86 D2     MX
    PEA $00D0                       ; $D10695  F4 D0 00     MX
    PEA $0000                       ; $D10698  F4 00 00     MX
    PEA $007F                       ; $D1069B  F4 7F 00     MX
    JSL L_C30000                    ; $D1069E  22 00 00 C3  MX
    PLA                             ; $D106A2  68           MX
    PLA                             ; $D106A3  68           MX
    PLA                             ; $D106A4  68           MX
    PLA                             ; $D106A5  68           MX
    LDA $7F0200                     ; $D106A6  AF 00 02 7F  MX
    ASL                             ; $D106AA  0A           MX
    ASL                             ; $D106AB  0A           MX
    ASL                             ; $D106AC  0A           MX
    SEP #$20                        ; $D106AD  E2 20        MX
    STA $E9                         ; $D106AF  85 E9        mX
    REP #$20                        ; $D106B1  C2 20        mX
    LDA #$4000                      ; $D106B3  A9 00 40     MX
    STA $002116                     ; $D106B6  8F 16 21 00  MX
    LDX #$0200                      ; $D106BA  A2 00 02     MX
    PLY                             ; $D106BD  7A           MX
    JSR L_D1045E                    ; $D106BE  20 5E 04     MX
    ASL                             ; $D106C1  0A           MX
    ASL                             ; $D106C2  0A           MX
    ASL                             ; $D106C3  0A           MX
    ASL                             ; $D106C4  0A           MX
    ASL                             ; $D106C5  0A           MX
    ASL                             ; $D106C6  0A           MX
    LDY #$007F                      ; $D106C7  A0 7F 00     MX
    JSL L_C308A0                    ; $D106CA  22 A0 08 C3  MX
    LDA #$7C00                      ; $D106CE  A9 00 7C     MX
    JSR L_D10402                    ; $D106D1  20 02 04     MX
    RTS                             ; $D106D4  60           MX
L_D106D5:
    LDA #$0000                      ; $D106D5  A9 00 00     MX
    STA $7F0100                     ; $D106D8  8F 00 01 7F  MX
    LDA #$00FD                      ; $D106DC  A9 FD 00     MX
    LDX #$0100                      ; $D106DF  A2 00 01     MX
    LDY #$0102                      ; $D106E2  A0 02 01     MX
    PHB                             ; $D106E5  8B           MX
    MVN $7F,$7F                     ; $D106E6  54 7F 7F     MX
    PLB                             ; $D106E9  AB           MX
    LDA #$007F                      ; $D106EA  A9 7F 00     MX
    LDX #$0100                      ; $D106ED  A2 00 01     MX
    LDY #$00C0                      ; $D106F0  A0 C0 00     MX
    JSL L_C302A8                    ; $D106F3  22 A8 02 C3  MX
    LDA $66                         ; $D106F7  A5 66        MX
L_D106F9:
    CMP $66                         ; $D106F9  C5 66        MX
    BEQ L_D106F9                    ; $D106FB  F0 FC        MX
    SEP #$20                        ; $D106FD  E2 20        MX
    LDA $66                         ; $D106FF  A5 66        mX
L_D10701:
    CMP $66                         ; $D10701  C5 66        mX
    BEQ L_D10701                    ; $D10703  F0 FC        mX
    LDA $DE                         ; $D10705  A5 DE        mX
    STA $00420C                     ; $D10707  8F 0C 42 00  mX
    LDA #$0F                        ; $D1070B  A9 0F        mX
    STA $002100                     ; $D1070D  8F 00 21 00  mX
    REP #$20                        ; $D10711  C2 20        mX
    LDY #$0010                      ; $D10713  A0 10 00     MX
    LDX #$0020                      ; $D10716  A2 20 00     MX
    JSL L_C2059E                    ; $D10719  22 9E 05 C2  MX
    LDA #$0020                      ; $D1071D  A9 20 00     MX
    JSL L_C30A4E                    ; $D10720  22 4E 0A C3  MX
    LDX #$00A0                      ; $D10724  A2 A0 00     MX
    JSL L_C2059E                    ; $D10727  22 9E 05 C2  MX
    LDA #$0020                      ; $D1072B  A9 20 00     MX
    JSL L_C30A4E                    ; $D1072E  22 4E 0A C3  MX
    LDX #$0080                      ; $D10732  A2 80 00     MX
    JSL L_C2059E                    ; $D10735  22 9E 05 C2  MX
    LDA #$0020                      ; $D10739  A9 20 00     MX
    JSL L_C30A4E                    ; $D1073C  22 4E 0A C3  MX
    LDX #$0000                      ; $D10740  A2 00 00     MX
    JSL L_C2059E                    ; $D10743  22 9E 05 C2  MX
    LDA #$0020                      ; $D10747  A9 20 00     MX
    JSL L_C30A4E                    ; $D1074A  22 4E 0A C3  MX
    LDX #$0040                      ; $D1074E  A2 40 00     MX
    JSL L_C2059E                    ; $D10751  22 9E 05 C2  MX
    LDA #$0020                      ; $D10755  A9 20 00     MX
    JSL L_C30A4E                    ; $D10758  22 4E 0A C3  MX
    LDX #$0060                      ; $D1075C  A2 60 00     MX
    LDY #$0010                      ; $D1075F  A0 10 00     MX
    JSL L_C2059E                    ; $D10762  22 9E 05 C2  MX
    LDA #$0020                      ; $D10766  A9 20 00     MX
    JSL L_C30A4E                    ; $D10769  22 4E 0A C3  MX
    RTS                             ; $D1076D  60           MX
L_D1076E:
    JSL L_C30996                    ; $D1076E  22 96 09 C3  MX
    JSL L_C309DF                    ; $D10772  22 DF 09 C3  MX
    STZ $1B26                       ; $D10776  9C 26 1B     MX
    LDA #$4000                      ; $D10779  A9 00 40     MX
    STA $1B24                       ; $D1077C  8D 24 1B     MX
    LDA #$E469                      ; $D1077F  A9 69 E4     MX
    STA $3E                         ; $D10782  85 3E        MX
    LDA #$00D0                      ; $D10784  A9 D0 00     MX
    STA $40                         ; $D10787  85 40        MX
    LDA #$0001                      ; $D10789  A9 01 00     MX
    STA $5E                         ; $D1078C  85 5E        MX
    LDA #$0088                      ; $D1078E  A9 88 00     MX
    STA $62                         ; $D10791  85 62        MX
    LDA #$00FF                      ; $D10793  A9 FF 00     MX
    JSR L_D10998                    ; $D10796  20 98 09     MX
    LDA $5E                         ; $D10799  A5 5E        MX
    STA $045A                       ; $D1079B  8D 5A 04     MX
    LDA $62                         ; $D1079E  A5 62        MX
    STA $045C                       ; $D107A0  8D 5C 04     MX
    LDA #$E47A                      ; $D107A3  A9 7A E4     MX
    STA $3E                         ; $D107A6  85 3E        MX
    LDA #$00D0                      ; $D107A8  A9 D0 00     MX
    STA $40                         ; $D107AB  85 40        MX
    LDA #$0001                      ; $D107AD  A9 01 00     MX
    STA $5E                         ; $D107B0  85 5E        MX
    LDA #$00A8                      ; $D107B2  A9 A8 00     MX
    STA $62                         ; $D107B5  85 62        MX
    LDA #$00FF                      ; $D107B7  A9 FF 00     MX
    JSR L_D10998                    ; $D107BA  20 98 09     MX
    LDA $5E                         ; $D107BD  A5 5E        MX
    STA $045E                       ; $D107BF  8D 5E 04     MX
    LDA $62                         ; $D107C2  A5 62        MX
    STA $0460                       ; $D107C4  8D 60 04     MX
    LDA $18FE                       ; $D107C7  AD FE 18     MX
    STA $0458                       ; $D107CA  8D 58 04     MX
    LDA #$0000                      ; $D107CD  A9 00 00     MX
    JSR L_D108A7                    ; $D107D0  20 A7 08     MX
    LDA $66                         ; $D107D3  A5 66        MX
L_D107D5:
    CMP $66                         ; $D107D5  C5 66        MX
    BEQ L_D107D5                    ; $D107D7  F0 FC        MX
    JSL L_C0B1AF                    ; $D107D9  22 AF B1 C0  MX
    SEP #$20                        ; $D107DD  E2 20        MX
    LDA #$02                        ; $D107DF  A9 02        mX
    STA $00420B                     ; $D107E1  8F 0B 42 00  mX
    LDA $ED                         ; $D107E5  A5 ED        mX
    ORA #$10                        ; $D107E7  09 10        mX
    STA $ED                         ; $D107E9  85 ED        mX
    STA $EF                         ; $D107EB  85 EF        mX
    REP #$20                        ; $D107ED  C2 20        mX
    LDA #$0010                      ; $D107EF  A9 10 00     MX
    JSL L_C20466                    ; $D107F2  22 66 04 C2  MX
    LDX #$0000                      ; $D107F6  A2 00 00     MX
L_D107F9:
    LDA #$0001                      ; $D107F9  A9 01 00     MX
    STA $0829                       ; $D107FC  8D 29 08     MX
    LDA #$0002                      ; $D107FF  A9 02 00     MX
    JSR list_menu                   ; $D10802  20 DB 08     MX
    LDA $D4                         ; $D10805  A5 D4        MX
    BNE L_D107F9                    ; $D10807  D0 F0        MX
    JSL L_C2002A                    ; $D10809  22 2A 00 C2  MX
    LDA #$0010                      ; $D1080D  A9 10 00     MX
    JSL L_C20445                    ; $D10810  22 45 04 C2  MX
    RTS                             ; $D10814  60           MX
L_D10815:
    JSL L_C30996                    ; $D10815  22 96 09 C3  MX
    JSL L_C309DF                    ; $D10819  22 DF 09 C3  MX
    STZ $1B26                       ; $D1081D  9C 26 1B     MX
    LDA #$E48E                      ; $D10820  A9 8E E4     MX
    STA $3E                         ; $D10823  85 3E        MX
    LDA #$00D0                      ; $D10825  A9 D0 00     MX
    STA $40                         ; $D10828  85 40        MX
    LDA #$0001                      ; $D1082A  A9 01 00     MX
    STA $5E                         ; $D1082D  85 5E        MX
    LDA #$0088                      ; $D1082F  A9 88 00     MX
    STA $62                         ; $D10832  85 62        MX
    LDA #$00FF                      ; $D10834  A9 FF 00     MX
    JSR L_D10998                    ; $D10837  20 98 09     MX
    LDA $5E                         ; $D1083A  A5 5E        MX
    STA $045A                       ; $D1083C  8D 5A 04     MX
    LDA $62                         ; $D1083F  A5 62        MX
    STA $045C                       ; $D10841  8D 5C 04     MX
    LDA #$E49D                      ; $D10844  A9 9D E4     MX
    STA $3E                         ; $D10847  85 3E        MX
    LDA #$00D0                      ; $D10849  A9 D0 00     MX
    STA $40                         ; $D1084C  85 40        MX
    LDA #$0001                      ; $D1084E  A9 01 00     MX
    STA $5E                         ; $D10851  85 5E        MX
    LDA #$00A8                      ; $D10853  A9 A8 00     MX
    STA $62                         ; $D10856  85 62        MX
    LDA #$00FF                      ; $D10858  A9 FF 00     MX
    JSR L_D10998                    ; $D1085B  20 98 09     MX
    LDA $5E                         ; $D1085E  A5 5E        MX
    STA $045E                       ; $D10860  8D 5E 04     MX
    LDA $62                         ; $D10863  A5 62        MX
    STA $0460                       ; $D10865  8D 60 04     MX
    LDA $18FE                       ; $D10868  AD FE 18     MX
    STA $0458                       ; $D1086B  8D 58 04     MX
    LDA #$0000                      ; $D1086E  A9 00 00     MX
    JSR L_D108A7                    ; $D10871  20 A7 08     MX
    LDA $66                         ; $D10874  A5 66        MX
L_D10876:
    CMP $66                         ; $D10876  C5 66        MX
    BEQ L_D10876                    ; $D10878  F0 FC        MX
    JSL L_C0B1AF                    ; $D1087A  22 AF B1 C0  MX
    SEP #$20                        ; $D1087E  E2 20        MX
    LDA #$02                        ; $D10880  A9 02        mX
    STA $00420B                     ; $D10882  8F 0B 42 00  mX
    REP #$20                        ; $D10886  C2 20        mX
    LDA #$0010                      ; $D10888  A9 10 00     MX
    JSL L_C20466                    ; $D1088B  22 66 04 C2  MX
    LDX #$0000                      ; $D1088F  A2 00 00     MX
    STZ $0829                       ; $D10892  9C 29 08     MX
    LDA #$0002                      ; $D10895  A9 02 00     MX
    JSR list_menu                   ; $D10898  20 DB 08     MX
    JSL L_C2002A                    ; $D1089B  22 2A 00 C2  MX
    LDA #$0010                      ; $D1089F  A9 10 00     MX
    JSL L_C20445                    ; $D108A2  22 45 04 C2  MX
    RTS                             ; $D108A6  60           MX
L_D108A7:
    STZ $66                         ; $D108A7  64 66        MX
    PHA                             ; $D108A9  48           MX
    PHX                             ; $D108AA  DA           MX
    PHY                             ; $D108AB  5A           MX
    LDA $0458                       ; $D108AC  AD 58 04     MX
    STA $18FE                       ; $D108AF  8D FE 18     MX
    LDA $05,S                       ; $D108B2  A3 05        MX
    ASL                             ; $D108B4  0A           MX
    ASL                             ; $D108B5  0A           MX
    TAX                             ; $D108B6  AA           MX
    LDA $045A,X                     ; $D108B7  BD 5A 04     MX
    STA $5E                         ; $D108BA  85 5E        MX
    LDA $045C,X                     ; $D108BC  BD 5C 04     MX
    STA $62                         ; $D108BF  85 62        MX
    LDA #$002C                      ; $D108C1  A9 2C 00     MX
    JSL L_C0BC42                    ; $D108C4  22 42 BC C0  MX
    LDA #$00EC                      ; $D108C8  A9 EC 00     MX
    SEC                             ; $D108CB  38           MX
    SBC $5E                         ; $D108CC  E5 5E        MX
    STA $5E                         ; $D108CE  85 5E        MX
    LDA #$002B                      ; $D108D0  A9 2B 00     MX
    JSL L_C0BC42                    ; $D108D3  22 42 BC C0  MX
    PLY                             ; $D108D7  7A           MX
    PLX                             ; $D108D8  FA           MX
    PLA                             ; $D108D9  68           MX
    RTS                             ; $D108DA  60           MX
list_menu:
    PHA                             ; $D108DB  48           MX
L_D108DC:
    LDA $004212                     ; $D108DC  AF 12 42 00  MX
    BIT #$0001                      ; $D108E0  89 01 00     MX
    BEQ L_D108DC                    ; $D108E3  F0 F7        MX
L_D108E5:
    LDA $004212                     ; $D108E5  AF 12 42 00  MX
    BIT #$0001                      ; $D108E9  89 01 00     MX
    BNE L_D108E5                    ; $D108EC  D0 F7        MX
    LDA $004218                     ; $D108EE  AF 18 42 00  MX
    BNE L_D108DC                    ; $D108F2  D0 E8        MX
    STZ $D4                         ; $D108F4  64 D4        MX
L_D108F6:
    LDA $0829                       ; $D108F6  AD 29 08     MX
    BEQ L_D1091A                    ; $D108F9  F0 1F        MX
    LDA $66                         ; $D108FB  A5 66        MX
    CMP #$0800                      ; $D108FD  C9 00 08     MX
    BCC L_D1091A                    ; $D10900  90 18        MX
    JSL L_C3054F                    ; $D10902  22 4F 05 C3  MX
    INC $0885                       ; $D10906  EE 85 08     MX
    LDA $D4                         ; $D10909  A5 D4        MX
    BEQ L_D10916                    ; $D1090B  F0 09        MX
    LDX $B2                         ; $D1090D  A6 B2        MX
    TXS                             ; $D1090F  9A           MX
    LDA #$0001                      ; $D10910  A9 01 00     MX
    JMP L_D1002D                    ; $D10913  4C 2D 00     MX
L_D10916:
    JML L_C041DD                    ; $D10916  5C DD 41 C0  MX
L_D1091A:
    LDA $004212                     ; $D1091A  AF 12 42 00  MX
    BIT #$0001                      ; $D1091E  89 01 00     MX
    BEQ L_D1091A                    ; $D10921  F0 F7        MX
L_D10923:
    LDA $004212                     ; $D10923  AF 12 42 00  MX
    BIT #$0001                      ; $D10927  89 01 00     MX
    BNE L_D10923                    ; $D1092A  D0 F7        MX
    LDA $004218                     ; $D1092C  AF 18 42 00  MX
    BIT #$D000                      ; $D10930  89 00 D0     MX
    BNE L_D10996                    ; $D10933  D0 61        MX
    BIT #$00C0                      ; $D10935  89 C0 00     MX
    BEQ L_D1093E                    ; $D10938  F0 04        MX
    STA $D4                         ; $D1093A  85 D4        MX
    BRA L_D10996                    ; $D1093C  80 58        MX
L_D1093E:
    BIT #$0800                      ; $D1093E  89 00 08     MX
    BNE L_D10953                    ; $D10941  D0 10        MX
    BIT #$2400                      ; $D10943  89 00 24     MX
    BEQ L_D108F6                    ; $D10946  F0 AE        MX
    INX                             ; $D10948  E8           MX
    TXA                             ; $D10949  8A           MX
    CMP $01,S                       ; $D1094A  C3 01        MX
    BCC L_D1095C                    ; $D1094C  90 0E        MX
    LDA #$0000                      ; $D1094E  A9 00 00     MX
    BRA L_D1095C                    ; $D10951  80 09        MX
L_D10953:
    DEX                             ; $D10953  CA           MX
    TXA                             ; $D10954  8A           MX
    BPL L_D1095C                    ; $D10955  10 05        MX
    LDA $01,S                       ; $D10957  A3 01        MX
    DEC                             ; $D10959  3A           MX
    BRA L_D1095C                    ; $D1095A  80 00        MX
L_D1095C:
    TAX                             ; $D1095C  AA           MX
    JSR L_D108A7                    ; $D1095D  20 A7 08     MX
    JSL L_C2003F                    ; $D10960  22 3F 00 C2  MX
    LDA $66                         ; $D10964  A5 66        MX
L_D10966:
    CMP $66                         ; $D10966  C5 66        MX
    BEQ L_D10966                    ; $D10968  F0 FC        MX
    JSL L_C0B1AF                    ; $D1096A  22 AF B1 C0  MX
    SEP #$20                        ; $D1096E  E2 20        MX
    LDA #$02                        ; $D10970  A9 02        mX
    STA $00420B                     ; $D10972  8F 0B 42 00  mX
    REP #$20                        ; $D10976  C2 20        mX
L_D10978:
    LDA $004212                     ; $D10978  AF 12 42 00  MX
    BIT #$0001                      ; $D1097C  89 01 00     MX
    BEQ L_D10978                    ; $D1097F  F0 F7        MX
L_D10981:
    LDA $004212                     ; $D10981  AF 12 42 00  MX
    BIT #$0001                      ; $D10985  89 01 00     MX
    BNE L_D10981                    ; $D10988  D0 F7        MX
    LDA $004218                     ; $D1098A  AF 18 42 00  MX
    BIT #$2C00                      ; $D1098E  89 00 2C     MX
    BNE L_D10978                    ; $D10991  D0 E5        MX
    JMP L_D108F6                    ; $D10993  4C F6 08     MX
L_D10996:
    PLA                             ; $D10996  68           MX
    RTS                             ; $D10997  60           MX
L_D10998:
    STA $64                         ; $D10998  85 64        MX
    PHX                             ; $D1099A  DA           MX
    PHY                             ; $D1099B  5A           MX
    LDA $5E                         ; $D1099C  A5 5E        MX
    STA $60                         ; $D1099E  85 60        MX
    LDY #$0000                      ; $D109A0  A0 00 00     MX
L_D109A3:
    JSR L_D109BF                    ; $D109A3  20 BF 09     MX
    PHY                             ; $D109A6  5A           MX
    JSR L_D10A1D                    ; $D109A7  20 1D 0A     MX
    PLY                             ; $D109AA  7A           MX
    LDA [$3E],Y                     ; $D109AB  B7 3E        MX
    AND #$00FF                      ; $D109AD  29 FF 00     MX
    BEQ L_D109BC                    ; $D109B0  F0 0A        MX
    LDA $62                         ; $D109B2  A5 62        MX
    CLC                             ; $D109B4  18           MX
    ADC #$0018                      ; $D109B5  69 18 00     MX
    STA $62                         ; $D109B8  85 62        MX
    BRA L_D109A3                    ; $D109BA  80 E7        MX
L_D109BC:
    PLY                             ; $D109BC  7A           MX
    PLX                             ; $D109BD  FA           MX
    RTS                             ; $D109BE  60           MX
L_D109BF:
    LDA #$0200                      ; $D109BF  A9 00 02     MX
    STA $2A                         ; $D109C2  85 2A        MX
    LDA $64                         ; $D109C4  A5 64        MX
    STA $48                         ; $D109C6  85 48        MX
    SEP #$30                        ; $D109C8  E2 30        MX
L_D109CA:
    LDA [$3E],Y                     ; $D109CA  B7 3E        mx
    BEQ L_D10A0E                    ; $D109CC  F0 40        mx
    SEC                             ; $D109CE  38           mx
    SBC #$61                        ; $D109CF  E9 61        mx
    BMI L_D109DA                    ; $D109D1  30 07        mx
    CMP #$1A                        ; $D109D3  C9 1A        mx
    BCS L_D109DA                    ; $D109D5  B0 03        mx
    TAX                             ; $D109D7  AA           mx
    BRA L_D109DF                    ; $D109D8  80 05        mx
L_D109DA:
    LDA [$3E],Y                     ; $D109DA  B7 3E        mx
    JSR L_D10A11                    ; $D109DC  20 11 0A     mx
L_D109DF:
    LDA $48                         ; $D109DF  A5 48        mx
    SEC                             ; $D109E1  38           mx
    SBC $D12009,X                   ; $D109E2  FF 09 20 D1  mx
    BCC L_D109F2                    ; $D109E6  90 0A        mx
    STA $48                         ; $D109E8  85 48        mx
    TXA                             ; $D109EA  8A           mx
    STA ($2A)                       ; $D109EB  92 2A        mx
    INC $2A                         ; $D109ED  E6 2A        mx
    INY                             ; $D109EF  C8           mx
    BRA L_D109CA                    ; $D109F0  80 D8        mx
L_D109F2:
    LDA [$3E],Y                     ; $D109F2  B7 3E        mx
    CMP #$20                        ; $D109F4  C9 20        mx
    BEQ L_D10A0D                    ; $D109F6  F0 15        mx
L_D109F8:
    DEY                             ; $D109F8  88           mx
    DEC $2A                         ; $D109F9  C6 2A        mx
    LDA ($2A)                       ; $D109FB  B2 2A        mx
    TAX                             ; $D109FD  AA           mx
    LDA $48                         ; $D109FE  A5 48        mx
    CLC                             ; $D10A00  18           mx
    ADC $D12009,X                   ; $D10A01  7F 09 20 D1  mx
    STA $48                         ; $D10A05  85 48        mx
    LDA [$3E],Y                     ; $D10A07  B7 3E        mx
    CMP #$20                        ; $D10A09  C9 20        mx
    BNE L_D109F8                    ; $D10A0B  D0 EB        mx
L_D10A0D:
    INY                             ; $D10A0D  C8           mx
L_D10A0E:
    REP #$30                        ; $D10A0E  C2 30        mx
    RTS                             ; $D10A10  60           MX
L_D10A11:
    LDX #$1A                        ; $D10A11  A2 1A        mx
L_D10A13:
    CMP $D11FDC,X                   ; $D10A13  DF DC 1F D1  mx
    BEQ L_D10A1C                    ; $D10A17  F0 03        mx
    INX                             ; $D10A19  E8           mx
    BRA L_D10A13                    ; $D10A1A  80 F7        mx
L_D10A1C:
    RTS                             ; $D10A1C  60           mx
L_D10A1D:
    LDA #$0001                      ; $D10A1D  A9 01 00     MX
    STA $4A                         ; $D10A20  85 4A        MX
    LDA $48                         ; $D10A22  A5 48        MX
    LSR                             ; $D10A24  4A           MX
    CLC                             ; $D10A25  18           MX
    ADC $60                         ; $D10A26  65 60        MX
    STA $5E                         ; $D10A28  85 5E        MX
    LDA $2A                         ; $D10A2A  A5 2A        MX
    SEC                             ; $D10A2C  38           MX
    SBC #$0200                      ; $D10A2D  E9 00 02     MX
    BEQ L_D10A57                    ; $D10A30  F0 25        MX
    STA $2A                         ; $D10A32  85 2A        MX
    LDY #$0000                      ; $D10A34  A0 00 00     MX
L_D10A37:
    LDA $0200,Y                     ; $D10A37  B9 00 02     MX
    AND #$00FF                      ; $D10A3A  29 FF 00     MX
    TAX                             ; $D10A3D  AA           MX
    CMP #$001A                      ; $D10A3E  C9 1A 00     MX
    BEQ L_D10A46                    ; $D10A41  F0 03        MX
    JSR L_D10A58                    ; $D10A43  20 58 0A     MX
L_D10A46:
    SEP #$20                        ; $D10A46  E2 20        MX
    LDA $5E                         ; $D10A48  A5 5E        mX
    CLC                             ; $D10A4A  18           mX
    ADC $F4E0,X                     ; $D10A4B  7D E0 F4     mX
    STA $5E                         ; $D10A4E  85 5E        mX
    REP #$20                        ; $D10A50  C2 20        mX
    INY                             ; $D10A52  C8           MX
    CPY $2A                         ; $D10A53  C4 2A        MX
    BCC L_D10A37                    ; $D10A55  90 E0        MX
L_D10A57:
    RTS                             ; $D10A57  60           MX
L_D10A58:
    PHX                             ; $D10A58  DA           MX
    PHY                             ; $D10A59  5A           MX
    ASL                             ; $D10A5A  0A           MX
    ASL                             ; $D10A5B  0A           MX
    TAX                             ; $D10A5C  AA           MX
    LDY $18FE                       ; $D10A5D  AC FE 18     MX
    LDA $7FBE20,X                   ; $D10A60  BF 20 BE 7F  MX
    STA $1906,Y                     ; $D10A64  99 06 19     MX
    SEP #$20                        ; $D10A67  E2 20        MX
    LDA $5E                         ; $D10A69  A5 5E        mX
    STA $1904,Y                     ; $D10A6B  99 04 19     mX
    LDA $62                         ; $D10A6E  A5 62        mX
    STA $1905,Y                     ; $D10A70  99 05 19     mX
    REP #$20                        ; $D10A73  C2 20        mX
    DEY                             ; $D10A75  88           MX
    DEY                             ; $D10A76  88           MX
    DEY                             ; $D10A77  88           MX
    DEY                             ; $D10A78  88           MX
    STY $18FE                       ; $D10A79  8C FE 18     MX
    PLY                             ; $D10A7C  7A           MX
    PLX                             ; $D10A7D  FA           MX
    RTS                             ; $D10A7E  60           MX
L_D10A7F:
    SEP #$20                        ; $D10A7F  E2 20        MX
    LDA #$03                        ; $D10A81  A9 03        mX
    STA $002105                     ; $D10A83  8F 05 21 00  mX
    LDA #$12                        ; $D10A87  A9 12        mX
    TRB $ED                         ; $D10A89  14 ED        mX
    TRB $EF                         ; $D10A8B  14 EF        mX
    REP #$20                        ; $D10A8D  C2 20        mX
    RTS                             ; $D10A8F  60           MX
L_D10A90:
    SEP #$20                        ; $D10A90  E2 20        MX
    LDA #$00                        ; $D10A92  A9 00        mX
    STA $00420C                     ; $D10A94  8F 0C 42 00  mX
    STA $004200                     ; $D10A98  8F 00 42 00  mX
    STA $0B                         ; $D10A9C  85 0B        mX
    REP #$20                        ; $D10A9E  C2 20        mX
    LDA #$0B68                      ; $D10AA0  A9 68 0B     MX
    STA $00                         ; $D10AA3  85 00        MX
    LDA #$00D1                      ; $D10AA5  A9 D1 00     MX
    STA $02                         ; $D10AA8  85 02        MX
    LDA #$0B89                      ; $D10AAA  A9 89 0B     MX
    STA $04                         ; $D10AAD  85 04        MX
    LDA #$00D1                      ; $D10AAF  A9 D1 00     MX
    STA $06                         ; $D10AB2  85 06        MX
    LDA #$0013                      ; $D10AB4  A9 13 00     MX
    LDX #$0A7D                      ; $D10AB7  A2 7D 0A     MX
    LDY #$00DF                      ; $D10ABA  A0 DF 00     MX
    PHB                             ; $D10ABD  8B           MX
    MVN $D0,$00                     ; $D10ABE  54 00 D0     MX
    PLB                             ; $D10AC1  AB           MX
    LDA #$3200                      ; $D10AC2  A9 00 32     MX
    STA $004340                     ; $D10AC5  8F 40 43 00  MX
    LDA #$9863                      ; $D10AC9  A9 63 98     MX
    STA $004342                     ; $D10ACC  8F 42 43 00  MX
    LDA #$0F03                      ; $D10AD0  A9 03 0F     MX
    STA $004350                     ; $D10AD3  8F 50 43 00  MX
    LDA #$00DF                      ; $D10AD7  A9 DF 00     MX
    STA $004352                     ; $D10ADA  8F 52 43 00  MX
    LDA #$0B00                      ; $D10ADE  A9 00 0B     MX
    STA $004360                     ; $D10AE1  8F 60 43 00  MX
    LDA #$00E5                      ; $D10AE5  A9 E5 00     MX
    STA $004362                     ; $D10AE8  8F 62 43 00  MX
    LDA #$2C00                      ; $D10AEC  A9 00 2C     MX
    STA $004370                     ; $D10AEF  8F 70 43 00  MX
    LDA #$00EC                      ; $D10AF3  A9 EC 00     MX
    STA $004372                     ; $D10AF6  8F 72 43 00  MX
    SEP #$20                        ; $D10AFA  E2 20        MX
    LDA #$D1                        ; $D10AFC  A9 D1        mX
    STA $004344                     ; $D10AFE  8F 44 43 00  mX
    LDA #$00                        ; $D10B02  A9 00        mX
    STA $004354                     ; $D10B04  8F 54 43 00  mX
    STA $004364                     ; $D10B08  8F 64 43 00  mX
    STA $004374                     ; $D10B0C  8F 74 43 00  mX
    LDA #$E0                        ; $D10B10  A9 E0        mX
    STA $DE                         ; $D10B12  85 DE        mX
    LDA #$00                        ; $D10B14  A9 00        mX
    STA $002131                     ; $D10B16  8F 31 21 00  mX
    LDA #$7C                        ; $D10B1A  A9 7C        mX
    STA $002107                     ; $D10B1C  8F 07 21 00  mX
    LDA #$78                        ; $D10B20  A9 78        mX
    STA $002108                     ; $D10B22  8F 08 21 00  mX
    LDA #$02                        ; $D10B26  A9 02        mX
    STA $002101                     ; $D10B28  8F 01 21 00  mX
    LDA #$01                        ; $D10B2C  A9 01        mX
    STA $002105                     ; $D10B2E  8F 05 21 00  mX
    DEC                             ; $D10B32  3A           mX
    STA $00210D                     ; $D10B33  8F 0D 21 00  mX
    STA $00210D                     ; $D10B37  8F 0D 21 00  mX
    STA $00210E                     ; $D10B3B  8F 0E 21 00  mX
    STA $00210E                     ; $D10B3F  8F 0E 21 00  mX
    LDA #$40                        ; $D10B43  A9 40        mX
    STA $0A                         ; $D10B45  85 0A        mX
    STA $004209                     ; $D10B47  8F 09 42 00  mX
    LDA #$00                        ; $D10B4B  A9 00        mX
    STA $00420A                     ; $D10B4D  8F 0A 42 00  mX
    LDA #$A1                        ; $D10B51  A9 A1        mX
    STA $004200                     ; $D10B53  8F 00 42 00  mX
    STA $0B                         ; $D10B57  85 0B        mX
    CLI                             ; $D10B59  58           mX
    REP #$20                        ; $D10B5A  C2 20        mX
    JSL L_C309F1                    ; $D10B5C  22 F1 09 C3  MX
    JSL L_C30996                    ; $D10B60  22 96 09 C3  MX
    STZ $1900                       ; $D10B64  9C 00 19     MX
    RTS                             ; $D10B67  60           MX
    db $DA,$5A,$08,$C2,$30,$48,$E2,$20,$AF,$11,$42,$00,$A5,$0A,$49,$80 ; $D10B68
    db $85,$0A,$8F,$09,$42,$00,$22,$F1,$02,$C2,$C2,$20,$68,$28,$7A,$FA ; $D10B78
    db $40,$C2,$20,$E6,$66,$E2,$20,$48,$AF,$10,$42,$00,$68,$40         ; $D10B88
L_D10B96:
    JSR L_D10BC0                    ; $D10B96  20 C0 0B     MX
    JSR L_D10C12                    ; $D10B99  20 12 0C     MX
    SEP #$20                        ; $D10B9C  E2 20        MX
    LDA #$01                        ; $D10B9E  A9 01        mX
    STA $002105                     ; $D10BA0  8F 05 21 00  mX
    REP #$20                        ; $D10BA4  C2 20        mX
    JSR L_D10CCA                    ; $D10BA6  20 CA 0C     MX
    JSR L_D10F93                    ; $D10BA9  20 93 0F     MX
    JSR L_D1102B                    ; $D10BAC  20 2B 10     MX
    SEP #$20                        ; $D10BAF  E2 20        MX
    LDA #$00                        ; $D10BB1  A9 00        mX
    STA $00420C                     ; $D10BB3  8F 0C 42 00  mX
    STA $004200                     ; $D10BB7  8F 00 42 00  mX
    STA $0B                         ; $D10BBB  85 0B        mX
    REP #$20                        ; $D10BBD  C2 20        mX
    RTL                             ; $D10BBF  6B           MX
L_D10BC0:
    JSR L_D10A90                    ; $D10BC0  20 90 0A     MX
    LDA #$0800                      ; $D10BC3  A9 00 08     MX
    STA $09FE                       ; $D10BC6  8D FE 09     MX
    LDA #$07FD                      ; $D10BC9  A9 FD 07     MX
    LDX #$09FE                      ; $D10BCC  A2 FE 09     MX
    LDY #$0A00                      ; $D10BCF  A0 00 0A     MX
    PHB                             ; $D10BD2  8B           MX
    MVN $7E,$7E                     ; $D10BD3  54 7E 7E     MX
    PLB                             ; $D10BD6  AB           MX
    LDA #$7800                      ; $D10BD7  A9 00 78     MX
    JSR L_D10402                    ; $D10BDA  20 02 04     MX
    LDA #$7000                      ; $D10BDD  A9 00 70     MX
    STA $002116                     ; $D10BE0  8F 16 21 00  MX
    LDA #$FFFF                      ; $D10BE4  A9 FF FF     MX
    LDX #$0010                      ; $D10BE7  A2 10 00     MX
L_D10BEA:
    STA $002118                     ; $D10BEA  8F 18 21 00  MX
    DEX                             ; $D10BEE  CA           MX
    BNE L_D10BEA                    ; $D10BEF  D0 F9        MX
    SEP #$20                        ; $D10BF1  E2 20        MX
    LDA #$2F                        ; $D10BF3  A9 2F        mX
    STA $002121                     ; $D10BF5  8F 21 21 00  mX
    LDA #$00                        ; $D10BF9  A9 00        mX
    STA $002122                     ; $D10BFB  8F 22 21 00  mX
    STA $002122                     ; $D10BFF  8F 22 21 00  mX
    LDA #$70                        ; $D10C03  A9 70        mX
    STA $E6                         ; $D10C05  85 E6        mX
    STA $E8                         ; $D10C07  85 E8        mX
    LDA #$02                        ; $D10C09  A9 02        mX
    TSB $ED                         ; $D10C0B  04 ED        mX
    TSB $EF                         ; $D10C0D  04 EF        mX
    REP #$20                        ; $D10C0F  C2 20        mX
    RTS                             ; $D10C11  60           MX
L_D10C12:
    SEP #$20                        ; $D10C12  E2 20        MX
    LDA #$03                        ; $D10C14  A9 03        mX
    STA $002105                     ; $D10C16  8F 05 21 00  mX
    REP #$20                        ; $D10C1A  C2 20        mX
    PEA $2036                       ; $D10C1C  F4 36 20     MX
    PEA $00D1                       ; $D10C1F  F4 D1 00     MX
    PEA $0000                       ; $D10C22  F4 00 00     MX
    PEA $007F                       ; $D10C25  F4 7F 00     MX
    JSL L_C30000                    ; $D10C28  22 00 00 C3  MX
    PLA                             ; $D10C2C  68           MX
    PLA                             ; $D10C2D  68           MX
    PLA                             ; $D10C2E  68           MX
    PLA                             ; $D10C2F  68           MX
    STZ $09FE                       ; $D10C30  9C FE 09     MX
    LDA #$07FD                      ; $D10C33  A9 FD 07     MX
    LDX #$09FE                      ; $D10C36  A2 FE 09     MX
    LDY #$0A00                      ; $D10C39  A0 00 0A     MX
    PHB                             ; $D10C3C  8B           MX
    MVN $7E,$7E                     ; $D10C3D  54 7E 7E     MX
    PLB                             ; $D10C40  AB           MX
    LDA #$0000                      ; $D10C41  A9 00 00     MX
    STA $002116                     ; $D10C44  8F 16 21 00  MX
    LDX #$0040                      ; $D10C48  A2 40 00     MX
    LDY #$00C0                      ; $D10C4B  A0 C0 00     MX
    JSR L_D1045E                    ; $D10C4E  20 5E 04     MX
    ASL                             ; $D10C51  0A           MX
    ASL                             ; $D10C52  0A           MX
    ASL                             ; $D10C53  0A           MX
    ASL                             ; $D10C54  0A           MX
    ASL                             ; $D10C55  0A           MX
    ASL                             ; $D10C56  0A           MX
    LDY #$007F                      ; $D10C57  A0 7F 00     MX
    JSL L_C308A0                    ; $D10C5A  22 A0 08 C3  MX
    LDA #$007F                      ; $D10C5E  A9 7F 00     MX
    LDX #$0000                      ; $D10C61  A2 00 00     MX
    LDY #$0040                      ; $D10C64  A0 40 00     MX
    JSL L_C302A8                    ; $D10C67  22 A8 02 C3  MX
    LDA #$7C00                      ; $D10C6B  A9 00 7C     MX
    JSR L_D10402                    ; $D10C6E  20 02 04     MX
    JSL L_C20489                    ; $D10C71  22 89 04 C2  MX
    LDA #$0040                      ; $D10C75  A9 40 00     MX
    JSL L_C30A55                    ; $D10C78  22 55 0A C3  MX
    LDA #$001D                      ; $D10C7C  A9 1D 00     MX
    JSL L_C2010F                    ; $D10C7F  22 0F 01 C2  MX
    LDA #$000A                      ; $D10C83  A9 0A 00     MX
    TAX                             ; $D10C86  AA           MX
    LDY #$0020                      ; $D10C87  A0 20 00     MX
L_D10C8A:
    JSR L_D10C98                    ; $D10C8A  20 98 0C     MX
    DEX                             ; $D10C8D  CA           MX
    BNE L_D10C8A                    ; $D10C8E  D0 FA        MX
    LDA #$0013                      ; $D10C90  A9 13 00     MX
    JSL L_C20445                    ; $D10C93  22 45 04 C2  MX
    RTS                             ; $D10C97  60           MX
L_D10C98:
    PHA                             ; $D10C98  48           MX
    PHX                             ; $D10C99  DA           MX
    PHY                             ; $D10C9A  5A           MX
    TYX                             ; $D10C9B  BB           MX
    LDA $7F0000,X                   ; $D10C9C  BF 00 00 7F  MX
    PHA                             ; $D10CA0  48           MX
    INX                             ; $D10CA1  E8           MX
    INX                             ; $D10CA2  E8           MX
    LDA $07,S                       ; $D10CA3  A3 07        MX
    DEC                             ; $D10CA5  3A           MX
    ASL                             ; $D10CA6  0A           MX
    DEC                             ; $D10CA7  3A           MX
    PHB                             ; $D10CA8  8B           MX
    MVN $7F,$7F                     ; $D10CA9  54 7F 7F     MX
    PLB                             ; $D10CAC  AB           MX
    TYX                             ; $D10CAD  BB           MX
    PLA                             ; $D10CAE  68           MX
    STA $7F0000,X                   ; $D10CAF  9F 00 00 7F  MX
    LDA $66                         ; $D10CB3  A5 66        MX
L_D10CB5:
    CMP $66                         ; $D10CB5  C5 66        MX
    BEQ L_D10CB5                    ; $D10CB7  F0 FC        MX
    LDA #$007F                      ; $D10CB9  A9 7F 00     MX
    LDX #$0000                      ; $D10CBC  A2 00 00     MX
    LDY #$0040                      ; $D10CBF  A0 40 00     MX
    JSL L_C302A8                    ; $D10CC2  22 A8 02 C3  MX
    PLY                             ; $D10CC6  7A           MX
    PLX                             ; $D10CC7  FA           MX
    PLA                             ; $D10CC8  68           MX
    RTS                             ; $D10CC9  60           MX
L_D10CCA:
    PEA $3F0A                       ; $D10CCA  F4 0A 3F     MX
    PEA $00D1                       ; $D10CCD  F4 D1 00     MX
    PEA $0000                       ; $D10CD0  F4 00 00     MX
    PEA $007F                       ; $D10CD3  F4 7F 00     MX
    JSL L_C30000                    ; $D10CD6  22 00 00 C3  MX
    PLA                             ; $D10CDA  68           MX
    PLA                             ; $D10CDB  68           MX
    PLA                             ; $D10CDC  68           MX
    PLA                             ; $D10CDD  68           MX
    PEA $8079                       ; $D10CDE  F4 79 80     MX
    PEA $00D1                       ; $D10CE1  F4 D1 00     MX
    PEA $8000                       ; $D10CE4  F4 00 80     MX
    PEA $007F                       ; $D10CE7  F4 7F 00     MX
    JSL L_C30000                    ; $D10CEA  22 00 00 C3  MX
    PLA                             ; $D10CEE  68           MX
    PLA                             ; $D10CEF  68           MX
    PLA                             ; $D10CF0  68           MX
    PLA                             ; $D10CF1  68           MX
    PEA $85A7                       ; $D10CF2  F4 A7 85     MX
    PEA $00D1                       ; $D10CF5  F4 D1 00     MX
    PEA $8800                       ; $D10CF8  F4 00 88     MX
    PEA $007F                       ; $D10CFB  F4 7F 00     MX
    JSL L_C30000                    ; $D10CFE  22 00 00 C3  MX
    PLA                             ; $D10D02  68           MX
    PLA                             ; $D10D03  68           MX
    PLA                             ; $D10D04  68           MX
    PLA                             ; $D10D05  68           MX
    LDA $66                         ; $D10D06  A5 66        MX
L_D10D08:
    CMP $66                         ; $D10D08  C5 66        MX
    BEQ L_D10D08                    ; $D10D0A  F0 FC        MX
    LDA #$007F                      ; $D10D0C  A9 7F 00     MX
    LDX #$0000                      ; $D10D0F  A2 00 00     MX
    LDY #$0020                      ; $D10D12  A0 20 00     MX
    JSL L_C302A8                    ; $D10D15  22 A8 02 C3  MX
    LDA #$C07F                      ; $D10D19  A9 7F C0     MX
    LDX #$8000                      ; $D10D1C  A2 00 80     MX
    LDY #$0020                      ; $D10D1F  A0 20 00     MX
    JSL L_C302A8                    ; $D10D22  22 A8 02 C3  MX
    LDA #$D07F                      ; $D10D26  A9 7F D0     MX
    LDX #$8800                      ; $D10D29  A2 00 88     MX
    LDY #$0020                      ; $D10D2C  A0 20 00     MX
    JSL L_C302A8                    ; $D10D2F  22 A8 02 C3  MX
    LDA #$0000                      ; $D10D33  A9 00 00     MX
    STA $002116                     ; $D10D36  8F 16 21 00  MX
    LDX #$08E4                      ; $D10D3A  A2 E4 08     MX
    LDY #$007F                      ; $D10D3D  A0 7F 00     MX
L_D10D40:
    LDA $66                         ; $D10D40  A5 66        MX
L_D10D42:
    CMP $66                         ; $D10D42  C5 66        MX
    BEQ L_D10D42                    ; $D10D44  F0 FC        MX
    LDA #$1400                      ; $D10D46  A9 00 14     MX
    JSL L_C308A0                    ; $D10D49  22 A0 08 C3  MX
    TXA                             ; $D10D4D  8A           MX
    CLC                             ; $D10D4E  18           MX
    ADC #$1400                      ; $D10D4F  69 00 14     MX
    TAX                             ; $D10D52  AA           MX
    CMP #$5000                      ; $D10D53  C9 00 50     MX
    BCC L_D10D40                    ; $D10D56  90 E8        MX
    PHB                             ; $D10D58  8B           MX
    PEA $007F                       ; $D10D59  F4 7F 00     MX
    PLB                             ; $D10D5C  AB           MX
    LDX #$0000                      ; $D10D5D  A2 00 00     MX
    TXY                             ; $D10D60  9B           MX
L_D10D61:
    LDA $8022,X                     ; $D10D61  BD 22 80     MX
    AND #$00FF                      ; $D10D64  29 FF 00     MX
    XBA                             ; $D10D67  EB           MX
    LSR                             ; $D10D68  4A           MX
    CLC                             ; $D10D69  18           MX
    ADC #$8040                      ; $D10D6A  69 40 80     MX
    STA $BE20,Y                     ; $D10D6D  99 20 BE     MX
    LDA $8022,X                     ; $D10D70  BD 22 80     MX
    AND #$FF00                      ; $D10D73  29 00 FF     MX
    ORA #$287F                      ; $D10D76  09 7F 28     MX
    STA $BE22,Y                     ; $D10D79  99 22 BE     MX
    INX                             ; $D10D7C  E8           MX
    INX                             ; $D10D7D  E8           MX
    INY                             ; $D10D7E  C8           MX
    INY                             ; $D10D7F  C8           MX
    INY                             ; $D10D80  C8           MX
    INY                             ; $D10D81  C8           MX
    CPX #$001E                      ; $D10D82  E0 1E 00     MX
    BCC L_D10D61                    ; $D10D85  90 DA        MX
    LDX #$0000                      ; $D10D87  A2 00 00     MX
L_D10D8A:
    LDA $8822,X                     ; $D10D8A  BD 22 88     MX
    AND #$00FF                      ; $D10D8D  29 FF 00     MX
    ASL                             ; $D10D90  0A           MX
    ASL                             ; $D10D91  0A           MX
    ASL                             ; $D10D92  0A           MX
    ASL                             ; $D10D93  0A           MX
    ASL                             ; $D10D94  0A           MX
    ASL                             ; $D10D95  0A           MX
    ASL                             ; $D10D96  0A           MX
    STA $42                         ; $D10D97  85 42        MX
    ASL                             ; $D10D99  0A           MX
    CLC                             ; $D10D9A  18           MX
    ADC $42                         ; $D10D9B  65 42        MX
    CLC                             ; $D10D9D  18           MX
    ADC #$885E                      ; $D10D9E  69 5E 88     MX
    STA $BE20,Y                     ; $D10DA1  99 20 BE     MX
    LDA $8822,X                     ; $D10DA4  BD 22 88     MX
    AND #$FF00                      ; $D10DA7  29 00 FF     MX
    ORA #$2A7F                      ; $D10DAA  09 7F 2A     MX
    STA $BE22,Y                     ; $D10DAD  99 22 BE     MX
    INX                             ; $D10DB0  E8           MX
    INX                             ; $D10DB1  E8           MX
    INY                             ; $D10DB2  C8           MX
    INY                             ; $D10DB3  C8           MX
    INY                             ; $D10DB4  C8           MX
    INY                             ; $D10DB5  C8           MX
    CPX #$003C                      ; $D10DB6  E0 3C 00     MX
    BCC L_D10D8A                    ; $D10DB9  90 CF        MX
    PLB                             ; $D10DBB  AB           MX
    PLB                             ; $D10DBC  AB           MX
    STZ $09FE                       ; $D10DBD  9C FE 09     MX
    LDA #$07FD                      ; $D10DC0  A9 FD 07     MX
    LDX #$09FE                      ; $D10DC3  A2 FE 09     MX
    LDY #$0A00                      ; $D10DC6  A0 00 0A     MX
    PHB                             ; $D10DC9  8B           MX
    MVN $7E,$7E                     ; $D10DCA  54 7E 7E     MX
    PLB                             ; $D10DCD  AB           MX
    JSL L_C30996                    ; $D10DCE  22 96 09 C3  MX
    JSL L_C309DF                    ; $D10DD2  22 DF 09 C3  MX
    STZ $1B26                       ; $D10DD6  9C 26 1B     MX
    LDA #$4000                      ; $D10DD9  A9 00 40     MX
    STA $1B24                       ; $D10DDC  8D 24 1B     MX
    LDA #$0000                      ; $D10DDF  A9 00 00     MX
    JSR L_D10EB5                    ; $D10DE2  20 B5 0E     MX
    JSR L_D10EF9                    ; $D10DE5  20 F9 0E     MX
    JSR L_D10F46                    ; $D10DE8  20 46 0F     MX
    JSR L_D10FC0                    ; $D10DEB  20 C0 0F     MX
    JSL L_C0B1AF                    ; $D10DEE  22 AF B1 C0  MX
    SEP #$20                        ; $D10DF2  E2 20        MX
    LDA #$02                        ; $D10DF4  A9 02        mX
    STA $00420B                     ; $D10DF6  8F 0B 42 00  mX
    LDA #$10                        ; $D10DFA  A9 10        mX
    TSB $ED                         ; $D10DFC  04 ED        mX
    TSB $EF                         ; $D10DFE  04 EF        mX
    INC $EE                         ; $D10E00  E6 EE        mX
    LDA #$2F                        ; $D10E02  A9 2F        mX
    STA $002121                     ; $D10E04  8F 21 21 00  mX
    LDA $7F0000                     ; $D10E08  AF 00 00 7F  mX
    STA $002122                     ; $D10E0C  8F 22 21 00  mX
    LDA $7F0001                     ; $D10E10  AF 01 00 7F  mX
    STA $002122                     ; $D10E14  8F 22 21 00  mX
    REP #$20                        ; $D10E18  C2 20        mX
    LDA #$001B                      ; $D10E1A  A9 1B 00     MX
    JSL L_C2010F                    ; $D10E1D  22 0F 01 C2  MX
    LDA $66                         ; $D10E21  A5 66        MX
L_D10E23:
    CMP $66                         ; $D10E23  C5 66        MX
    BEQ L_D10E23                    ; $D10E25  F0 FC        MX
    LDA #$0013                      ; $D10E27  A9 13 00     MX
    JSL L_C20466                    ; $D10E2A  22 66 04 C2  MX
    LDX #$0000                      ; $D10E2E  A2 00 00     MX
L_D10E31:
    PHX                             ; $D10E31  DA           MX
    JSL L_C30996                    ; $D10E32  22 96 09 C3  MX
    JSL L_C309DF                    ; $D10E36  22 DF 09 C3  MX
    STZ $1B26                       ; $D10E3A  9C 26 1B     MX
    PLX                             ; $D10E3D  FA           MX
L_D10E3E:
    LDA $D19391,X                   ; $D10E3E  BF 91 93 D1  MX
    INX                             ; $D10E42  E8           MX
    AND #$00FF                      ; $D10E43  29 FF 00     MX
    BIT #$0080                      ; $D10E46  89 80 00     MX
    BEQ L_D10E4E                    ; $D10E49  F0 03        MX
    ORA #$FF00                      ; $D10E4B  09 00 FF     MX
L_D10E4E:
    BPL L_D10E60                    ; $D10E4E  10 10        MX
    CMP #$FFFF                      ; $D10E50  C9 FF FF     MX
    BEQ L_D10E94                    ; $D10E53  F0 3F        MX
    LDA $D19391,X                   ; $D10E55  BF 91 93 D1  MX
    INX                             ; $D10E59  E8           MX
    INX                             ; $D10E5A  E8           MX
    JSR L_D10EA0                    ; $D10E5B  20 A0 0E     MX
    BRA L_D10E3E                    ; $D10E5E  80 DE        MX
L_D10E60:
    DEC                             ; $D10E60  3A           MX
    JSR L_D10F46                    ; $D10E61  20 46 0F     MX
    LDA $D19391,X                   ; $D10E64  BF 91 93 D1  MX
    INX                             ; $D10E68  E8           MX
    AND #$00FF                      ; $D10E69  29 FF 00     MX
    DEC                             ; $D10E6C  3A           MX
    PHA                             ; $D10E6D  48           MX
    LDA $D19391,X                   ; $D10E6E  BF 91 93 D1  MX
    INX                             ; $D10E72  E8           MX
    AND #$00FF                      ; $D10E73  29 FF 00     MX
    DEC                             ; $D10E76  3A           MX
    JSR L_D10EF9                    ; $D10E77  20 F9 0E     MX
    PLA                             ; $D10E7A  68           MX
    JSR L_D10EB5                    ; $D10E7B  20 B5 0E     MX
    LDA $66                         ; $D10E7E  A5 66        MX
L_D10E80:
    CMP $66                         ; $D10E80  C5 66        MX
    BEQ L_D10E80                    ; $D10E82  F0 FC        MX
    JSL L_C0B1AF                    ; $D10E84  22 AF B1 C0  MX
    SEP #$20                        ; $D10E88  E2 20        MX
    LDA #$02                        ; $D10E8A  A9 02        mX
    STA $00420B                     ; $D10E8C  8F 0B 42 00  mX
    REP #$20                        ; $D10E90  C2 20        mX
    BRA L_D10E31                    ; $D10E92  80 9D        MX
L_D10E94:
    LDA #$0040                      ; $D10E94  A9 40 00     MX
    JSL L_C30A55                    ; $D10E97  22 55 0A C3  MX
    JSL L_C30A2E                    ; $D10E9B  22 2E 0A C3  MX
    RTS                             ; $D10E9F  60           MX
L_D10EA0:
    PHX                             ; $D10EA0  DA           MX
    PHA                             ; $D10EA1  48           MX
L_D10EA2:
    LDA $66                         ; $D10EA2  A5 66        MX
L_D10EA4:
    CMP $66                         ; $D10EA4  C5 66        MX
    BEQ L_D10EA4                    ; $D10EA6  F0 FC        MX
    JSL L_C203C2                    ; $D10EA8  22 C2 03 C2  MX
    LDA $46                         ; $D10EAC  A5 46        MX
    CMP $01,S                       ; $D10EAE  C3 01        MX
    BCC L_D10EA2                    ; $D10EB0  90 F0        MX
    PLA                             ; $D10EB2  68           MX
    PLX                             ; $D10EB3  FA           MX
    RTS                             ; $D10EB4  60           MX
L_D10EB5:
    PHA                             ; $D10EB5  48           MX
    LDA #$006B                      ; $D10EB6  A9 6B 00     MX
    STA $5E                         ; $D10EB9  85 5E        MX
    LDA #$0059                      ; $D10EBB  A9 59 00     MX
    STA $62                         ; $D10EBE  85 62        MX
    LDA $01,S                       ; $D10EC0  A3 01        MX
    STA $42                         ; $D10EC2  85 42        MX
    ASL                             ; $D10EC4  0A           MX
    CLC                             ; $D10EC5  18           MX
    ADC $42                         ; $D10EC6  65 42        MX
    JSL L_C0BC42                    ; $D10EC8  22 42 BC C0  MX
    LDA $5E                         ; $D10ECC  A5 5E        MX
    CLC                             ; $D10ECE  18           MX
    ADC #$0010                      ; $D10ECF  69 10 00     MX
    STA $5E                         ; $D10ED2  85 5E        MX
    LDA $01,S                       ; $D10ED4  A3 01        MX
    STA $42                         ; $D10ED6  85 42        MX
    ASL                             ; $D10ED8  0A           MX
    CLC                             ; $D10ED9  18           MX
    ADC $42                         ; $D10EDA  65 42        MX
    INC                             ; $D10EDC  1A           MX
    JSL L_C0BC42                    ; $D10EDD  22 42 BC C0  MX
    LDA $5E                         ; $D10EE1  A5 5E        MX
    CLC                             ; $D10EE3  18           MX
    ADC #$0010                      ; $D10EE4  69 10 00     MX
    STA $5E                         ; $D10EE7  85 5E        MX
    LDA $01,S                       ; $D10EE9  A3 01        MX
    STA $42                         ; $D10EEB  85 42        MX
    ASL                             ; $D10EED  0A           MX
    CLC                             ; $D10EEE  18           MX
    ADC $42                         ; $D10EEF  65 42        MX
    INC                             ; $D10EF1  1A           MX
    INC                             ; $D10EF2  1A           MX
    JSL L_C0BC42                    ; $D10EF3  22 42 BC C0  MX
    PLA                             ; $D10EF7  68           MX
    RTS                             ; $D10EF8  60           MX
L_D10EF9:
    PHA                             ; $D10EF9  48           MX
    LDA #$006A                      ; $D10EFA  A9 6A 00     MX
    STA $5E                         ; $D10EFD  85 5E        MX
    LDA #$0063                      ; $D10EFF  A9 63 00     MX
    STA $62                         ; $D10F02  85 62        MX
    LDA $01,S                       ; $D10F04  A3 01        MX
    STA $42                         ; $D10F06  85 42        MX
    ASL                             ; $D10F08  0A           MX
    CLC                             ; $D10F09  18           MX
    ADC $42                         ; $D10F0A  65 42        MX
    CLC                             ; $D10F0C  18           MX
    ADC #$0009                      ; $D10F0D  69 09 00     MX
    JSL L_C0BC42                    ; $D10F10  22 42 BC C0  MX
    LDA $5E                         ; $D10F14  A5 5E        MX
    CLC                             ; $D10F16  18           MX
    ADC #$0010                      ; $D10F17  69 10 00     MX
    STA $5E                         ; $D10F1A  85 5E        MX
    LDA $01,S                       ; $D10F1C  A3 01        MX
    STA $42                         ; $D10F1E  85 42        MX
    ASL                             ; $D10F20  0A           MX
    CLC                             ; $D10F21  18           MX
    ADC $42                         ; $D10F22  65 42        MX
    CLC                             ; $D10F24  18           MX
    ADC #$000A                      ; $D10F25  69 0A 00     MX
    JSL L_C0BC42                    ; $D10F28  22 42 BC C0  MX
    LDA $5E                         ; $D10F2C  A5 5E        MX
    CLC                             ; $D10F2E  18           MX
    ADC #$0010                      ; $D10F2F  69 10 00     MX
    STA $5E                         ; $D10F32  85 5E        MX
    LDA $01,S                       ; $D10F34  A3 01        MX
    STA $42                         ; $D10F36  85 42        MX
    ASL                             ; $D10F38  0A           MX
    CLC                             ; $D10F39  18           MX
    ADC $42                         ; $D10F3A  65 42        MX
    CLC                             ; $D10F3C  18           MX
    ADC #$000B                      ; $D10F3D  69 0B 00     MX
    JSL L_C0BC42                    ; $D10F40  22 42 BC C0  MX
    PLA                             ; $D10F44  68           MX
    RTS                             ; $D10F45  60           MX
L_D10F46:
    PHA                             ; $D10F46  48           MX
    LDA #$006A                      ; $D10F47  A9 6A 00     MX
    STA $5E                         ; $D10F4A  85 5E        MX
    LDA #$006E                      ; $D10F4C  A9 6E 00     MX
    STA $62                         ; $D10F4F  85 62        MX
    LDA $01,S                       ; $D10F51  A3 01        MX
    STA $42                         ; $D10F53  85 42        MX
    ASL                             ; $D10F55  0A           MX
    CLC                             ; $D10F56  18           MX
    ADC $42                         ; $D10F57  65 42        MX
    CLC                             ; $D10F59  18           MX
    ADC #$000F                      ; $D10F5A  69 0F 00     MX
    JSL L_C0BCB7                    ; $D10F5D  22 B7 BC C0  MX
    LDA $5E                         ; $D10F61  A5 5E        MX
    CLC                             ; $D10F63  18           MX
    ADC #$0010                      ; $D10F64  69 10 00     MX
    STA $5E                         ; $D10F67  85 5E        MX
    LDA $01,S                       ; $D10F69  A3 01        MX
    STA $42                         ; $D10F6B  85 42        MX
    ASL                             ; $D10F6D  0A           MX
    CLC                             ; $D10F6E  18           MX
    ADC $42                         ; $D10F6F  65 42        MX
    CLC                             ; $D10F71  18           MX
    ADC #$0010                      ; $D10F72  69 10 00     MX
    JSL L_C0BCB7                    ; $D10F75  22 B7 BC C0  MX
    LDA $5E                         ; $D10F79  A5 5E        MX
    CLC                             ; $D10F7B  18           MX
    ADC #$0010                      ; $D10F7C  69 10 00     MX
    STA $5E                         ; $D10F7F  85 5E        MX
    LDA $01,S                       ; $D10F81  A3 01        MX
    STA $42                         ; $D10F83  85 42        MX
    ASL                             ; $D10F85  0A           MX
    CLC                             ; $D10F86  18           MX
    ADC $42                         ; $D10F87  65 42        MX
    CLC                             ; $D10F89  18           MX
    ADC #$0011                      ; $D10F8A  69 11 00     MX
    JSL L_C0BCB7                    ; $D10F8D  22 B7 BC C0  MX
    PLA                             ; $D10F91  68           MX
    RTS                             ; $D10F92  60           MX
L_D10F93:
    SEP #$20                        ; $D10F93  E2 20        MX
    LDA $ED                         ; $D10F95  A5 ED        mX
    AND #$EF                        ; $D10F97  29 EF        mX
    STA $ED                         ; $D10F99  85 ED        mX
    STA $EF                         ; $D10F9B  85 EF        mX
    REP #$20                        ; $D10F9D  C2 20        mX
    LDA #$0000                      ; $D10F9F  A9 00 00     MX
L_D10FA2:
    PHA                             ; $D10FA2  48           MX
    JSR L_D10FC0                    ; $D10FA3  20 C0 0F     MX
    LDA #$0005                      ; $D10FA6  A9 05 00     MX
    JSL L_C30A55                    ; $D10FA9  22 55 0A C3  MX
    PLA                             ; $D10FAD  68           MX
    INC                             ; $D10FAE  1A           MX
    CMP #$0007                      ; $D10FAF  C9 07 00     MX
    BCC L_D10FA2                    ; $D10FB2  90 EE        MX
    LDA #$0040                      ; $D10FB4  A9 40 00     MX
    JSL L_C30A55                    ; $D10FB7  22 55 0A C3  MX
    JSL L_C204AB                    ; $D10FBB  22 AB 04 C2  MX
    RTS                             ; $D10FBF  60           MX
L_D10FC0:
    TAX                             ; $D10FC0  AA           MX
    AND #$0003                      ; $D10FC1  29 03 00     MX
    ASL                             ; $D10FC4  0A           MX
    ASL                             ; $D10FC5  0A           MX
    STA $42                         ; $D10FC6  85 42        MX
    ASL                             ; $D10FC8  0A           MX
    ASL                             ; $D10FC9  0A           MX
    CLC                             ; $D10FCA  18           MX
    ADC $42                         ; $D10FCB  65 42        MX
    PHA                             ; $D10FCD  48           MX
    TXA                             ; $D10FCE  8A           MX
    AND #$00FC                      ; $D10FCF  29 FC 00     MX
    ASL                             ; $D10FD2  0A           MX
    ASL                             ; $D10FD3  0A           MX
    STA $42                         ; $D10FD4  85 42        MX
    ASL                             ; $D10FD6  0A           MX
    ASL                             ; $D10FD7  0A           MX
    CLC                             ; $D10FD8  18           MX
    ADC $42                         ; $D10FD9  65 42        MX
    STA $42                         ; $D10FDB  85 42        MX
    ASL                             ; $D10FDD  0A           MX
    ASL                             ; $D10FDE  0A           MX
    STA $44                         ; $D10FDF  85 44        MX
    ASL                             ; $D10FE1  0A           MX
    CLC                             ; $D10FE2  18           MX
    ADC $44                         ; $D10FE3  65 44        MX
    CLC                             ; $D10FE5  18           MX
    ADC $42                         ; $D10FE6  65 42        MX
    CLC                             ; $D10FE8  18           MX
    ADC $01,S                       ; $D10FE9  63 01        MX
    CLC                             ; $D10FEB  18           MX
    ADC #$0024                      ; $D10FEC  69 24 00     MX
    TAX                             ; $D10FEF  AA           MX
    PLA                             ; $D10FF0  68           MX
    LDY #$01D6                      ; $D10FF1  A0 D6 01     MX
    LDA #$000D                      ; $D10FF4  A9 0D 00     MX
L_D10FF7:
    PHA                             ; $D10FF7  48           MX
    PHX                             ; $D10FF8  DA           MX
    PHY                             ; $D10FF9  5A           MX
    LDA #$000A                      ; $D10FFA  A9 0A 00     MX
    STA $46                         ; $D10FFD  85 46        MX
L_D10FFF:
    LDA $7F0000,X                   ; $D10FFF  BF 00 00 7F  MX
    STA $09FE,Y                     ; $D11003  99 FE 09     MX
    INX                             ; $D11006  E8           MX
    INX                             ; $D11007  E8           MX
    INY                             ; $D11008  C8           MX
    INY                             ; $D11009  C8           MX
    DEC $46                         ; $D1100A  C6 46        MX
    BNE L_D10FFF                    ; $D1100C  D0 F1        MX
    PLA                             ; $D1100E  68           MX
    CLC                             ; $D1100F  18           MX
    ADC #$0040                      ; $D11010  69 40 00     MX
    TAY                             ; $D11013  A8           MX
    PLA                             ; $D11014  68           MX
    CLC                             ; $D11015  18           MX
    ADC #$0050                      ; $D11016  69 50 00     MX
    TAX                             ; $D11019  AA           MX
    PLA                             ; $D1101A  68           MX
    DEC                             ; $D1101B  3A           MX
    BNE L_D10FF7                    ; $D1101C  D0 D9        MX
    LDA $66                         ; $D1101E  A5 66        MX
L_D11020:
    CMP $66                         ; $D11020  C5 66        MX
    BEQ L_D11020                    ; $D11022  F0 FC        MX
    LDA #$7C00                      ; $D11024  A9 00 7C     MX
    JSR L_D10402                    ; $D11027  20 02 04     MX
    RTS                             ; $D1102A  60           MX
L_D1102B:
    JSR L_D10080                    ; $D1102B  20 80 00     MX
    JSR L_D100DB                    ; $D1102E  20 DB 00     MX
    JSR L_D11152                    ; $D11031  20 52 11     MX
    JSL L_C309DF                    ; $D11034  22 DF 09 C3  MX
    STZ $1B26                       ; $D11038  9C 26 1B     MX
    LDA #$4000                      ; $D1103B  A9 00 40     MX
    STA $1B24                       ; $D1103E  8D 24 1B     MX
    LDA #$00D1                      ; $D11041  A9 D1 00     MX
    STA $40                         ; $D11044  85 40        MX
    JSR L_D1106A                    ; $D11046  20 6A 10     MX
    LDA #$001C                      ; $D11049  A9 1C 00     MX
    JSL L_C2010F                    ; $D1104C  22 0F 01 C2  MX
    LDA #$00E0                      ; $D11050  A9 E0 00     MX
L_D11053:
    JSR L_D110C1                    ; $D11053  20 C1 10     MX
    DEC                             ; $D11056  3A           MX
    BPL L_D11053                    ; $D11057  10 FA        MX
    CMP #$FB69                      ; $D11059  C9 69 FB     MX
    BCS L_D11053                    ; $D1105C  B0 F5        MX
    LDA #$0200                      ; $D1105E  A9 00 02     MX
    JSL L_C30A55                    ; $D11061  22 55 0A C3  MX
    JSL L_C204AB                    ; $D11065  22 AB 04 C2  MX
    RTS                             ; $D11069  60           MX
L_D1106A:
    LDX #$0000                      ; $D1106A  A2 00 00     MX
    LDY #$68E0                      ; $D1106D  A0 E0 68     MX
L_D11070:
    LDA $D196C2,X                   ; $D11070  BF C2 96 D1  MX
    BMI L_D110BA                    ; $D11074  30 44        MX
    CLC                             ; $D11076  18           MX
    ADC #$96C2                      ; $D11077  69 C2 96     MX
    STA $3E                         ; $D1107A  85 3E        MX
    LDA #$0001                      ; $D1107C  A9 01 00     MX
    STA $5E                         ; $D1107F  85 5E        MX
    STA $60                         ; $D11081  85 60        MX
    LDA #$00FF                      ; $D11083  A9 FF 00     MX
    STA $64                         ; $D11086  85 64        MX
    PHX                             ; $D11088  DA           MX
    PHY                             ; $D11089  5A           MX
    LDY #$0000                      ; $D1108A  A0 00 00     MX
    JSR L_D109BF                    ; $D1108D  20 BF 09     MX
    PLY                             ; $D11090  7A           MX
    LDA $48                         ; $D11091  A5 48        MX
    STA $0000,Y                     ; $D11093  99 00 00     MX
    INY                             ; $D11096  C8           MX
    INY                             ; $D11097  C8           MX
    LDA $60                         ; $D11098  A5 60        MX
    STA $0000,Y                     ; $D1109A  99 00 00     MX
    INY                             ; $D1109D  C8           MX
    INY                             ; $D1109E  C8           MX
    LDA $2A                         ; $D1109F  A5 2A        MX
    STA $0000,Y                     ; $D110A1  99 00 00     MX
    INY                             ; $D110A4  C8           MX
    INY                             ; $D110A5  C8           MX
    SEC                             ; $D110A6  38           MX
    SBC #$0200                      ; $D110A7  E9 00 02     MX
    BEQ L_D110B5                    ; $D110AA  F0 09        MX
    DEC                             ; $D110AC  3A           MX
    LDX #$0200                      ; $D110AD  A2 00 02     MX
    PHB                             ; $D110B0  8B           MX
    MVN $7E,$7E                     ; $D110B1  54 7E 7E     MX
    PLB                             ; $D110B4  AB           MX
L_D110B5:
    PLX                             ; $D110B5  FA           MX
    INX                             ; $D110B6  E8           MX
    INX                             ; $D110B7  E8           MX
    BRA L_D11070                    ; $D110B8  80 B6        MX
L_D110BA:
    LDA #$FFFF                      ; $D110BA  A9 FF FF     MX
    STA $0000,Y                     ; $D110BD  99 00 00     MX
    RTS                             ; $D110C0  60           MX
L_D110C1:
    PHA                             ; $D110C1  48           MX
    STA $62                         ; $D110C2  85 62        MX
    JSL L_C30996                    ; $D110C4  22 96 09 C3  MX
    LDX $1B26                       ; $D110C8  AE 26 1B     MX
    PHX                             ; $D110CB  DA           MX
    LDX #$68E0                      ; $D110CC  A2 E0 68     MX
L_D110CF:
    LDA $0000,X                     ; $D110CF  BD 00 00     MX
    BMI L_D1111E                    ; $D110D2  30 4A        MX
    STA $48                         ; $D110D4  85 48        MX
    LDA $62                         ; $D110D6  A5 62        MX
    BPL L_D110EB                    ; $D110D8  10 11        MX
    CMP #$FFF0                      ; $D110DA  C9 F0 FF     MX
    BCS L_D110EB                    ; $D110DD  B0 0C        MX
    TXA                             ; $D110DF  8A           MX
    CLC                             ; $D110E0  18           MX
    ADC $0004,X                     ; $D110E1  7D 04 00     MX
    SEC                             ; $D110E4  38           MX
    SBC #$01FA                      ; $D110E5  E9 FA 01     MX
    TAX                             ; $D110E8  AA           MX
    BRA L_D1110F                    ; $D110E9  80 24        MX
L_D110EB:
    INX                             ; $D110EB  E8           MX
    INX                             ; $D110EC  E8           MX
    LDA $0000,X                     ; $D110ED  BD 00 00     MX
    STA $60                         ; $D110F0  85 60        MX
    INX                             ; $D110F2  E8           MX
    INX                             ; $D110F3  E8           MX
    LDA $0000,X                     ; $D110F4  BD 00 00     MX
    STA $2A                         ; $D110F7  85 2A        MX
    INX                             ; $D110F9  E8           MX
    INX                             ; $D110FA  E8           MX
    SEC                             ; $D110FB  38           MX
    SBC #$0200                      ; $D110FC  E9 00 02     MX
    BEQ L_D1110F                    ; $D110FF  F0 0E        MX
    DEC                             ; $D11101  3A           MX
    LDY #$0200                      ; $D11102  A0 00 02     MX
    PHB                             ; $D11105  8B           MX
    MVN $7E,$7E                     ; $D11106  54 7E 7E     MX
    PLB                             ; $D11109  AB           MX
    PHX                             ; $D1110A  DA           MX
    JSR L_D10A1D                    ; $D1110B  20 1D 0A     MX
    PLX                             ; $D1110E  FA           MX
L_D1110F:
    LDA $62                         ; $D1110F  A5 62        MX
    CLC                             ; $D11111  18           MX
    ADC #$0018                      ; $D11112  69 18 00     MX
    STA $62                         ; $D11115  85 62        MX
    BMI L_D110CF                    ; $D11117  30 B6        MX
    CMP #$00E0                      ; $D11119  C9 E0 00     MX
    BCC L_D110CF                    ; $D1111C  90 B1        MX
L_D1111E:
    BPL L_D11135                    ; $D1111E  10 15        MX
    LDA #$9848                      ; $D11120  A9 48 98     MX
    STA $26                         ; $D11123  85 26        MX
    LDA #$00D1                      ; $D11125  A9 D1 00     MX
    STA $28                         ; $D11128  85 28        MX
    LDA #$0001                      ; $D1112A  A9 01 00     MX
    STA $5E                         ; $D1112D  85 5E        MX
    LDA #$00FF                      ; $D1112F  A9 FF 00     MX
    JSR L_D10481                    ; $D11132  20 81 04     MX
L_D11135:
    PLX                             ; $D11135  FA           MX
    LDA $66                         ; $D11136  A5 66        MX
L_D11138:
    CMP $66                         ; $D11138  C5 66        MX
    BEQ L_D11138                    ; $D1113A  F0 FC        MX
    JSL L_C0B1D0                    ; $D1113C  22 D0 B1 C0  MX
    SEP #$20                        ; $D11140  E2 20        MX
    LDA #$02                        ; $D11142  A9 02        mX
    STA $00420B                     ; $D11144  8F 0B 42 00  mX
    LDA #$10                        ; $D11148  A9 10        mX
    STA $ED                         ; $D1114A  85 ED        mX
    STA $EF                         ; $D1114C  85 EF        mX
    REP #$20                        ; $D1114E  C2 20        mX
    PLA                             ; $D11150  68           MX
    RTS                             ; $D11151  60           MX
L_D11152:
    SEP #$20                        ; $D11152  E2 20        MX
    LDA #$90                        ; $D11154  A9 90        mX
    STA $002131                     ; $D11156  8F 31 21 00  mX
    LDA #$F0                        ; $D1115A  A9 F0        mX
    STA $00420C                     ; $D1115C  8F 0C 42 00  mX
    LDA #$00                        ; $D11160  A9 00        mX
    STA $ED                         ; $D11162  85 ED        mX
    STA $EF                         ; $D11164  85 EF        mX
    STA $002121                     ; $D11166  8F 21 21 00  mX
    STA $002122                     ; $D1116A  8F 22 21 00  mX
    STA $002122                     ; $D1116E  8F 22 21 00  mX
    LDA #$0F                        ; $D11172  A9 0F        mX
    STA $002100                     ; $D11174  8F 00 21 00  mX
    REP #$20                        ; $D11178  C2 20        mX
    RTS                             ; $D1117A  60           MX

; ---- RNC method 2 block: 3369 bytes packed, 5624 unpacked (tools/rnc.py) ($D1117B-$D11EB5) ----
    db $52,$4E,$43,$02,$00,$00,$15,$F8,$00,$00,$0D,$29,$10,$F1,$6F,$45 ; $D1117B
    db $04,$01,$05,$A0,$02,$F7,$C6,$7F,$52,$77,$C8,$7E,$29,$7E,$C1,$49 ; $D1118B
    db $65,$55,$40,$41,$22,$31,$00,$60,$00,$A0,$20,$40,$10,$CE,$05,$2B ; $D1119B
    db $17,$09,$01,$00,$4C,$02,$00,$03,$00,$04,$00,$05,$00,$06,$00,$07 ; $D111AB
    db $00,$08,$00,$09,$00,$0A,$00,$0B,$00,$0C,$00,$0D,$00,$0E,$00,$0F ; $D111BB
    db $00,$24,$11,$2F,$00,$12,$3B,$00,$13,$00,$14,$00,$15,$00,$16,$00 ; $D111CB
    db $17,$00,$18,$00,$19,$00,$1A,$00,$1B,$00,$1C,$00,$1D,$00,$1E,$00 ; $D111DB
    db $1F,$00,$20,$00,$21,$00,$22,$00,$23,$00,$24,$00,$25,$00,$26,$00 ; $D111EB
    db $27,$00,$28,$00,$29,$00,$2A,$49,$00,$54,$0E,$01,$06,$08,$0E,$07 ; $D111FB
    db $19,$60,$1F,$4E,$04,$19,$14,$01,$0E,$01,$08,$01,$09,$60,$69,$41 ; $D1120B
    db $16,$06,$1D,$04,$62,$0D,$6C,$00,$80,$06,$02,$80,$40,$05,$07,$C0 ; $D1121B
    db $00,$40,$80,$C0,$28,$0C,$00,$40,$33,$C0,$C0,$02,$40,$03,$00,$14 ; $D1122B
    db $31,$30,$18,$10,$2E,$6A,$40,$18,$50,$0F,$68,$10,$30,$08,$08,$F0 ; $D1123B
    db $25,$0C,$28,$08,$01,$7F,$00,$00,$7F,$1F,$78,$18,$F8,$08,$F8,$F8 ; $D1124B
    db $6C,$A0,$32,$02,$A0,$18,$10,$20,$30,$C6,$10,$70,$E0,$1F,$20,$60 ; $D1125B
    db $60,$C1,$02,$20,$F0,$30,$F0,$90,$0D,$10,$1F,$B8,$E1,$76,$8F,$45 ; $D1126B
    db $B9,$00,$71,$20,$71,$22,$71,$3F,$FE,$2F,$EB,$2E,$72,$79,$9E,$9C ; $D1127B
    db $10,$C3,$00,$12,$10,$07,$09,$8C,$90,$1F,$1C,$39,$F6,$7B,$A8,$44 ; $D1128B
    db $04,$00,$52,$E0,$8C,$1B,$77,$03,$6C,$83,$03,$49,$61,$1B,$71,$60 ; $D1129B
    db $70,$7C,$60,$FC,$5D,$20,$14,$7C,$02,$1C,$01,$FE,$11,$3B,$70,$30 ; $D112AB
    db $5B,$71,$10,$03,$77,$10,$FE,$01,$FF,$FF,$99,$7F,$34,$A0,$90,$83 ; $D112BB
    db $20,$3E,$E6,$3D,$31,$20,$20,$20,$81,$A0,$43,$60,$41,$00,$0F,$0F ; $D112CB
    db $30,$44,$33,$80,$F8,$20,$33,$50,$70,$0E,$E0,$6C,$01,$2B,$27,$4F ; $D112DB
    db $0C,$07,$98,$08,$B0,$43,$30,$E7,$28,$0E,$00,$C0,$20,$2D,$3B,$C0 ; $D112EB
    db $B4,$8B,$00,$0F,$3D,$E0,$E0,$02,$60,$0F,$32,$50,$60,$D0,$C0,$C0 ; $D112FB
    db $40,$6C,$00,$37,$02,$1B,$1B,$0C,$08,$07,$1F,$60,$3B,$01,$D8,$88 ; $D1130B
    db $7C,$44,$03,$3F,$21,$1F,$10,$0F,$0F,$D1,$02,$29,$8F,$44,$40,$80 ; $D1131B
    db $03,$70,$0F,$BF,$C0,$C0,$00,$60,$94,$7A,$9C,$05,$76,$22,$73,$60 ; $D1132B
    db $20,$01,$70,$21,$70,$20,$02,$71,$0C,$00,$82,$80,$11,$8A,$FF,$11 ; $D1133B
    db $7B,$01,$01,$2C,$B6,$02,$CB,$2C,$E0,$C0,$4B,$C9,$00,$40,$14,$CB ; $D1134B
    db $70,$FF,$65,$11,$FF,$2B,$14,$FF,$10,$FF,$70,$71,$01,$7F,$18,$83 ; $D1135B
    db $FF,$C0,$83,$D3,$00,$A0,$40,$CF,$01,$FF,$20,$07,$07,$FF,$7F,$80 ; $D1136B
    db $61,$9F,$6C,$7F,$7B,$71,$0D,$38,$FF,$21,$FF,$7F,$84,$11,$9E,$8E ; $D1137B
    db $11,$38,$80,$79,$9E,$6D,$9E,$09,$B3,$24,$B5,$A3,$05,$46,$02,$79 ; $D1138B
    db $7C,$C0,$01,$69,$05,$00,$80,$7F,$10,$21,$10,$2E,$01,$7C,$C5,$16 ; $D1139B
    db $FF,$10,$B0,$7F,$11,$6F,$0E,$67,$FF,$0E,$FF,$9E,$03,$FD,$C0,$04 ; $D113AB
    db $FF,$E8,$41,$A7,$49,$BB,$40,$7F,$54,$FF,$58,$5F,$7F,$70,$9C,$7E ; $D113BB
    db $5F,$02,$6F,$F7,$0E,$00,$E0,$02,$FF,$42,$E3,$40,$E3,$3F,$C0,$E1 ; $D113CB
    db $04,$1F,$FF,$22,$22,$04,$8E,$FF,$40,$E0,$3F,$07,$C0,$02,$71,$FF ; $D113DB
    db $09,$60,$8B,$8D,$E1,$C1,$87,$51,$61,$D1,$C1,$F9,$21,$6F,$01,$34 ; $D113EB
    db $02,$1C,$08,$E0,$02,$FF,$7E,$46,$3F,$20,$8D,$FF,$CE,$F5,$9E,$37 ; $D113FB
    db $94,$39,$40,$8A,$C9,$40,$8F,$BB,$01,$02,$01,$C0,$79,$82,$71,$9A ; $D1140B
    db $23,$FF,$37,$01,$3C,$FD,$31,$FF,$42,$9A,$8A,$09,$C3,$36,$FF,$05 ; $D1141B
    db $6A,$07,$C0,$60,$00,$C0,$80,$A1,$01,$01,$7F,$0B,$43,$0C,$00,$61 ; $D1142B
    db $71,$01,$41,$40,$51,$FF,$28,$10,$E3,$3C,$F3,$F0,$02,$FF,$79,$18 ; $D1143B
    db $FB,$1E,$08,$FB,$FB,$02,$7F,$38,$A0,$40,$3C,$C0,$F0,$02,$7F,$E0 ; $D1144B
    db $60,$E0,$E0,$C9,$78,$80,$70,$0F,$98,$00,$70,$20,$01,$62,$01,$42 ; $D1145B
    db $98,$88,$4B,$7F,$3D,$85,$16,$00,$F9,$02,$7F,$28,$FA,$07,$7F,$53 ; $D1146B
    db $FF,$E0,$18,$3F,$07,$08,$07,$09,$CF,$04,$02,$01,$61,$01,$11,$09 ; $D1147B
    db $08,$01,$E9,$03,$00,$6F,$FA,$04,$97,$35,$80,$AE,$05,$0F,$38,$06 ; $D1148B
    db $07,$06,$E7,$C4,$E5,$00,$21,$3A,$21,$86,$83,$74,$4E,$00,$3C,$31 ; $D1149B
    db $21,$21,$B8,$7B,$23,$21,$E7,$21,$FF,$11,$FF,$01,$7E,$02,$3C,$3C ; $D114AB
    db $18,$7F,$88,$FF,$99,$C0,$7F,$23,$71,$3E,$FF,$25,$64,$F9,$05,$09 ; $D114BB
    db $D1,$FF,$50,$7F,$9E,$9C,$12,$12,$FC,$01,$7F,$40,$88,$7D,$2D,$C0 ; $D114CB
    db $00,$A2,$7F,$62,$3D,$40,$C1,$61,$73,$60,$72,$41,$52,$05,$03,$11 ; $D114DB
    db $20,$11,$29,$30,$FF,$31,$13,$12,$33,$01,$12,$73,$12,$71,$11,$79 ; $D114EB
    db $19,$07,$FF,$40,$54,$21,$C0,$A0,$C0,$36,$80,$20,$90,$A0,$40,$11 ; $D114FB
    db $C8,$48,$30,$5E,$B3,$8E,$41,$03,$01,$F0,$10,$F8,$88,$78,$0F,$00 ; $D1150B
    db $80,$F0,$18,$3C,$DF,$7F,$30,$2B,$7F,$70,$97,$88,$60,$90,$00,$7C ; $D1151B
    db $20,$78,$38,$66,$2C,$74,$2E,$72,$27,$73,$08,$00,$88,$80,$04,$74 ; $D1152B
    db $43,$1A,$10,$B9,$6B,$1A,$18,$1D,$18,$14,$14,$3E,$00,$1C,$26,$00 ; $D1153B
    db $3C,$08,$5C,$08,$7C,$08,$BC,$88,$FC,$07,$86,$22,$02,$06,$02,$44 ; $D1154B
    db $04,$24,$04,$A4,$04,$64,$24,$01,$00,$C4,$44,$67,$71,$62,$70,$42 ; $D1155B
    db $51,$FC,$02,$FF,$16,$71,$14,$FF,$13,$F8,$02,$FF,$18,$DC,$18,$18 ; $D1156B
    db $9C,$90,$4E,$04,$08,$01,$04,$0A,$04,$1C,$02,$02,$3C,$81,$31,$84 ; $D1157B
    db $84,$8C,$84,$1C,$80,$0B,$04,$1E,$06,$3E,$02,$3E,$60,$3E,$FF,$7C ; $D1158B
    db $90,$1C,$78,$01,$2E,$78,$3E,$64,$2F,$74,$2F,$9B,$7F,$72,$42,$5C ; $D1159B
    db $1D,$3E,$04,$04,$16,$02,$1A,$12,$1B,$19,$1D,$19,$15,$14,$06,$1F ; $D115AB
    db $9F,$A0,$07,$89,$1F,$90,$90,$1C,$7F,$01,$FF,$F7,$03,$7F,$6D,$7D ; $D115BB
    db $01,$22,$7F,$E0,$D0,$9F,$90,$03,$A8,$10,$B0,$48,$08,$70,$3A,$31 ; $D115CB
    db $90,$5C,$9F,$F0,$01,$23,$F8,$98,$00,$7F,$0C,$12,$0A,$25,$2B,$F0 ; $D115DB
    db $31,$3A,$60,$81,$E6,$FD,$00,$A0,$01,$00,$21,$00,$5E,$0C,$9B,$1A ; $D115EB
    db $B1,$11,$25,$21,$21,$7A,$27,$DD,$2C,$77,$39,$E0,$68,$B8,$46,$01 ; $D115FB
    db $49,$E9,$4E,$E8,$07,$53,$A0,$01,$AF,$94,$D7,$5B,$00,$B1,$21,$D0 ; $D1160B
    db $A1,$AF,$52,$7C,$22,$25,$21,$1E,$8C,$DD,$F1,$10,$01,$FF,$05,$8C ; $D1161B
    db $7E,$41,$3F,$3F,$0D,$33,$20,$40,$29,$3B,$C2,$7F,$33,$35,$FD,$AE ; $D1162B
    db $7F,$74,$01,$8E,$49,$B2,$00,$71,$21,$71,$30,$E1,$72,$02,$00,$1C ; $D1163B
    db $9D,$98,$12,$D9,$95,$D2,$FD,$13,$D2,$FF,$FF,$01,$49,$C7,$C0,$80 ; $D1164B
    db $2D,$CB,$53,$C6,$52,$C5,$61,$07,$74,$46,$43,$42,$5C,$D4,$02,$FF ; $D1165B
    db $17,$10,$0F,$3F,$01,$3E,$1E,$03,$AB,$FF,$80,$E1,$06,$2F,$80,$EF ; $D1166B
    db $07,$0F,$3A,$00,$FF,$9C,$A0,$07,$06,$AF,$31,$C0,$65,$B2,$FF,$7D ; $D1167B
    db $00,$FF,$7C,$20,$F9,$00,$FE,$1C,$33,$F3,$12,$FF,$7F,$D1,$04,$FF ; $D1168B
    db $D4,$C0,$20,$5E,$4C,$47,$FF,$20,$5E,$3B,$2A,$7F,$76,$3F,$8F,$47 ; $D1169B
    db $01,$F1,$FF,$3F,$7F,$04,$F8,$FF,$9F,$7F,$04,$FC,$FF,$4F,$7F,$FF ; $D116AB
    db $04,$FF,$E6,$3C,$7F,$E3,$1F,$00,$0B,$26,$10,$63,$00,$70,$50,$70 ; $D116BB
    db $6C,$28,$36,$10,$35,$14,$82,$F0,$5D,$0C,$13,$13,$24,$78,$5C,$04 ; $D116CB
    db $09,$2E,$02,$3B,$21,$77,$75,$EB,$06,$7F,$EB,$04,$10,$96,$1E,$02 ; $D116DB
    db $05,$01,$03,$01,$02,$00,$02,$02,$86,$25,$FE,$03,$42,$3C,$1D,$18 ; $D116EB
    db $06,$04,$0B,$60,$03,$01,$00,$E7,$80,$FF,$1D,$81,$7E,$7E,$91,$2D ; $D116FB
    db $80,$7E,$F9,$CF,$32,$80,$01,$FC,$F5,$52,$39,$C0,$90,$45,$FF,$00 ; $D1170B
    db $02,$CC,$73,$00,$CE,$04,$0E,$CC,$01,$11,$B3,$1A,$31,$C2,$C2,$41 ; $D1171B
    db $CF,$00,$18,$A0,$7F,$0C,$0E,$C6,$01,$08,$0A,$7E,$C0,$74,$05,$02 ; $D1172B
    db $0E,$01,$01,$41,$1E,$33,$06,$B8,$09,$01,$0F,$07,$03,$1F,$01,$1F ; $D1173B
    db $1F,$D7,$1B,$FF,$EF,$15,$FF,$E8,$18,$1F,$9B,$5D,$84,$10,$00,$58 ; $D1174B
    db $10,$68,$50,$57,$29,$3E,$11,$10,$0F,$AA,$7D,$78,$64,$08,$01,$7F ; $D1175B
    db $7D,$01,$1F,$29,$7D,$0E,$A0,$90,$50,$80,$BF,$47,$56,$7E,$40,$1F ; $D1176B
    db $F0,$10,$D0,$30,$23,$E0,$20,$5C,$03,$70,$70,$88,$68,$10,$18,$30 ; $D1177B
    db $50,$68,$00,$08,$38,$10,$3C,$39,$09,$04,$5F,$18,$18,$58,$67,$08 ; $D1178B
    db $01,$38,$58,$45,$2D,$1B,$04,$1D,$04,$70,$04,$1F,$20,$D0,$10,$40 ; $D1179B
    db $52,$C3,$A0,$EC,$4C,$88,$E0,$1F,$B0,$10,$90,$46,$30,$C5,$74,$20 ; $D117AB
    db $8B,$43,$10,$04,$16,$87,$14,$07,$02,$0B,$00,$0A,$08,$06,$01,$06 ; $D117BB
    db $05,$01,$58,$B3,$1F,$DD,$F9,$68,$0D,$0E,$01,$07,$83,$01,$07,$AA ; $D117CB
    db $E6,$00,$FD,$04,$C3,$2D,$79,$FB,$02,$C3,$86,$7F,$50,$58,$89,$60 ; $D117DB
    db $78,$7F,$39,$11,$3D,$3B,$48,$0A,$7F,$18,$91,$7F,$2E,$98,$4B,$04 ; $D117EB
    db $47,$0D,$06,$BA,$E0,$04,$1A,$02,$08,$10,$14,$98,$14,$54,$B0,$A0 ; $D117FB
    db $48,$11,$01,$03,$03,$16,$02,$12,$06,$0C,$04,$8C,$84,$E4,$4C,$F8 ; $D1180B
    db $48,$15,$00,$11,$15,$23,$00,$0B,$09,$08,$07,$04,$02,$04,$06,$02 ; $D1181B
    db $19,$31,$1F,$7D,$01,$87,$01,$0D,$03,$06,$61,$87,$06,$06,$50,$83 ; $D1182B
    db $50,$40,$E0,$10,$00,$6E,$B2,$BA,$9D,$05,$02,$88,$31,$E8,$18,$AA ; $D1183B
    db $7D,$50,$86,$C1,$60,$60,$7F,$00,$98,$30,$70,$69,$2C,$08,$00,$07 ; $D1184B
    db $1D,$09,$19,$0E,$6E,$8C,$2E,$01,$D8,$88,$59,$08,$3D,$04,$1E,$BA ; $D1185B
    db $D7,$DC,$DF,$C7,$60,$0E,$98,$E0,$30,$80,$58,$F9,$C7,$08,$EA,$22 ; $D1186B
    db $9B,$98,$F7,$98,$03,$18,$C5,$06,$14,$B3,$02,$25,$07,$15,$08,$01 ; $D1187B
    db $48,$68,$7C,$FF,$09,$F0,$C5,$7D,$1F,$06,$C2,$37,$0E,$3D,$0D,$69 ; $D1188B
    db $19,$78,$18,$F9,$09,$F9,$F9,$23,$70,$A9,$34,$72,$60,$43,$A6,$1F ; $D1189B
    db $51,$7F,$50,$FF,$90,$89,$1F,$F0,$02,$7F,$1A,$1A,$0D,$1E,$07,$0B ; $D118AB
    db $0E,$02,$7F,$70,$15,$7F,$09,$01,$92,$7F,$3E,$00,$80,$A8,$C0,$92 ; $D118BB
    db $7F,$D3,$7F,$5F,$7F,$03,$07,$04,$05,$00,$01,$02,$9D,$01,$F4,$BC ; $D118CB
    db $0F,$7D,$B3,$03,$2C,$7B,$01,$ED,$87,$F6,$05,$7C,$FF,$0C,$81,$49 ; $D118DB
    db $7F,$00,$31,$5F,$40,$33,$BB,$33,$E6,$FB,$03,$04,$3D,$60,$02,$59 ; $D118EB
    db $6E,$4E,$72,$70,$77,$02,$03,$E3,$05,$01,$0B,$08,$41,$03,$E0,$00 ; $D118FB
    db $A5,$75,$40,$FA,$01,$C1,$34,$35,$76,$B7,$D9,$C1,$08,$70,$1E,$02 ; $D1190B
    db $04,$10,$3C,$04,$08,$10,$48,$97,$10,$FE,$EB,$17,$CE,$16,$0C,$02 ; $D1191B
    db $1E,$06,$2C,$04,$3C,$0C,$78,$08,$F7,$87,$FF,$5D,$7F,$B3,$6D,$B3 ; $D1192B
    db $04,$E0,$B7,$7F,$CF,$01,$49,$56,$14,$2A,$05,$E0,$F9,$18,$1F,$F7 ; $D1193B
    db $58,$00,$54,$3A,$05,$06,$5C,$1D,$33,$01,$09,$13,$1C,$0A,$1E,$01 ; $D1194B
    db $16,$01,$17,$04,$00,$F5,$13,$0C,$06,$00,$07,$04,$01,$0F,$6E,$06 ; $D1195B
    db $01,$CB,$F7,$A0,$D6,$60,$18,$24,$10,$B8,$1C,$88,$8C,$C8,$0C,$48 ; $D1196B
    db $4C,$20,$00,$D0,$80,$68,$40,$2C,$24,$A4,$A4,$94,$04,$D4,$44,$D4 ; $D1197B
    db $04,$12,$15,$10,$15,$05,$00,$16,$04,$1A,$14,$14,$0B,$0F,$04,$04 ; $D1198B
    db $03,$0F,$07,$0D,$05,$1D,$05,$1E,$02,$01,$B9,$6B,$1F,$11,$0F,$08 ; $D1199B
    db $07,$07,$E8,$0C,$28,$2C,$60,$84,$08,$84,$94,$40,$70,$D8,$80,$50 ; $D119AB
    db $FF,$87,$F4,$24,$74,$84,$FC,$84,$BC,$C4,$F4,$CC,$F8,$88,$4A,$83 ; $D119BB
    db $E0,$37,$B8,$73,$EE,$EE,$02,$01,$AF,$C9,$91,$04,$9F,$C0,$7F,$7E ; $D119CB
    db $03,$B3,$7F,$EC,$04,$7B,$84,$00,$A9,$A5,$99,$CB,$00,$DE,$4D,$9E ; $D119DB
    db $09,$0C,$01,$0C,$03,$7D,$03,$18,$81,$7F,$07,$00,$06,$03,$DE,$7E ; $D119EB
    db $CE,$01,$0E,$76,$00,$F7,$3D,$06,$06,$02,$0E,$83,$3C,$88,$20,$30 ; $D119FB
    db $38,$80,$01,$68,$18,$00,$A0,$30,$EC,$FE,$00,$1C,$D8,$88,$08,$00 ; $D11A0B
    db $1D,$58,$08,$78,$3D,$47,$CE,$AE,$BF,$E6,$31,$42,$22,$02,$0B,$77 ; $D11A1B
    db $2D,$02,$3B,$73,$D4,$1B,$07,$4D,$81,$47,$7F,$2A,$75,$30,$77,$3A ; $D11A2B
    db $D0,$38,$90,$E8,$FF,$D2,$75,$80,$3B,$30,$30,$E8,$C8,$88,$FF,$F7 ; $D11A3B
    db $02,$7F,$5E,$C5,$96,$C7,$75,$7F,$F9,$C5,$CD,$71,$80,$60,$90,$20 ; $D11A4B
    db $58,$30,$10,$38,$70,$28,$E0,$D0,$B8,$A0,$5C,$10,$8C,$7F,$48,$43 ; $D11A5B
    db $48,$7F,$07,$14,$D8,$08,$6C,$44,$E0,$04,$2B,$0B,$00,$08,$07,$FE ; $D11A6B
    db $05,$1A,$5B,$08,$7F,$E1,$34,$10,$18,$1C,$10,$14,$18,$34,$04,$00 ; $D11A7B
    db $10,$98,$18,$7F,$2C,$24,$00,$04,$04,$0C,$04,$2C,$04,$34,$0C,$D5 ; $D11A8B
    db $7D,$B7,$7F,$77,$54,$27,$0C,$0D,$C0,$6A,$10,$06,$28,$24,$0C,$A1 ; $D11A9B
    db $37,$05,$00,$10,$F9,$1E,$3A,$02,$3C,$36,$C7,$BF,$81,$57,$00,$90 ; $D11AAB
    db $99,$01,$25,$C8,$E0,$E5,$95,$80,$00,$28,$28,$50,$08,$3F,$27,$3F ; $D11ABB
    db $00,$1D,$E5,$81,$B8,$01,$78,$08,$40,$00,$68,$F5,$C0,$59,$01,$01 ; $D11ACB
    db $DC,$E8,$F8,$11,$FC,$84,$B8,$FC,$81,$7C,$E0,$EE,$18,$4E,$34,$89 ; $D11ADB
    db $04,$7C,$54,$3C,$F7,$FF,$A0,$83,$F0,$F0,$0B,$04,$0E,$75,$0F,$40 ; $D11AEB
    db $DF,$0C,$3A,$3C,$1E,$3E,$22,$67,$1E,$85,$08,$6B,$07,$86,$16,$02 ; $D11AFB
    db $16,$06,$26,$06,$21,$00,$3F,$3C,$03,$03,$33,$0A,$60,$D0,$10,$60 ; $D11B0B
    db $E3,$FF,$A8,$EA,$30,$D0,$40,$42,$B0,$90,$70,$4A,$70,$EE,$49,$60 ; $D11B1B
    db $E3,$EB,$E3,$03,$C9,$A1,$B5,$10,$F3,$03,$EF,$8B,$D9,$1F,$10,$87 ; $D11B2B
    db $1F,$1F,$A8,$30,$60,$28,$20,$68,$70,$28,$88,$80,$6E,$BD,$11,$CC ; $D11B3B
    db $D8,$88,$7D,$DD,$01,$17,$05,$EA,$51,$03,$C0,$56,$39,$04,$A8,$EB ; $D11B4B
    db $80,$64,$0C,$1A,$0B,$0B,$1D,$1E,$01,$28,$00,$02,$FF,$0A,$C7,$83 ; $D11B5B
    db $02,$14,$1D,$8B,$80,$DB,$26,$50,$C3,$B0,$3A,$80,$98,$4F,$C2,$E0 ; $D11B6B
    db $60,$01,$BF,$BB,$7C,$C1,$1C,$1E,$0C,$18,$1C,$08,$0C,$02,$06,$03 ; $D11B7B
    db $00,$18,$09,$0A,$00,$04,$AF,$75,$9C,$DF,$14,$01,$30,$0E,$12,$7D ; $D11B8B
    db $0B,$0C,$07,$07,$07,$14,$38,$10,$14,$63,$7F,$14,$24,$B6,$7F,$BC ; $D11B9B
    db $ED,$7F,$DA,$7D,$16,$01,$CC,$7F,$3F,$37,$2F,$39,$21,$18,$75,$12 ; $D11BAB
    db $88,$03,$77,$04,$C3,$5F,$37,$27,$39,$39,$AB,$C3,$DF,$C3,$74,$06 ; $D11BBB
    db $80,$83,$E8,$10,$48,$F0,$20,$D0,$50,$75,$60,$51,$2E,$40,$50,$87 ; $D11BCB
    db $18,$08,$98,$98,$EE,$7A,$E1,$FD,$BD,$1D,$49,$56,$87,$0D,$4B,$00 ; $D11BDB
    db $00,$0A,$01,$18,$0B,$10,$09,$19,$1A,$02,$18,$02,$86,$E3,$0F,$08 ; $D11BEB
    db $0E,$09,$0F,$09,$1F,$11,$1D,$13,$1F,$13,$1E,$12,$0E,$0E,$F4,$18 ; $D11BFB
    db $18,$3F,$0B,$04,$A6,$10,$1C,$D8,$01,$C1,$0F,$07,$01,$1C,$0B,$3A ; $D11C0B
    db $14,$08,$00,$17,$B8,$85,$00,$14,$40,$00,$09,$2E,$06,$06,$80,$60 ; $D11C1B
    db $98,$20,$50,$C3,$30,$38,$78,$6F,$D0,$38,$20,$22,$54,$18,$2D,$FF ; $D11C2B
    db $01,$7F,$58,$88,$6C,$44,$99,$3A,$30,$1D,$18,$BA,$02,$00,$5F,$13 ; $D11C3B
    db $13,$04,$08,$07,$2C,$3B,$0C,$08,$B8,$B9,$01,$1C,$24,$60,$1F,$3F ; $D11C4B
    db $18,$0F,$0F,$30,$7C,$14,$16,$07,$7F,$00,$01,$05,$06,$57,$6C,$0C ; $D11C5B
    db $A7,$0A,$0A,$08,$05,$07,$45,$02,$48,$0C,$0B,$01,$A3,$43,$3B,$01 ; $D11C6B
    db $0A,$00,$89,$F0,$00,$48,$90,$38,$0C,$12,$CC,$5F,$06,$01,$1C,$00 ; $D11C7B
    db $1E,$48,$EA,$10,$00,$E8,$C0,$34,$37,$20,$1E,$1B,$00,$01,$12,$02 ; $D11C8B
    db $F6,$02,$00,$02,$7B,$01,$01,$CB,$A7,$85,$A5,$89,$01,$EE,$01,$10 ; $D11C9B
    db $C0,$43,$03,$FC,$FA,$12,$E0,$CC,$58,$24,$0C,$58,$03,$00,$B0,$C0 ; $D11CAB
    db $60,$40,$80,$0E,$55,$FA,$E6,$1C,$11,$7D,$78,$08,$20,$BD,$C0,$C0 ; $D11CBB
    db $03,$0C,$01,$40,$1A,$FF,$0C,$18,$03,$08,$0C,$0F,$07,$09,$0F,$DB ; $D11CCB
    db $01,$FF,$02,$B2,$01,$16,$2B,$80,$70,$60,$B0,$60,$20,$70,$40,$70 ; $D11CDB
    db $80,$E0,$58,$80,$C4,$E8,$DD,$3A,$A0,$00,$DE,$C2,$A3,$45,$00,$14 ; $D11CEB
    db $D8,$58,$D4,$44,$14,$3A,$38,$76,$30,$01,$C0,$0E,$10,$28,$0B,$13 ; $D11CFB
    db $03,$C4,$FF,$2E,$07,$55,$1D,$20,$8E,$02,$24,$27,$65,$FA,$FF,$8C ; $D11D0B
    db $CB,$B8,$48,$5C,$20,$64,$18,$14,$20,$68,$40,$6C,$04,$26,$02,$CC ; $D11D1B
    db $74,$24,$34,$84,$5C,$80,$FF,$58,$08,$BC,$04,$AA,$1D,$72,$CE,$CE ; $D11D2B
    db $DE,$BC,$C0,$FA,$06,$07,$0F,$1F,$0C,$31,$1F,$05,$E1,$1A,$04,$5D ; $D11D3B
    db $79,$80,$C3,$1B,$11,$0B,$EF,$83,$E9,$38,$A4,$28,$94,$8C,$B0,$63 ; $D11D4B
    db $FC,$FE,$62,$00,$FC,$28,$30,$E0,$D0,$A4,$84,$AC,$CC,$01,$8C,$5E ; $D11D5B
    db $02,$0E,$02,$DE,$8E,$58,$A0,$89,$0C,$1E,$77,$12,$1D,$DB,$D3,$87 ; $D11D6B
    db $6F,$21,$64,$AE,$C3,$31,$77,$7F,$01,$DF,$7F,$00,$7F,$46,$39,$08 ; $D11D7B
    db $C0,$01,$39,$60,$F0,$90,$E9,$7B,$C2,$1E,$48,$70,$00,$A3,$3F,$B8 ; $D11D8B
    db $7B,$EA,$3A,$F9,$A9,$79,$38,$7B,$FF,$29,$39,$8B,$F5,$2C,$C5,$AC ; $D11D9B
    db $0F,$25,$35,$A6,$C9,$02,$FD,$10,$00,$0A,$2C,$F1,$41,$C0,$01,$20 ; $D11DAB
    db $DC,$82,$A9,$F0,$F8,$50,$58,$C0,$77,$81,$20,$60,$20,$E7,$A8,$C3 ; $D11DBB
    db $E9,$00,$20,$10,$B7,$3A,$50,$7A,$02,$AC,$78,$3F,$75,$00,$2E,$75 ; $D11DCB
    db $10,$B9,$F9,$04,$03,$4D,$10,$1C,$02,$01,$08,$70,$57,$83,$C4,$01 ; $D11DDB
    db $E8,$08,$09,$01,$F8,$78,$5D,$83,$C0,$3F,$80,$0F,$FE,$0A,$85,$7B ; $D11DEB
    db $03,$D7,$01,$16,$F7,$84,$F7,$00,$7F,$69,$68,$52,$50,$13,$12,$73 ; $D11DFB
    db $48,$73,$0F,$A0,$30,$50,$A0,$8E,$FC,$04,$F3,$4C,$A6,$1F,$08,$EF ; $D11E0B
    db $03,$21,$5A,$58,$55,$51,$07,$01,$84,$C6,$00,$42,$42,$3B,$74,$D8 ; $D11E1B
    db $F3,$42,$42,$31,$D6,$42,$4D,$7E,$7E,$60,$0F,$A4,$F5,$0A,$05,$4B ; $D11E2B
    db $04,$46,$40,$BC,$80,$0F,$57,$51,$EF,$41,$FE,$16,$42,$FC,$FC,$44 ; $D11E3B
    db $0F,$74,$40,$30,$34,$03,$AE,$1C,$03,$1F,$13,$1F,$15,$15,$72,$C6 ; $D11E4B
    db $FF,$0B,$00,$0A,$51,$3A,$D8,$F6,$20,$D0,$0B,$E0,$E8,$50,$5C,$5B ; $D11E5B
    db $43,$9C,$FF,$30,$D6,$27,$A4,$04,$EA,$25,$1C,$BF,$4A,$D3,$C6,$14 ; $D11E6B
    db $E2,$FB,$01,$1F,$1C,$3B,$07,$D7,$D1,$76,$02,$9B,$6E,$18,$2A,$A1 ; $D11E7B
    db $FF,$C0,$2A,$E4,$45,$C4,$F8,$A1,$79,$40,$FC,$08,$F5,$09,$07,$5B ; $D11E8B
    db $00,$C0,$FA,$05,$6F,$60,$1F,$60,$B0,$90,$18,$F2,$BF,$A0,$10,$57 ; $D11E9B
    db $1D,$B1,$00,$F0,$3B,$FB,$1D,$20,$00,$C0,$00                     ; $D11EAB
; ---- end of region ----

    db $00,$00,$F3,$7F,$6E,$6F,$EA,$66,$66,$56,$C4,$4D,$42,$45,$C0,$30 ; $D11EB6
    db $FF,$03,$3D,$03,$BB,$02,$39,$02,$97,$01,$15,$01,$D1,$00,$CC,$00 ; $D11EC6
    db $02,$00,$00,$00,$01,$00,$00,$00,$01,$00,$03,$00,$03,$00,$07,$00 ; $D11ED6
    db $02,$01,$0A,$1F,$15,$1F,$02,$02,$01,$03,$00,$03,$00,$03,$04,$07 ; $D11EE6
    db $00,$1F,$00,$1F,$00,$1F,$00,$00,$00,$00,$00,$80,$C0,$40,$E0,$20 ; $D11EF6
    db $A0,$50,$A8,$F0,$50,$F8,$00,$00,$00,$00,$80,$80,$40,$C0,$20,$E0 ; $D11F06
    db $10,$F0,$08,$F8,$04,$FC,$1F,$1F,$1F,$1F,$1F,$1F,$03,$1B,$03,$03 ; $D11F16
    db $03,$03,$03,$02,$00,$00,$00,$1F,$00,$1F,$00,$1F,$1C,$1F,$00,$03 ; $D11F26
    db $00,$03,$01,$03,$02,$02,$F8,$F8,$F8,$F0,$E0,$F0,$E0,$E0,$C0,$C0 ; $D11F36
    db $00,$80,$00,$00,$00,$00,$04,$FC,$08,$F8,$10,$F0,$20,$E0,$40,$C0 ; $D11F46
    db $80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$02,$07,$04 ; $D11F56
    db $05,$0A,$15,$0F,$0A,$1F,$00,$00,$00,$00,$01,$01,$02,$03,$04,$07 ; $D11F66
    db $08,$0F,$10,$1F,$20,$3F,$00,$00,$80,$00,$C0,$00,$C0,$00,$E0,$20 ; $D11F76
    db $40,$80,$50,$F8,$A8,$F8,$40,$40,$80,$C0,$00,$C0,$00,$C0,$00,$E0 ; $D11F86
    db $00,$F8,$00,$F8,$00,$F8,$1F,$1F,$1F,$0F,$07,$0F,$07,$07,$03,$03 ; $D11F96
    db $00,$01,$00,$00,$00,$00,$20,$3F,$10,$1F,$08,$0F,$04,$07,$02,$03 ; $D11FA6
    db $01,$01,$00,$00,$00,$00,$F8,$F8,$F8,$F8,$F8,$F8,$C0,$D8,$C0,$C0 ; $D11FB6
    db $C0,$C0,$C0,$40,$00,$00,$00,$F8,$00,$F8,$00,$F8,$38,$F8,$00,$C0 ; $D11FC6
    db $00,$C0,$80,$C0,$40,$40,$61,$62,$63,$64,$65,$66,$67,$68,$69,$6A ; $D11FD6
    db $6B,$6C,$6D,$6E,$6F,$70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$7A ; $D11FE6
    db $20,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$26,$23,$5F,$45,$5F ; $D11FF6
    db $2E,$3E,$3C,$0F,$0D,$0D,$0D,$0C,$0C,$0D,$0D,$07,$0B,$0F,$0C,$11 ; $D12006
    db $0F,$0D,$0C,$0D,$0F,$0C,$0D,$0F,$0F,$11,$0F,$0F,$0D,$08,$10,$10 ; $D12016
    db $10,$10,$10,$10,$10,$10,$10,$10,$0F,$10,$10,$10,$10,$06,$10,$10 ; $D12026

; ---- RNC method 2 block: 7874 bytes packed, 14788 unpacked (tools/rnc.py) ($D12036-$D13F09) ----
    db $52,$4E,$43,$02,$00,$00,$39,$C4,$00,$00,$1E,$C2,$F1,$DD,$6F,$4D ; $D12036
    db $02,$02,$05,$00,$00,$DE,$F7,$7B,$1E,$53,$DC,$42,$9A,$3A,$58,$32 ; $D12046
    db $18,$2A,$D6,$21,$94,$21,$52,$19,$10,$11,$CE,$00,$8C,$00,$8A,$00 ; $D12056
    db $48,$00,$80,$00,$DA,$7B,$56,$6B,$D4,$62,$90,$5A,$4E,$52,$0C,$42 ; $D12066
    db $CA,$31,$88,$29,$46,$21,$04,$19,$C2,$08,$5E,$52,$D8,$39,$56,$31 ; $D12076
    db $12,$21,$5E,$63,$1C,$00,$20,$79,$42,$93,$00,$01,$47,$05,$02,$85 ; $D12086
    db $2D,$3B,$03,$00,$04,$C3,$00,$05,$00,$06,$00,$07,$00,$08,$00,$09 ; $D12096
    db $00,$0A,$C2,$27,$3D,$0B,$00,$0C,$E3,$00,$0D,$00,$0E,$00,$0F,$00 ; $D120A6
    db $10,$00,$11,$00,$12,$00,$13,$00,$14,$E5,$23,$3D,$15,$CB,$00,$16 ; $D120B6
    db $00,$17,$00,$18,$00,$19,$00,$1A,$00,$1B,$00,$1C,$00,$1D,$00,$1E ; $D120C6
    db $00,$1F,$F0,$23,$6B,$21,$00,$22,$B9,$78,$00,$23,$00,$24,$00,$25 ; $D120D6
    db $00,$26,$00,$27,$00,$28,$00,$29,$00,$2A,$00,$2B,$00,$2C,$21,$3F ; $D120E6
    db $2D,$00,$5C,$2E,$BC,$00,$2F,$00,$30,$00,$31,$00,$32,$00,$33,$00 ; $D120F6
    db $34,$00,$35,$00,$36,$00,$37,$00,$38,$21,$3F,$39,$2E,$00,$3A,$5E ; $D12106
    db $00,$3B,$00,$3C,$00,$3D,$00,$3E,$00,$3F,$00,$40,$00,$41,$00,$42 ; $D12116
    db $00,$43,$00,$44,$21,$3F,$07,$45,$00,$46,$00,$47,$40,$81,$49,$00 ; $D12126
    db $4A,$B8,$78,$00,$4B,$00,$4C,$00,$4D,$00,$4E,$00,$4F,$00,$50,$21 ; $D12136
    db $3F,$51,$00,$5C,$52,$BC,$00,$53,$00,$54,$00,$55,$00,$56,$00,$57 ; $D12146
    db $00,$58,$00,$59,$00,$5A,$00,$5B,$00,$5C,$21,$3F,$5D,$2E,$00,$5E ; $D12156
    db $5E,$00,$5F,$00,$60,$00,$61,$00,$62,$00,$63,$00,$64,$00,$65,$00 ; $D12166
    db $66,$00,$67,$00,$68,$21,$3F,$17,$69,$00,$6A,$2F,$00,$6B,$00,$6C ; $D12176
    db $00,$6D,$00,$6E,$00,$6F,$00,$70,$00,$71,$00,$72,$00,$73,$00,$74 ; $D12186
    db $21,$2E,$3F,$75,$5D,$00,$76,$00,$77,$00,$78,$00,$79,$00,$7A,$00 ; $D12196
    db $7B,$00,$7C,$00,$7D,$00,$7E,$00,$7F,$3E,$8F,$20,$00,$5C,$81,$7A ; $D121A6
    db $00,$82,$00,$83,$00,$84,$00,$85,$00,$86,$00,$87,$00,$88,$00,$89 ; $D121B6
    db $5D,$CF,$8B,$3E,$D5,$20,$00,$17,$8D,$00,$8E,$2F,$00,$8F,$00,$90 ; $D121C6
    db $00,$91,$00,$92,$00,$93,$00,$94,$00,$95,$00,$96,$00,$97,$00,$98 ; $D121D6
    db $21,$0B,$3F,$99,$00,$9A,$97,$00,$9B,$00,$9C,$00,$9D,$00,$9E,$00 ; $D121E6
    db $9F,$00,$A0,$00,$A1,$00,$A2,$00,$A3,$00,$A4,$CA,$23,$01,$A5,$E5 ; $D121F6
    db $00,$A6,$00,$A7,$00,$A8,$00,$A9,$00,$AA,$00,$AB,$00,$AC,$00,$AD ; $D12206
    db $00,$AE,$00,$AF,$E1,$21,$3D,$B0,$00,$B1,$72,$00,$B2,$00,$B3,$00 ; $D12216
    db $B4,$00,$B5,$00,$B6,$00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$BB,$F2 ; $D12226
    db $23,$7F,$BC,$E3,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00,$C1,$00,$C2 ; $D12236
    db $00,$C3,$00,$C4,$F5,$2D,$43,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00 ; $D12246
    db $7D,$C9,$95,$FD,$25,$F7,$00,$E2,$7B,$00,$04,$04,$40,$03,$40,$42 ; $D12256
    db $60,$60,$F5,$0C,$0F,$9F,$00,$0C,$D3,$C9,$10,$10,$19,$03,$28,$28 ; $D12266
    db $05,$38,$C7,$00,$28,$3D,$01,$08,$0F,$EE,$05,$2B,$78,$01,$0E,$00 ; $D12276
    db $08,$08,$00,$94,$94,$48,$48,$DC,$DC,$6D,$6D,$F7,$0E,$0F,$80,$1A ; $D12286
    db $00,$40,$40,$14,$14,$AA,$AA,$3D,$54,$54,$10,$0F,$E0,$10,$00,$E0 ; $D12296
    db $E2,$C0,$E0,$07,$E1,$E2,$A0,$E0,$C3,$02,$03,$A1,$C0,$C0,$A0,$06 ; $D122A6
    db $0F,$E0,$E3,$06,$70,$C2,$03,$80,$E1,$1D,$80,$E0,$02,$D7,$F7,$03 ; $D122B6
    db $75,$43,$21,$C1,$03,$61,$00,$60,$F5,$0E,$EF,$03,$81,$02,$02,$01 ; $D122C6
    db $81,$03,$37,$00,$43,$02,$92,$05,$0F,$C3,$42,$0F,$00,$2E,$3D,$C0 ; $D122D6
    db $F5,$0F,$83,$C3,$50,$50,$A8,$A8,$F0,$F0,$F8,$F8,$B8,$F8,$58,$F8 ; $D122E6
    db $DE,$0C,$0F,$01,$D3,$EA,$F8,$CB,$08,$00,$38,$28,$70,$10,$01,$00 ; $D122F6
    db $28,$00,$20,$08,$60,$48,$40,$48,$28,$68,$ED,$71,$31,$01,$40,$78 ; $D12306
    db $81,$01,$28,$58,$10,$00,$38,$E7,$03,$01,$70,$80,$0F,$81,$02,$03 ; $D12316
    db $05,$07,$02,$06,$0F,$04,$00,$E6,$E2,$04,$05,$0F,$00,$04,$E2,$E6 ; $D12326
    db $A8,$C9,$75,$02,$10,$8F,$01,$F0,$0E,$00,$20,$E0,$D0,$01,$F0,$20 ; $D12336
    db $30,$00,$10,$0F,$1F,$E7,$0E,$0F,$C0,$67,$45,$10,$EC,$13,$FF,$00 ; $D12346
    db $2E,$01,$2E,$DB,$DB,$50,$51,$DA,$DB,$E9,$10,$0F,$1E,$85,$01,$09 ; $D12356
    db $37,$0C,$FC,$FC,$6A,$6E,$00,$72,$00,$76,$55,$77,$34,$37,$00,$33 ; $D12366
    db $0B,$78,$3A,$06,$0F,$0A,$3B,$51,$00,$B3,$04,$D4,$3A,$91,$03,$87 ; $D12376
    db $4B,$31,$AE,$09,$3F,$3E,$BA,$BA,$7E,$7E,$BC,$BE,$7C,$7E,$3A,$3E ; $D12386
    db $44,$5C,$81,$81,$00,$80,$08,$0F,$94,$41,$F7,$FD,$18,$3D,$C5,$F7 ; $D12396
    db $07,$EB,$B8,$E5,$D1,$F1,$91,$E5,$95,$42,$12,$55,$05,$1A,$4A,$46 ; $D123A6
    db $4E,$2F,$07,$90,$0E,$F1,$C2,$85,$F5,$02,$72,$05,$75,$0A,$7A,$46 ; $D123B6
    db $7E,$07,$3F,$21,$33,$70,$33,$01,$38,$E8,$0B,$C3,$2E,$43,$03,$38 ; $D123C6
    db $E3,$E3,$C3,$63,$F3,$F3,$72,$D3,$80,$F3,$D1,$A2,$0B,$78,$03,$C3 ; $D123D6
    db $0F,$43,$A3,$C6,$0F,$52,$B3,$0F,$08,$A0,$D3,$08,$7B,$87,$33,$E0 ; $D123E6
    db $1D,$03,$E1,$F8,$C1,$7A,$01,$08,$00,$22,$23,$E1,$58,$B8,$B8,$59 ; $D123F6
    db $A8,$1A,$44,$19,$44,$56,$EB,$F5,$06,$0F,$18,$01,$00,$F9,$08,$FB ; $D12406
    db $01,$FE,$46,$B9,$ED,$44,$13,$38,$33,$E0,$3D,$F3,$38,$00,$FF,$01 ; $D12416
    db $FE,$F5,$09,$3F,$D6,$49,$29,$1C,$2D,$CE,$7F,$77,$5F,$A0,$BC,$5C ; $D12426
    db $64,$A0,$C8,$59,$88,$29,$59,$2C,$5D,$6E,$9F,$17,$BF,$20,$7C,$44 ; $D12436
    db $FC,$80,$F8,$08,$F9,$28,$3D,$07,$F1,$00,$E8,$00,$DC,$75,$C5,$78 ; $D12446
    db $CF,$09,$08,$5C,$00,$A0,$B3,$B5,$11,$12,$B1,$B1,$23,$E3,$1A,$1D ; $D12456
    db $5D,$62,$7D,$83,$34,$0C,$B1,$B7,$10,$13,$0F,$18,$00,$1F,$40,$7F ; $D12466
    db $01,$FF,$04,$FC,$06,$2B,$00,$03,$3A,$FF,$07,$9C,$89,$7D,$F8,$F5 ; $D12476
    db $09,$3F,$C7,$13,$33,$9D,$65,$4E,$CA,$8E,$FC,$82,$78,$4C,$BE,$EA ; $D12486
    db $EE,$67,$79,$03,$0F,$05,$FD,$4A,$CE,$8C,$0C,$2A,$FA,$0C,$FE,$0F ; $D12496
    db $61,$38,$7F,$20,$33,$84,$EA,$07,$BF,$FA,$00,$F2,$67,$83,$1E,$84 ; $D124A6
    db $09,$3F,$80,$80,$C0,$C0,$00,$E0,$E0,$F0,$F0,$70,$7B,$70,$08,$0F ; $D124B6
    db $ED,$19,$A3,$49,$01,$03,$EF,$01,$0E,$07,$7D,$0F,$0C,$BE,$D1,$04 ; $D124C6
    db $00,$35,$68,$6E,$65,$C3,$78,$7B,$A2,$B6,$60,$74,$B6,$B6,$02,$03 ; $D124D6
    db $1C,$DC,$CA,$08,$0F,$06,$B5,$CB,$14,$56,$BE,$7F,$01,$0B,$AB,$01 ; $D124E6
    db $18,$AF,$29,$30,$28,$B4,$AC,$D4,$CC,$0C,$54,$89,$D5,$18,$94,$1B ; $D124F6
    db $17,$08,$39,$20,$38,$A4,$BC,$C4,$DC,$04,$5C,$81,$DD,$10,$9C,$13 ; $D12506
    db $1F,$31,$44,$77,$1D,$01,$58,$63,$3F,$8C,$AD,$D5,$F1,$08,$00,$85 ; $D12516
    db $45,$74,$C2,$22,$ED,$9D,$6B,$47,$32,$21,$70,$78,$BE,$BC,$76,$7F ; $D12526
    db $05,$C5,$02,$E2,$8D,$FD,$43,$7F,$20,$3F,$70,$7F,$BC,$BF,$CE,$0F ; $D12536
    db $C0,$CE,$FD,$70,$B5,$0B,$1F,$DC,$3B,$0B,$03,$8F,$49,$08,$2E,$00 ; $D12546
    db $4B,$BD,$6F,$F9,$EB,$F4,$F5,$58,$FA,$A4,$FD,$81,$7F,$AD,$92,$6F ; $D12556
    db $61,$4B,$77,$E9,$F7,$F4,$FB,$5A,$FD,$A5,$FE,$01,$FE,$80,$7F,$61 ; $D12566
    db $9F,$3C,$9D,$73,$0F,$4B,$0B,$5B,$E1,$0F,$3F,$0A,$75,$68,$C2,$F8 ; $D12576
    db $DB,$C1,$03,$B8,$39,$0B,$5B,$BE,$6A,$F5,$D1,$86,$28,$5B,$C0,$FB ; $D12586
    db $D1,$EA,$00,$BB,$19,$A2,$9B,$7C,$E3,$3C,$C2,$3D,$73,$EB,$5D,$89 ; $D12596
    db $3B,$46,$FB,$01,$1C,$E7,$00,$DF,$41,$F1,$08,$00,$B2,$EB,$73,$0B ; $D125A6
    db $E1,$F9,$13,$18,$E1,$FA,$10,$B8,$E8,$48,$F3,$B3,$E8,$E2,$1B,$E1 ; $D125B6
    db $1A,$F3,$08,$03,$F8,$F1,$0A,$C0,$F3,$5B,$E3,$EB,$13,$F9,$26,$00 ; $D125C6
    db $FB,$01,$74,$F8,$7C,$81,$0A,$2E,$3F,$A2,$BC,$10,$F6,$92,$CF,$E6 ; $D125D6
    db $FF,$ED,$7E,$9A,$62,$77,$14,$BF,$B9,$6F,$00,$F3,$92,$75,$C6,$29 ; $D125E6
    db $ED,$33,$9A,$66,$72,$4F,$B4,$CF,$69,$9F,$F3,$77,$07,$EF,$00,$DE ; $D125F6
    db $00,$FC,$70,$0D,$7B,$3E,$00,$F6,$0A,$E2,$7B,$30,$C0,$40,$E3,$81 ; $D12606
    db $81,$65,$66,$D7,$D8,$5E,$E1,$BB,$C7,$93,$0C,$10,$F0,$40,$C0,$80 ; $D12616
    db $0F,$64,$67,$D0,$DF,$40,$FF,$71,$83,$F2,$E0,$52,$F3,$03,$EC,$03 ; $D12626
    db $BF,$EB,$7C,$09,$0A,$BF,$13,$5C,$32,$70,$63,$7F,$28,$D6,$53,$AF ; $D12636
    db $9A,$7B,$F9,$FB,$1C,$FC,$8D,$7D,$12,$33,$0F,$00,$FE,$03,$10,$FF ; $D12646
    db $1A,$FB,$0F,$1D,$0D,$FD,$21,$CB,$3F,$FE,$8E,$7D,$E1,$AE,$43,$4B ; $D12656
    db $7D,$F0,$0A,$73,$3F,$00,$30,$60,$01,$02,$8A,$8A,$14,$14,$0A,$39 ; $D12666
    db $39,$7A,$7A,$3D,$0E,$B0,$02,$0F,$15,$73,$7D,$80,$1B,$A0,$7B,$20 ; $D12676
    db $20,$80,$80,$40,$1E,$40,$80,$80,$10,$0F,$FF,$13,$04,$A4,$01,$02 ; $D12686
    db $03,$40,$D8,$05,$05,$03,$1E,$03,$06,$07,$08,$0F,$1F,$01,$00,$01 ; $D12696
    db $03,$7F,$77,$0A,$80,$FF,$60,$BF,$6F,$E0,$75,$60,$80,$A8,$0A,$0A ; $D126A6
    db $C5,$C5,$12,$06,$F2,$15,$ED,$20,$FF,$0D,$D6,$03,$04,$0F,$05,$FD ; $D126B6
    db $DF,$00,$25,$01,$0F,$F7,$E0,$0B,$D7,$BF,$1D,$72,$FE,$FC,$03,$3F ; $D126C6
    db $C0,$73,$7C,$AE,$AE,$F2,$F5,$B7,$B4,$F9,$FA,$0F,$10,$68,$70,$60 ; $D126D6
    db $7F,$0F,$F0,$F7,$B4,$B7,$15,$F8,$FB,$8C,$0E,$77,$0F,$3B,$29,$07 ; $D126E6
    db $3D,$85,$03,$09,$3F,$71,$E9,$FF,$F4,$FF,$D8,$3F,$19,$06,$4B,$88 ; $D126F6
    db $16,$26,$02,$8B,$97,$5D,$83,$0F,$18,$80,$32,$08,$F7,$06,$39,$03 ; $D12706
    db $0E,$8C,$1D,$DE,$16,$F5,$0B,$E7,$47,$43,$3F,$70,$53,$C3,$F2,$09 ; $D12716
    db $3F,$65,$EB,$B0,$F3,$D9,$B8,$6C,$75,$92,$DF,$0D,$E5,$2A,$DD,$8C ; $D12726
    db $FC,$53,$30,$CF,$D9,$E7,$2C,$F3,$16,$F9,$0F,$F8,$23,$FC,$9D,$6E ; $D12736
    db $DD,$3E,$FF,$DE,$3A,$43,$DF,$1C,$41,$F7,$05,$1E,$F3,$00,$E3,$09 ; $D12746
    db $3F,$5D,$58,$7A,$AD,$CF,$C3,$8F,$5C,$BC,$F8,$18,$30,$D6,$FE,$25 ; $D12756
    db $FB,$45,$3B,$68,$97,$EB,$97,$BF,$4F,$A7,$CF,$CF,$E7,$15,$E3,$84 ; $D12766
    db $73,$8A,$71,$FF,$15,$35,$F0,$77,$FB,$3C,$70,$91,$9E,$FB,$0A,$DD ; $D12776
    db $FF,$7A,$B4,$06,$B8,$5E,$E1,$E5,$41,$E2,$40,$AC,$4F,$B6,$5B,$F7 ; $D12786
    db $19,$E7,$1F,$EE,$1F,$BF,$1E,$BC,$1E,$BF,$1C,$B5,$18,$A4,$19,$AB ; $D12796
    db $11,$F8,$EE,$73,$E1,$39,$77,$E3,$C5,$9E,$01,$EE,$09,$3F,$5D,$D2 ; $D127A6
    db $78,$9E,$E0,$7D,$F0,$2B,$ED,$D2,$38,$C5,$8E,$97,$7D,$6E,$B9,$C4 ; $D127B6
    db $D2,$3F,$E1,$3E,$B3,$7C,$E6,$79,$6C,$F3,$FE,$E3,$BF,$C7,$37,$CF ; $D127C6
    db $ED,$B7,$CF,$EE,$5D,$05,$9F,$EF,$C5,$F5,$0C,$7F,$F7,$75,$D8,$D1 ; $D127D6
    db $A0,$98,$5A,$64,$DC,$CA,$96,$DF,$A2,$0D,$A4,$B1,$5A,$D0,$3F,$80 ; $D127E6
    db $7F,$1A,$E5,$7C,$87,$EE,$01,$8E,$71,$A1,$DA,$F5,$8A,$EF,$AC,$3B ; $D127F6
    db $FB,$A3,$05,$7F,$9E,$01,$08,$00,$BA,$E1,$CA,$3A,$D1,$3D,$FA,$27 ; $D12806
    db $FD,$46,$1A,$8D,$0D,$13,$9E,$23,$FD,$06,$0A,$FA,$11,$FD,$22,$FF ; $D12816
    db $44,$FF,$08,$FF,$01,$FF,$82,$7F,$84,$7F,$FB,$EC,$00,$DD,$D2,$FD ; $D12826
    db $F7,$E9,$05,$73,$FD,$47,$C2,$09,$7F,$F7,$AE,$EE,$E1,$54,$DC,$28 ; $D12836
    db $B8,$90,$F0,$02,$E3,$A3,$64,$47,$C8,$E0,$04,$0F,$20,$E7,$40,$CF ; $D12846
    db $8A,$1D,$F5,$88,$E3,$0B,$60,$B3,$05,$C7,$B7,$C1,$80,$0E,$00,$18 ; $D12856
    db $18,$98,$F8,$88,$78,$0F,$C8,$38,$D0,$30,$02,$38,$0F,$08,$01,$10 ; $D12866
    db $F9,$01,$70,$76,$60,$85,$57,$F0,$FE,$49,$07,$A3,$BF,$0B,$07,$07 ; $D12876
    db $FB,$02,$09,$E7,$0A,$0F,$01,$C9,$17,$3E,$19,$EF,$80,$E9,$E3,$E3 ; $D12886
    db $2A,$2A,$5F,$5F,$30,$3F,$3F,$03,$BF,$BF,$09,$79,$FF,$06,$0F,$F6 ; $D12896
    db $CF,$F9,$14,$17,$00,$BB,$BA,$1D,$2D,$ED,$28,$D8,$5C,$62,$95,$98 ; $D128A6
    db $F6,$F4,$FC,$FD,$FE,$FE,$BA,$BB,$0F,$80,$B7,$40,$7E,$90,$9F,$F4 ; $D128B6
    db $F7,$84,$0F,$75,$33,$F0,$D1,$83,$17,$BD,$F2,$0C,$8B,$82,$EB,$3F ; $D128C6
    db $96,$09,$FC,$B0,$59,$59,$27,$EB,$72,$15,$CF,$4A,$7D,$BF,$1E,$FF ; $D128D6
    db $0F,$FF,$B7,$CF,$5A,$67,$6E,$F1,$37,$F8,$5B,$BC,$B5,$CE,$E1,$C7 ; $D128E6
    db $3D,$78,$43,$7B,$9E,$A1,$05,$E7,$F4,$0B,$2E,$3F,$CC,$BD,$AE,$CA ; $D128F6
    db $DF,$F4,$7B,$BD,$B3,$3F,$F0,$67,$82,$BF,$54,$EA,$53,$F0,$1F,$F0 ; $D12906
    db $8F,$E8,$C7,$70,$E7,$12,$F9,$15,$F8,$C7,$38,$A3,$1C,$E3,$F5,$FF ; $D12916
    db $39,$51,$FB,$1F,$C5,$FC,$0A,$3F,$72,$5C,$11,$72,$F9,$44,$4A,$48 ; $D12926
    db $51,$AB,$0C,$A1,$22,$D5,$10,$47,$8D,$E7,$C2,$39,$91,$24,$E1,$99 ; $D12936
    db $45,$98,$17,$C8,$27,$C8,$0F,$E0,$97,$60,$CE,$DE,$2A,$7F,$E0,$AE ; $D12946
    db $F9,$70,$7C,$87,$0A,$17,$7F,$48,$12,$2C,$03,$17,$1A,$03,$51,$0A ; $D12956
    db $06,$00,$08,$05,$51,$1C,$56,$1C,$A9,$13,$AA,$1F,$A4,$13,$01,$AD ; $D12966
    db $0E,$12,$AC,$12,$BE,$F5,$05,$EE,$47,$3D,$A0,$69,$FD,$4F,$05,$97 ; $D12976
    db $08,$00,$42,$5E,$8A,$EA,$57,$48,$5F,$57,$B9,$1F,$A1,$9C,$68,$1E ; $D12986
    db $44,$2B,$F9,$65,$9F,$29,$9E,$82,$3C,$41,$3C,$09,$73,$95,$63,$1D ; $D12996
    db $E3,$38,$C7,$78,$44,$BF,$B8,$B7,$E0,$BD,$C0,$FB,$0B,$80,$47,$36 ; $D129A6
    db $B9,$E4,$F6,$F9,$C5,$AB,$CB,$E8,$7A,$8E,$C9,$B5,$3E,$CA,$F5,$5D ; $D129B6
    db $F4,$1B,$76,$39,$F9,$7E,$DB,$FC,$8E,$F1,$3D,$07,$7A,$87,$B5,$0E ; $D129C6
    db $EF,$67,$37,$87,$55,$7B,$0F,$DF,$07,$7C,$7D,$0B,$2E,$BF,$9A,$7D ; $D129D6
    db $0D,$3D,$13,$FE,$A2,$6C,$44,$D8,$88,$90,$10,$81,$A0,$F3,$B5,$08 ; $D129E6
    db $FF,$11,$FF,$A2,$7E,$44,$FC,$88,$00,$7B,$80,$61,$B1,$76,$F7,$E4 ; $D129F6
    db $C1,$52,$3B,$70,$AA,$5F,$85,$C7,$0A,$C5,$3B,$D7,$90,$09,$28,$1A ; $D12A06
    db $58,$2C,$38,$C3,$73,$F4,$9F,$A8,$0F,$2E,$5F,$80,$9F,$08,$37,$18 ; $D12A16
    db $66,$38,$44,$73,$8B,$F4,$0F,$E8,$1F,$AE,$1F,$1F,$AA,$B7,$7E,$EA ; $D12A26
    db $B8,$43,$F8,$7B,$F7,$FA,$0B,$49,$7F,$C0,$40,$70,$31,$58,$00,$F8 ; $D12A36
    db $28,$F8,$C0,$C0,$20,$E0,$40,$7A,$C0,$06,$0F,$C1,$F1,$A0,$00,$D0 ; $D12A46
    db $FC,$11,$00,$81,$02,$03,$09,$0E,$04,$0F,$09,$16,$0F,$0C,$0C,$1E ; $D12A56
    db $0F,$08,$0F,$04,$0F,$70,$01,$FF,$0B,$00,$78,$06,$0D,$3B,$5B,$5C ; $D12A66
    db $31,$B3,$C3,$D9,$73,$8F,$71,$2A,$EA,$AA,$BF,$F2,$FD,$69,$7E,$58 ; $D12A76
    db $5F,$83,$FC,$00,$FF,$03,$FF,$80,$0F,$F0,$FF,$68,$3A,$7F,$07,$AE ; $D12A86
    db $33,$FF,$EE,$FF,$79,$76,$15,$43,$78,$17,$09,$3F,$56,$01,$5C,$9E ; $D12A96
    db $33,$E1,$0D,$0E,$FA,$FC,$F7,$FF,$FC,$FF,$DA,$3F,$88,$2E,$FF,$AE ; $D12AA6
    db $ED,$F0,$6E,$F8,$05,$38,$00,$1F,$47,$FF,$AA,$A7,$79,$07,$D7,$3F ; $D12AB6
    db $FC,$97,$09,$3F,$76,$5A,$85,$9E,$92,$3B,$1D,$FC,$B7,$9C,$CB,$2E ; $D12AC6
    db $FB,$EB,$1C,$A9,$3A,$D2,$EF,$A1,$7F,$F0,$0F,$CC,$03,$93,$E0,$EC ; $D12AD6
    db $F2,$F9,$FE,$C4,$FF,$31,$97,$3F,$FC,$67,$43,$1C,$F0,$0D,$BD,$6C ; $D12AE6
    db $BA,$F6,$20,$54,$B0,$CA,$B8,$41,$DC,$F2,$3C,$78,$5E,$74,$2E,$55 ; $D12AF6
    db $62,$50,$8F,$28,$C7,$54,$E3,$2A,$F1,$05,$F8,$C2,$3C,$E0,$1F,$60 ; $D12B06
    db $9F,$F0,$79,$95,$2F,$03,$07,$0D,$91,$81,$49,$2B,$2F,$74,$29,$93 ; $D12B16
    db $A7,$67,$5F,$BC,$28,$50,$16,$88,$5C,$6A,$A3,$1F,$F0,$03,$F0,$89 ; $D12B26
    db $70,$49,$B0,$2E,$D1,$16,$E9,$3E,$01,$1D,$EE,$3F,$F7,$04,$CF,$01 ; $D12B36
    db $0A,$17,$00,$12,$5A,$5F,$1E,$52,$59,$5C,$F8,$5B,$A7,$02,$E5,$0D ; $D12B46
    db $E2,$A1,$AC,$FA,$BF,$01,$B8,$01,$B2,$01,$B6,$01,$EE,$11,$ED,$12 ; $D12B56
    db $EF,$10,$57,$E0,$E0,$00,$04,$79,$01,$0A,$00,$66,$75,$A0,$85,$81 ; $D12B66
    db $2A,$A3,$D0,$47,$A9,$87,$43,$0E,$24,$4D,$54,$A3,$21,$DE,$02,$FC ; $D12B76
    db $25,$D8,$4A,$B1,$94,$63,$08,$E7,$81,$1E,$0B,$1C,$81,$E4,$B5,$A1 ; $D12B86
    db $BD,$3C,$39,$C5,$F0,$06,$00,$C8,$93,$50,$B9,$74,$B6,$77,$BB,$6A ; $D12B96
    db $75,$78,$A2,$70,$0D,$B5,$E4,$2C,$26,$4B,$3C,$86,$79,$4F,$F1,$9C ; $D12BA6
    db $80,$39,$39,$C6,$D7,$0C,$4F,$9C,$F7,$EE,$91,$FB,$8E,$00,$0E,$85 ; $D12BB6
    db $3F,$A7,$3F,$EA,$0A,$3F,$BA,$00,$71,$8A,$EC,$34,$EE,$00,$D5,$40 ; $D12BC6
    db $35,$E8,$6D,$43,$CA,$C4,$5D,$BC,$31,$FE,$8D,$F2,$3C,$C3,$70,$8C ; $D12BD6
    db $20,$99,$64,$FC,$C1,$3C,$9D,$7C,$CF,$B0,$FF,$FD,$00,$F9,$38,$00 ; $D12BE6
    db $99,$05,$E1,$FA,$0A,$3A,$FF,$D1,$A1,$A4,$87,$0A,$71,$2E,$84,$AC ; $D12BF6
    db $40,$28,$C4,$2C,$6A,$8E,$30,$10,$40,$20,$84,$E7,$4A,$CC,$0F,$EC ; $D12C06
    db $0F,$44,$68,$2C,$07,$03,$F5,$63,$00,$E4,$00,$68,$B8,$83,$73,$E8 ; $D12C16
    db $07,$E9,$09,$BF,$00,$70,$08,$18,$40,$C8,$A8,$E8,$40,$1B,$60,$00 ; $D12C26
    db $20,$03,$7A,$07,$08,$0F,$3C,$77,$77,$88,$54,$43,$20,$01,$7D,$40 ; $D12C36
    db $0E,$C2,$84,$0F,$06,$08,$03,$A1,$EB,$04,$50,$68,$0C,$43,$0F,$00 ; $D12C46
    db $DF,$02,$0F,$02,$47,$75,$D1,$0A,$7F,$71,$F3,$FC,$69,$7E,$7B,$84 ; $D12C56
    db $5D,$F7,$63,$29,$0B,$F7,$7F,$7F,$0B,$FD,$88,$F3,$C3,$F0,$A9,$FE ; $D12C66
    db $D6,$A3,$CF,$11,$0F,$09,$FE,$19,$F3,$FF,$A9,$D4,$D7,$FD,$7C,$ED ; $D12C76
    db $09,$3F,$CE,$5C,$0D,$B0,$BB,$1D,$C6,$0C,$19,$1E,$16,$7D,$39,$E6 ; $D12C86
    db $7C,$A9,$9F,$6A,$0D,$F3,$1F,$E0,$0F,$F0,$03,$FF,$C0,$DF,$05,$F0 ; $D12C96
    db $D7,$FC,$35,$FF,$53,$0E,$33,$01,$1F,$EA,$0B,$3F,$F2,$BA,$54,$3E ; $D12CA6
    db $DD,$1C,$04,$86,$69,$22,$BD,$25,$8E,$12,$C4,$0B,$43,$03,$C1,$FF ; $D12CB6
    db $E2,$FC,$BD,$78,$ED,$18,$D3,$08,$EB,$04,$F0,$B8,$2F,$03,$35,$F7 ; $D12CC6
    db $F7,$01,$43,$DC,$09,$3F,$83,$AB,$BA,$54,$49,$71,$B0,$B5,$60,$93 ; $D12CD6
    db $08,$BC,$5B,$AB,$C2,$B6,$C3,$03,$FC,$F9,$86,$B4,$C9,$CA,$F1,$96 ; $D12CE6
    db $21,$05,$22,$18,$27,$25,$0A,$32,$06,$00,$0E,$B1,$C3,$FC,$E5,$0B ; $D12CF6
    db $3F,$44,$C6,$69,$5A,$0C,$ED,$F2,$A3,$4E,$4C,$37,$FF,$F8,$4E,$3B ; $D12D06
    db $E0,$DC,$9E,$A8,$27,$74,$F1,$81,$35,$37,$30,$19,$E8,$82,$11,$E1 ; $D12D16
    db $02,$29,$30,$00,$08,$F5,$0B,$7F,$5D,$EE,$67,$12,$EF,$EA,$C5,$C9 ; $D12D26
    db $25,$D6,$F8,$8E,$C1,$DD,$55,$B1,$A3,$E4,$0F,$00,$53,$40,$35,$02 ; $D12D36
    db $E8,$00,$91,$80,$33,$00,$1C,$03,$03,$1F,$00,$BE,$B3,$10,$CB,$C8 ; $D12D46
    db $AF,$4D,$CF,$46,$31,$ED,$F6,$BE,$D3,$7F,$86,$73,$94,$CA,$37,$BF ; $D12D56
    db $46,$27,$18,$E0,$10,$E8,$10,$4D,$3E,$BA,$7C,$62,$FC,$D8,$E4,$B5 ; $D12D66
    db $C8,$6E,$DC,$2A,$01,$01,$C4,$3B,$03,$EB,$47,$E5,$04,$00,$8A,$D7 ; $D12D76
    db $7D,$09,$D3,$A0,$7A,$00,$B4,$74,$FE,$57,$A6,$27,$6B,$E9,$5F,$A0 ; $D12D86
    db $1E,$01,$3F,$11,$0E,$CB,$04,$63,$40,$B9,$70,$1C,$F8,$46,$BC,$F3 ; $D12D96
    db $AA,$3D,$71,$EB,$AB,$7B,$BF,$AF,$07,$83,$09,$5D,$3F,$30,$05,$22 ; $D12DA6
    db $10,$1F,$11,$87,$24,$0A,$61,$22,$02,$05,$E4,$01,$C3,$C2,$61,$9E ; $D12DB6
    db $F1,$0E,$B1,$4E,$58,$87,$98,$07,$FC,$03,$01,$2E,$11,$FF,$7B,$00 ; $D12DC6
    db $06,$01,$D7,$08,$00,$3C,$C4,$87,$60,$20,$F1,$31,$C0,$37,$50,$A7 ; $D12DD6
    db $EE,$8E,$58,$48,$60,$BA,$44,$27,$E0,$00,$F1,$11,$E0,$17,$01,$EE ; $D12DE6
    db $02,$1E,$48,$B8,$30,$CA,$E3,$A5,$F7,$F7,$C8,$01,$A1,$BF,$FA,$F0 ; $D12DF6
    db $0A,$FF,$D8,$1D,$28,$38,$80,$D7,$6B,$C0,$61,$5A,$88,$A8,$80,$E1 ; $D12E06
    db $07,$0F,$00,$80,$88,$D0,$FF,$78,$9D,$5F,$39,$20,$0B,$80,$45,$0B ; $D12E16
    db $0C,$04,$0D,$01,$09,$DC,$03,$07,$3A,$07,$03,$3A,$F4,$F4,$F9,$0F ; $D12E26
    db $E7,$07,$07,$0F,$00,$0F,$07,$78,$33,$08,$E4,$03,$55,$FD,$0C,$56 ; $D12E36
    db $F8,$87,$07,$FF,$F6,$92,$38,$7D,$13,$01,$11,$EE,$80,$F7,$B1,$FF ; $D12E46
    db $71,$FF,$04,$F7,$13,$58,$FC,$01,$B3,$0E,$FC,$73,$FC,$F3,$AD,$3F ; $D12E56
    db $8F,$01,$4F,$0B,$A6,$BF,$E1,$07,$FA,$9D,$AA,$28,$C7,$A8,$92,$32 ; $D12E66
    db $D4,$B8,$82,$AE,$03,$10,$A9,$83,$0D,$FF,$BB,$C7,$00,$FF,$A8,$C7 ; $D12E76
    db $10,$EF,$03,$15,$A9,$C6,$F1,$CB,$75,$7F,$DE,$01,$03,$08,$00,$17 ; $D12E86
    db $A1,$81,$71,$3E,$E0,$73,$D1,$85,$73,$07,$26,$C5,$8A,$DB,$18,$CF ; $D12E96
    db $1D,$7E,$C0,$9F,$E0,$3F,$E0,$1E,$E0,$3C,$C0,$FC,$B1,$79,$E8,$59 ; $D12EA6
    db $73,$BF,$F8,$13,$7F,$C0,$FF,$B9,$C5,$30,$8A,$A0,$15,$78,$8E,$F8 ; $D12EB6
    db $07,$FE,$A2,$FE,$21,$FF,$18,$01,$00,$8C,$71,$F2,$0C,$05,$02,$22 ; $D12EC6
    db $01,$8F,$00,$25,$01,$0E,$37,$E7,$00,$EB,$A3,$47,$D7,$0A,$3F,$59 ; $D12ED6
    db $7D,$2A,$3E,$23,$4D,$42,$B6,$11,$21,$48,$98,$EF,$90,$6C,$83,$7F ; $D12EE6
    db $8E,$11,$FC,$1F,$6D,$9E,$05,$0E,$8E,$07,$85,$06,$05,$86,$06,$84 ; $D12EF6
    db $50,$FB,$D8,$E9,$0F,$93,$01,$D7,$08,$00,$5F,$E5,$12,$20,$1E,$52 ; $D12F06
    db $BB,$4B,$5C,$26,$89,$4E,$B3,$7A,$A6,$6C,$AB,$AF,$1F,$0F,$FF,$14 ; $D12F16
    db $0F,$B8,$07,$E0,$1F,$11,$0F,$15,$0B,$19,$07,$06,$E7,$AA,$E9,$0B ; $D12F26
    db $FF,$2E,$D0,$8C,$78,$08,$C0,$31,$61,$70,$55,$A0,$35,$80,$9B,$24 ; $D12F36
    db $64,$BB,$4A,$BD,$34,$FC,$5F,$E0,$80,$C0,$C0,$80,$CA,$01,$8E,$C4 ; $D12F46
    db $DD,$86,$95,$B5,$1F,$77,$BB,$FB,$4F,$95,$D1,$0A,$3F,$74,$54,$0E ; $D12F56
    db $02,$E5,$43,$72,$3D,$0A,$35,$F0,$B4,$23,$2F,$AF,$D7,$97,$22,$5F ; $D12F66
    db $D2,$EF,$A9,$F7,$DD,$73,$4D,$2B,$60,$20,$C4,$01,$67,$27,$B9,$FB ; $D12F76
    db $75,$80,$0E,$3D,$CF,$E1,$49,$D0,$E5,$09,$3F,$39,$CB,$92,$0A,$E0 ; $D12F86
    db $11,$E1,$81,$85,$02,$6F,$06,$F7,$C8,$D1,$E8,$E1,$FE,$11,$0E,$F1 ; $D12F96
    db $FF,$A0,$AD,$7B,$84,$C0,$75,$2F,$10,$EF,$F0,$EF,$F8,$05,$FD,$7F ; $D12FA6
    db $1F,$0A,$CB,$7F,$E4,$A4,$AF,$86,$D0,$A4,$B8,$EC,$4C,$D8,$FE,$5A ; $D12FB6
    db $D2,$6E,$CA,$62,$54,$8E,$B4,$CE,$B0,$CC,$B8,$C4,$58,$E4,$5A,$E6 ; $D12FC6
    db $42,$FE,$4A,$F6,$FA,$00,$7A,$46,$01,$01,$4D,$BC,$01,$E9,$08,$00 ; $D12FD6
    db $78,$E1,$A8,$C0,$00,$00,$A0,$08,$00,$50,$7A,$A8,$01,$0F,$1D,$02 ; $D12FE6
    db $96,$6E,$A8,$73,$27,$10,$DE,$04,$0E,$01,$00,$74,$0C,$C5,$01,$AE ; $D12FF6
    db $E9,$01,$F0,$F5,$01,$03,$03,$06,$04,$00,$0F,$08,$0F,$C3,$02,$0F ; $D13006
    db $04,$06,$0F,$EA,$01,$33,$01,$EB,$BC,$C3,$02,$09,$3F,$31,$BA,$CF ; $D13016
    db $1F,$75,$71,$5A,$96,$5A,$6D,$F1,$FA,$DF,$3D,$73,$5F,$30,$1F,$13 ; $D13026
    db $FC,$73,$8C,$1E,$E1,$4F,$70,$F3,$FC,$1D,$FE,$53,$7F,$10,$3F,$EF ; $D13036
    db $C7,$7B,$0F,$58,$83,$2C,$3D,$00,$2F,$09,$3F,$75,$62,$91,$4E,$BD ; $D13046
    db $BB,$69,$25,$59,$78,$DE,$CB,$27,$B9,$CA,$84,$A1,$29,$C6,$25,$C2 ; $D13056
    db $39,$C6,$15,$E2,$D2,$21,$E9,$10,$FD,$00,$BE,$C0,$FA,$06,$FC,$3D ; $D13066
    db $0A,$2E,$FF,$CB,$3D,$18,$C5,$1A,$CE,$1F,$73,$9B,$64,$89,$B2,$C5 ; $D13076
    db $5A,$63,$AE,$30,$EC,$03,$F5,$E4,$00,$E6,$A3,$AB,$07,$ED,$7C,$80 ; $D13086
    db $BF,$40,$D4,$18,$7F,$FE,$40,$5C,$FD,$3A,$0A,$FF,$23,$75,$8E,$B6 ; $D13096
    db $35,$80,$0B,$E0,$1F,$40,$15,$F6,$81,$71,$2D,$CE,$00,$8C,$DF,$99 ; $D130A6
    db $DE,$83,$18,$3F,$BA,$CA,$08,$7F,$08,$F7,$0E,$7F,$15,$ED,$2D,$FC ; $D130B6
    db $5B,$F1,$8E,$E5,$B9,$5E,$06,$84,$8E,$04,$8A,$04,$18,$0E,$11,$1E ; $D130C6
    db $21,$3E,$4C,$74,$10,$E0,$15,$F5,$F0,$6B,$7F,$84,$EB,$0B,$7F,$73 ; $D130D6
    db $48,$A5,$55,$F3,$05,$ED,$14,$F2,$9D,$FC,$5E,$7E,$D8,$7E,$74,$B0 ; $D130E6
    db $1C,$03,$4F,$40,$1D,$02,$0E,$01,$C0,$81,$C1,$40,$C7,$40,$2C,$3F ; $D130F6
    db $23,$00,$01,$EA,$B3,$40,$FF,$C5,$97,$08,$00,$5F,$5E,$5F,$80,$20 ; $D13106
    db $DF,$11,$00,$0E,$95,$9C,$C9,$44,$78,$21,$2B,$01,$E0,$80,$7F,$C0 ; $D13116
    db $BF,$60,$5F,$BF,$BB,$4F,$DE,$24,$EC,$13,$E3,$1C,$7F,$D1,$7B,$0F ; $D13126
    db $75,$0F,$0B,$BC,$FB,$17,$00,$69,$5E,$6C,$11,$BC,$0D,$50,$7F,$B2 ; $D13136
    db $DD,$BD,$57,$0F,$E0,$2D,$54,$BA,$C6,$2B,$EE,$7B,$B6,$F3,$C1,$E0 ; $D13146
    db $36,$28,$37,$0E,$8A,$1F,$58,$8F,$C0,$87,$33,$3C,$40,$CF,$E7,$00 ; $D13156
    db $A1,$EA,$1E,$BD,$71,$09,$3F,$5D,$10,$6B,$21,$00,$05,$03,$0F,$07 ; $D13166
    db $87,$C2,$A0,$71,$62,$13,$82,$C4,$E1,$BF,$C0,$F7,$80,$FB,$84,$FF ; $D13176
    db $00,$7E,$01,$BE,$21,$1E,$A1,$FC,$03,$7F,$D8,$35,$CA,$39,$DF,$AF ; $D13186
    db $87,$AE,$08,$00,$18,$B4,$6E,$3C,$EE,$24,$F6,$2C,$F6,$28,$F2,$20 ; $D13196
    db $FA,$01,$25,$FB,$31,$2C,$F2,$01,$24,$FA,$88,$01,$20,$FE,$07,$01 ; $D131A6
    db $21,$FF,$DE,$00,$BD,$06,$01,$09,$00,$D0,$FA,$A8,$79,$A8,$12,$0F ; $D131B6
    db $A8,$FE,$17,$74,$BF,$03,$E4,$02,$01,$01,$0B,$0F,$E1,$01,$F7,$03 ; $D131C6
    db $D1,$F7,$E5,$03,$0F,$02,$4B,$FF,$04,$F5,$11,$3F,$D3,$53,$7C,$93 ; $D131D6
    db $7C,$B7,$FB,$37,$3B,$37,$FB,$0F,$FB,$8E,$FF,$1E,$1A,$50,$7F,$10 ; $D131E6
    db $FF,$B3,$FC,$33,$3C,$33,$FC,$0B,$FC,$0A,$0F,$1B,$1C,$2F,$BB,$F7 ; $D131F6
    db $0F,$AA,$3D,$F7,$ED,$3D,$EB,$0A,$43,$A6,$BE,$56,$05,$31,$D8,$BD ; $D13206
    db $56,$3F,$53,$3F,$72,$9F,$12,$FF,$C1,$5F,$19,$E0,$06,$F8,$79,$1E ; $D13216
    db $F6,$1F,$F3,$1F,$72,$1F,$0F,$25,$41,$3F,$77,$7B,$E9,$43,$D5,$ED ; $D13226
    db $8F,$01,$FE,$09,$0B,$3F,$9F,$DF,$5E,$8F,$C0,$40,$7F,$AD,$33,$FD ; $D13236
    db $FE,$59,$90,$61,$B3,$5B,$92,$5F,$20,$3F,$40,$65,$3F,$C0,$FC,$3B ; $D13246
    db $FF,$1F,$A5,$03,$1C,$E0,$A1,$B7,$03,$F0,$0F,$BF,$6D,$BA,$D5,$AC ; $D13256
    db $18,$E0,$F4,$A6,$42,$05,$69,$63,$A4,$6B,$C9,$3D,$89,$97,$CA,$09 ; $D13266
    db $15,$0B,$66,$1B,$05,$FE,$67,$9C,$EA,$1D,$F4,$1B,$54,$3B,$F7,$16 ; $D13276
    db $F9,$8F,$C3,$0A,$B6,$81,$EB,$34,$EF,$62,$DC,$EA,$C6,$40,$B3,$00 ; $D13286
    db $58,$96,$AA,$F6,$57,$35,$7F,$48,$B0,$FD,$3E,$B7,$79,$4B,$F1,$94 ; $D13296
    db $E2,$37,$C3,$6E,$83,$6D,$86,$05,$23,$0E,$1D,$01,$0C,$C7,$81,$DA ; $D132A6
    db $0A,$81,$F1,$BA,$FD,$14,$E2,$2B,$51,$E6,$E4,$B8,$16,$27,$3B,$3D ; $D132B6
    db $08,$F2,$10,$18,$0D,$03,$39,$27,$AF,$5F,$1F,$FF,$38,$3F,$C1,$FE ; $D132C6
    db $03,$FC,$1F,$E0,$00,$12,$94,$B5,$00,$BA,$FE,$60,$15,$EB,$D9,$21 ; $D132D6
    db $F8,$04,$9C,$1C,$B8,$A8,$EB,$1E,$8F,$E5,$70,$73,$8F,$78,$87,$B8 ; $D132E6
    db $C7,$DC,$E3,$5F,$E0,$8C,$70,$AB,$71,$C6,$3A,$17,$FE,$BB,$71,$00 ; $D132F6
    db $51,$FE,$A8,$7A,$BC,$96,$DE,$7F,$DD,$89,$2E,$BE,$0E,$65,$F7,$5F ; $D13306
    db $C9,$8E,$EF,$C4,$4F,$E4,$37,$E2,$A7,$73,$9B,$71,$92,$F9,$8D,$78 ; $D13316
    db $71,$00,$3B,$01,$1D,$C7,$BB,$0E,$67,$C5,$87,$F9,$0A,$3B,$72,$05 ; $D13326
    db $00,$83,$24,$0B,$60,$27,$08,$87,$90,$CF,$E0,$5F,$7E,$BE,$FC,$03 ; $D13336
    db $B8,$47,$58,$C0,$0B,$0F,$E0,$1F,$C0,$BF,$0F,$C0,$FF,$7E,$FE,$04 ; $D13346
    db $AB,$BB,$3F,$E4,$0B,$FF,$27,$FB,$C5,$01,$63,$FF,$C3,$60,$FC,$05 ; $D13356
    db $BD,$A5,$BD,$50,$78,$6A,$7B,$23,$FF,$79,$01,$04,$0F,$DC,$DE,$B8 ; $D13366
    db $3D,$9C,$01,$B8,$EC,$3B,$28,$3C,$00,$11,$09,$3F,$E0,$00,$E0,$48 ; $D13376
    db $F8,$80,$F8,$20,$38,$C8,$EA,$43,$E9,$20,$E0,$F0,$F0,$DD,$08,$0F ; $D13386
    db $C7,$61,$51,$FF,$2D,$77,$FE,$0C,$18,$FD,$0D,$0F,$01,$06,$07,$70 ; $D13396
    db $0E,$03,$0F,$0F,$0F,$07,$07,$0B,$0B,$08,$2A,$0F,$02,$5F,$01,$01 ; $D133A6
    db $0D,$FA,$7B,$B4,$1B,$07,$05,$60,$27,$31,$85,$87,$8C,$8E,$03,$17 ; $D133B6
    db $96,$4E,$CF,$55,$D7,$80,$0F,$26,$0D,$0E,$85,$86,$08,$8C,$8F,$16 ; $D133C6
    db $97,$64,$0F,$37,$23,$EC,$7B,$71,$81,$01,$82,$EB,$09,$3F,$8E,$20 ; $D133D6
    db $FF,$D8,$67,$8E,$F1,$5F,$20,$8E,$10,$0D,$B0,$46,$18,$69,$CC,$0F ; $D133E6
    db $33,$40,$3F,$01,$C0,$83,$01,$E0,$1F,$70,$B3,$CB,$DF,$EE,$17,$7F ; $D133F6
    db $8D,$B9,$F0,$C9,$64,$C5,$31,$E3,$1A,$F3,$CE,$3F,$17,$00,$54,$54 ; $D13406
    db $3E,$3C,$8E,$F0,$44,$FB,$20,$FE,$13,$FE,$0E,$2C,$54,$AB,$1D,$3D ; $D13416
    db $C2,$7F,$57,$75,$DF,$4B,$39,$F1,$C5,$0F,$3F,$02,$23,$D6,$55,$F0 ; $D13426
    db $80,$34,$D6,$E6,$79,$22,$28,$EF,$0E,$7B,$13,$CE,$70,$3F,$62,$BF ; $D13436
    db $A2,$7F,$20,$1F,$54,$8F,$34,$C3,$0D,$F0,$B3,$7C,$C0,$00,$0A,$01 ; $D13446
    db $E0,$F5,$43,$FF,$D3,$C5,$F2,$09,$3F,$6C,$2E,$6E,$17,$78,$D0,$7B ; $D13456
    db $77,$B6,$97,$B8,$05,$24,$80,$00,$A0,$33,$7D,$86,$14,$EF,$13,$FF ; $D13466
    db $63,$C8,$2A,$80,$80,$BA,$02,$BF,$7F,$1D,$38,$00,$38,$D5,$F7,$3F ; $D13476
    db $3F,$01,$0C,$5C,$81,$63,$20,$C0,$8A,$0C,$02,$FE,$B5,$11,$F6,$0F ; $D13486
    db $E6,$58,$04,$07,$16,$E7,$D0,$FD,$FC,$FF,$A4,$4B,$30,$4B,$01,$16 ; $D13496
    db $07,$07,$F9,$99,$B0,$FE,$4F,$01,$0C,$00,$00,$30,$57,$0D,$44,$B6 ; $D134A6
    db $7F,$69,$19,$7B,$2D,$BB,$02,$DB,$72,$4D,$2E,$8D,$C6,$3A,$D7,$3A ; $D134B6
    db $E5,$1A,$61,$9E,$20,$DF,$A0,$DF,$80,$FF,$C0,$FF,$01,$FD,$15,$BD ; $D134C6
    db $85,$00,$85,$B0,$4A,$D7,$FE,$3E,$F8,$D9,$9B,$AB,$36,$10,$A3,$A9 ; $D134D6
    db $9E,$1C,$13,$0B,$7C,$47,$3C,$45,$3E,$47,$3E,$E0,$1F,$E1,$1F,$E7 ; $D134E6
    db $1F,$6A,$99,$C7,$00,$C3,$8E,$01,$E1,$44,$01,$BE,$FD,$E7,$0A,$91 ; $D134F6
    db $7F,$7E,$82,$FE,$74,$C1,$3D,$45,$6D,$57,$23,$8B,$86,$6E,$B1,$23 ; $D13506
    db $14,$3E,$FE,$9E,$7E,$8D,$7D,$C5,$3D,$D3,$2F,$C2,$39,$64,$9A,$21 ; $D13516
    db $56,$96,$3B,$56,$F8,$3D,$CF,$01,$77,$0A,$90,$FF,$F3,$F3,$F7,$E3 ; $D13526
    db $60,$E7,$00,$DA,$DA,$9D,$9D,$0F,$E6,$A6,$F8,$68,$04,$03,$0F,$A6 ; $D13536
    db $66,$28,$98,$02,$AE,$7B,$04,$B5,$9C,$AB,$49,$F1,$08,$00,$E8,$E8 ; $D13546
    db $70,$D4,$DC,$AC,$BC,$5C,$7C,$B8,$F8,$78,$F8,$E0,$E0,$F7,$0A,$0F ; $D13556
    db $7F,$A1,$B8,$01,$8A,$FF,$43,$0E,$21,$41,$07,$07,$0A,$0A,$50,$07 ; $D13566
    db $03,$03,$0A,$0E,$0B,$0A,$09,$0F,$CC,$03,$0F,$0F,$01,$09,$7D,$0F ; $D13576
    db $02,$8E,$7B,$05,$3D,$01,$06,$09,$3F,$71,$8E,$CF,$95,$97,$0E,$0F ; $D13586
    db $CA,$FF,$F1,$BA,$D8,$F6,$46,$AD,$65,$E6,$B0,$0F,$B0,$EF,$01,$D5 ; $D13596
    db $AA,$05,$FA,$64,$E7,$41,$52,$3F,$35,$2B,$00,$5F,$FF,$05,$0A,$CD ; $D135A6
    db $3F,$D6,$F4,$A6,$7A,$D1,$B8,$ED,$78,$F7,$4C,$7A,$18,$B3,$EB,$46 ; $D135B6
    db $4D,$F9,$BC,$C3,$5C,$E3,$AD,$F2,$72,$FC,$4B,$FC,$33,$DC,$0E,$B1 ; $D135C6
    db $45,$A3,$21,$BF,$5F,$DC,$11,$37,$B7,$00,$4F,$49,$C5,$0A,$03,$D6 ; $D135D6
    db $79,$7A,$B9,$39,$FF,$BF,$7F,$5F,$B7,$67,$0A,$B0,$B7,$E2,$1F,$BC ; $D135E6
    db $78,$87,$39,$C6,$BF,$40,$DF,$20,$27,$78,$21,$DE,$D2,$8F,$24,$C3 ; $D135F6
    db $D3,$37,$12,$47,$7D,$F8,$0B,$FF,$B9,$C8,$0C,$FB,$8D,$64,$86,$67 ; $D13606
    db $AE,$4F,$EA,$0F,$2E,$CB,$E3,$8B,$05,$6F,$84,$7F,$83,$7F,$80,$7F ; $D13616
    db $88,$77,$01,$0C,$0F,$F3,$C3,$00,$C0,$05,$7A,$01,$08,$00,$E7,$91 ; $D13626
    db $BF,$20,$3F,$90,$2F,$38,$27,$87,$90,$33,$F8,$B8,$0C,$BD,$5E,$8C ; $D13636
    db $7F,$1E,$3F,$BF,$BF,$9F,$BF,$80,$04,$6F,$DF,$47,$FF,$13,$EF,$15 ; $D13646
    db $EC,$00,$1E,$47,$81,$5A,$0D,$00,$1E,$37,$00,$33,$09,$3F,$5C,$FB ; $D13656
    db $B8,$FD,$E8,$F2,$18,$E2,$39,$C2,$FB,$03,$FE,$0A,$F3,$17,$4D,$46 ; $D13666
    db $07,$FF,$1E,$FF,$FE,$01,$FC,$00,$FE,$F4,$FF,$EC,$FE,$9A,$DC,$06 ; $D13676
    db $E4,$39,$14,$BF,$FD,$01,$79,$FB,$09,$3F,$46,$72,$AD,$27,$EC,$15 ; $D13686
    db $4E,$35,$CE,$47,$BE,$17,$BE,$DD,$F4,$AD,$44,$C0,$FF,$40,$FF,$60 ; $D13696
    db $E1,$01,$E0,$7F,$82,$01,$22,$7F,$F2,$7F,$2D,$BB,$F7,$02,$01,$8B ; $D136A6
    db $0A,$BF,$C4,$88,$8E,$94,$DD,$C7,$D8,$BB,$86,$F9,$84,$12,$A5,$B8 ; $D136B6
    db $AE,$12,$8D,$6E,$99,$FC,$0C,$7B,$8C,$37,$CC,$51,$77,$01,$CE,$7E ; $D136C6
    db $C7,$5B,$E7,$77,$00,$07,$01,$7B,$1C,$01,$39,$01,$7D,$3C,$0A,$37 ; $D136D6
    db $FF,$5E,$E9,$86,$1E,$A7,$77,$13,$4F,$3B,$FB,$CD,$27,$7E,$FC,$B7 ; $D136E6
    db $D3,$A8,$D9,$96,$AE,$77,$EF,$4B,$D7,$FB,$77,$A5,$6B,$FC,$3A,$D3 ; $D136F6
    db $35,$71,$97,$FF,$98,$5D,$BF,$8C,$D6,$3A,$51,$C6,$CF,$97,$08,$5C ; $D13706
    db $00,$EC,$B1,$43,$8A,$DC,$39,$32,$8B,$8E,$E1,$E1,$A8,$F8,$52,$7F ; $D13716
    db $20,$3F,$61,$9F,$84,$F3,$31,$3E,$8A,$8F,$0F,$74,$FE,$3A,$37,$0F ; $D13726
    db $3B,$79,$C3,$E9,$00,$2D,$F8,$0B,$3F,$E0,$DF,$40,$B0,$C8,$01,$68 ; $D13736
    db $68,$38,$C8,$78,$78,$A8,$2E,$40,$60,$C0,$80,$78,$68,$D8,$08,$58 ; $D13746
    db $F8,$0F,$C0,$E2,$04,$B0,$A5,$39,$50,$FC,$0B,$95,$7F,$06,$0E,$E0 ; $D13756
    db $C5,$05,$0B,$0B,$94,$79,$F9,$08,$0F,$08,$FF,$18,$40,$A0,$00,$41 ; $D13766
    db $41,$AA,$07,$AA,$FD,$FD,$BF,$BF,$BC,$10,$0F,$12,$00,$2A,$5C,$6C ; $D13776
    db $BC,$28,$33,$8C,$88,$73,$73,$B8,$BF,$0E,$0F,$A3,$A3,$54,$54,$20 ; $D13786
    db $73,$20,$3E,$88,$8D,$02,$0F,$5F,$E4,$F3,$1F,$FD,$07,$0F,$52,$C3 ; $D13796
    db $FE,$54,$E7,$B1,$35,$EF,$3A,$6C,$CE,$E9,$C9,$32,$FE,$80,$FF,$E0 ; $D137A6
    db $FF,$5A,$E1,$B6,$78,$EB,$1C,$7C,$8F,$C9,$F9,$22,$0F,$BF,$A9,$79 ; $D137B6
    db $07,$F3,$00,$30,$00,$CC,$6F,$49,$0A,$D7,$3F,$5F,$AB,$6D,$38,$ED ; $D137C6
    db $C3,$96,$24,$AE,$DE,$47,$7C,$51,$AA,$A8,$45,$F0,$0C,$F3,$8C,$73 ; $D137D6
    db $46,$39,$C6,$19,$53,$A0,$43,$60,$B0,$87,$75,$C8,$02,$BB,$FD,$3E ; $D137E6
    db $9E,$01,$0A,$D0,$5D,$7E,$7A,$B3,$5F,$A6,$07,$DE,$27,$CE,$95,$74 ; $D137F6
    db $13,$6B,$C5,$B1,$16,$3C,$1D,$E7,$09,$F3,$0D,$F0,$05,$F8,$11,$EE ; $D13806
    db $09,$F6,$84,$7B,$06,$F9,$19,$88,$39,$B1,$3B,$03,$E2,$0F,$BF,$6A ; $D13816
    db $9F,$E5,$D5,$18,$8A,$F1,$A9,$EE,$FE,$B7,$FD,$4D,$E2,$39,$B5,$D3 ; $D13826
    db $F7,$FC,$EE,$FC,$7A,$F0,$80,$2D,$49,$03,$FA,$07,$DF,$FF,$1C,$6E ; $D13836
    db $FF,$F7,$3D,$54,$7F,$38,$FF,$FB,$BD,$7E,$F5,$09,$3F,$D7,$FD,$A4 ; $D13846
    db $97,$A4,$D3,$E4,$0B,$AC,$7D,$3A,$BD,$42,$F1,$F6,$D4,$37,$D2,$7F ; $D13856
    db $72,$FF,$32,$FF,$FA,$F7,$CA,$F7,$EA,$F7,$5A,$A7,$8A,$2F,$38,$BD ; $D13866
    db $60,$01,$E0,$A9,$BB,$1E,$40,$00,$C8,$09,$3F,$2E,$AD,$92,$59,$3A ; $D13876
    db $91,$AC,$87,$F9,$87,$D2,$AD,$AD,$D9,$C2,$B7,$A8,$F7,$5B,$E7,$7B ; $D13886
    db $E7,$6F,$F3,$01,$7D,$C0,$01,$77,$F9,$76,$F9,$71,$3C,$BF,$1C,$54 ; $D13896
    db $2A,$FD,$0E,$9F,$01,$08,$0B,$00,$97,$56,$43,$9E,$F1,$CA,$AA,$49 ; $D138A6
    db $D0,$D9,$FD,$FA,$EA,$D4,$D4,$62,$6A,$56,$B5,$E1,$92,$AA,$DB,$D0 ; $D138B6
    db $E9,$D9,$E5,$EA,$8D,$03,$DA,$62,$6D,$E3,$00,$73,$AC,$F7,$89,$39 ; $D138C6
    db $7A,$1C,$0D,$3F,$E3,$4D,$4F,$B0,$B0,$BF,$3F,$5F,$5F,$1E,$5E,$EF ; $D138D6
    db $2F,$CB,$AB,$37,$D7,$01,$0F,$3F,$BF,$5F,$70,$DF,$1E,$DE,$2F,$EF ; $D138E6
    db $8B,$EB,$17,$F7,$02,$00,$00,$9C,$A9,$B9,$C0,$C7,$E7,$08,$00,$70 ; $D138F6
    db $40,$D8,$D0,$D0,$A0,$18,$A0,$C8,$C8,$03,$50,$50,$DE,$03,$08,$0F ; $D13906
    db $7C,$80,$17,$3A,$7F,$0E,$D0,$E7,$05,$0E,$04,$04,$F1,$04,$0F,$04 ; $D13916
    db $0F,$E7,$02,$0F,$01,$67,$BB,$0B,$80,$13,$3F,$83,$FF,$F4,$00,$69 ; $D13926
    db $81,$8E,$08,$29,$20,$3F,$3A,$00,$83,$A7,$AC,$01,$FE,$9F,$02,$0F ; $D13936
    db $7C,$01,$43,$75,$1F,$CB,$0D,$3F,$80,$87,$80,$AA,$A6,$62,$7E,$94 ; $D13946
    db $E7,$05,$06,$20,$E0,$C0,$30,$01,$0F,$A2,$5E,$7E,$04,$81,$87,$F8 ; $D13956
    db $04,$07,$8A,$0F,$00,$FB,$39,$7F,$A1,$3F,$C0,$DD,$C5,$FE,$0A,$4E ; $D13966
    db $FF,$38,$3F,$90,$27,$63,$BB,$26,$6A,$01,$68,$92,$FB,$11,$1C,$00 ; $D13976
    db $09,$0B,$0F,$84,$23,$E3,$E2,$1F,$7B,$A4,$94,$E8,$16,$19,$00,$0F ; $D13986
    db $4B,$37,$C0,$A1,$3D,$DF,$55,$47,$FD,$0A,$7F,$75,$0F,$BC,$17,$FE ; $D13996
    db $FF,$83,$ED,$3D,$24,$55,$C1,$48,$E3,$84,$09,$8A,$3E,$C8,$7F,$8C ; $D139A6
    db $EF,$1E,$F3,$1F,$DB,$3F,$4F,$CF,$47,$27,$EB,$1B,$89,$3B,$57,$F1 ; $D139B6
    db $D5,$FB,$80,$3E,$07,$08,$00,$5D,$B7,$7F,$12,$4B,$99,$ED,$6C,$C6 ; $D139C6
    db $66,$99,$53,$1A,$A5,$63,$BE,$AC,$CC,$8B,$7C,$45,$3E,$C2,$5F,$11 ; $D139D6
    db $8F,$68,$87,$3C,$C3,$3E,$C1,$0C,$F3,$80,$0D,$BE,$35,$02,$00,$BA ; $D139E6
    db $47,$67,$7C,$D6,$11,$25,$4C,$29,$BF,$57,$67,$D1,$9F,$98,$47,$09 ; $D139F6
    db $07,$19,$FE,$CE,$3F,$7C,$83,$31,$C1,$87,$F8,$60,$FF,$09,$FC,$1B ; $D13A06
    db $EF,$85,$10,$5D,$00,$60,$20,$A3,$90,$7F,$FA,$05,$ED,$F9,$E8,$30 ; $D13A16
    db $CD,$BC,$2E,$E1,$9B,$9B,$06,$1F,$96,$0F,$5E,$8F,$4E,$87,$2B,$C7 ; $D13A26
    db $57,$E3,$ED,$F3,$7F,$F1,$B3,$F0,$EB,$5D,$01,$7C,$03,$81,$1E,$00 ; $D13A36
    db $0E,$C2,$09,$3F,$55,$7E,$38,$E3,$7A,$F5,$73,$73,$F7,$DD,$FD,$F3 ; $D13A46
    db $F9,$A8,$FA,$D7,$FE,$F6,$F9,$FA,$98,$09,$F4,$01,$DD,$FE,$02,$F1 ; $D13A56
    db $FA,$A8,$FB,$D6,$FF,$26,$BB,$0E,$01,$23,$81,$05,$53,$00,$29,$F0 ; $D13A66
    db $0A,$7F,$74,$D7,$30,$1C,$3D,$BD,$BE,$3E,$5F,$5F,$2F,$6F,$F7,$B7 ; $D13A76
    db $BA,$BA,$70,$77,$F8,$FB,$0F,$3E,$00,$BE,$5F,$DF,$2F,$EF,$B7,$77 ; $D13A86
    db $BA,$44,$7A,$BE,$F9,$80,$01,$3F,$C1,$00,$F8,$0A,$09,$45,$35,$00 ; $D13A96
    db $28,$18,$7A,$86,$5F,$60,$57,$58,$65,$8E,$B5,$4E,$C2,$86,$86,$05 ; $D13AA6
    db $F5,$08,$F8,$02,$FE,$40,$7F,$50,$5F,$45,$0F,$F0,$55,$7B,$3F,$DB ; $D13AB6
    db $B9,$F1,$0E,$03,$50,$50,$50,$05,$F8,$0F,$E0,$18,$80,$F8,$04,$0F ; $D13AC6
    db $0F,$00,$F8,$80,$03,$BC,$EC,$75,$03,$78,$F8,$0F,$41,$3C,$3F,$02 ; $D13AD6
    db $16,$16,$4D,$4D,$17,$17,$2E,$F1,$12,$51,$12,$0F,$17,$E7,$04,$0F ; $D13AE6
    db $03,$EA,$13,$7D,$F4,$41,$FF,$49,$00,$FA,$A4,$F7,$50,$FF,$EA,$FF ; $D13AF6
    db $B4,$E4,$03,$0F,$0F,$48,$FF,$04,$3A,$0F,$FC,$80,$BB,$53,$00,$AF ; $D13B06
    db $00,$1C,$15,$00,$4B,$03,$FE,$0B,$57,$3F,$03,$08,$B0,$70,$4A,$D6 ; $D13B16
    db $26,$B9,$04,$F9,$04,$E8,$1D,$A4,$BA,$2A,$30,$E1,$F0,$42,$FE,$20 ; $D13B26
    db $BF,$01,$FE,$0F,$F0,$3C,$C3,$07,$50,$F9,$BC,$3E,$00,$9F,$0F,$D2 ; $D13B36
    db $BF,$88,$8D,$E9,$60,$C6,$0B,$10,$03,$0C,$81,$84,$92,$F4,$5F,$3D ; $D13B46
    db $7D,$FD,$B9,$C5,$5C,$E2,$0E,$11,$07,$08,$81,$86,$0C,$03,$FD,$03 ; $D13B56
    db $87,$0F,$7C,$00,$BE,$4C,$79,$68,$C5,$A7,$3D,$EB,$0A,$0D,$75,$CC ; $D13B66
    db $73,$57,$9D,$05,$64,$05,$7F,$C0,$7E,$CD,$20,$BA,$42,$8C,$D2,$80 ; $D13B76
    db $FF,$E1,$FE,$78,$7F,$18,$FF,$CE,$3F,$E1,$1E,$7D,$80,$9E,$E1,$9F ; $D13B86
    db $33,$65,$E1,$3F,$7F,$E1,$09,$3F,$92,$73,$30,$71,$C8,$5B,$E0,$3D ; $D13B96
    db $BF,$09,$41,$C5,$F0,$C2,$BD,$7E,$FC,$0C,$FF,$F8,$C0,$7C,$F7,$A8 ; $D13BA6
    db $15,$96,$3D,$C1,$8D,$BE,$7D,$7E,$FD,$22,$25,$E2,$8F,$01,$C3,$0B ; $D13BB6
    db $A6,$FF,$E9,$0F,$20,$FF,$7D,$15,$72,$25,$4C,$8F,$8D,$2E,$FE,$D6 ; $D13BC6
    db $EF,$EF,$F7,$16,$F9,$0F,$F8,$8B,$BC,$FD,$9E,$6D,$DE,$FE,$CF,$88 ; $D13BD6
    db $0F,$F7,$EF,$0E,$B9,$47,$00,$63,$A5,$39,$31,$D7,$45,$FF,$0A,$6E ; $D13BE6
    db $3F,$38,$80,$FD,$9B,$E7,$E8,$58,$D1,$F7,$6E,$AF,$45,$F3,$AA,$DB ; $D13BF6
    db $51,$50,$0F,$83,$FF,$5C,$48,$3A,$F8,$D1,$7F,$AE,$6F,$C1,$3F,$CA ; $D13C06
    db $3B,$50,$B1,$7D,$01,$F9,$B0,$00,$AE,$00,$C1,$C1,$FD,$F1,$00,$E1 ; $D13C16
    db $E5,$09,$3F,$3E,$D7,$1E,$9D,$1F,$04,$97,$C0,$81,$98,$C0,$A8,$84 ; $D13C26
    db $BE,$A2,$8A,$94,$1E,$FE,$1D,$FF,$04,$F7,$80,$F1,$80,$F8,$80,$BC ; $D13C36
    db $A2,$BE,$80,$9E,$E0,$8E,$B7,$F3,$BA,$C1,$78,$AE,$C1,$1E,$F5,$09 ; $D13C46
    db $3F,$C7,$25,$25,$02,$02,$41,$C1,$10,$F0,$84,$FC,$21,$3F,$08,$0F ; $D13C56
    db $02,$03,$D4,$08,$0F,$A3,$EC,$3F,$78,$E3,$3B,$07,$E1,$11,$49,$80 ; $D13C66
    db $58,$98,$60,$E0,$3D,$F8,$F8,$0E,$0F,$37,$15,$8F,$0F,$3D,$01,$01 ; $D13C76
    db $16,$79,$0F,$14,$00,$05,$D4,$04,$5C,$7E,$7F,$BE,$BF,$9B,$37,$BB ; $D13C86
    db $D2,$08,$0F,$AF,$7D,$97,$12,$50,$FF,$0E,$FE,$08,$0C,$02,$09,$2C ; $D13C96
    db $32,$44,$7C,$A8,$F8,$D0,$F4,$7D,$FE,$FF,$75,$08,$CB,$66,$20,$3E ; $D13CA6
    db $23,$0F,$AE,$3F,$0F,$3A,$FB,$38,$97,$7D,$20,$80,$0B,$3F,$DF,$CF ; $D13CB6
    db $B2,$7C,$C3,$FD,$09,$11,$1E,$04,$07,$00,$B5,$CF,$3F,$30,$FE,$C1 ; $D13CC6
    db $FF,$2C,$10,$1F,$0F,$75,$F0,$8E,$37,$3E,$3C,$41,$03,$0F,$7F,$8C ; $D13CD6
    db $B8,$C5,$F2,$42,$7D,$51,$72,$81,$60,$21,$C0,$23,$D2,$58,$67,$12 ; $D13CE6
    db $1E,$80,$51,$3B,$73,$C9,$B0,$02,$F3,$B3,$09,$0F,$7E,$AA,$3B,$23 ; $D13CF6
    db $AE,$5C,$BF,$F1,$09,$78,$0C,$09,$3F,$ED,$F3,$07,$67,$7F,$B9,$BF ; $D13D06
    db $3E,$5A,$AF,$B7,$01,$B7,$5F,$5F,$2A,$2A,$E1,$FF,$E7,$06,$0F,$1E ; $D13D16
    db $43,$73,$06,$BD,$B9,$FC,$10,$7B,$FF,$2E,$FF,$FD,$38,$FC,$FE,$FD ; $D13D26
    db $70,$FF,$81,$EF,$E1,$EE,$EA,$EF,$A5,$AF,$FF,$FC,$FD,$0E,$FE,$71 ; $D13D36
    db $04,$FE,$81,$EE,$E0,$EF,$25,$0F,$E8,$FB,$8F,$00,$6F,$AB,$1E,$C5 ; $D13D46
    db $0A,$0A,$7F,$5C,$EF,$F0,$FE,$EF,$AA,$7F,$14,$71,$1B,$F3,$53,$BB ; $D13D56
    db $28,$BA,$54,$72,$ED,$F7,$EE,$F7,$2A,$F7,$10,$FD,$93,$7F,$01,$A8 ; $D13D66
    db $7E,$50,$03,$B6,$1A,$00,$19,$00,$DD,$BD,$BF,$71,$EC,$01,$D6,$F6 ; $D13D76
    db $0B,$DD,$3F,$73,$6A,$FB,$AD,$AB,$84,$CC,$50,$C0,$48,$E4,$3C,$E0 ; $D13D86
    db $2A,$F6,$44,$EA,$6A,$9B,$A9,$DF,$84,$FC,$40,$F8,$40,$FC,$20,$FC ; $D13D96
    db $22,$FE,$40,$EE,$F5,$76,$A1,$7B,$B8,$D5,$41,$71,$DC,$01,$AE,$E2 ; $D13DA6
    db $09,$3F,$04,$0B,$E1,$08,$0F,$14,$77,$5B,$DB,$09,$89,$D8,$D8,$70 ; $D13DB6
    db $70,$13,$90,$E8,$06,$0F,$95,$7F,$63,$5F,$BF,$C0,$11,$00,$80,$80 ; $D13DC6
    db $C0,$60,$E0,$0C,$B0,$F0,$F8,$F8,$2F,$20,$79,$20,$0A,$0F,$80,$5E ; $D13DD6
    db $3C,$7B,$40,$0F,$3C,$78,$1E,$78,$18,$18,$14,$0F,$F5,$18,$00,$A3 ; $D13DE6
    db $A3,$DE,$10,$0F,$18,$00,$0F,$40,$40,$80,$80,$14,$78,$0F,$20,$00 ; $D13DF6
    db $16,$17,$22,$2B,$2B,$7D,$3B,$10,$0F,$F2,$18,$92,$57,$01,$A8,$D4 ; $D13E06
    db $FF,$5A,$5F,$AF,$AF,$F1,$02,$58,$E0,$06,$0F,$FF,$00,$2B,$00,$78 ; $D13E16
    db $05,$0B,$37,$95,$95,$D1,$EF,$4F,$AD,$74,$19,$FF,$A8,$16,$FF,$D5 ; $D13E26
    db $FF,$45,$0F,$E1,$AE,$0F,$EC,$02,$3F,$01,$57,$3C,$00,$2A,$09,$3F ; $D13E36
    db $6F,$6B,$6F,$A5,$85,$0A,$0A,$01,$01,$F9,$07,$05,$FF,$03,$FF,$55 ; $D13E46
    db $FF,$84,$0F,$01,$FF,$9F,$0F,$01,$C1,$67,$00,$FA,$DD,$C9,$78,$AA ; $D13E56
    db $09,$3F,$F6,$50,$5D,$E2,$7A,$A4,$A3,$F5,$67,$45,$87,$AD,$87,$95 ; $D13E66
    db $89,$87,$85,$83,$50,$B6,$A0,$C6,$A1,$D7,$45,$77,$85,$BF,$85,$9F ; $D13E76
    db $81,$8F,$81,$87,$E6,$00,$66,$01,$81,$32,$00,$3A,$00,$1A,$D4,$3D ; $D13E86
    db $7D,$06,$09,$3F,$70,$A9,$EF,$52,$F7,$F5,$F7,$53,$53,$AB,$AB,$11 ; $D13E96
    db $11,$F0,$0C,$0F,$46,$00,$A5,$7E,$00,$18,$D0,$52,$80,$00,$31,$B9 ; $D13EA6
    db $40,$40,$EF,$0C,$0F,$14,$1E,$00,$15,$15,$16,$0F,$F1,$18,$00,$7E ; $D13EB6
    db $7F,$FB,$06,$E7,$DF,$08,$0F,$18,$8C,$F7,$AB,$FF,$00,$55,$1E,$55 ; $D13EC6
    db $0A,$0A,$10,$0F,$78,$54,$17,$3F,$03,$01,$00,$82,$83,$03,$03,$83 ; $D13ED6
    db $83,$02,$02,$88,$F9,$EC,$B7,$03,$F3,$06,$0F,$02,$DD,$19,$81,$80 ; $D13EE6
    db $25,$C0,$E0,$E0,$50,$50,$20,$1E,$20,$08,$08,$0C,$0F,$7C,$00,$14 ; $D13EF6
    db $BC,$FB,$00,$00                                                 ; $D13F06
; ---- end of region ----


; ---- RNC method 2 block: 16733 bytes packed, 21764 unpacked (tools/rnc.py) ($D13F0A-$D18078) ----
    db $52,$4E,$43,$02,$00,$00,$55,$04,$00,$00,$41,$5D,$D2,$E5,$7B,$58 ; $D13F0A
    db $04,$02,$05,$0C,$01,$8A,$D7,$00,$D4,$29,$CE,$39,$55,$3A,$50,$19 ; $D13F1A
    db $6C,$21,$CC,$08,$06,$00,$16,$32,$E7,$1C,$92,$21,$0E,$11,$00,$00 ; $D13F2A
    db $08,$00,$DA,$4E,$1C,$00,$28,$50,$08,$00,$01,$00,$01,$02,$00,$03 ; $D13F3A
    db $00,$04,$00,$05,$34,$0F,$33,$00,$2D,$07,$83,$25,$09,$00,$0A,$C0 ; $D13F4A
    db $03,$13,$0B,$00,$0C,$00,$0D,$0F,$00,$0E,$00,$0F,$03,$18,$13,$10 ; $D13F5A
    db $00,$4E,$12,$00,$1E,$13,$00,$14,$01,$11,$60,$15,$67,$00,$17,$00 ; $D13F6A
    db $18,$02,$00,$19,$00,$1A,$00,$1B,$6C,$13,$6B,$1D,$38,$00,$1E,$13 ; $D13F7A
    db $1F,$09,$00,$20,$00,$21,$81,$13,$22,$00,$23,$00,$24,$C1,$13,$25 ; $D13F8A
    db $00,$26,$E7,$01,$13,$27,$1C,$93,$29,$13,$05,$2A,$00,$2B,$00,$2C ; $D13F9A
    db $05,$11,$2D,$00,$2E,$C2,$00,$2F,$00,$30,$00,$31,$00,$32,$00,$33 ; $D13FAA
    db $00,$34,$65,$13,$35,$C2,$00,$36,$00,$37,$00,$38,$00,$39,$00,$3A ; $D13FBA
    db $00,$3B,$82,$13,$3C,$00,$3D,$E1,$00,$3E,$00,$3F,$00,$40,$00,$41 ; $D13FCA
    db $00,$42,$00,$43,$41,$13,$44,$00,$45,$70,$00,$46,$00,$47,$00,$48 ; $D13FDA
    db $00,$49,$00,$4A,$00,$4B,$A0,$13,$4C,$00,$4D,$B8,$50,$00,$4E,$00 ; $D13FEA
    db $4F,$00,$50,$00,$51,$00,$52,$00,$53,$13,$54,$00,$5C,$55,$26,$00 ; $D13FFA
    db $56,$00,$57,$00,$58,$00,$59,$00,$5A,$00,$5B,$13,$5C,$5C,$28,$00 ; $D1400A
    db $5D,$00,$5E,$00,$5F,$00,$60,$00,$61,$00,$62,$13,$63,$2E,$00,$64 ; $D1401A
    db $14,$00,$65,$00,$66,$00,$67,$00,$68,$00,$69,$00,$6A,$13,$17,$6B ; $D1402A
    db $00,$6C,$0A,$00,$6D,$00,$6E,$00,$6F,$00,$70,$00,$71,$00,$72,$0B ; $D1403A
    db $13,$73,$00,$74,$85,$00,$75,$00,$76,$00,$77,$00,$78,$00,$79,$00 ; $D1404A
    db $7A,$05,$13,$7B,$00,$7C,$C2,$00,$7D,$00,$7E,$00,$7F,$00,$80,$00 ; $D1405A
    db $81,$00,$82,$82,$13,$83,$00,$84,$E1,$00,$85,$00,$86,$00,$87,$00 ; $D1406A
    db $88,$00,$89,$00,$8A,$C1,$11,$8B,$00,$8C,$76,$00,$8D,$00,$8E,$00 ; $D1407A
    db $8F,$00,$90,$00,$91,$00,$92,$00,$93,$00,$94,$00,$95,$00,$96,$00 ; $D1408A
    db $97,$00,$98,$00,$99,$00,$9A,$00,$9B,$00,$9C,$00,$9D,$00,$9E,$E2 ; $D1409A
    db $13,$9F,$E3,$00,$A0,$00,$A1,$00,$A2,$00,$A3,$00,$A4,$00,$A5,$00 ; $D140AA
    db $A6,$00,$A7,$C5,$13,$A8,$C7,$00,$A9,$00,$AA,$00,$AB,$00,$AC,$00 ; $D140BA
    db $AD,$00,$AE,$00,$AF,$00,$B0,$17,$4F,$80,$B1,$6E,$00,$B2,$00,$B3 ; $D140CA
    db $00,$B4,$00,$B5,$00,$B6,$00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$BB ; $D140DA
    db $00,$BC,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00,$C1,$00,$C2,$00,$C3 ; $D140EA
    db $2E,$13,$C4,$3C,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00,$C9,$00,$CA ; $D140FA
    db $00,$CB,$00,$CC,$13,$5C,$CD,$78,$00,$CE,$00,$CF,$00,$D0,$00,$D1 ; $D1410A
    db $00,$D2,$00,$D3,$00,$D4,$00,$D5,$A1,$D6,$B8,$F1,$00,$D7,$00,$D8 ; $D1411A
    db $00,$D9,$00,$DA,$00,$DB,$00,$DC,$00,$DD,$00,$DE,$13,$DF,$71,$00 ; $D1412A
    db $E0,$00,$E1,$00,$E2,$00,$E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7,$E2 ; $D1413A
    db $13,$E8,$E3,$00,$E9,$00,$EA,$00,$EB,$00,$EC,$00,$ED,$00,$EE,$00 ; $D1414A
    db $EF,$00,$F0,$C5,$13,$F1,$C7,$00,$F2,$00,$F3,$00,$F4,$00,$F5,$00 ; $D1415A
    db $F6,$00,$F7,$00,$F8,$00,$F9,$80,$13,$FA,$00,$FB,$00,$FC,$03,$00 ; $D1416A
    db $FD,$00,$FE,$00,$FF,$A3,$88,$28,$00,$00,$13,$02,$B8,$4C,$01,$03 ; $D1417A
    db $01,$04,$01,$05,$01,$06,$01,$07,$01,$08,$13,$09,$B8,$52,$01,$0A ; $D1418A
    db $01,$0B,$01,$0C,$01,$0D,$01,$0E,$01,$0F,$13,$E3,$10,$01,$11,$01 ; $D1419A
    db $12,$01,$13,$01,$14,$01,$15,$01,$16,$01,$17,$01,$28,$43,$5C,$18 ; $D141AA
    db $26,$01,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D,$01,$1E,$13,$5C,$1F ; $D141BA
    db $26,$01,$20,$01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$13,$5C,$26 ; $D141CA
    db $26,$01,$27,$01,$28,$01,$29,$01,$2A,$01,$2B,$01,$2C,$13,$5C,$2D ; $D141DA
    db $26,$01,$2E,$01,$2F,$01,$30,$01,$31,$01,$32,$01,$33,$13,$2E,$34 ; $D141EA
    db $01,$12,$35,$01,$36,$01,$37,$01,$38,$01,$39,$01,$8B,$C0,$2E,$13 ; $D141FA
    db $3A,$13,$01,$3B,$01,$3C,$01,$3D,$01,$3E,$01,$3F,$01,$40,$2E,$27 ; $D1420A
    db $41,$13,$01,$42,$01,$43,$01,$44,$01,$45,$01,$46,$01,$47,$00,$13 ; $D1421A
    db $48,$01,$49,$01,$4A,$01,$4B,$0F,$01,$4C,$01,$4D,$01,$60,$13,$00 ; $D1422A
    db $4E,$01,$4F,$01,$03,$50,$01,$51,$01,$52,$01,$E4,$02,$47,$53,$01 ; $D1423A
    db $07,$54,$01,$55,$01,$56,$80,$05,$13,$57,$01,$58,$01,$59,$01,$78 ; $D1424A
    db $5A,$05,$13,$5B,$01,$07,$5C,$01,$5D,$01,$5E,$B0,$05,$13,$00,$5F ; $D1425A
    db $01,$60,$3D,$01,$61,$05,$11,$07,$13,$62,$9E,$0B,$13,$63,$09,$13 ; $D1426A
    db $1E,$64,$01,$65,$07,$13,$00,$66,$01,$67,$01,$68,$01,$69,$01,$78 ; $D1427A
    db $6A,$03,$15,$6B,$01,$01,$6C,$01,$6D,$01,$6E,$01,$6F,$E0,$03,$13 ; $D1428A
    db $70,$01,$71,$01,$07,$72,$01,$73,$01,$74,$BC,$07,$51,$06,$00,$75 ; $D1429A
    db $B8,$4C,$01,$76,$01,$77,$01,$18,$00,$78,$01,$79,$01,$7A,$29,$7B ; $D142AA
    db $0E,$01,$7C,$01,$7D,$02,$13,$7E,$01,$7F,$01,$80,$60,$13,$81,$01 ; $D142BA
    db $82,$01,$70,$83,$13,$84,$01,$1E,$85,$01,$86,$11,$51,$B8,$C8,$87 ; $D142CA
    db $01,$88,$01,$89,$01,$8A,$01,$8B,$01,$8C,$01,$8D,$01,$8E,$01,$13 ; $D142DA
    db $8F,$B8,$50,$01,$90,$01,$91,$01,$92,$01,$93,$01,$94,$01,$95,$13 ; $D142EA
    db $96,$01,$5C,$97,$3C,$01,$98,$01,$99,$01,$9A,$01,$9B,$01,$9C,$01 ; $D142FA
    db $9D,$11,$4F,$9E,$2E,$01,$9F,$14,$01,$A0,$01,$A1,$01,$A2,$01,$A3 ; $D1430A
    db $01,$A4,$01,$A5,$27,$17,$A6,$01,$A7,$0A,$01,$A8,$01,$A9,$01,$AA ; $D1431A
    db $01,$AB,$01,$AC,$01,$AD,$0B,$13,$AE,$01,$AF,$87,$01,$B0,$01,$B1 ; $D1432A
    db $01,$B2,$01,$B3,$01,$B4,$01,$B5,$AE,$11,$4F,$32,$83,$00,$B6,$01 ; $D1433A
    db $B7,$01,$B8,$01,$B9,$01,$BA,$01,$BB,$01,$BC,$01,$2E,$13,$BD,$13 ; $D1434A
    db $01,$BE,$01,$BF,$01,$C0,$01,$C1,$01,$C2,$01,$C3,$2E,$13,$C4,$1E ; $D1435A
    db $01,$C5,$01,$C6,$01,$C7,$01,$C8,$01,$C9,$01,$CA,$0F,$4F,$17,$95 ; $D1436A
    db $00,$CB,$1C,$01,$CC,$01,$CD,$01,$CE,$01,$CF,$01,$D0,$01,$D1,$01 ; $D1437A
    db $D2,$01,$D3,$DF,$00,$5C,$D4,$78,$01,$D5,$01,$D6,$01,$D7,$01,$D8 ; $D1438A
    db $01,$D9,$01,$DA,$01,$DB,$01,$DC,$13,$DD,$B8,$F8,$01,$DE,$01,$DF ; $D1439A
    db $01,$E0,$01,$E1,$01,$E2,$01,$E3,$01,$E4,$01,$E5,$0D,$51,$BA,$00 ; $D143AA
    db $5C,$E6,$71,$01,$E7,$01,$E8,$01,$E9,$01,$EA,$01,$EB,$01,$EC,$01 ; $D143BA
    db $ED,$01,$EE,$A7,$00,$EF,$71,$01,$F0,$01,$F1,$01,$F2,$01,$F3,$01 ; $D143CA
    db $F4,$01,$F5,$01,$F6,$01,$F7,$E0,$13,$F8,$01,$F9,$B8,$73,$01,$FA ; $D143DA
    db $01,$FB,$01,$FC,$01,$FD,$01,$FE,$01,$FF,$13,$C3,$0F,$F0,$02,$01 ; $D143EA
    db $02,$5C,$00,$32,$03,$02,$04,$02,$05,$02,$06,$02,$07,$02,$08,$02 ; $D143FA
    db $12,$09,$E3,$02,$0A,$02,$0B,$02,$0C,$02,$0D,$02,$0E,$02,$0F,$02 ; $D1440A
    db $10,$02,$11,$C2,$13,$12,$02,$E3,$13,$02,$14,$02,$15,$02,$16,$02 ; $D1441A
    db $17,$02,$18,$02,$19,$02,$1A,$02,$F9,$10,$41,$1B,$70,$02,$1C,$02 ; $D1442A
    db $1D,$02,$1E,$02,$1F,$02,$20,$02,$21,$98,$25,$22,$02,$00,$23,$02 ; $D1443A
    db $24,$02,$25,$02,$26,$02,$78,$27,$01,$13,$28,$02,$00,$29,$02,$2A ; $D1444A
    db $02,$2B,$02,$2C,$02,$7B,$2D,$01,$13,$D7,$0C,$00,$0F,$2E,$02,$2F ; $D1445A
    db $02,$30,$02,$31,$02,$32,$02,$33,$02,$01,$90,$D3,$02,$35,$02,$36 ; $D1446A
    db $03,$02,$37,$02,$38,$02,$39,$C0,$01,$13,$3A,$02,$3B,$02,$3C,$03 ; $D1447A
    db $02,$3D,$02,$3E,$02,$3F,$DE,$01,$13,$0C,$00,$B8,$5A,$48,$01,$40 ; $D1448A
    db $02,$41,$02,$42,$02,$43,$02,$44,$02,$46,$D3,$45,$02,$46,$0B,$03 ; $D1449A
    db $02,$48,$02,$49,$02,$4A,$CB,$01,$13,$4B,$87,$02,$4C,$02,$4D,$02 ; $D144AA
    db $4E,$02,$4F,$02,$50,$02,$47,$C8,$15,$21,$51,$02,$52,$03,$02,$53 ; $D144BA
    db $02,$54,$02,$55,$C0,$03,$C5,$56,$02,$57,$02,$58,$0F,$02,$59,$02 ; $D144CA
    db $5A,$03,$00,$13,$5B,$02,$5C,$02,$5D,$02,$5E,$F7,$05,$13,$83,$0E ; $D144DA
    db $00,$5F,$02,$60,$02,$E7,$09,$FB,$DE,$1F,$13,$A4,$00,$7B,$FF,$08 ; $D144EA
    db $01,$D4,$08,$00,$15,$00,$FD,$03,$F6,$0D,$D5,$06,$AA,$6C,$26,$97 ; $D144FA
    db $19,$15,$00,$FE,$FE,$F8,$C8,$ED,$F1,$DA,$61,$62,$77,$1B,$CC,$14 ; $D1450A
    db $E1,$50,$CC,$EF,$4B,$BB,$3B,$77,$77,$F7,$F7,$7F,$6F,$80,$1A,$D7 ; $D1451A
    db $F3,$F3,$A0,$9B,$6F,$18,$7F,$BB,$DF,$1B,$F7,$EF,$67,$7F,$1F,$F9 ; $D1452A
    db $77,$92,$CE,$05,$51,$06,$9F,$0D,$03,$17,$5F,$9F,$40,$0C,$57,$98 ; $D1453A
    db $BD,$96,$EB,$E5,$F4,$F2,$FC,$FA,$F9,$FA,$10,$5F,$5C,$7F,$2C,$7F ; $D1454A
    db $2F,$CF,$B3,$F3,$E8,$F9,$F5,$F9,$FD,$FD,$F8,$97,$00,$7F,$80,$5F ; $D1455A
    db $00,$AF,$B0,$2F,$E0,$F0,$02,$38,$9F,$BF,$7F,$1E,$DF,$17,$37,$02 ; $D1456A
    db $9F,$33,$F7,$04,$9F,$9F,$CE,$03,$9F,$EA,$38,$9F,$E1,$5F,$EE,$E2 ; $D1457A
    db $9F,$67,$63,$9F,$FF,$EF,$18,$10,$F5,$F1,$9F,$93,$E7,$C8,$9F,$FF ; $D1458A
    db $71,$9F,$1F,$DB,$CD,$9F,$1B,$E3,$02,$57,$FD,$24,$9E,$9F,$02,$0F ; $D1459A
    db $20,$00,$BF,$9F,$1E,$C4,$9F,$F6,$F0,$8E,$9F,$7F,$38,$9F,$4F,$9F ; $D145AA
    db $FB,$F3,$07,$9F,$7F,$8F,$9F,$AF,$03,$38,$9F,$BF,$9F,$1F,$4C,$BF ; $D145BA
    db $1F,$01,$E3,$9F,$0C,$1E,$9F,$BF,$39,$07,$9F,$63,$DF,$1B,$E4,$16 ; $D145CA
    db $18,$9F,$E7,$E9,$9F,$F7,$7F,$90,$9F,$F7,$FB,$C6,$9F,$91,$67,$9F ; $D145DA
    db $D2,$AE,$1F,$9F,$F9,$03,$06,$9F,$3F,$57,$07,$9C,$3F,$3F,$9F,$33 ; $D145EA
    db $17,$BC,$9F,$FE,$88,$9F,$FB,$38,$9F,$FF,$9F,$1B,$C7,$9F,$F3,$FD ; $D145FA
    db $1E,$9F,$FA,$03,$9F,$78,$80,$0A,$9F,$3F,$9F,$B0,$9F,$F7,$09,$C7 ; $D1460A
    db $9F,$FF,$2C,$8C,$02,$9F,$FF,$FC,$9F,$E0,$40,$CF,$9F,$EE,$14,$03 ; $D1461A
    db $44,$9C,$47,$C9,$EF,$7F,$88,$9F,$F3,$00,$9F,$FF,$FB,$F7,$F1,$B1 ; $D1462A
    db $E7,$2F,$65,$EF,$9F,$FB,$1D,$9F,$FB,$F3,$87,$55,$55,$C0,$03,$91 ; $D1463A
    db $AE,$FF,$04,$FF,$55,$FC,$04,$3F,$17,$06,$C8,$17,$9C,$BF,$B4,$9F ; $D1464A
    db $21,$F9,$FF,$9F,$18,$41,$6F,$3B,$31,$E7,$B9,$9F,$F8,$F9,$E3,$06 ; $D1465A
    db $9F,$FF,$A0,$DA,$06,$9F,$9D,$0C,$9F,$FE,$01,$02,$00,$F1,$0E,$FA ; $D1466A
    db $19,$FC,$00,$BC,$44,$66,$7C,$0B,$FE,$D4,$32,$FB,$F9,$05,$FF,$F1 ; $D1467A
    db $E4,$C1,$C1,$C5,$C1,$01,$81,$06,$38,$6F,$35,$0E,$71,$BD,$8E,$B0 ; $D1468A
    db $C0,$7E,$E0,$0E,$F0,$78,$E0,$E3,$C4,$C5,$AF,$C0,$8E,$F0,$4D,$0F ; $D1469A
    db $B0,$81,$7E,$C1,$0E,$87,$78,$EF,$CF,$5F,$1F,$3F,$90,$E9,$7F,$75 ; $D146AA
    db $70,$3F,$00,$DF,$EF,$37,$BF,$5F,$08,$68,$24,$CE,$28,$3F,$78,$01 ; $D146BA
    db $17,$00,$FA,$FB,$D8,$B3,$A5,$F3,$F4,$5C,$F1,$B2,$F4,$FD,$F0,$F3 ; $D146CA
    db $F8,$E3,$EA,$FC,$FA,$FC,$FB,$F8,$FD,$F9,$F2,$FA,$F1,$F2,$FD,$F4 ; $D146DA
    db $16,$E3,$EB,$97,$70,$CB,$30,$9B,$7B,$E8,$30,$98,$F8,$EB,$31,$9B ; $D146EA
    db $71,$F3,$34,$0B,$9B,$0D,$C5,$07,$9C,$0D,$E5,$85,$9D,$0F,$E4,$0F ; $D146FA
    db $94,$0E,$F8,$60,$DD,$3F,$C0,$9F,$07,$60,$0F,$F0,$97,$60,$A0,$02 ; $D1470A
    db $59,$93,$67,$48,$6F,$DF,$F9,$6D,$06,$DF,$05,$8E,$DF,$FC,$08,$24 ; $D1471A
    db $D9,$FF,$DF,$33,$E3,$E1,$DF,$89,$86,$DF,$6D,$15,$DF,$31,$3D,$06 ; $D1472A
    db $DF,$5E,$E2,$C6,$DF,$60,$DF,$38,$E7,$8D,$DF,$CD,$C7,$DF,$83,$5E ; $D1473A
    db $1B,$DF,$F8,$DF,$88,$D6,$BF,$1C,$4F,$7D,$7D,$08,$73,$BF,$DF,$94 ; $D1474A
    db $E8,$60,$71,$7D,$DD,$BF,$CD,$BF,$AE,$92,$04,$FC,$2C,$BF,$EB,$BF ; $D1475A
    db $48,$FA,$BF,$FC,$67,$EB,$BF,$EB,$1C,$BF,$60,$BF,$70,$C9,$BF,$73 ; $D1476A
    db $3C,$C6,$BF,$0F,$E7,$BF,$38,$8D,$6D,$BF,$C6,$C5,$BF,$86,$70,$B6 ; $D1477A
    db $9F,$BF,$31,$BF,$40,$BF,$9F,$E0,$E4,$06,$BF,$EF,$C8,$BF,$FB,$3C ; $D1478A
    db $BF,$0A,$03,$BF,$FC,$CE,$BF,$EB,$18,$BF,$8B,$83,$BF,$E5,$9D,$C7 ; $D1479A
    db $BF,$1D,$24,$18,$BF,$62,$BF,$5A,$62,$E3,$BF,$05,$20,$BF,$D2,$BF ; $D147AA
    db $DE,$E3,$BF,$DA,$6C,$BF,$A3,$B6,$FD,$44,$FD,$F1,$78,$BF,$BD,$C7 ; $D147BA
    db $BF,$FF,$39,$BF,$0F,$C2,$02,$3F,$FD,$64,$BF,$F9,$18,$BF,$F8,$BF ; $D147CA
    db $E9,$E8,$93,$BF,$67,$02,$BF,$FA,$0C,$BF,$FE,$E9,$BF,$6B,$63,$38 ; $D147DA
    db $BF,$42,$32,$18,$BF,$49,$39,$BF,$71,$1C,$C6,$BF,$8F,$67,$BF,$31 ; $D147EA
    db $8F,$4D,$BF,$87,$4E,$C4,$BF,$72,$0C,$9F,$FF,$03,$9F,$FF,$63,$0D ; $D147FA
    db $9F,$FC,$04,$51,$9F,$BA,$FC,$C4,$9F,$F0,$86,$9F,$57,$79,$9F,$31 ; $D1480A
    db $4B,$31,$9F,$F1,$C1,$8E,$9F,$5B,$E1,$31,$9F,$95,$9F,$C5,$8B,$C6 ; $D1481A
    db $9F,$F1,$9F,$30,$85,$5B,$9F,$FB,$DF,$FF,$3C,$BD,$7F,$01,$F1,$BF ; $D1482A
    db $0E,$BF,$DB,$FB,$BD,$53,$07,$AE,$99,$10,$9F,$FB,$06,$9F,$FF,$9F ; $D1483A
    db $31,$F5,$F5,$9F,$F7,$FD,$C7,$9F,$FB,$38,$01,$9F,$FE,$71,$F5,$9F ; $D1484A
    db $F7,$9C,$9F,$D7,$9F,$31,$DF,$2E,$9F,$99,$B8,$9C,$9F,$8F,$9F,$31 ; $D1485A
    db $1F,$CF,$9F,$17,$C9,$8E,$9F,$C4,$9C,$21,$9F,$80,$9F,$68,$21,$0F ; $D1486A
    db $BF,$40,$1F,$E0,$0F,$DD,$5F,$40,$3F,$FD,$00,$FC,$82,$03,$03,$26 ; $D1487A
    db $9A,$47,$C2,$FD,$32,$03,$07,$7C,$F7,$B4,$DF,$52,$EF,$6D,$C7,$C2 ; $D1488A
    db $9C,$04,$F6,$E6,$8F,$23,$8D,$A1,$B5,$81,$53,$00,$6E,$01,$CD,$0A ; $D1489A
    db $3B,$27,$EA,$0C,$37,$10,$F5,$50,$04,$E3,$EF,$9C,$F7,$98,$67,$38 ; $D148AA
    db $8F,$70,$E5,$7A,$22,$FD,$71,$3C,$D8,$04,$00,$EF,$60,$97,$C0,$A7 ; $D148BA
    db $C0,$97,$7C,$65,$68,$C0,$22,$43,$30,$DF,$1F,$8F,$0F,$C6,$02,$EF ; $D148CA
    db $0F,$FD,$0D,$FF,$0B,$7E,$66,$6F,$F0,$3F,$DF,$7F,$8F,$39,$C7,$1B ; $D148DA
    db $EF,$0B,$FD,$08,$FF,$C7,$BE,$60,$4F,$30,$6B,$FB,$A5,$77,$AD,$AD ; $D148EA
    db $09,$8F,$06,$8B,$03,$75,$1F,$74,$80,$83,$77,$76,$AD,$70,$8F,$77 ; $D148FA
    db $60,$8B,$0E,$C5,$C9,$8B,$84,$1A,$0D,$03,$BE,$BD,$E3,$80,$FD,$82 ; $D1490A
    db $F2,$35,$B4,$79,$F3,$C5,$F0,$8B,$F0,$0D,$C1,$BE,$C0,$C1,$10,$18 ; $D1491A
    db $EA,$36,$74,$90,$C5,$35,$E5,$2C,$F1,$9D,$23,$1E,$83,$7B,$2A,$F2 ; $D1492A
    db $26,$FF,$65,$F4,$5B,$8E,$18,$F4,$65,$90,$CE,$20,$1F,$84,$1A,$C2 ; $D1493A
    db $03,$20,$15,$60,$EB,$57,$A8,$FB,$A0,$FB,$54,$99,$9C,$09,$04,$D9 ; $D1494A
    db $3C,$E9,$C4,$F9,$DC,$AF,$AF,$A3,$07,$57,$07,$9D,$07,$E5,$E7,$FD ; $D1495A
    db $07,$35,$D7,$3D,$C7,$8C,$DF,$DD,$50,$DF,$CF,$63,$CA,$DF,$F4,$C4 ; $D1496A
    db $8C,$DF,$29,$DF,$73,$71,$22,$DF,$02,$C6,$DF,$0E,$DF,$70,$7D,$DF ; $D1497A
    db $CD,$BC,$C6,$DF,$EF,$30,$DF,$31,$C5,$78,$DF,$79,$34,$8E,$DF,$02 ; $D1498A
    db $CD,$31,$DF,$2F,$DF,$82,$45,$8C,$DF,$C3,$B8,$DF,$AF,$71,$2D,$DF ; $D1499A
    db $8F,$C6,$DF,$29,$DF,$31,$E7,$70,$DF,$7D,$AF,$9C,$DF,$9B,$DF,$70 ; $D149AA
    db $28,$DF,$68,$C7,$F1,$02,$DF,$AF,$24,$C4,$DF,$88,$87,$DF,$76,$FF ; $D149BA
    db $19,$DF,$AF,$DF,$88,$C3,$DF,$AB,$A4,$38,$DF,$B6,$DF,$DF,$E1,$DF ; $D149CA
    db $3C,$71,$C6,$DF,$AB,$DF,$31,$C9,$B6,$DF,$A0,$DF,$8E,$DF,$B6,$18 ; $D149DA
    db $24,$DF,$0C,$DF,$31,$08,$F0,$DF,$6D,$FC,$8C,$DF,$1A,$F6,$DF,$C6 ; $D149EA
    db $83,$DF,$02,$8E,$DF,$68,$31,$DF,$80,$DF,$11,$1C,$C6,$DF,$1C,$DF ; $D149FA
    db $32,$79,$54,$DF,$83,$0E,$DF,$8F,$31,$DF,$27,$DF,$B5,$C7,$F9,$07 ; $D14A0A
    db $DF,$01,$F9,$06,$DF,$FD,$D8,$DF,$5D,$D8,$C6,$FF,$ED,$C8,$FF,$31 ; $D14A1A
    db $FC,$CC,$FF,$AF,$09,$8C,$FF,$FB,$A2,$FF,$EF,$82,$FF,$06,$43,$FF ; $D14A2A
    db $4D,$34,$38,$FF,$CD,$FF,$4D,$63,$70,$FF,$59,$36,$38,$FF,$82,$FF ; $D14A3A
    db $C2,$71,$0D,$FF,$CD,$8D,$FF,$C1,$98,$FF,$B1,$D8,$FF,$CD,$AD,$9C ; $D14A4A
    db $FF,$7D,$FF,$70,$E5,$FF,$FD,$AD,$E3,$FF,$CD,$18,$FF,$A2,$7D,$FF ; $D14A5A
    db $4A,$E5,$91,$FF,$77,$C3,$FF,$AD,$AC,$8F,$FF,$AA,$02,$C6,$DF,$FA ; $D14A6A
    db $AD,$FF,$41,$AA,$FF,$AC,$8C,$FF,$B4,$A2,$FF,$D7,$E3,$FF,$1E,$8E ; $D14A7A
    db $FF,$F8,$18,$FF,$E9,$B4,$FF,$A8,$D7,$C6,$FF,$94,$1A,$FF,$70,$65 ; $D14A8A
    db $FF,$21,$3C,$C6,$FF,$80,$78,$FF,$70,$4D,$FF,$92,$76,$C6,$FF,$E6 ; $D14A9A
    db $22,$FF,$31,$12,$82,$FF,$17,$4A,$8C,$FF,$73,$08,$FF,$33,$63,$3C ; $D14AAA
    db $FF,$59,$14,$18,$FF,$D9,$D4,$FF,$8B,$8F,$CE,$FF,$BF,$1C,$FF,$F5 ; $D14ABA
    db $A7,$FF,$53,$67,$FF,$B2,$01,$FC,$68,$01,$2A,$FF,$FE,$64,$5D,$01 ; $D14ACA
    db $81,$FF,$EE,$6C,$21,$FF,$9E,$22,$21,$FF,$7F,$11,$8C,$FF,$7F,$63 ; $D14ADA
    db $FF,$73,$67,$41,$FF,$51,$0C,$FF,$F3,$C9,$FF,$DE,$63,$60,$FF,$62 ; $D14AEA
    db $FC,$18,$FF,$8D,$51,$F7,$25,$D3,$C6,$FF,$81,$5E,$07,$38,$81,$62 ; $D14AFA
    db $FF,$5F,$C0,$FF,$D3,$53,$ED,$8D,$F9,$06,$5D,$7F,$2B,$3B,$33,$FF ; $D14B0A
    db $70,$7F,$FF,$7D,$D3,$0C,$BB,$CD,$5B,$F9,$46,$C7,$49,$BB,$FF,$1F ; $D14B1A
    db $ED,$02,$FD,$FD,$AF,$AE,$DF,$57,$47,$FF,$75,$00,$81,$77,$FD,$FA ; $D14B2A
    db $AF,$77,$DF,$C6,$0E,$D1,$D9,$FF,$31,$59,$53,$FF,$EA,$C1,$80,$FF ; $D14B3A
    db $A3,$24,$1E,$51,$F6,$D1,$C6,$FF,$F4,$59,$FF,$30,$D4,$EA,$FF,$58 ; $D14B4A
    db $AB,$B4,$19,$1A,$85,$31,$FF,$E5,$C3,$FF,$87,$7F,$01,$FF,$27,$FB ; $D14B5A
    db $45,$FC,$4F,$8A,$8C,$FF,$61,$84,$FF,$0B,$E3,$FF,$0F,$0E,$FF,$42 ; $D14B6A
    db $47,$B8,$36,$FF,$00,$FF,$FD,$C0,$01,$F9,$94,$D9,$54,$BF,$67,$BF ; $D14B7A
    db $FF,$03,$0E,$FF,$B5,$A7,$07,$FF,$87,$35,$67,$F9,$4F,$D3,$0E,$03 ; $D14B8A
    db $01,$F8,$F6,$C3,$9C,$03,$FC,$76,$F8,$F7,$14,$F8,$FF,$FC,$03,$5F ; $D14B9A
    db $8D,$FB,$29,$8D,$AF,$86,$24,$84,$26,$C6,$67,$4F,$DE,$4E,$9F,$6C ; $D14BAA
    db $3E,$7F,$52,$FB,$54,$72,$54,$73,$55,$71,$16,$F9,$A6,$B9,$A6,$3B ; $D14BBA
    db $85,$D3,$BF,$98,$BD,$AC,$9E,$C7,$DF,$77,$61,$7E,$7D,$1C,$1C,$07 ; $D14BCA
    db $04,$E3,$12,$E2,$58,$B1,$0C,$F8,$27,$7A,$09,$75,$0C,$91,$8F,$FE ; $D14BDA
    db $F9,$09,$D5,$C7,$B1,$AF,$9C,$F3,$F6,$F2,$AB,$03,$DF,$CF,$48,$97 ; $D14BEA
    db $B4,$23,$2A,$CD,$03,$CC,$AB,$0B,$F0,$07,$F2,$00,$FB,$A0,$6F,$D7 ; $D14BFA
    db $D8,$FC,$8D,$8F,$FC,$07,$71,$76,$8B,$FA,$02,$26,$A9,$FF,$20,$FF ; $D14C0A
    db $88,$06,$FA,$8D,$06,$89,$8E,$06,$70,$07,$FA,$70,$56,$A8,$52,$DD ; $D14C1A
    db $86,$07,$5F,$18,$6D,$89,$EB,$50,$F3,$FC,$5E,$FB,$70,$FD,$D9,$91 ; $D14C2A
    db $4F,$69,$26,$A2,$9A,$00,$9C,$89,$80,$7F,$02,$7C,$05,$F9,$2C,$B7 ; $D14C3A
    db $5B,$DC,$5C,$ED,$CD,$E7,$AB,$C9,$19,$C3,$7B,$2F,$FC,$C3,$C0,$C0 ; $D14C4A
    db $49,$79,$3F,$42,$36,$D1,$6A,$81,$E6,$25,$EC,$83,$47,$24,$BF,$87 ; $D14C5A
    db $CE,$74,$E8,$AE,$D3,$C8,$1D,$C4,$89,$C0,$58,$90,$91,$18,$12,$08 ; $D14C6A
    db $F1,$20,$34,$37,$D3,$08,$24,$E7,$61,$A7,$F0,$27,$D9,$4F,$CA,$CF ; $D14C7A
    db $21,$0F,$3B,$FB,$F9,$92,$2B,$F8,$00,$68,$01,$6E,$FB,$B6,$49,$FB ; $D14C8A
    db $01,$89,$FF,$AF,$AD,$0C,$FF,$6D,$DC,$FF,$E4,$67,$36,$FF,$F9,$0C ; $D14C9A
    db $FF,$7B,$5D,$FF,$FB,$71,$86,$FF,$0D,$89,$FF,$BA,$BF,$98,$FF,$5F ; $D14CAA
    db $FF,$8F,$0C,$C6,$FF,$C0,$7A,$FF,$38,$70,$A7,$FF,$0E,$C6,$FF,$76 ; $D14CBA
    db $79,$FF,$31,$C5,$91,$FF,$FB,$76,$C6,$FF,$DC,$FF,$31,$9F,$3C,$FF ; $D14CCA
    db $EF,$01,$89,$FF,$03,$F8,$1C,$FF,$57,$FF,$31,$8D,$DC,$FF,$FE,$03 ; $D14CDA
    db $21,$FF,$77,$00,$8E,$FF,$AF,$04,$61,$FF,$1F,$FA,$50,$76,$C6,$FF ; $D14CEA
    db $88,$FF,$31,$3A,$4D,$FF,$FF,$77,$C6,$FF,$DF,$FF,$31,$C7,$E9,$FF ; $D14CFA
    db $98,$22,$8E,$FF,$08,$F7,$31,$FF,$FB,$FF,$53,$D4,$96,$FF,$CF,$31 ; $D14D0A
    db $FF,$C1,$FF,$C9,$71,$9C,$FF,$16,$FF,$70,$6E,$FF,$67,$82,$C6,$FF ; $D14D1A
    db $0F,$C6,$FF,$70,$D9,$FF,$09,$40,$CE,$FF,$B1,$20,$FF,$79,$FF,$E7 ; $D14D2A
    db $CE,$FF,$E1,$38,$FF,$F9,$FF,$A1,$71,$87,$DF,$8D,$8C,$DF,$A4,$04 ; $D14D3A
    db $DF,$67,$63,$56,$DF,$E6,$14,$20,$DF,$D9,$DF,$5F,$E3,$DF,$8C,$38 ; $D14D4A
    db $DF,$39,$DF,$32,$63,$3F,$DF,$CD,$F7,$18,$DF,$FE,$DF,$DF,$AD,$0E ; $D14D5A
    db $E3,$DF,$F2,$19,$DF,$50,$8D,$DF,$F5,$C2,$DF,$74,$59,$47,$DF,$DB ; $D14D6A
    db $0C,$DF,$7B,$D4,$DF,$BD,$63,$16,$DF,$6F,$81,$1C,$DF,$01,$DA,$DF ; $D14D7A
    db $63,$7B,$DF,$55,$F8,$C6,$02,$DF,$AE,$01,$DF,$31,$55,$22,$DF,$27 ; $D14D8A
    db $8C,$8E,$DF,$04,$FA,$32,$DF,$FE,$DF,$DD,$0C,$DF,$45,$DF,$FD,$63 ; $D14D9A
    db $55,$DF,$F3,$5F,$12,$DF,$45,$EB,$20,$DF,$0A,$DF,$F3,$C6,$DF,$51 ; $D14DAA
    db $54,$DF,$70,$4F,$DF,$1B,$E3,$CE,$DF,$F4,$38,$DF,$CB,$DF,$1E,$63 ; $D14DBA
    db $51,$DF,$4E,$05,$18,$DF,$6F,$8A,$DF,$0D,$C4,$E2,$DF,$54,$58,$DF ; $D14DCA
    db $B9,$90,$E1,$DF,$00,$34,$D3,$D3,$C6,$DF,$27,$DF,$21,$F1,$47,$DF ; $D14DDA
    db $29,$D5,$2A,$F8,$01,$39,$E1,$03,$29,$D5,$22,$F9,$FF,$20,$E1,$03 ; $D14DEA
    db $CC,$63,$68,$FF,$97,$30,$01,$FF,$97,$26,$67,$54,$1F,$8E,$8E,$FF ; $D14DFA
    db $7B,$13,$30,$FF,$40,$FF,$74,$42,$F9,$18,$8C,$FC,$E2,$FF,$C6,$BB ; $D14E0A
    db $C0,$FF,$EC,$CE,$C5,$F5,$76,$63,$35,$FF,$1D,$1D,$18,$FF,$E2,$06 ; $D14E1A
    db $FF,$F1,$1C,$0C,$5A,$85,$6A,$1C,$FF,$C0,$60,$DF,$FF,$48,$C0,$45 ; $D14E2A
    db $91,$03,$FA,$88,$FB,$54,$F7,$AA,$18,$FF,$8E,$5C,$FF,$37,$6A,$06 ; $D14E3A
    db $6F,$01,$8D,$FA,$01,$EE,$63,$F7,$FF,$A1,$2F,$01,$FF,$A8,$88,$05 ; $D14E4A
    db $54,$03,$20,$D6,$F0,$31,$FF,$FB,$21,$C0,$FF,$57,$AA,$AF,$04,$DC ; $D14E5A
    db $63,$8B,$FF,$02,$FF,$38,$FF,$AC,$FF,$96,$63,$0F,$FF,$DC,$AB,$8C ; $D14E6A
    db $FF,$AD,$FF,$88,$63,$D4,$FF,$62,$B6,$18,$FF,$88,$DC,$FF,$03,$7D ; $D14E7A
    db $C6,$FF,$29,$A3,$FF,$03,$4D,$B9,$4F,$EF,$AB,$D9,$01,$FF,$3B,$3A ; $D14E8A
    db $F6,$C1,$D5,$C4,$80,$FF,$2F,$42,$16,$59,$2F,$84,$E0,$FF,$D6,$6D ; $D14E9A
    db $88,$30,$7E,$AA,$FF,$B9,$94,$D9,$18,$D4,$99,$94,$FF,$19,$94,$CE ; $D14EAA
    db $FF,$43,$19,$FF,$75,$C7,$FF,$75,$C3,$FF,$F5,$67,$1A,$FF,$DB,$9F ; $D14EBA
    db $FF,$D2,$D7,$FA,$9A,$03,$D2,$D7,$FA,$9A,$03,$FF,$2B,$6D,$28,$08 ; $D14ECA
    db $36,$17,$16,$B4,$15,$05,$1E,$C7,$0A,$51,$0F,$D0,$7E,$D1,$1F,$D7 ; $D14EDA
    db $1C,$CA,$BF,$E9,$0E,$EB,$CE,$E0,$5C,$F4,$DC,$F1,$F9,$F9,$56,$03 ; $D14EEA
    db $F2,$0E,$3C,$07,$76,$D6,$AB,$2D,$64,$26,$AB,$A2,$0F,$F9,$FC,$AA ; $D14EFA
    db $01,$F3,$F8,$C4,$5F,$76,$77,$6D,$BF,$AA,$7E,$E5,$9F,$8F,$1D,$D9 ; $D14F0A
    db $7E,$40,$8E,$81,$77,$7D,$E2,$5E,$34,$FF,$F9,$AF,$7D,$EF,$D7,$33 ; $D14F1A
    db $2D,$81,$FE,$7E,$F0,$01,$7C,$89,$56,$FA,$FD,$35,$9E,$FF,$77,$27 ; $D14F2A
    db $AC,$F8,$FB,$73,$76,$0E,$03,$FC,$FD,$FE,$76,$7F,$37,$C5,$0F,$74 ; $D14F3A
    db $57,$EF,$FC,$F8,$F9,$72,$FC,$F2,$FE,$FC,$73,$FD,$CD,$B3,$CC,$8C ; $D14F4A
    db $C3,$DE,$F8,$8F,$C6,$7C,$BC,$67,$FB,$28,$7B,$B6,$B9,$9C,$BF,$5C ; $D14F5A
    db $61,$A2,$70,$88,$83,$45,$18,$A4,$CD,$3A,$30,$7B,$C2,$B9,$35,$13 ; $D14F6A
    db $EF,$0F,$41,$DE,$46,$46,$6D,$39,$3A,$BC,$17,$5F,$FE,$D8,$9F,$CC ; $D14F7A
    db $39,$FF,$10,$21,$60,$FF,$B9,$C7,$AA,$7B,$39,$FB,$FC,$DB,$3D,$E2 ; $D14F8A
    db $50,$21,$10,$E2,$C0,$41,$60,$42,$20,$C5,$80,$83,$E0,$C5,$00,$D2 ; $D14F9A
    db $1F,$D1,$DF,$C2,$1F,$E1,$BF,$A2,$BF,$85,$3F,$E3,$7F,$05,$3F,$01 ; $D14FAA
    db $9B,$D7,$1E,$01,$FF,$06,$01,$C6,$FF,$2A,$2A,$FF,$31,$1E,$3C,$FF ; $D14FBA
    db $3C,$E5,$C6,$FF,$50,$FF,$70,$3D,$FF,$3F,$E1,$C6,$FF,$EE,$C2,$FF ; $D14FCA
    db $70,$54,$FF,$74,$01,$C8,$FF,$BC,$31,$FF,$2F,$FF,$A3,$AA,$8C,$FF ; $D14FDA
    db $DE,$8A,$FF,$78,$63,$44,$FF,$55,$6F,$18,$FF,$FE,$6D,$FF,$3F,$DB ; $D14FEA
    db $E3,$FF,$89,$8E,$FF,$16,$31,$FF,$75,$FF,$31,$0F,$8C,$FF,$76,$F8 ; $D14FFA
    db $FF,$A9,$66,$76,$FF,$BD,$13,$1C,$77,$07,$AE,$FF,$63,$FE,$FF,$FE ; $D1500A
    db $DF,$38,$16,$77,$FF,$54,$E3,$FF,$71,$87,$FF,$DC,$FE,$18,$FF,$BB ; $D1501A
    db $FF,$E1,$FE,$C6,$FF,$CE,$FC,$FF,$38,$DB,$0A,$FF,$15,$C6,$FF,$41 ; $D1502A
    db $A0,$FF,$33,$03,$CD,$FF,$ED,$87,$FF,$CA,$31,$18,$FF,$2D,$FF,$CE ; $D1503A
    db $C6,$C7,$FF,$1A,$BE,$18,$FF,$50,$FF,$DD,$30,$C6,$FF,$77,$B1,$FF ; $D1504A
    db $33,$5B,$19,$FF,$53,$8E,$FF,$03,$00,$FF,$C1,$60,$40,$20,$E5,$80 ; $D1505A
    db $80,$CC,$FF,$80,$FF,$F3,$70,$FF,$FF,$3F,$A0,$C1,$FF,$1F,$E0,$7F ; $D1506A
    db $85,$E7,$07,$FF,$FA,$90,$07,$FF,$FA,$FF,$64,$AA,$FF,$3C,$19,$FF ; $D1507A
    db $65,$FF,$2F,$C3,$FF,$B5,$DF,$8C,$FF,$C3,$FF,$66,$E1,$FF,$56,$D1 ; $D1508A
    db $89,$FF,$7C,$09,$99,$FF,$8F,$FF,$83,$06,$FF,$82,$FF,$70,$58,$FF ; $D1509A
    db $FD,$47,$C6,$FF,$DE,$4D,$FF,$31,$B5,$F9,$FF,$AC,$AB,$90,$FF,$DE ; $D150AA
    db $FF,$63,$57,$FF,$13,$A7,$12,$FF,$74,$D8,$19,$FF,$BF,$14,$EF,$8F ; $D150BA
    db $D9,$FF,$51,$C3,$FF,$DE,$77,$8C,$FF,$15,$0F,$56,$63,$DD,$FF,$51 ; $D150CA
    db $50,$18,$FF,$54,$DE,$FF,$EF,$99,$CE,$FF,$41,$18,$FF,$EC,$FE,$FF ; $D150DA
    db $D3,$8A,$99,$FF,$00,$9C,$FF,$21,$FF,$31,$65,$B2,$FF,$EA,$13,$C6 ; $D150EA
    db $FF,$AD,$FF,$70,$EE,$FF,$BA,$3E,$EB,$18,$E6,$58,$FF,$5D,$B0,$E3 ; $D150FA
    db $FF,$91,$3B,$FF,$D3,$18,$FF,$53,$1F,$FF,$83,$18,$C4,$FF,$E1,$40 ; $D1510A
    db $CC,$FF,$A0,$FF,$FB,$62,$7F,$FF,$C1,$1F,$42,$FF,$A5,$3F,$7D,$D5 ; $D1511A
    db $F9,$02,$05,$FE,$01,$CA,$D9,$4C,$05,$7F,$6C,$FF,$77,$E1,$FF,$14 ; $D1512A
    db $54,$8C,$FF,$0E,$00,$FF,$7F,$63,$80,$FF,$19,$8E,$18,$FF,$5B,$EF ; $D1513A
    db $FF,$1D,$F1,$C6,$FF,$BD,$E8,$FF,$31,$E7,$0A,$FF,$77,$83,$80,$FF ; $D1514A
    db $55,$67,$A3,$8A,$0A,$BD,$C6,$FF,$15,$B2,$FF,$03,$0F,$22,$DD,$47 ; $D1515A
    db $CE,$8B,$01,$FF,$DE,$8F,$95,$F9,$6B,$54,$C0,$FF,$F3,$DE,$96,$FF ; $D1516A
    db $60,$AC,$FF,$AA,$D6,$13,$87,$31,$C0,$AB,$FF,$05,$78,$8C,$FF,$FF ; $D1517A
    db $A8,$FF,$AA,$0E,$76,$8D,$AC,$AC,$01,$FF,$5F,$56,$FE,$DF,$FF,$23 ; $D1518A
    db $80,$69,$AB,$23,$56,$DF,$A8,$AC,$C0,$FF,$AD,$F2,$FC,$56,$77,$63 ; $D1519A
    db $A8,$FF,$88,$DD,$18,$FF,$BD,$DB,$FF,$FD,$77,$0C,$DB,$8A,$7F,$A6 ; $D151AA
    db $FF,$AA,$63,$08,$FF,$34,$89,$01,$FF,$0C,$F1,$6D,$B2,$71,$2E,$8C ; $D151BA
    db $FF,$75,$53,$FF,$44,$60,$CA,$FF,$7C,$28,$AA,$06,$03,$56,$40,$EC ; $D151CA
    db $40,$89,$78,$18,$FF,$31,$71,$FF,$C3,$AB,$00,$FB,$01,$FF,$01,$5B ; $D151DA
    db $07,$F3,$10,$C7,$FF,$F2,$80,$19,$FF,$30,$FF,$C0,$C3,$FF,$D3,$0F ; $D151EA
    db $8C,$FF,$0F,$FF,$B0,$83,$FF,$3F,$5A,$FF,$D8,$DF,$45,$01,$1F,$E9 ; $D151FA
    db $04,$E4,$5B,$51,$E9,$2A,$80,$17,$C5,$00,$F2,$28,$49,$C4,$74,$12 ; $D1520A
    db $B0,$19,$6A,$AA,$17,$C5,$F3,$FF,$AA,$8F,$F5,$B7,$B8,$8B,$6F,$E7 ; $D1521A
    db $02,$55,$0F,$DC,$07,$4D,$07,$D9,$03,$4C,$05,$DA,$02,$4D,$00,$5F ; $D1522A
    db $5C,$F8,$DD,$F0,$4D,$F8,$D9,$F8,$4C,$FC,$DA,$FA,$4D,$FD,$5F,$FF ; $D1523A
    db $67,$AA,$7F,$98,$82,$80,$FA,$86,$32,$2A,$57,$A8,$5C,$03,$61,$A1 ; $D1524A
    db $74,$23,$18,$7F,$B9,$F9,$06,$05,$2A,$00,$A8,$A8,$61,$BD,$61,$AD ; $D1525A
    db $8C,$DB,$42,$48,$C4,$AF,$03,$BD,$A4,$FE,$A3,$D7,$28,$2B,$D5,$81 ; $D1526A
    db $7F,$27,$E2,$33,$71,$F5,$52,$E6,$42,$A3,$01,$28,$28,$D5,$D4,$7F ; $D1527A
    db $7E,$77,$FB,$73,$F9,$8C,$8C,$FE,$71,$88,$8C,$F8,$37,$8E,$8F,$56 ; $D1528A
    db $75,$77,$73,$02,$77,$8B,$89,$71,$71,$FC,$77,$37,$07,$FF,$71,$8D ; $D1529A
    db $D9,$27,$57,$FA,$FB,$DF,$75,$00,$C5,$00,$7F,$3F,$C3,$C0,$5B,$A5 ; $D152AA
    db $2A,$D8,$AF,$06,$FD,$FB,$8D,$50,$00,$BD,$3C,$B8,$42,$C0,$C0,$A5 ; $D152BA
    db $A4,$DF,$D4,$F9,$7D,$FD,$C9,$EA,$D5,$DE,$E1,$7A,$05,$CD,$32,$F2 ; $D152CA
    db $AD,$5B,$3A,$E7,$1A,$D5,$15,$00,$DD,$85,$85,$B2,$32,$0C,$2D,$8D ; $D152DA
    db $83,$60,$DB,$82,$B8,$75,$60,$45,$88,$02,$E0,$04,$E9,$01,$E0,$84 ; $D152EA
    db $62,$63,$6E,$13,$12,$62,$7F,$8D,$BF,$E2,$FF,$ED,$FF,$E0,$FE,$67 ; $D152FA
    db $7F,$CC,$19,$1F,$5E,$A0,$02,$97,$18,$73,$68,$C3,$B0,$58,$19,$1F ; $D1530A
    db $FF,$00,$AF,$8F,$7F,$6F,$EB,$8F,$B3,$3F,$FD,$06,$3D,$F9,$04,$3F ; $D1531A
    db $FE,$48,$01,$96,$53,$C0,$01,$00,$08,$70,$A8,$69,$E4,$74,$B0,$18 ; $D1532A
    db $44,$6A,$80,$53,$C0,$FF,$88,$BF,$A8,$8F,$F5,$09,$97,$B8,$8B,$6E ; $D1533A
    db $E0,$3F,$0F,$59,$03,$4C,$76,$07,$3F,$76,$08,$3F,$76,$DF,$3F,$3B ; $D1534A
    db $59,$F0,$3B,$3F,$F8,$3B,$3F,$F7,$00,$3F,$BA,$82,$80,$F2,$F2,$FF ; $D1535A
    db $2A,$76,$75,$3F,$27,$E9,$29,$81,$3F,$0D,$2A,$00,$AA,$8A,$8E,$63 ; $D1536A
    db $2D,$04,$CB,$3F,$E4,$87,$AF,$03,$35,$AC,$FE,$A3,$D5,$08,$2B,$D5 ; $D1537A
    db $89,$FF,$6B,$3F,$97,$73,$F5,$52,$6E,$4A,$A3,$01,$2A,$2A,$D5,$D4 ; $D1538A
    db $FF,$76,$77,$FB,$71,$D9,$8C,$8C,$76,$64,$3F,$FA,$F2,$3F,$57,$33 ; $D1539A
    db $3F,$F9,$B2,$3F,$05,$78,$3F,$F9,$DE,$18,$75,$08,$88,$E0,$3D,$E0 ; $D153AA
    db $B8,$63,$5B,$A5,$A2,$D0,$AF,$06,$DD,$F9,$8D,$51,$88,$F7,$64,$E2 ; $D153BA
    db $C2,$B0,$3F,$5C,$79,$FD,$19,$FD,$E9,$EA,$5A,$7F,$80,$7B,$5A,$07 ; $D153CA
    db $CD,$32,$FA,$2D,$2B,$DB,$BA,$30,$3F,$F7,$7B,$A7,$A5,$B2,$B9,$F7 ; $D153DA
    db $32,$AD,$05,$82,$60,$C5,$20,$80,$60,$40,$80,$00,$E0,$20,$C9,$01 ; $D153EA
    db $E0,$80,$E2,$62,$7F,$25,$3F,$60,$80,$2C,$E0,$FF,$C9,$DF,$E0,$12 ; $D153FA
    db $FE,$E3,$7F,$C0,$3D,$1F,$80,$77,$A8,$93,$EC,$3F,$43,$4B,$30,$02 ; $D1540A
    db $3D,$8F,$EF,$AF,$8F,$7B,$32,$3F,$BF,$59,$1F,$E2,$D9,$1F,$61,$D8 ; $D1541A
    db $1F,$1A,$48,$96,$1F,$00,$8A,$9F,$A8,$8F,$FD,$9F,$B8,$8B,$3B,$4C ; $D1542A
    db $E5,$07,$1F,$5C,$07,$4D,$0D,$60,$1F,$0D,$50,$02,$4D,$07,$0A,$5D ; $D1543A
    db $5C,$F8,$5F,$60,$1F,$5B,$F2,$4C,$FC,$03,$52,$F2,$4D,$FD,$5D,$F5 ; $D1544A
    db $B3,$1F,$38,$B0,$1F,$F0,$FF,$2A,$30,$F7,$A0,$6A,$EB,$2B,$74,$13 ; $D1545A
    db $23,$92,$FD,$DD,$1F,$EB,$4B,$2F,$B3,$1F,$C0,$B6,$1F,$FA,$B8,$76 ; $D1546A
    db $FE,$A3,$75,$00,$2B,$D5,$A9,$FD,$27,$E2,$3B,$FB,$1F,$07,$48,$A3 ; $D1547A
    db $01,$AA,$8A,$67,$1F,$56,$6B,$1F,$97,$71,$8C,$8C,$DE,$DB,$88,$8C ; $D1548A
    db $78,$35,$8E,$8F,$54,$55,$77,$73,$DF,$FF,$77,$8B,$AB,$40,$5F,$BF ; $D1549A
    db $87,$FF,$1D,$71,$AF,$FB,$97,$1F,$79,$2C,$DE,$75,$76,$D6,$00,$7F ; $D154AA
    db $BF,$EA,$5B,$A5,$A0,$F0,$AF,$06,$7D,$D1,$8D,$51,$FE,$89,$D8,$EA ; $D154BA
    db $5C,$40,$31,$A5,$A4,$FF,$5E,$79,$FD,$F5,$61,$EA,$D5,$8A,$DD,$7B ; $D154CA
    db $FA,$AF,$D8,$1F,$2F,$DB,$3B,$BA,$EF,$1C,$1F,$FD,$75,$7B,$E8,$5F ; $D154DA
    db $46,$AF,$1F,$0E,$A0,$80,$60,$62,$C0,$1F,$A0,$C1,$01,$E0,$82,$3A ; $D154EA
    db $E0,$62,$A3,$73,$60,$7F,$82,$BD,$48,$02,$C1,$5F,$E0,$FE,$E1,$7D ; $D154FA
    db $58,$1F,$3F,$A0,$11,$77,$A8,$13,$93,$1F,$10,$80,$5D,$CF,$AF,$8F ; $D1550A
    db $FB,$04,$EF,$EB,$8F,$93,$BF,$A4,$7D,$E2,$28,$00,$61,$EC,$61,$E4 ; $D1551A
    db $31,$F0,$1A,$48,$9C,$90,$7D,$9F,$FD,$01,$17,$CF,$4C,$E5,$0C,$16 ; $D1552A
    db $14,$0F,$5C,$16,$48,$0F,$59,$07,$58,$05,$50,$03,$02,$5C,$55,$32 ; $D1553A
    db $1D,$E9,$5F,$F0,$49,$E9,$5B,$F0,$59,$F8,$5A,$FA,$03,$5D,$E5,$FD ; $D1554A
    db $47,$FB,$75,$32,$D2,$94,$F2,$F0,$FE,$6A,$F7,$A2,$55,$EE,$EB,$2B ; $D1555A
    db $55,$12,$BA,$80,$E0,$2D,$FF,$0D,$3F,$41,$A8,$61,$0A,$D1,$2F,$04 ; $D1556A
    db $9F,$77,$03,$C0,$64,$BA,$52,$37,$8E,$BF,$A3,$75,$2A,$6B,$C1,$A3 ; $D1557A
    db $DD,$76,$E3,$3B,$7B,$E5,$57,$6E,$48,$E6,$41,$80,$A0,$94,$D5,$F7 ; $D1558A
    db $54,$77,$AE,$51,$71,$88,$88,$56,$73,$8D,$89,$7F,$07,$DE,$56,$55 ; $D1559A
    db $73,$26,$71,$8E,$7F,$DF,$23,$F9,$F9,$76,$BD,$05,$AB,$25,$AF,$F9 ; $D155AA
    db $73,$02,$DA,$F9,$DF,$60,$2A,$8A,$54,$3E,$9F,$42,$5E,$B0,$A0,$70 ; $D155BA
    db $FF,$06,$7D,$F1,$8C,$40,$A0,$DF,$3F,$AB,$E8,$62,$E5,$B1,$DF,$7E ; $D155CA
    db $25,$B0,$F5,$61,$BF,$90,$0A,$5D,$55,$FB,$D0,$85,$DD,$72,$FA,$2D ; $D155DA
    db $9A,$F2,$EF,$1A,$C5,$50,$FD,$F5,$AF,$FA,$2F,$AF,$F2,$00,$22,$AF ; $D155EA
    db $05,$C2,$20,$C5,$A0,$C5,$EC,$1F,$44,$00,$A1,$20,$41,$44,$B0,$02 ; $D155FA
    db $60,$22,$EA,$DC,$93,$2D,$65,$3F,$82,$9F,$A5,$BF,$C1,$DF,$B5,$BF ; $D1560A
    db $E1,$FD,$80,$1F,$37,$B8,$13,$18,$23,$38,$FC,$02,$1F,$FF,$5E,$CF ; $D1561A
    db $B3,$FB,$EF,$FB,$DF,$93,$BF,$0A,$10,$66,$0F,$F6,$0B,$F7,$00,$E2 ; $D1562A
    db $07,$E7,$00,$82,$05,$37,$00,$14,$F5,$6F,$F9,$FB,$F9,$F0,$F8,$E7 ; $D1563A
    db $FD,$E0,$F8,$85,$FD,$30,$F8,$00,$0F,$01,$1F,$03,$8D,$07,$08,$1F ; $D1564A
    db $EF,$06,$0A,$35,$92,$0D,$0F,$00,$3D,$FE,$8D,$FC,$08,$F8,$EF,$E0 ; $D1565A
    db $0C,$0B,$F9,$9A,$CA,$0D,$BF,$2E,$80,$47,$79,$79,$80,$7F,$3D,$FD ; $D1566A
    db $9E,$DE,$BF,$C0,$BF,$9E,$1F,$E3,$FF,$40,$F9,$B8,$3E,$41,$DE,$9C ; $D1567A
    db $FF,$1E,$00,$7D,$5E,$7C,$E3,$E0,$41,$FF,$63,$3D,$96,$8A,$3E,$96 ; $D1568A
    db $5B,$98,$61,$D3,$77,$49,$F5,$F1,$FF,$3E,$FD,$9C,$EB,$69,$97,$C1 ; $D1569A
    db $1F,$A4,$2C,$4D,$CC,$8B,$FA,$0D,$FC,$FF,$50,$73,$72,$F9,$76,$73 ; $D156AA
    db $FC,$FC,$FA,$FC,$7A,$7A,$7C,$7F,$77,$FB,$8F,$DF,$75,$75,$FF,$71 ; $D156BA
    db $FB,$FF,$C2,$85,$FD,$7B,$FD,$FF,$7C,$19,$FE,$37,$E4,$3B,$E4,$71 ; $D156CA
    db $C3,$B5,$0D,$77,$98,$57,$63,$7F,$2B,$F0,$E9,$FD,$C9,$E1,$C5,$C7 ; $D156DA
    db $89,$C3,$49,$60,$17,$EC,$AB,$AB,$80,$79,$2E,$D4,$33,$EF,$35,$87 ; $D156EA
    db $58,$C9,$DC,$EF,$1B,$6D,$C8,$EA,$98,$9E,$A6,$BB,$AB,$85,$90,$78 ; $D156FA
    db $08,$FF,$C6,$07,$E8,$3B,$52,$1F,$95,$02,$E0,$03,$E7,$C3,$AE,$C7 ; $D1570A
    db $74,$20,$C2,$2F,$87,$40,$C2,$0D,$D7,$A0,$E1,$FD,$E7,$FC,$AE,$3C ; $D1571A
    db $20,$38,$AF,$3D,$40,$78,$8D,$3D,$B0,$38,$83,$40,$33,$D8,$BE,$01 ; $D1572A
    db $00,$3F,$E0,$01,$0F,$00,$67,$0E,$00,$43,$7F,$B3,$C3,$21,$7F,$FF ; $D1573A
    db $3F,$98,$01,$DD,$67,$FF,$1E,$FE,$00,$FF,$05,$01,$7D,$FE,$04,$F9 ; $D1574A
    db $E0,$00,$2C,$3F,$E7,$EC,$3F,$87,$09,$00,$02,$05,$3F,$E7,$3F,$E0 ; $D1575A
    db $60,$3F,$80,$F8,$05,$FD,$76,$38,$3F,$00,$03,$1D,$03,$8D,$0F,$88 ; $D1576A
    db $1F,$EF,$46,$04,$3F,$60,$87,$53,$1D,$FC,$8D,$FC,$3B,$88,$F0,$07 ; $D1577A
    db $3F,$FB,$9A,$CA,$87,$67,$3F,$65,$6B,$3F,$86,$B5,$F5,$9E,$DE,$BD ; $D1578A
    db $E0,$BF,$9E,$17,$63,$FF,$40,$16,$EC,$3F,$1C,$00,$FF,$1E,$22,$9F ; $D1579A
    db $E1,$5E,$63,$E8,$EC,$3F,$1F,$1D,$96,$8A,$B6,$80,$3F,$63,$F1,$77 ; $D157AA
    db $49,$7D,$71,$1D,$FF,$3E,$FF,$81,$3F,$1F,$C9,$1F,$A4,$2E,$D8,$3F ; $D157BA
    db $72,$85,$1D,$FC,$FF,$52,$93,$3F,$FE,$C7,$3F,$F4,$FF,$67,$3F,$DD ; $D157CA
    db $E2,$02,$3F,$75,$F4,$E3,$19,$FE,$36,$C6,$3B,$E5,$F1,$43,$B5,$0D ; $D157DA
    db $57,$BA,$57,$63,$F7,$23,$D8,$3F,$CB,$E0,$03,$C5,$CF,$09,$C3,$49 ; $D157EA
    db $40,$B0,$3F,$23,$08,$79,$01,$2E,$54,$31,$6F,$B5,$87,$D0,$DA,$3F ; $D157FA
    db $E1,$39,$6D,$C8,$62,$10,$9E,$A6,$9B,$8B,$05,$10,$F8,$D9,$3F,$05 ; $D1580A
    db $D8,$3F,$17,$9D,$9E,$3F,$76,$A8,$3F,$32,$60,$C2,$43,$28,$59,$3F ; $D1581A
    db $A8,$D9,$3F,$60,$D8,$3F,$38,$B8,$B6,$3F,$01,$27,$00,$37,$00,$07 ; $D1582A
    db $00,$EF,$F8,$01,$3F,$27,$FF,$07,$37,$FF,$07,$FF,$EF,$64,$1F,$E6 ; $D1583A
    db $64,$1F,$02,$B0,$1F,$3D,$02,$14,$3B,$F5,$EF,$27,$1F,$E2,$80,$1F ; $D1584A
    db $3A,$FA,$00,$0F,$0B,$15,$E8,$5F,$76,$82,$1F,$76,$8A,$1F,$00,$85 ; $D1585A
    db $0F,$FF,$15,$F4,$8D,$FC,$8A,$E8,$5F,$76,$8B,$1F,$76,$85,$1F,$25 ; $D1586A
    db $C5,$D1,$80,$1F,$3D,$68,$BF,$9E,$15,$43,$EC,$1F,$3A,$EC,$1F,$3E ; $D1587A
    db $1D,$FF,$1E,$A2,$80,$1F,$43,$EA,$41,$FF,$E9,$1D,$EC,$1F,$94,$00 ; $D1588A
    db $5B,$98,$EB,$71,$77,$49,$5F,$73,$EC,$1F,$16,$96,$1F,$03,$A6,$45 ; $D1589A
    db $CC,$8B,$70,$A7,$A0,$5F,$F9,$72,$1D,$F9,$56,$51,$83,$1F,$F4,$7A ; $D158AA
    db $7A,$5E,$A0,$5F,$07,$57,$EC,$1F,$D9,$B8,$76,$FB,$FF,$7B,$F1,$FD ; $D158BA
    db $7B,$D5,$DE,$19,$FE,$B6,$EE,$1F,$B8,$F4,$E3,$B5,$0D,$5D,$B0,$57 ; $D158CA
    db $63,$D5,$21,$F0,$E9,$D5,$63,$E0,$C5,$6D,$3B,$5F,$4A,$2E,$1F,$21 ; $D158DA
    db $31,$2A,$79,$2E,$56,$33,$6F,$B5,$A7,$F2,$C9,$DC,$CF,$91,$6D,$C8 ; $D158EA
    db $40,$AE,$1F,$31,$89,$05,$10,$DA,$28,$FF,$C6,$25,$E0,$3B,$52,$15 ; $D158FA
    db $BF,$02,$E0,$83,$9D,$1F,$AA,$81,$1F,$68,$C2,$0D,$55,$0A,$D8,$1F ; $D1590A
    db $7C,$AE,$3B,$3C,$AA,$3B,$1F,$68,$03,$1F,$1A,$BA,$83,$40,$3B,$F3 ; $D1591A
    db $07,$1F,$BB,$F0,$05,$1F,$4E,$05,$E6,$06,$0F,$F7,$0A,$E7,$02,$01 ; $D1592A
    db $5C,$87,$38,$00,$13,$04,$3D,$02,$45,$F1,$EF,$F9,$FA,$F8,$E2,$01 ; $D1593A
    db $80,$BB,$65,$F8,$14,$FC,$3A,$FA,$04,$5E,$03,$15,$13,$C9,$0F,$82 ; $D1594A
    db $1A,$AA,$04,$8A,$20,$82,$00,$85,$5F,$FB,$1D,$FC,$CC,$ED,$8A,$F0 ; $D1595A
    db $AF,$E5,$8B,$FB,$8A,$DF,$85,$4A,$D5,$DB,$65,$F1,$95,$7A,$A1,$E3 ; $D1596A
    db $C0,$90,$BD,$68,$AB,$9E,$15,$41,$AA,$55,$DB,$BA,$6B,$50,$DE,$2A ; $D1597A
    db $EF,$05,$2A,$17,$B4,$5E,$41,$EA,$05,$AE,$6B,$9D,$82,$DA,$B2,$1F ; $D1598A
    db $CC,$E3,$EB,$71,$37,$18,$5F,$71,$FA,$7F,$7F,$14,$AF,$2D,$1F,$C9 ; $D1599A
    db $0A,$E0,$DA,$1F,$E5,$DA,$70,$A5,$FD,$AB,$52,$F9,$73,$A8,$DE,$59 ; $D159AA
    db $75,$24,$DA,$F4,$7F,$7E,$7E,$55,$22,$9A,$95,$55,$0B,$E7,$7F,$71 ; $D159BA
    db $AE,$73,$5B,$D1,$AD,$7A,$FD,$D4,$0C,$AF,$36,$6E,$2F,$F1,$F0,$62 ; $D159CA
    db $B1,$1C,$5D,$B0,$56,$32,$DA,$1F,$E1,$FC,$D5,$E3,$A4,$81,$6D,$88 ; $D159DA
    db $C2,$58,$4A,$17,$F8,$D8,$1F,$7A,$6F,$30,$57,$3F,$1F,$A7,$F2,$0D ; $D159EA
    db $BC,$76,$0D,$4F,$11,$28,$88,$40,$10,$DA,$A0,$95,$82,$05,$00,$DA ; $D159FA
    db $28,$BF,$52,$A5,$E0,$2A,$57,$15,$BF,$43,$F5,$03,$67,$C3,$EF,$C7 ; $D15A0A
    db $AA,$C7,$2A,$87,$68,$86,$09,$55,$0A,$F5,$BC,$E7,$FC,$EF,$1F,$C0 ; $D15A1A
    db $01,$68,$78,$89,$79,$1A,$12,$BA,$93,$00,$CE,$1F,$67,$CE,$1F,$47 ; $D15A2A
    db $C9,$1F,$13,$E7,$1F,$67,$67,$1F,$47,$61,$1F,$3E,$01,$1B,$72,$04 ; $D15A3A
    db $88,$03,$86,$20,$C1,$38,$C0,$1E,$E0,$0F,$F0,$07,$39,$F9,$1C,$FC ; $D15A4A
    db $8B,$FF,$A6,$EF,$1C,$61,$DE,$1D,$BB,$E2,$F7,$FF,$1F,$85,$0F,$17 ; $D15A5A
    db $06,$2A,$03,$7D,$3F,$40,$B0,$50,$B7,$10,$9B,$28,$85,$E0,$17,$F0 ; $D15A6A
    db $2B,$F9,$7D,$FC,$40,$C0,$D0,$C0,$9F,$C8,$AF,$E4,$FF,$57,$43,$41 ; $D15A7A
    db $7C,$2F,$F3,$AB,$81,$F9,$07,$02,$DF,$E0,$BE,$C0,$57,$00,$FE,$BD ; $D15A8A
    db $D0,$AC,$EB,$94,$FE,$55,$5C,$5B,$00,$DF,$01,$BF,$59,$41,$67,$D5 ; $D15A9A
    db $CA,$AB,$86,$C2,$6C,$80,$FF,$40,$DB,$36,$B2,$6B,$F6,$A9,$28,$47 ; $D15AAA
    db $5C,$8A,$39,$86,$37,$48,$48,$F7,$01,$DA,$04,$B6,$7C,$7D,$7E,$7E ; $D15ABA
    db $7D,$7D,$D5,$99,$00,$7C,$F3,$70,$76,$FB,$F3,$7F,$FE,$1D,$7C,$FF ; $D15ACA
    db $7E,$F3,$1F,$7A,$FF,$85,$10,$74,$72,$C7,$73,$F0,$AA,$2A,$6A,$80 ; $D15ADA
    db $BF,$44,$DF,$31,$F6,$0C,$FD,$13,$FB,$38,$2F,$DD,$FF,$F7,$55,$7F ; $D15AEA
    db $15,$3B,$84,$0E,$D1,$03,$F5,$10,$FD,$3C,$FB,$36,$F3,$A7,$A3,$8D ; $D15AFA
    db $8D,$65,$94,$5E,$1D,$BF,$80,$AF,$0C,$65,$EB,$F7,$2D,$7F,$D8,$77 ; $D15B0A
    db $FA,$6E,$0A,$AD,$51,$D0,$60,$DC,$70,$3F,$70,$33,$E4,$83,$EC,$96 ; $D15B1A
    db $61,$00,$C6,$13,$C0,$A4,$40,$90,$43,$A0,$47,$90,$07,$EC,$7C,$71 ; $D15B2A
    db $79,$C6,$FF,$D3,$FF,$64,$2E,$7F,$53,$7F,$67,$7F,$17,$7F,$E7,$00 ; $D15B3A
    db $C7,$00,$8F,$00,$0F,$20,$1F,$E0,$1F,$C0,$3F,$C0,$27,$E7,$FF,$C7 ; $D15B4A
    db $FF,$8F,$3B,$FF,$2F,$0E,$23,$DF,$FF,$BF,$C2,$27,$1E,$01,$09,$E5 ; $D15B5A
    db $06,$80,$03,$82,$20,$C0,$38,$E0,$1C,$E0,$0F,$F8,$07,$19,$F9,$0E ; $D15B6A
    db $FE,$83,$FF,$A2,$56,$A2,$7D,$EF,$E7,$EB,$85,$2D,$60,$1F,$83,$75 ; $D15B7A
    db $3F,$40,$07,$92,$70,$B7,$10,$93,$60,$1F,$37,$F2,$2B,$F9,$76,$F5 ; $D15B8A
    db $1F,$3B,$F0,$E0,$00,$1F,$EC,$FF,$57,$61,$61,$7C,$2F,$76,$F7,$1F ; $D15B9A
    db $03,$25,$20,$DF,$E0,$3E,$48,$B0,$1F,$9F,$D0,$AC,$07,$6B,$1C,$FE ; $D15BAA
    db $55,$7E,$67,$1F,$81,$60,$1F,$65,$F7,$CA,$AB,$3B,$06,$4A,$03,$1F ; $D15BBA
    db $62,$DB,$36,$BA,$E3,$B0,$1F,$45,$5C,$8A,$4F,$B1,$3B,$1F,$0C,$17 ; $D15BCA
    db $1F,$5E,$5E,$2E,$7D,$7D,$F2,$FA,$7C,$7C,$D3,$52,$76,$FB,$73,$FF ; $D15BDA
    db $FE,$7C,$FD,$5E,$FF,$7D,$77,$F2,$CE,$1F,$D3,$CE,$1F,$70,$C0,$1F ; $D15BEA
    db $A0,$BF,$44,$D7,$B1,$EC,$1F,$31,$EC,$1F,$3C,$11,$FF,$55,$7D,$AE ; $D15BFA
    db $1F,$1D,$D9,$03,$F5,$12,$FF,$3C,$FB,$BE,$7B,$A7,$A3,$AF,$81,$1F ; $D15C0A
    db $D6,$15,$BF,$80,$8D,$D9,$1F,$FF,$D8,$1F,$57,$DA,$0E,$6E,$0A,$A5 ; $D15C1A
    db $59,$D7,$1F,$28,$72,$3F,$70,$BB,$64,$83,$EC,$B4,$41,$00,$C6,$10 ; $D15C2A
    db $40,$A0,$40,$90,$41,$A0,$47,$18,$C0,$1F,$7B,$C6,$FF,$50,$FF,$1D ; $D15C3A
    db $60,$7F,$51,$81,$1F,$1F,$FF,$C7,$00,$87,$D7,$B7,$8C,$1F,$3F,$EC ; $D15C4A
    db $1F,$FF,$0E,$00,$C7,$FF,$87,$BA,$B7,$2F,$AE,$9B,$BF,$E0,$03,$1E ; $D15C5A
    db $01,$89,$EC,$1F,$A2,$B8,$7E,$00,$C0,$38,$E8,$14,$E0,$0F,$FA,$05 ; $D15C6A
    db $19,$F9,$8E,$0C,$1F,$37,$55,$3F,$5F,$40,$3F,$91,$00,$85,$C0,$47 ; $D15C7A
    db $FA,$2B,$F9,$D7,$FE,$E8,$3F,$5C,$EA,$7A,$9F,$C8,$85,$EE,$FF,$57 ; $D15C8A
    db $EB,$43,$7C,$2F,$5D,$9C,$AB,$81,$AD,$88,$01,$3F,$E2,$57,$00,$56 ; $D15C9A
    db $15,$D0,$3F,$B6,$B8,$F6,$FE,$55,$DE,$53,$00,$DF,$89,$37,$59,$41 ; $D15CAA
    db $4D,$55,$CA,$AB,$AE,$E2,$1F,$B9,$76,$C2,$DB,$36,$98,$C1,$F6,$A9 ; $D15CBA
    db $AA,$E7,$5C,$8A,$99,$26,$37,$48,$68,$D7,$01,$DA,$26,$1F,$07,$DE ; $D15CCA
    db $FE,$7D,$7D,$DA,$60,$1F,$DB,$DA,$76,$FB,$0C,$71,$FD,$FE,$7C,$38 ; $D15CDA
    db $FF,$01,$7D,$55,$DA,$FF,$7C,$74,$DB,$D8,$1F,$72,$AA,$22,$2A,$EA ; $D15CEA
    db $2E,$3F,$5D,$91,$F6,$0C,$D7,$91,$FB,$38,$D5,$1E,$FF,$55,$55,$95 ; $D15CFA
    db $3B,$84,$24,$F1,$03,$F5,$38,$08,$3F,$3E,$C1,$1F,$05,$65,$94,$F6 ; $D15D0A
    db $D8,$1F,$85,$04,$0E,$65,$EB,$D5,$05,$CB,$1F,$52,$87,$6E,$0A,$07 ; $D15D1A
    db $5B,$D0,$60,$54,$7A,$3F,$70,$11,$6E,$E7,$02,$1F,$18,$60,$1F,$1A ; $D15D2A
    db $05,$EC,$7C,$25,$F1,$FB,$89,$1F,$59,$FF,$6E,$1F,$80,$3D,$00,$2F ; $D15D3A
    db $00,$1F,$12,$E0,$BF,$40,$CF,$1F,$8F,$05,$D8,$1F,$31,$89,$06,$5C ; $D15D4A
    db $C4,$67,$02,$A2,$00,$D0,$28,$E8,$14,$F4,$0A,$FA,$05,$1D,$FD,$8E ; $D15D5A
    db $FE,$C6,$A3,$1F,$B7,$EB,$BC,$0A,$85,$25,$1F,$42,$2F,$81,$57,$6A ; $D15D6A
    db $05,$92,$50,$A3,$05,$93,$00,$85,$F5,$3F,$FA,$6F,$FD,$D7,$FE,$45 ; $D15D7A
    db $D5,$D0,$E8,$8F,$DC,$85,$EC,$FF,$02,$EB,$41,$28,$2A,$DF,$9E,$FF ; $D15D8A
    db $D5,$AF,$0B,$AB,$AB,$56,$54,$57,$55,$54,$15,$D5,$FD,$EB,$34,$69 ; $D15D9A
    db $5E,$BB,$E1,$51,$55,$FE,$AB,$FD,$4C,$04,$EF,$7F,$B2,$B2,$CE,$48 ; $D15DAA
    db $E9,$C0,$37,$20,$DF,$73,$B8,$61,$E7,$F9,$2A,$45,$5D,$E7,$3B,$64 ; $D15DBA
    db $77,$9C,$EA,$9D,$55,$8A,$A6,$16,$7C,$7C,$FC,$02,$7C,$F8,$78,$70 ; $D15DCA
    db $7C,$2C,$DB,$D8,$73,$FA,$71,$FD,$AB,$7D,$D7,$7E,$E3,$03,$7A,$0B ; $D15DDA
    db $03,$74,$D9,$74,$C7,$76,$73,$72,$FF,$2A,$6A,$00,$BF,$00,$5F,$11 ; $D15DEA
    db $A7,$09,$55,$11,$AE,$28,$D7,$1C,$AA,$00,$D5,$95,$6A,$C0,$A4,$F1 ; $D15DFA
    db $53,$F0,$BA,$FF,$7D,$FB,$3A,$7D,$F7,$A2,$87,$85,$61,$C0,$F6,$B5 ; $D15E0A
    db $FE,$70,$AD,$40,$06,$CA,$75,$25,$3F,$9D,$3B,$2E,$6B,$1F,$78,$A7 ; $D15E1A
    db $5B,$D4,$35,$F4,$5A,$6A,$15,$B1,$CE,$82,$A8,$B4,$41,$11,$82,$10 ; $D15E2A
    db $40,$B0,$00,$18,$41,$A1,$02,$ED,$A8,$7D,$1D,$F1,$FB,$93,$9D,$1F ; $D15E3A
    db $30,$93,$1F,$23,$CE,$1F,$1F,$C0,$1F,$5F,$A0,$BF,$40,$7F,$9E,$1F ; $D15E4A
    db $4F,$1F,$41,$1F,$00,$FC,$FF,$07,$FF,$7F,$FC,$07,$EE,$FF,$10,$8D ; $D15E5A
    db $14,$C6,$0A,$83,$05,$C1,$02,$A1,$00,$C0,$03,$03,$B8,$40,$97,$F2 ; $D15E6A
    db $CB,$F9,$85,$FC,$C2,$FE,$A0,$FE,$C3,$FF,$03,$BF,$C2,$5F,$DE,$EE ; $D15E7A
    db $61,$71,$3F,$9E,$8E,$CD,$40,$E7,$23,$F2,$13,$FC,$05,$02,$BF,$80 ; $D15E8A
    db $5E,$C0,$B1,$B5,$2B,$57,$1A,$2E,$09,$16,$04,$06,$02,$63,$97,$88 ; $D15E9A
    db $4C,$F5,$FA,$C9,$11,$7E,$6D,$AA,$03,$DD,$C4,$7B,$65,$4B,$2B,$BB ; $D15EAA
    db $10,$5C,$E9,$31,$F6,$AD,$41,$5F,$D5,$62,$BE,$C3,$B8,$73,$7B,$70 ; $D15EBA
    db $71,$75,$72,$04,$04,$FB,$75,$02,$19,$8E,$05,$F8,$AE,$57,$F6,$73 ; $D15ECA
    db $FE,$70,$F9,$74,$FC,$0E,$04,$72,$8F,$FD,$FB,$FA,$54,$52,$AD,$CD ; $D15EDA
    db $73,$80,$77,$EC,$AF,$73,$F7,$88,$B9,$1F,$DF,$07,$C5,$B8,$9E,$25 ; $D15EEA
    db $E7,$CD,$BA,$C2,$B5,$63,$4F,$90,$07,$D0,$49,$28,$E7,$08,$E7,$FD ; $D15EFA
    db $39,$FB,$92,$D6,$A4,$AC,$68,$72,$D0,$E2,$A2,$A2,$87,$C6,$7A,$27 ; $D15F0A
    db $FA,$8E,$F4,$9C,$C9,$18,$B3,$30,$4D,$62,$9D,$47,$DD,$FA,$39,$21 ; $D15F1A
    db $80,$AC,$1D,$51,$00,$03,$80,$07,$03,$A1,$14,$FD,$3F,$03,$53,$9F ; $D15F2A
    db $03,$89,$DF,$08,$92,$DF,$01,$26,$DF,$C9,$DF,$4C,$C1,$DF,$FE,$63 ; $D15F3A
    db $41,$DF,$16,$0E,$18,$DF,$C7,$03,$DF,$7C,$8D,$C6,$DF,$A2,$5C,$DF ; $D15F4A
    db $31,$3D,$AB,$DF,$2C,$2B,$8C,$DF,$86,$8A,$DF,$8A,$E2,$DF,$41,$0C ; $D15F5A
    db $DF,$23,$DF,$F3,$71,$ED,$DF,$30,$8C,$DF,$B9,$FE,$DF,$5D,$63,$F7 ; $D15F6A
    db $DF,$43,$B0,$18,$DF,$52,$51,$DF,$8C,$8C,$91,$DF,$26,$06,$DF,$50 ; $D15F7A
    db $DF,$70,$74,$DF,$AD,$FF,$C6,$DF,$DC,$DA,$DF,$71,$53,$DF,$27,$C3 ; $D15F8A
    db $DF,$BB,$3D,$18,$DF,$F7,$27,$DF,$ED,$B8,$C6,$DF,$EB,$CF,$DF,$31 ; $D15F9A
    db $D2,$69,$DF,$88,$6F,$8C,$DF,$DB,$90,$DF,$A4,$4C,$60,$DF,$72,$CE ; $D15FAA
    db $DF,$AC,$18,$DF,$90,$3B,$DF,$42,$BD,$81,$DF,$01,$80,$1A,$DD,$90 ; $D15FBA
    db $03,$DF,$2B,$00,$81,$41,$DD,$03,$9F,$49,$E7,$92,$DF,$00,$12,$DF ; $D15FCA
    db $E0,$01,$26,$DF,$C0,$DF,$70,$E1,$DF,$FC,$49,$C6,$DF,$14,$2C,$DF ; $D15FDA
    db $31,$CF,$8B,$DF,$7E,$AF,$9D,$DF,$22,$9C,$BF,$3F,$DF,$71,$A4,$DF ; $D15FEA
    db $A4,$C3,$DF,$A0,$C4,$18,$DF,$69,$39,$DF,$22,$A3,$C6,$DF,$D1,$CD ; $D15FFA
    db $DF,$32,$9B,$1A,$DF,$93,$0C,$DF,$7F,$DF,$63,$67,$B2,$DF,$7A,$0C ; $D1600A
    db $DF,$8E,$AE,$D0,$AA,$63,$06,$DF,$AC,$55,$8C,$DF,$D0,$DF,$54,$71 ; $D1601A
    db $DB,$DF,$57,$9D,$DF,$FE,$8C,$BF,$5B,$00,$DF,$A7,$71,$F1,$DF,$BD ; $D1602A
    db $21,$DF,$E5,$B0,$8C,$DF,$49,$ED,$DF,$52,$63,$E9,$DF,$8A,$6D,$18 ; $D1603A
    db $DF,$D3,$98,$DF,$04,$C0,$C6,$DF,$EA,$22,$DF,$38,$E4,$52,$DF,$7C ; $D1604A
    db $C6,$DF,$B0,$BB,$DF,$38,$CA,$35,$DF,$1B,$E3,$DF,$80,$CE,$02,$DF ; $D1605A
    db $3F,$3D,$DF,$9F,$03,$DF,$9F,$01,$FD,$07,$0F,$BF,$FD,$07,$83,$BF ; $D1606A
    db $89,$15,$12,$FF,$82,$15,$38,$FF,$E0,$01,$97,$62,$F6,$FF,$95,$FD ; $D1607A
    db $47,$FF,$E1,$00,$01,$A8,$A8,$D4,$D5,$60,$6A,$0C,$3E,$2C,$D9,$11 ; $D1608A
    db $FF,$F7,$60,$47,$FF,$57,$FD,$AA,$7E,$03,$D5,$B5,$3D,$81,$16,$0F ; $D1609A
    db $18,$FF,$52,$05,$FF,$33,$83,$C0,$FF,$FC,$E2,$7D,$29,$7B,$63,$79 ; $D160AA
    db $FF,$89,$C5,$18,$FF,$5F,$6E,$FF,$55,$A1,$36,$83,$EA,$E9,$FF,$31 ; $D160BA
    db $32,$BB,$FF,$22,$7A,$C6,$FF,$73,$FF,$00,$FF,$21,$22,$8E,$05,$01 ; $D160CA
    db $AC,$25,$31,$A7,$27,$FF,$AC,$71,$8B,$FF,$24,$51,$8E,$55,$77,$FE ; $D160DA
    db $AB,$76,$FA,$FC,$89,$7B,$00,$72,$BD,$A6,$F0,$F6,$D8,$FF,$30,$CF ; $D160EA
    db $52,$FF,$93,$29,$C5,$01,$90,$D7,$A5,$49,$EC,$85,$53,$8C,$FF,$2D ; $D160FA
    db $E2,$FF,$98,$63,$0D,$FF,$42,$35,$18,$FF,$66,$D1,$FF,$F6,$97,$C6 ; $D1610A
    db $FF,$67,$CF,$FF,$31,$9D,$1D,$FF,$71,$19,$8C,$FF,$57,$89,$FF,$05 ; $D1611A
    db $71,$C0,$FF,$40,$24,$FF,$5A,$C5,$C5,$E2,$F7,$6F,$68,$FF,$B5,$C5 ; $D1612A
    db $E1,$90,$3A,$03,$03,$18,$E0,$05,$D0,$03,$01,$F0,$3A,$03,$E4,$20 ; $D1613A
    db $B3,$03,$E5,$EF,$EB,$63,$DD,$A6,$F3,$FF,$EF,$45,$BF,$A3,$9F,$12 ; $D1614A
    db $9F,$92,$8E,$06,$8F,$22,$2E,$A4,$5F,$D0,$46,$11,$80,$23,$11,$02 ; $D1615A
    db $91,$02,$05,$03,$B0,$17,$87,$A1,$D3,$6D,$80,$80,$BE,$95,$BE,$EF ; $D1616A
    db $BB,$F0,$9B,$3F,$03,$8F,$80,$BC,$A2,$60,$5F,$C1,$41,$C1,$54,$C4 ; $D1617A
    db $2B,$E4,$14,$FB,$C0,$F0,$70,$E2,$43,$DF,$9F,$F8,$53,$FD,$C5,$73 ; $D1618A
    db $77,$F8,$8F,$FE,$FE,$FF,$00,$01,$02,$00,$FF,$54,$04,$AC,$01,$F8 ; $D1619A
    db $8E,$70,$88,$FF,$01,$00,$00,$02,$EB,$DD,$40,$F8,$0F,$EB,$5B,$E2 ; $D161AA
    db $BB,$EA,$37,$84,$FD,$4C,$F4,$40,$EF,$2F,$3E,$C2,$1C,$13,$15,$46 ; $D161BA
    db $1D,$A6,$7F,$48,$FF,$02,$7B,$0B,$3F,$10,$C3,$C1,$4E,$3D,$88,$F7 ; $D161CA
    db $A8,$D7,$D4,$2B,$03,$2A,$C0,$03,$F0,$0E,$BD,$B1,$F7,$06,$77,$D7 ; $D161DA
    db $57,$2B,$2B,$03,$70,$2A,$03,$0E,$0F,$94,$B9,$97,$3F,$03,$0E,$DD ; $D161EA
    db $56,$03,$D7,$71,$BF,$03,$7F,$4D,$03,$DB,$B3,$D5,$03,$C8,$8E,$DF ; $D161FA
    db $E2,$CE,$BD,$F8,$38,$DF,$E1,$DF,$CB,$E3,$DF,$E3,$8E,$DF,$FB,$18 ; $D1620A
    db $DF,$9D,$A1,$DF,$1F,$12,$E3,$DF,$00,$19,$DF,$57,$50,$DF,$A2,$C3 ; $D1621A
    db $DF,$11,$82,$18,$DF,$01,$20,$DF,$53,$88,$C6,$DF,$97,$BC,$DF,$33 ; $D1622A
    db $70,$13,$DF,$8D,$87,$DF,$E8,$DF,$18,$DF,$56,$DF,$EC,$9C,$C7,$DF ; $D1623A
    db $D0,$72,$18,$DF,$17,$DF,$DF,$89,$E3,$DF,$07,$20,$DF,$FD,$DF,$77 ; $D1624A
    db $E3,$DF,$23,$36,$DF,$F8,$E8,$3E,$67,$22,$DF,$77,$0C,$DF,$7B,$C2 ; $D1625A
    db $DF,$3F,$67,$0C,$DF,$D6,$0C,$DF,$BE,$CA,$DF,$35,$E1,$DF,$F7,$C8 ; $D1626A
    db $8C,$DF,$5B,$29,$DF,$CB,$63,$41,$DF,$A8,$F5,$18,$D7,$DC,$A3,$03 ; $D1627A
    db $F6,$08,$C6,$03,$70,$86,$DF,$32,$F5,$57,$D7,$AB,$62,$DF,$86,$8F ; $D1628A
    db $0E,$DB,$1F,$BA,$E1,$1F,$B9,$81,$E7,$01,$14,$DB,$1F,$03,$52,$3F ; $D1629A
    db $01,$46,$DF,$EA,$DB,$27,$05,$C0,$A0,$BF,$DF,$EB,$E2,$DF,$C3,$78 ; $D162AA
    db $BF,$15,$21,$C6,$DF,$1D,$30,$DF,$31,$85,$08,$DF,$D5,$52,$8C,$DF ; $D162BA
    db $2A,$AB,$DF,$33,$63,$A2,$DF,$89,$AA,$B3,$BF,$AA,$1C,$DF,$9F,$B4 ; $D162CA
    db $DF,$63,$33,$DF,$0D,$00,$12,$DF,$CA,$FD,$1C,$DF,$E6,$9E,$DF,$63 ; $D162DA
    db $F2,$DF,$FD,$35,$6C,$DF,$C9,$DF,$FC,$48,$01,$DF,$02,$71,$55,$DF ; $D162EA
    db $03,$8C,$DF,$DC,$22,$15,$A8,$63,$AA,$DF,$55,$FD,$8E,$DF,$CA,$31 ; $D162FA
    db $DF,$2C,$DF,$5E,$C0,$8C,$DF,$9E,$E8,$DF,$BD,$67,$C6,$DF,$77,$0C ; $D1630A
    db $DF,$DB,$A1,$DF,$EB,$63,$61,$DF,$A0,$7D,$18,$D7,$DE,$A1,$03,$7E ; $D1631A
    db $80,$C6,$03,$50,$84,$DF,$24,$FD,$5F,$DF,$30,$AA,$AB,$03,$84,$AF ; $D1632A
    db $3F,$A7,$DB,$9D,$12,$DF,$E0,$53,$73,$F4,$00,$28,$DF,$F5,$03,$FA ; $D1633A
    db $DC,$E7,$D5,$32,$F4,$FF,$DF,$F5,$81,$03,$FB,$FF,$AB,$41,$8C,$DF ; $D1634A
    db $9A,$02,$DF,$8F,$67,$17,$DF,$6A,$0C,$DF,$56,$55,$DF,$05,$63,$47 ; $D1635A
    db $DF,$15,$52,$18,$DF,$C7,$F5,$DF,$84,$BA,$00,$9E,$B4,$FF,$FE,$71 ; $D1636A
    db $32,$2B,$02,$CE,$DF,$FC,$00,$DF,$C5,$40,$C1,$57,$94,$6B,$E7,$18 ; $D1637A
    db $9E,$EB,$D5,$DF,$A2,$03,$C0,$DF,$75,$56,$FF,$A9,$77,$33,$53,$F9 ; $D1638A
    db $DF,$AA,$38,$DF,$51,$DF,$FD,$00,$DC,$FC,$AB,$F9,$DE,$DC,$27,$AE ; $D1639A
    db $67,$05,$DF,$52,$0C,$DF,$5E,$BA,$DF,$FE,$63,$AE,$DF,$AC,$08,$8C ; $D163AA
    db $DF,$3B,$DF,$49,$71,$17,$DF,$A3,$89,$DF,$BF,$53,$0C,$DF,$5A,$2C ; $D163BA
    db $DF,$E9,$63,$D2,$DF,$BD,$C2,$8C,$DF,$82,$DF,$EC,$62,$A5,$DF,$D3 ; $D163CA
    db $17,$47,$DF,$82,$11,$DF,$7F,$FA,$9D,$4E,$03,$38,$A1,$DB,$5F,$A4 ; $D163DA
    db $03,$A0,$A1,$E8,$01,$1C,$F0,$01,$F8,$E1,$25,$FC,$00,$E8,$49,$E9 ; $D163EA
    db $FF,$F1,$EB,$53,$BB,$F4,$A3,$5D,$17,$00,$5A,$D6,$5C,$79,$96,$7C ; $D163FA
    db $B3,$38,$E7,$3C,$D3,$1A,$65,$1C,$23,$8A,$15,$D7,$85,$96,$86,$B3 ; $D1640A
    db $83,$E7,$C7,$D3,$C3,$65,$E5,$23,$E3,$95,$F5,$A0,$1F,$09,$79,$03 ; $D1641A
    db $AE,$36,$D3,$0F,$F3,$00,$A1,$74,$BF,$70,$4F,$DF,$50,$FF,$2C,$B0 ; $D1642A
    db $89,$DC,$CA,$F3,$F0,$F8,$E1,$3D,$4F,$40,$BA,$13,$40,$79,$06,$71 ; $D1643A
    db $8C,$07,$06,$00,$1D,$00,$06,$FA,$FE,$D8,$80,$99,$02,$FD,$03,$72 ; $D1644A
    db $72,$FE,$2D,$E5,$FB,$F9,$50,$00,$2F,$E1,$EA,$6C,$71,$AF,$61,$5E ; $D1645A
    db $80,$7F,$01,$FE,$18,$17,$C1,$B2,$80,$12,$9D,$75,$6F,$0E,$DE,$9E ; $D1646A
    db $37,$7F,$7F,$37,$D7,$00,$F7,$6A,$E7,$B2,$3E,$E8,$95,$F0,$0E,$E0 ; $D1647A
    db $9C,$F0,$08,$A1,$58,$C3,$30,$87,$60,$0F,$C0,$95,$17,$0E,$0F,$9C ; $D1648A
    db $1F,$08,$0F,$59,$5F,$33,$3F,$67,$7F,$CF,$FF,$E0,$3C,$BF,$FC,$01 ; $D1649A
    db $BF,$E1,$A3,$BF,$FC,$C6,$03,$BF,$5B,$B4,$BF,$31,$30,$67,$BF,$18 ; $D164AA
    db $45,$9C,$BF,$82,$BF,$31,$B4,$A4,$BF,$67,$CF,$8E,$B5,$45,$E7,$31 ; $D164BA
    db $BF,$FD,$BF,$F1,$C1,$8C,$BF,$3E,$5B,$BF,$22,$67,$D8,$3E,$37,$0C ; $D164CA
    db $BF,$DF,$0E,$BF,$5C,$64,$C2,$BF,$FA,$19,$BF,$C8,$13,$DC,$8E,$4A ; $D164DA
    db $06,$F9,$38,$BF,$22,$BF,$77,$71,$D8,$63,$23,$C6,$BF,$FA,$BF,$70 ; $D164EA
    db $22,$BF,$D8,$88,$E3,$BF,$4E,$18,$BF,$E1,$D6,$BF,$21,$DE,$CE,$BF ; $D164FA
    db $41,$18,$BF,$9F,$55,$BF,$D6,$1E,$99,$BF,$BE,$8C,$BF,$D0,$0C,$BF ; $D1650A
    db $70,$71,$00,$BF,$10,$C6,$BF,$40,$BF,$31,$0C,$2F,$BF,$00,$8F,$9C ; $D1651A
    db $BF,$13,$BF,$25,$4F,$FF,$5F,$35,$02,$BC,$FF,$AB,$35,$E7,$02,$00 ; $D1652A
    db $E0,$E7,$07,$9F,$E1,$E3,$09,$9F,$7B,$14,$6F,$DF,$DB,$02,$18,$DF ; $D1653A
    db $3C,$AC,$DF,$4D,$EF,$DB,$DF,$03,$19,$DF,$97,$FF,$DF,$79,$C3,$DF ; $D1654A
    db $3C,$59,$18,$DF,$AA,$50,$3E,$15,$6F,$E3,$DF,$86,$26,$DF,$5E,$DF ; $D1655A
    db $3A,$6F,$EA,$FC,$11,$DF,$33,$FB,$24,$DF,$AA,$87,$DF,$55,$F8,$18 ; $D1656A
    db $63,$AB,$DF,$89,$70,$CE,$DF,$AA,$6C,$DF,$04,$DF,$62,$E1,$DF,$E3 ; $D1657A
    db $F4,$8C,$DF,$A1,$56,$DF,$43,$71,$B0,$DF,$DD,$8C,$DF,$F4,$1C,$DF ; $D1658A
    db $F6,$B1,$DF,$04,$9C,$DF,$D0,$DF,$4C,$43,$DF,$84,$63,$AF,$DF,$80 ; $D1659A
    db $AF,$89,$DF,$BF,$1E,$DF,$BF,$07,$DF,$7B,$BF,$05,$DF,$4B,$D9,$58 ; $D165AA
    db $BD,$DF,$F4,$9E,$BD,$B0,$DF,$5F,$83,$C6,$DF,$38,$A3,$DB,$31,$2C ; $D165BA
    db $82,$03,$0C,$22,$C7,$DF,$D4,$19,$DF,$D7,$DB,$86,$C3,$03,$26,$F7 ; $D165CA
    db $38,$DF,$B4,$DF,$2D,$06,$AF,$3E,$5B,$1A,$A2,$DF,$31,$55,$AA,$DF ; $D165DA
    db $9F,$41,$80,$DF,$B5,$D8,$5E,$C0,$A2,$E5,$99,$DF,$AE,$80,$DF,$AA ; $D165EA
    db $02,$7B,$04,$02,$03,$C6,$DF,$57,$AA,$DF,$30,$AF,$55,$DF,$57,$FD ; $D165FA
    db $81,$18,$D0,$AB,$FD,$DF,$FF,$FD,$C6,$DF,$6B,$E0,$DF,$38,$64,$BB ; $D1660A
    db $DF,$3A,$C6,$DF,$59,$02,$DF,$31,$EC,$14,$DF,$3B,$1B,$9C,$DF,$3A ; $D1661A
    db $DF,$38,$F3,$F7,$DF,$80,$C7,$DF,$A0,$88,$1C,$DF,$08,$DF,$67,$20 ; $D1662A
    db $DF,$C0,$49,$53,$88,$5F,$9C,$DF,$09,$DF,$70,$27,$DF,$C5,$0A,$03 ; $D1663A
    db $E2,$05,$F1,$02,$F9,$00,$AA,$A1,$01,$80,$BF,$CA,$FA,$E5,$05,$FD ; $D1664A
    db $F2,$FE,$F8,$FE,$BF,$C7,$75,$5F,$CF,$AF,$2B,$E7,$10,$DB,$08,$F9 ; $D1665A
    db $70,$60,$A0,$3F,$DF,$9F,$6F,$F0,$AF,$6C,$53,$57,$18,$6F,$24,$4F ; $D1666A
    db $36,$BF,$9F,$DF,$C0,$EF,$E0,$A0,$24,$50,$8F,$A8,$00,$FE,$03,$A9 ; $D1667A
    db $8B,$77,$57,$8F,$8F,$8C,$04,$DF,$0C,$00,$DF,$50,$77,$4D,$56,$2E ; $D1668A
    db $DE,$89,$DF,$FF,$70,$B8,$27,$FC,$13,$E8,$46,$BC,$70,$29,$24,$F3 ; $D1669A
    db $E8,$E7,$50,$CF,$A0,$E7,$47,$F3,$03,$D6,$17,$E0,$53,$D5,$F7,$6B ; $D166AA
    db $8F,$D7,$1F,$AF,$3F,$1F,$80,$06,$0F,$3F,$9F,$07,$8F,$3F,$0A,$1E ; $D166BA
    db $9F,$E7,$FF,$06,$9F,$31,$8D,$09,$9F,$5B,$80,$9C,$9F,$42,$9F,$70 ; $D166CA
    db $97,$9F,$4E,$73,$C6,$9F,$EF,$AC,$9F,$38,$BD,$BD,$9F,$E8,$C7,$21 ; $D166DA
    db $DD,$DD,$18,$9F,$20,$9F,$AB,$89,$E3,$9F,$07,$20,$42,$22,$9F,$D8 ; $D166EA
    db $C6,$9F,$DD,$54,$9F,$70,$77,$9F,$DE,$31,$CE,$9F,$B4,$38,$9F,$D3 ; $D166FA
    db $9F,$4F,$83,$9F,$23,$8E,$9F,$DB,$38,$9F,$AF,$9F,$BF,$91,$7F,$FB ; $D1670A
    db $E7,$07,$7F,$FA,$8D,$03,$7F,$87,$0B,$7F,$B1,$1F,$7F,$C2,$08,$C6 ; $D1671A
    db $7F,$4D,$7F,$38,$CE,$F9,$7F,$AE,$CE,$7F,$9D,$38,$7F,$CD,$7F,$57 ; $D1672A
    db $63,$55,$7F,$AF,$00,$8C,$7F,$01,$7F,$AF,$63,$05,$42,$A8,$FD,$19 ; $D1673A
    db $7F,$FF,$FA,$7F,$55,$C2,$7F,$55,$50,$43,$7F,$BE,$50,$1C,$7F,$5B ; $D1674A
    db $C0,$7F,$63,$80,$7F,$7B,$2B,$19,$7F,$EA,$FB,$7F,$CB,$C5,$7F,$8F ; $D1675A
    db $1C,$7F,$F5,$7F,$24,$FD,$00,$7F,$31,$CF,$FF,$7F,$F7,$FF,$E3,$02 ; $D1676A
    db $7F,$1A,$CA,$18,$7F,$E2,$00,$1F,$E8,$01,$C6,$7F,$2F,$9A,$7F,$31 ; $D1677A
    db $E5,$EF,$7F,$42,$5D,$8C,$7F,$6B,$57,$7F,$9A,$63,$D0,$7F,$AA,$AA ; $D1678A
    db $18,$7F,$AA,$00,$7F,$AA,$56,$E3,$7F,$02,$38,$7F,$55,$7F,$8A,$C3 ; $D1679A
    db $04,$FA,$76,$55,$18,$7F,$8A,$88,$7F,$EC,$72,$C0,$7F,$BC,$02,$BE ; $D167AA
    db $40,$3D,$63,$00,$7F,$B7,$40,$18,$7F,$F6,$17,$7F,$96,$57,$0E,$FA ; $D167BA
    db $EB,$B5,$D7,$30,$7F,$5F,$7F,$C7,$19,$F0,$7D,$03,$04,$23,$DF,$D9 ; $D167CA
    db $F8,$F3,$E9,$06,$E0,$1E,$54,$A8,$56,$04,$1F,$0F,$54,$00,$56,$57 ; $D167DA
    db $04,$0F,$1E,$1F,$C0,$7F,$05,$B1,$1F,$DF,$FA,$05,$DD,$07,$3F,$88 ; $D167EA
    db $76,$8F,$06,$3F,$76,$77,$06,$1E,$1F,$00,$FE,$06,$1F,$78,$FE,$05 ; $D167FA
    db $1E,$C3,$1C,$F1,$06,$9F,$DC,$FC,$E3,$06,$9F,$FE,$01,$C7,$06,$3F ; $D1680A
    db $01,$01,$A6,$06,$3F,$17,$00,$01,$FD,$03,$F7,$0C,$D5,$06,$BF,$59 ; $D1681A
    db $39,$36,$81,$01,$EA,$ED,$C8,$ED,$E1,$97,$AE,$00,$0A,$EE,$14,$CC ; $D1682A
    db $14,$47,$C9,$C7,$7F,$F7,$7F,$77,$73,$F4,$D2,$FB,$D7,$00,$F3,$B1 ; $D1683A
    db $E7,$87,$47,$77,$F7,$FB,$70,$77,$0E,$00,$FB,$07,$01,$F9,$01,$55 ; $D1684A
    db $55,$83,$03,$51,$AE,$FF,$06,$FF,$C2,$02,$0F,$00,$BF,$40,$E1,$9F ; $D1685A
    db $40,$17,$9C,$BD,$96,$FE,$F0,$F3,$F5,$FB,$FA,$50,$33,$7F,$00,$6F ; $D1686A
    db $3B,$CF,$B3,$F3,$FD,$FA,$F1,$DF,$02,$03,$50,$59,$80,$5F,$00,$AF ; $D1687A
    db $78,$E0,$02,$46,$BF,$BF,$0F,$9F,$BF,$3F,$9F,$01,$B6,$57,$87,$9F ; $D1688A
    db $AE,$28,$8C,$02,$D8,$EE,$E9,$9F,$F1,$71,$DE,$9F,$10,$8C,$9F,$56 ; $D1689A
    db $C8,$9F,$B3,$72,$3B,$9F,$9C,$00,$9F,$70,$E6,$9F,$B3,$FB,$53,$77 ; $D168AA
    db $DF,$87,$9F,$45,$44,$98,$03,$9F,$EE,$9F,$FE,$45,$F4,$04,$FF,$CE ; $D168BA
    db $9F,$F4,$24,$9F,$FB,$9F,$24,$7F,$2B,$9F,$3C,$FC,$FB,$07,$9F,$F0 ; $D168CA
    db $FD,$04,$3A,$E3,$06,$9F,$F6,$0D,$1E,$9F,$AA,$6C,$02,$9F,$38,$FE ; $D168DA
    db $F8,$9F,$DA,$84,$1B,$87,$9F,$A3,$2B,$8E,$02,$9F,$F1,$A6,$32,$9F ; $D168EA
    db $A3,$9F,$FB,$98,$7F,$9F,$01,$00,$FC,$05,$93,$06,$E8,$EB,$F1,$05 ; $D168FA
    db $9F,$57,$98,$84,$9F,$EF,$E5,$F3,$51,$B0,$23,$9F,$2F,$8C,$9F,$EC ; $D1690A
    db $9F,$F8,$79,$FF,$07,$9F,$B0,$E7,$06,$9F,$7F,$6E,$BF,$B8,$97,$01 ; $D1691A
    db $FB,$06,$00,$F7,$0F,$FE,$0A,$FE,$0E,$FC,$08,$82,$17,$FD,$F3,$FC ; $D1692A
    db $FE,$FC,$FF,$F8,$EB,$E1,$CF,$C1,$8B,$83,$D7,$59,$E5,$9D,$E9,$B1 ; $D1693A
    db $1D,$24,$59,$61,$5E,$62,$D9,$61,$5A,$62,$61,$37,$E7,$05,$C7,$29 ; $D1694A
    db $D2,$CD,$87,$D9,$83,$DE,$87,$59,$87,$DA,$7B,$7F,$FF,$BD,$7F,$D1 ; $D1695A
    db $B2,$20,$03,$BF,$BF,$FB,$31,$7B,$BD,$3F,$7F,$FD,$60,$03,$BF,$F9 ; $D1696A
    db $FB,$03,$FB,$F8,$F5,$F5,$F9,$FC,$38,$03,$FD,$07,$E9,$30,$E8,$FC ; $D1697A
    db $0A,$FB,$FE,$F5,$D8,$13,$03,$FA,$FD,$C5,$03,$FE,$E9,$D7,$5F,$D0 ; $D1698A
    db $6B,$38,$77,$24,$42,$32,$1B,$32,$49,$39,$2F,$7B,$71,$1C,$37,$67 ; $D1699A
    db $8F,$67,$9D,$69,$8F,$4D,$CE,$14,$87,$4E,$A7,$28,$86,$72,$DD,$02 ; $D169AA
    db $BD,$07,$27,$60,$9F,$ED,$03,$FF,$6D,$89,$00,$EF,$6F,$9C,$BF,$07 ; $D169BA
    db $BF,$71,$0E,$BF,$18,$27,$BF,$74,$5E,$F8,$EF,$E3,$BF,$9B,$86,$BF ; $D169CA
    db $A5,$99,$BF,$33,$0C,$34,$BF,$1E,$86,$BF,$4A,$72,$BF,$31,$E3,$45 ; $D169DA
    db $BF,$C3,$CC,$C7,$BF,$9E,$18,$BF,$CA,$BF,$FB,$F9,$F1,$06,$BF,$FD ; $D169EA
    db $FB,$E7,$0B,$BF,$FD,$20,$03,$07,$F9,$90,$BF,$FA,$F9,$E5,$BB,$31 ; $D169FA
    db $03,$BF,$2F,$78,$93,$BF,$53,$18,$BF,$61,$1D,$BF,$8B,$23,$C6,$BF ; $D16A0A
    db $8E,$5C,$BF,$31,$C7,$0E,$BF,$87,$62,$E3,$06,$BF,$8F,$F0,$DD,$06 ; $D16A1A
    db $BF,$35,$EC,$20,$5D,$FF,$03,$F7,$0B,$FE,$62,$06,$BF,$BC,$5C,$23 ; $D16A2A
    db $18,$6C,$BF,$73,$01,$E7,$E1,$BF,$DF,$C3,$8C,$BF,$A4,$98,$BF,$4C ; $D16A3A
    db $61,$30,$BF,$0E,$72,$D9,$CE,$03,$38,$BF,$44,$BF,$8C,$E3,$BF,$8E ; $D16A4A
    db $6F,$BF,$03,$06,$74,$BF,$F9,$7C,$06,$BF,$FF,$C4,$BF,$F9,$2C,$B7 ; $D16A5A
    db $03,$91,$BF,$FE,$E4,$04,$BF,$68,$86,$BF,$59,$38,$BF,$31,$65,$19 ; $D16A6A
    db $BF,$9B,$33,$21,$BF,$C6,$1E,$E3,$0A,$BF,$CF,$B0,$C4,$06,$BF,$BF ; $D16A7A
    db $3F,$6E,$7F,$75,$01,$D4,$FD,$FC,$03,$AA,$D1,$1A,$1F,$FD,$4B,$03 ; $D16A8A
    db $AE,$7E,$3E,$5D,$D8,$EE,$4E,$ED,$C8,$B6,$86,$FC,$CC,$B6,$82,$AF ; $D16A9A
    db $09,$3F,$81,$FB,$A2,$7F,$11,$EF,$02,$FF,$49,$EA,$06,$FB,$49,$7D ; $D16AAA
    db $50,$D3,$2E,$4D,$34,$18,$DB,$61,$CD,$30,$D6,$68,$4D,$70,$C2,$7C ; $D16ABA
    db $59,$36,$D3,$82,$CD,$03,$85,$5B,$C2,$0D,$81,$56,$06,$07,$83,$40 ; $D16ACA
    db $C1,$98,$63,$2E,$AD,$AF,$1C,$7B,$79,$ED,$8D,$5B,$57,$7F,$2B,$B9 ; $D16ADA
    db $11,$E5,$70,$D3,$01,$AD,$FD,$7B,$BB,$CD,$F3,$5B,$83,$46,$47,$B9 ; $D16AEA
    db $4A,$E5,$C7,$02,$8F,$AF,$AE,$55,$65,$AA,$6A,$E0,$9E,$00,$FA,$AF ; $D16AFA
    db $FF,$55,$C5,$0E,$F3,$F1,$CF,$AB,$AC,$F1,$F3,$B4,$A2,$CA,$C3,$D7 ; $D16B0A
    db $82,$09,$06,$1E,$51,$FC,$F3,$F8,$AB,$FC,$F1,$E9,$B4,$F4,$CA,$B9 ; $D16B1A
    db $ED,$17,$09,$B4,$1A,$DE,$0F,$3B,$65,$0C,$4F,$3F,$21,$3C,$2F,$5F ; $D16B2A
    db $80,$78,$AF,$5B,$45,$FC,$C7,$08,$92,$76,$C3,$0C,$E6,$22,$83,$2C ; $D16B3A
    db $12,$82,$07,$A8,$17,$42,$E7,$90,$73,$08,$F3,$88,$33,$3C,$FB,$B4 ; $D16B4A
    db $59,$14,$FB,$9C,$D9,$54,$97,$1F,$8B,$8F,$8B,$0F,$BF,$8F,$B7,$07 ; $D16B5A
    db $F5,$A7,$BF,$07,$35,$67,$33,$DF,$9C,$DF,$FC,$86,$DF,$BC,$8C,$DF ; $D16B6A
    db $33,$BE,$08,$DF,$BF,$86,$DF,$FF,$03,$DF,$38,$EE,$42,$DF,$41,$C6 ; $D16B7A
    db $DF,$0D,$70,$DF,$71,$CC,$DF,$0D,$C4,$DF,$49,$1B,$DF,$8D,$DF,$71 ; $D16B8A
    db $61,$DF,$8D,$8C,$DF,$C0,$89,$DF,$ED,$63,$EF,$DF,$FD,$9D,$38,$DF ; $D16B9A
    db $3F,$DF,$F4,$71,$60,$DF,$ED,$C6,$DF,$DD,$DF,$31,$E2,$3F,$DF,$4B ; $D16BAA
    db $F4,$E3,$02,$DF,$EF,$EE,$1F,$DF,$EE,$AA,$03,$76,$B9,$EF,$DF,$31 ; $D16BBA
    db $BB,$EE,$DF,$EB,$E8,$8C,$DF,$A5,$A3,$DF,$97,$E1,$DF,$1F,$40,$8C ; $D16BCA
    db $DF,$FC,$EB,$DF,$F8,$63,$A5,$DF,$E8,$97,$20,$DF,$A5,$DF,$08,$E3 ; $D16BDA
    db $DF,$3D,$1C,$DF,$C4,$38,$DF,$63,$FD,$DF,$96,$72,$38,$7D,$E7,$DF ; $D16BEA
    db $16,$67,$C2,$DF,$07,$1E,$DF,$77,$03,$DF,$32,$C9,$44,$DF,$8F,$64 ; $D16BFA
    db $DF,$B5,$11,$DF,$77,$A5,$FB,$A3,$DF,$E5,$61,$FC,$01,$B6,$5D,$00 ; $D16C0A
    db $25,$FC,$FE,$9C,$DF,$5C,$FF,$E4,$FB,$8E,$FF,$0C,$38,$FF,$A3,$FF ; $D16C1A
    db $43,$DA,$FF,$03,$47,$FF,$0C,$09,$FF,$8C,$70,$0E,$FF,$4D,$76,$86 ; $D16C2A
    db $B3,$8C,$FF,$4C,$83,$FF,$84,$3A,$CD,$7F,$32,$A3,$FF,$B9,$64,$FF ; $D16C3A
    db $B0,$30,$FF,$00,$7B,$FB,$99,$CE,$FF,$E3,$3E,$FF,$0F,$03,$0C,$6F ; $D16C4A
    db $FE,$FE,$FF,$AA,$7F,$AA,$04,$7B,$BA,$AC,$45,$AA,$FF,$FB,$63,$F9 ; $D16C5A
    db $FF,$E5,$E3,$20,$FF,$87,$FF,$04,$E3,$FF,$FB,$8C,$FF,$E5,$FF,$F8 ; $D16C6A
    db $63,$87,$FF,$E1,$1E,$8C,$FF,$19,$FF,$65,$63,$39,$FF,$C5,$39,$8C ; $D16C7A
    db $FF,$B9,$FF,$87,$63,$62,$FF,$A7,$62,$3C,$FF,$07,$03,$FF,$73,$E1 ; $D16C8A
    db $FF,$49,$04,$E6,$07,$FF,$B7,$FF,$1C,$75,$37,$FC,$F3,$10,$FC,$03 ; $D16C9A
    db $F8,$03,$EA,$32,$E3,$03,$FD,$A1,$D7,$F9,$C7,$03,$F8,$35,$09,$03 ; $D16CAA
    db $FF,$C6,$42,$AF,$8D,$9F,$98,$A4,$04,$BF,$86,$67,$54,$1F,$06,$E6 ; $D16CBA
    db $14,$7B,$39,$D9,$54,$F8,$60,$7B,$5F,$FE,$40,$F9,$8C,$FE,$E0,$39 ; $D16CCA
    db $0D,$C6,$39,$32,$3F,$EC,$66,$C5,$F5,$74,$3F,$FE,$DF,$BF,$1F,$AD ; $D16CDA
    db $0E,$C0,$06,$C0,$F2,$79,$14,$5A,$85,$C0,$B4,$F5,$0E,$60,$5F,$74 ; $D16CEA
    db $59,$C8,$E0,$45,$91,$7A,$00,$FB,$54,$2E,$DA,$7B,$58,$D4,$A4,$FC ; $D16CFA
    db $BD,$16,$17,$C8,$6F,$01,$85,$7A,$01,$FA,$00,$55,$00,$7B,$03,$A7 ; $D16D0A
    db $55,$70,$00,$05,$2A,$54,$AB,$80,$DB,$AE,$01,$D9,$A9,$31,$55,$22 ; $D16D1A
    db $07,$AF,$04,$98,$10,$04,$1F,$FF,$50,$00,$FE,$06,$DF,$DD,$88,$B6 ; $D16D2A
    db $0D,$3A,$62,$45,$9B,$FD,$55,$F9,$5D,$AF,$F3,$5F,$02,$FC,$45,$EB ; $D16D3A
    db $40,$B6,$98,$22,$08,$F4,$0A,$F7,$01,$5D,$05,$F3,$03,$01,$51,$54 ; $D16D4A
    db $CF,$BB,$4F,$EF,$0B,$F1,$1B,$E3,$3B,$B8,$F6,$C1,$5F,$4C,$CB,$71 ; $D16D5A
    db $87,$C8,$16,$59,$0D,$04,$4E,$05,$4C,$74,$6D,$88,$F4,$A8,$0D,$C4 ; $D16D6A
    db $BB,$1C,$D9,$D4,$8C,$03,$89,$C0,$03,$B9,$00,$90,$EB,$80,$79,$00 ; $D16D7A
    db $7F,$47,$B5,$63,$67,$03,$E1,$27,$01,$03,$F1,$47,$F3,$17,$A1,$87 ; $D16D8A
    db $27,$FF,$59,$5F,$E3,$05,$FF,$F8,$FE,$C6,$02,$FF,$EF,$C9,$FF,$70 ; $D16D9A
    db $B5,$FF,$63,$50,$C7,$FF,$E7,$04,$1C,$FF,$10,$FF,$67,$4E,$FF,$FD ; $D16DAA
    db $0C,$FF,$38,$1C,$FF,$76,$E1,$FF,$D5,$E4,$8C,$FF,$FA,$9F,$FF,$BC ; $D16DBA
    db $71,$1F,$FF,$B6,$8C,$FF,$4A,$95,$FF,$F1,$63,$0A,$FF,$64,$58,$20 ; $D16DCA
    db $FF,$05,$FF,$44,$CE,$FF,$3B,$18,$FF,$AC,$17,$FF,$6B,$05,$73,$85 ; $D16DDA
    db $10,$8C,$FF,$3B,$FF,$44,$61,$E8,$FF,$45,$10,$AB,$55,$81,$31,$AA ; $D16DEA
    db $45,$FF,$44,$32,$8E,$07,$AB,$44,$61,$FF,$1F,$FF,$10,$BA,$8C,$FF ; $D16DFA
    db $CD,$89,$FF,$7A,$67,$05,$9B,$ED,$0C,$FF,$B7,$5B,$FF,$44,$71,$FB ; $D16E0A
    db $FF,$62,$C7,$FF,$E7,$18,$FF,$B3,$FF,$40,$44,$C7,$FF,$0B,$EB,$19 ; $D16E1A
    db $FF,$F2,$FF,$F2,$C3,$FF,$DB,$70,$8E,$FF,$1D,$31,$FF,$14,$FF,$2D ; $D16E2A
    db $CC,$9C,$FF,$0C,$FB,$26,$99,$94,$FF,$71,$94,$FF,$10,$9C,$F7,$F5 ; $D16E3A
    db $FF,$39,$F1,$37,$07,$C7,$FF,$B1,$09,$FF,$FD,$00,$13,$FF,$F9,$44 ; $D16E4A
    db $FF,$51,$F7,$FF,$FE,$23,$FF,$FF,$86,$FF,$B1,$00,$FF,$31,$73,$40 ; $D16E5A
    db $FF,$E3,$00,$8C,$FF,$C9,$00,$FF,$7F,$E3,$FF,$FC,$8E,$FF,$7C,$38 ; $D16E6A
    db $FF,$67,$FF,$D1,$48,$E0,$FF,$B8,$83,$FF,$A7,$18,$FF,$0E,$D1,$FF ; $D16E7A
    db $E0,$1A,$CE,$FF,$60,$0E,$FF,$15,$80,$7A,$A7,$03,$18,$FF,$2A,$D5 ; $D16E8A
    db $FF,$A8,$53,$C7,$FF,$6A,$15,$1C,$FF,$BF,$FF,$61,$2A,$FF,$04,$AC ; $D16E9A
    db $00,$C9,$08,$98,$FF,$55,$FF,$00,$76,$82,$07,$54,$6C,$10,$FF,$89 ; $D16EAA
    db $E1,$FF,$7B,$04,$C6,$FF,$11,$FF,$73,$A6,$FF,$62,$15,$FF,$88,$73 ; $D16EBA
    db $43,$FF,$04,$A2,$6C,$FF,$3D,$FF,$1B,$63,$FA,$FF,$1F,$F6,$18,$FF ; $D16ECA
    db $F3,$D0,$FF,$DF,$34,$C6,$FF,$06,$1C,$FF,$32,$0E,$10,$FF,$3C,$0E ; $D16EDA
    db $FF,$D0,$24,$FB,$84,$03,$32,$A9,$84,$FF,$7D,$09,$FF,$77,$98,$03 ; $D16EEA
    db $57,$FF,$F5,$87,$01,$75,$E4,$2A,$AA,$7F,$15,$3C,$AE,$00,$79,$F4 ; $D16EFA
    db $3C,$65,$2C,$80,$2F,$50,$DF,$AA,$B5,$DF,$1B,$84,$3F,$C3,$F3,$C7 ; $D16F0A
    db $66,$C2,$97,$D3,$56,$D1,$9F,$E3,$09,$7C,$EF,$22,$BC,$07,$F5,$03 ; $D16F1A
    db $AB,$9F,$FD,$4D,$A3,$9A,$00,$9F,$DE,$82,$3D,$12,$58,$44,$0D,$08 ; $D16F2A
    db $CD,$47,$4E,$03,$CE,$4D,$F0,$0B,$95,$F9,$EB,$DC,$AC,$AB,$FF,$FB ; $D16F3A
    db $DE,$96,$FF,$8E,$AB,$53,$04,$F4,$13,$87,$E0,$0B,$74,$D8,$27,$D8 ; $D16F4A
    db $A9,$76,$75,$8A,$BF,$10,$C5,$D1,$8D,$AC,$C3,$26,$F9,$51,$FE,$FF ; $D16F5A
    db $76,$AE,$8F,$FF,$AB,$77,$16,$2E,$D1,$56,$5D,$DF,$20,$26,$51,$50 ; $D16F6A
    db $8F,$70,$FC,$06,$DD,$22,$EE,$99,$0A,$FF,$41,$FE,$BF,$DB,$EC,$8B ; $D16F7A
    db $6B,$DB,$8A,$FD,$FF,$AC,$B9,$15,$00,$0A,$41,$00,$3C,$83,$21,$CD ; $D16F8A
    db $24,$D9,$6D,$B2,$53,$AC,$EA,$13,$F7,$F1,$EF,$AD,$EE,$C0,$EE,$C6 ; $D16F9A
    db $DE,$00,$FA,$6A,$7E,$54,$F8,$4C,$09,$F8,$5D,$B0,$31,$D1,$77,$91 ; $D16FAA
    db $E1,$21,$BF,$45,$FD,$81,$5B,$03,$53,$18,$83,$18,$F2,$20,$E1,$40 ; $D16FBA
    db $E8,$90,$E5,$80,$C8,$60,$C5,$A0,$FB,$AF,$FB,$7F,$C3,$E2,$0F,$C1 ; $D16FCA
    db $1F,$98,$1F,$85,$1F,$E8,$3F,$A5,$3F,$18,$DF,$6E,$AE,$DF,$3D,$2D ; $D16FDA
    db $C6,$DF,$3D,$21,$DF,$31,$3F,$51,$DF,$B1,$9F,$8C,$DF,$2F,$C2,$DF ; $D16FEA
    db $26,$63,$C3,$DF,$57,$C0,$18,$DF,$78,$49,$DF,$BD,$17,$C6,$DF,$FB ; $D16FFA
    db $8A,$DF,$38,$B2,$8A,$DF,$86,$CE,$DF,$59,$19,$DF,$9C,$07,$DF,$CF ; $D1700A
    db $C3,$DF,$D5,$FD,$1C,$DF,$BD,$BB,$DF,$63,$D6,$DF,$BF,$43,$8C,$DF ; $D1701A
    db $C7,$DF,$64,$63,$D9,$DF,$ED,$32,$18,$DF,$BB,$04,$DF,$89,$E8,$0C ; $D1702A
    db $26,$D9,$51,$EF,$DF,$FE,$63,$CF,$DF,$76,$06,$01,$DF,$16,$9F,$00 ; $D1703A
    db $26,$40,$51,$8C,$DF,$A8,$56,$DF,$FF,$67,$89,$DF,$45,$22,$DF,$4E ; $D1704A
    db $55,$DB,$CA,$61,$DF,$2F,$0A,$01,$44,$8C,$DF,$20,$DD,$DF,$2D,$63 ; $D1705A
    db $F6,$DF,$FA,$02,$8C,$DF,$E9,$DF,$FF,$60,$D7,$DF,$BE,$22,$7A,$64 ; $D1706A
    db $31,$E5,$58,$DF,$19,$F0,$C6,$DF,$80,$DF,$03,$F3,$41,$E5,$85,$5F ; $D1707A
    db $1A,$20,$DF,$C7,$DF,$50,$C9,$DF,$A5,$8C,$DF,$FF,$3F,$DF,$D1,$E1 ; $D1708A
    db $DF,$C5,$5F,$23,$DF,$7F,$86,$DF,$3F,$6D,$DF,$03,$2F,$21,$2E,$80 ; $D1709A
    db $3B,$11,$8C,$DF,$8E,$DF,$6B,$60,$C4,$DF,$37,$D0,$97,$D1,$03,$17 ; $D170AA
    db $C4,$AB,$F4,$79,$48,$1C,$DF,$FD,$13,$DF,$60,$9A,$DF,$F2,$8E,$00 ; $D170BA
    db $AB,$70,$CF,$DF,$1D,$00,$C6,$DF,$9D,$06,$DF,$31,$8F,$0D,$DF,$D4 ; $D170CA
    db $FC,$8C,$DF,$FD,$BF,$DF,$DF,$63,$D7,$DF,$FB,$03,$18,$DF,$03,$D7 ; $D170DA
    db $DF,$60,$9D,$C6,$DF,$EC,$33,$DF,$40,$FF,$DF,$F9,$06,$75,$F9,$A2 ; $D170EA
    db $CE,$76,$FF,$DF,$40,$DF,$06,$8F,$00,$06,$32,$00,$55,$DF,$A9,$6D ; $D170FA
    db $DF,$1B,$33,$DF,$DA,$1B,$DF,$FD,$00,$DF,$6D,$1B,$DF,$DD,$8C,$01 ; $D1710A
    db $3D,$E6,$DF,$FE,$E2,$DF,$FF,$0C,$DF,$93,$DF,$BF,$83,$DF,$5C,$8C ; $D1711A
    db $DF,$E0,$DF,$73,$E1,$DF,$E2,$40,$21,$DF,$D7,$08,$8F,$DF,$A5,$10 ; $D1712A
    db $02,$18,$DF,$EF,$2F,$DF,$D5,$5F,$B0,$DF,$FC,$00,$BF,$DC,$FA,$00 ; $D1713A
    db $C5,$00,$E2,$28,$49,$C4,$61,$E4,$31,$52,$1A,$48,$FC,$FF,$FA,$FF ; $D1714A
    db $C5,$FF,$AA,$9F,$F5,$B7,$FD,$9F,$5F,$CF,$4C,$E5,$1E,$B4,$0F,$5C ; $D1715A
    db $1E,$C8,$0F,$59,$0F,$D8,$05,$50,$87,$52,$02,$55,$B7,$E1,$5F,$F0 ; $D1716A
    db $CB,$E1,$5B,$F0,$DB,$F0,$5A,$FA,$DB,$F8,$5D,$FD,$ED,$DB,$65,$32 ; $D1717A
    db $F2,$1E,$F2,$F0,$FC,$E0,$30,$F7,$A2,$F5,$E4,$EB,$2B,$DF,$12,$AA ; $D1718A
    db $CF,$FF,$0D,$01,$1F,$E3,$A8,$BF,$DD,$0A,$1F,$EA,$2F,$04,$9F,$83 ; $D1719A
    db $C0,$64,$90,$D8,$37,$8E,$B7,$81,$75,$2A,$E3,$C1,$A3,$DD,$FC,$63 ; $D171AA
    db $3B,$7B,$EF,$7F,$6E,$48,$4E,$C9,$80,$A0,$3E,$DD,$F7,$54,$FF,$06 ; $D171BA
    db $01,$20,$20,$A8,$56,$73,$AF,$24,$F8,$37,$0E,$FC,$56,$55,$D9,$26 ; $D171CA
    db $FE,$AF,$DF,$FF,$23,$F9,$53,$74,$BD,$05,$03,$0D,$AF,$F9,$D3,$00 ; $D171DA
    db $5E,$B5,$39,$55,$C0,$2A,$8A,$7E,$1E,$9F,$42,$7E,$38,$20,$F0,$FD ; $D171EA
    db $2C,$B9,$F5,$AE,$EA,$A0,$DF,$9F,$81,$E8,$62,$C7,$B9,$5F,$7E,$07 ; $D171FA
    db $3A,$F5,$61,$BF,$3A,$0A,$88,$CB,$79,$D0,$85,$FF,$F8,$FB,$2D,$BA ; $D1720A
    db $F8,$EF,$1A,$45,$7A,$FD,$F5,$87,$7A,$2F,$AF,$F8,$AE,$EB,$CA,$C5 ; $D1721A
    db $DD,$A0,$65,$C3,$48,$62,$80,$C4,$09,$20,$41,$E4,$32,$02,$60,$0A ; $D1722A
    db $97,$F3,$08,$CD,$9F,$82,$9F,$0D,$3F,$C1,$DF,$37,$1F,$E1,$FD,$AD ; $D1723A
    db $08,$C2,$1F,$00,$3F,$A0,$97,$18,$13,$18,$03,$30,$43,$10,$BC,$53 ; $D1724A
    db $00,$FF,$AF,$CF,$7F,$6F,$FB,$EF,$F3,$12,$FF,$93,$BF,$CE,$1F,$F2 ; $D1725A
    db $C7,$1F,$65,$A0,$E0,$03,$1F,$8F,$F5,$B7,$B9,$4F,$9B,$02,$1F,$58 ; $D1726A
    db $1E,$C8,$0E,$58,$58,$1F,$13,$44,$76,$B7,$1B,$EC,$1F,$F1,$96,$1F ; $D1727A
    db $00,$4C,$EC,$ED,$DB,$75,$67,$F2,$1E,$3B,$E3,$E1,$25,$1F,$E2,$80 ; $D1728A
    db $1F,$FE,$8B,$FF,$0D,$FE,$1D,$1D,$1F,$E3,$EC,$80,$1F,$3F,$14,$9F ; $D1729A
    db $83,$C4,$60,$1D,$90,$D8,$27,$97,$1F,$31,$3E,$2E,$E3,$C1,$B2,$DC ; $D172AA
    db $FC,$63,$7F,$3B,$EF,$7F,$7E,$58,$4E,$C9,$C0,$E0,$3E,$DD,$E7,$55 ; $D172BA
    db $FF,$06,$55,$C7,$1F,$47,$72,$6B,$1F,$A4,$77,$0E,$FC,$57,$55,$F9 ; $D172CA
    db $06,$AE,$BB,$DF,$FF,$32,$F8,$53,$74,$F9,$01,$03,$0D,$BE,$E9,$D3 ; $D172DA
    db $00,$1E,$6D,$55,$C0,$3B,$65,$1F,$06,$C3,$7E,$38,$31,$E0,$FD,$2C ; $D172EA
    db $ED,$F1,$AE,$EA,$A1,$CE,$B3,$1F,$66,$B0,$1F,$6E,$27,$3A,$04,$F5 ; $D172FA
    db $21,$BF,$3A,$1A,$67,$1F,$81,$60,$1F,$2C,$9A,$F8,$AF,$8C,$1F,$E5 ; $D1730A
    db $1F,$87,$7A,$6F,$07,$9D,$1F,$60,$9F,$1F,$12,$04,$9D,$1F,$9F,$9F ; $D1731A
    db $1F,$ED,$07,$9F,$1F,$00,$06,$9F,$1F,$83,$03,$91,$1F,$64,$9F,$1F ; $D1732A
    db $08,$02,$9D,$1F,$B8,$9D,$1F,$0C,$89,$1F,$1F,$49,$E0,$1F,$51,$07 ; $D1733A
    db $52,$17,$EC,$1F,$4B,$4B,$E0,$01,$1F,$5B,$FA,$5B,$F8,$4C,$E8,$D0 ; $D1734A
    db $3F,$76,$9E,$1F,$76,$F3,$1F,$76,$6B,$1F,$4B,$9A,$03,$1F,$FC,$0B ; $D1735A
    db $1F,$EA,$7F,$B1,$1F,$C5,$70,$70,$90,$D8,$67,$8A,$B7,$81,$20,$3F ; $D1736A
    db $E3,$C1,$B6,$9C,$EC,$1F,$3A,$64,$EF,$02,$18,$B2,$1F,$E3,$79,$1F ; $D1737A
    db $07,$D9,$1F,$F9,$D8,$1F,$53,$51,$01,$F9,$06,$AF,$AA,$DF,$FF,$72 ; $D1738A
    db $D9,$1F,$F8,$D8,$1F,$FE,$AD,$EC,$1F,$7C,$00,$55,$C0,$3F,$8E,$7E ; $D1739A
    db $1E,$8F,$07,$96,$1F,$07,$FD,$E1,$AE,$EA,$E1,$62,$1F,$F8,$77,$E3 ; $D173AA
    db $C7,$B9,$1F,$2E,$07,$3A,$E4,$20,$9F,$3A,$5E,$59,$FD,$79,$C0,$80 ; $D173BA
    db $DA,$1F,$E3,$28,$BA,$F8,$BF,$1B,$45,$5A,$F9,$A1,$87,$7A,$7F,$BF ; $D173CA
    db $F8,$00,$EF,$D9,$1F,$85,$72,$E0,$65,$48,$02,$E0,$C4,$09,$61,$40 ; $D173DA
    db $E4,$32,$52,$20,$0A,$3F,$E5,$7F,$CD,$9F,$E2,$C0,$A2,$3F,$C0,$9E ; $D173EA
    db $37,$1F,$25,$A1,$AD,$91,$1F,$7F,$81,$1F,$08,$03,$30,$03,$40,$3C ; $D173FA
    db $1F,$8F,$1D,$7F,$6F,$EB,$AF,$1F,$38,$C3,$FF,$6E,$07,$E6,$0F,$F7 ; $D1740A
    db $08,$E7,$02,$E7,$00,$87,$00,$33,$04,$3D,$02,$67,$F1,$EF,$F9,$F8 ; $D1741A
    db $F8,$E2,$F8,$E0,$F8,$80,$F8,$34,$FC,$3A,$FA,$86,$54,$03,$15,$3B ; $D1742A
    db $43,$0F,$82,$3A,$08,$04,$8A,$20,$00,$6C,$DD,$F9,$5C,$1D,$3A,$FC ; $D1743A
    db $6E,$E5,$8A,$F0,$2D,$E5,$8B,$FB,$20,$FF,$85,$4B,$F7,$65,$F1,$F8 ; $D1744A
    db $BD,$7A,$B5,$F7,$6A,$1A,$A8,$7D,$01,$16,$15,$41,$00,$FD,$DB,$BA ; $D1745A
    db $4B,$72,$CA,$2A,$E7,$8D,$2A,$02,$16,$FE,$41,$EA,$AD,$26,$6B,$9D ; $D1746A
    db $82,$FA,$B6,$94,$F3,$EE,$EB,$71,$BD,$B8,$5F,$75,$F8,$55,$7F,$14 ; $D1747A
    db $07,$85,$1F,$C9,$28,$CA,$A6,$45,$C6,$7A,$70,$A5,$FD,$03,$52,$F9 ; $D1748A
    db $FB,$02,$DE,$59,$FF,$8E,$DA,$F4,$DD,$74,$2E,$60,$05,$3F,$07,$55 ; $D1749A
    db $FF,$04,$01,$7F,$71,$04,$FB,$5B,$D1,$8F,$97,$1A,$84,$88,$8C,$07 ; $D174AA
    db $36,$6E,$8D,$F9,$F1,$63,$B3,$1E,$5F,$B2,$DE,$18,$D5,$21,$F8,$74 ; $D174BA
    db $D5,$E3,$06,$8B,$6D,$89,$60,$D2,$4B,$14,$F8,$21,$21,$2A,$D0,$4F ; $D174CA
    db $52,$3A,$0D,$F9,$A7,$F2,$2F,$2D,$5B,$21,$A2,$4B,$E1,$F0,$20,$95 ; $D174DA
    db $87,$07,$0A,$DA,$28,$3D,$D0,$75,$A4,$14,$17,$43,$C3,$F7,$6D,$43 ; $D174EA
    db $27,$C3,$E5,$C7,$AA,$C7,$20,$87,$68,$06,$21,$55,$0A,$77,$BC,$A7 ; $D174FA
    db $BC,$E5,$3C,$AA,$38,$20,$38,$68,$78,$21,$F9,$1A,$BA,$B3,$00,$3B ; $D1750A
    db $80,$7F,$00,$01,$70,$67,$00,$37,$00,$E7,$00,$EF,$00,$33,$7F,$BB ; $D1751A
    db $FF,$8E,$40,$B6,$67,$FF,$37,$FF,$E7,$FF,$46,$EF,$1F,$06,$0B,$F7 ; $D1752A
    db $08,$E6,$03,$1B,$00,$83,$04,$33,$04,$3C,$03,$67,$F1,$76,$EB,$1F ; $D1753A
    db $00,$E3,$F9,$E0,$F8,$84,$FC,$34,$FC,$3B,$3B,$FB,$00,$1F,$11,$3B ; $D1754A
    db $43,$1F,$83,$3A,$08,$76,$44,$1F,$27,$01,$84,$82,$1F,$E1,$2D,$E5 ; $D1755A
    db $CB,$78,$1F,$61,$F5,$00,$BD,$7A,$A4,$F6,$6A,$1A,$FD,$3D,$EC,$1F ; $D1756A
    db $40,$C5,$DF,$DF,$BE,$C3,$4B,$72,$CB,$2B,$E7,$8D,$2E,$13,$16,$FE ; $D1757A
    db $51,$FB,$B2,$1F,$D9,$E3,$82,$FA,$A6,$95,$F3,$EE,$EF,$75,$BD,$B8 ; $D1758A
    db $5E,$65,$F8,$55,$3F,$54,$D8,$1F,$D9,$28,$3B,$CA,$A2,$3B,$1F,$61 ; $D1759A
    db $01,$1F,$16,$FD,$FB,$02,$8F,$08,$D8,$1F,$B0,$DD,$18,$74,$7F,$10 ; $D175AA
    db $3F,$03,$15,$B8,$F6,$FF,$04,$7E,$31,$04,$FB,$1F,$D5,$8F,$52,$AC ; $D175BA
    db $D0,$8C,$07,$72,$2E,$1F,$5C,$72,$BB,$B3,$1E,$1F,$F3,$DE,$18,$C5 ; $D175CA
    db $20,$F8,$74,$D1,$A3,$06,$8B,$7D,$88,$60,$D2,$0F,$10,$03,$1F,$3B ; $D175DA
    db $D0,$4F,$53,$3E,$B0,$1F,$E3,$2F,$2D,$22,$1B,$35,$8B,$6B,$8F,$F0 ; $D175EA
    db $20,$D1,$82,$07,$0A,$DB,$38,$3D,$D0,$35,$E4,$00,$FF,$11,$BB,$64 ; $D175FA
    db $1F,$67,$B0,$1F,$83,$6C,$06,$3B,$21,$54,$27,$1F,$E7,$8E,$1F,$6C ; $D1760A
    db $7C,$C7,$1F,$BB,$B3,$79,$19,$2C,$1F,$77,$9E,$1F,$4F,$FF,$27,$1F ; $D1761A
    db $77,$93,$1F,$F6,$C0,$1F,$82,$05,$33,$04,$38,$3A,$07,$67,$D9,$AF ; $D1762A
    db $65,$1F,$85,$C3,$FD,$34,$FC,$3F,$FF,$06,$54,$13,$C1,$3B,$43,$1B ; $D1763A
    db $B3,$1F,$45,$B0,$1F,$45,$80,$5D,$B8,$74,$F9,$CC,$ED,$6E,$E5,$8E ; $D1764A
    db $E5,$2D,$E5,$CA,$FA,$20,$8E,$89,$FD,$FF,$71,$C0,$1F,$E4,$B6,$6A ; $D1765A
    db $1A,$FC,$1B,$2C,$01,$16,$9F,$03,$DF,$CE,$BF,$4B,$72,$8F,$B3,$1F ; $D1766A
    db $2F,$0E,$F9,$FE,$55,$FF,$D7,$1F,$2E,$C9,$83,$FB,$E2,$D5,$F3,$EE ; $D1767A
    db $FF,$74,$BD,$B8,$1E,$61,$F8,$55,$3E,$55,$07,$84,$1B,$C7,$1F,$B2 ; $D1768A
    db $44,$65,$1F,$E1,$C7,$FD,$03,$56,$FC,$53,$02,$FF,$78,$FB,$8A,$DA ; $D1769A
    db $A1,$DE,$72,$7F,$50,$B6,$1F,$34,$00,$AC,$7A,$01,$04,$FF,$0E,$D4 ; $D176AA
    db $8B,$3B,$51,$A8,$5C,$1F,$23,$62,$3E,$8D,$F9,$F4,$76,$B2,$1E,$1E ; $D176BA
    db $F3,$DE,$19,$3B,$1F,$C1,$2E,$1F,$39,$11,$CD,$60,$D3,$0F,$11,$F9 ; $D176CA
    db $21,$25,$3F,$D0,$4F,$43,$80,$1F,$27,$2F,$CD,$3A,$C5,$00,$46,$80 ; $D176DA
    db $1F,$76,$C1,$1F,$01,$5F,$78,$FD,$D0,$C5,$C5,$80,$DD,$DB,$96,$1F ; $D176EA
    db $00,$C3,$AE,$C7,$20,$82,$6D,$06,$21,$25,$10,$0E,$97,$1F,$AE,$1C ; $D176FA
    db $3C,$20,$38,$6D,$7D,$21,$F9,$1E,$FF,$98,$07,$89,$06,$C6,$00,$A2 ; $D1770A
    db $37,$00,$5C,$E8,$6B,$14,$FE,$00,$FA,$05,$9F,$FF,$8E,$FE,$C6,$FF ; $D1771A
    db $A2,$FF,$F0,$FF,$FC,$9B,$47,$AC,$22,$08,$25,$10,$62,$08,$81,$55 ; $D1772A
    db $EE,$03,$90,$50,$AA,$00,$91,$00,$28,$FD,$30,$FA,$68,$FD,$D5,$FE ; $D1773A
    db $EB,$F9,$D0,$EA,$A8,$FD,$85,$EE,$58,$08,$AA,$C3,$18,$08,$AA,$FF ; $D1774A
    db $61,$FA,$06,$7E,$2A,$15,$03,$0E,$55,$5D,$77,$38,$99,$EC,$1A,$7F ; $D1775A
    db $79,$81,$E0,$00,$57,$01,$A8,$A1,$05,$8A,$AB,$E1,$07,$01,$AF,$33 ; $D1776A
    db $F8,$A1,$4A,$5F,$04,$A9,$A3,$57,$DF,$FA,$E1,$54,$54,$F9,$33,$50 ; $D1777A
    db $F6,$06,$AA,$88,$AD,$25,$FA,$5C,$A5,$A7,$DE,$04,$DF,$DD,$73,$FA ; $D1778A
    db $71,$C2,$B6,$7D,$75,$02,$E1,$54,$2D,$DF,$2A,$AC,$51,$71,$DC,$76 ; $D1779A
    db $74,$73,$72,$8C,$5F,$40,$40,$50,$14,$0C,$00,$BF,$AA,$15,$58,$40 ; $D177AA
    db $33,$F5,$0E,$5F,$55,$63,$0A,$03,$EB,$BF,$03,$03,$EA,$40,$55,$5F ; $D177BA
    db $0A,$01,$64,$07,$04,$AB,$80,$06,$05,$80,$BB,$05,$04,$A8,$02,$D5 ; $D177CA
    db $01,$C6,$16,$56,$FA,$AD,$77,$57,$02,$B0,$54,$FA,$02,$EB,$57,$55 ; $D177DA
    db $2A,$A0,$00,$B4,$41,$B3,$00,$10,$40,$B8,$00,$18,$41,$AB,$00,$1A ; $D177EA
    db $05,$A0,$FF,$F1,$FB,$B3,$FF,$50,$FF,$B8,$FF,$59,$FF,$AB,$D5,$49 ; $D177FA
    db $1D,$CF,$00,$8F,$57,$5F,$2F,$41,$21,$BF,$40,$15,$6B,$1C,$CF,$FF ; $D1780A
    db $8F,$15,$74,$2F,$49,$21,$00,$D8,$1F,$02,$C6,$3B,$00,$A3,$18,$1F ; $D1781A
    db $EC,$10,$63,$FB,$04,$1D,$9F,$FF,$8A,$9F,$1F,$A3,$01,$B0,$1F,$39 ; $D1782A
    db $6F,$10,$6E,$03,$00,$93,$44,$EA,$05,$D5,$8C,$FF,$84,$49,$FF,$07 ; $D1783A
    db $7E,$FE,$6E,$FF,$D7,$43,$59,$C4,$BD,$0C,$11,$80,$FB,$FF,$8E,$1F ; $D1784A
    db $00,$44,$B7,$15,$63,$07,$8B,$44,$02,$38,$31,$44,$17,$00,$43,$BB ; $D1785A
    db $07,$0C,$8B,$02,$BB,$E0,$1F,$01,$65,$A8,$B5,$02,$DA,$A3,$41,$57 ; $D1786A
    db $01,$0F,$13,$79,$C1,$E0,$FF,$40,$EB,$A9,$FF,$12,$BA,$E1,$FC,$40 ; $D1787A
    db $E9,$13,$F0,$C7,$86,$A8,$88,$F8,$24,$F8,$54,$F0,$A2,$DE,$04,$9E ; $D1788A
    db $9C,$35,$1F,$C2,$F8,$57,$25,$17,$74,$07,$9E,$6F,$AC,$51,$75,$99 ; $D1789A
    db $32,$1F,$2E,$6C,$5F,$07,$15,$02,$00,$80,$40,$A4,$1E,$2E,$6C,$5F ; $D178AA
    db $07,$04,$02,$EE,$40,$7F,$5E,$5B,$EE,$83,$1F,$45,$00,$EA,$83,$07 ; $D178BA
    db $28,$82,$C4,$50,$1C,$1F,$01,$BB,$50,$EA,$07,$44,$3B,$C4,$93,$70 ; $D178CA
    db $01,$B0,$1F,$58,$01,$AB,$18,$00,$1B,$04,$93,$71,$FF,$FC,$0A,$1F ; $D178DA
    db $3F,$EC,$1F,$FF,$7E,$00,$02,$1F,$7E,$3F,$03,$1F,$07,$88,$03,$C6 ; $D178EA
    db $00,$E1,$67,$1F,$FC,$7B,$87,$80,$1F,$9F,$FF,$8B,$FF,$C6,$FF,$7E ; $D178FA
    db $E1,$03,$1F,$C3,$39,$6E,$00,$57,$A6,$79,$31,$1F,$C0,$00,$18,$59 ; $D1790A
    db $6E,$FF,$76,$57,$1F,$31,$D5,$FF,$7F,$C0,$FF,$2C,$1F,$00,$43,$00 ; $D1791A
    db $07,$3B,$8B,$00,$77,$1F,$A8,$34,$FF,$FE,$06,$07,$EC,$1F,$FF,$1D ; $D1792A
    db $E0,$00,$50,$81,$1F,$51,$02,$E3,$01,$47,$D8,$1F,$3D,$C5,$B8,$76 ; $D1793A
    db $E0,$FF,$51,$FF,$A9,$FF,$52,$FE,$E1,$FC,$41,$F8,$1F,$23,$C2,$88 ; $D1794A
    db $1D,$1F,$74,$F4,$8E,$1F,$8F,$8C,$C5,$1F,$F9,$F8,$C6,$77,$24,$07 ; $D1795A
    db $74,$07,$DA,$2B,$AC,$51,$74,$88,$76,$74,$77,$76,$3F,$8E,$5F,$50 ; $D1796A
    db $46,$C1,$1F,$14,$E0,$1A,$3F,$5F,$70,$50,$C1,$15,$FF,$1B,$40,$7F ; $D1797A
    db $1A,$CA,$99,$9B,$F7,$07,$C0,$BB,$54,$01,$28,$82,$71,$84,$78,$57 ; $D1798A
    db $C4,$F7,$07,$BD,$BC,$CC,$1C,$7B,$93,$F1,$30,$00,$B3,$1B,$00,$B8 ; $D1799A
    db $00,$70,$59,$27,$1F,$00,$E8,$3F,$EC,$1F,$54,$FC,$03,$1F,$9F,$FC ; $D179AA
    db $07,$1F,$9F,$FC,$05,$1F,$80,$B9,$60,$15,$C6,$08,$A0,$17,$C1,$00 ; $D179BA
    db $A1,$02,$C0,$01,$E0,$03,$E0,$01,$95,$FF,$C9,$F9,$B7,$F7,$FE,$A2 ; $D179CA
    db $FE,$C1,$3B,$FF,$E3,$1D,$27,$AB,$54,$E2,$31,$54,$E1,$16,$2C,$FB ; $D179DA
    db $19,$CF,$8B,$DF,$4F,$7E,$AF,$54,$54,$B5,$AF,$03,$FC,$3D,$A9,$1E ; $D179EA
    db $05,$A4,$2B,$70,$2F,$A4,$8A,$F9,$29,$E0,$84,$DE,$4A,$7D,$29,$FB ; $D179FA
    db $F9,$23,$A2,$A9,$E7,$D1,$CD,$2F,$06,$DB,$1A,$7F,$21,$83,$EA,$06 ; $D17A0A
    db $FD,$5C,$7E,$98,$B1,$63,$B2,$8A,$58,$2A,$01,$FF,$51,$8F,$AF,$DF ; $D17A1A
    db $A9,$76,$8A,$07,$89,$FC,$75,$A7,$0D,$FE,$80,$AE,$51,$55,$DA,$06 ; $D17A2A
    db $D9,$51,$23,$76,$01,$26,$FA,$31,$FC,$83,$99,$DA,$15,$7D,$E7,$F5 ; $D17A3A
    db $FE,$F8,$BB,$BD,$C7,$FA,$E7,$27,$83,$03,$D5,$80,$F5,$25,$48,$AD ; $D17A4A
    db $07,$F9,$52,$E9,$05,$C2,$9A,$7D,$98,$ED,$D3,$98,$E0,$35,$44,$C0 ; $D17A5A
    db $EC,$D3,$EA,$22,$FE,$BD,$E4,$52,$ED,$67,$EC,$3C,$B5,$1F,$B0,$FB ; $D17A6A
    db $F3,$13,$CA,$35,$55,$A9,$FA,$1B,$0F,$40,$1F,$80,$2F,$40,$89,$21 ; $D17A7A
    db $C6,$07,$7F,$80,$E7,$71,$4F,$DF,$6F,$52,$21,$9F,$E3,$DD,$3F,$86 ; $D17A8A
    db $DF,$C3,$0C,$DF,$41,$C0,$DF,$05,$9C,$DF,$F0,$DF,$38,$CC,$FC,$DF ; $D17A9A
    db $FF,$CE,$DF,$C5,$01,$DF,$F1,$FF,$01,$56,$FF,$15,$8E,$DF,$57,$6D ; $D17AAA
    db $30,$DF,$CF,$DF,$7F,$AF,$56,$38,$FE,$15,$DF,$6D,$63,$A8,$DF,$E0 ; $D17ABA
    db $2F,$18,$DF,$B4,$8B,$DF,$E4,$81,$C6,$DF,$79,$38,$DF,$38,$66,$E3 ; $D17ACA
    db $DF,$CC,$CE,$DF,$9E,$18,$DF,$93,$FE,$DF,$5D,$3B,$C0,$DF,$73,$A2 ; $D17ADA
    db $8A,$78,$6E,$E1,$DF,$9F,$BE,$31,$DF,$34,$87,$47,$DF,$45,$0C,$DF ; $D17AEA
    db $15,$63,$DF,$77,$63,$BB,$DF,$6F,$44,$0E,$DF,$B7,$E4,$FE,$F7,$EE ; $D17AFA
    db $8E,$DF,$32,$31,$DF,$90,$DF,$58,$EC,$8C,$DF,$12,$ED,$DF,$8F,$60 ; $D17B0A
    db $68,$DF,$93,$88,$60,$B5,$24,$04,$D0,$DF,$30,$F4,$53,$DF,$F8,$6C ; $D17B1A
    db $B5,$19,$9F,$B0,$BB,$DF,$CE,$C3,$DF,$FB,$0B,$12,$BF,$C2,$0D,$12 ; $D17B2A
    db $BF,$D1,$04,$12,$BF,$CD,$FD,$1E,$BF,$D4,$FE,$02,$BF,$33,$17,$69 ; $D17B3A
    db $BF,$DF,$C6,$03,$BF,$69,$E8,$BF,$70,$F0,$BF,$B0,$8F,$C7,$BF,$F5 ; $D17B4A
    db $91,$6E,$9F,$18,$BF,$77,$F3,$BF,$D5,$C8,$C6,$BF,$9F,$0A,$BF,$33 ; $D17B5A
    db $D7,$BA,$BF,$4C,$86,$BF,$37,$E2,$BF,$E8,$19,$19,$51,$DF,$FA,$BF ; $D17B6A
    db $77,$C3,$BF,$FD,$74,$38,$BF,$FF,$BF,$05,$E1,$BF,$05,$72,$8E,$BF ; $D17B7A
    db $73,$FE,$D8,$9F,$CC,$15,$F7,$64,$A4,$BF,$EF,$19,$BF,$72,$BF,$C5 ; $D17B8A
    db $D8,$9F,$5C,$A8,$CE,$BF,$02,$38,$BF,$8B,$BF,$92,$67,$99,$BF,$00 ; $D17B9A
    db $10,$BF,$FB,$BF,$63,$13,$BF,$F9,$6D,$1C,$BF,$F0,$FF,$BF,$40,$24 ; $D17BAA
    db $BF,$E8,$00,$01,$E0,$01,$FE,$00,$EA,$01,$FD,$C0,$03,$F5,$00,$FA ; $D17BBA
    db $01,$74,$E8,$0E,$53,$FE,$FF,$EB,$EE,$97,$03,$BF,$74,$F5,$FF,$FB ; $D17BCA
    db $FF,$2B,$C1,$15,$21,$1A,$28,$1D,$30,$8F,$15,$85,$08,$E0,$0C,$D5 ; $D17BDA
    db $52,$DC,$D5,$2A,$AB,$2F,$E5,$33,$A2,$9D,$F8,$89,$AA,$ED,$FF,$D3 ; $D17BEA
    db $AA,$AE,$98,$9F,$B4,$F7,$DC,$70,$32,$A1,$08,$0D,$00,$DC,$8A,$CA ; $D17BFA
    db $FD,$6D,$C2,$C1,$56,$BE,$49,$E7,$9F,$C9,$5F,$D0,$F2,$8A,$23,$FD ; $D17C0A
    db $35,$80,$C6,$F9,$FF,$71,$F9,$00,$74,$00,$C5,$61,$51,$02,$C7,$02 ; $D17C1A
    db $55,$FD,$FE,$AC,$FB,$73,$FC,$DD,$26,$04,$8F,$A8,$AA,$52,$FE,$82 ; $D17C2A
    db $0E,$B2,$7B,$CA,$F9,$7E,$06,$3F,$2C,$0E,$A0,$5A,$C0,$C7,$11,$9E ; $D17C3A
    db $EC,$C1,$37,$BD,$C6,$3F,$81,$77,$C8,$BF,$F1,$DF,$A5,$1F,$38,$EF ; $D17C4A
    db $61,$D8,$06,$A0,$7D,$E3,$D0,$DE,$A1,$9D,$40,$7E,$80,$28,$80,$50 ; $D17C5A
    db $84,$E6,$27,$FD,$5F,$D3,$1F,$AB,$2B,$5D,$7F,$AA,$AB,$A8,$FF,$84 ; $D17C6A
    db $AF,$9C,$BF,$E4,$BF,$71,$EB,$5D,$EE,$06,$BF,$00,$BF,$4C,$E5,$BF ; $D17C7A
    db $EF,$E2,$BF,$FA,$0C,$BF,$61,$BF,$4D,$E2,$BF,$D5,$0C,$BF,$03,$BF ; $D17C8A
    db $6A,$63,$EF,$BF,$32,$B2,$18,$BF,$C9,$EA,$BF,$93,$BA,$CE,$BF,$DF ; $D17C9A
    db $18,$BF,$61,$33,$BF,$49,$44,$C8,$BF,$DA,$31,$BF,$16,$BF,$F7,$9E ; $D17CAA
    db $8E,$BF,$D4,$B6,$31,$BF,$25,$BF,$FB,$E9,$8C,$BF,$EC,$14,$BF,$F9 ; $D17CBA
    db $E3,$BF,$03,$86,$B0,$FC,$EB,$BF,$31,$CD,$23,$BF,$E8,$EE,$C6,$BF ; $D17CCA
    db $FC,$BF,$31,$3E,$8E,$BF,$3B,$29,$9C,$BF,$1E,$BF,$31,$8F,$E9,$BF ; $D17CDA
    db $F9,$C7,$C7,$BF,$CC,$18,$BF,$E1,$BF,$EB,$70,$E3,$BF,$39,$18,$BF ; $D17CEA
    db $CE,$A0,$BF,$3A,$C0,$91,$BF,$F9,$C3,$BF,$AA,$3B,$18,$BF,$EA,$EF ; $D17CFA
    db $BF,$94,$BF,$CE,$BF,$F4,$AB,$3B,$EF,$9A,$BF,$03,$47,$BF,$F4,$1E ; $D17D0A
    db $BF,$EF,$04,$BF,$63,$70,$BF,$0D,$34,$89,$BF,$09,$0C,$BF,$7B,$EE ; $D17D1A
    db $BF,$36,$48,$F2,$BF,$D7,$62,$FE,$BF,$CE,$A4,$43,$BF,$48,$54,$38 ; $D17D2A
    db $BF,$9E,$BF,$D1,$E2,$BF,$F3,$0E,$BF,$B7,$39,$BF,$61,$BF,$D8,$7F ; $D17D3A
    db $AC,$54,$C4,$BF,$F8,$01,$DD,$BF,$9C,$7F,$8C,$BF,$24,$F9,$FF,$BF ; $D17D4A
    db $3B,$3F,$9F,$24,$7F,$6D,$BF,$70,$CF,$BF,$E9,$D6,$CE,$BF,$73,$38 ; $D17D5A
    db $BF,$CF,$BF,$EF,$63,$30,$BF,$B0,$28,$CC,$03,$BF,$80,$BF,$E8,$63 ; $D17D6A
    db $4F,$BF,$AE,$3F,$6D,$BF,$9B,$BF,$70,$D0,$FF,$77,$01,$7B,$14,$38 ; $D17D7A
    db $03,$18,$45,$0C,$00,$CB,$03,$8E,$87,$00,$82,$15,$75,$FC,$3C,$AC ; $D17D8A
    db $3B,$FF,$4D,$EF,$0C,$0B,$03,$8E,$FF,$A6,$97,$FF,$96,$37,$79,$C1 ; $D17D9A
    db $2F,$A5,$3E,$5B,$B0,$0A,$AA,$50,$F7,$00,$15,$6F,$3F,$69,$DF,$86 ; $D17DAA
    db $BD,$D0,$5E,$C0,$8A,$CF,$3F,$00,$F7,$FF,$6F,$EA,$02,$AE,$54,$FC ; $D17DBA
    db $C0,$9D,$7B,$04,$00,$03,$AA,$8B,$98,$C3,$F8,$AF,$F8,$AB,$57,$0E ; $D17DCA
    db $53,$81,$D0,$03,$BE,$3D,$00,$17,$F8,$AA,$69,$6C,$40,$62,$0E,$66 ; $D17DDA
    db $31,$E3,$F4,$A2,$10,$A1,$56,$79,$00,$43,$B0,$C6,$96,$DF,$9D,$B1 ; $D17DEA
    db $99,$F4,$1C,$10,$5D,$F6,$FE,$79,$FF,$B2,$BE,$60,$00,$D0,$04,$A0 ; $D17DFA
    db $03,$00,$60,$81,$1B,$10,$87,$00,$0F,$3A,$40,$60,$17,$13,$A0,$0E ; $D17E0A
    db $FF,$80,$AF,$81,$FF,$13,$BF,$87,$FF,$4F,$FF,$F4,$2B,$F7,$FC,$AA ; $D17E1A
    db $5B,$FE,$BB,$5F,$F4,$A1,$8E,$FC,$5D,$5B,$55,$FE,$F1,$5F,$BF,$3B ; $D17E2A
    db $00,$21,$BF,$1C,$01,$8C,$BF,$92,$04,$BF,$28,$63,$EC,$BF,$5D,$FF ; $D17E3A
    db $38,$BF,$0D,$BF,$96,$E1,$BF,$39,$81,$8E,$BF,$3F,$4A,$31,$BF,$10 ; $D17E4A
    db $BF,$04,$7F,$8C,$BF,$9F,$C6,$BF,$5F,$E3,$BF,$BA,$87,$BF,$7F,$FB ; $D17E5A
    db $1C,$BF,$B8,$BF,$48,$05,$BF,$44,$64,$F9,$BF,$BB,$12,$BF,$C0,$18 ; $D17E6A
    db $BF,$F9,$BB,$BF,$66,$4E,$C7,$BF,$E2,$E5,$13,$BF,$12,$31,$BF,$99 ; $D17E7A
    db $BF,$E5,$1D,$9C,$BF,$B2,$BF,$39,$B3,$BF,$BF,$DD,$B7,$78,$C0,$03 ; $D17E8A
    db $BF,$C0,$EF,$E3,$BF,$BF,$12,$BF,$53,$FF,$09,$BF,$F9,$00,$FC,$FF ; $D17E9A
    db $1B,$CF,$06,$BF,$FF,$04,$38,$BF,$01,$BF,$00,$C6,$BF,$D6,$00,$BF ; $D17EAA
    db $33,$38,$FC,$BF,$19,$86,$BF,$1C,$FF,$BF,$03,$D6,$FF,$B6,$17,$29 ; $D17EBA
    db $80,$01,$BF,$2A,$6E,$30,$4A,$2A,$00,$80,$BF,$27,$66,$1F,$49,$9E ; $D17ECA
    db $D6,$C0,$BF,$7F,$D5,$4A,$CF,$2A,$E1,$BF,$7E,$D8,$C6,$BF,$A8,$BF ; $D17EDA
    db $24,$FF,$81,$BF,$32,$81,$7C,$BF,$AB,$09,$BF,$00,$0C,$BF,$7C,$7E ; $D17EEA
    db $BF,$67,$E3,$BF,$A2,$86,$BF,$A0,$02,$BF,$31,$F7,$E0,$BF,$CE,$98 ; $D17EFA
    db $C6,$BF,$5D,$BF,$30,$A2,$FF,$BF,$E7,$0F,$60,$E4,$BB,$DD,$BF,$C9 ; $D17F0A
    db $41,$0F,$00,$CE,$BF,$FE,$77,$03,$CE,$BF,$43,$01,$BF,$0F,$FF,$ED ; $D17F1A
    db $00,$E2,$05,$9D,$57,$FB,$04,$DF,$FE,$01,$1D,$BF,$ED,$6E,$35,$00 ; $D17F2A
    db $13,$FA,$FE,$FD,$03,$BF,$18,$68,$C7,$4B,$EA,$2E,$1F,$40,$38,$40 ; $D17F3A
    db $03,$C2,$08,$0F,$30,$97,$4D,$6F,$E7,$CE,$B9,$EA,$FF,$EF,$AE,$3D ; $D17F4A
    db $9D,$BD,$07,$30,$F0,$CD,$E8,$00,$52,$84,$00,$03,$00,$AF,$00,$A8 ; $D17F5A
    db $56,$AB,$8C,$3F,$AF,$4B,$FF,$3B,$A8,$FD,$E6,$64,$FA,$56,$16,$75 ; $D17F6A
    db $54,$A5,$CF,$50,$66,$CB,$50,$DE,$31,$3E,$00,$BE,$50,$17,$00,$5B ; $D17F7A
    db $C0,$97,$60,$4F,$80,$D6,$9F,$7B,$2B,$3E,$00,$1E,$EB,$17,$FF,$CB ; $D17F8A
    db $AF,$77,$7F,$1D,$8F,$BF,$BF,$F7,$5B,$FF,$9D,$03,$01,$BF,$DF,$73 ; $D17F9A
    db $04,$62,$00,$9F,$E6,$01,$0F,$9F,$FF,$05,$3D,$9F,$FB,$01,$1F,$87 ; $D17FAA
    db $9F,$87,$0B,$EA,$33,$17,$9F,$86,$86,$9F,$87,$5C,$9F,$31,$8A,$F9 ; $D17FBA
    db $9F,$BB,$BB,$8C,$9F,$99,$F9,$9F,$DC,$62,$F8,$9F,$17,$15,$28,$7D ; $D17FCA
    db $CE,$9F,$EF,$18,$3F,$BF,$04,$31,$EC,$F9,$73,$00,$1F,$18,$9F,$11 ; $D17FDA
    db $10,$17,$44,$40,$C6,$9F,$9E,$71,$9F,$32,$AF,$40,$9F,$1F,$63,$9F ; $D17FEA
    db $7F,$6F,$18,$9F,$EB,$FB,$9F,$CF,$EF,$91,$9F,$7F,$E7,$07,$9F,$7F ; $D17FFA
    db $9E,$07,$9F,$F6,$05,$1F,$CF,$9F,$F6,$05,$03,$1F,$17,$70,$8F,$33 ; $D1800A
    db $E0,$B6,$1F,$9F,$38,$87,$18,$9F,$18,$01,$7F,$E8,$B3,$F0,$E0,$FF ; $D1801A
    db $AF,$D8,$7D,$98,$F8,$D8,$9F,$03,$FD,$02,$24,$07,$04,$9F,$98,$41 ; $D1802A
    db $02,$FC,$45,$F8,$3B,$1D,$9F,$A9,$34,$E6,$00,$9F,$38,$8F,$60,$9F ; $D1803A
    db $00,$CE,$9F,$0F,$6C,$9F,$03,$9F,$6F,$39,$7F,$3E,$3F,$C6,$9F,$FF ; $D1804A
    db $9F,$C1,$03,$C1,$1E,$F0,$03,$E1,$04,$7F,$DE,$FE,$F3,$E0,$05,$7F ; $D1805A
    db $54,$AB,$00,$FE,$F0,$04,$1F,$AB,$AB,$FE,$F7,$05,$1F,$80,$00     ; $D1806A
; ---- end of region ----


; ---- RNC method 2 block: 1308 bytes packed, 1984 unpacked (tools/rnc.py) ($D18079-$D185A6) ----
    db $52,$4E,$43,$02,$00,$00,$07,$C0,$00,$00,$05,$1C,$44,$4D,$FC,$59 ; $D18079
    db $04,$01,$17,$00,$5C,$00,$06,$00,$08,$00,$8A,$00,$CC,$08,$0E,$11 ; $D18089
    db $50,$19,$92,$21,$D4,$29,$16,$32,$56,$3A,$98,$42,$DA,$52,$1C,$53 ; $D18099
    db $9E,$5B,$DE,$7B,$0F,$20,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00 ; $D180A9
    db $71,$05,$2B,$07,$C1,$2D,$09,$00,$0A,$7F,$00,$0B,$00,$0C,$00,$0D ; $D180B9
    db $00,$0E,$00,$57,$10,$4E,$11,$DB,$8A,$87,$C5,$37,$D3,$1F,$F5,$51 ; $D180C9
    db $B3,$13,$98,$F0,$0F,$FF,$00,$78,$07,$72,$09,$64,$09,$66,$09,$62 ; $D180D9
    db $0D,$68,$07,$9F,$12,$27,$E4,$B3,$EB,$4A,$FC,$46,$9E,$2C,$C0,$1F ; $D180E9
    db $B2,$FB,$C2,$1E,$E1,$E7,$18,$13,$FC,$50,$8F,$61,$8F,$71,$8E,$33 ; $D180F9
    db $CC,$03,$B9,$71,$FC,$93,$50,$30,$F0,$9E,$7E,$2A,$FF,$90,$7F,$02 ; $D18109
    db $FE,$82,$79,$04,$F1,$2F,$00,$0F,$6F,$00,$47,$75,$07,$00,$5F,$EA ; $D18119
    db $15,$2A,$00,$AA,$AA,$06,$BE,$FF,$01,$FF,$64,$0E,$1B,$FD,$34,$F2 ; $D18129
    db $5D,$28,$01,$55,$1F,$F8,$38,$00,$FE,$2B,$F3,$5C,$09,$71,$83,$77 ; $D18139
    db $E7,$08,$B3,$E9,$AC,$18,$75,$C3,$C3,$E9,$CB,$50,$07,$FF,$81,$0F ; $D18149
    db $F0,$74,$E7,$1F,$DB,$E7,$6F,$30,$1B,$37,$8B,$37,$84,$27,$92,$DE ; $D18159
    db $95,$71,$A1,$37,$6B,$21,$9D,$DA,$98,$3D,$BD,$01,$C7,$F8,$C6,$81 ; $D18169
    db $F1,$0E,$05,$5D,$B8,$39,$C7,$F4,$0F,$A9,$DE,$AE,$DF,$D4,$77,$DB ; $D18179
    db $CF,$E3,$E8,$BE,$FE,$53,$F0,$06,$F2,$06,$F6,$16,$F2,$BC,$03,$37 ; $D18189
    db $00,$17,$7B,$83,$59,$0E,$01,$0D,$03,$0B,$03,$5A,$C6,$B7,$86,$F8 ; $D18199
    db $9C,$23,$41,$7F,$82,$0F,$D1,$9F,$C0,$DF,$E0,$AA,$18,$81,$C0,$00 ; $D181A9
    db $01,$80,$00,$BA,$6B,$F0,$00,$E0,$00,$60,$80,$E1,$00,$43,$C2,$2D ; $D181B9
    db $30,$25,$E3,$D1,$6A,$DF,$97,$C9,$D0,$35,$75,$D0,$F9,$C3,$3C,$3F ; $D181C9
    db $C0,$E1,$A6,$09,$F7,$10,$EF,$C6,$39,$0B,$F0,$17,$E0,$01,$09,$CC ; $D181D9
    db $01,$56,$63,$CB,$52,$E0,$D3,$EF,$D6,$D4,$C7,$D7,$66,$0E,$F0,$B5 ; $D181E9
    db $01,$7C,$80,$9C,$E0,$1C,$E0,$18,$C0,$01,$78,$80,$91,$D1,$6B,$F8 ; $D181F9
    db $D7,$85,$FF,$FF,$FB,$D2,$F7,$26,$9A,$4F,$4B,$52,$93,$EE,$1D,$DB ; $D18209
    db $04,$83,$5D,$79,$04,$CD,$30,$0C,$63,$54,$FF,$03,$30,$FF,$00,$D0 ; $D18219
    db $FF,$68,$FF,$94,$FF,$08,$BF,$29,$60,$3F,$1E,$34,$00,$3F,$89,$1D ; $D18229
    db $00,$7F,$E3,$4A,$EC,$46,$9E,$2E,$C6,$08,$1C,$B0,$F9,$C1,$D7,$7F ; $D18239
    db $0F,$03,$FC,$60,$9F,$70,$8F,$71,$8F,$30,$CF,$01,$FE,$3C,$D7,$7F ; $D18249
    db $08,$C1,$1C,$A7,$C8,$13,$E9,$4C,$F8,$A5,$93,$F0,$C0,$D7,$7F,$08 ; $D18259
    db $1C,$E3,$CF,$30,$E7,$1F,$7B,$87,$5F,$E0,$AF,$70,$D7,$7F,$08,$15 ; $D18269
    db $71,$81,$6B,$A3,$3F,$6D,$37,$8B,$C0,$1C,$1B,$C0,$7F,$71,$8E,$E3 ; $D18279
    db $1C,$CF,$18,$F0,$BC,$C3,$F9,$F5,$0E,$B8,$46,$C5,$EB,$8B,$D0,$DB ; $D18289
    db $FF,$B3,$F8,$50,$FF,$0A,$F9,$7F,$07,$DB,$37,$4B,$37,$37,$1C,$79 ; $D18299
    db $00,$03,$8D,$7F,$70,$59,$BD,$BD,$00,$BA,$E6,$81,$3F,$02,$EF,$B1 ; $D182A9
    db $3F,$8D,$7F,$19,$B3,$DF,$C7,$F7,$10,$3F,$03,$02,$00,$7F,$91,$AA ; $D182B9
    db $DF,$67,$D9,$92,$C1,$12,$D5,$30,$79,$C6,$7F,$89,$77,$A6,$03,$12 ; $D182C9
    db $ED,$C7,$38,$0F,$F0,$F0,$18,$7F,$D1,$F1,$98,$7E,$D7,$04,$7F,$1F ; $D182D9
    db $1E,$E0,$E0,$49,$8F,$7F,$27,$65,$02,$D1,$81,$8F,$7F,$67,$98,$02 ; $D182E9
    db $CF,$81,$92,$07,$C7,$7F,$2E,$01,$E0,$06,$7F,$F9,$C1,$2A,$01,$FC ; $D182F9
    db $04,$7F,$01,$7E,$FE,$08,$7F,$0C,$A7,$6F,$CB,$78,$E9,$44,$2F,$D3 ; $D18309
    db $23,$B8,$C9,$1C,$E8,$C5,$F3,$07,$FF,$E0,$1F,$78,$87,$3F,$C0,$D0 ; $D18319
    db $2F,$C7,$3F,$6B,$97,$7F,$80,$84,$27,$C8,$EF,$BA,$3E,$95,$71,$43 ; $D18329
    db $8F,$AF,$37,$6A,$26,$8D,$C7,$C7,$F8,$0F,$F0,$3E,$C1,$F1,$0E,$07 ; $D18339
    db $F8,$CF,$F0,$BE,$C1,$FC,$03,$A0,$98,$FB,$C0,$C5,$6B,$8B,$D0,$5B ; $D18349
    db $FF,$33,$50,$FF,$16,$07,$F2,$DF,$60,$AB,$77,$E0,$02,$83,$0E,$01 ; $D18359
    db $0B,$20,$23,$BC,$1B,$0D,$83,$BB,$E6,$91,$FB,$81,$5B,$9E,$F8,$07 ; $D18369
    db $B5,$CE,$6D,$83,$A5,$00,$AE,$7F,$11,$3D,$FB,$F0,$FC,$91,$AA,$5F ; $D18379
    db $67,$D9,$12,$C1,$D5,$B6,$7F,$A1,$57,$96,$81,$3F,$47,$B8,$18,$01 ; $D18389
    db $7F,$B0,$F9,$51,$71,$E0,$DF,$F8,$02,$7F,$8F,$70,$1B,$1E,$E0,$60 ; $D18399
    db $B5,$F0,$21,$7F,$CF,$3F,$95,$B8,$79,$7F,$C8,$3F,$81,$7F,$C1,$3C ; $D183A9
    db $82,$78,$CA,$3A,$DC,$01,$1F,$03,$C7,$BF,$05,$61,$43,$55,$55,$5F ; $D183B9
    db $D0,$B2,$32,$C0,$0E,$FE,$1A,$F9,$7D,$F8,$14,$05,$0A,$AA,$1D,$74 ; $D183C9
    db $FC,$74,$C5,$DC,$76,$B8,$00,$70,$FC,$40,$C1,$D6,$32,$B5,$9C,$C0 ; $D183D9
    db $3F,$EA,$6A,$A2,$60,$56,$B1,$0A,$F9,$3F,$F3,$63,$E0,$21,$15,$00 ; $D183E9
    db $1F,$ED,$5D,$AE,$23,$3A,$03,$85,$FD,$01,$7A,$FC,$70,$F0,$A2,$A0 ; $D183F9
    db $F5,$0D,$B2,$F3,$52,$FE,$0B,$36,$81,$19,$00,$5F,$00,$FD,$02,$F3 ; $D18409
    db $0C,$FE,$01,$32,$71,$74,$5F,$A9,$E1,$F8,$03,$F9,$03,$FB,$0B,$79 ; $D18419
    db $D4,$70,$A5,$A2,$8B,$51,$B9,$97,$01,$06,$3E,$01,$87,$00,$8D,$03 ; $D18429
    db $5D,$03,$CE,$11,$20,$3F,$C1,$07,$68,$4F,$60,$6F,$70,$4F,$18,$0F ; $D18439
    db $C0,$36,$E0,$36,$B3,$F8,$77,$F7,$62,$C0,$03,$D0,$E0,$FB,$D9,$E0 ; $D18449
    db $92,$0F,$37,$87,$CD,$F6,$34,$0E,$A4,$5E,$1C,$B6,$28,$5A,$18,$EE ; $D18459
    db $7D,$03,$B5,$4B,$15,$0B,$E5,$1B,$C5,$3B,$95,$6B,$29,$F7,$09,$F7 ; $D18469
    db $3D,$F2,$E4,$E9,$EE,$38,$37,$35,$31,$3A,$38,$3D,$36,$3C,$2B,$3C ; $D18479
    db $DF,$E0,$CD,$F2,$CF,$F0,$C6,$F8,$C3,$FC,$C1,$FE,$C0,$FF,$DA,$6A ; $D18489
    db $E3,$FF,$FF,$FD,$69,$FB,$93,$CD,$27,$A5,$29,$49,$79,$69,$EF,$DF ; $D18499
    db $00,$D7,$AB,$B8,$6B,$06,$00,$3C,$02,$66,$18,$F0,$00,$90,$00,$0D ; $D184A9
    db $14,$1F,$87,$E8,$FF,$34,$FF,$4A,$7F,$84,$DF,$30,$9F,$69,$29,$6A ; $D184B9
    db $0B,$22,$00,$80,$AB,$BD,$00,$A4,$56,$80,$40,$80,$E0,$C8,$5F,$C0 ; $D184C9
    db $6D,$DD,$53,$53,$57,$02,$57,$AA,$10,$FD,$45,$7E,$27,$1F,$C0,$3F ; $D184D9
    db $3D,$02,$AE,$00,$4E,$E7,$E1,$5C,$7C,$FA,$83,$09,$D7,$A2,$33,$59 ; $D184E9
    db $97,$95,$C9,$60,$11,$EA,$23,$2C,$87,$48,$CF,$6E,$80,$3C,$C0,$EE ; $D184F9
    db $00,$3E,$03,$7B,$FC,$00,$B8,$40,$4B,$C3,$00,$7F,$80,$7F,$C3,$3E ; $D18509
    db $86,$7D,$C9,$16,$3B,$DC,$3B,$CA,$7F,$01,$C9,$81,$07,$E0,$7F,$8C ; $D18519
    db $8F,$65,$F9,$02,$36,$38,$34,$38,$08,$F0,$59,$7F,$70,$C2,$3F,$3F ; $D18529
    db $C0,$20,$29,$4F,$CF,$FC,$06,$7F,$30,$FD,$07,$7F,$CF,$DE,$05,$DC ; $D18539
    db $7F,$59,$FC,$0F,$7F,$8B,$07,$F9,$54,$70,$65,$62,$E7,$02,$7F,$07 ; $D18549
    db $67,$7F,$9D,$E3,$19,$7F,$F2,$EF,$F3,$06,$7F,$1D,$F0,$2C,$7F,$F9 ; $D18559
    db $8B,$C5,$03,$1F,$BD,$25,$67,$26,$64,$95,$D6,$80,$7F,$3E,$00,$7E ; $D18569
    db $00,$E6,$18,$3B,$E5,$1A,$4F,$6E,$00,$7F,$C4,$1F,$30,$DF,$29,$C9 ; $D18579
    db $FF,$7E,$1F,$02,$7F,$CE,$01,$F6,$6F,$03,$3D,$06,$DB,$7F,$3D,$F1 ; $D18589
    db $06,$7F,$F9,$F7,$F8,$06,$7F,$0E,$00,$FD,$06,$7F,$E0,$00         ; $D18599
; ---- end of region ----


; ---- RNC method 2 block: 3544 bytes packed, 10846 unpacked (tools/rnc.py) ($D185A7-$D19390) ----
    db $52,$4E,$43,$02,$00,$00,$2A,$5E,$00,$00,$0D,$D8,$51,$30,$95,$06 ; $D185A7
    db $02,$01,$0B,$E0,$01,$AE,$06,$00,$08,$00,$8A,$00,$CC,$08,$0E,$11 ; $D185B7
    db $50,$19,$92,$21,$D4,$29,$16,$32,$56,$3A,$98,$42,$DA,$52,$1C,$53 ; $D185C7
    db $9E,$5B,$DE,$7B,$1E,$00,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00 ; $D185D7
    db $33,$05,$00,$2B,$07,$82,$2D,$09,$00,$0A,$E5,$00,$0B,$00,$0C,$00 ; $D185E7
    db $0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$C7 ; $D185F7
    db $29,$15,$2E,$29,$90,$16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$1B ; $D18607
    db $00,$C0,$3F,$EA,$6A,$A2,$60,$56,$B1,$0A,$F9,$FD,$FC,$81,$80,$A3 ; $D18617
    db $9F,$21,$71,$1F,$33,$07,$C7,$4F,$7F,$05,$01,$70,$F0,$A2,$C3,$A0 ; $D18627
    db $F5,$0D,$B2,$F3,$52,$FE,$55,$AC,$6F,$18,$7F,$80,$19,$5F,$00,$FD ; $D18637
    db $02,$F3,$03,$0C,$FE,$01,$FC,$03,$F9,$00,$24,$FF,$F3,$0F,$6E,$16 ; $D18647
    db $F0,$0C,$80,$03,$6A,$16,$B2,$10,$0E,$78,$06,$8B,$4D,$03,$03,$00 ; $D18657
    db $01,$EA,$E0,$E5,$AC,$C6,$59,$38,$3D,$01,$00,$2F,$28,$39,$BC,$A5 ; $D18667
    db $A8,$1B,$04,$C3,$5D,$8F,$00,$CF,$83,$01,$DF,$00,$4F,$8E,$03,$01 ; $D18677
    db $79,$93,$14,$00,$AA,$70,$7F,$D4,$3E,$6B,$1E,$36,$0F,$1E,$07,$0A ; $D18687
    db $06,$01,$84,$94,$C9,$57,$01,$AE,$39,$18,$52,$CE,$AA,$66,$D5,$33 ; $D18697
    db $EA,$19,$F4,$0C,$7E,$06,$8B,$7F,$07,$09,$3E,$01,$1E,$01,$24,$BD ; $D186A7
    db $1F,$B9,$E3,$FE,$00,$F4,$01,$78,$02,$C7,$C7,$AF,$68,$69,$17,$27 ; $D186B7
    db $14,$92,$82,$04,$FB,$09,$FE,$02,$FD,$C6,$39,$BD,$DD,$22,$17,$C7 ; $D186C7
    db $7B,$04,$0C,$30,$0E,$58,$06,$39,$07,$19,$07,$2C,$03,$0C,$03,$60 ; $D186D7
    db $03,$F5,$01,$57,$97,$00,$18,$32,$3C,$25,$32,$A4,$BC,$31,$3F,$60 ; $D186E7
    db $7F,$B0,$BF,$68,$FF,$70,$FF,$00,$B9,$43,$00,$C0,$00,$80,$00,$40 ; $D186F7
    db $F4,$17,$B9,$DE,$00,$17,$E0,$BD,$C8,$34,$0E,$A4,$5E,$1C,$B6,$28 ; $D18707
    db $5A,$18,$EE,$20,$DE,$DE,$20,$68,$4C,$E5,$1B,$C5,$3B,$95,$6B,$29 ; $D18717
    db $F7,$09,$F7,$91,$6F,$21,$DF,$4D,$B3,$37,$35,$31,$3A,$38,$3D,$36 ; $D18727
    db $3C,$2B,$3C,$33,$3C,$0F,$30,$0B,$18,$C6,$F8,$C3,$FC,$C1,$FE,$C0 ; $D18737
    db $FF,$01,$D8,$BA,$71,$E7,$E2,$8B,$06,$02,$51,$55,$AE,$BC,$52,$C3 ; $D18747
    db $10,$F0,$FF,$3F,$72,$79,$8C,$70,$05,$F8,$56,$A8,$BF,$40,$D3,$2C ; $D18757
    db $EF,$A5,$87,$74,$00,$AB,$E8,$B0,$A0,$45,$55,$3A,$1A,$21,$E0,$04 ; $D18767
    db $02,$FE,$FE,$47,$8F,$18,$07,$50,$0F,$B5,$0A,$FA,$05,$E1,$1E,$FF ; $D18777
    db $E5,$9A,$CB,$F0,$00,$C2,$C2,$BF,$7F,$4F,$1F,$A0,$DE,$D1,$4C,$DA ; $D18787
    db $E7,$7D,$00,$82,$80,$3D,$00,$3A,$17,$BF,$33,$01,$03,$FD,$82,$09 ; $D18797
    db $7F,$00,$BD,$E3,$BD,$FD,$FE,$FC,$FF,$80,$BE,$40,$1F,$23,$F4,$52 ; $D187A7
    db $8A,$A4,$86,$42,$C8,$15,$03,$17,$7E,$80,$DB,$00,$F7,$85,$07,$DB ; $D187B7
    db $88,$C7,$AD,$0F,$41,$8E,$84,$B2,$BB,$60,$4A,$4E,$D1,$A6,$FC,$17 ; $D187C7
    db $99,$67,$06,$B5,$61,$9F,$D1,$0F,$79,$2E,$B1,$00,$99,$78,$00,$98 ; $D187D7
    db $60,$C3,$82,$C4,$D4,$C0,$BB,$10,$26,$EE,$03,$29,$39,$C5,$32,$1B ; $D187E7
    db $F4,$CE,$F1,$CE,$F9,$C1,$FC,$C5,$F8,$79,$C6,$D1,$4B,$71,$0C,$03 ; $D187F7
    db $80,$FF,$AA,$D8,$B0,$40,$27,$60,$A9,$98,$33,$F0,$1F,$E0,$E0,$5A ; $D18807
    db $00,$38,$07,$C0,$04,$E0,$1F,$78,$07,$0F,$96,$20,$2E,$FF,$1A,$18 ; $D18817
    db $1D,$05,$03,$F4,$11,$CA,$04,$E6,$07,$FC,$03,$17,$36,$00,$1E,$60 ; $D18827
    db $E0,$1F,$19,$E6,$0F,$F0,$73,$F8,$1C,$01,$23,$41,$C0,$9A,$7A,$32 ; $D18837
    db $0F,$F9,$02,$4F,$3F,$D3,$03,$E0,$04,$00,$C1,$01,$AC,$AF,$3C,$A6 ; $D18847
    db $F8,$02,$0F,$FE,$3C,$00,$50,$05,$1F,$53,$B8,$D0,$53,$57,$02,$57 ; $D18857
    db $AA,$10,$FD,$45,$7E,$D5,$18,$F5,$46,$ED,$91,$AE,$DF,$FD,$02,$32 ; $D18867
    db $7C,$83,$8D,$07,$E5,$F8,$61,$FE,$95,$C9,$60,$11,$EA,$23,$2C,$87 ; $D18877
    db $48,$CF,$BE,$7F,$CE,$0F,$C2,$BB,$3E,$C0,$41,$FC,$00,$B8,$40,$0C ; $D18887
    db $70,$80,$40,$80,$03,$7C,$2E,$80,$DC,$3D,$DE,$4F,$1D,$38,$6D,$98 ; $D18897
    db $CD,$23,$CF,$08,$C5,$3F,$D3,$40,$01,$BF,$88,$19,$5E,$80,$67,$23 ; $D188A7
    db $03,$EC,$00,$03,$15,$F2,$0B,$CC,$21,$FE,$1C,$A3,$FC,$51,$03,$01 ; $D188B7
    db $56,$F8,$A2,$FC,$08,$00,$30,$FA,$06,$FF,$E3,$CF,$61,$7E,$33,$BC ; $D188C7
    db $E6,$B8,$7C,$70,$E8,$B0,$50,$60,$A0,$C0,$00,$D0,$59,$C0,$E8,$5B ; $D188D7
    db $54,$C0,$26,$63,$00,$05,$F5,$12,$00,$CB,$CF,$80,$97,$5C,$EB,$16 ; $D188E7
    db $D7,$98,$3E,$08,$9D,$C1,$A6,$A7,$DF,$7E,$58,$E7,$24,$DB,$00,$01 ; $D188F7
    db $9A,$67,$84,$7F,$41,$3E,$67,$62,$18,$8D,$93,$DA,$E3,$E9,$F2,$D7 ; $D18907
    db $64,$2F,$48,$DF,$90,$3F,$88,$75,$02,$E3,$94,$5C,$A0,$9C,$B3,$78 ; $D18917
    db $B9,$71,$E0,$59,$88,$D5,$29,$17,$F7,$F3,$59,$29,$39,$CF,$9B,$41 ; $D18927
    db $79,$87,$FF,$02,$FF,$07,$FF,$A2,$3F,$0C,$00,$E6,$00,$E4,$00,$86 ; $D18937
    db $B0,$5D,$23,$C6,$F8,$AA,$60,$F4,$03,$8C,$F0,$DC,$E0,$07,$98,$E0 ; $D18947
    db $30,$C0,$60,$87,$09,$8C,$40,$80,$80,$CF,$1E,$07,$BE,$0F,$00,$24 ; $D18957
    db $A3,$7F,$6E,$18,$7E,$EA,$03,$7F,$FD,$07,$03,$F8,$07,$04,$FB,$D4 ; $D18967
    db $18,$7F,$E4,$AC,$09,$E9,$EC,$3D,$3C,$D4,$7F,$3C,$2D,$65,$A8,$5B ; $D18977
    db $9F,$56,$7D,$2A,$7F,$CF,$E3,$4B,$01,$E6,$17,$A0,$E3,$7A,$FF,$A1 ; $D18987
    db $7F,$DA,$3E,$6F,$BE,$0B,$7E,$06,$3F,$0E,$17,$0A,$06,$29,$D2,$F7 ; $D18997
    db $02,$01,$D6,$18,$7F,$E5,$F4,$01,$FC,$06,$77,$03,$EB,$EC,$AD,$57 ; $D189A7
    db $73,$00,$32,$02,$9E,$84,$09,$FE,$06,$F9,$A2,$01,$B8,$7D,$06,$FB ; $D189B7
    db $04,$D6,$DF,$A8,$7F,$2D,$03,$0D,$EA,$9E,$7F,$02,$01,$08,$8F,$00 ; $D189C7
    db $B6,$B8,$2D,$32,$A2,$B4,$3D,$3A,$1D,$34,$3C,$61,$55,$81,$E0,$54 ; $D189D7
    db $7F,$4F,$00,$1F,$C7,$00,$C3,$1F,$57,$81,$01,$BE,$02,$8A,$18,$A0 ; $D189E7
    db $7F,$5E,$52,$E0,$F8,$CC,$B5,$40,$7F,$89,$77,$11,$EF,$61,$9F,$3E ; $D189F7
    db $DD,$23,$07,$AF,$7F,$1A,$06,$A8,$7F,$DA,$E5,$CE,$01,$8B,$06,$04 ; $D18A07
    db $AF,$BE,$50,$C2,$2A,$80,$7D,$8B,$F6,$8C,$70,$07,$F8,$BF,$12,$40 ; $D18A17
    db $D0,$2F,$A8,$7D,$0E,$01,$B8,$02,$E8,$B0,$B0,$7A,$3A,$A1,$75,$7D ; $D18A27
    db $22,$68,$77,$BF,$7F,$02,$50,$7D,$78,$80,$1F,$E0,$0F,$20,$3F,$F2 ; $D18A37
    db $02,$02,$AC,$83,$43,$73,$FD,$EB,$03,$83,$13,$F3,$F5,$04,$83,$89 ; $D18A47
    db $F3,$FA,$04,$DC,$83,$F1,$CB,$08,$25,$8F,$C1,$96,$9E,$24,$3B,$60 ; $D18A57
    db $EA,$EE,$D1,$D6,$E4,$0F,$01,$FF,$21,$DF,$F1,$0F,$CD,$03,$7B,$31 ; $D18A67
    db $00,$72,$58,$20,$88,$70,$C4,$84,$C0,$DB,$C0,$B6,$3E,$13,$ED,$01 ; $D18A77
    db $28,$3B,$C1,$34,$1F,$F4,$95,$47,$7D,$D8,$E0,$F2,$67,$43,$0C,$5C ; $D18A87
    db $F3,$BF,$C0,$C1,$01,$8F,$F0,$AD,$DA,$6A,$CB,$83,$7D,$15,$02,$4C ; $D18A97
    db $83,$FE,$01,$01,$F8,$3E,$07,$DA,$01,$B2,$83,$7D,$1F,$02,$62,$83 ; $D18AA7
    db $FF,$33,$04,$58,$83,$7D,$97,$04,$62,$83,$FF,$33,$04,$58,$83,$BF ; $D18AB7
    db $33,$D7,$04,$83,$EA,$05,$7F,$E6,$3E,$CD,$81,$06,$A7,$7F,$59,$E6 ; $D18AC7
    db $D4,$19,$7F,$9E,$2F,$09,$7D,$98,$CD,$18,$54,$7F,$53,$E0,$68,$85 ; $D18AD7
    db $3B,$AD,$7D,$AA,$7F,$7E,$FA,$19,$AE,$7F,$A6,$35,$BF,$65,$7F,$32 ; $D18AE7
    db $CF,$64,$7E,$30,$BE,$E0,$BC,$70,$78,$E0,$B0,$40,$5F,$6F,$02,$AF ; $D18AF7
    db $83,$D5,$18,$7F,$D7,$71,$9C,$AB,$56,$D7,$98,$3F,$08,$9E,$C0,$BD ; $D18B07
    db $A1,$C6,$67,$DF,$5E,$64,$9D,$41,$7D,$40,$3F,$61,$1E,$A7,$F5,$1B ; $D18B17
    db $7F,$5C,$57,$AA,$77,$D9,$BD,$DE,$FA,$75,$19,$C3,$9B,$45,$7D,$83 ; $D18B27
    db $FB,$07,$FF,$AC,$00,$66,$00,$25,$AE,$83,$82,$A1,$CF,$00,$F5,$05 ; $D18B37
    db $7F,$7D,$B0,$0B,$62,$7F,$FF,$33,$04,$57,$83,$80,$D7,$53,$7F,$E8 ; $D18B47
    db $0D,$FF,$01,$0E,$6B,$13,$F0,$08,$68,$10,$00,$03,$B0,$0A,$7A,$02 ; $D18B57
    db $55,$00,$32,$81,$38,$01,$05,$03,$DF,$B9,$66,$CF,$87,$A6,$F9,$F8 ; $D18B67
    db $E0,$D1,$C0,$D1,$B2,$A1,$E7,$F0,$94,$A0,$28,$10,$69,$10,$37,$61 ; $D18B77
    db $20,$01,$88,$27,$7D,$7F,$19,$0B,$FF,$A8,$84,$7F,$D2,$3F,$6C,$1E ; $D18B87
    db $33,$0E,$1E,$07,$0E,$07,$02,$52,$01,$00,$FA,$06,$7E,$01,$1E,$80 ; $D18B97
    db $FF,$D5,$D5,$DB,$20,$02,$4A,$2E,$2B,$01,$B5,$91,$54,$5C,$FF,$A2 ; $D18BA7
    db $F5,$0A,$B9,$46,$FB,$04,$F2,$0C,$76,$08,$30,$08,$58,$00,$3E,$06 ; $D18BB7
    db $1C,$04,$29,$05,$95,$5F,$03,$22,$B7,$E9,$3D,$02,$80,$3F,$CB,$F3 ; $D18BC7
    db $96,$CB,$97,$F3,$1D,$C2,$F9,$85,$2E,$F3,$A0,$A0,$FF,$3C,$00,$75 ; $D18BD7
    db $3C,$8F,$57,$07,$19,$79,$B7,$01,$00,$03,$EF,$16,$2A,$3E,$A0,$FF ; $D18BE7
    db $BE,$BC,$00,$9D,$AE,$28,$90,$2F,$6F,$EA,$F6,$B5,$10,$FF,$01,$75 ; $D18BF7
    db $D0,$6D,$7F,$40,$FF,$D1,$31,$04,$05,$03,$FD,$FC,$15,$1B,$A8,$FF ; $D18C07
    db $1C,$F1,$0E,$FF,$9A,$75,$1C,$07,$71,$CB,$C7,$D3,$04,$01,$14,$7D ; $D18C17
    db $41,$04,$21,$01,$17,$F0,$D5,$E5,$F4,$04,$8F,$01,$0F,$00,$FA,$05 ; $D18C27
    db $A6,$01,$28,$FF,$03,$C1,$8E,$04,$B2,$BA,$61,$E8,$02,$FF,$3E,$E1 ; $D18C37
    db $1F,$04,$80,$FF,$C5,$D5,$C1,$BA,$0B,$10,$27,$2E,$C3,$50,$FF,$CF ; $D18C47
    db $0F,$F8,$C1,$FC,$C4,$01,$A2,$FF,$E1,$1F,$E0,$75,$8D,$54,$B0,$70 ; $D18C57
    db $80,$27,$E0,$A4,$9C,$54,$F0,$01,$95,$70,$0F,$8A,$91,$7D,$7C,$03 ; $D18C67
    db $5B,$52,$84,$FE,$01,$37,$38,$16,$17,$01,$00,$F4,$11,$2A,$34,$53 ; $D18C77
    db $01,$17,$1F,$22,$17,$E8,$A4,$7D,$3F,$C0,$57,$52,$EA,$06,$7D,$00 ; $D18C87
    db $FA,$07,$EF,$7D,$00,$06,$AB,$7D,$00,$EB,$07,$7D,$F4,$3A,$2E,$FF ; $D18C97
    db $DB,$39,$97,$23,$47,$56,$63,$D6,$E3,$88,$73,$42,$B1,$0E,$B5,$D1 ; $D18CA7
    db $C3,$EF,$61,$80,$94,$01,$FF,$45,$70,$FB,$8B,$15,$F2,$00,$8B,$4C ; $D18CB7
    db $21,$7E,$23,$7C,$D1,$FE,$C0,$03,$D6,$F8,$22,$7C,$88,$3A,$00,$B0 ; $D18CC7
    db $53,$A3,$80,$9C,$A9,$03,$A2,$03,$3F,$35,$CE,$61,$7E,$32,$E9,$01 ; $D18CD7
    db $01,$3E,$C0,$00,$06,$9F,$01,$1D,$A0,$FF,$96,$57,$03,$D8,$1E,$48 ; $D18CE7
    db $AD,$A1,$D7,$22,$00,$4F,$80,$FF,$A4,$5B,$DA,$27,$75,$C4,$4F,$7F ; $D18CF7
    db $37,$08,$03,$A8,$7F,$D0,$FF,$88,$3E,$F5,$C2,$08,$B8,$7F,$01,$3C ; $D18D07
    db $FE,$00,$A6,$6D,$95,$4C,$52,$E6,$51,$BF,$CE,$B4,$01,$00,$B4,$02 ; $D18D17
    db $01,$1B,$00,$BB,$00,$F9,$26,$00,$C0,$5F,$0C,$C6,$F8,$2A,$74,$03 ; $D18D27
    db $0C,$7D,$70,$02,$5F,$7F,$80,$05,$5F,$65,$06,$AF,$7D,$D1,$56,$FF ; $D18D37
    db $FC,$2C,$80,$7F,$ED,$E8,$62,$46,$76,$76,$1C,$60,$1E,$01,$17,$14 ; $D18D47
    db $1C,$5E,$08,$52,$54,$15,$02,$A1,$FF,$E7,$C1,$01,$EF,$00,$A7,$CF ; $D18D57
    db $03,$58,$E6,$7F,$E7,$FF,$00,$F6,$00,$7D,$01,$C2,$C3,$AF,$6C,$68 ; $D18D67
    db $17,$23,$12,$91,$81,$04,$FB,$08,$FF,$01,$FE,$C3,$3C,$8C,$BF,$DE ; $D18D77
    db $21,$03,$7D,$7F,$02,$18,$20,$7F,$39,$3A,$32,$31,$B2,$7F,$BE,$02 ; $D18D87
    db $2E,$7F,$C7,$3F,$BD,$41,$52,$97,$7F,$6C,$D4,$06,$7F,$6D,$93,$FA ; $D18D97
    db $18,$8B,$7F,$42,$2A,$E7,$9F,$23,$D2,$24,$35,$9E,$4A,$D4,$9B,$6B ; $D18DA7
    db $FD,$0E,$D9,$1C,$8D,$70,$84,$78,$87,$78,$9C,$63,$DF,$20,$F4,$50 ; $D18DB7
    db $DF,$E3,$2E,$00,$AB,$7D,$A9,$70,$60,$24,$14,$3B,$7B,$2A,$19,$E0 ; $D18DC7
    db $E5,$FD,$1A,$2F,$1C,$59,$06,$90,$0F,$F4,$0B,$7B,$84,$FB,$EB,$07 ; $D18DD7
    db $07,$A9,$C5,$0F,$CF,$CF,$BA,$7C,$04,$E5,$7F,$30,$FC,$07,$87,$7F ; $D18DE7
    db $FD,$FD,$2D,$1E,$F2,$04,$7F,$02,$FE,$07,$57,$7F,$BB,$4F,$C8,$0D ; $D18DF7
    db $8F,$E1,$4E,$84,$F2,$BB,$60,$CA,$CE,$D1,$26,$7C,$17,$D9,$27,$81 ; $D18E07
    db $7F,$61,$9F,$51,$8F,$07,$80,$B1,$00,$F8,$19,$E4,$7F,$0D,$02,$B8 ; $D18E17
    db $47,$27,$38,$EA,$36,$2C,$10,$49,$D9,$2A,$E6,$0C,$FC,$23,$7F,$C0 ; $D18E27
    db $00,$CE,$A4,$06,$38,$07,$76,$1E,$8B,$82,$00,$E3,$E3,$1F,$C9,$F4 ; $D18E37
    db $17,$0E,$F1,$45,$CA,$13,$F8,$1F,$FC,$03,$05,$FC,$00,$D3,$D5,$81 ; $D18E47
    db $1F,$86,$F8,$1C,$E0,$E0,$57,$DC,$FE,$78,$4B,$7F,$B4,$B6,$8E,$9F ; $D18E57
    db $3D,$68,$DD,$08,$9D,$43,$9F,$10,$8D,$7F,$A3,$44,$05,$77,$08,$1F ; $D18E67
    db $4E,$BE,$87,$FF,$DC,$5F,$AB,$F9,$62,$7F,$03,$DD,$C1,$86,$C7,$E7 ; $D18E77
    db $A6,$F9,$04,$7F,$0F,$47,$38,$67,$18,$18,$A0,$FF,$8B,$83,$07,$5F ; $D18E87
    db $BF,$4B,$13,$42,$50,$F9,$22,$00,$FF,$A7,$BF,$62,$5F,$7C,$00,$E0 ; $D18E97
    db $EA,$52,$B7,$04,$E7,$5B,$8E,$7B,$46,$A1,$FF,$46,$FC,$7F,$FD,$7F ; $D18EA7
    db $F2,$5F,$7F,$30,$91,$51,$7F,$46,$2B,$C5,$73,$36,$D5,$2D,$21,$9D ; $D18EB7
    db $49,$CE,$36,$F8,$0B,$F3,$3C,$CF,$8C,$70,$87,$78,$95,$7A,$84,$7B ; $D18EC7
    db $CF,$30,$FF,$E9,$03,$55,$F0,$40,$7F,$64,$94,$3B,$BB,$6C,$1B,$C1 ; $D18ED7
    db $3C,$75,$F2,$0F,$F8,$2A,$91,$7F,$3B,$C4,$31,$65,$81,$27,$CF,$CF ; $D18EE7
    db $B4,$78,$4E,$F5,$15,$7F,$1F,$15,$0E,$3C,$53,$52,$7F,$B7,$4C,$E1 ; $D18EF7
    db $F7,$0A,$22,$1C,$49,$D8,$2B,$E7,$12,$F6,$1C,$E4,$9C,$5A,$F8,$B5 ; $D18F07
    db $CE,$5F,$39,$AA,$7F,$0E,$AA,$81,$EF,$B8,$F0,$18,$F7,$2E,$3B,$12 ; $D18F17
    db $F1,$45,$D2,$5B,$C4,$17,$FC,$13,$05,$FC,$07,$9B,$F3,$0C,$07,$86 ; $D18F27
    db $F8,$9C,$E0,$18,$57,$81,$EA,$88,$7F,$C4,$FA,$A9,$80,$7F,$AB,$23 ; $D18F37
    db $1F,$BF,$4B,$73,$02,$FA,$01,$B8,$7F,$DC,$17,$8C,$FA,$E3,$FB,$7F ; $D18F47
    db $18,$00,$EA,$07,$7D,$01,$FA,$06,$FD,$7D,$44,$6D,$7F,$5F,$7D,$10 ; $D18F57
    db $A2,$FF,$2A,$7D,$AA,$7D,$7F,$02,$7D,$7F,$3E,$00,$F4,$39,$5C,$FF ; $D18F67
    db $6A,$2B,$E6,$23,$D0,$24,$2B,$81,$50,$DA,$8E,$7B,$F4,$0F,$DF,$31 ; $D18F77
    db $8C,$82,$FF,$82,$7C,$EF,$D3,$2C,$F3,$0C,$F2,$0F,$F1,$0E,$AB,$E9 ; $D18F87
    db $B0,$E0,$84,$94,$73,$53,$0A,$21,$30,$E5,$4D,$4A,$5B,$98,$19,$06 ; $D18F97
    db $10,$0F,$74,$0B,$B3,$0C,$E3,$1C,$E7,$18,$4F,$B0,$E7,$00,$F4,$06 ; $D18FA7
    db $1F,$FD,$41,$C0,$06,$53,$7D,$3F,$00,$E8,$06,$FD,$3E,$C1,$01,$06 ; $D18FB7
    db $AF,$7D,$FE,$39,$AE,$7F,$75,$04,$E9,$1A,$09,$19,$6A,$E8,$FD,$30 ; $D18FC7
    db $CF,$CF,$51,$F9,$07,$F8,$FA,$01,$1D,$FD,$30,$40,$FF,$83,$4C,$F1 ; $D18FD7
    db $27,$44,$CB,$43,$FD,$FD,$07,$96,$00,$8F,$F0,$87,$D0,$01,$FD,$02 ; $D18FE7
    db $7D,$00,$06,$5F,$7D,$00,$07,$5D,$7D,$00,$F5,$06,$7D,$7D,$00,$07 ; $D18FF7
    db $7E,$7D,$7A,$8F,$FF,$06,$AC,$7D,$4F,$CD,$D5,$04,$7D,$00,$F1,$19 ; $D19007
    db $67,$F4,$42,$45,$FF,$4F,$7D,$34,$CF,$02,$A1,$FF,$40,$4F,$7B,$02 ; $D19017
    db $AC,$7F,$55,$7D,$C0,$EF,$09,$7F,$38,$9F,$07,$58,$AA,$7F,$EA,$E3 ; $D19027
    db $E0,$E5,$AC,$F9,$EC,$2C,$39,$30,$3B,$3F,$30,$33,$B9,$AB,$B0,$1B ; $D19037
    db $D6,$E5,$F7,$64,$DF,$1C,$01,$5F,$03,$7D,$01,$57,$6E,$7F,$78,$FE ; $D19047
    db $00,$F4,$01,$78,$02,$C7,$C7,$AF,$68,$69,$17,$27,$14,$92,$82,$04 ; $D19057
    db $FB,$09,$FE,$02,$FD,$C6,$39,$BD,$DD,$22,$C7,$C7,$7B,$04,$D0,$18 ; $D19067
    db $FF,$34,$04,$28,$25,$32,$A4,$BC,$B9,$7F,$8A,$BA,$7F,$DF,$AF,$7F ; $D19077
    db $43,$24,$A3,$FF,$EA,$26,$7F,$4C,$FA,$06,$9F,$7F,$4D,$B3,$18,$55 ; $D19087
    db $7F,$E2,$C3,$8B,$56,$03,$20,$04,$93,$81,$20,$82,$02,$13,$74,$0B ; $D19097
    db $FF,$10,$8C,$70,$CF,$04,$F8,$07,$F8,$82,$7C,$83,$7C,$13,$EC,$10 ; $D190A7
    db $EF,$EF,$00,$AB,$E8,$B2,$E0,$80,$90,$7A,$5A,$05,$24,$21,$E0,$1D ; $D190B7
    db $E0,$FC,$02,$18,$07,$10,$0F,$70,$0F,$BA,$05,$E5,$1A,$E1,$1E,$01 ; $D190C7
    db $FE,$FF,$00,$BA,$78,$D7,$06,$7F,$7D,$3C,$06,$4F,$7F,$3D,$3E,$06 ; $D190D7
    db $A9,$7F,$3F,$C0,$F5,$06,$7F,$2E,$DB,$88,$3A,$AD,$0F,$41,$8E,$84 ; $D190E7
    db $B2,$BB,$60,$4A,$4E,$D1,$A6,$DC,$57,$99,$67,$B5,$E1,$61,$9F,$D1 ; $D190F7
    db $0F,$87,$00,$B1,$00,$78,$00,$D8,$20,$F5,$06,$7F,$7D,$18,$07,$4D ; $D19107
    db $7F,$0C,$03,$66,$72,$26,$61,$A9,$98,$43,$C0,$15,$F5,$0A,$FF,$05 ; $D19117
    db $FC,$D4,$CC,$00,$00,$E0,$1F,$78,$07,$CA,$77,$0A,$AB,$5F,$3C,$85 ; $D19127
    db $1F,$74,$91,$C3,$CA,$04,$E1,$01,$54,$57,$90,$FF,$D7,$10,$75,$79 ; $D19137
    db $06,$15,$19,$E6,$0F,$F0,$77,$45,$A8,$3C,$1B,$87,$FA,$78,$AE,$7F ; $D19147
    db $DC,$3C,$DE,$4F,$1D,$20,$4D,$C8,$E5,$93,$E7,$44,$E1,$1F,$6B,$60 ; $D19157
    db $81,$BF,$93,$D2,$01,$AB,$7F,$74,$9F,$07,$62,$50,$7F,$9D,$C1,$A6 ; $D19167
    db $A7,$3E,$DF,$7E,$04,$A6,$7F,$67,$18,$8D,$FA,$18,$8B,$7F,$7B,$FB ; $D19177
    db $6D,$94,$1D,$CF,$9B,$41,$F9,$07,$FF,$02,$FF,$A2,$3F,$34,$CF,$04 ; $D19187
    db $00,$F2,$00,$64,$00,$06,$AB,$1B,$C7,$03,$C6,$55,$7F,$C6,$3A,$3E ; $D19197
    db $FF,$4C,$BF,$7F,$3A,$0B,$FF,$06,$9F,$02,$51,$55,$AE,$BC,$52,$C3 ; $D191A7
    db $10,$F0,$FF,$3F,$72,$79,$8C,$70,$05,$F8,$56,$A8,$BF,$40,$D3,$2C ; $D191B7
    db $EF,$1D,$BF,$87,$0B,$FF,$B0,$9F,$A0,$45,$55,$3A,$1A,$21,$E0,$04 ; $D191C7
    db $02,$FE,$FE,$47,$8F,$18,$07,$50,$0F,$B5,$0A,$FA,$05,$E1,$1E,$FF ; $D191D7
    db $48,$E9,$F0,$00,$C2,$1F,$C2,$BF,$7F,$04,$2F,$01,$3D,$07,$B4,$FF ; $D191E7
    db $BD,$BD,$3E,$FD,$FE,$04,$5F,$01,$42,$07,$6F,$FF,$C1,$06,$FF,$FC ; $D191F7
    db $17,$F1,$06,$FF,$FF,$18,$7F,$2E,$0C,$03,$11,$8D,$F5,$A7,$D3,$B0 ; $D19207
    db $40,$23,$63,$A9,$98,$33,$F0,$FC,$81,$11,$3F,$E0,$5F,$E3,$1C,$78 ; $D19217
    db $4A,$07,$17,$D6,$68,$1E,$77,$D2,$E5,$05,$03,$F4,$F1,$CA,$04,$E6 ; $D19227
    db $07,$FC,$03,$17,$F0,$78,$8C,$53,$1F,$F9,$11,$06,$0F,$F0,$0F,$D6 ; $D19237
    db $0F,$39,$B7,$FF,$EF,$5C,$FF,$8C,$59,$38,$3D,$01,$2F,$04,$28,$39 ; $D19247
    db $BC,$A5,$A8,$5D,$FF,$8F,$D7,$43,$75,$CF,$DF,$FB,$4F,$1B,$7F,$FF ; $D19257
    db $38,$F3,$FF,$EE,$38,$FF,$3A,$07,$34,$24,$32,$A5,$BD,$F9,$02,$FF ; $D19267
    db $07,$B9,$42,$F9,$52,$FF,$F0,$69,$FF,$C8,$7C,$C7,$06,$3E,$FF,$3F ; $D19277
    db $07,$0F,$FF,$0D,$F5,$06,$87,$FF,$FA,$C0,$47,$FF,$9F,$E0,$B0,$16 ; $D19287
    db $40,$27,$60,$82,$FD,$05,$FC,$38,$31,$8E,$CA,$01,$03,$D2,$03,$00 ; $D19297
    db $F8,$07,$A1,$FD,$11,$68,$FD,$21,$D0,$1F,$1F,$1D,$01,$94,$3F,$FD ; $D192A7
    db $E0,$79,$C8,$FF,$BD,$FF,$C2,$38,$6D,$98,$CD,$23,$CF,$08,$C5,$3F ; $D192B7
    db $D3,$40,$01,$2E,$FF,$5E,$9D,$C7,$FF,$EC,$00,$FE,$F9,$63,$FF,$F7 ; $D192C7
    db $2E,$FF,$01,$F7,$F3,$D9,$99,$4F,$7B,$81,$57,$FF,$30,$A7,$3F,$03 ; $D192D7
    db $0C,$00,$E6,$3E,$00,$84,$0F,$FF,$FF,$AC,$E7,$FF,$D4,$04,$7F,$35 ; $D192E7
    db $B8,$3E,$AB,$A4,$08,$AF,$7F,$00,$81,$B3,$7F,$FC,$0E,$FF,$00,$34 ; $D192F7
    db $32,$25,$3D,$A0,$BF,$B0,$BF,$22,$E0,$FF,$A6,$7D,$AB,$7F,$B7,$74 ; $D19307
    db $C2,$3F,$1D,$40,$3F,$CF,$FD,$7A,$A9,$7F,$B5,$71,$F6,$06,$1F,$7F ; $D19317
    db $F1,$0E,$06,$67,$7F,$D7,$06,$7D,$FC,$0A,$FF,$FA,$38,$8B,$7F,$AA ; $D19327
    db $59,$25,$8D,$62,$A9,$98,$32,$F1,$02,$81,$35,$8A,$A8,$97,$67,$1F ; $D19337
    db $F8,$07,$E1,$55,$7D,$7F,$4C,$01,$6B,$51,$00,$97,$34,$D1,$CA,$04 ; $D19347
    db $26,$C7,$A0,$61,$40,$D5,$0A,$F4,$F3,$DE,$CA,$25,$A9,$7D,$FF,$BE ; $D19357
    db $01,$7C,$CF,$7F,$34,$AF,$7F,$D8,$78,$7F,$F7,$0E,$B3,$59,$59,$8B ; $D19367
    db $F3,$FD,$00,$01,$87,$FF,$82,$FF,$74,$4F,$CC,$2B,$00,$A6,$CB,$FD ; $D19377
    db $59,$5D,$F5,$02,$7F,$FF,$4E,$3C,$FF,$00                         ; $D19387
; ---- end of region ----

    db $FE,$25,$00,$01,$01,$01,$01,$01,$01,$02,$01,$01,$02,$01,$01,$02 ; $D19391
    db $01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$01,$01 ; $D193A1
    db $01,$FE,$30,$00,$02,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01 ; $D193B1
    db $0A,$01,$01,$0A,$01,$01,$0A,$01,$01,$0A,$01,$01,$0A,$01,$01,$0A ; $D193C1
    db $01,$01,$01,$01,$01,$FE,$3A,$00,$01,$01,$01,$01,$02,$01,$01,$02 ; $D193D1
    db $01,$03,$02,$01,$03,$02,$01,$03,$02,$01,$01,$02,$01,$01,$02,$01 ; $D193E1
    db $01,$02,$01,$09,$02,$01,$09,$02,$01,$09,$02,$01,$09,$02,$01,$09 ; $D193F1
    db $02,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$09,$03,$01,$FE,$51 ; $D19401
    db $00,$04,$02,$02,$04,$02,$02,$04,$02,$02,$05,$02,$01,$05,$02,$01 ; $D19411
    db $05,$01,$01,$05,$01,$01,$05,$01,$01,$04,$01,$01,$04,$01,$01,$01 ; $D19421
    db $01,$01,$FE,$5E,$00,$01,$01,$01,$03,$01,$02,$03,$01,$02,$03,$01 ; $D19431
    db $02,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$01,$01,$01 ; $D19441
    db $FE,$74,$00,$04,$01,$01,$04,$01,$01,$04,$01,$01,$04,$01,$01,$05 ; $D19451
    db $01,$01,$05,$01,$01,$05,$01,$01,$04,$01,$01,$04,$01,$01,$01,$01 ; $D19461
    db $01,$FE,$80,$00,$03,$01,$01,$03,$01,$01,$01,$01,$01,$FE,$88,$00 ; $D19471
    db $01,$01,$01,$04,$02,$02,$04,$02,$02,$05,$02,$02,$05,$02,$02,$05 ; $D19481
    db $03,$01,$05,$03,$01,$04,$03,$01,$04,$03,$01,$01,$02,$01,$FE,$92 ; $D19491
    db $00,$01,$02,$01,$01,$02,$01,$01,$02,$01,$02,$01,$01,$02,$01,$01 ; $D194A1
    db $02,$01,$01,$02,$01,$01,$02,$01,$01,$01,$01,$02,$01,$01,$02,$01 ; $D194B1
    db $01,$02,$01,$01,$01,$FE,$9F,$00,$01,$01,$01,$03,$01,$01,$03,$01 ; $D194C1
    db $01,$03,$01,$01,$03,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01 ; $D194D1
    db $02,$01,$01,$01,$01,$01,$FE,$B0,$00,$01,$01,$01,$07,$01,$01,$07 ; $D194E1
    db $01,$01,$07,$01,$01,$07,$01,$01,$03,$01,$02,$03,$01,$02,$03,$01 ; $D194F1
    db $02,$03,$01,$02,$03,$01,$01,$FE,$BF,$00,$0A,$01,$01,$0A,$01,$01 ; $D19501
    db $0A,$01,$01,$0A,$01,$01,$09,$01,$01,$09,$01,$01,$09,$01,$01,$09 ; $D19511
    db $01,$01,$09,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01 ; $D19521
    db $01,$03,$01,$01,$01,$01,$01,$FE,$07,$01,$08,$01,$01,$08,$01,$01 ; $D19531
    db $08,$01,$01,$08,$01,$01,$09,$01,$01,$09,$01,$01,$09,$01,$01,$09 ; $D19541
    db $01,$01,$09,$01,$02,$FE,$11,$01,$01,$02,$01,$01,$02,$01,$01,$02 ; $D19551
    db $01,$02,$03,$01,$02,$03,$01,$02,$03,$01,$02,$03,$01,$02,$03,$01 ; $D19561
    db $04,$03,$01,$04,$03,$01,$04,$03,$01,$04,$03,$01,$01,$02,$01,$01 ; $D19571
    db $02,$01,$01,$01,$01,$FE,$25,$01,$02,$01,$01,$02,$01,$01,$02,$01 ; $D19581
    db $01,$02,$01,$01,$02,$01,$01,$03,$01,$01,$FE,$2D,$01,$01,$01,$01 ; $D19591
    db $01,$01,$01,$01,$01,$01,$09,$01,$01,$09,$01,$01,$09,$01,$01,$01 ; $D195A1
    db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$0A,$01,$01,$0A,$01 ; $D195B1
    db $01,$0A,$01,$01,$0A,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $D195C1
    db $01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$01,$FE ; $D195D1
    db $68,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$04,$02,$01,$04,$02 ; $D195E1
    db $01,$04,$02,$01,$04,$02,$01,$04,$03,$02,$04,$03,$02,$FE,$74,$01 ; $D195F1
    db $01,$03,$01,$01,$03,$01,$01,$03,$01,$06,$03,$01,$06,$03,$01,$06 ; $D19601
    db $03,$01,$06,$03,$01,$08,$03,$01,$08,$03,$01,$FE,$7E,$01,$07,$03 ; $D19611
    db $01,$07,$03,$01,$FE,$86,$01,$01,$03,$02,$01,$03,$02,$01,$03,$02 ; $D19621
    db $04,$03,$01,$04,$03,$01,$04,$03,$01,$04,$03,$01,$04,$03,$01,$03 ; $D19631
    db $03,$01,$03,$03,$01,$03,$03,$01,$03,$03,$01,$03,$03,$01,$07,$03 ; $D19641
    db $01,$07,$03,$01,$07,$03,$01,$07,$03,$01,$07,$03,$01,$01,$03,$01 ; $D19651
    db $01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$07,$03,$01,$07 ; $D19661
    db $03,$01,$07,$03,$01,$07,$03,$01,$07,$03,$01,$07,$03,$01,$01,$03 ; $D19671
    db $01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$04,$03,$02 ; $D19681
    db $04,$03,$02,$04,$03,$02,$04,$03,$02,$04,$03,$02,$04,$03,$01,$04 ; $D19691
    db $03,$01,$04,$03,$01,$04,$03,$01,$04,$03,$01,$04,$03,$01,$01,$02 ; $D196A1
    db $01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$01,$01 ; $D196B1
    db $FF,$6F,$00,$6E,$00,$76,$00,$83,$00,$6E,$00,$6E,$00,$6E,$00,$91 ; $D196C1
    db $00,$6E,$00,$A0,$00,$6E,$00,$6E,$00,$6E,$00,$AB,$00,$6E,$00,$BE ; $D196D1
    db $00,$6E,$00,$6E,$00,$6E,$00,$CD,$00,$6E,$00,$DB,$00,$6E,$00,$6E ; $D196E1
    db $00,$6E,$00,$E9,$00,$6E,$00,$F9,$00,$08,$01,$14,$01,$6E,$00,$6E ; $D196F1
    db $00,$6E,$00,$24,$01,$6E,$00,$35,$01,$6E,$00,$6E,$00,$6E,$00,$44 ; $D19701
    db $01,$6E,$00,$50,$01,$6E,$00,$6E,$00,$6E,$00,$54,$01,$6E,$00,$67 ; $D19711
    db $01,$6E,$00,$6E,$00,$6E,$00,$6E,$00,$6E,$00,$75,$01,$FF,$FF,$00 ; $D19721
    db $64,$65,$73,$69,$67,$6E,$00,$73,$69,$6D,$6F,$6E,$20,$6B,$6E,$69 ; $D19731
    db $67,$68,$74,$00,$65,$72,$69,$63,$20,$6D,$61,$74,$74,$68,$65,$77 ; $D19741
    db $73,$00,$67,$72,$61,$70,$68,$69,$63,$20,$64,$65,$73,$69,$67,$6E ; $D19751
    db $00,$64,$61,$6E,$20,$6D,$61,$6C,$6F,$6E,$65,$00,$67,$72,$61,$70 ; $D19761
    db $68,$69,$63,$20,$63,$6F,$6E,$76,$65,$72,$73,$69,$6F,$6E,$00,$68 ; $D19771
    db $65,$72,$6D,$61,$6E,$20,$73,$65,$72,$61,$6E,$6E,$6F,$00,$6F,$72 ; $D19781
    db $69,$67,$69,$6E,$61,$6C,$20,$63,$6F,$64,$65,$00,$73,$74,$65,$76 ; $D19791
    db $65,$20,$63,$61,$72,$67,$69,$6C,$6C,$00,$63,$6F,$64,$65,$20,$63 ; $D197A1
    db $6F,$6E,$76,$65,$72,$73,$69,$6F,$6E,$00,$72,$6F,$62,$20,$74,$72 ; $D197B1
    db $65,$76,$65,$6C,$6C,$79,$61,$6E,$00,$67,$6F,$72,$64,$6F,$6E,$20 ; $D197C1
    db $66,$6F,$6E,$67,$00,$6D,$69,$6B,$65,$20,$6D,$6F,$6E,$74,$67,$6F ; $D197D1
    db $6D,$65,$72,$79,$00,$67,$61,$6D,$65,$20,$6D,$75,$73,$69,$63,$20 ; $D197E1
    db $26,$20,$73,$66,$78,$00,$72,$69,$63,$68,$61,$72,$64,$20,$6A,$6F ; $D197F1
    db $73,$65,$70,$68,$00,$74,$69,$74,$6C,$65,$20,$6D,$75,$73,$69,$63 ; $D19801
    db $00,$6A,$6F,$69,$00,$70,$72,$6F,$6A,$65,$63,$74,$20,$6D,$61,$6E ; $D19811
    db $61,$67,$65,$6D,$65,$6E,$74,$00,$67,$72,$61,$65,$6D,$65,$20,$62 ; $D19821
    db $6F,$78,$61,$6C,$6C,$00,$74,$68,$65,$20,$63,$68,$61,$6F,$73,$20 ; $D19831
    db $65,$6E,$67,$69,$6E,$65,$00,$43,$20,$74,$68,$65,$20,$62,$69,$74 ; $D19841
    db $6D,$61,$70,$20,$62,$72,$6F,$74,$68,$65,$72,$73,$20,$31,$39,$39 ; $D19851
    db $33,$00,$A0,$FF,$FE,$FD,$FC,$FB,$FA,$F9,$F8,$F7,$F6,$F5,$F4,$F3 ; $D19861
    db $F2,$F1,$F0,$EF,$EE,$ED,$EC,$EB,$EA,$E9,$E8,$E7,$E6,$E5,$E4,$E3 ; $D19871
    db $E2,$E1,$E0,$50,$00,$50,$00,$A0,$E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7 ; $D19881
    db $E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF,$F0,$F1,$F2,$F3,$F4,$F5,$F6,$F7 ; $D19891
    db $F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19901
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19911
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19921
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19931
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19941
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19951
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19961
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19971
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19981
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19991
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19AA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19AB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19AC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19AD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19AE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19AF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19ED1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A001
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A011
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A021
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A031
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A041
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A051
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A061
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A071
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A081
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A091
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A101
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A111
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A121
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A131
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A141
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A151
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A161
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A171
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A181
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A191
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A201
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A211
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A221
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A231
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A241
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A251
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A261
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A271
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A281
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A291
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A301
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A311
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A321
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A331
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A341
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A351
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A361
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A371
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A381
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A391
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A401
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A411
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A421
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A431
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A441
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A451
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A461
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A471
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A481
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A491
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A501
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A511
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A521
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A531
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A541
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A551
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A561
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A571
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A581
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A591
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A601
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A611
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A621
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A631
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A641
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A651
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A661
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A671
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A681
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A691
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A701
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A711
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A721
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A731
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A741
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A751
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A761
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A771
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A781
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A791
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A801
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A811
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A821
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A831
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A841
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A851
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A861
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A871
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A881
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A891
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A901
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A911
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A921
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A931
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A941
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A951
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A961
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A971
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A981
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A991
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AAA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AAB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AAC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AAD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AAE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AAF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AED1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B001
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B011
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B021
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B031
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B041
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B051
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B061
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B071
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B081
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B091
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B101
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B111
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B121
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B131
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B141
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B151
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B161
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B171
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B181
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B191
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B201
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B211
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B221
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B231
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B241
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B251
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B261
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B271
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B281
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B291
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B301
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B311
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B321
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B331
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B341
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B351
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B361
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B371
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B381
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B391
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B401
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B411
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B421
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B431
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B441
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B451
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B461
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B471
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B481
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B491
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B501
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B511
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B521
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B531
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B541
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B551
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B561
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B571
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B581
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B591
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B601
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B611
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B621
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B631
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B641
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B651
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B661
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B671
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B681
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B691
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B701
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B711
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B721
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B731
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B741
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B751
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B761
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B771
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B781
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B791
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B801
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B811
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B821
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B831
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B841
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B851
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B861
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B871
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B881
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B891
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B901
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B911
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B921
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B931
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B941
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B951
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B961
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B971
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B981
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B991
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BAA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BAB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BAC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BAD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BAE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BAF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BED1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C001
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C011
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C021
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C031
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C041
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C051
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C061
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C071
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C081
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C091
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C101
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C111
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C121
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C131
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C141
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C151
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C161
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C171
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C181
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C191
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C201
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C211
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C221
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C231
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C241
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C251
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C261
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C271
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C281
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C291
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C301
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C311
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C321
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C331
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C341
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C351
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C361
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C371
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C381
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C391
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C401
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C411
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C421
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C431
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C441
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C451
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C461
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C471
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C481
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C491
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C501
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C511
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C521
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C531
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C541
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C551
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C561
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C571
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C581
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C591
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C601
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C611
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C621
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C631
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C641
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C651
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C661
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C671
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C681
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C691
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C701
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C711
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C721
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C731
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C741
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C751
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C761
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C771
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C781
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C791
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C801
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C811
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C821
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C831
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C841
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C851
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C861
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C871
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C881
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C891
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C901
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C911
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C921
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C931
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C941
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C951
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C961
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C971
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C981
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C991
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CAA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CAB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CAC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CAD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CAE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CAF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CED1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D001
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D011
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D021
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D031
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D041
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D051
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D061
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D071
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D081
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D091
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D101
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D111
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D121
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D131
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D141
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D151
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D161
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D171
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D181
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D191
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D201
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D211
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D221
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D231
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D241
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D251
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D261
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D271
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D281
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D291
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D301
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D311
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D321
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D331
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D341
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D351
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D361
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D371
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D381
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D391
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D401
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D411
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D421
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D431
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D441
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D451
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D461
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D471
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D481
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D491
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D501
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D511
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D521
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D531
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D541
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D551
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D561
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D571
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D581
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D591
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D601
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D611
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D621
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D631
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D641
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D651
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D661
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D671
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D681
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D691
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D701
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D711
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D721
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D731
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D741
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D751
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D761
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D771
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D781
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D791
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D801
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D811
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D821
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D831
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D841
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D851
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D861
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D871
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D881
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D891
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D901
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D911
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D921
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D931
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D941
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D951
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D961
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D971
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D981
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D991
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DAA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DAB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DAC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DAD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DAE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DAF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DED1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E001
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E011
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E021
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E031
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E041
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E051
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E061
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E071
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E081
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E091
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E101
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E111
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E121
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E131
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E141
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E151
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E161
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E171
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E181
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E191
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E201
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E211
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E221
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E231
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E241
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E251
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E261
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E271
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E281
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E291
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E301
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E311
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E321
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E331
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E341
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E351
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E361
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E371
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E381
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E391
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E401
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E411
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E421
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E431
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E441
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E451
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E461
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E471
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E481
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E491
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E501
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E511
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E521
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E531
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E541
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E551
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E561
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E571
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E581
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E591
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E601
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E611
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E621
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E631
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E641
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E651
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E661
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E671
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E681
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E691
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E701
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E711
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E721
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E731
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E741
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E751
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E761
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E771
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E781
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E791
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E801
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E811
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E821
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E831
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E841
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E851
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E861
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E871
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E881
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E891
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E901
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E911
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E921
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E931
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E941
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E951
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E961
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E971
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E981
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E991
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EAA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EAB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EAC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EAD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EAE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EAF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EED1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F001
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F011
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F021
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F031
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F041
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F051
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F061
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F071
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F081
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F091
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F101
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F111
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F121
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F131
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F141
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F151
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F161
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F171
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F181
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F191
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F201
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F211
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F221
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F231
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F241
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F251
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F261
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F271
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F281
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F291
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F301
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F311
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F321
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F331
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F341
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F351
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F361
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F371
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F381
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F391
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F401
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F411
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F421
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F431
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F441
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F451
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F461
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F471
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F481
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F491
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F501
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F511
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F521
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F531
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F541
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F551
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F561
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F571
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F581
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F591
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F601
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F611
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F621
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F631
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F641
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F651
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F661
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F671
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F681
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F691
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F701
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F711
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F721
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F731
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F741
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F751
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F761
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F771
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F781
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F791
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F801
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F811
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F821
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F831
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F841
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F851
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F861
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F871
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F881
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F891
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F901
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F911
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F921
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F931
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F941
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F951
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F961
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F971
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F981
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F991
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9A1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9B1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9C1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9D1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9E1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9F1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FAA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FAB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FAC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FAD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FAE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FAF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FED1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEF1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF01
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF11
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF21
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF31
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF41
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF51
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF61
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF71
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF81
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF91
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFA1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFB1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFC1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFD1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFE1
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF     ; $D1FFF1
