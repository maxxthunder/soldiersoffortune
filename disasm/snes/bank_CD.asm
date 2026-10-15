; bank $CD  (file offset $0D0000)
org $CD0000

    db $E2,$20,$C2,$10,$8B,$F4,$00,$00,$AB,$AB,$DA,$5A,$08,$C2,$30,$48 ; $CD0000
    db $E6,$4A,$E2,$20,$AD,$10,$42,$A5,$57,$F0,$05,$20,$E9,$00,$64,$57 ; $CD0010
    db $A5,$55,$F0,$24,$A9,$7F,$A2,$00,$90,$8E,$02,$43,$8D,$04,$43,$A2 ; $CD0020
    db $00,$00,$8E,$02,$21,$A2,$20,$02,$8E,$05,$43,$A2,$00,$04,$8E,$00 ; $CD0030
    db $43,$A9,$01,$8D,$0B,$42,$64,$55,$A5,$54,$F0,$46,$A9,$7F,$A2,$00 ; $CD0040
    db $80,$8E,$02,$43,$8D,$04,$43,$A2,$00,$70,$8E,$16,$21,$A2,$00,$08 ; $CD0050
    db $8E,$05,$43,$A2,$01,$18,$8E,$00,$43,$A9,$01,$8D,$0B,$42,$A9,$7F ; $CD0060
    db $A2,$00,$88,$8E,$02,$43,$8D,$04,$43,$A2,$00,$78,$8E,$16,$21,$A2 ; $CD0070
    db $00,$08,$8E,$05,$43,$A2,$01,$18,$8E,$00,$43,$A9,$01,$8D,$0B,$42 ; $CD0080
    db $64,$54,$A5,$56,$F0,$23,$A9,$7F,$A2,$60,$93,$8E,$02,$43,$8D,$04 ; $CD0090
    db $43,$A9,$00,$8D,$21,$21,$A2,$00,$02,$8E,$05,$43,$A2,$00,$22,$8E ; $CD00A0
    db $00,$43,$A9,$01,$8D,$0B,$42,$64,$56,$A5,$58,$F0,$24,$A9,$7F,$A2 ; $CD00B0
    db $9E,$95,$8E,$02,$43,$8D,$04,$43,$A2,$00,$64,$8E,$16,$21,$A2,$00 ; $CD00C0
    db $06,$8E,$05,$43,$A2,$01,$18,$8E,$00,$43,$A9,$01,$8D,$0B,$42,$64 ; $CD00D0
    db $58,$C2,$20,$68,$28,$7A,$FA,$AB,$40,$20,$ED,$00,$60,$A9,$CF,$8D ; $CD00E0
    db $04,$43,$A5,$84,$0A,$85,$5D,$0A,$0A,$18,$65,$5D,$18,$69,$C3,$85 ; $CD00F0
    db $5D,$A9,$A8,$85,$5C,$A6,$5C,$8E,$02,$43,$A2,$00,$1B,$8E,$16,$21 ; $CD0100
    db $A2,$00,$0A,$8E,$05,$43,$A2,$01,$18,$8E,$00,$43,$A9,$01,$8D,$0B ; $CD0110
    db $42,$A5,$84,$0A,$18,$69,$35,$8F,$03,$90,$7F,$8F,$07,$90,$7F,$8F ; $CD0120
    db $0B,$90,$7F,$8F,$0F,$90,$7F,$8F,$13,$90,$7F,$8F,$17,$90,$7F,$8F ; $CD0130
    db $1B,$90,$7F,$8F,$1F,$90,$7F,$8F,$23,$90,$7F,$60                 ; $CD0140
read_pads:
    PHP                             ; $CD014C  08           mX
    PHX                             ; $CD014D  DA           mX
    REP #$20                        ; $CD014E  C2 20        mX
L_CD0150:
    LDA $4212                       ; $CD0150  AD 12 42     MX
    BIT #$0001                      ; $CD0153  89 01 00     MX
    BEQ L_CD0150                    ; $CD0156  F0 F8        MX
L_CD0158:
    LDA $4212                       ; $CD0158  AD 12 42     MX
    BIT #$0001                      ; $CD015B  89 01 00     MX
    BNE L_CD0158                    ; $CD015E  D0 F8        MX
    LDA $E8                         ; $CD0160  A5 E8        MX  pads_enabled
    AND #$0001                      ; $CD0162  29 01 00     MX
    BEQ L_CD0173                    ; $CD0165  F0 0C        MX
    LDA $4218                       ; $CD0167  AD 18 42     MX
    TAX                             ; $CD016A  AA           MX
    EOR $4C                         ; $CD016B  45 4C        MX  pad1_held
    STX $4C                         ; $CD016D  86 4C        MX  pad1_held
    AND $4C                         ; $CD016F  25 4C        MX  pad1_held
    STA $50                         ; $CD0171  85 50        MX  pad1_pressed
L_CD0173:
    LDA $E8                         ; $CD0173  A5 E8        MX  pads_enabled
    AND #$0002                      ; $CD0175  29 02 00     MX
    BEQ L_CD0186                    ; $CD0178  F0 0C        MX
    LDA $421A                       ; $CD017A  AD 1A 42     MX
    TAX                             ; $CD017D  AA           MX
    EOR $4E                         ; $CD017E  45 4E        MX  pad2_held
    STX $4E                         ; $CD0180  86 4E        MX  pad2_held
    AND $4E                         ; $CD0182  25 4E        MX  pad2_held
    STA $52                         ; $CD0184  85 52        MX  pad2_pressed
L_CD0186:
    PLX                             ; $CD0186  FA           MX
    PLP                             ; $CD0187  28           MX
    RTS                             ; $CD0188  60           mX
clear_pads:
    PHP                             ; $CD0189  08           mX
    REP #$20                        ; $CD018A  C2 20        mX
    LDA #$0000                      ; $CD018C  A9 00 00     MX
    STA $4C                         ; $CD018F  85 4C        MX  pad1_held
    STA $4E                         ; $CD0191  85 4E        MX  pad2_held
    PLP                             ; $CD0193  28           MX
    RTS                             ; $CD0194  60           mX
    db $00,$00,$20,$35,$02,$20,$82,$19,$A9,$80,$8D,$00,$21,$A9,$00,$8D ; $CD0195
    db $00,$42,$85,$0B,$6B                                             ; $CD01A5
L_CD01AA:
    JSR L_CD1945                    ; $CD01AA  20 45 19     MX
    LDA #$80                        ; $CD01AD  A9 80        mX
    STA $2100                       ; $CD01AF  8D 00 21     mX
    LDA #$00                        ; $CD01B2  A9 00        mX
    STA $4200                       ; $CD01B4  8D 00 42     mX
    STA $0B                         ; $CD01B7  85 0B        mX
    RTL                             ; $CD01B9  6B           mX
L_CD01BA:
    JSR L_CD0235                    ; $CD01BA  20 35 02     MX
    JSR L_CD1EED                    ; $CD01BD  20 ED 1E     MX
    LDA #$80                        ; $CD01C0  A9 80        mX
    STA $2100                       ; $CD01C2  8D 00 21     mX
    LDA #$00                        ; $CD01C5  A9 00        mX
    STA $4200                       ; $CD01C7  8D 00 42     mX
    STA $0B                         ; $CD01CA  85 0B        mX
    RTL                             ; $CD01CC  6B           mX
L_CD01CD:
    JSR L_CD0235                    ; $CD01CD  20 35 02     MX
    JSR L_CD0DA6                    ; $CD01D0  20 A6 0D     MX
    LDA #$80                        ; $CD01D3  A9 80        mX
    STA $2100                       ; $CD01D5  8D 00 21     mX
    LDA #$00                        ; $CD01D8  A9 00        mX
    STA $4200                       ; $CD01DA  8D 00 42     mX
    STA $0B                         ; $CD01DD  85 0B        mX
    RTL                             ; $CD01DF  6B           mX
end_of_level_password:
    JSR L_CD0279                    ; $CD01E0  20 79 02     MX
    LDA $0214                       ; $CD01E3  AD 14 02     mX  level_counter
    BEQ L_CD01F2                    ; $CD01E6  F0 0A        mX
    AND #$03                        ; $CD01E8  29 03        mX
    BNE L_CD01F2                    ; $CD01EA  D0 06        mX
    JSR password_encode             ; $CD01EC  20 99 31     mX
    JSR password_values_to_text     ; $CD01EF  20 77 31     mX
L_CD01F2:
    LDA #$80                        ; $CD01F2  A9 80        mX
    STA $2100                       ; $CD01F4  8D 00 21     mX
    LDA #$00                        ; $CD01F7  A9 00        mX
    STA $4200                       ; $CD01F9  8D 00 42     mX
    STA $0B                         ; $CD01FC  85 0B        mX
    RTL                             ; $CD01FE  6B           mX
L_CD01FF:
    JSR L_CD0279                    ; $CD01FF  20 79 02     MX
    LDA #$80                        ; $CD0202  A9 80        mX
    STA $2100                       ; $CD0204  8D 00 21     mX
    LDA #$00                        ; $CD0207  A9 00        mX
    STA $4200                       ; $CD0209  8D 00 42     mX
    STA $0B                         ; $CD020C  85 0B        mX
    RTL                             ; $CD020E  6B           mX
L_CD020F:
    JSR L_CD026F                    ; $CD020F  20 6F 02     MX
    JSR L_CD0E2B                    ; $CD0212  20 2B 0E     MX
    LDA #$80                        ; $CD0215  A9 80        mX
    STA $2100                       ; $CD0217  8D 00 21     mX
    LDA #$00                        ; $CD021A  A9 00        mX
    STA $4200                       ; $CD021C  8D 00 42     mX
    STA $0B                         ; $CD021F  85 0B        mX
    RTL                             ; $CD0221  6B           mX
L_CD0222:
    JSR L_CD0235                    ; $CD0222  20 35 02     MX
    JSR L_CD1FC0                    ; $CD0225  20 C0 1F     MX
    LDA #$80                        ; $CD0228  A9 80        mX
    STA $2100                       ; $CD022A  8D 00 21     mX
    LDA #$00                        ; $CD022D  A9 00        mX
    STA $4200                       ; $CD022F  8D 00 42     mX
    STA $0B                         ; $CD0232  85 0B        mX
    RTL                             ; $CD0234  6B           mX
L_CD0235:
    PHP                             ; $CD0235  08           MX
    SEP #$20                        ; $CD0236  E2 20        MX
    LDA #$01                        ; $CD0238  A9 01        mX
    STA $E8                         ; $CD023A  85 E8        mX  pads_enabled
    LDA $0212                       ; $CD023C  AD 12 02     mX  two_players
    AND #$01                        ; $CD023F  29 01        mX
    BEQ L_CD0247                    ; $CD0241  F0 04        mX
    LDA #$03                        ; $CD0243  A9 03        mX
    STA $E8                         ; $CD0245  85 E8        mX  pads_enabled
L_CD0247:
    JSR clear_pads                  ; $CD0247  20 89 01     mX
    PLP                             ; $CD024A  28           mX
    RTS                             ; $CD024B  60           MX
L_CD024C:
    PHP                             ; $CD024C  08           mX
    SEP #$20                        ; $CD024D  E2 20        mX
    LDA #$01                        ; $CD024F  A9 01        mX
    STA $E8                         ; $CD0251  85 E8        mX  pads_enabled
    LDA $0212                       ; $CD0253  AD 12 02     mX  two_players
    AND #$01                        ; $CD0256  29 01        mX
    BEQ L_CD025E                    ; $CD0258  F0 04        mX
    LDA #$02                        ; $CD025A  A9 02        mX
    STA $E8                         ; $CD025C  85 E8        mX  pads_enabled
L_CD025E:
    JSR clear_pads                  ; $CD025E  20 89 01     mX
    PLP                             ; $CD0261  28           mX
    RTS                             ; $CD0262  60           mX
L_CD0263:
    PHP                             ; $CD0263  08           mX
    SEP #$20                        ; $CD0264  E2 20        mX
    LDA #$01                        ; $CD0266  A9 01        mX
    STA $E8                         ; $CD0268  85 E8        mX  pads_enabled
    JSR clear_pads                  ; $CD026A  20 89 01     mX
    PLP                             ; $CD026D  28           mX
    RTS                             ; $CD026E  60           mX
L_CD026F:
    PHP                             ; $CD026F  08           MX
    SEP #$20                        ; $CD0270  E2 20        MX
    LDA $0202                       ; $CD0272  AD 02 02     mX
    STA $E8                         ; $CD0275  85 E8        mX  pads_enabled
    PLP                             ; $CD0277  28           mX
    RTS                             ; $CD0278  60           MX
L_CD0279:
    JSL L_C20100                    ; $CD0279  22 00 01 C2  MX
    JSR L_CD12F8                    ; $CD027D  20 F8 12     MX
    LDA #$01                        ; $CD0280  A9 01        mX
    STA $EE                         ; $CD0282  85 EE        mX
    PHP                             ; $CD0284  08           mX
    PEA $4545                       ; $CD0285  F4 45 45     mX
    PEA $00CE                       ; $CD0288  F4 CE 00     mX
    PEA $0000                       ; $CD028B  F4 00 00     mX
    PEA $007F                       ; $CD028E  F4 7F 00     mX
    JSL L_C30000                    ; $CD0291  22 00 00 C3  mX
    PLA                             ; $CD0295  68           MX
    PLA                             ; $CD0296  68           MX
    PLA                             ; $CD0297  68           MX
    PLA                             ; $CD0298  68           MX
    PLP                             ; $CD0299  28           MX
    LDA #$7F                        ; $CD029A  A9 7F        mX
    LDX #$0002                      ; $CD029C  A2 02 00     mX
    STX $4302                       ; $CD029F  8E 02 43     mX
    STA $4304                       ; $CD02A2  8D 04 43     mX
    LDX #$2000                      ; $CD02A5  A2 00 20     mX
    STX $2116                       ; $CD02A8  8E 16 21     mX
    LDX #$8000                      ; $CD02AB  A2 00 80     mX
    STX $4305                       ; $CD02AE  8E 05 43     mX
    LDX #$1801                      ; $CD02B1  A2 01 18     mX
    STX $4300                       ; $CD02B4  8E 00 43     mX
    LDA #$01                        ; $CD02B7  A9 01        mX
    STA $420B                       ; $CD02B9  8D 0B 42     mX
    LDX #$06C0                      ; $CD02BC  A2 C0 06     mX
L_CD02BF:
    LDA $CD879B,X                   ; $CD02BF  BF 9B 87 CD  mX
    STA $7F7FFF,X                   ; $CD02C3  9F FF 7F 7F  mX
    DEX                             ; $CD02C7  CA           mX
    BNE L_CD02BF                    ; $CD02C8  D0 F5        mX
    JSR L_CD12E2                    ; $CD02CA  20 E2 12     mX
    LDA #$00                        ; $CD02CD  A9 00        mX
    STA $A2                         ; $CD02CF  85 A2        mX
    JSR L_CD1853                    ; $CD02D1  20 53 18     mX
    LDA $0220                       ; $CD02D4  AD 20 02     mX  p1_character
    STA $84                         ; $CD02D7  85 84        mX
    JSR L_CD0599                    ; $CD02D9  20 99 05     mX
    LDA #$30                        ; $CD02DC  A9 30        mX
    STA $77                         ; $CD02DE  85 77        mX
    LDX #$0094                      ; $CD02E0  A2 94 00     mX
    LDA #$32                        ; $CD02E3  A9 32        mX
    STA $77                         ; $CD02E5  85 77        mX
    LDA #$6C                        ; $CD02E7  A9 6C        mX
    LDY #$10BD                      ; $CD02E9  A0 BD 10     mX
    JSR L_CD1926                    ; $CD02EC  20 26 19     mX
    LDA $E0                         ; $CD02EF  A5 E0        mX
    BEQ L_CD030C                    ; $CD02F1  F0 19        mX
    JSR L_CD0263                    ; $CD02F3  20 63 02     mX
    LDA #$01                        ; $CD02F6  A9 01        mX
    STA $5B                         ; $CD02F8  85 5B        mX
    JSR L_CD33BC                    ; $CD02FA  20 BC 33     mX
    JSR L_CD033C                    ; $CD02FD  20 3C 03     mX
    JSR L_CD05B1                    ; $CD0300  20 B1 05     mX
    JSR L_CD24A1                    ; $CD0303  20 A1 24     mX
    LDA #$02                        ; $CD0306  A9 02        mX
    STA $A2                         ; $CD0308  85 A2        mX
    BRA L_CD0310                    ; $CD030A  80 04        mX
L_CD030C:
    LDA #$00                        ; $CD030C  A9 00        mX
    STA $A2                         ; $CD030E  85 A2        mX
L_CD0310:
    LDA $025E                       ; $CD0310  AD 5E 02     mX  p2_character
    STA $84                         ; $CD0313  85 84        mX
    JSR L_CD05A5                    ; $CD0315  20 A5 05     mX
    LDA $E0                         ; $CD0318  A5 E0        mX
    BEQ L_CD033B                    ; $CD031A  F0 1F        mX
    REP #$20                        ; $CD031C  C2 20        mX
    LDA #$39EB                      ; $CD031E  A9 EB 39     MX
    STA $7F9094                     ; $CD0321  8F 94 90 7F  MX
    SEP #$20                        ; $CD0325  E2 20        MX
    LDA $0212                       ; $CD0327  AD 12 02     mX  two_players
    STA $5B                         ; $CD032A  85 5B        mX
    JSR L_CD33BC                    ; $CD032C  20 BC 33     mX
    JSR L_CD024C                    ; $CD032F  20 4C 02     mX
    JSR L_CD033C                    ; $CD0332  20 3C 03     mX
    JSR L_CD05BD                    ; $CD0335  20 BD 05     mX
    JMP L_CD24A1                    ; $CD0338  4C A1 24     mX
L_CD033B:
    RTS                             ; $CD033B  60           mX
L_CD033C:
    LDA $E0                         ; $CD033C  A5 E0        mX
    BNE L_CD0343                    ; $CD033E  D0 03        mX
    JMP L_CD040F                    ; $CD0340  4C 0F 04     mX
L_CD0343:
    LDX #$0000                      ; $CD0343  A2 00 00     mX
    STX $021E                       ; $CD0346  8E 1E 02     mX
    JSR L_CD1683                    ; $CD0349  20 83 16     mX
    JSR L_CD1594                    ; $CD034C  20 94 15     mX
    LDA #$06                        ; $CD034F  A9 06        mX
    STA $8E                         ; $CD0351  85 8E        mX
    JSR L_CD10CA                    ; $CD0353  20 CA 10     mX
    JSR L_CD0911                    ; $CD0356  20 11 09     mX
    JSR L_CD1693                    ; $CD0359  20 93 16     mX
    JSR L_CD179B                    ; $CD035C  20 9B 17     mX
    JSR L_CD13F5                    ; $CD035F  20 F5 13     mX
    JSR L_CD16EE                    ; $CD0362  20 EE 16     mX
    JSR L_CD1594                    ; $CD0365  20 94 15     mX
    JSR L_CD097A                    ; $CD0368  20 7A 09     mX
    LDX #$2D61                      ; $CD036B  A2 61 2D     mX
    STX $68                         ; $CD036E  86 68        mX
    LDX #$00CD                      ; $CD0370  A2 CD 00     mX
    STX $6A                         ; $CD0373  86 6A        mX
    LDY #$78BA                      ; $CD0375  A0 BA 78     mX
    LDX #$0198                      ; $CD0378  A2 98 01     mX
    JSR L_CD258A                    ; $CD037B  20 8A 25     mX
    JSR L_CD06B6                    ; $CD037E  20 B6 06     mX
    JSR L_CD23E0                    ; $CD0381  20 E0 23     mX
    JSR L_CD23D3                    ; $CD0384  20 D3 23     mX
    LDA $A2                         ; $CD0387  A5 A2        mX
    BNE L_CD039C                    ; $CD0389  D0 11        mX
    JSL L_C20000                    ; $CD038B  22 00 00 C2  mX
    LDA #$17                        ; $CD038F  A9 17        mX
    JSL L_C2010F                    ; $CD0391  22 0F 01 C2  mX
    JSR L_CD24B5                    ; $CD0395  20 B5 24     mX
    LDA #$01                        ; $CD0398  A9 01        mX
    STA $A2                         ; $CD039A  85 A2        mX
L_CD039C:
    CMP #$02                        ; $CD039C  C9 02        mX
    BNE L_CD03A7                    ; $CD039E  D0 07        mX
    JSR L_CD24B5                    ; $CD03A0  20 B5 24     mX
    LDA #$FF                        ; $CD03A3  A9 FF        mX
    STA $A2                         ; $CD03A5  85 A2        mX
L_CD03A7:
    JSR L_CD0594                    ; $CD03A7  20 94 05     mX
L_CD03AA:
    STZ $EC                         ; $CD03AA  64 EC        mX
L_CD03AC:
    LDA $8E                         ; $CD03AC  A5 8E        mX
    CMP #$08                        ; $CD03AE  C9 08        mX
    BEQ L_CD03B4                    ; $CD03B0  F0 02        mX
    LDA #$00                        ; $CD03B2  A9 00        mX
L_CD03B4:
    STA $81                         ; $CD03B4  85 81        mX
    JSR L_CD15F9                    ; $CD03B6  20 F9 15     mX
    JSR L_CD173E                    ; $CD03B9  20 3E 17     mX
    JSR L_CD10E9                    ; $CD03BC  20 E9 10     mX
    JSR L_CD179B                    ; $CD03BF  20 9B 17     mX
    JSR L_CD1693                    ; $CD03C2  20 93 16     mX
    JSR L_CD1594                    ; $CD03C5  20 94 15     mX
    JSR L_CD16EE                    ; $CD03C8  20 EE 16     mX
    JSR L_CD0FE8                    ; $CD03CB  20 E8 0F     mX
    JSR L_CD23E0                    ; $CD03CE  20 E0 23     mX
    JSR L_CD22BE                    ; $CD03D1  20 BE 22     mX
    BEQ L_CD03AA                    ; $CD03D4  F0 D4        mX
    LDA $8E                         ; $CD03D6  A5 8E        mX
    CMP #$08                        ; $CD03D8  C9 08        mX
    BEQ L_CD040F                    ; $CD03DA  F0 33        mX
    LDA $EC                         ; $CD03DC  A5 EC        mX
    BNE L_CD03AC                    ; $CD03DE  D0 CC        mX
    REP #$20                        ; $CD03E0  C2 20        mX
    LDA #$0001                      ; $CD03E2  A9 01 00     MX
    SEP #$20                        ; $CD03E5  E2 20        MX
    STA $EC                         ; $CD03E7  85 EC        mX
    LDA $8E                         ; $CD03E9  A5 8E        mX
    CMP #$08                        ; $CD03EB  C9 08        mX
    BEQ L_CD040F                    ; $CD03ED  F0 20        mX
    BCC L_CD0456                    ; $CD03EF  90 65        mX
    CMP #$0D                        ; $CD03F1  C9 0D        mX
    BCC L_CD0414                    ; $CD03F3  90 1F        mX
    SEC                             ; $CD03F5  38           mX
    SBC #$0D                        ; $CD03F6  E9 0D        mX
    PHA                             ; $CD03F8  48           mX
    ASL                             ; $CD03F9  0A           mX
    TAX                             ; $CD03FA  AA           mX
    LDA $D4,X                       ; $CD03FB  B5 D4        mX
    BNE L_CD0406                    ; $CD03FD  D0 07        mX
    PLA                             ; $CD03FF  68           mX
L_CD0400:
    JSL L_C20015                    ; $CD0400  22 15 00 C2  mX
    BRA L_CD03AC                    ; $CD0404  80 A6        mX
L_CD0406:
    PLA                             ; $CD0406  68           mX
    STA $DC                         ; $CD0407  85 DC        mX
    JSL L_C2002A                    ; $CD0409  22 2A 00 C2  mX
    BRA L_CD03AC                    ; $CD040D  80 9D        mX
L_CD040F:
    JSL L_C2002A                    ; $CD040F  22 2A 00 C2  mX
    RTS                             ; $CD0413  60           mX
L_CD0414:
    JSR L_CD0565                    ; $CD0414  20 65 05     mX
    BNE L_CD0400                    ; $CD0417  D0 E7        mX
    LDX $021E                       ; $CD0419  AE 1E 02     mX
    BEQ L_CD0400                    ; $CD041C  F0 E2        mX
    LDA $D2                         ; $CD041E  A5 D2        mX
    CMP $D0                         ; $CD0420  C5 D0        mX
    BEQ L_CD0495                    ; $CD0422  F0 71        mX
    INC $D2                         ; $CD0424  E6 D2        mX
    LDA $8E                         ; $CD0426  A5 8E        mX
    SEC                             ; $CD0428  38           mX
    SBC #$09                        ; $CD0429  E9 09        mX
    REP #$20                        ; $CD042B  C2 20        mX
    AND #$0003                      ; $CD042D  29 03 00     MX
    ASL                             ; $CD0430  0A           MX
    TAX                             ; $CD0431  AA           MX
    LDA $0216,X                     ; $CD0432  BD 16 02     MX
    PHA                             ; $CD0435  48           MX
    LDA $A8                         ; $CD0436  A5 A8        MX
    ASL                             ; $CD0438  0A           MX
    ASL                             ; $CD0439  0A           MX
    TAX                             ; $CD043A  AA           MX
    PLA                             ; $CD043B  68           MX
    SEP #$20                        ; $CD043C  E2 20        MX
    LDY #$0000                      ; $CD043E  A0 00 00     mX
L_CD0441:
    CMP $CD2F40,X                   ; $CD0441  DF 40 2F CD  mX
    BEQ L_CD044C                    ; $CD0445  F0 05        mX
    INX                             ; $CD0447  E8           mX
    INY                             ; $CD0448  C8           mX
    INY                             ; $CD0449  C8           mX
    BRA L_CD0441                    ; $CD044A  80 F5        mX
L_CD044C:
    TYX                             ; $CD044C  BB           mX
    STA $D4,X                       ; $CD044D  95 D4        mX
    JSL L_C2002A                    ; $CD044F  22 2A 00 C2  mX
    JMP L_CD0526                    ; $CD0453  4C 26 05     mX
L_CD0456:
    JSR L_CD0565                    ; $CD0456  20 65 05     mX
    BEQ L_CD0462                    ; $CD0459  F0 07        mX
    JSL L_C20015                    ; $CD045B  22 15 00 C2  mX
    JMP L_CD03AC                    ; $CD045F  4C AC 03     mX
L_CD0462:
    JSL L_C2002A                    ; $CD0462  22 2A 00 C2  mX
    LDA $8E                         ; $CD0466  A5 8E        mX
    DEC                             ; $CD0468  3A           mX
    BMI L_CD04A4                    ; $CD0469  30 39        mX
    DEC                             ; $CD046B  3A           mX
    BMI L_CD04B3                    ; $CD046C  30 45        mX
    DEC                             ; $CD046E  3A           mX
    BMI L_CD04CD                    ; $CD046F  30 5C        mX
    DEC                             ; $CD0471  3A           mX
    BMI L_CD0498                    ; $CD0472  30 24        mX
    DEC                             ; $CD0474  3A           mX
    BMI L_CD049B                    ; $CD0475  30 24        mX
    DEC                             ; $CD0477  3A           mX
    BMI L_CD049E                    ; $CD0478  30 24        mX
    DEC                             ; $CD047A  3A           mX
    BMI L_CD04A1                    ; $CD047B  30 24        mX
    LDA $CE                         ; $CD047D  A5 CE        mX
    BNE L_CD0488                    ; $CD047F  D0 07        mX
    JSL L_C20015                    ; $CD0481  22 15 00 C2  mX
    JMP L_CD03AC                    ; $CD0485  4C AC 03     mX
L_CD0488:
    LDA $CC                         ; $CD0488  A5 CC        mX
    CMP #$0F                        ; $CD048A  C9 0F        mX
    BEQ L_CD0495                    ; $CD048C  F0 07        mX
    DEC $CE                         ; $CD048E  C6 CE        mX
    INC $CC                         ; $CD0490  E6 CC        mX
    JMP L_CD0526                    ; $CD0492  4C 26 05     mX
L_CD0495:
    JMP L_CD0536                    ; $CD0495  4C 36 05     mX
L_CD0498:
    JMP L_CD04E7                    ; $CD0498  4C E7 04     mX
L_CD049B:
    JMP L_CD0501                    ; $CD049B  4C 01 05     mX
L_CD049E:
    JMP L_CD051B                    ; $CD049E  4C 1B 05     mX
L_CD04A1:
    JMP L_CD054A                    ; $CD04A1  4C 4A 05     mX
L_CD04A4:
    LDA $E0                         ; $CD04A4  A5 E0        mX
    INC                             ; $CD04A6  1A           mX
    CMP #$20                        ; $CD04A7  C9 20        mX
    BCC L_CD04AE                    ; $CD04A9  90 03        mX
    JMP L_CD0536                    ; $CD04AB  4C 36 05     mX
L_CD04AE:
    STA $E0                         ; $CD04AE  85 E0        mX
    JMP L_CD0526                    ; $CD04B0  4C 26 05     mX
L_CD04B3:
    LDA $B4                         ; $CD04B3  A5 B4        mX
    CMP $B6                         ; $CD04B5  C5 B6        mX
    BEQ L_CD04D1                    ; $CD04B7  F0 18        mX
    JSR L_CD04BF                    ; $CD04B9  20 BF 04     mX
    JMP L_CD0526                    ; $CD04BC  4C 26 05     mX
L_CD04BF:
    LDA $B4                         ; $CD04BF  A5 B4        mX
    CLC                             ; $CD04C1  18           mX
    ADC #$01                        ; $CD04C2  69 01        mX
    CMP $B6                         ; $CD04C4  C5 B6        mX
    BCC L_CD04CA                    ; $CD04C6  90 02        mX
    LDA $B6                         ; $CD04C8  A5 B6        mX
L_CD04CA:
    STA $B4                         ; $CD04CA  85 B4        mX
    RTS                             ; $CD04CC  60           mX
L_CD04CD:
    LDA $BA                         ; $CD04CD  A5 BA        mX
    CMP $BC                         ; $CD04CF  C5 BC        mX
L_CD04D1:
    BEQ L_CD0536                    ; $CD04D1  F0 63        mX
    JSR L_CD04D9                    ; $CD04D3  20 D9 04     mX
    JMP L_CD0526                    ; $CD04D6  4C 26 05     mX
L_CD04D9:
    LDA $BA                         ; $CD04D9  A5 BA        mX
    CLC                             ; $CD04DB  18           mX
    ADC #$05                        ; $CD04DC  69 05        mX
    CMP $BC                         ; $CD04DE  C5 BC        mX
    BCC L_CD04E4                    ; $CD04E0  90 02        mX
    LDA $BC                         ; $CD04E2  A5 BC        mX
L_CD04E4:
    STA $BA                         ; $CD04E4  85 BA        mX
    RTS                             ; $CD04E6  60           mX
L_CD04E7:
    LDA $C0                         ; $CD04E7  A5 C0        mX
    CMP $C2                         ; $CD04E9  C5 C2        mX
    BEQ L_CD0536                    ; $CD04EB  F0 49        mX
    JSR L_CD04F3                    ; $CD04ED  20 F3 04     mX
    JMP L_CD0526                    ; $CD04F0  4C 26 05     mX
L_CD04F3:
    LDA $C0                         ; $CD04F3  A5 C0        mX
    CLC                             ; $CD04F5  18           mX
    ADC #$01                        ; $CD04F6  69 01        mX
    CMP $C2                         ; $CD04F8  C5 C2        mX
    BCC L_CD04FE                    ; $CD04FA  90 02        mX
    LDA $C2                         ; $CD04FC  A5 C2        mX
L_CD04FE:
    STA $C0                         ; $CD04FE  85 C0        mX
    RTS                             ; $CD0500  60           mX
L_CD0501:
    LDA $C6                         ; $CD0501  A5 C6        mX
    CMP $C8                         ; $CD0503  C5 C8        mX
    BEQ L_CD0536                    ; $CD0505  F0 2F        mX
    JSR L_CD050D                    ; $CD0507  20 0D 05     mX
    JMP L_CD0526                    ; $CD050A  4C 26 05     mX
L_CD050D:
    LDA $C6                         ; $CD050D  A5 C6        mX
    CLC                             ; $CD050F  18           mX
    ADC #$01                        ; $CD0510  69 01        mX
    CMP $C8                         ; $CD0512  C5 C8        mX
    BCC L_CD0518                    ; $CD0514  90 02        mX
    LDA $C8                         ; $CD0516  A5 C8        mX
L_CD0518:
    STA $C6                         ; $CD0518  85 C6        mX
    RTS                             ; $CD051A  60           mX
L_CD051B:
    LDA $DE                         ; $CD051B  A5 DE        mX
    CMP #$06                        ; $CD051D  C9 06        mX
    BEQ L_CD0536                    ; $CD051F  F0 15        mX
    INC $DE                         ; $CD0521  E6 DE        mX
    JMP L_CD0526                    ; $CD0523  4C 26 05     mX
L_CD0526:
    LDX $A4                         ; $CD0526  A6 A4        mX
    STX $AC                         ; $CD0528  86 AC        mX
    JSR L_CD06B6                    ; $CD052A  20 B6 06     mX
    JSR L_CD0594                    ; $CD052D  20 94 05     mX
    JSR L_CD33DB                    ; $CD0530  20 DB 33     mX
    JMP L_CD03AC                    ; $CD0533  4C AC 03     mX
L_CD0536:
    JSL L_C20015                    ; $CD0536  22 15 00 C2  mX
    LDX #$2D42                      ; $CD053A  A2 42 2D     mX
    STX $68                         ; $CD053D  86 68        mX
    LDX #$00CD                      ; $CD053F  A2 CD 00     mX
    STX $6A                         ; $CD0542  86 6A        mX
    JSR L_CD0582                    ; $CD0544  20 82 05     mX
    JMP L_CD03AC                    ; $CD0547  4C AC 03     mX
L_CD054A:
    LDA $021E                       ; $CD054A  AD 1E 02     mX
    ORA $021F                       ; $CD054D  0D 1F 02     mX
    BEQ L_CD0536                    ; $CD0550  F0 E4        mX
    JSR L_CD04BF                    ; $CD0552  20 BF 04     mX
    JSR L_CD04D9                    ; $CD0555  20 D9 04     mX
    JSR L_CD04F3                    ; $CD0558  20 F3 04     mX
    LDA $AA                         ; $CD055B  A5 AA        mX
    BEQ L_CD0562                    ; $CD055D  F0 03        mX
    JSR L_CD050D                    ; $CD055F  20 0D 05     mX
L_CD0562:
    JMP L_CD0526                    ; $CD0562  4C 26 05     mX
L_CD0565:
    REP #$20                        ; $CD0565  C2 20        mX
    LDA $AC                         ; $CD0567  A5 AC        MX
    SEC                             ; $CD0569  38           MX
    SBC $021E                       ; $CD056A  ED 1E 02     MX
    BCC L_CD0576                    ; $CD056D  90 07        MX
    STA $A4                         ; $CD056F  85 A4        MX
    SEP #$20                        ; $CD0571  E2 20        MX
    LDA #$00                        ; $CD0573  A9 00        mX
    RTS                             ; $CD0575  60           mX
L_CD0576:
    SEP #$20                        ; $CD0576  E2 20        MX
    LDX #$2D31                      ; $CD0578  A2 31 2D     mX
    STX $68                         ; $CD057B  86 68        mX
    LDX #$00CD                      ; $CD057D  A2 CD 00     mX
    STX $6A                         ; $CD0580  86 6A        mX
L_CD0582:
    JSR L_CD1683                    ; $CD0582  20 83 16     mX
    LDY #$78BA                      ; $CD0585  A0 BA 78     mX
    LDX #$0198                      ; $CD0588  A2 98 01     mX
    JSR L_CD258A                    ; $CD058B  20 8A 25     mX
    JSR L_CD0594                    ; $CD058E  20 94 05     mX
    LDA #$01                        ; $CD0591  A9 01        mX
    RTS                             ; $CD0593  60           mX
L_CD0594:
    LDA #$14                        ; $CD0594  A9 14        mX
    STA $EA                         ; $CD0596  85 EA        mX
    RTS                             ; $CD0598  60           mX
L_CD0599:
    LDX #$003C                      ; $CD0599  A2 3C 00     mX
L_CD059C:
    LDA $021F,X                     ; $CD059C  BD 1F 02     mX
    STA $A7,X                       ; $CD059F  95 A7        mX
    DEX                             ; $CD05A1  CA           mX
    BNE L_CD059C                    ; $CD05A2  D0 F8        mX
    RTS                             ; $CD05A4  60           mX
L_CD05A5:
    LDX #$003C                      ; $CD05A5  A2 3C 00     mX
L_CD05A8:
    LDA $025D,X                     ; $CD05A8  BD 5D 02     mX
    STA $A7,X                       ; $CD05AB  95 A7        mX
    DEX                             ; $CD05AD  CA           mX
    BNE L_CD05A8                    ; $CD05AE  D0 F8        mX
    RTS                             ; $CD05B0  60           mX
L_CD05B1:
    LDX #$003C                      ; $CD05B1  A2 3C 00     mX
L_CD05B4:
    LDA $A7,X                       ; $CD05B4  B5 A7        mX
    STA $021F,X                     ; $CD05B6  9D 1F 02     mX
    DEX                             ; $CD05B9  CA           mX
    BNE L_CD05B4                    ; $CD05BA  D0 F8        mX
    RTS                             ; $CD05BC  60           mX
L_CD05BD:
    LDX #$003C                      ; $CD05BD  A2 3C 00     mX
L_CD05C0:
    LDA $A7,X                       ; $CD05C0  B5 A7        mX
    STA $025D,X                     ; $CD05C2  9D 5D 02     mX
    DEX                             ; $CD05C5  CA           mX
    BNE L_CD05C0                    ; $CD05C6  D0 F8        mX
    RTS                             ; $CD05C8  60           mX
L_CD05C9:
    JSR L_CD0599                    ; $CD05C9  20 99 05     mX
    JSR L_CD05DC                    ; $CD05CC  20 DC 05     mX
    JSR L_CD05B1                    ; $CD05CF  20 B1 05     mX
    JSR L_CD05A5                    ; $CD05D2  20 A5 05     mX
    JSR L_CD05DC                    ; $CD05D5  20 DC 05     mX
    JSR L_CD05BD                    ; $CD05D8  20 BD 05     mX
    RTS                             ; $CD05DB  60           mX
L_CD05DC:
    LDA #$00                        ; $CD05DC  A9 00        mX
    STA $B4                         ; $CD05DE  85 B4        mX
    STA $B6                         ; $CD05E0  85 B6        mX
L_CD05E2:
    LDX #$0000                      ; $CD05E2  A2 00 00     mX
    STX $CC                         ; $CD05E5  86 CC        mX
    STX $DE                         ; $CD05E7  86 DE        mX
    STX $D4                         ; $CD05E9  86 D4        mX
    STX $D6                         ; $CD05EB  86 D6        mX
    STX $D8                         ; $CD05ED  86 D8        mX
    STX $DA                         ; $CD05EF  86 DA        mX
    INX                             ; $CD05F1  E8           mX
    STX $D2                         ; $CD05F2  86 D2        mX
    REP #$20                        ; $CD05F4  C2 20        mX
    LDA $A8                         ; $CD05F6  A5 A8        MX
    AND #$00FF                      ; $CD05F8  29 FF 00     MX
    ASL                             ; $CD05FB  0A           MX
    ASL                             ; $CD05FC  0A           MX
    TAX                             ; $CD05FD  AA           MX
    SEP #$20                        ; $CD05FE  E2 20        MX
    LDA $CD2F40,X                   ; $CD0600  BF 40 2F CD  mX
    STA $D4                         ; $CD0604  85 D4        mX
    JSR L_CD08A6                    ; $CD0606  20 A6 08     mX
    LDA $A6                         ; $CD0609  A5 A6        mX
    BNE L_CD0610                    ; $CD060B  D0 03        mX
    JSR L_CD2F5C                    ; $CD060D  20 5C 2F     mX
L_CD0610:
    LDX $BC                         ; $CD0610  A6 BC        mX
    STX $BA                         ; $CD0612  86 BA        mX
    LDX $C2                         ; $CD0614  A6 C2        mX
    STX $C0                         ; $CD0616  86 C0        mX
    LDX $C8                         ; $CD0618  A6 C8        mX
    STX $C6                         ; $CD061A  86 C6        mX
    LDX #$0000                      ; $CD061C  A2 00 00     mX
    STX $CC                         ; $CD061F  86 CC        mX
    STX $DE                         ; $CD0621  86 DE        mX
    STX $D4                         ; $CD0623  86 D4        mX
    STX $D6                         ; $CD0625  86 D6        mX
    STX $D8                         ; $CD0627  86 D8        mX
    STX $DA                         ; $CD0629  86 DA        mX
    INX                             ; $CD062B  E8           mX
    STX $D2                         ; $CD062C  86 D2        mX
    REP #$20                        ; $CD062E  C2 20        mX
    LDA $A8                         ; $CD0630  A5 A8        MX
    ASL                             ; $CD0632  0A           MX
    ASL                             ; $CD0633  0A           MX
    TAX                             ; $CD0634  AA           MX
    SEP #$20                        ; $CD0635  E2 20        MX
    LDA $CD2F40,X                   ; $CD0637  BF 40 2F CD  mX
    STA $D4                         ; $CD063B  85 D4        mX
    RTS                             ; $CD063D  60           mX
L_CD063E:
    JSR L_CD06F4                    ; $CD063E  20 F4 06     mX
    JSR L_CD0766                    ; $CD0641  20 66 07     mX
    STZ $96                         ; $CD0644  64 96        mX
    STZ $98                         ; $CD0646  64 98        mX
    LDX #$0000                      ; $CD0648  A2 00 00     mX
    STX $9C                         ; $CD064B  86 9C        mX
    STX $9E                         ; $CD064D  86 9E        mX
    LDA #$06                        ; $CD064F  A9 06        mX
    LDX #$02D2                      ; $CD0651  A2 D2 02     mX
L_CD0654:
    PHA                             ; $CD0654  48           mX
    LDA $00,X                       ; $CD0655  B5 00        mX
    PHX                             ; $CD0657  DA           mX
    JSR L_CD0961                    ; $CD0658  20 61 09     mX
    STA $94                         ; $CD065B  85 94        mX
    JSR L_CD0825                    ; $CD065D  20 25 08     mX
    REP #$20                        ; $CD0660  C2 20        mX
    LDA $9E                         ; $CD0662  A5 9E        MX
    CLC                             ; $CD0664  18           MX
    ADC #$00C0                      ; $CD0665  69 C0 00     MX
    STA $9E                         ; $CD0668  85 9E        MX
    SEP #$20                        ; $CD066A  E2 20        MX
    PLX                             ; $CD066C  FA           mX
    INX                             ; $CD066D  E8           mX
    INX                             ; $CD066E  E8           mX
    PLA                             ; $CD066F  68           mX
    DEC                             ; $CD0670  3A           mX
    BNE L_CD0654                    ; $CD0671  D0 E1        mX
    STZ $96                         ; $CD0673  64 96        mX
    LDX #$0240                      ; $CD0675  A2 40 02     mX
    STX $9C                         ; $CD0678  86 9C        mX
    LDA $02D0                       ; $CD067A  AD D0 02     mX
    JSR L_CD0961                    ; $CD067D  20 61 09     mX
    STA $94                         ; $CD0680  85 94        mX
    JSR L_CD0825                    ; $CD0682  20 25 08     mX
    LDX #$0000                      ; $CD0685  A2 00 00     mX
    STX $9C                         ; $CD0688  86 9C        mX
    LDX #$0540                      ; $CD068A  A2 40 05     mX
    STX $9E                         ; $CD068D  86 9E        mX
    LDA $02CC                       ; $CD068F  AD CC 02     mX
    JSR L_CD0961                    ; $CD0692  20 61 09     mX
    STA $94                         ; $CD0695  85 94        mX
    LDA #$64                        ; $CD0697  A9 64        mX
    SEC                             ; $CD0699  38           mX
    SBC $02CC                       ; $CD069A  ED CC 02     mX
    JSR L_CD0961                    ; $CD069D  20 61 09     mX
    CLC                             ; $CD06A0  18           mX
    ADC $94                         ; $CD06A1  65 94        mX
    STA $96                         ; $CD06A3  85 96        mX
    JSR L_CD0825                    ; $CD06A5  20 25 08     mX
    BRA L_CD06E9                    ; $CD06A8  80 3F        mX
L_CD06AA:
    JSR L_CD0746                    ; $CD06AA  20 46 07     mX
    JSR L_CD06C3                    ; $CD06AD  20 C3 06     mX
    JSR L_CD09D3                    ; $CD06B0  20 D3 09     mX
    JMP L_CD06E9                    ; $CD06B3  4C E9 06     mX
L_CD06B6:
    JSR L_CD0726                    ; $CD06B6  20 26 07     mX
    JSR L_CD06C3                    ; $CD06B9  20 C3 06     mX
    JSR L_CD099E                    ; $CD06BC  20 9E 09     mX
    JSR L_CD06E9                    ; $CD06BF  20 E9 06     mX
    RTS                             ; $CD06C2  60           mX
L_CD06C3:
    JSR L_CD08A6                    ; $CD06C3  20 A6 08     mX
    LDA $A6                         ; $CD06C6  A5 A6        mX
    BNE L_CD06CD                    ; $CD06C8  D0 03        mX
    JSR L_CD2F5C                    ; $CD06CA  20 5C 2F     mX
L_CD06CD:
    JSR L_CD06F4                    ; $CD06CD  20 F4 06     mX
    JSR L_CD07AB                    ; $CD06D0  20 AB 07     mX
    JSR L_CD0825                    ; $CD06D3  20 25 08     mX
    JSR L_CD07C5                    ; $CD06D6  20 C5 07     mX
    JSR L_CD0825                    ; $CD06D9  20 25 08     mX
    JSR L_CD07E5                    ; $CD06DC  20 E5 07     mX
    JSR L_CD0825                    ; $CD06DF  20 25 08     mX
    JSR L_CD0805                    ; $CD06E2  20 05 08     mX
    JSR L_CD0825                    ; $CD06E5  20 25 08     mX
    RTS                             ; $CD06E8  60           mX
L_CD06E9:
    LDA #$01                        ; $CD06E9  A9 01        mX
    STA $58                         ; $CD06EB  85 58        mX
    LDA $4A                         ; $CD06ED  A5 4A        mX
L_CD06EF:
    CMP $4A                         ; $CD06EF  C5 4A        mX
    BEQ L_CD06EF                    ; $CD06F1  F0 FC        mX
    RTS                             ; $CD06F3  60           mX
L_CD06F4:
    LDX #$0600                      ; $CD06F4  A2 00 06     mX
    LDA #$00                        ; $CD06F7  A9 00        mX
    STA $9A                         ; $CD06F9  85 9A        mX
L_CD06FB:
    STA $7F959D,X                   ; $CD06FB  9F 9D 95 7F  mX
    DEX                             ; $CD06FF  CA           mX
    BNE L_CD06FB                    ; $CD0700  D0 F9        mX
    RTS                             ; $CD0702  60           mX
L_CD0703:
    LDX #$6020                      ; $CD0703  A2 20 60     mX
    STX $2116                       ; $CD0706  8E 16 21     mX
    LDA #$7F                        ; $CD0709  A9 7F        mX
    LDX #$959E                      ; $CD070B  A2 9E 95     mX
    STX $4302                       ; $CD070E  8E 02 43     mX
    STA $4304                       ; $CD0711  8D 04 43     mX
    LDX #$00C0                      ; $CD0714  A2 C0 00     mX
    STX $4305                       ; $CD0717  8E 05 43     mX
    LDX #$1801                      ; $CD071A  A2 01 18     mX
    STX $4300                       ; $CD071D  8E 00 43     mX
    LDA #$01                        ; $CD0720  A9 01        mX
    STA $420B                       ; $CD0722  8D 0B 42     mX
    RTS                             ; $CD0725  60           mX
L_CD0726:
    LDA #$40                        ; $CD0726  A9 40        mX
    LDX #$00D6                      ; $CD0728  A2 D6 00     mX
    JSR L_CD0795                    ; $CD072B  20 95 07     mX
    LDX #$0198                      ; $CD072E  A2 98 01     mX
    JSR L_CD0795                    ; $CD0731  20 95 07     mX
    LDX #$0256                      ; $CD0734  A2 56 02     mX
    JSR L_CD0795                    ; $CD0737  20 95 07     mX
    LDX #$0314                      ; $CD073A  A2 14 03     mX
    JSR L_CD0795                    ; $CD073D  20 95 07     mX
    LDX #$04D4                      ; $CD0740  A2 D4 04     mX
    JMP L_CD0795                    ; $CD0743  4C 95 07     mX
L_CD0746:
    LDA #$40                        ; $CD0746  A9 40        mX
    LDX #$00D6                      ; $CD0748  A2 D6 00     mX
    JSR L_CD0795                    ; $CD074B  20 95 07     mX
    LDX #$0158                      ; $CD074E  A2 58 01     mX
    JSR L_CD0795                    ; $CD0751  20 95 07     mX
    LDX #$01D8                      ; $CD0754  A2 D8 01     mX
    JSR L_CD0795                    ; $CD0757  20 95 07     mX
    LDX #$0258                      ; $CD075A  A2 58 02     mX
    JSR L_CD0795                    ; $CD075D  20 95 07     mX
    LDX #$04D4                      ; $CD0760  A2 D4 04     mX
    JMP L_CD0795                    ; $CD0763  4C 95 07     mX
L_CD0766:
    LDA #$40                        ; $CD0766  A9 40        mX
    LDX #$014C                      ; $CD0768  A2 4C 01     mX
    JSR L_CD0795                    ; $CD076B  20 95 07     mX
    LDX #$020C                      ; $CD076E  A2 0C 02     mX
    JSR L_CD0795                    ; $CD0771  20 95 07     mX
    LDX #$02CC                      ; $CD0774  A2 CC 02     mX
    JSR L_CD0795                    ; $CD0777  20 95 07     mX
    LDX #$038C                      ; $CD077A  A2 8C 03     mX
    JSR L_CD0795                    ; $CD077D  20 95 07     mX
    LDX #$044C                      ; $CD0780  A2 4C 04     mX
    JSR L_CD0795                    ; $CD0783  20 95 07     mX
    LDX #$050C                      ; $CD0786  A2 0C 05     mX
    JSR L_CD0795                    ; $CD0789  20 95 07     mX
    LDX #$05CC                      ; $CD078C  A2 CC 05     mX
    JSR L_CD0795                    ; $CD078F  20 95 07     mX
    LDX #$04EE                      ; $CD0792  A2 EE 04     mX
L_CD0795:
    LDY #$0006                      ; $CD0795  A0 06 00     mX
L_CD0798:
    STA $7F8800,X                   ; $CD0798  9F 00 88 7F  mX
    INX                             ; $CD079C  E8           mX
    PHA                             ; $CD079D  48           mX
    LDA #$3C                        ; $CD079E  A9 3C        mX
    STA $7F8800,X                   ; $CD07A0  9F 00 88 7F  mX
    INX                             ; $CD07A4  E8           mX
    PLA                             ; $CD07A5  68           mX
    INC                             ; $CD07A6  1A           mX
    DEY                             ; $CD07A7  88           mX
    BNE L_CD0798                    ; $CD07A8  D0 EE        mX
    RTS                             ; $CD07AA  60           mX
L_CD07AB:
    LDA $B4                         ; $CD07AB  A5 B4        mX
    JSR L_CD0969                    ; $CD07AD  20 69 09     mX
    STA $94                         ; $CD07B0  85 94        mX
    LDA $B6                         ; $CD07B2  A5 B6        mX
    JSR L_CD0969                    ; $CD07B4  20 69 09     mX
    STA $96                         ; $CD07B7  85 96        mX
    LDA #$2F                        ; $CD07B9  A9 2F        mX
    STA $98                         ; $CD07BB  85 98        mX
    LDX #$0000                      ; $CD07BD  A2 00 00     mX
    STX $9C                         ; $CD07C0  86 9C        mX
    STX $9E                         ; $CD07C2  86 9E        mX
    RTS                             ; $CD07C4  60           mX
L_CD07C5:
    LDA $BA                         ; $CD07C5  A5 BA        mX
    JSR L_CD0961                    ; $CD07C7  20 61 09     mX
    STA $94                         ; $CD07CA  85 94        mX
    LDA $BC                         ; $CD07CC  A5 BC        mX
    JSR L_CD0961                    ; $CD07CE  20 61 09     mX
    STA $96                         ; $CD07D1  85 96        mX
    LDA $BE                         ; $CD07D3  A5 BE        mX
    JSR L_CD0961                    ; $CD07D5  20 61 09     mX
    STA $98                         ; $CD07D8  85 98        mX
    LDX #$00C0                      ; $CD07DA  A2 C0 00     mX
    STX $9E                         ; $CD07DD  86 9E        mX
    LDX #$0000                      ; $CD07DF  A2 00 00     mX
    STX $9C                         ; $CD07E2  86 9C        mX
    RTS                             ; $CD07E4  60           mX
L_CD07E5:
    LDA $C0                         ; $CD07E5  A5 C0        mX
    JSR L_CD0969                    ; $CD07E7  20 69 09     mX
    STA $94                         ; $CD07EA  85 94        mX
    LDA $C2                         ; $CD07EC  A5 C2        mX
    JSR L_CD0969                    ; $CD07EE  20 69 09     mX
    STA $96                         ; $CD07F1  85 96        mX
    LDA $C4                         ; $CD07F3  A5 C4        mX
    JSR L_CD0969                    ; $CD07F5  20 69 09     mX
    STA $98                         ; $CD07F8  85 98        mX
    LDX #$0180                      ; $CD07FA  A2 80 01     mX
    STX $9E                         ; $CD07FD  86 9E        mX
    LDX #$0000                      ; $CD07FF  A2 00 00     mX
    STX $9C                         ; $CD0802  86 9C        mX
    RTS                             ; $CD0804  60           mX
L_CD0805:
    LDA $C6                         ; $CD0805  A5 C6        mX
    JSR L_CD0969                    ; $CD0807  20 69 09     mX
    STA $94                         ; $CD080A  85 94        mX
    LDA $C8                         ; $CD080C  A5 C8        mX
    JSR L_CD0969                    ; $CD080E  20 69 09     mX
    STA $96                         ; $CD0811  85 96        mX
    LDA $CA                         ; $CD0813  A5 CA        mX
    JSR L_CD0969                    ; $CD0815  20 69 09     mX
    STA $98                         ; $CD0818  85 98        mX
    LDX #$0240                      ; $CD081A  A2 40 02     mX
    STX $9E                         ; $CD081D  86 9E        mX
    LDX #$0000                      ; $CD081F  A2 00 00     mX
    STX $9C                         ; $CD0822  86 9C        mX
    RTS                             ; $CD0824  60           mX
L_CD0825:
    STZ $9A                         ; $CD0825  64 9A        mX
L_CD0827:
    LDX #$0000                      ; $CD0827  A2 00 00     mX
    LDA $9A                         ; $CD082A  A5 9A        mX
    CMP $94                         ; $CD082C  C5 94        mX
    BCC L_CD083F                    ; $CD082E  90 0F        mX
    LDX #$00C0                      ; $CD0830  A2 C0 00     mX
    CMP $96                         ; $CD0833  C5 96        mX
    BCC L_CD083F                    ; $CD0835  90 08        mX
    LDX #$0180                      ; $CD0837  A2 80 01     mX
    CMP $98                         ; $CD083A  C5 98        mX
    BCC L_CD083F                    ; $CD083C  90 01        mX
    RTS                             ; $CD083E  60           mX
L_CD083F:
    REP #$20                        ; $CD083F  C2 20        mX
    TXA                             ; $CD0841  8A           MX
    CLC                             ; $CD0842  18           MX
    ADC $9C                         ; $CD0843  65 9C        MX
    CLC                             ; $CD0845  18           MX
    ADC #$0400                      ; $CD0846  69 00 04     MX
    STA $5C                         ; $CD0849  85 5C        MX
    LDA $9A                         ; $CD084B  A5 9A        MX
    AND #$00FF                      ; $CD084D  29 FF 00     MX
    PHA                             ; $CD0850  48           MX
    ASL                             ; $CD0851  0A           MX
    ASL                             ; $CD0852  0A           MX
    AND #$00E0                      ; $CD0853  29 E0 00     MX
    PHA                             ; $CD0856  48           MX
    CLC                             ; $CD0857  18           MX
    ADC $9E                         ; $CD0858  65 9E        MX
    STA $5E                         ; $CD085A  85 5E        MX
    PLA                             ; $CD085C  68           MX
    CLC                             ; $CD085D  18           MX
    ADC $5C                         ; $CD085E  65 5C        MX
    STA $5C                         ; $CD0860  85 5C        MX
    PLA                             ; $CD0862  68           MX
    AND #$0007                      ; $CD0863  29 07 00     MX
    TAX                             ; $CD0866  AA           MX
    SEP #$20                        ; $CD0867  E2 20        MX
    LDA $CD089E,X                   ; $CD0869  BF 9E 08 CD  mX
    STA $75                         ; $CD086D  85 75        mX
    LDY #$0020                      ; $CD086F  A0 20 00     mX
L_CD0872:
    LDX $5C                         ; $CD0872  A6 5C        mX
    LDA $CF4824,X                   ; $CD0874  BF 24 48 CF  mX
    AND $75                         ; $CD0878  25 75        mX
    LDX $5E                         ; $CD087A  A6 5E        mX
    ORA $7F959E,X                   ; $CD087C  1F 9E 95 7F  mX
    STA $7F959E,X                   ; $CD0880  9F 9E 95 7F  mX
    LDX $5C                         ; $CD0884  A6 5C        mX
    INX                             ; $CD0886  E8           mX
    STX $5C                         ; $CD0887  86 5C        mX
    LDX $5E                         ; $CD0889  A6 5E        mX
    INX                             ; $CD088B  E8           mX
    STX $5E                         ; $CD088C  86 5E        mX
    DEY                             ; $CD088E  88           mX
    BNE L_CD0872                    ; $CD088F  D0 E1        mX
    LDA $9A                         ; $CD0891  A5 9A        mX
    INC                             ; $CD0893  1A           mX
    STA $9A                         ; $CD0894  85 9A        mX
    CMP #$30                        ; $CD0896  C9 30        mX
    BEQ L_CD089D                    ; $CD0898  F0 03        mX
    JMP L_CD0827                    ; $CD089A  4C 27 08     mX
L_CD089D:
    RTS                             ; $CD089D  60           mX
    db $80,$40,$20,$10,$08,$04,$02,$01                                 ; $CD089E
L_CD08A6:
    REP #$20                        ; $CD08A6  C2 20        mX
    LDA $A8                         ; $CD08A8  A5 A8        MX
    ASL                             ; $CD08AA  0A           MX
    ASL                             ; $CD08AB  0A           MX
    ASL                             ; $CD08AC  0A           MX
    CLC                             ; $CD08AD  18           MX
    ADC $A8                         ; $CD08AE  65 A8        MX
    STA $5C                         ; $CD08B0  85 5C        MX
    LDA $A8                         ; $CD08B2  A5 A8        MX
    ASL                             ; $CD08B4  0A           MX
    ASL                             ; $CD08B5  0A           MX
    ASL                             ; $CD08B6  0A           MX
    ASL                             ; $CD08B7  0A           MX
    ASL                             ; $CD08B8  0A           MX
    ASL                             ; $CD08B9  0A           MX
    SEC                             ; $CD08BA  38           MX
    SBC $5C                         ; $CD08BB  E5 5C        MX
    STA $90                         ; $CD08BD  85 90        MX
    LDA $B4                         ; $CD08BF  A5 B4        MX
    ASL                             ; $CD08C1  0A           MX
    ASL                             ; $CD08C2  0A           MX
    CLC                             ; $CD08C3  18           MX
    ADC $B4                         ; $CD08C4  65 B4        MX
    CLC                             ; $CD08C6  18           MX
    ADC $90                         ; $CD08C7  65 90        MX
    STA $92                         ; $CD08C9  85 92        MX
    TAX                             ; $CD08CB  AA           MX
    SEP #$20                        ; $CD08CC  E2 20        MX
    LDA #$00                        ; $CD08CE  A9 00        mX
    STA $CE                         ; $CD08D0  85 CE        mX
    LDA $CD2DF6,X                   ; $CD08D2  BF F6 2D CD  mX
    STA $E6                         ; $CD08D6  85 E6        mX
    SEC                             ; $CD08D8  38           mX
    SBC $CC                         ; $CD08D9  E5 CC        mX
    BCC L_CD08DF                    ; $CD08DB  90 02        mX
    STA $CE                         ; $CD08DD  85 CE        mX
L_CD08DF:
    LDA $CD2E28,X                   ; $CD08DF  BF 28 2E CD  mX
    STA $62                         ; $CD08E3  85 62        mX
    LDA $CD2DF7,X                   ; $CD08E5  BF F7 2D CD  mX
    STA $D0                         ; $CD08E9  85 D0        mX
    LDA $CD2DF8,X                   ; $CD08EB  BF F8 2D CD  mX
    STA $BC                         ; $CD08EF  85 BC        mX
    LDA $CD2DF9,X                   ; $CD08F1  BF F9 2D CD  mX
    STA $C2                         ; $CD08F5  85 C2        mX
    LDA $CD2DFA,X                   ; $CD08F7  BF FA 2D CD  mX
    STA $C8                         ; $CD08FB  85 C8        mX
    LDX $90                         ; $CD08FD  A6 90        mX
    LDA $CD2E2A,X                   ; $CD08FF  BF 2A 2E CD  mX
    STA $BE                         ; $CD0903  85 BE        mX
    LDA $CD2E2B,X                   ; $CD0905  BF 2B 2E CD  mX
    STA $C4                         ; $CD0909  85 C4        mX
    LDA $CD2E2C,X                   ; $CD090B  BF 2C 2E CD  mX
    STA $CA                         ; $CD090F  85 CA        mX
L_CD0911:
    LDX #$0000                      ; $CD0911  A2 00 00     mX
    STX $0216                       ; $CD0914  8E 16 02     mX
    STX $0218                       ; $CD0917  8E 18 02     mX
    STX $021A                       ; $CD091A  8E 1A 02     mX
    STX $021C                       ; $CD091D  8E 1C 02     mX
    REP #$20                        ; $CD0920  C2 20        mX
    LDA $A8                         ; $CD0922  A5 A8        MX
    ASL                             ; $CD0924  0A           MX
    ASL                             ; $CD0925  0A           MX
    TAX                             ; $CD0926  AA           MX
    INX                             ; $CD0927  E8           MX
    SEP #$20                        ; $CD0928  E2 20        MX
    LDA $D0                         ; $CD092A  A5 D0        mX
    SEC                             ; $CD092C  38           mX
    SBC $D2                         ; $CD092D  E5 D2        mX
    BEQ L_CD0960                    ; $CD092F  F0 2F        mX
    STA $5C                         ; $CD0931  85 5C        mX
    LDY #$0216                      ; $CD0933  A0 16 02     mX
    STY $68                         ; $CD0936  84 68        mX
    LDA $D6                         ; $CD0938  A5 D6        mX
    BNE L_CD0943                    ; $CD093A  D0 07        mX
    JSR L_CD0954                    ; $CD093C  20 54 09     mX
    LDA $5C                         ; $CD093F  A5 5C        mX
    BEQ L_CD0960                    ; $CD0941  F0 1D        mX
L_CD0943:
    INX                             ; $CD0943  E8           mX
    LDA $D8                         ; $CD0944  A5 D8        mX
    BNE L_CD094F                    ; $CD0946  D0 07        mX
    JSR L_CD0954                    ; $CD0948  20 54 09     mX
    LDA $5C                         ; $CD094B  A5 5C        mX
    BEQ L_CD0960                    ; $CD094D  F0 11        mX
L_CD094F:
    INX                             ; $CD094F  E8           mX
    LDA $DA                         ; $CD0950  A5 DA        mX
    BNE L_CD0960                    ; $CD0952  D0 0C        mX
L_CD0954:
    LDA $CD2F40,X                   ; $CD0954  BF 40 2F CD  mX
    STA ($68)                       ; $CD0958  92 68        mX
    INC $68                         ; $CD095A  E6 68        mX
    INC $68                         ; $CD095C  E6 68        mX
    DEC $5C                         ; $CD095E  C6 5C        mX
L_CD0960:
    RTS                             ; $CD0960  60           mX
L_CD0961:
    LSR                             ; $CD0961  4A           mX
L_CD0962:
    CMP #$2F                        ; $CD0962  C9 2F        mX
    BCC L_CD0968                    ; $CD0964  90 02        mX
    LDA #$2F                        ; $CD0966  A9 2F        mX
L_CD0968:
    RTS                             ; $CD0968  60           mX
L_CD0969:
    STA $5C                         ; $CD0969  85 5C        mX
    ASL                             ; $CD096B  0A           mX
    ASL                             ; $CD096C  0A           mX
    CLC                             ; $CD096D  18           mX
    ADC $5C                         ; $CD096E  65 5C        mX
    BRA L_CD0962                    ; $CD0970  80 F0        mX
L_CD0972:
    STA $5C                         ; $CD0972  85 5C        mX
    ASL                             ; $CD0974  0A           mX
    CLC                             ; $CD0975  18           mX
    ADC $5C                         ; $CD0976  65 5C        mX
    BRA L_CD0962                    ; $CD0978  80 E8        mX
L_CD097A:
    LDY $DE                         ; $CD097A  A4 DE        mX
    LDX #$0652                      ; $CD097C  A2 52 06     mX
    LDA #$15                        ; $CD097F  A9 15        mX
    STA $5C                         ; $CD0981  85 5C        mX
    LDA #$06                        ; $CD0983  A9 06        mX
L_CD0985:
    PHA                             ; $CD0985  48           mX
    LDA #$00                        ; $CD0986  A9 00        mX
    DEY                             ; $CD0988  88           mX
    BMI L_CD098D                    ; $CD0989  30 02        mX
    LDA $5C                         ; $CD098B  A5 5C        mX
L_CD098D:
    STA $7F8800,X                   ; $CD098D  9F 00 88 7F  mX
    INX                             ; $CD0991  E8           mX
    LDA #$1C                        ; $CD0992  A9 1C        mX
    STA $7F8800,X                   ; $CD0994  9F 00 88 7F  mX
    INX                             ; $CD0998  E8           mX
    PLA                             ; $CD0999  68           mX
    DEC                             ; $CD099A  3A           mX
    BNE L_CD0985                    ; $CD099B  D0 E8        mX
    RTS                             ; $CD099D  60           mX
L_CD099E:
    LDA $EE                         ; $CD099E  A5 EE        mX
    BEQ L_CD09B4                    ; $CD09A0  F0 12        mX
    LDX #$0090                      ; $CD09A2  A2 90 00     mX
    LDY #$93E8                      ; $CD09A5  A0 E8 93     mX
    LDA $CE                         ; $CD09A8  A5 CE        mX
    BNE L_CD09AF                    ; $CD09AA  D0 03        mX
    LDY #$E0E0                      ; $CD09AC  A0 E0 E0     mX
L_CD09AF:
    LDA #$AC                        ; $CD09AF  A9 AC        mX
    JSR L_CD1926                    ; $CD09B1  20 26 19     mX
L_CD09B4:
    STZ $98                         ; $CD09B4  64 98        mX
    STZ $96                         ; $CD09B6  64 96        mX
    LDX #$0300                      ; $CD09B8  A2 00 03     mX
    STX $9E                         ; $CD09BB  86 9E        mX
    LDX #$0300                      ; $CD09BD  A2 00 03     mX
    STX $9C                         ; $CD09C0  86 9C        mX
    LDA $CC                         ; $CD09C2  A5 CC        mX
    CLC                             ; $CD09C4  18           mX
    ADC $CC                         ; $CD09C5  65 CC        mX
    ADC $CC                         ; $CD09C7  65 CC        mX
    STA $94                         ; $CD09C9  85 94        mX
    INC                             ; $CD09CB  1A           mX
    INC                             ; $CD09CC  1A           mX
    STA $94                         ; $CD09CD  85 94        mX
    JSR L_CD0825                    ; $CD09CF  20 25 08     mX
    RTS                             ; $CD09D2  60           mX
L_CD09D3:
    STZ $98                         ; $CD09D3  64 98        mX
    STZ $96                         ; $CD09D5  64 96        mX
    LDX #$0300                      ; $CD09D7  A2 00 03     mX
    STX $9E                         ; $CD09DA  86 9E        mX
    LDX #$0300                      ; $CD09DC  A2 00 03     mX
    STX $9C                         ; $CD09DF  86 9C        mX
    LDA $62                         ; $CD09E1  A5 62        mX
    CLC                             ; $CD09E3  18           mX
    ADC $62                         ; $CD09E4  65 62        mX
    ADC $62                         ; $CD09E6  65 62        mX
    INC                             ; $CD09E8  1A           mX
    INC                             ; $CD09E9  1A           mX
    STA $94                         ; $CD09EA  85 94        mX
    JSR L_CD0825                    ; $CD09EC  20 25 08     mX
    RTS                             ; $CD09EF  60           mX
    db $00,$00,$01,$00,$00,$00,$01,$FF,$00,$00,$01,$FF,$00,$00,$01,$FF ; $CD09F0
    db $02,$00,$02,$FF,$01,$09,$04,$01,$01,$FF,$FF,$FE,$01,$FF,$04,$00 ; $CD0A00
    db $00,$04,$00,$FF,$01,$07,$00,$FC,$01,$FF,$00,$FC,$01,$FF,$00,$FC ; $CD0A10
    db $FC,$FF,$00,$FB,$01,$00,$02,$00,$F7,$FF,$02,$00,$01,$00,$00,$FE ; $CD0A20
    db $F9,$FF,$00,$FE,$00,$00,$01,$00,$00,$00,$01,$FF,$00,$00,$01,$FF ; $CD0A30
    db $00,$00,$03,$FF,$02,$00,$01,$FF,$01,$09,$04,$01,$01,$FF,$FF,$FE ; $CD0A40
    db $01,$FF,$04,$00,$00,$04,$00,$FF,$01,$07,$00,$FC,$01,$FF,$00,$FC ; $CD0A50
    db $01,$FF,$00,$FC,$FC,$FF,$00,$FB,$01,$00,$02,$00,$F7,$FF,$02,$00 ; $CD0A60
    db $01,$00,$00,$FE,$F9,$FF,$00,$FE                                 ; $CD0A70
L_CD0A78:
    JSL L_C20100                    ; $CD0A78  22 00 01 C2  mX
    JSR L_CD12F8                    ; $CD0A7C  20 F8 12     mX
    LDA #$00                        ; $CD0A7F  A9 00        mX
    STA $EE                         ; $CD0A81  85 EE        mX
    PHP                             ; $CD0A83  08           mX
    PEA $0000                       ; $CD0A84  F4 00 00     mX
    PEA $00CE                       ; $CD0A87  F4 CE 00     mX
    PEA $0000                       ; $CD0A8A  F4 00 00     mX
    PEA $007F                       ; $CD0A8D  F4 7F 00     mX
    JSL L_C30000                    ; $CD0A90  22 00 00 C3  mX
    PLA                             ; $CD0A94  68           MX
    PLA                             ; $CD0A95  68           MX
    PLA                             ; $CD0A96  68           MX
    PLA                             ; $CD0A97  68           MX
    PLP                             ; $CD0A98  28           MX
    LDA #$7F                        ; $CD0A99  A9 7F        mX
    LDX #$0002                      ; $CD0A9B  A2 02 00     mX
    STX $4302                       ; $CD0A9E  8E 02 43     mX
    STA $4304                       ; $CD0AA1  8D 04 43     mX
    LDX #$2000                      ; $CD0AA4  A2 00 20     mX
    STX $2116                       ; $CD0AA7  8E 16 21     mX
    LDX #$8000                      ; $CD0AAA  A2 00 80     mX
    STX $4305                       ; $CD0AAD  8E 05 43     mX
    LDX #$1801                      ; $CD0AB0  A2 01 18     mX
    STX $4300                       ; $CD0AB3  8E 00 43     mX
    LDA #$01                        ; $CD0AB6  A9 01        mX
    STA $420B                       ; $CD0AB8  8D 0B 42     mX
    LDX #$06C0                      ; $CD0ABB  A2 C0 06     mX
L_CD0ABE:
    LDA $CD8E9F,X                   ; $CD0ABE  BF 9F 8E CD  mX
    STA $7F7FFF,X                   ; $CD0AC2  9F FF 7F 7F  mX
    DEX                             ; $CD0AC6  CA           mX
    BNE L_CD0ABE                    ; $CD0AC7  D0 F5        mX
    LDX #$0000                      ; $CD0AC9  A2 00 00     mX
    STX $86                         ; $CD0ACC  86 86        mX
    STX $84                         ; $CD0ACE  86 84        mX
    STX $0220                       ; $CD0AD0  8E 20 02     mX  p1_character
    STX $025E                       ; $CD0AD3  8E 5E 02     mX  p2_character
    JSR L_CD08A6                    ; $CD0AD6  20 A6 08     mX
    LDX #$0201                      ; $CD0AD9  A2 01 02     mX
    STX $88                         ; $CD0ADC  86 88        mX
    LDX #$0403                      ; $CD0ADE  A2 03 04     mX
    STX $8A                         ; $CD0AE1  86 8A        mX
    LDX #$0605                      ; $CD0AE3  A2 05 06     mX
    STX $8C                         ; $CD0AE6  86 8C        mX
    JSR L_CD12E2                    ; $CD0AE8  20 E2 12     mX
    LDA #$01                        ; $CD0AEB  A9 01        mX
    STA $A6                         ; $CD0AED  85 A6        mX
    JSR L_CD13DC                    ; $CD0AEF  20 DC 13     mX
    JSR L_CD1441                    ; $CD0AF2  20 41 14     mX
    JSR L_CD14A1                    ; $CD0AF5  20 A1 14     mX
    JSR L_CD11BE                    ; $CD0AF8  20 BE 11     mX
    JSR L_CD151D                    ; $CD0AFB  20 1D 15     mX
    JSR L_CD06AA                    ; $CD0AFE  20 AA 06     mX
    JSR L_CD129E                    ; $CD0B01  20 9E 12     mX
    JSR L_CD23C2                    ; $CD0B04  20 C2 23     mX
    STZ $81                         ; $CD0B07  64 81        mX
    LDA #$06                        ; $CD0B09  A9 06        mX
    STA $0220                       ; $CD0B0B  8D 20 02     mX  p1_character
    LDX #$1770                      ; $CD0B0E  A2 70 17     mX
    STX $0224                       ; $CD0B11  8E 24 02     mX  p1_money
    STX $0262                       ; $CD0B14  8E 62 02     mX  p2_money
    STX $AC                         ; $CD0B17  86 AC        mX
    JSR L_CD0263                    ; $CD0B19  20 63 02     mX
    LDA #$01                        ; $CD0B1C  A9 01        mX
    STA $5B                         ; $CD0B1E  85 5B        mX
    JSR L_CD0BBD                    ; $CD0B20  20 BD 0B     mX
    LDA $0212                       ; $CD0B23  AD 12 02     mX  two_players
    BPL L_CD0B2B                    ; $CD0B26  10 03        mX
    JMP L_CD0BBC                    ; $CD0B28  4C BC 0B     mX
L_CD0B2B:
    JSR L_CD0F70                    ; $CD0B2B  20 70 0F     mX
    LDA $84                         ; $CD0B2E  A5 84        mX
    STA $0220                       ; $CD0B30  8D 20 02     mX  p1_character
    STA $A8                         ; $CD0B33  85 A8        mX
    JSR L_CD08A6                    ; $CD0B35  20 A6 08     mX
    JSR L_CD05B1                    ; $CD0B38  20 B1 05     mX
    LDA $84                         ; $CD0B3B  A5 84        mX
    EOR #$01                        ; $CD0B3D  49 01        mX
    STA $84                         ; $CD0B3F  85 84        mX
    STA $A8                         ; $CD0B41  85 A8        mX
    JSR L_CD1511                    ; $CD0B43  20 11 15     mX
    REP #$20                        ; $CD0B46  C2 20        mX
    LDA $0224                       ; $CD0B48  AD 24 02     MX  p1_money
    SEC                             ; $CD0B4B  38           MX
    SBC $021E                       ; $CD0B4C  ED 1E 02     MX
    STA $0262                       ; $CD0B4F  8D 62 02     MX  p2_money
    SEP #$20                        ; $CD0B52  E2 20        MX
    JSR L_CD23E0                    ; $CD0B54  20 E0 23     mX
    JSR L_CD23D3                    ; $CD0B57  20 D3 23     mX
    JSR L_CD024C                    ; $CD0B5A  20 4C 02     mX
    LDA $0212                       ; $CD0B5D  AD 12 02     mX  two_players
    STA $5B                         ; $CD0B60  85 5B        mX
    STA $A2                         ; $CD0B62  85 A2        mX
    JSR L_CD0BBD                    ; $CD0B64  20 BD 0B     mX
    LDA $0212                       ; $CD0B67  AD 12 02     mX  two_players
    BMI L_CD0BBC                    ; $CD0B6A  30 50        mX
    JSR L_CD0F7C                    ; $CD0B6C  20 7C 0F     mX
    LDA $84                         ; $CD0B6F  A5 84        mX
    STA $025E                       ; $CD0B71  8D 5E 02     mX  p2_character
    STA $A8                         ; $CD0B74  85 A8        mX
    JSR L_CD05DC                    ; $CD0B76  20 DC 05     mX
    JSR L_CD05BD                    ; $CD0B79  20 BD 05     mX
    REP #$20                        ; $CD0B7C  C2 20        mX
    LDA $0262                       ; $CD0B7E  AD 62 02     MX  p2_money
    SEC                             ; $CD0B81  38           MX
    SBC $021E                       ; $CD0B82  ED 1E 02     MX
    STA $AC                         ; $CD0B85  85 AC        MX
    LSR                             ; $CD0B87  4A           MX
    STA $0224                       ; $CD0B88  8D 24 02     MX  p1_money
    STA $0262                       ; $CD0B8B  8D 62 02     MX  p2_money
    SEP #$20                        ; $CD0B8E  E2 20        MX
    LDA #$F1                        ; $CD0B90  A9 F1        mX
    STA $7F9194                     ; $CD0B92  8F 94 91 7F  mX
    LDA #$B5                        ; $CD0B96  A9 B5        mX
    STA $7F9195                     ; $CD0B98  8F 95 91 7F  mX
    STA $7F                         ; $CD0B9C  85 7F        mX
    JSR L_CD23E0                    ; $CD0B9E  20 E0 23     mX
    JSR L_CD23D3                    ; $CD0BA1  20 D3 23     mX
    LDA #$14                        ; $CD0BA4  A9 14        mX
L_CD0BA6:
    PHA                             ; $CD0BA6  48           mX
    JSR L_CD11EB                    ; $CD0BA7  20 EB 11     mX
    JSR L_CD23E0                    ; $CD0BAA  20 E0 23     mX
    JSR L_CD23D3                    ; $CD0BAD  20 D3 23     mX
    PLA                             ; $CD0BB0  68           mX
    DEC                             ; $CD0BB1  3A           mX
    BNE L_CD0BA6                    ; $CD0BB2  D0 F2        mX
    STZ $A6                         ; $CD0BB4  64 A6        mX
    JSR L_CD0235                    ; $CD0BB6  20 35 02     mX
    JMP L_CD0FB4                    ; $CD0BB9  4C B4 0F     mX
L_CD0BBC:
    RTS                             ; $CD0BBC  60           mX
L_CD0BBD:
    STX $82                         ; $CD0BBD  86 82        mX
    LDA $4A                         ; $CD0BBF  A5 4A        mX
L_CD0BC1:
    CMP $4A                         ; $CD0BC1  C5 4A        mX
    BEQ L_CD0BC1                    ; $CD0BC3  F0 FC        mX
    JSR L_CD08A6                    ; $CD0BC5  20 A6 08     mX
    JSR L_CD05C9                    ; $CD0BC8  20 C9 05     mX
    JSR L_CD129E                    ; $CD0BCB  20 9E 12     mX
    JSR L_CD1441                    ; $CD0BCE  20 41 14     mX
    JSR L_CD1454                    ; $CD0BD1  20 54 14     mX
    JSR L_CD33B7                    ; $CD0BD4  20 B7 33     mX
    JSR L_CD06AA                    ; $CD0BD7  20 AA 06     mX
    JSR L_CD23E0                    ; $CD0BDA  20 E0 23     mX
    LDA #$06                        ; $CD0BDD  A9 06        mX
    CMP $0220                       ; $CD0BDF  CD 20 02     mX  p1_character
    BNE L_CD0BF5                    ; $CD0BE2  D0 11        mX
    LDA #$17                        ; $CD0BE4  A9 17        mX
    JSL L_C2010F                    ; $CD0BE6  22 0F 01 C2  mX
    JSR L_CD24B5                    ; $CD0BEA  20 B5 24     mX
L_CD0BED:
    JSR L_CD22AA                    ; $CD0BED  20 AA 22     mX
    BNE L_CD0BED                    ; $CD0BF0  D0 FB        mX
    JMP L_CD0C02                    ; $CD0BF2  4C 02 0C     mX
L_CD0BF5:
    LDA $A2                         ; $CD0BF5  A5 A2        mX
    BNE L_CD0C02                    ; $CD0BF7  D0 09        mX
L_CD0BF9:
    LDA #$01                        ; $CD0BF9  A9 01        mX
    STA $A2                         ; $CD0BFB  85 A2        mX
    JSR L_CD22AA                    ; $CD0BFD  20 AA 22     mX
    BNE L_CD0BF9                    ; $CD0C00  D0 F7        mX
L_CD0C02:
    LDA #$0A                        ; $CD0C02  A9 0A        mX
L_CD0C04:
    PHA                             ; $CD0C04  48           mX
    LDX #$0038                      ; $CD0C05  A2 38 00     mX
L_CD0C08:
    LDA $7F9197,X                   ; $CD0C08  BF 97 91 7F  mX
    EOR #$30                        ; $CD0C0C  49 30        mX
    STA $7F9197,X                   ; $CD0C0E  9F 97 91 7F  mX
    DEX                             ; $CD0C12  CA           mX
    DEX                             ; $CD0C13  CA           mX
    DEX                             ; $CD0C14  CA           mX
    DEX                             ; $CD0C15  CA           mX
    BNE L_CD0C08                    ; $CD0C16  D0 F0        mX
    JSR L_CD23D3                    ; $CD0C18  20 D3 23     mX
    JSR L_CD11EB                    ; $CD0C1B  20 EB 11     mX
    JSR L_CD23E0                    ; $CD0C1E  20 E0 23     mX
    LDA #$01                        ; $CD0C21  A9 01        mX
    JSR L_CD24D6                    ; $CD0C23  20 D6 24     mX
    PLA                             ; $CD0C26  68           mX
    DEC                             ; $CD0C27  3A           mX
    BNE L_CD0C04                    ; $CD0C28  D0 DA        mX
L_CD0C2A:
    JSR L_CD22B4                    ; $CD0C2A  20 B4 22     mX
    BEQ L_CD0C37                    ; $CD0C2D  F0 08        mX
    LDA #$FF                        ; $CD0C2F  A9 FF        mX
    STA $0212                       ; $CD0C31  8D 12 02     mX  two_players
    JMP L_CD1BA5                    ; $CD0C34  4C A5 1B     mX
L_CD0C37:
    JSR L_CD11EB                    ; $CD0C37  20 EB 11     mX
    JSR L_CD23E0                    ; $CD0C3A  20 E0 23     mX
    LDA #$01                        ; $CD0C3D  A9 01        mX
    JSR L_CD24D6                    ; $CD0C3F  20 D6 24     mX
    JSR L_CD11EB                    ; $CD0C42  20 EB 11     mX
    JSR L_CD23E0                    ; $CD0C45  20 E0 23     mX
    JSR L_CD22CE                    ; $CD0C48  20 CE 22     mX
    LDX $84                         ; $CD0C4B  A6 84        mX
    REP #$20                        ; $CD0C4D  C2 20        mX
    PHA                             ; $CD0C4F  48           MX
    TXA                             ; $CD0C50  8A           MX
    ASL                             ; $CD0C51  0A           MX
    ASL                             ; $CD0C52  0A           MX
    STA $64                         ; $CD0C53  85 64        MX
    LDA $0220                       ; $CD0C55  AD 20 02     MX  p1_character
    ASL                             ; $CD0C58  0A           MX
    ASL                             ; $CD0C59  0A           MX
    ASL                             ; $CD0C5A  0A           MX
    ASL                             ; $CD0C5B  0A           MX
    ASL                             ; $CD0C5C  0A           MX
    CLC                             ; $CD0C5D  18           MX
    ADC $64                         ; $CD0C5E  65 64        MX
    TAX                             ; $CD0C60  AA           MX
    PLA                             ; $CD0C61  68           MX
    SEP #$20                        ; $CD0C62  E2 20        MX
    LSR                             ; $CD0C64  4A           mX
    BCC L_CD0C6C                    ; $CD0C65  90 05        mX
    INX                             ; $CD0C67  E8           mX
    INX                             ; $CD0C68  E8           mX
    INX                             ; $CD0C69  E8           mX
    BRA L_CD0C7C                    ; $CD0C6A  80 10        mX
L_CD0C6C:
    LSR                             ; $CD0C6C  4A           mX
    BCC L_CD0C73                    ; $CD0C6D  90 04        mX
    INX                             ; $CD0C6F  E8           mX
    INX                             ; $CD0C70  E8           mX
    BRA L_CD0C7C                    ; $CD0C71  80 09        mX
L_CD0C73:
    LSR                             ; $CD0C73  4A           mX
    BCC L_CD0C79                    ; $CD0C74  90 03        mX
    INX                             ; $CD0C76  E8           mX
    BRA L_CD0C7C                    ; $CD0C77  80 03        mX
L_CD0C79:
    LSR                             ; $CD0C79  4A           mX
    BCC L_CD0CB7                    ; $CD0C7A  90 3B        mX
L_CD0C7C:
    REP #$20                        ; $CD0C7C  C2 20        mX
    LDA $CD0CCE,X                   ; $CD0C7E  BF CE 0C CD  MX
    AND #$00FF                      ; $CD0C82  29 FF 00     MX
    TAX                             ; $CD0C85  AA           MX
    SEP #$20                        ; $CD0C86  E2 20        MX
    CMP #$06                        ; $CD0C88  C9 06        mX
    BCS L_CD0CB7                    ; $CD0C8A  B0 2B        mX
    CMP $0220                       ; $CD0C8C  CD 20 02     mX  p1_character
    BEQ L_CD0CB7                    ; $CD0C8F  F0 26        mX
    CMP $84                         ; $CD0C91  C5 84        mX
    BEQ L_CD0CB7                    ; $CD0C93  F0 22        mX
    STX $84                         ; $CD0C95  86 84        mX
    JSL L_C2003F                    ; $CD0C97  22 3F 00 C2  mX
    JSR L_CD129E                    ; $CD0C9B  20 9E 12     mX
    JSR L_CD1441                    ; $CD0C9E  20 41 14     mX
    JSR L_CD1454                    ; $CD0CA1  20 54 14     mX
    LDA $A8                         ; $CD0CA4  A5 A8        mX
    PHA                             ; $CD0CA6  48           mX
    LDA $84                         ; $CD0CA7  A5 84        mX
    STA $A8                         ; $CD0CA9  85 A8        mX
    JSR L_CD05DC                    ; $CD0CAB  20 DC 05     mX
    JSR L_CD06AA                    ; $CD0CAE  20 AA 06     mX
    PLA                             ; $CD0CB1  68           mX
    STA $A8                         ; $CD0CB2  85 A8        mX
    JSR L_CD23D3                    ; $CD0CB4  20 D3 23     mX
L_CD0CB7:
    JSR L_CD23E0                    ; $CD0CB7  20 E0 23     mX
    JSR L_CD22BE                    ; $CD0CBA  20 BE 22     mX
    BEQ L_CD0CCA                    ; $CD0CBD  F0 0B        mX
    JSL L_C2002A                    ; $CD0CBF  22 2A 00 C2  mX
    LDA $84                         ; $CD0CC3  A5 84        mX
    CMP $0220                       ; $CD0CC5  CD 20 02     mX  p1_character
    BNE L_CD0CCD                    ; $CD0CC8  D0 03        mX
L_CD0CCA:
    JMP L_CD0C2A                    ; $CD0CCA  4C 2A 0C     mX
L_CD0CCD:
    RTS                             ; $CD0CCD  60           mX
    db $04,$02,$01,$01,$05,$03,$01,$01,$04,$04,$03,$03,$01,$05,$02,$02 ; $CD0CCE
    db $02,$02,$05,$05,$03,$01,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD0CDE
    db $04,$02,$00,$00,$05,$03,$00,$00,$00,$04,$03,$03,$05,$05,$02,$02 ; $CD0CEE
    db $02,$00,$05,$05,$03,$03,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD0CFE
    db $04,$04,$01,$01,$05,$03,$00,$00,$00,$04,$03,$03,$01,$05,$03,$03 ; $CD0D0E
    db $00,$00,$05,$05,$03,$01,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD0D1E
    db $04,$02,$01,$01,$05,$05,$00,$00,$00,$04,$02,$02,$01,$05,$02,$02 ; $CD0D2E
    db $02,$00,$05,$05,$01,$01,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD0D3E
    db $02,$02,$01,$01,$05,$03,$00,$00,$00,$00,$03,$03,$01,$05,$02,$02 ; $CD0D4E
    db $02,$00,$05,$05,$03,$01,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD0D5E
    db $04,$02,$01,$01,$03,$03,$00,$00,$00,$04,$03,$03,$01,$01,$02,$02 ; $CD0D6E
    db $02,$00,$04,$04,$03,$01,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD0D7E
    db $04,$02,$01,$01,$05,$03,$00,$00,$00,$04,$03,$03,$01,$05,$02,$02 ; $CD0D8E
    db $02,$00,$05,$05,$03,$01,$04,$04                                 ; $CD0D9E
L_CD0DA6:
    JSR L_CD12F8                    ; $CD0DA6  20 F8 12     MX
    PHP                             ; $CD0DA9  08           mX
    PEA $0000                       ; $CD0DAA  F4 00 00     mX
    PEA $00CF                       ; $CD0DAD  F4 CF 00     mX
    PEA $0000                       ; $CD0DB0  F4 00 00     mX
    PEA $007F                       ; $CD0DB3  F4 7F 00     mX
    JSL L_C30000                    ; $CD0DB6  22 00 00 C3  mX
    PLA                             ; $CD0DBA  68           MX
    PLA                             ; $CD0DBB  68           MX
    PLA                             ; $CD0DBC  68           MX
    PLA                             ; $CD0DBD  68           MX
    PLP                             ; $CD0DBE  28           MX
    LDA #$7F                        ; $CD0DBF  A9 7F        mX
    LDX #$0002                      ; $CD0DC1  A2 02 00     mX
    STX $4302                       ; $CD0DC4  8E 02 43     mX
    STA $4304                       ; $CD0DC7  8D 04 43     mX
    LDX #$2000                      ; $CD0DCA  A2 00 20     mX
    STX $2116                       ; $CD0DCD  8E 16 21     mX
    LDX #$8000                      ; $CD0DD0  A2 00 80     mX
    STX $4305                       ; $CD0DD3  8E 05 43     mX
    LDX #$1801                      ; $CD0DD6  A2 01 18     mX
    STX $4300                       ; $CD0DD9  8E 00 43     mX
    LDA #$01                        ; $CD0DDC  A9 01        mX
    STA $420B                       ; $CD0DDE  8D 0B 42     mX
    LDX #$06C0                      ; $CD0DE1  A2 C0 06     mX
L_CD0DE4:
    LDA $CF4163,X                   ; $CD0DE4  BF 63 41 CF  mX
    STA $7F7FFF,X                   ; $CD0DE8  9F FF 7F 7F  mX
    DEX                             ; $CD0DEC  CA           mX
    BNE L_CD0DE4                    ; $CD0DED  D0 F5        mX
    LDY #$BA06                      ; $CD0DEF  A0 06 BA     mX
    JSR L_CD12B4                    ; $CD0DF2  20 B4 12     mX
    JSR L_CD186D                    ; $CD0DF5  20 6D 18     mX
    JSR L_CD12E2                    ; $CD0DF8  20 E2 12     mX
    JSR L_CD107D                    ; $CD0DFB  20 7D 10     mX
    JSR L_CD063E                    ; $CD0DFE  20 3E 06     mX
    JSR L_CD23E0                    ; $CD0E01  20 E0 23     mX
    JSL L_C20000                    ; $CD0E04  22 00 00 C2  mX
    LDA #$1A                        ; $CD0E08  A9 1A        mX
    JSL L_C2010F                    ; $CD0E0A  22 0F 01 C2  mX
    JSR L_CD24B5                    ; $CD0E0E  20 B5 24     mX
L_CD0E11:
    LDA $4A                         ; $CD0E11  A5 4A        mX
L_CD0E13:
    CMP $4A                         ; $CD0E13  C5 4A        mX
    BEQ L_CD0E13                    ; $CD0E15  F0 FC        mX
    JSL L_C203C2                    ; $CD0E17  22 C2 03 C2  mX
    LDA $46                         ; $CD0E1B  A5 46        mX
    CMP #$64                        ; $CD0E1D  C9 64        mX
    BCC L_CD0E11                    ; $CD0E1F  90 F0        mX
    LDA #$18                        ; $CD0E21  A9 18        mX
    JSL L_C2010F                    ; $CD0E23  22 0F 01 C2  mX
    JSR L_CD0FD2                    ; $CD0E27  20 D2 0F     mX
    RTS                             ; $CD0E2A  60           mX
L_CD0E2B:
    STZ $EE                         ; $CD0E2B  64 EE        MX
    JSL L_C20100                    ; $CD0E2D  22 00 01 C2  MX
    JSR L_CD12F8                    ; $CD0E31  20 F8 12     MX
    LDA $0200                       ; $CD0E34  AD 00 02     mX
    BEQ L_CD0E85                    ; $CD0E37  F0 4C        mX
    PHP                             ; $CD0E39  08           mX
    PEA $8E96                       ; $CD0E3A  F4 96 8E     mX
    PEA $00CE                       ; $CD0E3D  F4 CE 00     mX
    PEA $0000                       ; $CD0E40  F4 00 00     mX
    PEA $007F                       ; $CD0E43  F4 7F 00     mX
    JSL L_C30000                    ; $CD0E46  22 00 00 C3  mX
    PLA                             ; $CD0E4A  68           MX
    PLA                             ; $CD0E4B  68           MX
    PLA                             ; $CD0E4C  68           MX
    PLA                             ; $CD0E4D  68           MX
    PLP                             ; $CD0E4E  28           MX
    LDA #$7F                        ; $CD0E4F  A9 7F        mX
    LDX #$0002                      ; $CD0E51  A2 02 00     mX
    STX $4302                       ; $CD0E54  8E 02 43     mX
    STA $4304                       ; $CD0E57  8D 04 43     mX
    LDX #$2000                      ; $CD0E5A  A2 00 20     mX
    STX $2116                       ; $CD0E5D  8E 16 21     mX
    LDX #$8000                      ; $CD0E60  A2 00 80     mX
    STX $4305                       ; $CD0E63  8E 05 43     mX
    LDX #$1801                      ; $CD0E66  A2 01 18     mX
    STX $4300                       ; $CD0E69  8E 00 43     mX
    LDA #$01                        ; $CD0E6C  A9 01        mX
    STA $420B                       ; $CD0E6E  8D 0B 42     mX
    JSR L_CD1553                    ; $CD0E71  20 53 15     mX
    LDX #$06C0                      ; $CD0E74  A2 C0 06     mX
L_CD0E77:
    LDA $CDA6DE,X                   ; $CD0E77  BF DE A6 CD  mX
    STA $7F7FFF,X                   ; $CD0E7B  9F FF 7F 7F  mX
    DEX                             ; $CD0E7F  CA           mX
    BNE L_CD0E77                    ; $CD0E80  D0 F5        mX
    JMP L_CD0ECE                    ; $CD0E82  4C CE 0E     mX
L_CD0E85:
    PHP                             ; $CD0E85  08           mX
    PEA $8137                       ; $CD0E86  F4 37 81     mX
    PEA $00CF                       ; $CD0E89  F4 CF 00     mX
    PEA $0000                       ; $CD0E8C  F4 00 00     mX
    PEA $007F                       ; $CD0E8F  F4 7F 00     mX
    JSL L_C30000                    ; $CD0E92  22 00 00 C3  mX
    PLA                             ; $CD0E96  68           MX
    PLA                             ; $CD0E97  68           MX
    PLA                             ; $CD0E98  68           MX
    PLA                             ; $CD0E99  68           MX
    PLP                             ; $CD0E9A  28           MX
    LDA #$7F                        ; $CD0E9B  A9 7F        mX
    LDX #$0002                      ; $CD0E9D  A2 02 00     mX
    STX $4302                       ; $CD0EA0  8E 02 43     mX
    STA $4304                       ; $CD0EA3  8D 04 43     mX
    LDX #$2000                      ; $CD0EA6  A2 00 20     mX
    STX $2116                       ; $CD0EA9  8E 16 21     mX
    LDX #$8000                      ; $CD0EAC  A2 00 80     mX
    STX $4305                       ; $CD0EAF  8E 05 43     mX
    LDX #$1801                      ; $CD0EB2  A2 01 18     mX
    STX $4300                       ; $CD0EB5  8E 00 43     mX
    LDA #$01                        ; $CD0EB8  A9 01        mX
    STA $420B                       ; $CD0EBA  8D 0B 42     mX
    JSR L_CD1553                    ; $CD0EBD  20 53 15     mX
    LDX #$06C0                      ; $CD0EC0  A2 C0 06     mX
L_CD0EC3:
    LDA $CDADE2,X                   ; $CD0EC3  BF E2 AD CD  mX
    STA $7F7FFF,X                   ; $CD0EC7  9F FF 7F 7F  mX
    DEX                             ; $CD0ECB  CA           mX
    BNE L_CD0EC3                    ; $CD0ECC  D0 F5        mX
L_CD0ECE:
    STZ $0204                       ; $CD0ECE  9C 04 02     mX
    LDA $0220                       ; $CD0ED1  AD 20 02     mX  p1_character
    STA $84                         ; $CD0ED4  85 84        mX
    LDA #$01                        ; $CD0ED6  A9 01        mX
    STA $81                         ; $CD0ED8  85 81        mX
    JSR L_CD12E2                    ; $CD0EDA  20 E2 12     mX
    JSR L_CD13F5                    ; $CD0EDD  20 F5 13     mX
    JSR L_CD0599                    ; $CD0EE0  20 99 05     mX
    JSR L_CD16EE                    ; $CD0EE3  20 EE 16     mX
    JSR L_CD1594                    ; $CD0EE6  20 94 15     mX
    JSR L_CD146A                    ; $CD0EE9  20 6A 14     mX
    JSR L_CD12B1                    ; $CD0EEC  20 B1 12     mX
    LDY #$0382                      ; $CD0EEF  A0 82 03     mX
    STY $66                         ; $CD0EF2  84 66        mX
    LDY $0224                       ; $CD0EF4  AC 24 02     mX  p1_money
    JSR L_CD1249                    ; $CD0EF7  20 49 12     mX
    LDY #$04EE                      ; $CD0EFA  A0 EE 04     mX
    STY $66                         ; $CD0EFD  84 66        mX
    LDY #$01F4                      ; $CD0EFF  A0 F4 01     mX
    JSR L_CD1254                    ; $CD0F02  20 54 12     mX
    LDA #$01                        ; $CD0F05  A9 01        mX
    STA $5B                         ; $CD0F07  85 5B        mX
    JSR L_CD33BC                    ; $CD0F09  20 BC 33     mX
    JSR L_CD1693                    ; $CD0F0C  20 93 16     mX
    JSR L_CD097A                    ; $CD0F0F  20 7A 09     mX
    JSR L_CD23E0                    ; $CD0F12  20 E0 23     mX
    JSR L_CD23D3                    ; $CD0F15  20 D3 23     mX
    JSR L_CD06B6                    ; $CD0F18  20 B6 06     mX
    JSR L_CD23E0                    ; $CD0F1B  20 E0 23     mX
    JSL L_C20000                    ; $CD0F1E  22 00 00 C2  mX
    LDA #$17                        ; $CD0F22  A9 17        mX
    JSL L_C2010F                    ; $CD0F24  22 0F 01 C2  mX
    JSR L_CD24B5                    ; $CD0F28  20 B5 24     mX
    LDA $0200                       ; $CD0F2B  AD 00 02     mX
    BNE L_CD0F33                    ; $CD0F2E  D0 03        mX
    JMP L_CD0FD2                    ; $CD0F30  4C D2 0F     mX
L_CD0F33:
    JSR L_CD23E0                    ; $CD0F33  20 E0 23     mX
    JSR L_CD0FE8                    ; $CD0F36  20 E8 0F     mX
    JSR L_CD22CE                    ; $CD0F39  20 CE 22     mX
    AND #$03                        ; $CD0F3C  29 03        mX
    BEQ L_CD0F64                    ; $CD0F3E  F0 24        mX
    STZ $0204                       ; $CD0F40  9C 04 02     mX
    LDY #$008F                      ; $CD0F43  A0 8F 00     mX
    AND #$02                        ; $CD0F46  29 02        mX
    BNE L_CD0F52                    ; $CD0F48  D0 08        mX
    LDA #$01                        ; $CD0F4A  A9 01        mX
    STA $0204                       ; $CD0F4C  8D 04 02     mX
    LDY #$00F0                      ; $CD0F4F  A0 F0 00     mX
L_CD0F52:
    TYA                             ; $CD0F52  98           mX
    LDX #$0194                      ; $CD0F53  A2 94 01     mX
    CMP $7F9000,X                   ; $CD0F56  DF 00 90 7F  mX
    BEQ L_CD0F64                    ; $CD0F5A  F0 08        mX
    STA $7F9000,X                   ; $CD0F5C  9F 00 90 7F  mX
    JSL L_C2003F                    ; $CD0F60  22 3F 00 C2  mX
L_CD0F64:
    JSR L_CD22BE                    ; $CD0F64  20 BE 22     mX
    BEQ L_CD0F33                    ; $CD0F67  F0 CA        mX
    JSL L_C2002A                    ; $CD0F69  22 2A 00 C2  mX
    JMP L_CD24A1                    ; $CD0F6D  4C A1 24     mX
L_CD0F70:
    LDX #$9052                      ; $CD0F70  A2 52 90     mX
    STX $68                         ; $CD0F73  86 68        mX
    LDX #$007F                      ; $CD0F75  A2 7F 00     mX
    STX $6A                         ; $CD0F78  86 6A        mX
    BRA L_CD0F86                    ; $CD0F7A  80 0A        mX
L_CD0F7C:
    LDX #$9062                      ; $CD0F7C  A2 62 90     mX
    STX $68                         ; $CD0F7F  86 68        mX
    LDX #$007F                      ; $CD0F81  A2 7F 00     mX
    STX $6A                         ; $CD0F84  86 6A        mX
L_CD0F86:
    REP #$20                        ; $CD0F86  C2 20        mX
    LDA $84                         ; $CD0F88  A5 84        MX
    ASL                             ; $CD0F8A  0A           MX
    ASL                             ; $CD0F8B  0A           MX
    ASL                             ; $CD0F8C  0A           MX
    ASL                             ; $CD0F8D  0A           MX
    CLC                             ; $CD0F8E  18           MX
    ADC #$0072                      ; $CD0F8F  69 72 00     MX
    TAX                             ; $CD0F92  AA           MX
    LDY #$0000                      ; $CD0F93  A0 00 00     MX
L_CD0F96:
    LDA [$68],Y                     ; $CD0F96  B7 68        MX
    PHA                             ; $CD0F98  48           MX
    LDA $7F9000,X                   ; $CD0F99  BF 00 90 7F  MX
    STA [$68],Y                     ; $CD0F9D  97 68        MX
    PLA                             ; $CD0F9F  68           MX
    STA $7F9000,X                   ; $CD0FA0  9F 00 90 7F  MX
    INX                             ; $CD0FA4  E8           MX
    INX                             ; $CD0FA5  E8           MX
    INX                             ; $CD0FA6  E8           MX
    INX                             ; $CD0FA7  E8           MX
    INY                             ; $CD0FA8  C8           MX
    INY                             ; $CD0FA9  C8           MX
    INY                             ; $CD0FAA  C8           MX
    INY                             ; $CD0FAB  C8           MX
    CPY #$0010                      ; $CD0FAC  C0 10 00     MX
    BNE L_CD0F96                    ; $CD0FAF  D0 E5        MX
    SEP #$20                        ; $CD0FB1  E2 20        MX
    RTS                             ; $CD0FB3  60           mX
L_CD0FB4:
    LDA #$01                        ; $CD0FB4  A9 01        mX
    STA $81                         ; $CD0FB6  85 81        mX
L_CD0FB8:
    JSR L_CD22B4                    ; $CD0FB8  20 B4 22     mX
    BEQ L_CD0FC0                    ; $CD0FBB  F0 03        mX
    JMP L_CD1BA5                    ; $CD0FBD  4C A5 1B     mX
L_CD0FC0:
    JSR L_CD0FE8                    ; $CD0FC0  20 E8 0F     mX
    JSR L_CD23E0                    ; $CD0FC3  20 E0 23     mX
    JSR L_CD22BE                    ; $CD0FC6  20 BE 22     mX
    BEQ L_CD0FB8                    ; $CD0FC9  F0 ED        mX
    JSL L_C2002A                    ; $CD0FCB  22 2A 00 C2  mX
    JMP L_CD24A1                    ; $CD0FCF  4C A1 24     mX
L_CD0FD2:
    LDA #$01                        ; $CD0FD2  A9 01        mX
    STA $81                         ; $CD0FD4  85 81        mX
L_CD0FD6:
    JSR L_CD0FE8                    ; $CD0FD6  20 E8 0F     mX
    JSR L_CD23E0                    ; $CD0FD9  20 E0 23     mX
    JSR L_CD22BE                    ; $CD0FDC  20 BE 22     mX
    BEQ L_CD0FD6                    ; $CD0FDF  F0 F5        mX
    JSL L_C2002A                    ; $CD0FE1  22 2A 00 C2  mX
    JMP L_CD24A1                    ; $CD0FE5  4C A1 24     mX
L_CD0FE8:
    LDA $81                         ; $CD0FE8  A5 81        mX
    BEQ L_CD1001                    ; $CD0FEA  F0 15        mX
    LDY $7F                         ; $CD0FEC  A4 7F        mX
    LDX #$0194                      ; $CD0FEE  A2 94 01     mX
    LDA $4A                         ; $CD0FF1  A5 4A        mX
    LSR                             ; $CD0FF3  4A           mX
    LSR                             ; $CD0FF4  4A           mX
    AND #$01                        ; $CD0FF5  29 01        mX
    BEQ L_CD0FFC                    ; $CD0FF7  F0 03        mX
    LDY #$00E0                      ; $CD0FF9  A0 E0 00     mX
L_CD0FFC:
    TYA                             ; $CD0FFC  98           mX
    STA $7F9001,X                   ; $CD0FFD  9F 01 90 7F  mX
L_CD1001:
    RTS                             ; $CD1001  60           mX
L_CD1002:
    LDX #$0000                      ; $CD1002  A2 00 00     mX
    LDY #$0010                      ; $CD1005  A0 10 00     mX
    LDA #$00                        ; $CD1008  A9 00        mX
L_CD100A:
    STA $7F8000,X                   ; $CD100A  9F 00 80 7F  mX
    STA $7F8680,X                   ; $CD100E  9F 80 86 7F  mX
    STA $7F8681,X                   ; $CD1012  9F 81 86 7F  mX
    INX                             ; $CD1016  E8           mX
    INX                             ; $CD1017  E8           mX
    INX                             ; $CD1018  E8           mX
    INX                             ; $CD1019  E8           mX
    DEY                             ; $CD101A  88           mX
    BNE L_CD100A                    ; $CD101B  D0 ED        mX
    LDY #$000D                      ; $CD101D  A0 0D 00     mX
    LDX #$0000                      ; $CD1020  A2 00 00     mX
    REP #$20                        ; $CD1023  C2 20        mX
L_CD1025:
    LDA #$0000                      ; $CD1025  A9 00 00     MX
    STA $7F8000,X                   ; $CD1028  9F 00 80 7F  MX
    STA $7F8024,X                   ; $CD102C  9F 24 80 7F  MX
    STA $7F803E,X                   ; $CD1030  9F 3E 80 7F  MX
    TXA                             ; $CD1034  8A           MX
    CLC                             ; $CD1035  18           MX
    ADC #$0080                      ; $CD1036  69 80 00     MX
    TAX                             ; $CD1039  AA           MX
    DEY                             ; $CD103A  88           MX
    BNE L_CD1025                    ; $CD103B  D0 E8        MX
    SEP #$20                        ; $CD103D  E2 20        MX
    JSR L_CD23E0                    ; $CD103F  20 E0 23     mX
    RTS                             ; $CD1042  60           mX
    db $EA,$01,$F6,$01,$5A,$01,$42,$01,$6A,$02,$76,$02,$1A,$02,$02,$02 ; $CD1043
    db $EA,$02,$F6,$02,$DA,$02,$C2,$02,$6A,$03,$76,$03,$9A,$03,$82,$03 ; $CD1053
    db $EA,$03,$F6,$03,$5A,$04,$42,$04,$6A,$04,$76,$04,$1A,$05,$02,$05 ; $CD1063
    db $6A,$05,$78,$05,$DE,$05,$EA,$05,$F6,$05                         ; $CD1073
L_CD107D:
    LDX #$0000                      ; $CD107D  A2 00 00     mX
L_CD1080:
    JSR L_CD10B8                    ; $CD1080  20 B8 10     mX
    CMP #$32                        ; $CD1083  C9 32        mX
    BEQ L_CD108E                    ; $CD1085  F0 07        mX
    PHX                             ; $CD1087  DA           mX
    JSR L_CD1254                    ; $CD1088  20 54 12     mX
    PLX                             ; $CD108B  FA           mX
    BRA L_CD1080                    ; $CD108C  80 F2        mX
L_CD108E:
    PHX                             ; $CD108E  DA           mX
    JSR L_CD125A                    ; $CD108F  20 5A 12     mX
    PLX                             ; $CD1092  FA           mX
    JSR L_CD10B8                    ; $CD1093  20 B8 10     mX
    PHX                             ; $CD1096  DA           mX
    JSR L_CD125A                    ; $CD1097  20 5A 12     mX
    PLX                             ; $CD109A  FA           mX
    JSR L_CD10B8                    ; $CD109B  20 B8 10     mX
    PHX                             ; $CD109E  DA           mX
    JSR L_CD125A                    ; $CD109F  20 5A 12     mX
    PLX                             ; $CD10A2  FA           mX
    JSR L_CD10B8                    ; $CD10A3  20 B8 10     mX
    PHX                             ; $CD10A6  DA           mX
    LDY $0224                       ; $CD10A7  AC 24 02     mX  p1_money
    JSR L_CD1254                    ; $CD10AA  20 54 12     mX
    PLX                             ; $CD10AD  FA           mX
    JSR L_CD10B8                    ; $CD10AE  20 B8 10     mX
    LDY $0262                       ; $CD10B1  AC 62 02     mX  p2_money
    JSR L_CD1254                    ; $CD10B4  20 54 12     mX
    RTS                             ; $CD10B7  60           mX
L_CD10B8:
    REP #$20                        ; $CD10B8  C2 20        mX
    LDA $029C,X                     ; $CD10BA  BD 9C 02     MX
    TAY                             ; $CD10BD  A8           MX
    LDA $CD1043,X                   ; $CD10BE  BF 43 10 CD  MX
    STA $66                         ; $CD10C2  85 66        MX
    INX                             ; $CD10C4  E8           MX
    INX                             ; $CD10C5  E8           MX
    TXA                             ; $CD10C6  8A           MX
    SEP #$20                        ; $CD10C7  E2 20        MX
    RTS                             ; $CD10C9  60           mX
L_CD10CA:
    LDY #$0382                      ; $CD10CA  A0 82 03     mX
    STY $66                         ; $CD10CD  84 66        mX
    LDY $AC                         ; $CD10CF  A4 AC        mX
    JSR L_CD1249                    ; $CD10D1  20 49 12     mX
    LDY #$0370                      ; $CD10D4  A0 70 03     mX
    STY $66                         ; $CD10D7  84 66        mX
    LDY #$0000                      ; $CD10D9  A0 00 00     mX
    JSR L_CD124E                    ; $CD10DC  20 4E 12     mX
    LDY #$04B4                      ; $CD10DF  A0 B4 04     mX
    STY $66                         ; $CD10E2  84 66        mX
    LDY $CE                         ; $CD10E4  A4 CE        mX
    JMP L_CD1260                    ; $CD10E6  4C 60 12     mX
L_CD10E9:
    LDY #$0382                      ; $CD10E9  A0 82 03     mX
    STY $66                         ; $CD10EC  84 66        mX
    LDY $AC                         ; $CD10EE  A4 AC        mX
    JSR L_CD1201                    ; $CD10F0  20 01 12     mX
    LDY #$0370                      ; $CD10F3  A0 70 03     mX
    STY $66                         ; $CD10F6  84 66        mX
    JSR L_CD1112                    ; $CD10F8  20 12 11     mX
    LDY $021E                       ; $CD10FB  AC 1E 02     mX
    JSR L_CD1207                    ; $CD10FE  20 07 12     mX
    LDY #$04B4                      ; $CD1101  A0 B4 04     mX
    STY $66                         ; $CD1104  84 66        mX
    JSR L_CD110F                    ; $CD1106  20 0F 11     mX
    JSR L_CD1219                    ; $CD1109  20 19 12     mX
    JMP L_CD097A                    ; $CD110C  4C 7A 09     mX
L_CD110F:
    LDY $CE                         ; $CD110F  A4 CE        mX
    RTS                             ; $CD1111  60           mX
L_CD1112:
    REP #$20                        ; $CD1112  C2 20        mX
    LDA $8E                         ; $CD1114  A5 8E        MX
    ASL                             ; $CD1116  0A           MX
    TAX                             ; $CD1117  AA           MX
    LDA $CD1180,X                   ; $CD1118  BF 80 11 CD  MX
    CMP #$0008                      ; $CD111C  C9 08 00     MX
    BNE L_CD1130                    ; $CD111F  D0 0F        MX
    LDA $8E                         ; $CD1121  A5 8E        MX
    ASL                             ; $CD1123  0A           MX
    TAX                             ; $CD1124  AA           MX
    LDA $0204,X                     ; $CD1125  BD 04 02     MX
    BEQ L_CD1130                    ; $CD1128  F0 06        MX
    ASL                             ; $CD112A  0A           MX
    TAX                             ; $CD112B  AA           MX
    LDA $CD11A0,X                   ; $CD112C  BF A0 11 CD  MX
L_CD1130:
    STA $021E                       ; $CD1130  8D 1E 02     MX
    TAY                             ; $CD1133  A8           MX
    LDA $8E                         ; $CD1134  A5 8E        MX
    CMP #$0006                      ; $CD1136  C9 06 00     MX
    BNE L_CD117D                    ; $CD1139  D0 42        MX
    LDA #$0000                      ; $CD113B  A9 00 00     MX
    STA $021E                       ; $CD113E  8D 1E 02     MX
    LDX #$00B4                      ; $CD1141  A2 B4 00     MX
    LDY #$012C                      ; $CD1144  A0 2C 01     MX
    JSR L_CD116E                    ; $CD1147  20 6E 11     MX
    LDX #$00BA                      ; $CD114A  A2 BA 00     MX
    LDY #$004B                      ; $CD114D  A0 4B 00     MX
    JSR L_CD116E                    ; $CD1150  20 6E 11     MX
    LDX #$00C0                      ; $CD1153  A2 C0 00     MX
    LDY #$00FA                      ; $CD1156  A0 FA 00     MX
    JSR L_CD116E                    ; $CD1159  20 6E 11     MX
    LDA $AA                         ; $CD115C  A5 AA        MX
    AND #$00FF                      ; $CD115E  29 FF 00     MX
    BEQ L_CD116C                    ; $CD1161  F0 09        MX
    LDX #$00C6                      ; $CD1163  A2 C6 00     MX
    LDY #$0050                      ; $CD1166  A0 50 00     MX
    JSR L_CD116E                    ; $CD1169  20 6E 11     MX
L_CD116C:
    BRA L_CD117D                    ; $CD116C  80 0F        MX
L_CD116E:
    LDA $00,X                       ; $CD116E  B5 00        MX
    CMP $02,X                       ; $CD1170  D5 02        MX
    BEQ L_CD117C                    ; $CD1172  F0 08        MX
    TYA                             ; $CD1174  98           MX
    CLC                             ; $CD1175  18           MX
    ADC $021E                       ; $CD1176  6D 1E 02     MX
    STA $021E                       ; $CD1179  8D 1E 02     MX
L_CD117C:
    RTS                             ; $CD117C  60           MX
L_CD117D:
    SEP #$20                        ; $CD117D  E2 20        MX
    RTS                             ; $CD117F  60           mX
    db $F4,$01,$2C,$01,$4B,$00,$FA,$00,$50,$00,$96,$00,$E8,$03,$FA,$00 ; $CD1180
    db $00,$00,$08,$00,$08,$00,$08,$00,$08,$00,$00,$00,$00,$00,$00,$00 ; $CD1190
    db $00,$00,$C2,$01,$F4,$01,$F4,$01,$F4,$01,$0D,$02,$F4,$01,$3F,$02 ; $CD11A0
    db $26,$02,$26,$02,$26,$02,$DB,$01,$26,$02,$A9,$01,$3F,$02         ; $CD11B0
L_CD11BE:
    LDY #$0358                      ; $CD11BE  A0 58 03     mX
    STY $66                         ; $CD11C1  84 66        mX
    JSR L_CD11DA                    ; $CD11C3  20 DA 11     mX
    LDY #$0000                      ; $CD11C6  A0 00 00     mX
    JSR L_CD1254                    ; $CD11C9  20 54 12     mX
    LDY #$02AE                      ; $CD11CC  A0 AE 02     mX
    STY $66                         ; $CD11CF  84 66        mX
    LDY $AC                         ; $CD11D1  A4 AC        mX
    LDY #$0000                      ; $CD11D3  A0 00 00     mX
    JSR L_CD1249                    ; $CD11D6  20 49 12     mX
    RTS                             ; $CD11D9  60           mX
L_CD11DA:
    REP #$20                        ; $CD11DA  C2 20        mX
    LDA $84                         ; $CD11DC  A5 84        MX
    ASL                             ; $CD11DE  0A           MX
    TAX                             ; $CD11DF  AA           MX
    LDA $CD12D6,X                   ; $CD11E0  BF D6 12 CD  MX
    STA $021E                       ; $CD11E4  8D 1E 02     MX
    TAY                             ; $CD11E7  A8           MX
    SEP #$20                        ; $CD11E8  E2 20        MX
    RTS                             ; $CD11EA  60           mX
L_CD11EB:
    LDY #$0358                      ; $CD11EB  A0 58 03     mX
    STY $66                         ; $CD11EE  84 66        mX
    JSR L_CD11DA                    ; $CD11F0  20 DA 11     mX
    JSR L_CD120D                    ; $CD11F3  20 0D 12     mX
    LDY #$02AE                      ; $CD11F6  A0 AE 02     mX
    STY $66                         ; $CD11F9  84 66        mX
    LDY $AC                         ; $CD11FB  A4 AC        mX
    JSR L_CD1201                    ; $CD11FD  20 01 12     mX
    RTS                             ; $CD1200  60           mX
L_CD1201:
    LDX $66                         ; $CD1201  A6 66        mX
    INX                             ; $CD1203  E8           mX
    INX                             ; $CD1204  E8           mX
    STX $66                         ; $CD1205  86 66        mX
L_CD1207:
    LDX #$2710                      ; $CD1207  A2 10 27     mX
    JSR L_CD1223                    ; $CD120A  20 23 12     mX
L_CD120D:
    LDX #$03E8                      ; $CD120D  A2 E8 03     mX
    JSR L_CD1223                    ; $CD1210  20 23 12     mX
    LDX #$0064                      ; $CD1213  A2 64 00     mX
    JSR L_CD1223                    ; $CD1216  20 23 12     mX
L_CD1219:
    LDX #$000A                      ; $CD1219  A2 0A 00     mX
    JSR L_CD1223                    ; $CD121C  20 23 12     mX
    TYA                             ; $CD121F  98           mX
    ASL                             ; $CD1220  0A           mX
    BRA L_CD1226                    ; $CD1221  80 03        mX
L_CD1223:
    JSR L_CD1274                    ; $CD1223  20 74 12     mX
L_CD1226:
    PHY                             ; $CD1226  5A           mX
    INC                             ; $CD1227  1A           mX
    LDY #$0001                      ; $CD1228  A0 01 00     mX
    LDX $66                         ; $CD122B  A6 66        mX
    SEC                             ; $CD122D  38           mX
    SBC $7F8800,X                   ; $CD122E  FF 00 88 7F  mX
    BEQ L_CD1243                    ; $CD1232  F0 0F        mX
    BCS L_CD1239                    ; $CD1234  B0 03        mX
    LDY #$FFFF                      ; $CD1236  A0 FF FF     mX
L_CD1239:
    TYA                             ; $CD1239  98           mX
    CLC                             ; $CD123A  18           mX
    ADC $7F8800,X                   ; $CD123B  7F 00 88 7F  mX
    STA $7F8800,X                   ; $CD123F  9F 00 88 7F  mX
L_CD1243:
    INX                             ; $CD1243  E8           mX
    INX                             ; $CD1244  E8           mX
    STX $66                         ; $CD1245  86 66        mX
    PLY                             ; $CD1247  7A           mX
    RTS                             ; $CD1248  60           mX
L_CD1249:
    LDA #$00                        ; $CD1249  A9 00        mX
    JSR L_CD128C                    ; $CD124B  20 8C 12     mX
L_CD124E:
    LDX #$2710                      ; $CD124E  A2 10 27     mX
    JSR L_CD126B                    ; $CD1251  20 6B 12     mX
L_CD1254:
    LDX #$03E8                      ; $CD1254  A2 E8 03     mX
    JSR L_CD126B                    ; $CD1257  20 6B 12     mX
L_CD125A:
    LDX #$0064                      ; $CD125A  A2 64 00     mX
    JSR L_CD126B                    ; $CD125D  20 6B 12     mX
L_CD1260:
    LDX #$000A                      ; $CD1260  A2 0A 00     mX
    JSR L_CD126B                    ; $CD1263  20 6B 12     mX
    TYA                             ; $CD1266  98           mX
    ASL                             ; $CD1267  0A           mX
    JMP L_CD128C                    ; $CD1268  4C 8C 12     mX
L_CD126B:
    JSR L_CD1274                    ; $CD126B  20 74 12     mX
    PHY                             ; $CD126E  5A           mX
    JSR L_CD128C                    ; $CD126F  20 8C 12     mX
    PLY                             ; $CD1272  7A           mX
    RTS                             ; $CD1273  60           mX
L_CD1274:
    REP #$20                        ; $CD1274  C2 20        mX
    STX $5E                         ; $CD1276  86 5E        MX
    TYA                             ; $CD1278  98           MX
    LDY #$FFFF                      ; $CD1279  A0 FF FF     MX
L_CD127C:
    INY                             ; $CD127C  C8           MX
    SEC                             ; $CD127D  38           MX
    SBC $5E                         ; $CD127E  E5 5E        MX
    BCS L_CD127C                    ; $CD1280  B0 FA        MX
    CLC                             ; $CD1282  18           MX
    ADC $5E                         ; $CD1283  65 5E        MX
    PHA                             ; $CD1285  48           MX
    TYA                             ; $CD1286  98           MX
    ASL                             ; $CD1287  0A           MX
    PLY                             ; $CD1288  7A           MX
    SEP #$20                        ; $CD1289  E2 20        MX
    RTS                             ; $CD128B  60           mX
L_CD128C:
    LDX $66                         ; $CD128C  A6 66        mX
    INC                             ; $CD128E  1A           mX
    STA $7F8800,X                   ; $CD128F  9F 00 88 7F  mX
    INX                             ; $CD1293  E8           mX
    LDA #$18                        ; $CD1294  A9 18        mX
    STA $7F8800,X                   ; $CD1296  9F 00 88 7F  mX
    INX                             ; $CD129A  E8           mX
    STX $66                         ; $CD129B  86 66        mX
    RTS                             ; $CD129D  60           mX
L_CD129E:
    REP #$20                        ; $CD129E  C2 20        mX
    LDA $84                         ; $CD12A0  A5 84        MX
    ASL                             ; $CD12A2  0A           MX
    AND #$00FF                      ; $CD12A3  29 FF 00     MX
    TAX                             ; $CD12A6  AA           MX
    LDA $CD12C2,X                   ; $CD12A7  BF C2 12 CD  MX
    TAY                             ; $CD12AB  A8           MX
    SEP #$20                        ; $CD12AC  E2 20        MX
    JMP L_CD12B4                    ; $CD12AE  4C B4 12     mX
L_CD12B1:
    LDY #$BA8F                      ; $CD12B1  A0 8F BA     mX
L_CD12B4:
    STY $7E                         ; $CD12B4  84 7E        mX
    LDA #$32                        ; $CD12B6  A9 32        mX
    STA $77                         ; $CD12B8  85 77        mX
    LDA #$CA                        ; $CD12BA  A9 CA        mX
    LDX #$0194                      ; $CD12BC  A2 94 01     mX
    JMP L_CD1926                    ; $CD12BF  4C 26 19     mX
    db $CA,$5A,$F4,$5A,$BC,$82,$E6,$82,$AF,$AA,$D9,$AA,$F1,$B5,$02,$00 ; $CD12C2
    db $04,$2A,$26,$0A,$BE,$0A,$BE,$0A,$C4,$09,$B8,$0B,$B8,$0B,$C4,$09 ; $CD12D2
L_CD12E2:
    LDA #$13                        ; $CD12E2  A9 13        mX
    STA $212C                       ; $CD12E4  8D 2C 21     mX
    STZ $2133                       ; $CD12E7  9C 33 21     mX
    LDA #$00                        ; $CD12EA  A9 00        mX
    STA $2100                       ; $CD12EC  8D 00 21     mX
    LDA #$A1                        ; $CD12EF  A9 A1        mX
    STA $4200                       ; $CD12F1  8D 00 42     mX
    STA $0B                         ; $CD12F4  85 0B        mX
    CLI                             ; $CD12F6  58           mX
    RTS                             ; $CD12F7  60           mX
L_CD12F8:
    PHP                             ; $CD12F8  08           MX
    PEA $5824                       ; $CD12F9  F4 24 58     MX
    PEA $00CF                       ; $CD12FC  F4 CF 00     MX
    PEA $0000                       ; $CD12FF  F4 00 00     MX
    PEA $007F                       ; $CD1302  F4 7F 00     MX
    JSL L_C30000                    ; $CD1305  22 00 00 C3  MX
    PLA                             ; $CD1309  68           MX
    PLA                             ; $CD130A  68           MX
    PLA                             ; $CD130B  68           MX
    PLA                             ; $CD130C  68           MX
    PLP                             ; $CD130D  28           MX
    PHP                             ; $CD130E  08           MX
    PEA $6FBE                       ; $CD130F  F4 BE 6F     MX
    PEA $00CF                       ; $CD1312  F4 CF 00     MX
    PEA $2000                       ; $CD1315  F4 00 20     MX
    PEA $007F                       ; $CD1318  F4 7F 00     MX
    JSL L_C30000                    ; $CD131B  22 00 00 C3  MX
    PLA                             ; $CD131F  68           MX
    PLA                             ; $CD1320  68           MX
    PLA                             ; $CD1321  68           MX
    PLA                             ; $CD1322  68           MX
    PLP                             ; $CD1323  28           MX
    SEP #$20                        ; $CD1324  E2 20        MX
    REP #$10                        ; $CD1326  C2 10        mX
    LDA #$80                        ; $CD1328  A9 80        mX
    STA $2100                       ; $CD132A  8D 00 21     mX
    LDA #$01                        ; $CD132D  A9 01        mX
    STA $4200                       ; $CD132F  8D 00 42     mX
    STA $0B                         ; $CD1332  85 0B        mX
    LDA #$00                        ; $CD1334  A9 00        mX
    STA $420C                       ; $CD1336  8D 0C 42     mX
    STA $210D                       ; $CD1339  8D 0D 21     mX
    STA $210D                       ; $CD133C  8D 0D 21     mX
    STA $210F                       ; $CD133F  8D 0F 21     mX
    STA $210F                       ; $CD1342  8D 0F 21     mX
    DEC                             ; $CD1345  3A           mX
    STA $210E                       ; $CD1346  8D 0E 21     mX
    STA $210E                       ; $CD1349  8D 0E 21     mX
    STA $2110                       ; $CD134C  8D 10 21     mX
    STA $2110                       ; $CD134F  8D 10 21     mX
    LDX #$0004                      ; $CD1352  A2 04 00     mX
    STX $04                         ; $CD1355  86 04        mX
    LDX #$00CD                      ; $CD1357  A2 CD 00     mX
    STX $06                         ; $CD135A  86 06        mX
    LDA #$03                        ; $CD135C  A9 03        mX
    STA $2105                       ; $CD135E  8D 05 21     mX
    LDA #$70                        ; $CD1361  A9 70        mX
    STA $2107                       ; $CD1363  8D 07 21     mX
    LDA #$78                        ; $CD1366  A9 78        mX
    STA $2108                       ; $CD1368  8D 08 21     mX
    LDA #$62                        ; $CD136B  A9 62        mX
    STA $210B                       ; $CD136D  8D 0B 21     mX
    LDA #$00                        ; $CD1370  A9 00        mX
    STA $2101                       ; $CD1372  8D 01 21     mX
    STA $2101                       ; $CD1375  8D 01 21     mX
    LDA #$80                        ; $CD1378  A9 80        mX
    STA $2115                       ; $CD137A  8D 15 21     mX
    LDX #$0200                      ; $CD137D  A2 00 02     mX
L_CD1380:
    LDA $CD969F,X                   ; $CD1380  BF 9F 96 CD  mX
    STA $7F935F,X                   ; $CD1384  9F 5F 93 7F  mX
    DEX                             ; $CD1388  CA           mX
    BNE L_CD1380                    ; $CD1389  D0 F5        mX
    LDA #$30                        ; $CD138B  A9 30        mX
    STA $80                         ; $CD138D  85 80        mX
    JSR L_CD242B                    ; $CD138F  20 2B 24     mX
    LDA #$CF                        ; $CD1392  A9 CF        mX
    LDX #$4824                      ; $CD1394  A2 24 48     mX
    STX $4302                       ; $CD1397  8E 02 43     mX
    STA $4304                       ; $CD139A  8D 04 43     mX
    LDX #$6000                      ; $CD139D  A2 00 60     mX
    STX $2116                       ; $CD13A0  8E 16 21     mX
    LDX #$1000                      ; $CD13A3  A2 00 10     mX
    STX $4305                       ; $CD13A6  8E 05 43     mX
    LDX #$1801                      ; $CD13A9  A2 01 18     mX
    STX $4300                       ; $CD13AC  8E 00 43     mX
    LDA #$01                        ; $CD13AF  A9 01        mX
    STA $420B                       ; $CD13B1  8D 0B 42     mX
    LDA #$7F                        ; $CD13B4  A9 7F        mX
    LDX #$0000                      ; $CD13B6  A2 00 00     mX
    STX $4302                       ; $CD13B9  8E 02 43     mX
    STA $4304                       ; $CD13BC  8D 04 43     mX
    LDX #$0000                      ; $CD13BF  A2 00 00     mX
    STX $2116                       ; $CD13C2  8E 16 21     mX
    LDX #$4000                      ; $CD13C5  A2 00 40     mX
    STX $4305                       ; $CD13C8  8E 05 43     mX
    LDX #$1801                      ; $CD13CB  A2 01 18     mX
    STX $4300                       ; $CD13CE  8E 00 43     mX
    LDA #$01                        ; $CD13D1  A9 01        mX
    STA $420B                       ; $CD13D3  8D 0B 42     mX
    JSR L_CD23F1                    ; $CD13D6  20 F1 23     mX
    JMP L_CD1562                    ; $CD13D9  4C 62 15     mX
L_CD13DC:
    LDY #$6810                      ; $CD13DC  A0 10 68     mX
    STY $75                         ; $CD13DF  84 75        mX
    STY $78                         ; $CD13E1  84 78        mX
    LDA #$07                        ; $CD13E3  A9 07        mX
    STA $7A                         ; $CD13E5  85 7A        mX
    LDA #$B8                        ; $CD13E7  A9 B8        mX
    STA $7C                         ; $CD13E9  85 7C        mX
    LDA #$31                        ; $CD13EB  A9 31        mX
    STA $77                         ; $CD13ED  85 77        mX
    LDX #$0178                      ; $CD13EF  A2 78 01     mX
    JSR L_CD1887                    ; $CD13F2  20 87 18     mX
L_CD13F5:
    LDY #$7E3C                      ; $CD13F5  A0 3C 7E     mX
    STY $75                         ; $CD13F8  84 75        mX
    STY $78                         ; $CD13FA  84 78        mX
    LDA #$08                        ; $CD13FC  A9 08        mX
    STA $7A                         ; $CD13FE  85 7A        mX
    LDA #$B0                        ; $CD1400  A9 B0        mX
    STA $7C                         ; $CD1402  85 7C        mX
    LDA #$33                        ; $CD1404  A9 33        mX
    STA $77                         ; $CD1406  85 77        mX
    LDX #$0140                      ; $CD1408  A2 40 01     mX
    JSR L_CD1887                    ; $CD140B  20 87 18     mX
    LDY #$863C                      ; $CD140E  A0 3C 86     mX
    STY $75                         ; $CD1411  84 75        mX
    LDY #$0104                      ; $CD1413  A0 04 01     mX
    STY $7A                         ; $CD1416  84 7A        mX
    LDA #$C0                        ; $CD1418  A9 C0        mX
    STA $7C                         ; $CD141A  85 7C        mX
    LDX #$0024                      ; $CD141C  A2 24 00     mX
    JSR L_CD18DC                    ; $CD141F  20 DC 18     mX
    LDA #$CA                        ; $CD1422  A9 CA        mX
    STA $7C                         ; $CD1424  85 7C        mX
    LDA $0220                       ; $CD1426  AD 20 02     mX  p1_character
    INC                             ; $CD1429  1A           mX
    INC                             ; $CD142A  1A           mX
    ASL                             ; $CD142B  0A           mX
    ORA #$31                        ; $CD142C  09 31        mX
    STA $77                         ; $CD142E  85 77        mX
    LDY #$2010                      ; $CD1430  A0 10 20     mX
    STY $75                         ; $CD1433  84 75        mX
    LDY #$0303                      ; $CD1435  A0 03 03     mX
    STY $7A                         ; $CD1438  84 7A        mX
    LDX #$0000                      ; $CD143A  A2 00 00     mX
    JSR L_CD18DC                    ; $CD143D  20 DC 18     mX
    RTS                             ; $CD1440  60           mX
L_CD1441:
    LDA #$30                        ; $CD1441  A9 30        mX
    STA $77                         ; $CD1443  85 77        mX
    LDY #$AE5C                      ; $CD1445  A0 5C AE     mX
    LDX $84                         ; $CD1448  A6 84        mX
    LDA $CD12D0,X                   ; $CD144A  BF D0 12 CD  mX
    LDX #$003C                      ; $CD144E  A2 3C 00     mX
    JMP L_CD1926                    ; $CD1451  4C 26 19     mX
L_CD1454:
    LDA #$30                        ; $CD1454  A9 30        mX
    STA $77                         ; $CD1456  85 77        mX
    LDY #$A609                      ; $CD1458  A0 09 A6     mX
    LDX $84                         ; $CD145B  A6 84        mX
    LDA $CD12D0,X                   ; $CD145D  BF D0 12 CD  mX
    CLC                             ; $CD1461  18           mX
    ADC #$40                        ; $CD1462  69 40        mX
    LDX #$0040                      ; $CD1464  A2 40 00     mX
    JMP L_CD1926                    ; $CD1467  4C 26 19     mX
L_CD146A:
    LDA $025E                       ; $CD146A  AD 5E 02     mX  p2_character
    INC                             ; $CD146D  1A           mX
    INC                             ; $CD146E  1A           mX
    ASL                             ; $CD146F  0A           mX
    ORA #$31                        ; $CD1470  09 31        mX
    STA $77                         ; $CD1472  85 77        mX
    LDA #$2A                        ; $CD1474  A9 2A        mX
    STA $7C                         ; $CD1476  85 7C        mX
    LDY #$20C0                      ; $CD1478  A0 C0 20     mX
    STY $75                         ; $CD147B  84 75        mX
    LDY #$0303                      ; $CD147D  A0 03 03     mX
    STY $7A                         ; $CD1480  84 7A        mX
    LDX #$010C                      ; $CD1482  A2 0C 01     mX
    JSR L_CD18DC                    ; $CD1485  20 DC 18     mX
    LDY #$74A8                      ; $CD1488  A0 A8 74     mX
    STY $75                         ; $CD148B  84 75        mX
    STY $78                         ; $CD148D  84 78        mX
    LDA #$07                        ; $CD148F  A9 07        mX
    STA $7A                         ; $CD1491  85 7A        mX
    LDA #$18                        ; $CD1493  A9 18        mX
    STA $7C                         ; $CD1495  85 7C        mX
    LDA #$35                        ; $CD1497  A9 35        mX
    STA $77                         ; $CD1499  85 77        mX
    LDX #$0198                      ; $CD149B  A2 98 01     mX
    JMP L_CD1887                    ; $CD149E  4C 87 18     mX
L_CD14A1:
    LDX #$0086                      ; $CD14A1  A2 86 00     mX
    LDA $00,X                       ; $CD14A4  B5 00        mX
    PHX                             ; $CD14A6  DA           mX
    LDY #$08A0                      ; $CD14A7  A0 A0 08     mX
    LDX #$0050                      ; $CD14AA  A2 50 00     mX
    JSR L_CD18B3                    ; $CD14AD  20 B3 18     mX
    PLX                             ; $CD14B0  FA           mX
    INX                             ; $CD14B1  E8           mX
    LDA $00,X                       ; $CD14B2  B5 00        mX
    LDY #$08D0                      ; $CD14B4  A0 D0 08     mX
    PHX                             ; $CD14B7  DA           mX
    LDX #$0060                      ; $CD14B8  A2 60 00     mX
    JSR L_CD18B3                    ; $CD14BB  20 B3 18     mX
    PLX                             ; $CD14BE  FA           mX
    INX                             ; $CD14BF  E8           mX
    LDA $00,X                       ; $CD14C0  B5 00        mX
    LDY #$5CAA                      ; $CD14C2  A0 AA 5C     mX
    PHX                             ; $CD14C5  DA           mX
    LDX #$0070                      ; $CD14C6  A2 70 00     mX
    JSR L_CD18B3                    ; $CD14C9  20 B3 18     mX
    PLX                             ; $CD14CC  FA           mX
    INX                             ; $CD14CD  E8           mX
    LDA $00,X                       ; $CD14CE  B5 00        mX
    LDY #$5CD4                      ; $CD14D0  A0 D4 5C     mX
    PHX                             ; $CD14D3  DA           mX
    LDX #$0080                      ; $CD14D4  A2 80 00     mX
    JSR L_CD18B3                    ; $CD14D7  20 B3 18     mX
    PLX                             ; $CD14DA  FA           mX
    INX                             ; $CD14DB  E8           mX
    LDA $00,X                       ; $CD14DC  B5 00        mX
    LDY #$849C                      ; $CD14DE  A0 9C 84     mX
    PHX                             ; $CD14E1  DA           mX
    LDX #$0090                      ; $CD14E2  A2 90 00     mX
    JSR L_CD18B3                    ; $CD14E5  20 B3 18     mX
    PLX                             ; $CD14E8  FA           mX
    INX                             ; $CD14E9  E8           mX
    LDA $00,X                       ; $CD14EA  B5 00        mX
    LDY #$84C6                      ; $CD14EC  A0 C6 84     mX
    PHX                             ; $CD14EF  DA           mX
    LDX #$00A0                      ; $CD14F0  A2 A0 00     mX
    JSR L_CD18B3                    ; $CD14F3  20 B3 18     mX
    PLX                             ; $CD14F6  FA           mX
    INX                             ; $CD14F7  E8           mX
    LDA $00,X                       ; $CD14F8  B5 00        mX
    LDY #$AC90                      ; $CD14FA  A0 90 AC     mX
    PHX                             ; $CD14FD  DA           mX
    LDX #$00B0                      ; $CD14FE  A2 B0 00     mX
    JSR L_CD18B3                    ; $CD1501  20 B3 18     mX
    PLX                             ; $CD1504  FA           mX
    INX                             ; $CD1505  E8           mX
    LDA $00,X                       ; $CD1506  B5 00        mX
    LDY #$ACBA                      ; $CD1508  A0 BA AC     mX
    LDX #$00C0                      ; $CD150B  A2 C0 00     mX
    JMP L_CD18B3                    ; $CD150E  4C B3 18     mX
L_CD1511:
    LDX #$15E8                      ; $CD1511  A2 E8 15     mX
    STX $68                         ; $CD1514  86 68        mX
    LDX #$00CD                      ; $CD1516  A2 CD 00     mX
    STX $6A                         ; $CD1519  86 6A        mX
    BRA L_CD1527                    ; $CD151B  80 0A        mX
L_CD151D:
    LDX #$15D7                      ; $CD151D  A2 D7 15     mX
    STX $68                         ; $CD1520  86 68        mX
    LDX #$00CD                      ; $CD1522  A2 CD 00     mX
    STX $6A                         ; $CD1525  86 6A        mX
L_CD1527:
    LDY #$3ABA                      ; $CD1527  A0 BA 3A     mX
    LDX #$0198                      ; $CD152A  A2 98 01     mX
    JSR L_CD258A                    ; $CD152D  20 8A 25     mX
    RTS                             ; $CD1530  60           mX
L_CD1531:
    LDX #$15D7                      ; $CD1531  A2 D7 15     mX
    STX $68                         ; $CD1534  86 68        mX
    LDX #$00CD                      ; $CD1536  A2 CD 00     mX
    STX $6A                         ; $CD1539  86 6A        mX
    LDY #$3ABA                      ; $CD153B  A0 BA 3A     mX
    LDX #$0198                      ; $CD153E  A2 98 01     mX
    JSR L_CD258A                    ; $CD1541  20 8A 25     mX
    RTS                             ; $CD1544  60           mX
L_CD1545:
    LDA #$1B                        ; $CD1545  A9 1B        mX
    STA $2117                       ; $CD1547  8D 17 21     mX
    LDA #$00                        ; $CD154A  A9 00        mX
    STA $2116                       ; $CD154C  8D 16 21     mX
    LDA $84                         ; $CD154F  A5 84        mX
    BRA L_CD156F                    ; $CD1551  80 1C        mX
L_CD1553:
    LDA #$11                        ; $CD1553  A9 11        mX
    STA $2117                       ; $CD1555  8D 17 21     mX
    LDA #$00                        ; $CD1558  A9 00        mX
    STA $2116                       ; $CD155A  8D 16 21     mX
    LDA $025E                       ; $CD155D  AD 5E 02     mX  p2_character
    BRA L_CD156F                    ; $CD1560  80 0D        mX
L_CD1562:
    LDA #$1B                        ; $CD1562  A9 1B        mX
    STA $2117                       ; $CD1564  8D 17 21     mX
    LDA #$00                        ; $CD1567  A9 00        mX
    STA $2116                       ; $CD1569  8D 16 21     mX
    LDA $0220                       ; $CD156C  AD 20 02     mX  p1_character
L_CD156F:
    ASL                             ; $CD156F  0A           mX
    STA $5D                         ; $CD1570  85 5D        mX
    ASL                             ; $CD1572  0A           mX
    ASL                             ; $CD1573  0A           mX
    CLC                             ; $CD1574  18           mX
    ADC $5D                         ; $CD1575  65 5D        mX
    STA $5D                         ; $CD1577  85 5D        mX
    STZ $5C                         ; $CD1579  64 5C        mX
    LDX $5C                         ; $CD157B  A6 5C        mX
    LDY #$0500                      ; $CD157D  A0 00 05     mX
L_CD1580:
    LDA $CFC3A8,X                   ; $CD1580  BF A8 C3 CF  mX
    STA $2118                       ; $CD1584  8D 18 21     mX
    INX                             ; $CD1587  E8           mX
    LDA $CFC3A8,X                   ; $CD1588  BF A8 C3 CF  mX
    STA $2119                       ; $CD158C  8D 19 21     mX
    INX                             ; $CD158F  E8           mX
    DEY                             ; $CD1590  88           mX
    BNE L_CD1580                    ; $CD1591  D0 ED        mX
    RTS                             ; $CD1593  60           mX
L_CD1594:
    LDA #$32                        ; $CD1594  A9 32        mX
    STA $77                         ; $CD1596  85 77        mX
    LDA $E0                         ; $CD1598  A5 E0        mX
    BEQ L_CD159D                    ; $CD159A  F0 01        mX
    DEC                             ; $CD159C  3A           mX
L_CD159D:
    STA $5C                         ; $CD159D  85 5C        mX
    STZ $5D                         ; $CD159F  64 5D        mX
    LDY $5C                         ; $CD15A1  A4 5C        mX
    LDX #$000A                      ; $CD15A3  A2 0A 00     mX
    REP #$20                        ; $CD15A6  C2 20        mX
    STX $5E                         ; $CD15A8  86 5E        MX
    TYA                             ; $CD15AA  98           MX
    LDY #$FFFF                      ; $CD15AB  A0 FF FF     MX
L_CD15AE:
    INY                             ; $CD15AE  C8           MX
    SEC                             ; $CD15AF  38           MX
    SBC $5E                         ; $CD15B0  E5 5E        MX
    BCS L_CD15AE                    ; $CD15B2  B0 FA        MX
    CLC                             ; $CD15B4  18           MX
    ADC $5E                         ; $CD15B5  65 5E        MX
    PHA                             ; $CD15B7  48           MX
    TYA                             ; $CD15B8  98           MX
    PLY                             ; $CD15B9  7A           MX
    SEP #$20                        ; $CD15BA  E2 20        MX
    PHY                             ; $CD15BC  5A           mX
    CLC                             ; $CD15BD  18           mX
    ADC #$C0                        ; $CD15BE  69 C0        mX
    LDY #$0D09                      ; $CD15C0  A0 09 0D     mX
    LDX #$01F8                      ; $CD15C3  A2 F8 01     mX
    JSR L_CD1926                    ; $CD15C6  20 26 19     mX
    PLY                             ; $CD15C9  7A           mX
    TYA                             ; $CD15CA  98           mX
    CLC                             ; $CD15CB  18           mX
    ADC #$C0                        ; $CD15CC  69 C0        mX
    LDY #$0D11                      ; $CD15CE  A0 11 0D     mX
    LDX #$01FC                      ; $CD15D1  A2 FC 01     mX
    JMP L_CD1926                    ; $CD15D4  4C 26 19     mX
    db $20,$53,$45,$4C,$45,$43,$54,$00,$50,$4C,$41,$59,$45,$52,$5B,$31 ; $CD15D7
    db $FF,$20,$53,$45,$4C,$45,$43,$54,$00,$50,$4C,$41,$59,$45,$52,$5B ; $CD15E7
    db $32,$FF                                                         ; $CD15F7
L_CD15F9:
    LDA $EA                         ; $CD15F9  A5 EA        mX
    BEQ L_CD160F                    ; $CD15FB  F0 12        mX
    AND #$04                        ; $CD15FD  29 04        mX
    BEQ L_CD1606                    ; $CD15FF  F0 05        mX
    JSR L_CD166C                    ; $CD1601  20 6C 16     mX
    BRA L_CD1609                    ; $CD1604  80 03        mX
L_CD1606:
    JSR L_CD1673                    ; $CD1606  20 73 16     mX
L_CD1609:
    LDA $EA                         ; $CD1609  A5 EA        mX
    DEC                             ; $CD160B  3A           mX
    STA $EA                         ; $CD160C  85 EA        mX
    RTS                             ; $CD160E  60           mX
L_CD160F:
    JSR L_CD166C                    ; $CD160F  20 6C 16     mX
    REP #$20                        ; $CD1612  C2 20        mX
    LDA $8E                         ; $CD1614  A5 8E        MX
    CMP #$0009                      ; $CD1616  C9 09 00     MX
    BCC L_CD1649                    ; $CD1619  90 2E        MX
    SEC                             ; $CD161B  38           MX
    SBC #$0009                      ; $CD161C  E9 09 00     MX
    CMP #$0004                      ; $CD161F  C9 04 00     MX
    BCC L_CD163B                    ; $CD1622  90 17        MX
    SEC                             ; $CD1624  38           MX
    SBC #$0004                      ; $CD1625  E9 04 00     MX
    ASL                             ; $CD1628  0A           MX
    TAX                             ; $CD1629  AA           MX
    LDA $D4,X                       ; $CD162A  B5 D4        MX
    AND #$00FF                      ; $CD162C  29 FF 00     MX
    BEQ L_CD1636                    ; $CD162F  F0 05        MX
    LDA #$0019                      ; $CD1631  A9 19 00     MX
    BRA L_CD1649                    ; $CD1634  80 13        MX
L_CD1636:
    LDA #$001E                      ; $CD1636  A9 1E 00     MX
    BRA L_CD1649                    ; $CD1639  80 0E        MX
L_CD163B:
    ASL                             ; $CD163B  0A           MX
    TAX                             ; $CD163C  AA           MX
    LDA $0216,X                     ; $CD163D  BD 16 02     MX
    BNE L_CD1645                    ; $CD1640  D0 03        MX
    LDA #$0016                      ; $CD1642  A9 16 00     MX
L_CD1645:
    CLC                             ; $CD1645  18           MX
    ADC #$0008                      ; $CD1646  69 08 00     MX
L_CD1649:
    ASL                             ; $CD1649  0A           MX
    TAX                             ; $CD164A  AA           MX
    LDA $CD2BDC,X                   ; $CD164B  BF DC 2B CD  MX
    LDX #$2C1A                      ; $CD164F  A2 1A 2C     MX
    STX $68                         ; $CD1652  86 68        MX
    LDX #$00CD                      ; $CD1654  A2 CD 00     MX
    STX $6A                         ; $CD1657  86 6A        MX
    CLC                             ; $CD1659  18           MX
    ADC $68                         ; $CD165A  65 68        MX
    STA $68                         ; $CD165C  85 68        MX
    SEP #$20                        ; $CD165E  E2 20        MX
    JSR L_CD1683                    ; $CD1660  20 83 16     mX
    LDY #$78BA                      ; $CD1663  A0 BA 78     mX
    LDX #$0198                      ; $CD1666  A2 98 01     mX
    JMP L_CD258A                    ; $CD1669  4C 8A 25     mX
L_CD166C:
    LDX #$0058                      ; $CD166C  A2 58 00     mX
    LDA #$30                        ; $CD166F  A9 30        mX
    BRA L_CD1678                    ; $CD1671  80 05        mX
L_CD1673:
    LDX #$0058                      ; $CD1673  A2 58 00     mX
    LDA #$00                        ; $CD1676  A9 00        mX
L_CD1678:
    STA $7F9197,X                   ; $CD1678  9F 97 91 7F  mX
    DEX                             ; $CD167C  CA           mX
    DEX                             ; $CD167D  CA           mX
    DEX                             ; $CD167E  CA           mX
    DEX                             ; $CD167F  CA           mX
    BNE L_CD1678                    ; $CD1680  D0 F6        mX
    RTS                             ; $CD1682  60           mX
L_CD1683:
    LDX #$0058                      ; $CD1683  A2 58 00     mX
    LDA #$E0                        ; $CD1686  A9 E0        mX
L_CD1688:
    STA $7F9195,X                   ; $CD1688  9F 95 91 7F  mX
    DEX                             ; $CD168C  CA           mX
    DEX                             ; $CD168D  CA           mX
    DEX                             ; $CD168E  CA           mX
    DEX                             ; $CD168F  CA           mX
    BNE L_CD1688                    ; $CD1690  D0 F6        mX
    RTS                             ; $CD1692  60           mX
L_CD1693:
    LDA #$30                        ; $CD1693  A9 30        mX
    STA $77                         ; $CD1695  85 77        mX
    LDA #$09                        ; $CD1697  A9 09        mX
    STA $7A                         ; $CD1699  85 7A        mX
    LDX #$0070                      ; $CD169B  A2 70 00     mX
    LDA $0216                       ; $CD169E  AD 16 02     mX
    LDY #$BA8C                      ; $CD16A1  A0 8C BA     mX
    JSR L_CD16C5                    ; $CD16A4  20 C5 16     mX
    INC $7A                         ; $CD16A7  E6 7A        mX
    LDA $0218                       ; $CD16A9  AD 18 02     mX
    LDY #$BAA4                      ; $CD16AC  A0 A4 BA     mX
    JSR L_CD16C5                    ; $CD16AF  20 C5 16     mX
    INC $7A                         ; $CD16B2  E6 7A        mX
    LDA $021A                       ; $CD16B4  AD 1A 02     mX
    LDY #$BABC                      ; $CD16B7  A0 BC BA     mX
    JSR L_CD16C5                    ; $CD16BA  20 C5 16     mX
    INC $7A                         ; $CD16BD  E6 7A        mX
    LDA $021C                       ; $CD16BF  AD 1C 02     mX
    LDY #$BAD4                      ; $CD16C2  A0 D4 BA     mX
L_CD16C5:
    DEC                             ; $CD16C5  3A           mX
    BMI L_CD16E3                    ; $CD16C6  30 1B        mX
    CMP #$08                        ; $CD16C8  C9 08        mX
    BCC L_CD16CF                    ; $CD16CA  90 03        mX
    CLC                             ; $CD16CC  18           mX
    ADC #$08                        ; $CD16CD  69 08        mX
L_CD16CF:
    ASL                             ; $CD16CF  0A           mX
    CLC                             ; $CD16D0  18           mX
    ADC #$40                        ; $CD16D1  69 40        mX
    PHA                             ; $CD16D3  48           mX
    LDA $7A                         ; $CD16D4  A5 7A        mX
    CMP $8E                         ; $CD16D6  C5 8E        mX
    BNE L_CD16DF                    ; $CD16D8  D0 05        mX
    PLA                             ; $CD16DA  68           mX
    CLC                             ; $CD16DB  18           mX
    ADC #$40                        ; $CD16DC  69 40        mX
    PHA                             ; $CD16DE  48           mX
L_CD16DF:
    PLA                             ; $CD16DF  68           mX
    JMP L_CD1926                    ; $CD16E0  4C 26 19     mX
L_CD16E3:
    LDA #$E0                        ; $CD16E3  A9 E0        mX
    STA $7F9001,X                   ; $CD16E5  9F 01 90 7F  mX
    INX                             ; $CD16E9  E8           mX
    INX                             ; $CD16EA  E8           mX
    INX                             ; $CD16EB  E8           mX
    INX                             ; $CD16EC  E8           mX
    RTS                             ; $CD16ED  60           mX
L_CD16EE:
    LDA #$30                        ; $CD16EE  A9 30        mX
    STA $77                         ; $CD16F0  85 77        mX
    LDA #$0D                        ; $CD16F2  A9 0D        mX
    STA $7A                         ; $CD16F4  85 7A        mX
    LDX #$0040                      ; $CD16F6  A2 40 00     mX
    LDA $D4                         ; $CD16F9  A5 D4        mX
    LDY #$A40B                      ; $CD16FB  A0 0B A4     mX
    JSR L_CD16C5                    ; $CD16FE  20 C5 16     mX
    INC $7A                         ; $CD1701  E6 7A        mX
    LDA $D6                         ; $CD1703  A5 D6        mX
    LDY #$A424                      ; $CD1705  A0 24 A4     mX
    JSR L_CD16C5                    ; $CD1708  20 C5 16     mX
    INC $7A                         ; $CD170B  E6 7A        mX
    LDA $D8                         ; $CD170D  A5 D8        mX
    LDY #$BC0B                      ; $CD170F  A0 0B BC     mX
    JSR L_CD16C5                    ; $CD1712  20 C5 16     mX
    INC $7A                         ; $CD1715  E6 7A        mX
    LDA $DA                         ; $CD1717  A5 DA        mX
    LDY #$BC23                      ; $CD1719  A0 23 BC     mX
    JSR L_CD16C5                    ; $CD171C  20 C5 16     mX
    REP #$20                        ; $CD171F  C2 20        mX
    LDA $DC                         ; $CD1721  A5 DC        MX
    ASL                             ; $CD1723  0A           MX
    TAX                             ; $CD1724  AA           MX
    SEP #$20                        ; $CD1725  E2 20        MX
    LDA $D4,X                       ; $CD1727  B5 D4        mX
    DEC                             ; $CD1729  3A           mX
    BMI L_CD173D                    ; $CD172A  30 11        mX
    CMP #$08                        ; $CD172C  C9 08        mX
    BCC L_CD1733                    ; $CD172E  90 03        mX
    CLC                             ; $CD1730  18           mX
    ADC #$08                        ; $CD1731  69 08        mX
L_CD1733:
    ASL                             ; $CD1733  0A           mX
    LDY #$AE5C                      ; $CD1734  A0 5C AE     mX
    LDX #$003C                      ; $CD1737  A2 3C 00     mX
    JSR L_CD1926                    ; $CD173A  20 26 19     mX
L_CD173D:
    RTS                             ; $CD173D  60           mX
L_CD173E:
    LDA $8E                         ; $CD173E  A5 8E        mX
    PHA                             ; $CD1740  48           mX
    JSR L_CD22CE                    ; $CD1741  20 CE 22     mX
    LDX #$0000                      ; $CD1744  A2 00 00     mX
    LSR                             ; $CD1747  4A           mX
    BCS L_CD1756                    ; $CD1748  B0 0C        mX
    INX                             ; $CD174A  E8           mX
    LSR                             ; $CD174B  4A           mX
    BCS L_CD1756                    ; $CD174C  B0 08        mX
    INX                             ; $CD174E  E8           mX
    LSR                             ; $CD174F  4A           mX
    BCS L_CD1756                    ; $CD1750  B0 04        mX
    INX                             ; $CD1752  E8           mX
    LSR                             ; $CD1753  4A           mX
    BCC L_CD1791                    ; $CD1754  90 3B        mX
L_CD1756:
    STX $5C                         ; $CD1756  86 5C        mX
L_CD1758:
    LDA $8E                         ; $CD1758  A5 8E        mX
    ASL                             ; $CD175A  0A           mX
    ASL                             ; $CD175B  0A           mX
    CLC                             ; $CD175C  18           mX
    ADC $5C                         ; $CD175D  65 5C        mX
    STA $5C                         ; $CD175F  85 5C        mX
    LDA $AA                         ; $CD1761  A5 AA        mX
    BNE L_CD176B                    ; $CD1763  D0 06        mX
    LDA #$44                        ; $CD1765  A9 44        mX
    ADC $5C                         ; $CD1767  65 5C        mX
    STA $5C                         ; $CD1769  85 5C        mX
L_CD176B:
    LDX $5C                         ; $CD176B  A6 5C        mX
    LDA $CD09F0,X                   ; $CD176D  BF F0 09 CD  mX
    BEQ L_CD1791                    ; $CD1771  F0 1E        mX
    CLC                             ; $CD1773  18           mX
    ADC $8E                         ; $CD1774  65 8E        mX
    STA $8E                         ; $CD1776  85 8E        mX
    CMP #$04                        ; $CD1778  C9 04        mX
    BNE L_CD178C                    ; $CD177A  D0 10        mX
    LDA $AA                         ; $CD177C  A5 AA        mX
    BNE L_CD178C                    ; $CD177E  D0 0C        mX
    LDA $5C                         ; $CD1780  A5 5C        mX
    AND #$03                        ; $CD1782  29 03        mX
    BNE L_CD1788                    ; $CD1784  D0 02        mX
    LDA #$01                        ; $CD1786  A9 01        mX
L_CD1788:
    STA $5C                         ; $CD1788  85 5C        mX
    BRA L_CD1758                    ; $CD178A  80 CC        mX
L_CD178C:
    LDA #$08                        ; $CD178C  A9 08        mX
    JSR L_CD24D6                    ; $CD178E  20 D6 24     mX
L_CD1791:
    PLA                             ; $CD1791  68           mX
    CMP $8E                         ; $CD1792  C5 8E        mX
    BEQ L_CD179A                    ; $CD1794  F0 04        mX
    JSL L_C2003F                    ; $CD1796  22 3F 00 C2  mX
L_CD179A:
    RTS                             ; $CD179A  60           mX
L_CD179B:
    LDX #$E0E0                      ; $CD179B  A2 E0 E0     mX
    STX $75                         ; $CD179E  86 75        mX
    LDA $8E                         ; $CD17A0  A5 8E        mX
    SEC                             ; $CD17A2  38           mX
    SBC #$09                        ; $CD17A3  E9 09        mX
    BMI L_CD17BA                    ; $CD17A5  30 13        mX
    ASL                             ; $CD17A7  0A           mX
    STA $5C                         ; $CD17A8  85 5C        mX
    STZ $5D                         ; $CD17AA  64 5D        mX
    LDX $5C                         ; $CD17AC  A6 5C        mX
    LDA $CD1822,X                   ; $CD17AE  BF 22 18 CD  mX
    STA $75                         ; $CD17B2  85 75        mX
    LDA $CD1823,X                   ; $CD17B4  BF 23 18 CD  mX
    STA $76                         ; $CD17B8  85 76        mX
L_CD17BA:
    LDX #$0080                      ; $CD17BA  A2 80 00     mX
    LDA #$31                        ; $CD17BD  A9 31        mX
    STA $77                         ; $CD17BF  85 77        mX
    LDY #$0202                      ; $CD17C1  A0 02 02     mX
    STY $7A                         ; $CD17C4  84 7A        mX
    LDA #$68                        ; $CD17C6  A9 68        mX
    STA $7C                         ; $CD17C8  85 7C        mX
    JSR L_CD18DC                    ; $CD17CA  20 DC 18     mX
    LDY #$8B9F                      ; $CD17CD  A0 9F 8B     mX
    LDA $8E                         ; $CD17D0  A5 8E        mX
    CMP #$06                        ; $CD17D2  C9 06        mX
    BEQ L_CD17E7                    ; $CD17D4  F0 11        mX
    LDY #$92C4                      ; $CD17D6  A0 C4 92     mX
    CMP #$07                        ; $CD17D9  C9 07        mX
    BEQ L_CD17E7                    ; $CD17DB  F0 0A        mX
    LDY #$B6F2                      ; $CD17DD  A0 F2 B6     mX
    CMP #$08                        ; $CD17E0  C9 08        mX
    BEQ L_CD17E7                    ; $CD17E2  F0 03        mX
    LDY #$E0E0                      ; $CD17E4  A0 E0 E0     mX
L_CD17E7:
    JSR L_CD12B4                    ; $CD17E7  20 B4 12     mX
    LDA #$30                        ; $CD17EA  A9 30        mX
    STA $77                         ; $CD17EC  85 77        mX
    LDX #$009C                      ; $CD17EE  A2 9C 00     mX
    LDA #$00                        ; $CD17F1  A9 00        mX
    LDY #$0895                      ; $CD17F3  A0 95 08     mX
    JSR L_CD1832                    ; $CD17F6  20 32 18     mX
    LDA #$01                        ; $CD17F9  A9 01        mX
    LDY #$2097                      ; $CD17FB  A0 97 20     mX
    JSR L_CD1832                    ; $CD17FE  20 32 18     mX
    LDA #$02                        ; $CD1801  A9 02        mX
    LDY #$3C94                      ; $CD1803  A0 94 3C     mX
    JSR L_CD1832                    ; $CD1806  20 32 18     mX
    LDA #$03                        ; $CD1809  A9 03        mX
    LDY #$5590                      ; $CD180B  A0 90 55     mX
    JSR L_CD1832                    ; $CD180E  20 32 18     mX
    LDA #$04                        ; $CD1811  A9 04        mX
    LDY #$708A                      ; $CD1813  A0 8A 70     mX
    JSR L_CD1832                    ; $CD1816  20 32 18     mX
    LDA #$05                        ; $CD1819  A9 05        mX
    LDY #$9D86                      ; $CD181B  A0 86 9D     mX
    JSR L_CD1832                    ; $CD181E  20 32 18     mX
    RTS                             ; $CD1821  60           mX
    db $85,$B3,$9D,$B3,$B5,$B3,$CD,$B3,$05,$9B,$1D,$9B,$05,$B3,$1D,$B3 ; $CD1822
L_CD1832:
    CMP $8E                         ; $CD1832  C5 8E        mX
    BNE L_CD184E                    ; $CD1834  D0 18        mX
    JSR L_CD22BE                    ; $CD1836  20 BE 22     mX
    BEQ L_CD1849                    ; $CD1839  F0 0E        mX
    REP #$20                        ; $CD183B  C2 20        mX
    TYA                             ; $CD183D  98           MX
    SEC                             ; $CD183E  38           MX
    SBC #$0002                      ; $CD183F  E9 02 00     MX
    CLC                             ; $CD1842  18           MX
    ADC #$0200                      ; $CD1843  69 00 02     MX
    TAY                             ; $CD1846  A8           MX
    SEP #$20                        ; $CD1847  E2 20        MX
L_CD1849:
    LDA #$2C                        ; $CD1849  A9 2C        mX
    JMP L_CD1926                    ; $CD184B  4C 26 19     mX
L_CD184E:
    LDA #$2E                        ; $CD184E  A9 2E        mX
    JMP L_CD1926                    ; $CD1850  4C 26 19     mX
L_CD1853:
    LDA $0220                       ; $CD1853  AD 20 02     mX  p1_character
    INC                             ; $CD1856  1A           mX
    LDY #$08D0                      ; $CD1857  A0 D0 08     mX
    LDX #$0050                      ; $CD185A  A2 50 00     mX
    JSR L_CD18B3                    ; $CD185D  20 B3 18     mX
    LDA $025E                       ; $CD1860  AD 5E 02     mX  p2_character
    INC                             ; $CD1863  1A           mX
    LDY #$34C6                      ; $CD1864  A0 C6 34     mX
    LDX #$0060                      ; $CD1867  A2 60 00     mX
    JMP L_CD18B3                    ; $CD186A  4C B3 18     mX
L_CD186D:
    LDA $0220                       ; $CD186D  AD 20 02     mX  p1_character
    INC                             ; $CD1870  1A           mX
    LDY #$08A0                      ; $CD1871  A0 A0 08     mX
    LDX #$0050                      ; $CD1874  A2 50 00     mX
    JSR L_CD18B3                    ; $CD1877  20 B3 18     mX
    LDA $025E                       ; $CD187A  AD 5E 02     mX  p2_character
    INC                             ; $CD187D  1A           mX
    LDY #$08D0                      ; $CD187E  A0 D0 08     mX
    LDX #$0060                      ; $CD1881  A2 60 00     mX
    JMP L_CD18B3                    ; $CD1884  4C B3 18     mX
L_CD1887:
    LDA $7A                         ; $CD1887  A5 7A        mX
L_CD1889:
    PHA                             ; $CD1889  48           mX
    LDA $75                         ; $CD188A  A5 75        mX
    STA $7F9000,X                   ; $CD188C  9F 00 90 7F  mX
    CLC                             ; $CD1890  18           mX
    ADC #$08                        ; $CD1891  69 08        mX
    STA $75                         ; $CD1893  85 75        mX
    INX                             ; $CD1895  E8           mX
    LDA $76                         ; $CD1896  A5 76        mX
    STA $7F9000,X                   ; $CD1898  9F 00 90 7F  mX
    INX                             ; $CD189C  E8           mX
    LDA $7C                         ; $CD189D  A5 7C        mX
    STA $7F9000,X                   ; $CD189F  9F 00 90 7F  mX
    INX                             ; $CD18A3  E8           mX
    INC                             ; $CD18A4  1A           mX
    STA $7C                         ; $CD18A5  85 7C        mX
    LDA $77                         ; $CD18A7  A5 77        mX
    STA $7F9000,X                   ; $CD18A9  9F 00 90 7F  mX
    INX                             ; $CD18AD  E8           mX
    PLA                             ; $CD18AE  68           mX
    DEC                             ; $CD18AF  3A           mX
    BNE L_CD1889                    ; $CD18B0  D0 D7        mX
    RTS                             ; $CD18B2  60           mX
L_CD18B3:
    STY $75                         ; $CD18B3  84 75        mX
    LDY #$0202                      ; $CD18B5  A0 02 02     mX
    STY $7A                         ; $CD18B8  84 7A        mX
    AND #$07                        ; $CD18BA  29 07        mX
    STA $5C                         ; $CD18BC  85 5C        mX
    ASL                             ; $CD18BE  0A           mX
    ASL                             ; $CD18BF  0A           mX
    ASL                             ; $CD18C0  0A           mX
    STA $5D                         ; $CD18C1  85 5D        mX
    AND #$F0                        ; $CD18C3  29 F0        mX
    ASL                             ; $CD18C5  0A           mX
    STA $5E                         ; $CD18C6  85 5E        mX
    LDA $5D                         ; $CD18C8  A5 5D        mX
    AND #$0F                        ; $CD18CA  29 0F        mX
    ORA $5E                         ; $CD18CC  05 5E        mX
    STA $7C                         ; $CD18CE  85 7C        mX
    LDA $5C                         ; $CD18D0  A5 5C        mX
    BNE L_CD18D6                    ; $CD18D2  D0 02        mX
    LDA #$04                        ; $CD18D4  A9 04        mX
L_CD18D6:
    INC                             ; $CD18D6  1A           mX
    ASL                             ; $CD18D7  0A           mX
    ORA #$31                        ; $CD18D8  09 31        mX
    STA $77                         ; $CD18DA  85 77        mX
L_CD18DC:
    LDA $75                         ; $CD18DC  A5 75        mX
    STA $78                         ; $CD18DE  85 78        mX
L_CD18E0:
    LDA $7A                         ; $CD18E0  A5 7A        mX
L_CD18E2:
    PHA                             ; $CD18E2  48           mX
    LDA $75                         ; $CD18E3  A5 75        mX
    STA $7F9000,X                   ; $CD18E5  9F 00 90 7F  mX
    CLC                             ; $CD18E9  18           mX
    ADC #$10                        ; $CD18EA  69 10        mX
    STA $75                         ; $CD18EC  85 75        mX
    INX                             ; $CD18EE  E8           mX
    LDA $76                         ; $CD18EF  A5 76        mX
    STA $7F9000,X                   ; $CD18F1  9F 00 90 7F  mX
    INX                             ; $CD18F5  E8           mX
    LDA $7C                         ; $CD18F6  A5 7C        mX
    STA $7F9000,X                   ; $CD18F8  9F 00 90 7F  mX
    INX                             ; $CD18FC  E8           mX
    INC                             ; $CD18FD  1A           mX
    INC                             ; $CD18FE  1A           mX
    BIT #$10                        ; $CD18FF  89 10        mX
    BEQ L_CD1906                    ; $CD1901  F0 03        mX
    CLC                             ; $CD1903  18           mX
    ADC #$10                        ; $CD1904  69 10        mX
L_CD1906:
    STA $7C                         ; $CD1906  85 7C        mX
    LDA $77                         ; $CD1908  A5 77        mX
    STA $7F9000,X                   ; $CD190A  9F 00 90 7F  mX
    INX                             ; $CD190E  E8           mX
    PLA                             ; $CD190F  68           mX
    DEC                             ; $CD1910  3A           mX
    BNE L_CD18E2                    ; $CD1911  D0 CF        mX
    LDA $78                         ; $CD1913  A5 78        mX
    STA $75                         ; $CD1915  85 75        mX
    LDA $76                         ; $CD1917  A5 76        mX
    CLC                             ; $CD1919  18           mX
    ADC #$10                        ; $CD191A  69 10        mX
    STA $76                         ; $CD191C  85 76        mX
    LDA $7B                         ; $CD191E  A5 7B        mX
    DEC                             ; $CD1920  3A           mX
    STA $7B                         ; $CD1921  85 7B        mX
    BNE L_CD18E0                    ; $CD1923  D0 BB        mX
    RTS                             ; $CD1925  60           mX
L_CD1926:
    PHA                             ; $CD1926  48           mX
    STY $75                         ; $CD1927  84 75        mX
    LDA $75                         ; $CD1929  A5 75        mX
    STA $7F9000,X                   ; $CD192B  9F 00 90 7F  mX
    INX                             ; $CD192F  E8           mX
    LDA $76                         ; $CD1930  A5 76        mX
    STA $7F9000,X                   ; $CD1932  9F 00 90 7F  mX
    INX                             ; $CD1936  E8           mX
    PLA                             ; $CD1937  68           mX
    STA $7F9000,X                   ; $CD1938  9F 00 90 7F  mX
    INX                             ; $CD193C  E8           mX
    LDA $77                         ; $CD193D  A5 77        mX
    STA $7F9000,X                   ; $CD193F  9F 00 90 7F  mX
    INX                             ; $CD1943  E8           mX
    RTS                             ; $CD1944  60           mX
L_CD1945:
    PHX                             ; $CD1945  DA           MX
    PHY                             ; $CD1946  5A           MX
    JSR L_CD22DA                    ; $CD1947  20 DA 22     MX
    PLY                             ; $CD194A  7A           mX
    PLX                             ; $CD194B  FA           mX
    STZ $0222                       ; $CD194C  9C 22 02     mX
    STZ $AA                         ; $CD194F  64 AA        mX
    STX $0212                       ; $CD1951  8E 12 02     mX  two_players
    TXA                             ; $CD1954  8A           mX
    EOR #$01                        ; $CD1955  49 01        mX
    STA $0260                       ; $CD1957  8D 60 02     mX  p2_is_cpu
    TYA                             ; $CD195A  98           mX
    BIT #$01                        ; $CD195B  89 01        mX
    BEQ L_CD1964                    ; $CD195D  F0 05        mX
    JSR L_CD1BB3                    ; $CD195F  20 B3 1B     mX
    BRA L_CD1981                    ; $CD1962  80 1D        mX
L_CD1964:
    JSR L_CD0A78                    ; $CD1964  20 78 0A     mX
    LDA $0212                       ; $CD1967  AD 12 02     mX  two_players
    BMI L_CD1981                    ; $CD196A  30 15        mX
    STZ $0222                       ; $CD196C  9C 22 02     mX
    STZ $AA                         ; $CD196F  64 AA        mX
    LDA $0212                       ; $CD1971  AD 12 02     mX  two_players
    EOR #$01                        ; $CD1974  49 01        mX
    STA $0260                       ; $CD1976  8D 60 02     mX  p2_is_cpu
    LDA #$03                        ; $CD1979  A9 03        mX
    STA $0258                       ; $CD197B  8D 58 02     mX  p1_lives
    STA $0296                       ; $CD197E  8D 96 02     mX  p2_lives
L_CD1981:
    RTS                             ; $CD1981  60           mX
L_CD1982:
    REP #$20                        ; $CD1982  C2 20        mX
    JSL L_C20100                    ; $CD1984  22 00 01 C2  MX
    LDA #$0018                      ; $CD1988  A9 18 00     MX
    STA $59                         ; $CD198B  85 59        MX
    SEP #$20                        ; $CD198D  E2 20        MX
    STZ $0212                       ; $CD198F  9C 12 02     mX  two_players
    JSR L_CD19BC                    ; $CD1992  20 BC 19     mX
    LDA $0212                       ; $CD1995  AD 12 02     mX  two_players
    CMP #$02                        ; $CD1998  C9 02        mX
    BNE L_CD19A2                    ; $CD199A  D0 06        mX
    JSR L_CD1A25                    ; $CD199C  20 25 1A     mX
    JMP L_CD1982                    ; $CD199F  4C 82 19     mX
L_CD19A2:
    STZ $79                         ; $CD19A2  64 79        mX
    JSR L_CD1B35                    ; $CD19A4  20 35 1B     mX
    LDA $79                         ; $CD19A7  A5 79        mX
    BNE L_CD1982                    ; $CD19A9  D0 D7        mX
    STZ $0222                       ; $CD19AB  9C 22 02     mX
    STZ $AA                         ; $CD19AE  64 AA        mX
    LDA $0212                       ; $CD19B0  AD 12 02     mX  two_players
    EOR #$01                        ; $CD19B3  49 01        mX
    STA $0260                       ; $CD19B5  8D 60 02     mX  p2_is_cpu
    JSR L_CD05C9                    ; $CD19B8  20 C9 05     mX
    RTS                             ; $CD19BB  60           mX
L_CD19BC:
    JSR L_CD22DA                    ; $CD19BC  20 DA 22     mX
    STZ $0212                       ; $CD19BF  9C 12 02     mX  two_players
    LDX #$26EF                      ; $CD19C2  A2 EF 26     mX
    STX $68                         ; $CD19C5  86 68        mX
    LDX #$00CD                      ; $CD19C7  A2 CD 00     mX
    STX $6A                         ; $CD19CA  86 6A        mX
    LDY #$200C                      ; $CD19CC  A0 0C 20     mX
    LDX #$0008                      ; $CD19CF  A2 08 00     mX
    JSR L_CD24F2                    ; $CD19D2  20 F2 24     mX
    LDX #$2A84                      ; $CD19D5  A2 84 2A     mX
    STX $68                         ; $CD19D8  86 68        mX
    LDX #$00CD                      ; $CD19DA  A2 CD 00     mX
    STX $6A                         ; $CD19DD  86 6A        mX
    LDY #$1814                      ; $CD19DF  A0 14 18     mX
    LDX #$0212                      ; $CD19E2  A2 12 02     mX
    JSR L_CD1A14                    ; $CD19E5  20 14 1A     mX
    LDA #$00                        ; $CD19E8  A9 00        mX
    STA $A2                         ; $CD19EA  85 A2        mX
L_CD19EC:
    LDX $5E                         ; $CD19EC  A6 5E        mX
    JSR L_CD21BA                    ; $CD19EE  20 BA 21     mX
    JSR L_CD23E0                    ; $CD19F1  20 E0 23     mX
    LDA $A2                         ; $CD19F4  A5 A2        mX
    BNE L_CD1A0C                    ; $CD19F6  D0 14        mX
    INC                             ; $CD19F8  1A           mX
    STA $A2                         ; $CD19F9  85 A2        mX
    LDA $59                         ; $CD19FB  A5 59        mX
    BEQ L_CD1A09                    ; $CD19FD  F0 0A        mX
    JSL L_C20000                    ; $CD19FF  22 00 00 C2  mX
    JSL L_C2010F                    ; $CD1A03  22 0F 01 C2  mX
    STZ $59                         ; $CD1A07  64 59        mX
L_CD1A09:
    JSR L_CD24B5                    ; $CD1A09  20 B5 24     mX
L_CD1A0C:
    JSR L_CD22AA                    ; $CD1A0C  20 AA 22     mX
    BEQ L_CD19EC                    ; $CD1A0F  F0 DB        mX
    JMP L_CD24A1                    ; $CD1A11  4C A1 24     mX
L_CD1A14:
    STX $5E                         ; $CD1A14  86 5E        mX
    LDX #$0140                      ; $CD1A16  A2 40 01     mX
    JSR L_CD258A                    ; $CD1A19  20 8A 25     mX
    JSR L_CD23E0                    ; $CD1A1C  20 E0 23     mX
    LDA #$00                        ; $CD1A1F  A9 00        mX
    STA $2100                       ; $CD1A21  8D 00 21     mX
    RTS                             ; $CD1A24  60           mX
L_CD1A25:
    JSL L_C20100                    ; $CD1A25  22 00 01 C2  mX
    STZ $79                         ; $CD1A29  64 79        mX
    JSR L_CD22DA                    ; $CD1A2B  20 DA 22     mX
    LDX #$003F                      ; $CD1A2E  A2 3F 00     mX
L_CD1A31:
    LDA $CD27B7,X                   ; $CD1A31  BF B7 27 CD  mX
    STA $7F957D,X                   ; $CD1A35  9F 7D 95 7F  mX
    DEX                             ; $CD1A39  CA           mX
    BNE L_CD1A31                    ; $CD1A3A  D0 F5        mX
    STZ $94                         ; $CD1A3C  64 94        mX
    STZ $96                         ; $CD1A3E  64 96        mX
    STZ $97                         ; $CD1A40  64 97        mX
    LDX #$957E                      ; $CD1A42  A2 7E 95     mX
    STX $68                         ; $CD1A45  86 68        mX
    LDX #$007F                      ; $CD1A47  A2 7F 00     mX
    STX $6A                         ; $CD1A4A  86 6A        mX
    LDY #$200C                      ; $CD1A4C  A0 0C 20     mX
    LDX #$0020                      ; $CD1A4F  A2 20 00     mX
    JSR L_CD24F2                    ; $CD1A52  20 F2 24     mX
    LDX #$2B66                      ; $CD1A55  A2 66 2B     mX
    STX $68                         ; $CD1A58  86 68        mX
    LDX #$00CD                      ; $CD1A5A  A2 CD 00     mX
    STX $6A                         ; $CD1A5D  86 6A        mX
    LDY #$1824                      ; $CD1A5F  A0 24 18     mX
    LDX #$0094                      ; $CD1A62  A2 94 00     mX
    JSR L_CD1A14                    ; $CD1A65  20 14 1A     mX
    LDA #$00                        ; $CD1A68  A9 00        mX
    STA $A2                         ; $CD1A6A  85 A2        mX
L_CD1A6C:
    LDX #$957E                      ; $CD1A6C  A2 7E 95     mX
    STX $68                         ; $CD1A6F  86 68        mX
    LDX #$007F                      ; $CD1A71  A2 7F 00     mX
    STX $6A                         ; $CD1A74  86 6A        mX
    LDY #$200C                      ; $CD1A76  A0 0C 20     mX
    LDX #$0020                      ; $CD1A79  A2 20 00     mX
    JSR L_CD24F2                    ; $CD1A7C  20 F2 24     mX
    JSR L_CD225D                    ; $CD1A7F  20 5D 22     mX
    JSR L_CD1ADA                    ; $CD1A82  20 DA 1A     mX
    LDX $5E                         ; $CD1A85  A6 5E        mX
    JSR L_CD21BA                    ; $CD1A87  20 BA 21     mX
    JSR L_CD23E0                    ; $CD1A8A  20 E0 23     mX
    LDA $A2                         ; $CD1A8D  A5 A2        mX
    BNE L_CD1A97                    ; $CD1A8F  D0 06        mX
    INC                             ; $CD1A91  1A           mX
    STA $A2                         ; $CD1A92  85 A2        mX
    JSR L_CD24B5                    ; $CD1A94  20 B5 24     mX
L_CD1A97:
    JSR L_CD22B4                    ; $CD1A97  20 B4 22     mX
    BEQ L_CD1A9F                    ; $CD1A9A  F0 03        mX
    JMP L_CD1BA5                    ; $CD1A9C  4C A5 1B     mX
L_CD1A9F:
    JSR L_CD22AA                    ; $CD1A9F  20 AA 22     mX
    BEQ L_CD1A6C                    ; $CD1AA2  F0 C8        mX
    LDA $94                         ; $CD1AA4  A5 94        mX
    CMP #$02                        ; $CD1AA6  C9 02        mX
    BEQ L_CD1AD6                    ; $CD1AA8  F0 2C        mX
    CMP #$01                        ; $CD1AAA  C9 01        mX
    BEQ L_CD1ABF                    ; $CD1AAC  F0 11        mX
    REP #$20                        ; $CD1AAE  C2 20        mX
    LDA $96                         ; $CD1AB0  A5 96        MX
    JSL L_C20000                    ; $CD1AB2  22 00 00 C2  MX
    JSL L_C2010F                    ; $CD1AB6  22 0F 01 C2  MX
    SEP #$20                        ; $CD1ABA  E2 20        MX
    JMP L_CD1ACE                    ; $CD1ABC  4C CE 1A     mX
L_CD1ABF:
    LDA $97                         ; $CD1ABF  A5 97        mX
    AND #$FF                        ; $CD1AC1  29 FF        mX
    REP #$20                        ; $CD1AC3  C2 20        mX
    LDX #$FFFF                      ; $CD1AC5  A2 FF FF     MX
    JSL L_C2024D                    ; $CD1AC8  22 4D 02 C2  MX
    SEP #$20                        ; $CD1ACC  E2 20        MX
L_CD1ACE:
    JSR L_CD22AA                    ; $CD1ACE  20 AA 22     mX
    BNE L_CD1ACE                    ; $CD1AD1  D0 FB        mX
    JMP L_CD1A6C                    ; $CD1AD3  4C 6C 1A     mX
L_CD1AD6:
    JSR L_CD24A1                    ; $CD1AD6  20 A1 24     mX
    RTS                             ; $CD1AD9  60           mX
L_CD1ADA:
    REP #$20                        ; $CD1ADA  C2 20        mX
    LDA $96                         ; $CD1ADC  A5 96        MX
    AND #$00FF                      ; $CD1ADE  29 FF 00     MX
    STA $4204                       ; $CD1AE1  8D 04 42     MX
    SEP #$20                        ; $CD1AE4  E2 20        MX
    LDA #$0A                        ; $CD1AE6  A9 0A        mX
    STA $4206                       ; $CD1AE8  8D 06 42     mX
    NOP                             ; $CD1AEB  EA           mX
    NOP                             ; $CD1AEC  EA           mX
    NOP                             ; $CD1AED  EA           mX
    NOP                             ; $CD1AEE  EA           mX
    NOP                             ; $CD1AEF  EA           mX
    NOP                             ; $CD1AF0  EA           mX
    NOP                             ; $CD1AF1  EA           mX
    NOP                             ; $CD1AF2  EA           mX
    LDA $4214                       ; $CD1AF3  AD 14 42     mX
    CLC                             ; $CD1AF6  18           mX
    ADC #$30                        ; $CD1AF7  69 30        mX
    STA $7F959B                     ; $CD1AF9  8F 9B 95 7F  mX
    LDA $4216                       ; $CD1AFD  AD 16 42     mX
    CLC                             ; $CD1B00  18           mX
    ADC #$30                        ; $CD1B01  69 30        mX
    STA $7F959C                     ; $CD1B03  8F 9C 95 7F  mX
    REP #$20                        ; $CD1B07  C2 20        mX
    LDA $97                         ; $CD1B09  A5 97        MX
    AND #$00FF                      ; $CD1B0B  29 FF 00     MX
    STA $4204                       ; $CD1B0E  8D 04 42     MX
    SEP #$20                        ; $CD1B11  E2 20        MX
    LDA #$0A                        ; $CD1B13  A9 0A        mX
    STA $4206                       ; $CD1B15  8D 06 42     mX
    NOP                             ; $CD1B18  EA           mX
    NOP                             ; $CD1B19  EA           mX
    NOP                             ; $CD1B1A  EA           mX
    NOP                             ; $CD1B1B  EA           mX
    NOP                             ; $CD1B1C  EA           mX
    NOP                             ; $CD1B1D  EA           mX
    NOP                             ; $CD1B1E  EA           mX
    NOP                             ; $CD1B1F  EA           mX
    LDA $4214                       ; $CD1B20  AD 14 42     mX
    CLC                             ; $CD1B23  18           mX
    ADC #$30                        ; $CD1B24  69 30        mX
    STA $7F95AD                     ; $CD1B26  8F AD 95 7F  mX
    LDA $4216                       ; $CD1B2A  AD 16 42     mX
    CLC                             ; $CD1B2D  18           mX
    ADC #$30                        ; $CD1B2E  69 30        mX
    STA $7F95AE                     ; $CD1B30  8F AE 95 7F  mX
    RTS                             ; $CD1B34  60           mX
L_CD1B35:
    STZ $79                         ; $CD1B35  64 79        mX
    STZ $0214                       ; $CD1B37  9C 14 02     mX  level_counter
    STZ $0215                       ; $CD1B3A  9C 15 02     mX
    JSR L_CD22DA                    ; $CD1B3D  20 DA 22     mX
    STZ $0208                       ; $CD1B40  9C 08 02     mX
    LDX #$2735                      ; $CD1B43  A2 35 27     mX
    STX $68                         ; $CD1B46  86 68        mX
    LDX #$00CD                      ; $CD1B48  A2 CD 00     mX
    STX $6A                         ; $CD1B4B  86 6A        mX
    LDY #$200C                      ; $CD1B4D  A0 0C 20     mX
    LDX #$0020                      ; $CD1B50  A2 20 00     mX
    JSR L_CD24F2                    ; $CD1B53  20 F2 24     mX
    LDX #$2AD4                      ; $CD1B56  A2 D4 2A     mX
    STX $68                         ; $CD1B59  86 68        mX
    LDX #$00CD                      ; $CD1B5B  A2 CD 00     mX
    STX $6A                         ; $CD1B5E  86 6A        mX
    LDY #$1824                      ; $CD1B60  A0 24 18     mX
    LDX #$0208                      ; $CD1B63  A2 08 02     mX
    JSR L_CD1A14                    ; $CD1B66  20 14 1A     mX
    LDA #$00                        ; $CD1B69  A9 00        mX
    STA $A2                         ; $CD1B6B  85 A2        mX
L_CD1B6D:
    LDX $5E                         ; $CD1B6D  A6 5E        mX
    JSR L_CD215A                    ; $CD1B6F  20 5A 21     mX
    JSR L_CD23E0                    ; $CD1B72  20 E0 23     mX
    LDA $A2                         ; $CD1B75  A5 A2        mX
    BNE L_CD1B7F                    ; $CD1B77  D0 06        mX
    INC                             ; $CD1B79  1A           mX
    STA $A2                         ; $CD1B7A  85 A2        mX
    JSR L_CD24B5                    ; $CD1B7C  20 B5 24     mX
L_CD1B7F:
    JSR L_CD22B4                    ; $CD1B7F  20 B4 22     mX
    BNE L_CD1BA5                    ; $CD1B82  D0 21        mX
    JSR L_CD22AA                    ; $CD1B84  20 AA 22     mX
    BEQ L_CD1B6D                    ; $CD1B87  F0 E4        mX
    JSR L_CD24A1                    ; $CD1B89  20 A1 24     mX
    LDA $0208                       ; $CD1B8C  AD 08 02     mX
    JSR L_CD1BB3                    ; $CD1B8F  20 B3 1B     mX
    LDA $0212                       ; $CD1B92  AD 12 02     mX  two_players
    BMI L_CD1B35                    ; $CD1B95  30 9E        mX
    JSR L_CD0A78                    ; $CD1B97  20 78 0A     mX
    STZ $79                         ; $CD1B9A  64 79        mX
    LDA #$03                        ; $CD1B9C  A9 03        mX
    STA $0258                       ; $CD1B9E  8D 58 02     mX  p1_lives
    STA $0296                       ; $CD1BA1  8D 96 02     mX  p2_lives
    RTS                             ; $CD1BA4  60           mX
L_CD1BA5:
    JSL L_C2002A                    ; $CD1BA5  22 2A 00 C2  mX
L_CD1BA9:
    LDA #$FF                        ; $CD1BA9  A9 FF        mX
    STA $0212                       ; $CD1BAB  8D 12 02     mX  two_players
    INC $79                         ; $CD1BAE  E6 79        mX
    JMP L_CD24A1                    ; $CD1BB0  4C A1 24     mX
L_CD1BB3:
    JSR L_CD0263                    ; $CD1BB3  20 63 02     mX
    LDA #$FF                        ; $CD1BB6  A9 FF        mX
    STA $7F956C                     ; $CD1BB8  8F 6C 95 7F  mX
    LDA #$3A                        ; $CD1BBC  A9 3A        mX
    LDX #$000C                      ; $CD1BBE  A2 0C 00     mX
    CMP $7F955F,X                   ; $CD1BC1  DF 5F 95 7F  mX
    BEQ L_CD1BD5                    ; $CD1BC5  F0 0E        mX
    LDX #$000C                      ; $CD1BC7  A2 0C 00     mX
    STX $020A                       ; $CD1BCA  8E 0A 02     mX  password_length
    LDA #$23                        ; $CD1BCD  A9 23        mX
    STA $020E                       ; $CD1BCF  8D 0E 02     mX  password_cursor
    JMP L_CD1BE2                    ; $CD1BD2  4C E2 1B     mX
L_CD1BD5:
    STA $7F955F,X                   ; $CD1BD5  9F 5F 95 7F  mX
    DEX                             ; $CD1BD9  CA           mX
    BNE L_CD1BD5                    ; $CD1BDA  D0 F9        mX
    STX $020A                       ; $CD1BDC  8E 0A 02     mX  password_length
    STZ $020E                       ; $CD1BDF  9C 0E 02     mX  password_cursor
L_CD1BE2:
    JSR L_CD22DA                    ; $CD1BE2  20 DA 22     mX
    LDX #$285A                      ; $CD1BE5  A2 5A 28     mX
    STX $68                         ; $CD1BE8  86 68        mX
    LDX #$00CD                      ; $CD1BEA  A2 CD 00     mX
    STX $6A                         ; $CD1BED  86 6A        mX
    LDY #$1008                      ; $CD1BEF  A0 08 10     mX
    LDX #$0050                      ; $CD1BF2  A2 50 00     mX
    JSR L_CD24F2                    ; $CD1BF5  20 F2 24     mX
    LDX #$2B1C                      ; $CD1BF8  A2 1C 2B     mX
    STX $68                         ; $CD1BFB  86 68        mX
    LDX #$00CD                      ; $CD1BFD  A2 CD 00     mX
    STX $6A                         ; $CD1C00  86 6A        mX
    LDY #$0718                      ; $CD1C02  A0 18 07     mX
    LDX #$0140                      ; $CD1C05  A2 40 01     mX
    JSR L_CD258A                    ; $CD1C08  20 8A 25     mX
    JSR L_CD1E42                    ; $CD1C0B  20 42 1E     mX
    JSR L_CD23E0                    ; $CD1C0E  20 E0 23     mX
    LDA #$00                        ; $CD1C11  A9 00        mX
    STA $2100                       ; $CD1C13  8D 00 21     mX
    JSR L_CD24B5                    ; $CD1C16  20 B5 24     mX
L_CD1C19:
    JSR L_CD22AA                    ; $CD1C19  20 AA 22     mX
    BNE L_CD1C19                    ; $CD1C1C  D0 FB        mX
L_CD1C1E:
    STZ $EC                         ; $CD1C1E  64 EC        mX
password_entry_loop:
    JSR L_CD1E42                    ; $CD1C20  20 42 1E     mX
    JSR L_CD23E0                    ; $CD1C23  20 E0 23     mX
    JSR L_CD24D4                    ; $CD1C26  20 D4 24     mX
    JSR L_CD22B4                    ; $CD1C29  20 B4 22     mX
    BEQ L_CD1C31                    ; $CD1C2C  F0 03        mX
    JMP L_CD1BA5                    ; $CD1C2E  4C A5 1B     mX
L_CD1C31:
    JSR L_CD22AA                    ; $CD1C31  20 AA 22     mX
    BEQ L_CD1C1E                    ; $CD1C34  F0 E8        mX
    LDA $EC                         ; $CD1C36  A5 EC        mX
    BNE password_entry_loop         ; $CD1C38  D0 E6        mX
    LDA #$01                        ; $CD1C3A  A9 01        mX
    STA $EC                         ; $CD1C3C  85 EC        mX
    LDX $020E                       ; $CD1C3E  AE 0E 02     mX  password_cursor
    LDA $CD28E2,X                   ; $CD1C41  BF E2 28 CD  mX
    CMP #$20                        ; $CD1C45  C9 20        mX
    BNE L_CD1C4C                    ; $CD1C47  D0 03        mX
    JMP password_entry_loop         ; $CD1C49  4C 20 1C     mX
L_CD1C4C:
    PHA                             ; $CD1C4C  48           mX
    JSL L_C2002A                    ; $CD1C4D  22 2A 00 C2  mX
    PLA                             ; $CD1C51  68           mX
    CMP #$3D                        ; $CD1C52  C9 3D        mX
    BEQ L_CD1C88                    ; $CD1C54  F0 32        mX
    CMP #$3C                        ; $CD1C56  C9 3C        mX
    BNE L_CD1C5D                    ; $CD1C58  D0 03        mX
    JMP L_CD1CC6                    ; $CD1C5A  4C C6 1C     mX
L_CD1C5D:
    CMP #$3F                        ; $CD1C5D  C9 3F        mX
    BNE L_CD1C64                    ; $CD1C5F  D0 03        mX
    JMP L_CD1CE1                    ; $CD1C61  4C E1 1C     mX
L_CD1C64:
    STA $5C                         ; $CD1C64  85 5C        mX
    LDA $020A                       ; $CD1C66  AD 0A 02     mX  password_length
    CMP #$0C                        ; $CD1C69  C9 0C        mX
    BEQ password_entry_loop         ; $CD1C6B  F0 B3        mX
    INC                             ; $CD1C6D  1A           mX
    STA $020A                       ; $CD1C6E  8D 0A 02     mX  password_length
    CMP #$0C                        ; $CD1C71  C9 0C        mX
    BNE L_CD1C7A                    ; $CD1C73  D0 05        mX
    LDA #$23                        ; $CD1C75  A9 23        mX
    STA $020E                       ; $CD1C77  8D 0E 02     mX  password_cursor
L_CD1C7A:
    LDA $5C                         ; $CD1C7A  A5 5C        mX
    LDX $020A                       ; $CD1C7C  AE 0A 02     mX  password_length
    STA $7F955F,X                   ; $CD1C7F  9F 5F 95 7F  mX
    JSR L_CD24D4                    ; $CD1C83  20 D4 24     mX
    BRA password_entry_loop         ; $CD1C86  80 98        mX
L_CD1C88:
    LDA $020A                       ; $CD1C88  AD 0A 02     mX  password_length
    BNE L_CD1C90                    ; $CD1C8B  D0 03        mX
    JMP L_CD1BA9                    ; $CD1C8D  4C A9 1B     mX
L_CD1C90:
    JSR L_CD24A1                    ; $CD1C90  20 A1 24     mX
    JSR password_try_decode         ; $CD1C93  20 B2 1C     mX
    BNE L_CD1C9B                    ; $CD1C96  D0 03        mX
    JMP L_CD1CC5                    ; $CD1C98  4C C5 1C     mX
L_CD1C9B:
    LDA #$3A                        ; $CD1C9B  A9 3A        mX
    LDX #$000C                      ; $CD1C9D  A2 0C 00     mX
L_CD1CA0:
    STA $7F955F,X                   ; $CD1CA0  9F 5F 95 7F  mX
    DEX                             ; $CD1CA4  CA           mX
    BNE L_CD1CA0                    ; $CD1CA5  D0 F9        mX
    JSR show_invalid_password       ; $CD1CA7  20 F8 1C     mX
    LDA #$FF                        ; $CD1CAA  A9 FF        mX
    STA $0212                       ; $CD1CAC  8D 12 02     mX  two_players
    JMP L_CD1CC5                    ; $CD1CAF  4C C5 1C     mX
password_try_decode:
    LDA $020A                       ; $CD1CB2  AD 0A 02     mX  password_length
    CMP #$0C                        ; $CD1CB5  C9 0C        mX
    BNE L_CD1CC5                    ; $CD1CB7  D0 0C        mX
    JSR password_text_to_values     ; $CD1CB9  20 4E 31     mX
    LDA $74                         ; $CD1CBC  A5 74        mX  password_invalid
    BNE L_CD1CC5                    ; $CD1CBE  D0 05        mX
    JSR password_decode             ; $CD1CC0  20 39 30     mX
    LDA $74                         ; $CD1CC3  A5 74        mX  password_invalid
L_CD1CC5:
    RTS                             ; $CD1CC5  60           mX
L_CD1CC6:
    LDA $020A                       ; $CD1CC6  AD 0A 02     mX  password_length
    BNE L_CD1CCE                    ; $CD1CC9  D0 03        mX
    JMP password_entry_loop         ; $CD1CCB  4C 20 1C     mX
L_CD1CCE:
    DEC                             ; $CD1CCE  3A           mX
    STA $020A                       ; $CD1CCF  8D 0A 02     mX  password_length
    LDX $020A                       ; $CD1CD2  AE 0A 02     mX  password_length
    LDA #$3A                        ; $CD1CD5  A9 3A        mX
    STA $7F9560,X                   ; $CD1CD7  9F 60 95 7F  mX  password_text
    JSR L_CD24D4                    ; $CD1CDB  20 D4 24     mX
    JMP password_entry_loop         ; $CD1CDE  4C 20 1C     mX
L_CD1CE1:
    LDA #$3A                        ; $CD1CE1  A9 3A        mX
    LDX #$000C                      ; $CD1CE3  A2 0C 00     mX
L_CD1CE6:
    STA $7F955F,X                   ; $CD1CE6  9F 5F 95 7F  mX
    DEX                             ; $CD1CEA  CA           mX
    BNE L_CD1CE6                    ; $CD1CEB  D0 F9        mX
    LDA #$00                        ; $CD1CED  A9 00        mX
    STA $020A                       ; $CD1CEF  8D 0A 02     mX  password_length
    JSR L_CD24D4                    ; $CD1CF2  20 D4 24     mX
    JMP password_entry_loop         ; $CD1CF5  4C 20 1C     mX
show_invalid_password:
    JSR L_CD22DA                    ; $CD1CF8  20 DA 22     mX
    LDX #$26D2                      ; $CD1CFB  A2 D2 26     mX
    STX $68                         ; $CD1CFE  86 68        mX
    LDX #$00CD                      ; $CD1D00  A2 CD 00     mX
    STX $6A                         ; $CD1D03  86 6A        mX
    LDY #$6010                      ; $CD1D05  A0 10 60     mX
    LDX #$0000                      ; $CD1D08  A2 00 00     mX
    JSR L_CD24F2                    ; $CD1D0B  20 F2 24     mX
    LDX #$26E4                      ; $CD1D0E  A2 E4 26     mX
    STX $68                         ; $CD1D11  86 68        mX
    LDX #$00CD                      ; $CD1D13  A2 CD 00     mX
    STX $6A                         ; $CD1D16  86 6A        mX
    LDY #$C858                      ; $CD1D18  A0 58 C8     mX
    LDX #$0140                      ; $CD1D1B  A2 40 01     mX
    JSR L_CD258A                    ; $CD1D1E  20 8A 25     mX
    JSR L_CD23E0                    ; $CD1D21  20 E0 23     mX
    LDA #$00                        ; $CD1D24  A9 00        mX
    STA $2100                       ; $CD1D26  8D 00 21     mX
    JSR L_CD24B5                    ; $CD1D29  20 B5 24     mX
L_CD1D2C:
    LDA #$01                        ; $CD1D2C  A9 01        mX
    STA $55                         ; $CD1D2E  85 55        mX
    LDA $4A                         ; $CD1D30  A5 4A        mX
L_CD1D32:
    CMP $4A                         ; $CD1D32  C5 4A        mX
    BEQ L_CD1D32                    ; $CD1D34  F0 FC        mX
    LDA $4A                         ; $CD1D36  A5 4A        mX
    ASL                             ; $CD1D38  0A           mX
    AND #$20                        ; $CD1D39  29 20        mX
    LDX #$0143                      ; $CD1D3B  A2 43 01     mX
    LDY #$0009                      ; $CD1D3E  A0 09 00     mX
L_CD1D41:
    STA $7F9000,X                   ; $CD1D41  9F 00 90 7F  mX
    INX                             ; $CD1D45  E8           mX
    INX                             ; $CD1D46  E8           mX
    INX                             ; $CD1D47  E8           mX
    INX                             ; $CD1D48  E8           mX
    DEY                             ; $CD1D49  88           mX
    BNE L_CD1D41                    ; $CD1D4A  D0 F5        mX
    JSR L_CD22AA                    ; $CD1D4C  20 AA 22     mX
    BEQ L_CD1D2C                    ; $CD1D4F  F0 DB        mX
    JSL L_C2002A                    ; $CD1D51  22 2A 00 C2  mX
    JSR L_CD1DDC                    ; $CD1D55  20 DC 1D     mX
    JMP L_CD24A1                    ; $CD1D58  4C A1 24     mX
L_CD1D5B:
    LDX #$26E4                      ; $CD1D5B  A2 E4 26     mX
    STX $68                         ; $CD1D5E  86 68        mX
    LDX #$00CD                      ; $CD1D60  A2 CD 00     mX
    STX $6A                         ; $CD1D63  86 6A        mX
    LDY #$C858                      ; $CD1D65  A0 58 C8     mX
    LDX #$0140                      ; $CD1D68  A2 40 01     mX
    JSR L_CD258A                    ; $CD1D6B  20 8A 25     mX
    JSR L_CD23E0                    ; $CD1D6E  20 E0 23     mX
    LDA #$00                        ; $CD1D71  A9 00        mX
    STA $2100                       ; $CD1D73  8D 00 21     mX
    JSR L_CD24B5                    ; $CD1D76  20 B5 24     mX
L_CD1D79:
    LDA #$01                        ; $CD1D79  A9 01        mX
    STA $55                         ; $CD1D7B  85 55        mX
    LDA $4A                         ; $CD1D7D  A5 4A        mX
L_CD1D7F:
    CMP $4A                         ; $CD1D7F  C5 4A        mX
    BEQ L_CD1D7F                    ; $CD1D81  F0 FC        mX
    LDA $4A                         ; $CD1D83  A5 4A        mX
    ASL                             ; $CD1D85  0A           mX
    AND #$20                        ; $CD1D86  29 20        mX
    LDX #$0143                      ; $CD1D88  A2 43 01     mX
    LDY #$0009                      ; $CD1D8B  A0 09 00     mX
L_CD1D8E:
    STA $7F9000,X                   ; $CD1D8E  9F 00 90 7F  mX
    INX                             ; $CD1D92  E8           mX
    INX                             ; $CD1D93  E8           mX
    INX                             ; $CD1D94  E8           mX
    INX                             ; $CD1D95  E8           mX
    DEY                             ; $CD1D96  88           mX
    BNE L_CD1D8E                    ; $CD1D97  D0 F5        mX
    JSR L_CD22AA                    ; $CD1D99  20 AA 22     mX
    BEQ L_CD1D79                    ; $CD1D9C  F0 DB        mX
    JSL L_C2002A                    ; $CD1D9E  22 2A 00 C2  mX
    JSR L_CD1DDC                    ; $CD1DA2  20 DC 1D     mX
    LDX #$0002                      ; $CD1DA5  A2 02 00     mX
L_CD1DA8:
    LDA $4A                         ; $CD1DA8  A5 4A        mX
L_CD1DAA:
    CMP $4A                         ; $CD1DAA  C5 4A        mX
    BEQ L_CD1DAA                    ; $CD1DAC  F0 FC        mX
    DEX                             ; $CD1DAE  CA           mX
    BNE L_CD1DA8                    ; $CD1DAF  D0 F7        mX
    JSL L_C20100                    ; $CD1DB1  22 00 01 C2  mX
    LDX #$001E                      ; $CD1DB5  A2 1E 00     mX
L_CD1DB8:
    LDA $4A                         ; $CD1DB8  A5 4A        mX
L_CD1DBA:
    CMP $4A                         ; $CD1DBA  C5 4A        mX
    BEQ L_CD1DBA                    ; $CD1DBC  F0 FC        mX
    DEX                             ; $CD1DBE  CA           mX
    BNE L_CD1DB8                    ; $CD1DBF  D0 F7        mX
    LDA $0214                       ; $CD1DC1  AD 14 02     mX  level_counter
    LSR                             ; $CD1DC4  4A           mX
    AND #$06                        ; $CD1DC5  29 06        mX
    TAX                             ; $CD1DC7  AA           mX
    LDA $CD1DD4,X                   ; $CD1DC8  BF D4 1D CD  mX
    JSL L_C2010F                    ; $CD1DCC  22 0F 01 C2  mX
    JSR L_CD24A1                    ; $CD1DD0  20 A1 24     mX
    RTS                             ; $CD1DD3  60           mX
    db $22,$00,$23,$00,$24,$00,$25,$00                                 ; $CD1DD4
L_CD1DDC:
    LDX #$0143                      ; $CD1DDC  A2 43 01     mX
    LDA #$00                        ; $CD1DDF  A9 00        mX
    LDY #$0009                      ; $CD1DE1  A0 09 00     mX
L_CD1DE4:
    STA $7F9000,X                   ; $CD1DE4  9F 00 90 7F  mX
    INX                             ; $CD1DE8  E8           mX
    INX                             ; $CD1DE9  E8           mX
    INX                             ; $CD1DEA  E8           mX
    INX                             ; $CD1DEB  E8           mX
    DEY                             ; $CD1DEC  88           mX
    BNE L_CD1DE4                    ; $CD1DED  D0 F5        mX
    LDA #$01                        ; $CD1DEF  A9 01        mX
    STA $55                         ; $CD1DF1  85 55        mX
    LDA $4A                         ; $CD1DF3  A5 4A        mX
L_CD1DF5:
    CMP $4A                         ; $CD1DF5  C5 4A        mX
    BEQ L_CD1DF5                    ; $CD1DF7  F0 FC        mX
    RTS                             ; $CD1DF9  60           mX
    db $00,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06,$00,$07 ; $CD1DFA
    db $00,$08,$01,$00,$01,$01,$01,$02,$01,$03,$01,$04,$01,$05,$01,$06 ; $CD1E0A
    db $01,$07,$01,$08,$02,$00,$02,$01,$02,$02,$02,$03,$02,$04,$02,$05 ; $CD1E1A
    db $02,$06,$02,$07,$02,$08,$03,$00,$03,$01,$03,$02,$03,$03,$03,$04 ; $CD1E2A
    db $03,$05,$03,$06,$03,$07,$03,$08                                 ; $CD1E3A
L_CD1E42:
    LDX #$9560                      ; $CD1E42  A2 60 95     mX
    STX $68                         ; $CD1E45  86 68        mX
    LDX #$007F                      ; $CD1E47  A2 7F 00     mX
    STX $6A                         ; $CD1E4A  86 6A        mX
    LDY #$B030                      ; $CD1E4C  A0 30 B0     mX
    LDX #$0010                      ; $CD1E4F  A2 10 00     mX
    JSR L_CD24F2                    ; $CD1E52  20 F2 24     mX
L_CD1E55:
    JSR read_pads                   ; $CD1E55  20 4C 01     mX
    LDA $4D                         ; $CD1E58  A5 4D        mX
    BEQ L_CD1E66                    ; $CD1E5A  F0 0A        mX
    CMP $F0                         ; $CD1E5C  C5 F0        mX
    BNE L_CD1E66                    ; $CD1E5E  D0 06        mX
    DEC $F2                         ; $CD1E60  C6 F2        mX
    BEQ L_CD1E66                    ; $CD1E62  F0 02        mX
    BNE L_CD1E55                    ; $CD1E64  D0 EF        mX
L_CD1E66:
    STA $F0                         ; $CD1E66  85 F0        mX
    STA $5C                         ; $CD1E68  85 5C        mX
    LDA #$0A                        ; $CD1E6A  A9 0A        mX
    STA $F2                         ; $CD1E6C  85 F2        mX
    LDA #$00                        ; $CD1E6E  A9 00        mX
    XBA                             ; $CD1E70  EB           mX
    LDA $020E                       ; $CD1E71  AD 0E 02     mX  password_cursor
    PHA                             ; $CD1E74  48           mX
    ASL                             ; $CD1E75  0A           mX
    TAX                             ; $CD1E76  AA           mX
    LDA $CD1DFB,X                   ; $CD1E77  BF FB 1D CD  mX
    LSR $5C                         ; $CD1E7B  46 5C        mX
    BCC L_CD1E86                    ; $CD1E7D  90 07        mX
    INC                             ; $CD1E7F  1A           mX
    CMP #$09                        ; $CD1E80  C9 09        mX
    BCC L_CD1E86                    ; $CD1E82  90 02        mX
    LDA #$00                        ; $CD1E84  A9 00        mX
L_CD1E86:
    LSR $5C                         ; $CD1E86  46 5C        mX
    BCC L_CD1E8F                    ; $CD1E88  90 05        mX
    DEC                             ; $CD1E8A  3A           mX
    BPL L_CD1E8F                    ; $CD1E8B  10 02        mX
    LDA #$08                        ; $CD1E8D  A9 08        mX
L_CD1E8F:
    STA $020E                       ; $CD1E8F  8D 0E 02     mX  password_cursor
    LDA $CD1DFA,X                   ; $CD1E92  BF FA 1D CD  mX
    LSR $5C                         ; $CD1E96  46 5C        mX
    BCC L_CD1EA1                    ; $CD1E98  90 07        mX
    INC                             ; $CD1E9A  1A           mX
    CMP #$04                        ; $CD1E9B  C9 04        mX
    BCC L_CD1EA1                    ; $CD1E9D  90 02        mX
    LDA #$00                        ; $CD1E9F  A9 00        mX
L_CD1EA1:
    LSR $5C                         ; $CD1EA1  46 5C        mX
    BCC L_CD1EAA                    ; $CD1EA3  90 05        mX
    DEC                             ; $CD1EA5  3A           mX
    BPL L_CD1EAA                    ; $CD1EA6  10 02        mX
    LDA #$03                        ; $CD1EA8  A9 03        mX
L_CD1EAA:
    STA $5C                         ; $CD1EAA  85 5C        mX
    ASL                             ; $CD1EAC  0A           mX
    ASL                             ; $CD1EAD  0A           mX
    ASL                             ; $CD1EAE  0A           mX
    CLC                             ; $CD1EAF  18           mX
    ADC $5C                         ; $CD1EB0  65 5C        mX
    ADC $020E                       ; $CD1EB2  6D 0E 02     mX  password_cursor
    STA $020E                       ; $CD1EB5  8D 0E 02     mX  password_cursor
    PLA                             ; $CD1EB8  68           mX
    CMP $020E                       ; $CD1EB9  CD 0E 02     mX  password_cursor
    BEQ L_CD1EC2                    ; $CD1EBC  F0 04        mX
    JSL L_C2003F                    ; $CD1EBE  22 3F 00 C2  mX
L_CD1EC2:
    LDA $020E                       ; $CD1EC2  AD 0E 02     mX  password_cursor
    ASL                             ; $CD1EC5  0A           mX
    REP #$20                        ; $CD1EC6  C2 20        mX
    AND #$00FF                      ; $CD1EC8  29 FF 00     MX
    LDX #$0000                      ; $CD1ECB  A2 00 00     MX
    TAX                             ; $CD1ECE  AA           MX
    LDA $CD2620,X                   ; $CD1ECF  BF 20 26 CD  MX
    TAY                             ; $CD1ED3  A8           MX
    SEP #$20                        ; $CD1ED4  E2 20        MX
    LDX #$2668                      ; $CD1ED6  A2 68 26     mX
    STX $68                         ; $CD1ED9  86 68        mX
    LDX #$00CD                      ; $CD1EDB  A2 CD 00     mX
    STX $6A                         ; $CD1EDE  86 6A        mX
    LDX #$0000                      ; $CD1EE0  A2 00 00     mX
    JMP L_CD24F2                    ; $CD1EE3  4C F2 24     mX
L_CD1EE6:
    REP #$20                        ; $CD1EE6  C2 20        mX
    AND #$00FF                      ; $CD1EE8  29 FF 00     MX
    SEP #$20                        ; $CD1EEB  E2 20        MX
L_CD1EED:
    JSR L_CD1F2B                    ; $CD1EED  20 2B 1F     MX
    LDA $0214                       ; $CD1EF0  AD 14 02     mX  level_counter
    BEQ L_CD1F27                    ; $CD1EF3  F0 32        mX
    AND #$03                        ; $CD1EF5  29 03        mX
    BNE L_CD1F27                    ; $CD1EF7  D0 2E        mX
    LDA $7F9560                     ; $CD1EF9  AF 60 95 7F  mX  password_text
    CMP #$3A                        ; $CD1EFD  C9 3A        mX
    BEQ L_CD1F27                    ; $CD1EFF  F0 26        mX
    LDX #$9560                      ; $CD1F01  A2 60 95     mX
    STX $68                         ; $CD1F04  86 68        mX
    LDX #$007F                      ; $CD1F06  A2 7F 00     mX
    STX $6A                         ; $CD1F09  86 6A        mX
    LDY #$B430                      ; $CD1F0B  A0 30 B4     mX
    LDX #$0000                      ; $CD1F0E  A2 00 00     mX
    JSR L_CD24F2                    ; $CD1F11  20 F2 24     mX
    LDX #$28D9                      ; $CD1F14  A2 D9 28     mX
    STX $68                         ; $CD1F17  86 68        mX
    LDX #$00CD                      ; $CD1F19  A2 CD 00     mX
    STX $6A                         ; $CD1F1C  86 6A        mX
    LDY #$A860                      ; $CD1F1E  A0 60 A8     mX
    LDX #$0168                      ; $CD1F21  A2 68 01     mX
    JSR L_CD258A                    ; $CD1F24  20 8A 25     mX
L_CD1F27:
    JSR L_CD1D5B                    ; $CD1F27  20 5B 1D     mX
    RTS                             ; $CD1F2A  60           mX
L_CD1F2B:
    JSR L_CD22DA                    ; $CD1F2B  20 DA 22     MX
    LDX #$0046                      ; $CD1F2E  A2 46 00     mX
L_CD1F31:
    LDA $CD2771,X                   ; $CD1F31  BF 71 27 CD  mX
    STA $7F957D,X                   ; $CD1F35  9F 7D 95 7F  mX
    DEX                             ; $CD1F39  CA           mX
    BNE L_CD1F31                    ; $CD1F3A  D0 F5        mX
    LDA $0214                       ; $CD1F3C  AD 14 02     mX  level_counter
    PHA                             ; $CD1F3F  48           mX
    AND #$03                        ; $CD1F40  29 03        mX
    CLC                             ; $CD1F42  18           mX
    ADC #$31                        ; $CD1F43  69 31        mX
    STA $7F95AE                     ; $CD1F45  8F AE 95 7F  mX
    PLA                             ; $CD1F49  68           mX
    PHA                             ; $CD1F4A  48           mX
    LSR                             ; $CD1F4B  4A           mX
    LSR                             ; $CD1F4C  4A           mX
    AND #$03                        ; $CD1F4D  29 03        mX
    STA $5C                         ; $CD1F4F  85 5C        mX
    CLC                             ; $CD1F51  18           mX
    ADC #$31                        ; $CD1F52  69 31        mX
    STA $7F9589                     ; $CD1F54  8F 89 95 7F  mX
    LDX #$293C                      ; $CD1F58  A2 3C 29     mX
    STX $6C                         ; $CD1F5B  86 6C        mX
    LDX #$00CD                      ; $CD1F5D  A2 CD 00     mX
    STX $6E                         ; $CD1F60  86 6E        mX
    PLA                             ; $CD1F62  68           mX
    PHA                             ; $CD1F63  48           mX
    ASL                             ; $CD1F64  0A           mX
    ASL                             ; $CD1F65  0A           mX
    AND #$30                        ; $CD1F66  29 30        mX
    CLC                             ; $CD1F68  18           mX
    ADC $5C                         ; $CD1F69  65 5C        mX
    CLC                             ; $CD1F6B  18           mX
    ADC $5C                         ; $CD1F6C  65 5C        mX
    LDX #$0000                      ; $CD1F6E  A2 00 00     mX
    REP #$20                        ; $CD1F71  C2 20        mX
    AND #$00FF                      ; $CD1F73  29 FF 00     MX
    SEP #$20                        ; $CD1F76  E2 20        MX
    TAY                             ; $CD1F78  A8           mX
L_CD1F79:
    LDA [$6C],Y                     ; $CD1F79  B7 6C        mX
    STA $7F958D,X                   ; $CD1F7B  9F 8D 95 7F  mX
    INX                             ; $CD1F7F  E8           mX
    INY                             ; $CD1F80  C8           mX
    CPX #$0012                      ; $CD1F81  E0 12 00     mX
    BNE L_CD1F79                    ; $CD1F84  D0 F3        mX
    LDX #$2984                      ; $CD1F86  A2 84 29     mX
    STX $6C                         ; $CD1F89  86 6C        mX
    LDX #$00CD                      ; $CD1F8B  A2 CD 00     mX
    STX $6E                         ; $CD1F8E  86 6E        mX
    PLA                             ; $CD1F90  68           mX
    ASL                             ; $CD1F91  0A           mX
    ASL                             ; $CD1F92  0A           mX
    ASL                             ; $CD1F93  0A           mX
    ASL                             ; $CD1F94  0A           mX
    LDX #$0000                      ; $CD1F95  A2 00 00     mX
    REP #$20                        ; $CD1F98  C2 20        mX
    AND #$00FF                      ; $CD1F9A  29 FF 00     MX
    SEP #$20                        ; $CD1F9D  E2 20        MX
    TAY                             ; $CD1F9F  A8           mX
L_CD1FA0:
    LDA [$6C],Y                     ; $CD1FA0  B7 6C        mX
    STA $7F95B2,X                   ; $CD1FA2  9F B2 95 7F  mX
    INX                             ; $CD1FA6  E8           mX
    INY                             ; $CD1FA7  C8           mX
    CPX #$0010                      ; $CD1FA8  E0 10 00     mX
    BNE L_CD1FA0                    ; $CD1FAB  D0 F3        mX
    LDX #$957E                      ; $CD1FAD  A2 7E 95     mX
    STX $68                         ; $CD1FB0  86 68        mX
    LDX #$007F                      ; $CD1FB2  A2 7F 00     mX
    STX $6A                         ; $CD1FB5  86 6A        mX
    LDY #$2008                      ; $CD1FB7  A0 08 20     mX
    LDX #$0030                      ; $CD1FBA  A2 30 00     mX
    JMP L_CD24F2                    ; $CD1FBD  4C F2 24     mX
L_CD1FC0:
    SEP #$20                        ; $CD1FC0  E2 20        MX
    JSR L_CD22DA                    ; $CD1FC2  20 DA 22     mX
    LDX #$0063                      ; $CD1FC5  A2 63 00     mX
L_CD1FC8:
    LDA $CD27F6,X                   ; $CD1FC8  BF F6 27 CD  mX
    STA $7F957D,X                   ; $CD1FCC  9F 7D 95 7F  mX
    DEX                             ; $CD1FD0  CA           mX
    BNE L_CD1FC8                    ; $CD1FD1  D0 F5        mX
    LDX #$2906                      ; $CD1FD3  A2 06 29     mX
    STX $6C                         ; $CD1FD6  86 6C        mX
    LDX #$00CD                      ; $CD1FD8  A2 CD 00     mX
    STX $6E                         ; $CD1FDB  86 6E        mX
    LDA #$2A                        ; $CD1FDD  A9 2A        mX
    STA $7F9592                     ; $CD1FDF  8F 92 95 7F  mX
    LDA #$5F                        ; $CD1FE3  A9 5F        mX
    STA $7F95BB                     ; $CD1FE5  8F BB 95 7F  mX
    LDA $0226                       ; $CD1FE9  AD 26 02     mX
    CMP $0264                       ; $CD1FEC  CD 64 02     mX
    BMI L_CD2025                    ; $CD1FEF  30 34        mX
    LDA $0227                       ; $CD1FF1  AD 27 02     mX
    CMP $0265                       ; $CD1FF4  CD 65 02     mX
    BMI L_CD2025                    ; $CD1FF7  30 2C        mX
    LDA $0228                       ; $CD1FF9  AD 28 02     mX
    CMP $0266                       ; $CD1FFC  CD 66 02     mX
    BMI L_CD2025                    ; $CD1FFF  30 24        mX
    LDA $0229                       ; $CD2001  AD 29 02     mX
    CMP $0267                       ; $CD2004  CD 67 02     mX
    BMI L_CD2025                    ; $CD2007  30 1C        mX
    LDA $022A                       ; $CD2009  AD 2A 02     mX
    CMP $0268                       ; $CD200C  CD 68 02     mX
    BMI L_CD2025                    ; $CD200F  30 14        mX
    LDA $022B                       ; $CD2011  AD 2B 02     mX
    CMP $0269                       ; $CD2014  CD 69 02     mX
    BMI L_CD2025                    ; $CD2017  30 0C        mX
    LDA #$5F                        ; $CD2019  A9 5F        mX
    STA $7F9592                     ; $CD201B  8F 92 95 7F  mX
    LDA #$2A                        ; $CD201F  A9 2A        mX
    STA $7F95BB                     ; $CD2021  8F BB 95 7F  mX
L_CD2025:
    LDA $0220                       ; $CD2025  AD 20 02     mX  p1_character
    STA $5C                         ; $CD2028  85 5C        mX
    ASL                             ; $CD202A  0A           mX
    ASL                             ; $CD202B  0A           mX
    ASL                             ; $CD202C  0A           mX
    CLC                             ; $CD202D  18           mX
    ADC $5C                         ; $CD202E  65 5C        mX
    REP #$20                        ; $CD2030  C2 20        mX
    AND #$00FF                      ; $CD2032  29 FF 00     MX
    SEP #$20                        ; $CD2035  E2 20        MX
    TAY                             ; $CD2037  A8           mX
    LDX #$0000                      ; $CD2038  A2 00 00     mX
L_CD203B:
    LDA [$6C],Y                     ; $CD203B  B7 6C        mX
    STA $7F9593,X                   ; $CD203D  9F 93 95 7F  mX
    INY                             ; $CD2041  C8           mX
    INX                             ; $CD2042  E8           mX
    CPX #$0009                      ; $CD2043  E0 09 00     mX
    BNE L_CD203B                    ; $CD2046  D0 F3        mX
    LDA $025E                       ; $CD2048  AD 5E 02     mX  p2_character
    STA $5C                         ; $CD204B  85 5C        mX
    ASL                             ; $CD204D  0A           mX
    ASL                             ; $CD204E  0A           mX
    ASL                             ; $CD204F  0A           mX
    CLC                             ; $CD2050  18           mX
    ADC $5C                         ; $CD2051  65 5C        mX
    REP #$20                        ; $CD2053  C2 20        mX
    AND #$00FF                      ; $CD2055  29 FF 00     MX
    SEP #$20                        ; $CD2058  E2 20        MX
    TAY                             ; $CD205A  A8           mX
    LDX #$0000                      ; $CD205B  A2 00 00     mX
L_CD205E:
    LDA [$6C],Y                     ; $CD205E  B7 6C        mX
    STA $7F95BC,X                   ; $CD2060  9F BC 95 7F  mX
    INY                             ; $CD2064  C8           mX
    INX                             ; $CD2065  E8           mX
    CPX #$0009                      ; $CD2066  E0 09 00     mX
    BNE L_CD205E                    ; $CD2069  D0 F3        mX
    REP #$20                        ; $CD206B  C2 20        mX
    LDA $0226                       ; $CD206D  AD 26 02     MX
    STA $7F959D                     ; $CD2070  8F 9D 95 7F  MX
    LDA $0228                       ; $CD2074  AD 28 02     MX
    STA $7F959F                     ; $CD2077  8F 9F 95 7F  MX
    LDA $022A                       ; $CD207B  AD 2A 02     MX
    STA $7F95A1                     ; $CD207E  8F A1 95 7F  MX
    LDA $0264                       ; $CD2082  AD 64 02     MX
    STA $7F95C6                     ; $CD2085  8F C6 95 7F  MX
    LDA $0266                       ; $CD2089  AD 66 02     MX
    STA $7F95C8                     ; $CD208C  8F C8 95 7F  MX
    LDA $0268                       ; $CD2090  AD 68 02     MX
    STA $7F95CA                     ; $CD2093  8F CA 95 7F  MX
    SEP #$20                        ; $CD2097  E2 20        MX
    LDA $025A                       ; $CD2099  AD 5A 02     mX
    LDX #$002E                      ; $CD209C  A2 2E 00     mX
    JSR L_CD2143                    ; $CD209F  20 43 21     mX
    LDA $0298                       ; $CD20A2  AD 98 02     mX
    LDX #$0057                      ; $CD20A5  A2 57 00     mX
    JSR L_CD2143                    ; $CD20A8  20 43 21     mX
    LDX #$957E                      ; $CD20AB  A2 7E 95     mX
    STX $68                         ; $CD20AE  86 68        mX
    LDX #$007F                      ; $CD20B0  A2 7F 00     mX
    STX $6A                         ; $CD20B3  86 6A        mX
    LDY #$0800                      ; $CD20B5  A0 00 08     mX
    LDX #$0030                      ; $CD20B8  A2 30 00     mX
    JSR L_CD24F2                    ; $CD20BB  20 F2 24     mX
    LDX #$2BA8                      ; $CD20BE  A2 A8 2B     mX
    STX $68                         ; $CD20C1  86 68        mX
    LDX #$00CD                      ; $CD20C3  A2 CD 00     mX
    STX $6A                         ; $CD20C6  86 6A        mX
    LDY #$0C3C                      ; $CD20C8  A0 3C 0C     mX
    LDX #$0190                      ; $CD20CB  A2 90 01     mX
    JSR L_CD258A                    ; $CD20CE  20 8A 25     mX
    LDA $7F9560                     ; $CD20D1  AF 60 95 7F  mX  password_text
    CMP #$3A                        ; $CD20D5  C9 3A        mX
    BEQ L_CD20FF                    ; $CD20D7  F0 26        mX
    LDX #$9560                      ; $CD20D9  A2 60 95     mX
    STX $68                         ; $CD20DC  86 68        mX
    LDX #$007F                      ; $CD20DE  A2 7F 00     mX
    STX $6A                         ; $CD20E1  86 6A        mX
    LDY #$B430                      ; $CD20E3  A0 30 B4     mX
    LDX #$0000                      ; $CD20E6  A2 00 00     mX
    JSR L_CD24F2                    ; $CD20E9  20 F2 24     mX
    LDX #$28D9                      ; $CD20EC  A2 D9 28     mX
    STX $68                         ; $CD20EF  86 68        mX
    LDX #$00CD                      ; $CD20F1  A2 CD 00     mX
    STX $6A                         ; $CD20F4  86 6A        mX
    LDY #$A860                      ; $CD20F6  A0 60 A8     mX
    LDX #$0168                      ; $CD20F9  A2 68 01     mX
    JSR L_CD258A                    ; $CD20FC  20 8A 25     mX
L_CD20FF:
    JSL L_C20000                    ; $CD20FF  22 00 00 C2  mX
    LDA #$19                        ; $CD2103  A9 19        mX
    JSL L_C2010F                    ; $CD2105  22 0F 01 C2  mX
    JSR L_CD23E0                    ; $CD2109  20 E0 23     mX
    LDA #$00                        ; $CD210C  A9 00        mX
    STA $2100                       ; $CD210E  8D 00 21     mX
    JSR L_CD24B5                    ; $CD2111  20 B5 24     mX
L_CD2114:
    LDA $4A                         ; $CD2114  A5 4A        mX
L_CD2116:
    CMP $4A                         ; $CD2116  C5 4A        mX
    BEQ L_CD2116                    ; $CD2118  F0 FC        mX
    JSL L_C203C2                    ; $CD211A  22 C2 03 C2  mX
    LDA $46                         ; $CD211E  A5 46        mX
    CMP #$50                        ; $CD2120  C9 50        mX
    BCC L_CD2114                    ; $CD2122  90 F0        mX
    LDA #$18                        ; $CD2124  A9 18        mX
    JSL L_C2010F                    ; $CD2126  22 0F 01 C2  mX
    LDX #$26E4                      ; $CD212A  A2 E4 26     mX
    STX $68                         ; $CD212D  86 68        mX
    LDX #$00CD                      ; $CD212F  A2 CD 00     mX
    STX $6A                         ; $CD2132  86 6A        mX
    LDY #$C858                      ; $CD2134  A0 58 C8     mX
    LDX #$0140                      ; $CD2137  A2 40 01     mX
    JSR L_CD258A                    ; $CD213A  20 8A 25     mX
    JSR L_CD23E0                    ; $CD213D  20 E0 23     mX
    JMP L_CD1D2C                    ; $CD2140  4C 2C 1D     mX
L_CD2143:
    PHA                             ; $CD2143  48           mX
    LSR                             ; $CD2144  4A           mX
    LSR                             ; $CD2145  4A           mX
    AND #$03                        ; $CD2146  29 03        mX
    CLC                             ; $CD2148  18           mX
    ADC #$31                        ; $CD2149  69 31        mX
    STA $7F957E,X                   ; $CD214B  9F 7E 95 7F  mX
    PLA                             ; $CD214F  68           mX
    AND #$03                        ; $CD2150  29 03        mX
    CLC                             ; $CD2152  18           mX
    ADC #$31                        ; $CD2153  69 31        mX
    STA $7F9587,X                   ; $CD2155  9F 87 95 7F  mX
    RTS                             ; $CD2159  60           mX
L_CD215A:
    JSR read_pads                   ; $CD215A  20 4C 01     mX
    LDA $4D                         ; $CD215D  A5 4D        mX
    ORA $4F                         ; $CD215F  05 4F        mX
    AND #$0C                        ; $CD2161  29 0C        mX
    BEQ L_CD2170                    ; $CD2163  F0 0B        mX
    LDY #$0000                      ; $CD2165  A0 00 00     mX
    AND #$08                        ; $CD2168  29 08        mX
    BNE L_CD216D                    ; $CD216A  D0 01        mX
    INY                             ; $CD216C  C8           mX
L_CD216D:
    TYA                             ; $CD216D  98           mX
    STA $00,X                       ; $CD216E  95 00        mX
L_CD2170:
    LDA $00,X                       ; $CD2170  B5 00        mX
    BNE L_CD2197                    ; $CD2172  D0 23        mX
    CPX #$0208                      ; $CD2174  E0 08 02     mX
    BEQ L_CD2188                    ; $CD2177  F0 0F        mX
    LDX #$0008                      ; $CD2179  A2 08 00     mX
L_CD217C:
    LDA $CD266D,X                   ; $CD217C  BF 6D 26 CD  mX
    STA $7F8FFF,X                   ; $CD2180  9F FF 8F 7F  mX
    DEX                             ; $CD2184  CA           mX
    BNE L_CD217C                    ; $CD2185  D0 F5        mX
    RTS                             ; $CD2187  60           mX
L_CD2188:
    LDX #$0008                      ; $CD2188  A2 08 00     mX
L_CD218B:
    LDA $CD2685,X                   ; $CD218B  BF 85 26 CD  mX
    STA $7F8FFF,X                   ; $CD218F  9F FF 8F 7F  mX
    DEX                             ; $CD2193  CA           mX
    BNE L_CD218B                    ; $CD2194  D0 F5        mX
    RTS                             ; $CD2196  60           mX
L_CD2197:
    CPX #$0208                      ; $CD2197  E0 08 02     mX
    BEQ L_CD21AB                    ; $CD219A  F0 0F        mX
    LDX #$0008                      ; $CD219C  A2 08 00     mX
L_CD219F:
    LDA $CD2675,X                   ; $CD219F  BF 75 26 CD  mX
    STA $7F8FFF,X                   ; $CD21A3  9F FF 8F 7F  mX
    DEX                             ; $CD21A7  CA           mX
    BNE L_CD219F                    ; $CD21A8  D0 F5        mX
    RTS                             ; $CD21AA  60           mX
L_CD21AB:
    LDX #$0008                      ; $CD21AB  A2 08 00     mX
L_CD21AE:
    LDA $CD267D,X                   ; $CD21AE  BF 7D 26 CD  mX
    STA $7F8FFF,X                   ; $CD21B2  9F FF 8F 7F  mX
    DEX                             ; $CD21B6  CA           mX
    BNE L_CD21AE                    ; $CD21B7  D0 F5        mX
    RTS                             ; $CD21B9  60           mX
L_CD21BA:
    JSR L_CD21C9                    ; $CD21BA  20 C9 21     mX
L_CD21BD:
    JSR read_pads                   ; $CD21BD  20 4C 01     mX
    LDA $4D                         ; $CD21C0  A5 4D        mX
    ORA $4F                         ; $CD21C2  05 4F        mX
    AND #$0C                        ; $CD21C4  29 0C        mX
    BNE L_CD21BD                    ; $CD21C6  D0 F5        mX
    RTS                             ; $CD21C8  60           mX
L_CD21C9:
    JSR read_pads                   ; $CD21C9  20 4C 01     mX
    LDA $00,X                       ; $CD21CC  B5 00        mX
    TAY                             ; $CD21CE  A8           mX
    LDA $4D                         ; $CD21CF  A5 4D        mX
    ORA $4F                         ; $CD21D1  05 4F        mX
    AND #$0C                        ; $CD21D3  29 0C        mX
    BEQ L_CD21ED                    ; $CD21D5  F0 16        mX
    AND #$08                        ; $CD21D7  29 08        mX
    BNE L_CD21E6                    ; $CD21D9  D0 0B        mX
    INY                             ; $CD21DB  C8           mX
    TYA                             ; $CD21DC  98           mX
    CMP #$03                        ; $CD21DD  C9 03        mX
    BEQ L_CD21ED                    ; $CD21DF  F0 0C        mX
    STA $00,X                       ; $CD21E1  95 00        mX
    JMP L_CD21ED                    ; $CD21E3  4C ED 21     mX
L_CD21E6:
    DEY                             ; $CD21E6  88           mX
    TYA                             ; $CD21E7  98           mX
    BMI L_CD21ED                    ; $CD21E8  30 03        mX
    TYA                             ; $CD21EA  98           mX
    STA $00,X                       ; $CD21EB  95 00        mX
L_CD21ED:
    LDA $00,X                       ; $CD21ED  B5 00        mX
    BEQ L_CD2217                    ; $CD21EF  F0 26        mX
    DEC                             ; $CD21F1  3A           mX
    BEQ L_CD223A                    ; $CD21F2  F0 46        mX
    CPX #$0094                      ; $CD21F4  E0 94 00     mX
    BEQ L_CD2208                    ; $CD21F7  F0 0F        mX
    LDX #$0008                      ; $CD21F9  A2 08 00     mX
L_CD21FC:
    LDA $CD268D,X                   ; $CD21FC  BF 8D 26 CD  mX
    STA $7F8FFF,X                   ; $CD2200  9F FF 8F 7F  mX
    DEX                             ; $CD2204  CA           mX
    BNE L_CD21FC                    ; $CD2205  D0 F5        mX
    RTS                             ; $CD2207  60           mX
L_CD2208:
    LDX #$0008                      ; $CD2208  A2 08 00     mX
L_CD220B:
    LDA $CD26A5,X                   ; $CD220B  BF A5 26 CD  mX
    STA $7F8FFF,X                   ; $CD220F  9F FF 8F 7F  mX
    DEX                             ; $CD2213  CA           mX
    BNE L_CD220B                    ; $CD2214  D0 F5        mX
    RTS                             ; $CD2216  60           mX
L_CD2217:
    CPX #$0094                      ; $CD2217  E0 94 00     mX
    BEQ L_CD222B                    ; $CD221A  F0 0F        mX
    LDX #$0008                      ; $CD221C  A2 08 00     mX
L_CD221F:
    LDA $CD266D,X                   ; $CD221F  BF 6D 26 CD  mX
    STA $7F8FFF,X                   ; $CD2223  9F FF 8F 7F  mX
    DEX                             ; $CD2227  CA           mX
    BNE L_CD221F                    ; $CD2228  D0 F5        mX
    RTS                             ; $CD222A  60           mX
L_CD222B:
    LDX #$0008                      ; $CD222B  A2 08 00     mX
L_CD222E:
    LDA $CD2695,X                   ; $CD222E  BF 95 26 CD  mX
    STA $7F8FFF,X                   ; $CD2232  9F FF 8F 7F  mX
    DEX                             ; $CD2236  CA           mX
    BNE L_CD222E                    ; $CD2237  D0 F5        mX
    RTS                             ; $CD2239  60           mX
L_CD223A:
    CPX #$0094                      ; $CD223A  E0 94 00     mX
    BEQ L_CD224E                    ; $CD223D  F0 0F        mX
    LDX #$0008                      ; $CD223F  A2 08 00     mX
L_CD2242:
    LDA $CD2675,X                   ; $CD2242  BF 75 26 CD  mX
    STA $7F8FFF,X                   ; $CD2246  9F FF 8F 7F  mX
    DEX                             ; $CD224A  CA           mX
    BNE L_CD2242                    ; $CD224B  D0 F5        mX
    RTS                             ; $CD224D  60           mX
L_CD224E:
    LDX #$0008                      ; $CD224E  A2 08 00     mX
L_CD2251:
    LDA $CD269D,X                   ; $CD2251  BF 9D 26 CD  mX
    STA $7F8FFF,X                   ; $CD2255  9F FF 8F 7F  mX
    DEX                             ; $CD2259  CA           mX
    BNE L_CD2251                    ; $CD225A  D0 F5        mX
    RTS                             ; $CD225C  60           mX
L_CD225D:
    PHX                             ; $CD225D  DA           mX
    LDA $94                         ; $CD225E  A5 94        mX
    CMP #$02                        ; $CD2260  C9 02        mX
    BEQ L_CD2286                    ; $CD2262  F0 22        mX
    LDY #$002A                      ; $CD2264  A0 2A 00     mX
    CMP #$01                        ; $CD2267  C9 01        mX
    BNE L_CD226E                    ; $CD2269  D0 03        mX
    LDY #$0042                      ; $CD226B  A0 42 00     mX
L_CD226E:
    CLC                             ; $CD226E  18           mX
    ADC #$96                        ; $CD226F  69 96        mX
    TAX                             ; $CD2271  AA           mX
    TYA                             ; $CD2272  98           mX
    STA $98                         ; $CD2273  85 98        mX
    LDA $00,X                       ; $CD2275  B5 00        mX
    TAY                             ; $CD2277  A8           mX
    JSR L_CD2288                    ; $CD2278  20 88 22     mX
L_CD227B:
    JSR read_pads                   ; $CD227B  20 4C 01     mX
    LDA $4D                         ; $CD227E  A5 4D        mX
    ORA $4F                         ; $CD2280  05 4F        mX
    AND #$03                        ; $CD2282  29 03        mX
    BNE L_CD227B                    ; $CD2284  D0 F5        mX
L_CD2286:
    PLX                             ; $CD2286  FA           mX
    RTS                             ; $CD2287  60           mX
L_CD2288:
    JSR read_pads                   ; $CD2288  20 4C 01     mX
    LDA $4D                         ; $CD228B  A5 4D        mX
    ORA $4F                         ; $CD228D  05 4F        mX
    AND #$03                        ; $CD228F  29 03        mX
    BEQ L_CD22A9                    ; $CD2291  F0 16        mX
    BIT #$01                        ; $CD2293  89 01        mX
    BNE L_CD22A2                    ; $CD2295  D0 0B        mX
    TYA                             ; $CD2297  98           mX
    INC                             ; $CD2298  1A           mX
    CMP $98                         ; $CD2299  C5 98        mX
    BEQ L_CD22A9                    ; $CD229B  F0 0C        mX
L_CD229D:
    STA $00,X                       ; $CD229D  95 00        mX
    JMP L_CD22A9                    ; $CD229F  4C A9 22     mX
L_CD22A2:
    TYA                             ; $CD22A2  98           mX
    DEC                             ; $CD22A3  3A           mX
    BMI L_CD22A9                    ; $CD22A4  30 03        mX
    JMP L_CD229D                    ; $CD22A6  4C 9D 22     mX
L_CD22A9:
    RTS                             ; $CD22A9  60           mX
L_CD22AA:
    JSR read_pads                   ; $CD22AA  20 4C 01     mX
    LDA $4D                         ; $CD22AD  A5 4D        mX
    ORA $4F                         ; $CD22AF  05 4F        mX
    AND #$C0                        ; $CD22B1  29 C0        mX
    RTS                             ; $CD22B3  60           mX
L_CD22B4:
    JSR read_pads                   ; $CD22B4  20 4C 01     mX
    LDA $4C                         ; $CD22B7  A5 4C        mX  pad1_held
    ORA $4E                         ; $CD22B9  05 4E        mX  pad2_held
    AND #$C0                        ; $CD22BB  29 C0        mX
    RTS                             ; $CD22BD  60           mX
L_CD22BE:
    JSR read_pads                   ; $CD22BE  20 4C 01     mX
    LDA $4D                         ; $CD22C1  A5 4D        mX
    AND #$C0                        ; $CD22C3  29 C0        mX
    STA $5E                         ; $CD22C5  85 5E        mX
    LDA $4F                         ; $CD22C7  A5 4F        mX
    AND #$C0                        ; $CD22C9  29 C0        mX
    ORA $5E                         ; $CD22CB  05 5E        mX
    RTS                             ; $CD22CD  60           mX
L_CD22CE:
    JSR read_pads                   ; $CD22CE  20 4C 01     mX
    LDA $4D                         ; $CD22D1  A5 4D        mX
    ORA $4F                         ; $CD22D3  05 4F        mX
    AND #$0F                        ; $CD22D5  29 0F        mX
    STA $5A                         ; $CD22D7  85 5A        mX
    RTS                             ; $CD22D9  60           mX
L_CD22DA:
    PHP                             ; $CD22DA  08           mX
    PEA $343B                       ; $CD22DB  F4 3B 34     mX
    PEA $00CD                       ; $CD22DE  F4 CD 00     mX
    PEA $0000                       ; $CD22E1  F4 00 00     mX
    PEA $007F                       ; $CD22E4  F4 7F 00     mX
    JSL L_C30000                    ; $CD22E7  22 00 00 C3  mX
    PLA                             ; $CD22EB  68           MX
    PLA                             ; $CD22EC  68           MX
    PLA                             ; $CD22ED  68           MX
    PLA                             ; $CD22EE  68           MX
    PLP                             ; $CD22EF  28           MX
    SEP #$20                        ; $CD22F0  E2 20        mX
    REP #$10                        ; $CD22F2  C2 10        mX
    LDA #$80                        ; $CD22F4  A9 80        mX
    STA $2100                       ; $CD22F6  8D 00 21     mX
    LDA #$01                        ; $CD22F9  A9 01        mX
    STA $4200                       ; $CD22FB  8D 00 42     mX
    STA $0B                         ; $CD22FE  85 0B        mX
    LDA #$00                        ; $CD2300  A9 00        mX
    STA $420C                       ; $CD2302  8D 0C 42     mX
    STA $210D                       ; $CD2305  8D 0D 21     mX
    STA $210D                       ; $CD2308  8D 0D 21     mX
    DEC                             ; $CD230B  3A           mX
    STA $210E                       ; $CD230C  8D 0E 21     mX
    STA $210E                       ; $CD230F  8D 0E 21     mX
    LDA #$01                        ; $CD2312  A9 01        mX
    STA $2105                       ; $CD2314  8D 05 21     mX
    LDA #$70                        ; $CD2317  A9 70        mX
    STA $2107                       ; $CD2319  8D 07 21     mX
    LDA #$78                        ; $CD231C  A9 78        mX
    STA $2108                       ; $CD231E  8D 08 21     mX
    LDA #$02                        ; $CD2321  A9 02        mX
    STA $210B                       ; $CD2323  8D 0B 21     mX
    LDX #$0004                      ; $CD2326  A2 04 00     mX
    STX $04                         ; $CD2329  86 04        mX
    LDX #$00CD                      ; $CD232B  A2 CD 00     mX
    STX $06                         ; $CD232E  86 06        mX
    LDA #$00                        ; $CD2330  A9 00        mX
    STA $2101                       ; $CD2332  8D 01 21     mX
    LDA #$80                        ; $CD2335  A9 80        mX
    STA $2115                       ; $CD2337  8D 15 21     mX
    LDX #$0200                      ; $CD233A  A2 00 02     mX
L_CD233D:
    LDA $CD955F,X                   ; $CD233D  BF 5F 95 CD  mX
    STA $7F935F,X                   ; $CD2341  9F 5F 93 7F  mX
    DEX                             ; $CD2345  CA           mX
    BNE L_CD233D                    ; $CD2346  D0 F5        mX
    LDA #$7F                        ; $CD2348  A9 7F        mX
    LDX #$0000                      ; $CD234A  A2 00 00     mX
    STX $4302                       ; $CD234D  8E 02 43     mX
    STA $4304                       ; $CD2350  8D 04 43     mX
    LDX #$2000                      ; $CD2353  A2 00 20     mX
    STX $2116                       ; $CD2356  8E 16 21     mX
    LDX #$8000                      ; $CD2359  A2 00 80     mX
    STX $4305                       ; $CD235C  8E 05 43     mX
    LDX #$1801                      ; $CD235F  A2 01 18     mX
    STX $4300                       ; $CD2362  8E 00 43     mX
    LDA #$01                        ; $CD2365  A9 01        mX
    STA $420B                       ; $CD2367  8D 0B 42     mX
    PHP                             ; $CD236A  08           mX
    PEA $98A0                       ; $CD236B  F4 A0 98     mX
    PEA $00CD                       ; $CD236E  F4 CD 00     mX
    PEA $0000                       ; $CD2371  F4 00 00     mX
    PEA $007F                       ; $CD2374  F4 7F 00     mX
    JSL L_C30000                    ; $CD2377  22 00 00 C3  mX
    PLA                             ; $CD237B  68           MX
    PLA                             ; $CD237C  68           MX
    PLA                             ; $CD237D  68           MX
    PLA                             ; $CD237E  68           MX
    PLP                             ; $CD237F  28           MX
    LDA #$7F                        ; $CD2380  A9 7F        mX
    LDX #$0000                      ; $CD2382  A2 00 00     mX
    STX $4302                       ; $CD2385  8E 02 43     mX
    STA $4304                       ; $CD2388  8D 04 43     mX
    LDX #$0000                      ; $CD238B  A2 00 00     mX
    STX $2116                       ; $CD238E  8E 16 21     mX
    LDX #$2000                      ; $CD2391  A2 00 20     mX
    STX $4305                       ; $CD2394  8E 05 43     mX
    LDX #$1801                      ; $CD2397  A2 01 18     mX
    STX $4300                       ; $CD239A  8E 00 43     mX
    LDA #$01                        ; $CD239D  A9 01        mX
    STA $420B                       ; $CD239F  8D 0B 42     mX
    JSR L_CD23F1                    ; $CD23A2  20 F1 23     mX
    JSR L_CD2489                    ; $CD23A5  20 89 24     mX
    LDA #$41                        ; $CD23A8  A9 41        mX
    STA $80                         ; $CD23AA  85 80        mX
    LDA #$11                        ; $CD23AC  A9 11        mX
    STA $212C                       ; $CD23AE  8D 2C 21     mX
    STZ $2133                       ; $CD23B1  9C 33 21     mX
    LDA #$00                        ; $CD23B4  A9 00        mX
    STA $2100                       ; $CD23B6  8D 00 21     mX
    LDA #$A1                        ; $CD23B9  A9 A1        mX
    STA $4200                       ; $CD23BB  8D 00 42     mX
    STA $0B                         ; $CD23BE  85 0B        mX
    CLI                             ; $CD23C0  58           mX
    RTS                             ; $CD23C1  60           mX
L_CD23C2:
    LDA #$01                        ; $CD23C2  A9 01        mX
    STA $57                         ; $CD23C4  85 57        mX
    STA $55                         ; $CD23C6  85 55        mX
    STA $54                         ; $CD23C8  85 54        mX
    STA $56                         ; $CD23CA  85 56        mX
    LDA $4A                         ; $CD23CC  A5 4A        mX
L_CD23CE:
    CMP $4A                         ; $CD23CE  C5 4A        mX
    BEQ L_CD23CE                    ; $CD23D0  F0 FC        mX
    RTS                             ; $CD23D2  60           mX
L_CD23D3:
    LDA #$01                        ; $CD23D3  A9 01        mX
    STA $57                         ; $CD23D5  85 57        mX
    STA $55                         ; $CD23D7  85 55        mX
    LDA $4A                         ; $CD23D9  A5 4A        mX
L_CD23DB:
    CMP $4A                         ; $CD23DB  C5 4A        mX
    BEQ L_CD23DB                    ; $CD23DD  F0 FC        mX
    RTS                             ; $CD23DF  60           mX
L_CD23E0:
    INC $60                         ; $CD23E0  E6 60        mX
    LDA #$01                        ; $CD23E2  A9 01        mX
    STA $54                         ; $CD23E4  85 54        mX
    STA $55                         ; $CD23E6  85 55        mX
    STA $56                         ; $CD23E8  85 56        mX
    LDA $4A                         ; $CD23EA  A5 4A        mX
L_CD23EC:
    CMP $4A                         ; $CD23EC  C5 4A        mX
    BEQ L_CD23EC                    ; $CD23EE  F0 FC        mX
    RTS                             ; $CD23F0  60           mX
L_CD23F1:
    LDX #$0020                      ; $CD23F1  A2 20 00     mX
    LDY #$000C                      ; $CD23F4  A0 0C 00     mX
    LDA #$00                        ; $CD23F7  A9 00        mX
L_CD23F9:
    STA $7F91FF,X                   ; $CD23F9  9F FF 91 7F  mX
    DEX                             ; $CD23FD  CA           mX
    DEY                             ; $CD23FE  88           mX
    BNE L_CD23F9                    ; $CD23FF  D0 F8        mX
    LDY #$0014                      ; $CD2401  A0 14 00     mX
    LDA #$AA                        ; $CD2404  A9 AA        mX
L_CD2406:
    STA $7F91FF,X                   ; $CD2406  9F FF 91 7F  mX
    DEX                             ; $CD240A  CA           mX
    BNE L_CD2406                    ; $CD240B  D0 F9        mX
    LDX #$0200                      ; $CD240D  A2 00 02     mX
L_CD2410:
    LDA #$00                        ; $CD2410  A9 00        mX
    STA $7F8FFF,X                   ; $CD2412  9F FF 8F 7F  mX
    DEX                             ; $CD2416  CA           mX
    STA $7F8FFF,X                   ; $CD2417  9F FF 8F 7F  mX
    DEX                             ; $CD241B  CA           mX
    LDA #$E0                        ; $CD241C  A9 E0        mX
    STA $7F8FFF,X                   ; $CD241E  9F FF 8F 7F  mX
    DEX                             ; $CD2422  CA           mX
    STA $7F8FFF,X                   ; $CD2423  9F FF 8F 7F  mX
    DEX                             ; $CD2427  CA           mX
    BNE L_CD2410                    ; $CD2428  D0 E6        mX
    RTS                             ; $CD242A  60           mX
L_CD242B:
    LDX #$1000                      ; $CD242B  A2 00 10     mX
    BRA L_CD2433                    ; $CD242E  80 03        mX
L_CD2430:
    LDX #$0800                      ; $CD2430  A2 00 08     mX
L_CD2433:
    LDA #$00                        ; $CD2433  A9 00        mX
L_CD2435:
    STA $7F7FFF,X                   ; $CD2435  9F FF 7F 7F  mX
    DEX                             ; $CD2439  CA           mX
    BNE L_CD2435                    ; $CD243A  D0 F9        mX
    RTS                             ; $CD243C  60           mX
L_CD243D:
    LDA #$70                        ; $CD243D  A9 70        mX
    STA $2117                       ; $CD243F  8D 17 21     mX
    LDA #$00                        ; $CD2442  A9 00        mX
    STA $2116                       ; $CD2444  8D 16 21     mX
    LDX #$0800                      ; $CD2447  A2 00 08     mX
    LDA #$00                        ; $CD244A  A9 00        mX
L_CD244C:
    STA $2118                       ; $CD244C  8D 18 21     mX
    STA $2119                       ; $CD244F  8D 19 21     mX
    DEX                             ; $CD2452  CA           mX
    BNE L_CD244C                    ; $CD2453  D0 F7        mX
    RTS                             ; $CD2455  60           mX
L_CD2456:
    LDA #$70                        ; $CD2456  A9 70        mX
    STA $2117                       ; $CD2458  8D 17 21     mX
    LDA #$00                        ; $CD245B  A9 00        mX
    STA $2116                       ; $CD245D  8D 16 21     mX
    LDX #$0400                      ; $CD2460  A2 00 04     mX
    LDA #$00                        ; $CD2463  A9 00        mX
L_CD2465:
    STA $2118                       ; $CD2465  8D 18 21     mX
    STA $2119                       ; $CD2468  8D 19 21     mX
    DEX                             ; $CD246B  CA           mX
    BNE L_CD2465                    ; $CD246C  D0 F7        mX
    RTS                             ; $CD246E  60           mX
L_CD246F:
    RTS                             ; $CD246F  60           mX
L_CD2470:
    LDA #$78                        ; $CD2470  A9 78        mX
    STA $2117                       ; $CD2472  8D 17 21     mX
    LDA #$00                        ; $CD2475  A9 00        mX
    STA $2116                       ; $CD2477  8D 16 21     mX
    LDX #$0400                      ; $CD247A  A2 00 04     mX
    LDA #$01                        ; $CD247D  A9 01        mX
L_CD247F:
    STA $2118                       ; $CD247F  8D 18 21     mX
    STA $2119                       ; $CD2482  8D 19 21     mX
    DEX                             ; $CD2485  CA           mX
    BNE L_CD247F                    ; $CD2486  D0 F7        mX
    RTS                             ; $CD2488  60           mX
L_CD2489:
    LDX #$0700                      ; $CD2489  A2 00 07     mX
L_CD248C:
    LDA $CD8057,X                   ; $CD248C  BF 57 80 CD  mX
    STA $7F7FFE,X                   ; $CD2490  9F FE 7F 7F  mX
    DEX                             ; $CD2494  CA           mX
    LDA $CD8057,X                   ; $CD2495  BF 57 80 CD  mX
    STA $7F8000,X                   ; $CD2499  9F 00 80 7F  mX
    DEX                             ; $CD249D  CA           mX
    BNE L_CD248C                    ; $CD249E  D0 EC        mX
    RTS                             ; $CD24A0  60           mX
L_CD24A1:
    LDA #$0F                        ; $CD24A1  A9 0F        mX
    STA $5C                         ; $CD24A3  85 5C        mX
L_CD24A5:
    JSR L_CD24D4                    ; $CD24A5  20 D4 24     mX
    LDA $5C                         ; $CD24A8  A5 5C        mX
    DEC                             ; $CD24AA  3A           mX
    BMI L_CD24B4                    ; $CD24AB  30 07        mX
    STA $2100                       ; $CD24AD  8D 00 21     mX
    STA $5C                         ; $CD24B0  85 5C        mX
    BRA L_CD24A5                    ; $CD24B2  80 F1        mX
L_CD24B4:
    RTS                             ; $CD24B4  60           mX
L_CD24B5:
    LDA $4A                         ; $CD24B5  A5 4A        mX
L_CD24B7:
    CMP $4A                         ; $CD24B7  C5 4A        mX
    BEQ L_CD24B7                    ; $CD24B9  F0 FC        mX
    LDA #$00                        ; $CD24BB  A9 00        mX
    STA $5C                         ; $CD24BD  85 5C        mX
L_CD24BF:
    JSR L_CD24D4                    ; $CD24BF  20 D4 24     mX
    LDA $5C                         ; $CD24C2  A5 5C        mX
    INC                             ; $CD24C4  1A           mX
    CMP #$10                        ; $CD24C5  C9 10        mX
    BEQ L_CD24B4                    ; $CD24C7  F0 EB        mX
    STA $2100                       ; $CD24C9  8D 00 21     mX
    STA $5C                         ; $CD24CC  85 5C        mX
    BRA L_CD24BF                    ; $CD24CE  80 EF        mX
L_CD24D0:
    LDA #$06                        ; $CD24D0  A9 06        mX
    BRA L_CD24D6                    ; $CD24D2  80 02        mX
L_CD24D4:
    LDA #$03                        ; $CD24D4  A9 03        mX
L_CD24D6:
    PHA                             ; $CD24D6  48           mX
    LDA $4A                         ; $CD24D7  A5 4A        mX
L_CD24D9:
    CMP $4A                         ; $CD24D9  C5 4A        mX
    BEQ L_CD24D9                    ; $CD24DB  F0 FC        mX
    PLA                             ; $CD24DD  68           mX
    DEC                             ; $CD24DE  3A           mX
    BNE L_CD24D6                    ; $CD24DF  D0 F5        mX
    RTS                             ; $CD24E1  60           mX
L_CD24E2:
    LDY #$0032                      ; $CD24E2  A0 32 00     mX
L_CD24E5:
    LDA $4A                         ; $CD24E5  A5 4A        mX
L_CD24E7:
    CMP $4A                         ; $CD24E7  C5 4A        mX
    BEQ L_CD24E7                    ; $CD24E9  F0 FC        mX
    DEY                             ; $CD24EB  88           mX
    BNE L_CD24E5                    ; $CD24EC  D0 F7        mX
    DEX                             ; $CD24EE  CA           mX
    BNE L_CD24E2                    ; $CD24EF  D0 F1        mX
    RTS                             ; $CD24F1  60           mX
L_CD24F2:
    STY $75                         ; $CD24F2  84 75        mX
    TYA                             ; $CD24F4  98           mX
    STA $78                         ; $CD24F5  85 78        mX
    LDA #$30                        ; $CD24F7  A9 30        mX
    STA $77                         ; $CD24F9  85 77        mX
L_CD24FB:
    LDA [$68]                       ; $CD24FB  A7 68        mX
    BEQ L_CD2570                    ; $CD24FD  F0 71        mX
    CMP #$2B                        ; $CD24FF  C9 2B        mX
    BEQ L_CD257D                    ; $CD2501  F0 7A        mX
    CMP #$25                        ; $CD2503  C9 25        mX
    BEQ L_CD2553                    ; $CD2505  F0 4C        mX
    CMP #$5F                        ; $CD2507  C9 5F        mX
    BEQ L_CD255C                    ; $CD2509  F0 51        mX
    CMP #$2A                        ; $CD250B  C9 2A        mX
    BEQ L_CD2562                    ; $CD250D  F0 53        mX
    CMP #$21                        ; $CD250F  C9 21        mX
    BCC L_CD2544                    ; $CD2511  90 31        mX
    BEQ L_CD2568                    ; $CD2513  F0 53        mX
    CMP #$FF                        ; $CD2515  C9 FF        mX
    BEQ L_CD2552                    ; $CD2517  F0 39        mX
    SEC                             ; $CD2519  38           mX
    SBC #$30                        ; $CD251A  E9 30        mX
    BCC L_CD254B                    ; $CD251C  90 2D        mX
    ASL                             ; $CD251E  0A           mX
    PHA                             ; $CD251F  48           mX
    AND #$0F                        ; $CD2520  29 0F        mX
    STA $5C                         ; $CD2522  85 5C        mX
    PLA                             ; $CD2524  68           mX
    ASL                             ; $CD2525  0A           mX
    AND #$E0                        ; $CD2526  29 E0        mX
    ORA $5C                         ; $CD2528  05 5C        mX
    STA $7F9002,X                   ; $CD252A  9F 02 90 7F  mX
    LDA $75                         ; $CD252E  A5 75        mX
    STA $7F9000,X                   ; $CD2530  9F 00 90 7F  mX
    INX                             ; $CD2534  E8           mX
    LDA $76                         ; $CD2535  A5 76        mX
    STA $7F9000,X                   ; $CD2537  9F 00 90 7F  mX
    INX                             ; $CD253B  E8           mX
    INX                             ; $CD253C  E8           mX
    LDA $77                         ; $CD253D  A5 77        mX
    STA $7F9000,X                   ; $CD253F  9F 00 90 7F  mX
    INX                             ; $CD2543  E8           mX
L_CD2544:
    LDA $75                         ; $CD2544  A5 75        mX
    CLC                             ; $CD2546  18           mX
    ADC #$0E                        ; $CD2547  69 0E        mX
    STA $75                         ; $CD2549  85 75        mX
L_CD254B:
    LDY $68                         ; $CD254B  A4 68        mX
    INY                             ; $CD254D  C8           mX
    STY $68                         ; $CD254E  84 68        mX
    BRA L_CD24FB                    ; $CD2550  80 A9        mX
L_CD2552:
    RTS                             ; $CD2552  60           mX
L_CD2553:
    LDA $75                         ; $CD2553  A5 75        mX
    CLC                             ; $CD2555  18           mX
    ADC #$06                        ; $CD2556  69 06        mX
    STA $75                         ; $CD2558  85 75        mX
    BRA L_CD254B                    ; $CD255A  80 EF        mX
L_CD255C:
    LDA #$30                        ; $CD255C  A9 30        mX
    STA $77                         ; $CD255E  85 77        mX
    BRA L_CD254B                    ; $CD2560  80 E9        mX
L_CD2562:
    LDA #$32                        ; $CD2562  A9 32        mX
    STA $77                         ; $CD2564  85 77        mX
    BRA L_CD254B                    ; $CD2566  80 E3        mX
L_CD2568:
    LDA $77                         ; $CD2568  A5 77        mX
    EOR #$02                        ; $CD256A  49 02        mX
    STA $77                         ; $CD256C  85 77        mX
    BRA L_CD254B                    ; $CD256E  80 DB        mX
L_CD2570:
    LDA $78                         ; $CD2570  A5 78        mX
    STA $75                         ; $CD2572  85 75        mX
    LDA $76                         ; $CD2574  A5 76        mX
    CLC                             ; $CD2576  18           mX
    ADC #$10                        ; $CD2577  69 10        mX
    STA $76                         ; $CD2579  85 76        mX
    BRA L_CD254B                    ; $CD257B  80 CE        mX
L_CD257D:
    LDA $78                         ; $CD257D  A5 78        mX
    STA $75                         ; $CD257F  85 75        mX
    LDA $76                         ; $CD2581  A5 76        mX
    CLC                             ; $CD2583  18           mX
    ADC #$06                        ; $CD2584  69 06        mX
    STA $76                         ; $CD2586  85 76        mX
    BRA L_CD254B                    ; $CD2588  80 C1        mX
L_CD258A:
    STY $75                         ; $CD258A  84 75        mX
    TYA                             ; $CD258C  98           mX
    STA $78                         ; $CD258D  85 78        mX
    LDA #$30                        ; $CD258F  A9 30        mX
    STA $77                         ; $CD2591  85 77        mX
L_CD2593:
    LDA [$68]                       ; $CD2593  A7 68        mX
    BEQ L_CD2613                    ; $CD2595  F0 7C        mX
    CMP #$23                        ; $CD2597  C9 23        mX
    BEQ L_CD25FF                    ; $CD2599  F0 64        mX
    CMP #$24                        ; $CD259B  C9 24        mX
    BEQ L_CD2603                    ; $CD259D  F0 64        mX
    CMP #$40                        ; $CD259F  C9 40        mX
    BEQ L_CD25F6                    ; $CD25A1  F0 53        mX
    CMP #$7B                        ; $CD25A3  C9 7B        mX
    BEQ L_CD25EF                    ; $CD25A5  F0 48        mX
    CMP #$25                        ; $CD25A7  C9 25        mX
    BEQ L_CD25E6                    ; $CD25A9  F0 3B        mX
    CMP #$21                        ; $CD25AB  C9 21        mX
    BCC L_CD25D7                    ; $CD25AD  90 28        mX
    BEQ L_CD260B                    ; $CD25AF  F0 5A        mX
    CMP #$FF                        ; $CD25B1  C9 FF        mX
    BEQ L_CD25E5                    ; $CD25B3  F0 30        mX
    SEC                             ; $CD25B5  38           mX
    SBC $80                         ; $CD25B6  E5 80        mX
    BCC L_CD25DE                    ; $CD25B8  90 24        mX
    CLC                             ; $CD25BA  18           mX
    ADC #$C0                        ; $CD25BB  69 C0        mX
    STA $7F9002,X                   ; $CD25BD  9F 02 90 7F  mX
    LDA $75                         ; $CD25C1  A5 75        mX
    STA $7F9000,X                   ; $CD25C3  9F 00 90 7F  mX
    INX                             ; $CD25C7  E8           mX
    LDA $76                         ; $CD25C8  A5 76        mX
    STA $7F9000,X                   ; $CD25CA  9F 00 90 7F  mX
    INX                             ; $CD25CE  E8           mX
    INX                             ; $CD25CF  E8           mX
    LDA $77                         ; $CD25D0  A5 77        mX
    STA $7F9000,X                   ; $CD25D2  9F 00 90 7F  mX
    INX                             ; $CD25D6  E8           mX
L_CD25D7:
    LDA $75                         ; $CD25D7  A5 75        mX
    CLC                             ; $CD25D9  18           mX
    ADC #$08                        ; $CD25DA  69 08        mX
    STA $75                         ; $CD25DC  85 75        mX
L_CD25DE:
    LDY $68                         ; $CD25DE  A4 68        mX
    INY                             ; $CD25E0  C8           mX
    STY $68                         ; $CD25E1  84 68        mX
    BRA L_CD2593                    ; $CD25E3  80 AE        mX
L_CD25E5:
    RTS                             ; $CD25E5  60           mX
L_CD25E6:
    LDA $75                         ; $CD25E6  A5 75        mX
    CLC                             ; $CD25E8  18           mX
    ADC #$04                        ; $CD25E9  69 04        mX
    STA $75                         ; $CD25EB  85 75        mX
    BRA L_CD25DE                    ; $CD25ED  80 EF        mX
L_CD25EF:
    LDA $75                         ; $CD25EF  A5 75        mX
    DEC                             ; $CD25F1  3A           mX
    STA $75                         ; $CD25F2  85 75        mX
    BRA L_CD25DE                    ; $CD25F4  80 E8        mX
L_CD25F6:
    LDA $75                         ; $CD25F6  A5 75        mX
    SEC                             ; $CD25F8  38           mX
    SBC #$04                        ; $CD25F9  E9 04        mX
    STA $75                         ; $CD25FB  85 75        mX
    BRA L_CD25DE                    ; $CD25FD  80 DF        mX
L_CD25FF:
    LDA #$40                        ; $CD25FF  A9 40        mX
    BRA L_CD2605                    ; $CD2601  80 02        mX
L_CD2603:
    LDA #$80                        ; $CD2603  A9 80        mX
L_CD2605:
    EOR $77                         ; $CD2605  45 77        mX
    STA $77                         ; $CD2607  85 77        mX
    BRA L_CD25DE                    ; $CD2609  80 D3        mX
L_CD260B:
    LDA $77                         ; $CD260B  A5 77        mX
    EOR #$02                        ; $CD260D  49 02        mX
    STA $77                         ; $CD260F  85 77        mX
    BRA L_CD25DE                    ; $CD2611  80 CB        mX
L_CD2613:
    LDA $78                         ; $CD2613  A5 78        mX
    STA $75                         ; $CD2615  85 75        mX
    LDA $76                         ; $CD2617  A5 76        mX
    CLC                             ; $CD2619  18           mX
    ADC #$08                        ; $CD261A  69 08        mX
    STA $76                         ; $CD261C  85 76        mX
    BRA L_CD25DE                    ; $CD261E  80 BE        mX
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
    db $20,$3C,$20,$3D,$FF                                             ; $CD28B0
password_alphabet:
    db $42,$43,$44,$46,$47,$48,$4A,$4B,$4C,$4D,$4E,$50,$51,$52,$53,$54 ; $CD28B5
    db $56,$57,$58,$59,$5A,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$40 ; $CD28C5
    db $3A,$3A,$3A,$3A,$50,$41,$53,$53,$57,$4F,$52,$44,$FF             ; $CD28D5
password_grid:
    db $42,$43,$44,$46,$47,$48,$4A,$4B,$4C,$4D,$4E,$50,$51,$52,$53,$54 ; $CD28E2
    db $56,$57,$58,$59,$5A,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$40 ; $CD28F2
    db $20,$3F,$3C,$3D,$42,$52,$49,$47,$41,$4E,$44,$20,$20,$4D,$45,$52 ; $CD2902
    db $43,$45,$4E,$41,$52,$59,$47,$45,$4E,$54,$4C,$45,$4D,$41,$4E,$4E ; $CD2912
    db $41,$56,$56,$49,$45,$20,$20,$20,$54,$48,$55,$47,$20,$20,$20,$20 ; $CD2922
    db $20,$53,$43,$49,$45,$4E,$54,$49,$53,$54,$25,$20,$20,$20,$54,$48 ; $CD2932
    db $45,$20,$46,$4F,$52,$45,$53,$54,$20,$20,$20,$20,$20,$20,$54,$48 ; $CD2942
    db $45,$20,$57,$4F,$52,$4B,$53,$48,$4F,$50,$53,$20,$20,$20,$46,$4F ; $CD2952
    db $52,$54,$45,$53,$51,$55,$45,$20,$4D,$41,$4E,$53,$49,$4F,$4E,$20 ; $CD2962
    db $20,$20,$20,$54,$48,$45,$20,$43,$45,$4C,$4C,$41,$52,$53,$20,$20 ; $CD2972
    db $20,$20,$20,$20,$54,$48,$45,$20,$42,$45,$47,$49,$4E,$4E,$49,$4E ; $CD2982
    db $47,$20,$25,$20,$20,$20,$4D,$55,$44,$20,$52,$49,$56,$45,$52,$53 ; $CD2992
    db $20,$20,$20,$20,$20,$20,$20,$20,$52,$49,$4E,$47,$53,$20,$20,$20 ; $CD29A2
    db $20,$20,$20,$20,$20,$20,$20,$52,$4F,$43,$4B,$49,$45,$53,$20,$20 ; $CD29B2
    db $20,$20,$25,$20,$20,$20,$20,$20,$20,$4D,$41,$5A,$45,$20,$20,$20 ; $CD29C2
    db $20,$20,$20,$20,$20,$20,$20,$20,$54,$52,$41,$50,$53,$20,$20,$20 ; $CD29D2
    db $20,$20,$20,$20,$20,$20,$20,$20,$53,$54,$45,$41,$4D,$20,$20,$20 ; $CD29E2
    db $20,$20,$25,$20,$20,$20,$20,$51,$55,$41,$52,$54,$45,$52,$53,$20 ; $CD29F2
    db $20,$20,$25,$20,$20,$20,$20,$54,$48,$45,$20,$50,$49,$54,$53,$20 ; $CD2A02
    db $20,$20,$20,$20,$20,$20,$43,$4F,$4E,$46,$55,$53,$49,$4F,$4E,$20 ; $CD2A12
    db $20,$20,$20,$20,$20,$20,$20,$52,$45,$56,$45,$52,$53,$45,$20,$20 ; $CD2A22
    db $20,$20,$20,$20,$20,$20,$20,$57,$41,$59,$20,$4F,$55,$54,$20,$20 ; $CD2A32
    db $20,$20,$20,$20,$20,$20,$20,$20,$53,$45,$57,$45,$52,$20,$20,$20 ; $CD2A42
    db $20,$20,$20,$20,$20,$20,$50,$55,$4D,$50,$20,$52,$4F,$4F,$4D,$20 ; $CD2A52
    db $20,$20,$48,$41,$4C,$4C,$20,$4F,$46,$20,$4D,$41,$43,$48,$49,$4E ; $CD2A62
    db $45,$53,$25,$20,$54,$49,$4D,$45,$20,$46,$4F,$52,$20,$43,$48,$41 ; $CD2A72
    db $4F,$53,$20,$20,$7B,$7B,$5B,$5C,$5C,$5C,$5D,$5E,$5E,$7B,$7B,$5E ; $CD2A82
    db $5E,$5F,$60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E,$5E ; $CD2A92
    db $5E,$5E,$5D,$5C,$5C,$5C,$5B,$00,$00,$00,$24,$23,$20,$20,$7B,$7B ; $CD2AA2
    db $5B,$5C,$5C,$5C,$5D,$5E,$5E,$5E,$7B,$7B,$5E,$5F,$60,$61,$40,$40 ; $CD2AB2
    db $7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E,$5E,$5E,$5E,$5D,$5C,$5C,$5C ; $CD2AC2
    db $5B,$FF,$25,$20,$5B,$5C,$5C,$5D,$5E,$5E,$5E,$7B,$7B,$5F,$60,$61 ; $CD2AD2
    db $40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E,$5E,$7B,$7B,$5E,$5D ; $CD2AE2
    db $5C,$5C,$5B,$00,$00,$00,$24,$23,$25,$20,$5B,$5C,$5C,$5D,$5E,$5E ; $CD2AF2
    db $5E,$7B,$7B,$5F,$60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F ; $CD2B02
    db $5E,$5E,$7B,$7B,$5E,$5D,$5C,$5C,$5B,$FF,$7B,$7B,$20,$20,$20,$20 ; $CD2B12
    db $20,$20,$5B,$5C,$5D,$5E,$7B,$7B,$5F,$60,$61,$40,$40,$7B,$7B,$7B ; $CD2B22
    db $20,$23,$61,$60,$5F,$5E,$7B,$7B,$5E,$5D,$5C,$5B,$00,$00,$00,$24 ; $CD2B32
    db $23,$7B,$7B,$20,$20,$20,$20,$20,$20,$5B,$5C,$5D,$5E,$7B,$7B,$5F ; $CD2B42
    db $60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E,$7B,$7B,$5E ; $CD2B52
    db $5D,$5C,$5B,$FF,$20,$20,$20,$20,$20,$20,$20,$40,$7B,$7B,$7B,$5B ; $CD2B62
    db $5D,$5E,$5F,$60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E ; $CD2B72
    db $5D,$5B,$00,$00,$00,$24,$23,$20,$20,$20,$20,$20,$20,$20,$40,$7B ; $CD2B82
    db $7B,$7B,$5B,$5D,$5E,$5F,$60,$61,$40,$40,$7B,$7B,$7B,$20,$23,$61 ; $CD2B92
    db $60,$5F,$5E,$5D,$5B,$FF,$25,$20,$5B,$5C,$5D,$5E,$5F,$60,$61,$40 ; $CD2BA2
    db $40,$7B,$7B,$7B,$20,$23,$61,$60,$5F,$5E,$5D,$5C,$5B,$00,$00,$00 ; $CD2BB2
    db $24,$23,$25,$20,$5B,$5C,$5D,$5E,$5F,$60,$61,$40,$40,$7B,$7B,$7B ; $CD2BC2
    db $20,$23,$61,$60,$5F,$5E,$5D,$5C,$5B,$FF,$00,$00,$0D,$00,$14,$00 ; $CD2BD2
    db $1C,$00,$23,$00,$2B,$00,$3A,$00,$4C,$00,$5D,$00,$64,$00,$6B,$00 ; $CD2BE2
    db $7A,$00,$80,$00,$91,$00,$A2,$00,$B1,$00,$C2,$00,$CA,$00,$D8,$00 ; $CD2BF2
    db $E5,$00,$F6,$00,$FF,$00,$0E,$01,$17,$01,$28,$01,$38,$01,$47,$01 ; $CD2C02
    db $47,$01,$56,$01,$62,$01,$6E,$01,$20,$45,$58,$54,$52,$41,$00,$20 ; $CD2C12
    db $4C,$49,$46,$45,$FF,$20,$53,$4B,$49,$4C,$4C,$FF,$20,$48,$45,$41 ; $CD2C22
    db $4C,$54,$48,$FF,$20,$53,$50,$45,$45,$44,$FF,$20,$57,$49,$53,$44 ; $CD2C32
    db $4F,$4D,$FF,$53,$50,$45,$43,$49,$41,$4C,$00,$20,$50,$4F,$57,$45 ; $CD2C42
    db $52,$FF,$43,$4F,$4D,$50,$4C,$45,$54,$45,$00,$54,$52,$41,$49,$4E ; $CD2C52
    db $49,$4E,$47,$FF,$20,$57,$45,$41,$50,$4F,$4E,$00,$50,$4F,$57,$45 ; $CD2C62
    db $52,$20,$55,$50,$FF,$20,$20,$45,$58,$49,$54,$FF,$20,$20,$42,$4F ; $CD2C72
    db $4D,$42,$FF,$20,$20,$53,$48,$4F,$54,$00,$20,$20,$42,$55,$52,$53 ; $CD2C82
    db $54,$FF,$20,$20,$4D,$41,$50,$FF,$20,$44,$45,$53,$54,$52,$4F,$59 ; $CD2C92
    db $00,$20,$20,$4E,$4F,$44,$45,$53,$FF,$20,$20,$52,$45,$50,$45,$4C ; $CD2CA2
    db $00,$20,$4D,$4F,$4E,$53,$54,$45,$52,$FF,$20,$20,$46,$49,$52,$53 ; $CD2CB2
    db $54,$00,$20,$20,$20,$41,$49,$44,$FF,$20,$46,$52,$45,$45,$5A,$45 ; $CD2CC2
    db $00,$20,$4D,$4F,$4E,$53,$54,$45,$52,$FF,$20,$53,$48,$49,$45,$4C ; $CD2CD2
    db $44,$FF,$20,$50,$41,$52,$54,$59,$00,$20,$50,$4F,$57,$45,$52,$FF ; $CD2CE2
    db $20,$20,$41,$49,$52,$00,$20,$42,$55,$52,$53,$54,$FF,$44,$49,$53 ; $CD2CF2
    db $54,$52,$41,$43,$54,$00,$4D,$4F,$4E,$53,$54,$45,$52,$FF,$20,$4D ; $CD2D02
    db $4F,$4C,$4F,$54,$4F,$56,$FF,$20,$47,$52,$4F,$55,$4E,$44,$00,$20 ; $CD2D12
    db $20,$4D,$49,$4E,$45,$FF,$44,$59,$4E,$41,$4D,$49,$54,$45,$FF,$59 ; $CD2D22
    db $4F,$55,$20,$43,$41,$4E,$54,$00,$20,$41,$46,$46,$4F,$52,$44,$FF ; $CD2D32
    db $4D,$41,$58,$49,$4D,$55,$4D,$00,$52,$45,$41,$43,$48,$45,$44,$FF ; $CD2D42
    db $53,$45,$4C,$45,$43,$54,$00,$53,$50,$45,$43,$49,$41,$4C,$FF,$20 ; $CD2D52
    db $45,$51,$55,$49,$50,$00,$20,$50,$4C,$41,$59,$45,$52,$FF,$50,$4C ; $CD2D62
    db $41,$59,$45,$52,$00,$20,$4F,$4E,$45,$FF,$50,$4C,$41,$59,$45,$52 ; $CD2D72
    db $00,$20,$54,$57,$4F,$FF,$20,$FF                                 ; $CD2D82
dev_test_passwords:
    db $30,$52,$32,$31,$30,$52,$35,$44,$57,$35,$44,$39,$30,$47,$31,$31 ; $CD2D8A
    db $30,$38,$35,$47,$42,$35,$51,$30,$30,$56,$32,$31,$30,$34,$35,$43 ; $CD2D9A
    db $40,$35,$44,$52,$30,$4B,$31,$31,$30,$57,$35,$4A,$58,$35,$43,$35 ; $CD2DAA
    db $5A,$40,$31,$30,$34,$34,$48,$47,$4C,$48,$32,$53,$48,$48,$4E,$31 ; $CD2DBA
    db $53,$50,$4A,$44,$56,$35,$52,$34,$30,$48,$31,$31,$30,$34,$35,$35 ; $CD2DCA
    db $50,$35,$52,$34,$48,$34,$31,$31,$30,$30,$35,$43,$51,$35,$43,$51 ; $CD2DDA
    db $30,$30,$31,$31,$50,$52,$33,$4D,$4C,$36,$40,$59,$00,$01,$19,$07 ; $CD2DEA
    db $02,$02,$01,$23,$07,$03,$04,$01,$2D,$07,$04,$06,$01,$32,$07,$05 ; $CD2DFA
    db $08,$02,$37,$07,$05,$0A,$02,$3C,$07,$06,$0B,$02,$41,$07,$07,$0C ; $CD2E0A
    db $02,$46,$08,$07,$0D,$03,$4B,$08,$08,$0E,$03,$50,$08,$08,$0F,$03 ; $CD2E1A
    db $55,$09,$09,$00,$01,$19,$07,$02,$02,$01,$23,$07,$03,$04,$01,$2D ; $CD2E2A
    db $07,$04,$05,$01,$32,$07,$05,$06,$02,$37,$07,$05,$07,$02,$3C,$07 ; $CD2E3A
    db $06,$08,$02,$41,$07,$07,$09,$02,$46,$08,$07,$0A,$03,$4B,$08,$08 ; $CD2E4A
    db $0B,$03,$50,$08,$08,$0C,$03,$55,$09,$09,$00,$01,$14,$07,$02,$02 ; $CD2E5A
    db $01,$19,$07,$03,$04,$01,$1E,$07,$05,$06,$02,$23,$07,$06,$07,$02 ; $CD2E6A
    db $28,$08,$07,$08,$02,$2D,$08,$08,$09,$03,$32,$08,$09,$0A,$03,$37 ; $CD2E7A
    db $09,$09,$0B,$03,$3C,$09,$0A,$0C,$04,$41,$09,$0A,$0D,$04,$46,$0A ; $CD2E8A
    db $0A,$00,$01,$1E,$06,$01,$02,$01,$28,$06,$02,$04,$01,$32,$06,$03 ; $CD2E9A
    db $06,$01,$3C,$06,$04,$08,$01,$46,$07,$04,$0A,$02,$4B,$07,$05,$0C ; $CD2EAA
    db $02,$50,$07,$05,$0D,$02,$55,$08,$06,$0E,$02,$5A,$08,$06,$0F,$02 ; $CD2EBA
    db $5F,$08,$07,$0F,$02,$64,$08,$08,$00,$01,$1E,$06,$01,$02,$01,$28 ; $CD2ECA
    db $06,$02,$04,$01,$32,$06,$03,$06,$01,$3C,$06,$04,$08,$01,$46,$07 ; $CD2EDA
    db $04,$0A,$02,$4B,$07,$05,$0B,$02,$50,$07,$05,$0C,$02,$55,$08,$06 ; $CD2EEA
    db $0D,$02,$5A,$08,$06,$0E,$02,$5F,$08,$07,$0F,$02,$64,$08,$08,$00 ; $CD2EFA
    db $01,$0F,$07,$03,$02,$01,$14,$07,$04,$04,$02,$19,$07,$05,$06,$02 ; $CD2F0A
    db $1E,$07,$06,$08,$02,$23,$08,$07,$09,$03,$28,$08,$08,$0A,$03,$2D ; $CD2F1A
    db $08,$09,$0A,$03,$32,$09,$09,$0B,$04,$37,$09,$0A,$0B,$04,$3C,$09 ; $CD2F2A
    db $0A,$0B,$04,$41,$0A,$0A,$02,$0C,$0B,$00,$01,$0D,$06,$00,$03,$0B ; $CD2F3A
    db $05,$09,$0E,$02,$00,$00,$0C,$0A,$00,$00,$06,$03,$08,$07,$02,$0C ; $CD2F4A
    db $0B,$00                                                         ; $CD2F5A
L_CD2F5C:
    LDX #$0000                      ; $CD2F5C  A2 00 00     mX
    STX $A0                         ; $CD2F5F  86 A0        mX
    LDX $BA                         ; $CD2F61  A6 BA        mX
    JSR L_CD2FE2                    ; $CD2F63  20 E2 2F     mX
    LDA $BC                         ; $CD2F66  A5 BC        mX
    JSR L_CD2FC1                    ; $CD2F68  20 C1 2F     mX
    LDX $C0                         ; $CD2F6B  A6 C0        mX
    JSR L_CD2FE2                    ; $CD2F6D  20 E2 2F     mX
    LDA $C2                         ; $CD2F70  A5 C2        mX
    JSR L_CD2FC1                    ; $CD2F72  20 C1 2F     mX
    LDA $AA                         ; $CD2F75  A5 AA        mX
    BEQ L_CD2F83                    ; $CD2F77  F0 0A        mX
    LDX $C6                         ; $CD2F79  A6 C6        mX
    JSR L_CD2FE2                    ; $CD2F7B  20 E2 2F     mX
    LDA $C8                         ; $CD2F7E  A5 C8        mX
    JSR L_CD2FC1                    ; $CD2F80  20 C1 2F     mX
L_CD2F83:
    LDX $D2                         ; $CD2F83  A6 D2        mX
    JSR L_CD2FE2                    ; $CD2F85  20 E2 2F     mX
    LDA $D0                         ; $CD2F88  A5 D0        mX
    JSR L_CD2FC1                    ; $CD2F8A  20 C1 2F     mX
    LDX $CC                         ; $CD2F8D  A6 CC        mX
    JSR L_CD2FE2                    ; $CD2F8F  20 E2 2F     mX
    LDA $CE                         ; $CD2F92  A5 CE        mX
    CMP $E6                         ; $CD2F94  C5 E6        mX
    BPL L_CD2F9A                    ; $CD2F96  10 02        mX
    LDA $E6                         ; $CD2F98  A5 E6        mX
L_CD2F9A:
    JSR L_CD2FC1                    ; $CD2F9A  20 C1 2F     mX
    LDX #$0004                      ; $CD2F9D  A2 04 00     mX
    LDA $AA                         ; $CD2FA0  A5 AA        mX
    BEQ L_CD2FA7                    ; $CD2FA2  F0 03        mX
    LDX #$0005                      ; $CD2FA4  A2 05 00     mX
L_CD2FA7:
    TXA                             ; $CD2FA7  8A           mX
    LDX $A0                         ; $CD2FA8  A6 A0        mX
    STZ $A0                         ; $CD2FAA  64 A0        mX
    STZ $A1                         ; $CD2FAC  64 A1        mX
    JSR L_CD2FC1                    ; $CD2FAE  20 C1 2F     mX
    CMP #$55                        ; $CD2FB1  C9 55        mX
    BCC L_CD2FC0                    ; $CD2FB3  90 0B        mX
    LDA $B6                         ; $CD2FB5  A5 B6        mX
    CMP #$0A                        ; $CD2FB7  C9 0A        mX
    BEQ L_CD2FC0                    ; $CD2FB9  F0 05        mX
    LDA $B4                         ; $CD2FBB  A5 B4        mX
    INC                             ; $CD2FBD  1A           mX
    STA $B6                         ; $CD2FBE  85 B6        mX
L_CD2FC0:
    RTS                             ; $CD2FC0  60           mX
L_CD2FC1:
    STX $4204                       ; $CD2FC1  8E 04 42     mX
    STA $4206                       ; $CD2FC4  8D 06 42     mX
    NOP                             ; $CD2FC7  EA           mX
    NOP                             ; $CD2FC8  EA           mX
    NOP                             ; $CD2FC9  EA           mX
    NOP                             ; $CD2FCA  EA           mX
    NOP                             ; $CD2FCB  EA           mX
    NOP                             ; $CD2FCC  EA           mX
    NOP                             ; $CD2FCD  EA           mX
    NOP                             ; $CD2FCE  EA           mX
    NOP                             ; $CD2FCF  EA           mX
    REP #$20                        ; $CD2FD0  C2 20        mX
    LDA $4214                       ; $CD2FD2  AD 14 42     MX
    BPL L_CD2FDA                    ; $CD2FD5  10 03        MX
    LDA #$0064                      ; $CD2FD7  A9 64 00     MX
L_CD2FDA:
    CLC                             ; $CD2FDA  18           MX
    ADC $A0                         ; $CD2FDB  65 A0        MX
    STA $A0                         ; $CD2FDD  85 A0        MX
    SEP #$20                        ; $CD2FDF  E2 20        MX
    RTS                             ; $CD2FE1  60           mX
L_CD2FE2:
    PHA                             ; $CD2FE2  48           mX
    REP #$20                        ; $CD2FE3  C2 20        mX
    TXA                             ; $CD2FE5  8A           MX
    ASL                             ; $CD2FE6  0A           MX
    ASL                             ; $CD2FE7  0A           MX
    STA $5C                         ; $CD2FE8  85 5C        MX
    ASL                             ; $CD2FEA  0A           MX
    ASL                             ; $CD2FEB  0A           MX
    ASL                             ; $CD2FEC  0A           MX
    PHA                             ; $CD2FED  48           MX
    CLC                             ; $CD2FEE  18           MX
    ADC $5C                         ; $CD2FEF  65 5C        MX
    STA $5C                         ; $CD2FF1  85 5C        MX
    PLA                             ; $CD2FF3  68           MX
    ASL                             ; $CD2FF4  0A           MX
    CLC                             ; $CD2FF5  18           MX
    ADC $5C                         ; $CD2FF6  65 5C        MX
    TAX                             ; $CD2FF8  AA           MX
    SEP #$20                        ; $CD2FF9  E2 20        MX
    PLA                             ; $CD2FFB  68           mX
    RTS                             ; $CD2FFC  60           mX
character_pairs:
    db $00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$01,$00,$01,$02,$01,$03 ; $CD2FFD
    db $01,$04,$01,$05,$02,$00,$02,$01,$02,$03,$02,$04,$02,$05,$03,$00 ; $CD300D
    db $03,$01,$03,$02,$03,$04,$03,$05,$04,$00,$04,$01,$04,$02,$04,$03 ; $CD301D
    db $04,$05,$05,$00,$05,$01,$05,$02,$05,$03,$05,$04                 ; $CD302D
password_decode:
    STZ $74                         ; $CD3039  64 74        mX  password_invalid
    JSR password_xor                ; $CD303B  20 3E 32     mX
    LDA $64                         ; $CD303E  A5 64        mX
    PHA                             ; $CD3040  48           mX
    AND #$0F                        ; $CD3041  29 0F        mX
    STA $64                         ; $CD3043  85 64        mX
    PLA                             ; $CD3045  68           mX
    AND #$10                        ; $CD3046  29 10        mX
    LSR                             ; $CD3048  4A           mX
    STA $5C                         ; $CD3049  85 5C        mX
    LDA $69                         ; $CD304B  A5 69        mX
    PHA                             ; $CD304D  48           mX
    AND #$03                        ; $CD304E  29 03        mX
    STA $69                         ; $CD3050  85 69        mX
    PLA                             ; $CD3052  68           mX
    AND #$1C                        ; $CD3053  29 1C        mX
    LSR                             ; $CD3055  4A           mX
    LSR                             ; $CD3056  4A           mX
    ORA $5C                         ; $CD3057  05 5C        mX
    STA $5C                         ; $CD3059  85 5C        mX
    PHA                             ; $CD305B  48           mX
    JSR password_checksum           ; $CD305C  20 98 33     mX
    PLA                             ; $CD305F  68           mX
    CMP $5C                         ; $CD3060  C5 5C        mX
    BEQ L_CD3069                    ; $CD3062  F0 05        mX
    LDA #$01                        ; $CD3064  A9 01        mX
    STA $74                         ; $CD3066  85 74        mX  password_invalid
    RTS                             ; $CD3068  60           mX
L_CD3069:
    LDA $64                         ; $CD3069  A5 64        mX
    AND #$01                        ; $CD306B  29 01        mX
    CMP $0212                       ; $CD306D  CD 12 02     mX  two_players
    BNE L_CD309B                    ; $CD3070  D0 29        mX
    STA $0212                       ; $CD3072  8D 12 02     mX  two_players
    LDA $64                         ; $CD3075  A5 64        mX
    AND #$0C                        ; $CD3077  29 0C        mX
    STA $0214                       ; $CD3079  8D 14 02     mX  level_counter
    BEQ L_CD309B                    ; $CD307C  F0 1D        mX
    LDA $65                         ; $CD307E  A5 65        mX
    ASL                             ; $CD3080  0A           mX
    STA $5C                         ; $CD3081  85 5C        mX
    STZ $5D                         ; $CD3083  64 5D        mX
    LDX $5C                         ; $CD3085  A6 5C        mX
    LDA $CD2FFD,X                   ; $CD3087  BF FD 2F CD  mX
    STA $0220                       ; $CD308B  8D 20 02     mX  p1_character
    LDA $CD2FFE,X                   ; $CD308E  BF FE 2F CD  mX
    STA $025E                       ; $CD3092  8D 5E 02     mX  p2_character
    LDA $66                         ; $CD3095  A5 66        mX
    CMP #$20                        ; $CD3097  C9 20        mX
    BCC L_CD309E                    ; $CD3099  90 03        mX
L_CD309B:
    JMP L_CD3122                    ; $CD309B  4C 22 31     mX
L_CD309E:
    STA $0258                       ; $CD309E  8D 58 02     mX  p1_lives
    LDA $67                         ; $CD30A1  A5 67        mX
    CMP #$20                        ; $CD30A3  C9 20        mX
    BCS L_CD309B                    ; $CD30A5  B0 F4        mX
    STA $0296                       ; $CD30A7  8D 96 02     mX  p2_lives
    LDA $69                         ; $CD30AA  A5 69        mX
    AND #$03                        ; $CD30AC  29 03        mX
    STA $5C                         ; $CD30AE  85 5C        mX
    LDA $68                         ; $CD30B0  A5 68        mX
    ASL                             ; $CD30B2  0A           mX
    ASL                             ; $CD30B3  0A           mX
    ORA $5C                         ; $CD30B4  05 5C        mX
    STA $5C                         ; $CD30B6  85 5C        mX
    STZ $5D                         ; $CD30B8  64 5D        mX
    LDX $5C                         ; $CD30BA  A6 5C        mX
    LDA #$0B                        ; $CD30BC  A9 0B        mX
    STX $4204                       ; $CD30BE  8E 04 42     mX
    STA $4206                       ; $CD30C1  8D 06 42     mX
    NOP                             ; $CD30C4  EA           mX
    NOP                             ; $CD30C5  EA           mX
    NOP                             ; $CD30C6  EA           mX
    NOP                             ; $CD30C7  EA           mX
    NOP                             ; $CD30C8  EA           mX
    NOP                             ; $CD30C9  EA           mX
    NOP                             ; $CD30CA  EA           mX
    NOP                             ; $CD30CB  EA           mX
    NOP                             ; $CD30CC  EA           mX
    REP #$20                        ; $CD30CD  C2 20        mX
    LDA $4214                       ; $CD30CF  AD 14 42     MX
    SEP #$20                        ; $CD30D2  E2 20        MX
    CMP #$0B                        ; $CD30D4  C9 0B        mX
    BCS L_CD3122                    ; $CD30D6  B0 4A        mX
    STA $022E                       ; $CD30D8  8D 2E 02     mX  p1_stat_copy
    STA $022C                       ; $CD30DB  8D 2C 02     mX  p1_stat
    LDA $4216                       ; $CD30DE  AD 16 42     mX
    CMP #$0B                        ; $CD30E1  C9 0B        mX
    BCS L_CD3122                    ; $CD30E3  B0 3D        mX
    STA $026C                       ; $CD30E5  8D 6C 02     mX  p2_stat_copy
    STA $026A                       ; $CD30E8  8D 6A 02     mX  p2_stat
    LDX #$0006                      ; $CD30EB  A2 06 00     mX
    JSR password_unpack_money       ; $CD30EE  20 27 31     mX
    STX $0224                       ; $CD30F1  8E 24 02     mX  p1_money
    LDX #$0009                      ; $CD30F4  A2 09 00     mX
    JSR password_unpack_money       ; $CD30F7  20 27 31     mX
    STX $0262                       ; $CD30FA  8E 62 02     mX  p2_money
    STZ $0222                       ; $CD30FD  9C 22 02     mX
    STZ $AA                         ; $CD3100  64 AA        mX
    LDA $0212                       ; $CD3102  AD 12 02     mX  two_players
    EOR #$01                        ; $CD3105  49 01        mX
    STA $0260                       ; $CD3107  8D 60 02     mX  p2_is_cpu
    JSR L_CD0599                    ; $CD310A  20 99 05     mX
    JSR L_CD05E2                    ; $CD310D  20 E2 05     mX
    JSR L_CD05B1                    ; $CD3110  20 B1 05     mX
    JSR L_CD05A5                    ; $CD3113  20 A5 05     mX
    JSR L_CD05E2                    ; $CD3116  20 E2 05     mX
    JSR L_CD05BD                    ; $CD3119  20 BD 05     mX
    SEP #$20                        ; $CD311C  E2 20        mX
    JSR L_CD328A                    ; $CD311E  20 8A 32     mX
    RTS                             ; $CD3121  60           mX
L_CD3122:
    LDA #$01                        ; $CD3122  A9 01        mX
    STA $74                         ; $CD3124  85 74        mX  password_invalid
    RTS                             ; $CD3126  60           mX
password_unpack_money:
    LDA $64,X                       ; $CD3127  B5 64        mX
    ASL                             ; $CD3129  0A           mX
    ASL                             ; $CD312A  0A           mX
    ASL                             ; $CD312B  0A           mX
    STA $5D                         ; $CD312C  85 5D        mX
    LDA $65,X                       ; $CD312E  B5 65        mX
    PHA                             ; $CD3130  48           mX
    LSR                             ; $CD3131  4A           mX
    LSR                             ; $CD3132  4A           mX
    ORA $5D                         ; $CD3133  05 5D        mX
    STA $5D                         ; $CD3135  85 5D        mX
    PLA                             ; $CD3137  68           mX
    ASL                             ; $CD3138  0A           mX
    ASL                             ; $CD3139  0A           mX
    ASL                             ; $CD313A  0A           mX
    ASL                             ; $CD313B  0A           mX
    ASL                             ; $CD313C  0A           mX
    ASL                             ; $CD313D  0A           mX
    AND #$C0                        ; $CD313E  29 C0        mX
    STA $5C                         ; $CD3140  85 5C        mX
    LDA $66,X                       ; $CD3142  B5 66        mX
    ASL                             ; $CD3144  0A           mX
    AND #$3E                        ; $CD3145  29 3E        mX
    ORA $5C                         ; $CD3147  05 5C        mX
    STA $5C                         ; $CD3149  85 5C        mX
    LDX $5C                         ; $CD314B  A6 5C        mX
    RTS                             ; $CD314D  60           mX
password_text_to_values:
    LDA #$00                        ; $CD314E  A9 00        mX
    STA $74                         ; $CD3150  85 74        mX  password_invalid
    LDX #$0000                      ; $CD3152  A2 00 00     mX
L_CD3155:
    LDA $7F9560,X                   ; $CD3155  BF 60 95 7F  mX  password_text
    PHX                             ; $CD3159  DA           mX
    LDX #$001F                      ; $CD315A  A2 1F 00     mX
L_CD315D:
    CMP $CD28B5,X                   ; $CD315D  DF B5 28 CD  mX
    BEQ L_CD316C                    ; $CD3161  F0 09        mX
    DEX                             ; $CD3163  CA           mX
    BPL L_CD315D                    ; $CD3164  10 F7        mX
    PLX                             ; $CD3166  FA           mX
    LDA #$01                        ; $CD3167  A9 01        mX
    STA $74                         ; $CD3169  85 74        mX  password_invalid
    RTS                             ; $CD316B  60           mX
L_CD316C:
    TXA                             ; $CD316C  8A           mX
    PLX                             ; $CD316D  FA           mX
    STA $64,X                       ; $CD316E  95 64        mX
    INX                             ; $CD3170  E8           mX
    CPX #$000C                      ; $CD3171  E0 0C 00     mX
    BNE L_CD3155                    ; $CD3174  D0 DF        mX
    RTS                             ; $CD3176  60           mX
password_values_to_text:
    LDX #$0000                      ; $CD3177  A2 00 00     mX
L_CD317A:
    LDA $64,X                       ; $CD317A  B5 64        mX
    STA $5C                         ; $CD317C  85 5C        mX
    STZ $5D                         ; $CD317E  64 5D        mX
    PHX                             ; $CD3180  DA           mX
    LDX $5C                         ; $CD3181  A6 5C        mX
    LDA $CD28B5,X                   ; $CD3183  BF B5 28 CD  mX
    PLX                             ; $CD3187  FA           mX
    STA $7F9560,X                   ; $CD3188  9F 60 95 7F  mX  password_text
    INX                             ; $CD318C  E8           mX
    CPX #$000C                      ; $CD318D  E0 0C 00     mX
    BNE L_CD317A                    ; $CD3190  D0 E8        mX
    LDA #$FF                        ; $CD3192  A9 FF        mX
    STA $7F9560,X                   ; $CD3194  9F 60 95 7F  mX  password_text
    RTS                             ; $CD3198  60           mX
password_encode:
    LDX #$000C                      ; $CD3199  A2 0C 00     mX
    LDA #$00                        ; $CD319C  A9 00        mX
L_CD319E:
    STA $63,X                       ; $CD319E  95 63        mX
    DEX                             ; $CD31A0  CA           mX
    BNE L_CD319E                    ; $CD31A1  D0 FB        mX
    STZ $74                         ; $CD31A3  64 74        mX  password_invalid
    LDA $0214                       ; $CD31A5  AD 14 02     mX  level_counter
    AND #$1E                        ; $CD31A8  29 1E        mX
    ORA $0212                       ; $CD31AA  0D 12 02     mX  two_players
    STA $64                         ; $CD31AD  85 64        mX
    LDX #$0000                      ; $CD31AF  A2 00 00     mX
L_CD31B2:
    LDA $0220                       ; $CD31B2  AD 20 02     mX  p1_character
    CMP $CD2FFD,X                   ; $CD31B5  DF FD 2F CD  mX
    BNE L_CD31C4                    ; $CD31B9  D0 09        mX
    LDA $025E                       ; $CD31BB  AD 5E 02     mX  p2_character
    CMP $CD2FFE,X                   ; $CD31BE  DF FE 2F CD  mX
    BEQ L_CD31D0                    ; $CD31C2  F0 0C        mX
L_CD31C4:
    INX                             ; $CD31C4  E8           mX
    INX                             ; $CD31C5  E8           mX
    CPX #$0040                      ; $CD31C6  E0 40 00     mX
    BCC L_CD31B2                    ; $CD31C9  90 E7        mX
    LDA #$01                        ; $CD31CB  A9 01        mX
    STA $74                         ; $CD31CD  85 74        mX  password_invalid
    RTS                             ; $CD31CF  60           mX
L_CD31D0:
    TXA                             ; $CD31D0  8A           mX
    LSR                             ; $CD31D1  4A           mX
    STA $65                         ; $CD31D2  85 65        mX
    LDA $0258                       ; $CD31D4  AD 58 02     mX  p1_lives
    STA $66                         ; $CD31D7  85 66        mX
    LDA $0296                       ; $CD31D9  AD 96 02     mX  p2_lives
    STA $67                         ; $CD31DC  85 67        mX
    LDA $022C                       ; $CD31DE  AD 2C 02     mX  p1_stat
    ASL                             ; $CD31E1  0A           mX
    ASL                             ; $CD31E2  0A           mX
    ASL                             ; $CD31E3  0A           mX
    CLC                             ; $CD31E4  18           mX
    ADC $022C                       ; $CD31E5  6D 2C 02     mX  p1_stat
    ADC $022C                       ; $CD31E8  6D 2C 02     mX  p1_stat
    ADC $022C                       ; $CD31EB  6D 2C 02     mX  p1_stat
    ADC $026A                       ; $CD31EE  6D 6A 02     mX  p2_stat
    PHA                             ; $CD31F1  48           mX
    LSR                             ; $CD31F2  4A           mX
    LSR                             ; $CD31F3  4A           mX
    STA $68                         ; $CD31F4  85 68        mX
    PLA                             ; $CD31F6  68           mX
    AND #$03                        ; $CD31F7  29 03        mX
    STA $69                         ; $CD31F9  85 69        mX
    REP #$20                        ; $CD31FB  C2 20        mX
    LDA $0224                       ; $CD31FD  AD 24 02     MX  p1_money
    PHA                             ; $CD3200  48           MX
    LDA $0262                       ; $CD3201  AD 62 02     MX  p2_money
    PHA                             ; $CD3204  48           MX
    SEP #$20                        ; $CD3205  E2 20        MX
    JSR L_CD3277                    ; $CD3207  20 77 32     mX
    REP #$20                        ; $CD320A  C2 20        mX
    LDA $0224                       ; $CD320C  AD 24 02     MX  p1_money
    LDX #$0006                      ; $CD320F  A2 06 00     MX
    JSR password_pack_money         ; $CD3212  20 4D 32     MX
    LDA $0262                       ; $CD3215  AD 62 02     MX  p2_money
    JSR password_pack_money         ; $CD3218  20 4D 32     MX
    REP #$20                        ; $CD321B  C2 20        MX
    PLA                             ; $CD321D  68           MX
    STA $0262                       ; $CD321E  8D 62 02     MX  p2_money
    PLA                             ; $CD3221  68           MX
    STA $0224                       ; $CD3222  8D 24 02     MX  p1_money
    SEP #$20                        ; $CD3225  E2 20        MX
    JSR password_checksum           ; $CD3227  20 98 33     mX
    ASL                             ; $CD322A  0A           mX
    PHA                             ; $CD322B  48           mX
    AND #$10                        ; $CD322C  29 10        mX
    ORA $64                         ; $CD322E  05 64        mX
    STA $64                         ; $CD3230  85 64        mX
    PLA                             ; $CD3232  68           mX
    ASL                             ; $CD3233  0A           mX
    AND #$1C                        ; $CD3234  29 1C        mX
    ORA $69                         ; $CD3236  05 69        mX
    STA $69                         ; $CD3238  85 69        mX
    JSR password_xor                ; $CD323A  20 3E 32     mX
    RTS                             ; $CD323D  60           mX
password_xor:
    LDX #$000C                      ; $CD323E  A2 0C 00     mX
L_CD3241:
    LDA $63,X                       ; $CD3241  B5 63        mX
    EOR #$15                        ; $CD3243  49 15        mX
    STA $63,X                       ; $CD3245  95 63        mX
    DEX                             ; $CD3247  CA           mX
    BNE L_CD3241                    ; $CD3248  D0 F7        mX
    RTS                             ; $CD324A  60           mX
L_CD324B:
    REP #$20                        ; $CD324B  C2 20        mX
password_pack_money:
    PHA                             ; $CD324D  48           MX
    LSR                             ; $CD324E  4A           MX
    LSR                             ; $CD324F  4A           MX
    LSR                             ; $CD3250  4A           MX
    STA $5C                         ; $CD3251  85 5C        MX
    LDA $5D                         ; $CD3253  A5 5D        MX
    AND #$001F                      ; $CD3255  29 1F 00     MX
    STA $64,X                       ; $CD3258  95 64        MX
    INX                             ; $CD325A  E8           MX
    PLA                             ; $CD325B  68           MX
    PHA                             ; $CD325C  48           MX
    ASL                             ; $CD325D  0A           MX
    ASL                             ; $CD325E  0A           MX
    STA $5C                         ; $CD325F  85 5C        MX
    LDA $5D                         ; $CD3261  A5 5D        MX
    AND #$001F                      ; $CD3263  29 1F 00     MX
    STA $64,X                       ; $CD3266  95 64        MX
    INX                             ; $CD3268  E8           MX
    PLA                             ; $CD3269  68           MX
    LSR                             ; $CD326A  4A           MX
    SEP #$20                        ; $CD326B  E2 20        MX
    AND #$1F                        ; $CD326D  29 1F        mX
    STA $64,X                       ; $CD326F  95 64        mX
    INX                             ; $CD3271  E8           mX
    REP #$20                        ; $CD3272  C2 20        mX
    RTS                             ; $CD3274  60           MX
L_CD3275:
    SEP #$20                        ; $CD3275  E2 20        MX
L_CD3277:
    JSR L_CD0599                    ; $CD3277  20 99 05     mX
    JSR add_equipment_value         ; $CD327A  20 9D 32     mX
    JSR L_CD05B1                    ; $CD327D  20 B1 05     mX
    JSR L_CD05A5                    ; $CD3280  20 A5 05     mX
    JSR add_equipment_value         ; $CD3283  20 9D 32     mX
    JSR L_CD05BD                    ; $CD3286  20 BD 05     mX
    RTS                             ; $CD3289  60           mX
L_CD328A:
    JSR L_CD0599                    ; $CD328A  20 99 05     mX
    JSR subtract_equipment_value    ; $CD328D  20 F7 32     mX
    JSR L_CD05B1                    ; $CD3290  20 B1 05     mX
    JSR L_CD05A5                    ; $CD3293  20 A5 05     mX
    JSR subtract_equipment_value    ; $CD3296  20 F7 32     mX
    JSR L_CD05BD                    ; $CD3299  20 BD 05     mX
    RTS                             ; $CD329C  60           mX
add_equipment_value:
    REP #$20                        ; $CD329D  C2 20        mX
    LDA $CC                         ; $CD329F  A5 CC        MX
    JSR L_CD337B                    ; $CD32A1  20 7B 33     MX
    JSR L_CD3367                    ; $CD32A4  20 67 33     MX
    LDA $D6                         ; $CD32A7  A5 D6        MX
    JSR L_CD335A                    ; $CD32A9  20 5A 33     MX
    JSR L_CD3367                    ; $CD32AC  20 67 33     MX
    LDA $D8                         ; $CD32AF  A5 D8        MX
    JSR L_CD335A                    ; $CD32B1  20 5A 33     MX
    JSR L_CD3367                    ; $CD32B4  20 67 33     MX
    LDA $DA                         ; $CD32B7  A5 DA        MX
    JSR L_CD335A                    ; $CD32B9  20 5A 33     MX
    JSR L_CD3367                    ; $CD32BC  20 67 33     MX
    LDY $B4                         ; $CD32BF  A4 B4        MX
    LDX #$012C                      ; $CD32C1  A2 2C 01     MX
    JSR L_CD3388                    ; $CD32C4  20 88 33     MX
    JSR L_CD3367                    ; $CD32C7  20 67 33     MX
    LDY $BA                         ; $CD32CA  A4 BA        MX
    LDX #$000F                      ; $CD32CC  A2 0F 00     MX
    JSR L_CD3388                    ; $CD32CF  20 88 33     MX
    JSR L_CD3367                    ; $CD32D2  20 67 33     MX
    LDY $C0                         ; $CD32D5  A4 C0        MX
    LDX #$00FA                      ; $CD32D7  A2 FA 00     MX
    JSR L_CD3388                    ; $CD32DA  20 88 33     MX
    JSR L_CD3367                    ; $CD32DD  20 67 33     MX
    LDA $AA                         ; $CD32E0  A5 AA        MX
    AND #$00FF                      ; $CD32E2  29 FF 00     MX
    BEQ L_CD32F2                    ; $CD32E5  F0 0B        MX
    LDY $C6                         ; $CD32E7  A4 C6        MX
    LDX #$0050                      ; $CD32E9  A2 50 00     MX
    JSR L_CD3388                    ; $CD32EC  20 88 33     MX
    JSR L_CD3367                    ; $CD32EF  20 67 33     MX
L_CD32F2:
    SEP #$20                        ; $CD32F2  E2 20        MX
    RTS                             ; $CD32F4  60           mX
L_CD32F5:
    REP #$20                        ; $CD32F5  C2 20        mX
subtract_equipment_value:
    REP #$20                        ; $CD32F7  C2 20        mX
    LDA $D6                         ; $CD32F9  A5 D6        MX
    JSR L_CD335A                    ; $CD32FB  20 5A 33     MX
    JSR L_CD3349                    ; $CD32FE  20 49 33     MX
    LDA $D8                         ; $CD3301  A5 D8        MX
    JSR L_CD335A                    ; $CD3303  20 5A 33     MX
    JSR L_CD3349                    ; $CD3306  20 49 33     MX
    LDA $DA                         ; $CD3309  A5 DA        MX
    JSR L_CD335A                    ; $CD330B  20 5A 33     MX
    JSR L_CD3349                    ; $CD330E  20 49 33     MX
    LDY $B4                         ; $CD3311  A4 B4        MX
    LDX #$012C                      ; $CD3313  A2 2C 01     MX
    JSR L_CD3388                    ; $CD3316  20 88 33     MX
    JSR L_CD3349                    ; $CD3319  20 49 33     MX
    LDY $BA                         ; $CD331C  A4 BA        MX
    LDX #$000F                      ; $CD331E  A2 0F 00     MX
    JSR L_CD3388                    ; $CD3321  20 88 33     MX
    JSR L_CD3349                    ; $CD3324  20 49 33     MX
    LDY $C0                         ; $CD3327  A4 C0        MX
    LDX #$00FA                      ; $CD3329  A2 FA 00     MX
    JSR L_CD3388                    ; $CD332C  20 88 33     MX
    JSR L_CD3349                    ; $CD332F  20 49 33     MX
    LDA $AA                         ; $CD3332  A5 AA        MX
    AND #$0001                      ; $CD3334  29 01 00     MX
    BEQ L_CD3344                    ; $CD3337  F0 0B        MX
    LDY $C6                         ; $CD3339  A4 C6        MX
    LDX #$0050                      ; $CD333B  A2 50 00     MX
    JSR L_CD3388                    ; $CD333E  20 88 33     MX
    JSR L_CD3349                    ; $CD3341  20 49 33     MX
L_CD3344:
    SEP #$20                        ; $CD3344  E2 20        MX
    RTS                             ; $CD3346  60           mX
L_CD3347:
    REP #$20                        ; $CD3347  C2 20        mX
L_CD3349:
    PHA                             ; $CD3349  48           MX
    LDA $AC                         ; $CD334A  A5 AC        MX
    SEC                             ; $CD334C  38           MX
    SBC $01,S                       ; $CD334D  E3 01        MX
    BCS L_CD3354                    ; $CD334F  B0 03        MX
    LDA #$0000                      ; $CD3351  A9 00 00     MX
L_CD3354:
    STA $AC                         ; $CD3354  85 AC        MX
    PLA                             ; $CD3356  68           MX
    RTS                             ; $CD3357  60           MX
L_CD3358:
    REP #$20                        ; $CD3358  C2 20        MX
L_CD335A:
    CMP #$0000                      ; $CD335A  C9 00 00     MX
    BEQ L_CD337A                    ; $CD335D  F0 1B        MX
    DEC                             ; $CD335F  3A           MX
    ASL                             ; $CD3360  0A           MX
    TAX                             ; $CD3361  AA           MX
    LDA $CD11A0,X                   ; $CD3362  BF A0 11 CD  MX
    RTS                             ; $CD3366  60           MX
L_CD3367:
    CLC                             ; $CD3367  18           MX
    ADC $AC                         ; $CD3368  65 AC        MX
    STA $AC                         ; $CD336A  85 AC        MX
    RTS                             ; $CD336C  60           MX
L_CD336D:
    TAY                             ; $CD336D  A8           MX
    LDA #$0000                      ; $CD336E  A9 00 00     MX
L_CD3371:
    DEY                             ; $CD3371  88           MX
    BMI L_CD337A                    ; $CD3372  30 06        MX
    CLC                             ; $CD3374  18           MX
    ADC #$0096                      ; $CD3375  69 96 00     MX
    BRA L_CD3371                    ; $CD3378  80 F7        MX
L_CD337A:
    RTS                             ; $CD337A  60           MX
L_CD337B:
    TAY                             ; $CD337B  A8           MX
    LDA #$0000                      ; $CD337C  A9 00 00     MX
L_CD337F:
    DEY                             ; $CD337F  88           MX
    BMI L_CD337A                    ; $CD3380  30 F8        MX
    CLC                             ; $CD3382  18           MX
    ADC #$00FA                      ; $CD3383  69 FA 00     MX
    BRA L_CD337F                    ; $CD3386  80 F7        MX
L_CD3388:
    PHX                             ; $CD3388  DA           MX
    LDA #$0000                      ; $CD3389  A9 00 00     MX
L_CD338C:
    DEY                             ; $CD338C  88           MX
    BMI L_CD3394                    ; $CD338D  30 05        MX
    CLC                             ; $CD338F  18           MX
    ADC $01,S                       ; $CD3390  63 01        MX
    BRA L_CD338C                    ; $CD3392  80 F8        MX
L_CD3394:
    PLX                             ; $CD3394  FA           MX
    RTS                             ; $CD3395  60           MX
L_CD3396:
    SEP #$20                        ; $CD3396  E2 20        MX
password_checksum:
    LDA #$00                        ; $CD3398  A9 00        mX
    STA $5C                         ; $CD339A  85 5C        mX
    LDX #$000C                      ; $CD339C  A2 0C 00     mX
    STA $75                         ; $CD339F  85 75        mX
L_CD33A1:
    LDA $63,X                       ; $CD33A1  B5 63        mX
    CLC                             ; $CD33A3  18           mX
    ADC $75                         ; $CD33A4  65 75        mX
    CLC                             ; $CD33A6  18           mX
    ADC $5C                         ; $CD33A7  65 5C        mX
    STA $5C                         ; $CD33A9  85 5C        mX
    DEC $75                         ; $CD33AB  C6 75        mX
    DEX                             ; $CD33AD  CA           mX
    BNE L_CD33A1                    ; $CD33AE  D0 F1        mX
    LDA $5C                         ; $CD33B0  A5 5C        mX
    AND #$0F                        ; $CD33B2  29 0F        mX
    STA $5C                         ; $CD33B4  85 5C        mX
    RTS                             ; $CD33B6  60           mX
L_CD33B7:
    LDY #$4560                      ; $CD33B7  A0 60 45     mX
    BRA L_CD33BF                    ; $CD33BA  80 03        mX
L_CD33BC:
    LDY #$5D50                      ; $CD33BC  A0 50 5D     mX
L_CD33BF:
    LDA $5B                         ; $CD33BF  A5 5B        mX
    BNE L_CD33C6                    ; $CD33C1  D0 03        mX
    LDY #$E0E0                      ; $CD33C3  A0 E0 E0     mX
L_CD33C6:
    LDA #$31                        ; $CD33C6  A9 31        mX
    STA $77                         ; $CD33C8  85 77        mX
    LDA #$80                        ; $CD33CA  A9 80        mX
    STA $7C                         ; $CD33CC  85 7C        mX
    STY $75                         ; $CD33CE  84 75        mX
    LDY #$0103                      ; $CD33D0  A0 03 01     mX
    STY $7A                         ; $CD33D3  84 7A        mX
    LDX #$0100                      ; $CD33D5  A2 00 01     mX
    JMP L_CD18DC                    ; $CD33D8  4C DC 18     mX
L_CD33DB:
    RTS                             ; $CD33DB  60           mX
L_CD33DC:
    REP #$20                        ; $CD33DC  C2 20        mX
    LDA #$004B                      ; $CD33DE  A9 4B 00     MX
    LDX #$00BA                      ; $CD33E1  A2 BA 00     MX
    JSR L_CD3429                    ; $CD33E4  20 29 34     MX
    BEQ L_CD3426                    ; $CD33E7  F0 3D        MX
    LDA #$012C                      ; $CD33E9  A9 2C 01     MX
    LDX #$00B4                      ; $CD33EC  A2 B4 00     MX
    JSR L_CD3429                    ; $CD33EF  20 29 34     MX
    BEQ L_CD3426                    ; $CD33F2  F0 32        MX
    LDA #$00FA                      ; $CD33F4  A9 FA 00     MX
    LDX #$00C0                      ; $CD33F7  A2 C0 00     MX
    JSR L_CD3429                    ; $CD33FA  20 29 34     MX
    BEQ L_CD3426                    ; $CD33FD  F0 27        MX
    LDA $AA                         ; $CD33FF  A5 AA        MX
    BEQ L_CD340E                    ; $CD3401  F0 0B        MX
    LDA #$0050                      ; $CD3403  A9 50 00     MX
    LDX #$00C6                      ; $CD3406  A2 C6 00     MX
    JSR L_CD3429                    ; $CD3409  20 29 34     MX
    BEQ L_CD3426                    ; $CD340C  F0 18        MX
L_CD340E:
    LDA #$00FA                      ; $CD340E  A9 FA 00     MX
    LDX #$00CC                      ; $CD3411  A2 CC 00     MX
    JSR L_CD3429                    ; $CD3414  20 29 34     MX
    BEQ L_CD3426                    ; $CD3417  F0 0D        MX
    LDA #$00AC                      ; $CD3419  A9 AC 00     MX
    CMP #$01F4                      ; $CD341C  C9 F4 01     MX
    BCS L_CD3426                    ; $CD341F  B0 05        MX
    LDA #$0008                      ; $CD3421  A9 08 00     MX
    STA $8E                         ; $CD3424  85 8E        MX
L_CD3426:
    SEP #$20                        ; $CD3426  E2 20        MX
    RTS                             ; $CD3428  60           mX
L_CD3429:
    CMP $AC                         ; $CD3429  C5 AC        MX
    BCS L_CD3433                    ; $CD342B  B0 06        MX
    LDA $00,X                       ; $CD342D  B5 00        MX
    CMP $02,X                       ; $CD342F  D5 02        MX
    BNE L_CD3437                    ; $CD3431  D0 04        MX
L_CD3433:
    LDA #$0001                      ; $CD3433  A9 01 00     MX
    RTS                             ; $CD3436  60           MX
L_CD3437:
    LDA #$0000                      ; $CD3437  A9 00 00     MX
    RTS                             ; $CD343A  60           MX
    db $52,$4E,$43,$02,$00,$00,$67,$40,$00,$00,$4C,$0B,$72,$B0,$49,$34 ; $CD343B
    db $04,$03,$1E,$00,$17,$00,$79,$01,$05,$01,$03,$CF,$03,$06,$03,$12 ; $CD344B
    db $FF,$00,$FB,$00,$F3,$2E,$03,$04,$7A,$BD,$42,$EC,$93,$CC,$B3,$8C ; $CD345B
    db $73,$00,$FF,$FC,$00,$FE,$01,$F1,$02,$B1,$04,$60,$04,$40,$04,$80 ; $CD346B
    db $04,$1F,$00,$01,$CF,$30,$41,$BF,$D0,$14,$2F,$81,$FE,$0C,$C0,$00 ; $CD347B
    db $FF,$CF,$00,$40,$00,$40,$D0,$4B,$00,$FF,$98,$01,$EB,$14,$02,$33 ; $CD348B
    db $CC,$13,$EC,$03,$FC,$00,$1F,$01,$FC,$FC,$01,$E8,$0A,$01,$30,$01 ; $CD349B
    db $10,$78,$5F,$04,$01,$5F,$A0,$93,$3F,$C7,$01,$0F,$00,$FF,$BD,$07 ; $CD34AB
    db $01,$06,$1F,$94,$01,$F7,$05,$2C,$FC,$03,$01,$38,$0C,$F3,$1F,$F7 ; $CD34BB
    db $2C,$F0,$04,$01,$F7,$01,$35,$A9,$03,$42,$03,$35,$00,$98,$1F,$93 ; $CD34CB
    db $04,$F1,$0B,$13,$C4,$4C,$93,$00,$1F,$02,$00,$0A,$00,$28,$03,$20 ; $CD34DB
    db $20,$0C,$1D,$EC,$01,$01,$67,$08,$38,$47,$C1,$3E,$60,$2C,$12,$E0 ; $CD34EB
    db $90,$07,$07,$80,$38,$01,$C0,$B0,$02,$3F,$90,$01,$FE,$05,$62,$FA ; $CD34FB
    db $DF,$85,$7A,$CC,$9F,$DA,$05,$0A,$00,$13,$00,$85,$01,$1D,$1B,$C0 ; $CD350B
    db $C3,$F8,$1C,$E3,$02,$09,$77,$88,$00,$1F,$24,$03,$C4,$00,$1C,$A2 ; $CD351B
    db $19,$77,$67,$3F,$7F,$00,$01,$9F,$60,$F5,$08,$F9,$04,$B0,$3F,$9F ; $CD352B
    db $00,$76,$87,$77,$51,$FA,$1D,$FE,$ED,$07,$FF,$6B,$F9,$06,$13,$7F ; $CD353B
    db $C2,$03,$3F,$00,$12,$33,$5C,$1F,$30,$80,$7F,$5F,$20,$DF,$20,$AF ; $CD354B
    db $10,$EF,$10,$D7,$08,$0E,$DF,$00,$CF,$F1,$05,$3F,$37,$08,$8B,$85 ; $CD355B
    db $E7,$08,$07,$01,$80,$00,$C0,$8D,$05,$01,$40,$80,$11,$EF,$04,$01 ; $CD356B
    db $06,$83,$2B,$FF,$80,$E1,$07,$3E,$7F,$11,$31,$70,$01,$02,$06,$01 ; $CD357B
    db $0A,$05,$1C,$03,$B8,$27,$E0,$1F,$E4,$0C,$43,$37,$02,$00,$01,$08 ; $CD358B
    db $04,$40,$18,$00,$E0,$8C,$12,$73,$0C,$F3,$18,$01,$18,$F7,$D0,$0E ; $CD359B
    db $FB,$6B,$80,$E1,$0F,$01,$00,$0C,$03,$D9,$40,$01,$02,$C3,$03,$12 ; $CD35AB
    db $FF,$E2,$08,$9F,$D8,$D8,$01,$F8,$31,$05,$FA,$01,$06,$F9,$68,$97 ; $CD35BB
    db $48,$06,$07,$02,$00,$BB,$44,$2F,$D0,$17,$E8,$07,$F8,$24,$0F,$F0 ; $CD35CB
    db $01,$00,$BB,$00,$2F,$00,$17,$00,$07,$00,$4C,$0F,$01,$FF,$F6,$17 ; $CD35DB
    db $01,$5A,$91,$07,$FE,$38,$89,$E8,$33,$C0,$03,$07,$F3,$04,$F2,$04 ; $CD35EB
    db $53,$F3,$01,$E2,$04,$6B,$34,$89,$A3,$34,$F5,$04,$4F,$98,$3D,$1B ; $CD35FB
    db $EE,$00,$4D,$EF,$1F,$2C,$B1,$F1,$16,$00,$1C,$03,$38,$2B,$EF,$01 ; $CD360B
    db $FD,$3C,$00,$EA,$01,$3F,$F0,$E0,$1B,$C1,$3E,$2A,$48,$D5,$1F,$9F ; $CD361B
    db $00,$00,$97,$08,$F8,$02,$00,$55,$00,$48,$AA,$1F,$E0,$1C,$00,$70 ; $CD362B
    db $07,$2E,$73,$AA,$11,$C0,$01,$6B,$20,$8A,$10,$45,$80,$4E,$2A,$38 ; $CD363B
    db $B4,$03,$20,$09,$55,$10,$AA,$80,$9C,$1F,$FC,$01,$DB,$1F,$2D,$9C ; $CD364B
    db $03,$00,$30,$A0,$1F,$76,$17,$E8,$20,$E3,$4D,$20,$C0,$01,$3F,$FB ; $CD365B
    db $00,$0B,$A0,$40,$58,$15,$5F,$F9,$03,$00,$06,$00,$0C,$50,$40,$C0 ; $CD366B
    db $05,$5F,$BF,$00,$38,$01,$83,$48,$28,$1F,$CE,$00,$00,$B5,$00,$4A ; $CD367B
    db $31,$46,$80,$84,$42,$50,$1F,$58,$23,$F7,$00,$0A,$7E,$80,$DF,$20 ; $CD368B
    db $0B,$1F,$F8,$76,$00,$85,$AD,$00,$CA,$01,$61,$1E,$1E,$00,$B0,$4F ; $CD369B
    db $40,$BF,$A3,$8F,$00,$F5,$ED,$11,$00,$30,$00,$40,$01,$38,$00,$73 ; $CD36AB
    db $1F,$52,$00,$8C,$2D,$10,$8B,$60,$05,$FA,$AB,$60,$54,$37,$F6,$00 ; $CD36BB
    db $B7,$02,$07,$BF,$12,$FF,$10,$FF,$4B,$15,$AB,$A3,$AF,$00,$7F,$CE ; $CD36CB
    db $01,$73,$0C,$9F,$60,$7F,$13,$80,$4A,$B5,$84,$C1,$3F,$89,$43,$4A ; $CD36DB
    db $C9,$80,$3F,$C0,$32,$95,$40,$00,$99,$37,$00,$F6,$C0,$FE,$9A,$A5 ; $CD36EB
    db $0E,$2D,$CF,$48,$41,$1F,$3E,$7E,$C1,$02,$8B,$71,$DF,$01,$3E,$F2 ; $CD36FB
    db $03,$15,$BF,$EC,$73,$BF,$A4,$31,$13,$01,$F9,$38,$15,$DF,$15,$F7 ; $CD370B
    db $EC,$0F,$FF,$EC,$60,$FE,$F8,$07,$0D,$7C,$FE,$09,$44,$1F,$B8,$3B ; $CD371B
    db $E7,$03,$F2,$E0,$33,$37,$80,$AE,$00,$10,$F7,$08,$EB,$04,$FB,$04 ; $CD372B
    db $F5,$E8,$AC,$02,$F8,$00,$4E,$01,$60,$0F,$40,$25,$F3,$00,$7A,$01 ; $CD373B
    db $02,$3F,$40,$F5,$00,$83,$28,$70,$55,$00,$76,$86,$85,$0F,$14,$EA ; $CD374B
    db $80,$55,$02,$01,$49,$AA,$00,$C0,$15,$E8,$02,$6A,$E0,$82,$04,$AA ; $CD375B
    db $55,$40,$2A,$3C,$88,$35,$01,$79,$01,$C1,$1F,$14,$41,$02,$A8,$E6 ; $CD376B
    db $01,$1F,$FE,$1F,$05,$14,$AA,$03,$54,$FF,$0C,$7F,$6F,$10,$B7,$B3 ; $CD377B
    db $18,$00,$5D,$02,$9F,$E7,$08,$50,$EF,$11,$B7,$00,$07,$9F,$40,$49 ; $CD378B
    db $A0,$01,$4C,$B1,$A7,$C1,$A3,$B5,$89,$CF,$FF,$9C,$0D,$E0,$01,$53 ; $CD379B
    db $F8,$CD,$CB,$04,$00,$80,$47,$BF,$C8,$02,$D1,$FE,$FF,$04,$01,$FF ; $CD37AB
    db $1A,$DF,$20,$AE,$59,$EF,$CB,$E9,$9E,$FC,$03,$BF,$40,$7B,$80,$65 ; $CD37BB
    db $80,$5F,$80,$26,$80,$70,$80,$78,$87,$54,$88,$0F,$90,$C0,$3F,$D0 ; $CD37CB
    db $2F,$46,$05,$81,$7E,$FC,$01,$FD,$4B,$AB,$C0,$AF,$D7,$91,$00,$81 ; $CD37DB
    db $28,$E0,$FC,$0E,$41,$02,$FD,$09,$00,$66,$83,$FF,$3E,$FF,$20,$FF ; $CD37EB
    db $97,$1F,$7F,$43,$BF,$08,$37,$BF,$1F,$17,$FF,$5A,$FF,$FF,$7F,$FF ; $CD37FB
    db $BF,$7F,$DF,$FF,$EF,$FF,$F7,$FF,$FB,$08,$2E,$1F,$E2,$3C,$F1,$4A ; $CD380B
    db $F5,$EC,$F3,$64,$E3,$FE,$EB,$CD,$C7,$F8,$D7,$9C,$8F,$0C,$58,$1D ; $CD381B
    db $00,$04,$18,$5B,$1F,$86,$30,$08,$00,$08,$60,$10,$1B,$E4,$0F,$F0 ; $CD382B
    db $14,$EB,$65,$08,$08,$F7,$0B,$F4,$AB,$07,$1B,$A5,$D3,$14,$CC,$22 ; $CD383B
    db $1C,$0B,$EE,$E7,$AD,$01,$EF,$44,$53,$36,$03,$C3,$03,$05,$BE,$40 ; $CD384B
    db $7A,$80,$EF,$4C,$6B,$44,$0B,$42,$2B,$7D,$7B,$D5,$03,$01,$D7,$00 ; $CD385B
    db $DE,$00,$F5,$25,$6D,$08,$20,$D5,$F1,$00,$EE,$01,$B0,$03,$0F,$45 ; $CD386B
    db $3A,$A2,$55,$F6,$B3,$D7,$FD,$80,$17,$C5,$10,$AA,$00,$65,$0C,$00 ; $CD387B
    db $CC,$32,$F9,$03,$03,$B8,$44,$21,$1E,$82,$75,$45,$AA,$DA,$05,$DD ; $CD388B
    db $22,$00,$45,$AA,$B3,$55,$71,$88,$03,$50,$05,$A2,$03,$42,$B3,$55 ; $CD389B
    db $AA,$AA,$55,$08,$03,$50,$23,$07,$00,$18,$B7,$A8,$02,$1B,$A0,$0A ; $CD38AB
    db $C4,$03,$A7,$00,$07,$17,$14,$AA,$A8,$1C,$1B,$A0,$03,$2E,$A8,$50 ; $CD38BB
    db $1B,$04,$51,$12,$84,$5D,$00,$70,$8A,$60,$15,$62,$88,$03,$00,$23 ; $CD38CB
    db $08,$A2,$28,$41,$30,$8E,$00,$67,$35,$36,$02,$19,$03,$40,$03,$55 ; $CD38DB
    db $D2,$D3,$55,$8B,$90,$FF,$02,$AA,$07,$74,$00,$E0,$D3,$11,$80,$00 ; $CD38EB
    db $40,$BF,$83,$72,$80,$85,$73,$24,$90,$CB,$5D,$20,$29,$42,$C1,$14 ; $CD38FB
    db $01,$AA,$01,$54,$00,$2A,$48,$A2,$0A,$41,$86,$18,$88,$34,$98,$96 ; $CD390B
    db $0D,$AA,$81,$44,$54,$82,$F3,$C4,$11,$88,$22,$80,$84,$47,$E0,$02 ; $CD391B
    db $48,$F3,$44,$AA,$08,$73,$D5,$96,$81,$03,$18,$05,$10,$45,$A1,$71 ; $CD392B
    db $49,$A4,$07,$C4,$CA,$E6,$08,$24,$CE,$10,$D2,$06,$55,$35,$02,$26 ; $CD393B
    db $80,$57,$36,$02,$A8,$09,$03,$00,$02,$54,$0D,$A2,$4C,$80,$29,$50 ; $CD394B
    db $E7,$9B,$03,$1B,$05,$50,$09,$A2,$5C,$19,$30,$BB,$45,$D7,$28,$AD ; $CD395B
    db $12,$B0,$07,$16,$41,$29,$80,$8B,$C0,$2A,$31,$18,$82,$03,$04,$52 ; $CD396B
    db $C8,$00,$07,$18,$A0,$2A,$54,$D0,$2E,$71,$39,$BF,$40,$BB,$40,$6B ; $CD397B
    db $81,$2F,$C1,$5F,$B0,$B7,$58,$83,$3C,$25,$88,$B6,$BC,$DD,$D5,$00 ; $CD398B
    db $19,$06,$17,$08,$17,$20,$43,$00,$47,$56,$5D,$D9,$20,$15,$1A,$9D ; $CD399B
    db $87,$5D,$18,$C5,$D1,$E1,$1E,$B4,$83,$DB,$BE,$00,$CD,$10,$6F,$1D ; $CD39AB
    db $01,$00,$EB,$27,$8D,$37,$C8,$49,$F3,$40,$5F,$D9,$BB,$9F,$59,$91 ; $CD39BB
    db $36,$59,$BF,$BF,$F3,$09,$99,$13,$B9,$29,$B7,$89,$DF,$4C,$DF,$17 ; $CD39CB
    db $7F,$60,$80,$0D,$FD,$02,$F6,$09,$3F,$8B,$14,$02,$E3,$11,$7D,$00 ; $CD39DB
    db $B6,$92,$59,$F8,$1B,$EE,$10,$86,$01,$18,$B5,$42,$57,$81,$2C,$D2 ; $CD39EB
    db $25,$1B,$CA,$AF,$00,$E5,$00,$98,$01,$6D,$02,$00,$0D,$DA,$20,$C9 ; $CD39FB
    db $22,$2F,$80,$98,$22,$E0,$15,$36,$3F,$F5,$00,$DD,$00,$D4,$01,$59 ; $CD3A0B
    db $06,$40,$1D,$23,$80,$6A,$60,$3F,$11,$F5,$00,$A0,$0A,$81,$17,$04 ; $CD3A1B
    db $51,$2C,$3F,$85,$28,$7A,$20,$17,$04,$9E,$3F,$01,$46,$11,$09,$A2 ; $CD3A2B
    db $05,$50,$0A,$D7,$5B,$96,$67,$00,$44,$A8,$08,$54,$04,$AB,$0A,$55 ; $CD3A3B
    db $4F,$40,$01,$67,$61,$94,$AA,$40,$C0,$15,$07,$3F,$01,$60,$55,$01 ; $CD3A4B
    db $A8,$01,$2A,$22,$0A,$35,$39,$52,$3F,$70,$54,$00,$A8,$06,$51,$16 ; $CD3A5B
    db $40,$AB,$04,$6C,$01,$F0,$C1,$40,$55,$41,$A8,$85,$80,$47,$A4,$11 ; $CD3A6B
    db $A8,$B0,$43,$50,$30,$8E,$A0,$31,$2A,$02,$54,$05,$02,$A9,$00,$53 ; $CD3A7B
    db $FC,$36,$76,$83,$CD,$0E,$39,$40,$C1,$14,$C8,$F1,$7E,$8C,$7F,$2D ; $CD3A8B
    db $83,$0E,$00,$82,$3C,$01,$77,$47,$CE,$E7,$00,$4F,$08,$CF,$57,$00 ; $CD3A9B
    db $2B,$83,$10,$00,$1F,$AB,$17,$70,$57,$A0,$AB,$50,$54,$A8,$AA,$54 ; $CD3AAB
    db $95,$2A,$8A,$55,$FA,$02,$54,$27,$F3,$F9,$4C,$FE,$01,$0E,$00,$00 ; $CD3ABB
    db $1E,$E0,$F8,$02,$78,$02,$BE,$3A,$41,$F3,$82,$E3,$BB,$44,$C0,$27 ; $CD3ACB
    db $0E,$90,$43,$90,$1C,$4F,$90,$0B,$03,$92,$01,$00,$14,$20,$DF,$E0 ; $CD3ADB
    db $1F,$80,$7D,$7F,$01,$27,$3D,$00,$20,$56,$5D,$D4,$65,$08,$1B,$31 ; $CD3AEB
    db $C3,$EF,$09,$F7,$05,$FB,$03,$FD,$05,$FE,$11,$FF,$09,$FE,$09,$BF ; $CD3AFB
    db $FF,$04,$FD,$FF,$FE,$7F,$FF,$38,$00,$05,$7F,$7D,$7F,$09,$40,$1F ; $CD3B0B
    db $7E,$2F,$FE,$5F,$FE,$3F,$6E,$FC,$24,$18,$28,$F8,$FF,$07,$80,$10 ; $CD3B1B
    db $E3,$5E,$C0,$EA,$04,$A1,$02,$6E,$FD,$03,$00,$05,$F9,$0B,$F0,$14 ; $CD3B2B
    db $E9,$38,$92,$8A,$22,$5A,$CE,$57,$A8,$20,$03,$00,$06,$1D,$50,$0D ; $CD3B3B
    db $EB,$F2,$75,$7D,$00,$30,$AC,$2A,$80,$05,$62,$50,$03,$F6,$01,$E1 ; $CD3B4B
    db $D8,$07,$A5,$1A,$CA,$35,$15,$EA,$2A,$55,$05,$AA,$95,$03,$D5,$20 ; $CD3B5B
    db $B7,$A0,$0A,$40,$15,$88,$04,$22,$40,$14,$02,$A8,$A5,$B7,$A0,$D8 ; $CD3B6B
    db $9F,$88,$55,$74,$41,$2E,$E3,$04,$3C,$21,$28,$82,$30,$45,$01,$A8 ; $CD3B7B
    db $0C,$51,$37,$88,$98,$25,$62,$88,$D8,$53,$3B,$00,$BA,$5C,$7B,$3A ; $CD3B8B
    db $A0,$40,$07,$40,$1A,$02,$75,$14,$40,$26,$80,$37,$13,$A9,$F5,$A8 ; $CD3B9B
    db $03,$15,$AA,$29,$06,$50,$4C,$83,$62,$1D,$5F,$1C,$AB,$54,$54,$4B ; $CD3BAB
    db $00,$70,$07,$41,$3C,$7C,$81,$3F,$00,$75,$E1,$C0,$CD,$40,$95,$81 ; $CD3BBB
    db $2A,$88,$00,$70,$C2,$A1,$C0,$3F,$E3,$8E,$55,$82,$96,$54,$A3,$54 ; $CD3BCB
    db $F3,$E7,$A2,$96,$41,$3A,$92,$74,$24,$2A,$08,$C7,$12,$4E,$A4,$00 ; $CD3BDB
    db $28,$08,$51,$08,$A6,$00,$4D,$01,$9A,$C1,$34,$00,$69,$00,$53,$3E ; $CD3BEB
    db $41,$C0,$2A,$45,$55,$BE,$80,$BC,$00,$E2,$2A,$15,$55,$88,$AA,$80 ; $CD3BFB
    db $3E,$10,$77,$41,$12,$00,$41,$3E,$80,$7F,$64,$15,$30,$A2,$30,$05 ; $CD3C0B
    db $51,$B7,$85,$14,$AA,$00,$8A,$55,$45,$AA,$A2,$80,$0A,$08,$A9,$D1 ; $CD3C1B
    db $C4,$6D,$41,$14,$17,$1F,$C7,$1E,$60,$50,$9F,$5F,$40,$1C,$A2,$01 ; $CD3C2B
    db $55,$20,$2A,$91,$55,$E0,$AA,$18,$C1,$3E,$20,$80,$01,$5C,$15,$47 ; $CD3C3B
    db $DB,$83,$AE,$18,$21,$70,$02,$D2,$20,$0A,$80,$0D,$70,$15,$A8,$D8 ; $CD3C4B
    db $07,$A1,$05,$09,$3A,$A0,$A1,$B1,$49,$01,$95,$00,$75,$02,$50,$81 ; $CD3C5B
    db $5B,$03,$54,$C0,$0A,$18,$DD,$7B,$17,$04,$50,$88,$0E,$2A,$0F,$A0 ; $CD3C6B
    db $05,$50,$00,$AB,$20,$15,$24,$82,$05,$AE,$EE,$35,$4E,$40,$6A,$17 ; $CD3C7B
    db $A2,$8D,$15,$20,$8A,$D3,$17,$0D,$03,$83,$80,$22,$09,$40,$02,$A9 ; $CD3C8B
    db $01,$54,$92,$11,$28,$5F,$0F,$16,$A1,$04,$50,$01,$72,$1F,$03,$AC ; $CD3C9B
    db $E5,$00,$08,$7F,$00,$2B,$44,$08,$A4,$07,$E0,$6B,$0C,$D1,$CC,$00 ; $CD3CAB
    db $11,$C4,$11,$8C,$11,$18,$81,$13,$CC,$39,$A8,$39,$DF,$4A,$40,$00 ; $CD3CBB
    db $56,$F4,$08,$F7,$08,$AE,$50,$C4,$07,$6F,$80,$A7,$E1,$3A,$05,$F6 ; $CD3CCB
    db $13,$D5,$7F,$FF,$7D,$40,$BB,$80,$FE,$01,$77,$79,$D3,$25,$EF,$B5 ; $CD3CDB
    db $F3,$7B,$56,$8B,$1B,$7C,$00,$F8,$8F,$07,$75,$8A,$82,$4D,$15,$EA ; $CD3CEB
    db $DA,$25,$14,$EA,$28,$D5,$50,$AA,$D8,$4B,$05,$B0,$A0,$36,$C0,$02 ; $CD3CFB
    db $EA,$18,$6A,$0A,$FF,$50,$25,$5C,$6C,$30,$12,$DB,$44,$13,$AC,$0D ; $CD3D0B
    db $52,$0E,$A0,$41,$15,$28,$C3,$1A,$80,$61,$00,$40,$A9,$00,$41,$00 ; $CD3D1B
    db $A1,$00,$5F,$AA,$26,$FF,$DB,$0E,$41,$55,$08,$AA,$CB,$43,$AA,$3D ; $CD3D2B
    db $BB,$01,$03,$44,$05,$08,$87,$DF,$55,$0A,$BD,$0F,$1F,$03,$03,$EB ; $CD3D3B
    db $07,$1F,$84,$05,$52,$06,$A8,$02,$51,$0A,$A4,$0C,$51,$0C,$A2,$1D ; $CD3D4B
    db $03,$00,$3C,$D3,$05,$1C,$53,$00,$A6,$1F,$E0,$03,$14,$49,$08,$E8 ; $CD3D5B
    db $7F,$33,$10,$8A,$A7,$60,$BB,$23,$B0,$03,$13,$30,$4D,$00,$6D,$9A ; $CD3D6B
    db $09,$03,$1D,$23,$D6,$03,$D0,$5B,$03,$07,$14,$41,$08,$A2,$01,$9D ; $CD3D7B
    db $03,$5B,$14,$5D,$63,$08,$80,$4C,$1D,$40,$02,$A0,$04,$51,$C6,$67 ; $CD3D8B
    db $07,$50,$03,$01,$45,$AA,$BA,$45,$15,$A2,$0E,$15,$AD,$71,$53,$2B ; $CD3D9B
    db $53,$D4,$1D,$EF,$20,$1F,$7C,$29,$07,$B7,$45,$08,$D7,$31,$38,$0C ; $CD3DAB
    db $82,$98,$02,$68,$92,$88,$52,$48,$92,$90,$42,$40,$0B,$42,$FA,$02 ; $CD3DBB
    db $25,$7F,$FB,$37,$48,$F7,$4E,$90,$5F,$30,$80,$50,$01,$8F,$44,$BB ; $CD3DCB
    db $30,$A2,$5D,$16,$60,$9F,$D2,$06,$2D,$D7,$20,$F1,$06,$25,$73,$44 ; $CD3DDB
    db $6F,$00,$00,$60,$00,$D2,$00,$D8,$00,$08,$63,$01,$36,$08,$F7,$00 ; $CD3DEB
    db $03,$02,$F8,$09,$E2,$66,$09,$38,$19,$47,$C0,$3F,$44,$08,$5C,$01 ; $CD3DFB
    db $F9,$14,$01,$90,$06,$80,$38,$12,$C7,$7F,$00,$1F,$FF,$5F,$FF,$BF ; $CD3E0B
    db $9F,$7F,$3F,$E9,$FF,$75,$7F,$2E,$E4,$80,$8E,$9E,$F3,$1C,$F8,$01 ; $CD3E1B
    db $47,$B8,$C3,$FE,$FF,$FF,$FE,$FB,$F9,$FB,$F1,$FD,$E9,$FA,$D2,$F5 ; $CD3E2B
    db $A5,$EA,$4A,$13,$1D,$3F,$05,$02,$60,$A0,$0D,$00,$1A,$C2,$FF,$B0 ; $CD3E3B
    db $15,$40,$22,$C9,$5D,$BB,$E1,$03,$50,$2A,$F8,$07,$5F,$50,$8A,$77 ; $CD3E4B
    db $20,$58,$A9,$A0,$26,$0F,$A0,$07,$6D,$00,$7A,$80,$05,$4E,$26,$03 ; $CD3E5B
    db $2E,$0A,$54,$31,$13,$A8,$14,$43,$59,$86,$22,$1D,$49,$02,$A6,$08 ; $CD3E6B
    db $98,$25,$E0,$0A,$F8,$1F,$B4,$3F,$54,$A1,$74,$D0,$91,$D7,$80,$75 ; $CD3E7B
    db $31,$1F,$6B,$3F,$80,$F2,$17,$BF,$55,$A6,$C8,$19,$0C,$07,$51,$17 ; $CD3E8B
    db $F4,$EA,$CB,$53,$F9,$FF,$07,$51,$CE,$07,$90,$85,$88,$32,$45,$3B ; $CD3E9B
    db $0E,$88,$37,$44,$33,$19,$03,$BB,$88,$2A,$63,$9C,$11,$98,$2E,$48 ; $CD3EAB
    db $99,$03,$85,$00,$41,$BA,$22,$CD,$45,$BA,$8A,$75,$DC,$1B,$03,$C0 ; $CD3EBB
    db $9C,$18,$A6,$00,$CD,$30,$76,$8A,$D5,$74,$9A,$30,$A8,$9A,$07,$1D ; $CD3ECB
    db $41,$49,$B9,$44,$84,$FE,$51,$6E,$22,$DD,$51,$AE,$22,$DC,$51,$2E ; $CD3EDB
    db $22,$22,$80,$22,$10,$00,$26,$80,$36,$1B,$D5,$03,$07,$B8,$F4,$51 ; $CD3EEB
    db $51,$AC,$AA,$C0,$51,$22,$29,$57,$34,$E3,$88,$77,$14,$23,$08,$0E ; $CD3EFB
    db $3B,$51,$06,$28,$97,$BB,$A9,$40,$1F,$A9,$C0,$35,$03,$55,$14,$88 ; $CD3F0B
    db $88,$26,$55,$0E,$7B,$77,$44,$B3,$1E,$7F,$32,$89,$08,$7F,$32,$51 ; $CD3F1B
    db $95,$A8,$C5,$8C,$B0,$2A,$03,$51,$1F,$A2,$AA,$00,$03,$30,$BF,$CE ; $CD3F2B
    db $01,$40,$15,$02,$AA,$44,$51,$A8,$DB,$5B,$19,$23,$54,$55,$07,$40 ; $CD3F3B
    db $FD,$03,$DB,$A8,$F9,$EA,$AA,$17,$05,$48,$D1,$80,$AA,$A0,$6B,$14 ; $CD3F4B
    db $A2,$3C,$04,$51,$02,$1F,$20,$9C,$0E,$FF,$48,$22,$20,$AF,$95,$75 ; $CD3F5B
    db $E3,$A8,$40,$29,$2A,$88,$15,$10,$EE,$22,$AD,$84,$51,$00,$E1,$BF ; $CD3F6B
    db $01,$33,$31,$01,$F1,$07,$5F,$9F,$20,$73,$7F,$80,$6D,$42,$0F,$A0 ; $CD3F7B
    db $07,$50,$8B,$A8,$55,$54,$3F,$80,$5F,$00,$1F,$20,$1D,$80,$17,$40 ; $CD3F8B
    db $03,$A8,$88,$F9,$2E,$40,$00,$B1,$FB,$04,$EF,$10,$EA,$15,$F5,$0A ; $CD3F9B
    db $EE,$11,$E4,$02,$58,$25,$68,$12,$39,$40,$2C,$40,$28,$40,$30,$41 ; $CD3FAB
    db $24,$42,$38,$45,$80,$4A,$80,$4D,$74,$C9,$81,$4A,$BF,$15,$67,$63 ; $CD3FBB
    db $2A,$D6,$02,$7B,$9C,$E3,$D3,$C9,$FB,$A2,$39,$FF,$E3,$F9,$08,$DF ; $CD3FCB
    db $10,$4C,$17,$03,$45,$A3,$27,$8A,$CE,$09,$1F,$01,$9C,$FB,$17,$02 ; $CD3FDB
    db $E9,$FB,$79,$AA,$0D,$3F,$00,$15,$33,$0E,$55,$A0,$AA,$05,$C1,$1F ; $CD3FEB
    db $57,$50,$77,$06,$E0,$04,$1B,$08,$A0,$88,$01,$3A,$0C,$51,$FD,$AD ; $CD3FFB
    db $20,$F7,$04,$51,$78,$00,$02,$11,$55,$FD,$0A,$39,$F3,$0D,$08,$D2 ; $CD400B
    db $9F,$86,$07,$01,$80,$28,$00,$F4,$5D,$33,$8A,$D8,$45,$8A,$10,$FD ; $CD401B
    db $01,$3F,$D2,$FB,$8A,$55,$30,$31,$AD,$AB,$3F,$9F,$B3,$02,$1E,$8D ; $CD402B
    db $28,$40,$05,$7F,$5C,$82,$F0,$54,$07,$50,$22,$80,$0F,$50,$06,$A0 ; $CD403B
    db $14,$49,$2A,$90,$54,$20,$2B,$40,$01,$AA,$2C,$53,$05,$A2,$1A,$3F ; $CD404B
    db $A6,$02,$4D,$07,$85,$1A,$8A,$34,$77,$4A,$F3,$17,$2F,$83,$D7,$47 ; $CD405B
    db $72,$5F,$03,$E3,$40,$9A,$88,$52,$60,$9A,$A8,$12,$10,$AA,$48,$32 ; $CD406B
    db $90,$62,$B8,$42,$FC,$08,$1E,$EF,$4F,$90,$06,$01,$03,$F0,$0F,$C2 ; $CD407B
    db $3D,$CC,$33,$04,$05,$E3,$1C,$FB,$04,$78,$07,$F0,$EE,$B8,$DF,$CC ; $CD408B
    db $05,$E3,$EB,$A3,$A5,$FC,$8E,$6F,$BE,$A2,$03,$55,$40,$2E,$A8,$80 ; $CD409B
    db $A5,$86,$80,$5C,$27,$67,$40,$C6,$6F,$01,$17,$1F,$FE,$1F,$09,$FD ; $CD40AB
    db $3F,$FA,$0E,$F4,$04,$E1,$1A,$E2,$29,$D5,$52,$78,$7F,$01,$11,$00 ; $CD40BB
    db $03,$18,$3D,$DF,$71,$9F,$D0,$95,$AA,$70,$22,$58,$51,$BF,$8C,$41 ; $CD40CB
    db $48,$AA,$A0,$5C,$51,$28,$E8,$9F,$B8,$76,$14,$C1,$26,$88,$00,$51 ; $CD40DB
    db $36,$81,$14,$43,$00,$AE,$C7,$EB,$03,$9B,$05,$52,$8A,$A4,$01,$DF ; $CD40EB
    db $28,$92,$50,$25,$A0,$4A,$56,$AA,$05,$A9,$E8,$3F,$4D,$BA,$23,$F5 ; $CD40FB
    db $AD,$9F,$89,$A3,$87,$03,$7D,$DF,$2A,$14,$92,$1F,$2A,$55,$75,$03 ; $CD410B
    db $88,$C7,$55,$FC,$FB,$0A,$03,$A8,$02,$ED,$CB,$7E,$FB,$08,$03,$A8 ; $CD411B
    db $84,$39,$54,$59,$FB,$B0,$03,$55,$06,$51,$1F,$05,$A0,$6D,$10,$B0 ; $CD412B
    db $4A,$53,$A5,$54,$8E,$9B,$04,$43,$01,$B7,$A7,$07,$08,$A6,$20,$37 ; $CD413B
    db $04,$7D,$FF,$04,$8E,$3F,$48,$01,$90,$58,$AA,$89,$50,$48,$EF,$8B ; $CD414B
    db $FF,$10,$EA,$A9,$8F,$54,$54,$A2,$B6,$49,$F6,$05,$98,$88,$F5,$24 ; $CD415B
    db $AB,$4A,$55,$95,$6A,$31,$78,$7C,$00,$18,$D3,$7F,$9A,$97,$34,$C7 ; $CD416B
    db $00,$92,$C0,$15,$45,$45,$3A,$60,$AA,$03,$A8,$A2,$D5,$51,$1D,$2A ; $CD417B
    db $28,$54,$F0,$C3,$30,$8A,$00,$45,$45,$18,$88,$29,$2A,$B7,$D1,$00 ; $CD418B
    db $07,$DC,$51,$CD,$84,$5C,$41,$AF,$3B,$B0,$55,$E0,$FB,$94,$14,$BE ; $CD419B
    db $80,$00,$07,$26,$22,$10,$22,$80,$6E,$AA,$1D,$1B,$41,$2A,$D0,$A6 ; $CD41AB
    db $50,$ED,$AA,$C3,$C0,$3B,$A4,$55,$49,$AA,$92,$02,$B1,$24,$EB,$89 ; $CD41BB
    db $06,$29,$22,$4D,$05,$FF,$41,$0C,$C3,$40,$1A,$00,$74,$73,$44,$18 ; $CD41CB
    db $88,$55,$24,$60,$8A,$08,$40,$60,$2A,$90,$E1,$03,$98,$44,$7F,$35 ; $CD41DB
    db $AA,$B6,$01,$03,$D4,$85,$15,$32,$82,$56,$0B,$E8,$2A,$54,$15,$84 ; $CD41EB
    db $0A,$2A,$C9,$41,$48,$10,$40,$2A,$48,$05,$19,$A0,$4E,$5B,$9B,$07 ; $CD41FB
    db $14,$22,$A6,$49,$40,$2E,$77,$16,$45,$55,$A2,$2A,$25,$05,$8A,$A2 ; $CD420B
    db $52,$50,$2A,$AA,$F8,$C9,$50,$8A,$14,$22,$41,$05,$6A,$83,$01,$69 ; $CD421B
    db $A0,$AA,$50,$55,$28,$D5,$27,$3E,$82,$2A,$04,$11,$8D,$04,$FB,$F1 ; $CD422B
    db $2B,$0D,$1F,$A7,$0A,$A4,$01,$13,$A9,$C0,$A7,$85,$14,$04,$81,$13 ; $CD423B
    db $32,$44,$4E,$BB,$45,$EF,$C1,$2A,$06,$51,$0B,$A4,$42,$28,$6A,$10 ; $CD424B
    db $28,$83,$20,$0D,$00,$3A,$00,$D4,$00,$A8,$10,$43,$BE,$21,$E2,$0A ; $CD425B
    db $15,$55,$87,$A0,$34,$04,$9E,$21,$E9,$10,$1F,$E0,$40,$1F,$14,$DD ; $CD426B
    db $6A,$3B,$08,$50,$4B,$80,$40,$1C,$0E,$E1,$1A,$01,$90,$05,$E2,$08 ; $CD427B
    db $A0,$55,$7A,$00,$BF,$40,$B6,$08,$5A,$05,$9E,$20,$60,$1A,$9B,$37 ; $CD428B
    db $8F,$2A,$A2,$45,$09,$92,$10,$C3,$40,$A2,$82,$5D,$01,$55,$AA,$8A ; $CD429B
    db $05,$7C,$97,$51,$55,$08,$82,$AA,$15,$55,$3E,$BF,$20,$06,$FD,$BF ; $CD42AB
    db $33,$D3,$BF,$B0,$3E,$1F,$08,$74,$BF,$A3,$80,$1B,$A9,$A8,$55,$51 ; $CD42BB
    db $97,$04,$84,$5D,$11,$FA,$4A,$80,$17,$02,$54,$0A,$A0,$28,$3B,$43 ; $CD42CB
    db $20,$00,$FF,$53,$50,$9B,$82,$5F,$11,$7A,$12,$4A,$D5,$15,$00,$43 ; $CD42DB
    db $04,$A8,$24,$41,$A0,$0E,$80,$5B,$35,$C0,$16,$7F,$61,$EA,$0A,$71 ; $CD42EB
    db $54,$17,$50,$31,$63,$80,$1E,$F6,$01,$7D,$2A,$05,$5D,$1F,$01,$51 ; $CD42FB
    db $1F,$55,$54,$80,$E8,$05,$7F,$DD,$FF,$4A,$61,$AA,$2E,$3B,$16,$4D ; $CD430B
    db $40,$15,$D4,$C5,$B3,$C9,$3B,$11,$A8,$7C,$F9,$7C,$01,$1D,$3F,$80 ; $CD431B
    db $40,$48,$77,$04,$50,$FE,$EF,$8E,$C3,$80,$2A,$82,$FF,$52,$3B,$31 ; $CD432B
    db $BD,$E3,$6B,$05,$FF,$0C,$3D,$C7,$10,$0F,$8E,$41,$07,$2E,$80,$DD ; $CD433B
    db $20,$E9,$5C,$D8,$17,$84,$07,$05,$E8,$0A,$51,$14,$48,$FF,$05,$1A ; $CD434B
    db $8A,$38,$74,$5B,$C3,$DF,$E9,$FF,$00,$1F,$00,$F7,$08,$BF,$40,$4F ; $CD435B
    db $B0,$35,$AF,$50,$07,$C6,$48,$A2,$90,$4A,$68,$92,$A0,$12,$18,$22 ; $CD436B
    db $08,$42,$20,$82,$E0,$02,$24,$F3,$CD,$32,$F9,$02,$DF,$A7,$0F,$CC ; $CD437B
    db $03,$DF,$00,$10,$81,$7E,$52,$AD,$01,$F8,$31,$05,$FA,$C0,$84,$62 ; $CD438B
    db $29,$D7,$18,$50,$00,$06,$7E,$01,$A0,$00,$02,$98,$05,$20,$15,$C2 ; $CD439B
    db $2A,$C1,$9D,$90,$23,$A7,$72,$C0,$09,$D6,$50,$23,$A7,$54,$22,$3A ; $CD43AB
    db $A9,$15,$22,$17,$4E,$BF,$10,$05,$A2,$DF,$26,$5B,$72,$BF,$60,$E8 ; $CD43BB
    db $A7,$1F,$40,$95,$80,$06,$FF,$D1,$03,$EC,$9F,$08,$03,$11,$44,$FC ; $CD43CB
    db $77,$43,$CC,$AB,$05,$DD,$40,$2F,$80,$11,$7E,$77,$BE,$83,$54,$2E ; $CD43DB
    db $15,$A8,$12,$2A,$51,$46,$10,$85,$22,$56,$01,$A8,$12,$B0,$05,$F8 ; $CD43EB
    db $E3,$45,$A8,$88,$00,$51,$48,$A6,$C0,$0D,$40,$3A,$A0,$8B,$04,$B1 ; $CD43FB
    db $55,$C1,$14,$4C,$DF,$BB,$C3,$52,$EB,$EA,$89,$DF,$76,$02,$3F,$50 ; $CD440B
    db $00,$07,$7F,$00,$00,$89,$00,$4A,$01,$AC,$02,$44,$11,$CB,$94,$4D ; $CD441B
    db $87,$11,$BF,$00,$4C,$91,$BE,$41,$54,$A2,$A0,$5D,$44,$00,$5F,$42 ; $CD442B
    db $A0,$88,$47,$7D,$01,$61,$B9,$44,$54,$26,$A0,$70,$37,$04,$BF,$23 ; $CD443B
    db $FE,$1E,$B7,$F0,$02,$80,$02,$7C,$CE,$49,$09,$A8,$03,$40,$1C,$01 ; $CD444B
    db $31,$E0,$08,$44,$45,$A6,$70,$A2,$D7,$54,$0A,$2A,$F5,$15,$EA,$8A ; $CD445B
    db $75,$15,$6A,$EF,$7A,$DF,$E5,$DB,$28,$C0,$53,$BB,$DE,$88,$C7,$35 ; $CD446B
    db $5F,$60,$87,$17,$7F,$78,$DB,$82,$E9,$67,$EF,$4A,$DF,$BF,$00,$F7 ; $CD447B
    db $DF,$B5,$57,$7A,$DF,$D7,$00,$52,$B6,$A0,$79,$15,$7A,$4A,$D1,$3A ; $CD448B
    db $14,$AB,$00,$1F,$2B,$2A,$08,$A1,$08,$47,$13,$80,$0A,$81,$F4,$DF ; $CD449B
    db $80,$54,$5C,$5F,$A2,$40,$5F,$80,$B4,$15,$72,$02,$D6,$70,$B8,$7E ; $CD44AB
    db $37,$3F,$77,$07,$20,$80,$20,$1F,$40,$D1,$C3,$80,$01,$80,$70,$C0 ; $CD44BB
    db $00,$88,$00,$F7,$8C,$89,$08,$4B,$41,$AE,$A2,$C0,$5B,$CA,$0A,$98 ; $CD44CB
    db $C1,$BA,$75,$F8,$F0,$39,$F2,$A2,$00,$5D,$E9,$07,$02,$15,$24,$02 ; $CD44DB
    db $05,$00,$15,$BF,$D7,$07,$83,$82,$43,$A3,$02,$FB,$09,$BF,$9D,$25 ; $CD44EB
    db $90,$E1,$BF,$A2,$A8,$70,$54,$50,$A0,$8A,$44,$54,$89,$AA,$40,$8A ; $CD44FB
    db $08,$45,$8F,$5D,$F7,$05,$A2,$BB,$E2,$07,$14,$49,$8A,$E3,$00,$30 ; $CD450B
    db $45,$51,$AA,$22,$15,$A1,$48,$47,$11,$4B,$A5,$00,$A6,$B2,$17,$77 ; $CD451B
    db $07,$14,$C0,$28,$06,$31,$60,$E7,$52,$2C,$43,$50,$07,$AF,$A0,$5F ; $CD452B
    db $48,$3F,$74,$06,$C0,$68,$03,$FF,$D0,$FF,$10,$8C,$00,$B9,$C1,$38 ; $CD453B
    db $80,$40,$E1,$3F,$88,$2B,$00,$12,$E1,$2A,$D4,$95,$60,$7E,$00,$C5 ; $CD454B
    db $55,$BA,$50,$CA,$94,$01,$F8,$A2,$1C,$02,$20,$03,$89,$06,$8A,$05 ; $CD455B
    db $B0,$0A,$02,$8D,$E4,$1A,$08,$15,$2E,$9F,$51,$EE,$60,$9F,$6C,$41 ; $CD456B
    db $11,$14,$28,$82,$78,$9F,$E6,$9F,$39,$5B,$07,$41,$AA,$28,$55,$15 ; $CD457B
    db $08,$B3,$55,$15,$90,$BB,$28,$AA,$45,$14,$3F,$A3,$A8,$04,$F0,$DB ; $CD458B
    db $07,$B8,$75,$56,$54,$A7,$A2,$57,$41,$BA,$92,$75,$25,$EA,$0A,$C4 ; $CD459B
    db $F8,$AA,$01,$A8,$B9,$5F,$E2,$A3,$75,$16,$23,$90,$B7,$54,$54,$A9 ; $CD45AB
    db $A8,$0B,$57,$52,$AF,$A5,$4F,$B7,$6E,$FB,$BE,$E3,$BF,$89,$FB,$B8 ; $CD45BB
    db $44,$4D,$41,$EF,$84,$FE,$20,$FF,$62,$FF,$9E,$FF,$1E,$80,$FB,$12 ; $CD45CB
    db $A0,$10,$03,$01,$40,$00,$47,$1C,$28,$4A,$55,$E1,$C1,$80,$1E,$77 ; $CD45DB
    db $BC,$81,$C6,$7F,$DF,$1F,$00,$1D,$C1,$25,$7F,$00,$DE,$E6,$B1,$CC ; $CD45EB
    db $50,$CB,$1F,$85,$FC,$03,$E9,$FE,$40,$FF,$28,$FF,$F1,$FF,$E0,$FF ; $CD45FB
    db $0F,$1F,$FC,$01,$02,$F3,$C0,$97,$1F,$0A,$9F,$60,$26,$19,$5D,$A2 ; $CD460B
    db $09,$96,$A7,$D8,$4F,$C0,$01,$1F,$1F,$C0,$20,$10,$04,$60,$DF,$06 ; $CD461B
    db $08,$38,$07,$00,$54,$90,$65,$BC,$43,$F6,$09,$33,$AF,$50,$27,$BF ; $CD462B
    db $A8,$F7,$74,$03,$00,$1B,$A4,$00,$40,$92,$09,$82,$05,$0E,$82,$A3 ; $CD463B
    db $1C,$DF,$E3,$F9,$B8,$ED,$60,$84,$63,$78,$87,$FA,$05,$03,$FE,$01 ; $CD464B
    db $33,$0C,$0F,$70,$3A,$11,$7B,$5D,$9B,$78,$C8,$01,$FE,$00,$CF,$97 ; $CD465B
    db $A0,$DD,$08,$37,$C8,$EF,$10,$30,$4F,$80,$07,$F0,$0A,$D0,$00,$0A ; $CD466B
    db $C8,$12,$C0,$12,$00,$12,$C8,$EF,$65,$DD,$32,$DF,$3F,$01,$EF,$07 ; $CD467B
    db $F1,$DF,$6E,$DD,$05,$B1,$1D,$FB,$C7,$01,$FE,$D1,$03,$07,$B1,$5F ; $CD468B
    db $9A,$03,$FC,$85,$11,$14,$E9,$AA,$C3,$50,$90,$05,$F8,$02,$31,$04 ; $CD469B
    db $E8,$02,$54,$01,$A8,$AD,$97,$2E,$82,$0D,$19,$E0,$1A,$A8,$15,$D1 ; $CD46AB
    db $2A,$48,$35,$94,$6A,$28,$D5,$DF,$89,$70,$22,$10,$44,$0A,$A1,$05 ; $CD46BB
    db $52,$02,$A0,$1A,$45,$14,$E8,$5F,$75,$88,$AE,$7B,$08,$90,$E3,$0C ; $CD46CB
    db $53,$10,$A2,$23,$00,$45,$E0,$69,$80,$55,$88,$22,$00,$A1,$03,$20 ; $CD46DB
    db $8A,$2A,$5D,$9F,$08,$2F,$E3,$88,$03,$B2,$3F,$01,$03,$81,$2A,$12 ; $CD46EB
    db $45,$2B,$27,$3F,$E0,$6D,$54,$10,$A8,$EF,$87,$95,$40,$3E,$80,$7D ; $CD46FB
    db $5A,$D7,$F5,$00,$00,$6B,$80,$97,$40,$29,$80,$15,$77,$A2,$A2,$2E ; $CD470B
    db $8A,$2A,$15,$E1,$56,$28,$2E,$51,$11,$AA,$2F,$50,$41,$14,$80,$2A ; $CD471B
    db $2F,$00,$A3,$28,$02,$E1,$14,$22,$09,$47,$41,$91,$B3,$69,$D7,$2A ; $CD472B
    db $E8,$C3,$15,$C0,$34,$BF,$DB,$D2,$FB,$0F,$00,$A0,$2F,$40,$5E,$20 ; $CD473B
    db $66,$18,$87,$46,$70,$F7,$2F,$02,$A9,$B1,$15,$42,$13,$8C,$8F,$10 ; $CD474B
    db $85,$60,$0A,$81,$DA,$27,$63,$9C,$AE,$51,$DF,$20,$EC,$13,$F0,$0F ; $CD475B
    db $C1,$3E,$E1,$1C,$00,$18,$02,$60,$28,$80,$C4,$03,$80,$0C,$40,$30 ; $CD476B
    db $81,$40,$62,$80,$B6,$87,$BD,$23,$FF,$1F,$7F,$FF,$0F,$FF,$5D,$CF ; $CD477B
    db $4B,$17,$24,$59,$48,$01,$40,$1E,$00,$E0,$85,$D8,$20,$00,$A0,$C3 ; $CD478B
    db $00,$82,$30,$D5,$94,$D3,$C1,$F7,$F2,$FF,$F9,$FF,$80,$00,$FD,$FC ; $CD479B
    db $9D,$81,$20,$1D,$0A,$28,$04,$CA,$17,$06,$17,$21,$38,$02,$00,$62 ; $CD47AB
    db $00,$7F,$41,$FE,$00,$FB,$A6,$FF,$9E,$3E,$1E,$FF,$5F,$F7,$BF,$FF ; $CD47BB
    db $7F,$80,$3E,$01,$C0,$84,$59,$C1,$F9,$07,$19,$45,$14,$E5,$3F,$64 ; $CD47CB
    db $72,$7C,$A3,$5F,$3F,$EB,$7F,$CA,$9F,$DD,$C1,$82,$28,$0A,$10,$08 ; $CD47DB
    db $83,$00,$5C,$80,$40,$80,$61,$22,$00,$F6,$01,$90,$DE,$7E,$F7,$FF ; $CD47EB
    db $DF,$FF,$80,$03,$FD,$F9,$FD,$F4,$DF,$C9,$13,$09,$60,$01,$E5,$3B ; $CD47FB
    db $02,$C5,$01,$20,$C3,$06,$3A,$FE,$DF,$1F,$D3,$C7,$55,$F1,$B5,$FC ; $CD480B
    db $FE,$07,$60,$7F,$5F,$1F,$01,$1D,$35,$28,$4B,$58,$02,$A1,$5D,$80 ; $CD481B
    db $CE,$A1,$92,$13,$8A,$F1,$E1,$E5,$76,$F2,$FB,$FD,$BF,$3E,$BC,$9F ; $CD482B
    db $D5,$E7,$00,$D8,$2D,$08,$02,$E7,$A1,$1C,$7C,$40,$29,$74,$51,$8B ; $CD483B
    db $05,$03,$55,$03,$84,$A8,$11,$50,$0F,$2A,$57,$11,$AE,$C8,$00,$AA ; $CD484B
    db $03,$48,$17,$55,$06,$A9,$3B,$80,$51,$0B,$55,$13,$8F,$53,$8E,$96 ; $CD485B
    db $28,$9E,$46,$0E,$87,$33,$47,$36,$80,$16,$0E,$57,$AF,$00,$A4,$BF ; $CD486B
    db $5D,$01,$25,$A8,$30,$48,$08,$80,$09,$50,$61,$90,$00,$10,$C2,$FF ; $CD487B
    db $60,$7F,$FF,$00,$FD,$02,$C0,$FC,$0A,$FD,$D3,$1C,$1D,$C0,$00,$C9 ; $CD488B
    db $DA,$FC,$03,$18,$21,$01,$22,$5C,$01,$22,$21,$14,$A2,$48,$41,$14 ; $CD489B
    db $68,$A2,$84,$51,$8A,$20,$E0,$7F,$C1,$2A,$02,$35,$81,$3A,$6A,$08 ; $CD48AB
    db $82,$3B,$0A,$D5,$2F,$7F,$80,$FF,$82,$2A,$01,$55,$2A,$82,$70,$04 ; $CD48BB
    db $6D,$11,$44,$CA,$87,$41,$E5,$ED,$28,$C8,$1F,$E7,$9F,$02,$31,$17 ; $CD48CB
    db $51,$AE,$A2,$5D,$39,$3F,$0E,$15,$EA,$2A,$D1,$E3,$CB,$EB,$05,$BF ; $CD48DB
    db $DD,$2B,$B7,$DF,$DB,$55,$0F,$68,$9F,$5F,$4B,$8F,$00,$87,$7F,$4F ; $CD48EB
    db $FF,$AF,$7F,$1F,$3F,$8F,$1B,$89,$3F,$BF,$38,$BB,$00,$B7,$00,$2B ; $CD48FB
    db $A0,$C0,$74,$81,$AE,$F3,$BF,$1C,$BF,$83,$FF,$C4,$FF,$F6,$F6,$F0 ; $CD490B
    db $FE,$F8,$FF,$FF,$13,$8B,$03,$BD,$30,$00,$01,$09,$76,$02,$C5,$B8 ; $CD491B
    db $F0,$FF,$CF,$F7,$4F,$CF,$0F,$F7,$A7,$F6,$70,$FF,$FE,$EF,$62,$3F ; $CD492B
    db $24,$39,$10,$30,$0E,$40,$08,$40,$09,$60,$E6,$0A,$C0,$08,$C0,$FF ; $CD493B
    db $07,$B0,$FF,$E4,$FF,$C0,$54,$22,$A0,$7F,$0F,$D9,$7F,$C0,$1F,$02 ; $CD494B
    db $99,$F8,$D4,$1F,$AF,$0F,$3A,$E0,$01,$70,$58,$03,$04,$FB,$81,$0E ; $CD495B
    db $7E,$42,$FD,$40,$2A,$35,$01,$D1,$02,$04,$00,$81,$D8,$A5,$0D,$F2 ; $CD496B
    db $00,$F9,$00,$39,$C0,$FD,$02,$5F,$A0,$54,$FF,$BA,$E9,$0D,$47,$77 ; $CD497B
    db $3E,$00,$FD,$59,$00,$CE,$0F,$0B,$03,$FA,$05,$F4,$8F,$0B,$DE,$01 ; $CD498B
    db $D9,$02,$E3,$18,$C0,$3F,$A8,$57,$E0,$1F,$FA,$00,$F4,$07,$1F,$E5 ; $CD499B
    db $00,$E4,$7A,$5C,$A8,$E8,$88,$C2,$33,$EF,$10,$37,$E5,$C8,$27,$D8 ; $CD49AB
    db $0F,$70,$67,$18,$1F,$E0,$07,$F8,$70,$02,$E8,$02,$30,$02,$20,$02 ; $CD49BB
    db $88,$DD,$A8,$88,$22,$CE,$41,$F9,$23,$45,$F2,$DE,$E1,$38,$35,$FE ; $CD49CB
    db $59,$FE,$5C,$01,$3F,$FA,$01,$FC,$03,$F5,$02,$F2,$05,$F9,$06,$EA ; $CD49DB
    db $05,$05,$FD,$6C,$FF,$63,$04,$DD,$4E,$70,$83,$54,$0C,$41,$B8,$04 ; $CD49EB
    db $02,$14,$01,$EA,$00,$5B,$67,$00,$2B,$34,$8A,$90,$4D,$0E,$64,$9A ; $CD49FB
    db $8A,$35,$B2,$EA,$AC,$F2,$8C,$B7,$01,$01,$54,$88,$22,$44,$11,$A8 ; $CD4A0B
    db $02,$08,$43,$CE,$B7,$01,$97,$DB,$44,$5B,$5F,$05,$43,$06,$C2,$51 ; $CD4A1B
    db $2A,$84,$15,$48,$8A,$00,$6D,$10,$DA,$20,$35,$39,$D0,$0E,$AA,$20 ; $CD4A2B
    db $53,$01,$ED,$43,$C3,$45,$8A,$8A,$15,$D5,$2A,$0A,$35,$15,$40,$2B ; $CD4A3B
    db $80,$FD,$02,$63,$C5,$7F,$16,$A8,$AD,$BB,$81,$7F,$A9,$54,$D7,$FE ; $CD4A4B
    db $5F,$05,$B0,$54,$0B,$B8,$07,$79,$06,$FA,$05,$F5,$0A,$CB,$34,$90 ; $CD4A5B
    db $69,$20,$D2,$40,$A4,$90,$48,$28,$90,$58,$20,$B0,$41,$41,$82,$17 ; $CD4A6B
    db $E0,$3F,$C0,$5F,$A0,$AF,$50,$4E,$B1,$F7,$08,$97,$60,$35,$C0,$0D ; $CD4A7B
    db $02,$13,$0C,$0E,$10,$0E,$20,$0E,$40,$77,$80,$8F,$00,$1B,$00,$C2 ; $CD4A8B
    db $3D,$C7,$38,$F3,$0C,$B1,$48,$6B,$EA,$15,$94,$0C,$6B,$AB,$14,$C0 ; $CD4A9B
    db $A1,$01,$06,$40,$91,$86,$11,$00,$01,$2E,$E2,$80,$58,$04,$C0,$08 ; $CD4AAB
    db $D5,$3C,$00,$FF,$58,$EF,$41,$FC,$0D,$F1,$77,$C8,$DA,$27,$65,$9B ; $CD4ABB
    db $02,$20,$01,$10,$A9,$5B,$EC,$88,$18,$2E,$04,$60,$7D,$9F,$18,$FD ; $CD4ACB
    db $04,$BD,$81,$BF,$30,$F7,$0F,$B7,$FF,$3F,$FF,$6F,$FF,$60,$07,$02 ; $CD4ADB
    db $F8,$42,$00,$40,$0F,$4D,$22,$3A,$00,$67,$F6,$D9,$1F,$29,$00,$14 ; $CD4AEB
    db $2E,$D0,$1F,$00,$F1,$F8,$01,$C7,$1C,$5E,$C0,$FE,$FE,$FF,$D3,$C3 ; $CD4AFB
    db $00,$00,$06,$00,$20,$03,$3F,$21,$80,$02,$A1,$1F,$DF,$16,$FD,$0F ; $CD4B0B
    db $C1,$1B,$1F,$DF,$C7,$D5,$43,$E1,$25,$20,$09,$08,$59,$89,$9A,$85 ; $CD4B1B
    db $5F,$4F,$FF,$CE,$C2,$FF,$CC,$DF,$DD,$FF,$EE,$DF,$F6,$CF,$7B,$FE ; $CD4B2B
    db $9C,$A0,$BB,$11,$20,$97,$3C,$45,$02,$B8,$60,$F7,$F3,$F2,$7D,$F7 ; $CD4B3B
    db $9E,$FD,$9F,$FB,$5F,$D7,$3F,$0B,$D7,$C5,$08,$00,$48,$05,$3E,$20 ; $CD4B4B
    db $E8,$9C,$E9,$DF,$B8,$F5,$36,$E1,$AE,$F0,$5F,$F8,$BD,$3E,$D4,$9F ; $CD4B5B
    db $E1,$CF,$91,$E7,$BB,$F7,$5C,$1A,$03,$9C,$38,$43,$20,$46,$00,$B8 ; $CD4B6B
    db $77,$08,$04,$00,$54,$0F,$56,$87,$D5,$31,$F1,$3C,$D0,$46,$BB,$40 ; $CD4B7B
    db $FF,$50,$7F,$55,$90,$56,$3D,$C0,$5C,$9F,$63,$85,$FA,$AE,$F8,$A2 ; $CD4B8B
    db $F1,$7B,$74,$4D,$10,$14,$C2,$14,$E9,$1A,$E2,$97,$BB,$0C,$40,$5B ; $CD4B9B
    db $A0,$06,$28,$75,$05,$4B,$E5,$0D,$04,$86,$51,$22,$88,$C5,$10,$B2 ; $CD4BAB
    db $4A,$35,$C1,$FA,$20,$E5,$52,$2E,$AA,$04,$1D,$AA,$22,$55,$05,$2A ; $CD4BBB
    db $00,$95,$04,$1A,$0A,$15,$05,$F0,$6B,$41,$10,$86,$28,$07,$5E,$01 ; $CD4BCB
    db $B4,$0A,$48,$7C,$F1,$50,$25,$03,$20,$0A,$46,$A9,$80,$53,$A9,$5F ; $CD4BDB
    db $1D,$45,$70,$8A,$83,$F2,$9A,$C0,$35,$15,$AD,$BB,$1C,$05,$55,$22 ; $CD4BEB
    db $03,$21,$2A,$AA,$0B,$F2,$08,$BF,$54,$45,$54,$20,$17,$BB,$A2,$7F ; $CD4BFB
    db $48,$BF,$05,$98,$5F,$44,$BF,$A2,$73,$9B,$80,$03,$44,$00,$92,$00 ; $CD4C0B
    db $42,$00,$04,$A2,$00,$5C,$7F,$3F,$F4,$7F,$D1,$01,$7A,$37,$D3,$7F ; $CD4C1B
    db $56,$01,$9F,$5B,$00,$4F,$9D,$3E,$9F,$FF,$02,$6E,$A4,$38,$FF,$AC ; $CD4C2B
    db $FF,$33,$BC,$83,$FE,$C3,$FA,$F7,$F7,$F0,$FF,$F8,$FF,$FE,$DD,$00 ; $CD4C3B
    db $04,$3B,$40,$04,$91,$BF,$00,$08,$00,$17,$C5,$B8,$C6,$A8,$5F,$FF ; $CD4C4B
    db $C0,$F9,$C2,$A6,$D9,$76,$E9,$B8,$61,$EA,$94,$B0,$CE,$D9,$22,$04 ; $CD4C5B
    db $01,$06,$20,$06,$08,$01,$01,$10,$30,$25,$DA,$5F,$0C,$03,$FC,$05 ; $CD4C6B
    db $FA,$01,$2E,$0A,$D1,$DB,$04,$25,$3B,$54,$03,$60,$85,$01,$2E,$00 ; $CD4C7B
    db $3B,$00,$EB,$6A,$55,$DF,$47,$02,$FE,$67,$1B,$3D,$07,$F8,$02,$0F ; $CD4C8B
    db $70,$E0,$1F,$68,$97,$E5,$0A,$8C,$61,$C1,$3C,$40,$BF,$DC,$0B,$01 ; $CD4C9B
    db $0E,$00,$68,$00,$15,$3A,$DC,$C2,$AE,$85,$E0,$01,$01,$67,$98,$4F ; $CD4CAB
    db $B0,$27,$D8,$8C,$01,$87,$78,$09,$9F,$E9,$DF,$1D,$60,$02,$48,$2A ; $CD4CBB
    db $DD,$20,$99,$DB,$4C,$DF,$04,$01,$BF,$40,$FF,$E8,$07,$97,$D3,$DB ; $CD4CCB
    db $0F,$F8,$E3,$47,$90,$FC,$E9,$FF,$00,$F7,$00,$98,$00,$F0,$04,$EA ; $CD4CDB
    db $00,$8E,$32,$B4,$6B,$D3,$E3,$0C,$C4,$19,$EB,$14,$A1,$1A,$8A,$35 ; $CD4CEB
    db $D5,$2A,$4A,$35,$94,$00,$8B,$C2,$1F,$9F,$00,$E1,$B7,$00,$E2,$00 ; $CD4CFB
    db $4F,$10,$AE,$00,$57,$28,$69,$94,$80,$1F,$EA,$11,$51,$2A,$2C,$D3 ; $CD4D0B
    db $07,$45,$A2,$A2,$55,$D5,$E4,$08,$90,$AA,$7B,$5F,$F7,$03,$72,$E9 ; $CD4D1B
    db $B3,$51,$57,$03,$AE,$D5,$B3,$D1,$03,$50,$33,$55,$A8,$A8,$55,$04 ; $CD4D2B
    db $52,$A9,$A8,$53,$55,$DE,$3F,$04,$43,$AF,$7C,$26,$03,$3F,$51,$38 ; $CD4D3B
    db $00,$AF,$37,$A7,$E0,$03,$BF,$00,$3C,$E0,$C5,$56,$A9,$A9,$60,$52 ; $CD4D4B
    db $37,$BB,$44,$4B,$A4,$30,$96,$48,$C5,$AD,$10,$FD,$18,$02,$EE,$11 ; $CD4D5B
    db $D5,$2A,$14,$92,$DF,$E1,$FE,$01,$E9,$04,$C6,$08,$A6,$10,$CB,$20 ; $CD4D6B
    db $5F,$20,$81,$F3,$67,$80,$48,$92,$7D,$D5,$FF,$33,$7F,$80,$0D,$FF ; $CD4D7B
    db $AC,$6E,$80,$21,$2E,$10,$4F,$06,$20,$3F,$40,$9F,$40,$11,$5E,$DE ; $CD4D8B
    db $BA,$20,$9D,$20,$9A,$21,$95,$22,$F2,$05,$EC,$13,$D0,$2F,$E0,$1F ; $CD4D9B
    db $F0,$0F,$A1,$5C,$E5,$18,$48,$11,$08,$E2,$C0,$0C,$80,$10,$40,$20 ; $CD4DAB
    db $B0,$40,$22,$80,$E2,$01,$A3,$7F,$40,$BE,$06,$F8,$1B,$E4,$2C,$93 ; $CD4DBB
    db $90,$2F,$60,$9F,$80,$11,$39,$41,$20,$58,$03,$40,$0C,$40,$10,$30 ; $CD4DCB
    db $00,$60,$0D,$1D,$C1,$CC,$03,$1C,$7B,$86,$9B,$7E,$85,$00,$7A,$FE ; $CD4DDB
    db $0F,$E0,$6F,$08,$22,$00,$64,$23,$1D,$7C,$A7,$DF,$15,$20,$90,$06 ; $CD4DEB
    db $1D,$54,$0E,$77,$F7,$39,$03,$DD,$05,$6B,$D8,$F9,$01,$DD,$01,$C1 ; $CD4DFB
    db $99,$9C,$FE,$A1,$FF,$9F,$00,$01,$FB,$83,$FB,$B8,$75,$22,$1D,$13 ; $CD4E0B
    db $CD,$90,$4B,$A1,$04,$BA,$03,$EB,$00,$FF,$BF,$3F,$BF,$8F,$7F,$F3 ; $CD4E1B
    db $F6,$45,$FC,$49,$23,$7F,$7F,$7E,$97,$25,$D9,$01,$45,$48,$F6,$C7 ; $CD4E2B
    db $E6,$F7,$F3,$FE,$FD,$EF,$FE,$BF,$FF,$EF,$7F,$DF,$9F,$DF,$CF,$09 ; $CD4E3B
    db $A2,$97,$D5,$3D,$81,$44,$DF,$12,$D4,$73,$9A,$37,$00,$45,$DE,$9E ; $CD4E4B
    db $EF,$CE,$F7,$E6,$20,$55,$0C,$7A,$99,$55,$06,$21,$20,$E1,$65,$FB ; $CD4E5B
    db $CA,$7D,$DD,$75,$BE,$06,$7D,$3F,$FD,$42,$0A,$73,$FF,$E4,$02,$A0 ; $CD4E6B
    db $39,$C1,$20,$A6,$66,$5E,$3B,$09,$E0,$B7,$BB,$0B,$F0,$FF,$20,$7F ; $CD4E7B
    db $90,$7F,$70,$BF,$00,$9F,$F0,$DF,$76,$BA,$0E,$00,$60,$17,$03,$08 ; $CD4E8B
    db $C5,$1E,$28,$D2,$34,$C5,$12,$8A,$74,$A5,$78,$AA,$30,$15,$A8,$0A ; $CD4E9B
    db $30,$0A,$E8,$A2,$1A,$60,$15,$C0,$03,$00,$15,$C0,$2A,$40,$47,$35 ; $CD4EAB
    db $9C,$A5,$03,$EB,$F5,$FC,$3D,$67,$65,$03,$7B,$F7,$54,$11,$43,$06 ; $CD4EBB
    db $51,$65,$03,$C3,$A4,$51,$48,$22,$40,$95,$A0,$2A,$C4,$15,$28,$82 ; $CD4ECB
    db $61,$19,$07,$04,$2A,$88,$5F,$B7,$77,$40,$DD,$E3,$01,$D7,$2B,$41 ; $CD4EDB
    db $4B,$F3,$45,$A4,$FF,$11,$55,$25,$82,$2A,$EF,$BF,$D3,$01,$FF,$2F ; $CD4EEB
    db $4F,$BF,$54,$2A,$07,$FC,$DF,$BD,$17,$B2,$03,$11,$FB,$83,$7F,$3F ; $CD4EFB
    db $3F,$FF,$BF,$16,$04,$BF,$9F,$24,$BB,$C0,$C6,$7C,$40,$02,$FC,$F9 ; $CD4F0B
    db $03,$F8,$FF,$03,$00,$FC,$FE,$71,$FC,$15,$FA,$D7,$7C,$1C,$F7,$FF ; $CD4F1B
    db $F6,$01,$79,$01,$07,$1F,$C5,$72,$1A,$D1,$0C,$83,$E4,$8A,$F5,$9B ; $CD4F2B
    db $E4,$2F,$F0,$91,$C6,$5F,$10,$25,$00,$22,$C0,$18,$E3,$24,$12,$81 ; $CD4F3B
    db $1B,$28,$00,$A0,$0E,$DF,$B3,$16,$40,$FB,$00,$9E,$85,$9B,$7F,$87 ; $CD4F4B
    db $10,$0F,$10,$87,$00,$88,$70,$78,$83,$78,$80,$3B,$58,$B5,$FA,$44 ; $CD4F5B
    db $05,$27,$B5,$F9,$FE,$CD,$FD,$CF,$7C,$89,$07,$00,$5C,$08,$F8,$F0 ; $CD4F6B
    db $F7,$00,$2B,$44,$17,$48,$94,$6B,$80,$7F,$DC,$23,$B0,$4F,$86,$39 ; $CD4F7B
    db $B4,$03,$16,$21,$51,$8E,$94,$B4,$DC,$00,$00,$B0,$00,$46,$00,$4C ; $CD4F8B
    db $00,$D8,$EA,$01,$86,$07,$F8,$17,$F8,$07,$47,$01,$27,$03,$03,$87 ; $CD4F9B
    db $78,$00,$02,$D0,$06,$01,$53,$30,$B6,$48,$79,$B3,$4C,$F3,$1A,$0C ; $CD4FAB
    db $B0,$4C,$05,$25,$F5,$07,$70,$90,$0E,$90,$02,$90,$42,$90,$03,$90 ; $CD4FBB
    db $01,$90,$D5,$AE,$31,$F0,$03,$95,$40,$29,$87,$23,$15,$6A,$F1,$B7 ; $CD4FCB
    db $CC,$52,$4E,$87,$03,$1D,$45,$00,$BE,$E4,$2C,$7D,$9F,$BA,$DC,$80 ; $CD4FDB
    db $30,$95,$00,$59,$A6,$AA,$45,$45,$57,$AA,$C2,$9F,$55,$46,$98,$FB ; $CD4FEB
    db $78,$68,$88,$22,$2D,$11,$44,$31,$FF,$85,$86,$88,$55,$11,$30,$07 ; $CD4FFB
    db $4B,$5C,$01,$BA,$EE,$71,$6C,$03,$71,$04,$1C,$97,$70,$ED,$10,$19 ; $CD500B
    db $48,$A6,$A2,$4D,$75,$8A,$93,$4C,$40,$9A,$EB,$14,$23,$98,$86,$20 ; $CD501B
    db $00,$3F,$CB,$00,$DD,$20,$4A,$01,$08,$53,$04,$61,$08,$5C,$3F,$25 ; $CD502B
    db $B5,$0A,$BA,$44,$44,$8A,$F0,$0C,$A0,$19,$86,$71,$8E,$15,$EF,$10 ; $CD503B
    db $BB,$19,$04,$A8,$9D,$2E,$02,$1A,$33,$A1,$59,$22,$35,$42,$A3,$44 ; $CD504B
    db $6B,$84,$63,$88,$D7,$08,$CC,$10,$FF,$E1,$95,$F7,$C7,$01,$7E,$51 ; $CD505B
    db $ED,$71,$D9,$02,$E5,$02,$E2,$1C,$FD,$00,$FA,$01,$0D,$02,$83,$7C ; $CD506B
    db $3E,$40,$96,$57,$56,$9F,$55,$80,$09,$55,$22,$AB,$03,$44,$57,$88 ; $CD507B
    db $6F,$90,$9F,$AA,$21,$BE,$00,$40,$BD,$40,$CA,$35,$F4,$0B,$FC,$6C ; $CD508B
    db $03,$01,$05,$79,$42,$06,$47,$E1,$C0,$02,$E0,$04,$D4,$08,$AC,$10 ; $CD509B
    db $54,$20,$B9,$40,$B0,$4D,$01,$01,$FC,$04,$01,$F9,$0B,$E4,$0C,$C3 ; $CD50AB
    db $68,$97,$82,$03,$15,$EA,$AC,$53,$30,$54,$10,$03,$38,$B8,$F4,$04 ; $CD50BB
    db $40,$08,$34,$08,$05,$00,$A4,$00,$39,$46,$CB,$3E,$05,$FE,$03,$80 ; $CD50CB
    db $FD,$21,$FE,$83,$78,$19,$C2,$80,$3F,$38,$00,$01,$E3,$1B,$84,$00 ; $CD50DB
    db $24,$00,$DD,$7F,$D7,$7F,$82,$7F,$C5,$7F,$1C,$8B,$7F,$81,$07,$3E ; $CD50EB
    db $85,$7F,$04,$6A,$FB,$52,$FF,$A3,$97,$FB,$7F,$03,$03,$EF,$8F,$6D ; $CD50FB
    db $A1,$A9,$BC,$58,$20,$01,$10,$E8,$45,$B8,$74,$5F,$1F,$9F,$CF,$FB ; $CD510B
    db $F3,$F9,$F9,$FE,$FD,$F9,$F8,$1C,$86,$F5,$A0,$18,$47,$04,$48,$78 ; $CD511B
    db $01,$06,$A8,$02,$02,$EF,$E7,$02,$F7,$FB,$FB,$FD,$FD,$FE,$2B,$1D ; $CD512B
    db $50,$BF,$10,$70,$08,$1F,$02,$00,$B5,$47,$04,$FA,$F6,$FF,$00,$1F ; $CD513B
    db $FC,$FC,$FF,$7E,$3F,$3F,$0E,$7F,$BF,$7F,$DF,$FF,$FD,$16,$1F,$03 ; $CD514B
    db $90,$01,$00,$7F,$6C,$3F,$03,$32,$6F,$B1,$FD,$DF,$53,$01,$47,$70 ; $CD515B
    db $3F,$38,$FD,$BF,$80,$D6,$91,$BE,$00,$0E,$DC,$DD,$01,$C0,$65,$07 ; $CD516B
    db $07,$D0,$C6,$EF,$F0,$EF,$28,$F6,$38,$F6,$B1,$F2,$E5,$7A,$9D,$BA ; $CD517B
    db $F5,$B8,$00,$75,$7B,$22,$0C,$00,$B8,$89,$67,$B4,$55,$07,$EA,$4A ; $CD518B
    db $D4,$15,$68,$7A,$C4,$E8,$3B,$AA,$D1,$77,$F0,$21,$BF,$35,$00,$6A ; $CD519B
    db $80,$13,$C3,$19,$DA,$D5,$73,$1E,$41,$0E,$A0,$05,$40,$14,$AA,$58 ; $CD51AB
    db $45,$28,$92,$28,$55,$30,$8A,$14,$A2,$02,$55,$19,$A6,$00,$45,$E3 ; $CD51BB
    db $1B,$4D,$A0,$56,$55,$54,$07,$01,$88,$22,$40,$15,$7B,$DF,$91,$4E ; $CD51CB
    db $AA,$EB,$E7,$54,$A1,$3B,$40,$DE,$BA,$DF,$55,$23,$16,$D1,$E7,$45 ; $CD51DB
    db $55,$A2,$5F,$FB,$CE,$03,$8A,$F9,$FF,$22,$8A,$FD,$06,$6E,$B8,$4A ; $CD51EB
    db $20,$55,$4F,$4F,$BF,$AF,$5F,$57,$AF,$AB,$56,$54,$5D,$FF,$30,$3D ; $CD51FB
    db $D3,$C0,$D6,$50,$01,$A8,$95,$63,$07,$22,$13,$FE,$90,$38,$FF,$BE ; $CD520B
    db $3F,$2A,$1F,$0F,$2C,$A0,$02,$3A,$B9,$26,$E5,$50,$80,$13,$40,$F5 ; $CD521B
    db $FE,$F2,$F9,$4B,$F0,$9F,$EB,$B9,$D6,$F1,$AF,$BA,$57,$72,$0D,$19 ; $CD522B
    db $1D,$04,$DF,$E3,$3B,$01,$08,$00,$49,$20,$B2,$40,$32,$4C,$D7,$28 ; $CD523B
    db $89,$57,$00,$CF,$30,$FF,$20,$1F,$E0,$BD,$42,$1D,$83,$30,$17,$9D ; $CD524B
    db $16,$87,$EB,$57,$DF,$AE,$A6,$BD,$9C,$BF,$D9,$DF,$01,$F7,$AF,$18 ; $CD525B
    db $0C,$01,$12,$C1,$D8,$06,$E1,$00,$E2,$19,$F5,$02,$EB,$04,$D7,$08 ; $CD526B
    db $90,$DD,$FB,$04,$BE,$41,$33,$EF,$10,$07,$DF,$BA,$85,$2F,$0E,$10 ; $CD527B
    db $5E,$20,$BB,$F1,$B3,$EF,$D1,$8F,$05,$35,$50,$CB,$87,$44,$B1,$81 ; $CD528B
    db $7C,$A8,$57,$D0,$2F,$81,$7F,$CC,$33,$8F,$7F,$68,$00,$4A,$00,$82 ; $CD529B
    db $AD,$B9,$74,$D0,$39,$1C,$CC,$03,$71,$47,$98,$97,$C8,$2F,$F0,$87 ; $CD52AB
    db $38,$A7,$98,$57,$E8,$0F,$F0,$47,$F8,$97,$DC,$DB,$40,$01,$94,$80 ; $CD52BB
    db $DF,$B7,$48,$B3,$4C,$B1,$48,$B5,$60,$4A,$01,$AE,$40,$AE,$51,$01 ; $CD52CB
    db $B6,$48,$04,$91,$00,$91,$06,$CC,$03,$01,$10,$76,$83,$5F,$4B,$93 ; $CD52DB
    db $01,$28,$2A,$80,$05,$50,$0A,$A0,$56,$CE,$47,$45,$97,$05,$AA,$0A ; $CD52EB
    db $1C,$07,$77,$87,$01,$7D,$00,$78,$02,$3D,$00,$CA,$D6,$AE,$FB,$71 ; $CD52FB
    db $5D,$08,$2C,$83,$A2,$0D,$25,$8A,$A0,$0D,$E5,$0A,$72,$0D,$55,$0A ; $CD530B
    db $A2,$14,$50,$05,$9F,$F2,$7B,$A8,$02,$00,$07,$CF,$10,$F0,$0A,$30 ; $CD531B
    db $C1,$1B,$40,$50,$AF,$A8,$18,$9B,$40,$20,$03,$0F,$80,$75,$5E,$01 ; $CD532B
    db $CA,$3A,$15,$05,$90,$D7,$51,$C0,$0A,$98,$01,$45,$04,$A8,$A8,$06 ; $CD533B
    db $22,$0D,$D5,$C4,$EE,$6E,$9F,$98,$20,$15,$20,$82,$02,$51,$65,$12 ; $CD534B
    db $66,$89,$62,$11,$6A,$85,$4C,$13,$06,$81,$24,$4A,$15,$A2,$80,$29 ; $CD535B
    db $00,$32,$0C,$A2,$03,$00,$A4,$BA,$54,$7A,$04,$11,$84,$0C,$40,$58 ; $CD536B
    db $A4,$63,$9C,$23,$1C,$A1,$5E,$A0,$5F,$C0,$3F,$40,$3F,$48,$BF,$0B ; $CD537B
    db $10,$01,$20,$C0,$21,$3B,$FF,$40,$A0,$A4,$40,$FC,$00,$9F,$60,$0C ; $CD538B
    db $49,$B0,$1F,$E0,$05,$33,$11,$00,$6F,$90,$F1,$CB,$1D,$80,$4E,$70 ; $CD539B
    db $01,$1A,$01,$19,$02,$FD,$02,$05,$22,$83,$24,$F9,$FA,$03,$4C,$3B ; $CD53AB
    db $CB,$04,$1D,$7E,$2E,$81,$7A,$1D,$81,$F5,$02,$F3,$04,$EB,$04,$E7 ; $CD53BB
    db $08,$F3,$08,$57,$84,$7F,$F4,$01,$E5,$52,$57,$04,$8A,$91,$03,$3B ; $CD53CB
    db $04,$7C,$61,$F1,$E9,$1A,$06,$D3,$08,$4B,$E1,$AF,$10,$DB,$20,$EE ; $CD53DB
    db $11,$BB,$44,$CE,$31,$EA,$15,$80,$17,$E4,$1B,$BF,$40,$92,$0D,$07 ; $CD53EB
    db $EA,$00,$B8,$00,$CE,$40,$BC,$BF,$00,$C4,$BA,$77,$00,$8F,$10,$E2 ; $CD53FB
    db $10,$4F,$10,$3D,$4A,$D1,$2E,$61,$9E,$F2,$08,$38,$C3,$16,$C9,$CC ; $CD540B
    db $13,$A0,$0E,$84,$30,$10,$C0,$60,$0C,$EF,$34,$A8,$07,$1D,$A4,$18 ; $CD541B
    db $80,$F7,$19,$80,$7C,$96,$3C,$43,$02,$C4,$3B,$E1,$1E,$2A,$D5,$26 ; $CD542B
    db $D3,$A4,$D8,$3E,$04,$3A,$C0,$E1,$4B,$0C,$7D,$84,$8C,$7F,$9F,$6B ; $CD543B
    db $9F,$45,$3F,$22,$0F,$09,$E7,$04,$F9,$01,$FC,$02,$38,$1D,$DB,$80 ; $CD544B
    db $A5,$DF,$C1,$45,$3F,$6B,$72,$7F,$17,$BF,$CF,$7F,$FF,$BF,$FE,$5F ; $CD545B
    db $FD,$2F,$FD,$50,$FC,$80,$04,$80,$08,$00,$70,$B4,$30,$A3,$03,$B7 ; $CD546B
    db $FF,$D5,$C7,$B8,$47,$DF,$9B,$F9,$49,$FE,$BD,$FC,$7C,$FF,$7E,$FE ; $CD547B
    db $7E,$70,$55,$40,$06,$30,$00,$75,$40,$A0,$A6,$80,$01,$80,$8F,$CF ; $CD548B
    db $0C,$FE,$EF,$FF,$F7,$00,$FF,$C0,$28,$FB,$59,$F9,$7F,$7D,$51,$30 ; $CD549B
    db $37,$08,$47,$05,$86,$00,$87,$9E,$9F,$EF,$DF,$CF,$CF,$61,$FF,$23 ; $CD54AB
    db $EF,$E6,$E6,$1D,$C0,$8F,$C8,$B3,$23,$19,$A2,$05,$90,$E3,$98,$BC ; $CD54BB
    db $CC,$FF,$CD,$F7,$AD,$EF,$5C,$7F,$3C,$FF,$BC,$F9,$B8,$67,$91,$73 ; $CD54CB
    db $10,$E1,$C3,$00,$21,$D4,$01,$E8,$41,$06,$41,$C4,$55,$A8,$DD,$08 ; $CD54DB
    db $00,$B8,$0A,$7C,$11,$FC,$B2,$74,$49,$27,$BA,$82,$48,$AE,$C5,$00 ; $CD54EB
    db $A6,$EB,$32,$C0,$60,$7D,$E5,$14,$01,$5A,$A0,$54,$21,$60,$8A,$24 ; $CD54FB
    db $11,$A2,$48,$F4,$51,$C1,$2A,$64,$9A,$0A,$15,$D7,$EA,$3B,$35,$C4 ; $CD550B
    db $D3,$C7,$04,$2A,$AD,$8B,$06,$55,$20,$8A,$40,$14,$2C,$03,$53,$04 ; $CD551B
    db $CC,$12,$B0,$45,$BB,$64,$D2,$B3,$41,$00,$AA,$A9,$50,$68,$83,$A0 ; $CD552B
    db $0D,$00,$67,$3A,$1D,$01,$7C,$DF,$FE,$00,$1D,$7E,$82,$C5,$F4,$E3 ; $CD553B
    db $01,$FF,$DF,$D5,$5F,$5A,$7C,$62,$E3,$40,$D3,$54,$55,$CA,$0A,$54 ; $CD554B
    db $45,$04,$26,$A2,$06,$55,$AB,$FE,$FF,$20,$EA,$0E,$2D,$08,$51,$93 ; $CD555B
    db $26,$54,$54,$8D,$1F,$04,$A3,$C7,$23,$28,$1F,$07,$20,$09,$C0,$1F ; $CD556B
    db $51,$54,$80,$0E,$AA,$40,$55,$08,$48,$5B,$11,$02,$7A,$A8,$06,$1F ; $CD557B
    db $20,$37,$05,$50,$D8,$09,$03,$2A,$80,$72,$15,$9E,$2D,$9D,$71,$05 ; $CD558B
    db $17,$05,$D2,$1B,$15,$E9,$2B,$85,$1F,$84,$2C,$54,$01,$9F,$1F,$03 ; $CD559B
    db $E5,$FF,$1D,$1F,$52,$9D,$0C,$5F,$C6,$6C,$07,$28,$2B,$80,$1F,$A8 ; $CD55AB
    db $03,$AD,$52,$53,$A4,$AF,$50,$00,$07,$28,$57,$DE,$01,$99,$02,$52 ; $CD55BB
    db $E8,$07,$45,$D5,$1C,$D4,$43,$0C,$3E,$00,$25,$C0,$17,$AB,$12,$54 ; $CD55CB
    db $15,$6A,$2E,$43,$0C,$3D,$F3,$AE,$51,$F2,$0F,$E0,$1F,$43,$1F,$93 ; $CD55DB
    db $0D,$0E,$53,$8F,$23,$0C,$6B,$23,$F0,$A9,$59,$00,$20,$80,$A2,$40 ; $CD55EB
    db $04,$A0,$88,$50,$EA,$81,$7B,$F8,$A7,$F8,$F7,$F8,$E7,$C0,$07,$D7 ; $CD55FB
    db $F8,$C7,$F8,$FF,$08,$DC,$DF,$20,$B2,$41,$B2,$40,$BB,$44,$BA,$44 ; $CD560B
    db $BC,$41,$BC,$42,$03,$0C,$00,$92,$0C,$93,$01,$92,$00,$93,$00,$77 ; $CD561B
    db $96,$F9,$AC,$03,$97,$97,$8F,$3E,$00,$2C,$51,$12,$88,$75,$00,$22 ; $CD562B
    db $88,$14,$41,$02,$A0,$40,$A0,$B0,$4F,$04,$8A,$62,$15,$25,$9A,$02 ; $CD563B
    db $93,$A3,$1A,$45,$17,$17,$EE,$00,$8C,$5C,$01,$88,$02,$71,$04,$FA ; $CD564B
    db $01,$71,$00,$26,$08,$D2,$29,$24,$D3,$48,$A6,$B0,$4D,$40,$9A,$A8 ; $CD565B
    db $14,$16,$A9,$C0,$33,$80,$55,$8F,$20,$2F,$00,$B2,$08,$C4,$11,$80 ; $CD566B
    db $2A,$07,$50,$B0,$07,$C2,$90,$03,$40,$50,$8F,$42,$35,$84,$80,$CE ; $CD567B
    db $08,$A0,$A8,$40,$01,$60,$54,$17,$20,$05,$08,$A2,$3B,$04,$51,$0C ; $CD568B
    db $59,$54,$41,$2A,$05,$40,$08,$15,$50,$8A,$10,$B8,$DF,$55,$83,$28 ; $CD569B
    db $36,$80,$14,$33,$3F,$C0,$11,$00,$8A,$20,$55,$10,$71,$AA,$15,$A2 ; $CD56AB
    db $8D,$33,$08,$57,$1B,$D6,$23,$1F,$8A,$A3,$03,$18,$45,$D0,$77,$5C ; $CD56BB
    db $F0,$8A,$A4,$18,$46,$39,$04,$96,$50,$2C,$22,$19,$5A,$54,$00,$36 ; $CD56CB
    db $80,$30,$57,$4D,$2E,$48,$03,$58,$90,$C4,$20,$24,$03,$B7,$48,$D9 ; $CD56DB
    db $26,$DA,$25,$59,$26,$4A,$85,$E8,$57,$A9,$56,$D8,$10,$24,$01,$00 ; $CD56EB
    db $48,$02,$48,$81,$48,$32,$48,$00,$60,$88,$B8,$FF,$00,$1F,$80,$74 ; $CD56FB
    db $F6,$98,$E5,$7F,$80,$07,$1F,$C0,$5C,$4F,$22,$B0,$CF,$10,$6F,$10 ; $CD570B
    db $A7,$10,$AE,$10,$2E,$10,$7E,$A0,$42,$1F,$F8,$07,$C8,$37,$0E,$40 ; $CD571B
    db $3F,$50,$BF,$AA,$18,$7E,$30,$AB,$58,$20,$08,$AA,$95,$57,$01,$80 ; $CD572B
    db $65,$08,$CA,$FF,$50,$AF,$20,$1E,$A1,$5E,$C2,$3D,$41,$38,$44,$BB ; $CD573B
    db $FE,$01,$E2,$11,$00,$10,$C1,$2A,$7B,$41,$5D,$86,$6A,$41,$00,$43 ; $CD574B
    db $00,$02,$0C,$F2,$AD,$12,$5F,$20,$8E,$71,$15,$EA,$42,$BD,$08,$F7 ; $CD575B
    db $01,$FE,$03,$FC,$4D,$30,$9F,$40,$0E,$80,$15,$80,$42,$40,$63,$01 ; $CD576B
    db $00,$94,$6B,$CE,$31,$8C,$C9,$3E,$00,$80,$98,$26,$6E,$91,$85,$7A ; $CD577B
    db $94,$EA,$C4,$3D,$74,$2D,$80,$3C,$1C,$0E,$60,$05,$80,$08,$F6,$0C ; $CD578B
    db $54,$AB,$88,$77,$67,$60,$00,$9F,$E8,$17,$E5,$1A,$78,$87,$09,$E9 ; $CD579B
    db $12,$55,$88,$A3,$3B,$68,$00,$A5,$2E,$8D,$00,$39,$8B,$7E,$10,$3E ; $CD57AB
    db $47,$BF,$AA,$5F,$0B,$CF,$51,$AF,$0F,$E0,$83,$64,$19,$C1,$56,$74 ; $CD57BB
    db $98,$F4,$E0,$8E,$84,$98,$03,$DE,$B0,$BF,$EF,$7F,$02,$DB,$7F,$03 ; $CD57CB
    db $3F,$62,$BF,$0F,$BF,$01,$04,$B3,$BF,$85,$BF,$FF,$7D,$C2,$B8,$7C ; $CD57DB
    db $3F,$3E,$7F,$BE,$DF,$BE,$FC,$BC,$FD,$01,$2C,$BE,$71,$43,$1B,$80 ; $CD57EB
    db $55,$3B,$EA,$00,$05,$FF,$F2,$F2,$FF,$FB,$7F,$18,$FB,$FF,$7B,$01 ; $CD57FB
    db $F9,$79,$07,$FF,$7C,$EF,$FC,$0D,$F0,$01,$7F,$06,$CD,$03,$81,$4E ; $CD580B
    db $F1,$00,$79,$30,$F7,$71,$2A,$F7,$3A,$FF,$72,$37,$39,$FE,$B0,$9F ; $CD581B
    db $91,$EE,$C0,$8E,$41,$10,$E0,$BA,$08,$01,$C0,$00,$02,$08,$03,$68 ; $CD582B
    db $02,$18,$03,$50,$EF,$82,$77,$40,$54,$A1,$AA,$51,$68,$03,$B6,$5F ; $CD583B
    db $7E,$D0,$63,$03,$C6,$11,$B9,$F5,$45,$2A,$42,$11,$4A,$A4,$45,$80 ; $CD584B
    db $94,$2A,$98,$45,$8A,$00,$04,$68,$80,$51,$8C,$62,$00,$53,$19,$66 ; $CD585B
    db $41,$23,$AA,$32,$CD,$C0,$15,$82,$05,$44,$11,$28,$A2,$26,$40,$3F ; $CD586B
    db $E7,$D2,$62,$55,$15,$44,$AA,$08,$31,$52,$F7,$E7,$50,$23,$09,$D1 ; $CD587B
    db $D7,$04,$55,$82,$D3,$A7,$FE,$0A,$BA,$DF,$45,$5D,$DB,$14,$47,$03 ; $CD588B
    db $BC,$01,$11,$07,$1F,$C0,$E0,$45,$01,$14,$20,$E8,$4D,$61,$10,$47 ; $CD589B
    db $40,$02,$A2,$D2,$6A,$15,$75,$61,$0E,$57,$30,$3A,$11,$05,$00,$5F ; $CD58AB
    db $10,$45,$02,$A8,$04,$51,$30,$0A,$A0,$B5,$8A,$20,$5D,$1A,$00,$49 ; $CD58BB
    db $80,$25,$21,$F7,$0A,$DC,$03,$5B,$8A,$55,$63,$80,$2A,$74,$5A,$06 ; $CD58CB
    db $92,$51,$04,$88,$22,$28,$D1,$07,$50,$AB,$55,$AA,$A2,$55,$75,$51 ; $CD58DB
    db $0E,$83,$45,$45,$07,$61,$AB,$64,$87,$B7,$A1,$0A,$02,$54,$11,$02 ; $CD58EB
    db $51,$22,$0C,$A2,$79,$B3,$B7,$DC,$39,$BF,$00,$0D,$80,$31,$0F,$40 ; $CD58FB
    db $2F,$80,$B5,$00,$23,$4A,$A0,$80,$8D,$07,$50,$17,$A0,$01,$10,$A0 ; $CD590B
    db $50,$0F,$45,$3A,$0A,$4E,$9B,$82,$EB,$47,$95,$A8,$E8,$EF,$7A,$37 ; $CD591B
    db $A8,$1B,$54,$A4,$14,$2A,$DA,$71,$05,$CE,$51,$D7,$56,$18,$54,$D5 ; $CD592B
    db $2A,$B2,$46,$15,$D9,$24,$9B,$82,$70,$2A,$44,$11,$A2,$0A,$41,$15 ; $CD593B
    db $8A,$2A,$40,$A8,$A3,$EC,$57,$81,$3B,$54,$44,$31,$1B,$C0,$CB,$55 ; $CD594B
    db $D7,$D3,$FB,$70,$C7,$F8,$07,$78,$C7,$78,$E7,$78,$27,$38,$C7,$B8 ; $CD595B
    db $94,$A8,$F5,$80,$05,$C0,$E0,$03,$BD,$40,$BC,$42,$42,$03,$D2,$FF ; $CD596B
    db $01,$E9,$F3,$4E,$01,$61,$FB,$03,$80,$F3,$2E,$80,$1D,$40,$2C,$82 ; $CD597B
    db $D7,$07,$0D,$0E,$A0,$0D,$50,$04,$A2,$51,$A6,$22,$55,$11,$A6,$D7 ; $CD598B
    db $BB,$07,$90,$91,$A6,$18,$45,$F2,$0E,$01,$EE,$00,$DC,$00,$03,$CC ; $CD599B
    db $11,$EA,$00,$C0,$11,$2C,$18,$02,$5C,$22,$1F,$10,$66,$CE,$03,$00 ; $CD59AB
    db $00,$03,$4C,$22,$E8,$11,$2F,$50,$10,$68,$8A,$FF,$F5,$41,$10,$13 ; $CD59BB
    db $C3,$9D,$F1,$8F,$31,$BB,$74,$06,$9F,$49,$C3,$08,$45,$DA,$09,$E3 ; $CD59CB
    db $8A,$10,$4D,$FA,$02,$D8,$25,$08,$82,$3C,$54,$53,$2A,$01,$8A,$30 ; $CD59DB
    db $12,$FB,$0D,$0D,$00,$CA,$30,$4D,$0B,$72,$80,$14,$49,$55,$8E,$62 ; $CD59EB
    db $CD,$11,$EC,$22,$DC,$11,$EE,$22,$4D,$11,$66,$A2,$80,$26,$EC,$B7 ; $CD59FB
    db $66,$90,$03,$80,$66,$C5,$7F,$F9,$22,$CA,$EE,$11,$FC,$0F,$F2,$0F ; $CD5A0B
    db $FB,$0F,$FF,$1F,$DB,$43,$3B,$39,$04,$41,$00,$4E,$00,$50,$87,$01 ; $CD5A1B
    db $40,$24,$7C,$83,$31,$CF,$B8,$FA,$30,$CF,$F1,$CF,$72,$CF,$79,$CF ; $CD5A2B
    db $FA,$CF,$F5,$CF,$F9,$CF,$00,$10,$06,$01,$E5,$3D,$C2,$5A,$A5,$BD ; $CD5A3B
    db $C2,$DE,$A1,$BC,$43,$5E,$A1,$9D,$E2,$5D,$A3,$3D,$00,$5A,$00,$87 ; $CD5A4B
    db $03,$5E,$00,$BC,$06,$03,$1D,$00,$5C,$44,$10,$BF,$00,$FF,$03,$23 ; $CD5A5B
    db $80,$7F,$9C,$0A,$03,$40,$AA,$6D,$F9,$E7,$05,$7C,$29,$F7,$0C,$41 ; $CD5A6B
    db $F3,$01,$1C,$C0,$03,$28,$F7,$90,$F7,$EB,$5E,$5A,$04,$02,$01,$00 ; $CD5A7B
    db $08,$00,$09,$F0,$15,$EA,$06,$F9,$D7,$01,$09,$04,$FB,$46,$F9,$20 ; $CD5A8B
    db $D9,$02,$FD,$0E,$01,$10,$01,$6C,$83,$02,$26,$E0,$3F,$2E,$D1,$1B ; $CD5A9B
    db $3E,$E4,$20,$02,$90,$FE,$FF,$2E,$00,$1B,$EA,$F8,$3E,$02,$00,$44 ; $CD5AAB
    db $8B,$03,$7F,$80,$B2,$4D,$1F,$E0,$00,$25,$5B,$A4,$0B,$C4,$33,$CC ; $CD5ABB
    db $74,$3A,$00,$6F,$00,$71,$07,$08,$03,$08,$43,$08,$66,$33,$05,$10 ; $CD5ACB
    db $3F,$17,$5F,$A0,$AC,$3C,$53,$FE,$01,$FD,$02,$FC,$03,$7E,$81,$E3 ; $CD5ADB
    db $04,$22,$04,$53,$04,$A0,$04,$F2,$04,$F1,$04,$F0,$04,$72,$74,$04 ; $CD5AEB
    db $63,$09,$91,$FF,$01,$B8,$E2,$0C,$82,$7D,$C2,$3F,$27,$D2,$4A,$2D ; $CD5AFB
    db $AE,$75,$00,$B0,$23,$C0,$00,$01,$AC,$00,$D2,$00,$76,$FF,$03,$8E ; $CD5B0B
    db $1F,$FF,$20,$70,$05,$27,$FF,$41,$7F,$BE,$06,$80,$9D,$41,$00,$E7 ; $CD5B1B
    db $FC,$BF,$38,$FC,$3F,$03,$43,$0E,$FC,$BB,$FC,$6F,$E2,$E8,$AD,$BC ; $CD5B2B
    db $F0,$03,$01,$2F,$E1,$BE,$B8,$E3,$D0,$6F,$F1,$B6,$C8,$AE,$F1,$7E ; $CD5B3B
    db $E0,$0E,$E1,$2E,$C0,$10,$02,$28,$9A,$02,$30,$8D,$03,$18,$9C,$C7 ; $CD5B4B
    db $03,$41,$48,$F3,$01,$54,$21,$09,$AA,$41,$54,$01,$4F,$F9,$CC,$03 ; $CD5B5B
    db $FB,$00,$03,$A9,$54,$B0,$0A,$B0,$45,$80,$03,$B2,$08,$A0,$07,$55 ; $CD5B6B
    db $82,$08,$01,$8A,$75,$E6,$9A,$06,$03,$02,$03,$12,$8A,$32,$C5,$92 ; $CD5B7B
    db $A5,$80,$2A,$01,$03,$40,$15,$8A,$20,$FE,$02,$BA,$BB,$80,$43,$47 ; $CD5B8B
    db $8A,$55,$10,$55,$E7,$07,$D1,$E6,$07,$DF,$04,$05,$04,$55,$74,$55 ; $CD5B9B
    db $88,$A2,$09,$15,$40,$22,$88,$FF,$C5,$8E,$3B,$08,$F8,$9F,$22,$55 ; $CD5BAB
    db $0C,$E9,$85,$08,$0D,$50,$0F,$A0,$80,$E7,$5C,$01,$A6,$00,$3A,$04 ; $CD5BBB
    db $A2,$D0,$F7,$A6,$02,$54,$50,$38,$A6,$23,$03,$BA,$0C,$45,$F4,$01 ; $CD5BCB
    db $68,$0C,$01,$5C,$28,$7A,$82,$50,$05,$22,$08,$C0,$15,$49,$80,$44 ; $CD5BDB
    db $3A,$A8,$55,$14,$EA,$28,$C6,$BF,$A2,$43,$1B,$2A,$2A,$14,$85,$3A ; $CD5BEB
    db $1C,$41,$C0,$A3,$60,$11,$21,$08,$3A,$A1,$54,$AB,$9D,$2A,$87,$C2 ; $CD5BFB
    db $14,$04,$A9,$00,$32,$06,$A8,$C2,$34,$00,$2B,$58,$C7,$41,$01,$18 ; $CD5C0B
    db $22,$18,$05,$78,$82,$38,$14,$00,$20,$45,$08,$A2,$18,$A6,$80,$4D ; $CD5C1B
    db $E9,$97,$38,$2D,$C0,$0D,$18,$E9,$FF,$00,$29,$54,$10,$8A,$60,$15 ; $CD5C2B
    db $62,$8A,$4B,$41,$B9,$E3,$7D,$8A,$52,$1F,$35,$97,$4B,$E3,$08,$45 ; $CD5C3B
    db $86,$35,$40,$02,$88,$1D,$40,$9A,$A0,$19,$44,$8A,$80,$2B,$07,$52 ; $CD5C4B
    db $28,$15,$8A,$32,$54,$97,$02,$4D,$1D,$01,$AA,$32,$37,$1F,$5C,$82 ; $CD5C5B
    db $15,$15,$05,$C4,$20,$64,$08,$7D,$86,$60,$04,$65,$80,$26,$11,$A0 ; $CD5C6B
    db $4A,$D0,$2A,$8A,$11,$13,$A4,$00,$28,$1B,$A0,$0A,$31,$C0,$2E,$47 ; $CD5C7B
    db $67,$19,$18,$67,$98,$03,$E7,$CC,$01,$07,$6F,$6E,$10,$03,$A1,$66 ; $CD5C8B
    db $22,$C8,$03,$6E,$01,$D0,$4A,$03,$40,$FB,$B8,$42,$B8,$45,$B0,$42 ; $CD5C9B
    db $0F,$B0,$41,$B4,$4A,$01,$9B,$FB,$87,$92,$0C,$91,$0C,$92,$00,$91 ; $CD5CAB
    db $15,$48,$2A,$90,$75,$60,$90,$65,$10,$0A,$80,$03,$1F,$40,$0E,$A0 ; $CD5CBB
    db $01,$A6,$00,$7B,$25,$9A,$EA,$15,$45,$8A,$3A,$77,$45,$27,$27,$5F ; $CD5CCB
    db $40,$4E,$F7,$1B,$00,$80,$0A,$54,$01,$A8,$02,$44,$11,$31,$61,$08 ; $CD5CDB
    db $F7,$A8,$15,$88,$AA,$B0,$45,$A8,$7F,$C2,$28,$A2,$EF,$91,$BF,$03 ; $CD5CEB
    db $AC,$80,$BB,$21,$05,$0F,$A0,$07,$58,$C7,$D5,$08,$A0,$55,$CA,$AA ; $CD5CFB
    db $5F,$E3,$1D,$40,$00,$AF,$75,$67,$54,$D7,$CB,$29,$17,$52,$8E,$A4 ; $CD5D0B
    db $2D,$09,$BA,$22,$F5,$14,$0D,$A8,$83,$28,$00,$D4,$00,$A9,$10,$43 ; $CD5D1B
    db $50,$86,$40,$1D,$02,$E8,$02,$51,$DD,$49,$5C,$17,$3A,$7D,$55,$9A ; $CD5D2B
    db $8A,$75,$15,$EA,$4A,$D7,$90,$B7,$20,$92,$2A,$CD,$00,$7A,$23,$E5 ; $CD5D3B
    db $08,$60,$08,$C6,$7C,$3C,$BF,$9E,$5E,$4E,$8F,$8F,$7F,$5F,$9F,$8F ; $CD5D4B
    db $FF,$2F,$FF,$1F,$D6,$06,$D5,$40,$01,$A0,$30,$5B,$22,$80,$60,$57 ; $CD5D5B
    db $DF,$E0,$18,$F7,$DF,$CA,$CF,$7C,$6F,$FF,$6F,$F4,$6F,$3E,$0F,$E4 ; $CD5D6B
    db $87,$FE,$97,$B2,$BD,$7F,$01,$3B,$20,$18,$E0,$A9,$1F,$C0,$1F,$80 ; $CD5D7B
    db $5D,$75,$A2,$BD,$F7,$F0,$FF,$7B,$86,$FF,$80,$C0,$12,$70,$0E,$0C ; $CD5D8B
    db $10,$3E,$3B,$00,$3F,$D7,$ED,$59,$53,$95,$D4,$2E,$19,$82,$1C,$C2 ; $CD5D9B
    db $7E,$0B,$FF,$07,$7F,$87,$7F,$CF,$7F,$17,$3F,$38,$77,$7C,$FF,$FB ; $CD5DAB
    db $01,$EB,$45,$F8,$8E,$03,$FF,$8B,$59,$39,$FF,$7D,$FF,$7E,$3E,$3E ; $CD5DBB
    db $FF,$BF,$9F,$9F,$04,$14,$22,$70,$86,$B5,$20,$F0,$87,$60,$00,$81 ; $CD5DCB
    db $FE,$75,$22,$40,$35,$12,$FF,$F8,$FF,$58,$7F,$0F,$97,$3F,$DF,$9F ; $CD5DDB
    db $02,$98,$5B,$F1,$68,$20,$D5,$3F,$60,$80,$38,$80,$2F,$F0,$00,$E9 ; $CD5DEB
    db $83,$6D,$08,$7E,$03,$1F,$F9,$77,$00,$93,$1A,$0B,$00,$52,$AD,$A4 ; $CD5DFB
    db $97,$5B,$C1,$3E,$12,$ED,$01,$FE,$04,$FB,$00,$FE,$11,$FC,$02,$10 ; $CD5E0B
    db $04,$20,$01,$C0,$12,$4A,$7A,$04,$3D,$BE,$00,$00,$AF,$40,$5F,$A0 ; $CD5E1B
    db $0F,$C0,$BF,$E0,$05,$26,$18,$AD,$B8,$E4,$52,$5C,$A0,$B0,$00,$48 ; $CD5E2B
    db $07,$37,$08,$97,$08,$0F,$10,$C7,$20,$0C,$DD,$40,$57,$54,$00,$B4 ; $CD5E3B
    db $F9,$06,$FA,$05,$59,$26,$F8,$3B,$07,$F0,$D1,$99,$A0,$1F,$DF,$71 ; $CD5E4B
    db $20,$59,$20,$3A,$40,$99,$40,$B8,$40,$71,$80,$FC,$01,$DC,$20,$FB ; $CD5E5B
    db $EE,$00,$D5,$3D,$02,$F8,$04,$EF,$10,$30,$4F,$30,$51,$83,$1C,$9A ; $CD5E6B
    db $18,$20,$9E,$20,$15,$5B,$20,$5C,$2D,$7A,$40,$8C,$41,$07,$F8,$41 ; $CD5E7B
    db $B8,$87,$7A,$C5,$3A,$9E,$61,$F6,$08,$F3,$91,$25,$04,$01,$46,$AF ; $CD5E8B
    db $76,$16,$81,$40,$81,$18,$82,$71,$82,$7C,$82,$74,$02,$0E,$91,$5E ; $CD5E9B
    db $A0,$3E,$01,$AC,$52,$FC,$21,$4C,$32,$58,$A1,$88,$F0,$60,$0A,$08 ; $CD5EAB
    db $13,$D8,$22,$08,$21,$18,$42,$88,$41,$1E,$40,$0E,$01,$01,$97,$F7 ; $CD5EBB
    db $54,$CA,$01,$9F,$54,$56,$CB,$0A,$D0,$5F,$90,$45,$90,$2A,$75,$40 ; $CD5ECB
    db $20,$FF,$01,$50,$04,$2A,$97,$76,$40,$FD,$EE,$1D,$1B,$58,$20,$17 ; $CD5EDB
    db $8D,$22,$80,$51,$15,$74,$28,$83,$87,$05,$88,$22,$51,$04,$1A,$1F ; $CD5EEB
    db $14,$41,$07,$0E,$46,$50,$FB,$5B,$51,$A5,$BB,$14,$C8,$07,$B6,$3F ; $CD5EFB
    db $3F,$9B,$8D,$1F,$A8,$02,$03,$0D,$5E,$23,$1F,$9B,$CE,$1F,$A8,$45 ; $CD5F0B
    db $03,$2E,$55,$88,$F9,$7F,$02,$A8,$BA,$1B,$51,$5A,$00,$51,$3F,$81 ; $CD5F1B
    db $2A,$55,$D2,$FB,$51,$EA,$AA,$37,$55,$A0,$3F,$80,$54,$54,$09,$98 ; $CD5F2B
    db $C0,$AD,$45,$28,$92,$10,$05,$C6,$59,$A4,$51,$11,$74,$40,$F7,$9F ; $CD5F3B
    db $C1,$FB,$4D,$60,$9A,$00,$15,$DC,$01,$7F,$55,$1C,$41,$0F,$A0,$10 ; $CD5F4B
    db $91,$1F,$82,$F7,$DB,$11,$30,$BF,$96,$00,$5F,$10,$2B,$AA,$28,$F5 ; $CD5F5B
    db $DB,$5A,$99,$75,$05,$4E,$57,$55,$A0,$A1,$0C,$2A,$3A,$A7,$7F,$22 ; $CD5F6B
    db $5E,$A3,$73,$0B,$98,$BF,$29,$C4,$09,$20,$1D,$2D,$AA,$FA,$F3,$E2 ; $CD5F7B
    db $77,$D5,$9F,$15,$07,$50,$07,$C1,$51,$80,$15,$8D,$5F,$0F,$40,$0B ; $CD5F8B
    db $29,$1F,$EA,$19,$DB,$2A,$F9,$10,$C0,$0B,$24,$50,$C3,$28,$36,$12 ; $CD5F9B
    db $45,$17,$1B,$00,$26,$88,$99,$24,$EA,$00,$85,$2A,$1C,$02,$D4,$10 ; $CD5FAB
    db $EE,$5C,$15,$3A,$A2,$52,$05,$41,$1A,$0A,$F5,$41,$14,$C0,$2A,$85 ; $CD5FBB
    db $BA,$5A,$42,$2D,$18,$07,$AF,$00,$81,$6A,$80,$50,$69,$2B,$C3,$D7 ; $CD5FCB
    db $AA,$A3,$54,$A8,$FA,$07,$51,$27,$18,$EF,$10,$45,$C3,$75,$5C,$DF ; $CD5FDB
    db $D0,$62,$C0,$07,$22,$48,$22,$38,$42,$4A,$EF,$42,$E5,$78,$82,$58 ; $CD5FEB
    db $82,$F0,$02,$B4,$49,$AC,$42,$AC,$51,$F4,$0A,$B0,$49,$B2,$4C,$B2 ; $CD5FFB
    db $4D,$97,$03,$00,$0E,$92,$10,$81,$00,$8A,$40,$91,$06,$90,$00,$91 ; $CD600B
    db $00,$76,$03,$16,$E4,$C2,$24,$5F,$03,$76,$05,$57,$77,$51,$09,$DB ; $CD601B
    db $55,$BA,$03,$85,$65,$0A,$CB,$38,$05,$78,$02,$78,$05,$F8,$02,$70 ; $CD602B
    db $05,$04,$80,$00,$0A,$70,$0D,$E0,$0A,$A0,$0D,$60,$CD,$03,$28,$86 ; $CD603B
    db $6A,$11,$02,$C1,$15,$1F,$80,$0F,$50,$18,$D1,$07,$4F,$10,$03,$B0 ; $CD604B
    db $4A,$20,$0A,$20,$40,$BD,$1C,$8D,$3F,$70,$40,$20,$8F,$00,$35,$5F ; $CD605B
    db $45,$DE,$12,$F5,$05,$8A,$EC,$AC,$CA,$00,$0A,$55,$85,$69,$A0,$20 ; $CD606B
    db $82,$20,$AF,$63,$FF,$9C,$A3,$43,$02,$B9,$74,$14,$7E,$46,$87,$87 ; $CD607B
    db $7F,$17,$EF,$87,$73,$13,$E7,$8B,$77,$13,$69,$09,$01,$88,$78,$0E ; $CD608B
    db $C2,$00,$30,$0C,$30,$03,$80,$60,$70,$7F,$7F,$40,$FF,$01,$7E,$3F ; $CD609B
    db $01,$3D,$FF,$BC,$FC,$BC,$FF,$DE,$6F,$F5,$97,$87,$DF,$01,$03,$05 ; $CD60AB
    db $07,$F8,$97,$30,$C6,$13,$FC,$5B,$FE,$BB,$F8,$79,$FF,$FD,$FC,$FC ; $CD60BB
    db $FF,$FC,$00,$20,$CC,$2D,$9F,$75,$40,$95,$BD,$60,$E1,$8C,$C3,$BF ; $CD60CB
    db $B8,$F7,$C1,$B9,$C7,$48,$B7,$38,$C7,$3C,$C3,$78,$C1,$AE,$51,$3C ; $CD60DB
    db $00,$2E,$AE,$21,$40,$AB,$25,$38,$B9,$6B,$2E,$AC,$00,$31,$4B,$BF ; $CD60EB
    db $1F,$9F,$6F,$DF,$FF,$EF,$E5,$E4,$B5,$F1,$BF,$F8,$3F,$FF,$30,$D3 ; $CD60FB
    db $00,$6C,$1A,$E8,$04,$07,$EB,$70,$20,$1B,$CF,$FF,$AF,$03,$FF,$5F ; $CD610B
    db $FF,$BF,$FF,$7C,$BD,$43,$72,$F4,$1A,$2B,$77,$C9,$61,$5A,$44,$DE ; $CD611B
    db $B8,$F4,$CF,$FB,$F3,$FA,$F8,$FB,$FE,$FF,$FE,$7F,$7E,$5F,$1E,$DB ; $CD612B
    db $C2,$20,$A7,$B7,$05,$38,$FF,$C2,$24,$00,$07,$E6,$FF,$EC,$FF,$7B ; $CD613B
    db $7B,$FF,$D2,$FA,$7F,$72,$FC,$C9,$D6,$F6,$5E,$B2,$AB,$6E,$65,$38 ; $CD614B
    db $84,$F9,$0B,$E4,$24,$0B,$79,$27,$6D,$9F,$E4,$9F,$65,$9C,$ED,$A1 ; $CD615B
    db $B1,$10,$03,$0E,$D0,$04,$80,$18,$17,$3C,$20,$02,$3E,$20,$12,$00 ; $CD616B
    db $97,$68,$17,$E8,$0F,$F0,$0D,$F2,$27,$F8,$67,$18,$13,$6C,$C9,$36 ; $CD617B
    db $15,$80,$15,$00,$0E,$A7,$3E,$2E,$9A,$87,$7C,$00,$83,$00,$01,$C0 ; $CD618B
    db $E1,$1E,$40,$BC,$82,$7D,$A5,$5A,$C2,$11,$12,$C5,$FE,$13,$49,$B7 ; $CD619B
    db $60,$80,$43,$56,$00,$20,$01,$AC,$02,$28,$02,$E0,$0C,$3A,$48,$00 ; $CD61AB
    db $41,$DD,$78,$8F,$78,$0A,$F5,$85,$41,$14,$EB,$08,$C3,$C7,$39,$CF ; $CD61BB
    db $06,$41,$02,$81,$01,$82,$00,$02,$01,$A8,$BD,$1D,$30,$08,$00,$02 ; $CD61CB
    db $3B,$E6,$80,$7F,$E7,$80,$BF,$40,$0A,$C5,$6C,$93,$1B,$8D,$52,$AF ; $CD61DB
    db $F2,$04,$7B,$04,$6B,$04,$A7,$08,$32,$08,$44,$08,$62,$C0,$E9,$1A ; $CD61EB
    db $E5,$2A,$54,$C6,$1D,$FE,$04,$23,$1D,$3E,$C0,$9E,$5C,$1F,$98,$A8 ; $CD61FB
    db $03,$01,$3D,$00,$B8,$01,$5D,$A9,$3D,$B8,$C4,$ED,$10,$2C,$10,$30 ; $CD620B
    db $45,$6C,$92,$5D,$20,$BC,$02,$3D,$40,$8A,$20,$F7,$A3,$20,$B7,$25 ; $CD621B
    db $11,$86,$88,$45,$15,$05,$BA,$8A,$22,$A3,$91,$44,$A2,$EB,$08,$05 ; $CD622B
    db $10,$4A,$A0,$55,$00,$E2,$08,$14,$01,$22,$88,$11,$2A,$22,$55,$C5 ; $CD623B
    db $2A,$0A,$15,$15,$AA,$A2,$15,$74,$8A,$02,$55,$D1,$04,$C2,$D6,$84 ; $CD624B
    db $EC,$A6,$00,$40,$14,$40,$43,$20,$8A,$51,$60,$2A,$17,$6D,$82,$A9 ; $CD625B
    db $50,$4B,$41,$D7,$C7,$55,$5B,$B6,$D5,$4C,$1C,$08,$A2,$FE,$7B,$82 ; $CD626B
    db $11,$45,$BD,$57,$11,$09,$54,$01,$B8,$41,$23,$42,$00,$15,$05,$A2 ; $CD627B
    db $12,$45,$CC,$12,$70,$45,$85,$1D,$43,$D0,$79,$A8,$08,$51,$28,$88 ; $CD628B
    db $63,$57,$7A,$B5,$4E,$2E,$BF,$01,$F4,$DF,$40,$15,$1F,$02,$AA,$05 ; $CD629B
    db $03,$42,$3F,$40,$61,$07,$10,$55,$28,$C7,$17,$A0,$5A,$70,$A2,$E1 ; $CD62AB
    db $58,$AD,$A0,$F4,$04,$02,$5B,$02,$A8,$12,$40,$51,$1D,$70,$31,$68 ; $CD62BB
    db $EF,$8C,$4F,$63,$71,$1F,$F4,$03,$71,$7B,$83,$40,$C1,$37,$54,$55 ; $CD62CB
    db $8A,$61,$1F,$00,$00,$E5,$06,$1F,$FF,$C3,$02,$50,$82,$A4,$4C,$53 ; $CD62DB
    db $00,$A2,$52,$50,$A3,$A8,$00,$1D,$EF,$50,$05,$A8,$09,$52,$00,$39 ; $CD62EB
    db $A4,$0D,$07,$D5,$07,$C0,$00,$8F,$04,$51,$00,$2A,$1D,$C4,$11,$42 ; $CD62FB
    db $40,$80,$1B,$80,$CF,$0E,$10,$F6,$09,$04,$A8,$57,$04,$6A,$83,$60 ; $CD630B
    db $54,$1F,$26,$41,$21,$0E,$01,$06,$F0,$5F,$00,$9E,$01,$5F,$F6,$01 ; $CD631B
    db $1C,$3E,$FE,$01,$6E,$00,$44,$37,$88,$4F,$30,$BF,$40,$7F,$73,$80 ; $CD632B
    db $0F,$00,$51,$10,$A7,$58,$F7,$08,$C7,$38,$E0,$01,$B8,$07,$F8,$C0 ; $CD633B
    db $01,$E8,$02,$A0,$02,$F0,$EB,$72,$F9,$01,$40,$AC,$85,$08,$B0,$4C ; $CD634B
    db $B1,$4E,$33,$01,$B0,$01,$4F,$81,$05,$4F,$03,$90,$00,$44,$01,$01 ; $CD635B
    db $C0,$03,$11,$44,$0A,$A0,$05,$10,$50,$0A,$A0,$B0,$76,$95,$14,$75 ; $CD636B
    db $11,$DC,$5F,$05,$03,$07,$D5,$2A,$2A,$55,$15,$01,$03,$71,$04,$A1 ; $CD637B
    db $0A,$74,$D4,$83,$B4,$14,$41,$B8,$02,$44,$A8,$03,$30,$52,$88,$9F ; $CD638B
    db $54,$8A,$BA,$60,$45,$A7,$A8,$45,$5C,$A2,$C3,$36,$40,$95,$82,$AF ; $CD639B
    db $77,$EE,$03,$F5,$F5,$F7,$40,$F9,$03,$03,$54,$72,$11,$0E,$88,$35 ; $CD63AB
    db $54,$2A,$8A,$01,$45,$12,$AA,$14,$45,$0A,$A2,$02,$A8,$61,$16,$00 ; $CD63BB
    db $C5,$0D,$54,$30,$7B,$DF,$80,$1F,$57,$15,$CB,$89,$FD,$64,$33,$4B ; $CD63CB
    db $42,$F0,$6A,$AF,$B4,$83,$DC,$A0,$08,$30,$44,$01,$1F,$B0,$0C,$A0 ; $CD63DB
    db $1A,$00,$75,$00,$1F,$FE,$DE,$FF,$EF,$E0,$01,$F7,$BF,$77,$E9,$46 ; $CD63EB
    db $0F,$3B,$FF,$BD,$01,$04,$B3,$BE,$A5,$46,$7E,$71,$7E,$F4,$07,$F6 ; $CD63FB
    db $13,$FB,$FD,$FF,$FE,$FC,$E6,$FE,$C9,$FE,$D9,$81,$EF,$44,$77,$08 ; $CD640B
    db $E0,$00,$AD,$05,$65,$12,$FF,$41,$C7,$3E,$C4,$7A,$59,$A7,$0A,$97 ; $CD641B
    db $34,$CB,$1B,$65,$8C,$77,$6C,$93,$C0,$A5,$9D,$18,$DE,$BA,$5B,$14 ; $CD642B
    db $1D,$A8,$00,$52,$09,$3F,$FF,$2A,$61,$7F,$1D,$BF,$7F,$DF,$E8,$46 ; $CD643B
    db $F7,$7D,$F9,$FB,$02,$60,$F9,$00,$02,$5C,$00,$6A,$FF,$EB,$CF,$C7 ; $CD644B
    db $FF,$D7,$CF,$CF,$EF,$E7,$FD,$F9,$FD,$FC,$FF,$FF,$77,$35,$A3,$56 ; $CD645B
    db $02,$36,$5E,$00,$0B,$FB,$F8,$FF,$FE,$01,$01,$7F,$7E,$6F,$0E,$04 ; $CD646B
    db $E0,$05,$9E,$90,$00,$FF,$7F,$F4,$06,$01,$A7,$F5,$C0,$02,$01,$E7 ; $CD647B
    db $88,$FF,$A7,$FF,$62,$9F,$01,$FE,$9F,$01,$05,$FB,$98,$10,$07,$C5 ; $CD648B
    db $9E,$20,$82,$01,$04,$20,$27,$E3,$F8,$41,$F8,$D7,$F8,$E1,$F8,$E9 ; $CD649B
    db $F2,$D6,$C9,$48,$17,$70,$4F,$03,$D2,$F9,$04,$19,$01,$06,$01,$03 ; $CD64AB
    db $20,$73,$06,$A0,$08,$80,$30,$BD,$5F,$E0,$1F,$CB,$3F,$41,$BE,$02 ; $CD64BB
    db $FD,$0F,$FA,$CB,$35,$56,$8B,$A0,$00,$E0,$EB,$D5,$1B,$1D,$A0,$E9 ; $CD64CB
    db $A3,$60,$04,$71,$D0,$AF,$21,$1F,$DD,$3E,$4C,$BC,$D7,$7C,$9F,$FA ; $CD64DB
    db $3B,$F5,$BF,$EA,$CE,$B8,$C0,$A9,$BB,$03,$40,$1E,$F3,$DB,$C0,$0B ; $CD64EB
    db $60,$1F,$C7,$30,$86,$D7,$A4,$EC,$53,$F3,$AF,$3D,$13,$FF,$44,$FF ; $CD64FB
    db $AC,$1D,$02,$08,$40,$08,$43,$00,$8C,$8B,$27,$29,$8E,$00,$41,$21 ; $CD650B
    db $18,$EF,$58,$C7,$38,$AE,$F0,$3E,$F0,$F5,$6A,$98,$E7,$8A,$75,$C6 ; $CD651B
    db $40,$95,$00,$C2,$05,$02,$03,$04,$23,$81,$04,$77,$6A,$91,$C5,$EF ; $CD652B
    db $BB,$74,$3C,$80,$2A,$3A,$90,$45,$6B,$83,$D8,$BB,$EF,$4A,$4F,$5B ; $CD653B
    db $43,$19,$20,$A5,$D3,$10,$D3,$C4,$14,$63,$03,$19,$80,$A2,$B4,$76 ; $CD654B
    db $42,$17,$45,$28,$03,$0B,$00,$A2,$0C,$51,$47,$29,$48,$07,$AA,$10 ; $CD655B
    db $45,$F9,$02,$9F,$8F,$A7,$EE,$10,$6B,$DF,$00,$A5,$A3,$01,$D2,$63 ; $CD656B
    db $11,$FF,$01,$FA,$7F,$02,$03,$25,$77,$56,$70,$54,$AF,$AA,$5B,$55 ; $CD657B
    db $1F,$AB,$4F,$47,$BF,$8F,$00,$8A,$3B,$8D,$DE,$7B,$B0,$FF,$44,$30 ; $CD658B
    db $01,$88,$00,$50,$27,$09,$BF,$27,$D8,$59,$7F,$FF,$E3,$00,$FB,$9D ; $CD659B
    db $03,$63,$77,$18,$AF,$E2,$F8,$01,$E4,$DF,$7F,$EB,$A2,$D9,$DF,$23 ; $CD65AB
    db $61,$1F,$DF,$7F,$FF,$04,$A3,$FB,$42,$DF,$37,$4E,$00,$81,$62,$FE ; $CD65BB
    db $FF,$3E,$F1,$04,$7E,$11,$8B,$71,$35,$EF,$CC,$F7,$B4,$FB,$9E,$C1 ; $CD65CB
    db $F9,$DE,$7C,$D3,$FE,$05,$FE,$8D,$92,$19,$7C,$DC,$E1,$BB,$08,$00 ; $CD65DB
    db $70,$01,$FE,$4D,$B2,$47,$F8,$03,$FC,$4C,$B3,$8F,$70,$C5,$3A,$A8 ; $CD65EB
    db $57,$01,$D7,$ED,$07,$74,$99,$4C,$00,$74,$0F,$61,$89,$20,$79,$86 ; $CD65FB
    db $7E,$70,$81,$FC,$07,$FC,$03,$F9,$04,$F4,$01,$D6,$01,$DD,$C0,$0F ; $CD660B
    db $00,$7E,$00,$F8,$00,$77,$FC,$F5,$22,$01,$CA,$EC,$02,$B6,$08,$1F ; $CD661B
    db $F0,$1F,$E8,$2F,$90,$97,$28,$7F,$80,$97,$48,$4F,$10,$3F,$48,$02 ; $CD662B
    db $96,$40,$0A,$40,$E3,$12,$10,$62,$20,$82,$A0,$0A,$80,$32,$F1,$4E ; $CD663B
    db $B2,$4D,$B6,$4D,$F1,$29,$E3,$61,$4F,$0B,$01,$90,$02,$C5,$01,$01 ; $CD664B
    db $1C,$01,$00,$09,$17,$14,$01,$6A,$0C,$80,$D4,$00,$09,$80,$F7,$00 ; $CD665B
    db $E8,$00,$F4,$00,$7A,$0B,$2A,$5C,$2A,$7B,$15,$95,$2A,$6B,$14,$D4 ; $CD666B
    db $09,$CB,$14,$E5,$0A,$6A,$05,$4C,$51,$A2,$81,$0C,$8E,$00,$F7,$DC ; $CD667B
    db $0E,$03,$B4,$00,$EB,$E4,$1F,$AE,$51,$B8,$7E,$51,$2A,$6A,$91,$C5 ; $CD668B
    db $18,$E8,$15,$57,$28,$2A,$D4,$04,$6D,$23,$40,$15,$7B,$DF,$02,$11 ; $CD669B
    db $A9,$5F,$3B,$55,$09,$04,$A9,$04,$51,$02,$A8,$53,$03,$54,$C5,$F1 ; $CD66AB
    db $10,$FF,$1F,$9D,$20,$03,$15,$55,$0A,$AA,$41,$EC,$A3,$15,$EC,$BF ; $CD66BB
    db $44,$CF,$03,$2A,$08,$D7,$BF,$0C,$7C,$5C,$BF,$9E,$5F,$4F,$A7,$A7 ; $CD66CB
    db $5F,$57,$A7,$AB,$78,$0B,$45,$A9,$A3,$DF,$00,$A0,$18,$83,$03,$00 ; $CD66DB
    db $50,$06,$80,$43,$FE,$E5,$FE,$E3,$FE,$04,$7F,$3C,$3E,$FF,$BE,$63 ; $CD66EB
    db $A5,$3F,$F7,$89,$FF,$1C,$5B,$7B,$20,$00,$62,$9D,$33,$B8,$F5,$1C ; $CD66FB
    db $AA,$55,$70,$0F,$A8,$77,$D8,$67,$C1,$BC,$A4,$D1,$00,$20,$C2,$03 ; $CD670B
    db $82,$B0,$40,$08,$BA,$A9,$02,$EF,$C6,$C3,$D3,$ED,$FD,$D2,$DF,$77 ; $CD671B
    db $03,$E7,$B7,$33,$BF,$9C,$02,$C3,$01,$39,$08,$00,$48,$98,$6A,$1C ; $CD672B
    db $BF,$3F,$03,$BF,$9F,$FF,$E7,$FE,$F8,$B7,$DD,$23,$00,$D5,$FD,$40 ; $CD673B
    db $69,$DB,$54,$69,$EF,$E0,$B4,$80,$DD,$DC,$1C,$DD,$C1,$EF,$F0,$10 ; $CD674B
    db $F3,$01,$3F,$23,$B9,$68,$3E,$00,$1F,$07,$5F,$DF,$FF,$07,$20,$DF ; $CD675B
    db $00,$FB,$82,$FF,$A1,$54,$FF,$90,$DB,$9D,$9C,$3F,$64,$04,$56,$1E ; $CD676B
    db $A5,$DB,$62,$45,$3F,$FA,$CB,$35,$EE,$FC,$FA,$F4,$FF,$F2,$BE,$89 ; $CD677B
    db $B8,$27,$F8,$1F,$FC,$FF,$0A,$C0,$03,$00,$09,$87,$7E,$40,$06,$47 ; $CD678B
    db $A7,$54,$C7,$DF,$07,$18,$A3,$5F,$D7,$A1,$7E,$1F,$00,$FD,$17,$F0 ; $CD679B
    db $16,$E2,$6E,$94,$A0,$8A,$A2,$1D,$C0,$06,$BE,$08,$03,$09,$4C,$03 ; $CD67AB
    db $08,$FD,$D6,$FE,$AE,$FE,$A8,$9D,$70,$BF,$7B,$DF,$1E,$33,$D7,$C5 ; $CD67BB
    db $16,$01,$E8,$01,$9D,$75,$20,$6E,$DF,$59,$ED,$B2,$7F,$31,$F7,$5F ; $CD67CB
    db $3C,$1E,$FF,$9E,$BF,$5D,$7F,$BA,$FF,$75,$00,$41,$80,$4E,$18,$C1 ; $CD67DB
    db $2A,$DC,$5F,$78,$41,$00,$82,$94,$8F,$E0,$9F,$AA,$5F,$64,$3F,$EA ; $CD67EB
    db $7F,$DC,$7F,$56,$FF,$60,$80,$3D,$20,$80,$40,$93,$BD,$82,$00,$15 ; $CD67FB
    db $42,$AA,$E1,$40,$95,$02,$8A,$21,$D5,$A0,$CA,$05,$C5,$1A,$EA,$DE ; $CD680B
    db $0E,$DB,$15,$00,$2A,$E5,$9F,$0A,$98,$07,$30,$03,$05,$04,$07,$51 ; $CD681B
    db $20,$A8,$13,$55,$78,$14,$54,$AB,$7A,$90,$5D,$9F,$06,$60,$FF,$03 ; $CD682B
    db $54,$00,$9D,$AE,$FF,$10,$FB,$5B,$01,$B0,$E9,$51,$55,$2A,$39,$2A ; $CD683B
    db $D5,$03,$FA,$02,$FB,$2A,$23,$C0,$27,$15,$01,$6C,$29,$1D,$07,$01 ; $CD684B
    db $6A,$3F,$01,$6B,$1F,$1D,$07,$05,$2E,$F3,$15,$3A,$03,$55,$07,$47 ; $CD685B
    db $55,$54,$AB,$CD,$03,$FF,$00,$39,$54,$7F,$2F,$FF,$9F,$3F,$75,$1F ; $CD686B
    db $23,$9F,$3F,$7F,$3F,$A5,$C9,$7F,$D7,$72,$2A,$20,$C0,$C4,$01,$80 ; $CD687B
    db $67,$C8,$80,$CA,$02,$BF,$FF,$25,$BF,$FE,$F2,$08,$BF,$FB,$06,$CE ; $CD688B
    db $FF,$F0,$FF,$F6,$03,$00,$E7,$E1,$DD,$C8,$DF,$17,$FE,$8E,$99,$1A ; $CD689B
    db $05,$70,$18,$04,$22,$04,$20,$08,$01,$70,$D4,$7B,$FF,$78,$E0,$03 ; $CD68AB
    db $F8,$FB,$82,$02,$FE,$51,$F8,$CF,$DC,$0F,$DB,$D7,$B5,$C7,$C3,$0E ; $CD68BB
    db $00,$10,$20,$10,$95,$6A,$0D,$72,$0F,$F0,$F9,$BE,$9B,$07,$00,$FC ; $CD68CB
    db $01,$FE,$03,$FC,$05,$00,$85,$E8,$59,$8B,$1C,$38,$03,$5F,$CB,$03 ; $CD68DB
    db $24,$9F,$11,$B3,$04,$9C,$23,$F9,$06,$F0,$0F,$FA,$05,$FA,$07,$FE ; $CD68EB
    db $01,$EA,$00,$48,$03,$40,$1C,$19,$E0,$F0,$4B,$DF,$F8,$BE,$BF,$F7 ; $CD68FB
    db $1A,$18,$1F,$F8,$01,$E1,$37,$F8,$17,$F8,$2F,$F8,$27,$D8,$5F,$B8 ; $CD690B
    db $20,$C2,$55,$78,$A3,$01,$20,$BF,$C3,$83,$35,$B3,$4C,$B7,$48,$47 ; $CD691B
    db $01,$30,$C3,$03,$07,$4A,$90,$03,$90,$07,$05,$01,$4B,$90,$4F,$1C ; $CD692B
    db $03,$E5,$47,$1C,$FD,$00,$F2,$03,$55,$F8,$00,$21,$FD,$02,$F2,$05 ; $CD693B
    db $F5,$67,$02,$67,$F9,$1C,$03,$FD,$5F,$EE,$3B,$37,$D2,$BB,$88,$22 ; $CD694B
    db $D2,$70,$54,$EF,$51,$B7,$54,$CC,$37,$B0,$AE,$55,$40,$15,$C3,$1F ; $CD695B
    db $90,$45,$E0,$B3,$CD,$20,$BE,$91,$BA,$3A,$00,$40,$90,$73,$10,$2A ; $CD696B
    db $A0,$15,$75,$60,$C0,$A7,$30,$8A,$AA,$45,$04,$51,$B5,$F4,$9F,$43 ; $CD697B
    db $7A,$E7,$04,$FB,$01,$AB,$9F,$88,$00,$C3,$14,$15,$6A,$AA,$21,$55 ; $CD698B
    db $0A,$75,$8A,$00,$47,$A2,$05,$51,$80,$28,$A8,$1F,$12,$8A,$30,$45 ; $CD699B
    db $C6,$BF,$86,$51,$6C,$4E,$2A,$7A,$FF,$9F,$63,$05,$D1,$BF,$4E,$5F ; $CD69AB
    db $55,$EB,$AE,$94,$7D,$1F,$7F,$3E,$BF,$9F,$5F,$4F,$2B,$A7,$47,$53 ; $CD69BB
    db $2A,$29,$01,$EF,$3A,$4F,$FF,$17,$4D,$14,$2F,$F3,$E4,$EE,$F3,$C1 ; $CD69CB
    db $FF,$C3,$7E,$71,$BE,$A0,$DF,$50,$E7,$84,$F3,$08,$03,$00,$0C,$02 ; $CD69DB
    db $9D,$C1,$01,$71,$FF,$2F,$3F,$F7,$FF,$3B,$F9,$49,$7F,$CD,$FF,$2D ; $CD69EB
    db $FF,$1D,$FD,$FC,$8E,$37,$18,$00,$71,$DD,$16,$BB,$A5,$E0,$E0,$BF ; $CD69FB
    db $3F,$FF,$CF,$FD,$F1,$8F,$F5,$B9,$C7,$C1,$FC,$7D,$79,$DE,$02,$D9 ; $CD6A0B
    db $09,$07,$82,$DC,$DF,$BF,$3F,$30,$BD,$81,$1D,$CF,$0C,$DD,$9D,$73 ; $CD6A1B
    db $58,$7E,$42,$83,$1D,$30,$03,$22,$EF,$03,$FF,$54,$BE,$81,$FF,$04 ; $CD6A2B
    db $22,$3F,$9B,$EE,$40,$59,$DE,$C0,$DF,$05,$10,$F9,$08,$DB,$C2,$A0 ; $CD6A3B
    db $59,$21,$00,$01,$20,$0F,$06,$F0,$24,$01,$F1,$97,$1A,$F9,$0A,$DB ; $CD6A4B
    db $C4,$DC,$13,$F0,$8F,$F0,$7F,$C8,$1F,$D8,$4F,$E9,$1D,$03,$20,$9A ; $CD6A5B
    db $C3,$70,$E5,$26,$68,$E5,$BF,$4A,$CB,$35,$1F,$EA,$0F,$C4,$2F,$D5 ; $CD6A6B
    db $3F,$CE,$7F,$CE,$5B,$0F,$00,$31,$00,$C2,$D4,$39,$63,$09,$DA,$97 ; $CD6A7B
    db $BF,$11,$2A,$A0,$10,$F5,$12,$F7,$FD,$F7,$7F,$FF,$9F,$F9,$9E,$FE ; $CD6A8B
    db $5D,$F7,$32,$F7,$E1,$08,$E1,$54,$BC,$80,$BF,$08,$C1,$08,$06,$7F ; $CD6A9B
    db $EB,$FE,$3B,$D7,$DD,$80,$9F,$5F,$B8,$DC,$72,$02,$FD,$E9,$3E,$D2 ; $CD6AAB
    db $00,$04,$91,$39,$57,$01,$81,$0E,$29,$09,$FE,$ED,$B7,$C2,$F0,$FF ; $CD6ABB
    db $F9,$FC,$F4,$31,$D3,$84,$5D,$12,$F8,$8F,$DD,$DB,$03,$0A,$00,$28 ; $CD6ACB
    db $03,$21,$8C,$5C,$E2,$70,$15,$E5,$12,$C2,$5D,$14,$7B,$42,$F1,$31 ; $CD6ADB
    db $5C,$BA,$2D,$F9,$1C,$C0,$18,$28,$05,$A0,$03,$02,$80,$34,$0C,$C2 ; $CD6AEB
    db $40,$A8,$1F,$2E,$22,$01,$12,$55,$55,$EA,$2A,$F5,$45,$FA,$CA,$F5 ; $CD6AFB
    db $25,$EA,$0A,$9E,$DF,$DD,$DF,$EF,$3B,$72,$20,$F5,$AF,$DC,$7F,$3B ; $CD6B0B
    db $15,$AA,$8A,$40,$45,$BA,$AA,$5D,$55,$AE,$AA,$50,$D8,$98,$55,$13 ; $CD6B1B
    db $3D,$DB,$D2,$07,$06,$A8,$DF,$BF,$55,$00,$63,$03,$DF,$1F,$08,$BA ; $CD6B2B
    db $FF,$5D,$E1,$44,$3F,$88,$7F,$58,$BF,$A4,$5D,$40,$AB,$AA,$54,$D1 ; $CD6B3B
    db $2B,$C7,$37,$52,$61,$96,$42,$00,$BE,$D6,$F3,$F6,$1F,$EF,$02,$59 ; $CD6B4B
    db $DE,$0F,$E5,$40,$FF,$3F,$02,$BF,$59,$46,$26,$0D,$C6,$11,$FE,$F7 ; $CD6B5B
    db $DE,$00,$F4,$FF,$F3,$BF,$83,$FD,$33,$FF,$11,$07,$3F,$0C,$1D,$15 ; $CD6B6B
    db $27,$76,$04,$40,$70,$DF,$00,$2E,$A8,$C0,$55,$20,$EE,$8C,$F9,$29 ; $CD6B7B
    db $FF,$6A,$FF,$D9,$FB,$C1,$FF,$C0,$FF,$D0,$DF,$0F,$11,$00,$06,$91 ; $CD6B8B
    db $19,$04,$83,$45,$0F,$20,$10,$F0,$A8,$1B,$47,$FC,$EB,$DB,$6F,$DF ; $CD6B9B
    db $09,$04,$A2,$1B,$31,$DF,$03,$FC,$9D,$01,$87,$FC,$BF,$1A,$FC,$E7 ; $CD6BAB
    db $0E,$0A,$0D,$00,$03,$FC,$BF,$22,$01,$40,$E3,$F9,$06,$FE,$01,$F5 ; $CD6BBB
    db $08,$18,$ED,$00,$EF,$20,$03,$DC,$0E,$23,$F0,$0F,$F9,$95,$73,$F6 ; $CD6BCB
    db $CB,$00,$F3,$00,$18,$07,$84,$78,$5C,$80,$F0,$00,$3F,$E0,$FF,$90 ; $CD6BDB
    db $BF,$48,$F7,$38,$17,$A4,$E3,$67,$F8,$2B,$0F,$F8,$1F,$7A,$32,$00 ; $CD6BEB
    db $01,$23,$E5,$FB,$04,$EF,$ED,$01,$DD,$80,$01,$4B,$90,$50,$05,$80 ; $CD6BFB
    db $50,$8F,$4F,$90,$99,$01,$4D,$F9,$A9,$23,$19,$D5,$3F,$0E,$05,$88 ; $CD6C0B
    db $77,$FF,$A0,$35,$0C,$F0,$A7,$0F,$15,$01,$88,$AE,$44,$11,$05,$10 ; $CD6C1B
    db $C8,$22,$90,$05,$A0,$4A,$10,$E5,$00,$E2,$68,$B7,$C5,$2A,$88,$1D ; $CD6C2B
    db $15,$F0,$0A,$E0,$28,$0A,$18,$05,$07,$5C,$01,$A2,$00,$15,$72,$9B ; $CD6C3B
    db $14,$0E,$40,$A9,$02,$40,$E5,$07,$54,$DF,$DF,$74,$11,$89,$BB,$17 ; $CD6C4B
    db $A8,$A8,$5D,$79,$55,$81,$04,$40,$15,$A8,$02,$50,$D4,$8D,$9F,$81 ; $CD6C5B
    db $54,$C8,$2C,$15,$13,$0E,$AA,$A8,$55,$50,$A4,$C7,$01,$2A,$13,$08 ; $CD6C6B
    db $15,$03,$BF,$89,$72,$43,$A2,$AB,$67,$E7,$F8,$D7,$A6,$E7,$2D,$E7 ; $CD6C7B
    db $17,$17,$51,$A9,$08,$A9,$95,$54,$6B,$AA,$75,$55,$9A,$2A,$1D,$55 ; $CD6C8B
    db $0E,$B8,$FF,$50,$02,$28,$8A,$AA,$03,$80,$00,$03,$E1,$94,$20,$0A ; $CD6C9B
    db $41,$15,$1D,$A0,$2A,$54,$21,$FF,$10,$55,$A2,$8A,$D7,$F3,$12,$35 ; $CD6CAB
    db $80,$6A,$E6,$9B,$39,$DF,$00,$52,$7C,$40,$3E,$20,$4F,$09,$A7,$11 ; $CD6CBB
    db $04,$51,$01,$07,$2D,$AA,$81,$60,$9C,$10,$80,$10,$40,$EA,$28,$51 ; $CD6CCB
    db $67,$FF,$8F,$F7,$BD,$C0,$9F,$BF,$F9,$6F,$FE,$FF,$3F,$3E,$37,$8F ; $CD6CDB
    db $05,$7A,$7F,$43,$A8,$5F,$14,$DF,$CB,$4A,$1D,$40,$C3,$B7,$87,$F7 ; $CD6CEB
    db $F0,$A0,$03,$3A,$20,$04,$DA,$41,$97,$C3,$48,$41,$0B,$FD,$04,$29 ; $CD6CFB
    db $A1,$00,$F7,$F3,$D7,$C5,$DD,$90,$7A,$0A,$2D,$02,$F8,$5C,$3B,$A4 ; $CD6D0B
    db $20,$10,$0E,$80,$35,$5F,$45,$3E,$00,$5D,$BE,$BE,$80,$7F,$40,$AF ; $CD6D1B
    db $67,$9E,$43,$5D,$41,$A0,$5F,$80,$00,$0E,$DF,$91,$FF,$4F,$E8,$59 ; $CD6D2B
    db $7F,$F7,$67,$03,$F5,$51,$7D,$24,$6B,$4A,$11,$33,$00,$30,$F1,$1D ; $CD6D3B
    db $08,$80,$0A,$70,$80,$82,$18,$80,$34,$FD,$F4,$F4,$F9,$F3,$FC,$F8 ; $CD6D4B
    db $E9,$63,$02,$F0,$FE,$F6,$F0,$73,$04,$AA,$5B,$03,$95,$6E,$03,$72 ; $CD6D5B
    db $09,$00,$88,$03,$3F,$4F,$CB,$3F,$0D,$FC,$35,$F1,$17,$C4,$CF,$13 ; $CD6D6B
    db $7E,$8E,$8A,$78,$80,$30,$00,$C0,$91,$7D,$20,$0C,$01,$75,$70,$05 ; $CD6D7B
    db $80,$BF,$97,$BF,$2E,$FF,$9D,$F7,$72,$F7,$E5,$BE,$92,$B5,$25,$EA ; $CD6D8B
    db $8A,$40,$08,$40,$10,$00,$60,$08,$81,$08,$02,$40,$0D,$40,$EE,$40 ; $CD6D9B
    db $03,$75,$21,$6E,$4A,$D1,$11,$1D,$AA,$A8,$57,$F8,$63,$E8,$FF,$80 ; $CD6DAB
    db $1A,$80,$11,$31,$06,$E8,$4A,$5F,$03,$BA,$FF,$18,$2E,$1E,$B6,$38 ; $CD6DBB
    db $90,$73,$44,$84,$8B,$58,$4E,$BE,$A8,$5B,$54,$AC,$A3,$61,$80,$09 ; $CD6DCB
    db $42,$83,$30,$0C,$44,$01,$A0,$01,$A5,$A3,$D7,$1F,$1E,$DF,$1D,$7E ; $CD6DDB
    db $84,$94,$7C,$15,$FE,$FF,$00,$3E,$41,$D2,$2F,$02,$FF,$B0,$99,$79 ; $CD6DEB
    db $03,$94,$9D,$3D,$3E,$10,$7B,$2B,$75,$08,$45,$8E,$03,$2A,$15,$FD ; $CD6DFB
    db $EB,$A6,$97,$3D,$4D,$8B,$F7,$CB,$7B,$2C,$C8,$DF,$38,$23,$82,$03 ; $CD6E0B
    db $22,$7C,$A8,$06,$8E,$BF,$02,$55,$40,$77,$29,$40,$43,$8A,$50,$45 ; $CD6E1B
    db $A8,$A2,$04,$1F,$51,$A2,$A8,$0A,$6B,$9F,$A8,$A9,$F7,$71,$2A,$43 ; $CD6E2B
    db $0A,$56,$78,$03,$08,$1F,$FF,$7F,$77,$3F,$C0,$B9,$9F,$9F,$7F,$5F ; $CD6E3B
    db $8F,$8F,$04,$1F,$4F,$AF,$A7,$00,$5C,$C0,$80,$60,$E2,$03,$30,$BA ; $CD6E4B
    db $03,$FE,$ED,$55,$D2,$DF,$F4,$00,$BF,$81,$FF,$A3,$FF,$9E,$FF,$1E ; $CD6E5B
    db $8D,$55,$19,$5F,$40,$16,$75,$07,$D7,$03,$EF,$1E,$42,$FF,$BE,$F6 ; $CD6E6B
    db $70,$77,$64,$CF,$4B,$FF,$57,$FF,$CF,$DF,$0F,$10,$A8,$F9,$09,$80 ; $CD6E7B
    db $88,$2A,$03,$30,$E5,$07,$20,$10,$5A,$FB,$7F,$FB,$03,$BE,$C4,$60 ; $CD6E8B
    db $01,$8A,$D9,$0A,$00,$FE,$FF,$FA,$A4,$DE,$F8,$FF,$03,$EF,$E0,$F0 ; $CD6E9B
    db $EF,$C4,$CF,$D1,$02,$19,$4A,$E9,$30,$A6,$FF,$00,$01,$01,$F8,$F9 ; $CD6EAB
    db $00,$02,$44,$FD,$C8,$F1,$01,$06,$EA,$C5,$05,$40,$42,$F8,$07,$F0 ; $CD6EBB
    db $0F,$F3,$08,$1C,$D9,$03,$D8,$07,$01,$EE,$11,$7F,$80,$F8,$00,$F0 ; $CD6ECB
    db $D6,$8E,$67,$E4,$00,$38,$2E,$07,$EE,$1D,$00,$7F,$00,$1F,$E0,$6F ; $CD6EDB
    db $18,$07,$78,$07,$F8,$47,$E8,$9D,$0F,$F0,$17,$67,$E8,$34,$80,$13 ; $CD6EEB
    db $01,$00,$F7,$9D,$00,$01,$BF,$40,$FA,$05,$FB,$04,$F7,$18,$08,$FE ; $CD6EFB
    db $01,$64,$F2,$0D,$C3,$43,$0F,$90,$4A,$BE,$D7,$47,$5C,$90,$6D,$4E ; $CD6F0B
    db $90,$4C,$90,$42,$90,$40,$90,$C8,$37,$A1,$5E,$C0,$3F,$40,$BF,$51 ; $CD6F1B
    db $20,$C8,$00,$A1,$6E,$68,$DF,$00,$09,$1D,$F4,$04,$FA,$5E,$22,$A2 ; $CD6F2B
    db $7B,$03,$1D,$14,$FF,$01,$07,$53,$01,$06,$00,$00,$FB,$02,$26,$54 ; $CD6F3B
    db $BB,$29,$02,$01,$69,$A0,$2A,$11,$15,$60,$AA,$F4,$04,$C6,$5B,$DF ; $CD6F4B
    db $00,$04,$11,$2A,$80,$10,$45,$08,$A2,$8B,$70,$C3,$27,$80,$AA,$64 ; $CD6F5B
    db $3F,$8A,$0A,$05,$0A,$9F,$44,$11,$88,$98,$F7,$44,$1F,$27,$15,$44 ; $CD6F6B
    db $2E,$F7,$04,$D0,$FB,$1F,$1C,$07,$55,$03,$05,$77,$20,$BB,$D1,$1F ; $CD6F7B
    db $12,$2B,$28,$82,$AB,$1F,$20,$9B,$63,$1F,$3A,$2B,$28,$02,$1F,$20 ; $CD6F8B
    db $AA,$80,$15,$3C,$03,$2A,$04,$A2,$63,$D1,$8E,$37,$8E,$31,$F3,$0D ; $CD6F9B
    db $A7,$F1,$A9,$C3,$F3,$05,$6D,$80,$F8,$09,$1F,$71,$0D,$25,$05,$D0 ; $CD6FAB
    db $3B,$09,$00,$41,$08,$90,$33,$4C,$01,$88,$02,$4A,$A0,$A2,$17,$14 ; $CD6FBB
    db $A2,$26,$E1,$49,$00,$91,$36,$41,$FA,$FE,$BF,$3F,$37,$07,$A6,$D4 ; $CD6FCB
    db $03,$D4,$A1,$A8,$7D,$01,$3F,$9D,$F8,$23,$F7,$80,$09,$50,$A3,$9B ; $CD6FDB
    db $0B,$91,$80,$C0,$3F,$8F,$75,$15,$EA,$8A,$F5,$95,$2A,$0A,$F7,$54 ; $CD6FEB
    db $E7,$A2,$D7,$41,$BA,$92,$11,$61,$35,$53,$83,$00,$28,$01,$7F,$08 ; $CD6FFB
    db $A6,$00,$4D,$7F,$40,$10,$DB,$7F,$06,$00,$7F,$41,$EA,$2A,$07,$0A ; $CD700B
    db $BE,$80,$00,$BF,$B3,$9B,$A6,$1D,$2A,$A3,$41,$C7,$04,$14,$AB,$58 ; $CD701B
    db $77,$2A,$61,$2A,$47,$B2,$A2,$55,$1D,$DF,$40,$EA,$DF,$81,$54,$08 ; $CD702B
    db $80,$0A,$08,$45,$F0,$F9,$7C,$43,$5C,$FA,$F0,$3E,$F6,$F0,$37,$04 ; $CD703B
    db $BC,$21,$C8,$8A,$5F,$40,$BE,$A2,$80,$3C,$01,$C0,$09,$00,$C8,$03 ; $CD704B
    db $40,$1E,$20,$F5,$80,$01,$5C,$00,$1B,$C2,$DE,$10,$75,$85,$82,$2A ; $CD705B
    db $C3,$BF,$18,$90,$37,$00,$BF,$08,$24,$01,$20,$0F,$00,$7A,$E5,$56 ; $CD706B
    db $07,$BF,$B6,$41,$D5,$CF,$02,$7F,$5A,$23,$A2,$F9,$07,$1F,$33,$01 ; $CD707B
    db $54,$00,$A8,$BF,$17,$D2,$FF,$52,$01,$B6,$A4,$3D,$11,$BA,$2A,$01 ; $CD708B
    db $5B,$BF,$0B,$17,$08,$A1,$08,$96,$43,$40,$8E,$40,$15,$55,$53,$A8 ; $CD709B
    db $29,$96,$15,$EB,$AA,$B5,$55,$8A,$8A,$55,$45,$AA,$7F,$01,$28,$06 ; $CD70AB
    db $50,$40,$28,$00,$14,$14,$D0,$83,$43,$FF,$48,$60,$B7,$DD,$7E,$C1 ; $CD70BB
    db $C3,$3C,$07,$50,$BF,$68,$4F,$A8,$4A,$5F,$48,$20,$FE,$3E,$03,$E8 ; $CD70CB
    db $42,$8B,$DC,$67,$62,$81,$15,$22,$CA,$04,$45,$70,$0A,$30,$C5,$88 ; $CD70DB
    db $72,$10,$E1,$26,$D8,$C0,$09,$B0,$0A,$80,$05,$33,$28,$02,$03,$1C ; $CD70EB
    db $BE,$FF,$15,$E9,$BF,$1E,$11,$45,$20,$02,$95,$B7,$B6,$97,$B5,$A7 ; $CD70FB
    db $54,$F6,$07,$FA,$91,$04,$1B,$BB,$5F,$80,$FB,$55,$15,$2A,$8A,$15 ; $CD710B
    db $45,$1E,$26,$A2,$06,$03,$1F,$B6,$FF,$09,$55,$50,$A9,$A8,$55,$83 ; $CD711B
    db $8A,$19,$07,$2A,$6B,$FD,$F7,$01,$40,$1F,$9E,$FF,$3E,$FE,$60,$EF ; $CD712B
    db $12,$84,$4D,$41,$45,$27,$0C,$D9,$01,$B9,$03,$4E,$12,$3E,$07,$03 ; $CD713B
    db $7A,$DF,$79,$00,$1F,$F2,$04,$DF,$FF,$AE,$D1,$3F,$00,$F1,$43,$1F ; $CD714B
    db $A0,$AA,$E9,$07,$BF,$00,$55,$FE,$D9,$8D,$92,$C9,$B6,$06,$10,$39 ; $CD715B
    db $87,$78,$1F,$E6,$51,$40,$55,$04,$52,$83,$07,$00,$1F,$18,$E7,$B6 ; $CD716B
    db $49,$A6,$59,$9A,$1D,$65,$1C,$E3,$45,$02,$0E,$1F,$00,$92,$A3,$9F ; $CD717B
    db $3A,$01,$1C,$86,$07,$F8,$1F,$8B,$48,$D7,$F8,$07,$9C,$BD,$01,$DE ; $CD718B
    db $16,$01,$90,$07,$B6,$D7,$00,$2D,$3E,$00,$A8,$40,$8F,$04,$40,$2F ; $CD719B
    db $D0,$37,$C8,$00,$01,$27,$D8,$07,$C8,$97,$68,$3A,$B0,$0A,$EA,$FC ; $CD71AB
    db $12,$1D,$01,$02,$30,$5D,$09,$3F,$03,$01,$B0,$4F,$28,$01,$B8,$03 ; $CD71BB
    db $40,$41,$90,$01,$00,$EE,$02,$01,$5C,$96,$3F,$20,$FF,$01,$FF,$35 ; $CD71CB
    db $FF,$05,$FF,$59,$FF,$2F,$FF,$07,$B8,$FF,$44,$FF,$25,$03,$FF,$6E ; $CD71DB
    db $FF,$4D,$FF,$EF,$B8,$FC,$97,$9E,$BF,$06,$00,$B8,$55,$A0,$D5,$10 ; $CD71EB
    db $EA,$A5,$E5,$FA,$F2,$FD,$F9,$FE,$FC,$1D,$E4,$C9,$B3,$18,$02,$D4 ; $CD71FB
    db $25,$44,$02,$51,$23,$01,$54,$0A,$D8,$89,$B3,$8C,$01,$41,$48,$AA ; $CD720B
    db $A0,$4C,$51,$A8,$D1,$5F,$70,$14,$41,$26,$88,$00,$51,$36,$81,$14 ; $CD721B
    db $43,$00,$AE,$E9,$AB,$E9,$BB,$07,$11,$44,$A8,$A2,$14,$48,$FF,$40 ; $CD722B
    db $54,$82,$FA,$03,$AA,$3F,$01,$92,$9F,$50,$05,$3B,$29,$95,$0D,$40 ; $CD723B
    db $C0,$0D,$C2,$28,$50,$8E,$6D,$D7,$84,$BF,$2A,$82,$15,$86,$29,$88 ; $CD724B
    db $22,$03,$C7,$47,$15,$40,$4D,$31,$1C,$3F,$88,$03,$75,$20,$80,$3A ; $CD725B
    db $08,$55,$60,$15,$98,$06,$22,$06,$51,$83,$28,$15,$0E,$0A,$A0,$04 ; $CD726B
    db $51,$45,$4B,$07,$37,$A8,$82,$67,$DB,$0A,$57,$63,$07,$4B,$0B,$41 ; $CD727B
    db $0C,$A2,$54,$97,$2A,$31,$11,$05,$06,$A0,$2C,$79,$14,$41,$5D,$E0 ; $CD728B
    db $6D,$15,$48,$82,$20,$09,$50,$7F,$F5,$2E,$55,$6A,$19,$2A,$D1,$95 ; $CD729B
    db $A9,$2A,$55,$14,$08,$88,$F2,$05,$33,$B9,$2A,$C4,$7F,$6A,$0E,$29 ; $CD72AB
    db $63,$14,$A0,$07,$55,$74,$BA,$75,$24,$2A,$08,$D7,$12,$EE,$A4,$C5 ; $CD72BB
    db $41,$BA,$22,$CD,$45,$3A,$8A,$01,$9A,$C1,$34,$00,$69,$00,$53,$18 ; $CD72CB
    db $A6,$00,$CD,$30,$48,$B5,$BC,$00,$9B,$F7,$84,$88,$AA,$5D,$41,$CD ; $CD72DB
    db $84,$FF,$51,$6E,$22,$41,$3E,$A8,$9B,$03,$22,$80,$22,$10,$00,$26 ; $CD72EB
    db $0E,$4B,$95,$14,$A8,$82,$BB,$2A,$A2,$E1,$51,$51,$AE,$AA,$D1,$51 ; $CD72FB
    db $2A,$29,$40,$2A,$41,$14,$04,$1F,$0C,$58,$DF,$28,$61,$C0,$D2,$55 ; $CD730B
    db $28,$2A,$70,$D0,$55,$E8,$AA,$51,$14,$88,$88,$63,$54,$3A,$89,$97 ; $CD731B
    db $9D,$D7,$44,$FF,$1A,$7F,$98,$87,$E5,$8B,$41,$0E,$22,$51,$15,$A2 ; $CD732B
    db $4A,$56,$90,$37,$84,$BD,$21,$EA,$0A,$14,$22,$C0,$1D,$D8,$11,$34 ; $CD733B
    db $09,$77,$60,$80,$07,$1E,$00,$F5,$52,$50,$0C,$2B,$A2,$2F,$09,$9B ; $CD734B
    db $F5,$11,$95,$AA,$2A,$00,$DF,$05,$A8,$14,$41,$50,$09,$86,$40,$1D ; $CD735B
    db $00,$D2,$23,$F4,$E2,$17,$51,$B9,$3F,$4B,$A8,$DF,$5F,$01,$A6,$3B ; $CD736B
    db $7F,$5F,$EA,$89,$93,$54,$54,$8A,$72,$CC,$55,$2D,$A9,$A8,$A7,$97 ; $CD737B
    db $F0,$9F,$54,$47,$50,$AB,$0E,$AA,$D5,$55,$CA,$F8,$9F,$A4,$90,$99 ; $CD738B
    db $15,$24,$E2,$8A,$71,$9F,$2A,$20,$15,$71,$28,$82,$4A,$01,$42,$18 ; $CD739B
    db $00,$75,$01,$78,$92,$1C,$30,$04,$A7,$A0,$85,$3F,$C2,$95,$15,$3F ; $CD73AB
    db $80,$87,$00,$60,$01,$4B,$80,$08,$50,$77,$A7,$B8,$75,$00,$58,$05 ; $CD73BB
    db $B6,$08,$76,$09,$1E,$20,$9C,$01,$E0,$80,$51,$A0,$4A,$40,$A2,$80 ; $CD73CB
    db $07,$53,$50,$82,$84,$43,$52,$B5,$15,$75,$60,$55,$2B,$01,$8A,$DF ; $CD73DB
    db $82,$2A,$B2,$1B,$75,$1F,$76,$01,$03,$4C,$40,$83,$75,$03,$15,$BA ; $CD73EB
    db $A2,$16,$51,$AB,$8C,$DB,$2A,$DB,$55,$EE,$C7,$87,$03,$1B,$A8,$80 ; $CD73FB
    db $54,$E8,$02,$1F,$AA,$F5,$FF,$CC,$5F,$B8,$A2,$58,$A0,$FA,$02,$83 ; $CD740B
    db $3F,$8A,$04,$41,$04,$A8,$DC,$01,$1F,$03,$76,$A2,$03,$3F,$72,$02 ; $CD741B
    db $06,$A3,$2D,$88,$05,$50,$B8,$53,$76,$54,$1B,$8B,$8F,$3F,$14,$55 ; $CD742B
    db $21,$08,$A2,$5F,$BA,$5F,$06,$00,$50,$0B,$A4,$2C,$41,$D8,$AA,$B0 ; $CD743B
    db $25,$55,$E9,$81,$1F,$A8,$10,$43,$10,$8E,$D8,$A3,$2A,$02,$C0,$0B ; $CD744B
    db $54,$FE,$00,$78,$84,$C0,$49,$11,$44,$02,$A8,$7D,$1D,$00,$39,$40 ; $CD745B
    db $73,$5B,$00,$01,$AE,$9F,$11,$EE,$86,$BF,$83,$00,$82,$3C,$20,$1D ; $CD746B
    db $A9,$00,$D4,$80,$50,$48,$05,$AC,$02,$52,$05,$18,$21,$0A,$5A,$A2 ; $CD747B
    db $54,$14,$5C,$2A,$7B,$9A,$45,$50,$A2,$A8,$51,$50,$A8,$A0,$54,$0F ; $CD748B
    db $F0,$07,$F8,$87,$78,$E0,$DD,$18,$27,$98,$17,$48,$2D,$07,$A0,$6A ; $CD749B
    db $D7,$60,$38,$C3,$01,$A2,$18,$42,$AF,$40,$BF,$40,$13,$DD,$69,$DF ; $CD74AB
    db $EB,$BE,$73,$8F,$03,$58,$DD,$90,$3E,$E7,$10,$1D,$20,$FF,$07,$23 ; $CD74BB
    db $DF,$1F,$FF,$5F,$A7,$DF,$BC,$D3,$7C,$E0,$04,$E0,$BF,$15,$2F,$7F ; $CD74CB
    db $6F,$0F,$02,$CF,$E3,$FE,$FC,$FE,$FE,$52,$DF,$80,$47,$00,$89,$DC ; $CD74DB
    db $01,$FF,$E2,$E8,$02,$D9,$3A,$FD,$7F,$AF,$02,$9F,$07,$90,$FE,$20 ; $CD74EB
    db $D5,$95,$EA,$3A,$CA,$F5,$44,$FF,$FB,$F9,$FF,$91,$3F,$01,$9B,$0A ; $CD74FB
    db $04,$01,$04,$33,$20,$01,$A1,$FB,$04,$C7,$03,$40,$5A,$9F,$80,$EE ; $CD750B
    db $7F,$CB,$04,$47,$3F,$DD,$A7,$21,$EC,$D7,$5A,$9B,$44,$99,$15,$11 ; $CD751B
    db $DF,$C9,$FB,$04,$F5,$A3,$40,$1B,$22,$14,$41,$2A,$80,$84,$06,$11 ; $CD752B
    db $20,$8A,$09,$41,$19,$8E,$1D,$5B,$14,$00,$CA,$44,$2A,$50,$05,$14 ; $CD753B
    db $18,$A2,$05,$50,$3B,$A0,$0A,$CE,$31,$22,$E3,$A8,$00,$34,$15,$40 ; $CD754B
    db $A2,$08,$04,$AA,$A0,$EE,$B8,$3F,$22,$3B,$A8,$E9,$FF,$4F,$A2,$B1 ; $CD755B
    db $3F,$5D,$43,$3F,$55,$2B,$A2,$57,$80,$B8,$1B,$80,$19,$33,$44,$33 ; $CD756B
    db $40,$88,$03,$32,$45,$00,$10,$88,$51,$24,$A1,$4A,$00,$99,$E4,$1F ; $CD757B
    db $1D,$03,$98,$20,$5F,$9A,$00,$34,$35,$44,$18,$B3,$8A,$75,$6C,$8A ; $CD758B
    db $05,$77,$45,$5B,$95,$45,$87,$99,$13,$51,$9A,$A3,$55,$C3,$83,$18 ; $CD759B
    db $A2,$17,$67,$9D,$51,$1E,$AC,$22,$DD,$51,$2C,$22,$CD,$51,$4D,$84 ; $CD75AB
    db $1C,$41,$2F,$B0,$00,$A6,$97,$3F,$A6,$03,$5F,$26,$22,$10,$22,$0B ; $CD75BB
    db $2D,$5F,$57,$34,$8F,$EB,$88,$77,$14,$23,$08,$F1,$50,$45,$AA,$C2 ; $CD75CB
    db $51,$2A,$A4,$00,$A9,$50,$1F,$A9,$03,$C0,$35,$06,$29,$00,$51,$A5 ; $CD75DB
    db $E3,$53,$00,$7B,$73,$44,$32,$89,$C0,$7F,$18,$88,$71,$24,$E0,$78 ; $CD75EB
    db $8A,$07,$7F,$35,$15,$EA,$15,$9B,$05,$63,$DB,$0A,$B9,$23,$3E,$AA ; $CD75FB
    db $2A,$0C,$C5,$FF,$51,$7E,$DF,$4F,$07,$0A,$44,$1F,$3A,$DB,$2A,$80 ; $CD760B
    db $63,$AB,$A9,$4B,$42,$3C,$AE,$88,$02,$1B,$04,$B8,$D5,$50,$14,$A1 ; $CD761B
    db $50,$07,$55,$51,$AB,$A4,$6D,$49,$5A,$22,$71,$55,$EA,$51,$1F,$02 ; $CD762B
    db $03,$BB,$86,$80,$1D,$B5,$31,$55,$07,$D5,$3A,$21,$3B,$1B,$14,$7F ; $CD763B
    db $27,$06,$FB,$7F,$FC,$5F,$57,$B8,$54,$57,$52,$AF,$A5,$6E,$4B,$FD ; $CD764B
    db $A7,$FF,$5F,$FD,$3F,$83,$13,$A9,$10,$42,$10,$84,$AE,$1D,$20,$B8 ; $CD765B
    db $E0,$00,$C0,$D0,$A5,$80,$62,$58,$A5,$C4,$3A,$E2,$1D,$E7,$38,$E2 ; $CD766B
    db $3D,$03,$40,$0A,$18,$85,$C0,$1D,$00,$41,$20,$40,$04,$32,$40,$00 ; $CD767B
    db $03,$41,$2F,$7B,$1A,$9F,$3C,$43,$05,$D4,$01,$E8,$02,$01,$64,$9B ; $CD768B
    db $80,$7B,$F6,$D4,$BA,$16,$A8,$E7,$DF,$02,$A8,$F0,$02,$31,$88,$27 ; $CD769B
    db $22,$00,$64,$17,$B1,$C3,$88,$55,$2F,$08,$3B,$02,$AA,$BF,$DB,$D1 ; $CD76AB
    db $04,$1F,$17,$DB,$8C,$EB,$05,$E3,$FB,$04,$8E,$11,$05,$8C,$83,$1F ; $CD76BB
    db $28,$78,$8A,$06,$BF,$20,$55,$30,$47,$50,$68,$15,$55,$22,$EC,$3B ; $CD76CB
    db $0A,$E0,$E3,$A8,$82,$08,$3F,$A0,$20,$03,$3A,$3F,$28,$C0,$7F,$79 ; $CD76DB
    db $00,$45,$52,$01,$8E,$A8,$42,$51,$0E,$A4,$0D,$D8,$B1,$80,$28,$3B ; $CD76EB
    db $86,$01,$23,$C3,$53,$76,$BB,$EB,$17,$55,$85,$50,$18,$8A,$A4,$54 ; $CD76FB
    db $49,$88,$82,$30,$45,$90,$8A,$70,$05,$60,$8A,$02,$A9,$00,$17,$30 ; $CD770B
    db $4D,$00,$9A,$60,$15,$20,$EC,$BF,$C1,$60,$14,$BF,$05,$50,$0A,$A0 ; $CD771B
    db $D2,$DF,$19,$03,$01,$EA,$BF,$05,$DD,$7B,$4D,$15,$03,$70,$40,$14 ; $CD772B
    db $A0,$0A,$50,$05,$A0,$02,$48,$15,$80,$22,$C1,$C3,$06,$A8,$81,$2A ; $CD773B
    db $15,$DB,$03,$B8,$45,$40,$A2,$8C,$51,$82,$83,$53,$0F,$50,$E1,$87 ; $CD774B
    db $20,$47,$10,$47,$A8,$07,$10,$27,$88,$27,$50,$B1,$03,$25,$08,$52 ; $CD775B
    db $C6,$17,$12,$69,$3A,$00,$52,$A3,$EB,$52,$B1,$4F,$0E,$01,$B3,$4F ; $CD776B
    db $BF,$67,$01,$05,$FF,$3E,$01,$04,$61,$FB,$01,$D2,$92,$FE,$3B,$FF ; $CD777B
    db $FD,$80,$84,$F5,$FF,$EB,$FF,$16,$D7,$FF,$AF,$9E,$96,$AD,$43,$71 ; $CD778B
    db $C1,$D5,$14,$4A,$BF,$85,$DF,$FD,$22,$27,$8F,$FF,$03,$E1,$BF,$01 ; $CD779B
    db $F3,$02,$FF,$C3,$25,$BF,$9F,$E4,$07,$FF,$60,$00,$54,$F0,$A5,$FB ; $CD77AB
    db $EB,$58,$3C,$9F,$FF,$03,$98,$FB,$25,$00,$05,$FE,$BB,$90,$E9,$60 ; $CD77BB
    db $CA,$C8,$E1,$EF,$67,$1D,$80,$BB,$80,$2A,$10,$05,$14,$02,$0F,$05 ; $CD77CB
    db $00,$00,$54,$07,$B3,$91,$E0,$07,$BF,$95,$00,$08,$32,$88,$1D,$40 ; $CD77DB
    db $A7,$C9,$00,$0C,$21,$44,$EC,$12,$55,$2A,$42,$3A,$05,$13,$9C,$9B ; $CD77EB
    db $27,$DA,$06,$05,$99,$22,$20,$45,$17,$22,$A8,$02,$42,$FB,$34,$01 ; $CD77FB
    db $86,$20,$19,$4A,$02,$A9,$C0,$06,$68,$15,$4C,$82,$22,$89,$50,$07 ; $CD780B
    db $B6,$40,$95,$40,$60,$51,$20,$0A,$7C,$01,$06,$79,$04,$74,$03,$87 ; $CD781B
    db $DD,$47,$6A,$EE,$3F,$7B,$E0,$15,$02,$80,$C2,$38,$8C,$00,$88,$50 ; $CD782B
    db $84,$51,$02,$28,$40,$14,$20,$8A,$50,$05,$04,$A2,$83,$54,$27,$10 ; $CD783B
    db $1B,$C1,$14,$83,$75,$48,$00,$B5,$00,$28,$C0,$35,$10,$EB,$00,$E5 ; $CD784B
    db $80,$14,$3E,$80,$5F,$20,$81,$8D,$7F,$00,$16,$07,$9B,$41,$2A,$41 ; $CD785B
    db $00,$73,$31,$C2,$C3,$80,$00,$E1,$14,$49,$28,$92,$91,$24,$62,$89 ; $CD786B
    db $85,$52,$16,$A0,$80,$75,$30,$4A,$00,$A6,$41,$0C,$EF,$5D,$57,$74 ; $CD787B
    db $68,$3F,$47,$80,$0A,$1D,$81,$34,$A0,$57,$E5,$90,$00,$29,$1F,$40 ; $CD788B
    db $4F,$90,$A7,$50,$2A,$E1,$06,$8C,$3F,$E5,$D4,$00,$20,$80,$20,$0F ; $CD789B
    db $08,$20,$18,$01,$33,$45,$15,$73,$B1,$00,$6D,$2A,$46,$90,$33,$84 ; $CD78AB
    db $1C,$21,$67,$E2,$7F,$AA,$70,$3B,$2A,$23,$81,$54,$EE,$BF,$C0,$FB ; $CD78BB
    db $BF,$14,$A6,$73,$E1,$5B,$42,$CE,$10,$F5,$85,$8A,$28,$12,$54,$0E ; $CD78CB
    db $A3,$82,$9B,$05,$50,$24,$81,$2D,$E3,$01,$05,$D0,$09,$A2,$00,$54 ; $CD78DB
    db $BD,$DE,$A7,$D3,$C5,$60,$DF,$45,$55,$E8,$47,$2A,$BF,$D3,$04,$ED ; $CD78EB
    db $63,$BA,$DF,$57,$03,$56,$AF,$AD,$4B,$41,$AD,$E4,$02,$FF,$A8,$00 ; $CD78FB
    db $07,$50,$14,$A0,$52,$04,$48,$BB,$A1,$6F,$43,$2A,$7F,$0F,$1B,$05 ; $CD790B
    db $7F,$00,$A4,$BB,$46,$10,$15,$8C,$80,$30,$0D,$05,$80,$02,$D8,$D8 ; $CD791B
    db $FE,$FC,$2A,$FC,$FE,$02,$41,$DE,$CB,$5E,$17,$3A,$15,$03,$9C,$0B ; $CD792B
    db $41,$20,$04,$A0,$96,$08,$61,$38,$C5,$BA,$86,$79,$82,$71,$8A,$F5 ; $CD793B
    db $04,$E3,$14,$EB,$A8,$D7,$86,$41,$00,$01,$18,$82,$0C,$82,$1D,$18 ; $CD794B
    db $04,$88,$61,$BA,$C6,$35,$C0,$12,$E8,$3D,$C0,$FE,$00,$4F,$80,$3F ; $CD795B
    db $C0,$3D,$C2,$1B,$84,$15,$0A,$02,$05,$25,$02,$E2,$09,$75,$08,$16 ; $CD796B
    db $08,$0D,$10,$6B,$10,$BB,$00,$5C,$01,$BB,$04,$5F,$00,$2D,$02,$77 ; $CD797B
    db $5F,$11,$FC,$70,$B7,$50,$A2,$A0,$49,$01,$4C,$A1,$A0,$51,$91,$2E ; $CD798B
    db $CA,$D2,$FF,$A0,$46,$0A,$E3,$03,$51,$04,$82,$28,$41,$14,$B7,$EB ; $CD799B
    db $5D,$DF,$01,$C0,$23,$51,$AA,$82,$55,$71,$41,$07,$04,$D2,$25,$50 ; $CD79AB
    db $6E,$05,$1B,$E3,$B1,$BC,$47,$C8,$F1,$04,$B3,$33,$8A,$1B,$01,$F0 ; $CD79BB
    db $47,$80,$55,$FA,$01,$BE,$ED,$51,$02,$89,$3F,$56,$1F,$47,$07,$0C ; $CD79CB
    db $4E,$D3,$03,$C6,$3B,$01,$50,$11,$08,$44,$11,$80,$28,$98,$D3,$3A ; $CD79DB
    db $03,$0D,$9C,$7F,$3F,$86,$06,$51,$61,$14,$60,$8A,$57,$02,$02,$88 ; $CD79EB
    db $35,$40,$8A,$00,$3B,$87,$D0,$1B,$35,$C0,$37,$62,$15,$15,$8A,$BA ; $CD79FB
    db $3B,$45,$04,$A2,$67,$05,$50,$8A,$AA,$30,$15,$43,$40,$03,$3A,$0B ; $CD7A0B
    db $05,$B1,$B7,$94,$72,$15,$03,$C1,$0B,$06,$51,$26,$88,$80,$03,$82 ; $CD7A1B
    db $20,$4A,$15,$A4,$02,$0E,$54,$09,$A8,$12,$EB,$77,$53,$07,$03,$8C ; $CD7A2B
    db $53,$40,$A2,$48,$E3,$A6,$80,$4D,$B8,$F5,$3F,$40,$2F,$90,$37,$48 ; $CD7A3B
    db $37,$88,$17,$08,$5F,$A0,$6F,$10,$3F,$00,$AE,$F9,$4A,$E0,$01,$52 ; $CD7A4B
    db $60,$18,$92,$08,$12,$95,$D8,$22,$18,$BF,$4F,$8F,$01,$60,$9F,$08 ; $CD7A5B
    db $70,$BF,$7F,$BF,$E0,$87,$7F,$00,$01,$90,$30,$80,$10,$80,$00,$8F ; $CD7A6B
    db $5C,$73,$85,$01,$A4,$B7,$FC,$FD,$3F,$01,$FF,$01,$EA,$A7,$00,$A1 ; $CD7A7B
    db $1E,$00,$F6,$01,$FC,$A7,$02,$BE,$DF,$FF,$0E,$67,$DF,$5B,$17,$2D ; $CD7A8B
    db $27,$5B,$17,$0E,$27,$FF,$DF,$B4,$FA,$EF,$E7,$18,$E7,$FF,$F7,$01 ; $CD7A9B
    db $F3,$F3,$24,$FF,$FB,$36,$51,$18,$05,$0C,$F4,$03,$25,$1F,$FD,$FF ; $CD7AAB
    db $FE,$09,$E0,$1F,$C0,$FE,$01,$E0,$FF,$60,$FF,$C8,$FF,$F0,$CC,$01 ; $CD7ABB
    db $09,$78,$3D,$FF,$01,$07,$1F,$D5,$ED,$00,$8A,$10,$C5,$0E,$F0,$08 ; $CD7ACB
    db $F6,$0F,$1A,$F0,$0C,$F3,$01,$AC,$3B,$55,$02,$0E,$7D,$07,$1D,$89 ; $CD7ADB
    db $04,$25,$8B,$5B,$75,$00,$8F,$0A,$A0,$C4,$11,$B0,$42,$06,$F0,$06 ; $CD7AEB
    db $F8,$F9,$06,$D2,$0D,$45,$BA,$5A,$BB,$2A,$1C,$08,$85,$09,$22,$0B ; $CD7AFB
    db $55,$00,$A2,$08,$54,$2C,$15,$40,$6E,$EA,$07,$FD,$F3,$A9,$D2,$09 ; $CD7B0B
    db $15,$AA,$1A,$05,$58,$AC,$A8,$7D,$02,$01,$34,$B0,$1B,$78,$A8,$01 ; $CD7B1B
    db $23,$60,$15,$33,$68,$82,$03,$E0,$07,$50,$00,$93,$00,$57,$71,$90 ; $CD7B2B
    db $9D,$22,$08,$AE,$DF,$12,$80,$35,$34,$8A,$A9,$44,$5A,$A1,$A8,$57 ; $CD7B3B
    db $3F,$40,$93,$F7,$3E,$41,$1A,$23,$41,$14,$6B,$39,$B3,$97,$A3,$BF ; $CD7B4B
    db $20,$D5,$41,$82,$6B,$C1,$14,$03,$29,$F1,$EB,$40,$B5,$A4,$01,$13 ; $CD7B5B
    db $44,$8C,$22,$97,$B7,$BF,$0E,$80,$54,$82,$28,$8A,$50,$08,$A3,$80 ; $CD7B6B
    db $5D,$7E,$81,$AC,$25,$54,$29,$55,$A0,$AE,$0A,$C7,$00,$7E,$FD,$57 ; $CD7B7B
    db $9D,$03,$09,$9F,$02,$C4,$89,$0F,$07,$03,$A8,$06,$B8,$0D,$04,$50 ; $CD7B8B
    db $02,$0E,$52,$0A,$A8,$07,$E4,$17,$04,$54,$B8,$47,$27,$A0,$33,$04 ; $CD7B9B
    db $9F,$22,$0D,$A0,$05,$50,$00,$AB,$40,$BB,$08,$50,$48,$82,$40,$1C ; $CD7BAB
    db $D7,$E4,$2E,$81,$28,$47,$51,$37,$84,$BF,$03,$7F,$8F,$FF,$77,$9D ; $CD7BBB
    db $79,$80,$6A,$02,$D4,$08,$A0,$B5,$FB,$1C,$1E,$04,$A9,$02,$80,$BF ; $CD7BCB
    db $27,$60,$D9,$AF,$8F,$EB,$E3,$23,$FB,$F8,$23,$9F,$40,$E7,$95,$00 ; $CD7BDB
    db $50,$7B,$C0,$2B,$E2,$A5,$D9,$FF,$C0,$50,$1C,$77,$43,$7F,$0B,$B2 ; $CD7BEB
    db $F2,$3F,$7A,$99,$32,$FE,$3F,$E3,$7E,$4F,$FB,$3F,$ED,$FE,$FA,$F9 ; $CD7BFB
    db $EB,$E2,$66,$09,$78,$47,$E0,$3F,$D5,$19,$EF,$30,$BC,$3B,$14,$01 ; $CD7C0B
    db $90,$1A,$06,$80,$38,$0B,$E3,$50,$AF,$A0,$5F,$40,$BE,$81,$7E,$06 ; $CD7C1B
    db $F9,$0D,$F2,$4A,$B5,$94,$4B,$10,$39,$01,$E8,$39,$E8,$44,$C5,$06 ; $CD7C2B
    db $02,$A0,$D3,$04,$6F,$90,$A5,$5A,$4C,$33,$93,$6C,$AF,$50,$15,$EA ; $CD7C3B
    db $01,$FE,$07,$F8,$0F,$20,$05,$20,$8C,$40,$13,$80,$2F,$80,$15,$B3 ; $CD7C4B
    db $E3,$07,$E1,$00,$00,$F5,$00,$F6,$C1,$01,$FE,$00,$E7,$1E,$71,$88 ; $CD7C5B
    db $01,$ED,$71,$02,$FA,$01,$F9,$00,$F7,$00,$FB,$04,$EB,$04,$E7,$08 ; $CD7C6B
    db $D7,$08,$15,$9D,$AE,$E8,$A5,$CE,$58,$FA,$2B,$27,$15,$00,$B7,$6A ; $CD7C7B
    db $15,$D5,$0A,$F6,$01,$FD,$E0,$2F,$51,$04,$28,$7E,$82,$04,$DF,$77 ; $CD7C8B
    db $51,$FF,$B3,$02,$62,$DF,$27,$04,$51,$52,$9B,$55,$EC,$34,$57,$E2 ; $CD7C9B
    db $03,$04,$73,$9B,$54,$00,$CE,$A9,$A9,$54,$47,$10,$8B,$20,$55,$51 ; $CD7CAB
    db $47,$0C,$A2,$08,$F5,$01,$63,$45,$A8,$8A,$54,$51,$41,$1F,$22,$55 ; $CD7CBB
    db $95,$70,$2A,$8A,$35,$45,$10,$A9,$00,$D1,$04,$E2,$08,$65,$E3,$5B ; $CD7CCB
    db $56,$86,$03,$43,$A8,$37,$B8,$60,$51,$2A,$A2,$15,$55,$8A,$B2,$45 ; $CD7CDB
    db $51,$A8,$AB,$54,$37,$29,$00,$7D,$00,$4F,$BF,$82,$0C,$FE,$00,$0C ; $CD7CEB
    db $57,$83,$FE,$7F,$93,$7F,$00,$E1,$70,$05,$69,$02,$D7,$00,$AF,$39 ; $CD7CFB
    db $00,$4F,$03,$00,$DF,$A0,$1A,$C8,$34,$77,$14,$2B,$CE,$55,$85,$A2 ; $CD7D0B
    db $9B,$44,$27,$18,$9F,$60,$BF,$40,$7B,$80,$F7,$03,$19,$F7,$08,$FF ; $CD7D1B
    db $04,$00,$05,$18,$22,$3C,$42,$0C,$02,$02,$3B,$FC,$FE,$41,$15,$EF ; $CD7D2B
    db $7F,$F3,$08,$2F,$E1,$07,$0F,$3F,$3F,$0F,$8E,$00,$07,$03,$37,$00 ; $CD7D3B
    db $01,$00,$5D,$99,$C0,$D9,$80,$00,$5B,$DB,$AB,$07,$D2,$46,$F3,$74 ; $CD7D4B
    db $F1,$BC,$E1,$F3,$02,$01,$0C,$54,$02,$F8,$E1,$01,$01,$FF,$FB,$C7 ; $CD7D5B
    db $01,$F9,$F9,$4A,$BE,$FC,$48,$01,$25,$53,$06,$7A,$DF,$27,$01,$FF ; $CD7D6B
    db $5B,$3A,$3E,$05,$09,$43,$DF,$FF,$F8,$FF,$A2,$A7,$D7,$29,$05,$A0 ; $CD7D7B
    db $05,$E8,$08,$1F,$98,$D3,$01,$01,$2C,$F3,$0B,$F0,$2F,$F0,$BC,$05 ; $CD7D8B
    db $02,$79,$04,$A9,$E1,$00,$12,$ED,$0B,$F4,$09,$F6,$02,$FD,$23,$04 ; $CD7D9B
    db $FB,$60,$03,$02,$12,$00,$0B,$00,$51,$09,$A2,$00,$55,$C5,$01,$EE ; $CD7DAB
    db $00,$DE,$20,$CF,$30,$FF,$38,$1D,$C0,$02,$F1,$00,$DF,$00,$CF,$92 ; $CD7DBB
    db $0B,$8E,$1F,$55,$CE,$B3,$EF,$12,$08,$BF,$40,$3A,$1F,$55,$50,$F3 ; $CD7DCB
    db $F0,$0F,$F0,$01,$1F,$AA,$00,$95,$23,$00,$9F,$4C,$5D,$1F,$AA,$01 ; $CD7DDB
    db $55,$75,$0A,$E0,$00,$F0,$0F,$24,$1F,$63,$FB,$50,$05,$D1,$02,$5F ; $CD7DEB
    db $89,$FB,$50,$AA,$29,$1B,$03,$DD,$7F,$1E,$00,$54,$FC,$01,$1F,$8E ; $CD7DFB
    db $8F,$7F,$03,$A8,$03,$03,$60,$1F,$0D,$FB,$00,$7A,$85,$2C,$D6,$29 ; $CD7E0B
    db $1F,$00,$04,$50,$06,$01,$40,$32,$02,$C4,$90,$1F,$39,$02,$00,$DF ; $CD7E1B
    db $20,$EE,$11,$15,$EA,$1B,$E4,$90,$1F,$44,$81,$3B,$00,$1F,$39,$A4 ; $CD7E2B
    db $04,$E6,$20,$DF,$1E,$3D,$C3,$03,$5A,$A5,$E3,$1E,$EE,$1F,$01,$91 ; $CD7E3B
    db $E8,$13,$02,$F9,$01,$E0,$57,$5E,$54,$20,$B0,$65,$E0,$26,$FF,$3C ; $CD7E4B
    db $BF,$01,$DE,$5B,$AD,$FF,$52,$FE,$21,$65,$82,$32,$00,$0D,$DE,$40 ; $CD7E5B
    db $08,$DF,$FF,$BF,$3F,$02,$B1,$07,$E6,$F0,$8C,$FE,$C0,$1F,$40,$00 ; $CD7E6B
    db $48,$80,$2D,$09,$00,$77,$67,$FB,$60,$B5,$FC,$FF,$50,$7F,$A7,$9B ; $CD7E7B
    db $BE,$01,$3F,$02,$00,$45,$40,$FF,$40,$FE,$26,$F0,$14,$33,$04,$9E ; $CD7E8B
    db $5F,$23,$05,$FA,$60,$F8,$3D,$C8,$03,$42,$1C,$AA,$57,$BD,$00,$0C ; $CD7E9B
    db $59,$86,$BE,$41,$CA,$35,$10,$EF,$4C,$B3,$17,$E8,$01,$F3,$B8,$70 ; $CD7EAB
    db $0C,$21,$18,$1E,$20,$0A,$C0,$10,$00,$4C,$00,$17,$01,$F3,$00,$09 ; $CD7EBB
    db $9F,$60,$27,$D8,$61,$5B,$7F,$80,$FF,$D8,$9B,$9F,$00,$74,$27,$E0 ; $CD7ECB
    db $BD,$8C,$FD,$00,$7A,$01,$1D,$F5,$02,$EB,$03,$D1,$3F,$00,$FF,$C0 ; $CD7EDB
    db $03,$01,$AF,$10,$DF,$20,$5F,$10,$20,$BF,$40,$2D,$82,$01,$B5,$8E ; $CD7EEB
    db $2D,$F3,$45,$09,$47,$01,$CF,$00,$CD,$58,$22,$FB,$89,$0D,$E2,$03 ; $CD7EFB
    db $EF,$AE,$6C,$2B,$29,$00,$79,$1F,$24,$01,$5C,$BF,$85,$02,$7A,$FC ; $CD7F0B
    db $01,$0F,$25,$B3,$55,$E1,$03,$5F,$55,$2A,$2A,$DC,$57,$B2,$64,$98 ; $CD7F1B
    db $0F,$AA,$FA,$17,$03,$1F,$A7,$97,$C3,$02,$1F,$5D,$00,$BB,$A5,$63 ; $CD7F2B
    db $67,$E1,$01,$1F,$4A,$A5,$95,$80,$02,$12,$DB,$24,$2B,$C4,$E7,$43 ; $CD7F3B
    db $08,$01,$38,$69,$F0,$01,$40,$2A,$80,$C0,$EE,$0F,$C0,$67,$E5,$9F ; $CD7F4B
    db $E0,$5D,$5A,$C0,$43,$01,$80,$00,$E3,$09,$F0,$CB,$07,$00,$03,$4D ; $CD7F5B
    db $48,$BD,$51,$F7,$04,$0E,$4C,$B1,$E7,$97,$BF,$5B,$D7,$9F,$13,$FE ; $CD7F6B
    db $FF,$00,$9E,$1D,$FA,$5B,$04,$1F,$2B,$03,$EF,$7F,$EB,$04,$FE,$7F ; $CD7F7B
    db $DC,$8B,$02,$FC,$25,$01,$1E,$00,$04,$5B,$A4,$1F,$E5,$B9,$EF,$E0 ; $CD7F8B
    db $0F,$3F,$A0,$FF,$F2,$FF,$07,$A1,$FF,$70,$FF,$E2,$A5,$0F,$1F,$2E ; $CD7F9B
    db $BD,$1C,$24,$03,$FB,$1F,$F9,$04,$BF,$94,$CD,$03,$01,$E3,$0E,$3F ; $CD7FAB
    db $01,$FE,$D8,$16,$1F,$03,$80,$3F,$02,$20,$8F,$08,$E3,$02,$F8,$C5 ; $CD7FBB
    db $1F,$40,$75,$9D,$05,$EB,$01,$1F,$01,$01,$80,$1F,$1C,$80,$FF,$FC ; $CD7FCB
    db $05,$1E,$7B,$63,$00,$04,$1F,$93,$63,$C1,$08,$00,$84,$7B,$C6,$39 ; $CD7FDB
    db $80,$17,$27,$D8,$1D,$E2,$00,$FC,$80,$3F,$84,$00,$C6,$E0,$15,$27 ; $CD7FEB
    db $00,$1D,$ED,$99,$00,$3F,$2D,$D2,$EF,$10,$07,$89,$74,$F5,$00,$37 ; $CD7FFB
    db $0C,$1B,$3F,$C0,$03,$2D,$E8,$75,$04,$8A,$00,$FA,$01,$49,$5F,$04 ; $CD800B
    db $BE,$09,$DF,$F0,$06,$60,$00,$B7,$08,$25,$4F,$30,$13,$BD,$DE,$7F ; $CD801B
    db $11,$01,$B0,$1F,$9F,$00,$F9,$04,$03,$55,$DF,$52,$9B,$FF,$BF,$D7 ; $CD802B
    db $93,$03,$3F,$CF,$4A,$69,$30,$75,$01,$F7,$08,$37,$09,$08,$0F,$F0 ; $CD803B
    db $00,$C3,$67,$C0,$E3,$01,$6F,$DB,$06,$01,$00,$C0,$00,$00,$00,$00 ; $CD804B
    db $01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06,$00,$07,$00,$08,$00 ; $CD805B
    db $08,$00,$08,$00,$08,$00,$08,$00,$08,$00,$08,$00,$08,$00,$08,$00 ; $CD806B
    db $09,$00,$0A,$00,$0B,$00,$0C,$00,$0D,$00,$06,$00,$06,$00,$0E,$00 ; $CD807B
    db $0F,$00,$06,$00,$06,$00,$06,$00,$10,$00,$11,$00,$00,$00,$12,$00 ; $CD808B
    db $13,$00,$14,$00,$15,$00,$16,$00,$17,$00,$18,$00,$19,$00,$1A,$00 ; $CD809B
    db $1B,$00,$1C,$00,$1D,$00,$1E,$00,$1F,$00,$20,$00,$21,$00,$22,$00 ; $CD80AB
    db $23,$00,$24,$00,$25,$00,$26,$00,$27,$00,$28,$00,$18,$00,$29,$00 ; $CD80BB
    db $2A,$00,$2B,$00,$2C,$00,$2D,$00,$2E,$00,$2F,$00,$30,$00,$31,$00 ; $CD80CB
    db $32,$00,$33,$00,$34,$00,$35,$00,$36,$00,$37,$00,$38,$00,$39,$00 ; $CD80DB
    db $3A,$00,$3B,$00,$3C,$00,$3D,$00,$3E,$00,$3F,$00,$40,$00,$41,$00 ; $CD80EB
    db $42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$47,$00,$48,$00,$49,$00 ; $CD80FB
    db $4A,$00,$4B,$00,$4C,$00,$4D,$00,$4E,$00,$4F,$00,$50,$00,$51,$00 ; $CD810B
    db $52,$00,$53,$00,$54,$00,$55,$00,$56,$00,$57,$00,$58,$00,$59,$00 ; $CD811B
    db $5A,$00,$5B,$00,$5C,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00,$61,$00 ; $CD812B
    db $62,$00,$63,$00,$64,$00,$65,$00,$66,$00,$67,$00,$68,$00,$69,$00 ; $CD813B
    db $6A,$00,$6B,$00,$6C,$00,$6D,$00,$6E,$00,$6F,$00,$70,$00,$71,$00 ; $CD814B
    db $72,$00,$73,$00,$74,$00,$75,$00,$76,$00,$77,$00,$78,$00,$79,$00 ; $CD815B
    db $7A,$00,$7B,$00,$7C,$00,$7D,$00,$7E,$00,$7F,$00,$80,$00,$81,$00 ; $CD816B
    db $82,$00,$83,$00,$84,$00,$85,$00,$86,$00,$87,$00,$88,$00,$89,$00 ; $CD817B
    db $8A,$00,$8B,$00,$8C,$00,$8D,$00,$8E,$00,$8F,$00,$90,$00,$91,$00 ; $CD818B
    db $92,$00,$93,$00,$94,$00,$95,$00,$96,$00,$97,$00,$98,$00,$99,$00 ; $CD819B
    db $9A,$00,$9B,$00,$9C,$00,$9D,$00,$9E,$00,$9F,$00,$A0,$00,$A1,$00 ; $CD81AB
    db $A2,$00,$A3,$00,$A4,$00,$A5,$00,$A6,$00,$A7,$00,$A8,$00,$A9,$00 ; $CD81BB
    db $AA,$00,$AB,$00,$AC,$00,$AD,$00,$AE,$00,$AF,$00,$B0,$00,$91,$00 ; $CD81CB
    db $B1,$00,$B2,$00,$B3,$00,$B4,$00,$B5,$00,$B6,$00,$B7,$00,$B8,$00 ; $CD81DB
    db $B9,$00,$BA,$00,$BB,$00,$BC,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00 ; $CD81EB
    db $C1,$00,$C2,$00,$C3,$00,$C4,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00 ; $CD81FB
    db $C9,$00,$CA,$00,$CB,$00,$CC,$00,$CD,$00,$CE,$00,$CF,$00,$D0,$00 ; $CD820B
    db $D1,$00,$D2,$00,$D3,$00,$D4,$00,$D5,$00,$D6,$00,$D7,$00,$D8,$00 ; $CD821B
    db $D9,$00,$DA,$00,$DB,$00,$DC,$00,$DD,$00,$DE,$00,$DF,$00,$E0,$00 ; $CD822B
    db $E1,$00,$E2,$00,$E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7,$00,$E8,$00 ; $CD823B
    db $E9,$00,$EA,$00,$EB,$00,$EC,$00,$ED,$00,$EE,$00,$EF,$00,$91,$00 ; $CD824B
    db $F0,$00,$F1,$00,$F2,$00,$F3,$00,$F4,$00,$F5,$00,$F6,$00,$F7,$00 ; $CD825B
    db $F8,$00,$F9,$00,$FA,$00,$FB,$00,$FC,$00,$FD,$00,$FE,$00,$FF,$01 ; $CD826B
    db $00,$01,$01,$01,$02,$01,$03,$01,$04,$01,$05,$01,$06,$01,$07,$01 ; $CD827B
    db $08,$01,$09,$01,$0A,$01,$0B,$01,$0C,$01,$0D,$01,$0E,$01,$0F,$01 ; $CD828B
    db $10,$01,$11,$01,$12,$01,$13,$01,$14,$01,$15,$01,$16,$01,$17,$01 ; $CD829B
    db $18,$01,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D,$01,$1E,$01,$1F,$01 ; $CD82AB
    db $20,$01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$01,$26,$01,$27,$01 ; $CD82BB
    db $28,$01,$29,$01,$2A,$01,$2B,$01,$2C,$01,$2D,$01,$2E,$01,$2F,$01 ; $CD82CB
    db $30,$01,$31,$01,$32,$01,$33,$01,$34,$01,$35,$01,$36,$01,$37,$01 ; $CD82DB
    db $38,$01,$39,$01,$3A,$01,$3B,$01,$3C,$01,$3D,$01,$3E,$01,$3F,$01 ; $CD82EB
    db $40,$01,$41,$01,$42,$01,$43,$01,$44,$01,$45,$00,$E7,$01,$46,$01 ; $CD82FB
    db $47,$01,$48,$01,$49,$01,$4A,$01,$4B,$01,$4C,$01,$4D,$01,$4E,$01 ; $CD830B
    db $4F,$01,$50,$01,$51,$01,$52,$01,$53,$01,$54,$01,$55,$01,$56,$01 ; $CD831B
    db $57,$01,$58,$01,$59,$01,$5A,$01,$5B,$01,$5C,$01,$5D,$01,$5E,$01 ; $CD832B
    db $5F,$01,$60,$01,$61,$01,$62,$01,$63,$01,$64,$01,$65,$01,$66,$01 ; $CD833B
    db $67,$01,$68,$01,$69,$01,$6A,$01,$6B,$01,$6C,$01,$6D,$01,$6E,$01 ; $CD834B
    db $6F,$01,$70,$01,$71,$01,$72,$01,$73,$01,$74,$01,$75,$01,$76,$01 ; $CD835B
    db $77,$01,$78,$01,$79,$01,$7A,$01,$7B,$01,$7C,$01,$7D,$01,$7E,$01 ; $CD836B
    db $7F,$01,$80,$01,$81,$01,$82,$01,$83,$01,$84,$01,$85,$01,$86,$01 ; $CD837B
    db $87,$01,$88,$01,$89,$01,$8A,$01,$8B,$01,$8C,$01,$8D,$01,$8E,$01 ; $CD838B
    db $8F,$01,$90,$01,$91,$01,$92,$01,$93,$01,$94,$01,$95,$01,$96,$01 ; $CD839B
    db $97,$01,$98,$01,$99,$01,$9A,$01,$9B,$01,$9C,$01,$9D,$01,$9E,$01 ; $CD83AB
    db $9F,$01,$A0,$01,$A1,$01,$A2,$01,$A3,$01,$A4,$01,$A5,$01,$A6,$01 ; $CD83BB
    db $A7,$01,$A8,$01,$A9,$01,$AA,$01,$AB,$01,$AC,$01,$AD,$01,$AE,$01 ; $CD83CB
    db $AF,$01,$B0,$01,$B1,$01,$B2,$01,$B3,$01,$B4,$01,$B5,$01,$B6,$01 ; $CD83DB
    db $B7,$01,$B8,$01,$B9,$01,$BA,$01,$BB,$01,$BC,$01,$BD,$01,$BE,$01 ; $CD83EB
    db $BF,$01,$C0,$01,$C1,$01,$C2,$01,$C3,$01,$C4,$01,$C5,$01,$C6,$01 ; $CD83FB
    db $C7,$01,$C8,$01,$C9,$01,$CA,$01,$CB,$01,$CC,$01,$CD,$01,$CE,$01 ; $CD840B
    db $CF,$01,$D0,$01,$D1,$01,$D2,$01,$D3,$01,$D4,$01,$D5,$01,$D6,$01 ; $CD841B
    db $D7,$01,$D8,$01,$D9,$01,$DA,$01,$DB,$01,$DC,$01,$DD,$01,$DE,$01 ; $CD842B
    db $DF,$01,$E0,$01,$E1,$01,$E2,$01,$E3,$01,$E4,$01,$E5,$01,$E6,$01 ; $CD843B
    db $E7,$01,$E8,$01,$E9,$01,$EA,$01,$EB,$01,$EC,$01,$ED,$01,$EE,$01 ; $CD844B
    db $EF,$01,$F0,$01,$F1,$01,$F2,$01,$F3,$01,$F4,$01,$F5,$01,$F6,$01 ; $CD845B
    db $F7,$01,$F8,$01,$F9,$01,$FA,$01,$FB,$01,$FC,$01,$FD,$01,$FE,$01 ; $CD846B
    db $FF,$02,$00,$02,$01,$02,$02,$00,$6B,$02,$03,$02,$04,$02,$05,$02 ; $CD847B
    db $06,$02,$07,$02,$08,$02,$09,$02,$0A,$02,$0B,$02,$0C,$02,$0D,$02 ; $CD848B
    db $0E,$02,$0F,$02,$10,$02,$11,$02,$12,$02,$13,$02,$14,$02,$15,$02 ; $CD849B
    db $16,$02,$17,$02,$18,$02,$19,$02,$1A,$02,$1B,$02,$1C,$02,$1D,$02 ; $CD84AB
    db $1E,$02,$1F,$02,$20,$02,$21,$02,$22,$02,$23,$02,$24,$02,$25,$01 ; $CD84BB
    db $28,$02,$26,$02,$27,$02,$28,$02,$29,$02,$2A,$02,$2B,$02,$2C,$02 ; $CD84CB
    db $2D,$02,$2E,$02,$2F,$02,$30,$02,$31,$02,$32,$02,$33,$02,$34,$02 ; $CD84DB
    db $35,$02,$36,$02,$37,$02,$38,$02,$39,$02,$3A,$02,$3B,$02,$3C,$02 ; $CD84EB
    db $3D,$02,$3E,$02,$3F,$02,$40,$02,$41,$02,$42,$02,$43,$02,$44,$02 ; $CD84FB
    db $38,$02,$45,$02,$46,$02,$47,$02,$48,$02,$49,$02,$4A,$02,$4B,$02 ; $CD850B
    db $4C,$02,$4D,$02,$4E,$02,$4F,$02,$50,$02,$51,$02,$52,$02,$53,$02 ; $CD851B
    db $54,$02,$55,$02,$56,$02,$57,$02,$58,$02,$59,$02,$5A,$02,$5B,$02 ; $CD852B
    db $5C,$02,$5D,$02,$5E,$02,$5F,$02,$60,$02,$61,$02,$62,$02,$63,$02 ; $CD853B
    db $64,$02,$65,$02,$66,$02,$67,$02,$68,$02,$69,$02,$6A,$02,$6B,$02 ; $CD854B
    db $6C,$02,$6D,$02,$6E,$02,$6F,$02,$70,$02,$71,$02,$72,$02,$73,$02 ; $CD855B
    db $74,$02,$75,$02,$76,$02,$77,$02,$78,$02,$79,$02,$7A,$02,$7B,$02 ; $CD856B
    db $7C,$02,$7D,$02,$7E,$02,$7F,$02,$80,$02,$81,$02,$82,$02,$83,$02 ; $CD857B
    db $84,$02,$85,$02,$86,$02,$87,$02,$88,$02,$89,$02,$8A,$02,$8B,$02 ; $CD858B
    db $8C,$02,$8D,$02,$8E,$02,$8F,$02,$90,$02,$91,$02,$92,$02,$93,$02 ; $CD859B
    db $94,$02,$95,$02,$96,$02,$97,$02,$98,$02,$99,$02,$9A,$02,$9B,$02 ; $CD85AB
    db $9C,$02,$9D,$02,$9E,$02,$9F,$02,$A0,$00,$6B,$02,$A1,$02,$A2,$02 ; $CD85BB
    db $A3,$02,$A4,$02,$A5,$02,$A6,$02,$A7,$02,$A8,$02,$A9,$02,$AA,$02 ; $CD85CB
    db $AB,$02,$AC,$02,$AD,$02,$AE,$02,$AF,$02,$B0,$02,$B1,$02,$B2,$02 ; $CD85DB
    db $B3,$02,$B4,$02,$B5,$02,$B6,$02,$B7,$02,$B8,$02,$B9,$02,$BA,$02 ; $CD85EB
    db $BB,$02,$BC,$02,$BD,$02,$BE,$02,$BF,$02,$C0,$02,$C1,$02,$C2,$02 ; $CD85FB
    db $C3,$02,$C4,$02,$C5,$02,$C6,$02,$C7,$02,$C8,$02,$C9,$02,$CA,$01 ; $CD860B
    db $28,$02,$CB,$02,$CC,$02,$CD,$02,$CE,$02,$CF,$02,$D0,$02,$D1,$02 ; $CD861B
    db $D2,$02,$D3,$02,$D4,$02,$D5,$02,$D6,$02,$D7,$02,$D8,$02,$D9,$02 ; $CD862B
    db $DA,$02,$DB,$02,$DC,$02,$DD,$02,$DE,$02,$DF,$02,$E0,$02,$E1,$02 ; $CD863B
    db $E2,$02,$E3,$02,$E4,$02,$E5,$02,$E6,$02,$E7,$02,$E8,$02,$E9,$02 ; $CD864B
    db $EA,$02,$EB,$02,$EC,$02,$ED,$02,$EE,$02,$EF,$02,$F0,$02,$F1,$02 ; $CD865B
    db $F2,$02,$F3,$02,$F4,$02,$F5,$02,$F6,$02,$F7,$02,$F8,$02,$F9,$02 ; $CD866B
    db $FA,$02,$FB,$02,$FC,$02,$FD,$02,$FE,$02,$FF,$03,$00,$03,$01,$03 ; $CD867B
    db $02,$03,$03,$03,$04,$03,$05,$03,$06,$03,$07,$03,$08,$03,$09,$03 ; $CD868B
    db $0A,$03,$0B,$01,$28,$03,$0C,$03,$0D,$03,$0E,$03,$0F,$03,$10,$03 ; $CD869B
    db $11,$03,$12,$03,$13,$03,$14,$03,$15,$03,$16,$03,$17,$03,$18,$03 ; $CD86AB
    db $19,$03,$1A,$03,$1B,$03,$1C,$03,$1D,$03,$1E,$03,$1F,$00,$18,$03 ; $CD86BB
    db $20,$03,$21,$03,$22,$03,$23,$03,$24,$03,$25,$03,$26,$00,$00,$03 ; $CD86CB
    db $27,$03,$28,$03,$29,$03,$2A,$03,$2B,$03,$2C,$03,$2D,$03,$2E,$03 ; $CD86DB
    db $2E,$03,$2E,$03,$2E,$03,$2E,$03,$2E,$03,$2E,$03,$2E,$03,$2F,$03 ; $CD86EB
    db $30,$03,$31,$03,$32,$03,$33,$03,$34,$03,$35,$03,$36,$03,$36,$03 ; $CD86FB
    db $37,$03,$36,$03,$36,$03,$36,$03,$38,$03,$39,$00,$00,$00,$00,$00 ; $CD870B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD871B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD872B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD873B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$1C ; $CD874B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD875B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD876B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD877B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD878B
    db $00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06,$00,$07,$00,$08 ; $CD879B
    db $00,$09,$00,$0A,$00,$0B,$00,$0C,$00,$0D,$00,$0E,$00,$0F,$00,$10 ; $CD87AB
    db $00,$11,$00,$12,$00,$13,$00,$14,$00,$15,$00,$16,$00,$17,$00,$18 ; $CD87BB
    db $00,$19,$00,$1A,$00,$1B,$00,$1C,$00,$1D,$00,$1E,$00,$1F,$00,$01 ; $CD87CB
    db $40,$20,$00,$00,$00,$00,$00,$21,$00,$22,$00,$23,$00,$24,$00,$25 ; $CD87DB
    db $00,$26,$00,$27,$00,$28,$00,$29,$00,$2A,$00,$2B,$00,$2C,$00,$2D ; $CD87EB
    db $00,$2E,$00,$2F,$00,$30,$00,$31,$00,$32,$00,$33,$00,$34,$00,$35 ; $CD87FB
    db $00,$36,$00,$37,$00,$38,$00,$00,$00,$00,$00,$39,$00,$3A,$00,$3B ; $CD880B
    db $00,$3C,$00,$00,$00,$00,$00,$3D,$00,$3E,$00,$3F,$00,$40,$00,$41 ; $CD881B
    db $00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$47,$00,$47,$00,$47 ; $CD882B
    db $00,$48,$00,$49,$00,$4A,$00,$4B,$00,$4C,$00,$4D,$00,$4E,$00,$4F ; $CD883B
    db $00,$50,$00,$51,$00,$00,$00,$00,$00,$00,$00,$00,$00,$52,$00,$53 ; $CD884B
    db $00,$54,$00,$55,$00,$56,$00,$57,$00,$58,$00,$59,$00,$5A,$00,$5B ; $CD885B
    db $00,$5C,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00,$60,$00,$60,$00,$60 ; $CD886B
    db $00,$61,$00,$62,$00,$63,$00,$64,$00,$65,$00,$66,$00,$67,$00,$68 ; $CD887B
    db $00,$69,$00,$6A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6B,$00,$6C ; $CD888B
    db $00,$6D,$00,$6E,$00,$6F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$70 ; $CD889B
    db $00,$71,$00,$72,$00,$73,$00,$74,$00,$75,$00,$75,$00,$75,$00,$75 ; $CD88AB
    db $00,$76,$00,$77,$00,$78,$00,$79,$00,$7A,$00,$7B,$00,$7C,$00,$7D ; $CD88BB
    db $00,$7E,$00,$7F,$00,$80,$00,$00,$00,$00,$00,$81,$00,$82,$00,$6C ; $CD88CB
    db $00,$83,$00,$84,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD88DB
    db $00,$85,$00,$86,$00,$87,$00,$88,$00,$89,$00,$8A,$00,$8A,$00,$8A ; $CD88EB
    db $00,$8A,$00,$8B,$00,$8C,$00,$8D,$00,$8E,$00,$8F,$00,$90,$00,$91 ; $CD88FB
    db $00,$92,$00,$93,$00,$94,$00,$95,$00,$95,$40,$96,$00,$97,$00,$6C ; $CD890B
    db $00,$98,$00,$99,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD891B
    db $00,$9A,$00,$9B,$00,$9C,$00,$9D,$00,$5F,$00,$60,$00,$60,$00,$60 ; $CD892B
    db $00,$60,$00,$61,$00,$9E,$00,$9F,$00,$A0,$00,$A1,$00,$A2,$00,$A3 ; $CD893B
    db $00,$A4,$00,$A5,$00,$A6,$00,$A7,$00,$A8,$00,$97,$00,$97,$00,$6C ; $CD894B
    db $00,$A9,$00,$AA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD895B
    db $00,$AB,$00,$AC,$00,$AD,$00,$AE,$00,$74,$00,$75,$00,$75,$00,$75 ; $CD896B
    db $00,$75,$00,$76,$00,$AF,$00,$B0,$00,$B1,$00,$B2,$00,$B3,$00,$B4 ; $CD897B
    db $00,$B5,$00,$00,$00,$00,$00,$00,$00,$B6,$00,$B7,$00,$B8,$00,$B9 ; $CD898B
    db $00,$BA,$00,$BB,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD899B
    db $00,$BC,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00,$C1,$00,$C1,$00,$C1 ; $CD89AB
    db $00,$C2,$00,$C3,$00,$C4,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00,$C9 ; $CD89BB
    db $00,$CA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$CB,$00,$CC,$00,$CD ; $CD89CB
    db $00,$CE,$00,$CF,$00,$D0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$D1 ; $CD89DB
    db $00,$D2,$00,$D3,$00,$D4,$00,$5F,$00,$60,$00,$60,$00,$60,$00,$60 ; $CD89EB
    db $00,$61,$00,$D5,$00,$D6,$00,$D7,$00,$D8,$00,$D9,$00,$DA,$00,$DB ; $CD89FB
    db $00,$DC,$00,$00,$00,$00,$00,$00,$00,$DD,$00,$DE,$00,$DF,$00,$E0 ; $CD8A0B
    db $00,$E0,$40,$E1,$00,$E2,$00,$E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7 ; $CD8A1B
    db $00,$E8,$00,$E9,$00,$EA,$00,$74,$00,$75,$00,$75,$00,$75,$00,$75 ; $CD8A2B
    db $00,$76,$00,$EB,$00,$EC,$00,$ED,$00,$EE,$00,$EF,$00,$F0,$00,$F1 ; $CD8A3B
    db $00,$F2,$00,$F3,$00,$F4,$00,$F5,$00,$F6,$00,$F7,$00,$ED,$00,$E0 ; $CD8A4B
    db $00,$E0,$40,$F8,$00,$F9,$00,$FA,$00,$FB,$00,$FC,$00,$FD,$00,$FE ; $CD8A5B
    db $00,$FF,$00,$00,$01,$BF,$00,$C0,$00,$C1,$00,$C1,$00,$C1,$00,$C2 ; $CD8A6B
    db $00,$01,$01,$02,$01,$03,$01,$ED,$00,$04,$01,$05,$01,$06,$01,$ED ; $CD8A7B
    db $00,$07,$01,$08,$01,$09,$01,$0A,$01,$0B,$01,$ED,$00,$ED,$00,$E0 ; $CD8A8B
    db $00,$0C,$01,$0D,$01,$0E,$01,$0F,$01,$10,$01,$11,$01,$12,$01,$13 ; $CD8A9B
    db $01,$14,$01,$15,$01,$5F,$00,$60,$00,$60,$00,$60,$00,$60,$00,$61 ; $CD8AAB
    db $00,$D5,$00,$16,$01,$17,$01,$ED,$00,$18,$01,$19,$01,$1A,$01,$1B ; $CD8ABB
    db $01,$1C,$01,$1C,$01,$1C,$01,$1C,$01,$1C,$01,$1D,$01,$1E,$01,$1F ; $CD8ACB
    db $01,$20,$01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$01,$25,$01,$26 ; $CD8ADB
    db $01,$27,$01,$28,$01,$74,$00,$75,$00,$75,$00,$75,$00,$75,$00,$76 ; $CD8AEB
    db $00,$29,$01,$2A,$01,$ED,$00,$2B,$01,$2C,$01,$2D,$01,$2E,$01,$2F ; $CD8AFB
    db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$01,$31,$01,$32 ; $CD8B0B
    db $01,$33,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$34 ; $CD8B1B
    db $01,$35,$01,$36,$01,$37,$01,$38,$01,$38,$01,$38,$01,$38,$01,$38 ; $CD8B2B
    db $01,$39,$01,$3A,$01,$3B,$01,$3C,$01,$3D,$01,$3E,$01,$3F,$01,$40 ; $CD8B3B
    db $01,$41,$01,$41,$01,$41,$01,$41,$01,$42,$01,$43,$01,$44,$01,$45 ; $CD8B4B
    db $01,$46,$01,$47,$01,$48,$01,$48,$01,$48,$01,$48,$01,$49,$01,$4A ; $CD8B5B
    db $01,$4B,$01,$4C,$01,$4C,$01,$4C,$01,$4C,$01,$4C,$01,$4C,$01,$4D ; $CD8B6B
    db $01,$4E,$01,$4F,$01,$50,$01,$51,$01,$52,$01,$53,$01,$54,$01,$55 ; $CD8B7B
    db $01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01,$56 ; $CD8B8B
    db $01,$57,$01,$58,$01,$59,$01,$5A,$01,$5B,$01,$5C,$01,$5D,$01,$5E ; $CD8B9B
    db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$5F ; $CD8BAB
    db $01,$60,$01,$61,$01,$50,$01,$62,$01,$63,$01,$64,$01,$65,$01,$55 ; $CD8BBB
    db $01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01,$55,$01,$56 ; $CD8BCB
    db $01,$66,$01,$67,$01,$67,$01,$67,$01,$67,$01,$68,$01,$69,$01,$6A ; $CD8BDB
    db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6B ; $CD8BEB
    db $01,$6C,$01,$6D,$01,$50,$01,$6E,$01,$6F,$01,$70,$01,$71,$01,$72 ; $CD8BFB
    db $01,$73,$01,$73,$01,$74,$01,$75,$01,$73,$01,$73,$01,$73,$01,$76 ; $CD8C0B
    db $01,$77,$01,$78,$01,$78,$01,$78,$01,$78,$01,$78,$01,$79,$01,$7A ; $CD8C1B
    db $01,$7B,$01,$7C,$01,$7C,$01,$7C,$01,$7C,$01,$7C,$01,$7C,$01,$7D ; $CD8C2B
    db $01,$7E,$01,$7F,$01,$80,$01,$81,$01,$82,$01,$83,$01,$84,$01,$85 ; $CD8C3B
    db $01,$86,$01,$87,$01,$00,$00,$00,$00,$88,$01,$00,$00,$00,$00,$89 ; $CD8C4B
    db $01,$8A,$01,$8B,$01,$8C,$01,$8D,$01,$8B,$01,$8C,$01,$8D,$01,$8E ; $CD8C5B
    db $01,$8F,$01,$90,$01,$91,$01,$92,$01,$92,$01,$92,$01,$92,$01,$93 ; $CD8C6B
    db $01,$94,$01,$95,$01,$96,$01,$97,$01,$98,$01,$99,$01,$9A,$01,$9B ; $CD8C7B
    db $01,$9C,$01,$9D,$01,$9E,$01,$9F,$01,$A0,$01,$00,$00,$00,$00,$A1 ; $CD8C8B
    db $01,$A2,$01,$A3,$01,$A4,$01,$A5,$01,$A3,$01,$A4,$01,$A5,$01,$A6 ; $CD8C9B
    db $01,$A7,$01,$A8,$01,$A9,$01,$AA,$01,$AB,$01,$AC,$01,$AD,$01,$AD ; $CD8CAB
    db $01,$AE,$01,$AF,$01,$B0,$01,$B1,$01,$B2,$01,$B3,$01,$B4,$01,$B5 ; $CD8CBB
    db $01,$B6,$01,$B7,$01,$B8,$01,$B9,$01,$BA,$01,$BB,$01,$BB,$01,$BC ; $CD8CCB
    db $01,$A2,$01,$BD,$01,$BE,$01,$BF,$01,$BD,$01,$BE,$01,$BF,$01,$C0 ; $CD8CDB
    db $01,$C1,$01,$C2,$01,$C3,$01,$C4,$01,$00,$00,$C5,$01,$C6,$01,$C7 ; $CD8CEB
    db $01,$C8,$01,$C9,$01,$CA,$01,$CB,$01,$CC,$01,$CD,$01,$CD,$01,$CD ; $CD8CFB
    db $01,$CE,$01,$CF,$01,$D0,$01,$D1,$01,$D1,$01,$D1,$01,$D1,$01,$D2 ; $CD8D0B
    db $01,$D3,$01,$D4,$01,$D5,$01,$D6,$01,$D4,$01,$D5,$01,$D6,$01,$D7 ; $CD8D1B
    db $01,$D8,$01,$D9,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$DA ; $CD8D2B
    db $01,$DB,$01,$DC,$01,$BE,$01,$DD,$01,$DC,$01,$BE,$01,$DD,$01,$DC ; $CD8D3B
    db $01,$BE,$01,$DD,$01,$DC,$01,$BE,$01,$DD,$01,$DC,$01,$DE,$01,$DF ; $CD8D4B
    db $01,$A2,$01,$A3,$01,$A4,$01,$A5,$01,$A3,$01,$A4,$01,$A5,$01,$E0 ; $CD8D5B
    db $01,$E1,$01,$E2,$01,$E3,$01,$00,$00,$00,$00,$00,$00,$E4,$01,$E5 ; $CD8D6B
    db $01,$E6,$01,$A3,$01,$A4,$01,$A5,$01,$A3,$01,$A4,$01,$A5,$01,$A3 ; $CD8D7B
    db $01,$A4,$01,$A5,$01,$A3,$01,$A4,$01,$A5,$01,$BE,$01,$E7,$01,$E8 ; $CD8D8B
    db $01,$A2,$01,$BD,$01,$BE,$01,$BF,$01,$BD,$01,$BE,$01,$BF,$01,$E9 ; $CD8D9B
    db $01,$EA,$01,$EB,$01,$EC,$01,$ED,$01,$EE,$01,$EF,$01,$F0,$01,$F1 ; $CD8DAB
    db $01,$E6,$01,$BD,$01,$BE,$01,$BF,$01,$BD,$01,$BE,$01,$BF,$01,$BD ; $CD8DBB
    db $01,$BE,$01,$BF,$01,$BD,$01,$BE,$01,$BF,$01,$BE,$01,$F2,$01,$F3 ; $CD8DCB
    db $01,$D3,$01,$D4,$01,$D5,$01,$D6,$01,$D4,$01,$D5,$01,$D6,$01,$DC ; $CD8DDB
    db $01,$BE,$01,$91,$01,$92,$01,$92,$01,$92,$01,$92,$01,$93,$01,$F4 ; $CD8DEB
    db $01,$F5,$01,$D4,$01,$D5,$01,$D6,$01,$D4,$01,$D5,$01,$D6,$01,$D4 ; $CD8DFB
    db $01,$D5,$01,$D6,$01,$D4,$01,$D5,$01,$D6,$01,$DC,$01,$F6,$01,$F7 ; $CD8E0B
    db $01,$F8,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9 ; $CD8E1B
    db $01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$FA ; $CD8E2B
    db $01,$FB,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9 ; $CD8E3B
    db $01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$F9,$01,$FC,$01,$FD,$01,$FE ; $CD8E4B
    db $01,$20,$00,$1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8E5B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8E6B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8E7B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8E8B
    db $00,$00,$00,$00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06 ; $CD8E9B
    db $00,$07,$00,$08,$00,$09,$00,$0A,$00,$0B,$00,$0C,$00,$0D,$00,$0E ; $CD8EAB
    db $00,$0F,$00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$00,$15,$00,$16 ; $CD8EBB
    db $00,$17,$00,$18,$00,$19,$00,$1A,$00,$1B,$00,$1C,$00,$1D,$00,$1E ; $CD8ECB
    db $00,$1F,$00,$20,$00,$21,$00,$22,$00,$23,$00,$24,$00,$25,$00,$26 ; $CD8EDB
    db $00,$27,$00,$28,$00,$29,$00,$2A,$00,$2B,$00,$2C,$00,$2D,$00,$2E ; $CD8EEB
    db $00,$2F,$00,$30,$00,$31,$00,$32,$00,$33,$00,$34,$00,$35,$00,$00 ; $CD8EFB
    db $00,$00,$00,$36,$00,$37,$00,$37,$40,$36,$40,$00,$00,$00,$00,$35 ; $CD8F0B
    db $40,$38,$00,$39,$00,$3A,$00,$3B,$00,$3C,$00,$3D,$00,$3E,$00,$3F ; $CD8F1B
    db $00,$40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$47 ; $CD8F2B
    db $00,$48,$00,$48,$00,$49,$00,$4A,$00,$4B,$00,$4C,$00,$00,$00,$00 ; $CD8F3B
    db $00,$00,$00,$00,$00,$4D,$00,$4D,$40,$00,$00,$00,$00,$00,$00,$00 ; $CD8F4B
    db $00,$4E,$00,$4F,$00,$50,$00,$51,$00,$52,$00,$53,$00,$54,$00,$55 ; $CD8F5B
    db $00,$56,$00,$57,$00,$58,$00,$59,$00,$5A,$00,$5B,$00,$5C,$00,$5C ; $CD8F6B
    db $00,$5C,$00,$5C,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00,$00,$00,$00 ; $CD8F7B
    db $00,$00,$00,$00,$00,$61,$00,$61,$40,$00,$00,$00,$00,$00,$00,$00 ; $CD8F8B
    db $00,$60,$40,$62,$00,$63,$00,$64,$00,$65,$00,$00,$00,$00,$00,$00 ; $CD8F9B
    db $00,$00,$00,$66,$00,$67,$00,$68,$00,$69,$00,$6A,$00,$6B,$00,$6C ; $CD8FAB
    db $00,$6C,$00,$6C,$00,$6D,$00,$6E,$00,$6F,$00,$70,$00,$71,$00,$00 ; $CD8FBB
    db $00,$00,$00,$72,$00,$73,$00,$73,$40,$72,$40,$00,$00,$00,$00,$71 ; $CD8FCB
    db $40,$74,$00,$62,$80,$75,$00,$76,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD8FDB
    db $00,$00,$00,$00,$00,$77,$00,$78,$00,$79,$00,$7A,$00,$5B,$00,$5C ; $CD8FEB
    db $00,$5C,$00,$5C,$00,$5C,$00,$5D,$00,$7B,$00,$7C,$00,$7D,$00,$7E ; $CD8FFB
    db $00,$7F,$00,$80,$00,$81,$00,$81,$00,$80,$40,$7E,$00,$7F,$00,$82 ; $CD900B
    db $00,$81,$00,$83,$00,$84,$00,$85,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD901B
    db $00,$00,$00,$00,$00,$86,$00,$87,$00,$88,$00,$89,$00,$8A,$00,$6C ; $CD902B
    db $00,$6C,$00,$6C,$00,$6C,$00,$8B,$00,$8C,$00,$8D,$00,$8E,$00,$8F ; $CD903B
    db $00,$90,$00,$90,$00,$90,$00,$90,$00,$90,$00,$90,$00,$90,$00,$90 ; $CD904B
    db $00,$91,$00,$92,$00,$93,$00,$94,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD905B
    db $00,$00,$00,$00,$00,$95,$00,$96,$00,$97,$00,$98,$00,$5B,$00,$5C ; $CD906B
    db $00,$5C,$00,$5C,$00,$5C,$00,$5D,$00,$99,$00,$9A,$00,$9B,$00,$9C ; $CD907B
    db $00,$9D,$00,$9E,$00,$9E,$00,$9E,$00,$9E,$00,$9E,$00,$9E,$00,$9E ; $CD908B
    db $00,$9E,$00,$9F,$00,$A0,$00,$A1,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD909B
    db $00,$00,$00,$00,$00,$A2,$00,$A3,$00,$A4,$00,$A5,$00,$8A,$00,$6C ; $CD90AB
    db $00,$6C,$00,$6C,$00,$6C,$00,$8B,$00,$A6,$00,$A7,$00,$A8,$00,$A8 ; $CD90BB
    db $00,$A9,$00,$AA,$00,$AA,$00,$AA,$00,$AA,$00,$AA,$00,$AA,$00,$AA ; $CD90CB
    db $00,$AA,$00,$AB,$00,$AC,$00,$AD,$00,$AE,$00,$00,$00,$00,$00,$00 ; $CD90DB
    db $00,$00,$00,$AF,$00,$B0,$00,$B1,$00,$B2,$00,$B3,$00,$5B,$00,$5C ; $CD90EB
    db $00,$5C,$00,$5C,$00,$5C,$00,$5D,$00,$B4,$00,$B5,$00,$B6,$00,$B7 ; $CD90FB
    db $00,$B8,$00,$B9,$00,$BA,$00,$BA,$00,$BA,$00,$BA,$00,$BA,$00,$BB ; $CD910B
    db $00,$BC,$00,$BD,$00,$BE,$00,$BF,$00,$C0,$00,$C1,$00,$C2,$00,$C3 ; $CD911B
    db $00,$C4,$00,$C5,$00,$C6,$00,$C7,$00,$C8,$00,$C9,$00,$CA,$00,$CB ; $CD912B
    db $00,$CB,$00,$CB,$00,$CB,$00,$CC,$00,$CD,$00,$CE,$00,$CF,$00,$D0 ; $CD913B
    db $00,$D1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$D2 ; $CD914B
    db $00,$AA,$00,$D3,$00,$D4,$00,$D5,$00,$D6,$00,$D7,$00,$D8,$00,$D9 ; $CD915B
    db $00,$DA,$00,$DB,$00,$DB,$00,$DC,$00,$DD,$00,$DE,$00,$DF,$00,$DF ; $CD916B
    db $00,$E0,$00,$E0,$00,$E0,$00,$E1,$00,$E2,$00,$CE,$00,$AA,$00,$E3 ; $CD917B
    db $00,$E4,$00,$E5,$00,$E6,$00,$E7,$00,$E8,$00,$E9,$00,$EA,$00,$EB ; $CD918B
    db $00,$EC,$00,$ED,$00,$EE,$00,$EF,$00,$F0,$00,$F1,$00,$F1,$00,$F1 ; $CD919B
    db $00,$F1,$00,$F1,$00,$F1,$00,$F1,$00,$F1,$00,$F2,$00,$F3,$00,$F3 ; $CD91AB
    db $00,$F3,$00,$F3,$00,$F4,$00,$F5,$00,$F6,$00,$F7,$00,$F8,$00,$F9 ; $CD91BB
    db $00,$00,$00,$00,$00,$00,$00,$FA,$00,$FB,$00,$00,$00,$00,$00,$00 ; $CD91CB
    db $00,$FC,$00,$FD,$00,$FE,$00,$FF,$00,$00,$01,$00,$01,$00,$01,$00 ; $CD91DB
    db $01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$01,$01,$00,$00,$00 ; $CD91EB
    db $00,$00,$00,$00,$00,$02,$01,$03,$01,$04,$01,$05,$01,$06,$01,$00 ; $CD91FB
    db $00,$00,$00,$00,$00,$00,$00,$07,$01,$08,$01,$00,$00,$00,$00,$00 ; $CD920B
    db $00,$08,$41,$09,$01,$0A,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00 ; $CD921B
    db $01,$00,$01,$0B,$01,$0C,$01,$0D,$01,$0D,$01,$0E,$01,$0F,$01,$0F ; $CD922B
    db $01,$0F,$01,$10,$01,$11,$01,$12,$01,$13,$01,$14,$01,$15,$01,$16 ; $CD923B
    db $01,$00,$00,$00,$00,$00,$00,$17,$01,$18,$01,$00,$00,$00,$00,$00 ; $CD924B
    db $00,$19,$01,$1A,$01,$1B,$01,$1C,$01,$00,$01,$00,$01,$00,$01,$1D ; $CD925B
    db $01,$1E,$01,$1F,$01,$20,$01,$21,$01,$21,$01,$21,$01,$21,$01,$21 ; $CD926B
    db $01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$01,$26,$01,$00,$01,$27 ; $CD927B
    db $01,$28,$01,$29,$01,$2A,$01,$2B,$01,$2C,$01,$2D,$01,$2E,$01,$2D ; $CD928B
    db $41,$2F,$01,$30,$01,$31,$01,$32,$01,$33,$01,$34,$01,$35,$01,$36 ; $CD929B
    db $01,$37,$01,$38,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD92AB
    db $00,$00,$00,$39,$01,$3A,$01,$3B,$01,$3C,$01,$3D,$01,$3E,$01,$3F ; $CD92BB
    db $01,$40,$01,$41,$01,$42,$01,$43,$01,$44,$01,$45,$01,$46,$01,$47 ; $CD92CB
    db $01,$00,$01,$48,$01,$49,$01,$4A,$01,$4B,$01,$4C,$01,$4D,$01,$4E ; $CD92DB
    db $01,$4F,$01,$50,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD92EB
    db $00,$00,$00,$00,$00,$51,$01,$52,$01,$53,$01,$54,$01,$00,$00,$00 ; $CD92FB
    db $00,$00,$00,$55,$01,$56,$01,$00,$00,$00,$00,$00,$00,$57,$01,$58 ; $CD930B
    db $01,$59,$01,$5A,$01,$5B,$01,$5C,$01,$5D,$01,$5D,$01,$5D,$01,$5D ; $CD931B
    db $01,$5E,$01,$5F,$01,$60,$01,$61,$01,$61,$01,$61,$01,$61,$01,$61 ; $CD932B
    db $01,$61,$01,$62,$01,$63,$01,$64,$01,$65,$01,$08,$01,$00,$00,$00 ; $CD933B
    db $00,$00,$00,$08,$41,$66,$01,$00,$00,$00,$00,$00,$00,$00,$00,$67 ; $CD934B
    db $01,$68,$01,$69,$01,$6A,$01,$6B,$01,$6B,$01,$6B,$01,$6B,$01,$6B ; $CD935B
    db $01,$6C,$01,$6D,$01,$6E,$01,$6F,$01,$70,$01,$71,$01,$71,$01,$71 ; $CD936B
    db $01,$71,$01,$72,$01,$73,$01,$74,$01,$75,$01,$76,$01,$00,$00,$00 ; $CD937B
    db $00,$00,$00,$76,$41,$77,$01,$00,$00,$00,$00,$00,$00,$78,$01,$79 ; $CD938B
    db $01,$5D,$01,$7A,$01,$7B,$01,$7C,$01,$7D,$01,$7E,$01,$7C,$01,$7D ; $CD939B
    db $01,$7F,$01,$80,$01,$81,$01,$82,$01,$83,$01,$84,$01,$85,$01,$86 ; $CD93AB
    db $01,$87,$01,$88,$01,$89,$01,$8A,$01,$5D,$01,$8B,$01,$8C,$01,$2E ; $CD93BB
    db $01,$8C,$41,$8B,$41,$8D,$01,$8E,$01,$8F,$01,$90,$01,$91,$01,$5D ; $CD93CB
    db $01,$5D,$01,$92,$01,$93,$01,$94,$01,$94,$01,$95,$01,$94,$01,$94 ; $CD93DB
    db $01,$96,$01,$97,$01,$98,$01,$99,$01,$9A,$01,$9B,$01,$00,$00,$9C ; $CD93EB
    db $01,$9D,$01,$9E,$01,$9F,$01,$A0,$01,$A1,$01,$A2,$01,$A3,$01,$A4 ; $CD93FB
    db $01,$A5,$01,$A6,$01,$A7,$01,$A8,$01,$A9,$01,$AA,$01,$AB,$01,$AC ; $CD940B
    db $01,$AD,$01,$AE,$01,$AF,$01,$B0,$01,$B1,$01,$B2,$01,$B0,$01,$B1 ; $CD941B
    db $01,$B3,$01,$B4,$01,$B5,$01,$B6,$01,$00,$00,$00,$00,$00,$00,$00 ; $CD942B
    db $00,$00,$00,$B7,$01,$B8,$01,$B9,$01,$00,$00,$00,$00,$00,$00,$BA ; $CD943B
    db $01,$BB,$01,$BC,$01,$00,$00,$00,$00,$00,$00,$BD,$01,$BE,$01,$BF ; $CD944B
    db $01,$C0,$01,$C1,$01,$7B,$01,$7C,$01,$7D,$01,$7E,$01,$7C,$01,$7D ; $CD945B
    db $01,$C2,$01,$C3,$01,$C4,$01,$C5,$01,$C6,$01,$00,$00,$00,$00,$C7 ; $CD946B
    db $01,$C8,$01,$C9,$01,$CA,$01,$CB,$01,$00,$00,$00,$00,$00,$00,$00 ; $CD947B
    db $00,$CC,$01,$00,$00,$00,$00,$00,$00,$00,$00,$CD,$01,$CE,$01,$CF ; $CD948B
    db $01,$D0,$01,$D1,$01,$93,$01,$94,$01,$94,$01,$95,$01,$94,$01,$94 ; $CD949B
    db $01,$D2,$01,$D3,$01,$D4,$01,$94,$01,$D5,$01,$D6,$01,$D7,$01,$D8 ; $CD94AB
    db $01,$D9,$01,$DA,$01,$DB,$01,$DC,$01,$00,$00,$00,$00,$00,$00,$DD ; $CD94BB
    db $01,$DE,$01,$DF,$01,$00,$00,$00,$00,$00,$00,$E0,$01,$E1,$01,$E2 ; $CD94CB
    db $01,$E3,$01,$E4,$01,$AF,$01,$B0,$01,$B1,$01,$B2,$01,$B0,$01,$B1 ; $CD94DB
    db $01,$E5,$01,$94,$01,$94,$01,$94,$01,$94,$01,$94,$01,$94,$01,$94 ; $CD94EB
    db $01,$94,$01,$94,$01,$E6,$01,$E7,$01,$E8,$01,$E9,$01,$EA,$01,$EB ; $CD94FB
    db $01,$94,$01,$EB,$41,$EA,$41,$E9,$41,$EC,$01,$ED,$01,$EE,$01,$EF ; $CD950B
    db $01,$F0,$01,$F1,$01,$F2,$01,$F3,$01,$F3,$01,$F3,$01,$F3,$01,$F3 ; $CD951B
    db $01,$F3,$01,$F3,$01,$F3,$01,$F3,$01,$F3,$01,$F3,$01,$F3,$01,$F3 ; $CD952B
    db $01,$F3,$01,$F4,$01,$F5,$01,$F6,$01,$F7,$01,$F8,$01,$F9,$01,$F3 ; $CD953B
    db $01,$F3,$01,$F3,$01,$F9,$41,$FA,$01,$F3,$01,$F3,$01,$FB,$01,$FC ; $CD954B
    db $01,$FD,$01,$FE,$01,$00,$00,$42,$08,$80,$0C,$80,$10,$63,$0C,$83 ; $CD955B
    db $0C,$63,$10,$A2,$0C,$83,$10,$A3,$10,$84,$10,$EF,$3D,$EF,$3D,$EF ; $CD956B
    db $3D,$EF,$3D,$EF,$3D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD957B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD958B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD959B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD95AB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD95BB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD95CB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD95DB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD95EB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD95FB
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD960B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD961B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD962B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD963B
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $CD964B
    db $00,$00,$00,$00,$00,$42,$08,$44,$08,$85,$08,$AA,$08,$CB,$08,$EF ; $CD965B
    db $08,$31,$09,$51,$09,$91,$09,$31,$0A,$42,$08,$42,$08,$42,$08,$42 ; $CD966B
    db $08,$42,$08,$42,$08,$42,$08,$42,$10,$82,$14,$A2,$28,$C2,$2C,$E2 ; $CD967B
    db $3C,$22,$45,$42,$45,$82,$45,$22,$46,$42,$08,$42,$08,$42,$08,$42 ; $CD968B
    db $08,$42,$08,$42,$08,$00,$00,$DE,$53,$BF,$03,$7F,$1F,$3F,$03,$1E ; $CD969B
    db $03,$DE,$02,$BD,$02,$9C,$02,$5C,$02,$5A,$02,$39,$02,$19,$0E,$18 ; $CD96AB
    db $02,$D8,$01,$D6,$01,$B6,$01,$95,$01,$94,$01,$74,$01,$53,$01,$53 ; $CD96BB
    db $01,$52,$01,$32,$01,$32,$01,$11,$01,$11,$01,$10,$01,$EF,$00,$CF ; $CD96CB
    db $00,$CE,$00,$CE,$00,$AD,$00,$8D,$00,$8B,$00,$8B,$00,$8A,$00,$88 ; $CD96DB
    db $00,$66,$00,$65,$00,$44,$00,$2C,$15,$4E,$15,$C9,$0C,$0B,$11,$A8 ; $CD96EB
    db $04,$87,$00,$90,$05,$FF,$7F,$BD,$77,$9C,$73,$7B,$6F,$58,$63,$16 ; $CD96FB
    db $6F,$D4,$66,$B4,$5A,$94,$52,$72,$52,$52,$4A,$4D,$4E,$2C,$42,$10 ; $CD970B
    db $42,$ED,$25,$CE,$39,$AC,$39,$AC,$31,$8C,$31,$8C,$31,$8B,$25,$8A ; $CD971B
    db $21,$69,$1D,$68,$21,$4A,$29,$48,$25,$46,$21,$26,$29,$24,$15,$25 ; $CD972B
    db $15,$20,$01,$00,$01,$E3,$00,$C2,$00,$A0,$00,$A0,$00,$3B,$7E,$12 ; $CD973B
    db $7C,$AE,$4C,$49,$24,$EB,$2C,$AC,$24,$1F,$00,$02,$01,$00,$00,$00 ; $CD974B
    db $00,$00,$00,$00,$00,$00,$00,$BD,$5B,$9F,$02,$1F,$02,$DA,$01,$96 ; $CD975B
    db $0D,$74,$01,$EF,$00,$CA,$00,$55,$67,$F1,$52,$6C,$4E,$ED,$5D,$52 ; $CD976B
    db $49,$0C,$3D,$A0,$14,$00,$00,$DE,$7B,$35,$57,$B4,$62,$20,$52,$E9 ; $CD977B
    db $68,$6A,$3D,$06,$31,$A0,$28,$60,$0C,$5F,$52,$4C,$7D,$BF,$01,$20 ; $CD978B
    db $02,$39,$19,$E0,$02,$00,$00,$BD,$5B,$9F,$02,$1F,$02,$DA,$01,$96 ; $CD979B
    db $0D,$74,$01,$EF,$00,$CA,$00,$55,$67,$F1,$52,$6C,$4E,$ED,$5D,$52 ; $CD97AB
    db $49,$0C,$3D,$A0,$14,$00,$00,$DE,$7B,$35,$57,$B4,$62,$20,$52,$AC ; $CD97BB
    db $49,$49,$3D,$06,$31,$A0,$28,$60,$0C,$5F,$52,$0C,$7E,$BF,$01,$20 ; $CD97CB
    db $02,$39,$19,$E0,$02,$00,$00,$39,$67,$DA,$42,$3A,$26,$95,$0D,$54 ; $CD97DB
    db $01,$F0,$00,$AD,$00,$6A,$00,$ED,$35,$8A,$29,$48,$25,$A0,$18,$00 ; $CD97EB
    db $21,$20,$71,$60,$00,$00,$00,$1C,$63,$7A,$4E,$D7,$39,$75,$2D,$31 ; $CD97FB
    db $21,$CF,$14,$6D,$10,$6A,$00,$CC,$41,$68,$35,$29,$25,$E7,$20,$A4 ; $CD980B
    db $1C,$84,$10,$46,$0C,$00,$00,$5C,$63,$D9,$4E,$57,$3A,$D4,$29,$72 ; $CD981B
    db $19,$0F,$0D,$AD,$04,$88,$00,$EF,$3D,$29,$25,$E8,$0C,$65,$00,$20 ; $CD982B
    db $22,$A3,$21,$22,$15,$00,$00,$5D,$67,$99,$42,$17,$2E,$96,$1D,$54 ; $CD983B
    db $11,$31,$09,$CF,$00,$66,$00,$4E,$35,$09,$2D,$C9,$24,$88,$10,$73 ; $CD984B
    db $4E,$EF,$3D,$8C,$31,$00,$00,$9E,$4E,$18,$32,$B5,$29,$52,$29,$10 ; $CD985B
    db $19,$ED,$18,$AD,$04,$6A,$08,$66,$00,$52,$4A,$E8,$25,$A5,$15,$4A ; $CD986B
    db $01,$20,$1D,$C6,$00,$00,$00,$5C,$63,$9A,$4A,$38,$32,$B6,$25,$73 ; $CD987B
    db $15,$11,$0D,$EC,$00,$8B,$00,$65,$00,$49,$65,$05,$4D,$C6,$3C,$88 ; $CD988B
    db $2C,$F2,$7F,$FF,$7F,$52,$4E,$43,$02,$00,$00,$1E,$00,$00,$00,$0D ; $CD989B
    db $E9,$35,$C0,$BD,$C5,$04,$01,$01,$01,$04,$01,$0A,$07,$85,$03,$17 ; $CD98AB
    db $17,$10,$C3,$0E,$0B,$07,$08,$07,$09,$04,$03,$0A,$04,$16,$08,$06 ; $CD98BB
    db $01,$13,$08,$09,$10,$01,$2E,$08,$10,$38,$80,$20,$C0,$10,$20,$40 ; $CD98CB
    db $00,$2C,$1C,$B8,$8C,$98,$8C,$58,$4C,$D8,$0E,$50,$20,$70,$28,$17 ; $CD98DB
    db $18,$00,$CE,$01,$98,$07,$01,$01,$00,$03,$00,$9C,$05,$00,$03,$12 ; $CD98EB
    db $F0,$03,$01,$80,$40,$C0,$62,$00,$3E,$C0,$80,$C5,$01,$00,$26,$01 ; $CD98FB
    db $06,$E3,$01,$07,$1E,$01,$02,$06,$04,$3F,$7B,$07,$04,$0D,$01,$40 ; $CD990B
    db $C0,$20,$00,$D8,$38,$30,$CC,$01,$07,$78,$08,$B0,$60,$20,$80,$18 ; $CD991B
    db $7F,$30,$00,$01,$70,$00,$6E,$60,$1B,$78,$01,$02,$3F,$01,$03,$3C ; $CD992B
    db $01,$02,$04,$3F,$01,$A6,$05,$61,$60,$10,$C0,$58,$18,$10,$78,$01 ; $CD993B
    db $20,$F0,$C0,$B0,$E8,$18,$74,$07,$3F,$10,$33,$01,$3F,$E0,$88,$43 ; $CD994B
    db $38,$60,$BF,$3F,$03,$0D,$0E,$00,$0C,$0F,$12,$08,$2C,$56,$3C,$C6 ; $CD995B
    db $10,$02,$01,$53,$C3,$43,$0C,$00,$1C,$9B,$E1,$10,$18,$70,$A0,$00 ; $CD996B
    db $7A,$60,$40,$28,$E0,$C0,$01,$C8,$A0,$74,$C0,$40,$80,$48,$C0,$08 ; $CD997B
    db $00,$66,$0B,$38,$0E,$2D,$00,$04,$12,$3C,$3A,$1E,$1F,$1E,$23,$C6 ; $CD998B
    db $4C,$08,$07,$39,$0C,$14,$08,$10,$08,$3B,$3F,$A3,$81,$F0,$0A,$01 ; $CD999B
    db $40,$60,$10,$6D,$8A,$34,$40,$C4,$76,$60,$CE,$9F,$80,$39,$3D,$E0 ; $CD99AB
    db $07,$9D,$B4,$04,$80,$34,$04,$0E,$0E,$08,$0B,$1F,$36,$1C,$1D,$33 ; $CD99BB
    db $7F,$08,$05,$02,$0A,$04,$00,$7F,$1F,$00,$1E,$00,$A0,$80,$40,$D3 ; $CD99CB
    db $02,$06,$31,$A0,$D0,$10,$A8,$0E,$7E,$80,$01,$1D,$80,$C1,$1F,$20 ; $CD99DB
    db $3F,$CE,$6B,$21,$6C,$6A,$46,$FF,$05,$EC,$0E,$1F,$4D,$18,$FD,$1B ; $CD99EB
    db $99,$06,$01,$E0,$08,$D0,$48,$C5,$1C,$60,$D0,$E0,$47,$60,$40,$73 ; $CD99FB
    db $40,$10,$E0,$40,$C8,$D1,$40,$46,$B9,$7D,$C3,$00,$15,$1A,$15,$00 ; $CD9A0B
    db $30,$1D,$14,$0E,$18,$12,$05,$10,$C4,$BA,$03,$04,$68,$D7,$65,$01 ; $CD9A1B
    db $7F,$0E,$60,$D9,$CC,$38,$AC,$F8,$06,$E4,$18,$CC,$70,$58,$06,$00 ; $CD9A2B
    db $50,$B0,$20,$C0,$20,$D8,$00,$58,$3B,$00,$78,$3B,$37,$30,$21,$15 ; $CD9A3B
    db $C0,$67,$49,$00,$63,$EB,$01,$02,$F4,$06,$FC,$23,$3F,$15,$F3,$40 ; $CD9A4B
    db $80,$8E,$2F,$20,$E0,$7E,$03,$02,$F9,$52,$80,$3F,$07,$35,$05,$03 ; $CD9A5B
    db $00,$02,$06,$08,$05,$0F,$00,$0F,$A2,$B3,$06,$B3,$7F,$0C,$88,$0D ; $CD9A6B
    db $00,$DD,$FF,$1C,$34,$2C,$01,$30,$18,$D0,$98,$60,$F0,$08,$E7,$02 ; $CD9A7B
    db $FD,$30,$6F,$5B,$07,$81,$7A,$0C,$07,$08,$F1,$05,$4A,$CB,$03,$84 ; $CD9A8B
    db $10,$3C,$1C,$18,$14,$18,$1C,$10,$08,$3C,$18,$70,$24,$BF,$DD,$82 ; $CD9A9B
    db $BF,$E0,$80,$7F,$58,$20,$3F,$7F,$7F,$F3,$01,$40,$01,$B3,$51,$7F ; $CD9AAB
    db $E3,$03,$7D,$01,$00,$E8,$DC,$FC,$F8,$B8,$C4,$83,$38,$60,$80,$60 ; $CD9ABB
    db $90,$01,$6F,$E0,$10,$C8,$00,$F8,$00,$6C,$FB,$E0,$F6,$05,$7D,$C8 ; $CD9ACB
    db $0F,$07,$18,$0F,$10,$04,$41,$11,$BF,$20,$70,$E8,$68,$30,$28,$30 ; $CD9ADB
    db $78,$20,$90,$F8,$B0,$60,$60,$EC,$08,$70,$48,$00,$01,$60,$AD,$81 ; $CD9AEB
    db $8C,$00,$1E,$1C,$9F,$0C,$60,$18,$02,$14,$1A,$08,$1E,$3F,$06,$0D ; $CD9AFB
    db $04,$2B,$7F,$07,$0A,$3F,$10,$14,$14,$30,$BF,$28,$26,$70,$70,$A0 ; $CD9B0B
    db $C9,$BF,$38,$AC,$1F,$BF,$0C,$05,$0E,$05,$0B,$F7,$09,$00,$1C,$03 ; $CD9B1B
    db $16,$0A,$15,$0A,$14,$06,$4B,$08,$4B,$3D,$2A,$3F,$0C,$2B,$65,$78 ; $CD9B2B
    db $3D,$11,$00,$0B,$00,$18,$13,$04,$14,$64,$10,$1C,$00,$08,$0F,$07 ; $CD9B3B
    db $1F,$08,$3C,$12,$08,$44,$07,$67,$BD,$01,$1C,$1D,$BD,$1C,$BA,$27 ; $CD9B4B
    db $40,$3F,$C8,$18,$50,$18,$10,$70,$44,$28,$BE,$3F,$10,$09,$6E,$3F ; $CD9B5B
    db $32,$00,$02,$05,$04,$01,$08,$06,$04,$02,$04,$08,$0E,$04,$04,$07 ; $CD9B6B
    db $02,$8D,$BD,$0C,$A2,$01,$1D,$41,$07,$81,$A3,$88,$60,$18,$28,$10 ; $CD9B7B
    db $9B,$DB,$0C,$01,$06,$EB,$4A,$5C,$10,$E0,$0C,$4D,$1C,$9D,$8F,$01 ; $CD9B8B
    db $BC,$00,$07,$CF,$42,$02,$07,$3D,$9E,$01,$05,$0D,$F1,$04,$FC,$39 ; $CD9B9B
    db $43,$F2,$3C,$3F,$01,$27,$3D,$61,$B0,$AD,$17,$25,$2F,$26,$34,$C5 ; $CD9BAB
    db $74,$04,$87,$C9,$17,$08,$2F,$10,$4A,$EB,$00,$00,$01,$00,$20,$78 ; $CD9BBB
    db $00,$F8,$13,$F0,$58,$F0,$D0,$52,$49,$3E,$F0,$F0,$01,$00,$81,$FE ; $CD9BCB
    db $0A,$ED,$01,$53,$03,$09,$13,$01,$F7,$84,$01,$0F,$08,$F4,$00,$96 ; $CD9BDB
    db $01,$8B,$0B,$E4,$84,$48,$B9,$08,$A0,$14,$02,$58,$02,$55,$00,$F7 ; $CD9BEB
    db $A6,$60,$1F,$F0,$14,$A8,$02,$0E,$A4,$04,$A2,$A2,$C8,$3F,$03,$75 ; $CD9BFB
    db $7F,$7A,$03,$44,$EF,$1F,$15,$1F,$57,$10,$8D,$C5,$03,$7F,$C2,$0E ; $CD9C0B
    db $00,$1F,$6C,$A5,$6D,$20,$00,$40,$30,$00,$E8,$F0,$54,$F0,$00,$F3 ; $CD9C1B
    db $02,$11,$C0,$93,$7F,$80,$EF,$74,$00,$EE,$00,$05,$52,$00,$42,$00 ; $CD9C2B
    db $C6,$81,$70,$7C,$00,$94,$00,$96,$0B,$84,$03,$0E,$3C,$00,$3A,$00 ; $CD9C3B
    db $11,$84,$E4,$3E,$24,$C3,$10,$7E,$00,$22,$87,$01,$3C,$24,$48,$1F ; $CD9C4B
    db $38,$30,$18,$60,$30,$02,$20,$3C,$10,$1C,$08,$0B,$18,$07,$08,$BC ; $CD9C5B
    db $5B,$1D,$01,$18,$A2,$FF,$4F,$3F,$14,$38,$16,$9A,$3F,$9B,$E8,$64 ; $CD9C6B
    db $6C,$02,$57,$01,$F0,$06,$7C,$FE,$F8,$F4,$3A,$0E,$0C,$01,$BD,$08 ; $CD9C7B
    db $20,$10,$40,$E0,$D0,$FF,$FC,$9C,$44,$BD,$27,$3F,$80,$3F,$73,$12 ; $CD9C8B
    db $91,$B0,$00,$2F,$25,$40,$13,$DE,$F1,$39,$3F,$00,$20,$1F,$00,$2F ; $CD9C9B
    db $08,$1F,$04,$0F,$3B,$02,$07,$71,$1E,$3C,$3F,$D9,$73,$07,$3E,$C0 ; $CD9CAB
    db $C4,$00,$18,$F0,$81,$01,$70,$88,$2A,$E8,$C3,$03,$CF,$F3,$F0,$01 ; $CD9CBB
    db $AB,$C1,$00,$B0,$71,$42,$94,$0A,$16,$F4,$74,$0A,$3B,$4F,$84,$3C ; $CD9CCB
    db $78,$F4,$03,$5F,$F5,$03,$A6,$4B,$AE,$46,$BC,$BC,$C0,$01,$83,$A2 ; $CD9CDB
    db $00,$A4,$00,$B8,$F1,$03,$1F,$10,$1F,$04,$01,$1C,$57,$F6,$B0,$3B ; $CD9CEB
    db $02,$00,$1F,$A2,$01,$03,$91,$01,$00,$CC,$0C,$F0,$08,$E0,$30,$04 ; $CD9CFB
    db $E0,$60,$C0,$C0,$80,$8E,$B9,$F8,$3D,$7D,$C0,$03,$C5,$00,$7F,$08 ; $CD9D0B
    db $77,$73,$08,$F3,$04,$7F,$77,$C0,$03,$5F,$35,$26,$11,$A2,$51,$3C ; $CD9D1B
    db $A2,$B3,$01,$7F,$26,$E3,$81,$A2,$EE,$04,$23,$04,$75,$05,$40,$44 ; $CD9D2B
    db $07,$06,$0F,$0F,$1D,$0C,$0C,$06,$0D,$1E,$18,$76,$05,$3B,$02,$04 ; $CD9D3B
    db $E4,$51,$0F,$10,$AA,$43,$BC,$30,$20,$AC,$1F,$AC,$38,$30,$01,$FE ; $CD9D4B
    db $FC,$EC,$62,$30,$68,$F0,$BA,$7A,$41,$CC,$20,$10,$30,$00,$FC,$D9 ; $CD9D5B
    db $C3,$60,$CA,$01,$CE,$25,$02,$90,$F6,$00,$06,$03,$01,$6A,$06,$4D ; $CD9D6B
    db $84,$04,$01,$56,$05,$55,$87,$EC,$33,$60,$C0,$25,$20,$40,$E0,$70 ; $CD9D7B
    db $50,$04,$C0,$10,$60,$70,$20,$A6,$3B,$32,$4B,$60,$83,$01,$0E,$00 ; $CD9D8B
    db $1B,$86,$E7,$06,$04,$01,$19,$07,$07,$17,$86,$05,$CE,$FC,$45,$76 ; $CD9D9B
    db $48,$3F,$07,$18,$23,$05,$C0,$A1,$36,$18,$18,$10,$58,$81,$F7,$C0 ; $CD9DAB
    db $F0,$68,$58,$F4,$15,$75,$8A,$B8,$7F,$50,$16,$F0,$AF,$8C,$BF,$08 ; $CD9DBB
    db $01,$11,$AB,$10,$0C,$08,$0E,$0C,$08,$01,$1C,$C0,$33,$03,$09,$06 ; $CD9DCB
    db $02,$0C,$2A,$14,$08,$BD,$C4,$46,$A5,$A7,$37,$7C,$90,$14,$8F,$03 ; $CD9DDB
    db $F0,$F8,$18,$05,$C1,$FF,$0C,$01,$1F,$03,$24,$7F,$82,$01,$01,$1E ; $CD9DEB
    db $03,$69,$7F,$3B,$01,$F1,$B6,$F1,$83,$40,$10,$10,$D3,$25,$91,$5E ; $CD9DFB
    db $1C,$23,$79,$A0,$40,$50,$84,$7F,$38,$00,$07,$01,$0F,$00,$1D,$B9 ; $CD9E0B
    db $02,$BF,$05,$9E,$BF,$02,$05,$BF,$63,$F8,$70,$20,$30,$99,$45,$04 ; $CD9E1B
    db $10,$8E,$AF,$20,$20,$25,$04,$30,$1D,$77,$F5,$BE,$20,$77,$23,$DE ; $CD9E2B
    db $36,$3F,$22,$FF,$10,$4C,$48,$48,$CE,$F2,$01,$FF,$48,$A7,$E8,$0C ; $CD9E3B
    db $36,$14,$0A,$0C,$55,$7F,$18,$4E,$18,$29,$2F,$21,$31,$4A,$08,$45 ; $CD9E4B
    db $DF,$7F,$00,$31,$30,$01,$00,$70,$60,$A0,$01,$50,$60,$80,$08,$F0 ; $CD9E5B
    db $70,$C8,$D8,$B5,$00,$80,$4B,$40,$AF,$F9,$F0,$01,$81,$FF,$06,$07 ; $CD9E6B
    db $0E,$BB,$B5,$E0,$AA,$13,$0C,$1C,$02,$0E,$12,$30,$3C,$02,$BA,$D7 ; $CD9E7B
    db $1F,$88,$45,$3C,$F8,$A5,$38,$38,$20,$61,$28,$C0,$F4,$C8,$1C,$8C ; $CD9E8B
    db $65,$1E,$20,$1F,$60,$AA,$AA,$5D,$F0,$B0,$61,$1F,$DB,$7F,$01,$63 ; $CD9E9B
    db $80,$36,$06,$08,$0F,$01,$0F,$10,$1F,$01,$EC,$19,$9C,$45,$3F,$FF ; $CD9EAB
    db $0D,$FF,$BF,$02,$70,$FF,$1A,$08,$1A,$18,$00,$1E,$0E,$15,$05,$0A ; $CD9EBB
    db $02,$05,$01,$E9,$B6,$09,$18,$00,$1C,$00,$77,$79,$EC,$07,$97,$0F ; $CD9ECB
    db $80,$C0,$70,$78,$01,$BC,$2F,$AA,$09,$F0,$F3,$06,$7F,$09,$DD,$0C ; $CD9EDB
    db $7F,$91,$F2,$18,$DC,$CB,$7F,$78,$58,$10,$7F,$08,$16,$10,$28,$10 ; $CD9EEB
    db $79,$7F,$02,$3F,$04,$EF,$0D,$3F,$02,$A2,$AE,$54,$3E,$BF,$00,$07 ; $CD9EFB
    db $8F,$BF,$06,$1E,$FF,$1E,$01,$04,$3F,$7F,$1E,$12,$FD,$B6,$01,$00 ; $CD9F0B
    db $E8,$18,$FF,$B5,$3B,$28,$C0,$01,$38,$E0,$98,$20,$85,$7F,$AE,$DF ; $CD9F1B
    db $30,$4B,$00,$A1,$BD,$0E,$01,$1F,$02,$F0,$05,$7F,$1E,$F9,$06,$7F ; $CD9F2B
    db $0C,$38,$04,$7C,$08,$B4,$18,$61,$10,$01,$98,$90,$D8,$CE,$05,$A7 ; $CD9F3B
    db $FC,$91,$3C,$24,$81,$90,$60,$3E,$05,$18,$DE,$FF,$97,$BE,$40,$DA ; $CD9F4B
    db $05,$FF,$C0,$FB,$06,$7C,$FF,$18,$00,$70,$18,$08,$F8,$10,$74,$30 ; $CD9F5B
    db $20,$B3,$01,$9D,$B4,$52,$36,$20,$40,$CF,$01,$18,$0A,$BF,$18,$24 ; $CD9F6B
    db $1C,$0C,$BF,$78,$20,$D0,$8A,$F0,$09,$30,$68,$20,$18,$23,$BF,$B1 ; $CD9F7B
    db $7F,$18,$8B,$3F,$0F,$12,$F9,$04,$FF,$F5,$02,$3F,$A7,$FF,$DD,$17 ; $CD9F8B
    db $9F,$6F,$61,$49,$8D,$24,$28,$77,$30,$34,$2E,$36,$2B,$33,$27,$08 ; $CD9F9B
    db $F0,$08,$70,$04,$78,$34,$48,$2A,$44,$26,$40,$27,$40,$23,$40,$3C ; $CD9FAB
    db $02,$1E,$04,$04,$40,$0C,$28,$0C,$88,$2C,$48,$AC,$88,$4C,$88,$20 ; $CD9FBB
    db $EA,$45,$54,$40,$38,$28,$CB,$50,$A8,$50,$48,$90,$C8,$10,$88,$10 ; $CD9FCB
    db $1C,$02,$3E,$05,$06,$07,$0B,$0A,$0B,$0D,$0D,$00,$02,$0A,$0C,$09 ; $CD9FDB
    db $00,$3C,$06,$18,$75,$06,$84,$47,$0B,$10,$B9,$7F,$E6,$1F,$3F,$CC ; $CD9FEB
    db $90,$88,$01,$8C,$07,$48,$8C,$C8,$CC,$A8,$4F,$34,$44,$82,$4B,$DB ; $CD9FFB
    db $88,$99,$01,$41,$01,$80,$1C,$0B,$06,$05,$04,$16,$14,$24,$10,$0C ; $CDA00B
    db $B1,$EE,$65,$BF,$4C,$C1,$AB,$01,$3E,$41,$BF,$28,$18,$3C,$0C,$18 ; $CDA01B
    db $0F,$01,$04,$E6,$BF,$1F,$01,$06,$1F,$FF,$0A,$12,$7F,$87,$3F,$08 ; $CDA02B
    db $50,$20,$18,$07,$24,$3C,$40,$78,$04,$C3,$02,$3F,$30,$A3,$0A,$ED ; $CDA03B
    db $3B,$FF,$EA,$B8,$FD,$0E,$7F,$02,$75,$0F,$8A,$80,$04,$84,$4B,$0C ; $CDA04B
    db $92,$7D,$83,$C1,$70,$60,$00,$01,$50,$60,$10,$60,$B0,$40,$70,$16 ; $CDA05B
    db $A0,$60,$40,$EA,$35,$60,$A5,$7D,$80,$F3,$09,$BF,$E0,$0A,$BF,$60 ; $CDA06B
    db $38,$58,$3C,$06,$7C,$10,$24,$78,$34,$F2,$1A,$3A,$19,$0E,$23,$09 ; $CDA07B
    db $B7,$38,$DA,$61,$06,$F9,$3B,$BF,$03,$73,$65,$70,$63,$51,$62,$01 ; $CDA08B
    db $9F,$30,$40,$30,$48,$78,$80,$87,$1F,$63,$00,$61,$A1,$01,$A3,$1F ; $CDA09B
    db $70,$5C,$18,$9C,$18,$14,$98,$04,$18,$0C,$10,$0C,$12,$8A,$8F,$FF ; $CDA0AB
    db $98,$00,$18,$01,$45,$01,$48,$FF,$1C,$19,$AF,$DF,$9E,$02,$1F,$18 ; $CDA0BB
    db $07,$1F,$5C,$DC,$7B,$78,$1C,$F8,$14,$B8,$04,$78,$0C,$50,$0C,$32 ; $CDA0CB
    db $0E,$20,$1C,$02,$D8,$2B,$75,$78,$B1,$79,$3D,$E9,$4F,$9F,$34,$3D ; $CDA0DB
    db $08,$72,$BF,$04,$7F,$11,$0C,$31,$BF,$B3,$F3,$14,$2C,$0F,$BD,$0C ; $CDA0EB
    db $78,$D0,$06,$BC,$3F,$B9,$BF,$C7,$25,$1A,$01,$C3,$05,$FF,$1F,$E0 ; $CDA0FB
    db $06,$FF,$80,$80,$EC,$B2,$40,$1D,$20,$38,$18,$60,$25,$08,$30,$10 ; $CDA10B
    db $68,$38,$33,$ED,$FD,$A3,$01,$BF,$FF,$F1,$38,$7F,$FF,$04,$FF,$F5 ; $CDA11B
    db $05,$7F,$BE,$FF,$60,$5B,$A0,$F1,$FF,$3F,$BF,$04,$F8,$FF,$97,$BF ; $CDA12B
    db $03,$3A,$7F,$80,$7F,$00,$0A,$0A,$0D,$04,$07,$06,$03,$02,$07,$21 ; $CDA13B
    db $7F,$41,$A2,$3A,$EF,$03,$01,$04,$F5,$7F,$80,$D0,$86,$E0,$FF,$02 ; $CDA14B
    db $65,$7F,$EF,$81,$52,$6D,$08,$FA,$05,$0F,$11,$1F,$18,$05,$A8,$BF ; $CDA15B
    db $FC,$00,$BC,$CF,$7B,$04,$03,$A9,$BF,$F8,$58,$F5,$05,$BF,$9C,$AC ; $CDA16B
    db $9F,$08,$01,$F9,$02,$9F,$93,$01,$D9,$18,$1F,$0E,$38,$83,$E4,$2C ; $CDA17B
    db $2C,$20,$04,$BC,$03,$08,$1C,$1E,$06,$08,$BA,$5F,$20,$79,$1F,$08 ; $CDA18B
    db $C1,$C8,$3C,$40,$38,$DB,$D3,$0C,$82,$50,$60,$70,$C7,$70,$1D,$A0 ; $CDA19B
    db $40,$40,$6B,$7A,$50,$AA,$F8,$60,$AF,$1C,$41,$C0,$2E,$0C,$70,$48 ; $CDA1AB
    db $40,$18,$02,$08,$01,$30,$31,$19,$39,$3D,$0E,$11,$CE,$EE,$3B,$1D ; $CDA1BB
    db $10,$0E,$A1,$31,$00,$13,$C0,$5B,$0F,$10,$0E,$05,$06,$76,$00,$9F ; $CDA1CB
    db $01,$18,$1C,$90,$18,$5C,$E8,$10,$B4,$0E,$6E,$68,$9F,$39,$5F,$B0 ; $CDA1DB
    db $01,$D4,$1F,$36,$0F,$0B,$05,$D7,$7F,$0F,$CA,$05,$3F,$30,$AD,$B5 ; $CDA1EB
    db $FC,$02,$1E,$E0,$FB,$07,$E6,$B3,$57,$17,$48,$05,$1F,$16,$0D,$1A ; $CDA1FB
    db $10,$A1,$7F,$1B,$5F,$FD,$F8,$02,$7F,$2E,$8C,$18,$19,$E4,$D8,$6C ; $CDA20B
    db $B0,$58,$3C,$78,$D0,$94,$28,$D8,$24,$19,$98,$D6,$57,$C3,$4F,$44 ; $CDA21B
    db $00,$D8,$3B,$9F,$BF,$03,$EF,$7E,$5F,$35,$FD,$04,$FF,$57,$0C,$B7 ; $CDA22B
    db $7F,$08,$C0,$70,$20,$E8,$38,$60,$18,$60,$58,$70,$D0,$80,$44,$C9 ; $CDA23B
    db $2A,$3F,$30,$14,$FD,$60,$C9,$FA,$38,$BE,$BF,$1C,$17,$65,$7F,$3F ; $CDA24B
    db $DD,$12,$20,$7F,$0A,$04,$0A,$0F,$03,$07,$05,$05,$02,$05,$06,$5B ; $CDA25B
    db $F1,$C7,$7F,$0C,$78,$09,$06,$AA,$AA,$FB,$03,$D7,$5B,$60,$23,$B2 ; $CDA26B
    db $44,$E7,$47,$7A,$AF,$C9,$C0,$07,$F8,$37,$11,$0E,$11,$3A,$1B,$0F ; $CDA27B
    db $77,$85,$45,$5A,$6D,$04,$1C,$04,$02,$1B,$77,$81,$01,$04,$00,$2B ; $CDA28B
    db $00,$F4,$18,$E0,$10,$B8,$F0,$00,$08,$10,$40,$20,$70,$8C,$31,$06 ; $CDA29B
    db $B0,$ED,$C1,$09,$01,$F9,$D5,$D8,$63,$04,$36,$03,$1E,$18,$0A,$07 ; $CDA2AB
    db $01,$06,$20,$7C,$03,$F2,$3C,$15,$10,$08,$0C,$A4,$5B,$83,$60,$1A ; $CDA2BB
    db $10,$08,$28,$30,$20,$60,$68,$AF,$40,$D0,$A0,$C0,$D8,$8D,$0E,$20 ; $CDA2CB
    db $10,$71,$70,$49,$A0,$3B,$3C,$09,$02,$3F,$06,$6E,$07,$3F,$9F,$88 ; $CDA2DB
    db $01,$43,$3F,$3D,$4C,$98,$3F,$70,$3B,$20,$30,$39,$7E,$60,$BE,$34 ; $CDA2EB
    db $3F,$59,$49,$13,$47,$D7,$73,$13,$04,$0C,$10,$F6,$86,$02,$7F,$0F ; $CDA2FB
    db $0C,$00,$DE,$40,$56,$41,$F0,$08,$33,$C0,$48,$1E,$60,$64,$7B,$3A ; $CDA30B
    db $A0,$58,$7F,$10,$12,$E0,$50,$20,$7D,$7B,$08,$1D,$3D,$8F,$BE,$02 ; $CDA31B
    db $04,$05,$F2,$09,$38,$85,$EF,$40,$6B,$0B,$27,$30,$47,$0C,$98,$77 ; $CDA32B
    db $A4,$94,$80,$31,$C1,$D7,$10,$0F,$48,$30,$D3,$49,$3E,$70,$51,$4E ; $CDA33B
    db $D0,$10,$E8,$1A,$3C,$0B,$3E,$2C,$5E,$77,$01,$04,$E2,$E0,$1E,$FC ; $CDA34B
    db $03,$FB,$06,$30,$41,$82,$60,$40,$00,$FA,$05,$BB,$3D,$E0,$6E,$E0 ; $CDA35B
    db $EF,$31,$C0,$18,$B5,$02,$06,$D2,$67,$06,$B6,$FD,$B6,$03,$F4,$38 ; $CDA36B
    db $00,$74,$19,$24,$30,$33,$0C,$18,$02,$48,$0B,$7C,$38,$F0,$E0,$44 ; $CDA37B
    db $3D,$AE,$7D,$40,$F0,$39,$5F,$01,$03,$03,$31,$04,$03,$B9,$09,$06 ; $CDA38B
    db $D6,$C7,$BF,$63,$7F,$98,$B3,$5B,$BB,$B7,$7F,$1E,$A0,$40,$30,$E0 ; $CDA39B
    db $10,$A0,$18,$70,$28,$70,$0C,$30,$1E,$60,$3C,$42,$E7,$CF,$82,$77 ; $CDA3AB
    db $20,$00,$10,$6F,$1F,$38,$9E,$3F,$F3,$39,$BA,$3E,$02,$77,$0D,$C4 ; $CDA3BB
    db $7F,$3D,$1F,$20,$7A,$7B,$06,$E8,$BD,$77,$0C,$55,$DB,$18,$F5,$7F ; $CDA3CB
    db $80,$BD,$B2,$FF,$0F,$80,$7F,$0F,$0C,$0F,$06,$1E,$19,$0E,$12,$0C ; $CDA3DB
    db $18,$0E,$EF,$E9,$A4,$02,$BD,$01,$FB,$1B,$3C,$62,$15,$00,$60,$EB ; $CDA3EB
    db $00,$73,$18,$38,$10,$14,$38,$34,$20,$04,$18,$01,$70,$AA,$BC,$3F ; $CDA3FB
    db $38,$02,$5F,$01,$FB,$0A,$3C,$FE,$07,$00,$80,$00,$30,$50,$6C,$54 ; $CDA40B
    db $18,$37,$07,$1F,$2D,$01,$06,$0A,$35,$38,$AC,$9B,$A2,$B5,$E1,$03 ; $CDA41B
    db $03,$0F,$0B,$13,$0E,$1A,$EC,$E8,$F4,$E0,$10,$28,$B7,$76,$06,$59 ; $CDA42B
    db $5A,$F0,$FF,$6F,$01,$ED,$F9,$A3,$75,$C0,$46,$00,$78,$48,$7C,$00 ; $CDA43B
    db $24,$03,$00,$7C,$78,$7C,$48,$24,$9C,$01,$02,$CC,$DC,$48,$01,$78 ; $CDA44B
    db $87,$04,$33,$01,$00,$68,$AD,$FF,$07,$2C,$08,$70,$74,$74,$03,$1A ; $CDA45B
    db $04,$70,$38,$44,$1A,$0A,$08,$40,$01,$48,$1F,$A7,$FF,$74,$1D,$BA ; $CDA46B
    db $59,$00,$90,$99,$E0,$40,$B0,$04,$38,$58,$18,$3F,$20,$44,$40,$C4 ; $CDA47B
    db $DB,$20,$25,$38,$AF,$20,$30,$F0,$10,$30,$CC,$88,$44,$03,$88,$54 ; $CDA48B
    db $80,$08,$E0,$70,$A8,$0E,$01,$30,$80,$18,$80,$88,$00,$88,$DD,$07 ; $CDA49B
    db $80,$E3,$D4,$98,$F8,$60,$04,$3F,$48,$70,$30,$48,$C6,$37,$04,$78 ; $CDA4AB
    db $5F,$44,$98,$15,$D4,$40,$70,$57,$9D,$78,$B1,$07,$1F,$01,$40,$20 ; $CDA4BB
    db $E7,$04,$1F,$40,$80,$01,$7F,$68,$4C,$CC,$E8,$54,$B8,$F3,$02,$7F ; $CDA4CB
    db $C8,$8A,$9D,$68,$0A,$7F,$CC,$A6,$EE,$26,$DF,$24,$DF,$3D,$84,$48 ; $CDA4DB
    db $06,$DF,$1F,$09,$8E,$25,$1F,$FD,$8D,$02,$D1,$D8,$C4,$01,$10,$91 ; $CDA4EB
    db $06,$77,$BF,$16,$57,$E1,$BE,$BF,$4C,$3A,$48,$34,$CC,$FC,$9F,$14 ; $CDA4FB
    db $73,$08,$2E,$B8,$51,$B0,$FF,$E4,$86,$CC,$5F,$34,$09,$7C,$8C,$3F ; $CDA50B
    db $2A,$0C,$4C,$44,$22,$8C,$94,$48,$6A,$10,$AE,$23,$1F,$44,$11,$BF ; $CDA51B
    db $B0,$F0,$DE,$6B,$10,$BB,$28,$44,$DF,$52,$A0,$B8,$12,$04,$00,$3F ; $CDA52B
    db $C6,$A3,$EF,$38,$1A,$10,$76,$D4,$38,$01,$C6,$02,$82,$44,$27,$C4 ; $CDA53B
    db $25,$44,$00,$94,$01,$BF,$19,$30,$34,$10,$5D,$34,$E6,$01,$BF,$20 ; $CDA54B
    db $E2,$3D,$48,$58,$01,$BF,$8C,$43,$58,$04,$DF,$6C,$E4,$1B,$9C,$9F ; $CDA55B
    db $FF,$E3,$18,$48,$C4,$01,$9F,$F8,$80,$65,$DF,$64,$68,$BB,$CA,$3F ; $CDA56B
    db $88,$42,$9A,$1B,$5A,$3F,$C8,$3F,$E0,$B3,$00,$36,$7A,$3A,$01,$3F ; $CDA57B
    db $33,$21,$7C,$F4,$03,$FF,$21,$DF,$9F,$F9,$04,$FF,$4C,$06,$3F,$0C ; $CDA58B
    db $25,$00,$28,$04,$38,$38,$30,$5C,$04,$58,$70,$44,$63,$40,$30,$56 ; $CDA59B
    db $08,$9F,$8D,$21,$18,$7F,$F8,$8C,$23,$FC,$00,$95,$BF,$10,$37,$01 ; $CDA5AB
    db $02,$18,$7F,$20,$01,$20,$00,$92,$01,$DB,$9F,$D2,$02,$BF,$DE,$9F ; $CDA5BB
    db $02,$BF,$01,$C6,$83,$E7,$00,$66,$44,$12,$B6,$01,$64,$01,$0E,$10 ; $CDA5CB
    db $18,$04,$82,$D9,$16,$02,$6C,$C5,$01,$28,$33,$5F,$1F,$C7,$AE,$B6 ; $CDA5DB
    db $56,$09,$54,$02,$6C,$12,$E8,$3F,$CE,$38,$54,$2B,$BB,$6C,$00,$3F ; $CDA5EB
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
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDCAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDCBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDCCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDCDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDCEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDCFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDD9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDFEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDDFFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDE9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDECAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDECBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDECCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDECDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDECEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDECFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDED9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEFEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDEFFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF00B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF01B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF02B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF03B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF04B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF05B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF06B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF07B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF08B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF09B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF0AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF0BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF0CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF0DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF0EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF0FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF10B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF11B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF12B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF13B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF14B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF15B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF16B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF17B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF18B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF19B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF1AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF1BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF1CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF1DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF1EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF1FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF20B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF21B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF22B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF23B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF24B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF25B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF26B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF27B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF28B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF29B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF2AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF2BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF2CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF2DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF2EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF2FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF30B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF31B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF32B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF33B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF34B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF35B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF36B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF37B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF38B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF39B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF3AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF3BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF3CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF3DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF3EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF3FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF40B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF41B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF42B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF43B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF44B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF45B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF46B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF47B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF48B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF49B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF4AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF4BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF4CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF4DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF4EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF4FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF50B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF51B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF52B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF53B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF54B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF55B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF56B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF57B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF58B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF59B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF5AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF5BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF5CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF5DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF5EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF5FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF60B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF61B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF62B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF63B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF64B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF65B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF66B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF67B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF68B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF69B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF6AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF6BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF6CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF6DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF6EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF6FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF70B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF71B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF72B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF73B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF74B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF75B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF76B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF77B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF78B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF79B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF7AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF7BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF7CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF7DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF7EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF7FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF80B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF81B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF82B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF83B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF84B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF85B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF86B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF87B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF88B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF89B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF8AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF8BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF8CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF8DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF8EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF8FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF90B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF91B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF92B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF93B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF94B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF95B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF96B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF97B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF98B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF99B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF9AB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF9BB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF9CB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF9DB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF9EB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDF9FB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFA9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFAAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFABB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFACB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFADB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFAEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFAFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFB9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFBAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFBBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFBCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFBDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFBEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFBFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFC9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFCAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFCBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFCCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFCDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFCEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFCFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFD9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFDAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFDBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFDCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFDDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFDEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFDFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFE9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFEAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFEBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFECB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFEDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFEEB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFEFB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF0B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF1B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF2B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF3B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF4B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF5B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF6B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF7B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF8B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFF9B
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFFAB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFFBB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFFCB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFFDB
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $CDFFEB
    db $FF,$FF,$FF,$FF,$FF                                             ; $CDFFFB
