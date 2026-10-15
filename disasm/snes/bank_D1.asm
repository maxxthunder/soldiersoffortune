; bank $D1  (file offset $110000)
org $D10000

L_D10000:
    STZ $06ED               ; $D10000  9C ED 06     MX
    JSR L_D10A90            ; $D10003  20 90 0A     MX
    JSR L_D101BB            ; $D10006  20 BB 01     MX
    JSR L_D10240            ; $D10009  20 40 02     MX
    BMI L_D10016            ; $D1000C  30 08        MX
    JSR L_D10080            ; $D1000E  20 80 00     MX
    JSR L_D102AE            ; $D10011  20 AE 02     MX
    BPL L_D1001C            ; $D10014  10 06        MX
L_D10016:
    LDA #$0001              ; $D10016  A9 01 00     MX
    STA $06ED               ; $D10019  8D ED 06     MX
L_D1001C:
    SEP #$20                ; $D1001C  E2 20        MX
    LDA #$00                ; $D1001E  A9 00        mX
    STA $00420C             ; $D10020  8F 0C 42 00  mX
    STA $004200             ; $D10024  8F 00 42 00  mX
    STA $0B                 ; $D10028  85 0B        mX
    REP #$20                ; $D1002A  C2 20        mX
    RTL                     ; $D1002C  6B           MX
L_D1002D:
    TSX                     ; $D1002D  BA           MX
    STX $B2                 ; $D1002E  86 B2        MX
    PHA                     ; $D10030  48           MX
    LDA $0E                 ; $D10031  A5 0E        MX
    AND #$00FF              ; $D10033  29 FF 00     MX
    CMP #$0018              ; $D10036  C9 18 00     MX
    BEQ L_D10043            ; $D10039  F0 08        MX
    LDA $01,S               ; $D1003B  A3 01        MX
    BEQ L_D10043            ; $D1003D  F0 04        MX
    JSL L_C20100            ; $D1003F  22 00 01 C2  MX
L_D10043:
    JSR L_D10A90            ; $D10043  20 90 0A     MX
    PLA                     ; $D10046  68           MX
    JSR L_D1055B            ; $D10047  20 5B 05     MX
    JSR L_D100DB            ; $D1004A  20 DB 00     MX
    JMP L_D10057            ; $D1004D  4C 57 00     MX
    db $A9,$10,$00,$22,$45,$04,$C2                                     ; $D10050
L_D10057:
    JSR L_D1076E            ; $D10057  20 6E 07     MX
    PHX                     ; $D1005A  DA           MX
    JSR L_D10815            ; $D1005B  20 15 08     MX
    TXY                     ; $D1005E  9B           MX
    PLX                     ; $D1005F  FA           MX
    LDA $D4                 ; $D10060  A5 D4        MX
    BNE L_D10057            ; $D10062  D0 F3        MX
    LDA #$0010              ; $D10064  A9 10 00     MX
    JSL L_C20466            ; $D10067  22 66 04 C2  MX
    JSL L_C204AB            ; $D1006B  22 AB 04 C2  MX
    SEP #$20                ; $D1006F  E2 20        MX
    LDA #$00                ; $D10071  A9 00        mX
    STA $00420C             ; $D10073  8F 0C 42 00  mX
    STA $004200             ; $D10077  8F 00 42 00  mX
    STA $0B                 ; $D1007B  85 0B        mX
    REP #$20                ; $D1007D  C2 20        mX
    RTL                     ; $D1007F  6B           MX
L_D10080:
    PEA $0A91               ; $D10080  F4 91 0A     MX
    PEA $00D0               ; $D10083  F4 D0 00     MX
    PEA $0000               ; $D10086  F4 00 00     MX
    PEA $007F               ; $D10089  F4 7F 00     MX
    JSL L_C30000            ; $D1008C  22 00 00 C3  MX
    PLA                     ; $D10090  68           MX
    PLA                     ; $D10091  68           MX
    PLA                     ; $D10092  68           MX
    PLA                     ; $D10093  68           MX
    LDA #$F07F              ; $D10094  A9 7F F0     MX
    LDX #$0000              ; $D10097  A2 00 00     MX
    LDY #$0020              ; $D1009A  A0 20 00     MX
    JSL L_C302A8            ; $D1009D  22 A8 02 C3  MX
    LDX #$0000              ; $D100A1  A2 00 00     MX
    LDA $7F0020             ; $D100A4  AF 20 00 7F  MX
    TAY                     ; $D100A8  A8           MX
L_D100A9:
    LDA $7F0022,X           ; $D100A9  BF 22 00 7F  MX
    ORA #$2E00              ; $D100AD  09 00 2E     MX
    STA $7FC6C0,X           ; $D100B0  9F C0 C6 7F  MX
    INX                     ; $D100B4  E8           MX
    INX                     ; $D100B5  E8           MX
    DEY                     ; $D100B6  88           MX
    BNE L_D100A9            ; $D100B7  D0 F0        MX
    LDA #$4000              ; $D100B9  A9 00 40     MX
    STA $002116             ; $D100BC  8F 16 21 00  MX
    LDA $7F0020             ; $D100C0  AF 20 00 7F  MX
    ASL                     ; $D100C4  0A           MX
    CLC                     ; $D100C5  18           MX
    ADC #$0022              ; $D100C6  69 22 00     MX
    TAX                     ; $D100C9  AA           MX
    LDY #$007F              ; $D100CA  A0 7F 00     MX
    LDA $7F0020             ; $D100CD  AF 20 00 7F  MX
    ASL                     ; $D100D1  0A           MX
    ASL                     ; $D100D2  0A           MX
    ASL                     ; $D100D3  0A           MX
    ASL                     ; $D100D4  0A           MX
    ASL                     ; $D100D5  0A           MX
    JSL L_C308A0            ; $D100D6  22 A0 08 C3  MX
    RTS                     ; $D100DA  60           MX
L_D100DB:
    PEA $117B               ; $D100DB  F4 7B 11     MX
    PEA $00D1               ; $D100DE  F4 D1 00     MX
    PEA $0000               ; $D100E1  F4 00 00     MX
    PEA $007F               ; $D100E4  F4 7F 00     MX
    JSL L_C30000            ; $D100E7  22 00 00 C3  MX
    PLA                     ; $D100EB  68           MX
    PLA                     ; $D100EC  68           MX
    PLA                     ; $D100ED  68           MX
    PLA                     ; $D100EE  68           MX
    LDA $66                 ; $D100EF  A5 66        MX
L_D100F1:
    CMP $66                 ; $D100F1  C5 66        MX
    BEQ L_D100F1            ; $D100F3  F0 FC        MX
    LDA #$C07F              ; $D100F5  A9 7F C0     MX
    LDX #$0000              ; $D100F8  A2 00 00     MX
    LDY #$0020              ; $D100FB  A0 20 00     MX
    JSL L_C302A8            ; $D100FE  22 A8 02 C3  MX
    LDA #$D0D1              ; $D10102  A9 D1 D0     MX
    LDX #$1EB6              ; $D10105  A2 B6 1E     MX
    LDY #$0020              ; $D10108  A0 20 00     MX
    JSL L_C302A8            ; $D1010B  22 A8 02 C3  MX
    PHB                     ; $D1010F  8B           MX
    PEA $007F               ; $D10110  F4 7F 00     MX
    PLB                     ; $D10113  AB           MX
    LDX #$0000              ; $D10114  A2 00 00     MX
    TXY                     ; $D10117  9B           MX
L_D10118:
    TXA                     ; $D10118  8A           MX
    BIT #$000F              ; $D10119  89 0F 00     MX
    BNE L_D10124            ; $D1011C  D0 06        MX
    LDA $66                 ; $D1011E  A5 66        MX
L_D10120:
    CMP $66                 ; $D10120  C5 66        MX
    BEQ L_D10120            ; $D10122  F0 FC        MX
L_D10124:
    LDA $0022,X             ; $D10124  BD 22 00     MX
    AND #$00FF              ; $D10127  29 FF 00     MX
    JSR L_D10164            ; $D1012A  20 64 01     MX
    LDA $46                 ; $D1012D  A5 46        MX
    ORA #$2800              ; $D1012F  09 00 28     MX
    STA $BE20,Y             ; $D10132  99 20 BE     MX
    INX                     ; $D10135  E8           MX
    INX                     ; $D10136  E8           MX
    INY                     ; $D10137  C8           MX
    INY                     ; $D10138  C8           MX
    INY                     ; $D10139  C8           MX
    INY                     ; $D1013A  C8           MX
    CPY #$00AC              ; $D1013B  C0 AC 00     MX
    BCC L_D10118            ; $D1013E  90 D8        MX
    LDA #$1EDC              ; $D10140  A9 DC 1E     MX
    STA $BE20,Y             ; $D10143  99 20 BE     MX
    LDA #$1F5C              ; $D10146  A9 5C 1F     MX
    STA $BE24,Y             ; $D10149  99 24 BE     MX
    LDA #$2AD1              ; $D1014C  A9 D1 2A     MX
    STA $BE22,Y             ; $D1014F  99 22 BE     MX
    STA $BE26,Y             ; $D10152  99 26 BE     MX
    LDA #$002C              ; $D10155  A9 2C 00     MX
    LDX #$2009              ; $D10158  A2 09 20     MX
    LDY #$F4E0              ; $D1015B  A0 E0 F4     MX
    MVN $D1,$7E             ; $D1015E  54 7E D1     MX
    PLB                     ; $D10161  AB           MX
    PLB                     ; $D10162  AB           MX
    RTS                     ; $D10163  60           MX
L_D10164:
    PHA                     ; $D10164  48           MX
    PHX                     ; $D10165  DA           MX
    PHY                     ; $D10166  5A           MX
    ASL                     ; $D10167  0A           MX
    ASL                     ; $D10168  0A           MX
    ASL                     ; $D10169  0A           MX
    ASL                     ; $D1016A  0A           MX
    ASL                     ; $D1016B  0A           MX
    ASL                     ; $D1016C  0A           MX
    ASL                     ; $D1016D  0A           MX
    CLC                     ; $D1016E  18           MX
    ADC #$0078              ; $D1016F  69 78 00     MX
    TAX                     ; $D10172  AA           MX
    LDY #$007F              ; $D10173  A0 7F 00     MX
    LDA $05,S               ; $D10176  A3 05        MX
    INC                     ; $D10178  1A           MX
    INC                     ; $D10179  1A           MX
    ASL                     ; $D1017A  0A           MX
    PHA                     ; $D1017B  48           MX
    AND #$000E              ; $D1017C  29 0E 00     MX
    STA $46                 ; $D1017F  85 46        MX
    PLA                     ; $D10181  68           MX
    AND #$00F0              ; $D10182  29 F0 00     MX
    ASL                     ; $D10185  0A           MX
    ADC $46                 ; $D10186  65 46        MX
    ORA #$0100              ; $D10188  09 00 01     MX
    STA $46                 ; $D1018B  85 46        MX
    ASL                     ; $D1018D  0A           MX
    ASL                     ; $D1018E  0A           MX
    ASL                     ; $D1018F  0A           MX
    ASL                     ; $D10190  0A           MX
    CLC                     ; $D10191  18           MX
    ADC #$4000              ; $D10192  69 00 40     MX
    STA $002116             ; $D10195  8F 16 21 00  MX
    PHA                     ; $D10199  48           MX
    LDA #$0040              ; $D1019A  A9 40 00     MX
    JSL L_C308A0            ; $D1019D  22 A0 08 C3  MX
    PLA                     ; $D101A1  68           MX
    CLC                     ; $D101A2  18           MX
    ADC #$0100              ; $D101A3  69 00 01     MX
    STA $002116             ; $D101A6  8F 16 21 00  MX
    TXA                     ; $D101AA  8A           MX
    CLC                     ; $D101AB  18           MX
    ADC #$0040              ; $D101AC  69 40 00     MX
    TAX                     ; $D101AF  AA           MX
    LDA #$0040              ; $D101B0  A9 40 00     MX
    JSL L_C308A0            ; $D101B3  22 A0 08 C3  MX
    PLY                     ; $D101B7  7A           MX
    PLX                     ; $D101B8  FA           MX
    PLA                     ; $D101B9  68           MX
    RTS                     ; $D101BA  60           MX
L_D101BB:
    SEP #$20                ; $D101BB  E2 20        MX
    LDA #$03                ; $D101BD  A9 03        mX
    STA $002105             ; $D101BF  8F 05 21 00  mX
    REP #$20                ; $D101C3  C2 20        mX
    PEA $0C75               ; $D101C5  F4 75 0C     MX
    PEA $00D0               ; $D101C8  F4 D0 00     MX
    PEA $0000               ; $D101CB  F4 00 00     MX
    PEA $007F               ; $D101CE  F4 7F 00     MX
    JSL L_C30000            ; $D101D1  22 00 00 C3  MX
    PLA                     ; $D101D5  68           MX
    PLA                     ; $D101D6  68           MX
    PLA                     ; $D101D7  68           MX
    PLA                     ; $D101D8  68           MX
    STZ $09FE               ; $D101D9  9C FE 09     MX
    LDA #$07FD              ; $D101DC  A9 FD 07     MX
    LDX #$09FE              ; $D101DF  A2 FE 09     MX
    LDY #$0A00              ; $D101E2  A0 00 0A     MX
    PHB                     ; $D101E5  8B           MX
    MVN $7E,$7E             ; $D101E6  54 7E 7E     MX
    PLB                     ; $D101E9  AB           MX
    LDA #$0000              ; $D101EA  A9 00 00     MX
    STA $002116             ; $D101ED  8F 16 21 00  MX
    LDX #$0060              ; $D101F1  A2 60 00     MX
    LDY #$0000              ; $D101F4  A0 00 00     MX
    JSR L_D1045E            ; $D101F7  20 5E 04     MX
    ASL                     ; $D101FA  0A           MX
    ASL                     ; $D101FB  0A           MX
    ASL                     ; $D101FC  0A           MX
    ASL                     ; $D101FD  0A           MX
    ASL                     ; $D101FE  0A           MX
    ASL                     ; $D101FF  0A           MX
    LDY #$007F              ; $D10200  A0 7F 00     MX
    JSL L_C308A0            ; $D10203  22 A0 08 C3  MX
    LDA #$007F              ; $D10207  A9 7F 00     MX
    LDX #$0000              ; $D1020A  A2 00 00     MX
    LDY #$0060              ; $D1020D  A0 60 00     MX
    JSL L_C302A8            ; $D10210  22 A8 02 C3  MX
    LDA #$7C00              ; $D10214  A9 00 7C     MX
    JSR L_D10402            ; $D10217  20 02 04     MX
    JSL L_C20489            ; $D1021A  22 89 04 C2  MX
    LDA #$000F              ; $D1021E  A9 0F 00     MX
    TAX                     ; $D10221  AA           MX
    LDY #$0022              ; $D10222  A0 22 00     MX
L_D10225:
    PHA                     ; $D10225  48           MX
    LDA #$0001              ; $D10226  A9 01 00     MX
    JSL L_C30A4E            ; $D10229  22 4E 0A C3  MX
    PLA                     ; $D1022D  68           MX
    JSR L_D10C98            ; $D1022E  20 98 0C     MX
    DEX                     ; $D10231  CA           MX
    BNE L_D10225            ; $D10232  D0 F1        MX
    LDA #$0040              ; $D10234  A9 40 00     MX
    JSL L_C30A4E            ; $D10237  22 4E 0A C3  MX
    JSL L_C204AB            ; $D1023B  22 AB 04 C2  MX
    RTS                     ; $D1023F  60           MX
L_D10240:
    PEA $2925               ; $D10240  F4 25 29     MX
    PEA $00D0               ; $D10243  F4 D0 00     MX
    PEA $0000               ; $D10246  F4 00 00     MX
    PEA $007F               ; $D10249  F4 7F 00     MX
    JSL L_C30000            ; $D1024C  22 00 00 C3  MX
    PLA                     ; $D10250  68           MX
    PLA                     ; $D10251  68           MX
    PLA                     ; $D10252  68           MX
    PLA                     ; $D10253  68           MX
    STZ $09FE               ; $D10254  9C FE 09     MX
    LDA #$07FD              ; $D10257  A9 FD 07     MX
    LDX #$09FE              ; $D1025A  A2 FE 09     MX
    LDY #$0A00              ; $D1025D  A0 00 0A     MX
    PHB                     ; $D10260  8B           MX
    MVN $7E,$7E             ; $D10261  54 7E 7E     MX
    PLB                     ; $D10264  AB           MX
    LDA #$0000              ; $D10265  A9 00 00     MX
    STA $002116             ; $D10268  8F 16 21 00  MX
    LDX #$0100              ; $D1026C  A2 00 01     MX
    LDY #$0000              ; $D1026F  A0 00 00     MX
    JSR L_D1045E            ; $D10272  20 5E 04     MX
    ASL                     ; $D10275  0A           MX
    ASL                     ; $D10276  0A           MX
    ASL                     ; $D10277  0A           MX
    ASL                     ; $D10278  0A           MX
    ASL                     ; $D10279  0A           MX
    ASL                     ; $D1027A  0A           MX
    LDY #$007F              ; $D1027B  A0 7F 00     MX
    JSL L_C308A0            ; $D1027E  22 A0 08 C3  MX
    LDA #$007F              ; $D10282  A9 7F 00     MX
    LDX #$0000              ; $D10285  A2 00 00     MX
    LDY #$0100              ; $D10288  A0 00 01     MX
    JSL L_C302A8            ; $D1028B  22 A8 02 C3  MX
    LDA #$7C00              ; $D1028F  A9 00 7C     MX
    JSR L_D10402            ; $D10292  20 02 04     MX
    JSL L_C20489            ; $D10295  22 89 04 C2  MX
    LDA #$0029              ; $D10299  A9 29 00     MX
    JSL L_C2010F            ; $D1029C  22 0F 01 C2  MX
    LDA #$0080              ; $D102A0  A9 80 00     MX
    JSL L_C30A55            ; $D102A3  22 55 0A C3  MX
    PHP                     ; $D102A7  08           MX
    JSL L_C204AB            ; $D102A8  22 AB 04 C2  MX
    PLP                     ; $D102AC  28           MX
    RTS                     ; $D102AD  60           MX
L_D102AE:
    SEP #$20                ; $D102AE  E2 20        MX
    LDA #$01                ; $D102B0  A9 01        mX
    STA $002105             ; $D102B2  8F 05 21 00  mX
    REP #$20                ; $D102B6  C2 20        mX
    PEA $4719               ; $D102B8  F4 19 47     MX
    PEA $00D0               ; $D102BB  F4 D0 00     MX
    PEA $0000               ; $D102BE  F4 00 00     MX
    PEA $007F               ; $D102C1  F4 7F 00     MX
    JSL L_C30000            ; $D102C4  22 00 00 C3  MX
    PLA                     ; $D102C8  68           MX
    PLA                     ; $D102C9  68           MX
    PLA                     ; $D102CA  68           MX
    PLA                     ; $D102CB  68           MX
    STZ $09FE               ; $D102CC  9C FE 09     MX
    LDA #$07FD              ; $D102CF  A9 FD 07     MX
    LDX #$09FE              ; $D102D2  A2 FE 09     MX
    LDY #$0A00              ; $D102D5  A0 00 0A     MX
    PHB                     ; $D102D8  8B           MX
    MVN $7E,$7E             ; $D102D9  54 7E 7E     MX
    PLB                     ; $D102DC  AB           MX
    LDA #$0230              ; $D102DD  A9 30 02     MX
    STA $09FE               ; $D102E0  8D FE 09     MX
    LDA #$00FD              ; $D102E3  A9 FD 00     MX
    LDX #$09FE              ; $D102E6  A2 FE 09     MX
    LDY #$0A00              ; $D102E9  A0 00 0A     MX
    PHB                     ; $D102EC  8B           MX
    MVN $7E,$7E             ; $D102ED  54 7E 7E     MX
    PLB                     ; $D102F0  AB           MX
    LDA #$0000              ; $D102F1  A9 00 00     MX
    STA $002116             ; $D102F4  8F 16 21 00  MX
    LDX #$0020              ; $D102F8  A2 20 00     MX
    LDY #$0100              ; $D102FB  A0 00 01     MX
    JSR L_D1045E            ; $D102FE  20 5E 04     MX
    ASL                     ; $D10301  0A           MX
    ASL                     ; $D10302  0A           MX
    ASL                     ; $D10303  0A           MX
    ASL                     ; $D10304  0A           MX
    ASL                     ; $D10305  0A           MX
    LDY #$007F              ; $D10306  A0 7F 00     MX
    JSL L_C308A0            ; $D10309  22 A0 08 C3  MX
    LDA #$007F              ; $D1030D  A9 7F 00     MX
    LDX #$0000              ; $D10310  A2 00 00     MX
    LDY #$0020              ; $D10313  A0 20 00     MX
    JSL L_C302A8            ; $D10316  22 A8 02 C3  MX
    LDA #$7C00              ; $D1031A  A9 00 7C     MX
    JSR L_D10402            ; $D1031D  20 02 04     MX
    JSL L_C20489            ; $D10320  22 89 04 C2  MX
    LDA #$0021              ; $D10324  A9 21 00     MX
    JSL L_C2010F            ; $D10327  22 0F 01 C2  MX
    LDA #$0080              ; $D1032B  A9 80 00     MX
    JSL L_C30A55            ; $D1032E  22 55 0A C3  MX
    BMI L_D10344            ; $D10332  30 10        MX
    LDA #$0000              ; $D10334  A9 00 00     MX
    LDX #$0000              ; $D10337  A2 00 00     MX
    LDY #$0010              ; $D1033A  A0 10 00     MX
    JSL L_C20557            ; $D1033D  22 57 05 C2  MX
    JSR L_D1034B            ; $D10341  20 4B 03     MX
L_D10344:
    PHP                     ; $D10344  08           MX
    JSL L_C204AB            ; $D10345  22 AB 04 C2  MX
    PLP                     ; $D10349  28           MX
    RTS                     ; $D1034A  60           MX
L_D1034B:
    SEP #$20                ; $D1034B  E2 20        MX
    LDA #$90                ; $D1034D  A9 90        mX
    STA $002131             ; $D1034F  8F 31 21 00  mX
    LDA #$F0                ; $D10353  A9 F0        mX
    STA $00420C             ; $D10355  8F 0C 42 00  mX
    REP #$20                ; $D10359  C2 20        mX
    LDA #$00D0              ; $D1035B  A9 D0 00     MX
    STA $28                 ; $D1035E  85 28        MX
    LDA #$E2FA              ; $D10360  A9 FA E2     MX
    JSR L_D1037F            ; $D10363  20 7F 03     MX
    BMI L_D1037E            ; $D10366  30 16        MX
    LDA #$E361              ; $D10368  A9 61 E3     MX
    JSR L_D1037F            ; $D1036B  20 7F 03     MX
    BMI L_D1037E            ; $D1036E  30 0E        MX
    LDA #$E3E0              ; $D10370  A9 E0 E3     MX
    JSR L_D1037F            ; $D10373  20 7F 03     MX
    BMI L_D1037E            ; $D10376  30 06        MX
    LDA #$E43B              ; $D10378  A9 3B E4     MX
    JSR L_D1037F            ; $D1037B  20 7F 03     MX
L_D1037E:
    RTS                     ; $D1037E  60           MX
L_D1037F:
    STA $26                 ; $D1037F  85 26        MX
    LDA #$00E0              ; $D10381  A9 E0 00     MX
L_D10384:
    PHA                     ; $D10384  48           MX
    STA $62                 ; $D10385  85 62        MX
    CMP #$0058              ; $D10387  C9 58 00     MX
    BNE L_D10395            ; $D1038A  D0 09        MX
    LDA #$0100              ; $D1038C  A9 00 01     MX
    JSL L_C30A55            ; $D1038F  22 55 0A C3  MX
    BMI L_D103C3            ; $D10393  30 2E        MX
L_D10395:
    JSL L_C30996            ; $D10395  22 96 09 C3  MX
    LDA #$0058              ; $D10399  A9 58 00     MX
    STA $5E                 ; $D1039C  85 5E        MX
    LDA #$00A0              ; $D1039E  A9 A0 00     MX
    JSR L_D10481            ; $D103A1  20 81 04     MX
L_D103A4:
    LDA $004212             ; $D103A4  AF 12 42 00  MX
    BIT #$0001              ; $D103A8  89 01 00     MX
    BEQ L_D103A4            ; $D103AB  F0 F7        MX
L_D103AD:
    LDA $004212             ; $D103AD  AF 12 42 00  MX
    BIT #$0001              ; $D103B1  89 01 00     MX
    BNE L_D103AD            ; $D103B4  D0 F7        MX
    LDA $004218             ; $D103B6  AF 18 42 00  MX
    ORA $00421A             ; $D103BA  0F 1A 42 00  MX
    BIT #$D0C0              ; $D103BE  89 C0 D0     MX
    BEQ L_D103C7            ; $D103C1  F0 04        MX
L_D103C3:
    PLA                     ; $D103C3  68           MX
    SEP #$80                ; $D103C4  E2 80        MX
    RTS                     ; $D103C6  60           MX
L_D103C7:
    JSL L_C0B23D            ; $D103C7  22 3D B2 C0  MX
    SEP #$20                ; $D103CB  E2 20        MX
    LDA #$02                ; $D103CD  A9 02        mX
    STA $00420B             ; $D103CF  8F 0B 42 00  mX
    LDA #$10                ; $D103D3  A9 10        mX
    TSB $ED                 ; $D103D5  04 ED        mX
    TSB $EF                 ; $D103D7  04 EF        mX
    REP #$20                ; $D103D9  C2 20        mX
    PLA                     ; $D103DB  68           MX
    DEC                     ; $D103DC  3A           MX
    BPL L_D10384            ; $D103DD  10 A5        MX
    CMP #$FFD0              ; $D103DF  C9 D0 FF     MX
    BCS L_D10384            ; $D103E2  B0 A0        MX
    REP #$80                ; $D103E4  C2 80        MX
    RTS                     ; $D103E6  60           MX
    db $20,$14,$04,$A9,$7F,$00,$A2,$00,$00,$A0,$20,$00,$22,$A8,$02,$C3 ; $D103E7
    db $A9,$00,$7C,$20,$02,$04,$22,$89,$04,$C2,$60                     ; $D103F7
L_D10402:
    STA $002116             ; $D10402  8F 16 21 00  MX
    LDA #$0800              ; $D10406  A9 00 08     MX
    LDX #$09FE              ; $D10409  A2 FE 09     MX
    LDY #$007E              ; $D1040C  A0 7E 00     MX
    JSL L_C308A0            ; $D1040F  22 A0 08 C3  MX
    RTS                     ; $D10413  60           MX
    db $E2,$20,$A5,$ED,$29,$EF,$85,$ED,$85,$EF,$C2,$20,$DA,$5A,$F4,$00 ; $D10414
    db $00,$F4,$7F,$00,$22,$00,$00,$C3,$68,$68,$68,$68,$9C,$FE,$09,$A9 ; $D10424
    db $FD,$07,$A2,$FE,$09,$A0,$00,$0A,$8B,$54,$7E,$7E,$AB,$A9,$00,$00 ; $D10434
    db $8F,$16,$21,$00,$A2,$20,$00,$A0,$00,$00,$20,$5E,$04,$0A,$0A,$0A ; $D10444
    db $0A,$0A,$A0,$7F,$00,$22,$A0,$08,$C3,$60                         ; $D10454
L_D1045E:
    LDA $7F0000,X           ; $D1045E  BF 00 00 7F  MX
    ASL                     ; $D10462  0A           MX
    ASL                     ; $D10463  0A           MX
    ASL                     ; $D10464  0A           MX
    ASL                     ; $D10465  0A           MX
    ASL                     ; $D10466  0A           MX
    PHA                     ; $D10467  48           MX
    INX                     ; $D10468  E8           MX
    INX                     ; $D10469  E8           MX
    INX                     ; $D1046A  E8           MX
    INX                     ; $D1046B  E8           MX
L_D1046C:
    PHA                     ; $D1046C  48           MX
    LDA $7F0000,X           ; $D1046D  BF 00 00 7F  MX
    ORA $09FE,Y             ; $D10471  19 FE 09     MX
    STA $09FE,Y             ; $D10474  99 FE 09     MX
    INX                     ; $D10477  E8           MX
    INX                     ; $D10478  E8           MX
    INY                     ; $D10479  C8           MX
    INY                     ; $D1047A  C8           MX
    PLA                     ; $D1047B  68           MX
    DEC                     ; $D1047C  3A           MX
    BNE L_D1046C            ; $D1047D  D0 ED        MX
    PLA                     ; $D1047F  68           MX
    RTS                     ; $D10480  60           MX
L_D10481:
    STA $64                 ; $D10481  85 64        MX
    PHX                     ; $D10483  DA           MX
    PHY                     ; $D10484  5A           MX
    LDA $5E                 ; $D10485  A5 5E        MX
    STA $60                 ; $D10487  85 60        MX
    LDY #$0000              ; $D10489  A0 00 00     MX
L_D1048C:
    JSR L_D104B6            ; $D1048C  20 B6 04     MX
    JSR L_D10516            ; $D1048F  20 16 05     MX
L_D10492:
    LDA [$26],Y             ; $D10492  B7 26        MX
    AND #$00FF              ; $D10494  29 FF 00     MX
    BEQ L_D104B3            ; $D10497  F0 1A        MX
    BIT #$0080              ; $D10499  89 80 00     MX
    BEQ L_D104A9            ; $D1049C  F0 0B        MX
    LDA $62                 ; $D1049E  A5 62        MX
    CLC                     ; $D104A0  18           MX
    ADC #$0009              ; $D104A1  69 09 00     MX
    STA $62                 ; $D104A4  85 62        MX
    INY                     ; $D104A6  C8           MX
    BRA L_D10492            ; $D104A7  80 E9        MX
L_D104A9:
    LDA $62                 ; $D104A9  A5 62        MX
    CLC                     ; $D104AB  18           MX
    ADC #$0009              ; $D104AC  69 09 00     MX
    STA $62                 ; $D104AF  85 62        MX
    BRA L_D1048C            ; $D104B1  80 D9        MX
L_D104B3:
    PLY                     ; $D104B3  7A           MX
    PLX                     ; $D104B4  FA           MX
    RTS                     ; $D104B5  60           MX
L_D104B6:
    LDA #$0200              ; $D104B6  A9 00 02     MX
    STA $2A                 ; $D104B9  85 2A        MX
    LDA $64                 ; $D104BB  A5 64        MX
    STA $48                 ; $D104BD  85 48        MX
    SEP #$30                ; $D104BF  E2 30        MX
L_D104C1:
    LDA [$26],Y             ; $D104C1  B7 26        mx
    BEQ L_D10507            ; $D104C3  F0 42        mx
    BMI L_D10507            ; $D104C5  30 40        mx
    SEC                     ; $D104C7  38           mx
    SBC #$61                ; $D104C8  E9 61        mx
    BMI L_D104D3            ; $D104CA  30 07        mx
    CMP #$1A                ; $D104CC  C9 1A        mx
    BCS L_D104D3            ; $D104CE  B0 03        mx
    TAX                     ; $D104D0  AA           mx
    BRA L_D104D8            ; $D104D1  80 05        mx
L_D104D3:
    LDA [$26],Y             ; $D104D3  B7 26        mx
    JSR L_D1050A            ; $D104D5  20 0A 05     mx
L_D104D8:
    LDA $48                 ; $D104D8  A5 48        mx
    SEC                     ; $D104DA  38           mx
    SBC $D00C4E,X           ; $D104DB  FF 4E 0C D0  mx
    BCC L_D104EB            ; $D104DF  90 0A        mx
    STA $48                 ; $D104E1  85 48        mx
    TXA                     ; $D104E3  8A           mx
    STA ($2A)               ; $D104E4  92 2A        mx
    INC $2A                 ; $D104E6  E6 2A        mx
    INY                     ; $D104E8  C8           mx
    BRA L_D104C1            ; $D104E9  80 D6        mx
L_D104EB:
    LDA [$26],Y             ; $D104EB  B7 26        mx
    CMP #$20                ; $D104ED  C9 20        mx
    BEQ L_D10506            ; $D104EF  F0 15        mx
L_D104F1:
    DEY                     ; $D104F1  88           mx
    DEC $2A                 ; $D104F2  C6 2A        mx
    LDA ($2A)               ; $D104F4  B2 2A        mx
    TAX                     ; $D104F6  AA           mx
    LDA $48                 ; $D104F7  A5 48        mx
    CLC                     ; $D104F9  18           mx
    ADC $D00C4E,X           ; $D104FA  7F 4E 0C D0  mx
    STA $48                 ; $D104FE  85 48        mx
    LDA [$26],Y             ; $D10500  B7 26        mx
    CMP #$20                ; $D10502  C9 20        mx
    BNE L_D104F1            ; $D10504  D0 EB        mx
L_D10506:
    INY                     ; $D10506  C8           mx
L_D10507:
    REP #$30                ; $D10507  C2 30        mx
    RTS                     ; $D10509  60           MX
L_D1050A:
    LDX #$1A                ; $D1050A  A2 1A        mx
L_D1050C:
    CMP $D00C27,X           ; $D1050C  DF 27 0C D0  mx
    BEQ L_D10515            ; $D10510  F0 03        mx
    INX                     ; $D10512  E8           mx
    BRA L_D1050C            ; $D10513  80 F7        mx
L_D10515:
    RTS                     ; $D10515  60           mx
L_D10516:
    LDA $62                 ; $D10516  A5 62        MX
    BPL L_D1051F            ; $D10518  10 05        MX
    CMP #$FFF7              ; $D1051A  C9 F7 FF     MX
    BCS L_D10524            ; $D1051D  B0 05        MX
L_D1051F:
    CMP #$00E0              ; $D1051F  C9 E0 00     MX
    BCS L_D1055A            ; $D10522  B0 36        MX
L_D10524:
    PHY                     ; $D10524  5A           MX
    LDA $48                 ; $D10525  A5 48        MX
    LSR                     ; $D10527  4A           MX
    CLC                     ; $D10528  18           MX
    ADC $60                 ; $D10529  65 60        MX
    STA $5E                 ; $D1052B  85 5E        MX
    LDA $2A                 ; $D1052D  A5 2A        MX
    SEC                     ; $D1052F  38           MX
    SBC #$0200              ; $D10530  E9 00 02     MX
    STA $48                 ; $D10533  85 48        MX
    LDY #$0000              ; $D10535  A0 00 00     MX
L_D10538:
    LDA $0200,Y             ; $D10538  B9 00 02     MX
    AND #$00FF              ; $D1053B  29 FF 00     MX
    TAX                     ; $D1053E  AA           MX
    CMP #$0026              ; $D1053F  C9 26 00     MX
    BCS L_D10548            ; $D10542  B0 04        MX
    JSL L_C0BBE3            ; $D10544  22 E3 BB C0  MX
L_D10548:
    LDA $D00C4E,X           ; $D10548  BF 4E 0C D0  MX
    AND #$00FF              ; $D1054C  29 FF 00     MX
    CLC                     ; $D1054F  18           MX
    ADC $5E                 ; $D10550  65 5E        MX
    STA $5E                 ; $D10552  85 5E        MX
    INY                     ; $D10554  C8           MX
    CPY $48                 ; $D10555  C4 48        MX
    BCC L_D10538            ; $D10557  90 DF        MX
    PLY                     ; $D10559  7A           MX
L_D1055A:
    RTS                     ; $D1055A  60           MX
L_D1055B:
    PHA                     ; $D1055B  48           MX
    JSR L_D10A7F            ; $D1055C  20 7F 0A     MX
    JSR L_D105E6            ; $D1055F  20 E6 05     MX
    JSR L_D1063E            ; $D10562  20 3E 06     MX
    PLA                     ; $D10565  68           MX
    BEQ L_D105A1            ; $D10566  F0 39        MX
    LDA #$007F              ; $D10568  A9 7F 00     MX
    LDX #$0000              ; $D1056B  A2 00 00     MX
    LDY #$00C0              ; $D1056E  A0 C0 00     MX
    JSL L_C302A8            ; $D10571  22 A8 02 C3  MX
    LDA $0E                 ; $D10575  A5 0E        MX
    AND #$00FF              ; $D10577  29 FF 00     MX
    CMP #$0018              ; $D1057A  C9 18 00     MX
    BEQ L_D10586            ; $D1057D  F0 07        MX
    LDA #$0018              ; $D1057F  A9 18 00     MX
    JSL L_C2010F            ; $D10582  22 0F 01 C2  MX
L_D10586:
    JSL L_C20489            ; $D10586  22 89 04 C2  MX
    LDA #$0002              ; $D1058A  A9 02 00     MX
    TSB $ED                 ; $D1058D  04 ED        MX
    JSL L_C20466            ; $D1058F  22 66 04 C2  MX
    LDA #$0000              ; $D10593  A9 00 00     MX
    LDX #$0000              ; $D10596  A2 00 00     MX
    LDY #$0060              ; $D10599  A0 60 00     MX
    JSL L_C20557            ; $D1059C  22 57 05 C2  MX
    RTS                     ; $D105A0  60           MX
L_D105A1:
    JSR L_D106D5            ; $D105A1  20 D5 06     MX
    JSR L_D105CC            ; $D105A4  20 CC 05     MX
    JSL L_C20100            ; $D105A7  22 00 01 C2  MX
    LDA #$0000              ; $D105AB  A9 00 00     MX
    LDX #$0000              ; $D105AE  A2 00 00     MX
    LDY #$0060              ; $D105B1  A0 60 00     MX
    JSL L_C20557            ; $D105B4  22 57 05 C2  MX
    LDX #$0014              ; $D105B8  A2 14 00     MX
L_D105BB:
    LDA $66                 ; $D105BB  A5 66        MX
L_D105BD:
    CMP $66                 ; $D105BD  C5 66        MX
    BEQ L_D105BD            ; $D105BF  F0 FC        MX
    DEX                     ; $D105C1  CA           MX
    BNE L_D105BB            ; $D105C2  D0 F7        MX
    LDA #$0018              ; $D105C4  A9 18 00     MX
    JSL L_C2010F            ; $D105C7  22 0F 01 C2  MX
    RTS                     ; $D105CB  60           MX
L_D105CC:
    LDA #$0004              ; $D105CC  A9 04 00     MX
    STA $E0                 ; $D105CF  85 E0        MX
    LDA #$0078              ; $D105D1  A9 78 00     MX
    STA $E2                 ; $D105D4  85 E2        MX
    LDA #$0002              ; $D105D6  A9 02 00     MX
    TSB $ED                 ; $D105D9  04 ED        MX
L_D105DB:
    LDA $66                 ; $D105DB  A5 66        MX
L_D105DD:
    CMP $66                 ; $D105DD  C5 66        MX
    BEQ L_D105DD            ; $D105DF  F0 FC        MX
    DEC $E2                 ; $D105E1  C6 E2        MX
    BNE L_D105DB            ; $D105E3  D0 F6        MX
    RTS                     ; $D105E5  60           MX
L_D105E6:
    PEA $8700               ; $D105E6  F4 00 87     MX
    PEA $00D0               ; $D105E9  F4 D0 00     MX
    PEA $0000               ; $D105EC  F4 00 00     MX
    PEA $007F               ; $D105EF  F4 7F 00     MX
    JSL L_C30000            ; $D105F2  22 00 00 C3  MX
    PLA                     ; $D105F6  68           MX
    PLA                     ; $D105F7  68           MX
    PLA                     ; $D105F8  68           MX
    PLA                     ; $D105F9  68           MX
    LDA #$3800              ; $D105FA  A9 00 38     MX
    STA $09FE               ; $D105FD  8D FE 09     MX
    LDA #$07FD              ; $D10600  A9 FD 07     MX
    LDX #$09FE              ; $D10603  A2 FE 09     MX
    LDY #$0A00              ; $D10606  A0 00 0A     MX
    PHB                     ; $D10609  8B           MX
    MVN $7E,$7E             ; $D1060A  54 7E 7E     MX
    PLB                     ; $D1060D  AB           MX
    LDA #$6000              ; $D1060E  A9 00 60     MX
    STA $002116             ; $D10611  8F 16 21 00  MX
    LDX #$0020              ; $D10615  A2 20 00     MX
    LDY #$0208              ; $D10618  A0 08 02     MX
    JSR L_D1045E            ; $D1061B  20 5E 04     MX
    ASL                     ; $D1061E  0A           MX
    ASL                     ; $D1061F  0A           MX
    ASL                     ; $D10620  0A           MX
    ASL                     ; $D10621  0A           MX
    ASL                     ; $D10622  0A           MX
    LDY #$007F              ; $D10623  A0 7F 00     MX
    JSL L_C308A0            ; $D10626  22 A0 08 C3  MX
    LDA #$607F              ; $D1062A  A9 7F 60     MX
    LDX #$0000              ; $D1062D  A2 00 00     MX
    LDY #$0020              ; $D10630  A0 20 00     MX
    JSL L_C302A8            ; $D10633  22 A8 02 C3  MX
    LDA #$7800              ; $D10637  A9 00 78     MX
    JSR L_D10402            ; $D1063A  20 02 04     MX
    RTS                     ; $D1063D  60           MX
L_D1063E:
    STZ $09FE               ; $D1063E  9C FE 09     MX
    LDA #$07FD              ; $D10641  A9 FD 07     MX
    LDX #$09FE              ; $D10644  A2 FE 09     MX
    LDY #$0A00              ; $D10647  A0 00 0A     MX
    PHB                     ; $D1064A  8B           MX
    MVN $7E,$7E             ; $D1064B  54 7E 7E     MX
    PLB                     ; $D1064E  AB           MX
    PEA $8FBD               ; $D1064F  F4 BD 8F     MX
    PEA $00D0               ; $D10652  F4 D0 00     MX
    PEA $0000               ; $D10655  F4 00 00     MX
    PEA $007F               ; $D10658  F4 7F 00     MX
    JSL L_C30000            ; $D1065B  22 00 00 C3  MX
    PLA                     ; $D1065F  68           MX
    PLA                     ; $D10660  68           MX
    PLA                     ; $D10661  68           MX
    PLA                     ; $D10662  68           MX
    LDA $7F0200             ; $D10663  AF 00 02 7F  MX
    ASL                     ; $D10667  0A           MX
    ASL                     ; $D10668  0A           MX
    ASL                     ; $D10669  0A           MX
    SEC                     ; $D1066A  38           MX
    SBC #$0080              ; $D1066B  E9 80 00     MX
    SEP #$20                ; $D1066E  E2 20        MX
    STA $E7                 ; $D10670  85 E7        mX
    REP #$20                ; $D10672  C2 20        mX
    LDA #$0000              ; $D10674  A9 00 00     MX
    STA $002116             ; $D10677  8F 16 21 00  MX
    LDX #$0200              ; $D1067B  A2 00 02     MX
    LDY #$0000              ; $D1067E  A0 00 00     MX
    JSR L_D1045E            ; $D10681  20 5E 04     MX
    PHY                     ; $D10684  5A           MX
    ASL                     ; $D10685  0A           MX
    ASL                     ; $D10686  0A           MX
    ASL                     ; $D10687  0A           MX
    ASL                     ; $D10688  0A           MX
    ASL                     ; $D10689  0A           MX
    ASL                     ; $D1068A  0A           MX
    LDY #$007F              ; $D1068B  A0 7F 00     MX
    JSL L_C308A0            ; $D1068E  22 A0 08 C3  MX
    PEA $D286               ; $D10692  F4 86 D2     MX
    PEA $00D0               ; $D10695  F4 D0 00     MX
    PEA $0000               ; $D10698  F4 00 00     MX
    PEA $007F               ; $D1069B  F4 7F 00     MX
    JSL L_C30000            ; $D1069E  22 00 00 C3  MX
    PLA                     ; $D106A2  68           MX
    PLA                     ; $D106A3  68           MX
    PLA                     ; $D106A4  68           MX
    PLA                     ; $D106A5  68           MX
    LDA $7F0200             ; $D106A6  AF 00 02 7F  MX
    ASL                     ; $D106AA  0A           MX
    ASL                     ; $D106AB  0A           MX
    ASL                     ; $D106AC  0A           MX
    SEP #$20                ; $D106AD  E2 20        MX
    STA $E9                 ; $D106AF  85 E9        mX
    REP #$20                ; $D106B1  C2 20        mX
    LDA #$4000              ; $D106B3  A9 00 40     MX
    STA $002116             ; $D106B6  8F 16 21 00  MX
    LDX #$0200              ; $D106BA  A2 00 02     MX
    PLY                     ; $D106BD  7A           MX
    JSR L_D1045E            ; $D106BE  20 5E 04     MX
    ASL                     ; $D106C1  0A           MX
    ASL                     ; $D106C2  0A           MX
    ASL                     ; $D106C3  0A           MX
    ASL                     ; $D106C4  0A           MX
    ASL                     ; $D106C5  0A           MX
    ASL                     ; $D106C6  0A           MX
    LDY #$007F              ; $D106C7  A0 7F 00     MX
    JSL L_C308A0            ; $D106CA  22 A0 08 C3  MX
    LDA #$7C00              ; $D106CE  A9 00 7C     MX
    JSR L_D10402            ; $D106D1  20 02 04     MX
    RTS                     ; $D106D4  60           MX
L_D106D5:
    LDA #$0000              ; $D106D5  A9 00 00     MX
    STA $7F0100             ; $D106D8  8F 00 01 7F  MX
    LDA #$00FD              ; $D106DC  A9 FD 00     MX
    LDX #$0100              ; $D106DF  A2 00 01     MX
    LDY #$0102              ; $D106E2  A0 02 01     MX
    PHB                     ; $D106E5  8B           MX
    MVN $7F,$7F             ; $D106E6  54 7F 7F     MX
    PLB                     ; $D106E9  AB           MX
    LDA #$007F              ; $D106EA  A9 7F 00     MX
    LDX #$0100              ; $D106ED  A2 00 01     MX
    LDY #$00C0              ; $D106F0  A0 C0 00     MX
    JSL L_C302A8            ; $D106F3  22 A8 02 C3  MX
    LDA $66                 ; $D106F7  A5 66        MX
L_D106F9:
    CMP $66                 ; $D106F9  C5 66        MX
    BEQ L_D106F9            ; $D106FB  F0 FC        MX
    SEP #$20                ; $D106FD  E2 20        MX
    LDA $66                 ; $D106FF  A5 66        mX
L_D10701:
    CMP $66                 ; $D10701  C5 66        mX
    BEQ L_D10701            ; $D10703  F0 FC        mX
    LDA $DE                 ; $D10705  A5 DE        mX
    STA $00420C             ; $D10707  8F 0C 42 00  mX
    LDA #$0F                ; $D1070B  A9 0F        mX
    STA $002100             ; $D1070D  8F 00 21 00  mX
    REP #$20                ; $D10711  C2 20        mX
    LDY #$0010              ; $D10713  A0 10 00     MX
    LDX #$0020              ; $D10716  A2 20 00     MX
    JSL L_C2059E            ; $D10719  22 9E 05 C2  MX
    LDA #$0020              ; $D1071D  A9 20 00     MX
    JSL L_C30A4E            ; $D10720  22 4E 0A C3  MX
    LDX #$00A0              ; $D10724  A2 A0 00     MX
    JSL L_C2059E            ; $D10727  22 9E 05 C2  MX
    LDA #$0020              ; $D1072B  A9 20 00     MX
    JSL L_C30A4E            ; $D1072E  22 4E 0A C3  MX
    LDX #$0080              ; $D10732  A2 80 00     MX
    JSL L_C2059E            ; $D10735  22 9E 05 C2  MX
    LDA #$0020              ; $D10739  A9 20 00     MX
    JSL L_C30A4E            ; $D1073C  22 4E 0A C3  MX
    LDX #$0000              ; $D10740  A2 00 00     MX
    JSL L_C2059E            ; $D10743  22 9E 05 C2  MX
    LDA #$0020              ; $D10747  A9 20 00     MX
    JSL L_C30A4E            ; $D1074A  22 4E 0A C3  MX
    LDX #$0040              ; $D1074E  A2 40 00     MX
    JSL L_C2059E            ; $D10751  22 9E 05 C2  MX
    LDA #$0020              ; $D10755  A9 20 00     MX
    JSL L_C30A4E            ; $D10758  22 4E 0A C3  MX
    LDX #$0060              ; $D1075C  A2 60 00     MX
    LDY #$0010              ; $D1075F  A0 10 00     MX
    JSL L_C2059E            ; $D10762  22 9E 05 C2  MX
    LDA #$0020              ; $D10766  A9 20 00     MX
    JSL L_C30A4E            ; $D10769  22 4E 0A C3  MX
    RTS                     ; $D1076D  60           MX
L_D1076E:
    JSL L_C30996            ; $D1076E  22 96 09 C3  MX
    JSL L_C309DF            ; $D10772  22 DF 09 C3  MX
    STZ $1B26               ; $D10776  9C 26 1B     MX
    LDA #$4000              ; $D10779  A9 00 40     MX
    STA $1B24               ; $D1077C  8D 24 1B     MX
    LDA #$E469              ; $D1077F  A9 69 E4     MX
    STA $3E                 ; $D10782  85 3E        MX
    LDA #$00D0              ; $D10784  A9 D0 00     MX
    STA $40                 ; $D10787  85 40        MX
    LDA #$0001              ; $D10789  A9 01 00     MX
    STA $5E                 ; $D1078C  85 5E        MX
    LDA #$0088              ; $D1078E  A9 88 00     MX
    STA $62                 ; $D10791  85 62        MX
    LDA #$00FF              ; $D10793  A9 FF 00     MX
    JSR L_D10998            ; $D10796  20 98 09     MX
    LDA $5E                 ; $D10799  A5 5E        MX
    STA $045A               ; $D1079B  8D 5A 04     MX
    LDA $62                 ; $D1079E  A5 62        MX
    STA $045C               ; $D107A0  8D 5C 04     MX
    LDA #$E47A              ; $D107A3  A9 7A E4     MX
    STA $3E                 ; $D107A6  85 3E        MX
    LDA #$00D0              ; $D107A8  A9 D0 00     MX
    STA $40                 ; $D107AB  85 40        MX
    LDA #$0001              ; $D107AD  A9 01 00     MX
    STA $5E                 ; $D107B0  85 5E        MX
    LDA #$00A8              ; $D107B2  A9 A8 00     MX
    STA $62                 ; $D107B5  85 62        MX
    LDA #$00FF              ; $D107B7  A9 FF 00     MX
    JSR L_D10998            ; $D107BA  20 98 09     MX
    LDA $5E                 ; $D107BD  A5 5E        MX
    STA $045E               ; $D107BF  8D 5E 04     MX
    LDA $62                 ; $D107C2  A5 62        MX
    STA $0460               ; $D107C4  8D 60 04     MX
    LDA $18FE               ; $D107C7  AD FE 18     MX
    STA $0458               ; $D107CA  8D 58 04     MX
    LDA #$0000              ; $D107CD  A9 00 00     MX
    JSR L_D108A7            ; $D107D0  20 A7 08     MX
    LDA $66                 ; $D107D3  A5 66        MX
L_D107D5:
    CMP $66                 ; $D107D5  C5 66        MX
    BEQ L_D107D5            ; $D107D7  F0 FC        MX
    JSL L_C0B1AF            ; $D107D9  22 AF B1 C0  MX
    SEP #$20                ; $D107DD  E2 20        MX
    LDA #$02                ; $D107DF  A9 02        mX
    STA $00420B             ; $D107E1  8F 0B 42 00  mX
    LDA $ED                 ; $D107E5  A5 ED        mX
    ORA #$10                ; $D107E7  09 10        mX
    STA $ED                 ; $D107E9  85 ED        mX
    STA $EF                 ; $D107EB  85 EF        mX
    REP #$20                ; $D107ED  C2 20        mX
    LDA #$0010              ; $D107EF  A9 10 00     MX
    JSL L_C20466            ; $D107F2  22 66 04 C2  MX
    LDX #$0000              ; $D107F6  A2 00 00     MX
L_D107F9:
    LDA #$0001              ; $D107F9  A9 01 00     MX
    STA $0829               ; $D107FC  8D 29 08     MX
    LDA #$0002              ; $D107FF  A9 02 00     MX
    JSR L_D108DB            ; $D10802  20 DB 08     MX
    LDA $D4                 ; $D10805  A5 D4        MX
    BNE L_D107F9            ; $D10807  D0 F0        MX
    JSL L_C2002A            ; $D10809  22 2A 00 C2  MX
    LDA #$0010              ; $D1080D  A9 10 00     MX
    JSL L_C20445            ; $D10810  22 45 04 C2  MX
    RTS                     ; $D10814  60           MX
L_D10815:
    JSL L_C30996            ; $D10815  22 96 09 C3  MX
    JSL L_C309DF            ; $D10819  22 DF 09 C3  MX
    STZ $1B26               ; $D1081D  9C 26 1B     MX
    LDA #$E48E              ; $D10820  A9 8E E4     MX
    STA $3E                 ; $D10823  85 3E        MX
    LDA #$00D0              ; $D10825  A9 D0 00     MX
    STA $40                 ; $D10828  85 40        MX
    LDA #$0001              ; $D1082A  A9 01 00     MX
    STA $5E                 ; $D1082D  85 5E        MX
    LDA #$0088              ; $D1082F  A9 88 00     MX
    STA $62                 ; $D10832  85 62        MX
    LDA #$00FF              ; $D10834  A9 FF 00     MX
    JSR L_D10998            ; $D10837  20 98 09     MX
    LDA $5E                 ; $D1083A  A5 5E        MX
    STA $045A               ; $D1083C  8D 5A 04     MX
    LDA $62                 ; $D1083F  A5 62        MX
    STA $045C               ; $D10841  8D 5C 04     MX
    LDA #$E49D              ; $D10844  A9 9D E4     MX
    STA $3E                 ; $D10847  85 3E        MX
    LDA #$00D0              ; $D10849  A9 D0 00     MX
    STA $40                 ; $D1084C  85 40        MX
    LDA #$0001              ; $D1084E  A9 01 00     MX
    STA $5E                 ; $D10851  85 5E        MX
    LDA #$00A8              ; $D10853  A9 A8 00     MX
    STA $62                 ; $D10856  85 62        MX
    LDA #$00FF              ; $D10858  A9 FF 00     MX
    JSR L_D10998            ; $D1085B  20 98 09     MX
    LDA $5E                 ; $D1085E  A5 5E        MX
    STA $045E               ; $D10860  8D 5E 04     MX
    LDA $62                 ; $D10863  A5 62        MX
    STA $0460               ; $D10865  8D 60 04     MX
    LDA $18FE               ; $D10868  AD FE 18     MX
    STA $0458               ; $D1086B  8D 58 04     MX
    LDA #$0000              ; $D1086E  A9 00 00     MX
    JSR L_D108A7            ; $D10871  20 A7 08     MX
    LDA $66                 ; $D10874  A5 66        MX
L_D10876:
    CMP $66                 ; $D10876  C5 66        MX
    BEQ L_D10876            ; $D10878  F0 FC        MX
    JSL L_C0B1AF            ; $D1087A  22 AF B1 C0  MX
    SEP #$20                ; $D1087E  E2 20        MX
    LDA #$02                ; $D10880  A9 02        mX
    STA $00420B             ; $D10882  8F 0B 42 00  mX
    REP #$20                ; $D10886  C2 20        mX
    LDA #$0010              ; $D10888  A9 10 00     MX
    JSL L_C20466            ; $D1088B  22 66 04 C2  MX
    LDX #$0000              ; $D1088F  A2 00 00     MX
    STZ $0829               ; $D10892  9C 29 08     MX
    LDA #$0002              ; $D10895  A9 02 00     MX
    JSR L_D108DB            ; $D10898  20 DB 08     MX
    JSL L_C2002A            ; $D1089B  22 2A 00 C2  MX
    LDA #$0010              ; $D1089F  A9 10 00     MX
    JSL L_C20445            ; $D108A2  22 45 04 C2  MX
    RTS                     ; $D108A6  60           MX
L_D108A7:
    STZ $66                 ; $D108A7  64 66        MX
    PHA                     ; $D108A9  48           MX
    PHX                     ; $D108AA  DA           MX
    PHY                     ; $D108AB  5A           MX
    LDA $0458               ; $D108AC  AD 58 04     MX
    STA $18FE               ; $D108AF  8D FE 18     MX
    LDA $05,S               ; $D108B2  A3 05        MX
    ASL                     ; $D108B4  0A           MX
    ASL                     ; $D108B5  0A           MX
    TAX                     ; $D108B6  AA           MX
    LDA $045A,X             ; $D108B7  BD 5A 04     MX
    STA $5E                 ; $D108BA  85 5E        MX
    LDA $045C,X             ; $D108BC  BD 5C 04     MX
    STA $62                 ; $D108BF  85 62        MX
    LDA #$002C              ; $D108C1  A9 2C 00     MX
    JSL L_C0BC42            ; $D108C4  22 42 BC C0  MX
    LDA #$00EC              ; $D108C8  A9 EC 00     MX
    SEC                     ; $D108CB  38           MX
    SBC $5E                 ; $D108CC  E5 5E        MX
    STA $5E                 ; $D108CE  85 5E        MX
    LDA #$002B              ; $D108D0  A9 2B 00     MX
    JSL L_C0BC42            ; $D108D3  22 42 BC C0  MX
    PLY                     ; $D108D7  7A           MX
    PLX                     ; $D108D8  FA           MX
    PLA                     ; $D108D9  68           MX
    RTS                     ; $D108DA  60           MX
L_D108DB:
    PHA                     ; $D108DB  48           MX
L_D108DC:
    LDA $004212             ; $D108DC  AF 12 42 00  MX
    BIT #$0001              ; $D108E0  89 01 00     MX
    BEQ L_D108DC            ; $D108E3  F0 F7        MX
L_D108E5:
    LDA $004212             ; $D108E5  AF 12 42 00  MX
    BIT #$0001              ; $D108E9  89 01 00     MX
    BNE L_D108E5            ; $D108EC  D0 F7        MX
    LDA $004218             ; $D108EE  AF 18 42 00  MX
    BNE L_D108DC            ; $D108F2  D0 E8        MX
    STZ $D4                 ; $D108F4  64 D4        MX
L_D108F6:
    LDA $0829               ; $D108F6  AD 29 08     MX
    BEQ L_D1091A            ; $D108F9  F0 1F        MX
    LDA $66                 ; $D108FB  A5 66        MX
    CMP #$0800              ; $D108FD  C9 00 08     MX
    BCC L_D1091A            ; $D10900  90 18        MX
    JSL L_C3054F            ; $D10902  22 4F 05 C3  MX
    INC $0885               ; $D10906  EE 85 08     MX
    LDA $D4                 ; $D10909  A5 D4        MX
    BEQ L_D10916            ; $D1090B  F0 09        MX
    LDX $B2                 ; $D1090D  A6 B2        MX
    TXS                     ; $D1090F  9A           MX
    LDA #$0001              ; $D10910  A9 01 00     MX
    JMP L_D1002D            ; $D10913  4C 2D 00     MX
L_D10916:
    JML L_C041DD            ; $D10916  5C DD 41 C0  MX
L_D1091A:
    LDA $004212             ; $D1091A  AF 12 42 00  MX
    BIT #$0001              ; $D1091E  89 01 00     MX
    BEQ L_D1091A            ; $D10921  F0 F7        MX
L_D10923:
    LDA $004212             ; $D10923  AF 12 42 00  MX
    BIT #$0001              ; $D10927  89 01 00     MX
    BNE L_D10923            ; $D1092A  D0 F7        MX
    LDA $004218             ; $D1092C  AF 18 42 00  MX
    BIT #$D000              ; $D10930  89 00 D0     MX
    BNE L_D10996            ; $D10933  D0 61        MX
    BIT #$00C0              ; $D10935  89 C0 00     MX
    BEQ L_D1093E            ; $D10938  F0 04        MX
    STA $D4                 ; $D1093A  85 D4        MX
    BRA L_D10996            ; $D1093C  80 58        MX
L_D1093E:
    BIT #$0800              ; $D1093E  89 00 08     MX
    BNE L_D10953            ; $D10941  D0 10        MX
    BIT #$2400              ; $D10943  89 00 24     MX
    BEQ L_D108F6            ; $D10946  F0 AE        MX
    INX                     ; $D10948  E8           MX
    TXA                     ; $D10949  8A           MX
    CMP $01,S               ; $D1094A  C3 01        MX
    BCC L_D1095C            ; $D1094C  90 0E        MX
    LDA #$0000              ; $D1094E  A9 00 00     MX
    BRA L_D1095C            ; $D10951  80 09        MX
L_D10953:
    DEX                     ; $D10953  CA           MX
    TXA                     ; $D10954  8A           MX
    BPL L_D1095C            ; $D10955  10 05        MX
    LDA $01,S               ; $D10957  A3 01        MX
    DEC                     ; $D10959  3A           MX
    BRA L_D1095C            ; $D1095A  80 00        MX
L_D1095C:
    TAX                     ; $D1095C  AA           MX
    JSR L_D108A7            ; $D1095D  20 A7 08     MX
    JSL L_C2003F            ; $D10960  22 3F 00 C2  MX
    LDA $66                 ; $D10964  A5 66        MX
L_D10966:
    CMP $66                 ; $D10966  C5 66        MX
    BEQ L_D10966            ; $D10968  F0 FC        MX
    JSL L_C0B1AF            ; $D1096A  22 AF B1 C0  MX
    SEP #$20                ; $D1096E  E2 20        MX
    LDA #$02                ; $D10970  A9 02        mX
    STA $00420B             ; $D10972  8F 0B 42 00  mX
    REP #$20                ; $D10976  C2 20        mX
L_D10978:
    LDA $004212             ; $D10978  AF 12 42 00  MX
    BIT #$0001              ; $D1097C  89 01 00     MX
    BEQ L_D10978            ; $D1097F  F0 F7        MX
L_D10981:
    LDA $004212             ; $D10981  AF 12 42 00  MX
    BIT #$0001              ; $D10985  89 01 00     MX
    BNE L_D10981            ; $D10988  D0 F7        MX
    LDA $004218             ; $D1098A  AF 18 42 00  MX
    BIT #$2C00              ; $D1098E  89 00 2C     MX
    BNE L_D10978            ; $D10991  D0 E5        MX
    JMP L_D108F6            ; $D10993  4C F6 08     MX
L_D10996:
    PLA                     ; $D10996  68           MX
    RTS                     ; $D10997  60           MX
L_D10998:
    STA $64                 ; $D10998  85 64        MX
    PHX                     ; $D1099A  DA           MX
    PHY                     ; $D1099B  5A           MX
    LDA $5E                 ; $D1099C  A5 5E        MX
    STA $60                 ; $D1099E  85 60        MX
    LDY #$0000              ; $D109A0  A0 00 00     MX
L_D109A3:
    JSR L_D109BF            ; $D109A3  20 BF 09     MX
    PHY                     ; $D109A6  5A           MX
    JSR L_D10A1D            ; $D109A7  20 1D 0A     MX
    PLY                     ; $D109AA  7A           MX
    LDA [$3E],Y             ; $D109AB  B7 3E        MX
    AND #$00FF              ; $D109AD  29 FF 00     MX
    BEQ L_D109BC            ; $D109B0  F0 0A        MX
    LDA $62                 ; $D109B2  A5 62        MX
    CLC                     ; $D109B4  18           MX
    ADC #$0018              ; $D109B5  69 18 00     MX
    STA $62                 ; $D109B8  85 62        MX
    BRA L_D109A3            ; $D109BA  80 E7        MX
L_D109BC:
    PLY                     ; $D109BC  7A           MX
    PLX                     ; $D109BD  FA           MX
    RTS                     ; $D109BE  60           MX
L_D109BF:
    LDA #$0200              ; $D109BF  A9 00 02     MX
    STA $2A                 ; $D109C2  85 2A        MX
    LDA $64                 ; $D109C4  A5 64        MX
    STA $48                 ; $D109C6  85 48        MX
    SEP #$30                ; $D109C8  E2 30        MX
L_D109CA:
    LDA [$3E],Y             ; $D109CA  B7 3E        mx
    BEQ L_D10A0E            ; $D109CC  F0 40        mx
    SEC                     ; $D109CE  38           mx
    SBC #$61                ; $D109CF  E9 61        mx
    BMI L_D109DA            ; $D109D1  30 07        mx
    CMP #$1A                ; $D109D3  C9 1A        mx
    BCS L_D109DA            ; $D109D5  B0 03        mx
    TAX                     ; $D109D7  AA           mx
    BRA L_D109DF            ; $D109D8  80 05        mx
L_D109DA:
    LDA [$3E],Y             ; $D109DA  B7 3E        mx
    JSR L_D10A11            ; $D109DC  20 11 0A     mx
L_D109DF:
    LDA $48                 ; $D109DF  A5 48        mx
    SEC                     ; $D109E1  38           mx
    SBC $D12009,X           ; $D109E2  FF 09 20 D1  mx
    BCC L_D109F2            ; $D109E6  90 0A        mx
    STA $48                 ; $D109E8  85 48        mx
    TXA                     ; $D109EA  8A           mx
    STA ($2A)               ; $D109EB  92 2A        mx
    INC $2A                 ; $D109ED  E6 2A        mx
    INY                     ; $D109EF  C8           mx
    BRA L_D109CA            ; $D109F0  80 D8        mx
L_D109F2:
    LDA [$3E],Y             ; $D109F2  B7 3E        mx
    CMP #$20                ; $D109F4  C9 20        mx
    BEQ L_D10A0D            ; $D109F6  F0 15        mx
L_D109F8:
    DEY                     ; $D109F8  88           mx
    DEC $2A                 ; $D109F9  C6 2A        mx
    LDA ($2A)               ; $D109FB  B2 2A        mx
    TAX                     ; $D109FD  AA           mx
    LDA $48                 ; $D109FE  A5 48        mx
    CLC                     ; $D10A00  18           mx
    ADC $D12009,X           ; $D10A01  7F 09 20 D1  mx
    STA $48                 ; $D10A05  85 48        mx
    LDA [$3E],Y             ; $D10A07  B7 3E        mx
    CMP #$20                ; $D10A09  C9 20        mx
    BNE L_D109F8            ; $D10A0B  D0 EB        mx
L_D10A0D:
    INY                     ; $D10A0D  C8           mx
L_D10A0E:
    REP #$30                ; $D10A0E  C2 30        mx
    RTS                     ; $D10A10  60           MX
L_D10A11:
    LDX #$1A                ; $D10A11  A2 1A        mx
L_D10A13:
    CMP $D11FDC,X           ; $D10A13  DF DC 1F D1  mx
    BEQ L_D10A1C            ; $D10A17  F0 03        mx
    INX                     ; $D10A19  E8           mx
    BRA L_D10A13            ; $D10A1A  80 F7        mx
L_D10A1C:
    RTS                     ; $D10A1C  60           mx
L_D10A1D:
    LDA #$0001              ; $D10A1D  A9 01 00     MX
    STA $4A                 ; $D10A20  85 4A        MX
    LDA $48                 ; $D10A22  A5 48        MX
    LSR                     ; $D10A24  4A           MX
    CLC                     ; $D10A25  18           MX
    ADC $60                 ; $D10A26  65 60        MX
    STA $5E                 ; $D10A28  85 5E        MX
    LDA $2A                 ; $D10A2A  A5 2A        MX
    SEC                     ; $D10A2C  38           MX
    SBC #$0200              ; $D10A2D  E9 00 02     MX
    BEQ L_D10A57            ; $D10A30  F0 25        MX
    STA $2A                 ; $D10A32  85 2A        MX
    LDY #$0000              ; $D10A34  A0 00 00     MX
L_D10A37:
    LDA $0200,Y             ; $D10A37  B9 00 02     MX
    AND #$00FF              ; $D10A3A  29 FF 00     MX
    TAX                     ; $D10A3D  AA           MX
    CMP #$001A              ; $D10A3E  C9 1A 00     MX
    BEQ L_D10A46            ; $D10A41  F0 03        MX
    JSR L_D10A58            ; $D10A43  20 58 0A     MX
L_D10A46:
    SEP #$20                ; $D10A46  E2 20        MX
    LDA $5E                 ; $D10A48  A5 5E        mX
    CLC                     ; $D10A4A  18           mX
    ADC $F4E0,X             ; $D10A4B  7D E0 F4     mX
    STA $5E                 ; $D10A4E  85 5E        mX
    REP #$20                ; $D10A50  C2 20        mX
    INY                     ; $D10A52  C8           MX
    CPY $2A                 ; $D10A53  C4 2A        MX
    BCC L_D10A37            ; $D10A55  90 E0        MX
L_D10A57:
    RTS                     ; $D10A57  60           MX
L_D10A58:
    PHX                     ; $D10A58  DA           MX
    PHY                     ; $D10A59  5A           MX
    ASL                     ; $D10A5A  0A           MX
    ASL                     ; $D10A5B  0A           MX
    TAX                     ; $D10A5C  AA           MX
    LDY $18FE               ; $D10A5D  AC FE 18     MX
    LDA $7FBE20,X           ; $D10A60  BF 20 BE 7F  MX
    STA $1906,Y             ; $D10A64  99 06 19     MX
    SEP #$20                ; $D10A67  E2 20        MX
    LDA $5E                 ; $D10A69  A5 5E        mX
    STA $1904,Y             ; $D10A6B  99 04 19     mX
    LDA $62                 ; $D10A6E  A5 62        mX
    STA $1905,Y             ; $D10A70  99 05 19     mX
    REP #$20                ; $D10A73  C2 20        mX
    DEY                     ; $D10A75  88           MX
    DEY                     ; $D10A76  88           MX
    DEY                     ; $D10A77  88           MX
    DEY                     ; $D10A78  88           MX
    STY $18FE               ; $D10A79  8C FE 18     MX
    PLY                     ; $D10A7C  7A           MX
    PLX                     ; $D10A7D  FA           MX
    RTS                     ; $D10A7E  60           MX
L_D10A7F:
    SEP #$20                ; $D10A7F  E2 20        MX
    LDA #$03                ; $D10A81  A9 03        mX
    STA $002105             ; $D10A83  8F 05 21 00  mX
    LDA #$12                ; $D10A87  A9 12        mX
    TRB $ED                 ; $D10A89  14 ED        mX
    TRB $EF                 ; $D10A8B  14 EF        mX
    REP #$20                ; $D10A8D  C2 20        mX
    RTS                     ; $D10A8F  60           MX
L_D10A90:
    SEP #$20                ; $D10A90  E2 20        MX
    LDA #$00                ; $D10A92  A9 00        mX
    STA $00420C             ; $D10A94  8F 0C 42 00  mX
    STA $004200             ; $D10A98  8F 00 42 00  mX
    STA $0B                 ; $D10A9C  85 0B        mX
    REP #$20                ; $D10A9E  C2 20        mX
    LDA #$0B68              ; $D10AA0  A9 68 0B     MX
    STA $00                 ; $D10AA3  85 00        MX
    LDA #$00D1              ; $D10AA5  A9 D1 00     MX
    STA $02                 ; $D10AA8  85 02        MX
    LDA #$0B89              ; $D10AAA  A9 89 0B     MX
    STA $04                 ; $D10AAD  85 04        MX
    LDA #$00D1              ; $D10AAF  A9 D1 00     MX
    STA $06                 ; $D10AB2  85 06        MX
    LDA #$0013              ; $D10AB4  A9 13 00     MX
    LDX #$0A7D              ; $D10AB7  A2 7D 0A     MX
    LDY #$00DF              ; $D10ABA  A0 DF 00     MX
    PHB                     ; $D10ABD  8B           MX
    MVN $D0,$00             ; $D10ABE  54 00 D0     MX
    PLB                     ; $D10AC1  AB           MX
    LDA #$3200              ; $D10AC2  A9 00 32     MX
    STA $004340             ; $D10AC5  8F 40 43 00  MX
    LDA #$9863              ; $D10AC9  A9 63 98     MX
    STA $004342             ; $D10ACC  8F 42 43 00  MX
    LDA #$0F03              ; $D10AD0  A9 03 0F     MX
    STA $004350             ; $D10AD3  8F 50 43 00  MX
    LDA #$00DF              ; $D10AD7  A9 DF 00     MX
    STA $004352             ; $D10ADA  8F 52 43 00  MX
    LDA #$0B00              ; $D10ADE  A9 00 0B     MX
    STA $004360             ; $D10AE1  8F 60 43 00  MX
    LDA #$00E5              ; $D10AE5  A9 E5 00     MX
    STA $004362             ; $D10AE8  8F 62 43 00  MX
    LDA #$2C00              ; $D10AEC  A9 00 2C     MX
    STA $004370             ; $D10AEF  8F 70 43 00  MX
    LDA #$00EC              ; $D10AF3  A9 EC 00     MX
    STA $004372             ; $D10AF6  8F 72 43 00  MX
    SEP #$20                ; $D10AFA  E2 20        MX
    LDA #$D1                ; $D10AFC  A9 D1        mX
    STA $004344             ; $D10AFE  8F 44 43 00  mX
    LDA #$00                ; $D10B02  A9 00        mX
    STA $004354             ; $D10B04  8F 54 43 00  mX
    STA $004364             ; $D10B08  8F 64 43 00  mX
    STA $004374             ; $D10B0C  8F 74 43 00  mX
    LDA #$E0                ; $D10B10  A9 E0        mX
    STA $DE                 ; $D10B12  85 DE        mX
    LDA #$00                ; $D10B14  A9 00        mX
    STA $002131             ; $D10B16  8F 31 21 00  mX
    LDA #$7C                ; $D10B1A  A9 7C        mX
    STA $002107             ; $D10B1C  8F 07 21 00  mX
    LDA #$78                ; $D10B20  A9 78        mX
    STA $002108             ; $D10B22  8F 08 21 00  mX
    LDA #$02                ; $D10B26  A9 02        mX
    STA $002101             ; $D10B28  8F 01 21 00  mX
    LDA #$01                ; $D10B2C  A9 01        mX
    STA $002105             ; $D10B2E  8F 05 21 00  mX
    DEC                     ; $D10B32  3A           mX
    STA $00210D             ; $D10B33  8F 0D 21 00  mX
    STA $00210D             ; $D10B37  8F 0D 21 00  mX
    STA $00210E             ; $D10B3B  8F 0E 21 00  mX
    STA $00210E             ; $D10B3F  8F 0E 21 00  mX
    LDA #$40                ; $D10B43  A9 40        mX
    STA $0A                 ; $D10B45  85 0A        mX
    STA $004209             ; $D10B47  8F 09 42 00  mX
    LDA #$00                ; $D10B4B  A9 00        mX
    STA $00420A             ; $D10B4D  8F 0A 42 00  mX
    LDA #$A1                ; $D10B51  A9 A1        mX
    STA $004200             ; $D10B53  8F 00 42 00  mX
    STA $0B                 ; $D10B57  85 0B        mX
    CLI                     ; $D10B59  58           mX
    REP #$20                ; $D10B5A  C2 20        mX
    JSL L_C309F1            ; $D10B5C  22 F1 09 C3  MX
    JSL L_C30996            ; $D10B60  22 96 09 C3  MX
    STZ $1900               ; $D10B64  9C 00 19     MX
    RTS                     ; $D10B67  60           MX
    db $DA,$5A,$08,$C2,$30,$48,$E2,$20,$AF,$11,$42,$00,$A5,$0A,$49,$80 ; $D10B68
    db $85,$0A,$8F,$09,$42,$00,$22,$F1,$02,$C2,$C2,$20,$68,$28,$7A,$FA ; $D10B78
    db $40,$C2,$20,$E6,$66,$E2,$20,$48,$AF,$10,$42,$00,$68,$40         ; $D10B88
L_D10B96:
    JSR L_D10BC0            ; $D10B96  20 C0 0B     MX
    JSR L_D10C12            ; $D10B99  20 12 0C     MX
    SEP #$20                ; $D10B9C  E2 20        MX
    LDA #$01                ; $D10B9E  A9 01        mX
    STA $002105             ; $D10BA0  8F 05 21 00  mX
    REP #$20                ; $D10BA4  C2 20        mX
    JSR L_D10CCA            ; $D10BA6  20 CA 0C     MX
    JSR L_D10F93            ; $D10BA9  20 93 0F     MX
    JSR L_D1102B            ; $D10BAC  20 2B 10     MX
    SEP #$20                ; $D10BAF  E2 20        MX
    LDA #$00                ; $D10BB1  A9 00        mX
    STA $00420C             ; $D10BB3  8F 0C 42 00  mX
    STA $004200             ; $D10BB7  8F 00 42 00  mX
    STA $0B                 ; $D10BBB  85 0B        mX
    REP #$20                ; $D10BBD  C2 20        mX
    RTL                     ; $D10BBF  6B           MX
L_D10BC0:
    JSR L_D10A90            ; $D10BC0  20 90 0A     MX
    LDA #$0800              ; $D10BC3  A9 00 08     MX
    STA $09FE               ; $D10BC6  8D FE 09     MX
    LDA #$07FD              ; $D10BC9  A9 FD 07     MX
    LDX #$09FE              ; $D10BCC  A2 FE 09     MX
    LDY #$0A00              ; $D10BCF  A0 00 0A     MX
    PHB                     ; $D10BD2  8B           MX
    MVN $7E,$7E             ; $D10BD3  54 7E 7E     MX
    PLB                     ; $D10BD6  AB           MX
    LDA #$7800              ; $D10BD7  A9 00 78     MX
    JSR L_D10402            ; $D10BDA  20 02 04     MX
    LDA #$7000              ; $D10BDD  A9 00 70     MX
    STA $002116             ; $D10BE0  8F 16 21 00  MX
    LDA #$FFFF              ; $D10BE4  A9 FF FF     MX
    LDX #$0010              ; $D10BE7  A2 10 00     MX
L_D10BEA:
    STA $002118             ; $D10BEA  8F 18 21 00  MX
    DEX                     ; $D10BEE  CA           MX
    BNE L_D10BEA            ; $D10BEF  D0 F9        MX
    SEP #$20                ; $D10BF1  E2 20        MX
    LDA #$2F                ; $D10BF3  A9 2F        mX
    STA $002121             ; $D10BF5  8F 21 21 00  mX
    LDA #$00                ; $D10BF9  A9 00        mX
    STA $002122             ; $D10BFB  8F 22 21 00  mX
    STA $002122             ; $D10BFF  8F 22 21 00  mX
    LDA #$70                ; $D10C03  A9 70        mX
    STA $E6                 ; $D10C05  85 E6        mX
    STA $E8                 ; $D10C07  85 E8        mX
    LDA #$02                ; $D10C09  A9 02        mX
    TSB $ED                 ; $D10C0B  04 ED        mX
    TSB $EF                 ; $D10C0D  04 EF        mX
    REP #$20                ; $D10C0F  C2 20        mX
    RTS                     ; $D10C11  60           MX
L_D10C12:
    SEP #$20                ; $D10C12  E2 20        MX
    LDA #$03                ; $D10C14  A9 03        mX
    STA $002105             ; $D10C16  8F 05 21 00  mX
    REP #$20                ; $D10C1A  C2 20        mX
    PEA $2036               ; $D10C1C  F4 36 20     MX
    PEA $00D1               ; $D10C1F  F4 D1 00     MX
    PEA $0000               ; $D10C22  F4 00 00     MX
    PEA $007F               ; $D10C25  F4 7F 00     MX
    JSL L_C30000            ; $D10C28  22 00 00 C3  MX
    PLA                     ; $D10C2C  68           MX
    PLA                     ; $D10C2D  68           MX
    PLA                     ; $D10C2E  68           MX
    PLA                     ; $D10C2F  68           MX
    STZ $09FE               ; $D10C30  9C FE 09     MX
    LDA #$07FD              ; $D10C33  A9 FD 07     MX
    LDX #$09FE              ; $D10C36  A2 FE 09     MX
    LDY #$0A00              ; $D10C39  A0 00 0A     MX
    PHB                     ; $D10C3C  8B           MX
    MVN $7E,$7E             ; $D10C3D  54 7E 7E     MX
    PLB                     ; $D10C40  AB           MX
    LDA #$0000              ; $D10C41  A9 00 00     MX
    STA $002116             ; $D10C44  8F 16 21 00  MX
    LDX #$0040              ; $D10C48  A2 40 00     MX
    LDY #$00C0              ; $D10C4B  A0 C0 00     MX
    JSR L_D1045E            ; $D10C4E  20 5E 04     MX
    ASL                     ; $D10C51  0A           MX
    ASL                     ; $D10C52  0A           MX
    ASL                     ; $D10C53  0A           MX
    ASL                     ; $D10C54  0A           MX
    ASL                     ; $D10C55  0A           MX
    ASL                     ; $D10C56  0A           MX
    LDY #$007F              ; $D10C57  A0 7F 00     MX
    JSL L_C308A0            ; $D10C5A  22 A0 08 C3  MX
    LDA #$007F              ; $D10C5E  A9 7F 00     MX
    LDX #$0000              ; $D10C61  A2 00 00     MX
    LDY #$0040              ; $D10C64  A0 40 00     MX
    JSL L_C302A8            ; $D10C67  22 A8 02 C3  MX
    LDA #$7C00              ; $D10C6B  A9 00 7C     MX
    JSR L_D10402            ; $D10C6E  20 02 04     MX
    JSL L_C20489            ; $D10C71  22 89 04 C2  MX
    LDA #$0040              ; $D10C75  A9 40 00     MX
    JSL L_C30A55            ; $D10C78  22 55 0A C3  MX
    LDA #$001D              ; $D10C7C  A9 1D 00     MX
    JSL L_C2010F            ; $D10C7F  22 0F 01 C2  MX
    LDA #$000A              ; $D10C83  A9 0A 00     MX
    TAX                     ; $D10C86  AA           MX
    LDY #$0020              ; $D10C87  A0 20 00     MX
L_D10C8A:
    JSR L_D10C98            ; $D10C8A  20 98 0C     MX
    DEX                     ; $D10C8D  CA           MX
    BNE L_D10C8A            ; $D10C8E  D0 FA        MX
    LDA #$0013              ; $D10C90  A9 13 00     MX
    JSL L_C20445            ; $D10C93  22 45 04 C2  MX
    RTS                     ; $D10C97  60           MX
L_D10C98:
    PHA                     ; $D10C98  48           MX
    PHX                     ; $D10C99  DA           MX
    PHY                     ; $D10C9A  5A           MX
    TYX                     ; $D10C9B  BB           MX
    LDA $7F0000,X           ; $D10C9C  BF 00 00 7F  MX
    PHA                     ; $D10CA0  48           MX
    INX                     ; $D10CA1  E8           MX
    INX                     ; $D10CA2  E8           MX
    LDA $07,S               ; $D10CA3  A3 07        MX
    DEC                     ; $D10CA5  3A           MX
    ASL                     ; $D10CA6  0A           MX
    DEC                     ; $D10CA7  3A           MX
    PHB                     ; $D10CA8  8B           MX
    MVN $7F,$7F             ; $D10CA9  54 7F 7F     MX
    PLB                     ; $D10CAC  AB           MX
    TYX                     ; $D10CAD  BB           MX
    PLA                     ; $D10CAE  68           MX
    STA $7F0000,X           ; $D10CAF  9F 00 00 7F  MX
    LDA $66                 ; $D10CB3  A5 66        MX
L_D10CB5:
    CMP $66                 ; $D10CB5  C5 66        MX
    BEQ L_D10CB5            ; $D10CB7  F0 FC        MX
    LDA #$007F              ; $D10CB9  A9 7F 00     MX
    LDX #$0000              ; $D10CBC  A2 00 00     MX
    LDY #$0040              ; $D10CBF  A0 40 00     MX
    JSL L_C302A8            ; $D10CC2  22 A8 02 C3  MX
    PLY                     ; $D10CC6  7A           MX
    PLX                     ; $D10CC7  FA           MX
    PLA                     ; $D10CC8  68           MX
    RTS                     ; $D10CC9  60           MX
L_D10CCA:
    PEA $3F0A               ; $D10CCA  F4 0A 3F     MX
    PEA $00D1               ; $D10CCD  F4 D1 00     MX
    PEA $0000               ; $D10CD0  F4 00 00     MX
    PEA $007F               ; $D10CD3  F4 7F 00     MX
    JSL L_C30000            ; $D10CD6  22 00 00 C3  MX
    PLA                     ; $D10CDA  68           MX
    PLA                     ; $D10CDB  68           MX
    PLA                     ; $D10CDC  68           MX
    PLA                     ; $D10CDD  68           MX
    PEA $8079               ; $D10CDE  F4 79 80     MX
    PEA $00D1               ; $D10CE1  F4 D1 00     MX
    PEA $8000               ; $D10CE4  F4 00 80     MX
    PEA $007F               ; $D10CE7  F4 7F 00     MX
    JSL L_C30000            ; $D10CEA  22 00 00 C3  MX
    PLA                     ; $D10CEE  68           MX
    PLA                     ; $D10CEF  68           MX
    PLA                     ; $D10CF0  68           MX
    PLA                     ; $D10CF1  68           MX
    PEA $85A7               ; $D10CF2  F4 A7 85     MX
    PEA $00D1               ; $D10CF5  F4 D1 00     MX
    PEA $8800               ; $D10CF8  F4 00 88     MX
    PEA $007F               ; $D10CFB  F4 7F 00     MX
    JSL L_C30000            ; $D10CFE  22 00 00 C3  MX
    PLA                     ; $D10D02  68           MX
    PLA                     ; $D10D03  68           MX
    PLA                     ; $D10D04  68           MX
    PLA                     ; $D10D05  68           MX
    LDA $66                 ; $D10D06  A5 66        MX
L_D10D08:
    CMP $66                 ; $D10D08  C5 66        MX
    BEQ L_D10D08            ; $D10D0A  F0 FC        MX
    LDA #$007F              ; $D10D0C  A9 7F 00     MX
    LDX #$0000              ; $D10D0F  A2 00 00     MX
    LDY #$0020              ; $D10D12  A0 20 00     MX
    JSL L_C302A8            ; $D10D15  22 A8 02 C3  MX
    LDA #$C07F              ; $D10D19  A9 7F C0     MX
    LDX #$8000              ; $D10D1C  A2 00 80     MX
    LDY #$0020              ; $D10D1F  A0 20 00     MX
    JSL L_C302A8            ; $D10D22  22 A8 02 C3  MX
    LDA #$D07F              ; $D10D26  A9 7F D0     MX
    LDX #$8800              ; $D10D29  A2 00 88     MX
    LDY #$0020              ; $D10D2C  A0 20 00     MX
    JSL L_C302A8            ; $D10D2F  22 A8 02 C3  MX
    LDA #$0000              ; $D10D33  A9 00 00     MX
    STA $002116             ; $D10D36  8F 16 21 00  MX
    LDX #$08E4              ; $D10D3A  A2 E4 08     MX
    LDY #$007F              ; $D10D3D  A0 7F 00     MX
L_D10D40:
    LDA $66                 ; $D10D40  A5 66        MX
L_D10D42:
    CMP $66                 ; $D10D42  C5 66        MX
    BEQ L_D10D42            ; $D10D44  F0 FC        MX
    LDA #$1400              ; $D10D46  A9 00 14     MX
    JSL L_C308A0            ; $D10D49  22 A0 08 C3  MX
    TXA                     ; $D10D4D  8A           MX
    CLC                     ; $D10D4E  18           MX
    ADC #$1400              ; $D10D4F  69 00 14     MX
    TAX                     ; $D10D52  AA           MX
    CMP #$5000              ; $D10D53  C9 00 50     MX
    BCC L_D10D40            ; $D10D56  90 E8        MX
    PHB                     ; $D10D58  8B           MX
    PEA $007F               ; $D10D59  F4 7F 00     MX
    PLB                     ; $D10D5C  AB           MX
    LDX #$0000              ; $D10D5D  A2 00 00     MX
    TXY                     ; $D10D60  9B           MX
L_D10D61:
    LDA $8022,X             ; $D10D61  BD 22 80     MX
    AND #$00FF              ; $D10D64  29 FF 00     MX
    XBA                     ; $D10D67  EB           MX
    LSR                     ; $D10D68  4A           MX
    CLC                     ; $D10D69  18           MX
    ADC #$8040              ; $D10D6A  69 40 80     MX
    STA $BE20,Y             ; $D10D6D  99 20 BE     MX
    LDA $8022,X             ; $D10D70  BD 22 80     MX
    AND #$FF00              ; $D10D73  29 00 FF     MX
    ORA #$287F              ; $D10D76  09 7F 28     MX
    STA $BE22,Y             ; $D10D79  99 22 BE     MX
    INX                     ; $D10D7C  E8           MX
    INX                     ; $D10D7D  E8           MX
    INY                     ; $D10D7E  C8           MX
    INY                     ; $D10D7F  C8           MX
    INY                     ; $D10D80  C8           MX
    INY                     ; $D10D81  C8           MX
    CPX #$001E              ; $D10D82  E0 1E 00     MX
    BCC L_D10D61            ; $D10D85  90 DA        MX
    LDX #$0000              ; $D10D87  A2 00 00     MX
L_D10D8A:
    LDA $8822,X             ; $D10D8A  BD 22 88     MX
    AND #$00FF              ; $D10D8D  29 FF 00     MX
    ASL                     ; $D10D90  0A           MX
    ASL                     ; $D10D91  0A           MX
    ASL                     ; $D10D92  0A           MX
    ASL                     ; $D10D93  0A           MX
    ASL                     ; $D10D94  0A           MX
    ASL                     ; $D10D95  0A           MX
    ASL                     ; $D10D96  0A           MX
    STA $42                 ; $D10D97  85 42        MX
    ASL                     ; $D10D99  0A           MX
    CLC                     ; $D10D9A  18           MX
    ADC $42                 ; $D10D9B  65 42        MX
    CLC                     ; $D10D9D  18           MX
    ADC #$885E              ; $D10D9E  69 5E 88     MX
    STA $BE20,Y             ; $D10DA1  99 20 BE     MX
    LDA $8822,X             ; $D10DA4  BD 22 88     MX
    AND #$FF00              ; $D10DA7  29 00 FF     MX
    ORA #$2A7F              ; $D10DAA  09 7F 2A     MX
    STA $BE22,Y             ; $D10DAD  99 22 BE     MX
    INX                     ; $D10DB0  E8           MX
    INX                     ; $D10DB1  E8           MX
    INY                     ; $D10DB2  C8           MX
    INY                     ; $D10DB3  C8           MX
    INY                     ; $D10DB4  C8           MX
    INY                     ; $D10DB5  C8           MX
    CPX #$003C              ; $D10DB6  E0 3C 00     MX
    BCC L_D10D8A            ; $D10DB9  90 CF        MX
    PLB                     ; $D10DBB  AB           MX
    PLB                     ; $D10DBC  AB           MX
    STZ $09FE               ; $D10DBD  9C FE 09     MX
    LDA #$07FD              ; $D10DC0  A9 FD 07     MX
    LDX #$09FE              ; $D10DC3  A2 FE 09     MX
    LDY #$0A00              ; $D10DC6  A0 00 0A     MX
    PHB                     ; $D10DC9  8B           MX
    MVN $7E,$7E             ; $D10DCA  54 7E 7E     MX
    PLB                     ; $D10DCD  AB           MX
    JSL L_C30996            ; $D10DCE  22 96 09 C3  MX
    JSL L_C309DF            ; $D10DD2  22 DF 09 C3  MX
    STZ $1B26               ; $D10DD6  9C 26 1B     MX
    LDA #$4000              ; $D10DD9  A9 00 40     MX
    STA $1B24               ; $D10DDC  8D 24 1B     MX
    LDA #$0000              ; $D10DDF  A9 00 00     MX
    JSR L_D10EB5            ; $D10DE2  20 B5 0E     MX
    JSR L_D10EF9            ; $D10DE5  20 F9 0E     MX
    JSR L_D10F46            ; $D10DE8  20 46 0F     MX
    JSR L_D10FC0            ; $D10DEB  20 C0 0F     MX
    JSL L_C0B1AF            ; $D10DEE  22 AF B1 C0  MX
    SEP #$20                ; $D10DF2  E2 20        MX
    LDA #$02                ; $D10DF4  A9 02        mX
    STA $00420B             ; $D10DF6  8F 0B 42 00  mX
    LDA #$10                ; $D10DFA  A9 10        mX
    TSB $ED                 ; $D10DFC  04 ED        mX
    TSB $EF                 ; $D10DFE  04 EF        mX
    INC $EE                 ; $D10E00  E6 EE        mX
    LDA #$2F                ; $D10E02  A9 2F        mX
    STA $002121             ; $D10E04  8F 21 21 00  mX
    LDA $7F0000             ; $D10E08  AF 00 00 7F  mX
    STA $002122             ; $D10E0C  8F 22 21 00  mX
    LDA $7F0001             ; $D10E10  AF 01 00 7F  mX
    STA $002122             ; $D10E14  8F 22 21 00  mX
    REP #$20                ; $D10E18  C2 20        mX
    LDA #$001B              ; $D10E1A  A9 1B 00     MX
    JSL L_C2010F            ; $D10E1D  22 0F 01 C2  MX
    LDA $66                 ; $D10E21  A5 66        MX
L_D10E23:
    CMP $66                 ; $D10E23  C5 66        MX
    BEQ L_D10E23            ; $D10E25  F0 FC        MX
    LDA #$0013              ; $D10E27  A9 13 00     MX
    JSL L_C20466            ; $D10E2A  22 66 04 C2  MX
    LDX #$0000              ; $D10E2E  A2 00 00     MX
L_D10E31:
    PHX                     ; $D10E31  DA           MX
    JSL L_C30996            ; $D10E32  22 96 09 C3  MX
    JSL L_C309DF            ; $D10E36  22 DF 09 C3  MX
    STZ $1B26               ; $D10E3A  9C 26 1B     MX
    PLX                     ; $D10E3D  FA           MX
L_D10E3E:
    LDA $D19391,X           ; $D10E3E  BF 91 93 D1  MX
    INX                     ; $D10E42  E8           MX
    AND #$00FF              ; $D10E43  29 FF 00     MX
    BIT #$0080              ; $D10E46  89 80 00     MX
    BEQ L_D10E4E            ; $D10E49  F0 03        MX
    ORA #$FF00              ; $D10E4B  09 00 FF     MX
L_D10E4E:
    BPL L_D10E60            ; $D10E4E  10 10        MX
    CMP #$FFFF              ; $D10E50  C9 FF FF     MX
    BEQ L_D10E94            ; $D10E53  F0 3F        MX
    LDA $D19391,X           ; $D10E55  BF 91 93 D1  MX
    INX                     ; $D10E59  E8           MX
    INX                     ; $D10E5A  E8           MX
    JSR L_D10EA0            ; $D10E5B  20 A0 0E     MX
    BRA L_D10E3E            ; $D10E5E  80 DE        MX
L_D10E60:
    DEC                     ; $D10E60  3A           MX
    JSR L_D10F46            ; $D10E61  20 46 0F     MX
    LDA $D19391,X           ; $D10E64  BF 91 93 D1  MX
    INX                     ; $D10E68  E8           MX
    AND #$00FF              ; $D10E69  29 FF 00     MX
    DEC                     ; $D10E6C  3A           MX
    PHA                     ; $D10E6D  48           MX
    LDA $D19391,X           ; $D10E6E  BF 91 93 D1  MX
    INX                     ; $D10E72  E8           MX
    AND #$00FF              ; $D10E73  29 FF 00     MX
    DEC                     ; $D10E76  3A           MX
    JSR L_D10EF9            ; $D10E77  20 F9 0E     MX
    PLA                     ; $D10E7A  68           MX
    JSR L_D10EB5            ; $D10E7B  20 B5 0E     MX
    LDA $66                 ; $D10E7E  A5 66        MX
L_D10E80:
    CMP $66                 ; $D10E80  C5 66        MX
    BEQ L_D10E80            ; $D10E82  F0 FC        MX
    JSL L_C0B1AF            ; $D10E84  22 AF B1 C0  MX
    SEP #$20                ; $D10E88  E2 20        MX
    LDA #$02                ; $D10E8A  A9 02        mX
    STA $00420B             ; $D10E8C  8F 0B 42 00  mX
    REP #$20                ; $D10E90  C2 20        mX
    BRA L_D10E31            ; $D10E92  80 9D        MX
L_D10E94:
    LDA #$0040              ; $D10E94  A9 40 00     MX
    JSL L_C30A55            ; $D10E97  22 55 0A C3  MX
    JSL L_C30A2E            ; $D10E9B  22 2E 0A C3  MX
    RTS                     ; $D10E9F  60           MX
L_D10EA0:
    PHX                     ; $D10EA0  DA           MX
    PHA                     ; $D10EA1  48           MX
L_D10EA2:
    LDA $66                 ; $D10EA2  A5 66        MX
L_D10EA4:
    CMP $66                 ; $D10EA4  C5 66        MX
    BEQ L_D10EA4            ; $D10EA6  F0 FC        MX
    JSL L_C203C2            ; $D10EA8  22 C2 03 C2  MX
    LDA $46                 ; $D10EAC  A5 46        MX
    CMP $01,S               ; $D10EAE  C3 01        MX
    BCC L_D10EA2            ; $D10EB0  90 F0        MX
    PLA                     ; $D10EB2  68           MX
    PLX                     ; $D10EB3  FA           MX
    RTS                     ; $D10EB4  60           MX
L_D10EB5:
    PHA                     ; $D10EB5  48           MX
    LDA #$006B              ; $D10EB6  A9 6B 00     MX
    STA $5E                 ; $D10EB9  85 5E        MX
    LDA #$0059              ; $D10EBB  A9 59 00     MX
    STA $62                 ; $D10EBE  85 62        MX
    LDA $01,S               ; $D10EC0  A3 01        MX
    STA $42                 ; $D10EC2  85 42        MX
    ASL                     ; $D10EC4  0A           MX
    CLC                     ; $D10EC5  18           MX
    ADC $42                 ; $D10EC6  65 42        MX
    JSL L_C0BC42            ; $D10EC8  22 42 BC C0  MX
    LDA $5E                 ; $D10ECC  A5 5E        MX
    CLC                     ; $D10ECE  18           MX
    ADC #$0010              ; $D10ECF  69 10 00     MX
    STA $5E                 ; $D10ED2  85 5E        MX
    LDA $01,S               ; $D10ED4  A3 01        MX
    STA $42                 ; $D10ED6  85 42        MX
    ASL                     ; $D10ED8  0A           MX
    CLC                     ; $D10ED9  18           MX
    ADC $42                 ; $D10EDA  65 42        MX
    INC                     ; $D10EDC  1A           MX
    JSL L_C0BC42            ; $D10EDD  22 42 BC C0  MX
    LDA $5E                 ; $D10EE1  A5 5E        MX
    CLC                     ; $D10EE3  18           MX
    ADC #$0010              ; $D10EE4  69 10 00     MX
    STA $5E                 ; $D10EE7  85 5E        MX
    LDA $01,S               ; $D10EE9  A3 01        MX
    STA $42                 ; $D10EEB  85 42        MX
    ASL                     ; $D10EED  0A           MX
    CLC                     ; $D10EEE  18           MX
    ADC $42                 ; $D10EEF  65 42        MX
    INC                     ; $D10EF1  1A           MX
    INC                     ; $D10EF2  1A           MX
    JSL L_C0BC42            ; $D10EF3  22 42 BC C0  MX
    PLA                     ; $D10EF7  68           MX
    RTS                     ; $D10EF8  60           MX
L_D10EF9:
    PHA                     ; $D10EF9  48           MX
    LDA #$006A              ; $D10EFA  A9 6A 00     MX
    STA $5E                 ; $D10EFD  85 5E        MX
    LDA #$0063              ; $D10EFF  A9 63 00     MX
    STA $62                 ; $D10F02  85 62        MX
    LDA $01,S               ; $D10F04  A3 01        MX
    STA $42                 ; $D10F06  85 42        MX
    ASL                     ; $D10F08  0A           MX
    CLC                     ; $D10F09  18           MX
    ADC $42                 ; $D10F0A  65 42        MX
    CLC                     ; $D10F0C  18           MX
    ADC #$0009              ; $D10F0D  69 09 00     MX
    JSL L_C0BC42            ; $D10F10  22 42 BC C0  MX
    LDA $5E                 ; $D10F14  A5 5E        MX
    CLC                     ; $D10F16  18           MX
    ADC #$0010              ; $D10F17  69 10 00     MX
    STA $5E                 ; $D10F1A  85 5E        MX
    LDA $01,S               ; $D10F1C  A3 01        MX
    STA $42                 ; $D10F1E  85 42        MX
    ASL                     ; $D10F20  0A           MX
    CLC                     ; $D10F21  18           MX
    ADC $42                 ; $D10F22  65 42        MX
    CLC                     ; $D10F24  18           MX
    ADC #$000A              ; $D10F25  69 0A 00     MX
    JSL L_C0BC42            ; $D10F28  22 42 BC C0  MX
    LDA $5E                 ; $D10F2C  A5 5E        MX
    CLC                     ; $D10F2E  18           MX
    ADC #$0010              ; $D10F2F  69 10 00     MX
    STA $5E                 ; $D10F32  85 5E        MX
    LDA $01,S               ; $D10F34  A3 01        MX
    STA $42                 ; $D10F36  85 42        MX
    ASL                     ; $D10F38  0A           MX
    CLC                     ; $D10F39  18           MX
    ADC $42                 ; $D10F3A  65 42        MX
    CLC                     ; $D10F3C  18           MX
    ADC #$000B              ; $D10F3D  69 0B 00     MX
    JSL L_C0BC42            ; $D10F40  22 42 BC C0  MX
    PLA                     ; $D10F44  68           MX
    RTS                     ; $D10F45  60           MX
L_D10F46:
    PHA                     ; $D10F46  48           MX
    LDA #$006A              ; $D10F47  A9 6A 00     MX
    STA $5E                 ; $D10F4A  85 5E        MX
    LDA #$006E              ; $D10F4C  A9 6E 00     MX
    STA $62                 ; $D10F4F  85 62        MX
    LDA $01,S               ; $D10F51  A3 01        MX
    STA $42                 ; $D10F53  85 42        MX
    ASL                     ; $D10F55  0A           MX
    CLC                     ; $D10F56  18           MX
    ADC $42                 ; $D10F57  65 42        MX
    CLC                     ; $D10F59  18           MX
    ADC #$000F              ; $D10F5A  69 0F 00     MX
    JSL L_C0BCB7            ; $D10F5D  22 B7 BC C0  MX
    LDA $5E                 ; $D10F61  A5 5E        MX
    CLC                     ; $D10F63  18           MX
    ADC #$0010              ; $D10F64  69 10 00     MX
    STA $5E                 ; $D10F67  85 5E        MX
    LDA $01,S               ; $D10F69  A3 01        MX
    STA $42                 ; $D10F6B  85 42        MX
    ASL                     ; $D10F6D  0A           MX
    CLC                     ; $D10F6E  18           MX
    ADC $42                 ; $D10F6F  65 42        MX
    CLC                     ; $D10F71  18           MX
    ADC #$0010              ; $D10F72  69 10 00     MX
    JSL L_C0BCB7            ; $D10F75  22 B7 BC C0  MX
    LDA $5E                 ; $D10F79  A5 5E        MX
    CLC                     ; $D10F7B  18           MX
    ADC #$0010              ; $D10F7C  69 10 00     MX
    STA $5E                 ; $D10F7F  85 5E        MX
    LDA $01,S               ; $D10F81  A3 01        MX
    STA $42                 ; $D10F83  85 42        MX
    ASL                     ; $D10F85  0A           MX
    CLC                     ; $D10F86  18           MX
    ADC $42                 ; $D10F87  65 42        MX
    CLC                     ; $D10F89  18           MX
    ADC #$0011              ; $D10F8A  69 11 00     MX
    JSL L_C0BCB7            ; $D10F8D  22 B7 BC C0  MX
    PLA                     ; $D10F91  68           MX
    RTS                     ; $D10F92  60           MX
L_D10F93:
    SEP #$20                ; $D10F93  E2 20        MX
    LDA $ED                 ; $D10F95  A5 ED        mX
    AND #$EF                ; $D10F97  29 EF        mX
    STA $ED                 ; $D10F99  85 ED        mX
    STA $EF                 ; $D10F9B  85 EF        mX
    REP #$20                ; $D10F9D  C2 20        mX
    LDA #$0000              ; $D10F9F  A9 00 00     MX
L_D10FA2:
    PHA                     ; $D10FA2  48           MX
    JSR L_D10FC0            ; $D10FA3  20 C0 0F     MX
    LDA #$0005              ; $D10FA6  A9 05 00     MX
    JSL L_C30A55            ; $D10FA9  22 55 0A C3  MX
    PLA                     ; $D10FAD  68           MX
    INC                     ; $D10FAE  1A           MX
    CMP #$0007              ; $D10FAF  C9 07 00     MX
    BCC L_D10FA2            ; $D10FB2  90 EE        MX
    LDA #$0040              ; $D10FB4  A9 40 00     MX
    JSL L_C30A55            ; $D10FB7  22 55 0A C3  MX
    JSL L_C204AB            ; $D10FBB  22 AB 04 C2  MX
    RTS                     ; $D10FBF  60           MX
L_D10FC0:
    TAX                     ; $D10FC0  AA           MX
    AND #$0003              ; $D10FC1  29 03 00     MX
    ASL                     ; $D10FC4  0A           MX
    ASL                     ; $D10FC5  0A           MX
    STA $42                 ; $D10FC6  85 42        MX
    ASL                     ; $D10FC8  0A           MX
    ASL                     ; $D10FC9  0A           MX
    CLC                     ; $D10FCA  18           MX
    ADC $42                 ; $D10FCB  65 42        MX
    PHA                     ; $D10FCD  48           MX
    TXA                     ; $D10FCE  8A           MX
    AND #$00FC              ; $D10FCF  29 FC 00     MX
    ASL                     ; $D10FD2  0A           MX
    ASL                     ; $D10FD3  0A           MX
    STA $42                 ; $D10FD4  85 42        MX
    ASL                     ; $D10FD6  0A           MX
    ASL                     ; $D10FD7  0A           MX
    CLC                     ; $D10FD8  18           MX
    ADC $42                 ; $D10FD9  65 42        MX
    STA $42                 ; $D10FDB  85 42        MX
    ASL                     ; $D10FDD  0A           MX
    ASL                     ; $D10FDE  0A           MX
    STA $44                 ; $D10FDF  85 44        MX
    ASL                     ; $D10FE1  0A           MX
    CLC                     ; $D10FE2  18           MX
    ADC $44                 ; $D10FE3  65 44        MX
    CLC                     ; $D10FE5  18           MX
    ADC $42                 ; $D10FE6  65 42        MX
    CLC                     ; $D10FE8  18           MX
    ADC $01,S               ; $D10FE9  63 01        MX
    CLC                     ; $D10FEB  18           MX
    ADC #$0024              ; $D10FEC  69 24 00     MX
    TAX                     ; $D10FEF  AA           MX
    PLA                     ; $D10FF0  68           MX
    LDY #$01D6              ; $D10FF1  A0 D6 01     MX
    LDA #$000D              ; $D10FF4  A9 0D 00     MX
L_D10FF7:
    PHA                     ; $D10FF7  48           MX
    PHX                     ; $D10FF8  DA           MX
    PHY                     ; $D10FF9  5A           MX
    LDA #$000A              ; $D10FFA  A9 0A 00     MX
    STA $46                 ; $D10FFD  85 46        MX
L_D10FFF:
    LDA $7F0000,X           ; $D10FFF  BF 00 00 7F  MX
    STA $09FE,Y             ; $D11003  99 FE 09     MX
    INX                     ; $D11006  E8           MX
    INX                     ; $D11007  E8           MX
    INY                     ; $D11008  C8           MX
    INY                     ; $D11009  C8           MX
    DEC $46                 ; $D1100A  C6 46        MX
    BNE L_D10FFF            ; $D1100C  D0 F1        MX
    PLA                     ; $D1100E  68           MX
    CLC                     ; $D1100F  18           MX
    ADC #$0040              ; $D11010  69 40 00     MX
    TAY                     ; $D11013  A8           MX
    PLA                     ; $D11014  68           MX
    CLC                     ; $D11015  18           MX
    ADC #$0050              ; $D11016  69 50 00     MX
    TAX                     ; $D11019  AA           MX
    PLA                     ; $D1101A  68           MX
    DEC                     ; $D1101B  3A           MX
    BNE L_D10FF7            ; $D1101C  D0 D9        MX
    LDA $66                 ; $D1101E  A5 66        MX
L_D11020:
    CMP $66                 ; $D11020  C5 66        MX
    BEQ L_D11020            ; $D11022  F0 FC        MX
    LDA #$7C00              ; $D11024  A9 00 7C     MX
    JSR L_D10402            ; $D11027  20 02 04     MX
    RTS                     ; $D1102A  60           MX
L_D1102B:
    JSR L_D10080            ; $D1102B  20 80 00     MX
    JSR L_D100DB            ; $D1102E  20 DB 00     MX
    JSR L_D11152            ; $D11031  20 52 11     MX
    JSL L_C309DF            ; $D11034  22 DF 09 C3  MX
    STZ $1B26               ; $D11038  9C 26 1B     MX
    LDA #$4000              ; $D1103B  A9 00 40     MX
    STA $1B24               ; $D1103E  8D 24 1B     MX
    LDA #$00D1              ; $D11041  A9 D1 00     MX
    STA $40                 ; $D11044  85 40        MX
    JSR L_D1106A            ; $D11046  20 6A 10     MX
    LDA #$001C              ; $D11049  A9 1C 00     MX
    JSL L_C2010F            ; $D1104C  22 0F 01 C2  MX
    LDA #$00E0              ; $D11050  A9 E0 00     MX
L_D11053:
    JSR L_D110C1            ; $D11053  20 C1 10     MX
    DEC                     ; $D11056  3A           MX
    BPL L_D11053            ; $D11057  10 FA        MX
    CMP #$FB69              ; $D11059  C9 69 FB     MX
    BCS L_D11053            ; $D1105C  B0 F5        MX
    LDA #$0200              ; $D1105E  A9 00 02     MX
    JSL L_C30A55            ; $D11061  22 55 0A C3  MX
    JSL L_C204AB            ; $D11065  22 AB 04 C2  MX
    RTS                     ; $D11069  60           MX
L_D1106A:
    LDX #$0000              ; $D1106A  A2 00 00     MX
    LDY #$68E0              ; $D1106D  A0 E0 68     MX
L_D11070:
    LDA $D196C2,X           ; $D11070  BF C2 96 D1  MX
    BMI L_D110BA            ; $D11074  30 44        MX
    CLC                     ; $D11076  18           MX
    ADC #$96C2              ; $D11077  69 C2 96     MX
    STA $3E                 ; $D1107A  85 3E        MX
    LDA #$0001              ; $D1107C  A9 01 00     MX
    STA $5E                 ; $D1107F  85 5E        MX
    STA $60                 ; $D11081  85 60        MX
    LDA #$00FF              ; $D11083  A9 FF 00     MX
    STA $64                 ; $D11086  85 64        MX
    PHX                     ; $D11088  DA           MX
    PHY                     ; $D11089  5A           MX
    LDY #$0000              ; $D1108A  A0 00 00     MX
    JSR L_D109BF            ; $D1108D  20 BF 09     MX
    PLY                     ; $D11090  7A           MX
    LDA $48                 ; $D11091  A5 48        MX
    STA $0000,Y             ; $D11093  99 00 00     MX
    INY                     ; $D11096  C8           MX
    INY                     ; $D11097  C8           MX
    LDA $60                 ; $D11098  A5 60        MX
    STA $0000,Y             ; $D1109A  99 00 00     MX
    INY                     ; $D1109D  C8           MX
    INY                     ; $D1109E  C8           MX
    LDA $2A                 ; $D1109F  A5 2A        MX
    STA $0000,Y             ; $D110A1  99 00 00     MX
    INY                     ; $D110A4  C8           MX
    INY                     ; $D110A5  C8           MX
    SEC                     ; $D110A6  38           MX
    SBC #$0200              ; $D110A7  E9 00 02     MX
    BEQ L_D110B5            ; $D110AA  F0 09        MX
    DEC                     ; $D110AC  3A           MX
    LDX #$0200              ; $D110AD  A2 00 02     MX
    PHB                     ; $D110B0  8B           MX
    MVN $7E,$7E             ; $D110B1  54 7E 7E     MX
    PLB                     ; $D110B4  AB           MX
L_D110B5:
    PLX                     ; $D110B5  FA           MX
    INX                     ; $D110B6  E8           MX
    INX                     ; $D110B7  E8           MX
    BRA L_D11070            ; $D110B8  80 B6        MX
L_D110BA:
    LDA #$FFFF              ; $D110BA  A9 FF FF     MX
    STA $0000,Y             ; $D110BD  99 00 00     MX
    RTS                     ; $D110C0  60           MX
L_D110C1:
    PHA                     ; $D110C1  48           MX
    STA $62                 ; $D110C2  85 62        MX
    JSL L_C30996            ; $D110C4  22 96 09 C3  MX
    LDX $1B26               ; $D110C8  AE 26 1B     MX
    PHX                     ; $D110CB  DA           MX
    LDX #$68E0              ; $D110CC  A2 E0 68     MX
L_D110CF:
    LDA $0000,X             ; $D110CF  BD 00 00     MX
    BMI L_D1111E            ; $D110D2  30 4A        MX
    STA $48                 ; $D110D4  85 48        MX
    LDA $62                 ; $D110D6  A5 62        MX
    BPL L_D110EB            ; $D110D8  10 11        MX
    CMP #$FFF0              ; $D110DA  C9 F0 FF     MX
    BCS L_D110EB            ; $D110DD  B0 0C        MX
    TXA                     ; $D110DF  8A           MX
    CLC                     ; $D110E0  18           MX
    ADC $0004,X             ; $D110E1  7D 04 00     MX
    SEC                     ; $D110E4  38           MX
    SBC #$01FA              ; $D110E5  E9 FA 01     MX
    TAX                     ; $D110E8  AA           MX
    BRA L_D1110F            ; $D110E9  80 24        MX
L_D110EB:
    INX                     ; $D110EB  E8           MX
    INX                     ; $D110EC  E8           MX
    LDA $0000,X             ; $D110ED  BD 00 00     MX
    STA $60                 ; $D110F0  85 60        MX
    INX                     ; $D110F2  E8           MX
    INX                     ; $D110F3  E8           MX
    LDA $0000,X             ; $D110F4  BD 00 00     MX
    STA $2A                 ; $D110F7  85 2A        MX
    INX                     ; $D110F9  E8           MX
    INX                     ; $D110FA  E8           MX
    SEC                     ; $D110FB  38           MX
    SBC #$0200              ; $D110FC  E9 00 02     MX
    BEQ L_D1110F            ; $D110FF  F0 0E        MX
    DEC                     ; $D11101  3A           MX
    LDY #$0200              ; $D11102  A0 00 02     MX
    PHB                     ; $D11105  8B           MX
    MVN $7E,$7E             ; $D11106  54 7E 7E     MX
    PLB                     ; $D11109  AB           MX
    PHX                     ; $D1110A  DA           MX
    JSR L_D10A1D            ; $D1110B  20 1D 0A     MX
    PLX                     ; $D1110E  FA           MX
L_D1110F:
    LDA $62                 ; $D1110F  A5 62        MX
    CLC                     ; $D11111  18           MX
    ADC #$0018              ; $D11112  69 18 00     MX
    STA $62                 ; $D11115  85 62        MX
    BMI L_D110CF            ; $D11117  30 B6        MX
    CMP #$00E0              ; $D11119  C9 E0 00     MX
    BCC L_D110CF            ; $D1111C  90 B1        MX
L_D1111E:
    BPL L_D11135            ; $D1111E  10 15        MX
    LDA #$9848              ; $D11120  A9 48 98     MX
    STA $26                 ; $D11123  85 26        MX
    LDA #$00D1              ; $D11125  A9 D1 00     MX
    STA $28                 ; $D11128  85 28        MX
    LDA #$0001              ; $D1112A  A9 01 00     MX
    STA $5E                 ; $D1112D  85 5E        MX
    LDA #$00FF              ; $D1112F  A9 FF 00     MX
    JSR L_D10481            ; $D11132  20 81 04     MX
L_D11135:
    PLX                     ; $D11135  FA           MX
    LDA $66                 ; $D11136  A5 66        MX
L_D11138:
    CMP $66                 ; $D11138  C5 66        MX
    BEQ L_D11138            ; $D1113A  F0 FC        MX
    JSL L_C0B1D0            ; $D1113C  22 D0 B1 C0  MX
    SEP #$20                ; $D11140  E2 20        MX
    LDA #$02                ; $D11142  A9 02        mX
    STA $00420B             ; $D11144  8F 0B 42 00  mX
    LDA #$10                ; $D11148  A9 10        mX
    STA $ED                 ; $D1114A  85 ED        mX
    STA $EF                 ; $D1114C  85 EF        mX
    REP #$20                ; $D1114E  C2 20        mX
    PLA                     ; $D11150  68           MX
    RTS                     ; $D11151  60           MX
L_D11152:
    SEP #$20                ; $D11152  E2 20        MX
    LDA #$90                ; $D11154  A9 90        mX
    STA $002131             ; $D11156  8F 31 21 00  mX
    LDA #$F0                ; $D1115A  A9 F0        mX
    STA $00420C             ; $D1115C  8F 0C 42 00  mX
    LDA #$00                ; $D11160  A9 00        mX
    STA $ED                 ; $D11162  85 ED        mX
    STA $EF                 ; $D11164  85 EF        mX
    STA $002121             ; $D11166  8F 21 21 00  mX
    STA $002122             ; $D1116A  8F 22 21 00  mX
    STA $002122             ; $D1116E  8F 22 21 00  mX
    LDA #$0F                ; $D11172  A9 0F        mX
    STA $002100             ; $D11174  8F 00 21 00  mX
    REP #$20                ; $D11178  C2 20        mX
    RTS                     ; $D1117A  60           MX
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
    db $1D,$B1,$00,$F0,$3B,$FB,$1D,$20,$00,$C0,$00,$00,$00,$F3,$7F,$6E ; $D11EAB
    db $6F,$EA,$66,$66,$56,$C4,$4D,$42,$45,$C0,$30,$FF,$03,$3D,$03,$BB ; $D11EBB
    db $02,$39,$02,$97,$01,$15,$01,$D1,$00,$CC,$00,$02,$00,$00,$00,$01 ; $D11ECB
    db $00,$00,$00,$01,$00,$03,$00,$03,$00,$07,$00,$02,$01,$0A,$1F,$15 ; $D11EDB
    db $1F,$02,$02,$01,$03,$00,$03,$00,$03,$04,$07,$00,$1F,$00,$1F,$00 ; $D11EEB
    db $1F,$00,$00,$00,$00,$00,$80,$C0,$40,$E0,$20,$A0,$50,$A8,$F0,$50 ; $D11EFB
    db $F8,$00,$00,$00,$00,$80,$80,$40,$C0,$20,$E0,$10,$F0,$08,$F8,$04 ; $D11F0B
    db $FC,$1F,$1F,$1F,$1F,$1F,$1F,$03,$1B,$03,$03,$03,$03,$03,$02,$00 ; $D11F1B
    db $00,$00,$1F,$00,$1F,$00,$1F,$1C,$1F,$00,$03,$00,$03,$01,$03,$02 ; $D11F2B
    db $02,$F8,$F8,$F8,$F0,$E0,$F0,$E0,$E0,$C0,$C0,$00,$80,$00,$00,$00 ; $D11F3B
    db $00,$04,$FC,$08,$F8,$10,$F0,$20,$E0,$40,$C0,$80,$80,$00,$00,$00 ; $D11F4B
    db $00,$00,$00,$00,$00,$00,$01,$03,$02,$07,$04,$05,$0A,$15,$0F,$0A ; $D11F5B
    db $1F,$00,$00,$00,$00,$01,$01,$02,$03,$04,$07,$08,$0F,$10,$1F,$20 ; $D11F6B
    db $3F,$00,$00,$80,$00,$C0,$00,$C0,$00,$E0,$20,$40,$80,$50,$F8,$A8 ; $D11F7B
    db $F8,$40,$40,$80,$C0,$00,$C0,$00,$C0,$00,$E0,$00,$F8,$00,$F8,$00 ; $D11F8B
    db $F8,$1F,$1F,$1F,$0F,$07,$0F,$07,$07,$03,$03,$00,$01,$00,$00,$00 ; $D11F9B
    db $00,$20,$3F,$10,$1F,$08,$0F,$04,$07,$02,$03,$01,$01,$00,$00,$00 ; $D11FAB
    db $00,$F8,$F8,$F8,$F8,$F8,$F8,$C0,$D8,$C0,$C0,$C0,$C0,$C0,$40,$00 ; $D11FBB
    db $00,$00,$F8,$00,$F8,$00,$F8,$38,$F8,$00,$C0,$00,$C0,$80,$C0,$40 ; $D11FCB
    db $40,$61,$62,$63,$64,$65,$66,$67,$68,$69,$6A,$6B,$6C,$6D,$6E,$6F ; $D11FDB
    db $70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$7A,$20,$30,$31,$32,$33 ; $D11FEB
    db $34,$35,$36,$37,$38,$39,$26,$23,$5F,$45,$5F,$2E,$3E,$3C,$0F,$0D ; $D11FFB
    db $0D,$0D,$0C,$0C,$0D,$0D,$07,$0B,$0F,$0C,$11,$0F,$0D,$0C,$0D,$0F ; $D1200B
    db $0C,$0D,$0F,$0F,$11,$0F,$0F,$0D,$08,$10,$10,$10,$10,$10,$10,$10 ; $D1201B
    db $10,$10,$10,$0F,$10,$10,$10,$10,$06,$10,$10,$52,$4E,$43,$02,$00 ; $D1202B
    db $00,$39,$C4,$00,$00,$1E,$C2,$F1,$DD,$6F,$4D,$02,$02,$05,$00,$00 ; $D1203B
    db $DE,$F7,$7B,$1E,$53,$DC,$42,$9A,$3A,$58,$32,$18,$2A,$D6,$21,$94 ; $D1204B
    db $21,$52,$19,$10,$11,$CE,$00,$8C,$00,$8A,$00,$48,$00,$80,$00,$DA ; $D1205B
    db $7B,$56,$6B,$D4,$62,$90,$5A,$4E,$52,$0C,$42,$CA,$31,$88,$29,$46 ; $D1206B
    db $21,$04,$19,$C2,$08,$5E,$52,$D8,$39,$56,$31,$12,$21,$5E,$63,$1C ; $D1207B
    db $00,$20,$79,$42,$93,$00,$01,$47,$05,$02,$85,$2D,$3B,$03,$00,$04 ; $D1208B
    db $C3,$00,$05,$00,$06,$00,$07,$00,$08,$00,$09,$00,$0A,$C2,$27,$3D ; $D1209B
    db $0B,$00,$0C,$E3,$00,$0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12 ; $D120AB
    db $00,$13,$00,$14,$E5,$23,$3D,$15,$CB,$00,$16,$00,$17,$00,$18,$00 ; $D120BB
    db $19,$00,$1A,$00,$1B,$00,$1C,$00,$1D,$00,$1E,$00,$1F,$F0,$23,$6B ; $D120CB
    db $21,$00,$22,$B9,$78,$00,$23,$00,$24,$00,$25,$00,$26,$00,$27,$00 ; $D120DB
    db $28,$00,$29,$00,$2A,$00,$2B,$00,$2C,$21,$3F,$2D,$00,$5C,$2E,$BC ; $D120EB
    db $00,$2F,$00,$30,$00,$31,$00,$32,$00,$33,$00,$34,$00,$35,$00,$36 ; $D120FB
    db $00,$37,$00,$38,$21,$3F,$39,$2E,$00,$3A,$5E,$00,$3B,$00,$3C,$00 ; $D1210B
    db $3D,$00,$3E,$00,$3F,$00,$40,$00,$41,$00,$42,$00,$43,$00,$44,$21 ; $D1211B
    db $3F,$07,$45,$00,$46,$00,$47,$40,$81,$49,$00,$4A,$B8,$78,$00,$4B ; $D1212B
    db $00,$4C,$00,$4D,$00,$4E,$00,$4F,$00,$50,$21,$3F,$51,$00,$5C,$52 ; $D1213B
    db $BC,$00,$53,$00,$54,$00,$55,$00,$56,$00,$57,$00,$58,$00,$59,$00 ; $D1214B
    db $5A,$00,$5B,$00,$5C,$21,$3F,$5D,$2E,$00,$5E,$5E,$00,$5F,$00,$60 ; $D1215B
    db $00,$61,$00,$62,$00,$63,$00,$64,$00,$65,$00,$66,$00,$67,$00,$68 ; $D1216B
    db $21,$3F,$17,$69,$00,$6A,$2F,$00,$6B,$00,$6C,$00,$6D,$00,$6E,$00 ; $D1217B
    db $6F,$00,$70,$00,$71,$00,$72,$00,$73,$00,$74,$21,$2E,$3F,$75,$5D ; $D1218B
    db $00,$76,$00,$77,$00,$78,$00,$79,$00,$7A,$00,$7B,$00,$7C,$00,$7D ; $D1219B
    db $00,$7E,$00,$7F,$3E,$8F,$20,$00,$5C,$81,$7A,$00,$82,$00,$83,$00 ; $D121AB
    db $84,$00,$85,$00,$86,$00,$87,$00,$88,$00,$89,$5D,$CF,$8B,$3E,$D5 ; $D121BB
    db $20,$00,$17,$8D,$00,$8E,$2F,$00,$8F,$00,$90,$00,$91,$00,$92,$00 ; $D121CB
    db $93,$00,$94,$00,$95,$00,$96,$00,$97,$00,$98,$21,$0B,$3F,$99,$00 ; $D121DB
    db $9A,$97,$00,$9B,$00,$9C,$00,$9D,$00,$9E,$00,$9F,$00,$A0,$00,$A1 ; $D121EB
    db $00,$A2,$00,$A3,$00,$A4,$CA,$23,$01,$A5,$E5,$00,$A6,$00,$A7,$00 ; $D121FB
    db $A8,$00,$A9,$00,$AA,$00,$AB,$00,$AC,$00,$AD,$00,$AE,$00,$AF,$E1 ; $D1220B
    db $21,$3D,$B0,$00,$B1,$72,$00,$B2,$00,$B3,$00,$B4,$00,$B5,$00,$B6 ; $D1221B
    db $00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$BB,$F2,$23,$7F,$BC,$E3,$00 ; $D1222B
    db $BD,$00,$BE,$00,$BF,$00,$C0,$00,$C1,$00,$C2,$00,$C3,$00,$C4,$F5 ; $D1223B
    db $2D,$43,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00,$7D,$C9,$95,$FD,$25 ; $D1224B
    db $F7,$00,$E2,$7B,$00,$04,$04,$40,$03,$40,$42,$60,$60,$F5,$0C,$0F ; $D1225B
    db $9F,$00,$0C,$D3,$C9,$10,$10,$19,$03,$28,$28,$05,$38,$C7,$00,$28 ; $D1226B
    db $3D,$01,$08,$0F,$EE,$05,$2B,$78,$01,$0E,$00,$08,$08,$00,$94,$94 ; $D1227B
    db $48,$48,$DC,$DC,$6D,$6D,$F7,$0E,$0F,$80,$1A,$00,$40,$40,$14,$14 ; $D1228B
    db $AA,$AA,$3D,$54,$54,$10,$0F,$E0,$10,$00,$E0,$E2,$C0,$E0,$07,$E1 ; $D1229B
    db $E2,$A0,$E0,$C3,$02,$03,$A1,$C0,$C0,$A0,$06,$0F,$E0,$E3,$06,$70 ; $D122AB
    db $C2,$03,$80,$E1,$1D,$80,$E0,$02,$D7,$F7,$03,$75,$43,$21,$C1,$03 ; $D122BB
    db $61,$00,$60,$F5,$0E,$EF,$03,$81,$02,$02,$01,$81,$03,$37,$00,$43 ; $D122CB
    db $02,$92,$05,$0F,$C3,$42,$0F,$00,$2E,$3D,$C0,$F5,$0F,$83,$C3,$50 ; $D122DB
    db $50,$A8,$A8,$F0,$F0,$F8,$F8,$B8,$F8,$58,$F8,$DE,$0C,$0F,$01,$D3 ; $D122EB
    db $EA,$F8,$CB,$08,$00,$38,$28,$70,$10,$01,$00,$28,$00,$20,$08,$60 ; $D122FB
    db $48,$40,$48,$28,$68,$ED,$71,$31,$01,$40,$78,$81,$01,$28,$58,$10 ; $D1230B
    db $00,$38,$E7,$03,$01,$70,$80,$0F,$81,$02,$03,$05,$07,$02,$06,$0F ; $D1231B
    db $04,$00,$E6,$E2,$04,$05,$0F,$00,$04,$E2,$E6,$A8,$C9,$75,$02,$10 ; $D1232B
    db $8F,$01,$F0,$0E,$00,$20,$E0,$D0,$01,$F0,$20,$30,$00,$10,$0F,$1F ; $D1233B
    db $E7,$0E,$0F,$C0,$67,$45,$10,$EC,$13,$FF,$00,$2E,$01,$2E,$DB,$DB ; $D1234B
    db $50,$51,$DA,$DB,$E9,$10,$0F,$1E,$85,$01,$09,$37,$0C,$FC,$FC,$6A ; $D1235B
    db $6E,$00,$72,$00,$76,$55,$77,$34,$37,$00,$33,$0B,$78,$3A,$06,$0F ; $D1236B
    db $0A,$3B,$51,$00,$B3,$04,$D4,$3A,$91,$03,$87,$4B,$31,$AE,$09,$3F ; $D1237B
    db $3E,$BA,$BA,$7E,$7E,$BC,$BE,$7C,$7E,$3A,$3E,$44,$5C,$81,$81,$00 ; $D1238B
    db $80,$08,$0F,$94,$41,$F7,$FD,$18,$3D,$C5,$F7,$07,$EB,$B8,$E5,$D1 ; $D1239B
    db $F1,$91,$E5,$95,$42,$12,$55,$05,$1A,$4A,$46,$4E,$2F,$07,$90,$0E ; $D123AB
    db $F1,$C2,$85,$F5,$02,$72,$05,$75,$0A,$7A,$46,$7E,$07,$3F,$21,$33 ; $D123BB
    db $70,$33,$01,$38,$E8,$0B,$C3,$2E,$43,$03,$38,$E3,$E3,$C3,$63,$F3 ; $D123CB
    db $F3,$72,$D3,$80,$F3,$D1,$A2,$0B,$78,$03,$C3,$0F,$43,$A3,$C6,$0F ; $D123DB
    db $52,$B3,$0F,$08,$A0,$D3,$08,$7B,$87,$33,$E0,$1D,$03,$E1,$F8,$C1 ; $D123EB
    db $7A,$01,$08,$00,$22,$23,$E1,$58,$B8,$B8,$59,$A8,$1A,$44,$19,$44 ; $D123FB
    db $56,$EB,$F5,$06,$0F,$18,$01,$00,$F9,$08,$FB,$01,$FE,$46,$B9,$ED ; $D1240B
    db $44,$13,$38,$33,$E0,$3D,$F3,$38,$00,$FF,$01,$FE,$F5,$09,$3F,$D6 ; $D1241B
    db $49,$29,$1C,$2D,$CE,$7F,$77,$5F,$A0,$BC,$5C,$64,$A0,$C8,$59,$88 ; $D1242B
    db $29,$59,$2C,$5D,$6E,$9F,$17,$BF,$20,$7C,$44,$FC,$80,$F8,$08,$F9 ; $D1243B
    db $28,$3D,$07,$F1,$00,$E8,$00,$DC,$75,$C5,$78,$CF,$09,$08,$5C,$00 ; $D1244B
    db $A0,$B3,$B5,$11,$12,$B1,$B1,$23,$E3,$1A,$1D,$5D,$62,$7D,$83,$34 ; $D1245B
    db $0C,$B1,$B7,$10,$13,$0F,$18,$00,$1F,$40,$7F,$01,$FF,$04,$FC,$06 ; $D1246B
    db $2B,$00,$03,$3A,$FF,$07,$9C,$89,$7D,$F8,$F5,$09,$3F,$C7,$13,$33 ; $D1247B
    db $9D,$65,$4E,$CA,$8E,$FC,$82,$78,$4C,$BE,$EA,$EE,$67,$79,$03,$0F ; $D1248B
    db $05,$FD,$4A,$CE,$8C,$0C,$2A,$FA,$0C,$FE,$0F,$61,$38,$7F,$20,$33 ; $D1249B
    db $84,$EA,$07,$BF,$FA,$00,$F2,$67,$83,$1E,$84,$09,$3F,$80,$80,$C0 ; $D124AB
    db $C0,$00,$E0,$E0,$F0,$F0,$70,$7B,$70,$08,$0F,$ED,$19,$A3,$49,$01 ; $D124BB
    db $03,$EF,$01,$0E,$07,$7D,$0F,$0C,$BE,$D1,$04,$00,$35,$68,$6E,$65 ; $D124CB
    db $C3,$78,$7B,$A2,$B6,$60,$74,$B6,$B6,$02,$03,$1C,$DC,$CA,$08,$0F ; $D124DB
    db $06,$B5,$CB,$14,$56,$BE,$7F,$01,$0B,$AB,$01,$18,$AF,$29,$30,$28 ; $D124EB
    db $B4,$AC,$D4,$CC,$0C,$54,$89,$D5,$18,$94,$1B,$17,$08,$39,$20,$38 ; $D124FB
    db $A4,$BC,$C4,$DC,$04,$5C,$81,$DD,$10,$9C,$13,$1F,$31,$44,$77,$1D ; $D1250B
    db $01,$58,$63,$3F,$8C,$AD,$D5,$F1,$08,$00,$85,$45,$74,$C2,$22,$ED ; $D1251B
    db $9D,$6B,$47,$32,$21,$70,$78,$BE,$BC,$76,$7F,$05,$C5,$02,$E2,$8D ; $D1252B
    db $FD,$43,$7F,$20,$3F,$70,$7F,$BC,$BF,$CE,$0F,$C0,$CE,$FD,$70,$B5 ; $D1253B
    db $0B,$1F,$DC,$3B,$0B,$03,$8F,$49,$08,$2E,$00,$4B,$BD,$6F,$F9,$EB ; $D1254B
    db $F4,$F5,$58,$FA,$A4,$FD,$81,$7F,$AD,$92,$6F,$61,$4B,$77,$E9,$F7 ; $D1255B
    db $F4,$FB,$5A,$FD,$A5,$FE,$01,$FE,$80,$7F,$61,$9F,$3C,$9D,$73,$0F ; $D1256B
    db $4B,$0B,$5B,$E1,$0F,$3F,$0A,$75,$68,$C2,$F8,$DB,$C1,$03,$B8,$39 ; $D1257B
    db $0B,$5B,$BE,$6A,$F5,$D1,$86,$28,$5B,$C0,$FB,$D1,$EA,$00,$BB,$19 ; $D1258B
    db $A2,$9B,$7C,$E3,$3C,$C2,$3D,$73,$EB,$5D,$89,$3B,$46,$FB,$01,$1C ; $D1259B
    db $E7,$00,$DF,$41,$F1,$08,$00,$B2,$EB,$73,$0B,$E1,$F9,$13,$18,$E1 ; $D125AB
    db $FA,$10,$B8,$E8,$48,$F3,$B3,$E8,$E2,$1B,$E1,$1A,$F3,$08,$03,$F8 ; $D125BB
    db $F1,$0A,$C0,$F3,$5B,$E3,$EB,$13,$F9,$26,$00,$FB,$01,$74,$F8,$7C ; $D125CB
    db $81,$0A,$2E,$3F,$A2,$BC,$10,$F6,$92,$CF,$E6,$FF,$ED,$7E,$9A,$62 ; $D125DB
    db $77,$14,$BF,$B9,$6F,$00,$F3,$92,$75,$C6,$29,$ED,$33,$9A,$66,$72 ; $D125EB
    db $4F,$B4,$CF,$69,$9F,$F3,$77,$07,$EF,$00,$DE,$00,$FC,$70,$0D,$7B ; $D125FB
    db $3E,$00,$F6,$0A,$E2,$7B,$30,$C0,$40,$E3,$81,$81,$65,$66,$D7,$D8 ; $D1260B
    db $5E,$E1,$BB,$C7,$93,$0C,$10,$F0,$40,$C0,$80,$0F,$64,$67,$D0,$DF ; $D1261B
    db $40,$FF,$71,$83,$F2,$E0,$52,$F3,$03,$EC,$03,$BF,$EB,$7C,$09,$0A ; $D1262B
    db $BF,$13,$5C,$32,$70,$63,$7F,$28,$D6,$53,$AF,$9A,$7B,$F9,$FB,$1C ; $D1263B
    db $FC,$8D,$7D,$12,$33,$0F,$00,$FE,$03,$10,$FF,$1A,$FB,$0F,$1D,$0D ; $D1264B
    db $FD,$21,$CB,$3F,$FE,$8E,$7D,$E1,$AE,$43,$4B,$7D,$F0,$0A,$73,$3F ; $D1265B
    db $00,$30,$60,$01,$02,$8A,$8A,$14,$14,$0A,$39,$39,$7A,$7A,$3D,$0E ; $D1266B
    db $B0,$02,$0F,$15,$73,$7D,$80,$1B,$A0,$7B,$20,$20,$80,$80,$40,$1E ; $D1267B
    db $40,$80,$80,$10,$0F,$FF,$13,$04,$A4,$01,$02,$03,$40,$D8,$05,$05 ; $D1268B
    db $03,$1E,$03,$06,$07,$08,$0F,$1F,$01,$00,$01,$03,$7F,$77,$0A,$80 ; $D1269B
    db $FF,$60,$BF,$6F,$E0,$75,$60,$80,$A8,$0A,$0A,$C5,$C5,$12,$06,$F2 ; $D126AB
    db $15,$ED,$20,$FF,$0D,$D6,$03,$04,$0F,$05,$FD,$DF,$00,$25,$01,$0F ; $D126BB
    db $F7,$E0,$0B,$D7,$BF,$1D,$72,$FE,$FC,$03,$3F,$C0,$73,$7C,$AE,$AE ; $D126CB
    db $F2,$F5,$B7,$B4,$F9,$FA,$0F,$10,$68,$70,$60,$7F,$0F,$F0,$F7,$B4 ; $D126DB
    db $B7,$15,$F8,$FB,$8C,$0E,$77,$0F,$3B,$29,$07,$3D,$85,$03,$09,$3F ; $D126EB
    db $71,$E9,$FF,$F4,$FF,$D8,$3F,$19,$06,$4B,$88,$16,$26,$02,$8B,$97 ; $D126FB
    db $5D,$83,$0F,$18,$80,$32,$08,$F7,$06,$39,$03,$0E,$8C,$1D,$DE,$16 ; $D1270B
    db $F5,$0B,$E7,$47,$43,$3F,$70,$53,$C3,$F2,$09,$3F,$65,$EB,$B0,$F3 ; $D1271B
    db $D9,$B8,$6C,$75,$92,$DF,$0D,$E5,$2A,$DD,$8C,$FC,$53,$30,$CF,$D9 ; $D1272B
    db $E7,$2C,$F3,$16,$F9,$0F,$F8,$23,$FC,$9D,$6E,$DD,$3E,$FF,$DE,$3A ; $D1273B
    db $43,$DF,$1C,$41,$F7,$05,$1E,$F3,$00,$E3,$09,$3F,$5D,$58,$7A,$AD ; $D1274B
    db $CF,$C3,$8F,$5C,$BC,$F8,$18,$30,$D6,$FE,$25,$FB,$45,$3B,$68,$97 ; $D1275B
    db $EB,$97,$BF,$4F,$A7,$CF,$CF,$E7,$15,$E3,$84,$73,$8A,$71,$FF,$15 ; $D1276B
    db $35,$F0,$77,$FB,$3C,$70,$91,$9E,$FB,$0A,$DD,$FF,$7A,$B4,$06,$B8 ; $D1277B
    db $5E,$E1,$E5,$41,$E2,$40,$AC,$4F,$B6,$5B,$F7,$19,$E7,$1F,$EE,$1F ; $D1278B
    db $BF,$1E,$BC,$1E,$BF,$1C,$B5,$18,$A4,$19,$AB,$11,$F8,$EE,$73,$E1 ; $D1279B
    db $39,$77,$E3,$C5,$9E,$01,$EE,$09,$3F,$5D,$D2,$78,$9E,$E0,$7D,$F0 ; $D127AB
    db $2B,$ED,$D2,$38,$C5,$8E,$97,$7D,$6E,$B9,$C4,$D2,$3F,$E1,$3E,$B3 ; $D127BB
    db $7C,$E6,$79,$6C,$F3,$FE,$E3,$BF,$C7,$37,$CF,$ED,$B7,$CF,$EE,$5D ; $D127CB
    db $05,$9F,$EF,$C5,$F5,$0C,$7F,$F7,$75,$D8,$D1,$A0,$98,$5A,$64,$DC ; $D127DB
    db $CA,$96,$DF,$A2,$0D,$A4,$B1,$5A,$D0,$3F,$80,$7F,$1A,$E5,$7C,$87 ; $D127EB
    db $EE,$01,$8E,$71,$A1,$DA,$F5,$8A,$EF,$AC,$3B,$FB,$A3,$05,$7F,$9E ; $D127FB
    db $01,$08,$00,$BA,$E1,$CA,$3A,$D1,$3D,$FA,$27,$FD,$46,$1A,$8D,$0D ; $D1280B
    db $13,$9E,$23,$FD,$06,$0A,$FA,$11,$FD,$22,$FF,$44,$FF,$08,$FF,$01 ; $D1281B
    db $FF,$82,$7F,$84,$7F,$FB,$EC,$00,$DD,$D2,$FD,$F7,$E9,$05,$73,$FD ; $D1282B
    db $47,$C2,$09,$7F,$F7,$AE,$EE,$E1,$54,$DC,$28,$B8,$90,$F0,$02,$E3 ; $D1283B
    db $A3,$64,$47,$C8,$E0,$04,$0F,$20,$E7,$40,$CF,$8A,$1D,$F5,$88,$E3 ; $D1284B
    db $0B,$60,$B3,$05,$C7,$B7,$C1,$80,$0E,$00,$18,$18,$98,$F8,$88,$78 ; $D1285B
    db $0F,$C8,$38,$D0,$30,$02,$38,$0F,$08,$01,$10,$F9,$01,$70,$76,$60 ; $D1286B
    db $85,$57,$F0,$FE,$49,$07,$A3,$BF,$0B,$07,$07,$FB,$02,$09,$E7,$0A ; $D1287B
    db $0F,$01,$C9,$17,$3E,$19,$EF,$80,$E9,$E3,$E3,$2A,$2A,$5F,$5F,$30 ; $D1288B
    db $3F,$3F,$03,$BF,$BF,$09,$79,$FF,$06,$0F,$F6,$CF,$F9,$14,$17,$00 ; $D1289B
    db $BB,$BA,$1D,$2D,$ED,$28,$D8,$5C,$62,$95,$98,$F6,$F4,$FC,$FD,$FE ; $D128AB
    db $FE,$BA,$BB,$0F,$80,$B7,$40,$7E,$90,$9F,$F4,$F7,$84,$0F,$75,$33 ; $D128BB
    db $F0,$D1,$83,$17,$BD,$F2,$0C,$8B,$82,$EB,$3F,$96,$09,$FC,$B0,$59 ; $D128CB
    db $59,$27,$EB,$72,$15,$CF,$4A,$7D,$BF,$1E,$FF,$0F,$FF,$B7,$CF,$5A ; $D128DB
    db $67,$6E,$F1,$37,$F8,$5B,$BC,$B5,$CE,$E1,$C7,$3D,$78,$43,$7B,$9E ; $D128EB
    db $A1,$05,$E7,$F4,$0B,$2E,$3F,$CC,$BD,$AE,$CA,$DF,$F4,$7B,$BD,$B3 ; $D128FB
    db $3F,$F0,$67,$82,$BF,$54,$EA,$53,$F0,$1F,$F0,$8F,$E8,$C7,$70,$E7 ; $D1290B
    db $12,$F9,$15,$F8,$C7,$38,$A3,$1C,$E3,$F5,$FF,$39,$51,$FB,$1F,$C5 ; $D1291B
    db $FC,$0A,$3F,$72,$5C,$11,$72,$F9,$44,$4A,$48,$51,$AB,$0C,$A1,$22 ; $D1292B
    db $D5,$10,$47,$8D,$E7,$C2,$39,$91,$24,$E1,$99,$45,$98,$17,$C8,$27 ; $D1293B
    db $C8,$0F,$E0,$97,$60,$CE,$DE,$2A,$7F,$E0,$AE,$F9,$70,$7C,$87,$0A ; $D1294B
    db $17,$7F,$48,$12,$2C,$03,$17,$1A,$03,$51,$0A,$06,$00,$08,$05,$51 ; $D1295B
    db $1C,$56,$1C,$A9,$13,$AA,$1F,$A4,$13,$01,$AD,$0E,$12,$AC,$12,$BE ; $D1296B
    db $F5,$05,$EE,$47,$3D,$A0,$69,$FD,$4F,$05,$97,$08,$00,$42,$5E,$8A ; $D1297B
    db $EA,$57,$48,$5F,$57,$B9,$1F,$A1,$9C,$68,$1E,$44,$2B,$F9,$65,$9F ; $D1298B
    db $29,$9E,$82,$3C,$41,$3C,$09,$73,$95,$63,$1D,$E3,$38,$C7,$78,$44 ; $D1299B
    db $BF,$B8,$B7,$E0,$BD,$C0,$FB,$0B,$80,$47,$36,$B9,$E4,$F6,$F9,$C5 ; $D129AB
    db $AB,$CB,$E8,$7A,$8E,$C9,$B5,$3E,$CA,$F5,$5D,$F4,$1B,$76,$39,$F9 ; $D129BB
    db $7E,$DB,$FC,$8E,$F1,$3D,$07,$7A,$87,$B5,$0E,$EF,$67,$37,$87,$55 ; $D129CB
    db $7B,$0F,$DF,$07,$7C,$7D,$0B,$2E,$BF,$9A,$7D,$0D,$3D,$13,$FE,$A2 ; $D129DB
    db $6C,$44,$D8,$88,$90,$10,$81,$A0,$F3,$B5,$08,$FF,$11,$FF,$A2,$7E ; $D129EB
    db $44,$FC,$88,$00,$7B,$80,$61,$B1,$76,$F7,$E4,$C1,$52,$3B,$70,$AA ; $D129FB
    db $5F,$85,$C7,$0A,$C5,$3B,$D7,$90,$09,$28,$1A,$58,$2C,$38,$C3,$73 ; $D12A0B
    db $F4,$9F,$A8,$0F,$2E,$5F,$80,$9F,$08,$37,$18,$66,$38,$44,$73,$8B ; $D12A1B
    db $F4,$0F,$E8,$1F,$AE,$1F,$1F,$AA,$B7,$7E,$EA,$B8,$43,$F8,$7B,$F7 ; $D12A2B
    db $FA,$0B,$49,$7F,$C0,$40,$70,$31,$58,$00,$F8,$28,$F8,$C0,$C0,$20 ; $D12A3B
    db $E0,$40,$7A,$C0,$06,$0F,$C1,$F1,$A0,$00,$D0,$FC,$11,$00,$81,$02 ; $D12A4B
    db $03,$09,$0E,$04,$0F,$09,$16,$0F,$0C,$0C,$1E,$0F,$08,$0F,$04,$0F ; $D12A5B
    db $70,$01,$FF,$0B,$00,$78,$06,$0D,$3B,$5B,$5C,$31,$B3,$C3,$D9,$73 ; $D12A6B
    db $8F,$71,$2A,$EA,$AA,$BF,$F2,$FD,$69,$7E,$58,$5F,$83,$FC,$00,$FF ; $D12A7B
    db $03,$FF,$80,$0F,$F0,$FF,$68,$3A,$7F,$07,$AE,$33,$FF,$EE,$FF,$79 ; $D12A8B
    db $76,$15,$43,$78,$17,$09,$3F,$56,$01,$5C,$9E,$33,$E1,$0D,$0E,$FA ; $D12A9B
    db $FC,$F7,$FF,$FC,$FF,$DA,$3F,$88,$2E,$FF,$AE,$ED,$F0,$6E,$F8,$05 ; $D12AAB
    db $38,$00,$1F,$47,$FF,$AA,$A7,$79,$07,$D7,$3F,$FC,$97,$09,$3F,$76 ; $D12ABB
    db $5A,$85,$9E,$92,$3B,$1D,$FC,$B7,$9C,$CB,$2E,$FB,$EB,$1C,$A9,$3A ; $D12ACB
    db $D2,$EF,$A1,$7F,$F0,$0F,$CC,$03,$93,$E0,$EC,$F2,$F9,$FE,$C4,$FF ; $D12ADB
    db $31,$97,$3F,$FC,$67,$43,$1C,$F0,$0D,$BD,$6C,$BA,$F6,$20,$54,$B0 ; $D12AEB
    db $CA,$B8,$41,$DC,$F2,$3C,$78,$5E,$74,$2E,$55,$62,$50,$8F,$28,$C7 ; $D12AFB
    db $54,$E3,$2A,$F1,$05,$F8,$C2,$3C,$E0,$1F,$60,$9F,$F0,$79,$95,$2F ; $D12B0B
    db $03,$07,$0D,$91,$81,$49,$2B,$2F,$74,$29,$93,$A7,$67,$5F,$BC,$28 ; $D12B1B
    db $50,$16,$88,$5C,$6A,$A3,$1F,$F0,$03,$F0,$89,$70,$49,$B0,$2E,$D1 ; $D12B2B
    db $16,$E9,$3E,$01,$1D,$EE,$3F,$F7,$04,$CF,$01,$0A,$17,$00,$12,$5A ; $D12B3B
    db $5F,$1E,$52,$59,$5C,$F8,$5B,$A7,$02,$E5,$0D,$E2,$A1,$AC,$FA,$BF ; $D12B4B
    db $01,$B8,$01,$B2,$01,$B6,$01,$EE,$11,$ED,$12,$EF,$10,$57,$E0,$E0 ; $D12B5B
    db $00,$04,$79,$01,$0A,$00,$66,$75,$A0,$85,$81,$2A,$A3,$D0,$47,$A9 ; $D12B6B
    db $87,$43,$0E,$24,$4D,$54,$A3,$21,$DE,$02,$FC,$25,$D8,$4A,$B1,$94 ; $D12B7B
    db $63,$08,$E7,$81,$1E,$0B,$1C,$81,$E4,$B5,$A1,$BD,$3C,$39,$C5,$F0 ; $D12B8B
    db $06,$00,$C8,$93,$50,$B9,$74,$B6,$77,$BB,$6A,$75,$78,$A2,$70,$0D ; $D12B9B
    db $B5,$E4,$2C,$26,$4B,$3C,$86,$79,$4F,$F1,$9C,$80,$39,$39,$C6,$D7 ; $D12BAB
    db $0C,$4F,$9C,$F7,$EE,$91,$FB,$8E,$00,$0E,$85,$3F,$A7,$3F,$EA,$0A ; $D12BBB
    db $3F,$BA,$00,$71,$8A,$EC,$34,$EE,$00,$D5,$40,$35,$E8,$6D,$43,$CA ; $D12BCB
    db $C4,$5D,$BC,$31,$FE,$8D,$F2,$3C,$C3,$70,$8C,$20,$99,$64,$FC,$C1 ; $D12BDB
    db $3C,$9D,$7C,$CF,$B0,$FF,$FD,$00,$F9,$38,$00,$99,$05,$E1,$FA,$0A ; $D12BEB
    db $3A,$FF,$D1,$A1,$A4,$87,$0A,$71,$2E,$84,$AC,$40,$28,$C4,$2C,$6A ; $D12BFB
    db $8E,$30,$10,$40,$20,$84,$E7,$4A,$CC,$0F,$EC,$0F,$44,$68,$2C,$07 ; $D12C0B
    db $03,$F5,$63,$00,$E4,$00,$68,$B8,$83,$73,$E8,$07,$E9,$09,$BF,$00 ; $D12C1B
    db $70,$08,$18,$40,$C8,$A8,$E8,$40,$1B,$60,$00,$20,$03,$7A,$07,$08 ; $D12C2B
    db $0F,$3C,$77,$77,$88,$54,$43,$20,$01,$7D,$40,$0E,$C2,$84,$0F,$06 ; $D12C3B
    db $08,$03,$A1,$EB,$04,$50,$68,$0C,$43,$0F,$00,$DF,$02,$0F,$02,$47 ; $D12C4B
    db $75,$D1,$0A,$7F,$71,$F3,$FC,$69,$7E,$7B,$84,$5D,$F7,$63,$29,$0B ; $D12C5B
    db $F7,$7F,$7F,$0B,$FD,$88,$F3,$C3,$F0,$A9,$FE,$D6,$A3,$CF,$11,$0F ; $D12C6B
    db $09,$FE,$19,$F3,$FF,$A9,$D4,$D7,$FD,$7C,$ED,$09,$3F,$CE,$5C,$0D ; $D12C7B
    db $B0,$BB,$1D,$C6,$0C,$19,$1E,$16,$7D,$39,$E6,$7C,$A9,$9F,$6A,$0D ; $D12C8B
    db $F3,$1F,$E0,$0F,$F0,$03,$FF,$C0,$DF,$05,$F0,$D7,$FC,$35,$FF,$53 ; $D12C9B
    db $0E,$33,$01,$1F,$EA,$0B,$3F,$F2,$BA,$54,$3E,$DD,$1C,$04,$86,$69 ; $D12CAB
    db $22,$BD,$25,$8E,$12,$C4,$0B,$43,$03,$C1,$FF,$E2,$FC,$BD,$78,$ED ; $D12CBB
    db $18,$D3,$08,$EB,$04,$F0,$B8,$2F,$03,$35,$F7,$F7,$01,$43,$DC,$09 ; $D12CCB
    db $3F,$83,$AB,$BA,$54,$49,$71,$B0,$B5,$60,$93,$08,$BC,$5B,$AB,$C2 ; $D12CDB
    db $B6,$C3,$03,$FC,$F9,$86,$B4,$C9,$CA,$F1,$96,$21,$05,$22,$18,$27 ; $D12CEB
    db $25,$0A,$32,$06,$00,$0E,$B1,$C3,$FC,$E5,$0B,$3F,$44,$C6,$69,$5A ; $D12CFB
    db $0C,$ED,$F2,$A3,$4E,$4C,$37,$FF,$F8,$4E,$3B,$E0,$DC,$9E,$A8,$27 ; $D12D0B
    db $74,$F1,$81,$35,$37,$30,$19,$E8,$82,$11,$E1,$02,$29,$30,$00,$08 ; $D12D1B
    db $F5,$0B,$7F,$5D,$EE,$67,$12,$EF,$EA,$C5,$C9,$25,$D6,$F8,$8E,$C1 ; $D12D2B
    db $DD,$55,$B1,$A3,$E4,$0F,$00,$53,$40,$35,$02,$E8,$00,$91,$80,$33 ; $D12D3B
    db $00,$1C,$03,$03,$1F,$00,$BE,$B3,$10,$CB,$C8,$AF,$4D,$CF,$46,$31 ; $D12D4B
    db $ED,$F6,$BE,$D3,$7F,$86,$73,$94,$CA,$37,$BF,$46,$27,$18,$E0,$10 ; $D12D5B
    db $E8,$10,$4D,$3E,$BA,$7C,$62,$FC,$D8,$E4,$B5,$C8,$6E,$DC,$2A,$01 ; $D12D6B
    db $01,$C4,$3B,$03,$EB,$47,$E5,$04,$00,$8A,$D7,$7D,$09,$D3,$A0,$7A ; $D12D7B
    db $00,$B4,$74,$FE,$57,$A6,$27,$6B,$E9,$5F,$A0,$1E,$01,$3F,$11,$0E ; $D12D8B
    db $CB,$04,$63,$40,$B9,$70,$1C,$F8,$46,$BC,$F3,$AA,$3D,$71,$EB,$AB ; $D12D9B
    db $7B,$BF,$AF,$07,$83,$09,$5D,$3F,$30,$05,$22,$10,$1F,$11,$87,$24 ; $D12DAB
    db $0A,$61,$22,$02,$05,$E4,$01,$C3,$C2,$61,$9E,$F1,$0E,$B1,$4E,$58 ; $D12DBB
    db $87,$98,$07,$FC,$03,$01,$2E,$11,$FF,$7B,$00,$06,$01,$D7,$08,$00 ; $D12DCB
    db $3C,$C4,$87,$60,$20,$F1,$31,$C0,$37,$50,$A7,$EE,$8E,$58,$48,$60 ; $D12DDB
    db $BA,$44,$27,$E0,$00,$F1,$11,$E0,$17,$01,$EE,$02,$1E,$48,$B8,$30 ; $D12DEB
    db $CA,$E3,$A5,$F7,$F7,$C8,$01,$A1,$BF,$FA,$F0,$0A,$FF,$D8,$1D,$28 ; $D12DFB
    db $38,$80,$D7,$6B,$C0,$61,$5A,$88,$A8,$80,$E1,$07,$0F,$00,$80,$88 ; $D12E0B
    db $D0,$FF,$78,$9D,$5F,$39,$20,$0B,$80,$45,$0B,$0C,$04,$0D,$01,$09 ; $D12E1B
    db $DC,$03,$07,$3A,$07,$03,$3A,$F4,$F4,$F9,$0F,$E7,$07,$07,$0F,$00 ; $D12E2B
    db $0F,$07,$78,$33,$08,$E4,$03,$55,$FD,$0C,$56,$F8,$87,$07,$FF,$F6 ; $D12E3B
    db $92,$38,$7D,$13,$01,$11,$EE,$80,$F7,$B1,$FF,$71,$FF,$04,$F7,$13 ; $D12E4B
    db $58,$FC,$01,$B3,$0E,$FC,$73,$FC,$F3,$AD,$3F,$8F,$01,$4F,$0B,$A6 ; $D12E5B
    db $BF,$E1,$07,$FA,$9D,$AA,$28,$C7,$A8,$92,$32,$D4,$B8,$82,$AE,$03 ; $D12E6B
    db $10,$A9,$83,$0D,$FF,$BB,$C7,$00,$FF,$A8,$C7,$10,$EF,$03,$15,$A9 ; $D12E7B
    db $C6,$F1,$CB,$75,$7F,$DE,$01,$03,$08,$00,$17,$A1,$81,$71,$3E,$E0 ; $D12E8B
    db $73,$D1,$85,$73,$07,$26,$C5,$8A,$DB,$18,$CF,$1D,$7E,$C0,$9F,$E0 ; $D12E9B
    db $3F,$E0,$1E,$E0,$3C,$C0,$FC,$B1,$79,$E8,$59,$73,$BF,$F8,$13,$7F ; $D12EAB
    db $C0,$FF,$B9,$C5,$30,$8A,$A0,$15,$78,$8E,$F8,$07,$FE,$A2,$FE,$21 ; $D12EBB
    db $FF,$18,$01,$00,$8C,$71,$F2,$0C,$05,$02,$22,$01,$8F,$00,$25,$01 ; $D12ECB
    db $0E,$37,$E7,$00,$EB,$A3,$47,$D7,$0A,$3F,$59,$7D,$2A,$3E,$23,$4D ; $D12EDB
    db $42,$B6,$11,$21,$48,$98,$EF,$90,$6C,$83,$7F,$8E,$11,$FC,$1F,$6D ; $D12EEB
    db $9E,$05,$0E,$8E,$07,$85,$06,$05,$86,$06,$84,$50,$FB,$D8,$E9,$0F ; $D12EFB
    db $93,$01,$D7,$08,$00,$5F,$E5,$12,$20,$1E,$52,$BB,$4B,$5C,$26,$89 ; $D12F0B
    db $4E,$B3,$7A,$A6,$6C,$AB,$AF,$1F,$0F,$FF,$14,$0F,$B8,$07,$E0,$1F ; $D12F1B
    db $11,$0F,$15,$0B,$19,$07,$06,$E7,$AA,$E9,$0B,$FF,$2E,$D0,$8C,$78 ; $D12F2B
    db $08,$C0,$31,$61,$70,$55,$A0,$35,$80,$9B,$24,$64,$BB,$4A,$BD,$34 ; $D12F3B
    db $FC,$5F,$E0,$80,$C0,$C0,$80,$CA,$01,$8E,$C4,$DD,$86,$95,$B5,$1F ; $D12F4B
    db $77,$BB,$FB,$4F,$95,$D1,$0A,$3F,$74,$54,$0E,$02,$E5,$43,$72,$3D ; $D12F5B
    db $0A,$35,$F0,$B4,$23,$2F,$AF,$D7,$97,$22,$5F,$D2,$EF,$A9,$F7,$DD ; $D12F6B
    db $73,$4D,$2B,$60,$20,$C4,$01,$67,$27,$B9,$FB,$75,$80,$0E,$3D,$CF ; $D12F7B
    db $E1,$49,$D0,$E5,$09,$3F,$39,$CB,$92,$0A,$E0,$11,$E1,$81,$85,$02 ; $D12F8B
    db $6F,$06,$F7,$C8,$D1,$E8,$E1,$FE,$11,$0E,$F1,$FF,$A0,$AD,$7B,$84 ; $D12F9B
    db $C0,$75,$2F,$10,$EF,$F0,$EF,$F8,$05,$FD,$7F,$1F,$0A,$CB,$7F,$E4 ; $D12FAB
    db $A4,$AF,$86,$D0,$A4,$B8,$EC,$4C,$D8,$FE,$5A,$D2,$6E,$CA,$62,$54 ; $D12FBB
    db $8E,$B4,$CE,$B0,$CC,$B8,$C4,$58,$E4,$5A,$E6,$42,$FE,$4A,$F6,$FA ; $D12FCB
    db $00,$7A,$46,$01,$01,$4D,$BC,$01,$E9,$08,$00,$78,$E1,$A8,$C0,$00 ; $D12FDB
    db $00,$A0,$08,$00,$50,$7A,$A8,$01,$0F,$1D,$02,$96,$6E,$A8,$73,$27 ; $D12FEB
    db $10,$DE,$04,$0E,$01,$00,$74,$0C,$C5,$01,$AE,$E9,$01,$F0,$F5,$01 ; $D12FFB
    db $03,$03,$06,$04,$00,$0F,$08,$0F,$C3,$02,$0F,$04,$06,$0F,$EA,$01 ; $D1300B
    db $33,$01,$EB,$BC,$C3,$02,$09,$3F,$31,$BA,$CF,$1F,$75,$71,$5A,$96 ; $D1301B
    db $5A,$6D,$F1,$FA,$DF,$3D,$73,$5F,$30,$1F,$13,$FC,$73,$8C,$1E,$E1 ; $D1302B
    db $4F,$70,$F3,$FC,$1D,$FE,$53,$7F,$10,$3F,$EF,$C7,$7B,$0F,$58,$83 ; $D1303B
    db $2C,$3D,$00,$2F,$09,$3F,$75,$62,$91,$4E,$BD,$BB,$69,$25,$59,$78 ; $D1304B
    db $DE,$CB,$27,$B9,$CA,$84,$A1,$29,$C6,$25,$C2,$39,$C6,$15,$E2,$D2 ; $D1305B
    db $21,$E9,$10,$FD,$00,$BE,$C0,$FA,$06,$FC,$3D,$0A,$2E,$FF,$CB,$3D ; $D1306B
    db $18,$C5,$1A,$CE,$1F,$73,$9B,$64,$89,$B2,$C5,$5A,$63,$AE,$30,$EC ; $D1307B
    db $03,$F5,$E4,$00,$E6,$A3,$AB,$07,$ED,$7C,$80,$BF,$40,$D4,$18,$7F ; $D1308B
    db $FE,$40,$5C,$FD,$3A,$0A,$FF,$23,$75,$8E,$B6,$35,$80,$0B,$E0,$1F ; $D1309B
    db $40,$15,$F6,$81,$71,$2D,$CE,$00,$8C,$DF,$99,$DE,$83,$18,$3F,$BA ; $D130AB
    db $CA,$08,$7F,$08,$F7,$0E,$7F,$15,$ED,$2D,$FC,$5B,$F1,$8E,$E5,$B9 ; $D130BB
    db $5E,$06,$84,$8E,$04,$8A,$04,$18,$0E,$11,$1E,$21,$3E,$4C,$74,$10 ; $D130CB
    db $E0,$15,$F5,$F0,$6B,$7F,$84,$EB,$0B,$7F,$73,$48,$A5,$55,$F3,$05 ; $D130DB
    db $ED,$14,$F2,$9D,$FC,$5E,$7E,$D8,$7E,$74,$B0,$1C,$03,$4F,$40,$1D ; $D130EB
    db $02,$0E,$01,$C0,$81,$C1,$40,$C7,$40,$2C,$3F,$23,$00,$01,$EA,$B3 ; $D130FB
    db $40,$FF,$C5,$97,$08,$00,$5F,$5E,$5F,$80,$20,$DF,$11,$00,$0E,$95 ; $D1310B
    db $9C,$C9,$44,$78,$21,$2B,$01,$E0,$80,$7F,$C0,$BF,$60,$5F,$BF,$BB ; $D1311B
    db $4F,$DE,$24,$EC,$13,$E3,$1C,$7F,$D1,$7B,$0F,$75,$0F,$0B,$BC,$FB ; $D1312B
    db $17,$00,$69,$5E,$6C,$11,$BC,$0D,$50,$7F,$B2,$DD,$BD,$57,$0F,$E0 ; $D1313B
    db $2D,$54,$BA,$C6,$2B,$EE,$7B,$B6,$F3,$C1,$E0,$36,$28,$37,$0E,$8A ; $D1314B
    db $1F,$58,$8F,$C0,$87,$33,$3C,$40,$CF,$E7,$00,$A1,$EA,$1E,$BD,$71 ; $D1315B
    db $09,$3F,$5D,$10,$6B,$21,$00,$05,$03,$0F,$07,$87,$C2,$A0,$71,$62 ; $D1316B
    db $13,$82,$C4,$E1,$BF,$C0,$F7,$80,$FB,$84,$FF,$00,$7E,$01,$BE,$21 ; $D1317B
    db $1E,$A1,$FC,$03,$7F,$D8,$35,$CA,$39,$DF,$AF,$87,$AE,$08,$00,$18 ; $D1318B
    db $B4,$6E,$3C,$EE,$24,$F6,$2C,$F6,$28,$F2,$20,$FA,$01,$25,$FB,$31 ; $D1319B
    db $2C,$F2,$01,$24,$FA,$88,$01,$20,$FE,$07,$01,$21,$FF,$DE,$00,$BD ; $D131AB
    db $06,$01,$09,$00,$D0,$FA,$A8,$79,$A8,$12,$0F,$A8,$FE,$17,$74,$BF ; $D131BB
    db $03,$E4,$02,$01,$01,$0B,$0F,$E1,$01,$F7,$03,$D1,$F7,$E5,$03,$0F ; $D131CB
    db $02,$4B,$FF,$04,$F5,$11,$3F,$D3,$53,$7C,$93,$7C,$B7,$FB,$37,$3B ; $D131DB
    db $37,$FB,$0F,$FB,$8E,$FF,$1E,$1A,$50,$7F,$10,$FF,$B3,$FC,$33,$3C ; $D131EB
    db $33,$FC,$0B,$FC,$0A,$0F,$1B,$1C,$2F,$BB,$F7,$0F,$AA,$3D,$F7,$ED ; $D131FB
    db $3D,$EB,$0A,$43,$A6,$BE,$56,$05,$31,$D8,$BD,$56,$3F,$53,$3F,$72 ; $D1320B
    db $9F,$12,$FF,$C1,$5F,$19,$E0,$06,$F8,$79,$1E,$F6,$1F,$F3,$1F,$72 ; $D1321B
    db $1F,$0F,$25,$41,$3F,$77,$7B,$E9,$43,$D5,$ED,$8F,$01,$FE,$09,$0B ; $D1322B
    db $3F,$9F,$DF,$5E,$8F,$C0,$40,$7F,$AD,$33,$FD,$FE,$59,$90,$61,$B3 ; $D1323B
    db $5B,$92,$5F,$20,$3F,$40,$65,$3F,$C0,$FC,$3B,$FF,$1F,$A5,$03,$1C ; $D1324B
    db $E0,$A1,$B7,$03,$F0,$0F,$BF,$6D,$BA,$D5,$AC,$18,$E0,$F4,$A6,$42 ; $D1325B
    db $05,$69,$63,$A4,$6B,$C9,$3D,$89,$97,$CA,$09,$15,$0B,$66,$1B,$05 ; $D1326B
    db $FE,$67,$9C,$EA,$1D,$F4,$1B,$54,$3B,$F7,$16,$F9,$8F,$C3,$0A,$B6 ; $D1327B
    db $81,$EB,$34,$EF,$62,$DC,$EA,$C6,$40,$B3,$00,$58,$96,$AA,$F6,$57 ; $D1328B
    db $35,$7F,$48,$B0,$FD,$3E,$B7,$79,$4B,$F1,$94,$E2,$37,$C3,$6E,$83 ; $D1329B
    db $6D,$86,$05,$23,$0E,$1D,$01,$0C,$C7,$81,$DA,$0A,$81,$F1,$BA,$FD ; $D132AB
    db $14,$E2,$2B,$51,$E6,$E4,$B8,$16,$27,$3B,$3D,$08,$F2,$10,$18,$0D ; $D132BB
    db $03,$39,$27,$AF,$5F,$1F,$FF,$38,$3F,$C1,$FE,$03,$FC,$1F,$E0,$00 ; $D132CB
    db $12,$94,$B5,$00,$BA,$FE,$60,$15,$EB,$D9,$21,$F8,$04,$9C,$1C,$B8 ; $D132DB
    db $A8,$EB,$1E,$8F,$E5,$70,$73,$8F,$78,$87,$B8,$C7,$DC,$E3,$5F,$E0 ; $D132EB
    db $8C,$70,$AB,$71,$C6,$3A,$17,$FE,$BB,$71,$00,$51,$FE,$A8,$7A,$BC ; $D132FB
    db $96,$DE,$7F,$DD,$89,$2E,$BE,$0E,$65,$F7,$5F,$C9,$8E,$EF,$C4,$4F ; $D1330B
    db $E4,$37,$E2,$A7,$73,$9B,$71,$92,$F9,$8D,$78,$71,$00,$3B,$01,$1D ; $D1331B
    db $C7,$BB,$0E,$67,$C5,$87,$F9,$0A,$3B,$72,$05,$00,$83,$24,$0B,$60 ; $D1332B
    db $27,$08,$87,$90,$CF,$E0,$5F,$7E,$BE,$FC,$03,$B8,$47,$58,$C0,$0B ; $D1333B
    db $0F,$E0,$1F,$C0,$BF,$0F,$C0,$FF,$7E,$FE,$04,$AB,$BB,$3F,$E4,$0B ; $D1334B
    db $FF,$27,$FB,$C5,$01,$63,$FF,$C3,$60,$FC,$05,$BD,$A5,$BD,$50,$78 ; $D1335B
    db $6A,$7B,$23,$FF,$79,$01,$04,$0F,$DC,$DE,$B8,$3D,$9C,$01,$B8,$EC ; $D1336B
    db $3B,$28,$3C,$00,$11,$09,$3F,$E0,$00,$E0,$48,$F8,$80,$F8,$20,$38 ; $D1337B
    db $C8,$EA,$43,$E9,$20,$E0,$F0,$F0,$DD,$08,$0F,$C7,$61,$51,$FF,$2D ; $D1338B
    db $77,$FE,$0C,$18,$FD,$0D,$0F,$01,$06,$07,$70,$0E,$03,$0F,$0F,$0F ; $D1339B
    db $07,$07,$0B,$0B,$08,$2A,$0F,$02,$5F,$01,$01,$0D,$FA,$7B,$B4,$1B ; $D133AB
    db $07,$05,$60,$27,$31,$85,$87,$8C,$8E,$03,$17,$96,$4E,$CF,$55,$D7 ; $D133BB
    db $80,$0F,$26,$0D,$0E,$85,$86,$08,$8C,$8F,$16,$97,$64,$0F,$37,$23 ; $D133CB
    db $EC,$7B,$71,$81,$01,$82,$EB,$09,$3F,$8E,$20,$FF,$D8,$67,$8E,$F1 ; $D133DB
    db $5F,$20,$8E,$10,$0D,$B0,$46,$18,$69,$CC,$0F,$33,$40,$3F,$01,$C0 ; $D133EB
    db $83,$01,$E0,$1F,$70,$B3,$CB,$DF,$EE,$17,$7F,$8D,$B9,$F0,$C9,$64 ; $D133FB
    db $C5,$31,$E3,$1A,$F3,$CE,$3F,$17,$00,$54,$54,$3E,$3C,$8E,$F0,$44 ; $D1340B
    db $FB,$20,$FE,$13,$FE,$0E,$2C,$54,$AB,$1D,$3D,$C2,$7F,$57,$75,$DF ; $D1341B
    db $4B,$39,$F1,$C5,$0F,$3F,$02,$23,$D6,$55,$F0,$80,$34,$D6,$E6,$79 ; $D1342B
    db $22,$28,$EF,$0E,$7B,$13,$CE,$70,$3F,$62,$BF,$A2,$7F,$20,$1F,$54 ; $D1343B
    db $8F,$34,$C3,$0D,$F0,$B3,$7C,$C0,$00,$0A,$01,$E0,$F5,$43,$FF,$D3 ; $D1344B
    db $C5,$F2,$09,$3F,$6C,$2E,$6E,$17,$78,$D0,$7B,$77,$B6,$97,$B8,$05 ; $D1345B
    db $24,$80,$00,$A0,$33,$7D,$86,$14,$EF,$13,$FF,$63,$C8,$2A,$80,$80 ; $D1346B
    db $BA,$02,$BF,$7F,$1D,$38,$00,$38,$D5,$F7,$3F,$3F,$01,$0C,$5C,$81 ; $D1347B
    db $63,$20,$C0,$8A,$0C,$02,$FE,$B5,$11,$F6,$0F,$E6,$58,$04,$07,$16 ; $D1348B
    db $E7,$D0,$FD,$FC,$FF,$A4,$4B,$30,$4B,$01,$16,$07,$07,$F9,$99,$B0 ; $D1349B
    db $FE,$4F,$01,$0C,$00,$00,$30,$57,$0D,$44,$B6,$7F,$69,$19,$7B,$2D ; $D134AB
    db $BB,$02,$DB,$72,$4D,$2E,$8D,$C6,$3A,$D7,$3A,$E5,$1A,$61,$9E,$20 ; $D134BB
    db $DF,$A0,$DF,$80,$FF,$C0,$FF,$01,$FD,$15,$BD,$85,$00,$85,$B0,$4A ; $D134CB
    db $D7,$FE,$3E,$F8,$D9,$9B,$AB,$36,$10,$A3,$A9,$9E,$1C,$13,$0B,$7C ; $D134DB
    db $47,$3C,$45,$3E,$47,$3E,$E0,$1F,$E1,$1F,$E7,$1F,$6A,$99,$C7,$00 ; $D134EB
    db $C3,$8E,$01,$E1,$44,$01,$BE,$FD,$E7,$0A,$91,$7F,$7E,$82,$FE,$74 ; $D134FB
    db $C1,$3D,$45,$6D,$57,$23,$8B,$86,$6E,$B1,$23,$14,$3E,$FE,$9E,$7E ; $D1350B
    db $8D,$7D,$C5,$3D,$D3,$2F,$C2,$39,$64,$9A,$21,$56,$96,$3B,$56,$F8 ; $D1351B
    db $3D,$CF,$01,$77,$0A,$90,$FF,$F3,$F3,$F7,$E3,$60,$E7,$00,$DA,$DA ; $D1352B
    db $9D,$9D,$0F,$E6,$A6,$F8,$68,$04,$03,$0F,$A6,$66,$28,$98,$02,$AE ; $D1353B
    db $7B,$04,$B5,$9C,$AB,$49,$F1,$08,$00,$E8,$E8,$70,$D4,$DC,$AC,$BC ; $D1354B
    db $5C,$7C,$B8,$F8,$78,$F8,$E0,$E0,$F7,$0A,$0F,$7F,$A1,$B8,$01,$8A ; $D1355B
    db $FF,$43,$0E,$21,$41,$07,$07,$0A,$0A,$50,$07,$03,$03,$0A,$0E,$0B ; $D1356B
    db $0A,$09,$0F,$CC,$03,$0F,$0F,$01,$09,$7D,$0F,$02,$8E,$7B,$05,$3D ; $D1357B
    db $01,$06,$09,$3F,$71,$8E,$CF,$95,$97,$0E,$0F,$CA,$FF,$F1,$BA,$D8 ; $D1358B
    db $F6,$46,$AD,$65,$E6,$B0,$0F,$B0,$EF,$01,$D5,$AA,$05,$FA,$64,$E7 ; $D1359B
    db $41,$52,$3F,$35,$2B,$00,$5F,$FF,$05,$0A,$CD,$3F,$D6,$F4,$A6,$7A ; $D135AB
    db $D1,$B8,$ED,$78,$F7,$4C,$7A,$18,$B3,$EB,$46,$4D,$F9,$BC,$C3,$5C ; $D135BB
    db $E3,$AD,$F2,$72,$FC,$4B,$FC,$33,$DC,$0E,$B1,$45,$A3,$21,$BF,$5F ; $D135CB
    db $DC,$11,$37,$B7,$00,$4F,$49,$C5,$0A,$03,$D6,$79,$7A,$B9,$39,$FF ; $D135DB
    db $BF,$7F,$5F,$B7,$67,$0A,$B0,$B7,$E2,$1F,$BC,$78,$87,$39,$C6,$BF ; $D135EB
    db $40,$DF,$20,$27,$78,$21,$DE,$D2,$8F,$24,$C3,$D3,$37,$12,$47,$7D ; $D135FB
    db $F8,$0B,$FF,$B9,$C8,$0C,$FB,$8D,$64,$86,$67,$AE,$4F,$EA,$0F,$2E ; $D1360B
    db $CB,$E3,$8B,$05,$6F,$84,$7F,$83,$7F,$80,$7F,$88,$77,$01,$0C,$0F ; $D1361B
    db $F3,$C3,$00,$C0,$05,$7A,$01,$08,$00,$E7,$91,$BF,$20,$3F,$90,$2F ; $D1362B
    db $38,$27,$87,$90,$33,$F8,$B8,$0C,$BD,$5E,$8C,$7F,$1E,$3F,$BF,$BF ; $D1363B
    db $9F,$BF,$80,$04,$6F,$DF,$47,$FF,$13,$EF,$15,$EC,$00,$1E,$47,$81 ; $D1364B
    db $5A,$0D,$00,$1E,$37,$00,$33,$09,$3F,$5C,$FB,$B8,$FD,$E8,$F2,$18 ; $D1365B
    db $E2,$39,$C2,$FB,$03,$FE,$0A,$F3,$17,$4D,$46,$07,$FF,$1E,$FF,$FE ; $D1366B
    db $01,$FC,$00,$FE,$F4,$FF,$EC,$FE,$9A,$DC,$06,$E4,$39,$14,$BF,$FD ; $D1367B
    db $01,$79,$FB,$09,$3F,$46,$72,$AD,$27,$EC,$15,$4E,$35,$CE,$47,$BE ; $D1368B
    db $17,$BE,$DD,$F4,$AD,$44,$C0,$FF,$40,$FF,$60,$E1,$01,$E0,$7F,$82 ; $D1369B
    db $01,$22,$7F,$F2,$7F,$2D,$BB,$F7,$02,$01,$8B,$0A,$BF,$C4,$88,$8E ; $D136AB
    db $94,$DD,$C7,$D8,$BB,$86,$F9,$84,$12,$A5,$B8,$AE,$12,$8D,$6E,$99 ; $D136BB
    db $FC,$0C,$7B,$8C,$37,$CC,$51,$77,$01,$CE,$7E,$C7,$5B,$E7,$77,$00 ; $D136CB
    db $07,$01,$7B,$1C,$01,$39,$01,$7D,$3C,$0A,$37,$FF,$5E,$E9,$86,$1E ; $D136DB
    db $A7,$77,$13,$4F,$3B,$FB,$CD,$27,$7E,$FC,$B7,$D3,$A8,$D9,$96,$AE ; $D136EB
    db $77,$EF,$4B,$D7,$FB,$77,$A5,$6B,$FC,$3A,$D3,$35,$71,$97,$FF,$98 ; $D136FB
    db $5D,$BF,$8C,$D6,$3A,$51,$C6,$CF,$97,$08,$5C,$00,$EC,$B1,$43,$8A ; $D1370B
    db $DC,$39,$32,$8B,$8E,$E1,$E1,$A8,$F8,$52,$7F,$20,$3F,$61,$9F,$84 ; $D1371B
    db $F3,$31,$3E,$8A,$8F,$0F,$74,$FE,$3A,$37,$0F,$3B,$79,$C3,$E9,$00 ; $D1372B
    db $2D,$F8,$0B,$3F,$E0,$DF,$40,$B0,$C8,$01,$68,$68,$38,$C8,$78,$78 ; $D1373B
    db $A8,$2E,$40,$60,$C0,$80,$78,$68,$D8,$08,$58,$F8,$0F,$C0,$E2,$04 ; $D1374B
    db $B0,$A5,$39,$50,$FC,$0B,$95,$7F,$06,$0E,$E0,$C5,$05,$0B,$0B,$94 ; $D1375B
    db $79,$F9,$08,$0F,$08,$FF,$18,$40,$A0,$00,$41,$41,$AA,$07,$AA,$FD ; $D1376B
    db $FD,$BF,$BF,$BC,$10,$0F,$12,$00,$2A,$5C,$6C,$BC,$28,$33,$8C,$88 ; $D1377B
    db $73,$73,$B8,$BF,$0E,$0F,$A3,$A3,$54,$54,$20,$73,$20,$3E,$88,$8D ; $D1378B
    db $02,$0F,$5F,$E4,$F3,$1F,$FD,$07,$0F,$52,$C3,$FE,$54,$E7,$B1,$35 ; $D1379B
    db $EF,$3A,$6C,$CE,$E9,$C9,$32,$FE,$80,$FF,$E0,$FF,$5A,$E1,$B6,$78 ; $D137AB
    db $EB,$1C,$7C,$8F,$C9,$F9,$22,$0F,$BF,$A9,$79,$07,$F3,$00,$30,$00 ; $D137BB
    db $CC,$6F,$49,$0A,$D7,$3F,$5F,$AB,$6D,$38,$ED,$C3,$96,$24,$AE,$DE ; $D137CB
    db $47,$7C,$51,$AA,$A8,$45,$F0,$0C,$F3,$8C,$73,$46,$39,$C6,$19,$53 ; $D137DB
    db $A0,$43,$60,$B0,$87,$75,$C8,$02,$BB,$FD,$3E,$9E,$01,$0A,$D0,$5D ; $D137EB
    db $7E,$7A,$B3,$5F,$A6,$07,$DE,$27,$CE,$95,$74,$13,$6B,$C5,$B1,$16 ; $D137FB
    db $3C,$1D,$E7,$09,$F3,$0D,$F0,$05,$F8,$11,$EE,$09,$F6,$84,$7B,$06 ; $D1380B
    db $F9,$19,$88,$39,$B1,$3B,$03,$E2,$0F,$BF,$6A,$9F,$E5,$D5,$18,$8A ; $D1381B
    db $F1,$A9,$EE,$FE,$B7,$FD,$4D,$E2,$39,$B5,$D3,$F7,$FC,$EE,$FC,$7A ; $D1382B
    db $F0,$80,$2D,$49,$03,$FA,$07,$DF,$FF,$1C,$6E,$FF,$F7,$3D,$54,$7F ; $D1383B
    db $38,$FF,$FB,$BD,$7E,$F5,$09,$3F,$D7,$FD,$A4,$97,$A4,$D3,$E4,$0B ; $D1384B
    db $AC,$7D,$3A,$BD,$42,$F1,$F6,$D4,$37,$D2,$7F,$72,$FF,$32,$FF,$FA ; $D1385B
    db $F7,$CA,$F7,$EA,$F7,$5A,$A7,$8A,$2F,$38,$BD,$60,$01,$E0,$A9,$BB ; $D1386B
    db $1E,$40,$00,$C8,$09,$3F,$2E,$AD,$92,$59,$3A,$91,$AC,$87,$F9,$87 ; $D1387B
    db $D2,$AD,$AD,$D9,$C2,$B7,$A8,$F7,$5B,$E7,$7B,$E7,$6F,$F3,$01,$7D ; $D1388B
    db $C0,$01,$77,$F9,$76,$F9,$71,$3C,$BF,$1C,$54,$2A,$FD,$0E,$9F,$01 ; $D1389B
    db $08,$0B,$00,$97,$56,$43,$9E,$F1,$CA,$AA,$49,$D0,$D9,$FD,$FA,$EA ; $D138AB
    db $D4,$D4,$62,$6A,$56,$B5,$E1,$92,$AA,$DB,$D0,$E9,$D9,$E5,$EA,$8D ; $D138BB
    db $03,$DA,$62,$6D,$E3,$00,$73,$AC,$F7,$89,$39,$7A,$1C,$0D,$3F,$E3 ; $D138CB
    db $4D,$4F,$B0,$B0,$BF,$3F,$5F,$5F,$1E,$5E,$EF,$2F,$CB,$AB,$37,$D7 ; $D138DB
    db $01,$0F,$3F,$BF,$5F,$70,$DF,$1E,$DE,$2F,$EF,$8B,$EB,$17,$F7,$02 ; $D138EB
    db $00,$00,$9C,$A9,$B9,$C0,$C7,$E7,$08,$00,$70,$40,$D8,$D0,$D0,$A0 ; $D138FB
    db $18,$A0,$C8,$C8,$03,$50,$50,$DE,$03,$08,$0F,$7C,$80,$17,$3A,$7F ; $D1390B
    db $0E,$D0,$E7,$05,$0E,$04,$04,$F1,$04,$0F,$04,$0F,$E7,$02,$0F,$01 ; $D1391B
    db $67,$BB,$0B,$80,$13,$3F,$83,$FF,$F4,$00,$69,$81,$8E,$08,$29,$20 ; $D1392B
    db $3F,$3A,$00,$83,$A7,$AC,$01,$FE,$9F,$02,$0F,$7C,$01,$43,$75,$1F ; $D1393B
    db $CB,$0D,$3F,$80,$87,$80,$AA,$A6,$62,$7E,$94,$E7,$05,$06,$20,$E0 ; $D1394B
    db $C0,$30,$01,$0F,$A2,$5E,$7E,$04,$81,$87,$F8,$04,$07,$8A,$0F,$00 ; $D1395B
    db $FB,$39,$7F,$A1,$3F,$C0,$DD,$C5,$FE,$0A,$4E,$FF,$38,$3F,$90,$27 ; $D1396B
    db $63,$BB,$26,$6A,$01,$68,$92,$FB,$11,$1C,$00,$09,$0B,$0F,$84,$23 ; $D1397B
    db $E3,$E2,$1F,$7B,$A4,$94,$E8,$16,$19,$00,$0F,$4B,$37,$C0,$A1,$3D ; $D1398B
    db $DF,$55,$47,$FD,$0A,$7F,$75,$0F,$BC,$17,$FE,$FF,$83,$ED,$3D,$24 ; $D1399B
    db $55,$C1,$48,$E3,$84,$09,$8A,$3E,$C8,$7F,$8C,$EF,$1E,$F3,$1F,$DB ; $D139AB
    db $3F,$4F,$CF,$47,$27,$EB,$1B,$89,$3B,$57,$F1,$D5,$FB,$80,$3E,$07 ; $D139BB
    db $08,$00,$5D,$B7,$7F,$12,$4B,$99,$ED,$6C,$C6,$66,$99,$53,$1A,$A5 ; $D139CB
    db $63,$BE,$AC,$CC,$8B,$7C,$45,$3E,$C2,$5F,$11,$8F,$68,$87,$3C,$C3 ; $D139DB
    db $3E,$C1,$0C,$F3,$80,$0D,$BE,$35,$02,$00,$BA,$47,$67,$7C,$D6,$11 ; $D139EB
    db $25,$4C,$29,$BF,$57,$67,$D1,$9F,$98,$47,$09,$07,$19,$FE,$CE,$3F ; $D139FB
    db $7C,$83,$31,$C1,$87,$F8,$60,$FF,$09,$FC,$1B,$EF,$85,$10,$5D,$00 ; $D13A0B
    db $60,$20,$A3,$90,$7F,$FA,$05,$ED,$F9,$E8,$30,$CD,$BC,$2E,$E1,$9B ; $D13A1B
    db $9B,$06,$1F,$96,$0F,$5E,$8F,$4E,$87,$2B,$C7,$57,$E3,$ED,$F3,$7F ; $D13A2B
    db $F1,$B3,$F0,$EB,$5D,$01,$7C,$03,$81,$1E,$00,$0E,$C2,$09,$3F,$55 ; $D13A3B
    db $7E,$38,$E3,$7A,$F5,$73,$73,$F7,$DD,$FD,$F3,$F9,$A8,$FA,$D7,$FE ; $D13A4B
    db $F6,$F9,$FA,$98,$09,$F4,$01,$DD,$FE,$02,$F1,$FA,$A8,$FB,$D6,$FF ; $D13A5B
    db $26,$BB,$0E,$01,$23,$81,$05,$53,$00,$29,$F0,$0A,$7F,$74,$D7,$30 ; $D13A6B
    db $1C,$3D,$BD,$BE,$3E,$5F,$5F,$2F,$6F,$F7,$B7,$BA,$BA,$70,$77,$F8 ; $D13A7B
    db $FB,$0F,$3E,$00,$BE,$5F,$DF,$2F,$EF,$B7,$77,$BA,$44,$7A,$BE,$F9 ; $D13A8B
    db $80,$01,$3F,$C1,$00,$F8,$0A,$09,$45,$35,$00,$28,$18,$7A,$86,$5F ; $D13A9B
    db $60,$57,$58,$65,$8E,$B5,$4E,$C2,$86,$86,$05,$F5,$08,$F8,$02,$FE ; $D13AAB
    db $40,$7F,$50,$5F,$45,$0F,$F0,$55,$7B,$3F,$DB,$B9,$F1,$0E,$03,$50 ; $D13ABB
    db $50,$50,$05,$F8,$0F,$E0,$18,$80,$F8,$04,$0F,$0F,$00,$F8,$80,$03 ; $D13ACB
    db $BC,$EC,$75,$03,$78,$F8,$0F,$41,$3C,$3F,$02,$16,$16,$4D,$4D,$17 ; $D13ADB
    db $17,$2E,$F1,$12,$51,$12,$0F,$17,$E7,$04,$0F,$03,$EA,$13,$7D,$F4 ; $D13AEB
    db $41,$FF,$49,$00,$FA,$A4,$F7,$50,$FF,$EA,$FF,$B4,$E4,$03,$0F,$0F ; $D13AFB
    db $48,$FF,$04,$3A,$0F,$FC,$80,$BB,$53,$00,$AF,$00,$1C,$15,$00,$4B ; $D13B0B
    db $03,$FE,$0B,$57,$3F,$03,$08,$B0,$70,$4A,$D6,$26,$B9,$04,$F9,$04 ; $D13B1B
    db $E8,$1D,$A4,$BA,$2A,$30,$E1,$F0,$42,$FE,$20,$BF,$01,$FE,$0F,$F0 ; $D13B2B
    db $3C,$C3,$07,$50,$F9,$BC,$3E,$00,$9F,$0F,$D2,$BF,$88,$8D,$E9,$60 ; $D13B3B
    db $C6,$0B,$10,$03,$0C,$81,$84,$92,$F4,$5F,$3D,$7D,$FD,$B9,$C5,$5C ; $D13B4B
    db $E2,$0E,$11,$07,$08,$81,$86,$0C,$03,$FD,$03,$87,$0F,$7C,$00,$BE ; $D13B5B
    db $4C,$79,$68,$C5,$A7,$3D,$EB,$0A,$0D,$75,$CC,$73,$57,$9D,$05,$64 ; $D13B6B
    db $05,$7F,$C0,$7E,$CD,$20,$BA,$42,$8C,$D2,$80,$FF,$E1,$FE,$78,$7F ; $D13B7B
    db $18,$FF,$CE,$3F,$E1,$1E,$7D,$80,$9E,$E1,$9F,$33,$65,$E1,$3F,$7F ; $D13B8B
    db $E1,$09,$3F,$92,$73,$30,$71,$C8,$5B,$E0,$3D,$BF,$09,$41,$C5,$F0 ; $D13B9B
    db $C2,$BD,$7E,$FC,$0C,$FF,$F8,$C0,$7C,$F7,$A8,$15,$96,$3D,$C1,$8D ; $D13BAB
    db $BE,$7D,$7E,$FD,$22,$25,$E2,$8F,$01,$C3,$0B,$A6,$FF,$E9,$0F,$20 ; $D13BBB
    db $FF,$7D,$15,$72,$25,$4C,$8F,$8D,$2E,$FE,$D6,$EF,$EF,$F7,$16,$F9 ; $D13BCB
    db $0F,$F8,$8B,$BC,$FD,$9E,$6D,$DE,$FE,$CF,$88,$0F,$F7,$EF,$0E,$B9 ; $D13BDB
    db $47,$00,$63,$A5,$39,$31,$D7,$45,$FF,$0A,$6E,$3F,$38,$80,$FD,$9B ; $D13BEB
    db $E7,$E8,$58,$D1,$F7,$6E,$AF,$45,$F3,$AA,$DB,$51,$50,$0F,$83,$FF ; $D13BFB
    db $5C,$48,$3A,$F8,$D1,$7F,$AE,$6F,$C1,$3F,$CA,$3B,$50,$B1,$7D,$01 ; $D13C0B
    db $F9,$B0,$00,$AE,$00,$C1,$C1,$FD,$F1,$00,$E1,$E5,$09,$3F,$3E,$D7 ; $D13C1B
    db $1E,$9D,$1F,$04,$97,$C0,$81,$98,$C0,$A8,$84,$BE,$A2,$8A,$94,$1E ; $D13C2B
    db $FE,$1D,$FF,$04,$F7,$80,$F1,$80,$F8,$80,$BC,$A2,$BE,$80,$9E,$E0 ; $D13C3B
    db $8E,$B7,$F3,$BA,$C1,$78,$AE,$C1,$1E,$F5,$09,$3F,$C7,$25,$25,$02 ; $D13C4B
    db $02,$41,$C1,$10,$F0,$84,$FC,$21,$3F,$08,$0F,$02,$03,$D4,$08,$0F ; $D13C5B
    db $A3,$EC,$3F,$78,$E3,$3B,$07,$E1,$11,$49,$80,$58,$98,$60,$E0,$3D ; $D13C6B
    db $F8,$F8,$0E,$0F,$37,$15,$8F,$0F,$3D,$01,$01,$16,$79,$0F,$14,$00 ; $D13C7B
    db $05,$D4,$04,$5C,$7E,$7F,$BE,$BF,$9B,$37,$BB,$D2,$08,$0F,$AF,$7D ; $D13C8B
    db $97,$12,$50,$FF,$0E,$FE,$08,$0C,$02,$09,$2C,$32,$44,$7C,$A8,$F8 ; $D13C9B
    db $D0,$F4,$7D,$FE,$FF,$75,$08,$CB,$66,$20,$3E,$23,$0F,$AE,$3F,$0F ; $D13CAB
    db $3A,$FB,$38,$97,$7D,$20,$80,$0B,$3F,$DF,$CF,$B2,$7C,$C3,$FD,$09 ; $D13CBB
    db $11,$1E,$04,$07,$00,$B5,$CF,$3F,$30,$FE,$C1,$FF,$2C,$10,$1F,$0F ; $D13CCB
    db $75,$F0,$8E,$37,$3E,$3C,$41,$03,$0F,$7F,$8C,$B8,$C5,$F2,$42,$7D ; $D13CDB
    db $51,$72,$81,$60,$21,$C0,$23,$D2,$58,$67,$12,$1E,$80,$51,$3B,$73 ; $D13CEB
    db $C9,$B0,$02,$F3,$B3,$09,$0F,$7E,$AA,$3B,$23,$AE,$5C,$BF,$F1,$09 ; $D13CFB
    db $78,$0C,$09,$3F,$ED,$F3,$07,$67,$7F,$B9,$BF,$3E,$5A,$AF,$B7,$01 ; $D13D0B
    db $B7,$5F,$5F,$2A,$2A,$E1,$FF,$E7,$06,$0F,$1E,$43,$73,$06,$BD,$B9 ; $D13D1B
    db $FC,$10,$7B,$FF,$2E,$FF,$FD,$38,$FC,$FE,$FD,$70,$FF,$81,$EF,$E1 ; $D13D2B
    db $EE,$EA,$EF,$A5,$AF,$FF,$FC,$FD,$0E,$FE,$71,$04,$FE,$81,$EE,$E0 ; $D13D3B
    db $EF,$25,$0F,$E8,$FB,$8F,$00,$6F,$AB,$1E,$C5,$0A,$0A,$7F,$5C,$EF ; $D13D4B
    db $F0,$FE,$EF,$AA,$7F,$14,$71,$1B,$F3,$53,$BB,$28,$BA,$54,$72,$ED ; $D13D5B
    db $F7,$EE,$F7,$2A,$F7,$10,$FD,$93,$7F,$01,$A8,$7E,$50,$03,$B6,$1A ; $D13D6B
    db $00,$19,$00,$DD,$BD,$BF,$71,$EC,$01,$D6,$F6,$0B,$DD,$3F,$73,$6A ; $D13D7B
    db $FB,$AD,$AB,$84,$CC,$50,$C0,$48,$E4,$3C,$E0,$2A,$F6,$44,$EA,$6A ; $D13D8B
    db $9B,$A9,$DF,$84,$FC,$40,$F8,$40,$FC,$20,$FC,$22,$FE,$40,$EE,$F5 ; $D13D9B
    db $76,$A1,$7B,$B8,$D5,$41,$71,$DC,$01,$AE,$E2,$09,$3F,$04,$0B,$E1 ; $D13DAB
    db $08,$0F,$14,$77,$5B,$DB,$09,$89,$D8,$D8,$70,$70,$13,$90,$E8,$06 ; $D13DBB
    db $0F,$95,$7F,$63,$5F,$BF,$C0,$11,$00,$80,$80,$C0,$60,$E0,$0C,$B0 ; $D13DCB
    db $F0,$F8,$F8,$2F,$20,$79,$20,$0A,$0F,$80,$5E,$3C,$7B,$40,$0F,$3C ; $D13DDB
    db $78,$1E,$78,$18,$18,$14,$0F,$F5,$18,$00,$A3,$A3,$DE,$10,$0F,$18 ; $D13DEB
    db $00,$0F,$40,$40,$80,$80,$14,$78,$0F,$20,$00,$16,$17,$22,$2B,$2B ; $D13DFB
    db $7D,$3B,$10,$0F,$F2,$18,$92,$57,$01,$A8,$D4,$FF,$5A,$5F,$AF,$AF ; $D13E0B
    db $F1,$02,$58,$E0,$06,$0F,$FF,$00,$2B,$00,$78,$05,$0B,$37,$95,$95 ; $D13E1B
    db $D1,$EF,$4F,$AD,$74,$19,$FF,$A8,$16,$FF,$D5,$FF,$45,$0F,$E1,$AE ; $D13E2B
    db $0F,$EC,$02,$3F,$01,$57,$3C,$00,$2A,$09,$3F,$6F,$6B,$6F,$A5,$85 ; $D13E3B
    db $0A,$0A,$01,$01,$F9,$07,$05,$FF,$03,$FF,$55,$FF,$84,$0F,$01,$FF ; $D13E4B
    db $9F,$0F,$01,$C1,$67,$00,$FA,$DD,$C9,$78,$AA,$09,$3F,$F6,$50,$5D ; $D13E5B
    db $E2,$7A,$A4,$A3,$F5,$67,$45,$87,$AD,$87,$95,$89,$87,$85,$83,$50 ; $D13E6B
    db $B6,$A0,$C6,$A1,$D7,$45,$77,$85,$BF,$85,$9F,$81,$8F,$81,$87,$E6 ; $D13E7B
    db $00,$66,$01,$81,$32,$00,$3A,$00,$1A,$D4,$3D,$7D,$06,$09,$3F,$70 ; $D13E8B
    db $A9,$EF,$52,$F7,$F5,$F7,$53,$53,$AB,$AB,$11,$11,$F0,$0C,$0F,$46 ; $D13E9B
    db $00,$A5,$7E,$00,$18,$D0,$52,$80,$00,$31,$B9,$40,$40,$EF,$0C,$0F ; $D13EAB
    db $14,$1E,$00,$15,$15,$16,$0F,$F1,$18,$00,$7E,$7F,$FB,$06,$E7,$DF ; $D13EBB
    db $08,$0F,$18,$8C,$F7,$AB,$FF,$00,$55,$1E,$55,$0A,$0A,$10,$0F,$78 ; $D13ECB
    db $54,$17,$3F,$03,$01,$00,$82,$83,$03,$03,$83,$83,$02,$02,$88,$F9 ; $D13EDB
    db $EC,$B7,$03,$F3,$06,$0F,$02,$DD,$19,$81,$80,$25,$C0,$E0,$E0,$50 ; $D13EEB
    db $50,$20,$1E,$20,$08,$08,$0C,$0F,$7C,$00,$14,$BC,$FB,$00,$00,$52 ; $D13EFB
    db $4E,$43,$02,$00,$00,$55,$04,$00,$00,$41,$5D,$D2,$E5,$7B,$58,$04 ; $D13F0B
    db $02,$05,$0C,$01,$8A,$D7,$00,$D4,$29,$CE,$39,$55,$3A,$50,$19,$6C ; $D13F1B
    db $21,$CC,$08,$06,$00,$16,$32,$E7,$1C,$92,$21,$0E,$11,$00,$00,$08 ; $D13F2B
    db $00,$DA,$4E,$1C,$00,$28,$50,$08,$00,$01,$00,$01,$02,$00,$03,$00 ; $D13F3B
    db $04,$00,$05,$34,$0F,$33,$00,$2D,$07,$83,$25,$09,$00,$0A,$C0,$03 ; $D13F4B
    db $13,$0B,$00,$0C,$00,$0D,$0F,$00,$0E,$00,$0F,$03,$18,$13,$10,$00 ; $D13F5B
    db $4E,$12,$00,$1E,$13,$00,$14,$01,$11,$60,$15,$67,$00,$17,$00,$18 ; $D13F6B
    db $02,$00,$19,$00,$1A,$00,$1B,$6C,$13,$6B,$1D,$38,$00,$1E,$13,$1F ; $D13F7B
    db $09,$00,$20,$00,$21,$81,$13,$22,$00,$23,$00,$24,$C1,$13,$25,$00 ; $D13F8B
    db $26,$E7,$01,$13,$27,$1C,$93,$29,$13,$05,$2A,$00,$2B,$00,$2C,$05 ; $D13F9B
    db $11,$2D,$00,$2E,$C2,$00,$2F,$00,$30,$00,$31,$00,$32,$00,$33,$00 ; $D13FAB
    db $34,$65,$13,$35,$C2,$00,$36,$00,$37,$00,$38,$00,$39,$00,$3A,$00 ; $D13FBB
    db $3B,$82,$13,$3C,$00,$3D,$E1,$00,$3E,$00,$3F,$00,$40,$00,$41,$00 ; $D13FCB
    db $42,$00,$43,$41,$13,$44,$00,$45,$70,$00,$46,$00,$47,$00,$48,$00 ; $D13FDB
    db $49,$00,$4A,$00,$4B,$A0,$13,$4C,$00,$4D,$B8,$50,$00,$4E,$00,$4F ; $D13FEB
    db $00,$50,$00,$51,$00,$52,$00,$53,$13,$54,$00,$5C,$55,$26,$00,$56 ; $D13FFB
    db $00,$57,$00,$58,$00,$59,$00,$5A,$00,$5B,$13,$5C,$5C,$28,$00,$5D ; $D1400B
    db $00,$5E,$00,$5F,$00,$60,$00,$61,$00,$62,$13,$63,$2E,$00,$64,$14 ; $D1401B
    db $00,$65,$00,$66,$00,$67,$00,$68,$00,$69,$00,$6A,$13,$17,$6B,$00 ; $D1402B
    db $6C,$0A,$00,$6D,$00,$6E,$00,$6F,$00,$70,$00,$71,$00,$72,$0B,$13 ; $D1403B
    db $73,$00,$74,$85,$00,$75,$00,$76,$00,$77,$00,$78,$00,$79,$00,$7A ; $D1404B
    db $05,$13,$7B,$00,$7C,$C2,$00,$7D,$00,$7E,$00,$7F,$00,$80,$00,$81 ; $D1405B
    db $00,$82,$82,$13,$83,$00,$84,$E1,$00,$85,$00,$86,$00,$87,$00,$88 ; $D1406B
    db $00,$89,$00,$8A,$C1,$11,$8B,$00,$8C,$76,$00,$8D,$00,$8E,$00,$8F ; $D1407B
    db $00,$90,$00,$91,$00,$92,$00,$93,$00,$94,$00,$95,$00,$96,$00,$97 ; $D1408B
    db $00,$98,$00,$99,$00,$9A,$00,$9B,$00,$9C,$00,$9D,$00,$9E,$E2,$13 ; $D1409B
    db $9F,$E3,$00,$A0,$00,$A1,$00,$A2,$00,$A3,$00,$A4,$00,$A5,$00,$A6 ; $D140AB
    db $00,$A7,$C5,$13,$A8,$C7,$00,$A9,$00,$AA,$00,$AB,$00,$AC,$00,$AD ; $D140BB
    db $00,$AE,$00,$AF,$00,$B0,$17,$4F,$80,$B1,$6E,$00,$B2,$00,$B3,$00 ; $D140CB
    db $B4,$00,$B5,$00,$B6,$00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$BB,$00 ; $D140DB
    db $BC,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00,$C1,$00,$C2,$00,$C3,$2E ; $D140EB
    db $13,$C4,$3C,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00,$C9,$00,$CA,$00 ; $D140FB
    db $CB,$00,$CC,$13,$5C,$CD,$78,$00,$CE,$00,$CF,$00,$D0,$00,$D1,$00 ; $D1410B
    db $D2,$00,$D3,$00,$D4,$00,$D5,$A1,$D6,$B8,$F1,$00,$D7,$00,$D8,$00 ; $D1411B
    db $D9,$00,$DA,$00,$DB,$00,$DC,$00,$DD,$00,$DE,$13,$DF,$71,$00,$E0 ; $D1412B
    db $00,$E1,$00,$E2,$00,$E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7,$E2,$13 ; $D1413B
    db $E8,$E3,$00,$E9,$00,$EA,$00,$EB,$00,$EC,$00,$ED,$00,$EE,$00,$EF ; $D1414B
    db $00,$F0,$C5,$13,$F1,$C7,$00,$F2,$00,$F3,$00,$F4,$00,$F5,$00,$F6 ; $D1415B
    db $00,$F7,$00,$F8,$00,$F9,$80,$13,$FA,$00,$FB,$00,$FC,$03,$00,$FD ; $D1416B
    db $00,$FE,$00,$FF,$A3,$88,$28,$00,$00,$13,$02,$B8,$4C,$01,$03,$01 ; $D1417B
    db $04,$01,$05,$01,$06,$01,$07,$01,$08,$13,$09,$B8,$52,$01,$0A,$01 ; $D1418B
    db $0B,$01,$0C,$01,$0D,$01,$0E,$01,$0F,$13,$E3,$10,$01,$11,$01,$12 ; $D1419B
    db $01,$13,$01,$14,$01,$15,$01,$16,$01,$17,$01,$28,$43,$5C,$18,$26 ; $D141AB
    db $01,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D,$01,$1E,$13,$5C,$1F,$26 ; $D141BB
    db $01,$20,$01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$13,$5C,$26,$26 ; $D141CB
    db $01,$27,$01,$28,$01,$29,$01,$2A,$01,$2B,$01,$2C,$13,$5C,$2D,$26 ; $D141DB
    db $01,$2E,$01,$2F,$01,$30,$01,$31,$01,$32,$01,$33,$13,$2E,$34,$01 ; $D141EB
    db $12,$35,$01,$36,$01,$37,$01,$38,$01,$39,$01,$8B,$C0,$2E,$13,$3A ; $D141FB
    db $13,$01,$3B,$01,$3C,$01,$3D,$01,$3E,$01,$3F,$01,$40,$2E,$27,$41 ; $D1420B
    db $13,$01,$42,$01,$43,$01,$44,$01,$45,$01,$46,$01,$47,$00,$13,$48 ; $D1421B
    db $01,$49,$01,$4A,$01,$4B,$0F,$01,$4C,$01,$4D,$01,$60,$13,$00,$4E ; $D1422B
    db $01,$4F,$01,$03,$50,$01,$51,$01,$52,$01,$E4,$02,$47,$53,$01,$07 ; $D1423B
    db $54,$01,$55,$01,$56,$80,$05,$13,$57,$01,$58,$01,$59,$01,$78,$5A ; $D1424B
    db $05,$13,$5B,$01,$07,$5C,$01,$5D,$01,$5E,$B0,$05,$13,$00,$5F,$01 ; $D1425B
    db $60,$3D,$01,$61,$05,$11,$07,$13,$62,$9E,$0B,$13,$63,$09,$13,$1E ; $D1426B
    db $64,$01,$65,$07,$13,$00,$66,$01,$67,$01,$68,$01,$69,$01,$78,$6A ; $D1427B
    db $03,$15,$6B,$01,$01,$6C,$01,$6D,$01,$6E,$01,$6F,$E0,$03,$13,$70 ; $D1428B
    db $01,$71,$01,$07,$72,$01,$73,$01,$74,$BC,$07,$51,$06,$00,$75,$B8 ; $D1429B
    db $4C,$01,$76,$01,$77,$01,$18,$00,$78,$01,$79,$01,$7A,$29,$7B,$0E ; $D142AB
    db $01,$7C,$01,$7D,$02,$13,$7E,$01,$7F,$01,$80,$60,$13,$81,$01,$82 ; $D142BB
    db $01,$70,$83,$13,$84,$01,$1E,$85,$01,$86,$11,$51,$B8,$C8,$87,$01 ; $D142CB
    db $88,$01,$89,$01,$8A,$01,$8B,$01,$8C,$01,$8D,$01,$8E,$01,$13,$8F ; $D142DB
    db $B8,$50,$01,$90,$01,$91,$01,$92,$01,$93,$01,$94,$01,$95,$13,$96 ; $D142EB
    db $01,$5C,$97,$3C,$01,$98,$01,$99,$01,$9A,$01,$9B,$01,$9C,$01,$9D ; $D142FB
    db $11,$4F,$9E,$2E,$01,$9F,$14,$01,$A0,$01,$A1,$01,$A2,$01,$A3,$01 ; $D1430B
    db $A4,$01,$A5,$27,$17,$A6,$01,$A7,$0A,$01,$A8,$01,$A9,$01,$AA,$01 ; $D1431B
    db $AB,$01,$AC,$01,$AD,$0B,$13,$AE,$01,$AF,$87,$01,$B0,$01,$B1,$01 ; $D1432B
    db $B2,$01,$B3,$01,$B4,$01,$B5,$AE,$11,$4F,$32,$83,$00,$B6,$01,$B7 ; $D1433B
    db $01,$B8,$01,$B9,$01,$BA,$01,$BB,$01,$BC,$01,$2E,$13,$BD,$13,$01 ; $D1434B
    db $BE,$01,$BF,$01,$C0,$01,$C1,$01,$C2,$01,$C3,$2E,$13,$C4,$1E,$01 ; $D1435B
    db $C5,$01,$C6,$01,$C7,$01,$C8,$01,$C9,$01,$CA,$0F,$4F,$17,$95,$00 ; $D1436B
    db $CB,$1C,$01,$CC,$01,$CD,$01,$CE,$01,$CF,$01,$D0,$01,$D1,$01,$D2 ; $D1437B
    db $01,$D3,$DF,$00,$5C,$D4,$78,$01,$D5,$01,$D6,$01,$D7,$01,$D8,$01 ; $D1438B
    db $D9,$01,$DA,$01,$DB,$01,$DC,$13,$DD,$B8,$F8,$01,$DE,$01,$DF,$01 ; $D1439B
    db $E0,$01,$E1,$01,$E2,$01,$E3,$01,$E4,$01,$E5,$0D,$51,$BA,$00,$5C ; $D143AB
    db $E6,$71,$01,$E7,$01,$E8,$01,$E9,$01,$EA,$01,$EB,$01,$EC,$01,$ED ; $D143BB
    db $01,$EE,$A7,$00,$EF,$71,$01,$F0,$01,$F1,$01,$F2,$01,$F3,$01,$F4 ; $D143CB
    db $01,$F5,$01,$F6,$01,$F7,$E0,$13,$F8,$01,$F9,$B8,$73,$01,$FA,$01 ; $D143DB
    db $FB,$01,$FC,$01,$FD,$01,$FE,$01,$FF,$13,$C3,$0F,$F0,$02,$01,$02 ; $D143EB
    db $5C,$00,$32,$03,$02,$04,$02,$05,$02,$06,$02,$07,$02,$08,$02,$12 ; $D143FB
    db $09,$E3,$02,$0A,$02,$0B,$02,$0C,$02,$0D,$02,$0E,$02,$0F,$02,$10 ; $D1440B
    db $02,$11,$C2,$13,$12,$02,$E3,$13,$02,$14,$02,$15,$02,$16,$02,$17 ; $D1441B
    db $02,$18,$02,$19,$02,$1A,$02,$F9,$10,$41,$1B,$70,$02,$1C,$02,$1D ; $D1442B
    db $02,$1E,$02,$1F,$02,$20,$02,$21,$98,$25,$22,$02,$00,$23,$02,$24 ; $D1443B
    db $02,$25,$02,$26,$02,$78,$27,$01,$13,$28,$02,$00,$29,$02,$2A,$02 ; $D1444B
    db $2B,$02,$2C,$02,$7B,$2D,$01,$13,$D7,$0C,$00,$0F,$2E,$02,$2F,$02 ; $D1445B
    db $30,$02,$31,$02,$32,$02,$33,$02,$01,$90,$D3,$02,$35,$02,$36,$03 ; $D1446B
    db $02,$37,$02,$38,$02,$39,$C0,$01,$13,$3A,$02,$3B,$02,$3C,$03,$02 ; $D1447B
    db $3D,$02,$3E,$02,$3F,$DE,$01,$13,$0C,$00,$B8,$5A,$48,$01,$40,$02 ; $D1448B
    db $41,$02,$42,$02,$43,$02,$44,$02,$46,$D3,$45,$02,$46,$0B,$03,$02 ; $D1449B
    db $48,$02,$49,$02,$4A,$CB,$01,$13,$4B,$87,$02,$4C,$02,$4D,$02,$4E ; $D144AB
    db $02,$4F,$02,$50,$02,$47,$C8,$15,$21,$51,$02,$52,$03,$02,$53,$02 ; $D144BB
    db $54,$02,$55,$C0,$03,$C5,$56,$02,$57,$02,$58,$0F,$02,$59,$02,$5A ; $D144CB
    db $03,$00,$13,$5B,$02,$5C,$02,$5D,$02,$5E,$F7,$05,$13,$83,$0E,$00 ; $D144DB
    db $5F,$02,$60,$02,$E7,$09,$FB,$DE,$1F,$13,$A4,$00,$7B,$FF,$08,$01 ; $D144EB
    db $D4,$08,$00,$15,$00,$FD,$03,$F6,$0D,$D5,$06,$AA,$6C,$26,$97,$19 ; $D144FB
    db $15,$00,$FE,$FE,$F8,$C8,$ED,$F1,$DA,$61,$62,$77,$1B,$CC,$14,$E1 ; $D1450B
    db $50,$CC,$EF,$4B,$BB,$3B,$77,$77,$F7,$F7,$7F,$6F,$80,$1A,$D7,$F3 ; $D1451B
    db $F3,$A0,$9B,$6F,$18,$7F,$BB,$DF,$1B,$F7,$EF,$67,$7F,$1F,$F9,$77 ; $D1452B
    db $92,$CE,$05,$51,$06,$9F,$0D,$03,$17,$5F,$9F,$40,$0C,$57,$98,$BD ; $D1453B
    db $96,$EB,$E5,$F4,$F2,$FC,$FA,$F9,$FA,$10,$5F,$5C,$7F,$2C,$7F,$2F ; $D1454B
    db $CF,$B3,$F3,$E8,$F9,$F5,$F9,$FD,$FD,$F8,$97,$00,$7F,$80,$5F,$00 ; $D1455B
    db $AF,$B0,$2F,$E0,$F0,$02,$38,$9F,$BF,$7F,$1E,$DF,$17,$37,$02,$9F ; $D1456B
    db $33,$F7,$04,$9F,$9F,$CE,$03,$9F,$EA,$38,$9F,$E1,$5F,$EE,$E2,$9F ; $D1457B
    db $67,$63,$9F,$FF,$EF,$18,$10,$F5,$F1,$9F,$93,$E7,$C8,$9F,$FF,$71 ; $D1458B
    db $9F,$1F,$DB,$CD,$9F,$1B,$E3,$02,$57,$FD,$24,$9E,$9F,$02,$0F,$20 ; $D1459B
    db $00,$BF,$9F,$1E,$C4,$9F,$F6,$F0,$8E,$9F,$7F,$38,$9F,$4F,$9F,$FB ; $D145AB
    db $F3,$07,$9F,$7F,$8F,$9F,$AF,$03,$38,$9F,$BF,$9F,$1F,$4C,$BF,$1F ; $D145BB
    db $01,$E3,$9F,$0C,$1E,$9F,$BF,$39,$07,$9F,$63,$DF,$1B,$E4,$16,$18 ; $D145CB
    db $9F,$E7,$E9,$9F,$F7,$7F,$90,$9F,$F7,$FB,$C6,$9F,$91,$67,$9F,$D2 ; $D145DB
    db $AE,$1F,$9F,$F9,$03,$06,$9F,$3F,$57,$07,$9C,$3F,$3F,$9F,$33,$17 ; $D145EB
    db $BC,$9F,$FE,$88,$9F,$FB,$38,$9F,$FF,$9F,$1B,$C7,$9F,$F3,$FD,$1E ; $D145FB
    db $9F,$FA,$03,$9F,$78,$80,$0A,$9F,$3F,$9F,$B0,$9F,$F7,$09,$C7,$9F ; $D1460B
    db $FF,$2C,$8C,$02,$9F,$FF,$FC,$9F,$E0,$40,$CF,$9F,$EE,$14,$03,$44 ; $D1461B
    db $9C,$47,$C9,$EF,$7F,$88,$9F,$F3,$00,$9F,$FF,$FB,$F7,$F1,$B1,$E7 ; $D1462B
    db $2F,$65,$EF,$9F,$FB,$1D,$9F,$FB,$F3,$87,$55,$55,$C0,$03,$91,$AE ; $D1463B
    db $FF,$04,$FF,$55,$FC,$04,$3F,$17,$06,$C8,$17,$9C,$BF,$B4,$9F,$21 ; $D1464B
    db $F9,$FF,$9F,$18,$41,$6F,$3B,$31,$E7,$B9,$9F,$F8,$F9,$E3,$06,$9F ; $D1465B
    db $FF,$A0,$DA,$06,$9F,$9D,$0C,$9F,$FE,$01,$02,$00,$F1,$0E,$FA,$19 ; $D1466B
    db $FC,$00,$BC,$44,$66,$7C,$0B,$FE,$D4,$32,$FB,$F9,$05,$FF,$F1,$E4 ; $D1467B
    db $C1,$C1,$C5,$C1,$01,$81,$06,$38,$6F,$35,$0E,$71,$BD,$8E,$B0,$C0 ; $D1468B
    db $7E,$E0,$0E,$F0,$78,$E0,$E3,$C4,$C5,$AF,$C0,$8E,$F0,$4D,$0F,$B0 ; $D1469B
    db $81,$7E,$C1,$0E,$87,$78,$EF,$CF,$5F,$1F,$3F,$90,$E9,$7F,$75,$70 ; $D146AB
    db $3F,$00,$DF,$EF,$37,$BF,$5F,$08,$68,$24,$CE,$28,$3F,$78,$01,$17 ; $D146BB
    db $00,$FA,$FB,$D8,$B3,$A5,$F3,$F4,$5C,$F1,$B2,$F4,$FD,$F0,$F3,$F8 ; $D146CB
    db $E3,$EA,$FC,$FA,$FC,$FB,$F8,$FD,$F9,$F2,$FA,$F1,$F2,$FD,$F4,$16 ; $D146DB
    db $E3,$EB,$97,$70,$CB,$30,$9B,$7B,$E8,$30,$98,$F8,$EB,$31,$9B,$71 ; $D146EB
    db $F3,$34,$0B,$9B,$0D,$C5,$07,$9C,$0D,$E5,$85,$9D,$0F,$E4,$0F,$94 ; $D146FB
    db $0E,$F8,$60,$DD,$3F,$C0,$9F,$07,$60,$0F,$F0,$97,$60,$A0,$02,$59 ; $D1470B
    db $93,$67,$48,$6F,$DF,$F9,$6D,$06,$DF,$05,$8E,$DF,$FC,$08,$24,$D9 ; $D1471B
    db $FF,$DF,$33,$E3,$E1,$DF,$89,$86,$DF,$6D,$15,$DF,$31,$3D,$06,$DF ; $D1472B
    db $5E,$E2,$C6,$DF,$60,$DF,$38,$E7,$8D,$DF,$CD,$C7,$DF,$83,$5E,$1B ; $D1473B
    db $DF,$F8,$DF,$88,$D6,$BF,$1C,$4F,$7D,$7D,$08,$73,$BF,$DF,$94,$E8 ; $D1474B
    db $60,$71,$7D,$DD,$BF,$CD,$BF,$AE,$92,$04,$FC,$2C,$BF,$EB,$BF,$48 ; $D1475B
    db $FA,$BF,$FC,$67,$EB,$BF,$EB,$1C,$BF,$60,$BF,$70,$C9,$BF,$73,$3C ; $D1476B
    db $C6,$BF,$0F,$E7,$BF,$38,$8D,$6D,$BF,$C6,$C5,$BF,$86,$70,$B6,$9F ; $D1477B
    db $BF,$31,$BF,$40,$BF,$9F,$E0,$E4,$06,$BF,$EF,$C8,$BF,$FB,$3C,$BF ; $D1478B
    db $0A,$03,$BF,$FC,$CE,$BF,$EB,$18,$BF,$8B,$83,$BF,$E5,$9D,$C7,$BF ; $D1479B
    db $1D,$24,$18,$BF,$62,$BF,$5A,$62,$E3,$BF,$05,$20,$BF,$D2,$BF,$DE ; $D147AB
    db $E3,$BF,$DA,$6C,$BF,$A3,$B6,$FD,$44,$FD,$F1,$78,$BF,$BD,$C7,$BF ; $D147BB
    db $FF,$39,$BF,$0F,$C2,$02,$3F,$FD,$64,$BF,$F9,$18,$BF,$F8,$BF,$E9 ; $D147CB
    db $E8,$93,$BF,$67,$02,$BF,$FA,$0C,$BF,$FE,$E9,$BF,$6B,$63,$38,$BF ; $D147DB
    db $42,$32,$18,$BF,$49,$39,$BF,$71,$1C,$C6,$BF,$8F,$67,$BF,$31,$8F ; $D147EB
    db $4D,$BF,$87,$4E,$C4,$BF,$72,$0C,$9F,$FF,$03,$9F,$FF,$63,$0D,$9F ; $D147FB
    db $FC,$04,$51,$9F,$BA,$FC,$C4,$9F,$F0,$86,$9F,$57,$79,$9F,$31,$4B ; $D1480B
    db $31,$9F,$F1,$C1,$8E,$9F,$5B,$E1,$31,$9F,$95,$9F,$C5,$8B,$C6,$9F ; $D1481B
    db $F1,$9F,$30,$85,$5B,$9F,$FB,$DF,$FF,$3C,$BD,$7F,$01,$F1,$BF,$0E ; $D1482B
    db $BF,$DB,$FB,$BD,$53,$07,$AE,$99,$10,$9F,$FB,$06,$9F,$FF,$9F,$31 ; $D1483B
    db $F5,$F5,$9F,$F7,$FD,$C7,$9F,$FB,$38,$01,$9F,$FE,$71,$F5,$9F,$F7 ; $D1484B
    db $9C,$9F,$D7,$9F,$31,$DF,$2E,$9F,$99,$B8,$9C,$9F,$8F,$9F,$31,$1F ; $D1485B
    db $CF,$9F,$17,$C9,$8E,$9F,$C4,$9C,$21,$9F,$80,$9F,$68,$21,$0F,$BF ; $D1486B
    db $40,$1F,$E0,$0F,$DD,$5F,$40,$3F,$FD,$00,$FC,$82,$03,$03,$26,$9A ; $D1487B
    db $47,$C2,$FD,$32,$03,$07,$7C,$F7,$B4,$DF,$52,$EF,$6D,$C7,$C2,$9C ; $D1488B
    db $04,$F6,$E6,$8F,$23,$8D,$A1,$B5,$81,$53,$00,$6E,$01,$CD,$0A,$3B ; $D1489B
    db $27,$EA,$0C,$37,$10,$F5,$50,$04,$E3,$EF,$9C,$F7,$98,$67,$38,$8F ; $D148AB
    db $70,$E5,$7A,$22,$FD,$71,$3C,$D8,$04,$00,$EF,$60,$97,$C0,$A7,$C0 ; $D148BB
    db $97,$7C,$65,$68,$C0,$22,$43,$30,$DF,$1F,$8F,$0F,$C6,$02,$EF,$0F ; $D148CB
    db $FD,$0D,$FF,$0B,$7E,$66,$6F,$F0,$3F,$DF,$7F,$8F,$39,$C7,$1B,$EF ; $D148DB
    db $0B,$FD,$08,$FF,$C7,$BE,$60,$4F,$30,$6B,$FB,$A5,$77,$AD,$AD,$09 ; $D148EB
    db $8F,$06,$8B,$03,$75,$1F,$74,$80,$83,$77,$76,$AD,$70,$8F,$77,$60 ; $D148FB
    db $8B,$0E,$C5,$C9,$8B,$84,$1A,$0D,$03,$BE,$BD,$E3,$80,$FD,$82,$F2 ; $D1490B
    db $35,$B4,$79,$F3,$C5,$F0,$8B,$F0,$0D,$C1,$BE,$C0,$C1,$10,$18,$EA ; $D1491B
    db $36,$74,$90,$C5,$35,$E5,$2C,$F1,$9D,$23,$1E,$83,$7B,$2A,$F2,$26 ; $D1492B
    db $FF,$65,$F4,$5B,$8E,$18,$F4,$65,$90,$CE,$20,$1F,$84,$1A,$C2,$03 ; $D1493B
    db $20,$15,$60,$EB,$57,$A8,$FB,$A0,$FB,$54,$99,$9C,$09,$04,$D9,$3C ; $D1494B
    db $E9,$C4,$F9,$DC,$AF,$AF,$A3,$07,$57,$07,$9D,$07,$E5,$E7,$FD,$07 ; $D1495B
    db $35,$D7,$3D,$C7,$8C,$DF,$DD,$50,$DF,$CF,$63,$CA,$DF,$F4,$C4,$8C ; $D1496B
    db $DF,$29,$DF,$73,$71,$22,$DF,$02,$C6,$DF,$0E,$DF,$70,$7D,$DF,$CD ; $D1497B
    db $BC,$C6,$DF,$EF,$30,$DF,$31,$C5,$78,$DF,$79,$34,$8E,$DF,$02,$CD ; $D1498B
    db $31,$DF,$2F,$DF,$82,$45,$8C,$DF,$C3,$B8,$DF,$AF,$71,$2D,$DF,$8F ; $D1499B
    db $C6,$DF,$29,$DF,$31,$E7,$70,$DF,$7D,$AF,$9C,$DF,$9B,$DF,$70,$28 ; $D149AB
    db $DF,$68,$C7,$F1,$02,$DF,$AF,$24,$C4,$DF,$88,$87,$DF,$76,$FF,$19 ; $D149BB
    db $DF,$AF,$DF,$88,$C3,$DF,$AB,$A4,$38,$DF,$B6,$DF,$DF,$E1,$DF,$3C ; $D149CB
    db $71,$C6,$DF,$AB,$DF,$31,$C9,$B6,$DF,$A0,$DF,$8E,$DF,$B6,$18,$24 ; $D149DB
    db $DF,$0C,$DF,$31,$08,$F0,$DF,$6D,$FC,$8C,$DF,$1A,$F6,$DF,$C6,$83 ; $D149EB
    db $DF,$02,$8E,$DF,$68,$31,$DF,$80,$DF,$11,$1C,$C6,$DF,$1C,$DF,$32 ; $D149FB
    db $79,$54,$DF,$83,$0E,$DF,$8F,$31,$DF,$27,$DF,$B5,$C7,$F9,$07,$DF ; $D14A0B
    db $01,$F9,$06,$DF,$FD,$D8,$DF,$5D,$D8,$C6,$FF,$ED,$C8,$FF,$31,$FC ; $D14A1B
    db $CC,$FF,$AF,$09,$8C,$FF,$FB,$A2,$FF,$EF,$82,$FF,$06,$43,$FF,$4D ; $D14A2B
    db $34,$38,$FF,$CD,$FF,$4D,$63,$70,$FF,$59,$36,$38,$FF,$82,$FF,$C2 ; $D14A3B
    db $71,$0D,$FF,$CD,$8D,$FF,$C1,$98,$FF,$B1,$D8,$FF,$CD,$AD,$9C,$FF ; $D14A4B
    db $7D,$FF,$70,$E5,$FF,$FD,$AD,$E3,$FF,$CD,$18,$FF,$A2,$7D,$FF,$4A ; $D14A5B
    db $E5,$91,$FF,$77,$C3,$FF,$AD,$AC,$8F,$FF,$AA,$02,$C6,$DF,$FA,$AD ; $D14A6B
    db $FF,$41,$AA,$FF,$AC,$8C,$FF,$B4,$A2,$FF,$D7,$E3,$FF,$1E,$8E,$FF ; $D14A7B
    db $F8,$18,$FF,$E9,$B4,$FF,$A8,$D7,$C6,$FF,$94,$1A,$FF,$70,$65,$FF ; $D14A8B
    db $21,$3C,$C6,$FF,$80,$78,$FF,$70,$4D,$FF,$92,$76,$C6,$FF,$E6,$22 ; $D14A9B
    db $FF,$31,$12,$82,$FF,$17,$4A,$8C,$FF,$73,$08,$FF,$33,$63,$3C,$FF ; $D14AAB
    db $59,$14,$18,$FF,$D9,$D4,$FF,$8B,$8F,$CE,$FF,$BF,$1C,$FF,$F5,$A7 ; $D14ABB
    db $FF,$53,$67,$FF,$B2,$01,$FC,$68,$01,$2A,$FF,$FE,$64,$5D,$01,$81 ; $D14ACB
    db $FF,$EE,$6C,$21,$FF,$9E,$22,$21,$FF,$7F,$11,$8C,$FF,$7F,$63,$FF ; $D14ADB
    db $73,$67,$41,$FF,$51,$0C,$FF,$F3,$C9,$FF,$DE,$63,$60,$FF,$62,$FC ; $D14AEB
    db $18,$FF,$8D,$51,$F7,$25,$D3,$C6,$FF,$81,$5E,$07,$38,$81,$62,$FF ; $D14AFB
    db $5F,$C0,$FF,$D3,$53,$ED,$8D,$F9,$06,$5D,$7F,$2B,$3B,$33,$FF,$70 ; $D14B0B
    db $7F,$FF,$7D,$D3,$0C,$BB,$CD,$5B,$F9,$46,$C7,$49,$BB,$FF,$1F,$ED ; $D14B1B
    db $02,$FD,$FD,$AF,$AE,$DF,$57,$47,$FF,$75,$00,$81,$77,$FD,$FA,$AF ; $D14B2B
    db $77,$DF,$C6,$0E,$D1,$D9,$FF,$31,$59,$53,$FF,$EA,$C1,$80,$FF,$A3 ; $D14B3B
    db $24,$1E,$51,$F6,$D1,$C6,$FF,$F4,$59,$FF,$30,$D4,$EA,$FF,$58,$AB ; $D14B4B
    db $B4,$19,$1A,$85,$31,$FF,$E5,$C3,$FF,$87,$7F,$01,$FF,$27,$FB,$45 ; $D14B5B
    db $FC,$4F,$8A,$8C,$FF,$61,$84,$FF,$0B,$E3,$FF,$0F,$0E,$FF,$42,$47 ; $D14B6B
    db $B8,$36,$FF,$00,$FF,$FD,$C0,$01,$F9,$94,$D9,$54,$BF,$67,$BF,$FF ; $D14B7B
    db $03,$0E,$FF,$B5,$A7,$07,$FF,$87,$35,$67,$F9,$4F,$D3,$0E,$03,$01 ; $D14B8B
    db $F8,$F6,$C3,$9C,$03,$FC,$76,$F8,$F7,$14,$F8,$FF,$FC,$03,$5F,$8D ; $D14B9B
    db $FB,$29,$8D,$AF,$86,$24,$84,$26,$C6,$67,$4F,$DE,$4E,$9F,$6C,$3E ; $D14BAB
    db $7F,$52,$FB,$54,$72,$54,$73,$55,$71,$16,$F9,$A6,$B9,$A6,$3B,$85 ; $D14BBB
    db $D3,$BF,$98,$BD,$AC,$9E,$C7,$DF,$77,$61,$7E,$7D,$1C,$1C,$07,$04 ; $D14BCB
    db $E3,$12,$E2,$58,$B1,$0C,$F8,$27,$7A,$09,$75,$0C,$91,$8F,$FE,$F9 ; $D14BDB
    db $09,$D5,$C7,$B1,$AF,$9C,$F3,$F6,$F2,$AB,$03,$DF,$CF,$48,$97,$B4 ; $D14BEB
    db $23,$2A,$CD,$03,$CC,$AB,$0B,$F0,$07,$F2,$00,$FB,$A0,$6F,$D7,$D8 ; $D14BFB
    db $FC,$8D,$8F,$FC,$07,$71,$76,$8B,$FA,$02,$26,$A9,$FF,$20,$FF,$88 ; $D14C0B
    db $06,$FA,$8D,$06,$89,$8E,$06,$70,$07,$FA,$70,$56,$A8,$52,$DD,$86 ; $D14C1B
    db $07,$5F,$18,$6D,$89,$EB,$50,$F3,$FC,$5E,$FB,$70,$FD,$D9,$91,$4F ; $D14C2B
    db $69,$26,$A2,$9A,$00,$9C,$89,$80,$7F,$02,$7C,$05,$F9,$2C,$B7,$5B ; $D14C3B
    db $DC,$5C,$ED,$CD,$E7,$AB,$C9,$19,$C3,$7B,$2F,$FC,$C3,$C0,$C0,$49 ; $D14C4B
    db $79,$3F,$42,$36,$D1,$6A,$81,$E6,$25,$EC,$83,$47,$24,$BF,$87,$CE ; $D14C5B
    db $74,$E8,$AE,$D3,$C8,$1D,$C4,$89,$C0,$58,$90,$91,$18,$12,$08,$F1 ; $D14C6B
    db $20,$34,$37,$D3,$08,$24,$E7,$61,$A7,$F0,$27,$D9,$4F,$CA,$CF,$21 ; $D14C7B
    db $0F,$3B,$FB,$F9,$92,$2B,$F8,$00,$68,$01,$6E,$FB,$B6,$49,$FB,$01 ; $D14C8B
    db $89,$FF,$AF,$AD,$0C,$FF,$6D,$DC,$FF,$E4,$67,$36,$FF,$F9,$0C,$FF ; $D14C9B
    db $7B,$5D,$FF,$FB,$71,$86,$FF,$0D,$89,$FF,$BA,$BF,$98,$FF,$5F,$FF ; $D14CAB
    db $8F,$0C,$C6,$FF,$C0,$7A,$FF,$38,$70,$A7,$FF,$0E,$C6,$FF,$76,$79 ; $D14CBB
    db $FF,$31,$C5,$91,$FF,$FB,$76,$C6,$FF,$DC,$FF,$31,$9F,$3C,$FF,$EF ; $D14CCB
    db $01,$89,$FF,$03,$F8,$1C,$FF,$57,$FF,$31,$8D,$DC,$FF,$FE,$03,$21 ; $D14CDB
    db $FF,$77,$00,$8E,$FF,$AF,$04,$61,$FF,$1F,$FA,$50,$76,$C6,$FF,$88 ; $D14CEB
    db $FF,$31,$3A,$4D,$FF,$FF,$77,$C6,$FF,$DF,$FF,$31,$C7,$E9,$FF,$98 ; $D14CFB
    db $22,$8E,$FF,$08,$F7,$31,$FF,$FB,$FF,$53,$D4,$96,$FF,$CF,$31,$FF ; $D14D0B
    db $C1,$FF,$C9,$71,$9C,$FF,$16,$FF,$70,$6E,$FF,$67,$82,$C6,$FF,$0F ; $D14D1B
    db $C6,$FF,$70,$D9,$FF,$09,$40,$CE,$FF,$B1,$20,$FF,$79,$FF,$E7,$CE ; $D14D2B
    db $FF,$E1,$38,$FF,$F9,$FF,$A1,$71,$87,$DF,$8D,$8C,$DF,$A4,$04,$DF ; $D14D3B
    db $67,$63,$56,$DF,$E6,$14,$20,$DF,$D9,$DF,$5F,$E3,$DF,$8C,$38,$DF ; $D14D4B
    db $39,$DF,$32,$63,$3F,$DF,$CD,$F7,$18,$DF,$FE,$DF,$DF,$AD,$0E,$E3 ; $D14D5B
    db $DF,$F2,$19,$DF,$50,$8D,$DF,$F5,$C2,$DF,$74,$59,$47,$DF,$DB,$0C ; $D14D6B
    db $DF,$7B,$D4,$DF,$BD,$63,$16,$DF,$6F,$81,$1C,$DF,$01,$DA,$DF,$63 ; $D14D7B
    db $7B,$DF,$55,$F8,$C6,$02,$DF,$AE,$01,$DF,$31,$55,$22,$DF,$27,$8C ; $D14D8B
    db $8E,$DF,$04,$FA,$32,$DF,$FE,$DF,$DD,$0C,$DF,$45,$DF,$FD,$63,$55 ; $D14D9B
    db $DF,$F3,$5F,$12,$DF,$45,$EB,$20,$DF,$0A,$DF,$F3,$C6,$DF,$51,$54 ; $D14DAB
    db $DF,$70,$4F,$DF,$1B,$E3,$CE,$DF,$F4,$38,$DF,$CB,$DF,$1E,$63,$51 ; $D14DBB
    db $DF,$4E,$05,$18,$DF,$6F,$8A,$DF,$0D,$C4,$E2,$DF,$54,$58,$DF,$B9 ; $D14DCB
    db $90,$E1,$DF,$00,$34,$D3,$D3,$C6,$DF,$27,$DF,$21,$F1,$47,$DF,$29 ; $D14DDB
    db $D5,$2A,$F8,$01,$39,$E1,$03,$29,$D5,$22,$F9,$FF,$20,$E1,$03,$CC ; $D14DEB
    db $63,$68,$FF,$97,$30,$01,$FF,$97,$26,$67,$54,$1F,$8E,$8E,$FF,$7B ; $D14DFB
    db $13,$30,$FF,$40,$FF,$74,$42,$F9,$18,$8C,$FC,$E2,$FF,$C6,$BB,$C0 ; $D14E0B
    db $FF,$EC,$CE,$C5,$F5,$76,$63,$35,$FF,$1D,$1D,$18,$FF,$E2,$06,$FF ; $D14E1B
    db $F1,$1C,$0C,$5A,$85,$6A,$1C,$FF,$C0,$60,$DF,$FF,$48,$C0,$45,$91 ; $D14E2B
    db $03,$FA,$88,$FB,$54,$F7,$AA,$18,$FF,$8E,$5C,$FF,$37,$6A,$06,$6F ; $D14E3B
    db $01,$8D,$FA,$01,$EE,$63,$F7,$FF,$A1,$2F,$01,$FF,$A8,$88,$05,$54 ; $D14E4B
    db $03,$20,$D6,$F0,$31,$FF,$FB,$21,$C0,$FF,$57,$AA,$AF,$04,$DC,$63 ; $D14E5B
    db $8B,$FF,$02,$FF,$38,$FF,$AC,$FF,$96,$63,$0F,$FF,$DC,$AB,$8C,$FF ; $D14E6B
    db $AD,$FF,$88,$63,$D4,$FF,$62,$B6,$18,$FF,$88,$DC,$FF,$03,$7D,$C6 ; $D14E7B
    db $FF,$29,$A3,$FF,$03,$4D,$B9,$4F,$EF,$AB,$D9,$01,$FF,$3B,$3A,$F6 ; $D14E8B
    db $C1,$D5,$C4,$80,$FF,$2F,$42,$16,$59,$2F,$84,$E0,$FF,$D6,$6D,$88 ; $D14E9B
    db $30,$7E,$AA,$FF,$B9,$94,$D9,$18,$D4,$99,$94,$FF,$19,$94,$CE,$FF ; $D14EAB
    db $43,$19,$FF,$75,$C7,$FF,$75,$C3,$FF,$F5,$67,$1A,$FF,$DB,$9F,$FF ; $D14EBB
    db $D2,$D7,$FA,$9A,$03,$D2,$D7,$FA,$9A,$03,$FF,$2B,$6D,$28,$08,$36 ; $D14ECB
    db $17,$16,$B4,$15,$05,$1E,$C7,$0A,$51,$0F,$D0,$7E,$D1,$1F,$D7,$1C ; $D14EDB
    db $CA,$BF,$E9,$0E,$EB,$CE,$E0,$5C,$F4,$DC,$F1,$F9,$F9,$56,$03,$F2 ; $D14EEB
    db $0E,$3C,$07,$76,$D6,$AB,$2D,$64,$26,$AB,$A2,$0F,$F9,$FC,$AA,$01 ; $D14EFB
    db $F3,$F8,$C4,$5F,$76,$77,$6D,$BF,$AA,$7E,$E5,$9F,$8F,$1D,$D9,$7E ; $D14F0B
    db $40,$8E,$81,$77,$7D,$E2,$5E,$34,$FF,$F9,$AF,$7D,$EF,$D7,$33,$2D ; $D14F1B
    db $81,$FE,$7E,$F0,$01,$7C,$89,$56,$FA,$FD,$35,$9E,$FF,$77,$27,$AC ; $D14F2B
    db $F8,$FB,$73,$76,$0E,$03,$FC,$FD,$FE,$76,$7F,$37,$C5,$0F,$74,$57 ; $D14F3B
    db $EF,$FC,$F8,$F9,$72,$FC,$F2,$FE,$FC,$73,$FD,$CD,$B3,$CC,$8C,$C3 ; $D14F4B
    db $DE,$F8,$8F,$C6,$7C,$BC,$67,$FB,$28,$7B,$B6,$B9,$9C,$BF,$5C,$61 ; $D14F5B
    db $A2,$70,$88,$83,$45,$18,$A4,$CD,$3A,$30,$7B,$C2,$B9,$35,$13,$EF ; $D14F6B
    db $0F,$41,$DE,$46,$46,$6D,$39,$3A,$BC,$17,$5F,$FE,$D8,$9F,$CC,$39 ; $D14F7B
    db $FF,$10,$21,$60,$FF,$B9,$C7,$AA,$7B,$39,$FB,$FC,$DB,$3D,$E2,$50 ; $D14F8B
    db $21,$10,$E2,$C0,$41,$60,$42,$20,$C5,$80,$83,$E0,$C5,$00,$D2,$1F ; $D14F9B
    db $D1,$DF,$C2,$1F,$E1,$BF,$A2,$BF,$85,$3F,$E3,$7F,$05,$3F,$01,$9B ; $D14FAB
    db $D7,$1E,$01,$FF,$06,$01,$C6,$FF,$2A,$2A,$FF,$31,$1E,$3C,$FF,$3C ; $D14FBB
    db $E5,$C6,$FF,$50,$FF,$70,$3D,$FF,$3F,$E1,$C6,$FF,$EE,$C2,$FF,$70 ; $D14FCB
    db $54,$FF,$74,$01,$C8,$FF,$BC,$31,$FF,$2F,$FF,$A3,$AA,$8C,$FF,$DE ; $D14FDB
    db $8A,$FF,$78,$63,$44,$FF,$55,$6F,$18,$FF,$FE,$6D,$FF,$3F,$DB,$E3 ; $D14FEB
    db $FF,$89,$8E,$FF,$16,$31,$FF,$75,$FF,$31,$0F,$8C,$FF,$76,$F8,$FF ; $D14FFB
    db $A9,$66,$76,$FF,$BD,$13,$1C,$77,$07,$AE,$FF,$63,$FE,$FF,$FE,$DF ; $D1500B
    db $38,$16,$77,$FF,$54,$E3,$FF,$71,$87,$FF,$DC,$FE,$18,$FF,$BB,$FF ; $D1501B
    db $E1,$FE,$C6,$FF,$CE,$FC,$FF,$38,$DB,$0A,$FF,$15,$C6,$FF,$41,$A0 ; $D1502B
    db $FF,$33,$03,$CD,$FF,$ED,$87,$FF,$CA,$31,$18,$FF,$2D,$FF,$CE,$C6 ; $D1503B
    db $C7,$FF,$1A,$BE,$18,$FF,$50,$FF,$DD,$30,$C6,$FF,$77,$B1,$FF,$33 ; $D1504B
    db $5B,$19,$FF,$53,$8E,$FF,$03,$00,$FF,$C1,$60,$40,$20,$E5,$80,$80 ; $D1505B
    db $CC,$FF,$80,$FF,$F3,$70,$FF,$FF,$3F,$A0,$C1,$FF,$1F,$E0,$7F,$85 ; $D1506B
    db $E7,$07,$FF,$FA,$90,$07,$FF,$FA,$FF,$64,$AA,$FF,$3C,$19,$FF,$65 ; $D1507B
    db $FF,$2F,$C3,$FF,$B5,$DF,$8C,$FF,$C3,$FF,$66,$E1,$FF,$56,$D1,$89 ; $D1508B
    db $FF,$7C,$09,$99,$FF,$8F,$FF,$83,$06,$FF,$82,$FF,$70,$58,$FF,$FD ; $D1509B
    db $47,$C6,$FF,$DE,$4D,$FF,$31,$B5,$F9,$FF,$AC,$AB,$90,$FF,$DE,$FF ; $D150AB
    db $63,$57,$FF,$13,$A7,$12,$FF,$74,$D8,$19,$FF,$BF,$14,$EF,$8F,$D9 ; $D150BB
    db $FF,$51,$C3,$FF,$DE,$77,$8C,$FF,$15,$0F,$56,$63,$DD,$FF,$51,$50 ; $D150CB
    db $18,$FF,$54,$DE,$FF,$EF,$99,$CE,$FF,$41,$18,$FF,$EC,$FE,$FF,$D3 ; $D150DB
    db $8A,$99,$FF,$00,$9C,$FF,$21,$FF,$31,$65,$B2,$FF,$EA,$13,$C6,$FF ; $D150EB
    db $AD,$FF,$70,$EE,$FF,$BA,$3E,$EB,$18,$E6,$58,$FF,$5D,$B0,$E3,$FF ; $D150FB
    db $91,$3B,$FF,$D3,$18,$FF,$53,$1F,$FF,$83,$18,$C4,$FF,$E1,$40,$CC ; $D1510B
    db $FF,$A0,$FF,$FB,$62,$7F,$FF,$C1,$1F,$42,$FF,$A5,$3F,$7D,$D5,$F9 ; $D1511B
    db $02,$05,$FE,$01,$CA,$D9,$4C,$05,$7F,$6C,$FF,$77,$E1,$FF,$14,$54 ; $D1512B
    db $8C,$FF,$0E,$00,$FF,$7F,$63,$80,$FF,$19,$8E,$18,$FF,$5B,$EF,$FF ; $D1513B
    db $1D,$F1,$C6,$FF,$BD,$E8,$FF,$31,$E7,$0A,$FF,$77,$83,$80,$FF,$55 ; $D1514B
    db $67,$A3,$8A,$0A,$BD,$C6,$FF,$15,$B2,$FF,$03,$0F,$22,$DD,$47,$CE ; $D1515B
    db $8B,$01,$FF,$DE,$8F,$95,$F9,$6B,$54,$C0,$FF,$F3,$DE,$96,$FF,$60 ; $D1516B
    db $AC,$FF,$AA,$D6,$13,$87,$31,$C0,$AB,$FF,$05,$78,$8C,$FF,$FF,$A8 ; $D1517B
    db $FF,$AA,$0E,$76,$8D,$AC,$AC,$01,$FF,$5F,$56,$FE,$DF,$FF,$23,$80 ; $D1518B
    db $69,$AB,$23,$56,$DF,$A8,$AC,$C0,$FF,$AD,$F2,$FC,$56,$77,$63,$A8 ; $D1519B
    db $FF,$88,$DD,$18,$FF,$BD,$DB,$FF,$FD,$77,$0C,$DB,$8A,$7F,$A6,$FF ; $D151AB
    db $AA,$63,$08,$FF,$34,$89,$01,$FF,$0C,$F1,$6D,$B2,$71,$2E,$8C,$FF ; $D151BB
    db $75,$53,$FF,$44,$60,$CA,$FF,$7C,$28,$AA,$06,$03,$56,$40,$EC,$40 ; $D151CB
    db $89,$78,$18,$FF,$31,$71,$FF,$C3,$AB,$00,$FB,$01,$FF,$01,$5B,$07 ; $D151DB
    db $F3,$10,$C7,$FF,$F2,$80,$19,$FF,$30,$FF,$C0,$C3,$FF,$D3,$0F,$8C ; $D151EB
    db $FF,$0F,$FF,$B0,$83,$FF,$3F,$5A,$FF,$D8,$DF,$45,$01,$1F,$E9,$04 ; $D151FB
    db $E4,$5B,$51,$E9,$2A,$80,$17,$C5,$00,$F2,$28,$49,$C4,$74,$12,$B0 ; $D1520B
    db $19,$6A,$AA,$17,$C5,$F3,$FF,$AA,$8F,$F5,$B7,$B8,$8B,$6F,$E7,$02 ; $D1521B
    db $55,$0F,$DC,$07,$4D,$07,$D9,$03,$4C,$05,$DA,$02,$4D,$00,$5F,$5C ; $D1522B
    db $F8,$DD,$F0,$4D,$F8,$D9,$F8,$4C,$FC,$DA,$FA,$4D,$FD,$5F,$FF,$67 ; $D1523B
    db $AA,$7F,$98,$82,$80,$FA,$86,$32,$2A,$57,$A8,$5C,$03,$61,$A1,$74 ; $D1524B
    db $23,$18,$7F,$B9,$F9,$06,$05,$2A,$00,$A8,$A8,$61,$BD,$61,$AD,$8C ; $D1525B
    db $DB,$42,$48,$C4,$AF,$03,$BD,$A4,$FE,$A3,$D7,$28,$2B,$D5,$81,$7F ; $D1526B
    db $27,$E2,$33,$71,$F5,$52,$E6,$42,$A3,$01,$28,$28,$D5,$D4,$7F,$7E ; $D1527B
    db $77,$FB,$73,$F9,$8C,$8C,$FE,$71,$88,$8C,$F8,$37,$8E,$8F,$56,$75 ; $D1528B
    db $77,$73,$02,$77,$8B,$89,$71,$71,$FC,$77,$37,$07,$FF,$71,$8D,$D9 ; $D1529B
    db $27,$57,$FA,$FB,$DF,$75,$00,$C5,$00,$7F,$3F,$C3,$C0,$5B,$A5,$2A ; $D152AB
    db $D8,$AF,$06,$FD,$FB,$8D,$50,$00,$BD,$3C,$B8,$42,$C0,$C0,$A5,$A4 ; $D152BB
    db $DF,$D4,$F9,$7D,$FD,$C9,$EA,$D5,$DE,$E1,$7A,$05,$CD,$32,$F2,$AD ; $D152CB
    db $5B,$3A,$E7,$1A,$D5,$15,$00,$DD,$85,$85,$B2,$32,$0C,$2D,$8D,$83 ; $D152DB
    db $60,$DB,$82,$B8,$75,$60,$45,$88,$02,$E0,$04,$E9,$01,$E0,$84,$62 ; $D152EB
    db $63,$6E,$13,$12,$62,$7F,$8D,$BF,$E2,$FF,$ED,$FF,$E0,$FE,$67,$7F ; $D152FB
    db $CC,$19,$1F,$5E,$A0,$02,$97,$18,$73,$68,$C3,$B0,$58,$19,$1F,$FF ; $D1530B
    db $00,$AF,$8F,$7F,$6F,$EB,$8F,$B3,$3F,$FD,$06,$3D,$F9,$04,$3F,$FE ; $D1531B
    db $48,$01,$96,$53,$C0,$01,$00,$08,$70,$A8,$69,$E4,$74,$B0,$18,$44 ; $D1532B
    db $6A,$80,$53,$C0,$FF,$88,$BF,$A8,$8F,$F5,$09,$97,$B8,$8B,$6E,$E0 ; $D1533B
    db $3F,$0F,$59,$03,$4C,$76,$07,$3F,$76,$08,$3F,$76,$DF,$3F,$3B,$59 ; $D1534B
    db $F0,$3B,$3F,$F8,$3B,$3F,$F7,$00,$3F,$BA,$82,$80,$F2,$F2,$FF,$2A ; $D1535B
    db $76,$75,$3F,$27,$E9,$29,$81,$3F,$0D,$2A,$00,$AA,$8A,$8E,$63,$2D ; $D1536B
    db $04,$CB,$3F,$E4,$87,$AF,$03,$35,$AC,$FE,$A3,$D5,$08,$2B,$D5,$89 ; $D1537B
    db $FF,$6B,$3F,$97,$73,$F5,$52,$6E,$4A,$A3,$01,$2A,$2A,$D5,$D4,$FF ; $D1538B
    db $76,$77,$FB,$71,$D9,$8C,$8C,$76,$64,$3F,$FA,$F2,$3F,$57,$33,$3F ; $D1539B
    db $F9,$B2,$3F,$05,$78,$3F,$F9,$DE,$18,$75,$08,$88,$E0,$3D,$E0,$B8 ; $D153AB
    db $63,$5B,$A5,$A2,$D0,$AF,$06,$DD,$F9,$8D,$51,$88,$F7,$64,$E2,$C2 ; $D153BB
    db $B0,$3F,$5C,$79,$FD,$19,$FD,$E9,$EA,$5A,$7F,$80,$7B,$5A,$07,$CD ; $D153CB
    db $32,$FA,$2D,$2B,$DB,$BA,$30,$3F,$F7,$7B,$A7,$A5,$B2,$B9,$F7,$32 ; $D153DB
    db $AD,$05,$82,$60,$C5,$20,$80,$60,$40,$80,$00,$E0,$20,$C9,$01,$E0 ; $D153EB
    db $80,$E2,$62,$7F,$25,$3F,$60,$80,$2C,$E0,$FF,$C9,$DF,$E0,$12,$FE ; $D153FB
    db $E3,$7F,$C0,$3D,$1F,$80,$77,$A8,$93,$EC,$3F,$43,$4B,$30,$02,$3D ; $D1540B
    db $8F,$EF,$AF,$8F,$7B,$32,$3F,$BF,$59,$1F,$E2,$D9,$1F,$61,$D8,$1F ; $D1541B
    db $1A,$48,$96,$1F,$00,$8A,$9F,$A8,$8F,$FD,$9F,$B8,$8B,$3B,$4C,$E5 ; $D1542B
    db $07,$1F,$5C,$07,$4D,$0D,$60,$1F,$0D,$50,$02,$4D,$07,$0A,$5D,$5C ; $D1543B
    db $F8,$5F,$60,$1F,$5B,$F2,$4C,$FC,$03,$52,$F2,$4D,$FD,$5D,$F5,$B3 ; $D1544B
    db $1F,$38,$B0,$1F,$F0,$FF,$2A,$30,$F7,$A0,$6A,$EB,$2B,$74,$13,$23 ; $D1545B
    db $92,$FD,$DD,$1F,$EB,$4B,$2F,$B3,$1F,$C0,$B6,$1F,$FA,$B8,$76,$FE ; $D1546B
    db $A3,$75,$00,$2B,$D5,$A9,$FD,$27,$E2,$3B,$FB,$1F,$07,$48,$A3,$01 ; $D1547B
    db $AA,$8A,$67,$1F,$56,$6B,$1F,$97,$71,$8C,$8C,$DE,$DB,$88,$8C,$78 ; $D1548B
    db $35,$8E,$8F,$54,$55,$77,$73,$DF,$FF,$77,$8B,$AB,$40,$5F,$BF,$87 ; $D1549B
    db $FF,$1D,$71,$AF,$FB,$97,$1F,$79,$2C,$DE,$75,$76,$D6,$00,$7F,$BF ; $D154AB
    db $EA,$5B,$A5,$A0,$F0,$AF,$06,$7D,$D1,$8D,$51,$FE,$89,$D8,$EA,$5C ; $D154BB
    db $40,$31,$A5,$A4,$FF,$5E,$79,$FD,$F5,$61,$EA,$D5,$8A,$DD,$7B,$FA ; $D154CB
    db $AF,$D8,$1F,$2F,$DB,$3B,$BA,$EF,$1C,$1F,$FD,$75,$7B,$E8,$5F,$46 ; $D154DB
    db $AF,$1F,$0E,$A0,$80,$60,$62,$C0,$1F,$A0,$C1,$01,$E0,$82,$3A,$E0 ; $D154EB
    db $62,$A3,$73,$60,$7F,$82,$BD,$48,$02,$C1,$5F,$E0,$FE,$E1,$7D,$58 ; $D154FB
    db $1F,$3F,$A0,$11,$77,$A8,$13,$93,$1F,$10,$80,$5D,$CF,$AF,$8F,$FB ; $D1550B
    db $04,$EF,$EB,$8F,$93,$BF,$A4,$7D,$E2,$28,$00,$61,$EC,$61,$E4,$31 ; $D1551B
    db $F0,$1A,$48,$9C,$90,$7D,$9F,$FD,$01,$17,$CF,$4C,$E5,$0C,$16,$14 ; $D1552B
    db $0F,$5C,$16,$48,$0F,$59,$07,$58,$05,$50,$03,$02,$5C,$55,$32,$1D ; $D1553B
    db $E9,$5F,$F0,$49,$E9,$5B,$F0,$59,$F8,$5A,$FA,$03,$5D,$E5,$FD,$47 ; $D1554B
    db $FB,$75,$32,$D2,$94,$F2,$F0,$FE,$6A,$F7,$A2,$55,$EE,$EB,$2B,$55 ; $D1555B
    db $12,$BA,$80,$E0,$2D,$FF,$0D,$3F,$41,$A8,$61,$0A,$D1,$2F,$04,$9F ; $D1556B
    db $77,$03,$C0,$64,$BA,$52,$37,$8E,$BF,$A3,$75,$2A,$6B,$C1,$A3,$DD ; $D1557B
    db $76,$E3,$3B,$7B,$E5,$57,$6E,$48,$E6,$41,$80,$A0,$94,$D5,$F7,$54 ; $D1558B
    db $77,$AE,$51,$71,$88,$88,$56,$73,$8D,$89,$7F,$07,$DE,$56,$55,$73 ; $D1559B
    db $26,$71,$8E,$7F,$DF,$23,$F9,$F9,$76,$BD,$05,$AB,$25,$AF,$F9,$73 ; $D155AB
    db $02,$DA,$F9,$DF,$60,$2A,$8A,$54,$3E,$9F,$42,$5E,$B0,$A0,$70,$FF ; $D155BB
    db $06,$7D,$F1,$8C,$40,$A0,$DF,$3F,$AB,$E8,$62,$E5,$B1,$DF,$7E,$25 ; $D155CB
    db $B0,$F5,$61,$BF,$90,$0A,$5D,$55,$FB,$D0,$85,$DD,$72,$FA,$2D,$9A ; $D155DB
    db $F2,$EF,$1A,$C5,$50,$FD,$F5,$AF,$FA,$2F,$AF,$F2,$00,$22,$AF,$05 ; $D155EB
    db $C2,$20,$C5,$A0,$C5,$EC,$1F,$44,$00,$A1,$20,$41,$44,$B0,$02,$60 ; $D155FB
    db $22,$EA,$DC,$93,$2D,$65,$3F,$82,$9F,$A5,$BF,$C1,$DF,$B5,$BF,$E1 ; $D1560B
    db $FD,$80,$1F,$37,$B8,$13,$18,$23,$38,$FC,$02,$1F,$FF,$5E,$CF,$B3 ; $D1561B
    db $FB,$EF,$FB,$DF,$93,$BF,$0A,$10,$66,$0F,$F6,$0B,$F7,$00,$E2,$07 ; $D1562B
    db $E7,$00,$82,$05,$37,$00,$14,$F5,$6F,$F9,$FB,$F9,$F0,$F8,$E7,$FD ; $D1563B
    db $E0,$F8,$85,$FD,$30,$F8,$00,$0F,$01,$1F,$03,$8D,$07,$08,$1F,$EF ; $D1564B
    db $06,$0A,$35,$92,$0D,$0F,$00,$3D,$FE,$8D,$FC,$08,$F8,$EF,$E0,$0C ; $D1565B
    db $0B,$F9,$9A,$CA,$0D,$BF,$2E,$80,$47,$79,$79,$80,$7F,$3D,$FD,$9E ; $D1566B
    db $DE,$BF,$C0,$BF,$9E,$1F,$E3,$FF,$40,$F9,$B8,$3E,$41,$DE,$9C,$FF ; $D1567B
    db $1E,$00,$7D,$5E,$7C,$E3,$E0,$41,$FF,$63,$3D,$96,$8A,$3E,$96,$5B ; $D1568B
    db $98,$61,$D3,$77,$49,$F5,$F1,$FF,$3E,$FD,$9C,$EB,$69,$97,$C1,$1F ; $D1569B
    db $A4,$2C,$4D,$CC,$8B,$FA,$0D,$FC,$FF,$50,$73,$72,$F9,$76,$73,$FC ; $D156AB
    db $FC,$FA,$FC,$7A,$7A,$7C,$7F,$77,$FB,$8F,$DF,$75,$75,$FF,$71,$FB ; $D156BB
    db $FF,$C2,$85,$FD,$7B,$FD,$FF,$7C,$19,$FE,$37,$E4,$3B,$E4,$71,$C3 ; $D156CB
    db $B5,$0D,$77,$98,$57,$63,$7F,$2B,$F0,$E9,$FD,$C9,$E1,$C5,$C7,$89 ; $D156DB
    db $C3,$49,$60,$17,$EC,$AB,$AB,$80,$79,$2E,$D4,$33,$EF,$35,$87,$58 ; $D156EB
    db $C9,$DC,$EF,$1B,$6D,$C8,$EA,$98,$9E,$A6,$BB,$AB,$85,$90,$78,$08 ; $D156FB
    db $FF,$C6,$07,$E8,$3B,$52,$1F,$95,$02,$E0,$03,$E7,$C3,$AE,$C7,$74 ; $D1570B
    db $20,$C2,$2F,$87,$40,$C2,$0D,$D7,$A0,$E1,$FD,$E7,$FC,$AE,$3C,$20 ; $D1571B
    db $38,$AF,$3D,$40,$78,$8D,$3D,$B0,$38,$83,$40,$33,$D8,$BE,$01,$00 ; $D1572B
    db $3F,$E0,$01,$0F,$00,$67,$0E,$00,$43,$7F,$B3,$C3,$21,$7F,$FF,$3F ; $D1573B
    db $98,$01,$DD,$67,$FF,$1E,$FE,$00,$FF,$05,$01,$7D,$FE,$04,$F9,$E0 ; $D1574B
    db $00,$2C,$3F,$E7,$EC,$3F,$87,$09,$00,$02,$05,$3F,$E7,$3F,$E0,$60 ; $D1575B
    db $3F,$80,$F8,$05,$FD,$76,$38,$3F,$00,$03,$1D,$03,$8D,$0F,$88,$1F ; $D1576B
    db $EF,$46,$04,$3F,$60,$87,$53,$1D,$FC,$8D,$FC,$3B,$88,$F0,$07,$3F ; $D1577B
    db $FB,$9A,$CA,$87,$67,$3F,$65,$6B,$3F,$86,$B5,$F5,$9E,$DE,$BD,$E0 ; $D1578B
    db $BF,$9E,$17,$63,$FF,$40,$16,$EC,$3F,$1C,$00,$FF,$1E,$22,$9F,$E1 ; $D1579B
    db $5E,$63,$E8,$EC,$3F,$1F,$1D,$96,$8A,$B6,$80,$3F,$63,$F1,$77,$49 ; $D157AB
    db $7D,$71,$1D,$FF,$3E,$FF,$81,$3F,$1F,$C9,$1F,$A4,$2E,$D8,$3F,$72 ; $D157BB
    db $85,$1D,$FC,$FF,$52,$93,$3F,$FE,$C7,$3F,$F4,$FF,$67,$3F,$DD,$E2 ; $D157CB
    db $02,$3F,$75,$F4,$E3,$19,$FE,$36,$C6,$3B,$E5,$F1,$43,$B5,$0D,$57 ; $D157DB
    db $BA,$57,$63,$F7,$23,$D8,$3F,$CB,$E0,$03,$C5,$CF,$09,$C3,$49,$40 ; $D157EB
    db $B0,$3F,$23,$08,$79,$01,$2E,$54,$31,$6F,$B5,$87,$D0,$DA,$3F,$E1 ; $D157FB
    db $39,$6D,$C8,$62,$10,$9E,$A6,$9B,$8B,$05,$10,$F8,$D9,$3F,$05,$D8 ; $D1580B
    db $3F,$17,$9D,$9E,$3F,$76,$A8,$3F,$32,$60,$C2,$43,$28,$59,$3F,$A8 ; $D1581B
    db $D9,$3F,$60,$D8,$3F,$38,$B8,$B6,$3F,$01,$27,$00,$37,$00,$07,$00 ; $D1582B
    db $EF,$F8,$01,$3F,$27,$FF,$07,$37,$FF,$07,$FF,$EF,$64,$1F,$E6,$64 ; $D1583B
    db $1F,$02,$B0,$1F,$3D,$02,$14,$3B,$F5,$EF,$27,$1F,$E2,$80,$1F,$3A ; $D1584B
    db $FA,$00,$0F,$0B,$15,$E8,$5F,$76,$82,$1F,$76,$8A,$1F,$00,$85,$0F ; $D1585B
    db $FF,$15,$F4,$8D,$FC,$8A,$E8,$5F,$76,$8B,$1F,$76,$85,$1F,$25,$C5 ; $D1586B
    db $D1,$80,$1F,$3D,$68,$BF,$9E,$15,$43,$EC,$1F,$3A,$EC,$1F,$3E,$1D ; $D1587B
    db $FF,$1E,$A2,$80,$1F,$43,$EA,$41,$FF,$E9,$1D,$EC,$1F,$94,$00,$5B ; $D1588B
    db $98,$EB,$71,$77,$49,$5F,$73,$EC,$1F,$16,$96,$1F,$03,$A6,$45,$CC ; $D1589B
    db $8B,$70,$A7,$A0,$5F,$F9,$72,$1D,$F9,$56,$51,$83,$1F,$F4,$7A,$7A ; $D158AB
    db $5E,$A0,$5F,$07,$57,$EC,$1F,$D9,$B8,$76,$FB,$FF,$7B,$F1,$FD,$7B ; $D158BB
    db $D5,$DE,$19,$FE,$B6,$EE,$1F,$B8,$F4,$E3,$B5,$0D,$5D,$B0,$57,$63 ; $D158CB
    db $D5,$21,$F0,$E9,$D5,$63,$E0,$C5,$6D,$3B,$5F,$4A,$2E,$1F,$21,$31 ; $D158DB
    db $2A,$79,$2E,$56,$33,$6F,$B5,$A7,$F2,$C9,$DC,$CF,$91,$6D,$C8,$40 ; $D158EB
    db $AE,$1F,$31,$89,$05,$10,$DA,$28,$FF,$C6,$25,$E0,$3B,$52,$15,$BF ; $D158FB
    db $02,$E0,$83,$9D,$1F,$AA,$81,$1F,$68,$C2,$0D,$55,$0A,$D8,$1F,$7C ; $D1590B
    db $AE,$3B,$3C,$AA,$3B,$1F,$68,$03,$1F,$1A,$BA,$83,$40,$3B,$F3,$07 ; $D1591B
    db $1F,$BB,$F0,$05,$1F,$4E,$05,$E6,$06,$0F,$F7,$0A,$E7,$02,$01,$5C ; $D1592B
    db $87,$38,$00,$13,$04,$3D,$02,$45,$F1,$EF,$F9,$FA,$F8,$E2,$01,$80 ; $D1593B
    db $BB,$65,$F8,$14,$FC,$3A,$FA,$04,$5E,$03,$15,$13,$C9,$0F,$82,$1A ; $D1594B
    db $AA,$04,$8A,$20,$82,$00,$85,$5F,$FB,$1D,$FC,$CC,$ED,$8A,$F0,$AF ; $D1595B
    db $E5,$8B,$FB,$8A,$DF,$85,$4A,$D5,$DB,$65,$F1,$95,$7A,$A1,$E3,$C0 ; $D1596B
    db $90,$BD,$68,$AB,$9E,$15,$41,$AA,$55,$DB,$BA,$6B,$50,$DE,$2A,$EF ; $D1597B
    db $05,$2A,$17,$B4,$5E,$41,$EA,$05,$AE,$6B,$9D,$82,$DA,$B2,$1F,$CC ; $D1598B
    db $E3,$EB,$71,$37,$18,$5F,$71,$FA,$7F,$7F,$14,$AF,$2D,$1F,$C9,$0A ; $D1599B
    db $E0,$DA,$1F,$E5,$DA,$70,$A5,$FD,$AB,$52,$F9,$73,$A8,$DE,$59,$75 ; $D159AB
    db $24,$DA,$F4,$7F,$7E,$7E,$55,$22,$9A,$95,$55,$0B,$E7,$7F,$71,$AE ; $D159BB
    db $73,$5B,$D1,$AD,$7A,$FD,$D4,$0C,$AF,$36,$6E,$2F,$F1,$F0,$62,$B1 ; $D159CB
    db $1C,$5D,$B0,$56,$32,$DA,$1F,$E1,$FC,$D5,$E3,$A4,$81,$6D,$88,$C2 ; $D159DB
    db $58,$4A,$17,$F8,$D8,$1F,$7A,$6F,$30,$57,$3F,$1F,$A7,$F2,$0D,$BC ; $D159EB
    db $76,$0D,$4F,$11,$28,$88,$40,$10,$DA,$A0,$95,$82,$05,$00,$DA,$28 ; $D159FB
    db $BF,$52,$A5,$E0,$2A,$57,$15,$BF,$43,$F5,$03,$67,$C3,$EF,$C7,$AA ; $D15A0B
    db $C7,$2A,$87,$68,$86,$09,$55,$0A,$F5,$BC,$E7,$FC,$EF,$1F,$C0,$01 ; $D15A1B
    db $68,$78,$89,$79,$1A,$12,$BA,$93,$00,$CE,$1F,$67,$CE,$1F,$47,$C9 ; $D15A2B
    db $1F,$13,$E7,$1F,$67,$67,$1F,$47,$61,$1F,$3E,$01,$1B,$72,$04,$88 ; $D15A3B
    db $03,$86,$20,$C1,$38,$C0,$1E,$E0,$0F,$F0,$07,$39,$F9,$1C,$FC,$8B ; $D15A4B
    db $FF,$A6,$EF,$1C,$61,$DE,$1D,$BB,$E2,$F7,$FF,$1F,$85,$0F,$17,$06 ; $D15A5B
    db $2A,$03,$7D,$3F,$40,$B0,$50,$B7,$10,$9B,$28,$85,$E0,$17,$F0,$2B ; $D15A6B
    db $F9,$7D,$FC,$40,$C0,$D0,$C0,$9F,$C8,$AF,$E4,$FF,$57,$43,$41,$7C ; $D15A7B
    db $2F,$F3,$AB,$81,$F9,$07,$02,$DF,$E0,$BE,$C0,$57,$00,$FE,$BD,$D0 ; $D15A8B
    db $AC,$EB,$94,$FE,$55,$5C,$5B,$00,$DF,$01,$BF,$59,$41,$67,$D5,$CA ; $D15A9B
    db $AB,$86,$C2,$6C,$80,$FF,$40,$DB,$36,$B2,$6B,$F6,$A9,$28,$47,$5C ; $D15AAB
    db $8A,$39,$86,$37,$48,$48,$F7,$01,$DA,$04,$B6,$7C,$7D,$7E,$7E,$7D ; $D15ABB
    db $7D,$D5,$99,$00,$7C,$F3,$70,$76,$FB,$F3,$7F,$FE,$1D,$7C,$FF,$7E ; $D15ACB
    db $F3,$1F,$7A,$FF,$85,$10,$74,$72,$C7,$73,$F0,$AA,$2A,$6A,$80,$BF ; $D15ADB
    db $44,$DF,$31,$F6,$0C,$FD,$13,$FB,$38,$2F,$DD,$FF,$F7,$55,$7F,$15 ; $D15AEB
    db $3B,$84,$0E,$D1,$03,$F5,$10,$FD,$3C,$FB,$36,$F3,$A7,$A3,$8D,$8D ; $D15AFB
    db $65,$94,$5E,$1D,$BF,$80,$AF,$0C,$65,$EB,$F7,$2D,$7F,$D8,$77,$FA ; $D15B0B
    db $6E,$0A,$AD,$51,$D0,$60,$DC,$70,$3F,$70,$33,$E4,$83,$EC,$96,$61 ; $D15B1B
    db $00,$C6,$13,$C0,$A4,$40,$90,$43,$A0,$47,$90,$07,$EC,$7C,$71,$79 ; $D15B2B
    db $C6,$FF,$D3,$FF,$64,$2E,$7F,$53,$7F,$67,$7F,$17,$7F,$E7,$00,$C7 ; $D15B3B
    db $00,$8F,$00,$0F,$20,$1F,$E0,$1F,$C0,$3F,$C0,$27,$E7,$FF,$C7,$FF ; $D15B4B
    db $8F,$3B,$FF,$2F,$0E,$23,$DF,$FF,$BF,$C2,$27,$1E,$01,$09,$E5,$06 ; $D15B5B
    db $80,$03,$82,$20,$C0,$38,$E0,$1C,$E0,$0F,$F8,$07,$19,$F9,$0E,$FE ; $D15B6B
    db $83,$FF,$A2,$56,$A2,$7D,$EF,$E7,$EB,$85,$2D,$60,$1F,$83,$75,$3F ; $D15B7B
    db $40,$07,$92,$70,$B7,$10,$93,$60,$1F,$37,$F2,$2B,$F9,$76,$F5,$1F ; $D15B8B
    db $3B,$F0,$E0,$00,$1F,$EC,$FF,$57,$61,$61,$7C,$2F,$76,$F7,$1F,$03 ; $D15B9B
    db $25,$20,$DF,$E0,$3E,$48,$B0,$1F,$9F,$D0,$AC,$07,$6B,$1C,$FE,$55 ; $D15BAB
    db $7E,$67,$1F,$81,$60,$1F,$65,$F7,$CA,$AB,$3B,$06,$4A,$03,$1F,$62 ; $D15BBB
    db $DB,$36,$BA,$E3,$B0,$1F,$45,$5C,$8A,$4F,$B1,$3B,$1F,$0C,$17,$1F ; $D15BCB
    db $5E,$5E,$2E,$7D,$7D,$F2,$FA,$7C,$7C,$D3,$52,$76,$FB,$73,$FF,$FE ; $D15BDB
    db $7C,$FD,$5E,$FF,$7D,$77,$F2,$CE,$1F,$D3,$CE,$1F,$70,$C0,$1F,$A0 ; $D15BEB
    db $BF,$44,$D7,$B1,$EC,$1F,$31,$EC,$1F,$3C,$11,$FF,$55,$7D,$AE,$1F ; $D15BFB
    db $1D,$D9,$03,$F5,$12,$FF,$3C,$FB,$BE,$7B,$A7,$A3,$AF,$81,$1F,$D6 ; $D15C0B
    db $15,$BF,$80,$8D,$D9,$1F,$FF,$D8,$1F,$57,$DA,$0E,$6E,$0A,$A5,$59 ; $D15C1B
    db $D7,$1F,$28,$72,$3F,$70,$BB,$64,$83,$EC,$B4,$41,$00,$C6,$10,$40 ; $D15C2B
    db $A0,$40,$90,$41,$A0,$47,$18,$C0,$1F,$7B,$C6,$FF,$50,$FF,$1D,$60 ; $D15C3B
    db $7F,$51,$81,$1F,$1F,$FF,$C7,$00,$87,$D7,$B7,$8C,$1F,$3F,$EC,$1F ; $D15C4B
    db $FF,$0E,$00,$C7,$FF,$87,$BA,$B7,$2F,$AE,$9B,$BF,$E0,$03,$1E,$01 ; $D15C5B
    db $89,$EC,$1F,$A2,$B8,$7E,$00,$C0,$38,$E8,$14,$E0,$0F,$FA,$05,$19 ; $D15C6B
    db $F9,$8E,$0C,$1F,$37,$55,$3F,$5F,$40,$3F,$91,$00,$85,$C0,$47,$FA ; $D15C7B
    db $2B,$F9,$D7,$FE,$E8,$3F,$5C,$EA,$7A,$9F,$C8,$85,$EE,$FF,$57,$EB ; $D15C8B
    db $43,$7C,$2F,$5D,$9C,$AB,$81,$AD,$88,$01,$3F,$E2,$57,$00,$56,$15 ; $D15C9B
    db $D0,$3F,$B6,$B8,$F6,$FE,$55,$DE,$53,$00,$DF,$89,$37,$59,$41,$4D ; $D15CAB
    db $55,$CA,$AB,$AE,$E2,$1F,$B9,$76,$C2,$DB,$36,$98,$C1,$F6,$A9,$AA ; $D15CBB
    db $E7,$5C,$8A,$99,$26,$37,$48,$68,$D7,$01,$DA,$26,$1F,$07,$DE,$FE ; $D15CCB
    db $7D,$7D,$DA,$60,$1F,$DB,$DA,$76,$FB,$0C,$71,$FD,$FE,$7C,$38,$FF ; $D15CDB
    db $01,$7D,$55,$DA,$FF,$7C,$74,$DB,$D8,$1F,$72,$AA,$22,$2A,$EA,$2E ; $D15CEB
    db $3F,$5D,$91,$F6,$0C,$D7,$91,$FB,$38,$D5,$1E,$FF,$55,$55,$95,$3B ; $D15CFB
    db $84,$24,$F1,$03,$F5,$38,$08,$3F,$3E,$C1,$1F,$05,$65,$94,$F6,$D8 ; $D15D0B
    db $1F,$85,$04,$0E,$65,$EB,$D5,$05,$CB,$1F,$52,$87,$6E,$0A,$07,$5B ; $D15D1B
    db $D0,$60,$54,$7A,$3F,$70,$11,$6E,$E7,$02,$1F,$18,$60,$1F,$1A,$05 ; $D15D2B
    db $EC,$7C,$25,$F1,$FB,$89,$1F,$59,$FF,$6E,$1F,$80,$3D,$00,$2F,$00 ; $D15D3B
    db $1F,$12,$E0,$BF,$40,$CF,$1F,$8F,$05,$D8,$1F,$31,$89,$06,$5C,$C4 ; $D15D4B
    db $67,$02,$A2,$00,$D0,$28,$E8,$14,$F4,$0A,$FA,$05,$1D,$FD,$8E,$FE ; $D15D5B
    db $C6,$A3,$1F,$B7,$EB,$BC,$0A,$85,$25,$1F,$42,$2F,$81,$57,$6A,$05 ; $D15D6B
    db $92,$50,$A3,$05,$93,$00,$85,$F5,$3F,$FA,$6F,$FD,$D7,$FE,$45,$D5 ; $D15D7B
    db $D0,$E8,$8F,$DC,$85,$EC,$FF,$02,$EB,$41,$28,$2A,$DF,$9E,$FF,$D5 ; $D15D8B
    db $AF,$0B,$AB,$AB,$56,$54,$57,$55,$54,$15,$D5,$FD,$EB,$34,$69,$5E ; $D15D9B
    db $BB,$E1,$51,$55,$FE,$AB,$FD,$4C,$04,$EF,$7F,$B2,$B2,$CE,$48,$E9 ; $D15DAB
    db $C0,$37,$20,$DF,$73,$B8,$61,$E7,$F9,$2A,$45,$5D,$E7,$3B,$64,$77 ; $D15DBB
    db $9C,$EA,$9D,$55,$8A,$A6,$16,$7C,$7C,$FC,$02,$7C,$F8,$78,$70,$7C ; $D15DCB
    db $2C,$DB,$D8,$73,$FA,$71,$FD,$AB,$7D,$D7,$7E,$E3,$03,$7A,$0B,$03 ; $D15DDB
    db $74,$D9,$74,$C7,$76,$73,$72,$FF,$2A,$6A,$00,$BF,$00,$5F,$11,$A7 ; $D15DEB
    db $09,$55,$11,$AE,$28,$D7,$1C,$AA,$00,$D5,$95,$6A,$C0,$A4,$F1,$53 ; $D15DFB
    db $F0,$BA,$FF,$7D,$FB,$3A,$7D,$F7,$A2,$87,$85,$61,$C0,$F6,$B5,$FE ; $D15E0B
    db $70,$AD,$40,$06,$CA,$75,$25,$3F,$9D,$3B,$2E,$6B,$1F,$78,$A7,$5B ; $D15E1B
    db $D4,$35,$F4,$5A,$6A,$15,$B1,$CE,$82,$A8,$B4,$41,$11,$82,$10,$40 ; $D15E2B
    db $B0,$00,$18,$41,$A1,$02,$ED,$A8,$7D,$1D,$F1,$FB,$93,$9D,$1F,$30 ; $D15E3B
    db $93,$1F,$23,$CE,$1F,$1F,$C0,$1F,$5F,$A0,$BF,$40,$7F,$9E,$1F,$4F ; $D15E4B
    db $1F,$41,$1F,$00,$FC,$FF,$07,$FF,$7F,$FC,$07,$EE,$FF,$10,$8D,$14 ; $D15E5B
    db $C6,$0A,$83,$05,$C1,$02,$A1,$00,$C0,$03,$03,$B8,$40,$97,$F2,$CB ; $D15E6B
    db $F9,$85,$FC,$C2,$FE,$A0,$FE,$C3,$FF,$03,$BF,$C2,$5F,$DE,$EE,$61 ; $D15E7B
    db $71,$3F,$9E,$8E,$CD,$40,$E7,$23,$F2,$13,$FC,$05,$02,$BF,$80,$5E ; $D15E8B
    db $C0,$B1,$B5,$2B,$57,$1A,$2E,$09,$16,$04,$06,$02,$63,$97,$88,$4C ; $D15E9B
    db $F5,$FA,$C9,$11,$7E,$6D,$AA,$03,$DD,$C4,$7B,$65,$4B,$2B,$BB,$10 ; $D15EAB
    db $5C,$E9,$31,$F6,$AD,$41,$5F,$D5,$62,$BE,$C3,$B8,$73,$7B,$70,$71 ; $D15EBB
    db $75,$72,$04,$04,$FB,$75,$02,$19,$8E,$05,$F8,$AE,$57,$F6,$73,$FE ; $D15ECB
    db $70,$F9,$74,$FC,$0E,$04,$72,$8F,$FD,$FB,$FA,$54,$52,$AD,$CD,$73 ; $D15EDB
    db $80,$77,$EC,$AF,$73,$F7,$88,$B9,$1F,$DF,$07,$C5,$B8,$9E,$25,$E7 ; $D15EEB
    db $CD,$BA,$C2,$B5,$63,$4F,$90,$07,$D0,$49,$28,$E7,$08,$E7,$FD,$39 ; $D15EFB
    db $FB,$92,$D6,$A4,$AC,$68,$72,$D0,$E2,$A2,$A2,$87,$C6,$7A,$27,$FA ; $D15F0B
    db $8E,$F4,$9C,$C9,$18,$B3,$30,$4D,$62,$9D,$47,$DD,$FA,$39,$21,$80 ; $D15F1B
    db $AC,$1D,$51,$00,$03,$80,$07,$03,$A1,$14,$FD,$3F,$03,$53,$9F,$03 ; $D15F2B
    db $89,$DF,$08,$92,$DF,$01,$26,$DF,$C9,$DF,$4C,$C1,$DF,$FE,$63,$41 ; $D15F3B
    db $DF,$16,$0E,$18,$DF,$C7,$03,$DF,$7C,$8D,$C6,$DF,$A2,$5C,$DF,$31 ; $D15F4B
    db $3D,$AB,$DF,$2C,$2B,$8C,$DF,$86,$8A,$DF,$8A,$E2,$DF,$41,$0C,$DF ; $D15F5B
    db $23,$DF,$F3,$71,$ED,$DF,$30,$8C,$DF,$B9,$FE,$DF,$5D,$63,$F7,$DF ; $D15F6B
    db $43,$B0,$18,$DF,$52,$51,$DF,$8C,$8C,$91,$DF,$26,$06,$DF,$50,$DF ; $D15F7B
    db $70,$74,$DF,$AD,$FF,$C6,$DF,$DC,$DA,$DF,$71,$53,$DF,$27,$C3,$DF ; $D15F8B
    db $BB,$3D,$18,$DF,$F7,$27,$DF,$ED,$B8,$C6,$DF,$EB,$CF,$DF,$31,$D2 ; $D15F9B
    db $69,$DF,$88,$6F,$8C,$DF,$DB,$90,$DF,$A4,$4C,$60,$DF,$72,$CE,$DF ; $D15FAB
    db $AC,$18,$DF,$90,$3B,$DF,$42,$BD,$81,$DF,$01,$80,$1A,$DD,$90,$03 ; $D15FBB
    db $DF,$2B,$00,$81,$41,$DD,$03,$9F,$49,$E7,$92,$DF,$00,$12,$DF,$E0 ; $D15FCB
    db $01,$26,$DF,$C0,$DF,$70,$E1,$DF,$FC,$49,$C6,$DF,$14,$2C,$DF,$31 ; $D15FDB
    db $CF,$8B,$DF,$7E,$AF,$9D,$DF,$22,$9C,$BF,$3F,$DF,$71,$A4,$DF,$A4 ; $D15FEB
    db $C3,$DF,$A0,$C4,$18,$DF,$69,$39,$DF,$22,$A3,$C6,$DF,$D1,$CD,$DF ; $D15FFB
    db $32,$9B,$1A,$DF,$93,$0C,$DF,$7F,$DF,$63,$67,$B2,$DF,$7A,$0C,$DF ; $D1600B
    db $8E,$AE,$D0,$AA,$63,$06,$DF,$AC,$55,$8C,$DF,$D0,$DF,$54,$71,$DB ; $D1601B
    db $DF,$57,$9D,$DF,$FE,$8C,$BF,$5B,$00,$DF,$A7,$71,$F1,$DF,$BD,$21 ; $D1602B
    db $DF,$E5,$B0,$8C,$DF,$49,$ED,$DF,$52,$63,$E9,$DF,$8A,$6D,$18,$DF ; $D1603B
    db $D3,$98,$DF,$04,$C0,$C6,$DF,$EA,$22,$DF,$38,$E4,$52,$DF,$7C,$C6 ; $D1604B
    db $DF,$B0,$BB,$DF,$38,$CA,$35,$DF,$1B,$E3,$DF,$80,$CE,$02,$DF,$3F ; $D1605B
    db $3D,$DF,$9F,$03,$DF,$9F,$01,$FD,$07,$0F,$BF,$FD,$07,$83,$BF,$89 ; $D1606B
    db $15,$12,$FF,$82,$15,$38,$FF,$E0,$01,$97,$62,$F6,$FF,$95,$FD,$47 ; $D1607B
    db $FF,$E1,$00,$01,$A8,$A8,$D4,$D5,$60,$6A,$0C,$3E,$2C,$D9,$11,$FF ; $D1608B
    db $F7,$60,$47,$FF,$57,$FD,$AA,$7E,$03,$D5,$B5,$3D,$81,$16,$0F,$18 ; $D1609B
    db $FF,$52,$05,$FF,$33,$83,$C0,$FF,$FC,$E2,$7D,$29,$7B,$63,$79,$FF ; $D160AB
    db $89,$C5,$18,$FF,$5F,$6E,$FF,$55,$A1,$36,$83,$EA,$E9,$FF,$31,$32 ; $D160BB
    db $BB,$FF,$22,$7A,$C6,$FF,$73,$FF,$00,$FF,$21,$22,$8E,$05,$01,$AC ; $D160CB
    db $25,$31,$A7,$27,$FF,$AC,$71,$8B,$FF,$24,$51,$8E,$55,$77,$FE,$AB ; $D160DB
    db $76,$FA,$FC,$89,$7B,$00,$72,$BD,$A6,$F0,$F6,$D8,$FF,$30,$CF,$52 ; $D160EB
    db $FF,$93,$29,$C5,$01,$90,$D7,$A5,$49,$EC,$85,$53,$8C,$FF,$2D,$E2 ; $D160FB
    db $FF,$98,$63,$0D,$FF,$42,$35,$18,$FF,$66,$D1,$FF,$F6,$97,$C6,$FF ; $D1610B
    db $67,$CF,$FF,$31,$9D,$1D,$FF,$71,$19,$8C,$FF,$57,$89,$FF,$05,$71 ; $D1611B
    db $C0,$FF,$40,$24,$FF,$5A,$C5,$C5,$E2,$F7,$6F,$68,$FF,$B5,$C5,$E1 ; $D1612B
    db $90,$3A,$03,$03,$18,$E0,$05,$D0,$03,$01,$F0,$3A,$03,$E4,$20,$B3 ; $D1613B
    db $03,$E5,$EF,$EB,$63,$DD,$A6,$F3,$FF,$EF,$45,$BF,$A3,$9F,$12,$9F ; $D1614B
    db $92,$8E,$06,$8F,$22,$2E,$A4,$5F,$D0,$46,$11,$80,$23,$11,$02,$91 ; $D1615B
    db $02,$05,$03,$B0,$17,$87,$A1,$D3,$6D,$80,$80,$BE,$95,$BE,$EF,$BB ; $D1616B
    db $F0,$9B,$3F,$03,$8F,$80,$BC,$A2,$60,$5F,$C1,$41,$C1,$54,$C4,$2B ; $D1617B
    db $E4,$14,$FB,$C0,$F0,$70,$E2,$43,$DF,$9F,$F8,$53,$FD,$C5,$73,$77 ; $D1618B
    db $F8,$8F,$FE,$FE,$FF,$00,$01,$02,$00,$FF,$54,$04,$AC,$01,$F8,$8E ; $D1619B
    db $70,$88,$FF,$01,$00,$00,$02,$EB,$DD,$40,$F8,$0F,$EB,$5B,$E2,$BB ; $D161AB
    db $EA,$37,$84,$FD,$4C,$F4,$40,$EF,$2F,$3E,$C2,$1C,$13,$15,$46,$1D ; $D161BB
    db $A6,$7F,$48,$FF,$02,$7B,$0B,$3F,$10,$C3,$C1,$4E,$3D,$88,$F7,$A8 ; $D161CB
    db $D7,$D4,$2B,$03,$2A,$C0,$03,$F0,$0E,$BD,$B1,$F7,$06,$77,$D7,$57 ; $D161DB
    db $2B,$2B,$03,$70,$2A,$03,$0E,$0F,$94,$B9,$97,$3F,$03,$0E,$DD,$56 ; $D161EB
    db $03,$D7,$71,$BF,$03,$7F,$4D,$03,$DB,$B3,$D5,$03,$C8,$8E,$DF,$E2 ; $D161FB
    db $CE,$BD,$F8,$38,$DF,$E1,$DF,$CB,$E3,$DF,$E3,$8E,$DF,$FB,$18,$DF ; $D1620B
    db $9D,$A1,$DF,$1F,$12,$E3,$DF,$00,$19,$DF,$57,$50,$DF,$A2,$C3,$DF ; $D1621B
    db $11,$82,$18,$DF,$01,$20,$DF,$53,$88,$C6,$DF,$97,$BC,$DF,$33,$70 ; $D1622B
    db $13,$DF,$8D,$87,$DF,$E8,$DF,$18,$DF,$56,$DF,$EC,$9C,$C7,$DF,$D0 ; $D1623B
    db $72,$18,$DF,$17,$DF,$DF,$89,$E3,$DF,$07,$20,$DF,$FD,$DF,$77,$E3 ; $D1624B
    db $DF,$23,$36,$DF,$F8,$E8,$3E,$67,$22,$DF,$77,$0C,$DF,$7B,$C2,$DF ; $D1625B
    db $3F,$67,$0C,$DF,$D6,$0C,$DF,$BE,$CA,$DF,$35,$E1,$DF,$F7,$C8,$8C ; $D1626B
    db $DF,$5B,$29,$DF,$CB,$63,$41,$DF,$A8,$F5,$18,$D7,$DC,$A3,$03,$F6 ; $D1627B
    db $08,$C6,$03,$70,$86,$DF,$32,$F5,$57,$D7,$AB,$62,$DF,$86,$8F,$0E ; $D1628B
    db $DB,$1F,$BA,$E1,$1F,$B9,$81,$E7,$01,$14,$DB,$1F,$03,$52,$3F,$01 ; $D1629B
    db $46,$DF,$EA,$DB,$27,$05,$C0,$A0,$BF,$DF,$EB,$E2,$DF,$C3,$78,$BF ; $D162AB
    db $15,$21,$C6,$DF,$1D,$30,$DF,$31,$85,$08,$DF,$D5,$52,$8C,$DF,$2A ; $D162BB
    db $AB,$DF,$33,$63,$A2,$DF,$89,$AA,$B3,$BF,$AA,$1C,$DF,$9F,$B4,$DF ; $D162CB
    db $63,$33,$DF,$0D,$00,$12,$DF,$CA,$FD,$1C,$DF,$E6,$9E,$DF,$63,$F2 ; $D162DB
    db $DF,$FD,$35,$6C,$DF,$C9,$DF,$FC,$48,$01,$DF,$02,$71,$55,$DF,$03 ; $D162EB
    db $8C,$DF,$DC,$22,$15,$A8,$63,$AA,$DF,$55,$FD,$8E,$DF,$CA,$31,$DF ; $D162FB
    db $2C,$DF,$5E,$C0,$8C,$DF,$9E,$E8,$DF,$BD,$67,$C6,$DF,$77,$0C,$DF ; $D1630B
    db $DB,$A1,$DF,$EB,$63,$61,$DF,$A0,$7D,$18,$D7,$DE,$A1,$03,$7E,$80 ; $D1631B
    db $C6,$03,$50,$84,$DF,$24,$FD,$5F,$DF,$30,$AA,$AB,$03,$84,$AF,$3F ; $D1632B
    db $A7,$DB,$9D,$12,$DF,$E0,$53,$73,$F4,$00,$28,$DF,$F5,$03,$FA,$DC ; $D1633B
    db $E7,$D5,$32,$F4,$FF,$DF,$F5,$81,$03,$FB,$FF,$AB,$41,$8C,$DF,$9A ; $D1634B
    db $02,$DF,$8F,$67,$17,$DF,$6A,$0C,$DF,$56,$55,$DF,$05,$63,$47,$DF ; $D1635B
    db $15,$52,$18,$DF,$C7,$F5,$DF,$84,$BA,$00,$9E,$B4,$FF,$FE,$71,$32 ; $D1636B
    db $2B,$02,$CE,$DF,$FC,$00,$DF,$C5,$40,$C1,$57,$94,$6B,$E7,$18,$9E ; $D1637B
    db $EB,$D5,$DF,$A2,$03,$C0,$DF,$75,$56,$FF,$A9,$77,$33,$53,$F9,$DF ; $D1638B
    db $AA,$38,$DF,$51,$DF,$FD,$00,$DC,$FC,$AB,$F9,$DE,$DC,$27,$AE,$67 ; $D1639B
    db $05,$DF,$52,$0C,$DF,$5E,$BA,$DF,$FE,$63,$AE,$DF,$AC,$08,$8C,$DF ; $D163AB
    db $3B,$DF,$49,$71,$17,$DF,$A3,$89,$DF,$BF,$53,$0C,$DF,$5A,$2C,$DF ; $D163BB
    db $E9,$63,$D2,$DF,$BD,$C2,$8C,$DF,$82,$DF,$EC,$62,$A5,$DF,$D3,$17 ; $D163CB
    db $47,$DF,$82,$11,$DF,$7F,$FA,$9D,$4E,$03,$38,$A1,$DB,$5F,$A4,$03 ; $D163DB
    db $A0,$A1,$E8,$01,$1C,$F0,$01,$F8,$E1,$25,$FC,$00,$E8,$49,$E9,$FF ; $D163EB
    db $F1,$EB,$53,$BB,$F4,$A3,$5D,$17,$00,$5A,$D6,$5C,$79,$96,$7C,$B3 ; $D163FB
    db $38,$E7,$3C,$D3,$1A,$65,$1C,$23,$8A,$15,$D7,$85,$96,$86,$B3,$83 ; $D1640B
    db $E7,$C7,$D3,$C3,$65,$E5,$23,$E3,$95,$F5,$A0,$1F,$09,$79,$03,$AE ; $D1641B
    db $36,$D3,$0F,$F3,$00,$A1,$74,$BF,$70,$4F,$DF,$50,$FF,$2C,$B0,$89 ; $D1642B
    db $DC,$CA,$F3,$F0,$F8,$E1,$3D,$4F,$40,$BA,$13,$40,$79,$06,$71,$8C ; $D1643B
    db $07,$06,$00,$1D,$00,$06,$FA,$FE,$D8,$80,$99,$02,$FD,$03,$72,$72 ; $D1644B
    db $FE,$2D,$E5,$FB,$F9,$50,$00,$2F,$E1,$EA,$6C,$71,$AF,$61,$5E,$80 ; $D1645B
    db $7F,$01,$FE,$18,$17,$C1,$B2,$80,$12,$9D,$75,$6F,$0E,$DE,$9E,$37 ; $D1646B
    db $7F,$7F,$37,$D7,$00,$F7,$6A,$E7,$B2,$3E,$E8,$95,$F0,$0E,$E0,$9C ; $D1647B
    db $F0,$08,$A1,$58,$C3,$30,$87,$60,$0F,$C0,$95,$17,$0E,$0F,$9C,$1F ; $D1648B
    db $08,$0F,$59,$5F,$33,$3F,$67,$7F,$CF,$FF,$E0,$3C,$BF,$FC,$01,$BF ; $D1649B
    db $E1,$A3,$BF,$FC,$C6,$03,$BF,$5B,$B4,$BF,$31,$30,$67,$BF,$18,$45 ; $D164AB
    db $9C,$BF,$82,$BF,$31,$B4,$A4,$BF,$67,$CF,$8E,$B5,$45,$E7,$31,$BF ; $D164BB
    db $FD,$BF,$F1,$C1,$8C,$BF,$3E,$5B,$BF,$22,$67,$D8,$3E,$37,$0C,$BF ; $D164CB
    db $DF,$0E,$BF,$5C,$64,$C2,$BF,$FA,$19,$BF,$C8,$13,$DC,$8E,$4A,$06 ; $D164DB
    db $F9,$38,$BF,$22,$BF,$77,$71,$D8,$63,$23,$C6,$BF,$FA,$BF,$70,$22 ; $D164EB
    db $BF,$D8,$88,$E3,$BF,$4E,$18,$BF,$E1,$D6,$BF,$21,$DE,$CE,$BF,$41 ; $D164FB
    db $18,$BF,$9F,$55,$BF,$D6,$1E,$99,$BF,$BE,$8C,$BF,$D0,$0C,$BF,$70 ; $D1650B
    db $71,$00,$BF,$10,$C6,$BF,$40,$BF,$31,$0C,$2F,$BF,$00,$8F,$9C,$BF ; $D1651B
    db $13,$BF,$25,$4F,$FF,$5F,$35,$02,$BC,$FF,$AB,$35,$E7,$02,$00,$E0 ; $D1652B
    db $E7,$07,$9F,$E1,$E3,$09,$9F,$7B,$14,$6F,$DF,$DB,$02,$18,$DF,$3C ; $D1653B
    db $AC,$DF,$4D,$EF,$DB,$DF,$03,$19,$DF,$97,$FF,$DF,$79,$C3,$DF,$3C ; $D1654B
    db $59,$18,$DF,$AA,$50,$3E,$15,$6F,$E3,$DF,$86,$26,$DF,$5E,$DF,$3A ; $D1655B
    db $6F,$EA,$FC,$11,$DF,$33,$FB,$24,$DF,$AA,$87,$DF,$55,$F8,$18,$63 ; $D1656B
    db $AB,$DF,$89,$70,$CE,$DF,$AA,$6C,$DF,$04,$DF,$62,$E1,$DF,$E3,$F4 ; $D1657B
    db $8C,$DF,$A1,$56,$DF,$43,$71,$B0,$DF,$DD,$8C,$DF,$F4,$1C,$DF,$F6 ; $D1658B
    db $B1,$DF,$04,$9C,$DF,$D0,$DF,$4C,$43,$DF,$84,$63,$AF,$DF,$80,$AF ; $D1659B
    db $89,$DF,$BF,$1E,$DF,$BF,$07,$DF,$7B,$BF,$05,$DF,$4B,$D9,$58,$BD ; $D165AB
    db $DF,$F4,$9E,$BD,$B0,$DF,$5F,$83,$C6,$DF,$38,$A3,$DB,$31,$2C,$82 ; $D165BB
    db $03,$0C,$22,$C7,$DF,$D4,$19,$DF,$D7,$DB,$86,$C3,$03,$26,$F7,$38 ; $D165CB
    db $DF,$B4,$DF,$2D,$06,$AF,$3E,$5B,$1A,$A2,$DF,$31,$55,$AA,$DF,$9F ; $D165DB
    db $41,$80,$DF,$B5,$D8,$5E,$C0,$A2,$E5,$99,$DF,$AE,$80,$DF,$AA,$02 ; $D165EB
    db $7B,$04,$02,$03,$C6,$DF,$57,$AA,$DF,$30,$AF,$55,$DF,$57,$FD,$81 ; $D165FB
    db $18,$D0,$AB,$FD,$DF,$FF,$FD,$C6,$DF,$6B,$E0,$DF,$38,$64,$BB,$DF ; $D1660B
    db $3A,$C6,$DF,$59,$02,$DF,$31,$EC,$14,$DF,$3B,$1B,$9C,$DF,$3A,$DF ; $D1661B
    db $38,$F3,$F7,$DF,$80,$C7,$DF,$A0,$88,$1C,$DF,$08,$DF,$67,$20,$DF ; $D1662B
    db $C0,$49,$53,$88,$5F,$9C,$DF,$09,$DF,$70,$27,$DF,$C5,$0A,$03,$E2 ; $D1663B
    db $05,$F1,$02,$F9,$00,$AA,$A1,$01,$80,$BF,$CA,$FA,$E5,$05,$FD,$F2 ; $D1664B
    db $FE,$F8,$FE,$BF,$C7,$75,$5F,$CF,$AF,$2B,$E7,$10,$DB,$08,$F9,$70 ; $D1665B
    db $60,$A0,$3F,$DF,$9F,$6F,$F0,$AF,$6C,$53,$57,$18,$6F,$24,$4F,$36 ; $D1666B
    db $BF,$9F,$DF,$C0,$EF,$E0,$A0,$24,$50,$8F,$A8,$00,$FE,$03,$A9,$8B ; $D1667B
    db $77,$57,$8F,$8F,$8C,$04,$DF,$0C,$00,$DF,$50,$77,$4D,$56,$2E,$DE ; $D1668B
    db $89,$DF,$FF,$70,$B8,$27,$FC,$13,$E8,$46,$BC,$70,$29,$24,$F3,$E8 ; $D1669B
    db $E7,$50,$CF,$A0,$E7,$47,$F3,$03,$D6,$17,$E0,$53,$D5,$F7,$6B,$8F ; $D166AB
    db $D7,$1F,$AF,$3F,$1F,$80,$06,$0F,$3F,$9F,$07,$8F,$3F,$0A,$1E,$9F ; $D166BB
    db $E7,$FF,$06,$9F,$31,$8D,$09,$9F,$5B,$80,$9C,$9F,$42,$9F,$70,$97 ; $D166CB
    db $9F,$4E,$73,$C6,$9F,$EF,$AC,$9F,$38,$BD,$BD,$9F,$E8,$C7,$21,$DD ; $D166DB
    db $DD,$18,$9F,$20,$9F,$AB,$89,$E3,$9F,$07,$20,$42,$22,$9F,$D8,$C6 ; $D166EB
    db $9F,$DD,$54,$9F,$70,$77,$9F,$DE,$31,$CE,$9F,$B4,$38,$9F,$D3,$9F ; $D166FB
    db $4F,$83,$9F,$23,$8E,$9F,$DB,$38,$9F,$AF,$9F,$BF,$91,$7F,$FB,$E7 ; $D1670B
    db $07,$7F,$FA,$8D,$03,$7F,$87,$0B,$7F,$B1,$1F,$7F,$C2,$08,$C6,$7F ; $D1671B
    db $4D,$7F,$38,$CE,$F9,$7F,$AE,$CE,$7F,$9D,$38,$7F,$CD,$7F,$57,$63 ; $D1672B
    db $55,$7F,$AF,$00,$8C,$7F,$01,$7F,$AF,$63,$05,$42,$A8,$FD,$19,$7F ; $D1673B
    db $FF,$FA,$7F,$55,$C2,$7F,$55,$50,$43,$7F,$BE,$50,$1C,$7F,$5B,$C0 ; $D1674B
    db $7F,$63,$80,$7F,$7B,$2B,$19,$7F,$EA,$FB,$7F,$CB,$C5,$7F,$8F,$1C ; $D1675B
    db $7F,$F5,$7F,$24,$FD,$00,$7F,$31,$CF,$FF,$7F,$F7,$FF,$E3,$02,$7F ; $D1676B
    db $1A,$CA,$18,$7F,$E2,$00,$1F,$E8,$01,$C6,$7F,$2F,$9A,$7F,$31,$E5 ; $D1677B
    db $EF,$7F,$42,$5D,$8C,$7F,$6B,$57,$7F,$9A,$63,$D0,$7F,$AA,$AA,$18 ; $D1678B
    db $7F,$AA,$00,$7F,$AA,$56,$E3,$7F,$02,$38,$7F,$55,$7F,$8A,$C3,$04 ; $D1679B
    db $FA,$76,$55,$18,$7F,$8A,$88,$7F,$EC,$72,$C0,$7F,$BC,$02,$BE,$40 ; $D167AB
    db $3D,$63,$00,$7F,$B7,$40,$18,$7F,$F6,$17,$7F,$96,$57,$0E,$FA,$EB ; $D167BB
    db $B5,$D7,$30,$7F,$5F,$7F,$C7,$19,$F0,$7D,$03,$04,$23,$DF,$D9,$F8 ; $D167CB
    db $F3,$E9,$06,$E0,$1E,$54,$A8,$56,$04,$1F,$0F,$54,$00,$56,$57,$04 ; $D167DB
    db $0F,$1E,$1F,$C0,$7F,$05,$B1,$1F,$DF,$FA,$05,$DD,$07,$3F,$88,$76 ; $D167EB
    db $8F,$06,$3F,$76,$77,$06,$1E,$1F,$00,$FE,$06,$1F,$78,$FE,$05,$1E ; $D167FB
    db $C3,$1C,$F1,$06,$9F,$DC,$FC,$E3,$06,$9F,$FE,$01,$C7,$06,$3F,$01 ; $D1680B
    db $01,$A6,$06,$3F,$17,$00,$01,$FD,$03,$F7,$0C,$D5,$06,$BF,$59,$39 ; $D1681B
    db $36,$81,$01,$EA,$ED,$C8,$ED,$E1,$97,$AE,$00,$0A,$EE,$14,$CC,$14 ; $D1682B
    db $47,$C9,$C7,$7F,$F7,$7F,$77,$73,$F4,$D2,$FB,$D7,$00,$F3,$B1,$E7 ; $D1683B
    db $87,$47,$77,$F7,$FB,$70,$77,$0E,$00,$FB,$07,$01,$F9,$01,$55,$55 ; $D1684B
    db $83,$03,$51,$AE,$FF,$06,$FF,$C2,$02,$0F,$00,$BF,$40,$E1,$9F,$40 ; $D1685B
    db $17,$9C,$BD,$96,$FE,$F0,$F3,$F5,$FB,$FA,$50,$33,$7F,$00,$6F,$3B ; $D1686B
    db $CF,$B3,$F3,$FD,$FA,$F1,$DF,$02,$03,$50,$59,$80,$5F,$00,$AF,$78 ; $D1687B
    db $E0,$02,$46,$BF,$BF,$0F,$9F,$BF,$3F,$9F,$01,$B6,$57,$87,$9F,$AE ; $D1688B
    db $28,$8C,$02,$D8,$EE,$E9,$9F,$F1,$71,$DE,$9F,$10,$8C,$9F,$56,$C8 ; $D1689B
    db $9F,$B3,$72,$3B,$9F,$9C,$00,$9F,$70,$E6,$9F,$B3,$FB,$53,$77,$DF ; $D168AB
    db $87,$9F,$45,$44,$98,$03,$9F,$EE,$9F,$FE,$45,$F4,$04,$FF,$CE,$9F ; $D168BB
    db $F4,$24,$9F,$FB,$9F,$24,$7F,$2B,$9F,$3C,$FC,$FB,$07,$9F,$F0,$FD ; $D168CB
    db $04,$3A,$E3,$06,$9F,$F6,$0D,$1E,$9F,$AA,$6C,$02,$9F,$38,$FE,$F8 ; $D168DB
    db $9F,$DA,$84,$1B,$87,$9F,$A3,$2B,$8E,$02,$9F,$F1,$A6,$32,$9F,$A3 ; $D168EB
    db $9F,$FB,$98,$7F,$9F,$01,$00,$FC,$05,$93,$06,$E8,$EB,$F1,$05,$9F ; $D168FB
    db $57,$98,$84,$9F,$EF,$E5,$F3,$51,$B0,$23,$9F,$2F,$8C,$9F,$EC,$9F ; $D1690B
    db $F8,$79,$FF,$07,$9F,$B0,$E7,$06,$9F,$7F,$6E,$BF,$B8,$97,$01,$FB ; $D1691B
    db $06,$00,$F7,$0F,$FE,$0A,$FE,$0E,$FC,$08,$82,$17,$FD,$F3,$FC,$FE ; $D1692B
    db $FC,$FF,$F8,$EB,$E1,$CF,$C1,$8B,$83,$D7,$59,$E5,$9D,$E9,$B1,$1D ; $D1693B
    db $24,$59,$61,$5E,$62,$D9,$61,$5A,$62,$61,$37,$E7,$05,$C7,$29,$D2 ; $D1694B
    db $CD,$87,$D9,$83,$DE,$87,$59,$87,$DA,$7B,$7F,$FF,$BD,$7F,$D1,$B2 ; $D1695B
    db $20,$03,$BF,$BF,$FB,$31,$7B,$BD,$3F,$7F,$FD,$60,$03,$BF,$F9,$FB ; $D1696B
    db $03,$FB,$F8,$F5,$F5,$F9,$FC,$38,$03,$FD,$07,$E9,$30,$E8,$FC,$0A ; $D1697B
    db $FB,$FE,$F5,$D8,$13,$03,$FA,$FD,$C5,$03,$FE,$E9,$D7,$5F,$D0,$6B ; $D1698B
    db $38,$77,$24,$42,$32,$1B,$32,$49,$39,$2F,$7B,$71,$1C,$37,$67,$8F ; $D1699B
    db $67,$9D,$69,$8F,$4D,$CE,$14,$87,$4E,$A7,$28,$86,$72,$DD,$02,$BD ; $D169AB
    db $07,$27,$60,$9F,$ED,$03,$FF,$6D,$89,$00,$EF,$6F,$9C,$BF,$07,$BF ; $D169BB
    db $71,$0E,$BF,$18,$27,$BF,$74,$5E,$F8,$EF,$E3,$BF,$9B,$86,$BF,$A5 ; $D169CB
    db $99,$BF,$33,$0C,$34,$BF,$1E,$86,$BF,$4A,$72,$BF,$31,$E3,$45,$BF ; $D169DB
    db $C3,$CC,$C7,$BF,$9E,$18,$BF,$CA,$BF,$FB,$F9,$F1,$06,$BF,$FD,$FB ; $D169EB
    db $E7,$0B,$BF,$FD,$20,$03,$07,$F9,$90,$BF,$FA,$F9,$E5,$BB,$31,$03 ; $D169FB
    db $BF,$2F,$78,$93,$BF,$53,$18,$BF,$61,$1D,$BF,$8B,$23,$C6,$BF,$8E ; $D16A0B
    db $5C,$BF,$31,$C7,$0E,$BF,$87,$62,$E3,$06,$BF,$8F,$F0,$DD,$06,$BF ; $D16A1B
    db $35,$EC,$20,$5D,$FF,$03,$F7,$0B,$FE,$62,$06,$BF,$BC,$5C,$23,$18 ; $D16A2B
    db $6C,$BF,$73,$01,$E7,$E1,$BF,$DF,$C3,$8C,$BF,$A4,$98,$BF,$4C,$61 ; $D16A3B
    db $30,$BF,$0E,$72,$D9,$CE,$03,$38,$BF,$44,$BF,$8C,$E3,$BF,$8E,$6F ; $D16A4B
    db $BF,$03,$06,$74,$BF,$F9,$7C,$06,$BF,$FF,$C4,$BF,$F9,$2C,$B7,$03 ; $D16A5B
    db $91,$BF,$FE,$E4,$04,$BF,$68,$86,$BF,$59,$38,$BF,$31,$65,$19,$BF ; $D16A6B
    db $9B,$33,$21,$BF,$C6,$1E,$E3,$0A,$BF,$CF,$B0,$C4,$06,$BF,$BF,$3F ; $D16A7B
    db $6E,$7F,$75,$01,$D4,$FD,$FC,$03,$AA,$D1,$1A,$1F,$FD,$4B,$03,$AE ; $D16A8B
    db $7E,$3E,$5D,$D8,$EE,$4E,$ED,$C8,$B6,$86,$FC,$CC,$B6,$82,$AF,$09 ; $D16A9B
    db $3F,$81,$FB,$A2,$7F,$11,$EF,$02,$FF,$49,$EA,$06,$FB,$49,$7D,$50 ; $D16AAB
    db $D3,$2E,$4D,$34,$18,$DB,$61,$CD,$30,$D6,$68,$4D,$70,$C2,$7C,$59 ; $D16ABB
    db $36,$D3,$82,$CD,$03,$85,$5B,$C2,$0D,$81,$56,$06,$07,$83,$40,$C1 ; $D16ACB
    db $98,$63,$2E,$AD,$AF,$1C,$7B,$79,$ED,$8D,$5B,$57,$7F,$2B,$B9,$11 ; $D16ADB
    db $E5,$70,$D3,$01,$AD,$FD,$7B,$BB,$CD,$F3,$5B,$83,$46,$47,$B9,$4A ; $D16AEB
    db $E5,$C7,$02,$8F,$AF,$AE,$55,$65,$AA,$6A,$E0,$9E,$00,$FA,$AF,$FF ; $D16AFB
    db $55,$C5,$0E,$F3,$F1,$CF,$AB,$AC,$F1,$F3,$B4,$A2,$CA,$C3,$D7,$82 ; $D16B0B
    db $09,$06,$1E,$51,$FC,$F3,$F8,$AB,$FC,$F1,$E9,$B4,$F4,$CA,$B9,$ED ; $D16B1B
    db $17,$09,$B4,$1A,$DE,$0F,$3B,$65,$0C,$4F,$3F,$21,$3C,$2F,$5F,$80 ; $D16B2B
    db $78,$AF,$5B,$45,$FC,$C7,$08,$92,$76,$C3,$0C,$E6,$22,$83,$2C,$12 ; $D16B3B
    db $82,$07,$A8,$17,$42,$E7,$90,$73,$08,$F3,$88,$33,$3C,$FB,$B4,$59 ; $D16B4B
    db $14,$FB,$9C,$D9,$54,$97,$1F,$8B,$8F,$8B,$0F,$BF,$8F,$B7,$07,$F5 ; $D16B5B
    db $A7,$BF,$07,$35,$67,$33,$DF,$9C,$DF,$FC,$86,$DF,$BC,$8C,$DF,$33 ; $D16B6B
    db $BE,$08,$DF,$BF,$86,$DF,$FF,$03,$DF,$38,$EE,$42,$DF,$41,$C6,$DF ; $D16B7B
    db $0D,$70,$DF,$71,$CC,$DF,$0D,$C4,$DF,$49,$1B,$DF,$8D,$DF,$71,$61 ; $D16B8B
    db $DF,$8D,$8C,$DF,$C0,$89,$DF,$ED,$63,$EF,$DF,$FD,$9D,$38,$DF,$3F ; $D16B9B
    db $DF,$F4,$71,$60,$DF,$ED,$C6,$DF,$DD,$DF,$31,$E2,$3F,$DF,$4B,$F4 ; $D16BAB
    db $E3,$02,$DF,$EF,$EE,$1F,$DF,$EE,$AA,$03,$76,$B9,$EF,$DF,$31,$BB ; $D16BBB
    db $EE,$DF,$EB,$E8,$8C,$DF,$A5,$A3,$DF,$97,$E1,$DF,$1F,$40,$8C,$DF ; $D16BCB
    db $FC,$EB,$DF,$F8,$63,$A5,$DF,$E8,$97,$20,$DF,$A5,$DF,$08,$E3,$DF ; $D16BDB
    db $3D,$1C,$DF,$C4,$38,$DF,$63,$FD,$DF,$96,$72,$38,$7D,$E7,$DF,$16 ; $D16BEB
    db $67,$C2,$DF,$07,$1E,$DF,$77,$03,$DF,$32,$C9,$44,$DF,$8F,$64,$DF ; $D16BFB
    db $B5,$11,$DF,$77,$A5,$FB,$A3,$DF,$E5,$61,$FC,$01,$B6,$5D,$00,$25 ; $D16C0B
    db $FC,$FE,$9C,$DF,$5C,$FF,$E4,$FB,$8E,$FF,$0C,$38,$FF,$A3,$FF,$43 ; $D16C1B
    db $DA,$FF,$03,$47,$FF,$0C,$09,$FF,$8C,$70,$0E,$FF,$4D,$76,$86,$B3 ; $D16C2B
    db $8C,$FF,$4C,$83,$FF,$84,$3A,$CD,$7F,$32,$A3,$FF,$B9,$64,$FF,$B0 ; $D16C3B
    db $30,$FF,$00,$7B,$FB,$99,$CE,$FF,$E3,$3E,$FF,$0F,$03,$0C,$6F,$FE ; $D16C4B
    db $FE,$FF,$AA,$7F,$AA,$04,$7B,$BA,$AC,$45,$AA,$FF,$FB,$63,$F9,$FF ; $D16C5B
    db $E5,$E3,$20,$FF,$87,$FF,$04,$E3,$FF,$FB,$8C,$FF,$E5,$FF,$F8,$63 ; $D16C6B
    db $87,$FF,$E1,$1E,$8C,$FF,$19,$FF,$65,$63,$39,$FF,$C5,$39,$8C,$FF ; $D16C7B
    db $B9,$FF,$87,$63,$62,$FF,$A7,$62,$3C,$FF,$07,$03,$FF,$73,$E1,$FF ; $D16C8B
    db $49,$04,$E6,$07,$FF,$B7,$FF,$1C,$75,$37,$FC,$F3,$10,$FC,$03,$F8 ; $D16C9B
    db $03,$EA,$32,$E3,$03,$FD,$A1,$D7,$F9,$C7,$03,$F8,$35,$09,$03,$FF ; $D16CAB
    db $C6,$42,$AF,$8D,$9F,$98,$A4,$04,$BF,$86,$67,$54,$1F,$06,$E6,$14 ; $D16CBB
    db $7B,$39,$D9,$54,$F8,$60,$7B,$5F,$FE,$40,$F9,$8C,$FE,$E0,$39,$0D ; $D16CCB
    db $C6,$39,$32,$3F,$EC,$66,$C5,$F5,$74,$3F,$FE,$DF,$BF,$1F,$AD,$0E ; $D16CDB
    db $C0,$06,$C0,$F2,$79,$14,$5A,$85,$C0,$B4,$F5,$0E,$60,$5F,$74,$59 ; $D16CEB
    db $C8,$E0,$45,$91,$7A,$00,$FB,$54,$2E,$DA,$7B,$58,$D4,$A4,$FC,$BD ; $D16CFB
    db $16,$17,$C8,$6F,$01,$85,$7A,$01,$FA,$00,$55,$00,$7B,$03,$A7,$55 ; $D16D0B
    db $70,$00,$05,$2A,$54,$AB,$80,$DB,$AE,$01,$D9,$A9,$31,$55,$22,$07 ; $D16D1B
    db $AF,$04,$98,$10,$04,$1F,$FF,$50,$00,$FE,$06,$DF,$DD,$88,$B6,$0D ; $D16D2B
    db $3A,$62,$45,$9B,$FD,$55,$F9,$5D,$AF,$F3,$5F,$02,$FC,$45,$EB,$40 ; $D16D3B
    db $B6,$98,$22,$08,$F4,$0A,$F7,$01,$5D,$05,$F3,$03,$01,$51,$54,$CF ; $D16D4B
    db $BB,$4F,$EF,$0B,$F1,$1B,$E3,$3B,$B8,$F6,$C1,$5F,$4C,$CB,$71,$87 ; $D16D5B
    db $C8,$16,$59,$0D,$04,$4E,$05,$4C,$74,$6D,$88,$F4,$A8,$0D,$C4,$BB ; $D16D6B
    db $1C,$D9,$D4,$8C,$03,$89,$C0,$03,$B9,$00,$90,$EB,$80,$79,$00,$7F ; $D16D7B
    db $47,$B5,$63,$67,$03,$E1,$27,$01,$03,$F1,$47,$F3,$17,$A1,$87,$27 ; $D16D8B
    db $FF,$59,$5F,$E3,$05,$FF,$F8,$FE,$C6,$02,$FF,$EF,$C9,$FF,$70,$B5 ; $D16D9B
    db $FF,$63,$50,$C7,$FF,$E7,$04,$1C,$FF,$10,$FF,$67,$4E,$FF,$FD,$0C ; $D16DAB
    db $FF,$38,$1C,$FF,$76,$E1,$FF,$D5,$E4,$8C,$FF,$FA,$9F,$FF,$BC,$71 ; $D16DBB
    db $1F,$FF,$B6,$8C,$FF,$4A,$95,$FF,$F1,$63,$0A,$FF,$64,$58,$20,$FF ; $D16DCB
    db $05,$FF,$44,$CE,$FF,$3B,$18,$FF,$AC,$17,$FF,$6B,$05,$73,$85,$10 ; $D16DDB
    db $8C,$FF,$3B,$FF,$44,$61,$E8,$FF,$45,$10,$AB,$55,$81,$31,$AA,$45 ; $D16DEB
    db $FF,$44,$32,$8E,$07,$AB,$44,$61,$FF,$1F,$FF,$10,$BA,$8C,$FF,$CD ; $D16DFB
    db $89,$FF,$7A,$67,$05,$9B,$ED,$0C,$FF,$B7,$5B,$FF,$44,$71,$FB,$FF ; $D16E0B
    db $62,$C7,$FF,$E7,$18,$FF,$B3,$FF,$40,$44,$C7,$FF,$0B,$EB,$19,$FF ; $D16E1B
    db $F2,$FF,$F2,$C3,$FF,$DB,$70,$8E,$FF,$1D,$31,$FF,$14,$FF,$2D,$CC ; $D16E2B
    db $9C,$FF,$0C,$FB,$26,$99,$94,$FF,$71,$94,$FF,$10,$9C,$F7,$F5,$FF ; $D16E3B
    db $39,$F1,$37,$07,$C7,$FF,$B1,$09,$FF,$FD,$00,$13,$FF,$F9,$44,$FF ; $D16E4B
    db $51,$F7,$FF,$FE,$23,$FF,$FF,$86,$FF,$B1,$00,$FF,$31,$73,$40,$FF ; $D16E5B
    db $E3,$00,$8C,$FF,$C9,$00,$FF,$7F,$E3,$FF,$FC,$8E,$FF,$7C,$38,$FF ; $D16E6B
    db $67,$FF,$D1,$48,$E0,$FF,$B8,$83,$FF,$A7,$18,$FF,$0E,$D1,$FF,$E0 ; $D16E7B
    db $1A,$CE,$FF,$60,$0E,$FF,$15,$80,$7A,$A7,$03,$18,$FF,$2A,$D5,$FF ; $D16E8B
    db $A8,$53,$C7,$FF,$6A,$15,$1C,$FF,$BF,$FF,$61,$2A,$FF,$04,$AC,$00 ; $D16E9B
    db $C9,$08,$98,$FF,$55,$FF,$00,$76,$82,$07,$54,$6C,$10,$FF,$89,$E1 ; $D16EAB
    db $FF,$7B,$04,$C6,$FF,$11,$FF,$73,$A6,$FF,$62,$15,$FF,$88,$73,$43 ; $D16EBB
    db $FF,$04,$A2,$6C,$FF,$3D,$FF,$1B,$63,$FA,$FF,$1F,$F6,$18,$FF,$F3 ; $D16ECB
    db $D0,$FF,$DF,$34,$C6,$FF,$06,$1C,$FF,$32,$0E,$10,$FF,$3C,$0E,$FF ; $D16EDB
    db $D0,$24,$FB,$84,$03,$32,$A9,$84,$FF,$7D,$09,$FF,$77,$98,$03,$57 ; $D16EEB
    db $FF,$F5,$87,$01,$75,$E4,$2A,$AA,$7F,$15,$3C,$AE,$00,$79,$F4,$3C ; $D16EFB
    db $65,$2C,$80,$2F,$50,$DF,$AA,$B5,$DF,$1B,$84,$3F,$C3,$F3,$C7,$66 ; $D16F0B
    db $C2,$97,$D3,$56,$D1,$9F,$E3,$09,$7C,$EF,$22,$BC,$07,$F5,$03,$AB ; $D16F1B
    db $9F,$FD,$4D,$A3,$9A,$00,$9F,$DE,$82,$3D,$12,$58,$44,$0D,$08,$CD ; $D16F2B
    db $47,$4E,$03,$CE,$4D,$F0,$0B,$95,$F9,$EB,$DC,$AC,$AB,$FF,$FB,$DE ; $D16F3B
    db $96,$FF,$8E,$AB,$53,$04,$F4,$13,$87,$E0,$0B,$74,$D8,$27,$D8,$A9 ; $D16F4B
    db $76,$75,$8A,$BF,$10,$C5,$D1,$8D,$AC,$C3,$26,$F9,$51,$FE,$FF,$76 ; $D16F5B
    db $AE,$8F,$FF,$AB,$77,$16,$2E,$D1,$56,$5D,$DF,$20,$26,$51,$50,$8F ; $D16F6B
    db $70,$FC,$06,$DD,$22,$EE,$99,$0A,$FF,$41,$FE,$BF,$DB,$EC,$8B,$6B ; $D16F7B
    db $DB,$8A,$FD,$FF,$AC,$B9,$15,$00,$0A,$41,$00,$3C,$83,$21,$CD,$24 ; $D16F8B
    db $D9,$6D,$B2,$53,$AC,$EA,$13,$F7,$F1,$EF,$AD,$EE,$C0,$EE,$C6,$DE ; $D16F9B
    db $00,$FA,$6A,$7E,$54,$F8,$4C,$09,$F8,$5D,$B0,$31,$D1,$77,$91,$E1 ; $D16FAB
    db $21,$BF,$45,$FD,$81,$5B,$03,$53,$18,$83,$18,$F2,$20,$E1,$40,$E8 ; $D16FBB
    db $90,$E5,$80,$C8,$60,$C5,$A0,$FB,$AF,$FB,$7F,$C3,$E2,$0F,$C1,$1F ; $D16FCB
    db $98,$1F,$85,$1F,$E8,$3F,$A5,$3F,$18,$DF,$6E,$AE,$DF,$3D,$2D,$C6 ; $D16FDB
    db $DF,$3D,$21,$DF,$31,$3F,$51,$DF,$B1,$9F,$8C,$DF,$2F,$C2,$DF,$26 ; $D16FEB
    db $63,$C3,$DF,$57,$C0,$18,$DF,$78,$49,$DF,$BD,$17,$C6,$DF,$FB,$8A ; $D16FFB
    db $DF,$38,$B2,$8A,$DF,$86,$CE,$DF,$59,$19,$DF,$9C,$07,$DF,$CF,$C3 ; $D1700B
    db $DF,$D5,$FD,$1C,$DF,$BD,$BB,$DF,$63,$D6,$DF,$BF,$43,$8C,$DF,$C7 ; $D1701B
    db $DF,$64,$63,$D9,$DF,$ED,$32,$18,$DF,$BB,$04,$DF,$89,$E8,$0C,$26 ; $D1702B
    db $D9,$51,$EF,$DF,$FE,$63,$CF,$DF,$76,$06,$01,$DF,$16,$9F,$00,$26 ; $D1703B
    db $40,$51,$8C,$DF,$A8,$56,$DF,$FF,$67,$89,$DF,$45,$22,$DF,$4E,$55 ; $D1704B
    db $DB,$CA,$61,$DF,$2F,$0A,$01,$44,$8C,$DF,$20,$DD,$DF,$2D,$63,$F6 ; $D1705B
    db $DF,$FA,$02,$8C,$DF,$E9,$DF,$FF,$60,$D7,$DF,$BE,$22,$7A,$64,$31 ; $D1706B
    db $E5,$58,$DF,$19,$F0,$C6,$DF,$80,$DF,$03,$F3,$41,$E5,$85,$5F,$1A ; $D1707B
    db $20,$DF,$C7,$DF,$50,$C9,$DF,$A5,$8C,$DF,$FF,$3F,$DF,$D1,$E1,$DF ; $D1708B
    db $C5,$5F,$23,$DF,$7F,$86,$DF,$3F,$6D,$DF,$03,$2F,$21,$2E,$80,$3B ; $D1709B
    db $11,$8C,$DF,$8E,$DF,$6B,$60,$C4,$DF,$37,$D0,$97,$D1,$03,$17,$C4 ; $D170AB
    db $AB,$F4,$79,$48,$1C,$DF,$FD,$13,$DF,$60,$9A,$DF,$F2,$8E,$00,$AB ; $D170BB
    db $70,$CF,$DF,$1D,$00,$C6,$DF,$9D,$06,$DF,$31,$8F,$0D,$DF,$D4,$FC ; $D170CB
    db $8C,$DF,$FD,$BF,$DF,$DF,$63,$D7,$DF,$FB,$03,$18,$DF,$03,$D7,$DF ; $D170DB
    db $60,$9D,$C6,$DF,$EC,$33,$DF,$40,$FF,$DF,$F9,$06,$75,$F9,$A2,$CE ; $D170EB
    db $76,$FF,$DF,$40,$DF,$06,$8F,$00,$06,$32,$00,$55,$DF,$A9,$6D,$DF ; $D170FB
    db $1B,$33,$DF,$DA,$1B,$DF,$FD,$00,$DF,$6D,$1B,$DF,$DD,$8C,$01,$3D ; $D1710B
    db $E6,$DF,$FE,$E2,$DF,$FF,$0C,$DF,$93,$DF,$BF,$83,$DF,$5C,$8C,$DF ; $D1711B
    db $E0,$DF,$73,$E1,$DF,$E2,$40,$21,$DF,$D7,$08,$8F,$DF,$A5,$10,$02 ; $D1712B
    db $18,$DF,$EF,$2F,$DF,$D5,$5F,$B0,$DF,$FC,$00,$BF,$DC,$FA,$00,$C5 ; $D1713B
    db $00,$E2,$28,$49,$C4,$61,$E4,$31,$52,$1A,$48,$FC,$FF,$FA,$FF,$C5 ; $D1714B
    db $FF,$AA,$9F,$F5,$B7,$FD,$9F,$5F,$CF,$4C,$E5,$1E,$B4,$0F,$5C,$1E ; $D1715B
    db $C8,$0F,$59,$0F,$D8,$05,$50,$87,$52,$02,$55,$B7,$E1,$5F,$F0,$CB ; $D1716B
    db $E1,$5B,$F0,$DB,$F0,$5A,$FA,$DB,$F8,$5D,$FD,$ED,$DB,$65,$32,$F2 ; $D1717B
    db $1E,$F2,$F0,$FC,$E0,$30,$F7,$A2,$F5,$E4,$EB,$2B,$DF,$12,$AA,$CF ; $D1718B
    db $FF,$0D,$01,$1F,$E3,$A8,$BF,$DD,$0A,$1F,$EA,$2F,$04,$9F,$83,$C0 ; $D1719B
    db $64,$90,$D8,$37,$8E,$B7,$81,$75,$2A,$E3,$C1,$A3,$DD,$FC,$63,$3B ; $D171AB
    db $7B,$EF,$7F,$6E,$48,$4E,$C9,$80,$A0,$3E,$DD,$F7,$54,$FF,$06,$01 ; $D171BB
    db $20,$20,$A8,$56,$73,$AF,$24,$F8,$37,$0E,$FC,$56,$55,$D9,$26,$FE ; $D171CB
    db $AF,$DF,$FF,$23,$F9,$53,$74,$BD,$05,$03,$0D,$AF,$F9,$D3,$00,$5E ; $D171DB
    db $B5,$39,$55,$C0,$2A,$8A,$7E,$1E,$9F,$42,$7E,$38,$20,$F0,$FD,$2C ; $D171EB
    db $B9,$F5,$AE,$EA,$A0,$DF,$9F,$81,$E8,$62,$C7,$B9,$5F,$7E,$07,$3A ; $D171FB
    db $F5,$61,$BF,$3A,$0A,$88,$CB,$79,$D0,$85,$FF,$F8,$FB,$2D,$BA,$F8 ; $D1720B
    db $EF,$1A,$45,$7A,$FD,$F5,$87,$7A,$2F,$AF,$F8,$AE,$EB,$CA,$C5,$DD ; $D1721B
    db $A0,$65,$C3,$48,$62,$80,$C4,$09,$20,$41,$E4,$32,$02,$60,$0A,$97 ; $D1722B
    db $F3,$08,$CD,$9F,$82,$9F,$0D,$3F,$C1,$DF,$37,$1F,$E1,$FD,$AD,$08 ; $D1723B
    db $C2,$1F,$00,$3F,$A0,$97,$18,$13,$18,$03,$30,$43,$10,$BC,$53,$00 ; $D1724B
    db $FF,$AF,$CF,$7F,$6F,$FB,$EF,$F3,$12,$FF,$93,$BF,$CE,$1F,$F2,$C7 ; $D1725B
    db $1F,$65,$A0,$E0,$03,$1F,$8F,$F5,$B7,$B9,$4F,$9B,$02,$1F,$58,$1E ; $D1726B
    db $C8,$0E,$58,$58,$1F,$13,$44,$76,$B7,$1B,$EC,$1F,$F1,$96,$1F,$00 ; $D1727B
    db $4C,$EC,$ED,$DB,$75,$67,$F2,$1E,$3B,$E3,$E1,$25,$1F,$E2,$80,$1F ; $D1728B
    db $FE,$8B,$FF,$0D,$FE,$1D,$1D,$1F,$E3,$EC,$80,$1F,$3F,$14,$9F,$83 ; $D1729B
    db $C4,$60,$1D,$90,$D8,$27,$97,$1F,$31,$3E,$2E,$E3,$C1,$B2,$DC,$FC ; $D172AB
    db $63,$7F,$3B,$EF,$7F,$7E,$58,$4E,$C9,$C0,$E0,$3E,$DD,$E7,$55,$FF ; $D172BB
    db $06,$55,$C7,$1F,$47,$72,$6B,$1F,$A4,$77,$0E,$FC,$57,$55,$F9,$06 ; $D172CB
    db $AE,$BB,$DF,$FF,$32,$F8,$53,$74,$F9,$01,$03,$0D,$BE,$E9,$D3,$00 ; $D172DB
    db $1E,$6D,$55,$C0,$3B,$65,$1F,$06,$C3,$7E,$38,$31,$E0,$FD,$2C,$ED ; $D172EB
    db $F1,$AE,$EA,$A1,$CE,$B3,$1F,$66,$B0,$1F,$6E,$27,$3A,$04,$F5,$21 ; $D172FB
    db $BF,$3A,$1A,$67,$1F,$81,$60,$1F,$2C,$9A,$F8,$AF,$8C,$1F,$E5,$1F ; $D1730B
    db $87,$7A,$6F,$07,$9D,$1F,$60,$9F,$1F,$12,$04,$9D,$1F,$9F,$9F,$1F ; $D1731B
    db $ED,$07,$9F,$1F,$00,$06,$9F,$1F,$83,$03,$91,$1F,$64,$9F,$1F,$08 ; $D1732B
    db $02,$9D,$1F,$B8,$9D,$1F,$0C,$89,$1F,$1F,$49,$E0,$1F,$51,$07,$52 ; $D1733B
    db $17,$EC,$1F,$4B,$4B,$E0,$01,$1F,$5B,$FA,$5B,$F8,$4C,$E8,$D0,$3F ; $D1734B
    db $76,$9E,$1F,$76,$F3,$1F,$76,$6B,$1F,$4B,$9A,$03,$1F,$FC,$0B,$1F ; $D1735B
    db $EA,$7F,$B1,$1F,$C5,$70,$70,$90,$D8,$67,$8A,$B7,$81,$20,$3F,$E3 ; $D1736B
    db $C1,$B6,$9C,$EC,$1F,$3A,$64,$EF,$02,$18,$B2,$1F,$E3,$79,$1F,$07 ; $D1737B
    db $D9,$1F,$F9,$D8,$1F,$53,$51,$01,$F9,$06,$AF,$AA,$DF,$FF,$72,$D9 ; $D1738B
    db $1F,$F8,$D8,$1F,$FE,$AD,$EC,$1F,$7C,$00,$55,$C0,$3F,$8E,$7E,$1E ; $D1739B
    db $8F,$07,$96,$1F,$07,$FD,$E1,$AE,$EA,$E1,$62,$1F,$F8,$77,$E3,$C7 ; $D173AB
    db $B9,$1F,$2E,$07,$3A,$E4,$20,$9F,$3A,$5E,$59,$FD,$79,$C0,$80,$DA ; $D173BB
    db $1F,$E3,$28,$BA,$F8,$BF,$1B,$45,$5A,$F9,$A1,$87,$7A,$7F,$BF,$F8 ; $D173CB
    db $00,$EF,$D9,$1F,$85,$72,$E0,$65,$48,$02,$E0,$C4,$09,$61,$40,$E4 ; $D173DB
    db $32,$52,$20,$0A,$3F,$E5,$7F,$CD,$9F,$E2,$C0,$A2,$3F,$C0,$9E,$37 ; $D173EB
    db $1F,$25,$A1,$AD,$91,$1F,$7F,$81,$1F,$08,$03,$30,$03,$40,$3C,$1F ; $D173FB
    db $8F,$1D,$7F,$6F,$EB,$AF,$1F,$38,$C3,$FF,$6E,$07,$E6,$0F,$F7,$08 ; $D1740B
    db $E7,$02,$E7,$00,$87,$00,$33,$04,$3D,$02,$67,$F1,$EF,$F9,$F8,$F8 ; $D1741B
    db $E2,$F8,$E0,$F8,$80,$F8,$34,$FC,$3A,$FA,$86,$54,$03,$15,$3B,$43 ; $D1742B
    db $0F,$82,$3A,$08,$04,$8A,$20,$00,$6C,$DD,$F9,$5C,$1D,$3A,$FC,$6E ; $D1743B
    db $E5,$8A,$F0,$2D,$E5,$8B,$FB,$20,$FF,$85,$4B,$F7,$65,$F1,$F8,$BD ; $D1744B
    db $7A,$B5,$F7,$6A,$1A,$A8,$7D,$01,$16,$15,$41,$00,$FD,$DB,$BA,$4B ; $D1745B
    db $72,$CA,$2A,$E7,$8D,$2A,$02,$16,$FE,$41,$EA,$AD,$26,$6B,$9D,$82 ; $D1746B
    db $FA,$B6,$94,$F3,$EE,$EB,$71,$BD,$B8,$5F,$75,$F8,$55,$7F,$14,$07 ; $D1747B
    db $85,$1F,$C9,$28,$CA,$A6,$45,$C6,$7A,$70,$A5,$FD,$03,$52,$F9,$FB ; $D1748B
    db $02,$DE,$59,$FF,$8E,$DA,$F4,$DD,$74,$2E,$60,$05,$3F,$07,$55,$FF ; $D1749B
    db $04,$01,$7F,$71,$04,$FB,$5B,$D1,$8F,$97,$1A,$84,$88,$8C,$07,$36 ; $D174AB
    db $6E,$8D,$F9,$F1,$63,$B3,$1E,$5F,$B2,$DE,$18,$D5,$21,$F8,$74,$D5 ; $D174BB
    db $E3,$06,$8B,$6D,$89,$60,$D2,$4B,$14,$F8,$21,$21,$2A,$D0,$4F,$52 ; $D174CB
    db $3A,$0D,$F9,$A7,$F2,$2F,$2D,$5B,$21,$A2,$4B,$E1,$F0,$20,$95,$87 ; $D174DB
    db $07,$0A,$DA,$28,$3D,$D0,$75,$A4,$14,$17,$43,$C3,$F7,$6D,$43,$27 ; $D174EB
    db $C3,$E5,$C7,$AA,$C7,$20,$87,$68,$06,$21,$55,$0A,$77,$BC,$A7,$BC ; $D174FB
    db $E5,$3C,$AA,$38,$20,$38,$68,$78,$21,$F9,$1A,$BA,$B3,$00,$3B,$80 ; $D1750B
    db $7F,$00,$01,$70,$67,$00,$37,$00,$E7,$00,$EF,$00,$33,$7F,$BB,$FF ; $D1751B
    db $8E,$40,$B6,$67,$FF,$37,$FF,$E7,$FF,$46,$EF,$1F,$06,$0B,$F7,$08 ; $D1752B
    db $E6,$03,$1B,$00,$83,$04,$33,$04,$3C,$03,$67,$F1,$76,$EB,$1F,$00 ; $D1753B
    db $E3,$F9,$E0,$F8,$84,$FC,$34,$FC,$3B,$3B,$FB,$00,$1F,$11,$3B,$43 ; $D1754B
    db $1F,$83,$3A,$08,$76,$44,$1F,$27,$01,$84,$82,$1F,$E1,$2D,$E5,$CB ; $D1755B
    db $78,$1F,$61,$F5,$00,$BD,$7A,$A4,$F6,$6A,$1A,$FD,$3D,$EC,$1F,$40 ; $D1756B
    db $C5,$DF,$DF,$BE,$C3,$4B,$72,$CB,$2B,$E7,$8D,$2E,$13,$16,$FE,$51 ; $D1757B
    db $FB,$B2,$1F,$D9,$E3,$82,$FA,$A6,$95,$F3,$EE,$EF,$75,$BD,$B8,$5E ; $D1758B
    db $65,$F8,$55,$3F,$54,$D8,$1F,$D9,$28,$3B,$CA,$A2,$3B,$1F,$61,$01 ; $D1759B
    db $1F,$16,$FD,$FB,$02,$8F,$08,$D8,$1F,$B0,$DD,$18,$74,$7F,$10,$3F ; $D175AB
    db $03,$15,$B8,$F6,$FF,$04,$7E,$31,$04,$FB,$1F,$D5,$8F,$52,$AC,$D0 ; $D175BB
    db $8C,$07,$72,$2E,$1F,$5C,$72,$BB,$B3,$1E,$1F,$F3,$DE,$18,$C5,$20 ; $D175CB
    db $F8,$74,$D1,$A3,$06,$8B,$7D,$88,$60,$D2,$0F,$10,$03,$1F,$3B,$D0 ; $D175DB
    db $4F,$53,$3E,$B0,$1F,$E3,$2F,$2D,$22,$1B,$35,$8B,$6B,$8F,$F0,$20 ; $D175EB
    db $D1,$82,$07,$0A,$DB,$38,$3D,$D0,$35,$E4,$00,$FF,$11,$BB,$64,$1F ; $D175FB
    db $67,$B0,$1F,$83,$6C,$06,$3B,$21,$54,$27,$1F,$E7,$8E,$1F,$6C,$7C ; $D1760B
    db $C7,$1F,$BB,$B3,$79,$19,$2C,$1F,$77,$9E,$1F,$4F,$FF,$27,$1F,$77 ; $D1761B
    db $93,$1F,$F6,$C0,$1F,$82,$05,$33,$04,$38,$3A,$07,$67,$D9,$AF,$65 ; $D1762B
    db $1F,$85,$C3,$FD,$34,$FC,$3F,$FF,$06,$54,$13,$C1,$3B,$43,$1B,$B3 ; $D1763B
    db $1F,$45,$B0,$1F,$45,$80,$5D,$B8,$74,$F9,$CC,$ED,$6E,$E5,$8E,$E5 ; $D1764B
    db $2D,$E5,$CA,$FA,$20,$8E,$89,$FD,$FF,$71,$C0,$1F,$E4,$B6,$6A,$1A ; $D1765B
    db $FC,$1B,$2C,$01,$16,$9F,$03,$DF,$CE,$BF,$4B,$72,$8F,$B3,$1F,$2F ; $D1766B
    db $0E,$F9,$FE,$55,$FF,$D7,$1F,$2E,$C9,$83,$FB,$E2,$D5,$F3,$EE,$FF ; $D1767B
    db $74,$BD,$B8,$1E,$61,$F8,$55,$3E,$55,$07,$84,$1B,$C7,$1F,$B2,$44 ; $D1768B
    db $65,$1F,$E1,$C7,$FD,$03,$56,$FC,$53,$02,$FF,$78,$FB,$8A,$DA,$A1 ; $D1769B
    db $DE,$72,$7F,$50,$B6,$1F,$34,$00,$AC,$7A,$01,$04,$FF,$0E,$D4,$8B ; $D176AB
    db $3B,$51,$A8,$5C,$1F,$23,$62,$3E,$8D,$F9,$F4,$76,$B2,$1E,$1E,$F3 ; $D176BB
    db $DE,$19,$3B,$1F,$C1,$2E,$1F,$39,$11,$CD,$60,$D3,$0F,$11,$F9,$21 ; $D176CB
    db $25,$3F,$D0,$4F,$43,$80,$1F,$27,$2F,$CD,$3A,$C5,$00,$46,$80,$1F ; $D176DB
    db $76,$C1,$1F,$01,$5F,$78,$FD,$D0,$C5,$C5,$80,$DD,$DB,$96,$1F,$00 ; $D176EB
    db $C3,$AE,$C7,$20,$82,$6D,$06,$21,$25,$10,$0E,$97,$1F,$AE,$1C,$3C ; $D176FB
    db $20,$38,$6D,$7D,$21,$F9,$1E,$FF,$98,$07,$89,$06,$C6,$00,$A2,$37 ; $D1770B
    db $00,$5C,$E8,$6B,$14,$FE,$00,$FA,$05,$9F,$FF,$8E,$FE,$C6,$FF,$A2 ; $D1771B
    db $FF,$F0,$FF,$FC,$9B,$47,$AC,$22,$08,$25,$10,$62,$08,$81,$55,$EE ; $D1772B
    db $03,$90,$50,$AA,$00,$91,$00,$28,$FD,$30,$FA,$68,$FD,$D5,$FE,$EB ; $D1773B
    db $F9,$D0,$EA,$A8,$FD,$85,$EE,$58,$08,$AA,$C3,$18,$08,$AA,$FF,$61 ; $D1774B
    db $FA,$06,$7E,$2A,$15,$03,$0E,$55,$5D,$77,$38,$99,$EC,$1A,$7F,$79 ; $D1775B
    db $81,$E0,$00,$57,$01,$A8,$A1,$05,$8A,$AB,$E1,$07,$01,$AF,$33,$F8 ; $D1776B
    db $A1,$4A,$5F,$04,$A9,$A3,$57,$DF,$FA,$E1,$54,$54,$F9,$33,$50,$F6 ; $D1777B
    db $06,$AA,$88,$AD,$25,$FA,$5C,$A5,$A7,$DE,$04,$DF,$DD,$73,$FA,$71 ; $D1778B
    db $C2,$B6,$7D,$75,$02,$E1,$54,$2D,$DF,$2A,$AC,$51,$71,$DC,$76,$74 ; $D1779B
    db $73,$72,$8C,$5F,$40,$40,$50,$14,$0C,$00,$BF,$AA,$15,$58,$40,$33 ; $D177AB
    db $F5,$0E,$5F,$55,$63,$0A,$03,$EB,$BF,$03,$03,$EA,$40,$55,$5F,$0A ; $D177BB
    db $01,$64,$07,$04,$AB,$80,$06,$05,$80,$BB,$05,$04,$A8,$02,$D5,$01 ; $D177CB
    db $C6,$16,$56,$FA,$AD,$77,$57,$02,$B0,$54,$FA,$02,$EB,$57,$55,$2A ; $D177DB
    db $A0,$00,$B4,$41,$B3,$00,$10,$40,$B8,$00,$18,$41,$AB,$00,$1A,$05 ; $D177EB
    db $A0,$FF,$F1,$FB,$B3,$FF,$50,$FF,$B8,$FF,$59,$FF,$AB,$D5,$49,$1D ; $D177FB
    db $CF,$00,$8F,$57,$5F,$2F,$41,$21,$BF,$40,$15,$6B,$1C,$CF,$FF,$8F ; $D1780B
    db $15,$74,$2F,$49,$21,$00,$D8,$1F,$02,$C6,$3B,$00,$A3,$18,$1F,$EC ; $D1781B
    db $10,$63,$FB,$04,$1D,$9F,$FF,$8A,$9F,$1F,$A3,$01,$B0,$1F,$39,$6F ; $D1782B
    db $10,$6E,$03,$00,$93,$44,$EA,$05,$D5,$8C,$FF,$84,$49,$FF,$07,$7E ; $D1783B
    db $FE,$6E,$FF,$D7,$43,$59,$C4,$BD,$0C,$11,$80,$FB,$FF,$8E,$1F,$00 ; $D1784B
    db $44,$B7,$15,$63,$07,$8B,$44,$02,$38,$31,$44,$17,$00,$43,$BB,$07 ; $D1785B
    db $0C,$8B,$02,$BB,$E0,$1F,$01,$65,$A8,$B5,$02,$DA,$A3,$41,$57,$01 ; $D1786B
    db $0F,$13,$79,$C1,$E0,$FF,$40,$EB,$A9,$FF,$12,$BA,$E1,$FC,$40,$E9 ; $D1787B
    db $13,$F0,$C7,$86,$A8,$88,$F8,$24,$F8,$54,$F0,$A2,$DE,$04,$9E,$9C ; $D1788B
    db $35,$1F,$C2,$F8,$57,$25,$17,$74,$07,$9E,$6F,$AC,$51,$75,$99,$32 ; $D1789B
    db $1F,$2E,$6C,$5F,$07,$15,$02,$00,$80,$40,$A4,$1E,$2E,$6C,$5F,$07 ; $D178AB
    db $04,$02,$EE,$40,$7F,$5E,$5B,$EE,$83,$1F,$45,$00,$EA,$83,$07,$28 ; $D178BB
    db $82,$C4,$50,$1C,$1F,$01,$BB,$50,$EA,$07,$44,$3B,$C4,$93,$70,$01 ; $D178CB
    db $B0,$1F,$58,$01,$AB,$18,$00,$1B,$04,$93,$71,$FF,$FC,$0A,$1F,$3F ; $D178DB
    db $EC,$1F,$FF,$7E,$00,$02,$1F,$7E,$3F,$03,$1F,$07,$88,$03,$C6,$00 ; $D178EB
    db $E1,$67,$1F,$FC,$7B,$87,$80,$1F,$9F,$FF,$8B,$FF,$C6,$FF,$7E,$E1 ; $D178FB
    db $03,$1F,$C3,$39,$6E,$00,$57,$A6,$79,$31,$1F,$C0,$00,$18,$59,$6E ; $D1790B
    db $FF,$76,$57,$1F,$31,$D5,$FF,$7F,$C0,$FF,$2C,$1F,$00,$43,$00,$07 ; $D1791B
    db $3B,$8B,$00,$77,$1F,$A8,$34,$FF,$FE,$06,$07,$EC,$1F,$FF,$1D,$E0 ; $D1792B
    db $00,$50,$81,$1F,$51,$02,$E3,$01,$47,$D8,$1F,$3D,$C5,$B8,$76,$E0 ; $D1793B
    db $FF,$51,$FF,$A9,$FF,$52,$FE,$E1,$FC,$41,$F8,$1F,$23,$C2,$88,$1D ; $D1794B
    db $1F,$74,$F4,$8E,$1F,$8F,$8C,$C5,$1F,$F9,$F8,$C6,$77,$24,$07,$74 ; $D1795B
    db $07,$DA,$2B,$AC,$51,$74,$88,$76,$74,$77,$76,$3F,$8E,$5F,$50,$46 ; $D1796B
    db $C1,$1F,$14,$E0,$1A,$3F,$5F,$70,$50,$C1,$15,$FF,$1B,$40,$7F,$1A ; $D1797B
    db $CA,$99,$9B,$F7,$07,$C0,$BB,$54,$01,$28,$82,$71,$84,$78,$57,$C4 ; $D1798B
    db $F7,$07,$BD,$BC,$CC,$1C,$7B,$93,$F1,$30,$00,$B3,$1B,$00,$B8,$00 ; $D1799B
    db $70,$59,$27,$1F,$00,$E8,$3F,$EC,$1F,$54,$FC,$03,$1F,$9F,$FC,$07 ; $D179AB
    db $1F,$9F,$FC,$05,$1F,$80,$B9,$60,$15,$C6,$08,$A0,$17,$C1,$00,$A1 ; $D179BB
    db $02,$C0,$01,$E0,$03,$E0,$01,$95,$FF,$C9,$F9,$B7,$F7,$FE,$A2,$FE ; $D179CB
    db $C1,$3B,$FF,$E3,$1D,$27,$AB,$54,$E2,$31,$54,$E1,$16,$2C,$FB,$19 ; $D179DB
    db $CF,$8B,$DF,$4F,$7E,$AF,$54,$54,$B5,$AF,$03,$FC,$3D,$A9,$1E,$05 ; $D179EB
    db $A4,$2B,$70,$2F,$A4,$8A,$F9,$29,$E0,$84,$DE,$4A,$7D,$29,$FB,$F9 ; $D179FB
    db $23,$A2,$A9,$E7,$D1,$CD,$2F,$06,$DB,$1A,$7F,$21,$83,$EA,$06,$FD ; $D17A0B
    db $5C,$7E,$98,$B1,$63,$B2,$8A,$58,$2A,$01,$FF,$51,$8F,$AF,$DF,$A9 ; $D17A1B
    db $76,$8A,$07,$89,$FC,$75,$A7,$0D,$FE,$80,$AE,$51,$55,$DA,$06,$D9 ; $D17A2B
    db $51,$23,$76,$01,$26,$FA,$31,$FC,$83,$99,$DA,$15,$7D,$E7,$F5,$FE ; $D17A3B
    db $F8,$BB,$BD,$C7,$FA,$E7,$27,$83,$03,$D5,$80,$F5,$25,$48,$AD,$07 ; $D17A4B
    db $F9,$52,$E9,$05,$C2,$9A,$7D,$98,$ED,$D3,$98,$E0,$35,$44,$C0,$EC ; $D17A5B
    db $D3,$EA,$22,$FE,$BD,$E4,$52,$ED,$67,$EC,$3C,$B5,$1F,$B0,$FB,$F3 ; $D17A6B
    db $13,$CA,$35,$55,$A9,$FA,$1B,$0F,$40,$1F,$80,$2F,$40,$89,$21,$C6 ; $D17A7B
    db $07,$7F,$80,$E7,$71,$4F,$DF,$6F,$52,$21,$9F,$E3,$DD,$3F,$86,$DF ; $D17A8B
    db $C3,$0C,$DF,$41,$C0,$DF,$05,$9C,$DF,$F0,$DF,$38,$CC,$FC,$DF,$FF ; $D17A9B
    db $CE,$DF,$C5,$01,$DF,$F1,$FF,$01,$56,$FF,$15,$8E,$DF,$57,$6D,$30 ; $D17AAB
    db $DF,$CF,$DF,$7F,$AF,$56,$38,$FE,$15,$DF,$6D,$63,$A8,$DF,$E0,$2F ; $D17ABB
    db $18,$DF,$B4,$8B,$DF,$E4,$81,$C6,$DF,$79,$38,$DF,$38,$66,$E3,$DF ; $D17ACB
    db $CC,$CE,$DF,$9E,$18,$DF,$93,$FE,$DF,$5D,$3B,$C0,$DF,$73,$A2,$8A ; $D17ADB
    db $78,$6E,$E1,$DF,$9F,$BE,$31,$DF,$34,$87,$47,$DF,$45,$0C,$DF,$15 ; $D17AEB
    db $63,$DF,$77,$63,$BB,$DF,$6F,$44,$0E,$DF,$B7,$E4,$FE,$F7,$EE,$8E ; $D17AFB
    db $DF,$32,$31,$DF,$90,$DF,$58,$EC,$8C,$DF,$12,$ED,$DF,$8F,$60,$68 ; $D17B0B
    db $DF,$93,$88,$60,$B5,$24,$04,$D0,$DF,$30,$F4,$53,$DF,$F8,$6C,$B5 ; $D17B1B
    db $19,$9F,$B0,$BB,$DF,$CE,$C3,$DF,$FB,$0B,$12,$BF,$C2,$0D,$12,$BF ; $D17B2B
    db $D1,$04,$12,$BF,$CD,$FD,$1E,$BF,$D4,$FE,$02,$BF,$33,$17,$69,$BF ; $D17B3B
    db $DF,$C6,$03,$BF,$69,$E8,$BF,$70,$F0,$BF,$B0,$8F,$C7,$BF,$F5,$91 ; $D17B4B
    db $6E,$9F,$18,$BF,$77,$F3,$BF,$D5,$C8,$C6,$BF,$9F,$0A,$BF,$33,$D7 ; $D17B5B
    db $BA,$BF,$4C,$86,$BF,$37,$E2,$BF,$E8,$19,$19,$51,$DF,$FA,$BF,$77 ; $D17B6B
    db $C3,$BF,$FD,$74,$38,$BF,$FF,$BF,$05,$E1,$BF,$05,$72,$8E,$BF,$73 ; $D17B7B
    db $FE,$D8,$9F,$CC,$15,$F7,$64,$A4,$BF,$EF,$19,$BF,$72,$BF,$C5,$D8 ; $D17B8B
    db $9F,$5C,$A8,$CE,$BF,$02,$38,$BF,$8B,$BF,$92,$67,$99,$BF,$00,$10 ; $D17B9B
    db $BF,$FB,$BF,$63,$13,$BF,$F9,$6D,$1C,$BF,$F0,$FF,$BF,$40,$24,$BF ; $D17BAB
    db $E8,$00,$01,$E0,$01,$FE,$00,$EA,$01,$FD,$C0,$03,$F5,$00,$FA,$01 ; $D17BBB
    db $74,$E8,$0E,$53,$FE,$FF,$EB,$EE,$97,$03,$BF,$74,$F5,$FF,$FB,$FF ; $D17BCB
    db $2B,$C1,$15,$21,$1A,$28,$1D,$30,$8F,$15,$85,$08,$E0,$0C,$D5,$52 ; $D17BDB
    db $DC,$D5,$2A,$AB,$2F,$E5,$33,$A2,$9D,$F8,$89,$AA,$ED,$FF,$D3,$AA ; $D17BEB
    db $AE,$98,$9F,$B4,$F7,$DC,$70,$32,$A1,$08,$0D,$00,$DC,$8A,$CA,$FD ; $D17BFB
    db $6D,$C2,$C1,$56,$BE,$49,$E7,$9F,$C9,$5F,$D0,$F2,$8A,$23,$FD,$35 ; $D17C0B
    db $80,$C6,$F9,$FF,$71,$F9,$00,$74,$00,$C5,$61,$51,$02,$C7,$02,$55 ; $D17C1B
    db $FD,$FE,$AC,$FB,$73,$FC,$DD,$26,$04,$8F,$A8,$AA,$52,$FE,$82,$0E ; $D17C2B
    db $B2,$7B,$CA,$F9,$7E,$06,$3F,$2C,$0E,$A0,$5A,$C0,$C7,$11,$9E,$EC ; $D17C3B
    db $C1,$37,$BD,$C6,$3F,$81,$77,$C8,$BF,$F1,$DF,$A5,$1F,$38,$EF,$61 ; $D17C4B
    db $D8,$06,$A0,$7D,$E3,$D0,$DE,$A1,$9D,$40,$7E,$80,$28,$80,$50,$84 ; $D17C5B
    db $E6,$27,$FD,$5F,$D3,$1F,$AB,$2B,$5D,$7F,$AA,$AB,$A8,$FF,$84,$AF ; $D17C6B
    db $9C,$BF,$E4,$BF,$71,$EB,$5D,$EE,$06,$BF,$00,$BF,$4C,$E5,$BF,$EF ; $D17C7B
    db $E2,$BF,$FA,$0C,$BF,$61,$BF,$4D,$E2,$BF,$D5,$0C,$BF,$03,$BF,$6A ; $D17C8B
    db $63,$EF,$BF,$32,$B2,$18,$BF,$C9,$EA,$BF,$93,$BA,$CE,$BF,$DF,$18 ; $D17C9B
    db $BF,$61,$33,$BF,$49,$44,$C8,$BF,$DA,$31,$BF,$16,$BF,$F7,$9E,$8E ; $D17CAB
    db $BF,$D4,$B6,$31,$BF,$25,$BF,$FB,$E9,$8C,$BF,$EC,$14,$BF,$F9,$E3 ; $D17CBB
    db $BF,$03,$86,$B0,$FC,$EB,$BF,$31,$CD,$23,$BF,$E8,$EE,$C6,$BF,$FC ; $D17CCB
    db $BF,$31,$3E,$8E,$BF,$3B,$29,$9C,$BF,$1E,$BF,$31,$8F,$E9,$BF,$F9 ; $D17CDB
    db $C7,$C7,$BF,$CC,$18,$BF,$E1,$BF,$EB,$70,$E3,$BF,$39,$18,$BF,$CE ; $D17CEB
    db $A0,$BF,$3A,$C0,$91,$BF,$F9,$C3,$BF,$AA,$3B,$18,$BF,$EA,$EF,$BF ; $D17CFB
    db $94,$BF,$CE,$BF,$F4,$AB,$3B,$EF,$9A,$BF,$03,$47,$BF,$F4,$1E,$BF ; $D17D0B
    db $EF,$04,$BF,$63,$70,$BF,$0D,$34,$89,$BF,$09,$0C,$BF,$7B,$EE,$BF ; $D17D1B
    db $36,$48,$F2,$BF,$D7,$62,$FE,$BF,$CE,$A4,$43,$BF,$48,$54,$38,$BF ; $D17D2B
    db $9E,$BF,$D1,$E2,$BF,$F3,$0E,$BF,$B7,$39,$BF,$61,$BF,$D8,$7F,$AC ; $D17D3B
    db $54,$C4,$BF,$F8,$01,$DD,$BF,$9C,$7F,$8C,$BF,$24,$F9,$FF,$BF,$3B ; $D17D4B
    db $3F,$9F,$24,$7F,$6D,$BF,$70,$CF,$BF,$E9,$D6,$CE,$BF,$73,$38,$BF ; $D17D5B
    db $CF,$BF,$EF,$63,$30,$BF,$B0,$28,$CC,$03,$BF,$80,$BF,$E8,$63,$4F ; $D17D6B
    db $BF,$AE,$3F,$6D,$BF,$9B,$BF,$70,$D0,$FF,$77,$01,$7B,$14,$38,$03 ; $D17D7B
    db $18,$45,$0C,$00,$CB,$03,$8E,$87,$00,$82,$15,$75,$FC,$3C,$AC,$3B ; $D17D8B
    db $FF,$4D,$EF,$0C,$0B,$03,$8E,$FF,$A6,$97,$FF,$96,$37,$79,$C1,$2F ; $D17D9B
    db $A5,$3E,$5B,$B0,$0A,$AA,$50,$F7,$00,$15,$6F,$3F,$69,$DF,$86,$BD ; $D17DAB
    db $D0,$5E,$C0,$8A,$CF,$3F,$00,$F7,$FF,$6F,$EA,$02,$AE,$54,$FC,$C0 ; $D17DBB
    db $9D,$7B,$04,$00,$03,$AA,$8B,$98,$C3,$F8,$AF,$F8,$AB,$57,$0E,$53 ; $D17DCB
    db $81,$D0,$03,$BE,$3D,$00,$17,$F8,$AA,$69,$6C,$40,$62,$0E,$66,$31 ; $D17DDB
    db $E3,$F4,$A2,$10,$A1,$56,$79,$00,$43,$B0,$C6,$96,$DF,$9D,$B1,$99 ; $D17DEB
    db $F4,$1C,$10,$5D,$F6,$FE,$79,$FF,$B2,$BE,$60,$00,$D0,$04,$A0,$03 ; $D17DFB
    db $00,$60,$81,$1B,$10,$87,$00,$0F,$3A,$40,$60,$17,$13,$A0,$0E,$FF ; $D17E0B
    db $80,$AF,$81,$FF,$13,$BF,$87,$FF,$4F,$FF,$F4,$2B,$F7,$FC,$AA,$5B ; $D17E1B
    db $FE,$BB,$5F,$F4,$A1,$8E,$FC,$5D,$5B,$55,$FE,$F1,$5F,$BF,$3B,$00 ; $D17E2B
    db $21,$BF,$1C,$01,$8C,$BF,$92,$04,$BF,$28,$63,$EC,$BF,$5D,$FF,$38 ; $D17E3B
    db $BF,$0D,$BF,$96,$E1,$BF,$39,$81,$8E,$BF,$3F,$4A,$31,$BF,$10,$BF ; $D17E4B
    db $04,$7F,$8C,$BF,$9F,$C6,$BF,$5F,$E3,$BF,$BA,$87,$BF,$7F,$FB,$1C ; $D17E5B
    db $BF,$B8,$BF,$48,$05,$BF,$44,$64,$F9,$BF,$BB,$12,$BF,$C0,$18,$BF ; $D17E6B
    db $F9,$BB,$BF,$66,$4E,$C7,$BF,$E2,$E5,$13,$BF,$12,$31,$BF,$99,$BF ; $D17E7B
    db $E5,$1D,$9C,$BF,$B2,$BF,$39,$B3,$BF,$BF,$DD,$B7,$78,$C0,$03,$BF ; $D17E8B
    db $C0,$EF,$E3,$BF,$BF,$12,$BF,$53,$FF,$09,$BF,$F9,$00,$FC,$FF,$1B ; $D17E9B
    db $CF,$06,$BF,$FF,$04,$38,$BF,$01,$BF,$00,$C6,$BF,$D6,$00,$BF,$33 ; $D17EAB
    db $38,$FC,$BF,$19,$86,$BF,$1C,$FF,$BF,$03,$D6,$FF,$B6,$17,$29,$80 ; $D17EBB
    db $01,$BF,$2A,$6E,$30,$4A,$2A,$00,$80,$BF,$27,$66,$1F,$49,$9E,$D6 ; $D17ECB
    db $C0,$BF,$7F,$D5,$4A,$CF,$2A,$E1,$BF,$7E,$D8,$C6,$BF,$A8,$BF,$24 ; $D17EDB
    db $FF,$81,$BF,$32,$81,$7C,$BF,$AB,$09,$BF,$00,$0C,$BF,$7C,$7E,$BF ; $D17EEB
    db $67,$E3,$BF,$A2,$86,$BF,$A0,$02,$BF,$31,$F7,$E0,$BF,$CE,$98,$C6 ; $D17EFB
    db $BF,$5D,$BF,$30,$A2,$FF,$BF,$E7,$0F,$60,$E4,$BB,$DD,$BF,$C9,$41 ; $D17F0B
    db $0F,$00,$CE,$BF,$FE,$77,$03,$CE,$BF,$43,$01,$BF,$0F,$FF,$ED,$00 ; $D17F1B
    db $E2,$05,$9D,$57,$FB,$04,$DF,$FE,$01,$1D,$BF,$ED,$6E,$35,$00,$13 ; $D17F2B
    db $FA,$FE,$FD,$03,$BF,$18,$68,$C7,$4B,$EA,$2E,$1F,$40,$38,$40,$03 ; $D17F3B
    db $C2,$08,$0F,$30,$97,$4D,$6F,$E7,$CE,$B9,$EA,$FF,$EF,$AE,$3D,$9D ; $D17F4B
    db $BD,$07,$30,$F0,$CD,$E8,$00,$52,$84,$00,$03,$00,$AF,$00,$A8,$56 ; $D17F5B
    db $AB,$8C,$3F,$AF,$4B,$FF,$3B,$A8,$FD,$E6,$64,$FA,$56,$16,$75,$54 ; $D17F6B
    db $A5,$CF,$50,$66,$CB,$50,$DE,$31,$3E,$00,$BE,$50,$17,$00,$5B,$C0 ; $D17F7B
    db $97,$60,$4F,$80,$D6,$9F,$7B,$2B,$3E,$00,$1E,$EB,$17,$FF,$CB,$AF ; $D17F8B
    db $77,$7F,$1D,$8F,$BF,$BF,$F7,$5B,$FF,$9D,$03,$01,$BF,$DF,$73,$04 ; $D17F9B
    db $62,$00,$9F,$E6,$01,$0F,$9F,$FF,$05,$3D,$9F,$FB,$01,$1F,$87,$9F ; $D17FAB
    db $87,$0B,$EA,$33,$17,$9F,$86,$86,$9F,$87,$5C,$9F,$31,$8A,$F9,$9F ; $D17FBB
    db $BB,$BB,$8C,$9F,$99,$F9,$9F,$DC,$62,$F8,$9F,$17,$15,$28,$7D,$CE ; $D17FCB
    db $9F,$EF,$18,$3F,$BF,$04,$31,$EC,$F9,$73,$00,$1F,$18,$9F,$11,$10 ; $D17FDB
    db $17,$44,$40,$C6,$9F,$9E,$71,$9F,$32,$AF,$40,$9F,$1F,$63,$9F,$7F ; $D17FEB
    db $6F,$18,$9F,$EB,$FB,$9F,$CF,$EF,$91,$9F,$7F,$E7,$07,$9F,$7F,$9E ; $D17FFB
    db $07,$9F,$F6,$05,$1F,$CF,$9F,$F6,$05,$03,$1F,$17,$70,$8F,$33,$E0 ; $D1800B
    db $B6,$1F,$9F,$38,$87,$18,$9F,$18,$01,$7F,$E8,$B3,$F0,$E0,$FF,$AF ; $D1801B
    db $D8,$7D,$98,$F8,$D8,$9F,$03,$FD,$02,$24,$07,$04,$9F,$98,$41,$02 ; $D1802B
    db $FC,$45,$F8,$3B,$1D,$9F,$A9,$34,$E6,$00,$9F,$38,$8F,$60,$9F,$00 ; $D1803B
    db $CE,$9F,$0F,$6C,$9F,$03,$9F,$6F,$39,$7F,$3E,$3F,$C6,$9F,$FF,$9F ; $D1804B
    db $C1,$03,$C1,$1E,$F0,$03,$E1,$04,$7F,$DE,$FE,$F3,$E0,$05,$7F,$54 ; $D1805B
    db $AB,$00,$FE,$F0,$04,$1F,$AB,$AB,$FE,$F7,$05,$1F,$80,$00,$52,$4E ; $D1806B
    db $43,$02,$00,$00,$07,$C0,$00,$00,$05,$1C,$44,$4D,$FC,$59,$04,$01 ; $D1807B
    db $17,$00,$5C,$00,$06,$00,$08,$00,$8A,$00,$CC,$08,$0E,$11,$50,$19 ; $D1808B
    db $92,$21,$D4,$29,$16,$32,$56,$3A,$98,$42,$DA,$52,$1C,$53,$9E,$5B ; $D1809B
    db $DE,$7B,$0F,$20,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$71,$05 ; $D180AB
    db $2B,$07,$C1,$2D,$09,$00,$0A,$7F,$00,$0B,$00,$0C,$00,$0D,$00,$0E ; $D180BB
    db $00,$57,$10,$4E,$11,$DB,$8A,$87,$C5,$37,$D3,$1F,$F5,$51,$B3,$13 ; $D180CB
    db $98,$F0,$0F,$FF,$00,$78,$07,$72,$09,$64,$09,$66,$09,$62,$0D,$68 ; $D180DB
    db $07,$9F,$12,$27,$E4,$B3,$EB,$4A,$FC,$46,$9E,$2C,$C0,$1F,$B2,$FB ; $D180EB
    db $C2,$1E,$E1,$E7,$18,$13,$FC,$50,$8F,$61,$8F,$71,$8E,$33,$CC,$03 ; $D180FB
    db $B9,$71,$FC,$93,$50,$30,$F0,$9E,$7E,$2A,$FF,$90,$7F,$02,$FE,$82 ; $D1810B
    db $79,$04,$F1,$2F,$00,$0F,$6F,$00,$47,$75,$07,$00,$5F,$EA,$15,$2A ; $D1811B
    db $00,$AA,$AA,$06,$BE,$FF,$01,$FF,$64,$0E,$1B,$FD,$34,$F2,$5D,$28 ; $D1812B
    db $01,$55,$1F,$F8,$38,$00,$FE,$2B,$F3,$5C,$09,$71,$83,$77,$E7,$08 ; $D1813B
    db $B3,$E9,$AC,$18,$75,$C3,$C3,$E9,$CB,$50,$07,$FF,$81,$0F,$F0,$74 ; $D1814B
    db $E7,$1F,$DB,$E7,$6F,$30,$1B,$37,$8B,$37,$84,$27,$92,$DE,$95,$71 ; $D1815B
    db $A1,$37,$6B,$21,$9D,$DA,$98,$3D,$BD,$01,$C7,$F8,$C6,$81,$F1,$0E ; $D1816B
    db $05,$5D,$B8,$39,$C7,$F4,$0F,$A9,$DE,$AE,$DF,$D4,$77,$DB,$CF,$E3 ; $D1817B
    db $E8,$BE,$FE,$53,$F0,$06,$F2,$06,$F6,$16,$F2,$BC,$03,$37,$00,$17 ; $D1818B
    db $7B,$83,$59,$0E,$01,$0D,$03,$0B,$03,$5A,$C6,$B7,$86,$F8,$9C,$23 ; $D1819B
    db $41,$7F,$82,$0F,$D1,$9F,$C0,$DF,$E0,$AA,$18,$81,$C0,$00,$01,$80 ; $D181AB
    db $00,$BA,$6B,$F0,$00,$E0,$00,$60,$80,$E1,$00,$43,$C2,$2D,$30,$25 ; $D181BB
    db $E3,$D1,$6A,$DF,$97,$C9,$D0,$35,$75,$D0,$F9,$C3,$3C,$3F,$C0,$E1 ; $D181CB
    db $A6,$09,$F7,$10,$EF,$C6,$39,$0B,$F0,$17,$E0,$01,$09,$CC,$01,$56 ; $D181DB
    db $63,$CB,$52,$E0,$D3,$EF,$D6,$D4,$C7,$D7,$66,$0E,$F0,$B5,$01,$7C ; $D181EB
    db $80,$9C,$E0,$1C,$E0,$18,$C0,$01,$78,$80,$91,$D1,$6B,$F8,$D7,$85 ; $D181FB
    db $FF,$FF,$FB,$D2,$F7,$26,$9A,$4F,$4B,$52,$93,$EE,$1D,$DB,$04,$83 ; $D1820B
    db $5D,$79,$04,$CD,$30,$0C,$63,$54,$FF,$03,$30,$FF,$00,$D0,$FF,$68 ; $D1821B
    db $FF,$94,$FF,$08,$BF,$29,$60,$3F,$1E,$34,$00,$3F,$89,$1D,$00,$7F ; $D1822B
    db $E3,$4A,$EC,$46,$9E,$2E,$C6,$08,$1C,$B0,$F9,$C1,$D7,$7F,$0F,$03 ; $D1823B
    db $FC,$60,$9F,$70,$8F,$71,$8F,$30,$CF,$01,$FE,$3C,$D7,$7F,$08,$C1 ; $D1824B
    db $1C,$A7,$C8,$13,$E9,$4C,$F8,$A5,$93,$F0,$C0,$D7,$7F,$08,$1C,$E3 ; $D1825B
    db $CF,$30,$E7,$1F,$7B,$87,$5F,$E0,$AF,$70,$D7,$7F,$08,$15,$71,$81 ; $D1826B
    db $6B,$A3,$3F,$6D,$37,$8B,$C0,$1C,$1B,$C0,$7F,$71,$8E,$E3,$1C,$CF ; $D1827B
    db $18,$F0,$BC,$C3,$F9,$F5,$0E,$B8,$46,$C5,$EB,$8B,$D0,$DB,$FF,$B3 ; $D1828B
    db $F8,$50,$FF,$0A,$F9,$7F,$07,$DB,$37,$4B,$37,$37,$1C,$79,$00,$03 ; $D1829B
    db $8D,$7F,$70,$59,$BD,$BD,$00,$BA,$E6,$81,$3F,$02,$EF,$B1,$3F,$8D ; $D182AB
    db $7F,$19,$B3,$DF,$C7,$F7,$10,$3F,$03,$02,$00,$7F,$91,$AA,$DF,$67 ; $D182BB
    db $D9,$92,$C1,$12,$D5,$30,$79,$C6,$7F,$89,$77,$A6,$03,$12,$ED,$C7 ; $D182CB
    db $38,$0F,$F0,$F0,$18,$7F,$D1,$F1,$98,$7E,$D7,$04,$7F,$1F,$1E,$E0 ; $D182DB
    db $E0,$49,$8F,$7F,$27,$65,$02,$D1,$81,$8F,$7F,$67,$98,$02,$CF,$81 ; $D182EB
    db $92,$07,$C7,$7F,$2E,$01,$E0,$06,$7F,$F9,$C1,$2A,$01,$FC,$04,$7F ; $D182FB
    db $01,$7E,$FE,$08,$7F,$0C,$A7,$6F,$CB,$78,$E9,$44,$2F,$D3,$23,$B8 ; $D1830B
    db $C9,$1C,$E8,$C5,$F3,$07,$FF,$E0,$1F,$78,$87,$3F,$C0,$D0,$2F,$C7 ; $D1831B
    db $3F,$6B,$97,$7F,$80,$84,$27,$C8,$EF,$BA,$3E,$95,$71,$43,$8F,$AF ; $D1832B
    db $37,$6A,$26,$8D,$C7,$C7,$F8,$0F,$F0,$3E,$C1,$F1,$0E,$07,$F8,$CF ; $D1833B
    db $F0,$BE,$C1,$FC,$03,$A0,$98,$FB,$C0,$C5,$6B,$8B,$D0,$5B,$FF,$33 ; $D1834B
    db $50,$FF,$16,$07,$F2,$DF,$60,$AB,$77,$E0,$02,$83,$0E,$01,$0B,$20 ; $D1835B
    db $23,$BC,$1B,$0D,$83,$BB,$E6,$91,$FB,$81,$5B,$9E,$F8,$07,$B5,$CE ; $D1836B
    db $6D,$83,$A5,$00,$AE,$7F,$11,$3D,$FB,$F0,$FC,$91,$AA,$5F,$67,$D9 ; $D1837B
    db $12,$C1,$D5,$B6,$7F,$A1,$57,$96,$81,$3F,$47,$B8,$18,$01,$7F,$B0 ; $D1838B
    db $F9,$51,$71,$E0,$DF,$F8,$02,$7F,$8F,$70,$1B,$1E,$E0,$60,$B5,$F0 ; $D1839B
    db $21,$7F,$CF,$3F,$95,$B8,$79,$7F,$C8,$3F,$81,$7F,$C1,$3C,$82,$78 ; $D183AB
    db $CA,$3A,$DC,$01,$1F,$03,$C7,$BF,$05,$61,$43,$55,$55,$5F,$D0,$B2 ; $D183BB
    db $32,$C0,$0E,$FE,$1A,$F9,$7D,$F8,$14,$05,$0A,$AA,$1D,$74,$FC,$74 ; $D183CB
    db $C5,$DC,$76,$B8,$00,$70,$FC,$40,$C1,$D6,$32,$B5,$9C,$C0,$3F,$EA ; $D183DB
    db $6A,$A2,$60,$56,$B1,$0A,$F9,$3F,$F3,$63,$E0,$21,$15,$00,$1F,$ED ; $D183EB
    db $5D,$AE,$23,$3A,$03,$85,$FD,$01,$7A,$FC,$70,$F0,$A2,$A0,$F5,$0D ; $D183FB
    db $B2,$F3,$52,$FE,$0B,$36,$81,$19,$00,$5F,$00,$FD,$02,$F3,$0C,$FE ; $D1840B
    db $01,$32,$71,$74,$5F,$A9,$E1,$F8,$03,$F9,$03,$FB,$0B,$79,$D4,$70 ; $D1841B
    db $A5,$A2,$8B,$51,$B9,$97,$01,$06,$3E,$01,$87,$00,$8D,$03,$5D,$03 ; $D1842B
    db $CE,$11,$20,$3F,$C1,$07,$68,$4F,$60,$6F,$70,$4F,$18,$0F,$C0,$36 ; $D1843B
    db $E0,$36,$B3,$F8,$77,$F7,$62,$C0,$03,$D0,$E0,$FB,$D9,$E0,$92,$0F ; $D1844B
    db $37,$87,$CD,$F6,$34,$0E,$A4,$5E,$1C,$B6,$28,$5A,$18,$EE,$7D,$03 ; $D1845B
    db $B5,$4B,$15,$0B,$E5,$1B,$C5,$3B,$95,$6B,$29,$F7,$09,$F7,$3D,$F2 ; $D1846B
    db $E4,$E9,$EE,$38,$37,$35,$31,$3A,$38,$3D,$36,$3C,$2B,$3C,$DF,$E0 ; $D1847B
    db $CD,$F2,$CF,$F0,$C6,$F8,$C3,$FC,$C1,$FE,$C0,$FF,$DA,$6A,$E3,$FF ; $D1848B
    db $FF,$FD,$69,$FB,$93,$CD,$27,$A5,$29,$49,$79,$69,$EF,$DF,$00,$D7 ; $D1849B
    db $AB,$B8,$6B,$06,$00,$3C,$02,$66,$18,$F0,$00,$90,$00,$0D,$14,$1F ; $D184AB
    db $87,$E8,$FF,$34,$FF,$4A,$7F,$84,$DF,$30,$9F,$69,$29,$6A,$0B,$22 ; $D184BB
    db $00,$80,$AB,$BD,$00,$A4,$56,$80,$40,$80,$E0,$C8,$5F,$C0,$6D,$DD ; $D184CB
    db $53,$53,$57,$02,$57,$AA,$10,$FD,$45,$7E,$27,$1F,$C0,$3F,$3D,$02 ; $D184DB
    db $AE,$00,$4E,$E7,$E1,$5C,$7C,$FA,$83,$09,$D7,$A2,$33,$59,$97,$95 ; $D184EB
    db $C9,$60,$11,$EA,$23,$2C,$87,$48,$CF,$6E,$80,$3C,$C0,$EE,$00,$3E ; $D184FB
    db $03,$7B,$FC,$00,$B8,$40,$4B,$C3,$00,$7F,$80,$7F,$C3,$3E,$86,$7D ; $D1850B
    db $C9,$16,$3B,$DC,$3B,$CA,$7F,$01,$C9,$81,$07,$E0,$7F,$8C,$8F,$65 ; $D1851B
    db $F9,$02,$36,$38,$34,$38,$08,$F0,$59,$7F,$70,$C2,$3F,$3F,$C0,$20 ; $D1852B
    db $29,$4F,$CF,$FC,$06,$7F,$30,$FD,$07,$7F,$CF,$DE,$05,$DC,$7F,$59 ; $D1853B
    db $FC,$0F,$7F,$8B,$07,$F9,$54,$70,$65,$62,$E7,$02,$7F,$07,$67,$7F ; $D1854B
    db $9D,$E3,$19,$7F,$F2,$EF,$F3,$06,$7F,$1D,$F0,$2C,$7F,$F9,$8B,$C5 ; $D1855B
    db $03,$1F,$BD,$25,$67,$26,$64,$95,$D6,$80,$7F,$3E,$00,$7E,$00,$E6 ; $D1856B
    db $18,$3B,$E5,$1A,$4F,$6E,$00,$7F,$C4,$1F,$30,$DF,$29,$C9,$FF,$7E ; $D1857B
    db $1F,$02,$7F,$CE,$01,$F6,$6F,$03,$3D,$06,$DB,$7F,$3D,$F1,$06,$7F ; $D1858B
    db $F9,$F7,$F8,$06,$7F,$0E,$00,$FD,$06,$7F,$E0,$00,$52,$4E,$43,$02 ; $D1859B
    db $00,$00,$2A,$5E,$00,$00,$0D,$D8,$51,$30,$95,$06,$02,$01,$0B,$E0 ; $D185AB
    db $01,$AE,$06,$00,$08,$00,$8A,$00,$CC,$08,$0E,$11,$50,$19,$92,$21 ; $D185BB
    db $D4,$29,$16,$32,$56,$3A,$98,$42,$DA,$52,$1C,$53,$9E,$5B,$DE,$7B ; $D185CB
    db $1E,$00,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$33,$05,$00,$2B ; $D185DB
    db $07,$82,$2D,$09,$00,$0A,$E5,$00,$0B,$00,$0C,$00,$0D,$00,$0E,$00 ; $D185EB
    db $0F,$00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$C7,$29,$15,$2E,$29 ; $D185FB
    db $90,$16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$1B,$00,$C0,$3F,$EA ; $D1860B
    db $6A,$A2,$60,$56,$B1,$0A,$F9,$FD,$FC,$81,$80,$A3,$9F,$21,$71,$1F ; $D1861B
    db $33,$07,$C7,$4F,$7F,$05,$01,$70,$F0,$A2,$C3,$A0,$F5,$0D,$B2,$F3 ; $D1862B
    db $52,$FE,$55,$AC,$6F,$18,$7F,$80,$19,$5F,$00,$FD,$02,$F3,$03,$0C ; $D1863B
    db $FE,$01,$FC,$03,$F9,$00,$24,$FF,$F3,$0F,$6E,$16,$F0,$0C,$80,$03 ; $D1864B
    db $6A,$16,$B2,$10,$0E,$78,$06,$8B,$4D,$03,$03,$00,$01,$EA,$E0,$E5 ; $D1865B
    db $AC,$C6,$59,$38,$3D,$01,$00,$2F,$28,$39,$BC,$A5,$A8,$1B,$04,$C3 ; $D1866B
    db $5D,$8F,$00,$CF,$83,$01,$DF,$00,$4F,$8E,$03,$01,$79,$93,$14,$00 ; $D1867B
    db $AA,$70,$7F,$D4,$3E,$6B,$1E,$36,$0F,$1E,$07,$0A,$06,$01,$84,$94 ; $D1868B
    db $C9,$57,$01,$AE,$39,$18,$52,$CE,$AA,$66,$D5,$33,$EA,$19,$F4,$0C ; $D1869B
    db $7E,$06,$8B,$7F,$07,$09,$3E,$01,$1E,$01,$24,$BD,$1F,$B9,$E3,$FE ; $D186AB
    db $00,$F4,$01,$78,$02,$C7,$C7,$AF,$68,$69,$17,$27,$14,$92,$82,$04 ; $D186BB
    db $FB,$09,$FE,$02,$FD,$C6,$39,$BD,$DD,$22,$17,$C7,$7B,$04,$0C,$30 ; $D186CB
    db $0E,$58,$06,$39,$07,$19,$07,$2C,$03,$0C,$03,$60,$03,$F5,$01,$57 ; $D186DB
    db $97,$00,$18,$32,$3C,$25,$32,$A4,$BC,$31,$3F,$60,$7F,$B0,$BF,$68 ; $D186EB
    db $FF,$70,$FF,$00,$B9,$43,$00,$C0,$00,$80,$00,$40,$F4,$17,$B9,$DE ; $D186FB
    db $00,$17,$E0,$BD,$C8,$34,$0E,$A4,$5E,$1C,$B6,$28,$5A,$18,$EE,$20 ; $D1870B
    db $DE,$DE,$20,$68,$4C,$E5,$1B,$C5,$3B,$95,$6B,$29,$F7,$09,$F7,$91 ; $D1871B
    db $6F,$21,$DF,$4D,$B3,$37,$35,$31,$3A,$38,$3D,$36,$3C,$2B,$3C,$33 ; $D1872B
    db $3C,$0F,$30,$0B,$18,$C6,$F8,$C3,$FC,$C1,$FE,$C0,$FF,$01,$D8,$BA ; $D1873B
    db $71,$E7,$E2,$8B,$06,$02,$51,$55,$AE,$BC,$52,$C3,$10,$F0,$FF,$3F ; $D1874B
    db $72,$79,$8C,$70,$05,$F8,$56,$A8,$BF,$40,$D3,$2C,$EF,$A5,$87,$74 ; $D1875B
    db $00,$AB,$E8,$B0,$A0,$45,$55,$3A,$1A,$21,$E0,$04,$02,$FE,$FE,$47 ; $D1876B
    db $8F,$18,$07,$50,$0F,$B5,$0A,$FA,$05,$E1,$1E,$FF,$E5,$9A,$CB,$F0 ; $D1877B
    db $00,$C2,$C2,$BF,$7F,$4F,$1F,$A0,$DE,$D1,$4C,$DA,$E7,$7D,$00,$82 ; $D1878B
    db $80,$3D,$00,$3A,$17,$BF,$33,$01,$03,$FD,$82,$09,$7F,$00,$BD,$E3 ; $D1879B
    db $BD,$FD,$FE,$FC,$FF,$80,$BE,$40,$1F,$23,$F4,$52,$8A,$A4,$86,$42 ; $D187AB
    db $C8,$15,$03,$17,$7E,$80,$DB,$00,$F7,$85,$07,$DB,$88,$C7,$AD,$0F ; $D187BB
    db $41,$8E,$84,$B2,$BB,$60,$4A,$4E,$D1,$A6,$FC,$17,$99,$67,$06,$B5 ; $D187CB
    db $61,$9F,$D1,$0F,$79,$2E,$B1,$00,$99,$78,$00,$98,$60,$C3,$82,$C4 ; $D187DB
    db $D4,$C0,$BB,$10,$26,$EE,$03,$29,$39,$C5,$32,$1B,$F4,$CE,$F1,$CE ; $D187EB
    db $F9,$C1,$FC,$C5,$F8,$79,$C6,$D1,$4B,$71,$0C,$03,$80,$FF,$AA,$D8 ; $D187FB
    db $B0,$40,$27,$60,$A9,$98,$33,$F0,$1F,$E0,$E0,$5A,$00,$38,$07,$C0 ; $D1880B
    db $04,$E0,$1F,$78,$07,$0F,$96,$20,$2E,$FF,$1A,$18,$1D,$05,$03,$F4 ; $D1881B
    db $11,$CA,$04,$E6,$07,$FC,$03,$17,$36,$00,$1E,$60,$E0,$1F,$19,$E6 ; $D1882B
    db $0F,$F0,$73,$F8,$1C,$01,$23,$41,$C0,$9A,$7A,$32,$0F,$F9,$02,$4F ; $D1883B
    db $3F,$D3,$03,$E0,$04,$00,$C1,$01,$AC,$AF,$3C,$A6,$F8,$02,$0F,$FE ; $D1884B
    db $3C,$00,$50,$05,$1F,$53,$B8,$D0,$53,$57,$02,$57,$AA,$10,$FD,$45 ; $D1885B
    db $7E,$D5,$18,$F5,$46,$ED,$91,$AE,$DF,$FD,$02,$32,$7C,$83,$8D,$07 ; $D1886B
    db $E5,$F8,$61,$FE,$95,$C9,$60,$11,$EA,$23,$2C,$87,$48,$CF,$BE,$7F ; $D1887B
    db $CE,$0F,$C2,$BB,$3E,$C0,$41,$FC,$00,$B8,$40,$0C,$70,$80,$40,$80 ; $D1888B
    db $03,$7C,$2E,$80,$DC,$3D,$DE,$4F,$1D,$38,$6D,$98,$CD,$23,$CF,$08 ; $D1889B
    db $C5,$3F,$D3,$40,$01,$BF,$88,$19,$5E,$80,$67,$23,$03,$EC,$00,$03 ; $D188AB
    db $15,$F2,$0B,$CC,$21,$FE,$1C,$A3,$FC,$51,$03,$01,$56,$F8,$A2,$FC ; $D188BB
    db $08,$00,$30,$FA,$06,$FF,$E3,$CF,$61,$7E,$33,$BC,$E6,$B8,$7C,$70 ; $D188CB
    db $E8,$B0,$50,$60,$A0,$C0,$00,$D0,$59,$C0,$E8,$5B,$54,$C0,$26,$63 ; $D188DB
    db $00,$05,$F5,$12,$00,$CB,$CF,$80,$97,$5C,$EB,$16,$D7,$98,$3E,$08 ; $D188EB
    db $9D,$C1,$A6,$A7,$DF,$7E,$58,$E7,$24,$DB,$00,$01,$9A,$67,$84,$7F ; $D188FB
    db $41,$3E,$67,$62,$18,$8D,$93,$DA,$E3,$E9,$F2,$D7,$64,$2F,$48,$DF ; $D1890B
    db $90,$3F,$88,$75,$02,$E3,$94,$5C,$A0,$9C,$B3,$78,$B9,$71,$E0,$59 ; $D1891B
    db $88,$D5,$29,$17,$F7,$F3,$59,$29,$39,$CF,$9B,$41,$79,$87,$FF,$02 ; $D1892B
    db $FF,$07,$FF,$A2,$3F,$0C,$00,$E6,$00,$E4,$00,$86,$B0,$5D,$23,$C6 ; $D1893B
    db $F8,$AA,$60,$F4,$03,$8C,$F0,$DC,$E0,$07,$98,$E0,$30,$C0,$60,$87 ; $D1894B
    db $09,$8C,$40,$80,$80,$CF,$1E,$07,$BE,$0F,$00,$24,$A3,$7F,$6E,$18 ; $D1895B
    db $7E,$EA,$03,$7F,$FD,$07,$03,$F8,$07,$04,$FB,$D4,$18,$7F,$E4,$AC ; $D1896B
    db $09,$E9,$EC,$3D,$3C,$D4,$7F,$3C,$2D,$65,$A8,$5B,$9F,$56,$7D,$2A ; $D1897B
    db $7F,$CF,$E3,$4B,$01,$E6,$17,$A0,$E3,$7A,$FF,$A1,$7F,$DA,$3E,$6F ; $D1898B
    db $BE,$0B,$7E,$06,$3F,$0E,$17,$0A,$06,$29,$D2,$F7,$02,$01,$D6,$18 ; $D1899B
    db $7F,$E5,$F4,$01,$FC,$06,$77,$03,$EB,$EC,$AD,$57,$73,$00,$32,$02 ; $D189AB
    db $9E,$84,$09,$FE,$06,$F9,$A2,$01,$B8,$7D,$06,$FB,$04,$D6,$DF,$A8 ; $D189BB
    db $7F,$2D,$03,$0D,$EA,$9E,$7F,$02,$01,$08,$8F,$00,$B6,$B8,$2D,$32 ; $D189CB
    db $A2,$B4,$3D,$3A,$1D,$34,$3C,$61,$55,$81,$E0,$54,$7F,$4F,$00,$1F ; $D189DB
    db $C7,$00,$C3,$1F,$57,$81,$01,$BE,$02,$8A,$18,$A0,$7F,$5E,$52,$E0 ; $D189EB
    db $F8,$CC,$B5,$40,$7F,$89,$77,$11,$EF,$61,$9F,$3E,$DD,$23,$07,$AF ; $D189FB
    db $7F,$1A,$06,$A8,$7F,$DA,$E5,$CE,$01,$8B,$06,$04,$AF,$BE,$50,$C2 ; $D18A0B
    db $2A,$80,$7D,$8B,$F6,$8C,$70,$07,$F8,$BF,$12,$40,$D0,$2F,$A8,$7D ; $D18A1B
    db $0E,$01,$B8,$02,$E8,$B0,$B0,$7A,$3A,$A1,$75,$7D,$22,$68,$77,$BF ; $D18A2B
    db $7F,$02,$50,$7D,$78,$80,$1F,$E0,$0F,$20,$3F,$F2,$02,$02,$AC,$83 ; $D18A3B
    db $43,$73,$FD,$EB,$03,$83,$13,$F3,$F5,$04,$83,$89,$F3,$FA,$04,$DC ; $D18A4B
    db $83,$F1,$CB,$08,$25,$8F,$C1,$96,$9E,$24,$3B,$60,$EA,$EE,$D1,$D6 ; $D18A5B
    db $E4,$0F,$01,$FF,$21,$DF,$F1,$0F,$CD,$03,$7B,$31,$00,$72,$58,$20 ; $D18A6B
    db $88,$70,$C4,$84,$C0,$DB,$C0,$B6,$3E,$13,$ED,$01,$28,$3B,$C1,$34 ; $D18A7B
    db $1F,$F4,$95,$47,$7D,$D8,$E0,$F2,$67,$43,$0C,$5C,$F3,$BF,$C0,$C1 ; $D18A8B
    db $01,$8F,$F0,$AD,$DA,$6A,$CB,$83,$7D,$15,$02,$4C,$83,$FE,$01,$01 ; $D18A9B
    db $F8,$3E,$07,$DA,$01,$B2,$83,$7D,$1F,$02,$62,$83,$FF,$33,$04,$58 ; $D18AAB
    db $83,$7D,$97,$04,$62,$83,$FF,$33,$04,$58,$83,$BF,$33,$D7,$04,$83 ; $D18ABB
    db $EA,$05,$7F,$E6,$3E,$CD,$81,$06,$A7,$7F,$59,$E6,$D4,$19,$7F,$9E ; $D18ACB
    db $2F,$09,$7D,$98,$CD,$18,$54,$7F,$53,$E0,$68,$85,$3B,$AD,$7D,$AA ; $D18ADB
    db $7F,$7E,$FA,$19,$AE,$7F,$A6,$35,$BF,$65,$7F,$32,$CF,$64,$7E,$30 ; $D18AEB
    db $BE,$E0,$BC,$70,$78,$E0,$B0,$40,$5F,$6F,$02,$AF,$83,$D5,$18,$7F ; $D18AFB
    db $D7,$71,$9C,$AB,$56,$D7,$98,$3F,$08,$9E,$C0,$BD,$A1,$C6,$67,$DF ; $D18B0B
    db $5E,$64,$9D,$41,$7D,$40,$3F,$61,$1E,$A7,$F5,$1B,$7F,$5C,$57,$AA ; $D18B1B
    db $77,$D9,$BD,$DE,$FA,$75,$19,$C3,$9B,$45,$7D,$83,$FB,$07,$FF,$AC ; $D18B2B
    db $00,$66,$00,$25,$AE,$83,$82,$A1,$CF,$00,$F5,$05,$7F,$7D,$B0,$0B ; $D18B3B
    db $62,$7F,$FF,$33,$04,$57,$83,$80,$D7,$53,$7F,$E8,$0D,$FF,$01,$0E ; $D18B4B
    db $6B,$13,$F0,$08,$68,$10,$00,$03,$B0,$0A,$7A,$02,$55,$00,$32,$81 ; $D18B5B
    db $38,$01,$05,$03,$DF,$B9,$66,$CF,$87,$A6,$F9,$F8,$E0,$D1,$C0,$D1 ; $D18B6B
    db $B2,$A1,$E7,$F0,$94,$A0,$28,$10,$69,$10,$37,$61,$20,$01,$88,$27 ; $D18B7B
    db $7D,$7F,$19,$0B,$FF,$A8,$84,$7F,$D2,$3F,$6C,$1E,$33,$0E,$1E,$07 ; $D18B8B
    db $0E,$07,$02,$52,$01,$00,$FA,$06,$7E,$01,$1E,$80,$FF,$D5,$D5,$DB ; $D18B9B
    db $20,$02,$4A,$2E,$2B,$01,$B5,$91,$54,$5C,$FF,$A2,$F5,$0A,$B9,$46 ; $D18BAB
    db $FB,$04,$F2,$0C,$76,$08,$30,$08,$58,$00,$3E,$06,$1C,$04,$29,$05 ; $D18BBB
    db $95,$5F,$03,$22,$B7,$E9,$3D,$02,$80,$3F,$CB,$F3,$96,$CB,$97,$F3 ; $D18BCB
    db $1D,$C2,$F9,$85,$2E,$F3,$A0,$A0,$FF,$3C,$00,$75,$3C,$8F,$57,$07 ; $D18BDB
    db $19,$79,$B7,$01,$00,$03,$EF,$16,$2A,$3E,$A0,$FF,$BE,$BC,$00,$9D ; $D18BEB
    db $AE,$28,$90,$2F,$6F,$EA,$F6,$B5,$10,$FF,$01,$75,$D0,$6D,$7F,$40 ; $D18BFB
    db $FF,$D1,$31,$04,$05,$03,$FD,$FC,$15,$1B,$A8,$FF,$1C,$F1,$0E,$FF ; $D18C0B
    db $9A,$75,$1C,$07,$71,$CB,$C7,$D3,$04,$01,$14,$7D,$41,$04,$21,$01 ; $D18C1B
    db $17,$F0,$D5,$E5,$F4,$04,$8F,$01,$0F,$00,$FA,$05,$A6,$01,$28,$FF ; $D18C2B
    db $03,$C1,$8E,$04,$B2,$BA,$61,$E8,$02,$FF,$3E,$E1,$1F,$04,$80,$FF ; $D18C3B
    db $C5,$D5,$C1,$BA,$0B,$10,$27,$2E,$C3,$50,$FF,$CF,$0F,$F8,$C1,$FC ; $D18C4B
    db $C4,$01,$A2,$FF,$E1,$1F,$E0,$75,$8D,$54,$B0,$70,$80,$27,$E0,$A4 ; $D18C5B
    db $9C,$54,$F0,$01,$95,$70,$0F,$8A,$91,$7D,$7C,$03,$5B,$52,$84,$FE ; $D18C6B
    db $01,$37,$38,$16,$17,$01,$00,$F4,$11,$2A,$34,$53,$01,$17,$1F,$22 ; $D18C7B
    db $17,$E8,$A4,$7D,$3F,$C0,$57,$52,$EA,$06,$7D,$00,$FA,$07,$EF,$7D ; $D18C8B
    db $00,$06,$AB,$7D,$00,$EB,$07,$7D,$F4,$3A,$2E,$FF,$DB,$39,$97,$23 ; $D18C9B
    db $47,$56,$63,$D6,$E3,$88,$73,$42,$B1,$0E,$B5,$D1,$C3,$EF,$61,$80 ; $D18CAB
    db $94,$01,$FF,$45,$70,$FB,$8B,$15,$F2,$00,$8B,$4C,$21,$7E,$23,$7C ; $D18CBB
    db $D1,$FE,$C0,$03,$D6,$F8,$22,$7C,$88,$3A,$00,$B0,$53,$A3,$80,$9C ; $D18CCB
    db $A9,$03,$A2,$03,$3F,$35,$CE,$61,$7E,$32,$E9,$01,$01,$3E,$C0,$00 ; $D18CDB
    db $06,$9F,$01,$1D,$A0,$FF,$96,$57,$03,$D8,$1E,$48,$AD,$A1,$D7,$22 ; $D18CEB
    db $00,$4F,$80,$FF,$A4,$5B,$DA,$27,$75,$C4,$4F,$7F,$37,$08,$03,$A8 ; $D18CFB
    db $7F,$D0,$FF,$88,$3E,$F5,$C2,$08,$B8,$7F,$01,$3C,$FE,$00,$A6,$6D ; $D18D0B
    db $95,$4C,$52,$E6,$51,$BF,$CE,$B4,$01,$00,$B4,$02,$01,$1B,$00,$BB ; $D18D1B
    db $00,$F9,$26,$00,$C0,$5F,$0C,$C6,$F8,$2A,$74,$03,$0C,$7D,$70,$02 ; $D18D2B
    db $5F,$7F,$80,$05,$5F,$65,$06,$AF,$7D,$D1,$56,$FF,$FC,$2C,$80,$7F ; $D18D3B
    db $ED,$E8,$62,$46,$76,$76,$1C,$60,$1E,$01,$17,$14,$1C,$5E,$08,$52 ; $D18D4B
    db $54,$15,$02,$A1,$FF,$E7,$C1,$01,$EF,$00,$A7,$CF,$03,$58,$E6,$7F ; $D18D5B
    db $E7,$FF,$00,$F6,$00,$7D,$01,$C2,$C3,$AF,$6C,$68,$17,$23,$12,$91 ; $D18D6B
    db $81,$04,$FB,$08,$FF,$01,$FE,$C3,$3C,$8C,$BF,$DE,$21,$03,$7D,$7F ; $D18D7B
    db $02,$18,$20,$7F,$39,$3A,$32,$31,$B2,$7F,$BE,$02,$2E,$7F,$C7,$3F ; $D18D8B
    db $BD,$41,$52,$97,$7F,$6C,$D4,$06,$7F,$6D,$93,$FA,$18,$8B,$7F,$42 ; $D18D9B
    db $2A,$E7,$9F,$23,$D2,$24,$35,$9E,$4A,$D4,$9B,$6B,$FD,$0E,$D9,$1C ; $D18DAB
    db $8D,$70,$84,$78,$87,$78,$9C,$63,$DF,$20,$F4,$50,$DF,$E3,$2E,$00 ; $D18DBB
    db $AB,$7D,$A9,$70,$60,$24,$14,$3B,$7B,$2A,$19,$E0,$E5,$FD,$1A,$2F ; $D18DCB
    db $1C,$59,$06,$90,$0F,$F4,$0B,$7B,$84,$FB,$EB,$07,$07,$A9,$C5,$0F ; $D18DDB
    db $CF,$CF,$BA,$7C,$04,$E5,$7F,$30,$FC,$07,$87,$7F,$FD,$FD,$2D,$1E ; $D18DEB
    db $F2,$04,$7F,$02,$FE,$07,$57,$7F,$BB,$4F,$C8,$0D,$8F,$E1,$4E,$84 ; $D18DFB
    db $F2,$BB,$60,$CA,$CE,$D1,$26,$7C,$17,$D9,$27,$81,$7F,$61,$9F,$51 ; $D18E0B
    db $8F,$07,$80,$B1,$00,$F8,$19,$E4,$7F,$0D,$02,$B8,$47,$27,$38,$EA ; $D18E1B
    db $36,$2C,$10,$49,$D9,$2A,$E6,$0C,$FC,$23,$7F,$C0,$00,$CE,$A4,$06 ; $D18E2B
    db $38,$07,$76,$1E,$8B,$82,$00,$E3,$E3,$1F,$C9,$F4,$17,$0E,$F1,$45 ; $D18E3B
    db $CA,$13,$F8,$1F,$FC,$03,$05,$FC,$00,$D3,$D5,$81,$1F,$86,$F8,$1C ; $D18E4B
    db $E0,$E0,$57,$DC,$FE,$78,$4B,$7F,$B4,$B6,$8E,$9F,$3D,$68,$DD,$08 ; $D18E5B
    db $9D,$43,$9F,$10,$8D,$7F,$A3,$44,$05,$77,$08,$1F,$4E,$BE,$87,$FF ; $D18E6B
    db $DC,$5F,$AB,$F9,$62,$7F,$03,$DD,$C1,$86,$C7,$E7,$A6,$F9,$04,$7F ; $D18E7B
    db $0F,$47,$38,$67,$18,$18,$A0,$FF,$8B,$83,$07,$5F,$BF,$4B,$13,$42 ; $D18E8B
    db $50,$F9,$22,$00,$FF,$A7,$BF,$62,$5F,$7C,$00,$E0,$EA,$52,$B7,$04 ; $D18E9B
    db $E7,$5B,$8E,$7B,$46,$A1,$FF,$46,$FC,$7F,$FD,$7F,$F2,$5F,$7F,$30 ; $D18EAB
    db $91,$51,$7F,$46,$2B,$C5,$73,$36,$D5,$2D,$21,$9D,$49,$CE,$36,$F8 ; $D18EBB
    db $0B,$F3,$3C,$CF,$8C,$70,$87,$78,$95,$7A,$84,$7B,$CF,$30,$FF,$E9 ; $D18ECB
    db $03,$55,$F0,$40,$7F,$64,$94,$3B,$BB,$6C,$1B,$C1,$3C,$75,$F2,$0F ; $D18EDB
    db $F8,$2A,$91,$7F,$3B,$C4,$31,$65,$81,$27,$CF,$CF,$B4,$78,$4E,$F5 ; $D18EEB
    db $15,$7F,$1F,$15,$0E,$3C,$53,$52,$7F,$B7,$4C,$E1,$F7,$0A,$22,$1C ; $D18EFB
    db $49,$D8,$2B,$E7,$12,$F6,$1C,$E4,$9C,$5A,$F8,$B5,$CE,$5F,$39,$AA ; $D18F0B
    db $7F,$0E,$AA,$81,$EF,$B8,$F0,$18,$F7,$2E,$3B,$12,$F1,$45,$D2,$5B ; $D18F1B
    db $C4,$17,$FC,$13,$05,$FC,$07,$9B,$F3,$0C,$07,$86,$F8,$9C,$E0,$18 ; $D18F2B
    db $57,$81,$EA,$88,$7F,$C4,$FA,$A9,$80,$7F,$AB,$23,$1F,$BF,$4B,$73 ; $D18F3B
    db $02,$FA,$01,$B8,$7F,$DC,$17,$8C,$FA,$E3,$FB,$7F,$18,$00,$EA,$07 ; $D18F4B
    db $7D,$01,$FA,$06,$FD,$7D,$44,$6D,$7F,$5F,$7D,$10,$A2,$FF,$2A,$7D ; $D18F5B
    db $AA,$7D,$7F,$02,$7D,$7F,$3E,$00,$F4,$39,$5C,$FF,$6A,$2B,$E6,$23 ; $D18F6B
    db $D0,$24,$2B,$81,$50,$DA,$8E,$7B,$F4,$0F,$DF,$31,$8C,$82,$FF,$82 ; $D18F7B
    db $7C,$EF,$D3,$2C,$F3,$0C,$F2,$0F,$F1,$0E,$AB,$E9,$B0,$E0,$84,$94 ; $D18F8B
    db $73,$53,$0A,$21,$30,$E5,$4D,$4A,$5B,$98,$19,$06,$10,$0F,$74,$0B ; $D18F9B
    db $B3,$0C,$E3,$1C,$E7,$18,$4F,$B0,$E7,$00,$F4,$06,$1F,$FD,$41,$C0 ; $D18FAB
    db $06,$53,$7D,$3F,$00,$E8,$06,$FD,$3E,$C1,$01,$06,$AF,$7D,$FE,$39 ; $D18FBB
    db $AE,$7F,$75,$04,$E9,$1A,$09,$19,$6A,$E8,$FD,$30,$CF,$CF,$51,$F9 ; $D18FCB
    db $07,$F8,$FA,$01,$1D,$FD,$30,$40,$FF,$83,$4C,$F1,$27,$44,$CB,$43 ; $D18FDB
    db $FD,$FD,$07,$96,$00,$8F,$F0,$87,$D0,$01,$FD,$02,$7D,$00,$06,$5F ; $D18FEB
    db $7D,$00,$07,$5D,$7D,$00,$F5,$06,$7D,$7D,$00,$07,$7E,$7D,$7A,$8F ; $D18FFB
    db $FF,$06,$AC,$7D,$4F,$CD,$D5,$04,$7D,$00,$F1,$19,$67,$F4,$42,$45 ; $D1900B
    db $FF,$4F,$7D,$34,$CF,$02,$A1,$FF,$40,$4F,$7B,$02,$AC,$7F,$55,$7D ; $D1901B
    db $C0,$EF,$09,$7F,$38,$9F,$07,$58,$AA,$7F,$EA,$E3,$E0,$E5,$AC,$F9 ; $D1902B
    db $EC,$2C,$39,$30,$3B,$3F,$30,$33,$B9,$AB,$B0,$1B,$D6,$E5,$F7,$64 ; $D1903B
    db $DF,$1C,$01,$5F,$03,$7D,$01,$57,$6E,$7F,$78,$FE,$00,$F4,$01,$78 ; $D1904B
    db $02,$C7,$C7,$AF,$68,$69,$17,$27,$14,$92,$82,$04,$FB,$09,$FE,$02 ; $D1905B
    db $FD,$C6,$39,$BD,$DD,$22,$C7,$C7,$7B,$04,$D0,$18,$FF,$34,$04,$28 ; $D1906B
    db $25,$32,$A4,$BC,$B9,$7F,$8A,$BA,$7F,$DF,$AF,$7F,$43,$24,$A3,$FF ; $D1907B
    db $EA,$26,$7F,$4C,$FA,$06,$9F,$7F,$4D,$B3,$18,$55,$7F,$E2,$C3,$8B ; $D1908B
    db $56,$03,$20,$04,$93,$81,$20,$82,$02,$13,$74,$0B,$FF,$10,$8C,$70 ; $D1909B
    db $CF,$04,$F8,$07,$F8,$82,$7C,$83,$7C,$13,$EC,$10,$EF,$EF,$00,$AB ; $D190AB
    db $E8,$B2,$E0,$80,$90,$7A,$5A,$05,$24,$21,$E0,$1D,$E0,$FC,$02,$18 ; $D190BB
    db $07,$10,$0F,$70,$0F,$BA,$05,$E5,$1A,$E1,$1E,$01,$FE,$FF,$00,$BA ; $D190CB
    db $78,$D7,$06,$7F,$7D,$3C,$06,$4F,$7F,$3D,$3E,$06,$A9,$7F,$3F,$C0 ; $D190DB
    db $F5,$06,$7F,$2E,$DB,$88,$3A,$AD,$0F,$41,$8E,$84,$B2,$BB,$60,$4A ; $D190EB
    db $4E,$D1,$A6,$DC,$57,$99,$67,$B5,$E1,$61,$9F,$D1,$0F,$87,$00,$B1 ; $D190FB
    db $00,$78,$00,$D8,$20,$F5,$06,$7F,$7D,$18,$07,$4D,$7F,$0C,$03,$66 ; $D1910B
    db $72,$26,$61,$A9,$98,$43,$C0,$15,$F5,$0A,$FF,$05,$FC,$D4,$CC,$00 ; $D1911B
    db $00,$E0,$1F,$78,$07,$CA,$77,$0A,$AB,$5F,$3C,$85,$1F,$74,$91,$C3 ; $D1912B
    db $CA,$04,$E1,$01,$54,$57,$90,$FF,$D7,$10,$75,$79,$06,$15,$19,$E6 ; $D1913B
    db $0F,$F0,$77,$45,$A8,$3C,$1B,$87,$FA,$78,$AE,$7F,$DC,$3C,$DE,$4F ; $D1914B
    db $1D,$20,$4D,$C8,$E5,$93,$E7,$44,$E1,$1F,$6B,$60,$81,$BF,$93,$D2 ; $D1915B
    db $01,$AB,$7F,$74,$9F,$07,$62,$50,$7F,$9D,$C1,$A6,$A7,$3E,$DF,$7E ; $D1916B
    db $04,$A6,$7F,$67,$18,$8D,$FA,$18,$8B,$7F,$7B,$FB,$6D,$94,$1D,$CF ; $D1917B
    db $9B,$41,$F9,$07,$FF,$02,$FF,$A2,$3F,$34,$CF,$04,$00,$F2,$00,$64 ; $D1918B
    db $00,$06,$AB,$1B,$C7,$03,$C6,$55,$7F,$C6,$3A,$3E,$FF,$4C,$BF,$7F ; $D1919B
    db $3A,$0B,$FF,$06,$9F,$02,$51,$55,$AE,$BC,$52,$C3,$10,$F0,$FF,$3F ; $D191AB
    db $72,$79,$8C,$70,$05,$F8,$56,$A8,$BF,$40,$D3,$2C,$EF,$1D,$BF,$87 ; $D191BB
    db $0B,$FF,$B0,$9F,$A0,$45,$55,$3A,$1A,$21,$E0,$04,$02,$FE,$FE,$47 ; $D191CB
    db $8F,$18,$07,$50,$0F,$B5,$0A,$FA,$05,$E1,$1E,$FF,$48,$E9,$F0,$00 ; $D191DB
    db $C2,$1F,$C2,$BF,$7F,$04,$2F,$01,$3D,$07,$B4,$FF,$BD,$BD,$3E,$FD ; $D191EB
    db $FE,$04,$5F,$01,$42,$07,$6F,$FF,$C1,$06,$FF,$FC,$17,$F1,$06,$FF ; $D191FB
    db $FF,$18,$7F,$2E,$0C,$03,$11,$8D,$F5,$A7,$D3,$B0,$40,$23,$63,$A9 ; $D1920B
    db $98,$33,$F0,$FC,$81,$11,$3F,$E0,$5F,$E3,$1C,$78,$4A,$07,$17,$D6 ; $D1921B
    db $68,$1E,$77,$D2,$E5,$05,$03,$F4,$F1,$CA,$04,$E6,$07,$FC,$03,$17 ; $D1922B
    db $F0,$78,$8C,$53,$1F,$F9,$11,$06,$0F,$F0,$0F,$D6,$0F,$39,$B7,$FF ; $D1923B
    db $EF,$5C,$FF,$8C,$59,$38,$3D,$01,$2F,$04,$28,$39,$BC,$A5,$A8,$5D ; $D1924B
    db $FF,$8F,$D7,$43,$75,$CF,$DF,$FB,$4F,$1B,$7F,$FF,$38,$F3,$FF,$EE ; $D1925B
    db $38,$FF,$3A,$07,$34,$24,$32,$A5,$BD,$F9,$02,$FF,$07,$B9,$42,$F9 ; $D1926B
    db $52,$FF,$F0,$69,$FF,$C8,$7C,$C7,$06,$3E,$FF,$3F,$07,$0F,$FF,$0D ; $D1927B
    db $F5,$06,$87,$FF,$FA,$C0,$47,$FF,$9F,$E0,$B0,$16,$40,$27,$60,$82 ; $D1928B
    db $FD,$05,$FC,$38,$31,$8E,$CA,$01,$03,$D2,$03,$00,$F8,$07,$A1,$FD ; $D1929B
    db $11,$68,$FD,$21,$D0,$1F,$1F,$1D,$01,$94,$3F,$FD,$E0,$79,$C8,$FF ; $D192AB
    db $BD,$FF,$C2,$38,$6D,$98,$CD,$23,$CF,$08,$C5,$3F,$D3,$40,$01,$2E ; $D192BB
    db $FF,$5E,$9D,$C7,$FF,$EC,$00,$FE,$F9,$63,$FF,$F7,$2E,$FF,$01,$F7 ; $D192CB
    db $F3,$D9,$99,$4F,$7B,$81,$57,$FF,$30,$A7,$3F,$03,$0C,$00,$E6,$3E ; $D192DB
    db $00,$84,$0F,$FF,$FF,$AC,$E7,$FF,$D4,$04,$7F,$35,$B8,$3E,$AB,$A4 ; $D192EB
    db $08,$AF,$7F,$00,$81,$B3,$7F,$FC,$0E,$FF,$00,$34,$32,$25,$3D,$A0 ; $D192FB
    db $BF,$B0,$BF,$22,$E0,$FF,$A6,$7D,$AB,$7F,$B7,$74,$C2,$3F,$1D,$40 ; $D1930B
    db $3F,$CF,$FD,$7A,$A9,$7F,$B5,$71,$F6,$06,$1F,$7F,$F1,$0E,$06,$67 ; $D1931B
    db $7F,$D7,$06,$7D,$FC,$0A,$FF,$FA,$38,$8B,$7F,$AA,$59,$25,$8D,$62 ; $D1932B
    db $A9,$98,$32,$F1,$02,$81,$35,$8A,$A8,$97,$67,$1F,$F8,$07,$E1,$55 ; $D1933B
    db $7D,$7F,$4C,$01,$6B,$51,$00,$97,$34,$D1,$CA,$04,$26,$C7,$A0,$61 ; $D1934B
    db $40,$D5,$0A,$F4,$F3,$DE,$CA,$25,$A9,$7D,$FF,$BE,$01,$7C,$CF,$7F ; $D1935B
    db $34,$AF,$7F,$D8,$78,$7F,$F7,$0E,$B3,$59,$59,$8B,$F3,$FD,$00,$01 ; $D1936B
    db $87,$FF,$82,$FF,$74,$4F,$CC,$2B,$00,$A6,$CB,$FD,$59,$5D,$F5,$02 ; $D1937B
    db $7F,$FF,$4E,$3C,$FF,$00,$FE,$25,$00,$01,$01,$01,$01,$01,$01,$02 ; $D1938B
    db $01,$01,$02,$01,$01,$02,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01 ; $D1939B
    db $01,$03,$01,$01,$01,$01,$01,$FE,$30,$00,$02,$01,$01,$02,$01,$01 ; $D193AB
    db $02,$01,$01,$02,$01,$01,$0A,$01,$01,$0A,$01,$01,$0A,$01,$01,$0A ; $D193BB
    db $01,$01,$0A,$01,$01,$0A,$01,$01,$01,$01,$01,$FE,$3A,$00,$01,$01 ; $D193CB
    db $01,$01,$02,$01,$01,$02,$01,$03,$02,$01,$03,$02,$01,$03,$02,$01 ; $D193DB
    db $01,$02,$01,$01,$02,$01,$01,$02,$01,$09,$02,$01,$09,$02,$01,$09 ; $D193EB
    db $02,$01,$09,$02,$01,$09,$02,$01,$01,$02,$01,$01,$02,$01,$01,$02 ; $D193FB
    db $01,$09,$03,$01,$FE,$51,$00,$04,$02,$02,$04,$02,$02,$04,$02,$02 ; $D1940B
    db $05,$02,$01,$05,$02,$01,$05,$01,$01,$05,$01,$01,$05,$01,$01,$04 ; $D1941B
    db $01,$01,$04,$01,$01,$01,$01,$01,$FE,$5E,$00,$01,$01,$01,$03,$01 ; $D1942B
    db $02,$03,$01,$02,$03,$01,$02,$03,$01,$01,$03,$01,$01,$03,$01,$01 ; $D1943B
    db $03,$01,$01,$01,$01,$01,$FE,$74,$00,$04,$01,$01,$04,$01,$01,$04 ; $D1944B
    db $01,$01,$04,$01,$01,$05,$01,$01,$05,$01,$01,$05,$01,$01,$04,$01 ; $D1945B
    db $01,$04,$01,$01,$01,$01,$01,$FE,$80,$00,$03,$01,$01,$03,$01,$01 ; $D1946B
    db $01,$01,$01,$FE,$88,$00,$01,$01,$01,$04,$02,$02,$04,$02,$02,$05 ; $D1947B
    db $02,$02,$05,$02,$02,$05,$03,$01,$05,$03,$01,$04,$03,$01,$04,$03 ; $D1948B
    db $01,$01,$02,$01,$FE,$92,$00,$01,$02,$01,$01,$02,$01,$01,$02,$01 ; $D1949B
    db $02,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$01 ; $D194AB
    db $01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$01,$FE,$9F,$00,$01,$01 ; $D194BB
    db $01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$02,$01,$01 ; $D194CB
    db $02,$01,$01,$02,$01,$01,$02,$01,$01,$01,$01,$01,$FE,$B0,$00,$01 ; $D194DB
    db $01,$01,$07,$01,$01,$07,$01,$01,$07,$01,$01,$07,$01,$01,$03,$01 ; $D194EB
    db $02,$03,$01,$02,$03,$01,$02,$03,$01,$02,$03,$01,$01,$FE,$BF,$00 ; $D194FB
    db $0A,$01,$01,$0A,$01,$01,$0A,$01,$01,$0A,$01,$01,$09,$01,$01,$09 ; $D1950B
    db $01,$01,$09,$01,$01,$09,$01,$01,$09,$01,$01,$03,$01,$01,$03,$01 ; $D1951B
    db $01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$01,$01,$01,$FE,$07,$01 ; $D1952B
    db $08,$01,$01,$08,$01,$01,$08,$01,$01,$08,$01,$01,$09,$01,$01,$09 ; $D1953B
    db $01,$01,$09,$01,$01,$09,$01,$01,$09,$01,$02,$FE,$11,$01,$01,$02 ; $D1954B
    db $01,$01,$02,$01,$01,$02,$01,$02,$03,$01,$02,$03,$01,$02,$03,$01 ; $D1955B
    db $02,$03,$01,$02,$03,$01,$04,$03,$01,$04,$03,$01,$04,$03,$01,$04 ; $D1956B
    db $03,$01,$01,$02,$01,$01,$02,$01,$01,$01,$01,$FE,$25,$01,$02,$01 ; $D1957B
    db $01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$03,$01,$01 ; $D1958B
    db $FE,$2D,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$09,$01,$01,$09 ; $D1959B
    db $01,$01,$09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $D195AB
    db $01,$0A,$01,$01,$0A,$01,$01,$0A,$01,$01,$0A,$01,$01,$01,$01,$01 ; $D195BB
    db $01,$01,$01,$01,$01,$01,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01 ; $D195CB
    db $01,$02,$01,$01,$01,$FE,$68,$01,$01,$02,$01,$01,$02,$01,$01,$02 ; $D195DB
    db $01,$04,$02,$01,$04,$02,$01,$04,$02,$01,$04,$02,$01,$04,$03,$02 ; $D195EB
    db $04,$03,$02,$FE,$74,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$06 ; $D195FB
    db $03,$01,$06,$03,$01,$06,$03,$01,$06,$03,$01,$08,$03,$01,$08,$03 ; $D1960B
    db $01,$FE,$7E,$01,$07,$03,$01,$07,$03,$01,$FE,$86,$01,$01,$03,$02 ; $D1961B
    db $01,$03,$02,$01,$03,$02,$04,$03,$01,$04,$03,$01,$04,$03,$01,$04 ; $D1962B
    db $03,$01,$04,$03,$01,$03,$03,$01,$03,$03,$01,$03,$03,$01,$03,$03 ; $D1963B
    db $01,$03,$03,$01,$07,$03,$01,$07,$03,$01,$07,$03,$01,$07,$03,$01 ; $D1964B
    db $07,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$01 ; $D1965B
    db $03,$01,$07,$03,$01,$07,$03,$01,$07,$03,$01,$07,$03,$01,$07,$03 ; $D1966B
    db $01,$07,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01,$01,$03,$01 ; $D1967B
    db $01,$03,$01,$04,$03,$02,$04,$03,$02,$04,$03,$02,$04,$03,$02,$04 ; $D1968B
    db $03,$02,$04,$03,$01,$04,$03,$01,$04,$03,$01,$04,$03,$01,$04,$03 ; $D1969B
    db $01,$04,$03,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01 ; $D196AB
    db $01,$02,$01,$01,$01,$01,$FF,$6F,$00,$6E,$00,$76,$00,$83,$00,$6E ; $D196BB
    db $00,$6E,$00,$6E,$00,$91,$00,$6E,$00,$A0,$00,$6E,$00,$6E,$00,$6E ; $D196CB
    db $00,$AB,$00,$6E,$00,$BE,$00,$6E,$00,$6E,$00,$6E,$00,$CD,$00,$6E ; $D196DB
    db $00,$DB,$00,$6E,$00,$6E,$00,$6E,$00,$E9,$00,$6E,$00,$F9,$00,$08 ; $D196EB
    db $01,$14,$01,$6E,$00,$6E,$00,$6E,$00,$24,$01,$6E,$00,$35,$01,$6E ; $D196FB
    db $00,$6E,$00,$6E,$00,$44,$01,$6E,$00,$50,$01,$6E,$00,$6E,$00,$6E ; $D1970B
    db $00,$54,$01,$6E,$00,$67,$01,$6E,$00,$6E,$00,$6E,$00,$6E,$00,$6E ; $D1971B
    db $00,$75,$01,$FF,$FF,$00,$64,$65,$73,$69,$67,$6E,$00,$73,$69,$6D ; $D1972B
    db $6F,$6E,$20,$6B,$6E,$69,$67,$68,$74,$00,$65,$72,$69,$63,$20,$6D ; $D1973B
    db $61,$74,$74,$68,$65,$77,$73,$00,$67,$72,$61,$70,$68,$69,$63,$20 ; $D1974B
    db $64,$65,$73,$69,$67,$6E,$00,$64,$61,$6E,$20,$6D,$61,$6C,$6F,$6E ; $D1975B
    db $65,$00,$67,$72,$61,$70,$68,$69,$63,$20,$63,$6F,$6E,$76,$65,$72 ; $D1976B
    db $73,$69,$6F,$6E,$00,$68,$65,$72,$6D,$61,$6E,$20,$73,$65,$72,$61 ; $D1977B
    db $6E,$6E,$6F,$00,$6F,$72,$69,$67,$69,$6E,$61,$6C,$20,$63,$6F,$64 ; $D1978B
    db $65,$00,$73,$74,$65,$76,$65,$20,$63,$61,$72,$67,$69,$6C,$6C,$00 ; $D1979B
    db $63,$6F,$64,$65,$20,$63,$6F,$6E,$76,$65,$72,$73,$69,$6F,$6E,$00 ; $D197AB
    db $72,$6F,$62,$20,$74,$72,$65,$76,$65,$6C,$6C,$79,$61,$6E,$00,$67 ; $D197BB
    db $6F,$72,$64,$6F,$6E,$20,$66,$6F,$6E,$67,$00,$6D,$69,$6B,$65,$20 ; $D197CB
    db $6D,$6F,$6E,$74,$67,$6F,$6D,$65,$72,$79,$00,$67,$61,$6D,$65,$20 ; $D197DB
    db $6D,$75,$73,$69,$63,$20,$26,$20,$73,$66,$78,$00,$72,$69,$63,$68 ; $D197EB
    db $61,$72,$64,$20,$6A,$6F,$73,$65,$70,$68,$00,$74,$69,$74,$6C,$65 ; $D197FB
    db $20,$6D,$75,$73,$69,$63,$00,$6A,$6F,$69,$00,$70,$72,$6F,$6A,$65 ; $D1980B
    db $63,$74,$20,$6D,$61,$6E,$61,$67,$65,$6D,$65,$6E,$74,$00,$67,$72 ; $D1981B
    db $61,$65,$6D,$65,$20,$62,$6F,$78,$61,$6C,$6C,$00,$74,$68,$65,$20 ; $D1982B
    db $63,$68,$61,$6F,$73,$20,$65,$6E,$67,$69,$6E,$65,$00,$43,$20,$74 ; $D1983B
    db $68,$65,$20,$62,$69,$74,$6D,$61,$70,$20,$62,$72,$6F,$74,$68,$65 ; $D1984B
    db $72,$73,$20,$31,$39,$39,$33,$00,$A0,$FF,$FE,$FD,$FC,$FB,$FA,$F9 ; $D1985B
    db $F8,$F7,$F6,$F5,$F4,$F3,$F2,$F1,$F0,$EF,$EE,$ED,$EC,$EB,$EA,$E9 ; $D1986B
    db $E8,$E7,$E6,$E5,$E4,$E3,$E2,$E1,$E0,$50,$00,$50,$00,$A0,$E0,$E1 ; $D1987B
    db $E2,$E3,$E4,$E5,$E6,$E7,$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF,$F0,$F1 ; $D1988B
    db $F2,$F3,$F4,$F5,$F6,$F7,$F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF,$00,$FF ; $D1989B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D198FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1990B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1991B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1992B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1993B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1994B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1995B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1996B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1997B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1998B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1999B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D199FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19A9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19AAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19ABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19ACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19ADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19AEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19AFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19B9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19BFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19C9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19CFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19D9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19DFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19E9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19ECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19EFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19F9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D19FFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1A9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ABFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ACFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AD9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ADFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1AFFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1B9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BCFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BD9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1BFFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1C9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CCFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CD9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1CFFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1D9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DCFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DD9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1DFFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1E9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ECFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1ED9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1EFFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1F9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FCFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FD9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $D1FFEB
    db $FF,$FF,$FF,$FF,$FF                                             ; $D1FFFB
