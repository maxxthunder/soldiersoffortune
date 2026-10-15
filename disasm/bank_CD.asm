; bank $CD  (file offset $0D0000)
org $CD0000

    SEP #$20                ; $CD0000  E2 20        mx
    REP #$10                ; $CD0002  C2 10        mx
    PHB                     ; $CD0004  8B           mX
    PEA $0000               ; $CD0005  F4 00 00     mX
    PLB                     ; $CD0008  AB           mX
    PLB                     ; $CD0009  AB           mX
    PHX                     ; $CD000A  DA           mX
    PHY                     ; $CD000B  5A           mX
    PHP                     ; $CD000C  08           mX
    REP #$30                ; $CD000D  C2 30        mX
    PHA                     ; $CD000F  48           MX
    INC $4A                 ; $CD0010  E6 4A        MX
    SEP #$20                ; $CD0012  E2 20        MX
    LDA $4210               ; $CD0014  AD 10 42     mX
    LDA $57                 ; $CD0017  A5 57        mX
    BEQ L_CD0020            ; $CD0019  F0 05        mX
    JSR L_CD00E9            ; $CD001B  20 E9 00     mX
    STZ $57                 ; $CD001E  64 57        mX
L_CD0020:
    LDA $55                 ; $CD0020  A5 55        mX
    BEQ L_CD0048            ; $CD0022  F0 24        mX
    LDA #$7F                ; $CD0024  A9 7F        mX
    LDX #$9000              ; $CD0026  A2 00 90     mX
    STX $4302               ; $CD0029  8E 02 43     mX
    STA $4304               ; $CD002C  8D 04 43     mX
    LDX #$0000              ; $CD002F  A2 00 00     mX
    STX $2102               ; $CD0032  8E 02 21     mX
    LDX #$0220              ; $CD0035  A2 20 02     mX
    STX $4305               ; $CD0038  8E 05 43     mX
    LDX #$0400              ; $CD003B  A2 00 04     mX
    STX $4300               ; $CD003E  8E 00 43     mX
    LDA #$01                ; $CD0041  A9 01        mX
    STA $420B               ; $CD0043  8D 0B 42     mX
    STZ $55                 ; $CD0046  64 55        mX
L_CD0048:
    LDA $54                 ; $CD0048  A5 54        mX
    BEQ L_CD0092            ; $CD004A  F0 46        mX
    LDA #$7F                ; $CD004C  A9 7F        mX
    LDX #$8000              ; $CD004E  A2 00 80     mX
    STX $4302               ; $CD0051  8E 02 43     mX
    STA $4304               ; $CD0054  8D 04 43     mX
    LDX #$7000              ; $CD0057  A2 00 70     mX
    STX $2116               ; $CD005A  8E 16 21     mX
    LDX #$0800              ; $CD005D  A2 00 08     mX
    STX $4305               ; $CD0060  8E 05 43     mX
    LDX #$1801              ; $CD0063  A2 01 18     mX
    STX $4300               ; $CD0066  8E 00 43     mX
    LDA #$01                ; $CD0069  A9 01        mX
    STA $420B               ; $CD006B  8D 0B 42     mX
    LDA #$7F                ; $CD006E  A9 7F        mX
    LDX #$8800              ; $CD0070  A2 00 88     mX
    STX $4302               ; $CD0073  8E 02 43     mX
    STA $4304               ; $CD0076  8D 04 43     mX
    LDX #$7800              ; $CD0079  A2 00 78     mX
    STX $2116               ; $CD007C  8E 16 21     mX
    LDX #$0800              ; $CD007F  A2 00 08     mX
    STX $4305               ; $CD0082  8E 05 43     mX
    LDX #$1801              ; $CD0085  A2 01 18     mX
    STX $4300               ; $CD0088  8E 00 43     mX
    LDA #$01                ; $CD008B  A9 01        mX
    STA $420B               ; $CD008D  8D 0B 42     mX
    STZ $54                 ; $CD0090  64 54        mX
L_CD0092:
    LDA $56                 ; $CD0092  A5 56        mX
    BEQ L_CD00B9            ; $CD0094  F0 23        mX
    LDA #$7F                ; $CD0096  A9 7F        mX
    LDX #$9360              ; $CD0098  A2 60 93     mX
    STX $4302               ; $CD009B  8E 02 43     mX
    STA $4304               ; $CD009E  8D 04 43     mX
    LDA #$00                ; $CD00A1  A9 00        mX
    STA $2121               ; $CD00A3  8D 21 21     mX
    LDX #$0200              ; $CD00A6  A2 00 02     mX
    STX $4305               ; $CD00A9  8E 05 43     mX
    LDX #$2200              ; $CD00AC  A2 00 22     mX
    STX $4300               ; $CD00AF  8E 00 43     mX
    LDA #$01                ; $CD00B2  A9 01        mX
    STA $420B               ; $CD00B4  8D 0B 42     mX
    STZ $56                 ; $CD00B7  64 56        mX
L_CD00B9:
    LDA $58                 ; $CD00B9  A5 58        mX
    BEQ L_CD00E1            ; $CD00BB  F0 24        mX
    LDA #$7F                ; $CD00BD  A9 7F        mX
    LDX #$959E              ; $CD00BF  A2 9E 95     mX
    STX $4302               ; $CD00C2  8E 02 43     mX
    STA $4304               ; $CD00C5  8D 04 43     mX
    LDX #$6400              ; $CD00C8  A2 00 64     mX
    STX $2116               ; $CD00CB  8E 16 21     mX
    LDX #$0600              ; $CD00CE  A2 00 06     mX
    STX $4305               ; $CD00D1  8E 05 43     mX
    LDX #$1801              ; $CD00D4  A2 01 18     mX
    STX $4300               ; $CD00D7  8E 00 43     mX
    LDA #$01                ; $CD00DA  A9 01        mX
    STA $420B               ; $CD00DC  8D 0B 42     mX
    STZ $58                 ; $CD00DF  64 58        mX
L_CD00E1:
    REP #$20                ; $CD00E1  C2 20        mX
    PLA                     ; $CD00E3  68           MX
    PLP                     ; $CD00E4  28           MX
    PLY                     ; $CD00E5  7A           MX
    PLX                     ; $CD00E6  FA           MX
    PLB                     ; $CD00E7  AB           MX
    RTI                     ; $CD00E8  40           MX
L_CD00E9:
    JSR L_CD00ED            ; $CD00E9  20 ED 00     mX
    RTS                     ; $CD00EC  60           mX
L_CD00ED:
    LDA #$CF                ; $CD00ED  A9 CF        mX
    STA $4304               ; $CD00EF  8D 04 43     mX
    LDA $84                 ; $CD00F2  A5 84        mX
    ASL                     ; $CD00F4  0A           mX
    STA $5D                 ; $CD00F5  85 5D        mX
    ASL                     ; $CD00F7  0A           mX
    ASL                     ; $CD00F8  0A           mX
    CLC                     ; $CD00F9  18           mX
    ADC $5D                 ; $CD00FA  65 5D        mX
    CLC                     ; $CD00FC  18           mX
    ADC #$C3                ; $CD00FD  69 C3        mX
    STA $5D                 ; $CD00FF  85 5D        mX
    LDA #$A8                ; $CD0101  A9 A8        mX
    STA $5C                 ; $CD0103  85 5C        mX
    LDX $5C                 ; $CD0105  A6 5C        mX
    STX $4302               ; $CD0107  8E 02 43     mX
    LDX #$1B00              ; $CD010A  A2 00 1B     mX
    STX $2116               ; $CD010D  8E 16 21     mX
    LDX #$0A00              ; $CD0110  A2 00 0A     mX
    STX $4305               ; $CD0113  8E 05 43     mX
    LDX #$1801              ; $CD0116  A2 01 18     mX
    STX $4300               ; $CD0119  8E 00 43     mX
    LDA #$01                ; $CD011C  A9 01        mX
    STA $420B               ; $CD011E  8D 0B 42     mX
    LDA $84                 ; $CD0121  A5 84        mX
    ASL                     ; $CD0123  0A           mX
    CLC                     ; $CD0124  18           mX
    ADC #$35                ; $CD0125  69 35        mX
    STA $7F9003             ; $CD0127  8F 03 90 7F  mX
    STA $7F9007             ; $CD012B  8F 07 90 7F  mX
    STA $7F900B             ; $CD012F  8F 0B 90 7F  mX
    STA $7F900F             ; $CD0133  8F 0F 90 7F  mX
    STA $7F9013             ; $CD0137  8F 13 90 7F  mX
    STA $7F9017             ; $CD013B  8F 17 90 7F  mX
    STA $7F901B             ; $CD013F  8F 1B 90 7F  mX
    STA $7F901F             ; $CD0143  8F 1F 90 7F  mX
    STA $7F9023             ; $CD0147  8F 23 90 7F  mX
    RTS                     ; $CD014B  60           mX
L_CD014C:
    PHP                     ; $CD014C  08           mX
    PHX                     ; $CD014D  DA           mX
    REP #$20                ; $CD014E  C2 20        mX
L_CD0150:
    LDA $4212               ; $CD0150  AD 12 42     MX
    BIT #$0001              ; $CD0153  89 01 00     MX
    BEQ L_CD0150            ; $CD0156  F0 F8        MX
L_CD0158:
    LDA $4212               ; $CD0158  AD 12 42     MX
    BIT #$0001              ; $CD015B  89 01 00     MX
    BNE L_CD0158            ; $CD015E  D0 F8        MX
    LDA $E8                 ; $CD0160  A5 E8        MX
    AND #$0001              ; $CD0162  29 01 00     MX
    BEQ L_CD0173            ; $CD0165  F0 0C        MX
    LDA $4218               ; $CD0167  AD 18 42     MX
    TAX                     ; $CD016A  AA           MX
    EOR $4C                 ; $CD016B  45 4C        MX
    STX $4C                 ; $CD016D  86 4C        MX
    AND $4C                 ; $CD016F  25 4C        MX
    STA $50                 ; $CD0171  85 50        MX
L_CD0173:
    LDA $E8                 ; $CD0173  A5 E8        MX
    AND #$0002              ; $CD0175  29 02 00     MX
    BEQ L_CD0186            ; $CD0178  F0 0C        MX
    LDA $421A               ; $CD017A  AD 1A 42     MX
    TAX                     ; $CD017D  AA           MX
    EOR $4E                 ; $CD017E  45 4E        MX
    STX $4E                 ; $CD0180  86 4E        MX
    AND $4E                 ; $CD0182  25 4E        MX
    STA $52                 ; $CD0184  85 52        MX
L_CD0186:
    PLX                     ; $CD0186  FA           MX
    PLP                     ; $CD0187  28           MX
    RTS                     ; $CD0188  60           MX
L_CD0189:
    PHP                     ; $CD0189  08           mX
    REP #$20                ; $CD018A  C2 20        mX
    LDA #$0000              ; $CD018C  A9 00 00     MX
    STA $4C                 ; $CD018F  85 4C        MX
    STA $4E                 ; $CD0191  85 4E        MX
    PLP                     ; $CD0193  28           MX
    RTS                     ; $CD0194  60           MX
    db $00,$00,$20,$35,$02,$20,$82,$19,$A9,$80,$8D,$00,$21,$A9,$00,$8D ; $CD0195
    db $00,$42,$85,$0B,$6B                                             ; $CD01A5
L_CD01AA:
    JSR L_CD1945            ; $CD01AA  20 45 19     MX
    LDA #$8D80              ; $CD01AD  A9 80 8D     MX
    BRK #$21                ; $CD01B0  00 21        MX
    LDA #$8D00              ; $CD01B2  A9 00 8D     MX
    BRK #$42                ; $CD01B5  00 42        MX
    STA $0B                 ; $CD01B7  85 0B        MX
    RTL                     ; $CD01B9  6B           MX
L_CD01BA:
    JSR L_CD0235            ; $CD01BA  20 35 02     MX
    JSR L_CD1EED            ; $CD01BD  20 ED 1E     MX
    LDA #$8D80              ; $CD01C0  A9 80 8D     MX
    BRK #$21                ; $CD01C3  00 21        MX
    LDA #$8D00              ; $CD01C5  A9 00 8D     MX
    BRK #$42                ; $CD01C8  00 42        MX
    STA $0B                 ; $CD01CA  85 0B        MX
    RTL                     ; $CD01CC  6B           MX
L_CD01CD:
    JSR L_CD0235            ; $CD01CD  20 35 02     MX
    JSR L_CD0DA6            ; $CD01D0  20 A6 0D     MX
    LDA #$8D80              ; $CD01D3  A9 80 8D     MX
    BRK #$21                ; $CD01D6  00 21        MX
    LDA #$8D00              ; $CD01D8  A9 00 8D     MX
    BRK #$42                ; $CD01DB  00 42        MX
    STA $0B                 ; $CD01DD  85 0B        MX
    RTL                     ; $CD01DF  6B           MX
L_CD01E0:
    JSR L_CD0279            ; $CD01E0  20 79 02     MX
    LDA $0214               ; $CD01E3  AD 14 02     MX
    BEQ L_CD01F2            ; $CD01E6  F0 0A        MX
    AND #$D003              ; $CD01E8  29 03 D0     MX
    ASL $20                 ; $CD01EB  06 20        MX
    STA $2031,Y             ; $CD01ED  99 31 20     MX
    ADC [$31],Y             ; $CD01F0  77 31        MX
L_CD01F2:
    LDA #$8D80              ; $CD01F2  A9 80 8D     MX
    BRK #$21                ; $CD01F5  00 21        MX
    LDA #$8D00              ; $CD01F7  A9 00 8D     MX
    BRK #$42                ; $CD01FA  00 42        MX
    STA $0B                 ; $CD01FC  85 0B        MX
    RTL                     ; $CD01FE  6B           MX
L_CD01FF:
    JSR L_CD0279            ; $CD01FF  20 79 02     MX
    LDA #$8D80              ; $CD0202  A9 80 8D     MX
    BRK #$21                ; $CD0205  00 21        MX
    LDA #$8D00              ; $CD0207  A9 00 8D     MX
    BRK #$42                ; $CD020A  00 42        MX
    STA $0B                 ; $CD020C  85 0B        MX
    RTL                     ; $CD020E  6B           MX
L_CD020F:
    JSR L_CD026F            ; $CD020F  20 6F 02     MX
    JSR L_CD0E2B            ; $CD0212  20 2B 0E     MX
    LDA #$8D80              ; $CD0215  A9 80 8D     MX
    BRK #$21                ; $CD0218  00 21        MX
    LDA #$8D00              ; $CD021A  A9 00 8D     MX
    BRK #$42                ; $CD021D  00 42        MX
    STA $0B                 ; $CD021F  85 0B        MX
    RTL                     ; $CD0221  6B           MX
L_CD0222:
    JSR L_CD0235            ; $CD0222  20 35 02     MX
    JSR L_CD1FC0            ; $CD0225  20 C0 1F     MX
    LDA #$8D80              ; $CD0228  A9 80 8D     MX
    BRK #$21                ; $CD022B  00 21        MX
    LDA #$8D00              ; $CD022D  A9 00 8D     MX
    BRK #$42                ; $CD0230  00 42        MX
    STA $0B                 ; $CD0232  85 0B        MX
    RTL                     ; $CD0234  6B           MX
L_CD0235:
    PHP                     ; $CD0235  08           MX
    SEP #$20                ; $CD0236  E2 20        MX
    LDA #$01                ; $CD0238  A9 01        mX
    STA $E8                 ; $CD023A  85 E8        mX
    LDA $0212               ; $CD023C  AD 12 02     mX
    AND #$01                ; $CD023F  29 01        mX
    BEQ L_CD0247            ; $CD0241  F0 04        mX
    LDA #$03                ; $CD0243  A9 03        mX
    STA $E8                 ; $CD0245  85 E8        mX
L_CD0247:
    JSR L_CD0189            ; $CD0247  20 89 01     mX
    PLP                     ; $CD024A  28           mX
    RTS                     ; $CD024B  60           mX
    db $08,$E2,$20,$A9,$01,$85,$E8,$AD,$12,$02,$29,$01,$F0,$04,$A9,$02 ; $CD024C
    db $85,$E8,$20,$89,$01,$28,$60,$08,$E2,$20,$A9,$01,$85,$E8,$20,$89 ; $CD025C
    db $01,$28,$60                                                     ; $CD026C
L_CD026F:
    PHP                     ; $CD026F  08           MX
    SEP #$20                ; $CD0270  E2 20        MX
    LDA $0202               ; $CD0272  AD 02 02     mX
    STA $E8                 ; $CD0275  85 E8        mX
    PLP                     ; $CD0277  28           mX
    RTS                     ; $CD0278  60           mX
L_CD0279:
    JSL L_C20100            ; $CD0279  22 00 01 C2  MX
    JSR L_CD12F8            ; $CD027D  20 F8 12     MX
    LDA #$8501              ; $CD0280  A9 01 85     MX
    INC $F408               ; $CD0283  EE 08 F4     MX
    EOR $45                 ; $CD0286  45 45        MX
    PEA $00CE               ; $CD0288  F4 CE 00     MX
    PEA $0000               ; $CD028B  F4 00 00     MX
    PEA $007F               ; $CD028E  F4 7F 00     MX
    JSL L_C30000            ; $CD0291  22 00 00 C3  MX
    PLA                     ; $CD0295  68           MX
    PLA                     ; $CD0296  68           MX
    PLA                     ; $CD0297  68           MX
    PLA                     ; $CD0298  68           MX
    PLP                     ; $CD0299  28           MX
    LDA #$A27F              ; $CD029A  A9 7F A2     MX
    COP #$00                ; $CD029D  02 00        MX
    STX $4302               ; $CD029F  8E 02 43     MX
    STA $4304               ; $CD02A2  8D 04 43     MX
    LDX #$2000              ; $CD02A5  A2 00 20     MX
    STX $2116               ; $CD02A8  8E 16 21     MX
    LDX #$8000              ; $CD02AB  A2 00 80     MX
    STX $4305               ; $CD02AE  8E 05 43     MX
    LDX #$1801              ; $CD02B1  A2 01 18     MX
    STX $4300               ; $CD02B4  8E 00 43     MX
    LDA #$8D01              ; $CD02B7  A9 01 8D     MX
    PHD                     ; $CD02BA  0B           MX
    WDM #$A2                ; $CD02BB  42 A2        MX
    CPY #$BF06              ; $CD02BD  C0 06 BF     MX
    TXY                     ; $CD02C0  9B           MX
    STA [$CD]               ; $CD02C1  87 CD        MX
    STA $7F7FFF,X           ; $CD02C3  9F FF 7F 7F  MX
    DEX                     ; $CD02C7  CA           MX
    BNE L_CD02BF            ; $CD02C8  D0 F5        MX
    JSR L_CD12E2            ; $CD02CA  20 E2 12     MX
    LDA #$8500              ; $CD02CD  A9 00 85     MX
    LDX #$5320              ; $CD02D0  A2 20 53     MX
    CLC                     ; $CD02D3  18           MX
    LDA $0220               ; $CD02D4  AD 20 02     MX
    STA $84                 ; $CD02D7  85 84        MX
    JSR L_CD0599            ; $CD02D9  20 99 05     MX
    LDA #$8530              ; $CD02DC  A9 30 85     MX
    ADC [$A2],Y             ; $CD02DF  77 A2        MX
    STY $00,X               ; $CD02E1  94 00        MX
    LDA #$8532              ; $CD02E3  A9 32 85     MX
    ADC [$A9],Y             ; $CD02E6  77 A9        MX
    JMP ($BDA0)             ; $CD02E8  6C A0 BD     MX
    db $10,$20,$26,$19,$A5,$E0,$F0,$19,$20,$63,$02,$A9,$01,$85,$5B,$20 ; $CD02EB
    db $BC,$33,$20,$3C,$03,$20,$B1,$05,$20,$A1,$24,$A9,$02,$85,$A2,$80 ; $CD02FB
    db $04,$A9,$00,$85,$A2,$AD,$5E,$02,$85,$84,$20,$A5,$05,$A5,$E0,$F0 ; $CD030B
    db $1F,$C2,$20,$A9,$EB,$39,$8F,$94,$90,$7F,$E2,$20,$AD,$12,$02,$85 ; $CD031B
    db $5B,$20,$BC,$33,$20,$4C,$02,$20,$3C,$03,$20,$BD,$05,$4C,$A1,$24 ; $CD032B
    db $60,$A5,$E0,$D0,$03,$4C,$0F,$04,$A2,$00,$00,$8E,$1E,$02,$20,$83 ; $CD033B
    db $16,$20,$94,$15,$A9,$06,$85,$8E,$20,$CA,$10,$20,$11,$09,$20,$93 ; $CD034B
    db $16,$20,$9B,$17,$20,$F5,$13,$20,$EE,$16,$20,$94,$15,$20,$7A,$09 ; $CD035B
    db $A2,$61,$2D,$86,$68,$A2,$CD,$00,$86,$6A,$A0,$BA,$78,$A2,$98,$01 ; $CD036B
    db $20,$8A,$25,$20,$B6,$06,$20,$E0,$23,$20,$D3,$23,$A5,$A2,$D0,$11 ; $CD037B
    db $22,$00,$00,$C2,$A9,$17,$22,$0F,$01,$C2,$20,$B5,$24,$A9,$01,$85 ; $CD038B
    db $A2,$C9,$02,$D0,$07,$20,$B5,$24,$A9,$FF,$85,$A2,$20,$94,$05,$64 ; $CD039B
    db $EC,$A5,$8E,$C9,$08,$F0,$02,$A9,$00,$85,$81,$20,$F9,$15,$20,$3E ; $CD03AB
    db $17,$20,$E9,$10,$20,$9B,$17,$20,$93,$16,$20,$94,$15,$20,$EE,$16 ; $CD03BB
    db $20,$E8,$0F,$20,$E0,$23,$20,$BE,$22,$F0,$D4,$A5,$8E,$C9,$08,$F0 ; $CD03CB
    db $33,$A5,$EC,$D0,$CC,$C2,$20,$A9,$01,$00,$E2,$20,$85,$EC,$A5,$8E ; $CD03DB
    db $C9,$08,$F0,$20,$90,$65,$C9,$0D,$90,$1F,$38,$E9,$0D,$48,$0A,$AA ; $CD03EB
    db $B5,$D4,$D0,$07,$68,$22,$15,$00,$C2,$80,$A6,$68,$85,$DC,$22,$2A ; $CD03FB
    db $00,$C2,$80,$9D,$22,$2A,$00,$C2,$60,$20,$65,$05,$D0,$E7,$AE,$1E ; $CD040B
    db $02,$F0,$E2,$A5,$D2,$C5,$D0,$F0,$71,$E6,$D2,$A5,$8E,$38,$E9,$09 ; $CD041B
    db $C2,$20,$29,$03,$00,$0A,$AA,$BD,$16,$02,$48,$A5,$A8,$0A,$0A,$AA ; $CD042B
    db $68,$E2,$20,$A0,$00,$00,$DF,$40,$2F,$CD,$F0,$05,$E8,$C8,$C8,$80 ; $CD043B
    db $F5,$BB,$95,$D4,$22,$2A,$00,$C2,$4C,$26,$05,$20,$65,$05,$F0,$07 ; $CD044B
    db $22,$15,$00,$C2,$4C,$AC,$03,$22,$2A,$00,$C2,$A5,$8E,$3A,$30,$39 ; $CD045B
    db $3A,$30,$45,$3A,$30,$5C,$3A,$30,$24,$3A,$30,$24,$3A,$30,$24,$3A ; $CD046B
    db $30,$24,$A5,$CE,$D0,$07,$22,$15,$00,$C2,$4C,$AC,$03,$A5,$CC,$C9 ; $CD047B
    db $0F,$F0,$07,$C6,$CE,$E6,$CC,$4C,$26,$05,$4C,$36,$05,$4C,$E7,$04 ; $CD048B
    db $4C,$01,$05,$4C,$1B,$05,$4C,$4A,$05,$A5,$E0,$1A,$C9,$20,$90,$03 ; $CD049B
    db $4C,$36,$05,$85,$E0,$4C,$26,$05,$A5,$B4,$C5,$B6,$F0,$18,$20,$BF ; $CD04AB
    db $04,$4C,$26,$05,$A5,$B4,$18,$69,$01,$C5,$B6,$90,$02,$A5,$B6,$85 ; $CD04BB
    db $B4,$60,$A5,$BA,$C5,$BC,$F0,$63,$20,$D9,$04,$4C,$26,$05,$A5,$BA ; $CD04CB
    db $18,$69,$05,$C5,$BC,$90,$02,$A5,$BC,$85,$BA,$60,$A5,$C0,$C5,$C2 ; $CD04DB
    db $F0,$49,$20,$F3,$04,$4C,$26,$05,$A5,$C0,$18,$69,$01,$C5,$C2,$90 ; $CD04EB
    db $02,$A5,$C2,$85,$C0,$60,$A5,$C6,$C5,$C8,$F0,$2F,$20,$0D,$05,$4C ; $CD04FB
    db $26,$05,$A5,$C6,$18,$69,$01,$C5,$C8,$90,$02,$A5,$C8,$85,$C6,$60 ; $CD050B
    db $A5,$DE,$C9,$06,$F0,$15,$E6,$DE,$4C,$26,$05,$A6,$A4,$86,$AC,$20 ; $CD051B
    db $B6,$06,$20,$94,$05,$20,$DB,$33,$4C,$AC,$03,$22,$15,$00,$C2,$A2 ; $CD052B
    db $42,$2D,$86,$68,$A2,$CD,$00,$86,$6A,$20,$82,$05,$4C,$AC,$03,$AD ; $CD053B
    db $1E,$02,$0D,$1F,$02,$F0,$E4,$20,$BF,$04,$20,$D9,$04,$20,$F3,$04 ; $CD054B
    db $A5,$AA,$F0,$03,$20,$0D,$05,$4C,$26,$05,$C2,$20,$A5,$AC,$38,$ED ; $CD055B
    db $1E,$02,$90,$07,$85,$A4,$E2,$20,$A9,$00,$60,$E2,$20,$A2,$31,$2D ; $CD056B
    db $86,$68,$A2,$CD,$00,$86,$6A,$20,$83,$16,$A0,$BA,$78,$A2,$98,$01 ; $CD057B
    db $20,$8A,$25,$20,$94,$05,$A9,$01,$60,$A9,$14,$85,$EA,$60         ; $CD058B
L_CD0599:
    LDX #$003C              ; $CD0599  A2 3C 00     MX
L_CD059C:
    LDA $021F,X             ; $CD059C  BD 1F 02     MX
    STA $A7,X               ; $CD059F  95 A7        MX
    DEX                     ; $CD05A1  CA           MX
    BNE L_CD059C            ; $CD05A2  D0 F8        MX
    RTS                     ; $CD05A4  60           MX
    db $A2,$3C,$00,$BD,$5D,$02,$95,$A7,$CA,$D0,$F8,$60,$A2,$3C,$00,$B5 ; $CD05A5
    db $A7,$9D,$1F,$02,$CA,$D0,$F8,$60,$A2,$3C,$00,$B5,$A7,$9D,$5D,$02 ; $CD05B5
    db $CA,$D0,$F8,$60,$20,$99,$05,$20,$DC,$05,$20,$B1,$05,$20,$A5,$05 ; $CD05C5
    db $20,$DC,$05,$20,$BD,$05,$60,$A9,$00,$85,$B4,$85,$B6,$A2,$00,$00 ; $CD05D5
    db $86,$CC,$86,$DE,$86,$D4,$86,$D6,$86,$D8,$86,$DA,$E8,$86,$D2,$C2 ; $CD05E5
    db $20,$A5,$A8,$29,$FF,$00,$0A,$0A,$AA,$E2,$20,$BF,$40,$2F,$CD,$85 ; $CD05F5
    db $D4,$20,$A6,$08,$A5,$A6,$D0,$03,$20,$5C,$2F,$A6,$BC,$86,$BA,$A6 ; $CD0605
    db $C2,$86,$C0,$A6,$C8,$86,$C6,$A2,$00,$00,$86,$CC,$86,$DE,$86,$D4 ; $CD0615
    db $86,$D6,$86,$D8,$86,$DA,$E8,$86,$D2,$C2,$20,$A5,$A8,$0A,$0A,$AA ; $CD0625
    db $E2,$20,$BF,$40,$2F,$CD,$85,$D4,$60                             ; $CD0635
L_CD063E:
    JSR L_CD06F4            ; $CD063E  20 F4 06     MX
    JSR L_CD0766            ; $CD0641  20 66 07     MX
    STZ $96                 ; $CD0644  64 96        MX
    STZ $98                 ; $CD0646  64 98        MX
    LDX #$0000              ; $CD0648  A2 00 00     MX
    STX $9C                 ; $CD064B  86 9C        MX
    STX $9E                 ; $CD064D  86 9E        MX
    LDA #$A206              ; $CD064F  A9 06 A2     MX
    CMP ($02)               ; $CD0652  D2 02        MX
L_CD0654:
    PHA                     ; $CD0654  48           MX
    LDA $00,X               ; $CD0655  B5 00        MX
    PHX                     ; $CD0657  DA           MX
    JSR L_CD0961            ; $CD0658  20 61 09     MX
    STA $94                 ; $CD065B  85 94        MX
    JSR L_CD0825            ; $CD065D  20 25 08     MX
    REP #$20                ; $CD0660  C2 20        MX
    LDA $9E                 ; $CD0662  A5 9E        MX
    CLC                     ; $CD0664  18           MX
    ADC #$00C0              ; $CD0665  69 C0 00     MX
    STA $9E                 ; $CD0668  85 9E        MX
    SEP #$20                ; $CD066A  E2 20        MX
    PLX                     ; $CD066C  FA           mX
    INX                     ; $CD066D  E8           mX
    INX                     ; $CD066E  E8           mX
    PLA                     ; $CD066F  68           mX
    DEC                     ; $CD0670  3A           mX
    BNE L_CD0654            ; $CD0671  D0 E1        mX
    STZ $96                 ; $CD0673  64 96        mX
    LDX #$0240              ; $CD0675  A2 40 02     mX
    STX $9C                 ; $CD0678  86 9C        mX
    LDA $02D0               ; $CD067A  AD D0 02     mX
    JSR L_CD0961            ; $CD067D  20 61 09     mX
    STA $94                 ; $CD0680  85 94        mX
    JSR L_CD0825            ; $CD0682  20 25 08     mX
    LDX #$0000              ; $CD0685  A2 00 00     mX
    STX $9C                 ; $CD0688  86 9C        mX
    LDX #$0540              ; $CD068A  A2 40 05     mX
    STX $9E                 ; $CD068D  86 9E        mX
    LDA $02CC               ; $CD068F  AD CC 02     mX
    JSR L_CD0961            ; $CD0692  20 61 09     mX
    STA $94                 ; $CD0695  85 94        mX
    LDA #$64                ; $CD0697  A9 64        mX
    SEC                     ; $CD0699  38           mX
    SBC $02CC               ; $CD069A  ED CC 02     mX
    JSR L_CD0961            ; $CD069D  20 61 09     mX
    CLC                     ; $CD06A0  18           mX
    ADC $94                 ; $CD06A1  65 94        mX
    STA $96                 ; $CD06A3  85 96        mX
    JSR L_CD0825            ; $CD06A5  20 25 08     mX
    BRA L_CD06E9            ; $CD06A8  80 3F        mX
    db $20,$46,$07,$20,$C3,$06,$20,$D3,$09,$4C,$E9,$06                 ; $CD06AA
L_CD06B6:
    JSR L_CD0726            ; $CD06B6  20 26 07     Mx
    JSR L_CD06C3            ; $CD06B9  20 C3 06     Mx
    JSR L_CD099E            ; $CD06BC  20 9E 09     Mx
    JSR L_CD06E9            ; $CD06BF  20 E9 06     Mx
    RTS                     ; $CD06C2  60           Mx
L_CD06C3:
    JSR L_CD08A6            ; $CD06C3  20 A6 08     Mx
    LDA $A6                 ; $CD06C6  A5 A6        Mx
    BNE L_CD06CD            ; $CD06C8  D0 03        Mx
    JSR L_CD2F5C            ; $CD06CA  20 5C 2F     Mx
L_CD06CD:
    JSR L_CD06F4            ; $CD06CD  20 F4 06     Mx
    JSR L_CD07AB            ; $CD06D0  20 AB 07     Mx
    JSR L_CD0825            ; $CD06D3  20 25 08     Mx
    JSR L_CD07C5            ; $CD06D6  20 C5 07     Mx
    JSR L_CD0825            ; $CD06D9  20 25 08     Mx
    JSR L_CD07E5            ; $CD06DC  20 E5 07     Mx
    JSR L_CD0825            ; $CD06DF  20 25 08     Mx
    JSR L_CD0805            ; $CD06E2  20 05 08     Mx
    JSR L_CD0825            ; $CD06E5  20 25 08     Mx
    RTS                     ; $CD06E8  60           Mx
L_CD06E9:
    LDA #$8501              ; $CD06E9  A9 01 85     Mx
    CLI                     ; $CD06EC  58           Mx
    LDA $4A                 ; $CD06ED  A5 4A        Mx
L_CD06EF:
    CMP $4A                 ; $CD06EF  C5 4A        Mx
    BEQ L_CD06EF            ; $CD06F1  F0 FC        Mx
    RTS                     ; $CD06F3  60           Mx
L_CD06F4:
    LDX #$00                ; $CD06F4  A2 00        Mx
    ASL $A9                 ; $CD06F6  06 A9        Mx
    BRK #$85                ; $CD06F8  00 85        Mx
    TXS                     ; $CD06FA  9A           Mx
L_CD06FB:
    STA $7F959D,X           ; $CD06FB  9F 9D 95 7F  Mx
    DEX                     ; $CD06FF  CA           Mx
    BNE L_CD06FB            ; $CD0700  D0 F9        Mx
    RTS                     ; $CD0702  60           Mx
    db $A2,$20,$60,$8E,$16,$21,$A9,$7F,$A2,$9E,$95,$8E,$02,$43,$8D,$04 ; $CD0703
    db $43,$A2,$C0,$00,$8E,$05,$43,$A2,$01,$18,$8E,$00,$43,$A9,$01,$8D ; $CD0713
    db $0B,$42,$60                                                     ; $CD0723
L_CD0726:
    LDA #$A240              ; $CD0726  A9 40 A2     Mx
    DEC $00,X               ; $CD0729  D6 00        Mx
    JSR L_CD0795            ; $CD072B  20 95 07     Mx
    LDX #$98                ; $CD072E  A2 98        Mx
    ORA ($20,X)             ; $CD0730  01 20        Mx
    STA $07,X               ; $CD0732  95 07        Mx
    LDX #$56                ; $CD0734  A2 56        Mx
    COP #$20                ; $CD0736  02 20        Mx
    STA $07,X               ; $CD0738  95 07        Mx
    LDX #$14                ; $CD073A  A2 14        Mx
    ORA $20,S               ; $CD073C  03 20        Mx
    STA $07,X               ; $CD073E  95 07        Mx
    LDX #$D4                ; $CD0740  A2 D4        Mx
    TSB $4C                 ; $CD0742  04 4C        Mx
    STA $07,X               ; $CD0744  95 07        Mx
    LDA #$A240              ; $CD0746  A9 40 A2     Mx
    DEC $00,X               ; $CD0749  D6 00        Mx
    JSR L_CD0795            ; $CD074B  20 95 07     Mx
    LDX #$58                ; $CD074E  A2 58        Mx
    ORA ($20,X)             ; $CD0750  01 20        Mx
    STA $07,X               ; $CD0752  95 07        Mx
    LDX #$D8                ; $CD0754  A2 D8        Mx
    ORA ($20,X)             ; $CD0756  01 20        Mx
    STA $07,X               ; $CD0758  95 07        Mx
    LDX #$58                ; $CD075A  A2 58        Mx
    COP #$20                ; $CD075C  02 20        Mx
    STA $07,X               ; $CD075E  95 07        Mx
    LDX #$D4                ; $CD0760  A2 D4        Mx
    TSB $4C                 ; $CD0762  04 4C        Mx
    STA $07,X               ; $CD0764  95 07        Mx
L_CD0766:
    LDA #$A240              ; $CD0766  A9 40 A2     Mx
    JMP L_CD2001            ; $CD0769  4C 01 20     Mx
    db $95,$07,$A2,$0C,$02,$20,$95,$07,$A2,$CC,$02,$20,$95,$07,$A2,$8C ; $CD076C
    db $03,$20,$95,$07,$A2,$4C,$04,$20,$95,$07,$A2,$0C,$05,$20,$95,$07 ; $CD077C
    db $A2,$CC,$05,$20,$95,$07,$A2,$EE,$04                             ; $CD078C
L_CD0795:
    LDY #$06                ; $CD0795  A0 06        Mx
    BRK #$9F                ; $CD0797  00 9F        Mx
    BRK #$88                ; $CD0799  00 88        Mx
    ADC $A948E8,X           ; $CD079B  7F E8 48 A9  Mx
    BIT $009F,X             ; $CD079F  3C 9F 00     Mx
    DEY                     ; $CD07A2  88           Mx
    ADC $1A68E8,X           ; $CD07A3  7F E8 68 1A  Mx
    DEY                     ; $CD07A7  88           Mx
    BNE L_CD0798            ; $CD07A8  D0 EE        Mx
    RTS                     ; $CD07AA  60           Mx
L_CD07AB:
    LDA $B4                 ; $CD07AB  A5 B4        Mx
    JSR L_CD0969            ; $CD07AD  20 69 09     Mx
    STA $94                 ; $CD07B0  85 94        Mx
    LDA $B6                 ; $CD07B2  A5 B6        Mx
    JSR L_CD0969            ; $CD07B4  20 69 09     Mx
    STA $96                 ; $CD07B7  85 96        Mx
    LDA #$852F              ; $CD07B9  A9 2F 85     Mx
    TYA                     ; $CD07BC  98           Mx
    LDX #$00                ; $CD07BD  A2 00        Mx
    BRK #$86                ; $CD07BF  00 86        Mx
    STZ $9E86               ; $CD07C1  9C 86 9E     Mx
    RTS                     ; $CD07C4  60           Mx
L_CD07C5:
    LDA $BA                 ; $CD07C5  A5 BA        Mx
    JSR L_CD0961            ; $CD07C7  20 61 09     Mx
    STA $94                 ; $CD07CA  85 94        Mx
    LDA $BC                 ; $CD07CC  A5 BC        Mx
    JSR L_CD0961            ; $CD07CE  20 61 09     Mx
    STA $96                 ; $CD07D1  85 96        Mx
    LDA $BE                 ; $CD07D3  A5 BE        Mx
    JSR L_CD0961            ; $CD07D5  20 61 09     Mx
    STA $98                 ; $CD07D8  85 98        Mx
    LDX #$C0                ; $CD07DA  A2 C0        Mx
    BRK #$86                ; $CD07DC  00 86        Mx
    STZ $00A2,X             ; $CD07DE  9E A2 00     Mx
    BRK #$86                ; $CD07E1  00 86        Mx
    db $9C,$60                                                         ; $CD07E3
L_CD07E5:
    LDA $C0                 ; $CD07E5  A5 C0        Mx
    JSR L_CD0969            ; $CD07E7  20 69 09     Mx
    STA $94                 ; $CD07EA  85 94        Mx
    LDA $C2                 ; $CD07EC  A5 C2        Mx
    JSR L_CD0969            ; $CD07EE  20 69 09     Mx
    STA $96                 ; $CD07F1  85 96        Mx
    LDA $C4                 ; $CD07F3  A5 C4        Mx
    JSR L_CD0969            ; $CD07F5  20 69 09     Mx
    STA $98                 ; $CD07F8  85 98        Mx
    LDX #$80                ; $CD07FA  A2 80        Mx
    ORA ($86,X)             ; $CD07FC  01 86        Mx
    STZ $00A2,X             ; $CD07FE  9E A2 00     Mx
    BRK #$86                ; $CD0801  00 86        Mx
    db $9C,$60                                                         ; $CD0803
L_CD0805:
    LDA $C6                 ; $CD0805  A5 C6        Mx
    JSR L_CD0969            ; $CD0807  20 69 09     Mx
    STA $94                 ; $CD080A  85 94        Mx
    LDA $C8                 ; $CD080C  A5 C8        Mx
    JSR L_CD0969            ; $CD080E  20 69 09     Mx
    STA $96                 ; $CD0811  85 96        Mx
    LDA $CA                 ; $CD0813  A5 CA        Mx
    JSR L_CD0969            ; $CD0815  20 69 09     Mx
    STA $98                 ; $CD0818  85 98        Mx
    LDX #$40                ; $CD081A  A2 40        Mx
    COP #$86                ; $CD081C  02 86        Mx
    STZ $00A2,X             ; $CD081E  9E A2 00     Mx
    BRK #$86                ; $CD0821  00 86        Mx
    db $9C,$60                                                         ; $CD0823
L_CD0825:
    STZ $9A                 ; $CD0825  64 9A        Mx
    LDX #$00                ; $CD0827  A2 00        Mx
    BRK #$A5                ; $CD0829  00 A5        Mx
    TXS                     ; $CD082B  9A           Mx
    CMP $94                 ; $CD082C  C5 94        Mx
    BCC L_CD083F            ; $CD082E  90 0F        Mx
    LDX #$C0                ; $CD0830  A2 C0        Mx
    BRK #$C5                ; $CD0832  00 C5        Mx
    STX $90,Y               ; $CD0834  96 90        Mx
    PHP                     ; $CD0836  08           Mx
    LDX #$80                ; $CD0837  A2 80        Mx
    ORA ($C5,X)             ; $CD0839  01 C5        Mx
    TYA                     ; $CD083B  98           Mx
    BCC L_CD083F            ; $CD083C  90 01        Mx
    RTS                     ; $CD083E  60           Mx
L_CD083F:
    REP #$20                ; $CD083F  C2 20        Mx
    TXA                     ; $CD0841  8A           Mx
    CLC                     ; $CD0842  18           Mx
    ADC $9C                 ; $CD0843  65 9C        Mx
    CLC                     ; $CD0845  18           Mx
    ADC #$0400              ; $CD0846  69 00 04     Mx
    STA $5C                 ; $CD0849  85 5C        Mx
    LDA $9A                 ; $CD084B  A5 9A        Mx
    AND #$00FF              ; $CD084D  29 FF 00     Mx
    PHA                     ; $CD0850  48           Mx
    ASL                     ; $CD0851  0A           Mx
    ASL                     ; $CD0852  0A           Mx
    AND #$00E0              ; $CD0853  29 E0 00     Mx
    PHA                     ; $CD0856  48           Mx
    CLC                     ; $CD0857  18           Mx
    ADC $9E                 ; $CD0858  65 9E        Mx
    STA $5E                 ; $CD085A  85 5E        Mx
    PLA                     ; $CD085C  68           Mx
    CLC                     ; $CD085D  18           Mx
    ADC $5C                 ; $CD085E  65 5C        Mx
    STA $5C                 ; $CD0860  85 5C        Mx
    PLA                     ; $CD0862  68           Mx
    AND #$0007              ; $CD0863  29 07 00     Mx
    TAX                     ; $CD0866  AA           Mx
    SEP #$20                ; $CD0867  E2 20        Mx
    LDA $CD089E,X           ; $CD0869  BF 9E 08 CD  mx
    STA $75                 ; $CD086D  85 75        mx
    LDY #$20                ; $CD086F  A0 20        mx
    BRK #$A6                ; $CD0871  00 A6        mx
    JML $4824BF             ; $CD0873  5C BF 24 48  mx
    db $CF,$25,$75,$A6,$5E,$1F,$9E,$95,$7F,$9F,$9E,$95,$7F,$A6,$5C,$E8 ; $CD0877
    db $86,$5C,$A6,$5E,$E8,$86,$5E,$88,$D0,$E1,$A5,$9A,$1A,$85,$9A,$C9 ; $CD0887
    db $30,$F0,$03,$4C,$27,$08,$60,$80,$40,$20,$10,$08,$04,$02,$01     ; $CD0897
L_CD08A6:
    REP #$20                ; $CD08A6  C2 20        Mx
    LDA $A8                 ; $CD08A8  A5 A8        Mx
    ASL                     ; $CD08AA  0A           Mx
    ASL                     ; $CD08AB  0A           Mx
    ASL                     ; $CD08AC  0A           Mx
    CLC                     ; $CD08AD  18           Mx
    ADC $A8                 ; $CD08AE  65 A8        Mx
    STA $5C                 ; $CD08B0  85 5C        Mx
    LDA $A8                 ; $CD08B2  A5 A8        Mx
    ASL                     ; $CD08B4  0A           Mx
    ASL                     ; $CD08B5  0A           Mx
    ASL                     ; $CD08B6  0A           Mx
    ASL                     ; $CD08B7  0A           Mx
    ASL                     ; $CD08B8  0A           Mx
    ASL                     ; $CD08B9  0A           Mx
    SEC                     ; $CD08BA  38           Mx
    SBC $5C                 ; $CD08BB  E5 5C        Mx
    STA $90                 ; $CD08BD  85 90        Mx
    LDA $B4                 ; $CD08BF  A5 B4        Mx
    ASL                     ; $CD08C1  0A           Mx
    ASL                     ; $CD08C2  0A           Mx
    CLC                     ; $CD08C3  18           Mx
    ADC $B4                 ; $CD08C4  65 B4        Mx
    CLC                     ; $CD08C6  18           Mx
    ADC $90                 ; $CD08C7  65 90        Mx
    STA $92                 ; $CD08C9  85 92        Mx
    TAX                     ; $CD08CB  AA           Mx
    SEP #$20                ; $CD08CC  E2 20        Mx
    LDA #$00                ; $CD08CE  A9 00        mx
    STA $CE                 ; $CD08D0  85 CE        mx
    LDA $CD2DF6,X           ; $CD08D2  BF F6 2D CD  mx
    STA $E6                 ; $CD08D6  85 E6        mx
    SEC                     ; $CD08D8  38           mx
    SBC $CC                 ; $CD08D9  E5 CC        mx
    BCC L_CD08DF            ; $CD08DB  90 02        mx
    STA $CE                 ; $CD08DD  85 CE        mx
L_CD08DF:
    LDA $CD2E28,X           ; $CD08DF  BF 28 2E CD  mx
    STA $62                 ; $CD08E3  85 62        mx
    LDA $CD2DF7,X           ; $CD08E5  BF F7 2D CD  mx
    STA $D0                 ; $CD08E9  85 D0        mx
    LDA $CD2DF8,X           ; $CD08EB  BF F8 2D CD  mx
    STA $BC                 ; $CD08EF  85 BC        mx
    LDA $CD2DF9,X           ; $CD08F1  BF F9 2D CD  mx
    STA $C2                 ; $CD08F5  85 C2        mx
    LDA $CD2DFA,X           ; $CD08F7  BF FA 2D CD  mx
    STA $C8                 ; $CD08FB  85 C8        mx
    LDX $90                 ; $CD08FD  A6 90        mx
    LDA $CD2E2A,X           ; $CD08FF  BF 2A 2E CD  mx
    STA $BE                 ; $CD0903  85 BE        mx
    LDA $CD2E2B,X           ; $CD0905  BF 2B 2E CD  mx
    STA $C4                 ; $CD0909  85 C4        mx
    LDA $CD2E2C,X           ; $CD090B  BF 2C 2E CD  mx
    STA $CA                 ; $CD090F  85 CA        mx
    LDX #$00                ; $CD0911  A2 00        mx
    BRK #$8E                ; $CD0913  00 8E        mx
    ASL $02,X               ; $CD0915  16 02        mx
    STX $0218               ; $CD0917  8E 18 02     mx
    STX $021A               ; $CD091A  8E 1A 02     mx
    STX $021C               ; $CD091D  8E 1C 02     mx
    REP #$20                ; $CD0920  C2 20        mx
    LDA $A8                 ; $CD0922  A5 A8        Mx
    ASL                     ; $CD0924  0A           Mx
    ASL                     ; $CD0925  0A           Mx
    TAX                     ; $CD0926  AA           Mx
    INX                     ; $CD0927  E8           Mx
    SEP #$20                ; $CD0928  E2 20        Mx
    LDA $D0                 ; $CD092A  A5 D0        mx
    SEC                     ; $CD092C  38           mx
    SBC $D2                 ; $CD092D  E5 D2        mx
    BEQ L_CD0960            ; $CD092F  F0 2F        mx
    STA $5C                 ; $CD0931  85 5C        mx
    LDY #$16                ; $CD0933  A0 16        mx
    COP #$84                ; $CD0935  02 84        mx
    PLA                     ; $CD0937  68           mx
    LDA $D6                 ; $CD0938  A5 D6        mx
    BNE L_CD0943            ; $CD093A  D0 07        mx
    JSR L_CD0954            ; $CD093C  20 54 09     mx
    LDA $5C                 ; $CD093F  A5 5C        mx
    BEQ L_CD0960            ; $CD0941  F0 1D        mx
L_CD0943:
    INX                     ; $CD0943  E8           mx
    LDA $D8                 ; $CD0944  A5 D8        mx
    BNE L_CD094F            ; $CD0946  D0 07        mx
    JSR L_CD0954            ; $CD0948  20 54 09     mx
    LDA $5C                 ; $CD094B  A5 5C        mx
    BEQ L_CD0960            ; $CD094D  F0 11        mx
L_CD094F:
    INX                     ; $CD094F  E8           mx
    LDA $DA                 ; $CD0950  A5 DA        mx
    BNE L_CD0960            ; $CD0952  D0 0C        mx
L_CD0954:
    LDA $CD2F40,X           ; $CD0954  BF 40 2F CD  mx
    STA ($68)               ; $CD0958  92 68        mx
    INC $68                 ; $CD095A  E6 68        mx
    INC $68                 ; $CD095C  E6 68        mx
    DEC $5C                 ; $CD095E  C6 5C        mx
L_CD0960:
    RTS                     ; $CD0960  60           mx
L_CD0961:
    LSR                     ; $CD0961  4A           Mx
L_CD0962:
    CMP #$902F              ; $CD0962  C9 2F 90     Mx
    COP #$A9                ; $CD0965  02 A9        Mx
    db $2F,$60                                                         ; $CD0967
L_CD0969:
    STA $5C                 ; $CD0969  85 5C        Mx
    ASL                     ; $CD096B  0A           Mx
    ASL                     ; $CD096C  0A           Mx
    CLC                     ; $CD096D  18           Mx
    ADC $5C                 ; $CD096E  65 5C        Mx
    BRA L_CD0962            ; $CD0970  80 F0        Mx
    db $85,$5C,$0A,$18,$65,$5C,$80,$E8                                 ; $CD0972
L_CD097A:
    LDY $DE                 ; $CD097A  A4 DE        Mx
    LDX #$52                ; $CD097C  A2 52        Mx
    ASL $A9                 ; $CD097E  06 A9        Mx
    ORA $85,X               ; $CD0980  15 85        Mx
    JML $4806A9             ; $CD0982  5C A9 06 48  Mx
    db $A9,$00,$88,$30,$02,$A5,$5C,$9F,$00,$88,$7F,$E8,$A9,$1C,$9F,$00 ; $CD0986
    db $88,$7F,$E8,$68,$3A,$D0,$E8,$60                                 ; $CD0996
L_CD099E:
    LDA $EE                 ; $CD099E  A5 EE        Mx
    BEQ L_CD09B4            ; $CD09A0  F0 12        Mx
    LDX #$90                ; $CD09A2  A2 90        Mx
    BRK #$A0                ; $CD09A4  00 A0        Mx
    INX                     ; $CD09A6  E8           Mx
    STA ($A5,S),Y           ; $CD09A7  93 A5        Mx
    DEC $03D0               ; $CD09A9  CE D0 03     Mx
    LDY #$E0                ; $CD09AC  A0 E0        Mx
    CPX #$A9                ; $CD09AE  E0 A9        Mx
    LDY $2620               ; $CD09B0  AC 20 26     Mx
    ORA $9864,Y             ; $CD09B3  19 64 98     Mx
    STZ $96                 ; $CD09B6  64 96        Mx
    LDX #$00                ; $CD09B8  A2 00        Mx
    ORA $86,S               ; $CD09BA  03 86        Mx
    STZ $00A2,X             ; $CD09BC  9E A2 00     Mx
    ORA $86,S               ; $CD09BF  03 86        Mx
    STZ $CCA5               ; $CD09C1  9C A5 CC     Mx
    CLC                     ; $CD09C4  18           Mx
    ADC $CC                 ; $CD09C5  65 CC        Mx
    ADC $CC                 ; $CD09C7  65 CC        Mx
    STA $94                 ; $CD09C9  85 94        Mx
    INC                     ; $CD09CB  1A           Mx
    INC                     ; $CD09CC  1A           Mx
    STA $94                 ; $CD09CD  85 94        Mx
    JSR L_CD0825            ; $CD09CF  20 25 08     Mx
    RTS                     ; $CD09D2  60           Mx
    db $64,$98,$64,$96,$A2,$00,$03,$86,$9E,$A2,$00,$03,$86,$9C,$A5,$62 ; $CD09D3
    db $18,$65,$62,$65,$62,$1A,$1A,$85,$94,$20,$25,$08,$60,$00,$00,$01 ; $CD09E3
    db $00,$00,$00,$01,$FF,$00,$00,$01,$FF,$00,$00,$01,$FF,$02,$00,$02 ; $CD09F3
    db $FF,$01,$09,$04,$01,$01,$FF,$FF,$FE,$01,$FF,$04,$00,$00,$04,$00 ; $CD0A03
    db $FF,$01,$07,$00,$FC,$01,$FF,$00,$FC,$01,$FF,$00,$FC,$FC,$FF,$00 ; $CD0A13
    db $FB,$01,$00,$02,$00,$F7,$FF,$02,$00,$01,$00,$00,$FE,$F9,$FF,$00 ; $CD0A23
    db $FE,$00,$00,$01,$00,$00,$00,$01,$FF,$00,$00,$01,$FF,$00,$00,$03 ; $CD0A33
    db $FF,$02,$00,$01,$FF,$01,$09,$04,$01,$01,$FF,$FF,$FE,$01,$FF,$04 ; $CD0A43
    db $00,$00,$04,$00,$FF,$01,$07,$00,$FC,$01,$FF,$00,$FC,$01,$FF,$00 ; $CD0A53
    db $FC,$FC,$FF,$00,$FB,$01,$00,$02,$00,$F7,$FF,$02,$00,$01,$00,$00 ; $CD0A63
    db $FE,$F9,$FF,$00,$FE,$22,$00,$01,$C2,$20,$F8,$12,$A9,$00,$85,$EE ; $CD0A73
    db $08,$F4,$00,$00,$F4,$CE,$00,$F4,$00,$00,$F4,$7F,$00,$22,$00,$00 ; $CD0A83
    db $C3,$68,$68,$68,$68,$28,$A9,$7F,$A2,$02,$00,$8E,$02,$43,$8D,$04 ; $CD0A93
    db $43,$A2,$00,$20,$8E,$16,$21,$A2,$00,$80,$8E,$05,$43,$A2,$01,$18 ; $CD0AA3
    db $8E,$00,$43,$A9,$01,$8D,$0B,$42,$A2,$C0,$06,$BF,$9F,$8E,$CD,$9F ; $CD0AB3
    db $FF,$7F,$7F,$CA,$D0,$F5,$A2,$00,$00,$86,$86,$86,$84,$8E,$20,$02 ; $CD0AC3
    db $8E,$5E,$02,$20,$A6,$08,$A2,$01,$02,$86,$88,$A2,$03,$04,$86,$8A ; $CD0AD3
    db $A2,$05,$06,$86,$8C,$20,$E2,$12,$A9,$01,$85,$A6,$20,$DC,$13,$20 ; $CD0AE3
    db $41,$14,$20,$A1,$14,$20,$BE,$11,$20,$1D,$15,$20,$AA,$06,$20,$9E ; $CD0AF3
    db $12,$20,$C2,$23,$64,$81,$A9,$06,$8D,$20,$02,$A2,$70,$17,$8E,$24 ; $CD0B03
    db $02,$8E,$62,$02,$86,$AC,$20,$63,$02,$A9,$01,$85,$5B,$20,$BD,$0B ; $CD0B13
    db $AD,$12,$02,$10,$03,$4C,$BC,$0B,$20,$70,$0F,$A5,$84,$8D,$20,$02 ; $CD0B23
    db $85,$A8,$20,$A6,$08,$20,$B1,$05,$A5,$84,$49,$01,$85,$84,$85,$A8 ; $CD0B33
    db $20,$11,$15,$C2,$20,$AD,$24,$02,$38,$ED,$1E,$02,$8D,$62,$02,$E2 ; $CD0B43
    db $20,$20,$E0,$23,$20,$D3,$23,$20,$4C,$02,$AD,$12,$02,$85,$5B,$85 ; $CD0B53
    db $A2,$20,$BD,$0B,$AD,$12,$02,$30,$50,$20,$7C,$0F,$A5,$84,$8D,$5E ; $CD0B63
    db $02,$85,$A8,$20,$DC,$05,$20,$BD,$05,$C2,$20,$AD,$62,$02,$38,$ED ; $CD0B73
    db $1E,$02,$85,$AC,$4A,$8D,$24,$02,$8D,$62,$02,$E2,$20,$A9,$F1,$8F ; $CD0B83
    db $94,$91,$7F,$A9,$B5,$8F,$95,$91,$7F,$85,$7F,$20,$E0,$23,$20,$D3 ; $CD0B93
    db $23,$A9,$14,$48,$20,$EB,$11,$20,$E0,$23,$20,$D3,$23,$68,$3A,$D0 ; $CD0BA3
    db $F2,$64,$A6,$20,$35,$02,$4C,$B4,$0F,$60,$86,$82,$A5,$4A,$C5,$4A ; $CD0BB3
    db $F0,$FC,$20,$A6,$08,$20,$C9,$05,$20,$9E,$12,$20,$41,$14,$20,$54 ; $CD0BC3
    db $14,$20,$B7,$33,$20,$AA,$06,$20,$E0,$23,$A9,$06,$CD,$20,$02,$D0 ; $CD0BD3
    db $11,$A9,$17,$22,$0F,$01,$C2,$20,$B5,$24,$20,$AA,$22,$D0,$FB,$4C ; $CD0BE3
    db $02,$0C,$A5,$A2,$D0,$09,$A9,$01,$85,$A2,$20,$AA,$22,$D0,$F7,$A9 ; $CD0BF3
    db $0A,$48,$A2,$38,$00,$BF,$97,$91,$7F,$49,$30,$9F,$97,$91,$7F,$CA ; $CD0C03
    db $CA,$CA,$CA,$D0,$F0,$20,$D3,$23,$20,$EB,$11,$20,$E0,$23,$A9,$01 ; $CD0C13
    db $20,$D6,$24,$68,$3A,$D0,$DA,$20,$B4,$22,$F0,$08,$A9,$FF,$8D,$12 ; $CD0C23
    db $02,$4C,$A5,$1B,$20,$EB,$11,$20,$E0,$23,$A9,$01,$20,$D6,$24,$20 ; $CD0C33
    db $EB,$11,$20,$E0,$23,$20,$CE,$22,$A6,$84,$C2,$20,$48,$8A,$0A,$0A ; $CD0C43
    db $85,$64,$AD,$20,$02,$0A,$0A,$0A,$0A,$0A,$18,$65,$64,$AA,$68,$E2 ; $CD0C53
    db $20,$4A,$90,$05,$E8,$E8,$E8,$80,$10,$4A,$90,$04,$E8,$E8,$80,$09 ; $CD0C63
    db $4A,$90,$03,$E8,$80,$03,$4A,$90,$3B,$C2,$20,$BF,$CE,$0C,$CD,$29 ; $CD0C73
    db $FF,$00,$AA,$E2,$20,$C9,$06,$B0,$2B,$CD,$20,$02,$F0,$26,$C5,$84 ; $CD0C83
    db $F0,$22,$86,$84,$22,$3F,$00,$C2,$20,$9E,$12,$20,$41,$14,$20,$54 ; $CD0C93
    db $14,$A5,$A8,$48,$A5,$84,$85,$A8,$20,$DC,$05,$20,$AA,$06,$68,$85 ; $CD0CA3
    db $A8,$20,$D3,$23,$20,$E0,$23,$20,$BE,$22,$F0,$0B,$22,$2A,$00,$C2 ; $CD0CB3
    db $A5,$84,$CD,$20,$02,$D0,$03,$4C,$2A,$0C,$60,$04,$02,$01,$01,$05 ; $CD0CC3
    db $03,$01,$01,$04,$04,$03,$03,$01,$05,$02,$02,$02,$02,$05,$05,$03 ; $CD0CD3
    db $01,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$02,$00,$00,$05 ; $CD0CE3
    db $03,$00,$00,$00,$04,$03,$03,$05,$05,$02,$02,$02,$00,$05,$05,$03 ; $CD0CF3
    db $03,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$01,$01,$05 ; $CD0D03
    db $03,$00,$00,$00,$04,$03,$03,$01,$05,$03,$03,$00,$00,$05,$05,$03 ; $CD0D13
    db $01,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$02,$01,$01,$05 ; $CD0D23
    db $05,$00,$00,$00,$04,$02,$02,$01,$05,$02,$02,$02,$00,$05,$05,$01 ; $CD0D33
    db $01,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$01,$01,$05 ; $CD0D43
    db $03,$00,$00,$00,$00,$03,$03,$01,$05,$02,$02,$02,$00,$05,$05,$03 ; $CD0D53
    db $01,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$04,$02,$01,$01,$03 ; $CD0D63
    db $03,$00,$00,$00,$04,$03,$03,$01,$01,$02,$02,$02,$00,$04,$04,$03 ; $CD0D73
    db $01,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$02,$01,$01,$05 ; $CD0D83
    db $03,$00,$00,$00,$04,$03,$03,$01,$05,$02,$02,$02,$00,$05,$05,$03 ; $CD0D93
    db $01,$04,$04                                                     ; $CD0DA3
L_CD0DA6:
    JSR L_CD12F8            ; $CD0DA6  20 F8 12     MX
    PHP                     ; $CD0DA9  08           MX
    PEA $0000               ; $CD0DAA  F4 00 00     MX
    PEA $00CF               ; $CD0DAD  F4 CF 00     MX
    PEA $0000               ; $CD0DB0  F4 00 00     MX
    PEA $007F               ; $CD0DB3  F4 7F 00     MX
    JSL L_C30000            ; $CD0DB6  22 00 00 C3  MX
    PLA                     ; $CD0DBA  68           MX
    PLA                     ; $CD0DBB  68           MX
    PLA                     ; $CD0DBC  68           MX
    PLA                     ; $CD0DBD  68           MX
    PLP                     ; $CD0DBE  28           MX
    LDA #$A27F              ; $CD0DBF  A9 7F A2     MX
    COP #$00                ; $CD0DC2  02 00        MX
    STX $4302               ; $CD0DC4  8E 02 43     MX
    STA $4304               ; $CD0DC7  8D 04 43     MX
    LDX #$2000              ; $CD0DCA  A2 00 20     MX
    STX $2116               ; $CD0DCD  8E 16 21     MX
    LDX #$8000              ; $CD0DD0  A2 00 80     MX
    STX $4305               ; $CD0DD3  8E 05 43     MX
    LDX #$1801              ; $CD0DD6  A2 01 18     MX
    STX $4300               ; $CD0DD9  8E 00 43     MX
    LDA #$8D01              ; $CD0DDC  A9 01 8D     MX
    PHD                     ; $CD0DDF  0B           MX
    WDM #$A2                ; $CD0DE0  42 A2        MX
    CPY #$BF06              ; $CD0DE2  C0 06 BF     MX
    ADC $41,S               ; $CD0DE5  63 41        MX
    CMP $7FFF9F             ; $CD0DE7  CF 9F FF 7F  MX
    ADC $F5D0CA,X           ; $CD0DEB  7F CA D0 F5  MX
    LDY #$BA06              ; $CD0DEF  A0 06 BA     MX
    JSR L_CD12B4            ; $CD0DF2  20 B4 12     MX
    JSR L_CD186D            ; $CD0DF5  20 6D 18     MX
    JSR L_CD12E2            ; $CD0DF8  20 E2 12     MX
    JSR L_CD107D            ; $CD0DFB  20 7D 10     MX
    JSR L_CD063E            ; $CD0DFE  20 3E 06     MX
    JSR L_CD23E0            ; $CD0E01  20 E0 23     MX
    JSL L_C20000            ; $CD0E04  22 00 00 C2  MX
    LDA #$221A              ; $CD0E08  A9 1A 22     MX
    ORA $20C201             ; $CD0E0B  0F 01 C2 20  MX
    LDA $24,X               ; $CD0E0F  B5 24        MX
    LDA $4A                 ; $CD0E11  A5 4A        MX
L_CD0E13:
    CMP $4A                 ; $CD0E13  C5 4A        MX
    BEQ L_CD0E13            ; $CD0E15  F0 FC        MX
    JSL L_C203C2            ; $CD0E17  22 C2 03 C2  MX
    LDA $46                 ; $CD0E1B  A5 46        MX
    CMP #$9064              ; $CD0E1D  C9 64 90     MX
    BEQ L_CD0DCB            ; $CD0E20  F0 A9        MX
    CLC                     ; $CD0E22  18           MX
    JSL L_C2010F            ; $CD0E23  22 0F 01 C2  MX
    JSR L_CD0FD2            ; $CD0E27  20 D2 0F     MX
    RTS                     ; $CD0E2A  60           MX
L_CD0E2B:
    STZ $EE                 ; $CD0E2B  64 EE        MX
    JSL L_C20100            ; $CD0E2D  22 00 01 C2  MX
    JSR L_CD12F8            ; $CD0E31  20 F8 12     MX
    LDA $0200               ; $CD0E34  AD 00 02     MX
    BEQ L_CD0E85            ; $CD0E37  F0 4C        MX
    PHP                     ; $CD0E39  08           MX
    PEA $8E96               ; $CD0E3A  F4 96 8E     MX
    PEA $00CE               ; $CD0E3D  F4 CE 00     MX
    PEA $0000               ; $CD0E40  F4 00 00     MX
    PEA $007F               ; $CD0E43  F4 7F 00     MX
    JSL L_C30000            ; $CD0E46  22 00 00 C3  MX
    PLA                     ; $CD0E4A  68           MX
    PLA                     ; $CD0E4B  68           MX
    PLA                     ; $CD0E4C  68           MX
    PLA                     ; $CD0E4D  68           MX
    PLP                     ; $CD0E4E  28           MX
    LDA #$A27F              ; $CD0E4F  A9 7F A2     MX
    COP #$00                ; $CD0E52  02 00        MX
    STX $4302               ; $CD0E54  8E 02 43     MX
    STA $4304               ; $CD0E57  8D 04 43     MX
    LDX #$2000              ; $CD0E5A  A2 00 20     MX
    STX $2116               ; $CD0E5D  8E 16 21     MX
    LDX #$8000              ; $CD0E60  A2 00 80     MX
    STX $4305               ; $CD0E63  8E 05 43     MX
    LDX #$1801              ; $CD0E66  A2 01 18     MX
    STX $4300               ; $CD0E69  8E 00 43     MX
    LDA #$8D01              ; $CD0E6C  A9 01 8D     MX
    PHD                     ; $CD0E6F  0B           MX
    WDM #$20                ; $CD0E70  42 20        MX
    EOR ($15,S),Y           ; $CD0E72  53 15        MX
    LDX #$06C0              ; $CD0E74  A2 C0 06     MX
L_CD0E77:
    LDA $CDA6DE,X           ; $CD0E77  BF DE A6 CD  MX
    STA $7F7FFF,X           ; $CD0E7B  9F FF 7F 7F  MX
    DEX                     ; $CD0E7F  CA           MX
    BNE L_CD0E77            ; $CD0E80  D0 F5        MX
    JMP L_CD0ECE            ; $CD0E82  4C CE 0E     MX
L_CD0E85:
    PHP                     ; $CD0E85  08           MX
    PEA $8137               ; $CD0E86  F4 37 81     MX
    PEA $00CF               ; $CD0E89  F4 CF 00     MX
    PEA $0000               ; $CD0E8C  F4 00 00     MX
    PEA $007F               ; $CD0E8F  F4 7F 00     MX
    JSL L_C30000            ; $CD0E92  22 00 00 C3  MX
    PLA                     ; $CD0E96  68           MX
    PLA                     ; $CD0E97  68           MX
    PLA                     ; $CD0E98  68           MX
    PLA                     ; $CD0E99  68           MX
    PLP                     ; $CD0E9A  28           MX
    db $A9                                                             ; $CD0E9B
L_CD0E9C:
    ADC $0002A2,X           ; $CD0E9C  7F A2 02 00  Mx
    STX $4302               ; $CD0EA0  8E 02 43     Mx
    STA $4304               ; $CD0EA3  8D 04 43     Mx
    LDX #$00                ; $CD0EA6  A2 00        Mx
    JSR L_CD168E            ; $CD0EA8  20 8E 16     Mx
    AND ($A2,X)             ; $CD0EAB  21 A2        Mx
    BRK #$80                ; $CD0EAD  00 80        Mx
    STX $4305               ; $CD0EAF  8E 05 43     Mx
    LDX #$01                ; $CD0EB2  A2 01        Mx
    CLC                     ; $CD0EB4  18           Mx
    STX $4300               ; $CD0EB5  8E 00 43     Mx
    LDA #$8D01              ; $CD0EB8  A9 01 8D     Mx
    PHD                     ; $CD0EBB  0B           Mx
    WDM #$20                ; $CD0EBC  42 20        Mx
    EOR ($15,S),Y           ; $CD0EBE  53 15        Mx
    LDX #$C0                ; $CD0EC0  A2 C0        Mx
    ASL $BF                 ; $CD0EC2  06 BF        Mx
    SEP #$AD                ; $CD0EC4  E2 AD        Mx
    CMP $FF9F               ; $CD0EC6  CD 9F FF     mx
    ADC $D0CA7F,X           ; $CD0EC9  7F 7F CA D0  mx
    db $F5                                                             ; $CD0ECD
L_CD0ECE:
    STZ $0204               ; $CD0ECE  9C 04 02     MX
    LDA $0220               ; $CD0ED1  AD 20 02     MX
    STA $84                 ; $CD0ED4  85 84        MX
    LDA #$8501              ; $CD0ED6  A9 01 85     MX
    STA ($20,X)             ; $CD0ED9  81 20        MX
    SEP #$12                ; $CD0EDB  E2 12        MX
    JSR L_CD13F5            ; $CD0EDD  20 F5 13     Mx
    JSR L_CD0599            ; $CD0EE0  20 99 05     Mx
    JSR L_CD16EE            ; $CD0EE3  20 EE 16     Mx
    JSR L_CD1594            ; $CD0EE6  20 94 15     Mx
    JSR L_CD146A            ; $CD0EE9  20 6A 14     Mx
    JSR L_CD12B1            ; $CD0EEC  20 B1 12     Mx
    LDY #$82                ; $CD0EEF  A0 82        Mx
    ORA $84,S               ; $CD0EF1  03 84        Mx
    ROR $AC                 ; $CD0EF3  66 AC        Mx
    BIT $02                 ; $CD0EF5  24 02        Mx
    JSR L_CD1249            ; $CD0EF7  20 49 12     Mx
    LDY #$EE                ; $CD0EFA  A0 EE        Mx
    TSB $84                 ; $CD0EFC  04 84        Mx
    ROR $A0                 ; $CD0EFE  66 A0        Mx
    PEA $2001               ; $CD0F00  F4 01 20     Mx
    MVN $A9,$12             ; $CD0F03  54 12 A9     Mx
    ORA ($85,X)             ; $CD0F06  01 85        Mx
    TCD                     ; $CD0F08  5B           Mx
    JSR L_CD33BC            ; $CD0F09  20 BC 33     Mx
    JSR L_CD1693            ; $CD0F0C  20 93 16     Mx
    JSR L_CD097A            ; $CD0F0F  20 7A 09     Mx
    JSR L_CD23E0            ; $CD0F12  20 E0 23     Mx
    JSR L_CD23D3            ; $CD0F15  20 D3 23     Mx
    JSR L_CD06B6            ; $CD0F18  20 B6 06     Mx
    JSR L_CD23E0            ; $CD0F1B  20 E0 23     Mx
    JSL L_C20000            ; $CD0F1E  22 00 00 C2  Mx
    LDA #$2217              ; $CD0F22  A9 17 22     Mx
    ORA $20C201             ; $CD0F25  0F 01 C2 20  Mx
    LDA $24,X               ; $CD0F29  B5 24        Mx
    LDA $0200               ; $CD0F2B  AD 00 02     Mx
    BNE L_CD0F33            ; $CD0F2E  D0 03        Mx
    JMP L_CD0FD2            ; $CD0F30  4C D2 0F     Mx
L_CD0F33:
    JSR L_CD23E0            ; $CD0F33  20 E0 23     Mx
    JSR L_CD0FE8            ; $CD0F36  20 E8 0F     Mx
    JSR L_CD22CE            ; $CD0F39  20 CE 22     Mx
    AND #$F003              ; $CD0F3C  29 03 F0     Mx
    BIT $9C                 ; $CD0F3F  24 9C        Mx
    TSB $02                 ; $CD0F41  04 02        Mx
    LDY #$8F                ; $CD0F43  A0 8F        Mx
    BRK #$29                ; $CD0F45  00 29        Mx
    COP #$D0                ; $CD0F47  02 D0        Mx
    PHP                     ; $CD0F49  08           Mx
    LDA #$8D01              ; $CD0F4A  A9 01 8D     Mx
    TSB $02                 ; $CD0F4D  04 02        Mx
    LDY #$F0                ; $CD0F4F  A0 F0        Mx
    BRK #$98                ; $CD0F51  00 98        Mx
    LDX #$94                ; $CD0F53  A2 94        Mx
    ORA ($DF,X)             ; $CD0F55  01 DF        Mx
    BRK #$90                ; $CD0F57  00 90        Mx
    ADC $9F08F0,X           ; $CD0F59  7F F0 08 9F  Mx
    BRK #$90                ; $CD0F5D  00 90        Mx
    ADC $003F22,X           ; $CD0F5F  7F 22 3F 00  Mx
    REP #$20                ; $CD0F63  C2 20        Mx
    LDX $F022,Y             ; $CD0F65  BE 22 F0     Mx
    DEX                     ; $CD0F68  CA           Mx
    JSL L_C2002A            ; $CD0F69  22 2A 00 C2  Mx
    JMP L_CD24A1            ; $CD0F6D  4C A1 24     Mx
    db $A2,$52,$90,$86,$68,$A2,$7F,$00,$86,$6A,$80,$0A,$A2,$62,$90,$86 ; $CD0F70
    db $68,$A2,$7F,$00,$86,$6A,$C2,$20,$A5,$84,$0A,$0A,$0A,$0A,$18,$69 ; $CD0F80
    db $72,$00,$AA,$A0,$00,$00,$B7,$68,$48,$BF,$00,$90,$7F,$97,$68,$68 ; $CD0F90
    db $9F,$00,$90,$7F,$E8,$E8,$E8,$E8,$C8,$C8,$C8,$C8,$C0,$10,$00,$D0 ; $CD0FA0
    db $E5,$E2,$20,$60,$A9,$01,$85,$81,$20,$B4,$22,$F0,$03,$4C,$A5,$1B ; $CD0FB0
    db $20,$E8,$0F,$20,$E0,$23,$20,$BE,$22,$F0,$ED,$22,$2A,$00,$C2,$4C ; $CD0FC0
    db $A1,$24                                                         ; $CD0FD0
L_CD0FD2:
    LDA #$8501              ; $CD0FD2  A9 01 85     Mx
    STA ($20,X)             ; $CD0FD5  81 20        Mx
    INX                     ; $CD0FD7  E8           Mx
    ORA $23E020             ; $CD0FD8  0F 20 E0 23  Mx
    JSR L_CD22BE            ; $CD0FDC  20 BE 22     Mx
    BEQ L_CD0FD6            ; $CD0FDF  F0 F5        Mx
    JSL L_C2002A            ; $CD0FE1  22 2A 00 C2  Mx
    JMP L_CD24A1            ; $CD0FE5  4C A1 24     Mx
L_CD0FE8:
    LDA $81                 ; $CD0FE8  A5 81        Mx
    BEQ L_CD1001            ; $CD0FEA  F0 15        Mx
    LDY $7F                 ; $CD0FEC  A4 7F        Mx
    LDX #$94                ; $CD0FEE  A2 94        Mx
    ORA ($A5,X)             ; $CD0FF0  01 A5        Mx
    LSR                     ; $CD0FF2  4A           Mx
    LSR                     ; $CD0FF3  4A           Mx
    LSR                     ; $CD0FF4  4A           Mx
    AND #$F001              ; $CD0FF5  29 01 F0     Mx
    ORA $A0,S               ; $CD0FF8  03 A0        Mx
    CPX #$00                ; $CD0FFA  E0 00        Mx
    TYA                     ; $CD0FFC  98           Mx
    STA $7F9001,X           ; $CD0FFD  9F 01 90 7F  Mx
L_CD1001:
    RTS                     ; $CD1001  60           Mx
    db $A2,$00,$00,$A0,$10,$00,$A9,$00,$9F,$00,$80,$7F,$9F,$80,$86,$7F ; $CD1002
    db $9F,$81,$86,$7F,$E8,$E8,$E8,$E8,$88,$D0,$ED,$A0,$0D,$00,$A2,$00 ; $CD1012
    db $00,$C2,$20,$A9,$00,$00,$9F,$00,$80,$7F,$9F,$24,$80,$7F,$9F,$3E ; $CD1022
    db $80,$7F,$8A,$18,$69,$80,$00,$AA,$88,$D0,$E8,$E2,$20,$20,$E0,$23 ; $CD1032
    db $60,$EA,$01,$F6,$01,$5A,$01,$42,$01,$6A,$02,$76,$02,$1A,$02,$02 ; $CD1042
    db $02,$EA,$02,$F6,$02,$DA,$02,$C2,$02,$6A,$03,$76,$03,$9A,$03,$82 ; $CD1052
    db $03,$EA,$03,$F6,$03,$5A,$04,$42,$04,$6A,$04,$76,$04,$1A,$05,$02 ; $CD1062
    db $05,$6A,$05,$78,$05,$DE,$05,$EA,$05,$F6,$05                     ; $CD1072
L_CD107D:
    LDX #$0000              ; $CD107D  A2 00 00     MX
L_CD1080:
    JSR L_CD10B8            ; $CD1080  20 B8 10     MX
    CMP #$F032              ; $CD1083  C9 32 F0     MX
    ORA [$DA]               ; $CD1086  07 DA        MX
    JSR L_CD1254            ; $CD1088  20 54 12     MX
    PLX                     ; $CD108B  FA           MX
    BRA L_CD1080            ; $CD108C  80 F2        MX
    db $DA,$20,$5A,$12,$FA,$20,$B8,$10,$DA,$20,$5A,$12,$FA,$20,$B8,$10 ; $CD108E
    db $DA,$20,$5A,$12,$FA,$20,$B8,$10,$DA,$AC,$24,$02,$20,$54,$12,$FA ; $CD109E
    db $20,$B8,$10,$AC,$62,$02,$20,$54,$12,$60                         ; $CD10AE
L_CD10B8:
    REP #$20                ; $CD10B8  C2 20        MX
    LDA $029C,X             ; $CD10BA  BD 9C 02     MX
    TAY                     ; $CD10BD  A8           MX
    LDA $CD1043,X           ; $CD10BE  BF 43 10 CD  MX
    STA $66                 ; $CD10C2  85 66        MX
    INX                     ; $CD10C4  E8           MX
    INX                     ; $CD10C5  E8           MX
    TXA                     ; $CD10C6  8A           MX
    SEP #$20                ; $CD10C7  E2 20        MX
    RTS                     ; $CD10C9  60           mX
    db $A0,$82,$03,$84,$66,$A4,$AC,$20,$49,$12,$A0,$70,$03,$84,$66,$A0 ; $CD10CA
    db $00,$00,$20,$4E,$12,$A0,$B4,$04,$84,$66,$A4,$CE,$4C,$60,$12,$A0 ; $CD10DA
    db $82,$03,$84,$66,$A4,$AC,$20,$01,$12,$A0,$70,$03,$84,$66,$20,$12 ; $CD10EA
    db $11,$AC,$1E,$02,$20,$07,$12,$A0,$B4,$04,$84,$66,$20,$0F,$11,$20 ; $CD10FA
    db $19,$12,$4C,$7A,$09,$A4,$CE,$60,$C2,$20,$A5,$8E,$0A,$AA,$BF,$80 ; $CD110A
    db $11,$CD,$C9,$08,$00,$D0,$0F,$A5,$8E,$0A,$AA,$BD,$04,$02,$F0,$06 ; $CD111A
    db $0A,$AA,$BF,$A0,$11,$CD,$8D,$1E,$02,$A8,$A5,$8E,$C9,$06,$00,$D0 ; $CD112A
    db $42,$A9,$00,$00,$8D,$1E,$02,$A2,$B4,$00,$A0,$2C,$01,$20,$6E,$11 ; $CD113A
    db $A2,$BA,$00,$A0,$4B,$00,$20,$6E,$11,$A2,$C0,$00,$A0,$FA,$00,$20 ; $CD114A
    db $6E,$11,$A5,$AA,$29,$FF,$00,$F0,$09,$A2,$C6,$00,$A0,$50,$00,$20 ; $CD115A
    db $6E,$11,$80,$0F,$B5,$00,$D5,$02,$F0,$08,$98,$18,$6D,$1E,$02,$8D ; $CD116A
    db $1E,$02,$60,$E2,$20,$60,$F4,$01,$2C,$01,$4B,$00,$FA,$00,$50,$00 ; $CD117A
    db $96,$00,$E8,$03,$FA,$00,$00,$00,$08,$00,$08,$00,$08,$00,$08,$00 ; $CD118A
    db $00,$00,$00,$00,$00,$00,$00,$00,$C2,$01,$F4,$01,$F4,$01,$F4,$01 ; $CD119A
    db $0D,$02,$F4,$01,$3F,$02,$26,$02,$26,$02,$26,$02,$DB,$01,$26,$02 ; $CD11AA
    db $A9,$01,$3F,$02,$A0,$58,$03,$84,$66,$20,$DA,$11,$A0,$00,$00,$20 ; $CD11BA
    db $54,$12,$A0,$AE,$02,$84,$66,$A4,$AC,$A0,$00,$00,$20,$49,$12,$60 ; $CD11CA
    db $C2,$20,$A5,$84,$0A,$AA,$BF,$D6,$12,$CD,$8D,$1E,$02,$A8,$E2,$20 ; $CD11DA
    db $60,$A0,$58,$03,$84,$66,$20,$DA,$11,$20,$0D,$12,$A0,$AE,$02,$84 ; $CD11EA
    db $66,$A4,$AC,$20,$01,$12,$60,$A6,$66,$E8,$E8,$86,$66,$A2,$10,$27 ; $CD11FA
    db $20,$23,$12,$A2,$E8,$03,$20,$23,$12,$A2,$64,$00,$20,$23,$12,$A2 ; $CD120A
    db $0A,$00,$20,$23,$12,$98,$0A,$80,$03,$20,$74,$12,$5A,$1A,$A0,$01 ; $CD121A
    db $00,$A6,$66,$38,$FF,$00,$88,$7F,$F0,$0F,$B0,$03,$A0,$FF,$FF,$98 ; $CD122A
    db $18,$7F,$00,$88,$7F,$9F,$00,$88,$7F,$E8,$E8,$86,$66,$7A,$60     ; $CD123A
L_CD1249:
    LDA #$2000              ; $CD1249  A9 00 20     Mx
    STY $A212               ; $CD124C  8C 12 A2     Mx
    BPL L_CD1278            ; $CD124F  10 27        Mx
    JSR L_CD126B            ; $CD1251  20 6B 12     Mx
L_CD1254:
    LDX #$E8                ; $CD1254  A2 E8        Mx
    ORA $20,S               ; $CD1256  03 20        Mx
    RTL                     ; $CD1258  6B           Mx
    db $12,$A2,$64,$00,$20,$6B,$12,$A2,$0A,$00,$20,$6B,$12,$98,$0A,$4C ; $CD1259
    db $8C,$12                                                         ; $CD1269
L_CD126B:
    JSR L_CD1274            ; $CD126B  20 74 12     Mx
    PHY                     ; $CD126E  5A           Mx
    JSR L_CD128C            ; $CD126F  20 8C 12     Mx
    PLY                     ; $CD1272  7A           Mx
    RTS                     ; $CD1273  60           Mx
L_CD1274:
    REP #$20                ; $CD1274  C2 20        Mx
    STX $5E                 ; $CD1276  86 5E        Mx
L_CD1278:
    TYA                     ; $CD1278  98           Mx
    LDY #$FF                ; $CD1279  A0 FF        Mx
    SBC $E538C8,X           ; $CD127B  FF C8 38 E5  Mx
    LSR $FAB0,X             ; $CD127F  5E B0 FA     Mx
    CLC                     ; $CD1282  18           Mx
    ADC $5E                 ; $CD1283  65 5E        Mx
    PHA                     ; $CD1285  48           Mx
    TYA                     ; $CD1286  98           Mx
    ASL                     ; $CD1287  0A           Mx
    PLY                     ; $CD1288  7A           Mx
    SEP #$20                ; $CD1289  E2 20        Mx
    RTS                     ; $CD128B  60           mx
L_CD128C:
    LDX $66                 ; $CD128C  A6 66        Mx
    INC                     ; $CD128E  1A           Mx
    STA $7F8800,X           ; $CD128F  9F 00 88 7F  Mx
    INX                     ; $CD1293  E8           Mx
    LDA #$9F18              ; $CD1294  A9 18 9F     Mx
    BRK #$88                ; $CD1297  00 88        Mx
    ADC $6686E8,X           ; $CD1299  7F E8 86 66  Mx
    RTS                     ; $CD129D  60           Mx
    db $C2,$20,$A5,$84,$0A,$29,$FF,$00,$AA,$BF,$C2,$12,$CD,$A8,$E2,$20 ; $CD129E
    db $4C,$B4,$12                                                     ; $CD12AE
L_CD12B1:
    LDY #$8F                ; $CD12B1  A0 8F        Mx
    TSX                     ; $CD12B3  BA           Mx
L_CD12B4:
    STY $7E                 ; $CD12B4  84 7E        Mx
    LDA #$8532              ; $CD12B6  A9 32 85     Mx
    ADC [$A9],Y             ; $CD12B9  77 A9        Mx
    DEX                     ; $CD12BB  CA           Mx
    LDX #$94                ; $CD12BC  A2 94        Mx
    ORA ($4C,X)             ; $CD12BE  01 4C        Mx
    ROL $19                 ; $CD12C0  26 19        Mx
    DEX                     ; $CD12C2  CA           Mx
    PHY                     ; $CD12C3  5A           Mx
    PEA $BC5A               ; $CD12C4  F4 5A BC     Mx
    BRL L_CD95B0            ; $CD12C7  82 E6 82     Mx
    db $AF,$AA,$D9,$AA,$F1,$B5,$02,$00,$04,$2A,$26,$0A,$BE,$0A,$BE,$0A ; $CD12CA
    db $C4,$09,$B8,$0B,$B8,$0B,$C4,$09                                 ; $CD12DA
L_CD12E2:
    LDA #$8D13              ; $CD12E2  A9 13 8D     MX
    BIT $9C21               ; $CD12E5  2C 21 9C     MX
    AND ($21,S),Y           ; $CD12E8  33 21        MX
    LDA #$8D00              ; $CD12EA  A9 00 8D     MX
    BRK #$21                ; $CD12ED  00 21        MX
    LDA #$8DA1              ; $CD12EF  A9 A1 8D     MX
    BRK #$42                ; $CD12F2  00 42        MX
    STA $0B                 ; $CD12F4  85 0B        MX
    CLI                     ; $CD12F6  58           MX
    RTS                     ; $CD12F7  60           MX
L_CD12F8:
    PHP                     ; $CD12F8  08           MX
    PEA $5824               ; $CD12F9  F4 24 58     MX
    PEA $00CF               ; $CD12FC  F4 CF 00     MX
    PEA $0000               ; $CD12FF  F4 00 00     MX
    PEA $007F               ; $CD1302  F4 7F 00     MX
    JSL L_C30000            ; $CD1305  22 00 00 C3  MX
    PLA                     ; $CD1309  68           MX
    PLA                     ; $CD130A  68           MX
    PLA                     ; $CD130B  68           MX
    PLA                     ; $CD130C  68           MX
    PLP                     ; $CD130D  28           MX
    PHP                     ; $CD130E  08           MX
    PEA $6FBE               ; $CD130F  F4 BE 6F     MX
    PEA $00CF               ; $CD1312  F4 CF 00     MX
    PEA $2000               ; $CD1315  F4 00 20     MX
    PEA $007F               ; $CD1318  F4 7F 00     MX
    JSL L_C30000            ; $CD131B  22 00 00 C3  MX
    PLA                     ; $CD131F  68           MX
    PLA                     ; $CD1320  68           MX
    PLA                     ; $CD1321  68           MX
    PLA                     ; $CD1322  68           MX
    PLP                     ; $CD1323  28           MX
    SEP #$20                ; $CD1324  E2 20        MX
    REP #$10                ; $CD1326  C2 10        mX
    LDA #$80                ; $CD1328  A9 80        mX
    STA $2100               ; $CD132A  8D 00 21     mX
    LDA #$01                ; $CD132D  A9 01        mX
    STA $4200               ; $CD132F  8D 00 42     mX
    STA $0B                 ; $CD1332  85 0B        mX
    LDA #$00                ; $CD1334  A9 00        mX
    STA $420C               ; $CD1336  8D 0C 42     mX
    STA $210D               ; $CD1339  8D 0D 21     mX
    STA $210D               ; $CD133C  8D 0D 21     mX
    STA $210F               ; $CD133F  8D 0F 21     mX
    STA $210F               ; $CD1342  8D 0F 21     mX
    DEC                     ; $CD1345  3A           mX
    STA $210E               ; $CD1346  8D 0E 21     mX
    STA $210E               ; $CD1349  8D 0E 21     mX
    STA $2110               ; $CD134C  8D 10 21     mX
    STA $2110               ; $CD134F  8D 10 21     mX
    LDX #$0004              ; $CD1352  A2 04 00     mX
    STX $04                 ; $CD1355  86 04        mX
    LDX #$00CD              ; $CD1357  A2 CD 00     mX
    STX $06                 ; $CD135A  86 06        mX
    LDA #$03                ; $CD135C  A9 03        mX
    STA $2105               ; $CD135E  8D 05 21     mX
    LDA #$70                ; $CD1361  A9 70        mX
    STA $2107               ; $CD1363  8D 07 21     mX
    LDA #$78                ; $CD1366  A9 78        mX
    STA $2108               ; $CD1368  8D 08 21     mX
    LDA #$62                ; $CD136B  A9 62        mX
    STA $210B               ; $CD136D  8D 0B 21     mX
    LDA #$00                ; $CD1370  A9 00        mX
    STA $2101               ; $CD1372  8D 01 21     mX
    STA $2101               ; $CD1375  8D 01 21     mX
    LDA #$80                ; $CD1378  A9 80        mX
    STA $2115               ; $CD137A  8D 15 21     mX
    LDX #$0200              ; $CD137D  A2 00 02     mX
L_CD1380:
    LDA $CD969F,X           ; $CD1380  BF 9F 96 CD  mX
    STA $7F935F,X           ; $CD1384  9F 5F 93 7F  mX
    DEX                     ; $CD1388  CA           mX
    BNE L_CD1380            ; $CD1389  D0 F5        mX
    LDA #$30                ; $CD138B  A9 30        mX
    STA $80                 ; $CD138D  85 80        mX
    JSR L_CD242B            ; $CD138F  20 2B 24     mX
    LDA #$CF                ; $CD1392  A9 CF        mX
    LDX #$4824              ; $CD1394  A2 24 48     mX
    STX $4302               ; $CD1397  8E 02 43     mX
    STA $4304               ; $CD139A  8D 04 43     mX
    LDX #$6000              ; $CD139D  A2 00 60     mX
    STX $2116               ; $CD13A0  8E 16 21     mX
    LDX #$1000              ; $CD13A3  A2 00 10     mX
    STX $4305               ; $CD13A6  8E 05 43     mX
    LDX #$1801              ; $CD13A9  A2 01 18     mX
    STX $4300               ; $CD13AC  8E 00 43     mX
    LDA #$01                ; $CD13AF  A9 01        mX
    STA $420B               ; $CD13B1  8D 0B 42     mX
    LDA #$7F                ; $CD13B4  A9 7F        mX
    LDX #$0000              ; $CD13B6  A2 00 00     mX
    STX $4302               ; $CD13B9  8E 02 43     mX
    STA $4304               ; $CD13BC  8D 04 43     mX
    LDX #$0000              ; $CD13BF  A2 00 00     mX
    STX $2116               ; $CD13C2  8E 16 21     mX
    LDX #$4000              ; $CD13C5  A2 00 40     mX
    STX $4305               ; $CD13C8  8E 05 43     mX
    LDX #$1801              ; $CD13CB  A2 01 18     mX
    STX $4300               ; $CD13CE  8E 00 43     mX
    LDA #$01                ; $CD13D1  A9 01        mX
    STA $420B               ; $CD13D3  8D 0B 42     mX
    JSR L_CD23F1            ; $CD13D6  20 F1 23     mX
    JMP L_CD1562            ; $CD13D9  4C 62 15     mX
    db $A0,$10,$68,$84,$75,$84,$78,$A9,$07,$85,$7A,$A9,$B8,$85,$7C,$A9 ; $CD13DC
    db $31,$85,$77,$A2,$78,$01,$20,$87,$18                             ; $CD13EC
L_CD13F5:
    LDY #$3C                ; $CD13F5  A0 3C        Mx
    ROR $7584,X             ; $CD13F7  7E 84 75     Mx
    STY $78                 ; $CD13FA  84 78        Mx
    LDA #$8508              ; $CD13FC  A9 08 85     Mx
    PLY                     ; $CD13FF  7A           Mx
    LDA #$85B0              ; $CD1400  A9 B0 85     Mx
    JMP ($33A9,X)           ; $CD1403  7C A9 33     Mx
    db $85,$77,$A2,$40,$01,$20,$87,$18,$A0,$3C,$86,$84,$75,$A0,$04,$01 ; $CD1406
    db $84,$7A,$A9,$C0,$85,$7C,$A2,$24,$00,$20,$DC,$18,$A9,$CA,$85,$7C ; $CD1416
    db $AD,$20,$02,$1A,$1A,$0A,$09,$31,$85,$77,$A0,$10,$20,$84,$75,$A0 ; $CD1426
    db $03,$03,$84,$7A,$A2,$00,$00,$20,$DC,$18,$60,$A9,$30,$85,$77,$A0 ; $CD1436
    db $5C,$AE,$A6,$84,$BF,$D0,$12,$CD,$A2,$3C,$00,$4C,$26,$19,$A9,$30 ; $CD1446
    db $85,$77,$A0,$09,$A6,$A6,$84,$BF,$D0,$12,$CD,$18,$69,$40,$A2,$40 ; $CD1456
    db $00,$4C,$26,$19                                                 ; $CD1466
L_CD146A:
    LDA $025E               ; $CD146A  AD 5E 02     Mx
    INC                     ; $CD146D  1A           Mx
    INC                     ; $CD146E  1A           Mx
    ASL                     ; $CD146F  0A           Mx
    ORA #$8531              ; $CD1470  09 31 85     Mx
    ADC [$A9],Y             ; $CD1473  77 A9        Mx
    ROL                     ; $CD1475  2A           Mx
    STA $7C                 ; $CD1476  85 7C        Mx
    LDY #$C0                ; $CD1478  A0 C0        Mx
    JSR L_CD7584            ; $CD147A  20 84 75     Mx
    LDY #$03                ; $CD147D  A0 03        Mx
    ORA $84,S               ; $CD147F  03 84        Mx
    PLY                     ; $CD1481  7A           Mx
    LDX #$0C                ; $CD1482  A2 0C        Mx
    ORA ($20,X)             ; $CD1484  01 20        Mx
    JML [$A018]             ; $CD1486  DC 18 A0     Mx
    db $A8,$74,$84,$75,$84,$78,$A9,$07,$85,$7A,$A9,$18,$85,$7C,$A9,$35 ; $CD1489
    db $85,$77,$A2,$98,$01,$4C,$87,$18,$A2,$86,$00,$B5,$00,$DA,$A0,$A0 ; $CD1499
    db $08,$A2,$50,$00,$20,$B3,$18,$FA,$E8,$B5,$00,$A0,$D0,$08,$DA,$A2 ; $CD14A9
    db $60,$00,$20,$B3,$18,$FA,$E8,$B5,$00,$A0,$AA,$5C,$DA,$A2,$70,$00 ; $CD14B9
    db $20,$B3,$18,$FA,$E8,$B5,$00,$A0,$D4,$5C,$DA,$A2,$80,$00,$20,$B3 ; $CD14C9
    db $18,$FA,$E8,$B5,$00,$A0,$9C,$84,$DA,$A2,$90,$00,$20,$B3,$18,$FA ; $CD14D9
    db $E8,$B5,$00,$A0,$C6,$84,$DA,$A2,$A0,$00,$20,$B3,$18,$FA,$E8,$B5 ; $CD14E9
    db $00,$A0,$90,$AC,$DA,$A2,$B0,$00,$20,$B3,$18,$FA,$E8,$B5,$00,$A0 ; $CD14F9
    db $BA,$AC,$A2,$C0,$00,$4C,$B3,$18,$A2,$E8,$15,$86,$68,$A2,$CD,$00 ; $CD1509
    db $86,$6A,$80,$0A,$A2,$D7,$15,$86,$68,$A2,$CD,$00,$86,$6A,$A0,$BA ; $CD1519
    db $3A,$A2,$98,$01,$20,$8A,$25,$60,$A2,$D7,$15,$86,$68,$A2,$CD,$00 ; $CD1529
    db $86,$6A,$A0,$BA,$3A,$A2,$98,$01,$20,$8A,$25,$60,$A9,$1B,$8D,$17 ; $CD1539
    db $21,$A9,$00,$8D,$16,$21,$A5,$84,$80,$1C,$A9,$11,$8D,$17,$21,$A9 ; $CD1549
    db $00,$8D,$16,$21,$AD,$5E,$02,$80,$0D                             ; $CD1559
L_CD1562:
    LDA #$1B                ; $CD1562  A9 1B        mX
    STA $2117               ; $CD1564  8D 17 21     mX
    LDA #$00                ; $CD1567  A9 00        mX
    STA $2116               ; $CD1569  8D 16 21     mX
    LDA $0220               ; $CD156C  AD 20 02     mX
    ASL                     ; $CD156F  0A           mX
    STA $5D                 ; $CD1570  85 5D        mX
    ASL                     ; $CD1572  0A           mX
    ASL                     ; $CD1573  0A           mX
    CLC                     ; $CD1574  18           mX
    ADC $5D                 ; $CD1575  65 5D        mX
    STA $5D                 ; $CD1577  85 5D        mX
    STZ $5C                 ; $CD1579  64 5C        mX
    LDX $5C                 ; $CD157B  A6 5C        mX
    LDY #$0500              ; $CD157D  A0 00 05     mX
L_CD1580:
    LDA $CFC3A8,X           ; $CD1580  BF A8 C3 CF  mX
    STA $2118               ; $CD1584  8D 18 21     mX
    INX                     ; $CD1587  E8           mX
    LDA $CFC3A8,X           ; $CD1588  BF A8 C3 CF  mX
    STA $2119               ; $CD158C  8D 19 21     mX
    INX                     ; $CD158F  E8           mX
    DEY                     ; $CD1590  88           mX
    BNE L_CD1580            ; $CD1591  D0 ED        mX
    RTS                     ; $CD1593  60           mX
L_CD1594:
    LDA #$8532              ; $CD1594  A9 32 85     Mx
    ADC [$A5],Y             ; $CD1597  77 A5        Mx
    CPX #$F0                ; $CD1599  E0 F0        Mx
    ORA ($3A,X)             ; $CD159B  01 3A        Mx
    STA $5C                 ; $CD159D  85 5C        Mx
    STZ $5D                 ; $CD159F  64 5D        Mx
    LDY $5C                 ; $CD15A1  A4 5C        Mx
    LDX #$0A                ; $CD15A3  A2 0A        Mx
    BRK #$C2                ; $CD15A5  00 C2        Mx
    JSR L_CD5E86            ; $CD15A7  20 86 5E     Mx
    TYA                     ; $CD15AA  98           Mx
    LDY #$FF                ; $CD15AB  A0 FF        Mx
    SBC $E538C8,X           ; $CD15AD  FF C8 38 E5  Mx
    LSR $FAB0,X             ; $CD15B1  5E B0 FA     Mx
    CLC                     ; $CD15B4  18           Mx
    ADC $5E                 ; $CD15B5  65 5E        Mx
    PHA                     ; $CD15B7  48           Mx
    TYA                     ; $CD15B8  98           Mx
    PLY                     ; $CD15B9  7A           Mx
    SEP #$20                ; $CD15BA  E2 20        Mx
    PHY                     ; $CD15BC  5A           mx
    CLC                     ; $CD15BD  18           mx
    ADC #$C0                ; $CD15BE  69 C0        mx
    LDY #$09                ; $CD15C0  A0 09        mx
    ORA $F8A2               ; $CD15C2  0D A2 F8     mx
    ORA ($20,X)             ; $CD15C5  01 20        mx
    ROL $19                 ; $CD15C7  26 19        mx
    PLY                     ; $CD15C9  7A           mx
    TYA                     ; $CD15CA  98           mx
    CLC                     ; $CD15CB  18           mx
    ADC #$C0                ; $CD15CC  69 C0        mx
    LDY #$11                ; $CD15CE  A0 11        mx
    ORA $FCA2               ; $CD15D0  0D A2 FC     mx
    ORA ($4C,X)             ; $CD15D3  01 4C        mx
    ROL $19                 ; $CD15D5  26 19        mx
    JSR L_CD4553            ; $CD15D7  20 53 45     mx
    JMP L_CD4345            ; $CD15DA  4C 45 43     mx
    db $54,$00,$50,$4C,$41,$59,$45,$52,$5B,$31,$FF,$20,$53,$45,$4C,$45 ; $CD15DD
    db $43,$54,$00,$50,$4C,$41,$59,$45,$52,$5B,$32,$FF,$A5,$EA,$F0,$12 ; $CD15ED
    db $29,$04,$F0,$05,$20,$6C,$16,$80,$03,$20,$73,$16,$A5,$EA,$3A,$85 ; $CD15FD
    db $EA,$60,$20,$6C,$16,$C2,$20,$A5,$8E,$C9,$09,$00,$90,$2E,$38,$E9 ; $CD160D
    db $09,$00,$C9,$04,$00,$90,$17,$38,$E9,$04,$00,$0A,$AA,$B5,$D4,$29 ; $CD161D
    db $FF,$00,$F0,$05,$A9,$19,$00,$80,$13,$A9,$1E,$00,$80,$0E,$0A,$AA ; $CD162D
    db $BD,$16,$02,$D0,$03,$A9,$16,$00,$18,$69,$08,$00,$0A,$AA,$BF,$DC ; $CD163D
    db $2B,$CD,$A2,$1A,$2C,$86,$68,$A2,$CD,$00,$86,$6A,$18,$65,$68,$85 ; $CD164D
    db $68,$E2,$20,$20,$83,$16,$A0,$BA,$78,$A2,$98,$01,$4C,$8A,$25,$A2 ; $CD165D
    db $58,$00,$A9,$30,$80,$05,$A2,$58,$00,$A9,$00,$9F,$97,$91,$7F,$CA ; $CD166D
    db $CA,$CA,$CA,$D0,$F6,$60,$A2,$58,$00,$A9,$E0                     ; $CD167D
L_CD1688:
    STA $7F9195,X           ; $CD1688  9F 95 91 7F  Mx
    DEX                     ; $CD168C  CA           Mx
    DEX                     ; $CD168D  CA           Mx
L_CD168E:
    DEX                     ; $CD168E  CA           Mx
    DEX                     ; $CD168F  CA           Mx
    BNE L_CD1688            ; $CD1690  D0 F6        Mx
    RTS                     ; $CD1692  60           Mx
L_CD1693:
    LDA #$8530              ; $CD1693  A9 30 85     Mx
    ADC [$A9],Y             ; $CD1696  77 A9        Mx
    ORA #$7A85              ; $CD1698  09 85 7A     Mx
    LDX #$70                ; $CD169B  A2 70        Mx
    BRK #$AD                ; $CD169D  00 AD        Mx
    ASL $02,X               ; $CD169F  16 02        Mx
    LDY #$8C                ; $CD16A1  A0 8C        Mx
    TSX                     ; $CD16A3  BA           Mx
    JSR L_CD16C5            ; $CD16A4  20 C5 16     Mx
    INC $7A                 ; $CD16A7  E6 7A        Mx
    LDA $0218               ; $CD16A9  AD 18 02     Mx
    LDY #$A4                ; $CD16AC  A0 A4        Mx
    TSX                     ; $CD16AE  BA           Mx
    JSR L_CD16C5            ; $CD16AF  20 C5 16     Mx
    INC $7A                 ; $CD16B2  E6 7A        Mx
    LDA $021A               ; $CD16B4  AD 1A 02     Mx
    LDY #$BC                ; $CD16B7  A0 BC        Mx
    TSX                     ; $CD16B9  BA           Mx
    JSR L_CD16C5            ; $CD16BA  20 C5 16     Mx
    INC $7A                 ; $CD16BD  E6 7A        Mx
    LDA $021C               ; $CD16BF  AD 1C 02     Mx
    LDY #$D4                ; $CD16C2  A0 D4        Mx
    TSX                     ; $CD16C4  BA           Mx
L_CD16C5:
    DEC                     ; $CD16C5  3A           Mx
    BMI L_CD16E3            ; $CD16C6  30 1B        Mx
    CMP #$9008              ; $CD16C8  C9 08 90     Mx
    ORA $18,S               ; $CD16CB  03 18        Mx
    ADC #$0A08              ; $CD16CD  69 08 0A     Mx
    CLC                     ; $CD16D0  18           Mx
    ADC #$4840              ; $CD16D1  69 40 48     Mx
    LDA $7A                 ; $CD16D4  A5 7A        Mx
    CMP $8E                 ; $CD16D6  C5 8E        Mx
    BNE L_CD16DF            ; $CD16D8  D0 05        Mx
    PLA                     ; $CD16DA  68           Mx
    CLC                     ; $CD16DB  18           Mx
    ADC #$4840              ; $CD16DC  69 40 48     Mx
L_CD16DF:
    PLA                     ; $CD16DF  68           Mx
    JMP L_CD1926            ; $CD16E0  4C 26 19     Mx
L_CD16E3:
    LDA #$9FE0              ; $CD16E3  A9 E0 9F     Mx
    ORA ($90,X)             ; $CD16E6  01 90        Mx
    ADC $E8E8E8,X           ; $CD16E8  7F E8 E8 E8  Mx
    INX                     ; $CD16EC  E8           Mx
    RTS                     ; $CD16ED  60           Mx
L_CD16EE:
    LDA #$8530              ; $CD16EE  A9 30 85     Mx
    ADC [$A9],Y             ; $CD16F1  77 A9        Mx
    ORA $7A85               ; $CD16F3  0D 85 7A     Mx
    LDX #$40                ; $CD16F6  A2 40        Mx
    BRK #$A5                ; $CD16F8  00 A5        Mx
    PEI ($A0)               ; $CD16FA  D4 A0        Mx
    PHD                     ; $CD16FC  0B           Mx
    LDY $20                 ; $CD16FD  A4 20        Mx
    CMP $16                 ; $CD16FF  C5 16        Mx
    INC $7A                 ; $CD1701  E6 7A        Mx
    LDA $D6                 ; $CD1703  A5 D6        Mx
    LDY #$24                ; $CD1705  A0 24        Mx
    LDY $20                 ; $CD1707  A4 20        Mx
    CMP $16                 ; $CD1709  C5 16        Mx
    INC $7A                 ; $CD170B  E6 7A        Mx
    LDA $D8                 ; $CD170D  A5 D8        Mx
    LDY #$0B                ; $CD170F  A0 0B        Mx
    LDY $C520,X             ; $CD1711  BC 20 C5     Mx
    ASL $E6,X               ; $CD1714  16 E6        Mx
    PLY                     ; $CD1716  7A           Mx
    LDA $DA                 ; $CD1717  A5 DA        Mx
    LDY #$23                ; $CD1719  A0 23        Mx
    LDY $C520,X             ; $CD171B  BC 20 C5     Mx
    ASL $C2,X               ; $CD171E  16 C2        Mx
    JSR L_CDDCA5            ; $CD1720  20 A5 DC     Mx
    ASL                     ; $CD1723  0A           Mx
    TAX                     ; $CD1724  AA           Mx
    SEP #$20                ; $CD1725  E2 20        Mx
    LDA $D4,X               ; $CD1727  B5 D4        mx
    DEC                     ; $CD1729  3A           mx
    BMI L_CD173D            ; $CD172A  30 11        mx
    CMP #$08                ; $CD172C  C9 08        mx
    BCC L_CD1733            ; $CD172E  90 03        mx
    CLC                     ; $CD1730  18           mx
    ADC #$08                ; $CD1731  69 08        mx
L_CD1733:
    ASL                     ; $CD1733  0A           mx
    LDY #$5C                ; $CD1734  A0 5C        mx
    LDX $3CA2               ; $CD1736  AE A2 3C     mx
    BRK #$20                ; $CD1739  00 20        mx
    ROL $19                 ; $CD173B  26 19        mx
L_CD173D:
    RTS                     ; $CD173D  60           mx
    db $A5,$8E,$48,$20,$CE,$22,$A2,$00,$00,$4A,$B0,$0C,$E8,$4A,$B0,$08 ; $CD173E
    db $E8,$4A,$B0,$04,$E8,$4A,$90,$3B,$86,$5C,$A5,$8E,$0A,$0A,$18,$65 ; $CD174E
    db $5C,$85,$5C,$A5,$AA,$D0,$06,$A9,$44,$65,$5C,$85,$5C,$A6,$5C,$BF ; $CD175E
    db $F0,$09,$CD,$F0,$1E,$18,$65,$8E,$85,$8E,$C9,$04,$D0,$10,$A5,$AA ; $CD176E
    db $D0,$0C,$A5,$5C,$29,$03,$D0,$02,$A9,$01,$85,$5C,$80,$CC,$A9,$08 ; $CD177E
    db $20,$D6,$24,$68,$C5,$8E,$F0,$04,$22,$3F,$00,$C2,$60,$A2,$E0,$E0 ; $CD178E
    db $86,$75,$A5,$8E,$38,$E9,$09,$30,$13,$0A,$85,$5C,$64,$5D,$A6,$5C ; $CD179E
    db $BF,$22,$18,$CD,$85,$75,$BF,$23,$18,$CD,$85,$76,$A2,$80,$00,$A9 ; $CD17AE
    db $31,$85,$77,$A0,$02,$02,$84,$7A,$A9,$68,$85,$7C,$20,$DC,$18,$A0 ; $CD17BE
    db $9F,$8B,$A5,$8E,$C9,$06,$F0,$11,$A0,$C4,$92,$C9,$07,$F0,$0A,$A0 ; $CD17CE
    db $F2,$B6,$C9,$08,$F0,$03,$A0,$E0,$E0,$20,$B4,$12,$A9,$30,$85,$77 ; $CD17DE
    db $A2,$9C,$00,$A9,$00,$A0,$95,$08,$20,$32,$18,$A9,$01,$A0,$97,$20 ; $CD17EE
    db $20,$32,$18,$A9,$02,$A0,$94,$3C,$20,$32,$18,$A9,$03,$A0,$90,$55 ; $CD17FE
    db $20,$32,$18,$A9,$04,$A0,$8A,$70,$20,$32,$18,$A9,$05,$A0,$86,$9D ; $CD180E
    db $20,$32,$18,$60,$85,$B3,$9D,$B3,$B5,$B3,$CD,$B3,$05,$9B,$1D,$9B ; $CD181E
    db $05,$B3,$1D,$B3,$C5,$8E,$D0,$18,$20,$BE,$22,$F0,$0E,$C2,$20,$98 ; $CD182E
    db $38,$E9,$02,$00,$18,$69,$00,$02,$A8,$E2,$20,$A9,$2C,$4C,$26,$19 ; $CD183E
    db $A9,$2E,$4C,$26,$19,$AD,$20,$02,$1A,$A0,$D0,$08,$A2,$50,$00,$20 ; $CD184E
    db $B3,$18,$AD,$5E,$02,$1A,$A0,$C6,$34,$A2,$60,$00,$4C,$B3,$18     ; $CD185E
L_CD186D:
    LDA $0220               ; $CD186D  AD 20 02     MX
    INC                     ; $CD1870  1A           MX
    LDY #$08A0              ; $CD1871  A0 A0 08     MX
    LDX #$0050              ; $CD1874  A2 50 00     MX
    JSR L_CD18B3            ; $CD1877  20 B3 18     MX
    LDA $025E               ; $CD187A  AD 5E 02     MX
    INC                     ; $CD187D  1A           MX
    LDY #$08D0              ; $CD187E  A0 D0 08     MX
    LDX #$0060              ; $CD1881  A2 60 00     MX
    JMP L_CD18B3            ; $CD1884  4C B3 18     MX
    db $A5,$7A,$48,$A5,$75,$9F,$00,$90,$7F,$18,$69,$08,$85,$75,$E8,$A5 ; $CD1887
    db $76,$9F,$00,$90,$7F,$E8,$A5,$7C,$9F,$00,$90,$7F,$E8,$1A,$85,$7C ; $CD1897
    db $A5,$77,$9F,$00,$90,$7F,$E8,$68,$3A,$D0,$D7,$60                 ; $CD18A7
L_CD18B3:
    STY $75                 ; $CD18B3  84 75        MX
    LDY #$0202              ; $CD18B5  A0 02 02     MX
    STY $7A                 ; $CD18B8  84 7A        MX
    AND #$8507              ; $CD18BA  29 07 85     MX
    JML $0A0A0A             ; $CD18BD  5C 0A 0A 0A  MX
    db $85,$5D,$29,$F0,$0A,$85,$5E,$A5,$5D,$29,$0F,$05,$5E,$85,$7C,$A5 ; $CD18C1
    db $5C,$D0,$02,$A9,$04,$1A,$0A,$09,$31,$85,$77,$A5,$75,$85,$78,$A5 ; $CD18D1
    db $7A,$48,$A5,$75,$9F,$00,$90,$7F,$18,$69,$10,$85,$75,$E8,$A5,$76 ; $CD18E1
    db $9F,$00,$90,$7F,$E8,$A5,$7C,$9F,$00,$90,$7F,$E8,$1A,$1A,$89,$10 ; $CD18F1
    db $F0,$03,$18,$69,$10,$85,$7C,$A5,$77,$9F,$00,$90,$7F,$E8,$68,$3A ; $CD1901
    db $D0,$CF,$A5,$78,$85,$75,$A5,$76,$18,$69,$10,$85,$76,$A5,$7B,$3A ; $CD1911
    db $85,$7B,$D0,$BB,$60                                             ; $CD1921
L_CD1926:
    PHA                     ; $CD1926  48           Mx
    STY $75                 ; $CD1927  84 75        Mx
    LDA $75                 ; $CD1929  A5 75        Mx
    STA $7F9000,X           ; $CD192B  9F 00 90 7F  Mx
    INX                     ; $CD192F  E8           Mx
    LDA $76                 ; $CD1930  A5 76        Mx
    STA $7F9000,X           ; $CD1932  9F 00 90 7F  Mx
    INX                     ; $CD1936  E8           Mx
    PLA                     ; $CD1937  68           Mx
    STA $7F9000,X           ; $CD1938  9F 00 90 7F  Mx
    INX                     ; $CD193C  E8           Mx
    LDA $77                 ; $CD193D  A5 77        Mx
    STA $7F9000,X           ; $CD193F  9F 00 90 7F  Mx
    INX                     ; $CD1943  E8           Mx
    RTS                     ; $CD1944  60           Mx
L_CD1945:
    PHX                     ; $CD1945  DA           MX
    PHY                     ; $CD1946  5A           MX
    JSR L_CD22DA            ; $CD1947  20 DA 22     MX
    PLY                     ; $CD194A  7A           MX
    PLX                     ; $CD194B  FA           MX
    STZ $0222               ; $CD194C  9C 22 02     MX
    STZ $AA                 ; $CD194F  64 AA        MX
    STX $0212               ; $CD1951  8E 12 02     MX
    TXA                     ; $CD1954  8A           MX
    EOR #$8D01              ; $CD1955  49 01 8D     MX
    RTS                     ; $CD1958  60           MX
    db $02,$98,$89,$01,$F0,$05,$20,$B3,$1B,$80,$1D,$20,$78,$0A,$AD,$12 ; $CD1959
    db $02,$30,$15,$9C,$22,$02,$64,$AA,$AD,$12,$02,$49,$01,$8D,$60,$02 ; $CD1969
    db $A9,$03,$8D,$58,$02,$8D,$96,$02,$60,$C2,$20,$22,$00,$01,$C2,$A9 ; $CD1979
    db $18,$00,$85,$59,$E2,$20,$9C,$12,$02,$20,$BC,$19,$AD,$12,$02,$C9 ; $CD1989
    db $02,$D0,$06,$20,$25,$1A,$4C,$82,$19,$64,$79,$20,$35,$1B,$A5,$79 ; $CD1999
    db $D0,$D7,$9C,$22,$02,$64,$AA,$AD,$12,$02,$49,$01,$8D,$60,$02,$20 ; $CD19A9
    db $C9,$05,$60,$20,$DA,$22,$9C,$12,$02,$A2,$EF,$26,$86,$68,$A2,$CD ; $CD19B9
    db $00,$86,$6A,$A0,$0C,$20,$A2,$08,$00,$20,$F2,$24,$A2,$84,$2A,$86 ; $CD19C9
    db $68,$A2,$CD,$00,$86,$6A,$A0,$14,$18,$A2,$12,$02,$20,$14,$1A,$A9 ; $CD19D9
    db $00,$85,$A2,$A6,$5E,$20,$BA,$21,$20,$E0,$23,$A5,$A2,$D0,$14,$1A ; $CD19E9
    db $85,$A2,$A5,$59,$F0,$0A,$22,$00,$00,$C2,$22,$0F,$01,$C2,$64,$59 ; $CD19F9
    db $20,$B5,$24,$20,$AA,$22,$F0,$DB,$4C,$A1,$24,$86,$5E,$A2,$40,$01 ; $CD1A09
    db $20,$8A,$25,$20,$E0,$23,$A9,$00,$8D,$00,$21,$60,$22,$00,$01,$C2 ; $CD1A19
    db $64,$79,$20,$DA,$22,$A2,$3F,$00,$BF,$B7,$27,$CD,$9F,$7D,$95,$7F ; $CD1A29
    db $CA,$D0,$F5,$64,$94,$64,$96,$64,$97,$A2,$7E,$95,$86,$68,$A2,$7F ; $CD1A39
    db $00,$86,$6A,$A0,$0C,$20,$A2,$20,$00,$20,$F2,$24,$A2,$66,$2B,$86 ; $CD1A49
    db $68,$A2,$CD,$00,$86,$6A,$A0,$24,$18,$A2,$94,$00,$20,$14,$1A,$A9 ; $CD1A59
    db $00,$85,$A2,$A2,$7E,$95,$86,$68,$A2,$7F,$00,$86,$6A,$A0,$0C,$20 ; $CD1A69
    db $A2,$20,$00,$20,$F2,$24,$20,$5D,$22,$20,$DA,$1A,$A6,$5E,$20,$BA ; $CD1A79
    db $21,$20,$E0,$23,$A5,$A2,$D0,$06,$1A,$85,$A2,$20,$B5,$24,$20,$B4 ; $CD1A89
    db $22,$F0,$03,$4C,$A5,$1B,$20,$AA,$22,$F0,$C8,$A5,$94,$C9,$02,$F0 ; $CD1A99
    db $2C,$C9,$01,$F0,$11,$C2,$20,$A5,$96,$22,$00,$00,$C2,$22,$0F,$01 ; $CD1AA9
    db $C2,$E2,$20,$4C,$CE,$1A,$A5,$97,$29,$FF,$C2,$20,$A2,$FF,$FF,$22 ; $CD1AB9
    db $4D,$02,$C2,$E2,$20,$20,$AA,$22,$D0,$FB,$4C,$6C,$1A,$20,$A1,$24 ; $CD1AC9
    db $60,$C2,$20,$A5,$96,$29,$FF,$00,$8D,$04,$42,$E2,$20,$A9,$0A,$8D ; $CD1AD9
    db $06,$42,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$AD,$14,$42,$18,$69,$30 ; $CD1AE9
    db $8F,$9B,$95,$7F,$AD,$16,$42,$18,$69,$30,$8F,$9C,$95,$7F,$C2,$20 ; $CD1AF9
    db $A5,$97,$29,$FF,$00,$8D,$04,$42,$E2,$20,$A9,$0A,$8D,$06,$42,$EA ; $CD1B09
    db $EA,$EA,$EA,$EA,$EA,$EA,$EA,$AD,$14,$42,$18,$69,$30,$8F,$AD,$95 ; $CD1B19
    db $7F,$AD,$16,$42,$18,$69,$30,$8F,$AE,$95,$7F,$60,$64,$79,$9C,$14 ; $CD1B29
    db $02,$9C,$15,$02,$20,$DA,$22,$9C,$08,$02,$A2,$35,$27,$86,$68,$A2 ; $CD1B39
    db $CD,$00,$86,$6A,$A0,$0C,$20,$A2,$20,$00,$20,$F2,$24,$A2,$D4,$2A ; $CD1B49
    db $86,$68,$A2,$CD,$00,$86,$6A,$A0,$24,$18,$A2,$08,$02,$20,$14,$1A ; $CD1B59
    db $A9,$00,$85,$A2,$A6,$5E,$20,$5A,$21,$20,$E0,$23,$A5,$A2,$D0,$06 ; $CD1B69
    db $1A,$85,$A2,$20,$B5,$24,$20,$B4,$22,$D0,$21,$20,$AA,$22,$F0,$E4 ; $CD1B79
    db $20,$A1,$24,$AD,$08,$02,$20,$B3,$1B,$AD,$12,$02,$30,$9E,$20,$78 ; $CD1B89
    db $0A,$64,$79,$A9,$03,$8D,$58,$02,$8D,$96,$02,$60,$22,$2A,$00,$C2 ; $CD1B99
    db $A9,$FF,$8D,$12,$02,$E6,$79,$4C,$A1,$24,$20,$63,$02,$A9,$FF,$8F ; $CD1BA9
    db $6C,$95,$7F,$A9,$3A,$A2,$0C,$00,$DF,$5F,$95,$7F,$F0,$0E,$A2,$0C ; $CD1BB9
    db $00,$8E,$0A,$02,$A9,$23,$8D,$0E,$02,$4C,$E2,$1B,$9F,$5F,$95,$7F ; $CD1BC9
    db $CA,$D0,$F9,$8E,$0A,$02,$9C,$0E,$02,$20,$DA,$22,$A2,$5A,$28,$86 ; $CD1BD9
    db $68,$A2,$CD,$00,$86,$6A,$A0,$08,$10,$A2,$50,$00,$20,$F2,$24,$A2 ; $CD1BE9
    db $1C,$2B,$86,$68,$A2,$CD,$00,$86,$6A,$A0,$18,$07,$A2,$40,$01,$20 ; $CD1BF9
    db $8A,$25,$20,$42,$1E,$20,$E0,$23,$A9,$00,$8D,$00,$21,$20,$B5,$24 ; $CD1C09
    db $20,$AA,$22,$D0,$FB,$64,$EC,$20,$42,$1E,$20,$E0,$23,$20,$D4,$24 ; $CD1C19
    db $20,$B4,$22,$F0,$03,$4C,$A5,$1B,$20,$AA,$22,$F0,$E8,$A5,$EC,$D0 ; $CD1C29
    db $E6,$A9,$01,$85,$EC,$AE,$0E,$02,$BF,$E2,$28,$CD,$C9,$20,$D0,$03 ; $CD1C39
    db $4C,$20,$1C,$48,$22,$2A,$00,$C2,$68,$C9,$3D,$F0,$32,$C9,$3C,$D0 ; $CD1C49
    db $03,$4C,$C6,$1C,$C9,$3F,$D0,$03,$4C,$E1,$1C,$85,$5C,$AD,$0A,$02 ; $CD1C59
    db $C9,$0C,$F0,$B3,$1A,$8D,$0A,$02,$C9,$0C,$D0,$05,$A9,$23,$8D,$0E ; $CD1C69
    db $02,$A5,$5C,$AE,$0A,$02,$9F,$5F,$95,$7F,$20,$D4,$24,$80,$98,$AD ; $CD1C79
    db $0A,$02,$D0,$03,$4C,$A9,$1B,$20,$A1,$24,$20,$B2,$1C,$D0,$03,$4C ; $CD1C89
    db $C5,$1C,$A9,$3A,$A2,$0C,$00,$9F,$5F,$95,$7F,$CA,$D0,$F9,$20,$F8 ; $CD1C99
    db $1C,$A9,$FF,$8D,$12,$02,$4C,$C5,$1C,$AD,$0A,$02,$C9,$0C,$D0,$0C ; $CD1CA9
    db $20,$4E,$31,$A5,$74,$D0,$05,$20,$39,$30,$A5,$74,$60,$AD,$0A,$02 ; $CD1CB9
    db $D0,$03,$4C,$20,$1C,$3A,$8D,$0A,$02,$AE,$0A,$02,$A9,$3A,$9F,$60 ; $CD1CC9
    db $95,$7F,$20,$D4,$24,$4C,$20,$1C,$A9,$3A,$A2,$0C,$00,$9F,$5F,$95 ; $CD1CD9
    db $7F,$CA,$D0,$F9,$A9,$00,$8D,$0A,$02,$20,$D4,$24,$4C,$20,$1C,$20 ; $CD1CE9
    db $DA,$22,$A2,$D2,$26,$86,$68,$A2,$CD,$00,$86,$6A,$A0,$10,$60,$A2 ; $CD1CF9
    db $00,$00,$20,$F2,$24,$A2,$E4,$26,$86,$68,$A2,$CD,$00,$86,$6A,$A0 ; $CD1D09
    db $58,$C8,$A2,$40,$01,$20,$8A,$25,$20,$E0,$23,$A9,$00,$8D,$00,$21 ; $CD1D19
    db $20,$B5,$24                                                     ; $CD1D29
L_CD1D2C:
    LDA #$01                ; $CD1D2C  A9 01        mX
    STA $55                 ; $CD1D2E  85 55        mX
    LDA $4A                 ; $CD1D30  A5 4A        mX
L_CD1D32:
    CMP $4A                 ; $CD1D32  C5 4A        mX
    BEQ L_CD1D32            ; $CD1D34  F0 FC        mX
    LDA $4A                 ; $CD1D36  A5 4A        mX
    ASL                     ; $CD1D38  0A           mX
    AND #$20                ; $CD1D39  29 20        mX
    LDX #$0143              ; $CD1D3B  A2 43 01     mX
    LDY #$0009              ; $CD1D3E  A0 09 00     mX
L_CD1D41:
    STA $7F9000,X           ; $CD1D41  9F 00 90 7F  mX
    INX                     ; $CD1D45  E8           mX
    INX                     ; $CD1D46  E8           mX
    INX                     ; $CD1D47  E8           mX
    INX                     ; $CD1D48  E8           mX
    DEY                     ; $CD1D49  88           mX
    BNE L_CD1D41            ; $CD1D4A  D0 F5        mX
    JSR L_CD22AA            ; $CD1D4C  20 AA 22     mX
    BEQ L_CD1D2C            ; $CD1D4F  F0 DB        mX
    JSL L_C2002A            ; $CD1D51  22 2A 00 C2  mX
    JSR L_CD1DDC            ; $CD1D55  20 DC 1D     mX
    JMP L_CD24A1            ; $CD1D58  4C A1 24     mX
L_CD1D5B:
    LDX #$26E4              ; $CD1D5B  A2 E4 26     MX
    STX $68                 ; $CD1D5E  86 68        MX
    LDX #$00CD              ; $CD1D60  A2 CD 00     MX
    STX $6A                 ; $CD1D63  86 6A        MX
    LDY #$C858              ; $CD1D65  A0 58 C8     MX
    LDX #$0140              ; $CD1D68  A2 40 01     MX
    JSR L_CD258A            ; $CD1D6B  20 8A 25     MX
    JSR L_CD23E0            ; $CD1D6E  20 E0 23     MX
    LDA #$8D00              ; $CD1D71  A9 00 8D     MX
    BRK #$21                ; $CD1D74  00 21        MX
    JSR L_CD24B5            ; $CD1D76  20 B5 24     MX
L_CD1D79:
    LDA #$8501              ; $CD1D79  A9 01 85     MX
    EOR $A5,X               ; $CD1D7C  55 A5        MX
    LSR                     ; $CD1D7E  4A           MX
L_CD1D7F:
    CMP $4A                 ; $CD1D7F  C5 4A        MX
    BEQ L_CD1D7F            ; $CD1D81  F0 FC        MX
    LDA $4A                 ; $CD1D83  A5 4A        MX
    ASL                     ; $CD1D85  0A           MX
    AND #$A220              ; $CD1D86  29 20 A2     MX
    EOR $01,S               ; $CD1D89  43 01        MX
    LDY #$0009              ; $CD1D8B  A0 09 00     MX
L_CD1D8E:
    STA $7F9000,X           ; $CD1D8E  9F 00 90 7F  MX
    INX                     ; $CD1D92  E8           MX
    INX                     ; $CD1D93  E8           MX
    INX                     ; $CD1D94  E8           MX
    INX                     ; $CD1D95  E8           MX
    DEY                     ; $CD1D96  88           MX
    BNE L_CD1D8E            ; $CD1D97  D0 F5        MX
    JSR L_CD22AA            ; $CD1D99  20 AA 22     MX
    BEQ L_CD1D79            ; $CD1D9C  F0 DB        MX
    JSL L_C2002A            ; $CD1D9E  22 2A 00 C2  MX
    JSR L_CD1DDC            ; $CD1DA2  20 DC 1D     MX
    LDX #$0002              ; $CD1DA5  A2 02 00     MX
L_CD1DA8:
    LDA $4A                 ; $CD1DA8  A5 4A        MX
L_CD1DAA:
    CMP $4A                 ; $CD1DAA  C5 4A        MX
    BEQ L_CD1DAA            ; $CD1DAC  F0 FC        MX
    DEX                     ; $CD1DAE  CA           MX
    BNE L_CD1DA8            ; $CD1DAF  D0 F7        MX
    JSL L_C20100            ; $CD1DB1  22 00 01 C2  MX
    LDX #$001E              ; $CD1DB5  A2 1E 00     MX
L_CD1DB8:
    LDA $4A                 ; $CD1DB8  A5 4A        MX
L_CD1DBA:
    CMP $4A                 ; $CD1DBA  C5 4A        MX
    BEQ L_CD1DBA            ; $CD1DBC  F0 FC        MX
    DEX                     ; $CD1DBE  CA           MX
    BNE L_CD1DB8            ; $CD1DBF  D0 F7        MX
    LDA $0214               ; $CD1DC1  AD 14 02     MX
    LSR                     ; $CD1DC4  4A           MX
    AND #$AA06              ; $CD1DC5  29 06 AA     MX
    LDA $CD1DD4,X           ; $CD1DC8  BF D4 1D CD  MX
    JSL L_C2010F            ; $CD1DCC  22 0F 01 C2  MX
    JSR L_CD24A1            ; $CD1DD0  20 A1 24     MX
    RTS                     ; $CD1DD3  60           MX
    db $22,$00,$23,$00,$24,$00,$25,$00                                 ; $CD1DD4
L_CD1DDC:
    LDX #$0143              ; $CD1DDC  A2 43 01     mX
    LDA #$00                ; $CD1DDF  A9 00        mX
    LDY #$0009              ; $CD1DE1  A0 09 00     mX
L_CD1DE4:
    STA $7F9000,X           ; $CD1DE4  9F 00 90 7F  mX
    INX                     ; $CD1DE8  E8           mX
    INX                     ; $CD1DE9  E8           mX
    INX                     ; $CD1DEA  E8           mX
    INX                     ; $CD1DEB  E8           mX
    DEY                     ; $CD1DEC  88           mX
    BNE L_CD1DE4            ; $CD1DED  D0 F5        mX
    LDA #$01                ; $CD1DEF  A9 01        mX
    STA $55                 ; $CD1DF1  85 55        mX
    LDA $4A                 ; $CD1DF3  A5 4A        mX
L_CD1DF5:
    CMP $4A                 ; $CD1DF5  C5 4A        mX
    BEQ L_CD1DF5            ; $CD1DF7  F0 FC        mX
    RTS                     ; $CD1DF9  60           mX
    db $00,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06,$00,$07 ; $CD1DFA
    db $00,$08,$01,$00,$01,$01,$01,$02,$01,$03,$01,$04,$01,$05,$01,$06 ; $CD1E0A
    db $01,$07,$01,$08,$02,$00,$02,$01,$02,$02,$02,$03,$02,$04,$02,$05 ; $CD1E1A
    db $02,$06,$02,$07,$02,$08,$03,$00,$03,$01,$03,$02,$03,$03,$03,$04 ; $CD1E2A
    db $03,$05,$03,$06,$03,$07,$03,$08,$A2,$60,$95,$86,$68,$A2,$7F,$00 ; $CD1E3A
    db $86,$6A,$A0,$30,$B0,$A2,$10,$00,$20,$F2,$24,$20,$4C,$01,$A5,$4D ; $CD1E4A
    db $F0,$0A,$C5,$F0,$D0,$06,$C6,$F2,$F0,$02,$D0,$EF,$85,$F0,$85,$5C ; $CD1E5A
    db $A9,$0A,$85,$F2,$A9,$00,$EB,$AD,$0E,$02,$48,$0A,$AA,$BF,$FB,$1D ; $CD1E6A
    db $CD,$46,$5C,$90,$07,$1A,$C9,$09,$90,$02,$A9,$00,$46,$5C,$90,$05 ; $CD1E7A
    db $3A,$10,$02,$A9,$08,$8D,$0E,$02,$BF,$FA,$1D,$CD,$46,$5C,$90,$07 ; $CD1E8A
    db $1A,$C9,$04,$90,$02,$A9,$00,$46,$5C,$90,$05,$3A,$10,$02,$A9,$03 ; $CD1E9A
    db $85,$5C,$0A,$0A,$0A,$18,$65,$5C,$6D,$0E,$02,$8D,$0E,$02,$68,$CD ; $CD1EAA
    db $0E,$02,$F0,$04,$22,$3F,$00,$C2,$AD,$0E,$02,$0A,$C2,$20,$29,$FF ; $CD1EBA
    db $00,$A2,$00,$00,$AA,$BF,$20,$26,$CD,$A8,$E2,$20,$A2,$68,$26,$86 ; $CD1ECA
    db $68,$A2,$CD,$00,$86,$6A,$A2,$00,$00,$4C,$F2,$24,$C2,$20,$29,$FF ; $CD1EDA
    db $00,$E2,$20                                                     ; $CD1EEA
L_CD1EED:
    JSR L_CD1F2B            ; $CD1EED  20 2B 1F     MX
    LDA $0214               ; $CD1EF0  AD 14 02     MX
    BEQ L_CD1F27            ; $CD1EF3  F0 32        MX
    AND #$D003              ; $CD1EF5  29 03 D0     MX
    ROL $60AF               ; $CD1EF8  2E AF 60     MX
    STA $7F,X               ; $CD1EFB  95 7F        MX
    CMP #$F03A              ; $CD1EFD  C9 3A F0     MX
    ROL $A2                 ; $CD1F00  26 A2        MX
    RTS                     ; $CD1F02  60           MX
    db $95,$86,$68,$A2,$7F,$00,$86,$6A,$A0,$30,$B4,$A2,$00,$00,$20,$F2 ; $CD1F03
    db $24,$A2,$D9,$28,$86,$68,$A2,$CD,$00,$86,$6A,$A0,$60,$A8,$A2,$68 ; $CD1F13
    db $01,$20,$8A,$25                                                 ; $CD1F23
L_CD1F27:
    JSR L_CD1D5B            ; $CD1F27  20 5B 1D     MX
    RTS                     ; $CD1F2A  60           MX
L_CD1F2B:
    JSR L_CD22DA            ; $CD1F2B  20 DA 22     MX
    LDX #$0046              ; $CD1F2E  A2 46 00     MX
L_CD1F31:
    LDA $CD2771,X           ; $CD1F31  BF 71 27 CD  MX
    STA $7F957D,X           ; $CD1F35  9F 7D 95 7F  MX
    DEX                     ; $CD1F39  CA           MX
    BNE L_CD1F31            ; $CD1F3A  D0 F5        MX
    LDA $0214               ; $CD1F3C  AD 14 02     MX
    PHA                     ; $CD1F3F  48           MX
    AND #$1803              ; $CD1F40  29 03 18     MX
    ADC #$8F31              ; $CD1F43  69 31 8F     MX
    LDX $7F95               ; $CD1F46  AE 95 7F     MX
    PLA                     ; $CD1F49  68           MX
    PHA                     ; $CD1F4A  48           MX
    LSR                     ; $CD1F4B  4A           MX
    LSR                     ; $CD1F4C  4A           MX
    AND #$8503              ; $CD1F4D  29 03 85     MX
    JML $316918             ; $CD1F50  5C 18 69 31  MX
    db $8F,$89,$95,$7F,$A2,$3C,$29,$86,$6C,$A2,$CD,$00,$86,$6E,$68,$48 ; $CD1F54
    db $0A,$0A,$29,$30,$18,$65,$5C,$18,$65,$5C,$A2,$00,$00,$C2,$20,$29 ; $CD1F64
    db $FF,$00,$E2,$20,$A8,$B7,$6C,$9F,$8D,$95,$7F,$E8,$C8,$E0,$12,$00 ; $CD1F74
    db $D0,$F3,$A2,$84,$29,$86,$6C,$A2,$CD,$00,$86,$6E,$68,$0A,$0A,$0A ; $CD1F84
    db $0A,$A2,$00,$00,$C2,$20,$29,$FF,$00,$E2,$20,$A8,$B7,$6C,$9F,$B2 ; $CD1F94
    db $95,$7F,$E8,$C8,$E0,$10,$00,$D0,$F3,$A2,$7E,$95,$86,$68,$A2,$7F ; $CD1FA4
    db $00,$86,$6A,$A0,$08,$20,$A2,$30,$00,$4C,$F2,$24                 ; $CD1FB4
L_CD1FC0:
    SEP #$20                ; $CD1FC0  E2 20        MX
    JSR L_CD22DA            ; $CD1FC2  20 DA 22     mX
    LDX #$0063              ; $CD1FC5  A2 63 00     mX
L_CD1FC8:
    LDA $CD27F6,X           ; $CD1FC8  BF F6 27 CD  mX
    STA $7F957D,X           ; $CD1FCC  9F 7D 95 7F  mX
    DEX                     ; $CD1FD0  CA           mX
    BNE L_CD1FC8            ; $CD1FD1  D0 F5        mX
    LDX #$2906              ; $CD1FD3  A2 06 29     mX
    STX $6C                 ; $CD1FD6  86 6C        mX
    LDX #$00CD              ; $CD1FD8  A2 CD 00     mX
    STX $6E                 ; $CD1FDB  86 6E        mX
    LDA #$2A                ; $CD1FDD  A9 2A        mX
    STA $7F9592             ; $CD1FDF  8F 92 95 7F  mX
    LDA #$5F                ; $CD1FE3  A9 5F        mX
    STA $7F95BB             ; $CD1FE5  8F BB 95 7F  mX
    LDA $0226               ; $CD1FE9  AD 26 02     mX
    CMP $0264               ; $CD1FEC  CD 64 02     mX
    BMI L_CD2025            ; $CD1FEF  30 34        mX
    LDA $0227               ; $CD1FF1  AD 27 02     mX
    CMP $0265               ; $CD1FF4  CD 65 02     mX
    BMI L_CD2025            ; $CD1FF7  30 2C        mX
    LDA $0228               ; $CD1FF9  AD 28 02     mX
    CMP $0266               ; $CD1FFC  CD 66 02     mX
    BMI L_CD2025            ; $CD1FFF  30 24        mX
L_CD2001:
    LDA $0229               ; $CD2001  AD 29 02     mX
    CMP $0267               ; $CD2004  CD 67 02     mX
    BMI L_CD2025            ; $CD2007  30 1C        mX
    LDA $022A               ; $CD2009  AD 2A 02     mX
    CMP $0268               ; $CD200C  CD 68 02     mX
    BMI L_CD2025            ; $CD200F  30 14        mX
    LDA $022B               ; $CD2011  AD 2B 02     mX
    CMP $0269               ; $CD2014  CD 69 02     mX
    BMI L_CD2025            ; $CD2017  30 0C        mX
    LDA #$5F                ; $CD2019  A9 5F        mX
    STA $7F9592             ; $CD201B  8F 92 95 7F  mX
    LDA #$2A                ; $CD201F  A9 2A        mX
    STA $7F95BB             ; $CD2021  8F BB 95 7F  mX
L_CD2025:
    LDA $0220               ; $CD2025  AD 20 02     mX
    STA $5C                 ; $CD2028  85 5C        mX
    ASL                     ; $CD202A  0A           mX
    ASL                     ; $CD202B  0A           mX
    ASL                     ; $CD202C  0A           mX
    CLC                     ; $CD202D  18           mX
    ADC $5C                 ; $CD202E  65 5C        mX
    REP #$20                ; $CD2030  C2 20        mX
    AND #$00FF              ; $CD2032  29 FF 00     MX
    SEP #$20                ; $CD2035  E2 20        MX
    TAY                     ; $CD2037  A8           mX
    LDX #$0000              ; $CD2038  A2 00 00     mX
L_CD203B:
    LDA [$6C],Y             ; $CD203B  B7 6C        mX
    STA $7F9593,X           ; $CD203D  9F 93 95 7F  mX
    INY                     ; $CD2041  C8           mX
    INX                     ; $CD2042  E8           mX
    CPX #$0009              ; $CD2043  E0 09 00     mX
    BNE L_CD203B            ; $CD2046  D0 F3        mX
    LDA $025E               ; $CD2048  AD 5E 02     mX
    STA $5C                 ; $CD204B  85 5C        mX
    ASL                     ; $CD204D  0A           mX
    ASL                     ; $CD204E  0A           mX
    ASL                     ; $CD204F  0A           mX
    CLC                     ; $CD2050  18           mX
    ADC $5C                 ; $CD2051  65 5C        mX
    REP #$20                ; $CD2053  C2 20        mX
    AND #$00FF              ; $CD2055  29 FF 00     MX
    SEP #$20                ; $CD2058  E2 20        MX
    TAY                     ; $CD205A  A8           mX
    LDX #$0000              ; $CD205B  A2 00 00     mX
L_CD205E:
    LDA [$6C],Y             ; $CD205E  B7 6C        mX
    STA $7F95BC,X           ; $CD2060  9F BC 95 7F  mX
    INY                     ; $CD2064  C8           mX
    INX                     ; $CD2065  E8           mX
    CPX #$0009              ; $CD2066  E0 09 00     mX
    BNE L_CD205E            ; $CD2069  D0 F3        mX
    REP #$20                ; $CD206B  C2 20        mX
    LDA $0226               ; $CD206D  AD 26 02     MX
    STA $7F959D             ; $CD2070  8F 9D 95 7F  MX
    LDA $0228               ; $CD2074  AD 28 02     MX
    STA $7F959F             ; $CD2077  8F 9F 95 7F  MX
    LDA $022A               ; $CD207B  AD 2A 02     MX
    STA $7F95A1             ; $CD207E  8F A1 95 7F  MX
    LDA $0264               ; $CD2082  AD 64 02     MX
    STA $7F95C6             ; $CD2085  8F C6 95 7F  MX
    LDA $0266               ; $CD2089  AD 66 02     MX
    STA $7F95C8             ; $CD208C  8F C8 95 7F  MX
    LDA $0268               ; $CD2090  AD 68 02     MX
    STA $7F95CA             ; $CD2093  8F CA 95 7F  MX
    SEP #$20                ; $CD2097  E2 20        MX
    LDA $025A               ; $CD2099  AD 5A 02     mX
    LDX #$002E              ; $CD209C  A2 2E 00     mX
    JSR L_CD2143            ; $CD209F  20 43 21     mX
    LDA $0298               ; $CD20A2  AD 98 02     mX
    LDX #$0057              ; $CD20A5  A2 57 00     mX
    JSR L_CD2143            ; $CD20A8  20 43 21     mX
    LDX #$957E              ; $CD20AB  A2 7E 95     mX
    STX $68                 ; $CD20AE  86 68        mX
    LDX #$007F              ; $CD20B0  A2 7F 00     mX
    STX $6A                 ; $CD20B3  86 6A        mX
    LDY #$0800              ; $CD20B5  A0 00 08     mX
    LDX #$0030              ; $CD20B8  A2 30 00     mX
    JSR L_CD24F2            ; $CD20BB  20 F2 24     mX
    LDX #$2BA8              ; $CD20BE  A2 A8 2B     mX
    STX $68                 ; $CD20C1  86 68        mX
    LDX #$00CD              ; $CD20C3  A2 CD 00     mX
    STX $6A                 ; $CD20C6  86 6A        mX
    LDY #$0C3C              ; $CD20C8  A0 3C 0C     mX
    LDX #$0190              ; $CD20CB  A2 90 01     mX
    JSR L_CD258A            ; $CD20CE  20 8A 25     mX
    LDA $7F9560             ; $CD20D1  AF 60 95 7F  mX
    CMP #$3A                ; $CD20D5  C9 3A        mX
    BEQ L_CD20FF            ; $CD20D7  F0 26        mX
    LDX #$9560              ; $CD20D9  A2 60 95     mX
    STX $68                 ; $CD20DC  86 68        mX
    LDX #$007F              ; $CD20DE  A2 7F 00     mX
    STX $6A                 ; $CD20E1  86 6A        mX
    LDY #$B430              ; $CD20E3  A0 30 B4     mX
    LDX #$0000              ; $CD20E6  A2 00 00     mX
    JSR L_CD24F2            ; $CD20E9  20 F2 24     mX
    LDX #$28D9              ; $CD20EC  A2 D9 28     mX
    STX $68                 ; $CD20EF  86 68        mX
    LDX #$00CD              ; $CD20F1  A2 CD 00     mX
    STX $6A                 ; $CD20F4  86 6A        mX
    LDY #$A860              ; $CD20F6  A0 60 A8     mX
    LDX #$0168              ; $CD20F9  A2 68 01     mX
    JSR L_CD258A            ; $CD20FC  20 8A 25     mX
L_CD20FF:
    JSL L_C20000            ; $CD20FF  22 00 00 C2  mX
    LDA #$19                ; $CD2103  A9 19        mX
    JSL L_C2010F            ; $CD2105  22 0F 01 C2  mX
    JSR L_CD23E0            ; $CD2109  20 E0 23     mX
    LDA #$00                ; $CD210C  A9 00        mX
    STA $2100               ; $CD210E  8D 00 21     mX
    JSR L_CD24B5            ; $CD2111  20 B5 24     mX
L_CD2114:
    LDA $4A                 ; $CD2114  A5 4A        mX
L_CD2116:
    CMP $4A                 ; $CD2116  C5 4A        mX
    BEQ L_CD2116            ; $CD2118  F0 FC        mX
    JSL L_C203C2            ; $CD211A  22 C2 03 C2  mX
    LDA $46                 ; $CD211E  A5 46        mX
    CMP #$50                ; $CD2120  C9 50        mX
    BCC L_CD2114            ; $CD2122  90 F0        mX
    LDA #$18                ; $CD2124  A9 18        mX
    JSL L_C2010F            ; $CD2126  22 0F 01 C2  mX
    LDX #$26E4              ; $CD212A  A2 E4 26     mX
    STX $68                 ; $CD212D  86 68        mX
    LDX #$00CD              ; $CD212F  A2 CD 00     mX
    STX $6A                 ; $CD2132  86 6A        mX
    LDY #$C858              ; $CD2134  A0 58 C8     mX
    LDX #$0140              ; $CD2137  A2 40 01     mX
    JSR L_CD258A            ; $CD213A  20 8A 25     mX
    JSR L_CD23E0            ; $CD213D  20 E0 23     mX
    JMP L_CD1D2C            ; $CD2140  4C 2C 1D     mX
L_CD2143:
    PHA                     ; $CD2143  48           mX
    LSR                     ; $CD2144  4A           mX
    LSR                     ; $CD2145  4A           mX
    AND #$03                ; $CD2146  29 03        mX
    CLC                     ; $CD2148  18           mX
    ADC #$31                ; $CD2149  69 31        mX
    STA $7F957E,X           ; $CD214B  9F 7E 95 7F  mX
    PLA                     ; $CD214F  68           mX
    AND #$03                ; $CD2150  29 03        mX
    CLC                     ; $CD2152  18           mX
    ADC #$31                ; $CD2153  69 31        mX
    STA $7F9587,X           ; $CD2155  9F 87 95 7F  mX
    RTS                     ; $CD2159  60           mX
    db $20,$4C,$01,$A5,$4D,$05,$4F,$29,$0C,$F0,$0B,$A0,$00,$00,$29,$08 ; $CD215A
    db $D0,$01,$C8,$98,$95,$00,$B5,$00,$D0,$23,$E0,$08,$02,$F0,$0F,$A2 ; $CD216A
    db $08,$00,$BF,$6D,$26,$CD,$9F,$FF,$8F,$7F,$CA,$D0,$F5,$60,$A2,$08 ; $CD217A
    db $00,$BF,$85,$26,$CD,$9F,$FF,$8F,$7F,$CA,$D0,$F5,$60,$E0,$08,$02 ; $CD218A
    db $F0,$0F,$A2,$08,$00,$BF,$75,$26,$CD,$9F,$FF,$8F,$7F,$CA,$D0,$F5 ; $CD219A
    db $60,$A2,$08,$00,$BF,$7D,$26,$CD,$9F,$FF,$8F,$7F,$CA,$D0,$F5,$60 ; $CD21AA
    db $20,$C9,$21,$20,$4C,$01,$A5,$4D,$05,$4F,$29,$0C,$D0,$F5,$60,$20 ; $CD21BA
    db $4C,$01,$B5,$00,$A8,$A5,$4D,$05,$4F,$29,$0C,$F0,$16,$29,$08,$D0 ; $CD21CA
    db $0B,$C8,$98,$C9,$03,$F0,$0C,$95,$00,$4C,$ED,$21,$88,$98,$30,$03 ; $CD21DA
    db $98,$95,$00,$B5,$00,$F0,$26,$3A,$F0,$46,$E0,$94,$00,$F0,$0F,$A2 ; $CD21EA
    db $08,$00,$BF,$8D,$26,$CD,$9F,$FF,$8F,$7F,$CA,$D0,$F5,$60,$A2,$08 ; $CD21FA
    db $00,$BF,$A5,$26,$CD,$9F,$FF,$8F,$7F,$CA,$D0,$F5,$60,$E0,$94,$00 ; $CD220A
    db $F0,$0F,$A2,$08,$00,$BF,$6D,$26,$CD,$9F,$FF,$8F,$7F,$CA,$D0,$F5 ; $CD221A
    db $60,$A2,$08,$00,$BF,$95,$26,$CD,$9F,$FF,$8F,$7F,$CA,$D0,$F5,$60 ; $CD222A
    db $E0,$94,$00,$F0,$0F,$A2,$08,$00,$BF,$75,$26,$CD,$9F,$FF,$8F,$7F ; $CD223A
    db $CA,$D0,$F5,$60,$A2,$08,$00,$BF,$9D,$26,$CD,$9F,$FF,$8F,$7F,$CA ; $CD224A
    db $D0,$F5,$60,$DA,$A5,$94,$C9,$02,$F0,$22,$A0,$2A,$00,$C9,$01,$D0 ; $CD225A
    db $03,$A0,$42,$00,$18,$69,$96,$AA,$98,$85,$98,$B5,$00,$A8,$20,$88 ; $CD226A
    db $22,$20,$4C,$01,$A5,$4D,$05,$4F,$29,$03,$D0,$F5,$FA,$60,$20,$4C ; $CD227A
    db $01,$A5,$4D,$05,$4F,$29,$03,$F0,$16,$89,$01,$D0,$0B,$98,$1A,$C5 ; $CD228A
    db $98,$F0,$0C,$95,$00,$4C,$A9,$22,$98,$3A,$30,$03,$4C,$9D,$22,$60 ; $CD229A
L_CD22AA:
    JSR L_CD014C            ; $CD22AA  20 4C 01     mX
    LDA $4D                 ; $CD22AD  A5 4D        mX
    ORA $4F                 ; $CD22AF  05 4F        mX
    AND #$C0                ; $CD22B1  29 C0        mX
    RTS                     ; $CD22B3  60           mX
    db $20,$4C,$01,$A5,$4C,$05,$4E,$29,$C0,$60                         ; $CD22B4
L_CD22BE:
    JSR L_CD014C            ; $CD22BE  20 4C 01     Mx
    LDA $4D                 ; $CD22C1  A5 4D        Mx
    AND #$85C0              ; $CD22C3  29 C0 85     Mx
    LSR $4FA5,X             ; $CD22C6  5E A5 4F     Mx
    AND #$05C0              ; $CD22C9  29 C0 05     Mx
    LSR $2060,X             ; $CD22CC  5E 60 20     Mx
    JMP L_CDA501            ; $CD22CF  4C 01 A5     Mx
    db $4D,$05,$4F,$29,$0F,$85,$5A,$60                                 ; $CD22D2
L_CD22DA:
    PHP                     ; $CD22DA  08           mX
    PEA $343B               ; $CD22DB  F4 3B 34     mX
    PEA $00CD               ; $CD22DE  F4 CD 00     mX
    PEA $0000               ; $CD22E1  F4 00 00     mX
    PEA $007F               ; $CD22E4  F4 7F 00     mX
    JSL L_C30000            ; $CD22E7  22 00 00 C3  mX
    PLA                     ; $CD22EB  68           mX
    PLA                     ; $CD22EC  68           mX
    PLA                     ; $CD22ED  68           mX
    PLA                     ; $CD22EE  68           mX
    PLP                     ; $CD22EF  28           mX
    SEP #$20                ; $CD22F0  E2 20        mX
    REP #$10                ; $CD22F2  C2 10        mX
    LDA #$80                ; $CD22F4  A9 80        mX
    STA $2100               ; $CD22F6  8D 00 21     mX
    LDA #$01                ; $CD22F9  A9 01        mX
    STA $4200               ; $CD22FB  8D 00 42     mX
    STA $0B                 ; $CD22FE  85 0B        mX
    LDA #$00                ; $CD2300  A9 00        mX
    STA $420C               ; $CD2302  8D 0C 42     mX
    STA $210D               ; $CD2305  8D 0D 21     mX
    STA $210D               ; $CD2308  8D 0D 21     mX
    DEC                     ; $CD230B  3A           mX
    STA $210E               ; $CD230C  8D 0E 21     mX
    STA $210E               ; $CD230F  8D 0E 21     mX
    LDA #$01                ; $CD2312  A9 01        mX
    STA $2105               ; $CD2314  8D 05 21     mX
    LDA #$70                ; $CD2317  A9 70        mX
    STA $2107               ; $CD2319  8D 07 21     mX
    LDA #$78                ; $CD231C  A9 78        mX
    STA $2108               ; $CD231E  8D 08 21     mX
    LDA #$02                ; $CD2321  A9 02        mX
    STA $210B               ; $CD2323  8D 0B 21     mX
    LDX #$0004              ; $CD2326  A2 04 00     mX
    STX $04                 ; $CD2329  86 04        mX
    LDX #$00CD              ; $CD232B  A2 CD 00     mX
    STX $06                 ; $CD232E  86 06        mX
    LDA #$00                ; $CD2330  A9 00        mX
    STA $2101               ; $CD2332  8D 01 21     mX
    LDA #$80                ; $CD2335  A9 80        mX
    STA $2115               ; $CD2337  8D 15 21     mX
    LDX #$0200              ; $CD233A  A2 00 02     mX
L_CD233D:
    LDA $CD955F,X           ; $CD233D  BF 5F 95 CD  mX
    STA $7F935F,X           ; $CD2341  9F 5F 93 7F  mX
    DEX                     ; $CD2345  CA           mX
    BNE L_CD233D            ; $CD2346  D0 F5        mX
    LDA #$7F                ; $CD2348  A9 7F        mX
    LDX #$0000              ; $CD234A  A2 00 00     mX
    STX $4302               ; $CD234D  8E 02 43     mX
    STA $4304               ; $CD2350  8D 04 43     mX
    LDX #$2000              ; $CD2353  A2 00 20     mX
    STX $2116               ; $CD2356  8E 16 21     mX
    LDX #$8000              ; $CD2359  A2 00 80     mX
    STX $4305               ; $CD235C  8E 05 43     mX
    LDX #$1801              ; $CD235F  A2 01 18     mX
    STX $4300               ; $CD2362  8E 00 43     mX
    LDA #$01                ; $CD2365  A9 01        mX
    STA $420B               ; $CD2367  8D 0B 42     mX
    PHP                     ; $CD236A  08           mX
    PEA $98A0               ; $CD236B  F4 A0 98     mX
    PEA $00CD               ; $CD236E  F4 CD 00     mX
    PEA $0000               ; $CD2371  F4 00 00     mX
    PEA $007F               ; $CD2374  F4 7F 00     mX
    JSL L_C30000            ; $CD2377  22 00 00 C3  mX
    PLA                     ; $CD237B  68           mX
    PLA                     ; $CD237C  68           mX
    PLA                     ; $CD237D  68           mX
    PLA                     ; $CD237E  68           mX
    PLP                     ; $CD237F  28           mX
    LDA #$7F                ; $CD2380  A9 7F        mX
    LDX #$0000              ; $CD2382  A2 00 00     mX
    STX $4302               ; $CD2385  8E 02 43     mX
    STA $4304               ; $CD2388  8D 04 43     mX
    LDX #$0000              ; $CD238B  A2 00 00     mX
    STX $2116               ; $CD238E  8E 16 21     mX
    LDX #$2000              ; $CD2391  A2 00 20     mX
    STX $4305               ; $CD2394  8E 05 43     mX
    LDX #$1801              ; $CD2397  A2 01 18     mX
    STX $4300               ; $CD239A  8E 00 43     mX
    LDA #$01                ; $CD239D  A9 01        mX
    STA $420B               ; $CD239F  8D 0B 42     mX
    JSR L_CD23F1            ; $CD23A2  20 F1 23     mX
    JSR L_CD2489            ; $CD23A5  20 89 24     mX
    LDA #$41                ; $CD23A8  A9 41        mX
    STA $80                 ; $CD23AA  85 80        mX
    LDA #$11                ; $CD23AC  A9 11        mX
    STA $212C               ; $CD23AE  8D 2C 21     mX
    STZ $2133               ; $CD23B1  9C 33 21     mX
    LDA #$00                ; $CD23B4  A9 00        mX
    STA $2100               ; $CD23B6  8D 00 21     mX
    LDA #$A1                ; $CD23B9  A9 A1        mX
    STA $4200               ; $CD23BB  8D 00 42     mX
    STA $0B                 ; $CD23BE  85 0B        mX
    CLI                     ; $CD23C0  58           mX
    RTS                     ; $CD23C1  60           mX
    db $A9,$01,$85,$57,$85,$55,$85,$54,$85,$56,$A5,$4A,$C5,$4A,$F0,$FC ; $CD23C2
    db $60                                                             ; $CD23D2
L_CD23D3:
    LDA #$8501              ; $CD23D3  A9 01 85     Mx
    EOR [$85],Y             ; $CD23D6  57 85        Mx
    EOR $A5,X               ; $CD23D8  55 A5        Mx
    LSR                     ; $CD23DA  4A           Mx
L_CD23DB:
    CMP $4A                 ; $CD23DB  C5 4A        Mx
    BEQ L_CD23DB            ; $CD23DD  F0 FC        Mx
    RTS                     ; $CD23DF  60           Mx
L_CD23E0:
    INC $60                 ; $CD23E0  E6 60        mX
    LDA #$01                ; $CD23E2  A9 01        mX
    STA $54                 ; $CD23E4  85 54        mX
    STA $55                 ; $CD23E6  85 55        mX
    STA $56                 ; $CD23E8  85 56        mX
    LDA $4A                 ; $CD23EA  A5 4A        mX
L_CD23EC:
    CMP $4A                 ; $CD23EC  C5 4A        mX
    BEQ L_CD23EC            ; $CD23EE  F0 FC        mX
    RTS                     ; $CD23F0  60           mX
L_CD23F1:
    LDX #$0020              ; $CD23F1  A2 20 00     mX
    LDY #$000C              ; $CD23F4  A0 0C 00     mX
    LDA #$00                ; $CD23F7  A9 00        mX
L_CD23F9:
    STA $7F91FF,X           ; $CD23F9  9F FF 91 7F  mX
    DEX                     ; $CD23FD  CA           mX
    DEY                     ; $CD23FE  88           mX
    BNE L_CD23F9            ; $CD23FF  D0 F8        mX
    LDY #$0014              ; $CD2401  A0 14 00     mX
    LDA #$AA                ; $CD2404  A9 AA        mX
L_CD2406:
    STA $7F91FF,X           ; $CD2406  9F FF 91 7F  mX
    DEX                     ; $CD240A  CA           mX
    BNE L_CD2406            ; $CD240B  D0 F9        mX
    LDX #$0200              ; $CD240D  A2 00 02     mX
L_CD2410:
    LDA #$00                ; $CD2410  A9 00        mX
    STA $7F8FFF,X           ; $CD2412  9F FF 8F 7F  mX
    DEX                     ; $CD2416  CA           mX
    STA $7F8FFF,X           ; $CD2417  9F FF 8F 7F  mX
    DEX                     ; $CD241B  CA           mX
    LDA #$E0                ; $CD241C  A9 E0        mX
    STA $7F8FFF,X           ; $CD241E  9F FF 8F 7F  mX
    DEX                     ; $CD2422  CA           mX
    STA $7F8FFF,X           ; $CD2423  9F FF 8F 7F  mX
    DEX                     ; $CD2427  CA           mX
    BNE L_CD2410            ; $CD2428  D0 E6        mX
    RTS                     ; $CD242A  60           mX
L_CD242B:
    LDX #$1000              ; $CD242B  A2 00 10     mX
    BRA L_CD2433            ; $CD242E  80 03        mX
    db $A2,$00,$08                                                     ; $CD2430
L_CD2433:
    LDA #$00                ; $CD2433  A9 00        mX
L_CD2435:
    STA $7F7FFF,X           ; $CD2435  9F FF 7F 7F  mX
    DEX                     ; $CD2439  CA           mX
    BNE L_CD2435            ; $CD243A  D0 F9        mX
    RTS                     ; $CD243C  60           mX
    db $A9,$70,$8D,$17,$21,$A9,$00,$8D,$16,$21,$A2,$00,$08,$A9,$00,$8D ; $CD243D
    db $18,$21,$8D,$19,$21,$CA,$D0,$F7,$60,$A9,$70,$8D,$17,$21,$A9,$00 ; $CD244D
    db $8D,$16,$21,$A2,$00,$04,$A9,$00,$8D,$18,$21,$8D,$19,$21,$CA,$D0 ; $CD245D
    db $F7,$60,$60,$A9,$78,$8D,$17,$21,$A9,$00,$8D,$16,$21,$A2,$00,$04 ; $CD246D
    db $A9,$01,$8D,$18,$21,$8D,$19,$21,$CA,$D0,$F7,$60                 ; $CD247D
L_CD2489:
    LDX #$0700              ; $CD2489  A2 00 07     mX
L_CD248C:
    LDA $CD8057,X           ; $CD248C  BF 57 80 CD  mX
    STA $7F7FFE,X           ; $CD2490  9F FE 7F 7F  mX
    DEX                     ; $CD2494  CA           mX
    LDA $CD8057,X           ; $CD2495  BF 57 80 CD  mX
    STA $7F8000,X           ; $CD2499  9F 00 80 7F  mX
    DEX                     ; $CD249D  CA           mX
    BNE L_CD248C            ; $CD249E  D0 EC        mX
    RTS                     ; $CD24A0  60           mX
L_CD24A1:
    LDA #$0F                ; $CD24A1  A9 0F        mX
    STA $5C                 ; $CD24A3  85 5C        mX
L_CD24A5:
    JSR L_CD24D4            ; $CD24A5  20 D4 24     mX
    LDA $5C                 ; $CD24A8  A5 5C        mX
    DEC                     ; $CD24AA  3A           mX
    BMI L_CD24B4            ; $CD24AB  30 07        mX
    STA $2100               ; $CD24AD  8D 00 21     mX
    STA $5C                 ; $CD24B0  85 5C        mX
    BRA L_CD24A5            ; $CD24B2  80 F1        mX
L_CD24B4:
    RTS                     ; $CD24B4  60           mX
L_CD24B5:
    LDA $4A                 ; $CD24B5  A5 4A        mX
L_CD24B7:
    CMP $4A                 ; $CD24B7  C5 4A        mX
    BEQ L_CD24B7            ; $CD24B9  F0 FC        mX
    LDA #$00                ; $CD24BB  A9 00        mX
    STA $5C                 ; $CD24BD  85 5C        mX
L_CD24BF:
    JSR L_CD24D4            ; $CD24BF  20 D4 24     mX
    LDA $5C                 ; $CD24C2  A5 5C        mX
    INC                     ; $CD24C4  1A           mX
    CMP #$10                ; $CD24C5  C9 10        mX
    BEQ L_CD24B4            ; $CD24C7  F0 EB        mX
    STA $2100               ; $CD24C9  8D 00 21     mX
    STA $5C                 ; $CD24CC  85 5C        mX
    BRA L_CD24BF            ; $CD24CE  80 EF        mX
    db $A9,$06,$80,$02                                                 ; $CD24D0
L_CD24D4:
    LDA #$03                ; $CD24D4  A9 03        mX
L_CD24D6:
    PHA                     ; $CD24D6  48           mX
    LDA $4A                 ; $CD24D7  A5 4A        mX
L_CD24D9:
    CMP $4A                 ; $CD24D9  C5 4A        mX
    BEQ L_CD24D9            ; $CD24DB  F0 FC        mX
    PLA                     ; $CD24DD  68           mX
    DEC                     ; $CD24DE  3A           mX
    BNE L_CD24D6            ; $CD24DF  D0 F5        mX
    RTS                     ; $CD24E1  60           mX
    db $A0,$32,$00,$A5,$4A,$C5,$4A,$F0,$FC,$88,$D0,$F7,$CA,$D0,$F1,$60 ; $CD24E2
L_CD24F2:
    STY $75                 ; $CD24F2  84 75        mX
    TYA                     ; $CD24F4  98           mX
    STA $78                 ; $CD24F5  85 78        mX
    LDA #$30                ; $CD24F7  A9 30        mX
    STA $77                 ; $CD24F9  85 77        mX
L_CD24FB:
    LDA [$68]               ; $CD24FB  A7 68        mX
    BEQ L_CD2570            ; $CD24FD  F0 71        mX
    CMP #$2B                ; $CD24FF  C9 2B        mX
    BEQ L_CD257D            ; $CD2501  F0 7A        mX
    CMP #$25                ; $CD2503  C9 25        mX
    BEQ L_CD2553            ; $CD2505  F0 4C        mX
    CMP #$5F                ; $CD2507  C9 5F        mX
    BEQ L_CD255C            ; $CD2509  F0 51        mX
    CMP #$2A                ; $CD250B  C9 2A        mX
    BEQ L_CD2562            ; $CD250D  F0 53        mX
    CMP #$21                ; $CD250F  C9 21        mX
    BCC L_CD2544            ; $CD2511  90 31        mX
    BEQ L_CD2568            ; $CD2513  F0 53        mX
    CMP #$FF                ; $CD2515  C9 FF        mX
    BEQ L_CD2552            ; $CD2517  F0 39        mX
    SEC                     ; $CD2519  38           mX
    SBC #$30                ; $CD251A  E9 30        mX
    BCC L_CD254B            ; $CD251C  90 2D        mX
    ASL                     ; $CD251E  0A           mX
    PHA                     ; $CD251F  48           mX
    AND #$0F                ; $CD2520  29 0F        mX
    STA $5C                 ; $CD2522  85 5C        mX
    PLA                     ; $CD2524  68           mX
    ASL                     ; $CD2525  0A           mX
    AND #$E0                ; $CD2526  29 E0        mX
    ORA $5C                 ; $CD2528  05 5C        mX
    STA $7F9002,X           ; $CD252A  9F 02 90 7F  mX
    LDA $75                 ; $CD252E  A5 75        mX
    STA $7F9000,X           ; $CD2530  9F 00 90 7F  mX
    INX                     ; $CD2534  E8           mX
    LDA $76                 ; $CD2535  A5 76        mX
    STA $7F9000,X           ; $CD2537  9F 00 90 7F  mX
    INX                     ; $CD253B  E8           mX
    INX                     ; $CD253C  E8           mX
    LDA $77                 ; $CD253D  A5 77        mX
    STA $7F9000,X           ; $CD253F  9F 00 90 7F  mX
    INX                     ; $CD2543  E8           mX
L_CD2544:
    LDA $75                 ; $CD2544  A5 75        mX
    CLC                     ; $CD2546  18           mX
    ADC #$0E                ; $CD2547  69 0E        mX
    STA $75                 ; $CD2549  85 75        mX
L_CD254B:
    LDY $68                 ; $CD254B  A4 68        mX
    INY                     ; $CD254D  C8           mX
    STY $68                 ; $CD254E  84 68        mX
    BRA L_CD24FB            ; $CD2550  80 A9        mX
L_CD2552:
    RTS                     ; $CD2552  60           mX
L_CD2553:
    LDA $75                 ; $CD2553  A5 75        mX
    CLC                     ; $CD2555  18           mX
    ADC #$06                ; $CD2556  69 06        mX
    STA $75                 ; $CD2558  85 75        mX
    BRA L_CD254B            ; $CD255A  80 EF        mX
L_CD255C:
    LDA #$30                ; $CD255C  A9 30        mX
    STA $77                 ; $CD255E  85 77        mX
    BRA L_CD254B            ; $CD2560  80 E9        mX
L_CD2562:
    LDA #$32                ; $CD2562  A9 32        mX
    STA $77                 ; $CD2564  85 77        mX
    BRA L_CD254B            ; $CD2566  80 E3        mX
L_CD2568:
    LDA $77                 ; $CD2568  A5 77        mX
    EOR #$02                ; $CD256A  49 02        mX
    STA $77                 ; $CD256C  85 77        mX
    BRA L_CD254B            ; $CD256E  80 DB        mX
L_CD2570:
    LDA $78                 ; $CD2570  A5 78        mX
    STA $75                 ; $CD2572  85 75        mX
    LDA $76                 ; $CD2574  A5 76        mX
    CLC                     ; $CD2576  18           mX
    ADC #$10                ; $CD2577  69 10        mX
    STA $76                 ; $CD2579  85 76        mX
    BRA L_CD254B            ; $CD257B  80 CE        mX
L_CD257D:
    LDA $78                 ; $CD257D  A5 78        mX
    STA $75                 ; $CD257F  85 75        mX
    LDA $76                 ; $CD2581  A5 76        mX
    CLC                     ; $CD2583  18           mX
    ADC #$06                ; $CD2584  69 06        mX
    STA $76                 ; $CD2586  85 76        mX
    BRA L_CD254B            ; $CD2588  80 C1        mX
L_CD258A:
    STY $75                 ; $CD258A  84 75        mX
    TYA                     ; $CD258C  98           mX
    STA $78                 ; $CD258D  85 78        mX
    LDA #$30                ; $CD258F  A9 30        mX
    STA $77                 ; $CD2591  85 77        mX
L_CD2593:
    LDA [$68]               ; $CD2593  A7 68        mX
    BEQ L_CD2613            ; $CD2595  F0 7C        mX
    CMP #$23                ; $CD2597  C9 23        mX
    BEQ L_CD25FF            ; $CD2599  F0 64        mX
    CMP #$24                ; $CD259B  C9 24        mX
    BEQ L_CD2603            ; $CD259D  F0 64        mX
    CMP #$40                ; $CD259F  C9 40        mX
    BEQ L_CD25F6            ; $CD25A1  F0 53        mX
    CMP #$7B                ; $CD25A3  C9 7B        mX
    BEQ L_CD25EF            ; $CD25A5  F0 48        mX
    CMP #$25                ; $CD25A7  C9 25        mX
    BEQ L_CD25E6            ; $CD25A9  F0 3B        mX
    CMP #$21                ; $CD25AB  C9 21        mX
    BCC L_CD25D7            ; $CD25AD  90 28        mX
    BEQ L_CD260B            ; $CD25AF  F0 5A        mX
    CMP #$FF                ; $CD25B1  C9 FF        mX
    BEQ L_CD25E5            ; $CD25B3  F0 30        mX
    SEC                     ; $CD25B5  38           mX
    SBC $80                 ; $CD25B6  E5 80        mX
    BCC L_CD25DE            ; $CD25B8  90 24        mX
    CLC                     ; $CD25BA  18           mX
    ADC #$C0                ; $CD25BB  69 C0        mX
    STA $7F9002,X           ; $CD25BD  9F 02 90 7F  mX
    LDA $75                 ; $CD25C1  A5 75        mX
    STA $7F9000,X           ; $CD25C3  9F 00 90 7F  mX
    INX                     ; $CD25C7  E8           mX
    LDA $76                 ; $CD25C8  A5 76        mX
    STA $7F9000,X           ; $CD25CA  9F 00 90 7F  mX
    INX                     ; $CD25CE  E8           mX
    INX                     ; $CD25CF  E8           mX
    LDA $77                 ; $CD25D0  A5 77        mX
    STA $7F9000,X           ; $CD25D2  9F 00 90 7F  mX
    INX                     ; $CD25D6  E8           mX
L_CD25D7:
    LDA $75                 ; $CD25D7  A5 75        mX
    CLC                     ; $CD25D9  18           mX
    ADC #$08                ; $CD25DA  69 08        mX
    STA $75                 ; $CD25DC  85 75        mX
L_CD25DE:
    LDY $68                 ; $CD25DE  A4 68        mX
    INY                     ; $CD25E0  C8           mX
    STY $68                 ; $CD25E1  84 68        mX
    BRA L_CD2593            ; $CD25E3  80 AE        mX
L_CD25E5:
    RTS                     ; $CD25E5  60           mX
L_CD25E6:
    LDA $75                 ; $CD25E6  A5 75        mX
    CLC                     ; $CD25E8  18           mX
    ADC #$04                ; $CD25E9  69 04        mX
    STA $75                 ; $CD25EB  85 75        mX
    BRA L_CD25DE            ; $CD25ED  80 EF        mX
L_CD25EF:
    LDA $75                 ; $CD25EF  A5 75        mX
    DEC                     ; $CD25F1  3A           mX
    STA $75                 ; $CD25F2  85 75        mX
    BRA L_CD25DE            ; $CD25F4  80 E8        mX
L_CD25F6:
    LDA $75                 ; $CD25F6  A5 75        mX
    SEC                     ; $CD25F8  38           mX
    SBC #$04                ; $CD25F9  E9 04        mX
    STA $75                 ; $CD25FB  85 75        mX
    BRA L_CD25DE            ; $CD25FD  80 DF        mX
L_CD25FF:
    LDA #$40                ; $CD25FF  A9 40        mX
    BRA L_CD2605            ; $CD2601  80 02        mX
L_CD2603:
    LDA #$80                ; $CD2603  A9 80        mX
L_CD2605:
    EOR $77                 ; $CD2605  45 77        mX
    STA $77                 ; $CD2607  85 77        mX
    BRA L_CD25DE            ; $CD2609  80 D3        mX
L_CD260B:
    LDA $77                 ; $CD260B  A5 77        mX
    EOR #$02                ; $CD260D  49 02        mX
    STA $77                 ; $CD260F  85 77        mX
    BRA L_CD25DE            ; $CD2611  80 CB        mX
L_CD2613:
    LDA $78                 ; $CD2613  A5 78        mX
    STA $75                 ; $CD2615  85 75        mX
    LDA $76                 ; $CD2617  A5 76        mX
    CLC                     ; $CD2619  18           mX
    ADC #$08                ; $CD261A  69 08        mX
    STA $76                 ; $CD261C  85 76        mX
    BRA L_CD25DE            ; $CD261E  80 BE        mX
    db $00,$28,$1C,$28,$38,$28,$54,$28,$70,$28,$8C,$28,$A8,$28,$C4,$28 ; $CD2620
    db $E0,$28,$00,$48,$1C,$48,$38,$48,$54,$48,$70,$48,$8C,$48,$A8,$48 ; $CD2630
    db $C4,$48,$E0,$48,$00,$68,$1C,$68,$38,$68,$54,$68,$70,$68,$8C,$68 ; $CD2640
    db $A8,$68,$C4,$68,$E0,$68,$00,$88,$1C,$88,$38,$88,$54,$88,$70,$88 ; $CD2650
    db $8C,$88,$A8,$88,$C4,$88,$E0,$88,$5B,$5C,$00,$5D,$5E,$FF,$04,$60 ; $CD2660
    db $2C,$30,$EC,$60,$28,$30,$28,$80,$2C,$30,$D0,$80,$28,$30,$0C,$80 ; $CD2670
    db $2C,$30,$E0,$80,$28,$30,$0C,$60,$2C,$30,$E0,$60,$28,$30,$42,$A0 ; $CD2680
    db $2C,$30,$B6,$A0,$28,$30,$1A,$60,$2C,$30,$D4,$60,$28,$30,$00,$80 ; $CD2690
    db $2C,$30,$EE,$80,$28,$30,$54,$A0,$2C,$30,$A4,$A0,$28,$30,$20,$20 ; $CD26A0
    db $20,$20,$20,$20,$41,$00,$00,$42,$49,$54,$4D,$41,$50,$20,$42,$52 ; $CD26B0
    db $4F,$54,$48,$45,$52,$53,$00,$00,$20,$20,$20,$20,$20,$47,$41,$4D ; $CD26C0
    db $45,$FF,$21,$49,$4E,$56,$41,$4C,$49,$44,$20,$50,$41,$53,$53,$57 ; $CD26D0
    db $4F,$52,$44,$FF,$50,$52,$45,$53,$53,$20,$46,$49,$52,$45,$FF,$20 ; $CD26E0
    db $25,$53,$45,$4C,$45,$43,$54,$25,$50,$4C,$41,$59,$45,$52,$53,$00 ; $CD26F0
    db $00,$00,$00,$21,$25,$4F,$4E,$45,$25,$50,$4C,$41,$59,$45,$52,$20 ; $CD2700
    db $3F,$20,$43,$50,$55,$00,$00,$20,$20,$20,$54,$57,$4F,$20,$50,$4C ; $CD2710
    db $41,$59,$45,$52,$53,$00,$00,$20,$20,$20,$20,$20,$4F,$50,$54,$49 ; $CD2720
    db $4F,$4E,$53,$20,$FF,$25,$20,$20,$53,$45,$4C,$45,$43,$54,$20,$47 ; $CD2730
    db $41,$4D,$45,$21,$00,$00,$00,$00,$20,$53,$54,$41,$52,$54,$20,$4E ; $CD2740
    db $45,$57,$20,$47,$41,$4D,$45,$00,$00,$20,$45,$4E,$54,$45,$52,$20 ; $CD2750
    db $50,$41,$53,$53,$57,$4F,$52,$44,$FF,$50,$41,$53,$53,$57,$4F,$52 ; $CD2760
    db $44,$FF,$20,$20,$20,$20,$20,$57,$4F,$52,$4C,$44,$20,$20,$21,$00 ; $CD2770
    db $00,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20 ; $CD2780
    db $20,$20,$20,$00,$00,$00,$20,$20,$20,$20,$20,$21,$4C,$45,$56,$45 ; $CD2790
    db $4C,$20,$20,$21,$00,$00,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20 ; $CD27A0
    db $20,$20,$20,$20,$20,$20,$20,$FF,$20,$20,$20,$20,$20,$4F,$50,$54 ; $CD27B0
    db $49,$4F,$4E,$53,$21,$00,$00,$00,$00,$20,$20,$50,$4C,$41,$59,$20 ; $CD27C0
    db $54,$55,$4E,$45,$20,$30,$30,$00,$00,$50,$4C,$41,$59,$20,$53,$4F ; $CD27D0
    db $55,$4E,$44,$20,$46,$58,$20,$30,$30,$00,$00,$25,$20,$20,$20,$20 ; $CD27E0
    db $20,$20,$45,$58,$49,$54,$FF,$2B,$2B,$25,$20,$20,$20,$20,$47,$41 ; $CD27F0
    db $4D,$45,$20,$4F,$56,$45,$52,$00,$00,$2B,$20,$2A,$4D,$45,$52,$43 ; $CD2800
    db $45,$4E,$41,$52,$59,$20,$30,$30,$30,$30,$30,$30,$00,$2B,$20,$57 ; $CD2810
    db $4F,$52,$4C,$44,$20,$38,$20,$20,$4C,$45,$56,$45,$4C,$20,$38,$21 ; $CD2820
    db $00,$00,$2B,$20,$2A,$4D,$45,$52,$43,$45,$4E,$41,$52,$59,$20,$30 ; $CD2830
    db $30,$30,$30,$30,$30,$00,$2B,$20,$57,$4F,$52,$4C,$44,$20,$38,$20 ; $CD2840
    db $20,$4C,$45,$56,$45,$4C,$20,$38,$FF,$FF,$20,$20,$20,$20,$25,$50 ; $CD2850
    db $41,$53,$53,$57,$4F,$52,$44,$21,$00,$00,$42,$20,$43,$20,$44,$20 ; $CD2860
    db $46,$20,$47,$20,$48,$20,$4A,$20,$4B,$20,$4C,$00,$00,$4D,$20,$4E ; $CD2870
    db $20,$50,$20,$51,$20,$52,$20,$53,$20,$54,$20,$56,$20,$57,$00,$00 ; $CD2880
    db $58,$20,$59,$20,$5A,$20,$30,$20,$31,$20,$32,$20,$33,$20,$34,$20 ; $CD2890
    db $35,$00,$00,$36,$20,$37,$20,$38,$20,$39,$20,$40,$20,$20,$20,$3F ; $CD28A0
    db $20,$3C,$20,$3D,$FF,$42,$43,$44,$46,$47,$48,$4A,$4B,$4C,$4D,$4E ; $CD28B0
    db $50,$51,$52,$53,$54,$56,$57,$58,$59,$5A,$30,$31,$32,$33,$34,$35 ; $CD28C0
    db $36,$37,$38,$39,$40,$3A,$3A,$3A,$3A,$50,$41,$53,$53,$57,$4F,$52 ; $CD28D0
    db $44,$FF,$42,$43,$44,$46,$47,$48,$4A,$4B,$4C,$4D,$4E,$50,$51,$52 ; $CD28E0
    db $53,$54,$56,$57,$58,$59,$5A,$30,$31,$32,$33,$34,$35,$36,$37,$38 ; $CD28F0
    db $39,$40,$20,$3F,$3C,$3D,$42,$52,$49,$47,$41,$4E,$44,$20,$20,$4D ; $CD2900
    db $45,$52,$43,$45,$4E,$41,$52,$59,$47,$45,$4E,$54,$4C,$45,$4D,$41 ; $CD2910
    db $4E,$4E,$41,$56,$56,$49,$45,$20,$20,$20,$54,$48,$55,$47,$20,$20 ; $CD2920
    db $20,$20,$20,$53,$43,$49,$45,$4E,$54,$49,$53,$54,$25,$20,$20,$20 ; $CD2930
    db $54,$48,$45,$20,$46,$4F,$52,$45,$53,$54,$20,$20,$20,$20,$20,$20 ; $CD2940
    db $54,$48,$45,$20,$57,$4F,$52,$4B,$53,$48,$4F,$50,$53,$20,$20,$20 ; $CD2950
    db $46,$4F,$52,$54,$45,$53,$51,$55,$45,$20,$4D,$41,$4E,$53,$49,$4F ; $CD2960
    db $4E,$20,$20,$20,$20,$54,$48,$45,$20,$43,$45,$4C,$4C,$41,$52,$53 ; $CD2970
    db $20,$20,$20,$20,$20,$20,$54,$48,$45,$20,$42,$45,$47,$49,$4E,$4E ; $CD2980
    db $49,$4E,$47,$20,$25,$20,$20,$20,$4D,$55,$44,$20,$52,$49,$56,$45 ; $CD2990
    db $52,$53,$20,$20,$20,$20,$20,$20,$20,$20,$52,$49,$4E,$47,$53,$20 ; $CD29A0
    db $20,$20,$20,$20,$20,$20,$20,$20,$20,$52,$4F,$43,$4B,$49,$45,$53 ; $CD29B0
    db $20,$20,$20,$20,$25,$20,$20,$20,$20,$20,$20,$4D,$41,$5A,$45,$20 ; $CD29C0
    db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$54,$52,$41,$50,$53,$20 ; $CD29D0
    db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$53,$54,$45,$41,$4D,$20 ; $CD29E0
    db $20,$20,$20,$20,$25,$20,$20,$20,$20,$51,$55,$41,$52,$54,$45,$52 ; $CD29F0
    db $53,$20,$20,$20,$25,$20,$20,$20,$20,$54,$48,$45,$20,$50,$49,$54 ; $CD2A00
    db $53,$20,$20,$20,$20,$20,$20,$20,$43,$4F,$4E,$46,$55,$53,$49,$4F ; $CD2A10
    db $4E,$20,$20,$20,$20,$20,$20,$20,$20,$52,$45,$56,$45,$52,$53,$45 ; $CD2A20
    db $20,$20,$20,$20,$20,$20,$20,$20,$20,$57,$41,$59,$20,$4F,$55,$54 ; $CD2A30
    db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$53,$45,$57,$45,$52,$20 ; $CD2A40
    db $20,$20,$20,$20,$20,$20,$20,$20,$50,$55,$4D,$50,$20,$52,$4F,$4F ; $CD2A50
    db $4D,$20,$20,$20,$48,$41,$4C,$4C,$20,$4F,$46,$20,$4D,$41,$43,$48 ; $CD2A60
    db $49,$4E,$45,$53,$25,$20,$54,$49,$4D,$45,$20,$46,$4F,$52,$20,$43 ; $CD2A70
    db $48,$41,$4F,$53,$20,$20,$7B,$7B,$5B,$5C,$5C,$5C,$5D,$5E,$5E,$7B ; $CD2A80
    db $7B,$5E,$5E,$5F,$60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F ; $CD2A90
    db $5E,$5E,$5E,$5E,$5D,$5C,$5C,$5C,$5B,$00,$00,$00,$24,$23,$20,$20 ; $CD2AA0
    db $7B,$7B,$5B,$5C,$5C,$5C,$5D,$5E,$5E,$5E,$7B,$7B,$5E,$5F,$60,$61 ; $CD2AB0
    db $40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E,$5E,$5E,$5E,$5D,$5C ; $CD2AC0
    db $5C,$5C,$5B,$FF,$25,$20,$5B,$5C,$5C,$5D,$5E,$5E,$5E,$7B,$7B,$5F ; $CD2AD0
    db $60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E,$5E,$7B,$7B ; $CD2AE0
    db $5E,$5D,$5C,$5C,$5B,$00,$00,$00,$24,$23,$25,$20,$5B,$5C,$5C,$5D ; $CD2AF0
    db $5E,$5E,$5E,$7B,$7B,$5F,$60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61 ; $CD2B00
    db $60,$5F,$5E,$5E,$7B,$7B,$5E,$5D,$5C,$5C,$5B,$FF,$7B,$7B,$20,$20 ; $CD2B10
    db $20,$20,$20,$20,$5B,$5C,$5D,$5E,$7B,$7B,$5F,$60,$61,$40,$40,$7B ; $CD2B20
    db $7B,$7B,$20,$23,$61,$60,$5F,$5E,$7B,$7B,$5E,$5D,$5C,$5B,$00,$00 ; $CD2B30
    db $00,$24,$23,$7B,$7B,$20,$20,$20,$20,$20,$20,$5B,$5C,$5D,$5E,$7B ; $CD2B40
    db $7B,$5F,$60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E,$7B ; $CD2B50
    db $7B,$5E,$5D,$5C,$5B,$FF,$20,$20,$20,$20,$20,$20,$20,$40,$7B,$7B ; $CD2B60
    db $7B,$5B,$5D,$5E,$5F,$60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61,$60 ; $CD2B70
    db $5F,$5E,$5D,$5B,$00,$00,$00,$24,$23,$20,$20,$20,$20,$20,$20,$20 ; $CD2B80
    db $40,$7B,$7B,$7B,$5B,$5D,$5E,$5F,$60,$61,$40,$40,$7B,$7B,$7B,$20 ; $CD2B90
    db $23,$61,$60,$5F,$5E,$5D,$5B,$FF,$25,$20,$5B,$5C,$5D,$5E,$5F,$60 ; $CD2BA0
    db $61,$40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E,$5D,$5C,$5B,$00 ; $CD2BB0
    db $00,$00,$24,$23,$25,$20,$5B,$5C,$5D,$5E,$5F,$60,$61,$40,$40,$7B ; $CD2BC0
    db $7B,$7B,$20,$23,$61,$60,$5F,$5E,$5D,$5C,$5B,$FF,$00,$00,$0D,$00 ; $CD2BD0
    db $14,$00,$1C,$00,$23,$00,$2B,$00,$3A,$00,$4C,$00,$5D,$00,$64,$00 ; $CD2BE0
    db $6B,$00,$7A,$00,$80,$00,$91,$00,$A2,$00,$B1,$00,$C2,$00,$CA,$00 ; $CD2BF0
    db $D8,$00,$E5,$00,$F6,$00,$FF,$00,$0E,$01,$17,$01,$28,$01,$38,$01 ; $CD2C00
    db $47,$01,$47,$01,$56,$01,$62,$01,$6E,$01,$20,$45,$58,$54,$52,$41 ; $CD2C10
    db $00,$20,$4C,$49,$46,$45,$FF,$20,$53,$4B,$49,$4C,$4C,$FF,$20,$48 ; $CD2C20
    db $45,$41,$4C,$54,$48,$FF,$20,$53,$50,$45,$45,$44,$FF,$20,$57,$49 ; $CD2C30
    db $53,$44,$4F,$4D,$FF,$53,$50,$45,$43,$49,$41,$4C,$00,$20,$50,$4F ; $CD2C40
    db $57,$45,$52,$FF,$43,$4F,$4D,$50,$4C,$45,$54,$45,$00,$54,$52,$41 ; $CD2C50
    db $49,$4E,$49,$4E,$47,$FF,$20,$57,$45,$41,$50,$4F,$4E,$00,$50,$4F ; $CD2C60
    db $57,$45,$52,$20,$55,$50,$FF,$20,$20,$45,$58,$49,$54,$FF,$20,$20 ; $CD2C70
    db $42,$4F,$4D,$42,$FF,$20,$20,$53,$48,$4F,$54,$00,$20,$20,$42,$55 ; $CD2C80
    db $52,$53,$54,$FF,$20,$20,$4D,$41,$50,$FF,$20,$44,$45,$53,$54,$52 ; $CD2C90
    db $4F,$59,$00,$20,$20,$4E,$4F,$44,$45,$53,$FF,$20,$20,$52,$45,$50 ; $CD2CA0
    db $45,$4C,$00,$20,$4D,$4F,$4E,$53,$54,$45,$52,$FF,$20,$20,$46,$49 ; $CD2CB0
    db $52,$53,$54,$00,$20,$20,$20,$41,$49,$44,$FF,$20,$46,$52,$45,$45 ; $CD2CC0
    db $5A,$45,$00,$20,$4D,$4F,$4E,$53,$54,$45,$52,$FF,$20,$53,$48,$49 ; $CD2CD0
    db $45,$4C,$44,$FF,$20,$50,$41,$52,$54,$59,$00,$20,$50,$4F,$57,$45 ; $CD2CE0
    db $52,$FF,$20,$20,$41,$49,$52,$00,$20,$42,$55,$52,$53,$54,$FF,$44 ; $CD2CF0
    db $49,$53,$54,$52,$41,$43,$54,$00,$4D,$4F,$4E,$53,$54,$45,$52,$FF ; $CD2D00
    db $20,$4D,$4F,$4C,$4F,$54,$4F,$56,$FF,$20,$47,$52,$4F,$55,$4E,$44 ; $CD2D10
    db $00,$20,$20,$4D,$49,$4E,$45,$FF,$44,$59,$4E,$41,$4D,$49,$54,$45 ; $CD2D20
    db $FF,$59,$4F,$55,$20,$43,$41,$4E,$54,$00,$20,$41,$46,$46,$4F,$52 ; $CD2D30
    db $44,$FF,$4D,$41,$58,$49,$4D,$55,$4D,$00,$52,$45,$41,$43,$48,$45 ; $CD2D40
    db $44,$FF,$53,$45,$4C,$45,$43,$54,$00,$53,$50,$45,$43,$49,$41,$4C ; $CD2D50
    db $FF,$20,$45,$51,$55,$49,$50,$00,$20,$50,$4C,$41,$59,$45,$52,$FF ; $CD2D60
    db $50,$4C,$41,$59,$45,$52,$00,$20,$4F,$4E,$45,$FF,$50,$4C,$41,$59 ; $CD2D70
    db $45,$52,$00,$20,$54,$57,$4F,$FF,$20,$FF,$30,$52,$32,$31,$30,$52 ; $CD2D80
    db $35,$44,$57,$35,$44,$39,$30,$47,$31,$31,$30,$38,$35,$47,$42,$35 ; $CD2D90
    db $51,$30,$30,$56,$32,$31,$30,$34,$35,$43,$40,$35,$44,$52,$30,$4B ; $CD2DA0
    db $31,$31,$30,$57,$35,$4A,$58,$35,$43,$35,$5A,$40,$31,$30,$34,$34 ; $CD2DB0
    db $48,$47,$4C,$48,$32,$53,$48,$48,$4E,$31,$53,$50,$4A,$44,$56,$35 ; $CD2DC0
    db $52,$34,$30,$48,$31,$31,$30,$34,$35,$35,$50,$35,$52,$34,$48,$34 ; $CD2DD0
    db $31,$31,$30,$30,$35,$43,$51,$35,$43,$51,$30,$30,$31,$31,$50,$52 ; $CD2DE0
    db $33,$4D,$4C,$36,$40,$59,$00,$01,$19,$07,$02,$02,$01,$23,$07,$03 ; $CD2DF0
    db $04,$01,$2D,$07,$04,$06,$01,$32,$07,$05,$08,$02,$37,$07,$05,$0A ; $CD2E00
    db $02,$3C,$07,$06,$0B,$02,$41,$07,$07,$0C,$02,$46,$08,$07,$0D,$03 ; $CD2E10
    db $4B,$08,$08,$0E,$03,$50,$08,$08,$0F,$03,$55,$09,$09,$00,$01,$19 ; $CD2E20
    db $07,$02,$02,$01,$23,$07,$03,$04,$01,$2D,$07,$04,$05,$01,$32,$07 ; $CD2E30
    db $05,$06,$02,$37,$07,$05,$07,$02,$3C,$07,$06,$08,$02,$41,$07,$07 ; $CD2E40
    db $09,$02,$46,$08,$07,$0A,$03,$4B,$08,$08,$0B,$03,$50,$08,$08,$0C ; $CD2E50
    db $03,$55,$09,$09,$00,$01,$14,$07,$02,$02,$01,$19,$07,$03,$04,$01 ; $CD2E60
    db $1E,$07,$05,$06,$02,$23,$07,$06,$07,$02,$28,$08,$07,$08,$02,$2D ; $CD2E70
    db $08,$08,$09,$03,$32,$08,$09,$0A,$03,$37,$09,$09,$0B,$03,$3C,$09 ; $CD2E80
    db $0A,$0C,$04,$41,$09,$0A,$0D,$04,$46,$0A,$0A,$00,$01,$1E,$06,$01 ; $CD2E90
    db $02,$01,$28,$06,$02,$04,$01,$32,$06,$03,$06,$01,$3C,$06,$04,$08 ; $CD2EA0
    db $01,$46,$07,$04,$0A,$02,$4B,$07,$05,$0C,$02,$50,$07,$05,$0D,$02 ; $CD2EB0
    db $55,$08,$06,$0E,$02,$5A,$08,$06,$0F,$02,$5F,$08,$07,$0F,$02,$64 ; $CD2EC0
    db $08,$08,$00,$01,$1E,$06,$01,$02,$01,$28,$06,$02,$04,$01,$32,$06 ; $CD2ED0
    db $03,$06,$01,$3C,$06,$04,$08,$01,$46,$07,$04,$0A,$02,$4B,$07,$05 ; $CD2EE0
    db $0B,$02,$50,$07,$05,$0C,$02,$55,$08,$06,$0D,$02,$5A,$08,$06,$0E ; $CD2EF0
    db $02,$5F,$08,$07,$0F,$02,$64,$08,$08,$00,$01,$0F,$07,$03,$02,$01 ; $CD2F00
    db $14,$07,$04,$04,$02,$19,$07,$05,$06,$02,$1E,$07,$06,$08,$02,$23 ; $CD2F10
    db $08,$07,$09,$03,$28,$08,$08,$0A,$03,$2D,$08,$09,$0A,$03,$32,$09 ; $CD2F20
    db $09,$0B,$04,$37,$09,$0A,$0B,$04,$3C,$09,$0A,$0B,$04,$41,$0A,$0A ; $CD2F30
    db $02,$0C,$0B,$00,$01,$0D,$06,$00,$03,$0B,$05,$09,$0E,$02,$00,$00 ; $CD2F40
    db $0C,$0A,$00,$00,$06,$03,$08,$07,$02,$0C,$0B,$00                 ; $CD2F50
L_CD2F5C:
    LDX #$00                ; $CD2F5C  A2 00        Mx
    BRK #$86                ; $CD2F5E  00 86        Mx
    LDY #$A6                ; $CD2F60  A0 A6        Mx
    TSX                     ; $CD2F62  BA           Mx
    JSR L_CD2FE2            ; $CD2F63  20 E2 2F     Mx
    LDA $BC                 ; $CD2F66  A5 BC        Mx
    JSR L_CD2FC1            ; $CD2F68  20 C1 2F     Mx
    LDX $C0                 ; $CD2F6B  A6 C0        Mx
    JSR L_CD2FE2            ; $CD2F6D  20 E2 2F     Mx
    LDA $C2                 ; $CD2F70  A5 C2        Mx
    JSR L_CD2FC1            ; $CD2F72  20 C1 2F     Mx
    LDA $AA                 ; $CD2F75  A5 AA        Mx
    BEQ L_CD2F83            ; $CD2F77  F0 0A        Mx
    LDX $C6                 ; $CD2F79  A6 C6        Mx
    JSR L_CD2FE2            ; $CD2F7B  20 E2 2F     Mx
    LDA $C8                 ; $CD2F7E  A5 C8        Mx
    JSR L_CD2FC1            ; $CD2F80  20 C1 2F     Mx
L_CD2F83:
    LDX $D2                 ; $CD2F83  A6 D2        Mx
    JSR L_CD2FE2            ; $CD2F85  20 E2 2F     Mx
    LDA $D0                 ; $CD2F88  A5 D0        Mx
    JSR L_CD2FC1            ; $CD2F8A  20 C1 2F     Mx
    LDX $CC                 ; $CD2F8D  A6 CC        Mx
    JSR L_CD2FE2            ; $CD2F8F  20 E2 2F     Mx
    LDA $CE                 ; $CD2F92  A5 CE        Mx
    CMP $E6                 ; $CD2F94  C5 E6        Mx
    BPL L_CD2F9A            ; $CD2F96  10 02        Mx
    LDA $E6                 ; $CD2F98  A5 E6        Mx
L_CD2F9A:
    JSR L_CD2FC1            ; $CD2F9A  20 C1 2F     Mx
    LDX #$04                ; $CD2F9D  A2 04        Mx
    BRK #$A5                ; $CD2F9F  00 A5        Mx
    TAX                     ; $CD2FA1  AA           Mx
    BEQ L_CD2FA7            ; $CD2FA2  F0 03        Mx
    LDX #$05                ; $CD2FA4  A2 05        Mx
    BRK #$8A                ; $CD2FA6  00 8A        Mx
    LDX $A0                 ; $CD2FA8  A6 A0        Mx
    STZ $A0                 ; $CD2FAA  64 A0        Mx
    STZ $A1                 ; $CD2FAC  64 A1        Mx
    JSR L_CD2FC1            ; $CD2FAE  20 C1 2F     Mx
    CMP #$9055              ; $CD2FB1  C9 55 90     Mx
    PHD                     ; $CD2FB4  0B           Mx
    LDA $B6                 ; $CD2FB5  A5 B6        Mx
    CMP #$F00A              ; $CD2FB7  C9 0A F0     Mx
    ORA $A5                 ; $CD2FBA  05 A5        Mx
    LDY $1A,X               ; $CD2FBC  B4 1A        Mx
    STA $B6                 ; $CD2FBE  85 B6        Mx
    RTS                     ; $CD2FC0  60           Mx
L_CD2FC1:
    STX $4204               ; $CD2FC1  8E 04 42     Mx
    STA $4206               ; $CD2FC4  8D 06 42     Mx
    NOP                     ; $CD2FC7  EA           Mx
    NOP                     ; $CD2FC8  EA           Mx
    NOP                     ; $CD2FC9  EA           Mx
    NOP                     ; $CD2FCA  EA           Mx
    NOP                     ; $CD2FCB  EA           Mx
    NOP                     ; $CD2FCC  EA           Mx
    NOP                     ; $CD2FCD  EA           Mx
    NOP                     ; $CD2FCE  EA           Mx
    NOP                     ; $CD2FCF  EA           Mx
    REP #$20                ; $CD2FD0  C2 20        Mx
    LDA $4214               ; $CD2FD2  AD 14 42     Mx
    BPL L_CD2FDA            ; $CD2FD5  10 03        Mx
    LDA #$0064              ; $CD2FD7  A9 64 00     Mx
L_CD2FDA:
    CLC                     ; $CD2FDA  18           Mx
    ADC $A0                 ; $CD2FDB  65 A0        Mx
    STA $A0                 ; $CD2FDD  85 A0        Mx
    SEP #$20                ; $CD2FDF  E2 20        Mx
    RTS                     ; $CD2FE1  60           mx
L_CD2FE2:
    PHA                     ; $CD2FE2  48           Mx
    REP #$20                ; $CD2FE3  C2 20        Mx
    TXA                     ; $CD2FE5  8A           Mx
    ASL                     ; $CD2FE6  0A           Mx
    ASL                     ; $CD2FE7  0A           Mx
    STA $5C                 ; $CD2FE8  85 5C        Mx
    ASL                     ; $CD2FEA  0A           Mx
    ASL                     ; $CD2FEB  0A           Mx
    ASL                     ; $CD2FEC  0A           Mx
    PHA                     ; $CD2FED  48           Mx
    CLC                     ; $CD2FEE  18           Mx
    ADC $5C                 ; $CD2FEF  65 5C        Mx
    STA $5C                 ; $CD2FF1  85 5C        Mx
    PLA                     ; $CD2FF3  68           Mx
    ASL                     ; $CD2FF4  0A           Mx
    CLC                     ; $CD2FF5  18           Mx
    ADC $5C                 ; $CD2FF6  65 5C        Mx
    TAX                     ; $CD2FF8  AA           Mx
    SEP #$20                ; $CD2FF9  E2 20        Mx
    PLA                     ; $CD2FFB  68           mx
    RTS                     ; $CD2FFC  60           mx
    db $00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$01,$00,$01,$02,$01,$03 ; $CD2FFD
    db $01,$04,$01,$05,$02,$00,$02,$01,$02,$03,$02,$04,$02,$05,$03,$00 ; $CD300D
    db $03,$01,$03,$02,$03,$04,$03,$05,$04,$00,$04,$01,$04,$02,$04,$03 ; $CD301D
    db $04,$05,$05,$00,$05,$01,$05,$02,$05,$03,$05,$04,$64,$74,$20,$3E ; $CD302D
    db $32,$A5,$64,$48,$29,$0F,$85,$64,$68,$29,$10,$4A,$85,$5C,$A5,$69 ; $CD303D
    db $48,$29,$03,$85,$69,$68,$29,$1C,$4A,$4A,$05,$5C,$85,$5C,$48,$20 ; $CD304D
    db $98,$33,$68,$C5,$5C,$F0,$05,$A9,$01,$85,$74,$60,$A5,$64,$29,$01 ; $CD305D
    db $CD,$12,$02,$D0,$29,$8D,$12,$02,$A5,$64,$29,$0C,$8D,$14,$02,$F0 ; $CD306D
    db $1D,$A5,$65,$0A,$85,$5C,$64,$5D,$A6,$5C,$BF,$FD,$2F,$CD,$8D,$20 ; $CD307D
    db $02,$BF,$FE,$2F,$CD,$8D,$5E,$02,$A5,$66,$C9,$20,$90,$03,$4C,$22 ; $CD308D
    db $31,$8D,$58,$02,$A5,$67,$C9,$20,$B0,$F4,$8D,$96,$02,$A5,$69,$29 ; $CD309D
    db $03,$85,$5C,$A5,$68,$0A,$0A,$05,$5C,$85,$5C,$64,$5D,$A6,$5C,$A9 ; $CD30AD
    db $0B,$8E,$04,$42,$8D,$06,$42,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA ; $CD30BD
    db $C2,$20,$AD,$14,$42,$E2,$20,$C9,$0B,$B0,$4A,$8D,$2E,$02,$8D,$2C ; $CD30CD
    db $02,$AD,$16,$42,$C9,$0B,$B0,$3D,$8D,$6C,$02,$8D,$6A,$02,$A2,$06 ; $CD30DD
    db $00,$20,$27,$31,$8E,$24,$02,$A2,$09,$00,$20,$27,$31,$8E,$62,$02 ; $CD30ED
    db $9C,$22,$02,$64,$AA,$AD,$12,$02,$49,$01,$8D,$60,$02,$20,$99,$05 ; $CD30FD
    db $20,$E2,$05,$20,$B1,$05,$20,$A5,$05,$20,$E2,$05,$20,$BD,$05,$E2 ; $CD310D
    db $20,$20,$8A,$32,$60,$A9,$01,$85,$74,$60,$B5,$64,$0A,$0A,$0A,$85 ; $CD311D
    db $5D,$B5,$65,$48,$4A,$4A,$05,$5D,$85,$5D,$68,$0A,$0A,$0A,$0A,$0A ; $CD312D
    db $0A,$29,$C0,$85,$5C,$B5,$66,$0A,$29,$3E,$05,$5C,$85,$5C,$A6,$5C ; $CD313D
    db $60,$A9,$00,$85,$74,$A2,$00,$00,$BF,$60,$95,$7F,$DA,$A2,$1F,$00 ; $CD314D
    db $DF,$B5,$28,$CD,$F0,$09,$CA,$10,$F7,$FA,$A9,$01,$85,$74,$60,$8A ; $CD315D
    db $FA,$95,$64,$E8,$E0,$0C,$00,$D0,$DF,$60,$A2,$00,$00,$B5,$64,$85 ; $CD316D
    db $5C,$64,$5D,$DA,$A6,$5C,$BF,$B5,$28,$CD,$FA,$9F,$60,$95,$7F,$E8 ; $CD317D
    db $E0,$0C,$00,$D0,$E8,$A9,$FF,$9F,$60,$95,$7F,$60,$A2,$0C,$00,$A9 ; $CD318D
    db $00,$95,$63,$CA,$D0,$FB,$64,$74,$AD,$14,$02,$29,$1E,$0D,$12,$02 ; $CD319D
    db $85,$64,$A2,$00,$00,$AD,$20,$02,$DF,$FD,$2F,$CD,$D0,$09,$AD,$5E ; $CD31AD
    db $02,$DF,$FE,$2F,$CD,$F0,$0C,$E8,$E8,$E0,$40,$00,$90,$E7,$A9,$01 ; $CD31BD
    db $85,$74,$60,$8A,$4A,$85,$65,$AD,$58,$02,$85,$66,$AD,$96,$02,$85 ; $CD31CD
    db $67,$AD,$2C,$02,$0A,$0A,$0A,$18,$6D,$2C,$02,$6D,$2C,$02,$6D,$2C ; $CD31DD
    db $02,$6D,$6A,$02,$48,$4A,$4A,$85,$68,$68,$29,$03,$85,$69,$C2,$20 ; $CD31ED
    db $AD,$24,$02,$48,$AD,$62,$02,$48,$E2,$20,$20,$77,$32,$C2,$20,$AD ; $CD31FD
    db $24,$02,$A2,$06,$00,$20,$4D,$32,$AD,$62,$02,$20,$4D,$32,$C2,$20 ; $CD320D
    db $68,$8D,$62,$02,$68,$8D,$24,$02,$E2,$20,$20,$98,$33,$0A,$48,$29 ; $CD321D
    db $10,$05,$64,$85,$64,$68,$0A,$29,$1C,$05,$69,$85,$69,$20,$3E,$32 ; $CD322D
    db $60,$A2,$0C,$00,$B5,$63,$49,$15,$95,$63,$CA,$D0,$F7,$60,$C2,$20 ; $CD323D
    db $48,$4A,$4A,$4A,$85,$5C,$A5,$5D,$29,$1F,$00,$95,$64,$E8,$68,$48 ; $CD324D
    db $0A,$0A,$85,$5C,$A5,$5D,$29,$1F,$00,$95,$64,$E8,$68,$4A,$E2,$20 ; $CD325D
    db $29,$1F,$95,$64,$E8,$C2,$20,$60,$E2,$20,$20,$99,$05,$20,$9D,$32 ; $CD326D
    db $20,$B1,$05,$20,$A5,$05,$20,$9D,$32,$20,$BD,$05,$60,$20,$99,$05 ; $CD327D
    db $20,$F7,$32,$20,$B1,$05,$20,$A5,$05,$20,$F7,$32,$20,$BD,$05,$60 ; $CD328D
    db $C2,$20,$A5,$CC,$20,$7B,$33,$20,$67,$33,$A5,$D6,$20,$5A,$33,$20 ; $CD329D
    db $67,$33,$A5,$D8,$20,$5A,$33,$20,$67,$33,$A5,$DA,$20,$5A,$33,$20 ; $CD32AD
    db $67,$33,$A4,$B4,$A2,$2C,$01,$20,$88,$33,$20,$67,$33,$A4,$BA,$A2 ; $CD32BD
    db $0F,$00,$20,$88,$33,$20,$67,$33,$A4,$C0,$A2,$FA,$00,$20,$88,$33 ; $CD32CD
    db $20,$67,$33,$A5,$AA,$29,$FF,$00,$F0,$0B,$A4,$C6,$A2,$50,$00,$20 ; $CD32DD
    db $88,$33,$20,$67,$33,$E2,$20,$60,$C2,$20,$C2,$20,$A5,$D6,$20,$5A ; $CD32ED
    db $33,$20,$49,$33,$A5,$D8,$20,$5A,$33,$20,$49,$33,$A5,$DA,$20,$5A ; $CD32FD
    db $33,$20,$49,$33,$A4,$B4,$A2,$2C,$01,$20,$88,$33,$20,$49,$33,$A4 ; $CD330D
    db $BA,$A2,$0F,$00,$20,$88,$33,$20,$49,$33,$A4,$C0,$A2,$FA,$00,$20 ; $CD331D
    db $88,$33,$20,$49,$33,$A5,$AA,$29,$01,$00,$F0,$0B,$A4,$C6,$A2,$50 ; $CD332D
    db $00,$20,$88,$33,$20,$49,$33,$E2,$20,$60,$C2,$20,$48,$A5,$AC,$38 ; $CD333D
    db $E3,$01,$B0,$03,$A9                                             ; $CD334D
L_CD3352:
    BRK #$00                ; $CD3352  00 00        Mx
    STA $AC                 ; $CD3354  85 AC        Mx
    PLA                     ; $CD3356  68           Mx
    RTS                     ; $CD3357  60           Mx
    db $C2,$20,$C9,$00,$00,$F0,$1B,$3A,$0A,$AA,$BF,$A0,$11,$CD,$60,$18 ; $CD3358
    db $65,$AC,$85,$AC,$60,$A8,$A9,$00,$00,$88,$30,$06,$18,$69,$96,$00 ; $CD3368
    db $80,$F7,$60,$A8,$A9,$00,$00,$88,$30,$F8,$18,$69,$FA,$00,$80,$F7 ; $CD3378
    db $DA,$A9,$00,$00,$88,$30,$05,$18,$63,$01,$80,$F8,$FA,$60,$E2,$20 ; $CD3388
    db $A9,$00,$85,$5C,$A2,$0C,$00,$85,$75,$B5,$63,$18,$65,$75,$18,$65 ; $CD3398
    db $5C,$85,$5C,$C6,$75,$CA,$D0,$F1,$A5,$5C,$29,$0F,$85,$5C,$60,$A0 ; $CD33A8
    db $60,$45,$80,$03                                                 ; $CD33B8
L_CD33BC:
    LDY #$50                ; $CD33BC  A0 50        Mx
    EOR $5BA5,X             ; $CD33BE  5D A5 5B     Mx
    BNE L_CD33C6            ; $CD33C1  D0 03        Mx
    LDY #$E0                ; $CD33C3  A0 E0        Mx
    CPX #$A9                ; $CD33C5  E0 A9        Mx
    AND ($85),Y             ; $CD33C7  31 85        Mx
    ADC [$A9],Y             ; $CD33C9  77 A9        Mx
    BRA L_CD3352            ; $CD33CB  80 85        Mx
    db $7C,$84,$75,$A0,$03,$01,$84,$7A,$A2,$00,$01,$4C,$DC,$18,$60,$C2 ; $CD33CD
    db $20,$A9,$4B,$00,$A2,$BA,$00,$20,$29,$34,$F0,$3D,$A9,$2C,$01,$A2 ; $CD33DD
    db $B4,$00,$20,$29,$34,$F0,$32,$A9,$FA,$00,$A2,$C0,$00,$20,$29,$34 ; $CD33ED
    db $F0,$27,$A5,$AA,$F0,$0B,$A9,$50,$00,$A2,$C6,$00,$20,$29,$34,$F0 ; $CD33FD
    db $18,$A9,$FA,$00,$A2,$CC,$00,$20,$29,$34,$F0,$0D,$A9,$AC,$00,$C9 ; $CD340D
    db $F4,$01,$B0,$05,$A9,$08,$00,$85,$8E,$E2,$20,$60,$C5,$AC,$B0,$06 ; $CD341D
    db $B5,$00,$D5,$02,$D0,$04,$A9,$01,$00,$60,$A9,$00,$00,$60,$52,$4E ; $CD342D
    db $43,$02,$00,$00,$67,$40,$00,$00,$4C,$0B,$72,$B0,$49,$34,$04,$03 ; $CD343D
    db $1E,$00,$17,$00,$79,$01,$05,$01,$03,$CF,$03,$06,$03,$12,$FF,$00 ; $CD344D
    db $FB,$00,$F3,$2E,$03,$04,$7A,$BD,$42,$EC,$93,$CC,$B3,$8C,$73,$00 ; $CD345D
    db $FF,$FC,$00,$FE,$01,$F1,$02,$B1,$04,$60,$04,$40,$04,$80,$04,$1F ; $CD346D
    db $00,$01,$CF,$30,$41,$BF,$D0,$14,$2F,$81,$FE,$0C,$C0,$00,$FF,$CF ; $CD347D
    db $00,$40,$00,$40,$D0,$4B,$00,$FF,$98,$01,$EB,$14,$02,$33,$CC,$13 ; $CD348D
    db $EC,$03,$FC,$00,$1F,$01,$FC,$FC,$01,$E8,$0A,$01,$30,$01,$10,$78 ; $CD349D
    db $5F,$04,$01,$5F,$A0,$93,$3F,$C7,$01,$0F,$00,$FF,$BD,$07,$01,$06 ; $CD34AD
    db $1F,$94,$01,$F7,$05,$2C,$FC,$03,$01,$38,$0C,$F3,$1F,$F7,$2C,$F0 ; $CD34BD
    db $04,$01,$F7,$01,$35,$A9,$03,$42,$03,$35,$00,$98,$1F,$93,$04,$F1 ; $CD34CD
    db $0B,$13,$C4,$4C,$93,$00,$1F,$02,$00,$0A,$00,$28,$03,$20,$20,$0C ; $CD34DD
    db $1D,$EC,$01,$01,$67,$08,$38,$47,$C1,$3E,$60,$2C,$12,$E0,$90,$07 ; $CD34ED
    db $07,$80,$38,$01,$C0,$B0,$02,$3F,$90,$01,$FE,$05,$62,$FA,$DF,$85 ; $CD34FD
    db $7A,$CC,$9F,$DA,$05,$0A,$00,$13,$00,$85,$01,$1D,$1B,$C0,$C3,$F8 ; $CD350D
    db $1C,$E3,$02,$09,$77,$88,$00,$1F,$24,$03,$C4,$00,$1C,$A2,$19,$77 ; $CD351D
    db $67,$3F,$7F,$00,$01,$9F,$60,$F5,$08,$F9,$04,$B0,$3F,$9F,$00,$76 ; $CD352D
    db $87,$77,$51,$FA,$1D,$FE,$ED,$07,$FF,$6B,$F9,$06,$13,$7F,$C2,$03 ; $CD353D
    db $3F,$00,$12,$33,$5C,$1F,$30,$80,$7F,$5F,$20,$DF,$20,$AF,$10,$EF ; $CD354D
    db $10,$D7,$08,$0E,$DF,$00,$CF,$F1,$05,$3F,$37,$08,$8B,$85,$E7,$08 ; $CD355D
    db $07,$01,$80,$00,$C0,$8D,$05,$01,$40,$80,$11,$EF,$04,$01,$06,$83 ; $CD356D
    db $2B,$FF,$80,$E1,$07,$3E,$7F,$11,$31,$70,$01,$02,$06,$01,$0A,$05 ; $CD357D
    db $1C,$03,$B8,$27,$E0,$1F,$E4,$0C,$43,$37,$02,$00,$01,$08,$04,$40 ; $CD358D
    db $18,$00,$E0,$8C,$12,$73,$0C,$F3,$18,$01,$18,$F7,$D0,$0E,$FB,$6B ; $CD359D
    db $80,$E1,$0F,$01,$00,$0C,$03,$D9,$40,$01,$02,$C3,$03,$12,$FF,$E2 ; $CD35AD
    db $08,$9F,$D8,$D8,$01,$F8,$31,$05,$FA,$01,$06,$F9,$68,$97,$48,$06 ; $CD35BD
    db $07,$02,$00,$BB,$44,$2F,$D0,$17,$E8,$07,$F8,$24,$0F,$F0,$01,$00 ; $CD35CD
    db $BB,$00,$2F,$00,$17,$00,$07,$00,$4C,$0F,$01,$FF,$F6,$17,$01,$5A ; $CD35DD
    db $91,$07,$FE,$38,$89,$E8,$33,$C0,$03,$07,$F3,$04,$F2,$04,$53,$F3 ; $CD35ED
    db $01,$E2,$04,$6B,$34,$89,$A3,$34,$F5,$04,$4F,$98,$3D,$1B,$EE,$00 ; $CD35FD
    db $4D,$EF,$1F,$2C,$B1,$F1,$16,$00,$1C,$03,$38,$2B,$EF,$01,$FD,$3C ; $CD360D
    db $00,$EA,$01,$3F,$F0,$E0,$1B,$C1,$3E,$2A,$48,$D5,$1F,$9F,$00,$00 ; $CD361D
    db $97,$08,$F8,$02,$00,$55,$00,$48,$AA,$1F,$E0,$1C,$00,$70,$07,$2E ; $CD362D
    db $73,$AA,$11,$C0,$01,$6B,$20,$8A,$10,$45,$80,$4E,$2A,$38,$B4,$03 ; $CD363D
    db $20,$09,$55,$10,$AA,$80,$9C,$1F,$FC,$01,$DB,$1F,$2D,$9C,$03,$00 ; $CD364D
    db $30,$A0,$1F,$76,$17,$E8,$20,$E3,$4D,$20,$C0,$01,$3F,$FB,$00,$0B ; $CD365D
    db $A0,$40,$58,$15,$5F,$F9,$03,$00,$06,$00,$0C,$50,$40,$C0,$05,$5F ; $CD366D
    db $BF,$00,$38,$01,$83,$48,$28,$1F,$CE,$00,$00,$B5,$00,$4A,$31,$46 ; $CD367D
    db $80,$84,$42,$50,$1F,$58,$23,$F7,$00,$0A,$7E,$80,$DF,$20,$0B,$1F ; $CD368D
    db $F8,$76,$00,$85,$AD,$00,$CA,$01,$61,$1E,$1E,$00,$B0,$4F,$40,$BF ; $CD369D
    db $A3,$8F,$00,$F5,$ED,$11,$00,$30,$00,$40,$01,$38,$00,$73,$1F,$52 ; $CD36AD
    db $00,$8C,$2D,$10,$8B,$60,$05,$FA,$AB,$60,$54,$37,$F6,$00,$B7,$02 ; $CD36BD
    db $07,$BF,$12,$FF,$10,$FF,$4B,$15,$AB,$A3,$AF,$00,$7F,$CE,$01,$73 ; $CD36CD
    db $0C,$9F,$60,$7F,$13,$80,$4A,$B5,$84,$C1,$3F,$89,$43,$4A,$C9,$80 ; $CD36DD
    db $3F,$C0,$32,$95,$40,$00,$99,$37,$00,$F6,$C0,$FE,$9A,$A5,$0E,$2D ; $CD36ED
    db $CF,$48,$41,$1F,$3E,$7E,$C1,$02,$8B,$71,$DF,$01,$3E,$F2,$03,$15 ; $CD36FD
    db $BF,$EC,$73,$BF,$A4,$31,$13,$01,$F9,$38,$15,$DF,$15,$F7,$EC,$0F ; $CD370D
    db $FF,$EC,$60,$FE,$F8,$07,$0D,$7C,$FE,$09,$44,$1F,$B8,$3B,$E7,$03 ; $CD371D
    db $F2,$E0,$33,$37,$80,$AE,$00,$10,$F7,$08,$EB,$04,$FB,$04,$F5,$E8 ; $CD372D
    db $AC,$02,$F8,$00,$4E,$01,$60,$0F,$40,$25,$F3,$00,$7A,$01,$02,$3F ; $CD373D
    db $40,$F5,$00,$83,$28,$70,$55,$00,$76,$86,$85,$0F,$14,$EA,$80,$55 ; $CD374D
    db $02,$01,$49,$AA,$00,$C0,$15,$E8,$02,$6A,$E0,$82,$04,$AA,$55,$40 ; $CD375D
    db $2A,$3C,$88,$35,$01,$79,$01,$C1,$1F,$14,$41,$02,$A8,$E6,$01,$1F ; $CD376D
    db $FE,$1F,$05,$14,$AA,$03,$54,$FF,$0C,$7F,$6F,$10,$B7,$B3,$18,$00 ; $CD377D
    db $5D,$02,$9F,$E7,$08,$50,$EF,$11,$B7,$00,$07,$9F,$40,$49,$A0,$01 ; $CD378D
    db $4C,$B1,$A7,$C1,$A3,$B5,$89,$CF,$FF,$9C,$0D,$E0,$01,$53,$F8,$CD ; $CD379D
    db $CB,$04,$00,$80,$47,$BF,$C8,$02,$D1,$FE,$FF,$04,$01,$FF,$1A,$DF ; $CD37AD
    db $20,$AE,$59,$EF,$CB,$E9,$9E,$FC,$03,$BF,$40,$7B,$80,$65,$80,$5F ; $CD37BD
    db $80,$26,$80,$70,$80,$78,$87,$54,$88,$0F,$90,$C0,$3F,$D0,$2F,$46 ; $CD37CD
    db $05,$81,$7E,$FC,$01,$FD,$4B,$AB,$C0,$AF,$D7,$91,$00,$81,$28,$E0 ; $CD37DD
    db $FC,$0E,$41,$02,$FD,$09,$00,$66,$83,$FF,$3E,$FF,$20,$FF,$97,$1F ; $CD37ED
    db $7F,$43,$BF,$08,$37,$BF,$1F,$17,$FF,$5A,$FF,$FF,$7F,$FF,$BF,$7F ; $CD37FD
    db $DF,$FF,$EF,$FF,$F7,$FF,$FB,$08,$2E,$1F,$E2,$3C,$F1,$4A,$F5,$EC ; $CD380D
    db $F3,$64,$E3,$FE,$EB,$CD,$C7,$F8                                 ; $CD381D
L_CD3825:
    CMP [$9C],Y             ; $CD3825  D7 9C        Mx
    STA $1D580C             ; $CD3827  8F 0C 58 1D  Mx
    BRK #$04                ; $CD382B  00 04        Mx
    CLC                     ; $CD382D  18           Mx
    TCD                     ; $CD382E  5B           Mx
    ORA $083086,X           ; $CD382F  1F 86 30 08  Mx
    BRK #$08                ; $CD3833  00 08        Mx
    RTS                     ; $CD3835  60           Mx
    db $10,$1B,$E4,$0F,$F0,$14,$EB,$65,$08,$08,$F7,$0B,$F4,$AB,$07,$1B ; $CD3836
    db $A5,$D3,$14,$CC,$22,$1C,$0B,$EE,$E7,$AD,$01,$EF,$44,$53,$36,$03 ; $CD3846
    db $C3,$03,$05,$BE,$40,$7A,$80,$EF,$4C,$6B,$44,$0B,$42,$2B,$7D,$7B ; $CD3856
    db $D5,$03,$01,$D7,$00,$DE,$00,$F5,$25,$6D,$08,$20,$D5,$F1,$00,$EE ; $CD3866
    db $01,$B0,$03,$0F,$45,$3A,$A2,$55,$F6,$B3,$D7,$FD,$80,$17,$C5,$10 ; $CD3876
    db $AA,$00,$65,$0C,$00,$CC,$32,$F9,$03,$03,$B8,$44,$21,$1E,$82,$75 ; $CD3886
    db $45,$AA,$DA,$05,$DD                                             ; $CD3896
L_CD389B:
    JSL $AA4500             ; $CD389B  22 00 45 AA  Mx
    LDA ($55,S),Y           ; $CD389F  B3 55        Mx
    ADC ($88),Y             ; $CD38A1  71 88        Mx
    ORA $50,S               ; $CD38A3  03 50        Mx
    ORA $A2                 ; $CD38A5  05 A2        Mx
    ORA $42,S               ; $CD38A7  03 42        Mx
    LDA ($55,S),Y           ; $CD38A9  B3 55        Mx
    TAX                     ; $CD38AB  AA           Mx
    TAX                     ; $CD38AC  AA           Mx
    EOR $08,X               ; $CD38AD  55 08        Mx
    ORA $50,S               ; $CD38AF  03 50        Mx
    AND $07,S               ; $CD38B1  23 07        Mx
    BRK #$18                ; $CD38B3  00 18        Mx
    LDA [$A8],Y             ; $CD38B5  B7 A8        Mx
    COP #$1B                ; $CD38B7  02 1B        Mx
    LDY #$0A                ; $CD38B9  A0 0A        Mx
    CPY $03                 ; $CD38BB  C4 03        Mx
    LDA [$00]               ; $CD38BD  A7 00        Mx
    ORA [$17]               ; $CD38BF  07 17        Mx
    TRB $AA                 ; $CD38C1  14 AA        Mx
    TAY                     ; $CD38C3  A8           Mx
    TRB $A01B               ; $CD38C4  1C 1B A0     Mx
    ORA $2E,S               ; $CD38C7  03 2E        Mx
    TAY                     ; $CD38C9  A8           Mx
    BVC L_CD38E7            ; $CD38CA  50 1B        Mx
    TSB $51                 ; $CD38CC  04 51        Mx
    ORA ($84)               ; $CD38CE  12 84        Mx
    EOR $7000,X             ; $CD38D0  5D 00 70     Mx
    TXA                     ; $CD38D3  8A           Mx
    RTS                     ; $CD38D4  60           Mx
    db $15,$62,$88,$03,$00,$23,$08,$A2,$28,$41,$30,$8E,$00,$67,$35,$36 ; $CD38D5
    db $02,$19                                                         ; $CD38E5
L_CD38E7:
    ORA $40,S               ; $CD38E7  03 40        Mx
    ORA $55,S               ; $CD38E9  03 55        Mx
    CMP ($D3)               ; $CD38EB  D2 D3        Mx
    EOR $8B,X               ; $CD38ED  55 8B        Mx
    BCC L_CD38F0            ; $CD38EF  90 FF        Mx
    COP #$AA                ; $CD38F1  02 AA        Mx
    ORA [$74]               ; $CD38F3  07 74        Mx
    BRK #$E0                ; $CD38F5  00 E0        Mx
    CMP ($11,S),Y           ; $CD38F7  D3 11        Mx
    BRA L_CD38FB            ; $CD38F9  80 00        Mx
L_CD38FB:
    RTI                     ; $CD38FB  40           Mx
    db $BF,$83,$72,$80,$85,$73,$24,$90,$CB,$5D,$20,$29,$42,$C1,$14,$01 ; $CD38FC
    db $AA,$01,$54,$00,$2A,$48,$A2,$0A,$41,$86,$18,$88,$34,$98,$96,$0D ; $CD390C
    db $AA,$81,$44,$54,$82,$F3,$C4,$11,$88,$22,$80,$84,$47,$E0,$02,$48 ; $CD391C
    db $F3,$44,$AA,$08,$73,$D5,$96,$81,$03,$18,$05,$10,$45,$A1,$71,$49 ; $CD392C
    db $A4,$07,$C4,$CA,$E6,$08,$24,$CE,$10,$D2,$06,$55,$35,$02,$26,$80 ; $CD393C
    db $57,$36,$02,$A8,$09,$03,$00,$02,$54,$0D,$A2,$4C,$80,$29,$50,$E7 ; $CD394C
    db $9B,$03,$1B,$05,$50,$09,$A2,$5C,$19,$30,$BB,$45,$D7,$28,$AD,$12 ; $CD395C
    db $B0,$07,$16,$41,$29,$80,$8B,$C0,$2A,$31,$18,$82,$03,$04,$52,$C8 ; $CD396C
    db $00,$07,$18,$A0,$2A,$54,$D0,$2E,$71,$39,$BF,$40,$BB,$40,$6B,$81 ; $CD397C
    db $2F,$C1,$5F,$B0,$B7,$58,$83,$3C,$25,$88,$B6,$BC,$DD,$D5,$00,$19 ; $CD398C
    db $06,$17,$08,$17,$20,$43,$00,$47,$56,$5D,$D9,$20,$15,$1A,$9D,$87 ; $CD399C
    db $5D,$18,$C5,$D1,$E1,$1E,$B4,$83,$DB,$BE,$00,$CD,$10,$6F,$1D,$01 ; $CD39AC
    db $00,$EB,$27,$8D,$37,$C8,$49,$F3,$40,$5F,$D9,$BB,$9F,$59,$91,$36 ; $CD39BC
    db $59,$BF,$BF,$F3,$09,$99,$13,$B9,$29,$B7,$89,$DF,$4C,$DF,$17,$7F ; $CD39CC
    db $60,$80,$0D,$FD,$02,$F6,$09,$3F,$8B,$14,$02,$E3,$11,$7D,$00,$B6 ; $CD39DC
    db $92,$59,$F8,$1B,$EE,$10,$86,$01,$18,$B5,$42,$57,$81,$2C,$D2,$25 ; $CD39EC
    db $1B,$CA,$AF,$00,$E5,$00,$98,$01,$6D,$02,$00,$0D,$DA,$20,$C9,$22 ; $CD39FC
    db $2F,$80,$98,$22,$E0,$15,$36,$3F,$F5,$00,$DD,$00,$D4,$01,$59,$06 ; $CD3A0C
    db $40,$1D,$23,$80,$6A,$60,$3F,$11,$F5,$00,$A0,$0A,$81,$17,$04,$51 ; $CD3A1C
    db $2C,$3F,$85,$28,$7A,$20,$17,$04,$9E,$3F,$01,$46,$11,$09,$A2,$05 ; $CD3A2C
    db $50,$0A,$D7,$5B,$96,$67,$00,$44,$A8,$08,$54,$04,$AB,$0A,$55,$4F ; $CD3A3C
    db $40,$01,$67,$61,$94,$AA,$40,$C0,$15,$07,$3F,$01,$60,$55,$01,$A8 ; $CD3A4C
    db $01,$2A,$22,$0A,$35,$39,$52,$3F,$70,$54,$00,$A8,$06,$51,$16,$40 ; $CD3A5C
    db $AB,$04,$6C,$01,$F0,$C1,$40,$55,$41,$A8,$85,$80,$47,$A4,$11,$A8 ; $CD3A6C
    db $B0,$43,$50,$30,$8E,$A0,$31,$2A,$02,$54,$05,$02,$A9,$00,$53,$FC ; $CD3A7C
    db $36,$76,$83,$CD,$0E,$39,$40,$C1,$14,$C8,$F1,$7E,$8C,$7F,$2D,$83 ; $CD3A8C
    db $0E,$00,$82,$3C,$01,$77,$47,$CE,$E7,$00,$4F,$08,$CF,$57,$00,$2B ; $CD3A9C
    db $83,$10,$00,$1F,$AB,$17,$70,$57,$A0,$AB,$50,$54,$A8,$AA,$54,$95 ; $CD3AAC
    db $2A,$8A,$55,$FA,$02,$54,$27,$F3,$F9,$4C,$FE,$01,$0E,$00,$00,$1E ; $CD3ABC
    db $E0,$F8,$02,$78,$02,$BE,$3A,$41,$F3,$82,$E3,$BB,$44,$C0,$27,$0E ; $CD3ACC
    db $90,$43,$90,$1C,$4F,$90,$0B,$03,$92,$01,$00,$14,$20,$DF,$E0,$1F ; $CD3ADC
    db $80,$7D,$7F,$01,$27,$3D,$00,$20,$56,$5D,$D4,$65,$08,$1B,$31,$C3 ; $CD3AEC
    db $EF,$09,$F7,$05,$FB,$03,$FD,$05,$FE,$11,$FF,$09,$FE,$09,$BF,$FF ; $CD3AFC
    db $04,$FD,$FF,$FE,$7F,$FF,$38,$00,$05,$7F,$7D,$7F,$09,$40,$1F,$7E ; $CD3B0C
    db $2F,$FE,$5F,$FE,$3F,$6E,$FC,$24,$18,$28,$F8,$FF,$07,$80,$10,$E3 ; $CD3B1C
    db $5E,$C0,$EA,$04,$A1,$02,$6E,$FD,$03,$00,$05,$F9,$0B,$F0,$14,$E9 ; $CD3B2C
    db $38,$92,$8A,$22,$5A,$CE,$57,$A8,$20,$03,$00,$06,$1D,$50,$0D,$EB ; $CD3B3C
    db $F2,$75,$7D,$00,$30,$AC,$2A,$80,$05,$62,$50,$03,$F6,$01,$E1,$D8 ; $CD3B4C
    db $07,$A5,$1A,$CA,$35,$15,$EA,$2A,$55,$05,$AA,$95,$03,$D5,$20,$B7 ; $CD3B5C
    db $A0,$0A,$40,$15,$88,$04,$22,$40,$14,$02,$A8,$A5,$B7,$A0,$D8,$9F ; $CD3B6C
    db $88,$55,$74,$41,$2E,$E3,$04,$3C,$21,$28,$82,$30,$45,$01,$A8,$0C ; $CD3B7C
    db $51,$37,$88,$98,$25,$62,$88,$D8,$53,$3B,$00,$BA,$5C,$7B,$3A,$A0 ; $CD3B8C
    db $40,$07,$40,$1A,$02,$75,$14,$40,$26,$80,$37,$13,$A9,$F5,$A8,$03 ; $CD3B9C
    db $15,$AA,$29,$06,$50,$4C,$83,$62,$1D,$5F,$1C,$AB,$54,$54,$4B,$00 ; $CD3BAC
    db $70,$07,$41,$3C,$7C,$81,$3F,$00,$75,$E1,$C0,$CD,$40,$95,$81,$2A ; $CD3BBC
    db $88,$00,$70,$C2,$A1,$C0,$3F,$E3,$8E,$55,$82,$96,$54,$A3,$54,$F3 ; $CD3BCC
    db $E7,$A2,$96,$41,$3A,$92,$74,$24,$2A,$08,$C7,$12,$4E,$A4,$00,$28 ; $CD3BDC
    db $08,$51,$08,$A6,$00,$4D,$01,$9A,$C1,$34,$00,$69,$00,$53,$3E,$41 ; $CD3BEC
    db $C0,$2A,$45,$55,$BE,$80,$BC,$00,$E2,$2A,$15,$55,$88,$AA,$80,$3E ; $CD3BFC
    db $10,$77,$41,$12,$00,$41,$3E,$80,$7F,$64,$15,$30,$A2,$30,$05,$51 ; $CD3C0C
    db $B7,$85,$14,$AA,$00,$8A,$55,$45,$AA,$A2,$80,$0A,$08,$A9,$D1,$C4 ; $CD3C1C
    db $6D,$41,$14,$17,$1F,$C7,$1E,$60,$50,$9F,$5F,$40,$1C,$A2,$01,$55 ; $CD3C2C
    db $20,$2A,$91,$55,$E0,$AA,$18,$C1,$3E,$20,$80,$01,$5C,$15,$47,$DB ; $CD3C3C
    db $83,$AE,$18,$21,$70,$02,$D2,$20,$0A,$80,$0D,$70,$15,$A8,$D8,$07 ; $CD3C4C
    db $A1,$05,$09,$3A,$A0,$A1,$B1,$49,$01,$95,$00,$75,$02,$50,$81,$5B ; $CD3C5C
    db $03,$54,$C0,$0A,$18,$DD,$7B,$17,$04,$50,$88,$0E,$2A,$0F,$A0,$05 ; $CD3C6C
    db $50,$00,$AB,$20,$15,$24,$82,$05,$AE,$EE,$35,$4E,$40,$6A,$17,$A2 ; $CD3C7C
    db $8D,$15,$20,$8A,$D3,$17,$0D,$03,$83,$80,$22,$09,$40,$02,$A9,$01 ; $CD3C8C
    db $54,$92,$11,$28,$5F,$0F,$16,$A1,$04,$50,$01,$72,$1F,$03,$AC,$E5 ; $CD3C9C
    db $00,$08,$7F,$00,$2B,$44,$08,$A4,$07,$E0,$6B,$0C,$D1,$CC,$00,$11 ; $CD3CAC
    db $C4,$11,$8C,$11,$18,$81,$13,$CC,$39,$A8,$39,$DF,$4A,$40,$00,$56 ; $CD3CBC
    db $F4,$08,$F7,$08,$AE,$50,$C4,$07,$6F,$80,$A7,$E1,$3A,$05,$F6,$13 ; $CD3CCC
    db $D5,$7F,$FF,$7D,$40,$BB,$80,$FE,$01,$77,$79,$D3,$25,$EF,$B5,$F3 ; $CD3CDC
    db $7B,$56,$8B,$1B,$7C,$00,$F8,$8F,$07,$75,$8A,$82,$4D,$15,$EA,$DA ; $CD3CEC
    db $25,$14,$EA,$28,$D5,$50,$AA,$D8,$4B,$05,$B0,$A0,$36,$C0,$02,$EA ; $CD3CFC
    db $18,$6A,$0A,$FF,$50,$25,$5C,$6C,$30,$12,$DB,$44,$13,$AC,$0D,$52 ; $CD3D0C
    db $0E,$A0,$41,$15,$28,$C3,$1A,$80,$61,$00,$40,$A9,$00,$41,$00,$A1 ; $CD3D1C
    db $00,$5F,$AA,$26,$FF,$DB,$0E,$41,$55,$08,$AA,$CB,$43,$AA,$3D,$BB ; $CD3D2C
    db $01,$03,$44,$05,$08,$87,$DF,$55,$0A,$BD,$0F,$1F,$03,$03,$EB,$07 ; $CD3D3C
    db $1F,$84,$05,$52,$06,$A8,$02,$51,$0A,$A4,$0C,$51,$0C,$A2,$1D,$03 ; $CD3D4C
    db $00,$3C,$D3,$05,$1C,$53,$00,$A6,$1F,$E0,$03,$14,$49,$08,$E8,$7F ; $CD3D5C
    db $33,$10,$8A,$A7,$60,$BB,$23,$B0,$03,$13,$30,$4D,$00,$6D,$9A,$09 ; $CD3D6C
    db $03,$1D,$23,$D6,$03,$D0,$5B,$03,$07,$14,$41,$08,$A2,$01,$9D,$03 ; $CD3D7C
    db $5B,$14,$5D,$63,$08,$80,$4C,$1D,$40,$02,$A0,$04,$51,$C6,$67,$07 ; $CD3D8C
    db $50,$03,$01,$45,$AA,$BA,$45,$15,$A2,$0E,$15,$AD,$71,$53,$2B,$53 ; $CD3D9C
    db $D4,$1D,$EF,$20,$1F,$7C,$29,$07,$B7,$45,$08,$D7,$31,$38,$0C,$82 ; $CD3DAC
    db $98,$02,$68,$92,$88,$52,$48,$92,$90,$42,$40,$0B,$42,$FA,$02,$25 ; $CD3DBC
    db $7F,$FB,$37,$48,$F7,$4E,$90,$5F,$30,$80,$50,$01,$8F,$44,$BB,$30 ; $CD3DCC
    db $A2,$5D,$16,$60,$9F,$D2                                         ; $CD3DDC
L_CD3DE2:
    ASL $2D                 ; $CD3DE2  06 2D        Mx
    CMP [$20],Y             ; $CD3DE4  D7 20        Mx
    SBC ($06),Y             ; $CD3DE6  F1 06        Mx
    AND $73                 ; $CD3DE8  25 73        Mx
    MVP $00,$6F             ; $CD3DEA  44 6F 00     Mx
    BRK #$60                ; $CD3DED  00 60        Mx
    BRK #$D2                ; $CD3DEF  00 D2        Mx
    BRK #$D8                ; $CD3DF1  00 D8        Mx
    BRK #$08                ; $CD3DF3  00 08        Mx
    ADC $01,S               ; $CD3DF5  63 01        Mx
    ROL $08,X               ; $CD3DF7  36 08        Mx
    SBC [$00],Y             ; $CD3DF9  F7 00        Mx
    ORA $02,S               ; $CD3DFB  03 02        Mx
    SED                     ; $CD3DFD  F8           Mx
    ORA #$66E2              ; $CD3DFE  09 E2 66     Mx
    ORA #$1938              ; $CD3E01  09 38 19     Mx
    EOR [$C0]               ; $CD3E04  47 C0        Mx
    AND $5C0844,X           ; $CD3E06  3F 44 08 5C  Mx
    ORA ($F9,X)             ; $CD3E0A  01 F9        Mx
    TRB $01                 ; $CD3E0C  14 01        Mx
    BCC L_CD3E16            ; $CD3E0E  90 06        Mx
    BRA L_CD3E4A            ; $CD3E10  80 38        Mx
    db $12,$C7,$7F,$00                                                 ; $CD3E12
L_CD3E16:
    db $1F,$FF,$5F                                                     ; $CD3E16
L_CD3E19:
    SBC $7F9FBF,X           ; $CD3E19  FF BF 9F 7F  Mx
    AND $75FFE9,X           ; $CD3E1D  3F E9 FF 75  Mx
    ADC $80E42E,X           ; $CD3E21  7F 2E E4 80  Mx
    STX $F39E               ; $CD3E25  8E 9E F3     Mx
    TRB $01F8               ; $CD3E28  1C F8 01     Mx
    EOR [$B8]               ; $CD3E2B  47 B8        Mx
    CMP $FE,S               ; $CD3E2D  C3 FE        Mx
    SBC $FBFEFF,X           ; $CD3E2F  FF FF FE FB  Mx
    SBC $F1FB,Y             ; $CD3E33  F9 FB F1     Mx
    SBC $FAE9,X             ; $CD3E36  FD E9 FA     Mx
    CMP ($F5)               ; $CD3E39  D2 F5        Mx
    LDA $EA                 ; $CD3E3B  A5 EA        Mx
    LSR                     ; $CD3E3D  4A           Mx
    ORA ($1D,S),Y           ; $CD3E3E  13 1D        Mx
    AND $600205,X           ; $CD3E40  3F 05 02 60  Mx
    LDY #$0D                ; $CD3E44  A0 0D        Mx
    BRK #$1A                ; $CD3E46  00 1A        Mx
    REP #$FF                ; $CD3E48  C2 FF        Mx
L_CD3E4A:
    BCS L_CD3E61            ; $CD3E4A  B0 15        Mx
    RTI                     ; $CD3E4C  40           Mx
    db $22,$C9,$5D,$BB,$E1,$03,$50,$2A,$F8,$07,$5F,$50,$8A,$77,$20,$58 ; $CD3E4D
    db $A9,$A0,$26,$0F                                                 ; $CD3E5D
L_CD3E61:
    LDY #$07                ; $CD3E61  A0 07        Mx
    ADC $7A00               ; $CD3E63  6D 00 7A     Mx
    BRA L_CD3E6D            ; $CD3E66  80 05        Mx
    db $4E,$26,$03,$2E,$0A                                             ; $CD3E68
L_CD3E6D:
    MVN $13,$31             ; $CD3E6D  54 31 13     Mx
    TAY                     ; $CD3E70  A8           Mx
    TRB $43                 ; $CD3E71  14 43        Mx
    EOR $2286,Y             ; $CD3E73  59 86 22     Mx
    ORA $0249,X             ; $CD3E76  1D 49 02     Mx
    LDX $08                 ; $CD3E79  A6 08        Mx
    TYA                     ; $CD3E7B  98           Mx
    AND $E0                 ; $CD3E7C  25 E0        Mx
    ASL                     ; $CD3E7E  0A           Mx
    SED                     ; $CD3E7F  F8           Mx
L_CD3E80:
    ORA $543FB4,X           ; $CD3E80  1F B4 3F 54  Mx
    LDA ($74,X)             ; $CD3E84  A1 74        Mx
    BNE L_CD3E19            ; $CD3E86  D0 91        Mx
    CMP [$80],Y             ; $CD3E88  D7 80        Mx
    ADC $31,X               ; $CD3E8A  75 31        Mx
    ORA $803F6B,X           ; $CD3E8C  1F 6B 3F 80  Mx
    SBC ($17)               ; $CD3E90  F2 17        Mx
    LDA $C8A655,X           ; $CD3E92  BF 55 A6 C8  Mx
    ORA $070C,Y             ; $CD3E96  19 0C 07     Mx
    EOR ($17),Y             ; $CD3E99  51 17        Mx
    PEA $CBEA               ; $CD3E9B  F4 EA CB     Mx
    EOR ($F9,S),Y           ; $CD3E9E  53 F9        Mx
    SBC $CE5107,X           ; $CD3EA0  FF 07 51 CE  Mx
    ORA [$90]               ; $CD3EA4  07 90        Mx
    STA $88                 ; $CD3EA6  85 88        Mx
    AND ($45)               ; $CD3EA8  32 45        Mx
    TSC                     ; $CD3EAA  3B           Mx
    ASL $3788               ; $CD3EAB  0E 88 37     Mx
    MVP $19,$33             ; $CD3EAE  44 33 19     Mx
    ORA $BB,S               ; $CD3EB1  03 BB        Mx
    DEY                     ; $CD3EB3  88           Mx
    ROL                     ; $CD3EB4  2A           Mx
    ADC $9C,S               ; $CD3EB5  63 9C        Mx
    ORA ($98),Y             ; $CD3EB7  11 98        Mx
    ROL $9948               ; $CD3EB9  2E 48 99     Mx
    ORA $85,S               ; $CD3EBC  03 85        Mx
    BRK #$41                ; $CD3EBE  00 41        Mx
    TSX                     ; $CD3EC0  BA           Mx
    JSL $BA45CD             ; $CD3EC1  22 CD 45 BA  Mx
    TXA                     ; $CD3EC5  8A           Mx
    ADC $DC,X               ; $CD3EC6  75 DC        Mx
    TCS                     ; $CD3EC8  1B           Mx
    ORA $C0,S               ; $CD3EC9  03 C0        Mx
    STZ $A618               ; $CD3ECB  9C 18 A6     Mx
    BRK #$CD                ; $CD3ECE  00 CD        Mx
    BMI L_CD3F48            ; $CD3ED0  30 76        Mx
    TXA                     ; $CD3ED2  8A           Mx
    CMP $74,X               ; $CD3ED3  D5 74        Mx
    TXS                     ; $CD3ED5  9A           Mx
    BMI L_CD3E80            ; $CD3ED6  30 A8        Mx
    TXS                     ; $CD3ED8  9A           Mx
    ORA [$1D]               ; $CD3ED9  07 1D        Mx
    EOR ($49,X)             ; $CD3EDB  41 49        Mx
    LDA $8444,Y             ; $CD3EDD  B9 44 84     Mx
    INC $6E51,X             ; $CD3EE0  FE 51 6E     Mx
    JSL $AE51DD             ; $CD3EE3  22 DD 51 AE  Mx
    JSL $2E51DC             ; $CD3EE7  22 DC 51 2E  Mx
    JSL $228022             ; $CD3EEB  22 22 80 22  Mx
    BPL L_CD3EF1            ; $CD3EEF  10 00        Mx
L_CD3EF1:
    ROL $80                 ; $CD3EF1  26 80        Mx
    ROL $1B,X               ; $CD3EF3  36 1B        Mx
    CMP $03,X               ; $CD3EF5  D5 03        Mx
    ORA [$B8]               ; $CD3EF7  07 B8        Mx
    PEA $5151               ; $CD3EF9  F4 51 51     Mx
    LDY $C0AA               ; $CD3EFC  AC AA C0     Mx
    EOR ($22),Y             ; $CD3EFF  51 22        Mx
    AND #$3457              ; $CD3F01  29 57 34     Mx
    SBC $88,S               ; $CD3F04  E3 88        Mx
    ADC [$14],Y             ; $CD3F06  77 14        Mx
    AND $08,S               ; $CD3F08  23 08        Mx
    ASL $513B               ; $CD3F0A  0E 3B 51     Mx
    ASL $28                 ; $CD3F0D  06 28        Mx
    STA [$BB],Y             ; $CD3F0F  97 BB        Mx
    LDA #$1F40              ; $CD3F11  A9 40 1F     Mx
    LDA #$35C0              ; $CD3F14  A9 C0 35     Mx
    ORA $55,S               ; $CD3F17  03 55        Mx
    TRB $88                 ; $CD3F19  14 88        Mx
    DEY                     ; $CD3F1B  88           Mx
    ROL $55                 ; $CD3F1C  26 55        Mx
    ASL $777B               ; $CD3F1E  0E 7B 77     Mx
    MVP $1E,$B3             ; $CD3F21  44 B3 1E     Mx
    ADC $088932,X           ; $CD3F24  7F 32 89 08  Mx
    ADC $955132,X           ; $CD3F28  7F 32 51 95  Mx
    TAY                     ; $CD3F2C  A8           Mx
    CMP $8C                 ; $CD3F2D  C5 8C        Mx
    BCS L_CD3F5B            ; $CD3F2F  B0 2A        Mx
    ORA $51,S               ; $CD3F31  03 51        Mx
    ORA $00AAA2,X           ; $CD3F33  1F A2 AA 00  Mx
    ORA $30,S               ; $CD3F37  03 30        Mx
    LDA $4001CE,X           ; $CD3F39  BF CE 01 40  Mx
    ORA $02,X               ; $CD3F3D  15 02        Mx
    TAX                     ; $CD3F3F  AA           Mx
    MVP $A8,$51             ; $CD3F40  44 51 A8     Mx
    STP                     ; $CD3F43  DB           Mx
    db $5B,$19,$23,$54                                                 ; $CD3F44
L_CD3F48:
    EOR $07,X               ; $CD3F48  55 07        Mx
    RTI                     ; $CD3F4A  40           Mx
    db $FD,$03,$DB,$A8,$F9,$EA,$AA,$17,$05,$48,$D1,$80,$AA,$A0,$6B,$14 ; $CD3F4B
L_CD3F5B:
    LDX #$3C                ; $CD3F5B  A2 3C        Mx
    TSB $51                 ; $CD3F5D  04 51        Mx
    COP #$1F                ; $CD3F5F  02 1F        Mx
    JSR L_CD0E9C            ; $CD3F61  20 9C 0E     Mx
    SBC $202248,X           ; $CD3F64  FF 48 22 20  Mx
    LDA $E37595             ; $CD3F68  AF 95 75 E3  Mx
    TAY                     ; $CD3F6C  A8           Mx
    RTI                     ; $CD3F6D  40           Mx
    db $29,$2A,$88,$15,$10,$EE,$22,$AD,$84,$51,$00,$E1,$BF,$01,$33,$31 ; $CD3F6E
    db $01,$F1,$07,$5F,$9F,$20,$73,$7F,$80,$6D,$42,$0F,$A0,$07,$50,$8B ; $CD3F7E
    db $A8,$55,$54,$3F,$80,$5F,$00,$1F,$20,$1D,$80,$17,$40,$03,$A8,$88 ; $CD3F8E
    db $F9,$2E,$40,$00,$B1,$FB,$04,$EF,$10,$EA,$15,$F5,$0A,$EE,$11,$E4 ; $CD3F9E
    db $02,$58,$25,$68,$12,$39,$40,$2C,$40,$28,$40,$30,$41,$24,$42,$38 ; $CD3FAE
    db $45,$80,$4A,$80,$4D,$74,$C9,$81,$4A,$BF,$15,$67,$63,$2A,$D6,$02 ; $CD3FBE
    db $7B,$9C,$E3,$D3,$C9,$FB,$A2                                     ; $CD3FCE
L_CD3FD5:
    AND $E3FF,Y             ; $CD3FD5  39 FF E3     mx
    SBC $DF08,Y             ; $CD3FD8  F9 08 DF     mx
    BPL L_CD4029            ; $CD3FDB  10 4C        mx
    ORA [$03],Y             ; $CD3FDD  17 03        mx
    EOR $A3                 ; $CD3FDF  45 A3        mx
    AND [$8A]               ; $CD3FE1  27 8A        mx
    DEC $1F09               ; $CD3FE3  CE 09 1F     mx
    ORA ($9C,X)             ; $CD3FE6  01 9C        mx
    XCE                     ; $CD3FE8  FB           mx
    ORA [$02],Y             ; $CD3FE9  17 02        mx
    SBC #$FB                ; $CD3FEB  E9 FB        mx
    ADC $0DAA,Y             ; $CD3FED  79 AA 0D     mx
    AND $331500,X           ; $CD3FF0  3F 00 15 33  mx
    ASL $A055               ; $CD3FF4  0E 55 A0     mx
    TAX                     ; $CD3FF7  AA           mx
    ORA $C1                 ; $CD3FF8  05 C1        mx
    ORA $775057,X           ; $CD3FFA  1F 57 50 77  mx
    ASL $E0                 ; $CD3FFE  06 E0        mx
    TSB $1B                 ; $CD4000  04 1B        mx
    PHP                     ; $CD4002  08           mx
    LDY #$88                ; $CD4003  A0 88        mx
    ORA ($3A,X)             ; $CD4005  01 3A        mx
    TSB $FD51               ; $CD4007  0C 51 FD     mx
    LDA $F720               ; $CD400A  AD 20 F7     mx
    TSB $51                 ; $CD400D  04 51        mx
    SEI                     ; $CD400F  78           mx
    BRK #$02                ; $CD4010  00 02        mx
    ORA ($55),Y             ; $CD4012  11 55        mx
    SBC $390A,X             ; $CD4014  FD 0A 39     mx
    SBC ($0D,S),Y           ; $CD4017  F3 0D        mx
    PHP                     ; $CD4019  08           mx
    CMP ($9F)               ; $CD401A  D2 9F        mx
    STX $07                 ; $CD401C  86 07        mx
    ORA ($80,X)             ; $CD401E  01 80        mx
    PLP                     ; $CD4020  28           mx
    BRK #$F4                ; $CD4021  00 F4        mx
    EOR $8A33,X             ; $CD4023  5D 33 8A     mx
    CLD                     ; $CD4026  D8           mx
    EOR $8A                 ; $CD4027  45 8A        mx
L_CD4029:
    BPL L_CD4028            ; $CD4029  10 FD        mx
    ORA ($3F,X)             ; $CD402B  01 3F        mx
    CMP ($FB)               ; $CD402D  D2 FB        mx
    TXA                     ; $CD402F  8A           mx
    EOR $30,X               ; $CD4030  55 30        mx
    AND ($AD),Y             ; $CD4032  31 AD        mx
    PLB                     ; $CD4034  AB           mx
    AND $02B39F,X           ; $CD4035  3F 9F B3 02  mx
    ASL $288D,X             ; $CD4039  1E 8D 28     mx
    RTI                     ; $CD403C  40           mx
    db $05,$7F,$5C,$82,$F0,$54,$07,$50,$22,$80,$0F,$50,$06,$A0,$14,$49 ; $CD403D
    db $2A,$90,$54,$20,$2B,$40,$01,$AA,$2C,$53,$05,$A2,$1A,$3F,$A6,$02 ; $CD404D
    db $4D,$07,$85,$1A,$8A,$34,$77,$4A,$F3,$17,$2F,$83,$D7,$47,$72,$5F ; $CD405D
    db $03,$E3,$40,$9A,$88,$52,$60,$9A,$A8,$12,$10,$AA,$48,$32,$90,$62 ; $CD406D
    db $B8,$42,$FC,$08,$1E,$EF,$4F,$90,$06,$01,$03,$F0,$0F,$C2,$3D,$CC ; $CD407D
    db $33,$04,$05,$E3,$1C,$FB,$04,$78,$07,$F0,$EE,$B8,$DF,$CC,$05,$E3 ; $CD408D
    db $EB,$A3,$A5,$FC,$8E,$6F,$BE,$A2,$03,$55,$40,$2E,$A8,$80,$A5,$86 ; $CD409D
    db $80,$5C,$27,$67,$40,$C6,$6F,$01,$17,$1F,$FE,$1F,$09,$FD,$3F,$FA ; $CD40AD
    db $0E,$F4,$04,$E1,$1A,$E2,$29,$D5,$52,$78,$7F,$01,$11,$00,$03,$18 ; $CD40BD
    db $3D,$DF,$71,$9F,$D0,$95,$AA,$70,$22,$58,$51,$BF,$8C,$41,$48,$AA ; $CD40CD
    db $A0,$5C,$51,$28,$E8,$9F,$B8,$76,$14,$C1,$26,$88,$00,$51,$36,$81 ; $CD40DD
    db $14,$43,$00,$AE,$C7,$EB,$03,$9B,$05,$52,$8A,$A4,$01,$DF,$28,$92 ; $CD40ED
    db $50,$25,$A0,$4A,$56,$AA,$05,$A9,$E8,$3F,$4D,$BA,$23,$F5,$AD,$9F ; $CD40FD
    db $89,$A3,$87,$03,$7D,$DF,$2A,$14,$92,$1F,$2A,$55,$75,$03,$88,$C7 ; $CD410D
    db $55,$FC,$FB,$0A,$03,$A8,$02,$ED,$CB,$7E,$FB,$08,$03,$A8,$84,$39 ; $CD411D
    db $54,$59,$FB,$B0,$03,$55,$06,$51,$1F,$05,$A0,$6D,$10,$B0,$4A,$53 ; $CD412D
    db $A5,$54,$8E,$9B,$04,$43,$01,$B7,$A7,$07,$08,$A6,$20,$37,$04,$7D ; $CD413D
    db $FF,$04,$8E,$3F,$48,$01,$90,$58,$AA,$89,$50,$48,$EF,$8B,$FF,$10 ; $CD414D
    db $EA,$A9,$8F,$54,$54,$A2,$B6,$49,$F6,$05,$98,$88,$F5,$24,$AB,$4A ; $CD415D
    db $55,$95,$6A,$31,$78,$7C,$00,$18,$D3,$7F,$9A,$97,$34,$C7,$00,$92 ; $CD416D
    db $C0,$15,$45,$45,$3A,$60,$AA,$03,$A8,$A2,$D5,$51,$1D,$2A,$28,$54 ; $CD417D
    db $F0,$C3,$30,$8A,$00,$45,$45,$18,$88,$29,$2A,$B7,$D1,$00,$07,$DC ; $CD418D
    db $51,$CD,$84,$5C,$41,$AF,$3B,$B0,$55,$E0,$FB,$94,$14,$BE,$80,$00 ; $CD419D
    db $07,$26,$22,$10,$22,$80,$6E,$AA,$1D,$1B,$41,$2A,$D0,$A6,$50,$ED ; $CD41AD
    db $AA,$C3,$C0,$3B,$A4,$55,$49,$AA,$92,$02,$B1,$24,$EB,$89,$06,$29 ; $CD41BD
    db $22,$4D,$05,$FF,$41,$0C,$C3,$40,$1A,$00,$74,$73,$44,$18,$88,$55 ; $CD41CD
    db $24,$60,$8A,$08,$40,$60,$2A,$90,$E1,$03,$98,$44,$7F,$35,$AA,$B6 ; $CD41DD
    db $01,$03,$D4,$85,$15,$32,$82,$56,$0B,$E8,$2A,$54,$15,$84,$0A,$2A ; $CD41ED
    db $C9,$41,$48,$10,$40,$2A,$48,$05,$19,$A0,$4E,$5B,$9B,$07,$14,$22 ; $CD41FD
    db $A6,$49,$40,$2E,$77,$16,$45,$55,$A2,$2A,$25,$05,$8A,$A2,$52,$50 ; $CD420D
    db $2A,$AA,$F8,$C9,$50,$8A,$14,$22,$41,$05,$6A,$83,$01,$69,$A0,$AA ; $CD421D
    db $50,$55,$28,$D5,$27,$3E,$82,$2A,$04,$11,$8D,$04,$FB,$F1,$2B,$0D ; $CD422D
    db $1F,$A7,$0A,$A4,$01,$13,$A9,$C0,$A7,$85,$14,$04,$81,$13,$32,$44 ; $CD423D
    db $4E,$BB,$45,$EF,$C1,$2A,$06,$51,$0B,$A4,$42,$28,$6A,$10,$28,$83 ; $CD424D
    db $20,$0D,$00,$3A,$00,$D4,$00,$A8,$10,$43,$BE,$21,$E2,$0A,$15,$55 ; $CD425D
    db $87,$A0,$34,$04,$9E,$21,$E9,$10,$1F,$E0,$40,$1F,$14,$DD,$6A,$3B ; $CD426D
    db $08,$50,$4B,$80,$40,$1C,$0E,$E1,$1A,$01,$90,$05,$E2,$08,$A0,$55 ; $CD427D
    db $7A,$00,$BF,$40,$B6,$08,$5A,$05,$9E,$20,$60,$1A,$9B,$37,$8F,$2A ; $CD428D
    db $A2,$45,$09,$92,$10,$C3,$40,$A2,$82,$5D,$01,$55,$AA,$8A,$05,$7C ; $CD429D
    db $97,$51,$55,$08,$82,$AA,$15,$55,$3E,$BF,$20,$06,$FD,$BF,$33,$D3 ; $CD42AD
    db $BF,$B0,$3E,$1F,$08,$74,$BF,$A3,$80,$1B,$A9,$A8,$55,$51,$97,$04 ; $CD42BD
    db $84,$5D,$11,$FA,$4A,$80,$17,$02,$54,$0A,$A0,$28,$3B,$43,$20,$00 ; $CD42CD
    db $FF,$53,$50,$9B,$82,$5F,$11,$7A,$12,$4A,$D5,$15,$00,$43,$04,$A8 ; $CD42DD
    db $24,$41,$A0,$0E,$80,$5B,$35,$C0,$16,$7F,$61,$EA,$0A,$71,$54,$17 ; $CD42ED
    db $50,$31,$63,$80,$1E,$F6,$01,$7D,$2A,$05,$5D,$1F,$01,$51,$1F,$55 ; $CD42FD
    db $54,$80,$E8,$05,$7F,$DD,$FF,$4A,$61,$AA,$2E,$3B,$16,$4D,$40,$15 ; $CD430D
    db $D4,$C5,$B3,$C9,$3B,$11,$A8,$7C,$F9,$7C,$01,$1D,$3F,$80,$40,$48 ; $CD431D
    db $77,$04,$50,$FE,$EF,$8E,$C3,$80,$2A,$82,$FF,$52,$3B,$31,$BD,$E3 ; $CD432D
    db $6B,$05,$FF,$0C,$3D,$C7,$10,$0F                                 ; $CD433D
L_CD4345:
    STX $0741               ; $CD4345  8E 41 07     mx
    ROL $DD80               ; $CD4348  2E 80 DD     mx
    JSR L_CD5CE9            ; $CD434B  20 E9 5C     mx
    CLD                     ; $CD434E  D8           mx
    ORA [$84],Y             ; $CD434F  17 84        mx
    ORA [$05]               ; $CD4351  07 05        mx
    INX                     ; $CD4353  E8           mx
    ASL                     ; $CD4354  0A           mx
    EOR ($14),Y             ; $CD4355  51 14        mx
    PHA                     ; $CD4357  48           mx
    SBC $8A1A05,X           ; $CD4358  FF 05 1A 8A  mx
    SEC                     ; $CD435C  38           mx
    STZ $5B,X               ; $CD435D  74 5B        mx
    CMP $DF,S               ; $CD435F  C3 DF        mx
    SBC #$FF                ; $CD4361  E9 FF        mx
    BRK #$1F                ; $CD4363  00 1F        mx
    BRK #$F7                ; $CD4365  00 F7        mx
    PHP                     ; $CD4367  08           mx
    LDA $B04F40,X           ; $CD4368  BF 40 4F B0  mx
    AND $AF,X               ; $CD436C  35 AF        mx
    BVC L_CD4377            ; $CD436E  50 07        mx
    DEC $48                 ; $CD4370  C6 48        mx
    LDX #$90                ; $CD4372  A2 90        mx
    LSR                     ; $CD4374  4A           mx
    PLA                     ; $CD4375  68           mx
    STA ($A0)               ; $CD4376  92 A0        mx
    ORA ($18)               ; $CD4378  12 18        mx
    JSL $204208             ; $CD437A  22 08 42 20  mx
    BRL L_CD4661            ; $CD437E  82 E0 02     mx
    db $24,$F3,$CD,$32,$F9,$02,$DF,$A7,$0F,$CC,$03,$DF,$00,$10,$81,$7E ; $CD4381
    db $52,$AD,$01,$F8,$31,$05,$FA,$C0,$84,$62,$29,$D7,$18,$50,$00,$06 ; $CD4391
    db $7E,$01,$A0,$00,$02,$98,$05,$20,$15,$C2,$2A,$C1,$9D,$90,$23,$A7 ; $CD43A1
    db $72,$C0,$09,$D6,$50,$23,$A7,$54,$22,$3A,$A9,$15,$22,$17,$4E,$BF ; $CD43B1
    db $10,$05,$A2,$DF,$26,$5B,$72,$BF,$60,$E8,$A7,$1F,$40,$95,$80,$06 ; $CD43C1
    db $FF,$D1,$03,$EC,$9F,$08,$03,$11,$44,$FC,$77,$43,$CC,$AB,$05,$DD ; $CD43D1
    db $40,$2F,$80,$11,$7E,$77,$BE,$83,$54,$2E,$15,$A8,$12,$2A,$51,$46 ; $CD43E1
    db $10,$85,$22,$56,$01,$A8,$12,$B0,$05,$F8,$E3,$45,$A8,$88,$00,$51 ; $CD43F1
    db $48,$A6,$C0,$0D,$40,$3A,$A0,$8B,$04,$B1,$55,$C1,$14,$4C,$DF,$BB ; $CD4401
    db $C3,$52,$EB,$EA,$89,$DF,$76,$02,$3F,$50,$00,$07,$7F,$00,$00,$89 ; $CD4411
    db $00,$4A,$01,$AC,$02,$44,$11,$CB,$94,$4D,$87,$11,$BF,$00,$4C,$91 ; $CD4421
    db $BE,$41,$54,$A2,$A0,$5D,$44,$00,$5F,$42,$A0,$88,$47,$7D,$01,$61 ; $CD4431
    db $B9,$44,$54,$26,$A0,$70,$37,$04,$BF,$23,$FE,$1E,$B7,$F0,$02,$80 ; $CD4441
    db $02,$7C,$CE,$49,$09,$A8,$03,$40,$1C,$01,$31,$E0,$08,$44,$45,$A6 ; $CD4451
    db $70,$A2,$D7,$54,$0A,$2A,$F5,$15,$EA,$8A,$75,$15,$6A,$EF,$7A,$DF ; $CD4461
    db $E5,$DB,$28,$C0,$53,$BB,$DE,$88,$C7,$35,$5F,$60,$87,$17,$7F,$78 ; $CD4471
    db $DB,$82,$E9,$67,$EF,$4A,$DF,$BF,$00,$F7,$DF,$B5,$57,$7A,$DF,$D7 ; $CD4481
    db $00,$52,$B6,$A0,$79,$15,$7A,$4A,$D1,$3A,$14,$AB,$00,$1F,$2B,$2A ; $CD4491
    db $08,$A1,$08,$47,$13,$80,$0A,$81,$F4,$DF,$80,$54,$5C,$5F,$A2,$40 ; $CD44A1
    db $5F,$80,$B4,$15,$72,$02,$D6,$70,$B8,$7E,$37,$3F,$77,$07,$20,$80 ; $CD44B1
    db $20,$1F,$40,$D1,$C3,$80,$01,$80,$70,$C0,$00,$88,$00,$F7,$8C,$89 ; $CD44C1
    db $08,$4B,$41,$AE,$A2,$C0,$5B,$CA,$0A,$98,$C1,$BA,$75,$F8,$F0,$39 ; $CD44D1
    db $F2,$A2,$00,$5D,$E9,$07,$02,$15,$24,$02,$05,$00,$15,$BF,$D7,$07 ; $CD44E1
    db $83,$82,$43,$A3,$02,$FB,$09,$BF,$9D,$25,$90,$E1,$BF,$A2,$A8,$70 ; $CD44F1
    db $54,$50,$A0,$8A,$44,$54,$89,$AA,$40,$8A,$08,$45,$8F,$5D,$F7,$05 ; $CD4501
    db $A2,$BB,$E2,$07,$14,$49,$8A,$E3,$00,$30,$45,$51,$AA,$22,$15,$A1 ; $CD4511
    db $48,$47,$11,$4B,$A5,$00,$A6,$B2,$17,$77,$07,$14,$C0,$28,$06,$31 ; $CD4521
    db $60,$E7,$52,$2C,$43,$50,$07,$AF,$A0,$5F,$48,$3F,$74,$06,$C0,$68 ; $CD4531
    db $03,$FF,$D0,$FF,$10,$8C,$00,$B9,$C1,$38,$80,$40,$E1,$3F,$88,$2B ; $CD4541
    db $00,$12                                                         ; $CD4551
L_CD4553:
    SBC ($2A,X)             ; $CD4553  E1 2A        mx
    PEI ($95)               ; $CD4555  D4 95        mx
    RTS                     ; $CD4557  60           mx
    db $7E,$00,$C5,$55,$BA,$50,$CA,$94,$01,$F8,$A2,$1C,$02,$20,$03,$89 ; $CD4558
    db $06,$8A,$05,$B0,$0A,$02,$8D,$E4,$1A,$08,$15,$2E,$9F,$51,$EE,$60 ; $CD4568
    db $9F,$6C,$41,$11,$14,$28,$82,$78,$9F,$E6,$9F,$39,$5B,$07,$41,$AA ; $CD4578
    db $28,$55,$15,$08,$B3,$55,$15,$90,$BB,$28,$AA,$45,$14,$3F,$A3,$A8 ; $CD4588
    db $04,$F0,$DB,$07,$B8,$75,$56,$54,$A7,$A2,$57,$41,$BA,$92,$75,$25 ; $CD4598
    db $EA,$0A,$C4,$F8,$AA,$01,$A8,$B9,$5F,$E2,$A3,$75,$16,$23,$90,$B7 ; $CD45A8
    db $54,$54,$A9,$A8,$0B,$57,$52,$AF,$A5,$4F,$B7,$6E,$FB,$BE,$E3,$BF ; $CD45B8
    db $89,$FB,$B8,$44,$4D,$41,$EF,$84,$FE,$20,$FF,$62,$FF,$9E,$FF,$1E ; $CD45C8
    db $80,$FB,$12,$A0,$10,$03,$01,$40,$00,$47,$1C,$28,$4A,$55,$E1,$C1 ; $CD45D8
    db $80,$1E,$77,$BC,$81,$C6,$7F,$DF,$1F,$00,$1D,$C1,$25,$7F,$00,$DE ; $CD45E8
    db $E6,$B1,$CC,$50,$CB,$1F,$85,$FC,$03,$E9,$FE,$40,$FF,$28,$FF,$F1 ; $CD45F8
    db $FF,$E0,$FF,$0F,$1F,$FC,$01,$02,$F3,$C0,$97,$1F,$0A,$9F,$60,$26 ; $CD4608
    db $19,$5D,$A2,$09,$96,$A7,$D8,$4F,$C0,$01,$1F,$1F,$C0,$20,$10,$04 ; $CD4618
    db $60,$DF,$06,$08,$38,$07,$00,$54,$90,$65,$BC,$43,$F6,$09,$33,$AF ; $CD4628
    db $50,$27,$BF,$A8,$F7,$74,$03,$00,$1B,$A4,$00,$40,$92,$09,$82,$05 ; $CD4638
    db $0E,$82,$A3,$1C,$DF,$E3,$F9,$B8,$ED,$60,$84,$63,$78,$87,$FA,$05 ; $CD4648
    db $03,$FE,$01,$33,$0C,$0F,$70,$3A,$11                             ; $CD4658
L_CD4661:
    TDC                     ; $CD4661  7B           mx
    EOR $789B,X             ; $CD4662  5D 9B 78     mx
    INY                     ; $CD4665  C8           mx
    ORA ($FE,X)             ; $CD4666  01 FE        mx
    BRK #$CF                ; $CD4668  00 CF        mx
    STA [$A0],Y             ; $CD466A  97 A0        mx
    CMP $3708,X             ; $CD466C  DD 08 37     mx
    INY                     ; $CD466F  C8           mx
    SBC $4F3010             ; $CD4670  EF 10 30 4F  mx
    BRA L_CD467D            ; $CD4674  80 07        mx
    db $F0,$0A,$D0,$00,$0A,$C8,$12                                     ; $CD4676
L_CD467D:
    CPY #$12                ; $CD467D  C0 12        mx
    BRK #$12                ; $CD467F  00 12        mx
    INY                     ; $CD4681  C8           mx
    SBC $32DD65             ; $CD4682  EF 65 DD 32  mx
    CMP $EF013F,X           ; $CD4686  DF 3F 01 EF  mx
    ORA [$F1]               ; $CD468A  07 F1        mx
    CMP $05DD6E,X           ; $CD468C  DF 6E DD 05  mx
    LDA ($1D),Y             ; $CD4690  B1 1D        mx
    XCE                     ; $CD4692  FB           mx
    CMP [$01]               ; $CD4693  C7 01        mx
    INC $03D1,X             ; $CD4695  FE D1 03     mx
    ORA [$B1]               ; $CD4698  07 B1        mx
    EOR $FC039A,X           ; $CD469A  5F 9A 03 FC  mx
    STA $11                 ; $CD469E  85 11        mx
    TRB $E9                 ; $CD46A0  14 E9        mx
    TAX                     ; $CD46A2  AA           mx
    CMP $50,S               ; $CD46A3  C3 50        mx
    BCC L_CD46AC            ; $CD46A5  90 05        mx
    SED                     ; $CD46A7  F8           mx
    COP #$31                ; $CD46A8  02 31        mx
    TSB $E8                 ; $CD46AA  04 E8        mx
L_CD46AC:
    COP #$54                ; $CD46AC  02 54        mx
    ORA ($A8,X)             ; $CD46AE  01 A8        mx
    LDA $2E97               ; $CD46B0  AD 97 2E     mx
    BRL L_CD5FC3            ; $CD46B3  82 0D 19     mx
    db $E0,$1A,$A8,$15,$D1,$2A,$48,$35,$94,$6A,$28,$D5,$DF,$89,$70,$22 ; $CD46B6
    db $10,$44,$0A,$A1,$05,$52,$02,$A0,$1A,$45,$14,$E8,$5F,$75,$88,$AE ; $CD46C6
    db $7B,$08,$90,$E3,$0C,$53,$10,$A2,$23,$00,$45,$E0,$69,$80,$55,$88 ; $CD46D6
    db $22,$00,$A1,$03,$20,$8A,$2A,$5D,$9F,$08,$2F,$E3,$88,$03,$B2,$3F ; $CD46E6
    db $01,$03,$81,$2A,$12,$45,$2B,$27,$3F,$E0,$6D,$54,$10,$A8,$EF,$87 ; $CD46F6
    db $95,$40,$3E,$80,$7D,$5A,$D7,$F5,$00,$00,$6B,$80,$97,$40,$29,$80 ; $CD4706
    db $15,$77,$A2,$A2,$2E,$8A,$2A,$15,$E1,$56,$28,$2E,$51,$11,$AA,$2F ; $CD4716
    db $50,$41,$14,$80,$2A,$2F,$00,$A3,$28,$02,$E1,$14,$22,$09,$47,$41 ; $CD4726
    db $91,$B3,$69,$D7,$2A,$E8,$C3,$15,$C0,$34,$BF,$DB,$D2,$FB,$0F,$00 ; $CD4736
    db $A0,$2F,$40,$5E,$20,$66,$18,$87,$46,$70,$F7,$2F,$02,$A9,$B1,$15 ; $CD4746
    db $42,$13,$8C,$8F,$10,$85,$60,$0A,$81,$DA,$27,$63,$9C,$AE,$51,$DF ; $CD4756
    db $20,$EC,$13,$F0,$0F,$C1,$3E,$E1,$1C,$00,$18,$02,$60,$28,$80,$C4 ; $CD4766
    db $03,$80,$0C,$40,$30,$81,$40,$62,$80,$B6,$87,$BD,$23,$FF,$1F,$7F ; $CD4776
    db $FF,$0F,$FF,$5D,$CF,$4B,$17,$24,$59,$48,$01,$40,$1E,$00,$E0,$85 ; $CD4786
    db $D8,$20,$00,$A0,$C3,$00,$82,$30,$D5,$94,$D3,$C1,$F7,$F2,$FF,$F9 ; $CD4796
    db $FF,$80,$00,$FD,$FC,$9D,$81,$20,$1D,$0A,$28,$04,$CA,$17,$06,$17 ; $CD47A6
    db $21,$38,$02,$00,$62,$00,$7F,$41,$FE,$00,$FB,$A6,$FF,$9E,$3E,$1E ; $CD47B6
    db $FF,$5F,$F7,$BF,$FF,$7F,$80,$3E,$01,$C0,$84,$59,$C1,$F9,$07,$19 ; $CD47C6
    db $45,$14,$E5,$3F,$64,$72,$7C,$A3,$5F,$3F,$EB,$7F,$CA,$9F,$DD,$C1 ; $CD47D6
    db $82,$28,$0A,$10,$08,$83,$00,$5C,$80,$40,$80,$61,$22,$00,$F6,$01 ; $CD47E6
    db $90,$DE,$7E,$F7,$FF,$DF,$FF,$80,$03,$FD,$F9,$FD,$F4,$DF,$C9,$13 ; $CD47F6
    db $09,$60,$01,$E5,$3B,$02,$C5,$01,$20,$C3,$06,$3A,$FE,$DF,$1F,$D3 ; $CD4806
    db $C7,$55,$F1,$B5,$FC,$FE,$07,$60,$7F,$5F,$1F,$01,$1D,$35,$28,$4B ; $CD4816
    db $58,$02,$A1,$5D,$80,$CE,$A1,$92,$13,$8A,$F1,$E1,$E5,$76,$F2,$FB ; $CD4826
    db $FD,$BF,$3E,$BC,$9F,$D5,$E7,$00,$D8,$2D,$08,$02,$E7,$A1,$1C,$7C ; $CD4836
    db $40,$29,$74,$51,$8B,$05,$03,$55,$03,$84,$A8,$11,$50,$0F,$2A,$57 ; $CD4846
    db $11,$AE,$C8,$00,$AA,$03,$48,$17,$55,$06,$A9,$3B,$80,$51,$0B,$55 ; $CD4856
    db $13,$8F,$53,$8E,$96,$28,$9E,$46,$0E,$87,$33,$47,$36,$80,$16,$0E ; $CD4866
    db $57,$AF,$00,$A4,$BF,$5D,$01,$25,$A8,$30,$48,$08,$80,$09,$50,$61 ; $CD4876
    db $90,$00,$10,$C2,$FF,$60,$7F,$FF,$00,$FD,$02,$C0,$FC,$0A,$FD,$D3 ; $CD4886
    db $1C,$1D,$C0,$00,$C9,$DA,$FC,$03,$18,$21,$01,$22,$5C,$01,$22,$21 ; $CD4896
    db $14,$A2,$48,$41,$14,$68,$A2,$84,$51,$8A,$20,$E0,$7F,$C1,$2A,$02 ; $CD48A6
    db $35,$81,$3A,$6A,$08,$82,$3B,$0A,$D5,$2F,$7F,$80,$FF,$82,$2A,$01 ; $CD48B6
    db $55,$2A,$82,$70,$04,$6D,$11,$44,$CA,$87,$41,$E5,$ED,$28,$C8,$1F ; $CD48C6
    db $E7,$9F,$02,$31,$17,$51,$AE,$A2,$5D,$39,$3F,$0E,$15,$EA,$2A,$D1 ; $CD48D6
    db $E3,$CB,$EB,$05,$BF,$DD,$2B,$B7,$DF,$DB,$55,$0F,$68,$9F,$5F,$4B ; $CD48E6
    db $8F,$00,$87,$7F,$4F,$FF,$AF,$7F,$1F,$3F,$8F,$1B,$89,$3F,$BF,$38 ; $CD48F6
    db $BB,$00,$B7,$00,$2B,$A0,$C0,$74,$81,$AE,$F3,$BF,$1C,$BF,$83,$FF ; $CD4906
    db $C4,$FF,$F6,$F6,$F0,$FE,$F8,$FF,$FF,$13,$8B,$03,$BD,$30,$00,$01 ; $CD4916
    db $09,$76,$02,$C5,$B8,$F0,$FF,$CF,$F7,$4F,$CF,$0F,$F7,$A7,$F6,$70 ; $CD4926
    db $FF,$FE,$EF,$62,$3F,$24,$39,$10,$30,$0E,$40,$08,$40,$09,$60,$E6 ; $CD4936
    db $0A,$C0,$08,$C0,$FF,$07,$B0,$FF,$E4,$FF,$C0,$54,$22,$A0,$7F,$0F ; $CD4946
    db $D9,$7F,$C0,$1F,$02,$99,$F8,$D4,$1F,$AF,$0F,$3A,$E0,$01,$70,$58 ; $CD4956
    db $03,$04,$FB,$81,$0E,$7E,$42,$FD,$40,$2A,$35,$01,$D1,$02,$04,$00 ; $CD4966
    db $81,$D8,$A5,$0D,$F2,$00,$F9,$00,$39,$C0,$FD,$02,$5F,$A0,$54,$FF ; $CD4976
    db $BA,$E9,$0D,$47,$77,$3E,$00,$FD,$59,$00,$CE,$0F,$0B,$03,$FA,$05 ; $CD4986
    db $F4,$8F,$0B,$DE,$01,$D9,$02,$E3,$18,$C0,$3F,$A8,$57,$E0,$1F,$FA ; $CD4996
    db $00,$F4,$07,$1F,$E5,$00,$E4,$7A,$5C,$A8,$E8,$88,$C2,$33,$EF,$10 ; $CD49A6
    db $37,$E5,$C8,$27,$D8,$0F,$70,$67,$18,$1F,$E0,$07,$F8,$70,$02,$E8 ; $CD49B6
    db $02,$30,$02,$20,$02,$88,$DD,$A8,$88,$22,$CE,$41,$F9,$23,$45,$F2 ; $CD49C6
    db $DE,$E1,$38,$35,$FE,$59,$FE,$5C,$01,$3F,$FA,$01,$FC,$03,$F5,$02 ; $CD49D6
    db $F2,$05,$F9,$06,$EA,$05,$05,$FD,$6C,$FF,$63,$04,$DD,$4E,$70,$83 ; $CD49E6
    db $54,$0C,$41,$B8,$04,$02,$14,$01,$EA,$00,$5B,$67,$00,$2B,$34,$8A ; $CD49F6
    db $90,$4D,$0E,$64,$9A,$8A,$35,$B2,$EA,$AC,$F2,$8C,$B7,$01,$01,$54 ; $CD4A06
    db $88,$22,$44,$11,$A8,$02,$08,$43,$CE,$B7,$01,$97,$DB,$44,$5B,$5F ; $CD4A16
    db $05,$43,$06,$C2,$51,$2A,$84,$15,$48,$8A,$00,$6D,$10,$DA,$20,$35 ; $CD4A26
    db $39,$D0,$0E,$AA,$20,$53,$01,$ED,$43,$C3,$45,$8A,$8A,$15,$D5,$2A ; $CD4A36
    db $0A,$35,$15,$40,$2B,$80,$FD,$02,$63,$C5,$7F,$16,$A8,$AD,$BB,$81 ; $CD4A46
    db $7F,$A9,$54,$D7,$FE,$5F,$05,$B0,$54,$0B,$B8,$07,$79,$06,$FA,$05 ; $CD4A56
    db $F5,$0A,$CB,$34,$90,$69,$20,$D2,$40,$A4,$90,$48,$28,$90,$58,$20 ; $CD4A66
    db $B0,$41,$41,$82,$17,$E0,$3F,$C0,$5F,$A0,$AF,$50,$4E,$B1,$F7,$08 ; $CD4A76
    db $97,$60,$35,$C0,$0D,$02,$13,$0C,$0E,$10,$0E,$20,$0E,$40,$77,$80 ; $CD4A86
    db $8F,$00,$1B,$00,$C2,$3D,$C7,$38,$F3,$0C,$B1,$48,$6B,$EA,$15,$94 ; $CD4A96
    db $0C,$6B,$AB,$14,$C0,$A1,$01,$06,$40,$91,$86,$11,$00,$01,$2E,$E2 ; $CD4AA6
    db $80,$58,$04,$C0,$08,$D5,$3C,$00,$FF,$58,$EF,$41,$FC,$0D,$F1,$77 ; $CD4AB6
    db $C8,$DA,$27,$65,$9B,$02,$20,$01,$10,$A9,$5B,$EC,$88,$18,$2E,$04 ; $CD4AC6
    db $60,$7D,$9F,$18,$FD,$04,$BD,$81,$BF,$30,$F7,$0F,$B7,$FF,$3F,$FF ; $CD4AD6
    db $6F,$FF,$60,$07,$02,$F8,$42,$00,$40,$0F,$4D,$22,$3A,$00,$67,$F6 ; $CD4AE6
    db $D9,$1F,$29,$00,$14,$2E,$D0,$1F,$00,$F1,$F8,$01,$C7,$1C,$5E,$C0 ; $CD4AF6
    db $FE,$FE,$FF,$D3,$C3,$00,$00,$06,$00,$20,$03,$3F,$21,$80,$02,$A1 ; $CD4B06
    db $1F,$DF,$16,$FD,$0F,$C1,$1B,$1F,$DF,$C7,$D5,$43,$E1,$25,$20,$09 ; $CD4B16
    db $08,$59,$89,$9A,$85,$5F,$4F,$FF,$CE,$C2,$FF,$CC,$DF,$DD,$FF,$EE ; $CD4B26
    db $DF,$F6,$CF,$7B,$FE,$9C,$A0,$BB,$11,$20,$97,$3C,$45,$02,$B8,$60 ; $CD4B36
    db $F7,$F3,$F2,$7D,$F7,$9E,$FD,$9F,$FB,$5F,$D7,$3F,$0B,$D7,$C5,$08 ; $CD4B46
    db $00,$48,$05,$3E,$20,$E8,$9C,$E9,$DF,$B8,$F5,$36,$E1,$AE,$F0,$5F ; $CD4B56
    db $F8,$BD,$3E,$D4,$9F,$E1,$CF,$91,$E7,$BB,$F7,$5C,$1A,$03,$9C,$38 ; $CD4B66
    db $43,$20,$46,$00,$B8,$77,$08,$04,$00,$54,$0F,$56,$87,$D5,$31,$F1 ; $CD4B76
    db $3C,$D0,$46,$BB,$40,$FF,$50,$7F,$55,$90,$56,$3D,$C0,$5C,$9F,$63 ; $CD4B86
    db $85,$FA,$AE,$F8,$A2,$F1,$7B,$74,$4D,$10,$14,$C2,$14,$E9,$1A,$E2 ; $CD4B96
    db $97,$BB,$0C,$40,$5B,$A0,$06,$28,$75,$05,$4B,$E5,$0D,$04,$86,$51 ; $CD4BA6
    db $22,$88,$C5,$10,$B2,$4A,$35,$C1,$FA,$20,$E5,$52,$2E,$AA,$04,$1D ; $CD4BB6
    db $AA,$22,$55,$05,$2A,$00,$95,$04,$1A,$0A,$15,$05,$F0,$6B,$41,$10 ; $CD4BC6
    db $86,$28,$07,$5E,$01,$B4,$0A,$48,$7C,$F1,$50,$25,$03,$20,$0A,$46 ; $CD4BD6
    db $A9,$80,$53,$A9,$5F,$1D,$45,$70,$8A,$83,$F2,$9A,$C0,$35,$15,$AD ; $CD4BE6
    db $BB,$1C,$05,$55,$22,$03,$21,$2A,$AA,$0B,$F2,$08,$BF,$54,$45,$54 ; $CD4BF6
    db $20,$17,$BB,$A2,$7F,$48,$BF,$05,$98,$5F,$44,$BF,$A2,$73,$9B,$80 ; $CD4C06
    db $03,$44,$00,$92,$00,$42,$00,$04,$A2,$00,$5C,$7F,$3F,$F4,$7F,$D1 ; $CD4C16
    db $01,$7A,$37,$D3,$7F,$56,$01,$9F,$5B,$00,$4F,$9D,$3E,$9F,$FF,$02 ; $CD4C26
    db $6E,$A4,$38,$FF,$AC,$FF,$33,$BC,$83,$FE,$C3,$FA,$F7,$F7,$F0,$FF ; $CD4C36
    db $F8,$FF,$FE,$DD,$00,$04,$3B,$40,$04,$91,$BF,$00,$08,$00,$17,$C5 ; $CD4C46
    db $B8,$C6,$A8,$5F,$FF,$C0,$F9,$C2,$A6,$D9,$76,$E9,$B8,$61,$EA,$94 ; $CD4C56
    db $B0,$CE,$D9,$22,$04,$01,$06,$20,$06,$08,$01,$01,$10,$30,$25,$DA ; $CD4C66
    db $5F,$0C,$03,$FC,$05,$FA,$01,$2E,$0A,$D1,$DB,$04,$25,$3B,$54,$03 ; $CD4C76
    db $60,$85,$01,$2E,$00,$3B,$00,$EB,$6A,$55,$DF,$47,$02,$FE,$67,$1B ; $CD4C86
    db $3D,$07,$F8,$02,$0F,$70,$E0,$1F,$68,$97,$E5,$0A,$8C,$61,$C1,$3C ; $CD4C96
    db $40,$BF,$DC,$0B,$01,$0E,$00,$68,$00,$15,$3A,$DC,$C2,$AE,$85,$E0 ; $CD4CA6
    db $01,$01,$67,$98,$4F,$B0,$27,$D8,$8C,$01,$87,$78,$09,$9F,$E9,$DF ; $CD4CB6
    db $1D,$60,$02,$48,$2A,$DD,$20,$99,$DB,$4C,$DF,$04,$01,$BF,$40,$FF ; $CD4CC6
    db $E8,$07,$97,$D3,$DB,$0F,$F8,$E3,$47,$90,$FC,$E9,$FF,$00,$F7,$00 ; $CD4CD6
    db $98,$00,$F0,$04,$EA,$00,$8E,$32,$B4,$6B,$D3,$E3,$0C,$C4,$19,$EB ; $CD4CE6
    db $14,$A1,$1A,$8A,$35,$D5,$2A,$4A,$35,$94,$00,$8B,$C2,$1F,$9F,$00 ; $CD4CF6
    db $E1,$B7,$00,$E2,$00,$4F,$10,$AE,$00,$57,$28,$69,$94,$80,$1F,$EA ; $CD4D06
    db $11,$51,$2A,$2C,$D3,$07,$45,$A2,$A2,$55,$D5,$E4,$08,$90,$AA,$7B ; $CD4D16
    db $5F,$F7,$03,$72,$E9,$B3,$51,$57,$03,$AE,$D5,$B3,$D1,$03,$50,$33 ; $CD4D26
    db $55,$A8,$A8,$55,$04,$52,$A9,$A8,$53,$55,$DE,$3F,$04,$43,$AF,$7C ; $CD4D36
    db $26,$03,$3F,$51,$38,$00,$AF,$37,$A7,$E0,$03,$BF,$00,$3C,$E0,$C5 ; $CD4D46
    db $56,$A9,$A9,$60,$52,$37,$BB,$44,$4B,$A4,$30,$96,$48,$C5,$AD,$10 ; $CD4D56
    db $FD,$18,$02,$EE,$11,$D5,$2A,$14,$92,$DF,$E1,$FE,$01,$E9,$04,$C6 ; $CD4D66
    db $08,$A6,$10,$CB,$20,$5F,$20,$81,$F3,$67,$80,$48,$92,$7D,$D5,$FF ; $CD4D76
    db $33,$7F,$80,$0D,$FF,$AC,$6E,$80,$21,$2E,$10,$4F,$06,$20,$3F,$40 ; $CD4D86
    db $9F,$40,$11,$5E,$DE,$BA,$20,$9D,$20,$9A,$21,$95,$22,$F2,$05,$EC ; $CD4D96
    db $13,$D0,$2F,$E0,$1F,$F0,$0F,$A1,$5C,$E5,$18,$48,$11,$08,$E2,$C0 ; $CD4DA6
    db $0C,$80,$10,$40,$20,$B0,$40,$22,$80,$E2,$01,$A3,$7F,$40,$BE,$06 ; $CD4DB6
    db $F8,$1B,$E4,$2C,$93,$90,$2F,$60,$9F,$80,$11,$39,$41,$20,$58,$03 ; $CD4DC6
    db $40,$0C,$40,$10,$30,$00,$60,$0D,$1D,$C1,$CC,$03,$1C,$7B,$86,$9B ; $CD4DD6
    db $7E,$85,$00,$7A,$FE,$0F,$E0,$6F,$08,$22,$00,$64,$23,$1D,$7C,$A7 ; $CD4DE6
    db $DF,$15,$20,$90,$06,$1D,$54,$0E,$77,$F7,$39,$03,$DD,$05,$6B,$D8 ; $CD4DF6
    db $F9,$01,$DD,$01,$C1,$99,$9C,$FE,$A1,$FF,$9F,$00,$01,$FB,$83,$FB ; $CD4E06
    db $B8,$75,$22,$1D,$13,$CD,$90,$4B,$A1,$04,$BA,$03,$EB,$00,$FF,$BF ; $CD4E16
    db $3F,$BF,$8F,$7F,$F3,$F6,$45,$FC,$49,$23,$7F,$7F,$7E,$97,$25,$D9 ; $CD4E26
    db $01,$45,$48,$F6,$C7,$E6,$F7,$F3,$FE,$FD,$EF,$FE,$BF,$FF,$EF,$7F ; $CD4E36
    db $DF,$9F,$DF,$CF,$09,$A2,$97,$D5,$3D,$81,$44,$DF,$12,$D4,$73,$9A ; $CD4E46
    db $37,$00,$45,$DE,$9E,$EF,$CE,$F7,$E6,$20,$55,$0C,$7A,$99,$55,$06 ; $CD4E56
    db $21,$20,$E1,$65,$FB,$CA,$7D,$DD,$75,$BE,$06,$7D,$3F,$FD,$42,$0A ; $CD4E66
    db $73,$FF,$E4,$02,$A0,$39,$C1,$20,$A6,$66,$5E,$3B,$09,$E0,$B7,$BB ; $CD4E76
    db $0B,$F0,$FF,$20,$7F,$90,$7F,$70,$BF,$00,$9F,$F0,$DF,$76,$BA,$0E ; $CD4E86
    db $00,$60,$17,$03,$08,$C5,$1E,$28,$D2,$34,$C5,$12,$8A,$74,$A5,$78 ; $CD4E96
    db $AA,$30,$15,$A8,$0A,$30,$0A,$E8,$A2,$1A,$60,$15,$C0,$03,$00,$15 ; $CD4EA6
    db $C0,$2A,$40,$47,$35,$9C,$A5,$03,$EB,$F5,$FC,$3D,$67,$65,$03,$7B ; $CD4EB6
    db $F7,$54,$11,$43,$06,$51,$65,$03,$C3,$A4,$51,$48,$22,$40,$95,$A0 ; $CD4EC6
    db $2A,$C4,$15,$28,$82,$61,$19,$07,$04,$2A,$88,$5F,$B7,$77,$40,$DD ; $CD4ED6
    db $E3,$01,$D7,$2B,$41,$4B,$F3,$45,$A4,$FF,$11,$55,$25,$82,$2A,$EF ; $CD4EE6
    db $BF,$D3,$01,$FF,$2F,$4F,$BF,$54,$2A,$07,$FC,$DF,$BD,$17,$B2,$03 ; $CD4EF6
    db $11,$FB,$83,$7F,$3F,$3F,$FF,$BF,$16,$04,$BF,$9F,$24,$BB,$C0,$C6 ; $CD4F06
    db $7C,$40,$02,$FC,$F9,$03,$F8,$FF,$03,$00,$FC,$FE,$71,$FC,$15,$FA ; $CD4F16
    db $D7,$7C,$1C,$F7,$FF,$F6,$01,$79,$01,$07,$1F,$C5,$72,$1A,$D1,$0C ; $CD4F26
    db $83,$E4,$8A,$F5,$9B,$E4,$2F,$F0,$91,$C6,$5F,$10,$25,$00,$22,$C0 ; $CD4F36
    db $18,$E3,$24,$12,$81,$1B,$28,$00,$A0,$0E,$DF,$B3,$16,$40,$FB,$00 ; $CD4F46
    db $9E,$85,$9B,$7F,$87,$10,$0F,$10,$87,$00,$88,$70,$78,$83,$78,$80 ; $CD4F56
    db $3B,$58,$B5,$FA,$44,$05,$27,$B5,$F9,$FE,$CD,$FD,$CF,$7C,$89,$07 ; $CD4F66
    db $00,$5C,$08,$F8,$F0,$F7,$00,$2B,$44,$17,$48,$94,$6B,$80,$7F,$DC ; $CD4F76
    db $23,$B0,$4F,$86,$39,$B4,$03,$16,$21,$51,$8E,$94,$B4,$DC,$00,$00 ; $CD4F86
    db $B0,$00,$46,$00,$4C,$00,$D8,$EA,$01,$86,$07,$F8,$17,$F8,$07,$47 ; $CD4F96
    db $01,$27,$03,$03,$87,$78,$00,$02,$D0,$06,$01,$53,$30,$B6,$48,$79 ; $CD4FA6
    db $B3,$4C,$F3,$1A,$0C,$B0,$4C,$05,$25,$F5,$07,$70,$90,$0E,$90,$02 ; $CD4FB6
    db $90,$42,$90,$03,$90,$01,$90,$D5,$AE,$31,$F0,$03,$95,$40,$29,$87 ; $CD4FC6
    db $23,$15,$6A,$F1,$B7,$CC,$52,$4E,$87,$03,$1D,$45,$00,$BE,$E4,$2C ; $CD4FD6
    db $7D,$9F,$BA,$DC,$80,$30,$95,$00,$59,$A6,$AA,$45,$45,$57,$AA,$C2 ; $CD4FE6
    db $9F,$55,$46,$98,$FB,$78,$68,$88,$22,$2D,$11,$44,$31,$FF,$85,$86 ; $CD4FF6
    db $88,$55,$11,$30,$07,$4B,$5C,$01,$BA,$EE,$71,$6C,$03,$71,$04,$1C ; $CD5006
    db $97,$70,$ED,$10,$19,$48,$A6,$A2,$4D,$75,$8A,$93,$4C,$40,$9A,$EB ; $CD5016
    db $14,$23,$98,$86,$20,$00,$3F,$CB,$00,$DD,$20,$4A,$01,$08,$53,$04 ; $CD5026
    db $61,$08,$5C,$3F,$25,$B5,$0A,$BA,$44,$44,$8A,$F0,$0C,$A0,$19,$86 ; $CD5036
    db $71,$8E,$15,$EF,$10,$BB,$19,$04,$A8,$9D,$2E,$02,$1A,$33,$A1,$59 ; $CD5046
    db $22,$35,$42,$A3,$44,$6B,$84,$63,$88,$D7,$08,$CC,$10,$FF,$E1,$95 ; $CD5056
    db $F7,$C7,$01,$7E,$51,$ED,$71,$D9,$02,$E5,$02,$E2,$1C,$FD,$00,$FA ; $CD5066
    db $01,$0D,$02,$83,$7C,$3E,$40,$96,$57,$56,$9F,$55,$80,$09,$55,$22 ; $CD5076
    db $AB,$03,$44,$57,$88,$6F,$90,$9F,$AA,$21,$BE,$00,$40,$BD,$40,$CA ; $CD5086
    db $35,$F4,$0B,$FC,$6C,$03,$01,$05,$79,$42,$06,$47,$E1,$C0,$02,$E0 ; $CD5096
    db $04,$D4,$08,$AC,$10,$54,$20,$B9,$40,$B0,$4D,$01,$01,$FC,$04,$01 ; $CD50A6
    db $F9,$0B,$E4,$0C,$C3,$68,$97,$82,$03,$15,$EA,$AC,$53,$30,$54,$10 ; $CD50B6
    db $03,$38,$B8,$F4,$04,$40,$08,$34,$08,$05,$00,$A4,$00,$39,$46,$CB ; $CD50C6
    db $3E,$05,$FE,$03,$80,$FD,$21,$FE,$83,$78,$19,$C2,$80,$3F,$38,$00 ; $CD50D6
    db $01,$E3,$1B,$84,$00,$24,$00,$DD,$7F,$D7,$7F,$82,$7F,$C5,$7F,$1C ; $CD50E6
    db $8B,$7F,$81,$07,$3E,$85,$7F,$04,$6A,$FB,$52,$FF,$A3,$97,$FB,$7F ; $CD50F6
    db $03,$03,$EF,$8F,$6D,$A1,$A9,$BC,$58,$20,$01,$10,$E8,$45,$B8,$74 ; $CD5106
    db $5F,$1F,$9F,$CF,$FB,$F3,$F9,$F9,$FE,$FD,$F9,$F8,$1C,$86,$F5,$A0 ; $CD5116
    db $18,$47,$04,$48,$78,$01,$06,$A8,$02,$02,$EF,$E7,$02,$F7,$FB,$FB ; $CD5126
    db $FD,$FD,$FE,$2B,$1D,$50,$BF,$10,$70,$08,$1F,$02,$00,$B5,$47,$04 ; $CD5136
    db $FA,$F6,$FF,$00,$1F,$FC,$FC,$FF,$7E,$3F,$3F,$0E,$7F,$BF,$7F,$DF ; $CD5146
    db $FF,$FD,$16,$1F,$03,$90,$01,$00,$7F,$6C,$3F,$03,$32,$6F,$B1,$FD ; $CD5156
    db $DF,$53,$01,$47,$70,$3F,$38,$FD,$BF,$80,$D6,$91,$BE,$00,$0E,$DC ; $CD5166
    db $DD,$01,$C0,$65,$07,$07,$D0,$C6,$EF,$F0,$EF,$28,$F6,$38,$F6,$B1 ; $CD5176
    db $F2,$E5,$7A,$9D,$BA,$F5,$B8,$00,$75,$7B,$22,$0C,$00,$B8,$89,$67 ; $CD5186
    db $B4,$55,$07,$EA,$4A,$D4,$15,$68,$7A,$C4,$E8,$3B,$AA,$D1,$77,$F0 ; $CD5196
    db $21,$BF,$35,$00,$6A,$80,$13,$C3,$19,$DA,$D5,$73,$1E,$41,$0E,$A0 ; $CD51A6
    db $05,$40,$14,$AA,$58,$45,$28,$92,$28,$55,$30,$8A,$14,$A2,$02,$55 ; $CD51B6
    db $19,$A6,$00,$45,$E3,$1B,$4D                                     ; $CD51C6
L_CD51CD:
    LDY #$56                ; $CD51CD  A0 56        Mx
    EOR $54,X               ; $CD51CF  55 54        Mx
    ORA [$01]               ; $CD51D1  07 01        Mx
    DEY                     ; $CD51D3  88           Mx
    JSL $7B1540             ; $CD51D4  22 40 15 7B  Mx
    CMP $AA4E91,X           ; $CD51D8  DF 91 4E AA  Mx
    XBA                     ; $CD51DC  EB           Mx
    SBC [$54]               ; $CD51DD  E7 54        Mx
    LDA ($3B,X)             ; $CD51DF  A1 3B        Mx
    RTI                     ; $CD51E1  40           Mx
    db $DE,$BA,$DF,$55,$23,$16,$D1,$E7,$45,$55,$A2,$5F,$FB,$CE,$03,$8A ; $CD51E2
    db $F9,$FF,$22,$8A,$FD,$06,$6E,$B8,$4A,$20,$55,$4F,$4F,$BF,$AF,$5F ; $CD51F2
    db $57,$AF,$AB,$56,$54,$5D,$FF,$30,$3D,$D3,$C0,$D6,$50,$01,$A8,$95 ; $CD5202
    db $63,$07,$22,$13,$FE,$90,$38,$FF,$BE,$3F,$2A,$1F,$0F,$2C,$A0,$02 ; $CD5212
    db $3A,$B9,$26,$E5,$50,$80,$13,$40,$F5,$FE,$F2,$F9,$4B,$F0,$9F,$EB ; $CD5222
    db $B9,$D6,$F1,$AF,$BA,$57,$72,$0D,$19,$1D,$04,$DF,$E3,$3B,$01,$08 ; $CD5232
    db $00,$49,$20,$B2,$40,$32,$4C,$D7,$28,$89,$57,$00,$CF,$30,$FF,$20 ; $CD5242
    db $1F,$E0,$BD,$42,$1D,$83,$30,$17,$9D,$16,$87,$EB,$57,$DF,$AE,$A6 ; $CD5252
    db $BD,$9C,$BF,$D9,$DF,$01,$F7,$AF,$18,$0C,$01,$12,$C1,$D8,$06,$E1 ; $CD5262
    db $00,$E2,$19,$F5,$02,$EB,$04,$D7,$08,$90,$DD,$FB,$04,$BE,$41,$33 ; $CD5272
    db $EF,$10,$07,$DF,$BA,$85,$2F,$0E,$10,$5E,$20,$BB,$F1,$B3,$EF,$D1 ; $CD5282
    db $8F,$05,$35,$50,$CB,$87,$44,$B1,$81,$7C,$A8,$57,$D0,$2F,$81,$7F ; $CD5292
    db $CC,$33,$8F,$7F,$68,$00,$4A,$00,$82,$AD,$B9,$74,$D0,$39,$1C,$CC ; $CD52A2
    db $03,$71,$47,$98,$97,$C8,$2F,$F0,$87,$38,$A7,$98,$57,$E8,$0F,$F0 ; $CD52B2
    db $47,$F8,$97,$DC,$DB,$40,$01,$94,$80,$DF,$B7,$48,$B3,$4C,$B1,$48 ; $CD52C2
    db $B5,$60,$4A,$01,$AE,$40,$AE,$51,$01,$B6,$48,$04,$91,$00,$91,$06 ; $CD52D2
    db $CC,$03,$01,$10,$76,$83,$5F,$4B,$93,$01,$28,$2A,$80,$05,$50,$0A ; $CD52E2
    db $A0,$56,$CE,$47,$45,$97,$05,$AA,$0A,$1C,$07,$77,$87,$01,$7D,$00 ; $CD52F2
    db $78,$02,$3D,$00,$CA,$D6,$AE,$FB,$71,$5D,$08,$2C,$83,$A2,$0D,$25 ; $CD5302
    db $8A,$A0,$0D,$E5,$0A,$72,$0D,$55,$0A,$A2,$14,$50,$05,$9F,$F2,$7B ; $CD5312
    db $A8,$02,$00,$07,$CF,$10,$F0,$0A,$30,$C1,$1B,$40,$50,$AF,$A8,$18 ; $CD5322
    db $9B,$40,$20,$03,$0F,$80,$75,$5E,$01,$CA,$3A,$15,$05,$90,$D7,$51 ; $CD5332
    db $C0,$0A,$98,$01,$45,$04,$A8,$A8,$06,$22,$0D,$D5,$C4,$EE,$6E,$9F ; $CD5342
    db $98,$20,$15,$20,$82,$02,$51,$65,$12,$66,$89,$62,$11,$6A,$85,$4C ; $CD5352
    db $13,$06,$81,$24,$4A,$15,$A2,$80,$29,$00,$32,$0C,$A2,$03,$00,$A4 ; $CD5362
    db $BA,$54,$7A,$04,$11,$84,$0C,$40,$58,$A4,$63,$9C,$23,$1C,$A1,$5E ; $CD5372
    db $A0,$5F,$C0,$3F,$40,$3F,$48,$BF,$0B,$10,$01,$20,$C0,$21,$3B,$FF ; $CD5382
    db $40,$A0,$A4,$40,$FC,$00,$9F,$60,$0C,$49,$B0,$1F,$E0,$05,$33,$11 ; $CD5392
    db $00,$6F,$90,$F1,$CB,$1D,$80,$4E,$70,$01,$1A,$01,$19,$02,$FD,$02 ; $CD53A2
    db $05,$22,$83,$24,$F9,$FA,$03,$4C,$3B,$CB,$04,$1D,$7E,$2E,$81,$7A ; $CD53B2
    db $1D,$81,$F5,$02,$F3,$04,$EB,$04,$E7,$08,$F3,$08,$57,$84,$7F,$F4 ; $CD53C2
    db $01,$E5,$52,$57,$04,$8A,$91,$03,$3B,$04,$7C,$61,$F1,$E9,$1A,$06 ; $CD53D2
    db $D3,$08,$4B,$E1,$AF,$10,$DB,$20,$EE,$11,$BB,$44,$CE,$31,$EA,$15 ; $CD53E2
    db $80,$17,$E4,$1B,$BF,$40,$92,$0D,$07,$EA,$00,$B8,$00,$CE,$40,$BC ; $CD53F2
    db $BF,$00,$C4,$BA,$77,$00,$8F,$10,$E2,$10,$4F,$10,$3D,$4A,$D1,$2E ; $CD5402
    db $61,$9E,$F2,$08,$38,$C3,$16,$C9,$CC,$13,$A0,$0E,$84,$30,$10,$C0 ; $CD5412
    db $60,$0C,$EF,$34,$A8,$07,$1D,$A4,$18,$80,$F7,$19,$80,$7C,$96,$3C ; $CD5422
    db $43,$02,$C4,$3B,$E1,$1E,$2A,$D5,$26,$D3,$A4,$D8,$3E,$04,$3A,$C0 ; $CD5432
    db $E1,$4B,$0C,$7D,$84,$8C,$7F,$9F,$6B,$9F,$45,$3F,$22,$0F,$09,$E7 ; $CD5442
    db $04,$F9,$01,$FC,$02,$38,$1D,$DB,$80,$A5,$DF,$C1,$45,$3F,$6B,$72 ; $CD5452
    db $7F,$17,$BF,$CF,$7F,$FF,$BF,$FE,$5F,$FD,$2F,$FD,$50,$FC,$80,$04 ; $CD5462
    db $80,$08,$00,$70,$B4,$30,$A3,$03,$B7,$FF,$D5,$C7,$B8,$47,$DF,$9B ; $CD5472
    db $F9,$49,$FE,$BD,$FC,$7C,$FF,$7E,$FE,$7E,$70,$55,$40,$06,$30,$00 ; $CD5482
    db $75,$40,$A0,$A6,$80,$01,$80,$8F,$CF,$0C,$FE,$EF,$FF,$F7,$00,$FF ; $CD5492
    db $C0,$28,$FB,$59,$F9,$7F,$7D,$51,$30,$37,$08,$47,$05,$86,$00,$87 ; $CD54A2
    db $9E,$9F,$EF,$DF,$CF,$CF,$61,$FF,$23,$EF,$E6,$E6,$1D,$C0,$8F,$C8 ; $CD54B2
    db $B3,$23,$19,$A2,$05,$90,$E3,$98,$BC,$CC,$FF,$CD,$F7,$AD,$EF,$5C ; $CD54C2
    db $7F,$3C,$FF,$BC,$F9,$B8,$67,$91,$73,$10,$E1,$C3,$00,$21,$D4,$01 ; $CD54D2
    db $E8,$41,$06,$41,$C4,$55,$A8,$DD,$08,$00,$B8,$0A,$7C,$11,$FC,$B2 ; $CD54E2
    db $74,$49,$27,$BA,$82,$48,$AE,$C5,$00,$A6,$EB,$32,$C0,$60,$7D,$E5 ; $CD54F2
    db $14,$01,$5A,$A0,$54,$21,$60,$8A,$24,$11,$A2,$48,$F4,$51,$C1,$2A ; $CD5502
    db $64,$9A,$0A,$15,$D7,$EA,$3B,$35,$C4,$D3,$C7,$04,$2A,$AD,$8B,$06 ; $CD5512
    db $55,$20,$8A,$40,$14,$2C,$03,$53,$04,$CC,$12,$B0,$45,$BB,$64,$D2 ; $CD5522
    db $B3,$41,$00,$AA,$A9,$50,$68,$83,$A0,$0D,$00,$67,$3A,$1D,$01,$7C ; $CD5532
    db $DF,$FE,$00,$1D,$7E,$82,$C5,$F4,$E3,$01,$FF,$DF,$D5,$5F,$5A,$7C ; $CD5542
    db $62,$E3,$40,$D3,$54,$55,$CA,$0A,$54,$45,$04,$26,$A2,$06,$55,$AB ; $CD5552
    db $FE,$FF,$20,$EA,$0E,$2D,$08,$51,$93,$26,$54,$54,$8D,$1F,$04,$A3 ; $CD5562
    db $C7,$23,$28,$1F,$07,$20,$09,$C0,$1F,$51,$54,$80,$0E,$AA,$40,$55 ; $CD5572
    db $08,$48,$5B,$11,$02,$7A,$A8,$06,$1F,$20,$37,$05,$50,$D8,$09,$03 ; $CD5582
    db $2A,$80,$72,$15,$9E,$2D,$9D,$71,$05,$17,$05,$D2,$1B,$15,$E9,$2B ; $CD5592
    db $85,$1F,$84,$2C,$54,$01,$9F,$1F,$03,$E5,$FF,$1D,$1F,$52,$9D,$0C ; $CD55A2
    db $5F,$C6,$6C,$07,$28,$2B,$80,$1F,$A8,$03,$AD,$52,$53,$A4,$AF,$50 ; $CD55B2
    db $00,$07,$28,$57,$DE,$01,$99,$02,$52,$E8,$07,$45,$D5,$1C,$D4,$43 ; $CD55C2
    db $0C,$3E,$00,$25,$C0,$17,$AB,$12,$54,$15,$6A,$2E,$43,$0C,$3D,$F3 ; $CD55D2
    db $AE,$51,$F2,$0F,$E0,$1F,$43,$1F,$93,$0D,$0E,$53,$8F,$23,$0C,$6B ; $CD55E2
    db $23,$F0,$A9,$59,$00,$20,$80,$A2,$40,$04,$A0,$88,$50,$EA,$81,$7B ; $CD55F2
    db $F8,$A7,$F8,$F7,$F8,$E7,$C0,$07,$D7,$F8,$C7,$F8,$FF,$08,$DC,$DF ; $CD5602
    db $20,$B2,$41,$B2,$40,$BB,$44,$BA,$44,$BC,$41,$BC,$42,$03,$0C,$00 ; $CD5612
    db $92,$0C,$93,$01,$92,$00,$93,$00,$77,$96,$F9,$AC,$03,$97,$97,$8F ; $CD5622
    db $3E,$00,$2C,$51,$12,$88,$75,$00,$22,$88,$14,$41,$02,$A0,$40,$A0 ; $CD5632
    db $B0,$4F,$04,$8A,$62,$15,$25,$9A,$02,$93,$A3,$1A,$45,$17,$17,$EE ; $CD5642
    db $00,$8C,$5C,$01,$88,$02,$71,$04,$FA,$01,$71,$00,$26,$08,$D2,$29 ; $CD5652
    db $24,$D3,$48,$A6,$B0,$4D,$40,$9A,$A8,$14,$16,$A9,$C0,$33,$80,$55 ; $CD5662
    db $8F,$20,$2F,$00,$B2,$08,$C4,$11,$80,$2A,$07,$50,$B0,$07,$C2,$90 ; $CD5672
    db $03,$40,$50,$8F,$42,$35,$84,$80,$CE,$08,$A0,$A8,$40,$01,$60,$54 ; $CD5682
    db $17,$20,$05,$08,$A2,$3B,$04,$51,$0C,$59,$54,$41,$2A,$05,$40,$08 ; $CD5692
    db $15,$50,$8A,$10,$B8,$DF,$55,$83,$28,$36,$80,$14,$33,$3F,$C0,$11 ; $CD56A2
    db $00,$8A,$20,$55,$10,$71,$AA,$15,$A2,$8D,$33,$08,$57,$1B,$D6,$23 ; $CD56B2
    db $1F,$8A,$A3,$03,$18,$45,$D0,$77,$5C,$F0,$8A,$A4,$18,$46,$39,$04 ; $CD56C2
    db $96,$50,$2C,$22,$19,$5A,$54,$00,$36,$80,$30,$57,$4D,$2E,$48,$03 ; $CD56D2
    db $58,$90,$C4,$20,$24,$03,$B7,$48,$D9,$26,$DA,$25,$59,$26,$4A,$85 ; $CD56E2
    db $E8,$57,$A9,$56,$D8,$10,$24,$01,$00,$48,$02,$48,$81,$48,$32,$48 ; $CD56F2
    db $00,$60,$88,$B8,$FF,$00,$1F,$80,$74,$F6,$98,$E5,$7F,$80,$07,$1F ; $CD5702
    db $C0,$5C,$4F,$22,$B0,$CF,$10,$6F,$10,$A7,$10,$AE,$10,$2E,$10,$7E ; $CD5712
    db $A0,$42,$1F,$F8,$07,$C8,$37,$0E,$40,$3F,$50,$BF,$AA,$18,$7E,$30 ; $CD5722
    db $AB,$58,$20,$08,$AA,$95,$57,$01,$80,$65,$08,$CA,$FF,$50,$AF,$20 ; $CD5732
    db $1E,$A1,$5E,$C2,$3D,$41,$38,$44,$BB,$FE,$01,$E2,$11,$00,$10,$C1 ; $CD5742
    db $2A,$7B,$41,$5D,$86,$6A,$41,$00,$43,$00,$02,$0C,$F2,$AD,$12,$5F ; $CD5752
    db $20,$8E,$71,$15,$EA,$42,$BD,$08,$F7,$01,$FE,$03,$FC,$4D,$30,$9F ; $CD5762
    db $40,$0E,$80,$15,$80,$42,$40,$63,$01,$00,$94,$6B,$CE,$31,$8C,$C9 ; $CD5772
    db $3E,$00,$80,$98,$26,$6E,$91,$85,$7A,$94,$EA,$C4,$3D,$74,$2D,$80 ; $CD5782
    db $3C,$1C,$0E,$60,$05,$80,$08,$F6,$0C,$54,$AB,$88,$77,$67,$60,$00 ; $CD5792
    db $9F,$E8,$17,$E5,$1A,$78,$87,$09,$E9,$12,$55,$88,$A3,$3B,$68,$00 ; $CD57A2
    db $A5,$2E,$8D,$00,$39,$8B,$7E,$10,$3E,$47,$BF,$AA,$5F,$0B,$CF,$51 ; $CD57B2
    db $AF,$0F,$E0,$83,$64,$19,$C1,$56,$74,$98,$F4,$E0,$8E,$84,$98,$03 ; $CD57C2
    db $DE,$B0,$BF,$EF,$7F,$02,$DB,$7F,$03,$3F,$62,$BF,$0F,$BF,$01,$04 ; $CD57D2
    db $B3,$BF,$85,$BF,$FF,$7D,$C2,$B8,$7C,$3F,$3E,$7F,$BE,$DF,$BE,$FC ; $CD57E2
    db $BC,$FD,$01,$2C,$BE,$71,$43,$1B,$80,$55,$3B,$EA,$00,$05,$FF,$F2 ; $CD57F2
    db $F2,$FF,$FB,$7F,$18,$FB,$FF,$7B,$01,$F9,$79,$07,$FF,$7C,$EF,$FC ; $CD5802
    db $0D,$F0,$01,$7F,$06,$CD,$03,$81,$4E,$F1,$00,$79,$30,$F7,$71,$2A ; $CD5812
    db $F7,$3A,$FF,$72,$37,$39,$FE,$B0,$9F,$91,$EE,$C0,$8E,$41,$10,$E0 ; $CD5822
    db $BA,$08,$01,$C0,$00,$02,$08,$03,$68,$02,$18,$03,$50,$EF,$82,$77 ; $CD5832
    db $40,$54,$A1,$AA,$51,$68,$03,$B6,$5F,$7E,$D0,$63,$03,$C6,$11,$B9 ; $CD5842
    db $F5,$45,$2A,$42,$11,$4A,$A4,$45,$80,$94,$2A,$98,$45,$8A,$00,$04 ; $CD5852
    db $68,$80,$51,$8C,$62,$00,$53,$19,$66,$41,$23,$AA,$32,$CD,$C0,$15 ; $CD5862
    db $82,$05,$44,$11,$28,$A2,$26,$40,$3F,$E7,$D2,$62,$55,$15,$44,$AA ; $CD5872
    db $08,$31,$52,$F7,$E7,$50,$23,$09,$D1,$D7,$04,$55,$82,$D3,$A7,$FE ; $CD5882
    db $0A,$BA,$DF,$45,$5D,$DB,$14,$47,$03,$BC,$01,$11,$07,$1F,$C0,$E0 ; $CD5892
    db $45,$01,$14,$20,$E8,$4D,$61,$10,$47,$40,$02,$A2,$D2,$6A,$15,$75 ; $CD58A2
    db $61,$0E,$57,$30,$3A,$11,$05,$00,$5F,$10,$45,$02,$A8,$04,$51,$30 ; $CD58B2
    db $0A,$A0,$B5,$8A,$20,$5D,$1A,$00,$49,$80,$25,$21,$F7,$0A,$DC,$03 ; $CD58C2
    db $5B,$8A,$55,$63,$80,$2A,$74,$5A,$06,$92,$51,$04,$88,$22,$28,$D1 ; $CD58D2
    db $07,$50,$AB,$55,$AA,$A2,$55,$75,$51,$0E,$83,$45,$45,$07,$61,$AB ; $CD58E2
    db $64,$87,$B7,$A1,$0A,$02,$54,$11,$02,$51,$22,$0C,$A2,$79,$B3,$B7 ; $CD58F2
    db $DC,$39,$BF,$00,$0D,$80,$31,$0F,$40,$2F,$80,$B5,$00,$23,$4A,$A0 ; $CD5902
    db $80,$8D,$07,$50,$17,$A0,$01,$10,$A0,$50,$0F,$45,$3A,$0A,$4E,$9B ; $CD5912
    db $82,$EB,$47,$95,$A8,$E8,$EF,$7A,$37,$A8,$1B,$54,$A4,$14,$2A,$DA ; $CD5922
    db $71,$05,$CE,$51,$D7,$56,$18,$54,$D5,$2A,$B2,$46,$15,$D9,$24,$9B ; $CD5932
    db $82,$70,$2A,$44,$11,$A2,$0A,$41,$15,$8A,$2A,$40,$A8,$A3,$EC,$57 ; $CD5942
    db $81,$3B,$54,$44,$31,$1B,$C0,$CB,$55,$D7,$D3,$FB,$70,$C7,$F8,$07 ; $CD5952
    db $78,$C7,$78,$E7,$78,$27,$38,$C7,$B8,$94,$A8,$F5,$80,$05,$C0,$E0 ; $CD5962
    db $03,$BD,$40,$BC,$42,$42,$03,$D2,$FF,$01,$E9,$F3,$4E,$01,$61,$FB ; $CD5972
    db $03,$80,$F3,$2E,$80,$1D,$40,$2C,$82,$D7,$07,$0D,$0E,$A0,$0D,$50 ; $CD5982
    db $04,$A2,$51,$A6,$22,$55,$11,$A6,$D7,$BB,$07,$90,$91,$A6,$18,$45 ; $CD5992
    db $F2,$0E,$01,$EE,$00,$DC,$00,$03,$CC,$11,$EA,$00,$C0,$11,$2C,$18 ; $CD59A2
    db $02,$5C,$22,$1F,$10,$66,$CE,$03,$00,$00,$03,$4C,$22,$E8,$11,$2F ; $CD59B2
    db $50,$10,$68,$8A,$FF,$F5,$41,$10,$13,$C3,$9D,$F1,$8F,$31,$BB,$74 ; $CD59C2
    db $06,$9F,$49,$C3,$08,$45,$DA,$09,$E3,$8A,$10,$4D,$FA,$02,$D8,$25 ; $CD59D2
    db $08,$82,$3C,$54,$53,$2A,$01,$8A,$30,$12,$FB,$0D,$0D,$00,$CA,$30 ; $CD59E2
    db $4D,$0B,$72,$80,$14,$49,$55,$8E,$62,$CD,$11,$EC,$22,$DC,$11,$EE ; $CD59F2
    db $22,$4D,$11,$66,$A2,$80,$26,$EC,$B7,$66,$90,$03,$80,$66,$C5,$7F ; $CD5A02
    db $F9,$22,$CA,$EE,$11,$FC,$0F,$F2,$0F,$FB,$0F,$FF,$1F,$DB,$43,$3B ; $CD5A12
    db $39,$04,$41,$00,$4E,$00,$50,$87,$01,$40,$24,$7C,$83,$31,$CF,$B8 ; $CD5A22
    db $FA,$30,$CF,$F1,$CF,$72,$CF,$79,$CF,$FA,$CF,$F5,$CF,$F9,$CF,$00 ; $CD5A32
    db $10,$06,$01,$E5,$3D,$C2,$5A,$A5,$BD,$C2,$DE,$A1,$BC,$43,$5E,$A1 ; $CD5A42
    db $9D,$E2,$5D,$A3,$3D,$00,$5A,$00,$87,$03,$5E,$00,$BC,$06,$03,$1D ; $CD5A52
    db $00,$5C,$44,$10,$BF,$00,$FF,$03,$23,$80,$7F,$9C,$0A,$03,$40,$AA ; $CD5A62
    db $6D,$F9,$E7,$05,$7C,$29,$F7,$0C,$41,$F3,$01,$1C,$C0,$03,$28,$F7 ; $CD5A72
    db $90,$F7,$EB,$5E,$5A,$04,$02,$01,$00,$08,$00,$09,$F0,$15,$EA,$06 ; $CD5A82
    db $F9,$D7,$01,$09,$04,$FB,$46,$F9,$20,$D9,$02,$FD,$0E,$01,$10,$01 ; $CD5A92
    db $6C,$83,$02,$26,$E0,$3F,$2E,$D1,$1B,$3E,$E4,$20,$02,$90,$FE,$FF ; $CD5AA2
    db $2E,$00,$1B,$EA,$F8,$3E,$02,$00,$44,$8B,$03,$7F,$80,$B2,$4D,$1F ; $CD5AB2
    db $E0,$00,$25,$5B,$A4,$0B,$C4,$33,$CC,$74,$3A,$00,$6F,$00,$71,$07 ; $CD5AC2
    db $08,$03,$08,$43,$08,$66,$33,$05,$10,$3F,$17,$5F,$A0,$AC,$3C,$53 ; $CD5AD2
    db $FE,$01,$FD,$02,$FC,$03,$7E,$81,$E3,$04,$22,$04,$53,$04,$A0,$04 ; $CD5AE2
    db $F2,$04,$F1,$04,$F0,$04,$72,$74,$04,$63,$09,$91,$FF,$01,$B8,$E2 ; $CD5AF2
    db $0C,$82,$7D,$C2,$3F,$27,$D2,$4A,$2D,$AE,$75,$00,$B0,$23,$C0,$00 ; $CD5B02
    db $01,$AC,$00,$D2,$00,$76,$FF,$03,$8E,$1F,$FF,$20,$70,$05,$27,$FF ; $CD5B12
    db $41,$7F,$BE,$06,$80,$9D,$41,$00,$E7,$FC,$BF,$38,$FC,$3F,$03,$43 ; $CD5B22
    db $0E,$FC,$BB,$FC,$6F,$E2,$E8,$AD,$BC,$F0,$03,$01,$2F,$E1,$BE,$B8 ; $CD5B32
    db $E3,$D0,$6F,$F1,$B6,$C8,$AE,$F1,$7E,$E0,$0E,$E1,$2E,$C0,$10,$02 ; $CD5B42
    db $28,$9A,$02,$30,$8D,$03,$18,$9C,$C7,$03,$41,$48,$F3,$01,$54,$21 ; $CD5B52
    db $09,$AA,$41,$54,$01,$4F,$F9,$CC,$03,$FB,$00,$03,$A9,$54,$B0,$0A ; $CD5B62
    db $B0,$45,$80,$03,$B2,$08,$A0,$07,$55,$82,$08,$01,$8A,$75,$E6,$9A ; $CD5B72
    db $06,$03,$02,$03,$12,$8A,$32,$C5,$92,$A5,$80,$2A,$01,$03,$40,$15 ; $CD5B82
    db $8A,$20,$FE,$02,$BA,$BB,$80,$43,$47,$8A,$55,$10,$55,$E7,$07,$D1 ; $CD5B92
    db $E6,$07,$DF,$04,$05,$04,$55,$74,$55,$88,$A2,$09,$15,$40,$22,$88 ; $CD5BA2
    db $FF,$C5,$8E,$3B,$08,$F8,$9F,$22,$55,$0C,$E9,$85,$08,$0D,$50,$0F ; $CD5BB2
    db $A0,$80,$E7,$5C,$01,$A6,$00,$3A,$04,$A2,$D0,$F7,$A6,$02,$54,$50 ; $CD5BC2
    db $38,$A6,$23,$03,$BA,$0C,$45,$F4,$01,$68,$0C,$01,$5C,$28,$7A,$82 ; $CD5BD2
    db $50,$05,$22,$08,$C0,$15,$49,$80,$44,$3A,$A8,$55,$14,$EA,$28,$C6 ; $CD5BE2
    db $BF,$A2,$43,$1B,$2A,$2A,$14,$85,$3A,$1C,$41,$C0,$A3,$60,$11,$21 ; $CD5BF2
    db $08,$3A,$A1,$54,$AB,$9D,$2A,$87,$C2,$14,$04,$A9,$00,$32,$06,$A8 ; $CD5C02
    db $C2,$34,$00,$2B,$58,$C7,$41,$01,$18,$22,$18,$05,$78,$82,$38,$14 ; $CD5C12
    db $00,$20,$45,$08,$A2,$18,$A6,$80,$4D,$E9,$97,$38,$2D,$C0,$0D,$18 ; $CD5C22
    db $E9,$FF,$00,$29,$54,$10,$8A,$60,$15,$62,$8A,$4B,$41,$B9,$E3,$7D ; $CD5C32
    db $8A,$52,$1F,$35,$97,$4B,$E3,$08,$45,$86,$35,$40,$02,$88,$1D,$40 ; $CD5C42
    db $9A,$A0,$19,$44,$8A,$80,$2B,$07,$52,$28,$15,$8A,$32,$54,$97,$02 ; $CD5C52
    db $4D,$1D,$01,$AA,$32,$37,$1F,$5C,$82,$15,$15,$05,$C4,$20,$64,$08 ; $CD5C62
    db $7D,$86,$60,$04,$65,$80,$26,$11,$A0,$4A,$D0,$2A,$8A,$11,$13,$A4 ; $CD5C72
    db $00,$28,$1B,$A0,$0A,$31,$C0,$2E,$47,$67,$19,$18,$67,$98,$03,$E7 ; $CD5C82
    db $CC,$01,$07,$6F,$6E,$10,$03,$A1,$66,$22,$C8,$03,$6E,$01,$D0,$4A ; $CD5C92
    db $03,$40,$FB,$B8,$42,$B8,$45,$B0,$42,$0F,$B0,$41,$B4,$4A,$01,$9B ; $CD5CA2
    db $FB                                                             ; $CD5CB2
L_CD5CB3:
    STA [$92]               ; $CD5CB3  87 92        mx
    TSB $0C91               ; $CD5CB5  0C 91 0C     mx
    STA ($00)               ; $CD5CB8  92 00        mx
    STA ($15),Y             ; $CD5CBA  91 15        mx
    PHA                     ; $CD5CBC  48           mx
    ROL                     ; $CD5CBD  2A           mx
    BCC L_CD5D35            ; $CD5CBE  90 75        mx
    RTS                     ; $CD5CC0  60           mx
    db $90,$65,$10,$0A,$80,$03,$1F,$40,$0E,$A0,$01,$A6,$00,$7B,$25,$9A ; $CD5CC1
    db $EA,$15,$45,$8A,$3A,$77,$45,$27,$27,$5F,$40,$4E,$F7,$1B,$00,$80 ; $CD5CD1
    db $0A,$54,$01,$A8,$02,$44,$11,$31                                 ; $CD5CE1
L_CD5CE9:
    ADC ($08,X)             ; $CD5CE9  61 08        mx
    SBC [$A8],Y             ; $CD5CEB  F7 A8        mx
    ORA $88,X               ; $CD5CED  15 88        mx
    TAX                     ; $CD5CEF  AA           mx
    BCS L_CD5D37            ; $CD5CF0  B0 45        mx
    TAY                     ; $CD5CF2  A8           mx
    ADC $A228C2,X           ; $CD5CF3  7F C2 28 A2  mx
    SBC $03BF91             ; $CD5CF7  EF 91 BF 03  mx
    LDY $BB80               ; $CD5CFB  AC 80 BB     mx
    AND ($05,X)             ; $CD5CFE  21 05        mx
    ORA $5807A0             ; $CD5D00  0F A0 07 58  mx
    CMP [$D5]               ; $CD5D04  C7 D5        mx
    PHP                     ; $CD5D06  08           mx
    LDY #$55                ; $CD5D07  A0 55        mx
    DEX                     ; $CD5D09  CA           mx
    TAX                     ; $CD5D0A  AA           mx
    EOR $401DE3,X           ; $CD5D0B  5F E3 1D 40  mx
    BRK #$AF                ; $CD5D0F  00 AF        mx
    ADC $67,X               ; $CD5D11  75 67        mx
    MVN $CB,$D7             ; $CD5D13  54 D7 CB     mx
    AND #$17                ; $CD5D16  29 17        mx
    EOR ($8E)               ; $CD5D18  52 8E        mx
    LDY $2D                 ; $CD5D1A  A4 2D        mx
    ORA #$BA                ; $CD5D1C  09 BA        mx
    JSL $0D14F5             ; $CD5D1E  22 F5 14 0D  mx
    TAY                     ; $CD5D22  A8           mx
    STA $28,S               ; $CD5D23  83 28        mx
    BRK #$D4                ; $CD5D25  00 D4        mx
    BRK #$A9                ; $CD5D27  00 A9        mx
    BPL L_CD5D6E            ; $CD5D29  10 43        mx
    BVC L_CD5CB3            ; $CD5D2B  50 86        mx
    RTI                     ; $CD5D2D  40           mx
    db $1D,$02,$E8,$02,$51,$DD,$49                                     ; $CD5D2E
L_CD5D35:
    JML $7D3A17             ; $CD5D35  5C 17 3A 7D  mx
    db $55,$9A                                                         ; $CD5D39
    TXA                     ; $CD5D3B  8A           mx
    ADC $15,X               ; $CD5D3C  75 15        mx
    NOP                     ; $CD5D3E  EA           mx
    LSR                     ; $CD5D3F  4A           mx
    CMP [$90],Y             ; $CD5D40  D7 90        mx
    LDA [$20],Y             ; $CD5D42  B7 20        mx
    STA ($2A)               ; $CD5D44  92 2A        mx
    CMP $7A00               ; $CD5D46  CD 00 7A     mx
    AND $E5,S               ; $CD5D49  23 E5        mx
    PHP                     ; $CD5D4B  08           mx
    RTS                     ; $CD5D4C  60           mx
    db $08,$C6,$7C,$3C,$BF,$9E,$5E,$4E,$8F,$8F,$7F,$5F,$9F,$8F,$FF,$2F ; $CD5D4D
    db $FF,$1F,$D6,$06,$D5,$40,$01,$A0,$30,$5B,$22,$80,$60,$57,$DF,$E0 ; $CD5D5D
    db $18                                                             ; $CD5D6D
L_CD5D6E:
    SBC [$DF],Y             ; $CD5D6E  F7 DF        mx
    DEX                     ; $CD5D70  CA           mx
    CMP $FF6F7C             ; $CD5D71  CF 7C 6F FF  mx
    ADC $3E6FF4             ; $CD5D75  6F F4 6F 3E  mx
    ORA $FE87E4             ; $CD5D79  0F E4 87 FE  mx
    STA [$B2],Y             ; $CD5D7D  97 B2        mx
    LDA $017F,X             ; $CD5D7F  BD 7F 01     mx
    TSC                     ; $CD5D82  3B           mx
    JSR L_CDE018            ; $CD5D83  20 18 E0     mx
    LDA #$1F                ; $CD5D86  A9 1F        mx
    CPY #$1F                ; $CD5D88  C0 1F        mx
    BRA L_CD5DE9            ; $CD5D8A  80 5D        mx
    db $75,$A2,$BD,$F7,$F0,$FF,$7B,$86,$FF,$80,$C0,$12,$70,$0E,$0C,$10 ; $CD5D8C
    db $3E,$3B,$00,$3F,$D7,$ED,$59,$53,$95,$D4,$2E,$19,$82,$1C,$C2,$7E ; $CD5D9C
    db $0B,$FF,$07,$7F,$87,$7F,$CF,$7F,$17,$3F,$38,$77,$7C,$FF,$FB,$01 ; $CD5DAC
    db $EB,$45,$F8,$8E,$03,$FF,$8B,$59,$39,$FF,$7D,$FF,$7E,$3E,$3E,$FF ; $CD5DBC
    db $BF,$9F,$9F,$04,$14,$22,$70,$86,$B5,$20,$F0,$87,$60,$00,$81,$FE ; $CD5DCC
    db $75,$22,$40,$35,$12,$FF,$F8,$FF,$58,$7F,$0F,$97,$3F             ; $CD5DDC
L_CD5DE9:
    CMP $98029F,X           ; $CD5DE9  DF 9F 02 98  mx
    TCD                     ; $CD5DED  5B           mx
    SBC ($68),Y             ; $CD5DEE  F1 68        mx
    JSR L_CD3FD5            ; $CD5DF0  20 D5 3F     mx
    RTS                     ; $CD5DF3  60           mx
    db $80,$38,$80,$2F,$F0,$00,$E9,$83,$6D,$08,$7E,$03,$1F,$F9,$77,$00 ; $CD5DF4
    db $93,$1A,$0B,$00,$52,$AD,$A4,$97,$5B,$C1,$3E,$12,$ED,$01,$FE,$04 ; $CD5E04
    db $FB,$00,$FE,$11,$FC,$02,$10,$04,$20,$01,$C0,$12,$4A,$7A,$04,$3D ; $CD5E14
    db $BE,$00,$00,$AF,$40,$5F,$A0,$0F,$C0,$BF,$E0,$05,$26,$18,$AD,$B8 ; $CD5E24
    db $E4,$52,$5C,$A0,$B0,$00,$48,$07,$37,$08,$97,$08,$0F,$10,$C7,$20 ; $CD5E34
    db $0C,$DD,$40,$57,$54,$00,$B4,$F9,$06,$FA,$05,$59,$26,$F8,$3B,$07 ; $CD5E44
    db $F0,$D1,$99,$A0,$1F,$DF,$71,$20,$59,$20,$3A,$40,$99,$40,$B8,$40 ; $CD5E54
    db $71,$80,$FC,$01,$DC,$20,$FB,$EE,$00,$D5,$3D,$02,$F8,$04,$EF,$10 ; $CD5E64
    db $30,$4F,$30,$51,$83,$1C,$9A,$18,$20,$9E,$20,$15,$5B,$20,$5C,$2D ; $CD5E74
    db $7A,$40                                                         ; $CD5E84
L_CD5E86:
    STY $0741               ; $CD5E86  8C 41 07     Mx
    SED                     ; $CD5E89  F8           Mx
    EOR ($B8,X)             ; $CD5E8A  41 B8        Mx
    STA [$7A]               ; $CD5E8C  87 7A        Mx
    CMP $3A                 ; $CD5E8E  C5 3A        Mx
    STZ $F661,X             ; $CD5E90  9E 61 F6     Mx
    PHP                     ; $CD5E93  08           Mx
    SBC ($91,S),Y           ; $CD5E94  F3 91        Mx
    AND $04                 ; $CD5E96  25 04        Mx
    ORA ($46,X)             ; $CD5E98  01 46        Mx
    LDA $811676             ; $CD5E9A  AF 76 16 81  Mx
    RTI                     ; $CD5E9E  40           Mx
    db $81,$18,$82,$71,$82,$7C,$82,$74,$02,$0E,$91,$5E,$A0,$3E,$01,$AC ; $CD5E9F
    db $52,$FC,$21,$4C,$32,$58,$A1,$88,$F0,$60,$0A,$08,$13,$D8,$22,$08 ; $CD5EAF
    db $21,$18,$42,$88,$41,$1E,$40,$0E,$01,$01,$97,$F7,$54,$CA,$01,$9F ; $CD5EBF
    db $54,$56,$CB,$0A,$D0,$5F,$90,$45,$90,$2A,$75,$40,$20,$FF,$01,$50 ; $CD5ECF
    db $04,$2A,$97,$76,$40,$FD,$EE,$1D,$1B,$58,$20,$17,$8D,$22,$80,$51 ; $CD5EDF
    db $15,$74,$28,$83,$87,$05,$88,$22,$51,$04,$1A,$1F,$14,$41,$07,$0E ; $CD5EEF
    db $46,$50,$FB,$5B,$51,$A5,$BB,$14,$C8,$07,$B6,$3F,$3F,$9B,$8D,$1F ; $CD5EFF
    db $A8,$02,$03,$0D,$5E,$23,$1F,$9B,$CE,$1F,$A8,$45,$03,$2E,$55,$88 ; $CD5F0F
    db $F9,$7F,$02,$A8,$BA,$1B,$51,$5A,$00,$51,$3F,$81,$2A,$55,$D2,$FB ; $CD5F1F
    db $51,$EA,$AA,$37,$55,$A0,$3F,$80,$54,$54,$09,$98,$C0,$AD,$45,$28 ; $CD5F2F
    db $92,$10,$05,$C6,$59,$A4,$51,$11,$74,$40,$F7,$9F,$C1,$FB,$4D,$60 ; $CD5F3F
    db $9A,$00,$15,$DC,$01,$7F,$55,$1C,$41,$0F,$A0,$10,$91,$1F,$82,$F7 ; $CD5F4F
    db $DB,$11,$30,$BF,$96,$00,$5F,$10,$2B,$AA,$28,$F5,$DB,$5A,$99,$75 ; $CD5F5F
    db $05,$4E,$57,$55,$A0,$A1,$0C,$2A,$3A,$A7,$7F,$22,$5E,$A3,$73,$0B ; $CD5F6F
    db $98,$BF,$29,$C4,$09,$20,$1D,$2D,$AA,$FA,$F3,$E2,$77,$D5,$9F,$15 ; $CD5F7F
    db $07,$50,$07,$C1,$51,$80,$15,$8D,$5F,$0F,$40,$0B,$29,$1F,$EA,$19 ; $CD5F8F
    db $DB,$2A,$F9,$10,$C0,$0B,$24,$50,$C3,$28,$36,$12,$45,$17,$1B,$00 ; $CD5F9F
    db $26,$88,$99,$24,$EA,$00,$85,$2A,$1C,$02,$D4,$10,$EE,$5C,$15,$3A ; $CD5FAF
    db $A2,$52,$05,$41                                                 ; $CD5FBF
L_CD5FC3:
    INC                     ; $CD5FC3  1A           mx
    ASL                     ; $CD5FC4  0A           mx
    SBC $41,X               ; $CD5FC5  F5 41        mx
    TRB $C0                 ; $CD5FC7  14 C0        mx
    ROL                     ; $CD5FC9  2A           mx
    STA $BA                 ; $CD5FCA  85 BA        mx
    PHY                     ; $CD5FCC  5A           mx
    WDM #$2D                ; $CD5FCD  42 2D        mx
    CLC                     ; $CD5FCF  18           mx
    ORA [$AF]               ; $CD5FD0  07 AF        mx
    BRK #$81                ; $CD5FD2  00 81        mx
    ROR                     ; $CD5FD4  6A           mx
    BRA L_CD6027            ; $CD5FD5  80 50        mx
    db $69,$2B,$C3,$D7,$AA,$A3,$54,$A8,$FA,$07,$51,$27,$18,$EF,$10,$45 ; $CD5FD7
    db $C3,$75,$5C,$DF,$D0,$62,$C0,$07,$22,$48,$22,$38,$42,$4A,$EF,$42 ; $CD5FE7
    db $E5,$78,$82,$58,$82,$F0,$02,$B4,$49,$AC,$42,$AC,$51,$F4,$0A,$B0 ; $CD5FF7
    db $49,$B2,$4C,$B2,$4D,$97,$03,$00,$0E,$92,$10,$81,$00,$8A,$40,$91 ; $CD6007
    db $06,$90,$00,$91,$00,$76,$03,$16,$E4,$C2,$24,$5F,$03,$76,$05,$57 ; $CD6017
L_CD6027:
    ADC [$51],Y             ; $CD6027  77 51        mx
    ORA #$DB                ; $CD6029  09 DB        mx
    EOR $BA,X               ; $CD602B  55 BA        mx
    ORA $85,S               ; $CD602D  03 85        mx
    ADC $0A                 ; $CD602F  65 0A        mx
    WAI                     ; $CD6031  CB           mx
    SEC                     ; $CD6032  38           mx
    ORA $78                 ; $CD6033  05 78        mx
    COP #$78                ; $CD6035  02 78        mx
    ORA $F8                 ; $CD6037  05 F8        mx
    COP #$70                ; $CD6039  02 70        mx
    ORA $04                 ; $CD603B  05 04        mx
    BRA L_CD603F            ; $CD603D  80 00        mx
L_CD603F:
    ASL                     ; $CD603F  0A           mx
    BVS L_CD604F            ; $CD6040  70 0D        mx
    CPX #$0A                ; $CD6042  E0 0A        mx
    LDY #$0D                ; $CD6044  A0 0D        mx
    RTS                     ; $CD6046  60           mx
    db $CD,$03,$28,$86,$6A,$11,$02,$C1                                 ; $CD6047
L_CD604F:
    ORA $1F,X               ; $CD604F  15 1F        mx
    BRA L_CD6062            ; $CD6051  80 0F        mx
    db $50,$18,$D1,$07,$4F,$10,$03,$B0,$4A,$20,$0A,$20,$40,$BD,$1C     ; $CD6053
L_CD6062:
    STA $703F               ; $CD6062  8D 3F 70     mx
    RTI                     ; $CD6065  40           mx
    db $20,$8F,$00,$35,$5F,$45,$DE,$12,$F5,$05,$8A,$EC,$AC,$CA,$00,$0A ; $CD6066
    db $55,$85,$69,$A0,$20,$82,$20,$AF,$63,$FF,$9C,$A3,$43,$02,$B9,$74 ; $CD6076
    db $14,$7E,$46,$87,$87,$7F,$17,$EF,$87,$73,$13,$E7,$8B,$77,$13,$69 ; $CD6086
    db $09,$01,$88,$78,$0E,$C2,$00,$30,$0C,$30,$03,$80,$60,$70,$7F,$7F ; $CD6096
    db $40,$FF,$01,$7E,$3F,$01,$3D,$FF,$BC,$FC,$BC,$FF,$DE,$6F,$F5,$97 ; $CD60A6
    db $87,$DF,$01,$03,$05,$07,$F8,$97,$30,$C6,$13,$FC,$5B,$FE,$BB,$F8 ; $CD60B6
    db $79,$FF,$FD,$FC,$FC,$FF,$FC,$00,$20,$CC,$2D,$9F,$75,$40,$95,$BD ; $CD60C6
    db $60,$E1,$8C,$C3,$BF,$B8,$F7,$C1,$B9,$C7,$48,$B7,$38,$C7,$3C,$C3 ; $CD60D6
    db $78,$C1,$AE,$51,$3C,$00,$2E,$AE,$21,$40,$AB,$25,$38,$B9,$6B,$2E ; $CD60E6
    db $AC,$00,$31,$4B,$BF,$1F,$9F,$6F,$DF,$FF,$EF,$E5,$E4,$B5,$F1,$BF ; $CD60F6
    db $F8,$3F,$FF,$30,$D3,$00,$6C,$1A,$E8,$04,$07,$EB,$70,$20,$1B,$CF ; $CD6106
    db $FF,$AF,$03,$FF,$5F,$FF,$BF,$FF,$7C,$BD,$43,$72,$F4,$1A,$2B,$77 ; $CD6116
    db $C9,$61,$5A,$44,$DE,$B8,$F4,$CF,$FB,$F3,$FA,$F8,$FB,$FE,$FF,$FE ; $CD6126
    db $7F,$7E,$5F,$1E,$DB,$C2,$20,$A7,$B7,$05,$38,$FF,$C2,$24,$00,$07 ; $CD6136
    db $E6,$FF,$EC,$FF,$7B,$7B,$FF,$D2,$FA,$7F,$72,$FC,$C9,$D6,$F6,$5E ; $CD6146
    db $B2,$AB,$6E,$65,$38,$84,$F9,$0B,$E4,$24,$0B,$79,$27,$6D,$9F,$E4 ; $CD6156
    db $9F,$65,$9C,$ED,$A1,$B1,$10,$03,$0E,$D0,$04,$80,$18,$17,$3C,$20 ; $CD6166
    db $02,$3E,$20,$12,$00,$97,$68,$17,$E8,$0F,$F0,$0D,$F2,$27,$F8,$67 ; $CD6176
    db $18,$13,$6C,$C9,$36,$15,$80,$15,$00,$0E,$A7,$3E,$2E,$9A,$87,$7C ; $CD6186
    db $00,$83,$00,$01,$C0,$E1,$1E,$40,$BC,$82,$7D,$A5,$5A,$C2,$11,$12 ; $CD6196
    db $C5,$FE,$13,$49,$B7,$60,$80,$43,$56,$00,$20,$01,$AC,$02,$28,$02 ; $CD61A6
    db $E0,$0C,$3A,$48,$00,$41,$DD,$78,$8F,$78,$0A,$F5,$85,$41,$14,$EB ; $CD61B6
    db $08,$C3,$C7,$39,$CF,$06,$41,$02,$81,$01,$82,$00,$02,$01,$A8,$BD ; $CD61C6
    db $1D,$30,$08,$00,$02,$3B,$E6,$80,$7F,$E7,$80,$BF,$40,$0A,$C5,$6C ; $CD61D6
    db $93,$1B,$8D,$52,$AF,$F2,$04,$7B,$04,$6B,$04,$A7,$08,$32,$08,$44 ; $CD61E6
    db $08,$62,$C0,$E9,$1A,$E5,$2A,$54,$C6,$1D,$FE,$04,$23,$1D,$3E,$C0 ; $CD61F6
    db $9E,$5C,$1F,$98,$A8,$03,$01,$3D,$00,$B8,$01,$5D,$A9,$3D,$B8,$C4 ; $CD6206
    db $ED,$10,$2C,$10,$30,$45,$6C,$92,$5D,$20,$BC,$02,$3D,$40,$8A,$20 ; $CD6216
    db $F7,$A3,$20,$B7,$25,$11,$86,$88,$45,$15,$05,$BA,$8A,$22,$A3,$91 ; $CD6226
    db $44,$A2,$EB,$08,$05,$10,$4A,$A0,$55,$00,$E2,$08,$14,$01,$22,$88 ; $CD6236
    db $11,$2A,$22,$55,$C5,$2A,$0A,$15,$15,$AA,$A2,$15,$74,$8A,$02,$55 ; $CD6246
    db $D1,$04,$C2,$D6,$84,$EC,$A6,$00,$40,$14,$40,$43,$20,$8A,$51,$60 ; $CD6256
    db $2A,$17,$6D,$82,$A9,$50,$4B,$41,$D7,$C7,$55,$5B,$B6,$D5,$4C,$1C ; $CD6266
    db $08,$A2,$FE,$7B,$82,$11,$45,$BD,$57,$11,$09,$54,$01,$B8,$41,$23 ; $CD6276
    db $42,$00,$15,$05,$A2,$12,$45,$CC,$12,$70,$45,$85,$1D,$43,$D0,$79 ; $CD6286
    db $A8,$08,$51,$28,$88,$63,$57,$7A,$B5,$4E,$2E,$BF,$01,$F4,$DF,$40 ; $CD6296
    db $15,$1F,$02,$AA,$05,$03,$42,$3F,$40,$61,$07,$10,$55,$28,$C7,$17 ; $CD62A6
    db $A0,$5A,$70,$A2,$E1,$58,$AD,$A0,$F4,$04,$02,$5B,$02,$A8,$12,$40 ; $CD62B6
    db $51,$1D,$70,$31,$68,$EF,$8C,$4F,$63,$71,$1F,$F4,$03,$71,$7B,$83 ; $CD62C6
    db $40,$C1,$37,$54,$55,$8A,$61,$1F,$00,$00,$E5,$06,$1F,$FF,$C3,$02 ; $CD62D6
    db $50,$82,$A4,$4C,$53,$00,$A2,$52,$50,$A3,$A8,$00,$1D,$EF,$50,$05 ; $CD62E6
    db $A8,$09,$52,$00,$39,$A4,$0D,$07,$D5,$07,$C0,$00,$8F,$04,$51,$00 ; $CD62F6
    db $2A,$1D,$C4,$11,$42,$40,$80,$1B,$80,$CF,$0E,$10,$F6,$09,$04,$A8 ; $CD6306
    db $57,$04,$6A,$83,$60,$54,$1F,$26,$41,$21,$0E,$01,$06,$F0,$5F,$00 ; $CD6316
    db $9E,$01,$5F,$F6,$01,$1C,$3E,$FE,$01,$6E,$00,$44,$37,$88,$4F,$30 ; $CD6326
    db $BF,$40,$7F,$73,$80,$0F,$00,$51,$10,$A7,$58,$F7,$08,$C7,$38,$E0 ; $CD6336
    db $01,$B8,$07,$F8,$C0,$01,$E8,$02,$A0,$02,$F0,$EB,$72,$F9,$01,$40 ; $CD6346
    db $AC,$85,$08,$B0,$4C,$B1,$4E,$33,$01,$B0,$01,$4F,$81,$05,$4F,$03 ; $CD6356
    db $90,$00,$44,$01,$01,$C0,$03,$11,$44,$0A,$A0,$05,$10,$50,$0A,$A0 ; $CD6366
    db $B0,$76,$95,$14,$75,$11,$DC,$5F,$05,$03,$07,$D5,$2A,$2A,$55,$15 ; $CD6376
    db $01,$03,$71,$04,$A1,$0A,$74,$D4,$83,$B4,$14,$41,$B8,$02,$44,$A8 ; $CD6386
    db $03,$30,$52,$88,$9F,$54,$8A,$BA,$60,$45,$A7,$A8,$45,$5C,$A2,$C3 ; $CD6396
    db $36,$40,$95,$82,$AF,$77,$EE,$03,$F5,$F5,$F7,$40,$F9,$03,$03,$54 ; $CD63A6
    db $72,$11,$0E,$88,$35,$54,$2A,$8A,$01,$45,$12,$AA,$14,$45,$0A,$A2 ; $CD63B6
    db $02,$A8,$61,$16,$00,$C5,$0D,$54,$30,$7B,$DF,$80,$1F,$57,$15,$CB ; $CD63C6
    db $89,$FD,$64,$33,$4B,$42,$F0,$6A,$AF,$B4,$83,$DC,$A0,$08,$30,$44 ; $CD63D6
    db $01,$1F,$B0,$0C,$A0,$1A,$00,$75,$00,$1F,$FE,$DE,$FF,$EF,$E0,$01 ; $CD63E6
    db $F7,$BF,$77,$E9,$46,$0F,$3B,$FF,$BD,$01,$04,$B3,$BE,$A5,$46,$7E ; $CD63F6
    db $71,$7E,$F4,$07,$F6,$13,$FB,$FD,$FF,$FE,$FC,$E6,$FE,$C9,$FE,$D9 ; $CD6406
    db $81,$EF,$44,$77,$08,$E0,$00,$AD,$05,$65,$12,$FF,$41,$C7,$3E,$C4 ; $CD6416
    db $7A,$59,$A7,$0A,$97,$34,$CB,$1B,$65,$8C,$77,$6C,$93,$C0,$A5,$9D ; $CD6426
    db $18,$DE,$BA,$5B,$14,$1D,$A8,$00,$52,$09,$3F,$FF,$2A,$61,$7F,$1D ; $CD6436
    db $BF,$7F,$DF,$E8,$46,$F7,$7D,$F9,$FB,$02,$60,$F9,$00,$02,$5C,$00 ; $CD6446
    db $6A,$FF,$EB,$CF,$C7,$FF,$D7,$CF,$CF,$EF,$E7,$FD,$F9,$FD,$FC,$FF ; $CD6456
    db $FF,$77,$35,$A3,$56,$02,$36,$5E,$00,$0B,$FB,$F8,$FF,$FE,$01,$01 ; $CD6466
    db $7F,$7E,$6F,$0E,$04,$E0,$05,$9E,$90,$00,$FF,$7F,$F4,$06,$01,$A7 ; $CD6476
    db $F5,$C0,$02,$01,$E7,$88,$FF,$A7,$FF,$62,$9F,$01,$FE,$9F,$01,$05 ; $CD6486
    db $FB,$98,$10,$07,$C5,$9E,$20,$82,$01,$04,$20,$27,$E3,$F8,$41,$F8 ; $CD6496
    db $D7,$F8,$E1,$F8,$E9,$F2,$D6,$C9,$48,$17,$70,$4F,$03,$D2,$F9,$04 ; $CD64A6
    db $19,$01,$06,$01,$03,$20,$73,$06,$A0,$08,$80,$30,$BD,$5F,$E0,$1F ; $CD64B6
    db $CB,$3F,$41,$BE,$02,$FD,$0F,$FA,$CB,$35,$56,$8B,$A0,$00,$E0,$EB ; $CD64C6
    db $D5,$1B,$1D,$A0,$E9,$A3,$60,$04,$71,$D0,$AF,$21,$1F,$DD,$3E,$4C ; $CD64D6
    db $BC,$D7,$7C,$9F,$FA,$3B,$F5,$BF,$EA,$CE,$B8,$C0,$A9,$BB,$03,$40 ; $CD64E6
    db $1E,$F3,$DB,$C0,$0B,$60,$1F,$C7,$30,$86,$D7,$A4,$EC,$53,$F3,$AF ; $CD64F6
    db $3D,$13,$FF,$44,$FF,$AC,$1D,$02,$08,$40,$08,$43,$00,$8C,$8B,$27 ; $CD6506
    db $29,$8E,$00,$41,$21,$18,$EF,$58,$C7,$38,$AE,$F0,$3E,$F0,$F5,$6A ; $CD6516
    db $98,$E7,$8A,$75,$C6,$40,$95,$00,$C2,$05,$02,$03,$04,$23,$81,$04 ; $CD6526
    db $77,$6A,$91,$C5,$EF,$BB,$74,$3C,$80,$2A,$3A,$90,$45,$6B,$83,$D8 ; $CD6536
    db $BB,$EF,$4A,$4F,$5B,$43,$19,$20,$A5,$D3,$10,$D3,$C4,$14,$63,$03 ; $CD6546
    db $19,$80,$A2,$B4,$76,$42,$17,$45,$28,$03,$0B,$00,$A2,$0C,$51,$47 ; $CD6556
    db $29,$48,$07,$AA,$10,$45,$F9,$02,$9F,$8F,$A7,$EE,$10,$6B,$DF,$00 ; $CD6566
    db $A5,$A3,$01,$D2,$63,$11,$FF,$01,$FA,$7F,$02,$03,$25,$77,$56,$70 ; $CD6576
    db $54,$AF,$AA,$5B,$55,$1F,$AB,$4F,$47,$BF,$8F,$00,$8A,$3B,$8D,$DE ; $CD6586
    db $7B,$B0,$FF,$44,$30,$01,$88,$00,$50,$27,$09,$BF,$27,$D8,$59,$7F ; $CD6596
    db $FF,$E3,$00,$FB,$9D,$03,$63,$77,$18,$AF,$E2,$F8,$01,$E4,$DF,$7F ; $CD65A6
    db $EB,$A2,$D9,$DF,$23,$61,$1F,$DF,$7F,$FF,$04,$A3,$FB,$42,$DF,$37 ; $CD65B6
    db $4E,$00,$81,$62,$FE,$FF,$3E,$F1,$04,$7E,$11,$8B,$71,$35,$EF,$CC ; $CD65C6
    db $F7,$B4,$FB,$9E,$C1,$F9,$DE,$7C,$D3,$FE,$05,$FE,$8D,$92,$19,$7C ; $CD65D6
    db $DC,$E1,$BB,$08,$00,$70,$01,$FE,$4D,$B2,$47,$F8,$03,$FC,$4C,$B3 ; $CD65E6
    db $8F,$70,$C5,$3A,$A8,$57,$01,$D7,$ED,$07,$74,$99,$4C,$00,$74,$0F ; $CD65F6
    db $61,$89,$20,$79,$86,$7E,$70,$81,$FC,$07,$FC,$03,$F9,$04,$F4,$01 ; $CD6606
    db $D6,$01,$DD,$C0,$0F,$00,$7E,$00,$F8,$00,$77,$FC,$F5,$22,$01,$CA ; $CD6616
    db $EC,$02,$B6,$08,$1F,$F0,$1F,$E8,$2F,$90,$97,$28,$7F,$80,$97,$48 ; $CD6626
    db $4F,$10,$3F,$48,$02,$96,$40,$0A,$40,$E3,$12,$10,$62,$20,$82,$A0 ; $CD6636
    db $0A,$80,$32,$F1,$4E,$B2,$4D,$B6,$4D,$F1,$29,$E3,$61,$4F,$0B,$01 ; $CD6646
    db $90,$02,$C5,$01,$01,$1C,$01,$00,$09,$17,$14,$01,$6A,$0C,$80,$D4 ; $CD6656
    db $00,$09,$80,$F7,$00,$E8,$00,$F4,$00,$7A,$0B,$2A,$5C,$2A,$7B,$15 ; $CD6666
    db $95,$2A,$6B,$14,$D4,$09,$CB,$14,$E5,$0A,$6A,$05,$4C,$51,$A2,$81 ; $CD6676
    db $0C,$8E,$00,$F7,$DC,$0E,$03,$B4,$00,$EB,$E4,$1F,$AE,$51,$B8,$7E ; $CD6686
    db $51,$2A,$6A,$91,$C5,$18,$E8,$15,$57,$28,$2A,$D4,$04,$6D,$23,$40 ; $CD6696
    db $15,$7B,$DF,$02,$11,$A9,$5F,$3B,$55,$09,$04,$A9,$04,$51,$02,$A8 ; $CD66A6
    db $53,$03,$54,$C5,$F1,$10,$FF,$1F,$9D,$20,$03,$15,$55,$0A,$AA,$41 ; $CD66B6
    db $EC,$A3,$15,$EC,$BF,$44,$CF,$03,$2A,$08,$D7,$BF,$0C,$7C,$5C,$BF ; $CD66C6
    db $9E,$5F,$4F,$A7,$A7,$5F,$57,$A7,$AB,$78,$0B,$45,$A9,$A3,$DF,$00 ; $CD66D6
    db $A0,$18,$83,$03,$00,$50,$06,$80,$43,$FE,$E5,$FE,$E3,$FE,$04,$7F ; $CD66E6
    db $3C,$3E,$FF,$BE,$63,$A5,$3F,$F7,$89,$FF,$1C,$5B,$7B,$20,$00,$62 ; $CD66F6
    db $9D,$33,$B8,$F5,$1C,$AA,$55,$70,$0F,$A8,$77,$D8,$67,$C1,$BC,$A4 ; $CD6706
    db $D1,$00,$20,$C2,$03,$82,$B0,$40,$08,$BA,$A9,$02,$EF,$C6,$C3,$D3 ; $CD6716
    db $ED,$FD,$D2,$DF,$77,$03,$E7,$B7,$33,$BF,$9C,$02,$C3,$01,$39,$08 ; $CD6726
    db $00,$48,$98,$6A,$1C,$BF,$3F,$03,$BF,$9F,$FF,$E7,$FE,$F8,$B7,$DD ; $CD6736
    db $23,$00,$D5,$FD,$40,$69,$DB,$54,$69,$EF,$E0,$B4,$80,$DD,$DC,$1C ; $CD6746
    db $DD,$C1,$EF,$F0,$10,$F3,$01,$3F,$23,$B9,$68,$3E,$00,$1F,$07,$5F ; $CD6756
    db $DF,$FF,$07,$20,$DF,$00,$FB,$82,$FF,$A1,$54,$FF,$90,$DB,$9D,$9C ; $CD6766
    db $3F,$64,$04,$56,$1E,$A5,$DB,$62,$45,$3F,$FA,$CB,$35,$EE,$FC,$FA ; $CD6776
    db $F4,$FF,$F2,$BE,$89,$B8,$27,$F8,$1F,$FC,$FF,$0A,$C0,$03,$00,$09 ; $CD6786
    db $87,$7E,$40,$06,$47,$A7,$54,$C7,$DF,$07,$18,$A3,$5F,$D7,$A1,$7E ; $CD6796
    db $1F,$00,$FD,$17,$F0,$16,$E2,$6E,$94,$A0,$8A,$A2,$1D,$C0,$06,$BE ; $CD67A6
    db $08,$03,$09,$4C,$03,$08,$FD,$D6,$FE,$AE,$FE,$A8,$9D,$70,$BF,$7B ; $CD67B6
    db $DF,$1E,$33,$D7,$C5,$16,$01,$E8,$01,$9D,$75,$20,$6E,$DF,$59,$ED ; $CD67C6
    db $B2,$7F,$31,$F7,$5F,$3C,$1E,$FF,$9E,$BF,$5D,$7F,$BA,$FF,$75,$00 ; $CD67D6
    db $41,$80,$4E,$18,$C1,$2A,$DC,$5F,$78,$41,$00,$82,$94,$8F,$E0,$9F ; $CD67E6
    db $AA,$5F,$64,$3F,$EA,$7F,$DC,$7F,$56,$FF,$60,$80,$3D,$20,$80,$40 ; $CD67F6
    db $93,$BD,$82,$00,$15,$42,$AA,$E1,$40,$95,$02,$8A,$21,$D5,$A0,$CA ; $CD6806
    db $05,$C5,$1A,$EA,$DE,$0E,$DB,$15,$00,$2A,$E5,$9F,$0A,$98,$07,$30 ; $CD6816
    db $03,$05,$04,$07,$51,$20,$A8,$13,$55,$78,$14,$54,$AB,$7A,$90,$5D ; $CD6826
    db $9F,$06,$60,$FF,$03,$54,$00,$9D,$AE,$FF,$10,$FB,$5B,$01,$B0,$E9 ; $CD6836
    db $51,$55,$2A,$39,$2A,$D5,$03,$FA,$02,$FB,$2A,$23,$C0,$27,$15,$01 ; $CD6846
    db $6C,$29,$1D,$07,$01,$6A,$3F,$01,$6B,$1F,$1D,$07,$05,$2E,$F3,$15 ; $CD6856
    db $3A,$03,$55,$07,$47,$55,$54,$AB,$CD,$03,$FF,$00,$39,$54,$7F,$2F ; $CD6866
    db $FF,$9F,$3F,$75,$1F,$23,$9F,$3F,$7F,$3F,$A5,$C9,$7F,$D7,$72,$2A ; $CD6876
    db $20,$C0,$C4,$01,$80,$67,$C8,$80,$CA,$02,$BF,$FF,$25,$BF,$FE,$F2 ; $CD6886
    db $08,$BF,$FB,$06,$CE,$FF,$F0,$FF,$F6,$03,$00,$E7,$E1,$DD,$C8,$DF ; $CD6896
    db $17,$FE,$8E,$99,$1A,$05,$70,$18,$04,$22,$04,$20,$08,$01,$70,$D4 ; $CD68A6
    db $7B,$FF,$78,$E0,$03,$F8,$FB,$82,$02,$FE,$51,$F8,$CF,$DC,$0F,$DB ; $CD68B6
    db $D7,$B5,$C7,$C3,$0E,$00,$10,$20,$10,$95,$6A,$0D,$72,$0F,$F0,$F9 ; $CD68C6
    db $BE,$9B,$07,$00,$FC,$01,$FE,$03,$FC,$05,$00,$85,$E8,$59,$8B,$1C ; $CD68D6
    db $38,$03,$5F,$CB,$03,$24,$9F,$11,$B3,$04,$9C,$23,$F9,$06,$F0,$0F ; $CD68E6
    db $FA,$05,$FA,$07,$FE,$01,$EA,$00,$48,$03,$40,$1C,$19,$E0,$F0,$4B ; $CD68F6
    db $DF,$F8,$BE,$BF,$F7,$1A,$18,$1F,$F8,$01,$E1,$37,$F8,$17,$F8,$2F ; $CD6906
    db $F8,$27,$D8,$5F,$B8,$20,$C2,$55,$78,$A3,$01,$20,$BF,$C3,$83,$35 ; $CD6916
    db $B3,$4C,$B7,$48,$47,$01,$30,$C3,$03,$07,$4A,$90,$03,$90,$07,$05 ; $CD6926
    db $01,$4B,$90,$4F,$1C,$03,$E5,$47,$1C,$FD,$00,$F2,$03,$55,$F8,$00 ; $CD6936
    db $21,$FD,$02,$F2,$05,$F5,$67,$02,$67,$F9,$1C,$03,$FD,$5F,$EE,$3B ; $CD6946
    db $37,$D2,$BB,$88,$22,$D2,$70,$54,$EF,$51,$B7,$54,$CC,$37,$B0,$AE ; $CD6956
    db $55,$40,$15,$C3,$1F,$90,$45,$E0,$B3,$CD,$20,$BE,$91,$BA,$3A,$00 ; $CD6966
    db $40,$90,$73,$10,$2A,$A0,$15,$75,$60,$C0,$A7,$30,$8A,$AA,$45,$04 ; $CD6976
    db $51,$B5,$F4,$9F,$43,$7A,$E7,$04,$FB,$01,$AB,$9F,$88,$00,$C3,$14 ; $CD6986
    db $15,$6A,$AA,$21,$55,$0A,$75,$8A,$00,$47,$A2,$05,$51,$80,$28,$A8 ; $CD6996
    db $1F,$12,$8A,$30,$45,$C6,$BF,$86,$51,$6C,$4E,$2A,$7A,$FF,$9F,$63 ; $CD69A6
    db $05,$D1,$BF,$4E,$5F,$55,$EB,$AE,$94,$7D,$1F,$7F,$3E,$BF,$9F,$5F ; $CD69B6
    db $4F,$2B,$A7,$47,$53,$2A,$29,$01,$EF,$3A,$4F,$FF,$17,$4D,$14,$2F ; $CD69C6
    db $F3,$E4,$EE,$F3,$C1,$FF,$C3,$7E,$71,$BE,$A0,$DF,$50,$E7,$84,$F3 ; $CD69D6
    db $08,$03,$00,$0C,$02,$9D,$C1,$01,$71,$FF,$2F,$3F,$F7,$FF,$3B,$F9 ; $CD69E6
    db $49,$7F,$CD,$FF,$2D,$FF,$1D,$FD,$FC,$8E,$37,$18,$00,$71,$DD,$16 ; $CD69F6
    db $BB,$A5,$E0,$E0,$BF,$3F,$FF,$CF,$FD,$F1,$8F,$F5,$B9,$C7,$C1,$FC ; $CD6A06
    db $7D,$79,$DE,$02,$D9,$09,$07,$82,$DC,$DF,$BF,$3F,$30,$BD,$81,$1D ; $CD6A16
    db $CF,$0C,$DD,$9D,$73,$58,$7E,$42,$83,$1D,$30,$03,$22,$EF,$03,$FF ; $CD6A26
    db $54,$BE,$81,$FF,$04,$22,$3F,$9B,$EE,$40,$59,$DE,$C0,$DF,$05,$10 ; $CD6A36
    db $F9,$08,$DB,$C2,$A0,$59,$21,$00,$01,$20,$0F,$06,$F0,$24,$01,$F1 ; $CD6A46
    db $97,$1A,$F9,$0A,$DB,$C4,$DC,$13,$F0,$8F,$F0,$7F,$C8,$1F,$D8,$4F ; $CD6A56
    db $E9,$1D,$03,$20,$9A,$C3,$70,$E5,$26,$68,$E5,$BF,$4A,$CB,$35,$1F ; $CD6A66
    db $EA,$0F,$C4,$2F,$D5,$3F,$CE,$7F,$CE,$5B,$0F,$00,$31,$00,$C2,$D4 ; $CD6A76
    db $39,$63,$09,$DA,$97,$BF,$11,$2A,$A0,$10,$F5,$12,$F7,$FD,$F7,$7F ; $CD6A86
    db $FF,$9F,$F9,$9E,$FE,$5D,$F7,$32,$F7,$E1,$08,$E1,$54,$BC,$80,$BF ; $CD6A96
    db $08,$C1,$08,$06,$7F,$EB,$FE,$3B,$D7,$DD,$80,$9F,$5F,$B8,$DC,$72 ; $CD6AA6
    db $02,$FD,$E9,$3E,$D2,$00,$04,$91,$39,$57,$01,$81,$0E,$29,$09,$FE ; $CD6AB6
    db $ED,$B7,$C2,$F0,$FF,$F9,$FC,$F4,$31,$D3,$84,$5D,$12,$F8,$8F,$DD ; $CD6AC6
    db $DB,$03,$0A,$00,$28,$03,$21,$8C,$5C,$E2,$70,$15,$E5,$12,$C2,$5D ; $CD6AD6
    db $14,$7B,$42,$F1,$31,$5C,$BA,$2D,$F9,$1C,$C0,$18,$28,$05,$A0,$03 ; $CD6AE6
    db $02,$80,$34,$0C,$C2,$40,$A8,$1F,$2E,$22,$01,$12,$55,$55,$EA,$2A ; $CD6AF6
    db $F5,$45,$FA,$CA,$F5,$25,$EA,$0A,$9E,$DF,$DD,$DF,$EF,$3B,$72,$20 ; $CD6B06
    db $F5,$AF,$DC,$7F,$3B,$15,$AA,$8A,$40,$45,$BA,$AA,$5D,$55,$AE,$AA ; $CD6B16
    db $50,$D8,$98,$55,$13,$3D,$DB,$D2,$07,$06,$A8,$DF,$BF,$55,$00,$63 ; $CD6B26
    db $03,$DF,$1F,$08,$BA,$FF,$5D,$E1,$44,$3F,$88,$7F,$58,$BF,$A4,$5D ; $CD6B36
    db $40,$AB,$AA,$54,$D1,$2B,$C7,$37,$52,$61,$96,$42,$00,$BE,$D6,$F3 ; $CD6B46
    db $F6,$1F,$EF,$02,$59,$DE,$0F,$E5,$40,$FF,$3F,$02,$BF,$59,$46,$26 ; $CD6B56
    db $0D,$C6,$11,$FE,$F7,$DE,$00,$F4,$FF,$F3,$BF,$83,$FD,$33,$FF,$11 ; $CD6B66
    db $07,$3F,$0C,$1D,$15,$27,$76,$04,$40,$70,$DF,$00,$2E,$A8,$C0,$55 ; $CD6B76
    db $20,$EE,$8C,$F9,$29,$FF,$6A,$FF,$D9,$FB,$C1,$FF,$C0,$FF,$D0,$DF ; $CD6B86
    db $0F,$11,$00,$06,$91,$19,$04,$83,$45,$0F,$20,$10,$F0,$A8,$1B,$47 ; $CD6B96
    db $FC,$EB,$DB,$6F,$DF,$09,$04,$A2,$1B,$31,$DF,$03,$FC,$9D,$01,$87 ; $CD6BA6
    db $FC,$BF,$1A,$FC,$E7,$0E,$0A,$0D,$00,$03,$FC,$BF,$22,$01,$40,$E3 ; $CD6BB6
    db $F9,$06,$FE,$01,$F5,$08,$18,$ED,$00,$EF,$20,$03,$DC,$0E,$23,$F0 ; $CD6BC6
    db $0F,$F9,$95,$73,$F6,$CB,$00,$F3,$00,$18,$07,$84,$78,$5C,$80,$F0 ; $CD6BD6
    db $00,$3F,$E0,$FF,$90,$BF,$48,$F7,$38,$17,$A4,$E3,$67,$F8,$2B,$0F ; $CD6BE6
    db $F8,$1F,$7A,$32,$00,$01,$23,$E5,$FB,$04,$EF,$ED,$01,$DD,$80,$01 ; $CD6BF6
    db $4B,$90,$50,$05,$80,$50,$8F,$4F,$90,$99,$01,$4D,$F9,$A9,$23,$19 ; $CD6C06
    db $D5,$3F,$0E,$05,$88,$77,$FF,$A0,$35,$0C,$F0,$A7,$0F,$15,$01,$88 ; $CD6C16
    db $AE,$44,$11,$05,$10,$C8,$22,$90,$05,$A0,$4A,$10,$E5,$00,$E2,$68 ; $CD6C26
    db $B7,$C5,$2A,$88,$1D,$15,$F0,$0A,$E0,$28,$0A,$18,$05,$07,$5C,$01 ; $CD6C36
    db $A2,$00,$15,$72,$9B,$14,$0E,$40,$A9,$02,$40,$E5,$07,$54,$DF,$DF ; $CD6C46
    db $74,$11,$89,$BB,$17,$A8,$A8,$5D,$79,$55,$81,$04,$40,$15,$A8,$02 ; $CD6C56
    db $50,$D4,$8D,$9F,$81,$54,$C8,$2C,$15,$13,$0E,$AA,$A8,$55,$50,$A4 ; $CD6C66
    db $C7,$01,$2A,$13,$08,$15,$03,$BF,$89,$72,$43,$A2,$AB,$67,$E7,$F8 ; $CD6C76
    db $D7,$A6,$E7,$2D,$E7,$17,$17,$51,$A9,$08,$A9,$95,$54,$6B,$AA,$75 ; $CD6C86
    db $55,$9A,$2A,$1D,$55,$0E,$B8,$FF,$50,$02,$28,$8A,$AA,$03,$80,$00 ; $CD6C96
    db $03,$E1,$94,$20,$0A,$41,$15,$1D,$A0,$2A,$54,$21,$FF,$10,$55,$A2 ; $CD6CA6
    db $8A,$D7,$F3,$12,$35,$80,$6A,$E6,$9B,$39,$DF,$00,$52,$7C,$40,$3E ; $CD6CB6
    db $20,$4F,$09,$A7,$11,$04,$51,$01,$07,$2D,$AA,$81,$60,$9C,$10,$80 ; $CD6CC6
    db $10,$40,$EA,$28,$51,$67,$FF,$8F,$F7,$BD,$C0,$9F,$BF,$F9,$6F,$FE ; $CD6CD6
    db $FF,$3F,$3E,$37,$8F,$05,$7A,$7F,$43,$A8,$5F,$14,$DF,$CB,$4A,$1D ; $CD6CE6
    db $40,$C3,$B7,$87,$F7,$F0,$A0,$03,$3A,$20,$04,$DA,$41,$97,$C3,$48 ; $CD6CF6
    db $41,$0B,$FD,$04,$29,$A1,$00,$F7,$F3,$D7,$C5,$DD,$90,$7A,$0A,$2D ; $CD6D06
    db $02,$F8,$5C,$3B,$A4,$20,$10,$0E,$80,$35,$5F,$45,$3E,$00,$5D,$BE ; $CD6D16
    db $BE,$80,$7F,$40,$AF,$67,$9E,$43,$5D,$41,$A0,$5F,$80,$00,$0E,$DF ; $CD6D26
    db $91,$FF,$4F,$E8,$59,$7F,$F7,$67,$03,$F5,$51,$7D,$24,$6B,$4A,$11 ; $CD6D36
    db $33,$00,$30,$F1,$1D,$08,$80,$0A,$70,$80,$82,$18,$80,$34,$FD,$F4 ; $CD6D46
    db $F4,$F9,$F3,$FC,$F8,$E9,$63,$02,$F0,$FE,$F6,$F0,$73,$04,$AA,$5B ; $CD6D56
    db $03,$95,$6E,$03,$72,$09,$00,$88,$03,$3F,$4F,$CB,$3F,$0D,$FC,$35 ; $CD6D66
    db $F1,$17,$C4,$CF,$13,$7E,$8E,$8A,$78,$80,$30,$00,$C0,$91,$7D,$20 ; $CD6D76
    db $0C,$01,$75,$70,$05,$80,$BF,$97,$BF,$2E,$FF,$9D,$F7,$72,$F7,$E5 ; $CD6D86
    db $BE,$92,$B5,$25,$EA,$8A,$40,$08,$40,$10,$00,$60,$08,$81,$08,$02 ; $CD6D96
    db $40,$0D,$40,$EE,$40,$03,$75,$21,$6E,$4A,$D1,$11,$1D,$AA,$A8,$57 ; $CD6DA6
    db $F8,$63,$E8,$FF,$80,$1A,$80,$11,$31,$06,$E8,$4A,$5F,$03,$BA,$FF ; $CD6DB6
    db $18,$2E,$1E,$B6,$38,$90,$73,$44,$84,$8B,$58,$4E,$BE,$A8,$5B,$54 ; $CD6DC6
    db $AC,$A3,$61,$80,$09,$42,$83,$30,$0C,$44,$01,$A0,$01,$A5,$A3,$D7 ; $CD6DD6
    db $1F,$1E,$DF,$1D,$7E,$84,$94,$7C,$15,$FE,$FF,$00,$3E,$41,$D2,$2F ; $CD6DE6
    db $02,$FF,$B0,$99,$79,$03,$94,$9D,$3D,$3E,$10,$7B,$2B,$75,$08,$45 ; $CD6DF6
    db $8E,$03,$2A,$15,$FD,$EB,$A6,$97,$3D,$4D,$8B,$F7,$CB,$7B,$2C,$C8 ; $CD6E06
    db $DF,$38,$23,$82,$03,$22,$7C,$A8,$06,$8E,$BF,$02,$55,$40,$77,$29 ; $CD6E16
    db $40,$43,$8A,$50,$45,$A8,$A2,$04,$1F,$51,$A2,$A8,$0A,$6B,$9F,$A8 ; $CD6E26
    db $A9,$F7,$71,$2A,$43,$0A,$56,$78,$03,$08,$1F,$FF,$7F,$77,$3F,$C0 ; $CD6E36
    db $B9,$9F,$9F,$7F,$5F,$8F,$8F,$04,$1F,$4F,$AF,$A7,$00,$5C,$C0,$80 ; $CD6E46
    db $60,$E2,$03,$30,$BA,$03,$FE,$ED,$55,$D2,$DF,$F4,$00,$BF,$81,$FF ; $CD6E56
    db $A3,$FF,$9E,$FF,$1E,$8D,$55,$19,$5F,$40,$16,$75,$07,$D7,$03,$EF ; $CD6E66
    db $1E,$42,$FF,$BE,$F6,$70,$77,$64,$CF,$4B,$FF,$57,$FF,$CF,$DF,$0F ; $CD6E76
    db $10,$A8,$F9,$09,$80,$88,$2A,$03,$30,$E5,$07,$20,$10,$5A,$FB,$7F ; $CD6E86
    db $FB,$03,$BE,$C4,$60,$01,$8A,$D9,$0A,$00,$FE,$FF,$FA,$A4,$DE,$F8 ; $CD6E96
    db $FF,$03,$EF,$E0,$F0,$EF,$C4,$CF,$D1,$02,$19,$4A,$E9,$30,$A6,$FF ; $CD6EA6
    db $00,$01,$01,$F8,$F9,$00,$02,$44,$FD,$C8,$F1,$01,$06,$EA,$C5,$05 ; $CD6EB6
    db $40,$42,$F8,$07,$F0,$0F,$F3,$08,$1C,$D9,$03,$D8,$07,$01,$EE,$11 ; $CD6EC6
    db $7F,$80,$F8,$00,$F0,$D6,$8E,$67,$E4,$00,$38,$2E,$07,$EE,$1D,$00 ; $CD6ED6
    db $7F,$00,$1F,$E0,$6F,$18,$07,$78,$07,$F8,$47,$E8,$9D,$0F,$F0,$17 ; $CD6EE6
    db $67,$E8,$34,$80,$13,$01,$00,$F7,$9D,$00,$01,$BF,$40,$FA,$05,$FB ; $CD6EF6
    db $04,$F7,$18,$08,$FE,$01,$64,$F2,$0D,$C3,$43,$0F,$90,$4A,$BE,$D7 ; $CD6F06
    db $47,$5C,$90,$6D,$4E,$90,$4C,$90,$42,$90,$40,$90,$C8,$37,$A1,$5E ; $CD6F16
    db $C0,$3F,$40,$BF,$51,$20,$C8,$00,$A1,$6E,$68,$DF,$00,$09,$1D,$F4 ; $CD6F26
    db $04,$FA,$5E,$22,$A2,$7B,$03,$1D,$14,$FF,$01,$07,$53,$01,$06,$00 ; $CD6F36
    db $00,$FB,$02,$26,$54,$BB,$29,$02,$01,$69,$A0,$2A,$11,$15,$60,$AA ; $CD6F46
    db $F4,$04,$C6,$5B,$DF,$00,$04,$11,$2A,$80,$10,$45,$08,$A2,$8B,$70 ; $CD6F56
    db $C3,$27,$80,$AA,$64,$3F,$8A,$0A,$05,$0A,$9F,$44,$11,$88,$98,$F7 ; $CD6F66
    db $44,$1F,$27,$15,$44,$2E,$F7,$04,$D0,$FB,$1F,$1C,$07,$55,$03,$05 ; $CD6F76
    db $77,$20,$BB,$D1,$1F,$12,$2B,$28,$82,$AB,$1F,$20,$9B,$63,$1F,$3A ; $CD6F86
    db $2B,$28,$02,$1F,$20,$AA,$80,$15,$3C,$03,$2A,$04,$A2,$63,$D1,$8E ; $CD6F96
    db $37,$8E,$31,$F3,$0D,$A7,$F1,$A9,$C3,$F3,$05,$6D,$80,$F8,$09,$1F ; $CD6FA6
    db $71,$0D,$25,$05,$D0,$3B,$09,$00,$41,$08,$90,$33,$4C,$01,$88,$02 ; $CD6FB6
    db $4A,$A0,$A2,$17,$14,$A2,$26,$E1,$49,$00,$91,$36,$41,$FA,$FE,$BF ; $CD6FC6
    db $3F,$37,$07,$A6,$D4,$03,$D4,$A1,$A8,$7D,$01,$3F,$9D,$F8,$23,$F7 ; $CD6FD6
    db $80,$09,$50,$A3,$9B,$0B,$91,$80,$C0,$3F,$8F,$75,$15,$EA,$8A,$F5 ; $CD6FE6
    db $95,$2A,$0A,$F7,$54,$E7,$A2,$D7,$41,$BA,$92,$11,$61,$35,$53,$83 ; $CD6FF6
    db $00,$28,$01,$7F,$08,$A6,$00,$4D,$7F,$40,$10,$DB,$7F,$06,$00,$7F ; $CD7006
    db $41,$EA,$2A,$07,$0A,$BE,$80,$00,$BF,$B3,$9B,$A6,$1D,$2A,$A3,$41 ; $CD7016
    db $C7,$04,$14,$AB,$58,$77,$2A,$61,$2A,$47,$B2,$A2,$55,$1D,$DF,$40 ; $CD7026
    db $EA,$DF,$81,$54,$08,$80,$0A,$08,$45,$F0,$F9,$7C,$43,$5C,$FA,$F0 ; $CD7036
    db $3E,$F6,$F0,$37,$04,$BC,$21,$C8,$8A,$5F,$40,$BE,$A2,$80,$3C,$01 ; $CD7046
    db $C0,$09,$00,$C8,$03,$40,$1E,$20,$F5,$80,$01,$5C,$00,$1B,$C2,$DE ; $CD7056
    db $10,$75,$85,$82,$2A,$C3,$BF,$18,$90,$37,$00,$BF,$08,$24,$01,$20 ; $CD7066
    db $0F,$00,$7A,$E5,$56,$07,$BF,$B6,$41,$D5,$CF,$02,$7F,$5A,$23,$A2 ; $CD7076
    db $F9,$07,$1F,$33,$01,$54,$00,$A8,$BF,$17,$D2,$FF,$52,$01,$B6,$A4 ; $CD7086
    db $3D,$11,$BA,$2A,$01,$5B,$BF,$0B,$17,$08,$A1,$08,$96,$43,$40,$8E ; $CD7096
    db $40,$15,$55,$53,$A8,$29,$96,$15,$EB,$AA,$B5,$55,$8A,$8A,$55,$45 ; $CD70A6
    db $AA,$7F,$01,$28,$06,$50,$40,$28,$00,$14,$14,$D0,$83,$43,$FF,$48 ; $CD70B6
    db $60,$B7,$DD,$7E,$C1,$C3,$3C,$07,$50,$BF,$68,$4F,$A8,$4A,$5F,$48 ; $CD70C6
    db $20,$FE,$3E,$03,$E8,$42,$8B,$DC,$67,$62,$81,$15,$22,$CA,$04,$45 ; $CD70D6
    db $70,$0A,$30,$C5,$88,$72,$10,$E1,$26,$D8,$C0,$09,$B0,$0A,$80,$05 ; $CD70E6
    db $33,$28,$02,$03,$1C,$BE,$FF,$15,$E9,$BF,$1E,$11,$45,$20,$02,$95 ; $CD70F6
    db $B7,$B6,$97,$B5,$A7,$54,$F6,$07,$FA,$91,$04,$1B,$BB,$5F,$80,$FB ; $CD7106
    db $55,$15,$2A,$8A,$15,$45,$1E,$26,$A2,$06,$03,$1F,$B6,$FF,$09,$55 ; $CD7116
    db $50,$A9,$A8,$55,$83,$8A,$19,$07,$2A,$6B,$FD,$F7,$01,$40,$1F,$9E ; $CD7126
    db $FF,$3E,$FE,$60,$EF,$12,$84,$4D,$41,$45,$27,$0C,$D9,$01,$B9,$03 ; $CD7136
    db $4E,$12,$3E,$07,$03,$7A,$DF,$79,$00,$1F,$F2,$04,$DF,$FF,$AE,$D1 ; $CD7146
    db $3F,$00,$F1,$43,$1F,$A0,$AA,$E9,$07,$BF,$00,$55,$FE,$D9,$8D,$92 ; $CD7156
    db $C9,$B6,$06,$10,$39,$87,$78,$1F,$E6,$51,$40,$55,$04,$52,$83,$07 ; $CD7166
    db $00,$1F,$18,$E7,$B6,$49,$A6,$59,$9A,$1D,$65,$1C,$E3,$45,$02,$0E ; $CD7176
    db $1F,$00,$92,$A3,$9F,$3A,$01,$1C,$86,$07,$F8,$1F,$8B,$48,$D7,$F8 ; $CD7186
    db $07,$9C,$BD,$01,$DE,$16,$01,$90,$07,$B6,$D7,$00,$2D,$3E,$00,$A8 ; $CD7196
    db $40,$8F,$04,$40,$2F,$D0,$37,$C8,$00,$01,$27,$D8,$07,$C8,$97,$68 ; $CD71A6
    db $3A,$B0,$0A,$EA,$FC,$12,$1D,$01,$02,$30,$5D,$09,$3F,$03,$01,$B0 ; $CD71B6
    db $4F,$28,$01,$B8,$03,$40,$41,$90,$01,$00,$EE,$02,$01,$5C,$96,$3F ; $CD71C6
    db $20,$FF,$01,$FF,$35,$FF,$05,$FF,$59,$FF,$2F,$FF,$07,$B8,$FF,$44 ; $CD71D6
    db $FF,$25,$03,$FF,$6E,$FF,$4D,$FF,$EF,$B8,$FC,$97,$9E,$BF,$06,$00 ; $CD71E6
    db $B8,$55,$A0,$D5,$10,$EA,$A5,$E5,$FA,$F2,$FD,$F9,$FE,$FC,$1D,$E4 ; $CD71F6
    db $C9,$B3,$18,$02,$D4,$25,$44,$02,$51,$23,$01,$54,$0A,$D8,$89,$B3 ; $CD7206
    db $8C,$01,$41,$48,$AA,$A0,$4C,$51,$A8,$D1,$5F,$70,$14,$41,$26,$88 ; $CD7216
    db $00,$51,$36,$81,$14,$43,$00,$AE,$E9,$AB,$E9,$BB,$07,$11,$44,$A8 ; $CD7226
    db $A2,$14,$48,$FF,$40,$54,$82,$FA,$03,$AA,$3F,$01,$92,$9F,$50,$05 ; $CD7236
    db $3B,$29,$95,$0D,$40,$C0,$0D,$C2,$28,$50,$8E,$6D,$D7,$84,$BF,$2A ; $CD7246
    db $82,$15,$86,$29,$88,$22,$03,$C7,$47,$15,$40,$4D,$31,$1C,$3F,$88 ; $CD7256
    db $03,$75,$20,$80,$3A,$08,$55,$60,$15,$98,$06,$22,$06,$51,$83,$28 ; $CD7266
    db $15,$0E,$0A,$A0,$04,$51,$45,$4B,$07,$37,$A8,$82,$67,$DB,$0A,$57 ; $CD7276
    db $63,$07,$4B,$0B,$41,$0C,$A2,$54,$97,$2A,$31,$11,$05,$06,$A0,$2C ; $CD7286
    db $79,$14,$41,$5D,$E0,$6D,$15,$48,$82,$20,$09,$50,$7F,$F5,$2E,$55 ; $CD7296
    db $6A,$19,$2A,$D1,$95,$A9,$2A,$55,$14,$08,$88,$F2,$05,$33,$B9,$2A ; $CD72A6
    db $C4,$7F,$6A,$0E,$29,$63,$14,$A0,$07,$55,$74,$BA,$75,$24,$2A,$08 ; $CD72B6
    db $D7,$12,$EE,$A4,$C5,$41,$BA,$22,$CD,$45,$3A,$8A,$01,$9A,$C1,$34 ; $CD72C6
    db $00,$69,$00,$53,$18,$A6,$00,$CD,$30,$48,$B5,$BC,$00,$9B,$F7,$84 ; $CD72D6
    db $88,$AA,$5D,$41,$CD,$84,$FF,$51,$6E,$22,$41,$3E,$A8,$9B,$03,$22 ; $CD72E6
    db $80,$22,$10,$00,$26,$0E,$4B,$95,$14,$A8,$82,$BB,$2A,$A2,$E1,$51 ; $CD72F6
    db $51,$AE,$AA,$D1,$51,$2A,$29,$40,$2A,$41,$14,$04,$1F,$0C,$58,$DF ; $CD7306
    db $28,$61,$C0,$D2,$55,$28,$2A,$70,$D0,$55,$E8,$AA,$51,$14,$88,$88 ; $CD7316
    db $63,$54,$3A,$89,$97,$9D,$D7,$44,$FF,$1A,$7F,$98,$87,$E5,$8B,$41 ; $CD7326
    db $0E,$22,$51,$15,$A2,$4A,$56,$90,$37,$84,$BD,$21,$EA,$0A,$14,$22 ; $CD7336
    db $C0,$1D,$D8,$11,$34,$09,$77,$60,$80,$07,$1E,$00,$F5,$52,$50,$0C ; $CD7346
    db $2B,$A2,$2F,$09,$9B,$F5,$11,$95,$AA,$2A,$00,$DF,$05,$A8,$14,$41 ; $CD7356
    db $50,$09,$86,$40,$1D,$00,$D2,$23,$F4,$E2,$17,$51,$B9,$3F,$4B,$A8 ; $CD7366
    db $DF,$5F,$01,$A6,$3B,$7F,$5F,$EA,$89,$93,$54,$54,$8A,$72,$CC,$55 ; $CD7376
    db $2D,$A9,$A8,$A7,$97,$F0,$9F,$54,$47,$50,$AB,$0E,$AA,$D5,$55,$CA ; $CD7386
    db $F8,$9F,$A4,$90,$99,$15,$24,$E2,$8A,$71,$9F,$2A,$20,$15,$71,$28 ; $CD7396
    db $82,$4A,$01,$42,$18,$00,$75,$01,$78,$92,$1C,$30,$04,$A7,$A0,$85 ; $CD73A6
    db $3F,$C2,$95,$15,$3F,$80,$87,$00,$60,$01,$4B,$80,$08,$50,$77,$A7 ; $CD73B6
    db $B8,$75,$00,$58,$05,$B6,$08,$76,$09,$1E,$20,$9C,$01,$E0,$80,$51 ; $CD73C6
    db $A0,$4A,$40,$A2,$80,$07,$53,$50,$82,$84,$43,$52,$B5,$15,$75,$60 ; $CD73D6
    db $55,$2B,$01,$8A,$DF,$82,$2A,$B2,$1B,$75,$1F,$76,$01,$03,$4C,$40 ; $CD73E6
    db $83,$75,$03,$15,$BA,$A2,$16,$51,$AB,$8C,$DB,$2A,$DB,$55,$EE,$C7 ; $CD73F6
    db $87,$03,$1B,$A8,$80,$54,$E8,$02,$1F,$AA,$F5,$FF,$CC,$5F,$B8,$A2 ; $CD7406
    db $58,$A0,$FA,$02,$83,$3F,$8A,$04,$41,$04,$A8,$DC,$01,$1F,$03,$76 ; $CD7416
    db $A2,$03,$3F,$72,$02,$06,$A3,$2D,$88,$05,$50,$B8,$53,$76,$54,$1B ; $CD7426
    db $8B,$8F,$3F,$14,$55,$21,$08,$A2,$5F,$BA,$5F,$06,$00,$50,$0B,$A4 ; $CD7436
    db $2C,$41,$D8,$AA,$B0,$25,$55,$E9,$81,$1F,$A8,$10,$43,$10,$8E,$D8 ; $CD7446
    db $A3,$2A,$02,$C0,$0B,$54,$FE,$00,$78,$84,$C0,$49,$11,$44,$02,$A8 ; $CD7456
    db $7D,$1D,$00,$39,$40,$73,$5B,$00,$01,$AE,$9F,$11,$EE,$86,$BF,$83 ; $CD7466
    db $00,$82,$3C,$20,$1D,$A9,$00,$D4,$80,$50,$48,$05,$AC,$02,$52,$05 ; $CD7476
    db $18,$21,$0A,$5A,$A2,$54,$14,$5C,$2A,$7B,$9A,$45,$50,$A2,$A8,$51 ; $CD7486
    db $50,$A8,$A0,$54,$0F,$F0,$07,$F8,$87,$78,$E0,$DD,$18,$27,$98,$17 ; $CD7496
    db $48,$2D,$07,$A0,$6A,$D7,$60,$38,$C3,$01,$A2,$18,$42,$AF,$40,$BF ; $CD74A6
    db $40,$13,$DD,$69,$DF,$EB,$BE,$73,$8F,$03,$58,$DD,$90,$3E,$E7,$10 ; $CD74B6
    db $1D,$20,$FF,$07,$23,$DF,$1F,$FF,$5F,$A7,$DF,$BC,$D3,$7C,$E0,$04 ; $CD74C6
    db $E0,$BF,$15,$2F,$7F,$6F,$0F,$02,$CF,$E3,$FE,$FC,$FE,$FE,$52,$DF ; $CD74D6
    db $80,$47,$00,$89,$DC,$01,$FF,$E2,$E8,$02,$D9,$3A,$FD,$7F,$AF,$02 ; $CD74E6
    db $9F,$07,$90,$FE,$20,$D5,$95,$EA,$3A,$CA,$F5,$44,$FF,$FB,$F9,$FF ; $CD74F6
    db $91,$3F,$01,$9B,$0A,$04,$01,$04,$33,$20,$01,$A1,$FB,$04,$C7,$03 ; $CD7506
    db $40,$5A,$9F,$80,$EE,$7F,$CB,$04,$47,$3F,$DD,$A7,$21,$EC,$D7,$5A ; $CD7516
    db $9B,$44,$99,$15,$11,$DF,$C9,$FB,$04,$F5,$A3,$40,$1B,$22,$14,$41 ; $CD7526
    db $2A,$80,$84,$06,$11,$20,$8A,$09,$41,$19,$8E,$1D,$5B,$14,$00,$CA ; $CD7536
    db $44,$2A,$50,$05,$14,$18,$A2,$05,$50,$3B,$A0,$0A,$CE,$31,$22,$E3 ; $CD7546
    db $A8,$00,$34,$15,$40,$A2,$08,$04,$AA,$A0,$EE,$B8,$3F,$22,$3B,$A8 ; $CD7556
    db $E9,$FF,$4F,$A2,$B1,$3F,$5D,$43,$3F,$55,$2B,$A2,$57,$80,$B8,$1B ; $CD7566
    db $80,$19,$33,$44,$33,$40,$88,$03,$32,$45,$00,$10,$88,$51         ; $CD7576
L_CD7584:
    BIT $A1                 ; $CD7584  24 A1        Mx
    LSR                     ; $CD7586  4A           Mx
    BRK #$99                ; $CD7587  00 99        Mx
    CPX $1F                 ; $CD7589  E4 1F        Mx
    ORA $9803,X             ; $CD758B  1D 03 98     Mx
    JSR L_CD9A5F            ; $CD758E  20 5F 9A     Mx
    BRK #$34                ; $CD7591  00 34        Mx
    AND $44,X               ; $CD7593  35 44        Mx
    CLC                     ; $CD7595  18           Mx
    LDA ($8A,S),Y           ; $CD7596  B3 8A        Mx
    ADC $6C,X               ; $CD7598  75 6C        Mx
    TXA                     ; $CD759A  8A           Mx
    ORA $77                 ; $CD759B  05 77        Mx
    EOR $5B                 ; $CD759D  45 5B        Mx
    STA $45,X               ; $CD759F  95 45        Mx
    STA [$99]               ; $CD75A1  87 99        Mx
    ORA ($51,S),Y           ; $CD75A3  13 51        Mx
    TXS                     ; $CD75A5  9A           Mx
    LDA $55,S               ; $CD75A6  A3 55        Mx
    CMP $83,S               ; $CD75A8  C3 83        Mx
    CLC                     ; $CD75AA  18           Mx
    LDX #$17                ; $CD75AB  A2 17        Mx
    ADC [$9D]               ; $CD75AD  67 9D        Mx
    EOR ($1E),Y             ; $CD75AF  51 1E        Mx
    LDY $DD22               ; $CD75B1  AC 22 DD     Mx
    EOR ($2C),Y             ; $CD75B4  51 2C        Mx
    JSL $4D51CD             ; $CD75B6  22 CD 51 4D  Mx
    STY $1C                 ; $CD75BA  84 1C        Mx
    EOR ($2F,X)             ; $CD75BC  41 2F        Mx
    BCS L_CD75C0            ; $CD75BE  B0 00        Mx
L_CD75C0:
    LDX $97                 ; $CD75C0  A6 97        Mx
    AND $5F03A6,X           ; $CD75C2  3F A6 03 5F  Mx
    ROL $22                 ; $CD75C6  26 22        Mx
    BPL L_CD75EC            ; $CD75C8  10 22        Mx
    PHD                     ; $CD75CA  0B           Mx
    AND $575F               ; $CD75CB  2D 5F 57     Mx
    BIT $8F,X               ; $CD75CE  34 8F        Mx
    XBA                     ; $CD75D0  EB           Mx
    DEY                     ; $CD75D1  88           Mx
    ADC [$14],Y             ; $CD75D2  77 14        Mx
    AND $08,S               ; $CD75D4  23 08        Mx
    SBC ($50),Y             ; $CD75D6  F1 50        Mx
    EOR $AA                 ; $CD75D8  45 AA        Mx
    REP #$51                ; $CD75DA  C2 51        Mx
    ROL                     ; $CD75DC  2A           MX
    LDY $00                 ; $CD75DD  A4 00        MX
    LDA #$1F50              ; $CD75DF  A9 50 1F     MX
    LDA #$C003              ; $CD75E2  A9 03 C0     MX
    AND $06,X               ; $CD75E5  35 06        MX
    AND #$5100              ; $CD75E7  29 00 51     MX
    LDA $E3                 ; $CD75EA  A5 E3        MX
L_CD75EC:
    EOR ($00,S),Y           ; $CD75EC  53 00        MX
    TDC                     ; $CD75EE  7B           MX
    ADC ($44,S),Y           ; $CD75EF  73 44        MX
    AND ($89)               ; $CD75F1  32 89        MX
    CPY #$187F              ; $CD75F3  C0 7F 18     MX
    DEY                     ; $CD75F6  88           MX
    ADC ($24),Y             ; $CD75F7  71 24        MX
    CPX #$8A78              ; $CD75F9  E0 78 8A     MX
    ORA [$7F]               ; $CD75FC  07 7F        MX
    AND $15,X               ; $CD75FE  35 15        MX
    NOP                     ; $CD7600  EA           MX
    ORA $9B,X               ; $CD7601  15 9B        MX
    ORA $63                 ; $CD7603  05 63        MX
    STP                     ; $CD7605  DB           MX
    db $0A,$B9,$23,$3E,$AA,$2A,$0C,$C5,$FF,$51,$7E,$DF,$4F,$07,$0A,$44 ; $CD7606
    db $1F,$3A,$DB,$2A,$80,$63,$AB,$A9,$4B,$42,$3C,$AE,$88,$02,$1B,$04 ; $CD7616
    db $B8,$D5,$50,$14,$A1,$50,$07,$55,$51,$AB,$A4,$6D,$49,$5A,$22,$71 ; $CD7626
    db $55,$EA,$51,$1F,$02,$03,$BB,$86,$80,$1D,$B5,$31,$55,$07,$D5,$3A ; $CD7636
    db $21,$3B,$1B,$14,$7F,$27,$06,$FB,$7F,$FC,$5F,$57,$B8,$54,$57,$52 ; $CD7646
    db $AF,$A5,$6E,$4B,$FD,$A7,$FF,$5F,$FD,$3F,$83,$13,$A9,$10,$42,$10 ; $CD7656
    db $84,$AE,$1D,$20,$B8,$E0,$00,$C0,$D0,$A5,$80,$62,$58,$A5,$C4,$3A ; $CD7666
    db $E2,$1D,$E7,$38,$E2,$3D,$03,$40,$0A,$18,$85,$C0,$1D,$00,$41,$20 ; $CD7676
    db $40,$04,$32,$40,$00,$03,$41,$2F,$7B,$1A,$9F,$3C,$43,$05,$D4,$01 ; $CD7686
    db $E8,$02,$01,$64,$9B,$80,$7B,$F6,$D4,$BA,$16,$A8,$E7,$DF,$02,$A8 ; $CD7696
    db $F0,$02,$31,$88,$27,$22,$00,$64,$17,$B1,$C3,$88,$55,$2F,$08,$3B ; $CD76A6
    db $02,$AA,$BF,$DB,$D1,$04,$1F,$17,$DB,$8C,$EB,$05,$E3,$FB,$04,$8E ; $CD76B6
    db $11,$05,$8C,$83,$1F,$28,$78,$8A,$06,$BF,$20,$55,$30,$47,$50,$68 ; $CD76C6
    db $15,$55,$22,$EC,$3B,$0A,$E0,$E3,$A8,$82,$08,$3F,$A0,$20,$03,$3A ; $CD76D6
    db $3F,$28,$C0,$7F,$79,$00,$45,$52,$01,$8E,$A8,$42,$51,$0E,$A4,$0D ; $CD76E6
    db $D8,$B1,$80,$28,$3B,$86,$01,$23,$C3,$53,$76,$BB,$EB,$17,$55,$85 ; $CD76F6
    db $50,$18,$8A,$A4,$54,$49,$88,$82,$30,$45,$90,$8A,$70,$05,$60,$8A ; $CD7706
    db $02,$A9,$00,$17,$30,$4D,$00,$9A,$60,$15,$20,$EC,$BF,$C1,$60,$14 ; $CD7716
    db $BF,$05,$50,$0A,$A0,$D2,$DF,$19,$03,$01,$EA,$BF,$05,$DD,$7B,$4D ; $CD7726
    db $15,$03,$70,$40,$14,$A0,$0A,$50,$05,$A0,$02,$48,$15,$80,$22,$C1 ; $CD7736
    db $C3,$06,$A8,$81,$2A,$15,$DB,$03,$B8,$45,$40,$A2,$8C,$51,$82,$83 ; $CD7746
    db $53,$0F,$50,$E1,$87,$20,$47,$10,$47,$A8,$07,$10,$27,$88,$27,$50 ; $CD7756
    db $B1,$03,$25,$08,$52,$C6,$17,$12,$69,$3A,$00,$52,$A3,$EB,$52,$B1 ; $CD7766
    db $4F,$0E,$01,$B3,$4F,$BF,$67,$01,$05,$FF,$3E,$01,$04,$61,$FB,$01 ; $CD7776
    db $D2,$92,$FE,$3B,$FF,$FD,$80,$84,$F5,$FF,$EB,$FF,$16,$D7,$FF,$AF ; $CD7786
    db $9E,$96,$AD,$43,$71,$C1,$D5,$14,$4A,$BF,$85,$DF,$FD,$22,$27,$8F ; $CD7796
    db $FF,$03,$E1,$BF,$01,$F3,$02,$FF,$C3,$25,$BF,$9F,$E4,$07,$FF,$60 ; $CD77A6
    db $00,$54,$F0,$A5,$FB,$EB,$58,$3C,$9F,$FF,$03,$98,$FB,$25,$00,$05 ; $CD77B6
    db $FE,$BB,$90,$E9,$60,$CA,$C8,$E1,$EF,$67,$1D,$80,$BB,$80,$2A,$10 ; $CD77C6
    db $05,$14,$02,$0F,$05,$00,$00,$54,$07,$B3,$91,$E0,$07,$BF,$95,$00 ; $CD77D6
    db $08,$32,$88,$1D,$40,$A7,$C9,$00,$0C,$21,$44,$EC,$12,$55,$2A,$42 ; $CD77E6
    db $3A,$05,$13,$9C,$9B,$27,$DA,$06,$05,$99,$22,$20,$45,$17,$22,$A8 ; $CD77F6
    db $02,$42,$FB,$34,$01,$86,$20,$19,$4A,$02,$A9,$C0,$06,$68,$15,$4C ; $CD7806
    db $82,$22,$89,$50,$07,$B6,$40,$95,$40,$60,$51,$20,$0A,$7C,$01,$06 ; $CD7816
    db $79,$04,$74,$03,$87,$DD,$47,$6A,$EE,$3F,$7B,$E0,$15,$02,$80,$C2 ; $CD7826
    db $38,$8C,$00,$88,$50,$84,$51,$02,$28,$40,$14,$20,$8A,$50,$05,$04 ; $CD7836
    db $A2,$83,$54,$27,$10,$1B,$C1,$14,$83,$75,$48,$00,$B5,$00,$28,$C0 ; $CD7846
    db $35,$10,$EB,$00,$E5,$80,$14,$3E,$80,$5F,$20,$81,$8D,$7F,$00,$16 ; $CD7856
    db $07,$9B,$41,$2A,$41,$00,$73,$31,$C2,$C3,$80,$00,$E1,$14,$49,$28 ; $CD7866
    db $92,$91,$24,$62,$89,$85,$52,$16,$A0,$80,$75,$30,$4A,$00,$A6,$41 ; $CD7876
    db $0C,$EF,$5D,$57,$74,$68,$3F,$47,$80,$0A,$1D,$81,$34,$A0,$57,$E5 ; $CD7886
    db $90,$00,$29,$1F,$40,$4F,$90,$A7,$50,$2A,$E1,$06,$8C,$3F,$E5,$D4 ; $CD7896
    db $00,$20,$80,$20,$0F,$08,$20,$18,$01,$33,$45,$15,$73,$B1,$00,$6D ; $CD78A6
    db $2A,$46,$90,$33,$84,$1C,$21,$67,$E2,$7F,$AA,$70,$3B,$2A,$23,$81 ; $CD78B6
    db $54,$EE,$BF,$C0,$FB,$BF,$14,$A6,$73,$E1,$5B,$42,$CE,$10,$F5,$85 ; $CD78C6
    db $8A,$28,$12,$54,$0E,$A3,$82,$9B,$05,$50,$24,$81,$2D,$E3,$01,$05 ; $CD78D6
    db $D0,$09,$A2,$00,$54,$BD,$DE,$A7,$D3,$C5,$60,$DF,$45,$55,$E8,$47 ; $CD78E6
    db $2A,$BF,$D3,$04,$ED,$63,$BA,$DF,$57,$03,$56,$AF,$AD,$4B,$41,$AD ; $CD78F6
    db $E4,$02,$FF,$A8,$00,$07,$50,$14,$A0,$52,$04,$48,$BB,$A1,$6F,$43 ; $CD7906
    db $2A,$7F,$0F,$1B,$05,$7F,$00,$A4,$BB,$46,$10,$15,$8C,$80,$30,$0D ; $CD7916
    db $05,$80,$02,$D8,$D8,$FE,$FC,$2A,$FC,$FE,$02,$41,$DE,$CB,$5E,$17 ; $CD7926
    db $3A,$15,$03,$9C,$0B,$41,$20,$04,$A0,$96,$08,$61,$38,$C5,$BA,$86 ; $CD7936
    db $79,$82,$71,$8A,$F5,$04,$E3,$14,$EB,$A8,$D7,$86,$41,$00,$01,$18 ; $CD7946
    db $82,$0C,$82,$1D,$18,$04,$88,$61,$BA,$C6,$35,$C0,$12,$E8,$3D,$C0 ; $CD7956
    db $FE,$00,$4F,$80,$3F,$C0,$3D,$C2,$1B,$84,$15,$0A,$02,$05,$25,$02 ; $CD7966
    db $E2,$09,$75,$08,$16,$08,$0D,$10,$6B,$10,$BB,$00,$5C,$01,$BB,$04 ; $CD7976
    db $5F,$00,$2D,$02,$77,$5F,$11,$FC,$70,$B7,$50,$A2,$A0,$49,$01,$4C ; $CD7986
    db $A1,$A0,$51,$91,$2E,$CA,$D2,$FF,$A0,$46,$0A,$E3,$03,$51,$04,$82 ; $CD7996
    db $28,$41,$14,$B7,$EB,$5D,$DF,$01,$C0,$23,$51,$AA,$82,$55,$71,$41 ; $CD79A6
    db $07,$04,$D2,$25,$50,$6E,$05,$1B,$E3,$B1,$BC,$47,$C8,$F1,$04,$B3 ; $CD79B6
    db $33,$8A,$1B,$01,$F0,$47,$80,$55,$FA,$01,$BE,$ED,$51,$02,$89,$3F ; $CD79C6
    db $56,$1F,$47,$07,$0C,$4E,$D3,$03,$C6,$3B,$01,$50,$11,$08,$44,$11 ; $CD79D6
    db $80,$28,$98,$D3,$3A,$03,$0D,$9C,$7F,$3F,$86,$06,$51,$61,$14,$60 ; $CD79E6
    db $8A,$57,$02,$02,$88,$35,$40,$8A,$00,$3B,$87,$D0,$1B,$35,$C0,$37 ; $CD79F6
    db $62,$15,$15,$8A,$BA,$3B,$45,$04,$A2,$67,$05,$50,$8A,$AA,$30,$15 ; $CD7A06
    db $43,$40,$03,$3A,$0B,$05,$B1,$B7,$94,$72,$15,$03,$C1,$0B,$06,$51 ; $CD7A16
    db $26,$88,$80,$03,$82,$20,$4A,$15,$A4,$02,$0E,$54,$09,$A8,$12,$EB ; $CD7A26
    db $77,$53,$07,$03,$8C,$53,$40,$A2,$48,$E3,$A6,$80,$4D,$B8,$F5,$3F ; $CD7A36
    db $40,$2F,$90,$37,$48,$37,$88,$17,$08,$5F,$A0,$6F,$10,$3F,$00,$AE ; $CD7A46
    db $F9,$4A,$E0,$01,$52,$60,$18,$92,$08,$12,$95,$D8,$22,$18,$BF,$4F ; $CD7A56
    db $8F,$01,$60,$9F,$08,$70,$BF,$7F,$BF,$E0,$87,$7F,$00,$01,$90,$30 ; $CD7A66
    db $80,$10,$80,$00,$8F,$5C,$73,$85,$01,$A4,$B7,$FC,$FD,$3F,$01,$FF ; $CD7A76
    db $01,$EA,$A7,$00,$A1,$1E,$00,$F6,$01,$FC,$A7,$02,$BE,$DF,$FF,$0E ; $CD7A86
    db $67,$DF,$5B,$17,$2D,$27,$5B,$17,$0E,$27,$FF,$DF,$B4,$FA,$EF,$E7 ; $CD7A96
    db $18,$E7,$FF,$F7,$01,$F3,$F3,$24,$FF,$FB,$36,$51,$18,$05,$0C,$F4 ; $CD7AA6
    db $03,$25,$1F,$FD,$FF,$FE,$09,$E0,$1F,$C0,$FE,$01,$E0,$FF,$60,$FF ; $CD7AB6
    db $C8,$FF,$F0,$CC,$01,$09,$78,$3D,$FF,$01,$07,$1F,$D5,$ED,$00,$8A ; $CD7AC6
    db $10,$C5,$0E,$F0,$08,$F6,$0F,$1A,$F0,$0C,$F3,$01,$AC,$3B,$55,$02 ; $CD7AD6
    db $0E,$7D,$07,$1D,$89,$04,$25,$8B,$5B,$75,$00,$8F,$0A,$A0,$C4,$11 ; $CD7AE6
    db $B0,$42,$06,$F0,$06,$F8,$F9,$06,$D2,$0D,$45,$BA,$5A,$BB,$2A,$1C ; $CD7AF6
    db $08,$85,$09,$22,$0B,$55,$00,$A2,$08,$54,$2C,$15,$40,$6E,$EA,$07 ; $CD7B06
    db $FD,$F3,$A9,$D2,$09,$15,$AA,$1A,$05,$58,$AC,$A8,$7D,$02,$01,$34 ; $CD7B16
    db $B0,$1B,$78,$A8,$01,$23,$60,$15,$33,$68,$82,$03,$E0,$07,$50,$00 ; $CD7B26
    db $93,$00,$57,$71,$90,$9D,$22,$08,$AE,$DF,$12,$80,$35,$34,$8A,$A9 ; $CD7B36
    db $44,$5A,$A1,$A8,$57,$3F,$40,$93,$F7,$3E,$41,$1A,$23,$41,$14,$6B ; $CD7B46
    db $39,$B3,$97,$A3,$BF,$20,$D5,$41,$82,$6B,$C1,$14,$03,$29,$F1,$EB ; $CD7B56
    db $40,$B5,$A4,$01,$13,$44,$8C,$22,$97,$B7,$BF,$0E,$80,$54,$82,$28 ; $CD7B66
    db $8A,$50,$08,$A3,$80,$5D,$7E,$81,$AC,$25,$54,$29,$55,$A0,$AE,$0A ; $CD7B76
    db $C7,$00,$7E,$FD,$57,$9D,$03,$09,$9F,$02,$C4,$89,$0F,$07,$03,$A8 ; $CD7B86
    db $06,$B8,$0D,$04,$50,$02,$0E,$52,$0A,$A8,$07,$E4,$17,$04,$54,$B8 ; $CD7B96
    db $47,$27,$A0,$33,$04,$9F,$22,$0D,$A0,$05,$50,$00,$AB,$40,$BB,$08 ; $CD7BA6
    db $50,$48,$82,$40,$1C,$D7,$E4,$2E,$81,$28,$47,$51,$37,$84,$BF,$03 ; $CD7BB6
    db $7F,$8F,$FF,$77,$9D,$79,$80,$6A,$02,$D4,$08,$A0,$B5,$FB,$1C,$1E ; $CD7BC6
    db $04,$A9,$02,$80,$BF,$27,$60,$D9,$AF,$8F,$EB,$E3,$23,$FB,$F8,$23 ; $CD7BD6
    db $9F,$40,$E7,$95,$00,$50,$7B,$C0,$2B,$E2,$A5,$D9,$FF,$C0,$50,$1C ; $CD7BE6
    db $77,$43,$7F,$0B,$B2,$F2,$3F,$7A,$99,$32,$FE,$3F,$E3,$7E,$4F,$FB ; $CD7BF6
    db $3F,$ED,$FE,$FA,$F9,$EB,$E2,$66,$09,$78,$47,$E0,$3F,$D5,$19,$EF ; $CD7C06
    db $30,$BC,$3B,$14,$01,$90,$1A,$06,$80,$38,$0B,$E3,$50,$AF,$A0,$5F ; $CD7C16
    db $40,$BE,$81,$7E,$06,$F9,$0D,$F2,$4A,$B5,$94,$4B,$10,$39,$01,$E8 ; $CD7C26
    db $39,$E8,$44,$C5,$06,$02,$A0,$D3,$04,$6F,$90,$A5,$5A,$4C,$33,$93 ; $CD7C36
    db $6C,$AF,$50,$15,$EA,$01,$FE,$07,$F8,$0F,$20,$05,$20,$8C,$40,$13 ; $CD7C46
    db $80,$2F,$80,$15,$B3,$E3,$07,$E1,$00,$00,$F5,$00,$F6,$C1,$01,$FE ; $CD7C56
    db $00,$E7,$1E,$71,$88,$01,$ED,$71,$02,$FA,$01,$F9,$00,$F7,$00,$FB ; $CD7C66
    db $04,$EB,$04,$E7,$08,$D7,$08,$15,$9D,$AE,$E8,$A5,$CE,$58,$FA,$2B ; $CD7C76
    db $27,$15,$00,$B7,$6A,$15,$D5,$0A,$F6,$01,$FD,$E0,$2F,$51,$04,$28 ; $CD7C86
    db $7E,$82,$04,$DF,$77,$51,$FF,$B3,$02,$62,$DF,$27,$04,$51,$52,$9B ; $CD7C96
    db $55,$EC,$34,$57,$E2,$03,$04,$73,$9B,$54,$00,$CE,$A9,$A9,$54,$47 ; $CD7CA6
    db $10,$8B,$20,$55,$51,$47,$0C,$A2,$08,$F5,$01,$63,$45,$A8,$8A,$54 ; $CD7CB6
    db $51,$41,$1F,$22,$55,$95,$70,$2A,$8A,$35,$45,$10,$A9,$00,$D1,$04 ; $CD7CC6
    db $E2,$08,$65,$E3,$5B,$56,$86,$03,$43,$A8,$37,$B8,$60,$51,$2A,$A2 ; $CD7CD6
    db $15,$55,$8A,$B2,$45,$51,$A8,$AB,$54,$37,$29,$00,$7D,$00,$4F,$BF ; $CD7CE6
    db $82,$0C,$FE,$00,$0C,$57,$83,$FE,$7F,$93,$7F,$00,$E1,$70,$05,$69 ; $CD7CF6
    db $02,$D7,$00,$AF,$39,$00,$4F,$03,$00,$DF,$A0,$1A,$C8,$34,$77,$14 ; $CD7D06
    db $2B,$CE,$55,$85,$A2,$9B,$44,$27,$18,$9F,$60,$BF,$40,$7B,$80,$F7 ; $CD7D16
    db $03,$19,$F7,$08,$FF,$04,$00,$05,$18,$22,$3C,$42,$0C,$02,$02,$3B ; $CD7D26
    db $FC,$FE,$41,$15,$EF,$7F,$F3,$08,$2F,$E1,$07,$0F,$3F,$3F,$0F,$8E ; $CD7D36
    db $00,$07,$03,$37,$00,$01,$00,$5D,$99,$C0,$D9,$80,$00,$5B,$DB,$AB ; $CD7D46
    db $07,$D2,$46,$F3,$74,$F1,$BC,$E1,$F3,$02,$01,$0C,$54,$02,$F8,$E1 ; $CD7D56
    db $01,$01,$FF,$FB,$C7,$01,$F9,$F9,$4A,$BE,$FC,$48,$01,$25,$53,$06 ; $CD7D66
    db $7A,$DF,$27,$01,$FF,$5B,$3A,$3E,$05,$09,$43,$DF,$FF,$F8,$FF,$A2 ; $CD7D76
    db $A7,$D7,$29,$05,$A0,$05,$E8,$08,$1F,$98,$D3,$01,$01,$2C,$F3,$0B ; $CD7D86
    db $F0,$2F,$F0,$BC,$05,$02,$79,$04,$A9,$E1,$00,$12,$ED,$0B,$F4,$09 ; $CD7D96
    db $F6,$02,$FD,$23,$04,$FB,$60,$03,$02,$12,$00,$0B,$00,$51,$09,$A2 ; $CD7DA6
    db $00,$55,$C5,$01,$EE,$00,$DE,$20,$CF,$30,$FF,$38,$1D,$C0,$02,$F1 ; $CD7DB6
    db $00,$DF,$00,$CF,$92,$0B,$8E,$1F,$55,$CE,$B3,$EF,$12,$08,$BF,$40 ; $CD7DC6
    db $3A,$1F,$55,$50,$F3,$F0,$0F,$F0,$01,$1F,$AA,$00,$95,$23,$00,$9F ; $CD7DD6
    db $4C,$5D,$1F,$AA,$01,$55,$75,$0A,$E0,$00,$F0,$0F,$24,$1F,$63,$FB ; $CD7DE6
    db $50,$05,$D1,$02,$5F,$89,$FB,$50,$AA,$29,$1B,$03,$DD,$7F,$1E,$00 ; $CD7DF6
    db $54,$FC,$01,$1F,$8E,$8F,$7F,$03,$A8,$03,$03,$60,$1F,$0D,$FB,$00 ; $CD7E06
    db $7A,$85,$2C,$D6,$29,$1F,$00,$04,$50,$06,$01,$40,$32,$02,$C4,$90 ; $CD7E16
    db $1F,$39,$02,$00,$DF,$20,$EE,$11,$15,$EA,$1B,$E4,$90,$1F,$44,$81 ; $CD7E26
    db $3B,$00,$1F,$39,$A4,$04,$E6,$20,$DF,$1E,$3D,$C3,$03,$5A,$A5,$E3 ; $CD7E36
    db $1E,$EE,$1F,$01,$91,$E8,$13,$02,$F9,$01,$E0,$57,$5E,$54,$20,$B0 ; $CD7E46
    db $65,$E0,$26,$FF,$3C,$BF,$01,$DE,$5B,$AD,$FF,$52,$FE,$21,$65,$82 ; $CD7E56
    db $32,$00,$0D,$DE,$40,$08,$DF,$FF,$BF,$3F,$02,$B1,$07,$E6,$F0,$8C ; $CD7E66
    db $FE,$C0,$1F,$40,$00,$48,$80,$2D,$09,$00,$77,$67,$FB,$60,$B5,$FC ; $CD7E76
    db $FF,$50,$7F,$A7,$9B,$BE,$01,$3F,$02,$00,$45,$40,$FF,$40,$FE,$26 ; $CD7E86
    db $F0,$14,$33,$04,$9E,$5F,$23,$05,$FA,$60,$F8,$3D,$C8,$03,$42,$1C ; $CD7E96
    db $AA,$57,$BD,$00,$0C,$59,$86,$BE,$41,$CA,$35,$10,$EF,$4C,$B3,$17 ; $CD7EA6
    db $E8,$01,$F3,$B8,$70,$0C,$21,$18,$1E,$20,$0A,$C0,$10,$00,$4C,$00 ; $CD7EB6
    db $17,$01,$F3,$00,$09,$9F,$60,$27,$D8,$61,$5B,$7F,$80,$FF,$D8,$9B ; $CD7EC6
    db $9F,$00,$74,$27,$E0,$BD,$8C,$FD,$00,$7A,$01,$1D,$F5,$02,$EB,$03 ; $CD7ED6
    db $D1,$3F,$00,$FF,$C0,$03,$01,$AF,$10,$DF,$20,$5F,$10,$20,$BF,$40 ; $CD7EE6
    db $2D,$82,$01,$B5,$8E,$2D,$F3,$45,$09,$47,$01,$CF,$00,$CD,$58,$22 ; $CD7EF6
    db $FB,$89,$0D,$E2,$03,$EF,$AE,$6C,$2B,$29,$00,$79,$1F,$24,$01,$5C ; $CD7F06
    db $BF,$85,$02,$7A,$FC,$01,$0F,$25,$B3,$55,$E1,$03,$5F,$55,$2A,$2A ; $CD7F16
    db $DC,$57,$B2,$64,$98,$0F,$AA,$FA,$17,$03,$1F,$A7,$97,$C3,$02,$1F ; $CD7F26
    db $5D,$00,$BB,$A5,$63,$67,$E1,$01,$1F,$4A,$A5,$95,$80,$02,$12,$DB ; $CD7F36
    db $24,$2B,$C4,$E7,$43,$08,$01,$38,$69,$F0,$01,$40,$2A,$80,$C0,$EE ; $CD7F46
    db $0F,$C0,$67,$E5,$9F,$E0,$5D,$5A,$C0,$43,$01,$80,$00,$E3,$09,$F0 ; $CD7F56
    db $CB,$07,$00,$03,$4D,$48,$BD,$51,$F7,$04,$0E,$4C,$B1,$E7,$97,$BF ; $CD7F66
    db $5B,$D7,$9F,$13,$FE,$FF,$00,$9E,$1D,$FA,$5B,$04,$1F,$2B,$03,$EF ; $CD7F76
    db $7F,$EB,$04,$FE,$7F,$DC,$8B,$02,$FC,$25,$01,$1E,$00,$04,$5B,$A4 ; $CD7F86
    db $1F,$E5,$B9,$EF,$E0,$0F,$3F,$A0,$FF,$F2,$FF,$07,$A1,$FF,$70,$FF ; $CD7F96
    db $E2,$A5,$0F,$1F,$2E,$BD,$1C,$24,$03,$FB,$1F,$F9,$04,$BF,$94,$CD ; $CD7FA6
    db $03,$01,$E3,$0E,$3F,$01,$FE,$D8,$16,$1F,$03,$80,$3F,$02,$20,$8F ; $CD7FB6
    db $08,$E3,$02,$F8,$C5,$1F,$40,$75,$9D,$05,$EB,$01,$1F,$01,$01,$80 ; $CD7FC6
    db $1F,$1C,$80,$FF,$FC,$05,$1E,$7B,$63,$00,$04,$1F,$93,$63,$C1,$08 ; $CD7FD6
    db $00,$84,$7B,$C6,$39,$80,$17,$27,$D8,$1D,$E2,$00,$FC,$80,$3F,$84 ; $CD7FE6
    db $00,$C6,$E0,$15,$27,$00,$1D,$ED,$99,$00,$3F,$2D,$D2,$EF,$10,$07 ; $CD7FF6
    db $89,$74,$F5,$00,$37,$0C,$1B,$3F,$C0,$03,$2D,$E8,$75,$04,$8A,$00 ; $CD8006
    db $FA,$01,$49,$5F,$04,$BE,$09,$DF,$F0,$06,$60,$00,$B7,$08,$25,$4F ; $CD8016
    db $30,$13,$BD,$DE,$7F,$11,$01,$B0,$1F,$9F,$00,$F9,$04,$03,$55,$DF ; $CD8026
    db $52,$9B,$FF,$BF,$D7,$93,$03,$3F,$CF,$4A,$69,$30,$75,$01,$F7,$08 ; $CD8036
    db $37,$09,$08,$0F,$F0,$00,$C3,$67,$C0,$E3,$01,$6F,$DB,$06,$01,$00 ; $CD8046
    db $C0,$00,$00,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06 ; $CD8056
    db $00,$07,$00,$08,$00,$08,$00,$08,$00,$08,$00,$08,$00,$08,$00,$08 ; $CD8066
    db $00,$08,$00,$08,$00,$09,$00,$0A,$00,$0B,$00,$0C,$00,$0D,$00,$06 ; $CD8076
    db $00,$06,$00,$0E,$00,$0F,$00,$06,$00,$06,$00,$06,$00,$10,$00,$11 ; $CD8086
    db $00,$00,$00,$12,$00,$13,$00,$14,$00,$15,$00,$16,$00,$17,$00,$18 ; $CD8096
    db $00,$19,$00,$1A,$00,$1B,$00,$1C,$00,$1D,$00,$1E,$00,$1F,$00,$20 ; $CD80A6
    db $00,$21,$00,$22,$00,$23,$00,$24,$00,$25,$00,$26,$00,$27,$00,$28 ; $CD80B6
    db $00,$18,$00,$29,$00,$2A,$00,$2B,$00,$2C,$00,$2D,$00,$2E,$00,$2F ; $CD80C6
    db $00,$30,$00,$31,$00,$32,$00,$33,$00,$34,$00,$35,$00,$36,$00,$37 ; $CD80D6
    db $00,$38,$00,$39,$00,$3A,$00,$3B,$00,$3C,$00,$3D,$00,$3E,$00,$3F ; $CD80E6
    db $00,$40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$47 ; $CD80F6
    db $00,$48,$00,$49,$00,$4A,$00,$4B,$00,$4C,$00,$4D,$00,$4E,$00,$4F ; $CD8106
    db $00,$50,$00,$51,$00,$52,$00,$53,$00,$54,$00,$55,$00,$56,$00,$57 ; $CD8116
    db $00,$58,$00,$59,$00,$5A,$00,$5B,$00,$5C,$00,$5D,$00,$5E,$00,$5F ; $CD8126
    db $00,$60,$00,$61,$00,$62,$00,$63,$00,$64,$00,$65,$00,$66,$00,$67 ; $CD8136
    db $00,$68,$00,$69,$00,$6A,$00,$6B,$00,$6C,$00,$6D,$00,$6E,$00,$6F ; $CD8146
    db $00,$70,$00,$71,$00,$72,$00,$73,$00,$74,$00,$75,$00,$76,$00,$77 ; $CD8156
    db $00,$78,$00,$79,$00,$7A,$00,$7B,$00,$7C,$00,$7D,$00,$7E,$00,$7F ; $CD8166
    db $00,$80,$00,$81,$00,$82,$00,$83,$00,$84,$00,$85,$00,$86,$00,$87 ; $CD8176
    db $00,$88,$00,$89,$00,$8A,$00,$8B,$00,$8C,$00,$8D,$00,$8E,$00,$8F ; $CD8186
    db $00,$90,$00,$91,$00,$92,$00,$93,$00,$94,$00,$95,$00,$96,$00,$97 ; $CD8196
    db $00,$98,$00,$99,$00,$9A,$00,$9B,$00,$9C,$00,$9D,$00,$9E,$00,$9F ; $CD81A6
    db $00,$A0,$00,$A1,$00,$A2,$00,$A3,$00,$A4,$00,$A5,$00,$A6,$00,$A7 ; $CD81B6
    db $00,$A8,$00,$A9,$00,$AA,$00,$AB,$00,$AC,$00,$AD,$00,$AE,$00,$AF ; $CD81C6
    db $00,$B0,$00,$91,$00,$B1,$00,$B2,$00,$B3,$00,$B4,$00,$B5,$00,$B6 ; $CD81D6
    db $00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$BB,$00,$BC,$00,$BD,$00,$BE ; $CD81E6
    db $00,$BF,$00,$C0,$00,$C1,$00,$C2,$00,$C3,$00,$C4,$00,$C5,$00,$C6 ; $CD81F6
    db $00,$C7,$00,$C8,$00,$C9,$00,$CA,$00,$CB,$00,$CC,$00,$CD,$00,$CE ; $CD8206
    db $00,$CF,$00,$D0,$00,$D1,$00,$D2,$00,$D3,$00,$D4,$00,$D5,$00,$D6 ; $CD8216
    db $00,$D7,$00,$D8,$00,$D9,$00,$DA,$00,$DB,$00,$DC,$00,$DD,$00,$DE ; $CD8226
    db $00,$DF,$00,$E0,$00,$E1,$00,$E2,$00,$E3,$00,$E4,$00,$E5,$00,$E6 ; $CD8236
    db $00,$E7,$00,$E8,$00,$E9,$00,$EA,$00,$EB,$00,$EC,$00,$ED,$00,$EE ; $CD8246
    db $00,$EF,$00,$91,$00,$F0,$00,$F1,$00,$F2,$00,$F3,$00,$F4,$00,$F5 ; $CD8256
    db $00,$F6,$00,$F7,$00,$F8,$00,$F9,$00,$FA,$00,$FB,$00,$FC,$00,$FD ; $CD8266
    db $00,$FE,$00,$FF,$01,$00,$01,$01,$01,$02,$01,$03,$01,$04,$01,$05 ; $CD8276
    db $01,$06,$01,$07,$01,$08,$01,$09,$01,$0A,$01,$0B,$01,$0C,$01,$0D ; $CD8286
    db $01,$0E,$01,$0F,$01,$10,$01,$11,$01,$12,$01,$13,$01,$14,$01,$15 ; $CD8296
    db $01,$16,$01,$17,$01,$18,$01,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D ; $CD82A6
    db $01,$1E,$01,$1F,$01,$20,$01,$21,$01,$22,$01,$23,$01,$24,$01,$25 ; $CD82B6
    db $01,$26,$01,$27,$01,$28,$01,$29,$01,$2A,$01,$2B,$01,$2C,$01,$2D ; $CD82C6
    db $01,$2E,$01,$2F,$01,$30,$01,$31,$01,$32,$01,$33,$01,$34,$01,$35 ; $CD82D6
    db $01,$36,$01,$37,$01,$38,$01,$39,$01,$3A,$01,$3B,$01,$3C,$01,$3D ; $CD82E6
    db $01,$3E,$01,$3F,$01,$40,$01,$41,$01,$42,$01,$43,$01,$44,$01,$45 ; $CD82F6
    db $00,$E7,$01,$46,$01,$47,$01,$48,$01,$49,$01,$4A,$01,$4B,$01,$4C ; $CD8306
    db $01,$4D,$01,$4E,$01,$4F,$01,$50,$01,$51,$01,$52,$01,$53,$01,$54 ; $CD8316
    db $01,$55,$01,$56,$01,$57,$01,$58,$01,$59,$01,$5A,$01,$5B,$01,$5C ; $CD8326
    db $01,$5D,$01,$5E,$01,$5F,$01,$60,$01,$61,$01,$62,$01,$63,$01,$64 ; $CD8336
    db $01,$65,$01,$66,$01,$67,$01,$68,$01,$69,$01,$6A,$01,$6B,$01,$6C ; $CD8346
    db $01,$6D,$01,$6E,$01,$6F,$01,$70,$01,$71,$01,$72,$01,$73,$01,$74 ; $CD8356
    db $01,$75,$01,$76,$01,$77,$01,$78,$01,$79,$01,$7A,$01,$7B,$01,$7C ; $CD8366
    db $01,$7D,$01,$7E,$01,$7F,$01,$80,$01,$81,$01,$82,$01,$83,$01,$84 ; $CD8376
    db $01,$85,$01,$86,$01,$87,$01,$88,$01,$89,$01,$8A,$01,$8B,$01,$8C ; $CD8386
    db $01,$8D,$01,$8E,$01,$8F,$01,$90,$01,$91,$01,$92,$01,$93,$01,$94 ; $CD8396
    db $01,$95,$01,$96,$01,$97,$01,$98,$01,$99,$01,$9A,$01,$9B,$01,$9C ; $CD83A6
    db $01,$9D,$01,$9E,$01,$9F,$01,$A0,$01,$A1,$01,$A2,$01,$A3,$01,$A4 ; $CD83B6
    db $01,$A5,$01,$A6,$01,$A7,$01,$A8,$01,$A9,$01,$AA,$01,$AB,$01,$AC ; $CD83C6
    db $01,$AD,$01,$AE,$01,$AF,$01,$B0,$01,$B1,$01,$B2,$01,$B3,$01,$B4 ; $CD83D6
    db $01,$B5,$01,$B6,$01,$B7,$01,$B8,$01,$B9,$01,$BA,$01,$BB,$01,$BC ; $CD83E6
    db $01,$BD,$01,$BE,$01,$BF,$01,$C0,$01,$C1,$01,$C2,$01,$C3,$01,$C4 ; $CD83F6
    db $01,$C5,$01,$C6,$01,$C7,$01,$C8,$01,$C9,$01,$CA,$01,$CB,$01,$CC ; $CD8406
    db $01,$CD,$01,$CE,$01,$CF,$01,$D0,$01,$D1,$01,$D2,$01,$D3,$01,$D4 ; $CD8416
    db $01,$D5,$01,$D6,$01,$D7,$01,$D8,$01,$D9,$01,$DA,$01,$DB,$01,$DC ; $CD8426
    db $01,$DD,$01,$DE,$01,$DF,$01,$E0,$01,$E1,$01,$E2,$01,$E3,$01,$E4 ; $CD8436
    db $01,$E5,$01,$E6,$01,$E7,$01,$E8,$01,$E9,$01,$EA,$01,$EB,$01,$EC ; $CD8446
    db $01,$ED,$01,$EE,$01,$EF,$01,$F0,$01,$F1,$01,$F2,$01,$F3,$01,$F4 ; $CD8456
    db $01,$F5,$01,$F6,$01,$F7,$01,$F8,$01,$F9,$01,$FA,$01,$FB,$01,$FC ; $CD8466
    db $01,$FD,$01,$FE,$01,$FF,$02,$00,$02,$01,$02,$02,$00,$6B,$02,$03 ; $CD8476
    db $02,$04,$02,$05,$02,$06,$02,$07,$02,$08,$02,$09,$02,$0A,$02,$0B ; $CD8486
    db $02,$0C,$02,$0D,$02,$0E,$02,$0F,$02,$10,$02,$11,$02,$12,$02,$13 ; $CD8496
    db $02,$14,$02,$15,$02,$16,$02,$17,$02,$18,$02,$19,$02,$1A,$02,$1B ; $CD84A6
    db $02,$1C,$02,$1D,$02,$1E,$02,$1F,$02,$20,$02,$21,$02,$22,$02,$23 ; $CD84B6
    db $02,$24,$02,$25,$01,$28,$02,$26,$02,$27,$02,$28,$02,$29,$02,$2A ; $CD84C6
    db $02,$2B,$02,$2C,$02,$2D,$02,$2E,$02,$2F,$02,$30,$02,$31,$02,$32 ; $CD84D6
    db $02,$33,$02,$34,$02,$35,$02,$36,$02,$37,$02,$38,$02,$39,$02,$3A ; $CD84E6
    db $02,$3B,$02,$3C,$02,$3D,$02,$3E,$02,$3F,$02,$40,$02,$41,$02,$42 ; $CD84F6
    db $02,$43,$02,$44,$02,$38,$02,$45,$02,$46,$02,$47,$02,$48,$02,$49 ; $CD8506
    db $02,$4A,$02,$4B,$02,$4C,$02,$4D,$02,$4E,$02,$4F,$02,$50,$02,$51 ; $CD8516
    db $02,$52,$02,$53,$02,$54,$02,$55,$02,$56,$02,$57,$02,$58,$02,$59 ; $CD8526
    db $02,$5A,$02,$5B,$02,$5C,$02,$5D,$02,$5E,$02,$5F,$02,$60,$02,$61 ; $CD8536
    db $02,$62,$02,$63,$02,$64,$02,$65,$02,$66,$02,$67,$02,$68,$02,$69 ; $CD8546
    db $02,$6A,$02,$6B,$02,$6C,$02,$6D,$02,$6E,$02,$6F,$02,$70,$02,$71 ; $CD8556
    db $02,$72,$02,$73,$02,$74,$02,$75,$02,$76,$02,$77,$02,$78,$02,$79 ; $CD8566
    db $02,$7A,$02,$7B,$02,$7C,$02,$7D,$02,$7E,$02,$7F,$02,$80,$02,$81 ; $CD8576
    db $02,$82,$02,$83,$02,$84,$02,$85,$02,$86,$02,$87,$02,$88,$02,$89 ; $CD8586
    db $02,$8A,$02,$8B,$02,$8C,$02,$8D,$02,$8E,$02,$8F,$02,$90,$02,$91 ; $CD8596
    db $02,$92,$02,$93,$02,$94,$02,$95,$02,$96,$02,$97,$02,$98,$02,$99 ; $CD85A6
    db $02,$9A,$02,$9B,$02,$9C,$02,$9D,$02,$9E,$02,$9F,$02,$A0,$00,$6B ; $CD85B6
    db $02,$A1,$02,$A2,$02,$A3,$02,$A4,$02,$A5,$02,$A6,$02,$A7,$02,$A8 ; $CD85C6
    db $02,$A9,$02,$AA,$02,$AB,$02,$AC,$02,$AD,$02,$AE,$02,$AF,$02,$B0 ; $CD85D6
    db $02,$B1,$02,$B2,$02,$B3,$02,$B4,$02,$B5,$02,$B6,$02,$B7,$02,$B8 ; $CD85E6
    db $02,$B9,$02,$BA,$02,$BB,$02,$BC,$02,$BD,$02,$BE,$02,$BF,$02,$C0 ; $CD85F6
    db $02,$C1,$02,$C2,$02,$C3,$02,$C4,$02,$C5,$02,$C6,$02,$C7,$02,$C8 ; $CD8606
    db $02,$C9,$02,$CA,$01,$28,$02,$CB,$02,$CC,$02,$CD,$02,$CE,$02,$CF ; $CD8616
    db $02,$D0,$02,$D1,$02,$D2,$02,$D3,$02,$D4,$02,$D5,$02,$D6,$02,$D7 ; $CD8626
    db $02,$D8,$02,$D9,$02,$DA,$02,$DB,$02,$DC,$02,$DD,$02,$DE,$02,$DF ; $CD8636
    db $02,$E0,$02,$E1,$02,$E2,$02,$E3,$02,$E4,$02,$E5,$02,$E6,$02,$E7 ; $CD8646
    db $02,$E8,$02,$E9,$02,$EA,$02,$EB,$02,$EC,$02,$ED,$02,$EE,$02,$EF ; $CD8656
    db $02,$F0,$02,$F1,$02,$F2,$02,$F3,$02,$F4,$02,$F5,$02,$F6,$02,$F7 ; $CD8666
    db $02,$F8,$02,$F9,$02,$FA,$02,$FB,$02,$FC,$02,$FD,$02,$FE,$02,$FF ; $CD8676
    db $03,$00,$03,$01,$03,$02,$03,$03,$03,$04,$03,$05,$03,$06,$03,$07 ; $CD8686
    db $03,$08,$03,$09,$03,$0A,$03,$0B,$01,$28,$03,$0C,$03,$0D,$03,$0E ; $CD8696
    db $03,$0F,$03,$10,$03,$11,$03,$12,$03,$13,$03,$14,$03,$15,$03,$16 ; $CD86A6
    db $03,$17,$03,$18,$03,$19,$03,$1A,$03,$1B,$03,$1C,$03,$1D,$03,$1E ; $CD86B6
    db $03,$1F,$00,$18,$03,$20,$03,$21,$03,$22,$03,$23,$03,$24,$03,$25 ; $CD86C6
    db $03,$26,$00,$00,$03,$27,$03,$28,$03,$29,$03,$2A,$03,$2B,$03,$2C ; $CD86D6
    db $03,$2D,$03,$2E,$03,$2E,$03,$2E,$03,$2E,$03,$2E,$03,$2E,$03,$2E ; $CD86E6
    db $03,$2E,$03,$2F,$03,$30,$03,$31,$03,$32,$03,$33,$03,$34,$03,$35 ; $CD86F6
    db $03,$36,$03,$36,$03,$37,$03,$36,$03,$36,$03,$36,$03,$38,$03,$39 ; $CD8706
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8716
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8726
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8736
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8746
    db $00,$00,$20,$00,$1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8756
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8766
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8776
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8786
    db $00,$00,$00,$00,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00 ; $CD8796
    db $06,$00,$07,$00,$08,$00,$09,$00,$0A,$00,$0B,$00,$0C,$00,$0D,$00 ; $CD87A6
    db $0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$00,$15,$00 ; $CD87B6
    db $16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$1B,$00,$1C,$00,$1D,$00 ; $CD87C6
    db $1E,$00,$1F,$00,$01,$40,$20,$00,$00,$00,$00,$00,$21,$00,$22,$00 ; $CD87D6
    db $23,$00,$24,$00,$25,$00,$26,$00,$27,$00,$28,$00,$29,$00,$2A,$00 ; $CD87E6
    db $2B,$00,$2C,$00,$2D,$00,$2E,$00,$2F,$00,$30,$00,$31,$00,$32,$00 ; $CD87F6
    db $33,$00,$34,$00,$35,$00,$36,$00,$37,$00,$38,$00,$00,$00,$00,$00 ; $CD8806
    db $39,$00,$3A,$00,$3B,$00,$3C,$00,$00,$00,$00,$00,$3D,$00,$3E,$00 ; $CD8816
    db $3F,$00,$40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00 ; $CD8826
    db $47,$00,$47,$00,$47,$00,$48,$00,$49,$00,$4A,$00,$4B,$00,$4C,$00 ; $CD8836
    db $4D,$00,$4E,$00,$4F,$00,$50,$00,$51,$00,$00,$00,$00,$00,$00,$00 ; $CD8846
    db $00,$00,$52,$00,$53,$00,$54,$00,$55,$00,$56,$00,$57,$00,$58,$00 ; $CD8856
    db $59,$00,$5A,$00,$5B,$00,$5C,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00 ; $CD8866
    db $60,$00,$60,$00,$60,$00,$61,$00,$62,$00,$63,$00,$64,$00,$65,$00 ; $CD8876
    db $66,$00,$67,$00,$68,$00,$69,$00,$6A,$00,$00,$00,$00,$00,$00,$00 ; $CD8886
    db $00,$00,$6B,$00,$6C,$00,$6D,$00,$6E,$00,$6F,$00,$00,$00,$00,$00 ; $CD8896
    db $00,$00,$00,$00,$70,$00,$71,$00,$72,$00,$73,$00,$74,$00,$75,$00 ; $CD88A6
    db $75,$00,$75,$00,$75,$00,$76,$00,$77,$00,$78,$00,$79,$00,$7A,$00 ; $CD88B6
    db $7B,$00,$7C,$00,$7D,$00,$7E,$00,$7F,$00,$80,$00,$00,$00,$00,$00 ; $CD88C6
    db $81,$00,$82,$00,$6C,$00,$83,$00,$84,$00,$00,$00,$00,$00,$00,$00 ; $CD88D6
    db $00,$00,$00,$00,$00,$00,$85,$00,$86,$00,$87,$00,$88,$00,$89,$00 ; $CD88E6
    db $8A,$00,$8A,$00,$8A,$00,$8A,$00,$8B,$00,$8C,$00,$8D,$00,$8E,$00 ; $CD88F6
    db $8F,$00,$90,$00,$91,$00,$92,$00,$93,$00,$94,$00,$95,$00,$95,$40 ; $CD8906
    db $96,$00,$97,$00,$6C,$00,$98,$00,$99,$00,$00,$00,$00,$00,$00,$00 ; $CD8916
    db $00,$00,$00,$00,$00,$00,$9A,$00,$9B,$00,$9C,$00,$9D,$00,$5F,$00 ; $CD8926
    db $60,$00,$60,$00,$60,$00,$60,$00,$61,$00,$9E,$00,$9F,$00,$A0,$00 ; $CD8936
    db $A1,$00,$A2,$00,$A3,$00,$A4,$00,$A5,$00,$A6,$00,$A7,$00,$A8,$00 ; $CD8946
    db $97,$00,$97,$00,$6C,$00,$A9,$00,$AA,$00,$00,$00,$00,$00,$00,$00 ; $CD8956
    db $00,$00,$00,$00,$00,$00,$AB,$00,$AC,$00,$AD,$00,$AE,$00,$74,$00 ; $CD8966
    db $75,$00,$75,$00,$75,$00,$75,$00,$76,$00,$AF,$00,$B0,$00,$B1,$00 ; $CD8976
    db $B2,$00,$B3,$00,$B4,$00,$B5,$00,$00,$00,$00,$00,$00,$00,$B6,$00 ; $CD8986
    db $B7,$00,$B8,$00,$B9,$00,$BA,$00,$BB,$00,$00,$00,$00,$00,$00,$00 ; $CD8996
    db $00,$00,$00,$00,$00,$00,$BC,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00 ; $CD89A6
    db $C1,$00,$C1,$00,$C1,$00,$C2,$00,$C3,$00,$C4,$00,$C5,$00,$C6,$00 ; $CD89B6
    db $C7,$00,$C8,$00,$C9,$00,$CA,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD89C6
    db $CB,$00,$CC,$00,$CD,$00,$CE,$00,$CF,$00,$D0,$00,$00,$00,$00,$00 ; $CD89D6
    db $00,$00,$00,$00,$D1,$00,$D2,$00,$D3,$00,$D4,$00,$5F,$00,$60,$00 ; $CD89E6
    db $60,$00,$60,$00,$60,$00,$61,$00,$D5,$00,$D6,$00,$D7,$00,$D8,$00 ; $CD89F6
    db $D9,$00,$DA,$00,$DB,$00,$DC,$00,$00,$00,$00,$00,$00,$00,$DD,$00 ; $CD8A06
    db $DE,$00,$DF,$00,$E0,$00,$E0,$40,$E1,$00,$E2,$00,$E3,$00,$E4,$00 ; $CD8A16
    db $E5,$00,$E6,$00,$E7,$00,$E8,$00,$E9,$00,$EA,$00,$74,$00,$75,$00 ; $CD8A26
    db $75,$00,$75,$00,$75,$00,$76,$00,$EB,$00,$EC,$00,$ED,$00,$EE,$00 ; $CD8A36
    db $EF,$00,$F0,$00,$F1,$00,$F2,$00,$F3,$00,$F4,$00,$F5,$00,$F6,$00 ; $CD8A46
    db $F7,$00,$ED,$00,$E0,$00,$E0,$40,$F8,$00,$F9,$00,$FA,$00,$FB,$00 ; $CD8A56
    db $FC,$00,$FD,$00,$FE,$00,$FF,$00,$00,$01,$BF,$00,$C0,$00,$C1,$00 ; $CD8A66
    db $C1,$00,$C1,$00,$C2,$00,$01,$01,$02,$01,$03,$01,$ED,$00,$04,$01 ; $CD8A76
    db $05,$01,$06,$01,$ED,$00,$07,$01,$08,$01,$09,$01,$0A,$01,$0B,$01 ; $CD8A86
    db $ED,$00,$ED,$00,$E0,$00,$0C,$01,$0D,$01,$0E,$01,$0F,$01,$10,$01 ; $CD8A96
    db $11,$01,$12,$01,$13,$01,$14,$01,$15,$01,$5F,$00,$60,$00,$60,$00 ; $CD8AA6
    db $60,$00,$60,$00,$61,$00,$D5,$00,$16,$01,$17,$01,$ED,$00,$18,$01 ; $CD8AB6
    db $19,$01,$1A,$01,$1B,$01,$1C,$01,$1C,$01,$1C,$01,$1C,$01,$1C,$01 ; $CD8AC6
    db $1D,$01,$1E,$01,$1F,$01,$20,$01,$21,$01,$22,$01,$23,$01,$24,$01 ; $CD8AD6
    db $25,$01,$25,$01,$26,$01,$27,$01,$28,$01,$74,$00,$75,$00,$75,$00 ; $CD8AE6
    db $75,$00,$75,$00,$76,$00,$29,$01,$2A,$01,$ED,$00,$2B,$01,$2C,$01 ; $CD8AF6
    db $2D,$01,$2E,$01,$2F,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8B06
    db $30,$01,$31,$01,$32,$01,$33,$01,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8B16
    db $00,$00,$00,$00,$34,$01,$35,$01,$36,$01,$37,$01,$38,$01,$38,$01 ; $CD8B26
    db $38,$01,$38,$01,$38,$01,$39,$01,$3A,$01,$3B,$01,$3C,$01,$3D,$01 ; $CD8B36
    db $3E,$01,$3F,$01,$40,$01,$41,$01,$41,$01,$41,$01,$41,$01,$42,$01 ; $CD8B46
    db $43,$01,$44,$01,$45,$01,$46,$01,$47,$01,$48,$01,$48,$01,$48,$01 ; $CD8B56
    db $48,$01,$49,$01,$4A,$01,$4B,$01,$4C,$01,$4C,$01,$4C,$01,$4C,$01 ; $CD8B66
    db $4C,$01,$4C,$01,$4D,$01,$4E,$01,$4F,$01,$50,$01,$51,$01,$52,$01 ; $CD8B76
    db $53,$01,$54,$01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01 ; $CD8B86
    db $55,$01,$55,$01,$56,$01,$57,$01,$58,$01,$59,$01,$5A,$01,$5B,$01 ; $CD8B96
    db $5C,$01,$5D,$01,$5E,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8BA6
    db $00,$00,$00,$00,$5F,$01,$60,$01,$61,$01,$50,$01,$62,$01,$63,$01 ; $CD8BB6
    db $64,$01,$65,$01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01 ; $CD8BC6
    db $55,$01,$55,$01,$56,$01,$66,$01,$67,$01,$67,$01,$67,$01,$67,$01 ; $CD8BD6
    db $68,$01,$69,$01,$6A,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8BE6
    db $00,$00,$00,$00,$6B,$01,$6C,$01,$6D,$01,$50,$01,$6E,$01,$6F,$01 ; $CD8BF6
    db $70,$01,$71,$01,$72,$01,$73,$01,$73,$01,$74,$01,$75,$01,$73,$01 ; $CD8C06
    db $73,$01,$73,$01,$76,$01,$77,$01,$78,$01,$78,$01,$78,$01,$78,$01 ; $CD8C16
    db $78,$01,$79,$01,$7A,$01,$7B,$01,$7C,$01,$7C,$01,$7C,$01,$7C,$01 ; $CD8C26
    db $7C,$01,$7C,$01,$7D,$01,$7E,$01,$7F,$01,$80,$01,$81,$01,$82,$01 ; $CD8C36
    db $83,$01,$84,$01,$85,$01,$86,$01,$87,$01,$00,$00,$00,$00,$88,$01 ; $CD8C46
    db $00,$00,$00,$00,$89,$01,$8A,$01,$8B,$01,$8C,$01,$8D,$01,$8B,$01 ; $CD8C56
    db $8C,$01,$8D,$01,$8E,$01,$8F,$01,$90,$01,$91,$01,$92,$01,$92,$01 ; $CD8C66
    db $92,$01,$92,$01,$93,$01,$94,$01,$95,$01,$96,$01,$97,$01,$98,$01 ; $CD8C76
    db $99,$01,$9A,$01,$9B,$01,$9C,$01,$9D,$01,$9E,$01,$9F,$01,$A0,$01 ; $CD8C86
    db $00,$00,$00,$00,$A1,$01,$A2,$01,$A3,$01,$A4,$01,$A5,$01,$A3,$01 ; $CD8C96
    db $A4,$01,$A5,$01,$A6,$01,$A7,$01,$A8,$01,$A9,$01,$AA,$01,$AB,$01 ; $CD8CA6
    db $AC,$01,$AD,$01,$AD,$01,$AE,$01,$AF,$01,$B0,$01,$B1,$01,$B2,$01 ; $CD8CB6
    db $B3,$01,$B4,$01,$B5,$01,$B6,$01,$B7,$01,$B8,$01,$B9,$01,$BA,$01 ; $CD8CC6
    db $BB,$01,$BB,$01,$BC,$01,$A2,$01,$BD,$01,$BE,$01,$BF,$01,$BD,$01 ; $CD8CD6
    db $BE,$01,$BF,$01,$C0,$01,$C1,$01,$C2,$01,$C3,$01,$C4,$01,$00,$00 ; $CD8CE6
    db $C5,$01,$C6,$01,$C7,$01,$C8,$01,$C9,$01,$CA,$01,$CB,$01,$CC,$01 ; $CD8CF6
    db $CD,$01,$CD,$01,$CD,$01,$CE,$01,$CF,$01,$D0,$01,$D1,$01,$D1,$01 ; $CD8D06
    db $D1,$01,$D1,$01,$D2,$01,$D3,$01,$D4,$01,$D5,$01,$D6,$01,$D4,$01 ; $CD8D16
    db $D5,$01,$D6,$01,$D7,$01,$D8,$01,$D9,$01,$00,$00,$00,$00,$00,$00 ; $CD8D26
    db $00,$00,$00,$00,$DA,$01,$DB,$01,$DC,$01,$BE,$01,$DD,$01,$DC,$01 ; $CD8D36
    db $BE,$01,$DD,$01,$DC,$01,$BE,$01,$DD,$01,$DC,$01,$BE,$01,$DD,$01 ; $CD8D46
    db $DC,$01,$DE,$01,$DF,$01,$A2,$01,$A3,$01,$A4,$01,$A5,$01,$A3,$01 ; $CD8D56
    db $A4,$01,$A5,$01,$E0,$01,$E1,$01,$E2,$01,$E3,$01,$00,$00,$00,$00 ; $CD8D66
    db $00,$00,$E4,$01,$E5,$01,$E6,$01,$A3,$01,$A4,$01,$A5,$01,$A3,$01 ; $CD8D76
    db $A4,$01,$A5,$01,$A3,$01,$A4,$01,$A5,$01,$A3,$01,$A4,$01,$A5,$01 ; $CD8D86
    db $BE,$01,$E7,$01,$E8,$01,$A2,$01,$BD,$01,$BE,$01,$BF,$01,$BD,$01 ; $CD8D96
    db $BE,$01,$BF,$01,$E9,$01,$EA,$01,$EB,$01,$EC,$01,$ED,$01,$EE,$01 ; $CD8DA6
    db $EF,$01,$F0,$01,$F1,$01,$E6,$01,$BD,$01,$BE,$01,$BF,$01,$BD,$01 ; $CD8DB6
    db $BE,$01,$BF,$01,$BD,$01,$BE,$01,$BF,$01,$BD,$01,$BE,$01,$BF,$01 ; $CD8DC6
    db $BE,$01,$F2,$01,$F3,$01,$D3,$01,$D4,$01,$D5,$01,$D6,$01,$D4,$01 ; $CD8DD6
    db $D5,$01,$D6,$01,$DC,$01,$BE,$01,$91,$01,$92,$01,$92,$01,$92,$01 ; $CD8DE6
    db $92,$01,$93,$01,$F4,$01,$F5,$01,$D4,$01,$D5,$01,$D6,$01,$D4,$01 ; $CD8DF6
    db $D5,$01,$D6,$01,$D4,$01,$D5,$01,$D6,$01,$D4,$01,$D5,$01,$D6,$01 ; $CD8E06
    db $DC,$01,$F6,$01,$F7,$01,$F8,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01 ; $CD8E16
    db $F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01 ; $CD8E26
    db $F9,$01,$F9,$01,$FA,$01,$FB,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01 ; $CD8E36
    db $F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01 ; $CD8E46
    db $FC,$01,$FD,$01,$FE,$01,$20,$00,$1C,$00,$00,$00,$00,$00,$00,$00 ; $CD8E56
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8E66
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8E76
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8E86
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$02,$00,$03,$00 ; $CD8E96
    db $04,$00,$05,$00,$06,$00,$07,$00,$08,$00,$09,$00,$0A,$00,$0B,$00 ; $CD8EA6
    db $0C,$00,$0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13,$00 ; $CD8EB6
    db $14,$00,$15,$00,$16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$1B,$00 ; $CD8EC6
    db $1C,$00,$1D,$00,$1E,$00,$1F,$00,$20,$00,$21,$00,$22,$00,$23,$00 ; $CD8ED6
    db $24,$00,$25,$00,$26,$00,$27,$00,$28,$00,$29,$00,$2A,$00,$2B,$00 ; $CD8EE6
    db $2C,$00,$2D,$00,$2E,$00,$2F,$00,$30,$00,$31,$00,$32,$00,$33,$00 ; $CD8EF6
    db $34,$00,$35,$00,$00,$00,$00,$00,$36,$00,$37,$00,$37,$40,$36,$40 ; $CD8F06
    db $00,$00,$00,$00,$35,$40,$38,$00,$39,$00,$3A,$00,$3B,$00,$3C,$00 ; $CD8F16
    db $3D,$00,$3E,$00,$3F,$00,$40,$00,$41,$00,$42,$00,$43,$00,$44,$00 ; $CD8F26
    db $45,$00,$46,$00,$47,$00,$48,$00,$48,$00,$49,$00,$4A,$00,$4B,$00 ; $CD8F36
    db $4C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4D,$00,$4D,$40,$00,$00 ; $CD8F46
    db $00,$00,$00,$00,$00,$00,$4E,$00,$4F,$00,$50,$00,$51,$00,$52,$00 ; $CD8F56
    db $53,$00,$54,$00,$55,$00,$56,$00,$57,$00,$58,$00,$59,$00,$5A,$00 ; $CD8F66
    db $5B,$00,$5C,$00,$5C,$00,$5C,$00,$5C,$00,$5D,$00,$5E,$00,$5F,$00 ; $CD8F76
    db $60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$61,$00,$61,$40,$00,$00 ; $CD8F86
    db $00,$00,$00,$00,$00,$00,$60,$40,$62,$00,$63,$00,$64,$00,$65,$00 ; $CD8F96
    db $00,$00,$00,$00,$00,$00,$00,$00,$66,$00,$67,$00,$68,$00,$69,$00 ; $CD8FA6
    db $6A,$00,$6B,$00,$6C,$00,$6C,$00,$6C,$00,$6D,$00,$6E,$00,$6F,$00 ; $CD8FB6
    db $70,$00,$71,$00,$00,$00,$00,$00,$72,$00,$73,$00,$73,$40,$72,$40 ; $CD8FC6
    db $00,$00,$00,$00,$71,$40,$74,$00,$62,$80,$75,$00,$76,$00,$00,$00 ; $CD8FD6
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$77,$00,$78,$00,$79,$00 ; $CD8FE6
    db $7A,$00,$5B,$00,$5C,$00,$5C,$00,$5C,$00,$5C,$00,$5D,$00,$7B,$00 ; $CD8FF6
    db $7C,$00,$7D,$00,$7E,$00,$7F,$00,$80,$00,$81,$00,$81,$00,$80,$40 ; $CD9006
    db $7E,$00,$7F,$00,$82,$00,$81,$00,$83,$00,$84,$00,$85,$00,$00,$00 ; $CD9016
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$86,$00,$87,$00,$88,$00 ; $CD9026
    db $89,$00,$8A,$00,$6C,$00,$6C,$00,$6C,$00,$6C,$00,$8B,$00,$8C,$00 ; $CD9036
    db $8D,$00,$8E,$00,$8F,$00,$90,$00,$90,$00,$90,$00,$90,$00,$90,$00 ; $CD9046
    db $90,$00,$90,$00,$90,$00,$91,$00,$92,$00,$93,$00,$94,$00,$00,$00 ; $CD9056
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$95,$00,$96,$00,$97,$00 ; $CD9066
    db $98,$00,$5B,$00,$5C,$00,$5C,$00,$5C,$00,$5C,$00,$5D,$00,$99,$00 ; $CD9076
    db $9A,$00,$9B,$00,$9C,$00,$9D,$00,$9E,$00,$9E,$00,$9E,$00,$9E,$00 ; $CD9086
    db $9E,$00,$9E,$00,$9E,$00,$9E,$00,$9F,$00,$A0,$00,$A1,$00,$00,$00 ; $CD9096
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A2,$00,$A3,$00,$A4,$00 ; $CD90A6
    db $A5,$00,$8A,$00,$6C,$00,$6C,$00,$6C,$00,$6C,$00,$8B,$00,$A6,$00 ; $CD90B6
    db $A7,$00,$A8,$00,$A8,$00,$A9,$00,$AA,$00,$AA,$00,$AA,$00,$AA,$00 ; $CD90C6
    db $AA,$00,$AA,$00,$AA,$00,$AA,$00,$AB,$00,$AC,$00,$AD,$00,$AE,$00 ; $CD90D6
    db $00,$00,$00,$00,$00,$00,$00,$00,$AF,$00,$B0,$00,$B1,$00,$B2,$00 ; $CD90E6
    db $B3,$00,$5B,$00,$5C,$00,$5C,$00,$5C,$00,$5C,$00,$5D,$00,$B4,$00 ; $CD90F6
    db $B5,$00,$B6,$00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$BA,$00,$BA,$00 ; $CD9106
    db $BA,$00,$BA,$00,$BB,$00,$BC,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00 ; $CD9116
    db $C1,$00,$C2,$00,$C3,$00,$C4,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00 ; $CD9126
    db $C9,$00,$CA,$00,$CB,$00,$CB,$00,$CB,$00,$CB,$00,$CC,$00,$CD,$00 ; $CD9136
    db $CE,$00,$CF,$00,$D0,$00,$D1,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD9146
    db $00,$00,$00,$00,$D2,$00,$AA,$00,$D3,$00,$D4,$00,$D5,$00,$D6,$00 ; $CD9156
    db $D7,$00,$D8,$00,$D9,$00,$DA,$00,$DB,$00,$DB,$00,$DC,$00,$DD,$00 ; $CD9166
    db $DE,$00,$DF,$00,$DF,$00,$E0,$00,$E0,$00,$E0,$00,$E1,$00,$E2,$00 ; $CD9176
    db $CE,$00,$AA,$00,$E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7,$00,$E8,$00 ; $CD9186
    db $E9,$00,$EA,$00,$EB,$00,$EC,$00,$ED,$00,$EE,$00,$EF,$00,$F0,$00 ; $CD9196
    db $F1,$00,$F1,$00,$F1,$00,$F1,$00,$F1,$00,$F1,$00,$F1,$00,$F1,$00 ; $CD91A6
    db $F2,$00,$F3,$00,$F3,$00,$F3,$00,$F3,$00,$F4,$00,$F5,$00,$F6,$00 ; $CD91B6
    db $F7,$00,$F8,$00,$F9,$00,$00,$00,$00,$00,$00,$00,$FA,$00,$FB,$00 ; $CD91C6
    db $00,$00,$00,$00,$00,$00,$FC,$00,$FD,$00,$FE,$00,$FF,$00,$00,$01 ; $CD91D6
    db $00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01 ; $CD91E6
    db $01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$02,$01,$03,$01,$04,$01 ; $CD91F6
    db $05,$01,$06,$01,$00,$00,$00,$00,$00,$00,$00,$00,$07,$01,$08,$01 ; $CD9206
    db $00,$00,$00,$00,$00,$00,$08,$41,$09,$01,$0A,$01,$00,$01,$00,$01 ; $CD9216
    db $00,$01,$00,$01,$00,$01,$00,$01,$0B,$01,$0C,$01,$0D,$01,$0D,$01 ; $CD9226
    db $0E,$01,$0F,$01,$0F,$01,$0F,$01,$10,$01,$11,$01,$12,$01,$13,$01 ; $CD9236
    db $14,$01,$15,$01,$16,$01,$00,$00,$00,$00,$00,$00,$17,$01,$18,$01 ; $CD9246
    db $00,$00,$00,$00,$00,$00,$19,$01,$1A,$01,$1B,$01,$1C,$01,$00,$01 ; $CD9256
    db $00,$01,$00,$01,$1D,$01,$1E,$01,$1F,$01,$20,$01,$21,$01,$21,$01 ; $CD9266
    db $21,$01,$21,$01,$21,$01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$01 ; $CD9276
    db $26,$01,$00,$01,$27,$01,$28,$01,$29,$01,$2A,$01,$2B,$01,$2C,$01 ; $CD9286
    db $2D,$01,$2E,$01,$2D,$41,$2F,$01,$30,$01,$31,$01,$32,$01,$33,$01 ; $CD9296
    db $34,$01,$35,$01,$36,$01,$37,$01,$38,$01,$00,$00,$00,$00,$00,$00 ; $CD92A6
    db $00,$00,$00,$00,$00,$00,$00,$00,$39,$01,$3A,$01,$3B,$01,$3C,$01 ; $CD92B6
    db $3D,$01,$3E,$01,$3F,$01,$40,$01,$41,$01,$42,$01,$43,$01,$44,$01 ; $CD92C6
    db $45,$01,$46,$01,$47,$01,$00,$01,$48,$01,$49,$01,$4A,$01,$4B,$01 ; $CD92D6
    db $4C,$01,$4D,$01,$4E,$01,$4F,$01,$50,$01,$00,$00,$00,$00,$00,$00 ; $CD92E6
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$51,$01,$52,$01,$53,$01 ; $CD92F6
    db $54,$01,$00,$00,$00,$00,$00,$00,$55,$01,$56,$01,$00,$00,$00,$00 ; $CD9306
    db $00,$00,$57,$01,$58,$01,$59,$01,$5A,$01,$5B,$01,$5C,$01,$5D,$01 ; $CD9316
    db $5D,$01,$5D,$01,$5D,$01,$5E,$01,$5F,$01,$60,$01,$61,$01,$61,$01 ; $CD9326
    db $61,$01,$61,$01,$61,$01,$61,$01,$62,$01,$63,$01,$64,$01,$65,$01 ; $CD9336
    db $08,$01,$00,$00,$00,$00,$00,$00,$08,$41,$66,$01,$00,$00,$00,$00 ; $CD9346
    db $00,$00,$00,$00,$67,$01,$68,$01,$69,$01,$6A,$01,$6B,$01,$6B,$01 ; $CD9356
    db $6B,$01,$6B,$01,$6B,$01,$6C,$01,$6D,$01,$6E,$01,$6F,$01,$70,$01 ; $CD9366
    db $71,$01,$71,$01,$71,$01,$71,$01,$72,$01,$73,$01,$74,$01,$75,$01 ; $CD9376
    db $76,$01,$00,$00,$00,$00,$00,$00,$76,$41,$77,$01,$00,$00,$00,$00 ; $CD9386
    db $00,$00,$78,$01,$79,$01,$5D,$01,$7A,$01,$7B,$01,$7C,$01,$7D,$01 ; $CD9396
    db $7E,$01,$7C,$01,$7D,$01,$7F,$01,$80,$01,$81,$01,$82,$01,$83,$01 ; $CD93A6
    db $84,$01,$85,$01,$86,$01,$87,$01,$88,$01,$89,$01,$8A,$01,$5D,$01 ; $CD93B6
    db $8B,$01,$8C,$01,$2E,$01,$8C,$41,$8B,$41,$8D,$01,$8E,$01,$8F,$01 ; $CD93C6
    db $90,$01,$91,$01,$5D,$01,$5D,$01,$92,$01,$93,$01,$94,$01,$94,$01 ; $CD93D6
    db $95,$01,$94,$01,$94,$01,$96,$01,$97,$01,$98,$01,$99,$01,$9A,$01 ; $CD93E6
    db $9B,$01,$00,$00,$9C,$01,$9D,$01,$9E,$01,$9F,$01,$A0,$01,$A1,$01 ; $CD93F6
    db $A2,$01,$A3,$01,$A4,$01,$A5,$01,$A6,$01,$A7,$01,$A8,$01,$A9,$01 ; $CD9406
    db $AA,$01,$AB,$01,$AC,$01,$AD,$01,$AE,$01,$AF,$01,$B0,$01,$B1,$01 ; $CD9416
    db $B2,$01,$B0,$01,$B1,$01,$B3,$01,$B4,$01,$B5,$01,$B6,$01,$00,$00 ; $CD9426
    db $00,$00,$00,$00,$00,$00,$00,$00,$B7,$01,$B8,$01,$B9,$01,$00,$00 ; $CD9436
    db $00,$00,$00,$00,$BA,$01,$BB,$01,$BC,$01,$00,$00,$00,$00,$00,$00 ; $CD9446
    db $BD,$01,$BE,$01,$BF,$01,$C0,$01,$C1,$01,$7B,$01,$7C,$01,$7D,$01 ; $CD9456
    db $7E,$01,$7C,$01,$7D,$01,$C2,$01,$C3,$01,$C4,$01,$C5,$01,$C6,$01 ; $CD9466
    db $00,$00,$00,$00,$C7,$01,$C8,$01,$C9,$01,$CA,$01,$CB,$01,$00,$00 ; $CD9476
    db $00,$00,$00,$00,$00,$00,$CC,$01,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD9486
    db $CD,$01,$CE,$01,$CF,$01,$D0,$01,$D1,$01,$93,$01,$94,$01,$94,$01 ; $CD9496
    db $95,$01,$94,$01,$94,$01,$D2,$01,$D3,$01,$D4,$01,$94,$01,$D5,$01 ; $CD94A6
    db $D6,$01,$D7,$01,$D8,$01,$D9,$01,$DA,$01,$DB,$01,$DC,$01,$00,$00 ; $CD94B6
    db $00,$00,$00,$00,$DD,$01,$DE,$01,$DF,$01,$00,$00,$00,$00,$00,$00 ; $CD94C6
    db $E0,$01,$E1,$01,$E2,$01,$E3,$01,$E4,$01,$AF,$01,$B0,$01,$B1,$01 ; $CD94D6
    db $B2,$01,$B0,$01,$B1,$01,$E5,$01,$94,$01,$94,$01,$94,$01,$94,$01 ; $CD94E6
    db $94,$01,$94,$01,$94,$01,$94,$01,$94,$01,$E6,$01,$E7,$01,$E8,$01 ; $CD94F6
    db $E9,$01,$EA,$01,$EB,$01,$94,$01,$EB,$41,$EA,$41,$E9,$41,$EC,$01 ; $CD9506
    db $ED,$01,$EE,$01,$EF,$01,$F0,$01,$F1,$01,$F2,$01,$F3,$01,$F3,$01 ; $CD9516
    db $F3,$01,$F3,$01,$F3,$01,$F3,$01,$F3,$01,$F3,$01,$F3,$01,$F3,$01 ; $CD9526
    db $F3,$01,$F3,$01,$F3,$01,$F3,$01,$F4,$01,$F5,$01,$F6,$01,$F7,$01 ; $CD9536
    db $F8,$01,$F9,$01,$F3,$01,$F3,$01,$F3,$01,$F9,$41,$FA,$01,$F3,$01 ; $CD9546
    db $F3,$01,$FB,$01,$FC,$01,$FD,$01,$FE,$01,$00,$00,$42,$08,$80,$0C ; $CD9556
    db $80,$10,$63,$0C,$83,$0C,$63,$10,$A2,$0C,$83,$10,$A3,$10,$84,$10 ; $CD9566
    db $EF,$3D,$EF,$3D,$EF,$3D,$EF,$3D,$EF,$3D,$00,$00,$00,$00,$00,$00 ; $CD9576
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD9586
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD9596
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00                         ; $CD95A6
L_CD95B0:
    BRK #$00                ; $CD95B0  00 00        Mx
    BRK #$00                ; $CD95B2  00 00        Mx
    BRK #$00                ; $CD95B4  00 00        Mx
    BRK #$00                ; $CD95B6  00 00        Mx
    BRK #$00                ; $CD95B8  00 00        Mx
    BRK #$00                ; $CD95BA  00 00        Mx
    BRK #$00                ; $CD95BC  00 00        Mx
    BRK #$00                ; $CD95BE  00 00        Mx
    BRK #$00                ; $CD95C0  00 00        Mx
    BRK #$00                ; $CD95C2  00 00        Mx
    BRK #$00                ; $CD95C4  00 00        Mx
    BRK #$00                ; $CD95C6  00 00        Mx
    BRK #$00                ; $CD95C8  00 00        Mx
    BRK #$00                ; $CD95CA  00 00        Mx
    BRK #$00                ; $CD95CC  00 00        Mx
    BRK #$00                ; $CD95CE  00 00        Mx
    BRK #$00                ; $CD95D0  00 00        Mx
    BRK #$00                ; $CD95D2  00 00        Mx
    BRK #$00                ; $CD95D4  00 00        Mx
    BRK #$00                ; $CD95D6  00 00        Mx
    BRK #$00                ; $CD95D8  00 00        Mx
    BRK #$00                ; $CD95DA  00 00        Mx
    BRK #$00                ; $CD95DC  00 00        Mx
    BRK #$00                ; $CD95DE  00 00        Mx
    BRK #$00                ; $CD95E0  00 00        Mx
    BRK #$00                ; $CD95E2  00 00        Mx
    BRK #$00                ; $CD95E4  00 00        Mx
    BRK #$00                ; $CD95E6  00 00        Mx
    BRK #$00                ; $CD95E8  00 00        Mx
    BRK #$00                ; $CD95EA  00 00        Mx
    BRK #$00                ; $CD95EC  00 00        Mx
    BRK #$00                ; $CD95EE  00 00        Mx
    BRK #$00                ; $CD95F0  00 00        Mx
    BRK #$00                ; $CD95F2  00 00        Mx
    BRK #$00                ; $CD95F4  00 00        Mx
    BRK #$00                ; $CD95F6  00 00        Mx
    BRK #$00                ; $CD95F8  00 00        Mx
    BRK #$00                ; $CD95FA  00 00        Mx
    BRK #$00                ; $CD95FC  00 00        Mx
    BRK #$00                ; $CD95FE  00 00        Mx
    BRK #$00                ; $CD9600  00 00        Mx
    BRK #$00                ; $CD9602  00 00        Mx
    BRK #$00                ; $CD9604  00 00        Mx
    BRK #$00                ; $CD9606  00 00        Mx
    BRK #$00                ; $CD9608  00 00        Mx
    BRK #$00                ; $CD960A  00 00        Mx
    BRK #$00                ; $CD960C  00 00        Mx
    BRK #$00                ; $CD960E  00 00        Mx
    BRK #$00                ; $CD9610  00 00        Mx
    BRK #$00                ; $CD9612  00 00        Mx
    BRK #$00                ; $CD9614  00 00        Mx
    BRK #$00                ; $CD9616  00 00        Mx
    BRK #$00                ; $CD9618  00 00        Mx
    BRK #$00                ; $CD961A  00 00        Mx
    BRK #$00                ; $CD961C  00 00        Mx
    BRK #$00                ; $CD961E  00 00        Mx
    BRK #$00                ; $CD9620  00 00        Mx
    BRK #$00                ; $CD9622  00 00        Mx
    BRK #$00                ; $CD9624  00 00        Mx
    BRK #$00                ; $CD9626  00 00        Mx
    BRK #$00                ; $CD9628  00 00        Mx
    BRK #$00                ; $CD962A  00 00        Mx
    BRK #$00                ; $CD962C  00 00        Mx
    BRK #$00                ; $CD962E  00 00        Mx
    BRK #$00                ; $CD9630  00 00        Mx
    BRK #$00                ; $CD9632  00 00        Mx
    BRK #$00                ; $CD9634  00 00        Mx
    BRK #$00                ; $CD9636  00 00        Mx
    BRK #$00                ; $CD9638  00 00        Mx
    BRK #$00                ; $CD963A  00 00        Mx
    BRK #$00                ; $CD963C  00 00        Mx
    BRK #$00                ; $CD963E  00 00        Mx
    BRK #$00                ; $CD9640  00 00        Mx
    BRK #$00                ; $CD9642  00 00        Mx
    BRK #$00                ; $CD9644  00 00        Mx
    BRK #$00                ; $CD9646  00 00        Mx
    BRK #$00                ; $CD9648  00 00        Mx
    BRK #$00                ; $CD964A  00 00        Mx
    BRK #$00                ; $CD964C  00 00        Mx
    BRK #$00                ; $CD964E  00 00        Mx
    BRK #$00                ; $CD9650  00 00        Mx
    BRK #$00                ; $CD9652  00 00        Mx
    BRK #$00                ; $CD9654  00 00        Mx
    BRK #$00                ; $CD9656  00 00        Mx
    BRK #$00                ; $CD9658  00 00        Mx
    BRK #$00                ; $CD965A  00 00        Mx
    BRK #$00                ; $CD965C  00 00        Mx
    BRK #$00                ; $CD965E  00 00        Mx
    WDM #$08                ; $CD9660  42 08        Mx
    MVP $85,$08             ; $CD9662  44 08 85     Mx
    PHP                     ; $CD9665  08           Mx
    TAX                     ; $CD9666  AA           Mx
    PHP                     ; $CD9667  08           Mx
    WAI                     ; $CD9668  CB           Mx
    PHP                     ; $CD9669  08           Mx
    SBC $093108             ; $CD966A  EF 08 31 09  Mx
    EOR ($09),Y             ; $CD966E  51 09        Mx
    STA ($09),Y             ; $CD9670  91 09        Mx
    AND ($0A),Y             ; $CD9672  31 0A        Mx
    WDM #$08                ; $CD9674  42 08        Mx
    WDM #$08                ; $CD9676  42 08        Mx
    WDM #$08                ; $CD9678  42 08        Mx
    WDM #$08                ; $CD967A  42 08        Mx
    WDM #$08                ; $CD967C  42 08        Mx
    WDM #$08                ; $CD967E  42 08        Mx
    WDM #$08                ; $CD9680  42 08        Mx
    WDM #$10                ; $CD9682  42 10        Mx
    BRL L_CD389B            ; $CD9684  82 14 A2     Mx
    db $28,$C2,$2C,$E2,$3C,$22,$45,$42,$45,$82,$45,$22,$46,$42,$08,$42 ; $CD9687
    db $08,$42,$08,$42,$08,$42,$08,$42,$08,$00,$00,$DE,$53,$BF,$03,$7F ; $CD9697
    db $1F,$3F,$03,$1E,$03,$DE,$02,$BD,$02,$9C,$02,$5C,$02,$5A,$02,$39 ; $CD96A7
    db $02,$19,$0E,$18,$02,$D8,$01,$D6,$01,$B6,$01,$95,$01,$94,$01,$74 ; $CD96B7
    db $01,$53,$01,$53,$01,$52,$01,$32,$01,$32,$01,$11,$01,$11,$01,$10 ; $CD96C7
    db $01,$EF,$00,$CF,$00,$CE,$00,$CE,$00,$AD,$00,$8D,$00,$8B,$00,$8B ; $CD96D7
    db $00,$8A,$00,$88,$00,$66,$00,$65,$00,$44,$00,$2C,$15,$4E,$15,$C9 ; $CD96E7
    db $0C,$0B,$11,$A8,$04,$87,$00,$90,$05,$FF,$7F,$BD,$77,$9C,$73,$7B ; $CD96F7
    db $6F,$58,$63,$16,$6F,$D4,$66,$B4,$5A,$94,$52,$72,$52,$52,$4A,$4D ; $CD9707
    db $4E,$2C,$42,$10,$42,$ED,$25,$CE,$39,$AC,$39,$AC,$31,$8C,$31,$8C ; $CD9717
    db $31,$8B,$25,$8A,$21,$69,$1D,$68,$21,$4A,$29,$48,$25,$46,$21,$26 ; $CD9727
    db $29,$24,$15,$25,$15,$20,$01,$00,$01,$E3,$00,$C2,$00,$A0,$00,$A0 ; $CD9737
    db $00,$3B,$7E,$12,$7C,$AE,$4C,$49,$24,$EB,$2C,$AC,$24,$1F,$00,$02 ; $CD9747
    db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$BD,$5B,$9F,$02,$1F ; $CD9757
    db $02,$DA,$01,$96,$0D,$74,$01,$EF,$00,$CA,$00,$55,$67,$F1,$52,$6C ; $CD9767
    db $4E,$ED,$5D,$52,$49,$0C,$3D,$A0,$14,$00,$00,$DE,$7B,$35,$57,$B4 ; $CD9777
    db $62,$20,$52,$E9,$68,$6A,$3D,$06,$31,$A0,$28,$60,$0C,$5F,$52,$4C ; $CD9787
    db $7D,$BF,$01,$20,$02,$39,$19,$E0,$02,$00,$00,$BD,$5B,$9F,$02,$1F ; $CD9797
    db $02,$DA,$01,$96,$0D,$74,$01,$EF,$00,$CA,$00,$55,$67,$F1,$52,$6C ; $CD97A7
    db $4E,$ED,$5D,$52,$49,$0C,$3D,$A0,$14,$00,$00,$DE,$7B,$35,$57,$B4 ; $CD97B7
    db $62,$20,$52,$AC,$49,$49,$3D,$06,$31,$A0,$28,$60,$0C,$5F,$52,$0C ; $CD97C7
    db $7E,$BF,$01,$20,$02,$39,$19,$E0,$02,$00,$00,$39,$67,$DA,$42,$3A ; $CD97D7
    db $26,$95,$0D,$54,$01,$F0,$00,$AD,$00,$6A,$00,$ED,$35,$8A,$29,$48 ; $CD97E7
    db $25,$A0,$18,$00,$21,$20,$71,$60,$00,$00,$00,$1C,$63,$7A,$4E,$D7 ; $CD97F7
    db $39,$75,$2D,$31,$21,$CF,$14,$6D,$10,$6A,$00,$CC,$41,$68,$35,$29 ; $CD9807
    db $25,$E7,$20,$A4,$1C,$84,$10,$46,$0C,$00,$00,$5C,$63,$D9,$4E,$57 ; $CD9817
    db $3A,$D4,$29,$72,$19,$0F,$0D,$AD,$04,$88,$00,$EF,$3D,$29,$25,$E8 ; $CD9827
    db $0C,$65,$00,$20,$22,$A3,$21,$22,$15,$00,$00,$5D,$67,$99,$42,$17 ; $CD9837
    db $2E,$96,$1D,$54,$11,$31,$09,$CF,$00,$66,$00,$4E,$35,$09,$2D,$C9 ; $CD9847
    db $24,$88,$10,$73,$4E,$EF,$3D,$8C,$31,$00,$00,$9E,$4E,$18,$32,$B5 ; $CD9857
    db $29,$52,$29,$10,$19,$ED,$18,$AD,$04,$6A,$08,$66,$00,$52,$4A,$E8 ; $CD9867
    db $25,$A5,$15,$4A,$01,$20,$1D,$C6,$00,$00,$00,$5C,$63,$9A,$4A,$38 ; $CD9877
    db $32,$B6,$25,$73,$15,$11,$0D,$EC,$00,$8B,$00,$65,$00,$49,$65,$05 ; $CD9887
    db $4D,$C6,$3C,$88,$2C,$F2,$7F,$FF,$7F,$52,$4E,$43,$02,$00,$00,$1E ; $CD9897
    db $00,$00,$00,$0D,$E9,$35,$C0,$BD,$C5,$04,$01,$01,$01,$04,$01,$0A ; $CD98A7
    db $07,$85,$03,$17,$17,$10,$C3,$0E,$0B,$07,$08,$07,$09,$04,$03,$0A ; $CD98B7
    db $04,$16,$08,$06,$01,$13,$08,$09,$10,$01,$2E,$08,$10,$38,$80,$20 ; $CD98C7
    db $C0,$10,$20,$40,$00,$2C,$1C,$B8,$8C,$98,$8C,$58,$4C,$D8,$0E,$50 ; $CD98D7
    db $20,$70,$28,$17,$18,$00,$CE,$01,$98,$07,$01,$01,$00,$03,$00,$9C ; $CD98E7
    db $05,$00,$03,$12,$F0,$03,$01,$80,$40,$C0,$62,$00,$3E,$C0,$80,$C5 ; $CD98F7
    db $01,$00,$26,$01,$06,$E3,$01,$07,$1E,$01,$02,$06,$04,$3F,$7B,$07 ; $CD9907
    db $04,$0D,$01,$40,$C0,$20,$00,$D8,$38,$30,$CC,$01,$07,$78,$08,$B0 ; $CD9917
    db $60,$20,$80,$18,$7F,$30,$00,$01,$70,$00,$6E,$60,$1B,$78,$01,$02 ; $CD9927
    db $3F,$01,$03,$3C,$01,$02,$04,$3F,$01,$A6,$05,$61,$60,$10,$C0,$58 ; $CD9937
    db $18,$10,$78,$01,$20,$F0,$C0,$B0,$E8,$18,$74,$07,$3F,$10,$33,$01 ; $CD9947
    db $3F,$E0,$88,$43,$38,$60,$BF,$3F,$03,$0D,$0E,$00,$0C,$0F,$12,$08 ; $CD9957
    db $2C,$56,$3C,$C6,$10,$02,$01,$53,$C3,$43,$0C,$00,$1C,$9B,$E1,$10 ; $CD9967
    db $18,$70,$A0,$00,$7A,$60,$40,$28,$E0,$C0,$01,$C8,$A0,$74,$C0,$40 ; $CD9977
    db $80,$48,$C0,$08,$00,$66,$0B,$38,$0E,$2D,$00,$04,$12,$3C,$3A,$1E ; $CD9987
    db $1F,$1E,$23,$C6,$4C,$08,$07,$39,$0C,$14,$08,$10,$08,$3B,$3F,$A3 ; $CD9997
    db $81,$F0,$0A,$01,$40,$60,$10,$6D,$8A,$34,$40,$C4,$76,$60,$CE,$9F ; $CD99A7
    db $80,$39,$3D,$E0,$07,$9D,$B4,$04,$80,$34,$04,$0E,$0E,$08,$0B,$1F ; $CD99B7
    db $36,$1C,$1D,$33,$7F,$08,$05,$02,$0A,$04,$00,$7F,$1F,$00,$1E,$00 ; $CD99C7
    db $A0,$80,$40,$D3,$02,$06,$31,$A0,$D0,$10,$A8,$0E,$7E,$80,$01,$1D ; $CD99D7
    db $80,$C1,$1F,$20,$3F,$CE                                         ; $CD99E7
L_CD99ED:
    RTL                     ; $CD99ED  6B           Mx
    db $21,$6C,$6A,$46,$FF,$05,$EC,$0E,$1F,$4D,$18,$FD,$1B,$99,$06,$01 ; $CD99EE
    db $E0,$08,$D0,$48,$C5,$1C,$60,$D0,$E0,$47,$60,$40,$73,$40,$10,$E0 ; $CD99FE
    db $40,$C8,$D1,$40,$46,$B9,$7D,$C3,$00,$15,$1A,$15,$00,$30,$1D,$14 ; $CD9A0E
L_CD9A1E:
    ASL $1218               ; $CD9A1E  0E 18 12     Mx
    ORA $10                 ; $CD9A21  05 10        Mx
    CPY $BA                 ; $CD9A23  C4 BA        Mx
    ORA $04,S               ; $CD9A25  03 04        Mx
    PLA                     ; $CD9A27  68           Mx
    CMP [$65],Y             ; $CD9A28  D7 65        Mx
    ORA ($7F,X)             ; $CD9A2A  01 7F        Mx
    ASL $D960               ; $CD9A2C  0E 60 D9     Mx
    CPY $AC38               ; $CD9A2F  CC 38 AC     Mx
    SED                     ; $CD9A32  F8           Mx
    ASL $E4                 ; $CD9A33  06 E4        Mx
    CLC                     ; $CD9A35  18           Mx
    CPY $5870               ; $CD9A36  CC 70 58     Mx
    ASL $00                 ; $CD9A39  06 00        Mx
    BVC L_CD99ED            ; $CD9A3B  50 B0        Mx
    JSR L_CD20C0            ; $CD9A3D  20 C0 20     Mx
    CLD                     ; $CD9A40  D8           Mx
    BRK #$58                ; $CD9A41  00 58        Mx
    TSC                     ; $CD9A43  3B           Mx
    BRK #$78                ; $CD9A44  00 78        Mx
    TSC                     ; $CD9A46  3B           Mx
    AND [$30],Y             ; $CD9A47  37 30        Mx
    AND ($15,X)             ; $CD9A49  21 15        Mx
    CPY #$67                ; $CD9A4B  C0 67        Mx
    EOR #$6300              ; $CD9A4D  49 00 63     Mx
    XBA                     ; $CD9A50  EB           Mx
    ORA ($02,X)             ; $CD9A51  01 02        Mx
    PEA $FC06               ; $CD9A53  F4 06 FC     Mx
    AND $3F,S               ; $CD9A56  23 3F        Mx
    ORA $F3,X               ; $CD9A58  15 F3        Mx
    RTI                     ; $CD9A5A  40           Mx
    db $80,$8E,$2F,$20                                                 ; $CD9A5B
L_CD9A5F:
    CPX #$7E                ; $CD9A5F  E0 7E        Mx
    ORA $02,S               ; $CD9A61  03 02        Mx
    SBC $8052,Y             ; $CD9A63  F9 52 80     Mx
    AND $053507,X           ; $CD9A66  3F 07 35 05  Mx
    ORA $00,S               ; $CD9A6A  03 00        Mx
    COP #$06                ; $CD9A6C  02 06        Mx
    PHP                     ; $CD9A6E  08           Mx
    ORA $0F                 ; $CD9A6F  05 0F        Mx
    BRK #$0F                ; $CD9A71  00 0F        Mx
    LDX #$B3                ; $CD9A73  A2 B3        Mx
    ASL $B3                 ; $CD9A75  06 B3        Mx
    ADC $0D880C,X           ; $CD9A77  7F 0C 88 0D  Mx
    BRK #$DD                ; $CD9A7B  00 DD        Mx
    SBC $2C341C,X           ; $CD9A7D  FF 1C 34 2C  Mx
    ORA ($30,X)             ; $CD9A81  01 30        Mx
    CLC                     ; $CD9A83  18           Mx
    BNE L_CD9A1E            ; $CD9A84  D0 98        Mx
    RTS                     ; $CD9A86  60           Mx
    db $F0,$08,$E7,$02,$FD,$30,$6F,$5B,$07,$81,$7A,$0C,$07,$08,$F1,$05 ; $CD9A87
    db $4A,$CB,$03,$84,$10,$3C,$1C,$18,$14,$18,$1C,$10,$08,$3C,$18,$70 ; $CD9A97
    db $24,$BF,$DD,$82,$BF,$E0,$80,$7F,$58,$20,$3F,$7F,$7F,$F3,$01,$40 ; $CD9AA7
    db $01,$B3,$51,$7F,$E3,$03,$7D,$01,$00,$E8,$DC,$FC,$F8,$B8,$C4,$83 ; $CD9AB7
    db $38,$60,$80,$60,$90,$01,$6F,$E0,$10,$C8,$00,$F8,$00,$6C,$FB,$E0 ; $CD9AC7
    db $F6,$05,$7D,$C8,$0F,$07,$18,$0F,$10,$04,$41,$11,$BF,$20,$70,$E8 ; $CD9AD7
    db $68,$30,$28,$30,$78,$20,$90,$F8,$B0,$60,$60,$EC,$08,$70,$48,$00 ; $CD9AE7
    db $01,$60,$AD,$81,$8C,$00,$1E,$1C,$9F,$0C,$60,$18,$02,$14,$1A,$08 ; $CD9AF7
    db $1E,$3F,$06,$0D,$04,$2B,$7F,$07,$0A,$3F,$10,$14,$14,$30,$BF,$28 ; $CD9B07
    db $26,$70,$70,$A0,$C9,$BF,$38,$AC,$1F,$BF,$0C,$05,$0E,$05,$0B,$F7 ; $CD9B17
    db $09,$00,$1C,$03,$16,$0A,$15,$0A,$14,$06,$4B,$08,$4B,$3D,$2A,$3F ; $CD9B27
    db $0C,$2B,$65,$78,$3D,$11,$00,$0B,$00,$18,$13,$04,$14,$64,$10,$1C ; $CD9B37
    db $00,$08,$0F,$07,$1F,$08,$3C,$12,$08,$44,$07,$67,$BD,$01,$1C,$1D ; $CD9B47
    db $BD,$1C,$BA,$27,$40,$3F,$C8,$18,$50,$18,$10,$70,$44,$28,$BE,$3F ; $CD9B57
    db $10,$09,$6E,$3F,$32,$00,$02,$05,$04,$01,$08,$06,$04,$02,$04,$08 ; $CD9B67
    db $0E,$04,$04,$07,$02,$8D,$BD,$0C,$A2,$01,$1D,$41,$07,$81,$A3,$88 ; $CD9B77
    db $60,$18,$28,$10,$9B,$DB,$0C,$01,$06,$EB,$4A,$5C,$10,$E0,$0C,$4D ; $CD9B87
    db $1C,$9D,$8F,$01,$BC,$00,$07,$CF,$42,$02,$07,$3D,$9E,$01,$05,$0D ; $CD9B97
    db $F1,$04,$FC,$39,$43,$F2,$3C,$3F,$01,$27,$3D,$61,$B0,$AD,$17,$25 ; $CD9BA7
    db $2F,$26,$34,$C5,$74,$04,$87,$C9,$17,$08,$2F,$10,$4A,$EB,$00,$00 ; $CD9BB7
    db $01,$00,$20,$78,$00,$F8,$13,$F0,$58,$F0,$D0,$52,$49,$3E,$F0,$F0 ; $CD9BC7
    db $01,$00,$81,$FE,$0A,$ED,$01,$53,$03,$09,$13,$01,$F7,$84,$01,$0F ; $CD9BD7
    db $08,$F4,$00,$96,$01,$8B,$0B,$E4,$84,$48,$B9,$08,$A0,$14,$02,$58 ; $CD9BE7
    db $02,$55,$00,$F7,$A6,$60,$1F,$F0,$14,$A8,$02,$0E,$A4,$04,$A2,$A2 ; $CD9BF7
    db $C8,$3F,$03,$75,$7F,$7A,$03,$44,$EF,$1F,$15,$1F,$57,$10,$8D,$C5 ; $CD9C07
    db $03,$7F,$C2,$0E,$00,$1F,$6C,$A5,$6D,$20,$00,$40,$30,$00,$E8,$F0 ; $CD9C17
    db $54,$F0,$00,$F3,$02,$11,$C0,$93,$7F,$80,$EF,$74,$00,$EE,$00,$05 ; $CD9C27
    db $52,$00,$42,$00,$C6,$81,$70,$7C,$00,$94,$00,$96,$0B,$84,$03,$0E ; $CD9C37
    db $3C,$00,$3A,$00,$11,$84,$E4,$3E,$24,$C3,$10,$7E,$00,$22,$87,$01 ; $CD9C47
    db $3C,$24,$48,$1F,$38,$30,$18,$60,$30,$02,$20,$3C,$10,$1C,$08,$0B ; $CD9C57
    db $18,$07,$08,$BC,$5B,$1D,$01,$18,$A2,$FF,$4F,$3F,$14,$38,$16,$9A ; $CD9C67
    db $3F,$9B,$E8,$64,$6C,$02,$57,$01,$F0,$06,$7C,$FE,$F8,$F4,$3A,$0E ; $CD9C77
    db $0C,$01,$BD,$08,$20,$10,$40,$E0,$D0,$FF,$FC,$9C,$44,$BD,$27,$3F ; $CD9C87
    db $80,$3F,$73,$12,$91,$B0,$00,$2F,$25,$40,$13,$DE,$F1,$39,$3F,$00 ; $CD9C97
    db $20,$1F,$00,$2F,$08,$1F,$04,$0F,$3B,$02,$07,$71,$1E,$3C,$3F,$D9 ; $CD9CA7
    db $73,$07,$3E,$C0,$C4,$00,$18,$F0,$81,$01,$70,$88,$2A,$E8,$C3,$03 ; $CD9CB7
    db $CF,$F3,$F0,$01,$AB,$C1,$00,$B0,$71,$42,$94,$0A,$16,$F4,$74,$0A ; $CD9CC7
    db $3B,$4F,$84,$3C,$78,$F4,$03,$5F,$F5,$03,$A6,$4B,$AE,$46,$BC,$BC ; $CD9CD7
    db $C0,$01,$83,$A2,$00,$A4,$00,$B8,$F1,$03,$1F,$10,$1F,$04,$01,$1C ; $CD9CE7
    db $57,$F6,$B0,$3B,$02,$00,$1F,$A2,$01,$03,$91,$01,$00,$CC,$0C,$F0 ; $CD9CF7
    db $08,$E0,$30,$04,$E0,$60,$C0,$C0,$80,$8E,$B9,$F8,$3D,$7D,$C0,$03 ; $CD9D07
    db $C5,$00,$7F,$08,$77,$73,$08,$F3,$04,$7F,$77,$C0,$03,$5F,$35,$26 ; $CD9D17
    db $11,$A2,$51,$3C,$A2,$B3,$01,$7F,$26,$E3,$81,$A2,$EE,$04,$23,$04 ; $CD9D27
    db $75,$05,$40,$44,$07,$06,$0F,$0F,$1D,$0C,$0C,$06,$0D,$1E,$18,$76 ; $CD9D37
    db $05,$3B,$02,$04,$E4,$51,$0F,$10,$AA,$43,$BC,$30,$20,$AC,$1F,$AC ; $CD9D47
    db $38,$30,$01,$FE,$FC,$EC,$62,$30,$68,$F0,$BA,$7A,$41,$CC,$20,$10 ; $CD9D57
    db $30,$00,$FC,$D9,$C3,$60,$CA,$01,$CE,$25,$02,$90,$F6,$00,$06,$03 ; $CD9D67
    db $01,$6A,$06,$4D,$84,$04,$01,$56,$05,$55,$87,$EC,$33,$60,$C0,$25 ; $CD9D77
    db $20,$40,$E0,$70,$50,$04,$C0,$10,$60,$70,$20,$A6,$3B,$32,$4B,$60 ; $CD9D87
    db $83,$01,$0E,$00,$1B,$86,$E7,$06,$04,$01,$19,$07,$07,$17,$86,$05 ; $CD9D97
    db $CE,$FC,$45,$76,$48,$3F,$07,$18,$23,$05,$C0,$A1,$36,$18,$18,$10 ; $CD9DA7
    db $58,$81,$F7,$C0,$F0,$68,$58,$F4,$15,$75,$8A,$B8,$7F,$50,$16,$F0 ; $CD9DB7
    db $AF,$8C,$BF,$08,$01,$11,$AB,$10,$0C,$08,$0E,$0C,$08,$01,$1C,$C0 ; $CD9DC7
    db $33,$03,$09,$06,$02,$0C,$2A,$14,$08,$BD,$C4,$46,$A5,$A7,$37,$7C ; $CD9DD7
    db $90,$14,$8F,$03,$F0,$F8,$18,$05,$C1,$FF,$0C,$01,$1F,$03,$24,$7F ; $CD9DE7
    db $82,$01,$01,$1E,$03,$69,$7F,$3B,$01,$F1,$B6,$F1,$83,$40,$10,$10 ; $CD9DF7
    db $D3,$25,$91,$5E,$1C,$23,$79,$A0,$40,$50,$84,$7F,$38,$00,$07,$01 ; $CD9E07
    db $0F,$00,$1D,$B9,$02,$BF,$05,$9E,$BF,$02,$05,$BF,$63,$F8,$70,$20 ; $CD9E17
    db $30,$99,$45,$04,$10,$8E,$AF,$20,$20,$25,$04,$30,$1D,$77,$F5,$BE ; $CD9E27
    db $20,$77,$23,$DE,$36,$3F,$22,$FF,$10,$4C,$48,$48,$CE,$F2,$01,$FF ; $CD9E37
    db $48,$A7,$E8,$0C,$36,$14,$0A,$0C,$55,$7F,$18,$4E,$18,$29,$2F,$21 ; $CD9E47
    db $31,$4A,$08,$45,$DF,$7F,$00,$31,$30,$01,$00,$70,$60,$A0,$01,$50 ; $CD9E57
    db $60,$80,$08,$F0,$70,$C8,$D8,$B5,$00,$80,$4B,$40,$AF,$F9,$F0,$01 ; $CD9E67
    db $81,$FF,$06,$07,$0E,$BB,$B5,$E0,$AA,$13,$0C,$1C,$02,$0E,$12,$30 ; $CD9E77
    db $3C,$02,$BA,$D7,$1F,$88,$45,$3C,$F8,$A5,$38,$38,$20,$61,$28,$C0 ; $CD9E87
    db $F4,$C8,$1C,$8C,$65,$1E,$20,$1F,$60,$AA,$AA,$5D,$F0,$B0,$61,$1F ; $CD9E97
    db $DB,$7F,$01,$63,$80,$36,$06,$08,$0F,$01,$0F,$10,$1F,$01,$EC,$19 ; $CD9EA7
    db $9C,$45,$3F,$FF,$0D,$FF,$BF,$02,$70,$FF,$1A,$08,$1A,$18,$00,$1E ; $CD9EB7
    db $0E,$15,$05,$0A,$02,$05,$01,$E9,$B6,$09,$18,$00,$1C,$00,$77,$79 ; $CD9EC7
    db $EC,$07,$97,$0F,$80,$C0,$70,$78,$01,$BC,$2F,$AA,$09,$F0,$F3,$06 ; $CD9ED7
    db $7F,$09,$DD,$0C,$7F,$91,$F2,$18,$DC,$CB,$7F,$78,$58,$10,$7F,$08 ; $CD9EE7
    db $16,$10,$28,$10,$79,$7F,$02,$3F,$04,$EF,$0D,$3F,$02,$A2,$AE,$54 ; $CD9EF7
    db $3E,$BF,$00,$07,$8F,$BF,$06,$1E,$FF,$1E,$01,$04,$3F,$7F,$1E,$12 ; $CD9F07
    db $FD,$B6,$01,$00,$E8,$18,$FF,$B5,$3B,$28,$C0,$01,$38,$E0,$98,$20 ; $CD9F17
    db $85,$7F,$AE,$DF,$30,$4B,$00,$A1,$BD,$0E,$01,$1F,$02,$F0,$05,$7F ; $CD9F27
    db $1E,$F9,$06,$7F,$0C,$38,$04,$7C,$08,$B4,$18,$61,$10,$01,$98,$90 ; $CD9F37
    db $D8,$CE,$05,$A7,$FC,$91,$3C,$24,$81,$90,$60,$3E,$05,$18,$DE,$FF ; $CD9F47
    db $97,$BE,$40,$DA,$05,$FF,$C0,$FB,$06,$7C,$FF,$18,$00,$70,$18,$08 ; $CD9F57
    db $F8,$10,$74,$30,$20,$B3,$01,$9D,$B4,$52,$36,$20,$40,$CF,$01,$18 ; $CD9F67
    db $0A,$BF,$18,$24,$1C,$0C,$BF,$78,$20,$D0,$8A,$F0,$09,$30,$68,$20 ; $CD9F77
    db $18,$23,$BF,$B1,$7F,$18,$8B,$3F,$0F,$12,$F9,$04,$FF,$F5,$02,$3F ; $CD9F87
    db $A7,$FF,$DD,$17,$9F,$6F,$61,$49,$8D,$24,$28,$77,$30,$34,$2E,$36 ; $CD9F97
    db $2B,$33,$27,$08,$F0,$08,$70,$04,$78,$34,$48,$2A,$44,$26,$40,$27 ; $CD9FA7
    db $40,$23,$40,$3C,$02,$1E,$04,$04,$40,$0C,$28,$0C,$88,$2C,$48,$AC ; $CD9FB7
    db $88,$4C,$88,$20,$EA,$45,$54,$40,$38,$28,$CB,$50,$A8,$50,$48,$90 ; $CD9FC7
    db $C8,$10,$88,$10,$1C,$02,$3E,$05,$06,$07,$0B,$0A,$0B,$0D,$0D,$00 ; $CD9FD7
    db $02,$0A,$0C,$09,$00,$3C,$06,$18,$75,$06,$84,$47,$0B,$10,$B9,$7F ; $CD9FE7
    db $E6,$1F,$3F,$CC,$90,$88,$01,$8C,$07,$48,$8C,$C8,$CC,$A8,$4F,$34 ; $CD9FF7
    db $44,$82,$4B,$DB,$88,$99,$01,$41,$01,$80,$1C,$0B,$06,$05,$04,$16 ; $CDA007
    db $14,$24,$10,$0C,$B1,$EE,$65,$BF,$4C,$C1,$AB,$01,$3E,$41,$BF,$28 ; $CDA017
    db $18,$3C,$0C,$18,$0F,$01,$04,$E6,$BF,$1F,$01,$06,$1F,$FF,$0A,$12 ; $CDA027
    db $7F,$87,$3F,$08,$50,$20,$18,$07,$24,$3C,$40,$78,$04,$C3,$02,$3F ; $CDA037
    db $30,$A3,$0A,$ED,$3B,$FF,$EA,$B8,$FD,$0E,$7F,$02,$75,$0F,$8A,$80 ; $CDA047
    db $04,$84,$4B,$0C,$92,$7D,$83,$C1,$70,$60,$00,$01,$50,$60,$10,$60 ; $CDA057
    db $B0,$40,$70,$16,$A0,$60,$40,$EA,$35,$60,$A5,$7D,$80,$F3,$09,$BF ; $CDA067
    db $E0,$0A,$BF,$60,$38,$58,$3C,$06,$7C,$10,$24,$78,$34,$F2,$1A,$3A ; $CDA077
    db $19,$0E,$23,$09,$B7,$38,$DA,$61,$06,$F9,$3B,$BF,$03,$73,$65,$70 ; $CDA087
    db $63,$51,$62,$01,$9F,$30,$40,$30,$48,$78,$80,$87,$1F,$63,$00,$61 ; $CDA097
    db $A1,$01,$A3,$1F,$70,$5C,$18,$9C,$18,$14,$98,$04,$18,$0C,$10,$0C ; $CDA0A7
    db $12,$8A,$8F,$FF,$98,$00,$18,$01,$45,$01,$48,$FF,$1C,$19,$AF,$DF ; $CDA0B7
    db $9E,$02,$1F,$18,$07,$1F,$5C,$DC,$7B,$78,$1C,$F8,$14,$B8,$04,$78 ; $CDA0C7
    db $0C,$50,$0C,$32,$0E,$20,$1C,$02,$D8,$2B,$75,$78,$B1,$79,$3D,$E9 ; $CDA0D7
    db $4F,$9F,$34,$3D,$08,$72,$BF,$04,$7F,$11,$0C,$31,$BF,$B3,$F3,$14 ; $CDA0E7
    db $2C,$0F,$BD,$0C,$78,$D0,$06,$BC,$3F,$B9,$BF,$C7,$25,$1A,$01,$C3 ; $CDA0F7
    db $05,$FF,$1F,$E0,$06,$FF,$80,$80,$EC,$B2,$40,$1D,$20,$38,$18,$60 ; $CDA107
    db $25,$08,$30,$10,$68,$38,$33,$ED,$FD,$A3,$01,$BF,$FF,$F1,$38,$7F ; $CDA117
    db $FF,$04,$FF,$F5,$05,$7F,$BE,$FF,$60,$5B,$A0,$F1,$FF,$3F,$BF,$04 ; $CDA127
    db $F8,$FF,$97,$BF,$03,$3A,$7F,$80,$7F,$00,$0A,$0A,$0D,$04,$07,$06 ; $CDA137
    db $03,$02,$07,$21,$7F,$41,$A2,$3A,$EF,$03,$01,$04,$F5,$7F,$80,$D0 ; $CDA147
    db $86,$E0,$FF,$02,$65,$7F,$EF,$81,$52,$6D,$08,$FA,$05,$0F,$11,$1F ; $CDA157
    db $18,$05,$A8,$BF,$FC,$00,$BC,$CF,$7B,$04,$03,$A9,$BF,$F8,$58,$F5 ; $CDA167
    db $05,$BF,$9C,$AC,$9F,$08,$01,$F9,$02,$9F,$93,$01,$D9,$18,$1F,$0E ; $CDA177
    db $38,$83,$E4,$2C,$2C,$20,$04,$BC,$03,$08,$1C,$1E,$06,$08,$BA,$5F ; $CDA187
    db $20,$79,$1F,$08,$C1,$C8,$3C,$40,$38,$DB,$D3,$0C,$82,$50,$60,$70 ; $CDA197
    db $C7,$70,$1D,$A0,$40,$40,$6B,$7A,$50,$AA,$F8,$60,$AF,$1C,$41,$C0 ; $CDA1A7
    db $2E,$0C,$70,$48,$40,$18,$02,$08,$01,$30,$31,$19,$39,$3D,$0E,$11 ; $CDA1B7
    db $CE,$EE,$3B,$1D,$10,$0E,$A1,$31,$00,$13,$C0,$5B,$0F,$10,$0E,$05 ; $CDA1C7
    db $06,$76,$00,$9F,$01,$18,$1C,$90,$18,$5C,$E8,$10,$B4,$0E,$6E,$68 ; $CDA1D7
    db $9F,$39,$5F,$B0,$01,$D4,$1F,$36,$0F,$0B,$05,$D7,$7F,$0F,$CA,$05 ; $CDA1E7
    db $3F,$30,$AD,$B5,$FC,$02,$1E,$E0,$FB,$07,$E6,$B3,$57,$17,$48,$05 ; $CDA1F7
    db $1F,$16,$0D,$1A,$10,$A1,$7F,$1B,$5F,$FD,$F8,$02,$7F,$2E,$8C,$18 ; $CDA207
    db $19,$E4,$D8,$6C,$B0,$58,$3C,$78,$D0,$94,$28,$D8,$24,$19,$98,$D6 ; $CDA217
    db $57,$C3,$4F,$44,$00,$D8,$3B,$9F,$BF,$03,$EF,$7E,$5F,$35,$FD,$04 ; $CDA227
    db $FF,$57,$0C,$B7,$7F,$08,$C0,$70,$20,$E8,$38,$60,$18,$60,$58,$70 ; $CDA237
    db $D0,$80,$44,$C9,$2A,$3F,$30,$14,$FD,$60,$C9,$FA,$38,$BE,$BF,$1C ; $CDA247
    db $17,$65,$7F,$3F,$DD,$12,$20,$7F,$0A,$04,$0A,$0F,$03,$07,$05,$05 ; $CDA257
    db $02,$05,$06,$5B,$F1,$C7,$7F,$0C,$78,$09,$06,$AA,$AA,$FB,$03,$D7 ; $CDA267
    db $5B,$60,$23,$B2,$44,$E7,$47,$7A,$AF,$C9,$C0,$07,$F8,$37,$11,$0E ; $CDA277
    db $11,$3A,$1B,$0F,$77,$85,$45,$5A,$6D,$04,$1C,$04,$02,$1B,$77,$81 ; $CDA287
    db $01,$04,$00,$2B,$00,$F4,$18,$E0,$10,$B8,$F0,$00,$08,$10,$40,$20 ; $CDA297
    db $70,$8C,$31,$06,$B0,$ED,$C1,$09,$01,$F9,$D5,$D8,$63,$04,$36,$03 ; $CDA2A7
    db $1E,$18,$0A,$07,$01,$06,$20,$7C,$03,$F2,$3C,$15,$10,$08,$0C,$A4 ; $CDA2B7
    db $5B,$83,$60,$1A,$10,$08,$28,$30,$20,$60,$68,$AF,$40,$D0,$A0,$C0 ; $CDA2C7
    db $D8,$8D,$0E,$20,$10,$71,$70,$49,$A0,$3B,$3C,$09,$02,$3F,$06,$6E ; $CDA2D7
    db $07,$3F,$9F,$88,$01,$43,$3F,$3D,$4C,$98,$3F,$70,$3B,$20,$30,$39 ; $CDA2E7
    db $7E,$60,$BE,$34,$3F,$59,$49,$13,$47,$D7,$73,$13,$04,$0C,$10,$F6 ; $CDA2F7
    db $86,$02,$7F,$0F,$0C,$00,$DE,$40,$56,$41,$F0,$08,$33,$C0,$48,$1E ; $CDA307
    db $60,$64,$7B,$3A,$A0,$58,$7F,$10,$12,$E0,$50,$20,$7D,$7B,$08,$1D ; $CDA317
    db $3D,$8F,$BE,$02,$04,$05,$F2,$09,$38,$85,$EF,$40,$6B,$0B,$27,$30 ; $CDA327
    db $47,$0C,$98,$77,$A4,$94,$80,$31,$C1,$D7,$10,$0F,$48,$30,$D3,$49 ; $CDA337
    db $3E,$70,$51,$4E,$D0,$10,$E8,$1A,$3C,$0B,$3E,$2C,$5E,$77,$01,$04 ; $CDA347
    db $E2,$E0,$1E,$FC,$03,$FB,$06,$30,$41,$82,$60,$40,$00,$FA,$05,$BB ; $CDA357
    db $3D,$E0,$6E,$E0,$EF,$31,$C0,$18,$B5,$02,$06,$D2,$67,$06,$B6,$FD ; $CDA367
    db $B6,$03,$F4,$38,$00,$74,$19,$24,$30,$33,$0C,$18,$02,$48,$0B,$7C ; $CDA377
    db $38,$F0,$E0,$44,$3D,$AE,$7D,$40,$F0,$39,$5F,$01,$03,$03,$31,$04 ; $CDA387
    db $03,$B9,$09,$06,$D6,$C7,$BF,$63,$7F,$98,$B3,$5B,$BB,$B7,$7F,$1E ; $CDA397
    db $A0,$40,$30,$E0,$10,$A0,$18,$70,$28,$70,$0C,$30,$1E,$60,$3C,$42 ; $CDA3A7
    db $E7,$CF,$82,$77,$20,$00,$10,$6F,$1F,$38,$9E,$3F,$F3,$39,$BA,$3E ; $CDA3B7
    db $02,$77,$0D,$C4,$7F,$3D,$1F,$20,$7A,$7B,$06,$E8,$BD,$77,$0C,$55 ; $CDA3C7
    db $DB,$18,$F5,$7F,$80,$BD,$B2,$FF,$0F,$80,$7F,$0F,$0C,$0F,$06,$1E ; $CDA3D7
    db $19,$0E,$12,$0C,$18,$0E,$EF,$E9,$A4,$02,$BD,$01,$FB,$1B,$3C,$62 ; $CDA3E7
    db $15,$00,$60,$EB,$00,$73,$18,$38,$10,$14,$38,$34,$20,$04,$18,$01 ; $CDA3F7
    db $70,$AA,$BC,$3F,$38,$02,$5F,$01,$FB,$0A,$3C,$FE,$07,$00,$80,$00 ; $CDA407
    db $30,$50,$6C,$54,$18,$37,$07,$1F,$2D,$01,$06,$0A,$35,$38,$AC,$9B ; $CDA417
    db $A2,$B5,$E1,$03,$03,$0F,$0B,$13,$0E,$1A,$EC,$E8,$F4,$E0,$10,$28 ; $CDA427
    db $B7,$76,$06,$59,$5A,$F0,$FF,$6F,$01,$ED,$F9,$A3,$75,$C0,$46,$00 ; $CDA437
    db $78,$48,$7C,$00,$24,$03,$00,$7C,$78,$7C,$48,$24,$9C,$01,$02,$CC ; $CDA447
    db $DC,$48,$01,$78,$87,$04,$33,$01,$00,$68,$AD,$FF,$07,$2C,$08,$70 ; $CDA457
    db $74,$74,$03,$1A,$04,$70,$38,$44,$1A,$0A,$08,$40,$01,$48,$1F,$A7 ; $CDA467
    db $FF,$74,$1D,$BA,$59,$00,$90,$99,$E0,$40,$B0,$04,$38,$58,$18,$3F ; $CDA477
    db $20,$44,$40,$C4,$DB                                             ; $CDA487
L_CDA48C:
    JSR L_CD3825            ; $CDA48C  20 25 38     Mx
    LDA $F03020             ; $CDA48F  AF 20 30 F0  Mx
    BPL L_CDA4C5            ; $CDA493  10 30        Mx
    CPY $4488               ; $CDA495  CC 88 44     Mx
    ORA $88,S               ; $CDA498  03 88        Mx
    MVN $08,$80             ; $CDA49A  54 80 08     Mx
    CPX #$70                ; $CDA49D  E0 70        Mx
    TAY                     ; $CDA49F  A8           Mx
    ASL $3001               ; $CDA4A0  0E 01 30     Mx
    BRA L_CDA4BD            ; $CDA4A3  80 18        Mx
    db $80,$88,$00,$88,$DD,$07,$80,$E3,$D4,$98,$F8,$60,$04,$3F,$48,$70 ; $CDA4A5
    db $30,$48,$C6,$37,$04,$78,$5F,$44                                 ; $CDA4B5
L_CDA4BD:
    TYA                     ; $CDA4BD  98           Mx
    ORA $D4,X               ; $CDA4BE  15 D4        Mx
    RTI                     ; $CDA4C0  40           Mx
    db $70,$57,$9D,$78                                                 ; $CDA4C1
L_CDA4C5:
    LDA ($07),Y             ; $CDA4C5  B1 07        Mx
    ORA $204001,X           ; $CDA4C7  1F 01 40 20  Mx
    SBC [$04]               ; $CDA4CB  E7 04        Mx
    ORA $018040,X           ; $CDA4CD  1F 40 80 01  Mx
    db $7F,$68,$4C                                                     ; $CDA4D1
L_CDA4D4:
    CPY $54E8               ; $CDA4D4  CC E8 54     Mx
    CLV                     ; $CDA4D7  B8           Mx
    SBC ($02,S),Y           ; $CDA4D8  F3 02        Mx
    ADC $9D8AC8,X           ; $CDA4DA  7F C8 8A 9D  Mx
    PLA                     ; $CDA4DE  68           Mx
    ASL                     ; $CDA4DF  0A           Mx
    ADC $EEA6CC,X           ; $CDA4E0  7F CC A6 EE  Mx
    ROL $DF                 ; $CDA4E4  26 DF        Mx
    BIT $DF                 ; $CDA4E6  24 DF        Mx
    AND $4884,X             ; $CDA4E8  3D 84 48     Mx
    ASL $DF                 ; $CDA4EB  06 DF        Mx
    ORA $258E09,X           ; $CDA4ED  1F 09 8E 25  Mx
    ORA $028DFD,X           ; $CDA4F1  1F FD 8D 02  Mx
    CMP ($D8),Y             ; $CDA4F5  D1 D8        Mx
    CPY $01                 ; $CDA4F7  C4 01        Mx
    BPL L_CDA48C            ; $CDA4F9  10 91        Mx
    ASL $77                 ; $CDA4FB  06 77        Mx
    LDA $E15716,X           ; $CDA4FD  BF 16 57 E1  Mx
L_CDA501:
    LDX $4CBF,Y             ; $CDA501  BE BF 4C     Mx
    DEC                     ; $CDA504  3A           Mx
    PHA                     ; $CDA505  48           Mx
    BIT $CC,X               ; $CDA506  34 CC        Mx
    JSR ($149F,X)           ; $CDA508  FC 9F 14     Mx
    ADC ($08,S),Y           ; $CDA50B  73 08        Mx
    ROL $51B8               ; $CDA50D  2E B8 51     Mx
    BCS L_CDA511            ; $CDA510  B0 FF        Mx
    CPX $86                 ; $CDA512  E4 86        Mx
    CPY $345F               ; $CDA514  CC 5F 34     Mx
    ORA #$8C7C              ; $CDA517  09 7C 8C     Mx
    AND $4C0C2A,X           ; $CDA51A  3F 2A 0C 4C  Mx
    MVP $8C,$22             ; $CDA51E  44 22 8C     Mx
    STY $48,X               ; $CDA521  94 48        Mx
    ROR                     ; $CDA523  6A           Mx
    BPL L_CDA4D4            ; $CDA524  10 AE        Mx
    AND $1F,S               ; $CDA526  23 1F        Mx
    MVP $BF,$11             ; $CDA528  44 11 BF     Mx
    BCS L_CDA51D            ; $CDA52B  B0 F0        Mx
    DEC $106B,X             ; $CDA52D  DE 6B 10     Mx
    TYX                     ; $CDA530  BB           Mx
    PLP                     ; $CDA531  28           Mx
    MVP $52,$DF             ; $CDA532  44 DF 52     Mx
    LDY #$B8                ; $CDA535  A0 B8        Mx
    ORA ($04)               ; $CDA537  12 04        Mx
    BRK #$3F                ; $CDA539  00 3F        Mx
    DEC $A3                 ; $CDA53B  C6 A3        Mx
    SBC $101A38             ; $CDA53D  EF 38 1A 10  Mx
    ROR $D4,X               ; $CDA541  76 D4        Mx
    SEC                     ; $CDA543  38           Mx
    ORA ($C6,X)             ; $CDA544  01 C6        Mx
    COP #$82                ; $CDA546  02 82        Mx
    MVP $C4,$27             ; $CDA548  44 27 C4     Mx
    AND $44                 ; $CDA54B  25 44        Mx
    BRK #$94                ; $CDA54D  00 94        Mx
    ORA ($BF,X)             ; $CDA54F  01 BF        Mx
    ORA $3430,Y             ; $CDA551  19 30 34     Mx
    BPL L_CDA5B3            ; $CDA554  10 5D        Mx
    BIT $E6,X               ; $CDA556  34 E6        Mx
    ORA ($BF,X)             ; $CDA558  01 BF        Mx
    JSR L_CD3DE2            ; $CDA55A  20 E2 3D     Mx
    PHA                     ; $CDA55D  48           Mx
    CLI                     ; $CDA55E  58           Mx
    ORA ($BF,X)             ; $CDA55F  01 BF        Mx
    STY $5843               ; $CDA561  8C 43 58     Mx
    TSB $DF                 ; $CDA564  04 DF        Mx
    JMP ($1BE4)             ; $CDA566  6C E4 1B     Mx
    db $9C,$9F,$FF,$E3,$18,$48,$C4,$01,$9F,$F8,$80,$65,$DF,$64,$68,$BB ; $CDA569
    db $CA,$3F,$88,$42,$9A,$1B,$5A,$3F,$C8,$3F,$E0,$B3,$00,$36,$7A,$3A ; $CDA579
    db $01,$3F,$33,$21,$7C,$F4,$03,$FF,$21,$DF,$9F,$F9,$04,$FF,$4C,$06 ; $CDA589
    db $3F,$0C,$25,$00,$28,$04,$38,$38,$30,$5C,$04,$58,$70,$44,$63,$40 ; $CDA599
    db $30,$56,$08,$9F,$8D,$21,$18,$7F,$F8,$8C                         ; $CDA5A9
L_CDA5B3:
    AND $FC,S               ; $CDA5B3  23 FC        Mx
    BRK #$95                ; $CDA5B5  00 95        Mx
    LDA $013710,X           ; $CDA5B7  BF 10 37 01  Mx
    COP #$18                ; $CDA5BB  02 18        Mx
    ADC $200120,X           ; $CDA5BD  7F 20 01 20  Mx
    BRK #$92                ; $CDA5C1  00 92        Mx
    ORA ($DB,X)             ; $CDA5C3  01 DB        Mx
    STA $BF02D2,X           ; $CDA5C5  9F D2 02 BF  Mx
    DEC $029F,X             ; $CDA5C9  DE 9F 02     Mx
    LDA $83C601,X           ; $CDA5CC  BF 01 C6 83  Mx
    SBC [$00]               ; $CDA5D0  E7 00        Mx
    ROR $44                 ; $CDA5D2  66 44        Mx
    ORA ($B6)               ; $CDA5D4  12 B6        Mx
    ORA ($64,X)             ; $CDA5D6  01 64        Mx
    ORA ($0E,X)             ; $CDA5D8  01 0E        Mx
    BPL L_CDA5F4            ; $CDA5DA  10 18        Mx
    TSB $82                 ; $CDA5DC  04 82        Mx
    CMP $0216,Y             ; $CDA5DE  D9 16 02     Mx
    JMP ($01C5)             ; $CDA5E1  6C C5 01     Mx
    db $28,$33,$5F,$1F,$C7,$AE,$B6,$56,$09,$54,$02,$6C,$12,$E8,$3F,$CE ; $CDA5E4
L_CDA5F4:
    SEC                     ; $CDA5F4  38           Mx
    MVN $BB,$2B             ; $CDA5F5  54 2B BB     Mx
    JMP ($3F00)             ; $CDA5F8  6C 00 3F     Mx
    db $C6,$A3,$63,$70,$3A,$28,$14,$18,$38,$54,$68,$1F,$21,$82,$36,$42 ; $CDA5FB
    db $85,$1F,$EA,$55,$6C,$B9,$3F,$05,$C6,$43,$1F,$43,$50,$32,$1F,$3C ; $CDA60B
    db $9A,$38,$5B,$FF,$29,$1F,$68,$1F,$6C,$FF,$7C,$0E,$42,$7A,$40,$4A ; $CDA61B
    db $30,$79,$08,$BA,$46,$02,$7C,$01,$7C,$02,$40,$3C,$40,$04,$0C,$57 ; $CDA62B
    db $81,$56,$64,$1F,$F0,$02,$00,$16,$08,$0B,$79,$14,$05,$10,$13,$F5 ; $CDA63B
    db $07,$06,$3D,$FF,$FF,$05,$0F,$E0,$02,$0D,$B7,$47,$5F,$A0,$85,$10 ; $CDA64B
    db $87,$11,$07,$98,$A6,$06,$1F,$19,$F1,$01,$1F,$FF,$00,$E0,$26,$1F ; $CDA65B
    db $43,$C3,$A5,$C7,$3C,$E3,$1E,$02,$1F,$81,$3A,$00,$62,$BE,$61,$02 ; $CDA66B
    db $1F,$00,$E0,$60,$E0,$30,$12,$00,$B0,$A2,$95,$71,$7F,$00,$40,$80 ; $CDA67B
    db $D8,$99,$22,$80,$7D,$40,$47,$7D,$6A,$F7,$00,$EF,$8E,$00,$00,$00 ; $CDA68B
    db $20,$00,$1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA69B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA6AB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA6BB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA6CB
    db $00,$00,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06,$00 ; $CDA6DB
    db $07,$00,$08,$00,$09,$00,$0A,$00,$0A,$40,$0B,$00,$0C,$00,$0D,$00 ; $CDA6EB
    db $0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$00,$15,$00 ; $CDA6FB
    db $15,$40,$14,$40,$13,$40,$12,$40,$16,$00,$17,$00,$18,$00,$19,$00 ; $CDA70B
    db $1A,$00,$1B,$00,$1C,$00,$00,$00,$00,$00,$1D,$00,$1E,$00,$1F,$00 ; $CDA71B
    db $20,$00,$21,$00,$22,$00,$23,$00,$24,$00,$25,$00,$26,$00,$27,$00 ; $CDA72B
    db $28,$00,$28,$00,$28,$00,$29,$00,$2A,$00,$2B,$00,$2C,$00,$2D,$00 ; $CDA73B
    db $2D,$40,$2C,$40,$2B,$40,$2E,$00,$2F,$00,$30,$00,$31,$00,$32,$00 ; $CDA74B
    db $33,$00,$34,$00,$35,$00,$00,$00,$00,$00,$36,$00,$37,$00,$38,$00 ; $CDA75B
    db $39,$00,$3A,$00,$3B,$00,$3C,$00,$3D,$00,$3E,$00,$3F,$00,$40,$00 ; $CDA76B
    db $41,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$47,$00 ; $CDA77B
    db $47,$40,$48,$00,$49,$00,$4A,$00,$4B,$00,$4C,$00,$4D,$00,$4E,$00 ; $CDA78B
    db $4F,$00,$50,$00,$51,$00,$52,$00,$53,$00,$54,$00,$55,$00,$56,$00 ; $CDA79B
    db $57,$00,$58,$00,$59,$00,$5A,$00,$5B,$00,$5C,$00,$5D,$00,$5D,$00 ; $CDA7AB
    db $5D,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00,$61,$00,$62,$00,$63,$00 ; $CDA7BB
    db $64,$00,$65,$00,$66,$00,$57,$40,$56,$40,$55,$40,$67,$00,$68,$00 ; $CDA7CB
    db $69,$00,$6A,$00,$6B,$00,$6C,$00,$6D,$00,$00,$00,$00,$00,$00,$00 ; $CDA7DB
    db $00,$00,$6E,$00,$6F,$00,$70,$00,$71,$00,$72,$00,$73,$00,$73,$00 ; $CDA7EB
    db $73,$00,$73,$00,$74,$00,$75,$00,$76,$00,$77,$00,$78,$00,$78,$00 ; $CDA7FB
    db $79,$00,$7A,$00,$6E,$40,$00,$00,$00,$00,$00,$00,$00,$00,$6D,$40 ; $CDA80B
    db $7B,$00,$7C,$00,$7D,$00,$7E,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA81B
    db $00,$00,$00,$00,$7F,$00,$80,$00,$81,$00,$82,$00,$83,$00,$84,$00 ; $CDA82B
    db $84,$00,$84,$00,$84,$00,$85,$00,$86,$00,$87,$00,$88,$00,$89,$00 ; $CDA83B
    db $8A,$00,$7F,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA84B
    db $7E,$40,$7D,$40,$8B,$00,$8C,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA85B
    db $00,$00,$00,$00,$8D,$00,$8E,$00,$8F,$00,$90,$00,$5C,$00,$5D,$00 ; $CDA86B
    db $5D,$00,$5D,$00,$5D,$00,$5E,$00,$91,$00,$92,$00,$93,$00,$94,$00 ; $CDA87B
    db $95,$00,$8D,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA88B
    db $8C,$40,$96,$00,$97,$00,$98,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA89B
    db $00,$00,$00,$00,$99,$00,$9A,$00,$9B,$00,$9C,$00,$9D,$00,$73,$00 ; $CDA8AB
    db $73,$00,$73,$00,$73,$00,$9E,$00,$9F,$00,$A0,$00,$A1,$00,$A2,$00 ; $CDA8BB
    db $A3,$00,$99,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA8CB
    db $98,$40,$97,$40,$A4,$00,$A5,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA8DB
    db $00,$00,$00,$00,$A6,$00,$A7,$00,$A8,$00,$A9,$00,$AA,$00,$AB,$00 ; $CDA8EB
    db $AB,$00,$AB,$00,$AC,$00,$AD,$00,$AE,$00,$AF,$00,$B0,$00,$B1,$00 ; $CDA8FB
    db $B2,$00,$B3,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDA90B
    db $A5,$40,$A4,$40,$B4,$00,$B5,$00,$B6,$00,$00,$00,$00,$00,$00,$00 ; $CDA91B
    db $00,$00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$5C,$00,$5D,$00,$5D,$00 ; $CDA92B
    db $5D,$00,$5D,$00,$5E,$00,$BB,$00,$BC,$00,$BD,$00,$BE,$00,$BE,$00 ; $CDA93B
    db $BE,$00,$BF,$00,$B7,$40,$00,$00,$00,$00,$00,$00,$00,$00,$B6,$40 ; $CDA94B
    db $B5,$40,$C0,$00,$C1,$00,$C2,$00,$C3,$00,$C4,$00,$C5,$00,$C6,$00 ; $CDA95B
    db $C7,$00,$C8,$00,$C9,$00,$CA,$00,$CB,$00,$CC,$00,$73,$00,$73,$00 ; $CDA96B
    db $73,$00,$73,$00,$74,$00,$CD,$00,$CE,$00,$CF,$00,$BE,$00,$BE,$00 ; $CDA97B
    db $BE,$00,$BE,$00,$D0,$00,$D1,$00,$D2,$00,$D3,$00,$C4,$40,$D4,$00 ; $CDA98B
    db $D5,$00,$D6,$00,$C1,$00,$D7,$00,$D8,$00,$D9,$00,$DA,$00,$DB,$00 ; $CDA99B
    db $DC,$00,$DD,$00,$DE,$00,$DF,$00,$A9,$00,$AA,$00,$AB,$00,$AB,$00 ; $CDA9AB
    db $AB,$00,$AC,$00,$E0,$00,$E1,$00,$E2,$00,$E3,$00,$E4,$00,$E5,$00 ; $CDA9BB
    db $E6,$00,$E7,$00,$E8,$00,$E9,$00,$EA,$00,$EB,$00,$EC,$00,$ED,$00 ; $CDA9CB
    db $EE,$00,$C1,$40,$EF,$00,$F0,$00,$F1,$00,$F2,$00,$F3,$00,$F4,$00 ; $CDA9DB
    db $F5,$00,$F6,$00,$F7,$00,$F8,$00,$5C,$00,$5D,$00,$5D,$00,$5D,$00 ; $CDA9EB
    db $5D,$00,$5E,$00,$BB,$00,$F9,$00,$E2,$00,$FA,$00,$FB,$00,$FC,$00 ; $CDA9FB
    db $FD,$00,$FE,$00,$FF,$00,$00,$01,$01,$01,$FB,$00,$FB,$00,$02,$01 ; $CDAA0B
    db $E2,$00,$C1,$40,$03,$01,$04,$01,$05,$01,$06,$01,$07,$01,$08,$01 ; $CDAA1B
    db $08,$01,$09,$01,$0A,$01,$0B,$01,$0C,$01,$0D,$01,$0D,$01,$0D,$01 ; $CDAA2B
    db $0D,$01,$0E,$01,$0F,$01,$10,$01,$E2,$00,$11,$01,$12,$01,$12,$01 ; $CDAA3B
    db $12,$01,$13,$01,$14,$01,$15,$01,$12,$01,$12,$01,$12,$01,$16,$01 ; $CDAA4B
    db $E2,$00,$17,$01,$18,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDAA5B
    db $00,$00,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D,$01,$1D,$01,$1D,$01 ; $CDAA6B
    db $1D,$01,$1D,$01,$1E,$01,$1F,$01,$20,$01,$21,$01,$22,$01,$22,$01 ; $CDAA7B
    db $22,$01,$22,$01,$22,$01,$22,$01,$22,$01,$22,$01,$22,$01,$23,$01 ; $CDAA8B
    db $24,$01,$25,$01,$26,$01,$27,$01,$28,$01,$28,$01,$28,$01,$28,$01 ; $CDAA9B
    db $29,$01,$2A,$01,$2B,$01,$2C,$01,$2C,$01,$2C,$01,$2C,$01,$2C,$01 ; $CDAAAB
    db $2C,$01,$2D,$01,$2E,$01,$2F,$01,$30,$01,$31,$01,$32,$01,$32,$01 ; $CDAABB
    db $32,$01,$32,$01,$32,$01,$32,$01,$32,$01,$32,$01,$32,$01,$31,$41 ; $CDAACB
    db $30,$01,$33,$01,$34,$01,$35,$01,$36,$01,$37,$01,$38,$01,$39,$01 ; $CDAADB
    db $3A,$01,$3B,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDAAEB
    db $00,$00,$3C,$01,$3D,$01,$3E,$01,$30,$01,$3F,$01,$40,$01,$41,$01 ; $CDAAFB
    db $42,$01,$43,$01,$44,$01,$45,$01,$46,$01,$47,$01,$40,$01,$3F,$41 ; $CDAB0B
    db $30,$01,$33,$01,$48,$01,$49,$01,$49,$01,$49,$01,$49,$01,$4A,$01 ; $CDAB1B
    db $4B,$01,$4C,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDAB2B
    db $00,$00,$4D,$01,$4E,$01,$4F,$01,$50,$01,$51,$01,$52,$01,$53,$01 ; $CDAB3B
    db $54,$01,$55,$01,$56,$01,$57,$01,$58,$01,$59,$01,$5A,$01,$51,$41 ; $CDAB4B
    db $50,$41,$5B,$01,$5C,$01,$5D,$01,$5D,$01,$5D,$01,$5D,$01,$5D,$01 ; $CDAB5B
    db $5E,$01,$5F,$01,$60,$01,$61,$01,$61,$01,$61,$01,$61,$01,$61,$01 ; $CDAB6B
    db $61,$01,$62,$01,$63,$01,$64,$01,$65,$01,$66,$01,$67,$01,$67,$01 ; $CDAB7B
    db $68,$01,$69,$01,$69,$01,$69,$01,$69,$01,$68,$41,$67,$01,$66,$41 ; $CDAB8B
    db $65,$41,$6A,$01,$6B,$01,$6C,$01,$6D,$01,$6E,$01,$6C,$01,$6D,$01 ; $CDAB9B
    db $6E,$01,$6F,$01,$70,$01,$71,$01,$72,$01,$73,$01,$73,$01,$73,$01 ; $CDABAB
    db $73,$01,$74,$01,$75,$01,$76,$01,$77,$01,$78,$01,$79,$01,$79,$01 ; $CDABBB
    db $7A,$01,$00,$00,$00,$00,$00,$00,$00,$00,$7B,$01,$79,$01,$78,$41 ; $CDABCB
    db $77,$41,$7C,$01,$7D,$01,$7E,$01,$7F,$01,$80,$01,$7E,$01,$7F,$01 ; $CDABDB
    db $80,$01,$81,$01,$82,$01,$83,$01,$84,$01,$85,$01,$86,$01,$87,$01 ; $CDABEB
    db $88,$01,$88,$01,$89,$01,$8A,$01,$8A,$01,$8B,$01,$8C,$01,$8C,$01 ; $CDABFB
    db $8D,$01,$8E,$01,$8F,$01,$90,$01,$8E,$01,$91,$01,$8C,$01,$8B,$41 ; $CDAC0B
    db $8A,$01,$92,$01,$7D,$01,$93,$01,$94,$01,$95,$01,$93,$01,$94,$01 ; $CDAC1B
    db $95,$01,$96,$01,$97,$01,$98,$01,$99,$01,$9A,$01,$00,$00,$9B,$01 ; $CDAC2B
    db $9C,$01,$9D,$01,$9E,$01,$9F,$01,$A0,$01,$A1,$01,$A2,$01,$A2,$01 ; $CDAC3B
    db $A2,$01,$A2,$01,$A3,$01,$A4,$01,$A2,$01,$A2,$01,$A2,$01,$A1,$41 ; $CDAC4B
    db $A0,$41,$A5,$01,$A6,$01,$A7,$01,$A8,$01,$A9,$01,$A7,$01,$A8,$01 ; $CDAC5B
    db $A9,$01,$AA,$01,$AB,$01,$AC,$01,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDAC6B
    db $00,$00,$AD,$01,$AE,$01,$AF,$01,$B0,$01,$B1,$01,$B2,$01,$B3,$01 ; $CDAC7B
    db $B4,$01,$B5,$01,$B6,$01,$B7,$01,$B8,$01,$B9,$01,$B2,$01,$B1,$41 ; $CDAC8B
    db $BA,$01,$BB,$01,$7D,$01,$7E,$01,$7F,$01,$80,$01,$7E,$01,$7F,$01 ; $CDAC9B
    db $80,$01,$BC,$01,$BD,$01,$BE,$01,$BF,$01,$00,$00,$00,$00,$00,$00 ; $CDACAB
    db $C0,$01,$C1,$01,$C2,$01,$C3,$01,$C4,$01,$C5,$01,$C6,$01,$C7,$01 ; $CDACBB
    db $C7,$01,$C7,$01,$C7,$01,$C7,$01,$C7,$01,$C7,$01,$C6,$41,$C5,$41 ; $CDACCB
    db $C4,$41,$C8,$01,$7D,$01,$93,$01,$94,$01,$95,$01,$93,$01,$94,$01 ; $CDACDB
    db $95,$01,$C9,$01,$CA,$01,$CB,$01,$CC,$01,$CD,$01,$CE,$01,$CF,$01 ; $CDACEB
    db $D0,$01,$D1,$01,$D2,$01,$D3,$01,$D4,$01,$D5,$01,$D6,$01,$D7,$01 ; $CDACFB
    db $D7,$01,$D8,$01,$D9,$01,$D8,$41,$D7,$01,$D7,$01,$D6,$41,$D5,$41 ; $CDAD0B
    db $D4,$41,$DA,$01,$A6,$01,$A7,$01,$A8,$01,$A9,$01,$A7,$01,$A8,$01 ; $CDAD1B
    db $A9,$01,$DB,$01,$94,$01,$DC,$01,$73,$01,$73,$01,$73,$01,$73,$01 ; $CDAD2B
    db $DD,$01,$DE,$01,$DF,$01,$E0,$01,$E1,$01,$E2,$01,$E3,$01,$E4,$01 ; $CDAD3B
    db $E5,$01,$E6,$01,$E7,$01,$E8,$01,$E9,$01,$EA,$01,$E3,$41,$E2,$41 ; $CDAD4B
    db $E1,$41,$EB,$01,$EC,$01,$ED,$01,$ED,$01,$ED,$01,$ED,$01,$ED,$01 ; $CDAD5B
    db $ED,$01,$ED,$01,$ED,$01,$ED,$01,$ED,$01,$ED,$01,$ED,$01,$ED,$01 ; $CDAD6B
    db $ED,$01,$EE,$01,$EF,$01,$F0,$01,$F1,$01,$F2,$01,$F3,$01,$F4,$01 ; $CDAD7B
    db $F4,$01,$F5,$01,$F6,$01,$F5,$41,$F4,$01,$F4,$01,$F3,$41,$F2,$41 ; $CDAD8B
    db $F1,$41,$F7,$01,$20,$00,$1C,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDAD9B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDADAB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDADBB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDADCB
    db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00 ; $CDADDB
    db $05,$00,$06,$00,$07,$00,$08,$00,$09,$00,$0A,$00,$0A,$40,$0B,$00 ; $CDADEB
    db $0C,$00,$0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13,$00 ; $CDADFB
    db $14,$00,$15,$00,$15,$40,$14,$40,$13,$40,$12,$40,$16,$00,$17,$00 ; $CDAE0B
    db $18,$00,$19,$00,$1A,$00,$1B,$00,$1C,$00,$00,$00,$00,$00,$1D,$00 ; $CDAE1B
    db $1E,$00,$1F,$00,$20,$00,$21,$00,$22,$00,$23,$00,$24,$00,$25,$00 ; $CDAE2B
    db $26,$00,$27,$00,$28,$00,$28,$00,$28,$00,$29,$00,$2A,$00,$2B,$00 ; $CDAE3B
    db $2C,$00,$2D,$00,$2D,$40,$2C,$40,$2B,$40,$2E,$00,$2F,$00,$30,$00 ; $CDAE4B
    db $31,$00,$32,$00,$33,$00,$34,$00,$35,$00,$00,$00,$00,$00,$36,$00 ; $CDAE5B
    db $37,$00,$38,$00,$39,$00,$3A,$00,$3B,$00,$3C,$00,$3D,$00,$3E,$00 ; $CDAE6B
    db $3F,$00,$40,$00,$41,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00 ; $CDAE7B
    db $46,$00,$47,$00,$47,$40,$48,$00,$49,$00,$4A,$00,$4B,$00,$4C,$00 ; $CDAE8B
    db $4D,$00,$4E,$00,$4F,$00,$50,$00,$51,$00,$52,$00,$53,$00,$54,$00 ; $CDAE9B
    db $55,$00,$56,$00,$57,$00,$58,$00,$59,$00,$5A,$00,$5B,$00,$5C,$00 ; $CDAEAB
    db $5D,$00,$5D,$00,$5D,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00,$61,$00 ; $CDAEBB
    db $62,$00,$63,$00,$64,$00,$65,$00,$66,$00,$57,$40,$56,$40,$55,$40 ; $CDAECB
    db $67,$00,$68,$00,$69,$00,$6A,$00,$6B,$00,$6C,$00,$6D,$00,$00,$00 ; $CDAEDB
    db $00,$00,$00,$00,$00,$00,$6E,$00,$6F,$00,$70,$00,$71,$00,$72,$00 ; $CDAEEB
    db $73,$00,$73,$00,$73,$00,$73,$00,$74,$00,$75,$00,$76,$00,$77,$00 ; $CDAEFB
    db $78,$00,$78,$00,$79,$00,$7A,$00,$6E,$40,$00,$00,$00,$00,$00,$00 ; $CDAF0B
    db $00,$00,$6D,$40,$7B,$00,$7C,$00,$7D,$00,$7E,$00,$00,$00,$00,$00 ; $CDAF1B
    db $00,$00,$00,$00,$00,$00,$00,$00,$7F,$00,$80,$00,$81,$00,$82,$00 ; $CDAF2B
    db $83,$00,$84,$00,$84,$00,$84,$00,$84,$00,$85,$00,$86,$00,$87,$00 ; $CDAF3B
    db $88,$00,$89,$00,$8A,$00,$7F,$40,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDAF4B
    db $00,$00,$00,$00,$7E,$40,$7D,$40,$8B,$00,$8C,$00,$00,$00,$00,$00 ; $CDAF5B
    db $00,$00,$00,$00,$00,$00,$00,$00,$8D,$00,$8E,$00,$8F,$00,$90,$00 ; $CDAF6B
    db $5C,$00,$5D,$00,$5D,$00,$5D,$00,$5D,$00,$5E,$00,$91,$00,$92,$00 ; $CDAF7B
    db $93,$00,$94,$00,$95,$00,$8D,$40,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDAF8B
    db $00,$00,$00,$00,$8C,$40,$96,$00,$97,$00,$98,$00,$00,$00,$00,$00 ; $CDAF9B
    db $00,$00,$00,$00,$00,$00,$00,$00,$99,$00,$9A,$00,$9B,$00,$9C,$00 ; $CDAFAB
    db $9D,$00,$73,$00,$73,$00,$73,$00,$73,$00,$9E,$00,$9F,$00,$A0,$00 ; $CDAFBB
    db $A1,$00,$A2,$00,$A3,$00,$99,$40,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDAFCB
    db $00,$00,$00,$00,$98,$40,$97,$40,$A4,$00,$A5,$00,$00,$00,$00,$00 ; $CDAFDB
    db $00,$00,$00,$00,$00,$00,$00,$00,$A6,$00,$A7,$00,$A8,$00,$A9,$00 ; $CDAFEB
    db $AA,$00,$AB,$00,$AB,$00,$AB,$00,$AC,$00,$AD,$00,$AE,$00,$AF,$00 ; $CDAFFB
    db $B0,$00,$B1,$00,$B2,$00,$B3,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDB00B
    db $00,$00,$00,$00,$A5,$40,$A4,$40,$B4,$00,$B5,$00,$B6,$00,$00,$00 ; $CDB01B
    db $00,$00,$00,$00,$00,$00,$B7,$00,$B8,$00,$B9,$00,$BA,$00,$5C,$00 ; $CDB02B
    db $5D,$00,$5D,$00,$5D,$00,$5D,$00,$5E,$00,$BB,$00,$BC,$00,$BD,$00 ; $CDB03B
    db $BE,$00,$BE,$00,$BE,$00,$BF,$00,$B7,$40,$00,$00,$00,$00,$00,$00 ; $CDB04B
    db $00,$00,$B6,$40,$B5,$40,$C0,$00,$C1,$00,$C2,$00,$C3,$00,$C4,$00 ; $CDB05B
    db $C5,$00,$C6,$00,$C7,$00,$C8,$00,$C9,$00,$CA,$00,$CB,$00,$CC,$00 ; $CDB06B
    db $73,$00,$73,$00,$73,$00,$73,$00,$74,$00,$CD,$00,$CE,$00,$CF,$00 ; $CDB07B
    db $BE,$00,$BE,$00,$BE,$00,$BE,$00,$D0,$00,$D1,$00,$D2,$00,$D3,$00 ; $CDB08B
    db $C4,$40,$D4,$00,$D5,$00,$D6,$00,$C1,$00,$D7,$00,$D8,$00,$D9,$00 ; $CDB09B
    db $DA,$00,$DB,$00,$DC,$00,$DD,$00,$DE,$00,$DF,$00,$A9,$00,$AA,$00 ; $CDB0AB
    db $AB,$00,$AB,$00,$AB,$00,$AC,$00,$E0,$00,$E1,$00,$E2,$00,$E3,$00 ; $CDB0BB
    db $E4,$00,$E5,$00,$E6,$00,$E7,$00,$E8,$00,$E9,$00,$EA,$00,$EB,$00 ; $CDB0CB
    db $EC,$00,$ED,$00,$EE,$00,$C1,$40,$EF,$00,$F0,$00,$F1,$00,$F2,$00 ; $CDB0DB
    db $F3,$00,$F4,$00,$F5,$00,$F6,$00,$F7,$00,$F8,$00,$5C,$00,$5D,$00 ; $CDB0EB
    db $5D,$00,$5D,$00,$5D,$00,$5E,$00,$BB,$00,$F9,$00,$E2,$00,$FA,$00 ; $CDB0FB
    db $FB,$00,$FC,$00,$FD,$00,$FE,$00,$FF,$00,$00,$01,$01,$01,$FB,$00 ; $CDB10B
    db $FB,$00,$02,$01,$E2,$00,$C1,$40,$03,$01,$04,$01,$05,$01,$06,$01 ; $CDB11B
    db $07,$01,$08,$01,$08,$01,$09,$01,$0A,$01,$0B,$01,$0C,$01,$0D,$01 ; $CDB12B
    db $0D,$01,$0D,$01,$0D,$01,$0E,$01,$0F,$01,$10,$01,$E2,$00,$11,$01 ; $CDB13B
    db $12,$01,$12,$01,$12,$01,$13,$01,$14,$01,$15,$01,$12,$01,$12,$01 ; $CDB14B
    db $12,$01,$16,$01,$E2,$00,$17,$01,$18,$01,$00,$00,$00,$00,$00,$00 ; $CDB15B
    db $00,$00,$00,$00,$00,$00,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D,$01 ; $CDB16B
    db $1D,$01,$1D,$01,$1D,$01,$1D,$01,$1E,$01,$1F,$01,$20,$01,$21,$01 ; $CDB17B
    db $22,$01,$22,$01,$22,$01,$22,$01,$22,$01,$22,$01,$22,$01,$22,$01 ; $CDB18B
    db $22,$01,$23,$01,$24,$01,$25,$01,$26,$01,$27,$01,$28,$01,$28,$01 ; $CDB19B
    db $28,$01,$28,$01,$29,$01,$2A,$01,$2B,$01,$2C,$01,$2C,$01,$2C,$01 ; $CDB1AB
    db $2C,$01,$2C,$01,$2C,$01,$2D,$01,$2E,$01,$2F,$01,$30,$01,$31,$01 ; $CDB1BB
    db $32,$01,$32,$01,$32,$01,$32,$01,$32,$01,$32,$01,$32,$01,$32,$01 ; $CDB1CB
    db $32,$01,$31,$41,$30,$01,$33,$01,$34,$01,$35,$01,$36,$01,$37,$01 ; $CDB1DB
    db $38,$01,$39,$01,$3A,$01,$3B,$01,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDB1EB
    db $00,$00,$00,$00,$00,$00,$3C,$01,$3D,$01,$3E,$01,$30,$01,$3F,$01 ; $CDB1FB
    db $40,$01,$41,$01,$42,$01,$43,$01,$44,$01,$45,$01,$46,$01,$47,$01 ; $CDB20B
    db $40,$01,$3F,$41,$30,$01,$33,$01,$48,$01,$49,$01,$49,$01,$49,$01 ; $CDB21B
    db $49,$01,$4A,$01,$4B,$01,$4C,$01,$00,$00,$00,$00,$00,$00,$00,$00 ; $CDB22B
    db $00,$00,$00,$00,$00,$00,$4D,$01,$4E,$01,$4F,$01,$50,$01,$51,$01 ; $CDB23B
    db $52,$01,$53,$01,$54,$01,$55,$01,$56,$01,$57,$01,$58,$01,$59,$01 ; $CDB24B
    db $5A,$01,$51,$41,$50,$41,$5B,$01,$5C,$01,$5D,$01,$5D,$01,$5D,$01 ; $CDB25B
    db $5D,$01,$5D,$01,$5E,$01,$5F,$01,$60,$01,$61,$01,$61,$01,$61,$01 ; $CDB26B
    db $61,$01,$61,$01,$61,$01,$62,$01,$63,$01,$64,$01,$65,$01,$66,$01 ; $CDB27B
    db $67,$01,$67,$01,$68,$01,$69,$01,$69,$01,$69,$01,$69,$01,$68,$41 ; $CDB28B
    db $67,$01,$66,$41,$65,$41,$6A,$01,$6B,$01,$6C,$01,$6D,$01,$6E,$01 ; $CDB29B
    db $6C,$01,$6D,$01,$6E,$01,$6F,$01,$70,$01,$71,$01,$72,$01,$73,$01 ; $CDB2AB
    db $73,$01,$73,$01,$73,$01,$74,$01,$75,$01,$76,$01,$77,$01,$78,$01 ; $CDB2BB
    db $79,$01,$79,$01,$7A,$01,$00,$00,$00,$00,$00,$00,$00,$00,$7B,$01 ; $CDB2CB
    db $79,$01,$78,$41,$77,$41,$7C,$01,$7D,$01,$7E,$01,$7F,$01,$80,$01 ; $CDB2DB
    db $7E,$01,$7F,$01,$80,$01,$81,$01,$82,$01,$83,$01,$84,$01,$85,$01 ; $CDB2EB
    db $86,$01,$87,$01,$88,$01,$88,$01,$89,$01,$8A,$01,$8A,$01,$8B,$01 ; $CDB2FB
    db $8C,$01,$8C,$01,$8D,$01,$8E,$01,$8F,$01,$90,$01,$8E,$01,$91,$01 ; $CDB30B
    db $8C,$01,$8B,$41,$8A,$01,$92,$01,$7D,$01,$93,$01,$94,$01,$95,$01 ; $CDB31B
    db $93,$01,$94,$01,$95,$01,$96,$01,$97,$01,$98,$01,$99,$01,$9A,$01 ; $CDB32B
    db $00,$00,$9B,$01,$9C,$01,$9D,$01,$9E,$01,$9F,$01,$A0,$01,$A1,$01 ; $CDB33B
    db $A2,$01,$A2,$01,$A2,$01,$A2,$01,$A3,$01,$A4,$01,$A2,$01,$A2,$01 ; $CDB34B
    db $A2,$01,$A1,$41,$A0,$41,$A5,$01,$A6,$01,$A7,$01,$A8,$01,$A9,$01 ; $CDB35B
    db $A7,$01,$A8,$01,$A9,$01,$AA,$01,$AB,$01,$AC,$01,$00,$00,$00,$00 ; $CDB36B
    db $00,$00,$00,$00,$00,$00,$AD,$01,$AE,$01,$AF,$01,$B0,$01,$B1,$01 ; $CDB37B
    db $B2,$01,$B3,$01,$B4,$01,$B5,$01,$B6,$01,$B7,$01,$B8,$01,$B9,$01 ; $CDB38B
    db $B2,$01,$B1,$41,$BA,$01,$BB,$01,$7D,$01,$7E,$01,$7F,$01,$80,$01 ; $CDB39B
    db $7E,$01,$7F,$01,$80,$01,$BC,$01,$BD,$01,$BE,$01,$BF,$01,$00,$00 ; $CDB3AB
    db $00,$00,$00,$00,$C0,$01,$C1,$01,$C2,$01,$C3,$01,$C4,$01,$C5,$01 ; $CDB3BB
    db $C6,$01,$C7,$01,$C7,$01,$C7,$01,$C7,$01,$C7,$01,$C7,$01,$C7,$01 ; $CDB3CB
    db $C6,$41,$C8,$01,$C9,$01,$CA,$01,$7D,$01,$93,$01,$94,$01,$95,$01 ; $CDB3DB
    db $93,$01,$94,$01,$95,$01,$CB,$01,$CC,$01,$CD,$01,$CE,$01,$CF,$01 ; $CDB3EB
    db $D0,$01,$D1,$01,$D2,$01,$D3,$01,$D4,$01,$D5,$01,$D6,$01,$D7,$01 ; $CDB3FB
    db $D8,$01,$D9,$01,$D9,$01,$D9,$01,$D9,$01,$D9,$01,$D9,$01,$D9,$01 ; $CDB40B
    db $DA,$01,$DB,$01,$DC,$01,$DD,$01,$A6,$01,$A7,$01,$A8,$01,$A9,$01 ; $CDB41B
    db $A7,$01,$A8,$01,$A9,$01,$DE,$01,$94,$01,$DF,$01,$73,$01,$73,$01 ; $CDB42B
    db $73,$01,$73,$01,$E0,$01,$E1,$01,$E2,$01,$E3,$01,$E4,$01,$E5,$01 ; $CDB43B
    db $E6,$01,$E7,$01,$E8,$01,$E9,$01,$EA,$01,$C9,$01,$C9,$01,$C9,$01 ; $CDB44B
    db $C9,$01,$EB,$01,$EC,$01,$ED,$01,$EE,$01,$EF,$01,$EF,$01,$EF,$01 ; $CDB45B
    db $EF,$01,$EF,$01,$EF,$01,$EF,$01,$EF,$01,$EF,$01,$EF,$01,$EF,$01 ; $CDB46B
    db $EF,$01,$EF,$01,$EF,$01,$F0,$01,$F1,$01,$F2,$01,$F3,$01,$F4,$01 ; $CDB47B
    db $F5,$01,$F6,$01,$F6,$01,$F6,$01,$F6,$01,$F6,$01,$F6,$01,$F6,$01 ; $CDB48B
    db $F7,$01,$F8,$01,$F9,$01,$FA,$01,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDB9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBCAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBCBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBCCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBCDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBCEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBCFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBD9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBFEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDBFFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDC9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCCAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCCBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCCCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCCDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCCEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCCFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCD9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCFEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDCFFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDD9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF                         ; $CDDC9B
L_CDDCA5:
    SBC $FFFFFF,X           ; $CDDCA5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCA9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCAD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCB1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCB5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCB9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCBD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCC1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCC5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCC9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCCD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCD1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCD5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCD9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCDD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCE1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCE5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCE9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCED  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCF1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCF5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCF9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDCFD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD01  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD05  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD09  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD0D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD11  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD15  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD19  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD1D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD21  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD25  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD29  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD2D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD31  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD35  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD39  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD3D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD41  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD45  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD49  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD4D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD51  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD55  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD59  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD5D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD61  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD65  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD69  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD6D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD71  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD75  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD79  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD7D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD81  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD85  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD89  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD8D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD91  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD95  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD99  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDD9D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDA1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDA5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDA9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDAD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDB1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDB5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDB9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDBD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDC1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDC5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDC9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDCD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDD1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDD5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDD9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDDD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDE1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDE5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDE9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDED  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDF1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDF5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDF9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDDFD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE01  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE05  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE09  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE0D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE11  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE15  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE19  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE1D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE21  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE25  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE29  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE2D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE31  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE35  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE39  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE3D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE41  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE45  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE49  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE4D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE51  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE55  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE59  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE5D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE61  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE65  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE69  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE6D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE71  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE75  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE79  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE7D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE81  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE85  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE89  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE8D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE91  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE95  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE99  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDE9D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEA1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEA5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEA9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEAD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEB1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEB5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEB9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEBD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEC1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEC5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEC9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDECD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDED1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDED5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDED9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEDD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEE1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEE5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEE9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEED  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEF1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEF5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEF9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDEFD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF01  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF05  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF09  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF0D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF11  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF15  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF19  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF1D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF21  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF25  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF29  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF2D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF31  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF35  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF39  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF3D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF41  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF45  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF49  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF4D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF51  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF55  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF59  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF5D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF61  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF65  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF69  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF6D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF71  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF75  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF79  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF7D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF81  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF85  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF89  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF8D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF91  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF95  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF99  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDF9D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFA1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFA5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFA9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFAD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFB1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFB5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFB9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFBD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFC1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFC5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFC9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFCD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFD1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFD5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFD9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFDD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFE1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFE5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFE9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFED  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFF1  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFF5  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFF9  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDDFFD  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDE001  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDE005  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDE009  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDE00D  FF FF FF FF  Mx
    SBC $FFFFFF,X           ; $CDE011  FF FF FF FF  Mx
    db $FF,$FF,$FF                                                     ; $CDE015
L_CDE018:
    SBC $FFFFFF,X           ; $CDE018  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE01C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE020  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE024  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE028  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE02C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE030  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE034  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE038  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE03C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE040  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE044  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE048  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE04C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE050  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE054  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE058  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE05C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE060  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE064  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE068  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE06C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE070  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE074  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE078  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE07C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE080  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE084  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE088  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE08C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE090  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE094  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE098  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE09C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE0FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE100  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE104  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE108  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE10C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE110  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE114  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE118  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE11C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE120  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE124  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE128  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE12C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE130  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE134  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE138  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE13C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE140  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE144  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE148  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE14C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE150  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE154  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE158  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE15C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE160  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE164  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE168  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE16C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE170  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE174  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE178  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE17C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE180  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE184  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE188  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE18C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE190  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE194  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE198  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE19C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE1FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE200  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE204  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE208  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE20C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE210  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE214  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE218  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE21C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE220  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE224  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE228  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE22C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE230  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE234  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE238  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE23C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE240  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE244  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE248  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE24C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE250  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE254  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE258  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE25C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE260  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE264  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE268  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE26C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE270  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE274  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE278  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE27C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE280  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE284  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE288  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE28C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE290  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE294  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE298  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE29C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE2FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE300  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE304  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE308  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE30C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE310  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE314  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE318  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE31C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE320  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE324  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE328  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE32C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE330  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE334  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE338  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE33C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE340  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE344  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE348  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE34C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE350  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE354  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE358  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE35C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE360  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE364  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE368  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE36C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE370  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE374  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE378  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE37C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE380  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE384  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE388  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE38C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE390  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE394  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE398  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE39C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE3FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE400  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE404  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE408  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE40C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE410  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE414  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE418  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE41C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE420  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE424  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE428  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE42C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE430  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE434  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE438  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE43C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE440  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE444  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE448  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE44C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE450  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE454  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE458  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE45C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE460  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE464  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE468  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE46C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE470  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE474  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE478  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE47C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE480  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE484  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE488  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE48C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE490  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE494  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE498  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE49C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE4FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE500  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE504  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE508  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE50C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE510  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE514  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE518  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE51C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE520  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE524  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE528  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE52C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE530  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE534  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE538  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE53C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE540  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE544  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE548  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE54C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE550  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE554  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE558  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE55C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE560  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE564  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE568  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE56C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE570  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE574  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE578  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE57C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE580  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE584  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE588  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE58C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE590  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE594  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE598  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE59C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE5FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE600  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE604  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE608  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE60C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE610  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE614  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE618  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE61C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE620  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE624  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE628  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE62C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE630  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE634  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE638  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE63C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE640  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE644  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE648  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE64C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE650  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE654  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE658  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE65C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE660  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE664  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE668  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE66C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE670  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE674  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE678  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE67C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE680  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE684  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE688  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE68C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE690  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE694  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE698  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE69C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE6FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE700  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE704  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE708  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE70C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE710  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE714  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE718  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE71C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE720  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE724  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE728  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE72C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE730  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE734  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE738  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE73C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE740  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE744  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE748  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE74C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE750  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE754  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE758  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE75C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE760  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE764  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE768  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE76C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE770  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE774  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE778  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE77C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE780  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE784  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE788  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE78C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE790  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE794  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE798  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE79C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE7FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE800  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE804  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE808  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE80C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE810  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE814  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE818  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE81C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE820  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE824  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE828  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE82C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE830  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE834  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE838  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE83C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE840  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE844  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE848  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE84C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE850  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE854  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE858  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE85C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE860  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE864  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE868  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE86C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE870  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE874  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE878  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE87C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE880  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE884  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE888  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE88C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE890  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE894  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE898  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE89C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE8FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE900  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE904  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE908  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE90C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE910  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE914  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE918  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE91C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE920  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE924  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE928  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE92C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE930  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE934  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE938  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE93C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE940  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE944  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE948  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE94C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE950  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE954  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE958  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE95C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE960  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE964  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE968  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE96C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE970  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE974  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE978  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE97C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE980  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE984  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE988  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE98C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE990  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE994  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE998  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE99C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDE9FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEA9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEABC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEACC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEADC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEAFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEB9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBCC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEBFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEC9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECCC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDECFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDED9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDCC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEDFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEE9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEECC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEED0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEED4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEED8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEEFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEF9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFCC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDEFFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF000  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF004  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF008  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF00C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF010  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF014  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF018  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF01C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF020  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF024  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF028  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF02C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF030  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF034  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF038  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF03C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF040  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF044  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF048  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF04C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF050  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF054  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF058  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF05C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF060  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF064  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF068  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF06C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF070  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF074  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF078  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF07C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF080  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF084  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF088  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF08C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF090  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF094  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF098  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF09C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF0FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF100  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF104  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF108  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF10C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF110  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF114  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF118  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF11C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF120  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF124  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF128  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF12C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF130  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF134  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF138  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF13C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF140  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF144  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF148  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF14C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF150  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF154  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF158  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF15C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF160  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF164  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF168  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF16C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF170  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF174  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF178  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF17C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF180  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF184  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF188  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF18C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF190  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF194  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF198  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF19C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF1FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF200  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF204  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF208  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF20C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF210  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF214  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF218  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF21C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF220  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF224  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF228  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF22C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF230  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF234  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF238  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF23C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF240  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF244  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF248  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF24C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF250  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF254  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF258  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF25C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF260  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF264  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF268  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF26C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF270  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF274  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF278  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF27C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF280  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF284  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF288  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF28C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF290  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF294  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF298  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF29C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF2FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF300  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF304  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF308  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF30C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF310  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF314  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF318  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF31C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF320  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF324  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF328  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF32C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF330  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF334  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF338  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF33C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF340  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF344  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF348  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF34C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF350  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF354  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF358  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF35C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF360  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF364  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF368  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF36C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF370  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF374  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF378  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF37C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF380  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF384  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF388  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF38C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF390  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF394  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF398  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF39C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF3FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF400  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF404  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF408  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF40C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF410  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF414  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF418  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF41C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF420  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF424  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF428  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF42C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF430  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF434  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF438  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF43C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF440  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF444  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF448  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF44C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF450  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF454  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF458  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF45C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF460  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF464  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF468  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF46C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF470  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF474  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF478  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF47C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF480  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF484  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF488  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF48C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF490  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF494  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF498  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF49C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF4FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF500  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF504  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF508  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF50C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF510  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF514  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF518  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF51C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF520  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF524  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF528  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF52C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF530  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF534  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF538  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF53C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF540  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF544  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF548  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF54C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF550  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF554  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF558  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF55C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF560  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF564  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF568  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF56C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF570  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF574  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF578  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF57C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF580  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF584  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF588  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF58C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF590  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF594  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF598  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF59C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF5FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF600  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF604  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF608  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF60C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF610  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF614  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF618  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF61C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF620  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF624  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF628  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF62C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF630  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF634  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF638  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF63C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF640  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF644  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF648  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF64C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF650  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF654  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF658  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF65C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF660  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF664  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF668  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF66C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF670  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF674  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF678  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF67C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF680  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF684  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF688  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF68C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF690  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF694  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF698  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF69C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF6FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF700  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF704  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF708  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF70C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF710  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF714  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF718  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF71C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF720  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF724  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF728  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF72C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF730  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF734  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF738  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF73C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF740  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF744  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF748  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF74C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF750  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF754  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF758  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF75C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF760  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF764  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF768  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF76C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF770  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF774  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF778  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF77C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF780  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF784  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF788  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF78C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF790  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF794  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF798  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF79C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF7FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF800  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF804  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF808  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF80C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF810  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF814  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF818  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF81C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF820  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF824  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF828  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF82C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF830  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF834  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF838  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF83C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF840  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF844  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF848  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF84C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF850  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF854  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF858  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF85C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF860  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF864  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF868  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF86C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF870  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF874  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF878  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF87C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF880  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF884  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF888  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF88C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF890  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF894  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF898  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF89C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF8FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF900  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF904  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF908  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF90C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF910  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF914  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF918  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF91C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF920  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF924  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF928  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF92C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF930  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF934  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF938  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF93C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF940  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF944  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF948  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF94C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF950  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF954  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF958  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF95C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF960  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF964  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF968  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF96C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF970  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF974  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF978  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF97C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF980  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF984  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF988  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF98C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF990  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF994  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF998  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF99C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9A0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9A4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9A8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9AC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9B0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9B4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9B8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9BC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9C0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9C4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9C8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9CC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9D0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9D4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9D8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9DC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9E0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9E4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9E8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9EC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9F0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9F4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9F8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDF9FC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFA9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFABC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFACC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFADC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFAFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFB9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBCC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFBFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFC9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCCC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFCFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFD9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDCC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFDFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFE9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFECC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFED0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFED4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFED8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFEFC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF00  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF04  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF08  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF0C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF10  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF14  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF18  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF1C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF20  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF24  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF28  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF2C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF30  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF34  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF38  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF3C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF40  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF44  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF48  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF4C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF50  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF54  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF58  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF5C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF60  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF64  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF68  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF6C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF70  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF74  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF78  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF7C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF80  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF84  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF88  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF8C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF90  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF94  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF98  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFF9C  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFA0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFA4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFA8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFAC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFB0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFB4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFB8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFBC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFC0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFC4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFC8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFCC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFD0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFD4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFD8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFDC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFE0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFE4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFE8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFEC  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFF0  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFF4  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFF8  FF FF FF FF  mx
    SBC $FFFFFF,X           ; $CDFFFC  FF FF FF FF  mx
