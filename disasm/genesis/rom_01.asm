org $010000

    MOVEA.L (A7)+,A0                        ; $010000  205F
L_010002:
    RTS                                     ; $010002  4E75
L_010004:
    BSR.W L_00FB84                          ; $010004  6100 FB7E
    TST.W D0                                ; $010008  4A40
    BMI.S L_01003C                          ; $01000A  6B30
    CMPI.W #$0020,D1                        ; $01000C  0C41 0020
    BCC.S L_01003C                          ; $010010  642A
    SUBQ.W #1,$9C8(A5)                      ; $010012  536D 09C8
    BPL.S L_010024                          ; $010016  6A0C
    MOVE.W #$0003,$9C8(A5)                  ; $010018  3B7C 0003 09C8
    TST.W $50(A6)                           ; $01001E  4A6E 0050
    BEQ.S L_010034                          ; $010022  6710
L_010024:
    MOVE.W D0,D1                            ; $010024  3200
    BSR.W L_012D5C                          ; $010026  6100 2D34
    BSR.W L_012CE4                          ; $01002A  6100 2CB8
    MOVE.W D1,D0                            ; $01002E  3001
    MOVEQ #$20,D1                           ; $010030  7220
    RTS                                     ; $010032  4E75
L_010034:
    BSET #$07,D0                            ; $010034  08C0 0007
    MOVEQ #$00,D1                           ; $010038  7200
    RTS                                     ; $01003A  4E75
L_01003C:
    MOVE.W #$0003,$9C8(A5)                  ; $01003C  3B7C 0003 09C8
    MOVEQ #$FF,D0                           ; $010042  70FF
    MOVEQ #$00,D1                           ; $010044  7200
    RTS                                     ; $010046  4E75
L_010048:
    BSR.W L_010096                          ; $010048  6100 004C
    TST.W D0                                ; $01004C  4A40
    BMI.S L_01008A                          ; $01004E  6B3A
    CMPI.W #$0020,D1                        ; $010050  0C41 0020
    BCC.S L_01008A                          ; $010054  6434
    SUBQ.W #1,$9CA(A5)                      ; $010056  536D 09CA
    BPL.S L_010062                          ; $01005A  6A06
    MOVE.W #$0003,$9CA(A5)                  ; $01005C  3B7C 0003 09CA
L_010062:
    MOVE.W D0,D1                            ; $010062  3200
    MOVE.B $9D0(A5),D2                      ; $010064  142D 09D0
    CMPI.B #$01,D2                          ; $010068  0C02 0001
    BEQ.S L_01007E                          ; $01006C  6710
    CMPI.B #$03,D2                          ; $01006E  0C02 0003
    BEQ.S L_010084                          ; $010072  6710
    BSR.W L_012CE4                          ; $010074  6100 2C6E
L_010078:
    MOVE.W D1,D0                            ; $010078  3001
    MOVEQ #$20,D1                           ; $01007A  7220
    RTS                                     ; $01007C  4E75
L_01007E:
    BSR.W L_012D04                          ; $01007E  6100 2C84
    BRA.S L_010078                          ; $010082  60F4
L_010084:
    BSR.W L_012D30                          ; $010084  6100 2CAA
    BRA.S L_010078                          ; $010088  60EE
L_01008A:
    MOVE.W #$0003,$9CA(A5)                  ; $01008A  3B7C 0003 09CA
    MOVEQ #$FF,D0                           ; $010090  70FF
    MOVEQ #$00,D1                           ; $010092  7200
    RTS                                     ; $010094  4E75
L_010096:
    MOVE.L A4,-(A7)                         ; $010096  2F0C
    LEA $4F02(A5),A4                        ; $010098  49ED 4F02
    MOVEQ #$31,D5                           ; $01009C  7A31
    MOVEQ #$00,D2                           ; $01009E  7400
    MOVEQ #$00,D3                           ; $0100A0  7600
    MOVEQ #$FF,D4                           ; $0100A2  78FF
    MOVEA.L D3,A3                           ; $0100A4  2643
    BSR.W L_012E84                          ; $0100A6  6100 2DDC
    MOVE.W D0,D6                            ; $0100AA  3C00
    MOVE.W D1,D7                            ; $0100AC  3E01
    LEA L_014EB6,A2                         ; $0100AE  45F9 0001 4EB6
L_0100B4:
    TST.B $6C(A4)                           ; $0100B4  4A2C 006C
    BPL.S L_010128                          ; $0100B8  6A6E
    TST.B $40(A4)                           ; $0100BA  4A2C 0040
    BMI.S L_010128                          ; $0100BE  6B68
    CMPI.B #$0D,$42(A4)                     ; $0100C0  0C2C 000D 0042
    BEQ.S L_0100DA                          ; $0100C6  6712
    CMPI.B #$1F,$42(A4)                     ; $0100C8  0C2C 001F 0042
    BEQ.S L_0100DA                          ; $0100CE  670A
    MOVE.W $8(A6),D0                        ; $0100D0  302E 0008
    CMP.W $8(A4),D0                         ; $0100D4  B06C 0008
    BNE.S L_010128                          ; $0100D8  664E
L_0100DA:
    MOVE.W (A4),D0                          ; $0100DA  3014
    MOVE.W $2(A4),D1                        ; $0100DC  322C 0002
    BSR.W L_0131FC                          ; $0100E0  6100 311A
    CMP.W D0,D4                             ; $0100E4  B840
    BCS.S L_010128                          ; $0100E6  6540
    MOVE.W D0,$9CE(A5)                      ; $0100E8  3B40 09CE
    MOVE.W (A4),D0                          ; $0100EC  3014
    MOVE.W $2(A4),D1                        ; $0100EE  322C 0002
    MOVE.W D6,D2                            ; $0100F2  3406
    MOVE.W D7,D3                            ; $0100F4  3607
    BSR.W L_01315A                          ; $0100F6  6100 3062
    BSR.W L_013110                          ; $0100FA  6100 3014
    MOVE.W D0,D1                            ; $0100FE  3200
    MOVE.W $3A(A4),D0                       ; $010100  302C 003A
    MOVE.W D0,$9CC(A5)                      ; $010104  3B40 09CC
    BSR.W L_012F0E                          ; $010108  6100 2E04
    ADD.W D0,D0                             ; $01010C  D040
    ADD.W D0,D0                             ; $01010E  D040
    ADD.W D0,D0                             ; $010110  D040
    OR.W D0,D1                              ; $010112  8240
    MOVE.B $0(A2,D1.W),$9D0(A5)             ; $010114  1B72 1000 09D0
    BEQ.S L_010128                          ; $01011A  670C
    MOVE.W (A4),D2                          ; $01011C  3414
    MOVE.W $2(A4),D3                        ; $01011E  362C 0002
    MOVE.W $9CE(A5),D4                      ; $010122  382D 09CE
    MOVEA.L A4,A3                           ; $010126  264C
L_010128:
    LEA $76(A4),A4                          ; $010128  49EC 0076
    DBRA D5,L_0100B4                        ; $01012C  51CD FF86
    MOVE.W D4,D1                            ; $010130  3204
    BMI.S L_01013C                          ; $010132  6B08
    MOVEA.L A3,A4                           ; $010134  284B
    MOVE.W $9CC(A5),D0                      ; $010136  302D 09CC
    BRA.S L_01013E                          ; $01013A  6002
L_01013C:
    MOVEQ #$FF,D0                           ; $01013C  70FF
L_01013E:
    MOVEA.L (A7)+,A4                        ; $01013E  285F
    RTS                                     ; $010140  4E75
L_010142:
    TST.W $9C2(A5)                          ; $010142  4A6D 09C2
    BMI.W L_0101CC                          ; $010146  6B00 0084
    MOVE.L $9C4(A5),D0                      ; $01014A  202D 09C4
    BEQ.W L_0101CC                          ; $01014E  6700 007C
    MOVEA.L D0,A0                           ; $010152  2040
    BTST #$07,$6C(A0)                       ; $010154  0828 0007 006C
    BEQ.S L_0101CC                          ; $01015A  6770
    CMPI.B #$30,$41(A0)                     ; $01015C  0C28 0030 0041
    BEQ.S L_0101CC                          ; $010162  6768
    CMPI.B #$00,$41(A0)                     ; $010164  0C28 0000 0041
    BEQ.S L_0101CC                          ; $01016A  6760
    CMPI.B #$14,$41(A0)                     ; $01016C  0C28 0014 0041
    BNE.S L_01017C                          ; $010172  6608
    BTST #$03,$6C(A0)                       ; $010174  0828 0003 006C
    BNE.S L_0101CC                          ; $01017A  6650
L_01017C:
    MOVE.W (A6),$A34(A5)                    ; $01017C  3B56 0A34
    MOVE.W $2(A6),$A36(A5)                  ; $010180  3B6E 0002 0A36
    MOVE.W $60(A6),$A38(A5)                 ; $010186  3B6E 0060 0A38
    MOVE.W $8(A6),$A3A(A5)                  ; $01018C  3B6E 0008 0A3A
    MOVE.W (A0),$A3E(A5)                    ; $010192  3B50 0A3E
    MOVE.W $2(A0),$A40(A5)                  ; $010196  3B68 0002 0A40
    MOVE.W $60(A0),$A42(A5)                 ; $01019C  3B68 0060 0A42
    MOVE.W $8(A0),$A44(A5)                  ; $0101A2  3B68 0008 0A44
    MOVE.W $A2A(A5),-(A7)                   ; $0101A8  3F2D 0A2A
    MOVE.W #$01F4,$A2A(A5)                  ; $0101AC  3B7C 01F4 0A2A
    BSR.W L_00E210                          ; $0101B2  6100 E05C
    MOVE.W (A7)+,$A2A(A5)                   ; $0101B6  3B5F 0A2A
    TST.W D0                                ; $0101BA  4A40
    BMI.S L_0101CC                          ; $0101BC  6B0E
    CMPI.W #$0001,D2                        ; $0101BE  0C42 0001
    BNE.S L_0101C8                          ; $0101C2  6604
    BSET #$07,D0                            ; $0101C4  08C0 0007
L_0101C8:
    LSL.W #4,D1                             ; $0101C8  E949
    RTS                                     ; $0101CA  4E75
L_0101CC:
    CLR.L $9C4(A5)                          ; $0101CC  42AD 09C4
    MOVEQ #$FF,D0                           ; $0101D0  70FF
    MOVE.W D0,$9C2(A5)                      ; $0101D2  3B40 09C2
    MOVEQ #$00,D1                           ; $0101D6  7200
    RTS                                     ; $0101D8  4E75
L_0101DA:
    MOVE.W $9D4(A5),D3                      ; $0101DA  362D 09D4
    MOVE.W D3,-(A7)                         ; $0101DE  3F03
    ADDQ.W #2,D3                            ; $0101E0  5443
    CMPI.W #$0006,D3                        ; $0101E2  0C43 0006
    BNE.S L_0101EA                          ; $0101E6  6602
    MOVEQ #$00,D3                           ; $0101E8  7600
L_0101EA:
    MOVE.W D3,$9D4(A5)                      ; $0101EA  3B43 09D4
    MOVE.W $3E(A5,D3.W),D3                  ; $0101EE  3635 303E
    BTST #$01,D3                            ; $0101F2  0803 0001
    BEQ.S L_010236                          ; $0101F6  673E
    MOVEQ #$00,D0                           ; $0101F8  7000
    MOVE.W $B10(A5),D0                      ; $0101FA  302D 0B10
    BEQ.S L_01022E                          ; $0101FE  672E
    MOVEQ #$00,D1                           ; $010200  7200
    MOVE.B $48(A6),D1                       ; $010202  122E 0048
    BEQ.S L_010236                          ; $010206  672E
    CMP.W D0,D1                             ; $010208  B240
    BEQ.S L_01022E                          ; $01020A  6722
    MULU.W #$0064,D1                        ; $01020C  C2FC 0064
    DIVU.W D0,D1                            ; $010210  82C0
    MOVE.W D1,D0                            ; $010212  3001
    MOVEQ #$00,D1                           ; $010214  7200
    MOVE.W $AE8(A5),D1                      ; $010216  322D 0AE8
    BEQ.S L_01022E                          ; $01021A  6712
    MOVEQ #$00,D2                           ; $01021C  7400
    MOVE.B $4100(A5),D2                     ; $01021E  142D 4100
    BEQ.S L_010236                          ; $010222  6712
    MULU.W #$0064,D2                        ; $010224  C4FC 0064
    DIVU.W D1,D2                            ; $010228  84C1
    CMP.W D0,D2                             ; $01022A  B440
    BCC.S L_010236                          ; $01022C  6408
L_01022E:
    BCLR #$01,D3                            ; $01022E  0883 0001
    BSET #$00,D3                            ; $010232  08C3 0000
L_010236:
    MOVE.W $4E(A5),D0                       ; $010236  302D 004E            p2_lives
    CMP.W $4C(A5),D0                        ; $01023A  B06D 004C            p1_lives
    BCC.S L_010244                          ; $01023E  6404
    BSET #$04,D3                            ; $010240  08C3 0004
L_010244:
    MOVE.W $3A(A6),D0                       ; $010244  302E 003A
    BSR.W L_012F0E                          ; $010248  6100 2CC4
    MOVE.W D0,$A2C(A5)                      ; $01024C  3B40 0A2C
    MOVE.W #$0005,$A1E(A5)                  ; $010250  3B7C 0005 0A1E
    BSR.W L_00F080                          ; $010256  6100 EE28
    MOVE.W (A7)+,D3                         ; $01025A  361F
    TST.W D0                                ; $01025C  4A40
    BMI.W L_0102AC                          ; $01025E  6B00 004C
    MOVE.W $9B2(A5),D6                      ; $010262  3C2D 09B2
    MOVE.W $9B4(A5),D7                      ; $010266  3E2D 09B4
    CMP.W $9AE(A5),D6                       ; $01026A  BC6D 09AE
    BNE.S L_010276                          ; $01026E  6606
    CMP.W $9B0(A5),D7                       ; $010270  BE6D 09B0
    BEQ.S L_01029C                          ; $010274  6726
L_010276:
    MOVE.W D6,$9AE(A5)                      ; $010276  3B46 09AE
    MOVE.W D7,$9B0(A5)                      ; $01027A  3B47 09B0
    MOVE.L A0,-(A7)                         ; $01027E  2F08
    MOVE.W D0,-(A7)                         ; $010280  3F00
    LEA L_014F06(PC),A0                     ; $010282  41FA 4C82
    MOVE.W $68(A6),D0                       ; $010286  302E 0068
    MOVE.B $0(A0,D0.W),D0                   ; $01028A  1030 0000
    ADDQ.W #1,D0                            ; $01028E  5240
    ADD.W D0,D0                             ; $010290  D040
    ADD.W D0,D0                             ; $010292  D040
    MOVE.W D0,$9AC(A5)                      ; $010294  3B40 09AC
    MOVE.W (A7)+,D0                         ; $010298  301F
    MOVEA.L (A7)+,A0                        ; $01029A  205F
L_01029C:
    SUBQ.W #1,$9AC(A5)                      ; $01029C  536D 09AC
    BMI.S L_0102AC                          ; $0102A0  6B0A
    LSL.W #4,D1                             ; $0102A2  E949
    ADDQ.W #4,D1                            ; $0102A4  5841
    MOVE.W D3,$9D4(A5)                      ; $0102A6  3B43 09D4
    RTS                                     ; $0102AA  4E75
L_0102AC:
    MOVE.W #$FFFF,$9AE(A5)                  ; $0102AC  3B7C FFFF 09AE
    MOVE.W #$FFFF,$9B0(A5)                  ; $0102B2  3B7C FFFF 09B0
    MOVEQ #$FF,D0                           ; $0102B8  70FF
    MOVEQ #$00,D1                           ; $0102BA  7200
    RTS                                     ; $0102BC  4E75
L_0102BE:
    ADDQ.B #1,$3C(A6)                       ; $0102BE  522E 003C
    CMPI.B #$08,$3C(A6)                     ; $0102C2  0C2E 0008 003C
    BCS.S L_0102D2                          ; $0102C8  6508
    CLR.B $6C(A6)                           ; $0102CA  422E 006C
    CLR.B $6D(A6)                           ; $0102CE  422E 006D
L_0102D2:
    RTS                                     ; $0102D2  4E75
L_0102D4:
    BSR.W L_012FA8                          ; $0102D4  6100 2CD2
    MOVE.W (A6),D6                          ; $0102D8  3C16
    MOVE.W $2(A6),D7                        ; $0102DA  3E2E 0002
    MOVE.W (A4),D0                          ; $0102DE  3014
    MOVE.W $2(A4),D1                        ; $0102E0  322C 0002
    BSR.W L_0131FC                          ; $0102E4  6100 2F16
    MOVE.W (A4),D2                          ; $0102E8  3414
    MOVE.W $2(A4),D3                        ; $0102EA  362C 0002
    MOVEA.L A4,A3                           ; $0102EE  264C
    MOVE.W D0,-(A7)                         ; $0102F0  3F00
    BSR.W L_012FBA                          ; $0102F2  6100 2CC6
    MOVE.W (A7)+,D1                         ; $0102F6  321F
    RTS                                     ; $0102F8  4E75
L_0102FA:
    TST.W $958(A5)                          ; $0102FA  4A6D 0958
    BMI.W L_010414                          ; $0102FE  6B00 0114
    LEA $40B8(A5),A4                        ; $010302  49ED 40B8            p1_object
    TST.W $9D6(A5)                          ; $010306  4A6D 09D6
    BEQ.S L_010318                          ; $01030A  670C
    BTST #$01,$45(A6)                       ; $01030C  082E 0001 0045
    BEQ.S L_010318                          ; $010312  6704
    MOVEQ #$FE,D0                           ; $010314  70FE
    RTS                                     ; $010316  4E75
L_010318:
    BCLR #$01,$45(A6)                       ; $010318  08AE 0001 0045
    MOVE.W (A6),$A34(A5)                    ; $01031E  3B56 0A34
    MOVE.W $2(A6),$A36(A5)                  ; $010322  3B6E 0002 0A36
    MOVE.W $60(A6),$A38(A5)                 ; $010328  3B6E 0060 0A38
    MOVE.W $8(A6),$A3A(A5)                  ; $01032E  3B6E 0008 0A3A
    EXG A4,A6                               ; $010334  C94E
    MOVE.W (A6),-(A7)                       ; $010336  3F16
    MOVE.W $2(A6),-(A7)                     ; $010338  3F2E 0002
    MOVEQ #$20,D0                           ; $01033C  7020
    MOVE.W $3A(A6),D1                       ; $01033E  322E 003A
    BSR.W L_012B9E                          ; $010342  6100 285A
    ADD.W D0,(A6)                           ; $010346  D156
    ADD.W D1,$2(A6)                         ; $010348  D36E 0002
    BSR.W L_010418                          ; $01034C  6100 00CA
    TST.W D0                                ; $010350  4A40
    BPL.S L_010382                          ; $010352  6A2E
    MOVE.W (A7),$2(A6)                      ; $010354  3D57 0002
    MOVE.W $2(A7),(A6)                      ; $010358  3CAF 0002
    MOVEQ #$10,D0                           ; $01035C  7010
    MOVE.W $3A(A6),D1                       ; $01035E  322E 003A
    BSR.W L_012B9E                          ; $010362  6100 283A
    ADD.W D0,(A6)                           ; $010366  D156
    ADD.W D1,$2(A6)                         ; $010368  D36E 0002
    BSR.W L_010418                          ; $01036C  6100 00AA
    TST.W D0                                ; $010370  4A40
    BPL.S L_010382                          ; $010372  6A0E
    MOVE.W (A7),$2(A6)                      ; $010374  3D57 0002
    MOVE.W $2(A7),(A6)                      ; $010378  3CAF 0002
    MOVE.W $8(A6),D0                        ; $01037C  302E 0008
    BRA.S L_010386                          ; $010380  6004
L_010382:
    BSR.W L_00D696                          ; $010382  6100 D312
L_010386:
    MOVE.W D0,$A44(A5)                      ; $010386  3B40 0A44
    MOVE.W (A6),$A3E(A5)                    ; $01038A  3B56 0A3E
    MOVE.W $2(A6),$A40(A5)                  ; $01038E  3B6E 0002 0A40
    MOVE.W $60(A6),$A42(A5)                 ; $010394  3B6E 0060 0A42
    MOVE.W (A7)+,$2(A6)                     ; $01039A  3D5F 0002
    MOVE.W (A7)+,(A6)                       ; $01039E  3C9F
    EXG A4,A6                               ; $0103A0  C94E
    MOVE.W $A3E(A5),D0                      ; $0103A2  302D 0A3E
    MOVE.W $A40(A5),D1                      ; $0103A6  322D 0A40
    MOVE.W $A34(A5),D6                      ; $0103AA  3C2D 0A34
    MOVE.W $A36(A5),D7                      ; $0103AE  3E2D 0A36
    BSR.W L_0131FC                          ; $0103B2  6100 2E48
    CMPI.W #$0010,D0                        ; $0103B6  0C40 0010
    BCS.S L_010406                          ; $0103BA  654A
    MOVE.W #$0005,$A1E(A5)                  ; $0103BC  3B7C 0005 0A1E
    MOVE.W #$0028,$A20(A5)                  ; $0103C2  3B7C 0028 0A20
    BSR.W L_00EE8C                          ; $0103C8  6100 EAC2
    TST.W D0                                ; $0103CC  4A40
    BMI.W L_0103DE                          ; $0103CE  6B00 000E
    MOVE.W D7,D0                            ; $0103D2  3007
    JSR L_012EFC                            ; $0103D4  4EB9 0001 2EFC
    MOVEQ #$10,D1                           ; $0103DA  7210
    RTS                                     ; $0103DC  4E75
L_0103DE:
    MOVE.W #$0001,$A2E(A5)                  ; $0103DE  3B7C 0001 0A2E
    MOVE.W $A2A(A5),-(A7)                   ; $0103E4  3F2D 0A2A
    MOVE.W #$01F4,$A2A(A5)                  ; $0103E8  3B7C 01F4 0A2A
    MOVE.W $3A(A6),D0                       ; $0103EE  302E 003A
    BSR.W L_012F0E                          ; $0103F2  6100 2B1A
    MOVE.W D0,$A2C(A5)                      ; $0103F6  3B40 0A2C
    BSR.W L_00E29A                          ; $0103FA  6100 DE9E
    MOVE.W (A7)+,$A2A(A5)                   ; $0103FE  3B5F 0A2A
    MOVEQ #$10,D1                           ; $010402  7210
    RTS                                     ; $010404  4E75
L_010406:
    MOVE.W $3A(A4),D0                       ; $010406  302C 003A
    MOVEQ #$40,D1                           ; $01040A  7240
    BSET #$01,$45(A6)                       ; $01040C  08EE 0001 0045
    RTS                                     ; $010412  4E75
L_010414:
    MOVEQ #$FF,D0                           ; $010414  70FF
    RTS                                     ; $010416  4E75
L_010418:
    BSR.W L_00D696                          ; $010418  6100 D27C
    CMP.W $8(A6),D0                         ; $01041C  B06E 0008
    BNE.S L_010442                          ; $010420  6620
    CMP.W $8(A4),D0                         ; $010422  B06C 0008
    BNE.S L_010442                          ; $010426  661A
    SWAP D0                                 ; $010428  4840
    LSR.W #8,D0                             ; $01042A  E048
    ANDI.W #$0038,D0                        ; $01042C  0240 0038
    CMPI.W #$0000,D0                        ; $010430  0C40 0000
    BEQ.S L_010446                          ; $010434  6710
    CMPI.W #$0030,D0                        ; $010436  0C40 0030
    BEQ.S L_010446                          ; $01043A  670A
    CMPI.W #$0010,D0                        ; $01043C  0C40 0010
    BEQ.S L_010446                          ; $010440  6704
L_010442:
    MOVEQ #$FF,D0                           ; $010442  70FF
    RTS                                     ; $010444  4E75
L_010446:
    MOVEQ #$00,D0                           ; $010446  7000
    RTS                                     ; $010448  4E75
L_01044A:
    BSR.W L_01048A                          ; $01044A  6100 003E
    TST.W D0                                ; $01044E  4A40
    BMI.S L_01047E                          ; $010450  6B2C
    MOVE.W D0,D1                            ; $010452  3200
    SUBQ.W #1,$9D2(A5)                      ; $010454  536D 09D2
    BPL.S L_010466                          ; $010458  6A0C
    MOVE.W #$000A,$9D2(A5)                  ; $01045A  3B7C 000A 09D2
    TST.W $50(A6)                           ; $010460  4A6E 0050
    BEQ.S L_010476                          ; $010464  6710
L_010466:
    MOVE.W D0,D1                            ; $010466  3200
    BSR.W L_012D5C                          ; $010468  6100 28F2
    BSR.W L_012CE4                          ; $01046C  6100 2876
    MOVE.W D1,D0                            ; $010470  3001
    MOVEQ #$20,D1                           ; $010472  7220
    RTS                                     ; $010474  4E75
L_010476:
    BSET #$07,D0                            ; $010476  08C0 0007
    MOVEQ #$00,D1                           ; $01047A  7200
    RTS                                     ; $01047C  4E75
L_01047E:
    MOVE.W #$0003,$9D2(A5)                  ; $01047E  3B7C 0003 09D2
    MOVEQ #$FF,D0                           ; $010484  70FF
    MOVEQ #$00,D1                           ; $010486  7200
    RTS                                     ; $010488  4E75
L_01048A:
    LEA L_010506(PC),A0                     ; $01048A  41FA 007A
    MOVEA.L $A60(A5),A2                     ; $01048E  246D 0A60
    MOVE.W (A2)+,D7                         ; $010492  3E1A
    BEQ.W L_010502                          ; $010494  6700 006C
    MOVE.W (A2)+,D6                         ; $010498  3C1A
    SUBQ.W #1,D7                            ; $01049A  5347
    MOVE.W (A6),D2                          ; $01049C  3416
    ADDI.W #$0010,D2                        ; $01049E  0642 0010
    LSR.W #4,D2                             ; $0104A2  E84A
    MOVE.W $2(A6),D3                        ; $0104A4  362E 0002
    ADDI.W #$0010,D3                        ; $0104A8  0643 0010
    LSR.W #4,D3                             ; $0104AC  E84B
L_0104AE:
    TST.L $0(A2)                            ; $0104AE  4AAA 0000
    BEQ.W L_0104FC                          ; $0104B2  6700 0048
    MOVE.W $C(A2),D0                        ; $0104B6  302A 000C
    TST.B $0(A0,D0.W)                       ; $0104BA  4A30 0000
    BEQ.W L_0104FC                          ; $0104BE  6700 003C
    MOVEQ #$0A,D4                           ; $0104C2  780A
    MOVE.W $0(A2),D0                        ; $0104C4  302A 0000
    ADDQ.W #1,D0                            ; $0104C8  5240
    SUB.W D2,D0                             ; $0104CA  9042
    BPL.S L_0104DC                          ; $0104CC  6A0E
    NEG.W D0                                ; $0104CE  4440
    EORI.W #$000C,D4                        ; $0104D0  0A44 000C
    CMPI.W #$0004,D0                        ; $0104D4  0C40 0004
    BCC.S L_010502                          ; $0104D8  6428
    BRA.S L_0104E2                          ; $0104DA  6006
L_0104DC:
    CMPI.W #$0002,D0                        ; $0104DC  0C40 0002
    BCC.S L_0104FC                          ; $0104E0  641A
L_0104E2:
    MOVE.W $2(A2),D1                        ; $0104E2  322A 0002
    ADDQ.W #1,D1                            ; $0104E6  5241
    SUB.W D3,D1                             ; $0104E8  9243
    BPL.S L_0104F2                          ; $0104EA  6A06
    EORI.W #$0003,D4                        ; $0104EC  0A44 0003
    NEG.W D1                                ; $0104F0  4441
L_0104F2:
    CMPI.W #$0002,D1                        ; $0104F2  0C41 0002
    BCC.S L_0104FC                          ; $0104F6  6404
    MOVE.W D4,D0                            ; $0104F8  3004
    RTS                                     ; $0104FA  4E75
L_0104FC:
    ADDA.W D6,A2                            ; $0104FC  D4C6
    DBRA D7,L_0104AE                        ; $0104FE  51CF FFAE
L_010502:
    MOVEQ #$FF,D0                           ; $010502  70FF
    RTS                                     ; $010504  4E75
L_010506:
    dc.b $00,$00,$00,$01,$01,$01,$00,$01,$01,$00,$00,$01,$00,$00,$00,$00 ; $010506
    dc.b $00,$00,$00,$00,$01,$01,$01,$00,$01,$00,$00,$01,$00,$00,$00,$00 ; $010516
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $010526
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $010536
    dc.b $00,$00,$00,$00,$00,$00                                         ; $010546
L_01054C:
    LEA $412E(A5),A4                        ; $01054C  49ED 412E            p2_object
    BTST #$07,$6C(A4)                       ; $010550  082C 0007 006C
    BEQ.S L_010586                          ; $010556  672E
    CMPI.W #$0006,$2E(A4)                   ; $010558  0C6C 0006 002E
    BNE.S L_010586                          ; $01055E  6626
    LEA $40B8(A5),A6                        ; $010560  4DED 40B8            p1_object
    CMPI.B #$06,$58(A6)                     ; $010564  0C2E 0006 0058
    BEQ.S L_010586                          ; $01056A  671A
    TST.B $58(A4)                           ; $01056C  4A2C 0058
    BEQ.S L_010586                          ; $010570  6714
    SUBQ.B #1,$58(A4)                       ; $010572  532C 0058
    ADDQ.B #1,$58(A6)                       ; $010576  522E 0058
    BSET #$01,$49(A4)                       ; $01057A  08EC 0001 0049
    BSET #$01,$49(A6)                       ; $010580  08EE 0001 0049
L_010586:
    RTS                                     ; $010586  4E75
L_010588:
    MOVEA.L $6BC(A5),A0                     ; $010588  206D 06BC
    LEA $40B8(A5),A6                        ; $01058C  4DED 40B8            p1_object
    MOVE.W $908(A5),D0                      ; $010590  302D 0908
    BMI.S L_0105CC                          ; $010594  6B36
    MOVE.L $44(A5),D2                       ; $010596  242D 0044
    ANDI.L #$7FFFFFFF,D2                    ; $01059A  0282 7FFF FFFF
    CMP.L $0(A0,D0.W),D2                    ; $0105A0  B4B0 0000
    BCS.S L_0105CC                          ; $0105A4  6526
    ADDQ.W #4,$908(A5)                      ; $0105A6  586D 0908
    BSR.W L_0146DE                          ; $0105AA  6100 4132
    MOVE.L D0,-(A7)                         ; $0105AE  2F00
    MOVEQ #$00,D0                           ; $0105B0  7000
    MOVE.B #$D6,D0                          ; $0105B2  103C 00D6
    BEQ.S L_0105BE                          ; $0105B6  6706
    JSR L_000590                            ; $0105B8  4EB9 0000 0590
L_0105BE:
    MOVE.L (A7)+,D0                         ; $0105BE  201F
    TST.L $4(A0,D0.W)                       ; $0105C0  4AB0 0004
    BPL.S L_0105CC                          ; $0105C4  6A06
    MOVE.W #$FFFF,$908(A5)                  ; $0105C6  3B7C FFFF 0908
L_0105CC:
    LEA $412E(A5),A6                        ; $0105CC  4DED 412E            p2_object
    MOVE.W $90A(A5),D0                      ; $0105D0  302D 090A
    BMI.S L_01060C                          ; $0105D4  6B36
    MOVE.L $48(A5),D2                       ; $0105D6  242D 0048
    ANDI.L #$7FFFFFFF,D2                    ; $0105DA  0282 7FFF FFFF
    CMP.L $0(A0,D0.W),D2                    ; $0105E0  B4B0 0000
    BCS.S L_01060C                          ; $0105E4  6526
    ADDQ.W #4,$90A(A5)                      ; $0105E6  586D 090A
    BSR.W L_0146DE                          ; $0105EA  6100 40F2
    MOVE.L D0,-(A7)                         ; $0105EE  2F00
    MOVEQ #$00,D0                           ; $0105F0  7000
    MOVE.B #$D6,D0                          ; $0105F2  103C 00D6
    BEQ.S L_0105FE                          ; $0105F6  6706
    JSR L_000590                            ; $0105F8  4EB9 0000 0590
L_0105FE:
    MOVE.L (A7)+,D0                         ; $0105FE  201F
    TST.L $4(A0,D0.W)                       ; $010600  4AB0 0004
    BPL.S L_01060C                          ; $010604  6A06
    MOVE.W #$FFFF,$90A(A5)                  ; $010606  3B7C FFFF 090A
L_01060C:
    RTS                                     ; $01060C  4E75
L_01060E:
    MOVE.W $8D6(A5),D6                      ; $01060E  3C2D 08D6
    BMI.S L_010648                          ; $010612  6B34
    MOVE.W $8D8(A5),D7                      ; $010614  3E2D 08D8
    MOVE.W (A6),D0                          ; $010618  3016
    MOVE.W $2(A6),D1                        ; $01061A  322E 0002
    BSR.W L_0131FC                          ; $01061E  6100 2BDC
    MOVE.W D0,-(A7)                         ; $010622  3F00
    MOVE.W (A6),D0                          ; $010624  3016
    MOVE.W $2(A6),D1                        ; $010626  322E 0002
    MOVE.W $8D6(A5),D2                      ; $01062A  342D 08D6
    MOVE.W $8D8(A5),D3                      ; $01062E  362D 08D8
    BSR.W L_01315A                          ; $010632  6100 2B26
    BSR.W L_013110                          ; $010636  6100 2AD8
    BSR.W L_012EFC                          ; $01063A  6100 28C0
    MOVE.W (A7)+,D1                         ; $01063E  321F
    BSET #$07,D0                            ; $010640  08C0 0007
    MOVEQ #$10,D1                           ; $010644  7210
    RTS                                     ; $010646  4E75
L_010648:
    MOVEQ #$00,D0                           ; $010648  7000
    MOVEQ #$00,D1                           ; $01064A  7200
    RTS                                     ; $01064C  4E75
L_01064E:
    LEA $9D8(A5),A0                         ; $01064E  41ED 09D8
    BTST #$00,$40(A6)                       ; $010652  082E 0000 0040
    BEQ.S L_01065E                          ; $010658  6704
    LEA $9DE(A5),A0                         ; $01065A  41ED 09DE
L_01065E:
    ADDQ.W #1,(A0)                          ; $01065E  5250
    MOVE.L (A6),D1                          ; $010660  2216
    BTST #$07,D0                            ; $010662  0800 0007
    BNE.S L_01066E                          ; $010666  6606
    CMP.L $2(A0),D1                         ; $010668  B2A8 0002
    BEQ.S L_010676                          ; $01066C  6708
L_01066E:
    CLR.W (A0)                              ; $01066E  4250
    MOVE.L D1,$2(A0)                        ; $010670  2141 0002
    BRA.S L_0106A0                          ; $010674  602A
L_010676:
    CMPI.W #$0096,(A0)                      ; $010676  0C50 0096
    BCS.S L_0106A0                          ; $01067A  6524
    CLR.W (A0)                              ; $01067C  4250
    MOVE.W $3A(A6),D1                       ; $01067E  322E 003A
    JSR L_00361C                            ; $010682  4EB9 0000 361C
    ANDI.W #$0001,D0                        ; $010688  0240 0001
    BEQ.S L_010694                          ; $01068C  6706
    BSR.W L_012D30                          ; $01068E  6100 26A0
    BRA.S L_010698                          ; $010692  6004
L_010694:
    BSR.W L_012D04                          ; $010694  6100 266E
L_010698:
    MOVE.W D1,$3A(A6)                       ; $010698  3D41 003A
    MOVE.W D1,D0                            ; $01069C  3001
    RTS                                     ; $01069E  4E75
L_0106A0:
    MOVEQ #$FF,D0                           ; $0106A0  70FF
    RTS                                     ; $0106A2  4E75
L_0106A4:
    BTST #$02,$6D(A4)                       ; $0106A4  082C 0002 006D
    BNE.W L_010842                          ; $0106AA  6600 0196
    MOVE.W (A6),$A34(A5)                    ; $0106AE  3B56 0A34
    MOVE.W $2(A6),$A36(A5)                  ; $0106B2  3B6E 0002 0A36
    MOVE.W $60(A6),$A38(A5)                 ; $0106B8  3B6E 0060 0A38
    MOVE.W $8(A6),$A3A(A5)                  ; $0106BE  3B6E 0008 0A3A
    EXG A4,A6                               ; $0106C4  C94E
    MOVE.W (A6),-(A7)                       ; $0106C6  3F16
    MOVE.W $2(A6),-(A7)                     ; $0106C8  3F2E 0002
    MOVEQ #$20,D0                           ; $0106CC  7020
    MOVE.W $3A(A6),D1                       ; $0106CE  322E 003A
    BSR.W L_012B9E                          ; $0106D2  6100 24CA
    ADD.W D0,(A6)                           ; $0106D6  D156
    ADD.W D1,$2(A6)                         ; $0106D8  D36E 0002
    BSR.W L_010418                          ; $0106DC  6100 FD3A
    TST.W D0                                ; $0106E0  4A40
    BPL.S L_010732                          ; $0106E2  6A4E
    MOVE.W (A7),$2(A6)                      ; $0106E4  3D57 0002
    MOVE.W $2(A7),(A6)                      ; $0106E8  3CAF 0002
    MOVEQ #$20,D0                           ; $0106EC  7020
    MOVE.W $3A(A6),D1                       ; $0106EE  322E 003A
    BSR.W L_012C3A                          ; $0106F2  6100 2546
    ADD.W D0,(A6)                           ; $0106F6  D156
    ADD.W D1,$2(A6)                         ; $0106F8  D36E 0002
    BSR.W L_010418                          ; $0106FC  6100 FD1A
    TST.W D0                                ; $010700  4A40
    BPL.S L_010732                          ; $010702  6A2E
    MOVE.W (A7),$2(A6)                      ; $010704  3D57 0002
    MOVE.W $2(A7),(A6)                      ; $010708  3CAF 0002
    MOVEQ #$20,D0                           ; $01070C  7020
    MOVE.W $3A(A6),D1                       ; $01070E  322E 003A
    BSR.W L_012BEC                          ; $010712  6100 24D8
    ADD.W D0,(A6)                           ; $010716  D156
    ADD.W D1,$2(A6)                         ; $010718  D36E 0002
    BSR.W L_010418                          ; $01071C  6100 FCFA
    TST.W D0                                ; $010720  4A40
    BPL.S L_010732                          ; $010722  6A0E
    MOVE.W (A7),$2(A6)                      ; $010724  3D57 0002
    MOVE.W $2(A7),(A6)                      ; $010728  3CAF 0002
    MOVE.W $8(A6),D0                        ; $01072C  302E 0008
    BRA.S L_010736                          ; $010730  6004
L_010732:
    BSR.W L_00D696                          ; $010732  6100 CF62
L_010736:
    MOVE.W D0,$A44(A5)                      ; $010736  3B40 0A44
    MOVE.W (A6),$A3E(A5)                    ; $01073A  3B56 0A3E
    MOVE.W $2(A6),$A40(A5)                  ; $01073E  3B6E 0002 0A40
    MOVE.W $60(A6),$A42(A5)                 ; $010744  3B6E 0060 0A42
    MOVE.W (A7)+,$2(A6)                     ; $01074A  3D5F 0002
    MOVE.W (A7)+,(A6)                       ; $01074E  3C9F
    EXG A4,A6                               ; $010750  C94E
    MOVE.W $A34(A5),D0                      ; $010752  302D 0A34
    MOVE.W $A36(A5),D1                      ; $010756  322D 0A36
    MOVE.W $A3E(A5),D6                      ; $01075A  3C2D 0A3E
    MOVE.W $A40(A5),D7                      ; $01075E  3E2D 0A40
    BSR.W L_0131FC                          ; $010762  6100 2A98
    MOVE.W D0,-(A7)                         ; $010766  3F00
    MOVE.W $A34(A5),D0                      ; $010768  302D 0A34
    MOVE.W $A36(A5),D1                      ; $01076C  322D 0A36
    MOVE.W $A3E(A5),D2                      ; $010770  342D 0A3E
    MOVE.W $A40(A5),D3                      ; $010774  362D 0A40
    BSR.W L_01315A                          ; $010778  6100 29E0
    BSR.W L_013110                          ; $01077C  6100 2992
    MOVE.W (A7)+,D1                         ; $010780  321F
    MOVE.W D0,$A2C(A5)                      ; $010782  3B40 0A2C
    MOVE.W $8(A4),D2                        ; $010786  342C 0008
    CMP.W $8(A6),D2                         ; $01078A  B46E 0008
    BNE.S L_0107A2                          ; $01078E  6612
    BSR.W L_012EFC                          ; $010790  6100 276A
    CMPI.W #$0010,D1                        ; $010794  0C41 0010
    BCS.W L_010842                          ; $010798  6500 00A8
    CMPI.W #$0020,D1                        ; $01079C  0C41 0020
    BCS.S L_0107FE                          ; $0107A0  655C
L_0107A2:
    MOVE.W #$0005,$A1E(A5)                  ; $0107A2  3B7C 0005 0A1E
    MOVE.W #$0028,$A20(A5)                  ; $0107A8  3B7C 0028 0A20
    MOVE.W #$0001,$6A(A6)                   ; $0107AE  3D7C 0001 006A
    MOVEM.L D2-D7/A0-A4/A6,-(A7)            ; $0107B4  48E7 3FFA
    BSR.W L_00EE8C                          ; $0107B8  6100 E6D2
    MOVEM.L (A7)+,D2-D7/A0-A4/A6            ; $0107BC  4CDF 5FFC
    TST.W D0                                ; $0107C0  4A40
    BMI.S L_0107CC                          ; $0107C2  6B08
    ADD.W D1,D1                             ; $0107C4  D241
    ADD.W D1,D1                             ; $0107C6  D241
    ADD.W D1,D1                             ; $0107C8  D241
    BRA.S L_0107FE                          ; $0107CA  6032
L_0107CC:
    MOVE.L A4,-(A7)                         ; $0107CC  2F0C
    MOVE.W #$0001,$A2E(A5)                  ; $0107CE  3B7C 0001 0A2E
    TST.W $9BC(A5)                          ; $0107D4  4A6D 09BC
    BPL.S L_0107E0                          ; $0107D8  6A06
    MOVE.W #$0002,$A2E(A5)                  ; $0107DA  3B7C 0002 0A2E
L_0107E0:
    MOVE.W $A2A(A5),-(A7)                   ; $0107E0  3F2D 0A2A
    MOVE.W #$01F4,$A2A(A5)                  ; $0107E4  3B7C 01F4 0A2A
    BSR.W L_00E29A                          ; $0107EA  6100 DAAE
    MOVE.W (A7)+,$A2A(A5)                   ; $0107EE  3B5F 0A2A
    MOVEA.L (A7)+,A4                        ; $0107F2  285F
    LSL.W #4,D1                             ; $0107F4  E949
    CMPI.W #$0010,D1                        ; $0107F6  0C41 0010
    BNE.S L_0107FE                          ; $0107FA  6602
    MOVEQ #$08,D1                           ; $0107FC  7208
L_0107FE:
    TST.W D0                                ; $0107FE  4A40
    BMI.S L_01086C                          ; $010800  6B6A
    MOVE.W (A4),D6                          ; $010802  3C14
    MOVE.W $2(A4),D7                        ; $010804  3E2C 0002
    CMP.W $9BE(A5),D6                       ; $010808  BC6D 09BE
    BNE.S L_010848                          ; $01080C  663A
    CMP.W $9C0(A5),D7                       ; $01080E  BE6D 09C0
    BNE.S L_010848                          ; $010812  6634
    TST.W $9BC(A5)                          ; $010814  4A6D 09BC
    SUBQ.W #1,$9BC(A5)                      ; $010818  536D 09BC
    MOVEQ #$00,D7                           ; $01081C  7E00
    MOVE.W D1,D7                            ; $01081E  3E01
    MOVE.W D0,-(A7)                         ; $010820  3F00
    MOVE.W $E(A6),D0                        ; $010822  302E 000E
    BSR.W L_0129FE                          ; $010826  6100 21D6
    ANDI.L #$0000FFFF,D7                    ; $01082A  0287 0000 FFFF
    DIVU.W D0,D7                            ; $010830  8EC0
    CMPI.W #$0014,D7                        ; $010832  0C47 0014
    BCS.S L_01083A                          ; $010836  6502
    MOVEQ #$0A,D7                           ; $010838  7E0A
L_01083A:
    MOVE.W D7,$6A(A6)                       ; $01083A  3D47 006A
    MOVE.W (A7)+,D0                         ; $01083E  301F
    BRA.S L_01086C                          ; $010840  602A
L_010842:
    MOVEQ #$FF,D0                           ; $010842  70FF
    MOVEQ #$00,D1                           ; $010844  7200
    BRA.S L_01086C                          ; $010846  6024
L_010848:
    MOVE.L A0,-(A7)                         ; $010848  2F08
    MOVE.W D0,-(A7)                         ; $01084A  3F00
    LEA L_014F06(PC),A0                     ; $01084C  41FA 46B8
    MOVE.W $68(A6),D0                       ; $010850  302E 0068
    ANDI.W #$000F,D0                        ; $010854  0240 000F
    MOVE.B $0(A0,D0.W),D0                   ; $010858  1030 0000
    MOVE.W D0,$9BC(A5)                      ; $01085C  3B40 09BC
    MOVE.W (A7)+,D0                         ; $010860  301F
    MOVEA.L (A7)+,A0                        ; $010862  205F
    MOVE.W D6,$9BE(A5)                      ; $010864  3B46 09BE
    MOVE.W D7,$9C0(A5)                      ; $010868  3B47 09C0
L_01086C:
    RTS                                     ; $01086C  4E75
L_01086E:
    MOVE.W $12(A6),D0                       ; $01086E  302E 0012
    SUBQ.W #1,D0                            ; $010872  5340
    ANDI.W #$0007,D0                        ; $010874  0240 0007
    MOVE.W D0,$12(A6)                       ; $010878  3D40 0012
    MOVE.W D0,D7                            ; $01087C  3E00
    ADD.W D7,D7                             ; $01087E  DE47
    ADD.W D7,D7                             ; $010880  DE47
    ADD.W D7,D7                             ; $010882  DE47
    LEA L_0108EC(PC),A3                     ; $010884  47FA 0066
    ADDA.W D7,A3                            ; $010888  D6C7
    MOVE.W (A3)+,D4                         ; $01088A  381B
    MOVE.W D0,-(A7)                         ; $01088C  3F00
    SUBQ.W #2,D0                            ; $01088E  5540
    ANDI.W #$0007,D0                        ; $010890  0240 0007
    BSR.W L_012EFC                          ; $010894  6100 2666
    MOVE.W D0,$3A(A6)                       ; $010898  3D40 003A
    MOVE.W (A7)+,D0                         ; $01089C  301F
    BSR.W L_012EFC                          ; $01089E  6100 265C
    MOVE.W D0,D1                            ; $0108A2  3200
    MOVEQ #$20,D0                           ; $0108A4  7020
    BSR.W L_012B50                          ; $0108A6  6100 22A8
    ADDQ.W #8,D0                            ; $0108AA  5040
    MOVE.W D0,-(A7)                         ; $0108AC  3F00
    MOVE.W D1,-(A7)                         ; $0108AE  3F01
    BSR.W L_00BD80                          ; $0108B0  6100 B4CE
    MOVE.W (A7)+,D1                         ; $0108B4  321F
    MOVE.W (A7)+,D0                         ; $0108B6  301F
    ADD.W D0,(A4)                           ; $0108B8  D154
    ADD.W D1,$2(A4)                         ; $0108BA  D36C 0002
    MOVE.L A4,-(A7)                         ; $0108BE  2F0C
    MOVE.W (A4),D0                          ; $0108C0  3014
    MOVE.W $2(A4),D1                        ; $0108C2  322C 0002
    ADD.W (A3)+,D0                          ; $0108C6  D05B
    ADD.W (A3)+,D1                          ; $0108C8  D25B
    MOVE.W D0,-(A7)                         ; $0108CA  3F00
    MOVE.W D1,-(A7)                         ; $0108CC  3F01
    MOVE.W (A3)+,D4                         ; $0108CE  381B
    BSR.W L_00BD80                          ; $0108D0  6100 B4AE
    MOVE.W (A7)+,$2(A4)                     ; $0108D4  395F 0002
    MOVE.W (A7)+,(A4)                       ; $0108D8  389F
    MOVEA.L (A7)+,A4                        ; $0108DA  285F
    BSR.W L_010A4E                          ; $0108DC  6100 0170
    BTST #$00,$6D(A6)                       ; $0108E0  082E 0000 006D
    BNE.W L_01092C                          ; $0108E6  6600 0044
    RTS                                     ; $0108EA  4E75
L_0108EC:
    dc.b $00,$12,$00,$10,$00,$00,$00,$13,$00,$10,$00,$00,$00,$10,$00,$11 ; $0108EC
    dc.b $00,$0E,$00,$00,$00,$10,$00,$0F,$00,$0C,$FF,$F0,$00,$00,$00,$0D ; $0108FC
    dc.b $00,$0A,$FF,$F0,$00,$00,$00,$0B,$00,$08,$00,$00,$FF,$F0,$00,$09 ; $01090C
    dc.b $00,$06,$00,$00,$FF,$F0,$00,$07,$00,$04,$00,$10,$00,$00,$00,$05 ; $01091C
L_01092C:
    MOVE.L $30(A6),D0                       ; $01092C  202E 0030
    BNE.S L_01093A                          ; $010930  6608
    BSR.W L_010992                          ; $010932  6100 005E
    MOVE.L $30(A6),D0                       ; $010936  202E 0030
L_01093A:
    MOVEA.L D0,A0                           ; $01093A  2040
    MOVE.W $34(A6),D7                       ; $01093C  3E2E 0034
    MOVEQ #$00,D0                           ; $010940  7000
    MOVE.B $0(A0,D7.W),D0                   ; $010942  1030 7000
    CMPI.B #$FF,D0                          ; $010946  0C00 00FF
    BNE.S L_010988                          ; $01094A  663C
    BSR.W L_010992                          ; $01094C  6100 0044
    SUBQ.W #1,$50(A6)                       ; $010950  536E 0050
    BPL.S L_01092C                          ; $010954  6AD6
    MOVE.W $4E(A6),$50(A6)                  ; $010956  3D6E 004E 0050
    MOVEQ #$03,D0                           ; $01095C  7003
    MOVE.L A0,-(A7)                         ; $01095E  2F08
    MOVE.L D1,-(A7)                         ; $010960  2F01
    MOVE.W D0,-(A7)                         ; $010962  3F00
    MOVE.L $26(A6),D1                       ; $010964  222E 0026
    BEQ.S L_010980                          ; $010968  6716
    MOVEA.L D1,A0                           ; $01096A  2041
    MOVE.W $1E(A6),$20(A6)                  ; $01096C  3D6E 001E 0020
    MOVE.W D0,$1E(A6)                       ; $010972  3D40 001E
    ADD.W D0,D0                             ; $010976  D040
    ADDA.W $0(A0,D0.W),A0                   ; $010978  D0F0 0000
    MOVE.L A0,$22(A6)                       ; $01097C  2D48 0022
L_010980:
    MOVE.W (A7)+,D0                         ; $010980  301F
    MOVE.L (A7)+,D1                         ; $010982  221F
    MOVEA.L (A7)+,A0                        ; $010984  205F
    BRA.S L_010990                          ; $010986  6008
L_010988:
    ADDQ.W #1,$34(A6)                       ; $010988  526E 0034
    MOVE.W D0,$5E(A6)                       ; $01098C  3D40 005E
L_010990:
    RTS                                     ; $010990  4E75
L_010992:
    JSR L_00361C                            ; $010992  4EB9 0000 361C
    ANDI.W #$000F,D0                        ; $010998  0240 000F
    ADD.W D0,D0                             ; $01099C  D040
    LEA L_0109B8(PC),A0                     ; $01099E  41FA 0018
    ADDA.W $0(A0,D0.W),A0                   ; $0109A2  D0F0 0000
    MOVE.L A0,D0                            ; $0109A6  2008
    CMP.L $30(A6),D0                        ; $0109A8  B0AE 0030
    BEQ.S L_010992                          ; $0109AC  67E4
    MOVE.L A0,$30(A6)                       ; $0109AE  2D48 0030
    CLR.W $34(A6)                           ; $0109B2  426E 0034
    RTS                                     ; $0109B6  4E75
L_0109B8:
    dc.b $00,$20,$00,$29,$00,$2E,$00,$3A,$00,$41,$00,$4D,$00,$54,$00,$64 ; $0109B8
    dc.b $00,$48,$00,$5D,$00,$25,$00,$35,$00,$6D,$00,$74,$00,$81,$00,$88 ; $0109C8
    dc.b $00,$00,$00,$01,$FF,$01,$01,$01,$FF,$02,$02,$02,$01,$FF,$00,$00 ; $0109D8
    dc.b $00,$00,$00,$01,$FF,$01,$01,$01,$01,$FF,$02,$02,$02,$02,$02,$01 ; $0109E8
    dc.b $FF,$00,$05,$05,$05,$04,$01,$FF,$04,$04,$04,$01,$FF,$02,$03,$03 ; $0109F8
    dc.b $03,$02,$01,$FF,$00,$05,$05,$05,$05,$05,$04,$01,$FF,$04,$04,$04 ; $010A08
    dc.b $04,$04,$01,$FF,$02,$03,$03,$03,$03,$03,$02,$01,$FF,$02,$03,$04 ; $010A18
    dc.b $05,$00,$01,$FF,$02,$02,$03,$03,$04,$04,$05,$05,$00,$00,$01,$01 ; $010A28
    dc.b $FF,$00,$05,$04,$03,$02,$01,$FF,$00,$00,$05,$05,$04,$04,$03,$03 ; $010A38
    dc.b $02,$02,$01,$01,$FF,$00                                         ; $010A48
L_010A4E:
    MOVE.L A4,-(A7)                         ; $010A4E  2F0C
    MOVE.L A6,-(A7)                         ; $010A50  2F0E
    MOVEA.L A4,A6                           ; $010A52  2C4C
    CLR.B $8E4(A5)                          ; $010A54  422D 08E4
    MOVEA.L $6B8(A5),A0                     ; $010A58  206D 06B8
    LEA $8E8(A5),A1                         ; $010A5C  43ED 08E8
    BSR.W L_010A7E                          ; $010A60  6100 001C
    LEA $A(A0),A0                           ; $010A64  41E8 000A
    ADDQ.W #2,A1                            ; $010A68  5449
    BSR.W L_010A7E                          ; $010A6A  6100 0012
    LEA $A(A0),A0                           ; $010A6E  41E8 000A
    ADDQ.W #2,A1                            ; $010A72  5449
    BSR.W L_010A7E                          ; $010A74  6100 0008
    MOVEA.L (A7)+,A6                        ; $010A78  2C5F
    MOVEA.L (A7)+,A4                        ; $010A7A  285F
    RTS                                     ; $010A7C  4E75
L_010A7E:
    MOVE.L A0,-(A7)                         ; $010A7E  2F08
    MOVE.L A1,-(A7)                         ; $010A80  2F09
    SUBQ.W #1,(A1)                          ; $010A82  5351
    BPL.W L_010B16                          ; $010A84  6A00 0090
    CLR.W (A1)                              ; $010A88  4251
    BTST #$00,$8E4(A5)                      ; $010A8A  082D 0000 08E4
    BNE.W L_010B16                          ; $010A90  6600 0084
    MOVEM.L A0-A1/A4,-(A7)                  ; $010A94  48E7 00C8
    LEA $40B8(A5),A4                        ; $010A98  49ED 40B8            p1_object
    BTST #$07,$6C(A4)                       ; $010A9C  082C 0007 006C
    BEQ.S L_010AAE                          ; $010AA2  670A
    BSR.W L_012FBA                          ; $010AA4  6100 2514
    CMP.W $3A(A6),D0                        ; $010AA8  B06E 003A
    BEQ.S L_010ACE                          ; $010AAC  6720
L_010AAE:
    LEA $412E(A5),A4                        ; $010AAE  49ED 412E            p2_object
    BTST #$07,$6C(A4)                       ; $010AB2  082C 0007 006C
    BEQ.W L_010AC6                          ; $010AB8  6700 000C
    BSR.W L_012FBA                          ; $010ABC  6100 24FC
    CMP.W $3A(A6),D0                        ; $010AC0  B06E 003A
    BEQ.S L_010ACE                          ; $010AC4  6708
L_010AC6:
    MOVEM.L (A7)+,A0-A1/A4                  ; $010AC6  4CDF 1300
    BRA.W L_010B16                          ; $010ACA  6000 004A
L_010ACE:
    MOVEM.L (A7)+,A0-A1/A4                  ; $010ACE  4CDF 1300
    MOVE.W (A0),D0                          ; $010AD2  3010
    MOVE.B D0,$4A(A6)                       ; $010AD4  1D40 004A
    MOVE.W $4(A0),$52(A6)                   ; $010AD8  3D68 0004 0052
    MOVE.W $6(A0),D0                        ; $010ADE  3028 0006
    MOVE.B D0,$4B(A6)                       ; $010AE2  1D40 004B
    MOVE.W $8(A0),D0                        ; $010AE6  3028 0008
    MOVE.B D0,$4C(A6)                       ; $010AEA  1D40 004C
    MOVE.L A0,-(A7)                         ; $010AEE  2F08
    MOVE.L A1,-(A7)                         ; $010AF0  2F09
    BSR.W L_00AEEA                          ; $010AF2  6100 A3F6
    MOVEA.L (A7)+,A1                        ; $010AF6  225F
    MOVEA.L (A7)+,A0                        ; $010AF8  205F
    BSET #$06,$6C(A4)                       ; $010AFA  08EC 0006 006C
    BSET #$00,$8E4(A5)                      ; $010B00  08ED 0000 08E4
    JSR L_00361C                            ; $010B06  4EB9 0000 361C
    ANDI.W #$0007,D0                        ; $010B0C  0240 0007
    ADD.W $2(A0),D0                         ; $010B10  D068 0002
    MOVE.W D0,(A1)                          ; $010B14  3280
L_010B16:
    MOVEA.L (A7)+,A1                        ; $010B16  225F
    MOVEA.L (A7)+,A0                        ; $010B18  205F
    RTS                                     ; $010B1A  4E75
L_010B1C:
    SUBQ.W #1,$50(A6)                       ; $010B1C  536E 0050
    BPL.S L_010B26                          ; $010B20  6A04
    CLR.W $50(A6)                           ; $010B22  426E 0050
L_010B26:
    BTST #$04,$45(A6)                       ; $010B26  082E 0004 0045
    BNE.W L_010C12                          ; $010B2C  6600 00E4
    TST.B $44(A6)                           ; $010B30  4A2E 0044
    BEQ.S L_010B40                          ; $010B34  670A
    SUBQ.B #1,$3E(A6)                       ; $010B36  532E 003E
    BMI.S L_010B40                          ; $010B3A  6B04
    BRA.W L_010BB2                          ; $010B3C  6000 0074
L_010B40:
    MOVE.B #$0A,$3E(A6)                     ; $010B40  1D7C 000A 003E
    BSR.W L_0127B0                          ; $010B46  6100 1C68
    BMI.S L_010B4E                          ; $010B4A  6B02
    BRA.S L_010BC0                          ; $010B4C  6072
L_010B4E:
    BTST #$05,$6C(A6)                       ; $010B4E  082E 0005 006C
    BEQ.S L_010B6E                          ; $010B54  6718
    MOVE.W $3A(A6),D1                       ; $010B56  322E 003A
    MOVEQ #$01,D0                           ; $010B5A  7001
    BTST #$00,D1                            ; $010B5C  0801 0000
    BNE.W L_010B8A                          ; $010B60  6600 0028
    MOVEQ #$02,D0                           ; $010B64  7002
    BTST #$01,D1                            ; $010B66  0801 0001
    BNE.W L_010B8A                          ; $010B6A  6600 001E
L_010B6E:
    SUBQ.W #1,$6A(A6)                       ; $010B6E  536E 006A
    BPL.S L_010BB2                          ; $010B72  6A3E
    MOVE.W $68(A6),D7                       ; $010B74  3E2E 0068
    MOVE.B $32(A5,D7.W),D7                  ; $010B78  1E35 7032
    MOVE.W D7,$6A(A6)                       ; $010B7C  3D47 006A
L_010B80:
    BSR.W L_010BD2                          ; $010B80  6100 0050
    TST.W D0                                ; $010B84  4A40
    BEQ.W L_010C80                          ; $010B86  6700 00F8
L_010B8A:
    MOVE.W D0,D1                            ; $010B8A  3200
    BMI.S L_010BC0                          ; $010B8C  6B32
    EXG D0,D1                               ; $010B8E  C141
    JSR L_009856(PC)                        ; $010B90  4EBA 8CC4
    EXG D0,D1                               ; $010B94  C141
    MOVE.W D1,$3A(A6)                       ; $010B96  3D41 003A
    MOVE.W $E(A6),D0                        ; $010B9A  302E 000E
    BSR.W L_012A86                          ; $010B9E  6100 1EE6
    MOVE.W D0,$A(A6)                        ; $010BA2  3D40 000A
    MOVE.W D1,$C(A6)                        ; $010BA6  3D41 000C
    ADD.W D0,(A6)                           ; $010BAA  D156
    ADD.W D1,$2(A6)                         ; $010BAC  D36E 0002
    BRA.S L_010BC0                          ; $010BB0  600E
L_010BB2:
    MOVE.W $A(A6),D0                        ; $010BB2  302E 000A
    MOVE.W $C(A6),D1                        ; $010BB6  322E 000C
    ADD.W D0,(A6)                           ; $010BBA  D156
    ADD.W D1,$2(A6)                         ; $010BBC  D36E 0002
L_010BC0:
    ADDQ.W #1,$5E(A6)                       ; $010BC0  526E 005E
    CMPI.W #$0010,$5E(A6)                   ; $010BC4  0C6E 0010 005E
    BCS.S L_010BD0                          ; $010BCA  6504
    CLR.W $5E(A6)                           ; $010BCC  426E 005E
L_010BD0:
    RTS                                     ; $010BD0  4E75
L_010BD2:
    MOVE.W (A6),$A34(A5)                    ; $010BD2  3B56 0A34
    MOVE.W $2(A6),$A36(A5)                  ; $010BD6  3B6E 0002 0A36
    MOVE.W $60(A6),$A38(A5)                 ; $010BDC  3B6E 0060 0A38
    MOVE.W $8(A6),$A3A(A5)                  ; $010BE2  3B6E 0008 0A3A
    BSR.W L_012FF0                          ; $010BE8  6100 2406
    MOVE.W (A4),$A3E(A5)                    ; $010BEC  3B54 0A3E
    MOVE.W $2(A4),$A40(A5)                  ; $010BF0  3B6C 0002 0A40
    MOVE.W $60(A4),$A42(A5)                 ; $010BF6  3B6C 0060 0A42
    MOVE.W $8(A4),$A44(A5)                  ; $010BFC  3B6C 0008 0A44
    MOVEM.L D2-D7/A0-A6,-(A7)               ; $010C02  48E7 3FFE
    MOVEQ #$01,D0                           ; $010C06  7001
    BSR.W L_00E212                          ; $010C08  6100 D608
    MOVEM.L (A7)+,D2-D7/A0-A6               ; $010C0C  4CDF 7FFC
    RTS                                     ; $010C10  4E75
L_010C12:
    SUBQ.W #1,$6A(A6)                       ; $010C12  536E 006A
    BPL.S L_010C4A                          ; $010C16  6A32
    MOVE.W $68(A6),D7                       ; $010C18  3E2E 0068
    BEQ.S L_010C4A                          ; $010C1C  672C
    MOVE.B $32(A5,D7.W),D7                  ; $010C1E  1E35 7032
    MOVE.W D7,$6A(A6)                       ; $010C22  3D47 006A
    BSR.S L_010BD2                          ; $010C26  61AA
    TST.W D0                                ; $010C28  4A40
    BEQ.S L_010C4A                          ; $010C2A  671E
    BMI.S L_010C4A                          ; $010C2C  6B1C
L_010C2E:
    MOVE.W #$000A,$68(A6)                   ; $010C2E  3D7C 000A 0068
    CLR.W $36(A6)                           ; $010C34  426E 0036
    CLR.W $6A(A6)                           ; $010C38  426E 006A
    BCLR #$04,$45(A6)                       ; $010C3C  08AE 0004 0045
    CLR.W $34(A6)                           ; $010C42  426E 0034
    BRA.W L_010B8A                          ; $010C46  6000 FF42
L_010C4A:
    MOVEA.L $30(A6),A0                      ; $010C4A  206E 0030
    MOVE.W $34(A6),D7                       ; $010C4E  3E2E 0034
    MOVEQ #$00,D0                           ; $010C52  7000
    MOVE.B $0(A0,D7.W),D0                   ; $010C54  1030 7000
    CMPI.B #$FE,D0                          ; $010C58  0C00 00FE
    BEQ.S L_010C2E                          ; $010C5C  67D0
    CMPI.B #$FF,D0                          ; $010C5E  0C00 00FF
    BNE.S L_010C72                          ; $010C62  660E
    CLR.W $34(A6)                           ; $010C64  426E 0034
    BCLR #$04,$45(A6)                       ; $010C68  08AE 0004 0045
    BRA.W L_010B80                          ; $010C6E  6000 FF10
L_010C72:
    ADDQ.W #1,$34(A6)                       ; $010C72  526E 0034
    TST.W D0                                ; $010C76  4A40
    BPL.W L_010B8A                          ; $010C78  6A00 FF10
    BRA.W L_010BC0                          ; $010C7C  6000 FF42
L_010C80:
    MOVEA.L $93A(A5),A0                     ; $010C80  206D 093A
    MOVE.W $36(A6),D0                       ; $010C84  302E 0036
    BEQ.W L_010BC0                          ; $010C88  6700 FF36
    ADD.W D0,D0                             ; $010C8C  D040
    ADDA.W $0(A0,D0.W),A0                   ; $010C8E  D0F0 0000
    MOVE.L A0,$30(A6)                       ; $010C92  2D48 0030
    CLR.W $34(A6)                           ; $010C96  426E 0034
    BSET #$04,$45(A6)                       ; $010C9A  08EE 0004 0045
    BRA.W L_010C12                          ; $010CA0  6000 FF70
L_010CA4:
    TST.B $4A(A6)                           ; $010CA4  4A2E 004A
    BEQ.S L_010CB4                          ; $010CA8  670A
    SUBQ.W #1,$50(A6)                       ; $010CAA  536E 0050
    BPL.S L_010CB4                          ; $010CAE  6A04
    CLR.W $50(A6)                           ; $010CB0  426E 0050
L_010CB4:
    MOVE.W $3A(A6),D0                       ; $010CB4  302E 003A
    BSR.W L_012D88                          ; $010CB8  6100 20CE
    MOVE.W D0,$3A(A6)                       ; $010CBC  3D40 003A
    BNE.S L_010CD4                          ; $010CC0  6612
    JSR L_00361C                            ; $010CC2  4EB9 0000 361C
    ANDI.W #$0003,D0                        ; $010CC8  0240 0003
    MOVEQ #$00,D1                           ; $010CCC  7200
    BSET D0,D1                              ; $010CCE  01C1
    MOVE.W D1,$3A(A6)                       ; $010CD0  3D41 003A
L_010CD4:
    TST.B $44(A6)                           ; $010CD4  4A2E 0044
    BEQ.S L_010CE2                          ; $010CD8  6708
    SUBQ.B #1,$3E(A6)                       ; $010CDA  532E 003E
    BMI.S L_010CE2                          ; $010CDE  6B02
    RTS                                     ; $010CE0  4E75
L_010CE2:
    MOVE.B #$0A,$3E(A6)                     ; $010CE2  1D7C 000A 003E
    BSET #$04,$45(A6)                       ; $010CE8  08EE 0004 0045
    TST.B $43(A6)                           ; $010CEE  4A2E 0043
    BNE.S L_010CFC                          ; $010CF2  6608
    SUBQ.W #1,$6A(A6)                       ; $010CF4  536E 006A
    BMI.S L_010CFC                          ; $010CF8  6B02
    RTS                                     ; $010CFA  4E75
L_010CFC:
    TST.W $8C0(A5)                          ; $010CFC  4A6D 08C0
    BMI.S L_010D12                          ; $010D00  6B10
    MOVEA.L $8C2(A5),A4                     ; $010D02  286D 08C2
    BSR.W L_012FBA                          ; $010D06  6100 22B2
    CMPI.W #$0020,D1                        ; $010D0A  0C41 0020
    BCS.W L_010F0E                          ; $010D0E  6500 01FE
L_010D12:
    MOVE.W (A6),$A34(A5)                    ; $010D12  3B56 0A34
    MOVE.W $2(A6),$A36(A5)                  ; $010D16  3B6E 0002 0A36
    MOVE.W $60(A6),$A38(A5)                 ; $010D1C  3B6E 0060 0A38
    MOVE.W $8(A6),$A3A(A5)                  ; $010D22  3B6E 0008 0A3A
    MOVE.W $3A(A6),$A3C(A5)                 ; $010D28  3B6E 003A 0A3C
    MOVE.W $68(A6),D7                       ; $010D2E  3E2E 0068
    MOVE.B $32(A5,D7.W),D7                  ; $010D32  1E35 7032
    MOVE.W D7,$6A(A6)                       ; $010D36  3D47 006A
    BSR.W L_014AFC                          ; $010D3A  6100 3DC0
    MOVE.W D7,D4                            ; $010D3E  3807
    ANDI.W #$00F0,D4                        ; $010D40  0244 00F0
    BEQ.W L_010D82                          ; $010D44  6700 003C
    BCLR #$04,$45(A6)                       ; $010D48  08AE 0004 0045
    BTST #$06,D7                            ; $010D4E  0807 0006
    BEQ.S L_010D72                          ; $010D52  671E
    TST.W $50(A6)                           ; $010D54  4A6E 0050
    BNE.W L_010E56                          ; $010D58  6600 00FC
    MOVE.W $4E(A6),$50(A6)                  ; $010D5C  3D6E 004E 0050
    MOVE.L D6,-(A7)                         ; $010D62  2F06
    MOVE.L D7,-(A7)                         ; $010D64  2F07
    BSR.W L_00AEEA                          ; $010D66  6100 A182
    MOVE.L (A7)+,D7                         ; $010D6A  2E1F
    MOVE.L (A7)+,D6                         ; $010D6C  2C1F
    BRA.W L_010E56                          ; $010D6E  6000 00E6
L_010D72:
    BTST #$05,D7                            ; $010D72  0807 0005
    BNE.W L_010EBE                          ; $010D76  6600 0146
    BRA.W L_010EA0                          ; $010D7A  6000 0124
L_010D7E:
    NOP                                     ; $010D7E  4E71
    NOP                                     ; $010D80  4E71
L_010D82:
    MOVE.W D7,D4                            ; $010D82  3807
    ANDI.W #$0007,D4                        ; $010D84  0244 0007
    BEQ.W L_010E9E                          ; $010D88  6700 0114
    CMPI.W #$0003,D4                        ; $010D8C  0C44 0003
    BEQ.W L_010EA0                          ; $010D90  6700 010E
    CMPI.W #$0005,D4                        ; $010D94  0C44 0005
    BEQ.W L_010E92                          ; $010D98  6700 00F8
    CMPI.W #$0006,D4                        ; $010D9C  0C44 0006
    BEQ.W L_010EBE                          ; $010DA0  6700 011C
    CMPI.W #$0007,D4                        ; $010DA4  0C44 0007
    BEQ.W L_010EDE                          ; $010DA8  6700 0134
    LSR.L #8,D6                             ; $010DAC  E08E
    MOVE.B D6,D2                            ; $010DAE  1406
    LSR.L #8,D6                             ; $010DB0  E08E
    MOVE.B D6,D1                            ; $010DB2  1206
    LSR.L #8,D6                             ; $010DB4  E08E
    MOVE.B D6,D0                            ; $010DB6  1006
    CMPI.W #$0001,D4                        ; $010DB8  0C44 0001
    BEQ.S L_010DFA                          ; $010DBC  673C
    CMPI.W #$0002,D4                        ; $010DBE  0C44 0002
    BEQ.S L_010E32                          ; $010DC2  676E
    BSET #$04,$6D(A6)                       ; $010DC4  08EE 0004 006D
    BTST #$03,$6D(A6)                       ; $010DCA  082E 0003 006D
    BNE.W L_010E9E                          ; $010DD0  6600 00CC
    CMPI.B #$04,D1                          ; $010DD4  0C01 0004
    BCS.S L_010DE8                          ; $010DD8  650E
    CMPI.B #$04,D2                          ; $010DDA  0C02 0004
    BCS.W L_010E9E                          ; $010DDE  6500 00BE
    MOVEQ #$01,D3                           ; $010DE2  7601
    BRA.W L_010EEE                          ; $010DE4  6000 0108
L_010DE8:
    CMPI.B #$04,D2                          ; $010DE8  0C02 0004
    BCC.W L_010E9E                          ; $010DEC  6400 00B0
    CMP.B D1,D2                             ; $010DF0  B401
    BEQ.W L_010E9E                          ; $010DF2  6700 00AA
    BRA.W L_010EDE                          ; $010DF6  6000 00E6
L_010DFA:
    BSET #$03,$6D(A6)                       ; $010DFA  08EE 0003 006D
    BTST #$04,$6D(A6)                       ; $010E00  082E 0004 006D
    BNE.W L_010E9E                          ; $010E06  6600 0096
    CMPI.B #$04,D1                          ; $010E0A  0C01 0004
    BCS.W L_010E20                          ; $010E0E  6500 0010
    CMPI.B #$04,D0                          ; $010E12  0C00 0004
    BCS.W L_010E9E                          ; $010E16  6500 0086
    MOVEQ #$01,D3                           ; $010E1A  7601
    BRA.W L_010EEE                          ; $010E1C  6000 00D0
L_010E20:
    CMPI.B #$04,D0                          ; $010E20  0C00 0004
    BCC.W L_010E9E                          ; $010E24  6400 0078
    CMP.B D1,D0                             ; $010E28  B001
    BEQ.W L_010E9E                          ; $010E2A  6700 0072
    BRA.W L_010EDE                          ; $010E2E  6000 00AE
L_010E32:
    CMPI.B #$04,D0                          ; $010E32  0C00 0004
    BCS.S L_010E44                          ; $010E36  650C
    CMPI.B #$04,D2                          ; $010E38  0C02 0004
    BCS.S L_010EA0                          ; $010E3C  6562
    MOVEQ #$04,D3                           ; $010E3E  7604
    BRA.W L_010EEE                          ; $010E40  6000 00AC
L_010E44:
    CMPI.B #$04,D2                          ; $010E44  0C02 0004
    BCC.W L_010EBE                          ; $010E48  6400 0074
    CMP.B D0,D2                             ; $010E4C  B400
    BEQ.W L_010EBE                          ; $010E4E  6700 006E
    BRA.W L_010EDE                          ; $010E52  6000 008A
L_010E56:
    MOVE.W $3A(A6),D0                       ; $010E56  302E 003A
    BSR.W L_012EA4                          ; $010E5A  6100 2048
    JSR L_009868(PC)                        ; $010E5E  4EBA 8A08
    CMP.W $1E(A6),D0                        ; $010E62  B06E 001E
    BEQ.S L_010E90                          ; $010E66  6728
    MOVE.L A0,-(A7)                         ; $010E68  2F08
    MOVE.L D1,-(A7)                         ; $010E6A  2F01
    MOVE.W D0,-(A7)                         ; $010E6C  3F00
    MOVE.L $26(A6),D1                       ; $010E6E  222E 0026
    BEQ.S L_010E8A                          ; $010E72  6716
    MOVEA.L D1,A0                           ; $010E74  2041
    MOVE.W $1E(A6),$20(A6)                  ; $010E76  3D6E 001E 0020
    MOVE.W D0,$1E(A6)                       ; $010E7C  3D40 001E
    ADD.W D0,D0                             ; $010E80  D040
    ADDA.W $0(A0,D0.W),A0                   ; $010E82  D0F0 0000
    MOVE.L A0,$22(A6)                       ; $010E86  2D48 0022
L_010E8A:
    MOVE.W (A7)+,D0                         ; $010E8A  301F
    MOVE.L (A7)+,D1                         ; $010E8C  221F
    MOVEA.L (A7)+,A0                        ; $010E8E  205F
L_010E90:
    RTS                                     ; $010E90  4E75
L_010E92:
    BCLR #$03,$6D(A6)                       ; $010E92  08AE 0003 006D
    BCLR #$04,$6D(A6)                       ; $010E98  08AE 0004 006D
L_010E9E:
    BRA.S L_010E56                          ; $010E9E  60B6
L_010EA0:
    MOVE.W $3A(A6),D1                       ; $010EA0  322E 003A
    BSR.W L_012D04                          ; $010EA4  6100 1E5E
    BSR.W L_012D04                          ; $010EA8  6100 1E5A
    MOVE.W D1,$3A(A6)                       ; $010EAC  3D41 003A
    BCLR #$03,$6D(A6)                       ; $010EB0  08AE 0003 006D
    BSET #$04,$6D(A6)                       ; $010EB6  08EE 0004 006D
    BRA.S L_010E56                          ; $010EBC  6098
L_010EBE:
    MOVE.W $3A(A6),D1                       ; $010EBE  322E 003A
    BSR.W L_012D30                          ; $010EC2  6100 1E6C
    BSR.W L_012D30                          ; $010EC6  6100 1E68
    MOVE.W D1,$3A(A6)                       ; $010ECA  3D41 003A
    BSET #$03,$6D(A6)                       ; $010ECE  08EE 0003 006D
    BCLR #$04,$6D(A6)                       ; $010ED4  08AE 0004 006D
    BRA.W L_010E56                          ; $010EDA  6000 FF7A
L_010EDE:
    MOVE.W $3A(A6),D1                       ; $010EDE  322E 003A
    BSR.W L_012D5C                          ; $010EE2  6100 1E78
    MOVE.W D1,$3A(A6)                       ; $010EE6  3D41 003A
    BRA.W L_010E56                          ; $010EEA  6000 FF6A
L_010EEE:
    BSET #$05,$6D(A6)                       ; $010EEE  08EE 0005 006D
    BEQ.S L_010F0E                          ; $010EF4  6718
    BCLR #$05,$6D(A6)                       ; $010EF6  08AE 0005 006D
    CMPI.W #$0001,D3                        ; $010EFC  0C43 0001
    BEQ.S L_010E9E                          ; $010F00  679C
    CMPI.W #$0004,D3                        ; $010F02  0C43 0004
    BEQ.S L_010EA0                          ; $010F06  6798
    CMPI.W #$0008,D3                        ; $010F08  0C43 0008
    BEQ.S L_010EBE                          ; $010F0C  67B0
L_010F0E:
    MOVE.W $3A(A6),D0                       ; $010F0E  302E 003A
    BSR.W L_012F0E                          ; $010F12  6100 1FFA
    MOVE.B L_010F52(PC,D0.W),D0             ; $010F16  103B 003A
    MOVE.L A0,-(A7)                         ; $010F1A  2F08
    MOVE.L D1,-(A7)                         ; $010F1C  2F01
    MOVE.W D0,-(A7)                         ; $010F1E  3F00
    MOVE.L $26(A6),D1                       ; $010F20  222E 0026
    BEQ.S L_010F3C                          ; $010F24  6716
    MOVEA.L D1,A0                           ; $010F26  2041
    MOVE.W $1E(A6),$20(A6)                  ; $010F28  3D6E 001E 0020
    MOVE.W D0,$1E(A6)                       ; $010F2E  3D40 001E
    ADD.W D0,D0                             ; $010F32  D040
    ADDA.W $0(A0,D0.W),A0                   ; $010F34  D0F0 0000
    MOVE.L A0,$22(A6)                       ; $010F38  2D48 0022
L_010F3C:
    MOVE.W (A7)+,D0                         ; $010F3C  301F
    MOVE.L (A7)+,D1                         ; $010F3E  221F
    MOVEA.L (A7)+,A0                        ; $010F40  205F
    BSET #$03,$6D(A6)                       ; $010F42  08EE 0003 006D
    BSET #$04,$6D(A6)                       ; $010F48  08EE 0004 006D
    BRA.W L_010E90                          ; $010F4E  6000 FF40
L_010F52:
    dc.b $0F,$0F,$11,$11,$13,$13,$15,$15,$70,$05,$2F,$08,$2F,$01,$3F,$00 ; $010F52
    dc.b $22,$2E,$00,$26,$67,$16,$20,$41,$3D,$6E,$00,$1E,$00,$20,$3D,$40 ; $010F62
    dc.b $00,$1E,$D0,$40,$D0,$F0,$00,$00,$2D,$48,$00,$22,$30,$1F,$22,$1F ; $010F72
    dc.b $20,$5F,$08,$AE,$00,$05,$00,$6D,$60,$00,$FF,$04,$53,$6E,$00,$50 ; $010F82
    dc.b $6A,$00,$00,$94,$3D,$6E,$00,$4E,$00,$50,$30,$2E,$00,$36,$67,$08 ; $010F92
    dc.b $53,$40,$61,$00,$1F,$56,$60,$1C,$61,$00,$E4,$DA,$70,$00,$30,$2E ; $010FA2
    dc.b $00,$68,$10,$35,$00,$27,$52,$40,$E9,$48,$B6,$40,$62,$00,$00,$68 ; $010FB2
    dc.b $61,$00,$1F,$F6,$3D,$40,$00,$3A,$67,$00,$00,$5C,$61,$00,$1E,$D4 ; $010FC2
    dc.b $B0,$6E,$00,$1E,$67,$28,$2F,$08,$2F,$01,$3F,$00,$22,$2E,$00,$26 ; $010FD2
    dc.b $67,$16,$20,$41,$3D,$6E,$00,$1E,$00,$20,$3D,$40,$00,$1E,$D0,$40 ; $010FE2
    dc.b $D0,$F0,$00,$00,$2D,$48,$00,$22,$30,$1F,$22,$1F,$20,$5F,$2F,$08 ; $010FF2
    dc.b $2F,$01,$3F,$00,$22,$2E,$00,$26,$67,$16,$20,$41,$3D,$6E,$00,$1E ; $011002
    dc.b $00,$20,$3D,$40,$00,$1E,$D0,$40,$D0,$F0,$00,$00,$2D,$48,$00,$22 ; $011012
    dc.b $30,$1F,$22,$1F,$20,$5F,$4E,$75,$53,$6E,$00,$50,$6A,$04,$42,$6E ; $011022
    dc.b $00,$50,$53,$6E,$00,$6A,$6A,$04,$42,$6E,$00,$6A,$4A,$6E,$00,$66 ; $011032
    dc.b $6A,$00,$00,$DE,$08,$2E,$00,$04,$00,$45,$66,$00,$01,$44,$61,$00 ; $011042
    dc.b $17,$5E,$6B,$10,$08,$AE,$00,$01,$00,$45,$30,$02,$3D,$40,$00,$3A ; $011052
    dc.b $60,$00,$00,$C0,$4A,$2E,$00,$44,$67,$12,$53,$2E,$00,$3E,$6B,$0C ; $011062
    dc.b $4A,$6E,$00,$6A,$67,$00,$00,$0C,$60,$00,$00,$A6,$1D,$7C,$00,$04 ; $011072
    dc.b $00,$3E,$61,$00,$1F,$6A,$30,$2C,$00,$08,$B0,$6E,$00,$08,$67,$10 ; $011082
    dc.b $61,$00,$1F,$26,$E8,$49,$08,$EE,$00,$01,$00,$45,$60,$00,$00,$1E ; $011092
    dc.b $61,$00,$00,$AC,$4A,$40,$67,$E8,$6A,$0A,$3D,$7C,$00,$01,$00,$6A ; $0110A2
    dc.b $60,$00,$00,$70,$0C,$41,$00,$04,$65,$02,$72,$04,$4A,$41,$66,$02 ; $0110B2
    dc.b $72,$01,$E9,$49,$34,$2E,$00,$0E,$67,$58,$02,$81,$00,$00,$FF,$FF ; $0110C2
    dc.b $82,$C2,$4E,$BA,$87,$80,$3D,$40,$00,$3A,$3D,$41,$00,$66,$30,$2E ; $0110D2
    dc.b $00,$0E,$32,$2E,$00,$3A,$61,$00,$19,$14,$61,$00,$19,$98,$3D,$40 ; $0110E2
    dc.b $00,$0A,$3D,$41,$00,$0C,$70,$06,$2F,$08,$2F,$01,$3F,$00,$22,$2E ; $0110F2
    dc.b $00,$26,$67,$16,$20,$41,$3D,$6E,$00,$1E,$00,$20,$3D,$40,$00,$1E ; $011102
    dc.b $D0,$40,$D0,$F0,$00,$00,$2D,$48,$00,$22,$30,$1F,$22,$1F,$20,$5F ; $011112
    dc.b $4E,$75,$70,$05,$2F,$08,$2F,$01,$3F,$00,$22,$2E,$00,$26,$67,$16 ; $011122
    dc.b $20,$41,$3D,$6E,$00,$1E,$00,$20,$3D,$40,$00,$1E,$D0,$40,$D0,$F0 ; $011132
    dc.b $00,$00,$2D,$48,$00,$22,$30,$1F,$22,$1F,$20,$5F,$60,$D2,$08,$AE ; $011142
    dc.b $00,$01,$00,$45,$3B,$56,$0A,$34,$3B,$6E,$00,$02,$0A,$36,$3B,$6E ; $011152
    dc.b $00,$60,$0A,$38,$3B,$6E,$00,$08,$0A,$3A,$3B,$54,$0A,$3E,$3B,$6C ; $011162
    dc.b $00,$02,$0A,$40,$3B,$6C,$00,$60,$0A,$42,$3B,$6C,$00,$08,$0A,$44 ; $011172
    dc.b $48,$E7,$3F,$FE,$70,$01,$61,$00,$D0,$88,$4C,$DF,$7F,$FC,$4E,$75 ; $011182
    dc.b $3E,$2E,$00,$68,$1E,$35,$70,$32,$3D,$47,$00,$6A,$61,$B0,$4A,$40 ; $011192
    dc.b $67,$1C,$3D,$7C,$00,$0A,$00,$68,$42,$6E,$00,$36,$42,$6E,$00,$6A ; $0111A2
    dc.b $08,$AE,$00,$04,$00,$45,$42,$6E,$00,$34,$60,$00,$FE,$F8,$20,$6E ; $0111B2
    dc.b $00,$30,$3E,$2E,$00,$34,$70,$00,$10,$30,$70,$00,$0C,$00,$00,$FF ; $0111C2
    dc.b $66,$0E,$42,$6E,$00,$34,$08,$AE,$00,$04,$00,$45,$60,$00,$FE,$A4 ; $0111D2
    dc.b $52,$6E,$00,$34,$3D,$40,$00,$3A,$3D,$7C,$00,$0A,$00,$66,$70,$06 ; $0111E2
    dc.b $2F,$08,$2F,$01,$3F,$00,$22,$2E,$00,$26,$67,$16,$20,$41,$3D,$6E ; $0111F2
    dc.b $00,$1E,$00,$20,$3D,$40,$00,$1E,$D0,$40,$D0,$F0,$00,$00,$2D,$48 ; $011202
    dc.b $00,$22,$30,$1F,$22,$1F,$20,$5F,$60,$00,$FF,$06,$20,$6D,$09,$3A ; $011212
    dc.b $30,$2E,$00,$36,$67,$00,$FE,$FC,$D0,$40,$D0,$F0,$00,$00,$2D,$48 ; $011222
    dc.b $00,$30,$42,$6E,$00,$34,$08,$EE,$00,$04,$00,$45,$60,$00,$FF,$52 ; $011232
    dc.b $08,$EE,$00,$00,$00,$41,$08,$2E,$00,$01,$00,$45,$67,$0C,$3D,$7C ; $011242
    dc.b $00,$04,$00,$08,$08,$AE,$00,$00,$00,$41,$0C,$2E,$00,$03,$00,$11 ; $011252
    dc.b $64,$5C,$61,$00,$C4,$30,$3D,$40,$00,$08,$30,$2E,$00,$3A,$08,$00 ; $011262
    dc.b $00,$01,$67,$4A,$49,$FA,$49,$A0,$34,$2E,$00,$60,$D4,$42,$D4,$42 ; $011272
    dc.b $49,$F4,$20,$00,$30,$14,$E2,$48,$D0,$56,$32,$2C,$00,$02,$E2,$49 ; $011282
    dc.b $59,$41,$D2,$6E,$00,$02,$38,$2D,$07,$50,$E8,$49,$C2,$C4,$E6,$48 ; $011292
    dc.b $02,$40,$FF,$FE,$D0,$41,$28,$6D,$07,$46,$10,$34,$00,$00,$02,$40 ; $0112A2
    dc.b $00,$38,$0C,$40,$00,$08,$66,$06,$06,$6E,$01,$01,$00,$10,$3C,$2E ; $0112B2
    dc.b $00,$0A,$3E,$2E,$00,$0C,$DD,$56,$DF,$6E,$00,$02,$1A,$2E,$00,$10 ; $0112C2
    dc.b $6A,$02,$44,$05,$0C,$05,$00,$03,$65,$2A,$08,$2E,$00,$01,$00,$45 ; $0112D2
    dc.b $67,$0C,$72,$02,$0C,$05,$00,$06,$65,$0E,$72,$04,$60,$0A,$72,$01 ; $0112E2
    dc.b $0C,$05,$00,$06,$65,$02,$72,$02,$4A,$2E,$00,$10,$6B,$02,$44,$41 ; $0112F2
    dc.b $D3,$6E,$00,$02,$4E,$75,$30,$2E,$00,$1E,$0C,$40,$00,$00,$67,$00 ; $011302
    dc.b $00,$64,$0C,$40,$00,$01,$67,$00,$01,$2A,$0C,$40,$00,$02,$67,$00 ; $011312
    dc.b $01,$22,$0C,$40,$00,$03,$67,$00,$00,$6A,$70,$01,$2F,$08,$2F,$01 ; $011322
    dc.b $3F,$00,$22,$2E,$00,$26,$67,$16,$20,$41,$3D,$6E,$00,$1E,$00,$20 ; $011332
    dc.b $3D,$40,$00,$1E,$D0,$40,$D0,$F0,$00,$00,$2D,$48,$00,$22,$30,$1F ; $011342
    dc.b $22,$1F,$20,$5F,$2F,$00,$70,$00,$10,$3C,$00,$79,$67,$06,$4E,$B9 ; $011352
    dc.b $00,$00,$05,$90,$20,$1F,$70,$00,$10,$2E,$00,$4B,$3D,$40,$00,$6A ; $011362
    dc.b $60,$00,$00,$D4,$1D,$7C,$00,$00,$00,$41,$3D,$7C,$FF,$FF,$00,$08 ; $011372
    dc.b $53,$6E,$00,$6A,$6A,$00,$00,$C0,$61,$00,$C3,$0A,$3D,$40,$00,$08 ; $011382
    dc.b $60,$98,$1D,$7C,$00,$03,$00,$41,$53,$6E,$00,$50,$6A,$22,$4E,$B9 ; $011392
    dc.b $00,$00,$36,$1C,$02,$40,$00,$1F,$5A,$40,$3D,$40,$00,$50,$02,$40 ; $0113A2
    dc.b $00,$07,$4E,$B9,$00,$01,$2E,$FC,$3D,$40,$00,$3A,$61,$00,$9B,$2A ; $0113B2
    dc.b $08,$2E,$00,$05,$00,$6C,$67,$18,$32,$2E,$00,$3A,$70,$01,$08,$01 ; $0113C2
    dc.b $00,$00,$66,$00,$00,$16,$70,$02,$08,$01,$00,$01,$66,$00,$00,$0C ; $0113D2
    dc.b $53,$6E,$00,$6A,$6B,$18,$61,$00,$00,$60,$32,$00,$6B,$58,$30,$2E ; $0113E2
    dc.b $00,$0E,$61,$00,$16,$90,$D1,$56,$D3,$6E,$00,$02,$60,$48,$70,$02 ; $0113F2
    dc.b $2F,$08,$2F,$01,$3F,$00,$22,$2E,$00,$26,$67,$16,$20,$41,$3D,$6E ; $011402
    dc.b $00,$1E,$00,$20,$3D,$40,$00,$1E,$D0,$40,$D0,$F0,$00,$00,$2D,$48 ; $011412
    dc.b $00,$22,$30,$1F,$22,$1F,$20,$5F,$30,$2E,$00,$4E,$3D,$40,$00,$6A ; $011422
    dc.b $4E,$B9,$00,$00,$36,$1C,$02,$40,$00,$3C,$04,$40,$00,$20,$D1,$6E ; $011432
    dc.b $00,$6A,$53,$6E,$00,$6A,$4E,$75,$3B,$56,$0A,$34,$3B,$6E,$00,$02 ; $011442
    dc.b $0A,$36,$3B,$6E,$00,$60,$0A,$38,$3B,$6E,$00,$08,$0A,$3A,$61,$00 ; $011452
    dc.b $1B,$8E,$3B,$54,$0A,$3E,$3B,$6C,$00,$02,$0A,$40,$3B,$6C,$00,$60 ; $011462
    dc.b $0A,$42,$3B,$6C,$00,$08,$0A,$44,$48,$E7,$3F,$FE,$70,$01,$61,$00 ; $011472
    dc.b $CD,$90,$4C,$DF,$7F,$FC,$4E,$75,$10,$2E,$00,$3D,$67,$04,$1D,$40 ; $011482
    dc.b $00,$3B,$08,$2E,$00,$04,$00,$45,$66,$00,$01,$92,$61,$00,$13,$10 ; $011492
    dc.b $6A,$0E,$4A,$2E,$00,$44,$67,$26,$53,$2E,$00,$3E,$6B,$20,$4E,$75 ; $0114A2
    dc.b $0C,$2E,$00,$14,$00,$42,$67,$00,$01,$32,$0C,$2E,$00,$10,$00,$42 ; $0114B2
    dc.b $67,$E0,$0C,$2E,$00,$16,$00,$42,$67,$D8,$60,$00,$01,$E8,$1D,$7C ; $0114C2
    dc.b $00,$09,$00,$3E,$08,$2E,$00,$05,$00,$6C,$66,$18,$53,$6E,$00,$6A ; $0114D2
    dc.b $6B,$00,$00,$82,$4A,$6E,$00,$66,$6B,$08,$53,$6E,$00,$66,$6B,$00 ; $0114E2
    dc.b $01,$C4,$4E,$75,$3D,$7C,$00,$01,$00,$6A,$32,$2E,$00,$1E,$0C,$2E ; $0114F2
    dc.b $00,$14,$00,$42,$67,$32,$0C,$41,$00,$07,$67,$00,$00,$DE,$0C,$41 ; $011502
    dc.b $00,$0B,$67,$00,$00,$D6,$70,$0B,$0C,$41,$00,$0C,$67,$16,$0C,$41 ; $011512
    dc.b $00,$0A,$67,$10,$70,$07,$0C,$41,$00,$0E,$67,$08,$0C,$41,$00,$08 ; $011522
    dc.b $66,$00,$00,$B8,$60,$00,$00,$82,$70,$1B,$0C,$41,$00,$0B,$67,$F4 ; $011532
    dc.b $0C,$41,$00,$0C,$67,$EE,$0C,$41,$00,$0A,$67,$E8,$70,$17,$0C,$41 ; $011542
    dc.b $00,$0E,$67,$E0,$0C,$41,$00,$07,$67,$DA,$0C,$41,$00,$08,$67,$D4 ; $011552
    dc.b $60,$00,$00,$88,$61,$00,$00,$86,$E9,$49,$34,$2E,$00,$0E,$67,$08 ; $011562
    dc.b $02,$81,$00,$00,$FF,$FF,$82,$C2,$3D,$41,$00,$66,$4A,$40,$67,$00 ; $011572
    dc.b $01,$12,$6A,$0A,$3D,$7C,$00,$01,$00,$6A,$60,$00,$00,$5E,$72,$00 ; $011582
    dc.b $12,$2E,$00,$43,$E9,$49,$82,$40,$41,$FA,$42,$78,$10,$30,$10,$00 ; $011592
    dc.b $61,$00,$19,$00,$0C,$40,$00,$05,$67,$00,$00,$E8,$3E,$2E,$00,$68 ; $0115A2
    dc.b $1E,$35,$70,$32,$3D,$47,$00,$6A,$4E,$BA,$82,$AC,$B0,$6E,$00,$1E ; $0115B2
    dc.b $67,$28,$2F,$08,$2F,$01,$3F,$00,$22,$2E,$00,$26,$67,$16,$20,$41 ; $0115C2
    dc.b $3D,$6E,$00,$1E,$00,$20,$3D,$40,$00,$1E,$D0,$40,$D0,$F0,$00,$00 ; $0115D2
    dc.b $2D,$48,$00,$22,$30,$1F,$22,$1F,$20,$5F,$4E,$75,$3B,$56,$0A,$34 ; $0115E2
    dc.b $3B,$6E,$00,$02,$0A,$36,$3B,$6E,$00,$60,$0A,$38,$3B,$6E,$00,$08 ; $0115F2
    dc.b $0A,$3A,$61,$00,$19,$EA,$3B,$54,$0A,$3E,$3B,$6C,$00,$02,$0A,$40 ; $011602
    dc.b $3B,$6C,$00,$60,$0A,$42,$3B,$6C,$00,$08,$0A,$44,$48,$E7,$3F,$FE ; $011612
    dc.b $70,$01,$61,$00,$CB,$EC,$4C,$DF,$7F,$FC,$4E,$75,$53,$6E,$00,$6A ; $011622
    dc.b $6A,$32,$3E,$2E,$00,$68,$67,$2C,$1E,$35,$70,$32,$3D,$47,$00,$6A ; $011632
    dc.b $61,$AA,$4A,$40,$67,$1E,$6B,$1C,$3D,$7C,$00,$0A,$00,$68,$42,$6E ; $011642
    dc.b $00,$36,$42,$6E,$00,$6A,$08,$AE,$00,$04,$00,$45,$42,$6E,$00,$34 ; $011652
    dc.b $60,$00,$FF,$2C,$20,$6E,$00,$30,$3E,$2E,$00,$34,$70,$00,$10,$30 ; $011662
    dc.b $70,$00,$0C,$00,$00,$FF,$66,$0E,$42,$6E,$00,$34,$08,$AE,$00,$04 ; $011672
    dc.b $00,$45,$60,$00,$FE,$E0,$52,$6E,$00,$34,$61,$00,$18,$16,$60,$00 ; $011682
    dc.b $FF,$28,$20,$6D,$09,$3A,$30,$2E,$00,$36,$67,$18,$D0,$40,$D0,$F0 ; $011692
    dc.b $00,$00,$2D,$48,$00,$30,$42,$6E,$00,$34,$08,$EE,$00,$04,$00,$45 ; $0116A2
    dc.b $60,$00,$FF,$7A,$30,$2E,$00,$3A,$41,$FA,$00,$38,$02,$40,$00,$0F ; $0116B2
    dc.b $D0,$40,$30,$30,$00,$00,$2F,$08,$2F,$01,$3F,$00,$22,$2E,$00,$26 ; $0116C2
    dc.b $67,$16,$20,$41,$3D,$6E,$00,$1E,$00,$20,$3D,$40,$00,$1E,$D0,$40 ; $0116D2
    dc.b $D0,$F0,$00,$00,$2D,$48,$00,$22,$30,$1F,$22,$1F,$20,$5F,$60,$00 ; $0116E2
    dc.b $FE,$FA,$00,$05,$00,$0F,$00,$13,$00,$00,$00,$15,$00,$16,$00,$14 ; $0116F2
    dc.b $00,$00,$00,$11,$00,$10,$00,$12,$00,$00,$00,$00,$00,$00,$00,$00 ; $011702
    dc.b $00,$00,$60,$00,$FD,$74,$60,$00,$FD,$70,$60,$00,$FD,$6C,$60,$00 ; $011712
    dc.b $FD,$68,$60,$00,$FD,$64,$4A,$6E,$00,$4E,$67,$00,$FD,$5C,$53,$6E ; $011722
    dc.b $00,$4E,$66,$00,$FD,$54,$70,$04,$2F,$08,$2F,$01,$3F,$00,$22,$2E ; $011732
    dc.b $00,$26,$67,$16,$20,$41,$3D,$6E,$00,$1E,$00,$20,$3D,$40,$00,$1E ; $011742
    dc.b $D0,$40,$D0,$F0,$00,$00,$2D,$48,$00,$22,$30,$1F,$22,$1F,$20,$5F ; $011752
    dc.b $4E,$75,$4E,$75,$61,$00,$18,$88,$4A,$41,$6B,$04,$61,$00,$97,$7A ; $011762
    dc.b $4E,$75,$53,$6E,$00,$50,$6A,$36,$3D,$6E,$00,$4E,$00,$50,$30,$2E ; $011772
    dc.b $00,$36,$67,$08,$53,$40,$61,$00,$17,$72,$60,$08,$61,$00,$10,$20 ; $011782
    dc.b $61,$00,$18,$5C,$3D,$40,$00,$3A,$67,$14,$61,$00,$97,$4C,$30,$2E ; $011792
    dc.b $00,$3A,$02,$40,$00,$0F,$10,$3B,$00,$08,$3D,$40,$00,$5E,$4E,$75 ; $0117A2
    dc.b $00,$00,$00,$00,$00,$01,$01,$00,$00,$01,$01,$00,$00,$00,$00,$00 ; $0117B2
    dc.b $0C,$6E,$00,$02,$00,$1E,$66,$20,$53,$6E,$00,$50,$6A,$1A,$3D,$6E ; $0117C2
    dc.b $00,$4E,$00,$50,$30,$2E,$00,$36,$67,$0A,$53,$40,$61,$00,$17,$1C ; $0117D2
    dc.b $3D,$40,$00,$3A,$4E,$BA,$97,$02,$4E,$75,$53,$6E,$00,$6A,$6A,$0C ; $0117E2
    dc.b $3E,$2E,$00,$68,$1E,$35,$70,$32,$3D,$47,$00,$6A,$30,$2E,$00,$36 ; $0117F2
    dc.b $67,$08,$53,$40,$61,$00,$16,$F4,$60,$04,$61,$00,$17,$E2,$4A,$40 ; $011802
    dc.b $6B,$50,$B0,$6E,$00,$3A,$67,$12,$2F,$00,$70,$00,$10,$3C,$00,$54 ; $011812
    dc.b $67,$06,$4E,$B9,$00,$00,$05,$90,$20,$1F,$3D,$40,$00,$3A,$72,$00 ; $011822
    dc.b $12,$3B,$00,$32,$3D,$41,$00,$5E,$4A,$6E,$00,$36,$66,$0A,$30,$2E ; $011832
    dc.b $00,$08,$B0,$6C,$00,$08,$66,$1A,$4A,$2E,$00,$4A,$67,$14,$53,$6E ; $011842
    dc.b $00,$50,$6A,$0E,$3D,$6E,$00,$4E,$00,$50,$61,$00,$96,$8C,$50,$6E ; $011852
    dc.b $00,$5E,$4E,$75,$00,$00,$04,$00,$06,$07,$05,$00,$02,$01,$03,$00 ; $011862
    dc.b $00,$00,$00,$00,$53,$6E,$00,$50,$6A,$5E,$3D,$6E,$00,$4E,$00,$50 ; $011872
    dc.b $30,$2E,$00,$36,$67,$08,$53,$40,$61,$00,$16,$70,$60,$1A,$61,$00 ; $011882
    dc.b $DB,$F4,$70,$00,$30,$2E,$00,$68,$10,$35,$00,$27,$52,$40,$E9,$48 ; $011892
    dc.b $B6,$40,$62,$34,$61,$00,$17,$12,$3D,$40,$00,$3A,$67,$2A,$70,$06 ; $0118A2
    dc.b $2F,$08,$2F,$01,$3F,$00,$22,$2E,$00,$26,$67,$16,$20,$41,$3D,$6E ; $0118B2
    dc.b $00,$1E,$00,$20,$3D,$40,$00,$1E,$D0,$40,$D0,$F0,$00,$00,$2D,$48 ; $0118C2
    dc.b $00,$22,$30,$1F,$22,$1F,$20,$5F,$4E,$75                         ; $0118D2
L_0118DC:
    SUBQ.W #1,$10(A6)                       ; $0118DC  536E 0010
    BMI.S L_0118FA                          ; $0118E0  6B18
    ADDQ.W #1,$5E(A6)                       ; $0118E2  526E 005E
    MOVE.W $12(A6),D0                       ; $0118E6  302E 0012
    ADDQ.W #7,D0                            ; $0118EA  5E40
    CMP.W $5E(A6),D0                        ; $0118EC  B06E 005E
    BCC.S L_0118F8                          ; $0118F0  6406
    MOVE.W $12(A6),$5E(A6)                  ; $0118F2  3D6E 0012 005E
L_0118F8:
    RTS                                     ; $0118F8  4E75
L_0118FA:
    BSET #$03,$6C(A6)                       ; $0118FA  08EE 0003 006C
    BNE.S L_01191E                          ; $011900  661C
    MOVE.B #$00,$41(A6)                     ; $011902  1D7C 0000 0041
    MOVE.W #$0088,D0                        ; $011908  303C 0088
    MOVE.W D0,$5E(A6)                       ; $01190C  3D40 005E
    ADDQ.W #6,D0                            ; $011910  5C40
    MOVE.W D0,$12(A6)                       ; $011912  3D40 0012
    MOVE.W #$0006,$10(A6)                   ; $011916  3D7C 0006 0010
    BRA.S L_0118DC                          ; $01191C  60BE
L_01191E:
    CLR.B $6C(A6)                           ; $01191E  422E 006C
    RTS                                     ; $011922  4E75
L_011924:
    SUBQ.W #1,$5E(A6)                       ; $011924  536E 005E
    MOVE.W #$0087,D0                        ; $011928  303C 0087
    CMP.W $5E(A6),D0                        ; $01192C  B06E 005E
    BCC.S L_011934                          ; $011930  6402
    RTS                                     ; $011932  4E75
L_011934:
    CLR.B $6C(A6)                           ; $011934  422E 006C
    RTS                                     ; $011938  4E75
L_01193A:
    MOVE.W $10(A6),D0                       ; $01193A  302E 0010
    CMPI.W #$0001,$36(A6)                   ; $01193E  0C6E 0001 0036
    BEQ.W L_0119D8                          ; $011944  6700 0092
    CMPI.W #$0004,$10(A6)                   ; $011948  0C6E 0004 0010
    BCS.S L_01198C                          ; $01194E  653C
    ADDQ.W #1,$10(A6)                       ; $011950  526E 0010
    CMPI.W #$0010,$10(A6)                   ; $011954  0C6E 0010 0010
    BCS.S L_011964                          ; $01195A  6508
    MOVE.W #$0000,$10(A6)                   ; $01195C  3D7C 0000 0010
    BRA.S L_0119B0                          ; $011962  604C
L_011964:
    CMPI.W #$000C,$10(A6)                   ; $011964  0C6E 000C 0010
    BNE.S L_011972                          ; $01196A  6606
    MOVE.W #$0008,$10(A6)                   ; $01196C  3D7C 0008 0010
L_011972:
    SUBQ.W #1,$12(A6)                       ; $011972  536E 0012
    BPL.S L_0119B0                          ; $011976  6A38
    MOVEQ #$00,D1                           ; $011978  7200
    MOVE.B $4C(A6),D1                       ; $01197A  122E 004C
    ADDQ.W #4,D1                            ; $01197E  5841
    MOVE.W D1,$12(A6)                       ; $011980  3D41 0012
    MOVE.W #$000C,$10(A6)                   ; $011984  3D7C 000C 0010
    BRA.S L_0119B0                          ; $01198A  6024
L_01198C:
    SUBQ.W #1,$50(A6)                       ; $01198C  536E 0050
    BPL.S L_0119A0                          ; $011990  6A0E
    MOVE.W $4E(A6),$50(A6)                  ; $011992  3D6E 004E 0050
    MOVE.W #$0004,$10(A6)                   ; $011998  3D7C 0004 0010
    BRA.S L_0119B0                          ; $01199E  6010
L_0119A0:
    ADDQ.W #1,$10(A6)                       ; $0119A0  526E 0010
    CMPI.W #$0004,$10(A6)                   ; $0119A4  0C6E 0004 0010
    BCS.S L_0119B0                          ; $0119AA  6504
    CLR.W $10(A6)                           ; $0119AC  426E 0010
L_0119B0:
    ADD.W D0,D0                             ; $0119B0  D040
    LEA L_0119EE(PC),A0                     ; $0119B2  41FA 003A
    ADDA.W $0(A0,D0.W),A0                   ; $0119B6  D0F0 0000
    MOVE.W (A0)+,$5E(A6)                    ; $0119BA  3D58 005E
    MOVE.W $2(A6),-(A7)                     ; $0119BE  3F2E 0002
L_0119C2:
    MOVE.W (A0)+,D4                         ; $0119C2  3818
    BMI.S L_0119D2                          ; $0119C4  6B0C
    ADDI.W #$0010,$2(A6)                    ; $0119C6  066E 0010 0002
    JSR L_00BCE6(PC)                        ; $0119CC  4EBA A318
    BRA.S L_0119C2                          ; $0119D0  60F0
L_0119D2:
    MOVE.W (A7)+,$2(A6)                     ; $0119D2  3D5F 0002
    BRA.S L_0119EC                          ; $0119D6  6014
L_0119D8:
    ADDQ.W #1,$10(A6)                       ; $0119D8  526E 0010
    CMPI.W #$000C,$10(A6)                   ; $0119DC  0C6E 000C 0010
    BCS.S L_0119EA                          ; $0119E2  6506
    MOVE.W #$0008,$10(A6)                   ; $0119E4  3D7C 0008 0010
L_0119EA:
    BRA.S L_0119B0                          ; $0119EA  60C4
L_0119EC:
    RTS                                     ; $0119EC  4E75
L_0119EE:
    dc.b $00,$20,$00,$24,$00,$28,$00,$2C,$00,$30,$00,$36,$00,$3E,$00,$48 ; $0119EE
    dc.b $00,$54,$00,$60,$00,$6C,$00,$78,$00,$48,$00,$3E,$00,$36,$00,$30 ; $0119FE
    dc.b $00,$00,$FF,$FF,$00,$01,$FF,$FF,$00,$02,$FF,$FF,$00,$03,$FF,$FF ; $011A0E
    dc.b $00,$04,$00,$08,$FF,$FF,$00,$05,$00,$0C,$00,$09,$FF,$FF,$00,$06 ; $011A1E
    dc.b $00,$0D,$00,$11,$00,$0A,$FF,$FF,$00,$07,$00,$0E,$00,$12,$00,$16 ; $011A2E
    dc.b $00,$0B,$FF,$FF,$00,$04,$00,$0C,$00,$10,$00,$14,$00,$18,$FF,$FF ; $011A3E
    dc.b $00,$05,$00,$0D,$00,$11,$00,$15,$00,$19,$FF,$FF,$00,$06,$00,$0E ; $011A4E
    dc.b $00,$12,$00,$16,$00,$1A,$FF,$FF,$00,$07,$00,$0F,$00,$13,$00,$17 ; $011A5E
    dc.b $00,$1B,$FF,$FF,$4A,$6E,$00,$68,$66,$08,$3D,$7C,$00,$03,$00,$5E ; $011A6E
    dc.b $4E,$75,$49,$ED,$40,$B8,$70,$00,$72,$FF,$61,$00,$00,$84,$3F,$00 ; $011A7E
    dc.b $3F,$01,$70,$00,$72,$FF,$49,$ED,$41,$2E,$61,$00,$00,$74,$36,$1F ; $011A8E
    dc.b $34,$1F,$08,$02,$00,$01,$67,$0E,$08,$00,$00,$01,$67,$10,$B4,$40 ; $011A9E
    dc.b $65,$0C,$36,$01,$60,$08,$08,$00,$00,$01,$67,$4C,$34,$00,$02,$42 ; $011AAE
    dc.b $00,$0F,$3D,$42,$00,$3A,$14,$3B,$20,$5E,$3D,$42,$00,$5E,$4A,$2E ; $011ABE
    dc.b $00,$4A,$67,$32,$0C,$6E,$00,$05,$00,$50,$64,$04,$52,$6E,$00,$5E ; $011ACE
    dc.b $53,$6E,$00,$50,$6A,$20,$3D,$6E,$00,$4E,$00,$50,$4E,$BA,$93,$FE ; $011ADE
    dc.b $30,$2C,$00,$0A,$E2,$40,$D1,$54,$30,$2C,$00,$0C,$E2,$40,$D1,$6C ; $011AEE
    dc.b $00,$02,$52,$6E,$00,$5E,$4E,$75,$3D,$7C,$00,$03,$00,$5E,$4E,$75 ; $011AFE
    dc.b $08,$2C,$00,$07,$00,$6C,$67,$0C,$08,$2C,$00,$05,$00,$45,$66,$04 ; $011B0E
    dc.b $61,$00,$14,$9A,$4E,$75,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00 ; $011B1E
    dc.b $06,$00,$00,$00,$00,$00,$53,$6E,$00,$50,$4E,$75,$0C,$6E,$00,$04 ; $011B2E
    dc.b $00,$50,$66,$08,$2F,$0E,$4E,$BA,$8A,$E4,$2C,$5F,$53,$6E,$00,$50 ; $011B3E
    dc.b $6A,$00,$00,$32,$3D,$6E,$00,$4E,$00,$50,$61,$00,$D9,$2C,$70,$00 ; $011B4E
    dc.b $30,$2E,$00,$68,$10,$35,$00,$27,$52,$40,$E9,$48,$B6,$40,$62,$14 ; $011B5E
    dc.b $61,$00,$14,$4A,$3D,$40,$00,$3A,$52,$6E,$00,$08,$4E,$BA,$93,$6E ; $011B6E
    dc.b $53,$6E,$00,$08,$4E,$75,$52,$6E,$00,$5E,$0C,$6E,$00,$0F,$00,$5E ; $011B7E
    dc.b $66,$04,$42,$6E,$00,$5E,$4A,$2E,$00,$43,$66,$2E,$4A,$6E,$00,$3A ; $011B8E
    dc.b $66,$06,$3D,$7C,$00,$06,$00,$3A,$2C,$2E,$00,$0A,$66,$10,$4E,$B9 ; $011B9E
    dc.b $00,$00,$36,$1C,$02,$40,$00,$07,$61,$00,$13,$44,$60,$34,$3E,$06 ; $011BAE
    dc.b $48,$46,$DD,$56,$DF,$6E,$00,$02,$60,$48,$0C,$2E,$00,$28,$00,$42 ; $011BBE
    dc.b $67,$0A,$30,$2E,$00,$52,$91,$2E,$00,$48,$65,$38,$45,$F9,$00,$01 ; $011BCE
    dc.b $4E,$F6,$70,$00,$10,$2E,$00,$43,$10,$32,$00,$00,$32,$2E,$00,$3A ; $011BDE
    dc.b $B3,$40,$3D,$40,$00,$3A,$32,$00,$30,$2E,$00,$0E,$3D,$41,$00,$38 ; $011BEE
    dc.b $61,$00,$0E,$86,$3D,$40,$00,$0A,$3D,$41,$00,$0C,$D1,$56,$D3,$6E ; $011BFE
    dc.b $00,$02,$4E,$75,$42,$2E,$00,$48,$70,$04,$2F,$08,$2F,$01,$3F,$00 ; $011C0E
    dc.b $22,$2E,$00,$26,$67,$16,$20,$41,$3D,$6E,$00,$1E,$00,$20,$3D,$40 ; $011C1E
    dc.b $00,$1E,$D0,$40,$D0,$F0,$00,$00,$2D,$48,$00,$22,$30,$1F,$22,$1F ; $011C2E
    dc.b $20,$5F,$4E,$75,$48,$E7,$FF,$FE,$4E,$B9,$00,$00,$8E,$FA,$4E,$B9 ; $011C3E
    dc.b $00,$00,$8F,$34,$28,$6D,$08,$DA,$30,$14,$04,$40,$00,$14,$90,$6D ; $011C4E
    dc.b $07,$2E,$3B,$40,$08,$EE,$30,$2C,$00,$02,$04,$40,$00,$14,$90,$6D ; $011C5E
    dc.b $07,$30,$3B,$40,$08,$F0,$7E,$63,$4D,$ED,$16,$4C,$2C,$FC,$FF,$FF ; $011C6E
    dc.b $FF,$FF,$42,$5E,$51,$CF,$FF,$F6,$7E,$64,$3F,$07,$61,$00,$01,$4A ; $011C7E
    dc.b $61,$00,$00,$9E,$61,$00,$00,$9A,$61,$00,$00,$96,$4E,$B9,$00,$00 ; $011C8E
    dc.b $3B,$92,$4E,$B9,$00,$00,$8A,$94,$7A,$63,$4D,$ED,$16,$4C,$41,$FA ; $011C9E
    dc.b $00,$C8,$3C,$16,$6B,$2C,$3E,$2E,$00,$02,$32,$2E,$00,$04,$30,$30 ; $011CAE
    dc.b $10,$00,$6A,$08,$2C,$BC,$FF,$FF,$FF,$FF,$60,$16,$54,$6E,$00,$04 ; $011CBE
    dc.b $24,$6D,$07,$60,$48,$E7,$0C,$82,$4E,$B9,$00,$00,$3A,$7A,$4C,$DF ; $011CCE
    dc.b $41,$30,$5C,$8E,$51,$CD,$FF,$CC,$3E,$17,$0C,$47,$00,$07,$64,$20 ; $011CDE
    dc.b $30,$07,$06,$40,$00,$0A,$3C,$2D,$08,$EE,$3E,$2D,$08,$F0,$06,$46 ; $011CEE
    dc.b $00,$14,$06,$47,$00,$14,$24,$6D,$07,$66,$4E,$B9,$00,$00,$39,$EC ; $011CFE
    dc.b $2F,$00,$20,$2D,$04,$72,$B0,$AD,$04,$72,$67,$FA,$20,$1F,$4E,$B9 ; $011D0E
    dc.b $00,$00,$45,$D4,$3E,$1F,$51,$CF,$FF,$62,$4C,$DF,$7F,$FF,$4E,$75 ; $011D1E
    dc.b $4E,$B9,$00,$00,$36,$1C,$7E,$63,$4D,$ED,$16,$4C,$0C,$96,$FF,$FF ; $011D2E
    dc.b $FF,$FF,$67,$08,$5C,$8E,$51,$CF,$FF,$F4,$60,$2A,$02,$40,$00,$3F ; $011D3E
    dc.b $D0,$6D,$08,$EE,$3C,$80,$4E,$B9,$00,$00,$36,$1C,$02,$40,$00,$3F ; $011D4E
    dc.b $D0,$6D,$08,$F0,$3D,$40,$00,$02,$02,$40,$00,$06,$41,$FA,$00,$0A ; $011D5E
    dc.b $3D,$70,$00,$00,$00,$04,$4E,$75,$00,$08,$00,$28,$00,$40,$00,$52 ; $011D6E
    dc.b $00,$0C,$00,$0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13 ; $011D7E
    dc.b $00,$12,$00,$11,$00,$10,$00,$0F,$00,$0E,$00,$0D,$00,$0C,$FF,$FF ; $011D8E
    dc.b $00,$0C,$00,$0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13 ; $011D9E
    dc.b $00,$11,$00,$0F,$00,$0D,$FF,$FF,$00,$0C,$00,$0E,$00,$10,$00,$12 ; $011DAE
    dc.b $00,$13,$00,$11,$00,$0F,$00,$0D,$FF,$FF,$00,$0C,$00,$0F,$00,$12 ; $011DBE
    dc.b $00,$11,$00,$0E,$00,$0D,$FF,$FF,$4E,$B9,$00,$00,$36,$1C,$02,$40 ; $011DCE
    dc.b $00,$07,$10,$3B,$00,$16,$2F,$00,$10,$00,$67,$0A,$02,$40,$00,$FF ; $011DDE
    dc.b $4E,$B9,$00,$00,$05,$90,$20,$1F,$4E,$75,$42,$40,$43,$40,$42,$42 ; $011DEE
    dc.b $40,$42,$48,$E7,$FF,$FE,$4E,$B9,$00,$00,$8E,$FA,$4E,$B9,$00,$00 ; $011DFE
    dc.b $8F,$34,$49,$ED,$40,$B8,$1F,$2C,$00,$6C,$42,$2C,$00,$6C,$49,$ED ; $011E0E
    dc.b $41,$2E,$1F,$2C,$00,$6C,$42,$2C,$00,$6C,$28,$6D,$08,$DA,$39,$7C ; $011E1E
    dc.b $00,$04,$00,$5E,$30,$14,$04,$40,$00,$90,$3B,$40,$07,$2E,$30,$2C ; $011E2E
    dc.b $00,$02,$04,$40,$00,$48,$3B,$40,$07,$30,$30,$14,$04,$40,$00,$1F ; $011E3E
    dc.b $90,$6D,$07,$2E,$3B,$40,$08,$EE,$30,$2C,$00,$02,$04,$40,$00,$1F ; $011E4E
    dc.b $90,$6D,$07,$30,$3B,$40,$08,$F0,$7E,$63,$4D,$ED,$16,$4C,$2C,$FC ; $011E5E
    dc.b $FF,$FF,$FF,$FF,$42,$5E,$51,$CF,$FF,$F6,$7E,$64,$3F,$07,$0C,$47 ; $011E6E
    dc.b $00,$32,$65,$10,$61,$00,$FF,$52,$61,$00,$00,$9C,$61,$00,$00,$98 ; $011E7E
    dc.b $61,$00,$00,$94,$4E,$B9,$00,$00,$3B,$92,$4E,$B9,$00,$00,$8A,$94 ; $011E8E
    dc.b $7A,$63,$4D,$ED,$16,$4C,$41,$FA,$00,$C8,$3C,$16,$6B,$2C,$3E,$2E ; $011E9E
    dc.b $00,$02,$32,$2E,$00,$04,$30,$30,$10,$00,$6A,$08,$2C,$BC,$FF,$FF ; $011EAE
    dc.b $FF,$FF,$60,$16,$54,$6E,$00,$04,$24,$6D,$07,$66,$48,$E7,$0C,$82 ; $011EBE
    dc.b $4E,$B9,$00,$00,$39,$EC,$4C,$DF,$41,$30,$5C,$8E,$51,$CD,$FF,$CC ; $011ECE
    dc.b $4E,$B9,$00,$00,$45,$D4,$3E,$1F,$0C,$47,$00,$19,$66,$0A,$28,$6D ; $011EDE
    dc.b $08,$DA,$39,$7C,$00,$06,$00,$5E,$51,$CF,$FF,$82,$3B,$7C,$0F,$FF ; $011EEE
    dc.b $04,$82,$4E,$B9,$00,$00,$15,$E0,$49,$ED,$41,$2E,$19,$5F,$00,$6C ; $011EFE
    dc.b $49,$ED,$40,$B8,$19,$5F,$00,$6C,$4C,$DF,$7F,$FF,$42,$6D,$04,$82 ; $011F0E
    dc.b $4E,$F9,$00,$00,$15,$E0,$4E,$B9,$00,$00,$36,$1C,$7E,$63,$4D,$ED ; $011F1E
    dc.b $16,$4C,$0C,$96,$FF,$FF,$FF,$FF,$67,$0A,$5C,$8E,$51,$CF,$FF,$F4 ; $011F2E
    dc.b $60,$00,$00,$2C,$02,$40,$00,$3F,$D0,$6D,$08,$EE,$3C,$80,$4E,$B9 ; $011F3E
    dc.b $00,$00,$36,$1C,$02,$40,$00,$3F,$D0,$6D,$08,$F0,$3D,$40,$00,$02 ; $011F4E
    dc.b $02,$40,$00,$06,$41,$FA,$00,$0A,$3D,$70,$00,$00,$00,$04,$4E,$75 ; $011F5E
    dc.b $00,$08,$00,$1E,$00,$2C,$00,$3C,$00,$00,$00,$01,$00,$02,$00,$03 ; $011F6E
    dc.b $00,$04,$00,$05,$00,$06,$00,$07,$00,$08,$00,$09,$FF,$FF,$00,$00 ; $011F7E
    dc.b $00,$02,$00,$04,$00,$06,$00,$08,$00,$09,$FF,$FF,$00,$00,$00,$01 ; $011F8E
    dc.b $00,$03,$00,$04,$00,$06,$00,$08,$00,$09,$FF,$FF,$00,$02,$00,$05 ; $011F9E
    dc.b $00,$09,$FF,$FF                                                 ; $011FAE
L_011FB2:
    BTST #$00,$6C(A6)                       ; $011FB2  082E 0000 006C
    BNE.S L_011FC2                          ; $011FB8  6608
    BCLR #$07,$6C(A6)                       ; $011FBA  08AE 0007 006C
    RTS                                     ; $011FC0  4E75
L_011FC2:
    SUBQ.W #2,$10(A6)                       ; $011FC2  556E 0010
    BMI.W L_011FCC                          ; $011FC6  6B00 0004
    RTS                                     ; $011FCA  4E75
L_011FCC:
    BCLR #$07,$6C(A6)                       ; $011FCC  08AE 0007 006C
    BRA.W L_012342                          ; $011FD2  6000 036E
L_011FD6:
    BTST #$00,$6C(A6)                       ; $011FD6  082E 0000 006C
    BNE.S L_011FE6                          ; $011FDC  6608
    BCLR #$07,$6C(A6)                       ; $011FDE  08AE 0007 006C
    RTS                                     ; $011FE4  4E75
L_011FE6:
    SUBQ.W #2,$10(A6)                       ; $011FE6  556E 0010
    BMI.W L_012036                          ; $011FEA  6B00 004A
    BSR.W L_012FF0                          ; $011FEE  6100 1000
    TST.W D0                                ; $011FF2  4A40
    BMI.S L_012008                          ; $011FF4  6B12
    MOVE.W D0,$3A(A6)                       ; $011FF6  3D40 003A
    MOVE.B L_012026(PC,D0.W),D0             ; $011FFA  103B 002A
    MOVE.B L_01201E(PC,D0.W),D0             ; $011FFE  103B 001E
    ADDQ.W #1,D0                            ; $012002  5240
    MOVE.W D0,$5E(A6)                       ; $012004  3D40 005E
L_012008:
    MOVE.W $E(A6),D0                        ; $012008  302E 000E
    MOVE.W $3A(A6),D1                       ; $01200C  322E 003A
    BSR.W L_012A86                          ; $012010  6100 0A74
    MOVE.W D0,$A(A6)                        ; $012014  3D40 000A
    MOVE.W D1,$C(A6)                        ; $012018  3D41 000C
    RTS                                     ; $01201C  4E75
L_01201E:
    dc.b $00,$03,$06,$09,$0C,$0F,$12,$15                                 ; $01201E
L_012026:
    dc.b $00,$00,$04,$00,$06,$07,$05,$00,$02,$01,$03,$00,$00,$00,$00,$00 ; $012026
L_012036:
    BCLR #$07,$6C(A6)                       ; $012036  08AE 0007 006C
    BRA.W L_012342                          ; $01203C  6000 0304
L_012040:
    BTST #$00,$6C(A6)                       ; $012040  082E 0000 006C
    BNE.S L_012050                          ; $012046  6608
    BCLR #$07,$6C(A6)                       ; $012048  08AE 0007 006C
    RTS                                     ; $01204E  4E75
L_012050:
    MOVE.W $A(A6),D6                        ; $012050  3C2E 000A
    MOVE.W $C(A6),D7                        ; $012054  3E2E 000C
    ADD.W D6,(A6)                           ; $012058  DD56
    ADD.W D7,$2(A6)                         ; $01205A  DF6E 0002
    SUBQ.W #1,$10(A6)                       ; $01205E  536E 0010
    BPL.S L_01206E                          ; $012062  6A0A
    BCLR #$07,$6C(A6)                       ; $012064  08AE 0007 006C
    BRA.W L_012342                          ; $01206A  6000 02D6
L_01206E:
    RTS                                     ; $01206E  4E75
L_012070:
    BTST #$00,$6C(A6)                       ; $012070  082E 0000 006C
    BNE.S L_012080                          ; $012076  6608
    BCLR #$07,$6C(A6)                       ; $012078  08AE 0007 006C
    RTS                                     ; $01207E  4E75
L_012080:
    SUBQ.W #1,$10(A6)                       ; $012080  536E 0010
    BPL.S L_012090                          ; $012084  6A0A
    BCLR #$07,$6C(A6)                       ; $012086  08AE 0007 006C
    BRA.W L_012342                          ; $01208C  6000 02B4
L_012090:
    RTS                                     ; $012090  4E75
L_012092:
    BTST #$00,$6C(A6)                       ; $012092  082E 0000 006C
    BNE.S L_0120A2                          ; $012098  6608
    BCLR #$07,$6C(A6)                       ; $01209A  08AE 0007 006C
    RTS                                     ; $0120A0  4E75
L_0120A2:
    MOVE.W $A(A6),D6                        ; $0120A2  3C2E 000A
    MOVE.W $C(A6),D7                        ; $0120A6  3E2E 000C
    ADD.W D6,(A6)                           ; $0120AA  DD56
    ADD.W D7,$2(A6)                         ; $0120AC  DF6E 0002
    ADDQ.W #1,$5E(A6)                       ; $0120B0  526E 005E
    MOVE.W $5A(A6),D1                       ; $0120B4  322E 005A
    ADDQ.W #4,D1                            ; $0120B8  5841
    CMP.W $5E(A6),D1                        ; $0120BA  B26E 005E
    BNE.S L_0120C6                          ; $0120BE  6606
    MOVE.W $5A(A6),$5E(A6)                  ; $0120C0  3D6E 005A 005E
L_0120C6:
    SUBQ.W #1,$10(A6)                       ; $0120C6  536E 0010
    BPL.S L_0120D6                          ; $0120CA  6A0A
    BCLR #$07,$6C(A6)                       ; $0120CC  08AE 0007 006C
    BRA.W L_012342                          ; $0120D2  6000 026E
L_0120D6:
    RTS                                     ; $0120D6  4E75
L_0120D8:
    BTST #$00,$6C(A6)                       ; $0120D8  082E 0000 006C
    BNE.S L_0120E8                          ; $0120DE  6608
    BCLR #$07,$6C(A6)                       ; $0120E0  08AE 0007 006C
    RTS                                     ; $0120E6  4E75
L_0120E8:
    SUBQ.W #1,$10(A6)                       ; $0120E8  536E 0010
    BEQ.S L_012100                          ; $0120EC  6712
    BMI.S L_01210A                          ; $0120EE  6B1A
    MOVE.W $A(A6),D6                        ; $0120F0  3C2E 000A
    MOVE.W $C(A6),D7                        ; $0120F4  3E2E 000C
    ADD.W D6,(A6)                           ; $0120F8  DD56
    ADD.W D7,$2(A6)                         ; $0120FA  DF6E 0002
    BRA.S L_012116                          ; $0120FE  6016
L_012100:
    BSR.W L_00D696                          ; $012100  6100 B594
    CMP.W $8(A6),D0                         ; $012104  B06E 0008
    BNE.S L_01212A                          ; $012108  6620
L_01210A:
    MOVE.W $12(A6),D0                       ; $01210A  302E 0012
    NEG.W D0                                ; $01210E  4440
    CMP.W $10(A6),D0                        ; $012110  B06E 0010
    BEQ.S L_01212A                          ; $012114  6714
L_012116:
    ADDQ.W #1,$5E(A6)                       ; $012116  526E 005E
    CMPI.W #$004D,$5E(A6)                   ; $01211A  0C6E 004D 005E
    BNE.S L_012134                          ; $012120  6612
    MOVE.W #$0049,$5E(A6)                   ; $012122  3D7C 0049 005E
    BRA.S L_012134                          ; $012128  600A
L_01212A:
    BCLR #$07,$6C(A6)                       ; $01212A  08AE 0007 006C
    BRA.W L_012342                          ; $012130  6000 0210
L_012134:
    RTS                                     ; $012134  4E75
L_012136:
    BTST #$00,$6C(A6)                       ; $012136  082E 0000 006C
    BNE.S L_012146                          ; $01213C  6608
    BCLR #$07,$6C(A6)                       ; $01213E  08AE 0007 006C
    RTS                                     ; $012144  4E75
L_012146:
    MOVE.W $A(A6),D6                        ; $012146  3C2E 000A
    MOVE.W $C(A6),D7                        ; $01214A  3E2E 000C
    ADD.W D6,(A6)                           ; $01214E  DD56
    ADD.W D7,$2(A6)                         ; $012150  DF6E 0002
    SUBQ.W #1,$10(A6)                       ; $012154  536E 0010
    BPL.S L_01216C                          ; $012158  6A12
    MOVE.L A6,-(A7)                         ; $01215A  2F0E
    BSR.W L_00B89C                          ; $01215C  6100 973E
    MOVEA.L (A7)+,A6                        ; $012160  2C5F
    BCLR #$07,$6C(A6)                       ; $012162  08AE 0007 006C
    BRA.W L_012342                          ; $012168  6000 01D8
L_01216C:
    RTS                                     ; $01216C  4E75
L_01216E:
    MOVE.W $A(A6),D6                        ; $01216E  3C2E 000A
    MOVE.W $C(A6),D7                        ; $012172  3E2E 000C
    ADD.W D6,(A6)                           ; $012176  DD56
    ADD.W D7,$2(A6)                         ; $012178  DF6E 0002
    SUBQ.W #1,$10(A6)                       ; $01217C  536E 0010
    BPL.S L_01218C                          ; $012180  6A0A
    BCLR #$07,$6C(A6)                       ; $012182  08AE 0007 006C
    BRA.W L_012342                          ; $012188  6000 01B8
L_01218C:
    RTS                                     ; $01218C  4E75
L_01218E:
    BTST #$00,$6C(A6)                       ; $01218E  082E 0000 006C
    BNE.S L_01219E                          ; $012194  6608
    BCLR #$07,$6C(A6)                       ; $012196  08AE 0007 006C
    RTS                                     ; $01219C  4E75
L_01219E:
    MOVE.W (A6),D0                          ; $01219E  3016
    SWAP D0                                 ; $0121A0  4840
    MOVE.W $2(A6),D0                        ; $0121A2  302E 0002
    MOVE.W $14(A6),D2                       ; $0121A6  342E 0014
    MOVE.L $16(A6),D3                       ; $0121AA  262E 0016
    MOVE.L $1A(A6),D4                       ; $0121AE  282E 001A
    MOVE.L $1E(A6),D5                       ; $0121B2  2A2E 001E
    MOVE.L $26(A6),D6                       ; $0121B6  2C2E 0026
    MOVE.W $E(A6),D7                        ; $0121BA  3E2E 000E
L_0121BE:
    ANDI.L #$0FFF0FFF,D0                    ; $0121BE  0280 0FFF 0FFF
    ADD.L D5,D0                             ; $0121C4  D085
    ADD.L D3,D6                             ; $0121C6  DC83
    CMP.W D6,D2                             ; $0121C8  B446
    BGE.S L_0121D0                          ; $0121CA  6C04
    SUB.W D2,D6                             ; $0121CC  9C42
    ADD.L D4,D0                             ; $0121CE  D084
L_0121D0:
    DBRA D7,L_0121BE                        ; $0121D0  51CF FFEC
    ANDI.L #$0FFF0FFF,D0                    ; $0121D4  0280 0FFF 0FFF
    MOVE.L D6,$26(A6)                       ; $0121DA  2D46 0026
    MOVE.W D0,$2(A6)                        ; $0121DE  3D40 0002
    SWAP D0                                 ; $0121E2  4840
    MOVE.W D0,(A6)                          ; $0121E4  3C80
    SUBQ.W #1,$10(A6)                       ; $0121E6  536E 0010
    BPL.S L_0121F6                          ; $0121EA  6A0A
    BCLR #$07,$6C(A6)                       ; $0121EC  08AE 0007 006C
    BRA.W L_012342                          ; $0121F2  6000 014E
L_0121F6:
    RTS                                     ; $0121F6  4E75
L_0121F8:
    BTST #$00,$6C(A6)                       ; $0121F8  082E 0000 006C
    BNE.S L_012208                          ; $0121FE  6608
    BCLR #$07,$6C(A6)                       ; $012200  08AE 0007 006C
    RTS                                     ; $012206  4E75
L_012208:
    MOVE.W #$0002,D0                        ; $012208  303C 0002
    JSR L_00AEEE(PC)                        ; $01220C  4EBA 8CE0
    SUBQ.W #1,$36(A6)                       ; $012210  536E 0036
    BPL.S L_01221C                          ; $012214  6A06
    MOVE.W #$0011,$5E(A4)                   ; $012216  397C 0011 005E
L_01221C:
    MOVE.L #$0001218E,$2A(A4)               ; $01221C  297C 0001 218E 002A
    SUBQ.W #1,$2E(A6)                       ; $012224  536E 002E
    BNE.S L_012230                          ; $012228  6606
    BCLR #$07,$6C(A6)                       ; $01222A  08AE 0007 006C
L_012230:
    RTS                                     ; $012230  4E75
L_012232:
    MOVE.W $A(A6),D6                        ; $012232  3C2E 000A
    MOVE.W $C(A6),D7                        ; $012236  3E2E 000C
    ADD.W D6,(A6)                           ; $01223A  DD56
    ADD.W D7,$2(A6)                         ; $01223C  DF6E 0002
    SUBQ.W #1,$10(A6)                       ; $012240  536E 0010
    BPL.S L_012252                          ; $012244  6A0C
    BCLR #$07,$6C(A6)                       ; $012246  08AE 0007 006C
    RTS                                     ; $01224C  4E75
L_01224E:
    BRA.W L_012342                          ; $01224E  6000 00F2
L_012252:
    MOVE.L A6,-(A7)                         ; $012252  2F0E
    MOVE.L A3,-(A7)                         ; $012254  2F0B
    MOVE.W $14(A6),-(A7)                    ; $012256  3F2E 0014
    MOVE.W $12(A6),-(A7)                    ; $01225A  3F2E 0012
    MOVEQ #$00,D6                           ; $01225E  7C00
    MOVEQ #$00,D7                           ; $012260  7E00
    MOVEA.L A6,A3                           ; $012262  264E
    JSR L_00B584(PC)                        ; $012264  4EBA 931E
    MOVE.L A4,$72(A3)                       ; $012268  274C 0072
    ADD.W $2(A7),D6                         ; $01226C  DC6F 0002
    ADD.W (A7),D7                           ; $012270  DE57
    ADD.W D6,(A4)                           ; $012272  DD54
    ADD.W D7,$2(A4)                         ; $012274  DF6C 0002
    MOVEA.L A4,A3                           ; $012278  264C
    JSR L_00B584(PC)                        ; $01227A  4EBA 9308
    MOVE.L A4,$72(A3)                       ; $01227E  274C 0072
    ADD.W $2(A7),D6                         ; $012282  DC6F 0002
    ADD.W (A7),D7                           ; $012286  DE57
    ADD.W D6,(A4)                           ; $012288  DD54
    ADD.W D7,$2(A4)                         ; $01228A  DF6C 0002
    MOVEA.L A4,A3                           ; $01228E  264C
    JSR L_00B584(PC)                        ; $012290  4EBA 92F2
    MOVE.L A4,$72(A3)                       ; $012294  274C 0072
    ADD.W $2(A7),D6                         ; $012298  DC6F 0002
    ADD.W (A7),D7                           ; $01229C  DE57
    ADD.W D6,(A4)                           ; $01229E  DD54
    ADD.W D7,$2(A4)                         ; $0122A0  DF6C 0002
    MOVEA.L A4,A3                           ; $0122A4  264C
    JSR L_00B584(PC)                        ; $0122A6  4EBA 92DC
    MOVE.L A4,$72(A3)                       ; $0122AA  274C 0072
    ADD.W $2(A7),D6                         ; $0122AE  DC6F 0002
    ADD.W (A7),D7                           ; $0122B2  DE57
    ADD.W D6,(A4)                           ; $0122B4  DD54
    ADD.W D7,$2(A4)                         ; $0122B6  DF6C 0002
    MOVEA.L A4,A3                           ; $0122BA  264C
    MOVE.W (A7)+,D6                         ; $0122BC  3C1F
    MOVE.W (A7)+,D7                         ; $0122BE  3E1F
    MOVEA.L (A7)+,A3                        ; $0122C0  265F
    MOVEA.L (A7)+,A6                        ; $0122C2  2C5F
    RTS                                     ; $0122C4  4E75
L_0122C6:
    MOVE.W $A(A6),D6                        ; $0122C6  3C2E 000A
    MOVE.W $C(A6),D7                        ; $0122CA  3E2E 000C
    ADD.W D6,(A6)                           ; $0122CE  DD56
    ADD.W D7,$2(A6)                         ; $0122D0  DF6E 0002
    SUBQ.W #1,$10(A6)                       ; $0122D4  536E 0010
    BPL.S L_0122E4                          ; $0122D8  6A0A
    BCLR #$07,$6C(A6)                       ; $0122DA  08AE 0007 006C
    BRA.W L_012342                          ; $0122E0  6000 0060
L_0122E4:
    MOVE.W (A6),-(A7)                       ; $0122E4  3F16
    MOVE.W $2(A6),-(A7)                     ; $0122E6  3F2E 0002
    MOVE.W $50(A6),D0                       ; $0122EA  302E 0050
    MOVE.W $3A(A6),D1                       ; $0122EE  322E 003A
    BSR.W L_012B9E                          ; $0122F2  6100 08AA
    ADD.W D0,(A6)                           ; $0122F6  D156
    ADD.W D1,$2(A6)                         ; $0122F8  D36E 0002
    MOVEQ #$00,D4                           ; $0122FC  7800
    MOVE.B $36(A6),D4                       ; $0122FE  182E 0036
    JSR L_00B704(PC)                        ; $012302  4EBA 9400
    MOVE.L A4,$72(A6)                       ; $012306  2D4C 0072
    MOVE.W (A7),$2(A6)                      ; $01230A  3D57 0002
    MOVE.W $2(A7),(A6)                      ; $01230E  3CAF 0002
    MOVE.W $50(A6),D0                       ; $012312  302E 0050
    ADD.W D0,D0                             ; $012316  D040
    MOVE.W $3A(A6),D1                       ; $012318  322E 003A
    BSR.W L_012B9E                          ; $01231C  6100 0880
    ADD.W D0,(A6)                           ; $012320  D156
    ADD.W D1,$2(A6)                         ; $012322  D36E 0002
    MOVEQ #$00,D4                           ; $012326  7800
    MOVE.B $37(A6),D4                       ; $012328  182E 0037
    MOVE.L A3,-(A7)                         ; $01232C  2F0B
    MOVEA.L A4,A3                           ; $01232E  264C
    JSR L_00B704(PC)                        ; $012330  4EBA 93D2
    MOVE.L A4,$72(A3)                       ; $012334  274C 0072
    MOVEA.L (A7)+,A3                        ; $012338  265F
    MOVE.W (A7)+,$2(A6)                     ; $01233A  3D5F 0002
    MOVE.W (A7)+,(A6)                       ; $01233E  3C9F
    RTS                                     ; $012340  4E75
L_012342:
    MOVE.W $12(A6),D0                       ; $012342  302E 0012
    ANDI.W #$000E,D0                        ; $012346  0240 000E
    BEQ.S L_01237C                          ; $01234A  6730
    CMPI.W #$0002,D0                        ; $01234C  0C40 0002
    BEQ.W L_01237E                          ; $012350  6700 002C
    CMPI.W #$0004,D0                        ; $012354  0C40 0004
    BEQ.W L_012382                          ; $012358  6700 0028
    CMPI.W #$0006,D0                        ; $01235C  0C40 0006
    BEQ.W L_012386                          ; $012360  6700 0024
    CMPI.W #$0008,D0                        ; $012364  0C40 0008
    BEQ.W L_01238A                          ; $012368  6700 0020
    CMPI.W #$000A,D0                        ; $01236C  0C40 000A
    BEQ.W L_01238E                          ; $012370  6700 001C
    CMPI.W #$000C,D0                        ; $012374  0C40 000C
    BEQ.W L_012392                          ; $012378  6700 0018
L_01237C:
    RTS                                     ; $01237C  4E75
L_01237E:
    JMP L_00A706(PC)                        ; $01237E  4EFA 8386
L_012382:
    JMP L_00A666(PC)                        ; $012382  4EFA 82E2
L_012386:
    JMP L_00A6CA(PC)                        ; $012386  4EFA 8342
L_01238A:
    JMP L_00A62A(PC)                        ; $01238A  4EFA 829E
L_01238E:
    JMP L_00A61C(PC)                        ; $01238E  4EFA 828C
L_012392:
    JMP L_00A6BE(PC)                        ; $012392  4EFA 832A
L_012396:
    MOVE.W $4E(A6),D0                       ; $012396  302E 004E
    MOVE.W $50(A6),D1                       ; $01239A  322E 0050
    MOVE.W D0,D2                            ; $01239E  3400
    OR.W D1,D2                              ; $0123A0  8441
    BNE.S L_0123D0                          ; $0123A2  662C
    JSR L_008EC2                            ; $0123A4  4EB9 0000 8EC2
    MOVE.W D0,$4E(A6)                       ; $0123AA  3D40 004E
    MOVE.W D1,$50(A6)                       ; $0123AE  3D41 0050
    MOVE.L A6,-(A7)                         ; $0123B2  2F0E
    MOVEA.L $54(A6),A6                      ; $0123B4  2C6E 0054
    MOVE.W (A6),-(A7)                       ; $0123B8  3F16
    MOVE.W $2(A6),-(A7)                     ; $0123BA  3F2E 0002
    BSR.W L_012DA2                          ; $0123BE  6100 09E2
    MOVE.W (A6),D0                          ; $0123C2  3016
    MOVE.W $2(A6),D1                        ; $0123C4  322E 0002
    MOVE.W (A7)+,$2(A6)                     ; $0123C8  3D5F 0002
    MOVE.W (A7)+,(A6)                       ; $0123CC  3C9F
    MOVEA.L (A7)+,A6                        ; $0123CE  2C5F
L_0123D0:
    MOVE.B #$78,$48(A6)                     ; $0123D0  1D7C 0078 0048
    BSET #$06,$45(A6)                       ; $0123D6  08EE 0006 0045
    MOVEQ #$08,D2                           ; $0123DC  7408
    MOVE.W D2,D3                            ; $0123DE  3602
    SUB.W (A6),D0                           ; $0123E0  9056
    BPL.S L_0123E6                          ; $0123E2  6A02
    NEG.W D2                                ; $0123E4  4442
L_0123E6:
    SUB.W $2(A6),D1                         ; $0123E6  926E 0002
    BPL.S L_0123EE                          ; $0123EA  6A02
    NEG.W D3                                ; $0123EC  4443
L_0123EE:
    ADD.W D2,(A6)                           ; $0123EE  D556
    ADD.W D3,$2(A6)                         ; $0123F0  D76E 0002
    MOVE.W D2,$A(A6)                        ; $0123F4  3D42 000A
    MOVE.W D3,$C(A6)                        ; $0123F8  3D43 000C
    BSR.W L_012A52                          ; $0123FC  6100 0654
    BSR.W L_012F0E                          ; $012400  6100 0B0C
    ADDI.W #$009B,D0                        ; $012404  0640 009B
    MOVE.W D0,$5E(A6)                       ; $012408  3D40 005E
    BSR.W L_00D696                          ; $01240C  6100 B288
    MOVE.W D0,$8(A6)                        ; $012410  3D40 0008
    MOVE.L $6E(A6),D0                       ; $012414  202E 006E
    BEQ.S L_012424                          ; $012418  670A
    CLR.L $6E(A6)                           ; $01241A  42AE 006E
    MOVE.B #$0F,$923(A5)                    ; $01241E  1B7C 000F 0923
L_012424:
    RTS                                     ; $012424  4E75
L_012426:
    CMPI.W #$0008,$5E(A6)                   ; $012426  0C6E 0008 005E
    BCC.W L_012480                          ; $01242C  6400 0052
    SUBQ.B #1,$11(A6)                       ; $012430  532E 0011
    BSR.W L_012668                          ; $012434  6100 0232
    MOVE.W #$0004,$8(A6)                    ; $012438  3D7C 0004 0008
    MOVE.B $10(A6),D0                       ; $01243E  102E 0010
    BTST #$00,D0                            ; $012442  0800 0000
    BEQ.S L_012466                          ; $012446  671E
    TST.B D0                                ; $012448  4A00
    BPL.S L_01245A                          ; $01244A  6A0E
    CMPI.W #$0004,$5E(A6)                   ; $01244C  0C6E 0004 005E
    BEQ.S L_012466                          ; $012452  6712
    SUBQ.W #1,$5E(A6)                       ; $012454  536E 005E
    BRA.S L_012466                          ; $012458  600C
L_01245A:
    CMPI.W #$0007,$5E(A6)                   ; $01245A  0C6E 0007 005E
    BEQ.S L_012466                          ; $012460  6704
    ADDQ.W #1,$5E(A6)                       ; $012462  526E 005E
L_012466:
    BRA.S L_01246E                          ; $012466  6006
L_012468:
    BCLR #$07,$6C(A6)                       ; $012468  08AE 0007 006C
L_01246E:
    SUBQ.B #1,$10(A6)                       ; $01246E  532E 0010
    TST.B $11(A6)                           ; $012472  4A2E 0011
    BNE.S L_01247E                          ; $012476  6606
    MOVE.W #$0008,$5E(A6)                   ; $012478  3D7C 0008 005E
L_01247E:
    RTS                                     ; $01247E  4E75
L_012480:
    BSR.W L_00D696                          ; $012480  6100 B214
    MOVE.W D0,$8(A6)                        ; $012484  3D40 0008
    ADDQ.W #1,$5E(A6)                       ; $012488  526E 005E
    CMPI.W #$000B,$5E(A6)                   ; $01248C  0C6E 000B 005E
    BNE.S L_01247E                          ; $012492  66EA
    BCLR #$07,$6C(A6)                       ; $012494  08AE 0007 006C
    BRA.S L_01247E                          ; $01249A  60E2
L_01249C:
    SUBQ.B #1,$11(A6)                       ; $01249C  532E 0011
    BSR.W L_012668                          ; $0124A0  6100 01C6
    MOVE.B $10(A6),D0                       ; $0124A4  102E 0010
    BPL.S L_0124AC                          ; $0124A8  6A02
    NEG.B D0                                ; $0124AA  4400
L_0124AC:
    MOVEQ #$0A,D1                           ; $0124AC  720A
    CMPI.B #$03,D0                          ; $0124AE  0C00 0003
    BCC.S L_0124B6                          ; $0124B2  6402
    MOVEQ #$0B,D1                           ; $0124B4  720B
L_0124B6:
    MOVE.W D1,$5E(A6)                       ; $0124B6  3D41 005E
    SUBQ.B #1,$10(A6)                       ; $0124BA  532E 0010
    TST.B $11(A6)                           ; $0124BE  4A2E 0011
    BNE.S L_0124DA                          ; $0124C2  6616
    BSR.W L_00D696                          ; $0124C4  6100 B1D0
    MOVE.W D0,$8(A6)                        ; $0124C8  3D40 0008
    JSR L_00A706(PC)                        ; $0124CC  4EBA 8238
    BSR.W L_00C3E4                          ; $0124D0  6100 9F12
    BCLR #$07,$6C(A6)                       ; $0124D4  08AE 0007 006C
L_0124DA:
    RTS                                     ; $0124DA  4E75
L_0124DC:
    SUBQ.B #1,$11(A6)                       ; $0124DC  532E 0011
    BMI.S L_0124FA                          ; $0124E0  6B18
    BSR.W L_012668                          ; $0124E2  6100 0184
    ADDQ.W #1,$5E(A6)                       ; $0124E6  526E 005E
    CMPI.W #$0034,$5E(A6)                   ; $0124EA  0C6E 0034 005E
    BCS.S L_0124F8                          ; $0124F0  6506
    MOVE.W #$002C,$5E(A6)                   ; $0124F2  3D7C 002C 005E
L_0124F8:
    BRA.S L_01250C                          ; $0124F8  6012
L_0124FA:
    BSR.W L_00D696                          ; $0124FA  6100 B19A
    MOVE.W D0,$8(A6)                        ; $0124FE  3D40 0008
    BSR.W L_00C202                          ; $012502  6100 9CFE
    BCLR #$07,$6C(A6)                       ; $012506  08AE 0007 006C
L_01250C:
    SUBQ.B #1,$10(A6)                       ; $01250C  532E 0010
    RTS                                     ; $012510  4E75
L_012512:
    TST.B $11(A6)                           ; $012512  4A2E 0011
    BMI.W L_012584                          ; $012516  6B00 006C
    SUBQ.W #1,$6A(A6)                       ; $01251A  536E 006A
    BPL.W L_012570                          ; $01251E  6A00 0050
    CLR.W $6A(A6)                           ; $012522  426E 006A
    SUBQ.B #1,$11(A6)                       ; $012526  532E 0011
    BMI.S L_012544                          ; $01252A  6B18
    BSR.W L_012668                          ; $01252C  6100 013A
    ADDQ.W #1,$5E(A6)                       ; $012530  526E 005E
    CMPI.W #$004C,$5E(A6)                   ; $012534  0C6E 004C 005E
    BCS.S L_012542                          ; $01253A  6506
    MOVE.W #$0047,$5E(A6)                   ; $01253C  3D7C 0047 005E
L_012542:
    BRA.S L_01256A                          ; $012542  6026
L_012544:
    CLR.B $10(A6)                           ; $012544  422E 0010
    BSR.W L_00D696                          ; $012548  6100 B14C
    MOVE.W D0,$8(A6)                        ; $01254C  3D40 0008
    MOVE.W $E(A6),D0                        ; $012550  302E 000E
    MOVEQ #$03,D0                           ; $012554  7003
    MOVE.W $3A(A6),D1                       ; $012556  322E 003A
    BSR.W L_012A86                          ; $01255A  6100 052A
    MOVE.W D0,$A(A6)                        ; $01255E  3D40 000A
    MOVE.W D1,$C(A6)                        ; $012562  3D41 000C
    BRA.S L_012584                          ; $012566  601C
L_012568:
    RTS                                     ; $012568  4E75
L_01256A:
    SUBQ.B #1,$10(A6)                       ; $01256A  532E 0010
L_01256E:
    RTS                                     ; $01256E  4E75
L_012570:
    ADDQ.W #1,$5E(A6)                       ; $012570  526E 005E
    CMPI.W #$004D,$5E(A6)                   ; $012574  0C6E 004D 005E
    BCS.S L_012582                          ; $01257A  6506
    MOVE.W #$0047,$5E(A6)                   ; $01257C  3D7C 0047 005E
L_012582:
    BRA.S L_01256E                          ; $012582  60EA
L_012584:
    CMPI.B #$64,$10(A6)                     ; $012584  0C2E 0064 0010
    BCC.S L_01259A                          ; $01258A  640E
    MOVE.W $A(A6),D6                        ; $01258C  3C2E 000A
    MOVE.W $C(A6),D7                        ; $012590  3E2E 000C
    ADD.W D6,(A6)                           ; $012594  DD56
    ADD.W D7,$2(A6)                         ; $012596  DF6E 0002
L_01259A:
    MOVE.W $34(A6),D6                       ; $01259A  3C2E 0034
    MOVE.W $36(A6),D7                       ; $01259E  3E2E 0036
    ADD.W D6,(A6)                           ; $0125A2  DD56
    ADD.W D7,$2(A6)                         ; $0125A4  DF6E 0002
    ADDQ.B #1,$10(A6)                       ; $0125A8  522E 0010
    CMPI.B #$50,$10(A6)                     ; $0125AC  0C2E 0050 0010
    BCC.S L_0125C8                          ; $0125B2  6414
    ADDQ.W #1,$5E(A6)                       ; $0125B4  526E 005E
    CMPI.W #$004D,$5E(A6)                   ; $0125B8  0C6E 004D 005E
    BCS.S L_01256E                          ; $0125BE  65AE
    MOVE.W #$0049,$5E(A6)                   ; $0125C0  3D7C 0049 005E
    RTS                                     ; $0125C6  4E75
L_0125C8:
    BCLR #$07,$6C(A6)                       ; $0125C8  08AE 0007 006C
    RTS                                     ; $0125CE  4E75
L_0125D0:
    TST.B $11(A6)                           ; $0125D0  4A2E 0011
    BMI.W L_012610                          ; $0125D4  6B00 003A
    SUBQ.B #1,$11(A6)                       ; $0125D8  532E 0011
    BMI.S L_0125F6                          ; $0125DC  6B18
    BSR.W L_012668                          ; $0125DE  6100 0088
    ADDQ.W #1,$5E(A6)                       ; $0125E2  526E 005E
    CMPI.W #$0057,$5E(A6)                   ; $0125E6  0C6E 0057 005E
    BCS.S L_0125F4                          ; $0125EC  6506
    MOVE.W #$0050,$5E(A6)                   ; $0125EE  3D7C 0050 005E
L_0125F4:
    BRA.S L_01260A                          ; $0125F4  6014
L_0125F6:
    CLR.B $10(A6)                           ; $0125F6  422E 0010
    MOVE.W #$0058,$5E(A6)                   ; $0125FA  3D7C 0058 005E
    BSR.W L_00D696                          ; $012600  6100 B094
    MOVE.W D0,$8(A6)                        ; $012604  3D40 0008
    BRA.S L_012610                          ; $012608  6006
L_01260A:
    SUBQ.B #1,$10(A6)                       ; $01260A  532E 0010
L_01260E:
    RTS                                     ; $01260E  4E75
L_012610:
    ADDQ.B #1,$10(A6)                       ; $012610  522E 0010
    CMPI.B #$14,$10(A6)                     ; $012614  0C2E 0014 0010
    BCC.S L_01264A                          ; $01261A  642E
    CMPI.B #$02,$10(A6)                     ; $01261C  0C2E 0002 0010
    BNE.S L_012636                          ; $012622  6612
    MOVE.L D0,-(A7)                         ; $012624  2F00
    MOVEQ #$00,D0                           ; $012626  7000
    MOVE.B #$00,D0                          ; $012628  103C 0000
    BEQ.S L_012634                          ; $01262C  6706
    JSR L_000590                            ; $01262E  4EB9 0000 0590
L_012634:
    MOVE.L (A7)+,D0                         ; $012634  201F
L_012636:
    ADDQ.W #1,$5E(A6)                       ; $012636  526E 005E
    CMPI.W #$005B,$5E(A6)                   ; $01263A  0C6E 005B 005E
    BCS.S L_01260E                          ; $012640  65CC
    MOVE.W #$0058,$5E(A6)                   ; $012642  3D7C 0058 005E
    RTS                                     ; $012648  4E75
L_01264A:
    BCLR #$07,$6C(A6)                       ; $01264A  08AE 0007 006C
    BTST #$00,$6C(A6)                       ; $012650  082E 0000 006C
    BEQ.S L_01260E                          ; $012656  67B6
    JSR L_00A706(PC)                        ; $012658  4EBA 80AC
    BSR.W L_00CAB4                          ; $01265C  6100 A456
    MOVE.B #$0F,$923(A5)                    ; $012660  1B7C 000F 0923
    RTS                                     ; $012666  4E75
L_012668:
    CMPI.B #$03,$11(A6)                     ; $012668  0C2E 0003 0011
    BCC.S L_0126D4                          ; $01266E  6464
    BSR.W L_00D696                          ; $012670  6100 B024
    ADDQ.W #1,D0                            ; $012674  5240
    MOVE.W D0,$8(A6)                        ; $012676  3D40 0008
    MOVE.W $3A(A6),D0                       ; $01267A  302E 003A
    BTST #$01,D0                            ; $01267E  0800 0001
    BEQ.S L_0126D4                          ; $012682  6750
    LEA L_015C18(PC),A4                     ; $012684  49FA 3592
    MOVE.W $60(A6),D2                       ; $012688  342E 0060
    ADD.W D2,D2                             ; $01268C  D442
    ADD.W D2,D2                             ; $01268E  D442
    LEA $0(A4,D2.W),A4                      ; $012690  49F4 2000
    MOVE.W (A4),D0                          ; $012694  3014
    LSR.W #1,D0                             ; $012696  E248
    ADD.W (A6),D0                           ; $012698  D056
    MOVE.W $2(A4),D1                        ; $01269A  322C 0002
    LSR.W #1,D1                             ; $01269E  E249
    SUBQ.W #4,D1                            ; $0126A0  5941
    ADD.W $2(A6),D1                         ; $0126A2  D26E 0002
    MOVE.W $750(A5),D4                      ; $0126A6  382D 0750
    LSR.W #4,D1                             ; $0126AA  E849
    MULU.W D4,D1                            ; $0126AC  C2C4
    LSR.W #3,D0                             ; $0126AE  E648
    ANDI.W #$FFFE,D0                        ; $0126B0  0240 FFFE
    ADD.W D1,D0                             ; $0126B4  D041
    MOVEA.L $746(A5),A4                     ; $0126B6  286D 0746
    MOVE.B $0(A4,D0.W),D0                   ; $0126BA  1034 0000
    ANDI.W #$0038,D0                        ; $0126BE  0240 0038
    CMPI.W #$0008,D0                        ; $0126C2  0C40 0008
    BNE.S L_0126D4                          ; $0126C6  660C
    ADDQ.B #1,$10(A6)                       ; $0126C8  522E 0010
    ADDQ.B #1,$11(A6)                       ; $0126CC  522E 0011
    ADDQ.W #1,$6A(A6)                       ; $0126D0  526E 006A
L_0126D4:
    MOVE.W $A(A6),D6                        ; $0126D4  3C2E 000A
    MOVE.W $C(A6),D7                        ; $0126D8  3E2E 000C
    ADD.W D6,(A6)                           ; $0126DC  DD56
    ADD.W D7,$2(A6)                         ; $0126DE  DF6E 0002
    MOVE.B $10(A6),D6                       ; $0126E2  1C2E 0010
    BPL.S L_0126EA                          ; $0126E6  6A02
    NEG.B D6                                ; $0126E8  4406
L_0126EA:
    CMPI.B #$03,D6                          ; $0126EA  0C06 0003
    BLT.S L_012718                          ; $0126EE  6D28
    MOVE.W $C(A6),D1                        ; $0126F0  322E 000C
    MOVE.W D7,D1                            ; $0126F4  3207
    BPL.S L_0126FA                          ; $0126F6  6A02
    NEG.W D1                                ; $0126F8  4441
L_0126FA:
    ADDQ.W #2,D1                            ; $0126FA  5441
    CMPI.B #$06,D6                          ; $0126FC  0C06 0006
    BLT.S L_012704                          ; $012700  6D02
    ADDQ.W #2,D1                            ; $012702  5441
L_012704:
    CMPI.W #$0007,D1                        ; $012704  0C41 0007
    BCS.S L_01270C                          ; $012708  6502
    MOVEQ #$07,D1                           ; $01270A  7207
L_01270C:
    TST.B $10(A6)                           ; $01270C  4A2E 0010
    BMI.S L_012714                          ; $012710  6B02
    NEG.W D1                                ; $012712  4441
L_012714:
    ADD.W D1,$2(A6)                         ; $012714  D36E 0002
L_012718:
    RTS                                     ; $012718  4E75
L_01271A:
    BTST #$00,$6C(A6)                       ; $01271A  082E 0000 006C
    BNE.S L_01272A                          ; $012720  6608
    BCLR #$07,$6C(A6)                       ; $012722  08AE 0007 006C
    RTS                                     ; $012728  4E75
L_01272A:
    CMPI.W #$008C,$5E(A6)                   ; $01272A  0C6E 008C 005E
    BCC.W L_012750                          ; $012730  6400 001E
    SUBQ.B #1,$11(A6)                       ; $012734  532E 0011
    BMI.S L_01274A                          ; $012738  6B10
    BSR.W L_012668                          ; $01273A  6100 FF2C
    MOVE.W #$0004,$8(A6)                    ; $01273E  3D7C 0004 0008
    SUBQ.B #1,$10(A6)                       ; $012744  532E 0010
L_012748:
    RTS                                     ; $012748  4E75
L_01274A:
    ADDQ.W #1,$5E(A6)                       ; $01274A  526E 005E
    BRA.S L_012748                          ; $01274E  60F8
L_012750:
    BSR.W L_00D696                          ; $012750  6100 AF44
    MOVE.W D0,$8(A6)                        ; $012754  3D40 0008
    ADDQ.W #1,$5E(A6)                       ; $012758  526E 005E
    CMPI.W #$008D,$5E(A6)                   ; $01275C  0C6E 008D 005E
    BNE.S L_012768                          ; $012762  6604
    JSR L_00BA6A(PC)                        ; $012764  4EBA 9304
L_012768:
    CMPI.W #$008F,$5E(A6)                   ; $012768  0C6E 008F 005E
    BNE.S L_012748                          ; $01276E  66D8
    BCLR #$07,$6C(A6)                       ; $012770  08AE 0007 006C
    BRA.S L_012748                          ; $012776  60D0
L_012778:
    SUBQ.W #1,$36(A6)                       ; $012778  536E 0036
    BPL.S L_01278A                          ; $01277C  6A0C
    BCLR #$07,$6C(A6)                       ; $01277E  08AE 0007 006C
    JSR L_00A62A                            ; $012784  4EB9 0000 A62A
L_01278A:
    RTS                                     ; $01278A  4E75
L_01278C:
    ADDQ.W #1,$5E(A6)                       ; $01278C  526E 005E
    CMPI.W #$000E,$5E(A6)                   ; $012790  0C6E 000E 005E
    BCS.S L_01279E                          ; $012796  6506
    MOVE.W #$000C,$5E(A6)                   ; $012798  3D7C 000C 005E
L_01279E:
    SUBQ.B #1,$4C(A6)                       ; $01279E  532E 004C
    BPL.S L_0127AE                          ; $0127A2  6A0A
    BCLR #$07,$6C(A6)                       ; $0127A4  08AE 0007 006C
    BRA.W L_012342                          ; $0127AA  6000 FB96
L_0127AE:
    RTS                                     ; $0127AE  4E75
L_0127B0:
    TST.B $4A(A6)                           ; $0127B0  4A2E 004A
    BEQ.W L_012832                          ; $0127B4  6700 007C
    TST.W $8C6(A5)                          ; $0127B8  4A6D 08C6
    BPL.W L_012832                          ; $0127BC  6A00 0074
    TST.W $8C0(A5)                          ; $0127C0  4A6D 08C0
    BPL.W L_012832                          ; $0127C4  6A00 006C
    SUBQ.W #1,$50(A6)                       ; $0127C8  536E 0050
    BPL.S L_0127D2                          ; $0127CC  6A04
    CLR.W $50(A6)                           ; $0127CE  426E 0050
L_0127D2:
    TST.W $6A(A6)                           ; $0127D2  4A6E 006A
    BEQ.S L_0127F8                          ; $0127D6  6720
    BTST #$03,$45(A6)                       ; $0127D8  082E 0003 0045
    BEQ.S L_012832                          ; $0127DE  6752
L_0127E0:
    TST.W $50(A6)                           ; $0127E0  4A6E 0050
    BNE.S L_0127F4                          ; $0127E4  660E
    MOVE.W $4E(A6),$50(A6)                  ; $0127E6  3D6E 004E 0050
    JSR L_00AEEA(PC)                        ; $0127EC  4EBA 86FC
    MOVEQ #$01,D0                           ; $0127F0  7001
    RTS                                     ; $0127F2  4E75
L_0127F4:
    MOVEQ #$00,D0                           ; $0127F4  7000
    RTS                                     ; $0127F6  4E75
L_0127F8:
    BSR.W L_00E77E                          ; $0127F8  6100 BF84
    MOVE.W D0,D2                            ; $0127FC  3400
    BEQ.S L_012826                          ; $0127FE  6726
    ANDI.W #$000F,D0                        ; $012800  0240 000F
    MOVE.W D0,$3A(A6)                       ; $012804  3D40 003A
    BSET #$03,$45(A6)                       ; $012808  08EE 0003 0045
    BNE.S L_0127E0                          ; $01280E  66D0
    CMPI.L #$00017342,$26(A6)               ; $012810  0CAE 0001 7342 0026
    BEQ.S L_0127E0                          ; $012818  67C6
    MOVE.W $4E(A6),D0                       ; $01281A  302E 004E
    LSR.W #2,D0                             ; $01281E  E448
    MOVE.W D0,$50(A6)                       ; $012820  3D40 0050
    BRA.S L_0127F4                          ; $012824  60CE
L_012826:
    BCLR #$03,$45(A6)                       ; $012826  08AE 0003 0045
    BCLR #$07,$45(A6)                       ; $01282C  08AE 0007 0045
L_012832:
    MOVEQ #$FF,D0                           ; $012832  70FF
    RTS                                     ; $012834  4E75
L_012836:
    MOVE.L A6,-(A7)                         ; $012836  2F0E
    MOVE.L D0,-(A7)                         ; $012838  2F00
L_01283A:
    MOVE.L $72(A6),D0                       ; $01283A  202E 0072
    BEQ.S L_01284C                          ; $01283E  670C
    MOVEA.L D0,A6                           ; $012840  2C40
    CLR.B $6C(A6)                           ; $012842  422E 006C
    CLR.L $72(A6)                           ; $012846  42AE 0072
    BRA.S L_01283A                          ; $01284A  60EE
L_01284C:
    MOVE.L (A7)+,D0                         ; $01284C  201F
    MOVEA.L (A7)+,A6                        ; $01284E  2C5F
    RTS                                     ; $012850  4E75
L_012852:
    BTST #$00,$6C(A6)                       ; $012852  082E 0000 006C
    BNE.S L_012862                          ; $012858  6608
    BCLR #$07,$6C(A6)                       ; $01285A  08AE 0007 006C
    RTS                                     ; $012860  4E75
L_012862:
    MOVE.W $A(A6),D6                        ; $012862  3C2E 000A
    MOVE.W $C(A6),D7                        ; $012866  3E2E 000C
    ADD.W D6,(A6)                           ; $01286A  DD56
    ADD.W D7,$2(A6)                         ; $01286C  DF6E 0002
    ADDQ.W #1,$5E(A6)                       ; $012870  526E 005E
    CMPI.W #$0093,$5E(A6)                   ; $012874  0C6E 0093 005E
    BNE.S L_012882                          ; $01287A  6606
    MOVE.W #$008F,$5E(A6)                   ; $01287C  3D7C 008F 005E
L_012882:
    SUBQ.W #1,$10(A6)                       ; $012882  536E 0010
    BPL.S L_012892                          ; $012886  6A0A
    BCLR #$07,$6C(A6)                       ; $012888  08AE 0007 006C
    BRA.W L_012342                          ; $01288E  6000 FAB2
L_012892:
    RTS                                     ; $012892  4E75
L_012894:
    MOVE.W $A(A6),D6                        ; $012894  3C2E 000A
    MOVE.W $C(A6),D7                        ; $012898  3E2E 000C
    ADD.W D6,(A6)                           ; $01289C  DD56
    ADD.W D7,$2(A6)                         ; $01289E  DF6E 0002
    ADDQ.W #1,$5E(A6)                       ; $0128A2  526E 005E
    CMPI.W #$0034,$5E(A6)                   ; $0128A6  0C6E 0034 005E
    BNE.S L_0128B4                          ; $0128AC  6606
    MOVE.W #$002C,$5E(A6)                   ; $0128AE  3D7C 002C 005E
L_0128B4:
    SUBQ.W #1,$10(A6)                       ; $0128B4  536E 0010
    BPL.S L_0128C4                          ; $0128B8  6A0A
    BCLR #$07,$6C(A6)                       ; $0128BA  08AE 0007 006C
    BRA.W L_012342                          ; $0128C0  6000 FA80
L_0128C4:
    RTS                                     ; $0128C4  4E75
L_0128C6:
    MOVE.W #$0026,D0                        ; $0128C6  303C 0026
    JSR L_00AEEE(PC)                        ; $0128CA  4EBA 8622
    SUBQ.W #1,$36(A6)                       ; $0128CE  536E 0036
    BPL.S L_0128DA                          ; $0128D2  6A06
    MOVE.W #$0011,$5E(A4)                   ; $0128D4  397C 0011 005E
L_0128DA:
    MOVE.L #$0001219E,$2A(A4)               ; $0128DA  297C 0001 219E 002A
    SUBQ.W #1,$2E(A6)                       ; $0128E2  536E 002E
    BNE.S L_0128EE                          ; $0128E6  6606
    BCLR #$07,$6C(A6)                       ; $0128E8  08AE 0007 006C
L_0128EE:
    RTS                                     ; $0128EE  4E75
L_0128F0:
    SUBQ.W #2,$10(A6)                       ; $0128F0  556E 0010
    BMI.W L_012940                          ; $0128F4  6B00 004A
    BSR.W L_012FF0                          ; $0128F8  6100 06F6
    TST.W D0                                ; $0128FC  4A40
    BMI.S L_012912                          ; $0128FE  6B12
    MOVE.W D0,$3A(A6)                       ; $012900  3D40 003A
    MOVE.B L_012930(PC,D0.W),D0             ; $012904  103B 002A
    MOVE.B L_012928(PC,D0.W),D0             ; $012908  103B 001E
    ADDQ.W #1,D0                            ; $01290C  5240
    MOVE.W D0,$5E(A6)                       ; $01290E  3D40 005E
L_012912:
    MOVE.W $E(A6),D0                        ; $012912  302E 000E
    MOVE.W $3A(A6),D1                       ; $012916  322E 003A
    BSR.W L_012A86                          ; $01291A  6100 016A
    MOVE.W D0,$A(A6)                        ; $01291E  3D40 000A
    MOVE.W D1,$C(A6)                        ; $012922  3D41 000C
    RTS                                     ; $012926  4E75
L_012928:
    dc.b $00,$03,$06,$09,$0C,$0F,$12,$15                                 ; $012928
L_012930:
    dc.b $00,$00,$04,$00,$06,$07,$05,$00,$02,$01,$03,$00,$00,$00,$00,$00 ; $012930
L_012940:
    BCLR #$07,$6C(A6)                       ; $012940  08AE 0007 006C
    BRA.W L_012342                          ; $012946  6000 F9FA
L_01294A:
    MOVEA.L $678(A5),A0                     ; $01294A  206D 0678
    MOVE.W $72E(A5),D0                      ; $01294E  302D 072E
    ADDI.W #$00A0,D0                        ; $012952  0640 00A0
    MOVE.W $730(A5),D1                      ; $012956  322D 0730
    ADDI.W #$0060,D1                        ; $01295A  0641 0060
    BPL.S L_012962                          ; $01295E  6A02
    MOVEQ #$00,D1                           ; $012960  7200
L_012962:
    LSR.W #6,D0                             ; $012962  EC48
    LSR.W #6,D1                             ; $012964  EC49
    MOVE.W $74A(A5),D2                      ; $012966  342D 074A
    LSR.W #2,D2                             ; $01296A  E44A
    MULU.W D2,D1                            ; $01296C  C2C2
    ADD.W D1,D0                             ; $01296E  D041
    MOVE.B $0(A0,D0.W),D1                   ; $012970  1230 0000
    ANDI.W #$001F,D1                        ; $012974  0241 001F
    BEQ.S L_01299C                          ; $012978  6722
    ADD.W D1,D1                             ; $01297A  D241
    MOVE.W $682(A5),D0                      ; $01297C  302D 0682
    SUBQ.W #1,D0                            ; $012980  5340
    LSL.W #2,D0                             ; $012982  E548
    MOVEA.L L_01299E(PC,D0.W),A0            ; $012984  207B 0018
    MOVE.W -$2(A0,D1.W),D1                  ; $012988  3230 10FE
    CMP.W $718(A5),D1                       ; $01298C  B26D 0718
    BEQ.S L_01299C                          ; $012990  670A
    MOVE.W D1,$718(A5)                      ; $012992  3B41 0718
    MOVE.W D1,$00FFFFBE                     ; $012996  33C1 00FF FFBE
L_01299C:
    RTS                                     ; $01299C  4E75
L_01299E:
    dc.b $00,$01,$29,$B6,$00,$01,$29,$D6,$00,$01,$29,$E0,$00,$01,$29,$EA ; $01299E
    dc.b $00,$01,$29,$EA,$00,$01,$29,$EA                                 ; $0129AE
L_0129B6:
    dc.b $00,$01,$00,$01,$17,$09,$16,$07,$18,$01,$25,$01,$00,$07,$00,$09 ; $0129B6
    dc.b $00,$00,$00,$00,$00,$08,$00,$0A,$00,$00,$25,$01,$00,$00,$16,$01 ; $0129C6
    dc.b $00,$02,$09,$02,$2A,$02,$0B,$03,$1C,$03,$31,$03,$00,$04,$13,$04 ; $0129D6
    dc.b $24,$04,$2D,$04,$0C,$05,$00,$05,$10,$05,$17,$05,$1E,$05,$25,$05 ; $0129E6
    dc.b $2C,$05,$35,$05,$00,$06,$FF,$FF                                 ; $0129F6
L_0129FE:
    EXT.L D0                                ; $0129FE  48C0
    BEQ.S L_012A14                          ; $012A00  6712
    MOVE.L D1,-(A7)                         ; $012A02  2F01
    MOVE.L D0,D1                            ; $012A04  2200
    DIVU.W #$0003,D1                        ; $012A06  82FC 0003
    SUB.W D1,D0                             ; $012A0A  9041
    BEQ.S L_012A10                          ; $012A0C  6702
    BPL.S L_012A12                          ; $012A0E  6A02
L_012A10:
    MOVEQ #$01,D0                           ; $012A10  7001
L_012A12:
    MOVE.L (A7)+,D1                         ; $012A12  221F
L_012A14:
    RTS                                     ; $012A14  4E75
L_012A16:
    EXT.L D0                                ; $012A16  48C0
    BEQ.S L_012A2A                          ; $012A18  6710
    MOVE.L D1,-(A7)                         ; $012A1A  2F01
    MOVE.L D0,D1                            ; $012A1C  2200
    LSR.W #2,D1                             ; $012A1E  E449
    SUB.W D1,D0                             ; $012A20  9041
    BEQ.S L_012A26                          ; $012A22  6702
    BPL.S L_012A28                          ; $012A24  6A02
L_012A26:
    MOVEQ #$01,D0                           ; $012A26  7001
L_012A28:
    MOVE.L (A7)+,D1                         ; $012A28  221F
L_012A2A:
    RTS                                     ; $012A2A  4E75
L_012A2C:
    MOVE.W D1,-(A7)                         ; $012A2C  3F01
    EXT.L D6                                ; $012A2E  48C6
    BEQ.S L_012A3E                          ; $012A30  670C
    MOVE.L D6,D1                            ; $012A32  2206
    DIVS.W #$0003,D1                        ; $012A34  83FC 0003
    SUB.W D1,D6                             ; $012A38  9C41
    BNE.S L_012A3E                          ; $012A3A  6602
    MOVEQ #$01,D6                           ; $012A3C  7C01
L_012A3E:
    EXT.L D7                                ; $012A3E  48C7
    BEQ.S L_012A4E                          ; $012A40  670C
    MOVE.L D7,D1                            ; $012A42  2207
    DIVS.W #$0003,D1                        ; $012A44  83FC 0003
    SUB.W D1,D7                             ; $012A48  9E41
    BNE.S L_012A4E                          ; $012A4A  6602
    MOVEQ #$01,D7                           ; $012A4C  7E01
L_012A4E:
    MOVE.W (A7)+,D1                         ; $012A4E  321F
    RTS                                     ; $012A50  4E75
L_012A52:
    MOVEQ #$00,D0                           ; $012A52  7000
    TST.W $A(A6)                            ; $012A54  4A6E 000A
    BEQ.S L_012A6C                          ; $012A58  6712
    BSET #$02,D0                            ; $012A5A  08C0 0002
    TST.W $A(A6)                            ; $012A5E  4A6E 000A
    BMI.S L_012A6C                          ; $012A62  6B08
    BCLR #$02,D0                            ; $012A64  0880 0002
    BSET #$03,D0                            ; $012A68  08C0 0003
L_012A6C:
    TST.W $C(A6)                            ; $012A6C  4A6E 000C
    BEQ.S L_012A84                          ; $012A70  6712
    BSET #$00,D0                            ; $012A72  08C0 0000
    TST.W $C(A6)                            ; $012A76  4A6E 000C
    BMI.S L_012A84                          ; $012A7A  6B08
    BCLR #$00,D0                            ; $012A7C  0880 0000
    BSET #$01,D0                            ; $012A80  08C0 0001
L_012A84:
    RTS                                     ; $012A84  4E75
L_012A86:
    ANDI.W #$000F,D1                        ; $012A86  0241 000F
    ADD.W D1,D1                             ; $012A8A  D241
    ADD.W D1,D1                             ; $012A8C  D241
    MOVE.L L_012A96(PC,D1.W),-(A7)          ; $012A8E  2F3B 1006
    MOVE.W D0,D1                            ; $012A92  3200
    RTS                                     ; $012A94  4E75
L_012A96:
    dc.b $00,$01,$2A,$D6,$00,$01,$2A,$DC,$00,$01,$2B,$14,$00,$01,$2A,$D6 ; $012A96
    dc.b $00,$01,$2B,$30,$00,$01,$2B,$36,$00,$01,$2B,$18,$00,$01,$2A,$D6 ; $012AA6
    dc.b $00,$01,$2A,$FA,$00,$01,$2A,$E2,$00,$01,$2A,$FE,$00,$01,$2A,$D6 ; $012AB6
    dc.b $00,$01,$2A,$D6,$00,$01,$2A,$D6,$00,$01,$2A,$D6,$00,$01,$2A,$D6 ; $012AC6
L_012AD6:
    MOVEQ #$00,D0                           ; $012AD6  7000
    MOVEQ #$00,D1                           ; $012AD8  7200
    RTS                                     ; $012ADA  4E75
L_012ADC:
    MOVEQ #$00,D0                           ; $012ADC  7000
    NEG.W D1                                ; $012ADE  4441
    RTS                                     ; $012AE0  4E75
L_012AE2:
    MOVE.W D0,-(A7)                         ; $012AE2  3F00
    ADD.W D0,D0                             ; $012AE4  D040
    ADD.W (A7)+,D0                          ; $012AE6  D05F
    ADDQ.W #1,D0                            ; $012AE8  5240
    LSR.W #2,D0                             ; $012AEA  E448
    MOVE.W D1,-(A7)                         ; $012AEC  3F01
    ADD.W D1,D1                             ; $012AEE  D241
    ADD.W (A7)+,D1                          ; $012AF0  D25F
    ADDQ.W #1,D1                            ; $012AF2  5241
    LSR.W #2,D1                             ; $012AF4  E449
    NEG.W D1                                ; $012AF6  4441
    RTS                                     ; $012AF8  4E75
L_012AFA:
    MOVEQ #$00,D1                           ; $012AFA  7200
    RTS                                     ; $012AFC  4E75
L_012AFE:
    MOVE.W D0,-(A7)                         ; $012AFE  3F00
    ADD.W D0,D0                             ; $012B00  D040
    ADD.W (A7)+,D0                          ; $012B02  D05F
    ADDQ.W #1,D0                            ; $012B04  5240
    LSR.W #2,D0                             ; $012B06  E448
    MOVE.W D1,-(A7)                         ; $012B08  3F01
    ADD.W D1,D1                             ; $012B0A  D241
    ADD.W (A7)+,D1                          ; $012B0C  D25F
    ADDQ.W #1,D1                            ; $012B0E  5241
    LSR.W #2,D1                             ; $012B10  E449
    RTS                                     ; $012B12  4E75
L_012B14:
    MOVEQ #$00,D0                           ; $012B14  7000
    RTS                                     ; $012B16  4E75
L_012B18:
    MOVE.W D0,-(A7)                         ; $012B18  3F00
    ADD.W D0,D0                             ; $012B1A  D040
    ADD.W (A7)+,D0                          ; $012B1C  D05F
    ADDQ.W #1,D0                            ; $012B1E  5240
    LSR.W #2,D0                             ; $012B20  E448
    MOVE.W D1,-(A7)                         ; $012B22  3F01
    ADD.W D1,D1                             ; $012B24  D241
    ADD.W (A7)+,D1                          ; $012B26  D25F
    ADDQ.W #1,D1                            ; $012B28  5241
    LSR.W #2,D1                             ; $012B2A  E449
    NEG.W D0                                ; $012B2C  4440
    RTS                                     ; $012B2E  4E75
L_012B30:
    NEG.W D0                                ; $012B30  4440
    MOVEQ #$00,D1                           ; $012B32  7200
    RTS                                     ; $012B34  4E75
L_012B36:
    MOVE.W D0,-(A7)                         ; $012B36  3F00
    ADD.W D0,D0                             ; $012B38  D040
    ADD.W (A7)+,D0                          ; $012B3A  D05F
    ADDQ.W #1,D0                            ; $012B3C  5240
    LSR.W #2,D0                             ; $012B3E  E448
    MOVE.W D1,-(A7)                         ; $012B40  3F01
    ADD.W D1,D1                             ; $012B42  D241
    ADD.W (A7)+,D1                          ; $012B44  D25F
    ADDQ.W #1,D1                            ; $012B46  5241
    LSR.W #2,D1                             ; $012B48  E449
    NEG.W D0                                ; $012B4A  4440
    NEG.W D1                                ; $012B4C  4441
    RTS                                     ; $012B4E  4E75
L_012B50:
    ANDI.W #$000F,D1                        ; $012B50  0241 000F
    ADD.W D1,D1                             ; $012B54  D241
    ADD.W D1,D1                             ; $012B56  D241
    MOVE.L L_012B5E(PC,D1.W),-(A7)          ; $012B58  2F3B 1004
    RTS                                     ; $012B5C  4E75
L_012B5E:
    dc.b $00,$01,$2C,$88,$00,$01,$2C,$8E,$00,$01,$2C,$B8,$00,$01,$2C,$88 ; $012B5E
    dc.b $00,$01,$2C,$CE,$00,$01,$2C,$D4,$00,$01,$2C,$BE,$00,$01,$2C,$88 ; $012B6E
    dc.b $00,$01,$2C,$A6,$00,$01,$2C,$96,$00,$01,$2C,$AA,$00,$01,$2C,$88 ; $012B7E
    dc.b $00,$01,$2C,$88,$00,$01,$2C,$88,$00,$01,$2C,$88,$00,$01,$2C,$88 ; $012B8E
L_012B9E:
    ANDI.W #$000F,D1                        ; $012B9E  0241 000F
    ADD.W D1,D1                             ; $012BA2  D241
    ADD.W D1,D1                             ; $012BA4  D241
    MOVE.L L_012BAC(PC,D1.W),-(A7)          ; $012BA6  2F3B 1004
    RTS                                     ; $012BAA  4E75
L_012BAC:
    dc.b $00,$01,$2C,$88,$00,$01,$2C,$B8,$00,$01,$2C,$8E,$00,$01,$2C,$88 ; $012BAC
    dc.b $00,$01,$2C,$A6,$00,$01,$2C,$AA,$00,$01,$2C,$96,$00,$01,$2C,$88 ; $012BBC
    dc.b $00,$01,$2C,$CE,$00,$01,$2C,$BE,$00,$01,$2C,$D4,$00,$01,$2C,$88 ; $012BCC
    dc.b $00,$01,$2C,$88,$00,$01,$2C,$88,$00,$01,$2C,$88,$00,$01,$2C,$88 ; $012BDC
L_012BEC:
    ANDI.W #$000F,D1                        ; $012BEC  0241 000F
    ADD.W D1,D1                             ; $012BF0  D241
    ADD.W D1,D1                             ; $012BF2  D241
    MOVE.L L_012BFA(PC,D1.W),-(A7)          ; $012BF4  2F3B 1004
    RTS                                     ; $012BF8  4E75
L_012BFA:
    dc.b $00,$01,$2C,$88,$00,$01,$2C,$CE,$00,$01,$2C,$A6,$00,$01,$2C,$88 ; $012BFA
    dc.b $00,$01,$2C,$B8,$00,$01,$2C,$BE,$00,$01,$2C,$AA,$00,$01,$2C,$88 ; $012C0A
    dc.b $00,$01,$2C,$8E,$00,$01,$2C,$D4,$00,$01,$2C,$96,$00,$01,$2C,$88 ; $012C1A
    dc.b $00,$01,$2C,$88,$00,$01,$2C,$88,$00,$01,$2C,$88,$00,$01,$2C,$88 ; $012C2A
L_012C3A:
    ANDI.W #$000F,D1                        ; $012C3A  0241 000F
    ADD.W D1,D1                             ; $012C3E  D241
    ADD.W D1,D1                             ; $012C40  D241
    MOVE.L L_012C48(PC,D1.W),-(A7)          ; $012C42  2F3B 1004
    RTS                                     ; $012C46  4E75
L_012C48:
    dc.b $00,$01,$2C,$88,$00,$01,$2C,$A6,$00,$01,$2C,$CE,$00,$01,$2C,$88 ; $012C48
    dc.b $00,$01,$2C,$8E,$00,$01,$2C,$96,$00,$01,$2C,$D4,$00,$01,$2C,$88 ; $012C58
    dc.b $00,$01,$2C,$B8,$00,$01,$2C,$AA,$00,$01,$2C,$BE,$00,$01,$2C,$88 ; $012C68
    dc.b $00,$01,$2C,$88,$00,$01,$2C,$88,$00,$01,$2C,$88,$00,$01,$2C,$88 ; $012C78
L_012C88:
    MOVEQ #$00,D0                           ; $012C88  7000
    MOVEQ #$00,D1                           ; $012C8A  7200
    RTS                                     ; $012C8C  4E75
L_012C8E:
    MOVE.W D0,D1                            ; $012C8E  3200
    MOVEQ #$00,D0                           ; $012C90  7000
    NEG.W D1                                ; $012C92  4441
    RTS                                     ; $012C94  4E75
L_012C96:
    MOVE.W D0,-(A7)                         ; $012C96  3F00
    ADD.W D0,D0                             ; $012C98  D040
    ADD.W (A7)+,D0                          ; $012C9A  D05F
    ADDQ.W #1,D0                            ; $012C9C  5240
    LSR.W #2,D0                             ; $012C9E  E448
    MOVE.W D0,D1                            ; $012CA0  3200
    NEG.W D1                                ; $012CA2  4441
    RTS                                     ; $012CA4  4E75
L_012CA6:
    MOVEQ #$00,D1                           ; $012CA6  7200
    RTS                                     ; $012CA8  4E75
L_012CAA:
    MOVE.W D0,-(A7)                         ; $012CAA  3F00
    ADD.W D0,D0                             ; $012CAC  D040
    ADD.W (A7)+,D0                          ; $012CAE  D05F
    ADDQ.W #1,D0                            ; $012CB0  5240
    LSR.W #2,D0                             ; $012CB2  E448
    MOVE.W D0,D1                            ; $012CB4  3200
    RTS                                     ; $012CB6  4E75
L_012CB8:
    MOVE.W D0,D1                            ; $012CB8  3200
    MOVEQ #$00,D0                           ; $012CBA  7000
    RTS                                     ; $012CBC  4E75
L_012CBE:
    MOVE.W D0,-(A7)                         ; $012CBE  3F00
    ADD.W D0,D0                             ; $012CC0  D040
    ADD.W (A7)+,D0                          ; $012CC2  D05F
    ADDQ.W #1,D0                            ; $012CC4  5240
    LSR.W #2,D0                             ; $012CC6  E448
    MOVE.W D0,D1                            ; $012CC8  3200
    NEG.W D0                                ; $012CCA  4440
    RTS                                     ; $012CCC  4E75
L_012CCE:
    NEG.W D0                                ; $012CCE  4440
    MOVEQ #$00,D1                           ; $012CD0  7200
    RTS                                     ; $012CD2  4E75
L_012CD4:
    MOVE.W D0,-(A7)                         ; $012CD4  3F00
    ADD.W D0,D0                             ; $012CD6  D040
    ADD.W (A7)+,D0                          ; $012CD8  D05F
    ADDQ.W #1,D0                            ; $012CDA  5240
    LSR.W #2,D0                             ; $012CDC  E448
    NEG.W D0                                ; $012CDE  4440
    MOVE.W D0,D1                            ; $012CE0  3200
    RTS                                     ; $012CE2  4E75
L_012CE4:
    MOVE.W D0,-(A7)                         ; $012CE4  3F00
    BEQ.S L_012D00                          ; $012CE6  6718
    JSR L_00361C                            ; $012CE8  4EB9 0000 361C
    ANDI.W #$0003,D0                        ; $012CEE  0240 0003
    BEQ.S L_012CFE                          ; $012CF2  670A
    CMPI.W #$0001,D0                        ; $012CF4  0C40 0001
    BNE.S L_012D00                          ; $012CF8  6606
    BSR.S L_012D30                          ; $012CFA  6134
    BRA.S L_012D00                          ; $012CFC  6002
L_012CFE:
    BSR.S L_012D04                          ; $012CFE  6104
L_012D00:
    MOVE.W (A7)+,D0                         ; $012D00  301F
    RTS                                     ; $012D02  4E75
L_012D04:
    ANDI.W #$000F,D1                        ; $012D04  0241 000F
    ADD.W D1,D1                             ; $012D08  D241
    MOVE.W L_012D10(PC,D1.W),D1             ; $012D0A  323B 1004
    RTS                                     ; $012D0E  4E75
L_012D10:
    dc.b $00,$00,$00,$05,$00,$0A,$00,$00,$00,$06,$00,$04,$00,$02,$00,$00 ; $012D10
    dc.b $00,$09,$00,$01,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $012D20
L_012D30:
    ANDI.W #$000F,D1                        ; $012D30  0241 000F
    ADD.W D1,D1                             ; $012D34  D241
    MOVE.W L_012D3C(PC,D1.W),D1             ; $012D36  323B 1004
    RTS                                     ; $012D3A  4E75
L_012D3C:
    dc.b $00,$00,$00,$09,$00,$06,$00,$00,$00,$05,$00,$01,$00,$04,$00,$00 ; $012D3C
    dc.b $00,$0A,$00,$08,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $012D4C
L_012D5C:
    ANDI.W #$000F,D1                        ; $012D5C  0241 000F
    ADD.W D1,D1                             ; $012D60  D241
    MOVE.W L_012D68(PC,D1.W),D1             ; $012D62  323B 1004
    RTS                                     ; $012D66  4E75
L_012D68:
    dc.b $00,$00,$00,$02,$00,$01,$00,$08,$00,$08,$00,$0A,$00,$09,$00,$08 ; $012D68
    dc.b $00,$04,$00,$06,$00,$05,$00,$04,$00,$02,$00,$02,$00,$01,$00,$00 ; $012D78
L_012D88:
    ANDI.W #$000F,D0                        ; $012D88  0240 000F
    MOVE.B L_012D92(PC,D0.W),D0             ; $012D8C  103B 0004
    RTS                                     ; $012D90  4E75
L_012D92:
    dc.b $00,$01,$02,$00,$04,$04,$02,$00,$08,$01,$08,$00,$00,$00,$00,$00 ; $012D92
L_012DA2:
    MOVE.W $3A(A6),D0                       ; $012DA2  302E 003A
    ANDI.W #$000F,D0                        ; $012DA6  0240 000F
    ADD.W D0,D0                             ; $012DAA  D040
    ADD.W D0,D0                             ; $012DAC  D040
    MOVE.W L_012DBE(PC,D0.W),D1             ; $012DAE  323B 000E
    ADD.W D1,(A6)                           ; $012DB2  D356
    MOVE.W L_012DC0(PC,D0.W),D1             ; $012DB4  323B 000A
    ADD.W D1,$2(A6)                         ; $012DB8  D36E 0002
    RTS                                     ; $012DBC  4E75
L_012DBE:
    dc.b $00,$00                                                         ; $012DBE
L_012DC0:
    dc.b $00,$00,$00,$00,$00,$30,$00,$00,$FF,$D0,$00,$00,$00,$00,$00,$30 ; $012DC0
    dc.b $00,$00,$00,$30,$00,$30,$00,$30,$FF,$D0,$00,$00,$00,$00,$FF,$D0 ; $012DD0
    dc.b $00,$00,$FF,$D0,$00,$30,$FF,$D0,$FF,$D0,$00,$00,$00,$00,$00,$00 ; $012DE0
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00         ; $012DF0
L_012DFE:
    MOVE.L A0,-(A7)                         ; $012DFE  2F08
    MOVE.W $60(A6),D0                       ; $012E00  302E 0060
    ADD.W D0,D0                             ; $012E04  D040
    ADD.W D0,D0                             ; $012E06  D040
    LEA L_015C60(PC),A0                     ; $012E08  41FA 2E56
    MOVE.W $2(A0,D0.W),D1                   ; $012E0C  3230 0002
    MOVE.W $0(A0,D0.W),D0                   ; $012E10  3030 0000
    ADD.W (A6),D0                           ; $012E14  D056
    ADD.W $2(A6),D1                         ; $012E16  D26E 0002
    MOVEA.L (A7)+,A0                        ; $012E1A  205F
    RTS                                     ; $012E1C  4E75
L_012E1E:
    BSR.S L_012DFE                          ; $012E1E  61DE
    MOVE.W $60(A4),D4                       ; $012E20  382C 0060
    BSR.S L_012E62                          ; $012E24  613C
    MOVE.W D0,(A4)                          ; $012E26  3880
    MOVE.W D1,$2(A4)                        ; $012E28  3941 0002
    RTS                                     ; $012E2C  4E75
L_012E2E:
    MOVE.L A0,-(A7)                         ; $012E2E  2F08
    MOVE.W D4,-(A7)                         ; $012E30  3F04
    ADD.W D4,D4                             ; $012E32  D844
    ADD.W D4,D4                             ; $012E34  D844
    LEA L_015C60(PC),A0                     ; $012E36  41FA 2E28
    SUB.W $0(A0,D4.W),D0                    ; $012E3A  9070 4000
    SUB.W $2(A0,D4.W),D1                    ; $012E3E  9270 4002
    MOVE.W (A7)+,D4                         ; $012E42  381F
    MOVEA.L (A7)+,A0                        ; $012E44  205F
    RTS                                     ; $012E46  4E75
L_012E48:
    MOVE.L A0,-(A7)                         ; $012E48  2F08
    MOVE.W D4,-(A7)                         ; $012E4A  3F04
    ADD.W D4,D4                             ; $012E4C  D844
    ADD.W D4,D4                             ; $012E4E  D844
    LEA L_015C60(PC),A0                     ; $012E50  41FA 2E0E
    ADD.W $0(A0,D4.W),D0                    ; $012E54  D070 4000
    ADD.W $2(A0,D4.W),D1                    ; $012E58  D270 4002
    MOVE.W (A7)+,D4                         ; $012E5C  381F
    MOVEA.L (A7)+,A0                        ; $012E5E  205F
    RTS                                     ; $012E60  4E75
L_012E62:
    MOVE.L A0,-(A7)                         ; $012E62  2F08
    MOVE.W D4,-(A7)                         ; $012E64  3F04
    MOVE.W D5,-(A7)                         ; $012E66  3F05
    ADD.W D4,D4                             ; $012E68  D844
    ADD.W D4,D4                             ; $012E6A  D844
    LEA L_015C3C(PC),A0                     ; $012E6C  41FA 2DCE
    MOVE.W $0(A0,D4.W),D5                   ; $012E70  3A30 4000
    SUB.W D5,D0                             ; $012E74  9045
    MOVE.W $2(A0,D4.W),D5                   ; $012E76  3A30 4002
    SUB.W D5,D1                             ; $012E7A  9245
    MOVE.W (A7)+,D5                         ; $012E7C  3A1F
    MOVE.W (A7)+,D4                         ; $012E7E  381F
    MOVEA.L (A7)+,A0                        ; $012E80  205F
    RTS                                     ; $012E82  4E75
L_012E84:
    MOVE.L A0,-(A7)                         ; $012E84  2F08
    MOVE.W $60(A6),D0                       ; $012E86  302E 0060
    ADD.W D0,D0                             ; $012E8A  D040
    ADD.W D0,D0                             ; $012E8C  D040
    LEA L_015C3C(PC),A0                     ; $012E8E  41FA 2DAC
    MOVE.W $2(A0,D0.W),D1                   ; $012E92  3230 0002
    MOVE.W $0(A0,D0.W),D0                   ; $012E96  3030 0000
    ADD.W (A6),D0                           ; $012E9A  D056
    ADD.W $2(A6),D1                         ; $012E9C  D26E 0002
    MOVEA.L (A7)+,A0                        ; $012EA0  205F
    RTS                                     ; $012EA2  4E75
L_012EA4:
    ANDI.W #$000F,D0                        ; $012EA4  0240 000F
    ADD.W D0,D0                             ; $012EA8  D040
    MOVE.W L_012EB0(PC,D0.W),D0             ; $012EAA  303B 0004
    RTS                                     ; $012EAE  4E75
L_012EB0:
    dc.b $00,$05,$00,$07,$00,$0B,$00,$05,$00,$0D,$00,$0E,$00,$0C,$00,$05 ; $012EB0
    dc.b $00,$09,$00,$08,$00,$0A,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05 ; $012EC0
L_012ED0:
    ANDI.W #$000F,D0                        ; $012ED0  0240 000F
    ADD.W D0,D0                             ; $012ED4  D040
    MOVE.W L_012EDC(PC,D0.W),D0             ; $012ED6  303B 0004
    RTS                                     ; $012EDA  4E75
L_012EDC:
    dc.b $FF,$FF,$00,$17,$00,$1B,$FF,$FF,$00,$1D,$00,$1E,$00,$1C,$FF,$FF ; $012EDC
    dc.b $00,$19,$00,$18,$00,$1A,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $012EEC
L_012EFC:
    ANDI.W #$0007,D0                        ; $012EFC  0240 0007
    MOVE.B L_012F06(PC,D0.W),D0             ; $012F00  103B 0004
    RTS                                     ; $012F04  4E75
L_012F06:
    dc.b $01,$09,$08,$0A,$02,$06,$04,$05                                 ; $012F06
L_012F0E:
    ANDI.W #$000F,D0                        ; $012F0E  0240 000F
    MOVE.B L_012F18(PC,D0.W),D0             ; $012F12  103B 0004
    RTS                                     ; $012F16  4E75
L_012F18:
    dc.b $00,$00,$04,$00,$06,$07,$05,$00,$02,$01,$03,$00,$00,$00,$00,$00 ; $012F18
    dc.b $3F,$07,$3F,$06,$3C,$2D,$07,$2E,$3E,$2D,$07,$30,$E8,$4E,$E8,$4F ; $012F28
    dc.b $57,$46,$57,$47,$B0,$46,$6D,$1E,$B2,$47,$6D,$1A,$06,$46,$00,$16 ; $012F38
    dc.b $06,$47,$00,$0E,$B0,$46,$6E,$0E,$B2,$47,$6E,$0A,$3C,$1F,$3E,$1F ; $012F48
    dc.b $00,$3C,$00,$04,$4E,$75,$3C,$1F,$3E,$1F,$02,$3C,$00,$1B,$4E,$75 ; $012F58
L_012F68:
    MOVE.W D7,-(A7)                         ; $012F68  3F07
    MOVE.W D6,-(A7)                         ; $012F6A  3F06
    MOVE.W $72E(A5),D6                      ; $012F6C  3C2D 072E
    MOVE.W $730(A5),D7                      ; $012F70  3E2D 0730
    SUBI.W #$0030,D6                        ; $012F74  0446 0030
    SUBI.W #$0040,D7                        ; $012F78  0447 0040
    CMP.W D6,D0                             ; $012F7C  B046
    BLT.S L_012F9E                          ; $012F7E  6D1E
    CMP.W D7,D1                             ; $012F80  B247
    BLT.S L_012F9E                          ; $012F82  6D1A
    ADDI.W #$0190,D6                        ; $012F84  0646 0190
    ADDI.W #$0140,D7                        ; $012F88  0647 0140
    CMP.W D6,D0                             ; $012F8C  B046
    BGT.S L_012F9E                          ; $012F8E  6E0E
    CMP.W D7,D1                             ; $012F90  B247
    BGT.S L_012F9E                          ; $012F92  6E0A
    MOVE.W (A7)+,D6                         ; $012F94  3C1F
    MOVE.W (A7)+,D7                         ; $012F96  3E1F
    ORI #$04,CCR                            ; $012F98  003C 0004
    RTS                                     ; $012F9C  4E75
L_012F9E:
    MOVE.W (A7)+,D6                         ; $012F9E  3C1F
    MOVE.W (A7)+,D7                         ; $012FA0  3E1F
    ANDI #$1B,CCR                           ; $012FA2  023C 001B
    RTS                                     ; $012FA6  4E75
L_012FA8:
    LEA $412E(A5),A4                        ; $012FA8  49ED 412E            p2_object
    CMPA.L #$00FF40B8,A6                    ; $012FAC  BDFC 00FF 40B8
    BEQ.S L_012FB8                          ; $012FB2  6704
    LEA $40B8(A5),A4                        ; $012FB4  49ED 40B8            p1_object
L_012FB8:
    RTS                                     ; $012FB8  4E75
L_012FBA:
    MOVEM.L D2-D7,-(A7)                     ; $012FBA  48E7 3F00
    MOVE.W (A6),D0                          ; $012FBE  3016
    MOVE.W $2(A6),D1                        ; $012FC0  322E 0002
    MOVE.W (A4),D6                          ; $012FC4  3C14
    MOVE.W $2(A4),D7                        ; $012FC6  3E2C 0002
    BSR.W L_0131FC                          ; $012FCA  6100 0230
    MOVE.W D0,-(A7)                         ; $012FCE  3F00
    MOVE.W (A6),D0                          ; $012FD0  3016
    MOVE.W $2(A6),D1                        ; $012FD2  322E 0002
    MOVE.W (A4),D2                          ; $012FD6  3414
    MOVE.W $2(A4),D3                        ; $012FD8  362C 0002
    BSR.W L_01315A                          ; $012FDC  6100 017C
    BSR.W L_013110                          ; $012FE0  6100 012E
    BSR.W L_012EFC                          ; $012FE4  6100 FF16
    MOVE.W (A7)+,D1                         ; $012FE8  321F
    MOVEM.L (A7)+,D2-D7                     ; $012FEA  4CDF 00FC
    RTS                                     ; $012FEE  4E75
L_012FF0:
    TST.W $8C0(A5)                          ; $012FF0  4A6D 08C0
    BMI.S L_013024                          ; $012FF4  6B2E
    MOVE.L $8C2(A5),D0                      ; $012FF6  202D 08C2
    BMI.S L_013024                          ; $012FFA  6B28
    MOVEA.L D0,A4                           ; $012FFC  2840
    MOVE.W $8(A6),$8(A4)                    ; $012FFE  396E 0008 0008
    MOVE.W (A6),D6                          ; $013004  3C16
    MOVE.W $2(A6),D7                        ; $013006  3E2E 0002
    MOVE.W (A4),D0                          ; $01300A  3014
    MOVE.W $2(A4),D1                        ; $01300C  322C 0002
    BSR.W L_0131FC                          ; $013010  6100 01EA
    MOVE.W (A4),D2                          ; $013014  3414
    MOVE.W $2(A4),D3                        ; $013016  362C 0002
    MOVEA.L A4,A3                           ; $01301A  264C
    MOVE.W D0,-(A7)                         ; $01301C  3F00
    BSR.S L_012FBA                          ; $01301E  619A
    MOVE.W (A7)+,D1                         ; $013020  321F
    RTS                                     ; $013022  4E75
L_013024:
    MOVEQ #$00,D2                           ; $013024  7400
    MOVEQ #$00,D3                           ; $013026  7600
    MOVEQ #$FF,D4                           ; $013028  78FF
    MOVEA.L D3,A3                           ; $01302A  2643
    MOVE.W (A6),D6                          ; $01302C  3C16
    MOVE.W $2(A6),D7                        ; $01302E  3E2E 0002
    LEA $40B8(A5),A4                        ; $013032  49ED 40B8            p1_object
    BSR.W L_013056                          ; $013036  6100 001E
    LEA $412E(A5),A4                        ; $01303A  49ED 412E            p2_object
    BSR.W L_013056                          ; $01303E  6100 0016
    TST.W D4                                ; $013042  4A44
    BMI.S L_01304E                          ; $013044  6B08
    MOVEA.L A3,A4                           ; $013046  284B
    BSR.W L_012FBA                          ; $013048  6100 FF70
    BRA.S L_013052                          ; $01304C  6004
L_01304E:
    MOVEQ #$FF,D0                           ; $01304E  70FF
    MOVEQ #$28,D1                           ; $013050  7228
L_013052:
    MOVE.W D4,D1                            ; $013052  3204
    RTS                                     ; $013054  4E75
L_013056:
    BTST #$07,$6C(A4)                       ; $013056  082C 0007 006C
    BEQ.S L_01307E                          ; $01305C  6720
    BTST #$05,$45(A4)                       ; $01305E  082C 0005 0045
    BNE.S L_01307E                          ; $013064  6618
    MOVE.W (A4),D0                          ; $013066  3014
    MOVE.W $2(A4),D1                        ; $013068  322C 0002
    BSR.W L_0131FC                          ; $01306C  6100 018E
    CMP.W D0,D4                             ; $013070  B840
    BCS.S L_01307E                          ; $013072  650A
    MOVE.W D0,D4                            ; $013074  3800
    MOVE.W (A4),D2                          ; $013076  3414
    MOVE.W $2(A4),D3                        ; $013078  362C 0002
    MOVEA.L A4,A3                           ; $01307C  264C
L_01307E:
    RTS                                     ; $01307E  4E75
L_013080:
    MOVE.L A0,-(A7)                         ; $013080  2F08
    MOVE.W D2,-(A7)                         ; $013082  3F02
    LEA $9FC(A5),A0                         ; $013084  41ED 09FC
    MOVEQ #$1F,D7                           ; $013088  7E1F
    MOVEQ #$00,D0                           ; $01308A  7000
    MOVEQ #$00,D1                           ; $01308C  7200
    MOVEQ #$00,D2                           ; $01308E  7400
L_013090:
    MOVE.B (A0)+,D2                         ; $013090  1418
    ADD.W D2,D2                             ; $013092  D442
    ADD.W D2,D2                             ; $013094  D442
    ADD.W L_0130A4(PC,D2.W),D0              ; $013096  D07B 200C
    ADD.W L_0130A6(PC,D2.W),D1              ; $01309A  D27B 200A
    DBRA D7,L_013090                        ; $01309E  51CF FFF0
    BRA.S L_0130E4                          ; $0130A2  6040
L_0130A4:
    dc.b $00,$00                                                         ; $0130A4
L_0130A6:
    dc.b $00,$00,$00,$00,$FF,$FF,$00,$00,$00,$01,$00,$00,$00,$00,$FF,$FF ; $0130A6
    dc.b $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$01,$00,$00,$00,$00,$00,$01 ; $0130B6
    dc.b $00,$00,$00,$01,$FF,$FF,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00 ; $0130C6
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00         ; $0130D6
L_0130E4:
    MOVEQ #$00,D7                           ; $0130E4  7E00
    TST.W D0                                ; $0130E6  4A40
    BEQ.S L_0130F8                          ; $0130E8  670E
    BSET #$02,D7                            ; $0130EA  08C7 0002
    BMI.S L_0130F8                          ; $0130EE  6B08
    BCLR #$02,D7                            ; $0130F0  0887 0002
    BSET #$03,D7                            ; $0130F4  08C7 0003
L_0130F8:
    TST.W D1                                ; $0130F8  4A41
    BEQ.S L_01310A                          ; $0130FA  670E
    BSET #$00,D7                            ; $0130FC  08C7 0000
    BMI.S L_01310A                          ; $013100  6B08
    BCLR #$00,D7                            ; $013102  0887 0000
    BSET #$01,D7                            ; $013106  08C7 0001
L_01310A:
    MOVE.W (A7)+,D2                         ; $01310A  341F
    MOVEA.L (A7)+,A0                        ; $01310C  205F
    RTS                                     ; $01310E  4E75
L_013110:
    MOVE.W D1,-(A7)                         ; $013110  3F01
    MOVEQ #$00,D1                           ; $013112  7200
    SUBI.W #$0016,D0                        ; $013114  0440 0016
    BMI.S L_013154                          ; $013118  6B3A
    ADDQ.W #1,D1                            ; $01311A  5241
    SUBI.W #$002D,D0                        ; $01311C  0440 002D
    BMI.S L_013154                          ; $013120  6B32
    ADDQ.W #1,D1                            ; $013122  5241
    SUBI.W #$002D,D0                        ; $013124  0440 002D
    BMI.S L_013154                          ; $013128  6B2A
    ADDQ.W #1,D1                            ; $01312A  5241
    SUBI.W #$002D,D0                        ; $01312C  0440 002D
    BMI.S L_013154                          ; $013130  6B22
    ADDQ.W #1,D1                            ; $013132  5241
    SUBI.W #$002D,D0                        ; $013134  0440 002D
    BMI.S L_013154                          ; $013138  6B1A
    ADDQ.W #1,D1                            ; $01313A  5241
    SUBI.W #$002D,D0                        ; $01313C  0440 002D
    BMI.S L_013154                          ; $013140  6B12
    ADDQ.W #1,D1                            ; $013142  5241
    SUBI.W #$002D,D0                        ; $013144  0440 002D
    BMI.S L_013154                          ; $013148  6B0A
    ADDQ.W #1,D1                            ; $01314A  5241
    SUBI.W #$002D,D0                        ; $01314C  0440 002D
    BMI.S L_013154                          ; $013150  6B02
    MOVEQ #$00,D1                           ; $013152  7200
L_013154:
    MOVE.W D1,D0                            ; $013154  3001
    MOVE.W (A7)+,D1                         ; $013156  321F
    RTS                                     ; $013158  4E75
L_01315A:
    MOVE.W D7,-(A7)                         ; $01315A  3F07
    MOVEQ #$00,D7                           ; $01315C  7E00
    SUB.W D0,D2                             ; $01315E  9440
    BPL.S L_013168                          ; $013160  6A06
    NEG.W D2                                ; $013162  4442
    BSET #$00,D7                            ; $013164  08C7 0000
L_013168:
    SUB.W D1,D3                             ; $013168  9641
    BPL.S L_013172                          ; $01316A  6A06
    NEG.W D3                                ; $01316C  4443
    BSET #$01,D7                            ; $01316E  08C7 0001
L_013172:
    CMP.W D2,D3                             ; $013172  B642
    BCC.S L_01317C                          ; $013174  6406
    EXG D2,D3                               ; $013176  C543
    BSET #$02,D7                            ; $013178  08C7 0002
L_01317C:
    EXT.L D3                                ; $01317C  48C3
    ADD.W D3,D3                             ; $01317E  D643
    TST.W D2                                ; $013180  4A42
    BEQ.S L_01318C                          ; $013182  6708
    ANDI.L #$0000FFFF,D3                    ; $013184  0283 0000 FFFF
    DIVU.W D2,D3                            ; $01318A  86C2
L_01318C:
    CMPI.W #$000B,D3                        ; $01318C  0C43 000B
    BLS.S L_013194                          ; $013190  6302
    MOVEQ #$0B,D3                           ; $013192  760B
L_013194:
    MOVE.B L_0131B8(PC,D3.W),D3             ; $013194  163B 3022
    ADD.W D7,D7                             ; $013198  DE47
    LEA L_0131A8(PC),A0                     ; $01319A  41FA 000C
    ADDA.W $0(A0,D7.W),A0                   ; $01319E  D0F0 7000
    JSR (A0)                                ; $0131A2  4E90
    MOVE.W (A7)+,D7                         ; $0131A4  3E1F
    RTS                                     ; $0131A6  4E75
L_0131A8:
    dc.b $00,$1C,$00,$22,$00,$2A,$00,$30,$00,$38,$00,$40,$00,$48,$00,$4C ; $0131A8
L_0131B8:
    dc.b $00,$00,$2D,$38,$3F,$44,$47,$4A,$4B,$4D,$4E,$4E,$70,$5A,$D0,$43 ; $0131B8
    dc.b $4E,$75,$30,$3C,$01,$0E,$90,$43,$4E,$75,$70,$5A,$90,$43,$4E,$75 ; $0131C8
    dc.b $30,$3C,$01,$0E,$D0,$43,$4E,$75,$30,$3C,$00,$B4,$90,$43,$4E,$75 ; $0131D8
    dc.b $30,$3C,$00,$B4,$D0,$43,$4E,$75,$30,$03,$4E,$75,$30,$3C,$01,$68 ; $0131E8
    dc.b $90,$43,$4E,$75                                                 ; $0131F8
L_0131FC:
    SUB.W D6,D0                             ; $0131FC  9046
    BPL.S L_013202                          ; $0131FE  6A02
    NEG.W D0                                ; $013200  4440
L_013202:
    SUB.W D7,D1                             ; $013202  9247
    BPL.S L_013208                          ; $013204  6A02
    NEG.W D1                                ; $013206  4441
L_013208:
    CMP.W D0,D1                             ; $013208  B240
    BCS.S L_01320E                          ; $01320A  6502
    MOVE.W D1,D0                            ; $01320C  3001
L_01320E:
    RTS                                     ; $01320E  4E75
L_013210:
    RTS                                     ; $013210  4E75
L_013212:
    MOVEQ #$00,D5                           ; $013212  7A00
    MOVEQ #$00,D6                           ; $013214  7C00
    MOVEQ #$00,D7                           ; $013216  7E00
    LEA $40B8(A5),A6                        ; $013218  4DED 40B8            p1_object
    BTST #$07,$6C(A6)                       ; $01321C  082E 0007 006C
    BEQ.S L_01323E                          ; $013222  671A
    CMPI.W #$0006,$2E(A6)                   ; $013224  0C6E 0006 002E
    BEQ.S L_01323E                          ; $01322A  6712
    BTST #$05,$45(A6)                       ; $01322C  082E 0005 0045
    BNE.S L_01323E                          ; $013232  660A
    BSR.W L_012E84                          ; $013234  6100 FC4E
    ADD.W D0,D6                             ; $013238  DC40
    ADD.W D1,D7                             ; $01323A  DE41
    ADDQ.W #1,D5                            ; $01323C  5245
L_01323E:
    LEA $412E(A5),A6                        ; $01323E  4DED 412E            p2_object
    BTST #$07,$6C(A6)                       ; $013242  082E 0007 006C
    BEQ.S L_01325C                          ; $013248  6712
    CMPI.W #$0006,$2E(A6)                   ; $01324A  0C6E 0006 002E
    BEQ.S L_01325C                          ; $013250  670A
    BSR.W L_012E84                          ; $013252  6100 FC30
    ADD.W D0,D6                             ; $013256  DC40
    ADD.W D1,D7                             ; $013258  DE41
    ADDQ.W #1,D5                            ; $01325A  5245
L_01325C:
    TST.W D5                                ; $01325C  4A45
    BEQ.S L_013266                          ; $01325E  6706
    DIVU.W D5,D6                            ; $013260  8CC5
    DIVU.W D5,D7                            ; $013262  8EC5
    RTS                                     ; $013264  4E75
L_013266:
    MOVEQ #$FF,D6                           ; $013266  7CFF
    MOVEQ #$00,D7                           ; $013268  7E00
    RTS                                     ; $01326A  4E75
L_01326C:
    LEA $40B8(A5),A6                        ; $01326C  4DED 40B8            p1_object
    BTST #$07,$6C(A6)                       ; $013270  082E 0007 006C
    BNE.S L_013284                          ; $013276  660C
    LEA $412E(A5),A6                        ; $013278  4DED 412E            p2_object
    BTST #$07,$6C(A6)                       ; $01327C  082E 0007 006C
    BEQ.S L_01328E                          ; $013282  670A
L_013284:
    BSR.W L_012E84                          ; $013284  6100 FBFE
    MOVE.W D0,D6                            ; $013288  3C00
    MOVE.W D1,D7                            ; $01328A  3E01
    RTS                                     ; $01328C  4E75
L_01328E:
    MOVEQ #$FF,D6                           ; $01328E  7CFF
    MOVEQ #$00,D7                           ; $013290  7E00
    RTS                                     ; $013292  4E75
L_013294:
    SUBI.W #$00A0,D6                        ; $013294  0446 00A0
    BPL.S L_01329C                          ; $013298  6A02
    MOVEQ #$00,D6                           ; $01329A  7C00
L_01329C:
    MOVE.W $74A(A5),D0                      ; $01329C  302D 074A
    SUBI.W #$0014,D0                        ; $0132A0  0440 0014
    LSL.W #4,D0                             ; $0132A4  E948
    SUBQ.W #1,D0                            ; $0132A6  5340
    CMP.W D0,D6                             ; $0132A8  BC40
    BLT.S L_0132AE                          ; $0132AA  6D02
    MOVE.W D0,D6                            ; $0132AC  3C00
L_0132AE:
    SUBI.W #$0070,D7                        ; $0132AE  0447 0070
    BPL.S L_0132B6                          ; $0132B2  6A02
    MOVEQ #$00,D7                           ; $0132B4  7E00
L_0132B6:
    MOVE.W $74C(A5),D0                      ; $0132B6  302D 074C
    SUBI.W #$000E,D0                        ; $0132BA  0440 000E
    LSL.W #4,D0                             ; $0132BE  E948
    CMP.W D0,D7                             ; $0132C0  BE40
    BLT.S L_0132C6                          ; $0132C2  6D02
    MOVE.W D0,D7                            ; $0132C4  3E00
L_0132C6:
    RTS                                     ; $0132C6  4E75
L_0132C8:
    MOVEQ #$FF,D6                           ; $0132C8  7CFF
    MOVEQ #$00,D7                           ; $0132CA  7E00
    RTS                                     ; $0132CC  4E75
L_0132CE:
    TST.W $742(A5)                          ; $0132CE  4A6D 0742
    BEQ.S L_01331A                          ; $0132D2  6746
    CLR.W $742(A5)                          ; $0132D4  426D 0742
    MOVE.W $72E(A5),D0                      ; $0132D8  302D 072E
    ANDI.W #$FFF8,D0                        ; $0132DC  0240 FFF8
    SUB.W $732(A5),D0                       ; $0132E0  906D 0732
    BEQ.S L_0132F8                          ; $0132E4  6712
    MOVE.W #$FFFF,$742(A5)                  ; $0132E6  3B7C FFFF 0742
    MOVEQ #$08,D1                           ; $0132EC  7208
    TST.W D0                                ; $0132EE  4A40
    BMI.S L_0132F4                          ; $0132F0  6B02
    NEG.W D1                                ; $0132F2  4441
L_0132F4:
    ADD.W D1,$72E(A5)                       ; $0132F4  D36D 072E
L_0132F8:
    MOVE.W $730(A5),D0                      ; $0132F8  302D 0730
    ANDI.W #$FFF8,D0                        ; $0132FC  0240 FFF8
    SUB.W $734(A5),D0                       ; $013300  906D 0734
    BEQ.S L_013318                          ; $013304  6712
    MOVE.W #$FFFF,$742(A5)                  ; $013306  3B7C FFFF 0742
    MOVEQ #$08,D1                           ; $01330C  7208
    TST.W D0                                ; $01330E  4A40
    BMI.S L_013314                          ; $013310  6B02
    NEG.W D1                                ; $013312  4441
L_013314:
    ADD.W D1,$730(A5)                       ; $013314  D36D 0730
L_013318:
    RTS                                     ; $013318  4E75
L_01331A:
    TST.W D6                                ; $01331A  4A46
    BMI.S L_013352                          ; $01331C  6B34
    ANDI.W #$FFF8,D6                        ; $01331E  0246 FFF8
    ANDI.W #$FFF8,D7                        ; $013322  0247 FFF8
    MOVE.W D6,$732(A5)                      ; $013326  3B46 0732
    MOVE.W D7,$734(A5)                      ; $01332A  3B47 0734
    SUB.W $72E(A5),D6                       ; $01332E  9C6D 072E
    BPL.S L_013336                          ; $013332  6A02
    NEG.W D6                                ; $013334  4446
L_013336:
    SUB.W $730(A5),D7                       ; $013336  9E6D 0730
    BPL.S L_01333E                          ; $01333A  6A02
    NEG.W D7                                ; $01333C  4447
L_01333E:
    CMPI.W #$0040,D6                        ; $01333E  0C46 0040
    BGE.S L_01334C                          ; $013342  6C08
    CMPI.W #$0020,D7                        ; $013344  0C47 0020
    BGE.S L_01334C                          ; $013348  6C02
    BRA.S L_013352                          ; $01334A  6006
L_01334C:
    MOVE.W #$FFFF,$742(A5)                  ; $01334C  3B7C FFFF 0742
L_013352:
    RTS                                     ; $013352  4E75
L_013354:
    MOVE.L A4,-(A7)                         ; $013354  2F0C
    MOVE.L A6,-(A7)                         ; $013356  2F0E
    BSR.W L_013362                          ; $013358  6100 0008
    MOVEA.L (A7)+,A6                        ; $01335C  2C5F
    MOVEA.L (A7)+,A4                        ; $01335E  285F
    RTS                                     ; $013360  4E75
L_013362:
    TST.W $958(A5)                          ; $013362  4A6D 0958
    BPL.S L_013374                          ; $013366  6A0C
    MOVE.W $744(A5),D0                      ; $013368  302D 0744
    ADD.W D0,D0                             ; $01336C  D040
    ADD.W D0,D0                             ; $01336E  D040
    MOVE.L L_013376(PC,D0.W),-(A7)          ; $013370  2F3B 0004
L_013374:
    RTS                                     ; $013374  4E75
L_013376:
    dc.b $00,$01,$33,$8E,$00,$01,$33,$AC,$00,$01,$33,$BE,$00,$01,$33,$DC ; $013376
    dc.b $00,$01,$33,$8E,$00,$01,$33,$8E                                 ; $013386
L_01338E:
    BSR.W L_01326C                          ; $01338E  6100 FEDC
    TST.W D6                                ; $013392  4A46
    BMI.S L_0133AA                          ; $013394  6B14
    BSR.W L_013294                          ; $013396  6100 FEFC
    MOVE.W D6,$72E(A5)                      ; $01339A  3B46 072E
    MOVE.W D6,$732(A5)                      ; $01339E  3B46 0732
    MOVE.W D7,$730(A5)                      ; $0133A2  3B47 0730
    MOVE.W D7,$734(A5)                      ; $0133A6  3B47 0734
L_0133AA:
    RTS                                     ; $0133AA  4E75
L_0133AC:
    BSR.W L_01326C                          ; $0133AC  6100 FEBE
    TST.W D6                                ; $0133B0  4A46
    BMI.S L_0133BC                          ; $0133B2  6B08
    BSR.W L_013294                          ; $0133B4  6100 FEDE
    BSR.W L_0132CE                          ; $0133B8  6100 FF14
L_0133BC:
    RTS                                     ; $0133BC  4E75
L_0133BE:
    BSR.W L_013212                          ; $0133BE  6100 FE52
    TST.W D6                                ; $0133C2  4A46
    BMI.S L_0133DA                          ; $0133C4  6B14
    BSR.W L_013294                          ; $0133C6  6100 FECC
    MOVE.W D6,$72E(A5)                      ; $0133CA  3B46 072E
    MOVE.W D6,$732(A5)                      ; $0133CE  3B46 0732
    MOVE.W D7,$730(A5)                      ; $0133D2  3B47 0730
    MOVE.W D7,$734(A5)                      ; $0133D6  3B47 0734
L_0133DA:
    RTS                                     ; $0133DA  4E75
L_0133DC:
    BSR.W L_013212                          ; $0133DC  6100 FE34
    TST.W D6                                ; $0133E0  4A46
    BMI.S L_013400                          ; $0133E2  6B1C
    BSR.W L_013294                          ; $0133E4  6100 FEAE
    ANDI.W #$FFF8,$732(A5)                  ; $0133E8  026D FFF8 0732
    ANDI.W #$FFF8,$734(A5)                  ; $0133EE  026D FFF8 0734
    ANDI.W #$FFF0,D6                        ; $0133F4  0246 FFF0
    ANDI.W #$FFF0,D7                        ; $0133F8  0247 FFF0
    BSR.W L_0132CE                          ; $0133FC  6100 FED0
L_013400:
    RTS                                     ; $013400  4E75
L_013402:
    MOVE.W $72E(A5),D6                      ; $013402  3C2D 072E
    MOVE.W $730(A5),D7                      ; $013406  3E2D 0730
    MOVE.W (A6),D0                          ; $01340A  3016
    MOVE.W #$0002,D1                        ; $01340C  323C 0002
    SUB.W D6,D0                             ; $013410  9046
    BCS.S L_01341E                          ; $013412  650A
    CMPI.W #$0120,D0                        ; $013414  0C40 0120
    BCS.S L_013428                          ; $013418  650E
    MOVE.W #$0003,D1                        ; $01341A  323C 0003
L_01341E:
    BTST D1,$3D(A6)                         ; $01341E  032E 003D
    BEQ.S L_013428                          ; $013422  6704
    MOVE.W $4(A6),(A6)                      ; $013424  3CAE 0004
L_013428:
    MOVE.W $2(A6),D0                        ; $013428  302E 0002
    MOVE.W D7,D5                            ; $01342C  3A07
    ADDI.W #$0014,D5                        ; $01342E  0645 0014
    MOVE.W #$0000,D1                        ; $013432  323C 0000
    SUB.W D5,D0                             ; $013436  9045
    BCS.S L_013444                          ; $013438  650A
    MOVE.W #$0001,D1                        ; $01343A  323C 0001
    CMPI.W #$009A,D0                        ; $01343E  0C40 009A
    BCS.S L_013450                          ; $013442  650C
L_013444:
    BTST D1,$3D(A6)                         ; $013444  032E 003D
    BEQ.S L_013450                          ; $013448  6706
    MOVE.W $6(A6),$2(A6)                    ; $01344A  3D6E 0006 0002
L_013450:
    RTS                                     ; $013450  4E75
L_013452:
    MOVE.W #$0002,$744(A5)                  ; $013452  3B7C 0002 0744
    RTS                                     ; $013458  4E75
L_01345A:
    RTS                                     ; $01345A  4E75
L_01345C:
    TST.B $9A2(A5)                          ; $01345C  4A2D 09A2
    BNE.W L_0134D6                          ; $013460  6600 0074
    MOVEQ #$00,D0                           ; $013464  7000
    MOVE.W $718(A5),D0                      ; $013466  302D 0718
    BTST #$04,$926(A5)                      ; $01346A  082D 0004 0926
    BEQ.S L_01349A                          ; $013470  6728
    MOVE.B $B8B(A5),D0                      ; $013472  102D 0B8B
    CMPI.B #$09,D0                          ; $013476  0C00 0009
    BLS.S L_01347E                          ; $01347A  6302
    MOVEQ #$00,D0                           ; $01347C  7000
L_01347E:
    ADDI.B #$5A,D0                          ; $01347E  0600 005A
    BTST #$02,$926(A5)                      ; $013482  082D 0002 0926
    BEQ.S L_01349A                          ; $013488  6710
    BCLR #$01,$926(A5)                      ; $01348A  08AD 0001 0926
    BEQ.S L_0134A0                          ; $013490  670E
    MOVE.W $930(A5),D0                      ; $013492  302D 0930
    BPL.S L_01349A                          ; $013496  6A02
    MOVEQ #$00,D0                           ; $013498  7000
L_01349A:
    JSR L_0041CA                            ; $01349A  4EB9 0000 41CA
L_0134A0:
    BTST #$03,$926(A5)                      ; $0134A0  082D 0003 0926
    BEQ.S L_0134D6                          ; $0134A6  672E
    LEA $B8C(A5),A0                         ; $0134A8  41ED 0B8C
    MOVE.L $942(A5),D0                      ; $0134AC  202D 0942
    EXT.L D0                                ; $0134B0  48C0
    BSET #$00,$A90(A5)                      ; $0134B2  08ED 0000 0A90
    BSR.W L_016626                          ; $0134B8  6100 316C
    LEA $B8C(A5),A0                         ; $0134BC  41ED 0B8C
    SUBI.B #$30,(A0)+                       ; $0134C0  0418 0030
    SUBI.B #$30,(A0)+                       ; $0134C4  0418 0030
    SUBI.B #$30,(A0)+                       ; $0134C8  0418 0030
    SUBI.B #$30,(A0)+                       ; $0134CC  0418 0030
    JSR L_00423C                            ; $0134D0  4EB9 0000 423C
L_0134D6:
    BCLR #$00,$3D4(A5)                      ; $0134D6  08AD 0000 03D4
    LEA L_013532(PC),A4                     ; $0134DC  49FA 0054
    LEA $40B8(A5),A6                        ; $0134E0  4DED 40B8            p1_object
    BSR.W L_013552                          ; $0134E4  6100 006C
    BSET #$00,$3D4(A5)                      ; $0134E8  08ED 0000 03D4
    LEA L_013542(PC),A4                     ; $0134EE  49FA 0052
    LEA $412E(A5),A6                        ; $0134F2  4DED 412E            p2_object
    BSR.W L_013552                          ; $0134F6  6100 005A
    TST.B $9A2(A5)                          ; $0134FA  4A2D 09A2
    BEQ.S L_013530                          ; $0134FE  6730
    MOVEA.L $8DA(A5),A4                     ; $013500  286D 08DA
    MOVEQ #$00,D0                           ; $013504  7000
    MOVE.W $8E2(A5),D0                      ; $013506  302D 08E2
    MOVEQ #$00,D1                           ; $01350A  7200
    MOVE.B $48(A4),D1                       ; $01350C  122C 0048
    BTST #$00,$6D(A4)                       ; $013510  082C 0000 006D
    BEQ.S L_013522                          ; $013516  670A
    DIVU.W #$0003,D0                        ; $013518  80FC 0003
    DIVU.W #$0003,D1                        ; $01351C  82FC 0003
    BRA.S L_013526                          ; $013520  6004
L_013522:
    LSR.W #1,D0                             ; $013522  E248
    LSR.W #1,D1                             ; $013524  E249
L_013526:
    MOVE.W D1,D6                            ; $013526  3C01
    MOVE.W D0,D7                            ; $013528  3E00
    JSR L_003EA0                            ; $01352A  4EB9 0000 3EA0
L_013530:
    RTS                                     ; $013530  4E75
L_013532:
    dc.b $00,$4C,$00,$00,$00,$00,$00,$44,$00,$00,$00,$00,$00,$44,$09,$46 ; $013532
L_013542:
    dc.b $00,$4E,$00,$01,$00,$01,$00,$48,$00,$01,$00,$60,$00,$48,$09,$48 ; $013542
L_013552:
    BTST #$06,$49(A6)                       ; $013552  082E 0006 0049
    BEQ.S L_013572                          ; $013558  6718
    MOVE.W (A4),D0                          ; $01355A  3014
    BSET #$07,$0(A5,D0.W)                   ; $01355C  08F5 0007 0000
    ADDA.W #$000C,A4                        ; $013562  D8FC 000C
    MOVE.W (A4),D0                          ; $013566  3014
    BSET #$07,$0(A5,D0.W)                   ; $013568  08F5 0007 0000
    BRA.W L_0136AE                          ; $01356E  6000 013E
L_013572:
    MOVE.W (A4)+,D0                         ; $013572  301C
    LEA $0(A5,D0.W),A0                      ; $013574  41F5 0000
    BCLR #$07,(A0)                          ; $013578  0890 0007
    BEQ.W L_0135AC                          ; $01357C  6700 002E
    MOVE.W (A0),D0                          ; $013580  3010
    EXT.L D0                                ; $013582  48C0
    BEQ.S L_013588                          ; $013584  6702
    SUBQ.W #1,D0                            ; $013586  5340
L_013588:
    LEA $B8C(A5),A0                         ; $013588  41ED 0B8C
    BSET #$00,$A90(A5)                      ; $01358C  08ED 0000 0A90
    MOVE.L A6,-(A7)                         ; $013592  2F0E
    BSR.W L_016642                          ; $013594  6100 30AC
    MOVEA.L (A7)+,A6                        ; $013598  2C5F
    LEA $B8C(A5),A0                         ; $01359A  41ED 0B8C
    SUBI.B #$30,(A0)+                       ; $01359E  0418 0030
    SUBI.B #$30,(A0)+                       ; $0135A2  0418 0030
    JSR L_004256                            ; $0135A6  4EB9 0000 4256
L_0135AC:
    MOVE.W (A4)+,D1                         ; $0135AC  321C
    BCLR #$00,$49(A6)                       ; $0135AE  08AE 0000 0049
    BEQ.W L_0135DE                          ; $0135B4  6700 0028
    MOVE.L A4,-(A7)                         ; $0135B8  2F0C
    LEA $AE4(A5),A4                         ; $0135BA  49ED 0AE4            p1_money
    MOVE.B $40(A6),D0                       ; $0135BE  102E 0040
    ANDI.W #$0001,D0                        ; $0135C2  0240 0001
    BEQ.S L_0135CC                          ; $0135C6  6704
    LEA $B0C(A5),A4                         ; $0135C8  49ED 0B0C            p2_money
L_0135CC:
    MOVE.W $4(A4),D7                        ; $0135CC  3E2C 0004
    MOVEA.L (A7)+,A4                        ; $0135D0  285F
    MOVEQ #$00,D6                           ; $0135D2  7C00
    MOVE.B $48(A6),D6                       ; $0135D4  1C2E 0048
    JSR L_003F42                            ; $0135D8  4EB9 0000 3F42
L_0135DE:
    MOVE.W (A4)+,D1                         ; $0135DE  321C
    BCLR #$01,$49(A6)                       ; $0135E0  08AE 0001 0049
    BEQ.S L_0135F4                          ; $0135E6  670C
    MOVEQ #$00,D4                           ; $0135E8  7800
    MOVE.B $58(A6),D4                       ; $0135EA  182E 0058
    JSR L_003E24                            ; $0135EE  4EB9 0000 3E24
L_0135F4:
    MOVE.W (A4)+,D0                         ; $0135F4  301C
    LEA $0(A5,D0.W),A0                      ; $0135F6  41F5 0000
    BCLR #$07,(A0)                          ; $0135FA  0890 0007
    BEQ.W L_013634                          ; $0135FE  6700 0034
    MOVE.L (A0),D0                          ; $013602  2010
    LEA $B8C(A5),A0                         ; $013604  41ED 0B8C
    BSET #$00,$A90(A5)                      ; $013608  08ED 0000 0A90
    MOVE.L A6,-(A7)                         ; $01360E  2F0E
    BSR.W L_016618                          ; $013610  6100 3006
    MOVEA.L (A7)+,A6                        ; $013614  2C5F
    LEA $B8C(A5),A0                         ; $013616  41ED 0B8C
    SUBI.B #$30,(A0)+                       ; $01361A  0418 0030
    SUBI.B #$30,(A0)+                       ; $01361E  0418 0030
    SUBI.B #$30,(A0)+                       ; $013622  0418 0030
    SUBI.B #$30,(A0)+                       ; $013626  0418 0030
    SUBI.B #$30,(A0)+                       ; $01362A  0418 0030
    JSR L_004244                            ; $01362E  4EB9 0000 4244
L_013634:
    MOVE.W (A4)+,D1                         ; $013634  321C
    MOVEQ #$00,D2                           ; $013636  7400
    BCLR #$03,$49(A6)                       ; $013638  08AE 0003 0049
    BEQ.S L_01368E                          ; $01363E  674E
    MOVE.L A4,-(A7)                         ; $013640  2F0C
    LEA $AE4(A5),A4                         ; $013642  49ED 0AE4            p1_money
    MOVE.B $40(A6),D0                       ; $013646  102E 0040
    ANDI.W #$0001,D0                        ; $01364A  0240 0001
    BEQ.S L_013654                          ; $01364E  6704
    LEA $B0C(A5),A4                         ; $013650  49ED 0B0C            p2_money
L_013654:
    MOVE.W $18(A4),D0                       ; $013654  302C 0018
    MOVEA.L (A7)+,A4                        ; $013658  285F
    TST.W $8AA(A5)                          ; $01365A  4A6D 08AA
    BMI.S L_013662                          ; $01365E  6B02
    MOVEQ #$09,D0                           ; $013660  7009
L_013662:
    TST.W $8BC(A5)                          ; $013662  4A6D 08BC
    BMI.S L_01366A                          ; $013666  6B02
    MOVEQ #$08,D0                           ; $013668  7008
L_01366A:
    ANDI.W #$00FF,D0                        ; $01366A  0240 00FF
    BTST #$04,$49(A6)                       ; $01366E  082E 0004 0049
    BEQ.S L_013688                          ; $013674  6712
    BTST #$01,$6F5(A5)                      ; $013676  082D 0001 06F5
    BEQ.S L_013688                          ; $01367C  670A
    BCLR #$04,$49(A6)                       ; $01367E  08AE 0004 0049
    BEQ.S L_013688                          ; $013684  6702
    MOVEQ #$01,D2                           ; $013686  7401
L_013688:
    JSR L_003DEE                            ; $013688  4EB9 0000 3DEE
L_01368E:
    MOVE.W (A4)+,D0                         ; $01368E  301C
    BCLR #$05,$49(A6)                       ; $013690  08AE 0005 0049
    BEQ.W L_0136AE                          ; $013696  6700 0016
    MOVEQ #$FF,D1                           ; $01369A  72FF
    TST.W D0                                ; $01369C  4A40
    BNE.S L_0136A8                          ; $01369E  6608
    JSR L_004146                            ; $0136A0  4EB9 0000 4146
    BRA.S L_0136AE                          ; $0136A6  6006
L_0136A8:
    JSR L_004176                            ; $0136A8  4EB9 0000 4176
L_0136AE:
    ADDQ.W #2,A4                            ; $0136AE  544C
    BCLR #$06,$49(A6)                       ; $0136B0  08AE 0006 0049
    BEQ.S L_0136D8                          ; $0136B6  6720
    MOVE.B #$0F,$49(A6)                     ; $0136B8  1D7C 000F 0049
    MOVE.W (A4)+,D0                         ; $0136BE  301C
    CMPI.W #$0946,D0                        ; $0136C0  0C40 0946
    BNE.S L_0136D0                          ; $0136C4  660A
    MOVEQ #$00,D1                           ; $0136C6  7200
    JSR L_004146                            ; $0136C8  4EB9 0000 4146
    BRA.S L_0136D8                          ; $0136CE  6008
L_0136D0:
    MOVEQ #$00,D1                           ; $0136D0  7200
    JSR L_004176                            ; $0136D2  4EB9 0000 4176
L_0136D8:
    RTS                                     ; $0136D8  4E75
L_0136DA:
    MOVE.W $6F4(A5),D0                      ; $0136DA  302D 06F4
    ANDI.L #$0000000F,D0                    ; $0136DE  0280 0000 000F
    MOVE.W #$4A49,D2                        ; $0136E4  343C 4A49
    BTST D0,D2                              ; $0136E8  0102
    BNE.W L_013B24                          ; $0136EA  6600 0438
    MOVEA.L $A60(A5),A2                     ; $0136EE  246D 0A60
    MOVE.W (A2)+,D7                         ; $0136F2  3E1A
    BEQ.W L_013B24                          ; $0136F4  6700 042E
    MOVE.W (A2)+,D6                         ; $0136F8  3C1A
    SUBQ.W #1,D7                            ; $0136FA  5347
    MOVE.W $72E(A5),D4                      ; $0136FC  382D 072E
    LSR.W #4,D4                             ; $013700  E84C
    SUBQ.W #3,D4                            ; $013702  5744
    BPL.S L_013708                          ; $013704  6A02
    MOVEQ #$00,D4                           ; $013706  7800
L_013708:
    MOVE.W D4,D5                            ; $013708  3A04
    ADDI.W #$0016,D4                        ; $01370A  0644 0016
L_01370E:
    TST.L $0(A2)                            ; $01370E  4AAA 0000
    BEQ.W L_013B1E                          ; $013712  6700 040A
    MOVE.W $0(A2),D0                        ; $013716  302A 0000
    MOVE.W $2(A2),D1                        ; $01371A  322A 0002
    CMP.W D4,D0                             ; $01371E  B044
    BEQ.S L_01372C                          ; $013720  670A
    BCC.W L_013B1E                          ; $013722  6400 03FA
    CMP.W D5,D0                             ; $013726  B045
    BCS.W L_013B24                          ; $013728  6500 03FA
L_01372C:
    MOVE.W $730(A5),D2                      ; $01372C  342D 0730
    LSR.W #4,D2                             ; $013730  E84A
    SUBQ.W #3,D2                            ; $013732  5742
    BPL.S L_013738                          ; $013734  6A02
    MOVEQ #$00,D2                           ; $013736  7400
L_013738:
    SUB.W D1,D2                             ; $013738  9441
    BEQ.S L_013740                          ; $01373A  6704
    BCC.W L_013B1E                          ; $01373C  6400 03E0
L_013740:
    ADDI.W #$000E,D2                        ; $013740  0642 000E
    BMI.W L_013B1E                          ; $013744  6B00 03D8
    ADD.W D0,D0                             ; $013748  D040
    MULU.W $750(A5),D1                      ; $01374A  C2ED 0750
    ADD.W D0,D1                             ; $01374E  D240
    MOVEA.L $746(A5),A1                     ; $013750  226D 0746
    ADDA.W D1,A1                            ; $013754  D2C1
    TST.W $38(A2)                           ; $013756  4A6A 0038
    BEQ.S L_013768                          ; $01375A  670C
    BMI.W L_013B1E                          ; $01375C  6B00 03C0
    SUBQ.W #1,$38(A2)                       ; $013760  536A 0038
    BRA.W L_013B1E                          ; $013764  6000 03B8
L_013768:
    MOVEM.L D4-D7,-(A7)                     ; $013768  48E7 0F00
L_01376C:
    MOVE.W $26(A2),D0                       ; $01376C  302A 0026
    MOVEA.L $28(A2),A3                      ; $013770  266A 0028
    MOVEQ #$00,D1                           ; $013774  7200
    MOVE.B $0(A3,D0.W),D1                   ; $013776  1233 0000
    MOVE.W L_013782(PC,D1.W),D1             ; $01377A  323B 1006
    JMP L_013782(PC,D1.W)                   ; $01377E  4EFB 1002
L_013782:
    dc.b $02,$3C,$02,$4E,$02,$F2,$02,$1A,$03,$52,$02,$DA,$01,$DE,$01,$B6 ; $013782
    dc.b $02,$FA,$01,$1A,$00,$9A,$00,$78,$00,$1A                         ; $013792
L_01379C:
    MOVE.L A2,-(A7)                         ; $01379C  2F0A
    MOVEA.L $67C(A5),A6                     ; $01379E  2C6D 067C
    MOVE.W $704(A5),D7                      ; $0137A2  3E2D 0704
    BEQ.S L_0137F0                          ; $0137A6  6748
L_0137A8:
    TST.L (A6)                              ; $0137A8  4A96
    BEQ.S L_0137E8                          ; $0137AA  673C
    MOVEQ #$00,D1                           ; $0137AC  7200
    MOVE.B $B(A6),D1                        ; $0137AE  122E 000B
    BMI.S L_0137E8                          ; $0137B2  6B34
    MULU.W #$0014,D1                        ; $0137B4  C2FC 0014
    MOVEA.L $936(A5),A0                     ; $0137B8  206D 0936
    MOVE.W $0(A0,D1.W),D1                   ; $0137BC  3230 1000
    CMPI.W #$0007,D1                        ; $0137C0  0C41 0007
    BNE.S L_0137E8                          ; $0137C4  6622
    MOVEQ #$00,D0                           ; $0137C6  7000
    MOVE.B $11(A6),D0                       ; $0137C8  102E 0011
    BEQ.S L_0137DC                          ; $0137CC  670E
    MOVEM.L D0-D7/A0-A4/A6,-(A7)            ; $0137CE  48E7 FFFA
    JSR L_013B26                            ; $0137D2  4EB9 0001 3B26
    MOVEM.L (A7)+,D0-D7/A0-A4/A6            ; $0137D8  4CDF 5FFF
L_0137DC:
    CLR.L (A6)                              ; $0137DC  4296
    MOVEQ #$FF,D0                           ; $0137DE  70FF
    JSR L_008E98                            ; $0137E0  4EB9 0000 8E98
    BRA.S L_0137F0                          ; $0137E6  6008
L_0137E8:
    LEA $14(A6),A6                          ; $0137E8  4DEE 0014
    DBRA D7,L_0137A8                        ; $0137EC  51CF FFBA
L_0137F0:
    MOVEA.L (A7)+,A2                        ; $0137F0  245F
    ADDQ.W #1,$26(A2)                       ; $0137F2  526A 0026
    BRA.W L_01376C                          ; $0137F6  6000 FF74
L_0137FA:
    MOVEQ #$00,D2                           ; $0137FA  7400
    MOVE.B $1(A3,D0.W),D2                   ; $0137FC  1433 0001
    BEQ.S L_013814                          ; $013800  6712
    MOVE.L D0,-(A7)                         ; $013802  2F00
    MOVE.B D2,D0                            ; $013804  1002
    BEQ.S L_013812                          ; $013806  670A
    ANDI.W #$00FF,D0                        ; $013808  0240 00FF
    JSR L_000590                            ; $01380C  4EB9 0000 0590
L_013812:
    MOVE.L (A7)+,D0                         ; $013812  201F
L_013814:
    ADDQ.W #2,$26(A2)                       ; $013814  546A 0026
    BRA.W L_01376C                          ; $013818  6000 FF52
L_01381C:
    MOVEQ #$00,D2                           ; $01381C  7400
    MOVE.B $1(A3,D0.W),D2                   ; $01381E  1433 0001
    BEQ.S L_013894                          ; $013822  6770
    MOVEM.L D0-D2/A0-A3,-(A7)               ; $013824  48E7 E0F0
    MOVE.W $0(A2),D0                        ; $013828  302A 0000
    MOVE.W $2(A2),D1                        ; $01382C  322A 0002
    MOVE.W D2,-(A7)                         ; $013830  3F02
    ANDI.W #$000F,D2                        ; $013832  0242 000F
    ADD.W D2,D2                             ; $013836  D442
    ADD.W D2,D2                             ; $013838  D442
    ADD.W $013868(PC,D2.W),D0               ; $01383A  D07B 202C
    ADD.W L_01386A(PC,D2.W),D1              ; $01383E  D27B 202A
    LSL.W #4,D0                             ; $013842  E948
    LSL.W #4,D1                             ; $013844  E949
    MOVE.W (A7)+,D2                         ; $013846  341F
    BTST #$04,D2                            ; $013848  0802 0004
    BEQ.S L_01385E                          ; $01384C  6710
    ADDI.W #$000A,D0                        ; $01384E  0640 000A
    ADDI.W #$000D,D1                        ; $013852  0641 000D
    JSR L_00A70C                            ; $013856  4EB9 0000 A70C
    BRA.S L_013890                          ; $01385C  6032
L_01385E:
    ADDQ.W #6,D0                            ; $01385E  5C40
    ADDI.W #$000A,D1                        ; $013860  0641 000A
    JSR L_00A66C                            ; $013864  4EB9 0000 A66C
L_01386A:
    BRA.S L_013890                          ; $01386A  6024
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$02,$00,$00,$00,$00,$00,$01 ; $01386C
    dc.b $00,$01,$00,$01,$00,$02,$00,$01,$00,$00,$00,$02,$00,$01,$00,$02 ; $01387C
    dc.b $00,$02,$00,$02                                                 ; $01388C
L_013890:
    MOVEM.L (A7)+,D0-D2/A0-A3               ; $013890  4CDF 0F07
L_013894:
    ADDQ.W #2,$26(A2)                       ; $013894  546A 0026
    BRA.W L_01376C                          ; $013898  6000 FED2
L_01389C:
    MOVE.L A0,-(A7)                         ; $01389C  2F08
    MOVE.W $0(A2),D0                        ; $01389E  302A 0000
    MOVE.W $2(A2),D1                        ; $0138A2  322A 0002
    LSL.W #4,D0                             ; $0138A6  E948
    LSL.W #4,D1                             ; $0138A8  E949
    MOVE.W $E(A2),D7                        ; $0138AA  3E2A 000E
    MULU.W #$0014,D7                        ; $0138AE  CEFC 0014
    MOVEA.L $936(A5),A0                     ; $0138B2  206D 0936
    ADDA.W D7,A0                            ; $0138B6  D0C7
    MOVE.W (A0),D7                          ; $0138B8  3E10
    MULU.W #$001E,D7                        ; $0138BA  CEFC 001E
    LEA L_016012,A0                         ; $0138BE  41F9 0001 6012
    LEA $0(A0,D7.W),A0                      ; $0138C4  41F0 7000
    MOVE.W $C(A0),D7                        ; $0138C8  3E28 000C
    MOVE.W $4(A5,D7.W),D7                   ; $0138CC  3E35 7004
    ADD.W D7,D7                             ; $0138D0  DE47
    MOVE.W D7,-(A7)                         ; $0138D2  3F07
    ADD.W D7,D7                             ; $0138D4  DE47
    ADD.W (A7)+,D7                          ; $0138D6  DE5F
    LEA L_0138EA(PC,D7.W),A0                ; $0138D8  41FB 7010
    ADD.W (A0),D0                           ; $0138DC  D050
    ADD.W $2(A0),D1                         ; $0138DE  D268 0002
    TST.W $4(A0)                            ; $0138E2  4A68 0004
    BEQ.S L_013920                          ; $0138E6  6738
    BRA.S L_013928                          ; $0138E8  603E
L_0138EA:
    dc.b $00,$10,$00,$30,$00,$01,$00,$08,$00,$18,$00,$00,$00,$04,$00,$04 ; $0138EA
    dc.b $00,$00,$00,$08,$00,$10,$00,$00,$00,$14,$00,$24,$00,$01,$00,$08 ; $0138FA
    dc.b $00,$20,$00,$00,$00,$08,$00,$30,$00,$00,$00,$02,$00,$04,$00,$00 ; $01390A
    dc.b $00,$10,$00,$30,$00,$01                                         ; $01391A
L_013920:
    JSR L_00A788                            ; $013920  4EB9 0000 A788
    BRA.S L_01392E                          ; $013926  6006
L_013928:
    JSR L_00A764                            ; $013928  4EB9 0000 A764
L_01392E:
    MOVEA.L (A7)+,A0                        ; $01392E  205F
    ADDQ.W #1,$26(A2)                       ; $013930  526A 0026
    BRA.W L_01376C                          ; $013934  6000 FE36
L_013938:
    ADDQ.W #1,$26(A2)                       ; $013938  526A 0026
    MOVE.W $36(A2),D0                       ; $01393C  302A 0036
    BEQ.S L_01395C                          ; $013940  671A
    CLR.W $36(A2)                           ; $013942  426A 0036
    MOVEM.L D0-D7/A0-A4/A6,-(A7)            ; $013946  48E7 FFFA
    MOVE.W D0,-(A7)                         ; $01394A  3F00
    BSR.W L_013B26                          ; $01394C  6100 01D8
    MOVE.W (A7)+,D0                         ; $013950  301F
    JSR L_008F48                            ; $013952  4EB9 0000 8F48
    MOVEM.L (A7)+,D0-D7/A0-A4/A6            ; $013958  4CDF 5FFF
L_01395C:
    BRA.W L_01376C                          ; $01395C  6000 FE0E
L_013960:
    ADDQ.W #1,$26(A2)                       ; $013960  526A 0026
    SUBQ.W #1,$3C(A2)                       ; $013964  536A 003C
    BPL.W L_01376C                          ; $013968  6A00 FE02
    TST.B $3A(A2)                           ; $01396C  4A2A 003A
    BEQ.W L_01376C                          ; $013970  6700 FDFA
    BMI.S L_013988                          ; $013974  6B12
    MOVE.W $E(A2),D0                        ; $013976  302A 000E
    JSR L_00A8AE                            ; $01397A  4EB9 0000 A8AE
    BMI.W L_013A5C                          ; $013980  6B00 00DA
    SUBQ.B #1,$3A(A2)                       ; $013984  532A 003A
L_013988:
    CLR.W $26(A2)                           ; $013988  426A 0026
    MOVEA.L $2C(A2),A4                      ; $01398C  286A 002C
    ADDA.W $30(A2),A4                       ; $013990  D8EA 0030
    MOVE.L A4,$28(A2)                       ; $013994  254C 0028
    BRA.W L_01376C                          ; $013998  6000 FDD2
L_01399C:
    MOVE.W $0(A2),D0                        ; $01399C  302A 0000
    MOVE.W $2(A2),D1                        ; $0139A0  322A 0002
    ADD.W D0,D0                             ; $0139A4  D040
    MULU.W $750(A5),D1                      ; $0139A6  C2ED 0750
    ADD.W D0,D1                             ; $0139AA  D240
    MOVEA.L $746(A5),A1                     ; $0139AC  226D 0746
    ADDA.W D1,A1                            ; $0139B0  D2C1
    BCLR #$07,(A1)                          ; $0139B2  0891 0007
    CLR.L $0(A2)                            ; $0139B6  42AA 0000
    BRA.W L_013B1A                          ; $0139BA  6000 015E
L_0139BE:
    MOVEQ #$00,D1                           ; $0139BE  7200
    MOVE.B $1(A3,D0.W),D1                   ; $0139C0  1233 0001
    MOVE.W D1,$38(A2)                       ; $0139C4  3541 0038
    ADDQ.W #2,$26(A2)                       ; $0139C8  546A 0026
    BRA.W L_013B1A                          ; $0139CC  6000 014C
L_0139D0:
    BSR.W L_014C9E                          ; $0139D0  6100 12CC
    TST.W D0                                ; $0139D4  4A40
    BMI.W L_013B1A                          ; $0139D6  6B00 0142
    MOVE.W $0(A2),D6                        ; $0139DA  3C2A 0000
    MOVE.W $2(A2),D7                        ; $0139DE  3E2A 0002
    LSL.W #4,D6                             ; $0139E2  E94E
    LSL.W #4,D7                             ; $0139E4  E94F
    MOVE.W $E(A2),D0                        ; $0139E6  302A 000E
    MOVE.L A2,-(A7)                         ; $0139EA  2F0A
    MOVE.W $8(A2),D5                        ; $0139EC  3A2A 0008
    JSR L_00A8C8                            ; $0139F0  4EB9 0000 A8C8
    ADDQ.W #1,$702(A5)                      ; $0139F6  526D 0702
    TST.W D0                                ; $0139FA  4A40
    BMI.S L_013A20                          ; $0139FC  6B22
    MOVE.W $12(A0),D0                       ; $0139FE  3028 0012
    ADD.W D0,(A4)                           ; $013A02  D154
    MOVE.W $14(A0),D0                       ; $013A04  3028 0014
    ADD.W D0,$2(A4)                         ; $013A08  D16C 0002
    MOVE.W $10(A2),D0                       ; $013A0C  302A 0010
    MOVE.B D0,$46(A4)                       ; $013A10  1940 0046
    CMPI.B #$14,$41(A4)                     ; $013A14  0C2C 0014 0041
    BNE.S L_013A20                          ; $013A1A  6604
    ADDQ.W #1,$B44(A5)                      ; $013A1C  526D 0B44
L_013A20:
    MOVE.L D0,-(A7)                         ; $013A20  2F00
    MOVEQ #$00,D0                           ; $013A22  7000
    MOVE.B #$5F,D0                          ; $013A24  103C 005F
    BEQ.S L_013A30                          ; $013A28  6706
    JSR L_000590                            ; $013A2A  4EB9 0000 0590
L_013A30:
    MOVE.L (A7)+,D0                         ; $013A30  201F
    MOVEA.L (A7)+,A2                        ; $013A32  245F
    ADDQ.W #1,$26(A2)                       ; $013A34  526A 0026
    TST.B $3A(A2)                           ; $013A38  4A2A 003A
    BNE.S L_013A58                          ; $013A3C  661A
    CLR.W $8(A2)                            ; $013A3E  426A 0008
    MOVEA.L $2C(A2),A4                      ; $013A42  286A 002C
    ADDA.W $32(A2),A4                       ; $013A46  D8EA 0032
    MOVE.L A4,$28(A2)                       ; $013A4A  254C 0028
    CLR.W $26(A2)                           ; $013A4E  426A 0026
    MOVE.W #$0000,$38(A2)                   ; $013A52  357C 0000 0038
L_013A58:
    BRA.W L_01376C                          ; $013A58  6000 FD12
L_013A5C:
    CLR.W $26(A2)                           ; $013A5C  426A 0026
    MOVE.L $2C(A2),$28(A2)                  ; $013A60  256A 002C 0028
    MOVEQ #$00,D0                           ; $013A66  7000
    MOVE.B $3B(A2),D0                       ; $013A68  102A 003B
    MOVE.W D0,$3C(A2)                       ; $013A6C  3540 003C
    BRA.W L_01376C                          ; $013A70  6000 FCFA
L_013A74:
    CLR.W $26(A2)                           ; $013A74  426A 0026
    BRA.W L_01376C                          ; $013A78  6000 FCF2
L_013A7C:
    ADDQ.W #2,$26(A2)                       ; $013A7C  546A 0026
    MOVEQ #$00,D1                           ; $013A80  7200
    MOVE.B $1(A3,D0.W),D1                   ; $013A82  1233 0001
    CMP.W $A(A2),D1                         ; $013A86  B26A 000A
    BEQ.W L_013B1A                          ; $013A8A  6700 008E
    MOVE.W D1,$A(A2)                        ; $013A8E  3541 000A
    TST.B D1                                ; $013A92  4A01
    BEQ.W L_013B1A                          ; $013A94  6700 0084
    BPL.S L_013AA0                          ; $013A98  6A06
    LEA $14(A2),A0                          ; $013A9A  41EA 0014
    BRA.S L_013AB4                          ; $013A9E  6014
L_013AA0:
    MOVE.W D1,D0                            ; $013AA0  3001
    MOVEA.L $756(A5),A0                     ; $013AA2  206D 0756
    MOVE.W D0,-(A7)                         ; $013AA6  3F00
    ADD.W D0,D0                             ; $013AA8  D040
    ADD.W D0,D0                             ; $013AAA  D040
    ADD.W D0,D0                             ; $013AAC  D040
    ADD.W (A7)+,D0                          ; $013AAE  D05F
    ADD.W D0,D0                             ; $013AB0  D040
    ADDA.W D0,A0                            ; $013AB2  D0C0
L_013AB4:
    MOVE.W $0(A2),D0                        ; $013AB4  302A 0000
    LSL.W #4,D0                             ; $013AB8  E948
    MOVE.W $2(A2),D1                        ; $013ABA  322A 0002
    LSL.W #4,D1                             ; $013ABE  E949
    BSR.W L_0149B8                          ; $013AC0  6100 0EF6
    MOVE.W $0(A2),D6                        ; $013AC4  3C2A 0000
    MOVE.W $2(A2),D7                        ; $013AC8  3E2A 0002
    BSR.W L_013D36                          ; $013ACC  6100 0268
    BRA.W L_013B1A                          ; $013AD0  6000 0048
L_013AD4:
    ADDQ.W #2,$26(A2)                       ; $013AD4  546A 0026
    MOVEQ #$00,D1                           ; $013AD8  7200
    MOVE.B $1(A3,D0.W),D1                   ; $013ADA  1233 0001
    CMP.W $A(A2),D1                         ; $013ADE  B26A 000A
    BEQ.W L_013B1A                          ; $013AE2  6700 0036
    MOVE.W D1,$A(A2)                        ; $013AE6  3541 000A
    TST.B D1                                ; $013AEA  4A01
    BEQ.S L_013B1A                          ; $013AEC  672C
    BPL.S L_013AF6                          ; $013AEE  6A06
    LEA $14(A2),A0                          ; $013AF0  41EA 0014
    BRA.S L_013B0A                          ; $013AF4  6014
L_013AF6:
    MOVE.W D1,D0                            ; $013AF6  3001
    MOVEA.L $756(A5),A0                     ; $013AF8  206D 0756
    MOVE.W D0,-(A7)                         ; $013AFC  3F00
    ADD.W D0,D0                             ; $013AFE  D040
    ADD.W D0,D0                             ; $013B00  D040
    ADD.W D0,D0                             ; $013B02  D040
    ADD.W (A7)+,D0                          ; $013B04  D05F
    ADD.W D0,D0                             ; $013B06  D040
    ADDA.W D0,A0                            ; $013B08  D0C0
L_013B0A:
    BSR.W L_013D36                          ; $013B0A  6100 022A
    LEA $14(A2),A4                          ; $013B0E  49EA 0014
    CMPA.L A4,A0                            ; $013B12  B1CC
    BNE.S L_013B1A                          ; $013B14  6604
    BCLR #$07,(A1)                          ; $013B16  0891 0007
L_013B1A:
    MOVEM.L (A7)+,D4-D7                     ; $013B1A  4CDF 00F0
L_013B1E:
    ADDA.W D6,A2                            ; $013B1E  D4C6
    DBRA D7,L_01370E                        ; $013B20  51CF FBEC
L_013B24:
    RTS                                     ; $013B24  4E75
L_013B26:
    MOVE.W D0,D1                            ; $013B26  3200
    NEG.W D0                                ; $013B28  4440
    BEQ.W L_013C4A                          ; $013B2A  6700 011E
    MOVEA.L $A60(A5),A2                     ; $013B2E  246D 0A60
    MOVE.W (A2)+,D7                         ; $013B32  3E1A
    BEQ.W L_013B76                          ; $013B34  6700 0040
    MOVE.W (A2)+,D6                         ; $013B38  3C1A
    SUBQ.W #1,D7                            ; $013B3A  5347
L_013B3C:
    TST.L $0(A2)                            ; $013B3C  4AAA 0000
    BEQ.S L_013B70                          ; $013B40  672E
    CMP.W $12(A2),D1                        ; $013B42  B26A 0012
    BEQ.S L_013B54                          ; $013B46  670C
    CMP.W $38(A2),D0                        ; $013B48  B06A 0038
    BNE.S L_013B70                          ; $013B4C  6622
    CLR.W $38(A2)                           ; $013B4E  426A 0038
    BRA.S L_013B70                          ; $013B52  601C
L_013B54:
    CLR.W $8(A2)                            ; $013B54  426A 0008
    MOVEA.L $2C(A2),A4                      ; $013B58  286A 002C
    ADDA.W $34(A2),A4                       ; $013B5C  D8EA 0034
    MOVE.L A4,$28(A2)                       ; $013B60  254C 0028
    CLR.W $26(A2)                           ; $013B64  426A 0026
    CLR.W $38(A2)                           ; $013B68  426A 0038
    CLR.W $12(A2)                           ; $013B6C  426A 0012
L_013B70:
    ADDA.W D6,A2                            ; $013B70  D4C6
    DBRA D7,L_013B3C                        ; $013B72  51CF FFC8
L_013B76:
    MOVEA.L $A68(A5),A2                     ; $013B76  246D 0A68
    MOVE.W (A2)+,D7                         ; $013B7A  3E1A
    BEQ.W L_013C4A                          ; $013B7C  6700 00CC
    MOVE.W (A2)+,D6                         ; $013B80  3C1A
    SUBQ.W #1,D7                            ; $013B82  5347
L_013B84:
    TST.L $0(A2)                            ; $013B84  4AAA 0000
    BEQ.W L_013C44                          ; $013B88  6700 00BA
    MOVE.W $1A(A2),D1                       ; $013B8C  322A 001A
    BTST #$0D,D1                            ; $013B90  0801 000D
    BEQ.W L_013C44                          ; $013B94  6700 00AE
    ORI.W #$C000,D1                         ; $013B98  0041 C000
    CMP.W D0,D1                             ; $013B9C  B240
    BNE.W L_013C44                          ; $013B9E  6600 00A4
    MOVEM.L D0/D6-D7/A0-A2,-(A7)            ; $013BA2  48E7 83E0
    MOVE.W $0(A2),D6                        ; $013BA6  3C2A 0000
    MOVE.W $2(A2),D7                        ; $013BAA  3E2A 0002
    MOVEA.L $746(A5),A4                     ; $013BAE  286D 0746
    ADD.W D6,D6                             ; $013BB2  DC46
    MULU.W $750(A5),D7                      ; $013BB4  CEED 0750
    ADD.W D7,D6                             ; $013BB8  DC47
    LEA $0(A4,D6.W),A0                      ; $013BBA  41F4 6000
    MOVEQ #$00,D0                           ; $013BBE  7000
    MOVE.B $1D(A2),D0                       ; $013BC0  102A 001D
    EXT.W D0                                ; $013BC4  4880
    BPL.S L_013C0A                          ; $013BC6  6A42
    MOVEA.L A0,A1                           ; $013BC8  2248
    NEG.W D0                                ; $013BCA  4440
    MOVEA.L $756(A5),A0                     ; $013BCC  206D 0756
    MOVE.W D0,-(A7)                         ; $013BD0  3F00
    ADD.W D0,D0                             ; $013BD2  D040
    ADD.W D0,D0                             ; $013BD4  D040
    ADD.W D0,D0                             ; $013BD6  D040
    ADD.W (A7)+,D0                          ; $013BD8  D05F
    ADD.W D0,D0                             ; $013BDA  D040
    ADDA.W D0,A0                            ; $013BDC  D0C0
    BSR.W L_013C4C                          ; $013BDE  6100 006C
    MOVE.L D0,-(A7)                         ; $013BE2  2F00
    MOVEQ #$00,D0                           ; $013BE4  7000
    MOVE.B #$00,D0                          ; $013BE6  103C 0000
    BEQ.S L_013BF2                          ; $013BEA  6706
    JSR L_000590                            ; $013BEC  4EB9 0000 0590
L_013BF2:
    MOVE.L (A7)+,D0                         ; $013BF2  201F
    MOVE.W $0(A2),D6                        ; $013BF4  3C2A 0000
    MOVE.W $2(A2),D7                        ; $013BF8  3E2A 0002
    CLR.L $0(A2)                            ; $013BFC  42AA 0000
    BSR.W L_014D1A                          ; $013C00  6100 1118
    BSR.W L_013D36                          ; $013C04  6100 0130
    BRA.S L_013C3C                          ; $013C08  6032
L_013C0A:
    EXG A0,A1                               ; $013C0A  C149
    LEA $8(A2),A0                           ; $013C0C  41EA 0008
    BSR.W L_013C4C                          ; $013C10  6100 003A
    EXG A0,A1                               ; $013C14  C149
    MOVE.L D0,-(A7)                         ; $013C16  2F00
    MOVEQ #$00,D0                           ; $013C18  7000
    MOVE.B #$00,D0                          ; $013C1A  103C 0000
    BEQ.S L_013C26                          ; $013C1E  6706
    JSR L_000590                            ; $013C20  4EB9 0000 0590
L_013C26:
    MOVE.L (A7)+,D0                         ; $013C26  201F
    MOVE.W $0(A2),D6                        ; $013C28  3C2A 0000
    MOVE.W $2(A2),D7                        ; $013C2C  3E2A 0002
    CLR.L $0(A2)                            ; $013C30  42AA 0000
    BSR.W L_014D1A                          ; $013C34  6100 10E4
    BSR.W L_013CE2                          ; $013C38  6100 00A8
L_013C3C:
    MOVEM.L (A7)+,D0/D6-D7/A0-A2            ; $013C3C  4CDF 07C1
    CLR.W $1A(A2)                           ; $013C40  426A 001A
L_013C44:
    ADDA.W D6,A2                            ; $013C44  D4C6
    DBRA D7,L_013B84                        ; $013C46  51CF FF3C
L_013C4A:
    RTS                                     ; $013C4A  4E75
L_013C4C:
    MOVE.L A0,-(A7)                         ; $013C4C  2F08
    MOVE.L A1,-(A7)                         ; $013C4E  2F09
    MOVE.W $0(A2),D0                        ; $013C50  302A 0000
    MOVE.W $2(A2),D1                        ; $013C54  322A 0002
    MOVEQ #$00,D2                           ; $013C58  7400
    MOVE.B $1C(A2),D2                       ; $013C5A  142A 001C
    BEQ.W L_013CDC                          ; $013C5E  6700 007C
    BMI.S L_013CC2                          ; $013C62  6B5E
    ANDI.W #$000F,D2                        ; $013C64  0242 000F
    ADD.W D2,D2                             ; $013C68  D442
    ADD.W D2,D2                             ; $013C6A  D442
    ADD.W $013C9A(PC,D2.W),D0               ; $013C6C  D07B 202C
    ADD.W L_013C9C(PC,D2.W),D1              ; $013C70  D27B 202A
    LSL.W #4,D0                             ; $013C74  E948
    LSL.W #4,D1                             ; $013C76  E949
    BTST #$04,$1C(A2)                       ; $013C78  082A 0004 001C
    BEQ.S L_013C90                          ; $013C7E  6710
    ADDI.W #$000A,D0                        ; $013C80  0640 000A
    ADDI.W #$000D,D1                        ; $013C84  0641 000D
    JSR L_00A764                            ; $013C88  4EB9 0000 A764
    BRA.S L_013CDC                          ; $013C8E  604C
L_013C90:
    ADDQ.W #6,D0                            ; $013C90  5C40
    ADDI.W #$000A,D1                        ; $013C92  0641 000A
    JSR L_00A788                            ; $013C96  4EB9 0000 A788
L_013C9C:
    BRA.S L_013CDC                          ; $013C9C  603E
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$02,$00,$00,$00,$00,$00,$01 ; $013C9E
    dc.b $00,$01,$00,$01,$00,$02,$00,$01,$00,$00,$00,$02,$00,$01,$00,$02 ; $013CAE
    dc.b $00,$02,$00,$02                                                 ; $013CBE
L_013CC2:
    LSL.W #4,D0                             ; $013CC2  E948
    LSL.W #4,D1                             ; $013CC4  E949
    BSR.W L_0149B8                          ; $013CC6  6100 0CF0
    MOVE.L D0,-(A7)                         ; $013CCA  2F00
    MOVEQ #$00,D0                           ; $013CCC  7000
    MOVE.B #$00,D0                          ; $013CCE  103C 0000
    BEQ.S L_013CDA                          ; $013CD2  6706
    JSR L_000590                            ; $013CD4  4EB9 0000 0590
L_013CDA:
    MOVE.L (A7)+,D0                         ; $013CDA  201F
L_013CDC:
    MOVEA.L (A7)+,A1                        ; $013CDC  225F
    MOVEA.L (A7)+,A0                        ; $013CDE  205F
    RTS                                     ; $013CE0  4E75
L_013CE2:
    MOVEM.L D0/A0-A1,-(A7)                  ; $013CE2  48E7 80C0
    MOVE.W $750(A5),D1                      ; $013CE6  322D 0750
    MOVE.W (A1)+,D0                         ; $013CEA  3019
    BMI.S L_013CF0                          ; $013CEC  6B02
    MOVE.W D0,(A0)                          ; $013CEE  3080
L_013CF0:
    MOVE.W (A1)+,D0                         ; $013CF0  3019
    BMI.S L_013CF8                          ; $013CF2  6B04
    MOVE.W D0,$2(A0)                        ; $013CF4  3140 0002
L_013CF8:
    MOVE.W (A1)+,D0                         ; $013CF8  3019
    BMI.S L_013D00                          ; $013CFA  6B04
    MOVE.W D0,$4(A0)                        ; $013CFC  3140 0004
L_013D00:
    ADDA.W D1,A0                            ; $013D00  D0C1
    MOVE.W (A1)+,D0                         ; $013D02  3019
    BMI.S L_013D08                          ; $013D04  6B02
    MOVE.W D0,(A0)                          ; $013D06  3080
L_013D08:
    MOVE.W (A1)+,D0                         ; $013D08  3019
    BMI.S L_013D10                          ; $013D0A  6B04
    MOVE.W D0,$2(A0)                        ; $013D0C  3140 0002
L_013D10:
    MOVE.W (A1)+,D0                         ; $013D10  3019
    BMI.S L_013D18                          ; $013D12  6B04
    MOVE.W D0,$4(A0)                        ; $013D14  3140 0004
L_013D18:
    ADDA.W D1,A0                            ; $013D18  D0C1
    MOVE.W (A1)+,D0                         ; $013D1A  3019
    BMI.S L_013D20                          ; $013D1C  6B02
    MOVE.W D0,(A0)                          ; $013D1E  3080
L_013D20:
    MOVE.W (A1)+,D0                         ; $013D20  3019
    BMI.S L_013D28                          ; $013D22  6B04
    MOVE.W D0,$2(A0)                        ; $013D24  3140 0002
L_013D28:
    MOVE.W (A1)+,D0                         ; $013D28  3019
    BMI.S L_013D30                          ; $013D2A  6B04
    MOVE.W D0,$4(A0)                        ; $013D2C  3140 0004
L_013D30:
    MOVEM.L (A7)+,D0/A0-A1                  ; $013D30  4CDF 0301
    RTS                                     ; $013D34  4E75
L_013D36:
    MOVEM.L D0/A0-A1,-(A7)                  ; $013D36  48E7 80C0
    MOVE.W $750(A5),D1                      ; $013D3A  322D 0750
    MOVE.W (A0)+,D0                         ; $013D3E  3018
    BMI.S L_013D44                          ; $013D40  6B02
    MOVE.W D0,(A1)                          ; $013D42  3280
L_013D44:
    BSET #$07,(A1)                          ; $013D44  08D1 0007
    MOVE.W (A0)+,D0                         ; $013D48  3018
    BMI.S L_013D50                          ; $013D4A  6B04
    MOVE.W D0,$2(A1)                        ; $013D4C  3340 0002
L_013D50:
    MOVE.W (A0)+,D0                         ; $013D50  3018
    BMI.S L_013D58                          ; $013D52  6B04
    MOVE.W D0,$4(A1)                        ; $013D54  3340 0004
L_013D58:
    ADDA.W D1,A1                            ; $013D58  D2C1
    MOVE.W (A0)+,D0                         ; $013D5A  3018
    BMI.S L_013D60                          ; $013D5C  6B02
    MOVE.W D0,(A1)                          ; $013D5E  3280
L_013D60:
    MOVE.W (A0)+,D0                         ; $013D60  3018
    BMI.S L_013D68                          ; $013D62  6B04
    MOVE.W D0,$2(A1)                        ; $013D64  3340 0002
L_013D68:
    MOVE.W (A0)+,D0                         ; $013D68  3018
    BMI.S L_013D70                          ; $013D6A  6B04
    MOVE.W D0,$4(A1)                        ; $013D6C  3340 0004
L_013D70:
    ADDA.W D1,A1                            ; $013D70  D2C1
    MOVE.W (A0)+,D0                         ; $013D72  3018
    BMI.S L_013D78                          ; $013D74  6B02
    MOVE.W D0,(A1)                          ; $013D76  3280
L_013D78:
    MOVE.W (A0)+,D0                         ; $013D78  3018
    BMI.S L_013D80                          ; $013D7A  6B04
    MOVE.W D0,$2(A1)                        ; $013D7C  3340 0002
L_013D80:
    MOVE.W (A0)+,D0                         ; $013D80  3018
    BMI.S L_013D88                          ; $013D82  6B04
    MOVE.W D0,$4(A1)                        ; $013D84  3340 0004
L_013D88:
    MOVEM.L (A7)+,D0/A0-A1                  ; $013D88  4CDF 0301
    RTS                                     ; $013D8C  4E75
L_013D8E:
    MOVEA.L $A6C(A5),A2                     ; $013D8E  246D 0A6C
    CLR.W $B3C(A5)                          ; $013D92  426D 0B3C
    CLR.W $B40(A5)                          ; $013D96  426D 0B40
    CLR.W $B34(A5)                          ; $013D9A  426D 0B34
    CLR.W $C(A5)                            ; $013D9E  426D 000C
    CLR.W $10(A5)                           ; $013DA2  426D 0010
    CLR.W $8(A5)                            ; $013DA6  426D 0008
    MOVE.W (A2)+,D7                         ; $013DAA  3E1A
    BEQ.W L_013E3A                          ; $013DAC  6700 008C
    MOVE.W (A2)+,D6                         ; $013DB0  3C1A
    SUBQ.W #1,D7                            ; $013DB2  5347
L_013DB4:
    TST.L $0(A2)                            ; $013DB4  4AAA 0000
    BEQ.S L_013E16                          ; $013DB8  675C
    MOVE.W $0(A2),D0                        ; $013DBA  302A 0000
    MOVE.W $2(A2),D1                        ; $013DBE  322A 0002
    ADD.W D0,D0                             ; $013DC2  D040
    MULU.W $750(A5),D1                      ; $013DC4  C2ED 0750
    ADD.W D0,D1                             ; $013DC8  D240
    MOVEA.L $746(A5),A1                     ; $013DCA  226D 0746
    ADDA.W D1,A1                            ; $013DCE  D2C1
    MOVE.W (A1),D4                          ; $013DD0  3811
    MOVE.W D4,$4(A2)                        ; $013DD2  3544 0004
    MOVE.W #$4600,D3                        ; $013DD6  363C 4600
    AND.W D3,D4                             ; $013DDA  C843
    NOT.W D3                                ; $013DDC  4643
    AND.W D3,$6(A2)                         ; $013DDE  C76A 0006
    OR.W D4,$6(A2)                          ; $013DE2  896A 0006
    MOVE.W $6(A2),D4                        ; $013DE6  382A 0006
    MOVE.W D4,(A1)                          ; $013DEA  3284
    ANDI.W #$01FF,D4                        ; $013DEC  0244 01FF
    SUBI.W #$017C,D4                        ; $013DF0  0444 017C
    MOVE.L A2,-(A7)                         ; $013DF4  2F0A
    MOVE.L D7,-(A7)                         ; $013DF6  2F07
    MOVEQ #$00,D7                           ; $013DF8  7E00
    MOVEA.L $970(A5),A2                     ; $013DFA  246D 0970
    MOVE.B $0(A2,D4.W),D7                   ; $013DFE  1E32 4000
    BEQ.S L_013E12                          ; $013E02  670E
    MOVEA.L $978(A5),A2                     ; $013E04  246D 0978
    MOVEQ #$00,D1                           ; $013E08  7200
    MOVE.B $0(A2,D4.W),D1                   ; $013E0A  1232 4000
    ADD.W D1,$0(A5,D7.W)                    ; $013E0E  D375 7000
L_013E12:
    MOVE.L (A7)+,D7                         ; $013E12  2E1F
    MOVEA.L (A7)+,A2                        ; $013E14  245F
L_013E16:
    ADDA.W D6,A2                            ; $013E16  D4C6
    DBRA D7,L_013DB4                        ; $013E18  51CF FF9A
    MOVE.W $C(A5),$B3C(A5)                  ; $013E1C  3B6D 000C 0B3C
    MOVE.W $10(A5),$B40(A5)                 ; $013E22  3B6D 0010 0B40
    MOVE.W $8(A5),$B34(A5)                  ; $013E28  3B6D 0008 0B34
    CLR.W $C(A5)                            ; $013E2E  426D 000C
    CLR.W $10(A5)                           ; $013E32  426D 0010
    CLR.W $8(A5)                            ; $013E36  426D 0008
L_013E3A:
    CLR.W $B48(A5)                          ; $013E3A  426D 0B48
    MOVEA.L $A68(A5),A2                     ; $013E3E  246D 0A68
    MOVE.W (A2)+,D7                         ; $013E42  3E1A
    BEQ.W L_013F72                          ; $013E44  6700 012C
    MOVE.W (A2)+,D6                         ; $013E48  3C1A
    SUBQ.W #1,D7                            ; $013E4A  5347
L_013E4C:
    TST.L (A2)                              ; $013E4C  4A92
    BEQ.W L_013F6C                          ; $013E4E  6700 011C
    MOVE.W $1A(A2),D0                       ; $013E52  302A 001A
    BPL.S L_013E80                          ; $013E56  6A28
    MOVEA.L $96A(A5),A0                     ; $013E58  206D 096A
    LSR.W #8,D0                             ; $013E5C  E048
    ANDI.W #$001F,D0                        ; $013E5E  0240 001F
    ADD.W D0,D0                             ; $013E62  D040
    MOVE.W D0,-(A7)                         ; $013E64  3F00
    ADD.W D0,D0                             ; $013E66  D040
    ADD.W (A7)+,D0                          ; $013E68  D05F
    MOVE.W $0(A0,D0.W),D0                   ; $013E6A  3030 0000
    BCLR #$05,D0                            ; $013E6E  0880 0005
    SUBI.W #$0041,D0                        ; $013E72  0440 0041
    CMP.W $960(A5),D0                       ; $013E76  B06D 0960            level_counter
    BEQ.S L_013E80                          ; $013E7A  6704
    ADDQ.W #1,$B48(A5)                      ; $013E7C  526D 0B48
L_013E80:
    MOVE.W $0(A2),D0                        ; $013E80  302A 0000
    MOVE.W $2(A2),D1                        ; $013E84  322A 0002
    ADD.W D0,D0                             ; $013E88  D040
    MULU.W $750(A5),D1                      ; $013E8A  C2ED 0750
    ADD.W D0,D1                             ; $013E8E  D240
    MOVEA.L $746(A5),A1                     ; $013E90  226D 0746
    ADDA.W D1,A1                            ; $013E94  D2C1
    MOVE.L A2,-(A7)                         ; $013E96  2F0A
    MOVE.L A1,-(A7)                         ; $013E98  2F09
    LEA $8(A2),A0                           ; $013E9A  41EA 0008
    MOVEQ #$00,D0                           ; $013E9E  7000
    MOVE.B $1D(A2),D0                       ; $013EA0  102A 001D
    EXT.W D0                                ; $013EA4  4880
    BPL.S L_013EAA                          ; $013EA6  6A02
    NEG.W D0                                ; $013EA8  4440
L_013EAA:
    MOVEA.L $756(A5),A2                     ; $013EAA  246D 0756
    MOVE.W D0,-(A7)                         ; $013EAE  3F00
    ADD.W D0,D0                             ; $013EB0  D040
    ADD.W D0,D0                             ; $013EB2  D040
    ADD.W D0,D0                             ; $013EB4  D040
    ADD.W (A7)+,D0                          ; $013EB6  D05F
    ADD.W D0,D0                             ; $013EB8  D040
    ADDA.W D0,A2                            ; $013EBA  D4C0
    MOVE.L A2,-(A7)                         ; $013EBC  2F0A
    MOVE.W $750(A5),D1                      ; $013EBE  322D 0750
    MOVE.W #$7FFF,D2                        ; $013EC2  343C 7FFF
    MOVE.W #$FFFF,(A0)                      ; $013EC6  30BC FFFF
    TST.W (A2)+                             ; $013ECA  4A5A
    BMI.S L_013ED4                          ; $013ECC  6B06
    MOVE.W (A1),D0                          ; $013ECE  3011
    AND.W D2,D0                             ; $013ED0  C042
    MOVE.W D0,(A0)                          ; $013ED2  3080
L_013ED4:
    ADDQ.W #2,A0                            ; $013ED4  5448
    MOVE.W #$FFFF,(A0)                      ; $013ED6  30BC FFFF
    TST.W (A2)+                             ; $013EDA  4A5A
    BMI.S L_013EE6                          ; $013EDC  6B08
    MOVE.W $2(A1),D0                        ; $013EDE  3029 0002
    AND.W D2,D0                             ; $013EE2  C042
    MOVE.W D0,(A0)                          ; $013EE4  3080
L_013EE6:
    ADDQ.W #2,A0                            ; $013EE6  5448
    MOVE.W #$FFFF,(A0)                      ; $013EE8  30BC FFFF
    TST.W (A2)+                             ; $013EEC  4A5A
    BMI.S L_013EF8                          ; $013EEE  6B08
    MOVE.W $4(A1),D0                        ; $013EF0  3029 0004
    AND.W D2,D0                             ; $013EF4  C042
    MOVE.W D0,(A0)                          ; $013EF6  3080
L_013EF8:
    ADDQ.W #2,A0                            ; $013EF8  5448
    ADDA.W D1,A1                            ; $013EFA  D2C1
    MOVE.W #$FFFF,(A0)                      ; $013EFC  30BC FFFF
    TST.W (A2)+                             ; $013F00  4A5A
    BMI.S L_013F0A                          ; $013F02  6B06
    MOVE.W (A1),D0                          ; $013F04  3011
    AND.W D2,D0                             ; $013F06  C042
    MOVE.W D0,(A0)                          ; $013F08  3080
L_013F0A:
    ADDQ.W #2,A0                            ; $013F0A  5448
    MOVE.W #$FFFF,(A0)                      ; $013F0C  30BC FFFF
    TST.W (A2)+                             ; $013F10  4A5A
    BMI.S L_013F1C                          ; $013F12  6B08
    MOVE.W $2(A1),D0                        ; $013F14  3029 0002
    AND.W D2,D0                             ; $013F18  C042
    MOVE.W D0,(A0)                          ; $013F1A  3080
L_013F1C:
    ADDQ.W #2,A0                            ; $013F1C  5448
    MOVE.W #$FFFF,(A0)                      ; $013F1E  30BC FFFF
    TST.W (A2)+                             ; $013F22  4A5A
    BMI.S L_013F2E                          ; $013F24  6B08
    MOVE.W $4(A1),D0                        ; $013F26  3029 0004
    AND.W D2,D0                             ; $013F2A  C042
    MOVE.W D0,(A0)                          ; $013F2C  3080
L_013F2E:
    ADDQ.W #2,A0                            ; $013F2E  5448
    ADDA.W D1,A1                            ; $013F30  D2C1
    MOVE.W #$FFFF,(A0)                      ; $013F32  30BC FFFF
    TST.W (A2)+                             ; $013F36  4A5A
    BMI.S L_013F40                          ; $013F38  6B06
    MOVE.W (A1),D0                          ; $013F3A  3011
    AND.W D2,D0                             ; $013F3C  C042
    MOVE.W D0,(A0)                          ; $013F3E  3080
L_013F40:
    ADDQ.W #2,A0                            ; $013F40  5448
    MOVE.W #$FFFF,(A0)                      ; $013F42  30BC FFFF
    TST.W (A2)+                             ; $013F46  4A5A
    BMI.S L_013F52                          ; $013F48  6B08
    MOVE.W $2(A1),D0                        ; $013F4A  3029 0002
    AND.W D2,D0                             ; $013F4E  C042
    MOVE.W D0,(A0)                          ; $013F50  3080
L_013F52:
    ADDQ.W #2,A0                            ; $013F52  5448
    MOVE.W #$FFFF,(A0)                      ; $013F54  30BC FFFF
    TST.W (A2)+                             ; $013F58  4A5A
    BMI.S L_013F64                          ; $013F5A  6B08
    MOVE.W $4(A1),D0                        ; $013F5C  3029 0004
    AND.W D2,D0                             ; $013F60  C042
    MOVE.W D0,(A0)                          ; $013F62  3080
L_013F64:
    ADDQ.W #2,A0                            ; $013F64  5448
    MOVEA.L (A7)+,A0                        ; $013F66  205F
    MOVEA.L (A7)+,A1                        ; $013F68  225F
    MOVEA.L (A7)+,A2                        ; $013F6A  245F
L_013F6C:
    ADDA.W D6,A2                            ; $013F6C  D4C6
    DBRA D7,L_013E4C                        ; $013F6E  51CF FEDC
L_013F72:
    MOVEA.L $A60(A5),A2                     ; $013F72  246D 0A60
    MOVE.W (A2)+,D7                         ; $013F76  3E1A
    BEQ.W L_01402A                          ; $013F78  6700 00B0
    MOVE.W (A2)+,D6                         ; $013F7C  3C1A
    SUBQ.W #1,D7                            ; $013F7E  5347
L_013F80:
    TST.L (A2)                              ; $013F80  4A92
    BEQ.W L_014024                          ; $013F82  6700 00A0
    MOVEA.L $684(A5),A0                     ; $013F86  206D 0684
    MOVE.W $C(A2),D0                        ; $013F8A  302A 000C
    LSL.W #4,D0                             ; $013F8E  E948
    MOVEA.L A0,A1                           ; $013F90  2248
    ADDA.L $0(A0,D0.W),A1                   ; $013F92  D3F0 0000
    MOVE.L A1,$2C(A2)                       ; $013F96  2549 002C
    MOVE.L A1,$28(A2)                       ; $013F9A  2549 0028
    MOVE.L A1,D1                            ; $013F9E  2209
    MOVEA.L A0,A1                           ; $013FA0  2248
    ADDA.L $4(A0,D0.W),A1                   ; $013FA2  D3F0 0004
    SUBA.L D1,A1                            ; $013FA6  93C1
    MOVE.W A1,$30(A2)                       ; $013FA8  3549 0030
    MOVEA.L A0,A1                           ; $013FAC  2248
    ADDA.L $8(A0,D0.W),A1                   ; $013FAE  D3F0 0008
    SUBA.L D1,A1                            ; $013FB2  93C1
    MOVE.W A1,$34(A2)                       ; $013FB4  3549 0034
    MOVEA.L A0,A1                           ; $013FB8  2248
    ADDA.L $C(A0,D0.W),A1                   ; $013FBA  D3F0 000C
    SUBA.L D1,A1                            ; $013FBE  93C1
    MOVE.W A1,$32(A2)                       ; $013FC0  3549 0032
    CLR.W $26(A2)                           ; $013FC4  426A 0026
    TST.W $38(A2)                           ; $013FC8  4A6A 0038
    BNE.S L_013FD4                          ; $013FCC  6606
    MOVE.W #$0000,$38(A2)                   ; $013FCE  357C 0000 0038
L_013FD4:
    MOVE.W #$FFFF,$A(A2)                    ; $013FD4  357C FFFF 000A
    MOVE.W #$0001,$3C(A2)                   ; $013FDA  357C 0001 003C
    MOVE.W $0(A2),D0                        ; $013FE0  302A 0000
    MOVE.W $2(A2),D1                        ; $013FE4  322A 0002
    ADD.W D0,D0                             ; $013FE8  D040
    MULU.W $750(A5),D1                      ; $013FEA  C2ED 0750
    ADD.W D0,D1                             ; $013FEE  D240
    MOVEA.L $746(A5),A1                     ; $013FF0  226D 0746
    ADDA.W D1,A1                            ; $013FF4  D2C1
    MOVE.W $750(A5),D1                      ; $013FF6  322D 0750
    LEA $14(A2),A0                          ; $013FFA  41EA 0014
    MOVE.L A2,-(A7)                         ; $013FFE  2F0A
    MOVE.W (A1),(A0)+                       ; $014000  30D1
    MOVE.W $2(A1),(A0)+                     ; $014002  30E9 0002
    MOVE.W $4(A1),(A0)+                     ; $014006  30E9 0004
    ADDA.W D1,A1                            ; $01400A  D2C1
    MOVE.W (A1),(A0)+                       ; $01400C  30D1
    MOVE.W $2(A1),(A0)+                     ; $01400E  30E9 0002
    MOVE.W $4(A1),(A0)+                     ; $014012  30E9 0004
    ADDA.W D1,A1                            ; $014016  D2C1
    MOVE.W (A1),(A0)+                       ; $014018  30D1
    MOVE.W $2(A1),(A0)+                     ; $01401A  30E9 0002
    MOVE.W $4(A1),(A0)+                     ; $01401E  30E9 0004
    MOVEA.L (A7)+,A2                        ; $014022  245F
L_014024:
    ADDA.W D6,A2                            ; $014024  D4C6
    DBRA D7,L_013F80                        ; $014026  51CF FF58
L_01402A:
    MOVEA.L $A68(A5),A2                     ; $01402A  246D 0A68
    MOVE.W (A2)+,D7                         ; $01402E  3E1A
    BEQ.W L_01407C                          ; $014030  6700 004A
    MOVE.W (A2)+,D6                         ; $014034  3C1A
    SUBQ.W #1,D7                            ; $014036  5347
L_014038:
    TST.L (A2)                              ; $014038  4A92
    BEQ.W L_014076                          ; $01403A  6700 003A
    MOVE.W $0(A2),D0                        ; $01403E  302A 0000
    MOVE.W $2(A2),D1                        ; $014042  322A 0002
    ADD.W D0,D0                             ; $014046  D040
    MULU.W $750(A5),D1                      ; $014048  C2ED 0750
    ADD.W D0,D1                             ; $01404C  D240
    MOVEA.L $746(A5),A1                     ; $01404E  226D 0746
    ADDA.W D1,A1                            ; $014052  D2C1
    MOVE.B $1D(A2),D0                       ; $014054  102A 001D
    BMI.S L_014076                          ; $014058  6B1C
    EXT.W D0                                ; $01405A  4880
    MOVEA.L $756(A5),A0                     ; $01405C  206D 0756
    MOVE.W D0,-(A7)                         ; $014060  3F00
    ADD.W D0,D0                             ; $014062  D040
    ADD.W D0,D0                             ; $014064  D040
    ADD.W D0,D0                             ; $014066  D040
    ADD.W (A7)+,D0                          ; $014068  D05F
    ADD.W D0,D0                             ; $01406A  D040
    ADDA.W D0,A0                            ; $01406C  D0C0
    MOVE.W $750(A5),D1                      ; $01406E  322D 0750
    BSR.W L_013D36                          ; $014072  6100 FCC2
L_014076:
    ADDA.W D6,A2                            ; $014076  D4C6
    DBRA D7,L_014038                        ; $014078  51CF FFBE
L_01407C:
    MOVEA.L $A60(A5),A2                     ; $01407C  246D 0A60
    MOVE.W (A2)+,D7                         ; $014080  3E1A
    BEQ.W L_0140D6                          ; $014082  6700 0052
    MOVE.W (A2)+,D6                         ; $014086  3C1A
    SUBQ.W #1,D7                            ; $014088  5347
L_01408A:
    TST.L (A2)                              ; $01408A  4A92
    BEQ.W L_0140D0                          ; $01408C  6700 0042
    MOVEA.L $2C(A2),A1                      ; $014090  226A 002C
    MOVEQ #$00,D1                           ; $014094  7200
    MOVE.B $1(A1),D1                        ; $014096  1229 0001
    MOVE.W D1,$A(A2)                        ; $01409A  3541 000A
    TST.B D1                                ; $01409E  4A01
    BMI.S L_0140D0                          ; $0140A0  6B2E
    MOVE.W D1,D0                            ; $0140A2  3001
    MOVEA.L $756(A5),A0                     ; $0140A4  206D 0756
    MOVE.W D0,-(A7)                         ; $0140A8  3F00
    ADD.W D0,D0                             ; $0140AA  D040
    ADD.W D0,D0                             ; $0140AC  D040
    ADD.W D0,D0                             ; $0140AE  D040
    ADD.W (A7)+,D0                          ; $0140B0  D05F
    ADD.W D0,D0                             ; $0140B2  D040
    ADDA.W D0,A0                            ; $0140B4  D0C0
    MOVE.W $0(A2),D0                        ; $0140B6  302A 0000
    MOVE.W $2(A2),D1                        ; $0140BA  322A 0002
    ADD.W D0,D0                             ; $0140BE  D040
    MULU.W $750(A5),D1                      ; $0140C0  C2ED 0750
    ADD.W D0,D1                             ; $0140C4  D240
    MOVEA.L $746(A5),A1                     ; $0140C6  226D 0746
    ADDA.W D1,A1                            ; $0140CA  D2C1
    BSR.W L_013D36                          ; $0140CC  6100 FC68
L_0140D0:
    ADDA.W D6,A2                            ; $0140D0  D4C6
    DBRA D7,L_01408A                        ; $0140D2  51CF FFB6
L_0140D6:
    RTS                                     ; $0140D6  4E75
L_0140D8:
    MOVEM.L D0/D5-D7/A0,-(A7)               ; $0140D8  48E7 8780
    LEA $0(A0,D4.W),A0                      ; $0140DC  41F0 4000
    SUBA.L $746(A5),A0                      ; $0140E0  91ED 0746
    MOVE.L A0,D5                            ; $0140E4  2A08
    DIVU.W $750(A5),D5                      ; $0140E6  8AED 0750
    SWAP D5                                 ; $0140EA  4845
    LSR.W #1,D5                             ; $0140EC  E24D
    SWAP D5                                 ; $0140EE  4845
    ANDI.W #$0038,D0                        ; $0140F0  0240 0038
    BEQ.S L_014126                          ; $0140F4  6730
    MOVEA.L $A60(A5),A1                     ; $0140F6  226D 0A60
    CMPI.W #$0018,D0                        ; $0140FA  0C40 0018
    BEQ.S L_014114                          ; $0140FE  6714
    MOVEA.L $A68(A5),A1                     ; $014100  226D 0A68
    CMPI.W #$0028,D0                        ; $014104  0C40 0028
    BEQ.S L_014114                          ; $014108  670A
    MOVEA.L $A6C(A5),A1                     ; $01410A  226D 0A6C
    CMPI.W #$0030,D0                        ; $01410E  0C40 0030
    BNE.S L_014126                          ; $014112  6612
L_014114:
    MOVE.W (A1)+,D7                         ; $014114  3E19
    BEQ.S L_014126                          ; $014116  670E
    MOVE.W (A1)+,D6                         ; $014118  3C19
    SUBQ.W #1,D7                            ; $01411A  5347
L_01411C:
    CMP.L (A1),D5                           ; $01411C  BA91
    BEQ.S L_01412C                          ; $01411E  670C
    ADDA.W D6,A1                            ; $014120  D2C6
    DBRA D7,L_01411C                        ; $014122  51CF FFF8
L_014126:
    LEA $4E8C(A5),A1                        ; $014126  43ED 4E8C
    CLR.L (A1)                              ; $01412A  4291
L_01412C:
    MOVEM.L (A7)+,D0/D5-D7/A0               ; $01412C  4CDF 01E1
    RTS                                     ; $014130  4E75
L_014132:
    MOVE.W $92E(A5),D0                      ; $014132  302D 092E
    MOVEA.L $A68(A5),A2                     ; $014136  246D 0A68
    MOVEQ #$00,D4                           ; $01413A  7800
    MOVE.W (A2)+,D7                         ; $01413C  3E1A
    BEQ.W L_01425A                          ; $01413E  6700 011A
    MOVE.W (A2)+,D6                         ; $014142  3C1A
    SUBQ.W #1,D7                            ; $014144  5347
L_014146:
    TST.L (A2)                              ; $014146  4A92
    BEQ.W L_014254                          ; $014148  6700 010A
    MOVE.W $1A(A2),D1                       ; $01414C  322A 001A
    BPL.W L_014254                          ; $014150  6A00 0102
    BTST #$0E,D1                            ; $014154  0801 000E
    BNE.W L_014254                          ; $014158  6600 00FA
    ANDI.W #$00FF,D1                        ; $01415C  0241 00FF
    CMP.W D1,D0                             ; $014160  B041
    BLT.W L_014254                          ; $014162  6D00 00F0
    MOVE.W D0,-(A7)                         ; $014166  3F00
    MOVE.W D6,-(A7)                         ; $014168  3F06
    MOVE.W D7,-(A7)                         ; $01416A  3F07
    ORI.W #$C000,$1A(A2)                    ; $01416C  006A C000 001A
    MOVE.L A2,-(A7)                         ; $014172  2F0A
    MOVE.W $0(A2),D6                        ; $014174  3C2A 0000
    MOVE.W $2(A2),D7                        ; $014178  3E2A 0002
    MOVEA.L $746(A5),A4                     ; $01417C  286D 0746
    ADD.W D6,D6                             ; $014180  DC46
    MULU.W $750(A5),D7                      ; $014182  CEED 0750
    ADD.W D7,D6                             ; $014186  DC47
    LEA $0(A4,D6.W),A0                      ; $014188  41F4 6000
    LEA $8(A2),A1                           ; $01418C  43EA 0008
    MOVE.W $0(A2),D0                        ; $014190  302A 0000
    LSL.W #4,D0                             ; $014194  E948
    MOVE.W $2(A2),D1                        ; $014196  322A 0002
    LSL.W #4,D1                             ; $01419A  E949
    EXG A0,A1                               ; $01419C  C149
    MOVE.W D4,-(A7)                         ; $01419E  3F04
    BSR.W L_0149B8                          ; $0141A0  6100 0816
    EXG A0,A1                               ; $0141A4  C149
    BSR.W L_013CE2                          ; $0141A6  6100 FB3A
    MOVE.W (A7)+,D4                         ; $0141AA  381F
    MOVEA.L (A7)+,A2                        ; $0141AC  245F
    MOVE.W $1A(A2),D0                       ; $0141AE  302A 001A
    MOVE.W D0,D1                            ; $0141B2  3200
    ANDI.W #$C000,D1                        ; $0141B4  0241 C000
    CMPI.W #$C000,D1                        ; $0141B8  0C41 C000
    BNE.W L_014248                          ; $0141BC  6600 008A
    LSR.W #8,D0                             ; $0141C0  E048
    ANDI.W #$001F,D0                        ; $0141C2  0240 001F
    MOVEA.L $96A(A5),A0                     ; $0141C6  206D 096A
    MOVE.W D0,D2                            ; $0141CA  3400
    ADD.W D0,D0                             ; $0141CC  D040
    MOVE.W D0,-(A7)                         ; $0141CE  3F00
    ADD.W D0,D0                             ; $0141D0  D040
    ADD.W (A7)+,D0                          ; $0141D2  D05F
    MOVE.W $0(A0,D0.W),D0                   ; $0141D4  3030 0000
    BCLR #$05,D0                            ; $0141D8  0880 0005
    SUBI.W #$0041,D0                        ; $0141DC  0440 0041
    MOVE.W #$0000,D1                        ; $0141E0  323C 0000
    CMP.W $680(A5),D0                       ; $0141E4  B06D 0680
    BEQ.S L_014236                          ; $0141E8  674C
    ANDI.W #$0003,D2                        ; $0141EA  0242 0003
    BSET D2,$95C(A5)                        ; $0141EE  05ED 095C
    JSR L_008A02                            ; $0141F2  4EB9 0000 8A02
    TST.L (A0)                              ; $0141F8  4A90
    BPL.S L_014228                          ; $0141FA  6A2C
    MOVE.W $0(A2),D6                        ; $0141FC  3C2A 0000
    LSL.W #4,D6                             ; $014200  E94E
    ADDQ.W #8,D6                            ; $014202  5046
    MOVE.W $2(A2),D7                        ; $014204  3E2A 0002
    LSL.W #4,D7                             ; $014208  E94F
    MOVE.W D6,(A0)                          ; $01420A  3086
    MOVE.W D7,$2(A0)                        ; $01420C  3147 0002
    MOVE.L A2,-(A7)                         ; $014210  2F0A
    MOVEA.L $760(A5),A2                     ; $014212  246D 0760
    LEA $3200(A2),A2                        ; $014216  45EA 3200
    MOVE.W D2,D6                            ; $01421A  3C02
    MULU.W #$0080,D6                        ; $01421C  CCFC 0080
    ADDA.W D6,A2                            ; $014220  D4C6
    MOVE.L A2,$4(A0)                        ; $014222  214A 0004
    MOVEA.L (A7)+,A2                        ; $014226  245F
L_014228:
    ADDQ.W #1,D4                            ; $014228  5244
    MOVEQ #$00,D1                           ; $01422A  7200
    MOVE.B L_014232(PC,D2.W),D1             ; $01422C  123B 2004
    BRA.S L_014236                          ; $014230  6004
L_014232:
    dc.b $C9,$C9,$C9,$C9                                                 ; $014232
L_014236:
    MOVE.L D0,-(A7)                         ; $014236  2F00
    MOVE.B D1,D0                            ; $014238  1001
    BEQ.S L_014246                          ; $01423A  670A
    ANDI.W #$00FF,D0                        ; $01423C  0240 00FF
    JSR L_000590                            ; $014240  4EB9 0000 0590
L_014246:
    MOVE.L (A7)+,D0                         ; $014246  201F
L_014248:
    SWAP D4                                 ; $014248  4844
    ADDQ.W #1,D4                            ; $01424A  5244
    SWAP D4                                 ; $01424C  4844
    MOVE.W (A7)+,D7                         ; $01424E  3E1F
    MOVE.W (A7)+,D6                         ; $014250  3C1F
    MOVE.W (A7)+,D0                         ; $014252  301F
L_014254:
    ADDA.W D6,A2                            ; $014254  D4C6
    DBRA D7,L_014146                        ; $014256  51CF FEEE
L_01425A:
    RTS                                     ; $01425A  4E75
L_01425C:
    MOVEA.L $A68(A5),A2                     ; $01425C  246D 0A68
    MOVE.W (A2)+,D7                         ; $014260  3E1A
    BEQ.S L_0142D0                          ; $014262  676C
    MOVE.W (A2)+,D6                         ; $014264  3C1A
    SUBQ.W #1,D7                            ; $014266  5347
    MOVE.W $92E(A5),D1                      ; $014268  322D 092E
    MOVE.W #$0064,D0                        ; $01426C  303C 0064
L_014270:
    TST.L (A2)                              ; $014270  4A92
    BEQ.S L_0142B4                          ; $014272  6740
    MOVE.W $1A(A2),D2                       ; $014274  342A 001A
    BPL.S L_0142B4                          ; $014278  6A3A
    BTST #$0E,D2                            ; $01427A  0802 000E
    BNE.S L_0142B4                          ; $01427E  6634
    MOVE.W D2,D3                            ; $014280  3602
    MOVEA.L $96A(A5),A0                     ; $014282  206D 096A
    LSR.W #8,D2                             ; $014286  E04A
    ANDI.W #$001F,D2                        ; $014288  0242 001F
    ADD.W D2,D2                             ; $01428C  D442
    MOVE.W D2,-(A7)                         ; $01428E  3F02
    ADD.W D2,D2                             ; $014290  D442
    ADD.W (A7)+,D2                          ; $014292  D45F
    MOVE.W $0(A0,D2.W),D2                   ; $014294  3430 2000
    BCLR #$05,D2                            ; $014298  0882 0005
    SUBI.W #$0041,D2                        ; $01429C  0442 0041
    CMP.W $960(A5),D2                       ; $0142A0  B46D 0960            level_counter
    BEQ.S L_0142B4                          ; $0142A4  670E
    ANDI.W #$00FF,D3                        ; $0142A6  0243 00FF
    CMP.W D1,D3                             ; $0142AA  B641
    BLE.S L_0142B4                          ; $0142AC  6F06
    CMP.W D0,D3                             ; $0142AE  B640
    BCC.S L_0142B4                          ; $0142B0  6402
    MOVE.W D3,D0                            ; $0142B2  3003
L_0142B4:
    ADDA.W D6,A2                            ; $0142B4  D4C6
    DBRA D7,L_014270                        ; $0142B6  51CF FFB8
    BSET #$01,$926(A5)                      ; $0142BA  08ED 0001 0926
    SUB.W D1,D0                             ; $0142C0  9041
    MOVE.W D0,$930(A5)                      ; $0142C2  3B40 0930
    CMPI.W #$0032,D0                        ; $0142C6  0C40 0032
    BCS.S L_0142D0                          ; $0142CA  6504
    CLR.W $930(A5)                          ; $0142CC  426D 0930
L_0142D0:
    RTS                                     ; $0142D0  4E75
L_0142D2:
    MOVEM.L D1-D7/A4,-(A7)                  ; $0142D2  48E7 7F08
    MOVE.B $0(A0,D4.W),D0                   ; $0142D6  1030 4000
    ANDI.W #$0038,D0                        ; $0142DA  0240 0038
    BEQ.S L_014310                          ; $0142DE  6730
    CMPI.W #$0008,D0                        ; $0142E0  0C40 0008
    BEQ.S L_01430A                          ; $0142E4  6724
    CMPI.W #$0010,D0                        ; $0142E6  0C40 0010
    BEQ.S L_014338                          ; $0142EA  674C
    CMPI.W #$0018,D0                        ; $0142EC  0C40 0018
    BEQ.W L_014352                          ; $0142F0  6700 0060
    CMPI.W #$0028,D0                        ; $0142F4  0C40 0028
    BEQ.W L_014358                          ; $0142F8  6700 005E
    CMPI.W #$0030,D0                        ; $0142FC  0C40 0030
    BEQ.W L_014496                          ; $014300  6700 0194
    MOVEQ #$00,D0                           ; $014304  7000
    BRA.W L_014476                          ; $014306  6000 016E
L_01430A:
    MOVEQ #$FF,D0                           ; $01430A  70FF
    BRA.W L_01458E                          ; $01430C  6000 0280
L_014310:
    MOVE.B $0(A0,D4.W),D1                   ; $014310  1230 4000
    LSR.W #1,D1                             ; $014314  E249
    ANDI.W #$0003,D1                        ; $014316  0241 0003
    CMP.W $8(A6),D1                         ; $01431A  B26E 0008
    BEQ.S L_014332                          ; $01431E  6712
    BTST #$05,$6C(A6)                       ; $014320  082E 0005 006C
    BNE.S L_01432E                          ; $014326  6606
    MOVEQ #$FF,D0                           ; $014328  70FF
    BRA.W L_01458E                          ; $01432A  6000 0262
L_01432E:
    MOVE.W D1,$8(A6)                        ; $01432E  3D41 0008
L_014332:
    MOVEQ #$00,D0                           ; $014332  7000
    BRA.W L_014476                          ; $014334  6000 0140
L_014338:
    MOVE.B $0(A0,D4.W),D0                   ; $014338  1030 4000
    LSR.W #1,D0                             ; $01433C  E248
    ANDI.W #$0003,D0                        ; $01433E  0240 0003
    MOVE.W D0,$8(A6)                        ; $014342  3D40 0008
    BSET #$05,$6C(A6)                       ; $014346  08EE 0005 006C
    MOVEQ #$00,D0                           ; $01434C  7000
    BRA.W L_014476                          ; $01434E  6000 0126
L_014352:
    MOVEQ #$FF,D0                           ; $014352  70FF
    BRA.W L_01458E                          ; $014354  6000 0238
L_014358:
    MOVE.L A0,-(A7)                         ; $014358  2F08
    MOVE.W D4,-(A7)                         ; $01435A  3F04
    ADDA.W D4,A0                            ; $01435C  D0C4
    TST.W $958(A5)                          ; $01435E  4A6D 0958
    BPL.W L_0143F4                          ; $014362  6A00 0090
    BTST #$05,$45(A6)                       ; $014366  082E 0005 0045
    BNE.W L_01446C                          ; $01436C  6600 00FE
L_014370:
    SUBQ.W #2,A0                            ; $014370  5548
    MOVE.B (A0),D0                          ; $014372  1010
    ANDI.W #$0038,D0                        ; $014374  0240 0038
    CMPI.W #$0028,D0                        ; $014378  0C40 0028
    BEQ.S L_014370                          ; $01437C  67F2
    ADDQ.W #2,A0                            ; $01437E  5448
    MOVE.W $750(A5),D4                      ; $014380  382D 0750
L_014384:
    SUBA.W D4,A0                            ; $014384  90C4
    MOVE.B (A0),D0                          ; $014386  1010
    ANDI.W #$0038,D0                        ; $014388  0240 0038
    CMPI.W #$0028,D0                        ; $01438C  0C40 0028
    BEQ.S L_014384                          ; $014390  67F2
    ADDA.W D4,A0                            ; $014392  D0C4
    MOVEQ #$00,D4                           ; $014394  7800
    MOVE.W #$0028,D0                        ; $014396  303C 0028
    JSR L_0140D8(PC)                        ; $01439A  4EBA FD3C
    MOVE.W $1A(A1),D0                       ; $01439E  3029 001A
    MOVE.W D0,D1                            ; $0143A2  3200
    ANDI.W #$C000,D0                        ; $0143A4  0240 C000
    CMPI.W #$C000,D0                        ; $0143A8  0C40 C000
    BNE.W L_01446C                          ; $0143AC  6600 00BE
    LSR.W #8,D1                             ; $0143B0  E049
    ANDI.W #$001F,D1                        ; $0143B2  0241 001F
    MOVE.W D1,$958(A5)                      ; $0143B6  3B41 0958
    MOVEA.L $96A(A5),A0                     ; $0143BA  206D 096A
    ADD.W D1,D1                             ; $0143BE  D241
    MOVE.W D1,-(A7)                         ; $0143C0  3F01
    ADD.W D1,D1                             ; $0143C2  D241
    ADD.W (A7)+,D1                          ; $0143C4  D25F
    MOVE.W $0(A0,D1.W),D1                   ; $0143C6  3230 1000
    BCLR #$05,D1                            ; $0143CA  0881 0005
    SUBI.W #$0041,D1                        ; $0143CE  0441 0041
    CMP.W $680(A5),D1                       ; $0143D2  B26D 0680
    BEQ.S L_0143F4                          ; $0143D6  671C
    MOVEQ #$00,D1                           ; $0143D8  7200
    MOVE.W $950(A5),D1                      ; $0143DA  322D 0950
    MOVE.B $40(A6),D0                       ; $0143DE  102E 0040
    ANDI.W #$0001,D0                        ; $0143E2  0240 0001
    ADD.W D0,D0                             ; $0143E6  D040
    ADD.W D0,D0                             ; $0143E8  D040
    ADD.L D1,$44(A5,D0.W)                   ; $0143EA  D3B5 0044
    BSET #$07,$44(A5,D0.W)                  ; $0143EE  08F5 0007 0044
L_0143F4:
    BCLR #$07,$6C(A6)                       ; $0143F4  08AE 0007 006C
    BEQ.S L_01446C                          ; $0143FA  6770
    BSET #$04,$6C(A6)                       ; $0143FC  08EE 0004 006C
    ADDQ.B #1,$925(A5)                      ; $014402  522D 0925
    MOVE.W #$0000,$95A(A5)                  ; $014406  3B7C 0000 095A
    MOVE.W $958(A5),D4                      ; $01440C  382D 0958
    MOVEA.L $96A(A5),A0                     ; $014410  206D 096A
    ADD.W D4,D4                             ; $014414  D844
    MOVE.W D4,-(A7)                         ; $014416  3F04
    ADD.W D4,D4                             ; $014418  D844
    ADD.W (A7)+,D4                          ; $01441A  D85F
    MOVE.W $4(A0,D4.W),D4                   ; $01441C  3830 4004
    BEQ.S L_014448                          ; $014420  6726
    MOVE.L D0,-(A7)                         ; $014422  2F00
    MOVEQ #$00,D0                           ; $014424  7000
    MOVE.B #$67,D0                          ; $014426  103C 0067
    BEQ.S L_014432                          ; $01442A  6706
    JSR L_000590                            ; $01442C  4EB9 0000 0590
L_014432:
    MOVE.L (A7)+,D0                         ; $014432  201F
    JSR L_008DB4                            ; $014434  4EB9 0000 8DB4
    SUBI.W #$0010,$2(A4)                    ; $01443A  046C 0010 0002
    SUBI.W #$0010,$6(A4)                    ; $014440  046C 0010 0006
    BRA.S L_01446C                          ; $014446  6024
L_014448:
    JSR L_00A75E                            ; $014448  4EB9 0000 A75E
    MOVE.L D0,-(A7)                         ; $01444E  2F00
    MOVEQ #$00,D0                           ; $014450  7000
    MOVE.B #$6E,D0                          ; $014452  103C 006E
    BEQ.S L_01445E                          ; $014456  6706
    JSR L_000590                            ; $014458  4EB9 0000 0590
L_01445E:
    MOVE.L (A7)+,D0                         ; $01445E  201F
    SUBI.W #$0010,$2(A4)                    ; $014460  046C 0010 0002
    SUBI.W #$0010,$6(A4)                    ; $014466  046C 0010 0006
L_01446C:
    MOVE.W (A7)+,D4                         ; $01446C  381F
    MOVEA.L (A7)+,A0                        ; $01446E  205F
    MOVEQ #$FF,D0                           ; $014470  70FF
    BRA.W L_01458E                          ; $014472  6000 011A
L_014476:
    BTST #$06,$0(A0,D4.W)                   ; $014476  0830 0006 4000
    BEQ.W L_01448E                          ; $01447C  6700 0010
    BTST #$05,$45(A6)                       ; $014480  082E 0005 0045
    BNE.W L_01448E                          ; $014486  6600 0006
    BSR.W L_014DE6                          ; $01448A  6100 095A
L_01448E:
    TST.W D0                                ; $01448E  4A40
    BRA.W L_01458E                          ; $014490  6000 00FC
L_014494:
    RTS                                     ; $014494  4E75
L_014496:
    CMPI.W #$0004,$1E(A6)                   ; $014496  0C6E 0004 001E
    BEQ.W L_01458C                          ; $01449C  6700 00EE
    MOVE.B $0(A0,D4.W),D1                   ; $0144A0  1230 4000
    LSR.W #1,D1                             ; $0144A4  E249
    ANDI.W #$0003,D1                        ; $0144A6  0241 0003
    CMP.W $8(A6),D1                         ; $0144AA  B26E 0008
    BNE.W L_01458C                          ; $0144AE  6600 00DC
    BTST #$06,$0(A0,D4.W)                   ; $0144B2  0830 0006 4000
    BEQ.S L_0144CA                          ; $0144B8  6710
    BTST #$05,$45(A6)                       ; $0144BA  082E 0005 0045
    BEQ.S L_0144CA                          ; $0144C0  6708
    MOVEQ #$00,D0                           ; $0144C2  7000
    BRA.W L_01458E                          ; $0144C4  6000 00C8
L_0144C8:
    RTS                                     ; $0144C8  4E75
L_0144CA:
    MOVE.B $0(A0,D4.W),D0                   ; $0144CA  1030 4000
    JSR L_0140D8(PC)                        ; $0144CE  4EBA FC08
    TST.L (A1)                              ; $0144D2  4A91
    BEQ.W L_01458C                          ; $0144D4  6700 00B6
    MOVE.W $4(A1),$0(A0,D4.W)               ; $0144D8  31A9 0004 4000
    MOVE.W $0(A1),$90C(A5)                  ; $0144DE  3B69 0000 090C
    MOVE.W $2(A1),$90E(A5)                  ; $0144E4  3B69 0002 090E
    MOVE.W $6(A1),D0                        ; $0144EA  3029 0006
    ANDI.W #$01FF,D0                        ; $0144EE  0240 01FF
    SUBI.W #$017C,D0                        ; $0144F2  0440 017C
    BTST #$05,$45(A6)                       ; $0144F6  082E 0005 0045
    BEQ.S L_014516                          ; $0144FC  6718
    MOVEA.L $974(A5),A2                     ; $0144FE  246D 0974
    MOVE.B $0(A2,D0.W),D7                   ; $014502  1E32 0000
    BNE.S L_014516                          ; $014506  660E
    MOVE.W $6(A1),$0(A0,D4.W)               ; $014508  31A9 0006 4000
    MOVEQ #$00,D0                           ; $01450E  7000
    BRA.W L_01458E                          ; $014510  6000 007C
L_014514:
    RTS                                     ; $014514  4E75
L_014516:
    MOVE.B $40(A6),D7                       ; $014516  1E2E 0040
    ANDI.W #$0001,D7                        ; $01451A  0247 0001
    ADD.W D7,D7                             ; $01451E  DE47
    MOVE.W D7,-(A7)                         ; $014520  3F07
    MOVEQ #$00,D1                           ; $014522  7200
    MOVEA.L $970(A5),A2                     ; $014524  246D 0970
    MOVE.B $0(A2,D0.W),D1                   ; $014528  1232 0000
    BEQ.S L_01453C                          ; $01452C  670E
    ADD.W D1,D7                             ; $01452E  DE41
    MOVEA.L $978(A5),A2                     ; $014530  246D 0978
    MOVE.B $0(A2,D0.W),D1                   ; $014534  1232 0000
    ADD.W D1,$0(A5,D7.W)                    ; $014538  D375 7000
L_01453C:
    MOVE.W (A7)+,D7                         ; $01453C  3E1F
    ADD.W D7,D7                             ; $01453E  DE47
    MOVEQ #$00,D1                           ; $014540  7200
    MOVEA.L $984(A5),A2                     ; $014542  246D 0984
    MOVE.B $0(A2,D0.W),D1                   ; $014546  1232 0000
    ADD.L D1,$44(A5,D7.W)                   ; $01454A  D3B5 7044
    BSET #$07,$44(A5,D7.W)                  ; $01454E  08F5 0007 7044
    CLR.L (A1)                              ; $014554  4291
    ADD.W D0,D0                             ; $014556  D040
    ADD.W D0,D0                             ; $014558  D040
    MOVE.W D4,-(A7)                         ; $01455A  3F04
    MOVE.L A0,-(A7)                         ; $01455C  2F08
    PEA L_014596(PC)                        ; $01455E  487A 0036
    MOVEA.L $97C(A5),A2                     ; $014562  246D 097C
    MOVE.L $0(A2,D0.W),-(A7)                ; $014566  2F32 0000
    LSR.W #1,D0                             ; $01456A  E248
    MOVE.L A0,-(A7)                         ; $01456C  2F08
    MOVEA.L $980(A5),A0                     ; $01456E  206D 0980
    MOVE.W $0(A0,D0.W),D0                   ; $014572  3030 0000
    MOVE.L D0,-(A7)                         ; $014576  2F00
    MOVE.B D0,D0                            ; $014578  1000
    BEQ.S L_014586                          ; $01457A  670A
    ANDI.W #$00FF,D0                        ; $01457C  0240 00FF
    JSR L_0005C6                            ; $014580  4EB9 0000 05C6
L_014586:
    MOVE.L (A7)+,D0                         ; $014586  201F
    MOVEA.L (A7)+,A0                        ; $014588  205F
    RTS                                     ; $01458A  4E75
L_01458C:
    MOVEQ #$FF,D0                           ; $01458C  70FF
L_01458E:
    MOVEM.L (A7)+,D1-D7/A4                  ; $01458E  4CDF 10FE
    TST.W D0                                ; $014592  4A40
    RTS                                     ; $014594  4E75
L_014596:
    MOVEA.L (A7)+,A0                        ; $014596  205F
    MOVE.W (A7)+,D4                         ; $014598  381F
    MOVE.L A0,-(A7)                         ; $01459A  2F08
    MOVE.W D4,-(A7)                         ; $01459C  3F04
    MOVE.W D5,-(A7)                         ; $01459E  3F05
    LEA $0(A0,D4.W),A0                      ; $0145A0  41F0 4000
    SUBA.L $746(A5),A0                      ; $0145A4  91ED 0746
    MOVE.L A0,D0                            ; $0145A8  2008
    DIVU.W $750(A5),D0                      ; $0145AA  80ED 0750
    MOVE.L D0,D1                            ; $0145AE  2200
    SWAP D1                                 ; $0145B0  4841
    LSL.W #4,D0                             ; $0145B2  E948
    ADD.W D1,D1                             ; $0145B4  D241
    ADD.W D1,D1                             ; $0145B6  D241
    ADD.W D1,D1                             ; $0145B8  D241
    EXG D0,D1                               ; $0145BA  C141
    ADDQ.W #8,D0                            ; $0145BC  5040
    ADDQ.W #8,D1                            ; $0145BE  5041
    JSR L_00A7AC                            ; $0145C0  4EB9 0000 A7AC
    MOVE.W (A7)+,D5                         ; $0145C6  3A1F
    MOVE.W (A7)+,D4                         ; $0145C8  381F
    MOVEA.L (A7)+,A0                        ; $0145CA  205F
    MOVEQ #$00,D0                           ; $0145CC  7000
    BRA.W L_014476                          ; $0145CE  6000 FEA6
L_0145D2:
    MOVE.L A4,-(A7)                         ; $0145D2  2F0C
    MOVE.L A6,-(A7)                         ; $0145D4  2F0E
    LEA $40B8(A5),A6                        ; $0145D6  4DED 40B8            p1_object
    BTST #$07,$6C(A6)                       ; $0145DA  082E 0007 006C
    BEQ.S L_0145F2                          ; $0145E0  6710
    LEA $AE4(A5),A4                         ; $0145E2  49ED 0AE4            p1_money
    MOVE.B $5(A4),$48(A6)                   ; $0145E6  1D6C 0005 0048
    BSET #$00,$49(A6)                       ; $0145EC  08EE 0000 0049
L_0145F2:
    LEA $412E(A5),A6                        ; $0145F2  4DED 412E            p2_object
    BTST #$07,$6C(A6)                       ; $0145F6  082E 0007 006C
    BEQ.S L_01460E                          ; $0145FC  6710
    LEA $B0C(A5),A4                         ; $0145FE  49ED 0B0C            p2_money
    MOVE.B $5(A4),$48(A6)                   ; $014602  1D6C 0005 0048
    BSET #$00,$49(A6)                       ; $014608  08EE 0000 0049
L_01460E:
    MOVEA.L (A7)+,A6                        ; $01460E  2C5F
    MOVEA.L (A7)+,A4                        ; $014610  285F
    RTS                                     ; $014612  4E75
L_014614:
    JSR L_00C202                            ; $014614  4EB9 0000 C202
    RTS                                     ; $01461A  4E75
L_01461C:
    MOVE.L A4,-(A7)                         ; $01461C  2F0C
    MOVE.L A6,-(A7)                         ; $01461E  2F0E
    BSR.W L_012FA8                          ; $014620  6100 E986
    BTST #$07,$6C(A4)                       ; $014624  082C 0007 006C
    BEQ.S L_014656                          ; $01462A  672A
    MOVE.W (A6),(A4)                        ; $01462C  3896
    MOVE.W $2(A6),$2(A4)                    ; $01462E  396E 0002 0002
    MOVE.W $4(A6),$4(A4)                    ; $014634  396E 0004 0004
    MOVE.W $6(A6),$6(A4)                    ; $01463A  396E 0006 0006
    BCLR #$05,$6C(A4)                       ; $014640  08AC 0005 006C
    MOVE.W $8(A6),$8(A4)                    ; $014646  396E 0008 0008
    EXG A4,A6                               ; $01464C  C94E
    JSR L_008D94                            ; $01464E  4EB9 0000 8D94
    EXG A4,A6                               ; $014654  C94E
L_014656:
    MOVEA.L (A7)+,A6                        ; $014656  2C5F
    MOVEA.L (A7)+,A4                        ; $014658  285F
    RTS                                     ; $01465A  4E75
L_01465C:
    JSR L_00C27C                            ; $01465C  4EB9 0000 C27C
    RTS                                     ; $014662  4E75
L_014664:
    JSR L_00C4CA                            ; $014664  4EB9 0000 C4CA
    RTS                                     ; $01466A  4E75
L_01466C:
    JSR L_00C908(PC)                        ; $01466C  4EBA 829A
    RTS                                     ; $014670  4E75
L_014672:
    JSR L_00C434                            ; $014672  4EB9 0000 C434
    RTS                                     ; $014678  4E75
L_01467A:
    JSR L_00A706                            ; $01467A  4EB9 0000 A706
    JSR L_00C3E4                            ; $014680  4EB9 0000 C3E4
    RTS                                     ; $014686  4E75
L_014688:
    JSR L_00CAB4(PC)                        ; $014688  4EBA 842A
    MOVE.B #$0F,$923(A5)                    ; $01468C  1B7C 000F 0923
    RTS                                     ; $014692  4E75
L_014694:
    JSR L_00C462                            ; $014694  4EB9 0000 C462
    MOVE.W $90C(A5),D0                      ; $01469A  302D 090C
    LSL.W #4,D0                             ; $01469E  E948
    MOVE.W D0,(A4)                          ; $0146A0  3880
    MOVE.W $90E(A5),D0                      ; $0146A2  302D 090E
    LSL.W #4,D0                             ; $0146A6  E948
    MOVE.W D0,$2(A4)                        ; $0146A8  3940 0002
    RTS                                     ; $0146AC  4E75
L_0146AE:
    JSR L_00CA84(PC)                        ; $0146AE  4EBA 83D4
    MOVE.W $90C(A5),D0                      ; $0146B2  302D 090C
    LSL.W #4,D0                             ; $0146B6  E948
    MOVE.W D0,(A4)                          ; $0146B8  3880
    MOVE.W $90E(A5),D0                      ; $0146BA  302D 090E
    LSL.W #4,D0                             ; $0146BE  E948
    MOVE.W D0,$2(A4)                        ; $0146C0  3940 0002
    RTS                                     ; $0146C4  4E75
L_0146C6:
    JSR L_00CA0A(PC)                        ; $0146C6  4EBA 8342
    MOVE.W $90C(A5),D0                      ; $0146CA  302D 090C
    LSL.W #4,D0                             ; $0146CE  E948
    MOVE.W D0,(A4)                          ; $0146D0  3880
    MOVE.W $90E(A5),D0                      ; $0146D2  302D 090E
    LSL.W #4,D0                             ; $0146D6  E948
    MOVE.W D0,$2(A4)                        ; $0146D8  3940 0002
    RTS                                     ; $0146DC  4E75
L_0146DE:
    MOVE.B $40(A6),D3                       ; $0146DE  162E 0040
    ANDI.W #$0003,D3                        ; $0146E2  0243 0003
    ADD.W D3,D3                             ; $0146E6  D643
    CMPI.B #$1F,$4D(A5,D3.W)                ; $0146E8  0C35 001F 304D
    BEQ.S L_0146FA                          ; $0146EE  670A
    BSET #$07,$4C(A5,D3.W)                  ; $0146F0  08F5 0007 304C       p1_lives
    ADDQ.B #1,$4D(A5,D3.W)                  ; $0146F6  5235 304D
L_0146FA:
    RTS                                     ; $0146FA  4E75
L_0146FC:
    RTS                                     ; $0146FC  4E75
L_0146FE:
    RTS                                     ; $0146FE  4E75
L_014700:
    MOVE.W $90C(A5),D0                      ; $014700  302D 090C
    LSL.W #4,D0                             ; $014704  E948
    ADDQ.W #8,D0                            ; $014706  5040
    MOVE.W D0,$8F8(A5)                      ; $014708  3B40 08F8
    MOVE.W $90E(A5),D0                      ; $01470C  302D 090E
    LSL.W #4,D0                             ; $014710  E948
    ADDQ.W #8,D0                            ; $014712  5040
    MOVE.W D0,$8FA(A5)                      ; $014714  3B40 08FA
    MOVEM.L D0-D7/A0-A4/A6,-(A7)            ; $014718  48E7 FFFA
    LEA $40B8(A5),A6                        ; $01471C  4DED 40B8            p1_object
    BTST #$00,$6D(A6)                       ; $014720  082E 0000 006D
    BEQ.S L_014732                          ; $014726  670A
    BSR.W L_00FF1C                          ; $014728  6100 B7F2
    JSR L_008D94                            ; $01472C  4EB9 0000 8D94
L_014732:
    LEA $412E(A5),A6                        ; $014732  4DED 412E            p2_object
    BTST #$00,$6D(A6)                       ; $014736  082E 0000 006D
    BEQ.S L_014748                          ; $01473C  670A
    BSR.W L_00FF1C                          ; $01473E  6100 B7DC
    JSR L_008D94                            ; $014742  4EB9 0000 8D94
L_014748:
    MOVEM.L (A7)+,D0-D7/A0-A4/A6            ; $014748  4CDF 5FFF
    RTS                                     ; $01474C  4E75
L_01474E:
    MOVEQ #$05,D0                           ; $01474E  7005
    BRA.S L_014774                          ; $014750  6022
L_014752:
    MOVEQ #$0A,D0                           ; $014752  700A
    BRA.S L_014774                          ; $014754  601E
L_014756:
    MOVEQ #$0F,D0                           ; $014756  700F
    BRA.S L_014774                          ; $014758  601A
L_01475A:
    MOVEQ #$14,D0                           ; $01475A  7014
    BRA.S L_014774                          ; $01475C  6016
L_01475E:
    MOVEQ #$1E,D0                           ; $01475E  701E
    BRA.S L_014774                          ; $014760  6012
L_014762:
    MOVEQ #$28,D0                           ; $014762  7028
    BRA.S L_014774                          ; $014764  600E
L_014766:
    MOVEQ #$3C,D0                           ; $014766  703C
    BRA.S L_014774                          ; $014768  600A
L_01476A:
    MOVEQ #$64,D0                           ; $01476A  7064
    BRA.S L_014774                          ; $01476C  6006
L_01476E:
    MOVE.L #$000000C8,D0                    ; $01476E  203C 0000 00C8
L_014774:
    ADD.L D0,$942(A5)                       ; $014774  D1AD 0942
    BSET #$03,$926(A5)                      ; $014778  08ED 0003 0926
    RTS                                     ; $01477E  4E75
L_014780:
    MOVEQ #$05,D0                           ; $014780  7005
    BRA.S L_014786                          ; $014782  6002
L_014784:
    MOVEQ #$0F,D0                           ; $014784  700F
L_014786:
    ADD.B D0,$48(A6)                        ; $014786  D12E 0048
    BSET #$00,$49(A6)                       ; $01478A  08EE 0000 0049
    MOVE.L A4,-(A7)                         ; $014790  2F0C
    LEA $AE4(A5),A4                         ; $014792  49ED 0AE4            p1_money
    MOVE.B $40(A6),D0                       ; $014796  102E 0040
    ANDI.W #$0001,D0                        ; $01479A  0240 0001
    BEQ.S L_0147A4                          ; $01479E  6704
    LEA $B0C(A5),A4                         ; $0147A0  49ED 0B0C            p2_money
L_0147A4:
    MOVE.W $4(A4),D0                        ; $0147A4  302C 0004
    MOVEA.L (A7)+,A4                        ; $0147A8  285F
    CMP.B $48(A6),D0                        ; $0147AA  B02E 0048
    BCC.S L_0147B4                          ; $0147AE  6404
    MOVE.B D0,$48(A6)                       ; $0147B0  1D40 0048
L_0147B4:
    RTS                                     ; $0147B4  4E75
L_0147B6:
    BSET #$01,$49(A6)                       ; $0147B6  08EE 0001 0049
    MOVE.B $58(A6),D0                       ; $0147BC  102E 0058
    ADDQ.B #1,D0                            ; $0147C0  5200
    CMPI.B #$07,D0                          ; $0147C2  0C00 0007
    BGE.S L_0147CE                          ; $0147C6  6C06
    MOVE.B D0,$58(A6)                       ; $0147C8  1D40 0058
    RTS                                     ; $0147CC  4E75
L_0147CE:
    MOVE.B #$06,$58(A6)                     ; $0147CE  1D7C 0006 0058
    BTST #$00,$40(A6)                       ; $0147D4  082E 0000 0040
    BNE.S L_0147F6                          ; $0147DA  661A
    LEA $412E(A5),A4                        ; $0147DC  49ED 412E            p2_object
    BTST #$07,$6C(A4)                       ; $0147E0  082C 0007 006C
    BEQ.S L_0147F6                          ; $0147E6  670E
    CMPI.W #$0006,$2E(A4)                   ; $0147E8  0C6C 0006 002E
    BNE.S L_0147F6                          ; $0147EE  6606
    EXG A4,A6                               ; $0147F0  C94E
    BSR.S L_0147B6                          ; $0147F2  61C2
    EXG A4,A6                               ; $0147F4  C94E
L_0147F6:
    RTS                                     ; $0147F6  4E75
L_0147F8:
    MOVE.W $946(A5),D1                      ; $0147F8  322D 0946            p1_character
    BTST #$00,$40(A6)                       ; $0147FC  082E 0000 0040
    BEQ.S L_014808                          ; $014802  6704
    MOVE.W $948(A5),D1                      ; $014804  322D 0948            p2_character
L_014808:
    MOVE.B $014823(PC,D1.W),D1              ; $014808  123B 1019
    MOVE.W $52(A6),D0                       ; $01480C  302E 0052
    ADDQ.W #1,D0                            ; $014810  5240
    CMP.W D1,D0                             ; $014812  B041
    BCC.S L_01481C                          ; $014814  6406
    MOVE.W D0,$52(A6)                       ; $014816  3D40 0052
    RTS                                     ; $01481A  4E75
L_01481C:
    SUBQ.W #1,D1                            ; $01481C  5341
    MOVE.W D1,$52(A6)                       ; $01481E  3D41 0052
    RTS                                     ; $014822  4E75
    dc.b $10,$0D,$0E,$11,$10,$0C                                         ; $014824
L_01482A:
    dc.b $10,$30,$40,$00,$02,$40,$00,$38,$67,$2A,$0C,$40,$00,$08,$67,$20 ; $01482A
    dc.b $0C,$40,$00,$10,$67,$3E,$0C,$40,$00,$18,$67,$00,$00,$50,$0C,$40 ; $01483A
    dc.b $00,$28,$67,$00,$00,$4C,$0C,$40,$00,$30,$67,$08,$70,$00,$4E,$75 ; $01484A
    dc.b $70,$FF,$4E,$75,$2F,$01,$12,$30,$40,$00,$E2,$49,$02,$41,$00,$03 ; $01485A
    dc.b $30,$2E,$00,$08,$B0,$41,$67,$06,$22,$1F,$70,$FF,$4E,$75,$22,$1F ; $01486A
    dc.b $70,$00,$4E,$75,$10,$30,$40,$00,$E2,$48,$02,$40,$00,$03,$3D,$40 ; $01487A
    dc.b $00,$08,$08,$EE,$00,$05,$00,$6C,$70,$00,$4E,$75,$70,$FF,$4E,$75 ; $01488A
    dc.b $70,$FF,$4E,$75,$70,$00,$4E,$75                                 ; $01489A
L_0148A2:
    CLR.W $3E8(A5)                          ; $0148A2  426D 03E8
    LEA $3EA(A5),A4                         ; $0148A6  49ED 03EA
    MOVE.W $3DE(A5),D7                      ; $0148AA  3E2D 03DE
    LEA $14A8(A5),A0                        ; $0148AE  41ED 14A8
L_0148B2:
    MOVE.W D7,-(A7)                         ; $0148B2  3F07
    CMPI.L #$FFFFFFFF,(A0)                  ; $0148B4  0C90 FFFF FFFF
    BEQ.S L_0148E8                          ; $0148BA  672C
    MOVE.W (A0),D0                          ; $0148BC  3010
    MOVE.W $2(A0),D1                        ; $0148BE  3228 0002
    BSR.W L_012F68                          ; $0148C2  6100 E6A4
    BNE.S L_0148E2                          ; $0148C6  661A
    SUB.W $72E(A5),D0                       ; $0148C8  906D 072E
    SUB.W $730(A5),D1                       ; $0148CC  926D 0730
    SUBQ.W #1,$4(A0)                        ; $0148D0  5368 0004
    BMI.S L_0148E2                          ; $0148D4  6B0C
    MOVE.W $4(A0),D2                        ; $0148D6  3428 0004
    MOVEA.L $6(A0),A1                       ; $0148DA  2268 0006
    BSR.S L_01492E                          ; $0148DE  614E
    BRA.S L_0148E8                          ; $0148E0  6006
L_0148E2:
    MOVE.L #$FFFFFFFF,(A0)                  ; $0148E2  20BC FFFF FFFF
L_0148E8:
    LEA $E(A0),A0                           ; $0148E8  41E8 000E
    MOVE.W (A7)+,D7                         ; $0148EC  3E1F
    DBRA D7,L_0148B2                        ; $0148EE  51CF FFC2
    TST.W $3E8(A5)                          ; $0148F2  4A6D 03E8
    BEQ.S L_01492C                          ; $0148F6  6734
    LEA $3EA(A5),A4                         ; $0148F8  49ED 03EA
    MOVEA.L $462(A5),A2                     ; $0148FC  246D 0462
    CLR.W $3DA(A5)                          ; $014900  426D 03DA
    MOVE.W $3E8(A5),D5                      ; $014904  3A2D 03E8
    SUBQ.W #1,D5                            ; $014908  5345
L_01490A:
    MOVEQ #$00,D6                           ; $01490A  7C00
    MOVEQ #$00,D7                           ; $01490C  7E00
    MOVE.W (A4)+,D6                         ; $01490E  3C1C
    MOVE.W (A4)+,D7                         ; $014910  3E1C
    MOVEM.L D5/A2/A4,-(A7)                  ; $014912  48E7 0428
    JSR L_002772                            ; $014916  4EB9 0000 2772
    MOVEM.L (A7)+,D5/A2/A4                  ; $01491C  4CDF 1420
    LEA $80(A2),A2                          ; $014920  45EA 0080
    ADDQ.W #1,$3DA(A5)                      ; $014924  526D 03DA
    DBRA D5,L_01490A                        ; $014928  51CD FFE0
L_01492C:
    RTS                                     ; $01492C  4E75
L_01492E:
    MOVE.W D0,(A4)+                         ; $01492E  38C0
    MOVE.W D1,(A4)+                         ; $014930  38C1
    MOVE.W $3E8(A5),D0                      ; $014932  302D 03E8
    LSL.W #7,D0                             ; $014936  EF48
    MOVEA.L $462(A5),A2                     ; $014938  246D 0462
    ADDA.W D0,A2                            ; $01493C  D4C0
    ADDQ.W #1,$3E8(A5)                      ; $01493E  526D 03E8
    LSL.W #7,D2                             ; $014942  EF4A
    MOVEA.L $87A(A5),A3                     ; $014944  266D 087A
    ADDA.W D2,A3                            ; $014948  D6C2
    MOVEM.L (A1)+,D0-D7                     ; $01494A  4CD9 00FF
    AND.L (A3)+,D0                          ; $01494E  C09B
    AND.L (A3)+,D1                          ; $014950  C29B
    AND.L (A3)+,D2                          ; $014952  C49B
    AND.L (A3)+,D3                          ; $014954  C69B
    AND.L (A3)+,D4                          ; $014956  C89B
    AND.L (A3)+,D5                          ; $014958  CA9B
    AND.L (A3)+,D6                          ; $01495A  CC9B
    AND.L (A3)+,D7                          ; $01495C  CE9B
    MOVEM.L D0-D7,(A2)                      ; $01495E  48D2 00FF
    LEA $40(A2),A2                          ; $014962  45EA 0040
    MOVEM.L (A1)+,D0-D7                     ; $014966  4CD9 00FF
    AND.L (A3)+,D0                          ; $01496A  C09B
    AND.L (A3)+,D1                          ; $01496C  C29B
    AND.L (A3)+,D2                          ; $01496E  C49B
    AND.L (A3)+,D3                          ; $014970  C69B
    AND.L (A3)+,D4                          ; $014972  C89B
    AND.L (A3)+,D5                          ; $014974  CA9B
    AND.L (A3)+,D6                          ; $014976  CC9B
    AND.L (A3)+,D7                          ; $014978  CE9B
    MOVEM.L D0-D7,(A2)                      ; $01497A  48D2 00FF
    LEA -$20(A2),A2                         ; $01497E  45EA FFE0
    MOVEM.L (A1)+,D0-D7                     ; $014982  4CD9 00FF
    AND.L (A3)+,D0                          ; $014986  C09B
    AND.L (A3)+,D1                          ; $014988  C29B
    AND.L (A3)+,D2                          ; $01498A  C49B
    AND.L (A3)+,D3                          ; $01498C  C69B
    AND.L (A3)+,D4                          ; $01498E  C89B
    AND.L (A3)+,D5                          ; $014990  CA9B
    AND.L (A3)+,D6                          ; $014992  CC9B
    AND.L (A3)+,D7                          ; $014994  CE9B
    MOVEM.L D0-D7,(A2)                      ; $014996  48D2 00FF
    LEA $40(A2),A2                          ; $01499A  45EA 0040
    MOVEM.L (A1)+,D0-D7                     ; $01499E  4CD9 00FF
    AND.L (A3)+,D0                          ; $0149A2  C09B
    AND.L (A3)+,D1                          ; $0149A4  C29B
    AND.L (A3)+,D2                          ; $0149A6  C49B
    AND.L (A3)+,D3                          ; $0149A8  C69B
    AND.L (A3)+,D4                          ; $0149AA  C89B
    AND.L (A3)+,D5                          ; $0149AC  CA9B
    AND.L (A3)+,D6                          ; $0149AE  CC9B
    AND.L (A3)+,D7                          ; $0149B0  CE9B
    MOVEM.L D0-D7,(A2)                      ; $0149B2  48D2 00FF
    RTS                                     ; $0149B6  4E75
L_0149B8:
    MOVEM.L A0-A3,-(A7)                     ; $0149B8  48E7 00F0
    MOVE.W $750(A5),D4                      ; $0149BC  382D 0750
    MOVE.W (A0)+,D2                         ; $0149C0  3418
    BMI.S L_0149CA                          ; $0149C2  6B06
    MOVE.W (A1),D3                          ; $0149C4  3611
    BSR.W L_014A52                          ; $0149C6  6100 008A
L_0149CA:
    ADDI.W #$0010,D0                        ; $0149CA  0640 0010
    MOVE.W (A0)+,D2                         ; $0149CE  3418
    BMI.S L_0149DA                          ; $0149D0  6B08
    MOVE.W $2(A1),D3                        ; $0149D2  3629 0002
    BSR.W L_014A52                          ; $0149D6  6100 007A
L_0149DA:
    ADDI.W #$0010,D0                        ; $0149DA  0640 0010
    MOVE.W (A0)+,D2                         ; $0149DE  3418
    BMI.S L_0149EA                          ; $0149E0  6B08
    MOVE.W $4(A1),D3                        ; $0149E2  3629 0004
    BSR.W L_014A52                          ; $0149E6  6100 006A
L_0149EA:
    ADDA.W D4,A1                            ; $0149EA  D2C4
    ADDI.W #$0010,D1                        ; $0149EC  0641 0010
    SUBI.W #$0020,D0                        ; $0149F0  0440 0020
    MOVE.W (A0)+,D2                         ; $0149F4  3418
    BMI.S L_0149FE                          ; $0149F6  6B06
    MOVE.W (A1),D3                          ; $0149F8  3611
    BSR.W L_014A52                          ; $0149FA  6100 0056
L_0149FE:
    ADDI.W #$0010,D0                        ; $0149FE  0640 0010
    MOVE.W (A0)+,D2                         ; $014A02  3418
    BMI.S L_014A0E                          ; $014A04  6B08
    MOVE.W $2(A1),D3                        ; $014A06  3629 0002
    BSR.W L_014A52                          ; $014A0A  6100 0046
L_014A0E:
    ADDI.W #$0010,D0                        ; $014A0E  0640 0010
    MOVE.W (A0)+,D2                         ; $014A12  3418
    BMI.S L_014A1E                          ; $014A14  6B08
    MOVE.W $4(A1),D3                        ; $014A16  3629 0004
    BSR.W L_014A52                          ; $014A1A  6100 0036
L_014A1E:
    ADDA.W D4,A1                            ; $014A1E  D2C4
    ADDI.W #$0010,D1                        ; $014A20  0641 0010
    SUBI.W #$0020,D0                        ; $014A24  0440 0020
    MOVE.W (A0)+,D2                         ; $014A28  3418
    BMI.S L_014A30                          ; $014A2A  6B04
    MOVE.W (A1),D3                          ; $014A2C  3611
    BSR.S L_014A52                          ; $014A2E  6122
L_014A30:
    ADDI.W #$0010,D0                        ; $014A30  0640 0010
    MOVE.W (A0)+,D2                         ; $014A34  3418
    BMI.S L_014A3E                          ; $014A36  6B06
    MOVE.W $2(A1),D3                        ; $014A38  3629 0002
    BSR.S L_014A52                          ; $014A3C  6114
L_014A3E:
    ADDI.W #$0010,D0                        ; $014A3E  0640 0010
    MOVE.W (A0)+,D2                         ; $014A42  3418
    BMI.S L_014A4C                          ; $014A44  6B06
    MOVE.W $4(A1),D3                        ; $014A46  3629 0004
    BSR.S L_014A52                          ; $014A4A  6106
L_014A4C:
    MOVEM.L (A7)+,A0-A3                     ; $014A4C  4CDF 0F00
    RTS                                     ; $014A50  4E75
L_014A52:
    MOVE.L A0,-(A7)                         ; $014A52  2F08
    BSR.W L_012F68                          ; $014A54  6100 E512
    BNE.S L_014AC6                          ; $014A58  666C
    BSR.W L_014AE0                          ; $014A5A  6100 0084
    TST.W D7                                ; $014A5E  4A47
    BMI.S L_014AC6                          ; $014A60  6B64
    MOVEA.L $668(A5),A2                     ; $014A62  246D 0668
    ANDI.L #$000001FF,D3                    ; $014A66  0283 0000 01FF
    CMPI.W #$0005,$682(A5)                  ; $014A6C  0C6D 0005 0682
    BNE.S L_014A86                          ; $014A72  6612
    CMPI.W #$00F0,D3                        ; $014A74  0C43 00F0
    BCS.S L_014A94                          ; $014A78  651A
    LEA L_05B658,A2                         ; $014A7A  45F9 0005 B658
    SUBI.W #$00F0,D3                        ; $014A80  0443 00F0
    BRA.S L_014A94                          ; $014A84  600E
L_014A86:
    CMPI.W #$017C,D3                        ; $014A86  0C43 017C
    BCS.S L_014A94                          ; $014A8A  6508
    MOVEA.L $876(A5),A2                     ; $014A8C  246D 0876
    SUBI.W #$017C,D3                        ; $014A90  0443 017C
L_014A94:
    LSL.L #7,D3                             ; $014A94  EF8B
    ADDA.L D3,A2                            ; $014A96  D5C3
    MOVE.L A2,$6(A0)                        ; $014A98  214A 0006
    MOVE.W #$0008,$4(A0)                    ; $014A9C  317C 0008 0004
    MOVE.L D0,-(A7)                         ; $014AA2  2F00
    SWAP D0                                 ; $014AA4  4840
    MOVE.W D1,D0                            ; $014AA6  3001
    MOVE.W $3DE(A5),D7                      ; $014AA8  3E2D 03DE
    LEA $14A8(A5),A3                        ; $014AAC  47ED 14A8
L_014AB0:
    CMP.L (A3),D0                           ; $014AB0  B093
    BNE.S L_014ABA                          ; $014AB2  6606
    MOVE.L #$FFFFFFFF,(A3)                  ; $014AB4  26BC FFFF FFFF
L_014ABA:
    LEA $E(A1),A3                           ; $014ABA  47E9 000E
    DBRA D7,L_014AB0                        ; $014ABE  51CF FFF0
    MOVE.L D0,(A0)                          ; $014AC2  2080
    MOVE.L (A7)+,D0                         ; $014AC4  201F
L_014AC6:
    MOVEA.L (A7)+,A0                        ; $014AC6  205F
    RTS                                     ; $014AC8  4E75
L_014ACA:
    MOVE.W $3DE(A5),D7                      ; $014ACA  3E2D 03DE
    LEA $14A8(A5),A0                        ; $014ACE  41ED 14A8
    MOVEQ #$FF,D6                           ; $014AD2  7CFF
L_014AD4:
    MOVE.L D6,(A0)                          ; $014AD4  2086
    LEA $E(A0),A0                           ; $014AD6  41E8 000E
    DBRA D7,L_014AD4                        ; $014ADA  51CF FFF8
    RTS                                     ; $014ADE  4E75
L_014AE0:
    MOVE.W $3DE(A5),D7                      ; $014AE0  3E2D 03DE
    LEA $14A8(A5),A0                        ; $014AE4  41ED 14A8
    MOVE.L D6,-(A7)                         ; $014AE8  2F06
    MOVEQ #$FF,D6                           ; $014AEA  7CFF
L_014AEC:
    CMP.L (A0),D6                           ; $014AEC  BC90
    BEQ.S L_014AF8                          ; $014AEE  6708
    LEA $E(A0),A0                           ; $014AF0  41E8 000E
    DBRA D7,L_014AEC                        ; $014AF4  51CF FFF6
L_014AF8:
    MOVE.L (A7)+,D6                         ; $014AF8  2C1F
    RTS                                     ; $014AFA  4E75
L_014AFC:
    BSR.W L_00F574                          ; $014AFC  6100 AA76
    MOVE.W (A6),D0                          ; $014B00  3016
    MOVE.W $2(A6),D1                        ; $014B02  322E 0002
    MOVEQ #$00,D7                           ; $014B06  7E00
    BTST #$00,$3B(A6)                       ; $014B08  082E 0000 003B
    BEQ.S L_014B12                          ; $014B0E  6702
    MOVEQ #$08,D7                           ; $014B10  7E08
L_014B12:
    BTST #$01,$3B(A6)                       ; $014B12  082E 0001 003B
    BEQ.S L_014B1C                          ; $014B18  6702
    MOVEQ #$F8,D7                           ; $014B1A  7EF8
L_014B1C:
    ADD.W D7,D1                             ; $014B1C  D247
    MOVE.W $60(A6),D7                       ; $014B1E  3E2E 0060
    BSR.W L_00F532                          ; $014B22  6100 AA0E
    MOVE.L A1,$A46(A5)                      ; $014B26  2B49 0A46
    MOVE.W $8(A6),D0                        ; $014B2A  302E 0008
    BSR.W L_00E914                          ; $014B2E  6100 9DE4
    BSR.W L_00F59A                          ; $014B32  6100 AA66
    MOVE.W $8(A6),D7                        ; $014B36  3E2E 0008
    MOVE.L A6,-(A7)                         ; $014B3A  2F0E
    BSR.W L_00F574                          ; $014B3C  6100 AA36
    TST.W $8C0(A5)                          ; $014B40  4A6D 08C0
    BMI.S L_014B54                          ; $014B44  6B0E
    MOVE.L A6,-(A7)                         ; $014B46  2F0E
    MOVEA.L $8C2(A5),A6                     ; $014B48  2C6D 08C2
    BSR.W L_014C54                          ; $014B4C  6100 0106
    MOVEA.L (A7)+,A6                        ; $014B50  2C5F
    BRA.S L_014B64                          ; $014B52  6010
L_014B54:
    LEA $40B8(A5),A6                        ; $014B54  4DED 40B8            p1_object
    BSR.W L_014C3C                          ; $014B58  6100 00E2
    LEA $412E(A5),A6                        ; $014B5C  4DED 412E            p2_object
    BSR.W L_014C3C                          ; $014B60  6100 00DA
L_014B64:
    MOVEA.L (A7)+,A6                        ; $014B64  2C5F
    MOVEQ #$00,D7                           ; $014B66  7E00
    MOVEQ #$00,D6                           ; $014B68  7C00
    MOVEQ #$00,D5                           ; $014B6A  7A00
    MOVE.W $68(A6),D2                       ; $014B6C  342E 0068
    MOVE.B $27(A5,D2.W),D2                  ; $014B70  1435 2027
    MOVE.W $A3C(A5),D1                      ; $014B74  322D 0A3C
    BSR.W L_012D04                          ; $014B78  6100 E18A
    BSR.W L_012D04                          ; $014B7C  6100 E186
    BSR.W L_014BB2                          ; $014B80  6100 0030
    CMPI.W #$0100,D6                        ; $014B84  0C46 0100
    BNE.S L_014B8E                          ; $014B88  6604
    ORI.W #$0001,D7                         ; $014B8A  0047 0001
L_014B8E:
    MOVE.W $A3C(A5),D1                      ; $014B8E  322D 0A3C
    BSR.W L_014BB2                          ; $014B92  6100 001E
    MOVE.W $A3C(A5),D1                      ; $014B96  322D 0A3C
    BSR.W L_012D30                          ; $014B9A  6100 E194
    BSR.W L_012D30                          ; $014B9E  6100 E190
    BSR.W L_014BB2                          ; $014BA2  6100 000E
    CMPI.W #$0100,D6                        ; $014BA6  0C46 0100
    BNE.S L_014BB0                          ; $014BAA  6604
    ORI.W #$0001,D7                         ; $014BAC  0047 0001
L_014BB0:
    RTS                                     ; $014BB0  4E75
L_014BB2:
    MOVEQ #$00,D0                           ; $014BB2  7000
    TST.B $44(A6)                           ; $014BB4  4A2E 0044
    BNE.S L_014BBE                          ; $014BB8  6604
    MOVE.B $43(A6),D0                       ; $014BBA  102E 0043
L_014BBE:
    EORI.B #$0F,D0                          ; $014BBE  0A00 000F
    AND.W D1,D0                             ; $014BC2  C041
    BEQ.S L_014BFA                          ; $014BC4  6734
    ADD.W D1,D1                             ; $014BC6  D241
    MOVE.W L_014C12(PC,D1.W),D1             ; $014BC8  323B 1048
    LEA L_014C12(PC,D1.W),A0                ; $014BCC  41FB 1044
    MOVE.W (A0),D0                          ; $014BD0  3010
    CMPI.W #$AAAA,D0                        ; $014BD2  0C40 AAAA
    BEQ.S L_014BFA                          ; $014BD6  6722
    MOVEA.L $A46(A5),A1                     ; $014BD8  226D 0A46
L_014BDC:
    ADDA.W D0,A1                            ; $014BDC  D2C0
    TST.B (A1)                              ; $014BDE  4A11
    BMI.S L_014C04                          ; $014BE0  6B22
    BTST #$04,(A1)                          ; $014BE2  0811 0004
    BEQ.S L_014BF2                          ; $014BE6  670A
    CMP.B D2,D6                             ; $014BE8  BC02
    BCC.S L_014BF2                          ; $014BEA  6406
    BSET #$04,D7                            ; $014BEC  08C7 0004
    MOVE.B D6,D5                            ; $014BF0  1A06
L_014BF2:
    MOVE.B #$01,(A1)                        ; $014BF2  12BC 0001
    ADDQ.B #1,D6                            ; $014BF6  5206
    BRA.S L_014BDC                          ; $014BF8  60E2
L_014BFA:
    LSL.W #1,D7                             ; $014BFA  E34F
    ADDQ.W #1,D7                            ; $014BFC  5247
    LSL.L #8,D5                             ; $014BFE  E18D
    LSL.L #8,D6                             ; $014C00  E18E
    RTS                                     ; $014C02  4E75
L_014C04:
    LSL.W #1,D7                             ; $014C04  E34F
    TST.B D6                                ; $014C06  4A06
    BNE.S L_014C0C                          ; $014C08  6602
    ADDQ.W #1,D7                            ; $014C0A  5247
L_014C0C:
    LSL.L #8,D5                             ; $014C0C  E18D
    LSL.L #8,D6                             ; $014C0E  E18E
    RTS                                     ; $014C10  4E75
L_014C12:
    dc.b $00,$28,$00,$24,$00,$26,$00,$28,$00,$20,$00,$28,$00,$28,$00,$28 ; $014C12
    dc.b $00,$22,$00,$28,$00,$28,$00,$28,$00,$28,$00,$28,$00,$28,$00,$28 ; $014C22
    dc.b $FF,$FF,$00,$01,$FF,$E2,$00,$1E,$AA,$AA                         ; $014C32
L_014C3C:
    BTST #$07,$6C(A6)                       ; $014C3C  082E 0007 006C
    BEQ.S L_014C52                          ; $014C42  670E
    BTST #$05,$45(A6)                       ; $014C44  082E 0005 0045
    BNE.S L_014C52                          ; $014C4A  6606
    CMP.W $8(A6),D7                         ; $014C4C  BE6E 0008
    BEQ.S L_014C54                          ; $014C50  6702
L_014C52:
    RTS                                     ; $014C52  4E75
L_014C54:
    BSR.W L_00F4E2                          ; $014C54  6100 A88C
    MOVEQ #$10,D0                           ; $014C58  7010
    OR.B D0,$1E(A1)                         ; $014C5A  8129 001E
    OR.B D0,-$1E(A1)                        ; $014C5E  8129 FFE2
    OR.B D0,(A1)                            ; $014C62  8111
    OR.B D0,$1(A1)                          ; $014C64  8129 0001
    OR.B D0,-$1(A1)                         ; $014C68  8129 FFFF
    BTST #$04,$45(A6)                       ; $014C6C  082E 0004 0045
    BNE.S L_014C8C                          ; $014C72  6618
    MOVEQ #$01,D0                           ; $014C74  7001
    BSR.W L_014C8E                          ; $014C76  6100 0016
    MOVEQ #$FF,D0                           ; $014C7A  70FF
    BSR.W L_014C8E                          ; $014C7C  6100 0010
    MOVEQ #$1E,D0                           ; $014C80  701E
    BSR.W L_014C8E                          ; $014C82  6100 000A
    MOVEQ #$E2,D0                           ; $014C86  70E2
    BSR.W L_014C8E                          ; $014C88  6100 0004
L_014C8C:
    RTS                                     ; $014C8C  4E75
L_014C8E:
    MOVE.L A1,-(A7)                         ; $014C8E  2F09
L_014C90:
    ORI.B #$10,(A1)                         ; $014C90  0011 0010
    BMI.S L_014C9A                          ; $014C94  6B04
    ADDA.W D0,A1                            ; $014C96  D2C0
    BRA.S L_014C90                          ; $014C98  60F6
L_014C9A:
    MOVEA.L (A7)+,A1                        ; $014C9A  225F
    RTS                                     ; $014C9C  4E75
L_014C9E:
    MOVEM.L D1-D7/A6,-(A7)                  ; $014C9E  48E7 7F02
    MOVE.W $0(A2),D6                        ; $014CA2  3C2A 0000
    MOVE.W $2(A2),D7                        ; $014CA6  3E2A 0002
    LSL.W #4,D6                             ; $014CAA  E94E
    LSL.W #4,D7                             ; $014CAC  E94F
    MOVE.W D6,D3                            ; $014CAE  3606
    ADDI.W #$0030,D3                        ; $014CB0  0643 0030
    MOVE.W D7,D4                            ; $014CB4  3807
    ADDI.W #$0030,D4                        ; $014CB6  0644 0030
    LEA $40B8(A5),A6                        ; $014CBA  4DED 40B8            p1_object
    BTST #$07,$6C(A6)                       ; $014CBE  082E 0007 006C
    BEQ.S L_014CE6                          ; $014CC4  6720
    BSR.W L_012DFE                          ; $014CC6  6100 E136
    CMP.W D0,D3                             ; $014CCA  B640
    BLT.W L_014CE6                          ; $014CCC  6D00 0018
    CMP.W D0,D6                             ; $014CD0  BC40
    BGT.W L_014CE6                          ; $014CD2  6E00 0012
    CMP.W D1,D4                             ; $014CD6  B841
    BLT.W L_014CE6                          ; $014CD8  6D00 000C
    CMP.W D1,D7                             ; $014CDC  BE41
    BGT.W L_014CE6                          ; $014CDE  6E00 0006
    MOVEQ #$FF,D0                           ; $014CE2  70FF
    BRA.S L_014D14                          ; $014CE4  602E
L_014CE6:
    LEA $412E(A5),A6                        ; $014CE6  4DED 412E            p2_object
    BTST #$07,$6C(A6)                       ; $014CEA  082E 0007 006C
    BEQ.S L_014D12                          ; $014CF0  6720
    BSR.W L_012DFE                          ; $014CF2  6100 E10A
    CMP.W D0,D3                             ; $014CF6  B640
    BLT.W L_014D12                          ; $014CF8  6D00 0018
    CMP.W D0,D6                             ; $014CFC  BC40
    BGT.W L_014D12                          ; $014CFE  6E00 0012
    CMP.W D1,D4                             ; $014D02  B841
    BLT.W L_014D12                          ; $014D04  6D00 000C
    CMP.W D1,D7                             ; $014D08  BE41
    BGT.W L_014D12                          ; $014D0A  6E00 0006
    MOVEQ #$FF,D0                           ; $014D0E  70FF
    BRA.S L_014D14                          ; $014D10  6002
L_014D12:
    MOVEQ #$00,D0                           ; $014D12  7000
L_014D14:
    MOVEM.L (A7)+,D1-D7/A6                  ; $014D14  4CDF 40FE
    RTS                                     ; $014D18  4E75
L_014D1A:
    MOVEM.L D0-D7/A6,-(A7)                  ; $014D1A  48E7 FF02
    LSL.W #4,D6                             ; $014D1E  E94E
    LSL.W #4,D7                             ; $014D20  E94F
    MOVE.W D6,D3                            ; $014D22  3606
    ADDI.W #$0030,D3                        ; $014D24  0643 0030
    MOVE.W D7,D4                            ; $014D28  3807
    ADDI.W #$0030,D4                        ; $014D2A  0644 0030
    LEA $3780(A5),A6                        ; $014D2E  4DED 3780
    MOVEQ #$13,D5                           ; $014D32  7A13
L_014D34:
    BTST #$07,$6C(A6)                       ; $014D34  082E 0007 006C
    BEQ.W L_014DD8                          ; $014D3A  6700 009C
    CMPI.B #$14,$41(A6)                     ; $014D3E  0C2E 0014 0041
    BEQ.W L_014DD8                          ; $014D44  6700 0092
    BSR.W L_012DFE                          ; $014D48  6100 E0B4
    CMP.W D0,D3                             ; $014D4C  B640
    BLT.W L_014DD8                          ; $014D4E  6D00 0088
    CMP.W D0,D6                             ; $014D52  BC40
    BGT.W L_014DD8                          ; $014D54  6E00 0082
    CMP.W D1,D4                             ; $014D58  B841
    BLT.W L_014DD8                          ; $014D5A  6D00 007C
    CMP.W D1,D7                             ; $014D5E  BE41
    BGT.W L_014DD8                          ; $014D60  6E00 0076
    CMPI.B #$00,$41(A6)                     ; $014D64  0C2E 0000 0041
    BEQ.W L_014DD8                          ; $014D6A  6700 006C
    CMPI.B #$30,$41(A6)                     ; $014D6E  0C2E 0030 0041
    BNE.S L_014D7E                          ; $014D74  6608
    CLR.B $6C(A6)                           ; $014D76  422E 006C
    BRA.W L_014DD8                          ; $014D7A  6000 005C
L_014D7E:
    BSET #$03,$6C(A6)                       ; $014D7E  08EE 0003 006C
    CLR.B $48(A6)                           ; $014D84  422E 0048
    CLR.L $2A(A6)                           ; $014D88  42AE 002A
    CLR.B $43(A6)                           ; $014D8C  422E 0043
    MOVEQ #$04,D0                           ; $014D90  7004
    MOVE.L A0,-(A7)                         ; $014D92  2F08
    MOVE.L D1,-(A7)                         ; $014D94  2F01
    MOVE.W D0,-(A7)                         ; $014D96  3F00
    MOVE.L $26(A6),D1                       ; $014D98  222E 0026
    BEQ.S L_014DB4                          ; $014D9C  6716
    MOVEA.L D1,A0                           ; $014D9E  2041
    MOVE.W $1E(A6),$20(A6)                  ; $014DA0  3D6E 001E 0020
    MOVE.W D0,$1E(A6)                       ; $014DA6  3D40 001E
    ADD.W D0,D0                             ; $014DAA  D040
    ADDA.W $0(A0,D0.W),A0                   ; $014DAC  D0F0 0000
    MOVE.L A0,$22(A6)                       ; $014DB0  2D48 0022
L_014DB4:
    MOVE.W (A7)+,D0                         ; $014DB4  301F
    MOVE.L (A7)+,D1                         ; $014DB6  221F
    MOVEA.L (A7)+,A0                        ; $014DB8  205F
    MOVEQ #$00,D0                           ; $014DBA  7000
    MOVE.B $46(A6),D0                       ; $014DBC  102E 0046
    BEQ.S L_014DD8                          ; $014DC0  6716
    MOVEM.L D0-D7/A0-A4/A6,-(A7)            ; $014DC2  48E7 FFFA
    MOVE.W D0,-(A7)                         ; $014DC6  3F00
    BSR.W L_013B26                          ; $014DC8  6100 ED5C
    MOVE.W (A7)+,D0                         ; $014DCC  301F
    JSR L_008F48                            ; $014DCE  4EB9 0000 8F48
    MOVEM.L (A7)+,D0-D7/A0-A4/A6            ; $014DD4  4CDF 5FFF
L_014DD8:
    LEA $76(A6),A6                          ; $014DD8  4DEE 0076
    DBRA D5,L_014D34                        ; $014DDC  51CD FF56
    MOVEM.L (A7)+,D0-D7/A6                  ; $014DE0  4CDF 40FF
    RTS                                     ; $014DE4  4E75
L_014DE6:
    MOVEM.L D0-D7/A0-A4/A6,-(A7)            ; $014DE6  48E7 FFFA
    LEA $0(A0,D4.W),A0                      ; $014DEA  41F0 4000
    SUBA.L $746(A5),A0                      ; $014DEE  91ED 0746
    MOVE.L A0,D5                            ; $014DF2  2A08
    DIVU.W $750(A5),D5                      ; $014DF4  8AED 0750
    SWAP D5                                 ; $014DF8  4845
    LSR.W #1,D5                             ; $014DFA  E24D
    SWAP D5                                 ; $014DFC  4845
    MOVEA.L $A64(A5),A2                     ; $014DFE  246D 0A64
    MOVE.W (A2)+,D7                         ; $014E02  3E1A
    BEQ.W L_014EA8                          ; $014E04  6700 00A2
    MOVE.W (A2)+,D6                         ; $014E08  3C1A
    SUBQ.W #1,D7                            ; $014E0A  5347
L_014E0C:
    CMP.L (A2),D5                           ; $014E0C  BA92
    BHI.W L_014EA8                          ; $014E0E  6200 0098
    BNE.W L_014EA2                          ; $014E12  6600 008E
    MOVE.W $4(A2),D0                        ; $014E16  302A 0004
    MOVE.W D0,D1                            ; $014E1A  3200
    ANDI.W #$0007,D0                        ; $014E1C  0240 0007
    LSR.W #3,D1                             ; $014E20  E649
    LEA $A70(A5),A1                         ; $014E22  43ED 0A70
    BTST D0,$0(A1,D1.W)                     ; $014E26  0131 1000
    BNE.S L_014E96                          ; $014E2A  666A
    MOVE.W $6(A2),D0                        ; $014E2C  302A 0006
    BEQ.S L_014E6C                          ; $014E30  673A
    SUBQ.W #1,D0                            ; $014E32  5340
    CMPI.W #$0008,D0                        ; $014E34  0C40 0008
    BCC.S L_014E46                          ; $014E38  640C
    MOVE.L $962(A5),D1                      ; $014E3A  222D 0962
    BTST D0,D1                              ; $014E3E  0101
    BEQ.W L_014EA8                          ; $014E40  6700 0066
    BRA.S L_014E6C                          ; $014E44  6026
L_014E46:
    SUBQ.W #8,D0                            ; $014E46  5140
    CMPI.W #$0008,D0                        ; $014E48  0C40 0008
    BCC.S L_014E5C                          ; $014E4C  640E
    LEA $71A(A5),A1                         ; $014E4E  43ED 071A
    CMP.W $2(A1),D0                         ; $014E52  B069 0002
    BNE.W L_014EA8                          ; $014E56  6600 0050
    BRA.S L_014E6C                          ; $014E5A  6010
L_014E5C:
    SUBQ.W #8,D0                            ; $014E5C  5140
    ADD.W D0,D0                             ; $014E5E  D040
    ADD.W D0,D0                             ; $014E60  D040
    MOVE.L A2,-(A7)                         ; $014E62  2F0A
    MOVEA.L (A7)+,A2                        ; $014E64  245F
    TST.L D0                                ; $014E66  4A80
    BMI.W L_014EA8                          ; $014E68  6B00 003E
L_014E6C:
    MOVE.W $4(A2),D0                        ; $014E6C  302A 0004
    MOVE.W D0,D1                            ; $014E70  3200
    ANDI.W #$0007,D0                        ; $014E72  0240 0007
    LSR.W #3,D1                             ; $014E76  E649
    LEA $A70(A5),A1                         ; $014E78  43ED 0A70
    BSET D0,$0(A1,D1.W)                     ; $014E7C  01F1 1000
    MOVE.W $4(A2),D0                        ; $014E80  302A 0004
    MOVE.L A2,-(A7)                         ; $014E84  2F0A
    BSR.W L_013B26                          ; $014E86  6100 EC9E
    MOVEA.L (A7)+,A2                        ; $014E8A  245F
    MOVE.W $4(A2),D0                        ; $014E8C  302A 0004
    JSR L_008F48                            ; $014E90  4EB9 0000 8F48
L_014E96:
    MOVEM.L (A7)+,D0-D7/A0-A4/A6            ; $014E96  4CDF 5FFF
    BCLR #$06,$0(A0,D4.W)                   ; $014E9A  08B0 0006 4000
    RTS                                     ; $014EA0  4E75
L_014EA2:
    ADDA.W D6,A2                            ; $014EA2  D4C6
    DBRA D7,L_014E0C                        ; $014EA4  51CF FF66
L_014EA8:
    MOVEM.L (A7)+,D0-D7/A0-A4/A6            ; $014EA8  4CDF 5FFF
    RTS                                     ; $014EAC  4E75
    dc.b $00,$01,$4E,$B2,$70,$00,$4E,$75                                 ; $014EAE
L_014EB6:
    dc.b $02,$03,$00,$00,$00,$00,$00,$01,$01,$02,$03,$00,$00,$00,$00,$01 ; $014EB6
    dc.b $00,$01,$02,$03,$00,$00,$00,$00,$00,$00,$01,$02,$03,$00,$00,$00 ; $014EC6
    dc.b $00,$00,$00,$01,$02,$03,$00,$00,$00,$00,$00,$00,$01,$02,$03,$00 ; $014ED6
    dc.b $00,$00,$00,$00,$00,$01,$02,$03,$03,$00,$00,$00,$00,$00,$01,$02 ; $014EE6
    dc.b $00,$03,$03,$03,$0C,$0F,$0F,$0F,$0C,$0F,$0F,$0F,$0C,$0F,$0F,$0F ; $014EF6
L_014F06:
    dc.b $00,$03,$03,$04,$04,$05,$05,$06,$08,$0A,$0F,$00,$01,$01,$01,$01 ; $014F06
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$01,$01,$02 ; $014F16
    dc.b $02,$03,$03,$04,$05,$06,$06,$07,$07,$08,$09,$09,$0A,$00         ; $014F26
L_014F34:
    dc.b $00,$01,$4F,$A4,$00,$01,$4F,$F4,$00,$01,$4F,$CC,$00,$01,$50,$6C ; $014F34
    dc.b $00,$01,$51,$0C,$00,$01,$50,$1C,$00,$01,$50,$44,$00,$01,$51,$5C ; $014F44
    dc.b $00,$01,$51,$AC,$00,$01,$51,$84,$00,$01,$52,$24,$00,$01,$52,$C4 ; $014F54
    dc.b $00,$01,$51,$D4,$00,$01,$51,$FC,$00,$01,$53,$14,$00,$01,$53,$64 ; $014F64
    dc.b $00,$01,$53,$3C,$00,$01,$53,$DC,$00,$01,$54,$7C,$00,$01,$53,$8C ; $014F74
    dc.b $00,$01,$53,$B4,$00,$01,$54,$CC,$00,$01,$55,$1C,$00,$01,$54,$F4 ; $014F84
    dc.b $00,$01,$55,$94,$00,$01,$56,$34,$00,$01,$55,$44,$00,$01,$55,$6C ; $014F94
    dc.b $00,$00,$00,$00,$00,$00,$10,$00,$0C,$00,$00,$00,$00,$00,$00,$08 ; $014FA4
    dc.b $08,$08,$08,$00,$08,$00,$00,$00,$00,$00,$10,$00,$0C,$00,$00,$00 ; $014FB4
    dc.b $00,$00,$00,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$00,$01,$00 ; $014FC4
    dc.b $01,$00,$00,$00,$00,$00,$00,$05,$0A,$0F,$14,$00,$0A,$00,$00,$00 ; $014FD4
    dc.b $00,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$05,$0A,$0F,$1E,$0A ; $014FE4
    dc.b $01,$01,$01,$00,$01,$01,$00,$01,$00,$01,$01,$00,$01,$01,$01,$01 ; $014FF4
    dc.b $01,$01,$01,$01,$01,$01,$01,$00,$01,$01,$00,$01,$00,$01,$01,$00 ; $015004
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$32,$00,$64,$00,$00,$00,$4B,$00 ; $015014
    dc.b $4B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$64,$00 ; $015024
    dc.b $00,$00,$4B,$00,$4B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015034
    dc.b $02,$00,$00,$08,$08,$08,$00,$08,$00,$08,$08,$08,$04,$02,$02,$01 ; $015044
    dc.b $01,$01,$01,$10,$01,$08,$00,$08,$08,$08,$00,$08,$00,$08,$08,$08 ; $015054
    dc.b $04,$02,$02,$01,$01,$01,$01,$01,$00,$01,$45,$D2,$00,$01,$46,$88 ; $015064
    dc.b $00,$01,$47,$00,$00,$01,$46,$14,$00,$01,$46,$5C,$00,$01,$46,$64 ; $015074
    dc.b $00,$01,$46,$FE,$00,$01,$46,$7A,$00,$01,$46,$FE,$00,$01,$46,$6C ; $015084
    dc.b $00,$01,$46,$72,$00,$01,$47,$B6,$00,$01,$47,$F8,$00,$01,$47,$80 ; $015094
    dc.b $00,$01,$47,$84,$00,$01,$47,$4E,$00,$01,$47,$52,$00,$01,$47,$56 ; $0150A4
    dc.b $00,$01,$47,$5A,$00,$01,$46,$DE,$00,$01,$47,$52,$00,$01,$46,$88 ; $0150B4
    dc.b $00,$01,$47,$00,$00,$01,$46,$14,$00,$01,$46,$5C,$00,$01,$46,$64 ; $0150C4
    dc.b $00,$01,$46,$FE,$00,$01,$46,$7A,$00,$01,$46,$FE,$00,$01,$46,$6C ; $0150D4
    dc.b $00,$01,$46,$72,$00,$01,$47,$B6,$00,$01,$47,$F8,$00,$01,$47,$80 ; $0150E4
    dc.b $00,$01,$47,$84,$00,$01,$47,$4E,$00,$01,$47,$52,$00,$01,$47,$56 ; $0150F4
    dc.b $00,$01,$47,$5E,$00,$01,$47,$52,$00,$68,$00,$43,$00,$D3,$00,$70 ; $015104
    dc.b $00,$EA,$00,$69,$00,$74,$00,$44,$00,$D1,$00,$00,$00,$42,$00,$ED ; $015114
    dc.b $00,$E6,$00,$52,$00,$52,$00,$50,$00,$50,$00,$50,$00,$50,$00,$D6 ; $015124
    dc.b $00,$50,$00,$43,$00,$D3,$00,$70,$00,$EA,$00,$69,$00,$74,$00,$44 ; $015134
    dc.b $00,$D1,$00,$00,$00,$42,$00,$ED,$00,$E6,$00,$52,$00,$52,$00,$50 ; $015144
    dc.b $00,$50,$00,$50,$00,$50,$00,$50,$00,$00,$00,$00,$00,$00,$10,$00 ; $015154
    dc.b $0C,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08,$00,$00,$00 ; $015164
    dc.b $00,$00,$10,$00,$0C,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08 ; $015174
    dc.b $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$05 ; $015184
    dc.b $0A,$0F,$14,$64,$0A,$00,$00,$00,$00,$00,$01,$00,$01,$00,$00,$00 ; $015194
    dc.b $00,$00,$00,$05,$0A,$0F,$1E,$0A,$01,$01,$01,$01,$00,$01,$00,$00 ; $0151A4
    dc.b $00,$00,$01,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $0151B4
    dc.b $00,$01,$00,$00,$00,$00,$01,$00,$01,$01,$01,$01,$01,$01,$01,$01 ; $0151C4
    dc.b $32,$00,$64,$00,$32,$00,$4B,$00,$4B,$00,$00,$00,$00,$00,$00,$00 ; $0151D4
    dc.b $00,$00,$00,$00,$00,$00,$64,$00,$32,$00,$4B,$00,$4B,$00,$00,$00 ; $0151E4
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$02,$08,$00,$08,$00,$08,$00,$08 ; $0151F4
    dc.b $00,$08,$10,$08,$04,$02,$02,$01,$01,$01,$01,$01,$01,$08,$00,$08 ; $015204
    dc.b $00,$08,$00,$08,$00,$08,$10,$08,$04,$02,$02,$01,$01,$01,$01,$01 ; $015214
    dc.b $00,$01,$45,$D2,$00,$01,$46,$88,$00,$01,$47,$00,$00,$01,$46,$94 ; $015224
    dc.b $00,$01,$46,$1C,$00,$01,$46,$64,$00,$01,$46,$FE,$00,$00,$C9,$9E ; $015234
    dc.b $00,$01,$46,$FE,$00,$00,$C9,$B8,$00,$01,$46,$DE,$00,$01,$47,$B6 ; $015244
    dc.b $00,$01,$47,$F8,$00,$01,$47,$80,$00,$01,$47,$84,$00,$01,$47,$4E ; $015254
    dc.b $00,$01,$47,$52,$00,$01,$47,$56,$00,$01,$47,$5A,$00,$01,$47,$6A ; $015264
    dc.b $00,$01,$47,$52,$00,$01,$46,$88,$00,$01,$47,$00,$00,$01,$46,$94 ; $015274
    dc.b $00,$01,$46,$1C,$00,$01,$46,$64,$00,$01,$46,$FE,$00,$00,$C9,$9E ; $015284
    dc.b $00,$01,$46,$FE,$00,$00,$C9,$B8,$00,$01,$46,$DE,$00,$01,$47,$B6 ; $015294
    dc.b $00,$01,$47,$F8,$00,$01,$47,$80,$00,$01,$47,$84,$00,$01,$47,$4E ; $0152A4
    dc.b $00,$01,$47,$52,$00,$01,$47,$56,$00,$01,$47,$5E,$00,$01,$47,$52 ; $0152B4
    dc.b $00,$68,$00,$43,$00,$D3,$00,$76,$00,$75,$00,$69,$00,$74,$00,$63 ; $0152C4
    dc.b $00,$D1,$00,$CF,$00,$D6,$00,$ED,$00,$E6,$00,$52,$00,$52,$00,$50 ; $0152D4
    dc.b $00,$50,$00,$50,$00,$50,$00,$50,$00,$50,$00,$43,$00,$D3,$00,$76 ; $0152E4
    dc.b $00,$75,$00,$69,$00,$74,$00,$63,$00,$D1,$00,$CF,$00,$D6,$00,$ED ; $0152F4
    dc.b $00,$E6,$00,$52,$00,$52,$00,$50,$00,$50,$00,$50,$00,$50,$00,$50 ; $015304
    dc.b $00,$00,$00,$00,$00,$00,$10,$00,$0C,$00,$00,$00,$00,$00,$00,$08 ; $015314
    dc.b $08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$10,$00,$0C,$00,$00,$00 ; $015324
    dc.b $00,$00,$00,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$00,$01,$00 ; $015334
    dc.b $01,$00,$00,$00,$00,$00,$00,$05,$0A,$0F,$14,$64,$0A,$00,$00,$00 ; $015344
    dc.b $00,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$05,$0A,$0F,$1E,$0A ; $015354
    dc.b $01,$01,$01,$00,$00,$01,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01 ; $015364
    dc.b $01,$01,$01,$01,$01,$01,$01,$00,$00,$01,$00,$00,$00,$00,$00,$00 ; $015374
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$32,$00,$64,$00,$32,$00,$4B,$00 ; $015384
    dc.b $4B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$64,$00 ; $015394
    dc.b $32,$00,$4B,$00,$4B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0153A4
    dc.b $02,$08,$00,$08,$08,$08,$00,$08,$00,$08,$08,$08,$04,$02,$02,$01 ; $0153B4
    dc.b $01,$01,$01,$01,$01,$08,$00,$08,$00,$08,$00,$08,$00,$08,$08,$08 ; $0153C4
    dc.b $04,$02,$02,$01,$01,$01,$01,$01,$00,$01,$45,$D2,$00,$01,$46,$88 ; $0153D4
    dc.b $00,$01,$47,$00,$00,$01,$46,$C6,$00,$01,$46,$1C,$00,$01,$46,$64 ; $0153E4
    dc.b $00,$01,$46,$FE,$00,$00,$C9,$84,$00,$01,$46,$FE,$00,$00,$C9,$B8 ; $0153F4
    dc.b $00,$01,$46,$AE,$00,$01,$47,$B6,$00,$01,$47,$F8,$00,$01,$47,$80 ; $015404
    dc.b $00,$01,$47,$84,$00,$01,$47,$4E,$00,$01,$47,$52,$00,$01,$47,$56 ; $015414
    dc.b $00,$01,$47,$5A,$00,$01,$47,$6A,$00,$01,$47,$52,$00,$01,$46,$88 ; $015424
    dc.b $00,$01,$47,$00,$00,$01,$46,$C6,$00,$01,$46,$1C,$00,$01,$46,$64 ; $015434
    dc.b $00,$01,$46,$FE,$00,$00,$C9,$84,$00,$01,$46,$FE,$00,$00,$C9,$B8 ; $015444
    dc.b $00,$01,$46,$AE,$00,$01,$47,$B6,$00,$01,$47,$F8,$00,$01,$47,$80 ; $015454
    dc.b $00,$01,$47,$84,$00,$01,$47,$4E,$00,$01,$47,$52,$00,$01,$47,$56 ; $015464
    dc.b $00,$01,$47,$5E,$00,$01,$47,$52,$00,$68,$00,$43,$00,$D3,$00,$64 ; $015474
    dc.b $00,$75,$00,$69,$00,$74,$00,$6E,$00,$D1,$00,$CF,$00,$73,$00,$ED ; $015484
    dc.b $00,$E6,$00,$52,$00,$52,$00,$50,$00,$50,$00,$50,$00,$50,$00,$50 ; $015494
    dc.b $00,$50,$00,$43,$00,$D3,$00,$64,$00,$75,$00,$69,$00,$74,$00,$6E ; $0154A4
    dc.b $00,$D1,$00,$CF,$00,$73,$00,$ED,$00,$E6,$00,$52,$00,$52,$00,$50 ; $0154B4
    dc.b $00,$50,$00,$50,$00,$50,$00,$50,$00,$00,$00,$00,$00,$00,$10,$00 ; $0154C4
    dc.b $0C,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08,$00,$00,$00 ; $0154D4
    dc.b $00,$00,$10,$00,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08 ; $0154E4
    dc.b $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$05 ; $0154F4
    dc.b $0A,$0F,$14,$64,$0A,$00,$00,$00,$00,$00,$01,$00,$01,$00,$00,$00 ; $015504
    dc.b $00,$00,$00,$00,$00,$00,$1E,$C8,$01,$01,$01,$01,$00,$01,$00,$01 ; $015514
    dc.b $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $015524
    dc.b $00,$01,$00,$01,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01 ; $015534
    dc.b $32,$00,$64,$00,$32,$00,$4B,$00,$4B,$00,$00,$00,$00,$00,$00,$00 ; $015544
    dc.b $00,$00,$00,$00,$00,$00,$64,$00,$32,$00,$4B,$00,$4B,$00,$00,$00 ; $015554
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$02,$08,$00,$08,$08,$08,$00,$08 ; $015564
    dc.b $00,$08,$08,$08,$04,$02,$02,$01,$01,$01,$01,$01,$01,$08,$00,$08 ; $015574
    dc.b $08,$08,$00,$08,$00,$08,$08,$08,$08,$08,$08,$08,$10,$01,$01,$00 ; $015584
    dc.b $00,$01,$45,$D2,$00,$01,$46,$88,$00,$01,$47,$00,$00,$01,$46,$C6 ; $015594
    dc.b $00,$01,$46,$1C,$00,$01,$46,$64,$00,$01,$46,$FE,$00,$00,$C9,$84 ; $0155A4
    dc.b $00,$01,$46,$FE,$00,$00,$C9,$B8,$00,$01,$46,$AE,$00,$01,$47,$B6 ; $0155B4
    dc.b $00,$01,$47,$F8,$00,$01,$47,$80,$00,$01,$47,$84,$00,$01,$47,$4E ; $0155C4
    dc.b $00,$01,$47,$52,$00,$01,$47,$56,$00,$01,$47,$5A,$00,$01,$47,$6A ; $0155D4
    dc.b $00,$01,$47,$52,$00,$01,$46,$88,$00,$01,$47,$00,$00,$01,$46,$C6 ; $0155E4
    dc.b $00,$01,$46,$1C,$00,$01,$46,$64,$00,$01,$46,$FE,$00,$00,$C9,$84 ; $0155F4
    dc.b $00,$01,$46,$FE,$00,$01,$46,$6C,$00,$01,$46,$AE,$00,$01,$47,$B6 ; $015604
    dc.b $00,$01,$46,$14,$00,$01,$46,$5C,$00,$01,$46,$72,$00,$00,$C9,$9E ; $015614
    dc.b $00,$01,$46,$94,$00,$01,$46,$DE,$00,$01,$47,$5E,$00,$01,$47,$6E ; $015624
    dc.b $00,$68,$00,$43,$00,$D3,$00,$64,$00,$75,$00,$69,$00,$74,$00,$6E ; $015634
    dc.b $00,$D1,$00,$CF,$00,$73,$00,$ED,$00,$E6,$00,$52,$00,$52,$00,$50 ; $015644
    dc.b $00,$50,$00,$50,$00,$50,$00,$50,$00,$50,$00,$43,$00,$D3,$00,$64 ; $015654
    dc.b $00,$75,$00,$69,$00,$74,$00,$6E,$00,$D1,$00,$00,$00,$73,$00,$ED ; $015664
    dc.b $00,$70,$00,$EA,$00,$42,$00,$63,$00,$76,$00,$D6,$00,$50,$00,$50 ; $015674
L_015684:
    dc.b $00,$00,$00,$43,$00,$54,$00,$69,$00,$00,$00,$63,$00,$68,$00,$6E ; $015684
    dc.b $00,$CF,$00,$EA,$00,$76,$00,$64,$00,$70,$00,$73,$00,$43,$00,$00 ; $015694
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00 ; $0156A4
    dc.b $00,$00,$FF,$FF,$00,$00,$00,$01,$00,$00,$FF,$FF,$00,$01,$00,$00 ; $0156B4
    dc.b $00,$00,$00,$01,$00,$00,$00,$01,$00,$00,$FF,$FF,$FF,$FF,$00,$00 ; $0156C4
    dc.b $00,$00,$FF,$FF,$00,$00,$00,$01,$00,$00,$FF,$FF,$00,$01,$00,$01 ; $0156D4
    dc.b $08,$09,$0A,$0B,$0C,$0D,$0E,$0F,$01,$02,$03,$04,$05,$06,$07,$8F ; $0156E4
    dc.b $00,$08,$09,$0A,$0B,$0C,$0D,$0E,$00,$01,$02,$03,$04,$05,$06,$07 ; $0156F4
    dc.b $80,$88,$89,$8A,$8B,$8C,$8D,$8E,$80,$81,$82,$83,$84,$85,$86,$87 ; $015704
    dc.b $90,$98,$99,$9A,$9B,$9C,$9D,$9E,$90,$91,$92,$93,$94,$95,$96,$97 ; $015714
    dc.b $A0,$A8,$A9,$AA,$AB,$AC,$AD,$AE,$A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7 ; $015724
    dc.b $B0,$B8,$B9,$BA,$BB,$BC,$BD,$BE,$B0,$B1,$B2,$B3,$B4,$B5,$B6,$B7 ; $015734
    dc.b $C0,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7 ; $015744
    dc.b $D0,$D8,$D9,$DA,$DB,$DC,$DD,$DE,$D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7 ; $015754
    dc.b $E0,$E8,$E9,$EA,$EB,$EC,$ED,$EE,$E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7 ; $015764
    dc.b $00,$08,$09,$0A,$0B,$0C,$0D,$0E,$00,$01,$02,$03,$04,$05,$06,$07 ; $015774
    dc.b $10,$18,$19,$1A,$1B,$1C,$1D,$1E,$10,$11,$12,$13,$14,$15,$16,$17 ; $015784
    dc.b $20,$28,$29,$2A,$2B,$2C,$2D,$2E,$20,$21,$22,$23,$24,$25,$26,$27 ; $015794
    dc.b $30,$38,$39,$3A,$3B,$3C,$3D,$3E,$30,$31,$32,$33,$34,$35,$36,$37 ; $0157A4
    dc.b $40,$48,$49,$4A,$4B,$4C,$4D,$4E,$40,$41,$42,$43,$44,$45,$46,$47 ; $0157B4
    dc.b $50,$58,$59,$5A,$5B,$5C,$5D,$5E,$50,$51,$52,$53,$54,$55,$56,$57 ; $0157C4
    dc.b $60,$68,$69,$6A,$6B,$6C,$6D,$6E,$60,$61,$62,$63,$64,$65,$66,$67 ; $0157D4
    dc.b $70,$78,$79,$7A,$7B,$7C,$7D,$7E,$70,$71,$72,$73,$74,$75,$76,$77 ; $0157E4
L_0157F4:
    dc.b $00,$08,$01,$09,$02,$0A,$03,$0B,$04,$0C,$05,$0D,$06,$0E,$07,$0F ; $0157F4
    dc.b $00,$02,$04,$06,$08,$0A,$0C,$0E,$01,$03,$05,$07,$09,$0B,$0D,$0F ; $015804
    dc.b $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F ; $015814
    dc.b $02,$02,$02,$02,$06,$04,$06,$06,$0A,$08,$0A,$0A,$02,$02,$02,$02 ; $015824
    dc.b $01,$01,$01,$01,$05,$05,$04,$04,$09,$09,$08,$09,$01,$01,$01,$01 ; $015834
    dc.b $08,$08,$08,$08,$04,$04,$04,$04,$08,$08,$08,$08,$08,$08,$08,$08 ; $015844
    dc.b $08,$09,$0A,$08,$08,$01,$02,$08,$08,$09,$0A,$08,$08,$09,$0A,$08 ; $015854
    dc.b $0A,$08,$02,$0A,$02,$08,$02,$02,$08,$08,$08,$0A,$02,$08,$0A,$08 ; $015864
    dc.b $09,$01,$08,$01,$01,$01,$09,$09,$08,$09,$08,$09,$08,$09,$08,$09 ; $015874
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $015884
    dc.b $04,$01,$02,$04,$04,$05,$06,$04,$04,$01,$02,$04,$04,$05,$06,$04 ; $015894
    dc.b $06,$04,$02,$02,$04,$04,$06,$06,$06,$06,$02,$02,$04,$04,$06,$06 ; $0158A4
    dc.b $05,$01,$04,$01,$04,$05,$04,$05,$01,$01,$05,$01,$04,$05,$04,$05 ; $0158B4
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $0158C4
    dc.b $01,$01,$02,$01,$01,$01,$02,$01,$01,$01,$02,$02,$01,$01,$02,$02 ; $0158D4
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $0158E4
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $0158F4
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015904
    dc.b $16,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015914
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015924
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015934
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015944
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$F0 ; $015954
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$F8 ; $015964
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015974
    dc.b $00,$04,$00,$10,$00,$00,$00,$10,$FF,$FE,$00,$10,$00,$00,$00,$00 ; $015984
    dc.b $00,$00,$00,$00,$FF,$FF,$FF,$FB,$FF,$FF,$FF,$FB,$FF,$FF,$FF,$FB ; $015994
    dc.b $FF,$FF,$FF,$FB,$FF,$FF,$FF,$FB,$FF,$FF,$FF,$FB,$FF,$FF,$FF,$FB ; $0159A4
    dc.b $FF,$FF,$FF,$FB,$00,$08,$00,$00,$00,$08,$00,$08,$00,$00,$00,$08 ; $0159B4
    dc.b $FF,$F8,$00,$08,$FF,$F8,$00,$00,$FF,$F8,$FF,$F8,$00,$00,$FF,$F8 ; $0159C4
    dc.b $00,$08,$FF,$F8,$00,$00,$FF,$F4,$00,$00,$FF,$F8,$00,$06,$FF,$F8 ; $0159D4
    dc.b $00,$00,$FF,$FC,$00,$00,$00,$02,$00,$00,$00,$00,$FF,$FA,$FF,$FA ; $0159E4
    dc.b $00,$06,$FF,$F8,$00,$08,$FF,$FE,$00,$0D,$00,$00,$00,$10,$00,$05 ; $0159F4
    dc.b $00,$0C,$00,$0A,$00,$08,$00,$0D,$00,$03,$00,$08,$00,$00,$00,$04 ; $015A04
    dc.b $00,$03,$00,$00,$FF,$FF,$00,$05,$FF,$FF,$00,$05,$FF,$FF,$00,$05 ; $015A14
    dc.b $FF,$FF,$00,$05,$FF,$FF,$00,$05,$FF,$FF,$00,$05,$FF,$FF,$00,$05 ; $015A24
    dc.b $FF,$FF,$00,$05,$00,$00,$FF,$EF,$00,$09,$FF,$F3,$00,$10,$FF,$FE ; $015A34
    dc.b $00,$08,$00,$04,$00,$00,$00,$08,$FF,$F7,$00,$03,$FF,$F0,$FF,$FE ; $015A44
    dc.b $FF,$F7,$FF,$F3,$00,$08,$00,$0E,$00,$08,$00,$0E,$00,$08,$00,$0E ; $015A54
    dc.b $00,$08,$00,$0E,$00,$08,$00,$0E,$00,$08,$00,$0E,$00,$08,$00,$0E ; $015A64
    dc.b $00,$08,$00,$0E,$00,$00,$FF,$ED,$00,$07,$FF,$ED,$00,$08,$FF,$FB ; $015A74
    dc.b $00,$02,$FF,$FE,$00,$00,$FF,$FD,$FF,$FE,$FF,$FD,$FF,$F8,$FF,$FD ; $015A84
    dc.b $FF,$F8,$FF,$EE,$00,$08,$FF,$FE,$00,$0D,$00,$00,$00,$10,$00,$05 ; $015A94
    dc.b $00,$0C,$00,$0A,$00,$08,$00,$0D,$00,$03,$00,$08,$00,$00,$00,$04 ; $015AA4
    dc.b $00,$03,$00,$00,$00,$00,$FF,$FE,$00,$00,$00,$00,$FF,$FE,$00,$02 ; $015AB4
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$02 ; $015AC4
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015AD4
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015AE4
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FE,$FF,$FC,$00,$00 ; $015AF4
    dc.b $FF,$FB,$FF,$F9,$00,$00,$FF,$F8,$00,$05,$FF,$F9,$00,$05,$00,$00 ; $015B04
    dc.b $00,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015B14
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FE,$00,$00,$00,$00 ; $015B24
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015B34
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015B44
    dc.b $00,$00,$00,$00,$00,$04,$FF,$F2,$00,$04,$00,$00,$00,$08,$00,$02 ; $015B54
    dc.b $00,$00,$00,$00,$00,$04,$00,$0C,$00,$00,$00,$06,$FF,$F8,$00,$04 ; $015B64
    dc.b $00,$02,$00,$00,$00,$04,$00,$00,$00,$04,$00,$00,$00,$00,$00,$04 ; $015B74
    dc.b $00,$00,$00,$00,$00,$02,$00,$00,$00,$04,$00,$00,$00,$00,$00,$02 ; $015B84
    dc.b $00,$00,$00,$00,$00,$00,$FF,$E0,$00,$10,$FF,$E8,$00,$18,$FF,$F8 ; $015B94
    dc.b $00,$10,$00,$08,$00,$00,$00,$10,$FF,$F0,$00,$08,$FF,$E8,$FF,$F8 ; $015BA4
    dc.b $FF,$F0,$FF,$E8,$00,$00,$FF,$F8,$00,$0C,$FF,$F8,$00,$10,$00,$04 ; $015BB4
    dc.b $00,$0A,$00,$0C,$00,$00,$00,$10,$FF,$F4,$00,$0C,$FF,$F0,$00,$04 ; $015BC4
    dc.b $FF,$F2,$FF,$F8,$00,$00,$FF,$F8,$00,$08,$00,$00,$00,$08,$00,$00 ; $015BD4
    dc.b $00,$04,$00,$00,$00,$00,$00,$04,$FF,$FC,$00,$00,$FF,$F6,$00,$00 ; $015BE4
    dc.b $FF,$F8,$00,$00,$00,$02,$00,$02,$FF,$F8,$00,$08,$00,$10,$00,$00 ; $015BF4
    dc.b $FF,$F4,$00,$08,$FF,$FC,$FF,$F8,$00,$00,$FF,$FC,$00,$00,$FF,$FC ; $015C04
    dc.b $00,$02,$00,$04                                                 ; $015C14
L_015C18:
    dc.b $00,$00,$00,$00,$00,$10,$00,$18,$00,$08,$00,$08,$00,$10,$00,$10 ; $015C18
    dc.b $00,$20,$00,$20,$00,$10,$00,$20,$00,$10,$00,$30,$00,$08,$00,$04 ; $015C28
    dc.b $00,$20,$00,$30                                                 ; $015C38
L_015C3C:
    dc.b $00,$00,$00,$00,$00,$08,$00,$0C,$00,$04,$00,$04,$00,$08,$00,$08 ; $015C3C
    dc.b $00,$10,$00,$10,$00,$08,$00,$10,$00,$08,$00,$18,$00,$04,$00,$02 ; $015C4C
    dc.b $00,$10,$00,$18                                                 ; $015C5C
L_015C60:
    dc.b $00,$00,$00,$00,$00,$08,$00,$14,$00,$04,$00,$04,$00,$08,$00,$0C ; $015C60
    dc.b $00,$10,$00,$18,$00,$08,$00,$18,$00,$08,$00,$28,$00,$02,$00,$02 ; $015C70
    dc.b $00,$10,$00,$28                                                 ; $015C80
L_015C84:
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$0D,$00,$10,$00,$18 ; $015C84
    dc.b $00,$00,$00,$08,$00,$00,$00,$08,$00,$00,$00,$10,$00,$00,$00,$10 ; $015C94
    dc.b $00,$04,$00,$1C,$00,$04,$00,$1C,$00,$03,$00,$0D,$00,$10,$00,$20 ; $015CA4
    dc.b $00,$00,$00,$10,$00,$00,$00,$30,$00,$00,$00,$00,$00,$04,$00,$04 ; $015CB4
    dc.b $00,$04,$00,$1C,$00,$10,$00,$2A                                 ; $015CC4
L_015CCC:
    dc.b $00,$06,$00,$1A,$00,$00,$00,$28                                 ; $015CCC
L_015CD4:
    dc.b $00,$00,$00,$10,$00,$00,$00,$10                                 ; $015CD4
L_015CDC:
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$0D,$00,$10,$00,$18 ; $015CDC
    dc.b $00,$00,$00,$08,$00,$00,$00,$08,$00,$04,$00,$0C,$00,$00,$00,$08 ; $015CEC
    dc.b $00,$04,$00,$1C,$00,$04,$00,$1C,$00,$03,$00,$0D,$00,$10,$00,$20 ; $015CFC
    dc.b $00,$03,$00,$0D,$00,$08,$00,$30,$00,$00,$00,$00,$00,$04,$00,$04 ; $015D0C
    dc.b $00,$06,$00,$1A,$00,$20,$00,$30,$00,$00,$00,$C0,$00,$20,$00,$80 ; $015D1C
    dc.b $02,$00,$01,$00,$01,$80,$00,$20,$03,$00                         ; $015D2C
L_015D36:
    dc.b $00,$00,$FF,$E2,$00,$01,$FF,$E3,$00,$02,$00,$01,$00,$03,$00,$1F ; $015D36
    dc.b $00,$04,$00,$1E,$00,$05,$00,$1D,$00,$06,$FF,$FF,$00,$07,$FF,$E1 ; $015D46
    dc.b $FF,$FF,$00,$00                                                 ; $015D56
L_015D5A:
    dc.b $00,$01,$5D,$7E,$00,$01,$5D,$9A,$00,$01,$5D,$B6,$00,$01,$5D,$D2 ; $015D5A
    dc.b $00,$01,$5D,$7E,$00,$01,$5D,$9A,$00,$01,$5D,$B6,$00,$01,$5D,$D2 ; $015D6A
    dc.b $00,$01,$5D,$EE,$00,$01,$FF,$E3,$00,$07,$FF,$E1,$00,$02,$00,$01 ; $015D7A
    dc.b $00,$06,$FF,$FF,$00,$03,$00,$1F,$00,$05,$00,$1D,$FF,$FF,$00,$00 ; $015D8A
    dc.b $00,$02,$00,$01,$00,$00,$FF,$E2,$00,$03,$00,$1F,$00,$07,$FF,$E1 ; $015D9A
    dc.b $00,$04,$00,$1E,$00,$06,$FF,$FF,$FF,$FF,$00,$00,$00,$03,$00,$1F ; $015DAA
    dc.b $00,$01,$FF,$E3,$00,$04,$00,$1E,$00,$00,$FF,$E2,$00,$05,$00,$1D ; $015DBA
    dc.b $00,$07,$FF,$E1,$FF,$FF,$00,$00,$00,$04,$00,$1E,$00,$02,$00,$01 ; $015DCA
    dc.b $00,$05,$00,$1D,$00,$01,$FF,$E3,$00,$06,$FF,$FF,$00,$00,$FF,$E2 ; $015DDA
    dc.b $FF,$FF,$00,$00,$00,$07,$FF,$E1,$00,$00,$FF,$E2,$00,$06,$FF,$FF ; $015DEA
    dc.b $00,$01,$FF,$E3,$00,$05,$00,$1D,$00,$02,$00,$01,$00,$04,$00,$1E ; $015DFA
    dc.b $00,$03,$00,$1F,$FF,$FF,$00,$00                                 ; $015E0A
L_015E12:
    dc.b $00,$01,$5E,$32,$00,$01,$5E,$56,$00,$01,$5E,$7A,$00,$01,$5E,$9E ; $015E12
    dc.b $00,$01,$5E,$C2,$00,$01,$5E,$E6,$00,$01,$5F,$0A,$00,$01,$5F,$2E ; $015E22
    dc.b $00,$00,$FF,$E2,$00,$01,$FF,$E3,$00,$07,$FF,$E1,$00,$02,$00,$01 ; $015E32
    dc.b $00,$06,$FF,$FF,$00,$03,$00,$1F,$00,$05,$00,$1D,$00,$04,$00,$1E ; $015E42
    dc.b $FF,$FF,$00,$00,$00,$01,$FF,$E3,$00,$02,$00,$01,$00,$00,$FF,$E2 ; $015E52
    dc.b $00,$03,$00,$1F,$00,$07,$FF,$E1,$00,$04,$00,$1E,$00,$06,$FF,$FF ; $015E62
    dc.b $00,$05,$00,$1D,$FF,$FF,$00,$00,$00,$02,$00,$01,$00,$03,$00,$1F ; $015E72
    dc.b $00,$01,$FF,$E3,$00,$04,$00,$1E,$00,$00,$FF,$E2,$00,$05,$00,$1D ; $015E82
    dc.b $00,$07,$FF,$E1,$00,$06,$FF,$FF,$FF,$FF,$00,$00,$00,$03,$00,$1F ; $015E92
    dc.b $00,$04,$00,$1E,$00,$02,$00,$01,$00,$05,$00,$1D,$00,$01,$FF,$E3 ; $015EA2
    dc.b $00,$06,$FF,$FF,$00,$00,$FF,$E2,$00,$07,$FF,$E1,$FF,$FF,$00,$00 ; $015EB2
    dc.b $00,$04,$00,$1E,$00,$05,$00,$1D,$00,$03,$00,$1F,$00,$06,$FF,$FF ; $015EC2
    dc.b $00,$02,$00,$01,$00,$07,$FF,$E1,$00,$01,$FF,$E3,$00,$00,$FF,$E2 ; $015ED2
    dc.b $FF,$FF,$00,$00,$00,$05,$00,$1D,$00,$06,$FF,$FF,$00,$04,$00,$1E ; $015EE2
    dc.b $00,$07,$FF,$E1,$00,$03,$00,$1F,$00,$00,$FF,$E2,$00,$02,$00,$01 ; $015EF2
    dc.b $00,$01,$FF,$E3,$FF,$FF,$00,$00,$00,$06,$FF,$FF,$00,$07,$FF,$E1 ; $015F02
    dc.b $00,$05,$00,$1D,$00,$00,$FF,$E2,$00,$04,$00,$1E,$00,$01,$FF,$E3 ; $015F12
    dc.b $00,$03,$00,$1F,$00,$02,$00,$01,$FF,$FF,$00,$00,$00,$07,$FF,$E1 ; $015F22
    dc.b $00,$00,$FF,$E2,$00,$06,$FF,$FF,$00,$01,$FF,$E3,$00,$05,$00,$1D ; $015F32
    dc.b $00,$02,$00,$01,$00,$04,$00,$1E,$00,$03,$00,$1F,$FF,$FF,$00,$00 ; $015F42
L_015F52:
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015F52
    dc.b $C0,$C0,$C2,$C2,$C4,$C4,$C6,$C6,$00,$00,$00,$00,$00,$00,$00,$00 ; $015F62
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015F72
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $015F82
L_015F92:
    dc.b $00,$80,$80,$80,$80,$00,$80,$80,$80,$80,$00,$80,$80,$80,$80,$00 ; $015F92
    dc.b $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80 ; $015FA2
    dc.b $00,$80,$80,$80,$80,$00,$80,$80,$80,$80,$00,$80,$80,$80,$80,$00 ; $015FB2
    dc.b $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80 ; $015FC2
    dc.b $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80 ; $015FD2
    dc.b $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80 ; $015FE2
    dc.b $00,$80,$80,$80,$80,$00,$80,$80,$80,$80,$00,$80,$80,$80,$80,$00 ; $015FF2
    dc.b $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80 ; $016002
L_016012:
    dc.b $00,$01,$7B,$20,$00,$01,$14,$8A,$00,$0C,$28,$0A,$07,$8A,$00,$03 ; $016012
    dc.b $00,$10,$00,$00,$00,$00,$00,$01,$59,$D8,$00,$00,$00,$00,$00,$00 ; $016022
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $016032
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $016042
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $016052
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$79,$38,$00,$01 ; $016062
    dc.b $17,$1C,$00,$0A,$D0,$BA,$07,$90,$00,$03,$00,$0D,$00,$00,$00,$00 ; $016072
    dc.b $00,$01,$59,$F8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $016082
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $016092
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0160A2
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0160B2
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0160C2
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0160D2
    dc.b $00,$00,$00,$01,$70,$58,$00,$01,$17,$C2,$00,$00,$00,$00,$07,$6C ; $0160E2
    dc.b $00,$14,$00,$00,$00,$00,$00,$00,$00,$01,$59,$58,$00,$00,$00,$00 ; $0160F2
    dc.b $00,$01,$70,$58,$00,$01,$17,$C2,$00,$00,$00,$00,$07,$6C,$00,$14 ; $016102
    dc.b $00,$03,$00,$00,$00,$00,$00,$01,$59,$58,$00,$00,$00,$00,$00,$01 ; $016112
    dc.b $82,$22,$00,$01,$17,$74,$00,$0B,$FB,$FA,$07,$96,$00,$13,$00,$00 ; $016122
    dc.b $00,$00,$00,$00,$00,$01,$5A,$38,$00,$00,$00,$00,$00,$01,$82,$48 ; $016132
    dc.b $00,$01,$17,$28,$00,$0B,$7A,$E2,$07,$9C,$00,$03,$00,$00,$00,$00 ; $016142
    dc.b $00,$00,$00,$01,$5A,$58,$00,$00,$00,$00,$00,$01,$7B,$20,$00,$01 ; $016152
    dc.b $14,$8A,$00,$0A,$90,$B2,$07,$A2,$00,$03,$00,$10,$00,$00,$00,$00 ; $016162
    dc.b $00,$01,$5A,$78,$00,$00,$00,$00,$00,$01,$79,$38,$00,$01,$17,$1C ; $016172
    dc.b $00,$0D,$22,$42,$07,$A8,$00,$03,$00,$0D,$00,$00,$00,$00,$00,$01 ; $016182
    dc.b $5A,$98,$00,$00,$00,$00,$00,$01,$7A,$AC,$00,$01,$18,$76,$00,$0B ; $016192
    dc.b $75,$5A,$07,$B4,$00,$13,$00,$00,$00,$00,$00,$00,$00,$01,$59,$98 ; $0161A2
    dc.b $00,$00,$00,$00,$00,$01,$7A,$40,$00,$01,$17,$64,$00,$0A,$DD,$42 ; $0161B2
    dc.b $07,$AE,$00,$13,$00,$00,$00,$00,$00,$00,$00,$01,$59,$18,$00,$00 ; $0161C2
    dc.b $00,$00,$00,$01,$7B,$20,$00,$01,$14,$8A,$00,$0D,$6E,$D2,$07,$BA ; $0161D2
    dc.b $00,$03,$00,$0B,$00,$00,$00,$00,$00,$01,$59,$D8,$00,$00,$00,$00 ; $0161E2
    dc.b $00,$01,$7B,$20,$00,$01,$17,$18,$00,$0C,$B6,$22,$07,$C0,$00,$03 ; $0161F2
    dc.b $00,$10,$00,$00,$00,$00,$00,$01,$59,$18,$00,$00,$00,$00,$00,$01 ; $016202
    dc.b $7D,$08,$00,$01,$17,$EC,$00,$0D,$DE,$EA,$07,$CC,$00,$13,$00,$00 ; $016212
    dc.b $00,$00,$00,$00,$00,$01,$5B,$98,$00,$01,$65,$24,$00,$01,$8F,$76 ; $016222
    dc.b $00,$01,$17,$1C,$00,$0E,$D2,$A2,$07,$D2,$00,$03,$00,$10,$00,$00 ; $016232
    dc.b $00,$00,$00,$01,$59,$18,$00,$00,$00,$00,$00,$01,$7D,$08,$00,$01 ; $016242
    dc.b $0B,$1C,$00,$0E,$62,$8A,$07,$D8,$00,$03,$00,$00,$00,$00,$00,$00 ; $016252
    dc.b $00,$01,$59,$D8,$00,$00,$00,$00,$00,$01,$73,$42,$00,$01,$17,$20 ; $016262
    dc.b $00,$0A,$E5,$4A,$07,$DE,$00,$03,$00,$14,$00,$00,$00,$00,$00,$01 ; $016272
    dc.b $59,$18,$00,$00,$00,$00,$00,$01,$7B,$20,$00,$01,$14,$8A,$00,$0B ; $016282
    dc.b $35,$52,$07,$E4,$00,$03,$00,$10,$00,$00,$00,$00,$00,$01,$59,$18 ; $016292
    dc.b $00,$00,$00,$00,$00,$01,$8B,$88,$00,$01,$17,$14,$00,$0D,$AE,$DA ; $0162A2
    dc.b $07,$EA,$00,$03,$00,$10,$00,$00,$00,$00,$00,$01,$5A,$B8,$00,$00 ; $0162B2
    dc.b $00,$00,$00,$01,$7D,$68,$00,$01,$0C,$A4,$00,$0B,$83,$EA,$07,$F0 ; $0162C2
    dc.b $00,$03,$00,$0F,$00,$00,$00,$00,$00,$01,$59,$18,$00,$00,$00,$00 ; $0162D2
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0162E2
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; $0162F2
    dc.b $84,$9C,$00,$01,$13,$08,$00,$0C,$00,$02,$07,$FC,$00,$03,$00,$00 ; $016302
    dc.b $00,$00,$00,$00,$00,$01,$59,$B8,$00,$00,$00,$00,$00,$01,$80,$EA ; $016312
    dc.b $00,$01,$10,$2A,$00,$0C,$76,$1A,$08,$02,$00,$03,$00,$11,$00,$00 ; $016322
    dc.b $00,$00,$00,$01,$59,$18,$00,$00,$00,$00,$00,$01,$7B,$20,$00,$01 ; $016332
    dc.b $14,$8A,$00,$0B,$BB,$F2,$08,$08,$00,$03,$00,$00,$00,$00,$00,$00 ; $016342
    dc.b $00,$01,$5B,$B8,$00,$00,$00,$00,$00,$01,$7D,$08,$00,$01,$19,$3A ; $016352
    dc.b $00,$0C,$68,$12,$08,$0E,$00,$13,$00,$00,$00,$08,$00,$03,$00,$01 ; $016362
    dc.b $59,$D8,$00,$00,$00,$00,$00,$01,$7D,$08,$00,$01,$1A,$72,$00,$0D ; $016372
    dc.b $06,$32,$08,$14,$00,$13,$00,$00,$00,$00,$00,$00,$00,$01,$59,$78 ; $016382
    dc.b $00,$00,$00,$00,$00,$01,$89,$E8,$00,$01,$1B,$34,$00,$0D,$18,$3A ; $016392
    dc.b $08,$1A,$00,$13,$00,$00,$00,$00,$00,$00,$00,$01,$59,$D8,$00,$00 ; $0163A2
    dc.b $00,$00,$00,$01,$86,$5A,$00,$01,$0F,$8E,$00,$0D,$2E,$CA,$08,$20 ; $0163B2
    dc.b $00,$13,$00,$00,$00,$00,$00,$00,$00,$01,$5B,$D8,$00,$00,$00,$00 ; $0163C2
    dc.b $00,$01,$7B,$20,$00,$01,$14,$8A,$00,$0C,$C6,$2A,$08,$26,$00,$03 ; $0163D2
    dc.b $00,$00,$00,$00,$00,$00,$00,$01,$59,$D8,$00,$00,$00,$00,$00,$01 ; $0163E2
    dc.b $7D,$08,$00,$01,$0B,$1C,$00,$0D,$BE,$E2,$08,$2C,$00,$03,$00,$00 ; $0163F2
    dc.b $00,$00,$00,$00,$00,$01,$59,$D8,$00,$00,$00,$00,$00,$01,$8D,$2E ; $016402
    dc.b $00,$01,$17,$1C,$00,$0E,$82,$92,$08,$32,$00,$03,$00,$0D,$00,$00 ; $016412
    dc.b $00,$00,$00,$01,$5A,$98,$00,$00,$00,$00,$00,$01,$7D,$08,$00,$01 ; $016422
    dc.b $0B,$1C,$00,$0E,$E2,$AA,$08,$38,$00,$03,$00,$00,$00,$08,$00,$10 ; $016432
    dc.b $00,$01,$59,$D8,$00,$00,$00,$00,$00,$01,$8E,$36,$00,$01,$10,$2A ; $016442
    dc.b $00,$0E,$0A,$FA,$08,$3E,$00,$03,$00,$00,$00,$00,$00,$00,$00,$01 ; $016452
    dc.b $59,$D8,$00,$00,$00,$00,$00,$01,$7B,$20,$00,$01,$14,$8A,$00,$0E ; $016462
    dc.b $92,$9A,$08,$44,$00,$03,$00,$00,$00,$00,$00,$00,$00,$01,$59,$D8 ; $016472
    dc.b $00,$00,$00,$00,$00,$01,$7D,$08,$00,$01,$1B,$84,$00,$0E,$5B,$02 ; $016482
    dc.b $08,$4A,$00,$03,$00,$00,$00,$00,$00,$00,$00,$01,$59,$D8,$00,$00 ; $016492
    dc.b $00,$00,$00,$01,$7D,$08,$00,$01,$1B,$3A,$00,$09,$DF,$8A,$07,$60 ; $0164A2
    dc.b $00,$03,$00,$00,$00,$00,$00,$00,$00,$01,$59,$18,$00,$00,$00,$00 ; $0164B2
    dc.b $00,$01,$7D,$08,$00,$01,$1B,$84,$00,$0E,$5B,$02,$08,$4A,$00,$03 ; $0164C2
    dc.b $00,$00,$00,$00,$00,$00,$00,$01,$59,$D8,$00,$00,$00,$00,$00,$01 ; $0164D2
    dc.b $90,$7C,$00,$01,$08,$6E,$00,$0F,$02,$B2,$08,$50,$00,$13,$00,$00 ; $0164E2
    dc.b $00,$00,$FF,$F8,$00,$01,$5B,$F8,$00,$01,$65,$1C,$00,$01,$69,$04 ; $0164F2
    dc.b $00,$01,$14,$8A,$00,$00,$00,$00,$07,$7E,$00,$03,$00,$10,$00,$00 ; $016502
    dc.b $00,$00,$00,$01,$59,$18,$00,$00,$00,$00,$08,$56,$00,$0F,$16,$BA ; $016512
    dc.b $FF,$FF,$07,$C6,$00,$0D,$FE,$F2,$FF,$FF                         ; $016522
L_01652C:
    dc.b $00,$01,$69,$42,$00,$01,$5B,$18,$00,$07,$85,$52,$00,$01,$69,$42 ; $01652C
    dc.b $00,$01,$5B,$58,$00,$07,$E7,$5A,$00,$01,$69,$42,$00,$01,$5B,$38 ; $01653C
    dc.b $00,$08,$49,$62,$00,$01,$69,$42,$00,$01,$5A,$D8,$00,$08,$AB,$6A ; $01654C
    dc.b $00,$01,$69,$42,$00,$01,$5B,$78,$00,$09,$0D,$72,$00,$01,$69,$42 ; $01655C
    dc.b $00,$01,$5A,$F8,$00,$09,$6F,$7A                                 ; $01656C
L_016574:
    dc.b $01,$08,$02,$04,$00,$00,$00,$01,$09,$08,$0A,$02,$06,$04,$05,$01 ; $016574
    dc.b $09,$08,$0A,$02,$06,$04,$05,$01,$09,$08,$0A,$02,$06,$04,$05,$00 ; $016584
    dc.b $3F,$00,$72,$00,$E0,$58,$61,$02,$30,$1F,$3F,$00,$E8,$58,$61,$02 ; $016594
    dc.b $30,$1F,$02,$00,$00,$0F,$0C,$00,$00,$0A,$65,$02,$5E,$00,$06,$00 ; $0165A4
    dc.b $00,$30,$E1,$99,$D2,$00,$4E,$75,$3F,$07,$7E,$00,$70,$00,$72,$00 ; $0165B4
    dc.b $12,$18,$67,$2A,$0C,$01,$00,$2D,$66,$02,$7E,$FF,$04,$41,$00,$30 ; $0165C4
    dc.b $65,$EC,$0C,$41,$00,$0A,$64,$E6,$D0,$40,$3F,$00,$D0,$40,$D0,$40 ; $0165D4
    dc.b $D0,$5F,$D0,$41,$48,$40,$E9,$48,$D0,$41,$48,$40,$60,$D0,$4A,$47 ; $0165E4
    dc.b $67,$02,$44,$40,$3E,$1F,$4E,$75                                 ; $0165F4
L_0165FC:
    MOVE.L D2,-(A7)                         ; $0165FC  2F02
    MOVEQ #$FF,D2                           ; $0165FE  74FF
L_016600:
    ADDQ.B #1,D2                            ; $016600  5202
    SUBI.L #$000186A0,D0                    ; $016602  0480 0001 86A0
    BEQ.S L_016612                          ; $016608  6708
    BPL.S L_016600                          ; $01660A  6AF4
    ADDI.L #$000186A0,D0                    ; $01660C  0680 0001 86A0
L_016612:
    MOVE.B D2,D1                            ; $016612  1202
    BSR.S L_016664                          ; $016614  614E
    MOVE.L (A7)+,D2                         ; $016616  241F
L_016618:
    MOVE.L D0,D1                            ; $016618  2200
    DIVU.W #$2710,D1                        ; $01661A  82FC 2710
    BSR.S L_016664                          ; $01661E  6144
    MULU.W #$2710,D1                        ; $016620  C2FC 2710
    SUB.L D1,D0                             ; $016624  9081
L_016626:
    MOVE.L D0,D1                            ; $016626  2200
    DIVU.W #$03E8,D1                        ; $016628  82FC 03E8
    BSR.S L_016664                          ; $01662C  6136
    MULU.W #$03E8,D1                        ; $01662E  C2FC 03E8
    SUB.L D1,D0                             ; $016632  9081
L_016634:
    MOVE.L D0,D1                            ; $016634  2200
    DIVU.W #$0064,D1                        ; $016636  82FC 0064
    BSR.S L_016664                          ; $01663A  6128
    MULU.W #$0064,D1                        ; $01663C  C2FC 0064
    SUB.L D1,D0                             ; $016640  9081
L_016642:
    MOVE.L D0,D1                            ; $016642  2200
    DIVU.W #$000A,D1                        ; $016644  82FC 000A
    BSR.S L_016664                          ; $016648  611A
    MULU.W #$000A,D1                        ; $01664A  C2FC 000A
    SUB.L D1,D0                             ; $01664E  9081
    MOVE.L D0,D1                            ; $016650  2200
    BSET #$00,$A90(A5)                      ; $016652  08ED 0000 0A90
    BSR.W L_016664                          ; $016658  6100 000A
    BCLR #$00,$A90(A5)                      ; $01665C  08AD 0000 0A90
    RTS                                     ; $016662  4E75
L_016664:
    TST.B D1                                ; $016664  4A01
    BNE.S L_016676                          ; $016666  660E
    BTST #$00,$A90(A5)                      ; $016668  082D 0000 0A90
    BNE.S L_01667C                          ; $01666E  660C
    MOVE.B #$20,(A0)+                       ; $016670  10FC 0020
    RTS                                     ; $016674  4E75
L_016676:
    BSET #$00,$A90(A5)                      ; $016676  08ED 0000 0A90
L_01667C:
    MOVE.B #$30,(A0)                        ; $01667C  10BC 0030
    ADD.B D1,(A0)+                          ; $016680  D318
    RTS                                     ; $016682  4E75
L_016684:
    LEA L_01668A(PC),A1                     ; $016684  43FA 0004
    RTS                                     ; $016688  4E75
L_01668A:
    dc.b $00,$00,$0E,$FE,$0E,$EA,$07,$C0,$0C,$D6,$05,$B0,$04,$A0,$0A,$20 ; $01668A
    dc.b $0B,$3A,$04,$B4,$03,$A2,$09,$18,$0C,$C4,$03,$43,$02,$3A,$01,$29 ; $01669A
L_0166AA:
    MOVE.L A7,$3D0(A5)                      ; $0166AA  2B4F 03D0
    LEA $14A4(A5),A7                        ; $0166AE  4FED 14A4
    BSR.S L_0166BA                          ; $0166B2  6106
    MOVEA.L $3D0(A5),A7                     ; $0166B4  2E6D 03D0
    RTS                                     ; $0166B8  4E75
L_0166BA:
    MOVEM.L D0-D7/A0-A6,-(A7)               ; $0166BA  48E7 FFFE
    LEA -$180(A7),A7                        ; $0166BE  4FEF FE80
    MOVEA.L A7,A2                           ; $0166C2  244F
    BSR.W L_016832                          ; $0166C4  6100 016C
    MOVEQ #$00,D1                           ; $0166C8  7200
    CMPI.L #$524E4301,D0                    ; $0166CA  0C80 524E 4301
    BNE.W L_0167CA                          ; $0166D0  6600 00F8
    BSR.W L_016832                          ; $0166D4  6100 015C
    MOVE.L D0,$180(A7)                      ; $0166D8  2F40 0180
    LEA $A(A0),A3                           ; $0166DC  47E8 000A
    MOVEA.L A1,A5                           ; $0166E0  2A49
    LEA $0(A5,D0.L),A6                      ; $0166E2  4DF5 0800
    BSR.W L_016832                          ; $0166E6  6100 014A
    LEA $0(A3,D0.L),A4                      ; $0166EA  49F3 0800
    CLR.W -(A7)                             ; $0166EE  4267
    CMPA.L A4,A5                            ; $0166F0  BBCC
    BCC.S L_016740                          ; $0166F2  644C
    MOVEQ #$00,D0                           ; $0166F4  7000
    MOVE.B -$2(A3),D0                       ; $0166F6  102B FFFE
    LEA $0(A6,D0.L),A0                      ; $0166FA  41F6 0800
    CMPA.L A4,A0                            ; $0166FE  B1CC
    BLS.S L_016740                          ; $016700  633E
    ADDQ.W #2,A7                            ; $016702  544F
    MOVE.L A4,D0                            ; $016704  200C
    BTST #$00,D0                            ; $016706  0800 0000
    BEQ.S L_016710                          ; $01670A  6704
    ADDQ.W #1,A4                            ; $01670C  524C
    ADDQ.W #1,A0                            ; $01670E  5248
L_016710:
    MOVE.L A0,D0                            ; $016710  2008
    BTST #$00,D0                            ; $016712  0800 0000
    BEQ.S L_01671A                          ; $016716  6702
    ADDQ.W #1,A0                            ; $016718  5248
L_01671A:
    MOVEQ #$00,D0                           ; $01671A  7000
L_01671C:
    CMPA.L A0,A6                            ; $01671C  BDC8
    BEQ.S L_016728                          ; $01671E  6708
    MOVE.B -(A0),D1                         ; $016720  1220
    MOVE.W D1,-(A7)                         ; $016722  3F01
    ADDQ.B #1,D0                            ; $016724  5200
    BRA.S L_01671C                          ; $016726  60F4
L_016728:
    MOVE.W D0,-(A7)                         ; $016728  3F00
    ADDA.L D0,A0                            ; $01672A  D1C0
L_01672C:
    LEA -$20(A4),A4                         ; $01672C  49EC FFE0
    MOVEM.L (A4),D0-D7                      ; $016730  4CD4 00FF
    MOVEM.L D0-D7,-(A0)                     ; $016734  48E0 FF00
    CMPA.L A3,A4                            ; $016738  B9CB
    BHI.S L_01672C                          ; $01673A  62F0
    SUBA.L A4,A3                            ; $01673C  97CC
    ADDA.L A0,A3                            ; $01673E  D7C8
L_016740:
    MOVEQ #$00,D7                           ; $016740  7E00
    MOVE.B $1(A3),D6                        ; $016742  1C2B 0001
    ROL.W #8,D6                             ; $016746  E15E
    MOVE.B (A3),D6                          ; $016748  1C13
    MOVEQ #$02,D0                           ; $01674A  7002
    MOVEQ #$02,D1                           ; $01674C  7202
    BSR.W L_01680E                          ; $01674E  6100 00BE
L_016752:
    MOVEA.L A2,A0                           ; $016752  204A
    BSR.W L_01683E                          ; $016754  6100 00E8
    LEA $80(A2),A0                          ; $016758  41EA 0080
    BSR.W L_01683E                          ; $01675C  6100 00E0
    LEA $100(A2),A0                         ; $016760  41EA 0100
    BSR.W L_01683E                          ; $016764  6100 00D8
    MOVEQ #$FF,D0                           ; $016768  70FF
    MOVEQ #$10,D1                           ; $01676A  7210
    BSR.W L_01680E                          ; $01676C  6100 00A0
    MOVE.W D0,D4                            ; $016770  3800
    SUBQ.W #1,D4                            ; $016772  5344
    BRA.S L_016792                          ; $016774  601C
L_016776:
    LEA $80(A2),A0                          ; $016776  41EA 0080
    MOVEQ #$00,D0                           ; $01677A  7000
    BSR.S L_0167D8                          ; $01677C  615A
    NEG.L D0                                ; $01677E  4480
    LEA -$1(A5,D0.L),A1                     ; $016780  43F5 08FF
    LEA $100(A2),A0                         ; $016784  41EA 0100
    BSR.S L_0167D8                          ; $016788  614E
    MOVE.B (A1)+,(A5)+                      ; $01678A  1AD9
L_01678C:
    MOVE.B (A1)+,(A5)+                      ; $01678C  1AD9
    DBRA D0,L_01678C                        ; $01678E  51C8 FFFC
L_016792:
    MOVEA.L A2,A0                           ; $016792  204A
    BSR.S L_0167D8                          ; $016794  6142
    SUBQ.W #1,D0                            ; $016796  5340
    BMI.S L_0167B4                          ; $016798  6B1A
L_01679A:
    MOVE.B (A3)+,(A5)+                      ; $01679A  1ADB
    DBRA D0,L_01679A                        ; $01679C  51C8 FFFC
    MOVE.B $1(A3),D0                        ; $0167A0  102B 0001
    ROL.W #8,D0                             ; $0167A4  E158
    MOVE.B (A3),D0                          ; $0167A6  1013
    LSL.L D7,D0                             ; $0167A8  EFA8
    MOVEQ #$01,D1                           ; $0167AA  7201
    LSL.W D7,D1                             ; $0167AC  EF69
    SUBQ.W #1,D1                            ; $0167AE  5341
    AND.L D1,D6                             ; $0167B0  CC81
    OR.L D0,D6                              ; $0167B2  8C80
L_0167B4:
    DBRA D4,L_016776                        ; $0167B4  51CC FFC0
    CMPA.L A6,A5                            ; $0167B8  BBCE
    BCS.S L_016752                          ; $0167BA  6596
    MOVE.W (A7)+,D0                         ; $0167BC  301F
    BEQ.S L_0167C8                          ; $0167BE  6708
L_0167C0:
    MOVE.W (A7)+,D1                         ; $0167C0  321F
    MOVE.B D1,(A5)+                         ; $0167C2  1AC1
    SUBQ.B #1,D0                            ; $0167C4  5300
    BNE.S L_0167C0                          ; $0167C6  66F8
L_0167C8:
    BRA.S L_0167CE                          ; $0167C8  6004
L_0167CA:
    MOVE.L D1,$180(A7)                      ; $0167CA  2F41 0180
L_0167CE:
    LEA $180(A7),A7                         ; $0167CE  4FEF 0180
    MOVEM.L (A7)+,D0-D7/A0-A6               ; $0167D2  4CDF 7FFF
    RTS                                     ; $0167D6  4E75
L_0167D8:
    MOVE.W (A0)+,D0                         ; $0167D8  3018
    AND.W D6,D0                             ; $0167DA  C046
    SUB.W (A0)+,D0                          ; $0167DC  9058
    BNE.S L_0167D8                          ; $0167DE  66F8
    MOVE.B $3C(A0),D1                       ; $0167E0  1228 003C
    SUB.B D1,D7                             ; $0167E4  9E01
    BGE.S L_0167EA                          ; $0167E6  6C02
    BSR.S L_01681A                          ; $0167E8  6130
L_0167EA:
    LSR.L D1,D6                             ; $0167EA  E2AE
    MOVE.B $3D(A0),D0                       ; $0167EC  1028 003D
    CMPI.B #$02,D0                          ; $0167F0  0C00 0002
    BLT.S L_01680C                          ; $0167F4  6D16
    SUBQ.B #1,D0                            ; $0167F6  5300
    MOVE.B D0,D1                            ; $0167F8  1200
    MOVE.B D0,D2                            ; $0167FA  1400
    MOVE.W $3E(A0),D0                       ; $0167FC  3028 003E
    AND.W D6,D0                             ; $016800  C046
    SUB.B D1,D7                             ; $016802  9E01
    BGE.S L_016808                          ; $016804  6C02
    BSR.S L_01681A                          ; $016806  6112
L_016808:
    LSR.L D1,D6                             ; $016808  E2AE
    BSET D2,D0                              ; $01680A  05C0
L_01680C:
    RTS                                     ; $01680C  4E75
L_01680E:
    AND.W D6,D0                             ; $01680E  C046
    SUB.B D1,D7                             ; $016810  9E01
    BGE.S L_016816                          ; $016812  6C02
    BSR.S L_01681A                          ; $016814  6104
L_016816:
    LSR.L D1,D6                             ; $016816  E2AE
    RTS                                     ; $016818  4E75
L_01681A:
    ADD.B D1,D7                             ; $01681A  DE01
    LSR.L D7,D6                             ; $01681C  EEAE
    SWAP D6                                 ; $01681E  4846
    ADDQ.W #4,A3                            ; $016820  584B
    MOVE.B -(A3),D6                         ; $016822  1C23
    ROL.W #8,D6                             ; $016824  E15E
    MOVE.B -(A3),D6                         ; $016826  1C23
    SWAP D6                                 ; $016828  4846
    SUB.B D7,D1                             ; $01682A  9207
    MOVEQ #$10,D7                           ; $01682C  7E10
    SUB.B D1,D7                             ; $01682E  9E01
    RTS                                     ; $016830  4E75
L_016832:
    MOVEQ #$03,D1                           ; $016832  7203
L_016834:
    LSL.L #8,D0                             ; $016834  E188
    MOVE.B (A0)+,D0                         ; $016836  1018
    DBRA D1,L_016834                        ; $016838  51C9 FFFA
    RTS                                     ; $01683C  4E75
L_01683E:
    MOVEQ #$1F,D0                           ; $01683E  701F
    MOVEQ #$05,D1                           ; $016840  7205
    BSR.S L_01680E                          ; $016842  61CA
    SUBQ.W #1,D0                            ; $016844  5340
    BMI.S L_0168C4                          ; $016846  6B7C
    MOVE.W D0,D2                            ; $016848  3400
    MOVE.W D0,D3                            ; $01684A  3600
    LEA -$10(A7),A7                         ; $01684C  4FEF FFF0
    MOVEA.L A7,A1                           ; $016850  224F
L_016852:
    MOVEQ #$0F,D0                           ; $016852  700F
    MOVEQ #$04,D1                           ; $016854  7204
    BSR.S L_01680E                          ; $016856  61B6
    MOVE.B D0,(A1)+                         ; $016858  12C0
    DBRA D2,L_016852                        ; $01685A  51CA FFF6
    MOVEQ #$01,D0                           ; $01685E  7001
    ROR.L #1,D0                             ; $016860  E298
    MOVEQ #$01,D1                           ; $016862  7201
    MOVEQ #$00,D2                           ; $016864  7400
    MOVEM.L D5-D7,-(A7)                     ; $016866  48E7 0700
L_01686A:
    MOVE.W D3,D4                            ; $01686A  3803
    LEA $C(A7),A1                           ; $01686C  43EF 000C
L_016870:
    CMP.B (A1)+,D1                          ; $016870  B219
    BNE.S L_0168AE                          ; $016872  663A
    MOVEQ #$01,D5                           ; $016874  7A01
    LSL.W D1,D5                             ; $016876  E36D
    SUBQ.W #1,D5                            ; $016878  5345
    MOVE.W D5,(A0)+                         ; $01687A  30C5
    MOVE.L D2,D5                            ; $01687C  2A02
    SWAP D5                                 ; $01687E  4845
    MOVE.W D1,D7                            ; $016880  3E01
    SUBQ.W #1,D7                            ; $016882  5347
L_016884:
    ROXL.W #1,D5                            ; $016884  E355
    ROXR.W #1,D6                            ; $016886  E256
    DBRA D7,L_016884                        ; $016888  51CF FFFA
    MOVEQ #$10,D5                           ; $01688C  7A10
    SUB.B D1,D5                             ; $01688E  9A01
    LSR.W D5,D6                             ; $016890  EA6E
    MOVE.W D6,(A0)+                         ; $016892  30C6
    MOVE.B D1,$3C(A0)                       ; $016894  1141 003C
    MOVE.B D3,D5                            ; $016898  1A03
    SUB.B D4,D5                             ; $01689A  9A04
    MOVE.B D5,$3D(A0)                       ; $01689C  1145 003D
    MOVEQ #$01,D6                           ; $0168A0  7C01
    SUBQ.B #1,D5                            ; $0168A2  5305
    LSL.W D5,D6                             ; $0168A4  EB6E
    SUBQ.W #1,D6                            ; $0168A6  5346
    MOVE.W D6,$3E(A0)                       ; $0168A8  3146 003E
    ADD.L D0,D2                             ; $0168AC  D480
L_0168AE:
    DBRA D4,L_016870                        ; $0168AE  51CC FFC0
    LSR.L #1,D0                             ; $0168B2  E288
    ADDQ.B #1,D1                            ; $0168B4  5201
    CMPI.B #$11,D1                          ; $0168B6  0C01 0011
    BNE.S L_01686A                          ; $0168BA  66AE
    MOVEM.L (A7)+,D5-D7                     ; $0168BC  4CDF 00E0
    LEA $10(A7),A7                          ; $0168C0  4FEF 0010
L_0168C4:
    RTS                                     ; $0168C4  4E75
    dc.b $02,$88,$02,$88,$02,$88,$02,$88,$00,$C2,$02,$88,$02,$88,$05,$06 ; $0168C6
    dc.b $05,$40,$05,$7A,$05,$B4,$05,$EE,$06,$28,$06,$62,$06,$9C,$03,$E6 ; $0168D6
    dc.b $03,$F2,$03,$FE,$04,$0A,$04,$16,$04,$22,$04,$2E,$04,$3A,$04,$46 ; $0168E6
    dc.b $04,$5E,$04,$76,$04,$8E,$04,$A6,$04,$BE,$04,$D6,$04,$EE,$10,$62 ; $0168F6
    dc.b $10,$68,$10,$6E,$10,$74,$00,$7C,$02,$4A,$02,$4A,$02,$52,$02,$82 ; $016906
    dc.b $02,$AC,$02,$D6,$03,$00,$03,$2A,$03,$54,$03,$7E,$03,$A8,$03,$B4 ; $016916
    dc.b $03,$C0,$03,$CC,$03,$D8,$03,$E4,$03,$F0,$03,$FC,$04,$08,$04,$20 ; $016926
    dc.b $04,$38,$04,$50,$04,$68,$04,$80,$04,$98,$04,$B0,$02,$0C,$02,$0C ; $016936
    dc.b $02,$0C,$02,$0C,$00,$46,$02,$0C,$02,$0C,$02,$14,$02,$44,$02,$6E ; $016946
    dc.b $02,$98,$02,$C2,$02,$EC,$03,$16,$03,$40,$03,$6A,$03,$76,$03,$82 ; $016956
    dc.b $03,$8E,$03,$9A,$03,$A6,$03,$B2,$03,$BE,$03,$CA,$03,$E2,$03,$FA ; $016966
    dc.b $04,$12,$04,$2A,$04,$42,$04,$5A,$04,$72,$FA,$00,$00,$00,$A7,$06 ; $016976
    dc.b $FB,$00,$FD,$00,$FA,$00,$00,$00,$A7,$06,$F9,$00,$42,$6E,$00,$5E ; $016986
    dc.b $42,$2E,$00,$48,$2F,$08,$41,$ED,$09,$04,$49,$ED,$41,$2E,$BD,$FC ; $016996
    dc.b $00,$FF,$40,$B8,$67,$08,$49,$ED,$40,$B8,$41,$ED,$09,$06,$30,$AD ; $0169A6
    dc.b $06,$80,$20,$5F,$08,$2E,$00,$05,$00,$45,$66,$00,$00,$EA,$16,$2E ; $0169B6
    dc.b $00,$40,$02,$43,$00,$03,$D6,$43,$0C,$35,$00,$01,$30,$4D,$66,$5A ; $0169C6
    dc.b $42,$35,$30,$4D,$08,$AE,$00,$07,$00,$6C,$00,$2E,$00,$23,$00,$49 ; $0169D6
    dc.b $08,$2C,$00,$07,$00,$6C,$66,$36,$08,$2C,$00,$04,$00,$6C,$66,$00 ; $0169E6
    dc.b $00,$9E,$08,$2C,$00,$05,$00,$45,$66,$0C,$08,$2C,$00,$00,$00,$6D ; $0169F6
    dc.b $67,$04,$60,$00,$00,$92,$1B,$7C,$00,$FB,$09,$25,$60,$00,$00,$80 ; $016A06
    dc.b $08,$EE,$00,$04,$00,$6C,$52,$2D,$09,$25,$60,$00,$00,$72,$08,$2C ; $016A16
    dc.b $00,$05,$00,$45,$67,$00,$00,$68,$60,$DC,$08,$EE,$00,$00,$00,$6D ; $016A26
    dc.b $08,$AE,$00,$07,$00,$6C,$00,$2E,$00,$23,$00,$49,$08,$2C,$00,$04 ; $016A36
    dc.b $00,$6C,$66,$CC,$08,$2C,$00,$05,$00,$45,$67,$2A,$08,$2C,$00,$07 ; $016A46
    dc.b $00,$6C,$67,$22,$C9,$4E,$2F,$0C,$4E,$B9,$00,$00,$8D,$B4,$08,$EE ; $016A56
    dc.b $00,$07,$00,$6C,$28,$5F,$C9,$4E,$61,$00,$00,$A2,$4A,$40,$6B,$00 ; $016A66
    dc.b $00,$2C,$60,$00,$00,$22,$61,$00,$00,$94,$4A,$40,$6B,$00,$00,$1E ; $016A76
    dc.b $08,$2C,$00,$07,$00,$6C,$66,$00,$00,$06,$60,$00,$00,$0A,$41,$FA ; $016A86
    dc.b $00,$04,$4E,$75,$FB,$00,$3B,$7C,$00,$14,$07,$36,$41,$FA,$00,$04 ; $016A96
    dc.b $4E,$75,$EC,$00,$00,$05,$3B,$6D,$08,$CA,$0A,$FC,$3B,$6D,$08,$CC ; $016AA6
    dc.b $0B,$24,$2B,$6D,$0A,$FE,$08,$CE,$2B,$6D,$0B,$26,$08,$D2,$08,$EE ; $016AB6
    dc.b $00,$00,$00,$6D,$08,$AE,$00,$07,$00,$6C,$00,$2E,$00,$2B,$00,$49 ; $016AC6
    dc.b $00,$2D,$00,$08,$41,$01,$0C,$2D,$00,$01,$00,$4F,$66,$00,$00,$0E ; $016AD6
    dc.b $42,$2D,$00,$4F,$08,$AE,$00,$00,$00,$6D,$60,$12,$08,$2C,$00,$04 ; $016AE6
    dc.b $00,$6C,$67,$0A,$08,$EE,$00,$04,$00,$6C,$52,$2D,$09,$25,$61,$00 ; $016AF6
    dc.b $00,$0C,$41,$FA,$00,$04,$4E,$75,$EC,$00,$00,$05,$70,$00,$4A,$2D ; $016B06
    dc.b $09,$A2,$67,$32,$08,$2E,$00,$00,$00,$6D,$67,$2A,$2F,$0C,$3F,$16 ; $016B16
    dc.b $3F,$2E,$00,$02,$4E,$BA,$93,$F0,$32,$1F,$30,$1F,$3C,$80,$3D,$41 ; $016B26
    dc.b $00,$02,$3D,$40,$00,$04,$3D,$41,$00,$06,$4E,$B9,$00,$00,$8D,$94 ; $016B36
    dc.b $28,$5F,$70,$FF,$4E,$75,$4E,$75,$FD,$01,$F8,$00,$FF,$00,$FF,$FC ; $016B46
    dc.b $FD,$01,$EE,$01,$00,$08,$EB,$00,$EE,$01,$00,$08,$EE,$01,$00,$09 ; $016B56
    dc.b $EE,$01,$00,$09,$EE,$01,$00,$0A,$EB,$00,$EE,$01,$00,$0A,$EE,$01 ; $016B66
    dc.b $00,$0B,$EE,$01,$00,$0B,$FF,$00,$FF,$DA,$04,$08,$09,$0A,$0B,$FF ; $016B76
    dc.b $FD,$01,$EE,$09,$00,$0C,$EB,$00,$EE,$09,$00,$0C,$EE,$09,$00,$0D ; $016B86
    dc.b $EE,$09,$00,$0D,$EE,$09,$00,$0E,$EB,$00,$EE,$09,$00,$0E,$EE,$09 ; $016B96
    dc.b $00,$0F,$EE,$09,$00,$0F,$FF,$00,$FF,$DA,$FD,$01,$EE,$08,$00,$10 ; $016BA6
    dc.b $EB,$00,$EE,$08,$00,$10,$EE,$08,$00,$11,$EE,$08,$00,$11,$EE,$08 ; $016BB6
    dc.b $00,$12,$EB,$00,$EE,$08,$00,$12,$EE,$08,$00,$13,$EE,$08,$00,$13 ; $016BC6
    dc.b $FF,$00,$FF,$DA,$FD,$01,$EE,$0A,$00,$14,$EB,$00,$EE,$0A,$00,$14 ; $016BD6
    dc.b $EE,$0A,$00,$15,$EE,$0A,$00,$15,$EE,$0A,$00,$16,$EB,$00,$EE,$0A ; $016BE6
    dc.b $00,$16,$EE,$0A,$00,$17,$EE,$0A,$00,$17,$FF,$00,$FF,$DA,$FD,$01 ; $016BF6
    dc.b $EE,$02,$00,$18,$EB,$00,$EE,$02,$00,$18,$EE,$02,$00,$19,$EE,$02 ; $016C06
    dc.b $00,$19,$EE,$02,$00,$1A,$EB,$00,$EE,$02,$00,$1A,$EE,$02,$00,$1B ; $016C16
    dc.b $EE,$02,$00,$1B,$FF,$00,$FF,$DA,$FD,$01,$EE,$06,$00,$1C,$EB,$00 ; $016C26
    dc.b $EE,$06,$00,$1C,$EE,$06,$00,$1D,$EE,$06,$00,$1D,$EE,$06,$00,$1E ; $016C36
    dc.b $EB,$00,$EE,$06,$00,$1E,$EE,$06,$00,$1F,$EE,$06,$00,$1F,$FF,$00 ; $016C46
    dc.b $FF,$DA,$FD,$01,$EE,$04,$00,$20,$EB,$00,$EE,$04,$00,$20,$EE,$04 ; $016C56
    dc.b $00,$21,$EE,$04,$00,$21,$EE,$04,$00,$22,$EB,$00,$EE,$04,$00,$22 ; $016C66
    dc.b $EE,$04,$00,$23,$EE,$04,$00,$23,$FF,$00,$FF,$DA,$FD,$01,$EE,$05 ; $016C76
    dc.b $00,$24,$EB,$00,$EE,$05,$00,$24,$EE,$05,$00,$25,$EE,$05,$00,$25 ; $016C86
    dc.b $EE,$05,$00,$26,$EB,$00,$EE,$05,$00,$26,$EE,$05,$00,$27,$EE,$05 ; $016C96
    dc.b $00,$27,$FF,$00,$FF,$DA,$FD,$01,$00,$00,$00,$00,$00,$00,$FF,$00 ; $016CA6
    dc.b $FE,$98,$FD,$01,$00,$01,$00,$00,$00,$00,$FF,$00,$FE,$8C,$FD,$01 ; $016CB6
    dc.b $00,$02,$00,$00,$00,$00,$FF,$00,$FE,$80,$FD,$01,$00,$03,$00,$00 ; $016CC6
    dc.b $00,$00,$FF,$00,$FE,$74,$FD,$01,$00,$04,$00,$00,$00,$00,$FF,$00 ; $016CD6
    dc.b $FE,$68,$FD,$01,$00,$05,$00,$00,$00,$00,$FF,$00,$FE,$5C,$FD,$01 ; $016CE6
    dc.b $00,$06,$00,$00,$00,$00,$FF,$00,$FE,$50,$FD,$01,$00,$07,$00,$00 ; $016CF6
    dc.b $00,$00,$FF,$00,$FE,$44,$FD,$00,$00,$28,$00,$00,$00,$00,$FA,$00 ; $016D06
    dc.b $00,$00,$AE,$EA,$00,$00,$00,$00,$00,$00,$FF,$00,$FE,$2C,$FD,$00 ; $016D16
    dc.b $00,$29,$00,$00,$00,$00,$FA,$00,$00,$00,$AE,$EA,$00,$01,$00,$00 ; $016D26
    dc.b $00,$00,$FF,$00,$FE,$14,$FD,$00,$00,$2A,$00,$00,$00,$00,$FA,$00 ; $016D36
    dc.b $00,$00,$AE,$EA,$00,$02,$00,$00,$00,$00,$FF,$00,$FD,$FC,$FD,$00 ; $016D46
    dc.b $00,$2B,$00,$00,$00,$00,$FA,$00,$00,$00,$AE,$EA,$00,$03,$00,$00 ; $016D56
    dc.b $00,$00,$FF,$00,$FD,$E4,$FD,$00,$00,$2C,$00,$00,$00,$00,$FA,$00 ; $016D66
    dc.b $00,$00,$AE,$EA,$00,$04,$00,$00,$00,$00,$FF,$00,$FD,$CC,$FD,$00 ; $016D76
    dc.b $00,$2D,$00,$00,$00,$00,$FA,$00,$00,$00,$AE,$EA,$00,$05,$00,$00 ; $016D86
    dc.b $00,$00,$FF,$00,$FD,$B4,$FD,$00,$00,$2E,$00,$00,$00,$00,$FA,$00 ; $016D96
    dc.b $00,$00,$AE,$EA,$00,$06,$00,$00,$00,$00,$FF,$00,$FD,$9C,$FD,$00 ; $016DA6
    dc.b $00,$2F,$00,$00,$00,$00,$FA,$00,$00,$00,$AE,$EA,$00,$07,$00,$00 ; $016DB6
    dc.b $00,$00,$FF,$00,$FD,$84,$FD,$01,$EE,$01,$00,$08,$EB,$00,$EE,$01 ; $016DC6
    dc.b $00,$08,$EE,$01,$00,$08,$EE,$01,$00,$09,$EE,$01,$00,$09,$EE,$01 ; $016DD6
    dc.b $00,$09,$EE,$01,$00,$0A,$EE,$01,$00,$0A,$EB,$00,$EE,$01,$00,$0A ; $016DE6
    dc.b $EE,$01,$00,$0B,$EE,$01,$00,$0B,$EE,$01,$00,$0B,$FF,$00,$FF,$CA ; $016DF6
    dc.b $FD,$01,$EE,$09,$00,$0C,$EB,$00,$EE,$09,$00,$0C,$EE,$09,$00,$0C ; $016E06
    dc.b $EE,$09,$00,$0D,$EE,$09,$00,$0D,$EE,$09,$00,$0D,$EE,$09,$00,$0E ; $016E16
    dc.b $EE,$09,$00,$0E,$EB,$00,$EE,$09,$00,$0E,$EE,$09,$00,$0F,$EE,$09 ; $016E26
    dc.b $00,$0F,$EE,$09,$00,$0F,$FF,$00,$FF,$CA,$FD,$01,$EE,$08,$00,$10 ; $016E36
    dc.b $EB,$00,$EE,$08,$00,$10,$EE,$08,$00,$10,$EE,$08,$00,$11,$EE,$08 ; $016E46
    dc.b $00,$11,$EE,$08,$00,$11,$EE,$08,$00,$12,$EE,$08,$00,$12,$EB,$00 ; $016E56
    dc.b $EE,$08,$00,$12,$EE,$08,$00,$13,$EE,$08,$00,$13,$EE,$08,$00,$13 ; $016E66
    dc.b $FF,$00,$FF,$CA,$FD,$01,$EE,$0A,$00,$14,$EB,$00,$EE,$0A,$00,$14 ; $016E76
    dc.b $EE,$0A,$00,$14,$EE,$0A,$00,$15,$EE,$0A,$00,$15,$EE,$0A,$00,$15 ; $016E86
    dc.b $EE,$0A,$00,$16,$EE,$0A,$00,$16,$EB,$00,$EE,$0A,$00,$16,$EE,$0A ; $016E96
    dc.b $00,$17,$EE,$0A,$00,$17,$EE,$0A,$00,$17,$FF,$00,$FF,$CA,$FD,$01 ; $016EA6
    dc.b $EE,$02,$00,$18,$EB,$00,$EE,$02,$00,$18,$EE,$02,$00,$18,$EE,$02 ; $016EB6
    dc.b $00,$19,$EE,$02,$00,$19,$EE,$02,$00,$19,$EE,$02,$00,$1A,$EE,$02 ; $016EC6
    dc.b $00,$1A,$EB,$00,$EE,$02,$00,$1A,$EE,$02,$00,$1B,$EE,$02,$00,$1B ; $016ED6
    dc.b $EE,$02,$00,$1B,$FF,$00,$FF,$CA,$FD,$01,$EE,$06,$00,$1C,$EB,$00 ; $016EE6
    dc.b $EE,$06,$00,$1C,$EE,$06,$00,$1C,$EE,$06,$00,$1D,$EE,$06,$00,$1D ; $016EF6
    dc.b $EE,$06,$00,$1D,$EE,$06,$00,$1E,$EE,$06,$00,$1E,$EB,$00,$EE,$06 ; $016F06
    dc.b $00,$1E,$EE,$06,$00,$1F,$EE,$06,$00,$1F,$EE,$06,$00,$1F,$FF,$00 ; $016F16
    dc.b $FF,$CA,$FD,$01,$EE,$04,$00,$20,$EB,$00,$EE,$04,$00,$20,$EE,$04 ; $016F26
    dc.b $00,$20,$EE,$04,$00,$21,$EE,$04,$00,$21,$EE,$04,$00,$21,$EE,$04 ; $016F36
    dc.b $00,$22,$EE,$04,$00,$22,$EB,$00,$EE,$04,$00,$22,$EE,$04,$00,$23 ; $016F46
    dc.b $EE,$04,$00,$23,$EE,$04,$00,$23,$FF,$00,$FF,$CA,$FD,$01,$EE,$05 ; $016F56
    dc.b $00,$24,$EB,$00,$EE,$05,$00,$24,$EE,$05,$00,$24,$EE,$05,$00,$25 ; $016F66
    dc.b $EE,$05,$00,$25,$EE,$05,$00,$25,$EE,$05,$00,$26,$EE,$05,$00,$26 ; $016F76
    dc.b $EB,$00,$EE,$05,$00,$26,$EE,$05,$00,$27,$EE,$05,$00,$27,$EE,$05 ; $016F86
    dc.b $00,$27,$FF,$00,$FF,$CA                                         ; $016F96
L_016F9C:
    dc.b $F7,$00,$00,$01,$00,$03,$00,$01,$EF,$00,$F8,$00,$F6,$00,$FB,$00 ; $016F9C
L_016FAC:
    dc.b $F8,$00,$F8,$00,$F8,$00,$FB,$00                                 ; $016FAC
L_016FB4:
    dc.b $FD,$00,$F8,$00,$ED,$00,$00,$01,$ED,$00,$00,$01,$F2,$FF,$ED,$00 ; $016FB4
    dc.b $FF,$FF,$F2,$FF,$FD,$FF,$FF,$00,$FF,$F0                         ; $016FC4
L_016FCE:
    dc.b $00,$2A,$00,$00,$00,$00,$00,$2A,$00,$00,$00,$00,$00,$2A,$00,$00 ; $016FCE
    dc.b $00,$00,$00,$2A,$00,$00,$00,$00,$00,$2A,$00,$00,$00,$00,$00,$2B ; $016FDE
    dc.b $00,$00,$00,$00,$00,$2B,$00,$00,$00,$00,$FF,$00,$FF,$D4,$F7,$00 ; $016FEE
    dc.b $00,$01,$00,$05,$00,$01,$00,$28,$00,$00,$00,$00,$F6,$00,$F7,$00 ; $016FFE
    dc.b $00,$01,$00,$02,$00,$01,$00,$29,$00,$00,$00,$00,$F6,$00,$FF,$00 ; $01700E
    dc.b $FF,$DE                                                         ; $01701E
L_017020:
    dc.b $FD,$00,$F7,$00,$00,$01,$00,$03,$00,$01,$00,$1C,$00,$00,$FF,$FE ; $017020
    dc.b $00,$1D,$00,$00,$FF,$FE,$00,$1E,$00,$00,$FF,$FE,$00,$1F,$00,$00 ; $017030
    dc.b $FF,$FE,$F6,$00,$FA,$00,$00,$00,$C4,$8A,$FB,$00                 ; $017040
L_01704C:
    dc.b $F2,$1C,$F2,$1D,$F2,$1E,$F2,$1D,$FF,$00,$FF,$F6,$00,$26,$00,$C4 ; $01704C
    dc.b $01,$14,$00,$26,$00,$32,$00,$0C,$FD,$00,$F9,$00,$08,$EE,$00,$03 ; $01705C
    dc.b $00,$6C,$41,$FA,$00,$04,$4E,$75,$00,$03,$00,$00,$00,$00,$FF,$00 ; $01706C
    dc.b $FF,$F8,$FD,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$FF,$F8,$F9,$00 ; $01707C
    dc.b $0C,$6E,$00,$02,$00,$20,$66,$0A,$41,$FA,$00,$04,$4E,$75,$EC,$00 ; $01708C
    dc.b $00,$05,$70,$00,$10,$2E,$00,$2E,$4E,$B9,$00,$00,$8E,$98,$3D,$7C ; $01709C
    dc.b $00,$01,$00,$1E,$41,$FA,$00,$04,$4E,$75,$00,$01,$00,$00,$00,$00 ; $0170AC
    dc.b $00,$01,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$02,$00,$00 ; $0170BC
    dc.b $00,$00,$F9,$00,$70,$01,$2F,$08,$2F,$01,$3F,$00,$22,$2E,$00,$26 ; $0170CC
    dc.b $67,$16,$20,$41,$3D,$6E,$00,$1E,$00,$20,$3D,$40,$00,$1E,$D0,$40 ; $0170DC
    dc.b $D0,$F0,$00,$00,$2D,$48,$00,$22,$30,$1F,$22,$1F,$20,$5F,$41,$FA ; $0170EC
    dc.b $00,$04,$4E,$75,$00,$03,$00,$00,$00,$00,$FA,$00,$00,$00,$A7,$CE ; $0170FC
    dc.b $F7,$00,$00,$01,$00,$1A,$00,$01,$00,$03,$00,$00,$00,$00,$F6,$00 ; $01710C
    dc.b $F9,$00,$08,$EE,$00,$03,$00,$6C,$41,$FA,$00,$04,$4E,$75,$FD,$00 ; $01711C
    dc.b $00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$04,$00,$00 ; $01712C
    dc.b $00,$00,$00,$04,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$05 ; $01713C
    dc.b $00,$00,$00,$00,$00,$06,$00,$00,$00,$00,$00,$06,$00,$00,$00,$00 ; $01714C
    dc.b $00,$05,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$FF,$00,$FF,$CE ; $01715C
    dc.b $F9,$00,$08,$EE,$00,$03,$00,$6C,$41,$FA,$00,$04,$4E,$75,$FD,$01 ; $01716C
    dc.b $00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$04,$00,$00 ; $01717C
    dc.b $00,$00,$00,$04,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$05 ; $01718C
    dc.b $00,$00,$00,$00,$00,$06,$00,$00,$00,$00,$00,$06,$00,$00,$00,$00 ; $01719C
    dc.b $00,$05,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$FF,$00,$FF,$CE ; $0171AC
    dc.b $FD,$00,$F7,$00,$00,$01,$00,$03,$00,$01,$F8,$00,$F8,$00,$EF,$00 ; $0171BC
    dc.b $F8,$00,$EF,$00,$EF,$00,$F8,$00,$F8,$00,$EF,$00,$F6,$00,$FB,$00 ; $0171CC
    dc.b $FD,$00,$EF,$00,$EF,$00,$EF,$00,$EF,$00,$FA,$00,$00,$00,$FE,$92 ; $0171DC
    dc.b $FB,$00,$FD,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00 ; $0171EC
    dc.b $00,$02,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$04,$00,$00 ; $0171FC
    dc.b $00,$00,$00,$05,$00,$00,$00,$00,$00,$06,$00,$00,$00,$00,$00,$07 ; $01720C
    dc.b $00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$09,$00,$00,$00,$00 ; $01721C
    dc.b $FB,$00,$FD,$00,$00,$0C,$00,$00,$00,$00,$00,$0D,$00,$00,$00,$00 ; $01722C
    dc.b $00,$0E,$00,$00,$00,$00,$00,$0F,$00,$00,$00,$00,$00,$10,$00,$00 ; $01723C
    dc.b $00,$00,$00,$11,$00,$00,$00,$00,$00,$12,$00,$00,$00,$00,$00,$13 ; $01724C
    dc.b $00,$00,$00,$00,$FB,$00,$FD,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; $01725C
    dc.b $00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00 ; $01726C
    dc.b $00,$04,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$06,$00,$00 ; $01727C
    dc.b $00,$00,$00,$07,$00,$00,$00,$00,$00,$08,$00,$00,$FF,$FE,$00,$09 ; $01728C
    dc.b $00,$00,$FF,$FE,$FB,$00,$FD,$00,$00,$0A,$00,$00,$00,$00,$00,$0B ; $01729C
    dc.b $00,$00,$00,$00,$00,$0C,$00,$00,$00,$00,$00,$0D,$00,$00,$00,$00 ; $0172AC
    dc.b $00,$0E,$00,$00,$00,$00,$00,$0F,$00,$00,$00,$00,$00,$10,$00,$00 ; $0172BC
    dc.b $00,$00,$00,$11,$00,$00,$00,$00,$FB,$00,$FD,$00,$00,$11,$00,$00 ; $0172CC
    dc.b $00,$00,$00,$10,$00,$00,$00,$00,$00,$0F,$00,$00,$00,$00,$00,$0E ; $0172DC
    dc.b $00,$00,$00,$00,$00,$0D,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$00 ; $0172EC
    dc.b $00,$0B,$00,$00,$00,$00,$00,$0A,$00,$00,$00,$00,$FB,$00,$FD,$00 ; $0172FC
    dc.b $00,$12,$00,$00,$00,$00,$00,$11,$00,$00,$00,$00,$00,$10,$00,$00 ; $01730C
    dc.b $00,$00,$00,$0F,$00,$00,$00,$00,$00,$0E,$00,$00,$00,$00,$00,$0D ; $01731C
    dc.b $00,$00,$00,$00,$00,$0C,$00,$00,$00,$00,$FB,$00                 ; $01732C
L_017338:
    dc.b $FD,$00,$FB,$00                                                 ; $017338
L_01733C:
    dc.b $FD,$00,$F8,$00,$FB,$00,$00,$3E,$00,$44,$00,$4A,$00,$50,$00,$56 ; $01733C
    dc.b $00,$5E,$00,$5E,$00,$C6,$00,$EC,$01,$12,$01,$38,$01,$5E,$01,$84 ; $01734C
    dc.b $01,$AA,$01,$D0,$00,$66,$00,$72,$00,$7E,$00,$8A,$00,$96,$00,$A2 ; $01735C
    dc.b $00,$AE,$00,$BA,$01,$F6,$02,$6A,$02,$DE,$03,$52,$03,$C6,$04,$3A ; $01736C
    dc.b $04,$AE,$05,$22,$FD,$00,$EC,$00,$00,$07,$FD,$00,$EC,$00,$00,$09 ; $01737C
    dc.b $FD,$00,$EC,$00,$00,$0B,$FD,$00,$EC,$00,$00,$0D,$FA,$00,$00,$00 ; $01738C
    dc.b $A7,$06,$FB,$00,$FD,$01,$F8,$00,$FF,$00,$FF,$FC,$FD,$01,$00,$00 ; $01739C
    dc.b $00,$00,$00,$00,$EC,$00,$00,$05,$FD,$01,$00,$05,$00,$00,$00,$00 ; $0173AC
    dc.b $EC,$00,$00,$05,$FD,$01,$00,$0A,$00,$00,$00,$00,$EC,$00,$00,$05 ; $0173BC
    dc.b $FD,$01,$00,$0F,$00,$00,$00,$00,$EC,$00,$00,$05,$FD,$01,$00,$14 ; $0173CC
    dc.b $00,$00,$00,$00,$EC,$00,$00,$05,$FD,$01,$00,$19,$00,$00,$00,$00 ; $0173DC
    dc.b $EC,$00,$00,$05,$FD,$01,$00,$1E,$00,$00,$00,$00,$EC,$00,$00,$05 ; $0173EC
    dc.b $FD,$01,$00,$23,$00,$00,$00,$00,$EC,$00,$00,$05,$EE,$01,$00,$00 ; $0173FC
    dc.b $EE,$01,$00,$00,$00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00 ; $01740C
    dc.b $00,$04,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$FD,$01,$FF,$00 ; $01741C
    dc.b $FF,$DC,$EE,$09,$00,$05,$EE,$09,$00,$05,$00,$08,$00,$00,$00,$00 ; $01742C
    dc.b $00,$08,$00,$00,$00,$00,$00,$09,$00,$00,$00,$00,$00,$09,$00,$00 ; $01743C
    dc.b $00,$00,$FD,$01,$FF,$00,$FF,$DC,$EE,$08,$00,$0A,$EE,$08,$00,$0A ; $01744C
    dc.b $00,$0D,$00,$00,$00,$00,$00,$0D,$00,$00,$00,$00,$00,$0E,$00,$00 ; $01745C
    dc.b $00,$00,$00,$0E,$00,$00,$00,$00,$FD,$01,$FF,$00,$FF,$DC,$EE,$0A ; $01746C
    dc.b $00,$0F,$EE,$0A,$00,$0F,$00,$12,$00,$00,$00,$00,$00,$12,$00,$00 ; $01747C
    dc.b $00,$00,$00,$13,$00,$00,$00,$00,$00,$13,$00,$00,$00,$00,$FD,$01 ; $01748C
    dc.b $FF,$00,$FF,$DC,$EE,$02,$00,$14,$EE,$02,$00,$14,$00,$17,$00,$00 ; $01749C
    dc.b $00,$00,$00,$17,$00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00,$18 ; $0174AC
    dc.b $00,$00,$00,$00,$FD,$01,$FF,$00,$FF,$DC,$EE,$06,$00,$19,$EE,$06 ; $0174BC
    dc.b $00,$19,$00,$1C,$00,$00,$00,$00,$00,$1C,$00,$00,$00,$00,$00,$1D ; $0174CC
    dc.b $00,$00,$00,$00,$00,$1D,$00,$00,$00,$00,$FD,$01,$FF,$00,$FF,$DC ; $0174DC
    dc.b $EE,$04,$00,$1E,$EE,$04,$00,$1E,$00,$21,$00,$00,$00,$00,$00,$21 ; $0174EC
    dc.b $00,$00,$00,$00,$00,$22,$00,$00,$00,$00,$00,$22,$00,$00,$00,$00 ; $0174FC
    dc.b $FD,$01,$FF,$00,$FF,$DC,$EE,$05,$00,$23,$EE,$05,$00,$23,$00,$26 ; $01750C
    dc.b $00,$00,$00,$00,$00,$26,$00,$00,$00,$00,$00,$27,$00,$00,$00,$00 ; $01751C
    dc.b $00,$27,$00,$00,$00,$00,$FD,$01,$FF,$00,$FF,$DC,$FD,$00,$00,$00 ; $01752C
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01753C
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01754C
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01755C
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00 ; $01756C
    dc.b $00,$01,$00,$00,$00,$00,$F9,$00,$3D,$7C,$00,$01,$00,$3A,$3D,$7C ; $01757C
    dc.b $00,$02,$00,$5E,$41,$FA,$00,$04,$4E,$75,$F1,$00,$03,$40,$00,$00 ; $01758C
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FD,$FF,$EC,$00,$00,$05 ; $01759C
    dc.b $FD,$00,$00,$05,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$05 ; $0175AC
    dc.b $00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00 ; $0175BC
    dc.b $00,$05,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$05,$00,$00 ; $0175CC
    dc.b $00,$00,$00,$05,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$06 ; $0175DC
    dc.b $00,$00,$00,$00,$00,$06,$00,$00,$00,$00,$F9,$00,$3D,$7C,$00,$09 ; $0175EC
    dc.b $00,$3A,$3D,$7C,$00,$07,$00,$5E,$41,$FA,$00,$04,$4E,$75,$F1,$00 ; $0175FC
    dc.b $02,$CC,$00,$05,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$FD,$FF ; $01760C
    dc.b $EC,$00,$00,$05,$FD,$00,$00,$0A,$00,$00,$00,$00,$00,$0A,$00,$00 ; $01761C
    dc.b $00,$00,$00,$0A,$00,$00,$00,$00,$00,$0A,$00,$00,$00,$00,$00,$0A ; $01762C
    dc.b $00,$00,$00,$00,$00,$0A,$00,$00,$00,$00,$00,$0A,$00,$00,$00,$00 ; $01763C
    dc.b $00,$0A,$00,$00,$00,$00,$00,$0A,$00,$00,$00,$00,$00,$0A,$00,$00 ; $01764C
    dc.b $00,$00,$00,$0B,$00,$00,$00,$00,$00,$0B,$00,$00,$00,$00,$F9,$00 ; $01765C
    dc.b $3D,$7C,$00,$08,$00,$3A,$3D,$7C,$00,$0C,$00,$5E,$41,$FA,$00,$04 ; $01766C
    dc.b $4E,$75,$F1,$00,$02,$58,$00,$0A,$00,$00,$00,$00,$00,$0A,$00,$00 ; $01767C
    dc.b $00,$00,$FD,$FF,$EC,$00,$00,$05,$FD,$00,$00,$0F,$00,$00,$00,$00 ; $01768C
    dc.b $00,$0F,$00,$00,$00,$00,$00,$0F,$00,$00,$00,$00,$00,$0F,$00,$00 ; $01769C
    dc.b $00,$00,$00,$0F,$00,$00,$00,$00,$00,$0F,$00,$00,$00,$00,$00,$0F ; $0176AC
    dc.b $00,$00,$00,$00,$00,$0F,$00,$00,$00,$00,$00,$0F,$00,$00,$00,$00 ; $0176BC
    dc.b $00,$0F,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$00,$10,$00,$00 ; $0176CC
    dc.b $00,$00,$F9,$00,$3D,$7C,$00,$0A,$00,$3A,$3D,$7C,$00,$11,$00,$5E ; $0176DC
    dc.b $41,$FA,$00,$04,$4E,$75,$F1,$00,$01,$E4,$00,$0F,$00,$00,$00,$00 ; $0176EC
    dc.b $00,$0F,$00,$00,$00,$00,$FD,$FF,$EC,$00,$00,$05,$FD,$00,$00,$14 ; $0176FC
    dc.b $00,$00,$00,$00,$00,$14,$00,$00,$00,$00,$00,$14,$00,$00,$00,$00 ; $01770C
    dc.b $00,$14,$00,$00,$00,$00,$00,$14,$00,$00,$00,$00,$00,$14,$00,$00 ; $01771C
    dc.b $00,$00,$00,$14,$00,$00,$00,$00,$00,$14,$00,$00,$00,$00,$00,$14 ; $01772C
    dc.b $00,$00,$00,$00,$00,$14,$00,$00,$00,$00,$00,$15,$00,$00,$00,$00 ; $01773C
    dc.b $00,$15,$00,$00,$00,$00,$F9,$00,$3D,$7C,$00,$02,$00,$3A,$3D,$7C ; $01774C
    dc.b $00,$16,$00,$5E,$41,$FA,$00,$04,$4E,$75,$F1,$00,$01,$70,$00,$14 ; $01775C
    dc.b $00,$00,$00,$00,$00,$14,$00,$00,$00,$00,$FD,$FF,$EC,$00,$00,$05 ; $01776C
    dc.b $FD,$00,$00,$19,$00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$19 ; $01777C
    dc.b $00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$19,$00,$00,$00,$00 ; $01778C
    dc.b $00,$19,$00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$19,$00,$00 ; $01779C
    dc.b $00,$00,$00,$19,$00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$1A ; $0177AC
    dc.b $00,$00,$00,$00,$00,$1A,$00,$00,$00,$00,$F9,$00,$3D,$7C,$00,$06 ; $0177BC
    dc.b $00,$3A,$3D,$7C,$00,$1B,$00,$5E,$41,$FA,$00,$04,$4E,$75,$F1,$00 ; $0177CC
    dc.b $00,$FC,$00,$19,$00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$FD,$FF ; $0177DC
    dc.b $EC,$00,$00,$05,$FD,$00,$00,$1E,$00,$00,$00,$00,$00,$1E,$00,$00 ; $0177EC
    dc.b $00,$00,$00,$1E,$00,$00,$00,$00,$00,$1E,$00,$00,$00,$00,$00,$1E ; $0177FC
    dc.b $00,$00,$00,$00,$00,$1E,$00,$00,$00,$00,$00,$1E,$00,$00,$00,$00 ; $01780C
    dc.b $00,$1E,$00,$00,$00,$00,$00,$1E,$00,$00,$00,$00,$00,$1E,$00,$00 ; $01781C
    dc.b $00,$00,$00,$1F,$00,$00,$00,$00,$00,$1F,$00,$00,$00,$00,$F9,$00 ; $01782C
    dc.b $3D,$7C,$00,$04,$00,$3A,$3D,$7C,$00,$20,$00,$5E,$41,$FA,$00,$04 ; $01783C
    dc.b $4E,$75,$F1,$00,$00,$88,$00,$1E,$00,$00,$00,$00,$00,$1E,$00,$00 ; $01784C
    dc.b $00,$00,$FD,$FF,$EC,$00,$00,$05,$FD,$00,$00,$23,$00,$00,$00,$00 ; $01785C
    dc.b $00,$23,$00,$00,$00,$00,$00,$23,$00,$00,$00,$00,$00,$23,$00,$00 ; $01786C
    dc.b $00,$00,$00,$23,$00,$00,$00,$00,$00,$23,$00,$00,$00,$00,$00,$23 ; $01787C
    dc.b $00,$00,$00,$00,$00,$23,$00,$00,$00,$00,$00,$23,$00,$00,$00,$00 ; $01788C
    dc.b $00,$23,$00,$00,$00,$00,$00,$24,$00,$00,$00,$00,$00,$24,$00,$00 ; $01789C
    dc.b $00,$00,$F9,$00,$3D,$7C,$00,$05,$00,$3A,$3D,$7C,$00,$25,$00,$5E ; $0178AC
    dc.b $41,$FA,$00,$04,$4E,$75,$F1,$00,$00,$14,$00,$23,$00,$00,$00,$00 ; $0178BC
    dc.b $00,$23,$00,$00,$00,$00,$FD,$FF,$EC,$00,$00,$05,$F9,$00,$70,$00 ; $0178CC
    dc.b $74,$00,$10,$2E,$00,$4B,$61,$00,$B1,$1A,$14,$2E,$00,$4C,$E9,$4A ; $0178DC
    dc.b $4A,$40,$67,$04,$84,$C0,$66,$02,$74,$05,$1D,$42,$00,$11,$41,$FA ; $0178EC
    dc.b $00,$04,$4E,$75,$F9,$00,$70,$00,$10,$2E,$00,$4B,$32,$2E,$00,$3A ; $0178FC
    dc.b $61,$00,$B1,$78,$3D,$40,$00,$0A,$D1,$56,$3D,$41,$00,$0C,$D3,$6E ; $01790C
    dc.b $00,$02,$53,$2E,$00,$11,$6B,$0C,$41,$FA,$00,$04,$4E,$75,$F8,$00 ; $01791C
    dc.b $FF,$00,$FF,$D2,$41,$FA,$00,$04,$4E,$75,$F0,$00,$00,$2E,$00,$34 ; $01792C
    dc.b $00,$3A,$00,$40,$00,$46,$00,$50,$00,$50,$00,$58,$00,$6E,$00,$84 ; $01793C
    dc.b $00,$9A,$00,$B0,$00,$C6,$00,$DC,$00,$F2,$00,$50,$00,$50,$00,$50 ; $01794C
    dc.b $00,$50,$00,$50,$00,$50,$00,$50,$00,$50,$FD,$00,$EC,$00,$00,$07 ; $01795C
    dc.b $FD,$00,$EC,$00,$00,$09,$FD,$00,$EC,$00,$00,$0B,$FD,$00,$EC,$00 ; $01796C
    dc.b $00,$0D,$FD,$00,$FA,$00,$00,$00,$A6,$66,$FB,$00,$FD,$01,$F8,$00 ; $01797C
    dc.b $FF,$00,$FF,$FC,$EE,$01,$00,$01,$EE,$01,$00,$02,$EE,$01,$00,$03 ; $01798C
    dc.b $EE,$01,$00,$02,$FD,$01,$FF,$00,$FF,$EC,$EE,$09,$00,$04,$EE,$09 ; $01799C
    dc.b $00,$05,$EE,$09,$00,$06,$EE,$09,$00,$05,$FD,$01,$FF,$00,$FF,$EC ; $0179AC
    dc.b $EE,$08,$00,$07,$EE,$08,$00,$08,$EE,$08,$00,$09,$EE,$08,$00,$08 ; $0179BC
    dc.b $FD,$01,$FF,$00,$FF,$EC,$EE,$0A,$00,$0A,$EE,$0A,$00,$0B,$EE,$0A ; $0179CC
    dc.b $00,$0C,$EE,$0A,$00,$0B,$FD,$01,$FF,$00,$FF,$EC,$EE,$02,$00,$0D ; $0179DC
    dc.b $EE,$02,$00,$0E,$EE,$02,$00,$0F,$EE,$02,$00,$0E,$FD,$01,$FF,$00 ; $0179EC
    dc.b $FF,$EC,$EE,$06,$00,$10,$EE,$06,$00,$11,$EE,$06,$00,$12,$EE,$06 ; $0179FC
    dc.b $00,$11,$FD,$01,$FF,$00,$FF,$EC,$EE,$04,$00,$13,$EE,$04,$00,$14 ; $017A0C
    dc.b $EE,$04,$00,$15,$EE,$04,$00,$14,$FD,$01,$FF,$00,$FF,$EC,$EE,$05 ; $017A1C
    dc.b $00,$16,$EE,$05,$00,$17,$EE,$05,$00,$18,$EE,$05,$00,$17,$FD,$01 ; $017A2C
    dc.b $FF,$00,$FF,$EC,$00,$0C,$00,$0C,$00,$0C,$00,$0C,$00,$62,$00,$0C ; $017A3C
    dc.b $FD,$00,$F7,$00,$00,$01,$00,$07,$00,$01,$00,$00,$00,$00,$00,$00 ; $017A4C
    dc.b $F8,$00,$00,$01,$00,$00,$00,$00,$F8,$00,$F6,$00,$00,$00,$00,$00 ; $017A5C
    dc.b $00,$00,$F8,$00,$FA,$00,$00,$01,$17,$66,$00,$01,$00,$00,$00,$00 ; $017A6C
    dc.b $F8,$00,$F7,$00,$00,$01,$00,$0B,$00,$01,$00,$02,$00,$00,$00,$00 ; $017A7C
    dc.b $F6,$00,$00,$03,$00,$00,$00,$00,$F8,$00,$00,$01,$00,$00,$00,$00 ; $017A8C
    dc.b $F8,$00,$FF,$00,$FF,$AE,$FD,$00,$FA,$00,$00,$00,$A7,$06,$FB,$00 ; $017A9C
    dc.b $00,$0E,$00,$0E,$00,$0E,$00,$0E,$00,$6A,$00,$0E,$00,$1A,$FD,$01 ; $017AAC
    dc.b $00,$00,$00,$00,$00,$00,$FF,$00,$FF,$F8,$FD,$00,$00,$00,$00,$00 ; $017ABC
    dc.b $00,$00,$F9,$00,$2F,$00,$70,$00,$10,$3C,$00,$00,$67,$06,$4E,$B9 ; $017ACC
    dc.b $00,$00,$05,$90,$20,$1F,$41,$FA,$00,$04,$4E,$75,$00,$01,$00,$00 ; $017ADC
    dc.b $00,$00,$00,$01,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$02 ; $017AEC
    dc.b $00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00 ; $017AFC
    dc.b $FA,$00,$00,$00,$AE,$EA,$EC,$00,$00,$05,$FD,$00,$FA,$00,$00,$00 ; $017B0C
    dc.b $A7,$06,$FB,$00,$00,$2E,$00,$34,$00,$3A,$00,$40,$00,$46,$00,$50 ; $017B1C
    dc.b $00,$50,$00,$58,$00,$7E,$00,$A4,$00,$CA,$00,$F0,$01,$16,$01,$3C ; $017B2C
    dc.b $01,$62,$01,$88,$01,$94,$01,$A0,$01,$AC,$01,$B8,$01,$C4,$01,$D0 ; $017B3C
    dc.b $01,$DC,$FD,$00,$EC,$00,$00,$07,$FD,$00,$EC,$00,$00,$09,$FD,$00 ; $017B4C
    dc.b $EC,$00,$00,$0B,$FD,$00,$EC,$00,$00,$0D,$FD,$00,$FA,$00,$00,$00 ; $017B5C
    dc.b $A7,$06,$FB,$00,$FD,$01,$F8,$00,$FF,$00,$FF,$FC,$EE,$01,$00,$00 ; $017B6C
    dc.b $EE,$01,$00,$00,$EE,$01,$00,$01,$EE,$01,$00,$01,$EE,$01,$00,$02 ; $017B7C
    dc.b $EE,$01,$00,$02,$EE,$01,$00,$03,$EE,$01,$00,$03,$FD,$01,$FF,$00 ; $017B8C
    dc.b $FF,$DC,$EE,$09,$00,$04,$EE,$09,$00,$04,$EE,$09,$00,$05,$EE,$09 ; $017B9C
    dc.b $00,$05,$EE,$09,$00,$06,$EE,$09,$00,$06,$EE,$09,$00,$07,$EE,$09 ; $017BAC
    dc.b $00,$07,$FD,$01,$FF,$00,$FF,$DC,$EE,$08,$00,$08,$EE,$08,$00,$08 ; $017BBC
    dc.b $EE,$08,$00,$09,$EE,$08,$00,$09,$EE,$08,$00,$0A,$EE,$08,$00,$0A ; $017BCC
    dc.b $EE,$08,$00,$0B,$EE,$08,$00,$0B,$FD,$01,$FF,$00,$FF,$DC,$EE,$0A ; $017BDC
    dc.b $00,$0C,$EE,$0A,$00,$0C,$EE,$0A,$00,$0D,$EE,$0A,$00,$0D,$EE,$0A ; $017BEC
    dc.b $00,$0E,$EE,$0A,$00,$0E,$EE,$0A,$00,$0F,$EE,$0A,$00,$0F,$FD,$01 ; $017BFC
    dc.b $FF,$00,$FF,$DC,$EE,$02,$00,$10,$EE,$02,$00,$10,$EE,$02,$00,$11 ; $017C0C
    dc.b $EE,$02,$00,$11,$EE,$02,$00,$12,$EE,$02,$00,$12,$EE,$02,$00,$13 ; $017C1C
    dc.b $EE,$02,$00,$13,$FD,$01,$FF,$00,$FF,$DC,$EE,$06,$00,$14,$EE,$06 ; $017C2C
    dc.b $00,$14,$EE,$06,$00,$15,$EE,$06,$00,$15,$EE,$06,$00,$16,$EE,$06 ; $017C3C
    dc.b $00,$16,$EE,$06,$00,$17,$EE,$06,$00,$17,$FD,$01,$FF,$00,$FF,$DC ; $017C4C
    dc.b $EE,$04,$00,$18,$EE,$04,$00,$18,$EE,$04,$00,$19,$EE,$04,$00,$19 ; $017C5C
    dc.b $EE,$04,$00,$1A,$EE,$04,$00,$1A,$EE,$04,$00,$1B,$EE,$04,$00,$1B ; $017C6C
    dc.b $FD,$01,$FF,$00,$FF,$DC,$EE,$05,$00,$1C,$EE,$05,$00,$1C,$EE,$05 ; $017C7C
    dc.b $00,$1D,$EE,$05,$00,$1D,$EE,$05,$00,$1E,$EE,$05,$00,$1E,$EE,$05 ; $017C8C
    dc.b $00,$1F,$EE,$05,$00,$1F,$FD,$01,$FF,$00,$FF,$DC,$FD,$01,$00,$00 ; $017C9C
    dc.b $00,$00,$00,$00,$EC,$00,$00,$05,$FD,$01,$00,$04,$00,$00,$00,$00 ; $017CAC
    dc.b $EC,$00,$00,$05,$FD,$01,$00,$08,$00,$00,$00,$00,$EC,$00,$00,$05 ; $017CBC
    dc.b $FD,$01,$00,$0C,$00,$00,$00,$00,$EC,$00,$00,$05,$FD,$01,$00,$10 ; $017CCC
    dc.b $00,$00,$00,$00,$EC,$00,$00,$05,$FD,$01,$00,$14,$00,$00,$00,$00 ; $017CDC
    dc.b $EC,$00,$00,$05,$FD,$01,$00,$18,$00,$00,$00,$00,$EC,$00,$00,$05 ; $017CEC
    dc.b $FD,$01,$00,$1C,$00,$00,$00,$00,$EC,$00,$00,$05,$00,$0E,$00,$16 ; $017CFC
    dc.b $00,$0E,$00,$28,$00,$1E,$00,$0E,$00,$0E,$FD,$01,$F8,$00,$FF,$00 ; $017D0C
    dc.b $FF,$FC,$FD,$01,$EF,$00,$FF,$00,$FF,$FC,$FD,$00,$FA,$00,$00,$00 ; $017D1C
    dc.b $A7,$06,$FB,$00,$FD,$00,$F9,$00,$3D,$7C,$00,$05,$00,$08,$41,$FA ; $017D2C
    dc.b $00,$04,$4E,$75,$00,$10,$00,$00,$FF,$FE,$00,$10,$00,$00,$FF,$FE ; $017D3C
    dc.b $00,$10,$00,$00,$FF,$FE,$F9,$00,$4E,$B9,$00,$00,$D6,$96,$3D,$40 ; $017D4C
    dc.b $00,$08,$41,$FA,$00,$04,$4E,$75,$EC,$00,$00,$05,$00,$9A,$00,$76 ; $017D5C
    dc.b $00,$2E,$00,$52,$02,$A0,$01,$1E,$01,$26,$02,$AA,$01,$0E,$02,$E0 ; $017D6C
    dc.b $01,$12,$03,$16,$01,$16,$03,$4C,$01,$1A,$01,$60,$01,$60,$01,$B0 ; $017D7C
    dc.b $01,$B0,$02,$00,$02,$00,$02,$50,$02,$50,$FD,$00,$00,$10,$00,$00 ; $017D8C
    dc.b $00,$02,$00,$10,$00,$00,$00,$02,$00,$11,$00,$00,$00,$02,$00,$11 ; $017D9C
    dc.b $00,$00,$00,$02,$00,$11,$00,$00,$00,$02,$FF,$00,$00,$6A,$FD,$00 ; $017DAC
    dc.b $00,$18,$FF,$FE,$00,$00,$00,$18,$FF,$FE,$00,$00,$00,$18,$FF,$FE ; $017DBC
    dc.b $00,$00,$00,$19,$FF,$FE,$00,$00,$00,$19,$FF,$FE,$00,$00,$FF,$00 ; $017DCC
    dc.b $00,$46,$FD,$00,$00,$0A,$00,$02,$00,$00,$00,$0A,$00,$02,$00,$00 ; $017DDC
    dc.b $00,$0A,$00,$02,$00,$00,$00,$0B,$00,$02,$00,$00,$00,$0B,$00,$02 ; $017DEC
    dc.b $00,$00,$FF,$00,$00,$22,$FD,$00,$00,$03,$00,$00,$FF,$FE,$00,$03 ; $017DFC
    dc.b $00,$00,$FF,$FE,$00,$03,$00,$00,$FF,$FE,$00,$04,$00,$00,$FF,$FE ; $017E0C
    dc.b $00,$04,$00,$00,$FF,$FE,$F9,$00,$30,$2E,$00,$36,$42,$6E,$00,$36 ; $017E1C
    dc.b $0C,$40,$00,$01,$67,$1C,$0C,$40,$00,$03,$67,$20,$0C,$40,$00,$05 ; $017E2C
    dc.b $67,$24,$0C,$40,$00,$07,$67,$28,$41,$FA,$00,$04,$4E,$75,$EC,$00 ; $017E3C
    dc.b $00,$05,$41,$FA,$00,$04,$4E,$75,$EC,$00,$00,$07,$41,$FA,$00,$04 ; $017E4C
    dc.b $4E,$75,$EC,$00,$00,$09,$41,$FA,$00,$04,$4E,$75,$EC,$00,$00,$0B ; $017E5C
    dc.b $41,$FA,$00,$04,$4E,$75,$EC,$00,$00,$0D,$EC,$00,$00,$07,$EC,$00 ; $017E6C
    dc.b $00,$09,$EC,$00,$00,$0B,$EC,$00,$00,$0D,$FD,$01,$F8,$00,$FF,$00 ; $017E7C
    dc.b $FF,$FC,$FD,$00,$00,$03,$00,$00,$00,$00,$00,$06,$00,$00,$00,$00 ; $017E8C
    dc.b $00,$0A,$00,$00,$00,$00,$00,$0B,$00,$00,$00,$00,$00,$11,$00,$00 ; $017E9C
    dc.b $00,$00,$00,$14,$00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00,$1B ; $017EAC
    dc.b $00,$00,$00,$00,$FF,$00,$FF,$CC,$EC,$00,$00,$05,$FD,$00,$00,$04 ; $017EBC
    dc.b $00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00 ; $017ECC
    dc.b $00,$05,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$05,$00,$00 ; $017EDC
    dc.b $00,$00,$00,$04,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$06 ; $017EEC
    dc.b $00,$00,$00,$00,$00,$06,$00,$00,$00,$00,$00,$06,$00,$00,$00,$00 ; $017EFC
    dc.b $00,$06,$00,$00,$00,$00,$FD,$01,$EC,$00,$00,$05,$FD,$00,$00,$0B ; $017F0C
    dc.b $00,$00,$00,$00,$00,$0B,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$00 ; $017F1C
    dc.b $00,$0C,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$00,$00,$0C,$00,$00 ; $017F2C
    dc.b $00,$00,$00,$0B,$00,$00,$00,$00,$00,$0B,$00,$00,$00,$00,$00,$0D ; $017F3C
    dc.b $00,$00,$00,$00,$00,$0D,$00,$00,$00,$00,$00,$0D,$00,$00,$00,$00 ; $017F4C
    dc.b $00,$0D,$00,$00,$00,$00,$FD,$01,$EC,$00,$00,$05,$FD,$00,$00,$12 ; $017F5C
    dc.b $00,$00,$00,$00,$00,$12,$00,$00,$00,$00,$00,$13,$00,$00,$00,$00 ; $017F6C
    dc.b $00,$13,$00,$00,$00,$00,$00,$13,$00,$00,$00,$00,$00,$13,$00,$00 ; $017F7C
    dc.b $00,$00,$00,$12,$00,$00,$00,$00,$00,$12,$00,$00,$00,$00,$00,$14 ; $017F8C
    dc.b $00,$00,$00,$00,$00,$14,$00,$00,$00,$00,$00,$14,$00,$00,$00,$00 ; $017F9C
    dc.b $00,$14,$00,$00,$00,$00,$FD,$01,$EC,$00,$00,$05,$FD,$00,$00,$19 ; $017FAC
    dc.b $00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$1A,$00,$00,$00,$00 ; $017FBC
    dc.b $00,$1A,$00,$00,$00,$00,$00,$1A,$00,$00,$00,$00,$00,$1A,$00,$00 ; $017FCC
    dc.b $00,$00,$00,$19,$00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$1B ; $017FDC
    dc.b $00,$00,$00,$00,$00,$1B,$00,$00,$00,$00,$00,$1B,$00,$00,$00,$00 ; $017FEC
    dc.b $00,$1B,$00,$00,$00,$00,$FD,$01,$EC,$00,$00,$05,$FD,$00,$FA,$00 ; $017FFC
    dc.b $00,$00,$A7,$06,$FB,$00,$EE,$01,$00,$00,$EE,$01,$00,$00,$EE,$01 ; $01800C
    dc.b $00,$00,$EE,$01,$00,$01,$EE,$01,$00,$01,$EE,$01,$00,$01,$EE,$01 ; $01801C
    dc.b $00,$02,$EE,$01,$00,$02,$EE,$01,$00,$02,$EE,$01,$00,$03,$EE,$01 ; $01802C
    dc.b $00,$03,$EE,$01,$00,$03,$FD,$01,$FF,$00,$FF,$CC,$EE,$08,$00,$07 ; $01803C
    dc.b $EE,$08,$00,$07,$EE,$08,$00,$07,$EE,$08,$00,$08,$EE,$08,$00,$08 ; $01804C
    dc.b $EE,$08,$00,$08,$EE,$08,$00,$09,$EE,$08,$00,$09,$EE,$08,$00,$09 ; $01805C
    dc.b $EE,$08,$00,$0A,$EE,$08,$00,$0A,$EE,$08,$00,$0A,$FD,$01,$FF,$00 ; $01806C
    dc.b $FF,$CC,$EE,$02,$00,$0E,$EE,$02,$00,$0E,$EE,$02,$00,$0E,$EE,$02 ; $01807C
    dc.b $00,$0F,$EE,$02,$00,$0F,$EE,$02,$00,$0F,$EE,$02,$00,$10,$EE,$02 ; $01808C
    dc.b $00,$10,$EE,$02,$00,$10,$EE,$02,$00,$11,$EE,$02,$00,$11,$EE,$02 ; $01809C
    dc.b $00,$11,$FD,$01,$FF,$00,$FF,$CC,$EE,$04,$00,$15,$EE,$04,$00,$15 ; $0180AC
    dc.b $EE,$04,$00,$15,$EE,$04,$00,$16,$EE,$04,$00,$16,$EE,$04,$00,$16 ; $0180BC
    dc.b $EE,$04,$00,$17,$EE,$04,$00,$17,$EE,$04,$00,$17,$EE,$04,$00,$18 ; $0180CC
    dc.b $EE,$04,$00,$18,$EE,$04,$00,$18,$FD,$01,$FF,$00,$FF,$CC,$00,$0E ; $0180DC
    dc.b $00,$1A,$00,$26,$00,$32,$00,$84,$00,$64,$00,$8E,$FD,$00,$F9,$00 ; $0180EC
    dc.b $3D,$7C,$00,$01,$00,$3A,$60,$22,$FD,$00,$F9,$00,$3D,$7C,$00,$08 ; $0180FC
    dc.b $00,$3A,$60,$16,$FD,$00,$F9,$00,$3D,$7C,$00,$02,$00,$3A,$60,$0A ; $01810C
    dc.b $FD,$00,$F9,$00,$3D,$7C,$00,$04,$00,$3A,$3D,$7C,$00,$0A,$00,$66 ; $01811C
    dc.b $30,$2E,$00,$0E,$32,$2E,$00,$3A,$4E,$BA,$A8,$C8,$4E,$BA,$A9,$4C ; $01812C
    dc.b $3D,$40,$00,$0A,$3D,$41,$00,$0C,$41,$FA,$00,$04,$4E,$75,$EC,$00 ; $01813C
    dc.b $00,$06,$FD,$01,$F9,$00,$30,$2E,$00,$3A,$4E,$BA,$AD,$B6,$D0,$40 ; $01814C
    dc.b $D0,$40,$3D,$40,$00,$5E,$41,$FA,$00,$04,$4E,$75,$F8,$00,$FF,$00 ; $01815C
    dc.b $FF,$FC,$FD,$00,$FA,$00,$00,$00,$A7,$06,$FB,$00,$FD,$00,$F9,$00 ; $01816C
    dc.b $30,$2E,$00,$3A,$4E,$BA,$AD,$8C,$D0,$40,$D0,$40,$3D,$40,$00,$5E ; $01817C
    dc.b $30,$2E,$00,$66,$1D,$40,$00,$11,$E2,$48,$1D,$40,$00,$10,$2F,$00 ; $01818C
    dc.b $70,$00,$10,$3C,$00,$7A,$67,$06,$4E,$B9,$00,$00,$05,$90,$20,$1F ; $01819C
    dc.b $41,$FA,$00,$04,$4E,$75,$F8,$00,$F8,$00,$ED,$00,$00,$01,$F8,$00 ; $0181AC
    dc.b $F8,$00,$ED,$00,$00,$01,$F9,$00,$53,$6E,$00,$66,$6A,$0A,$41,$FA ; $0181BC
    dc.b $00,$04,$4E,$75,$EC,$00,$00,$05,$0C,$6E,$00,$06,$00,$66,$66,$04 ; $0181CC
    dc.b $52,$6E,$00,$5E,$30,$2E,$00,$0E,$32,$2E,$00,$3A,$08,$2E,$00,$04 ; $0181DC
    dc.b $00,$45,$67,$00,$00,$06,$30,$2D,$09,$3E,$4E,$BA,$A8,$06,$4E,$BA ; $0181EC
    dc.b $A8,$8A,$3D,$40,$00,$0A,$3D,$41,$00,$0C,$4E,$BA,$90,$3A,$53,$2E ; $0181FC
    dc.b $00,$10,$53,$2E,$00,$11,$42,$2E,$00,$3D,$41,$FA,$00,$04,$4E,$75 ; $01820C
    dc.b $F8,$00,$FF,$00,$FF,$A2,$00,$0E,$00,$0E,$00,$0E,$00,$0E,$00,$1C ; $01821C
    dc.b $00,$0E,$00,$0E,$FD,$01,$00,$00,$00,$00,$00,$00,$F8,$00,$FF,$00 ; $01822C
    dc.b $FF,$FC,$FD,$00,$FA,$00,$00,$00,$A7,$06,$FB,$00,$00,$84,$00,$F8 ; $01823C
    dc.b $01,$6C,$01,$E0,$00,$70,$00,$2E,$00,$2E,$00,$84,$00,$BE,$00,$F8 ; $01824C
    dc.b $01,$32,$01,$6C,$01,$A6,$01,$E0,$02,$1A,$00,$2E,$00,$2E,$00,$2E ; $01825C
    dc.b $00,$2E,$00,$2E,$00,$2E,$00,$2E,$00,$2E,$FD,$00,$00,$00,$00,$00 ; $01826C
    dc.b $00,$00,$00,$01,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$03 ; $01827C
    dc.b $00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00 ; $01828C
    dc.b $00,$06,$00,$00,$00,$00,$00,$07,$00,$00,$00,$00,$00,$08,$00,$00 ; $01829C
    dc.b $00,$00,$FD,$FF,$F8,$00,$F8,$00,$FF,$00,$FF,$C2,$FD,$00,$F9,$00 ; $0182AC
    dc.b $70,$19,$4E,$B9,$00,$00,$AE,$EE,$41,$FA,$00,$04,$4E,$75,$FB,$00 ; $0182BC
    dc.b $FD,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$02 ; $0182CC
    dc.b $00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$EE,$01,$00,$04,$EE,$01 ; $0182DC
    dc.b $00,$05,$EE,$01,$00,$06,$EE,$01,$00,$07,$00,$08,$00,$00,$00,$00 ; $0182EC
    dc.b $F8,$00,$F8,$00,$FD,$FF,$FF,$00,$FF,$CA,$FD,$00,$00,$00,$00,$00 ; $0182FC
    dc.b $00,$00,$00,$01,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$03 ; $01830C
    dc.b $00,$00,$00,$00,$EE,$09,$00,$04,$EE,$09,$00,$05,$EE,$09,$00,$06 ; $01831C
    dc.b $EE,$09,$00,$07,$00,$08,$00,$00,$00,$00,$F8,$00,$F8,$00,$FD,$FF ; $01832C
    dc.b $FF,$00,$FF,$CA,$FD,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00 ; $01833C
    dc.b $00,$00,$00,$02,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$EE,$08 ; $01834C
    dc.b $00,$04,$EE,$08,$00,$05,$EE,$08,$00,$06,$EE,$08,$00,$07,$00,$08 ; $01835C
    dc.b $00,$00,$00,$00,$F8,$00,$F8,$00,$FD,$FF,$FF,$00,$FF,$CA,$FD,$00 ; $01836C
    dc.b $00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$02,$00,$00 ; $01837C
    dc.b $00,$00,$00,$03,$00,$00,$00,$00,$EE,$0A,$00,$04,$EE,$0A,$00,$05 ; $01838C
    dc.b $EE,$0A,$00,$06,$EE,$0A,$00,$07,$00,$08,$00,$00,$00,$00,$F8,$00 ; $01839C
    dc.b $F8,$00,$FD,$FF,$FF,$00,$FF,$CA,$FD,$00,$00,$00,$00,$00,$00,$00 ; $0183AC
    dc.b $00,$01,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$03,$00,$00 ; $0183BC
    dc.b $00,$00,$EE,$02,$00,$04,$EE,$02,$00,$05,$EE,$02,$00,$06,$EE,$02 ; $0183CC
    dc.b $00,$07,$00,$08,$00,$00,$00,$00,$F8,$00,$F8,$00,$FD,$FF,$FF,$00 ; $0183DC
    dc.b $FF,$CA,$FD,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00 ; $0183EC
    dc.b $00,$02,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$EE,$06,$00,$04 ; $0183FC
    dc.b $EE,$06,$00,$05,$EE,$06,$00,$06,$EE,$06,$00,$07,$00,$08,$00,$00 ; $01840C
    dc.b $00,$00,$F8,$00,$F8,$00,$FD,$FF,$FF,$00,$FF,$CA,$FD,$00,$00,$00 ; $01841C
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00 ; $01842C
    dc.b $00,$03,$00,$00,$00,$00,$EE,$04,$00,$04,$EE,$04,$00,$05,$EE,$04 ; $01843C
    dc.b $00,$06,$EE,$04,$00,$07,$00,$08,$00,$00,$00,$00,$F8,$00,$F8,$00 ; $01844C
    dc.b $FD,$FF,$FF,$00,$FF,$CA,$FD,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; $01845C
    dc.b $00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00 ; $01846C
    dc.b $EE,$05,$00,$04,$EE,$05,$00,$05,$EE,$05,$00,$06,$EE,$05,$00,$07 ; $01847C
    dc.b $00,$08,$00,$00,$00,$00,$F8,$00,$F8,$00,$FD,$FF,$FF,$00,$FF,$CA ; $01848C
    dc.b $00,$0E,$00,$1A,$00,$62,$00,$80,$01,$1C,$00,$0E,$00,$E6,$FD,$01 ; $01849C
    dc.b $00,$00,$00,$00,$00,$00,$FF,$00,$FF,$F8,$FD,$01,$00,$00,$00,$00 ; $0184AC
    dc.b $00,$00,$00,$01,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$01 ; $0184BC
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00 ; $0184CC
    dc.b $00,$01,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$02,$00,$00 ; $0184DC
    dc.b $00,$00,$00,$02,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$EC,$00 ; $0184EC
    dc.b $00,$03,$FD,$01,$00,$01,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00 ; $0184FC
    dc.b $00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$EC,$00,$00,$00 ; $01850C
    dc.b $FD,$01,$00,$09,$00,$00,$00,$00,$00,$0A,$00,$00,$00,$00,$00,$0B ; $01851C
    dc.b $00,$00,$00,$00,$00,$0C,$00,$00,$00,$00,$00,$0D,$00,$00,$00,$00 ; $01852C
    dc.b $00,$0E,$00,$00,$00,$00,$00,$0F,$00,$00,$00,$00,$00,$10,$00,$00 ; $01853C
    dc.b $00,$00,$00,$11,$00,$00,$00,$00,$00,$12,$00,$00,$00,$00,$00,$13 ; $01854C
    dc.b $00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00 ; $01855C
    dc.b $00,$06,$00,$00,$00,$00,$00,$07,$00,$00,$00,$00,$00,$08,$00,$00 ; $01856C
    dc.b $00,$00,$FF,$00,$FF,$9E,$FD,$00,$00,$00,$00,$00,$00,$00,$00,$01 ; $01857C
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00 ; $01858C
    dc.b $00,$02,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$03,$00,$00 ; $01859C
    dc.b $00,$00,$FA,$00,$00,$00,$AE,$EA,$EC,$00,$00,$05,$FD,$00,$FA,$00 ; $0185AC
    dc.b $00,$00,$A7,$06,$FB,$00,$F7,$00,$00,$01,$00,$03,$00,$01,$F8,$00 ; $0185BC
    dc.b $F6,$00,$F9,$00,$45,$FA,$00,$1E,$78,$0E,$4E,$B9,$00,$00,$BC,$E6 ; $0185CC
    dc.b $41,$FA,$00,$04,$4E,$75,$F7,$00,$00,$01,$00,$0F,$00,$01,$F8,$00 ; $0185DC
    dc.b $F6,$00,$FB,$00,$F7,$00,$00,$01,$00,$03,$00,$01,$F8,$00,$F6,$00 ; $0185EC
    dc.b $F9,$00,$45,$FA,$00,$1E,$78,$0F,$4E,$B9,$00,$00,$BC,$E6,$41,$FA ; $0185FC
    dc.b $00,$04,$4E,$75,$F7,$00,$00,$01,$00,$0A,$00,$01,$F8,$00,$F6,$00 ; $01860C
    dc.b $FB,$00,$F7,$00,$00,$01,$00,$03,$00,$01,$F8,$00,$F6,$00,$F9,$00 ; $01861C
    dc.b $45,$FA,$00,$1E,$78,$10,$4E,$B9,$00,$00,$BC,$E6,$41,$FA,$00,$04 ; $01862C
    dc.b $4E,$75,$F7,$00,$00,$01,$00,$05,$00,$01,$F8,$00,$F6,$00,$FB,$00 ; $01863C
    dc.b $F7,$00,$00,$01,$00,$03,$00,$01,$F8,$00,$F6,$00,$FB,$00,$00,$3E ; $01864C
    dc.b $00,$56,$00,$6E,$00,$86,$00,$2E,$00,$36,$00,$36,$00,$9E,$00,$FC ; $01865C
    dc.b $01,$5A,$01,$B8,$02,$16,$02,$74,$02,$D2,$03,$30,$00,$3E,$00,$4A ; $01866C
    dc.b $00,$56,$00,$62,$00,$6E,$00,$7A,$00,$86,$00,$92,$FA,$00,$00,$00 ; $01867C
    dc.b $A7,$06,$FB,$00,$FD,$01,$F8,$00,$FF,$00,$FF,$FC,$FD,$01,$00,$00 ; $01868C
    dc.b $00,$00,$00,$00,$FF,$00,$FF,$EE,$FD,$01,$00,$04,$00,$00,$00,$00 ; $01869C
    dc.b $FF,$00,$FF,$E2,$FD,$01,$00,$08,$00,$00,$00,$00,$FF,$00,$FF,$D6 ; $0186AC
    dc.b $FD,$01,$00,$0C,$00,$00,$00,$00,$FF,$00,$FF,$CA,$FD,$01,$00,$10 ; $0186BC
    dc.b $00,$00,$00,$00,$FF,$00,$FF,$BE,$FD,$01,$00,$14,$00,$00,$00,$00 ; $0186CC
    dc.b $FF,$00,$FF,$B2,$FD,$01,$00,$18,$00,$00,$00,$00,$FF,$00,$FF,$A6 ; $0186DC
    dc.b $FD,$01,$00,$1C,$00,$00,$00,$00,$FF,$00,$FF,$9A,$FD,$00,$00,$00 ; $0186EC
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00 ; $0186FC
    dc.b $00,$02,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$02,$00,$00 ; $01870C
    dc.b $00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FA,$00 ; $01871C
    dc.b $00,$00,$AE,$EA,$F7,$00,$00,$01,$00,$0A,$00,$01,$00,$03,$00,$00 ; $01872C
    dc.b $00,$00,$F6,$00,$00,$02,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00 ; $01873C
    dc.b $00,$00,$00,$00,$00,$00,$EC,$00,$00,$05,$FD,$00,$00,$04,$00,$00 ; $01874C
    dc.b $00,$00,$00,$05,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$06 ; $01875C
    dc.b $00,$00,$00,$00,$00,$06,$00,$00,$00,$00,$00,$06,$00,$00,$00,$00 ; $01876C
    dc.b $00,$05,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$FA,$00,$00,$00 ; $01877C
    dc.b $AE,$EA,$F7,$00,$00,$01,$00,$0A,$00,$01,$00,$07,$00,$00,$00,$00 ; $01878C
    dc.b $F6,$00,$00,$06,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$04 ; $01879C
    dc.b $00,$00,$00,$00,$EC,$00,$00,$05,$FD,$00,$00,$08,$00,$00,$00,$00 ; $0187AC
    dc.b $00,$09,$00,$00,$00,$00,$00,$09,$00,$00,$00,$00,$00,$0A,$00,$00 ; $0187BC
    dc.b $00,$00,$00,$0A,$00,$00,$00,$00,$00,$0A,$00,$00,$00,$00,$00,$09 ; $0187CC
    dc.b $00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$FA,$00,$00,$00,$AE,$EA ; $0187DC
    dc.b $F7,$00,$00,$01,$00,$0A,$00,$01,$00,$0B,$00,$00,$00,$00,$F6,$00 ; $0187EC
    dc.b $00,$0A,$00,$00,$00,$00,$00,$09,$00,$00,$00,$00,$00,$08,$00,$00 ; $0187FC
    dc.b $00,$00,$EC,$00,$00,$05,$FD,$00,$00,$0C,$00,$00,$00,$00,$00,$0D ; $01880C
    dc.b $00,$00,$00,$00,$00,$0D,$00,$00,$00,$00,$00,$0E,$00,$00,$00,$00 ; $01881C
    dc.b $00,$0E,$00,$00,$00,$00,$00,$0E,$00,$00,$00,$00,$00,$0D,$00,$00 ; $01882C
    dc.b $00,$00,$00,$0C,$00,$00,$00,$00,$FA,$00,$00,$00,$AE,$EA,$F7,$00 ; $01883C
    dc.b $00,$01,$00,$0A,$00,$01,$00,$0F,$00,$00,$00,$00,$F6,$00,$00,$0E ; $01884C
    dc.b $00,$00,$00,$00,$00,$0D,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$00 ; $01885C
    dc.b $EC,$00,$00,$05,$FD,$00,$00,$10,$00,$00,$00,$00,$00,$11,$00,$00 ; $01886C
    dc.b $00,$00,$00,$11,$00,$00,$00,$00,$00,$12,$00,$00,$00,$00,$00,$12 ; $01887C
    dc.b $00,$00,$00,$00,$00,$12,$00,$00,$00,$00,$00,$11,$00,$00,$00,$00 ; $01888C
    dc.b $00,$10,$00,$00,$00,$00,$FA,$00,$00,$00,$AE,$EA,$F7,$00,$00,$01 ; $01889C
    dc.b $00,$0A,$00,$01,$00,$13,$00,$00,$00,$00,$F6,$00,$00,$12,$00,$00 ; $0188AC
    dc.b $00,$00,$00,$11,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$EC,$00 ; $0188BC
    dc.b $00,$05,$FD,$00,$00,$14,$00,$00,$00,$00,$00,$15,$00,$00,$00,$00 ; $0188CC
    dc.b $00,$15,$00,$00,$00,$00,$00,$16,$00,$00,$00,$00,$00,$16,$00,$00 ; $0188DC
    dc.b $00,$00,$00,$16,$00,$00,$00,$00,$00,$15,$00,$00,$00,$00,$00,$14 ; $0188EC
    dc.b $00,$00,$00,$00,$FA,$00,$00,$00,$AE,$EA,$F7,$00,$00,$01,$00,$0A ; $0188FC
    dc.b $00,$01,$00,$17,$00,$00,$00,$00,$F6,$00,$00,$16,$00,$00,$00,$00 ; $01890C
    dc.b $00,$15,$00,$00,$00,$00,$00,$14,$00,$00,$00,$00,$EC,$00,$00,$05 ; $01891C
    dc.b $FD,$00,$00,$18,$00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$19 ; $01892C
    dc.b $00,$00,$00,$00,$00,$1A,$00,$00,$00,$00,$00,$1A,$00,$00,$00,$00 ; $01893C
    dc.b $00,$1A,$00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$18,$00,$00 ; $01894C
    dc.b $00,$00,$FA,$00,$00,$00,$AE,$EA,$F7,$00,$00,$01,$00,$0A,$00,$01 ; $01895C
    dc.b $00,$1B,$00,$00,$00,$00,$F6,$00,$00,$1A,$00,$00,$00,$00,$00,$19 ; $01896C
    dc.b $00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$EC,$00,$00,$05,$FD,$00 ; $01897C
    dc.b $00,$1C,$00,$00,$00,$00,$00,$1D,$00,$00,$00,$00,$00,$1D,$00,$00 ; $01898C
    dc.b $00,$00,$00,$1E,$00,$00,$00,$00,$00,$1E,$00,$00,$00,$00,$00,$1E ; $01899C
    dc.b $00,$00,$00,$00,$00,$1D,$00,$00,$00,$00,$00,$1C,$00,$00,$00,$00 ; $0189AC
    dc.b $FA,$00,$00,$00,$AE,$EA,$F7,$00,$00,$01,$00,$0A,$00,$01,$00,$1F ; $0189BC
    dc.b $00,$00,$00,$00,$F6,$00,$00,$1E,$00,$00,$00,$00,$00,$1D,$00,$00 ; $0189CC
    dc.b $00,$00,$00,$1C,$00,$00,$00,$00,$EC,$00,$00,$05,$00,$0E,$00,$0E ; $0189DC
    dc.b $00,$0E,$00,$0E,$00,$F2,$00,$0E,$00,$62,$FD,$01,$00,$00,$00,$00 ; $0189EC
    dc.b $00,$00,$F9,$00,$4A,$6E,$00,$50,$6A,$10,$3D,$6E,$00,$4E,$00,$50 ; $0189FC
    dc.b $41,$FA,$00,$04,$4E,$75,$EC,$00,$00,$06,$41,$FA,$00,$04,$4E,$75 ; $018A0C
    dc.b $00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$01,$00,$00 ; $018A1C
    dc.b $00,$00,$00,$02,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$03 ; $018A2C
    dc.b $00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$FF,$00,$FF,$B0,$FD,$00 ; $018A3C
    dc.b $00,$01,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$02,$00,$00 ; $018A4C
    dc.b $00,$00,$00,$02,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$04 ; $018A5C
    dc.b $00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00 ; $018A6C
    dc.b $F9,$00,$70,$00,$10,$2E,$00,$4B,$3C,$16,$3E,$2E,$00,$02,$50,$46 ; $018A7C
    dc.b $06,$47,$00,$14,$4E,$B9,$00,$00,$A8,$C8,$52,$6D,$07,$02,$2F,$00 ; $018A8C
    dc.b $70,$00,$10,$3C,$00,$5F,$67,$06,$4E,$B9,$00,$00,$05,$90,$20,$1F ; $018A9C
    dc.b $41,$FA,$00,$04,$4E,$75,$00,$04,$00,$00,$00,$00,$00,$04,$00,$00 ; $018AAC
    dc.b $00,$00,$00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$01 ; $018ABC
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$EC,$00,$00,$05,$FD,$00 ; $018ACC
    dc.b $FA,$00,$00,$00,$A7,$06,$F7,$00,$00,$01,$00,$05,$00,$01,$EF,$00 ; $018ADC
    dc.b $F6,$00,$F9,$00,$3E,$2E,$00,$52,$53,$47,$6B,$00,$00,$88,$3F,$07 ; $018AEC
    dc.b $70,$00,$10,$2E,$00,$4B,$3C,$16,$3E,$2E,$00,$02,$50,$46,$06,$47 ; $018AFC
    dc.b $00,$14,$4E,$B9,$00,$00,$A8,$C8,$4E,$B9,$00,$00,$36,$1C,$02,$40 ; $018B0C
    dc.b $00,$3F,$04,$40,$00,$20,$D1,$54,$4E,$B9,$00,$00,$36,$1C,$02,$40 ; $018B1C
    dc.b $00,$3F,$04,$40,$00,$20,$D1,$6C,$00,$02,$C9,$4E,$4E,$B9,$00,$00 ; $018B2C
    dc.b $D6,$96,$C9,$4E,$32,$2E,$00,$08,$B0,$41,$66,$12,$39,$41,$00,$08 ; $018B3C
    dc.b $48,$40,$02,$40,$38,$00,$67,$10,$0C,$40,$30,$00,$67,$0A,$38,$AC ; $018B4C
    dc.b $00,$04,$39,$6C,$00,$06,$00,$02,$52,$6D,$07,$02,$3E,$1F,$51,$CF ; $018B5C
    dc.b $FF,$8E,$2F,$00,$70,$00,$10,$3C,$00,$5F,$67,$06,$4E,$B9,$00,$00 ; $018B6C
    dc.b $05,$90,$20,$1F,$41,$FA,$00,$04,$4E,$75,$FB,$00,$00,$2E,$00,$34 ; $018B7C
    dc.b $00,$3A,$00,$40,$00,$46,$00,$4E,$00,$4E,$00,$56,$00,$80,$00,$AA ; $018B8C
    dc.b $00,$D4,$00,$FE,$01,$28,$01,$52,$01,$7C,$00,$4E,$00,$4E,$00,$4E ; $018B9C
    dc.b $00,$4E,$00,$4E,$00,$4E,$00,$4E,$00,$4E,$FD,$00,$EC,$00,$00,$07 ; $018BAC
    dc.b $FD,$00,$EC,$00,$00,$09,$FD,$00,$EC,$00,$00,$0B,$FD,$00,$EC,$00 ; $018BBC
    dc.b $00,$0D,$FA,$00,$00,$00,$A6,$66,$FB,$00,$FD,$01,$F8,$00,$FF,$00 ; $018BCC
    dc.b $FF,$FC,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$02 ; $018BDC
    dc.b $00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$EE,$01,$00,$02,$EE,$01 ; $018BEC
    dc.b $00,$01,$EE,$01,$00,$00,$FD,$01,$FF,$00,$FF,$D8,$00,$04,$00,$00 ; $018BFC
    dc.b $00,$00,$00,$05,$00,$00,$00,$00,$00,$06,$00,$00,$00,$00,$00,$07 ; $018C0C
    dc.b $00,$00,$00,$00,$EE,$09,$00,$06,$EE,$09,$00,$05,$EE,$09,$00,$04 ; $018C1C
    dc.b $FD,$01,$FF,$00,$FF,$D8,$00,$08,$00,$00,$00,$00,$00,$09,$00,$00 ; $018C2C
    dc.b $00,$00,$00,$0A,$00,$00,$00,$00,$00,$0B,$00,$00,$00,$00,$EE,$08 ; $018C3C
    dc.b $00,$0A,$EE,$08,$00,$09,$EE,$08,$00,$08,$FD,$01,$FF,$00,$FF,$D8 ; $018C4C
    dc.b $00,$0C,$00,$00,$00,$00,$00,$0D,$00,$00,$00,$00,$00,$0E,$00,$00 ; $018C5C
    dc.b $00,$00,$00,$0F,$00,$00,$00,$00,$EE,$0A,$00,$0E,$EE,$0A,$00,$0D ; $018C6C
    dc.b $EE,$0A,$00,$0C,$FD,$01,$FF,$00,$FF,$D8,$00,$10,$00,$00,$00,$00 ; $018C7C
    dc.b $00,$11,$00,$00,$00,$00,$00,$12,$00,$00,$00,$00,$00,$13,$00,$00 ; $018C8C
    dc.b $00,$00,$EE,$02,$00,$12,$EE,$02,$00,$11,$EE,$02,$00,$10,$FD,$01 ; $018C9C
    dc.b $FF,$00,$FF,$D8,$00,$14,$00,$00,$00,$00,$00,$15,$00,$00,$00,$00 ; $018CAC
    dc.b $00,$16,$00,$00,$00,$00,$00,$17,$00,$00,$00,$00,$EE,$06,$00,$16 ; $018CBC
    dc.b $EE,$06,$00,$15,$EE,$06,$00,$14,$FD,$01,$FF,$00,$FF,$D8,$00,$18 ; $018CCC
    dc.b $00,$00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$1A,$00,$00,$00,$00 ; $018CDC
    dc.b $00,$1B,$00,$00,$00,$00,$EE,$04,$00,$1A,$EE,$04,$00,$19,$EE,$04 ; $018CEC
    dc.b $00,$18,$FD,$01,$FF,$00,$FF,$D8,$00,$1C,$00,$00,$00,$00,$00,$1D ; $018CFC
    dc.b $00,$00,$00,$00,$00,$1E,$00,$00,$00,$00,$00,$1F,$00,$00,$00,$00 ; $018D0C
    dc.b $EE,$05,$00,$1E,$EE,$05,$00,$1D,$EE,$05,$00,$1C,$FD,$01,$FF,$00 ; $018D1C
    dc.b $FF,$D8,$00,$2E,$00,$34,$00,$3A,$00,$40,$00,$46,$00,$50,$00,$50 ; $018D2C
    dc.b $00,$58,$00,$6E,$00,$84,$00,$9A,$00,$B0,$00,$C6,$00,$DC,$00,$F2 ; $018D3C
    dc.b $00,$50,$00,$50,$00,$50,$00,$50,$00,$50,$00,$50,$00,$50,$00,$50 ; $018D4C
    dc.b $FD,$00,$EC,$00,$00,$07,$FD,$00,$EC,$00,$00,$09,$FD,$00,$EC,$00 ; $018D5C
    dc.b $00,$0B,$FD,$00,$EC,$00,$00,$0D,$FD,$00,$FA,$00,$00,$00,$A6,$66 ; $018D6C
    dc.b $FB,$00,$FD,$01,$F8,$00,$FF,$00,$FF,$FC,$EE,$01,$00,$00,$EE,$01 ; $018D7C
    dc.b $00,$01,$EE,$01,$00,$02,$EE,$01,$00,$03,$FD,$01,$FF,$00,$FF,$EC ; $018D8C
    dc.b $EE,$09,$00,$04,$EE,$09,$00,$05,$EE,$09,$00,$06,$EE,$09,$00,$07 ; $018D9C
    dc.b $FD,$01,$FF,$00,$FF,$EC,$EE,$08,$00,$08,$EE,$08,$00,$09,$EE,$08 ; $018DAC
    dc.b $00,$0A,$EE,$08,$00,$0B,$FD,$01,$FF,$00,$FF,$EC,$EE,$0A,$00,$0C ; $018DBC
    dc.b $EE,$0A,$00,$0D,$EE,$0A,$00,$0E,$EE,$0A,$00,$0F,$FD,$01,$FF,$00 ; $018DCC
    dc.b $FF,$EC,$EE,$02,$00,$10,$EE,$02,$00,$11,$EE,$02,$00,$12,$EE,$02 ; $018DDC
    dc.b $00,$13,$FD,$01,$FF,$00,$FF,$EC,$EE,$06,$00,$14,$EE,$06,$00,$15 ; $018DEC
    dc.b $EE,$06,$00,$16,$EE,$06,$00,$17,$FD,$01,$FF,$00,$FF,$EC,$EE,$04 ; $018DFC
    dc.b $00,$18,$EE,$04,$00,$19,$EE,$04,$00,$1A,$EE,$04,$00,$1B,$FD,$01 ; $018E0C
    dc.b $FF,$00,$FF,$EC,$EE,$05,$00,$1C,$EE,$05,$00,$1D,$EE,$05,$00,$1E ; $018E1C
    dc.b $EE,$05,$00,$1F,$FD,$01,$FF,$00,$FF,$EC,$00,$0E,$00,$1A,$00,$26 ; $018E2C
    dc.b $00,$32,$00,$86,$00,$64,$00,$90,$FD,$00,$F9,$00,$3D,$7C,$00,$01 ; $018E3C
    dc.b $00,$3A,$60,$22,$FD,$00,$F9,$00,$3D,$7C,$00,$08,$00,$3A,$60,$16 ; $018E4C
    dc.b $FD,$00,$F9,$00,$3D,$7C,$00,$02,$00,$3A,$60,$0A,$FD,$00,$F9,$00 ; $018E5C
    dc.b $3D,$7C,$00,$04,$00,$3A,$3D,$7C,$00,$0A,$00,$66,$30,$2E,$00,$0E ; $018E6C
    dc.b $32,$2E,$00,$3A,$4E,$BA,$9B,$7C,$4E,$BA,$9C,$00,$3D,$40,$00,$0A ; $018E7C
    dc.b $3D,$41,$00,$0C,$41,$FA,$00,$04,$4E,$75,$EC,$00,$00,$06,$FD,$01 ; $018E8C
    dc.b $F9,$00,$30,$2E,$00,$3A,$4E,$BA,$A0,$6A,$C0,$FC,$00,$05,$52,$40 ; $018E9C
    dc.b $3D,$40,$00,$5E,$41,$FA,$00,$04,$4E,$75,$F8,$00,$FF,$00,$FF,$FC ; $018EAC
    dc.b $FD,$00,$FA,$00,$00,$00,$A7,$06,$FB,$00,$FD,$00,$F9,$00,$30,$2E ; $018EBC
    dc.b $00,$3A,$4E,$BA,$A0,$3E,$C0,$FC,$00,$05,$52,$40,$3D,$40,$00,$5E ; $018ECC
    dc.b $30,$2E,$00,$66,$1D,$40,$00,$11,$E2,$48,$1D,$40,$00,$10,$41,$FA ; $018EDC
    dc.b $00,$04,$4E,$75,$ED,$00,$FF,$FF,$F8,$00,$F8,$00,$ED,$00,$00,$01 ; $018EEC
    dc.b $F8,$00,$F8,$00,$ED,$00,$00,$01,$F8,$00,$F8,$00,$ED,$00,$00,$01 ; $018EFC
    dc.b $F8,$00,$F8,$00,$ED,$00,$00,$01,$F9,$00,$53,$6E,$00,$66,$6A,$10 ; $018F0C
    dc.b $08,$EE,$00,$00,$00,$41,$41,$FA,$00,$04,$4E,$75,$EC,$00,$00,$05 ; $018F1C
    dc.b $0C,$6E,$00,$02,$00,$66,$66,$04,$53,$6E,$00,$5E,$30,$2E,$00,$0E ; $018F2C
    dc.b $32,$2E,$00,$3A,$08,$2E,$00,$04,$00,$45,$67,$00,$00,$06,$30,$2D ; $018F3C
    dc.b $09,$3E,$4E,$BA,$9A,$AE,$4E,$BA,$9B,$32,$3D,$40,$00,$0A,$3D,$41 ; $018F4C
    dc.b $00,$0C,$4E,$BA,$82,$E2,$53,$2E,$00,$10,$53,$2E,$00,$11,$41,$FA ; $018F5C
    dc.b $00,$04,$4E,$75,$F8,$00,$FF,$00,$FF,$A0,$00,$2E,$00,$34,$00,$3A ; $018F6C
    dc.b $00,$40,$00,$46,$00,$4E,$00,$4E,$00,$56,$00,$6C,$00,$82,$00,$98 ; $018F7C
    dc.b $00,$AE,$00,$C4,$00,$DA,$00,$F0,$00,$4E,$00,$4E,$00,$4E,$00,$4E ; $018F8C
    dc.b $00,$4E,$00,$4E,$00,$4E,$00,$4E,$FD,$00,$EC,$00,$00,$07,$FD,$00 ; $018F9C
    dc.b $EC,$00,$00,$09,$FD,$00,$EC,$00,$00,$0B,$FD,$00,$EC,$00,$00,$0D ; $018FAC
    dc.b $FA,$00,$00,$00,$A6,$66,$FB,$00,$FD,$01,$F8,$00,$FF,$00,$FF,$FC ; $018FBC
    dc.b $EE,$01,$00,$00,$EE,$01,$00,$01,$EE,$01,$00,$02,$EE,$01,$00,$03 ; $018FCC
    dc.b $FD,$01,$FF,$00,$FF,$EC,$EE,$09,$00,$04,$EE,$09,$00,$05,$EE,$09 ; $018FDC
    dc.b $00,$06,$EE,$09,$00,$07,$FD,$01,$FF,$00,$FF,$EC,$EE,$08,$00,$08 ; $018FEC
    dc.b $EE,$08,$00,$09,$EE,$08,$00,$0A,$EE,$08,$00,$0B,$FD,$01,$FF,$00 ; $018FFC
    dc.b $FF,$EC,$EE,$0A,$00,$0C,$EE,$0A,$00,$0D,$EE,$0A,$00,$0E,$EE,$0A ; $01900C
    dc.b $00,$0F,$FD,$01,$FF,$00,$FF,$EC,$EE,$02,$00,$10,$EE,$02,$00,$11 ; $01901C
    dc.b $EE,$02,$00,$12,$EE,$02,$00,$13,$FD,$01,$FF,$00,$FF,$EC,$EE,$06 ; $01902C
    dc.b $00,$14,$EE,$06,$00,$15,$EE,$06,$00,$16,$EE,$06,$00,$17,$FD,$01 ; $01903C
    dc.b $FF,$00,$FF,$EC,$EE,$04,$00,$18,$EE,$04,$00,$19,$EE,$04,$00,$1A ; $01904C
    dc.b $EE,$04,$00,$1B,$FD,$01,$FF,$00,$FF,$EC,$EE,$05,$00,$1C,$EE,$05 ; $01905C
    dc.b $00,$1D,$EE,$05,$00,$1E,$EE,$05,$00,$1F,$FD,$01,$FF,$00,$FF,$EC ; $01906C
    dc.b $00,$0E,$00,$0E,$00,$0E,$00,$1A,$00,$5E,$00,$0E,$00,$0E,$FD,$01 ; $01907C
    dc.b $00,$09,$00,$00,$00,$00,$FF,$00,$FF,$F8,$FD,$00,$F9,$00,$08,$EE ; $01908C
    dc.b $00,$00,$00,$6D,$41,$FA,$00,$04,$4E,$75,$00,$01,$00,$00,$00,$00 ; $01909C
    dc.b $F8,$00,$F8,$00,$00,$06,$00,$00,$00,$00,$F8,$00,$F8,$00,$00,$07 ; $0190AC
    dc.b $00,$00,$00,$00,$F8,$00,$FA,$00,$00,$00,$BD,$F4,$00,$08,$00,$00 ; $0190BC
    dc.b $00,$00,$F8,$00,$F8,$00,$FD,$01,$F8,$00,$FF,$00,$FF,$FC,$FD,$00 ; $0190CC
    dc.b $F9,$00,$08,$EE,$00,$00,$00,$6D,$66,$6A,$4E,$BA,$8B,$5A,$2D,$7C ; $0190DC
    dc.b $00,$01,$08,$6E,$00,$2A,$30,$2D,$08,$E0,$3B,$40,$08,$E2,$1D,$40 ; $0190EC
    dc.b $00,$48,$08,$AE,$00,$03,$00,$6C,$41,$FA,$00,$04,$4E,$75,$F7,$00 ; $0190FC
    dc.b $00,$01,$00,$04,$00,$01,$00,$02,$00,$00,$00,$00,$00,$03,$00,$00 ; $01910C
    dc.b $00,$00,$00,$04,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00 ; $01911C
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$F9,$00,$30,$2D,$08,$E0 ; $01912C
    dc.b $1D,$40,$00,$48,$41,$FA,$00,$04,$4E,$75,$F6,$00,$FD,$01,$F8,$00 ; $01913C
    dc.b $FF,$00,$FF,$FC,$70,$FF,$3B,$40,$08,$D6,$3B,$40,$08,$D8,$4E,$BA ; $01914C
    dc.b $8C,$A4,$50,$ED,$08,$E6,$41,$FA,$00,$04,$4E,$75,$FB,$00         ; $01915C
L_01916A:
    dc.b $00,$01,$00,$04,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01916A
    dc.b $00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$01,$00 ; $01917A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $01918A
    dc.b $00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00 ; $01919A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $0191AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $0191BA
    dc.b $00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00 ; $0191CA
    dc.b $00,$00,$01,$01,$01,$00,$00,$00,$00,$80,$80,$80,$00,$00,$00,$80 ; $0191DA
    dc.b $80,$80,$00,$00,$80,$80,$80,$00,$00,$80,$80,$80,$00,$00,$00,$00 ; $0191EA
    dc.b $00,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$04,$04,$04,$04,$04 ; $0191FA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01920A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00 ; $01921A
    dc.b $00,$00,$04,$84,$80,$80,$00,$00,$80,$00,$80,$80,$80,$00,$80,$80 ; $01922A
    dc.b $00,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$04,$04 ; $01923A
    dc.b $04,$00,$00,$02,$02,$82,$82,$00,$00,$00,$80,$80,$00,$00,$80,$80 ; $01924A
    dc.b $00,$00,$80,$80,$00,$80,$80,$80,$00,$00,$08,$08,$08,$08,$08,$08 ; $01925A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01926A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$01,$01,$01,$01 ; $01927A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01928A
    dc.b $01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01929A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00 ; $0192AA
    dc.b $80,$80,$00,$00,$80,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$00 ; $0192BA
    dc.b $00,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$00,$00,$80 ; $0192CA
    dc.b $80,$80,$00,$00,$80,$80,$80,$80,$00,$80,$80,$00,$00,$80,$80,$80 ; $0192DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$00,$00,$00 ; $0192EA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00 ; $0192FA
    dc.b $00,$08,$08,$08,$08,$00,$00,$00,$00,$00,$05,$05,$05,$05,$00,$00 ; $01930A
    dc.b $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01931A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$01,$01,$01 ; $01932A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01933A
    dc.b $01,$01,$01,$01,$01,$01,$00,$00,$00,$08,$08,$88,$88,$88,$08,$00 ; $01934A
    dc.b $80,$80,$00,$00,$80,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$80 ; $01935A
    dc.b $80,$00,$00,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$80,$00,$00 ; $01936A
    dc.b $80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08 ; $01937A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01938A
    dc.b $08,$08,$00,$00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01939A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $0193AA
    dc.b $04,$04,$00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $0193BA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $0193CA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $0193DA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$10,$10,$10,$10,$10 ; $0193EA
    dc.b $10,$10,$10,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$02 ; $0193FA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00 ; $01940A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01941A
    dc.b $00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01942A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01943A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01944A
    dc.b $00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01945A
    dc.b $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00 ; $01946A
    dc.b $00,$80,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$80,$00 ; $01947A
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00 ; $01948A
    dc.b $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00 ; $01949A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00 ; $0194AA
    dc.b $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00 ; $0194BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$FF,$00,$00 ; $0194CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0194DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0194EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0194FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01950A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01951A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01952A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01953A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01954A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01955A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01956A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01957A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01958A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01959A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0195AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0195BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0195CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0195DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0195EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0195FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01960A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01961A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01962A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01963A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01964A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01965A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01966A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01967A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01968A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01969A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0196AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0196BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0196CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0196DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0196EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0196FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01970A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01971A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01972A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01973A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01974A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01975A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01976A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01977A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01978A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01979A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0197AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0197BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0197CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0197DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0197EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0197FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01980A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01981A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01982A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01983A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01984A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01985A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01986A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01987A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01988A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01989A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0198AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0198BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0198CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0198DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0198EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0198FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01990A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01991A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01992A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01993A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01994A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01995A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01996A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01997A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01998A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01999A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0199AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0199BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0199CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0199DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0199EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $0199FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019A0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019A1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019A2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019A3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019A4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019A5A
    dc.b $00,$02,$00,$01,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019A6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$80 ; $019A7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $019A8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $019A9A
    dc.b $00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $019AAA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$02,$02,$02 ; $019ABA
    dc.b $02,$02,$02,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01 ; $019ACA
    dc.b $01,$81,$81,$81,$01,$80,$80,$00,$80,$80,$80,$00,$80,$80,$80,$04 ; $019ADA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$01,$01,$01,$01 ; $019AEA
    dc.b $01,$01,$01,$01,$01,$09,$09,$09,$08,$08,$08,$08,$08,$08,$00,$00 ; $019AFA
    dc.b $00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01,$00 ; $019B0A
    dc.b $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $019B1A
    dc.b $01,$01,$00,$00,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00 ; $019B2A
    dc.b $00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$00,$00,$00,$00,$00,$01 ; $019B3A
    dc.b $01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019B4A
    dc.b $00,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019B5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019B6A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $019B7A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $019B8A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$00 ; $019B9A
    dc.b $00,$00,$00,$00,$80,$80,$80,$00,$80,$80,$00,$00,$80,$80,$00,$80 ; $019BAA
    dc.b $80,$00,$80,$80,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$80 ; $019BBA
    dc.b $00,$00,$80,$80,$00,$80,$80,$00,$88,$08,$08,$08,$08,$08,$08,$08 ; $019BCA
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$02 ; $019BDA
    dc.b $02,$82,$82,$82,$82,$00,$00,$80,$80,$80,$00,$80,$80,$80,$00,$80 ; $019BEA
    dc.b $80,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $019BFA
    dc.b $01,$01,$01,$01,$00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $019C0A
    dc.b $02,$00,$00,$08,$08,$88,$88,$88,$08,$08,$88,$88,$00,$00,$80,$80 ; $019C1A
    dc.b $00,$00,$80,$80,$88,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $019C2A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$04,$04,$04,$04 ; $019C3A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $019C4A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00 ; $019C5A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00 ; $019C6A
    dc.b $00,$04,$04,$04,$84,$80,$00,$00,$80,$80,$80,$00,$80,$80,$00,$00 ; $019C7A
    dc.b $80,$80,$00,$80,$80,$00,$08,$08,$08,$08,$08,$08,$08,$09,$01,$01 ; $019C8A
    dc.b $05,$04,$84,$84,$84,$84,$00,$80,$80,$00,$80,$80,$80,$80,$80,$04 ; $019C9A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$84,$04,$04,$04,$04,$04,$04,$04 ; $019CAA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $019CBA
    dc.b $04,$00,$00,$00,$00,$80,$80,$80,$00,$00,$80,$80,$80,$00,$00,$80 ; $019CCA
    dc.b $80,$80,$00,$80,$80,$80,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $019CDA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$02,$02,$02 ; $019CEA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $019CFA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $019D0A
    dc.b $02,$02,$02,$02,$02,$08,$08,$08,$08,$08,$08,$08,$00,$01,$01,$01 ; $019D1A
    dc.b $01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04 ; $019D2A
    dc.b $04,$00,$00,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; $019D3A
    dc.b $0A,$02,$02,$04,$04,$84,$84,$84,$04,$04,$80,$80,$00,$80,$80,$80 ; $019D4A
    dc.b $00,$80,$80,$80,$00,$00,$80,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $019D5A
    dc.b $08,$08,$08,$08,$08,$02,$02,$02,$02,$02,$02,$00,$00,$01,$01,$01 ; $019D6A
    dc.b $01,$01,$01,$01,$01,$01,$05,$05,$04,$04,$04,$04,$04,$04,$04,$04 ; $019D7A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $019D8A
    dc.b $04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04,$04,$04,$00 ; $019D9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00 ; $019DAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; $019DBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019DCA
    dc.b $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019DDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $019DEA
    dc.b $00,$00,$00,$08,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00 ; $019DFA
    dc.b $00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00 ; $019E0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00 ; $019E1A
    dc.b $00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $019E2A
    dc.b $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $019E3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $019E4A
    dc.b $00,$00,$00,$01,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00 ; $019E5A
    dc.b $00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019E6A
    dc.b $00,$00,$80,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019E7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019E8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019E9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019EAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019EBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019ECA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019EDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019EEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019EFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019F9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019FAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019FBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019FCA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019FDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019FEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $019FFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A00A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A01A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A02A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A03A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A04A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A05A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A06A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A07A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A08A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A09A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A0AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A0BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A0CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A0DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A0EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A0FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A10A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A11A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A12A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A13A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A14A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A15A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A16A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A17A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A18A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A19A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A1AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A1BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A1CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A1DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A1EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A1FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A20A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A21A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A22A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A23A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A24A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A25A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A26A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A27A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A28A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A29A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A2AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A2BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A2CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A2DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A2EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A2FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A30A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A31A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A32A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A33A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A34A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A35A
    dc.b $00,$03,$00,$06,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A36A
    dc.b $00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $01A37A
    dc.b $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00 ; $01A38A
    dc.b $00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A39A
    dc.b $00,$00,$00,$00,$80,$00,$00,$04,$04,$04,$04,$04,$00,$00,$00,$00 ; $01A3AA
    dc.b $00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$81,$81,$81,$81,$01 ; $01A3BA
    dc.b $81,$81,$81,$01,$81,$81,$81,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01A3CA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$08,$08 ; $01A3DA
    dc.b $08,$08,$88,$88,$88,$88,$08,$00,$80,$80,$80,$00,$80,$80,$80,$00 ; $01A3EA
    dc.b $80,$80,$08,$08,$08,$08,$08,$08,$08,$08,$88,$88,$88,$08,$08,$88 ; $01A3FA
    dc.b $88,$88,$08,$88,$88,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01A40A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01A41A
    dc.b $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$00 ; $01A42A
    dc.b $00,$00,$00,$00,$00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01A43A
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00 ; $01A44A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00 ; $01A45A
    dc.b $00,$00,$00,$04,$04,$84,$84,$80,$80,$00,$00,$80,$80,$00,$00,$00 ; $01A46A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A47A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$00,$80,$80 ; $01A48A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04,$04,$04 ; $01A49A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01A4AA
    dc.b $04,$04,$00,$00,$00,$00,$00,$00,$08,$08,$0A,$02,$02,$02,$02,$02 ; $01A4BA
    dc.b $0A,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01A4CA
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01A4DA
    dc.b $08,$08,$08,$08,$08,$08,$08,$09,$09,$09,$08,$08,$08,$08,$08,$00 ; $01A4EA
    dc.b $00,$00,$01,$01,$01,$01,$01,$00,$00,$00,$00,$01,$01,$01,$01,$00 ; $01A4FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$80,$80,$80,$00 ; $01A50A
    dc.b $00,$00,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$01,$01,$01 ; $01A51A
    dc.b $01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08 ; $01A52A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01A53A
    dc.b $08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08 ; $01A54A
    dc.b $08,$00,$00,$00,$00,$80,$80,$80,$80,$00,$00,$80,$80,$00,$00,$00 ; $01A55A
    dc.b $80,$80,$80,$00,$00,$00,$80,$80,$00,$80,$80,$00,$00,$88,$88,$08 ; $01A56A
    dc.b $08,$08,$08,$0A,$0A,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$81 ; $01A57A
    dc.b $81,$81,$01,$80,$80,$80,$00,$00,$00,$01,$01,$01,$01,$01,$01,$00 ; $01A58A
    dc.b $04,$04,$84,$84,$80,$00,$00,$00,$80,$80,$00,$00,$80,$80,$00,$00 ; $01A59A
    dc.b $00,$04,$04,$04,$04,$05,$00,$00,$00,$01,$01,$01,$01,$01,$05,$04 ; $01A5AA
    dc.b $04,$04,$04,$84,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$02,$02 ; $01A5BA
    dc.b $02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A5CA
    dc.b $00,$04,$04,$04,$04,$84,$84,$84,$04,$04,$84,$84,$84,$00,$00,$80 ; $01A5DA
    dc.b $80,$00,$00,$00,$00,$02,$02,$02,$02,$02,$0A,$08,$08,$08,$08,$08 ; $01A5EA
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01A5FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$00 ; $01A60A
    dc.b $04,$04,$04,$04,$04,$04,$04,$05,$05,$01,$01,$01,$01,$01,$01,$01 ; $01A61A
    dc.b $09,$09,$08,$08,$88,$88,$88,$88,$08,$00,$80,$80,$80,$00,$00,$80 ; $01A62A
    dc.b $80,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01A63A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$02,$02,$02,$02,$02,$02 ; $01A64A
    dc.b $0A,$0A,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00 ; $01A65A
    dc.b $00,$00,$00,$08,$08,$08,$08,$08,$08,$00,$80,$80,$80,$80,$00,$00 ; $01A66A
    dc.b $80,$80,$00,$80,$80,$00,$80,$88,$88,$08,$08,$08,$08,$08,$08,$08 ; $01A67A
    dc.b $00,$00,$00,$08,$08,$08,$08,$09,$01,$01,$81,$81,$81,$81,$01,$80 ; $01A68A
    dc.b $80,$00,$00,$80,$80,$80,$80,$00,$00,$00,$00,$02,$02,$02,$02,$04 ; $01A69A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01,$01,$01 ; $01A6AA
    dc.b $01,$05,$05,$04,$04,$84,$84,$84,$00,$80,$80,$00,$00,$80,$80,$00 ; $01A6BA
    dc.b $00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00 ; $01A6CA
    dc.b $00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A6DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00 ; $01A6EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01A6FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00 ; $01A70A
    dc.b $00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00 ; $01A71A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00 ; $01A72A
    dc.b $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A73A
    dc.b $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A74A
    dc.b $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A75A
    dc.b $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00 ; $01A76A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A77A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00 ; $01A78A
    dc.b $00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$02,$00,$00 ; $01A79A
    dc.b $00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$02,$00 ; $01A7AA
    dc.b $00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A7BA
    dc.b $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00 ; $01A7CA
    dc.b $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A7DA
    dc.b $00,$04,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$04,$00,$00 ; $01A7EA
    dc.b $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00 ; $01A7FA
    dc.b $00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$08,$00 ; $01A80A
    dc.b $00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A81A
    dc.b $00,$00,$00,$00,$00,$00,$80,$FF,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A82A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A83A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A84A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A85A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A86A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A87A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A88A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A89A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A8AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A8BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A8CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A8DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A8EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A8FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A90A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A91A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A92A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A93A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A94A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A95A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A96A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A97A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A98A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A99A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A9AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A9BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A9CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A9DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A9EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01A9FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AA9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AAAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AABA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AACA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AADA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AAEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AAFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AB9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01ABAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01ABBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01ABCA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01ABDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01ABEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01ABFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AC0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AC1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AC2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AC3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AC4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AC5A
    dc.b $00,$02,$00,$01,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AC6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$80 ; $01AC7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01AC8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01AC9A
    dc.b $00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01ACAA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$02,$02,$02 ; $01ACBA
    dc.b $02,$02,$02,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01 ; $01ACCA
    dc.b $01,$81,$81,$81,$01,$80,$80,$00,$80,$80,$80,$00,$80,$80,$80,$04 ; $01ACDA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$01,$01,$01,$01 ; $01ACEA
    dc.b $01,$01,$01,$01,$01,$09,$09,$09,$08,$08,$08,$08,$08,$08,$00,$00 ; $01ACFA
    dc.b $00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01,$00 ; $01AD0A
    dc.b $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01AD1A
    dc.b $01,$01,$00,$00,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00 ; $01AD2A
    dc.b $00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$00,$00,$00,$00,$00,$01 ; $01AD3A
    dc.b $01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AD4A
    dc.b $00,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AD5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AD6A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01AD7A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01AD8A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$00 ; $01AD9A
    dc.b $00,$00,$00,$00,$80,$80,$80,$00,$80,$80,$00,$00,$80,$80,$00,$80 ; $01ADAA
    dc.b $80,$00,$80,$80,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$80 ; $01ADBA
    dc.b $00,$00,$80,$80,$00,$80,$80,$00,$88,$08,$08,$08,$08,$08,$08,$08 ; $01ADCA
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$02 ; $01ADDA
    dc.b $02,$82,$82,$82,$82,$00,$00,$80,$80,$80,$00,$80,$80,$80,$00,$80 ; $01ADEA
    dc.b $80,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01ADFA
    dc.b $01,$01,$01,$01,$00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01AE0A
    dc.b $02,$00,$00,$08,$08,$88,$88,$88,$08,$08,$88,$88,$00,$00,$80,$80 ; $01AE1A
    dc.b $00,$00,$80,$80,$88,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01AE2A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$04,$04,$04,$04 ; $01AE3A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01AE4A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00 ; $01AE5A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00 ; $01AE6A
    dc.b $00,$04,$04,$04,$84,$80,$00,$00,$80,$80,$80,$00,$80,$80,$00,$00 ; $01AE7A
    dc.b $80,$80,$00,$80,$80,$00,$08,$08,$08,$08,$08,$08,$08,$09,$01,$01 ; $01AE8A
    dc.b $05,$04,$84,$84,$84,$84,$00,$80,$80,$00,$80,$80,$80,$80,$80,$04 ; $01AE9A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$84,$04,$04,$04,$04,$04,$04,$04 ; $01AEAA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01AEBA
    dc.b $04,$00,$00,$00,$00,$80,$80,$80,$00,$00,$80,$80,$80,$00,$00,$80 ; $01AECA
    dc.b $80,$80,$00,$80,$80,$80,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01AEDA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$02,$02,$02 ; $01AEEA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01AEFA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01AF0A
    dc.b $02,$02,$02,$02,$02,$08,$08,$08,$08,$08,$08,$08,$00,$01,$01,$01 ; $01AF1A
    dc.b $01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04 ; $01AF2A
    dc.b $04,$00,$00,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; $01AF3A
    dc.b $0A,$02,$02,$04,$04,$84,$84,$84,$04,$04,$80,$80,$00,$80,$80,$80 ; $01AF4A
    dc.b $00,$80,$80,$80,$00,$00,$80,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01AF5A
    dc.b $08,$08,$08,$08,$08,$02,$02,$02,$02,$02,$02,$00,$00,$01,$01,$01 ; $01AF6A
    dc.b $01,$01,$01,$01,$01,$01,$05,$05,$04,$04,$04,$04,$04,$04,$04,$04 ; $01AF7A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01AF8A
    dc.b $04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04,$04,$04,$00 ; $01AF9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00 ; $01AFAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; $01AFBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AFCA
    dc.b $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AFDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $01AFEA
    dc.b $00,$00,$00,$08,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00 ; $01AFFA
    dc.b $00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00 ; $01B00A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00 ; $01B01A
    dc.b $00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $01B02A
    dc.b $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01B03A
    dc.b $00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B04A
    dc.b $00,$00,$00,$01,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B05A
    dc.b $00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B06A
    dc.b $00,$00,$80,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B07A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B08A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B09A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B0AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B0BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B0CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B0DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B0EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B0FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B10A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B11A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B12A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B13A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B14A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B15A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B16A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B17A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B18A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B19A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B1AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B1BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B1CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B1DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B1EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B1FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B20A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B21A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B22A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B23A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B24A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B25A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B26A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B27A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B28A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B29A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B2AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B2BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B2CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B2DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B2EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B2FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B30A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B31A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B32A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B33A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B34A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B35A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B36A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B37A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B38A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B39A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B3AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B3BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B3CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B3DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B3EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B3FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B40A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B41A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B42A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B43A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B44A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B45A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B46A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B47A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B48A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B49A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B4AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B4BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B4CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B4DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B4EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B4FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B50A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B51A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B52A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B53A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B54A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B55A
    dc.b $00,$01,$00,$04,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B56A
    dc.b $00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$01,$00 ; $01B57A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $01B58A
    dc.b $00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00 ; $01B59A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $01B5AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $01B5BA
    dc.b $00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00 ; $01B5CA
    dc.b $00,$00,$01,$01,$01,$00,$00,$00,$00,$80,$80,$80,$00,$00,$00,$80 ; $01B5DA
    dc.b $80,$80,$00,$00,$80,$80,$80,$00,$00,$80,$80,$80,$00,$00,$00,$00 ; $01B5EA
    dc.b $00,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$04,$04,$04,$04,$04 ; $01B5FA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01B60A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00 ; $01B61A
    dc.b $00,$00,$04,$84,$80,$80,$00,$00,$80,$00,$80,$80,$80,$00,$80,$80 ; $01B62A
    dc.b $00,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$04,$04 ; $01B63A
    dc.b $04,$00,$00,$02,$02,$82,$82,$00,$00,$00,$80,$80,$00,$00,$80,$80 ; $01B64A
    dc.b $00,$00,$80,$80,$00,$80,$80,$80,$00,$00,$08,$08,$08,$08,$08,$08 ; $01B65A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01B66A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$01,$01,$01,$01 ; $01B67A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01B68A
    dc.b $01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B69A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00 ; $01B6AA
    dc.b $80,$80,$00,$00,$80,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$00 ; $01B6BA
    dc.b $00,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$00,$00,$80 ; $01B6CA
    dc.b $80,$80,$00,$00,$80,$80,$80,$80,$00,$80,$80,$00,$00,$80,$80,$80 ; $01B6DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$00,$00,$00 ; $01B6EA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00 ; $01B6FA
    dc.b $00,$08,$08,$08,$08,$00,$00,$00,$00,$00,$05,$05,$05,$05,$00,$00 ; $01B70A
    dc.b $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01B71A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$01,$01,$01 ; $01B72A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01B73A
    dc.b $01,$01,$01,$01,$01,$01,$00,$00,$00,$08,$08,$88,$88,$88,$08,$00 ; $01B74A
    dc.b $80,$80,$00,$00,$80,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$80 ; $01B75A
    dc.b $80,$00,$00,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$80,$00,$00 ; $01B76A
    dc.b $80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08 ; $01B77A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01B78A
    dc.b $08,$08,$00,$00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01B79A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01B7AA
    dc.b $04,$04,$00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01B7BA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01B7CA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01B7DA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$10,$10,$10,$10,$10 ; $01B7EA
    dc.b $10,$10,$10,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$02 ; $01B7FA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00 ; $01B80A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B81A
    dc.b $00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B82A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01B83A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B84A
    dc.b $00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B85A
    dc.b $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00 ; $01B86A
    dc.b $00,$80,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$80,$00 ; $01B87A
    dc.b $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00 ; $01B88A
    dc.b $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00 ; $01B89A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00 ; $01B8AA
    dc.b $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00 ; $01B8BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$FF,$00,$00 ; $01B8CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B8DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B8EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B8FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B90A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B91A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B92A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B93A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B94A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B95A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B96A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B97A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B98A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B99A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B9AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B9BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B9CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B9DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B9EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01B9FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BA9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BAAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BABA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BACA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BADA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BAEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BAFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BB9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BBAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BBBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BBCA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BBDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BBEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BBFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BC9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BCAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BCBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BCCA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BCDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BCEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BCFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BD9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BDAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BDBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BDCA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BDDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BDEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BDFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BE0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BE1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BE2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BE3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BE4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BE5A
    dc.b $00,$04,$00,$05,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BE6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00 ; $01BE7A
    dc.b $00,$00,$00,$80,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$02 ; $01BE8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00 ; $01BE9A
    dc.b $00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$08,$08,$08,$08,$08,$08 ; $01BEAA
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$01 ; $01BEBA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$04,$04,$04 ; $01BECA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01BEDA
    dc.b $04,$04,$04,$04,$04,$04,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01 ; $01BEEA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01BEFA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$04,$04,$04,$04 ; $01BF0A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$01,$01,$01 ; $01BF1A
    dc.b $01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$00 ; $01BF2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80 ; $01BF3A
    dc.b $00,$00,$80,$80,$80,$00,$80,$80,$00,$00,$08,$08,$08,$08,$08,$08 ; $01BF4A
    dc.b $08,$08,$00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00 ; $01BF5A
    dc.b $00,$00,$01,$01,$01,$01,$01,$00,$00,$00,$00,$80,$80,$80,$80,$00 ; $01BF6A
    dc.b $00,$80,$80,$80,$80,$80,$80,$00,$00,$00,$08,$08,$08,$08,$08,$08 ; $01BF7A
    dc.b $08,$09,$01,$01,$01,$04,$04,$04,$04,$04,$04,$80,$80,$00,$00,$00 ; $01BF8A
    dc.b $80,$80,$80,$00,$80,$80,$80,$80,$00,$80,$80,$80,$00,$00,$00,$00 ; $01BF9A
    dc.b $00,$08,$09,$01,$01,$01,$01,$01,$01,$01,$01,$05,$05,$05,$05,$05 ; $01BFAA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01BFBA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$02,$02,$02,$04,$04,$04,$04,$04 ; $01BFCA
    dc.b $04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01BFDA
    dc.b $00,$80,$80,$00,$00,$00,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80 ; $01BFEA
    dc.b $00,$00,$80,$80,$80,$00,$00,$80,$80,$80,$80,$00,$80,$80,$00,$00 ; $01BFFA
    dc.b $80,$80,$80,$00,$00,$00,$08,$08,$08,$09,$01,$01,$01,$01,$01,$01 ; $01C00A
    dc.b $01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C01A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$00 ; $01C02A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C03A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C04A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02 ; $01C05A
    dc.b $02,$02,$02,$02,$02,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01C06A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00 ; $01C07A
    dc.b $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01C08A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$81,$81,$81 ; $01C09A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$81,$81,$01 ; $01C0AA
    dc.b $01,$80,$80,$00,$00,$80,$80,$80,$00,$00,$80,$80,$00,$00,$01,$01 ; $01C0BA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01C0CA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01C0DA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01C0EA
    dc.b $01,$01,$01,$01,$01,$01,$09,$09,$09,$09,$09,$09,$09,$09,$09,$01 ; $01C0FA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00 ; $01C10A
    dc.b $00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00,$08,$08 ; $01C11A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01C12A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00 ; $01C13A
    dc.b $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C14A
    dc.b $00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C15A
    dc.b $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C16A
    dc.b $00,$00,$08,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00 ; $01C17A
    dc.b $80,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$00,$00,$00,$01 ; $01C18A
    dc.b $00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C19A
    dc.b $00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C1AA
    dc.b $00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C1BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$02,$00,$00 ; $01C1CA
    dc.b $00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01C1DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; $01C1EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C1FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$08 ; $01C20A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00 ; $01C21A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$80,$FF,$00,$00,$00,$00,$00,$00 ; $01C22A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C23A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C24A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C25A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C26A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C27A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C28A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C29A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C2AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C2BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C2CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C2DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C2EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C2FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C30A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C31A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C32A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C33A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C34A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C35A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C36A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C37A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C38A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C39A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C3AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C3BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C3CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C3DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C3EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C3FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C40A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C41A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C42A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C43A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C44A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C45A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C46A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C47A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C48A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C49A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C4AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C4BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C4CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C4DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C4EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C4FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C50A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C51A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C52A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C53A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C54A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C55A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C56A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C57A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C58A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C59A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C5AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C5BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C5CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C5DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C5EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C5FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C60A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C61A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C62A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C63A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C64A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C65A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C66A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C67A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C68A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C69A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C6AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C6BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C6CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C6DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C6EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C6FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C70A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C71A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C72A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C73A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C74A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C75A
    dc.b $00,$03,$00,$06,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C76A
    dc.b $00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $01C77A
    dc.b $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00 ; $01C78A
    dc.b $00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C79A
    dc.b $00,$00,$00,$00,$80,$00,$00,$04,$04,$04,$04,$04,$00,$00,$00,$00 ; $01C7AA
    dc.b $00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$81,$81,$81,$81,$01 ; $01C7BA
    dc.b $81,$81,$81,$01,$81,$81,$81,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01C7CA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$08,$08 ; $01C7DA
    dc.b $08,$08,$88,$88,$88,$88,$08,$00,$80,$80,$80,$00,$80,$80,$80,$00 ; $01C7EA
    dc.b $80,$80,$08,$08,$08,$08,$08,$08,$08,$08,$88,$88,$88,$08,$08,$88 ; $01C7FA
    dc.b $88,$88,$08,$88,$88,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01C80A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01C81A
    dc.b $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$00 ; $01C82A
    dc.b $00,$00,$00,$00,$00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01C83A
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00 ; $01C84A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00 ; $01C85A
    dc.b $00,$00,$00,$04,$04,$84,$84,$80,$80,$00,$00,$80,$80,$00,$00,$00 ; $01C86A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C87A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$00,$80,$80 ; $01C88A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04,$04,$04 ; $01C89A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01C8AA
    dc.b $04,$04,$00,$00,$00,$00,$00,$00,$08,$08,$0A,$02,$02,$02,$02,$02 ; $01C8BA
    dc.b $0A,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01C8CA
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01C8DA
    dc.b $08,$08,$08,$08,$08,$08,$08,$09,$09,$09,$08,$08,$08,$08,$08,$00 ; $01C8EA
    dc.b $00,$00,$01,$01,$01,$01,$01,$00,$00,$00,$00,$01,$01,$01,$01,$00 ; $01C8FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$80,$80,$80,$00 ; $01C90A
    dc.b $00,$00,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$01,$01,$01 ; $01C91A
    dc.b $01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08 ; $01C92A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01C93A
    dc.b $08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08 ; $01C94A
    dc.b $08,$00,$00,$00,$00,$80,$80,$80,$80,$00,$00,$80,$80,$00,$00,$00 ; $01C95A
    dc.b $80,$80,$80,$00,$00,$00,$80,$80,$00,$80,$80,$00,$00,$88,$88,$08 ; $01C96A
    dc.b $08,$08,$08,$0A,$0A,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$81 ; $01C97A
    dc.b $81,$81,$01,$80,$80,$80,$00,$00,$00,$01,$01,$01,$01,$01,$01,$00 ; $01C98A
    dc.b $04,$04,$84,$84,$80,$00,$00,$00,$80,$80,$00,$00,$80,$80,$00,$00 ; $01C99A
    dc.b $00,$04,$04,$04,$04,$05,$00,$00,$00,$01,$01,$01,$01,$01,$05,$04 ; $01C9AA
    dc.b $04,$04,$04,$84,$80,$80,$00,$00,$80,$80,$00,$00,$80,$80,$02,$02 ; $01C9BA
    dc.b $02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01C9CA
    dc.b $00,$04,$04,$04,$04,$84,$84,$84,$04,$04,$84,$84,$84,$00,$00,$80 ; $01C9DA
    dc.b $80,$00,$00,$00,$00,$02,$02,$02,$02,$02,$0A,$08,$08,$08,$08,$08 ; $01C9EA
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01C9FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$00 ; $01CA0A
    dc.b $04,$04,$04,$04,$04,$04,$04,$05,$05,$01,$01,$01,$01,$01,$01,$01 ; $01CA1A
    dc.b $09,$09,$08,$08,$88,$88,$88,$88,$08,$00,$80,$80,$80,$00,$00,$80 ; $01CA2A
    dc.b $80,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01CA3A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$02,$02,$02,$02,$02,$02 ; $01CA4A
    dc.b $0A,$0A,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00 ; $01CA5A
    dc.b $00,$00,$00,$08,$08,$08,$08,$08,$08,$00,$80,$80,$80,$80,$00,$00 ; $01CA6A
    dc.b $80,$80,$00,$80,$80,$00,$80,$88,$88,$08,$08,$08,$08,$08,$08,$08 ; $01CA7A
    dc.b $00,$00,$00,$08,$08,$08,$08,$09,$01,$01,$81,$81,$81,$81,$01,$80 ; $01CA8A
    dc.b $80,$00,$00,$80,$80,$80,$80,$00,$00,$00,$00,$02,$02,$02,$02,$04 ; $01CA9A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01,$01,$01 ; $01CAAA
    dc.b $01,$05,$05,$04,$04,$84,$84,$84,$00,$80,$80,$00,$00,$80,$80,$00 ; $01CABA
    dc.b $00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00 ; $01CACA
    dc.b $00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CADA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00 ; $01CAEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01CAFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00 ; $01CB0A
    dc.b $00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00 ; $01CB1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00 ; $01CB2A
    dc.b $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CB3A
    dc.b $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CB4A
    dc.b $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CB5A
    dc.b $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00 ; $01CB6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CB7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00 ; $01CB8A
    dc.b $00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$02,$00,$00 ; $01CB9A
    dc.b $00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$02,$00 ; $01CBAA
    dc.b $00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CBBA
    dc.b $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00 ; $01CBCA
    dc.b $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CBDA
    dc.b $00,$04,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$04,$00,$00 ; $01CBEA
    dc.b $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00 ; $01CBFA
    dc.b $00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$08,$00 ; $01CC0A
    dc.b $00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CC1A
    dc.b $00,$00,$00,$00,$00,$00,$80,$FF,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CC2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CC3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CC4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CC5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CC6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CC7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CC8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CC9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CCAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CCBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CCCA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CCDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CCEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CCFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CD9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CDAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CDBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CDCA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CDDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CDEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CDFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CE9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CEAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CEBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CECA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CEDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CEEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CEFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF0A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF1A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF2A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF3A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF4A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF5A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF6A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF7A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF8A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CF9A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CFAA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CFBA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CFCA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CFDA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CFEA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01CFFA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D00A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D01A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D02A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D03A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D04A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D05A
    dc.b $00,$02,$00,$01,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D06A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$80 ; $01D07A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01D08A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01D09A
    dc.b $00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01D0AA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$02,$02,$02 ; $01D0BA
    dc.b $02,$02,$02,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01 ; $01D0CA
    dc.b $01,$81,$81,$81,$01,$80,$80,$00,$80,$80,$80,$00,$80,$80,$80,$04 ; $01D0DA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$01,$01,$01,$01 ; $01D0EA
    dc.b $01,$01,$01,$01,$01,$09,$09,$09,$08,$08,$08,$08,$08,$08,$00,$00 ; $01D0FA
    dc.b $00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01,$00 ; $01D10A
    dc.b $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01D11A
    dc.b $01,$01,$00,$00,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00 ; $01D12A
    dc.b $00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$00,$00,$00,$00,$00,$01 ; $01D13A
    dc.b $01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D14A
    dc.b $00,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D15A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D16A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01D17A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01D18A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$00,$00 ; $01D19A
    dc.b $00,$00,$00,$00,$80,$80,$80,$00,$80,$80,$00,$00,$80,$80,$00,$80 ; $01D1AA
    dc.b $80,$00,$80,$80,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$80 ; $01D1BA
    dc.b $00,$00,$80,$80,$00,$80,$80,$00,$88,$08,$08,$08,$08,$08,$08,$08 ; $01D1CA
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$02 ; $01D1DA
    dc.b $02,$82,$82,$82,$82,$00,$00,$80,$80,$80,$00,$80,$80,$80,$00,$80 ; $01D1EA
    dc.b $80,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01D1FA
    dc.b $01,$01,$01,$01,$00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01D20A
    dc.b $02,$00,$00,$08,$08,$88,$88,$88,$08,$08,$88,$88,$00,$00,$80,$80 ; $01D21A
    dc.b $00,$00,$80,$80,$88,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01D22A
    dc.b $08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00,$00,$04,$04,$04,$04 ; $01D23A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01D24A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00 ; $01D25A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00 ; $01D26A
    dc.b $00,$04,$04,$04,$84,$80,$00,$00,$80,$80,$80,$00,$80,$80,$00,$00 ; $01D27A
    dc.b $80,$80,$00,$80,$80,$00,$08,$08,$08,$08,$08,$08,$08,$09,$01,$01 ; $01D28A
    dc.b $05,$04,$84,$84,$84,$84,$00,$80,$80,$00,$80,$80,$80,$80,$80,$04 ; $01D29A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$84,$04,$04,$04,$04,$04,$04,$04 ; $01D2AA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01D2BA
    dc.b $04,$00,$00,$00,$00,$80,$80,$80,$00,$00,$80,$80,$80,$00,$00,$80 ; $01D2CA
    dc.b $80,$80,$00,$80,$80,$80,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01D2DA
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$02,$02,$02 ; $01D2EA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01D2FA
    dc.b $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; $01D30A
    dc.b $02,$02,$02,$02,$02,$08,$08,$08,$08,$08,$08,$08,$00,$01,$01,$01 ; $01D31A
    dc.b $01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04 ; $01D32A
    dc.b $04,$00,$00,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; $01D33A
    dc.b $0A,$02,$02,$04,$04,$84,$84,$84,$04,$04,$80,$80,$00,$80,$80,$80 ; $01D34A
    dc.b $00,$80,$80,$80,$00,$00,$80,$08,$08,$08,$08,$08,$08,$08,$08,$08 ; $01D35A
    dc.b $08,$08,$08,$08,$08,$02,$02,$02,$02,$02,$02,$00,$00,$01,$01,$01 ; $01D36A
    dc.b $01,$01,$01,$01,$01,$01,$05,$05,$04,$04,$04,$04,$04,$04,$04,$04 ; $01D37A
    dc.b $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04 ; $01D38A
    dc.b $04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04,$04,$04,$00 ; $01D39A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00 ; $01D3AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80 ; $01D3BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D3CA
    dc.b $00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D3DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D3EA
    dc.b $00,$00,$00,$08,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00 ; $01D3FA
    dc.b $00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00 ; $01D40A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00 ; $01D41A
    dc.b $00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00 ; $01D42A
    dc.b $00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00 ; $01D43A
    dc.b $00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D44A
    dc.b $00,$00,$00,$01,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D45A
    dc.b $00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D46A
    dc.b $00,$00,$80,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D47A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D48A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D49A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D4AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D4BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D4CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D4DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D4EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D4FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D50A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D51A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D52A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D53A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D54A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D55A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D56A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D57A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D58A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D59A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D5AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D5BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D5CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D5DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D5EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D5FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D60A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D61A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D62A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D63A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D64A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D65A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D66A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D67A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D68A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D69A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D6AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D6BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D6CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D6DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D6EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D6FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D70A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D71A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D72A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D73A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D74A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D75A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D76A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D77A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D78A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D79A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D7AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D7BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D7CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D7DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D7EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D7FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D80A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D81A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D82A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D83A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D84A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D85A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D86A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D87A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D88A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D89A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D8AA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D8BA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D8CA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D8DA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D8EA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D8FA
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D90A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D91A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D92A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D93A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D94A
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01D95A
L_01D96A:
    LEA L_01D97C(PC),A0                     ; $01D96A  41FA 0010
    MOVE.W (A0)+,$4(A6)                     ; $01D96E  3D58 0004
    MOVE.W (A0)+,$4(A6)                     ; $01D972  3D58 0004
    MOVE.W (A0)+,$4(A6)                     ; $01D976  3D58 0004
    RTS                                     ; $01D97A  4E75
L_01D97C:
    dc.b $82,$00,$84,$00,$90,$31                                         ; $01D97C
L_01D982:
    LEA L_01D988(PC),A0                     ; $01D982  41FA 0004
    BRA.S L_01D992                          ; $01D986  600A
L_01D988:
    dc.b $82,$30,$84,$07,$90,$11                                         ; $01D988
L_01D98E:
    LEA L_01D9BA(PC),A0                     ; $01D98E  41FA 002A
L_01D992:
    MOVE.W (A0)+,$4(A6)                     ; $01D992  3D58 0004
    MOVE.W (A0)+,$4(A6)                     ; $01D996  3D58 0004
    MOVE.W (A0)+,$4(A6)                     ; $01D99A  3D58 0004
    MOVE.W #$9200,$4(A6)                    ; $01D99E  3D7C 9200 0004
    SF $65A(A5)                             ; $01D9A4  51ED 065A            pads_menu
    JSR L_000C60                            ; $01D9A8  4EB9 0000 0C60
    JSR L_0023E8                            ; $01D9AE  4EB9 0000 23E8
    JMP L_003DCC                            ; $01D9B4  4EF9 0000 3DCC
L_01D9BA:
    OR.B $8407.W,D1                         ; $01D9BA  8238 8407
    SUB.B D1,D0                             ; $01D9BE  9001
L_01D9C0:
    MOVEQ #$FF,D0                           ; $01D9C0  70FF
    MOVEQ #$00,D1                           ; $01D9C2  7200
    MOVE.L #$5C000003,$4(A6)                ; $01D9C4  2D7C 5C00 0003 0004
    MOVE.W D0,(A6)                          ; $01D9CC  3C80
    MOVE.L #$40000010,$4(A6)                ; $01D9CE  2D7C 4000 0010 0004
    MOVE.W D1,(A6)                          ; $01D9D6  3C81
    RTS                                     ; $01D9D8  4E75
L_01D9DA:
    MOVE.L #$40000010,$4(A6)                ; $01D9DA  2D7C 4000 0010 0004
    MOVE.W D1,(A6)                          ; $01D9E2  3C81
    RTS                                     ; $01D9E4  4E75
L_01D9E6:
    MOVE.L #$40000010,$4(A6)                ; $01D9E6  2D7C 4000 0010 0004
    MOVE.W D1,(A6)                          ; $01D9EE  3C81
    MOVE.W D2,(A6)                          ; $01D9F0  3C82
    RTS                                     ; $01D9F2  4E75
L_01D9F4:
    MOVEM.L D1-D2,-(A7)                     ; $01D9F4  48E7 6000
    NOT.W D1                                ; $01D9F8  4641
    MOVE.L #$5C000003,$4(A6)                ; $01D9FA  2D7C 5C00 0003 0004
    MOVE.W D1,(A6)                          ; $01DA02  3C81
    MOVEM.L (A7)+,D1-D2                     ; $01DA04  4CDF 0006
    RTS                                     ; $01DA08  4E75
L_01DA0A:
    BSR.S L_01DA1E                          ; $01DA0A  6112
L_01DA0C:
    LEA $0000C000,A0                        ; $01DA0C  41F9 0000 C000
    LEA $14B4(A5),A4                        ; $01DA12  49ED 14B4
    MOVE.W #$003F,$3D0(A5)                  ; $01DA16  3B7C 003F 03D0
    BRA.S L_01DA2E                          ; $01DA1C  6010
L_01DA1E:
    LEA $0000E000,A0                        ; $01DA1E  41F9 0000 E000
    LEA $34B8(A5),A4                        ; $01DA24  49ED 34B8
    MOVE.W #$001F,$3D0(A5)                  ; $01DA28  3B7C 001F 03D0
L_01DA2E:
    MOVEM.L D0-D7/A0-A6,-(A7)               ; $01DA2E  48E7 FFFE
    MOVE.L A0,-(A7)                         ; $01DA32  2F08
    MOVEA.L A4,A0                           ; $01DA34  204C
    MOVE.W #$003F,(A4)+                     ; $01DA36  38FC 003F
    MOVE.W $3D0(A5),D1                      ; $01DA3A  322D 03D0
    MOVE.W D1,(A4)+                         ; $01DA3E  38C1
    MOVEQ #$00,D2                           ; $01DA40  7400
L_01DA42:
    MOVEQ #$3F,D0                           ; $01DA42  703F
L_01DA44:
    MOVE.W D2,(A4)+                         ; $01DA44  38C2
    DBRA D0,L_01DA44                        ; $01DA46  51C8 FFFC
    DBRA D1,L_01DA42                        ; $01DA4A  51C9 FFF6
    MOVEQ #$00,D0                           ; $01DA4E  7000
    MOVEQ #$00,D1                           ; $01DA50  7200
    MOVEQ #$00,D2                           ; $01DA52  7400
    MOVEQ #$00,D3                           ; $01DA54  7600
    MOVEA.L (A7)+,A1                        ; $01DA56  225F
    JSR L_000C84                            ; $01DA58  4EB9 0000 0C84
    MOVEM.L (A7)+,D0-D7/A0-A6               ; $01DA5E  4CDF 7FFF
    RTS                                     ; $01DA62  4E75
L_01DA64:
    MOVE.W #$000B,$00FFFF94                 ; $01DA64  33FC 000B 00FF FF94  sound_mailbox
    MOVE.W #$000B,$3E2(A5)                  ; $01DA6C  3B7C 000B 03E2
    MOVE.L A7,$14A8(A5)                     ; $01DA72  2B4F 14A8
    LEA $660E(A5),A0                        ; $01DA76  41ED 660E
    MOVE.L A0,$6E8(A5)                      ; $01DA7A  2B48 06E8
    LEA L_10CF54,A0                         ; $01DA7E  41F9 0010 CF54
    MOVE.L A0,$652(A5)                      ; $01DA84  2B48 0652
    CLR.W $72E(A5)                          ; $01DA88  426D 072E
    CLR.W $730(A5)                          ; $01DA8C  426D 0730
    JSR L_0045E6                            ; $01DA90  4EB9 0000 45E6
    JSR L_0015E0                            ; $01DA96  4EB9 0000 15E0
    MOVE.W #$0002,$6F0(A5)                  ; $01DA9C  3B7C 0002 06F0
    CLR.B $65B(A5)                          ; $01DAA2  422D 065B            pad2_enabled
    LEA $00C00000,A6                        ; $01DAA6  4DF9 00C0 0000
    MOVE.W #$9200,$4(A6)                    ; $01DAAC  3D7C 9200 0004
    BSR.W L_01D982                          ; $01DAB2  6100 FECE
    LEA L_11B9F4,A0                         ; $01DAB6  41F9 0011 B9F4
    MOVE.W #$0086,D0                        ; $01DABC  303C 0086
    LEA L_008720,A1                         ; $01DAC0  43F9 0000 8720
    JSR L_00064A                            ; $01DAC6  4EB9 0000 064A
    JSR L_001F80                            ; $01DACC  4EB9 0000 1F80
    MOVEQ #$78,D0                           ; $01DAD2  7078
    BSR.W L_01DBDE                          ; $01DAD4  6100 0108
    JSR L_0015E0                            ; $01DAD8  4EB9 0000 15E0
    MOVEQ #$0A,D0                           ; $01DADE  700A
    JSR L_002012                            ; $01DAE0  4EB9 0000 2012
    MOVEQ #$64,D0                           ; $01DAE6  7064
    BSR.W L_01DBDE                          ; $01DAE8  6100 00F4
    JSR L_0015E0                            ; $01DAEC  4EB9 0000 15E0
    MOVEQ #$01,D0                           ; $01DAF2  7001
    JSR L_002012                            ; $01DAF4  4EB9 0000 2012
    MOVEQ #$64,D0                           ; $01DAFA  7064
    BSR.W L_01DBDE                          ; $01DAFC  6100 00E0
    JSR L_0015E0                            ; $01DB00  4EB9 0000 15E0
    MOVEQ #$02,D0                           ; $01DB06  7002
    TST.W $47A(A5)                          ; $01DB08  4A6D 047A
    BNE.S L_01DB10                          ; $01DB0C  6602
    MOVEQ #$0B,D0                           ; $01DB0E  700B
L_01DB10:
    JSR L_002012                            ; $01DB10  4EB9 0000 2012
    MOVE.W #$0154,D0                        ; $01DB16  303C 0154
    BSR.W L_01DBDE                          ; $01DB1A  6100 00C2
    JSR L_0015E0                            ; $01DB1E  4EB9 0000 15E0
    LEA L_01DF68(PC),A0                     ; $01DB24  41FA 0442
    BSR.W L_01DC7C                          ; $01DB28  6100 0152
    MOVEQ #$02,D0                           ; $01DB2C  7002
    BSR.W L_01DBDE                          ; $01DB2E  6100 00AE
    LEA L_01E03B,A0                         ; $01DB32  41F9 0001 E03B
    BSR.W L_01DC7C                          ; $01DB38  6100 0142
    MOVEQ #$1E,D0                           ; $01DB3C  701E
    BSR.W L_01DBDE                          ; $01DB3E  6100 009E
    LEA L_01E098,A0                         ; $01DB42  41F9 0001 E098
    BSR.W L_01DC7C                          ; $01DB48  6100 0132
    MOVEQ #$02,D0                           ; $01DB4C  7002
    BSR.W L_01DBDE                          ; $01DB4E  6100 008E
    MOVEQ #$09,D0                           ; $01DB52  7009
    JSR L_002012                            ; $01DB54  4EB9 0000 2012
    BSR.W L_01DC16                          ; $01DB5A  6100 00BA
    MOVE.W #$016D,D0                        ; $01DB5E  303C 016D
    BSR.W L_01DBDE                          ; $01DB62  6100 007A
    JSR L_0015E0                            ; $01DB66  4EB9 0000 15E0
    MOVEQ #$1E,D0                           ; $01DB6C  701E
    BSR.W L_01DBDE                          ; $01DB6E  6100 006E
    LEA L_01E134,A0                         ; $01DB72  41F9 0001 E134
    BSR.W L_01DC7C                          ; $01DB78  6100 0102
    MOVEQ #$1E,D0                           ; $01DB7C  701E
    BSR.W L_01DBDE                          ; $01DB7E  6100 005E
    MOVEQ #$05,D0                           ; $01DB82  7005
    BSR.W L_01DD80                          ; $01DB84  6100 01FA
    MOVE.W #$000B,$00FFFFBE                 ; $01DB88  33FC 000B 00FF FFBE
    MOVEQ #$19,D0                           ; $01DB90  7019
    BSR.W L_01DBDE                          ; $01DB92  6100 004A
    MOVEQ #$03,D0                           ; $01DB96  7003
    BSR.W L_01DD80                          ; $01DB98  6100 01E6
    MOVEQ #$19,D0                           ; $01DB9C  7019
    BSR.S L_01DBDE                          ; $01DB9E  613E
    MOVEQ #$04,D0                           ; $01DBA0  7004
    BSR.W L_01DD80                          ; $01DBA2  6100 01DC
    MOVEQ #$19,D0                           ; $01DBA6  7019
    BSR.S L_01DBDE                          ; $01DBA8  6134
    MOVEQ #$06,D0                           ; $01DBAA  7006
    BSR.W L_01DD80                          ; $01DBAC  6100 01D2
    MOVEQ #$19,D0                           ; $01DBB0  7019
    BSR.S L_01DBDE                          ; $01DBB2  612A
    MOVEQ #$08,D0                           ; $01DBB4  7008
    BSR.W L_01DD80                          ; $01DBB6  6100 01C8
    MOVEQ #$19,D0                           ; $01DBBA  7019
    BSR.S L_01DBDE                          ; $01DBBC  6120
    MOVEQ #$07,D0                           ; $01DBBE  7007
    BSR.W L_01DD80                          ; $01DBC0  6100 01BE
    MOVEQ #$64,D0                           ; $01DBC4  7064
    BSR.S L_01DBDE                          ; $01DBC6  6116
    BRA.S L_01DBD4                          ; $01DBC8  600A
L_01DBCA:
    MOVEA.L $14A8(A5),A7                    ; $01DBCA  2E6D 14A8
    JSR L_0015E0                            ; $01DBCE  4EB9 0000 15E0
L_01DBD4:
    BSR.W L_01D98E                          ; $01DBD4  6100 FDB8
    JMP L_003DCC                            ; $01DBD8  4EF9 0000 3DCC
L_01DBDE:
    MOVE.L D1,-(A7)                         ; $01DBDE  2F01
    TST.W $480(A5)                          ; $01DBE0  4A6D 0480
    BEQ.S L_01DBF0                          ; $01DBE4  670A
    MOVE.L D0,D1                            ; $01DBE6  2200
    BEQ.S L_01DBF0                          ; $01DBE8  6706
    DIVU.W $480(A5),D1                      ; $01DBEA  82ED 0480
    ADD.W D1,D0                             ; $01DBEE  D041
L_01DBF0:
    MOVE.L (A7)+,D1                         ; $01DBF0  221F
L_01DBF2:
    MOVE.L D0,-(A7)                         ; $01DBF2  2F00
    MOVE.L $472(A5),D0                      ; $01DBF4  202D 0472            frame_counter
L_01DBF8:
    CMP.L $472(A5),D0                       ; $01DBF8  B0AD 0472            frame_counter
    BEQ.S L_01DBF8                          ; $01DBFC  67FA
    MOVE.L (A7)+,D0                         ; $01DBFE  201F
    BTST #$05,$3D7(A5)                      ; $01DC00  082D 0005 03D7       pad1_raw_th_low
    BEQ.S L_01DBCA                          ; $01DC06  67C2
    BTST #$05,$3D6(A5)                      ; $01DC08  082D 0005 03D6       pad1_raw_th_high
    BEQ.S L_01DBCA                          ; $01DC0E  67BA
    DBRA D0,L_01DBF2                        ; $01DC10  51C8 FFE0
    RTS                                     ; $01DC14  4E75
L_01DC16:
    LEA $11FA(A5),A0                        ; $01DC16  41ED 11FA
    MOVEA.L A0,A1                           ; $01DC1A  2248
    MOVE.W #$001F,(A1)+                     ; $01DC1C  32FC 001F
    MOVE.W #$0000,(A1)+                     ; $01DC20  32FC 0000
    LEA L_01DC5A(PC),A2                     ; $01DC24  45FA 0034
L_01DC28:
    MOVEQ #$00,D1                           ; $01DC28  7200
    MOVE.B (A2)+,D1                         ; $01DC2A  121A
    BEQ.S L_01DC40                          ; $01DC2C  6712
    CMPI.B #$20,D1                          ; $01DC2E  0C01 0020
    BNE.S L_01DC38                          ; $01DC32  6604
    MOVE.W #$00C7,D1                        ; $01DC34  323C 00C7
L_01DC38:
    SUBI.W #$0041,D1                        ; $01DC38  0441 0041
    MOVE.W D1,(A1)+                         ; $01DC3C  32C1
    BRA.S L_01DC28                          ; $01DC3E  60E8
L_01DC40:
    MOVE.W #$0439,D0                        ; $01DC40  303C 0439
    MOVE.W #$C000,D1                        ; $01DC44  323C C000
    MOVEQ #$04,D2                           ; $01DC48  7404
    MOVEQ #$19,D3                           ; $01DC4A  7619
    LEA $0000E000,A1                        ; $01DC4C  43F9 0000 E000
    JSR L_000C84                            ; $01DC52  4EB9 0000 0C84
    RTS                                     ; $01DC58  4E75
L_01DC5A:
    dc.b $54,$48,$45,$20,$52,$45,$53,$55,$4C,$54,$53,$20,$57,$45,$52,$45 ; $01DC5A
    dc.b $20,$53,$4F,$4F,$4E,$20,$44,$49,$53,$43,$4F,$56,$45,$52,$45,$44 ; $01DC6A
    dc.b $00,$00                                                         ; $01DC7A
L_01DC7C:
    MOVE.L A0,-(A7)                         ; $01DC7C  2F08
    MOVE.W #$929A,$4(A6)                    ; $01DC7E  3D7C 929A 0004
    BSR.W L_01DA0A                          ; $01DC84  6100 FD84
    LEA $14B4(A5),A1                        ; $01DC88  43ED 14B4
    MOVE.L A1,$14B0(A5)                     ; $01DC8C  2B49 14B0
    MOVEQ #$00,D1                           ; $01DC90  7200
    MOVEQ #$00,D2                           ; $01DC92  7400
    BSR.W L_01D9DA                          ; $01DC94  6100 FD44
    MOVEA.L (A7)+,A0                        ; $01DC98  205F
    MOVEQ #$1A,D7                           ; $01DC9A  7E1A
L_01DC9C:
    MOVEQ #$00,D6                           ; $01DC9C  7C00
    MOVE.B (A0)+,D6                         ; $01DC9E  1C18
L_01DCA0:
    MOVEQ #$00,D0                           ; $01DCA0  7000
    MOVE.B (A0)+,D0                         ; $01DCA2  1018
    BEQ.S L_01DCF8                          ; $01DCA4  6752
    BMI.S L_01DCF4                          ; $01DCA6  6B4C
    CMPI.B #$20,D0                          ; $01DCA8  0C00 0020
    BNE.S L_01DCB2                          ; $01DCAC  6604
    MOVE.W #$00C7,D0                        ; $01DCAE  303C 00C7
L_01DCB2:
    CMPI.B #$2E,D0                          ; $01DCB2  0C00 002E
    BNE.S L_01DCBA                          ; $01DCB6  6602
    MOVEQ #$5F,D0                           ; $01DCB8  705F
L_01DCBA:
    CMPI.B #$2C,D0                          ; $01DCBA  0C00 002C
    BNE.S L_01DCC2                          ; $01DCBE  6602
    MOVEQ #$65,D0                           ; $01DCC0  7065
L_01DCC2:
    CMPI.B #$24,D0                          ; $01DCC2  0C00 0024
    BNE.S L_01DCCA                          ; $01DCC6  6602
    MOVEQ #$64,D0                           ; $01DCC8  7064
L_01DCCA:
    CMPI.B #$2D,D0                          ; $01DCCA  0C00 002D
    BNE.S L_01DCD2                          ; $01DCCE  6602
    MOVEQ #$5E,D0                           ; $01DCD0  705E
L_01DCD2:
    SUBI.W #$0041,D0                        ; $01DCD2  0440 0041
    MOVE.W D6,D1                            ; $01DCD6  3206
    MOVE.W D7,D2                            ; $01DCD8  3407
    ADD.W D1,D1                             ; $01DCDA  D241
    MULU.W #$0080,D2                        ; $01DCDC  C4FC 0080
    MOVEA.L $14B0(A5),A1                    ; $01DCE0  226D 14B0
    ADDQ.L #4,A1                            ; $01DCE4  5889
    ADDA.L D2,A1                            ; $01DCE6  D3C2
    ADDA.W D1,A1                            ; $01DCE8  D2C1
    ADDI.W #$0439,D0                        ; $01DCEA  0640 0439
    MOVE.W D0,(A1)                          ; $01DCEE  3280
    ADDQ.W #1,D6                            ; $01DCF0  5246
    BRA.S L_01DCA0                          ; $01DCF2  60AC
L_01DCF4:
    ADDQ.W #1,D7                            ; $01DCF4  5247
    BRA.S L_01DC9C                          ; $01DCF6  60A4
L_01DCF8:
    MOVEA.L $14B0(A5),A0                    ; $01DCF8  206D 14B0
    MOVEQ #$00,D0                           ; $01DCFC  7000
    MOVE.W #$C000,D1                        ; $01DCFE  323C C000
    MOVEQ #$00,D2                           ; $01DD02  7400
    MOVEQ #$00,D3                           ; $01DD04  7600
    LEA $0000C000,A1                        ; $01DD06  43F9 0000 C000
    JSR L_000C84                            ; $01DD0C  4EB9 0000 0C84
    JSR L_0015C8                            ; $01DD12  4EB9 0000 15C8
    MOVEQ #$00,D1                           ; $01DD18  7200
    MOVEQ #$00,D2                           ; $01DD1A  7400
    MOVEQ #$13,D0                           ; $01DD1C  7013
L_01DD1E:
    MOVE.L D0,-(A7)                         ; $01DD1E  2F00
    MOVE.L $472(A5),D0                      ; $01DD20  202D 0472            frame_counter
L_01DD24:
    CMP.L $472(A5),D0                       ; $01DD24  B0AD 0472            frame_counter
    BEQ.S L_01DD24                          ; $01DD28  67FA
    MOVE.L (A7)+,D0                         ; $01DD2A  201F
    BSR.W L_01D9DA                          ; $01DD2C  6100 FCAC
    ADDQ.L #8,D1                            ; $01DD30  5081
    DBRA D0,L_01DD1E                        ; $01DD32  51C8 FFEA
    MOVE.W #$0104,D0                        ; $01DD36  303C 0104
    BSR.W L_01DBDE                          ; $01DD3A  6100 FEA2
    JSR L_0015E0                            ; $01DD3E  4EB9 0000 15E0
    BSR.W L_01DA0C                          ; $01DD44  6100 FCC6
    MOVE.W #$9200,$4(A6)                    ; $01DD48  3D7C 9200 0004
    RTS                                     ; $01DD4E  4E75
L_01DD50:
    MOVEM.L D0-D7/A0-A6,-(A7)               ; $01DD50  48E7 FFFE
    LEA $14B4(A5),A0                        ; $01DD54  41ED 14B4
    LEA $0000C000,A1                        ; $01DD58  43F9 0000 C000
    BRA.S L_01DD6E                          ; $01DD5E  600E
L_01DD60:
    MOVEM.L D0-D7/A0-A6,-(A7)               ; $01DD60  48E7 FFFE
    LEA $34B8(A5),A0                        ; $01DD64  41ED 34B8
    LEA $0000E000,A1                        ; $01DD68  43F9 0000 E000
L_01DD6E:
    MOVEQ #$00,D0                           ; $01DD6E  7000
    MOVEQ #$00,D2                           ; $01DD70  7400
    MOVEQ #$00,D3                           ; $01DD72  7600
    JSR L_000CBA                            ; $01DD74  4EB9 0000 0CBA
    MOVEM.L (A7)+,D0-D7/A0-A6               ; $01DD7A  4CDF 7FFF
    RTS                                     ; $01DD7E  4E75
L_01DD80:
    MOVE.W D0,-(A7)                         ; $01DD80  3F00
    BSR.W L_01D9C0                          ; $01DD82  6100 FC3C
    BSR.W L_01DA0A                          ; $01DD86  6100 FC82
    MOVE.W (A7)+,D0                         ; $01DD8A  301F
    JSR L_00203C                            ; $01DD8C  4EB9 0000 203C
    MOVEA.L $6E8(A5),A1                     ; $01DD92  226D 06E8
    ADDQ.L #4,A1                            ; $01DD96  5889
    MOVE.L A1,$14AC(A5)                     ; $01DD98  2B49 14AC
    LEA $34BC(A5),A1                        ; $01DD9C  43ED 34BC
    MOVE.L A1,$14B0(A5)                     ; $01DDA0  2B49 14B0
    BSR.W L_01DEB0                          ; $01DDA4  6100 010A
    BSR.S L_01DD60                          ; $01DDA8  61B6
    JSR L_0015C8                            ; $01DDAA  4EB9 0000 15C8
    LEA $14B8(A5),A1                        ; $01DDB0  43ED 14B8
    MOVE.L A1,$14B0(A5)                     ; $01DDB4  2B49 14B0
    BSR.W L_01DECE                          ; $01DDB8  6100 0114
    BSR.S L_01DD50                          ; $01DDBC  6192
    MOVEQ #$00,D1                           ; $01DDBE  7200
L_01DDC0:
    MOVE.L D0,-(A7)                         ; $01DDC0  2F00
    MOVE.L $472(A5),D0                      ; $01DDC2  202D 0472            frame_counter
L_01DDC6:
    CMP.L $472(A5),D0                       ; $01DDC6  B0AD 0472            frame_counter
    BEQ.S L_01DDC6                          ; $01DDCA  67FA
    MOVE.L (A7)+,D0                         ; $01DDCC  201F
    BSR.W L_01D9F4                          ; $01DDCE  6100 FC24
    ADDI.W #$000C,D1                        ; $01DDD2  0641 000C
    CMPI.W #$0090,D1                        ; $01DDD6  0C41 0090
    BNE.S L_01DDC0                          ; $01DDDA  66E4
    LEA $34BC(A5),A1                        ; $01DDDC  43ED 34BC
    MOVE.L A1,$14B0(A5)                     ; $01DDE0  2B49 14B0
    BSR.W L_01DECA                          ; $01DDE4  6100 00E4
    BSR.W L_01DD60                          ; $01DDE8  6100 FF76
    BSR.W L_01DA0C                          ; $01DDEC  6100 FC1E
    BSR.W L_01D9C0                          ; $01DDF0  6100 FBCE
    MOVEQ #$64,D0                           ; $01DDF4  7064
    BSR.W L_01DBDE                          ; $01DDF6  6100 FDE6
    LEA $14B8(A5),A1                        ; $01DDFA  43ED 14B8
    MOVE.L A1,$14B0(A5)                     ; $01DDFE  2B49 14B0
    BSR.W L_01DEDE                          ; $01DE02  6100 00DA
    BSR.W L_01DD50                          ; $01DE06  6100 FF48
    MOVEQ #$00,D1                           ; $01DE0A  7200
L_01DE0C:
    MOVE.L D0,-(A7)                         ; $01DE0C  2F00
    MOVE.L $472(A5),D0                      ; $01DE0E  202D 0472            frame_counter
L_01DE12:
    CMP.L $472(A5),D0                       ; $01DE12  B0AD 0472            frame_counter
    BEQ.S L_01DE12                          ; $01DE16  67FA
    MOVE.L (A7)+,D0                         ; $01DE18  201F
    BSR.W L_01D9DA                          ; $01DE1A  6100 FBBE
    ADDI.W #$000C,D1                        ; $01DE1E  0641 000C
    CMPI.W #$00A8,D1                        ; $01DE22  0C41 00A8
    BNE.S L_01DE0C                          ; $01DE26  66E4
    MOVE.W #$0140,D0                        ; $01DE28  303C 0140
    BSR.W L_01DBDE                          ; $01DE2C  6100 FDB0
    SUBI.W #$000C,D1                        ; $01DE30  0441 000C
L_01DE34:
    MOVE.L D0,-(A7)                         ; $01DE34  2F00
    MOVE.L $472(A5),D0                      ; $01DE36  202D 0472            frame_counter
L_01DE3A:
    CMP.L $472(A5),D0                       ; $01DE3A  B0AD 0472            frame_counter
    BEQ.S L_01DE3A                          ; $01DE3E  67FA
    MOVE.L (A7)+,D0                         ; $01DE40  201F
    BSR.W L_01D9DA                          ; $01DE42  6100 FB96
    SUBI.W #$000C,D1                        ; $01DE46  0441 000C
    BNE.S L_01DE34                          ; $01DE4A  66E8
    BSR.W L_01DA0C                          ; $01DE4C  6100 FBBE
    BSR.W L_01DD50                          ; $01DE50  6100 FEFE
    BSR.W L_01D9C0                          ; $01DE54  6100 FB6A
    LEA $14B8(A5),A1                        ; $01DE58  43ED 14B8
    MOVE.L A1,$14B0(A5)                     ; $01DE5C  2B49 14B0
    BSR.W L_01DECA                          ; $01DE60  6100 0068
    LEA $34BC(A5),A1                        ; $01DE64  43ED 34BC
    MOVE.L A1,$14B0(A5)                     ; $01DE68  2B49 14B0
    BSR.W L_01DF34                          ; $01DE6C  6100 00C6
    MOVE.L D0,-(A7)                         ; $01DE70  2F00
    MOVE.L $472(A5),D0                      ; $01DE72  202D 0472            frame_counter
L_01DE76:
    CMP.L $472(A5),D0                       ; $01DE76  B0AD 0472            frame_counter
    BEQ.S L_01DE76                          ; $01DE7A  67FA
    MOVE.L (A7)+,D0                         ; $01DE7C  201F
    BSR.W L_01DD50                          ; $01DE7E  6100 FED0
    BSR.W L_01DD60                          ; $01DE82  6100 FEDC
    MOVEQ #$FF,D1                           ; $01DE86  72FF
    MOVEQ #$0E,D0                           ; $01DE88  700E
L_01DE8A:
    MOVE.L D0,-(A7)                         ; $01DE8A  2F00
    MOVE.L $472(A5),D0                      ; $01DE8C  202D 0472            frame_counter
L_01DE90:
    CMP.L $472(A5),D0                       ; $01DE90  B0AD 0472            frame_counter
    BEQ.S L_01DE90                          ; $01DE94  67FA
    MOVE.L (A7)+,D0                         ; $01DE96  201F
    BSR.W L_01D9F4                          ; $01DE98  6100 FB5A
    SUBI.W #$000C,D1                        ; $01DE9C  0441 000C
    DBRA D0,L_01DE8A                        ; $01DEA0  51C8 FFE8
    MOVEQ #$1E,D0                           ; $01DEA4  701E
    BSR.W L_01DBDE                          ; $01DEA6  6100 FD36
    JMP L_0015E0                            ; $01DEAA  4EF9 0000 15E0
L_01DEB0:
    MOVEM.L D0-D5,-(A7)                     ; $01DEB0  48E7 FC00
    MOVE.W #$00A0,D5                        ; $01DEB4  3A3C 00A0
    MOVEQ #$14,D4                           ; $01DEB8  7814
    MOVEQ #$00,D0                           ; $01DEBA  7000
    MOVEQ #$00,D1                           ; $01DEBC  7200
    MOVE.W #$2000,D3                        ; $01DEBE  363C 2000
    BSR.S L_01DEF4                          ; $01DEC2  6130
    MOVEM.L (A7)+,D0-D5                     ; $01DEC4  4CDF 003F
    RTS                                     ; $01DEC8  4E75
L_01DECA:
    MOVEQ #$56,D1                           ; $01DECA  7256
    BRA.S L_01DED0                          ; $01DECC  6002
L_01DECE:
    MOVEQ #$68,D1                           ; $01DECE  7268
L_01DED0:
    MOVEQ #$20,D5                           ; $01DED0  7A20
    MOVEQ #$0F,D4                           ; $01DED2  780F
    MOVEQ #$3E,D0                           ; $01DED4  703E
    MOVE.W #$6000,D3                        ; $01DED6  363C 6000
    BSR.S L_01DEF4                          ; $01DEDA  6118
    RTS                                     ; $01DEDC  4E75
L_01DEDE:
    MOVE.W #$0714,D1                        ; $01DEDE  323C 0714
    MOVEQ #$58,D5                           ; $01DEE2  7A58
    MOVEQ #$14,D4                           ; $01DEE4  7814
    MOVE.W #$012C,D0                        ; $01DEE6  303C 012C
    MOVE.W #$6000,D3                        ; $01DEEA  363C 6000
    BSR.S L_01DEF4                          ; $01DEEE  6104
    RTS                                     ; $01DEF0  4E75
L_01DEF2:
    MOVEQ #$00,D3                           ; $01DEF2  7600
L_01DEF4:
    MOVE.W #$0080,D2                        ; $01DEF4  343C 0080
    SUBQ.W #1,D4                            ; $01DEF8  5344
    BMI.S L_01DF32                          ; $01DEFA  6B36
    LSR.W #3,D5                             ; $01DEFC  E64D
    SUBQ.W #1,D5                            ; $01DEFE  5345
    BMI.S L_01DF32                          ; $01DF00  6B30
    MOVEA.L $14AC(A5),A0                    ; $01DF02  206D 14AC
    ADD.W D0,D0                             ; $01DF06  D040
    ADDA.W D0,A0                            ; $01DF08  D0C0
    MOVEA.L $14B0(A5),A1                    ; $01DF0A  226D 14B0
    ADD.W D1,D1                             ; $01DF0E  D241
    ADDA.W D1,A1                            ; $01DF10  D2C1
L_01DF12:
    MOVEM.L D4/D6/A0-A1,-(A7)               ; $01DF12  48E7 0AC0
L_01DF16:
    MOVE.W (A0)+,D6                         ; $01DF16  3C18
    ANDI.W #$07FF,D6                        ; $01DF18  0246 07FF
    OR.W D3,D6                              ; $01DF1C  8C43
    MOVE.W D6,(A1)+                         ; $01DF1E  32C6
    DBRA D4,L_01DF16                        ; $01DF20  51CC FFF4
    MOVEM.L (A7)+,D4/D6/A0-A1               ; $01DF24  4CDF 0350
    LEA $50(A0),A0                          ; $01DF28  41E8 0050
    ADDA.W D2,A1                            ; $01DF2C  D2C2
    DBRA D5,L_01DF12                        ; $01DF2E  51CD FFE2
L_01DF32:
    RTS                                     ; $01DF32  4E75
L_01DF34:
    MOVEQ #$56,D1                           ; $01DF34  7256
    MOVEQ #$20,D5                           ; $01DF36  7A20
    MOVEQ #$0E,D4                           ; $01DF38  780E
    MOVEQ #$3E,D0                           ; $01DF3A  703E
    MOVE.W #$0080,D2                        ; $01DF3C  343C 0080
    LSR.W #3,D5                             ; $01DF40  E64D
    SUBQ.W #1,D5                            ; $01DF42  5345
    BMI.S L_01DF66                          ; $01DF44  6B20
    MOVEA.L $14B0(A5),A1                    ; $01DF46  226D 14B0
    ADD.W D1,D1                             ; $01DF4A  D241
    ADDA.W D1,A1                            ; $01DF4C  D2C1
L_01DF4E:
    MOVEM.L D4/A0-A1,-(A7)                  ; $01DF4E  48E7 08C0
L_01DF52:
    CLR.W (A1)+                             ; $01DF52  4259
    DBRA D4,L_01DF52                        ; $01DF54  51CC FFFC
    MOVEM.L (A7)+,D4/A0-A1                  ; $01DF58  4CDF 0310
    LEA $50(A0),A0                          ; $01DF5C  41E8 0050
    ADDA.W D2,A1                            ; $01DF60  D2C2
    DBRA D5,L_01DF4E                        ; $01DF62  51CD FFEA
L_01DF66:
    RTS                                     ; $01DF66  4E75
L_01DF68:
    dc.b $05,$53,$4F,$4D,$45,$54,$49,$4D,$45,$20,$49,$4E,$20,$54,$48,$45 ; $01DF68
    dc.b $20,$4C,$41,$53,$54,$20,$43,$45,$4E,$54,$55,$52,$59,$2C,$FF,$0A ; $01DF78
    dc.b $41,$4E,$20,$45,$58,$50,$45,$52,$49,$4D,$45,$4E,$54,$45,$52,$20 ; $01DF88
    dc.b $57,$49,$54,$48,$FF,$05,$54,$49,$4D,$45,$2C,$53,$50,$41,$43,$45 ; $01DF98
    dc.b $20,$41,$4E,$44,$20,$45,$41,$52,$4C,$59,$20,$43,$4F,$4D,$50,$55 ; $01DFA8
    dc.b $54,$45,$52,$53,$FF,$07,$43,$52,$45,$41,$54,$45,$44,$20,$41,$20 ; $01DFB8
    dc.b $42,$49,$5A,$41,$52,$52,$45,$20,$4D,$41,$43,$48,$49,$4E,$45,$2E ; $01DFC8
    dc.b $FF,$13,$20,$FF,$08,$54,$48,$45,$20,$49,$4E,$56,$45,$4E,$54,$4F ; $01DFD8
    dc.b $52,$24,$53,$20,$4E,$41,$4D,$45,$20,$57,$41,$53,$FF,$0C,$42,$41 ; $01DFE8
    dc.b $52,$4F,$4E,$20,$46,$4F,$52,$54,$45,$53,$51,$55,$45,$FF,$07,$41 ; $01DFF8
    dc.b $4E,$44,$20,$54,$48,$45,$20,$4D,$41,$43,$48,$49,$4E,$45,$20,$57 ; $01E008
    dc.b $41,$53,$20,$43,$41,$4C,$4C,$45,$44,$FF,$13,$20,$FF,$0A,$54,$48 ; $01E018
    dc.b $45,$20,$43,$48,$41,$4F,$53,$20,$45,$4E,$47,$49,$4E,$45,$2E,$2E ; $01E028
    dc.b $2E,$20,$00                                                     ; $01E038
L_01E03B:
    dc.b $04,$41,$4C,$54,$48,$4F,$55,$47,$48,$20,$50,$52,$49,$4D,$49,$54 ; $01E03B
    dc.b $49,$56,$45,$2C,$20,$54,$48,$45,$20,$4D,$41,$43,$48,$49,$4E,$45 ; $01E04B
    dc.b $FF,$07,$42,$45,$43,$41,$4D,$45,$20,$49,$4E,$43,$52,$45,$44,$49 ; $01E05B
    dc.b $42,$4C,$59,$20,$50,$4F,$57,$45,$52,$46,$55,$4C,$FF,$05,$41,$4E ; $01E06B
    dc.b $44,$20,$54,$55,$52,$4E,$45,$44,$20,$41,$47,$41,$49,$4E,$53,$54 ; $01E07B
    dc.b $20,$49,$54,$53,$20,$43,$52,$45,$41,$54,$4F,$52,$00             ; $01E08B
L_01E098:
    dc.b $07,$49,$54,$53,$20,$50,$4F,$57,$45,$52,$20,$54,$4F,$20,$43,$4F ; $01E098
    dc.b $52,$52,$55,$50,$54,$20,$54,$49,$4D,$45,$FF,$05,$41,$4E,$44,$20 ; $01E0A8
    dc.b $4D,$41,$54,$54,$45,$52,$20,$57,$41,$53,$20,$4F,$55,$54,$20,$4F ; $01E0B8
    dc.b $46,$20,$43,$4F,$4E,$54,$52,$4F,$4C,$FF,$07,$41,$20,$43,$4C,$4F ; $01E0C8
    dc.b $55,$44,$20,$4F,$46,$20,$43,$48,$41,$4F,$53,$20,$44,$45,$53,$43 ; $01E0D8
    dc.b $45,$4E,$44,$45,$44,$FF,$0D,$4F,$56,$45,$52,$20,$54,$48,$45,$20 ; $01E0E8
    dc.b $4C,$41,$4E,$44,$2C,$FF,$08,$48,$55,$4D,$41,$4E,$53,$20,$41,$4E ; $01E0F8
    dc.b $44,$20,$41,$4E,$49,$4D,$41,$4C,$53,$20,$57,$45,$52,$45,$FF,$06 ; $01E108
    dc.b $54,$55,$52,$4E,$45,$44,$20,$49,$4E,$54,$4F,$20,$52,$41,$56,$45 ; $01E118
    dc.b $4E,$4F,$55,$53,$20,$42,$45,$41,$53,$54,$53,$00                 ; $01E128
L_01E134:
    dc.b $09,$45,$4E,$54,$45,$52,$20,$53,$49,$58,$20,$48,$41,$52,$44,$20 ; $01E134
    dc.b $4E,$41,$49,$4C,$45,$44,$FF,$0A,$4D,$45,$52,$43,$45,$4E,$41,$52 ; $01E144
    dc.b $49,$45,$53,$20,$46,$4F,$52,$20,$48,$49,$52,$45,$00,$00         ; $01E154
L_01E162:
    LEA $00C00000,A6                        ; $01E162  4DF9 00C0 0000
    JSR L_0015E0                            ; $01E168  4EB9 0000 15E0
    MOVE.W #$000C,$00FFFF94                 ; $01E16E  33FC 000C 00FF FF94  sound_mailbox
    MOVE.W #$000C,$3E2(A5)                  ; $01E176  3B7C 000C 03E2
    JSR L_0023E8                            ; $01E17C  4EB9 0000 23E8
    JSR L_000C60                            ; $01E182  4EB9 0000 0C60
    JSR L_003F94                            ; $01E188  4EB9 0000 3F94
    MOVE.W #$9200,$4(A6)                    ; $01E18E  3D7C 9200 0004
    ST $F74(A5)                             ; $01E194  50ED 0F74
    CLR.B $63(A5)                           ; $01E198  422D 0063
    BCLR #$00,$B85(A5)                      ; $01E19C  08AD 0000 0B85
    JSR L_003DCC                            ; $01E1A2  4EB9 0000 3DCC
    BSR.S L_01E1CE                          ; $01E1A8  6124
    JSR L_003DCC                            ; $01E1AA  4EB9 0000 3DCC
    BSR.W L_01D98E                          ; $01E1B0  6100 F7DC
    JSR L_00D9E8                            ; $01E1B4  4EB9 0000 D9E8
    JSR L_0015E0                            ; $01E1BA  4EB9 0000 15E0
    JSR L_000C60                            ; $01E1C0  4EB9 0000 0C60
    JSR L_008628                            ; $01E1C6  4EB9 0000 8628
    RTS                                     ; $01E1CC  4E75
L_01E1CE:
    LEA $660E(A5),A0                        ; $01E1CE  41ED 660E
    MOVE.L A0,$6E8(A5)                      ; $01E1D2  2B48 06E8
    CLR.W $72E(A5)                          ; $01E1D6  426D 072E
    CLR.W $730(A5)                          ; $01E1DA  426D 0730
    JSR L_0045E6                            ; $01E1DE  4EB9 0000 45E6
    CLR.B $65B(A5)                          ; $01E1E4  422D 065B            pad2_enabled
    MOVEQ #$0C,D0                           ; $01E1E8  700C
    JSR L_002012                            ; $01E1EA  4EB9 0000 2012
    MOVE.L D0,-(A7)                         ; $01E1F0  2F00
    MOVE.L #$00000096,D0                    ; $01E1F2  203C 0000 0096
    JSR L_000922                            ; $01E1F8  4EB9 0000 0922
    MOVE.L (A7)+,D0                         ; $01E1FE  201F
    MOVE.W #$0FFF,$482(A5)                  ; $01E200  3B7C 0FFF 0482
    JSR L_0015E0                            ; $01E206  4EB9 0000 15E0
    MOVEQ #$0D,D0                           ; $01E20C  700D
    JSR L_00203C                            ; $01E20E  4EB9 0000 203C
    MOVEA.L $6E8(A5),A1                     ; $01E214  226D 06E8
    ADDQ.L #4,A1                            ; $01E218  5889
    MOVE.L A1,$14AC(A5)                     ; $01E21A  2B49 14AC
    BSR.W L_01EA9E                          ; $01E21E  6100 087E
    CLR.W $482(A5)                          ; $01E222  426D 0482
    JSR L_0015E0                            ; $01E226  4EB9 0000 15E0
    MOVEQ #$00,D0                           ; $01E22C  7000
    BSR.W L_01E96C                          ; $01E22E  6100 073C
    JSR L_0015C8                            ; $01E232  4EB9 0000 15C8
    BSR.W L_01E2B6                          ; $01E238  6100 007C
    BSR.W L_01E2E8                          ; $01E23C  6100 00AA
    JSR L_0023E8                            ; $01E240  4EB9 0000 23E8
    MOVE.L D0,-(A7)                         ; $01E246  2F00
    MOVE.L $472(A5),D0                      ; $01E248  202D 0472            frame_counter
L_01E24C:
    CMP.L $472(A5),D0                       ; $01E24C  B0AD 0472            frame_counter
    BEQ.S L_01E24C                          ; $01E250  67FA
    MOVE.L (A7)+,D0                         ; $01E252  201F
    LEA $7418(A5),A0                        ; $01E254  41ED 7418
    MOVEQ #$3F,D0                           ; $01E258  703F
L_01E25A:
    CLR.L (A0)+                             ; $01E25A  4298
    DBRA D0,L_01E25A                        ; $01E25C  51C8 FFFC
    MOVEQ #$00,D0                           ; $01E260  7000
L_01E262:
    MOVE.W D0,-(A7)                         ; $01E262  3F00
    BSR.W L_01E96C                          ; $01E264  6100 0706
    MOVE.L D0,-(A7)                         ; $01E268  2F00
    MOVEQ #$0F,D0                           ; $01E26A  700F
    JSR L_000922                            ; $01E26C  4EB9 0000 0922
    MOVE.L (A7)+,D0                         ; $01E272  201F
    MOVE.W (A7)+,D0                         ; $01E274  301F
    ADDQ.W #1,D0                            ; $01E276  5240
    CMPI.W #$0007,D0                        ; $01E278  0C40 0007
    BNE.S L_01E262                          ; $01E27C  66E4
    MOVE.L D0,-(A7)                         ; $01E27E  2F00
    MOVE.L #$00000096,D0                    ; $01E280  203C 0000 0096
    JSR L_000922                            ; $01E286  4EB9 0000 0922
    MOVE.L (A7)+,D0                         ; $01E28C  201F
    JSR L_0015E0                            ; $01E28E  4EB9 0000 15E0
    MOVE.L D0,-(A7)                         ; $01E294  2F00
    MOVEQ #$0A,D0                           ; $01E296  700A
    JSR L_000922                            ; $01E298  4EB9 0000 0922
    MOVE.L (A7)+,D0                         ; $01E29E  201F
    BSR.W L_01E566                          ; $01E2A0  6100 02C4
    MOVE.L D0,-(A7)                         ; $01E2A4  2F00
    MOVE.L #$0000012C,D0                    ; $01E2A6  203C 0000 012C
    JSR L_000922                            ; $01E2AC  4EB9 0000 0922
    MOVE.L (A7)+,D0                         ; $01E2B2  201F
    RTS                                     ; $01E2B4  4E75
L_01E2B6:
    LEA $11FA(A5),A0                        ; $01E2B6  41ED 11FA
    MOVEA.L A0,A1                           ; $01E2BA  2248
    MOVEQ #$07,D0                           ; $01E2BC  7007
L_01E2BE:
    CLR.L (A1)+                             ; $01E2BE  4299
    DBRA D0,L_01E2BE                        ; $01E2C0  51C8 FFFC
    MOVEQ #$00,D0                           ; $01E2C4  7000
    LEA L_009C20,A1                         ; $01E2C6  43F9 0000 9C20
    JSR L_00064A                            ; $01E2CC  4EB9 0000 064A
    LEA L_11B9F4,A0                         ; $01E2D2  41F9 0011 B9F4
    MOVE.W #$0085,D0                        ; $01E2D8  303C 0085
    LEA L_009C40,A1                         ; $01E2DC  43F9 0000 9C40
    JMP L_00064A                            ; $01E2E2  4EF9 0000 064A
L_01E2E8:
    LEA L_01E36A,A4                         ; $01E2E8  49F9 0001 E36A
    MOVE.W #$FFFF,$72E(A5)                  ; $01E2EE  3B7C FFFF 072E
L_01E2F4:
    MOVEQ #$00,D0                           ; $01E2F4  7000
    MOVE.B (A4)+,D0                         ; $01E2F6  101C
    BMI.W L_01E368                          ; $01E2F8  6B00 006E
    SUBQ.B #1,D0                            ; $01E2FC  5300
    BMI.S L_01E342                          ; $01E2FE  6B42
    MOVE.W #$0082,D6                        ; $01E300  3C3C 0082
    MOVE.W #$0067,D7                        ; $01E304  3E3C 0067
    MOVE.L A4,-(A7)                         ; $01E308  2F0C
    BSR.W L_01E9CE                          ; $01E30A  6100 06C2
    MOVEA.L (A7)+,A4                        ; $01E30E  285F
    MOVEQ #$00,D0                           ; $01E310  7000
    MOVE.B $1(A4),D0                        ; $01E312  102C 0001
    SUBQ.B #1,D0                            ; $01E316  5300
    MOVE.W #$0082,D6                        ; $01E318  3C3C 0082
    MOVE.W #$005C,D7                        ; $01E31C  3E3C 005C
    MOVE.L A4,-(A7)                         ; $01E320  2F0C
    BSR.W L_01EA46                          ; $01E322  6100 0722
    MOVEA.L (A7)+,A4                        ; $01E326  285F
    MOVEQ #$00,D0                           ; $01E328  7000
    MOVE.B (A4),D0                          ; $01E32A  1014
    ADDQ.W #2,A4                            ; $01E32C  544C
    SUBQ.B #1,D0                            ; $01E32E  5300
    MOVE.W #$0083,D6                        ; $01E330  3C3C 0083
    MOVE.W #$0052,D7                        ; $01E334  3E3C 0052
    MOVE.L A4,-(A7)                         ; $01E338  2F0C
    BSR.W L_01EA3E                          ; $01E33A  6100 0702
    MOVEA.L (A7)+,A4                        ; $01E33E  285F
    BRA.S L_01E34C                          ; $01E340  600A
L_01E342:
    MOVEQ #$00,D7                           ; $01E342  7E00
    MOVE.B (A4)+,D7                         ; $01E344  1E1C
    MOVE.W D7,$72E(A5)                      ; $01E346  3B47 072E
    BRA.S L_01E2F4                          ; $01E34A  60A8
L_01E34C:
    MOVE.L A4,-(A7)                         ; $01E34C  2F0C
    BSR.W L_01E93C                          ; $01E34E  6100 05EC
    MOVEA.L (A7)+,A4                        ; $01E352  285F
    JSR L_0045A8                            ; $01E354  4EB9 0000 45A8
    MOVE.L D0,-(A7)                         ; $01E35A  2F00
    MOVEQ #$02,D0                           ; $01E35C  7002
    JSR L_000922                            ; $01E35E  4EB9 0000 0922
    MOVE.L (A7)+,D0                         ; $01E364  201F
    BRA.S L_01E2F4                          ; $01E366  608C
L_01E368:
    RTS                                     ; $01E368  4E75
L_01E36A:
    dc.b $00,$00,$01,$01,$01,$01,$01,$01,$02,$01,$01,$03,$01,$01,$03,$01 ; $01E36A
    dc.b $01,$01,$01,$01,$02,$01,$01,$02,$01,$01,$0A,$01,$01,$0A,$01,$01 ; $01E37A
    dc.b $0A,$01,$01,$01,$01,$01,$01,$02,$01,$01,$02,$01,$03,$02,$01,$01 ; $01E38A
    dc.b $02,$01,$09,$02,$01,$09,$02,$01,$01,$02,$01,$09,$03,$01,$04,$03 ; $01E39A
    dc.b $02,$05,$02,$01,$05,$02,$01,$04,$01,$01,$01,$01,$01,$01,$01,$01 ; $01E3AA
    dc.b $03,$01,$02,$03,$01,$02,$03,$01,$01,$03,$01,$01,$01,$01,$01,$01 ; $01E3BA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01E3CA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$01,$04 ; $01E3DA
    dc.b $01,$01,$04,$01,$01,$05,$01,$01,$05,$01,$01,$04,$01,$01,$01,$01 ; $01E3EA
    dc.b $01,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$04,$02,$02 ; $01E3FA
    dc.b $05,$02,$02,$05,$03,$01,$04,$03,$01,$01,$02,$01,$01,$02,$01,$02 ; $01E40A
    dc.b $01,$01,$02,$01,$01,$01,$01,$02,$01,$01,$02,$01,$01,$01,$01,$01 ; $01E41A
    dc.b $01,$03,$01,$01,$03,$01,$01,$02,$01,$01,$02,$01,$01,$01,$01,$01 ; $01E42A
    dc.b $01,$01,$01,$01,$01,$01,$07,$01,$01,$07,$01,$01,$03,$01,$02,$03 ; $01E43A
    dc.b $01,$02,$03,$01,$01,$0A,$01,$01,$0A,$01,$01,$0A,$01,$01,$09,$01 ; $01E44A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01E45A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01E46A
    dc.b $01,$01,$00,$02,$08,$01,$01,$08,$01,$01,$09,$01,$01,$09,$01,$01 ; $01E47A
    dc.b $09,$01,$02,$09,$01,$02,$01,$02,$01,$01,$02,$01,$02,$03,$01,$02 ; $01E48A
    dc.b $03,$01,$02,$03,$01,$04,$03,$01,$04,$03,$01,$01,$02,$01,$01,$01 ; $01E49A
    dc.b $01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$03,$01,$01,$03,$01,$01 ; $01E4AA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$09,$01,$01,$09,$01,$01,$01 ; $01E4BA
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01E4CA
    dc.b $01,$01,$01,$02,$01,$01,$02,$00,$03,$01,$02,$01,$04,$02,$01,$04 ; $01E4DA
    dc.b $03,$02,$04,$03,$02,$01,$03,$01,$06,$03,$01,$08,$03,$01,$07,$03 ; $01E4EA
    dc.b $01,$01,$03,$02,$01,$03,$02,$04,$03,$01,$04,$03,$01,$03,$03,$01 ; $01E4FA
    dc.b $03,$03,$01,$07,$03,$01,$07,$03,$01,$01,$03,$01,$01,$03,$01,$07 ; $01E50A
    dc.b $03,$01,$07,$03,$01,$07,$03,$01,$07,$03,$01,$01,$03,$01,$01,$03 ; $01E51A
    dc.b $01,$04,$03,$02,$04,$03,$02,$04,$03,$01,$04,$03,$01,$04,$03,$01 ; $01E52A
    dc.b $04,$03,$01,$01,$02,$01,$01,$02,$01,$01,$02,$01,$01,$01,$01,$01 ; $01E53A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01E54A
    dc.b $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$FF,$00                 ; $01E55A
L_01E566:
    MOVE.W #$929C,$4(A6)                    ; $01E566  3D7C 929C 0004
    BSR.W L_01D96A                          ; $01E56C  6100 F3FC
    JSR L_000C60                            ; $01E570  4EB9 0000 0C60
    LEA L_0FD0B4,A0                         ; $01E576  41F9 000F D0B4
    MOVEQ #$73,D0                           ; $01E57C  7073
    LEA $4100.W,A1                          ; $01E57E  43F8 4100
    JSR L_00064A                            ; $01E582  4EB9 0000 064A
    LEA $660E(A5),A0                        ; $01E588  41ED 660E
    MOVE.L A0,$14B0(A5)                     ; $01E58C  2B48 14B0
    BSR.W L_01E6CE                          ; $01E590  6100 013C
    MOVEA.L $14B0(A5),A0                    ; $01E594  206D 14B0
    MOVEQ #$00,D0                           ; $01E598  7000
    MOVE.W #$C000,D1                        ; $01E59A  323C C000
    MOVEQ #$00,D2                           ; $01E59E  7400
    MOVEQ #$00,D3                           ; $01E5A0  7600
    LEA $0000.W,A1                          ; $01E5A2  43F8 0000
    JSR L_000C84                            ; $01E5A6  4EB9 0000 0C84
    MOVE.L #$88888888,$616(A5)              ; $01E5AC  2B7C 8888 8888 0616
    JSR L_0015C8                            ; $01E5B4  4EB9 0000 15C8
    LEA L_01E750(PC),A0                     ; $01E5BA  41FA 0194
L_01E5BE:
    ADDQ.W #1,A0                            ; $01E5BE  5248
    MOVE.L A0,D0                            ; $01E5C0  2008
    ANDI.W #$FFFE,D0                        ; $01E5C2  0240 FFFE
    MOVEA.L D0,A0                           ; $01E5C6  2040
    MOVE.W (A0)+,D6                         ; $01E5C8  3C18
    MOVE.W (A0)+,D7                         ; $01E5CA  3E18
    CMPI.W #$001C,D7                        ; $01E5CC  0C47 001C
    BNE.S L_01E5D6                          ; $01E5D0  6604
    BSR.W L_01E6CE                          ; $01E5D2  6100 00FA
L_01E5D6:
    LSR.W #3,D6                             ; $01E5D6  E64E
    MOVE.W D7,$3D0(A5)                      ; $01E5D8  3B47 03D0
L_01E5DC:
    MOVEQ #$00,D0                           ; $01E5DC  7000
    MOVE.B (A0)+,D0                         ; $01E5DE  1018
    BEQ.S L_01E644                          ; $01E5E0  6762
    BMI.S L_01E640                          ; $01E5E2  6B5C
    CMPI.B #$01,D0                          ; $01E5E4  0C00 0001
    BNE.S L_01E5F0                          ; $01E5E8  6606
    BSR.W L_01E684                          ; $01E5EA  6100 0098
    BRA.S L_01E640                          ; $01E5EE  6050
L_01E5F0:
    CMPI.B #$20,D0                          ; $01E5F0  0C00 0020
    BEQ.S L_01E63C                          ; $01E5F4  6746
    CMPI.B #$31,D0                          ; $01E5F6  0C00 0031
    BNE.S L_01E600                          ; $01E5FA  6604
    MOVE.B #$5D,D0                          ; $01E5FC  103C 005D
L_01E600:
    CMPI.B #$30,D0                          ; $01E600  0C00 0030
    BNE.S L_01E60A                          ; $01E604  6604
    MOVE.B #$5C,D0                          ; $01E606  103C 005C
L_01E60A:
    SUBI.W #$0041,D0                        ; $01E60A  0440 0041
    MOVE.W D6,D1                            ; $01E60E  3206
    MOVE.W D7,D2                            ; $01E610  3407
    ADD.W D1,D1                             ; $01E612  D241
    MULU.W #$0080,D2                        ; $01E614  C4FC 0080
    MOVEA.L $14B0(A5),A1                    ; $01E618  226D 14B0
    ADDQ.L #4,A1                            ; $01E61C  5889
    ADDA.L D2,A1                            ; $01E61E  D3C2
    ADDA.W D1,A1                            ; $01E620  D2C1
    LSL.W #2,D0                             ; $01E622  E548
    ADDI.W #$0208,D0                        ; $01E624  0640 0208
    MOVE.W D0,(A1)                          ; $01E628  3280
    ADDQ.W #1,D0                            ; $01E62A  5240
    MOVE.W D0,$80(A1)                       ; $01E62C  3340 0080
    ADDQ.W #1,D0                            ; $01E630  5240
    MOVE.W D0,$2(A1)                        ; $01E632  3340 0002
    ADDQ.W #1,D0                            ; $01E636  5240
    MOVE.W D0,$82(A1)                       ; $01E638  3340 0082
L_01E63C:
    ADDQ.W #2,D6                            ; $01E63C  5446
    BRA.S L_01E5DC                          ; $01E63E  609C
L_01E640:
    BRA.W L_01E5BE                          ; $01E640  6000 FF7C
L_01E644:
    BSR.W L_01E708                          ; $01E644  6100 00C2
    MOVEA.L $14B0(A5),A0                    ; $01E648  206D 14B0
    MOVEQ #$00,D0                           ; $01E64C  7000
    MOVE.W #$C000,D1                        ; $01E64E  323C C000
    MOVEQ #$00,D2                           ; $01E652  7400
    MOVEQ #$00,D3                           ; $01E654  7600
    LEA $0000.W,A1                          ; $01E656  43F8 0000
    JSR L_000C84                            ; $01E65A  4EB9 0000 0C84
    MOVEQ #$00,D1                           ; $01E660  7200
    MOVEQ #$00,D2                           ; $01E662  7400
    MOVE.W #$00A0,D0                        ; $01E664  303C 00A0
L_01E668:
    MOVE.L D0,-(A7)                         ; $01E668  2F00
    MOVE.L $472(A5),D0                      ; $01E66A  202D 0472            frame_counter
L_01E66E:
    CMP.L $472(A5),D0                       ; $01E66E  B0AD 0472            frame_counter
    BEQ.S L_01E66E                          ; $01E672  67FA
    MOVE.L (A7)+,D0                         ; $01E674  201F
    BSR.W L_01D9E6                          ; $01E676  6100 F36E
    ADDQ.L #1,D1                            ; $01E67A  5281
    ADDQ.L #1,D2                            ; $01E67C  5282
    DBRA D0,L_01E668                        ; $01E67E  51C8 FFE8
    RTS                                     ; $01E682  4E75
L_01E684:
    MOVEM.L D0-D7/A0-A6,-(A7)               ; $01E684  48E7 FFFE
    MOVEA.L $14B0(A5),A0                    ; $01E688  206D 14B0
    MOVEQ #$00,D0                           ; $01E68C  7000
    MOVE.W #$C000,D1                        ; $01E68E  323C C000
    MOVEQ #$00,D2                           ; $01E692  7400
    MOVEQ #$00,D3                           ; $01E694  7600
    LEA $0000.W,A1                          ; $01E696  43F8 0000
    JSR L_000C84                            ; $01E69A  4EB9 0000 0C84
    MOVEQ #$00,D1                           ; $01E6A0  7200
    MOVEQ #$00,D2                           ; $01E6A2  7400
    MOVE.W $3D0(A5),D0                      ; $01E6A4  302D 03D0
    LSL.W #3,D0                             ; $01E6A8  E748
    ADDI.W #$0014,D0                        ; $01E6AA  0640 0014
L_01E6AE:
    MOVE.L D0,-(A7)                         ; $01E6AE  2F00
    MOVE.L $472(A5),D0                      ; $01E6B0  202D 0472            frame_counter
L_01E6B4:
    CMP.L $472(A5),D0                       ; $01E6B4  B0AD 0472            frame_counter
    BEQ.S L_01E6B4                          ; $01E6B8  67FA
    MOVE.L (A7)+,D0                         ; $01E6BA  201F
    BSR.W L_01D9E6                          ; $01E6BC  6100 F328
    ADDQ.L #1,D1                            ; $01E6C0  5281
    ADDQ.L #1,D2                            ; $01E6C2  5282
    DBRA D0,L_01E6AE                        ; $01E6C4  51C8 FFE8
    MOVEM.L (A7)+,D0-D7/A0-A6               ; $01E6C8  4CDF 7FFF
    RTS                                     ; $01E6CC  4E75
L_01E6CE:
    MOVEM.L D0-D7/A0-A6,-(A7)               ; $01E6CE  48E7 FFFE
    MOVE.L D0,-(A7)                         ; $01E6D2  2F00
    MOVE.L $472(A5),D0                      ; $01E6D4  202D 0472            frame_counter
L_01E6D8:
    CMP.L $472(A5),D0                       ; $01E6D8  B0AD 0472            frame_counter
    BEQ.S L_01E6D8                          ; $01E6DC  67FA
    MOVE.L (A7)+,D0                         ; $01E6DE  201F
    MOVEQ #$00,D1                           ; $01E6E0  7200
    MOVEQ #$00,D2                           ; $01E6E2  7400
    BSR.W L_01D9E6                          ; $01E6E4  6100 F300
    MOVEA.L $14B0(A5),A2                    ; $01E6E8  246D 14B0
    MOVE.W #$003F,(A2)+                     ; $01E6EC  34FC 003F
    MOVE.W #$007F,(A2)+                     ; $01E6F0  34FC 007F
    MOVE.W #$1FFF,D2                        ; $01E6F4  343C 1FFF
    MOVE.W #$0270,D1                        ; $01E6F8  323C 0270
L_01E6FC:
    MOVE.W D1,(A2)+                         ; $01E6FC  34C1
    DBRA D2,L_01E6FC                        ; $01E6FE  51CA FFFC
    MOVEM.L (A7)+,D0-D7/A0-A6               ; $01E702  4CDF 7FFF
    RTS                                     ; $01E706  4E75
L_01E708:
    LEA L_01E91F(PC),A0                     ; $01E708  41FA 0215
    MOVEA.L $14B0(A5),A1                    ; $01E70C  226D 14B0
    LEA $110E(A1),A1                        ; $01E710  43E9 110E
L_01E714:
    MOVE.B (A0)+,D0                         ; $01E714  1018
    BEQ.S L_01E736                          ; $01E716  671E
    CMPI.B #$20,D0                          ; $01E718  0C00 0020
    BNE.S L_01E722                          ; $01E71C  6604
    ADDQ.L #2,A1                            ; $01E71E  5489
    BRA.S L_01E714                          ; $01E720  60F2
L_01E722:
    CMPI.B #$41,D0                          ; $01E722  0C00 0041
    BCS.S L_01E72C                          ; $01E726  6504
    SUBI.B #$41,D0                          ; $01E728  0400 0041
L_01E72C:
    MOVE.W #$0545,D1                        ; $01E72C  323C 0545
    ADD.B D0,D1                             ; $01E730  D200
    MOVE.W D1,(A1)+                         ; $01E732  32C1
    BRA.S L_01E714                          ; $01E734  60DE
L_01E736:
    MOVEA.L $14B0(A5),A0                    ; $01E736  206D 14B0
    MOVEQ #$00,D0                           ; $01E73A  7000
    MOVE.W #$2000,D1                        ; $01E73C  323C 2000
    MOVEQ #$00,D2                           ; $01E740  7400
    MOVEQ #$00,D3                           ; $01E742  7600
    LEA $0000E000,A1                        ; $01E744  43F9 0000 E000
    JMP L_000C84                            ; $01E74A  4EF9 0000 0C84
L_01E750:
    dc.b $00,$70,$00,$1C,$44,$45,$53,$49,$47,$4E,$FF,$00,$00,$40,$00,$1F ; $01E750
    dc.b $53,$49,$4D,$4F,$4E,$20,$4B,$4E,$49,$47,$48,$54,$FF,$00,$00,$38 ; $01E760
    dc.b $00,$22,$45,$52,$49,$43,$20,$4D,$41,$54,$54,$48,$45,$57,$53,$01 ; $01E770
    dc.b $00,$30,$00,$1C,$47,$52,$41,$50,$48,$49,$43,$20,$44,$45,$53,$49 ; $01E780
    dc.b $47,$4E,$FF,$00,$00,$50,$00,$1F,$44,$41,$4E,$20,$4D,$41,$4C,$4F ; $01E790
    dc.b $4E,$45,$01,$00,$00,$10,$00,$1C,$47,$52,$41,$50,$48,$49,$43,$20 ; $01E7A0
    dc.b $43,$4F,$4E,$56,$45,$52,$53,$49,$4F,$4E,$FF,$00,$00,$30,$00,$1F ; $01E7B0
    dc.b $48,$45,$52,$4D,$41,$4E,$20,$53,$45,$52,$41,$4E,$4E,$4F,$01,$00 ; $01E7C0
    dc.b $00,$38,$00,$1C,$4F,$52,$49,$47,$49,$4E,$41,$4C,$20,$43,$4F,$44 ; $01E7D0
    dc.b $45,$FF,$00,$38,$00,$1F,$53,$54,$45,$56,$45,$20,$43,$41,$52,$47 ; $01E7E0
    dc.b $49,$4C,$4C,$01,$00,$28,$00,$1C,$43,$4F,$44,$45,$20,$43,$4F,$4E ; $01E7F0
    dc.b $56,$45,$52,$53,$49,$4F,$4E,$FF,$00,$40,$00,$1F,$47,$4C,$59,$4E ; $01E800
    dc.b $20,$4B,$45,$4E,$44,$41,$4C,$4C,$01,$00,$00,$28,$00,$1C,$41,$44 ; $01E810
    dc.b $44,$49,$54,$49,$4F,$4E,$41,$4C,$20,$43,$4F,$44,$45,$FF,$00,$28 ; $01E820
    dc.b $00,$1F,$4D,$49,$4B,$45,$20,$4D,$4F,$4E,$54,$47,$4F,$4D,$45,$52 ; $01E830
    dc.b $59,$01,$00,$08,$00,$1C,$4F,$52,$49,$47,$49,$4E,$41,$4C,$20,$47 ; $01E840
    dc.b $41,$4D,$45,$20,$4D,$55,$53,$49,$43,$FF,$00,$78,$00,$1F,$30,$20 ; $01E850
    dc.b $53,$46,$58,$FF,$00,$30,$00,$22,$52,$49,$43,$48,$41,$52,$44,$20 ; $01E860
    dc.b $4A,$4F,$53,$45,$50,$48,$01,$00,$00,$20,$00,$1C,$53,$4F,$55,$4E ; $01E870
    dc.b $44,$20,$43,$4F,$4E,$56,$45,$52,$53,$49,$4F,$4E,$FF,$00,$00,$50 ; $01E880
    dc.b $00,$1F,$4A,$41,$53,$4F,$4E,$20,$50,$41,$47,$45,$FF,$00,$00,$40 ; $01E890
    dc.b $00,$22,$41,$54,$20,$47,$52,$41,$46,$54,$47,$4F,$4C,$44,$01,$00 ; $01E8A0
    dc.b $00,$48,$00,$1C,$54,$49,$54,$4C,$45,$20,$4D,$55,$53,$49,$43,$FF ; $01E8B0
    dc.b $00,$88,$00,$1F,$4A,$4F,$49,$01,$00,$10,$00,$1C,$50,$52,$4F,$4A ; $01E8C0
    dc.b $45,$43,$54,$20,$4D,$41,$4E,$41,$47,$45,$4D,$45,$4E,$54,$FF,$00 ; $01E8D0
    dc.b $00,$38,$00,$1F,$47,$52,$41,$45,$4D,$45,$20,$42,$4F,$58,$41,$4C ; $01E8E0
    dc.b $4C,$01,$00,$08,$00,$1C,$53,$4F,$4C,$44,$49,$45,$52,$53,$20,$4F ; $01E8F0
    dc.b $46,$20,$46,$4F,$52,$54,$55,$4E,$45,$FF,$00,$20,$00,$1F,$54,$48 ; $01E900
    dc.b $45,$20,$43,$48,$41,$4F,$53,$20,$45,$4E,$47,$49,$4E,$45,$00     ; $01E910
L_01E91F:
    dc.b $1B,$43,$1C,$20,$54,$48,$45,$20,$42,$49,$54,$4D,$41,$50,$20,$42 ; $01E91F
    dc.b $52,$4F,$54,$48,$45,$52,$53,$20,$1F,$21,$21,$22,$00             ; $01E92F
L_01E93C:
    MOVE.W $72E(A5),D7                      ; $01E93C  3E2D 072E
    BMI.S L_01E962                          ; $01E940  6B20
    CMPI.W #$0004,D7                        ; $01E942  0C47 0004
    BCC.S L_01E962                          ; $01E946  641A
    ADD.W D7,D7                             ; $01E948  DE47
    LEA L_01E964(PC),A0                     ; $01E94A  41FA 0018
    MOVE.W $0(A0,D7.W),D0                   ; $01E94E  3030 7000
    CMP.W $F74(A5),D0                       ; $01E952  B06D 0F74
    BEQ.S L_01E962                          ; $01E956  670A
    MOVE.W D0,$F74(A5)                      ; $01E958  3B40 0F74
    MOVE.W D0,$00FFFFA0                     ; $01E95C  33C0 00FF FFA0
L_01E962:
    RTS                                     ; $01E962  4E75
L_01E964:
    dc.b $00,$7F,$00,$81,$00,$82,$00,$80                                 ; $01E964
L_01E96C:
    MOVEA.L $6E8(A5),A1                     ; $01E96C  226D 06E8
    ADDQ.L #4,A1                            ; $01E970  5889
    MOVE.L A1,$14AC(A5)                     ; $01E972  2B49 14AC
    LEA $7418(A5),A1                        ; $01E976  43ED 7418
    MOVE.L A1,$14B0(A5)                     ; $01E97A  2B49 14B0
    MOVEQ #$68,D5                           ; $01E97E  7A68
    CMPI.W #$0004,D0                        ; $01E980  0C40 0004
    BCS.S L_01E988                          ; $01E984  6502
    MOVEQ #$60,D5                           ; $01E986  7A60
L_01E988:
    ADD.W D0,D0                             ; $01E988  D040
    MOVE.W L_01E9BE(PC,D0.W),D0             ; $01E98A  303B 0032
    MOVE.W #$018E,D1                        ; $01E98E  323C 018E
    MOVEQ #$0A,D4                           ; $01E992  780A
    BSR.W L_01DEF2                          ; $01E994  6100 F55C
    LEA $7414(A5),A0                        ; $01E998  41ED 7414
    MOVE.W #$003F,(A0)                      ; $01E99C  30BC 003F
    MOVE.W #$001B,$2(A0)                    ; $01E9A0  317C 001B 0002
    MOVEQ #$00,D0                           ; $01E9A6  7000
    MOVE.W #$6000,D1                        ; $01E9A8  323C 6000
    MOVEQ #$00,D2                           ; $01E9AC  7400
    MOVEQ #$00,D3                           ; $01E9AE  7600
    LEA $0000E000,A1                        ; $01E9B0  43F9 0000 E000
    JSR L_000C84                            ; $01E9B6  4EB9 0000 0C84
    RTS                                     ; $01E9BC  4E75
L_01E9BE:
    dc.b $00,$00,$00,$0A,$00,$14,$00,$1E,$02,$08,$02,$12,$02,$1C,$02,$26 ; $01E9BE
L_01E9CE:
    MOVEM.L D0-D7/A0-A6,-(A7)               ; $01E9CE  48E7 FFFE
    MULU.W #$0480,D0                        ; $01E9D2  C0FC 0480
    LEA L_0F9C34,A2                         ; $01E9D6  45F9 000F 9C34
    ADDA.L D0,A2                            ; $01E9DC  D5C0
    ST $3DA(A5)                             ; $01E9DE  50ED 03DA
    ADDI.W #$0080,D7                        ; $01E9E2  0647 0080
    ADDI.W #$0080,D6                        ; $01E9E6  0646 0080
    LEA L_01EA18(PC),A1                     ; $01E9EA  43FA 002C
    MOVE.W D6,D4                            ; $01E9EE  3806
    MOVE.W D7,D5                            ; $01E9F0  3A07
L_01E9F2:
    MOVE.W (A1)+,D0                         ; $01E9F2  3019
    BMI.S L_01EA12                          ; $01E9F4  6B1C
    MOVE.W D4,D6                            ; $01E9F6  3C04
    MOVE.W D5,D7                            ; $01E9F8  3E05
    ADD.W D0,D6                             ; $01E9FA  DC40
    ADD.W (A1)+,D7                          ; $01E9FC  DE59
    MOVEM.L D4-D5/A1-A2,-(A7)               ; $01E9FE  48E7 0C60
    JSR L_002616                            ; $01EA02  4EB9 0000 2616
    MOVEM.L (A7)+,D4-D5/A1-A2               ; $01EA08  4CDF 0630
    LEA $80(A2),A2                          ; $01EA0C  45EA 0080
    BRA.S L_01E9F2                          ; $01EA10  60E0
L_01EA12:
    MOVEM.L (A7)+,D0-D7/A0-A6               ; $01EA12  4CDF 7FFF
    RTS                                     ; $01EA16  4E75
L_01EA18:
    dc.b $00,$00,$00,$00,$00,$10,$00,$00,$00,$20,$00,$00,$00,$00,$00,$10 ; $01EA18
    dc.b $00,$10,$00,$10,$00,$20,$00,$10,$00,$00,$00,$20,$00,$10,$00,$20 ; $01EA28
    dc.b $00,$20,$00,$20,$FF,$FF                                         ; $01EA38
L_01EA3E:
    LEA L_0FC934,A2                         ; $01EA3E  45F9 000F C934
    BRA.S L_01EA4C                          ; $01EA44  6006
L_01EA46:
    LEA L_0FCDB4,A2                         ; $01EA46  45F9 000F CDB4
L_01EA4C:
    MOVEM.L D0-D7/A0-A6,-(A7)               ; $01EA4C  48E7 FFFE
    MULU.W #$0180,D0                        ; $01EA50  C0FC 0180
    ADDA.L D0,A2                            ; $01EA54  D5C0
    ST $3DA(A5)                             ; $01EA56  50ED 03DA
    ADDI.W #$0080,D7                        ; $01EA5A  0647 0080
    ADDI.W #$0080,D6                        ; $01EA5E  0646 0080
    LEA L_01EA90(PC),A1                     ; $01EA62  43FA 002C
    MOVE.W D6,D4                            ; $01EA66  3806
    MOVE.W D7,D5                            ; $01EA68  3A07
L_01EA6A:
    MOVE.W (A1)+,D0                         ; $01EA6A  3019
    BMI.S L_01EA8A                          ; $01EA6C  6B1C
    MOVE.W D4,D6                            ; $01EA6E  3C04
    MOVE.W D5,D7                            ; $01EA70  3E05
    ADD.W D0,D6                             ; $01EA72  DC40
    ADD.W (A1)+,D7                          ; $01EA74  DE59
    MOVEM.L D4-D5/A1-A2,-(A7)               ; $01EA76  48E7 0C60
    JSR L_002616                            ; $01EA7A  4EB9 0000 2616
    MOVEM.L (A7)+,D4-D5/A1-A2               ; $01EA80  4CDF 0630
    LEA $80(A2),A2                          ; $01EA84  45EA 0080
    BRA.S L_01EA6A                          ; $01EA88  60E0
L_01EA8A:
    MOVEM.L (A7)+,D0-D7/A0-A6               ; $01EA8A  4CDF 7FFF
    RTS                                     ; $01EA8E  4E75
L_01EA90:
    dc.b $00,$00,$00,$00,$00,$10,$00,$00,$00,$20,$00,$00,$FF,$FF         ; $01EA90
L_01EA9E:
    LEA $7414(A5),A0                        ; $01EA9E  41ED 7414
    MOVEA.L A0,A1                           ; $01EAA2  2248
    MOVE.W #$003F,(A1)+                     ; $01EAA4  32FC 003F
    MOVE.W #$001B,(A1)+                     ; $01EAA8  32FC 001B
    MOVE.W #$06FF,D0                        ; $01EAAC  303C 06FF
L_01EAB0:
    CLR.W (A1)+                             ; $01EAB0  4259
    DBRA D0,L_01EAB0                        ; $01EAB2  51C8 FFFC
    MOVEQ #$00,D0                           ; $01EAB6  7000
    MOVE.W #$6000,D1                        ; $01EAB8  323C 6000
    MOVEQ #$00,D2                           ; $01EABC  7400
    MOVEQ #$00,D3                           ; $01EABE  7600
    LEA $0000E000,A1                        ; $01EAC0  43F9 0000 E000
    JMP L_000C84                            ; $01EAC6  4EF9 0000 0C84
L_01EACC:
    dc.b $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $01EACC
    dc.b $FF,$FF,$FF,$FF,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; $01EADC
    dc.b $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF ; $01EAEC
    dc.b $00,$14,$80,$00,$00,$15,$00,$00,$00,$15,$80,$00,$00,$16,$00,$00 ; $01EAFC
    dc.b $00,$16,$80,$00,$00,$17,$00,$00,$00,$17,$80,$00                 ; $01EB0C
L_01EB18:
    LEA L_01EACC(PC),A0                     ; $01EB18  41FA FFB2
    LEA $00FFFF92,A1                        ; $01EB1C  43F9 00FF FF92
    MOVE.W #$004B,D0                        ; $01EB22  303C 004B
L_01EB26:
    MOVE.B (A0)+,(A1)+                      ; $01EB26  12D8
    DBRA D0,L_01EB26                        ; $01EB28  51C8 FFFC
    RTS                                     ; $01EB2C  4E75
L_01EB2E:
    dc.b $00,$00,$0A,$44,$00,$00,$1F,$AE,$00,$00,$21,$34,$00,$00,$21,$A0 ; $01EB2E
    dc.b $00,$00,$22,$80,$00,$00,$22,$26,$00,$00,$22,$50,$00,$00,$03,$F6 ; $01EB3E
    dc.b $00,$00,$02,$12,$00,$00,$01,$4E,$00,$00,$07,$C4,$00,$00,$2D,$4C ; $01EB4E
    dc.b $00,$00,$06,$24,$00,$00,$07,$74,$00,$00,$21,$CC,$00,$00,$21,$EA ; $01EB5E
    dc.b $00,$00,$35,$CC,$00,$00,$00,$52,$00,$00,$35,$9E,$45,$4E,$44,$53 ; $01EB6E
    dc.b $00,$00,$FF,$00,$FF,$00,$00,$14,$01,$0A,$01,$46,$FF,$00,$FF,$00 ; $01EB7E
    dc.b $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00 ; $01EB8E
    dc.b $FF,$00,$01,$0A,$2C,$0F,$01,$0A,$25,$0F,$FF,$00,$FF,$00,$2C,$0F ; $01EB9E
    dc.b $FF,$00,$FF,$00,$FF,$00,$FF,$00,$3B,$6E,$3A,$64,$0B,$5A,$08,$0F ; $01EBAE
    dc.b $08,$14,$17,$1E,$FF,$00,$02,$5F,$FF,$00,$3D,$0F,$FF,$00,$FF,$00 ; $01EBBE
    dc.b $22,$64,$16,$64,$FF,$00,$FF,$00,$FF,$00,$27,$64,$FF,$00,$1C,$64 ; $01EBCE
    dc.b $1F,$5A,$FF,$00,$21,$64,$26,$5A,$27,$5F,$FF,$00,$1C,$5F,$1F,$5F ; $01EBDE
    dc.b $01,$5A,$21,$64,$26,$64,$FF,$00,$FF,$00,$18,$50,$14,$64,$2B,$0A ; $01EBEE
    dc.b $3C,$6E,$3C,$6E,$FF,$00,$16,$23,$FF,$00,$FF,$00,$FF,$00,$FF,$00 ; $01EBFE
    dc.b $FF,$00,$FF,$00,$13,$5A,$FF,$00,$FF,$00,$FF,$00,$1D,$5A,$1E,$5A ; $01EC0E
    dc.b $FF,$00,$FF,$00,$FF,$00,$FF,$00,$24,$5A,$FF,$00,$FF,$00,$FF,$00 ; $01EC1E
    dc.b $29,$5F,$02,$69,$0D,$32,$0C,$32,$0F,$32,$0E,$32,$10,$5F,$2B,$0A ; $01EC2E
    dc.b $28,$50,$FF,$00,$FF,$00,$2C,$0F,$30,$46,$FF,$00,$31,$0F,$2F,$14 ; $01EC3E
    dc.b $FF,$00,$FF,$00,$FF,$00,$FF,$00,$36,$4B,$37,$32,$3E,$5A,$3E,$5A ; $01EC4E
    dc.b $3E,$5A,$3E,$5A,$3E,$5A,$3E,$5A,$FF,$00,$FF,$00,$FF,$00,$10,$5A ; $01EC5E
    dc.b $10,$5A,$00,$46,$09,$5A,$07,$32,$FF,$00,$07,$78,$01,$78,$00,$18 ; $01EC6E
    dc.b $00,$22,$00,$2C,$00,$36,$00,$40,$00,$4C,$00,$5C,$00,$70,$00,$80 ; $01EC7E
    dc.b $00,$90,$00,$A0,$00,$B0,$00,$18,$00,$32,$00,$0A,$00,$32,$FF,$FF ; $01EC8E
    dc.b $00,$7E,$00,$32,$00,$11,$00,$0F,$FF,$FF,$00,$71,$00,$32,$00,$14 ; $01EC9E
    dc.b $00,$32,$FF,$FF,$00,$18,$00,$32,$00,$09,$00,$32,$FF,$FF,$00,$02 ; $01ECAE
    dc.b $00,$03,$00,$23,$00,$02,$00,$23,$FF,$FF,$00,$03,$00,$0C,$00,$19 ; $01ECBE
    dc.b $00,$0D,$00,$19,$00,$0E,$00,$19,$FF,$FF,$00,$04,$00,$1F,$00,$14 ; $01ECCE
    dc.b $00,$20,$00,$14,$00,$1F,$00,$0F,$00,$20,$00,$0F,$FF,$FF,$00,$03 ; $01ECDE
    dc.b $00,$6E,$00,$19,$00,$6F,$00,$19,$00,$70,$00,$19,$FF,$FF,$00,$03 ; $01ECEE
    dc.b $00,$71,$00,$19,$00,$72,$00,$19,$00,$73,$00,$19,$FF,$FF,$00,$03 ; $01ECFE
    dc.b $00,$74,$00,$19,$00,$75,$00,$19,$00,$76,$00,$19,$FF,$FF,$00,$03 ; $01ED0E
    dc.b $00,$77,$00,$19,$00,$78,$00,$19,$00,$79,$00,$19,$FF,$FF,$00,$04 ; $01ED1E
    dc.b $00,$69,$00,$19,$00,$6C,$00,$19,$00,$6D,$00,$19,$00,$85,$00,$19 ; $01ED2E
    dc.b $FF,$FF,$FF,$FF,$00,$00,$00,$02,$19,$14,$00,$02,$1E,$0A,$20,$04 ; $01ED3E
    dc.b $1E,$46,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $01ED4E
    dc.b $11,$01,$FF,$FF,$11,$01,$00,$62,$00,$00,$FF,$FF,$00,$00,$FF,$FF ; $01ED5E
    dc.b $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$00,$04 ; $01ED6E
    dc.b $14,$0A,$03,$6B,$14,$0F,$00,$04,$1E,$0A,$00,$62,$20,$0F,$FF,$FF ; $01ED7E
    dc.b $00,$00,$FF,$FF,$00,$00,$03,$6B,$14,$0F,$FF,$FF,$00,$00,$FF,$FF ; $01ED8E
    dc.b $00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$00,$09,$32,$80,$40,$00 ; $01ED9E
    dc.b $32,$65,$20,$05,$20,$5A,$20,$06,$0F,$0F,$20,$06,$14,$14,$00,$10 ; $01EDAE
    dc.b $20,$14,$FF,$FF,$20,$32,$00,$11,$0F,$64,$FF,$FF,$32,$64,$00,$1E ; $01EDBE
    dc.b $14,$0F,$FF,$FF,$20,$0F,$FF,$FF,$20,$0F,$00,$28,$32,$64,$00,$2F ; $01EDCE
    dc.b $32,$64,$FF,$FF,$20,$0F,$FF,$FF,$20,$0F,$FF,$FF,$20,$0F,$00,$14 ; $01EDDE
    dc.b $32,$64,$FF,$FF,$01,$01,$00,$2C,$32,$64,$00,$2A,$32,$64,$FF,$FF ; $01EDEE
    dc.b $01,$01,$00,$2B,$32,$64,$00,$62,$40,$64,$00,$14,$32,$64,$FF,$FF ; $01EDFE
    dc.b $01,$01,$00,$2C,$32,$64,$00,$2A,$32,$64,$00,$03,$40,$64,$00,$2B ; $01EE0E
    dc.b $32,$64,$00,$62,$40,$64,$FF,$FF,$19,$0A,$FF,$FF,$19,$0A,$00,$12 ; $01EE1E
    dc.b $32,$64,$00,$13,$32,$64,$00,$2D,$32,$80,$00,$15,$32,$80,$00,$0B ; $01EE2E
    dc.b $32,$80,$00,$2E,$32,$64,$00,$1C,$14,$1E,$00,$01,$32,$64,$00,$05 ; $01EE3E
    dc.b $32,$64,$00,$06,$32,$64,$00,$07,$32,$64,$00,$08,$32,$64,$00,$0F ; $01EE4E
    dc.b $32,$64,$00,$16,$32,$64,$FF,$FF,$01,$01,$FF,$FF,$01,$01,$FF,$FF ; $01EE5E
    dc.b $01,$01,$00,$23,$32,$64,$00,$26,$32,$64,$FF,$FF,$01,$01,$FF,$FF ; $01EE6E
    dc.b $01,$01,$FF,$FF,$01,$01,$00,$27,$28,$32,$00,$31,$28,$32,$20,$09 ; $01EE7E
    dc.b $19,$0A,$20,$0A,$19,$0A,$FF,$FF,$00,$00,$00,$7C,$28,$32,$40,$01 ; $01EE8E
    dc.b $32,$64,$00,$77,$28,$32,$00,$78,$28,$32,$00,$79,$28,$32,$00,$7A ; $01EE9E
    dc.b $28,$32,$00,$6E,$0F,$5F,$00,$6F,$32,$64,$40,$02,$0F,$14,$FF,$FF ; $01EEAE
    dc.b $01,$01,$FF,$FF,$01,$01,$FF,$FF,$00,$00,$0A,$5B,$32,$64,$02,$5F ; $01EEBE
    dc.b $1E,$64,$02,$60,$32,$0F,$02,$61,$3C,$14,$08,$5C,$32,$64,$08,$61 ; $01EECE
    dc.b $32,$64,$08,$58,$32,$64,$08,$57,$32,$64,$08,$53,$28,$64,$08,$51 ; $01EEDE
    dc.b $32,$64,$00,$0C,$20,$5A,$00,$0C,$20,$5A,$00,$0E,$20,$5A,$00,$0D ; $01EEEE
    dc.b $20,$5A,$00,$0D,$20,$5A,$00,$0E,$20,$5A,$40,$03,$32,$80,$40,$03 ; $01EEFE
    dc.b $32,$80,$40,$03,$32,$80,$00,$29,$20,$5A,$00,$29,$20,$5A,$00,$14 ; $01EF0E
    dc.b $1E,$46,$00,$63,$46,$5A,$00,$01,$19,$07,$02,$02,$01,$23,$07,$03 ; $01EF1E
    dc.b $04,$01,$2D,$07,$04,$06,$02,$32,$07,$05,$08,$02,$37,$07,$05,$0A ; $01EF2E
    dc.b $02,$3C,$07,$06,$0B,$02,$41,$07,$07,$0C,$03,$46,$08,$07,$0D,$03 ; $01EF3E
    dc.b $4B,$08,$08,$0E,$03,$50,$08,$08,$0F,$03,$55,$09,$09,$00,$01,$19 ; $01EF4E
    dc.b $07,$02,$02,$01,$23,$07,$03,$04,$01,$2D,$07,$04,$05,$02,$32,$07 ; $01EF5E
    dc.b $05,$06,$02,$37,$07,$05,$07,$02,$3C,$07,$06,$08,$02,$41,$07,$07 ; $01EF6E
    dc.b $09,$03,$46,$08,$07,$0A,$03,$4B,$08,$08,$0B,$03,$50,$08,$08,$0C ; $01EF7E
    dc.b $03,$55,$09,$09,$00,$01,$14,$07,$02,$02,$01,$19,$07,$03,$04,$02 ; $01EF8E
    dc.b $1E,$07,$05,$06,$02,$23,$07,$06,$07,$02,$28,$08,$07,$08,$03,$2D ; $01EF9E
    dc.b $08,$08,$09,$03,$32,$08,$09,$0A,$03,$37,$09,$09,$0B,$04,$3C,$09 ; $01EFAE
    dc.b $0A,$0C,$04,$41,$09,$0A,$0D,$04,$46,$0A,$0A,$00,$01,$1E,$06,$01 ; $01EFBE
    dc.b $02,$01,$28,$06,$02,$04,$01,$32,$06,$03,$06,$01,$3C,$06,$04,$08 ; $01EFCE
    dc.b $02,$46,$07,$04,$0A,$02,$4B,$07,$05,$0C,$02,$50,$07,$05,$0D,$02 ; $01EFDE
    dc.b $55,$08,$06,$0E,$02,$5A,$08,$06,$0F,$02,$5F,$08,$07,$10,$02,$64 ; $01EFEE
    dc.b $08,$08,$00,$01,$1E,$06,$01,$02,$01,$28,$06,$02,$04,$01,$32,$06 ; $01EFFE
    dc.b $03,$06,$01,$3C,$06,$04,$08,$02,$46,$07,$04,$0A,$02,$4B,$07,$05 ; $01F00E
    dc.b $0B,$02,$50,$07,$05,$0C,$02,$55,$08,$06,$0D,$02,$5A,$08,$06,$0E ; $01F01E
    dc.b $02,$5F,$08,$07,$0F,$02,$64,$08,$08,$00,$01,$0F,$07,$03,$02,$01 ; $01F02E
    dc.b $14,$07,$04,$04,$02,$19,$07,$05,$06,$02,$1E,$07,$06,$08,$02,$23 ; $01F03E
    dc.b $08,$07,$09,$03,$28,$08,$08,$0A,$03,$2D,$08,$09,$0A,$03,$32,$09 ; $01F04E
    dc.b $09,$0B,$04,$37,$09,$0A,$0B,$04,$3C,$09,$0A,$0B,$04,$41,$0A,$0A ; $01F05E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$F4,$00,$00,$01,$2C ; $01F06E
    dc.b $00,$00,$00,$4B,$00,$00,$00,$FA,$00,$00,$00,$50,$00,$00,$03,$E8 ; $01F07E
    dc.b $00,$00,$00,$FA,$00,$00,$00,$00,$00,$00,$00,$96,$00,$00,$00,$00 ; $01F08E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F09E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F0AE
    dc.b $00,$00,$01,$C2,$00,$00,$01,$F4,$00,$00,$01,$F4,$00,$00,$01,$F4 ; $01F0BE
    dc.b $00,$00,$02,$0D,$00,$00,$01,$F4,$00,$00,$02,$3F,$00,$00,$02,$26 ; $01F0CE
    dc.b $00,$00,$02,$26,$00,$00,$02,$26,$00,$00,$01,$DB,$00,$00,$02,$26 ; $01F0DE
    dc.b $00,$00,$01,$A9,$00,$00,$02,$3F,$00,$00,$00,$00,$02,$0C,$0B,$00 ; $01F0EE
    dc.b $01,$0D,$06,$00,$03,$0B,$05,$09,$0E,$02,$00,$00,$0C,$0A,$00,$00 ; $01F0FE
    dc.b $06,$03,$08,$07,$00,$00,$17,$70,$00,$00,$0A,$BE,$00,$00,$0A,$BE ; $01F10E
    dc.b $00,$00,$09,$C4,$00,$00,$0B,$B8,$00,$00,$0B,$B8,$00,$00,$09,$C4 ; $01F11E
    dc.b $00,$00,$00,$00,$00,$00,$0B,$B8,$00,$00,$0A,$BE,$00,$00,$0A,$BE ; $01F12E
    dc.b $00,$00,$09,$C4,$00,$00,$0B,$B8,$00,$00,$0B,$B8,$00,$00,$09,$C4 ; $01F13E
    dc.b $00,$00,$00,$00,$00,$00,$01,$F4,$00,$55,$00,$28,$00,$39,$00,$49 ; $01F14E
    dc.b $00,$54,$00,$60,$00,$69,$00,$74,$00,$7E,$00,$8B,$00,$99,$00,$A8 ; $01F15E
    dc.b $00,$B4,$00,$C0,$00,$CA,$00,$D8,$00,$ED,$01,$01,$01,$11,$01,$24 ; $01F16E
    dc.b $01,$3A,$00,$38,$00,$80,$27,$1B,$18,$2E,$15,$18,$1A,$1C,$21,$21 ; $01F17E
    dc.b $1C,$21,$1A,$00,$00,$50,$00,$80,$20,$28,$17,$2E,$25,$1C,$29,$18 ; $01F18E
    dc.b $25,$26,$00,$00,$00,$78,$00,$80,$25,$1C,$21,$1A,$26,$00,$00,$68 ; $01F19E
    dc.b $00,$80,$25,$22,$16,$1E,$1C,$18,$26,$00,$00,$80,$00,$80,$20,$14 ; $01F1AE
    dc.b $2D,$18,$00,$00,$00,$78,$00,$80,$27,$25,$14,$23,$26,$00,$00,$78 ; $01F1BE
    dc.b $00,$80,$26,$27,$18,$14,$20,$00,$00,$60,$00,$80,$24,$28,$14,$25 ; $01F1CE
    dc.b $27,$18,$25,$26,$00,$00,$00,$60,$00,$80,$27,$1B,$18,$2E,$23,$1C ; $01F1DE
    dc.b $27,$26,$00,$00,$00,$58,$00,$80,$16,$22,$21,$19,$28,$26,$1C,$22 ; $01F1EE
    dc.b $21,$00,$00,$68,$00,$80,$25,$18,$29,$18,$25,$26,$18,$00,$00,$68 ; $01F1FE
    dc.b $00,$80,$2A,$14,$2C,$2E,$22,$28,$27,$00,$00,$78,$00,$80,$26,$18 ; $01F20E
    dc.b $2A,$18,$25,$00,$00,$58,$00,$80,$23,$28,$20,$23,$2E,$25,$22,$22 ; $01F21E
    dc.b $20,$00,$00,$20,$00,$80,$1B,$14,$1F,$1F,$2E,$22,$19,$2E,$20,$14 ; $01F22E
    dc.b $16,$1B,$1C,$21,$18,$26,$00,$00,$00,$30,$00,$80,$27,$1C,$20,$18 ; $01F23E
    dc.b $2E,$19,$22,$25,$2E,$16,$1B,$14,$22,$26,$00,$00,$00,$50,$00,$48 ; $01F24E
    dc.b $27,$1B,$18,$2E,$19,$22,$25,$18,$26,$27,$00,$00,$00,$38,$00,$48 ; $01F25E
    dc.b $27,$1B,$18,$2E,$2A,$22,$25,$1E,$26,$1B,$22,$23,$26,$00,$00,$18 ; $01F26E
    dc.b $00,$48,$19,$22,$25,$27,$18,$26,$24,$28,$18,$2E,$20,$14,$21,$26 ; $01F27E
    dc.b $1C,$22,$21,$00,$00,$48,$00,$48,$27,$1B,$18,$2E,$16,$18,$1F,$1F ; $01F28E
    dc.b $14,$25,$26,$00,$12,$0E,$05,$0D,$07,$04,$10,$0A,$0A,$10,$0F,$06 ; $01F29E
    dc.b $06,$09,$09,$08,$04,$05,$0A,$0B,$0E,$0E,$0E,$0E,$04,$05,$0A,$0B ; $01F2AE
    dc.b $0E,$0E,$0E,$0E,$07,$04,$0B,$10,$1B,$10,$10,$10,$07,$04,$0B,$10 ; $01F2BE
    dc.b $1B,$10,$10,$10,$04,$05,$07,$08,$0B,$0C,$10,$11,$1E,$05,$07,$08 ; $01F2CE
    dc.b $0B,$0C,$10,$11,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ; $01F2DE
    dc.b $02,$05,$07,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3B,$00,$00 ; $01F2EE
    dc.b $00,$3A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F2FE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F30E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F31E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F32E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F33E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F34E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F35E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F36E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F37E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F38E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F39E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F3AE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F3BE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F3CE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F3DE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F3EE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F3FE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F40E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F41E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F42E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F43E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F44E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F45E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F46E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F47E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F48E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F49E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F4AE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F4BE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F4CE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F4DE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F4EE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F4FE
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F50E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F51E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F52E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F53E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F54E
    dc.b $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; $01F55E
    dc.b $00,$00,$00,$00,$00,$00,$0A,$94,$00,$00,$0A,$A6,$00,$00,$0A,$B8 ; $01F56E
    dc.b $00,$00,$0A,$CA,$00,$00,$0A,$DC,$00,$00,$0A,$EE,$00,$00,$0B,$00 ; $01F57E
    dc.b $00,$00,$0B,$12,$00,$00,$0B,$36,$00,$00,$0B,$48,$00,$00,$0B,$5A ; $01F58E
    dc.b $00,$00,$0B,$6C,$00,$00,$0B,$7E,$00,$00,$0B,$90,$00,$00,$0B,$A2 ; $01F59E
    dc.b $00,$00,$0B,$B4,$00,$00,$0B,$6C,$00,$00,$0B,$6C,$00,$00,$0B,$6C ; $01F5AE
    dc.b $00,$00,$0B,$24,$00,$00,$0D,$CC,$00,$00,$0B,$C6,$00,$00,$0B,$CA ; $01F5BE
    dc.b $00,$01,$00,$00,$0E,$6C,$00,$00,$0E,$7C,$00,$00,$0B,$D0,$00,$00 ; $01F5CE
    dc.b $0B,$D4,$00,$01,$00,$00,$0F,$A8,$00,$00,$0F,$C6,$00,$00,$0B,$DA ; $01F5DE
    dc.b $00,$00,$0B,$DE,$00,$01,$00,$00,$11,$1A,$00,$00,$11,$3C,$00,$00 ; $01F5EE
    dc.b $0B,$EA,$00,$00,$0B,$FA,$00,$01,$00,$00,$12,$A4,$00,$00,$12,$C8 ; $01F5FE
    dc.b $00,$00,$0C,$0C,$00,$00,$0C,$10,$00,$02,$00,$00,$14,$1C,$00,$00 ; $01F60E
    dc.b $14,$3C,$00,$00,$0C,$1C,$00,$00,$0C,$30,$00,$02,$00,$00,$14,$DC ; $01F61E
    dc.b $00,$00,$14,$EA,$00,$00,$0C,$54,$00,$00,$0C,$60,$00,$02,$00,$00 ; $01F62E
    dc.b $15,$B2,$00,$00,$15,$C4,$00,$00,$0C,$7E,$00,$00,$0C,$8A,$00,$02 ; $01F63E
    dc.b $00,$00,$16,$78,$00,$00,$1D,$9A,$00,$00,$0D,$C0,$00,$00,$0D,$C4 ; $01F64E
    dc.b $00,$02,$00,$00,$1F,$7A,$00,$00,$16,$88,$00,$00,$0C,$90,$00,$00 ; $01F65E
    dc.b $0C,$98,$00,$03,$00,$00,$17,$50,$00,$00,$17,$62,$00,$00,$0C,$A4 ; $01F66E
    dc.b $00,$00,$0C,$B4,$00,$03,$00,$00,$18,$2A,$00,$00,$18,$3C,$00,$00 ; $01F67E
    dc.b $0C,$D8,$00,$00,$0C,$F8,$00,$03,$00,$00,$19,$54,$00,$00,$19,$6E ; $01F68E
    dc.b $00,$00,$0D,$28,$00,$00,$0D,$38,$00,$03,$00,$00,$1A,$36,$00,$00 ; $01F69E
    dc.b $1A,$48,$00,$00,$0D,$50,$00,$00,$0D,$58,$00,$04,$00,$00,$1B,$24 ; $01F6AE
    dc.b $00,$00,$1B,$38,$00,$00,$0D,$6A,$00,$00,$0D,$7E,$00,$04,$00,$00 ; $01F6BE
    dc.b $1B,$D8,$00,$00,$1B,$E6,$00,$00,$0D,$96,$00,$00,$0D,$9A,$00,$05 ; $01F6CE
    dc.b $00,$00,$1C,$9A,$00,$00,$1C,$AA,$00,$00,$0D,$A6,$00,$00,$0D,$AE ; $01F6DE
    dc.b $00,$05,$00,$00,$1D,$86,$00,$98,$04,$E2,$00,$42,$00,$00,$00,$00 ; $01F6EE
    dc.b $00,$88,$02,$42,$00,$43,$00,$00,$00,$00,$00,$6C,$07,$A8,$00,$44 ; $01F6FE
    dc.b $00,$00,$00,$00,$00,$44,$00,$01,$00,$00,$04,$98,$03,$40,$05,$50 ; $01F70E
    dc.b $03,$40,$00,$48,$02,$F4,$03,$46,$02,$50,$00,$45,$00,$00,$00,$00 ; $01F71E
    dc.b $00,$44,$00,$03,$00,$00,$00,$44,$00,$02,$00,$00,$03,$19,$07,$20 ; $01F72E
    dc.b $00,$46,$00,$00,$00,$00,$00,$46,$00,$03,$00,$00,$01,$80,$04,$82 ; $01F73E
    dc.b $01,$28,$03,$B0,$01,$D0,$03,$B0,$01,$80,$04,$82,$01,$E0,$04,$82 ; $01F74E
    dc.b $00,$47,$00,$00,$00,$00,$00,$47,$00,$01,$00,$00,$00,$47,$00,$02 ; $01F75E
    dc.b $00,$00,$00,$46,$00,$01,$00,$01,$00,$46,$00,$02,$00,$01,$00,$46 ; $01F76E
    dc.b $00,$04,$00,$01,$00,$70,$04,$38,$00,$86,$00,$E2,$07,$40,$00,$34 ; $01F77E
    dc.b $00,$48,$00,$00,$00,$00,$00,$48,$00,$01,$00,$00,$00,$48,$00,$02 ; $01F78E
    dc.b $00,$00,$00,$47,$00,$00,$00,$00,$00,$47,$00,$00,$00,$01,$00,$88 ; $01F79E
    dc.b $05,$C0,$05,$54,$05,$B8,$03,$C0,$02,$A0,$00,$49,$00,$00,$00,$00 ; $01F7AE
    dc.b $02,$30,$06,$20,$01,$94,$01,$10,$00,$4A,$00,$00,$00,$00,$00,$49 ; $01F7BE
    dc.b $00,$01,$00,$01,$00,$B2,$04,$24,$03,$E8,$03,$D0,$02,$96,$00,$60 ; $01F7CE
    dc.b $01,$20,$02,$60,$00,$4B,$00,$00,$00,$00,$00,$4B,$00,$01,$00,$00 ; $01F7DE
    dc.b $00,$4A,$00,$01,$00,$01,$00,$4A,$00,$02,$00,$01,$00,$4A,$00,$03 ; $01F7EE
    dc.b $00,$01,$00,$4A,$00,$00,$00,$01,$03,$3C,$00,$50,$07,$00,$00,$50 ; $01F7FE
    dc.b $06,$00,$02,$A0,$02,$48,$02,$A0,$05,$C0,$03,$40,$01,$ED,$03,$40 ; $01F80E
    dc.b $04,$00,$02,$10,$04,$B0,$01,$F9,$00,$4C,$00,$00,$00,$00,$00,$4C ; $01F81E
    dc.b $00,$01,$00,$00,$00,$4B,$00,$02,$00,$01,$00,$4B,$00,$03,$00,$01 ; $01F82E
    dc.b $00,$4B,$00,$04,$00,$01,$00,$4B,$00,$05,$00,$01,$00,$4B,$00,$06 ; $01F83E
    dc.b $00,$01,$00,$4B,$00,$07,$00,$01,$00,$92,$00,$5C,$02,$2F,$03,$79 ; $01F84E
    dc.b $01,$B0,$05,$D2,$04,$22,$02,$67,$00,$4D,$00,$00,$00,$00,$00,$4C ; $01F85E
    dc.b $00,$02,$00,$00,$00,$4C,$00,$03,$00,$01,$00,$4C,$00,$00,$00,$00 ; $01F86E
    dc.b $07,$20,$02,$50,$05,$50,$03,$C0,$00,$4E,$00,$00,$00,$00,$00,$4E ; $01F87E
    dc.b $00,$01,$00,$00,$00,$4D,$00,$01,$00,$01,$00,$60,$04,$00,$02,$30 ; $01F88E
    dc.b $04,$10,$00,$80,$01,$F0,$00,$B0,$02,$F0,$04,$30,$01,$B0,$00,$4F ; $01F89E
    dc.b $00,$00,$00,$00,$00,$4E,$00,$02,$00,$01,$00,$4E,$00,$03,$00,$00 ; $01F8AE
    dc.b $00,$4E,$00,$04,$00,$00,$02,$00,$04,$E0,$00,$50,$00,$00,$00,$00 ; $01F8BE
    dc.b $00,$4F,$00,$00,$00,$00,$02,$40,$05,$30,$02,$40,$02,$70,$00,$50 ; $01F8CE
    dc.b $00,$00,$00,$01,$00,$4F,$00,$00,$00,$01,$00,$50,$00,$01,$00,$01 ; $01F8DE
    dc.b $00,$F0,$03,$80,$00,$46,$00,$00,$00,$01,$00,$00,$00,$07,$80,$0A ; $01F8EE
    dc.b $00,$01,$00,$00,$00,$05,$00,$03,$04,$08,$00,$02,$00,$00,$00,$00 ; $01F8FE
    dc.b $00,$08,$00,$00,$00,$01,$00,$00,$00,$05,$00,$03,$04,$08,$00,$02 ; $01F90E
    dc.b $00,$00,$00,$01,$00,$0B,$80,$05,$00,$02,$00,$15,$00,$1E,$00,$07 ; $01F91E
    dc.b $03,$08,$00,$0A,$00,$00,$00,$02,$00,$0B,$80,$05,$00,$03,$00,$00 ; $01F92E
    dc.b $00,$1E,$00,$07,$03,$08,$00,$0A,$00,$00,$00,$02,$00,$0B,$80,$10 ; $01F93E
    dc.b $00,$03,$00,$15,$00,$19,$00,$07,$03,$08,$00,$0A,$00,$00,$00,$02 ; $01F94E
    dc.b $00,$0B,$80,$05,$00,$02,$00,$15,$00,$14,$00,$07,$03,$08,$00,$03 ; $01F95E
    dc.b $00,$00,$00,$02,$00,$03,$80,$02,$00,$03,$00,$00,$00,$14,$00,$07 ; $01F96E
    dc.b $03,$08,$00,$06,$00,$00,$00,$02,$FF,$FF,$80,$02,$00,$03,$00,$00 ; $01F97E
    dc.b $00,$14,$00,$07,$03,$08,$00,$06,$00,$00,$00,$02,$00,$64,$00,$00 ; $01F98E
    dc.b $00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$00,$00,$07,$80,$10 ; $01F99E
    dc.b $00,$03,$00,$00,$00,$14,$00,$07,$03,$08,$00,$06,$00,$00,$00,$00 ; $01F9AE
    dc.b $00,$08,$00,$00,$00,$03,$00,$00,$00,$14,$00,$07,$03,$08,$00,$06 ; $01F9BE
    dc.b $00,$00,$00,$01,$00,$0B,$80,$06,$00,$03,$00,$15,$00,$23,$00,$07 ; $01F9CE
    dc.b $03,$08,$00,$0A,$00,$04,$00,$02,$00,$0B,$80,$06,$00,$03,$00,$00 ; $01F9DE
    dc.b $00,$23,$00,$07,$03,$08,$00,$0A,$00,$00,$00,$02,$00,$0B,$80,$10 ; $01F9EE
    dc.b $00,$03,$00,$15,$00,$1E,$00,$07,$03,$08,$00,$0A,$00,$00,$00,$02 ; $01F9FE
    dc.b $00,$0B,$80,$7F,$00,$01,$00,$00,$00,$1E,$00,$07,$03,$08,$00,$0A ; $01FA0E
    dc.b $00,$00,$00,$02,$00,$0E,$80,$05,$00,$01,$00,$13,$00,$19,$00,$07 ; $01FA1E
    dc.b $08,$06,$00,$0A,$00,$00,$00,$05,$00,$0B,$80,$05,$00,$03,$00,$15 ; $01FA2E
    dc.b $00,$23,$00,$07,$03,$08,$00,$0A,$00,$00,$00,$02,$00,$0B,$80,$19 ; $01FA3E
    dc.b $00,$02,$00,$00,$00,$23,$00,$07,$03,$08,$00,$0A,$00,$04,$00,$02 ; $01FA4E
    dc.b $00,$0B,$80,$0B,$00,$06,$00,$00,$00,$23,$00,$07,$03,$08,$00,$0A ; $01FA5E
    dc.b $00,$00,$00,$02,$00,$0E,$80,$0F,$00,$06,$00,$0D,$00,$19,$00,$07 ; $01FA6E
    dc.b $06,$08,$00,$0A,$00,$00,$00,$05,$00,$14,$80,$05,$00,$04,$00,$11 ; $01FA7E
    dc.b $00,$0A,$00,$07,$06,$03,$00,$0A,$00,$00,$00,$02,$00,$14,$80,$0B ; $01FA8E
    dc.b $00,$04,$00,$11,$00,$0A,$00,$07,$06,$03,$00,$0A,$00,$00,$00,$02 ; $01FA9E
    dc.b $00,$14,$80,$19,$00,$04,$00,$11,$00,$0F,$00,$07,$06,$03,$00,$0A ; $01FAAE
    dc.b $00,$00,$00,$02,$FF,$FF,$80,$19,$00,$04,$00,$11,$00,$0F,$00,$07 ; $01FABE
    dc.b $06,$03,$00,$0A,$00,$00,$00,$02,$00,$64,$00,$00,$00,$0A,$00,$0A ; $01FACE
    dc.b $00,$14,$00,$14,$00,$0A,$00,$0A,$00,$14,$00,$0A,$00,$0A,$00,$0A ; $01FADE
    dc.b $00,$0A,$00,$14,$00,$00,$00,$07,$80,$05,$00,$04,$00,$00,$00,$0F ; $01FAEE
    dc.b $00,$07,$06,$03,$00,$0A,$00,$00,$00,$00,$00,$08,$00,$00,$00,$04 ; $01FAFE
    dc.b $00,$00,$00,$0F,$00,$07,$06,$03,$00,$0A,$00,$00,$00,$01,$00,$15 ; $01FB0E
    dc.b $80,$05,$00,$03,$00,$18,$00,$28,$00,$09,$03,$08,$00,$0A,$00,$00 ; $01FB1E
    dc.b $00,$02,$00,$03,$80,$05,$00,$03,$00,$00,$00,$28,$00,$09,$03,$08 ; $01FB2E
    dc.b $00,$06,$00,$00,$00,$02,$00,$0E,$80,$05,$00,$03,$00,$0D,$00,$19 ; $01FB3E
    dc.b $00,$09,$05,$04,$00,$06,$00,$00,$00,$05,$00,$0D,$80,$05,$00,$03 ; $01FB4E
    dc.b $00,$10,$00,$28,$00,$09,$03,$08,$00,$0A,$00,$00,$00,$05,$00,$03 ; $01FB5E
    dc.b $80,$05,$00,$03,$00,$00,$00,$28,$00,$09,$03,$08,$00,$06,$00,$00 ; $01FB6E
    dc.b $00,$02,$00,$15,$80,$04,$00,$03,$00,$00,$00,$28,$00,$09,$03,$08 ; $01FB7E
    dc.b $00,$0A,$00,$00,$00,$02,$00,$15,$80,$0B,$00,$05,$00,$18,$00,$23 ; $01FB8E
    dc.b $00,$09,$03,$08,$00,$0A,$00,$05,$00,$02,$00,$15,$80,$19,$00,$03 ; $01FB9E
    dc.b $00,$18,$00,$23,$00,$09,$03,$08,$00,$0A,$00,$00,$00,$02,$00,$15 ; $01FBAE
    dc.b $80,$0B,$00,$04,$00,$18,$00,$0F,$00,$09,$03,$08,$00,$08,$00,$00 ; $01FBBE
    dc.b $00,$02,$00,$14,$80,$05,$00,$04,$00,$11,$00,$0A,$00,$09,$06,$03 ; $01FBCE
    dc.b $00,$0A,$00,$00,$00,$02,$00,$14,$80,$05,$00,$04,$00,$11,$00,$0A ; $01FBDE
    dc.b $00,$09,$06,$05,$00,$0A,$00,$00,$00,$02,$00,$14,$80,$0B,$00,$04 ; $01FBEE
    dc.b $00,$11,$00,$0A,$00,$09,$06,$06,$00,$0A,$00,$00,$00,$02,$00,$0D ; $01FBFE
    dc.b $80,$05,$00,$04,$00,$10,$00,$28,$00,$09,$03,$06,$00,$0A,$00,$01 ; $01FC0E
    dc.b $00,$05,$00,$03,$80,$05,$00,$03,$00,$00,$00,$28,$00,$09,$03,$06 ; $01FC1E
    dc.b $00,$06,$00,$01,$00,$00,$FF,$FF,$80,$05,$00,$03,$00,$00,$00,$28 ; $01FC2E
    dc.b $00,$09,$03,$06,$00,$06,$00,$01,$00,$00,$00,$64,$00,$00,$00,$0A ; $01FC3E
    dc.b $00,$0A,$00,$14,$00,$0A,$00,$0A,$00,$0A,$00,$14,$00,$14,$00,$14 ; $01FC4E
    dc.b $00,$0A,$00,$14,$00,$14,$00,$0A,$00,$0A,$00,$00,$00,$07,$80,$05 ; $01FC5E
    dc.b $00,$03,$00,$00,$00,$28,$00,$09,$03,$06,$00,$06,$00,$01,$00,$00 ; $01FC6E
    dc.b $00,$08,$00,$00,$00,$03,$00,$00,$00,$28,$00,$09,$03,$06,$00,$06 ; $01FC7E
    dc.b $00,$01,$00,$01,$00,$15,$80,$09,$00,$03,$00,$18,$00,$19,$00,$09 ; $01FC8E
    dc.b $04,$08,$00,$0A,$00,$00,$00,$02,$00,$03,$80,$07,$00,$03,$00,$00 ; $01FC9E
    dc.b $00,$19,$00,$09,$04,$08,$00,$08,$00,$00,$00,$02,$00,$15,$80,$0F ; $01FCAE
    dc.b $00,$05,$00,$18,$00,$14,$00,$09,$04,$08,$00,$0A,$00,$00,$00,$02 ; $01FCBE
    dc.b $00,$15,$80,$0B,$00,$04,$00,$18,$00,$0F,$00,$09,$04,$08,$00,$0A ; $01FCCE
    dc.b $00,$00,$00,$02,$00,$0E,$80,$19,$00,$04,$00,$0D,$00,$19,$00,$09 ; $01FCDE
    dc.b $07,$05,$00,$0A,$00,$00,$00,$05,$00,$15,$80,$05,$00,$02,$00,$18 ; $01FCEE
    dc.b $00,$0F,$00,$09,$05,$08,$00,$05,$00,$00,$00,$02,$00,$0D,$80,$05 ; $01FCFE
    dc.b $00,$00,$00,$10,$00,$14,$00,$09,$03,$05,$00,$0A,$00,$00,$00,$05 ; $01FD0E
    dc.b $00,$15,$80,$1E,$00,$02,$00,$00,$00,$0F,$00,$09,$04,$05,$00,$00 ; $01FD1E
    dc.b $00,$07,$00,$02,$00,$15,$80,$1E,$00,$02,$00,$18,$00,$0F,$00,$09 ; $01FD2E
    dc.b $04,$05,$00,$00,$00,$08,$00,$02,$00,$15,$80,$14,$00,$02,$00,$00 ; $01FD3E
    dc.b $00,$0F,$00,$09,$04,$08,$00,$00,$00,$01,$00,$02,$00,$0D,$80,$05 ; $01FD4E
    dc.b $00,$00,$00,$10,$00,$14,$00,$09,$03,$05,$00,$0A,$00,$04,$00,$05 ; $01FD5E
    dc.b $00,$0D,$80,$05,$00,$00,$00,$10,$00,$14,$00,$09,$03,$05,$00,$0A ; $01FD6E
    dc.b $00,$06,$00,$05,$00,$0D,$80,$05,$00,$00,$00,$10,$00,$14,$00,$09 ; $01FD7E
    dc.b $03,$05,$00,$0A,$00,$02,$00,$05,$00,$0D,$80,$05,$00,$00,$00,$10 ; $01FD8E
    dc.b $00,$14,$00,$09,$03,$05,$00,$0A,$00,$08,$00,$05,$00,$0D,$80,$05 ; $01FD9E
    dc.b $00,$00,$00,$10,$00,$14,$00,$09,$03,$03,$00,$0A,$00,$07,$00,$05 ; $01FDAE
    dc.b $FF,$FF,$80,$05,$00,$00,$00,$10,$00,$14,$00,$09,$03,$03,$00,$0A ; $01FDBE
    dc.b $00,$07,$00,$05,$00,$64,$00,$00,$00,$0A,$00,$0A,$00,$14,$00,$14 ; $01FDCE
    dc.b $00,$14,$00,$0A,$00,$0A,$00,$14,$00,$14,$00,$14,$00,$0A,$00,$0A ; $01FDDE
    dc.b $00,$0A,$00,$0A,$00,$0A,$00,$00,$00,$07,$80,$05,$00,$00,$00,$00 ; $01FDEE
    dc.b $00,$14,$00,$09,$03,$03,$00,$0A,$00,$07,$00,$00,$00,$08,$00,$00 ; $01FDFE
    dc.b $00,$00,$00,$00,$00,$14,$00,$09,$03,$03,$00,$0A,$00,$07,$00,$01 ; $01FE0E
    dc.b $00,$0A,$80,$0F,$00,$06,$00,$00,$00,$19,$00,$0F,$06,$04,$00,$06 ; $01FE1E
    dc.b $00,$0A,$00,$05,$00,$17,$80,$23,$00,$02,$00,$22,$00,$19,$00,$0F ; $01FE2E
    dc.b $06,$08,$00,$0A,$00,$05,$00,$02,$00,$17,$80,$23,$00,$02,$00,$22 ; $01FE3E
    dc.b $00,$14,$00,$0F,$06,$08,$00,$0A,$00,$05,$00,$02,$00,$17,$80,$14 ; $01FE4E
    dc.b $00,$02,$00,$22,$00,$19,$00,$0F,$06,$08,$00,$0A,$00,$03,$00,$02 ; $01FE5E
    dc.b $00,$0D,$80,$05,$00,$02,$00,$10,$00,$1E,$00,$0F,$05,$04,$00,$0A ; $01FE6E
    dc.b $00,$00,$00,$05,$00,$0D,$80,$05,$00,$02,$00,$10,$00,$1E,$00,$0F ; $01FE7E
    dc.b $05,$06,$00,$0A,$00,$05,$00,$05,$00,$0D,$80,$05,$00,$02,$00,$10 ; $01FE8E
    dc.b $00,$1E,$00,$0F,$05,$07,$00,$0A,$00,$00,$00,$05,$00,$0D,$80,$05 ; $01FE9E
    dc.b $00,$02,$00,$10,$00,$1E,$00,$0F,$05,$05,$00,$0A,$00,$01,$00,$05 ; $01FEAE
    dc.b $00,$17,$80,$23,$00,$02,$00,$22,$00,$19,$00,$0F,$06,$08,$00,$0A ; $01FEBE
    dc.b $00,$01,$00,$02,$00,$17,$80,$23,$00,$02,$00,$22,$00,$19,$00,$0F ; $01FECE
    dc.b $06,$08,$00,$0A,$00,$03,$00,$02,$00,$17,$80,$23,$00,$02,$00,$22 ; $01FEDE
    dc.b $00,$19,$00,$0F,$06,$08,$00,$0A,$00,$07,$00,$02,$00,$17,$80,$19 ; $01FEEE
    dc.b $00,$02,$00,$22,$00,$19,$00,$0F,$06,$08,$00,$0A,$00,$07,$00,$02 ; $01FEFE
    dc.b $00,$17,$80,$19,$00,$02,$00,$22,$00,$19,$00,$0F,$06,$08,$00,$0A ; $01FF0E
    dc.b $00,$03,$00,$02,$00,$19,$80,$05,$00,$03,$00,$1A,$00,$03,$00,$0F ; $01FF1E
    dc.b $46,$08,$00,$06,$00,$00,$00,$05,$FF,$FF,$80,$05,$00,$03,$00,$1A ; $01FF2E
    dc.b $00,$03,$00,$0F,$46,$08,$00,$06,$00,$00,$00,$05,$00,$64,$00,$00 ; $01FF3E
    dc.b $00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$14,$00,$14,$00,$14 ; $01FF4E
    dc.b $00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$07,$80,$05 ; $01FF5E
    dc.b $00,$03,$00,$00,$00,$03,$00,$0F,$46,$08,$00,$06,$00,$00,$00,$00 ; $01FF6E
    dc.b $00,$08,$00,$00,$00,$03,$00,$00,$00,$03,$00,$0F,$46,$08,$00,$06 ; $01FF7E
    dc.b $00,$00,$00,$01,$00,$1B,$80,$23,$00,$04,$00,$16,$00,$19,$00,$0F ; $01FF8E
    dc.b $04,$08,$00,$0A,$00,$0B,$00,$02,$00,$17,$80,$23,$00,$02,$00,$22 ; $01FF9E
    dc.b $00,$19,$00,$0F,$07,$08,$00,$0A,$00,$05,$00,$02,$00,$0A,$80,$0A ; $01FFAE
    dc.b $00,$04,$00,$19,$00,$19,$00,$0F,$07,$04,$00,$00,$00,$00,$00,$05 ; $01FFBE
    dc.b $00,$09,$80,$1E,$00,$04,$00,$0C,$00,$14,$00,$0F,$05,$08,$00,$0A ; $01FFCE
    dc.b $00,$00,$00,$05,$00,$19,$80,$05,$00,$03,$00,$1A,$00,$01,$00,$0F ; $01FFDE
    dc.b $46,$08,$00,$06,$00,$00,$00,$05,$FF,$FF,$80,$05,$00,$03,$00,$1A ; $01FFEE
    dc.b $00,$01,$00,$0F,$46,$08,$00,$06,$00,$00,$00,$05,$00,$64,$00,$00 ; $01FFFE
