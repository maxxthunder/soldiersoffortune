; bank $C3  (file offset $030000)
org $C30000

L_C30000:
    REP #$38                ; $C30000  C2 38        mX
    LDA $06,S               ; $C30002  A3 06        MX
    STA $2A                 ; $C30004  85 2A        MX
    LDA $08,S               ; $C30006  A3 08        MX
    STA $28                 ; $C30008  85 28        MX
    LDA $0A,S               ; $C3000A  A3 0A        MX
    STA $26                 ; $C3000C  85 26        MX
    SEP #$21                ; $C3000E  E2 21        MX
    LDA $04,S               ; $C30010  A3 04        mX
    PHB                     ; $C30012  8B           mX
    PHA                     ; $C30013  48           mX
    PLB                     ; $C30014  AB           mX
    STZ $2E                 ; $C30015  64 2E        mX
    STZ $30                 ; $C30017  64 30        mX
    LDX #$0000              ; $C30019  A2 00 00     mX
    LDY #$0012              ; $C3001C  A0 12 00     mX
    LDA [$26],Y             ; $C3001F  B7 26        mX
    INY                     ; $C30021  C8           mX
    ROL                     ; $C30022  2A           mX
    ASL                     ; $C30023  0A           mX
    JMP L_C30137            ; $C30024  4C 37 01     mX
L_C30027:
    LDA [$26],Y             ; $C30027  B7 26        mX
    INY                     ; $C30029  C8           mX
    ROL                     ; $C3002A  2A           mX
    BRA L_C30033            ; $C3002B  80 06        mX
L_C3002D:
    LDX #$0004              ; $C3002D  A2 04 00     mX
L_C30030:
    ASL                     ; $C30030  0A           mX
    BEQ L_C30027            ; $C30031  F0 F4        mX
L_C30033:
    ROL $2D                 ; $C30033  26 2D        mX
    DEX                     ; $C30035  CA           mX
    BNE L_C30030            ; $C30036  D0 F8        mX
    PHA                     ; $C30038  48           mX
    REP #$21                ; $C30039  C2 21        mX
    TYA                     ; $C3003B  98           MX
    ADC $26                 ; $C3003C  65 26        MX
    STA $26                 ; $C3003E  85 26        MX
    LDY #$0000              ; $C30040  A0 00 00     MX
    LDA $2D                 ; $C30043  A5 2D        MX
    ADC #$0003              ; $C30045  69 03 00     MX
    ASL                     ; $C30048  0A           MX
    ASL                     ; $C30049  0A           MX
    STA $2F                 ; $C3004A  85 2F        MX
    LSR                     ; $C3004C  4A           MX
    BEQ L_C30059            ; $C3004D  F0 0A        MX
    TAX                     ; $C3004F  AA           MX
L_C30050:
    LDA [$26],Y             ; $C30050  B7 26        MX
    STA ($2A),Y             ; $C30052  91 2A        MX
    INY                     ; $C30054  C8           MX
    INY                     ; $C30055  C8           MX
    DEX                     ; $C30056  CA           MX
    BNE L_C30050            ; $C30057  D0 F7        MX
L_C30059:
    BCC L_C30064            ; $C30059  90 09        MX
    SEP #$20                ; $C3005B  E2 20        MX
    LDA [$26],Y             ; $C3005D  B7 26        mX
    STA ($2A),Y             ; $C3005F  91 2A        mX
    REP #$21                ; $C30061  C2 21        mX
    INY                     ; $C30063  C8           MX
L_C30064:
    TYA                     ; $C30064  98           MX
    ADC $2A                 ; $C30065  65 2A        MX
    STA $2A                 ; $C30067  85 2A        MX
    SEP #$20                ; $C30069  E2 20        MX
    PLA                     ; $C3006B  68           mX
    JMP L_C30137            ; $C3006C  4C 37 01     mX
L_C3006F:
    LDA [$26],Y             ; $C3006F  B7 26        mX
    INY                     ; $C30071  C8           mX
    ROL                     ; $C30072  2A           mX
    JMP L_C300A0            ; $C30073  4C A0 00     mX
L_C30076:
    LDA [$26],Y             ; $C30076  B7 26        mX
    INY                     ; $C30078  C8           mX
    ROL                     ; $C30079  2A           mX
    BRA L_C300A5            ; $C3007A  80 29        mX
L_C3007C:
    LDA [$26],Y             ; $C3007C  B7 26        mX
    INY                     ; $C3007E  C8           mX
    ROL                     ; $C3007F  2A           mX
    BRA L_C300AA            ; $C30080  80 28        mX
L_C30082:
    LDA [$26],Y             ; $C30082  B7 26        mX
    INY                     ; $C30084  C8           mX
    ROL                     ; $C30085  2A           mX
    BRA L_C300BE            ; $C30086  80 36        mX
L_C30088:
    LDA [$26],Y             ; $C30088  B7 26        mX
    INY                     ; $C3008A  C8           mX
    ROL                     ; $C3008B  2A           mX
    BRA L_C300C3            ; $C3008C  80 35        mX
L_C3008E:
    LDA [$26],Y             ; $C3008E  B7 26        mX
    INY                     ; $C30090  C8           mX
    ROL                     ; $C30091  2A           mX
    BRA L_C300C8            ; $C30092  80 34        mX
L_C30094:
    LDA [$26],Y             ; $C30094  B7 26        mX
    INY                     ; $C30096  C8           mX
    ROL                     ; $C30097  2A           mX
    BRA L_C300D6            ; $C30098  80 3C        mX
L_C3009A:
    ASL                     ; $C3009A  0A           mX
    BNE L_C300A0            ; $C3009B  D0 03        mX
    JMP L_C3006F            ; $C3009D  4C 6F 00     mX
L_C300A0:
    ROL $2F                 ; $C300A0  26 2F        mX
    ASL                     ; $C300A2  0A           mX
    BEQ L_C30076            ; $C300A3  F0 D1        mX
L_C300A5:
    BCC L_C300BB            ; $C300A5  90 14        mX
    ASL                     ; $C300A7  0A           mX
    BEQ L_C3007C            ; $C300A8  F0 D2        mX
L_C300AA:
    DEC $2F                 ; $C300AA  C6 2F        mX
    ROL $2F                 ; $C300AC  26 2F        mX
    LDX $2F                 ; $C300AE  A6 2F        mX
    CPX #$0009              ; $C300B0  E0 09 00     mX
    BNE L_C300B8            ; $C300B3  D0 03        mX
    JMP L_C3002D            ; $C300B5  4C 2D 00     mX
L_C300B8:
    LDX #$0000              ; $C300B8  A2 00 00     mX
L_C300BB:
    ASL                     ; $C300BB  0A           mX
    BEQ L_C30082            ; $C300BC  F0 C4        mX
L_C300BE:
    BCC L_C300D8            ; $C300BE  90 18        mX
    ASL                     ; $C300C0  0A           mX
    BEQ L_C30088            ; $C300C1  F0 C5        mX
L_C300C3:
    ROL $2D                 ; $C300C3  26 2D        mX
    ASL                     ; $C300C5  0A           mX
    BEQ L_C3008E            ; $C300C6  F0 C6        mX
L_C300C8:
    BCC L_C300CD            ; $C300C8  90 03        mX
    JMP L_C30185            ; $C300CA  4C 85 01     mX
L_C300CD:
    CPX $2D                 ; $C300CD  E4 2D        mX
    BNE L_C300D8            ; $C300CF  D0 07        mX
    INC $2D                 ; $C300D1  E6 2D        mX
L_C300D3:
    ASL                     ; $C300D3  0A           mX
    BEQ L_C30094            ; $C300D4  F0 BE        mX
L_C300D6:
    ROL $2D                 ; $C300D6  26 2D        mX
L_C300D8:
    PHA                     ; $C300D8  48           mX
    LDA [$26],Y             ; $C300D9  B7 26        mX
    INY                     ; $C300DB  C8           mX
    STA $2C                 ; $C300DC  85 2C        mX
    PHY                     ; $C300DE  5A           mX
    REP #$21                ; $C300DF  C2 21        mX
    LDA $2C                 ; $C300E1  A5 2C        MX
    PHA                     ; $C300E3  48           MX
    LDA $2A                 ; $C300E4  A5 2A        MX
    SBC $2C                 ; $C300E6  E5 2C        MX
    STA $2C                 ; $C300E8  85 2C        MX
    LDY #$0000              ; $C300EA  A0 00 00     MX
    LSR $2F                 ; $C300ED  46 2F        MX
    LDX $2F                 ; $C300EF  A6 2F        MX
    PLA                     ; $C300F1  68           MX
    BNE L_C30106            ; $C300F2  D0 12        MX
    SEP #$20                ; $C300F4  E2 20        MX
    LDA ($2C),Y             ; $C300F6  B1 2C        mX
    XBA                     ; $C300F8  EB           mX
    LDA ($2C),Y             ; $C300F9  B1 2C        mX
    REP #$20                ; $C300FB  C2 20        mX
L_C300FD:
    STA ($2A),Y             ; $C300FD  91 2A        MX
    INY                     ; $C300FF  C8           MX
    INY                     ; $C30100  C8           MX
    DEX                     ; $C30101  CA           MX
    BNE L_C300FD            ; $C30102  D0 F9        MX
    BRA L_C3010F            ; $C30104  80 09        MX
L_C30106:
    LDA ($2C),Y             ; $C30106  B1 2C        MX
    STA ($2A),Y             ; $C30108  91 2A        MX
    INY                     ; $C3010A  C8           MX
    INY                     ; $C3010B  C8           MX
    DEX                     ; $C3010C  CA           MX
    BNE L_C30106            ; $C3010D  D0 F7        MX
L_C3010F:
    SEP #$20                ; $C3010F  E2 20        MX
    BCC L_C30117            ; $C30111  90 04        mX
    LDA ($2C),Y             ; $C30113  B1 2C        mX
    STA ($2A),Y             ; $C30115  91 2A        mX
L_C30117:
    TYA                     ; $C30117  98           mX
    ADC $2A                 ; $C30118  65 2A        mX
    STA $2A                 ; $C3011A  85 2A        mX
    BCC L_C30120            ; $C3011C  90 02        mX
    INC $2B                 ; $C3011E  E6 2B        mX
L_C30120:
    PLY                     ; $C30120  7A           mX
    PLA                     ; $C30121  68           mX
    BRA L_C30137            ; $C30122  80 13        mX
L_C30124:
    LDA [$26],Y             ; $C30124  B7 26        mX
    INY                     ; $C30126  C8           mX
    ROL                     ; $C30127  2A           mX
    BCS L_C3014C            ; $C30128  B0 22        mX
L_C3012A:
    XBA                     ; $C3012A  EB           mX
    LDA [$26],Y             ; $C3012B  B7 26        mX
    INY                     ; $C3012D  C8           mX
    STA ($2A)               ; $C3012E  92 2A        mX
    INC $2A                 ; $C30130  E6 2A        mX
    BNE L_C30136            ; $C30132  D0 02        mX
    INC $2B                 ; $C30134  E6 2B        mX
L_C30136:
    XBA                     ; $C30136  EB           mX
L_C30137:
    ASL                     ; $C30137  0A           mX
    BCS L_C3014A            ; $C30138  B0 10        mX
    XBA                     ; $C3013A  EB           mX
    LDA [$26],Y             ; $C3013B  B7 26        mX
    INY                     ; $C3013D  C8           mX
    STA ($2A)               ; $C3013E  92 2A        mX
    INC $2A                 ; $C30140  E6 2A        mX
    BNE L_C30146            ; $C30142  D0 02        mX
    INC $2B                 ; $C30144  E6 2B        mX
L_C30146:
    XBA                     ; $C30146  EB           mX
    ASL                     ; $C30147  0A           mX
    BCC L_C3012A            ; $C30148  90 E0        mX
L_C3014A:
    BEQ L_C30124            ; $C3014A  F0 D8        mX
L_C3014C:
    STZ $2D                 ; $C3014C  64 2D        mX
    STZ $2F                 ; $C3014E  64 2F        mX
    INC $2F                 ; $C30150  E6 2F        mX
    INC $2F                 ; $C30152  E6 2F        mX
    ASL                     ; $C30154  0A           mX
    BEQ L_C3019C            ; $C30155  F0 45        mX
L_C30157:
    BCS L_C3015C            ; $C30157  B0 03        mX
    JMP L_C3009A            ; $C30159  4C 9A 00     mX
L_C3015C:
    ASL                     ; $C3015C  0A           mX
    BEQ L_C301A2            ; $C3015D  F0 43        mX
L_C3015F:
    BCS L_C30164            ; $C3015F  B0 03        mX
    JMP L_C300D8            ; $C30161  4C D8 00     mX
L_C30164:
    INC $2F                 ; $C30164  E6 2F        mX
    ASL                     ; $C30166  0A           mX
    BEQ L_C301A9            ; $C30167  F0 40        mX
L_C30169:
    BCS L_C3016E            ; $C30169  B0 03        mX
    JMP L_C300BB            ; $C3016B  4C BB 00     mX
L_C3016E:
    XBA                     ; $C3016E  EB           mX
    LDA [$26],Y             ; $C3016F  B7 26        mX
    INY                     ; $C30171  C8           mX
    STA $2F                 ; $C30172  85 2F        mX
    XBA                     ; $C30174  EB           mX
    CPX $2F                 ; $C30175  E4 2F        mX
    BEQ L_C301BC            ; $C30177  F0 43        mX
    XBA                     ; $C30179  EB           mX
    LDA $2F                 ; $C3017A  A5 2F        mX
    CLC                     ; $C3017C  18           mX
    ADC #$08                ; $C3017D  69 08        mX
    STA $2F                 ; $C3017F  85 2F        mX
    XBA                     ; $C30181  EB           mX
    JMP L_C300BB            ; $C30182  4C BB 00     mX
L_C30185:
    ASL                     ; $C30185  0A           mX
    BEQ L_C301B0            ; $C30186  F0 28        mX
L_C30188:
    XBA                     ; $C30188  EB           mX
    LDA $2D                 ; $C30189  A5 2D        mX
    ROL                     ; $C3018B  2A           mX
    ORA #$04                ; $C3018C  09 04        mX
    STA $2D                 ; $C3018E  85 2D        mX
    XBA                     ; $C30190  EB           mX
    ASL                     ; $C30191  0A           mX
    BEQ L_C301B6            ; $C30192  F0 22        mX
L_C30194:
    BCC L_C30199            ; $C30194  90 03        mX
    JMP L_C300D8            ; $C30196  4C D8 00     mX
L_C30199:
    JMP L_C300D3            ; $C30199  4C D3 00     mX
L_C3019C:
    LDA [$26],Y             ; $C3019C  B7 26        mX
    INY                     ; $C3019E  C8           mX
    ROL                     ; $C3019F  2A           mX
    BRA L_C30157            ; $C301A0  80 B5        mX
L_C301A2:
    LDA [$26],Y             ; $C301A2  B7 26        mX
    INY                     ; $C301A4  C8           mX
    ROL                     ; $C301A5  2A           mX
    JMP L_C3015F            ; $C301A6  4C 5F 01     mX
L_C301A9:
    LDA [$26],Y             ; $C301A9  B7 26        mX
    INY                     ; $C301AB  C8           mX
    ROL                     ; $C301AC  2A           mX
    JMP L_C30169            ; $C301AD  4C 69 01     mX
L_C301B0:
    LDA [$26],Y             ; $C301B0  B7 26        mX
    INY                     ; $C301B2  C8           mX
    ROL                     ; $C301B3  2A           mX
    BRA L_C30188            ; $C301B4  80 D2        mX
L_C301B6:
    LDA [$26],Y             ; $C301B6  B7 26        mX
    INY                     ; $C301B8  C8           mX
    ROL                     ; $C301B9  2A           mX
    BRA L_C30194            ; $C301BA  80 D8        mX
L_C301BC:
    ASL                     ; $C301BC  0A           mX
    BNE L_C301C3            ; $C301BD  D0 04        mX
    LDA [$26],Y             ; $C301BF  B7 26        mX
    INY                     ; $C301C1  C8           mX
    ROL                     ; $C301C2  2A           mX
L_C301C3:
    BCC L_C301C8            ; $C301C3  90 03        mX
    JMP L_C30137            ; $C301C5  4C 37 01     mX
L_C301C8:
    PLB                     ; $C301C8  AB           mX
    REP #$30                ; $C301C9  C2 30        mX
    RTL                     ; $C301CB  6B           MX
L_C301CC:
    PHX                     ; $C301CC  DA           MX
    STZ $079D               ; $C301CD  9C 9D 07     MX
    LDA #$0087              ; $C301D0  A9 87 00     MX
    LDX #$079D              ; $C301D3  A2 9D 07     MX
    LDY #$079F              ; $C301D6  A0 9F 07     MX
    PHB                     ; $C301D9  8B           MX
    MVN $7E,$7E             ; $C301DA  54 7E 7E     MX
    PLB                     ; $C301DD  AB           MX
    PLX                     ; $C301DE  FA           MX
L_C301DF:
    LDA $C116C6,X           ; $C301DF  BF C6 16 C1  MX
    BMI L_C3022B            ; $C301E3  30 46        MX
    PHX                     ; $C301E5  DA           MX
    ASL                     ; $C301E6  0A           MX
    STA $42                 ; $C301E7  85 42        MX
    ASL                     ; $C301E9  0A           MX
    ASL                     ; $C301EA  0A           MX
    ASL                     ; $C301EB  0A           MX
    ASL                     ; $C301EC  0A           MX
    SEC                     ; $C301ED  38           MX
    SBC $42                 ; $C301EE  E5 42        MX
    TAX                     ; $C301F0  AA           MX
    LDA $C15AE2,X           ; $C301F1  BF E2 5A C1  MX
    TAY                     ; $C301F5  A8           MX
    LDA $C15ADE,X           ; $C301F6  BF DE 5A C1  MX
    BEQ L_C30223            ; $C301FA  F0 27        MX
    PHX                     ; $C301FC  DA           MX
    TAX                     ; $C301FD  AA           MX
    JSL L_C30381            ; $C301FE  22 81 03 C3  MX
    PLX                     ; $C30202  FA           MX
    LDA $C15AF0,X           ; $C30203  BF F0 5A C1  MX
    BEQ L_C30223            ; $C30207  F0 1A        MX
    TAX                     ; $C30209  AA           MX
L_C3020A:
    LDA $C15AD6,X           ; $C3020A  BF D6 5A C1  MX
    BMI L_C30223            ; $C3020E  30 13        MX
    TAY                     ; $C30210  A8           MX
    PHX                     ; $C30211  DA           MX
    LDA $C15AD8,X           ; $C30212  BF D8 5A C1  MX
    TAX                     ; $C30216  AA           MX
    JSL L_C30381            ; $C30217  22 81 03 C3  MX
    PLA                     ; $C3021B  68           MX
    CLC                     ; $C3021C  18           MX
    ADC #$0006              ; $C3021D  69 06 00     MX
    TAX                     ; $C30220  AA           MX
    BRA L_C3020A            ; $C30221  80 E7        MX
L_C30223:
    PLA                     ; $C30223  68           MX
    CLC                     ; $C30224  18           MX
    ADC #$0014              ; $C30225  69 14 00     MX
    TAX                     ; $C30228  AA           MX
    BRA L_C301DF            ; $C30229  80 B4        MX
L_C3022B:
    LDX $07D9               ; $C3022B  AE D9 07     MX
    BEQ L_C30247            ; $C3022E  F0 17        MX
    LDA $7FBE22,X           ; $C30230  BF 22 BE 7F  MX
    AND #$0E00              ; $C30234  29 00 0E     MX
    PHA                     ; $C30237  48           MX
    LDA #$0080              ; $C30238  A9 80 00     MX
    CLC                     ; $C3023B  18           MX
    ADC $0781               ; $C3023C  6D 81 07     MX
    TAX                     ; $C3023F  AA           MX
    LDY #$0004              ; $C30240  A0 04 00     MX
    PLA                     ; $C30243  68           MX
    JSR L_C30291            ; $C30244  20 91 02     MX
L_C30247:
    LDX $0801               ; $C30247  AE 01 08     MX
    BEQ L_C30263            ; $C3024A  F0 17        MX
    LDA $7FBE22,X           ; $C3024C  BF 22 BE 7F  MX
    AND #$0E00              ; $C30250  29 00 0E     MX
    PHA                     ; $C30253  48           MX
    LDA #$0090              ; $C30254  A9 90 00     MX
    CLC                     ; $C30257  18           MX
    ADC $0781               ; $C30258  6D 81 07     MX
    TAX                     ; $C3025B  AA           MX
    LDY #$0004              ; $C3025C  A0 04 00     MX
    PLA                     ; $C3025F  68           MX
    JSR L_C30291            ; $C30260  20 91 02     MX
L_C30263:
    LDX $07BD               ; $C30263  AE BD 07     MX
    BEQ L_C3027F            ; $C30266  F0 17        MX
    LDA $7FBE22,X           ; $C30268  BF 22 BE 7F  MX
    AND #$0E00              ; $C3026C  29 00 0E     MX
    PHA                     ; $C3026F  48           MX
    LDA #$0180              ; $C30270  A9 80 01     MX
    CLC                     ; $C30273  18           MX
    ADC $0781               ; $C30274  6D 81 07     MX
    TAX                     ; $C30277  AA           MX
    LDY #$0004              ; $C30278  A0 04 00     MX
    PLA                     ; $C3027B  68           MX
    JSR L_C30291            ; $C3027C  20 91 02     MX
L_C3027F:
    LDX $0821               ; $C3027F  AE 21 08     MX
    BEQ L_C30290            ; $C30282  F0 0C        MX
    LDA #$2800              ; $C30284  A9 00 28     MX
    AND #$0E00              ; $C30287  29 00 0E     MX
    LDY #$000A              ; $C3028A  A0 0A 00     MX
    JSR L_C30291            ; $C3028D  20 91 02     MX
L_C30290:
    RTL                     ; $C30290  6B           MX
L_C30291:
    PHA                     ; $C30291  48           MX
L_C30292:
    LDA $7FBE22,X           ; $C30292  BF 22 BE 7F  MX
    AND #$F1FF              ; $C30296  29 FF F1     MX
    ORA $01,S               ; $C30299  03 01        MX
    STA $7FBE22,X           ; $C3029B  9F 22 BE 7F  MX
    INX                     ; $C3029F  E8           MX
    INX                     ; $C302A0  E8           MX
    INX                     ; $C302A1  E8           MX
    INX                     ; $C302A2  E8           MX
    DEY                     ; $C302A3  88           MX
    BNE L_C30292            ; $C302A4  D0 EC        MX
    PLA                     ; $C302A6  68           MX
    RTS                     ; $C302A7  60           MX
L_C302A8:
    PHB                     ; $C302A8  8B           MX
    PEA $0000               ; $C302A9  F4 00 00     MX
    PLB                     ; $C302AC  AB           MX
    SEP #$20                ; $C302AD  E2 20        MX
    STA $4304               ; $C302AF  8D 04 43     mX
    STX $4302               ; $C302B2  8E 02 43     mX
    STY $4305               ; $C302B5  8C 05 43     mX
    LDX #$2200              ; $C302B8  A2 00 22     mX
    STX $4300               ; $C302BB  8E 00 43     mX
    XBA                     ; $C302BE  EB           mX
    STA $2121               ; $C302BF  8D 21 21     mX
    LDA #$01                ; $C302C2  A9 01        mX
    STA $420B               ; $C302C4  8D 0B 42     mX
    REP #$20                ; $C302C7  C2 20        mX
    PLB                     ; $C302C9  AB           MX
    PLB                     ; $C302CA  AB           MX
    RTL                     ; $C302CB  6B           MX
L_C302CC:
    STZ $06F5               ; $C302CC  9C F5 06     MX
    STZ $06F3               ; $C302CF  9C F3 06     MX
    STZ $94                 ; $C302D2  64 94        MX
    STZ $96                 ; $C302D4  64 96        MX
    STZ $0769               ; $C302D6  9C 69 07     MX
    JSL L_C308C5            ; $C302D9  22 C5 08 C3  MX
    RTL                     ; $C302DD  6B           MX
L_C302DE:
    STZ $FCB0               ; $C302DE  9C B0 FC     MX
    LDX #$0030              ; $C302E1  A2 30 00     MX
    LDY #$077D              ; $C302E4  A0 7D 07     MX
    JSR L_C30372            ; $C302E7  20 72 03     MX
    LDX #$0038              ; $C302EA  A2 38 00     MX
    LDY #$0781              ; $C302ED  A0 81 07     MX
    JSR L_C30372            ; $C302F0  20 72 03     MX
    LDX #$0040              ; $C302F3  A2 40 00     MX
    LDY #$0789              ; $C302F6  A0 89 07     MX
    JSR L_C30372            ; $C302F9  20 72 03     MX
    LDX #$0050              ; $C302FC  A2 50 00     MX
    LDY #$0785              ; $C302FF  A0 85 07     MX
    JSR L_C30372            ; $C30302  20 72 03     MX
    STZ $0791               ; $C30305  9C 91 07     MX
    LDA #$0007              ; $C30308  A9 07 00     MX
    STA $0793               ; $C3030B  8D 93 07     MX
    STZ $078D               ; $C3030E  9C 8D 07     MX
    LDA #$0002              ; $C30311  A9 02 00     MX
    STA $078F               ; $C30314  8D 8F 07     MX
    PEA $C806               ; $C30317  F4 06 C8     MX
    PEA $00C1               ; $C3031A  F4 C1 00     MX
    PEA $0000               ; $C3031D  F4 00 00     MX
    PEA $007F               ; $C30320  F4 7F 00     MX
    JSL L_C30000            ; $C30323  22 00 00 C3  MX
    PLA                     ; $C30327  68           MX
    PLA                     ; $C30328  68           MX
    PLA                     ; $C30329  68           MX
    PLA                     ; $C3032A  68           MX
    LDA $7F0020             ; $C3032B  AF 20 00 7F  MX
    ASL                     ; $C3032F  0A           MX
    DEC                     ; $C30330  3A           MX
    LDX #$0022              ; $C30331  A2 22 00     MX
    LDY #$C6C0              ; $C30334  A0 C0 C6     MX
    PHB                     ; $C30337  8B           MX
    MVN $7F,$7F             ; $C30338  54 7F 7F     MX
    PLB                     ; $C3033B  AB           MX
    LDA #$4800              ; $C3033C  A9 00 48     MX
    STA $002116             ; $C3033F  8F 16 21 00  MX
    LDA $7F0020             ; $C30343  AF 20 00 7F  MX
    ASL                     ; $C30347  0A           MX
    ASL                     ; $C30348  0A           MX
    ASL                     ; $C30349  0A           MX
    ASL                     ; $C3034A  0A           MX
    ASL                     ; $C3034B  0A           MX
    LDY #$007F              ; $C3034C  A0 7F 00     MX
    JSL L_C308A0            ; $C3034F  22 A0 08 C3  MX
    LDX #$0000              ; $C30353  A2 00 00     MX
    LDA $7F0020             ; $C30356  AF 20 00 7F  MX
    TAY                     ; $C3035A  A8           MX
L_C3035B:
    LDA $7FC6C0,X           ; $C3035B  BF C0 C6 7F  MX
    ORA #$2E80              ; $C3035F  09 80 2E     MX
    STA $7FC6C0,X           ; $C30362  9F C0 C6 7F  MX
    INX                     ; $C30366  E8           MX
    INX                     ; $C30367  E8           MX
    DEY                     ; $C30368  88           MX
    BNE L_C3035B            ; $C30369  D0 F0        MX
    LDA $FCB0               ; $C3036B  AD B0 FC     MX
    STA $FCB2               ; $C3036E  8D B2 FC     MX
    RTL                     ; $C30371  6B           MX
L_C30372:
    LDA $FCB0               ; $C30372  AD B0 FC     MX
    STA $0000,Y             ; $C30375  99 00 00     MX
    PHY                     ; $C30378  5A           MX
    JSR L_C30441            ; $C30379  20 41 04     MX
    PLY                     ; $C3037C  7A           MX
    STA $0002,Y             ; $C3037D  99 02 00     MX
    RTS                     ; $C30380  60           MX
L_C30381:
    PHX                     ; $C30381  DA           MX
    CPX #$0088              ; $C30382  E0 88 00     MX
    BNE L_C30392            ; $C30385  D0 0B        MX
    LDA $08C7               ; $C30387  AD C7 08     MX
    CMP #$0004              ; $C3038A  C9 04 00     MX
    BCC L_C30392            ; $C3038D  90 03        MX
    LDX #$00D8              ; $C3038F  A2 D8 00     MX
L_C30392:
    LDA $0000,Y             ; $C30392  B9 00 00     MX
    BEQ L_C3039C            ; $C30395  F0 05        MX
    LDA $0002,Y             ; $C30397  B9 02 00     MX
    BRA L_C303AA            ; $C3039A  80 0E        MX
L_C3039C:
    LDA $FCB0               ; $C3039C  AD B0 FC     MX
    STA $0000,Y             ; $C3039F  99 00 00     MX
    PHY                     ; $C303A2  5A           MX
    JSR L_C30441            ; $C303A3  20 41 04     MX
    PLY                     ; $C303A6  7A           MX
    STA $0002,Y             ; $C303A7  99 02 00     MX
L_C303AA:
    PLX                     ; $C303AA  FA           MX
    RTL                     ; $C303AB  6B           MX
L_C303AC:
    LDA $08C7               ; $C303AC  AD C7 08     MX
    LSR                     ; $C303AF  4A           MX
    LSR                     ; $C303B0  4A           MX
    ASL                     ; $C303B1  0A           MX
    ASL                     ; $C303B2  0A           MX
    ASL                     ; $C303B3  0A           MX
    ASL                     ; $C303B4  0A           MX
    STA $42                 ; $C303B5  85 42        MX
    ASL                     ; $C303B7  0A           MX
    ASL                     ; $C303B8  0A           MX
    CLC                     ; $C303B9  18           MX
    ADC $42                 ; $C303BA  65 42        MX
    CLC                     ; $C303BC  18           MX
    ADC #$1049              ; $C303BD  69 49 10     MX
    STA $26                 ; $C303C0  85 26        MX
    LDA #$00C6              ; $C303C2  A9 C6 00     MX
    STA $28                 ; $C303C5  85 28        MX
    LDX $FCB2               ; $C303C7  AE B2 FC     MX
    LDY #$0000              ; $C303CA  A0 00 00     MX
L_C303CD:
    LDA [$26],Y             ; $C303CD  B7 26        MX
    AND #$00FF              ; $C303CF  29 FF 00     MX
    XBA                     ; $C303D2  EB           MX
    LSR                     ; $C303D3  4A           MX
    CLC                     ; $C303D4  18           MX
    ADC #$1189              ; $C303D5  69 89 11     MX
    STA $7FBE20,X           ; $C303D8  9F 20 BE 7F  MX
    JSL L_C03F8D            ; $C303DC  22 8D 3F C0  MX
    LDA $46                 ; $C303E0  A5 46        MX
    ORA #$2E00              ; $C303E2  09 00 2E     MX
    STA $7FBE20,X           ; $C303E5  9F 20 BE 7F  MX
    INX                     ; $C303E9  E8           MX
    INX                     ; $C303EA  E8           MX
    INX                     ; $C303EB  E8           MX
    INX                     ; $C303EC  E8           MX
    INY                     ; $C303ED  C8           MX
    INY                     ; $C303EE  C8           MX
    CPY #$0050              ; $C303EF  C0 50 00     MX
    BCC L_C303CD            ; $C303F2  90 D9        MX
    STX $FCB0               ; $C303F4  8E B0 FC     MX
    RTL                     ; $C303F7  6B           MX
L_C303F8:
    LDA $FCB0               ; $C303F8  AD B0 FC     MX
    STA $0795               ; $C303FB  8D 95 07     MX
    STA $4109               ; $C303FE  8D 09 41     MX
    LDA $08B1               ; $C30401  AD B1 08     MX
    DEC                     ; $C30404  3A           MX
    ASL                     ; $C30405  0A           MX
    STA $42                 ; $C30406  85 42        MX
    ASL                     ; $C30408  0A           MX
    ASL                     ; $C30409  0A           MX
    CLC                     ; $C3040A  18           MX
    ADC $42                 ; $C3040B  65 42        MX
    TAX                     ; $C3040D  AA           MX
    LDA $C15FF8,X           ; $C3040E  BF F8 5F C1  MX
    TAX                     ; $C30412  AA           MX
    JSR L_C30441            ; $C30413  20 41 04     MX
    STA $0797               ; $C30416  8D 97 07     MX
    STA $4107               ; $C30419  8D 07 41     MX
    LDA $FCB0               ; $C3041C  AD B0 FC     MX
    STA $0799               ; $C3041F  8D 99 07     MX
    STA $417E               ; $C30422  8D 7E 41     MX
    LDA $08B3               ; $C30425  AD B3 08     MX
    DEC                     ; $C30428  3A           MX
    ASL                     ; $C30429  0A           MX
    STA $42                 ; $C3042A  85 42        MX
    ASL                     ; $C3042C  0A           MX
    ASL                     ; $C3042D  0A           MX
    CLC                     ; $C3042E  18           MX
    ADC $42                 ; $C3042F  65 42        MX
    TAX                     ; $C30431  AA           MX
    LDA $C15FF8,X           ; $C30432  BF F8 5F C1  MX
    TAX                     ; $C30436  AA           MX
    JSR L_C30441            ; $C30437  20 41 04     MX
    STA $079B               ; $C3043A  8D 9B 07     MX
    STA $417C               ; $C3043D  8D 7C 41     MX
    RTL                     ; $C30440  6B           MX
L_C30441:
    LDA $C10000,X           ; $C30441  BF 00 00 C1  MX
    PHA                     ; $C30445  48           MX
    PHX                     ; $C30446  DA           MX
    PHY                     ; $C30447  5A           MX
    PHX                     ; $C30448  DA           MX
    ASL                     ; $C30449  0A           MX
    TAX                     ; $C3044A  AA           MX
    LDA $C1580A,X           ; $C3044B  BF 0A 58 C1  MX
    LSR                     ; $C3044F  4A           MX
    LSR                     ; $C30450  4A           MX
    SEP #$20                ; $C30451  E2 20        MX
    STA $004202             ; $C30453  8F 02 42 00  mX
    REP #$20                ; $C30457  C2 20        mX
    PLX                     ; $C30459  FA           MX
    LDA $C10004,X           ; $C3045A  BF 04 00 C1  MX
    STA $26                 ; $C3045E  85 26        MX
    LDA $C10006,X           ; $C30460  BF 06 00 C1  MX
    STA $28                 ; $C30464  85 28        MX
    LDA $C10002,X           ; $C30466  BF 02 00 C1  MX
    BMI L_C304C0            ; $C3046A  30 54        MX
    STA $48                 ; $C3046C  85 48        MX
    LDX $0562               ; $C3046E  AE 62 05     MX
L_C30471:
    LDA $06BE,X             ; $C30471  BD BE 06     MX
    BEQ L_C30480            ; $C30474  F0 0A        MX
    CMP $48                 ; $C30476  C5 48        MX
    BEQ L_C304B9            ; $C30478  F0 3F        MX
    DEX                     ; $C3047A  CA           MX
    DEX                     ; $C3047B  CA           MX
    BPL L_C30471            ; $C3047C  10 F3        MX
    BRA L_C304C0            ; $C3047E  80 40        MX
L_C30480:
    LDA $48                 ; $C30480  A5 48        MX
    STA $06BE,X             ; $C30482  9D BE 06     MX
    LDA $C16066,X           ; $C30485  BF 66 60 C1  MX
    TSB $0560               ; $C30489  0C 60 05     MX
    TXY                     ; $C3048C  9B           MX
    LDA $08C7               ; $C3048D  AD C7 08     MX
    LSR                     ; $C30490  4A           MX
    LSR                     ; $C30491  4A           MX
    XBA                     ; $C30492  EB           MX
    STA $42                 ; $C30493  85 42        MX
    ASL                     ; $C30495  0A           MX
    CLC                     ; $C30496  18           MX
    ADC $42                 ; $C30497  65 42        MX
    PHA                     ; $C30499  48           MX
    LDA $48                 ; $C3049A  A5 48        MX
    DEC                     ; $C3049C  3A           MX
    ASL                     ; $C3049D  0A           MX
    ASL                     ; $C3049E  0A           MX
    ASL                     ; $C3049F  0A           MX
    ASL                     ; $C304A0  0A           MX
    STA $42                 ; $C304A1  85 42        MX
    ASL                     ; $C304A3  0A           MX
    CLC                     ; $C304A4  18           MX
    ADC $42                 ; $C304A5  65 42        MX
    CLC                     ; $C304A7  18           MX
    ADC $01,S               ; $C304A8  63 01        MX
    TAX                     ; $C304AA  AA           MX
    PLA                     ; $C304AB  68           MX
    TYA                     ; $C304AC  98           MX
    CLC                     ; $C304AD  18           MX
    ADC #$0010              ; $C304AE  69 10 00     MX
    ASL                     ; $C304B1  0A           MX
    ASL                     ; $C304B2  0A           MX
    ASL                     ; $C304B3  0A           MX
    JSL L_C30859            ; $C304B4  22 59 08 C3  MX
    TYX                     ; $C304B8  BB           MX
L_C304B9:
    TXA                     ; $C304B9  8A           MX
    ORA #$0020              ; $C304BA  09 20 00     MX
    XBA                     ; $C304BD  EB           MX
    STA $48                 ; $C304BE  85 48        MX
L_C304C0:
    LDY #$0020              ; $C304C0  A0 20 00     MX
    LDA [$26],Y             ; $C304C3  B7 26        MX
    STA $46                 ; $C304C5  85 46        MX
    ASL                     ; $C304C7  0A           MX
    CLC                     ; $C304C8  18           MX
    ADC #$0022              ; $C304C9  69 22 00     MX
    CLC                     ; $C304CC  18           MX
    ADC $26                 ; $C304CD  65 26        MX
    STA $2A                 ; $C304CF  85 2A        MX
    LDA $FCB0               ; $C304D1  AD B0 FC     MX
    TAX                     ; $C304D4  AA           MX
    INY                     ; $C304D5  C8           MX
    INY                     ; $C304D6  C8           MX
L_C304D7:
    SEP #$20                ; $C304D7  E2 20        MX
    LDA [$26],Y             ; $C304D9  B7 26        mX
    STA $004203             ; $C304DB  8F 03 42 00  mX
    INY                     ; $C304DF  C8           mX
    LDA [$26],Y             ; $C304E0  B7 26        mX
    ORA $49                 ; $C304E2  05 49        mX
    STA $7FBE23,X           ; $C304E4  9F 23 BE 7F  mX
    INY                     ; $C304E8  C8           mX
    LDA $28                 ; $C304E9  A5 28        mX
    STA $7FBE22,X           ; $C304EB  9F 22 BE 7F  mX
    REP #$20                ; $C304EF  C2 20        mX
    LDA $004216             ; $C304F1  AF 16 42 00  MX
    ASL                     ; $C304F5  0A           MX
    ASL                     ; $C304F6  0A           MX
    CLC                     ; $C304F7  18           MX
    ADC $2A                 ; $C304F8  65 2A        MX
    STA $7FBE20,X           ; $C304FA  9F 20 BE 7F  MX
    INX                     ; $C304FE  E8           MX
    INX                     ; $C304FF  E8           MX
    INX                     ; $C30500  E8           MX
    INX                     ; $C30501  E8           MX
    CPX #$0800              ; $C30502  E0 00 08     MX
    BCS L_C30512            ; $C30505  B0 0B        MX
    DEC $46                 ; $C30507  C6 46        MX
    BNE L_C304D7            ; $C30509  D0 CC        MX
    STX $FCB0               ; $C3050B  8E B0 FC     MX
    PLY                     ; $C3050E  7A           MX
    PLX                     ; $C3050F  FA           MX
    PLA                     ; $C30510  68           MX
    RTS                     ; $C30511  60           MX
L_C30512:
    PLY                     ; $C30512  7A           MX
    PLX                     ; $C30513  FA           MX
    PLA                     ; $C30514  68           MX
    RTS                     ; $C30515  60           MX
L_C30516:
    LDX #$0000              ; $C30516  A2 00 00     MX
    LDY $FCB0               ; $C30519  AC B0 FC     MX
    PHB                     ; $C3051C  8B           MX
    PEA $007F               ; $C3051D  F4 7F 00     MX
    PLB                     ; $C30520  AB           MX
L_C30521:
    LDA $CBC320,X           ; $C30521  BF 20 C3 CB  MX
    AND #$00FF              ; $C30525  29 FF 00     MX
    XBA                     ; $C30528  EB           MX
    ASL                     ; $C30529  0A           MX
    CLC                     ; $C3052A  18           MX
    ADC #$C328              ; $C3052B  69 28 C3     MX
    STA $BE20,Y             ; $C3052E  99 20 BE     MX
    LDA $CBC320,X           ; $C30531  BF 20 C3 CB  MX
    AND #$FE00              ; $C30535  29 00 FE     MX
    ORA #$28CB              ; $C30538  09 CB 28     MX
    STA $BE22,Y             ; $C3053B  99 22 BE     MX
    INX                     ; $C3053E  E8           MX
    INX                     ; $C3053F  E8           MX
    INY                     ; $C30540  C8           MX
    INY                     ; $C30541  C8           MX
    INY                     ; $C30542  C8           MX
    INY                     ; $C30543  C8           MX
    CPX #$0008              ; $C30544  E0 08 00     MX
    BCC L_C30521            ; $C30547  90 D8        MX
    PLB                     ; $C30549  AB           MX
    PLB                     ; $C3054A  AB           MX
    STY $FCB0               ; $C3054B  8C B0 FC     MX
    RTL                     ; $C3054E  6B           MX
L_C3054F:
    JSL L_C20100            ; $C3054F  22 00 01 C2  MX
    JSL L_C204AB            ; $C30553  22 AB 04 C2  MX
    LDA $0885               ; $C30557  AD 85 08     MX
    AND #$0003              ; $C3055A  29 03 00     MX
    ASL                     ; $C3055D  0A           MX
    TAX                     ; $C3055E  AA           MX
    LDA $D30000,X           ; $C3055F  BF 00 00 D3  MX
    TAX                     ; $C30563  AA           MX
    LDA $D30000,X           ; $C30564  BF 00 00 D3  MX
    STA $08B1               ; $C30568  8D B1 08     MX
    LDA $D30002,X           ; $C3056B  BF 02 00 D3  MX
    STA $08B3               ; $C3056F  8D B3 08     MX
    LDA $D30004,X           ; $C30572  BF 04 00 D3  MX
    STA $08C7               ; $C30576  8D C7 08     MX
    LDA $D30006,X           ; $C30579  BF 06 00 D3  MX
    STA $DA                 ; $C3057D  85 DA        MX
    LDA $D30008,X           ; $C3057F  BF 08 00 D3  MX
    STA $DC                 ; $C30583  85 DC        MX
    STZ $08C5               ; $C30585  9C C5 08     MX
    JSL L_C03BDC            ; $C30588  22 DC 3B C0  MX
    JSL L_C308D1            ; $C3058C  22 D1 08 C3  MX
    LDA #$0002              ; $C30590  A9 02 00     MX
    TRB $ED                 ; $C30593  14 ED        MX
    TRB $EF                 ; $C30595  14 EF        MX
    JSL L_C0C55F            ; $C30597  22 5F C5 C0  MX
    JSL L_C306E2            ; $C3059B  22 E2 06 C3  MX
    JSL L_C0392B            ; $C3059F  22 2B 39 C0  MX
    JSL L_C30BFC            ; $C305A3  22 FC 0B C3  MX
    LDX $08C7               ; $C305A7  AE C7 08     MX
    LDA $C11426,X           ; $C305AA  BF 26 14 C1  MX
    JSL L_C2010F            ; $C305AE  22 0F 01 C2  MX
    JSL L_C305BF            ; $C305B2  22 BF 05 C3  MX
    JSL L_C20100            ; $C305B6  22 00 01 C2  MX
    JSL L_C204AB            ; $C305BA  22 AB 04 C2  MX
    RTL                     ; $C305BE  6B           MX
L_C305BF:
    STZ $0829               ; $C305BF  9C 29 08     MX
    JSL L_C309DF            ; $C305C2  22 DF 09 C3  MX
    STZ $1B26               ; $C305C6  9C 26 1B     MX
    JSL L_C30996            ; $C305C9  22 96 09 C3  MX
    STZ $1900               ; $C305CD  9C 00 19     MX
    JSL L_C305F1            ; $C305D0  22 F1 05 C3  MX
    JSL L_C20489            ; $C305D4  22 89 04 C2  MX
L_C305D8:
    JSL L_C305F1            ; $C305D8  22 F1 05 C3  MX
    LDA $004218             ; $C305DC  AF 18 42 00  MX
    BIT #$D0C0              ; $C305E0  89 C0 D0     MX
    BEQ L_C305E9            ; $C305E3  F0 04        MX
    INC $D4                 ; $C305E5  E6 D4        MX
    BRA L_C305F0            ; $C305E7  80 07        MX
L_C305E9:
    LDA [$DA]               ; $C305E9  A7 DA        MX
    CMP #$FFFF              ; $C305EB  C9 FF FF     MX
    BNE L_C305D8            ; $C305EE  D0 E8        MX
L_C305F0:
    RTL                     ; $C305F0  6B           MX
L_C305F1:
    LDA [$DA]               ; $C305F1  A7 DA        MX
    CMP #$FFFF              ; $C305F3  C9 FF FF     MX
    BNE L_C305FB            ; $C305F6  D0 03        MX
    JMP L_C30685            ; $C305F8  4C 85 06     MX
L_C305FB:
    CMP #$0003              ; $C305FB  C9 03 00     MX
    BEQ L_C30616            ; $C305FE  F0 16        MX
    CMP #$0002              ; $C30600  C9 02 00     MX
    BEQ L_C30610            ; $C30603  F0 0B        MX
    CMP #$0000              ; $C30605  C9 00 00     MX
    BNE L_C3062E            ; $C30608  D0 24        MX
    JSL L_C30AFB            ; $C3060A  22 FB 0A C3  MX
    BRA L_C305F1            ; $C3060E  80 E1        MX
L_C30610:
    JSL L_C30A94            ; $C30610  22 94 0A C3  MX
    BRA L_C305F1            ; $C30614  80 DB        MX
L_C30616:
    LDY #$0002              ; $C30616  A0 02 00     MX
    LDA [$DA],Y             ; $C30619  B7 DA        MX
    AND #$00FF              ; $C3061B  29 FF 00     MX
    LDX #$FFFF              ; $C3061E  A2 FF FF     MX
    JSL L_C2024D            ; $C30621  22 4D 02 C2  MX
    LDY $DA                 ; $C30625  A4 DA        MX
    INY                     ; $C30627  C8           MX
    INY                     ; $C30628  C8           MX
    INY                     ; $C30629  C8           MX
    STY $DA                 ; $C3062A  84 DA        MX
    BRA L_C305F1            ; $C3062C  80 C3        MX
L_C3062E:
    BIT $08                 ; $C3062E  24 08        MX
    BMI L_C3062E            ; $C30630  30 FC        MX
    JSL L_C30996            ; $C30632  22 96 09 C3  MX
    LDA [$DA]               ; $C30636  A7 DA        MX
    CMP #$0001              ; $C30638  C9 01 00     MX
    BNE L_C30686            ; $C3063B  D0 49        MX
    LDY #$0002              ; $C3063D  A0 02 00     MX
    LDA [$DA],Y             ; $C30640  B7 DA        MX
    STA $0755               ; $C30642  8D 55 07     MX
    INY                     ; $C30645  C8           MX
    INY                     ; $C30646  C8           MX
    LDA [$DA],Y             ; $C30647  B7 DA        MX
    STA $0757               ; $C30649  8D 57 07     MX
    INY                     ; $C3064C  C8           MX
    INY                     ; $C3064D  C8           MX
    TYA                     ; $C3064E  98           MX
    CLC                     ; $C3064F  18           MX
    ADC $DA                 ; $C30650  65 DA        MX
    STA $DA                 ; $C30652  85 DA        MX
    JSL L_C0E818            ; $C30654  22 18 E8 C0  MX
    JSL L_C30B64            ; $C30658  22 64 0B C3  MX
    JSL L_C0E7A9            ; $C3065C  22 A9 E7 C0  MX
    LDA $1902               ; $C30660  AD 02 19     MX
    AND #$0008              ; $C30663  29 08 00     MX
    EOR #$0008              ; $C30666  49 08 00     MX
    XBA                     ; $C30669  EB           MX
    ASL                     ; $C3066A  0A           MX
    ADC #$4000              ; $C3066B  69 00 40     MX
    STA $1B24               ; $C3066E  8D 24 1B     MX
L_C30671:
    JSL L_C0BF44            ; $C30671  22 44 BF C0  MX
    LDA [$DA]               ; $C30675  A7 DA        MX
    CMP #$FFFF              ; $C30677  C9 FF FF     MX
    BEQ L_C30685            ; $C3067A  F0 09        MX
    CMP #$0004              ; $C3067C  C9 04 00     MX
    BCS L_C30671            ; $C3067F  B0 F0        MX
    JSL L_C0B14A            ; $C30681  22 4A B1 C0  MX
L_C30685:
    RTL                     ; $C30685  6B           MX
L_C30686:
    RTL                     ; $C30686  6B           MX
L_C30687:
    STZ $2000               ; $C30687  9C 00 20     MX
    LDA #$042B              ; $C3068A  A9 2B 04     MX
    LDX #$2000              ; $C3068D  A2 00 20     MX
    LDY #$2002              ; $C30690  A0 02 20     MX
    PHB                     ; $C30693  8B           MX
    MVN $7E,$7E             ; $C30694  54 7E 7E     MX
    PLB                     ; $C30697  AB           MX
    STZ $08AD               ; $C30698  9C AD 08     MX
    STZ $08AF               ; $C3069B  9C AF 08     MX
    STZ $88                 ; $C3069E  64 88        MX
    STZ $8A                 ; $C306A0  64 8A        MX
    STZ $8C                 ; $C306A2  64 8C        MX
    STZ $8E                 ; $C306A4  64 8E        MX
    STZ $088F               ; $C306A6  9C 8F 08     MX
    STZ $0891               ; $C306A9  9C 91 08     MX
    LDA #$FFFF              ; $C306AC  A9 FF FF     MX
    STA $0869               ; $C306AF  8D 69 08     MX
    STA $086B               ; $C306B2  8D 6B 08     MX
    STZ $0795               ; $C306B5  9C 95 07     MX
    STZ $0797               ; $C306B8  9C 97 07     MX
    STZ $0799               ; $C306BB  9C 99 07     MX
    STZ $079B               ; $C306BE  9C 9B 07     MX
    LDA $C12DFE             ; $C306C1  AF FE 2D C1  MX
    LDA #$000A              ; $C306C5  A9 0A 00     MX
    STA $90                 ; $C306C8  85 90        MX
    STA $92                 ; $C306CA  85 92        MX
    STZ $08F8               ; $C306CC  9C F8 08     MX
    LDX #$40A8              ; $C306CF  A2 A8 40     MX
    JSL L_C0D6ED            ; $C306D2  22 ED D6 C0  MX
    LDX #$411D              ; $C306D6  A2 1D 41     MX
    JSL L_C0D6ED            ; $C306D9  22 ED D6 C0  MX
    JSL L_C306E2            ; $C306DD  22 E2 06 C3  MX
    RTL                     ; $C306E1  6B           MX
L_C306E2:
    LDA #$0002              ; $C306E2  A9 02 00     MX
    STA $0709               ; $C306E5  8D 09 07     MX
    STZ $0715               ; $C306E8  9C 15 07     MX
    STZ $08A1               ; $C306EB  9C A1 08     MX
    STZ $08A3               ; $C306EE  9C A3 08     MX
    LDA #$8000              ; $C306F1  A9 00 80     MX
    TSB $8A                 ; $C306F4  04 8A        MX
    TSB $8E                 ; $C306F6  04 8E        MX
    TSB $90                 ; $C306F8  04 90        MX
    TSB $92                 ; $C306FA  04 92        MX
    LDA #$FFFF              ; $C306FC  A9 FF FF     MX
    STA $68                 ; $C306FF  85 68        MX
    STZ $089D               ; $C30701  9C 9D 08     MX
    STZ $08FC               ; $C30704  9C FC 08     MX
    STZ $08FE               ; $C30707  9C FE 08     MX
    STZ $082B               ; $C3070A  9C 2B 08     MX
    STZ $071B               ; $C3070D  9C 1B 07     MX
    STZ $08CF               ; $C30710  9C CF 08     MX
    LDA #$FFFF              ; $C30713  A9 FF FF     MX
    STA $0899               ; $C30716  8D 99 08     MX
    STA $0763               ; $C30719  8D 63 07     MX
    STA $0841               ; $C3071C  8D 41 08     MX
    STA $0916               ; $C3071F  8D 16 09     MX
    LDA #$000A              ; $C30722  A9 0A 00     MX
    STA $0910               ; $C30725  8D 10 09     MX
    STZ $0924               ; $C30728  9C 24 09     MX
    STZ $0918               ; $C3072B  9C 18 09     MX
    LDA #$0003              ; $C3072E  A9 03 00     MX
    STA $091A               ; $C30731  8D 1A 09     MX
    STA $091C               ; $C30734  8D 1C 09     MX
    LDA #$0014              ; $C30737  A9 14 00     MX
    STA $0900               ; $C3073A  8D 00 09     MX
    LDA #$0000              ; $C3073D  A9 00 00     MX
    STA $0877               ; $C30740  8D 77 08     MX
    STZ $0928               ; $C30743  9C 28 09     MX
    STZ $092A               ; $C30746  9C 2A 09     MX
    STZ $092C               ; $C30749  9C 2C 09     MX
    STZ $092E               ; $C3074C  9C 2E 09     MX
    STZ $0930               ; $C3074F  9C 30 09     MX
    STZ $0932               ; $C30752  9C 32 09     MX
    LDA #$FFFF              ; $C30755  A9 FF FF     MX
    STA $0902               ; $C30758  8D 02 09     MX
    STA $0904               ; $C3075B  8D 04 09     MX
    STA $085B               ; $C3075E  8D 5B 08     MX
    STA $0855               ; $C30761  8D 55 08     MX
    STA $0857               ; $C30764  8D 57 08     MX
    STA $0859               ; $C30767  8D 59 08     MX
    STA $0851               ; $C3076A  8D 51 08     MX
    STA $0853               ; $C3076D  8D 53 08     MX
    STA $08BF               ; $C30770  8D BF 08     MX
    STA $08C1               ; $C30773  8D C1 08     MX
    STZ $0984               ; $C30776  9C 84 09     MX
    LDA #$001D              ; $C30779  A9 1D 00     MX
    LDX #$0984              ; $C3077C  A2 84 09     MX
    LDY #$0986              ; $C3077F  A0 86 09     MX
    PHB                     ; $C30782  8B           MX
    MVN $7E,$7E             ; $C30783  54 7E 7E     MX
    PLB                     ; $C30786  AB           MX
    LDA $0769               ; $C30787  AD 69 07     MX
    PHA                     ; $C3078A  48           MX
    STZ $0769               ; $C3078B  9C 69 07     MX
    JSL L_C0392B            ; $C3078E  22 2B 39 C0  MX
    PLA                     ; $C30792  68           MX
    STA $0769               ; $C30793  8D 69 07     MX
    LDA $0755               ; $C30796  AD 55 07     MX
    AND #$FFF8              ; $C30799  29 F8 FF     MX
    STA $0755               ; $C3079C  8D 55 07     MX
    LDA $0757               ; $C3079F  AD 57 07     MX
    AND #$FFF8              ; $C307A2  29 F8 FF     MX
    STA $0757               ; $C307A5  8D 57 07     MX
    LDA #$FFFF              ; $C307A8  A9 FF FF     MX
    STA $0759               ; $C307AB  8D 59 07     MX
    JSL L_C30803            ; $C307AE  22 03 08 C3  MX
    JSL L_C0EB5E            ; $C307B2  22 5E EB C0  MX
    JSL L_C309F1            ; $C307B6  22 F1 09 C3  MX
    JSL L_C307C2            ; $C307BA  22 C2 07 C3  MX
    JSR L_C307ED            ; $C307BE  20 ED 07     MX
    RTL                     ; $C307C1  6B           MX
L_C307C2:
    LDA #$5206              ; $C307C2  A9 06 52     MX
    STA $071F               ; $C307C5  8D 1F 07     MX
    LDA #$0032              ; $C307C8  A9 32 00     MX
    STA $0721               ; $C307CB  8D 21 07     MX
    LDA #$4192              ; $C307CE  A9 92 41     MX
    STA $0723               ; $C307D1  8D 23 07     MX
    LDA #$0020              ; $C307D4  A9 20 00     MX
    STA $0725               ; $C307D7  8D 25 07     MX
    LDA #$3784              ; $C307DA  A9 84 37     MX
    STA $0727               ; $C307DD  8D 27 07     MX
    LDA #$0014              ; $C307E0  A9 14 00     MX
    STA $0729               ; $C307E3  8D 29 07     MX
    LDA #$0000              ; $C307E6  A9 00 00     MX
    STA $FCB6               ; $C307E9  8D B6 FC     MX
    RTL                     ; $C307EC  6B           MX
L_C307ED:
    LDX #$0000              ; $C307ED  A2 00 00     MX
L_C307F0:
    LDA $C1F76F,X           ; $C307F0  BF 6F F7 C1  MX
    EOR #$FFFF              ; $C307F4  49 FF FF     MX
    STA $7F9400,X           ; $C307F7  9F 00 94 7F  MX
    INX                     ; $C307FB  E8           MX
    INX                     ; $C307FC  E8           MX
    CPX #$0400              ; $C307FD  E0 00 04     MX
    BCC L_C307F0            ; $C30800  90 EE        MX
    RTS                     ; $C30802  60           MX
L_C30803:
    LDY #$2910              ; $C30803  A0 10 29     MX
    JSR L_C3081C            ; $C30806  20 1C 08     MX
    LDY #$2B80              ; $C30809  A0 80 2B     MX
    JSR L_C3081C            ; $C3080C  20 1C 08     MX
    LDY #$2DF0              ; $C3080F  A0 F0 2D     MX
    JSR L_C3081C            ; $C30812  20 1C 08     MX
    LDY #$3060              ; $C30815  A0 60 30     MX
    JSR L_C3081C            ; $C30818  20 1C 08     MX
    RTL                     ; $C3081B  6B           MX
L_C3081C:
    LDA #$E0E0              ; $C3081C  A9 E0 E0     MX
    LDX #$000C              ; $C3081F  A2 0C 00     MX
L_C30822:
    STA $0000,Y             ; $C30822  99 00 00     MX
    INY                     ; $C30825  C8           MX
    INY                     ; $C30826  C8           MX
    DEX                     ; $C30827  CA           MX
    BNE L_C30822            ; $C30828  D0 F8        MX
    STA $0000,Y             ; $C3082A  99 00 00     MX
    INY                     ; $C3082D  C8           MX
    LDX #$0016              ; $C3082E  A2 16 00     MX
L_C30831:
    LDA #$E0E0              ; $C30831  A9 E0 E0     MX
    STA $0000,Y             ; $C30834  99 00 00     MX
    TYA                     ; $C30837  98           MX
    CLC                     ; $C30838  18           MX
    ADC #$001A              ; $C30839  69 1A 00     MX
    TAY                     ; $C3083C  A8           MX
    DEX                     ; $C3083D  CA           MX
    BNE L_C30831            ; $C3083E  D0 F1        MX
    LDA #$00E0              ; $C30840  A9 E0 00     MX
    STA $0000,Y             ; $C30843  99 00 00     MX
    INY                     ; $C30846  C8           MX
    LDA #$E0E0              ; $C30847  A9 E0 E0     MX
    LDX #$000C              ; $C3084A  A2 0C 00     MX
L_C3084D:
    STA $0000,Y             ; $C3084D  99 00 00     MX
    INY                     ; $C30850  C8           MX
    INY                     ; $C30851  C8           MX
    DEX                     ; $C30852  CA           MX
    BNE L_C3084D            ; $C30853  D0 F8        MX
    STA $0000,Y             ; $C30855  99 00 00     MX
    RTS                     ; $C30858  60           MX
L_C30859:
    PHX                     ; $C30859  DA           MX
    PHY                     ; $C3085A  5A           MX
    SEP #$20                ; $C3085B  E2 20        MX
    STA $002121             ; $C3085D  8F 21 21 00  mX
    REP #$20                ; $C30861  C2 20        mX
    LDY #$0010              ; $C30863  A0 10 00     MX
L_C30866:
    LDA $C10178,X           ; $C30866  BF 78 01 C1  MX
    INX                     ; $C3086A  E8           MX
    AND #$001F              ; $C3086B  29 1F 00     MX
    XBA                     ; $C3086E  EB           MX
    ASL                     ; $C3086F  0A           MX
    ASL                     ; $C30870  0A           MX
    PHA                     ; $C30871  48           MX
    LDA $C10178,X           ; $C30872  BF 78 01 C1  MX
    INX                     ; $C30876  E8           MX
    AND #$001F              ; $C30877  29 1F 00     MX
    XBA                     ; $C3087A  EB           MX
    LSR                     ; $C3087B  4A           MX
    LSR                     ; $C3087C  4A           MX
    LSR                     ; $C3087D  4A           MX
    ORA $01,S               ; $C3087E  03 01        MX
    STA $01,S               ; $C30880  83 01        MX
    LDA $C10178,X           ; $C30882  BF 78 01 C1  MX
    INX                     ; $C30886  E8           MX
    AND #$001F              ; $C30887  29 1F 00     MX
    ORA $01,S               ; $C3088A  03 01        MX
    SEP #$20                ; $C3088C  E2 20        MX
    STA $002122             ; $C3088E  8F 22 21 00  mX
    XBA                     ; $C30892  EB           mX
    STA $002122             ; $C30893  8F 22 21 00  mX
    REP #$20                ; $C30897  C2 20        mX
    PLA                     ; $C30899  68           MX
    DEY                     ; $C3089A  88           MX
    BNE L_C30866            ; $C3089B  D0 C9        MX
    PLY                     ; $C3089D  7A           MX
    PLX                     ; $C3089E  FA           MX
    RTL                     ; $C3089F  6B           MX
L_C308A0:
    PHB                     ; $C308A0  8B           MX
    PEA $0000               ; $C308A1  F4 00 00     MX
    PLB                     ; $C308A4  AB           MX
    STX $4302               ; $C308A5  8E 02 43     MX
    STY $4304               ; $C308A8  8C 04 43     MX
    STA $4305               ; $C308AB  8D 05 43     MX
    LDA #$1801              ; $C308AE  A9 01 18     MX
    STA $4300               ; $C308B1  8D 00 43     MX
    SEP #$20                ; $C308B4  E2 20        MX
    LDA #$80                ; $C308B6  A9 80        mX
    STA $2115               ; $C308B8  8D 15 21     mX
    LDA #$01                ; $C308BB  A9 01        mX
    STA $420B               ; $C308BD  8D 0B 42     mX
    REP #$20                ; $C308C0  C2 20        mX
    PLB                     ; $C308C2  AB           MX
    PLB                     ; $C308C3  AB           MX
    RTL                     ; $C308C4  6B           MX
L_C308C5:
    STZ $0715               ; $C308C5  9C 15 07     MX
    STZ $66                 ; $C308C8  64 66        MX
    LDA #$0002              ; $C308CA  A9 02 00     MX
    STA $0709               ; $C308CD  8D 09 07     MX
    RTL                     ; $C308D0  6B           MX
L_C308D1:
    SEP #$20                ; $C308D1  E2 20        MX
    LDA #$00                ; $C308D3  A9 00        mX
    STA $004200             ; $C308D5  8F 00 42 00  mX
    REP #$20                ; $C308D9  C2 20        mX
    LDA #$B129              ; $C308DB  A9 29 B1     MX
    STA $00                 ; $C308DE  85 00        MX
    LDA #$00C0              ; $C308E0  A9 C0 00     MX
    STA $02                 ; $C308E3  85 02        MX
    LDA #$AFA9              ; $C308E5  A9 A9 AF     MX
    STA $04                 ; $C308E8  85 04        MX
    LDA #$00C0              ; $C308EA  A9 C0 00     MX
    STA $06                 ; $C308ED  85 06        MX
    LDA #$FFFF              ; $C308EF  A9 FF FF     MX
    STA $070B               ; $C308F2  8D 0B 07     MX
    LDA #$0002              ; $C308F5  A9 02 00     MX
    STA $0709               ; $C308F8  8D 09 07     MX
    LDA #$0013              ; $C308FB  A9 13 00     MX
    LDX #$6086              ; $C308FE  A2 86 60     MX
    LDY #$00DF              ; $C30901  A0 DF 00     MX
    PHB                     ; $C30904  8B           MX
    MVN $C1,$00             ; $C30905  54 00 C1     MX
    PLB                     ; $C30908  AB           MX
    LDA #$0D03              ; $C30909  A9 03 0D     MX
    STA $004350             ; $C3090C  8F 50 43 00  MX
    LDA #$00DF              ; $C30910  A9 DF 00     MX
    STA $004352             ; $C30913  8F 52 43 00  MX
    LDA #$0B00              ; $C30917  A9 00 0B     MX
    STA $004360             ; $C3091A  8F 60 43 00  MX
    LDA #$00E5              ; $C3091E  A9 E5 00     MX
    STA $004362             ; $C30921  8F 62 43 00  MX
    LDA #$2C00              ; $C30925  A9 00 2C     MX
    STA $004370             ; $C30928  8F 70 43 00  MX
    LDA #$00EC              ; $C3092C  A9 EC 00     MX
    STA $004372             ; $C3092F  8F 72 43 00  MX
    SEP #$20                ; $C30933  E2 20        MX
    LDA #$00                ; $C30935  A9 00        mX
    STA $004354             ; $C30937  8F 54 43 00  mX
    STA $004364             ; $C3093B  8F 64 43 00  mX
    STA $004374             ; $C3093F  8F 74 43 00  mX
    LDA #$E0                ; $C30943  A9 E0        mX
    STA $DE                 ; $C30945  85 DE        mX
    LDA #$11                ; $C30947  A9 11        mX
    STA $002131             ; $C30949  8F 31 21 00  mX
    LDA #$00                ; $C3094D  A9 00        mX
    STA $002132             ; $C3094F  8F 32 21 00  mX
    LDA #$11                ; $C30953  A9 11        mX
    STA $002105             ; $C30955  8F 05 21 00  mX
    LDA #$7C                ; $C30959  A9 7C        mX
    STA $002107             ; $C3095B  8F 07 21 00  mX
    LDA #$78                ; $C3095F  A9 78        mX
    STA $002108             ; $C30961  8F 08 21 00  mX
    LDA #$02                ; $C30965  A9 02        mX
    STA $002101             ; $C30967  8F 01 21 00  mX
    STA $1902               ; $C3096B  8D 02 19     mX
    LDA #$40                ; $C3096E  A9 40        mX
    STA $0A                 ; $C30970  85 0A        mX
    STA $004209             ; $C30972  8F 09 42 00  mX
    LDA #$00                ; $C30976  A9 00        mX
    STA $00420A             ; $C30978  8F 0A 42 00  mX
    LDA #$A1                ; $C3097C  A9 A1        mX
    STA $004200             ; $C3097E  8F 00 42 00  mX
    STA $0B                 ; $C30982  85 0B        mX
    CLI                     ; $C30984  58           mX
    REP #$20                ; $C30985  C2 20        mX
    JSL L_C309DF            ; $C30987  22 DF 09 C3  MX
    STZ $1B26               ; $C3098B  9C 26 1B     MX
    JSL L_C30996            ; $C3098E  22 96 09 C3  MX
    STZ $1900               ; $C30992  9C 00 19     MX
    RTL                     ; $C30995  6B           MX
L_C30996:
    SEP #$20                ; $C30996  E2 20        MX
    LDA #$E0                ; $C30998  A9 E0        mX
    LDY #$01FC              ; $C3099A  A0 FC 01     mX
    STY $18FE               ; $C3099D  8C FE 18     mX
L_C309A0:
    STA $1905,Y             ; $C309A0  99 05 19     mX
    DEY                     ; $C309A3  88           mX
    DEY                     ; $C309A4  88           mX
    DEY                     ; $C309A5  88           mX
    DEY                     ; $C309A6  88           mX
    BPL L_C309A0            ; $C309A7  10 F7        mX
    REP #$20                ; $C309A9  C2 20        mX
    LDA #$AAAA              ; $C309AB  A9 AA AA     MX
    STA $1B04               ; $C309AE  8D 04 1B     MX
    STA $1B06               ; $C309B1  8D 06 1B     MX
    STA $1B08               ; $C309B4  8D 08 1B     MX
    STA $1B0A               ; $C309B7  8D 0A 1B     MX
    STA $1B0C               ; $C309BA  8D 0C 1B     MX
    STA $1B0E               ; $C309BD  8D 0E 1B     MX
    STA $1B10               ; $C309C0  8D 10 1B     MX
    STA $1B12               ; $C309C3  8D 12 1B     MX
    STA $1B14               ; $C309C6  8D 14 1B     MX
    STA $1B16               ; $C309C9  8D 16 1B     MX
    STA $1B18               ; $C309CC  8D 18 1B     MX
    STA $1B1A               ; $C309CF  8D 1A 1B     MX
    STA $1B1C               ; $C309D2  8D 1C 1B     MX
    STA $1B1E               ; $C309D5  8D 1E 1B     MX
    STA $1B20               ; $C309D8  8D 20 1B     MX
    STA $1B22               ; $C309DB  8D 22 1B     MX
    RTL                     ; $C309DE  6B           MX
L_C309DF:
    STZ $1E00               ; $C309DF  9C 00 1E     MX
    LDA #$007D              ; $C309E2  A9 7D 00     MX
    LDX #$1E00              ; $C309E5  A2 00 1E     MX
    LDY #$1E02              ; $C309E8  A0 02 1E     MX
    PHB                     ; $C309EB  8B           MX
    MVN $7E,$7E             ; $C309EC  54 7E 7E     MX
    PLB                     ; $C309EF  AB           MX
    RTL                     ; $C309F0  6B           MX
L_C309F1:
    LDA #$0100              ; $C309F1  A9 00 01     MX
    LDX #$0000              ; $C309F4  A2 00 00     MX
    LDY #$0040              ; $C309F7  A0 40 00     MX
L_C309FA:
    STA $1F00,X             ; $C309FA  9D 00 1F     MX
    INC                     ; $C309FD  1A           MX
    INC                     ; $C309FE  1A           MX
    BIT #$0010              ; $C309FF  89 10 00     MX
    BEQ L_C30A08            ; $C30A02  F0 04        MX
    CLC                     ; $C30A04  18           MX
    ADC #$0010              ; $C30A05  69 10 00     MX
L_C30A08:
    INX                     ; $C30A08  E8           MX
    INX                     ; $C30A09  E8           MX
    DEY                     ; $C30A0A  88           MX
    BNE L_C309FA            ; $C30A0B  D0 ED        MX
    RTL                     ; $C30A0D  6B           MX
L_C30A0E:
    LDA $004212             ; $C30A0E  AF 12 42 00  MX
    BIT #$0001              ; $C30A12  89 01 00     MX
    BEQ L_C30A0E            ; $C30A15  F0 F7        MX
L_C30A17:
    LDA $004212             ; $C30A17  AF 12 42 00  MX
    BIT #$0001              ; $C30A1B  89 01 00     MX
    BNE L_C30A17            ; $C30A1E  D0 F7        MX
    LDA $004218             ; $C30A20  AF 18 42 00  MX
    ORA $00421A             ; $C30A24  0F 1A 42 00  MX
    BIT #$D0C0              ; $C30A28  89 C0 D0     MX
    BEQ L_C30A0E            ; $C30A2B  F0 E1        MX
    RTL                     ; $C30A2D  6B           MX
L_C30A2E:
    LDA $004212             ; $C30A2E  AF 12 42 00  MX
    BIT #$0001              ; $C30A32  89 01 00     MX
    BEQ L_C30A2E            ; $C30A35  F0 F7        MX
L_C30A37:
    LDA $004212             ; $C30A37  AF 12 42 00  MX
    BIT #$0001              ; $C30A3B  89 01 00     MX
    BNE L_C30A37            ; $C30A3E  D0 F7        MX
    LDA $004218             ; $C30A40  AF 18 42 00  MX
    ORA $00421A             ; $C30A44  0F 1A 42 00  MX
    BIT #$D0C0              ; $C30A48  89 C0 D0     MX
    BNE L_C30A2E            ; $C30A4B  D0 E1        MX
    RTL                     ; $C30A4D  6B           MX
L_C30A4E:
    STZ $66                 ; $C30A4E  64 66        MX
L_C30A50:
    CMP $66                 ; $C30A50  C5 66        MX
    BCS L_C30A50            ; $C30A52  B0 FC        MX
    RTL                     ; $C30A54  6B           MX
L_C30A55:
    STZ $66                 ; $C30A55  64 66        MX
    PHA                     ; $C30A57  48           MX
L_C30A58:
    LDA $004212             ; $C30A58  AF 12 42 00  MX
    BIT #$0001              ; $C30A5C  89 01 00     MX
    BEQ L_C30A58            ; $C30A5F  F0 F7        MX
L_C30A61:
    LDA $004212             ; $C30A61  AF 12 42 00  MX
    BIT #$0001              ; $C30A65  89 01 00     MX
    BNE L_C30A61            ; $C30A68  D0 F7        MX
    LDA $004218             ; $C30A6A  AF 18 42 00  MX
    ORA $00421A             ; $C30A6E  0F 1A 42 00  MX
    BIT #$D0C0              ; $C30A72  89 C0 D0     MX
    BNE L_C30A81            ; $C30A75  D0 0A        MX
    LDA $01,S               ; $C30A77  A3 01        MX
    CMP $66                 ; $C30A79  C5 66        MX
    BCS L_C30A58            ; $C30A7B  B0 DB        MX
    PLA                     ; $C30A7D  68           MX
    REP #$80                ; $C30A7E  C2 80        MX
    RTL                     ; $C30A80  6B           MX
L_C30A81:
    PLA                     ; $C30A81  68           MX
    SEP #$80                ; $C30A82  E2 80        MX
    RTL                     ; $C30A84  6B           MX
L_C30A85:
    LDY #$0000              ; $C30A85  A0 00 00     MX
    LDA #$0002              ; $C30A88  A9 02 00     MX
    STA [$DA],Y             ; $C30A8B  97 DA        MX
    LDA $DA                 ; $C30A8D  A5 DA        MX
    INC                     ; $C30A8F  1A           MX
    INC                     ; $C30A90  1A           MX
    STA $DA                 ; $C30A91  85 DA        MX
    RTL                     ; $C30A93  6B           MX
L_C30A94:
    LDY #$0004              ; $C30A94  A0 04 00     MX
    LDA [$DA],Y             ; $C30A97  B7 DA        MX
    STA $26                 ; $C30A99  85 26        MX
    INY                     ; $C30A9B  C8           MX
    INY                     ; $C30A9C  C8           MX
    LDA [$DA],Y             ; $C30A9D  B7 DA        MX
    STA $2A                 ; $C30A9F  85 2A        MX
    SEC                     ; $C30AA1  38           MX
    SBC $076B               ; $C30AA2  ED 6B 07     MX
    LSR                     ; $C30AA5  4A           MX
    STA $004204             ; $C30AA6  8F 04 42 00  MX
    SEP #$20                ; $C30AAA  E2 20        MX
    LDA $076D               ; $C30AAC  AD 6D 07     mX
    STA $004206             ; $C30AAF  8F 06 42 00  mX
    REP #$20                ; $C30AB3  C2 20        mX
    LDA $DA                 ; $C30AB5  A5 DA        MX
    INC                     ; $C30AB7  1A           MX
    INC                     ; $C30AB8  1A           MX
    STA $DA                 ; $C30AB9  85 DA        MX
    NOP                     ; $C30ABB  EA           MX
    LDA $004214             ; $C30ABC  AF 14 42 00  MX
    ASL                     ; $C30AC0  0A           MX
    ASL                     ; $C30AC1  0A           MX
    ASL                     ; $C30AC2  0A           MX
    ASL                     ; $C30AC3  0A           MX
    STA $4A                 ; $C30AC4  85 4A        MX
    LDA $004216             ; $C30AC6  AF 16 42 00  MX
    ASL                     ; $C30ACA  0A           MX
    ASL                     ; $C30ACB  0A           MX
    ASL                     ; $C30ACC  0A           MX
    ASL                     ; $C30ACD  0A           MX
    STA $46                 ; $C30ACE  85 46        MX
    JSL L_C0E9C7            ; $C30AD0  22 C7 E9 C0  MX
    RTL                     ; $C30AD4  6B           MX
    db $A0,$00,$00,$98,$97,$DA,$C8,$C8,$A5,$26,$97,$DA,$C8,$C8,$8A,$97 ; $C30AD5
    db $DA,$C8,$C8,$98,$18,$65,$DA,$85,$DA,$C9,$00,$3B,$90,$07,$A9,$FF ; $C30AE5
    db $FF,$87,$DA,$00,$00,$6B                                         ; $C30AF5
L_C30AFB:
    LDY #$0002              ; $C30AFB  A0 02 00     MX
    LDA [$DA],Y             ; $C30AFE  B7 DA        MX
    STA $26                 ; $C30B00  85 26        MX
    INY                     ; $C30B02  C8           MX
    INY                     ; $C30B03  C8           MX
    LDA [$DA],Y             ; $C30B04  B7 DA        MX
    TAX                     ; $C30B06  AA           MX
    INY                     ; $C30B07  C8           MX
    INY                     ; $C30B08  C8           MX
    TYA                     ; $C30B09  98           MX
    CLC                     ; $C30B0A  18           MX
    ADC $DA                 ; $C30B0B  65 DA        MX
    STA $DA                 ; $C30B0D  85 DA        MX
    TXA                     ; $C30B0F  8A           MX
    SEC                     ; $C30B10  38           MX
    SBC $076B               ; $C30B11  ED 6B 07     MX
    LSR                     ; $C30B14  4A           MX
    STA $004204             ; $C30B15  8F 04 42 00  MX
    SEP #$20                ; $C30B19  E2 20        MX
    LDA $076D               ; $C30B1B  AD 6D 07     mX
    STA $004206             ; $C30B1E  8F 06 42 00  mX
    REP #$20                ; $C30B22  C2 20        mX
    JSL L_C0E0A5            ; $C30B24  22 A5 E0 C0  MX
    LDA $004214             ; $C30B28  AF 14 42 00  MX
    LDX #$0000              ; $C30B2C  A2 00 00     MX
    JSL L_C0BBA1            ; $C30B2F  22 A1 BB C0  MX
    RTL                     ; $C30B33  6B           MX
L_C30B34:
    LDA $0757               ; $C30B34  AD 57 07     MX
    AND #$FFF0              ; $C30B37  29 F0 FF     MX
    ASL                     ; $C30B3A  0A           MX
    AND #$03FF              ; $C30B3B  29 FF 03     MX
    PHA                     ; $C30B3E  48           MX
    CLC                     ; $C30B3F  18           MX
    ADC #$7C00              ; $C30B40  69 00 7C     MX
    STA $09F8               ; $C30B43  8D F8 09     MX
    PLA                     ; $C30B46  68           MX
    ASL                     ; $C30B47  0A           MX
    PHA                     ; $C30B48  48           MX
    CLC                     ; $C30B49  18           MX
    ADC #$09FE              ; $C30B4A  69 FE 09     MX
    STA $09FA               ; $C30B4D  8D FA 09     MX
    PLA                     ; $C30B50  68           MX
    EOR #$FFFF              ; $C30B51  49 FF FF     MX
    SEC                     ; $C30B54  38           MX
    ADC #$0800              ; $C30B55  69 00 08     MX
    CMP #$03C0              ; $C30B58  C9 C0 03     MX
    BCC L_C30B60            ; $C30B5B  90 03        MX
    LDA #$03C0              ; $C30B5D  A9 C0 03     MX
L_C30B60:
    STA $09FC               ; $C30B60  8D FC 09     MX
    RTS                     ; $C30B63  60           MX
L_C30B64:
    JSR L_C30B34            ; $C30B64  20 34 0B     MX
    SEP #$30                ; $C30B67  E2 30        MX
    LDA $076D               ; $C30B69  AD 6D 07     mx
    STA $004202             ; $C30B6C  8F 02 42 00  mx
    LDY #$1F                ; $C30B70  A0 1F        mx
L_C30B72:
    LDA $06BE,Y             ; $C30B72  B9 BE 06     mx
    BMI L_C30B88            ; $C30B75  30 11        mx
    PHY                     ; $C30B77  5A           mx
    REP #$30                ; $C30B78  C2 30        mx
    AND #$00FF              ; $C30B7A  29 FF 00     MX
    JSR L_C30C81            ; $C30B7D  20 81 0C     MX
    SEP #$30                ; $C30B80  E2 30        MX
    PLY                     ; $C30B82  7A           mx
    LDA #$FF                ; $C30B83  A9 FF        mx
    STA $06BE,Y             ; $C30B85  99 BE 06     mx
L_C30B88:
    DEY                     ; $C30B88  88           mx
    BPL L_C30B72            ; $C30B89  10 E7        mx
    REP #$30                ; $C30B8B  C2 30        mx
    LDA $0755               ; $C30B8D  AD 55 07     MX
    LSR                     ; $C30B90  4A           MX
    LSR                     ; $C30B91  4A           MX
    LSR                     ; $C30B92  4A           MX
    LSR                     ; $C30B93  4A           MX
    PHA                     ; $C30B94  48           MX
L_C30B95:
    CMP $0711               ; $C30B95  CD 11 07     MX
    BCS L_C30BAA            ; $C30B98  B0 10        MX
    DEC $0711               ; $C30B9A  CE 11 07     MX
    DEC $0713               ; $C30B9D  CE 13 07     MX
    LDA $0711               ; $C30BA0  AD 11 07     MX
    JSR L_C30CD2            ; $C30BA3  20 D2 0C     MX
    LDA $01,S               ; $C30BA6  A3 01        MX
    BRA L_C30B95            ; $C30BA8  80 EB        MX
L_C30BAA:
    LDA $01,S               ; $C30BAA  A3 01        MX
    CLC                     ; $C30BAC  18           MX
    ADC #$0010              ; $C30BAD  69 10 00     MX
    CMP $0713               ; $C30BB0  CD 13 07     MX
    BCC L_C30BC3            ; $C30BB3  90 0E        MX
    INC $0711               ; $C30BB5  EE 11 07     MX
    LDA $0713               ; $C30BB8  AD 13 07     MX
    JSR L_C30CD2            ; $C30BBB  20 D2 0C     MX
    INC $0713               ; $C30BBE  EE 13 07     MX
    BRA L_C30BAA            ; $C30BC1  80 E7        MX
L_C30BC3:
    PLA                     ; $C30BC3  68           MX
    LDA $0757               ; $C30BC4  AD 57 07     MX
    LSR                     ; $C30BC7  4A           MX
    LSR                     ; $C30BC8  4A           MX
    LSR                     ; $C30BC9  4A           MX
    LSR                     ; $C30BCA  4A           MX
    PHA                     ; $C30BCB  48           MX
L_C30BCC:
    CMP $070D               ; $C30BCC  CD 0D 07     MX
    BCS L_C30BE1            ; $C30BCF  B0 10        MX
    DEC $070D               ; $C30BD1  CE 0D 07     MX
    DEC $070F               ; $C30BD4  CE 0F 07     MX
    LDA $070D               ; $C30BD7  AD 0D 07     MX
    JSR L_C30C81            ; $C30BDA  20 81 0C     MX
    LDA $01,S               ; $C30BDD  A3 01        MX
    BRA L_C30BCC            ; $C30BDF  80 EB        MX
L_C30BE1:
    LDA $01,S               ; $C30BE1  A3 01        MX
    CLC                     ; $C30BE3  18           MX
    ADC #$000E              ; $C30BE4  69 0E 00     MX
    CMP $070F               ; $C30BE7  CD 0F 07     MX
    BCC L_C30BFA            ; $C30BEA  90 0E        MX
    INC $070D               ; $C30BEC  EE 0D 07     MX
    LDA $070F               ; $C30BEF  AD 0F 07     MX
    JSR L_C30C81            ; $C30BF2  20 81 0C     MX
    INC $070F               ; $C30BF5  EE 0F 07     MX
    BRA L_C30BE1            ; $C30BF8  80 E7        MX
L_C30BFA:
    PLA                     ; $C30BFA  68           MX
    RTL                     ; $C30BFB  6B           MX
L_C30BFC:
    JSR L_C30B34            ; $C30BFC  20 34 0B     MX
    SEP #$20                ; $C30BFF  E2 20        MX
    LDA $076D               ; $C30C01  AD 6D 07     mX
    STA $004202             ; $C30C04  8F 02 42 00  mX
    REP #$20                ; $C30C08  C2 20        mX
    LDA $0755               ; $C30C0A  AD 55 07     MX
    LSR                     ; $C30C0D  4A           MX
    LSR                     ; $C30C0E  4A           MX
    LSR                     ; $C30C0F  4A           MX
    LSR                     ; $C30C10  4A           MX
    STA $0711               ; $C30C11  8D 11 07     MX
    CLC                     ; $C30C14  18           MX
    ADC #$0020              ; $C30C15  69 20 00     MX
    STA $0713               ; $C30C18  8D 13 07     MX
    LDA $076D               ; $C30C1B  AD 6D 07     MX
    SEC                     ; $C30C1E  38           MX
    SBC #$0020              ; $C30C1F  E9 20 00     MX
    CMP $0711               ; $C30C22  CD 11 07     MX
    BCS L_C30C31            ; $C30C25  B0 0A        MX
    STA $0711               ; $C30C27  8D 11 07     MX
    CLC                     ; $C30C2A  18           MX
    ADC #$0020              ; $C30C2B  69 20 00     MX
    STA $0713               ; $C30C2E  8D 13 07     MX
L_C30C31:
    LDA $0757               ; $C30C31  AD 57 07     MX
    LSR                     ; $C30C34  4A           MX
    LSR                     ; $C30C35  4A           MX
    LSR                     ; $C30C36  4A           MX
    LSR                     ; $C30C37  4A           MX
    STA $070D               ; $C30C38  8D 0D 07     MX
    CLC                     ; $C30C3B  18           MX
    ADC #$0020              ; $C30C3C  69 20 00     MX
    STA $070F               ; $C30C3F  8D 0F 07     MX
    LDA $076F               ; $C30C42  AD 6F 07     MX
    SEC                     ; $C30C45  38           MX
    SBC #$0020              ; $C30C46  E9 20 00     MX
    CMP $070D               ; $C30C49  CD 0D 07     MX
    BCS L_C30C58            ; $C30C4C  B0 0A        MX
    STA $070D               ; $C30C4E  8D 0D 07     MX
    CLC                     ; $C30C51  18           MX
    ADC #$0020              ; $C30C52  69 20 00     MX
    STA $070F               ; $C30C55  8D 0F 07     MX
L_C30C58:
    LDA $070D               ; $C30C58  AD 0D 07     MX
    CLC                     ; $C30C5B  18           MX
    ADC #$001F              ; $C30C5C  69 1F 00     MX
L_C30C5F:
    PHA                     ; $C30C5F  48           MX
    JSR L_C30C81            ; $C30C60  20 81 0C     MX
    PLA                     ; $C30C63  68           MX
    DEC                     ; $C30C64  3A           MX
    BMI L_C30C6C            ; $C30C65  30 05        MX
    CMP $070D               ; $C30C67  CD 0D 07     MX
    BCS L_C30C5F            ; $C30C6A  B0 F3        MX
L_C30C6C:
    LDA #$FFFF              ; $C30C6C  A9 FF FF     MX
    STA $06BE               ; $C30C6F  8D BE 06     MX
    LDA #$001D              ; $C30C72  A9 1D 00     MX
    LDX #$06BE              ; $C30C75  A2 BE 06     MX
    LDY #$06C0              ; $C30C78  A0 C0 06     MX
    PHB                     ; $C30C7B  8B           MX
    MVN $7E,$7E             ; $C30C7C  54 7E 7E     MX
    PLB                     ; $C30C7F  AB           MX
    RTL                     ; $C30C80  6B           MX
L_C30C81:
    CMP $076F               ; $C30C81  CD 6F 07     MX
    BCC L_C30C87            ; $C30C84  90 01        MX
    RTS                     ; $C30C86  60           MX
L_C30C87:
    PHA                     ; $C30C87  48           MX
    SEP #$20                ; $C30C88  E2 20        MX
    STA $004203             ; $C30C8A  8F 03 42 00  mX
    REP #$20                ; $C30C8E  C2 20        mX
    LDA #$0020              ; $C30C90  A9 20 00     MX
    STA $46                 ; $C30C93  85 46        MX
    LDA $0711               ; $C30C95  AD 11 07     MX
    CLC                     ; $C30C98  18           MX
    ADC $004216             ; $C30C99  6F 16 42 00  MX
    ASL                     ; $C30C9D  0A           MX
    CLC                     ; $C30C9E  18           MX
    ADC $076B               ; $C30C9F  6D 6B 07     MX
    TAX                     ; $C30CA2  AA           MX
    PLA                     ; $C30CA3  68           MX
    ASL                     ; $C30CA4  0A           MX
    ASL                     ; $C30CA5  0A           MX
    ASL                     ; $C30CA6  0A           MX
    ASL                     ; $C30CA7  0A           MX
    ASL                     ; $C30CA8  0A           MX
    ASL                     ; $C30CA9  0A           MX
    AND #$07FF              ; $C30CAA  29 FF 07     MX
    CLC                     ; $C30CAD  18           MX
    ADC #$09FE              ; $C30CAE  69 FE 09     MX
    STA $26                 ; $C30CB1  85 26        MX
    LDA $0711               ; $C30CB3  AD 11 07     MX
    ASL                     ; $C30CB6  0A           MX
    AND #$003F              ; $C30CB7  29 3F 00     MX
    TAY                     ; $C30CBA  A8           MX
L_C30CBB:
    LDA $68E0,X             ; $C30CBB  BD E0 68     MX
    AND #$01FF              ; $C30CBE  29 FF 01     MX
    ASL                     ; $C30CC1  0A           MX
    STA ($26),Y             ; $C30CC2  91 26        MX
    INX                     ; $C30CC4  E8           MX
    INX                     ; $C30CC5  E8           MX
    TYA                     ; $C30CC6  98           MX
    INC                     ; $C30CC7  1A           MX
    INC                     ; $C30CC8  1A           MX
    AND #$003F              ; $C30CC9  29 3F 00     MX
    TAY                     ; $C30CCC  A8           MX
    DEC $46                 ; $C30CCD  C6 46        MX
    BNE L_C30CBB            ; $C30CCF  D0 EA        MX
    RTS                     ; $C30CD1  60           MX
L_C30CD2:
    CMP $076D               ; $C30CD2  CD 6D 07     MX
    BCC L_C30CD8            ; $C30CD5  90 01        MX
    RTS                     ; $C30CD7  60           MX
L_C30CD8:
    PHA                     ; $C30CD8  48           MX
    LDA $070D               ; $C30CD9  AD 0D 07     MX
    SEP #$20                ; $C30CDC  E2 20        MX
    STA $004203             ; $C30CDE  8F 03 42 00  mX
    REP #$20                ; $C30CE2  C2 20        mX
    LDA #$0020              ; $C30CE4  A9 20 00     MX
    STA $46                 ; $C30CE7  85 46        MX
    LDA $01,S               ; $C30CE9  A3 01        MX
    CLC                     ; $C30CEB  18           MX
    ADC $004216             ; $C30CEC  6F 16 42 00  MX
    ASL                     ; $C30CF0  0A           MX
    CLC                     ; $C30CF1  18           MX
    ADC $076B               ; $C30CF2  6D 6B 07     MX
    TAX                     ; $C30CF5  AA           MX
    LDA $070D               ; $C30CF6  AD 0D 07     MX
    AND #$001F              ; $C30CF9  29 1F 00     MX
    ASL                     ; $C30CFC  0A           MX
    ASL                     ; $C30CFD  0A           MX
    ASL                     ; $C30CFE  0A           MX
    ASL                     ; $C30CFF  0A           MX
    ASL                     ; $C30D00  0A           MX
    STA $26                 ; $C30D01  85 26        MX
    PLA                     ; $C30D03  68           MX
    AND #$001F              ; $C30D04  29 1F 00     MX
    CLC                     ; $C30D07  18           MX
    ADC $26                 ; $C30D08  65 26        MX
    ASL                     ; $C30D0A  0A           MX
    TAY                     ; $C30D0B  A8           MX
L_C30D0C:
    LDA $68E0,X             ; $C30D0C  BD E0 68     MX
    AND #$01FF              ; $C30D0F  29 FF 01     MX
    ASL                     ; $C30D12  0A           MX
    STA $09FE,Y             ; $C30D13  99 FE 09     MX
    TXA                     ; $C30D16  8A           MX
    CLC                     ; $C30D17  18           MX
    ADC $0773               ; $C30D18  6D 73 07     MX
    TAX                     ; $C30D1B  AA           MX
    TYA                     ; $C30D1C  98           MX
    CLC                     ; $C30D1D  18           MX
    ADC #$0040              ; $C30D1E  69 40 00     MX
    AND #$07FF              ; $C30D21  29 FF 07     MX
    TAY                     ; $C30D24  A8           MX
    DEC $46                 ; $C30D25  C6 46        MX
    BNE L_C30D0C            ; $C30D27  D0 E3        MX
    RTS                     ; $C30D29  60           MX
    db $52,$4E,$43,$02,$00,$00,$BE,$20,$00,$00,$6F,$A8,$62,$B0,$9C,$EF ; $C30D2A
    db $02,$04,$17,$00,$5F,$08,$D6,$73,$56,$33,$56,$1A,$CE,$6A,$D2,$09 ; $C30D3A
    db $50,$09,$06,$09,$8A,$31,$CC,$49,$48,$29,$82,$10,$4E,$4A,$08,$3A ; $C30D4A
    db $84,$31,$00,$21,$00,$08,$3D,$00,$FF,$07,$01,$E0,$57,$1F,$EA,$30 ; $C30D5A
    db $E5,$20,$C0,$03,$E0,$00,$E7,$00,$EF,$C0,$01,$10,$AF,$10,$20,$DF ; $C30D6A
    db $80,$01,$0F,$FF,$08,$A0,$1D,$40,$FF,$6F,$67,$00,$01,$7F,$21,$03 ; $C30D7A
    db $1D,$82,$01,$FF,$10,$80,$FF,$49,$01,$30,$3D,$12,$B5,$B4,$93,$B9 ; $C30D8A
    db $52,$B0,$95,$B0,$8B,$E0,$95,$C0,$AB,$80,$55,$00,$AB,$00,$B4,$DB ; $C30D9A
    db $90,$6F,$90,$7F,$80,$01,$0B,$21,$77,$AF,$F7,$60,$F7,$B0,$FF,$48 ; $C30DAA
    db $FF,$84,$EF,$42,$D7,$01,$FB,$01,$D5,$77,$98,$60,$9F,$B0,$4F,$48 ; $C30DBA
    db $B7,$84,$7B,$42,$BD,$01,$FE,$01,$FF,$54,$0E,$33,$94,$40,$00,$03 ; $C30DCA
    db $00,$9A,$00,$9C,$00,$9E,$40,$72,$01,$33,$0A,$03,$21,$30,$01,$20 ; $C30DDA
    db $09,$AA,$01,$D4,$0C,$03,$A8,$0B,$D8,$03,$13,$04,$C0,$33,$00,$63 ; $C30DEA
    db $18,$81,$77,$0C,$F7,$04,$FF,$20,$01,$F5,$DF,$40,$39,$DF,$60,$03 ; $C30DFA
    db $00,$01,$48,$DF,$DB,$FF,$31,$D5,$6A,$B3,$40,$BF,$26,$01,$75,$0E ; $C30E0A
    db $93,$FF,$51,$F3,$38,$2F,$BF,$B1,$BF,$E1,$01,$8A,$BF,$90,$0F,$AE ; $C30E1A
    db $3F,$A7,$9F,$17,$C5,$3F,$0C,$FF,$02,$00,$09,$00,$26,$00,$9F,$00 ; $C30E2A
    db $74,$00,$7E,$9C,$02,$30,$28,$05,$7B,$06,$FF,$19,$0E,$FF,$60,$FF ; $C30E3A
    db $81,$0C,$01,$02,$FF,$85,$2B,$C0,$00,$60,$F0,$B8,$FC,$56,$D7,$A9 ; $C30E4A
    db $EB,$38,$51,$FD,$03,$F5,$70,$00,$1B,$B8,$5F,$05,$56,$AF,$A8,$57 ; $C30E5A
    db $50,$19,$03,$90,$40,$55,$70,$81,$28,$0A,$50,$14,$88,$28,$01,$50 ; $C30E6A
    db $82,$A0,$45,$C0,$33,$55,$FF,$28,$FF,$50,$38,$FF,$88,$C5,$82,$06 ; $C30E7A
    db $FF,$45,$FF,$A9,$FB,$33,$63,$A1,$03,$D5,$A1,$9C,$3B,$03,$40,$D5 ; $C30E8A
    db $33,$A0,$5F,$F2,$02,$03,$54,$E1,$02,$88,$21,$D0,$00,$E1,$00,$F4 ; $C30E9A
    db $00,$FA,$00,$FC,$8E,$EC,$00,$02,$4B,$F5,$41,$03,$01,$54,$98,$A3 ; $C30EAA
    db $EA,$FF,$83,$F8,$03,$57,$F0,$AF,$E0,$5F,$C0,$11,$C0,$7B,$04,$B4 ; $C30EBA
    db $55,$03,$34,$3B,$DF,$17,$0B,$5D,$3E,$FC,$2B,$F8,$55,$F2,$0B,$E4 ; $C30ECA
    db $15,$CA,$2B,$84,$55,$22,$AB,$10,$5C,$A3,$28,$D7,$52,$AF,$04,$FF ; $C30EDA
    db $0A,$C0,$1B,$22,$FF,$10,$FF,$FD,$60,$FD,$AF,$98,$FF,$48,$FB,$03 ; $C30EEA
    db $A4,$EF,$42,$F7,$81,$EB,$2E,$E2,$FD,$18,$3E,$60,$BF,$98,$6F,$48 ; $C30EFA
    db $B7,$A4,$5B,$42,$BD,$81,$F2,$FF,$79,$30,$08,$F3,$01,$00,$B3,$00 ; $C30F0A
    db $30,$D3,$00,$3B,$D5,$20,$AA,$3F,$40,$8E,$01,$39,$59,$04,$FF,$86 ; $C30F1A
    db $1F,$AF,$40,$9F,$01,$0E,$00,$FB,$00,$FD,$C0,$36,$E3,$08,$61,$10 ; $C30F2A
    db $10,$ED,$93,$DB,$95,$91,$1B,$B2,$47,$E1,$54,$E3,$80,$AA,$01,$55 ; $C30F3A
    db $A2,$AB,$50,$55,$A0,$AB,$40,$55,$80,$AB,$00,$81,$C7,$15,$A0,$1D ; $C30F4A
    db $FF,$A0,$11,$3B,$01,$25,$F1,$F1,$C0,$F3,$81,$0B,$D0,$FF,$A8,$FF ; $C30F5A
    db $D4,$C5,$2D,$51,$CF,$F5,$F1,$8E,$C0,$3F,$A0,$DF,$D0,$2F,$A8,$D7 ; $C30F6A
    db $D4,$2B,$82,$7D,$51,$AF,$30,$18,$6F,$08,$77,$08,$73,$5C,$01,$28 ; $C30F7A
    db $00,$33,$00,$13,$60,$A1,$88,$51,$FF,$08,$F7,$00,$7D,$44,$E0,$03 ; $C30F8A
    db $96,$7F,$9E,$B8,$D4,$00,$9D,$41,$D9,$03,$F5,$05,$E9,$0F,$D1,$1D ; $C30F9A
    db $A9,$3B,$41,$7D,$20,$18,$15,$04,$FB,$25,$10,$EF,$C5,$E9,$40,$BF ; $C30FAA
    db $C2,$8C,$EC,$03,$98,$04,$F0,$0B,$E0,$14,$C0,$2B,$80,$20,$4B,$8D ; $C30FBA
    db $73,$2D,$00,$FF,$10,$43,$03,$0C,$A1,$EB,$C1,$F1,$03,$D1,$03,$F1 ; $C30FCA
    db $A9,$FB,$45,$FD,$03,$87,$FF,$A0,$5F,$1C,$7F,$5F,$7F,$08,$57,$44 ; $C30FDA
    db $BB,$02,$1C,$D4,$FF,$C0,$AB,$80,$03,$C1,$FF,$A3,$20,$FF,$C7,$0F ; $C30FEA
    db $3F,$90,$23,$C1,$3E,$09,$A2,$5D,$C5,$3B,$40,$6F,$1F,$FF,$7F,$49 ; $C30FFA
    db $FF,$00,$31,$0F,$E7,$40,$D1,$3B,$C0,$00,$FA,$AF,$FF,$DF,$38,$FF ; $C3100A
    db $9F,$1D,$BF,$0E,$FF,$7E,$FF,$BE,$0B,$13,$AB,$57,$D7,$8E,$2F,$97 ; $C3101A
    db $7F,$6F,$9F,$AF,$5E,$6E,$BF,$9E,$7D,$1F,$FE,$FD,$FF,$E0,$59,$2E ; $C3102A
    db $FC,$80,$5D,$F8,$00,$F8,$42,$F8,$40,$F8,$C8,$FC,$FD,$F2,$E0,$DF ; $C3103A
    db $C0,$BF,$83,$7E,$03,$FE,$41,$00,$A1,$88,$F7,$FD,$BF,$BD,$38,$BF ; $C3104A
    db $BF,$3F,$00,$E0,$05,$01,$B7,$94,$CC,$0D,$46,$01,$BF,$38,$44,$3F ; $C3105A
    db $63,$BF,$03,$50,$01,$FE,$94,$6B,$EF,$D8,$01,$77,$00,$04,$DF,$0A ; $C3106A
    db $2A,$7D,$EF,$30,$D0,$80,$0F,$B8,$70,$40,$04,$FF,$28,$D7,$62,$B5 ; $C3107A
    db $04,$AF,$02,$BD,$80,$4B,$00,$B7,$60,$44,$15,$9F,$20,$DF,$04,$44 ; $C3108A
    db $FB,$43,$21,$A5,$76,$E1,$A7,$04,$EB,$80,$FE,$48,$BF,$25,$13,$3B ; $C3109A
    db $CF,$F3,$3E,$1B,$08,$01,$73,$FD,$0F,$FE,$96,$01,$0D,$5F,$00,$DD ; $C310AA
    db $11,$0D,$9D,$98,$03,$A1,$A8,$0F,$D5,$2B,$1C,$11,$EE,$FE,$BF,$F0 ; $C310BA
    db $01,$1F,$FD,$01,$DF,$0A,$FE,$2B,$E0,$1F,$53,$1C,$1F,$76,$A1,$AB ; $C310CA
    db $0C,$DF,$10,$BD,$2A,$0C,$FA,$19,$95,$FF,$22,$8B,$EF,$C0,$0F,$FB ; $C310DA
    db $10,$EF,$2A,$63,$D5,$07,$95,$6E,$9D,$8B,$03,$81,$80,$FF,$08,$30 ; $C310EA
    db $9B,$FB,$69,$20,$DB,$02,$75,$7F,$5C,$40,$EF,$7F,$43,$F7,$79,$8C ; $C310FA
    db $9B,$FD,$0D,$FD,$99,$DF,$01,$4C,$63,$99,$BD,$01,$56,$BF,$68,$83 ; $C3110A
    db $7C,$FF,$C3,$A1,$59,$5F,$9D,$29,$DF,$A0,$5F,$00,$02,$EC,$5F,$0A ; $C3111A
    db $06,$DF,$02,$FB,$DE,$21,$01,$1C,$FE,$01,$E1,$2B,$21,$7C,$97,$47 ; $C3112A
    db $70,$02,$7B,$50,$FE,$04,$F7,$10,$FD,$0D,$F7,$20,$FD,$EA,$B1,$A4 ; $C3113A
    db $FD,$53,$50,$AF,$C1,$81,$FF,$05,$FB,$A0,$7D,$E1,$12,$03,$FF,$42 ; $C3114A
    db $F7,$02,$DF,$42,$06,$07,$DF,$82,$77,$4A,$2D,$6E,$DB,$71,$DD,$29 ; $C3115A
    db $57,$21,$10,$0C,$A9,$48,$B7,$03,$BC,$32,$FC,$3C,$03,$FF,$40,$03 ; $C3116A
    db $FC,$FF,$3D,$FF,$10,$9C,$7F,$1C,$03,$1A,$FB,$9C,$7B,$03,$E1,$DC ; $C3117A
    db $7B,$1D,$FB,$2C,$7F,$1E,$BF,$0F,$DB,$0A,$EF,$97,$C9,$43,$2C,$9F ; $C3118A
    db $11,$EF,$78,$F7,$2C,$DB,$1E,$E5,$0E,$FB,$0C,$F8,$07,$F8,$70,$DF ; $C3119A
    db $F9,$FF,$99,$AF,$FF,$1C,$7D,$7F,$9D,$3D,$80,$3F,$39,$7F,$3C,$3B ; $C311AA
    db $FD,$9C,$14,$79,$9D,$66,$3F,$19,$FF,$19,$FE,$07,$33,$72,$FE,$99 ; $C311BA
    db $DF,$FD,$FE,$7F,$FF,$0F,$FF,$1E,$FF,$9E,$FF,$D7,$FF,$AF,$DF,$EE ; $C311CA
    db $FF,$37,$C0,$47,$87,$0D,$FF,$1D,$EF,$0D,$8D,$FF,$CD,$7B,$3D,$CE ; $C311DA
    db $01,$3B,$DF,$80,$01,$FF,$C0,$9E,$D0,$BF,$7D,$C6,$87,$01,$79,$C6 ; $C311EA
    db $FB,$60,$35,$BF,$C4,$80,$7F,$25,$90,$6F,$87,$1D,$DF,$FF,$03,$01 ; $C311FA
    db $05,$03,$F7,$87,$FF,$FE,$D7,$34,$1D,$BE,$41,$D8,$8D,$79,$F9,$BE ; $C3120A
    db $03,$71,$85,$7B,$C0,$BB,$C2,$BF,$A0,$ED,$A9,$9F,$C0,$BF,$C0,$9D ; $C3121A
    db $D1,$BF,$EA,$80,$22,$7F,$82,$FD,$A0,$5F,$89,$76,$8A,$98,$E1,$91 ; $C3122A
    db $6F,$45,$03,$BF,$18,$23,$7B,$43,$F7,$EF,$4B,$C7,$09,$DF,$03,$30 ; $C3123A
    db $41,$33,$22,$DD,$43,$67,$BE,$A3,$49,$23,$3D,$04,$BD,$7F,$7F,$7B ; $C3124A
    db $7F,$40,$DB,$00,$BF,$3F,$B8,$74,$7F,$60,$3F,$48,$2F,$7B,$87,$7B ; $C3125A
    db $8C,$77,$98,$F7,$01,$2F,$3F,$F4,$20,$DF,$08,$F7,$3D,$9E,$D9,$7F ; $C3126A
    db $FE,$9C,$03,$7F,$05,$41,$C1,$81,$F8,$D9,$59,$F8,$50,$63,$50,$B8 ; $C3127A
    db $F1,$3B,$40,$37,$49,$3F,$40,$3B,$42,$3F,$60,$3E,$00,$2F,$40,$1F ; $C3128A
    db $10,$13,$09,$18,$97,$FD,$20,$A8,$61,$74,$46,$00,$1F,$0A,$FF,$32 ; $C3129A
    db $7B,$42,$EF,$82,$0C,$DF,$02,$BF,$82,$0F,$BF,$76,$04,$D5,$25,$30 ; $C312AA
    db $CF,$55,$1D,$80,$4B,$56,$FB,$91,$03,$0E,$65,$F0,$00,$01,$FF,$89 ; $C312BA
    db $FF,$88,$F3,$CC,$37,$74,$FF,$01,$65,$E0,$F0,$0F,$F0,$2F,$7F,$D2 ; $C312CA
    db $1B,$F3,$B3,$7F,$A0,$98,$7E,$81,$07,$7E,$99,$F2,$0D,$F9,$08,$3B ; $C312DA
    db $FC,$0F,$03,$3F,$E8,$EF,$78,$FD,$ED,$B3,$B9,$7E,$97,$1F,$0C,$FD ; $C312EA
    db $FD,$77,$FF,$E8,$17,$78,$87,$ED,$52,$F4,$0B,$27,$FE,$00,$45,$ED ; $C312FA
    db $12,$77,$88,$02,$AF,$0A,$E0,$37,$22,$FF,$C2,$11,$EF,$02,$9F,$0A ; $C3130A
    db $09,$00,$AE,$5F,$D9,$22,$C0,$3F,$30,$05,$03,$BE,$FC,$3D,$76,$FE ; $C3131A
    db $BB,$82,$03,$7F,$35,$C5,$B4,$FB,$9B,$03,$01,$0E,$7D,$1F,$7F,$BD ; $C3132A
    db $9B,$FF,$9C,$AF,$FF,$17,$FF,$8F,$FF,$97,$FF,$66,$9B,$0F,$FC,$B7 ; $C3133A
    db $DF,$19,$EF,$AC,$5F,$15,$EF,$8D,$73,$97,$EA,$4B,$3D,$F8,$89,$B7 ; $C3134A
    db $E0,$C8,$51,$DE,$39,$DF,$05,$3C,$D8,$3F,$D0,$3F,$8F,$0F,$8F,$01 ; $C3135A
    db $AC,$33,$C3,$0F,$F2,$7D,$C7,$C9,$04,$0F,$DB,$EA,$5F,$18,$FF,$FD ; $C3136A
    db $F1,$0F,$AC,$FE,$09,$81,$FF,$C1,$3E,$87,$FF,$F1,$0E,$BF,$56,$59 ; $C3137A
    db $D2,$7F,$08,$CE,$B1,$FB,$CB,$E2,$C0,$4E,$7F,$C9,$C3,$C1,$78,$FB ; $C3138A
    db $FA,$8E,$FD,$F4,$29,$FD,$DE,$29,$83,$FD,$FA,$45,$FC,$13,$03,$FF ; $C3139A
    db $FE,$41,$DE,$A1,$BF,$A5,$EE,$10,$B8,$F1,$EF,$80,$74,$EF,$F4,$83 ; $C313AA
    db $91,$8B,$40,$F7,$11,$F7,$A3,$37,$54,$05,$AE,$0B,$7F,$1F,$00,$3F ; $C313BA
    db $00,$1F,$00,$0F,$00,$07,$00,$03,$00,$01,$0B,$47,$3F,$BE,$18,$01 ; $C313CA
    db $18,$8F,$7F,$38,$78,$5F,$58,$01,$80,$00,$01,$C0,$00,$E0,$00,$F0 ; $C313DA
    db $00,$F8,$DF,$7E,$7B,$FE,$2B,$DF,$C0,$37,$5F,$5E,$01,$7E,$80,$5A ; $C313EA
    db $38,$80,$6E,$03,$4B,$07,$80,$58,$80,$09,$84,$80,$04,$1B,$02,$FF ; $C313FA
    db $42,$FF,$59,$20,$05,$5F,$00,$D9,$00,$CF,$01,$03,$C9,$20,$CF,$20 ; $C3140A
    db $82,$D2,$37,$02,$ED,$C9,$07,$03,$12,$00,$03,$7F,$BF,$25,$BF,$32 ; $C3141A
    db $BF,$18,$A4,$BF,$30,$03,$BD,$C4,$D7,$02,$1E,$BF,$1B,$FE,$25,$FA ; $C3142A
    db $32,$CD,$A4,$7B,$30,$CF,$A4,$5B,$84,$7B,$B9,$9E,$5F,$B9,$79,$FF ; $C3143A
    db $A4,$97,$03,$EF,$0D,$24,$EF,$00,$25,$EF,$FF,$DF,$20,$40,$BF,$20 ; $C3144A
    db $DF,$1B,$8C,$03,$24,$DB,$61,$CF,$5C,$7D,$62,$72,$88,$7D,$08,$3A ; $C3145A
    db $08,$FD,$08,$38,$0A,$7C,$00,$3C,$00,$1C,$82,$48,$1F,$48,$F7,$00 ; $C3146A
    db $03,$01,$FF,$41,$FF,$61,$FF,$A7,$12,$00,$57,$00,$22,$03,$17,$C1 ; $C3147A
    db $03,$00,$08,$FF,$62,$01,$E8,$82,$A3,$97,$BE,$82,$0A,$01,$BF,$00 ; $C3148A
    db $05,$C6,$FE,$FF,$16,$E9,$82,$7D,$F0,$01,$01,$FF,$7C,$D7,$70,$55 ; $C3149A
    db $A3,$3E,$FF,$0E,$34,$FE,$2A,$FE,$30,$03,$7E,$1F,$55,$BA,$10,$01 ; $C314AA
    db $EF,$1E,$F1,$34,$EB,$2A,$F5,$00,$03,$DE,$75,$FC,$02,$E1,$01,$00 ; $C314BA
    db $EC,$D8,$1C,$EC,$02,$03,$E2,$12,$A5,$92,$01,$FF,$C0,$02,$01,$03 ; $C314CA
    db $FD,$C8,$FF,$E6,$19,$00,$E7,$01,$01,$AF,$C6,$0E,$BF,$01,$18,$41 ; $C314DA
    db $D7,$41,$77,$09,$FF,$FE,$02,$81,$BF,$68,$BF,$57,$B7,$12,$F7,$98 ; $C314EA
    db $01,$7C,$09,$FD,$54,$62,$FD,$03,$FD,$FF,$E1,$17,$EA,$12,$ED,$12 ; $C314FA
    db $FD,$2C,$F3,$68,$D7,$54,$EB,$8C,$03,$BD,$EB,$F0,$55,$1C,$DF,$4B ; $C3150A
    db $DF,$CB,$5C,$DF,$22,$05,$DF,$61,$C5,$DF,$FF,$DC,$6F,$54,$AB,$4A ; $C3151A
    db $B5,$4C,$FB,$04,$FB,$03,$9E,$2E,$FF,$D4,$3D,$00,$A9,$02,$D1,$04 ; $C3152A
    db $A1,$0A,$C1,$14,$81,$02,$81,$24,$01,$00,$01,$A2,$59,$97,$3D,$14 ; $C3153A
    db $1C,$07,$24,$61,$1D,$81,$EB,$C1,$48,$BF,$D1,$F5,$A9,$73,$EB,$03 ; $C3154A
    db $85,$07,$80,$7F,$A8,$3F,$90,$03,$81,$13,$03,$00,$04,$81,$2A,$81 ; $C3155A
    db $54,$00,$03,$89,$50,$95,$02,$AB,$00,$13,$0E,$FF,$05,$FF,$2A,$A5 ; $C3156A
    db $B7,$2A,$D4,$C5,$03,$3D,$23,$4B,$FB,$75,$80,$03,$F5,$81,$FB,$41 ; $C3157A
    db $F5,$EA,$56,$7F,$F5,$A7,$F7,$4A,$47,$9E,$BF,$87,$19,$F9,$CF,$01 ; $C3158A
    db $27,$C5,$0C,$6F,$5F,$65,$A1,$39,$FC,$C8,$29,$8F,$49,$0C,$87,$8F ; $C3159A
    db $F3,$58,$40,$E0,$9B,$01,$DF,$08,$00,$02,$12,$7B,$9F,$89,$07,$17 ; $C315AA
    db $00,$D1,$08,$18,$A7,$10,$C1,$28,$86,$51,$05,$2A,$83,$5C,$05,$28 ; $C315BA
    db $8B,$50,$04,$FF,$A7,$7D,$E2,$03,$85,$AD,$7F,$00,$F7,$F0,$0F,$A0 ; $C315CA
    db $0F,$C0,$27,$80,$24,$27,$10,$15,$15,$F0,$0F,$00,$F6,$AD,$48,$2B ; $C315DA
    db $B8,$C7,$20,$DA,$60,$44,$21,$9A,$03,$C2,$27,$8A,$3F,$CA,$1F,$3E ; $C315EA
    db $3F,$11,$FA,$5B,$E1,$FD,$12,$FD,$0A,$F5,$98,$01,$BC,$29,$F7,$90 ; $C315FA
    db $E3,$01,$80,$38,$01,$FF,$07,$FF,$75,$F7,$5D,$D7,$90,$D8,$D5,$E9 ; $C3160A
    db $9D,$90,$EF,$88,$0F,$67,$FF,$E2,$33,$E1,$D5,$00,$EB,$00,$F5,$00 ; $C3161A
    db $F1,$0D,$F4,$08,$BF,$08,$E8,$02,$79,$80,$01,$48,$F7,$A1,$EB,$1B ; $C3162A
    db $41,$FD,$81,$03,$AD,$3B,$02,$C1,$F5,$21,$2B,$41,$F5,$56,$68,$F7 ; $C3163A
    db $03,$A4,$A3,$20,$DF,$C0,$07,$CA,$BB,$81,$BB,$82,$31,$BF,$88,$01 ; $C3164A
    db $BB,$89,$C5,$01,$BB,$C7,$FF,$8A,$7D,$81,$7E,$82,$7D,$88,$FF,$88 ; $C3165A
    db $77,$89,$76,$89,$F7,$32,$A9,$FF,$75,$41,$A7,$7B,$11,$F5,$70,$7B ; $C3166A
    db $FD,$77,$01,$61,$E9,$3F,$A5,$03,$7E,$05,$A2,$43,$80,$67,$02,$FF ; $C3167A
    db $FA,$FE,$F6,$EA,$5C,$A9,$FC,$01,$8A,$30,$D3,$BD,$FA,$E7,$36,$01 ; $C3168A
    db $FF,$F9,$F6,$FA,$FF,$F6,$BB,$D0,$F2,$7F,$96,$83,$54,$80,$FA,$49 ; $C3169A
    db $02,$9F,$19,$85,$81,$5C,$C4,$3D,$81,$60,$57,$1F,$42,$1F,$01,$06 ; $C316AA
    db $1E,$10,$3F,$54,$AB,$3D,$C6,$41,$C0,$7F,$01,$57,$82,$2E,$1F,$10 ; $C316BA
    db $D7,$25,$0D,$04,$FF,$84,$CF,$42,$C7,$42,$E7,$22,$E3,$02,$E3,$11 ; $C316CA
    db $87,$D3,$F4,$FB,$CC,$70,$FD,$46,$1A,$BD,$22,$DD,$2B,$E3,$02,$BF ; $C316DA
    db $11,$BE,$04,$B7,$22,$BD,$99,$AF,$42,$FB,$48,$9E,$22,$BB,$D3,$D7 ; $C316EA
    db $D4,$6D,$6B,$57,$BD,$82,$21,$08,$F7,$22,$DF,$28,$C5,$56,$80,$53 ; $C316FA
    db $31,$80,$77,$7F,$08,$DF,$24,$79,$22,$59,$30,$C3,$5B,$01,$AE,$3F ; $C3170A
    db $B8,$70,$3F,$80,$3F,$60,$00,$91,$7F,$81,$77,$8B,$7F,$3F,$19,$3F ; $C3171A
    db $D7,$81,$31,$11,$EE,$80,$D7,$0B,$F5,$3E,$D7,$86,$FB,$70,$BE,$81 ; $C3172A
    db $14,$18,$03,$00,$73,$20,$7F,$28,$6D,$07,$FF,$82,$7D,$BE,$DD,$5A ; $C3173A
    db $3B,$FF,$8F,$99,$03,$28,$F7,$0F,$22,$B3,$81,$49,$FE,$12,$21,$05 ; $C3174A
    db $BB,$68,$DB,$15,$B7,$15,$89,$57,$FE,$52,$3F,$00,$E4,$75,$BA,$3D ; $C3175A
    db $00,$EA,$63,$BD,$B1,$4B,$A3,$7F,$B2,$3D,$0E,$83,$04,$DF,$FD,$F8 ; $C3176A
    db $E9,$16,$04,$C4,$07,$FD,$84,$DF,$08,$9F,$58,$A3,$FB,$22,$FD,$72 ; $C3177A
    db $90,$F7,$C4,$3F,$84,$FB,$8A,$08,$3D,$00,$7F,$F8,$BB,$11,$42,$42 ; $C3178A
    db $05,$DE,$42,$FE,$42,$DF,$75,$B7,$FE,$0C,$61,$DD,$42,$C4,$03,$BF ; $C3179A
    db $FD,$5B,$A3,$DC,$62,$71,$25,$42,$FF,$05,$85,$00,$FB,$58,$51,$FB ; $C317AA
    db $84,$1F,$BF,$A9,$87,$3B,$02,$F7,$06,$51,$79,$D4,$85,$BB,$FB,$22 ; $C317BA
    db $FF,$4A,$6D,$B7,$1F,$A2,$41,$9D,$BB,$67,$BA,$05,$8C,$17,$31,$F7 ; $C317CA
    db $11,$84,$04,$00,$64,$9D,$50,$27,$FD,$24,$FE,$FB,$41,$8D,$C9,$C3 ; $C317DA
    db $0F,$DB,$FE,$A9,$3B,$00,$01,$03,$C1,$FF,$91,$DF,$01,$97,$80,$7F ; $C317EA
    db $F8,$BF,$03,$AB,$48,$E5,$90,$EF,$F8,$53,$30,$FF,$72,$0E,$FF,$F1 ; $C317FA
    db $DE,$50,$C2,$D9,$C2,$F9,$88,$E3,$F7,$1E,$EF,$30,$DF,$72,$AF,$70 ; $C3180A
    db $DF,$30,$1F,$E0,$1F,$0E,$FB,$9F,$D4,$BB,$DF,$20,$29,$B3,$00,$03 ; $C3181A
    db $02,$01,$A0,$E3,$5A,$1F,$5C,$77,$39,$00,$E9,$DF,$CC,$7F,$99,$FB ; $C3182A
    db $1D,$BF,$7F,$FE,$43,$01,$78,$80,$01,$E8,$FF,$F5,$FB,$77,$30,$FF ; $C3183A
    db $EC,$47,$E1,$B0,$FF,$77,$B8,$83,$F7,$B0,$DF,$80,$99,$33,$03,$24 ; $C3184A
    db $CC,$3B,$03,$20,$87,$07,$08,$B5,$80,$7F,$D2,$5B,$F5,$69,$00,$71 ; $C3185A
    db $B7,$04,$AF,$08,$BD,$01,$3F,$40,$DF,$50,$B6,$44,$BF,$40,$9B,$00 ; $C3186A
    db $AE,$25,$DB,$64,$A1,$04,$C5,$06,$BF,$22,$60,$03,$FB,$06,$DF,$12 ; $C3187A
    db $08,$FF,$A2,$FF,$22,$8A,$1B,$3A,$79,$06,$F0,$57,$3F,$75,$12,$31 ; $C3188A
    db $B7,$83,$FF,$F7,$7F,$C2,$7E,$18,$01,$7F,$7F,$35,$3F,$F3,$8C,$FF ; $C3189A
    db $77,$76,$8A,$61,$0E,$BF,$7D,$87,$2B,$A5,$E1,$41,$80,$FF,$01,$21 ; $C318AA
    db $7F,$01,$FF,$21,$EB,$41,$6C,$29,$D6,$7D,$DF,$40,$5A,$E7,$18,$03 ; $C318BA
    db $0F,$48,$3F,$06,$61,$3B,$40,$2F,$44,$7F,$18,$3D,$40,$3F,$0B,$41 ; $C318CA
    db $3B,$65,$08,$25,$DE,$B7,$3F,$41,$05,$FF,$0A,$83,$7F,$FB,$02,$6F ; $C318DA
    db $42,$6E,$81,$F7,$BB,$15,$32,$90,$9B,$39,$8A,$63,$39,$03,$9F,$30 ; $C318EA
    db $EF,$C0,$1F,$BF,$A0,$7F,$61,$01,$19,$81,$7F,$82,$01,$7E,$50,$7F ; $C318FA
    db $C0,$EB,$D4,$35,$E0,$45,$31,$3D,$C7,$03,$67,$8B,$40,$DB,$03,$81 ; $C3190A
    db $05,$BD,$05,$7D,$73,$05,$7F,$12,$17,$FD,$5F,$D0,$C3,$01,$D9,$0F ; $C3191A
    db $12,$BB,$D9,$85,$D7,$C7,$03,$BE,$18,$03,$B7,$0F,$42,$BB,$00,$44 ; $C3192A
    db $EF,$50,$D7,$28,$FF,$82,$BE,$C1,$B6,$10,$B7,$4A,$82,$80,$08,$B7 ; $C3193A
    db $E2,$FF,$42,$EF,$EA,$3B,$FF,$E2,$2B,$A9,$F2,$D3,$B9,$E0,$1F,$18 ; $C3194A
    db $7F,$A8,$57,$05,$70,$8F,$1F,$F0,$4F,$7E,$01,$4A,$1D,$DF,$2C,$01 ; $C3195A
    db $0A,$FF,$7E,$A1,$2F,$E0,$99,$BF,$40,$01,$DB,$2E,$F6,$09,$15,$FE ; $C3196A
    db $DA,$5C,$16,$DF,$01,$EB,$B0,$C7,$D8,$27,$62,$FC,$75,$03,$00,$2D ; $C3197A
    db $47,$3A,$03,$FE,$07,$30,$FC,$FF,$F9,$52,$F5,$F8,$19,$FD,$F4,$FF ; $C3198A
    db $61,$F0,$72,$FE,$E8,$FF,$64,$DB,$F1,$3F,$EC,$FF,$98,$F7,$34,$FB ; $C3199A
    db $EA,$F7,$F0,$CF,$E8,$57,$24,$EC,$B3,$24,$41,$63,$05,$64,$C2,$03 ; $C319AA
    db $E4,$E3,$5A,$B5,$0E,$01,$60,$E4,$6B,$E0,$9F,$7D,$F2,$07,$26,$DF ; $C319BA
    db $F2,$0D,$B7,$F1,$04,$0F,$A4,$A3,$8C,$33,$04,$F3,$E9,$03,$98,$0F ; $C319CA
    db $A0,$5F,$D0,$B7,$07,$B1,$0F,$FE,$E3,$07,$FF,$F6,$89,$C1,$06,$FF ; $C319DA
    db $80,$DF,$A0,$FF,$86,$10,$E0,$FD,$E0,$03,$3A,$FB,$B2,$36,$65,$FD ; $C319EA
    db $41,$1C,$44,$BB,$E0,$45,$C1,$01,$B2,$4D,$F0,$2F,$E2,$18,$FF,$F8 ; $C319FA
    db $FF,$05,$E3,$00,$E8,$B9,$E7,$32,$F8,$07,$02,$FC,$44,$FF,$01,$AC ; $C31A0A
    db $47,$F3,$04,$01,$01,$DF,$08,$0F,$07,$47,$B1,$8F,$08,$2F,$FF,$00 ; $C31A1A
    db $04,$FD,$AF,$1E,$01,$FE,$06,$01,$AE,$FB,$C1,$04,$01,$C5,$07,$41 ; $C31A2A
    db $03,$FF,$C3,$0C,$FE,$30,$FA,$C0,$F4,$00,$AA,$00,$54,$00,$2A,$00 ; $C31A3A
    db $03,$03,$FC,$0C,$F3,$30,$CF,$C0,$58,$3F,$1F,$C0,$E3,$F3,$AC,$B0 ; $C31A4A
    db $1F,$AB,$FF,$D5,$A6,$03,$19,$B8,$68,$F0,$0F,$AC,$53,$D7,$28,$AB ; $C31A5A
    db $54,$D4,$2B,$AA,$55,$03,$48,$33,$03,$01,$0F,$54,$05,$20,$2B,$09 ; $C31A6A
    db $A6,$9F,$CC,$37,$03,$35,$04,$FF,$0B,$BF,$03,$D7,$24,$33,$03,$2E ; $C31A7A
    db $34,$CB,$3C,$0A,$F5,$02,$FD,$55,$80,$2A,$40,$15,$AA,$0A,$45,$00 ; $C31A8A
    db $A8,$00,$55,$83,$45,$15,$C0,$E5,$AA,$FF,$45,$FF,$A8,$FF,$70,$55 ; $C31A9A
    db $07,$15,$FF,$86,$14,$23,$66,$A0,$57,$28,$63,$09,$05,$A8,$0A,$40 ; $C31AAA
    db $77,$09,$3B,$03,$28,$EE,$E3,$A8,$2E,$2B,$40,$3D,$0A,$A8,$05,$14 ; $C31ABA
    db $82,$88,$41,$C4,$20,$22,$91,$B4,$C8,$82,$C1,$0A,$F7,$FF,$82,$52 ; $C31ACA
    db $39,$20,$03,$FF,$11,$FF,$88,$FF,$A1,$0E,$41,$A0,$2A,$50,$13,$03 ; $C31ADA
    db $40,$55,$3A,$03,$A0,$87,$17,$A0,$2C,$37,$03,$C5,$B8,$12,$00,$C3 ; $C31AEA
    db $AE,$00,$1D,$00,$5B,$00,$36,$00,$95,$00,$92,$00,$B7,$0F,$1D,$39 ; $C31AFA
    db $22,$42,$7B,$48,$92,$01,$FA,$A5,$AA,$90,$9C,$03,$7E,$FF,$07,$85 ; $C31B0A
    db $87,$33,$8F,$04,$03,$48,$FF,$06,$3D,$01,$55,$03,$3B,$0F,$03,$0E ; $C31B1A
    db $B3,$DF,$DE,$12,$5F,$18,$1F,$F7,$18,$5F,$A3,$18,$1F,$87,$12,$0A ; $C31B2A
    db $BB,$03,$1F,$DE,$F6,$E3,$CD,$D7,$02,$1F,$18,$89,$30,$0A,$18,$04 ; $C31B3A
    db $EC,$A6,$36,$52,$1F,$BB,$1B,$4B,$1F,$AB,$1F,$A8,$75,$04,$FB,$26 ; $C31B4A
    db $03,$DB,$12,$FF,$1B,$F7,$0A,$AB,$91,$E8,$18,$5F,$7A,$33,$04,$03 ; $C31B5A
    db $1E,$33,$04,$01,$8A,$48,$FF,$D0,$04,$06,$03,$8B,$20,$84,$50,$03 ; $C31B6A
    db $8A,$14,$0D,$05,$03,$1C,$20,$FF,$51,$03,$0E,$81,$AB,$01,$D5,$A7 ; $C31B7A
    db $B7,$87,$03,$41,$D5,$52,$C3,$FD,$8F,$C9,$7B,$03,$2A,$05,$87,$80 ; $C31B8A
    db $44,$A1,$C3,$0E,$C0,$04,$84,$2C,$8C,$55,$15,$A5,$8D,$5F,$3D,$B3 ; $C31B9A
    db $F9,$0A,$A4,$05,$2F,$FB,$B8,$60,$54,$FB,$A1,$FF,$4D,$FE,$BD,$F6 ; $C31BAA
    db $A1,$EB,$51,$F5,$09,$81,$DD,$01,$AF,$1D,$C1,$FD,$F1,$59,$EF,$53 ; $C31BBA
    db $FF,$08,$41,$81,$C9,$FE,$03,$D5,$54,$70,$FF,$03,$02,$AB,$71,$10 ; $C31BCA
    db $03,$04,$F6,$02,$AA,$FB,$10,$C7,$89,$80,$40,$AC,$AB,$E8,$57,$1D ; $C31BDA
    db $F0,$AF,$E0,$40,$F0,$00,$73,$0C,$C1,$39,$54,$AB,$A8,$57,$09,$43 ; $C31BEA
    db $5C,$83,$D5,$2A,$B8,$67,$AB,$40,$D5,$0A,$AB,$14,$D1,$2C,$A1,$1A ; $C31BFA
    db $D1,$04,$47,$2A,$44,$53,$58,$BD,$2D,$39,$FF,$1A,$C3,$8C,$1F,$79 ; $C31C0A
    db $F9,$C3,$10,$00,$BF,$08,$DF,$04,$AF,$02,$D7,$01,$E0,$CB,$79,$86 ; $C31C1A
    db $20,$11,$DF,$10,$EF,$A2,$43,$8C,$A7,$A9,$80,$7B,$00,$06,$01,$F8 ; $C31C2A
    db $28,$FF,$F7,$38,$3F,$9E,$19,$1F,$01,$07,$01,$F3,$47,$3F,$FF,$CF ; $C31C3A
    db $17,$BF,$FF,$57,$3D,$FF,$FF,$37,$1F,$FB,$38,$5F,$DD,$18,$5F,$7F ; $C31C4A
    db $C0,$55,$DE,$7F,$05,$3B,$CF,$1D,$03,$09,$E8,$8F,$06,$00,$0D,$B8 ; $C31C5A
    db $44,$00,$1B,$00,$37,$00,$6F,$00,$DF,$00,$BF,$00,$7F,$80,$99,$0B ; $C31C6A
    db $FF,$17,$FF,$2F,$FF,$5F,$0F,$FF,$BF,$FF,$7F,$1A,$7B,$1F,$08,$EF ; $C31C7A
    db $DD,$07,$00,$C8,$53,$60,$00,$B0,$3B,$00,$D8,$C0,$82,$F6,$00,$FB ; $C31C8A
    db $00,$2A,$FD,$80,$EE,$97,$D0,$A4,$C9,$F4,$FF,$77,$FA,$FC,$4F,$07 ; $C31C9A
    db $DD,$80,$F7,$09,$BF,$FD,$07,$21,$FE,$E7,$16,$5F,$FF,$83,$08,$5F ; $C31CAA
    db $FC,$FF,$C3,$F8,$0E,$01,$3F,$C3,$FF,$EB,$A3,$AA,$81,$AF,$FC,$03 ; $C31CBA
    db $DB,$24,$89,$01,$FC,$00,$7A,$5E,$C5,$06,$3F,$41,$FF,$9F,$41,$01 ; $C31CCA
    db $77,$BF,$D7,$DD,$7B,$18,$DF,$F5,$DF,$F1,$FF,$41,$BE,$FF,$21,$FE ; $C31CDA
    db $21,$41,$01,$BE,$43,$FE,$F4,$13,$E1,$33,$48,$FE,$01,$23,$E0,$01 ; $C31CEA
    db $3F,$FF,$1D,$1D,$E4,$D1,$2E,$43,$3B,$22,$BD,$EE,$66,$32,$01,$DD ; $C31CFA
    db $10,$01,$02,$19,$F7,$1D,$F7,$13,$F5,$8B,$08,$5B,$C5,$86,$7D,$DF ; $C31D0A
    db $FB,$DD,$F3,$1D,$5F,$A1,$BF,$45,$FF,$09,$30,$C0,$45,$F7,$4C,$AF ; $C31D1A
    db $D7,$EE,$60,$1F,$44,$97,$81,$8F,$FF,$8A,$41,$87,$57,$7D,$AE,$7D ; $C31D2A
    db $5F,$D6,$00,$25,$7F,$68,$FF,$05,$04,$00,$7B,$18,$44,$FF,$84,$7F ; $C31D3A
    db $E3,$9E,$05,$C0,$FF,$1F,$00,$83,$01,$C9,$55,$FF,$BA,$FF,$F8,$D5 ; $C31D4A
    db $B5,$23,$FF,$E0,$1D,$14,$EF,$38,$50,$A0,$10,$EF,$B0,$98,$63,$7F ; $C31D5A
    db $01,$18,$7F,$17,$C5,$4F,$37,$3C,$F4,$7F,$EF,$77,$CF,$74,$E8,$17 ; $C31D6A
    db $E9,$16,$EA,$95,$FD,$9A,$FB,$86,$D9,$36,$BB,$5F,$BF,$78,$2C,$FB ; $C31D7A
    db $01,$3C,$00,$EB,$7C,$FB,$D4,$EB,$44,$FB,$EC,$C0,$09,$83,$BF,$40 ; $C31D8A
    db $7F,$80,$8E,$01,$7A,$B7,$C8,$F7,$48,$EF,$83,$4E,$40,$00,$C0,$D5 ; $C31D9A
    db $BE,$47,$C3,$EB,$01,$DB,$C8,$FE,$A0,$FB,$C1,$55,$D1,$01,$A8,$57 ; $C31DAA
    db $C3,$3D,$A2,$5F,$C8,$DE,$99,$67,$C1,$3F,$69,$55,$C0,$13,$B0,$FF ; $C31DBA
    db $27,$B7,$08,$B7,$77,$F7,$FF,$EB,$1D,$55,$BA,$84,$B0,$2E,$4F,$27 ; $C31DCA
    db $1D,$D8,$11,$EF,$97,$7F,$6E,$FF,$A3,$FF,$C7,$FF,$8E,$80,$EB,$9F ; $C31DDA
    db $FF,$3E,$FE,$BF,$FF,$20,$3D,$FD,$33,$8A,$2E,$7F,$57,$DC,$AF,$96 ; $C31DEA
    db $7F,$2E,$DE,$AC,$5F,$2D,$FD,$F9,$F8,$E7,$E6,$DF,$DE,$7F,$7E,$BE ; $C31DFA
    db $BE,$DB,$D8,$EB,$E7,$FD,$ED,$F0,$F9,$C0,$E7,$8C,$DF,$50,$FF,$83 ; $C31E0A
    db $FE,$48,$3B,$24,$28,$FD,$5F,$8A,$1C,$67,$FC,$E3,$4D,$E3,$5F,$17 ; $C31E1A
    db $9D,$31,$FC,$F3,$6E,$E3,$9C,$66,$1F,$EE,$02,$30,$FB,$20,$FB,$80 ; $C31E2A
    db $E7,$C0,$1F,$38,$DF,$30,$EF,$77,$20,$57,$05,$B0,$5C,$BF,$8C,$8E ; $C31E3A
    db $BF,$BE,$BD,$BD,$BA,$BA,$B5,$35,$9B,$CB,$2B,$2B,$9F,$BF,$86,$8B ; $C31E4A
    db $B2,$BD,$A5,$BE,$8A,$BE,$35,$FD,$8A,$FB,$2A,$3B,$44,$EC,$FD,$3B ; $C31E5A
    db $10,$7F,$C0,$1F,$9F,$80,$8F,$A0,$03,$CF,$E0,$C7,$44,$BF,$A0,$77 ; $C31E6A
    db $7D,$1D,$79,$CF,$CF,$7C,$9D,$40,$BF,$B8,$E3,$41,$3C,$AA,$47,$0D ; $C31E7A
    db $43,$CD,$43,$6F,$41,$97,$61,$4B,$31,$B3,$19,$19,$3E,$D1,$70,$54 ; $C31E8A
    db $01,$90,$3F,$19,$C8,$1F,$E4,$01,$55,$70,$28,$AA,$51,$55,$A8,$8A ; $C31E9A
    db $D5,$85,$EA,$40,$D5,$40,$C7,$03,$DD,$28,$77,$95,$03,$03,$95,$7F ; $C31EAA
    db $AA,$7F,$D5,$80,$03,$9D,$7F,$4D,$09,$FD,$0D,$09,$AD,$F9,$0D,$01 ; $C31EBA
    db $C7,$07,$5D,$0C,$07,$0F,$F2,$01,$AF,$43,$52,$05,$18,$01,$5F,$A2 ; $C31ECA
    db $03,$40,$CA,$00,$7F,$FF,$7B,$CC,$46,$F9,$40,$FF,$90,$01,$8A,$7F ; $C31EDA
    db $0F,$B7,$48,$BF,$40,$02,$4A,$01,$80,$DF,$AA,$50,$45,$AA,$4B,$02 ; $C31EEA
    db $F5,$42,$43,$DF,$50,$A1,$8B,$55,$49,$03,$00,$14,$A8,$01,$40,$08 ; $C31EFA
    db $80,$55,$0B,$40,$AA,$01,$57,$4A,$97,$08,$41,$1F,$FE,$06,$AC,$D8 ; $C31F0A
    db $36,$20,$30,$49,$EF,$01,$87,$19,$AC,$FB,$DF,$FA,$04,$24,$00,$21 ; $C31F1A
    db $06,$AF,$1F,$6F,$73,$6F,$01,$AE,$D0,$07,$1F,$5F,$06,$54,$09,$28 ; $C31F2A
    db $55,$15,$5B,$04,$52,$03,$AA,$03,$D6,$0C,$14,$09,$FE,$57,$A9,$B9 ; $C31F3A
    db $66,$FE,$51,$FE,$AB,$FC,$57,$FC,$05,$38,$12,$84,$1B,$06,$3A,$06 ; $C31F4A
    db $7F,$06,$6C,$1C,$59,$0B,$78,$1D,$B8,$F4,$F0,$6F,$FE,$E1,$FE,$C1 ; $C31F5A
    db $FE,$83,$FC,$87,$F8,$9F,$E0,$9F,$43,$AA,$0B,$14,$02,$03,$FE,$0F ; $C31F6A
    db $01,$AB,$FC,$06,$91,$9E,$55,$70,$5F,$80,$01,$7F,$5E,$7F,$50,$7E ; $C31F7A
    db $51,$A3,$07,$E0,$81,$33,$E7,$9C,$EE,$91,$46,$07,$9E,$07,$FA,$09 ; $C31F8A
    db $FD,$0F,$18,$7D,$2F,$47,$1F,$F4,$38,$FB,$BF,$38,$3F,$C0,$98,$1F ; $C31F9A
    db $49,$1E,$A8,$1F,$44,$79,$18,$02,$1F,$08,$D0,$79,$03,$F3,$43,$5F ; $C31FAA
    db $15,$AD,$7F,$78,$05,$03,$1F,$C8,$BF,$0F,$08,$F7,$F8,$EF,$62,$79 ; $C31FBA
    db $DF,$18,$01,$1F,$E3,$07,$01,$1E,$EB,$DE,$06,$01,$38,$3F,$8F,$1E ; $C31FCA
    db $2B,$00,$13,$95,$F7,$18,$1F,$98,$9D,$01,$FE,$01,$01,$FC,$01,$02 ; $C31FDA
    db $F8,$05,$F0,$0A,$C0,$01,$5E,$45,$E3,$AE,$59,$08,$BB,$83,$C0,$EC ; $C31FEA
    db $47,$FF,$FF,$0A,$3E,$DF,$17,$9F,$1D,$3A,$B7,$1F,$CF,$26,$5F,$FF ; $C31FFA
    db $57,$B5,$7F,$FF,$EF,$17,$3F,$0B,$DD,$9D,$CD,$45,$C3,$3F,$20,$1F ; $C3200A
    db $10,$0F,$08,$07,$04,$03,$02,$01,$BF,$BE,$CB,$2F,$EA,$55,$BF,$0B ; $C3201A
    db $CB,$85,$01,$EE,$17,$4F,$7F,$AF,$3D,$3F,$16,$81,$E7,$04,$5F,$00 ; $C3202A
    db $9D,$25,$5F,$FE,$4A,$15,$01,$E3,$FE,$02,$FC,$04,$F8,$08,$F0,$10 ; $C3203A
    db $E0,$20,$C0,$40,$80,$80,$00,$FA,$D4,$BA,$B7,$E8,$98,$BF,$F5,$BB ; $C3204A
    db $80,$1F,$09,$F3,$05,$1F,$00,$DF,$09,$1F,$18,$80,$5F,$46,$FD,$E6 ; $C3205A
    db $DD,$64,$DF,$C0,$C8,$BE,$7F,$28,$FF,$AC,$15,$7B,$2C,$FB,$42,$8A ; $C3206A
    db $04,$E1,$C3,$3F,$D6,$29,$EA,$35,$FD,$2A,$EF,$38,$13,$FD,$00,$01 ; $C3207A
    db $D3,$FD,$F1,$DD,$30,$6B,$D3,$ED,$19,$F7,$FE,$41,$1F,$01,$BE,$80 ; $C3208A
    db $31,$5F,$FC,$49,$6F,$B1,$9F,$18,$71,$3C,$FB,$01,$3E,$FF,$1C,$1F ; $C3209A
    db $E0,$80,$6D,$8E,$81,$5D,$F7,$28,$D7,$38,$E6,$39,$23,$5C,$17,$86 ; $C320AA
    db $04,$1D,$F7,$33,$60,$7D,$01,$87,$85,$FF,$8F,$57,$F5,$B8,$BB,$F2 ; $C320BA
    db $11,$7E,$71,$A1,$B6,$85,$9C,$01,$7A,$0F,$20,$CC,$77,$01,$CF,$03 ; $C320CA
    db $77,$C7,$77,$AC,$4F,$FC,$A9,$CB,$20,$FF,$78,$01,$F9,$B9,$E1,$7F ; $C320DA
    db $FB,$7C,$F1,$26,$E6,$1D,$E9,$16,$C6,$BF,$C5,$BE,$93,$FC,$F8,$FF ; $C320EA
    db $6C,$FB,$2D,$FA,$3E,$EB,$7E,$9F,$02,$FB,$84,$83,$6A,$5F,$F8,$6F ; $C320FA
    db $90,$A9,$C7,$E6,$6B,$31,$00,$9C,$7F,$9E,$7F,$8F,$70,$80,$7F,$20 ; $C3210A
    db $87,$7F,$5F,$EA,$09,$15,$ED,$12,$FE,$63,$56,$03,$43,$AD,$1B,$1B ; $C3211A
    db $6E,$DB,$4F,$33,$0C,$01,$83,$C3,$BF,$01,$BF,$80,$7F,$0A,$FF,$48 ; $C3212A
    db $3B,$BF,$52,$03,$7A,$82,$7D,$82,$F8,$3F,$03,$0F,$BD,$FD,$3D,$FD ; $C3213A
    db $B8,$AC,$B9,$03,$B8,$F8,$3B,$FB,$BB,$FB,$17,$03,$9D,$7D,$2C,$19 ; $C3214A
    db $FD,$98,$77,$1F,$FF,$98,$78,$1B,$FB,$9A,$7B,$1A,$FB,$CB,$DB,$F7 ; $C3215A
    db $D7,$BF,$1F,$03,$17,$2E,$17,$EB,$38,$EB,$F4,$F4,$E8,$E8,$03,$FB ; $C3216A
    db $14,$F7,$44,$BF,$C4,$F7,$10,$37,$A0,$09,$FC,$08,$62,$EF,$33,$38 ; $C3217A
    db $F8,$1C,$37,$07,$EA,$76,$FF,$0B,$33,$1C,$18,$F8,$9B,$37,$61,$98 ; $C3218A
    db $07,$F7,$9F,$7F,$80,$0B,$DE,$DE,$3E,$3E,$BF,$BE,$D8,$01,$00,$04 ; $C3219A
    db $00,$74,$FE,$5C,$2D,$3A,$13,$DE,$21,$3F,$A0,$BF,$20,$BF,$21,$BF ; $C321AA
    db $03,$FE,$C1,$4D,$01,$E3,$F3,$C1,$00,$F0,$F7,$F7,$8B,$5B,$ED,$ED ; $C321BA
    db $86,$4B,$5B,$37,$37,$82,$FB,$10,$FB,$04,$FB,$07,$FF,$5B,$00,$09 ; $C321CA
    db $F5,$42,$7B,$24,$D7,$C8,$C7,$C6,$01,$88,$07,$03,$21,$08,$07,$09 ; $C321DA
    db $9C,$01,$40,$C3,$19,$60,$DF,$C0,$05,$3F,$58,$DD,$FF,$CF,$69,$CF ; $C321EA
    db $D6,$0C,$00,$7D,$84,$DC,$80,$03,$80,$C8,$CF,$B0,$BF,$A0,$80,$01 ; $C321FA
    db $80,$BF,$06,$F9,$FB,$82,$0F,$C7,$C9,$01,$3F,$45,$02,$48,$F9,$45 ; $C3220A
    db $BD,$00,$F9,$DD,$F9,$AF,$FB,$DD,$F8,$AD,$E6,$07,$03,$00,$CD,$F9 ; $C3221A
    db $BF,$42,$DF,$22,$AF,$D2,$B2,$03,$E1,$CF,$32,$70,$FF,$78,$FE,$4C ; $C3222A
    db $FE,$6F,$DE,$7F,$FF,$25,$01,$C3,$B7,$48,$BA,$45,$AC,$53,$BF,$40 ; $C3223A
    db $80,$7F,$BF,$4E,$0C,$01,$B1,$7F,$9D,$33,$FB,$00,$8B,$FF,$CD,$FC ; $C3224A
    db $8B,$FC,$CF,$FB,$30,$8D,$F9,$01,$9F,$E2,$CF,$00,$30,$8F,$F3,$ED ; $C3225A
    db $32,$8F,$F0,$ED,$C0,$07,$72,$AF,$72,$4E,$FF,$02,$EA,$FE,$40,$FE ; $C3226A
    db $71,$CE,$CC,$3F,$39,$AA,$69,$55,$01,$88,$3F,$4F,$B1,$A9,$AF,$AA ; $C3227A
    db $AA,$F0,$04,$F8,$00,$86,$1F,$05,$0E,$08,$F7,$FF,$25,$CF,$AB,$FF ; $C3228A
    db $06,$3C,$1F,$EF,$01,$1F,$28,$55,$D7,$8F,$00,$EF,$10,$70,$3F,$10 ; $C3229A
    db $95,$FF,$67,$42,$04,$1C,$8F,$07,$1F,$F7,$08,$01,$3A,$1F,$15,$C0 ; $C322AA
    db $C8,$FF,$43,$FE,$63,$33,$CA,$EB,$F3,$42,$A6,$6C,$41,$01,$00,$EB ; $C322BA
    db $14,$83,$01,$FF,$60,$23,$DC,$AC,$84,$07,$A0,$FF,$FC,$5F,$7F,$82 ; $C322CA
    db $06,$01,$EF,$9A,$EF,$95,$80,$03,$98,$EF,$94,$EF,$90,$DD,$05,$48 ; $C322DA
    db $F3,$AA,$AB,$02,$E8,$4F,$57,$FE,$3C,$7A,$3F,$36,$AB,$54,$01,$05 ; $C322EA
    db $19,$03,$FC,$FF,$45,$2C,$E5,$02,$3F,$5D,$0E,$03,$DF,$FF,$50,$33 ; $C322FA
    db $01,$ED,$92,$E0,$03,$96,$6F,$10,$77,$FF,$22,$59,$AD,$FF,$CA,$83 ; $C3230A
    db $03,$E8,$FF,$DA,$B0,$C2,$DF,$68,$AD,$10,$52,$CA,$3D,$03,$05,$E8 ; $C3231A
    db $17,$DA,$25,$AA,$72,$97,$95,$EE,$14,$A3,$85,$03,$C6,$BB,$D5,$2A ; $C3232A
    db $03,$02,$95,$6A,$A8,$57,$85,$7A,$0E,$03,$E8,$E5,$C5,$E8,$DC,$C1 ; $C3233A
    db $17,$03,$EF,$01,$07,$37,$FA,$45,$88,$03,$F8,$47,$06,$03,$EF,$3F ; $C3234A
    db $FF,$47,$E2,$1E,$81,$FF,$88,$03,$03,$00,$28,$D7,$81,$7E,$88,$77 ; $C3235A
    db $81,$FE,$80,$03,$08,$F7,$83,$1E,$FC,$48,$27,$06,$01,$FE,$28,$FA ; $C3236A
    db $DB,$38,$3F,$BD,$76,$B8,$4A,$01,$02,$06,$04,$0C,$08,$18,$10,$11 ; $C3237A
    db $20,$23,$00,$A5,$D3,$FD,$05,$D2,$FB,$0A,$F7,$14,$EF,$29,$DF,$0F ; $C3238A
    db $1F,$67,$F0,$38,$81,$C0,$17,$00,$6F,$07,$DF,$10,$BF,$4E,$60,$0F ; $C3239A
    db $F0,$60,$9F,$01,$BD,$5F,$BB,$65,$57,$F8,$97,$EF,$40,$BF,$10,$66 ; $C323AA
    db $51,$4D,$60,$4B,$22,$D6,$A1,$8E,$C5,$9E,$C5,$BE,$C4,$9E,$02,$FF ; $C323BA
    db $45,$BE,$48,$BF,$16,$FD,$88,$7F,$9E,$7B,$BE,$7B,$03,$90,$C7,$C7 ; $C323CA
    db $00,$9F,$03,$3F,$88,$7E,$12,$79,$00,$F3,$28,$F7,$20,$EF,$E7,$B1 ; $C323DA
    db $83,$BB,$FC,$71,$7A,$F7,$7D,$EF,$CB,$FF,$F7,$DF,$EF,$DF,$E0,$F0 ; $C323EA
    db $0C,$1E,$01,$B3,$8F,$6E,$1F,$11,$C0,$F6,$10,$FB,$84,$1D,$E0,$1F ; $C323FA
    db $0C,$F3,$A1,$FE,$E8,$1F,$D4,$3F,$D2,$13,$EF,$15,$FB,$F4,$76,$C0 ; $C3240A
    db $40,$01,$60,$28,$30,$14,$10,$0A,$88,$F7,$01,$D3,$30,$BF,$20,$8F ; $C3241A
    db $EF,$08,$F7,$75,$02,$7B,$6C,$C3,$50,$7F,$10,$86,$15,$08,$FB,$01 ; $C3242A
    db $01,$FE,$FD,$FF,$FE,$BE,$7F,$3F,$D8,$E8,$E7,$FF,$35,$FB,$F7,$01 ; $C3243A
    db $C7,$02,$CC,$05,$64,$05,$B4,$81,$DE,$03,$EE,$43,$D6,$43,$DA,$43 ; $C3244A
    db $DE,$5C,$2B,$BE,$44,$FB,$24,$FB,$D0,$7F,$2A,$FD,$D6,$BD,$DA,$BD ; $C3245A
    db $DE,$BD,$50,$07,$A8,$03,$54,$01,$02,$97,$9F,$04,$F7,$0D,$15,$80 ; $C3246A
    db $01,$7F,$80,$3F,$40,$1F,$26,$A0,$0F,$7F,$EB,$BA,$DD,$20,$87,$3F ; $C3247A
    db $08,$D3,$19,$DF,$EF,$21,$5F,$38,$66,$01,$9F,$1F,$6B,$B2,$7F,$0E ; $C3248A
    db $9F,$10,$A3,$E3,$CC,$18,$35,$C0,$9F,$20,$03,$95,$21,$51,$21,$90 ; $C3249A
    db $21,$00,$07,$94,$23,$51,$23,$96,$23,$28,$19,$FF,$29,$FE,$01,$28 ; $C324AA
    db $D2,$9A,$2A,$30,$FF,$09,$03,$FD,$FE,$FF,$25,$FC,$FE,$63,$39,$3F ; $C324BA
    db $A7,$29,$17,$03,$FA,$5D,$0C,$F8,$2F,$3B,$FC,$3B,$EC,$DB,$FC,$BB ; $C324CA
    db $CD,$DB,$3D,$03,$54,$2E,$26,$80,$3D,$3D,$40,$24,$9C,$03,$50,$21 ; $C324DA
    db $91,$23,$40,$3F,$A4,$01,$0E,$FB,$08,$2E,$F3,$02,$03,$3B,$03,$FE ; $C324EA
    db $0C,$FF,$18,$BE,$6D,$3F,$A5,$03,$BF,$AF,$70,$5A,$BF,$3B,$CD,$5A ; $C324FA
    db $BD,$3B,$ED,$FB,$5D,$FB,$3D,$C0,$03,$63,$BD,$55,$00,$0A,$1E,$F0 ; $C3250A
    db $01,$FC,$04,$93,$71,$30,$B7,$01,$F6,$0A,$83,$3F,$80,$2A,$C0,$15 ; $C3251A
    db $E0,$7E,$2B,$28,$17,$0E,$05,$F8,$02,$FC,$1D,$5F,$FE,$01,$64,$03 ; $C3252A
    db $8A,$11,$04,$A6,$FF,$5E,$3F,$C5,$01,$19,$07,$BF,$4B,$1F,$AB,$1F ; $C3253A
    db $8F,$04,$03,$0A,$FF,$06,$78,$01,$38,$3F,$BC,$FF,$78,$3C,$05,$03 ; $C3254A
    db $9C,$7B,$3D,$1C,$FB,$04,$03,$EF,$18,$DF,$38,$78,$3F,$18,$01,$08 ; $C3255A
    db $C7,$F7,$06,$01,$BA,$48,$3F,$D2,$35,$44,$A0,$E1,$41,$A0,$02,$80 ; $C3256A
    db $08,$80,$04,$80,$1A,$30,$77,$00,$59,$FD,$02,$D2,$59,$04,$EC,$1D ; $C3257A
    db $30,$54,$DF,$B8,$FE,$40,$03,$08,$E0,$03,$20,$00,$48,$84,$33,$7D ; $C3258A
    db $83,$08,$C7,$03,$20,$78,$DF,$F6,$C0,$15,$2B,$00,$15,$00,$43,$E0 ; $C3259A
    db $03,$01,$00,$09,$CE,$03,$08,$87,$B7,$14,$75,$78,$14,$30,$23,$80 ; $C325AA
    db $20,$80,$EA,$69,$96,$03,$56,$A8,$9F,$20,$3D,$40,$F3,$0F,$AD,$FD ; $C325BA
    db $C4,$07,$0F,$D9,$77,$48,$23,$80,$DF,$40,$7C,$BF,$03,$BC,$33,$3F ; $C325CA
    db $05,$DF,$31,$3D,$01,$FF,$04,$01,$17,$3D,$A4,$01,$DD,$07,$C4,$11 ; $C325DA
    db $9D,$01,$59,$B3,$3C,$07,$06,$01,$0F,$07,$EF,$1F,$9F,$3F,$7F,$27 ; $C325EA
    db $00,$23,$21,$0C,$F7,$10,$99,$D7,$6F,$40,$DD,$6B,$00,$80,$FF,$2B ; $C325FA
    db $FF,$F0,$FB,$F8,$FD,$67,$FC,$01,$FE,$51,$AC,$CC,$03,$00,$30,$76 ; $C3260A
    db $EF,$19,$EC,$D5,$AA,$30,$FD,$5E,$10,$FB,$FE,$55,$51,$FF,$B3,$A0 ; $C3261A
    db $D2,$9F,$30,$18,$FB,$40,$E7,$09,$17,$FE,$38,$7D,$D2,$0F,$5F,$1D ; $C3262A
    db $1F,$F8,$33,$7C,$9D,$49,$FA,$E3,$22,$20,$A4,$7F,$E0,$F0,$57,$00 ; $C3263A
    db $80,$D5,$FA,$85,$55,$AB,$20,$02,$DF,$3F,$D8,$E0,$3F,$E0,$81,$7F ; $C3264A
    db $D5,$00,$AB,$00,$EF,$04,$03,$08,$07,$9F,$01,$AB,$01,$D5,$BD,$04 ; $C3265A
    db $03,$08,$1F,$E0,$38,$3F,$B9,$F9,$39,$F9,$34,$BA,$FA,$03,$A9,$C3 ; $C3266A
    db $C0,$03,$99,$79,$18,$F9,$98,$68,$7A,$03,$A6,$C3,$29,$FF,$03,$9F ; $C3267A
    db $9E,$BF,$BE,$7F,$7E,$00,$05,$EF,$EF,$F6,$F6,$FB,$FA,$FD,$0C,$FC ; $C3268A
    db $10,$9F,$10,$D5,$7F,$00,$00,$9F,$C9,$EF,$05,$F7,$02,$FB,$2D,$00 ; $C3269A
    db $FD,$4E,$F7,$07,$C3,$43,$B2,$FA,$3B,$E9,$01,$F7,$C1,$3F,$08,$F9 ; $C326AA
    db $92,$7A,$82,$3F,$FC,$FC,$04,$30,$29,$F7,$C0,$3B,$F7,$F6,$8F,$8E ; $C326BA
    db $0F,$03,$0E,$01,$FD,$03,$FE,$9A,$A9,$F7,$00,$F2,$FB,$04,$F7,$08 ; $C326CA
    db $8F,$00,$0F,$8A,$40,$B9,$BE,$BE,$BD,$BD,$BB,$BB,$08,$37,$B7,$8F ; $C326DA
    db $8F,$75,$0D,$2B,$BD,$BE,$84,$A1,$BD,$22,$BB,$24,$B7,$88,$8F,$90 ; $C326EA
    db $BF,$48,$47,$52,$F9,$CC,$00,$CF,$CC,$CD,$C0,$ED,$C8,$E3,$E8,$31 ; $C326FA
    db $E7,$40,$7B,$3F,$C0,$DA,$A5,$30,$83,$04,$FF,$20,$62,$DF,$2F,$61 ; $C3270A
    db $8C,$29,$F7,$C6,$00,$81,$81,$03,$73,$8F,$31,$3D,$17,$F9,$03,$0F ; $C3271A
    db $FD,$00,$31,$F6,$02,$43,$3D,$05,$4A,$31,$9A,$F7,$75,$FD,$91,$43 ; $C3272A
    db $4C,$B3,$14,$01,$0D,$03,$D1,$01,$4C,$B3,$08,$03,$0F,$F2,$02,$03 ; $C3273A
    db $2F,$F2,$4E,$FF,$6A,$29,$BF,$7D,$CF,$0D,$3D,$BF,$49,$FF,$0D,$F9 ; $C3274A
    db $E8,$06,$01,$7A,$33,$04,$03,$67,$3F,$CE,$A5,$10,$3F,$4F,$BF,$45 ; $C3275A
    db $98,$47,$7D,$59,$B2,$2A,$72,$BF,$BA,$7F,$53,$10,$F4,$13,$D1,$DF ; $C3276A
    db $15,$03,$E3,$07,$1F,$FE,$01,$CE,$01,$1F,$55,$98,$8A,$E7,$03,$C3 ; $C3277A
    db $10,$3F,$05,$FF,$4A,$95,$3F,$48,$BF,$EF,$62,$CF,$FA,$01,$6A,$FF ; $C3278A
    db $90,$BF,$10,$33,$CC,$FF,$74,$0C,$A5,$C4,$FC,$4E,$B7,$00,$63,$7D ; $C3279A
    db $01,$5F,$5D,$84,$09,$ED,$96,$53,$B7,$82,$03,$8D,$F6,$AD,$D6,$1D ; $C327AA
    db $01,$4B,$FA,$AB,$A9,$FF,$3C,$0A,$FB,$06,$3F,$00,$3A,$07,$F8,$90 ; $C327BA
    db $FD,$54,$F3,$FC,$DD,$C8,$C2,$9F,$A4,$FF,$DC,$FF,$20,$DD,$BF,$3F ; $C327CA
    db $29,$01,$D6,$6D,$16,$EB,$94,$EC,$97,$83,$01,$6D,$12,$ED,$92,$1E ; $C327DA
    db $01,$F8,$FF,$02,$01,$40,$FA,$05,$2F,$FC,$14,$47,$F8,$0F,$03,$19 ; $C327EA
    db $4F,$FE,$8D,$05,$80,$D4,$C1,$B3,$03,$00,$5C,$F7,$CD,$23,$65,$7F ; $C327FA
    db $83,$FC,$18,$03,$A3,$5C,$0B,$A2,$5D,$84,$03,$07,$33,$BA,$FF,$BB ; $C3280A
    db $1C,$03,$B9,$03,$38,$FB,$FF,$33,$8F,$B8,$53,$3E,$CD,$3B,$CC,$3A ; $C3281A
    db $CD,$B9,$C6,$BA,$CD,$FB,$04,$33,$D0,$03,$01,$33,$26,$90,$6F,$03 ; $C3282A
    db $60,$EF,$03,$95,$00,$92,$00,$F1,$04,$03,$48,$FF,$EF,$06,$01,$18 ; $C3283A
    db $EE,$5F,$33,$01,$96,$00,$83,$00,$81,$00,$A1,$C7,$05,$C0,$56,$E1 ; $C3284A
    db $00,$33,$4C,$FF,$4E,$FF,$46,$3B,$FF,$60,$EE,$49,$78,$17,$3F,$AF ; $C3285A
    db $00,$0A,$57,$07,$EF,$0F,$38,$7C,$21,$70,$03,$07,$0F,$1F,$E4,$98 ; $C3286A
    db $FE,$0F,$3A,$F6,$38,$2E,$89,$51,$02,$FD,$0F,$F7,$C5,$BE,$84,$BE ; $C3287A
    db $80,$9E,$22,$DF,$50,$4F,$49,$47,$04,$63,$22,$21,$4A,$B3,$88,$E1 ; $C3288A
    db $7F,$17,$FD,$48,$BF,$45,$BE,$02,$FF,$21,$DF,$20,$D5,$35,$8A,$3B ; $C3289A
    db $E7,$22,$E7,$FC,$81,$55,$EF,$DF,$CF,$DC,$75,$06,$27,$59,$FC,$FC ; $C328AA
    db $7C,$CE,$5F,$BF,$00,$11,$30,$08,$18,$04,$0C,$02,$07,$EB,$2A,$43 ; $C328BA
    db $F1,$AA,$49,$93,$04,$FB,$93,$59,$01,$FE,$6D,$3B,$0E,$87,$7F,$40 ; $C328CA
    db $38,$F6,$7F,$E1,$8F,$60,$F7,$CF,$1F,$3F,$00,$97,$EF,$57,$F8,$28 ; $C328DA
    db $5E,$8E,$7F,$65,$9F,$0F,$FB,$CD,$0C,$B9,$6D,$B8,$6B,$14,$F3,$20 ; $C328EA
    db $F7,$80,$CF,$E1,$1F,$02,$FE,$04,$FC,$59,$8E,$E3,$FF,$F3,$EF,$BF ; $C328FA
    db $DF,$9E,$7F,$1F,$FE,$FE,$FD,$F5,$FB,$63,$DE,$01,$5C,$23,$B8,$DA ; $C3290A
    db $A9,$D6,$55,$84,$46,$0C,$0A,$08,$04,$18,$DA,$BD,$D6,$BD,$0A,$FD ; $C3291A
    db $D0,$7F,$04,$37,$88,$70,$F7,$5F,$F8,$CC,$65,$F0,$46,$08,$C3,$F0 ; $C3292A
    db $11,$E3,$0D,$DE,$E6,$F0,$F8,$00,$D2,$EF,$D0,$A4,$5B,$D0,$FF,$07 ; $C3293A
    db $A1,$FE,$4C,$F3,$E0,$00,$ED,$14,$10,$20,$30,$40,$60,$11,$80,$C0 ; $C3294A
    db $00,$7A,$FD,$30,$9F,$28,$EB,$BF,$A0,$7F,$7D,$40,$08,$1F,$5F,$0F ; $C3295A
    db $BC,$5F,$1A,$1F,$FA,$5C,$00,$20,$F5,$E0,$31,$E0,$09,$00,$C3,$00 ; $C3296A
    db $E0,$80,$C8,$80,$13,$E8,$0A,$3F,$2E,$DB,$06,$83,$2D,$B0,$7F,$F7 ; $C3297A
    db $18,$7F,$74,$B5,$C1,$00,$09,$F1,$00,$FD,$00,$77,$3B,$EE,$04,$39 ; $C3298A
    db $FE,$84,$03,$BB,$B7,$3E,$8F,$BD,$40,$80,$60,$09,$BF,$5F,$9E,$08 ; $C3299A
    db $01,$FE,$06,$01,$03,$00,$70,$00,$78,$00,$7C,$8A,$01,$7E,$3D,$01 ; $C329AA
    db $7F,$2A,$DF,$EE,$18,$1F,$9A,$D1,$E3,$47,$26,$02,$55,$13,$26,$AA ; $C329BA
    db $55,$1B,$7B,$AA,$1A,$1F,$D5,$3B,$01,$5F,$5B,$03,$3B,$07,$FF,$9A ; $C329CA
    db $B0,$2A,$A7,$FF,$BE,$67,$16,$1F,$FA,$3A,$7F,$FF,$16,$48,$FF,$37 ; $C329DA
    db $9B,$03,$3F,$3B,$7B,$23,$73,$07,$B4,$FF,$85,$35,$1A,$F7,$D3,$3A ; $C329EA
    db $E7,$22,$DF,$06,$FB,$0E,$F7,$C2,$00,$D6,$00,$04,$D8,$D0,$08,$D0 ; $C329FA
    db $01,$D8,$04,$57,$03,$1A,$83,$34,$DF,$20,$DF,$A8,$D9,$DD,$05,$F0 ; $C32A0A
    db $B5,$21,$FE,$23,$FD,$75,$7E,$C7,$B3,$1F,$7F,$3F,$DA,$01,$47,$7E ; $C32A1A
    db $00,$BD,$7E,$F3,$1E,$E7,$3C,$CF,$5A,$48,$BF,$03,$17,$01,$42,$82 ; $C32A2A
    db $33,$53,$27,$85,$23,$16,$F0,$BF,$03,$21,$02,$3A,$FD,$03,$5D,$AB ; $C32A3A
    db $19,$6B,$C1,$0A,$AD,$C3,$7D,$08,$01,$A9,$7B,$7F,$8B,$3F,$59,$BF ; $C32A4A
    db $86,$33,$DE,$83,$FC,$F3,$3C,$7B,$9C,$3B,$CC,$5B,$AC,$03,$5C,$70 ; $C32A5A
    db $78,$03,$F4,$01,$90,$00,$1C,$01,$18,$07,$00,$33,$29,$07,$11,$03 ; $C32A6A
    db $0B,$33,$48,$EA,$00,$F3,$C7,$FF,$D2,$FF,$C5,$FE,$72,$E3,$31,$48 ; $C32A7A
    db $37,$EB,$3B,$CF,$00,$89,$BF,$3B,$DD,$2B,$DD,$4B,$BD,$CB,$03,$6B ; $C32A8A
    db $A6,$9D,$71,$BF,$47,$FD,$1E,$F9,$83,$07,$02,$00,$A3,$08,$9F,$3F ; $C32A9A
    db $64,$00,$88,$21,$40,$18,$A3,$07,$77,$FD,$F4,$FF,$54,$27,$2B,$E8 ; $C32AAA
    db $18,$18,$3D,$03,$FD,$35,$0F,$7F,$23,$4F,$3F,$F9,$57,$00,$FE,$D7 ; $C32ABA
    db $2B,$30,$7E,$83,$F3,$0E,$FF,$BE,$00,$CF,$BD,$47,$BB,$4C,$E6,$B9 ; $C32ACA
    db $18,$F8,$03,$FF,$7C,$00,$07,$4A,$FF,$5F,$03,$FF,$02,$11,$FD,$67 ; $C32ADA
    db $07,$C4,$49,$FF,$BC,$5F,$90,$00,$04,$06,$3D,$00,$05,$04,$1B,$D5 ; $C32AEA
    db $C7,$EA,$3C,$29,$04,$01,$18,$FB,$07,$4A,$4F,$18,$EF,$3B,$17,$03 ; $C32AFA
    db $DE,$42,$73,$00,$09,$D2,$03,$B9,$B8,$01,$F3,$00,$A0,$28,$20,$90 ; $C32B0A
    db $BF,$C0,$39,$E0,$40,$05,$14,$48,$33,$21,$40,$47,$BF,$41,$0D,$FD ; $C32B1A
    db $BF,$BD,$BF,$BF,$D9,$5B,$80,$C0,$05,$89,$BB,$98,$BB,$30,$BD,$46 ; $C32B2A
    db $01,$BF,$44,$3F,$EE,$80,$67,$B7,$5C,$89,$7E,$98,$67,$EF,$B7,$F8 ; $C32B3A
    db $36,$03,$04,$02,$DF,$2A,$7D,$EF,$30,$FF,$22,$1A,$0C,$0F,$40,$4B ; $C32B4A
    db $28,$01,$D7,$E8,$BB,$88,$AB,$88,$BF,$AE,$01,$1C,$CE,$BF,$90,$B8 ; $C32B5A
    db $E4,$F7,$E0,$AF,$A8,$57,$88,$77,$01,$B8,$CC,$7F,$86,$7F,$90,$7F ; $C32B6A
    db $C4,$7B,$A0,$7F,$02,$EB,$80,$FE,$48,$BF,$04,$B7,$40,$19,$FF,$02 ; $C32B7A
    db $FD,$59,$08,$E7,$01,$A5,$40,$58,$3D,$C3,$A2,$5F,$01,$98,$63,$19 ; $C32B8A
    db $81,$7E,$20,$C3,$3C,$5C,$01,$8A,$71,$34,$0F,$F7,$DF,$DC,$C1,$F5 ; $C32B9A
    db $00,$03,$C0,$A3,$0B,$DF,$13,$FB,$36,$DE,$21,$01,$DA,$70,$E1,$1F ; $C32BAA
    db $6D,$BE,$B8,$F5,$09,$FE,$11,$FE,$02,$7B,$50,$FE,$04,$F7,$10,$FD ; $C32BBA
    db $0D,$F7,$20,$FD,$8C,$61,$FD,$5F,$50,$60,$AF,$6D,$10,$FF,$05,$FB ; $C32BCA
    db $90,$E7,$13,$FF,$08,$53,$F7,$13,$D7,$00,$03,$9B,$77,$5F,$FF,$1B ; $C32BDA
    db $F3,$11,$1A,$EE,$51,$AE,$35,$18,$03,$01,$55,$BE,$D1,$03,$48,$F3 ; $C32BEA
    db $FA,$FA,$59,$EA,$48,$FF,$39,$FF,$A6,$C7,$29,$F3,$00,$9A,$7A,$58 ; $C32BFA
    db $F9,$98,$7B,$19,$F6,$75,$9E,$38,$C7,$84,$0F,$0E,$36,$DF,$DE,$01 ; $C32C0A
    db $00,$1C,$04,$00,$7E,$92,$5C,$00,$3B,$01,$0E,$0F,$88,$DF,$10,$DF ; $C32C1A
    db $11,$DF,$03,$FE,$7E,$62,$9D,$37,$FB,$BB,$56,$06,$3B,$7B,$FB,$8B ; $C32C2A
    db $DB,$07,$6A,$1B,$3D,$B3,$37,$0E,$03,$02,$FB,$8A,$18,$07,$F7,$F6 ; $C32C3A
    db $01,$EF,$EE,$D0,$01,$43,$36,$BF,$BE,$01,$0E,$C3,$AD,$04,$EF,$08 ; $C32C4A
    db $73,$01,$43,$AC,$49,$38,$BF,$8F,$00,$87,$38,$87,$B7,$00,$7F,$45 ; $C32C5A
    db $80,$20,$C7,$88,$8F,$80,$8F,$84,$04,$87,$A0,$B7,$80,$B7,$6D,$71 ; $C32C6A
    db $0F,$D4,$88,$B7,$E7,$E8,$E7,$A6,$BD,$54,$AB,$C7,$00,$87,$77,$10 ; $C32C7A
    db $25,$05,$4C,$C7,$36,$39,$3F,$82,$08,$BD,$BD,$BE,$BE,$8B,$E3,$87 ; $C32C8A
    db $A4,$B7,$84,$B7,$82,$87,$B9,$BB,$A0,$BD,$A0,$BE,$58,$49,$BF,$83 ; $C32C9A
    db $39,$C8,$1C,$29,$D3,$D0,$3B,$32,$58,$47,$01,$00,$7C,$39,$97,$88 ; $C32CAA
    db $3B,$D6,$4E,$4B,$90,$BF,$34,$F9,$5C,$E1,$02,$78,$C1,$77,$C5,$5D ; $C32CBA
    db $FB,$54,$80,$B7,$3E,$C3,$7E,$83,$7E,$87,$7B,$12,$88,$64,$C3,$A4 ; $C32CCA
    db $BF,$F1,$CE,$9D,$28,$5D,$FE,$A4,$BF,$2A,$D5,$EA,$40,$BF,$FF,$7F ; $C32CDA
    db $EE,$7F,$9F,$71,$3A,$FF,$67,$40,$9B,$2D,$FF,$35,$EF,$75,$EF,$50 ; $C32CEA
    db $35,$01,$7D,$A2,$0C,$03,$FC,$3B,$E4,$01,$7B,$43,$A4,$05,$00,$01 ; $C32CFA
    db $8F,$FF,$AA,$FE,$80,$FE,$B1,$5A,$CE,$93,$7E,$3F,$C0,$6D,$3D,$01 ; $C32D0A
    db $05,$8C,$81,$7F,$8E,$01,$71,$7D,$FF,$13,$2E,$DF,$90,$87,$1E,$FF ; $C32D1A
    db $D2,$18,$FF,$C0,$A0,$1F,$FE,$06,$FC,$B7,$AA,$E1,$80,$35,$1F,$01 ; $C32D2A
    db $85,$4F,$9C,$85,$14,$3F,$50,$FF,$21,$A9,$FF,$1E,$FF,$02,$FE,$01 ; $C32D3A
    db $1F,$95,$3C,$BF,$3F,$EA,$48,$76,$F9,$FF,$A6,$FD,$E1,$1F,$7F,$5F ; $C32D4A
    db $3F,$77,$0F,$BB,$07,$5F,$83,$BB,$DF,$D4,$B0,$FD,$92,$03,$F7,$88 ; $C32D5A
    db $FF,$01,$84,$FF,$42,$FD,$22,$E5,$83,$D2,$F1,$AB,$2A,$AB,$01,$3D ; $C32D6A
    db $BE,$05,$3F,$D0,$BF,$56,$EB,$0E,$7F,$FE,$67,$05,$92,$EF,$7F,$D7 ; $C32D7A
    db $6F,$80,$01,$FD,$42,$C3,$7F,$FB,$07,$44,$FB,$45,$F9,$47,$39,$05 ; $C32D8A
    db $01,$14,$A6,$B3,$BB,$03,$84,$01,$52,$B3,$BB,$48,$CC,$03,$FB,$12 ; $C32D9A
    db $8C,$FB,$14,$A5,$B5,$C0,$31,$03,$D0,$FF,$14,$E3,$B3,$03,$E2,$9D ; $C32DAA
    db $18,$0B,$E2,$1D,$03,$D2,$3D,$72,$FF,$33,$47,$03,$FD,$59,$7C,$83 ; $C32DBA
    db $03,$FF,$88,$FB,$5C,$19,$9D,$F3,$5C,$5E,$FD,$99,$D3,$01,$03,$A0 ; $C32DCA
    db $C7,$37,$B8,$55,$F7,$FB,$C8,$EE,$A5,$3F,$A8,$71,$DF,$C2,$3D,$A8 ; $C32DDA
    db $F7,$DE,$FD,$5F,$F4,$50,$AF,$80,$7F,$40,$BF,$CA,$EB,$80,$FF,$D4 ; $C32DEA
    db $00,$D8,$00,$04,$D9,$C8,$9D,$D5,$FF,$28,$77,$FB,$00,$78,$FB,$21 ; $C32DFA
    db $2A,$FF,$23,$FD,$77,$67,$BF,$5C,$83,$5F,$DF,$08,$9F,$DF,$BF,$3F ; $C32E0A
    db $B8,$FF,$5E,$E7,$7C,$01,$EF,$7A,$FF,$5C,$EF,$9A,$FF,$17,$FF,$00 ; $C32E1A
    db $02,$33,$13,$27,$05,$23,$10,$20,$40,$14,$03,$21,$02,$7D,$FF,$14 ; $C32E2A
    db $DF,$FF,$7F,$06,$71,$FF,$BE,$79,$AE,$15,$03,$80,$97,$83,$FF,$C4 ; $C32E3A
    db $E8,$93,$4A,$D1,$BC,$97,$97,$01,$83,$7D,$C5,$3F,$8A,$7F,$D5,$3F ; $C32E4A
    db $00,$EB,$E0,$FF,$B7,$EF,$2F,$FF,$72,$F7,$C5,$40,$0F,$DF,$7F,$A7 ; $C32E5A
    db $78,$01,$A1,$FF,$97,$7F,$6B,$FE,$B3,$C0,$15,$1F,$FF,$5B,$FF,$72 ; $C32E6A
    db $9D,$5F,$E5,$BC,$FF,$3E,$FF,$98,$6F,$91,$EF,$DF,$F3,$53,$AF,$95 ; $C32E7A
    db $7E,$29,$DF,$AD,$5B,$2E,$FD,$80,$F9,$E8,$FF,$8F,$FF,$34,$FB,$46 ; $C32E8A
    db $E0,$41,$EA,$B0,$F1,$F4,$0F,$DF,$87,$FC,$07,$32,$DF,$E8,$5F,$30 ; $C32E9A
    db $55,$E3,$E0,$D5,$8B,$0C,$10,$FB,$00,$F7,$7F,$C0,$44,$DF,$38,$41 ; $C32EAA
    db $E3,$B1,$10,$AA,$98,$97,$C0,$3F,$A4,$FF,$FE,$25,$E3,$9C,$E5,$B5 ; $C32EBA
    db $5F,$6B,$BC,$E1,$7D,$A0,$03,$C0,$7F,$18,$F7,$30,$EF,$A8,$5F,$82 ; $C32ECA
    db $09,$87,$AD,$A3,$95,$A0,$5D,$0F,$FF,$02,$FF,$A7,$06,$F9,$C1,$7E ; $C32EDA
    db $C0,$7F,$01,$EF,$42,$71,$FF,$48,$E7,$80,$00,$D1,$1F,$00,$9F,$00 ; $C32EEA
    db $8F,$32,$00,$CF,$01,$44,$8E,$25,$00,$85,$DC,$00,$5A,$5F,$A2,$B8 ; $C32EFA
    db $F4,$80,$96,$C0,$84,$C0,$C4,$E0,$64,$E1,$34,$F0,$31,$FB,$34,$F1 ; $C32F0A
    db $9C,$2E,$5A,$88,$1F,$7F,$C8,$3F,$68,$DF,$10,$EF,$31,$EE,$32,$EF ; $C32F1A
    db $7F,$03,$F8,$7F,$12,$00,$7E,$BF,$FD,$7F,$B0,$47,$24,$F8,$30,$28 ; $C32F2A
    db $F1,$26,$03,$32,$30,$F1,$22,$03,$FD,$22,$DF,$CA,$33,$20,$18,$03 ; $C32F3A
    db $30,$CF,$03,$3C,$CF,$8C,$77,$5C,$7F,$FF,$02,$C6,$BF,$7B,$9C,$39 ; $C32F4A
    db $3B,$4B,$AF,$F0,$7B,$03,$EF,$4B,$C0,$FF,$F5,$B7,$FF,$E2,$FE,$D5 ; $C32F5A
    db $FC,$EA,$F9,$D4,$F3,$C8,$C7,$55,$AA,$FF,$A8,$F5,$CA,$E2,$9D,$D4 ; $C32F6A
    db $2B,$E8,$17,$D0,$6F,$C0,$3F,$47,$F0,$98,$C1,$60,$8F,$80,$3F,$03 ; $C32F7A
    db $23,$D9,$98,$A3,$D2,$9D,$F8,$59,$08,$F7,$62,$30,$9F,$D5,$E5,$EF ; $C32F8A
    db $C1,$DF,$60,$83,$01,$BF,$07,$BF,$0F,$C3,$01,$7F,$1F,$3F,$00,$31 ; $C32F9A
    db $C1,$3F,$82,$7D,$81,$7F,$02,$18,$FF,$09,$F7,$03,$15,$EF,$75,$DF ; $C32FAA
    db $E7,$55,$5E,$3B,$E0,$DF,$F2,$FF,$03,$CB,$BF,$3F,$DF,$BF,$FE,$80 ; $C32FBA
    db $49,$FA,$BF,$FD,$FB,$F5,$15,$F3,$ED,$80,$9F,$E1,$7F,$01,$2A,$3E ; $C32FCA
    db $30,$C3,$1D,$70,$BF,$0B,$A9,$1C,$4E,$BF,$9D,$2F,$01,$29,$DD,$CE ; $C32FDA
    db $3F,$D4,$B6,$B9,$01,$0F,$BC,$F3,$FF,$EB,$8D,$0C,$FA,$85,$A5,$01 ; $C32FEA
    db $57,$F0,$FE,$C0,$FB,$01,$95,$01,$24,$FE,$D1,$F0,$AF,$C0,$BF,$60 ; $C32FFA
    db $0F,$A0,$FA,$00,$03,$D5,$00,$A2,$00,$FC,$00,$B9,$EE,$05,$10,$FC ; $C3300A
    db $40,$F7,$A0,$67,$B1,$04,$48,$B0,$05,$FA,$14,$0E,$EF,$54,$BF,$3D ; $C3301A
    db $2B,$D7,$03,$F9,$F7,$43,$A0,$80,$05,$F7,$BD,$D2,$6F,$F4,$0B,$AF ; $C3302A
    db $E8,$3B,$43,$3A,$2B,$55,$90,$AC,$54,$FF,$A8,$FD,$01,$E0,$FB,$68 ; $C3303A
    db $FF,$38,$FF,$1E,$D6,$0B,$33,$AA,$55,$54,$A5,$AB,$A8,$D7,$E0,$5F ; $C3304A
    db $68,$B7,$38,$D7,$1E,$E1,$01,$EB,$01,$55,$00,$43,$31,$7C,$5E,$40 ; $C3305A
    db $E1,$C0,$20,$60,$10,$F0,$03,$5A,$37,$30,$03,$CF,$40,$BF,$C0,$7F ; $C3306A
    db $20,$B1,$C3,$8C,$FE,$71,$08,$BC,$48,$3D,$0C,$7F,$86,$3F,$43,$3F ; $C3307A
    db $83,$1F,$63,$1F,$84,$7B,$80,$7F,$0C,$F7,$06,$06,$FB,$23,$FE,$03 ; $C3308A
    db $FD,$01,$56,$22,$FF,$00,$84,$E0,$84,$C1,$80,$E0,$8C,$C1,$15,$C0 ; $C3309A
    db $E0,$1C,$A4,$FF,$01,$74,$80,$3E,$07,$7F,$17,$90,$7F,$6C,$E1,$30 ; $C330AA
    db $F0,$07,$21,$FB,$24,$F1,$24,$6E,$FF,$1C,$03,$FD,$60,$73,$04,$21 ; $C330BA
    db $FE,$22,$DF,$22,$F3,$FF,$5F,$A5,$13,$FC,$C1,$01,$7C,$FF,$3C,$D0 ; $C330CA
    db $07,$3C,$E9,$7F,$B8,$68,$32,$DF,$80,$FF,$F0,$3F,$78,$9F,$38,$CF ; $C330DA
    db $58,$AF,$03,$A6,$B3,$45,$03,$9C,$0B,$03,$28,$FF,$14,$01,$20,$03 ; $C330EA
    db $7C,$5F,$03,$42,$3B,$03,$D1,$37,$66,$03,$33,$18,$DC,$21,$D0,$B5 ; $C330FA
    db $E1,$10,$9A,$07,$04,$33,$E8,$3F,$8E,$3B,$C8,$DE,$DB,$18,$3F,$C5 ; $C3310A
    db $B3,$22,$F1,$88,$03,$20,$3C,$03,$DF,$06,$01,$5C,$9A,$B7,$C8,$03 ; $C3311A
    db $7B,$B3,$04,$03,$D4,$01,$37,$03,$78,$20,$0C,$3F,$FC,$5F,$A9,$03 ; $C3312A
    db $92,$07,$06,$33,$5B,$AE,$77,$A3,$07,$AD,$7D,$07,$19,$2F,$BF,$7F ; $C3313A
    db $07,$7D,$01,$28,$3E,$FF,$17,$3F,$3E,$FE,$00,$06,$9F,$E1,$08,$7F ; $C3314A
    db $1F,$04,$35,$7F,$67,$85,$D8,$08,$3F,$01,$F5,$36,$3F,$D6,$E2,$BF ; $C3315A
    db $F1,$BE,$A4,$B7,$A2,$BD,$B9,$AF,$E2,$FB,$D8,$9E,$AA,$BB,$A2,$5F ; $C3316A
    db $B0,$4F,$A4,$5F,$A0,$7F,$A9,$76,$E2,$3D,$98,$77,$AA,$5F,$29,$45 ; $C3317A
    db $8A,$B0,$C1,$10,$05,$77,$40,$FF,$55,$08,$31,$53,$52,$01,$10,$EF ; $C3318A
    db $2E,$A9,$08,$B8,$F4,$FF,$89,$AE,$3F,$3F,$80,$3F,$60,$00,$91,$7F ; $C3319A
    db $81,$77,$8B,$7F,$3F,$28,$B5,$3F,$31,$11,$00,$EE,$01,$FF,$0B,$F5 ; $C331AA
    db $3E,$D7,$86,$3A,$FB,$BE,$F7,$53,$18,$14,$18,$00,$73,$20,$7F,$28 ; $C331BA
    db $6D,$7F,$FF,$82,$7D,$BE,$DD,$08,$F7,$BE,$63,$59,$11,$28,$F7,$7F ; $C331CA
    db $26,$79,$F7,$04,$03,$33,$7F,$42,$03,$FE,$A8,$97,$44,$FB,$C5,$3D ; $C331DA
    db $84,$2D,$42,$BD,$53,$FD,$97,$03,$33,$3E,$F7,$23,$F7,$27,$F7,$73 ; $C331EA
    db $7B,$53,$E7,$03,$FB,$63,$FF,$4B,$EF,$31,$CE,$21,$FE,$25,$FA,$53 ; $C331FA
    db $BC,$41,$C0,$5B,$61,$BE,$49,$F6,$02,$EA,$31,$93,$41,$84,$04,$C4 ; $C3320A
    db $97,$FD,$7C,$84,$02,$FD,$24,$FE,$FB,$41,$AB,$44,$BD,$FF,$23,$DB ; $C3321A
    db $58,$3B,$01,$01,$03,$F9,$FF,$91,$DF,$11,$97,$16,$0E,$57,$F9,$BE ; $C3322A
    db $03,$0E,$1B,$F8,$17,$90,$BE,$E9,$00,$EA,$40,$BB,$FC,$B0,$F8,$20 ; $C3323A
    db $F0,$B5,$E3,$13,$81,$80,$01,$98,$7B,$18,$FF,$90,$E1,$DF,$B5,$6A ; $C3324A
    db $C0,$0F,$7E,$81,$7F,$7E,$23,$7E,$FC,$D1,$B5,$18,$73,$F3,$15,$21 ; $C3325A
    db $02,$80,$DF,$21,$7F,$03,$FE,$05,$FD,$73,$9C,$0E,$0F,$7F,$C1,$3A ; $C3326A
    db $05,$C0,$C0,$C3,$FE,$FC,$80,$FD,$83,$57,$C1,$AF,$01,$81,$01,$C3 ; $C3327A
    db $3C,$FC,$E3,$80,$D7,$03,$E1,$85,$DF,$00,$D2,$0D,$04,$00,$EF,$FD ; $C3328A
    db $FD,$E0,$FF,$D8,$EF,$0E,$4A,$FF,$9C,$BF,$F1,$FD,$2E,$82,$60,$7C ; $C3329A
    db $9F,$C8,$B7,$06,$F9,$BF,$BF,$7C,$82,$03,$02,$23,$02,$DF,$DE,$4C ; $C332AA
    db $FE,$48,$FD,$78,$FB,$80,$BF,$01,$C3,$CB,$39,$9C,$8C,$67,$4C,$B7 ; $C332BA
    db $48,$BF,$70,$BF,$50,$57,$D0,$07,$18,$07,$88,$07,$50,$F0,$AF,$10 ; $C332CA
    db $6F,$28,$A1,$07,$50,$AF,$20,$0F,$93,$FB,$92,$02,$F7,$30,$B6,$20 ; $C332DA
    db $F7,$E7,$AD,$ED,$63,$80,$0F,$7D,$92,$AB,$7D,$8B,$61,$C6,$79,$66 ; $C332EA
    db $A9,$04,$03,$3B,$FD,$18,$E9,$39,$E0,$F5,$BB,$04,$56,$1A,$01,$E9 ; $C332FA
    db $37,$7F,$05,$0D,$77,$EF,$C7,$37,$EF,$4F,$BF,$3E,$83,$07,$83,$3F ; $C3330A
    db $BF,$03,$BF,$83,$BF,$79,$A6,$01,$01,$6D,$9F,$7D,$C2,$7C,$FB,$81 ; $C3331A
    db $03,$7D,$C3,$FD,$43,$8E,$D4,$83,$BF,$00,$FE,$F1,$0E,$FF,$E9,$02 ; $C3332A
    db $5F,$4E,$D5,$90,$3F,$AF,$FF,$5E,$F3,$C0,$AB,$3F,$0E,$BF,$1B,$B0 ; $C3333A
    db $60,$17,$01,$B7,$57,$B7,$7F,$19,$F7,$1F,$FF,$35,$6D,$70,$D6,$7B ; $C3334A
    db $C4,$7F,$C8,$78,$DF,$7F,$9E,$6F,$F5,$1F,$E9,$B1,$03,$10,$7D,$05 ; $C3335A
    db $38,$87,$30,$E9,$02,$1F,$0D,$51,$AE,$15,$EA,$DA,$5E,$AD,$05,$51 ; $C3336A
    db $48,$9F,$DF,$40,$DF,$FA,$06,$47,$9F,$20,$20,$DF,$5D,$7A,$80,$F4 ; $C3337A
    db $15,$8A,$BF,$14,$FF,$4A,$0F,$1F,$55,$55,$00,$04,$A7,$7F,$95,$1E ; $C3338A
    db $E9,$5F,$FF,$A4,$3B,$38,$3F,$1F,$7F,$3C,$01,$7F,$06,$1F,$80,$3B ; $C3339A
    db $80,$7F,$23,$08,$20,$8A,$77,$A5,$BF,$00,$F4,$08,$F1,$BF,$10,$95 ; $C333AA
    db $DF,$CA,$0E,$FF,$D7,$6F,$57,$00,$E8,$3F,$83,$87,$83,$BF,$BF,$C3 ; $C333BA
    db $E0,$01,$FB,$46,$E9,$01,$46,$6D,$9E,$FD,$42,$7F,$FA,$82,$03,$FD ; $C333CA
    db $82,$FD,$83,$67,$5F,$00,$80,$0B,$5F,$09,$FF,$24,$FE,$FF,$42,$07 ; $C333DA
    db $BF,$33,$3F,$2B,$0F,$76,$64,$8B,$00,$F8,$8F,$FF,$FC,$03,$35,$CA ; $C333EA
    db $25,$DA,$F5,$0A,$05,$FA,$F5,$5A,$F1,$AE,$A0,$75,$D3,$EC,$C1,$03 ; $C333FA
    db $F4,$FF,$D9,$C4,$03,$F8,$74,$E3,$05,$EC,$60,$13,$03,$F4,$0B,$D9 ; $C3340A
    db $26,$C0,$03,$F8,$07,$FF,$D4,$00,$9D,$11,$2F,$84,$B7,$30,$FD,$FF ; $C3341A
    db $F4,$D3,$C0,$0F,$CF,$FF,$60,$00,$E8,$15,$D4,$FF,$A0,$D2,$BB,$C0 ; $C3342A
    db $EF,$40,$29,$D4,$2B,$A0,$5F,$0D,$C0,$3F,$A0,$7F,$03,$42,$29,$38 ; $C3343A
    db $40,$23,$83,$E6,$01,$EF,$3D,$5D,$F9,$04,$FF,$00,$10,$20,$15,$21 ; $C3344A
    db $11,$21,$10,$21,$8A,$40,$BF,$11,$23,$16,$23,$28,$FF,$08,$29,$FE ; $C3345A
    db $29,$FE,$BB,$FF,$2A,$86,$C0,$2A,$FD,$C1,$08,$FC,$FE,$1F,$FF,$3B ; $C3346A
    db $01,$3F,$9C,$89,$03,$FA,$5C,$5D,$30,$F8,$2F,$3B,$FC,$3B,$EC,$DB ; $C3347A
    db $FC,$BB,$CD,$DB,$3D,$03,$14,$26,$00,$06,$3D,$00,$24,$1C,$03,$41 ; $C3348A
    db $C0,$3D,$00,$3F,$24,$01,$0E,$67,$FB,$61,$1C,$67,$38,$09,$5A,$59 ; $C3349A
    db $0C,$EA,$6D,$33,$79,$F7,$C2,$3D,$FF,$E1,$5A,$BF,$3B,$CD,$5A,$BD ; $C334AA
    db $3B,$ED,$FB,$5D,$FB,$3D,$87,$03,$63,$BD,$BC,$45,$21,$8E,$03,$FC ; $C334BA
    db $08,$03,$9C,$7F,$1C,$0C,$03,$FB,$9C,$7B,$03,$DC,$0A,$7B,$3C,$EB ; $C334CA
    db $80,$85,$D5,$40,$53,$93,$54,$9D,$97,$7F,$20,$9D,$01,$60,$F8,$DF ; $C334DA
    db $00,$03,$40,$BF,$9F,$FF,$3E,$7F,$BC,$E3,$3D,$BF,$80,$3B,$78,$7F ; $C334EA
    db $7E,$FF,$9F,$67,$69,$37,$9D,$06,$3B,$DF,$78,$45,$6B,$0E,$F7,$3E ; $C334FA
    db $C9,$40,$2B,$33,$79,$3B,$43,$08,$38,$EB,$28,$31,$C0,$18,$FF,$39 ; $C3350A
    db $E7,$61,$60,$FF,$18,$88,$F7,$01,$E7,$D7,$80,$FB,$02,$D1,$29,$03 ; $C3351A
    db $80,$F7,$01,$A1,$87,$09,$10,$03,$C7,$01,$70,$09,$03,$0C,$CF,$0B ; $C3352A
    db $48,$CD,$08,$C3,$7B,$5D,$DF,$C3,$09,$F3,$C8,$BF,$00,$D2,$F7,$03 ; $C3353A
    db $0C,$7F,$16,$FF,$46,$11,$FF,$73,$24,$31,$0B,$0D,$C1,$7F,$43,$87 ; $C3354A
    db $FE,$16,$ED,$47,$BD,$0D,$F7,$26,$DB,$40,$C7,$48,$3B,$01,$99,$B9 ; $C3355A
    db $8C,$01,$C0,$BF,$81,$40,$AA,$C8,$33,$49,$28,$12,$FC,$32,$FD,$E8 ; $C3356A
    db $FF,$21,$F3,$21,$03,$FD,$32,$F9,$2C,$D7,$3C,$A7,$BD,$BA,$B9,$FF ; $C3357A
    db $01,$23,$DE,$25,$FE,$38,$EF,$5F,$3B,$61,$37,$00,$1A,$85,$BE,$37 ; $C3358A
    db $BC,$02,$7B,$AC,$FB,$5C,$FB,$2C,$31,$87,$34,$F8,$87,$33,$28,$FD ; $C3359A
    db $30,$38,$D9,$03,$FD,$36,$20,$F9,$05,$33,$0A,$2D,$F7,$32,$CF,$05 ; $C335AA
    db $03,$D7,$28,$DF,$1F,$14,$3F,$BF,$03,$70,$5E,$0B,$DA,$FD,$8F,$81 ; $C335BA
    db $77,$BA,$4F,$59,$AF,$BB,$4E,$1D,$FF,$47,$1F,$19,$DD,$03,$FF,$4C ; $C335CA
    db $03,$5F,$DF,$01,$13,$FF,$06,$FF,$4B,$BF,$07,$40,$03,$4F,$BE,$07 ; $C335DA
    db $FE,$07,$E2,$FF,$C2,$FF,$82,$5A,$9D,$82,$E8,$6F,$70,$38,$63,$E3 ; $C335EA
    db $DD,$1C,$C3,$FD,$82,$0D,$01,$82,$7F,$05,$FF,$2A,$DF,$14,$D4,$BA ; $C335FA
    db $11,$1E,$01,$17,$3E,$FF,$08,$9E,$9E,$CC,$5F,$03,$0E,$E3,$3F,$C9 ; $C3360A
    db $75,$03,$81,$1D,$8E,$7D,$4E,$BD,$BA,$03,$AC,$75,$B7,$11,$04,$77 ; $C3361A
    db $FE,$B1,$9D,$48,$5F,$FF,$E0,$BF,$71,$14,$21,$84,$5E,$D5,$9D,$20 ; $C3362A
    db $5F,$00,$AA,$00,$55,$80,$21,$02,$41,$06,$4A,$03,$CE,$85,$41,$AA ; $C3363A
    db $1C,$55,$80,$03,$55,$0A,$A8,$15,$40,$16,$8A,$80,$55,$02,$1F,$0A ; $C3364A
    db $FF,$15,$FF,$8A,$68,$1B,$19,$03,$00,$2A,$1B,$40,$04,$03,$0A,$8E ; $C3365A
    db $03,$2A,$41,$13,$03,$0A,$32,$03,$05,$E3,$A0,$2A,$40,$50,$82,$22 ; $C3366A
    db $04,$47,$08,$8B,$13,$4F,$27,$8F,$17,$A0,$D1,$0F,$00,$CB,$08,$FF ; $C3367A
    db $13,$FD,$31,$24,$FB,$8B,$00,$F8,$D6,$75,$1B,$7E,$E1,$04,$55,$13 ; $C3368A
    db $02,$F9,$D7,$00,$0B,$A1,$1F,$61,$0F,$21,$0F,$06,$51,$0F,$31,$0F ; $C3369A
    db $11,$03,$37,$8F,$11,$01,$FE,$03,$EB,$3B,$2F,$FF,$06,$4D,$7A,$20 ; $C336AA
    db $09,$0F,$18,$33,$03,$19,$9F,$07,$01,$FB,$21,$83,$91,$25,$0B,$41 ; $C336BA
    db $23,$19,$E6,$83,$03,$11,$FE,$81,$7E,$3B,$0B,$20,$01,$FF,$20,$FA ; $C336CA
    db $30,$FD,$38,$FB,$BB,$03,$1D,$F7,$F1,$24,$48,$B3,$22,$FF,$34,$01 ; $C336DA
    db $EF,$3B,$E7,$34,$CF,$27,$FF,$14,$2A,$BF,$7C,$98,$BD,$A1,$FB,$DC ; $C336EA
    db $D0,$E7,$58,$06,$AF,$78,$AF,$F8,$5F,$03,$8A,$00,$BF,$D8,$2F,$B8 ; $C336FA
    db $4F,$24,$F9,$8A,$01,$F7,$32,$F1,$21,$F9,$33,$99,$3F,$FD,$43,$21 ; $C3370A
    db $54,$01,$F5,$30,$CF,$21,$DE,$3D,$CE,$08,$4B,$41,$3B,$41,$1C,$06 ; $C3371A
    db $01,$3F,$43,$E0,$3B,$BF,$78,$DF,$0C,$F8,$0F,$38,$EF,$01,$18,$C0 ; $C3372A
    db $03,$CF,$3C,$E0,$2A,$E1,$6C,$24,$03,$77,$F0,$9D,$3F,$83,$07,$4F ; $C3373A
    db $3F,$D3,$1C,$BF,$F4,$14,$FD,$7F,$19,$82,$3F,$02,$A8,$01,$80,$03 ; $C3374A
    db $00,$A0,$05,$00,$0A,$1D,$00,$55,$02,$95,$1F,$02,$95,$7D,$05,$83 ; $C3375A
    db $BF,$15,$80,$2A,$00,$04,$03,$0A,$40,$05,$A0,$96,$03,$AA,$0F,$A0 ; $C3376A
    db $6A,$03,$85,$17,$A2,$A3,$3C,$44,$03,$3F,$13,$A2,$03,$00,$81,$05 ; $C3377A
    db $A8,$0A,$54,$15,$AA,$A8,$70,$55,$63,$15,$55,$67,$0A,$1F,$A8,$5B ; $C3378A
    db $CD,$0E,$23,$E3,$9B,$9F,$5F,$1B,$4B,$BF,$00,$E9,$56,$FF,$FA,$38 ; $C3379A
    db $7C,$BF,$38,$3F,$03,$2E,$03,$06,$18,$06,$04,$04,$02,$00,$12,$18 ; $C337AA
    db $21,$18,$56,$01,$39,$0E,$FC,$06,$0F,$FB,$04,$FB,$21,$01,$00,$DD ; $C337BA
    db $00,$06,$80,$0F,$40,$1F,$80,$15,$37,$80,$78,$7E,$21,$A1,$D3,$04 ; $C337CA
    db $DE,$BA,$A7,$15,$AE,$6F,$1B,$EA,$D4,$55,$EB,$FF,$3E,$3F,$74,$7F ; $C337DA
    db $78,$7E,$71,$7E,$62,$7D,$1C,$C3,$06,$BF,$0B,$7C,$26,$FD,$55,$EB ; $C337EA
    db $38,$E7,$32,$EF,$65,$FF,$43,$FF,$B6,$FD,$7C,$EE,$06,$6D,$0E,$FF ; $C337FA
    db $AF,$FF,$57,$A1,$8B,$6F,$D5,$CD,$23,$BF,$FF,$CB,$9B,$8C,$00,$C0 ; $C3380A
    db $00,$60,$04,$B4,$02,$18,$00,$AD,$00,$77,$03,$DF,$00,$FD,$6B,$DB ; $C3381A
    db $96,$A4,$FB,$10,$FF,$A8,$FF,$74,$FF,$DB,$FE,$FD,$FF,$18,$3C,$22 ; $C3382A
    db $30,$22,$20,$04,$A0,$20,$00,$A4,$36,$89,$38,$01,$08,$18,$F7,$8B ; $C3383A
    db $E7,$1D,$85,$44,$53,$E3,$16,$3A,$1F,$01,$B7,$0D,$0E,$46,$BB,$11 ; $C3384A
    db $FE,$2C,$F7,$12,$ED,$93,$FF,$4C,$B7,$00,$58,$77,$BB,$FD,$FE,$EF ; $C3385A
    db $F7,$DB,$66,$ED,$09,$6E,$0E,$2E,$86,$80,$1D,$40,$A0,$40,$B0,$80 ; $C3386A
    db $58,$90,$EC,$40,$B6,$00,$FB,$7E,$9D,$B8,$9F,$A0,$FF,$50,$0E,$FF ; $C3387A
    db $E8,$7F,$B4,$FB,$77,$7D,$F3,$07,$0D,$FF,$CF,$08,$0F,$00,$19,$7C ; $C3388A
    db $1F,$17,$3F,$1F,$00,$0A,$7B,$B1,$05,$01,$A0,$B3,$01,$54,$A0,$03 ; $C3389A
    db $2A,$81,$14,$3F,$01,$AA,$05,$13,$BF,$40,$FF,$BC,$1F,$C1,$03,$50 ; $C338AA
    db $02,$A2,$10,$E0,$08,$3F,$54,$01,$AD,$41,$01,$EF,$DF,$FC,$FE,$08 ; $C338BA
    db $10,$EF,$D4,$38,$CD,$BA,$11,$11,$07,$FF,$C9,$36,$FC,$0F,$78,$83 ; $C338CA
    db $DF,$B8,$C5,$DF,$75,$BA,$55,$E5,$E0,$3E,$00,$BE,$7E,$AA,$FE,$01 ; $C338DA
    db $02,$FE,$02,$20,$72,$E0,$1F,$41,$FF,$3C,$11,$C7,$AA,$57,$E8,$C1 ; $C338EA
    db $F8,$57,$AA,$CE,$56,$03,$89,$33,$19,$00,$28,$64,$2E,$E7,$03,$59 ; $C338FA
    db $28,$63,$DD,$2E,$D1,$F0,$01,$B9,$3F,$00,$1F,$1E,$00,$0F,$17,$07 ; $C3390A
    db $7D,$12,$17,$E8,$FF,$02,$3B,$08,$00,$04,$00,$11,$93,$09,$A1,$65 ; $C3391A
    db $04,$C8,$87,$02,$09,$BD,$80,$50,$11,$08,$38,$E3,$50,$04,$67,$02 ; $C3392A
    db $80,$AE,$15,$39,$01,$EC,$81,$AF,$69,$F2,$04,$4B,$FF,$F3,$08,$0F ; $C3393A
    db $02,$E2,$05,$CB,$23,$2F,$C0,$04,$0F,$7F,$3F,$C0,$04,$18,$38,$00 ; $C3394A
    db $F3,$45,$7E,$A0,$A3,$BF,$00,$15,$B5,$C1,$BF,$C0,$FF,$60,$FF,$B8 ; $C3395A
    db $D1,$A7,$F8,$18,$7F,$00,$AA,$7E,$80,$05,$62,$7F,$AA,$03,$5D,$5B ; $C3396A
    db $AA,$00,$27,$4B,$27,$88,$13,$46,$03,$08,$22,$14,$50,$82,$2A,$AB ; $C3397A
    db $7F,$9D,$23,$23,$C3,$35,$09,$AC,$7A,$55,$82,$7B,$7F,$A3,$7F,$02 ; $C3398A
    db $2A,$00,$CF,$04,$40,$02,$09,$1D,$5F,$00,$45,$D0,$A3,$15,$40,$0A ; $C3399A
    db $A0,$06,$05,$50,$0A,$AA,$05,$53,$77,$45,$62,$9F,$AA,$7B,$05,$2E ; $C339AA
    db $03,$94,$1C,$88,$22,$11,$44,$22,$88,$51,$14,$A2,$A8,$05,$40,$4A ; $C339BA
    db $1D,$A8,$7F,$51,$58,$BF,$2B,$03,$05,$A0,$C7,$55,$A0,$2A,$50,$15 ; $C339CA
    db $0C,$A8,$0A,$55,$01,$47,$54,$E2,$03,$50,$21,$BB,$A8,$45,$9B,$54 ; $C339DA
    db $30,$9F,$5F,$04,$50,$11,$EB,$F5,$1F,$C4,$27,$40,$55,$20,$55,$FF ; $C339EA
    db $50,$57,$1F,$84,$03,$74,$8D,$09,$A0,$1E,$A2,$00,$54,$03,$9F,$79 ; $C339FA
    db $A0,$07,$9F,$30,$71,$03,$74,$01,$90,$00,$1C,$01,$98,$07,$00,$33 ; $C33A0A
    db $A9,$07,$91,$03,$0B,$AB,$01,$21,$C0,$FF,$47,$FF,$D2,$8E,$A9,$FE ; $C33A1A
    db $63,$D2,$71,$BB,$B7,$7F,$80,$01,$CF,$FF,$1F,$BF,$3B,$06,$DD,$2B ; $C33A2A
    db $DD,$4B,$BD,$03,$17,$6B,$9D,$71,$3E,$BF,$47,$FD,$1E,$F9,$83,$07 ; $C33A3A
    db $82,$00,$A3,$08,$1F,$3F,$24,$00,$08,$21,$00,$18,$03,$07,$77,$FD ; $C33A4A
    db $74,$09,$99,$1F,$E8,$18,$55,$5D,$FD,$81,$35,$0F,$7F,$4F,$3F,$BF ; $C33A5A
    db $47,$00,$FE,$58,$E1,$7E,$B8,$F5,$83,$0E,$F7,$0E,$FF,$BE,$CF,$BD ; $C33A6A
    db $47,$BB,$4C,$E6,$B9,$18,$F7,$BE,$0E,$3B,$BC,$3A,$03,$BD,$97,$C7 ; $C33A7A
    db $BF,$00,$09,$9E,$7F,$1B,$FD,$9E,$7B,$CE,$57,$9C,$03,$03,$9B,$7E ; $C33A8A
    db $95,$7B,$01,$8E,$E5,$59,$A8,$31,$5B,$FF,$7B,$E3,$01,$FB,$AE,$5F ; $C33A9A
    db $AA,$B8,$F0,$55,$59,$A6,$FB,$0C,$5B,$E5,$FB,$8C,$7B,$C5,$FA,$0D ; $C33AAA
    db $FC,$FF,$FD,$55,$F1,$FF,$77,$E2,$80,$3F,$18,$FD,$00,$FB,$D5,$C0 ; $C33ABA
    db $A0,$3F,$D8,$3F,$D1,$3E,$75,$E2,$04,$6F,$18,$E7,$AD,$D6,$1D,$84 ; $C33ACA
    db $BE,$FE,$E2,$01,$01,$A0,$51,$FE,$4B,$61,$B5,$0F,$FF,$7A,$CD,$2A ; $C33ADA
    db $73,$C3,$03,$58,$B0,$4D,$78,$FF,$E4,$22,$FF,$C4,$8B,$D3,$97,$FF ; $C33AEA
    db $07,$FF,$5A,$A7,$AE,$5F,$72,$9F,$E6,$3F,$D5,$7B,$A3,$FD,$C2,$7F ; $C33AFA
    db $45,$FB,$48,$53,$B3,$14,$80,$C1,$58,$C7,$4C,$CF,$40,$FD,$D0,$2A ; $C33B0A
    db $C1,$40,$C8,$75,$0E,$01,$4C,$B3,$40,$B8,$09,$08,$FC,$7F,$E6,$57 ; $C33B1A
    db $37,$64,$F9,$05,$07,$48,$FF,$88,$F7,$77,$EF,$02,$19,$07,$F9,$F1 ; $C33B2A
    db $9E,$5A,$5F,$A9,$FB,$02,$67,$08,$77,$07,$BF,$80,$AD,$85,$8B,$20 ; $C33B3A
    db $7F,$07,$07,$4A,$FB,$CB,$69,$AF,$20,$F1,$60,$FB,$20,$BF,$31,$FF ; $C33B4A
    db $2F,$FF,$68,$FF,$98,$BD,$A8,$9F,$21,$DF,$6A,$DF,$27,$DF,$33,$FE ; $C33B5A
    db $2F,$DD,$6A,$9F,$9D,$7F,$8A,$7F,$DB,$04,$3B,$02,$01,$5B,$AE,$E7 ; $C33B6A
    db $33,$CD,$FB,$5E,$FB,$BF,$FA,$5F,$71,$AE,$7F,$DD,$7E,$B9,$B3,$C7 ; $C33B7A
    db $98,$E0,$87,$F0,$80,$F1,$C0,$F1,$80,$49,$10,$F9,$0F,$FF,$83,$7C ; $C33B8A
    db $95,$40,$E3,$C0,$BF,$20,$DF,$10,$EF,$1D,$0F,$F7,$FF,$89,$7F,$0F ; $C33B9A
    db $3F,$67,$C3,$7E,$62,$29,$FE,$03,$30,$7F,$3E,$CF,$5D,$0E,$A7,$3B ; $C33BAA
    db $CC,$66,$CE,$7F,$DE,$A5,$B3,$DF,$86,$79,$FF,$DE,$FE,$07,$70,$DE ; $C33BBA
    db $01,$CE,$3D,$03,$82,$7D,$CF,$3F,$88,$7F,$1B,$07,$8E,$7D,$03,$3A ; $C33BCA
    db $01,$A0,$00,$49,$A1,$FF,$E0,$FF,$71,$FF,$0C,$19,$3F,$0F,$DF,$ED ; $C33BDA
    db $A0,$60,$5F,$5D,$A1,$5E,$E0,$9F,$C0,$7D,$19,$F6,$07,$FD,$08,$77 ; $C33BEA
    db $FF,$BD,$62,$46,$5D,$57,$56,$F0,$4F,$C1,$01,$EE,$1D,$EC,$1F,$84 ; $C33BFA
    db $01,$E8,$1F,$F0,$E0,$5F,$18,$FF,$05,$EF,$E7,$2F,$EF,$1E,$1D,$0B ; $C33C0A
    db $E0,$00,$57,$18,$E7,$E7,$BF,$2B,$10,$D4,$16,$FD,$0F,$0F,$60,$9F ; $C33C1A
    db $C0,$3F,$04,$8E,$8B,$87,$9B,$57,$9F,$05,$0F,$5F,$06,$5F,$0D,$07 ; $C33C2A
    db $A9,$2D,$FE,$02,$F7,$01,$93,$75,$A0,$A1,$19,$30,$FB,$40,$E7,$44 ; $C33C3A
    db $0F,$D1,$00,$39,$1F,$F8,$33,$EF,$40,$BF,$74,$20,$3A,$CD,$FB,$70 ; $C33C4A
    db $07,$FB,$E0,$F0,$00,$4A,$EF,$A0,$99,$FB,$65,$20,$DF,$3F,$09,$D8 ; $C33C5A
    db $E0,$3F,$E0,$53,$EB,$80,$15,$FE,$04,$FF,$09,$FD,$01,$3A,$FB,$03 ; $C33C6A
    db $14,$81,$75,$63,$E1,$0F,$FE,$01,$DC,$01,$BF,$3C,$DF,$35,$EA,$91 ; $C33C7A
    db $8F,$20,$01,$B5,$8F,$99,$03,$8D,$B1,$8B,$91,$9F,$81,$B3,$5D,$81 ; $C33C8A
    db $80,$8B,$85,$7E,$89,$7E,$81,$0E,$7E,$91,$7E,$EA,$01,$7F,$08,$FB ; $C33C9A
    db $F8,$FD,$04,$7F,$DE,$F5,$FD,$81,$47,$6A,$D5,$F7,$DE,$86,$63,$F8 ; $C33CAA
    db $17,$75,$4F,$AC,$0F,$A1,$60,$97,$3B,$35,$CF,$11,$ED,$47,$0F,$DB ; $C33CBA
    db $3D,$2F,$0F,$0E,$33,$81,$FE,$05,$12,$5D,$0F,$F7,$C0,$FF,$30,$FC ; $C33CCA
    db $2E,$FF,$24,$1A,$FC,$26,$F5,$03,$E1,$67,$F7,$96,$BC,$AC,$9F,$34 ; $C33CDA
    db $CF,$2E,$D5,$24,$DB,$00,$01,$67,$9C,$94,$6F,$22,$8C,$77,$97,$F7 ; $C33CEA
    db $7C,$1C,$03,$5E,$67,$8D,$C3,$71,$58,$BF,$38,$EF,$78,$9F,$38,$CF ; $C33CFA
    db $5A,$AD,$F1,$0E,$5F,$BD,$3E,$D9,$FC,$38,$FF,$00,$3A,$40,$D5,$40 ; $C33D0A
    db $01,$C0,$FF,$A7,$FF,$C8,$FC,$0C,$A8,$FB,$C9,$FB,$91,$D5,$B8,$CA ; $C33D1A
    db $2A,$A8,$57,$C0,$3F,$A3,$5E,$C8,$3F,$A8,$5F,$C9,$3F,$00,$00,$55 ; $C33D2A
    db $0A,$AF,$BF,$3F,$E3,$84,$BB,$91,$5E,$80,$8E,$07,$F8,$31,$DF,$9F ; $C33D3A
    db $7F,$7F,$61,$FE,$37,$C7,$FF,$8F,$CE,$5D,$E4,$87,$FF,$BE,$E2,$63 ; $C33D4A
    db $A4,$E3,$5F,$C1,$3F,$8B,$7F,$57,$AF,$97,$7E,$2E,$DF,$AE,$5D,$2F ; $C33D5A
    db $FC,$F8,$D8,$F5,$84,$FF,$03,$22,$FD,$40,$EF,$00,$DF,$00,$F5,$83 ; $C33D6A
    db $BE,$F8,$F7,$E0,$DF,$84,$EC,$91,$40,$AC,$C1,$83,$48,$FF,$5F,$60 ; $C33D7A
    db $E1,$81,$CC,$EF,$93,$5D,$E3,$18,$5F,$60,$9F,$C3,$CC,$F3,$C5,$AC ; $C33D8A
    db $E3,$9C,$83,$7F,$08,$FF,$10,$1E,$9B,$F7,$98,$01,$7F,$E7,$0F,$04 ; $C33D9A
    db $05,$98,$77,$00,$6E,$75,$90,$7F,$48,$FC,$20,$DB,$8E,$AA,$21,$0F ; $C33DAA
    db $C4,$3D,$07,$FC,$E5,$EF,$17,$29,$FB,$0C,$20,$FB,$40,$67,$A4,$DF ; $C33DBA
    db $C0,$9D,$00,$8F,$00,$CF,$01,$60,$00,$BF,$A0,$DF,$40,$BF,$04,$FF ; $C33DCA
    db $90,$89,$9B,$E4,$45,$07,$FF,$A9,$FF,$C1,$43,$E3,$C2,$14,$BB,$FD ; $C33DDA
    db $F9,$FF,$30,$A9,$56,$C3,$A0,$5F,$C2,$62,$3F,$CB,$F9,$1F,$9D,$7F ; $C33DEA
    db $83,$51,$FC,$FE,$30,$79,$CE,$04,$FF,$EC,$FC,$5F,$01,$FF,$E3,$F7 ; $C33DFA
    db $E7,$EF,$AF,$D2,$97,$87,$3A,$CF,$3E,$87,$D1,$3E,$06,$C7,$E1,$3F ; $C33E0A
    db $AB,$FF,$CC,$0F,$7A,$FF,$AF,$18,$5C,$2E,$FD,$FF,$E6,$FF,$B8,$61 ; $C33E1A
    db $85,$FE,$12,$FC,$80,$F7,$20,$BF,$02,$EF,$07,$7D,$FF,$E6,$DB,$84 ; $C33E2A
    db $DF,$03,$DD,$51,$40,$C5,$FD,$07,$FB,$B1,$DF,$C0,$D3,$45,$EE,$02 ; $C33E3A
    db $FF,$1E,$0F,$3F,$FC,$05,$FF,$66,$42,$33,$DE,$FF,$78,$A0,$01,$1F ; $C33E4A
    db $42,$BD,$8F,$D4,$47,$98,$21,$FE,$70,$2D,$F7,$88,$1D,$F7,$10,$8F ; $C33E5A
    db $90,$07,$F7,$FF,$76,$31,$FD,$97,$83,$D7,$07,$FC,$40,$A8,$16,$3B ; $C33E6A
    db $10,$7F,$E9,$BB,$9F,$1C,$FF,$40,$FF,$71,$50,$39,$10,$32,$FF,$0E ; $C33E7A
    db $E5,$FB,$B5,$7A,$58,$37,$28,$17,$10,$0F,$09,$07,$47,$67,$00,$63 ; $C33E8A
    db $BA,$F7,$7A,$CF,$33,$DD,$9F,$76,$0B,$B5,$54,$07,$06,$C1,$60,$FF ; $C33E9A
    db $90,$EF,$01,$3B,$E0,$8F,$C1,$B3,$DF,$40,$DF,$C0,$A4,$9F,$8F,$7F ; $C33EAA
    db $8F,$ED,$F3,$DD,$0F,$1D,$3F,$5F,$BF,$F0,$D5,$1C,$18,$06,$22,$01 ; $C33EBA
    db $1E,$26,$1E,$0C,$3E,$18,$1C,$2F,$A3,$6D,$24,$81,$6B,$FB,$38,$F7 ; $C33ECA
    db $55,$DF,$60,$DD,$E7,$70,$3A,$2A,$30,$07,$03,$00,$0B,$07,$05,$50 ; $C33EDA
    db $6B,$1D,$E8,$2B,$15,$3A,$FF,$20,$41,$21,$03,$FE,$14,$0A,$07,$03 ; $C33EEA
    db $FC,$00,$97,$73,$02,$78,$C5,$49,$0E,$F7,$FF,$FB,$FC,$AE,$8F,$06 ; $C33EFA
    db $1D,$6F,$FB,$D5,$43,$CD,$D4,$A5,$2F,$02,$71,$FC,$18,$F8,$0C,$F0 ; $C33F0A
    db $10,$E0,$40,$C0,$E0,$C0,$A8,$CC,$7A,$FF,$F4,$EF,$BA,$D7,$50,$51 ; $C33F1A
    db $F1,$20,$D2,$E9,$7F,$4B,$E3,$F7,$31,$C4,$15,$BB,$A6,$32,$5B,$62 ; $C33F2A
    db $A7,$CE,$43,$92,$00,$02,$F1,$DE,$80,$87,$B9,$FF,$32,$DF,$62,$FD ; $C33F3A
    db $46,$3A,$FB,$82,$A0,$65,$20,$8C,$C0,$00,$C0,$30,$F8,$68,$18,$02 ; $C33F4A
    db $06,$07,$EA,$12,$EB,$00,$CE,$5B,$84,$2B,$F7,$06,$2E,$21,$22,$3D ; $C33F5A
    db $00,$96,$C0,$84,$C5,$C8,$E0,$64,$E1,$30,$F0,$29,$FF,$2B,$E9,$1C ; $C33F6A
    db $70,$D3,$84,$7B,$C2,$3F,$74,$60,$82,$3D,$28,$F7,$28,$D7,$7E,$AE ; $C33F7A
    db $75,$FF,$E2,$93,$BF,$AF,$85,$71,$7E,$BD,$7E,$F3,$7E,$8F,$BE,$FF ; $C33F8A
    db $5C,$BF,$B0,$DF,$81,$FF,$D9,$B6,$D6,$31,$29,$01,$23,$03,$AC,$31 ; $C33F9A
    db $01,$D8,$F7,$03,$21,$DF,$8B,$39,$E7,$01,$C7,$00,$3F,$0C,$01,$3E ; $C33FAA
    db $BE,$31,$99,$B8,$74,$F6,$99,$77,$9A,$77,$9B,$74,$1B,$F5,$1B,$F6 ; $C33FBA
    db $1A,$BA,$7F,$FF,$70,$21,$26,$A0,$F1,$C0,$03,$EF,$CE,$DE,$92,$DE ; $C33FCA
    db $00,$A8,$15,$0C,$A0,$DF,$5F,$BF,$DF,$C0,$08,$7F,$CE,$BD,$12,$B1 ; $C33FDA
    db $80,$FF,$70,$C2,$EF,$25,$FC,$9A,$F9,$54,$F3,$68,$FF,$54,$CF,$C0 ; $C33FEA
    db $0E,$7F,$9C,$C2,$7D,$24,$1A,$FB,$98,$F7,$FD,$EB,$68,$D7,$44,$FF ; $C33FFA
    db $90,$D9,$C9,$DF,$47,$EF,$22,$F7,$92,$FE,$CB,$FE,$2C,$6F,$2F,$EF ; $C3400A
    db $10,$FF,$C9,$BF,$45,$FE,$22,$DF,$92,$ED,$CA,$BD,$85,$25,$25,$FB ; $C3401A
    db $A3,$DF,$D7,$43,$9B,$57,$3F,$8F,$37,$8F,$7F,$3F,$FF,$37,$FF,$AF ; $C3402A
    db $FF,$83,$7E,$02,$FD,$17,$F9,$07,$FA,$0F,$F5,$2F,$F7,$37,$EF,$AB ; $C3403A
    db $5F,$2F,$30,$B0,$93,$D0,$1B,$18,$7B,$0F,$83,$DB,$0F,$9F,$FF,$AD ; $C3404A
    db $5B,$30,$90,$7F,$43,$18,$EF,$0F,$B8,$D0,$F9,$E3,$FD,$0B,$FE,$FD ; $C3405A
    db $56,$10,$77,$10,$F7,$51,$F7,$DF,$FF,$DF,$FD,$FE,$FF,$62,$70,$61 ; $C3406A
    db $EF,$51,$E1,$EF,$8E,$77,$CF,$F7,$EF,$FB,$F5,$FB,$F6,$BB,$FF,$5A ; $C3407A
    db $1B,$48,$00,$EB,$07,$FD,$BF,$E5,$70,$1E,$FD,$B9,$FF,$D7,$7C,$EF ; $C3408A
    db $B0,$DC,$E3,$B8,$C7,$91,$1F,$DD,$C3,$E3,$7C,$FF,$65,$49,$01,$F7 ; $C3409A
    db $C3,$5D,$E3,$3F,$9F,$E0,$DD,$62,$E0,$5F,$6C,$BF,$10,$A2,$85,$0C ; $C340AA
    db $13,$90,$89,$BF,$20,$F7,$FF,$01,$EF,$38,$FF,$15,$5F,$90,$2E,$EF ; $C340BA
    db $27,$B8,$FC,$E7,$FA,$E7,$FD,$D7,$F8,$CF,$B0,$4E,$1F,$13,$F7,$30 ; $C340CA
    db $F1,$20,$F6,$E0,$EF,$C1,$EF,$C0,$D3,$98,$DD,$06,$FD,$13,$FD,$30 ; $C340DA
    db $DF,$20,$4F,$BF,$C1,$02,$7E,$C0,$7F,$98,$EF,$EF,$8C,$79,$55,$97 ; $C340EA
    db $FF,$2E,$64,$F7,$31,$4A,$F5,$10,$CF,$CF,$70,$9F,$FD,$FF,$03,$55 ; $C340FA
    db $AA,$70,$BF,$64,$DF,$55,$63,$90,$C7,$BA,$81,$B3,$82,$FE,$65,$FC ; $C3410A
    db $1A,$F8,$08,$FC,$04,$FE,$02,$FE,$90,$A0,$51,$82,$7D,$5C,$64,$38 ; $C3411A
    db $9B,$18,$E7,$08,$F7,$04,$FB,$02,$FD,$00,$80,$FF,$77,$7C,$38,$7F ; $C3412A
    db $39,$B7,$2E,$3B,$BF,$46,$AC,$41,$FE,$D7,$8A,$00,$7C,$A7,$39,$DF ; $C3413A
    db $EE,$7B,$2E,$F3,$23,$46,$FB,$3B,$7F,$57,$E0,$DD,$04,$8F,$02,$77 ; $C3414A
    db $73,$3A,$FB,$49,$A0,$1F,$7F,$FC,$57,$AA,$F9,$88,$AF,$17,$FF,$73 ; $C3415A
    db $BD,$48,$49,$FF,$83,$DF,$03,$3F,$1F,$3F,$49,$1F,$28,$0E,$50,$49 ; $C3416A
    db $30,$07,$8B,$87,$83,$FE,$03,$FD,$9F,$E5,$09,$FE,$08,$FF,$A0,$29 ; $C3417A
    db $83,$7D,$5E,$09,$7A,$9B,$93,$FB,$E2,$F7,$84,$EE,$C8,$FD,$D3,$FF ; $C3418A
    db $D4,$F6,$D4,$F7,$09,$FF,$93,$FD,$A2,$7F,$84,$FB,$C8,$B7,$D3,$BD ; $C3419A
    db $D4,$7F,$94,$FF,$22,$10,$86,$F0,$84,$C8,$C8,$C4,$E3,$E7,$F4,$F4 ; $C341AA
    db $69,$FF,$6B,$E9,$0C,$17,$7F,$80,$0A,$7F,$C0,$3F,$E3,$9D,$D4,$6B ; $C341BA
    db $68,$FF,$68,$BF,$7E,$3A,$DF,$BF,$25,$7C,$7B,$7F,$8F,$7E,$BD,$FE ; $C341CA
    db $73,$FE,$0F,$AE,$DF,$5C,$FF,$31,$DE,$83,$FC,$DB,$B4,$43,$79,$69 ; $C341DA
    db $9D,$01,$00,$7B,$E3,$E9,$EB,$E9,$63,$1D,$E9,$28,$FF,$08,$B5,$DF ; $C341EA
    db $80,$7F,$E0,$9F,$E8,$57,$7C,$61,$07,$6C,$7F,$01,$31,$9B,$10,$F4 ; $C341FA
    db $9B,$74,$01,$21,$1B,$F4,$01,$15,$79,$51,$A0,$03,$C1,$D6,$11,$73 ; $C3420A
    db $C5,$FC,$24,$1D,$A0,$5F,$00,$03,$C1,$3E,$A2,$5D,$C4,$3B,$9D,$BD ; $C3421A
    db $E7,$48,$23,$90,$C0,$40,$FB,$01,$40,$DF,$17,$E8,$78,$87,$8F,$7C ; $C3422A
    db $8A,$0B,$99,$AA,$F8,$96,$D7,$F0,$AD,$F0,$4E,$E0,$9C,$E1,$54,$C2 ; $C3423A
    db $88,$C2,$12,$C7,$A9,$57,$D0,$2F,$A2,$5F,$FB,$D0,$C3,$03,$1D,$02 ; $C3424A
    db $FF,$9A,$62,$75,$2C,$E1,$00,$58,$01,$33,$00,$13,$44,$33,$44,$DB ; $C3425A
    db $C0,$60,$D7,$A3,$01,$03,$FF,$06,$FC,$0C,$F8,$08,$C2,$01,$84,$78 ; $C3426A
    db $5F,$D7,$01,$EA,$FE,$1E,$FE,$0D,$07,$08,$4E,$5F,$F8,$D7,$FD,$EA ; $C3427A
    db $17,$01,$1E,$E7,$F5,$3E,$F2,$FD,$F7,$3F,$16,$35,$00,$F5,$F5,$3F ; $C3428A
    db $F6,$04,$F7,$FD,$EE,$DF,$51,$DF,$09,$58,$AA,$00,$34,$00,$1A,$80 ; $C3429A
    db $CC,$00,$CA,$22,$CC,$20,$D8,$00,$0E,$F7,$01,$68,$FB,$3F,$30,$1F ; $C342AA
    db $BA,$46,$13,$1D,$10,$1F,$20,$1F,$50,$1F,$E8,$0F,$B4,$0F,$74,$07 ; $C342BA
    db $3A,$87,$2A,$43,$12,$43,$0A,$43,$90,$EF,$08,$F7,$44,$FB,$F9,$93 ; $C342CA
    db $01,$8B,$49,$80,$87,$20,$B8,$00,$A0,$08,$A7,$07,$8F,$04,$8C,$04 ; $C342DA
    db $8D,$63,$DF,$BF,$58,$05,$03,$EF,$7F,$FF,$58,$3A,$01,$90,$B1,$00 ; $C342EA
    db $40,$E0,$20,$88,$06,$07,$FF,$2D,$FF,$15,$7D,$1B,$07,$DF,$5F,$A3 ; $C342FA
    db $A8,$AA,$AF,$2C,$00,$D3,$14,$EB,$04,$8E,$05,$AF,$26,$33,$AF,$07 ; $C3430A
    db $01,$8F,$8D,$3F,$8E,$03,$AE,$31,$1A,$79,$FE,$6A,$DD,$3B,$EC,$5B ; $C3431A
    db $BC,$5B,$FC,$5C,$FB,$0D,$E1,$29,$FD,$47,$F0,$9F,$EF,$BF,$DF,$BB ; $C3432A
    db $BB,$77,$B7,$D2,$82,$BF,$30,$2A,$D7,$B5,$88,$77,$90,$02,$7F,$A0 ; $C3433A
    db $5B,$02,$F7,$84,$5C,$91,$E5,$60,$38,$A7,$58,$4E,$E3,$07,$24,$CF ; $C3434A
    db $F7,$0B,$EE,$0B,$FD,$2F,$7F,$8F,$DB,$05,$F0,$02,$0C,$19,$0E,$28 ; $C3435A
    db $3D,$E8,$3E,$28,$7D,$28,$7E,$38,$1D,$7F,$F8,$48,$53,$F8,$DF,$F8 ; $C3436A
    db $41,$FF,$01,$D8,$D6,$0C,$FD,$7F,$7F,$9F,$5E,$DF,$61,$EF,$63,$AF ; $C3437A
    db $F0,$E0,$98,$97,$FD,$33,$9F,$9F,$00,$F7,$1F,$EF,$2F,$FF,$0F,$BF ; $C3438A
    db $28,$EE,$00,$A9,$30,$6E,$28,$6D,$28,$6E,$90,$3B,$20,$7E,$77,$68 ; $C3439A
    db $5C,$8F,$E8,$01,$55,$F8,$30,$B1,$3F,$1D,$80,$83,$40,$C9,$97,$02 ; $C343AA
    db $02,$2F,$09,$04,$2E,$FF,$51,$95,$5B,$17,$96,$01,$E4,$FF,$60,$7F ; $C343BA
    db $01,$C0,$EF,$00,$8F,$60,$0F,$07,$3D,$7B,$D4,$A5,$B9,$7F,$40,$05 ; $C343CA
    db $FD,$04,$82,$03,$10,$80,$04,$80,$8A,$00,$1C,$03,$11,$80,$41,$74 ; $C343DA
    db $04,$E1,$D3,$03,$8A,$7F,$44,$3E,$41,$FF,$F8,$00,$80,$81,$40,$3F ; $C343EA
    db $25,$60,$E1,$1F,$80,$7F,$FC,$10,$FF,$8B,$2C,$2A,$FF,$00,$F4,$31 ; $C343FA
    db $80,$BF,$47,$40,$8B,$9F,$07,$47,$9F,$81,$02,$63,$40,$81,$01,$3F ; $C3440A
    db $21,$82,$49,$EF,$01,$FF,$01,$76,$02,$41,$01,$FE,$21,$FE,$01,$60 ; $C3441A
    db $01,$03,$FD,$6C,$EC,$03,$58,$6D,$6E,$49,$25,$5B,$17,$01,$4A,$17 ; $C3442A
    db $4C,$4A,$B7,$44,$BF,$FE,$5F,$7F,$CA,$6E,$91,$37,$C8,$6D,$92,$4E ; $C3443A
    db $B1,$EB,$14,$DD,$22,$D3,$D6,$B3,$D7,$9F,$B7,$6F,$B7,$02,$97,$18 ; $C3444A
    db $6F,$2F,$DF,$01,$ED,$BB,$5C,$FC,$7A,$9B,$FD,$43,$7D,$87,$F8,$07 ; $C3445A
    db $B3,$4F,$BB,$4F,$67,$9F,$14,$EF,$09,$EB,$B1,$55,$D7,$FE,$FE,$F9 ; $C3446A
    db $63,$FF,$57,$BF,$8F,$DF,$D6,$29,$DB,$24,$AF,$50,$FF,$10,$FE,$51 ; $C3447A
    db $CE,$31,$F5,$0F,$F6,$2D,$5F,$BF,$5E,$BF,$BF,$7F,$78,$FC,$FC,$FA ; $C3448A
    db $FE,$F8,$FD,$FF,$FB,$F9,$77,$9E,$CE,$3D,$9F,$7F,$18,$FF,$3C,$FD ; $C3449A
    db $B6,$4D,$53,$CF,$FB,$EF,$C4,$1D,$C6,$DD,$66,$CC,$55,$EE,$D5,$E6 ; $C344AA
    db $F3,$E6,$EA,$F7,$F9,$F3,$F7,$EE,$37,$EC,$2E,$D5,$0B,$D7,$35,$CA ; $C344BA
    db $B3,$86,$CC,$FF,$E0,$F9,$A6,$99,$DF,$8D,$DB,$AD,$DB,$6D,$01,$5C ; $C344CA
    db $CB,$B0,$5D,$6B,$9D,$6B,$B5,$6B,$FE,$B1,$EE,$B9,$AE,$59,$7E,$89 ; $C344DA
    db $EE,$11,$7E,$81,$9E,$61,$C2,$55,$FB,$BD,$03,$F9,$9E,$FC,$CB,$FE ; $C344EA
    db $4D,$B9,$AD,$5C,$C2,$78,$FF,$61,$7F,$5F,$B1,$BD,$52,$9E,$69,$CF ; $C344FA
    db $B8,$4F,$F0,$07,$FC,$03,$E9,$59,$00,$B3,$AD,$DF,$DB,$E1,$73,$7D ; $C3450A
    db $9D,$63,$3F,$9B,$7D,$FF,$2E,$60,$DA,$18,$25,$FE,$81,$FE,$45,$76 ; $C3451A
    db $A9,$BE,$49,$D8,$A7,$CF,$80,$A0,$BC,$11,$FE,$3D,$FE,$4B,$B7,$BF ; $C3452A
    db $AC,$63,$70,$BC,$03,$9C,$79,$0C,$1D,$FF,$9A,$7D,$03,$9F,$06,$79 ; $C3453A
    db $1C,$FB,$9C,$7B,$03,$BA,$61,$B2,$AE,$C9,$EF,$75,$5F,$DD,$C7,$C7 ; $C3454A
    db $F7,$C6,$F3,$5E,$DF,$D3,$DF,$32,$DF,$89,$7F,$65,$FB,$DD,$7F,$03 ; $C3455A
    db $FD,$86,$7D,$E6,$C1,$7E,$BC,$47,$37,$3D,$72,$BF,$7D,$E6,$03,$47 ; $C3456A
    db $86,$33,$03,$B9,$74,$1D,$FA,$9D,$7A,$0D,$FA,$B5,$5A,$1E,$EF,$93 ; $C3457A
    db $DF,$90,$BF,$DF,$9F,$E6,$95,$91,$D9,$75,$A9,$2E,$97,$92,$80,$1F ; $C3458A
    db $4E,$FF,$62,$FB,$01,$11,$EE,$9D,$F2,$60,$BF,$03,$D9,$03,$00,$70 ; $C3459A
    db $27,$CA,$D3,$9A,$C3,$DA,$FF,$16,$2F,$9C,$BF,$7A,$C0,$0F,$C7,$20 ; $C345AA
    db $DF,$4A,$AD,$C5,$81,$5E,$E3,$CB,$12,$FF,$1C,$7F,$4A,$BF,$00,$C7 ; $C345BA
    db $04,$C7,$38,$FD,$08,$E3,$08,$C7,$88,$C7,$40,$87,$45,$05,$07,$29 ; $C345CA
    db $38,$E7,$C2,$02,$03,$CA,$EB,$FB,$EE,$FB,$67,$8B,$33,$47,$6F,$07 ; $C345DA
    db $0F,$97,$C6,$E7,$0F,$8F,$4A,$FF,$EC,$D7,$E5,$7E,$31,$BE,$6D,$FA ; $C345EA
    db $1D,$EE,$C2,$BF,$0B,$F4,$00,$DC,$BA,$BF,$4C,$81,$F7,$80,$C3,$48 ; $C345FA
    db $84,$41,$D7,$C8,$C7,$0C,$33,$4C,$BB,$03,$88,$AA,$90,$9F,$C0,$3F ; $C3460A
    db $BF,$51,$BD,$BF,$3D,$DD,$BF,$C0,$C3,$9C,$7F,$1C,$FF,$9D,$70,$7E ; $C3461A
    db $BF,$7B,$0D,$BB,$E9,$FB,$DC,$7B,$2D,$FA,$79,$FD,$02,$93,$2E,$4F ; $C3462A
    db $66,$0F,$6F,$FF,$A1,$D3,$E5,$F3,$7B,$FF,$79,$8F,$12,$EF,$2A,$B7 ; $C3463A
    db $66,$FB,$EB,$1E,$A1,$7E,$E4,$FF,$4A,$F5,$ED,$FF,$6D,$2F,$9C,$3F ; $C3464A
    db $B4,$4B,$00,$AD,$7A,$6D,$DB,$9D,$6B,$1D,$FB,$E1,$3F,$FA,$94,$D8 ; $C3465A
    db $0B,$4F,$7F,$BE,$63,$5C,$FF,$9B,$47,$29,$92,$DA,$82,$C2,$A7,$8F ; $C3466A
    db $9F,$B3,$D7,$49,$FF,$5C,$2F,$9D,$FB,$29,$EF,$DA,$7D,$E2,$DD,$0C ; $C3467A
    db $F7,$23,$EF,$35,$D4,$4C,$DD,$B9,$EF,$EF,$CF,$8F,$BF,$8C,$3F,$E8 ; $C3468A
    db $EF,$2D,$EF,$31,$EF,$44,$FB,$99,$7E,$AE,$BB,$03,$FE,$84,$FB,$28 ; $C3469A
    db $FF,$43,$80,$C7,$00,$01,$84,$C7,$86,$CF,$06,$DF,$06,$EA,$08,$D9 ; $C346AA
    db $C4,$FF,$B4,$DB,$04,$FB,$1C,$8E,$F9,$0E,$01,$17,$4E,$B9,$CC,$5F ; $C346BA
    db $3B,$27,$EF,$27,$F7,$EF,$E7,$9D,$27,$26,$6F,$FD,$FF,$FA,$FF,$D7 ; $C346CA
    db $FF,$27,$FC,$23,$FC,$CB,$FC,$99,$FE,$22,$DD,$E5,$3E,$1A,$F5,$57 ; $C346DA
    db $00,$80,$A8,$C0,$FF,$C8,$F7,$88,$C7,$8D,$3D,$00,$FF,$CC,$C7,$C8 ; $C346EA
    db $3F,$22,$D0,$3F,$65,$1D,$71,$9F,$C4,$3F,$F0,$D6,$3B,$73,$C7,$D5 ; $C346FA
    db $D9,$9F,$75,$27,$7F,$70,$FF,$70,$CF,$62,$9F,$C0,$BF,$C2,$3F,$8A ; $C3470A
    db $7F,$AA,$EA,$1D,$A5,$5A,$C1,$3F,$C0,$C0,$F3,$04,$BE,$D3,$F7,$E9 ; $C3471A
    db $05,$0F,$52,$1D,$BF,$49,$7F,$07,$8C,$00,$3A,$F5,$75,$2A,$33,$F5 ; $C3472A
    db $EA,$01,$B5,$1D,$01,$DA,$77,$67,$03,$87,$05,$00,$01,$01,$00,$BA ; $C3473A
    db $07,$10,$BE,$E7,$05,$00,$EE,$5E,$35,$01,$04,$01,$01,$01,$BF,$C1 ; $C3474A
    db $EF,$F0,$F7,$F8,$DC,$B1,$61,$FC,$01,$FE,$FE,$D2,$B3,$41,$5C,$BE ; $C3475A
    db $3C,$B0,$EF,$E8,$F7,$E0,$BF,$EC,$5B,$EC,$BF,$EE,$15,$05,$3B,$03 ; $C3476A
    db $3C,$55,$55,$05,$3D,$03,$BB,$78,$00,$55,$D6,$FE,$BE,$FE,$D7,$FF ; $C3477A
    db $97,$FC,$16,$FD,$92,$F5,$11,$FB,$93,$F3,$C6,$3B,$BE,$53,$D4,$3F ; $C3478A
    db $93,$6F,$3F,$C3,$D7,$2B,$7B,$87,$F0,$0F,$23,$E9,$04,$01,$2B,$E9 ; $C3479A
    db $1E,$20,$DF,$21,$02,$01,$0A,$DE,$29,$DF,$3E,$FE,$35,$DB,$03,$6E ; $C347AA
    db $FF,$6F,$EF,$4F,$FF,$06,$09,$1A,$F7,$19,$F6,$E1,$30,$4B,$B4,$E3 ; $C347BA
    db $2B,$D5,$4A,$6F,$B7,$0B,$06,$61,$3F,$01,$25,$DE,$21,$E3,$05,$01 ; $C347CA
    db $3F,$BF,$D8,$06,$01,$31,$1B,$F6,$EA,$6B,$F9,$FB,$7B,$47,$2E,$0D ; $C347DA
    db $4C,$5D,$FD,$17,$BC,$E6,$F5,$C4,$ED,$0C,$1D,$F4,$FD,$85,$FD,$75 ; $C347EA
    db $FD,$4C,$FB,$14,$FB,$24,$F0,$83,$0C,$FF,$34,$FB,$07,$85,$7A,$55 ; $C347FA
    db $BA,$FD,$7F,$F7,$88,$37,$FF,$75,$01,$1D,$03,$77,$EF,$0F,$58,$DD ; $C3480A
    db $3C,$BA,$60,$C7,$3F,$E9,$3D,$D7,$FD,$6A,$3D,$FE,$65,$F5,$47,$F7 ; $C3481A
    db $95,$CD,$C5,$FD,$67,$FF,$15,$FC,$EE,$FD,$2E,$6D,$25,$DB,$46,$37 ; $C3482A
    db $7B,$C5,$FB,$67,$60,$BF,$47,$6C,$DB,$2C,$FB,$76,$3F,$97,$E0,$3B ; $C3483A
    db $FE,$FE,$FF,$20,$3E,$3F,$43,$1D,$0C,$FE,$79,$BE,$1C,$05,$FF,$60 ; $C3484A
    db $81,$0B,$C3,$3D,$EA,$3C,$7E,$D7,$04,$FF,$75,$BE,$31,$A3,$AE,$FF ; $C3485A
    db $13,$C1,$BF,$C7,$3E,$8F,$7D,$AF,$78,$9F,$70,$5C,$E3,$A7,$DA,$BD ; $C3486A
    db $45,$1C,$D5,$FF,$91,$01,$5C,$C0,$7B,$7F,$2E,$FF,$6E,$FB,$7E,$D5 ; $C3487A
    db $6A,$95,$D7,$B9,$47,$B9,$BB,$D5,$7A,$C0,$55,$E6,$FF,$D2,$2E,$1D ; $C3488A
    db $6B,$FF,$66,$60,$1E,$FA,$FC,$3F,$30,$E0,$0F,$03,$FA,$FD,$FE,$00 ; $C3489A
    db $F5,$BE,$FD,$BA,$C3,$7C,$3F,$F1,$C0,$21,$5D,$B3,$3B,$D5,$DD,$60 ; $C348AA
    db $B3,$1C,$A9,$23,$2D,$23,$63,$3D,$8C,$11,$7F,$1D,$44,$11,$EF,$50 ; $C348BA
    db $BD,$A8,$57,$FF,$D1,$32,$DE,$B9,$17,$6F,$62,$01,$EF,$7F,$E1,$22 ; $C348CA
    db $FF,$A2,$7F,$03,$FE,$5D,$EF,$DD,$2A,$FD,$6F,$C0,$03,$22,$F2,$2F ; $C348DA
    db $FA,$7E,$25,$04,$FF,$15,$5C,$FE,$4A,$AE,$FF,$B5,$F0,$EF,$F8,$57 ; $C348EA
    db $F8,$AF,$FC,$1B,$5C,$AB,$EA,$1D,$B2,$67,$F2,$2A,$90,$6F,$D8,$26 ; $C348FA
    db $F3,$7F,$FA,$21,$2D,$22,$3C,$7F,$F7,$08,$FA,$05,$51,$18,$20,$FB ; $C3490A
    db $04,$73,$FF,$D0,$DD,$BA,$4A,$5E,$7E,$FE,$47,$7F,$E3,$CC,$EE,$DD ; $C3491A
    db $46,$FD,$3D,$FF,$8F,$6F,$5E,$AB,$F2,$3F,$C3,$E5,$BF,$6F,$37,$A0 ; $C3492A
    db $B3,$83,$7F,$5C,$EC,$30,$1F,$0E,$07,$00,$98,$C8,$E3,$F4,$C3,$45 ; $C3493A
    db $C3,$44,$01,$CF,$40,$C9,$77,$46,$4C,$F9,$C4,$BF,$E5,$41,$EA,$00 ; $C3494A
    db $6D,$44,$BF,$40,$BF,$32,$7F,$76,$68,$5B,$0C,$63,$FF,$70,$F8,$9F ; $C3495A
    db $60,$EC,$1F,$32,$00,$DF,$68,$DF,$67,$DF,$43,$FC,$70,$C0,$B1,$DF ; $C3496A
    db $60,$DF,$74,$CF,$30,$74,$FB,$37,$C4,$C3,$C6,$61,$46,$D8,$5A,$C0 ; $C3497A
    db $C4,$C1,$09,$70,$AF,$40,$D4,$83,$F9,$C6,$F9,$B7,$EB,$C4,$A8,$87 ; $C3498A
    db $C0,$09,$78,$FD,$70,$FD,$64,$3B,$F3,$63,$00,$23,$68,$7C,$77,$FF ; $C3499A
    db $74,$F6,$68,$38,$D7,$70,$37,$63,$18,$DF,$A6,$DD,$47,$76,$DB,$15 ; $C349AA
    db $74,$DF,$6B,$48,$B7,$AB,$EB,$2E,$06,$EC,$2B,$E9,$A3,$E9,$0D,$2E ; $C349BA
    db $69,$D6,$1A,$E1,$5F,$E9,$97,$AA,$55,$2C,$DB,$29,$D6,$A1,$DE,$0D ; $C349CA
    db $50,$7D,$BF,$12,$BF,$67,$3F,$80,$3F,$1B,$F4,$13,$FC,$02,$4B,$BC ; $C349DA
    db $9B,$F4,$23,$DC,$50,$43,$7B,$00,$F9,$73,$E1,$AB,$E9,$23,$A9,$23 ; $C349EA
    db $EB,$0C,$03,$FB,$F9,$49,$79,$07,$CE,$61,$DE,$A9,$DE,$43,$85,$DF ; $C349FA
    db $03,$3F,$79,$AF,$A9,$57,$7F,$89,$3D,$6F,$C4,$BB,$80,$3F,$4B,$B4 ; $C34A0A
    db $2B,$F4,$2B,$69,$D4,$05,$00,$3F,$8D,$C4,$10,$C6,$80,$C5,$0E,$00 ; $C34A1A
    db $CE,$80,$D5,$02,$03,$D7,$01,$CF,$84,$7B,$5F,$3D,$90,$03,$01,$FF ; $C34A2A
    db $BC,$E0,$84,$29,$49,$1C,$2C,$0B,$0A,$0F,$04,$7F,$63,$8F,$19,$E7 ; $C34A3A
    db $78,$F7,$02,$FC,$08,$F7,$0C,$FB,$0C,$F8,$07,$F8,$50,$CF,$F9,$FF ; $C34A4A
    db $99,$FF,$85,$D7,$7D,$FF,$8D,$87,$00,$DF,$80,$DF,$04,$DF,$91,$DF ; $C34A5A
    db $08,$DD,$3F,$7C,$E7,$85,$7A,$80,$3B,$04,$FB,$91,$60,$6E,$2B,$33 ; $C34A6A
    db $FE,$99,$DF,$1D,$FD,$FE,$7F,$03,$B5,$1E,$FF,$9E,$AA,$9F,$AF,$BC ; $C34A7A
    db $70,$DF,$EE,$FF,$37,$EF,$78,$87,$0D,$FF,$1D,$EF,$8D,$FF,$CD,$7B ; $C34A8A
    db $24,$90,$92,$32,$30,$D0,$50,$F0,$20,$FE,$C6,$F1,$98,$E7,$1E,$EF ; $C34A9A
    db $40,$3F,$12,$ED,$31,$DF,$30,$1F,$E0,$1F,$0A,$F3,$9F,$5F,$10,$23 ; $C34AAA
    db $03,$0A,$63,$00,$A3,$02,$73,$30,$03,$00,$03,$E3,$80,$F3,$95,$16 ; $C34ABA
    db $9B,$A0,$9F,$80,$FF,$0C,$CC,$7F,$99,$FB,$E2,$FE,$EA,$1C,$CD,$78 ; $C34ACA
    db $01,$2E,$E8,$FF,$19,$F5,$FB,$77,$FF,$EC,$F7,$1E,$E1,$B0,$FF,$B8 ; $C34ADA
    db $F7,$03,$B0,$80,$97,$E3,$84,$F3,$84,$E3,$04,$A3,$01,$24,$9F,$03 ; $C34AEA
    db $04,$41,$1D,$20,$DF,$81,$03,$05,$8F,$06,$8F,$07,$E0,$03,$01,$59 ; $C34AFA
    db $FE,$5A,$FD,$65,$5B,$01,$FE,$3B,$03,$C5,$AB,$3D,$C3,$BD,$DF,$DF ; $C34B0A
    db $CF,$EF,$F7,$F0,$FD,$FD,$ED,$FD,$CD,$00,$04,$FD,$20,$FD,$C1,$3F ; $C34B1A
    db $C8,$7F,$18,$F0,$AF,$FF,$65,$BF,$CC,$E9,$8D,$5C,$08,$78,$80,$10 ; $C34B2A
    db $8F,$1F,$9F,$43,$BE,$3E,$7F,$80,$3F,$40,$0A,$A0,$15,$5F,$33,$5D ; $C34B3A
    db $AF,$27,$33,$DA,$A1,$A4,$D9,$00,$2F,$AA,$1D,$D9,$AA,$ED,$CC,$1F ; $C34B4A
    db $00,$2F,$01,$41,$E9,$EF,$EF,$81,$5F,$9D,$BF,$7E,$7F,$ED,$D7,$BD ; $C34B5A
    db $71,$D4,$BF,$27,$72,$FC,$17,$F8,$8D,$F2,$5E,$E1,$2D,$D2,$FA,$85 ; $C34B6A
    db $D4,$2B,$E8,$17,$48,$3E,$28,$3D,$28,$AA,$64,$FB,$03,$77,$F8,$83 ; $C34B7A
    db $FD,$B8,$FF,$F8,$D3,$01,$01,$3C,$5F,$FF,$06,$5F,$FF,$F6,$01,$5F ; $C34B8A
    db $33,$00,$48,$FD,$88,$DE,$08,$FD,$F8,$FE,$21,$00,$FD,$1F,$E9,$03 ; $C34B9A
    db $39,$D3,$63,$E7,$07,$01,$FE,$AA,$06,$01,$DF,$7D,$04,$7D,$01,$09 ; $C34BAA
    db $3E,$B3,$24,$3F,$7B,$FF,$07,$3D,$8F,$BE,$01,$07,$78,$01,$07,$21 ; $C34BBA
    db $80,$00,$F7,$06,$01,$D9,$09,$35,$EF,$15,$3D,$1A,$00,$3F,$6F,$F7 ; $C34BCA
    db $D9,$7F,$DF,$7F,$FB,$0E,$57,$FF,$57,$EB,$5E,$01,$B2,$FB,$5F,$BE ; $C34BDA
    db $43,$CE,$71,$F9,$5F,$FD,$53,$F9,$17,$ED,$53,$ED,$13,$F5,$1B,$E9 ; $C34BEA
    db $FB,$75,$B7,$0B,$63,$26,$30,$B8,$7F,$AD,$F3,$7E,$FF,$1A,$FC,$C8 ; $C34BFA
    db $F7,$65,$CA,$08,$BF,$26,$FF,$98,$F7,$8D,$7E,$46,$FD,$1A,$F7,$FF ; $C34C0A
    db $5B,$3B,$BB,$83,$01,$B7,$5F,$BF,$80,$01,$ED,$1B,$FD,$03,$BD,$18 ; $C34C1A
    db $43,$BD,$53,$01,$AB,$57,$32,$A7,$5F,$01,$2F,$E1,$FF,$49,$CB,$77 ; $C34C2A
    db $CF,$59,$C3,$4E,$D0,$42,$D3,$46,$C5,$01,$2E,$D3,$DF,$49,$BE,$77 ; $C34C3A
    db $BB,$59,$FE,$4E,$FF,$42,$BF,$44,$BF,$46,$BF,$78,$FF,$DC,$F7,$BA ; $C34C4A
    db $B7,$32,$73,$77,$F3,$97,$BF,$3F,$BE,$45,$38,$5C,$D7,$F2,$4C,$BB ; $C34C5A
    db $BA,$4D,$20,$FF,$75,$DE,$81,$7E,$27,$DC,$5F,$B0,$AB,$C7,$CD,$BF ; $C34C6A
    db $75,$FD,$2F,$E5,$73,$AD,$01,$5F,$E1,$AD,$1B,$AD,$FE,$11,$FA,$05 ; $C34C7A
    db $5A,$A7,$5E,$B1,$7E,$81,$1E,$81,$5A,$A5,$52,$ED,$1E,$B8,$93,$FC ; $C34C8A
    db $03,$7C,$E2,$03,$7D,$F5,$7F,$7E,$7F,$1F,$E0,$AE,$F1,$74,$CB,$F6 ; $C34C9A
    db $19,$54,$BB,$B6,$69,$35,$EA,$36,$E9,$3B,$ED,$65,$FB,$19,$F7,$95 ; $C34CAA
    db $DB,$0B,$CD,$47,$CD,$0F,$C5,$8F,$E5,$7A,$85,$3E,$E1,$1E,$F1,$9E ; $C34CBA
    db $71,$0E,$F9,$46,$B9,$06,$F9,$86,$79,$B9,$D6,$12,$89,$BC,$FE,$A6 ; $C34CCA
    db $FB,$04,$03,$99,$77,$A9,$F7,$B0,$03,$07,$FF,$5C,$85,$3A,$FF,$74 ; $C34CDA
    db $FE,$87,$AF,$8C,$99,$B3,$F0,$D8,$DC,$CF,$D2,$41,$81,$FE,$E1,$70 ; $C34CEA
    db $FF,$87,$DE,$95,$E6,$23,$FF,$58,$B7,$8F,$FE,$14,$83,$FB,$BB,$FF ; $C34CFA
    db $3E,$FB,$BB,$BB,$5B,$56,$75,$3F,$20,$FB,$9A,$7E,$1E,$FF,$92,$10 ; $C34D0A
    db $7F,$11,$FE,$3F,$01,$6C,$EF,$CF,$EF,$3F,$0F,$FF,$DD,$63,$CE,$49 ; $C34D1A
    db $0E,$92,$15,$25,$DE,$E5,$C1,$FE,$34,$FF,$05,$FF,$C3,$BC,$03,$FC ; $C34D2A
    db $0A,$F7,$7D,$AF,$8F,$CF,$DE,$DF,$1F,$7F,$DD,$9F,$EB,$6E,$78,$98 ; $C34D3A
    db $9F,$5F,$EF,$DF,$87,$7C,$D6,$AB,$1E,$FA,$2F,$DB,$EE,$73,$5F,$BA ; $C34D4A
    db $97,$E9,$E7,$78,$E8,$F7,$A0,$27,$68,$F7,$E0,$E7,$03,$20,$77,$01 ; $C34D5A
    db $B0,$F7,$B4,$B7,$E0,$DF,$80,$D3,$B7,$71,$A0,$5F,$60,$DF,$20,$FF ; $C34D6A
    db $F0,$1F,$B4,$DB,$4F,$1F,$1B,$F7,$F6,$F8,$B4,$00,$F3,$0F,$C7,$47 ; $C34D7A
    db $FC,$1B,$FF,$D6,$C0,$07,$F8,$E0,$3F,$1F,$F0,$C0,$3D,$0B,$FC,$B6 ; $C34D8A
    db $BF,$34,$03,$7F,$76,$FF,$F4,$FF,$F6,$97,$03,$3E,$F0,$FF,$E0,$F7 ; $C34D9A
    db $BE,$D9,$7C,$BB,$5E,$A9,$BC,$EB,$7E,$C9,$FC,$4B,$F8,$4F,$E0,$1F ; $C34DAA
    db $BE,$FF,$35,$F3,$00,$BB,$FD,$B9,$FD,$33,$FB,$B6,$FF,$0C,$34,$F7 ; $C34DBA
    db $86,$7D,$9B,$91,$0E,$7D,$17,$FB,$89,$B0,$E1,$9E,$73,$5D,$14,$30 ; $C34DCA
    db $FF,$D7,$CF,$4E,$EF,$60,$F9,$73,$FF,$7C,$FE,$6B,$F8,$64,$EC,$5F ; $C34DDA
    db $FF,$D5,$7B,$4E,$F5,$60,$FF,$53,$AD,$5E,$B9,$6B,$91,$DB,$0F,$E9 ; $C34DEA
    db $31,$B4,$F7,$37,$B9,$FC,$6B,$70,$3F,$07,$94,$7F,$0B,$01,$F7,$89 ; $C34DFA
    db $77,$17,$FC,$98,$7F,$18,$3F,$1F,$FA,$1D,$C8,$E3,$63,$6A,$FF,$FF ; $C34E0A
    db $7F,$BB,$00,$C3,$8F,$8A,$FD,$62,$FD,$AC,$FF,$30,$C2,$7F,$9D,$23 ; $C34E1A
    db $FC,$9D,$03,$7B,$42,$FF,$8D,$FF,$97,$97,$3B,$5E,$97,$C7,$C7,$27 ; $C34E2A
    db $37,$3F,$6F,$EF,$CF,$FF,$0D,$F2,$17,$E8,$3F,$F8,$97,$FC,$E7,$DD ; $C34E3A
    db $13,$FC,$6B,$B4,$C7,$FC,$CA,$D5,$C0,$E7,$C8,$D7,$00,$03,$F7,$42 ; $C34E4A
    db $77,$CD,$FE,$F0,$F9,$2C,$C0,$3F,$01,$03,$42,$BF,$CC,$7F,$B0,$7F ; $C34E5A
    db $AA,$9D,$DF,$1C,$F3,$C1,$FD,$5F,$EF,$4C,$EA,$FF,$AF,$49,$E8,$1D ; $C34E6A
    db $0F,$FC,$B3,$FB,$DD,$8F,$7D,$87,$5E,$A1,$7F,$80,$AF,$D0,$CA,$E7 ; $C34E7A
    db $C1,$F6,$40,$F7,$C0,$77,$38,$03,$01,$F0,$3A,$F7,$C2,$C1,$F3,$40 ; $C34E8A
    db $BF,$C0,$50,$FB,$C0,$2E,$7F,$F0,$1B,$0F,$FB,$FF,$71,$FB,$71,$FF ; $C34E9A
    db $77,$FC,$77,$FD,$7D,$01,$BF,$CB,$74,$BF,$51,$3B,$D4,$3E,$D3,$3F ; $C34EAA
    db $D3,$36,$DF,$3C,$D7,$3B,$D6,$2B,$D5,$2A,$2A,$95,$95,$AF,$AF,$DB ; $C34EBA
    db $DB,$EF,$EF,$5F,$DF,$80,$C6,$00,$2A,$00,$00,$95,$00,$AF,$80,$DB ; $C34ECA
    db $80,$6F,$80,$EC,$89,$82,$AA,$C9,$E9,$01,$2B,$02,$05,$38,$D7,$2A ; $C34EDA
    db $D5,$09,$01,$0A,$D9,$05,$F5,$02,$8F,$90,$00,$05,$FF,$1C,$2B,$FF ; $C34EEA
    db $56,$F1,$55,$6F,$80,$6D,$FF,$FA,$AB,$AB,$76,$07,$77,$DA,$DB,$F5 ; $C34EFA
    db $F6,$6E,$1C,$5C,$01,$20,$FD,$FE,$00,$AB,$01,$77,$01,$DB,$03,$F7 ; $C34F0A
    db $02,$FF,$01,$AB,$05,$FF,$D2,$FE,$52,$F6,$1C,$03,$76,$01,$B8,$70 ; $C34F1A
    db $56,$52,$D6,$FC,$C3,$74,$CB,$FE,$C3,$76,$CB,$F6,$01,$96,$EB,$DE ; $C34F2A
    db $01,$08,$5F,$76,$5C,$E9,$40,$FE,$01,$FB,$FE,$01,$DF,$FE,$F5,$FE ; $C34F3A
    db $AB,$D2,$D6,$07,$01,$52,$00,$01,$57,$D7,$57,$D8,$56,$D9,$36,$56 ; $C34F4A
    db $AB,$D4,$01,$80,$05,$D4,$2B,$DB,$12,$27,$D3,$2F,$A4,$F5,$3B,$F9 ; $C34F5A
    db $C0,$03,$27,$EF,$23,$E1,$22,$2B,$E8,$21,$E0,$39,$39,$EF,$29,$D7 ; $C34F6A
    db $26,$09,$DB,$25,$DF,$20,$D3,$FF,$B4,$01,$07,$31,$00,$07,$18,$F7 ; $C34F7A
    db $2A,$40,$BF,$1A,$F5,$99,$77,$9A,$75,$D2,$05,$41,$3F,$03,$2B,$5F ; $C34F8A
    db $C3,$8A,$77,$F3,$3F,$3B,$43,$47,$07,$ED,$C3,$4D,$F7,$BF,$C3,$CE ; $C34F9A
    db $3B,$03,$01,$13,$FD,$4B,$BD,$9B,$31,$3B,$DD,$09,$2D,$ED,$71,$4C ; $C34FAA
    db $FD,$14,$FD,$E4,$F5,$14,$8D,$0C,$7D,$7C,$7D,$67,$77,$2D,$FB,$8B ; $C34FBA
    db $1D,$01,$84,$43,$BC,$0C,$05,$CB,$F3,$27,$DF,$3F,$62,$55,$9F,$FF ; $C34FCA
    db $D6,$00,$01,$3D,$EE,$3D,$FA,$5D,$FE,$9D,$DD,$05,$C9,$B7,$13,$FE ; $C34FDA
    db $70,$8D,$FA,$55,$6C,$46,$DD,$56,$5D,$4C,$D5,$44,$DD,$C0,$01,$66 ; $C34FEA
    db $FF,$55,$CC,$04,$C7,$39,$FB,$54,$1C,$03,$44,$01,$71,$26,$03,$3F ; $C34FFA
    db $54,$BB,$F5,$7F,$AE,$95,$1F,$B1,$05,$B6,$80,$3F,$C6,$3D,$EA,$3D ; $C3500A
    db $D6,$5D,$C5,$43,$EE,$1C,$C6,$FF,$2D,$FF,$B5,$FF,$F6,$F8,$73,$FC ; $C3501A
    db $65,$FA,$72,$FD,$61,$FE,$76,$80,$03,$B7,$69,$3F,$C0,$27,$79,$F8 ; $C3502A
    db $02,$03,$77,$75,$C7,$93,$BF,$DB,$BF,$AF,$EF,$7F,$EF,$0F,$DF,$7B ; $C3503A
    db $BF,$37,$FB,$D7,$6B,$8E,$43,$EE,$11,$FE,$09,$F6,$19,$F6,$5D,$E6 ; $C3504A
    db $7F,$EC,$7F,$65,$E4,$33,$09,$03,$7F,$FE,$59,$05,$00,$33,$2F,$F4 ; $C3505A
    db $3F,$C4,$4E,$0B,$C3,$05,$57,$E7,$60,$BF,$7F,$AF,$7F,$2D,$EB,$1C ; $C3506A
    db $31,$EF,$B1,$01,$06,$FC,$73,$C2,$3F,$DE,$01,$5C,$21,$B0,$FE,$31 ; $C3507A
    db $F6,$29,$F7,$09,$73,$AD,$F6,$47,$93,$3F,$DB,$3F,$AF,$6F,$BF,$6F ; $C3508A
    db $8F,$5F,$AC,$B7,$7B,$D6,$14,$2B,$8F,$41,$5F,$B8,$79,$1B,$F3,$5E ; $C3509A
    db $E5,$7E,$ED,$7F,$4E,$9E,$0A,$EE,$4A,$03,$03,$DC,$DF,$13,$02,$DE ; $C350AA
    db $2B,$6E,$93,$5E,$A3,$83,$03,$9B,$D7,$67,$17,$5F,$9F,$7F,$1C,$9E ; $C350BA
    db $7F,$1E,$71,$98,$77,$18,$76,$99,$77,$FD,$73,$83,$7F,$CF,$3E,$41 ; $C350CA
    db $6F,$0C,$90,$FF,$10,$7F,$03,$00,$B0,$37,$1E,$FE,$22,$47,$FF,$C8 ; $C350DA
    db $05,$63,$33,$3F,$EA,$1F,$3A,$03,$FC,$9B,$18,$9C,$77,$FF,$54,$F3 ; $C350EA
    db $44,$D3,$5F,$DF,$40,$C0,$44,$E3,$54,$C3,$60,$F3,$47,$CF,$50,$AF ; $C350FA
    db $40,$BF,$5F,$A9,$52,$F9,$40,$00,$FF,$20,$FF,$47,$FB,$74,$F7,$72 ; $C3510A
    db $EF,$DC,$95,$22,$67,$EF,$68,$F0,$70,$FE,$7E,$FE,$E2,$F2,$74,$DF ; $C3511A
    db $C6,$01,$61,$31,$00,$FF,$70,$DF,$7E,$CD,$A2,$DF,$5A,$C7,$39,$D3 ; $C3512A
    db $44,$59,$3D,$80,$01,$C6,$C3,$C4,$46,$5C,$D9,$83,$39,$48,$85,$03 ; $C3513A
    db $41,$BF,$C7,$42,$BF,$C4,$BB,$D0,$EF,$62,$7E,$6A,$FE,$66,$FA,$E2 ; $C3514A
    db $FE,$22,$FE,$00,$09,$62,$FE,$72,$EE,$62,$DF,$6A,$6C,$DF,$03,$37 ; $C3515A
    db $22,$E1,$05,$62,$FF,$B0,$03,$59,$E3,$E1,$A2,$0E,$E8,$23,$E9,$63 ; $C3516A
    db $B1,$07,$A3,$80,$01,$A9,$26,$DB,$E5,$5F,$A0,$EE,$02,$79,$61,$9E ; $C3517A
    db $A1,$5E,$22,$4B,$51,$75,$E3,$02,$01,$9B,$74,$4A,$01,$99,$B9,$37 ; $C3518A
    db $01,$31,$83,$04,$01,$AB,$A9,$A1,$DE,$C3,$03,$01,$DF,$A9,$56,$F8 ; $C3519A
    db $08,$7F,$F4,$04,$3B,$00,$01,$96,$FC,$09,$DE,$9C,$FF,$11,$18,$FE ; $C351AA
    db $9C,$7E,$BB,$AD,$C1,$C3,$94,$6B,$08,$F7,$9C,$63,$18,$EF,$9C,$73 ; $C351BA
    db $3C,$CB,$00,$03,$BC,$4B,$7F,$FF,$1F,$7F,$BD,$E8,$3B,$07,$AF,$FF ; $C351CA
    db $17,$FF,$8F,$55,$AB,$66,$71,$9B,$0F,$FC,$B7,$DF,$19,$EF,$AC,$5F ; $C351DA
    db $15,$EF,$8D,$73,$97,$EA,$FE,$E8,$93,$45,$F8,$E7,$59,$F0,$4F,$FE ; $C351EA
    db $19,$F7,$0C,$04,$F9,$1F,$F0,$1F,$E1,$CE,$0F,$8F,$00,$1F,$02,$D0 ; $C351FA
    db $07,$A0,$02,$F0,$00,$1C,$DA,$00,$F5,$0F,$B8,$75,$F2,$7D,$C7,$50 ; $C3520A
    db $FF,$A0,$FF,$70,$FF,$9A,$FF,$25,$47,$0D,$FC,$FF,$F9,$01,$75,$F8 ; $C3521A
    db $FD,$F4,$FF,$EA,$80,$45,$FE,$E8,$FF,$64,$DB,$F1,$3B,$3F,$EC,$E0 ; $C3522A
    db $5D,$34,$FB,$EA,$F7,$F0,$11,$CF,$E8,$57,$49,$B3,$24,$63,$87,$05 ; $C3523A
    db $2C,$E3,$64,$08,$03,$E4,$E3,$A4,$B3,$20,$DF,$81,$01,$60,$9F,$87 ; $C3524A
    db $03,$E0,$9F,$F2,$03,$5F,$A0,$05,$F0,$03,$06,$03,$00,$AB,$00,$5F ; $C3525A
    db $1B,$0C,$F2,$0D,$BE,$41,$55,$03,$E3,$59,$AA,$A9,$87,$C6,$69,$AC ; $C3526A
    db $A3,$33,$04,$0C,$F3,$04,$7B,$03,$C1,$8F,$A0,$5F,$E0,$3F,$15,$FD ; $C3527A
    db $75,$43,$9F,$3B,$0A,$47,$2D,$D1,$0B,$9F,$EF,$18,$1F,$0A,$A3,$91 ; $C3528A
    db $DE,$06,$01,$18,$1F,$F3,$58,$7F,$01,$E9,$06,$9F,$7D,$00,$08,$3C ; $C3529A
    db $A1,$13,$00,$71,$FF,$61,$F7,$41,$EF,$01,$DF,$EF,$68,$8C,$1D,$71 ; $C352AA
    db $04,$AF,$60,$DF,$41,$BE,$08,$09,$FF,$31,$F5,$E2,$00,$2E,$0C,$0F ; $C352BA
    db $7F,$20,$03,$6F,$F4,$04,$5B,$60,$8B,$10,$38,$00,$77,$CF,$19,$01 ; $C352CA
    db $07,$B3,$1F,$A9,$F7,$B2,$25,$18,$3B,$0D,$BE,$00,$01,$7C,$00,$F8 ; $C352DA
    db $00,$F0,$00,$C0,$F6,$04,$D4,$7F,$60,$2F,$5F,$55,$00,$0B,$00,$71 ; $C352EA
    db $25,$03,$05,$D4,$B0,$BF,$09,$11,$54,$FF,$0A,$38,$FF,$24,$03,$04 ; $C352FA
    db $E2,$1D,$08,$29,$BF,$5C,$08,$20,$80,$20,$80,$92,$44,$2C,$82,$58 ; $C3530A
    db $94,$30,$10,$77,$13,$20,$EA,$00,$5D,$24,$FB,$40,$FF,$30,$EF,$0E ; $C3531A
    db $10,$EF,$00,$02,$38,$A1,$09,$03,$05,$E7,$03,$1C,$0B,$02,$35,$72 ; $C3532A
    db $09,$03,$3C,$04,$86,$0B,$C4,$0E,$00,$A1,$00,$49,$64,$03,$07,$41 ; $C3533A
    db $AC,$21,$1C,$A0,$FF,$48,$03,$77,$00,$30,$DF,$7F,$00,$BF,$7F,$BE ; $C3534A
    db $7F,$FC,$7F,$7E,$FF,$1C,$FC,$FE,$FC,$FD,$00,$BD,$FF,$A7,$5F,$86 ; $C3535A
    db $7D,$C4,$3F,$1D,$C6,$3B,$4C,$F0,$BD,$DA,$3F,$9D,$7B,$55,$46,$2E ; $C3536A
    db $B5,$56,$38,$03,$F6,$03,$76,$06,$53,$46,$BF,$46,$BD,$03,$33,$56 ; $C3537A
    db $AD,$05,$F6,$82,$03,$76,$AD,$FD,$A0,$FF,$F6,$FF,$64,$E8,$C8,$F9 ; $C3538A
    db $00,$4F,$DD,$3B,$DE,$3F,$D8,$3F,$09,$D6,$39,$E8,$F7,$36,$DF,$31 ; $C3539A
    db $37,$71,$76,$01,$36,$DC,$1C,$CD,$07,$BF,$0F,$18,$AD,$F6,$2D,$03 ; $C353AA
    db $76,$FF,$03,$26,$DF,$9D,$6F,$07,$F8,$75,$0F,$CF,$DC,$7F,$7F,$02 ; $C353BA
    db $F8,$44,$7F,$37,$E8,$21,$B7,$E8,$03,$61,$01,$43,$C5,$73,$85,$EB ; $C353CA
    db $45,$CB,$CD,$EB,$C5,$E3,$C5,$F3,$C2,$E7,$C4,$F7,$46,$B9,$8E,$71 ; $C353DA
    db $4E,$F1,$CE,$31,$C6,$79,$81,$01,$C4,$7B,$27,$35,$72,$60,$7F,$54 ; $C353EA
    db $FA,$E3,$83,$31,$B3,$EF,$00,$03,$B6,$E9,$9F,$F0,$BA,$E5,$E0,$77 ; $C353FA
    db $1F,$CC,$E3,$E7,$C0,$89,$E7,$16,$80,$F7,$47,$B5,$0F,$7F,$21,$05 ; $C3540A
    db $47,$BB,$23,$0F,$BD,$A9,$BF,$4E,$BD,$97,$FB,$BE,$01,$09,$9D,$7A ; $C3541A
    db $1D,$FB,$9D,$54,$86,$FB,$04,$FB,$9E,$7D,$09,$77,$FF,$91,$C5,$D1 ; $C3542A
    db $7D,$4A,$F9,$89,$70,$DF,$CF,$8F,$83,$87,$FE,$D7,$C0,$BF,$9F,$E1 ; $C3543A
    db $3E,$DD,$0F,$40,$63,$C1,$FF,$03,$46,$FC,$35,$74,$F9,$A7,$FF,$E4 ; $C3544A
    db $C8,$93,$DC,$3B,$DB,$02,$3F,$D9,$3E,$D0,$3F,$E4,$65,$6F,$B1,$C3 ; $C3545A
    db $DF,$88,$D0,$8F,$D0,$98,$F7,$E1,$F7,$60,$E7,$31,$BC,$05,$1D,$B1 ; $C3546A
    db $EF,$08,$50,$13,$98,$FF,$E1,$BE,$01,$60,$DF,$31,$DE,$0E,$FF,$CF ; $C3547A
    db $D4,$78,$07,$04,$00,$0B,$F4,$0C,$A7,$DC,$DF,$30,$01,$BF,$00,$68 ; $C3548A
    db $7F,$C4,$FB,$05,$FB,$24,$D0,$EA,$5D,$B3,$D0,$42,$B9,$E0,$A8,$BF ; $C3549A
    db $C6,$01,$D8,$6F,$D5,$30,$D0,$6F,$83,$E0,$5F,$C0,$EA,$1D,$BF,$C0 ; $C354AA
    db $CE,$3F,$FA,$75,$3F,$0E,$48,$7F,$FB,$F3,$78,$B2,$01,$EB,$E3,$DD ; $C354BA
    db $79,$8F,$3B,$DC,$FB,$3C,$7B,$BC,$F6,$39,$48,$F7,$20,$DF,$C0,$41 ; $C354CA
    db $3B,$F0,$F7,$57,$39,$EF,$DB,$33,$07,$04,$41,$F0,$0F,$57,$AB,$B2 ; $C354DA
    db $09,$BF,$76,$49,$B7,$03,$83,$01,$9F,$7D,$1F,$FA,$EC,$02,$FF,$CE ; $C354EA
    db $01,$CF,$B1,$37,$3E,$C0,$23,$5D,$FE,$8E,$DF,$70,$C3,$FF,$41,$BF ; $C354FA
    db $5C,$94,$29,$EF,$2E,$F3,$2D,$F3,$55,$EB,$8A,$F7,$C2,$FF,$83,$FF ; $C3550A
    db $15,$BD,$61,$E3,$FF,$FE,$02,$FE,$07,$FF,$DF,$61,$FF,$D4,$3F,$E1 ; $C3551A
    db $14,$76,$BF,$11,$00,$A0,$C1,$98,$C0,$87,$C0,$80,$C7,$24,$C1,$C7 ; $C3552A
    db $FF,$07,$A0,$FF,$18,$FF,$87,$13,$8B,$C1,$3B,$FF,$5B,$C7,$0B,$17 ; $C3553A
    db $01,$43,$4F,$7F,$47,$FF,$F7,$C0,$07,$5B,$A4,$2F,$D0,$30,$17,$E8 ; $C3554A
    db $A2,$4F,$F8,$07,$04,$FC,$33,$CD,$FB,$04,$58,$B9,$D6,$2B,$FF,$C4 ; $C3555A
    db $5C,$C7,$20,$C2,$E7,$C2,$F6,$FC,$4B,$FE,$09,$DE,$69,$CC,$BB,$FB ; $C3556A
    db $C2,$10,$7D,$C2,$FD,$F9,$F1,$04,$FF,$FB,$05,$E0,$06,$FF,$FE,$FE ; $C3557A
    db $CA,$F6,$1C,$E2,$E7,$F2,$FF,$9C,$80,$6F,$4F,$82,$FD,$E2,$1D,$F2 ; $C3558A
    db $0D,$D2,$FF,$55,$0F,$9F,$9A,$03,$4D,$C5,$C7,$EA,$B5,$CA,$77,$29 ; $C3559A
    db $F7,$2B,$DF,$27,$DE,$2F,$FA,$1F,$F8,$3F,$E0,$E9,$06,$5D,$EB,$8E ; $C355AA
    db $ED,$F5,$FF,$A8,$94,$3A,$A0,$B1,$4E,$FE,$01,$07,$77,$E0,$D4,$03 ; $C355BA
    db $13,$3F,$C0,$22,$3E,$C1,$2C,$77,$01,$73,$D5,$2E,$EA,$04,$33,$D5 ; $C355CA
    db $1F,$2A,$A8,$57,$06,$5B,$D1,$1C,$00,$DE,$5A,$62,$AA,$4D,$45,$FE ; $C355DA
    db $55,$A6,$B8,$75,$00,$DE,$21,$F5,$0A,$AA,$55,$5E,$D9,$59,$DB,$D7 ; $C355EA
    db $8E,$05,$F2,$0B,$01,$5A,$FE,$0E,$8F,$FE,$DB,$27,$5B,$A7,$7C,$83 ; $C355FA
    db $9C,$E3,$DC,$63,$E6,$3B,$52,$BF,$0A,$5D,$E1,$02,$E2,$05,$5F,$50 ; $C3560A
    db $AF,$51,$87,$60,$01,$86,$FE,$03,$F1,$05,$1F,$86,$7F,$E9,$06,$0F ; $C3561A
    db $52,$FD,$33,$45,$E1,$30,$C7,$0B,$8A,$48,$BD,$39,$CE,$F9,$79,$21 ; $C3562A
    db $FE,$C5,$0B,$F6,$53,$BB,$EC,$01,$03,$01,$1A,$EA,$64,$BD,$03,$1C ; $C3563A
    db $19,$F7,$1A,$05,$C1,$31,$2D,$EF,$28,$E8,$9C,$41,$EB,$3B,$0C,$0B ; $C3564A
    db $F9,$0D,$FF,$31,$24,$00,$FB,$2A,$F7,$39,$E7,$C9,$FE,$29,$E1,$C6 ; $C3565A
    db $0C,$F3,$BA,$31,$19,$61,$3F,$05,$6F,$C0,$3B,$7E,$BF,$BC,$FF,$6B ; $C3566A
    db $1A,$35,$9F,$F7,$4A,$F7,$32,$DF,$09,$F7,$1B,$F4,$0E,$F9,$9C,$73 ; $C3567A
    db $44,$DD,$D4,$DD,$47,$DF,$C5,$DC,$4E,$DD,$C4,$2E,$09,$18,$CC,$DD ; $C3568A
    db $44,$FB,$D4,$6B,$47,$FF,$C4,$7B,$4C,$F3,$03,$D4,$6F,$34,$8C,$73 ; $C3569A
    db $33,$52,$F5,$BF,$27,$3F,$3F,$60,$01,$39,$FF,$27,$01,$FE,$9C,$F3 ; $C356AA
    db $3D,$CA,$3D,$DE,$D4,$E6,$C7,$03,$F6,$33,$00,$DC,$DD,$DE,$FF,$FD ; $C356BA
    db $FC,$FC,$FD,$50,$87,$CF,$D4,$EF,$03,$9C,$67,$9E,$EF,$BC,$57,$A1 ; $C356CA
    db $65,$7D,$2C,$DF,$1F,$A3,$37,$3C,$A6,$A3,$17,$0F,$08,$3D,$FE,$1C ; $C356DA
    db $FF,$3B,$FE,$37,$F8,$2C,$F3,$D0,$EF,$3B,$0F,$66,$03,$BF,$F3,$FE ; $C356EA
    db $72,$FF,$73,$90,$03,$01,$B9,$59,$FD,$BA,$C3,$7C,$37,$FA,$3B,$E4 ; $C356FA
    db $37,$EA,$37,$EC,$3B,$EE,$35,$EE,$31,$EF,$21,$FF,$03,$00,$01,$F5 ; $C3570A
    db $0B,$BB,$45,$18,$70,$8F,$BA,$03,$AF,$92,$3A,$6D,$10,$F1,$7F,$0F ; $C3571A
    db $3F,$E0,$05,$C7,$51,$3F,$FA,$E7,$04,$FF,$FF,$F4,$17,$D3,$18,$77 ; $C3572A
    db $B0,$01,$58,$77,$B8,$63,$50,$7F,$50,$FF,$5F,$A0,$7F,$80,$5A,$B5 ; $C3573A
    db $7D,$82,$03,$58,$B7,$00,$01,$B8,$57,$46,$FD,$3D,$FF,$0F,$08,$BF ; $C3574A
    db $0E,$BE,$0A,$0C,$01,$BA,$9E,$BA,$D0,$83,$5C,$7F,$3C,$AC,$5F,$9C ; $C3575A
    db $6F,$A8,$57,$9E,$6B,$AA,$7F,$16,$EB,$18,$5F,$FE,$79,$FE,$06,$1F ; $C3576A
    db $02,$9E,$0E,$03,$04,$0F,$2E,$4C,$EB,$52,$C8,$DB,$F7,$C7,$4A,$C0 ; $C3577A
    db $4C,$C3,$44,$C3,$46,$CF,$4D,$CC,$88,$FF,$C8,$FF,$47,$BB,$A4,$FF ; $C3578A
    db $46,$BF,$00,$4C,$FB,$66,$FE,$61,$FC,$E2,$FE,$8A,$43,$C5,$62,$FE ; $C3579A
    db $76,$FE,$A9,$CB,$07,$D9,$60,$DF,$A2,$DD,$52,$C5,$D5,$CB,$03,$76 ; $C357AA
    db $87,$CB,$6A,$F7,$41,$CC,$C6,$C1,$2C,$E3,$14,$F3,$08,$7A,$29,$00 ; $C357BA
    db $AE,$C7,$55,$80,$9F,$10,$EF,$08,$F7,$07,$AE,$B8,$0F,$7E,$33,$7E ; $C357CA
    db $EE,$49,$57,$7F,$FF,$72,$73,$7E,$30,$C3,$6A,$03,$D7,$7C,$EB,$4C ; $C357DA
    db $1D,$0F,$BB,$00,$B9,$AB,$A9,$A7,$AF,$A3,$A1,$A2,$75,$E8,$3D,$FF ; $C357EA
    db $48,$C1,$B9,$EF,$A9,$01,$57,$A6,$5B,$A5,$DF,$A0,$DF,$D6,$07,$01 ; $C357FA
    db $DE,$A1,$7E,$3F,$C4,$03,$7B,$47,$4B,$D2,$08,$BF,$AB,$EB,$1C,$35 ; $C3580A
    db $AB,$01,$B4,$1B,$7F,$A9,$76,$33,$04,$03,$A9,$F7,$49,$BE,$A2,$7F ; $C3581A
    db $D0,$7B,$7F,$9C,$03,$7F,$4B,$F4,$33,$DC,$0B,$89,$37,$19,$C3,$7F ; $C3582A
    db $FF,$A9,$77,$75,$D0,$DD,$BD,$F0,$62,$E5,$F0,$30,$4C,$55,$EA,$95 ; $C3583A
    db $0E,$D0,$EF,$E4,$9B,$A4,$7B,$97,$F0,$1D,$8F,$7F,$F5,$47,$11,$7C ; $C3584A
    db $4B,$21,$FD,$08,$09,$EF,$01,$FB,$A0,$1F,$FF,$F7,$A1,$0F,$DF,$09 ; $C3585A
    db $14,$01,$29,$FF,$FE,$D3,$80,$F9,$F9,$5C,$D9,$BA,$00,$80,$FD,$F9 ; $C3586A
    db $F6,$FD,$A2,$FD,$C2,$EE,$87,$62,$A8,$7F,$D5,$14,$60,$8C,$40,$7F ; $C3587A
    db $20,$5F,$95,$03,$1B,$06,$7F,$7D,$FF,$01,$77,$00,$01,$06,$F9,$79 ; $C3588A
    db $8F,$0C,$7E,$FE,$44,$7E,$19,$40,$55,$7F,$00,$43,$74,$7F,$FF,$7E ; $C3589A
    db $9D,$77,$44,$49,$99,$40,$BF,$50,$43,$7F,$61,$80,$BE,$49,$7F,$09 ; $C358AA
    db $D7,$37,$07,$10,$F9,$E1,$F7,$21,$40,$6C,$3F,$FD,$C9,$60,$BE,$0F ; $C358BA
    db $06,$FD,$10,$EF,$02,$E1,$7E,$21,$FF,$DE,$63,$54,$60,$DF,$F7,$19 ; $C358CA
    db $FD,$11,$FD,$13,$01,$F3,$FF,$A0,$DF,$0D,$F7,$0E,$19,$FE,$11,$EF ; $C358DA
    db $33,$9F,$D7,$7F,$30,$02,$5D,$77,$44,$77,$00,$4D,$0E,$81,$7F,$18 ; $C358EA
    db $1F,$30,$CF,$5D,$44,$BF,$9D,$77,$FD,$A5,$20,$7B,$7D,$40,$48,$7F ; $C358FA
    db $1F,$7F,$76,$81,$F9,$49,$BF,$81,$D9,$AD,$83,$A5,$12,$4A,$37,$03 ; $C3590A
    db $9D,$03,$74,$29,$80,$A9,$37,$20,$03,$FC,$03,$FF,$7D,$97,$06,$36 ; $C3591A
    db $5F,$2B,$7F,$01,$62,$1D,$0B,$FC,$17,$74,$CC,$3F,$01,$7F,$F8,$07 ; $C3592A
    db $AB,$1D,$7F,$87,$D5,$EB,$50,$55,$0E,$FA,$02,$7A,$7E,$A2,$06,$97 ; $C3593A
    db $1F,$0C,$80,$FF,$81,$FE,$82,$FD,$7A,$E5,$7F,$C3,$7F,$C0,$0F,$55 ; $C3594A
    db $03,$80,$AA,$80,$80,$FA,$F7,$82,$3C,$DF,$DF,$DF,$91,$5F,$D7,$C1 ; $C3595A
    db $08,$03,$07,$DF,$E0,$DF,$60,$B3,$6F,$7F,$9C,$3F,$1D,$7A,$78,$03 ; $C3596A
    db $3F,$07,$01,$78,$E7,$38,$3D,$3F,$40,$B8,$72,$FF,$AA,$40,$55,$20 ; $C3597A
    db $EF,$10,$77,$10,$FB,$FF,$FB,$3F,$D9,$7D,$18,$99,$0D,$0C,$01,$F3 ; $C3598A
    db $83,$5F,$00,$AA,$00,$05,$AE,$CB,$FE,$9D,$FE,$8A,$04,$61,$47,$04 ; $C3599A
    db $87,$9B,$AB,$01,$55,$12,$CE,$1F,$EF,$28,$8A,$01,$E9,$1E,$E7,$DC ; $C359AA
    db $06,$22,$73,$AA,$7F,$DB,$12,$3F,$29,$C3,$02,$3F,$F7,$EF,$EF,$CB ; $C359BA
    db $05,$3F,$E6,$86,$39,$E6,$FF,$4F,$00,$02,$80,$04,$A0,$42,$90,$45 ; $C359CA
    db $03,$03,$88,$44,$A0,$48,$80,$30,$99,$A1,$D6,$10,$D4,$C5,$E3,$35 ; $C359DA
    db $E7,$2B,$CD,$02,$84,$00,$50,$00,$2A,$02,$50,$14,$01,$20,$0B,$00 ; $C359EA
    db $04,$48,$C1,$50,$FF,$2A,$E6,$03,$43,$75,$0B,$8B,$23,$50,$8F,$82 ; $C359FA
    db $6A,$90,$55,$80,$68,$80,$40,$82,$40,$85,$40,$AB,$41,$B4,$02,$25 ; $C35A0A
    db $3B,$20,$E7,$05,$FF,$2B,$FF,$34,$C0,$25,$A8,$A8,$41,$00,$03,$0C ; $C35A1A
    db $00,$2F,$42,$19,$65,$28,$03,$41,$40,$00,$A8,$FF,$41,$B0,$C7,$2F ; $C35A2A
    db $FF,$19,$EE,$A4,$C2,$41,$5F,$30,$95,$50,$82,$05,$00,$52,$33,$02 ; $C35A3A
    db $A0,$61,$A0,$14,$6B,$FF,$95,$3B,$71,$52,$1F,$01,$C0,$09,$E0,$00 ; $C35A4A
    db $30,$50,$01,$50,$90,$30,$10,$50,$10,$90,$B3,$02,$06,$F0,$BA,$61 ; $C35A5A
    db $EF,$1C,$90,$EF,$10,$65,$8F,$1A,$1F,$E0,$05,$E3,$17,$00,$2B,$00 ; $C35A6A
    db $D5,$20,$0A,$80,$73,$01,$AC,$02,$19,$2C,$60,$17,$C7,$75,$D5,$58 ; $C35A7A
    db $BD,$70,$EE,$A2,$F7,$01,$AC,$09,$F0,$01,$30,$1C,$70,$70,$F0,$3F ; $C35A8A
    db $70,$10,$0B,$B0,$E0,$E9,$F7,$0E,$60,$DF,$40,$BF,$B3,$B9,$99,$3D ; $C35A9A
    db $63,$04,$C0,$DE,$0A,$00,$15,$00,$07,$4A,$00,$24,$01,$90,$1D,$87 ; $C35AAA
    db $03,$E8,$F7,$11,$FF,$22,$EB,$5D,$01,$49,$48,$63,$4D,$FF,$FC,$C7 ; $C35ABA
    db $9F,$54,$7A,$5A,$23,$05,$0E,$80,$02,$50,$01,$3A,$2B,$03,$D1,$1F ; $C35ACA
    db $85,$FF,$55,$D9,$E1,$50,$2C,$C7,$22,$2C,$C8,$05,$03,$C3,$3F,$90 ; $C35ADA
    db $05,$62,$96,$BB,$41,$03,$3F,$15,$C3,$33,$09,$40,$1D,$03,$15,$80 ; $C35AEA
    db $01,$27,$80,$AA,$40,$00,$39,$81,$53,$80,$03,$3A,$09,$01,$08,$A0 ; $C35AFA
    db $0A,$00,$D2,$C3,$46,$03,$D1,$7E,$F4,$03,$C5,$B8,$C5,$90,$3F,$08 ; $C35B0A
    db $1F,$04,$EF,$A6,$37,$52,$1F,$BB,$5B,$0B,$BF,$AB,$5F,$40,$D9,$04 ; $C35B1A
    db $FB,$26,$DB,$12,$FF,$1C,$5B,$F7,$AA,$61,$B0,$37,$55,$02,$93,$07 ; $C35B2A
    db $EF,$02,$67,$20,$07,$4B,$9F,$AB,$14,$1F,$4B,$1F,$03,$41,$5F,$3F ; $C35B3A
    db $8A,$DA,$1B,$42,$01,$4A,$FF,$17,$3F,$08,$70,$03,$3E,$7F,$75,$7F ; $C35B4A
    db $76,$5F,$F5,$7F,$C6,$7F,$80,$62,$F3,$8C,$FE,$81,$01,$D5,$BA,$AE ; $C35B5A
    db $D1,$DD,$72,$F6,$D6,$CA,$C6,$14,$CF,$20,$AD,$4B,$40,$A0,$4D,$00 ; $C35B6A
    db $80,$7F,$20,$DF,$8A,$62,$BB,$54,$A1,$FF,$3F,$51,$7D,$3F,$CE,$E0 ; $C35B7A
    db $01,$3F,$DD,$B2,$A6,$D9,$C7,$3F,$DE,$21,$8F,$1C,$3F,$15,$EA,$07 ; $C35B8A
    db $A0,$8D,$00,$0A,$00,$F5,$01,$FE,$22,$DD,$09,$F6,$02,$68,$FD,$1B ; $C35B9A
    db $00,$0F,$05,$F0,$0F,$EE,$0A,$DA,$0E,$08,$EE,$09,$D0,$03,$A4,$0D ; $C35BAA
    db $00,$D5,$B8,$7A,$2A,$6B,$96,$97,$6D,$6F,$9B,$DF,$26,$63,$9C,$F4 ; $C35BBA
    db $39,$3F,$03,$00,$BA,$FF,$D4,$B6,$0B,$03,$75,$A2,$FB,$89,$00,$38 ; $C35BCA
    db $01,$BA,$45,$D4,$2B,$AB,$55,$C0,$03,$A3,$5D,$D8,$2F,$FF,$EB,$BB ; $C35BDA
    db $5B,$BA,$38,$EB,$1A,$03,$12,$E8,$75,$C2,$CA,$FD,$02,$BE,$E1,$45 ; $C35BEA
    db $50,$AF,$1E,$E5,$F8,$AF,$17,$ED,$B8,$EF,$A0,$C8,$33,$84,$0B,$80 ; $C35BFA
    db $F5,$D3,$C3,$A1,$5F,$DA,$2F,$81,$7F,$58,$AF,$95,$7F,$08,$FF,$89 ; $C35C0A
    db $03,$F7,$4B,$0F,$10,$C6,$01,$A1,$07,$FD,$33,$1D,$04,$FF,$B8,$72 ; $C35C1A
    db $1B,$A8,$F7,$11,$03,$4B,$FB,$57,$A5,$0F,$55,$D0,$73,$54,$E1,$03 ; $C35C2A
    db $FF,$0A,$70,$7F,$81,$57,$A8,$2F,$D1,$55,$AA,$A2,$DD,$5C,$AB,$D0 ; $C35C3A
    db $03,$9F,$74,$FA,$0E,$D1,$E8,$FF,$D2,$8D,$D1,$A3,$C1,$04,$C0,$FA ; $C35C4A
    db $A5,$80,$C3,$E8,$97,$D2,$2D,$A8,$D7,$CE,$A3,$00,$8A,$A9,$F2,$0B ; $C35C5A
    db $6C,$5F,$75,$B4,$60,$DB,$03,$90,$FF,$28,$DF,$77,$08,$39,$01,$03 ; $C35C6A
    db $80,$CC,$33,$03,$A4,$E6,$03,$75,$73,$82,$03,$80,$0F,$2B,$80,$7F ; $C35C7A
    db $A4,$5B,$C0,$03,$04,$FB,$C2,$3D,$04,$8A,$F5,$92,$AE,$83,$CA,$91 ; $C35C8A
    db $75,$4A,$FF,$84,$C8,$C7,$0B,$44,$BF,$40,$CA,$87,$35,$95,$6A,$4A ; $C35C9A
    db $B5,$84,$7B,$70,$AF,$FE,$FF,$DF,$43,$2B,$97,$8E,$03,$87,$3B,$03 ; $C35CAA
    db $82,$90,$CF,$DF,$20,$0A,$F5,$31,$97,$68,$03,$87,$78,$87,$03,$83 ; $C35CBA
    db $7D,$84,$4A,$65,$80,$56,$50,$30,$01,$94,$6B,$0C,$23,$FC,$90,$6F ; $C35CCA
    db $03,$10,$3B,$EF,$22,$A3,$23,$22,$DD,$12,$84,$35,$10,$FF,$65,$05 ; $C35CDA
    db $2A,$03,$03,$12,$ED,$4B,$F5,$00,$17,$03,$FD,$90,$EF,$2F,$D5,$50 ; $C35CEA
    db $E2,$03,$39,$E3,$84,$79,$00,$F9,$04,$79,$04,$F4,$3E,$F5,$20,$EA ; $C35CFA
    db $20,$D5,$20,$42,$16,$F0,$B7,$01,$34,$DB,$57,$20,$83,$DF,$FA,$10 ; $C35D0A
    db $F4,$A4,$F4,$F7,$10,$C0,$E8,$53,$00,$9F,$00,$5F,$1B,$00,$11,$EF ; $C35D1A
    db $01,$BB,$8D,$D9,$43,$2C,$CC,$F3,$01,$75,$E3,$53,$35,$80,$03,$08 ; $C35D2A
    db $E8,$08,$FB,$08,$60,$0B,$BE,$75,$8A,$2A,$D5,$31,$35,$CA,$03,$08 ; $C35D3A
    db $FF,$00,$01,$F7,$DD,$55,$DF,$1C,$80,$DF,$40,$03,$25,$20,$1F,$06 ; $C35D4A
    db $1F,$55,$AA,$F9,$2D,$40,$BF,$EE,$01,$0E,$1D,$54,$00,$A2,$2E,$FB ; $C35D5A
    db $95,$3E,$03,$A4,$11,$40,$FF,$7C,$00,$02,$55,$45,$88,$19,$A2,$54 ; $C35D6A
    db $51,$03,$10,$12,$FF,$83,$EC,$AD,$88,$E3,$07,$88,$9F,$D1,$04,$2F ; $C35D7A
    db $FF,$91,$0B,$9B,$FF,$84,$55,$08,$A2,$14,$01,$A8,$02,$54,$15,$AA ; $C35D8A
    db $2A,$54,$4E,$FF,$93,$76,$14,$C2,$74,$54,$2A,$6F,$54,$58,$FF,$0D ; $C35D9A
    db $5F,$04,$0E,$CE,$83,$44,$01,$1B,$14,$51,$2A,$A0,$15,$F2,$D8,$A3 ; $C35DAA
    db $F0,$FF,$71,$44,$1B,$14,$C2,$D5,$15,$FF,$E3,$85,$20,$0A,$18,$05 ; $C35DBA
    db $EC,$A4,$36,$52,$1E,$BA,$1B,$4B,$1F,$3B,$5F,$18,$D3,$04,$FB,$74 ; $C35DCA
    db $24,$80,$FF,$1A,$F7,$0B,$FE,$5B,$EF,$50,$1B,$0A,$A8,$15,$63,$04 ; $C35DDA
    db $3B,$55,$22,$AA,$01,$55,$03,$0A,$C8,$33,$2A,$63,$22,$F8,$3D,$2D ; $C35DEA
    db $0B,$BF,$06,$1F,$5F,$0F,$3F,$9F,$03,$87,$07,$4E,$FF,$77,$0C,$5E ; $C35DFA
    db $EB,$2E,$FB,$03,$AE,$A2,$03,$4A,$7C,$5B,$7F,$B8,$3B,$00,$FC,$FF ; $C35E0A
    db $97,$5D,$57,$10,$B1,$05,$10,$FD,$02,$80,$1F,$FB,$E7,$FF,$DF,$FB ; $C35E1A
    db $DF,$4D,$B7,$29,$C0,$1F,$63,$B6,$49,$6E,$03,$D1,$FE,$83,$FC,$07 ; $C35E2A
    db $E4,$A9,$A3,$7F,$FE,$06,$15,$A0,$48,$FD,$3E,$EB,$7C,$04,$D7,$FC ; $C35E3A
    db $EF,$F4,$FF,$5F,$6B,$CA,$08,$00,$44,$AF,$07,$D1,$02,$83,$2E,$3D ; $C35E4A
    db $F5,$02,$00,$8C,$5F,$7E,$81,$01,$FE,$F7,$21,$1F,$BE,$09,$7E,$08 ; $C35E5A
    db $CF,$8D,$17,$00,$1F,$3F,$FF,$77,$CF,$7F,$BF,$F7,$28,$BF,$ED,$C9 ; $C35E6A
    db $FE,$EF,$0B,$81,$7E,$C7,$87,$6E,$93,$DE,$A3,$7F,$81,$3F,$C0,$17 ; $C35E7A
    db $FD,$13,$FE,$9E,$04,$7F,$00,$05,$7F,$70,$80,$10,$7F,$80,$F0,$08 ; $C35E8A
    db $FF,$01,$FE,$10,$F3,$05,$5F,$BF,$C0,$09,$80,$A8,$FF,$7C,$D7,$3E ; $C35E9A
    db $03,$EB,$1F,$F7,$0F,$FF,$07,$BE,$09,$80,$F0,$09,$9F,$FF,$D4,$7F ; $C35EAA
    db $60,$FA,$66,$7F,$F6,$7F,$FD,$8B,$91,$3D,$01,$83,$E8,$E7,$C5,$FF ; $C35EBA
    db $E1,$26,$FD,$FB,$1F,$5C,$81,$3D,$7F,$C1,$BF,$C5,$3B,$E1,$9F,$FA ; $C35ECA
    db $65,$FE,$B1,$39,$09,$DF,$9C,$50,$5E,$AF,$1D,$2E,$FF,$5E,$08,$3D ; $C35EDA
    db $04,$1D,$81,$F8,$7A,$57,$C1,$7F,$80,$03,$5F,$7A,$FD,$FD,$7E,$6F ; $C35EEA
    db $FC,$07,$BF,$7E,$D7,$7E,$AB,$50,$C9,$00,$B8,$55,$00,$20,$7F,$40 ; $C35EFA
    db $6F,$00,$5F,$10,$7F,$04,$7F,$29,$04,$BF,$20,$DF,$5F,$99,$A4,$61 ; $C35F0A
    db $FB,$29,$12,$D6,$7F,$D6,$A5,$5F,$11,$C1,$A9,$09,$FF,$53,$F4,$01 ; $C35F1A
    db $80,$5F,$11,$EF,$03,$FC,$09,$F7,$52,$6C,$AD,$59,$1F,$85,$03,$FF ; $C35F2A
    db $51,$FF,$AF,$FF,$FB,$C0,$01,$5F,$85,$7A,$51,$AF,$AF,$1D,$51,$FA ; $C35F3A
    db $05,$4B,$46,$55,$BA,$C9,$00,$00,$3C,$7F,$51,$7F,$6A,$FF,$5D,$FF ; $C35F4A
    db $56,$77,$49,$C0,$1F,$3C,$C3,$51,$AE,$6A,$07,$95,$5D,$A2,$77,$88 ; $C35F5A
    db $53,$FD,$89,$69,$00,$3A,$D3,$FF,$83,$7F,$59,$7F,$7B,$FB,$12,$1F ; $C35F6A
    db $3A,$C5,$A7,$FF,$06,$7F,$59,$AE,$7B,$9C,$5F,$C0,$FD,$81,$DF,$03 ; $C35F7A
    db $BF,$89,$E2,$81,$57,$83,$5F,$C1,$7E,$81,$00,$0B,$FC,$89,$77,$03 ; $C35F8A
    db $FD,$57,$A9,$32,$FC,$2F,$1F,$45,$28,$E3,$EA,$E5,$A5,$8B,$7B,$0E ; $C35F9A
    db $1F,$45,$BA,$00,$0F,$55,$DF,$25,$FC,$0B,$7A,$85,$22,$E9,$FF,$97 ; $C35FAA
    db $FF,$04,$13,$A1,$6B,$88,$49,$C0,$93,$84,$FB,$D1,$AE,$6B,$70,$94 ; $C35FBA
    db $7D,$80,$68,$FA,$19,$70,$BF,$3B,$AE,$04,$51,$02,$04,$F9,$04,$7D ; $C35FCA
    db $04,$FD,$AD,$64,$72,$04,$01,$2A,$9F,$06,$18,$FB,$FD,$06,$0A,$FA ; $C35FDA
    db $FF,$0F,$90,$6F,$2A,$0C,$14,$55,$3F,$3C,$7F,$74,$0B,$77,$18,$F7 ; $C35FEA
    db $F7,$53,$BF,$28,$19,$3E,$F7,$09,$1C,$93,$BF,$0F,$FF,$E9,$06,$FF ; $C35FFA
    db $3E,$0F,$F1,$06,$9C,$FF,$96,$A0,$00,$08,$C9,$F8,$97,$80,$3E,$80 ; $C3600A
    db $BF,$E2,$00,$FF,$80,$9D,$CC,$BF,$88,$7F,$40,$47,$FF,$2F,$42,$6F ; $C3601A
    db $05,$A7,$FF,$EC,$0C,$3F,$07,$42,$A8,$6D,$80,$38,$60,$87,$0C,$BF ; $C3602A
    db $16,$B3,$05,$7B,$7B,$13,$3B,$28,$4D,$9D,$CB,$3F,$C1,$0C,$F3,$1A ; $C3603A
    db $E5,$75,$FF,$11,$EF,$80,$17,$00,$46,$03,$98,$E1,$F7,$20,$EF,$B9 ; $C3604A
    db $B9,$0A,$FF,$5F,$80,$16,$E4,$61,$C1,$7E,$61,$20,$67,$FD,$F4,$9F ; $C3605A
    db $D7,$7F,$17,$A1,$85,$83,$3D,$63,$E7,$3A,$38,$01,$20,$25,$00,$39 ; $C3606A
    db $09,$0E,$2F,$09,$FF,$F9,$46,$23,$DD,$28,$F7,$0E,$FB,$12,$EF,$E0 ; $C3607A
    db $74,$0A,$F5,$32,$39,$6B,$29,$AF,$89,$7D,$F9,$6B,$49,$CD,$E9,$6B ; $C3608A
    db $39,$D9,$1B,$64,$9F,$14,$EF,$89,$7F,$38,$FF,$50,$BF,$CE,$05,$28 ; $C3609A
    db $AA,$A9,$D0,$E3,$C1,$A0,$40,$60,$4A,$5F,$DF,$43,$DF,$46,$FC,$FD ; $C360AA
    db $FD,$E1,$09,$C1,$D7,$99,$00,$4A,$BF,$1F,$E5,$43,$FC,$45,$FB,$37 ; $C360BA
    db $BE,$C7,$A7,$53,$F8,$8E,$00,$30,$F0,$A5,$C5,$90,$84,$04,$F0,$80 ; $C360CA
    db $F0,$AB,$39,$2F,$1C,$E1,$F0,$89,$2E,$DA,$C8,$7B,$6A,$4C,$4C,$0E ; $C360DA
    db $F5,$F1,$68,$20,$BA,$30,$69,$49,$B7,$8F,$49,$F7,$99,$6F,$24,$FB ; $C360EA
    db $F1,$EE,$A7,$DD,$67,$00,$0E,$85,$7A,$F0,$58,$50,$1C,$70,$75,$7E ; $C360FA
    db $20,$F3,$7F,$60,$3F,$E0,$3F,$71,$20,$5D,$A0,$8E,$7B,$AF,$00,$B2 ; $C3610A
    db $03,$3A,$03,$20,$AB,$B0,$7F,$AE,$03,$45,$40,$82,$05,$80,$15,$40 ; $C3611A
    db $2A,$80,$5C,$7F,$50,$FF,$77,$45,$55,$E9,$15,$70,$7F,$89,$30,$0A ; $C3612A
    db $18,$01,$04,$EC,$26,$76,$12,$BF,$1B,$D4,$A7,$7F,$1B,$71,$7F,$66 ; $C3613A
    db $DB,$B2,$54,$83,$7F,$5A,$EF,$40,$0A,$A0,$E9,$01,$BB,$83,$03,$0A ; $C3614A
    db $EB,$07,$5F,$F7,$18,$7F,$15,$00,$F0,$00,$E7,$A7,$42,$42,$3F,$9E ; $C3615A
    db $07,$08,$00,$97,$47,$A9,$FE,$00,$FC,$07,$29,$C0,$00,$E0,$A0,$09 ; $C3616A
    db $1F,$1D,$F3,$39,$00,$E1,$19,$27,$01,$9C,$08,$00,$E0,$37,$71,$F8 ; $C3617A
    db $3D,$FE,$47,$61,$1F,$BC,$09,$1F,$78,$7F,$01,$F7,$07,$01,$DC,$08 ; $C3618A
    db $BF,$00,$80,$F7,$05,$01,$BC,$08,$1F,$18,$3F,$80,$F3,$17,$3F,$80 ; $C3619A
    db $C1,$07,$03,$95,$7B,$08,$F7,$04,$03,$85,$11,$07,$6B,$4F,$43,$A5 ; $C361AA
    db $06,$01,$4B,$B7,$28,$98,$1F,$03,$05,$FB,$3C,$A8,$77,$06,$3F,$13 ; $C361BA
    db $EA,$34,$FF,$33,$03,$03,$95,$6A,$0A,$F5,$09,$03,$13,$ED,$00,$F6 ; $C361CA
    db $EF,$43,$01,$C0,$FF,$1B,$33,$E8,$37,$3F,$00,$03,$41,$BF,$E8,$77 ; $C361DA
    db $41,$FF,$68,$2A,$B7,$00,$F9,$A5,$03,$27,$DD,$0D,$1C,$A6,$FF,$25 ; $C361EA
    db $0B,$0C,$0C,$F3,$10,$EF,$03,$35,$00,$CF,$0B,$F4,$B6,$4D,$29,$D6 ; $C361FA
    db $82,$EA,$60,$95,$03,$8A,$29,$FF,$06,$03,$70,$C3,$3D,$84,$7B,$C3 ; $C3620A
    db $BD,$A4,$DB,$CB,$35,$26,$D9,$80,$03,$BE,$FF,$B4,$38,$FF,$AE,$03 ; $C3621A
    db $2E,$EA,$5D,$E3,$2C,$42,$B5,$B6,$E3,$7D,$94,$6F,$AE,$71,$B4,$4F ; $C3622A
    db $2E,$F1,$B4,$5F,$2C,$D3,$34,$DB,$8E,$D2,$63,$88,$9A,$9F,$06,$67 ; $C3623A
    db $CF,$3F,$15,$C6,$37,$04,$FB,$47,$33,$24,$FB,$83,$24,$AE,$6F,$44 ; $C3624A
    db $2B,$FF,$00,$F0,$95,$03,$75,$C4,$C8,$F7,$66,$99,$00,$03,$50,$EF ; $C3625A
    db $6E,$91,$51,$EE,$EE,$3A,$51,$10,$88,$49,$A5,$0F,$21,$C7,$03,$23 ; $C3626A
    db $18,$03,$90,$1B,$DD,$91,$06,$EE,$72,$CD,$A5,$DA,$03,$33,$AB,$F4 ; $C3627A
    db $03,$44,$BE,$11,$D4,$BA,$4D,$FF,$E4,$F7,$96,$FF,$C7,$F7,$87,$FF ; $C3628A
    db $C5,$F7,$45,$FE,$BA,$7D,$D5,$2E,$E4,$1B,$96,$6D,$C7,$3B,$9F,$78 ; $C3629A
    db $C5,$3A,$23,$37,$80,$03,$E2,$FF,$E3,$FF,$42,$FF,$09,$2B,$F4,$36 ; $C362AA
    db $E9,$00,$03,$F6,$29,$AB,$D4,$52,$ED,$FA,$04,$03,$7B,$00,$DE,$0A ; $C362BA
    db $FF,$EA,$02,$FC,$FF,$EE,$48,$2B,$0A,$F5,$45,$1B,$F0,$78,$BF,$BD ; $C362CA
    db $FD,$09,$1D,$FF,$20,$FB,$60,$9D,$7C,$FD,$42,$8F,$43,$77,$BD,$42 ; $C362DA
    db $09,$F6,$AC,$21,$76,$FA,$3F,$05,$FD,$00,$EF,$08,$DF,$7F,$77,$BA ; $C362EA
    db $39,$04,$55,$FB,$A8,$07,$F7,$E7,$E1,$80,$F7,$EF,$24,$BF,$10,$ED ; $C362FA
    db $EE,$A2,$5F,$F7,$4C,$D7,$20,$D7,$37,$24,$A4,$1F,$74,$5F,$50,$EF ; $C3630A
    db $8F,$BC,$9F,$3F,$01,$03,$FF,$E0,$03,$BD,$5F,$39,$0A,$FF,$98,$7F ; $C3631A
    db $18,$02,$03,$D8,$7F,$38,$EF,$C0,$9E,$7D,$02,$00,$D8,$37,$73,$22 ; $C3632A
    db $FD,$FE,$02,$58,$5F,$9F,$33,$7F,$BF,$29,$FF,$BF,$3F,$17,$FF,$2C ; $C3633A
    db $98,$6F,$3B,$03,$4C,$FF,$58,$FF,$3C,$CF,$E8,$18,$7F,$79,$FD,$07 ; $C3634A
    db $5F,$AD,$1C,$94,$BB,$FD,$02,$5F,$81,$03,$C0,$C7,$07,$01,$C9,$00 ; $C3635A
    db $03,$CC,$CF,$C8,$CD,$C8,$C3,$54,$C0,$18,$4D,$01,$FE,$03,$4C,$F3 ; $C3636A
    db $75,$48,$3E,$7F,$12,$5F,$53,$01,$03,$3C,$37,$C8,$01,$01,$88,$E6 ; $C3637A
    db $01,$BF,$26,$C0,$FF,$03,$47,$BF,$4C,$A7,$39,$03,$BF,$FB,$0E,$6F ; $C3638A
    db $FB,$7F,$43,$3B,$BC,$57,$DB,$3B,$86,$FA,$C5,$EF,$99,$D7,$29,$EF ; $C3639A
    db $39,$5B,$A5,$7F,$81,$07,$3C,$AB,$55,$18,$1F,$51,$EB,$13,$E7,$21 ; $C363AA
    db $EB,$53,$03,$80,$03,$D1,$2F,$85,$7B,$A1,$10,$5F,$81,$7F,$01,$34 ; $C363BA
    db $83,$7D,$03,$8F,$1F,$81,$01,$ED,$77,$84,$1F,$C1,$3F,$9F,$23,$0D ; $C363CA
    db $5F,$4F,$04,$78,$01,$22,$1F,$01,$02,$1E,$0F,$1F,$FE,$04,$FF,$0E ; $C363DA
    db $0A,$FD,$1A,$E5,$74,$17,$80,$F4,$00,$9A,$40,$C0,$A0,$80,$44,$12 ; $C363EA
    db $04,$02,$7D,$97,$09,$8A,$15,$FF,$80,$00,$29,$35,$8C,$20,$38,$0D ; $C363FA
    db $1D,$21,$10,$00,$EE,$A6,$00,$18,$05,$00,$03,$13,$62,$DF,$25,$01 ; $C3640A
    db $FE,$9C,$7B,$05,$D1,$00,$59,$BC,$31,$3A,$20,$34,$01,$38,$3A,$0A ; $C3641A
    db $00,$AC,$C1,$FD,$03,$1C,$03,$F3,$3A,$E5,$35,$EB,$8A,$A0,$4D,$C2 ; $C3642A
    db $FF,$19,$85,$FF,$46,$25,$09,$4F,$39,$01,$3E,$00,$09,$01,$26,$19 ; $C3643A
    db $01,$07,$FC,$00,$A8,$00,$52,$9D,$02,$1F,$AC,$6B,$FD,$52,$EC,$13 ; $C3644A
    db $9F,$E8,$D8,$0E,$FF,$37,$FF,$5F,$85,$4D,$15,$1E,$49,$FB,$07,$1E ; $C3645A
    db $34,$F3,$0C,$12,$58,$A5,$F6,$3B,$FF,$5C,$8F,$43,$0A,$3B,$3F,$7F ; $C3646A
    db $BF,$DF,$14,$60,$FF,$FF,$BF,$A2,$27,$7F,$88,$43,$A3,$80,$ED,$01 ; $C3647A
    db $61,$F0,$04,$3F,$7F,$BD,$7F,$74,$C8,$01,$58,$72,$BF,$68,$DF,$75 ; $C3648A
    db $84,$EE,$09,$41,$B1,$EF,$55,$D0,$7E,$03,$01,$FE,$21,$FE,$0B,$FE ; $C3649A
    db $57,$51,$E0,$09,$5E,$FE,$F1,$26,$FF,$74,$96,$BD,$EF,$0A,$10,$7F ; $C364AA
    db $3B,$5D,$D2,$DF,$62,$DE,$AA,$2C,$7F,$9D,$36,$97,$B7,$67,$BD,$81 ; $C364BA
    db $06,$BA,$7F,$C0,$FF,$C0,$A4,$60,$7F,$A8,$D5,$D4,$7F,$01,$FB,$09 ; $C364CA
    db $4E,$5F,$FE,$81,$A0,$B7,$83,$FE,$03,$11,$FE,$45,$FE,$2B,$28,$DD ; $C364DA
    db $0A,$7F,$47,$D3,$5B,$A3,$83,$07,$BF,$DC,$FF,$B6,$AB,$EF,$E6,$10 ; $C364EA
    db $7F,$F6,$03,$39,$7B,$DA,$7F,$F4,$18,$DA,$FF,$97,$9F,$7F,$D3,$0F ; $C364FA
    db $9F,$E0,$38,$3F,$10,$F7,$A6,$10,$01,$53,$08,$DC,$3F,$B6,$20,$EF ; $C3650A
    db $B8,$00,$1F,$10,$AB,$81,$A5,$14,$EB,$28,$DF,$EF,$30,$95,$01,$DF ; $C3651A
    db $48,$BF,$75,$01,$E7,$0F,$E1,$17,$77,$F7,$03,$A4,$BF,$E9,$1F,$01 ; $C3652A
    db $16,$FF,$F6,$19,$EE,$11,$CE,$F6,$05,$0F,$3F,$FD,$FB,$FB,$05,$0E ; $C3653A
    db $5F,$F9,$0E,$F8,$B4,$B5,$A3,$09,$0B,$4B,$0F,$E7,$11,$52,$FF,$09 ; $C3654A
    db $E3,$3D,$0B,$87,$05,$1E,$F7,$62,$41,$11,$EE,$E5,$FF,$23,$33,$22 ; $C3655A
    db $24,$3C,$24,$04,$2C,$3F,$2F,$29,$2B,$2B,$4A,$7F,$BF,$2D,$FB,$29 ; $C3656A
    db $98,$13,$DD,$85,$29,$DF,$76,$28,$C3,$17,$0D,$FF,$B9,$0E,$FD,$D9 ; $C3657A
    db $0B,$A9,$0D,$39,$3B,$D9,$CF,$89,$DF,$19,$B9,$22,$B1,$7F,$D2,$ED ; $C3658A
    db $FE,$CE,$1D,$C0,$01,$E3,$19,$FE,$9F,$FB,$60,$80,$57,$B9,$97,$C5 ; $C3659A
    db $DB,$0F,$00,$07,$1E,$79,$7F,$02,$85,$0F,$70,$40,$40,$DF,$04,$2B ; $C365AA
    db $F5,$40,$9F,$73,$02,$17,$0F,$9C,$FC,$0C,$B4,$02,$53,$02,$C2,$C3 ; $C365BA
    db $BF,$3F,$19,$BD,$8D,$C5,$29,$9B,$00,$6D,$49,$FF,$0C,$FB,$40,$BF ; $C365CA
    db $39,$EE,$B7,$75,$85,$0D,$78,$43,$40,$ED,$46,$08,$03,$A5,$C1,$F0 ; $C365DA
    db $DC,$5B,$9D,$F0,$B5,$09,$44,$10,$FD,$FF,$09,$FC,$55,$04,$0F,$10 ; $C365EA
    db $3A,$1F,$10,$CF,$27,$06,$79,$1F,$04,$0F,$14,$D2,$45,$5D,$E3,$03 ; $C365FA
    db $70,$A9,$ED,$40,$50,$0F,$EB,$AA,$18,$55,$5D,$A2,$03,$70,$8F,$22 ; $C3660A
    db $2A,$D5,$C5,$27,$00,$7A,$A5,$04,$FA,$04,$11,$31,$7F,$D9,$3B,$4B ; $C3661A
    db $E5,$A8,$AC,$41,$F3,$06,$5B,$22,$BB,$87,$2B,$BA,$79,$08,$7E,$C1 ; $C3662A
    db $00,$BF,$FB,$09,$83,$EF,$52,$FF,$F8,$FF,$74,$8E,$03,$54,$39,$3B ; $C3663A
    db $40,$03,$F5,$19,$DF,$03,$01,$04,$0D,$0B,$09,$01,$00,$00,$03,$02 ; $C3664A
    db $27,$06,$D7,$04,$77,$8E,$88,$DF,$09,$FE,$05,$02,$FF,$FF,$D6,$FD ; $C3665A
    db $55,$FE,$A9,$41,$F2,$02,$03,$00,$D7,$F7,$4F,$00,$81,$67,$02,$F3 ; $C3666A
    db $05,$71,$E1,$0B,$D1,$07,$E1,$0A,$D1,$04,$E1,$08,$41,$00,$81,$A2 ; $C3667A
    db $FD,$41,$EC,$F8,$61,$09,$FE,$90,$FF,$60,$46,$AB,$31,$5C,$28,$20 ; $C3668A
    db $40,$10,$20,$C0,$10,$C3,$10,$E7,$20,$EE,$20,$ED,$D3,$10,$E0,$99 ; $C3669A
    db $81,$7F,$43,$07,$BF,$AA,$5F,$61,$9F,$93,$01,$97,$40,$7E,$03,$03 ; $C366AA
    db $C7,$85,$03,$C2,$30,$EE,$50,$CD,$A0,$8E,$80,$0D,$20,$6E,$D0,$45 ; $C366BA
    db $29,$5F,$00,$A6,$5F,$41,$BF,$86,$7F,$49,$FF,$12,$AE,$DF,$45,$C9 ; $C366CA
    db $1B,$80,$A6,$37,$00,$7F,$80,$05,$BF,$FD,$3A,$4F,$BF,$8F,$26,$3F ; $C366DA
    db $00,$7F,$08,$0E,$1F,$82,$FF,$12,$38,$03,$10,$03,$D0,$E3,$03,$D6 ; $C366EA
    db $80,$F7,$13,$ED,$83,$7D,$10,$60,$EF,$03,$D0,$2F,$83,$7F,$3E,$D6 ; $C366FA
    db $29,$01,$26,$47,$03,$75,$C0,$30,$FB,$0F,$24,$18,$E7,$03,$71,$A2 ; $C3670A
    db $33,$E6,$C4,$03,$FE,$EE,$4D,$A3,$06,$5F,$D4,$2B,$E7,$1B,$03,$09 ; $C3671A
    db $FC,$E7,$80,$7F,$1C,$37,$28,$03,$47,$A8,$87,$39,$FB,$03,$77,$4F ; $C3672A
    db $18,$59,$28,$D7,$03,$A8,$57,$23,$FF,$54,$D1,$49,$03,$FC,$20,$D4 ; $C3673A
    db $B8,$B3,$20,$01,$04,$EB,$C0,$B7,$03,$20,$DF,$30,$34,$DB,$03,$30 ; $C3674A
    db $DF,$06,$10,$FB,$B0,$5F,$03,$74,$80,$26,$47,$84,$03,$70,$8C,$03 ; $C3675A
    db $C1,$3F,$95,$8E,$7B,$87,$10,$03,$9E,$7B,$37,$75,$A4,$98,$39,$03 ; $C3676A
    db $BD,$FF,$55,$00,$F0,$F9,$33,$A4,$5B,$07,$07,$F9,$A4,$5F,$B9,$EE ; $C3677A
    db $3B,$0F,$87,$AD,$FC,$52,$FD,$8C,$E5,$03,$A0,$89,$FE,$73,$00,$B9 ; $C3678A
    db $D7,$4E,$B3,$59,$B7,$3F,$C0,$91,$0F,$86,$D4,$BA,$B3,$84,$95,$FB ; $C3679A
    db $80,$0B,$03,$40,$FF,$86,$9E,$79,$C5,$3A,$8D,$7A,$4E,$B9,$81,$7E ; $C367AA
    db $4C,$BB,$03,$1D,$52,$BF,$C1,$4B,$B3,$41,$C0,$03,$03,$C9,$76,$56 ; $C367BA
    db $E9,$41,$18,$BE,$D6,$69,$03,$56,$ED,$85,$03,$A2,$09,$D3,$73,$B3 ; $C367CA
    db $D3,$33,$81,$89,$03,$FF,$EC,$A9,$33,$43,$A3,$03,$DF,$C6,$01,$1F ; $C367DA
    db $57,$ED,$03,$09,$17,$ED,$9F,$E3,$1C,$0F,$21,$C1,$45,$01,$20,$BF ; $C367EA
    db $FF,$02,$7F,$49,$FE,$02,$11,$FB,$21,$DE,$04,$FB,$3E,$7F,$08,$01 ; $C367FA
    db $F7,$02,$FF,$48,$B7,$11,$EE,$D0,$43,$6B,$C3,$75,$00,$5F,$40,$A4 ; $C3680A
    db $59,$00,$FE,$22,$0A,$FB,$48,$F5,$42,$BD,$3A,$71,$02,$90,$85,$0A ; $C3681A
    db $F7,$80,$F7,$80,$D9,$14,$10,$00,$41,$F7,$13,$DF,$D2,$9D,$BF,$4B ; $C3682A
    db $D5,$48,$A9,$0F,$10,$3A,$7A,$F7,$C0,$15,$06,$00,$08,$FB,$C3,$01 ; $C3683A
    db $88,$FB,$BB,$85,$19,$F7,$EB,$59,$1F,$C1,$61,$88,$F7,$BB,$F4,$04 ; $C3684A
    db $D5,$FF,$22,$C7,$98,$7F,$1C,$60,$03,$1D,$FF,$9A,$7F,$3F,$9F,$7F ; $C3685A
    db $06,$AF,$3C,$FA,$01,$8C,$37,$9D,$57,$C2,$2D,$FE,$FA,$A5,$03,$15 ; $C3686A
    db $F2,$F7,$F1,$AC,$DD,$CC,$9D,$18,$91,$FB,$00,$DB,$3E,$D3,$3E,$D2 ; $C3687A
    db $3F,$D1,$3E,$25,$E2,$FD,$09,$1F,$D4,$6C,$75,$E3,$03,$94,$90,$93 ; $C3688A
    db $D4,$AB,$0F,$23,$7A,$CD,$43,$09,$03,$CE,$04,$5D,$57,$A6,$27,$0E ; $C3689A
    db $23,$02,$AB,$39,$AF,$00,$0E,$AF,$57,$AA,$81,$7F,$88,$87,$EA,$70 ; $C368AA
    db $B5,$03,$87,$98,$87,$01,$0C,$8F,$80,$FD,$10,$81,$80,$5D,$B3,$81 ; $C368BA
    db $01,$0C,$F3,$93,$03,$08,$07,$8D,$07,$FF,$F9,$FF,$5D,$7B,$7F,$68 ; $C368CA
    db $DF,$09,$07,$F9,$F1,$9E,$30,$09,$39,$48,$C7,$28,$01,$E7,$18,$77 ; $C368DA
    db $0F,$BF,$80,$DF,$6A,$81,$BD,$20,$DF,$10,$EF,$0F,$F3,$28,$9F,$97 ; $C368EA
    db $4B,$4F,$81,$7F,$20,$03,$01,$91,$06,$6F,$83,$7D,$C9,$37,$03,$0F ; $C368FA
    db $D5,$2B,$AB,$55,$18,$50,$1F,$11,$6B,$81,$00,$55,$BD,$39,$E9,$29 ; $C3690A
    db $BB,$39,$E7,$63,$01,$13,$EF,$11,$60,$15,$05,$AC,$5B,$DD,$37,$0F ; $C3691A
    db $BE,$6D,$FE,$19,$18,$1D,$1F,$0B,$81,$57,$1D,$9F,$77,$3D,$8B,$D1 ; $C3692A
    db $00,$87,$7E,$00,$7C,$90,$7F,$60,$BF,$C1,$7F,$82,$7F,$C1,$1D,$D3 ; $C3693A
    db $0E,$C0,$D1,$1F,$80,$60,$8A,$82,$35,$10,$40,$20,$80,$00,$16,$03 ; $C3694A
    db $95,$8D,$20,$5F,$01,$2E,$03,$81,$33,$38,$42,$00,$D5,$00,$AC,$00 ; $C3695A
    db $B0,$70,$E8,$70,$C0,$60,$A0,$00,$18,$C0,$11,$30,$EF,$70,$CF,$60 ; $C3696A
    db $72,$9F,$09,$1E,$33,$03,$00,$FB,$08,$DC,$AF,$3B,$F9,$06,$02,$38 ; $C3697A
    db $00,$2A,$4A,$00,$15,$00,$2E,$00,$A1,$BF,$17,$02,$FD,$39,$DD,$09 ; $C3698A
    db $91,$1B,$0C,$C5,$67,$70,$CB,$1A,$08,$1D,$04,$0E,$23,$07,$51,$07 ; $C3699A
    db $20,$0B,$00,$E5,$00,$D1,$92,$ED,$0D,$F2,$06,$07,$34,$FD,$03,$FE ; $C369AA
    db $02,$4F,$B9,$75,$31,$0F,$CF,$3A,$03,$3B,$00,$0D,$78,$BB,$04,$5F ; $C369BA
    db $02,$E1,$01,$04,$51,$02,$01,$04,$01,$08,$3A,$AB,$9F,$60,$BE,$65 ; $C369CA
    db $02,$01,$01,$55,$00,$AA,$00,$45,$00,$92,$D9,$04,$A0,$07,$E7,$15 ; $C369DA
    db $B0,$06,$9D,$4B,$4B,$3F,$8B,$20,$5F,$0B,$03,$BF,$53,$0B,$03,$10 ; $C369EA
    db $9B,$4A,$FF,$03,$4D,$AA,$03,$85,$3E,$F8,$05,$F4,$C3,$E2,$31,$E0 ; $C369FA
    db $09,$00,$C3,$10,$E0,$8A,$C8,$81,$AA,$AC,$B5,$07,$EA,$3F,$2E,$DB ; $C36A0A
    db $06,$1D,$BB,$8A,$F9,$AD,$00,$37,$9B,$7F,$3B,$7B,$23,$77,$09,$07 ; $C36A1A
    db $AF,$0F,$5F,$00,$37,$5A,$F7,$3A,$E7,$26,$DF,$0F,$AE,$FB,$4E,$F7 ; $C36A2A
    db $08,$A5,$1E,$15,$FF,$09,$4B,$FA,$08,$47,$FF,$2A,$FF,$00,$FF,$03 ; $C36A3A
    db $0F,$F8,$18,$DF,$F0,$28,$1F,$FF,$AE,$A8,$3A,$7F,$92,$5F,$B9,$80 ; $C36A4A
    db $11,$63,$BF,$AA,$AA,$A9,$10,$F7,$41,$7F,$D2,$16,$BF,$7D,$EB,$9F ; $C36A5A
    db $B5,$AA,$03,$0F,$4F,$BF,$70,$F0,$FD,$00,$FF,$82,$7E,$29,$02,$4F ; $C36A6A
    db $1F,$7B,$24,$10,$78,$3E,$18,$7F,$02,$FD,$3B,$8F,$F2,$00,$94,$FF ; $C36A7A
    db $68,$F7,$6F,$D0,$6F,$D1,$76,$6F,$29,$0C,$AA,$08,$15,$B0,$B0,$11 ; $C36A8A
    db $0E,$10,$F7,$F7,$BF,$68,$20,$4F,$F3,$99,$00,$01,$1E,$FF,$F7,$18 ; $C36A9A
    db $3F,$D0,$3F,$EE,$DA,$11,$98,$BF,$62,$3E,$00,$03,$FC,$C8,$5F,$97 ; $C36AAA
    db $E4,$FF,$54,$11,$AB,$01,$89,$84,$B5,$31,$BF,$30,$85,$01,$3A,$1E ; $C36ABA
    db $E7,$CE,$E9,$AD,$3E,$A9,$FF,$7D,$F8,$0F,$8B,$5F,$01,$2D,$3F,$6B ; $C36ACA
    db $3F,$FF,$C0,$06,$3F,$05,$00,$00,$2A,$BF,$88,$77,$60,$0A,$03,$50 ; $C36ADA
    db $02,$A8,$00,$76,$FA,$DF,$74,$40,$27,$05,$0A,$C3,$7F,$50,$1B,$1F ; $C36AEA
    db $A0,$E8,$03,$00,$42,$A8,$2A,$40,$15,$80,$22,$00,$77,$AF,$5D,$65 ; $C36AFA
    db $17,$C2,$02,$A8,$7A,$A3,$23,$BF,$DF,$04,$03,$08,$83,$5F,$41,$04 ; $C36B0A
    db $A0,$0A,$3C,$03,$A2,$01,$1F,$04,$E7,$59,$D2,$04,$4D,$54,$EE,$78 ; $C36B1A
    db $1E,$77,$01,$84,$03,$25,$0B,$75,$5B,$01,$2A,$03,$A6,$9F,$88,$02 ; $C36B2A
    db $82,$09,$A8,$02,$54,$01,$0E,$03,$50,$88,$95,$3F,$A8,$53,$3D,$07 ; $C36B3A
    db $03,$50,$9E,$19,$7F,$05,$17,$1F,$EF,$26,$25,$69,$B7,$47,$9F,$0A ; $C36B4A
    db $F5,$01,$4B,$DB,$09,$B0,$99,$05,$FF,$13,$38,$FF,$45,$65,$42,$9A ; $C36B5A
    db $1B,$2E,$6D,$45,$03,$BA,$A8,$57,$42,$BD,$20,$80,$79,$E0,$FF,$C8 ; $C36B6A
    db $F7,$E4,$F5,$01,$37,$AA,$57,$05,$9F,$A3,$B7,$25,$DF,$12,$8F,$0B ; $C36B7A
    db $0F,$09,$85,$6F,$40,$7D,$A5,$80,$C7,$2F,$80,$18,$43,$E8,$0B,$F0 ; $C36B8A
    db $00,$52,$F9,$19,$2D,$41,$FF,$0C,$25,$EF,$77,$D1,$FE,$79,$47,$87 ; $C36B9A
    db $29,$C0,$00,$E0,$D8,$0D,$2F,$F3,$39,$00,$E1,$19,$27,$01,$9C,$08 ; $C36BAA
    db $00,$E0,$37,$71,$F8,$3D,$FE,$3B,$7C,$A3,$16,$00,$FF,$FF,$17,$7E ; $C36BBA
    db $7F,$0A,$7C,$5F,$17,$41,$FE,$7D,$00,$16,$3E,$9F,$17,$1D,$3E,$FF ; $C36BCA
    db $FF,$17,$9F,$FF,$18,$3C,$1F,$80,$17,$9F,$24,$1E,$F8,$22,$F1,$03 ; $C36BDA
    db $03,$1C,$F9,$20,$DF,$01,$58,$FF,$03,$28,$3A,$FF,$1F,$8B,$1B,$23 ; $C36BEA
    db $03,$D0,$95,$1B,$EC,$3B,$CC,$B0,$03,$5B,$AC,$D0,$03,$33,$3D,$24 ; $C36BFA
    db $F9,$02,$03,$06,$33,$21,$03,$51,$DF,$03,$DF,$9E,$03,$5F,$03,$3F ; $C36C0A
    db $84,$03,$3C,$33,$04,$43,$10,$12,$20,$14,$21,$28,$03,$1C,$03,$28 ; $C36C1A
    db $58,$FF,$01,$20,$A2,$03,$5F,$6B,$77,$21,$03,$3F,$EB,$04,$03,$3C ; $C36C2A
    db $37,$02,$3F,$20,$F4,$01,$3B,$47,$AF,$BF,$18,$3F,$12,$99,$39,$79 ; $C36C3A
    db $9E,$F6,$04,$0B,$FD,$90,$F7,$F7,$5A,$0D,$EF,$80,$03,$90,$6F,$F7 ; $C36C4A
    db $03,$18,$18,$10,$10,$F7,$10,$A9,$7B,$2C,$10,$F7,$19,$84,$01,$93 ; $C36C5A
    db $21,$8F,$3F,$02,$DD,$8B,$4F,$89,$DD,$06,$7B,$00,$F5,$01,$8F,$75 ; $C36C6A
    db $01,$4E,$55,$00,$E9,$2C,$07,$FE,$01,$2A,$17,$E9,$97,$23,$7F,$BE ; $C36C7A
    db $07,$01,$09,$7D,$BF,$07,$01,$22,$3D,$FF,$69,$03,$BA,$3F,$47,$73 ; $C36C8A
    db $3F,$D0,$FF,$44,$FD,$D1,$3F,$69,$19,$D0,$2F,$38,$BF,$42,$55,$03 ; $C36C9A
    db $55,$1E,$8F,$A2,$7F,$55,$BD,$D5,$F8,$23,$09,$03,$15,$FF,$A0,$71 ; $C36CAA
    db $BE,$40,$1F,$40,$AA,$AA,$55,$71,$5F,$1D,$BF,$EE,$01,$1F,$6C,$2B ; $C36CBA
    db $33,$1B,$A2,$0C,$00,$41,$00,$2A,$07,$40,$10,$2A,$82,$15,$13,$75 ; $C36CCA
    db $A2,$8E,$F1,$2A,$38,$07,$2A,$3F,$55,$18,$8A,$AA,$05,$03,$2A,$50 ; $C36CDA
    db $38,$15,$A8,$03,$A0,$CE,$03,$8A,$AA,$15,$8A,$AA,$C3,$50,$EA,$EC ; $C36CEA
    db $09,$03,$84,$00,$20,$05,$07,$5F,$0A,$01,$02,$45,$01,$82,$A2,$40 ; $C36CFA
    db $D0,$C7,$1F,$F8,$1D,$3B,$0A,$57,$79,$82,$55,$2D,$FA,$8C,$1B,$50 ; $C36D0A
    db $F0,$5C,$40,$19,$55,$A0,$AA,$03,$80,$9C,$84,$05,$33,$55,$0F,$67 ; $C36D1A
    db $45,$70,$7F,$82,$AA,$15,$55,$7D,$02,$02,$53,$DF,$82,$BF,$B7,$D1 ; $C36D2A
    db $04,$5F,$F5,$14,$FF,$90,$17,$02,$51,$59,$01,$22,$47,$15,$51,$A9 ; $C36D3A
    db $01,$DF,$14,$81,$5F,$01,$55,$A2,$AA,$51,$8B,$DC,$0A,$50,$5D,$9F ; $C36D4A
    db $A2,$4C,$23,$8B,$50,$5C,$AA,$24,$A8,$55,$50,$22,$A8,$01,$40,$02 ; $C36D5A
    db $80,$15,$41,$28,$FF,$4E,$22,$C7,$C3,$28,$0D,$03,$05,$A8,$33,$07 ; $C36D6A
    db $03,$15,$6E,$3B,$C4,$0B,$14,$A8,$D0,$FB,$27,$77,$8A,$AE,$7D,$C0 ; $C36D7A
    db $91,$B3,$40,$40,$A0,$CE,$06,$C2,$69,$08,$80,$14,$AE,$23,$BF,$1C ; $C36D8A
    db $80,$7F,$20,$DF,$73,$88,$1F,$EA,$18,$A1,$80,$06,$28,$00,$1C,$00 ; $C36D9A
    db $38,$37,$00,$A4,$CE,$50,$66,$30,$A0,$05,$7F,$C0,$73,$9C,$FF,$B8 ; $C36DAA
    db $FF,$5C,$DD,$3B,$60,$E7,$A0,$5F,$45,$79,$BA,$06,$3C,$D0,$EE,$07 ; $C36DBA
    db $3D,$8F,$03,$18,$BB,$01,$03,$AA,$95,$0B,$01,$01,$07,$03,$0F,$00 ; $C36DCA
    db $06,$03,$D5,$CB,$8C,$5B,$0A,$07,$FF,$07,$FE,$0B,$FD,$DC,$05,$1F ; $C36DDA
    db $10,$00,$0E,$05,$00,$2F,$03,$B2,$31,$D2,$2F,$05,$01,$FF,$2D,$FF ; $C36DEA
    db $F3,$FF,$09,$F6,$15,$D5,$B8,$4B,$01,$21,$01,$8B,$07,$57,$0C,$BF ; $C36DFA
    db $08,$FE,$B8,$7D,$8C,$F3,$D9,$57,$01,$FE,$BD,$FA,$EA,$FD,$2D,$D2 ; $C36E0A
    db $E7,$07,$7D,$01,$DC,$15,$7F,$01,$D8,$F8,$07,$FB,$31,$D8,$2F,$5C ; $C36E1A
    db $01,$09,$89,$A3,$01,$05,$83,$03,$09,$01,$FE,$09,$BA,$BD,$05,$9B ; $C36E2A
    db $03,$00,$0B,$73,$00,$80,$38,$80,$64,$80,$1D,$50,$80,$68,$73,$1D ; $C36E3A
    db $10,$80,$BE,$7F,$38,$3B,$FF,$64,$27,$7F,$68,$3E,$D5,$01,$5B,$03 ; $C36E4A
    db $02,$00,$28,$00,$55,$20,$F8,$03,$DF,$76,$28,$A1,$EE,$7F,$6D,$17 ; $C36E5A
    db $61,$1F,$E0,$80,$81,$40,$F7,$03,$C1,$0F,$08,$FF,$80,$7F,$25,$F7 ; $C36E6A
    db $BF,$80,$00,$0F,$1F,$17,$10,$18,$E0,$01,$19,$11,$19,$40,$13,$13 ; $C36E7A
    db $0F,$F0,$95,$4C,$45,$11,$EE,$01,$00,$75,$06,$B1,$52,$23,$A5,$6F ; $C36E8A
    db $00,$DF,$6E,$06,$5A,$40,$D7,$0D,$FF,$2F,$EA,$C0,$CD,$07,$19,$17 ; $C36E9A
    db $30,$19,$15,$35,$19,$37,$19,$06,$77,$19,$D7,$19,$B7,$05,$0C,$13 ; $C36EAA
    db $EE,$15,$EE,$03,$17,$00,$EE,$37,$EE,$57,$EE,$B7,$EE,$77,$47,$EE ; $C36EBA
    db $20,$29,$9F,$7F,$97,$70,$98,$49,$77,$01,$D4,$E0,$A2,$01,$E0,$70 ; $C36ECA
    db $EF,$77,$9B,$01,$BE,$53,$60,$A0,$5F,$EC,$00,$F6,$C4,$06,$FD,$01 ; $C36EDA
    db $7B,$03,$01,$57,$E8,$FF,$F4,$CE,$07,$AC,$3F,$7C,$42,$F0,$F8,$A4 ; $C36EEA
    db $9F,$20,$01,$9F,$E0,$49,$1F,$9F,$08,$01,$A8,$73,$F1,$FF,$D1,$0A ; $C36EFA
    db $17,$11,$F7,$19,$75,$01,$B9,$20,$01,$0E,$93,$7F,$F7,$0C,$01,$98 ; $C36F0A
    db $50,$98,$7B,$30,$E0,$05,$74,$98,$76,$36,$98,$73,$7F,$31,$1C,$50 ; $C36F1A
    db $EF,$30,$03,$C0,$81,$74,$EF,$72,$EF,$75,$74,$EF,$23,$37,$0F,$89 ; $C36F2A
    db $FD,$59,$62,$A2,$03,$81,$33,$3A,$FF,$74,$D4,$45,$5D,$1D,$61,$E8 ; $C36F3A
    db $5B,$40,$00,$E8,$0A,$00,$F4,$00,$FA,$FF,$C1,$50,$07,$40,$E0,$99 ; $C36F4A
    db $B4,$FF,$5A,$E8,$69,$75,$06,$09,$A1,$06,$51,$39,$1F,$D9,$8F,$E4 ; $C36F5A
    db $DB,$4B,$02,$33,$37,$D0,$30,$8E,$43,$1F,$C9,$29,$02,$51,$3B,$2A ; $C36F6A
    db $30,$3F,$43,$54,$00,$A0,$50,$03,$37,$16,$FF,$1D,$AC,$FF,$7A,$4B ; $C36F7A
    db $41,$A0,$E1,$04,$5F,$03,$DE,$3F,$41,$07,$02,$41,$99,$29,$04,$E5 ; $C36F8A
    db $04,$1F,$C0,$51,$5F,$E7,$01,$1F,$C0,$0A,$67,$20,$FF,$3C,$33,$03 ; $C36F9A
    db $02,$24,$04,$A7,$5F,$E8,$03,$DF,$3F,$33,$C0,$04,$97,$7F,$60,$1E ; $C36FAA
    db $39,$00,$0D,$01,$7D,$20,$05,$78,$B9,$0F,$DF,$54,$12,$B8,$65,$0A ; $C36FBA
    db $CB,$3E,$E0,$03,$2E,$FF,$95,$A0,$17,$0A,$F5,$1F,$18,$E0,$3E,$C1 ; $C36FCA
    db $03,$2E,$D1,$1D,$95,$6A,$05,$19,$09,$19,$4F,$C5,$03,$2F,$54,$F9 ; $C36FDA
    db $05,$FA,$31,$2F,$D0,$19,$4F,$B0,$B0,$03,$07,$15,$EA,$02,$3A,$FD ; $C36FEA
    db $4A,$EA,$25,$C0,$BC,$2D,$30,$03,$3B,$4A,$B5,$80,$03,$7F,$C1,$3F ; $C36FFA
    db $A0,$5F,$41,$AA,$1D,$40,$45,$BF,$87,$7F,$A0,$0A,$58,$D8,$2A,$EB ; $C3700A
    db $00,$80,$28,$00,$51,$03,$A1,$00,$AB,$1D,$F9,$2A,$9C,$45,$28,$03 ; $C3701A
    db $61,$A1,$0B,$00,$02,$A0,$D6,$6E,$98,$23,$B0,$C7,$90,$C5,$3B,$80 ; $C3702A
    db $82,$BD,$3B,$A2,$37,$CC,$C3,$03,$85,$1D,$FF,$A2,$7F,$CB,$DD,$20 ; $C3703A
    db $1C,$3B,$80,$28,$43,$CE,$23,$05,$B0,$CB,$FF,$20,$A4,$3B,$5B,$41 ; $C3704A
    db $16,$06,$0B,$10,$05,$20,$02,$17,$D8,$3F,$43,$02,$A8,$01,$05,$50 ; $C3705A
    db $0A,$00,$25,$FF,$C2,$C4,$17,$0A,$EC,$BD,$83,$7F,$A9,$77,$33,$2E ; $C3706A
    db $FB,$40,$C2,$24,$01,$00,$81,$EB,$00,$03,$FE,$06,$FC,$0F,$F8,$1F ; $C3707A
    db $F4,$3F,$F9,$3F,$F5,$7E,$E9,$7E,$F7,$D5,$00,$6A,$40,$75,$60,$3A ; $C3708A
    db $F0,$7D,$78,$3A,$FC,$7D,$7C,$3E,$D8,$CB,$C0,$BF,$B8,$C0,$60,$BF ; $C3709A
    db $30,$DF,$78,$97,$38,$CF,$7C,$87,$3E,$CD,$00,$00,$83,$00,$03,$44 ; $C370AA
    db $00,$1D,$AB,$00,$5E,$70,$AB,$7E,$DB,$7C,$F7,$1D,$7E,$FF,$7C,$95 ; $C370BA
    db $FF,$14,$87,$2B,$1E,$7F,$3E,$10,$03,$2E,$03,$5C,$BF,$30,$1C,$7F ; $C370CA
    db $30,$FE,$1F,$E7,$3E,$CB,$1E,$E7,$2E,$DB,$03,$2F,$DD,$1D,$11,$E3 ; $C370DA
    db $36,$CF,$59,$72,$1E,$00,$40,$0D,$7F,$8B,$80,$9D,$60,$60,$30,$F0 ; $C370EA
    db $78,$78,$38,$3C,$FC,$7C,$0B,$7F,$80,$E2,$7B,$80,$80,$7F,$2B,$00 ; $C370FA
    db $1E,$00,$04,$F4,$2B,$7F,$06,$00,$11,$18,$02,$01,$EB,$CA,$28,$AE ; $C3710A
    db $5F,$20,$AA,$99,$01,$AB,$DF,$6A,$80,$9F,$88,$0C,$51,$58,$D1,$F0 ; $C3711A
    db $C2,$27,$F0,$0C,$03,$7F,$08,$F7,$50,$A8,$7D,$8D,$BF,$CC,$34,$B4 ; $C3712A
    db $C1,$FB,$03,$3E,$E5,$05,$DE,$CD,$A8,$7F,$C0,$20,$00,$45,$20,$78 ; $C3713A
    db $77,$C7,$20,$8F,$52,$61,$7F,$B6,$85,$3B,$65,$00,$09,$95,$00,$18 ; $C3714A
    db $24,$0C,$91,$02,$90,$05,$03,$18,$38,$25,$C8,$03,$48,$EB,$8E,$1D ; $C3715A
    db $4A,$FF,$4D,$3A,$03,$65,$16,$4D,$65,$F8,$3F,$05,$50,$AA,$7F,$20 ; $C3716A
    db $03,$DF,$1F,$05,$01,$F4,$1F,$C8,$CA,$37,$90,$64,$03,$47,$02,$CA ; $C3717A
    db $37,$4A,$16,$03,$4D,$FF,$F8,$7A,$01,$AA,$0A,$03,$45,$15,$AA,$2A ; $C3718A
    db $04,$AA,$E8,$01,$3B,$71,$45,$03,$04,$01,$5F,$04,$55,$0A,$D4,$64 ; $C3719A
    db $23,$03,$11,$BE,$9F,$04,$A8,$39,$CF,$03,$11,$1E,$F9,$BF,$8A,$2A ; $C371AA
    db $00,$16,$5D,$00,$BE,$00,$4A,$5F,$62,$2B,$1D,$79,$0D,$29,$E1,$0B ; $C371BA
    db $06,$69,$88,$AA,$14,$03,$8A,$22,$3F,$82,$7F,$0A,$50,$3E,$53,$88 ; $C371CA
    db $A9,$0D,$95,$11,$7F,$47,$53,$15,$40,$01,$FE,$E3,$27,$03,$80,$DB ; $C371DA
    db $59,$72,$83,$4B,$18,$3F,$AB,$5F,$03,$9B,$5F,$07,$0B,$BF,$1B,$5F ; $C371EA
    db $0F,$1D,$03,$2A,$CE,$0D,$03,$1C,$52,$EF,$AA,$03,$35,$A6,$FB,$03 ; $C371FA
    db $14,$37,$00,$03,$A3,$9F,$02,$F5,$02,$B9,$1C,$01,$1F,$33,$C1,$03 ; $C3720A
    db $9F,$5F,$5F,$3F,$21,$03,$B6,$EB,$B0,$33,$03,$56,$EB,$36,$A0,$03 ; $C3721A
    db $5E,$EB,$18,$10,$22,$90,$05,$03,$1C,$98,$22,$C8,$07,$CE,$03,$62 ; $C3722A
    db $D2,$33,$29,$03,$05,$03,$80,$53,$2A,$01,$40,$0A,$20,$05,$37,$50 ; $C3723A
    db $8A,$03,$78,$A4,$50,$97,$31,$B1,$4C,$43,$4E,$5D,$BF,$50,$18,$37 ; $C3724A
    db $88,$04,$C3,$3F,$80,$05,$90,$92,$47,$28,$37,$44,$43,$6A,$E3,$03 ; $C3725A
    db $05,$88,$F3,$05,$97,$E2,$A0,$6C,$03,$4B,$00,$92,$F7,$D5,$0D,$96 ; $C3726A
    db $5F,$07,$41,$08,$A2,$15,$41,$66,$83,$54,$03,$4B,$01,$94,$E7,$15 ; $C3727A
    db $F3,$83,$01,$F0,$03,$7F,$80,$50,$01,$75,$A8,$FD,$41,$01,$D9,$2F ; $C3728A
    db $3B,$87,$C5,$B3,$01,$25,$03,$89,$07,$00,$00,$BF,$FF,$01,$CE,$BF ; $C3729A
    db $50,$33,$03,$AA,$02,$76,$55,$E3,$5B,$04,$C5,$BB,$AA,$52,$E3,$04 ; $C372AA
    db $FD,$05,$DF,$6F,$3E,$FF,$09,$97,$9F,$08,$67,$C3,$0A,$04,$03,$08 ; $C372BA
    db $2A,$00,$8E,$9F,$14,$2A,$3B,$14,$D0,$DF,$40,$0A,$A0,$15,$77,$40 ; $C372CA
    db $BC,$BB,$07,$70,$05,$03,$01,$0A,$9F,$BE,$BB,$01,$BF,$1C,$A0,$AA ; $C372DA
    db $50,$03,$75,$44,$8C,$7F,$54,$03,$0A,$48,$54,$FF,$44,$FF,$01,$58 ; $C372EA
    db $43,$51,$5F,$10,$54,$1D,$28,$A8,$11,$E8,$64,$05,$50,$02,$22,$A0 ; $C372FA
    db $15,$85,$15,$28,$42,$7B,$05,$A9,$C3,$E1,$7F,$10,$15,$48,$BF,$88 ; $C3730A
    db $C3,$87,$FF,$10,$A0,$01,$BF,$03,$50,$81,$7F,$2A,$A0,$D6,$0C,$FB ; $C3731A
    db $AA,$54,$55,$03,$01,$95,$E2,$3D,$C7,$FB,$54,$3B,$03,$F4,$1D,$37 ; $C3732A
    db $C6,$FB,$05,$AA,$7B,$37,$55,$A8,$8B,$C7,$02,$FF,$FA,$07,$BF,$02 ; $C3733A
    db $8D,$7F,$BE,$83,$02,$85,$7F,$05,$3D,$C3,$01,$1F,$CE,$C7,$2C,$BF ; $C3734A
    db $50,$1F,$4E,$A0,$C8,$47,$22,$33,$54,$67,$3F,$6A,$03,$0A,$6B,$37 ; $C3735A
    db $76,$49,$05,$33,$15,$A8,$6A,$03,$3E,$1F,$A8,$01,$DF,$7B,$04,$C4 ; $C3736A
    db $5F,$A8,$15,$08,$C7,$50,$22,$5B,$FF,$3A,$FF,$15,$CC,$C7,$03,$4B ; $C3737A
    db $07,$1E,$8F,$5F,$03,$B8,$5B,$E3,$C8,$BF,$C0,$3F,$0A,$FD,$4F,$F8 ; $C3738A
    db $A0,$F6,$01,$BF,$03,$EB,$06,$FB,$11,$50,$2A,$3F,$8D,$DB,$07,$4B ; $C3739A
    db $22,$65,$3B,$2A,$12,$3F,$04,$A8,$29,$A8,$02,$50,$0E,$05,$80,$2A ; $C373AA
    db $10,$2C,$FB,$40,$7F,$56,$80,$43,$4F,$40,$C2,$FF,$01,$01,$4B,$03 ; $C373BA
    db $7A,$01,$01,$49,$FE,$03,$F4,$08,$9D,$3F,$C0,$40,$6F,$21,$D3,$03 ; $C373CA
    db $5B,$2A,$FD,$BF,$18,$3F,$9F,$18,$EF,$9F,$F2,$06,$3D,$FF,$97,$32 ; $C373DA
    db $3F,$70,$17,$07,$FF,$32,$FE,$18,$7E,$7F,$0B,$DF,$31,$06,$3C,$01 ; $C373EA
    db $7F,$16,$1F,$19,$01,$F7,$99,$77,$59,$37,$39,$17,$D4,$81,$C7,$17 ; $C373FA
    db $1D,$13,$1A,$11,$B7,$D4,$BA,$B7,$37,$99,$BF,$52,$C7,$11,$00,$EF ; $C3740A
    db $98,$77,$90,$77,$9F,$7F,$83,$75,$70,$D1,$B7,$7F,$4C,$A7,$53,$B3 ; $C3741A
    db $D4,$C5,$BF,$32,$C5,$A7,$FF,$A9,$93,$1E,$0F,$1F,$0F,$01,$DE,$8A ; $C3742A
    db $4F,$93,$0F,$F0,$06,$F2,$65,$18,$37,$24,$08,$07,$75,$04,$A9,$CB ; $C3743A
    db $BF,$D8,$37,$0B,$A8,$23,$22,$01,$FF,$90,$B3,$F9,$F7,$F1,$07,$93 ; $C3744A
    db $FD,$55,$19,$22,$B5,$0E,$07,$FE,$A9,$C7,$E0,$27,$99,$76,$9A,$1D ; $C3745A
    db $74,$9C,$70,$48,$C3,$70,$B8,$50,$71,$D8,$6B,$72,$D4,$A7,$B7,$70 ; $C3746A
    db $4D,$C3,$52,$FF,$FE,$28,$02,$FC,$5F,$E0,$1D,$20,$C0,$40,$D5,$66 ; $C3747A
    db $FA,$58,$37,$00,$FE,$01,$62,$9F,$C1,$33,$E8,$F0,$F0,$E3,$05,$9F ; $C3748A
    db $E0,$1F,$CE,$03,$9F,$07,$A6,$FF,$44,$01,$07,$1D,$1F,$07,$4B,$D9 ; $C3749A
    db $08,$99,$01,$05,$07,$27,$1F,$69,$F8,$B0,$01,$09,$18,$00,$3C,$8A ; $C374AA
    db $1C,$CD,$40,$01,$70,$C0,$5D,$18,$FF,$3F,$24,$FF,$01,$8F,$37,$05 ; $C374BA
    db $DF,$DF,$03,$F7,$03,$3C,$14,$35,$80,$3D,$A3,$00,$24,$89,$35,$80 ; $C374CA
    db $A7,$9B,$9C,$BF,$78,$01,$8C,$D9,$1F,$AB,$0E,$43,$FF,$48,$67,$15 ; $C374DA
    db $7B,$4C,$11,$27,$30,$55,$61,$30,$14,$1F,$72,$2B,$0E,$FA,$00,$F5 ; $C374EA
    db $30,$61,$1F,$01,$72,$FF,$5D,$D4,$85,$6F,$1A,$FF,$25,$FF,$59,$BB ; $C374FA
    db $01,$03,$3E,$00,$15,$07,$5F,$30,$70,$59,$35,$EB,$1D,$5B,$3E,$34 ; $C3750A
    db $03,$33,$15,$F8,$00,$F2,$F8,$99,$E8,$9F,$0E,$00,$04,$C0,$55,$32 ; $C3751A
    db $FF,$58,$FF,$FC,$3B,$FF,$BA,$C9,$3F,$4A,$23,$02,$AA,$CF,$08,$EF ; $C3752A
    db $A8,$F5,$08,$B7,$02,$06,$FD,$08,$F7,$14,$EB,$03,$34,$20,$DF,$03 ; $C3753A
    db $A5,$07,$20,$F7,$01,$6F,$55,$FC,$C7,$59,$25,$DF,$13,$60,$BD,$53 ; $C3754A
    db $AF,$A9,$57,$2D,$FC,$03,$D4,$A7,$04,$DB,$F3,$3D,$B7,$91,$09,$03 ; $C3755A
    db $04,$FB,$1C,$3B,$FA,$33,$82,$03,$F8,$A7,$AF,$1A,$0F,$FB,$05,$33 ; $C3756A
    db $01,$03,$F9,$07,$54,$AB,$BF,$3F,$20,$DF,$1F,$34,$17,$1F,$AF,$00 ; $C3757A
    db $09,$4F,$1F,$AE,$1F,$4C,$1C,$A8,$1E,$4B,$1F,$AB,$1F,$70,$DF,$0E ; $C3758A
    db $18,$F9,$0C,$FB,$ED,$0B,$FE,$79,$0A,$3B,$5F,$FA,$70,$00,$05,$E0 ; $C3759A
    db $02,$E0,$15,$00,$D2,$00,$15,$80,$12,$9F,$64,$1F,$01,$8D,$A9,$EB ; $C375AA
    db $18,$3F,$94,$03,$07,$26,$27,$10,$04,$02,$08,$24,$30,$48,$60,$08 ; $C375BA
    db $40,$30,$00,$03,$FF,$26,$DD,$AD,$7B,$9D,$7A,$5F,$40,$C1,$10,$6F ; $C375CA
    db $0C,$FF,$0C,$7F,$A8,$1D,$9F,$00,$1F,$04,$FB,$0C,$F3,$10,$95,$9F ; $C375DA
    db $E1,$18,$EB,$3F,$02,$E2,$03,$9B,$3C,$66,$FA,$07,$7D,$9F,$12,$01 ; $C375EA
    db $04,$27,$55,$13,$5F,$80,$99,$03,$45,$C5,$42,$B9,$C0,$AF,$3D,$3E ; $C375FA
    db $12,$47,$2A,$89,$79,$15,$00,$AA,$7F,$7D,$03,$2D,$47,$40,$13,$F9 ; $C3760A
    db $B3,$E5,$E2,$02,$F9,$50,$55,$2F,$02,$80,$57,$40,$2F,$A0,$17,$77 ; $C3761A
    db $C3,$0E,$40,$2D,$FF,$52,$F5,$B9,$16,$3B,$A2,$C3,$40,$94,$BF,$D5 ; $C3762A
    db $C0,$03,$55,$40,$8A,$A0,$05,$92,$7F,$48,$43,$45,$05,$CF,$D7,$54 ; $C3763A
    db $20,$02,$A2,$FF,$2E,$D7,$20,$F0,$03,$E3,$50,$00,$88,$2A,$40,$15 ; $C3764A
    db $82,$83,$2A,$40,$5A,$7F,$D4,$CE,$7B,$E0,$FF,$BF,$00,$77,$00,$BA ; $C3765A
    db $39,$00,$7D,$03,$48,$42,$EC,$75,$7D,$81,$10,$6E,$F2,$BF,$3B,$54 ; $C3766A
    db $F1,$BB,$E6,$80,$2A,$14,$BF,$20,$03,$99,$61,$AA,$4F,$F5,$11,$CE ; $C3767A
    db $DF,$15,$DF,$1E,$15,$0E,$3F,$80,$1E,$BB,$0A,$A8,$01,$26,$55,$80 ; $C3768A
    db $32,$5F,$FC,$C3,$7C,$A7,$4F,$BF,$55,$9B,$23,$F7,$0B,$BF,$1F,$A9 ; $C3769A
    db $C7,$C1,$03,$AE,$FB,$5A,$EF,$0C,$03,$1B,$5E,$45,$EB,$26,$C7,$00 ; $C376AA
    db $22,$96,$00,$50,$02,$A8,$41,$54,$A2,$AA,$45,$8F,$AB,$83,$22,$91 ; $C376BA
    db $85,$41,$FF,$A2,$D6,$2A,$DF,$02,$97,$FF,$0F,$1C,$3F,$0F,$3F,$19 ; $C376CA
    db $8B,$5F,$4B,$03,$1F,$8C,$33,$46,$FB,$3F,$4E,$3A,$FB,$AA,$D7,$1D ; $C376DA
    db $AA,$22,$69,$94,$B3,$10,$D1,$03,$4A,$CB,$6A,$74,$A7,$B7,$6A,$67 ; $C376EA
    db $03,$32,$9F,$FF,$A2,$3E,$FB,$2A,$28,$50,$05,$9F,$50,$E4,$5B,$BF ; $C376FA
    db $C3,$0C,$9F,$33,$94,$B8,$75,$01,$02,$20,$81,$10,$21,$08,$83,$14 ; $C3770A
    db $C0,$0A,$80,$20,$FF,$49,$FF,$6C,$F7,$5E,$DD,$61,$E8,$43,$3A,$DF ; $C3771A
    db $7D,$40,$CF,$D3,$07,$AF,$00,$EF,$0F,$38,$7C,$21,$70,$03,$A7,$D0 ; $C3772A
    db $87,$33,$B8,$5A,$AB,$FE,$0F,$F6,$38,$C7,$20,$DF,$A2,$FD,$4F,$F7 ; $C3773A
    db $D8,$DF,$A0,$43,$04,$0B,$2D,$80,$17,$6C,$DF,$40,$DB,$0B,$FF,$12 ; $C3774A
    db $40,$FF,$D3,$51,$00,$28,$00,$14,$26,$E8,$25,$00,$DD,$42,$57,$14 ; $C3775A
    db $81,$7B,$68,$FF,$99,$FF,$D2,$DE,$41,$AE,$9D,$38,$77,$81,$F1,$6C ; $C3776A
    db $FE,$FF,$AD,$CE,$FB,$ED,$9A,$61,$67,$FF,$7E,$FE,$16,$6E,$4F,$28 ; $C3777A
    db $A8,$81,$00,$FC,$03,$3A,$00,$FD,$AE,$87,$55,$65,$01,$26,$FA,$50 ; $C3778A
    db $E7,$FD,$67,$FE,$14,$50,$62,$7B,$54,$2A,$28,$7F,$E0,$5F,$BA,$00 ; $C3779A
    db $7F,$96,$7B,$88,$7B,$C8,$27,$92,$0A,$09,$AA,$2A,$55,$A4,$BB,$AA ; $C377AA
    db $02,$8B,$10,$1E,$D5,$77,$95,$31,$7F,$52,$CF,$D5,$FF,$46,$5F,$3F ; $C377BA
    db $05,$3B,$3B,$CC,$E9,$20,$7B,$04,$5F,$0F,$3F,$C0,$00,$5F,$7F,$BF ; $C377CA
    db $7B,$84,$00,$EA,$EF,$23,$92,$BC,$CA,$7F,$83,$07,$6A,$B7,$37,$2A ; $C377DA
    db $07,$CC,$E7,$8E,$FE,$F8,$01,$B7,$E8,$FB,$EB,$2D,$43,$C5,$DF,$B8 ; $C377EA
    db $47,$7D,$55,$02,$40,$3F,$80,$AA,$40,$15,$00,$A0,$7F,$01,$01,$EA ; $C377FA
    db $55,$15,$BF,$01,$14,$7F,$7F,$0E,$1F,$E0,$00,$5F,$F5,$85,$AA,$04 ; $C3780A
    db $57,$FF,$87,$7F,$5F,$BF,$10,$14,$AA,$77,$60,$F4,$0D,$CE,$33,$00 ; $C3781A
    db $DF,$EE,$D0,$D5,$1F,$F8,$F4,$40,$0B,$1F,$DF,$AC,$27,$0C,$F3,$67 ; $C3782A
    db $DF,$58,$1F,$00,$71,$45,$DF,$55,$2A,$CB,$BF,$97,$1F,$A8,$B3,$04 ; $C3783A
    db $7F,$03,$14,$A9,$7F,$7C,$55,$02,$29,$B9,$14,$1F,$85,$16,$B8,$05 ; $C3784A
    db $F4,$C3,$E0,$31,$E0,$09,$20,$C3,$10,$E0,$8A,$C8,$85,$AA,$B0,$B7 ; $C3785A
    db $E8,$3F,$2E,$3A,$DB,$26,$42,$41,$8A,$FF,$B5,$7F,$58,$FF,$CF,$1F ; $C3786A
    db $1F,$78,$7C,$61,$03,$80,$FF,$1F,$FE,$78,$F7,$60,$9F,$FC,$03,$FF ; $C3787A
    db $01,$44,$01,$2C,$FF,$2A,$FF,$4E,$01,$C9,$C3,$9D,$7F,$28,$6A,$7B ; $C3788A
    db $A8,$B9,$47,$AC,$D7,$28,$A4,$7B,$73,$47,$12,$7F,$18,$5C,$05,$20 ; $C3789A
    db $E9,$E2,$58,$E5,$09,$62,$D8,$25,$09,$82,$1A,$24,$7F,$E2,$0E,$1F ; $C378AA
    db $45,$BF,$62,$FB,$1B,$42,$BC,$4B,$9E,$3B,$F9,$05,$7F,$FA,$05,$AE ; $C378BA
    db $81,$00,$9A,$07,$0F,$2D,$0B,$68,$8F,$D4,$8D,$EF,$BF,$DB,$BE,$EB ; $C378CA
    db $AE,$1F,$FF,$3F,$F0,$7F,$D0,$7F,$98,$E3,$23,$D1,$0F,$F7,$08,$C4 ; $C378DA
    db $30,$5D,$C2,$5E,$63,$59,$DE,$01,$81,$0D,$18,$E7,$BD,$63,$DF,$F2 ; $C378EA
    db $01,$FE,$EB,$16,$8E,$E8,$8F,$39,$03,$E9,$03,$CF,$F6,$05,$48,$01 ; $C378FA
    db $35,$64,$07,$DF,$6F,$DC,$6F,$DF,$18,$01,$DA,$31,$FB,$00,$07,$F9 ; $C3790A
    db $02,$F0,$00,$F3,$7A,$30,$FA,$10,$01,$FD,$02,$5F,$1C,$50,$F7,$58 ; $C3791A
    db $01,$03,$19,$F7,$59,$F7,$18,$F7,$07,$0D,$C7,$38,$EF,$18,$DD,$03 ; $C3792A
    db $3E,$20,$72,$90,$B0,$D8,$B8,$FC,$BC,$BC,$6C,$F4,$FC,$FC,$BE,$DC ; $C3793A
    db $BF,$E0,$9F,$F0,$4F,$F8,$07,$CC,$01,$18,$01,$E7,$07,$E8,$97,$F8 ; $C3794A
    db $87,$18,$18,$33,$78,$01,$D7,$38,$DB,$03,$0D,$95,$45,$D0,$30,$80 ; $C3795A
    db $3F,$00,$8F,$01,$10,$2F,$10,$1F,$E0,$5F,$A0,$BD,$31,$06,$01,$0F ; $C3796A
    db $3B,$04,$68,$01,$B1,$38,$01,$D6,$FD,$D8,$16,$BF,$E8,$AF,$12,$BF ; $C3797A
    db $E3,$21,$67,$FD,$01,$67,$94,$01,$F9,$73,$01,$3F,$FB,$04,$04,$00 ; $C3798A
    db $3C,$BD,$42,$FF,$80,$EF,$9F,$DF,$22,$BF,$BF,$6B,$81,$BE,$A1,$01 ; $C3799A
    db $1B,$5A,$7F,$C8,$FF,$9A,$9D,$9B,$A1,$3C,$0F,$05,$08,$58,$87,$BB ; $C379AA
    db $36,$01,$FD,$03,$85,$CB,$5D,$92,$40,$E8,$02,$61,$00,$B3,$FC,$BF ; $C379BA
    db $BC,$6F,$F4,$FF,$BC,$7A,$FF,$02,$BF,$C3,$FD,$F8,$07,$C1,$18,$5F ; $C379CA
    db $DC,$3F,$FC,$FF,$24,$01,$9C,$0F,$F1,$1C,$17,$F0,$0F,$43,$FC,$01 ; $C379DA
    db $FF,$0F,$00,$0F,$2F,$0F,$6F,$8F,$DF,$8B,$EF,$63,$BF,$C7,$EF,$AF ; $C379EA
    db $00,$C0,$3B,$F6,$7E,$D3,$7F,$90,$E5,$1C,$22,$D1,$0E,$1E,$EC,$FF ; $C379FA
    db $D5,$EA,$C1,$3D,$00,$BF,$4A,$01,$2E,$68,$80,$1E,$3F,$E0,$6F,$BA ; $C37A0A
    db $FB,$8F,$F9,$87,$FA,$87,$EF,$8F,$06,$01,$FC,$08,$FF,$BF,$58,$FF ; $C37A1A
    db $01,$B7,$C3,$03,$F7,$BD,$EB,$64,$B3,$35,$F8,$06,$01,$8F,$F8,$97 ; $C37A2A
    db $C1,$1D,$F7,$A1,$00,$51,$BE,$AB,$FF,$D7,$56,$04,$EF,$F7,$FA,$E7 ; $C37A3A
    db $FA,$56,$1B,$E1,$FD,$03,$FB,$06,$F7,$AC,$EF,$F8,$5F,$F0,$9F,$E0 ; $C37A4A
    db $58,$FF,$38,$FC,$01,$3C,$3C,$EC,$F4,$7C,$BC,$FE,$BB,$CD,$25,$FF ; $C37A5A
    db $CF,$8D,$01,$D8,$27,$C9,$8F,$07,$E7,$FA,$06,$0F,$01,$5F,$E0,$1F ; $C37A6A
    db $03,$1B,$01,$0F,$F0,$31,$DF,$06,$01,$08,$A4,$FF,$B5,$B2,$FD,$CB ; $C37A7A
    db $BF,$39,$FD,$BF,$B8,$14,$B7,$B7,$F1,$01,$C5,$F7,$A0,$8D,$01,$EF ; $C37A8A
    db $94,$BB,$CE,$BF,$1F,$C5,$78,$87,$38,$B4,$FF,$F3,$9C,$01,$00,$6C ; $C37A9A
    db $FE,$01,$00,$9F,$71,$60,$01,$F0,$80,$D8,$1A,$F5,$1E,$F1,$1E,$F9 ; $C37AAA
    db $D0,$01,$B3,$03,$FC,$3F,$3C,$EF,$F4,$7F,$B0,$FF,$3F,$5C,$3F,$B6 ; $C37ABA
    db $FF,$21,$98,$67,$FD,$CF,$7F,$3F,$C5,$FF,$DB,$8F,$B3,$FF,$3F,$00 ; $C37ACA
    db $6A,$D6,$7D,$97,$E4,$23,$D6,$09,$C3,$25,$FD,$17,$00,$AE,$DE,$FA ; $C37ADA
    db $B3,$62,$C3,$04,$68,$80,$7F,$E0,$1F,$29,$1F,$FA,$08,$8F,$FF,$FD ; $C37AEA
    db $16,$06,$79,$01,$06,$3A,$FF,$DD,$D3,$07,$85,$FF,$82,$7F,$80,$A2 ; $C37AFA
    db $01,$01,$97,$11,$AA,$77,$47,$D5,$09,$5F,$E0,$00,$FE,$AB,$40,$3A ; $C37B0A
    db $20,$10,$5D,$FF,$7C,$20,$FF,$B4,$FC,$FC,$7E,$5C,$F9,$01,$FF,$03 ; $C37B1A
    db $98,$07,$58,$27,$A8,$57,$A3,$FF,$D2,$01,$00,$E4,$32,$FE,$D7,$00 ; $C37B2A
    db $7D,$FF,$A9,$FF,$15,$FE,$41,$FE,$41,$08,$44,$FE,$BD,$31,$06,$01 ; $C37B3A
    db $FA,$0E,$FF,$C4,$FD,$E7,$C0,$BF,$E5,$22,$D7,$08,$F9,$71,$06,$09 ; $C37B4A
    db $1E,$44,$5A,$7F,$DC,$01,$00,$E7,$B1,$00,$03,$F0,$1F,$F0,$0F,$F0 ; $C37B5A
    db $1F,$AE,$7F,$DB,$37,$3D,$FF,$FE,$07,$01,$5E,$7A,$FF,$03,$01,$0E ; $C37B6A
    db $B3,$7C,$90,$FF,$B4,$FF,$FC,$7F,$F5,$02,$BF,$9F,$FD,$3A,$3E,$FF ; $C37B7A
    db $07,$00,$7F,$FE,$05,$A3,$99,$FE,$07,$FC,$DF,$08,$20,$06,$49,$BD ; $C37B8A
    db $C0,$7F,$E9,$08,$1F,$7B,$BD,$FE,$03,$FB,$FF,$15,$3F,$CC,$04,$1F ; $C37B9A
    db $FB,$7C,$FD,$78,$FD,$01,$17,$08,$FF,$33,$06,$FB,$7D,$02,$DD,$03 ; $C37BAA
    db $7F,$8F,$63,$7F,$7F,$01,$31,$1F,$20,$7B,$BF,$C0,$D1,$3F,$9E,$33 ; $C37BBA
    db $FB,$05,$5F,$C3,$33,$06,$FB,$08,$C7,$04,$5F,$7F,$BF,$B6,$05,$1F ; $C37BCA
    db $33,$37,$79,$20,$0B,$7F,$FE,$01,$02,$FD,$F6,$FB,$F0,$02,$7A,$03 ; $C37BDA
    db $C3,$49,$F8,$3C,$E0,$C3,$05,$3C,$7F,$DF,$BF,$FD,$04,$D7,$0D,$C0 ; $C37BEA
    db $3F,$78,$0F,$33,$9E,$37,$FE,$03,$22,$DA,$33,$37,$B7,$B9,$BD,$01 ; $C37BFA
    db $7F,$06,$FF,$8F,$33,$80,$7F,$0C,$38,$FF,$F7,$48,$F9,$9E,$7F,$C0 ; $C37C0A
    db $9F,$10,$EF,$0C,$F3,$0B,$1A,$F0,$04,$F8,$01,$C7,$1F,$DF,$13,$48 ; $C37C1A
    db $3F,$DD,$3F,$D0,$98,$EF,$60,$9F,$A0,$19,$1F,$40,$3F,$01,$F9,$C7 ; $C37C2A
    db $37,$F7,$B6,$03,$5F,$31,$37,$EE,$56,$1B,$EF,$38,$E3,$3F,$37,$DF ; $C37C3A
    db $F6,$03,$1F,$31,$DB,$37,$3B,$3F,$1F,$08,$0D,$3F,$9F,$FE,$06,$9E ; $C37C4A
    db $9B,$F3,$C9,$F2,$14,$BF,$80,$23,$FF,$C3,$07,$00,$03,$FE,$00,$F1 ; $C37C5A
    db $15,$FF,$80,$FF,$E0,$12,$1F,$FD,$FE,$FE,$FC,$FE,$08,$7F,$83,$05 ; $C37C6A
    db $0F,$7E,$FF,$FF,$7F,$08,$83,$3F,$FD,$FE,$E1,$16,$5F,$7F,$F1,$21 ; $C37C7A
    db $7F,$D7,$7C,$1E,$FC,$F8,$F8,$02,$19,$1D,$02,$FF,$05,$1E,$03,$06 ; $C37C8A
    db $80,$3D,$3F,$3F,$04,$FD,$DC,$B7,$CB,$7F,$33,$EE,$05,$FE,$3D,$33 ; $C37C9A
    db $02,$06,$5F,$EF,$07,$80,$08,$E7,$FF,$D8,$02,$00,$48,$F9,$FC,$3C ; $C37CAA
    db $FB,$F8,$04,$FB,$02,$1E,$FC,$04,$FC,$04,$FD,$0F,$3F,$7F,$BF,$3F ; $C37CBA
    db $05,$C3,$7F,$7F,$40,$7F,$3D,$33,$FC,$05,$7F,$BE,$33,$06,$4F,$7F ; $C37CCA
    db $3F,$7F,$06,$3F,$80,$80,$07,$78,$41,$00,$52,$4E,$43,$02,$00,$00 ; $C37CDA
    db $78,$20,$00,$00,$4A,$DE,$15,$B5,$FC,$39,$02,$03,$2E,$58,$00,$00 ; $C37CEA
    db $9C,$73,$18,$23,$1C,$32,$94,$52,$90,$31,$0C,$21,$08,$21,$88,$31 ; $C37CFA
    db $8C,$41,$05,$84,$10,$06,$10,$52,$08,$32,$88,$0D,$6F,$10,$1F,$07 ; $C37D0A
    db $3D,$00,$FF,$07,$01,$E1,$57,$1F,$01,$02,$02,$70,$FE,$06,$FE,$FF ; $C37D1A
    db $FF,$10,$20,$20,$EF,$60,$EF,$FF,$E0,$11,$02,$FF,$06,$18,$FB,$FD ; $C37D2A
    db $FE,$07,$20,$FF,$0F,$60,$BF,$DF,$EF,$06,$3C,$1F,$EF,$07,$1F,$CF ; $C37D3A
    db $26,$FF,$81,$1F,$78,$30,$07,$1F,$20,$DF,$93,$1F,$C0,$02,$3F,$61 ; $C37D4A
    db $EF,$A3,$EF,$EE,$F0,$03,$3F,$61,$BE,$A3,$3C,$7D,$CE,$03,$1F,$21 ; $C37D5A
    db $07,$EF,$67,$EF,$FC,$FE,$81,$02,$1F,$21,$FF,$67,$BA,$DC,$4B,$7F ; $C37D6A
    db $87,$0E,$FE,$F2,$FF,$DB,$E3,$A1,$8F,$83,$9F,$86,$DE,$17,$1F,$FD ; $C37D7A
    db $6C,$0E,$F5,$F2,$EF,$C3,$BD,$80,$7F,$83,$FC,$86,$7D,$0A,$1D,$3A ; $C37D8A
    db $FD,$64,$F6,$D3,$E7,$63,$CF,$E2,$FE,$76,$BE,$9B,$3D,$08,$FF,$38 ; $C37D9A
    db $DF,$64,$BB,$C3,$FE,$25,$E2,$2E,$DF,$36,$D8,$CD,$19,$FF,$5C,$FE ; $C37DAA
    db $7B,$F7,$43,$EF,$D1,$EF,$63,$3F,$9F,$7F,$1F,$FF,$BE,$FE,$5C,$AF ; $C37DBA
    db $73,$EE,$43,$BD,$C1,$7E,$22,$FD,$1D,$F6,$17,$EC,$B6,$5D,$03,$29 ; $C37DCA
    db $FE,$03,$B8,$70,$7F,$0E,$7F,$35,$71,$F9,$E3,$21,$F7,$31,$7F,$02 ; $C37DDA
    db $7F,$03,$FF,$C0,$61,$31,$CF,$E1,$DF,$21,$0E,$DF,$31,$DE,$02,$60 ; $C37DEA
    db $1F,$9D,$E8,$08,$08,$3B,$02,$08,$BB,$88,$BB,$BB,$FB,$01,$1F,$FD ; $C37DFA
    db $C6,$08,$F7,$C0,$01,$FF,$88,$7F,$B3,$06,$CC,$1B,$FF,$3F,$7F,$AD ; $C37E0A
    db $5C,$FC,$70,$E8,$FC,$FF,$82,$C3,$B1,$C1,$89,$81,$1B,$F4,$3F,$CB ; $C37E1A
    db $CE,$3D,$2F,$B0,$80,$9C,$F8,$0C,$BE,$4C,$9E,$F4,$3B,$C8,$00,$F0 ; $C37E2A
    db $50,$6F,$8B,$EC,$67,$88,$CF,$61,$70,$01,$8F,$30,$20,$80,$10,$85 ; $C37E3A
    db $90,$80,$10,$10,$F0,$18,$10,$80,$00,$01,$C0,$00,$86,$7F,$00,$00 ; $C37E4A
    db $73,$47,$63,$DF,$62,$DE,$47,$DE,$20,$DE,$FE,$5F,$FE,$2E,$F3,$43 ; $C37E5A
    db $18,$BF,$43,$FC,$42,$FF,$46,$FB,$9E,$65,$07,$FE,$05,$FF,$FC,$F8 ; $C37E6A
    db $5C,$FD,$F1,$9C,$3F,$CF,$0F,$09,$FB,$1E,$F8,$06,$FB,$04,$FF,$0C ; $C37E7A
    db $F3,$E8,$7F,$1C,$EB,$0F,$F6,$09,$FE,$18,$F7,$9C,$27,$1F,$73,$15 ; $C37E8A
    db $EC,$A2,$6E,$CA,$27,$E4,$1F,$E7,$1D,$E3,$19,$BE,$FD,$FF,$43,$12 ; $C37E9A
    db $03,$11,$10,$1F,$12,$02,$00,$C0,$01,$06,$00,$34,$FB,$F0,$0D,$F3 ; $C37EAA
    db $71,$F7,$7F,$A4,$70,$FF,$83,$87,$1B,$07,$22,$02,$30,$DF,$10,$EF ; $C37EBA
    db $F1,$CC,$B1,$8E,$66,$73,$01,$3F,$FB,$64,$F2,$5F,$03,$7E,$80,$7F ; $C37ECA
    db $72,$FE,$4F,$FF,$E6,$CF,$EC,$5D,$BF,$20,$CF,$FC,$7F,$72,$06,$AF ; $C37EDA
    db $4D,$FE,$C6,$39,$99,$09,$86,$FD,$CC,$7B,$64,$9F,$FE,$60,$FF,$6F ; $C37EEA
    db $A0,$EF,$7F,$4B,$7F,$11,$9F,$FC,$FF,$97,$FF,$A0,$AE,$FF,$5F,$EF ; $C37EFA
    db $F8,$F9,$AC,$DB,$C4,$8F,$87,$3F,$09,$7F,$B5,$F9,$F9,$F3,$F3,$F7 ; $C37F0A
    db $F0,$1F,$88,$F7,$84,$7B,$07,$FB,$09,$FF,$B1,$5E,$91,$EE,$D3,$3D ; $C37F1A
    db $31,$E2,$72,$F6,$EA,$DE,$8E,$8F,$07,$BE,$8F,$BF,$D9,$FF,$F5,$F9 ; $C37F2A
    db $20,$5C,$5D,$3E,$CA,$3F,$8C,$77,$06,$FD,$8D,$F6,$59,$AF,$91,$7E ; $C37F3A
    db $38,$1F,$7F,$01,$03,$0F,$7F,$20,$07,$8C,$7F,$01,$CF,$F8,$05,$DF ; $C37F4A
    db $7B,$20,$07,$3F,$D9,$02,$1F,$BA,$3F,$84,$00,$FF,$7F,$FF,$80,$7F ; $C37F5A
    db $04,$FB,$E0,$F9,$25,$31,$DF,$2B,$DD,$BF,$8B,$E0,$01,$3F,$F0,$E0 ; $C37F6A
    db $E0,$EF,$78,$E0,$01,$9F,$BD,$FE,$1C,$40,$FF,$E0,$01,$CF,$40,$01 ; $C37F7A
    db $05,$83,$FF,$C7,$C7,$C1,$04,$7F,$40,$BF,$83,$C7,$E1,$03,$7F,$E7 ; $C37F8A
    db $78,$FB,$E0,$06,$DF,$48,$B7,$DF,$EB,$F3,$04,$3F,$61,$C1,$05,$BF ; $C37F9A
    db $A0,$7F,$61,$BE,$F2,$02,$1F,$1E,$04,$2E,$38,$F8,$C0,$C0,$4C,$BF ; $C37FAA
    db $80,$1F,$0C,$F6,$30,$D8,$80,$E0,$0F,$04,$04,$00,$6C,$F8,$01,$00 ; $C37FBA
    db $10,$5C,$30,$30,$A0,$E0,$60,$E0,$E2,$E2,$00,$FC,$08,$F0,$50,$A8 ; $C37FCA
    db $0F,$00,$F0,$A0,$32,$60,$60,$12,$E2,$53,$F4,$B0,$44,$03,$95,$95 ; $C37FDA
    db $2A,$13,$2A,$DD,$DD,$AF,$05,$30,$0F,$10,$00,$2A,$00,$78,$DD,$01 ; $C37FEA
    db $7F,$38,$0C,$62,$0C,$0A,$02,$03,$C0,$5F,$10,$3F,$04,$0F,$E3,$0D ; $C37FFA
    db $03,$3F,$1F,$03,$15,$5A,$7F,$A0,$56,$10,$10,$44,$44,$AA,$1F,$AA ; $C3800A
    db $5D,$5D,$01,$51,$67,$10,$00,$44,$76,$00,$AA,$00,$5D,$61,$42,$03 ; $C3801A
    db $1E,$06,$1E,$1F,$3F,$0F,$08,$85,$87,$06,$07,$42,$43,$00,$7F,$02 ; $C3802A
    db $3F,$06,$3B,$1D,$3E,$00,$0F,$05,$82,$02,$05,$00,$43,$FA,$09,$F9 ; $C3803A
    db $AF,$19,$01,$01,$EF,$07,$03,$05,$3C,$01,$55,$04,$0D,$55,$E7,$01 ; $C3804A
    db $90,$05,$1D,$FE,$1F,$B0,$37,$03,$FF,$71,$54,$1F,$0F,$C0,$01,$07 ; $C3805A
    db $FF,$FB,$FB,$1D,$11,$21,$21,$80,$7F,$E3,$E3,$0F,$FD,$0B,$F7,$D7 ; $C3806A
    db $19,$1F,$F0,$FB,$01,$FE,$21,$FE,$61,$BE,$C0,$E3,$FB,$F6,$E2,$F6 ; $C3807A
    db $E6,$EE,$02,$C0,$FF,$F2,$4F,$E2,$FF,$E6,$3B,$FB,$8D,$76,$FF,$DF ; $C3808A
    db $E0,$3B,$87,$07,$0F,$3B,$FE,$1E,$2E,$1F,$1F,$18,$3E,$3E,$FE,$62 ; $C3809A
    db $E7,$ED,$FD,$01,$F6,$04,$FF,$12,$15,$FF,$0E,$00,$FF,$2E,$FD,$60 ; $C380AA
    db $BF,$CC,$FD,$C1,$9C,$FD,$3F,$06,$CF,$1F,$1C,$FF,$08,$8F,$BF,$0E ; $C380BA
    db $83,$FF,$DE,$EF,$C0,$16,$1F,$10,$FF,$81,$03,$03,$E4,$BF,$46,$3F ; $C380CA
    db $BF,$4C,$62,$5F,$05,$33,$FB,$F8,$1D,$DF,$19,$BF,$62,$BD,$5F,$FF ; $C380DA
    db $D5,$5D,$E0,$7E,$FF,$3F,$3F,$88,$DD,$70,$FE,$F3,$AA,$FF,$B8,$6B ; $C380EA
    db $7E,$FF,$FC,$FF,$3D,$FF,$5E,$BF,$DD,$3F,$88,$FF,$3E,$8F,$02,$FD ; $C380FA
    db $04,$FD,$F8,$FD,$1B,$37,$37,$EF,$6F,$DF,$EF,$DF,$03,$FE,$2E,$4F ; $C3810A
    db $3C,$FB,$FF,$E5,$1F,$EC,$38,$DF,$73,$BE,$E0,$FF,$83,$C2,$82,$FE ; $C3811A
    db $C6,$3F,$00,$D0,$F8,$E8,$FF,$E4,$FF,$F7,$FF,$75,$82,$D7,$21,$C6 ; $C3812A
    db $3E,$BB,$3D,$DE,$70,$AF,$38,$D7,$CC,$3F,$F9,$EF,$2E,$1F,$2E,$DE ; $C3813A
    db $0E,$FE,$E6,$FF,$33,$3F,$29,$7E,$27,$30,$7F,$24,$F7,$FB,$3E,$F3 ; $C3814A
    db $03,$FC,$DF,$3F,$CD,$2B,$F7,$00,$0B,$4F,$FF,$1F,$16,$2E,$F6,$26 ; $C3815A
    db $60,$FE,$58,$BE,$DE,$FD,$3F,$70,$FB,$7F,$1A,$FD,$5C,$2A,$30,$DF ; $C3816A
    db $3A,$DF,$F9,$36,$F6,$ED,$ED,$DA,$1B,$F5,$DE,$57,$00,$A0,$00,$09 ; $C3817A
    db $54,$01,$FC,$7F,$15,$00,$FF,$80,$A7,$80,$FF,$7C,$D3,$7F,$80,$E0 ; $C3818A
    db $01,$C0,$9C,$7F,$3A,$00,$50,$07,$4B,$50,$15,$80,$29,$BC,$00,$6D ; $C3819A
    db $CB,$23,$06,$2F,$0C,$9F,$2F,$81,$01,$01,$50,$12,$01,$E3,$79,$60 ; $C381AA
    db $3F,$CD,$01,$FF,$01,$FE,$C1,$2E,$61,$9F,$7F,$81,$B3,$01,$42,$AF ; $C381BA
    db $22,$4D,$5F,$F9,$69,$48,$70,$52,$DF,$AF,$58,$50,$41,$70,$6D,$8F ; $C381CA
    db $61,$12,$86,$5C,$05,$00,$AB,$60,$78,$02,$0E,$5F,$FC,$FF,$00,$03 ; $C381DA
    db $01,$41,$01,$EF,$01,$0F,$BF,$F0,$06,$1F,$0E,$F1,$FE,$40,$01,$01 ; $C381EA
    db $7E,$FF,$67,$EB,$6D,$F5,$4B,$24,$01,$28,$76,$1F,$1F,$EA,$42,$15 ; $C381FA
    db $7F,$20,$61,$1F,$E1,$E0,$08,$FF,$C1,$FF,$80,$9F,$8F,$01,$E1,$28 ; $C3820A
    db $07,$7F,$7F,$C0,$58,$3F,$61,$7E,$66,$81,$01,$FE,$7F,$7E,$55,$04 ; $C3821A
    db $01,$B2,$5F,$B0,$01,$A0,$7F,$D5,$D8,$BF,$E1,$01,$51,$02,$01,$01 ; $C3822A
    db $00,$51,$17,$81,$42,$7F,$2E,$D1,$CE,$5F,$19,$06,$01,$04,$04,$03 ; $C3823A
    db $03,$5F,$71,$01,$F7,$02,$3F,$32,$1F,$73,$FE,$0E,$5D,$7E,$33,$FF ; $C3824A
    db $2F,$E4,$54,$32,$FD,$E0,$E6,$F4,$42,$7F,$2F,$D0,$C8,$7F,$D8,$61 ; $C3825A
    db $67,$D8,$FF,$1D,$A0,$C0,$40,$89,$1F,$F0,$01,$02,$1F,$D8,$A7,$80 ; $C3826A
    db $7F,$60,$1F,$E0,$7F,$C0,$E3,$06,$7F,$07,$FF,$43,$41,$7F,$1C,$0F ; $C3827A
    db $01,$3F,$1B,$00,$BF,$BF,$FB,$FF,$06,$F9,$40,$BF,$70,$20,$1D,$3E ; $C3828A
    db $C1,$C0,$5D,$BE,$41,$EA,$F7,$F5,$DC,$6D,$00,$C4,$FF,$BF,$01,$87 ; $C3829A
    db $9F,$F4,$0B,$9E,$04,$9F,$14,$19,$FF,$23,$81,$17,$16,$9D,$68,$00 ; $C382AA
    db $43,$FF,$3B,$DC,$04,$FF,$11,$42,$2F,$61,$C2,$FF,$FE,$17,$8B,$E1 ; $C382BA
    db $FE,$00,$FF,$02,$0F,$80,$05,$80,$0A,$0B,$70,$05,$7A,$7F,$69,$FF ; $C382CA
    db $08,$3F,$7A,$85,$38,$DF,$85,$11,$15,$CE,$CF,$A8,$85,$45,$AA,$B1 ; $C382DA
    db $C0,$15,$EA,$F9,$02,$E1,$D0,$D3,$0B,$0F,$7F,$02,$1F,$FF,$7E,$D5 ; $C382EA
    db $01,$A8,$1F,$FF,$81,$A3,$DF,$17,$D6,$01,$FF,$DE,$1D,$02,$FF,$02 ; $C382FA
    db $50,$FF,$0A,$00,$BF,$00,$C0,$5F,$F5,$0A,$50,$AF,$F0,$02,$5F,$AE ; $C3830A
    db $FF,$41,$C7,$3F,$A9,$AF,$42,$1D,$2F,$62,$7E,$40,$BF,$42,$1D,$2E ; $C3831A
    db $D1,$21,$3F,$A8,$3B,$81,$3F,$04,$06,$40,$06,$00,$20,$88,$07,$82 ; $C3832A
    db $C3,$0A,$1B,$08,$FF,$04,$67,$23,$05,$82,$09,$9D,$00,$40,$5C,$4E ; $C3833A
    db $00,$08,$E3,$05,$18,$EA,$04,$CF,$20,$31,$FF,$10,$05,$C3,$04,$82 ; $C3834A
    db $15,$1A,$04,$10,$05,$8A,$47,$08,$A4,$DF,$10,$EF,$84,$43,$CF,$25 ; $C3835A
    db $18,$01,$BB,$91,$80,$E9,$0C,$FF,$7D,$80,$03,$5F,$5F,$63,$07,$71 ; $C3836A
    db $DF,$63,$BC,$CF,$98,$0B,$07,$B9,$59,$FD,$01,$F4,$F9,$38,$33,$A0 ; $C3837A
    db $F7,$79,$DF,$2F,$B8,$EA,$04,$FB,$2F,$D6,$59,$AE,$D0,$FF,$30,$EF ; $C3838A
    db $80,$7F,$59,$B7,$8D,$F7,$3F,$C7,$EB,$FF,$31,$5E,$3F,$4E,$3F,$11 ; $C3839A
    db $0F,$FE,$FC,$5C,$7F,$3F,$BD,$00,$CE,$FF,$E2,$CF,$A2,$DF,$87,$DF ; $C383AA
    db $C0,$0F,$FC,$FC,$09,$BD,$7B,$ED,$A1,$75,$C2,$3F,$80,$FF,$84,$FB ; $C383BA
    db $7C,$E7,$FC,$1B,$09,$FE,$73,$8C,$7B,$8E,$1C,$7B,$18,$F7,$F8,$FF ; $C383CA
    db $E7,$EF,$C3,$DF,$EB,$FF,$BF,$FF,$1F,$3F,$D8,$0D,$D3,$E8,$B7,$00 ; $C383DA
    db $E7,$5C,$81,$7F,$AA,$D7,$BD,$73,$75,$1D,$58,$F1,$FC,$4D,$FE,$F8 ; $C383EA
    db $E0,$A1,$EA,$F8,$F1,$03,$FC,$E9,$FA,$EF,$BD,$9C,$5C,$96,$27,$4B ; $C383FA
    db $F8,$CF,$37,$FF,$EB,$95,$F1,$8E,$E9,$96,$7F,$87,$57,$3F,$FF,$F0 ; $C3840A
    db $57,$E6,$5C,$01,$70,$78,$87,$FB,$0E,$F7,$8E,$C7,$7E,$22,$DF,$F0 ; $C3841A
    db $2F,$DE,$3B,$DE,$7D,$19,$0B,$C8,$E8,$3A,$ED,$E8,$F7,$C1,$0C,$01 ; $C3842A
    db $80,$F4,$FE,$FA,$FE,$27,$FF,$03,$FC,$E8,$1F,$01,$F3,$6B,$EF,$A5 ; $C3843A
    db $87,$F4,$8B,$7A,$85,$F0,$FF,$0C,$08,$AC,$08,$6E,$08,$40,$99,$80 ; $C3844A
    db $AC,$80,$61,$96,$9C,$C0,$7B,$CE,$78,$BF,$4B,$7F,$99,$FF,$09,$DF ; $C3845A
    db $38,$AF,$52,$97,$E9,$7F,$88,$43,$6C,$7C,$6F,$05,$15,$80,$F0,$9F ; $C3846A
    db $9E,$42,$82,$78,$81,$F0,$00,$90,$10,$90,$00,$FA,$00,$F0,$0F,$E0 ; $C3847A
    db $41,$7C,$B1,$7E,$87,$C0,$37,$80,$08,$2F,$08,$19,$76,$88,$41,$01 ; $C3848A
    db $80,$80,$D1,$C3,$E9,$7E,$FF,$D4,$B5,$6C,$D8,$DB,$C7,$F7,$EF,$1E ; $C3849A
    db $EF,$82,$FF,$C3,$BD,$C3,$FF,$27,$27,$C8,$10,$5F,$10,$A0,$0E,$00 ; $C384AA
    db $AA,$E8,$47,$30,$C2,$3D,$0D,$EF,$17,$7F,$74,$B0,$00,$C9,$A1,$AA ; $C384BA
    db $55,$17,$E9,$FC,$23,$6B,$84,$5F,$8F,$EC,$40,$50,$03,$1F,$F2,$F2 ; $C384CA
    db $84,$82,$3C,$02,$1F,$00,$13,$10,$13,$48,$4D,$1F,$E1,$0F,$B8,$75 ; $C384DA
    db $04,$7D,$1A,$FD,$C3,$1F,$FF,$60,$20,$6A,$20,$EC,$85,$36,$06,$02 ; $C384EA
    db $CB,$6B,$02,$D3,$02,$FF,$07,$BC,$E7,$FA,$A5,$FC,$33,$FF,$21,$F7 ; $C384FA
    db $39,$EB,$94,$D3,$2E,$02,$80,$C8,$C8,$27,$10,$F5,$60,$5F,$D1,$01 ; $C3850A
    db $86,$79,$03,$27,$11,$EF,$D0,$FD,$1A,$8C,$5F,$0B,$5F,$D1,$E8,$76 ; $C3851A
    db $03,$03,$20,$E8,$21,$30,$22,$5C,$07,$30,$11,$02,$02,$16,$86,$2E ; $C3852A
    db $FD,$FF,$DF,$FC,$F8,$37,$4E,$DF,$EF,$F1,$60,$EE,$9F,$86,$7B,$FE ; $C3853A
    db $FF,$08,$7F,$FE,$7E,$FE,$82,$DD,$AF,$3F,$E7,$1F,$7F,$2F,$BF,$EE ; $C3854A
    db $73,$7A,$8D,$7E,$A5,$3F,$E6,$D9,$FF,$AE,$53,$1F,$E3,$2F,$D2,$B8 ; $C3855A
    db $37,$11,$77,$8B,$83,$76,$FF,$9E,$D7,$C6,$A6,$9F,$CF,$DF,$F5,$F9 ; $C3856A
    db $30,$CF,$11,$FE,$0F,$FF,$74,$AF,$46,$BB,$86,$FB,$4F,$B7,$71,$CE ; $C3857A
    db $37,$04,$A1,$27,$2F,$6F,$2F,$74,$99,$02,$5E,$30,$FF,$BE,$8D,$FF ; $C3858A
    db $81,$7E,$33,$2F,$F0,$01,$9E,$A0,$83,$5E,$A3,$01,$BC,$43,$F9,$E3 ; $C3859A
    db $E1,$F7,$F3,$D6,$07,$A5,$FE,$F8,$18,$FD,$35,$00,$B6,$CB,$DE,$A1 ; $C385AA
    db $7E,$D3,$EF,$DE,$7D,$88,$F7,$18,$EF,$F5,$BA,$F5,$7E,$E3,$C2,$C2 ; $C385BA
    db $EE,$A6,$03,$7F,$3F,$18,$78,$3A,$7B,$6B,$1D,$46,$8D,$C2,$BD,$42 ; $C385CA
    db $FF,$A6,$7B,$29,$DE,$18,$F7,$3A,$CD,$F5,$3A,$6B,$D7,$A8,$7F,$1F ; $C385DA
    db $30,$20,$A0,$05,$D7,$FF,$20,$48,$89,$40,$BF,$BF,$B8,$63,$EF,$E7 ; $C385EA
    db $8E,$82,$DE,$C6,$DF,$5F,$7F,$79,$FF,$E7,$00,$EF,$F7,$A3,$5B,$60 ; $C385FA
    db $1F,$9B,$5D,$EF,$58,$F7,$02,$E7,$39,$C7,$38,$97,$E8,$DF,$3F,$0C ; $C3860A
    db $C0,$80,$80,$BF,$01,$BF,$F7,$01,$3F,$57,$1C,$AB,$25,$80,$F7,$BF ; $C3861A
    db $BE,$FE,$FE,$BC,$FC,$24,$3E,$3E,$7F,$00,$ED,$FD,$A8,$BF,$14,$FF ; $C3862A
    db $BC,$7D,$20,$2A,$DD,$7F,$F7,$10,$38,$68,$D5,$3F,$EB,$43,$A1,$FF ; $C3863A
    db $38,$20,$B0,$FE,$01,$BF,$02,$EF,$E0,$3F,$7F,$CA,$35,$C5,$3A,$20 ; $C3864A
    db $AF,$FF,$7F,$C2,$F0,$05,$7F,$0A,$F7,$57,$3D,$AA,$5C,$03,$7F,$56 ; $C3865A
    db $E0,$E1,$37,$40,$15,$3F,$AA,$18,$BF,$9F,$9F,$3F,$AA,$57,$18,$56 ; $C3866A
    db $AB,$2C,$0F,$7F,$35,$5C,$4A,$7A,$3F,$C0,$01,$9F,$01,$01,$05,$E5 ; $C3867A
    db $03,$E3,$C5,$C5,$03,$13,$F7,$F7,$D1,$3E,$F7,$00,$E1,$71,$00,$E5 ; $C3868A
    db $40,$A3,$C0,$C5,$00,$F3,$F0,$17,$F0,$13,$F1,$F7,$77,$77,$CB,$BB ; $C3869A
    db $7F,$44,$E4,$55,$BE,$77,$CE,$81,$A8,$83,$12,$FF,$4A,$01,$FF,$97 ; $C386AA
    db $FF,$5F,$FD,$C7,$C7,$D2,$21,$FF,$01,$F0,$F7,$08,$31,$94,$F7,$30 ; $C386BA
    db $DF,$9F,$01,$02,$C7,$2F,$FC,$6C,$D3,$E0,$C0,$67,$94,$7B,$30,$DF ; $C386CA
    db $3D,$E7,$F8,$02,$39,$5D,$9D,$5C,$FF,$77,$B7,$FB,$7F,$FD,$37,$FA ; $C386DA
    db $3F,$E8,$3F,$D0,$BF,$E0,$BF,$C0,$AA,$F5,$71,$89,$06,$21,$00,$F7 ; $C386EA
    db $57,$81,$00,$03,$51,$FF,$5A,$FF,$5B,$F5,$A3,$60,$A3,$95,$E2,$E3 ; $C386FA
    db $F0,$F3,$07,$E8,$EA,$F4,$F5,$FC,$60,$BF,$00,$A3,$03,$F2,$60,$02 ; $C3870A
    db $A3,$F3,$00,$EB,$40,$3A,$F7,$A0,$F0,$DD,$00,$23,$F7,$FF,$F0,$1E ; $C3871A
    db $03,$00,$AA,$FF,$DF,$E4,$FF,$A1,$F7,$8C,$DB,$5B,$28,$63,$5D,$03 ; $C3872A
    db $AA,$55,$1B,$13,$F3,$FF,$C5,$0E,$01,$F6,$F1,$F2,$BE,$2B,$23,$5C ; $C3873A
    db $EF,$7B,$B1,$C3,$7D,$E1,$BF,$E1,$3E,$F8,$1F,$F2,$0D,$F5,$0A,$BF ; $C3874A
    db $47,$83,$0B,$1F,$04,$FC,$F8,$87,$F8,$20,$20,$02,$C2,$45,$C5,$8B ; $C3875A
    db $8B,$02,$FD,$02,$7C,$76,$F0,$F8,$EE,$81,$B2,$C2,$40,$85,$00,$8B ; $C3876A
    db $81,$C0,$1F,$E6,$DE,$3F,$3F,$02,$14,$18,$A8,$AB,$56,$55,$58,$FF ; $C3877A
    db $C6,$BB,$EB,$00,$3F,$1F,$08,$AF,$04,$53,$03,$60,$FF,$FF,$8F,$8F ; $C3878A
    db $CF,$CF,$1B,$DF,$DF,$5F,$02,$9A,$00,$DF,$E3,$80,$47,$80,$8F,$01 ; $C3879A
    db $CF,$C7,$DF,$4F,$9C,$DF,$90,$DF,$40,$2A,$F5,$D5,$12,$8A,$3A,$FE ; $C387AA
    db $A0,$7F,$F9,$FD,$F9,$FB,$AF,$E3,$3F,$A8,$AE,$F3,$FF,$00,$4D,$FC ; $C387BA
    db $07,$F9,$06,$F9,$07,$AC,$4A,$57,$02,$5F,$E9,$E9,$1F,$1F,$D6,$97 ; $C387CA
    db $FF,$2A,$D7,$0B,$54,$AB,$80,$E9,$15,$DF,$8F,$7D,$57,$BA,$CF,$FD ; $C387DA
    db $78,$DF,$F8,$3A,$E0,$F0,$93,$FF,$FB,$FB,$02,$1F,$52,$AF,$AE,$53 ; $C387EA
    db $05,$2D,$FF,$01,$7F,$E1,$BE,$E0,$7B,$87,$07,$8C,$83,$01,$FD,$5D ; $C387FA
    db $10,$0E,$20,$65,$FF,$AE,$00,$3F,$07,$FA,$09,$F7,$55,$A9,$E8,$60 ; $C3880A
    db $FC,$27,$6F,$B0,$8F,$70,$32,$8F,$FF,$1A,$FF,$A9,$7F,$03,$3A,$38 ; $C3881A
    db $59,$DB,$A2,$F7,$00,$A1,$FC,$AD,$F8,$57,$FC,$AF,$28,$EB,$80,$B9 ; $C3882A
    db $C9,$16,$C3,$3C,$18,$DF,$00,$4B,$02,$C7,$61,$10,$43,$DF,$63,$E2 ; $C3883A
    db $01,$5F,$2E,$7F,$A0,$0F,$7F,$63,$BC,$CE,$07,$B9,$7F,$6F,$6F,$F7 ; $C3884A
    db $05,$7F,$B8,$C8,$F7,$2D,$77,$80,$02,$08,$FF,$15,$FF,$F2,$F2,$2F ; $C3885A
    db $2F,$6F,$EF,$BF,$BF,$D5,$01,$55,$AB,$C0,$F2,$25,$CF,$6A,$98,$A7 ; $C3886A
    db $7F,$A5,$E2,$EF,$02,$A2,$EF,$A7,$EF,$5C,$5F,$D7,$7F,$00,$62,$BF ; $C3887A
    db $A0,$FF,$A4,$FB,$1C,$57,$15,$E4,$3B,$01,$77,$7F,$E2,$CB,$02,$7F ; $C3888A
    db $7F,$E7,$0C,$7F,$EE,$18,$FF,$E6,$0F,$8E,$82,$DF,$C7,$07,$92,$7F ; $C3889A
    db $47,$BA,$72,$7F,$39,$3E,$96,$E9,$18,$E0,$FF,$41,$02,$82,$7E,$86 ; $C388AA
    db $0C,$7E,$7F,$FF,$90,$FF,$6F,$6E,$E0,$DE,$98,$93,$94,$9F,$7D,$EC ; $C388BA
    db $DF,$3F,$4F,$FF,$1A,$98,$FF,$26,$3F,$7E,$3F,$4C,$EF,$3F,$7C,$FB ; $C388CA
    db $07,$5F,$5F,$FE,$07,$CC,$FF,$BC,$BF,$FF,$08,$3D,$1F,$0D,$5F,$BB ; $C388DA
    db $00,$8E,$29,$BC,$3D,$FB,$DF,$1C,$0E,$39,$02,$FD,$F8,$61,$07,$1F ; $C388EA
    db $62,$BD,$C8,$E7,$05,$5F,$60,$BC,$07,$5F,$1C,$3F,$E1,$A0,$BF,$5F ; $C388FA
    db $DF,$74,$1A,$60,$60,$6F,$01,$DE,$8E,$5F,$0C,$DF,$40,$A3,$29,$6F ; $C3890A
    db $01,$41,$18,$F5,$1F,$7F,$B8,$FB,$00,$7D,$26,$7D,$70,$3F,$0C,$7C ; $C3891A
    db $97,$7C,$AB,$03,$61,$48,$BC,$3D,$40,$7F,$FF,$1E,$B6,$3F,$1E,$BF ; $C3892A
    db $EC,$FC,$06,$BF,$18,$C8,$FC,$2F,$00,$EF,$0F,$00,$EF,$CF,$CF,$19 ; $C3893A
    db $11,$71,$F7,$7B,$E2,$C7,$25,$E3,$EE,$2B,$CE,$0F,$EE,$81,$CE,$11 ; $C3894A
    db $DF,$50,$BF,$3A,$ED,$38,$D7,$03,$8E,$00,$FB,$0F,$E4,$3F,$31,$21 ; $C3895A
    db $90,$5F,$01,$FB,$77,$02,$A1,$FB,$F0,$FB,$21,$DE,$00,$3F,$CE,$FF ; $C3896A
    db $FD,$F9,$1B,$FD,$FB,$F3,$6F,$1B,$06,$E1,$F5,$FF,$8B,$9F,$79,$97 ; $C3897A
    db $AF,$F8,$DF,$72,$BD,$F0,$DD,$61,$BF,$6E,$F1,$66,$79,$18,$7F,$01 ; $C3898A
    db $42,$E3,$FE,$F6,$01,$9F,$20,$E4,$EE,$EF,$ED,$50,$BF,$E2,$0E,$BF ; $C3899A
    db $F6,$CB,$5D,$F0,$FF,$EE,$F9,$1F,$CD,$F6,$17,$19,$E9,$FF,$03,$56 ; $C389AA
    db $2E,$07,$DF,$20,$E7,$EF,$22,$1D,$90,$FF,$FE,$EB,$FE,$D5,$70,$51 ; $C389BA
    db $3F,$EF,$FA,$08,$CF,$F5,$14,$EF,$AB,$3F,$86,$8F,$1F,$18,$03,$B9 ; $C389CA
    db $BF,$86,$7B,$29,$5F,$81,$3F,$FB,$04,$70,$02,$FC,$04,$AC,$06,$4F ; $C389DA
    db $07,$18,$04,$10,$08,$11,$EA,$7B,$89,$90,$3B,$AC,$FB,$4E,$F1,$07 ; $C389EA
    db $11,$FE,$10,$EF,$18,$5E,$0B,$E3,$E6,$09,$04,$11,$08,$31,$68,$E1 ; $C389FA
    db $08,$F1,$04,$31,$0D,$1F,$8C,$19,$17,$1D,$00,$30,$CF,$60,$9F,$D0 ; $C38A0A
    db $BF,$24,$FB,$39,$1D,$E2,$21,$EF,$08,$00,$07,$A6,$5F,$E1,$04,$09 ; $C38A1A
    db $00,$1D,$00,$7F,$06,$18,$00,$0B,$00,$0F,$C6,$03,$05,$5F,$00,$14 ; $C38A2A
    db $FB,$60,$DF,$10,$FF,$0A,$F7,$73,$0E,$03,$AC,$BF,$C7,$31,$21,$10 ; $C38A3A
    db $52,$FF,$81,$3A,$04,$01,$92,$E7,$10,$01,$64,$35,$FB,$29,$A7,$0B ; $C38A4A
    db $91,$95,$20,$4B,$FB,$04,$AC,$07,$EB,$1F,$20,$04,$08,$EC,$09,$52 ; $C38A5A
    db $F2,$00,$63,$22,$B8,$80,$02,$63,$3F,$45,$00,$06,$D2,$02,$1D,$B1 ; $C38A6A
    db $45,$82,$0E,$35,$08,$5F,$00,$26,$10,$3E,$07,$40,$04,$CA,$5F,$15 ; $C38A7A
    db $43,$5F,$FF,$71,$22,$22,$E7,$EE,$DB,$1D,$2E,$07,$54,$3D,$AB,$FF ; $C38A8A
    db $29,$FE,$53,$E8,$FF,$22,$DF,$EE,$BB,$CF,$77,$1E,$EF,$7B,$D2,$5B ; $C38A9A
    db $37,$7F,$3A,$24,$E0,$EA,$80,$1D,$2F,$FF,$7B,$95,$C0,$7F,$27,$77 ; $C38AAA
    db $D8,$C0,$BC,$1F,$E0,$3F,$8F,$F0,$0F,$11,$F0,$02,$7F,$4F,$75,$62 ; $C38ABA
    db $7F,$E5,$ED,$D8,$7F,$2B,$FE,$3A,$17,$E1,$90,$FF,$ED,$B2,$CF,$74 ; $C38ACA
    db $52,$17,$13,$42,$39,$EF,$FF,$00,$0B,$EF,$30,$FE,$2F,$C0,$A6,$39 ; $C38ADA
    db $09,$1C,$CF,$30,$1E,$12,$53,$E8,$17,$95,$25,$4D,$BF,$C7,$03,$FE ; $C38AEA
    db $A0,$5F,$AF,$7E,$B7,$ED,$B1,$FF,$60,$DF,$7E,$E9,$7E,$F5,$3A,$17 ; $C38AFA
    db $08,$98,$BC,$28,$21,$80,$1F,$23,$EC,$B9,$EE,$0E,$99,$EF,$58,$77 ; $C38B0A
    db $A8,$7F,$FE,$A1,$7E,$26,$D5,$FF,$3D,$CE,$00,$FD,$E8,$DD,$80,$FF ; $C38B1A
    db $05,$1B,$FE,$6F,$90,$1B,$01,$01,$10,$FF,$7D,$82,$6A,$95,$1E,$0F ; $C38B2A
    db $36,$CC,$EF,$EF,$02,$E4,$B9,$FA,$07,$01,$FE,$C4,$3B,$EF,$FD,$F7 ; $C38B3A
    db $EE,$D6,$87,$39,$FF,$2B,$D4,$0A,$01,$5F,$36,$08,$88,$ED,$4C,$D6 ; $C38B4A
    db $0E,$1F,$8B,$80,$EB,$8B,$49,$8C,$7E,$FD,$37,$C9,$88,$7F,$4C,$BB ; $C38B5A
    db $F7,$EF,$0B,$F4,$EB,$94,$FE,$81,$52,$57,$07,$18,$10,$30,$98,$07 ; $C38B6A
    db $28,$81,$35,$AA,$81,$6E,$C7,$FE,$7F,$EF,$DC,$27,$F8,$30,$DF,$EF ; $C38B7A
    db $F7,$3E,$D7,$AB,$D4,$D5,$AB,$89,$9F,$EE,$30,$D9,$0A,$00,$D4,$06 ; $C38B8A
    db $39,$A0,$3F,$9F,$80,$9D,$EF,$BA,$B2,$EF,$AB,$54,$0E,$D4,$2B,$A6 ; $C38B9A
    db $59,$FE,$BD,$C0,$48,$E8,$81,$AA,$E3,$80,$7E,$B9,$77,$02,$E8,$1F ; $C38BAA
    db $EF,$B8,$B2,$EF,$BF,$1D,$1C,$03,$26,$00,$C0,$11,$18,$32,$07,$07 ; $C38BBA
    db $29,$02,$AB,$02,$43,$CC,$FD,$3A,$BC,$C8,$D0,$05,$EF,$DF,$F9,$D6 ; $C38BCA
    db $1C,$AB,$56,$56,$5F,$07,$D8,$20,$22,$6F,$65,$07,$40,$A2,$02,$AE ; $C38BDA
    db $00,$FF,$FD,$7E,$D8,$27,$22,$FD,$30,$65,$BA,$80,$A0,$5F,$AE,$77 ; $C38BEA
    db $53,$A0,$AC,$FF,$FC,$20,$2F,$2F,$B3,$5F,$00,$7C,$FD,$FE,$FC,$03 ; $C38BFA
    db $2F,$F0,$EF,$29,$3A,$9A,$5F,$1C,$C5,$26,$55,$F5,$EF,$F0,$9B,$00 ; $C38C0A
    db $55,$C0,$00,$41,$F9,$9F,$35,$B6,$9F,$1F,$1D,$1D,$55,$AA,$C2,$49 ; $C38C1A
    db $F8,$20,$2F,$22,$1F,$02,$B2,$5F,$89,$0C,$1F,$32,$21,$DD,$76,$EF ; $C38C2A
    db $C9,$1D,$0B,$FC,$57,$E1,$71,$FE,$EE,$52,$62,$0F,$A0,$63,$81,$FF ; $C38C3A
    db $0A,$B8,$74,$F5,$EA,$FF,$DC,$6F,$1C,$FF,$0D,$F6,$FD,$2E,$FD,$3F ; $C38C4A
    db $3D,$67,$04,$00,$5F,$57,$C1,$FE,$47,$B8,$EF,$7F,$23,$DF,$EF,$07 ; $C38C5A
    db $5F,$54,$AB,$55,$AA,$E5,$02,$9F,$57,$40,$AF,$41,$FF,$EE,$0E,$11 ; $C38C6A
    db $DE,$EF,$DE,$2E,$1F,$57,$1C,$A9,$11,$EF,$20,$DF,$F7,$FF,$3F,$7F ; $C38C7A
    db $F8,$F8,$FB,$00,$6B,$1B,$08,$9C,$7F,$78,$78,$F7,$38,$24,$DF,$E8 ; $C38C8A
    db $17,$FB,$14,$EB,$FC,$13,$EC,$73,$8F,$78,$8F,$E0,$CE,$D6,$DE,$CE ; $C38C9A
    db $45,$1D,$4E,$DF,$AE,$2E,$44,$BB,$1D,$DE,$E3,$CC,$73,$91,$7E,$E0 ; $C38CAA
    db $7F,$CF,$70,$8F,$F0,$10,$9F,$39,$70,$BF,$39,$7B,$7B,$45,$7F,$47 ; $C38CBA
    db $9F,$7B,$8C,$63,$0D,$39,$7F,$8B,$39,$80,$09,$73,$8C,$E7,$7B,$E2 ; $C38CCA
    db $EE,$E2,$00,$FF,$AB,$1F,$40,$89,$E2,$3D,$EE,$3B,$0E,$CC,$37,$91 ; $C38CDA
    db $EE,$01,$E5,$3A,$CF,$35,$94,$EF,$F2,$E0,$03,$7F,$7E,$7E,$79,$7F ; $C38CEA
    db $F1,$04,$7F,$70,$8E,$88,$45,$BE,$BE,$38,$FB,$7F,$7F,$6F,$2E,$EF ; $C38CFA
    db $8F,$18,$9F,$3D,$FD,$2A,$BD,$BC,$EB,$BC,$57,$89,$7E,$C0,$7F,$72 ; $C38D0A
    db $0F,$00,$95,$18,$ED,$7A,$FA,$F7,$F7,$17,$63,$B7,$7F,$77,$77,$18 ; $C38D1A
    db $5D,$3B,$3B,$5F,$70,$8A,$65,$60,$0F,$E5,$C2,$77,$9E,$67,$F5,$23 ; $C38D2A
    db $DE,$30,$DB,$E7,$7C,$E2,$E6,$18,$7F,$23,$F8,$FD,$CE,$61,$F3,$9C ; $C38D3A
    db $46,$B7,$2E,$60,$F3,$BF,$E1,$B6,$F0,$5F,$03,$F3,$BE,$03,$F5,$FA ; $C38D4A
    db $0F,$F9,$01,$9A,$E9,$FD,$7D,$01,$0B,$7D,$3F,$02,$1D,$5C,$BC,$DD ; $C38D5A
    db $84,$0C,$1F,$02,$9A,$3A,$BC,$23,$F0,$0B,$1F,$08,$0C,$80,$0E,$CC ; $C38D6A
    db $20,$80,$20,$AF,$3C,$3A,$2A,$85,$79,$08,$78,$C5,$40,$94,$FF,$FF ; $C38D7A
    db $1D,$7D,$1F,$12,$1F,$10,$B2,$FE,$7D,$FF,$05,$C2,$7F,$AB,$FC,$57 ; $C38D8A
    db $D1,$2E,$7F,$BA,$0F,$CF,$75,$14,$EF,$18,$7F,$1F,$18,$7C,$DF,$18 ; $C38D9A
    db $1F,$00,$40,$7C,$5F,$C7,$C7,$75,$1F,$31,$FD,$60,$07,$00,$FD,$FC ; $C38DAA
    db $6B,$2B,$5F,$84,$C1,$C7,$0F,$D5,$DF,$9A,$C0,$4F,$1F,$D0,$02,$3E ; $C38DBA
    db $03,$1F,$1D,$1D,$C0,$C3,$C2,$01,$7F,$03,$FC,$53,$E1,$01,$1C,$C0 ; $C38DCA
    db $5F,$CF,$F8,$0F,$F5,$FE,$0F,$01,$5D,$D6,$05,$D4,$FF,$E3,$E3,$1F ; $C38DDA
    db $59,$3F,$0B,$3F,$9C,$FD,$01,$FC,$07,$81,$E3,$0B,$DF,$D7,$1E,$CF ; $C38DEA
    db $1D,$07,$DE,$80,$9E,$B6,$BE,$BE,$FF,$4F,$4F,$C0,$C7,$00,$3F,$F8 ; $C38DFA
    db $F8,$04,$FB,$3E,$C3,$06,$3C,$C7,$01,$4E,$80,$6D,$03,$F0,$EF,$70 ; $C38E0A
    db $E0,$B8,$07,$AC,$34,$C3,$32,$E1,$E1,$2F,$9D,$1E,$49,$00,$EF,$07 ; $C38E1A
    db $85,$9B,$06,$FD,$05,$C2,$81,$E1,$27,$CD,$E7,$AA,$E0,$67,$0F,$E8 ; $C38E2A
    db $FC,$FC,$41,$FF,$F8,$FF,$FB,$CE,$01,$9B,$AD,$86,$7D,$FC,$AF,$FC ; $C38E3A
    db $5F,$F9,$AF,$F8,$5F,$FB,$AC,$03,$AB,$03,$07,$03,$43,$D5,$FD,$AE ; $C38E4A
    db $A9,$BF,$3B,$22,$E2,$A3,$FF,$FD,$F6,$F6,$01,$9F,$F9,$05,$F8,$07 ; $C38E5A
    db $E0,$F3,$D7,$7F,$01,$33,$CD,$71,$10,$F7,$73,$F7,$80,$3E,$2E,$6F ; $C38E6A
    db $F5,$F5,$FB,$FB,$C5,$1F,$FC,$FD,$CB,$7B,$FB,$71,$9F,$CC,$F3,$20 ; $C38E7A
    db $CF,$F1,$1E,$E2,$1B,$EE,$35,$94,$EB,$7B,$9C,$0A,$7F,$77,$7D,$D2 ; $C38E8A
    db $65,$FD,$D8,$5F,$BF,$0A,$FD,$03,$C0,$7D,$8C,$77,$20,$FD,$B0,$5F ; $C38E9A
    db $B0,$CF,$75,$31,$15,$CF,$73,$90,$B0,$B6,$18,$BF,$DF,$D7,$E6,$2F ; $C38EAA
    db $FA,$FF,$D0,$DF,$AB,$74,$00,$F0,$63,$8F,$05,$4F,$00,$DF,$DD,$22 ; $C38EBA
    db $DA,$65,$10,$CF,$08,$91,$7F,$F6,$39,$25,$F2,$05,$7F,$7B,$07,$FF ; $C38ECA
    db $F3,$F7,$37,$FF,$DC,$04,$FF,$C3,$7C,$FB,$04,$FC,$FF,$18,$FD,$7F ; $C38EDA
    db $16,$C3,$FF,$98,$EF,$80,$1E,$BC,$7E,$EE,$03,$E0,$A0,$67,$EF,$6F ; $C38EEA
    db $A8,$1E,$EC,$DF,$7E,$0E,$AB,$7C,$D3,$69,$81,$1F,$6F,$BA,$4F,$DF ; $C38EFA
    db $BF,$05,$00,$06,$02,$FE,$A2,$42,$3F,$E5,$B3,$BF,$04,$AC,$5F,$1C ; $C38F0A
    db $A0,$5F,$E1,$1F,$01,$E5,$BA,$CF,$7A,$1A,$EF,$82,$14,$70,$FE,$37 ; $C38F1A
    db $20,$67,$72,$6F,$3F,$32,$DF,$7E,$28,$FF,$83,$3F,$B2,$07,$3F,$94 ; $C38F2A
    db $6F,$02,$7E,$C7,$09,$7F,$42,$1F,$E1,$70,$7F,$34,$45,$EF,$A8,$7F ; $C38F3A
    db $06,$03,$1F,$61,$27,$EF,$2F,$FF,$FC,$03,$5F,$00,$DF,$27,$F8,$2F ; $C38F4A
    db $F1,$DC,$EF,$01,$2B,$0F,$17,$82,$17,$21,$67,$40,$3F,$01,$FE,$17 ; $C38F5A
    db $E9,$1D,$7E,$8B,$E0,$E0,$C7,$EF,$31,$CE,$1E,$73,$18,$EF,$0B,$5F ; $C38F6A
    db $15,$0B,$FC,$17,$0A,$DF,$B2,$89,$DF,$F2,$BB,$21,$58,$E7,$3F,$FF ; $C38F7A
    db $64,$15,$81,$A0,$18,$3F,$B5,$3F,$10,$EF,$25,$7D,$7C,$4A,$BF,$30 ; $C38F8A
    db $AC,$BF,$1B,$6A,$EA,$7C,$BF,$A9,$C1,$08,$00,$FD,$A0,$DF,$83,$DF ; $C38F9A
    db $00,$EA,$E5,$16,$7F,$4F,$8A,$9B,$7E,$7F,$D1,$00,$C0,$BE,$BF,$7F ; $C38FAA
    db $6F,$11,$EF,$54,$FF,$66,$01,$43,$00,$9F,$FA,$6F,$B5,$6F,$BA,$42 ; $C38FBA
    db $EF,$97,$00,$BF,$8F,$8F,$D0,$C0,$E5,$1D,$EF,$EA,$EF,$15,$DF,$E0 ; $C38FCA
    db $7F,$05,$8E,$C0,$01,$DF,$85,$7A,$CA,$F5,$8F,$DF,$63,$5F,$30,$DA ; $C38FDA
    db $07,$5F,$BF,$54,$CA,$1F,$C0,$BF,$E3,$E3,$0F,$2F,$8E,$73,$1F,$3F ; $C38FEA
    db $01,$8B,$E1,$26,$87,$D9,$C1,$E3,$05,$EE,$2D,$FE,$5D,$BE,$89,$DE ; $C38FFA
    db $01,$F0,$01,$BF,$65,$2A,$EF,$AA,$4D,$9F,$0A,$F7,$5F,$00,$9F,$6F ; $C3900A
    db $B0,$EF,$30,$7D,$50,$01,$86,$FF,$31,$21,$1F,$07,$AB,$EF,$D1,$D1 ; $C3901A
    db $01,$70,$9F,$56,$3B,$A9,$88,$A0,$0B,$EE,$31,$CE,$31,$01,$0F,$D1 ; $C3902A
    db $03,$56,$FF,$09,$A4,$BF,$FC,$D7,$FA,$02,$70,$BF,$5F,$A2,$FE,$C6 ; $C3903A
    db $A0,$5F,$E0,$EF,$E8,$A0,$9F,$A2,$5F,$C6,$40,$3B,$5F,$E0,$3F,$22 ; $C3904A
    db $E8,$37,$9F,$FF,$0B,$3E,$3F,$F7,$04,$91,$FF,$A3,$FE,$D6,$54,$BC ; $C3905A
    db $FF,$F0,$01,$3F,$D6,$7B,$2B,$02,$3F,$E9,$18,$BF,$1D,$03,$1F,$07 ; $C3906A
    db $70,$5D,$01,$0F,$06,$0D,$60,$00,$01,$15,$04,$4D,$1B,$18,$E4,$06 ; $C3907A
    db $F9,$15,$0D,$F2,$1D,$0C,$FB,$08,$72,$49,$4C,$FB,$29,$54,$EB,$80 ; $C3908A
    db $7D,$0B,$00,$7F,$23,$7F,$7D,$43,$45,$C1,$3C,$BB,$DB,$BB,$60,$0B ; $C3909A
    db $FF,$7F,$A8,$23,$DC,$4F,$B2,$C1,$3E,$02,$1F,$00,$BF,$07,$71,$08 ; $C390AA
    db $E1,$31,$C1,$41,$01,$C1,$01,$AF,$FF,$1A,$F5,$B6,$F9,$61,$FE,$C0 ; $C390BA
    db $BF,$01,$FE,$01,$41,$BF,$AF,$53,$FF,$02,$5D,$79,$FD,$FE,$7D,$A2 ; $C390CA
    db $8E,$E3,$FA,$FF,$D4,$FF,$A0,$FF,$D0,$FF,$A8,$FD,$C2,$FE,$81,$F5 ; $C390DA
    db $CA,$FF,$C1,$0E,$68,$FF,$C0,$CC,$12,$59,$80,$EB,$30,$37,$08,$D4 ; $C390EA
    db $2B,$68,$07,$97,$C0,$3F,$A0,$5F,$03,$0F,$7F,$10,$EF,$F8,$83,$33 ; $C390FA
    db $E8,$FF,$F2,$8A,$03,$C0,$00,$03,$F8,$87,$F5,$4A,$E8,$97,$F2,$38 ; $C3910A
    db $4D,$E9,$23,$E8,$6F,$17,$03,$09,$ED,$0F,$1C,$01,$48,$03,$77,$A4 ; $C3911A
    db $48,$01,$21,$FF,$A3,$82,$33,$BB,$00,$27,$1F,$AC,$9F,$C1,$EA,$03 ; $C3912A
    db $55,$AA,$80,$C5,$17,$20,$77,$25,$AC,$9D,$93,$1F,$C7,$03,$01,$55 ; $C3913A
    db $AA,$9F,$07,$4B,$01,$06,$9E,$3E,$01,$0C,$6F,$F7,$02,$5F,$59,$DF ; $C3914A
    db $E4,$02,$5F,$05,$51,$11,$DB,$47,$C6,$06,$2D,$09,$F6,$03,$2D,$22 ; $C3915A
    db $DD,$68,$05,$00,$F5,$00,$1C,$E8,$00,$F2,$03,$EB,$62,$8B,$83,$DE ; $C3916A
    db $35,$CA,$18,$FD,$B2,$4D,$03,$B6,$49,$03,$51,$AE,$2A,$D5,$85,$7A ; $C3917A
    db $CE,$03,$39,$F7,$A1,$73,$55,$E2,$05,$AB,$EF,$55,$1E,$33,$04,$5D ; $C3918A
    db $60,$55,$33,$05,$FA,$49,$B6,$29,$02,$FD,$1F,$C7,$01,$0B,$60,$BE ; $C3919A
    db $12,$06,$00,$0E,$15,$80,$8C,$02,$F0,$65,$0B,$F4,$05,$FB,$03,$12 ; $C391AA
    db $EF,$48,$F7,$8C,$F3,$11,$23,$40,$BF,$4E,$9E,$BC,$70,$BF,$56,$8A ; $C391BA
    db $00,$47,$21,$E0,$3F,$CC,$80,$00,$BF,$40,$55,$AA,$8A,$75,$21,$DE ; $C391CA
    db $A0,$9F,$80,$00,$24,$0B,$00,$D0,$00,$FA,$00,$5F,$80,$7F,$24,$DB ; $C391DA
    db $D0,$2F,$0D,$DA,$25,$2B,$D4,$67,$0F,$5F,$01,$C9,$18,$40,$2C,$1F ; $C391EA
    db $89,$C4,$5B,$55,$AA,$1A,$1F,$EF,$E0,$E1,$10,$F2,$18,$44,$18,$A0 ; $C391FA
    db $18,$02,$18,$40,$1C,$00,$D8,$0C,$E5,$1A,$5C,$F2,$3B,$0D,$44,$BB ; $C3920A
    db $B0,$4F,$12,$ED,$5C,$A3,$08,$F7,$A1,$84,$16,$10,$51,$01,$1F,$C7 ; $C3921A
    db $63,$08,$A7,$A1,$5F,$11,$39,$10,$EF,$F8,$BF,$DC,$41,$C7,$07,$04 ; $C3922A
    db $40,$48,$00,$42,$64,$1F,$E5,$86,$5F,$44,$FB,$BB,$C0,$15,$E8,$17 ; $C3923A
    db $A5,$5A,$15,$50,$EA,$7F,$07,$00,$07,$13,$00,$05,$00,$AF,$28,$C6 ; $C3924A
    db $1F,$01,$18,$FE,$13,$EC,$99,$AD,$52,$0A,$6A,$95,$52,$AD,$38,$1F ; $C3925A
    db $EF,$19,$17,$E8,$BF,$73,$27,$03,$00,$2B,$2B,$2E,$D1,$6D,$92,$16 ; $C3926A
    db $E9,$0C,$09,$F6,$26,$D9,$03,$06,$1F,$F9,$28,$D7,$05,$8E,$3D,$FD ; $C3927A
    db $01,$82,$73,$48,$B7,$35,$9F,$01,$81,$EF,$81,$7E,$00,$5F,$E6,$03 ; $C3928A
    db $1F,$FE,$5F,$03,$5A,$A5,$54,$AB,$A9,$56,$1D,$19,$42,$BD,$4F,$FF ; $C3929A
    db $26,$01,$19,$4B,$EF,$1F,$E5,$80,$D5,$01,$C2,$9D,$F7,$31,$7F,$D5 ; $C392AA
    db $7F,$F1,$18,$5F,$F1,$19,$7F,$EF,$06,$01,$06,$DE,$FF,$09,$3D,$F6 ; $C392BA
    db $0A,$1F,$01,$74,$0A,$00,$85,$02,$F7,$07,$FF,$16,$FF,$45,$18,$FF ; $C392CA
    db $20,$FB,$5F,$0A,$F5,$5C,$01,$2A,$FE,$02,$FD,$03,$FC,$16,$E9,$45 ; $C392DA
    db $BA,$20,$DF,$F5,$7A,$79,$94,$2B,$F7,$B9,$33,$22,$F5,$0A,$62,$79 ; $C392EA
    db $1C,$19,$04,$19,$71,$02,$01,$40,$3E,$64,$6D,$5F,$94,$58,$35,$DF ; $C392FA
    db $55,$EC,$2F,$60,$3D,$FF,$60,$03,$7F,$81,$27,$24,$DF,$70,$9F,$28 ; $C3930A
    db $E5,$01,$7F,$80,$C3,$03,$7C,$02,$7C,$06,$7E,$02,$72,$07,$77,$0F ; $C3931A
    db $74,$1D,$01,$8F,$7C,$68,$61,$85,$FB,$83,$37,$FD,$82,$05,$1D,$07 ; $C3932A
    db $07,$4B,$7F,$FC,$99,$01,$90,$02,$D5,$21,$07,$2C,$E0,$30,$60,$FC ; $C3933A
    db $3A,$AD,$EC,$51,$FD,$0F,$DD,$3B,$27,$E0,$90,$23,$3C,$7E,$24,$2F ; $C3934A
    db $03,$5C,$3C,$15,$47,$34,$04,$00,$01,$74,$04,$64,$0C,$36,$CF,$F7 ; $C3935A
    db $18,$DF,$94,$EF,$C1,$84,$FF,$38,$84,$FB,$01,$FF,$00,$30,$A0,$30 ; $C3936A
    db $79,$5C,$C2,$80,$8F,$D7,$01,$1C,$00,$96,$00,$89,$00,$00,$A0,$DF ; $C3937A
    db $51,$EF,$C2,$BF,$0F,$FF,$8F,$7F,$EF,$09,$8A,$40,$FF,$03,$FE,$03 ; $C3938A
    db $FA,$02,$FA,$3A,$06,$06,$D1,$DE,$40,$00,$15,$DC,$38,$3F,$02,$5B ; $C3939A
    db $01,$E9,$7B,$2A,$FD,$07,$C0,$1F,$01,$1F,$11,$77,$E2,$72,$0F,$E1 ; $C393AA
    db $E1,$CF,$E1,$0F,$21,$AD,$21,$6F,$FE,$11,$EF,$89,$C0,$1F,$11,$FF ; $C393BA
    db $D1,$3F,$C0,$03,$31,$DF,$06,$00,$18,$06,$03,$08,$07,$20,$07,$03 ; $C393CA
    db $3A,$10,$06,$11,$67,$00,$D2,$3F,$05,$FF,$10,$41,$07,$C0,$0D,$37 ; $C393DA
    db $FF,$23,$E3,$0D,$C3,$39,$A1,$0F,$61,$18,$3D,$4F,$21,$03,$B7,$CD ; $C393EA
    db $0C,$7F,$DD,$91,$FF,$01,$51,$E4,$41,$02,$01,$77,$04,$F4,$0F,$00 ; $C393FA
    db $01,$04,$FF,$FC,$FE,$80,$0E,$7F,$80,$7E,$84,$28,$35,$06,$03,$FC ; $C3940A
    db $3B,$FB,$43,$31,$93,$F2,$5F,$C1,$11,$70,$E1,$01,$AB,$23,$47,$55 ; $C3941A
    db $8F,$24,$1F,$41,$3F,$0C,$EC,$6F,$E1,$00,$FE,$AB,$FE,$47,$FC,$8D ; $C3942A
    db $FA,$14,$35,$FB,$23,$33,$C7,$74,$83,$70,$94,$60,$8B,$70,$D4,$60 ; $C3943A
    db $C1,$7D,$E0,$7F,$7D,$7F,$44,$77,$F1,$0E,$63,$30,$FD,$1B,$C3,$5D ; $C3944A
    db $BE,$64,$9F,$1D,$FA,$90,$3F,$31,$3F,$20,$7F,$39,$6D,$A1,$15,$9D ; $C3945A
    db $93,$1F,$17,$91,$58,$B3,$EE,$24,$FF,$53,$EE,$A5,$5F,$6A,$BF,$5C ; $C3946A
    db $FF,$19,$EF,$9E,$80,$41,$02,$01,$04,$82,$08,$CC,$F8,$54,$08,$84 ; $C3947A
    db $68,$80,$58,$A0,$7F,$AE,$A1,$03,$1D,$C8,$37,$80,$81,$B7,$18,$FF ; $C3948A
    db $EE,$20,$2F,$40,$01,$30,$2F,$1F,$3F,$02,$01,$03,$00,$01,$30,$DF ; $C3949A
    db $41,$01,$20,$DF,$1E,$DD,$D7,$CC,$23,$80,$33,$70,$C0,$03,$81,$75 ; $C394AA
    db $C0,$78,$C0,$A3,$7F,$68,$80,$7B,$48,$FF,$35,$FE,$68,$C7,$7F,$BF ; $C394BA
    db $65,$05,$7F,$40,$63,$00,$C2,$61,$00,$03,$01,$05,$03,$09,$05,$11 ; $C394CA
    db $09,$A3,$1F,$BD,$D5,$EC,$19,$FE,$74,$09,$E3,$BF,$93,$1B,$EE,$E1 ; $C394DA
    db $0A,$DF,$05,$F1,$07,$FF,$D8,$7C,$DF,$11,$AD,$F5,$01,$01,$54,$AB ; $C394EA
    db $75,$19,$7D,$EE,$CE,$0B,$E9,$41,$09,$FE,$F1,$18,$DF,$20,$35,$0B ; $C394FA
    db $FF,$25,$90,$09,$55,$21,$00,$FE,$51,$FE,$29,$FE,$8B,$F4,$25,$67 ; $C3950A
    db $DA,$3D,$55,$1B,$01,$7A,$51,$A1,$A1,$40,$1C,$3A,$0F,$7F,$A3,$09 ; $C3951A
    db $77,$FA,$85,$01,$61,$E0,$9F,$40,$BF,$80,$FF,$28,$C7,$3E,$AA,$FF ; $C3952A
    db $06,$EE,$D1,$AA,$AF,$41,$90,$04,$0F,$04,$35,$EC,$61,$00,$91,$01 ; $C3953A
    db $55,$57,$13,$EF,$47,$FD,$08,$FF,$22,$C8,$1D,$7F,$BE,$FF,$15,$22 ; $C3954A
    db $FF,$2A,$3A,$67,$22,$77,$80,$29,$BE,$41,$15,$EA,$01,$2A,$D5,$0A ; $C3955A
    db $FF,$26,$FF,$0D,$BA,$1D,$97,$AA,$B9,$1C,$23,$21,$83,$1D,$51,$AF ; $C3956A
    db $7F,$EE,$61,$0B,$B8,$CA,$B8,$47,$57,$AB,$23,$DE,$2D,$FF,$A9,$FF ; $C3957A
    db $7F,$96,$AB,$54,$55,$AA,$22,$6D,$68,$8D,$53,$5F,$08,$46,$FD,$15 ; $C3958A
    db $FA,$BE,$DD,$87,$71,$20,$2D,$5E,$29,$2D,$9A,$03,$9D,$01,$9C,$35 ; $C3959A
    db $07,$69,$C6,$03,$41,$FE,$79,$2E,$AB,$FE,$78,$6F,$FF,$45,$7F,$C0 ; $C395AA
    db $3F,$9C,$7F,$2A,$7F,$D0,$7F,$E4,$7B,$D3,$7F,$EF,$90,$45,$BA,$35 ; $C395BA
    db $FF,$1C,$E3,$83,$50,$AF,$07,$60,$9F,$51,$AE,$C0,$6C,$E3,$5F,$65 ; $C395CA
    db $3B,$9F,$1A,$39,$D7,$28,$03,$85,$2B,$88,$7F,$1A,$C3,$FD,$95,$FA ; $C395DA
    db $5A,$E5,$70,$CF,$68,$D7,$31,$CF,$A3,$83,$F5,$C1,$7F,$01,$81,$05 ; $C395EA
    db $C0,$EF,$00,$DF,$8E,$DF,$23,$DC,$F0,$E3,$BE,$03,$61,$FE,$FF,$C4 ; $C395FA
    db $3F,$5D,$C7,$81,$08,$7D,$93,$00,$D3,$F3,$2D,$4D,$D2,$FF,$F7,$CE ; $C3960A
    db $41,$30,$0A,$9D,$B2,$FF,$20,$77,$FF,$1D,$9F,$60,$FF,$E0,$E0,$1F ; $C3961A
    db $1D,$1F,$DF,$5F,$60,$C6,$FF,$82,$FF,$75,$7C,$82,$FF,$C0,$60,$8A ; $C3962A
    db $E3,$DF,$55,$9F,$5F,$F5,$9F,$EB,$00,$5E,$56,$FE,$AE,$FF,$0F,$0F ; $C3963A
    db $E0,$3B,$4E,$DF,$14,$EB,$E0,$BF,$03,$01,$60,$0E,$95,$CF,$F0,$CF ; $C3964A
    db $70,$15,$8C,$DF,$7E,$60,$FF,$7D,$7D,$68,$45,$61,$81,$FF,$1F,$FF ; $C3965A
    db $7E,$F7,$C1,$3F,$BF,$79,$BC,$D6,$00,$1B,$B2,$4F,$B5,$14,$EF,$82 ; $C3966A
    db $1E,$8A,$40,$1E,$CD,$CD,$1C,$DC,$DD,$DD,$22,$CD,$CF,$98,$9F,$B1 ; $C3967A
    db $FF,$80,$80,$0F,$D7,$DD,$9E,$C1,$4E,$3E,$1F,$E3,$02,$5E,$06,$61 ; $C3968A
    db $BF,$54,$AB,$C3,$1F,$53,$89,$91,$27,$68,$1F,$18,$EF,$1D,$AE,$48 ; $C3969A
    db $1F,$BF,$BF,$B3,$C6,$0C,$7D,$95,$95,$01,$47,$78,$B8,$7D,$BD,$76 ; $C396AA
    db $3D,$AA,$3D,$F6,$DD,$EA,$C9,$5E,$01,$94,$04,$86,$FF,$CF,$DF,$C5 ; $C396BA
    db $A2,$5F,$17,$24,$41,$CF,$B2,$01,$CF,$55,$14,$0F,$01,$73,$FB,$D4 ; $C396CA
    db $92,$A0,$C1,$C1,$E6,$9F,$E1,$9F,$9F,$01,$F7,$F2,$2F,$F6,$5E,$80 ; $C396DA
    db $C1,$1D,$D6,$81,$7F,$C3,$4E,$1F,$90,$02,$CA,$3D,$25,$3F,$EF,$C7 ; $C396EA
    db $1F,$30,$3F,$81,$57,$15,$FE,$80,$7F,$EF,$F4,$15,$02,$EF,$01,$F2 ; $C396FA
    db $F2,$FE,$F6,$29,$DF,$EF,$54,$45,$EE,$1F,$07,$F2,$0F,$F6,$0B,$8D ; $C3970A
    db $00,$1F,$EE,$31,$EE,$B1,$5F,$EF,$F5,$08,$3F,$78,$5F,$D7,$7F,$09 ; $C3971A
    db $02,$89,$7F,$FE,$BC,$9F,$04,$1F,$57,$7B,$E9,$01,$1F,$A1,$91,$AA ; $C3972A
    db $E7,$04,$03,$55,$47,$F1,$BC,$04,$03,$1D,$1F,$D5,$3A,$00,$EA,$80 ; $C3973A
    db $A7,$FA,$00,$FD,$00,$3A,$FE,$55,$1D,$CD,$15,$D9,$53,$5D,$03,$00 ; $C3974A
    db $E8,$19,$3F,$A4,$EA,$80,$DF,$E2,$03,$FE,$20,$69,$C0,$F7,$03,$A9 ; $C3975A
    db $5F,$D2,$2F,$81,$7F,$06,$03,$84,$7F,$CC,$3F,$03,$5A,$E0,$92,$BF ; $C3976A
    db $BD,$21,$AA,$95,$00,$3B,$DF,$50,$AE,$1F,$40,$0E,$59,$21,$DE,$81 ; $C3977A
    db $9C,$B3,$07,$84,$E8,$5F,$55,$C0,$92,$1F,$04,$03,$94,$7B,$C0,$3F ; $C3978A
    db $09,$01,$A0,$5F,$12,$03,$10,$13,$3F,$BF,$20,$91,$73,$12,$EF,$01 ; $C3979A
    db $42,$99,$22,$DF,$08,$9D,$01,$A0,$BF,$C0,$00,$00,$E0,$00,$F0,$00 ; $C397AA
    db $F8,$00,$FC,$80,$7D,$FE,$04,$20,$9D,$04,$FF,$82,$7F,$01,$FB,$19 ; $C397BA
    db $49,$1F,$80,$FF,$24,$33,$03,$E4,$C3,$5D,$3F,$7F,$D5,$3F,$A7,$03 ; $C397CA
    db $59,$7F,$E7,$03,$5F,$00,$A0,$07,$5F,$87,$03,$4B,$FE,$80,$7F,$18 ; $C397DA
    db $20,$31,$EE,$15,$63,$EC,$EF,$F9,$51,$70,$DF,$27,$2E,$F8,$67,$15 ; $C397EA
    db $B8,$CF,$FF,$60,$F0,$DC,$E0,$88,$C3,$C0,$CF,$FF,$EE,$43,$00,$33 ; $C397FA
    db $60,$9F,$53,$90,$AA,$9B,$7E,$63,$CF,$49,$9F,$70,$01,$6F,$B0,$03 ; $C3980A
    db $0F,$F6,$07,$FA,$8B,$40,$95,$27,$86,$66,$AF,$72,$FB,$C0,$E0,$3D ; $C3981A
    db $CE,$7B,$82,$BF,$42,$3F,$17,$D9,$6A,$E7,$0E,$3A,$FC,$24,$FF,$90 ; $C3982A
    db $6F,$67,$42,$7D,$A2,$3D,$C7,$F8,$3E,$50,$DF,$5F,$00,$5F,$80,$C0 ; $C3983A
    db $9F,$90,$82,$80,$C2,$CC,$5C,$38,$B6,$E0,$00,$20,$E0,$A0,$7F,$30 ; $C3984A
    db $33,$FE,$3A,$E9,$80,$E0,$5B,$F8,$FC,$FB,$30,$FE,$F9,$07,$32,$CF ; $C3985A
    db $3A,$06,$D7,$76,$9B,$F5,$3E,$22,$07,$0E,$F9,$CF,$70,$1F,$88,$03 ; $C3986A
    db $9F,$30,$EF,$8F,$43,$02,$4B,$9F,$90,$1F,$B0,$36,$17,$F3,$0C,$2F ; $C3987A
    db $E2,$1A,$07,$21,$29,$5C,$EF,$E2,$E9,$EB,$0C,$0C,$CD,$4B,$0E,$0A ; $C3988A
    db $1F,$02,$FC,$E3,$FD,$03,$1F,$10,$1C,$10,$FB,$31,$61,$02,$83,$7E ; $C3989A
    db $0B,$A3,$B8,$80,$9F,$F0,$FF,$0C,$3F,$27,$1F,$E0,$9F,$F6,$0B,$EA ; $C398AA
    db $17,$FC,$FF,$78,$47,$F4,$CB,$EC,$5B,$F7,$CF,$00,$00,$FE,$02,$DF ; $C398BA
    db $33,$5E,$FD,$FE,$01,$DF,$FF,$96,$6B,$79,$02,$10,$1F,$FC,$5F,$9F ; $C398CA
    db $FD,$18,$9F,$E0,$38,$1F,$23,$2F,$21,$21,$77,$2F,$E1,$B7,$03,$00 ; $C398DA
    db $05,$23,$FD,$3F,$DF,$23,$31,$DF,$F1,$F9,$FD,$BD,$05,$E1,$18,$3F ; $C398EA
    db $33,$3F,$21,$4B,$37,$05,$01,$33,$CD,$2F,$39,$3D,$01,$B8,$05,$41 ; $C398FA
    db $60,$2E,$00,$82,$11,$13,$90,$12,$20,$70,$40,$00,$01,$20,$01,$00 ; $C3990A
    db $02,$41,$3F,$FD,$10,$D7,$F1,$B0,$3F,$20,$12,$74,$09,$0C,$42,$84 ; $C3991A
    db $00,$C1,$1A,$20,$C7,$00,$40,$E0,$91,$04,$5B,$20,$4C,$7B,$F8,$7F ; $C3992A
    db $C0,$06,$80,$C0,$20,$80,$20,$F4,$03,$7F,$42,$89,$40,$01,$DF,$20 ; $C3993A
    db $10,$80,$40,$07,$22,$80,$98,$0C,$9F,$9F,$11,$3E,$00,$06,$7D,$80 ; $C3994A
    db $7A,$80,$73,$2F,$5D,$82,$71,$79,$89,$E3,$60,$FF,$BE,$D5,$FD,$8F ; $C3995A
    db $7A,$9F,$72,$AD,$7B,$F5,$69,$D7,$A3,$5C,$7C,$06,$41,$8C,$42,$88 ; $C3996A
    db $04,$91,$A8,$E0,$D0,$24,$12,$AC,$B0,$06,$5C,$11,$AF,$01,$FF,$63 ; $C3997A
    db $05,$60,$80,$81,$32,$C7,$40,$1A,$81,$02,$28,$84,$50,$80,$64,$80 ; $C3998A
    db $83,$03,$47,$FC,$18,$82,$15,$50,$FF,$64,$60,$03,$48,$00,$40,$28 ; $C3999A
    db $E0,$96,$D0,$00,$A0,$B6,$1F,$71,$28,$1F,$D0,$56,$40,$55,$01,$3C ; $C399AA
    db $7C,$5C,$04,$7A,$0C,$54,$2D,$54,$2E,$54,$2F,$3C,$3E,$17,$44,$75 ; $C399BA
    db $8E,$34,$EF,$D4,$97,$F7,$86,$52,$B9,$BC,$23,$CF,$A4,$BB,$D5,$B5 ; $C399CA
    db $02,$3D,$50,$00,$B8,$14,$C0,$45,$40,$80,$13,$5D,$10,$B3,$75,$03 ; $C399DA
    db $01,$1C,$7E,$0C,$0F,$76,$5C,$01,$BA,$07,$77,$07,$7E,$02,$7C,$02 ; $C399EA
    db $3E,$02,$10,$EF,$FD,$F7,$87,$FD,$86,$FD,$85,$FA,$83,$A0,$29,$C3 ; $C399FA
    db $FD,$80,$01,$80,$07,$07,$86,$1F,$50,$9F,$58,$83,$00,$88,$47,$75 ; $C39A0A
    db $01,$40,$99,$16,$F9,$93,$EF,$60,$9F,$54,$FD,$23,$47,$05,$80,$1E ; $C39A1A
    db $01,$28,$07,$50,$01,$0F,$20,$1E,$40,$1D,$00,$38,$54,$A2,$F3,$FE ; $C39A2A
    db $B1,$23,$60,$1F,$38,$FF,$5B,$00,$3F,$C1,$31,$67,$E1,$2F,$E1,$0F ; $C39A3A
    db $DD,$03,$48,$C3,$2F,$21,$1A,$B8,$46,$FF,$0F,$FF,$79,$9F,$71,$DF ; $C39A4A
    db $D1,$FF,$B1,$DF,$51,$FF,$30,$14,$01,$98,$C0,$03,$E0,$67,$17,$31 ; $C39A5A
    db $06,$49,$2A,$02,$14,$C7,$9F,$C0,$61,$19,$17,$E8,$F9,$CC,$5D,$01 ; $C39A6A
    db $7B,$00,$3F,$61,$21,$AF,$21,$2F,$61,$EF,$D5,$41,$F1,$7E,$2B,$D5 ; $C39A7A
    db $3F,$58,$F9,$F1,$DF,$54,$F1,$0E,$C9,$9F,$80,$41,$C6,$F5,$80,$03 ; $C39A8A
    db $A5,$02,$80,$1F,$80,$3A,$80,$F5,$54,$C7,$7F,$DD,$D5,$12,$75,$49 ; $C39A9A
    db $85,$C3,$7F,$EE,$20,$48,$21,$94,$21,$00,$F1,$04,$E1,$08,$02,$03 ; $C39AAA
    db $A3,$08,$51,$20,$DF,$0E,$A1,$30,$0E,$FF,$B0,$FF,$A2,$C0,$09,$60 ; $C39ABA
    db $08,$80,$42,$80,$30,$00,$81,$DC,$F8,$04,$04,$01,$F4,$0C,$F7,$0F ; $C39ACA
    db $88,$FF,$42,$3C,$19,$F4,$47,$FB,$A0,$89,$10,$03,$A0,$01,$40,$FA ; $C39ADA
    db $01,$5F,$7F,$DF,$07,$4D,$7F,$CA,$DB,$AE,$FB,$00,$84,$60,$8E,$60 ; $C39AEA
    db $90,$06,$A0,$0D,$40,$1A,$80,$74,$81,$78,$04,$FF,$56,$E1,$AF,$7F ; $C39AFA
    db $8A,$FF,$44,$D4,$B5,$FF,$E6,$59,$C2,$09,$81,$65,$04,$AF,$01,$45 ; $C39B0A
    db $09,$07,$51,$07,$6B,$A4,$73,$61,$FE,$0E,$AC,$FB,$41,$FE,$B7,$38 ; $C39B1A
    db $A0,$AB,$82,$70,$0C,$81,$70,$83,$68,$39,$C1,$9D,$2A,$FF,$40,$A4 ; $C39B2A
    db $FF,$34,$FF,$B5,$27,$FF,$85,$05,$00,$00,$0D,$05,$0F,$0F,$1F,$00 ; $C39B3A
    db $18,$20,$0E,$21,$01,$05,$FA,$90,$01,$0A,$F5,$73,$1E,$81,$00,$01 ; $C39B4A
    db $5F,$7F,$0E,$0F,$76,$0E,$77,$38,$0E,$75,$03,$74,$5C,$0E,$21,$7D ; $C39B5A
    db $0E,$57,$EC,$FE,$F5,$86,$FD,$86,$F9,$84,$FF,$03,$70,$88,$F7,$7F ; $C39B6A
    db $80,$80,$38,$80,$6A,$00,$54,$00,$68,$EB,$B3,$47,$60,$03,$80,$B3 ; $C39B7A
    db $93,$6A,$AC,$C5,$56,$68,$65,$76,$C0,$FF,$73,$0D,$37,$8A,$01,$0C ; $C39B8A
    db $01,$03,$0C,$12,$EF,$F8,$F7,$82,$BB,$3B,$B1,$17,$07,$43,$84,$FB ; $C39B9A
    db $78,$77,$80,$3E,$00,$40,$02,$65,$9E,$7F,$A9,$02,$8E,$FF,$80,$11 ; $C39BAA
    db $16,$03,$0E,$06,$75,$2E,$A5,$FA,$29,$00,$C3,$7D,$00,$BB,$03,$FD ; $C39BBA
    db $14,$FF,$0A,$FD,$06,$FB,$14,$A0,$A7,$7C,$FF,$03,$BA,$FF,$E3,$27 ; $C39BCA
    db $01,$E1,$B7,$F7,$60,$BF,$6F,$21,$8F,$61,$C3,$01,$23,$FD,$DF,$AD ; $C39BDA
    db $BB,$EC,$FF,$3F,$76,$31,$FF,$C1,$01,$00,$7C,$00,$2A,$DE,$47,$A0 ; $C39BEA
    db $A0,$1A,$11,$00,$0A,$00,$17,$76,$7C,$B5,$55,$10,$2E,$8D,$11,$FA ; $C39BFA
    db $05,$16,$E5,$FF,$83,$6F,$01,$25,$2B,$21,$69,$E5,$2B,$61,$27,$79 ; $C39C0A
    db $25,$E9,$11,$E9,$43,$FD,$1B,$D0,$35,$51,$0E,$BF,$31,$FF,$61,$86 ; $C39C1A
    db $03,$81,$BF,$E8,$FF,$03,$64,$1C,$6C,$16,$74,$0D,$80,$BF,$4F,$5D ; $C39C2A
    db $0C,$14,$EF,$77,$F4,$0E,$B7,$86,$E3,$FD,$2E,$03,$C7,$5D,$BF,$AC ; $C39C3A
    db $F7,$03,$17,$00,$3F,$00,$3D,$01,$FD,$01,$71,$03,$A1,$04,$C1,$F9 ; $C39C4A
    db $03,$13,$B3,$5B,$99,$F5,$AC,$C5,$77,$A1,$C1,$31,$01,$FE,$1C,$7D ; $C39C5A
    db $0C,$1C,$CC,$37,$01,$7F,$03,$0F,$15,$EF,$FE,$F7,$85,$8A,$F9,$85 ; $C39C6A
    db $08,$43,$8F,$F6,$07,$81,$65,$EB,$01,$C5,$75,$01,$AB,$01,$43,$01 ; $C39C7A
    db $C7,$9F,$FF,$07,$F8,$A9,$FE,$6B,$FE,$C5,$FE,$AB,$FF,$43,$FF,$C4 ; $C39C8A
    db $FF,$9C,$6F,$80,$40,$84,$00,$80,$F0,$28,$05,$C1,$C5,$80,$5D,$80 ; $C39C9A
    db $3E,$DD,$B5,$E0,$B9,$B0,$7F,$45,$EF,$B8,$99,$45,$BF,$57,$0C,$FF ; $C39CAA
    db $33,$77,$21,$B9,$21,$18,$07,$29,$0B,$FD,$67,$09,$03,$21,$8B,$65 ; $C39CBA
    db $33,$CD,$37,$AB,$BB,$1C,$0E,$FF,$55,$FB,$13,$30,$FF,$81,$33,$5C ; $C39CCA
    db $81,$28,$18,$82,$50,$80,$45,$05,$81,$03,$2A,$07,$7F,$2E,$FF,$5C ; $C39CDA
    db $8A,$9F,$50,$87,$41,$2A,$3E,$6D,$00,$03,$2E,$2F,$81,$35,$61,$2F ; $C39CEA
    db $A1,$0D,$61,$6D,$A3,$EB,$25,$E7,$29,$E3,$E9,$03,$FD,$5F,$39,$39 ; $C39CFA
    db $03,$B1,$C0,$43,$95,$FF,$87,$0F,$38,$86,$0F,$03,$07,$80,$07,$C7 ; $C39D0A
    db $4F,$AE,$74,$0F,$0A,$53,$FF,$03,$FC,$01,$03,$FD,$43,$BC,$0A,$F5 ; $C39D1A
    db $D5,$14,$76,$63,$4F,$1D,$10,$FF,$A8,$5D,$35,$07,$72,$D5,$2A,$AA ; $C39D2A
    db $55,$20,$FF,$54,$FB,$10,$EF,$A8,$57,$D0,$2F,$A4,$FB,$1F,$7F,$7E ; $C39D3A
    db $8F,$E0,$3B,$1F,$84,$17,$30,$84,$0F,$01,$8C,$0D,$13,$10,$EC,$8A ; $C39D4A
    db $F5,$3B,$A9,$C7,$11,$FF,$09,$F7,$38,$4D,$8F,$74,$FF,$13,$E1,$FF ; $C39D5A
    db $D4,$B7,$7F,$00,$E3,$28,$D7,$74,$8B,$E1,$1E,$D4,$45,$2B,$8E,$7F ; $C39D6A
    db $30,$B8,$6B,$06,$FF,$0C,$AF,$B8,$8F,$08,$7B,$30,$5C,$CF,$30,$29 ; $C39D7A
    db $DE,$36,$F9,$9C,$F3,$28,$F7,$05,$FB,$08,$F7,$47,$61,$E1,$31,$E1 ; $C39D8A
    db $01,$71,$A1,$63,$03,$40,$A8,$49,$EA,$90,$F7,$DF,$E0,$03,$55,$DF ; $C39D9A
    db $FA,$81,$62,$A9,$B5,$D5,$EA,$EB,$55,$2C,$E7,$38,$12,$ED,$0F,$D7 ; $C39DAA
    db $20,$55,$AB,$5F,$3F,$07,$FF,$2F,$F1,$31,$E1,$80,$01,$01,$61,$FE ; $C39DBA
    db $F3,$70,$FF,$A0,$E4,$37,$BD,$55,$D7,$49,$08,$30,$7F,$01,$3F,$06 ; $C39DCA
    db $1F,$04,$0F,$00,$07,$00,$03,$BE,$CB,$7F,$08,$09,$FE,$06,$F9,$E2 ; $C39DDA
    db $45,$5C,$0F,$77,$71,$E1,$31,$05,$43,$01,$7F,$84,$01,$DF,$A0,$39 ; $C39DEA
    db $03,$47,$FD,$18,$7F,$03,$3F,$7F,$2F,$31,$31,$21,$0A,$00,$29,$21 ; $C39DFA
    db $0D,$E8,$C1,$3E,$F3,$30,$E4,$3F,$72,$C1,$10,$A9,$7F,$E9,$1D,$63 ; $C39E0A
    db $EA,$25,$0A,$F0,$3A,$FB,$1C,$5C,$59,$30,$31,$77,$2A,$91,$25,$E8 ; $C39E1A
    db $BF,$1D,$E3,$38,$12,$C7,$30,$CF,$92,$34,$00,$A8,$A8,$C1,$2B,$F0 ; $C39E2A
    db $00,$AE,$7F,$40,$C3,$8B,$B0,$FF,$58,$8E,$03,$40,$95,$87,$70,$30 ; $C39E3A
    db $03,$00,$FD,$02,$03,$E1,$01,$68,$B7,$DC,$70,$17,$03,$7F,$F0,$8E ; $C39E4A
    db $F5,$C9,$5D,$6D,$E5,$61,$17,$FF,$32,$C0,$1F,$FA,$02,$00,$02,$C3 ; $C39E5A
    db $00,$65,$FF,$3A,$A0,$57,$32,$CD,$1D,$FF,$5F,$03,$C6,$85,$21,$74 ; $C39E6A
    db $90,$B1,$C3,$A4,$03,$FB,$92,$3A,$40,$BF,$90,$6F,$C0,$3F,$A4,$5B ; $C39E7A
    db $C4,$03,$92,$6D,$A9,$BF,$A1,$C5,$EF,$08,$62,$CF,$7F,$5A,$17,$34 ; $C39E8A
    db $D7,$A9,$BF,$C8,$33,$C8,$04,$37,$FB,$82,$EF,$C8,$82,$0B,$5F,$C8 ; $C39E9A
    db $37,$04,$37,$82,$7D,$37,$07,$03,$CC,$04,$EB,$58,$05,$42,$27,$BF ; $C39EAA
    db $01,$EC,$9D,$00,$3F,$21,$DF,$5C,$7C,$0C,$0C,$7B,$74,$01,$01,$07 ; $C39EBA
    db $0C,$54,$EF,$FC,$F7,$56,$37,$63,$01,$8C,$F7,$F3,$18,$5F,$1C,$CE ; $C39ECA
    db $05,$3F,$74,$9E,$BF,$26,$3F,$FB,$01,$8B,$3C,$1D,$17,$3F,$5E,$B8 ; $C39EDA
    db $77,$00,$D7,$28,$2B,$D7,$0E,$FF,$31,$F1,$E3,$FD,$21,$47,$17,$3F ; $C39EEA
    db $E1,$7F,$17,$34,$EE,$0E,$15,$37,$CF,$EF,$D1,$2F,$D1,$F1,$1E,$80 ; $C39EFA
    db $E0,$20,$C0,$3B,$AB,$2B,$2F,$C8,$18,$38,$EF,$9C,$09,$7F,$30,$1F ; $C39F0A
    db $BF,$D2,$FF,$DC,$4C,$8B,$07,$42,$94,$6B,$80,$67,$AB,$3F,$70,$9A ; $C39F1A
    db $FD,$0A,$FF,$FA,$FF,$F0,$5C,$01,$62,$DC,$37,$23,$DF,$CF,$7A,$3D ; $C39F2A
    db $E2,$BA,$E5,$B0,$6F,$B5,$6E,$BB,$6F,$C4,$37,$AB,$FC,$43,$AF,$40 ; $C39F3A
    db $3F,$FF,$FE,$55,$AA,$D5,$54,$60,$AB,$F9,$AB,$DF,$55,$AF,$01,$FF ; $C39F4A
    db $57,$07,$1C,$16,$F9,$FE,$80,$06,$53,$D2,$4E,$62,$DE,$E3,$EE,$0E ; $C39F5A
    db $2A,$FB,$E0,$0E,$94,$F8,$EF,$CB,$AA,$9E,$43,$E5,$E3,$5E,$06,$FD ; $C39F6A
    db $D6,$2F,$A5,$5E,$0E,$FC,$F8,$FD,$5C,$3F,$8F,$6F,$09,$FF,$18,$FE ; $C39F7A
    db $DC,$AE,$7D,$07,$10,$FC,$03,$E8,$7F,$DC,$AB,$EF,$16,$E9,$1E,$DE ; $C39F8A
    db $31,$5F,$EB,$4E,$F3,$7F,$10,$F0,$01,$90,$7F,$1C,$B8,$7F,$A8,$6E ; $C39F9A
    db $B8,$40,$D5,$AA,$2A,$D5,$10,$EF,$45,$FF,$BA,$EF,$FF,$C7,$93,$F9 ; $C39FAA
    db $FF,$70,$BF,$A7,$03,$FB,$70,$05,$01,$FE,$91,$5C,$9C,$3E,$F3,$F9 ; $C39FBA
    db $7F,$BD,$4E,$1F,$EA,$53,$FD,$A7,$FF,$F7,$41,$92,$BF,$B8,$FF,$56 ; $C39FCA
    db $58,$49,$17,$B8,$4A,$57,$CB,$29,$1E,$1F,$17,$07,$1F,$24,$16,$EB ; $C39FDA
    db $1F,$FC,$26,$7F,$F7,$7E,$F7,$07,$7F,$4B,$F7,$78,$7F,$02,$00,$DC ; $C39FEA
    db $37,$03,$22,$DF,$C4,$7F,$2A,$FF,$01,$2B,$B6,$7F,$BE,$7D,$BE,$FB ; $C39FFA
    db $EF,$09,$BF,$07,$7E,$00,$06,$7F,$3F,$BE,$BE,$07,$3F,$7F,$BD,$18 ; $C3A00A
    db $0F,$7F,$03,$03,$01,$05,$55,$00,$7D,$45,$03,$01,$2C,$7F,$5F,$00 ; $C3A01A
    db $FF,$AF,$FF,$D7,$FF,$69,$FF,$B1,$56,$FF,$7F,$5C,$3F,$73,$5D,$AE ; $C3A02A
    db $AF,$56,$5F,$AB,$7D,$D7,$FB,$6F,$80,$68,$80,$70,$80,$74,$03,$88 ; $C3A03A
    db $00,$01,$72,$90,$F4,$E0,$1A,$68,$DF,$18,$70,$EF,$74,$03,$CF,$60 ; $C3A04A
    db $03,$DF,$62,$DF,$94,$6F,$0A,$F4,$04,$7F,$58,$3F,$A0,$FE,$06,$18 ; $C3A05A
    db $F9,$A0,$05,$7D,$80,$B9,$F5,$5F,$84,$6F,$82,$57,$85,$6C,$82,$4C ; $C3A06A
    db $8A,$08,$00,$7F,$75,$FB,$5F,$F1,$6F,$F8,$52,$FD,$6C,$FB,$40,$78 ; $C3A07A
    db $43,$27,$40,$EF,$80,$B7,$E4,$00,$F0,$A0,$46,$23,$44,$0D,$36,$44 ; $C3A08A
    db $00,$DD,$15,$70,$C0,$7F,$E4,$BF,$70,$BF,$86,$79,$01,$FE,$14,$EB ; $C3A09A
    db $CC,$1F,$B5,$53,$3F,$11,$80,$7E,$80,$62,$81,$70,$0E,$8B,$60,$A0 ; $C3A0AA
    db $77,$96,$FF,$15,$AD,$FF,$9A,$46,$47,$03,$3B,$5F,$00,$C7,$59,$A8 ; $C3A0BA
    db $FD,$01,$C1,$20,$CE,$31,$AB,$7D,$40,$ED,$01,$01,$0E,$80,$60,$80 ; $C3A0CA
    db $51,$3A,$03,$21,$C3,$E2,$E0,$E8,$11,$A2,$30,$60,$6F,$53,$44,$ED ; $C3A0DA
    db $73,$65,$14,$F1,$27,$33,$50,$C7,$3F,$72,$55,$BD,$54,$CD,$BD,$A1 ; $C3A0EA
    db $DD,$9B,$CE,$3F,$72,$E5,$4B,$54,$C4,$BD,$08,$70,$54,$AE,$EE,$BE ; $C3A0FA
    db $15,$2A,$02,$11,$5F,$AE,$1E,$CF,$01,$E5,$99,$1F,$8A,$CF,$79,$03 ; $C3A10A
    db $0F,$1F,$8A,$FF,$20,$3F,$E3,$5F,$91,$20,$43,$7B,$2E,$B2,$AB,$04 ; $C3A11A
    db $47,$1F,$2E,$7A,$3F,$2E,$E8,$99,$4A,$04,$8C,$9F,$18,$A1,$19,$01 ; $C3A12A
    db $51,$00,$03,$0B,$83,$08,$01,$03,$00,$05,$3B,$11,$A1,$F9,$FB,$B9 ; $C3A13A
    db $0B,$DC,$8F,$81,$03,$FE,$04,$19,$71,$5F,$33,$07,$8E,$3B,$01,$27 ; $C3A14A
    db $03,$07,$17,$01,$2B,$00,$95,$2E,$33,$06,$1E,$FF,$09,$FE,$27,$FE ; $C3A15A
    db $01,$FE,$16,$FF,$2B,$FE,$94,$03,$3F,$8E,$1E,$7D,$02,$13,$BF,$EC ; $C3A16A
    db $FE,$40,$DE,$00,$06,$1D,$FE,$02,$3F,$7F,$11,$D7,$1F,$C0,$9E,$06 ; $C3A17A
    db $1E,$80,$07,$1F,$3A,$3C,$7E,$D6,$FF,$2E,$01,$00,$7C,$3F,$24,$06 ; $C3A18A
    db $34,$0F,$7C,$0F,$11,$36,$DB,$D4,$68,$FD,$FB,$BD,$D3,$07,$14,$FB ; $C3A19A
    db $44,$FF,$8D,$DF,$02,$7F,$2D,$79,$A1,$D9,$7F,$15,$79,$A1,$D0,$7F ; $C3A1AA
    db $1C,$7F,$0C,$0E,$AA,$40,$3B,$0D,$6C,$0E,$64,$1F,$6F,$3A,$2F,$13 ; $C3A1BA
    db $FD,$7F,$49,$3B,$FB,$81,$D8,$A3,$87,$FF,$2A,$AB,$D6,$95,$FF,$00 ; $C3A1CA
    db $31,$A5,$03,$AA,$43,$5E,$DB,$A5,$A0,$3B,$AA,$FF,$43,$BC,$00,$11 ; $C3A1DA
    db $2F,$00,$1F,$CA,$01,$00,$E5,$BA,$00,$35,$00,$90,$03,$00,$29,$FF ; $C3A1EA
    db $13,$FF,$26,$FF,$6D,$FF,$92,$FF,$25,$FF,$90,$C6,$25,$03,$27,$0D ; $C3A1FA
    db $21,$4F,$A1,$0F,$03,$C7,$01,$8F,$5A,$C7,$C2,$02,$FD,$1F,$FF,$91 ; $C3A20A
    db $FF,$11,$61,$01,$31,$DF,$08,$D8,$5F,$00,$0F,$0C,$00,$0E,$18,$0C ; $C3A21A
    db $01,$68,$28,$1C,$3F,$57,$03,$8A,$18,$51,$F7,$01,$1C,$FF,$01,$37 ; $C3A22A
    db $CE,$FB,$FF,$21,$A1,$2F,$D4,$AE,$01,$2F,$1D,$23,$6B,$21,$A3,$21 ; $C3A23A
    db $EB,$E5,$EA,$35,$9F,$FF,$71,$40,$FD,$33,$DD,$31,$E8,$A5,$2E,$F1 ; $C3A24A
    db $FF,$51,$1F,$7C,$0C,$2D,$54,$0C,$54,$2C,$34,$6C,$44,$2C,$7C,$1C ; $C3A25A
    db $64,$0E,$1C,$E3,$DD,$F3,$D3,$3B,$24,$DB,$06,$03,$9C,$E3,$86,$FF ; $C3A26A
    db $4E,$8E,$80,$F5,$01,$BF,$01,$3B,$01,$3F,$01,$0E,$07,$03,$8F,$55 ; $C3A27A
    db $F4,$4B,$7E,$FF,$30,$AF,$FE,$A5,$2F,$FE,$07,$19,$FE,$8B,$FD,$FF ; $C3A28A
    db $04,$54,$80,$F9,$5C,$1F,$64,$C7,$34,$4C,$3F,$0E,$4F,$14,$EF,$F5 ; $C3A29A
    db $03,$FD,$85,$FB,$9E,$F3,$57,$AD,$FF,$5C,$88,$70,$F7,$01,$43,$11 ; $C3A2AA
    db $A1,$00,$C1,$10,$E1,$20,$C1,$50,$81,$A1,$01,$EB,$F1,$FE,$21,$FE ; $C3A2BA
    db $95,$AE,$39,$80,$B0,$3D,$EB,$D5,$C0,$5C,$84,$03,$88,$07,$90,$07 ; $C3A2CA
    db $0E,$E0,$18,$01,$F8,$5C,$20,$F8,$00,$9F,$F0,$1D,$07,$88,$FF,$DC ; $C3A2DA
    db $E9,$29,$1D,$23,$EF,$21,$63,$F9,$4F,$B8,$C3,$A6,$FF,$C3,$3F,$FD ; $C3A2EA
    db $FF,$06,$C0,$FF,$F4,$00,$E8,$00,$1D,$A0,$80,$40,$C8,$67,$2A,$80 ; $C3A2FA
    db $55,$1C,$0F,$7F,$54,$33,$76,$A0,$65,$74,$01,$80,$43,$55,$FF,$0D ; $C3A30A
    db $F7,$33,$7F,$21,$8E,$48,$37,$E1,$2F,$01,$03,$E1,$EF,$E1,$73,$CD ; $C3A31A
    db $AF,$D4,$8E,$FD,$F1,$DF,$71,$E0,$FF,$B1,$FF,$70,$D1,$FF,$04,$0D ; $C3A32A
    db $7D,$74,$03,$9A,$C1,$FF,$2C,$FF,$52,$85,$03,$0E,$C7,$FE,$F4,$F2 ; $C3A33A
    db $05,$F9,$00,$08,$A3,$11,$43,$21,$87,$21,$03,$74,$20,$03,$FF,$14 ; $C3A34A
    db $FF,$A9,$FE,$82,$84,$C7,$87,$FE,$47,$FF,$42,$3F,$07,$30,$FD,$74 ; $C3A35A
    db $0C,$6C,$00,$0C,$0C,$24,$34,$4C,$36,$CF,$F7,$A6,$37,$3F,$76,$8C ; $C3A36A
    db $47,$0D,$04,$FB,$41,$83,$33,$87,$03,$00,$05,$81,$73,$03,$D2,$07 ; $C3A37A
    db $07,$72,$83,$33,$18,$03,$3B,$05,$FE,$75,$0B,$9D,$A3,$4B,$00,$01 ; $C3A38A
    db $AC,$BB,$30,$02,$B4,$03,$7C,$00,$7A,$25,$00,$74,$0E,$1B,$02,$0E ; $C3A39A
    db $C1,$44,$FF,$1A,$B4,$6B,$37,$FF,$00,$21,$65,$0D,$A7,$07,$61,$0B ; $C3A3AA
    db $21,$57,$07,$A0,$C7,$F3,$ED,$7B,$DF,$95,$38,$FB,$51,$39,$19,$90 ; $C3A3BA
    db $FF,$60,$00,$0E,$54,$82,$40,$85,$8A,$64,$1D,$01,$54,$60,$5F,$57 ; $C3A3CA
    db $02,$A1,$73,$54,$5E,$AA,$FF,$8F,$98,$79,$01,$3D,$2F,$61,$33,$CD ; $C3A3DA
    db $3F,$DF,$F1,$02,$3D,$95,$01,$9F,$EF,$9B,$07,$39,$D0,$50,$00,$55 ; $C3A3EA
    db $C7,$50,$2E,$62,$FF,$C7,$A5,$80,$60,$A5,$10,$FF,$EE,$20,$02,$10 ; $C3A3FA
    db $29,$10,$21,$00,$21,$00,$03,$00,$23,$00,$01,$30,$2A,$DF,$08,$B0 ; $C3A40A
    db $F7,$03,$41,$22,$27,$60,$57,$37,$27,$74,$C0,$CB,$7F,$60,$F9,$07 ; $C3A41A
    db $7F,$AE,$FF,$0F,$01,$2F,$FF,$1F,$07,$E4,$FF,$1B,$EE,$FE,$06,$5F ; $C3A42A
    db $FF,$80,$09,$CF,$FF,$65,$7F,$01,$C2,$80,$61,$00,$A9,$00,$41,$08 ; $C3A43A
    db $07,$01,$03,$08,$05,$0A,$D5,$60,$BA,$81,$06,$AB,$7F,$C3,$7D,$70 ; $C3A44A
    db $81,$DF,$03,$7F,$08,$C8,$FF,$2E,$00,$10,$B8,$56,$07,$60,$0F,$01 ; $C3A45A
    db $1D,$01,$79,$01,$B9,$01,$F7,$1F,$15,$C0,$39,$0D,$FE,$69,$FF,$98 ; $C3A46A
    db $39,$FF,$75,$7F,$88,$E5,$C1,$FE,$E5,$91,$81,$DE,$0B,$B7,$83,$FF ; $C3A47A
    db $0E,$97,$F7,$93,$7F,$E0,$3F,$81,$7F,$62,$BF,$89,$7E,$66,$BD,$9B ; $C3A48A
    db $7C,$26,$F9,$B0,$7F,$68,$5A,$F7,$A8,$AB,$22,$73,$57,$F5,$31,$0C ; $C3A49A
    db $CF,$6A,$97,$D1,$2F,$AA,$57,$41,$BF,$A8,$57,$01,$0F,$BF,$1D,$95 ; $C3A4AA
    db $EF,$FE,$6B,$D9,$EA,$A2,$CF,$18,$21,$00,$A5,$7E,$00,$FE,$A9,$D4 ; $C3A4BA
    db $6B,$EA,$95,$C0,$3F,$70,$40,$21,$FF,$17,$B7,$65,$A9,$57,$77,$F3 ; $C3A4CA
    db $7B,$D3,$9D,$FD,$D5,$F2,$9F,$C1,$7F,$21,$E7,$F3,$70,$CD,$1C,$7B ; $C3A4DA
    db $18,$F7,$F8,$FF,$E7,$EF,$C3,$DF,$EB,$8A,$18,$A5,$3F,$0D,$10,$FF ; $C3A4EA
    db $0C,$E8,$B7,$E7,$5C,$83,$AA,$03,$D7,$BD,$73,$1D,$EF,$FB,$83,$53 ; $C3A4FA
    db $FC,$F3,$F2,$BF,$45,$8C,$00,$F5,$FF,$0D,$EA,$00,$B5,$9E,$7F,$A7 ; $C3A50A
    db $7F,$E1,$DF,$23,$C0,$11,$9F,$F4,$8B,$FA,$85,$B7,$DB,$FC,$3F,$0F ; $C3A51A
    db $A7,$99,$0C,$01,$78,$87,$FB,$C4,$8E,$00,$C7,$7E,$22,$DF,$F0,$2F ; $C3A52A
    db $DE,$3B,$30,$DE,$7D,$19,$09,$C9,$E9,$1D,$ED,$E9,$EF,$28,$C8,$81 ; $C3A53A
    db $46,$3F,$B3,$31,$E8,$1F,$01,$F2,$EF,$DE,$8C,$A1,$8B,$7A,$85,$7B ; $C3A54A
    db $E9,$00,$DE,$CB,$FC,$CA,$FD,$FA,$FD,$F2,$38,$FD,$E2,$03,$BF,$60 ; $C3A55A
    db $75,$43,$F5,$BF,$D7,$BF,$74,$CF,$07,$79,$A7,$DF,$BF,$4F,$11,$36 ; $C3A56A
    db $7F,$43,$A7,$3D,$00,$0F,$C7,$D3,$BF,$FB,$9F,$7E,$8F,$3B,$FE,$8B ; $C3A57A
    db $95,$96,$8B,$C3,$FC,$9B,$97,$EB,$CE,$03,$EE,$11,$62,$FD,$7E,$FD ; $C3A58A
    db $26,$03,$72,$03,$03,$70,$FF,$27,$DF,$1F,$E3,$00,$03,$7F,$CF,$27 ; $C3A59A
    db $DE,$7F,$CE,$67,$E2,$03,$AF,$E1,$EF,$7F,$EF,$0F,$DF,$7B,$BF,$37 ; $C3A5AA
    db $FB,$57,$E7,$3F,$D4,$AE,$85,$FE,$5C,$09,$76,$99,$76,$DD,$66,$FF ; $C3A5BA
    db $6C,$FF,$7C,$F3,$82,$FF,$DE,$FF,$3E,$11,$08,$77,$88,$01,$01,$B8 ; $C3A5CA
    db $7F,$B6,$47,$92,$3F,$DB,$98,$22,$6F,$AA,$EF,$FD,$C2,$03,$FB,$C6 ; $C3A5DA
    db $97,$E5,$E9,$8E,$C1,$EE,$91,$0D,$FB,$99,$E5,$53,$EC,$52,$ED,$5E ; $C3A5EA
    db $FD,$4B,$FF,$4D,$FB,$45,$97,$C0,$F7,$0C,$BD,$7F,$5F,$BF,$DF,$3F ; $C3A5FA
    db $D3,$EF,$DA,$75,$DF,$F7,$88,$AF,$5C,$6F,$30,$BF,$6F,$8F,$5F,$FB ; $C3A60A
    db $3F,$B7,$7B,$D7,$67,$BF,$7F,$01,$FE,$89,$F6,$01,$9B,$F3,$DF,$E5 ; $C3A61A
    db $FE,$ED,$FE,$99,$CC,$83,$CA,$C0,$9E,$31,$C5,$01,$01,$86,$0B,$31 ; $C3A62A
    db $26,$D7,$7F,$01,$71,$6F,$0B,$6F,$B0,$22,$92,$6E,$1E,$4F,$E6,$99 ; $C3A63A
    db $00,$B9,$E6,$17,$7F,$2F,$7F,$EE,$73,$FA,$FD,$F6,$7D,$B7,$FE,$F1 ; $C3A64A
    db $EF,$0E,$FB,$17,$EB,$2F,$D2,$B8,$37,$11,$77,$1B,$76,$29,$17,$C6 ; $C3A65A
    db $A6,$9F,$2C,$CF,$DF,$F5,$F9,$30,$CF,$11,$FE,$0F,$FF,$74,$AF,$46 ; $C3A66A
    db $BB,$86,$FB,$4F,$B7,$71,$CE,$35,$A1,$0E,$27,$A5,$6F,$2B,$B0,$E7 ; $C3A67A
    db $80,$02,$C3,$EE,$3E,$7F,$C8,$AA,$D5,$25,$0E,$FA,$2B,$F4,$9E,$C0 ; $C3A68A
    db $5F,$5E,$A3,$3C,$C3,$F9,$07,$E3,$E1,$F7,$F3,$F7,$61,$99,$F8,$18 ; $C3A69A
    db $FD,$C0,$00,$FF,$21,$DE,$A1,$60,$7E,$BB,$DE,$7D,$88,$F7,$01,$18 ; $C3A6AA
    db $EF,$F5,$BA,$F5,$7E,$FF,$D8,$F5,$A9,$FF,$33,$E9,$FB,$F1,$ED,$30 ; $C3A6BA
    db $01,$FD,$01,$3E,$F7,$DC,$03,$EF,$88,$FF,$C9,$BF,$AA,$03,$15,$D6 ; $C3A6CA
    db $AC,$77,$AC,$57,$A1,$FE,$01,$70,$2A,$2A,$95,$95,$AF,$AF,$DB,$DB ; $C3A6DA
    db $EF,$EF,$5F,$DF,$AE,$80,$47,$2A,$00,$95,$00,$AF,$80,$DB,$0C,$80 ; $C3A6EA
    db $6F,$00,$DF,$35,$EE,$3D,$FF,$EF,$01,$01,$83,$00,$AD,$76,$AE,$55 ; $C3A6FA
    db $06,$37,$AE,$53,$AE,$73,$07,$0F,$AE,$79,$BE,$51,$05,$B3,$1C,$99 ; $C3A70A
    db $00,$95,$82,$D2,$5B,$2B,$38,$FF,$56,$77,$6F,$E5,$03,$C3,$03,$03 ; $C3A71A
    db $55,$55,$AB,$AB,$76,$77,$DA,$DB,$F5,$F6,$AD,$C6,$74,$FD,$80,$AF ; $C3A72A
    db $55,$00,$AB,$01,$77,$01,$DB,$1D,$03,$F7,$02,$05,$AB,$15,$FB,$C3 ; $C3A73A
    db $9B,$FD,$D3,$FC,$52,$FD,$D0,$FF,$55,$DB,$D5,$7B,$00,$01,$35,$FF ; $C3A74A
    db $DF,$77,$FF,$F7,$5B,$E3,$2A,$5E,$73,$09,$01,$1E,$08,$FD,$FE,$04 ; $C3A75A
    db $5F,$75,$02,$A1,$ED,$5C,$FF,$F6,$FF,$10,$8B,$FE,$18,$FB,$FE,$DF ; $C3A76A
    db $31,$55,$FB,$0D,$D5,$FB,$15,$DB,$47,$98,$07,$35,$07,$FB,$9F,$61 ; $C3A77A
    db $FF,$01,$7F,$BF,$5F,$B9,$03,$05,$8B,$7D,$DF,$EF,$EE,$01,$04,$0B ; $C3A78A
    db $0F,$0D,$19,$07,$1C,$13,$37,$33,$5A,$2F,$BF,$9E,$DD,$02,$FE,$0C ; $C3A79A
    db $F9,$0E,$FA,$0E,$F0,$1F,$F9,$3C,$D4,$5F,$C7,$B6,$28,$A0,$A0,$70 ; $C3A7AA
    db $F0,$30,$B8,$B8,$78,$FC,$FC,$BA,$FE,$F9,$FF,$B9,$7F,$60,$5F,$B0 ; $C3A7BA
    db $1F,$70,$5F,$D8,$2F,$34,$CB,$76,$19,$1D,$FA,$E7,$39,$4E,$00,$97 ; $C3A7CA
    db $DF,$8E,$BC,$47,$5D,$6D,$EB,$31,$DF,$F7,$0B,$96,$D4,$71,$AB,$16 ; $C3A7DA
    db $A4,$3F,$DF,$45,$6E,$E0,$77,$B0,$98,$30,$A8,$17,$A7,$3D,$C0,$33 ; $C3A7EA
    db $FD,$FB,$77,$FB,$62,$06,$F7,$E7,$CF,$BD,$9F,$0B,$D7,$25,$1E,$D6 ; $C3A7FA
    db $39,$1E,$E9,$DF,$31,$DC,$2B,$FB,$16,$77,$49,$06,$F9,$CE,$39,$AA ; $C3A80A
    db $BF,$40,$2B,$F7,$31,$07,$48,$60,$5E,$92,$15,$50,$FF,$3E,$07,$48 ; $C3A81A
    db $19,$89,$DF,$A0,$3B,$03,$48,$84,$43,$8A,$3B,$50,$43,$3B,$43,$E9 ; $C3A82A
    db $19,$9F,$F7,$78,$01,$9D,$18,$9F,$0B,$47,$5F,$77,$B7,$AE,$C3,$17 ; $C3A83A
    db $E1,$07,$17,$0A,$D7,$3D,$C0,$03,$07,$FE,$02,$FF,$17,$39,$FE,$0A ; $C3A84A
    db $03,$F4,$19,$F0,$FF,$3B,$01,$0F,$3A,$00,$27,$C7,$3F,$17,$0E,$07 ; $C3A85A
    db $17,$0B,$A0,$35,$0F,$FE,$75,$26,$83,$3F,$16,$FF,$0F,$96,$03,$A5 ; $C3A86A
    db $D9,$00,$6A,$7C,$C8,$07,$3F,$08,$4E,$00,$CB,$97,$71,$01,$E6,$09 ; $C3A87A
    db $BF,$20,$20,$45,$10,$81,$38,$10,$18,$01,$18,$E7,$02,$1F,$20,$76 ; $C3A88A
    db $5F,$C7,$DF,$02,$B9,$01,$5C,$41,$E0,$09,$3F,$5C,$02,$3C,$02,$05 ; $C3A89A
    db $7E,$02,$72,$07,$77,$7D,$FF,$3D,$D4,$83,$15,$C1,$FF,$83,$FD,$82 ; $C3A8AA
    db $BA,$11,$81,$EA,$48,$C1,$00,$02,$E4,$B5,$9E,$62,$3A,$32,$CF,$E2 ; $C3A8BA
    db $41,$D1,$01,$01,$5C,$99,$B5,$03,$FD,$FF,$FE,$BA,$0E,$43,$EB,$1C ; $C3A8CA
    db $7E,$04,$0E,$BD,$77,$47,$0E,$C0,$FF,$14,$4C,$37,$0F,$1E,$E3,$77 ; $C3A8DA
    db $F6,$E2,$FB,$C7,$41,$8C,$7C,$FD,$83,$FE,$30,$02,$81,$7B,$02,$01 ; $C3A8EA
    db $15,$76,$01,$3E,$09,$01,$AD,$01,$5F,$F7,$07,$57,$37,$83,$1B,$FF ; $C3A8FA
    db $5D,$AF,$00,$5F,$9C,$42,$4C,$E2,$F2,$02,$0A,$EB,$83,$E8,$80,$7B ; $C3A90A
    db $80,$76,$BD,$80,$B9,$41,$FF,$07,$FD,$0A,$03,$F7,$FF,$8E,$1B,$FF ; $C3A91A
    db $36,$07,$25,$01,$7F,$81,$BF,$01,$2C,$0F,$C1,$CF,$E1,$0F,$D4,$38 ; $C3A92A
    db $C1,$7D,$39,$41,$E0,$3B,$11,$FF,$D1,$60,$3F,$7F,$E1,$DF,$80,$69 ; $C3A93A
    db $A8,$B7,$E0,$D8,$88,$60,$90,$0A,$60,$3F,$7F,$69,$FC,$1F,$BF,$25 ; $C3A94A
    db $81,$01,$3F,$C0,$27,$6F,$01,$BB,$35,$E0,$FB,$23,$21,$6B,$21,$AB ; $C3A95A
    db $02,$25,$ED,$E5,$66,$DB,$DF,$A9,$3B,$77,$21,$C3,$FB,$31,$FF,$D5 ; $C3A96A
    db $7B,$A4,$F0,$02,$0B,$11,$0A,$07,$02,$22,$BB,$8F,$FF,$9D,$3F,$9D ; $C3A97A
    db $9C,$7B,$F5,$0E,$30,$02,$7D,$0F,$77,$9D,$7A,$D2,$E8,$4A,$00,$51 ; $C3A98A
    db $E4,$50,$63,$91,$FD,$81,$01,$FF,$FC,$07,$F8,$D5,$4C,$1D,$51,$AF ; $C3A99A
    db $BA,$D1,$99,$E0,$FF,$81,$DF,$43,$80,$01,$A4,$FF,$BA,$B8,$65,$65 ; $C3A9AA
    db $F1,$4F,$E3,$1F,$96,$7F,$AA,$7F,$DC,$7F,$A0,$0F,$DB,$49,$23,$7F ; $C3A9BA
    db $38,$C9,$39,$1D,$F9,$44,$50,$ED,$70,$FF,$3B,$C7,$04,$52,$AF,$85 ; $C3A9CA
    db $7F,$58,$60,$03,$04,$F8,$06,$FA,$C7,$5D,$03,$03,$01,$5D,$80,$75 ; $C3A9DA
    db $85,$68,$F1,$59,$5F,$02,$D6,$61,$C3,$06,$75,$FF,$68,$D9,$7F,$EC ; $C3A9EA
    db $D8,$7F,$FE,$02,$45,$82,$71,$BB,$00,$70,$CD,$C8,$F9,$C0,$7F,$82 ; $C3A9FA
    db $7F,$FF,$D0,$00,$EC,$E3,$82,$07,$40,$84,$21,$80,$43,$30,$03,$07 ; $C3AA0A
    db $00,$83,$07,$23,$0E,$7F,$95,$77,$42,$73,$7F,$C1,$A9,$FC,$0E,$F5 ; $C3AA1A
    db $D6,$38,$1D,$F0,$03,$50,$01,$00,$01,$C0,$02,$A0,$97,$5E,$CC,$51 ; $C3AA2A
    db $AF,$E8,$E4,$8D,$02,$63,$97,$7F,$5E,$AD,$5E,$E8,$95,$5F,$DD,$00 ; $C3AA3A
    db $6B,$8B,$05,$F7,$02,$DF,$3A,$0E,$F2,$29,$DA,$FF,$9F,$1C,$1F,$19 ; $C3AA4A
    db $48,$55,$1F,$02,$E0,$1F,$FC,$07,$FD,$EB,$22,$61,$2B,$5C,$80,$1D ; $C3AA5A
    db $01,$00,$AB,$02,$2A,$F6,$97,$85,$DF,$00,$58,$7F,$AA,$B9,$77,$FF ; $C3AA6A
    db $F6,$FD,$97,$6A,$01,$A3,$02,$4D,$05,$07,$17,$2F,$AD,$5B,$39,$F7 ; $C3AA7A
    db $11,$1F,$5F,$3A,$3D,$1B,$E1,$07,$FA,$2E,$FD,$5B,$F6,$37,$DF,$1E ; $C3AA8A
    db $EF,$5D,$A7,$00,$7F,$FA,$03,$F6,$86,$70,$0A,$5F,$81,$77,$14,$80 ; $C3AA9A
    db $68,$FD,$5D,$30,$87,$7D,$0F,$F7,$9F,$F5,$60,$FE,$A9,$0A,$0A,$C0 ; $C3AAAA
    db $0E,$14,$38,$82,$BA,$9F,$70,$E1,$1B,$FF,$F5,$81,$7F,$43,$FD,$41 ; $C3AABA
    db $0F,$1F,$FD,$FE,$D5,$79,$74,$28,$5C,$01,$3A,$20,$80,$45,$80,$0A ; $C3AACA
    db $80,$1F,$7A,$7F,$D0,$FF,$28,$81,$8B,$20,$FF,$45,$D3,$A5,$85,$01 ; $C3AADA
    db $7A,$B5,$01,$48,$BD,$03,$3F,$0F,$03,$01,$01,$81,$01,$C1,$77,$A5 ; $C3AAEA
    db $B9,$0A,$D4,$80,$7D,$32,$FD,$01,$FE,$81,$FE,$C1,$10,$FF,$56,$AB ; $C3AAFA
    db $7F,$14,$F4,$0A,$FA,$5F,$09,$80,$05,$80,$1A,$10,$DF,$07,$5F,$D1 ; $C3AB0A
    db $0E,$6C,$8B,$85,$FF,$02,$06,$74,$3B,$00,$1F,$4F,$FC,$03,$1F,$06 ; $C3AB1A
    db $FB,$FF,$1F,$40,$BF,$35,$70,$80,$3D,$80,$78,$02,$70,$04,$A0,$0A ; $C3AB2A
    db $40,$54,$A0,$88,$85,$71,$1D,$7F,$30,$56,$AB,$81,$A0,$0A,$09,$05 ; $C3AB3A
    db $00,$28,$9F,$B6,$11,$AB,$5F,$03,$61,$5B,$7D,$F6,$06,$0E,$D0,$60 ; $C3AB4A
    db $03,$67,$F4,$2B,$FC,$18,$FD,$03,$7F,$FF,$0E,$C4,$5F,$0A,$54,$0E ; $C3AB5A
    db $1F,$02,$7C,$89,$0C,$60,$9F,$D1,$1F,$31,$1F,$74,$7D,$91,$95,$03 ; $C3AB6A
    db $FC,$8C,$9F,$E4,$3F,$1D,$17,$3E,$EF,$40,$18,$A1,$7F,$9F,$01,$57 ; $C3AB7A
    db $01,$81,$E5,$17,$00,$7F,$0B,$01,$00,$00,$83,$FE,$55,$FE,$75,$AB ; $C3AB8A
    db $51,$77,$7E,$3C,$83,$01,$75,$00,$38,$DD,$A9,$C2,$FF,$75,$A5,$0E ; $C3AB9A
    db $8B,$F5,$8C,$19,$00,$D0,$B8,$F1,$2F,$A0,$5F,$C2,$3D,$A5,$DA,$DE ; $C3ABAA
    db $71,$F5,$AA,$E8,$57,$40,$BA,$30,$CF,$80,$D0,$31,$84,$A2,$4F,$BA ; $C3ABBA
    db $E1,$FF,$12,$EF,$39,$CF,$82,$7F,$51,$AF,$86,$7B,$01,$D0,$CD,$B0 ; $C3ABCA
    db $EC,$6D,$A0,$99,$03,$80,$CB,$03,$8F,$B5,$CF,$CA,$3F,$B4,$DF,$C8 ; $C3ABDA
    db $3F,$B0,$5F,$C9,$3F,$90,$7F,$E1,$3F,$85,$06,$8D,$48,$BF,$A9,$70 ; $C3ABEA
    db $DF,$20,$E3,$03,$52,$A4,$09,$AA,$F7,$71,$FF,$73,$EF,$52,$5B,$E0 ; $C3ABFA
    db $AA,$76,$BF,$EA,$7D,$B8,$75,$AF,$7E,$B7,$ED,$B1,$FF,$60,$DF,$7E ; $C3AC0A
    db $E9,$7E,$F5,$2C,$BF,$E9,$03,$F8,$EB,$14,$01,$90,$25,$8A,$57,$BF ; $C3AC1A
    db $FE,$09,$9F,$EF,$5B,$6D,$FF,$8F,$7F,$F0,$9F,$7E,$C1,$FF,$BB,$3D ; $C3AC2A
    db $FC,$88,$49,$76,$D2,$DB,$0C,$6F,$90,$77,$EF,$01,$10,$01,$FF,$7D ; $C3AC3A
    db $82,$68,$97,$D2,$AD,$89,$17,$CD,$EF,$2D,$21,$C0,$15,$C4,$3B,$EE ; $C3AC4A
    db $38,$FD,$F6,$1F,$40,$41,$BF,$0D,$61,$D2,$8D,$E8,$CC,$AF,$FF,$01 ; $C3AC5A
    db $F8,$E9,$19,$C3,$43,$67,$DE,$37,$80,$86,$F3,$BE,$D3,$BF,$CB,$02 ; $C3AC6A
    db $FE,$33,$CF,$FD,$62,$07,$22,$97,$BC,$53,$8B,$80,$0F,$F1,$FF,$76 ; $C3AC7A
    db $C9,$FE,$BF,$E0,$30,$5F,$7C,$9B,$DF,$FD,$5E,$01,$FC,$5F,$F0,$8F ; $C3AC8A
    db $83,$FC,$F0,$44,$5D,$C0,$C0,$5D,$BF,$7F,$F3,$0F,$00,$E8,$2A,$4D ; $C3AC9A
    db $C0,$F9,$D5,$C0,$9D,$12,$77,$62,$01,$BB,$FE,$5F,$16,$1F,$61,$0F ; $C3ACAA
    db $C5,$7F,$FF,$0E,$1C,$53,$6D,$01,$01,$09,$EF,$D0,$7F,$8F,$8E,$F1 ; $C3ACBA
    db $DC,$C7,$98,$2C,$9C,$B1,$09,$C5,$00,$FB,$8D,$FB,$19,$E5,$13,$EC ; $C3ACCA
    db $16,$3A,$ED,$1E,$17,$17,$01,$18,$FB,$F7,$9F,$BF,$67,$DD,$FF,$DB ; $C3ACDA
    db $BF,$DF,$FB,$D3,$AF,$F2,$5D,$03,$E4,$3F,$7F,$7F,$F7,$03,$5F,$1E ; $C3ACEA
    db $A2,$F1,$04,$5F,$C4,$34,$61,$DF,$16,$7F,$03,$75,$7F,$20,$70,$20 ; $C3ACFA
    db $DF,$FE,$01,$03,$4C,$FD,$2F,$FF,$30,$A0,$2F,$03,$0F,$7F,$4F,$23 ; $C3AD0A
    db $FF,$0A,$C3,$D9,$7F,$89,$A2,$11,$E1,$FF,$F2,$F7,$7D,$B5,$FF,$E2 ; $C3AD1A
    db $FD,$0E,$FB,$7C,$87,$86,$0C,$2E,$FE,$EE,$19,$E2,$1B,$0F,$8C,$C7 ; $C3AD2A
    db $81,$27,$F5,$B8,$60,$EA,$FF,$DC,$6F,$1C,$FF,$0D,$F6,$FD,$2E,$FD ; $C3AD3A
    db $5F,$11,$E7,$6F,$EF,$7F,$84,$82,$80,$4F,$81,$FE,$47,$B8,$6F,$0B ; $C3AD4A
    db $BF,$5F,$AF,$10,$3F,$8F,$01,$04,$9F,$57,$FF,$0B,$FF,$5C,$BB,$EE ; $C3AD5A
    db $11,$1D,$DE,$EF,$DE,$81,$7F,$57,$A8,$0B,$F4,$01,$57,$56,$72,$BF ; $C3AD6A
    db $01,$CB,$00,$8F,$BE,$E1,$3E,$F1,$DE,$E5,$9E,$FB,$DD,$B7,$BB,$EF ; $C3AD7A
    db $B7,$DE,$AF,$7A,$D3,$07,$BE,$D4,$9D,$37,$FF,$FA,$0A,$A8,$A8,$95 ; $C3AD8A
    db $60,$80,$2B,$60,$26,$FB,$E0,$6F,$00,$9F,$78,$BF,$60,$7F,$C0,$FD ; $C3AD9A
    db $02,$2C,$E0,$1F,$7F,$CF,$62,$D5,$03,$8D,$81,$02,$8F,$FB,$D5,$2A ; $C3ADAA
    db $03,$78,$0F,$07,$00,$FE,$F5,$E9,$1E,$4F,$45,$BC,$9E,$01,$CB,$06 ; $C3ADBA
    db $05,$87,$FB,$43,$BD,$23,$DC,$92,$ED,$C8,$F7,$E5,$FB,$F1,$70,$41 ; $C3ADCA
    db $FD,$A3,$85,$3B,$BA,$2B,$CE,$0E,$7F,$E7,$3F,$FE,$A5,$EF,$55,$3A ; $C3ADDA
    db $D6,$F5,$5F,$01,$01,$AB,$54,$55,$AA,$02,$FD,$67,$0F,$52,$7F,$FF ; $C3ADEA
    db $04,$5F,$FF,$AF,$FF,$15,$C0,$0F,$F2,$1F,$F9,$0F,$5C,$04,$A7,$AF ; $C3ADFA
    db $53,$15,$EA,$85,$0F,$CF,$BD,$A9,$BB,$30,$DE,$D4,$0B,$C7,$DD,$DE ; $C3AE0A
    db $5A,$04,$93,$BB,$AF,$35,$1F,$0B,$EE,$60,$02,$4B,$BB,$7D,$A9,$C7 ; $C3AE1A
    db $04,$63,$F7,$DF,$31,$FC,$E9,$BB,$01,$DE,$31,$DF,$23,$FD,$2A,$AD ; $C3AE2A
    db $97,$3B,$B7,$4C,$0F,$EF,$69,$78,$3D,$7C,$11,$30,$0C,$1F,$07,$0F ; $C3AE3A
    db $B7,$70,$D8,$30,$58,$97,$47,$86,$23,$C2,$1F,$EE,$0F,$F0,$04,$FF ; $C3AE4A
    db $3B,$BF,$46,$9F,$03,$07,$7E,$FF,$7C,$FF,$78,$6B,$25,$8D,$FA,$15 ; $C3AE5A
    db $76,$49,$1F,$E3,$FC,$03,$FA,$07,$F4,$0F,$E8,$3F,$20,$FF,$52,$F7 ; $C3AE6A
    db $40,$AF,$62,$3B,$E8,$45,$55,$A6,$B3,$53,$29,$12,$D3,$D5,$FA,$04 ; $C3AE7A
    db $54,$1F,$01,$03,$FA,$02,$D3,$59,$03,$99,$33,$37,$04,$C0,$3D,$05 ; $C3AE8A
    db $82,$04,$86,$09,$0C,$0F,$7F,$A0,$CC,$09,$02,$1D,$0C,$FB,$0F,$F1 ; $C3AE9A
    db $54,$00,$7E,$00,$25,$00,$0A,$00,$57,$00,$2B,$AA,$F3,$CC,$FD,$03 ; $C3AEAA
    db $25,$EB,$BB,$9B,$57,$A7,$21,$F3,$CD,$D3,$19,$7F,$E5,$1E,$1F,$20 ; $C3AEBA
    db $3A,$5F,$6D,$FF,$44,$FD,$31,$5F,$00,$D2,$2D,$3A,$30,$F5,$B7,$88 ; $C3AECA
    db $00,$54,$C9,$17,$BD,$59,$B3,$C1,$9D,$88,$FF,$54,$C1,$1F,$BD,$42 ; $C3AEDA
    db $00,$2A,$47,$20,$21,$00,$8A,$5A,$F7,$AA,$E5,$03,$1D,$A1,$21,$EB ; $C3AEEA
    db $7D,$55,$98,$9F,$03,$01,$2B,$E3,$57,$AF,$8E,$03,$AB,$00,$03,$BF ; $C3AEFA
    db $00,$7F,$2B,$FE,$56,$FF,$77,$AE,$0E,$3D,$AA,$3B,$03,$BE,$1C,$55 ; $C3AF0A
    db $00,$BA,$33,$70,$AF,$03,$AE,$01,$44,$5E,$38,$4D,$BA,$33,$AF,$E3 ; $C3AF1A
    db $03,$AC,$B8,$1F,$8B,$EB,$4C,$33,$86,$08,$77,$08,$F5,$30,$C9,$01 ; $C3AF2A
    db $F5,$03,$E9,$05,$D3,$10,$75,$8E,$0E,$D3,$B4,$A8,$6D,$F5,$FE,$E9 ; $C3AF3A
    db $70,$FE,$0E,$72,$80,$77,$04,$F8,$3B,$04,$20,$C0,$83,$90,$04,$06 ; $C3AF4A
    db $40,$06,$FA,$03,$48,$F9,$FF,$04,$77,$AB,$C1,$5B,$02,$03,$00,$03 ; $C3AF5A
    db $10,$8C,$06,$08,$82,$E5,$41,$71,$00,$15,$02,$E6,$03,$FF,$12,$13 ; $C3AF6A
    db $03,$09,$82,$00,$04,$41,$10,$1F,$3F,$08,$02,$05,$A4,$9F,$01,$CE ; $C3AF7A
    db $37,$00,$B1,$42,$22,$81,$02,$11,$24,$30,$00,$32,$FA,$02,$3F,$28 ; $C3AF8A
    db $27,$80,$07,$3D,$7C,$0C,$AA,$7A,$F7,$9E,$C1,$00,$03,$6C,$0F,$30 ; $C3AF9A
    db $DF,$FA,$F7,$84,$3A,$FF,$85,$EE,$ED,$87,$00,$03,$8F,$F7,$FD,$03 ; $C3AFAA
    db $01,$FB,$00,$73,$A9,$77,$A9,$C7,$EE,$41,$8A,$01,$03,$FE,$2B,$FE ; $C3AFBA
    db $13,$7C,$6A,$40,$C7,$FC,$FC,$04,$2E,$54,$0E,$07,$36,$0F,$37,$4F ; $C3AFCA
    db $7E,$74,$A9,$3E,$02,$1C,$D4,$7F,$D6,$37,$00,$86,$FD,$07,$FB,$83 ; $C3AFDA
    db $FD,$81,$FF,$1D,$C3,$FD,$02,$FC,$77,$42,$15,$1D,$81,$AF,$FF,$48 ; $C3AFEA
    db $43,$02,$DE,$E2,$8A,$F7,$21,$C3,$7B,$FF,$AE,$53,$FD,$AA,$93,$C3 ; $C3AFFA
    db $B9,$F1,$7D,$FF,$07,$84,$37,$84,$66,$81,$44,$80,$0C,$80,$4C,$82 ; $C3B00A
    db $5C,$C0,$FC,$07,$FC,$35,$FF,$66,$FB,$40,$FD,$44,$DC,$00,$41,$D4 ; $C3B01A
    db $BF,$07,$AF,$41,$21,$CF,$EA,$64,$BF,$01,$07,$2F,$61,$06,$FD,$1F ; $C3B02A
    db $53,$01,$60,$01,$71,$DF,$02,$0C,$F8,$D4,$01,$80,$62,$0B,$53,$EF ; $C3B03A
    db $5F,$2A,$01,$78,$01,$79,$0B,$FE,$EF,$96,$FF,$54,$8E,$A9,$73,$FF ; $C3B04A
    db $31,$B3,$35,$08,$01,$EF,$E1,$0F,$90,$D3,$01,$F3,$AD,$2F,$55,$DF ; $C3B05A
    db $D2,$5E,$DF,$A5,$69,$D0,$DD,$35,$62,$C0,$05,$BF,$70,$BA,$C9,$82 ; $C3B06A
    db $5C,$FD,$70,$D0,$AF,$EA,$97,$C1,$3F,$93,$6F,$55,$AF,$B2,$4F,$C7 ; $C3B07A
    db $3F,$8C,$7F,$4B,$1C,$FF,$2A,$E8,$2B,$52,$E0,$F3,$26,$19,$E1,$DD ; $C3B08A
    db $E3,$AA,$D5,$55,$AB,$E0,$1F,$41,$BF,$82,$7F,$80,$03,$C4,$FB,$A8 ; $C3B09A
    db $F7,$C0,$FF,$8E,$F5,$03,$2C,$23,$02,$02,$DA,$00,$3F,$B4,$5F,$C0 ; $C3B0AA
    db $3F,$F0,$0F,$78,$44,$CF,$0A,$47,$02,$FD,$80,$87,$6F,$80,$00,$1F ; $C3B0BA
    db $7C,$00,$80,$02,$00,$02,$E6,$33,$67,$05,$7F,$C1,$FF,$7F,$C0,$0C ; $C3B0CA
    db $8E,$FF,$1E,$13,$3E,$00,$80,$7E,$80,$72,$80,$62,$80,$61,$30,$80 ; $C3B0DA
    db $42,$03,$62,$FD,$84,$3B,$FF,$2C,$EE,$1B,$22,$EC,$99,$47,$87,$5C ; $C3B0EA
    db $DF,$3A,$80,$3A,$68,$00,$8E,$E5,$81,$C6,$20,$00,$90,$9D,$4D,$3A ; $C3B0FA
    db $4B,$C3,$50,$A8,$65,$88,$E5,$2B,$90,$FF,$90,$79,$34,$80,$1A,$C7 ; $C3B10A
    db $C7,$2D,$03,$FF,$51,$A9,$DD,$D7,$00,$FF,$34,$FF,$1A,$FF,$C7,$BF ; $C3B11A
    db $FE,$E7,$7D,$5F,$6F,$A4,$9E,$C4,$80,$3B,$A1,$80,$E7,$9D,$00,$7C ; $C3B12A
    db $28,$1F,$8F,$7F,$E1,$C9,$BF,$7D,$5D,$D7,$E9,$40,$77,$15,$98,$F3 ; $C3B13A
    db $3C,$06,$87,$0D,$0E,$23,$02,$53,$8D,$D5,$A9,$88,$5F,$75,$06,$1D ; $C3B14A
    db $E1,$49,$E5,$FD,$BE,$BB,$60,$04,$F9,$81,$11,$01,$05,$70,$C1,$00 ; $C3B15A
    db $11,$4F,$80,$7F,$82,$F7,$11,$FE,$05,$FE,$38,$C1,$61,$4E,$A7,$0E ; $C3B16A
    db $5E,$1F,$70,$FB,$3F,$35,$7F,$78,$FF,$0E,$0F,$FD,$0F,$FF,$0F,$C2 ; $C3B17A
    db $3B,$1E,$EF,$3B,$E9,$D4,$55,$FA,$58,$F7,$EE,$F9,$05,$FA,$07,$FA ; $C3B18A
    db $80,$1F,$61,$0F,$91,$C7,$4D,$E1,$3B,$FF,$B0,$F0,$54,$F2,$F4,$F2 ; $C3B19A
    db $1E,$DC,$0B,$F5,$87,$7E,$41,$8E,$BE,$3B,$C4,$BD,$4F,$59,$AF,$F9 ; $C3B1AA
    db $AF,$FD,$04,$A3,$20,$98,$48,$A4,$DB,$5C,$C0,$2A,$E0,$05,$80,$07 ; $C3B1BA
    db $80,$12,$04,$FB,$20,$DF,$08,$F7,$9E,$39,$E4,$69,$12,$FF,$B8,$ED ; $C3B1CA
    db $FE,$08,$0C,$09,$04,$19,$05,$59,$09,$B9,$1F,$7F,$1D,$C1,$A9,$03 ; $C3B1DA
    db $1B,$01,$80,$E3,$51,$FE,$B9,$F7,$5E,$EB,$75,$41,$00,$2D,$80,$10 ; $C3B1EA
    db $81,$10,$88,$04,$90,$14,$90,$B8,$FF,$AC,$C9,$53,$10,$DF,$12,$05 ; $C3B1FA
    db $B8,$57,$A4,$C9,$41,$05,$8E,$44,$B5,$01,$2F,$17,$CA,$1F,$05,$E4 ; $C3B20A
    db $B5,$2F,$FF,$24,$16,$EB,$1F,$AA,$80,$F9,$00,$CA,$00,$A0,$0F,$C0 ; $C3B21A
    db $1F,$0F,$40,$3D,$80,$3A,$02,$9C,$39,$7F,$8D,$ED,$47,$3A,$87,$5F ; $C3B22A
    db $A0,$00,$F0,$01,$5A,$45,$01,$9F,$2E,$3F,$A0,$85,$2D,$48,$5A,$D3 ; $C3B23A
    db $A0,$00,$70,$C0,$70,$A0,$60,$40,$75,$F0,$A0,$5F,$FE,$02,$30,$3B ; $C3B24A
    db $DF,$50,$E0,$5F,$55,$BF,$F0,$8F,$FD,$AB,$0E,$27,$0A,$00,$A9,$99 ; $C3B25A
    db $BF,$02,$DD,$03,$55,$02,$8E,$47,$00,$A8,$99,$AA,$FF,$D2,$04,$FD ; $C3B26A
    db $5F,$A7,$FF,$FD,$28,$1F,$5D,$1C,$03,$00,$1E,$00,$1F,$00,$0E,$AA ; $C3B27A
    db $A1,$A8,$A9,$B3,$E3,$F9,$0B,$8E,$03,$54,$E8,$E6,$01,$09,$01,$03 ; $C3B28A
    db $63,$01,$67,$00,$EB,$80,$00,$03,$2B,$41,$07,$A1,$03,$09,$FE,$C0 ; $C3B29A
    db $F3,$27,$FE,$CA,$FF,$26,$AF,$3A,$85,$96,$BF,$52,$33,$06,$01,$F4 ; $C3B2AA
    db $00,$F8,$CF,$4B,$38,$02,$CA,$5F,$52,$E3,$33,$F4,$AE,$E9,$CF,$0E ; $C3B2BA
    db $36,$98,$FF,$33,$80,$FF,$79,$07,$87,$3F,$0C,$01,$7F,$01,$D3,$F1 ; $C3B2CA
    db $01,$A6,$9F,$FF,$00,$07,$F8,$1D,$FF,$91,$FF,$2E,$D7,$51,$FC,$9F ; $C3B2DA
    db $80,$38,$D7,$F0,$01,$03,$7F,$40,$BF,$F0,$04,$03,$00,$DF,$10,$FA ; $C3B2EA
    db $07,$96,$51,$11,$EF,$BC,$FB,$13,$03,$90,$A7,$FB,$3A,$07,$40,$B8 ; $C3B2FA
    db $17,$00,$90,$6F,$1D,$C0,$3F,$A0,$3B,$01,$07,$07,$3B,$A8,$57,$FF ; $C3B30A
    db $F5,$95,$04,$39,$80,$47,$A7,$B1,$02,$3B,$5F,$FF,$41,$F7,$1C,$DF ; $C3B31A
    db $74,$01,$38,$A0,$07,$01,$17,$0A,$00,$37,$00,$00,$E2,$B9,$2E,$19 ; $C3B32A
    db $12,$07,$FD,$24,$FB,$42,$FD,$80,$02,$1F,$0F,$00,$1F,$20,$0F,$20 ; $C3B33A
    db $B0,$1F,$09,$FE,$C0,$1F,$05,$FA,$5A,$F5,$77,$18,$00,$F6,$00,$84 ; $C3B34A
    db $F3,$00,$35,$F7,$00,$B6,$C3,$DE,$01,$BD,$02,$94,$EB,$22,$DD,$54 ; $C3B35A
    db $AB,$A2,$5D,$1B,$03,$AA,$55,$03,$00,$A1,$E0,$E0,$AA,$80,$D4,$80 ; $C3B36A
    db $2A,$EB,$F5,$C0,$C0,$5C,$08,$22,$14,$1F,$05,$2A,$CC,$17,$2B,$1B ; $C3B37A
    db $D5,$06,$2A,$A0,$DF,$C1,$BE,$03,$C0,$5C,$2B,$01,$55,$01,$AB,$F0 ; $C3B38A
    db $01,$03,$FE,$FF,$2B,$05,$D4,$55,$AA,$AB,$55,$80,$03,$A9,$F8,$22 ; $C3B39A
    db $1C,$5B,$C0,$37,$08,$5F,$08,$1A,$78,$03,$56,$07,$FD,$84,$A9,$56 ; $C3B3AA
    db $10,$33,$D9,$A6,$03,$02,$18,$EF,$D6,$AD,$2E,$57,$8B,$37,$03,$87 ; $C3B3BA
    db $AB,$07,$53,$0D,$A7,$19,$ED,$F1,$AB,$21,$55,$AB,$18,$37,$AB,$25 ; $C3B3CA
    db $51,$AF,$02,$A3,$5D,$C5,$3A,$BB,$75,$3A,$9D,$80,$30,$C0,$C0,$86 ; $C3B3DA
    db $F0,$D0,$F8,$09,$E8,$FC,$D4,$FE,$78,$2F,$C0,$00,$7F,$E0,$BF,$D0 ; $C3B3EA
    db $2F,$E8,$97,$D4,$7E,$6B,$18,$1F,$75,$EA,$23,$0C,$BA,$FF,$DF,$BA ; $C3B3FA
    db $73,$D7,$EE,$EB,$97,$03,$8F,$EA,$B5,$F5,$1A,$BA,$4D,$DF,$25,$AF ; $C3B40A
    db $56,$D7,$2E,$AE,$53,$D7,$2C,$81,$02,$5F,$50,$F8,$A8,$FC,$54,$22 ; $C3B41A
    db $5F,$FF,$00,$5F,$50,$BF,$A8,$5F,$54,$03,$AF,$BC,$7D,$A5,$65,$A4 ; $C3B42A
    db $35,$03,$7D,$03,$D2,$FF,$7F,$A4,$6C,$A4,$6D,$3D,$FE,$25,$FA,$35 ; $C3B43A
    db $EA,$2D,$D6,$35,$EE,$7F,$AD,$24,$FF,$2C,$D3,$BF,$FF,$52,$F6,$B2 ; $C3B44A
    db $F7,$17,$03,$08,$F2,$F6,$32,$77,$12,$FE,$EF,$3A,$E2,$1F,$F7,$1A ; $C3B45A
    db $01,$03,$F2,$5F,$77,$9A,$9A,$77,$B5,$31,$39,$10,$03,$7F,$01,$31 ; $C3B46A
    db $FF,$FF,$3D,$3C,$C3,$0C,$03,$43,$3E,$B8,$50,$E1,$15,$EE,$DB,$7F ; $C3B47A
    db $3E,$FF,$13,$F7,$30,$F7,$10,$03,$3F,$FF,$00,$E1,$E1,$7F,$9E,$93 ; $C3B48A
    db $7D,$75,$9A,$50,$82,$03,$67,$9E,$EB,$8B,$07,$FF,$ED,$89,$A7,$A9 ; $C3B49A
    db $7B,$D9,$7F,$B9,$7B,$F9,$FF,$69,$3B,$69,$2F,$68,$FF,$0D,$7B,$29 ; $C3B4AA
    db $DF,$5D,$AB,$39,$CE,$FD,$62,$29,$FE,$2D,$F2,$72,$E5,$5F,$0B,$5F ; $C3B4BA
    db $FF,$4F,$FF,$1D,$03,$42,$05,$42,$1F,$EF,$C3,$4F,$FB,$5F,$E5,$4F ; $C3B4CA
    db $BB,$7F,$C4,$4F,$BA,$69,$2B,$66,$33,$03,$49,$03,$29,$2F,$49,$01 ; $C3B4DA
    db $80,$3B,$2D,$D2,$29,$D7,$0D,$F2,$31,$2B,$D5,$07,$0B,$F5,$B1,$03 ; $C3B4EA
    db $33,$CF,$FF,$04,$03,$5D,$D8,$03,$33,$CF,$3A,$E0,$03,$38,$7D,$C6 ; $C3B4FA
    db $A3,$03,$B8,$03,$4E,$2A,$08,$88,$FF,$18,$A8,$0F,$77,$1D,$C0,$F3 ; $C3B50A
    db $DD,$FF,$83,$FF,$26,$DD,$0C,$E5,$1A,$3A,$CD,$03,$3F,$11,$C8,$8F ; $C3B51A
    db $78,$65,$20,$C3,$09,$E3,$F1,$EF,$E1,$E7,$F3,$EF,$E7,$EF,$FF,$EF ; $C3B52A
    db $2E,$00,$50,$3C,$FF,$1A,$F5,$F4,$EB,$E2,$5D,$F6,$AB,$EC,$57,$FA ; $C3B53A
    db $AF,$E6,$5F,$88,$33,$82,$03,$A8,$63,$03,$8D,$7A,$60,$33,$03,$DF ; $C3B54A
    db $20,$AD,$5A,$E3,$03,$DA,$53,$03,$34,$8E,$03,$AF,$87,$FB,$AF,$58 ; $C3B55A
    db $E7,$E6,$6E,$BF,$33,$03,$03,$1F,$A6,$FF,$F6,$0F,$1F,$03,$B6,$CF ; $C3B56A
    db $38,$41,$FF,$E8,$E8,$74,$AF,$80,$DB,$80,$36,$00,$FD,$80,$7A,$00 ; $C3B57A
    db $7D,$00,$2A,$00,$17,$17,$7A,$55,$71,$2E,$E2,$DD,$55,$2A,$AA,$D5 ; $C3B58A
    db $D5,$AA,$C0,$03,$20,$61,$6B,$41,$35,$78,$C1,$02,$03,$9E,$DF,$00 ; $C3B59A
    db $4B,$B4,$15,$EA,$4B,$B5,$15,$EB,$93,$03,$04,$95,$C7,$85,$FD,$7F ; $C3B5AA
    db $81,$01,$3D,$7F,$9D,$3F,$8B,$BE,$46,$3D,$86,$FE,$75,$FD,$6B,$FF ; $C3B5BA
    db $55,$FD,$6E,$3F,$F5,$9D,$7E,$1F,$0B,$91,$03,$BF,$FF,$1D,$01,$AF ; $C3B5CA
    db $FB,$2F,$86,$90,$6F,$BE,$F5,$BE,$EB,$BE,$C3,$BC,$E7,$BA,$4F,$C1 ; $C3B5DA
    db $09,$7D,$1F,$BD,$1F,$04,$03,$BF,$1F,$7F,$07,$03,$95,$BD,$42,$01 ; $C3B5EA
    db $03,$46,$7D,$97,$BF,$5D,$85,$07,$BF,$5A,$BF,$33,$F5,$03,$8F,$8E ; $C3B5FA
    db $03,$0F,$33,$03,$B6,$33,$DF,$06,$03,$F6,$8F,$86,$7F,$FF,$76,$06 ; $C3B60A
    db $03,$3C,$49,$2F,$06,$01,$09,$07,$F7,$0D,$F2,$0B,$F5,$9F,$02,$03 ; $C3B61A
    db $5D,$03,$A1,$BB,$03,$3D,$B7,$EF,$01,$03,$08,$7B,$3F,$04,$3B,$D8 ; $C3B62A
    db $1C,$3F,$B3,$BB,$1F,$F0,$05,$03,$91,$BB,$44,$F3,$04,$03,$2F,$9E ; $C3B63A
    db $B3,$04,$03,$37,$26,$DF,$B3,$BC,$04,$03,$37,$3F,$2F,$95,$DD,$77 ; $C3B64A
    db $C0,$44,$5F,$50,$89,$D4,$9D,$FE,$7F,$03,$63,$FF,$0F,$E5,$BF,$20 ; $C3B65A
    db $FF,$06,$B4,$77,$21,$DF,$B5,$FE,$43,$19,$62,$FF,$4E,$EF,$DF,$D0 ; $C3B66A
    db $3A,$5F,$50,$12,$9F,$54,$B8,$77,$FF,$D1,$6F,$CE,$5F,$51,$93,$FF ; $C3B67A
    db $55,$AF,$BB,$FC,$70,$C0,$00,$E0,$00,$F0,$00,$F8,$00,$FC,$80,$FE ; $C3B68A
    db $00,$AE,$BB,$03,$20,$B1,$81,$60,$7D,$82,$7F,$01,$F8,$19,$7F,$95 ; $C3B69A
    db $08,$DF,$40,$B9,$FF,$FF,$A4,$D1,$E3,$14,$42,$1F,$C3,$2E,$FF,$A4 ; $C3B6AA
    db $1E,$5B,$AF,$FB,$04,$5F,$77,$00,$3E,$ED,$04,$5F,$60,$02,$0E,$EA ; $C3B6BA
    db $76,$78,$3F,$38,$FF,$1F,$37,$10,$0E,$23,$23,$EF,$61,$F0,$2A,$57 ; $C3B6CA
    db $B9,$07,$30,$DF,$1D,$E2,$E9,$00,$55,$23,$FC,$61,$BF,$DF,$EF,$11 ; $C3B6DA
    db $1E,$1E,$FE,$E6,$B3,$33,$89,$45,$E0,$07,$CC,$FF,$1E,$3A,$FF,$FC ; $C3B6EA
    db $8C,$B9,$1F,$EF,$18,$FE,$EF,$FC,$1F,$00,$05,$77,$EF,$D5,$4F,$41 ; $C3B6FA
    db $D9,$11,$00,$01,$EF,$10,$AA,$55,$41,$BE,$26,$04,$FB,$0F,$A3,$1F ; $C3B70A
    db $04,$9E,$21,$04,$1F,$DA,$1D,$21,$40,$0D,$74,$04,$F4,$0C,$81,$01 ; $C3B71A
    db $04,$FC,$A0,$00,$DE,$84,$E4,$2B,$87,$01,$FC,$FB,$F1,$23,$7F,$E1 ; $C3B72A
    db $51,$1F,$2E,$20,$2F,$40,$01,$30,$2F,$1F,$3F,$81,$1E,$30,$DF,$20 ; $C3B73A
    db $01,$20,$DF,$1E,$F3,$3D,$5F,$55,$BA,$F9,$00,$EE,$13,$F8,$FF,$3B ; $C3B74A
    db $07,$00,$69,$2D,$02,$8F,$13,$55,$55,$19,$72,$1F,$11,$B9,$38,$51 ; $C3B75A
    db $AA,$11,$AA,$E7,$01,$5F,$55,$67,$AB,$55,$3D,$07,$18,$1F,$35,$15 ; $C3B76A
    db $29,$00,$6B,$25,$1B,$1E,$3A,$AA,$1D,$1F,$B2,$1B,$4F,$A1,$10,$7A ; $C3B77A
    db $FF,$14,$1F,$C7,$E3,$AA,$96,$01,$1F,$AA,$79,$9D,$1D,$1F,$00,$37 ; $C3B78A
    db $E3,$BC,$16,$7F,$12,$1F,$AA,$A3,$1B,$55,$F4,$03,$9F,$79,$7B,$EF ; $C3B79A
    db $22,$1F,$35,$8E,$7F,$AB,$77,$A0,$BC,$8F,$4E,$A0,$9E,$C7,$F0,$B2 ; $C3B7AA
    db $2F,$A0,$07,$5F,$C8,$37,$A0,$DF,$53,$C7,$C0,$03,$00,$FA,$00,$F7 ; $C3B7BA
    db $79,$04,$03,$2D,$FA,$D5,$3F,$3E,$04,$FB,$03,$9E,$C3,$79,$33,$07 ; $C3B7CA
    db $03,$3F,$D5,$BF,$F7,$01,$03,$D6,$08,$BD,$07,$33,$20,$DF,$AE,$02 ; $C3B7DA
    db $3F,$5A,$5F,$20,$4E,$20,$1C,$E0,$6A,$10,$75,$08,$7B,$04,$7C,$03 ; $C3B7EA
    db $7F,$02,$85,$FA,$9A,$F5,$5F,$5D,$BB,$30,$D4,$AB,$03,$7A,$84,$05 ; $C3B7FA
    db $03,$F9,$57,$0B,$AB,$0F,$FB,$31,$01,$1F,$7B,$FB,$3F,$71,$51,$AF ; $C3B80A
    db $03,$FF,$57,$AA,$AF,$51,$5F,$AA,$BF,$48,$DE,$7B,$9F,$78,$D8,$31 ; $C3B81A
    db $01,$7A,$03,$B8,$61,$76,$07,$6E,$0F,$5E,$1F,$3E,$3F,$FE,$FF,$D7 ; $C3B82A
    db $A8,$33,$D6,$AF,$AC,$70,$DF,$DC,$BF,$BC,$F3,$FE,$E3,$7E,$43,$BA ; $C3B83A
    db $7F,$79,$E4,$B3,$14,$03,$F9,$03,$18,$3F,$E8,$7D,$06,$28,$7D,$60 ; $C3B84A
    db $DA,$03,$FD,$4A,$FE,$09,$33,$F7,$48,$EF,$FD,$BD,$AB,$01,$D4,$FD ; $C3B85A
    db $AC,$FD,$C4,$FD,$84,$C0,$03,$FF,$EC,$FD,$52,$60,$AE,$79,$2B,$AD ; $C3B86A
    db $52,$EC,$18,$17,$95,$6A,$03,$EF,$EF,$00,$6D,$FF,$AB,$FF,$25,$FF ; $C3B87A
    db $23,$EF,$52,$01,$03,$E1,$EF,$3B,$6D,$93,$AB,$75,$35,$CB,$67,$99 ; $C3B88A
    db $9B,$65,$00,$03,$84,$FF,$FC,$FD,$08,$94,$F7,$D4,$F7,$5C,$03,$A0 ; $C3B89A
    db $FC,$FF,$0F,$0F,$97,$EC,$F8,$7F,$97,$FC,$F6,$19,$95,$FA,$F6,$1D ; $C3B8AA
    db $E5,$FE,$08,$F7,$33,$21,$A2,$03,$21,$AB,$DF,$02,$33,$65,$9B,$19 ; $C3B8BA
    db $03,$45,$44,$70,$BB,$DD,$EF,$EE,$FF,$77,$FF,$3E,$7F,$3F,$BF,$3F ; $C3B8CA
    db $C0,$99,$FF,$37,$FF,$35,$FD,$30,$EE,$93,$93,$5E,$A1,$BF,$00,$70 ; $C3B8DA
    db $7F,$B8,$BB,$54,$77,$AE,$BD,$DD,$EA,$95,$EB,$AB,$2E,$2D,$FF,$04 ; $C3B8EA
    db $07,$D5,$FF,$AA,$57,$AC,$41,$EE,$B0,$4C,$15,$07,$D5,$2B,$34,$0C ; $C3B8FA
    db $FE,$B4,$FD,$F4,$03,$BD,$33,$B4,$BE,$07,$B4,$8B,$0B,$76,$97,$AD ; $C3B90A
    db $BC,$77,$D6,$ED,$BC,$F7,$16,$ED,$D8,$B7,$96,$ED,$98,$F7,$EB,$FF ; $C3B91A
    db $75,$FF,$3B,$50,$DB,$1F,$0E,$FF,$17,$FF,$13,$F5,$31,$EB,$70,$95 ; $C3B92A
    db $75,$CB,$3B,$E5,$5D,$B3,$2C,$DF,$56,$BD,$BB,$CC,$4B,$BB,$1E,$F5 ; $C3B93A
    db $60,$7F,$01,$D5,$7F,$F0,$7F,$52,$D1,$03,$E3,$7F,$B4,$7F,$D0,$77 ; $C3B94A
    db $D8,$5F,$F0,$72,$DD,$5B,$F4,$72,$9D,$5B,$B4,$D4,$05,$FB,$FF,$B1 ; $C3B95A
    db $EF,$A1,$20,$03,$01,$F5,$01,$AB,$F9,$07,$B5,$EB,$B9,$47,$A8,$07 ; $C3B96A
    db $03,$67,$07,$90,$7F,$91,$7F,$90,$B0,$01,$01,$A3,$14,$FB,$3B,$07 ; $C3B97A
    db $D4,$54,$AB,$7A,$85,$01,$03,$95,$54,$BB,$EE,$7F,$0C,$33,$00,$C1 ; $C3B98A
    db $EB,$C1,$B1,$03,$FF,$C0,$3F,$A9,$F7,$DF,$FF,$0C,$E9,$97,$91,$EF ; $C3B99A
    db $03,$11,$01,$EF,$BD,$FF,$C9,$2F,$E9,$2F,$66,$03,$01,$22,$BF,$3F ; $C3B9AA
    db $9B,$B3,$18,$03,$2B,$96,$C3,$DD,$EF,$FB,$B3,$02,$03,$B7,$AD,$52 ; $C3B9BA
    db $B3,$FD,$58,$46,$03,$D2,$06,$FF,$15,$00,$7F,$40,$B4,$1C,$DE,$7F ; $C3B9CA
    db $E6,$C3,$70,$EE,$7F,$D5,$EA,$B8,$68,$80,$BF,$FF,$B5,$5E,$E1,$66 ; $C3B9DA
    db $9D,$55,$AE,$6E,$95,$13,$9E,$77,$EF,$55,$75,$3B,$57,$5D,$3F,$00 ; $C3B9EA
    db $55,$AA,$AA,$55,$FF,$EE,$17,$ED,$20,$EF,$56,$03,$B8,$39,$FF,$B8 ; $C3B9FA
    db $55,$07,$03,$FA,$44,$07,$74,$67,$BD,$CA,$30,$DF,$30,$03,$DD,$32 ; $C3BA0A
    db $FA,$01,$8D,$FD,$5A,$FE,$A9,$F6,$DF,$2A,$2C,$BD,$03,$D1,$00,$4C ; $C3BA1A
    db $B3,$14,$03,$26,$03,$0D,$02,$FF,$08,$FB,$01,$5B,$9C,$90,$00,$3F ; $C3BA2A
    db $0C,$A3,$5C,$58,$AF,$F1,$FD,$74,$56,$8C,$A0,$42,$FC,$A7,$7A,$87 ; $C3BA3A
    db $11,$07,$7B,$03,$00,$63,$AB,$FF,$F1,$FF,$A9,$E0,$1F,$04,$FB,$82 ; $C3BA4A
    db $63,$FD,$57,$FC,$03,$03,$85,$F0,$0F,$A8,$57,$A5,$AE,$5F,$2A,$EE ; $C3BA5A
    db $63,$F6,$80,$7F,$9F,$FF,$95,$84,$2D,$7E,$04,$18,$F7,$07,$9B,$6E ; $C3BA6A
    db $0B,$57,$6E,$AC,$D3,$52,$B7,$55,$70,$C1,$C5,$03,$AB,$5A,$03,$92 ; $C3BA7A
    db $B7,$55,$EB,$E1,$BE,$E3,$57,$A9,$AB,$55,$7E,$7F,$44,$7D,$40,$7D ; $C3BA8A
    db $23,$03,$C4,$80,$03,$FE,$81,$EC,$93,$D1,$51,$AE,$03,$97,$B3,$EB ; $C3BA9A
    db $03,$79,$B3,$F3,$21,$C0,$01,$03,$31,$FF,$78,$87,$9A,$14,$65,$64 ; $C3BAAA
    db $9B,$03,$62,$75,$03,$BA,$55,$28,$B3,$70,$75,$03,$71,$1F,$71,$B9 ; $C3BABA
    db $03,$DF,$54,$00,$BF,$75,$9B,$BF,$40,$71,$9F,$BD,$63,$43,$07,$FE ; $C3BACA
    db $3F,$E8,$02,$BB,$82,$01,$FF,$D4,$31,$BF,$2F,$03,$76,$AF,$8E,$FF ; $C3BADA
    db $82,$FF,$E0,$D1,$41,$F1,$3A,$7F,$E9,$33,$39,$03,$D9,$B1,$7F,$6B ; $C3BAEA
    db $D4,$B0,$B9,$3B,$6D,$93,$51,$60,$AF,$03,$59,$A7,$FE,$7F,$86,$FF ; $C3BAFA
    db $16,$01,$7D,$FF,$2B,$FF,$71,$FF,$29,$63,$FF,$29,$8E,$FF,$75,$0C ; $C3BB0A
    db $FF,$77,$DD,$FF,$B3,$4F,$61,$7F,$25,$75,$7F,$E8,$73,$7F,$52,$78 ; $C3BB1A
    db $BC,$73,$70,$5F,$55,$AE,$EB,$97,$7E,$A9,$F7,$C8,$6D,$92,$DA,$E5 ; $C3BB2A
    db $35,$CA,$FA,$85,$3B,$E0,$33,$B9,$F3,$51,$26,$F7,$11,$01,$30,$3E ; $C3BB3A
    db $E1,$2D,$B8,$57,$F2,$07,$1D,$14,$EB,$B2,$4D,$0E,$03,$5D,$D0,$B0 ; $C3BB4A
    db $73,$D1,$3F,$03,$91,$1F,$91,$3B,$91,$55,$01,$03,$FB,$11,$55,$BA ; $C3BB5A
    db $3F,$D8,$83,$03,$1B,$E4,$11,$EE,$83,$01,$FE,$7B,$94,$72,$F5,$35 ; $C3BB6A
    db $1C,$03,$1A,$03,$11,$BB,$BB,$11,$1C,$E3,$18,$33,$5C,$A3,$03,$58 ; $C3BB7A
    db $B7,$75,$10,$19,$85,$FF,$A8,$F6,$03,$C2,$BB,$03,$2D,$B3,$F7,$04 ; $C3BB8A
    db $03,$E7,$06,$FF,$BF,$EB,$01,$FF,$3C,$03,$38,$3F,$01,$EB,$B2,$92 ; $C3BB9A
    db $08,$02,$04,$2E,$9A,$20,$12,$30,$00,$30,$BC,$17,$22,$01,$98,$27 ; $C3BBAA
    db $B8,$BF,$40,$40,$C6,$01,$E0,$08,$61,$09,$01,$82,$07,$BB,$0A,$9E ; $C3BBBA
    db $CC,$12,$17,$C0,$BF,$F2,$E5,$57,$DF,$E2,$3A,$02,$57,$DA,$A7,$09 ; $C3BBCA
    db $FE,$00,$09,$F6,$FF,$7F,$5D,$10,$40,$1F,$10,$7B,$22,$7F,$50,$7F ; $C3BBDA
    db $74,$60,$B9,$46,$10,$03,$80,$11,$10,$EF,$22,$DD,$50,$AF,$0D,$60 ; $C3BBEA
    db $9F,$40,$BF,$09,$DE,$9E,$FF,$00,$28,$01,$2B,$CE,$79,$00,$B0,$77 ; $C3BBFA
    db $29,$D7,$B5,$F7,$BB,$1D,$1C,$07,$7F,$01,$09,$5F,$10,$7F,$00,$12 ; $C3BC0A
    db $01,$55,$69,$29,$39,$75,$A5,$55,$E4,$06,$6B,$FE,$2D,$1F,$77,$FB ; $C3BC1A
    db $03,$59,$8D,$36,$21,$37,$1D,$3F,$00,$1E,$EE,$C0,$E1,$1F,$03,$55 ; $C3BC2A
    db $AA,$06,$60,$21,$5F,$FF,$8B,$0E,$DF,$11,$FF,$05,$38,$31,$81,$03 ; $C3BC3A
    db $01,$00,$FB,$5F,$A1,$8B,$75,$11,$EF,$05,$EE,$BA,$81,$81,$CE,$9D ; $C3BC4A
    db $3F,$47,$01,$06,$AF,$DE,$01,$07,$21,$DF,$03,$35,$AE,$29,$1D,$3F ; $C3BC5A
    db $01,$1F,$01,$0F,$01,$07,$01,$01,$03,$FD,$81,$64,$0B,$4A,$0D,$09 ; $C3BC6A
    db $9F,$55,$41,$49,$BF,$F8,$04,$56,$78,$49,$02,$19,$F4,$FB,$7D,$04 ; $C3BC7A
    db $7B,$96,$3F,$01,$16,$0F,$1F,$00,$20,$0E,$21,$AC,$01,$17,$08,$0A ; $C3BC8A
    db $F5,$1E,$FF,$90,$01,$19,$00,$03,$00,$F0,$04,$03,$06,$F8,$0C,$79 ; $C3BC9A
    db $FC,$04,$03,$80,$D1,$92,$E7,$04,$03,$60,$7F,$D3,$DE,$04,$03,$38 ; $C3BCAA
    db $3F,$C7,$99,$0C,$00,$83,$04,$03,$07,$FE,$03,$FC,$CE,$04,$03,$60 ; $C3BCBA
    db $7B,$15,$04,$03,$A8,$53,$7B,$FF,$04,$03,$CE,$38,$3F,$06,$79,$13 ; $C3BCCA
    db $04,$03,$01,$51,$31,$E7,$02,$03,$00,$71,$BE,$E7,$04,$03,$80,$F1 ; $C3BCDA
    db $01,$F3,$27,$03,$8F,$3A,$3F,$01,$00,$04,$44,$03,$FB,$D7,$04,$03 ; $C3BCEA
    db $8F,$B1,$00,$05,$7E,$03,$07,$DF,$F4,$38,$3F,$E9,$B3,$37,$EF,$88 ; $C3BCFA
    db $03,$4D,$19,$6A,$13,$A4,$B7,$88,$77,$C5,$03,$81,$7E,$52,$BF,$FB ; $C3BD0A
    db $7D,$02,$07,$27,$BF,$02,$FD,$D3,$04,$FF,$1E,$09,$BF,$00,$BF,$A0 ; $C3BD1A
    db $27,$07,$E6,$BF,$07,$24,$A0,$5F,$07,$F3,$0A,$01,$01,$DF,$06,$03 ; $C3BD2A
    db $3A,$1F,$DF,$05,$E7,$61,$CF,$2C,$1F,$54,$15,$07,$06,$01,$0E,$0C ; $C3BD3A
    db $1D,$19,$19,$33,$37,$4B,$A1,$B7,$FE,$07,$FE,$0A,$FD,$14,$FB,$1B ; $C3BD4A
    db $F6,$32,$CD,$0F,$3F,$7B,$FF,$C3,$E2,$12,$9F,$30,$7E,$00,$C7,$1F ; $C3BD5A
    db $BF,$BF,$7F,$0F,$F7,$7A,$B7,$C0,$BF,$32,$ED,$20,$5C,$09,$1F,$EE ; $C3BD6A
    db $BE,$E0,$27,$FF,$25,$76,$60,$6D,$49,$EB,$5B,$DB,$E3,$DB,$A3,$CF ; $C3BD7A
    db $9B,$BF,$B3,$AB,$24,$FB,$60,$9F,$59,$F7,$52,$ED,$C2,$3F,$83,$FF ; $C3BD8A
    db $8B,$F7,$83,$FC,$7C,$FE,$F2,$F8,$EB,$F3,$D6,$EF,$AA,$DC,$94,$9B ; $C3BD9A
    db $78,$B7,$20,$37,$0C,$FB,$10,$EF,$23,$DC,$46,$BD,$88,$FF,$90,$7F ; $C3BDAA
    db $30,$CF,$45,$E0,$F8,$9C,$FE,$07,$03,$BF,$CC,$B7,$8C,$62,$69,$78 ; $C3BDBA
    db $FF,$E1,$4C,$5F,$E0,$DF,$9C,$63,$03,$FC,$04,$FB,$08,$F7,$C1,$0F ; $C3BDCA
    db $B7,$4C,$F7,$20,$B4,$80,$C0,$40,$01,$E0,$20,$F0,$D0,$70,$C8,$F8 ; $C3BDDA
    db $3D,$B5,$DB,$65,$2E,$3B,$50,$7D,$AF,$88,$77,$C2,$5F,$43,$DF,$E1 ; $C3BDEA
    db $FF,$11,$3F,$1E,$FF,$13,$F8,$10,$F7,$33,$F7,$42,$FF,$43,$FC,$A1 ; $C3BDFA
    db $54,$DD,$0E,$48,$DD,$EF,$33,$CF,$62,$08,$4B,$7C,$1C,$E1,$6E,$9E ; $C3BE0A
    db $7E,$82,$7E,$22,$8E,$5B,$BE,$32,$AA,$08,$D6,$83,$CD,$0C,$F7,$16 ; $C3BE1A
    db $E9,$02,$A0,$1B,$0A,$F7,$78,$02,$01,$FF,$07,$0F,$02,$0E,$1F,$1D ; $C3BE2A
    db $1F,$3B,$3F,$47,$FF,$06,$5C,$1D,$12,$FD,$0C,$15,$FB,$2A,$DF,$FF ; $C3BE3A
    db $7F,$02,$FF,$F0,$FC,$CF,$FF,$7F,$74,$60,$E3,$FF,$7F,$BA,$F0,$EF ; $C3BE4A
    db $06,$CF,$B3,$6F,$BE,$97,$0B,$EB,$00,$53,$37,$7F,$77,$7F,$6F,$FF ; $C3BE5A
    db $71,$6F,$19,$DF,$43,$01,$14,$FB,$00,$95,$48,$FF,$28,$FF,$B0,$4F ; $C3BE6A
    db $90,$43,$FF,$01,$C3,$08,$00,$0B,$FF,$07,$AC,$87,$74,$06,$AA,$19 ; $C3BE7A
    db $05,$17,$A1,$C0,$0E,$F0,$A0,$FC,$00,$07,$C0,$F1,$E0,$FC,$F4,$FF ; $C3BE8A
    db $F8,$A7,$41,$B8,$75,$38,$5F,$00,$05,$E0,$01,$9F,$F4,$8B,$F8,$67 ; $C3BE9A
    db $FE,$C1,$3D,$B5,$D8,$E3,$08,$60,$0F,$04,$B0,$04,$D8,$08,$C9,$BF ; $C3BEAA
    db $FC,$D3,$77,$60,$00,$FC,$E3,$FF,$1D,$D0,$FE,$E5,$C3,$D4,$E8,$82 ; $C3BEBA
    db $1A,$D8,$7F,$FE,$E3,$02,$C8,$02,$EC,$82,$E4,$01,$E4,$81,$F6,$01 ; $C3BECA
    db $F2,$C1,$F6,$81,$F2,$2D,$3D,$24,$03,$47,$E9,$E0,$01,$FF,$0F,$0C ; $C3BEDA
    db $1F,$18,$16,$1F,$30,$3F,$C0,$FF,$0F,$FC,$1F,$F8,$1F,$19,$F0,$3F ; $C3BEEA
    db $C0,$FF,$70,$8A,$FF,$FF,$18,$EC,$8B,$77,$6F,$00,$FF,$75,$AA,$F3 ; $C3BEFA
    db $8C,$18,$EF,$F4,$0E,$0F,$FA,$07,$FD,$94,$DE,$20,$7E,$39,$3F,$93 ; $C3BF0A
    db $D0,$FD,$81,$18,$FF,$83,$FF,$B8,$7E,$81,$30,$7F,$C0,$03,$FD,$02 ; $C3BF1A
    db $FC,$05,$83,$F1,$8E,$EB,$96,$8E,$A7,$1F,$CE,$41,$CF,$C1,$31,$B7 ; $C3BF2A
    db $48,$EB,$14,$DD,$E3,$01,$7F,$1E,$E7,$70,$BF,$C0,$BF,$81,$EB,$E0 ; $C3BF3A
    db $F8,$1C,$FE,$03,$F3,$03,$8D,$71,$E0,$DF,$FC,$03,$7B,$84,$FE,$01 ; $C3BF4A
    db $5F,$A0,$2F,$D0,$1B,$E4,$8F,$70,$FC,$04,$FF,$10,$3F,$F0,$08,$03 ; $C3BF5A
    db $60,$FF,$3B,$D0,$2F,$E8,$17,$89,$BF,$E1,$7F,$EF,$E0,$46,$01,$E1 ; $C3BF6A
    db $5F,$2E,$C8,$EF,$38,$10,$57,$E8,$63,$DC,$27,$D8,$23,$FC,$27,$F8 ; $C3BF7A
    db $13,$EC,$08,$FC,$0C,$01,$FE,$1A,$B8,$6C,$FE,$12,$FE,$22,$F6,$43 ; $C3BF8A
    db $EE,$82,$DE,$F8,$07,$FC,$01,$BB,$05,$00,$DA,$37,$B6,$6B,$6A,$D7 ; $C3BF9A
    db $D6,$AB,$F1,$12,$FF,$1E,$F9,$8C,$FF,$3E,$C1,$FF,$7C,$1F,$FF,$C3 ; $C3BFAA
    db $FF,$02,$FC,$55,$FF,$7C,$05,$AB,$DB,$A6,$7F,$80,$90,$C7,$FF,$03 ; $C3BFBA
    db $41,$FF,$43,$FF,$C4,$FF,$A0,$D1,$FF,$B0,$B8,$EA,$FF,$3D,$E2,$7C ; $C3BFCA
    db $83,$71,$CE,$6B,$96,$F4,$0F,$E8,$9F,$94,$FB,$BE,$3F,$87,$39,$7F ; $C3BFDA
    db $E0,$01,$9F,$0F,$F3,$70,$9F,$86,$B1,$39,$E4,$01,$0E,$EF,$F8,$0C ; $C3BFEA
    db $57,$FF,$C1,$F3,$F7,$10,$FB,$18,$FB,$8C,$FF,$6C,$93,$F7,$8A,$00 ; $C3BFFA
    db $F5,$43,$FC,$B5,$6A,$58,$B7,$1A,$78,$E5,$14,$FF,$50,$AF,$C2,$FF ; $C3C00A
    db $E8,$FD,$FC,$0B,$01,$FE,$00,$00,$EC,$9B,$1C,$FB,$05,$FE,$29,$02 ; $C3C01A
    db $FD,$01,$16,$98,$9F,$FC,$04,$01,$FE,$06,$E5,$01,$C3,$0E,$FE,$0B ; $C3C02A
    db $FE,$1A,$FA,$78,$87,$D4,$2F,$7C,$87,$30,$D7,$7E,$03,$C3,$7A,$8F ; $C3C03A
    db $3C,$3A,$C7,$04,$FF,$19,$3C,$1F,$33,$05,$FF,$19,$2A,$F6,$33,$50 ; $C3C04A
    db $FF,$C0,$F7,$9B,$C3,$01,$FF,$7B,$A4,$DF,$A0,$60,$9F,$95,$C7,$60 ; $C3C05A
    db $50,$DF,$27,$7F,$6F,$7F,$1D,$57,$FF,$67,$C2,$5B,$CF,$80,$01,$26 ; $C3C06A
    db $FF,$6C,$9B,$54,$6C,$FF,$1B,$99,$C8,$07,$F7,$C8,$FF,$C8,$BF,$C7 ; $C3C07A
    db $08,$FF,$C6,$08,$BF,$FF,$CE,$BB,$33,$A1,$EB,$E4,$38,$C5,$EC,$FF ; $C3C08A
    db $C3,$38,$B3,$5C,$0F,$9F,$0B,$0E,$FB,$03,$FE,$5E,$1F,$C7,$FF,$88 ; $C3C09A
    db $C8,$05,$FF,$10,$EF,$88,$78,$77,$18,$5F,$88,$FC,$60,$C4,$01,$FE ; $C3C0AA
    db $C6,$FE,$E6,$C3,$01,$EE,$E7,$EE,$17,$03,$88,$F7,$0D,$64,$9F,$64 ; $C3C0BA
    db $DF,$16,$E9,$36,$CB,$26,$DB,$26,$FB,$01,$3A,$7B,$35,$EE,$B9,$02 ; $C3C0CA
    db $F9,$3D,$01,$00,$F7,$04,$A7,$76,$03,$35,$75,$05,$23,$B2,$50,$00 ; $C3C0DA
    db $8A,$A9,$A0,$75,$7D,$DC,$62,$E2,$1F,$17,$0A,$FF,$2F,$0F,$FA,$75 ; $C3C0EA
    db $E0,$C0,$80,$82,$00,$0F,$05,$1D,$1F,$0D,$07,$F9,$FF,$02,$FC,$FF ; $C3C0FA
    db $06,$FF,$01,$CA,$00,$98,$00,$95,$00,$BA,$CC,$41,$00,$82,$EE,$07 ; $C3C10A
    db $E7,$30,$3F,$60,$7C,$F7,$40,$3F,$00,$75,$7F,$FF,$3F,$7D,$7F,$D0 ; $C3C11A
    db $3F,$77,$40,$00,$FD,$14,$00,$A3,$00,$F9,$3A,$00,$7C,$C7,$02,$8F ; $C3C12A
    db $05,$5F,$A0,$FF,$E8,$C3,$BF,$5C,$0F,$06,$03,$83,$01,$E1,$40,$70 ; $C3C13A
    db $F0,$00,$EA,$01,$00,$80,$AF,$FF,$BF,$08,$41,$BB,$A7,$00,$13,$00 ; $C3C14A
    db $53,$C7,$3F,$A9,$30,$7B,$03,$B3,$00,$18,$D0,$73,$01,$0E,$FC,$56 ; $C3C15A
    db $F8,$FC,$67,$03,$07,$00,$D0,$07,$7F,$E0,$FA,$09,$3E,$7F,$01,$CE ; $C3C16A
    db $39,$C7,$01,$06,$00,$F4,$06,$A9,$01,$FE,$CE,$10,$0A,$2B,$B5,$60 ; $C3C17A
    db $E2,$3D,$05,$00,$1D,$81,$1F,$05,$FF,$1F,$F5,$D4,$03,$3A,$82,$FA ; $C3C18A
    db $0F,$E0,$1F,$E8,$08,$7F,$7D,$03,$07,$19,$7F,$71,$20,$45,$B7,$55 ; $C3C19A
    db $63,$41,$10,$00,$3A,$71,$C0,$29,$F9,$03,$3A,$07,$BF,$A0,$00,$B8 ; $C3C1AA
    db $1C,$37,$02,$7F,$09,$40,$00,$70,$00,$5A,$67,$F0,$70,$5F,$3C,$83 ; $C3C1BA
    db $BF,$1F,$E1,$0F,$F0,$04,$D8,$BA,$EF,$E8,$E7,$08,$DF,$18,$5A,$DF ; $C3C1CA
    db $08,$E3,$3F,$50,$BA,$FC,$50,$8A,$2A,$FF,$7C,$E0,$02,$7F,$40,$FA ; $C3C1DA
    db $08,$1F,$FF,$FF,$08,$4F,$3F,$EF,$04,$01,$08,$FC,$1F,$A3,$7F,$38 ; $C3C1EA
    db $F7,$15,$9B,$82,$ED,$09,$60,$1F,$0A,$FF,$3F,$EE,$41,$D3,$F0,$FF ; $C3C1FA
    db $E0,$FF,$02,$F4,$19,$41,$FF,$81,$40,$C7,$FF,$EA,$34,$03,$BF,$5E ; $C3C20A
    db $27,$49,$01,$50,$FF,$00,$A3,$1D,$50,$B8,$A2,$CF,$5F,$A1,$01,$3B ; $C3C21A
    db $5F,$A0,$A3,$0B,$7C,$FF,$1E,$A7,$75,$FE,$1A,$BF,$04,$AE,$07,$DE ; $C3C22A
    db $56,$00,$A8,$33,$03,$00,$07,$8F,$73,$03,$03,$3E,$7F,$80,$07,$97 ; $C3C23A
    db $7F,$00,$D3,$07,$7F,$FC,$07,$7E,$3D,$07,$FF,$4C,$02,$1F,$2A,$0E ; $C3C24A
    db $00,$35,$00,$6B,$C9,$A9,$40,$81,$1F,$15,$FF,$4A,$FF,$94,$54,$7D ; $C3C25A
    db $F1,$18,$2F,$7F,$80,$17,$A6,$7F,$59,$D7,$A0,$D9,$01,$68,$D2,$07 ; $C3C26A
    db $0B,$5B,$00,$91,$69,$A8,$FF,$14,$D9,$65,$04,$E7,$19,$FF,$04,$9F ; $C3C27A
    db $07,$7F,$03,$09,$4B,$FF,$00,$DD,$16,$7F,$CF,$73,$F2,$05,$43,$FF ; $C3C28A
    db $F0,$0F,$01,$7F,$00,$2F,$E8,$06,$7F,$02,$49,$1F,$9F,$04,$E6,$1D ; $C3C29A
    db $03,$79,$AA,$0D,$3F,$80,$3A,$C3,$00,$05,$C8,$08,$1F,$55,$F3,$E0 ; $C3C2AA
    db $C0,$32,$7F,$AC,$FA,$8B,$E7,$82,$03,$FE,$42,$FF,$5B,$EF,$59,$BB ; $C3C2BA
    db $CB,$71,$20,$3F,$A0,$DF,$83,$FD,$82,$7F,$42,$BF,$4B,$B4,$51,$AF ; $C3C2CA
    db $20,$DF,$CB,$01,$A0,$8F,$6F,$E0,$EF,$21,$3F,$1F,$FF,$0A,$FC,$09 ; $C3C2DA
    db $F9,$CD,$FB,$7D,$FB,$20,$48,$3F,$21,$FE,$17,$65,$FC,$39,$09,$C3 ; $C3C2EA
    db $FE,$C9,$BF,$71,$BF,$13,$1D,$0B,$1F,$04,$0F,$02,$BC,$59,$90,$5E ; $C3C2FA
    db $11,$EE,$0E,$0A,$F5,$04,$FB,$B6,$21,$76,$0B,$89,$08,$9B,$0A,$86 ; $C3C30A
    db $F8,$0D,$FB,$3B,$DA,$BA,$FB,$78,$FE,$1F,$3F,$03,$AC,$CC,$11,$F7 ; $C3C31A
    db $01,$18,$03,$E7,$AA,$5D,$78,$FF,$1F,$BD,$25,$BC,$60,$27,$EF,$4E ; $C3C32A
    db $EF,$8E,$DE,$1D,$3E,$79,$FC,$F2,$F9,$E4,$F3,$98,$C7,$25,$FE,$4A ; $C3C33A
    db $F7,$82,$FD,$04,$FF,$48,$BF,$90,$FF,$60,$DF,$80,$7F,$2F,$7A,$8B ; $C3C34A
    db $62,$83,$7E,$05,$7E,$1D,$EC,$1E,$FC,$83,$1C,$F8,$22,$DF,$8E,$E0 ; $C3C35A
    db $D9,$61,$0C,$F7,$14,$EF,$D8,$4B,$47,$60,$0F,$88,$C7,$00,$0D,$B7 ; $C3C36A
    db $CE,$BF,$9D,$7C,$EE,$F0,$4A,$F0,$00,$DF,$7F,$05,$FA,$0A,$F7,$1C ; $C3C37A
    db $3A,$EB,$E0,$C0,$A3,$F4,$70,$E8,$E0,$05,$C0,$C0,$80,$80,$40,$6C ; $C3C38A
    db $3E,$00,$70,$03,$9F,$A0,$7F,$D0,$7F,$A0,$D2,$01,$FF,$A5,$B5,$5F ; $C3C39A
    db $D4,$8C,$C1,$6F,$7F,$3F,$01,$3F,$77,$D0,$F1,$C5,$1F,$10,$EF,$80 ; $C3C3AA
    db $7B,$68,$BF,$38,$E7,$3C,$D7,$FE,$08,$BF,$5F,$02,$07,$00,$3F,$1F ; $C3C3BA
    db $1F,$0F,$1F,$07,$0F,$03,$F1,$01,$FF,$1E,$FB,$D4,$F7,$16,$EC,$D1 ; $C3C3CA
    db $FF,$F6,$02,$00,$EF,$72,$0F,$FF,$74,$03,$E5,$3F,$FD,$CF,$78,$B7 ; $C3C3DA
    db $AB,$DD,$F6,$09,$02,$1F,$FF,$FD,$7F,$FE,$BF,$83,$03,$5F,$FE,$37 ; $C3C3EA
    db $07,$97,$FE,$C1,$F6,$A1,$52,$B7,$E1,$00,$F4,$C1,$F4,$E2,$E4,$C2 ; $C3C3FA
    db $E8,$C4,$45,$C8,$9D,$1F,$62,$1D,$1F,$2C,$21,$EB,$D7,$4B,$D8,$5F ; $C3C40A
    db $FE,$34,$FF,$F6,$06,$FF,$09,$FC,$CE,$E0,$50,$B8,$47,$2F,$FF,$9B ; $C3C41A
    db $FF,$2E,$FF,$1D,$FA,$76,$E9,$08,$F7,$00,$BD,$84,$D0,$08,$A0,$40 ; $C3C42A
    db $7A,$40,$02,$FF,$24,$F3,$50,$BF,$7F,$A0,$01,$0A,$99,$84,$A0,$B7 ; $C3C43A
    db $70,$FF,$15,$60,$FF,$40,$80,$FF,$F5,$8E,$AB,$DC,$97,$78,$EB,$E6 ; $C3C44A
    db $9E,$66,$A0,$5E,$08,$2F,$D0,$0F,$FF,$3A,$01,$0C,$5C,$89,$06,$FB ; $C3C45A
    db $C2,$D7,$C8,$3F,$68,$E3,$9F,$C8,$37,$AD,$56,$C4,$3F,$E6,$19,$B2 ; $C3C46A
    db $4F,$EB,$14,$10,$1F,$08,$F8,$05,$FF,$17,$E8,$0F,$0B,$F4,$05,$FA ; $C3C47A
    db $02,$CF,$FF,$01,$01,$EE,$AB,$63,$B8,$C6,$1F,$3F,$02,$00,$F1,$0F ; $C3C48A
    db $F8,$07,$ED,$12,$FA,$05,$BF,$40,$77,$E8,$FF,$03,$E7,$FF,$FC,$FE ; $C3C49A
    db $E0,$F9,$A6,$85,$60,$27,$07,$FA,$1E,$F9,$22,$E9,$D6,$0C,$41,$55 ; $C3C4AA
    db $AA,$23,$EF,$00,$10,$03,$BE,$03,$7E,$03,$FE,$05,$C7,$01,$FC,$06 ; $C3C4BA
    db $6B,$FF,$8E,$0C,$F8,$A6,$5B,$5A,$A7,$2A,$D5,$5C,$A3,$BC,$47,$F4 ; $C3C4CA
    db $0F,$78,$87,$42,$55,$00,$2E,$3B,$31,$B9,$2B,$1D,$FC,$1B,$FF,$00 ; $C3C4DA
    db $B9,$BF,$C0,$5F,$E0,$B1,$6E,$5E,$11,$A3,$9C,$6B,$81,$FF,$14,$F0 ; $C3C4EA
    db $28,$E0,$40,$F8,$03,$FF,$D0,$3F,$C7,$FB,$50,$FF,$E7,$02,$FF,$A0 ; $C3C4FA
    db $5E,$C3,$AC,$41,$9A,$FF,$E3,$BC,$E3,$F6,$89,$FC,$43,$7A,$85,$7C ; $C3C50A
    db $83,$5E,$A1,$3B,$C4,$2E,$D1,$2C,$94,$7F,$A0,$01,$2F,$FF,$30,$2A ; $C3C51A
    db $FA,$80,$98,$B9,$A8,$A1,$70,$BF,$2F,$1E,$F3,$BA,$45,$0C,$FF,$F8 ; $C3C52A
    db $04,$FF,$75,$10,$0E,$DB,$04,$C9,$37,$81,$B0,$FF,$0F,$89,$7E,$D5 ; $C3C53A
    db $01,$2E,$AB,$56,$B5,$4A,$72,$ED,$0E,$FF,$A6,$B2,$B2,$BF,$FF,$30 ; $C3C54A
    db $07,$F1,$00,$0F,$EC,$63,$FC,$CE,$3D,$05,$A4,$81,$1E,$F1,$01,$F1 ; $C3C55A
    db $8E,$08,$F7,$13,$FA,$23,$D6,$01,$B7,$85,$DE,$05,$BC,$06,$7C,$0B ; $C3C56A
    db $FF,$8D,$5A,$B7,$32,$EF,$6A,$D5,$D4,$AB,$AC,$57,$54,$AF,$28,$D7 ; $C3C57A
    db $88,$7F,$B0,$65,$C2,$FF,$7D,$A5,$FF,$B0,$37,$FA,$87,$7C,$78,$AB ; $C3C58A
    db $1C,$FF,$CF,$FF,$71,$8F,$01,$47,$03,$01,$7F,$23,$2E,$01,$3F,$3F ; $C3C59A
    db $C8,$BF,$88,$F7,$88,$77,$60,$9F,$64,$9F,$44,$BB,$32,$CF,$2B,$D5 ; $C3C5AA
    db $18,$4B,$5F,$11,$C7,$07,$FF,$11,$EE,$73,$61,$E8,$03,$FF,$03,$00 ; $C3C5BA
    db $4F,$FF,$20,$FE,$98,$B4,$3F,$3A,$FF,$00,$FB,$BF,$4F,$F3,$22,$FD ; $C3C5CA
    db $98,$10,$77,$7F,$E6,$FF,$F6,$16,$5F,$D7,$75,$E7,$2B,$B5,$EF,$A5 ; $C3C5DA
    db $EE,$CD,$FE,$D5,$FC,$E6,$FC,$CA,$EC,$8C,$D8,$26,$FF,$26,$DF,$2E ; $C3C5EA
    db $D1,$3C,$CB,$5C,$F7,$74,$AF,$E8,$D7,$C8,$3F,$FE,$67,$37,$01,$65 ; $C3C5FA
    db $37,$9D,$00,$FF,$03,$FC,$0E,$F9,$F1,$8E,$34,$09,$F6,$0F,$F3,$FF ; $C3C60A
    db $30,$C7,$06,$FF,$10,$FF,$81,$06,$FF,$11,$00,$09,$00,$18,$D4,$26 ; $C3C61A
    db $37,$10,$03,$1D,$0E,$FC,$06,$88,$7B,$03,$FF,$FC,$47,$07,$03,$CD ; $C3C62A
    db $00,$E3,$52,$F7,$7E,$EA,$1D,$BD,$8D,$D0,$FD,$FA,$00,$30,$1F,$31 ; $C3C63A
    db $1C,$0F,$6C,$81,$00,$98,$52,$72,$C8,$F5,$05,$41,$FF,$33,$06,$C5 ; $C3C64A
    db $43,$06,$51,$C1,$2F,$CB,$7F,$B2,$7B,$3B,$5F,$5A,$A3,$D7,$35,$00 ; $C3C65A
    db $1A,$BE,$DD,$C0,$3B,$00,$5A,$EA,$47,$80,$A5,$B5,$E0,$D4,$3A,$3D ; $C3C66A
    db $3F,$97,$47,$00,$52,$BF,$8F,$EA,$5D,$F7,$FC,$EB,$BC,$60,$8E,$43 ; $C3C67A
    db $B8,$A5,$BF,$70,$70,$F0,$E1,$C0,$03,$01,$07,$03,$9F,$0F,$F9,$5F ; $C3C68A
    db $43,$EB,$B9,$BF,$10,$19,$E4,$02,$03,$E0,$50,$B7,$FF,$F3,$02,$03 ; $C3C69A
    db $A6,$AE,$FE,$54,$EF,$B8,$FB,$A0,$7B,$A1,$E2,$07,$01,$BE,$FD,$07 ; $C3C6AA
    db $EA,$8E,$D1,$FE,$FF,$54,$49,$5F,$37,$1F,$F9,$B4,$A7,$FF,$C0,$45 ; $C3C6BA
    db $7D,$BE,$3F,$06,$E2,$01,$03,$BF,$06,$0E,$03,$B4,$73,$FE,$01,$FC ; $C3C6CA
    db $03,$81,$10,$EA,$15,$F5,$02,$DC,$78,$45,$B5,$EA,$40,$09,$E0,$3F ; $C3C6DA
    db $F0,$1F,$FD,$0F,$77,$FF,$22,$E3,$1F,$EA,$0A,$26,$AF,$BE,$3E,$02 ; $C3C6EA
    db $FF,$02,$FE,$42,$07,$C1,$55,$80,$2E,$B5,$F0,$A5,$FB,$3F,$C7,$3D ; $C3C6FA
    db $00,$D2,$0B,$BF,$70,$E4,$1F,$5A,$7F,$0F,$0E,$00,$59,$00,$43,$A4 ; $C3C70A
    db $BF,$0F,$F0,$22,$3F,$E1,$91,$BC,$F0,$9F,$A0,$48,$BF,$29,$B9,$40 ; $C3C71A
    db $45,$4F,$03,$08,$88,$21,$71,$B3,$B9,$5F,$DF,$3E,$79,$54,$0D,$7F ; $C3C72A
    db $C0,$3F,$FA,$3A,$0E,$9F,$33,$B7,$05,$C3,$03,$03,$01,$FF,$01,$CE ; $C3C73A
    db $05,$1F,$20,$C7,$3F,$0D,$00,$6E,$EF,$FA,$9A,$2A,$1D,$81,$87,$BB ; $C3C74A
    db $F0,$FF,$7E,$65,$BD,$15,$29,$1F,$33,$E5,$13,$FF,$00,$1D,$BD,$A0 ; $C3C75A
    db $F7,$A6,$AA,$51,$3E,$E7,$0A,$1F,$08,$1C,$5F,$61,$F7,$76,$06,$BD ; $C3C76A
    db $71,$A2,$45,$07,$D7,$6D,$1D,$1E,$FF,$BC,$4B,$FF,$50,$CF,$03,$BF ; $C3C77A
    db $40,$01,$7A,$03,$08,$3F,$45,$7D,$00,$3C,$5F,$0E,$FF,$40,$F7,$04 ; $C3C78A
    db $FD,$9F,$0B,$9F,$03,$06,$67,$01,$DE,$03,$B3,$CC,$3F,$59,$6A,$24 ; $C3C79A
    db $00,$75,$BD,$4A,$00,$E3,$6F,$95,$FF,$0A,$E8,$3F,$FF,$75,$05,$20 ; $C3C7AA
    db $F3,$B6,$00,$AC,$00,$58,$AB,$73,$27,$00,$02,$AE,$2D,$08,$7C,$FF ; $C3C7BA
    db $03,$FD,$A1,$38,$3E,$5F,$17,$1F,$F0,$00,$52,$4E,$43,$02,$00,$00 ; $C3C7CA
    db $46,$00,$00,$00,$28,$F4,$A4,$E7,$36,$DB,$04,$02,$06,$00,$5E,$FE ; $C3C7DA
    db $00,$61,$FF,$00,$20,$E7,$EF,$B8,$00,$07,$54,$5C,$AB,$79,$FE,$AB ; $C3C7EA
    db $FC,$53,$E9,$FE,$20,$DF,$EF,$BA,$0F,$F5,$F5,$1F,$01,$7F,$14,$C4 ; $C3C7FA
    db $00,$21,$CC,$1F,$01,$2C,$15,$1A,$FE,$2B,$E0,$0F,$F3,$DE,$EF,$B5 ; $C3C80A
    db $CF,$73,$1A,$EF,$AC,$BF,$68,$FD,$09,$AE,$9C,$08,$CE,$68,$0B,$0C ; $C3C81A
    db $9B,$2C,$6C,$FF,$E5,$5A,$E1,$5E,$A7,$5E,$47,$BD,$57,$EF,$F5,$FF ; $C3C82A
    db $D3,$2E,$75,$CF,$00,$FF,$00,$75,$55,$20,$39,$00,$34,$CD,$08,$01 ; $C3C83A
    db $87,$09,$55,$AA,$75,$1C,$01,$FF,$55,$21,$70,$FF,$0B,$9E,$12,$00 ; $C3C84A
    db $05,$03,$37,$55,$FF,$1C,$BC,$04,$03,$58,$1F,$81,$0E,$02,$03,$FE ; $C3C85A
    db $06,$C0,$01,$1C,$3F,$33,$F8,$40,$18,$E0,$81,$C0,$A4,$02,$FF,$18 ; $C3C86A
    db $06,$FB,$FC,$0F,$EB,$30,$0F,$EF,$4F,$FF,$9E,$01,$00,$1F,$36,$F8 ; $C3C87A
    db $8C,$3F,$C6,$1F,$E7,$59,$1F,$1F,$70,$30,$DF,$0C,$F3,$46,$BD,$7D ; $C3C88A
    db $87,$E0,$80,$C1,$80,$CB,$00,$01,$86,$80,$03,$80,$3F,$80,$7F,$80 ; $C3C89A
    db $D5,$80,$DF,$BF,$BE,$DB,$5C,$7F,$34,$7E,$9F,$7C,$9F,$40,$FF,$15 ; $C3C8AA
    db $EA,$95,$6A,$C7,$0F,$33,$80,$03,$C7,$1F,$87,$1F,$0F,$62,$3F,$3B ; $C3C8BA
    db $7E,$83,$00,$03,$46,$BB,$D6,$2B,$86,$12,$7F,$2E,$D7,$06,$5F,$FF ; $C3C8CA
    db $FF,$1E,$20,$6F,$76,$60,$60,$90,$5F,$FD,$FE,$C0,$07,$20,$FF,$60 ; $C3C8DA
    db $BF,$DF,$58,$EF,$1F,$18,$F4,$0F,$1F,$6D,$54,$D6,$0A,$00,$D9,$5F ; $C3C8EA
    db $01,$AA,$08,$01,$C4,$B1,$00,$FF,$3D,$09,$1B,$1F,$EF,$16,$01,$18 ; $C3C8FA
    db $DE,$5F,$37,$3F,$F0,$01,$DF,$3F,$20,$F0,$0B,$51,$E0,$C0,$C0,$00 ; $C3C90A
    db $DF,$18,$E7,$20,$DF,$4E,$FF,$2D,$DF,$BF,$86,$7F,$7A,$F8,$0C,$17 ; $C3C91A
    db $3F,$3F,$07,$01,$00,$7F,$78,$97,$CC,$3B,$26,$DD,$15,$1C,$EB,$A0 ; $C3C92A
    db $C0,$01,$B8,$73,$80,$B0,$80,$98,$80,$8F,$C0,$87,$E0,$C1,$F0,$9F ; $C3C93A
    db $33,$5C,$03,$70,$8F,$FF,$87,$FF,$C0,$BF,$A5,$DA,$D1,$AE,$82,$0F ; $C3C94A
    db $83,$06,$43,$02,$00,$00,$02,$FC,$E3,$01,$55,$80,$4D,$07,$FA,$82 ; $C3C95A
    db $FD,$FF,$60,$FD,$61,$01,$FE,$55,$AB,$3F,$54,$AB,$16,$1F,$7F,$C7 ; $C3C96A
    db $FF,$16,$B3,$7F,$1F,$10,$17,$19,$75,$51,$9C,$34,$30,$10,$B0,$30 ; $C3C97A
    db $F7,$10,$E7,$10,$50,$1F,$45,$BA,$75,$BA,$7D,$AE,$FF,$E7,$3F,$D7 ; $C3C98A
    db $3F,$EF,$67,$BF,$56,$BF,$1C,$FF,$0C,$5B,$59,$0A,$AA,$08,$AC,$0E ; $C3C99A
    db $5B,$30,$23,$70,$E5,$F8,$55,$AA,$5B,$AE,$5F,$01,$EB,$00,$4C,$FB ; $C3C9AA
    db $7C,$FF,$6D,$FE,$DD,$7A,$3D,$00,$FF,$37,$01,$F3,$38,$1F,$F3,$13 ; $C3C9BA
    db $FF,$72,$CF,$75,$1E,$EF,$01,$02,$02,$FE,$1F,$FF,$F9,$F0,$41,$60 ; $C3C9CA
    db $81,$C0,$C1,$80,$43,$80,$80,$FF,$1F,$EF,$F6,$B8,$70,$AF,$5E,$FF ; $C3C9DA
    db $BE,$FF,$3E,$FF,$3C,$E7,$00,$05,$EF,$45,$04,$FF,$78,$41,$01,$91 ; $C3C9EA
    db $EF,$10,$C1,$64,$04,$FB,$41,$BE,$20,$0D,$C7,$0F,$DF,$C7,$3E,$3F ; $C3C9FA
    db $BF,$4E,$13,$01,$76,$54,$33,$01,$B4,$4F,$B0,$5F,$A0,$7F,$80,$06 ; $C3CA0A
    db $0F,$00,$6B,$D1,$65,$AE,$5F,$10,$07,$FF,$FC,$FC,$1C,$25,$35,$ED ; $C3CA1A
    db $65,$EC,$FE,$FC,$5F,$B8,$40,$05,$FB,$F9,$FF,$06,$FF,$27,$FF,$63 ; $C3CA2A
    db $BE,$D6,$ED,$1F,$E6,$FE,$00,$3F,$3F,$F8,$A0,$30,$2F,$60,$2F,$D0 ; $C3CA3A
    db $07,$1F,$00,$26,$DB,$9D,$FE,$C0,$BF,$60,$FF,$18,$80,$FF,$0F,$0D ; $C3CA4A
    db $FC,$01,$4A,$54,$1C,$DF,$FD,$01,$C0,$09,$56,$A9,$57,$AA,$57,$3B ; $C3CA5A
    db $A8,$FF,$1C,$E1,$02,$FD,$09,$00,$AA,$30,$3F,$E0,$35,$E5,$20,$30 ; $C3CA6A
    db $E3,$01,$EF,$00,$01,$30,$65,$30,$15,$EA,$C5,$3A,$C3,$01,$CF,$FF ; $C3CA7A
    db $CF,$86,$9B,$45,$BA,$01,$F9,$1A,$7F,$C4,$FF,$06,$FF,$61,$FF,$31 ; $C3CA8A
    db $EF,$61,$E0,$05,$1F,$21,$FE,$61,$BE,$F9,$02,$7F,$05,$08,$07,$E8 ; $C3CA9A
    db $00,$C0,$4D,$66,$48,$5F,$A2,$F7,$F8,$C1,$D5,$5F,$B3,$3F,$E3,$25 ; $C3CAAA
    db $1F,$C2,$41,$00,$10,$C0,$D6,$18,$EC,$0F,$E6,$0F,$05,$FA,$52,$7F ; $C3CABA
    db $CF,$60,$3E,$FD,$6D,$97,$66,$9F,$CA,$5F,$FF,$C0,$80,$20,$E7,$EE ; $C3CACA
    db $FF,$ED,$A9,$95,$63,$FE,$90,$03,$FD,$B0,$7F,$EE,$31,$ED,$4A,$32 ; $C3CADA
    db $5F,$FF,$86,$07,$07,$7F,$86,$7B,$CF,$05,$FF,$00,$01,$1F,$00,$11 ; $C3CAEA
    db $00,$31,$80,$08,$71,$80,$D1,$8E,$60,$0D,$00,$63,$FF,$6F,$BF,$03 ; $C3CAFA
    db $CE,$FF,$51,$AE,$DF,$20,$E4,$18,$FF,$75,$F7,$BA,$60,$2D,$ED,$5F ; $C3CB0A
    db $DF,$D9,$DF,$D0,$DD,$D0,$DA,$F0,$FC,$F5,$F0,$60,$B7,$4E,$AD,$5F ; $C3CB1A
    db $98,$C9,$96,$D0,$5F,$50,$CF,$10,$EF,$01,$30,$3D,$DF,$CF,$1B,$FD ; $C3CB2A
    db $FF,$BF,$61,$17,$01,$BF,$1F,$4E,$1F,$5F,$3F,$1D,$3A,$47,$DE,$ED ; $C3CB3A
    db $7B,$B7,$5A,$17,$F9,$17,$EB,$14,$EF,$18,$EF,$F3,$F8,$F6,$F8,$F4 ; $C3CB4A
    db $F8,$F0,$F8,$34,$50,$03,$01,$FF,$F1,$18,$FF,$F3,$FD,$FB,$33,$CF ; $C3CB5A
    db $5C,$F7,$69,$2F,$F7,$2E,$D7,$EC,$57,$3F,$9F,$3F,$77,$37,$BF,$3F ; $C3CB6A
    db $60,$3F,$2F,$01,$70,$95,$FF,$5D,$B6,$BD,$DE,$61,$DF,$A0,$5F,$EF ; $C3CB7A
    db $F0,$E0,$01,$7F,$77,$F5,$33,$2F,$EF,$7F,$DD,$0C,$7D,$D2,$D0,$DE ; $C3CB8A
    db $3D,$F2,$60,$F8,$7F,$4A,$AF,$5F,$9A,$38,$DF,$90,$7F,$DF,$A1,$7F ; $C3CB9A
    db $35,$CF,$C4,$7F,$7F,$18,$7F,$3F,$01,$9F,$1F,$B8,$70,$15,$3A,$97 ; $C3CBAA
    db $CE,$ED,$BB,$77,$9A,$17,$E9,$17,$FB,$7F,$E7,$F1,$39,$F8,$F5,$75 ; $C3CBBA
    db $94,$81,$30,$85,$D7,$01,$0C,$F6,$ED,$F2,$FF,$F7,$FF,$03,$FE,$37 ; $C3CBCA
    db $CF,$F3,$2D,$DA,$D7,$1B,$EE,$D7,$37,$B3,$03,$7D,$7F,$3F,$20,$3F ; $C3CBDA
    db $27,$32,$7D,$37,$7F,$15,$E3,$EF,$9D,$FE,$7D,$DE,$A1,$DF,$E0,$DF ; $C3CBEA
    db $E7,$F8,$E7,$38,$EF,$FF,$75,$46,$7F,$DA,$FF,$C3,$01,$D5,$F1,$FC ; $C3CBFA
    db $0C,$7F,$62,$B5,$4D,$7F,$9D,$20,$DA,$95,$FF,$12,$1C,$ED,$10,$FF ; $C3CC0A
    db $7F,$51,$DF,$FF,$DF,$B3,$FC,$7F,$97,$58,$3F,$FF,$E9,$73,$37,$FF ; $C3CC1A
    db $3D,$1F,$F6,$01,$7F,$26,$FF,$FD,$A0,$7F,$FD,$37,$CD,$D0,$FD,$7F ; $C3CC2A
    db $70,$97,$7F,$FF,$3F,$78,$3F,$01,$FF,$5D,$FF,$C3,$7F,$3D,$DE,$E1 ; $C3CC3A
    db $38,$FF,$DF,$FD,$70,$75,$EF,$47,$5F,$1E,$FE,$3F,$40,$FF,$05,$2D ; $C3CC4A
    db $2D,$30,$FD,$6D,$06,$FD,$00,$FF,$07,$1E,$E3,$3D,$C7,$F9,$00,$C1 ; $C3CC5A
    db $2A,$FF,$6B,$BE,$D4,$FF,$74,$83,$3A,$1F,$F6,$01,$FF,$E0,$A6,$2E ; $C3CC6A
    db $2F,$6E,$8B,$06,$FF,$02,$9F,$FD,$FE,$07,$36,$EB,$8D,$FE,$40,$BF ; $C3CC7A
    db $6E,$F1,$8E,$F1,$07,$FF,$00,$FD,$02,$55,$40,$11,$11,$04,$11,$46 ; $C3CC8A
    db $FD,$AE,$00,$47,$10,$44,$BB,$47,$BB,$53,$BF,$60,$FA,$25,$F9,$12 ; $C3CC9A
    db $FD,$57,$E8,$DF,$74,$35,$5D,$27,$3E,$38,$F8,$E6,$30,$EE,$60,$21 ; $C3CCAA
    db $32,$F1,$3E,$71,$3E,$15,$EA,$C3,$FF,$D8,$F7,$1F,$F7,$4F,$BF,$C2 ; $C3CCBA
    db $FF,$5D,$AE,$55,$BE,$02,$07,$FF,$3A,$EF,$65,$C0,$05,$DF,$2A,$F5 ; $C3CCCA
    db $65,$7F,$BA,$04,$5F,$7F,$B0,$07,$24,$1F,$A0,$7F,$42,$7F,$FF,$A0 ; $C3CCDA
    db $7F,$7F,$00,$E9,$98,$63,$00,$14,$54,$01,$15,$05,$80,$FF,$07,$5E ; $C3CCEA
    db $FF,$15,$54,$4B,$55,$AB,$70,$FE,$A1,$05,$78,$1C,$38,$00,$30,$1F ; $C3CCFA
    db $00,$CF,$10,$45,$30,$FE,$01,$05,$FE,$20,$4D,$FA,$1F,$30,$3A,$FF ; $C3CD0A
    db $55,$FF,$2B,$24,$D0,$FF,$7F,$FF,$E1,$F1,$F0,$04,$1F,$7F,$AB,$C1 ; $C3CD1A
    db $30,$FE,$1B,$31,$5D,$54,$09,$58,$1F,$7F,$09,$33,$5B,$A4,$75,$5D ; $C3CD2A
    db $99,$75,$01,$14,$CB,$7F,$A6,$5C,$AB,$F0,$E1,$2A,$E7,$0E,$E1,$60 ; $C3CD3A
    db $05,$60,$01,$CE,$01,$CA,$01,$46,$23,$F5,$2A,$37,$DA,$D1,$FE,$DB ; $C3CD4A
    db $6A,$DD,$6E,$05,$C3,$7F,$56,$B9,$00,$A4,$39,$20,$00,$00,$02,$02 ; $C3CD5A
    db $61,$04,$42,$80,$60,$80,$75,$40,$5D,$DF,$0E,$73,$D3,$32,$FD,$0E ; $C3CD6A
    db $03,$B0,$FF,$90,$06,$03,$00,$01,$5F,$01,$00,$00,$07,$07,$34,$13 ; $C3CD7A
    db $5F,$2F,$BC,$5F,$33,$F0,$B8,$64,$A0,$00,$66,$FE,$08,$F8,$2F,$C8 ; $C3CD8A
    db $57,$8D,$08,$AC,$13,$50,$2F,$06,$33,$61,$81,$50,$81,$03,$0C,$70 ; $C3CD9A
    db $80,$70,$82,$03,$91,$37,$FF,$B1,$37,$30,$23,$03,$81,$FF,$81,$EA ; $C3CDAA
    db $AE,$A1,$66,$BB,$73,$6B,$E5,$CD,$E9,$96,$9F,$FA,$FC,$4D,$F5,$87 ; $C3CDBA
    db $6B,$03,$27,$A4,$F8,$AB,$51,$C6,$72,$64,$64,$97,$61,$C9,$73,$84 ; $C3CDCA
    db $78,$83,$FD,$80,$22,$00,$02,$B0,$C0,$C0,$59,$91,$EC,$EA,$61,$02 ; $C3CDDA
    db $DD,$09,$80,$7F,$18,$4F,$20,$3F,$03,$E9,$26,$E4,$53,$06,$FD,$62 ; $C3CDEA
    db $EB,$9F,$E0,$00,$E1,$10,$58,$38,$18,$18,$1C,$9C,$1C,$1C,$1E,$1C ; $C3CDFA
    db $1F,$29,$EF,$33,$18,$F7,$9F,$1C,$70,$05,$01,$C2,$84,$01,$E0,$C4 ; $C3CE0A
    db $B1,$33,$72,$73,$7F,$85,$AB,$DE,$E3,$BC,$CB,$C1,$F9,$41,$3F,$A1 ; $C3CE1A
    db $9F,$90,$5E,$CC,$CC,$C0,$5E,$B1,$9F,$61,$3E,$43,$FE,$1C,$9F,$20 ; $C3CE2A
    db $01,$9C,$01,$DF,$CE,$01,$8C,$38,$03,$19,$33,$99,$68,$7F,$03,$00 ; $C3CE3A
    db $07,$09,$FF,$98,$FF,$5F,$FF,$FE,$46,$BF,$8D,$72,$BF,$00,$17,$07 ; $C3CE4A
    db $0A,$57,$AC,$B6,$4F,$B7,$6C,$F7,$FE,$B3,$FD,$11,$BF,$1D,$6B,$F5 ; $C3CE5A
    db $80,$DF,$27,$02,$3A,$00,$75,$8E,$D3,$AF,$3F,$74,$3C,$55,$FF,$95 ; $C3CE6A
    db $7C,$6B,$06,$00,$1D,$1D,$FF,$FD,$FE,$F7,$5B,$FF,$4F,$60,$67,$CD ; $C3CE7A
    db $DF,$96,$09,$1F,$FD,$24,$1F,$20,$1F,$EC,$71,$00,$01,$87,$10,$97 ; $C3CE8A
    db $0F,$BF,$1F,$BF,$5D,$25,$00,$BF,$43,$7F,$C3,$6B,$CC,$64,$DF,$1C ; $C3CE9A
    db $70,$DF,$60,$5D,$08,$40,$FF,$E7,$0F,$1D,$01,$D7,$EF,$27,$54,$FB ; $C3CEAA
    db $FD,$05,$3E,$65,$9B,$66,$C2,$9B,$E6,$1B,$56,$EB,$1E,$F3,$0E,$FB ; $C3CEBA
    db $04,$FB,$06,$2B,$1A,$C0,$01,$FC,$7F,$38,$7F,$02,$F7,$B8,$B2,$D8 ; $C3CECA
    db $F8,$E0,$20,$1F,$07,$FF,$06,$CC,$7B,$0F,$F7,$E7,$50,$1D,$DF,$B7 ; $C3CEDA
    db $CD,$FE,$E9,$0B,$00,$79,$FD,$1D,$A4,$F9,$13,$FB,$A7,$37,$2F,$2F ; $C3CEEA
    db $04,$FF,$C6,$FF,$E6,$FB,$72,$9F,$D8,$FF,$D5,$FF,$EB,$D7,$F0,$5F ; $C3CEFA
    db $C0,$95,$C0,$BF,$95,$94,$FA,$00,$00,$D5,$2A,$D5,$AA,$95,$EA,$3F ; $C3CF0A
    db $EA,$24,$7F,$95,$DF,$14,$1F,$7F,$3F,$17,$4C,$FE,$1F,$5C,$03,$AF ; $C3CF1A
    db $3D,$DF,$F9,$7F,$F0,$03,$45,$7F,$0F,$FE,$1F,$FE,$C2,$02,$FF,$20 ; $C3CF2A
    db $FF,$EF,$90,$01,$DD,$87,$DF,$7C,$07,$30,$CF,$22,$30,$8F,$F2,$DC ; $C3CF3A
    db $F8,$5F,$F8,$EC,$FF,$70,$E8,$1F,$FC,$03,$08,$FC,$FB,$FC,$F3,$02 ; $C3CF4A
    db $1F,$EC,$33,$E8,$37,$8D,$2F,$92,$FA,$05,$5F,$77,$9F,$FD,$01,$5F ; $C3CF5A
    db $EF,$18,$1F,$09,$4F,$7F,$76,$5F,$5E,$73,$30,$81,$DF,$19,$1F,$42 ; $C3CF6A
    db $80,$7F,$F8,$BF,$B5,$D8,$F0,$E8,$76,$00,$7D,$76,$0F,$7F,$07,$08 ; $C3CF7A
    db $F7,$EF,$B7,$37,$E0,$03,$7F,$3D,$F9,$D3,$3B,$56,$47,$7F,$5C,$06 ; $C3CF8A
    db $63,$FF,$C6,$FB,$62,$BF,$38,$DF,$D5,$FF,$CB,$F7,$F0,$DF,$C0,$FD ; $C3CF9A
    db $70,$82,$0C,$FF,$3F,$98,$48,$00,$C5,$7A,$0C,$31,$EE,$1F,$F8,$41 ; $C3CFAA
    db $23,$B8,$4F,$FF,$70,$9F,$78,$9F,$C0,$FF,$03,$56,$03,$FE,$57,$43 ; $C3CFBA
    db $43,$00,$BE,$DF,$A8,$3A,$57,$AA,$82,$A3,$57,$55,$B0,$65,$0F,$1F ; $C3CFCA
    db $06,$ED,$F1,$C4,$DF,$23,$7F,$E0,$19,$A6,$0D,$F2,$95,$00,$DA,$69 ; $C3CFDA
    db $2B,$1F,$0F,$F3,$04,$25,$FF,$6F,$02,$7F,$7F,$FD,$3F,$A8,$A7,$0E ; $C3CFEA
    db $30,$6F,$B0,$FF,$A8,$53,$0D,$E9,$59,$FC,$03,$5F,$76,$00,$BF,$40 ; $C3CFFA
    db $BF,$54,$AF,$F7,$AB,$F6,$2B,$5D,$54,$00,$5F,$B0,$95,$4F,$3F,$5D ; $C3D00A
    db $7F,$7F,$F2,$01,$1F,$95,$E1,$7A,$07,$FE,$5D,$AB,$77,$AA,$F7,$5D ; $C3D01A
    db $D5,$7F,$80,$FA,$13,$7F,$1F,$5F,$14,$A5,$7F,$0F,$1F,$8E,$43,$C2 ; $C3D02A
    db $7F,$F9,$BC,$BC,$B3,$7F,$06,$B0,$7F,$DC,$7B,$19,$01,$F7,$ED,$B7 ; $C3D03A
    db $3B,$D7,$B7,$CA,$F0,$02,$FF,$93,$2B,$7B,$27,$2B,$7F,$86,$25,$7F ; $C3D04A
    db $88,$0F,$FF,$9F,$19,$B0,$5F,$7F,$00,$7D,$AF,$04,$98,$3F,$91,$A0 ; $C3D05A
    db $FF,$7D,$54,$43,$BB,$FF,$13,$A9,$A7,$87,$A2,$6A,$19,$AF,$7F,$40 ; $C3D06A
    db $DD,$57,$A8,$FD,$A8,$DF,$75,$02,$40,$FF,$30,$75,$10,$DF,$55,$DF ; $C3D07A
    db $90,$00,$C2,$C2,$DD,$03,$17,$FD,$0E,$8A,$55,$9A,$DF,$9A,$CF,$55 ; $C3D08A
    db $45,$DF,$80,$C2,$00,$AC,$60,$A1,$1A,$27,$3C,$5F,$FA,$C0,$01,$FC ; $C3D09A
    db $FB,$FD,$03,$FF,$4F,$24,$19,$7F,$5F,$5F,$1B,$9F,$C2,$3B,$20,$3F ; $C3D0AA
    db $40,$1F,$5D,$5F,$DD,$BE,$10,$9D,$5E,$C1,$0F,$F8,$27,$FF,$6C,$FE ; $C3D0BA
    db $58,$6A,$FC,$FC,$03,$7F,$FA,$09,$04,$FA,$06,$FC,$6C,$7F,$01,$3F ; $C3D0CA
    db $75,$7F,$C9,$42,$DF,$F7,$D2,$8F,$C0,$EB,$81,$C5,$E0,$BF,$30,$DF ; $C3D0DA
    db $B7,$CF,$A0,$31,$00,$F8,$00,$FC,$FD,$F9,$F3,$FB,$E7,$F7,$AF,$3B ; $C3D0EA
    db $CF,$04,$B8,$CD,$39,$0A,$FE,$01,$18,$FF,$35,$FF,$EB,$F7,$90,$D0 ; $C3D0FA
    db $43,$CE,$F8,$01,$23,$30,$15,$15,$03,$B1,$CE,$CE,$09,$B1,$7F,$C6 ; $C3D10A
    db $19,$67,$3B,$15,$CB,$13,$FF,$D5,$E5,$06,$FF,$E0,$4F,$DD,$02,$BB ; $C3D11A
    db $5F,$C0,$07,$0D,$F0,$CF,$F0,$0F,$CC,$12,$FF,$F7,$1F,$B7,$06,$5F ; $C3D12A
    db $E0,$D4,$07,$5F,$FE,$07,$16,$5F,$3F,$FF,$8B,$FD,$97,$C7,$C7,$39 ; $C3D13A
    db $38,$57,$A8,$35,$DF,$6B,$BF,$C6,$BF,$CB,$7F,$07,$FE,$03,$C4,$00 ; $C3D14A
    db $3B,$D4,$18,$5F,$F8,$FA,$1D,$FB,$FA,$FE,$09,$84,$23,$98,$1F,$F9 ; $C3D15A
    db $0E,$F9,$F8,$04,$FF,$01,$FC,$22,$DD,$F3,$7F,$C0,$00,$00,$C1,$E0 ; $C3D16A
    db $EB,$F1,$E7,$F7,$E3,$1B,$F3,$47,$E3,$54,$5C,$1A,$BC,$DF,$30,$CE ; $C3D17A
    db $F9,$E4,$DB,$E2,$DF,$E6,$9B,$40,$BF,$84,$FB,$CF,$1F,$3D,$0F,$FB ; $C3D18A
    db $FB,$02,$FF,$48,$05,$BF,$D5,$6A,$F2,$6F,$A0,$5D,$15,$FF,$94,$F6 ; $C3D19A
    db $9A,$7C,$E0,$05,$F1,$FB,$FC,$06,$F8,$40,$FF,$81,$7F,$01,$70,$01 ; $C3D1AA
    db $05,$71,$DE,$00,$B1,$EE,$C0,$FC,$04,$81,$66,$66,$45,$5F,$91,$02 ; $C3D1BA
    db $D6,$E0,$BF,$2D,$BC,$C6,$00,$F7,$44,$A2,$00,$DF,$00,$BF,$05,$BF ; $C3D1CA
    db $9F,$3F,$1F,$BF,$00,$7F,$F0,$F8,$DD,$DC,$ED,$EE,$EF,$EE,$CF,$EE ; $C3D1DA
    db $CD,$EF,$C7,$E7,$A8,$E8,$70,$CF,$8D,$DA,$C4,$AF,$66,$CD,$07,$EC ; $C3D1EA
    db $05,$EE,$42,$A7,$A0,$68,$1F,$4C,$D5,$7B,$AB,$68,$AB,$3F,$C4,$1D ; $C3D1FA
    db $D5,$2A,$F3,$7F,$AB,$07,$3F,$DF,$DF,$3F,$3F,$E0,$04,$7F,$C1,$5F ; $C3D20A
    db $0D,$3E,$71,$5D,$FF,$40,$F9,$0F,$7F,$55,$F8,$07,$1F,$12,$56,$3E ; $C3D21A
    db $10,$FC,$04,$3A,$FF,$BD,$DF,$48,$B5,$ED,$BA,$EF,$2A,$7D,$45,$01 ; $C3D22A
    db $FF,$36,$7F,$1E,$DF,$5F,$F0,$03,$FF,$57,$00,$B8,$5E,$93,$5F,$9E ; $C3D23A
    db $D5,$9F,$C1,$3E,$DF,$40,$05,$13,$FF,$E7,$5A,$7F,$03,$FF,$E4,$3F ; $C3D24A
    db $CF,$F7,$0E,$01,$98,$EF,$5F,$44,$3C,$25,$FF,$3C,$D8,$C6,$84,$FF ; $C3D25A
    db $9E,$41,$FF,$1C,$23,$87,$80,$DF,$E8,$0F,$67,$FF,$01,$C7,$05,$5F ; $C3D26A
    db $52,$B3,$AA,$EA,$44,$B5,$A9,$FE,$D7,$AA,$FF,$00,$0F,$75,$30,$FF ; $C3D27A
    db $75,$03,$77,$1F,$80,$DF,$8A,$75,$BA,$DF,$3A,$1F,$CF,$FD,$05,$15 ; $C3D28A
    db $DF,$7F,$1E,$A8,$FF,$8F,$FF,$01,$3C,$5D,$09,$01,$7F,$E8,$70,$E8 ; $C3D29A
    db $9F,$AA,$49,$47,$B7,$87,$83,$FE,$57,$3A,$7F,$A0,$CD,$00,$65,$31 ; $C3D2AA
    db $EB,$77,$EF,$0C,$9A,$EB,$FB,$3B,$1F,$70,$1F,$9F,$BB,$65,$B8,$79 ; $C3D2BA
    db $9E,$75,$8B,$EF,$BA,$FB,$E5,$45,$FF,$10,$0F,$10,$29,$7F,$F8,$05 ; $C3D2CA
    db $21,$FF,$98,$1F,$7F,$70,$81,$B8,$60,$60,$92,$60,$84,$70,$8E,$70 ; $C3D2DA
    db $89,$74,$82,$70,$8F,$01,$80,$FF,$82,$FF,$1D,$8C,$FF,$8E,$4E,$BB ; $C3D2EA
    db $07,$71,$8F,$01,$80,$71,$11,$40,$8C,$28,$43,$08,$20,$0F,$5F,$01 ; $C3D2FA
    db $A7,$01,$D1,$81,$C1,$C0,$EB,$17,$F5,$38,$0C,$D7,$0F,$F7,$4E,$F2 ; $C3D30A
    db $A0,$FE,$D0,$FE,$80,$7F,$6A,$33,$9F,$04,$50,$BF,$20,$BF,$3F,$5C ; $C3D31A
    db $29,$3F,$00,$06,$1F,$8A,$F5,$90,$EF,$01,$08,$A0,$DF,$BF,$C0,$C0 ; $C3D32A
    db $1D,$0A,$FF,$BE,$9F,$88,$02,$FF,$08,$FF,$88,$FF,$FF,$70,$B1,$9E ; $C3D33A
    db $06,$ED,$88,$77,$08,$F7,$03,$57,$FF,$2B,$90,$AA,$A7,$FF,$07,$F5 ; $C3D34A
    db $0F,$6B,$2E,$87,$3C,$1F,$78,$FE,$E0,$FC,$81,$F0,$85,$B0,$02,$F9 ; $C3D35A
    db $05,$F2,$3A,$D5,$F4,$CB,$18,$F7,$60,$5F,$9B,$5C,$8D,$31,$9C,$DF ; $C3D36A
    db $1C,$9F,$3C,$BF,$0C,$3F,$7C,$1F,$BC,$1F,$03,$DC,$1F,$14,$8A,$BB ; $C3D37A
    db $39,$DF,$08,$A6,$BF,$03,$03,$BB,$FF,$31,$BA,$FF,$01,$F0,$01,$5F ; $C3D38A
    db $BB,$44,$31,$05,$CE,$02,$FD,$01,$FE,$8E,$5F,$BC,$B0,$27,$9C,$FF ; $C3D39A
    db $13,$0C,$FF,$FC,$38,$1F,$A9,$3F,$91,$61,$6F,$3F,$F9,$07,$00,$CD ; $C3D3AA
    db $35,$1F,$1E,$C5,$DF,$A3,$5F,$10,$20,$20,$ED,$0C,$7F,$78,$EE,$06 ; $C3D3BA
    db $1F,$C0,$F0,$F1,$06,$1F,$C0,$3F,$2F,$5F,$FF,$44,$03,$78,$F1,$F4 ; $C3D3CA
    db $FF,$44,$BB,$B0,$0D,$03,$0F,$14,$55,$FF,$A8,$1F,$71,$10,$03,$42 ; $C3D3DA
    db $81,$0F,$FC,$55,$AA,$A8,$57,$03,$1F,$10,$EF,$5D,$85,$3B,$42,$BD ; $C3D3EA
    db $70,$70,$30,$F8,$1C,$F8,$FC,$F8,$14,$28,$26,$E8,$64,$E8,$06,$28 ; $C3D3FA
    db $57,$BA,$37,$DD,$1F,$E4,$EF,$F7,$07,$FE,$D0,$FF,$BF,$05,$FF,$3E ; $C3D40A
    db $0E,$3E,$7E,$3F,$3E,$E6,$BF,$E1,$E0,$2F,$6F,$3F,$EF,$3F,$C0,$18 ; $C3D41A
    db $EC,$FF,$DE,$7F,$8E,$CB,$C1,$7F,$AA,$DF,$FE,$E5,$AF,$DC,$40,$FF ; $C3D42A
    db $05,$C0,$6E,$F0,$87,$F0,$0F,$F0,$07,$F0,$27,$F0,$8F,$F0,$1F,$E0 ; $C3D43A
    db $81,$9D,$65,$9F,$82,$7F,$05,$C2,$A5,$25,$DF,$E1,$AA,$7F,$85,$FF ; $C3D44A
    db $41,$07,$CD,$1F,$D2,$1F,$C0,$1F,$87,$1A,$C8,$1F,$E2,$00,$07,$81 ; $C3D45A
    db $FE,$4D,$F2,$92,$ED,$C0,$37,$90,$EF,$48,$F7,$AA,$72,$FD,$8F,$74 ; $C3D46A
    db $9B,$A0,$20,$FC,$59,$1D,$01,$07,$1F,$C8,$5F,$E3,$FE,$C3,$70,$8D ; $C3D47A
    db $DF,$EC,$B3,$0F,$EC,$33,$07,$F9,$04,$45,$FF,$1E,$5F,$04,$FF,$C0 ; $C3D48A
    db $01,$CF,$FF,$80,$E1,$57,$09,$FF,$2A,$FF,$11,$98,$DF,$84,$0F,$7F ; $C3D49A
    db $57,$04,$A8,$2A,$D5,$11,$EE,$31,$DF,$1F,$84,$7B,$2C,$1F,$04,$DF ; $C3D4AA
    db $87,$05,$82,$1F,$04,$FB,$41,$BE,$4F,$0D,$06,$C7,$5F,$F8,$FE,$E3 ; $C3D4BA
    db $06,$5F,$D8,$E7,$C7,$06,$1F,$01,$07,$99,$06,$1F,$01,$07,$01,$2C ; $C3D4CA
    db $7F,$01,$FD,$07,$7F,$CA,$19,$1F,$0D,$60,$F8,$02,$F4,$A5,$02,$01 ; $C3D4DA
    db $0F,$9F,$55,$AA,$AA,$55,$5C,$75,$63,$70,$5F,$35,$70,$78,$34,$23 ; $C3D4EA
    db $F8,$18,$00,$7F,$20,$24,$E8,$66,$E8,$84,$E8,$3B,$57,$BC,$07,$7F ; $C3D4FA
    db $E6,$EF,$FC,$07,$52,$81,$65,$0C,$BF,$83,$7F,$3E,$00,$3F,$76,$7E ; $C3D50A
    db $7F,$56,$60,$7F,$0E,$5F,$3F,$EC,$3F,$C7,$7F,$7F,$C1,$74,$E1,$AF ; $C3D51A
    db $FE,$5C,$6F,$2B,$DC,$9F,$EC,$06,$18,$A7,$F8,$06,$F0,$07,$F8,$07 ; $C3D52A
    db $01,$83,$0F,$E0,$05,$FF,$A2,$5F,$1B,$7D,$03,$03,$22,$FF,$85,$FF ; $C3D53A
    db $0B,$07,$27,$30,$DB,$1F,$D0,$6C,$7B,$03,$E0,$8C,$85,$0F,$00,$40 ; $C3D54A
    db $FF,$9B,$E4,$50,$EF,$88,$F7,$E7,$03,$43,$0D,$A1,$F1,$07,$7F,$00 ; $C3D55A
    db $C0,$FB,$06,$7F,$F6,$06,$1F,$01,$7E,$2F,$07,$7F,$0F,$2F,$DF,$0C ; $C3D56A
    db $3F,$02,$45,$DF,$25,$8F,$0C,$F3,$85,$DF,$08,$FF,$73,$4B,$F9,$25 ; $C3D57A
    db $7F,$F5,$F0,$07,$FF,$D5,$79,$EA,$06,$1F,$78,$F8,$07,$9F,$78,$87 ; $C3D58A
    db $3F,$00,$0A,$16,$0E,$7F,$00,$81,$F5,$38,$1F,$10,$1F,$04,$9C,$18 ; $C3D59A
    db $23,$F5,$0A,$1F,$10,$EF,$DB,$1F,$83,$11,$49,$14,$EF,$93,$7F,$1C ; $C3D5AA
    db $DD,$7F,$00,$FF,$08,$57,$BE,$37,$DE,$03,$1F,$E5,$EF,$FE,$03,$FD ; $C3D5BA
    db $A1,$FF,$BE,$28,$FF,$B6,$7F,$C0,$01,$C0,$20,$EC,$7F,$DE,$3B,$FF ; $C3D5CA
    db $DC,$27,$7F,$80,$00,$FF,$14,$78,$46,$F0,$05,$2B,$F0,$46,$3A,$7D ; $C3D5DA
    db $2F,$43,$01,$13,$EF,$45,$BF,$68,$57,$03,$CB,$7D,$2A,$87,$DF,$B5 ; $C3D5EA
    db $7F,$40,$1D,$DF,$1F,$6A,$1F,$D4,$1F,$E1,$60,$7D,$E8,$1F,$EA,$17 ; $C3D5FA
    db $C5,$37,$5F,$E0,$C3,$8A,$F5,$54,$EB,$89,$FE,$42,$FF,$A8,$F7,$5A ; $C3D60A
    db $FD,$F1,$06,$7F,$3D,$FF,$F8,$06,$7F,$3D,$C2,$FC,$06,$7F,$6F,$FC ; $C3D61A
    db $07,$7F,$4F,$16,$BF,$00,$02,$94,$FF,$40,$D6,$DF,$93,$FF,$40,$BF ; $C3D62A
    db $07,$6B,$50,$EF,$00,$A5,$E7,$24,$7F,$EF,$E3,$07,$7F,$CF,$FF,$E6 ; $C3D63A
    db $18,$7F,$59,$DF,$41,$5B,$5D,$DA,$02,$5F,$5D,$38,$05,$A7,$01,$E0 ; $C3D64A
    db $17,$FF,$76,$78,$3F,$FF,$EE,$E0,$56,$5F,$23,$23,$EF,$61,$EA,$80 ; $C3D65A
    db $FF,$57,$B9,$30,$DF,$1D,$E2,$E9,$E0,$19,$23,$FC,$61,$02,$BF,$DF ; $C3D66A
    db $EF,$1E,$1E,$FE,$B9,$FB,$84,$7B,$7C,$5F,$CC,$FF,$75,$1E,$D0,$4B ; $C3D67A
    db $81,$47,$18,$FE,$EF,$FC,$1F,$02,$56,$9F,$2E,$DF,$E7,$EF,$A4,$3B ; $C3D68A
    db $07,$77,$3F,$07,$9B,$E9,$FE,$7C,$DF,$BA,$CF,$3D,$75,$14,$19,$1F ; $C3D69A
    db $FA,$04,$7F,$3C,$1F,$FC,$04,$7F,$E8,$7B,$37,$1A,$FF,$DF,$38,$7F ; $C3D6AA
    db $39,$6F,$BF,$A3,$07,$01,$AE,$8B,$0A,$2B,$03,$2A,$AF,$5D,$55,$19 ; $C3D6BA
    db $13,$3F,$7B,$7B,$CE,$7F,$21,$C0,$7F,$FF,$DB,$FF,$7D,$BB,$09,$3D ; $C3D6CA
    db $DE,$1D,$E6,$E2,$7F,$BE,$C1,$B7,$1C,$E1,$04,$7F,$FC,$0F,$FE,$3C ; $C3D6DA
    db $7F,$CF,$19,$FE,$CF,$FC,$05,$0E,$3B,$24,$9C,$06,$70,$F8,$17,$F3 ; $C3D6EA
    db $AF,$1D,$F1,$5F,$0B,$63,$19,$8E,$A4,$FF,$38,$E7,$B7,$A3,$7F,$F0 ; $C3D6FA
    db $F3,$F7,$77,$00,$97,$65,$1C,$54,$FF,$78,$FF,$7C,$FF,$FB,$FE,$70 ; $C3D70A
    db $FF,$A7,$FE,$07,$F9,$3C,$DF,$93,$D0,$01,$00,$A0,$00,$54,$01,$FC ; $C3D71A
    db $7F,$07,$00,$FF,$D4,$01,$49,$7C,$D3,$0C,$7F,$A0,$7F,$D5,$41,$2F ; $C3D72A
    db $C0,$C7,$51,$01,$01,$00,$51,$24,$17,$81,$67,$34,$2E,$D1,$D7,$4F ; $C3D73A
    db $DB,$7F,$71,$3A,$06,$01,$0C,$75,$82,$7D,$EB,$7F,$0E,$11,$BF,$04 ; $C3D74A
    db $5F,$E5,$27,$57,$D6,$6B,$11,$C1,$87,$82,$2A,$D5,$91,$EE,$44,$FB ; $C3D75A
    db $A0,$FF,$52,$FF,$A9,$30,$1F,$54,$AB,$FF,$45,$A9,$19,$90,$01,$7F ; $C3D76A
    db $81,$01,$AB,$54,$45,$BB,$10,$EF,$00,$58,$01,$D8,$FF,$00,$A0,$C0 ; $C3D77A
    db $40,$00,$80,$00,$F0,$01,$97,$85,$FF,$D8,$A7,$56,$B5,$02,$27,$E0 ; $C3D78A
    db $7F,$C0,$2D,$10,$31,$43,$41,$7F,$0F,$01,$14,$80,$BE,$BF,$BF,$FB ; $C3D79A
    db $FF,$06,$F9,$40,$38,$BF,$20,$1D,$3E,$01,$C1,$7E,$81,$BE,$41,$EA ; $C3D7AA
    db $F7,$C0,$5F,$7F,$2A,$FF,$44,$3C,$7F,$12,$02,$5F,$80,$C1,$7F,$44 ; $C3D7BA
    db $BB,$12,$ED,$26,$5F,$1F,$71,$FF,$07,$51,$F2,$03,$1F,$FF,$EC,$84 ; $C3D7CA
    db $51,$44,$AE,$D1,$1F,$1F,$00,$70,$11,$00,$20,$00,$02,$02,$61,$04 ; $C3D7DA
    db $42,$80,$60,$80,$EE,$4E,$0D,$FF,$0E,$18,$AB,$32,$FD,$03,$B0,$FF ; $C3D7EA
    db $73,$90,$03,$6C,$1F,$D8,$00,$07,$00,$07,$34,$13,$5F,$2F,$BC,$6F ; $C3D7FA
    db $F8,$3B,$90,$00,$9E,$FF,$B8,$5B,$F8,$2F,$C8,$02,$57,$8D,$9C,$0B ; $C3D80A
    db $68,$07,$01,$33,$61,$81,$50,$81,$83,$03,$70,$80,$70,$82,$0C,$03 ; $C3D81A
    db $91,$FF,$B1,$37,$FE,$33,$A0,$FE,$03,$81,$B1,$A5,$80,$FF,$75,$7E ; $C3D82A
    db $6B,$6B,$E5,$CD,$E9,$C6,$CF,$CA,$CC,$4D,$C5,$C7,$6B,$03,$27,$B4 ; $C3D83A
    db $E0,$EB,$51,$C6,$32,$44,$F4,$C7,$31,$C9,$73,$C4,$38,$83,$FD,$8A ; $C3D84A
    db $30,$A6,$00,$C0,$C1,$5A,$01,$92,$ED,$ED,$02,$F1,$00,$08,$20,$A3 ; $C3D85A
    db $20,$3E,$E8,$0E,$25,$E0,$53,$06,$B3,$FF,$00,$1B,$E0,$00,$10,$58 ; $C3D86A
    db $B8,$98,$98,$31,$9C,$1C,$00,$7E,$1C,$30,$C3,$98,$77,$10,$EA,$1C ; $C3D87A
    db $D7,$18,$01,$5D,$C2,$7A,$84,$E0,$C4,$B1,$33,$71,$73,$71,$FB,$B0 ; $C3D88A
    db $DC,$E3,$BC,$D1,$F9,$41,$3F,$A1,$9F,$90,$4E,$D0,$DE,$D0,$5E,$B1 ; $C3D89A
    db $9F,$51,$0E,$6B,$C6,$1C,$94,$3F,$9C,$19,$01,$DF,$01,$8C,$C8,$03 ; $C3D8AA
    db $A6,$33,$29,$43,$83,$07,$09,$78,$47,$1F,$FF,$06,$07,$70,$35,$FF ; $C3D8BA
    db $BD,$5F,$2C,$F1,$B9,$FF,$00,$2E,$C8,$56,$8C,$AC,$12,$50,$2E,$90 ; $C3D8CA
    db $FF,$56,$9F,$0E,$6D,$9F,$72,$82,$B1,$45,$8E,$20,$FF,$B0,$E0,$80 ; $C3D8DA
    db $68,$FE,$DB,$1E,$FF,$66,$73,$06,$FF,$3C,$A4,$F8,$04,$FF,$82,$4C ; $C3D8EA
    db $FC,$FF,$C0,$00,$D8,$91,$EC,$EA,$82,$F1,$80,$89,$98,$FF,$3F,$E8 ; $C3D8FA
    db $1E,$27,$64,$D3,$02,$FF,$0E,$38,$18,$18,$1C,$C2,$00,$1E,$1C,$1F ; $C3D90A
    db $43,$1F,$18,$F7,$CF,$0E,$FF,$41,$05,$06,$FF,$61,$3E,$43,$FE,$FD ; $C3D91A
    db $83,$FF,$DC,$A7,$33,$9D,$FF,$64,$09,$87,$FF,$08,$1F,$BC,$01,$FF ; $C3D92A
    db $01,$01,$01,$F9,$07,$C9,$15,$01,$FE,$02,$D1,$B5,$09,$FE,$80,$D9 ; $C3D93A
    db $11,$10,$2B,$80,$DD,$FD,$25,$FB,$0A,$F7,$C2,$7F,$0C,$14,$EF,$5A ; $C3D94A
    db $EF,$19,$DE,$23,$EF,$54,$D7,$BF,$A8,$71,$43,$F2,$03,$DF,$A8,$F9 ; $C3D95A
    db $05,$DF,$0C,$04,$79,$40,$BC,$49,$20,$00,$9F,$10,$4F,$80,$2F,$44 ; $C3D96A
    db $10,$00,$3B,$AB,$61,$0E,$53,$6A,$FF,$95,$A1,$19,$2D,$C2,$51,$AB ; $C3D97A
    db $FF,$E1,$0D,$F0,$5A,$A0,$24,$C0,$00,$80,$50,$80,$60,$00,$80,$01 ; $C3D98A
    db $20,$80,$0F,$FF,$0F,$FB,$C2,$03,$3F,$DA,$BF,$E7,$F5,$3F,$F8,$3F ; $C3D99A
    db $F2,$9F,$EA,$68,$17,$F0,$0F,$4A,$05,$08,$07,$1C,$03,$0D,$00,$0C ; $C3D9AA
    db $01,$18,$03,$A1,$DC,$E0,$69,$01,$F8,$DF,$FA,$7F,$60,$F0,$20,$6F ; $C3D9BA
    db $F2,$BF,$38,$06,$C0,$1F,$C0,$05,$71,$5B,$0E,$20,$85,$0C,$E1,$00 ; $C3D9CA
    db $B5,$7C,$47,$FF,$87,$FF,$52,$FE,$75,$25,$06,$7F,$82,$FE,$7F,$17 ; $C3D9DA
    db $79,$FF,$68,$2E,$07,$F0,$06,$41,$1C,$02,$E1,$08,$43,$60,$0F,$00 ; $C3D9EA
    db $FE,$00,$7D,$C5,$FF,$C2,$FF,$94,$EE,$0D,$01,$75,$83,$5D,$0B,$2D ; $C3D9FA
    db $DE,$B5,$A6,$07,$8A,$DF,$01,$0B,$E3,$48,$BF,$A0,$87,$DF,$86,$FD ; $C3DA0A
    db $50,$EF,$B4,$EF,$41,$FE,$BC,$EF,$D5,$DE,$15,$1B,$28,$6F,$0C,$40 ; $C3DA1A
    db $3D,$04,$7A,$05,$09,$01,$F2,$10,$E5,$02,$E8,$44,$11,$81,$FF,$0D ; $C3DA2A
    db $FF,$1A,$FF,$AD,$D3,$F9,$95,$A7,$68,$70,$01,$00,$55,$80,$2A,$FA ; $C3DA3A
    db $06,$BE,$FF,$2A,$15,$EF,$3F,$01,$01,$A6,$A9,$0E,$01,$04,$A3,$C5 ; $C3DA4A
    db $1B,$05,$12,$FD,$B9,$A7,$F3,$30,$BD,$F7,$01,$0A,$F7,$04,$AB,$5D ; $C3DA5A
    db $39,$20,$C3,$03,$20,$AB,$E5,$D5,$73,$C2,$57,$57,$04,$AB,$0F,$5B ; $C3DA6A
    db $02,$01,$BB,$5F,$AB,$93,$DB,$C0,$7F,$51,$04,$BB,$82,$5C,$03,$01 ; $C3DA7A
    db $AE,$40,$97,$20,$8B,$0E,$23,$08,$A2,$40,$E3,$31,$2B,$1B,$AE,$3B ; $C3DA8A
    db $81,$55,$80,$E3,$2E,$C0,$15,$60,$0E,$6A,$80,$10,$40,$8E,$65,$80 ; $C3DA9A
    db $69,$30,$00,$0F,$FF,$75,$2F,$C5,$25,$3F,$FD,$7F,$C3,$FA,$7F,$B4 ; $C3DAAA
    db $3F,$FA,$1F,$F7,$E0,$1F,$64,$0B,$90,$B0,$7D,$28,$05,$04,$03,$01 ; $C3DABA
    db $08,$05,$3A,$01,$F0,$AE,$63,$E4,$76,$DF,$81,$18,$BF,$F8,$6F,$03 ; $C3DACA
    db $E8,$7F,$04,$58,$80,$2F,$80,$1A,$60,$81,$3F,$20,$8F,$09,$0E,$61 ; $C3DADA
    db $01,$AA,$8F,$F1,$7B,$82,$D9,$81,$35,$DC,$8C,$3B,$22,$FE,$A0,$6B ; $C3DAEA
    db $03,$11,$E8,$03,$B0,$81,$81,$F9,$08,$E3,$20,$15,$9C,$9F,$E2,$E1 ; $C3DAFA
    db $76,$82,$81,$07,$59,$FF,$E3,$FF,$91,$75,$29,$20,$3A,$20,$35,$E7 ; $C3DB0A
    db $80,$02,$5F,$00,$DF,$A1,$DF,$40,$AD,$39,$20,$08,$F7,$19,$50,$FD ; $C3DB1A
    db $13,$79,$0C,$05,$2B,$40,$30,$15,$40,$DF,$75,$00,$EB,$36,$04,$D1 ; $C3DB2A
    db $DB,$DF,$1C,$20,$8A,$05,$DF,$CE,$D7,$EB,$28,$39,$A0,$DF,$00,$76 ; $C3DB3A
    db $D5,$1F,$2B,$D5,$40,$3F,$7B,$80,$1B,$BF,$BF,$08,$9D,$8D,$01,$63 ; $C3DB4A
    db $C7,$04,$3A,$65,$FD,$46,$8B,$FD,$00,$CD,$01,$00,$09,$FE,$22,$DD ; $C3DB5A
    db $15,$FB,$61,$BF,$1C,$14,$FB,$21,$B3,$57,$41,$4F,$DF,$01,$54,$06 ; $C3DB6A
    db $EB,$DF,$54,$CB,$03,$5F,$15,$8F,$6A,$00,$A6,$08,$33,$04,$B1,$82 ; $C3DB7A
    db $18,$40,$8E,$20,$47,$00,$83,$6A,$70,$23,$33,$E8,$1D,$07,$18,$FF ; $C3DB8A
    db $8A,$FF,$47,$40,$83,$0F,$F0,$38,$03,$C0,$94,$40,$60,$80,$00,$AA ; $C3DB9A
    db $7D,$10,$2E,$80,$34,$18,$00,$4B,$FF,$9F,$FF,$1F,$FD,$1F,$F4,$BF ; $C3DBAA
    db $E9,$3F,$03,$F5,$5F,$B8,$72,$BF,$61,$16,$B4,$03,$18,$03,$2C,$03 ; $C3DBBA
    db $04,$03,$00,$07,$E3,$10,$05,$E4,$FF,$E2,$FF,$F1,$3F,$F9,$7F,$FA ; $C3DBCA
    db $2F,$F9,$5F,$F2,$3F,$80,$20,$1C,$40,$05,$2A,$40,$15,$1D,$10,$8A ; $C3DBDA
    db $04,$00,$FD,$40,$1F,$14,$C0,$43,$3A,$FE,$2A,$01,$15,$0A,$FF,$C2 ; $C3DBEA
    db $FE,$F5,$DF,$57,$17,$C3,$FE,$61,$1E,$14,$40,$A8,$04,$51,$10,$A3 ; $C3DBFA
    db $40,$0E,$00,$FC,$04,$F1,$50,$07,$D4,$97,$9F,$51,$06,$7F,$8E,$FF ; $C3DC0A
    db $5C,$47,$E9,$2B,$77,$00,$8C,$9B,$40,$E1,$7F,$3B,$C0,$7F,$AC,$77 ; $C3DC1A
    db $67,$01,$20,$C0,$0F,$77,$50,$BF,$0C,$FB,$D1,$03,$0F,$5F,$05,$19 ; $C3DC2A
    db $85,$FF,$50,$C7,$AD,$00,$CA,$21,$98,$40,$1A,$82,$31,$04,$E2,$08 ; $C3DC3A
    db $C5,$00,$82,$AD,$AD,$D5,$70,$98,$7F,$31,$FF,$11,$A2,$FF,$C5,$BF ; $C3DC4A
    db $7F,$17,$E3,$FF,$01,$5F,$FF,$BE,$DF,$FE,$0E,$FE,$22,$E7,$EE,$FE ; $C3DC5A
    db $E1,$07,$17,$54,$AB,$FF,$2E,$29,$FE,$53,$E8,$FF,$22,$DF,$EE,$BB ; $C3DC6A
    db $CF,$77,$1E,$EF,$7B,$FF,$F0,$F7,$37,$7F,$F7,$EB,$FD,$E0,$BE,$FF ; $C3DC7A
    db $2F,$18,$FF,$7B,$95,$A9,$27,$D8,$01,$F7,$18,$EF,$1F,$E0,$3F,$8F ; $C3DC8A
    db $D6,$1F,$F5,$00,$45,$17,$4B,$FF,$45,$E9,$16,$FF,$55,$FF,$30,$75 ; $C3DC9A
    db $00,$07,$C0,$E8,$E7,$FF,$DA,$70,$8F,$A0,$03,$5F,$AF,$7E,$B7,$ED ; $C3DCAA
    db $B1,$B0,$15,$67,$BD,$5A,$E0,$1A,$08,$E8,$EE,$A0,$21,$08,$08,$EB ; $C3DCBA
    db $0E,$EF,$AC,$FE,$23,$FD,$FB,$C2,$EE,$99,$EF,$58,$77,$EF,$08,$F7 ; $C3DCCA
    db $EB,$5E,$AC,$F7,$3A,$0F,$80,$9C,$2A,$8B,$80,$DD,$03,$3F,$1F,$C1 ; $C3DCDA
    db $DD,$03,$67,$FF,$25,$03,$1E,$D9,$04,$01,$3C,$08,$F7,$05,$0F,$5E ; $C3DCEA
    db $FA,$06,$77,$9F,$FF,$52,$9F,$53,$B5,$3A,$9F,$FF,$29,$FF,$B8,$45 ; $C3DCFA
    db $1F,$FF,$F9,$F0,$41,$60,$81,$C0,$C1,$80,$43,$80,$40,$1B,$1F,$EF ; $C3DD0A
    db $F6,$AF,$5E,$FF,$70,$BE,$01,$3C,$E7,$25,$03,$57,$43,$97,$21,$E9 ; $C3DD1A
    db $03,$DF,$1D,$FE,$55,$D0,$51,$1F,$EE,$BB,$CE,$D4,$8C,$DF,$C7,$0F ; $C3DD2A
    db $DF,$3E,$3F,$45,$BF,$14,$5C,$01,$07,$B4,$4F,$B0,$5F,$A0,$68,$EB ; $C3DD3A
    db $D0,$EF,$01,$80,$5F,$F2,$FE,$DF,$0A,$3F,$EE,$1F,$E7,$40,$01,$5F ; $C3DD4A
    db $F2,$EF,$00,$57,$AE,$6A,$97,$75,$8E,$76,$8B,$DF,$01,$04,$63,$7F ; $C3DD5A
    db $E0,$EC,$07,$7F,$06,$E0,$3F,$4F,$FF,$D7,$12,$36,$F7,$FF,$0F,$20 ; $C3DD6A
    db $C8,$02,$FD,$00,$00,$56,$EB,$1E,$F3,$0E,$FB,$04,$0D,$FB,$06,$FD ; $C3DD7A
    db $04,$27,$C2,$29,$82,$F6,$69,$DF,$D2,$BF,$82,$02,$7D,$FE,$EB,$FC ; $C3DD8A
    db $F7,$11,$01,$DF,$FA,$CF,$FD,$14,$04,$19,$2F,$9D,$19,$FE,$09,$CE ; $C3DD9A
    db $A9,$89,$03,$59,$EF,$32,$EF,$35,$DD,$A9,$1F,$0E,$FF,$55,$AA,$DF ; $C3DDAA
    db $A4,$71,$FE,$EE,$AA,$4C,$C3,$03,$0F,$25,$AF,$EA,$00,$53,$0A,$F5 ; $C3DDBA
    db $EA,$FF,$DC,$6F,$77,$1C,$43,$9F,$ED,$5B,$AF,$F6,$EC,$18,$BF,$15 ; $C3DDCA
    db $04,$FE,$0A,$63,$93,$03,$95,$03,$D6,$CF,$FB,$3F,$EF,$07,$F7,$FE ; $C3DDDA
    db $03,$FC,$77,$DF,$9D,$07,$60,$13,$7F,$F8,$F8,$71,$FB,$00,$1B,$8C ; $C3DDEA
    db $08,$7F,$78,$CC,$38,$03,$24,$DF,$E8,$17,$FB,$14,$00,$A4,$13,$EC ; $C3DDFA
    db $73,$8F,$78,$8F,$E0,$08,$CE,$D6,$DE,$CE,$8A,$7D,$C5,$5F,$3F,$FF ; $C3DE0A
    db $C6,$44,$BB,$DE,$E3,$CC,$73,$91,$7E,$E0,$7F,$CF,$70,$8F,$F0,$1E ; $C3DE1A
    db $EF,$51,$5F,$FC,$13,$FB,$FF,$18,$1F,$F7,$17,$FF,$9F,$19,$1F,$82 ; $C3DE2A
    db $17,$0F,$FF,$82,$16,$80,$FF,$70,$81,$60,$92,$30,$60,$84,$CA,$71 ; $C3DE3A
    db $89,$74,$6C,$83,$05,$01,$80,$E9,$B3,$01,$8C,$FF,$8E,$FE,$81,$FE ; $C3DE4A
    db $82,$D7,$C1,$C2,$01,$80,$11,$40,$E7,$CC,$A8,$C3,$68,$60,$8F,$DF ; $C3DE5A
    db $00,$BF,$00,$F1,$80,$E0,$C0,$7F,$20,$BF,$38,$57,$2F,$D7,$0E,$F3 ; $C3DE6A
    db $80,$D0,$EF,$80,$30,$7F,$6A,$33,$9F,$50,$BF,$CC,$13,$3F,$4B,$7F ; $C3DE7A
    db $00,$00,$3F,$00,$1F,$8A,$F5,$90,$EF,$C1,$01,$A0,$DF,$BF,$C0,$00 ; $C3DE8A
    db $5D,$0A,$FF,$BE,$9F,$74,$88,$96,$01,$88,$FF,$B4,$59,$9E,$ED,$0D ; $C3DE9A
    db $88,$77,$08,$F7,$03,$1A,$EE,$2C,$81,$BA,$41,$2F,$FD,$0F,$7B,$0E ; $C3DEAA
    db $E7,$3C,$1F,$F8,$FE,$A0,$FC,$01,$50,$05,$00,$32,$E1,$05,$F2,$3A ; $C3DEBA
    db $D5,$F4,$CB,$18,$F7,$A0,$5F,$21,$9C,$D4,$80,$BF,$3C,$BF,$0C,$3F ; $C3DECA
    db $7C,$1F,$BC,$62,$1F,$03,$DC,$1F,$29,$BB,$77,$39,$62,$FB,$88,$BF ; $C3DEDA
    db $27,$03,$AB,$AC,$D7,$5F,$25,$AB,$54,$AC,$D7,$5F,$75,$BC,$23,$27 ; $C3DEEA
    db $9C,$FF,$0C,$A8,$FF,$91,$1F,$A9,$C3,$3F,$91,$6F,$0A,$3F,$F9,$07 ; $C3DEFA
    db $00,$FC,$9F,$C6,$FF,$8E,$70,$FF,$7B,$82,$03,$FF,$A2,$67,$60,$FF ; $C3DF0A
    db $10,$40,$8C,$28,$0C,$42,$09,$21,$0F,$8D,$A7,$00,$00,$D1,$80,$C0 ; $C3DF1A
    db $C1,$7F,$61,$BF,$60,$39,$FD,$F6,$4E,$F3,$A0,$3C,$FF,$D0,$3B,$FF ; $C3DF2A
    db $C7,$07,$FD,$8F,$EB,$AE,$87,$8C,$02,$FF,$42,$B9,$FF,$BA,$F0,$63 ; $C3DF3A
    db $FF,$01,$02,$03,$A9,$DF,$00,$1D,$21,$33,$E6,$66,$EC,$FC,$F8,$B4 ; $C3DF4A
    db $E1,$DF,$41,$22,$FD,$65,$71,$BB,$DA,$E7,$81,$02,$1F,$FF,$60,$FA ; $C3DF5A
    db $9B,$C7,$62,$06,$2B,$07,$54,$8B,$00,$AB,$FF,$1F,$E0,$6A,$95,$82 ; $C3DF6A
    db $61,$7F,$3B,$83,$FD,$03,$D1,$C3,$75,$91,$10,$2A,$F0,$29,$F0,$F2 ; $C3DF7A
    db $E0,$51,$60,$55,$6E,$5E,$EE,$C8,$EA,$14,$EF,$20,$DF,$30,$CF,$E0 ; $C3DF8A
    db $DF,$40,$BF,$64,$9B,$6F,$9D,$E5,$DF,$8A,$2E,$98,$11,$82,$00,$41 ; $C3DF9A
    db $00,$87,$03,$C8,$00,$6A,$08,$A8,$08,$FB,$1B,$86,$7D,$FF,$BE,$F3 ; $C3DFAA
    db $7B,$E5,$37,$ED,$1D,$F0,$0F,$FD,$5F,$2E,$F3,$FE,$18,$0E,$BE,$83 ; $C3DFBA
    db $DF,$E0,$CF,$80,$8E,$00,$1C,$81,$18,$51,$F2,$0F,$B8,$65,$AE,$57 ; $C3DFCA
    db $9B,$E4,$CE,$31,$2D,$F3,$DB,$66,$16,$ED,$1F,$7B,$C3,$FE,$96,$DE ; $C3DFDA
    db $17,$8F,$2C,$0C,$5C,$1F,$B8,$3F,$7F,$97,$C1,$2C,$7A,$B7,$A2,$6F ; $C3DFEA
    db $61,$DE,$C8,$B7,$94,$6B,$28,$DF,$4F,$BF,$02,$31,$85,$63,$0B,$47 ; $C3DFFA
    db $1F,$EF,$3A,$DF,$5F,$57,$C9,$3E,$2E,$7F,$2C,$DB,$59,$B6,$32,$ED ; $C3E00A
    db $65,$DB,$0B,$B6,$D7,$3F,$6F,$BE,$1F,$FC,$F1,$F2,$FB,$A9,$3F,$DF ; $C3E01A
    db $FF,$9D,$DA,$C4,$80,$05,$57,$FF,$B0,$7F,$7A,$8F,$18,$EE,$9B,$DD ; $C3E02A
    db $EA,$97,$D4,$04,$2F,$48,$B7,$53,$AF,$C0,$7F,$CF,$E1,$CB,$80,$87 ; $C3E03A
    db $09,$00,$0B,$80,$17,$00,$7F,$8B,$F4,$CB,$34,$27,$F8,$07,$CB,$74 ; $C3E04A
    db $17,$E8,$81,$67,$1F,$02,$61,$1F,$98,$A0,$70,$DE,$AA,$7F,$1F,$B9 ; $C3E05A
    db $FF,$01,$FD,$D6,$80,$13,$60,$FF,$A0,$7F,$CF,$3F,$40,$1C,$2F,$80 ; $C3E06A
    db $1B,$03,$1D,$1F,$80,$EF,$60,$49,$7F,$30,$7F,$0C,$2F,$D0,$1B,$E4 ; $C3E07A
    db $03,$1F,$B8,$63,$E0,$AE,$D1,$DF,$20,$0D,$F2,$12,$FD,$11,$F2,$0B ; $C3E08A
    db $5F,$FE,$0F,$14,$7B,$FC,$04,$7F,$B8,$40,$F0,$1F,$EA,$1F,$FE,$0B ; $C3E09A
    db $DD,$26,$EC,$17,$94,$6F,$7F,$80,$01,$75,$03,$C0,$27,$FB,$FC,$16 ; $C3E0AA
    db $39,$2C,$F3,$0D,$5B,$E4,$F7,$C8,$5F,$73,$03,$FD,$07,$FC,$FF,$F8 ; $C3E0BA
    db $1F,$F0,$3D,$E2,$5B,$A5,$F7,$0B,$F8,$FF,$BE,$C1,$F3,$0F,$87,$78 ; $C3E0CA
    db $3E,$C1,$D0,$7A,$07,$3A,$F8,$67,$A6,$C2,$04,$CF,$68,$01,$8A,$FF ; $C3E0DA
    db $74,$FB,$E4,$CF,$32,$97,$67,$5C,$69,$A3,$3A,$C4,$35,$C8,$6B,$91 ; $C3E0EA
    db $5F,$A3,$9B,$67,$BB,$4F,$EF,$14,$5D,$A2,$BB,$45,$F7,$0A,$6F,$94 ; $C3E0FA
    db $DE,$23,$F8,$07,$B8,$47,$2B,$C0,$89,$07,$47,$3F,$77,$76,$24,$3D ; $C3E10A
    db $27,$01,$9F,$FD,$72,$E6,$9F,$D0,$7F,$10,$85,$08,$EE,$8E,$8B,$3E ; $C3E11A
    db $FE,$97,$F3,$76,$0E,$D7,$83,$7F,$17,$06,$1D,$8F,$7F,$3E,$CD,$73 ; $C3E12A
    db $EF,$47,$22,$06,$C3,$3D,$00,$1E,$38,$EF,$17,$01,$02,$83,$38,$FE ; $C3E13A
    db $E6,$FF,$F8,$2B,$F8,$FC,$DD,$87,$9F,$71,$82,$7F,$E6,$DB,$DD,$7E ; $C3E14A
    db $F8,$BF,$FC,$5F,$F2,$2F,$F8,$5F,$43,$BF,$CF,$F7,$EC,$01,$60,$5D ; $C3E15A
    db $00,$F3,$0D,$4E,$B1,$0B,$AD,$FA,$11,$EF,$79,$EF,$08,$00,$F4,$E1 ; $C3E16A
    db $CF,$FF,$77,$E7,$5D,$28,$F3,$D1,$26,$FA,$7F,$BC,$70,$7F,$5A,$BF ; $C3E17A
    db $6C,$9F,$36,$CF,$9C,$E3,$06,$FB,$81,$9C,$00,$7F,$1E,$20,$30,$EF ; $C3E18A
    db $60,$EF,$FF,$FE,$05,$85,$5F,$60,$BF,$5F,$EF,$8F,$1F,$18,$0D,$02 ; $C3E19A
    db $1F,$DF,$EF,$01,$82,$C3,$80,$9F,$B8,$E0,$E8,$EF,$EC,$A0,$9F,$C2 ; $C3E1AA
    db $3F,$E6,$38,$9B,$0D,$1F,$68,$07,$B7,$6C,$B3,$5F,$FF,$9F,$04,$3F ; $C3E1BA
    db $20,$07,$D7,$BF,$20,$01,$95,$4F,$FF,$27,$FF,$13,$DC,$84,$09,$04 ; $C3E1CA
    db $FF,$0B,$F7,$5D,$43,$78,$70,$8F,$38,$C7,$1C,$E3,$0F,$F1,$07,$F8 ; $C3E1DA
    db $03,$FC,$04,$99,$BF,$FF,$46,$F9,$3E,$2D,$61,$F0,$C9,$17,$FC,$4F ; $C3E1EA
    db $C0,$3B,$1E,$F9,$FF,$54,$77,$FE,$4E,$54,$3E,$DF,$3F,$47,$DF,$02 ; $C3E1FA
    db $DE,$DB,$89,$EC,$D9,$CF,$07,$01,$55,$1F,$01,$0F,$03,$70,$F9,$04 ; $C3E20A
    db $FB,$02,$57,$3E,$0F,$F0,$01,$FD,$F9,$49,$87,$57,$FF,$73,$19,$E7 ; $C3E21A
    db $8D,$FE,$F7,$F8,$3F,$C0,$1F,$E0,$7D,$83,$EF,$1F,$F7,$EF,$3D,$C2 ; $C3E22A
    db $AF,$50,$FF,$E0,$7F,$81,$E8,$14,$00,$39,$FD,$C7,$07,$FC,$67,$0F ; $C3E23A
    db $CF,$1D,$1F,$9F,$3F,$1C,$F8,$00,$5C,$FA,$A3,$FF,$D4,$FF,$7B,$B7 ; $C3E24A
    db $F7,$4D,$EF,$9A,$DF,$B0,$BF,$60,$7F,$D4,$FA,$A5,$D4,$2B,$EE,$DF ; $C3E25A
    db $C3,$03,$03,$7F,$E6,$19,$55,$AA,$00,$C9,$03,$7F,$A9,$F1,$2F,$60 ; $C3E26A
    db $1F,$A1,$5E,$04,$5A,$FF,$88,$93,$67,$1F,$53,$F5,$52,$01,$B2,$E3 ; $C3E27A
    db $03,$40,$AC,$19,$C0,$29,$FA,$F5,$F5,$4A,$E8,$18,$17,$B2,$4D,$03 ; $C3E28A
    db $40,$BF,$3B,$A8,$57,$99,$0F,$B2,$39,$0D,$20,$85,$47,$48,$BF,$8A ; $C3E29A
    db $5D,$20,$7D,$47,$07,$0F,$DD,$55,$04,$3D,$0F,$55,$06,$9B,$FB,$01 ; $C3E2AA
    db $1F,$C0,$04,$1F,$01,$02,$56,$FE,$FA,$EA,$1F,$7F,$EF,$01,$43,$7F ; $C3E2BA
    db $56,$75,$93,$0F,$7F,$6B,$01,$A3,$7F,$2A,$1F,$BE,$81,$7F,$A5,$EF ; $C3E2CA
    db $EA,$5B,$BF,$2B,$1F,$BE,$03,$BF,$A5,$FF,$EA,$7F,$CF,$E8,$03,$7F ; $C3E2DA
    db $1D,$57,$FD,$01,$64,$AF,$A8,$7F,$5C,$AC,$3B,$FB,$FE,$A9,$54,$AB ; $C3E2EA
    db $01,$FE,$05,$FA,$00,$05,$EF,$3A,$E5,$E1,$D5,$75,$40,$BB,$FF,$DF ; $C3E2FA
    db $37,$04,$E1,$3E,$84,$7B,$40,$9D,$C9,$43,$DF,$02,$B0,$5B,$1C,$3E ; $C3E30A
    db $34,$04,$FE,$C6,$E6,$C2,$DF,$A4,$DF,$FF,$FE,$03,$1C,$EB,$34,$EF ; $C3E31A
    db $C6,$79,$AC,$BF,$B8,$63,$00,$3F,$FF,$F6,$F0,$28,$F3,$28,$77,$38 ; $C3E32A
    db $F7,$10,$01,$77,$00,$BC,$9B,$22,$D0,$6F,$08,$3B,$30,$CF,$C3,$E7 ; $C3E33A
    db $43,$7F,$21,$A0,$3F,$1F,$FF,$4E,$BF,$0C,$29,$43,$FC,$0F,$12,$EC ; $C3E34A
    db $15,$A0,$2A,$5F,$40,$C1,$17,$18,$7F,$7F,$F3,$03,$1D,$D6,$1F,$45 ; $C3E35A
    db $F7,$60,$01,$9C,$41,$02,$93,$CB,$DF,$E2,$87,$FE,$1F,$3F,$0D,$DF ; $C3E36A
    db $1A,$F8,$14,$FB,$30,$F7,$30,$58,$1B,$E2,$01,$1D,$17,$EC,$0D,$FA ; $C3E37A
    db $18,$E7,$82,$5D,$30,$DF,$30,$EF,$D4,$80,$7F,$70,$F0,$58,$FF,$E4 ; $C3E38A
    db $CF,$83,$5A,$DF,$00,$BF,$70,$EF,$58,$EF,$C4,$3F,$1E,$83,$FF,$61 ; $C3E39A
    db $05,$5D,$C1,$00,$41,$BE,$0E,$FD,$FB,$02,$61,$00,$8B,$84,$BF,$88 ; $C3E3AA
    db $BD,$D0,$FB,$F0,$4A,$F7,$1D,$C3,$FF,$87,$07,$88,$7F,$50,$41,$A1 ; $C3E3BA
    db $0F,$F9,$1E,$FD,$E1,$09,$3E,$2F,$0A,$11,$FB,$05,$77,$BF,$04,$DB ; $C3E3CA
    db $06,$BF,$80,$1F,$81,$FC,$03,$F8,$87,$F0,$07,$0F,$E0,$1F,$C0,$3F ; $C3E3DA
    db $78,$E8,$54,$4A,$00,$CB,$FB,$63,$DF,$AB,$FF,$45,$EC,$12,$38,$63 ; $C3E3EA
    db $03,$40,$00,$00,$F3,$06,$FF,$FF,$DE,$19,$5F,$18,$1F,$72,$FB,$59 ; $C3E3FA
    db $CF,$03,$0C,$3B,$5F,$FB,$DB,$34,$07,$03,$AE,$00,$0C,$9D,$05,$1F ; $C3E40A
    db $51,$52,$8F,$60,$00,$2D,$05,$48,$00,$01,$7E,$30,$00,$7C,$15,$4A ; $C3E41A
    db $B5,$07,$B8,$40,$F9,$07,$FA,$4F,$B7,$0F,$FB,$5E,$A7,$3C,$CF,$0B ; $C3E42A
    db $31,$FA,$00,$06,$E9,$00,$E4,$00,$D0,$2A,$3B,$00,$40,$01,$FF,$CA ; $C3E43A
    db $FA,$5F,$E9,$FF,$E4,$1F,$FD,$88,$53,$5C,$79,$35,$00,$74,$00,$78 ; $C3E44A
    db $80,$70,$00,$68,$80,$50,$80,$64,$07,$C3,$79,$97,$74,$BF,$78,$DF ; $C3E45A
    db $70,$BF,$68,$FF,$50,$BF,$10,$23,$70,$FF,$92,$F3,$03,$00,$80,$F9 ; $C3E46A
    db $08,$41,$48,$D0,$91,$5F,$0A,$00,$0F,$00,$03,$60,$21,$B2,$AD,$FF ; $C3E47A
    db $DA,$5D,$2B,$F6,$0E,$F8,$5D,$01,$2E,$00,$01,$04,$E9,$02,$F1,$04 ; $C3E48A
    db $F9,$06,$CC,$03,$07,$10,$60,$7D,$11,$EC,$5B,$E2,$BD,$01,$5C,$BB ; $C3E49A
    db $16,$E9,$1C,$EB,$C2,$9E,$07,$E7,$07,$5F,$7E,$00,$08,$BF,$00,$18 ; $C3E4AA
    db $3F,$11,$3F,$00,$3F,$01,$1F,$9A,$03,$E3,$9F,$3E,$C1,$33,$EC,$28 ; $C3E4BA
    db $F7,$19,$EE,$3C,$FB,$1F,$E8,$3C,$FF,$9F,$F0,$00,$F8,$80,$5E,$FE ; $C3E4CA
    db $3A,$7E,$FE,$01,$A3,$A0,$67,$EF,$6F,$6F,$C0,$07,$54,$AB,$7E,$AB ; $C3E4DA
    db $1D,$7C,$D3,$69,$60,$5F,$6F,$BA,$4F,$7D,$F5,$1C,$98,$7F,$33,$7E ; $C3E4EA
    db $7F,$18,$11,$BF,$04,$C1,$AF,$00,$19,$57,$00,$AB,$71,$7F,$70,$AA ; $C3E4FA
    db $7E,$D5,$91,$EE,$44,$FB,$A0,$FF,$52,$FF,$A9,$AB,$1F,$7F,$AF,$06 ; $C3E50A
    db $60,$7F,$5A,$AF,$F5,$FB,$02,$3F,$7F,$19,$87,$FF,$7F,$F1,$06,$DF ; $C3E51A
    db $D4,$06,$D9,$15,$FE,$2B,$E0,$0F,$02,$DE,$EF,$B5,$CE,$73,$10,$AC ; $C3E52A
    db $FF,$7D,$EF,$06,$87,$FF,$BA,$EF,$D8,$07,$FF,$EF,$F7,$06,$7F,$3C ; $C3E53A
    db $1F,$02,$7F,$07,$2F,$07,$14,$9D,$FC,$34,$E4,$EC,$C7,$9C,$CF,$F4 ; $C3E54A
    db $9F,$D4,$B7,$DC,$B7,$07,$FB,$1F,$E6,$3F,$CF,$FF,$94,$FF,$2C,$F7 ; $C3E55A
    db $0C,$FF,$9C,$FE,$95,$C1,$C2,$D2,$7E,$CE,$7E,$47,$FF,$66,$FE,$72 ; $C3E56A
    db $FF,$D2,$FF,$D3,$FF,$C0,$BF,$F2,$5F,$FE,$4B,$BD,$46,$3E,$E3,$3A ; $C3E57A
    db $C7,$98,$77,$80,$F5,$35,$9F,$74,$DB,$70,$7F,$77,$3C,$72,$E7,$00 ; $C3E58A
    db $77,$E3,$9C,$BC,$43,$FF,$88,$B6,$CB,$58,$A7,$2C,$FB,$30,$FF,$5F ; $C3E59A
    db $EF,$D2,$D5,$9E,$70,$E7,$21,$1E,$FF,$75,$7E,$3D,$83,$E1,$65,$FF ; $C3E5AA
    db $75,$70,$BA,$C5,$7E,$48,$F7,$16,$ED,$6E,$B9,$1C,$F3,$DF,$C0,$7F ; $C3E5BA
    db $0F,$17,$F8,$32,$E1,$02,$EF,$C7,$9A,$CD,$F7,$9B,$60,$7F,$E0,$3F ; $C3E5CA
    db $CC,$FF,$07,$93,$FF,$28,$FE,$03,$52,$B8,$94,$01,$C1,$E2,$D2,$3E ; $C3E5DA
    db $0E,$FE,$C7,$C7,$7F,$F2,$10,$7F,$53,$7F,$EA,$00,$3F,$FD,$86,$7E ; $C3E5EA
    db $A3,$FA,$87,$70,$D8,$7F,$16,$FD,$00,$9E,$FD,$CE,$FD,$E6,$FD,$75 ; $C3E5FA
    db $7C,$71,$3F,$7F,$EF,$C2,$7F,$BF,$44,$E1,$FF,$8C,$B7,$CC,$5B,$A6 ; $C3E60A
    db $2B,$FC,$33,$EC,$4C,$FF,$9C,$B5,$77,$01,$05,$6F,$FF,$DE,$7F,$FE ; $C3E61A
    db $05,$7F,$A0,$5F,$B5,$CF,$7A,$95,$6E,$A8,$57,$96,$6F,$AE,$7D,$9C ; $C3E62A
    db $7B,$5F,$FF,$5A,$6E,$4C,$EE,$64,$F0,$E0,$FD,$30,$3F,$30,$BE,$F6 ; $C3E63A
    db $F8,$00,$FF,$41,$FE,$4D,$F7,$72,$CF,$FD,$30,$E2,$3F,$85,$F0,$6F ; $C3E64A
    db $B0,$B8,$47,$83,$FC,$08,$0C,$0C,$5F,$07,$AF,$01,$DF,$00,$7F,$71 ; $C3E65A
    db $C7,$03,$0C,$FB,$70,$5E,$A5,$A6,$5B,$DB,$24,$74,$8B,$F9,$06,$D4 ; $C3E66A
    db $2B,$C7,$03,$0C,$5F,$E0,$06,$9F,$09,$FE,$FD,$AE,$11,$FE,$57,$E8 ; $C3E67A
    db $8E,$9F,$BB,$CF,$F2,$7F,$39,$79,$76,$C6,$03,$4E,$FC,$AB,$9F,$51 ; $C3E68A
    db $87,$AE,$22,$DF,$C5,$BA,$77,$CB,$CD,$7A,$F0,$FF,$DF,$50,$25,$7E ; $C3E69A
    db $FA,$02,$28,$99,$03,$DE,$07,$39,$BF,$74,$7F,$FA,$00,$B0,$3F,$7F ; $C3E6AA
    db $DF,$FF,$37,$7F,$35,$9F,$AF,$B6,$41,$20,$FC,$FE,$2A,$0B,$7F,$AA ; $C3E6BA
    db $55,$84,$FA,$05,$FA,$AF,$FB,$DC,$F4,$7F,$F4,$FF,$EE,$F9,$BD,$B9 ; $C3E6CA
    db $71,$DF,$01,$3F,$63,$46,$2F,$60,$33,$57,$7C,$9F,$F3,$1E,$50,$1F ; $C3E6DA
    db $5F,$F2,$FE,$94,$26,$5F,$A0,$9F,$01,$D2,$ED,$BE,$FB,$7C,$D7,$29 ; $C3E6EA
    db $DE,$F7,$E5,$8C,$7F,$F5,$9F,$5A,$5C,$DF,$35,$CF,$CF,$C7,$87,$E3 ; $C3E6FA
    db $C3,$F1,$E1,$F8,$F0,$FC,$F8,$64,$C7,$5A,$AD,$AF,$34,$B7,$5A,$5B ; $C3E70A
    db $AD,$AD,$D6,$D6,$6B,$EB,$35,$F5,$5A,$C1,$04,$7F,$7E,$7F,$3F,$3F ; $C3E71A
    db $E0,$01,$7F,$FF,$B4,$7F,$4E,$10,$B9,$AF,$DF,$94,$F0,$04,$7F,$FA ; $C3E72A
    db $3D,$7D,$1C,$9E,$DE,$FF,$7F,$48,$1F,$7F,$1A,$01,$1E,$8E,$0E,$DE ; $C3E73A
    db $8F,$EF,$CF,$61,$FF,$DA,$6D,$70,$6E,$B7,$AA,$57,$4B,$BE,$B4,$FB ; $C3E74A
    db $CF,$FE,$DF,$FD,$D8,$7F,$AD,$5F,$BF,$8F,$6D,$9F,$E8,$A1,$74,$8B ; $C3E75A
    db $74,$00,$9B,$E4,$1F,$E4,$3F,$C0,$3F,$C4,$E1,$03,$C0,$7F,$F7,$07 ; $C3E76A
    db $DE,$AF,$DB,$6F,$FD,$63,$E2,$CD,$FF,$48,$35,$C3,$FB,$FF,$BF,$9F ; $C3E77A
    db $32,$08,$DF,$31,$C0,$1D,$37,$8C,$BE,$E0,$1F,$01,$70,$7A,$8F,$08 ; $C3E78A
    db $3F,$0E,$33,$10,$F8,$27,$2F,$FF,$17,$88,$FD,$79,$FE,$08,$1F,$02 ; $C3E79A
    db $D4,$DC,$0B,$63,$03,$FF,$96,$FF,$2D,$FF,$53,$FE,$0F,$F8,$FF,$D1 ; $C3E7AA
    db $FB,$FF,$F9,$FF,$E9,$5D,$FE,$AE,$01,$31,$AE,$F9,$B3,$FD,$77,$D8 ; $C3E7BA
    db $EF,$98,$FF,$3C,$DF,$78,$BF,$CA,$7F,$90,$D7,$57,$FC,$1C,$23,$F7 ; $C3E7CA
    db $22,$5E,$F3,$BB,$FC,$8E,$F1,$7D,$A7,$F6,$DD,$1C,$F3,$F9,$46,$F7 ; $C3E7DA
    db $8A,$FD,$0A,$77,$E8,$BF,$40,$B6,$FD,$63,$FD,$CF,$F9,$A7,$D9,$5D ; $C3E7EA
    db $93,$BF,$23,$5B,$47,$BF,$87,$B7,$5A,$67,$BA,$DF,$63,$BE,$C5,$DE ; $C3E7FA
    db $25,$BE,$49,$5D,$AB,$BC,$53,$D6,$40,$5C,$84,$E0,$EF,$89,$A7,$89 ; $C3E80A
    db $FF,$17,$7E,$FB,$7E,$1E,$F7,$05,$FE,$60,$9F,$6F,$FA,$6F,$F4,$1F ; $C3E81A
    db $EF,$01,$F2,$F2,$FE,$F6,$02,$20,$20,$EE,$EE,$FF,$EE,$A9,$DF,$08 ; $C3E82A
    db $F2,$0F,$F6,$0B,$F8,$FF,$EE,$31,$EE,$09,$B1,$DF,$EF,$C2,$93,$3F ; $C3E83A
    db $A0,$03,$3F,$42,$BD,$7E,$FF,$7C,$A2,$85,$D9,$DF,$02,$3C,$FF,$20 ; $C3E84A
    db $A3,$1F,$F7,$3A,$0F,$FD,$AB,$5F,$57,$55,$5F,$04,$DD,$23,$2D,$0B ; $C3E85A
    db $7F,$43,$19,$00,$A8,$41,$07,$55,$AB,$0B,$F4,$40,$FF,$01,$A1,$B9 ; $C3E86A
    db $57,$46,$7F,$59,$01,$FF,$DF,$77,$EF,$36,$78,$7F,$D3,$BD,$18,$5F ; $C3E87A
    db $E0,$BF,$00,$F0,$1F,$7F,$C7,$3F,$E1,$38,$EF,$CD,$0B,$0A,$23,$EE ; $C3E88A
    db $02,$3F,$E8,$AD,$0A,$F5,$01,$59,$FE,$3F,$14,$22,$DF,$A8,$9F,$3B ; $C3E89A
    db $03,$45,$1F,$3E,$53,$04,$1F,$7B,$00,$58,$01,$FF,$05,$3F,$BF,$03 ; $C3E8AA
    db $06,$EF,$3F,$AA,$1A,$3A,$1F,$7F,$FE,$D7,$03,$1F,$C3,$CB,$A0,$FF ; $C3E8BA
    db $54,$DE,$24,$3F,$17,$1F,$4A,$02,$FE,$B9,$01,$1F,$07,$02,$FD,$04 ; $C3E8CA
    db $FB,$01,$87,$04,$3F,$F5,$00,$EA,$87,$04,$3F,$35,$FF,$6A,$BD,$26 ; $C3E8DA
    db $BF,$17,$1F,$F2,$0A,$5F,$02,$AA,$1D,$B7,$5E,$07,$D1,$7F,$F7,$B3 ; $C3E8EA
    db $0A,$20,$1F,$A2,$82,$1F,$BE,$FF,$FB,$0B,$0C,$5F,$1D,$1F,$EA,$6B ; $C3E8FA
    db $45,$C8,$B7,$19,$7E,$BD,$B0,$F2,$EA,$95,$F5,$11,$0A,$C8,$37,$EC ; $C3E90A
    db $C1,$11,$00,$D5,$ED,$67,$B9,$0F,$EC,$F2,$D5,$6B,$2A,$86,$53,$7B ; $C3E91A
    db $E0,$08,$00,$80,$FF,$2A,$FF,$72,$5D,$7B,$9E,$00,$0B,$A0,$82,$12 ; $C3E92A
    db $DD,$45,$0A,$FB,$47,$3E,$43,$FD,$55,$96,$93,$AF,$13,$52,$C2,$01 ; $C3E93A
    db $02,$55,$AA,$A2,$5D,$08,$F7,$C7,$5F,$BA,$1F,$1F,$80,$01,$01,$0F ; $C3E94A
    db $FF,$04,$BA,$45,$AD,$1F,$4F,$A1,$73,$CD,$70,$E8,$C1,$F4,$A8,$FC ; $C3E95A
    db $56,$FF,$8B,$FF,$45,$FF,$8A,$C7,$1C,$FE,$80,$42,$DF,$A8,$E7,$57 ; $C3E96A
    db $56,$A9,$8B,$74,$45,$BA,$8A,$75,$04,$FB,$A2,$14,$43,$08,$E2,$14 ; $C3E97A
    db $53,$00,$AA,$C0,$1F,$80,$3B,$D4,$7D,$A6,$01,$13,$B9,$7D,$41,$38 ; $C3E98A
    db $20,$FF,$A0,$15,$01,$08,$A0,$40,$14,$03,$41,$08,$76,$A8,$A0,$F8 ; $C3E99A
    db $09,$BF,$C3,$52,$20,$88,$44,$35,$03,$8A,$03,$6F,$C0,$08,$7D,$1F ; $C3E9AA
    db $38,$21,$FF,$80,$6A,$80,$75,$16,$70,$01,$01,$5F,$80,$C1,$C2,$7F ; $C3E9BA
    db $6A,$FF,$75,$D8,$F7,$7F,$DA,$00,$7F,$F4,$D8,$EF,$BC,$F3,$F8,$DF ; $C3E9CA
    db $E0,$51,$A0,$00,$F0,$28,$00,$F8,$03,$FF,$81,$03,$A0,$FF,$70,$F0 ; $C3E9DA
    db $FF,$F8,$BF,$F0,$6F,$78,$97,$2B,$D5,$08,$F7,$E3,$33,$4F,$BD,$FD ; $C3E9EA
    db $2E,$03,$88,$3D,$15,$88,$11,$99,$33,$39,$7F,$BC,$F7,$CE,$FB,$0E ; $C3E9FA
    db $FD,$02,$FF,$0C,$83,$7F,$33,$EE,$39,$C6,$8E,$37,$F2,$5C,$03,$F0 ; $C3EA0A
    db $A5,$80,$2A,$D0,$27,$F0,$2B,$20,$FF,$50,$AF,$D2,$3F,$D0,$FF,$85 ; $C3EA1A
    db $FF,$AA,$5F,$D7,$2F,$6B,$9D,$20,$5F,$10,$00,$05,$0E,$00,$0B,$00 ; $C3EA2A
    db $27,$A7,$FF,$A0,$2D,$28,$17,$8B,$BB,$9B,$0B,$C0,$93,$0F,$FE,$5F ; $C3EA3A
    db $FC,$0E,$EE,$51,$2D,$D6,$A6,$B3,$D6,$55,$9D,$98,$A7,$41,$7F,$E8 ; $C3EA4A
    db $B8,$F1,$6C,$FF,$6E,$D5,$6E,$9D,$0E,$FB,$8E,$75,$5E,$A7,$08,$B3 ; $C3EA5A
    db $00,$77,$FA,$7F,$C3,$03,$FF,$1C,$A2,$39,$E3,$A8,$F7,$75,$EE,$BA ; $C3EA6A
    db $CD,$7B,$E4,$B5,$EA,$E3,$BD,$DD,$62,$5D,$A2,$B5,$33,$3F,$D3,$80 ; $C3EA7A
    db $7D,$00,$79,$81,$71,$03,$21,$BD,$03,$07,$FF,$9E,$6F,$45,$BA,$BC ; $C3EA8A
    db $4F,$78,$DF,$F1,$7E,$21,$FE,$B3,$4F,$07,$FA,$EC,$02,$98,$03,$00 ; $C3EA9A
    db $40,$13,$00,$04,$08,$F2,$06,$5D,$02,$76,$6D,$BF,$16,$1A,$F6,$0C ; $C3EAAA
    db $77,$BF,$80,$D3,$00,$11,$1B,$00,$18,$91,$25,$20,$99,$02,$10,$9F ; $C3EABA
    db $11,$F6,$06,$21,$E1,$80,$5A,$25,$5F,$3F,$07,$08,$78,$DF,$05,$00 ; $C3EACA
    db $01,$01,$F3,$06,$7D,$01,$ED,$17,$3F,$E3,$01,$01,$EC,$16,$FF,$93 ; $C3EADA
    db $7D,$D7,$12,$1F,$18,$81,$02,$F3,$FE,$0E,$BE,$83,$CF,$E1,$CB,$80 ; $C3EAEA
    db $87,$00,$0B,$80,$17,$ED,$5F,$C3,$AE,$57,$8B,$F4,$CB,$34,$27,$F8 ; $C3EAFA
    db $CB,$74,$17,$E8,$0E,$1F,$03,$FE,$02,$E8,$40,$98,$A0,$70,$04,$EF ; $C3EB0A
    db $20,$EF,$3F,$FF,$BC,$1F,$30,$FD,$FE,$C7,$60,$FF,$A0,$01,$7F,$EF ; $C3EB1A
    db $1F,$40,$2F,$80,$1B,$C5,$03,$1F,$C3,$C0,$EF,$7E,$FF,$30,$70,$20 ; $C3EB2A
    db $7F,$2F,$D0,$1B,$E4,$00,$03,$1F,$E0,$EA,$95,$FE,$21,$0F,$61,$E7 ; $C3EB3A
    db $2D,$11,$F2,$1B,$80,$5F,$FE,$0F,$FF,$1E,$FE,$8D,$19,$C1,$03,$03 ; $C3EB4A
    db $CF,$F0,$70,$1F,$FA,$0F,$CE,$3B,$ED,$16,$9E,$65,$81,$7E,$FC,$EE ; $C3EB5A
    db $5F,$83,$7F,$07,$40,$FF,$DF,$30,$80,$8F,$3E,$31,$01,$88,$FF,$7D ; $C3EB6A
    db $19,$04,$0C,$FF,$FE,$43,$FE,$00,$FA,$FD,$FB,$FC,$F4,$FF,$F4,$FB ; $C3EB7A
    db $FA,$3C,$30,$FF,$11,$36,$08,$88,$3B,$ED,$4C,$F7,$5A,$1E,$10,$08 ; $C3EB8A
    db $55,$FF,$03,$80,$7E,$FD,$37,$C9,$88,$7F,$4C,$BB,$F7,$EF,$94,$3F ; $C3EB9A
    db $AA,$54,$3F,$00,$00,$0E,$07,$10,$30,$98,$C0,$01,$00,$02,$DF,$96 ; $C3EBAA
    db $17,$60,$FE,$F3,$DC,$27,$F8,$30,$C0,$5A,$F7,$67,$DC,$02,$FD,$3B ; $C3EBBA
    db $68,$E8,$11,$43,$D5,$01,$2F,$19,$F5,$0E,$ED,$7F,$C7,$06,$C0,$0B ; $C3EBCA
    db $03,$98,$1F,$05,$F1,$32,$02,$03,$D1,$00,$FE,$05,$A1,$A8,$7F,$00 ; $C3EBDA
    db $FC,$60,$E0,$02,$FE,$0D,$FD,$04,$EB,$C6,$01,$59,$C1,$5F,$C0,$11 ; $C3EBEA
    db $18,$32,$97,$07,$34,$0C,$00,$A7,$F7,$CC,$C1,$FE,$FD,$EF,$77,$C8 ; $C3EBFA
    db $3F,$18,$7E,$DF,$07,$C8,$7F,$A7,$58,$30,$00,$D6,$D8,$20,$22,$6F ; $C3EC0A
    db $65,$EF,$86,$27,$04,$00,$2A,$7F,$FD,$7E,$D8,$27,$22,$FD,$1C,$65 ; $C3EC1A
    db $BA,$DF,$9F,$C5,$DE,$2A,$D5,$C3,$D0,$00,$A8,$83,$33,$F0,$60,$05 ; $C3EC2A
    db $00,$7F,$50,$C0,$1D,$03,$40,$0A,$F1,$5D,$7F,$0C,$0F,$10,$65,$20 ; $C3EC3A
    db $47,$3F,$31,$5F,$24,$17,$00,$2B,$49,$5B,$00,$BF,$EF,$0C,$9F,$02 ; $C3EC4A
    db $19,$FF,$08,$24,$FF,$07,$E0,$13,$FF,$4C,$00,$05,$DF,$3C,$2D,$2F ; $C3EC5A
    db $02,$FF,$33,$07,$EE,$05,$FA,$D0,$D0,$04,$43,$EA,$03,$F0,$3C,$05 ; $C3EC6A
    db $0E,$FF,$03,$18,$E0,$05,$81,$C5,$02,$F8,$0C,$64,$04,$06,$A3,$FF ; $C3EC7A
    db $02,$40,$D0,$F3,$C0,$C0,$02,$01,$FF,$1A,$FB,$08,$FC,$A8,$5F,$F0 ; $C3EC8A
    db $01,$FF,$1A,$00,$43,$1E,$F7,$98,$82,$02,$FF,$03,$E4,$3F,$43,$BC ; $C3EC9A
    db $60,$7F,$CF,$07,$FF,$FF,$08,$00,$FF,$68,$00,$D4,$C1,$66,$E0,$B0 ; $C3ECAA
    db $75,$82,$58,$97,$81,$FF,$A0,$85,$70,$80,$F7,$18,$1F,$23,$40,$7F ; $C3ECBA
    db $50,$07,$03,$5F,$20,$77,$FF,$24,$97,$AF,$00,$7E,$C9,$9D,$03,$5F ; $C3ECCA
    db $73,$0D,$7E,$FF,$1B,$FF,$7E,$EF,$0D,$FF,$1F,$F5,$06,$E0,$06,$9F ; $C3ECDA
    db $FF,$01,$05,$8C,$FF,$02,$40,$C5,$01,$04,$FC,$32,$02,$0D,$47,$B2 ; $C3ECEA
    db $FF,$01,$2A,$13,$FF,$0F,$0D,$FD,$10,$F8,$3E,$C0,$FF,$EA,$E0,$CC ; $C3ECFA
    db $C0,$58,$76,$41,$FB,$4B,$02,$18,$FF,$10,$1F,$35,$A0,$BF,$AD,$FB ; $C3ED0A
    db $5B,$FF,$91,$FF,$E7,$99,$BC,$01,$91,$10,$FF,$31,$E3,$FF,$01,$CE ; $C3ED1A
    db $13,$FF,$30,$C7,$FF,$CB,$0B,$80,$02,$FF,$CF,$B8,$05,$FA,$34,$F4 ; $C3ED2A
    db $FC,$01,$FF,$FA,$FC,$0E,$FF,$0D,$4B,$80,$11,$FF,$19,$81,$84,$FF ; $C3ED3A
    db $0A,$42,$02,$F1,$FF,$06,$FE,$18,$FF,$05,$FD,$F3,$02,$FF,$68,$B1 ; $C3ED4A
    db $FF,$66,$E0,$E0,$02,$FF,$90,$FF,$43,$BC,$3C,$18,$1F,$06,$FF,$0A ; $C3ED5A
    db $78,$BF,$06,$FF,$0A,$F5,$27,$A0,$01,$91,$FF,$3F,$84,$FF,$80,$15 ; $C3ED6A
    db $00,$F2,$FF,$80,$B4,$FF,$6F,$F1,$05,$DE,$FF,$09,$FF,$FA,$04,$43 ; $C3ED7A
    db $1B,$01,$54,$03,$A9,$E9,$04,$1B,$0F,$54,$FF,$A8,$FE,$04,$3E,$1F ; $C3ED8A
    db $80,$09,$96,$3F,$2A,$CD,$FA,$07,$5F,$5F,$54,$07,$4B,$5F,$80,$CE ; $C3ED9A
    db $07,$1F,$15,$7D,$33,$0E,$2C,$9F,$01,$03,$57,$78,$04,$05,$5F,$54 ; $C3EDAA
    db $FD,$7B,$A8,$03,$1F,$A8,$5E,$7B,$D5,$04,$7F,$22,$47,$15,$87,$B1 ; $C3EDBA
    db $53,$9D,$06,$5F,$51,$4F,$7E,$82,$04,$83,$40,$35,$80,$AA,$1E,$37 ; $C3EDCA
    db $02,$7F,$1E,$0A,$7F,$15,$0B,$7F,$00,$03,$54,$00,$AF,$08,$57,$08 ; $C3EDDA
    db $A6,$F1,$02,$FB,$AA,$FB,$14,$FD,$57,$01,$8E,$F7,$15,$91,$E1,$75 ; $C3EDEA
    db $00,$BA,$64,$1F,$08,$C7,$75,$DF,$6E,$3F,$33,$CF,$5F,$AB,$02,$63 ; $C3EDFA
    db $7F,$33,$57,$FD,$C0,$02,$5F,$20,$55,$20,$9A,$C0,$7D,$55,$02,$91 ; $C3EE0A
    db $C3,$48,$65,$15,$BF,$2A,$F1,$07,$7F,$03,$A8,$00,$7B,$11,$4C,$12 ; $C3EE1A
    db $A8,$93,$17,$18,$C3,$52,$F9,$47,$4C,$F7,$4F,$A1,$1D,$7F,$40,$AA ; $C3EE2A
    db $23,$5F,$BA,$80,$5D,$CE,$02,$FF,$35,$00,$7B,$5D,$F7,$22,$FF,$02 ; $C3EE3A
    db $5D,$10,$CE,$1B,$5D,$A1,$DA,$57,$6C,$7F,$A2,$E6,$17,$1B,$4C,$56 ; $C3EE4A
    db $83,$10,$60,$4D,$1F,$20,$7D,$C0,$3A,$E5,$3F,$0C,$1F,$05,$FF,$33 ; $C3EE5A
    db $5D,$29,$D7,$2A,$3F,$60,$7F,$01,$54,$04,$0E,$AB,$08,$5F,$11,$13 ; $C3EE6A
    db $47,$24,$9A,$0C,$FB,$FF,$53,$F5,$47,$5E,$1E,$F5,$88,$FF,$02,$FB ; $C3EE7A
    db $EC,$7F,$DD,$D6,$67,$18,$FB,$65,$DF,$47,$1D,$F7,$8D,$7F,$B8,$DF ; $C3EE8A
    db $7F,$AA,$B6,$03,$31,$41,$FF,$33,$5C,$F7,$93,$3B,$53,$00,$7F,$48 ; $C3EE9A
    db $35,$00,$2E,$10,$C5,$20,$27,$8A,$80,$99,$03,$11,$FF,$7F,$9D,$83 ; $C3EEAA
    db $82,$62,$6D,$2A,$68,$7F,$00,$FB,$10,$BE,$21,$5C,$00,$BB,$40,$10 ; $C3EEBA
    db $37,$48,$A6,$FB,$C6,$BB,$AE,$EB,$83,$03,$BE,$EB,$37,$DD,$82,$FF ; $C3EECA
    db $C0,$03,$FB,$EE,$00,$77,$04,$BA,$90,$FB,$BA,$EF,$C1,$07,$2E,$FB ; $C3EEDA
    db $77,$DD,$83,$2B,$08,$75,$40,$AE,$A9,$01,$65,$BB,$83,$01,$67,$03 ; $C3EEEA
    db $51,$6D,$5F,$17,$02,$1F,$AE,$FB,$31,$03,$20,$57,$80,$D3,$80,$17 ; $C3EEFA
    db $08,$E6,$10,$4D,$23,$40,$BA,$38,$03,$45,$9F,$57,$1B,$BD,$26,$FB ; $C3EF0A
    db $07,$46,$23,$03,$0C,$02,$55,$08,$A2,$1B,$21,$1D,$9A,$40,$33,$87 ; $C3EF1A
    db $C7,$5D,$90,$6A,$65,$F3,$FD,$C2,$4D,$F3,$9A,$EF,$36,$D9,$A2,$DF ; $C3EF2A
    db $5D,$B7,$62,$BF,$A2,$BF,$0D,$DF,$F7,$83,$8E,$07,$10,$AB,$23,$7F ; $C3EF3A
    db $5F,$6E,$5F,$9B,$C3,$7F,$F6,$A3,$FE,$8A,$1B,$EA,$29,$7B,$77,$27 ; $C3EF4A
    db $C2,$1F,$E2,$BF,$08,$1F,$76,$0C,$1F,$F7,$AB,$FC,$13,$12,$70,$A9 ; $C3EF5A
    db $C3,$BA,$04,$67,$D3,$5F,$20,$00,$2B,$55,$FE,$A1,$FE,$75,$DE,$18 ; $C3EF6A
    db $AA,$FD,$17,$E3,$FB,$5D,$11,$E7,$EA,$1F,$98,$13,$22,$03,$A3,$10 ; $C3EF7A
    db $63,$45,$07,$20,$55,$E0,$01,$5F,$F7,$41,$AE,$3E,$67,$01,$2D,$9F ; $C3EF8A
    db $09,$3F,$AE,$8F,$1F,$7F,$45,$02,$26,$1F,$BA,$1B,$AC,$7F,$55,$2B ; $C3EF9A
    db $EF,$AA,$84,$0F,$51,$E1,$27,$08,$CD,$33,$5B,$19,$7F,$04,$41,$43 ; $C3EFAA
    db $55,$FB,$AA,$DA,$7B,$31,$7F,$AE,$7F,$21,$3F,$02,$A8,$0E,$23,$3B ; $C3EFBA
    db $9B,$BA,$23,$E7,$AA,$63,$7F,$A3,$BE,$EB,$1D,$BB,$BA,$EF,$29,$27 ; $C3EFCA
    db $DF,$CA,$77,$BA,$A2,$63,$A4,$FF,$2A,$FF,$36,$D5,$3F,$1B,$1F,$74 ; $C3EFDA
    db $AE,$E2,$1F,$C7,$40,$35,$9E,$7B,$01,$1F,$EC,$53,$DF,$26,$55,$FF ; $C3EFEA
    db $1F,$73,$FE,$5F,$A6,$D3,$26,$23,$B7,$7F,$4F,$87,$4B,$1B,$FD,$0E ; $C3EFFA
    db $1F,$A6,$FB,$4D,$6C,$5F,$47,$1F,$04,$25,$51,$10,$10,$DF,$67,$A9 ; $C3F00A
    db $3F,$F9,$02,$DF,$FE,$3C,$61,$DF,$DF,$A0,$03,$83,$10,$7B,$AA,$01 ; $C3F01A
    db $DF,$E7,$01,$C3,$F9,$04,$5E,$75,$FB,$28,$5F,$F5,$3A,$06,$D5,$DE ; $C3F02A
    db $E2,$E4,$CC,$FB,$C4,$0B,$FE,$A1,$F5,$CA,$7A,$FF,$F7,$0E,$EF,$F6 ; $C3F03A
    db $F8,$FF,$F2,$15,$BD,$FF,$2E,$3F,$F0,$3C,$9F,$FF,$47,$FF,$21,$F8 ; $C3F04A
    db $0F,$5E,$A1,$FA,$FF,$F4,$FF,$E8,$FF,$F2,$03,$50,$C0,$03,$FA,$85 ; $C3F05A
    db $00,$F4,$4B,$E8,$97,$F2,$0D,$E9,$97,$C6,$27,$E8,$17,$03,$7F,$A0 ; $C3F06A
    db $07,$63,$0F,$CC,$13,$01,$48,$E0,$03,$A4,$FF,$40,$D7,$42,$0D,$FF ; $C3F07A
    db $F9,$FD,$FD,$FB,$F7,$FB,$EF,$F7,$BF,$CF,$1E,$55,$DD,$AF,$5C,$0A ; $C3F08A
    db $7B,$FF,$19,$FF,$33,$FF,$63,$FE,$87,$7C,$DE,$F9,$30,$EF,$80,$7F ; $C3F09A
    db $FD,$86,$6D,$E0,$57,$23,$F7,$84,$BC,$C7,$01,$03,$FD,$E2,$F0,$CF ; $C3F0AA
    db $E0,$9F,$1F,$57,$84,$7B,$01,$73,$C7,$FD,$01,$EF,$04,$CD,$1F,$7F ; $C3F0BA
    db $5B,$FE,$87,$FF,$55,$F5,$08,$8F,$55,$FC,$06,$EF,$1F,$01,$00,$00 ; $C3F0CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F0DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F0EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F0FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F10A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F11A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F12A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F13A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F14A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F15A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F16A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F17A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F18A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F19A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F1AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F1BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F1CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F1DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F1EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F1FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F20A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F21A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F22A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F23A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F24A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F25A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F26A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F27A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F28A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F29A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F2AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F2BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F2CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F2DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F2EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F2FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F30A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F31A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F32A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F33A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F34A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F35A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F36A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F37A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F38A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F39A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F3AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F3BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F3CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F3DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F3EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F3FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F40A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F41A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F42A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F43A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F44A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F45A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F46A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F47A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F48A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F49A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F4AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F4BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F4CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F4DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F4EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F4FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F50A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F51A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F52A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F53A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F54A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F55A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F56A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F57A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F58A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F59A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F5AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F5BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F5CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F5DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F5EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F5FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F60A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F61A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F62A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F63A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F64A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F65A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F66A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F67A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F68A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F69A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F6AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F6BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F6CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F6DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F6EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F6FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F70A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F71A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F72A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F73A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F74A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F75A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F76A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F77A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F78A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F79A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F7AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F7BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F7CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F7DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F7EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F7FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F80A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F81A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F82A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F83A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F84A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F85A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F86A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F87A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F88A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F89A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F8AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F8BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F8CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F8DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F8EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F8FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F90A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F91A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F92A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F93A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F94A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F95A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F96A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F97A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F98A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F99A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F9AA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F9BA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F9CA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F9DA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F9EA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3F9FA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FA9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FAAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FABA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FACA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FADA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FAEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FAFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FB9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FBAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FBBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FBCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FBDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FBEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FBFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FC9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FCAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FCBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FCCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FCDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FCEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FCFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FD9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FDAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FDBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FDCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FDDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FDEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FDFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FE9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FEAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FEBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FECA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FEDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FEEA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FEFA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF0A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF1A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF2A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF3A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF4A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF5A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF6A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF7A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF8A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FF9A
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FFAA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FFBA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FFCA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FFDA
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $C3FFEA
    db $FF,$FF,$FF,$FF,$FF,$FF                                         ; $C3FFFA
