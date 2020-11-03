\ ******************************************************************************
\
\ 6502 SECOND PROCESSOR ELITE GAME SOURCE (PARASITE)
\
\ 6502 Second Processor Elite was written by Ian Bell and David Braben and is
\ copyright Acornsoft 1985
\
\ The code on this site is identical to the version released on Ian Bell's
\ personal website at http://www.elitehomepage.org/
\
\ The commentary is copyright Mark Moxon, and any misunderstandings or mistakes
\ in the documentation are entirely my fault
\
\ ******************************************************************************

INCLUDE "sources/6502sp-header.h.asm"

CPU 1

_ENABLE_MAX_COMMANDER   = TRUE AND _REMOVE_CHECKSUMS

C% = &1000
W% = &9200
L% = C%
Z = 0
SNE = &7C0
ACT = &7E0
NTY = 34
D% = &D000
E% = D%+2*NTY
K% = &8200
LS% = D%-1
QQ18 = &400
BRKV = &202

Q% = _ENABLE_MAX_COMMANDER

MSL = 1
SST = 2
ESC = 3
PLT = 4
OIL = 5
AST = 7
SPL = 8
SHU = 9
CYL = 11
ANA = 14
HER = 15
COPS = 16
SH3 = 17
KRA = 19
ADA = 20
WRM = 23
CYL2 = 24
ASP = 25
THG = 29
TGL = 30
CON = 31
LGO = 32
COU = 33
DOD = 34
NOST = 18
NOSH = 20
JL = ESC
JH = SHU+2
PACK = SH3
NI% = 37
POW = 15
B = &30
Armlas = INT(128.5+1.5*POW)
Mlas = 50
NRU% = 0
VE = &57
LL = 30
CYAN = &FF
RED = &F0
YELLOW = &F
GREEN = &AF
WHITE = &FA
MAGENTA = RED
RED2 = &3
GREEN2 = &C
YELLOW2 = &F
BLUE2 = &30
MAG2 = &33
CYAN2 = &3C
WHITE2 = &3F
DUST = WHITE
FF = &FF
OSWRCH = &FFEE
OSBYTE = &FFF4
OSWORD = &FFF1
OSFILE = &FFDD
SCLI = &FFF7
XX21 = D%
SETXC = &85
SETYC = &86
clyns = &87
DODIALS = &8A
RDPARAMS = &88
DOmsbar = 242
wscn = 243
onescan = 244
DOhfx = &84
DOdot = 245
DOFE21 = &83
VIAE = &8B
DOBULB = &8C
DODKS4 = 246
DOCATF = &8D
SETCOL = &8E
SETVDU19 = &8F
DOsvn = &90
printcode = &92
prilf = &93
ZP = 0
X = 128
Y = 96
f0 = &20
f1 = &71
f2 = &72
f3 = &73
f4 = &14
f5 = &74
f6 = &75
f7 = &16
f8 = &76
f9 = &77
VEC = &7FFE

ORG &0000

.RAND

 SKIP 4

.T1

 SKIP 1

.SC

 SKIP 1

.SCH

 SKIP 1

.XX16

 SKIP 18

.P

 SKIP 3

.NEEDKEY

 SKIP 1

.XX0

 SKIP 2

.INF

 SKIP 2

.V

 SKIP 2

.XX

 SKIP 2

.YY

 SKIP 2

.SUNX

 SKIP 2

.BETA

 SKIP 1

.BET1

 SKIP 1

.XC

 SKIP 1

.YC

 SKIP 1

.QQ22

 SKIP 2

.ECMA

 SKIP 1

.ALP1

 SKIP 1

.ALP2

 SKIP 2

.XX15

 SKIP 6

.XX12

 SKIP 6
X1 = XX15
Y1 = X1+1
X2 = Y1+1
Y2 = X2+1

.K

 SKIP 4

.LAS

 SKIP 1

.MSTG

 SKIP 1

.INWK

 SKIP NI%
NEWB = INWK+36
XX19 = INWK+33
XX1 = INWK

.LSP

 SKIP 1

.QQ15

 SKIP 6

.XX18

 SKIP 9
QQ17 = XX18
QQ19 = QQ17+1
K5 = XX18
K6 = K5+4

.BET2

 SKIP 2

.DELTA

 SKIP 1

.DELT4

 SKIP 2

.U

 SKIP 1

.Q

 SKIP 1

.R

 SKIP 1

.S

 SKIP 1

.XSAV

 SKIP 1

.YSAV

 SKIP 1

.XX17

 SKIP 1

.QQ11

 SKIP 1

.ZZ

 SKIP 1

.XX13

 SKIP 1

.MCNT

 SKIP 1

.DL

 SKIP 1

.TYPE

 SKIP 1

.ALPHA

 SKIP 1

.PBUP

 SKIP 1

.HBUP

 SKIP 1

.LBUP

 SKIP 1

.QQ12

 SKIP 1

.TGT

 SKIP 1

.COL

 SKIP 1

.FLAG

 SKIP 1

.CNT

 SKIP 1

.CNT2

 SKIP 1

.STP

 SKIP 1

.XX4

 SKIP 1

.XX20

 SKIP 1

.XX14

 SKIP 1

.RAT

 SKIP 1

.RAT2

 SKIP 1

.K2

 SKIP 4

.widget

 SKIP 1

.safehouse

 SKIP 6

.messXC

 SKIP 1

T = &D1
XX2 = &D2
K3 = XX2
K4 = XX2+14

ORG &8600

.LP

 SKIP 0

.X1TB

 SKIP &100

.Y1TB

 SKIP &100

.X2TB

 SKIP &100

.Y2TB

 SKIP &100

.X1UB

 SKIP &100

.Y1UB

 SKIP &100

.X2UB

 SKIP &100

.Y2UB

 SKIP &100

.X1VB

 SKIP &100

.Y1VB

 SKIP &100

.X2VB

 SKIP &100

.Y2VB

 SKIP &100

ORG &0D00

.WP

 SKIP 0

.LSO

 SKIP 192

LSX = LSO

.SX

 SKIP NOST+1

.SXL

 SKIP NOST+1

.SY

 SKIP NOST+1

.SYL

 SKIP NOST+1

.SZ

 SKIP NOST+1

.SZL

 SKIP NOST+1

XX3 = 256
\REM&70

.LASX

 SKIP 1

.LASY

 SKIP 1

.XX24

 SKIP 1

.ALTIT

 SKIP 1

.SWAP

 SKIP 1

.XP

 SKIP 1

.YP

 SKIP 1

.YS

 SKIP 1

.BALI

 SKIP 1

.UPO

 SKIP 1

ORG &800

.UP

 SKIP 0

\.QQ16 \Repeated below

 SKIP 65

.KL

 SKIP 17

KY1 = KL+1
KY2 = KL+2
KY3 = KL+3
KY4 = KL+4
KY5 = KL+5
KY6 = KL+6
KY7 = KL+7
KY12 = KL+8
KY13 = KL+9
KY14 = KL+10
KY15 = KL+11
KY16 = KL+12
KY17 = KL+13
KY18 = KL+14
KY19 = KL+15
KY20 = KL+16

.FRIN

 SKIP NOSH+1

.MANY

 SKIP NTY+1

SSPR = MANY+SST

.JUNK

 SKIP 1

.auto

 SKIP 1

.ECMP

 SKIP 1

.MJ

 SKIP 1

.CABTMP

 SKIP 1

.LAS2

 SKIP 1

.MSAR

 SKIP 1

.VIEW

 SKIP 1

.LASCT

 SKIP 1

.GNTMP

 SKIP 1

.HFX

 SKIP 1

.EV

 SKIP 1

.DLY

 SKIP 1

.de

 SKIP 1

.JSTX

 SKIP 1

.JSTY

 SKIP 1

.XSAV2

 SKIP 1

.YSAV2

 SKIP 1

.NAME

 SKIP 8

.TP

 SKIP 1

.QQ0

 SKIP 1

.QQ1

 SKIP 1

.QQ21

 SKIP 6

.CASH

 SKIP 4

.QQ14

 SKIP 1

.COK

 SKIP 1

.GCNT

 SKIP 1

.LASER

 SKIP 6

.CRGO

 SKIP 1

.QQ20

 SKIP 17

.ECM

 SKIP 1

.BST

 SKIP 1

.BOMB

 SKIP 1

.ENGY

 SKIP 1

.DKCMP

 SKIP 1

.GHYP

 SKIP 1

.ESCP

 SKIP 5

.NOMSL

 SKIP 1

.FIST

 SKIP 1

.AVL

 SKIP 17

.QQ26

 SKIP 1

.TALLY

 SKIP 2

.SVC

 SKIP 1

.MCH1                   \ I added the 1 to get things compiling (it's MCH in the original)

 SKIP 1

.MCH2                   \ I added the 2 to get things compiling (it's MCH in the original)

 SKIP 1

NT% = MCH2-TP

.MCH

 SKIP 1

.FSH

 SKIP 1

.ASH

 SKIP 1

.ENERGY

 SKIP 1
\REMFF

.COMX

 SKIP 1

.COMY

 SKIP 1

.QQ24

 SKIP 1

.QQ25

 SKIP 1

.QQ28

 SKIP 1

.QQ29

 SKIP 1

.gov

 SKIP 1

.tek

 SKIP 1

.SLSP

 SKIP 2

.QQ2

 SKIP 6

.QQ3

 SKIP 1

.QQ4

 SKIP 1

.QQ5

 SKIP 1

.QQ6

 SKIP 2

.QQ7

 SKIP 2

.QQ8

 SKIP 2

.QQ9

 SKIP 1

.QQ10

 SKIP 1

.NOSTM

 SKIP 1

.BUF

 SKIP 100

\ ******************************************************************************
\
\ ELITE A FILE
\
\ Produces the binary file ELTA.bin that gets loaded by elite-bcfs.asm.
\
\ The main game code (ELITE A through G, plus the ship data) is loaded at &1128
\ and is moved down to &0F40 as part of elite-loader.asm.
\
\ ******************************************************************************

CODE% = &1000
LOAD% = &1000

ORG CODE%

LOAD_A% = LOAD%

.MOS

 BRK

.COMC

 BRK

.DNOIZ

 BRK

.DAMP

 BRK

.DJD

 BRK

.PATG

 BRK

.FLH

 BRK

.JSTGY

 BRK

.JSTE

 BRK

.JSTK

 BRK

.BSTK

 BRK

.CATF

 BRK
\cAXFYJK@

\J% = O%+5

.ZIP

.S1%

 EQUS ":0.E."

.NA%

 EQUS "JAMESON"
 EQUB 13
 EQUB 0
 EQUB 20 \QQ0
 EQUB 173 \QQ1
 EQUD &2485A4A \QQ21
 EQUW &B753  \Base seed
IF Q%
 EQUD &00CA9A3B         \ CASH = Amount of cash (100,000,000 Cr)
ELSE
 EQUD &E8030000         \ CASH = Amount of cash (100 Cr)
ENDIF
 EQUB 70 \fuel
 EQUB 0 \COK-UP
 EQUB 0 \GAL COUNT
 EQUB POW+(128 AND Q%)
 EQUB (POW+128) AND Q%
 EQUB 0
 EQUB 0
 EQUW 0 \LASER
 EQUB 22+(15 AND Q%)  \37 CRGO
 EQUD 0
 EQUD 0
 EQUD 0
 EQUD 0
 EQUB 0 \crgo
 EQUB Q% \ECM
 EQUB Q% \BST
 EQUB Q% AND 127 \BOMB
 EQUB Q% AND 1 \ENGY
 EQUB Q% \DCK COMP
 EQUB Q% \GHYP
 EQUB Q% \ESCP
 EQUD FALSE \EXPAND
 EQUB 3+(Q% AND 1) \MISSILES
 EQUB FALSE \FIST
 EQUB 16
 EQUB 15
 EQUB 17
 EQUB 0
 EQUB 3
 EQUB 28
 EQUB 14
 EQUW 0
 EQUB 10
 EQUB 0
 EQUB 17
 EQUB 58
 EQUB 7
 EQUB 9
 EQUB 8
 EQUB 0
 EQUB 0 \QQ26
 EQUW 0 \TALLY
 EQUB 128 \SVC

CH% = &03   \ &92

.CHK2

 EQUB CH% EOR &A9

.CHK

 EQUB CH%

 EQUD 0

 RTS  \ checksum byte goes here, set by first call to ZP in BCFS

.S%

 CLD
 SEC
 LDA #G%MOD256
 STA 0
 STA SC
 LDA #G%DIV256
 STA 1
 STA SC+1
 LDA #(F%-1)MOD256
 STA 2
 LDA #(F%-1)DIV256
 STA 3
 LDX #prtblock MOD256
 LDY #prtblock DIV256
 LDA #249
 JSR OSWORD
 LDX #SC
 EQUB &AD  \&8D

.prtblock

 EQUB 2
 EQUB &27
 JMP (SC,X)
 PHP
 PHY
 LDA #&34
 PHA
 LDX #0
 RTS
 BRK
 EQUS "ELITE - By Ian Bell & David Braben"
 EQUB 10
 EQUB 13
 BRK
 LDA SC
 ADC 2
 CMP F%-1
 BNE P%-2
 EQUD &7547534
 EQUD &452365
 EQUB &8D

.G%

 JSR DEEOR
 JSR COLD
 JSR Checksum
 JMP BEGIN
 NOP

.DEEOR

 LDY #0
 STY SC
 LDX #&13

.DEEL

 STX SC+1
 TYA
 EOR (SC),Y
 EOR #&75
IF _REMOVE_CHECKSUMS
 NOP
 NOP
ELSE
 STA (SC),Y
ENDIF
 DEY
 BNE DEEL
 INX
 CPX #&A0
 BNE DEEL
 JMP BRKBK

.DOENTRY

 \after dock
 JSR RES2
 JSR LAUN
 STZ DELTA
 STZ QQ22+1 \<<
 STZ GNTMP
\++
 LDA #FF
 STA FSH
 STA ASH
 STA ENERGY
 JSR HALL
 LDY #44
 JSR DELAY
 LDA TP
 AND #3
 BNE EN1
 LDA TALLY+1
 BEQ EN4
 LDA GCNT
 LSR A
 BNE EN4
 JMP BRIEF

.EN1

 CMP #3
 BNE EN2
 JMP DEBRIEF

.EN2

 LDA GCNT
 CMP #2
 BNE EN4
 LDA TP
 AND #&F
 CMP #2
 BNE EN3
 LDA TALLY+1
 CMP #5
 BCC EN4
 JMP BRIEF2

.EN3

 CMP #6
 BNE EN5
 LDA QQ0
 CMP #215
 BNE EN4
 LDA QQ1
 CMP #84
 BNE EN4
 JMP BRIEF3

.EN5

 CMP #10
 BNE EN4
 LDA QQ0
 CMP #63
 BNE EN4
 LDA QQ1
 CMP #72
 BNE EN4
 JMP DEBRIEF2

.EN4

 JMP BAY

.BRKBK

 LDA #(BRBR MOD256)
 SEI
 STA BRKV
 LDA #(BRBR DIV256)
 STA BRKV+1
 CLI
 RTS

\ ******************************************************************************
\       Name: Main flight loop (Part 1 of 16)
\ ******************************************************************************

.M%
{
 LDA K%
 STA RAND

\ ******************************************************************************
\       Name: Main flight loop (Part 2 of 16)
\ ******************************************************************************

 LDX JSTX
 JSR cntr
 JSR cntr
 TXA
 EOR #128
 TAY
 AND #128
 STA ALP2
 STX JSTX
 EOR #128
 STA ALP2+1
 TYA
 BPL P%+7
 EOR #FF
 CLC
 ADC #1
 LSR A
 LSR A
 CMP #8
 BCS P%+3
 LSR A
 STA ALP1
 ORA ALP2
 STA ALPHA
 LDX JSTY
 JSR cntr
 TXA
 EOR #128
 TAY
 AND #128
 STX JSTY
 STA BET2+1
 EOR #128
 STA BET2
 TYA
 BPL P%+4
 EOR #FF
 ADC #4
 LSR A
 LSR A
 LSR A
 LSR A
 CMP #3
 BCS P%+3
 LSR A
 STA BET1
 ORA BET2
 STA BETA

 LDA BSTK
 BEQ BS2
 LDA KTRAN+10  \ADCno.3
 LSR A
 LSR A
 CMP #40
 BCC P%+4
 LDA #40
 STA DELTA
 BNE MA4

.BS2

\ ******************************************************************************
\       Name: Main flight loop (Part 3 of 16)
\ ******************************************************************************

 LDA KY2
 BEQ MA17
 LDA DELTA
 CMP #40
 BCS MA17
 INC DELTA

.MA17

 LDA KY1
 BEQ MA4
 DEC DELTA
 BNE MA4
 INC DELTA

.MA4

 LDA KY15
 AND NOMSL
 BEQ MA20
 LDY #GREEN2
 JSR ABORT
 LDA #40
 JSR NOISE
 LDA #0
 STA MSAR

.MA20

 LDA MSTG
 BPL MA25
 LDA KY14
 BEQ MA25
 LDX NOMSL
 BEQ MA25
 STA MSAR
 LDY #YELLOW2
 JSR MSBAR

.MA25

 LDA KY16
 BEQ MA24
 LDA MSTG
 BMI MA64
 JSR FRMIS

.MA24

 LDA KY12
 BEQ MA76
 ASL BOMB

.MA76

 LDA KY20
 BEQ MA78
 LDA #0
 STA auto

.MA78

 LDA KY13
 AND ESCP
 BEQ noescp
 LDA MJ
 BNE noescp
 JMP ESCAPE

.noescp

 LDA KY18
 BEQ P%+5
 JSR WARP
 LDA KY17
 AND ECM
 BEQ MA64
 LDA ECMA
 BNE MA64
 DEC ECMP
 JSR ECBLB2

.MA64

 LDA KY19
 AND DKCMP
 BEQ MA68
 STA auto

.MA68

 LDA #0
 STA LAS
 STA DELT4
 LDA DELTA
 LSR A
 ROR DELT4
 LSR A
 ROR DELT4
 STA DELT4+1
 LDA LASCT
 BNE MA3
 LDA KY7
 BEQ MA3
 LDA GNTMP
 CMP #242
 BCS MA3
 LDX VIEW
 LDA LASER,X
 BEQ MA3
 PHA
 AND #127
 STA LAS
 STA LAS2
 LDA #0
 JSR NOISE
 JSR LASLI
 PLA
 BPL ma1
 LDA #0

.ma1

 AND #&FA
 STA LASCT

\ ******************************************************************************
\       Name: Main flight loop (Part 4 of 16)
\ ******************************************************************************

.MA3

 LDX #0

.^MAL1

 STX XSAV
 LDA FRIN,X
 BNE P%+5
 JMP MA18
 STA TYPE
 JSR GINF
 LDY #(NI%-1)

.MAL2

 LDA (INF),Y
 STA INWK,Y
 DEY
 BPL MAL2
 LDA TYPE
 BMI MA21
 ASL A
 TAY
 LDA XX21-2,Y
 STA XX0
 LDA XX21-1,Y
 STA XX0+1

\ ******************************************************************************
\       Name: Main flight loop (Part 5 of 16)
\ ******************************************************************************

 LDA BOMB
 BPL MA21
 CPY #2*SST
 BEQ MA21
 CPY #2*CON
 BCS MA21
 LDA INWK+31
 AND #32
 BNE MA21
 ASL INWK+31
 SEC
 ROR INWK+31
 JSR EXNO2

\ ******************************************************************************
\       Name: Main flight loop (Part 6 of 16)
\ ******************************************************************************

.MA21

 JSR MVEIT
 LDY #(NI%-1)

.MAL3

 LDA INWK,Y
 STA (INF),Y
 DEY
 BPL MAL3

\ ******************************************************************************
\       Name: Main flight loop (Part 7 of 16)
\ ******************************************************************************

 LDA INWK+31
 AND #&A0
 JSR MAS4
 BNE MA65
 LDA INWK
 ORA INWK+3
 ORA INWK+6
 BMI MA65
 LDX TYPE
 BMI MA65
 CPX #SST
 BEQ ISDK
 AND #&C0
 BNE MA65
 CPX #MSL
 BEQ MA65
 LDA BST
 AND INWK+5
 BPL MA58

\ ******************************************************************************
\       Name: Main flight loop (Part 8 of 16)
\ ******************************************************************************

 CPX #OIL
 BEQ oily
 LDY #0
 LDA (XX0),Y
 LSR A
 LSR A
 LSR A
 LSR A
 BEQ MA58
 ADC #1
 BNE slvy2

.oily

 JSR DORND
 AND #7

.slvy2

 JSR tnpr1
 LDY #78
 BCS MA59
 LDY QQ29
 ADC QQ20,Y
 STA QQ20,Y
 TYA
 ADC #208
 JSR MESS
 ASL NEWB
 SEC
 ROR NEWB

.MA65

 JMP MA26

\ ******************************************************************************
\       Name: Main flight loop (Part 9 of 16)
\ ******************************************************************************

.ISDK

 LDA K%+NI%+36
 AND #4
 BNE MA62
 LDA INWK+14
 CMP #&D6
 BCC MA62
 JSR SPS1
 LDA XX15+2
 CMP #89  \86
 BCC MA62
 LDA INWK+16
 AND #&7F
 CMP #80
 BCC MA62

.^GOIN

 JMP DOENTRY

.MA62

 LDA DELTA
 CMP #5
 BCC MA67
 JMP DEATH

\ ******************************************************************************
\       Name: Main flight loop (Part 10 of 16)
\ ******************************************************************************

.MA59

 JSR EXNO3

.MA60

 ASL INWK+31
 SEC
 ROR INWK+31

.MA61

 BNE MA26

.MA67

 LDA #1
 STA DELTA
 LDA #5
 BNE MA63

.MA58

 ASL INWK+31
 SEC
 ROR INWK+31
 LDA INWK+35
 SEC
 ROR A

.MA63

 JSR OOPS
 JSR EXNO3

\ ******************************************************************************
\       Name: Main flight loop (Part 11 of 16)
\ ******************************************************************************

.MA26

 LDA NEWB
 BPL P%+5
 JSR SCAN
 LDA QQ11
 BNE MA15
 JSR PLUT
 JSR HITCH
 BCC MA8
 LDA MSAR
 BEQ MA47
 JSR BEEP
 LDX XSAV
 LDY #RED2
 JSR ABORT2

.MA47

 LDA LAS
 BEQ MA8
 LDX #15
 JSR EXNO
 LDA TYPE
 CMP #SST
 BEQ MA14+2
 CMP #CON
 BCC BURN
 LDA LAS
 CMP #(Armlas AND127)
 BNE MA14+2
 LSR LAS
 LSR LAS

.BURN

 LDA INWK+35
 SEC
 SBC LAS
 BCS MA14
 ASL INWK+31
 SEC
 ROR INWK+31
 LDA TYPE
 CMP #AST
 BNE nosp
 LDA LAS
 CMP #Mlas
 BNE nosp
 JSR DORND
 LDX #SPL
 AND #3
 JSR SPIN2

.nosp

 LDY #PLT
 JSR SPIN
 LDY #OIL
 JSR SPIN
 JSR EXNO2

.MA14

 STA INWK+35
 LDA TYPE
 JSR ANGRY

\ ******************************************************************************
\       Name: Main flight loop (Part 12 of 16)
\ ******************************************************************************

.MA8

 JSR LL9

.MA15

 LDY #35
 LDA INWK+35
 STA (INF),Y
 LDA NEWB
 BMI KS1S
 LDA INWK+31
 BPL MAC1
 AND #&20
 BEQ MAC1
 LDA NEWB
 AND #64
 ORA FIST
 STA FIST
 LDA DLY
 ORA MJ
 BNE KS1S
 LDY #10
 LDA (XX0),Y
 BEQ KS1S
 TAX
 INY
 LDA (XX0),Y
 TAY
 JSR MCASH
 LDA #0
 JSR MESS

.KS1S

 JMP KS1

.MAC1

 LDA TYPE
 BMI MA27
 JSR FAROF
 BCC KS1S

.MA27

 LDY #31
 LDA INWK+31
 STA (INF),Y
 LDX XSAV
 INX
 JMP MAL1

\ ******************************************************************************
\       Name: Main flight loop (Part 13 of 16)
\ ******************************************************************************

.MA18

 LDA BOMB
 BPL MA77
 ASL BOMB
 JSR WSCAN
 LDA #DOFE21
 JSR OSWRCH
 LDA #&30
 JSR OSWRCH

.MA77

 LDA MCNT
 AND #7
 BNE MA22
 LDX ENERGY
 BPL b
 LDX ASH
 JSR SHD
 STX ASH
 LDX FSH
 JSR SHD
 STX FSH

.b

 SEC
 LDA ENGY
 ADC ENERGY
 BCS P%+5
 STA ENERGY

\ ******************************************************************************
\       Name: Main flight loop (Part 14 of 16)
\ ******************************************************************************

 LDA MJ
 BNE MA23S
 LDA MCNT
 AND #31
 BNE MA93
 LDA SSPR
 BNE MA23S
 TAY
 JSR MAS2
 BNE MA23S
 LDX #28

.MAL4

 LDA K%,X
 STA INWK,X
 DEX
 BPL MAL4
 INX
 LDY #9
 JSR MAS1
 BNE MA23S
 LDX #3
 LDY #11
 JSR MAS1
 BNE MA23S
 LDX #6
 LDY #13
 JSR MAS1
 BNE MA23S
 LDA #&C0
 JSR FAROF2
 BCC MA23S
 JSR WPLS
 JSR NWSPS

.MA23S

 JMP MA23

\ ******************************************************************************
\       Name: Main flight loop (Part 15 of 16)
\ ******************************************************************************

.MA22

 LDA MJ
 BNE MA23S
 LDA MCNT
 AND #31

.MA93

 CMP #10
 BNE MA29
 LDA #50
 CMP ENERGY
 BCC P%+6
 ASL A
 JSR MESS
 LDY #FF
 STY ALTIT
 INY
 JSR m
 BNE MA23
 JSR MAS3
 BCS MA23
 SBC #&24
 BCC MA28
 STA R
 JSR LL5
 LDA Q
 STA ALTIT
 BNE MA23

.MA28

 JMP DEATH

.MA29

 CMP #15
 BNE MA33
 LDA auto
 BEQ MA23
 LDA #123
 BNE MA34

.MA33

 CMP #20
 BNE MA23
 LDA #30
 STA CABTMP
 LDA SSPR
 BNE MA23
 LDY #NI%
 JSR MAS2
 BNE MA23
 JSR MAS3
 EOR #FF
 ADC #30
 STA CABTMP
 BCS MA28
 CMP #&E0
 BCC MA23
 LDA BST
 BEQ MA23
 LDA DELT4+1
 LSR A
 ADC QQ14
 CMP #70
 BCC P%+4
 LDA #70
 STA QQ14
 LDA #160

.MA34

 JSR MESS

\ ******************************************************************************
\       Name: Main flight loop (Part 16 of 16)
\ ******************************************************************************

.MA23

 LDA LAS2
 BEQ MA16
 LDA LASCT
 CMP #8
 BCS MA16
 JSR LASLI2
 LDA #0
 STA LAS2

.MA16

 LDA ECMP
 BEQ MA69
 JSR DENGY
 BEQ MA70

.MA69

 LDA ECMA
 BEQ MA66
 DEC ECMA
 BNE MA66

.MA70

 JSR ECMOF

.MA66

 LDA QQ11
 BNE oh
 JSR STARS
 JMP PBFL
}

\ ******************************************************************************
\       Name: SPIN moved from main flight loop 11/16 in MA47
\ ******************************************************************************

.SPIN
{
 JSR DORND
 BPL oh
 TYA
 TAX
 LDY #0
 AND (XX0),Y
 AND #15

.^SPIN2

 STA CNT

.spl

 BEQ oh
 LDA #0
 JSR SFS1
 DEC CNT
 BNE spl+2

.^oh

 RTS
}

\ ******************************************************************************
\       Name: MT27
\ ******************************************************************************

.MT27
{
 LDA #217
 EQUB &2C
}

\ ******************************************************************************
\       Name: MT28
\ ******************************************************************************

.MT28
{
 LDA #220
 CLC
 ADC GCNT
 BNE DETOK
}

\ ******************************************************************************
\       Name: DETOK3
\ ******************************************************************************

.DETOK3
{
 PHA
 TAX
 TYA
 PHA
 LDA V
 PHA
 LDA V+1
 PHA
 LDA #(RUTOK MOD256)
 STA V
 LDA #(RUTOK DIV256)
 BNE DTEN
}

\ ******************************************************************************
\       Name: DETOK
\ ******************************************************************************

.DETOK
{
 PHA
 TAX
 TYA
 PHA
 LDA V
 PHA
 LDA V+1
 PHA
 LDA #(TKN1 MOD256)
 STA V
 LDA #(TKN1 DIV256)

.^DTEN

 STA V+1
 LDY #0

.DTL1

 LDA (V),Y
 EOR #VE
 BNE DT1
 DEX
 BEQ DTL2

.DT1

 INY
 BNE DTL1
 INC V+1
 BNE DTL1

.DTL2

 INY
 BNE P%+4
 INC V+1
 LDA (V),Y
 EOR #VE
 BEQ DTEX
 JSR DETOK2
 JMP DTL2

.DTEX

 PLA
 STA V+1
 PLA
 STA V
 PLA
 TAY
 PLA
 RTS
}

\ ******************************************************************************
\       Name: DETOK2
\ ******************************************************************************

.DETOK2
{
 CMP #32
 BCC DT3
 BIT DTW3
 BPL DT8
 TAX
 TYA
 PHA
 LDA V
 PHA
 LDA V+1
 PHA
 TXA
 JSR TT27
 JMP DT7  \TT27

.DT8

 CMP #91
 BCC DTS
 CMP #129
 BCC DT6
 CMP #215
 BCC DETOK
 SBC #215
 ASL A
 PHA
 TAX
 LDA TKN2,X
 JSR DTS
 PLA
 TAX
 LDA TKN2+1,X  \letter pair

.^DTS

 CMP #&41
 BCC DT9
 BIT DTW6
 BMI DT10
 BIT DTW2
 BMI DT5

.DT10

 ORA DTW1

.DT5

 AND DTW8

.DT9

 JMP DASC  \ascii

.DT3

 TAX
 TYA
 PHA
 LDA V
 PHA
 LDA V+1
PHA  \Magic
 TXA
 ASL A
 TAX
 LDA JMTB-2,X
 STA DTM+1
 LDA JMTB-1,X
 STA DTM+2
 TXA
 LSR A

.DTM

 JSR DASC

.DT7

 PLA
 STA V+1
 PLA
 STA V
 PLA
 TAY
 RTS

.DT6

 STA SC
 TYA
 PHA
 LDA V
 PHA
 LDA V+1
 PHA
 JSR DORND
 TAX
 LDA #0
 CPX #51
 ADC #0
 CPX #102
 ADC #0
 CPX #153
 ADC #0
 CPX #204
 LDX SC
 ADC MTIN-91,X
 JSR DETOK
 JMP DT7  \Multitoken
}

\ ******************************************************************************
\       Name: MT1
\ ******************************************************************************

.MT1
{
 LDA #0
 EQUB &2C
}

\ ******************************************************************************
\       Name: MT2
\ ******************************************************************************

.MT2
{
 LDA #32
 STA DTW1
 LDA #0
 STA DTW6
 RTS
}

\ ******************************************************************************
\       Name: MT8
\ ******************************************************************************

.MT8
{
 LDA #6
 JSR DOXC
 LDA #FF
 STA DTW2
 RTS
}

\ ******************************************************************************
\       Name: MT9
\ ******************************************************************************

.MT9
{
 LDA #1
 JSR DOXC
 JMP TT66
}

\ ******************************************************************************
\       Name: MT13
\ ******************************************************************************

.MT13
{
 LDA #128
 STA DTW6
 LDA #32
 STA DTW1
 RTS
}

\ ******************************************************************************
\       Name: MT6
\ ******************************************************************************

.MT6
{
 LDA #128
 STA QQ17
 LDA #FF
 EQUB &2C
}

\ ******************************************************************************
\       Name: MT5
\ ******************************************************************************

.MT5
{
 LDA #0
 STA DTW3
 RTS
}

\ ******************************************************************************
\       Name: MT14
\ ******************************************************************************

.MT14
{
 LDA #128
 EQUB &2C
}

\ ******************************************************************************
\       Name: MT15
\ ******************************************************************************

.MT15
{
 LDA #0
 STA DTW4
 ASL A
 STA DTW5
 RTS
}

\ ******************************************************************************
\       Name: MT17
\ ******************************************************************************

.MT17
{
 LDA QQ17
 AND #191
 STA QQ17
 LDA #3
 JSR TT27
 LDX DTW5
 LDA BUF-1,X
 JSR VOWEL
 BCC MT171
 DEC DTW5

.MT171

 LDA #153
 JMP DETOK
}

\ ******************************************************************************
\       Name: MT18
\ ******************************************************************************

.MT18
{
 JSR MT19
 JSR DORND
 AND #3
 TAY

.MT18L

 JSR DORND
 AND #62
 TAX
 LDA TKN2+2,X
 JSR DTS
 LDA TKN2+3,X
 JSR DTS
 DEY
 BPL MT18L
 RTS
}

\ ******************************************************************************
\       Name: MT19
\ ******************************************************************************

.MT19
{
 LDA #&DF
 STA DTW8
 RTS
}

\ ******************************************************************************
\       Name: VOWEL
\ ******************************************************************************

.VOWEL
{
 ORA #32
 CMP #'a'
 BEQ VRTS
 CMP #'e'
 BEQ VRTS
 CMP #'i'
 BEQ VRTS
 CMP #'o'
 BEQ VRTS
 CMP #'u'
 BEQ VRTS
 CLC

.VRTS

 RTS
}

\ ******************************************************************************
\       Name: WHITETEXT
\ ******************************************************************************

.WHITETEXT
{
 LDA #32
 JSR DOVDU19
 LDA #RED
 JMP DOCOL
}

\ ******************************************************************************
\       Name: JMTB
\ ******************************************************************************

.JMTB
{
 EQUW MT1
 EQUW MT2
 EQUW TT27
 EQUW TT27
 EQUW MT5
 EQUW MT6
 EQUW DASC
 EQUW MT8
 EQUW MT9
 EQUW DASC
 EQUW NLIN4
 EQUW DASC
 EQUW MT13
 EQUW MT14
 EQUW MT15
 EQUW MT16
 EQUW MT17
 EQUW MT18
 EQUW MT19
 EQUW DASC
 EQUW CLYNS
 EQUW PAUSE
 EQUW MT23
 EQUW PAUSE2
 EQUW BRIS
 EQUW MT26
 EQUW MT27
 EQUW MT28
 EQUW MT29
 EQUW WHITETEXT
 EQUW DASC
 EQUW DASC
}

\ ******************************************************************************
\       Name: TKN2
\ ******************************************************************************

.TKN2
{
 EQUB 12
 EQUB 10
 EQUS "ABOUSEITILETSTONLONUTHNO"
}

\ ******************************************************************************
\       Name: QQ16
\ ******************************************************************************

.QQ16
{
 EQUS "ALLEXEGEZACEBISOUSESARMAINDIREA?ERATENBERALAVETIEDORQUANTEISRION"
}

\ ******************************************************************************
\       Name: shpcol
\ ******************************************************************************

.shpcol
{
 EQUB 0
 EQUB YELLOW
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN \barrel
 EQUB RED
 EQUB RED
 EQUB RED
 EQUB CYAN
 EQUB CYAN \transp
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN
 EQUB RED
 EQUB CYAN \Viper
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN \Wor
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN
 EQUB CYAN
 EQUB &C9 \Moray
 EQUB WHITE
 EQUB WHITE
 EQUB CYAN \Con
 EQUB CYAN
 EQUB CYAN
}

\ ******************************************************************************
\       Name: scacol
\ ******************************************************************************

.scacol
{
 EQUB 0
 EQUB YELLOW2
 EQUB GREEN2
 EQUB BLUE2
 EQUB BLUE2
 EQUB BLUE2 \barrel
 EQUB RED2
 EQUB RED2
 EQUB RED2
 EQUB CYAN2
 EQUB CYAN2 \transp
 EQUB CYAN2
 EQUB MAG2
 EQUB MAG2
 EQUB MAG2
 EQUB RED2
 EQUB CYAN2 \Viper
 EQUB CYAN2
 EQUB CYAN2
 EQUB CYAN2
 EQUB CYAN2
 EQUB CYAN2
 EQUB CYAN2
 EQUB BLUE2 \Wor
 EQUB CYAN2
 EQUB CYAN2
 EQUB MAG2
 EQUB CYAN2
 EQUB CYAN2 \Moray
 EQUB WHITE2
 EQUB CYAN2
 EQUB CYAN2 \Con
 EQUB 0
 EQUB CYAN2
 EQUD 0
}

\ ******************************************************************************
\       Name: LSX2
\ ******************************************************************************

.LSX2
{
IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTA-LSX2.bin"
ELSE
 SKIP &100
ENDIF
}

\ ******************************************************************************
\       Name: LSY2
\ ******************************************************************************

.LSY2
{
IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTA-LSY2.bin"
ELSE
 SKIP &100
ENDIF
}

\ ******************************************************************************
\
\ Save output/ELTA.bin
\
\ ******************************************************************************

PRINT "ELITE A"
PRINT "Assembled at ", ~S1%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - S1%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_A%

PRINT "S.ELTA ", ~S1%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_A%
SAVE "output/ELTA.bin", S1%, P%, LOAD%

\ ******************************************************************************
\
\ ELITE B FILE
\
\ Produces the binary file ELTB.bin that gets loaded by elite-bcfs.asm.
\
\ ******************************************************************************

CODE_B% = P%
LOAD_B% = LOAD% + P% - CODE%

\ ******************************************************************************
\       Name: UNIV
\ ******************************************************************************

.UNIV
{
FOR I%, 0, NOSH
  EQUW K% + I% * NI%    \ Address of block no. I%, of size NI%, in workspace K%
NEXT
}

\ ******************************************************************************
\       Name: TWOS
\ ******************************************************************************

.TWOS
{
 EQUD &10204080
 EQUD &01020408
}

\ ******************************************************************************
\       Name: TWOS2
\ ******************************************************************************

.TWOS2
{
 EQUD &183060C0
 EQUD &0303060C
}

\ ******************************************************************************
\       Name: CTWOS
\ ******************************************************************************

.CTWOS
{
 EQUD &11224488
 EQUB &88
}

\ ******************************************************************************
\       Name: LL30
\ ******************************************************************************

.LL30
{
 LDA #&81
 JSR OSWRCH
 LDA #5
 JSR OSWRCH
 LDA X1
 JSR OSWRCH
 LDA Y1
 JSR OSWRCH
 LDA X2
 JSR OSWRCH
 LDA Y2
 JMP OSWRCH
}

\ ******************************************************************************
\       Name: LOIN
\ ******************************************************************************

.LOIN
{
 STY T1
 LDY LBUP
 LDA X1
 STA LBUF,Y
 LDA Y1
 STA LBUF+1,Y
 LDA X2
 STA LBUF+2,Y
 LDA Y2
 STA LBUF+3,Y
 TYA
 CLC
 ADC #4
 STA LBUP
 CMP #250
 BCS LBFL
 LDY T1
 RTS

.^LBFL

 LDY LBUP
 BEQ LBZE2
 INY
 LDA #&81
 JSR OSWRCH
 TYA
 JSR OSWRCH
 LDY #0

.LBFLL

 LDA LBUF,Y
 JSR OSWRCH
 INY
 CPY LBUP
 BNE LBFLL

.LBZE2

 STZ LBUP \++
 LDY T1
 RTS
}

\ ******************************************************************************
\       Name: LBUF
\ ******************************************************************************

.LBUF
{
IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTB-LBUF.bin"
ELSE
 SKIP &100
ENDIF
}

\ ******************************************************************************
\       Name: FLKB
\ ******************************************************************************

.FLKB
{
 LDA #15
 TAX
 JMP OSBYTE
}

\ ******************************************************************************
\       Name: NLIN3
\ ******************************************************************************

.NLIN3
{
 JSR TT27
}

\ ******************************************************************************
\       Name: NLIN4
\ ******************************************************************************

.NLIN4
{
 LDA #19
 BNE NLIN2
}

\ ******************************************************************************
\       Name: NLIN
\ ******************************************************************************

.NLIN
{
 LDA #23
 JSR INCYC
}

\ ******************************************************************************
\       Name: NLIN2
\ ******************************************************************************

.NLIN2
{
 STA Y1
 STA Y2
 LDA #YELLOW
 JSR DOCOL
 LDX #2
 STX X1
 LDX #254
 STX X2
 JSR LL30
 LDA #CYAN
 JMP DOCOL
}

\ ******************************************************************************
\       Name: HLOIN2
\ ******************************************************************************

.HLOIN2
{
 JSR EDGES
 STY Y1
 LDA #0
 STA LSO,Y
}

\ ******************************************************************************
\       Name: HLOIN
\ ******************************************************************************

.HLOIN
{
 STY T1
 LDY HBUP
 LDA X1
 STA HBUF,Y
 LDA X2
 STA HBUF+1,Y
 LDA Y1
 STA HBUF+2,Y
 TYA
 CLC
 ADC #3
 STA HBUP
 BMI HBFL
 LDY T1
 RTS

.^HBFL

 LDA HBUP
 STA HBUF
 CMP #2
 BEQ HBZE2
 LDA #2
 STA HBUP
 LDA #247
 LDX #(HBUF MOD256)
 LDY #(HBUF DIV256)
 JSR OSWORD

.HBZE2

 LDY T1
 RTS

.^HBZE

 LDA #2
 STA HBUP
 RTS
}

\ ******************************************************************************
\       Name: HBUF
\ ******************************************************************************

.HBUF
{
 EQUB 0
 EQUB 0

IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTB-HBUF.bin"
ELSE
 SKIP &100
ENDIF
}

\ ******************************************************************************
\       Name: TWFL
\ ******************************************************************************

.TWFL
{
 EQUD &F0E0C080
 EQUW &FCF8
 EQUB &FE
}

\ ******************************************************************************
\       Name: TWFR
\ ******************************************************************************

.TWFR
{
 EQUD &1F3F7FFF
 EQUD &0103070F
}

\ ******************************************************************************
\       Name: PIX1
\ ******************************************************************************

.PIX1
{
 JSR ADD
 STA YY+1
 TXA
 STA SYL,Y
}

\ ******************************************************************************
\       Name: PIXEL2
\ ******************************************************************************

.PIXEL2
{
 LDA X1
 BPL PX1
 EOR #&7F
 CLC
 ADC #1

.PX1

 EOR #128
 TAX
 LDA Y1
 AND #127
 CMP #96
 BCS PX4
 LDA Y1
 BPL PX2
 EOR #&7F
 ADC #1

.PX2

 STA T
 LDA #97
 SBC T
}

\ ******************************************************************************
\       Name: PIXEL
\ ******************************************************************************

.PIXEL
{
 STY T1
 LDY PBUP
 STA PBUF+2,Y
 TXA
 STA PBUF+1,Y
 LDA ZZ
 AND #&F8
 STA PBUF,Y
 TYA
 CLC
 ADC #3
 STA PBUP
 BMI PBFL
 LDY T1

.^PX4

 RTS

.^PBFL

 LDA PBUP
 STA pixbl
 CMP #2
 BEQ PBZE2
 LDA #2
 STA PBUP
 LDA #DUST
 JSR DOCOL
 LDA #241
 LDX #(pixbl MOD256)
 LDY #(pixbl DIV256)
 JSR OSWORD

.PBZE2

 LDY T1
 RTS

.^PBZE

 LDA #2
 STA PBUP
 RTS
}

\ ******************************************************************************
\       Name: PIXEL3
\ ******************************************************************************

.PIXEL3
{
 STY T1
 LDY PBUP
 STA PBUF+2,Y
 TXA
 STA PBUF+1,Y
 LDA ZZ
 ORA #1
 STA PBUF,Y
 TYA
 CLC
 ADC #3
 STA PBUP
 BMI PBFL
 LDY T1
 RTS
}

\ ******************************************************************************
\       Name: pixbl, PBUF
\ ******************************************************************************

.pixbl

.PBUF
{
 EQUB 0
 EQUB 0

IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTB-PBUF.bin"
ELSE
 SKIP &100
ENDIF
}

\ ******************************************************************************
\       Name: BLINE
\ ******************************************************************************

.BLINE
{
 TXA
 ADC K4
 STA K6+2
 LDA K4+1
 ADC T
 STA K6+3
 LDA FLAG
 BEQ BL1
 INC FLAG
 BEQ BL5

.BL1

 LDA K5
 STA XX15
 LDA K5+1
 STA XX15+1
 LDA K5+2
 STA XX15+2
 LDA K5+3
 STA XX15+3
 LDA K6
 STA XX15+4
 LDA K6+1
 STA XX15+5
 LDA K6+2
 STA XX12
 LDA K6+3
 STA XX12+1
 JSR LL145
 BCS BL5
 LDY LSP
 LDA X1
 STA LSX2,Y
 LDA Y1
 STA LSY2,Y
 INY
 LDA X2
 STA LSX2,Y
 LDA Y2
 STA LSY2,Y
 INY
 STY LSP

.BL5

 LDA K6
 STA K5
 LDA K6+1
 STA K5+1
 LDA K6+2
 STA K5+2
 LDA K6+3
 STA K5+3
 LDA CNT
 CLC
 ADC STP
 STA CNT
 RTS
}

\ ******************************************************************************
\       Name: FLIP
\ ******************************************************************************

.FLIP
{
\LDAMJ\BNEFLIP-1
 LDY NOSTM

.FLL1

 LDX SY,Y
 LDA SX,Y
 STA Y1
 STA SY,Y
 TXA
 STA X1
 STA SX,Y
 LDA SZ,Y
 STA ZZ
 JSR PIXEL2
 DEY
 BNE FLL1
 RTS
}

\ ******************************************************************************
\       Name: STARS
\ ******************************************************************************

.STARS
{
 LDX VIEW
 BEQ STARS1
 DEX
 BNE ST11
 JMP STARS6

.ST11

 JMP STARS2
}

\ ******************************************************************************
\       Name: STARS1
\ ******************************************************************************

.STARS1
{
 LDY NOSTM

.STL1

 JSR DV42
 LDA R
 LSR P
 ROR A
 LSR P
 ROR A
 ORA #1
 STA Q
 LDA SZL,Y
 SBC DELT4
 STA SZL,Y
 LDA SZ,Y
 STA ZZ
 SBC DELT4+1
 STA SZ,Y
 JSR MLU1
 STA YY+1
 LDA P
 ADC SYL,Y
 STA YY
 STA R
 LDA Y1
 ADC YY+1
 STA YY+1
 STA S
 LDA SX,Y
 STA X1
 JSR MLU2
 STA XX+1
 LDA P
 ADC SXL,Y
 STA XX
 LDA X1
 ADC XX+1
 STA XX+1
 EOR ALP2+1
 JSR MLS1
 JSR ADD
 STA YY+1
 STX YY
 EOR ALP2
 JSR MLS2
 JSR ADD
 STA XX+1
 STX XX
 LDX BET1
 LDA YY+1
 EOR BET2+1
 JSR MULTS-2
 STA Q
 JSR MUT2
 ASL P
 ROL A
 STA T
 LDA #0
 ROR A
 ORA T
 JSR ADD
 STA XX+1
 TXA
 STA SXL,Y
 LDA YY
 STA R
 LDA YY+1
 STA S
\JSRMADSTASSTXR
 LDA #0
 STA P
 LDA BETA
 EOR #128
 JSR PIX1
 LDA XX+1
 STA X1
 STA SX,Y
 AND #127
 CMP #120
 BCS KILL1
 LDA YY+1
 STA SY,Y
 STA Y1
 AND #127
 CMP #120
 BCS KILL1
 LDA SZ,Y
 CMP #16
 BCC KILL1
 STA ZZ

.STC1

 JSR PIXEL2
 DEY
 BEQ P%+5
 JMP STL1
 RTS

.KILL1

 JSR DORND
 ORA #4
 STA Y1
 STA SY,Y
 JSR DORND
 ORA #8
 STA X1
 STA SX,Y
 JSR DORND
 ORA #&90
 STA SZ,Y
 STA ZZ
 LDA Y1
 JMP STC1
}

\ ******************************************************************************
\       Name: STARS6
\ ******************************************************************************

.STARS6
{
 LDY NOSTM

.STL6

 JSR DV42
 LDA R
 LSR P
 ROR A
 LSR P
 ROR A
 ORA #1
 STA Q
 LDA SX,Y
 STA X1
 JSR MLU2
 STA XX+1
 LDA SXL,Y
 SBC P
 STA XX
 LDA X1
 SBC XX+1
 STA XX+1
 JSR MLU1
 STA YY+1
 LDA SYL,Y
 SBC P
 STA YY
 STA R
 LDA Y1
 SBC YY+1
 STA YY+1
 STA S
 LDA SZL,Y
 ADC DELT4
 STA SZL,Y
 LDA SZ,Y
 STA ZZ
 ADC DELT4+1
 STA SZ,Y
 LDA XX+1
 EOR ALP2
 JSR MLS1
 JSR ADD
 STA YY+1
 STX YY
 EOR ALP2+1
 JSR MLS2
 JSR ADD
 STA XX+1
 STX XX
 LDA YY+1
 EOR BET2+1
 LDX BET1
 JSR MULTS-2
 STA Q
 LDA XX+1
 STA S
 EOR #128
 JSR MUT1
 ASL P
 ROL A
 STA T
 LDA #0
 ROR A
 ORA T
 JSR ADD
 STA XX+1
 TXA
 STA SXL,Y
 LDA YY
 STA R
 LDA YY+1
 STA S
\EOR#128
\JSRMADSTASSTXR
 LDA #0
 STA P
 LDA BETA
 JSR PIX1
 LDA XX+1
 STA X1
 STA SX,Y
 LDA YY+1
 STA SY,Y
 STA Y1
 AND #127
 CMP #110
 BCS KILL6
 LDA SZ,Y
 CMP #160
 BCS KILL6
 STA ZZ

.STC6

 JSR PIXEL2
 DEY
 BEQ ST3
 JMP STL6

.ST3

 RTS

.KILL6

 JSR DORND
 AND #127
 ADC #10
 STA SZ,Y
 STA ZZ
 LSR A
 BCS ST4
 LSR A
 LDA #&FC
 ROR A
 STA X1
 STA SX,Y
 JSR DORND
 STA Y1
 STA SY,Y
 JMP STC6

.ST4

 JSR DORND
 STA X1
 STA SX,Y
 LSR A
 LDA #230
 ROR A
 STA Y1
 STA SY,Y
 BNE STC6
}

\ ******************************************************************************
\       Name: MAS1
\ ******************************************************************************

.MAS1
{
 LDA INWK,Y
 ASL A
 STA K+1
 LDA INWK+1,Y
 ROL A
 STA K+2
 LDA #0
 ROR A
 STA K+3
 JSR MVT3
 STA INWK+2,X
 LDY K+1
 STY INWK,X
 LDY K+2
 STY INWK+1,X
 AND #127

.MA9

 RTS
}

\ ******************************************************************************
\       Name: MAS2
\ ******************************************************************************

{
.^m

 LDA #0

.^MAS2

 ORA K%+2,Y
 ORA K%+5,Y
 ORA K%+8,Y
 AND #127
 RTS
}

\ ******************************************************************************
\       Name: MAS3
\ ******************************************************************************

.MAS3
{
 LDA K%+1,Y
 JSR SQUA2
 STA R
 LDA K%+4,Y
 JSR SQUA2
 ADC R
 BCS MA30
 STA R
 LDA K%+7,Y
 JSR SQUA2
 ADC R
 BCC P%+4

.MA30

 LDA #FF
 RTS
}

\ ******************************************************************************
\       Name: STATUS
\ ******************************************************************************

{
.wearedocked

 LDA #205
 JSR DETOK
 JSR TT67
 JMP st6+3

.st4

 LDX #9
 CMP #25
 BCS st3
 DEX
 CMP #10
 BCS st3
 DEX
 CMP #2
 BCS st3
 DEX
 BNE st3

.^STATUS

 LDA #8
 JSR TRADEMODE
 JSR TT111
 LDA #7
 JSR DOXC
 LDA #126
 JSR NLIN3
 LDA #15
 LDY QQ12
 BNE wearedocked
 LDA #230
 LDY JUNK
 LDX FRIN+2,Y
 BEQ st6
 LDY ENERGY
 CPY #128
 ADC #1

.st6

 JSR plf
 LDA #125
 JSR spc
 LDA #19
 LDY FIST
 BEQ st5
 CPY #50
 ADC #1

.st5

 JSR plf
 LDA #16
 JSR spc
 LDA TALLY+1
 BNE st4
 TAX
 LDA TALLY
 LSR A
 LSR A
 INX
 LSR A
 BNE P%-2

.st3

 TXA
 CLC
 ADC #21
 JSR plf
 LDA #18
 JSR plf2
 LDA CRGO
 CMP #26
 BCC P%+7
 LDA #&6B
 JSR plf2
 LDA BST
 BEQ P%+7
 LDA #111
 JSR plf2
 LDA ECM
 BEQ P%+7
 LDA #&6C
 JSR plf2
 LDA #113
 STA XX4

.stqv

 TAY
 LDX BOMB-113,Y
 BEQ P%+5
 JSR plf2
 INC XX4
 LDA XX4
 CMP #117
 BCC stqv
 LDX #0

.st

 STX CNT
 LDY LASER,X
 BEQ st1
 TXA
 CLC
 ADC #96
 JSR spc
 LDA #103
 LDX CNT
 LDY LASER,X
 CPY #128+POW
 BNE P%+4
 LDA #104
 CPY #Armlas
 BNE P%+4
 LDA #117
 CPY #Mlas
 BNE P%+4
 LDA #118
 JSR plf2

.st1

 LDX CNT
 INX
 CPX #4
 BCC st
 RTS
}

\ ******************************************************************************
\       Name: plf2
\ ******************************************************************************

.plf2
{
 JSR plf
 LDA #6
 JMP DOXC
}

\ ******************************************************************************
\       Name: MVT3
\ ******************************************************************************

.MVT3
{
 LDA K+3
 STA S
 AND #128
 STA T
 EOR INWK+2,X
 BMI MV13
 LDA K+1
 CLC
 ADC INWK,X
 STA K+1
 LDA K+2
 ADC INWK+1,X
 STA K+2
 LDA K+3
 ADC INWK+2,X
 AND #127
 ORA T
 STA K+3
 RTS

.MV13

 LDA S
 AND #127
 STA S
 LDA INWK,X
 SEC
 SBC K+1
 STA K+1
 LDA INWK+1,X
 SBC K+2
 STA K+2
 LDA INWK+2,X
 AND #127
 SBC S
 ORA #128
 EOR T
 STA K+3
 BCS MV14
 LDA #1
 SBC K+1
 STA K+1
 LDA #0
 SBC K+2
 STA K+2
 LDA #0
 SBC K+3
 AND #127
 ORA T
 STA K+3

.MV14

 RTS
}

\ ******************************************************************************
\       Name: MVS5
\ ******************************************************************************

.MVS5
{
 LDA INWK+1,X
 AND #127
 LSR A
 STA T
 LDA INWK,X
 SEC
 SBC T
 STA R
 LDA INWK+1,X
 SBC #0
 STA S
 LDA INWK,Y
 STA P
 LDA INWK+1,Y
 AND #128
 STA T
 LDA INWK+1,Y
 AND #127
 LSR A
 ROR P
 LSR A
 ROR P
 LSR A
 ROR P
 LSR A
 ROR P
 ORA T
 EOR RAT2
 STX Q
 JSR ADD
 STA K+1
 STX K
 LDX Q
 LDA INWK+1,Y
 AND #127
 LSR A
 STA T
 LDA INWK,Y
 SEC
 SBC T
 STA R
 LDA INWK+1,Y
 SBC #0
 STA S
 LDA INWK,X
 STA P
 LDA INWK+1,X
 AND #128
 STA T
 LDA INWK+1,X
 AND #127
 LSR A
 ROR P
 LSR A
 ROR P
 LSR A
 ROR P
 LSR A
 ROR P
 ORA T
 EOR #128
 EOR RAT2
 STX Q
 JSR ADD
 STA INWK+1,Y
 STX INWK,Y
 LDX Q
 LDA K
 STA INWK,X
 LDA K+1
 STA INWK+1,X
 RTS
 }

\ ******************************************************************************
\       Name: TENS
\ ******************************************************************************

.TENS
{
 EQUD &E87648
}

\ ******************************************************************************
\       Name: pr2
\ ******************************************************************************

.pr2
{
 LDA #3
 LDY #0
}

\ ******************************************************************************
\       Name: TT11
\ ******************************************************************************

.TT11
{
 STA U
 LDA #0
 STA K
 STA K+1
 STY K+2
 STX K+3
}

\ ******************************************************************************
\       Name: BPRNT
\ ******************************************************************************

.BPRNT
{
 LDX #11
 STX T
 PHP
 BCC TT30
 DEC T
 DEC U

.TT30

 LDA #11
 SEC
 STA XX17
 SBC U
 STA U
 INC U
 LDY #0
 STY S
 JMP TT36

.TT35

 ASL K+3
 ROL K+2
 ROL K+1
 ROL K
 ROL S
 LDX #3

.tt35

 LDA K,X
 STA XX15,X
 DEX
 BPL tt35
 LDA S
 STA XX15+4
 ASL K+3
 ROL K+2
 ROL K+1
 ROL K
 ROL S
 ASL K+3
 ROL K+2
 ROL K+1
 ROL K
 ROL S
 CLC
 LDX #3

.tt36

 LDA K,X
 ADC XX15,X
 STA K,X
 DEX
 BPL tt36
 LDA XX15+4
 ADC S
 STA S
 LDY #0

.TT36

 LDX #3
 SEC

.tt37

 LDA K,X
 SBC TENS,X
 STA XX15,X
 DEX
 BPL tt37
 LDA S
 SBC #23
 STA XX15+4
 BCC TT37
 LDX #3

.tt38

 LDA XX15,X
 STA K,X
 DEX
 BPL tt38
 LDA XX15+4
 STA S
 INY
 JMP TT36

.TT37

 TYA
 BNE TT32
 LDA T
 BEQ TT32
 DEC U
 BPL TT34
 LDA #32
 BNE tt34

.TT32

 LDY #0
 STY T
 CLC
 ADC #B

.tt34

 JSR TT26

.TT34

 DEC T
 BPL P%+4
 INC T
 DEC XX17
 BMI rT10
 BNE P%+10
 PLP
 BCC P%+7
 LDA #&2E
 JSR TT26
 JMP TT35

.rT10

 RTS
}

\ ******************************************************************************
\       Name: DTW1
\ ******************************************************************************

.DTW1
{
 EQUB 32
}

\ ******************************************************************************
\       Name: DTW2
\ ******************************************************************************

.DTW2
{
 EQUB &FF
}

\ ******************************************************************************
\       Name: DTW3
\ ******************************************************************************

.DTW3
{
 EQUB 0
}

\ ******************************************************************************
\       Name: DTW4
\ ******************************************************************************

.DTW4
{
 BRK
}

\ ******************************************************************************
\       Name: DTW5
\ ******************************************************************************

.DTW5
{
 BRK
}

\ ******************************************************************************
\       Name: DTW6
\ ******************************************************************************

.DTW6
{
 BRK
}

\ ******************************************************************************
\       Name: DTW8
\ ******************************************************************************

.DTW8
{
 EQUB &FF
}

\ ******************************************************************************
\       Name: FEED
\ ******************************************************************************

.FEED
{
 LDA #12
 EQUB &2C
}

\ ******************************************************************************
\       Name: MT16
\ ******************************************************************************

.MT16
{
 LDA #65
}

DTW7 = MT16+1

\ ******************************************************************************
\       Name: DASC, TT26
\ ******************************************************************************

\ New TT26 entry for right justified text

.DASC

.TT26
{
 STX SC
 LDX #FF
 STX DTW8
 CMP #'.'
 BEQ DA8
 CMP #':'
 BEQ DA8
 CMP #10
 BEQ DA8
 CMP #12
 BEQ DA8
 CMP #32
 BEQ DA8
 INX

.DA8

 STX DTW2
 LDX SC
 BIT DTW4
 BMI P%+5
 JMP CHPR
 BVS P%+6
 CMP #12
 BEQ DA1
 LDX DTW5
 STA BUF,X
 LDX SC
 INC DTW5
 CLC
 RTS

.DA1

 TXA
 PHA
 TYA
 PHA

.DA5

 LDX DTW5
 BEQ DA6+3
 CPX #(LL+1)
 BCC DA6
 LSR SC+1

.DA11

 LDA SC+1
 BMI P%+6
 LDA #64
 STA SC+1
 LDY #(LL-1)

.DAL1

 LDA BUF+LL
 CMP #32
 BEQ DA2

.DAL2

 DEY
 BMI DA11
 BEQ DA11
 LDA BUF,Y
 CMP #32
 BNE DAL2
 ASL SC+1
 BMI DAL2
 STY SC
 LDY DTW5

.DAL6

 LDA BUF,Y
 STA BUF+1,Y
 DEY
 CPY SC
 BCS DAL6
 INC DTW5
\LDA#32

.DAL3

 CMP BUF,Y
 BNE DAL1
 DEY
 BPL DAL3
 BMI DA11

.DA2

 LDX #LL
 JSR DAS1
 LDA #12
 JSR CHPR
 LDA DTW5
\CLC
 SBC #LL
 STA DTW5
 TAX
 BEQ DA6+3
 LDY #0
 INX

.DAL4

 LDA BUF+LL+1,Y
 STA BUF,Y
 INY
 DEX
 BNE DAL4
 BEQ DA5

.DAS1

 LDY #0

.DAL5

 LDA BUF,Y
 JSR CHPR
 INY
 DEX
 BNE DAL5

.^rT9

 RTS

.DA6

 JSR DAS1
 STX DTW5
 PLA
 TAY
 PLA
 TAX
 LDA #12

.DA7

 EQUB &2C
}

\ ******************************************************************************
\       Name: BELL
\ ******************************************************************************

.BELL
{
 LDA #7
}

\ ******************************************************************************
\       Name: CHPR
\ ******************************************************************************

.CHPR

\PRINT

.CHPRD
{
 STA K3
 CMP #32
 BCC P%+4
 INC XC
 LDA QQ17
INA \++
 BEQ rT9
 BIT printflag
 BPL noprinter
 LDA #printcode
 JSR OSWRCH

.noprinter

 LDA K3
 JSR OSWRCH
 CLC
 RTS
}

\ ******************************************************************************
\       Name: printflag
\ ******************************************************************************

.printflag
{
 BRK
}

\ ******************************************************************************
\       Name: DIALS
\ ******************************************************************************

.DIALS
{
 LDA #RDPARAMS
 JSR OSWRCH
 JSR OSWRCH
 LDA ENERGY
 JSR OSWRCH
 LDA ALP1
 JSR OSWRCH
 LDA ALP2
 JSR OSWRCH
 LDA BETA
 JSR OSWRCH
 LDA BET1
 JSR OSWRCH
 LDA DELTA
 JSR OSWRCH
 LDA ALTIT
 JSR OSWRCH
 LDA MCNT
 JSR OSWRCH
 LDA FSH
 JSR OSWRCH
 LDA ASH
 JSR OSWRCH
 LDA QQ14
 JSR OSWRCH
 LDA GNTMP
 JSR OSWRCH
 LDA CABTMP
 JSR OSWRCH
 LDA FLH
 JSR OSWRCH
 LDA ESCP
 JSR OSWRCH
 LDA MCNT
 AND #3
 BEQ P%+3
 RTS
 JMP COMPAS
}

\ ******************************************************************************
\       Name: ESCAPE
\ ******************************************************************************

.ESCAPE
{
 JSR RES2
 LDX #CYL
 STX TYPE
 JSR FRS1
 BCS ES1
 LDX #CYL2
 JSR FRS1

.ES1

 LDA #8
 STA INWK+27
 LDA #&C2
 STA INWK+30
 LSR A
 STA INWK+32

.ESL1

 JSR MVEIT
 JSR LL9
 DEC INWK+32
 BNE ESL1
 JSR SCAN
 LDA #0
 LDX #16

.ESL2

 STA QQ20,X
 DEX
 BPL ESL2
 STA FIST
 STA ESCP
 LDA #70
 STA QQ14
 JMP GOIN
}

\ ******************************************************************************
\       Name: HME2
\ ******************************************************************************

.HME2
{
 LDA #CYAN
 JSR DOCOL
 LDA #14
 JSR DETOK
 JSR TT103
 JSR TT81
 LDA #0
 STA XX20

.HME3

 JSR MT14
 JSR cpl
 LDX DTW5
 LDA INWK+5,X
 CMP #13
 BNE HME6

.HME4

 DEX
 LDA INWK+5,X
 ORA #32
 CMP BUF,X
 BEQ HME4
 TXA
 BMI HME5

.HME6

 JSR TT20
 INC XX20
 BNE HME3
 JSR TT111
 JSR TT103
 LDA #40
 JSR NOISE
 LDA #215
 JMP DETOK
\Not found

.HME5

 LDA QQ15+3
 STA QQ9
 LDA QQ15+1
 STA QQ10
 JSR TT111
 JSR TT103
 JSR MT15
 JMP T95
}

\ ******************************************************************************
\
\ Save output/ELTB.bin
\
\ ******************************************************************************

PRINT "ELITE B"
PRINT "Assembled at ", ~CODE_B%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - CODE_B%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_B%

PRINT "S.ELTB ", ~CODE_B%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_B%
SAVE "output/ELTB.bin", CODE_B%, P%, LOAD%

\ ******************************************************************************
\
\ ELITE C FILE
\
\ Produces the binary file ELTC.bin that gets loaded by elite-bcfs.asm.
\
\ ******************************************************************************

CODE_C% = P%
LOAD_C% = LOAD% +P% - CODE%

\ Ship,X,Z(low bit = sgn X)

\ ******************************************************************************
\       Name: HATB
\ ******************************************************************************

.HATB
{
 EQUB 9
 EQUB &54
 EQUB &3B
 EQUB 10
 EQUB &82
 EQUB &B0
 EQUB 0
 EQUB 0
 EQUB 0
 EQUB OIL
 EQUB &50
 EQUB &11
 EQUB OIL
 EQUB &D1
 EQUB &28
 EQUB OIL
 EQUB &40
 EQUB &06
 EQUB COPS
 EQUB &60
 EQUB &90
 EQUB KRA
 EQUB &10
 EQUB &D1
 EQUB 0
 EQUB 0
 EQUB 0
 EQUB 16
 EQUB &51
 EQUB &F8
 EQUB 19
 EQUB &60
 EQUB &75
 EQUB 0
 EQUB 0
 EQUB 0
}

\ ******************************************************************************
\       Name: HALL
\ ******************************************************************************

.HALL
{
 LDA #0
 JSR DOVDU19
 JSR UNWISE
 LDA #0
 JSR TT66
 JSR DORND
 BPL HA7
 AND #3
 STA T
 ASL A
 ASL A
 ASL A
 ADC T
 TAX
 LDY #3
 STY CNT2

.HAL8

 LDY #2

.HAL9

 LDA HATB,X
 STA XX15,Y
 INX
 DEY
 BPL HAL9
 TXA
 PHA
 JSR HAS1
 PLA
 TAX
 DEC CNT2
 BNE HAL8
 LDY #128
 BNE HA9

.HA7

 LSR A
 STA XX15+1
 JSR DORND
 STA XX15
 JSR DORND
 AND #3
 ADC #SH3
 STA XX15+2
 JSR HAS1
 LDY #0

.HA9

 STY HANG+2
 JSR UNWISE
 LDA #248
 LDX #(HANG MOD256)
 LDY #(HANG DIV256)
 JMP OSWORD \ =  =
}

\ ******************************************************************************
\       Name: HANG
\ ******************************************************************************

.HANG
{
 EQUB 3
 EQUB 0
 EQUB 0
}

\ ******************************************************************************
\       Name: HAS1
\ ******************************************************************************

.HAS1
{
 JSR ZINF
 LDA XX15
 STA INWK+6
 LSR A
 ROR INWK+2
 LDA XX15+1
 STA INWK
 LSR A
 LDA #1
 ADC #0
 STA INWK+7
 LDA #128
 STA INWK+5
 STA RAT2
 LDA #&B
 STA INWK+34
 JSR DORND
 STA XSAV

.HAL5

 LDX #21
 LDY #9
 JSR MVS5
 LDX #23
 LDY #11
 JSR MVS5
 LDX #25
 LDY #13
 JSR MVS5
 DEC XSAV
 BNE HAL5
 LDY XX15+2
 BEQ HA1
 TYA
 ASL A
 TAX
 LDA XX21-2,X
 STA XX0
 LDA XX21-1,X
 STA XX0+1
 BEQ HA1
 LDY #1
 LDA (XX0),Y
 STA Q
 INY
 LDA (XX0),Y
 STA R
 JSR LL5
 LDA #100
 SBC Q
 LSR A
 STA INWK+3
 JSR TIDY
 JMP LL9

.^UNWISE

.HA1

 RTS \tell LL30 swap EOR/ORA
}

\ ******************************************************************************
\       Name: TACTICS (Part 1 of 7)
\ ******************************************************************************

{
.TA34

 LDA #0
 JSR MAS4
 BEQ P%+5
 JMP TA21
 JSR TA87+3
 JSR EXNO3
 LDA #250
 JMP OOPS

.TA18\msl

 LDA ECMA
 BNE TA35
 LDA INWK+32
 ASL A
 BMI TA34
 LSR A
 TAX
 LDA UNIV,X
 STA V
 LDA UNIV+1,X
 JSR VCSUB
 LDA K3+2
 ORA K3+5
 ORA K3+8
 AND #127
 ORA K3+1
 ORA K3+4
 ORA K3+7
 BNE TA64
 LDA INWK+32
 CMP #&82
 BEQ TA35
 LDY #31
 LDA (V),Y
 BIT M32+1
 BNE TA35
 ORA #128
 STA (V),Y

.TA35

 LDA INWK
 ORA INWK+3
 ORA INWK+6
 BNE TA87
 LDA #80
 JSR OOPS

.TA87

 JSR EXNO2
 ASL INWK+31
 SEC
 ROR INWK+31

.TA1

 RTS

.TA64

 JSR DORND
 CMP #16
 BCS TA19S

.M32

 LDY #32
 LDA (V),Y
 LSR A
 BCS P%+5

.TA19S

 JMP TA19
 JMP ECBLB2

\ ******************************************************************************
\       Name: TACTICS (Part 2 of 7)
\ ******************************************************************************

.^TACTICS

 LDA #3
 STA RAT
 LDA #4
 STA RAT2
 LDA #22
 STA CNT2
 CPX #MSL
 BEQ TA18
 CPX #SST
 BNE TA13
 LDA NEWB
 AND #4
 BNE TN5
 LDA MANY+SHU+1
 BNE TA1
 JSR DORND
 CMP #253
 BCC TA1
 AND #1
 ADC #SHU-1
 TAX
 BNE TN6

.TN5

 JSR DORND
 CMP #240
 BCC TA1
 LDA MANY+COPS
 CMP #7\!!
 BCS TA22
 LDX #COPS

.TN6

 LDA #&F1
 JMP SFS1

.TA13

 CPX #HER
 BNE TA17
 JSR DORND
 CMP #200
 BCC TA22
 LDX #0
 STX INWK+32
 STX NEWB
 AND #3
 ADC #SH3
 TAX
 JSR TN6
 LDA #0
 STA INWK+32
 RTS

.TA17

 LDY #14
 LDA INWK+35
 CMP (XX0),Y
 BCS TA21
 INC INWK+35

\ ******************************************************************************
\       Name: TACTICS (Part 3 of 7)
\ ******************************************************************************

.TA21

 CPX #TGL
 BNE TA14
 LDA MANY+THG
 BNE TA14
 LSR INWK+32
 ASL INWK+32
 LSR INWK+27

.TA22

 RTS

.TA14

 JSR DORND
 LDA NEWB
 LSR A
 BCC TN1
 CPX #50
 BCS TA22

.TN1

 LSR A
 BCC TN2
 LDX FIST
 CPX #40
 BCC TN2
 LDA NEWB
 ORA #4
 STA NEWB
 LSR A
 LSR A

.TN2

 LSR A
 BCS TN3
 LSR A
 LSR A
 BCC GOPL
 JMP DOCKIT

.^GOPL

 JSR SPS1
 JMP TA151

.TN3

 LSR A
 BCC TN4
 LDA SSPR
 BEQ TN4
 LDA INWK+32
 AND #129
 STA INWK+32

.TN4

 LDX #8

.TAL1

 LDA INWK,X
 STA K3,X
 DEX
 BPL TAL1

.TA19

 JSR TAS2\XX15 = r~96
 LDY #10
 JSR TAS3
 STA CNT

\ ******************************************************************************
\       Name: TACTICS (Part 4 of 7)
\ ******************************************************************************

 LDA TYPE
 CMP #MSL
 BNE P%+5
 JMP TA20
 CMP #ANA
 BNE TN7
 JSR DORND
 CMP #200
 BCC TN7
 JSR DORND
 LDX #WRM
 CMP #100
 BCS P%+4
 LDX #SH3
 JMP TN6

.TN7

 JSR DORND
 CMP #250
 BCC TA7
 JSR DORND
 ORA #&68
 STA INWK+29

.TA7\VRol

 LDY #14
 LDA (XX0),Y
 LSR A
 CMP INWK+35
 BCC TA3
 LSR A
 LSR A
 CMP INWK+35
 BCC ta3
 JSR DORND
 CMP #230
 BCC ta3
 LDX TYPE
 LDA E%-1,X
 BPL ta3
 LDA #0
 STA INWK+32
 JMP SESCP

\ ******************************************************************************
\       Name: TACTICS (Part 5 of 7)
\ ******************************************************************************

.ta3

 LDA INWK+31
 AND #7
 BEQ TA3
 STA T
 JSR DORND
 AND #31
 CMP T
 BCS TA3
 LDA ECMA
 BNE TA3
 DEC INWK+31
 LDA TYPE
 CMP #THG
 BNE TA16
 LDX #TGL
 LDA INWK+32
 JMP SFS1

.TA16

 JMP SFRMIS

\ ******************************************************************************
\       Name: TACTICS (Part 6 of 7)
\ ******************************************************************************

.TA3

 LDA #0
 JSR MAS4
 AND #&E0
 BNE TA4
 LDX CNT\BPLTA4
 CPX #160
 BCC TA4
 LDY #19
 LDA (XX0),Y
 AND #&F8
 BEQ TA4
 LDA INWK+31
 ORA #64
 STA INWK+31
 CPX #163
 BCC TA4
\LDY#19
 LDA (XX0),Y
 LSR A
 JSR OOPS
 DEC INWK+28
 LDA ECMA
 BNE TA9-1
 LDA #8
 JMP NOISE
\frLs

\ ******************************************************************************
\       Name: TACTICS (Part 7 of 7)
\ ******************************************************************************

.TA4

 LDA INWK+7
 CMP #3
 BCS TA5
 LDA INWK+1
 ORA INWK+4
 AND #&FE
 BEQ TA15

.TA5

 JSR DORND
 ORA #128
 CMP INWK+32
 BCS TA15

.TA20

 JSR TAS6
 LDA CNT
 EOR #128

.TA152

 STA CNT

.TA15\^XX15

 LDY #16
 JSR TAS3
 TAX
 EOR #128
 AND #128
 STA INWK+30
 TXA
 ASL A
 CMP RAT2
 BCC TA11
 LDA RAT
 ORA INWK+30
 STA INWK+30

.TA11

 LDA INWK+29
 ASL A
 CMP #32
 BCS TA6
 LDY #22
 JSR TAS3
 TAX
 EOR INWK+30
 AND #128
 EOR #128
 STA INWK+29
 TXA
 ASL A
 CMP RAT2
 BCC TA12
 LDA RAT
 ORA INWK+29
 STA INWK+29

.TA12

.TA6

 LDA CNT
 BMI TA9
 CMP CNT2
 BCC TA9

.PH10E

 LDA #3
 STA INWK+28
 RTS

.TA9

 AND #127
 CMP #18
 BCC TA10
 LDA #FF
 LDX TYPE
 CPX #MSL
 BNE P%+3
 ASL A
 STA INWK+28

.TA10

 RTS

.^TA151

 LDY #10
 JSR TAS3
 CMP #&98
 BCC ttt
 LDX #0
 STX RAT2

.ttt

 JMP TA152
}

\ ******************************************************************************
\       Name: DOCKIT
\ ******************************************************************************

.DOCKIT
{
 LDA #6
 STA RAT2
 LSR A
 STA RAT
 LDA #&1D
 STA CNT2
 LDA SSPR
 BNE P%+5

.GOPLS

 JMP GOPL
 JSR VCSU1 \K3 = ship-spc.stn
 LDA K3+2
 ORA K3+5
 ORA K3+8
 AND #127
 BNE GOPLS
 JSR TA2
 LDA Q
 STA K
 JSR TAS2
 LDY #10
 JSR TAS4
 BMI PH1
 CMP #&23
 BCC PH1\fss.r
 LDY #10
 JSR TAS3
 CMP #&A2\fpl.r
 BCS PH3
 LDA K
\BEQPH10
 CMP #&9D
 BCC PH2
 LDA TYPE
 BMI PH3

.PH2

 JSR TAS6
 JSR TA151

.PH22

 LDX #0
 STX INWK+28
 INX
 STX INWK+27
 RTS

.PH1

 JSR VCSU1
 JSR DCS1
 JSR DCS1
 JSR TAS2
 JSR TAS6
 JMP TA151 \head for sp+

.TN11

 INC INWK+28
 LDA #127
 STA INWK+29
 BNE TN13

.PH3

 LDX #0
 STX RAT2
 STX INWK+30
 LDA TYPE
 BPL PH32
 EOR XX15
 EOR XX15+1
 ASL A
 LDA #2
 ROR A
 STA INWK+29
 LDA XX15
 ASL A
 CMP #12
 BCS PH22
 LDA XX15+1
 ASL A
 LDA #2
 ROR A
 STA INWK+30
 LDA XX15+1
 ASL A
 CMP #12
 BCS PH22

.PH32

 STX INWK+29
 LDA INWK+22
 STA XX15
 LDA INWK+24
 STA XX15+1
 LDA INWK+26
 STA XX15+2
 LDY #16
 JSR TAS4
 ASL A
 CMP #&42
 BCS TN11
 JSR PH22

.TN13

 LDA K3+10
 BNE TNRTS
 ASL NEWB
 SEC
 ROR NEWB

.TNRTS

 RTS \Docked
}

\ ******************************************************************************
\       Name: VCSU1
\ ******************************************************************************

.VCSU1
{
 LDA #((K%+NI%)MOD256)
 STA V
 LDA #((K%+NI%)DIV256)

.^VCSUB

 STA V+1
 LDY #2
 JSR TAS1
 LDY #5
 JSR TAS1
 LDY #8
}

\ ******************************************************************************
\       Name: 
\ ******************************************************************************

.TAS1
{
 LDA (V),Y
 EOR #128
 STA K+3
 DEY
 LDA (V),Y
 STA K+2
 DEY
 LDA (V),Y
 STA K+1
 STY U
 LDX U
 JSR MVT3
 LDY U
 STA K3+2,X
 LDA K+2
 STA K3+1,X
 LDA K+1
 STA K3,X
 RTS
}

\ ******************************************************************************
\       Name: TAS4
\ ******************************************************************************

.TAS4
{
 LDX K%+NI%,Y
 STX Q
 LDA XX15
 JSR MULT12
 LDX K%+NI%+2,Y
 STX Q
 LDA XX15+1
 JSR MAD
 STA S
 STX R
 LDX K%+NI%+4,Y
 STX Q
 LDA XX15+2
 JMP MAD
}

\ ******************************************************************************
\       Name: TAS6
\ ******************************************************************************

.TAS6
{
 LDA XX15
 EOR #128
 STA XX15
 LDA XX15+1
 EOR #128
 STA XX15+1
 LDA XX15+2
 EOR #128
 STA XX15+2
 RTS
}

\ ******************************************************************************
\       Name: DCS1
\ ******************************************************************************

.DCS1
{
 JSR P%+3
 LDA K%+NI%+10
 LDX #0
 JSR TAS7
 LDA K%+NI%+12
 LDX #3
 JSR TAS7
 LDA K%+NI%+14
 LDX #6

.TAS7

 ASL A
 STA R
 LDA #0
 ROR A
 EOR #128
 EOR K3+2,X
 BMI TS71
 LDA R
 ADC K3,X
 STA K3,X
 BCC TS72
 INC K3+1,X

.TS72

 RTS

.TS71

 LDA K3,X
 SEC
 SBC R
 STA K3,X
 LDA K3+1,X
 SBC #0
 STA K3+1,X
 BCS TS72
 LDA K3,X
 EOR #FF
 ADC #1
 STA K3,X
 LDA K3+1,X
 EOR #FF
 ADC #0
 STA K3+1,X
 LDA K3+2,X
 EOR #128
 STA K3+2,X
 JMP TS72
}

\ ******************************************************************************
\       Name: HITCH
\ ******************************************************************************

.HITCH
{
 CLC
 LDA INWK+8
 BNE HI1
 LDA TYPE
 BMI HI1
 LDA INWK+31
 AND #32
 ORA INWK+1
 ORA INWK+4
 BNE HI1
 LDA INWK
 JSR SQUA2
 STA S
 LDA P
 STA R
 LDA INWK+3
 JSR SQUA2
 TAX
 LDA P
 ADC R
 STA R
 TXA
 ADC S
 BCS TN10
 STA S
 LDY #2
 LDA (XX0),Y
 CMP S
 BNE HI1
 DEY
 LDA (XX0),Y
 CMP R

.^HI1

 RTS

.TN10

 CLC
 RTS
}

\ ******************************************************************************
\       Name: FRS1
\ ******************************************************************************

.FRS1
{
 JSR ZINF
 LDA #28
 STA INWK+3
 LSR A
 STA INWK+6
 LDA #128
 STA INWK+5
 LDA MSTG
 ASL A
 ORA #128
 STA INWK+32

.^fq1

 LDA #96
 STA INWK+14
 ORA #128
 STA INWK+22
 LDA DELTA
 ROL A
 STA INWK+27
 TXA
 JMP NWSHP
}

\ ******************************************************************************
\       Name: FRMIS
\ ******************************************************************************

.FRMIS
{
 LDX #MSL
 JSR FRS1
 BCC FR1
 LDX MSTG
 JSR GINF
 LDA FRIN,X
 JSR ANGRY
 LDY #0
 JSR ABORT
 DEC NOMSL
 LDA #48
 JMP NOISE
}

\ ******************************************************************************
\       Name: ANGRY
\ ******************************************************************************

.ANGRY
{
 CMP #SST
 BEQ AN2
 LDY #36
 LDA (INF),Y
 AND #32
 BEQ P%+5
 JSR AN2
 LDY #32
 LDA (INF),Y
 BEQ HI1
 ORA #128
 STA (INF),Y
 LDY #28
 LDA #2
 STA (INF),Y
 ASL A
 LDY #30
 STA (INF),Y
 LDA TYPE
 CMP #CYL
 BCC AN3
 LDY #36
 LDA (INF),Y
 ORA #4
 STA (INF),Y

.AN3

 RTS

.AN2

 LDA K%+NI%+36
 ORA #4
 STA K%+NI%+36
 RTS
}

\ ******************************************************************************
\       Name: FR1
\ ******************************************************************************

.FR1
{
 LDA #201
 JMP MESS
}

\ ******************************************************************************
\       Name: SESCP
\ ******************************************************************************

.SESCP
{
 LDX #ESC
 LDA #&FE
}

\ ******************************************************************************
\       Name: SFS1
\ ******************************************************************************

.SFS1
{
 STA T1
 TXA
 PHA
 LDA XX0
 PHA
 LDA XX0+1
 PHA
 LDA INF
 PHA
 LDA INF+1
 PHA
 LDY #NI%-1

.FRL2

 LDA INWK,Y
 STA XX3,Y
 LDA (INF),Y
 STA INWK,Y
 DEY
 BPL FRL2
 LDA TYPE
 CMP #SST
 BNE rx
 TXA
 PHA
 LDA #32
 STA INWK+27
 LDX #0
 LDA INWK+10
 JSR SFS2
 LDX #3
 LDA INWK+12
 JSR SFS2
 LDX #6
 LDA INWK+14
 JSR SFS2
 PLA
 TAX

.rx

 LDA T1
 STA INWK+32
 LSR INWK+29
 ASL INWK+29
 TXA
 CMP #SPL+1
 BCS NOIL
 CMP #PLT
 BCC NOIL
 PHA
 JSR DORND
 ASL A
 STA INWK+30
 TXA
 AND #15
 STA INWK+27
 LDA #FF
 ROR A
 STA INWK+29
 PLA

.NOIL

 JSR NWSHP
 PLA
 STA INF+1
 PLA
 STA INF
 LDX #NI%-1

.FRL3

 LDA XX3,X
 STA INWK,X
 DEX
 BPL FRL3
 PLA
 STA XX0+1
 PLA
 STA XX0
 PLA
 TAX
 RTS
}

\ ******************************************************************************
\       Name: SFS2
\ ******************************************************************************

.SFS2
{
 ASL A
 STA R
 LDA #0
 ROR A
 JMP MVT1
}

\ ******************************************************************************
\       Name: LL164
\ ******************************************************************************

.LL164
{
 LDA #56
 JSR NOISE
 LDA #DOhfx
 JSR OSWRCH
 LDA #1
 JSR OSWRCH
 LDA #4
 JSR HFS2
 LDA #DOhfx
 JSR OSWRCH
 LDA #0
 JMP OSWRCH \ =  =
}

\ ******************************************************************************
\       Name: LAUN
\ ******************************************************************************

.LAUN
{
 LDA #48
 JSR NOISE
 LDA #8
}

\ ******************************************************************************
\       Name: HFS2
\ ******************************************************************************

.HFS2
{
 STA STP
 JSR TTX66

.^HFS1

 LDX #X
 STX K3
 LDX #Y
 STX K4
 LDX #0
 STX XX4
 STX K3+1
 STX K4+1

.HFL5

 JSR HFL1
 INC XX4
 LDX XX4
 CPX #8
 BNE HFL5
 RTS

.HFL1

 LDA XX4
 AND #7
 CLC
 ADC #8
 STA K

.HFL2

 LDA #1
 STA LSP
 JSR CIRCLE2
 ASL K
 BCS HF8
 LDA K
 CMP #160
 BCC HFL2

.HF8

 RTS
}

\ ******************************************************************************
\       Name: STARS2
\ ******************************************************************************

.STARS2
{
 LDA #0
 CPX #2
 ROR A
 STA RAT
 EOR #128
 STA RAT2
 JSR ST2
 LDY NOSTM

.STL2

 LDA SZ,Y
 STA ZZ
 LSR A
 LSR A
 LSR A
 JSR DV41
 LDA P
 EOR RAT2
 STA S
 LDA SXL,Y
 STA P
 LDA SX,Y
 STA X1
 JSR ADD
 STA S
 STX R
 LDA SY,Y
 STA Y1
 EOR BET2
 LDX BET1
 JSR MULTS-2
 JSR ADD
 STX XX
 STA XX+1
 LDX SYL,Y
 STX R
 LDX Y1
 STX S
 LDX BET1
 EOR BET2+1
 JSR MULTS-2
 JSR ADD
 STX YY
 STA YY+1
 LDX ALP1
 EOR ALP2
 JSR MULTS-2
 STA Q
 LDA XX
 STA R
 LDA XX+1
 STA S
 EOR #128
 JSR MAD
 STA XX+1
 TXA
 STA SXL,Y
 LDA YY
 STA R
 LDA YY+1
 STA S
 JSR MAD
 STA S
 STX R
 LDA #0
 STA P
 LDA ALPHA
 JSR PIX1
 LDA XX+1
 STA SX,Y
 STA X1
 AND #127
 CMP #116
 BCS KILL2
 LDA YY+1
 STA SY,Y
 STA Y1
 AND #127
 CMP #116
 BCS ST5

.STC2

 JSR PIXEL2
 DEY
 BEQ ST2
 JMP STL2

.ST2

 LDA ALPHA
 EOR RAT
 STA ALPHA
 LDA ALP2
 EOR RAT
 STA ALP2
 EOR #128
 STA ALP2+1
 LDA BET2
 EOR RAT
 STA BET2
 EOR #128
 STA BET2+1
 RTS

.KILL2

 JSR DORND
 STA Y1
 STA SY,Y
 LDA #115
 ORA RAT
 STA X1
 STA SX,Y
 BNE STF1

.ST5

 JSR DORND
 STA X1
 STA SX,Y
 LDA #110
 ORA ALP2+1
 STA Y1
 STA SY,Y

.STF1

 JSR DORND
 ORA #8
 STA ZZ
 STA SZ,Y
 BNE STC2
}

\ ******************************************************************************
\       Name: MU5
\ ******************************************************************************

.MU5
{
 STA K
 STA K+1
 STA K+2
 STA K+3
 CLC
 RTS
}

\ ******************************************************************************
\       Name: MULT3
\ ******************************************************************************

.MULT3
{
\K(4) = AP(2)*Q
 STA R
 AND #127
 STA K+2
 LDA Q
 AND #127
 BEQ MU5
 SEC
 SBC #1
 STA T
 LDA P+1
 LSR K+2
 ROR A
 STA K+1
 LDA P
 ROR A
 STA K
 LDA #0
 LDX #24

.MUL2

 BCC P%+4
 ADC T
 ROR A
 ROR K+2
 ROR K+1
 ROR K
 DEX
 BNE MUL2
 STA T
 LDA R
 EOR Q
 AND #128
 ORA T
 STA K+3
 RTS
}

\ ******************************************************************************
\       Name: MLS2
\ ******************************************************************************

.MLS2
{
 LDX XX
 STX R
 LDX XX+1
 STX S
}

\ ******************************************************************************
\       Name: MLS1
\ ******************************************************************************

.MLS1
{
 LDX ALP1
 STX P

.^MULTS

\AP = A*P(P+<32)
 TAX
 AND #128
 STA T
 TXA
 AND #127
 BEQ MU6
 TAX
 DEX
 STX T1
 LDA #0
 LSR P
 BCC P%+4
 ADC T1
 ROR A
 ROR P
 BCC P%+4
 ADC T1
 ROR A
 ROR P
 BCC P%+4
 ADC T1
 ROR A
 ROR P
 BCC P%+4
 ADC T1
 ROR A
 ROR P
 BCC P%+4
 ADC T1
 ROR A
 ROR P
 LSR A
 ROR P
 LSR A
 ROR P
 LSR A
 ROR P
 ORA T
 RTS
}

\ ******************************************************************************
\       Name: MU6
\ ******************************************************************************

.MU6
{
 STA P+1
\MU10
 STA P
 RTS
}

\ ******************************************************************************
\       Name: SQUA
\ ******************************************************************************

.SQUA
{
\AP = A*ApresQ
 AND #127
}

\ ******************************************************************************
\       Name: SQUA2
\ ******************************************************************************

.SQUA2
{
 STA P
 TAX
 BNE MU11
}

\ ******************************************************************************
\       Name: MU1
\ ******************************************************************************

.MU1
{
 CLC
 STX P
 TXA
 RTS
}

\ ******************************************************************************
\       Name: MLU1
\ ******************************************************************************

.MLU1
{
 LDA SY,Y
 STA Y1
}

\ ******************************************************************************
\       Name: MLU2
\ ******************************************************************************

.MLU2
{
 AND #127
 STA P
}

\ ******************************************************************************
\       Name: MULTU
\ ******************************************************************************

.MULTU
{
\AP = P*Qunsg
 LDX Q
 BEQ MU1
}

\ ******************************************************************************
\       Name: MU11
\ ******************************************************************************

.MU11
{
 DEX
 STX T
 LDA #0
\LDX#8
 TAX \just in case
 LSR P
 BCC P%+4
 ADC T
 ROR A
 ROR P\7
 BCC P%+4
 ADC T
 ROR A
 ROR P\6
 BCC P%+4
 ADC T
 ROR A
 ROR P\5
 BCC P%+4
 ADC T
 ROR A
 ROR P\4
 BCC P%+4
 ADC T
 ROR A
 ROR P\3
 BCC P%+4
 ADC T
 ROR A
 ROR P\2
 BCC P%+4
 ADC T
 ROR A
 ROR P\1
 BCC P%+4
 ADC T
 ROR A
 ROR P
 RTS
}

\ ******************************************************************************
\       Name: FMLTU2
\ ******************************************************************************

.FMLTU2
{
 AND #31
 TAX
 LDA SNE,X
 STA Q
 LDA K
}

\ ******************************************************************************
\       Name: FMLTU
\ ******************************************************************************

.FMLTU
{
\A = A*Q/256unsg
 STX P
 STA widget
 TAX
 BEQ MU3
 LDA logL,X
 LDX Q
 BEQ MU3again
 CLC
 ADC logL,X
 BMI oddlog
 LDA log,X
 LDX widget
 ADC log,X
 BCC MU3again
 TAX
 LDA antilog,X
 LDX P
 RTS

.oddlog

 LDA log,X
 LDX widget
 ADC log,X
 BCC MU3again
 TAX
 LDA antilogODD,X

.MU3

 LDX P
 RTS

.MU3again

 LDA #0
 LDX P
 RTS
}

\ ******************************************************************************
\       Name: MLTU2
\ ******************************************************************************

{
 STX Q

.^MLTU2

\AP(2) = AP*Qunsg(EORP)
 EOR #FF
 LSR A
 STA P+1
 LDA #0
 LDX #16
 ROR P

.MUL7

 BCS MU21
 ADC Q
 ROR A
 ROR P+1
 ROR P
 DEX
 BNE MUL7
 RTS

.MU21

 LSR A
 ROR P+1
 ROR P
 DEX
 BNE MUL7
 RTS
}

\ ******************************************************************************
\       Name: MUT3
\ ******************************************************************************

.MUT3
{
 LDX ALP1
 STX P
}

\ ******************************************************************************
\       Name: MUT2
\ ******************************************************************************

.MUT2
{
 LDX XX+1
 STX S
}

\ ******************************************************************************
\       Name: MUT1
\ ******************************************************************************

.MUT1
{
 LDX XX
 STX R
}

\ ******************************************************************************
\       Name: MULT1
\ ******************************************************************************

.MULT1
{
\AP = Q*A
 TAX
 AND #127
 LSR A
 STA P
 TXA
 EOR Q
 AND #128
 STA T
 LDA Q
 AND #127
 BEQ mu10
 TAX
 DEX
 STX T1
 LDA #0
\LDX#7
TAX \just in case
\MUL4 BCCP%+4\ADCT1\RORA\RORP\DEX\BNEMUL4\LSRA\RORP\ORAT\RTS\.mu10 STAP\RTS
 BCC P%+4
 ADC T1
 ROR A
 ROR P\6
 BCC P%+4
 ADC T1
 ROR A
 ROR P\5
 BCC P%+4
 ADC T1
 ROR A
 ROR P\4
 BCC P%+4
 ADC T1
 ROR A
 ROR P\3
 BCC P%+4
 ADC T1
 ROR A
 ROR P\2
 BCC P%+4
 ADC T1
 ROR A
 ROR P\1
 BCC P%+4
 ADC T1
 ROR A
 ROR P
 LSR A
 ROR P
 ORA T
 RTS

.mu10

 STA P
 RTS
}

\ ******************************************************************************
\       Name: MULT12
\ ******************************************************************************

.MULT12
{
 JSR MULT1
 STA S
 LDA P
 STA R
 RTS
}

\ ******************************************************************************
\       Name: TAS3
\ ******************************************************************************
.TAS3
{
 LDX INWK,Y
 STX Q
 LDA XX15
 JSR MULT12
 LDX INWK+2,Y
 STX Q
 LDA XX15+1
 JSR MAD
 STA S
 STX R
 LDX INWK+4,Y
 STX Q
 LDA XX15+2
}

\ ******************************************************************************
\       Name: MAD
\ ******************************************************************************

.MAD
{
 JSR MULT1
}

\ ******************************************************************************
\       Name: ADD
\ ******************************************************************************

.ADD
{
\AX = AP+SR
 STA T1
 AND #128
 STA T
 EOR S
 BMI MU8
 LDA R
 CLC
 ADC P
 TAX
 LDA S
 ADC T1
 ORA T
 RTS

.MU8

 LDA S
 AND #127
 STA U
 LDA P
 SEC
 SBC R
 TAX
 LDA T1
 AND #127
 SBC U
 BCS MU9
 STA U
 TXA
 EOR #FF
 ADC #1
 TAX
 LDA #0
 SBC U
 ORA #128

.MU9

 EOR T
 RTS
}

\ ******************************************************************************
\       Name: TIS1
\ ******************************************************************************

\DVIDT(A = AP/Q)inF

.TIS1
{
 STX Q
 EOR #128
 JSR MAD

.DVID96\A = A/96

 TAX
 AND #128
 STA T
 TXA
 AND #127
 LDX #254
 STX T1

.DVL3

 ASL A
 CMP #96
 BCC DV4
 SBC #96

.DV4

 ROL T1
 BCS DVL3
 LDA T1
 ORA T
 RTS
}

\ ******************************************************************************
\       Name: DV42
\ ******************************************************************************

.DV42
{
 LDA SZ,Y
}

\ ******************************************************************************
\       Name: DV41
\ ******************************************************************************

.DV41
{
 STA Q
 LDA DELTA
}

\ ******************************************************************************
\       Name: DVID4
\ ******************************************************************************

.DVID4\P-R = A/Qunsg
{
\LDX#8
 ASL A
 STA P
 LDA #0
\.DVL4
 ROL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL P
\7
 ROL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL P
\6
 ROL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL P
\5
 ROL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL P
\4
 ROL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL P
\3
 ROL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL P
\2
 ROL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL P
\1
 ROL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL P
 LDX #0
 JMP LL28+4
}

\ ******************************************************************************
\       Name: DVID3B2
\ ******************************************************************************

.DVID3B2
{
 STA P+2
 LDA INWK+6
 ORA #1
 STA Q
 LDA INWK+7
 STA R
 LDA INWK+8
 STA S

.DVID3B\K+1(3)-K = P(3)/SRQaprx

 LDA P
 ORA #1
 STA P
 LDA P+2
 EOR S
 AND #128
 STA T
 LDY #0
 LDA P+2
 AND #127

.DVL9

 CMP #&40
 BCS DV14
 ASL P
 ROL P+1
 ROL A
 INY
 BNE DVL9

.DV14

 STA P+2
 LDA S
 AND #127
\BMIDV9

.DVL6

 DEY
 ASL Q
 ROL R
 ROL A
 BPL DVL6

.DV9

 STA Q
 LDA #254
 STA R
 LDA P+2
 JSR LL31
 LDA #0
 STA K+1
 STA K+2
 STA K+3
 TYA
 BPL DV12
 LDA R

.DVL8

 ASL A
 ROL K+1
 ROL K+2
 ROL K+3
 INY
 BNE DVL8
 STA K
 LDA K+3
 ORA T
 STA K+3
 RTS

.DV13

 LDA R
 STA K
 LDA T
 STA K+3
 RTS

.DV12

 BEQ DV13
 LDA R

.DVL10

 LSR A
 DEY
 BNE DVL10
 STA K
 LDA T
 STA K+3
 RTS
}

\ ******************************************************************************
\       Name: cntr
\ ******************************************************************************

.cntr
{
 LDA auto
 BNE cnt2
 LDA DAMP
 BNE RE1

.cnt2

 TXA
 BPL BUMP
 DEX
 BMI RE1

.BUMP

 INX
 BNE RE1

.REDU

 DEX
 BEQ BUMP

.RE1

 RTS
}

\ ******************************************************************************
\       Name: BUMP2
\ ******************************************************************************

.BUMP2
{
 STA T
 TXA
 CLC
 ADC T
 TAX
 BCC RE2
 LDX #FF

.^RE2

 BPL djd1
 LDA T
 RTS
}

\ ******************************************************************************
\       Name: REDU2
\ ******************************************************************************

.REDU2
{
 STA T
 TXA
 SEC
 SBC T
 TAX
 BCS RE3
 LDX #1

.RE3

 BPL RE2+2

.^djd1

 LDA DJD
 BNE RE2+2
 LDX #128
 BMI RE2+2
}

\ ******************************************************************************
\       Name: ARCTAN
\ ******************************************************************************

.ARCTAN
{
\A = tan-1(P/Q)
 LDA P
 EOR Q
\AND#128
 STA T1
 LDA Q
 BEQ AR2
 ASL A
 STA Q
 LDA P
 ASL A
 CMP Q
 BCS AR1
 JSR ARS1
 SEC

.AR4

 LDX T1
 BMI AR3
 RTS

.AR1

 LDX Q
 STA Q
 STX P
 TXA
 JSR ARS1
 STA T
 LDA #64
 SBC T
 BCS AR4

.AR2

 LDA #63
 RTS

.AR3

 STA T
 LDA #128
\SEC
 SBC T
 RTS

.ARS1

 JSR LL28
 LDA R
 LSR A
 LSR A
 LSR A
 TAX
 LDA ACT,X
 RTS
}

\ ******************************************************************************
\       Name: LASLI
\ ******************************************************************************

.LASLI
{
 JSR DORND
 AND #7
 ADC #Y-4
 STA LASY
 JSR DORND
 AND #7
 ADC #X-4
 STA LASX
 LDA GNTMP
 ADC #8
 STA GNTMP
 JSR DENGY

.^LASLI2

 LDA QQ11
 BNE LASLI-1
 LDA #RED
 JSR DOCOL
 LDA #32
 LDY #224
 JSR las
 LDA #48
 LDY #208

.las

 STA X2
 LDA LASX
 STA X1
 LDA LASY
 STA Y1
 LDA #2*Y-1
 STA Y2
 JSR LL30
 LDA LASX
 STA X1
 LDA LASY
 STA Y1
 STY X2
 LDA #2*Y-1
 STA Y2
 JMP LL30
}

\ ******************************************************************************
\       Name: PDESC
\ ******************************************************************************

.PDESC
{
\pink volcanoes string
 LDA QQ8
 ORA QQ8+1
 BNE PD1
 LDA QQ12
 BPL PD1
 LDY #NRU%

.PDL1

 LDA RUPLA-1,Y
 CMP ZZ
 BNE PD2
 LDA RUGAL-1,Y
 AND #127
 CMP GCNT
 BNE PD2
 LDA RUGAL-1,Y
 BMI PD3
 LDA TP
 LSR A
 BCC PD1
 JSR MT14
 LDA #1
 EQUB &2C

.PD3

 LDA #176
 JSR DETOK2
 TYA
 JSR DETOK3
 LDA #177
 BNE PD4

.PD2

 DEY
 BNE PDL1

.PD1
{
 LDX #3

.PDL1

 LDA QQ15+2,X
 STA RAND,X
 DEX
 BPL PDL1 \set DORND seed
 LDA #5
}

.PD4

 JMP DETOK
}

\ ******************************************************************************
\       Name: BRIEF2
\ ******************************************************************************

.BRIEF2
{
 LDA TP
 ORA #4
 STA TP
 LDA #11
}

\ ******************************************************************************
\       Name: BRP
\ ******************************************************************************

.BRP
{
 JSR DETOK
 JMP BAY
}

\ ******************************************************************************
\       Name: BRIEF3
\ ******************************************************************************

.BRIEF3
{
 LDA TP
 AND #&F0
 ORA #10
 STA TP
 LDA #222
 BNE BRP
}

\ ******************************************************************************
\       Name: DEBRIEF2
\ ******************************************************************************

.DEBRIEF2
{
 LDA TP
 ORA #4
 STA TP
 LDA #2
 STA ENGY
 INC TALLY+1
 LDA #223
 BNE BRP
}

\ ******************************************************************************
\       Name: DEBRIEF
\ ******************************************************************************

.DEBRIEF
{
 LSR TP
 ASL TP
 INC TALLY+1
 LDX #(50000 MOD256)
 LDY #(50000 DIV256)
 JSR MCASH
 LDA #15

.^BRPS

 BNE BRP
}

\ ******************************************************************************
\       Name: BRIEF
\ ******************************************************************************

.BRIEF
{
 LSR TP
 SEC
 ROL TP
 JSR BRIS
 JSR ZINF
 LDA #CON
 STA TYPE
 JSR NWSHP
 LDA #1
 JSR DOXC
 STA INWK+7
 JSR TT66
 LDA #64
 STA MCNT

.BRL1

 LDX #127
 STX INWK+29
 STX INWK+30
 JSR LL9
 JSR MVEIT
 DEC MCNT
 BNE BRL1

.BRL2

 LSR INWK
 INC INWK+6
 BEQ BR2
 INC INWK+6
 BEQ BR2
 LDX INWK+3
 INX
 CPX #112
 BCC P%+4
 LDX #112
 STX INWK+3
 JSR LL9
 JSR MVEIT
 JMP BRL2

.BR2

 INC INWK+7
 LDA #10
 BNE BRPS

.^BRIS

 LDA #216
 JSR DETOK
 LDY #100
 JMP DELAY
}

\ ******************************************************************************
\       Name: PAUSE
\ ******************************************************************************

.PAUSE
{
 JSR PAS1
 BNE PAUSE

.PAL1

 JSR PAS1
 BEQ PAL1
 LDA #0
 STA INWK+31
 LDA #1
 JSR TT66
 JSR LL9
}

\ ******************************************************************************
\       Name: MT23
\ ******************************************************************************

.MT23
{
 LDA #10
 EQUB &2C
}

\ ******************************************************************************
\       Name: MT29
\ ******************************************************************************

.MT29
{
 LDA #6
 JSR DOYC
 JSR WHITETEXT
 JMP MT13
}

\ ******************************************************************************
\       Name: PAS1
\ ******************************************************************************

.PAS1
{
 LDA #112
 STA INWK+3
 LDA #0
 STA INWK
 STA INWK+6
 LDA #2
 STA INWK+7
 JSR LL9
 JSR MVEIT
 JMP RDKEY
}

\ ******************************************************************************
\       Name: PAUSE2
\ ******************************************************************************

.PAUSE2
{
 JSR RDKEY
 BNE PAUSE2
 JSR RDKEY
 BEQ PAUSE2
 RTS
}

\ ******************************************************************************
\
\ Save output/ELTC.bin
\
\ ******************************************************************************

PRINT "ELITE C"
PRINT "Assembled at ", ~CODE_C%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - CODE_C%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_C%

PRINT "S.ELTC ", ~CODE_C%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_C%
SAVE "output/ELTC.bin", CODE_C%, P%, LOAD%

\ ******************************************************************************
\
\ ELITE D FILE
\
\ Produces the binary file ELTD.bin that gets loaded by elite-bcfs.asm.
\
\ ******************************************************************************

CODE_D% = P%
LOAD_D% = LOAD% + P% - CODE%

\ ******************************************************************************
\       Name: tnpr1
\ ******************************************************************************

.tnpr1
{
 STA QQ29
 LDA #1
}

\ ******************************************************************************
\       Name: tnpr
\ ******************************************************************************

.tnpr
{
 PHA
 LDX #12
 CPX QQ29
 BCC kg

.Tml

 ADC QQ20,X
 DEX
 BPL Tml
 CMP CRGO
 PLA
 RTS

.kg

 LDY QQ29
 ADC QQ20,Y
 CMP #200
 PLA
 RTS
 NOP
}

\ ******************************************************************************
\       Name: DOXC
\ ******************************************************************************

.DOXC
{
 PHA
 BIT printflag
 BPL DOX1
 CMP XC
 BCC DOXLF
 BEQ DOX1
 PHY
 PHX \++
 SBC XC
 TAX

.DOXL1

 LDA #32
 JSR TT26
 DEX
 BNE DOXL1
 PLX
 PLY \++

.DOX1

 LDA #SETXC
 JSR OSWRCH
 PLA
 STA XC
 JMP OSWRCH

.DOXLF

 LDA #13
 JSR TT26
 JMP DOX1
}

\ ******************************************************************************
\       Name: DOYC
\ ******************************************************************************

.DOYC
{
 STA YC
 PHA
 LDA #SETYC

.^label

 JSR OSWRCH
 PLA
 JMP OSWRCH
}

\ ******************************************************************************
\       Name: INCYC
\ ******************************************************************************

.INCYC
{
 PHA
 LDA YC
 INA \++
 JSR DOYC
 PLA
 RTS
}

\ ******************************************************************************
\       Name: DOCOL
\ ******************************************************************************

.DOCOL
{
 PHA
 LDA #SETCOL
 BNE label
}

\ ******************************************************************************
\       Name: DOVDU19
\ ******************************************************************************

.DOVDU19
{
 PHA
 LDA #SETVDU19
 BNE label
}

\ ******************************************************************************
\       Name: TRADEMODE
\ ******************************************************************************

.TRADEMODE
{
 PHA
 JSR CTRL
 STA printflag
 PLA
 JSR TT66
 JSR FLKB
 LDA #48
 JSR DOVDU19
 LDA #CYAN\WH
 JMP DOCOL
}

\ ******************************************************************************
\       Name: TT20
\ ******************************************************************************

.TT20
{
 JSR P%+3
 JSR P%+3
}

\ ******************************************************************************
\       Name: TT54
\ ******************************************************************************

.TT54
{
 LDA QQ15
 CLC
 ADC QQ15+2
 TAX
 LDA QQ15+1
 ADC QQ15+3
 TAY
 LDA QQ15+2
 STA QQ15
 LDA QQ15+3
 STA QQ15+1
 LDA QQ15+5
 STA QQ15+3
 LDA QQ15+4
 STA QQ15+2
 CLC
 TXA
 ADC QQ15+2
 STA QQ15+4
 TYA
 ADC QQ15+3
 STA QQ15+5
 RTS
}

\ ******************************************************************************
\       Name: TT146
\ ******************************************************************************

.TT146
{
 LDA QQ8
 ORA QQ8+1
 BNE TT63
 JMP INCYC
\RTS

.TT63

 LDA #191
 JSR TT68
 LDX QQ8
 LDY QQ8+1
 SEC
 JSR pr5
 LDA #195
}

\ ******************************************************************************
\       Name: TT60
\ ******************************************************************************

.TT60
{
 JSR TT27
}

\ ******************************************************************************
\       Name: TTX69
\ ******************************************************************************

.TTX69
{
 JSR INCYC
}

\ ******************************************************************************
\       Name: TT69
\ ******************************************************************************

.TT69
{
 LDA #128
 STA QQ17
}

\ ******************************************************************************
\       Name: TT67
\ ******************************************************************************

.TT67
{
 INC YC
 LDA #12
 JMP TT27
}

\ ******************************************************************************
\       Name: TT70
\ ******************************************************************************

.TT70
{
 LDA #173
 JSR TT27
 JMP TT72
}

\ ******************************************************************************
\       Name: spc
\ ******************************************************************************

.spc
{
 JSR TT27
 JMP TT162
}

\ ******************************************************************************
\       Name: TT25
\ ******************************************************************************

.TT25
{
 LDA #1
 JSR TRADEMODE
 LDA #9
 JSR DOXC
 LDA #163
 JSR NLIN3
 JSR TTX69
 JSR TT146
 LDA #194
 JSR TT68
 LDA QQ3
 CLC
 ADC #1
 LSR A
 CMP #2
 BEQ TT70
 LDA QQ3
 BCC TT71
 SBC #5
 CLC

.TT71

 ADC #170
 JSR TT27

.^TT72

 LDA QQ3
 LSR A
 LSR A
 CLC
 ADC #168
 JSR TT60
 LDA #162
 JSR TT68
 LDA QQ4
 CLC
 ADC #177
 JSR TT60
 LDA #196
 JSR TT68
 LDX QQ5
 INX
 CLC
 JSR pr2
 JSR TTX69
 LDA #192
 JSR TT68
 SEC
 LDX QQ6
 JSR pr2
 LDA #198
 JSR TT60
 LDA #&28
 JSR TT27
 LDA QQ15+4
 BMI TT75
 LDA #188
 JSR TT27
 JMP TT76

.TT75

 LDA QQ15+5
 LSR A
 LSR A
 PHA
 AND #7
 CMP #3
 BCS TT205
 ADC #227
 JSR spc

.TT205

 PLA
 LSR A
 LSR A
 LSR A
 CMP #6
 BCS TT206
 ADC #230
 JSR spc

.TT206

 LDA QQ15+3
 EOR QQ15+1
 AND #7
 STA QQ19
 CMP #6
 BCS TT207
 ADC #236
 JSR spc

.TT207

 LDA QQ15+5
 AND #3
 CLC
 ADC QQ19
 AND #7
 ADC #242
 JSR TT27

.TT76

 LDA #&53
 JSR TT27
 LDA #&29
 JSR TT60
 LDA #193
 JSR TT68
 LDX QQ7
 LDY QQ7+1
 JSR pr6
 JSR TT162
 LDA #0
 STA QQ17
 LDA #&4D
 JSR TT27
 LDA #226
 JSR TT60
 LDA #250
 JSR TT68
 LDA QQ15+5
 LDX QQ15+3
 AND #15
 CLC
 ADC #11
 TAY
 JSR pr5
 JSR TT162
 LDA #&6B
 JSR TT26
 LDA #&6D
 JSR TT26
 JSR TTX69
 JMP PDESC
 LDX ZZ
\LDY#PTEXT MOD256\STYINWK\LDY#(PTEXT DIV256)-1\STYINWK+1\LDY#FF\.PDT1 INY\BNEP%+4\INCINWK+1\LDA(INWK),Y\BNEPDT1\DEX\BNEPDT1\.PDT2 INY\BNEP%+4\INCINWK+1\STYINWK+2\LDA(INWK),Y\BEQTT24-1\JSRTT27\LDYINWK+2\JMPPDT2
 RTS
}

\ ******************************************************************************
\       Name: TT24
\ ******************************************************************************

.TT24
{
 LDA QQ15+1
 AND #7
 STA QQ3
 LDA QQ15+2
 LSR A
 LSR A
 LSR A
 AND #7
 STA QQ4
 LSR A
 BNE TT77
 LDA QQ3
 ORA #2
 STA QQ3

.TT77

 LDA QQ3
 EOR #7
 CLC
 STA QQ5
 LDA QQ15+3
 AND #3
 ADC QQ5
 STA QQ5
 LDA QQ4
 LSR A
 ADC QQ5
 STA QQ5
 ASL A
 ASL A
 ADC QQ3
 ADC QQ4
 ADC #1
 STA QQ6
 LDA QQ3
 EOR #7
 ADC #3
 STA P
 LDA QQ4
 ADC #4
 STA Q
 JSR MULTU
 LDA QQ6
 STA Q
 JSR MULTU
 ASL P
 ROL A
 ASL P
 ROL A
 ASL P
 ROL A
 STA QQ7+1
 LDA P
 STA QQ7
 RTS
}

\ ******************************************************************************
\       Name: TT22
\ ******************************************************************************

.TT22
{
 LDA #64
 JSR TT66
 LDA #CYAN\WHITE
 JSR DOCOL
 LDA #16
 JSR DOVDU19
 LDA #7
 JSR DOXC
 JSR TT81
 LDA #199
 JSR TT27
 JSR NLIN
 LDA #152
 JSR NLIN2
 JSR TT14
 LDX #0

.TT83

 STX XSAV
 LDX QQ15+3
 LDY QQ15+4
 TYA
 ORA #&50
 STA ZZ
 LDA QQ15+1
 LSR A
 CLC
 ADC #24
 STA XX15+1
 JSR PIXEL
 JSR TT20
 LDX XSAV
 INX
 BNE TT83
 JSR PBFL
 LDA QQ9
 STA QQ19
 LDA QQ10
 LSR A
 STA QQ19+1
 LDA #4
 STA QQ19+2
}

\ ******************************************************************************
\       Name: TT15
\ ******************************************************************************

.TT15
{
 LDA #CYAN
 JSR DOCOL \< = Ian = >

.^TT15b

 LDA #24
 LDX QQ11
 BPL TT178
 LDA #0

.TT178

 STA QQ19+5
 LDA QQ19
 SEC
 SBC QQ19+2
 BCS TT84
 LDA #0

.TT84

 STA XX15
 LDA QQ19
 CLC
 ADC QQ19+2
 BCC TT85
 LDA #255

.TT85

 STA XX15+2
 LDA QQ19+1
 CLC
 ADC QQ19+5
 STA XX15+1
 STA XX15+3
 JSR LL30
 LDA QQ19+1
 SEC
 SBC QQ19+2
 BCS TT86
 LDA #0

.TT86

 CLC
 ADC QQ19+5
 STA XX15+1
 LDA QQ19+1
 CLC
 ADC QQ19+2
 ADC QQ19+5
 CMP #152
 BCC TT87 \< = Ian = >
 LDX QQ11
 BMI TT87
 LDA #151

.TT87

 STA XX15+3
 LDA QQ19
 STA XX15
 STA XX15+2
 JMP LL30
}

\ ******************************************************************************
\       Name: TT14
\ ******************************************************************************

{
.TT126

 LDA #104
 STA QQ19
 LDA #90
 STA QQ19+1
 LDA #16
 STA QQ19+2
 JSR TT15
 LDA QQ14
 STA K
 JMP TT128

.^TT14

 LDA #CYAN\WH
 JSR DOCOL
 LDA QQ11
 BMI TT126
 LDA QQ14
 LSR A
 LSR A
 STA K
 LDA QQ0
 STA QQ19
 LDA QQ1
 LSR A
 STA QQ19+1
 LDA #7
 STA QQ19+2
 JSR TT15
 LDA QQ19+1
 CLC
 ADC #24
 STA QQ19+1
}

\ ******************************************************************************
\       Name: TT128
\ ******************************************************************************

.TT128
{
 LDA QQ19
 STA K3
 LDA QQ19+1
 STA K4
 LDX #0
 STX K4+1
 STX K3+1
\STXLSX
 INX
 STX LSP
 LDX #2
 STX STP
 LDA #RED
 JSR DOCOL
 JMP CIRCLE2
}

\ ******************************************************************************
\       Name: TT219
\ ******************************************************************************

.TT219
{
 LDA #2
 JSR TRADEMODE
 JSR TT163
 LDA #128
 STA QQ17
 LDA #0
 STA QQ29

.TT220

 JSR TT151
 LDA QQ25
 BNE TT224
 JMP TT222

.TQ4

 LDY #176

.Tc

 JSR TT162
 TYA
 JSR prq

.TTX224

 JSR dn2

.TT224

 JSR CLYNS
 LDA #204
 JSR TT27
 LDA QQ29
 CLC
 ADC #208
 JSR TT27
 LDA #&2F
 JSR TT27
 JSR TT152
 LDA #&3F
 JSR TT27
 JSR TT67
 LDX #0
 STX R
 LDX #12
 STX T1

.TT223

 JSR gnum
 BCS TQ4
 STA P
 JSR tnpr
 LDY #206
 BCS Tc
 LDA QQ24
 STA Q
 JSR GCASH
 JSR LCASH
 LDY #197
 BCC Tc
 LDY QQ29
 LDA R
 PHA
 CLC
 ADC QQ20,Y
 STA QQ20,Y
 LDA AVL,Y
 SEC
 SBC R
 STA AVL,Y
 PLA
 BEQ TT222
 JSR dn

.TT222

 LDA QQ29
 CLC
 ADC #5
 JSR DOYC
 LDA #0
 JSR DOXC
 INC QQ29
 LDA QQ29
 CMP #17
 BCS BAY2
 JMP TT220

.^BAY2

 LDA #f9
 JMP FRCE
}

\ ******************************************************************************
\       Name: gnum
\ ******************************************************************************

.gnum
{
 LDA #MAGENTA
 JSR DOCOL
 LDX #0
 STX R
 LDX #12
 STX T1

.TT223

 JSR TT217
 LDX R
 BNE NWDAV2
 CMP #'y'
 BEQ NWDAV1
 CMP #'n'
 BEQ NWDAV3

.NWDAV2

 STA Q
 SEC
 SBC #&30
 BCC OUT
 CMP #10
 BCS BAY2
 STA S
 LDA R
 CMP #26
 BCS OUT
 ASL A
 STA T
 ASL A
 ASL A
 ADC T
 ADC S
 STA R
 CMP QQ25
 BEQ TT226
 BCS OUT

.TT226

 LDA Q
 JSR TT26
 DEC T1
 BNE TT223

.OUT

 PHP
 LDA #CYAN
 JSR DOCOL
 PLP
 LDA R
 RTS

.NWDAV1

 JSR TT26
 LDA QQ25
 STA R
 BRA OUT\++

.NWDAV3

 JSR TT26
 LDA #0
 STA R
 BRA OUT\++

.^NWDAV4

 JSR TT67
 LDA #176
 JSR prq
 JSR dn2
 LDY QQ29
 JMP NWDAVxx
}

\ ******************************************************************************
\       Name: TT208
\ ******************************************************************************

.TT208
{
 LDA #4
 JSR TRADEMODE
 LDA #10
 JSR DOXC
 LDA #205
 JSR TT27
 LDA #206
 JSR NLIN3
 JSR TT67
}

\ ******************************************************************************
\       Name: TT210
\ ******************************************************************************

.TT210
{
 LDY #0

.TT211

 STY QQ29

.^NWDAVxx

 LDX QQ20,Y
 BEQ TT212
 TYA
 ASL A
 ASL A
 TAY
 LDA QQ23+1,Y
 STA QQ19+1
 TXA
 PHA
 JSR TT69
 CLC
 LDA QQ29
 ADC #208
 JSR TT27
 LDA #14
 JSR DOXC
 PLA
 TAX
 STA QQ25
 CLC
 JSR pr2
 JSR TT152
 LDA QQ11
 CMP #4
 BNE TT212
\JSRTT162
 LDA #205
 JSR TT27
 LDA #206
 JSR DETOK
 JSR gnum
 BEQ TT212
 BCS NWDAV4
 LDA QQ29
 LDX #255
 STX QQ17
 JSR TT151
 LDY QQ29
 LDA QQ20,Y
 SEC
 SBC R
 STA QQ20,Y
 LDA R
 STA P
 LDA QQ24
 STA Q
 JSR GCASH
 JSR MCASH
 LDA #0
 STA QQ17

.TT212

 LDY QQ29
 INY
 CPY #17
 BCC TT211
 LDA QQ11
 CMP #4
 BNE P%+8
 JSR dn2
 JMP BAY2
 RTS
}

\ ******************************************************************************
\       Name: TT213
\ ******************************************************************************

.TT213
{
 LDA #8
 JSR TRADEMODE
 LDA #11
 JSR DOXC
 LDA #164
 JSR TT60
 JSR NLIN4
 JSR fwl
 LDA CRGO
 CMP #26
 BCC P%+7
 LDA #&6B
 JSR TT27
 JMP TT210
}

\ ******************************************************************************
\       Name: TT214 Unused?
\ ******************************************************************************

{
\.TT214\PHA\JSRTT162\PLA

.TT221

 JSR TT27
 LDA #206
 JSR DETOK
 JSR TT217
 ORA #32
 CMP #&79
 BEQ TT218
 LDA #&6E
 JMP TT26

.TT218

 JSR TT26
 SEC
 RTS
}

\ ******************************************************************************
\       Name: TT16
\ ******************************************************************************

.TT16
{
 TXA
 PHA
 DEY
 TYA
 EOR #255
 PHA
 JSR WSCAN
 JSR TT103
 PLA
 STA QQ19+3
 LDA QQ10
 JSR TT123
 LDA QQ19+4
 STA QQ10
 STA QQ19+1
 PLA
 STA QQ19+3
 LDA QQ9
 JSR TT123
 LDA QQ19+4
 STA QQ9
 STA QQ19
}

\ ******************************************************************************
\       Name: TT103
\ ******************************************************************************

.TT103
{
 LDA QQ11
 BMI TT105
 LDA QQ9
 STA QQ19
 LDA QQ10
 LSR A
 STA QQ19+1
 LDA #4
 STA QQ19+2
 JMP TT15
}

.TT123
{
 STA QQ19+4
 CLC
 ADC QQ19+3
 LDX QQ19+3
 BMI TT124
 BCC TT125
 RTS

.TT124

 BCC TT180

.TT125

 STA QQ19+4

.^TT180

 RTS
}

\ ******************************************************************************
\       Name: TT105
\ ******************************************************************************

.TT105
{
 LDA QQ9
 SEC
 SBC QQ0
 CMP #38
 BCC TT179
 CMP #230
 BCC TT180

.TT179

 ASL A
 ASL A
 CLC
 ADC #104
 STA QQ19
 LDA QQ10
 SEC
 SBC QQ1
 CMP #38
 BCC P%+6
 CMP #220
 BCC TT180
 ASL A
 CLC
 ADC #90
 STA QQ19+1
 LDA #8
 STA QQ19+2
 JMP TT15
}

\ ******************************************************************************
\       Name: TT23
\ ******************************************************************************

.TT23
{
 LDA #128
 JSR TT66
 LDA #16
 JSR DOVDU19
 LDA #CYAN\WH
 JSR DOCOL
 LDA #7
 JSR DOXC
 LDA #190
 JSR NLIN3
 JSR TT14
 JSR TT103
 JSR TT81
 LDA #CYAN
 JSR DOCOL
 LDA #0
 STA XX20
 LDX #24

.EE3

 STA INWK,X
 DEX
 BPL EE3

.TT182

 LDA QQ15+3
 SEC
 SBC QQ0
 BCS TT184
 EOR #FF
 ADC #1

.TT184

 CMP #20
 BCS TT187
 LDA QQ15+1
 SEC
 SBC QQ1
 BCS TT186
 EOR #FF
 ADC #1

.TT186

 CMP #38
 BCS TT187
 LDA QQ15+3
 SEC
 SBC QQ0
 ASL A
 ASL A
 ADC #104
 STA XX12
 LSR A
 LSR A
 LSR A
 INA \+++
 JSR DOXC
 LDA QQ15+1
 SEC
 SBC QQ1
 ASL A
 ADC #90
 STA K4
 LSR A
 LSR A
 LSR A
 TAY
 LDX INWK,Y
 BEQ EE4
 INY
 LDX INWK,Y
 BEQ EE4
 DEY
 DEY
 LDX INWK,Y
 BNE ee1

.EE4

 TYA
 JSR DOYC
 CPY #3
 BCC TT187
 LDA #FF
 STA INWK,Y
 LDA #128
 STA QQ17
 JSR cpl

.ee1

\drawbigstars
 LDA #0
 STA K3+1
 STA K4+1
 STA K+1
 LDA XX12
 STA K3
 LDA QQ15+5
 AND #1
 ADC #2
 STA K
 JSR FLFLLS
 JSR SUN
 JSR FLFLLS

.TT187

 JSR TT20
 INC XX20
 BNE P%+5
 JMP HBFL
 JMP TT182 \< = Ian = >
}

\ ******************************************************************************
\       Name: TT81
\ ******************************************************************************

.TT81
{
 LDX #5
 LDA QQ21,X
 STA QQ15,X
 DEX
 BPL TT81+2
 RTS
}

\ ******************************************************************************
\       Name: TT111
\ ******************************************************************************

.TT111
{
 JSR TT81
 LDY #127
 STY T
 LDA #0
 STA U

.TT130

 LDA QQ15+3
 SEC
 SBC QQ9
 BCS TT132
 EOR #FF
 ADC #1

.TT132

 LSR A
 STA S
 LDA QQ15+1
 SEC
 SBC QQ10
 BCS TT134
 EOR #FF
 ADC #1

.TT134

 LSR A
 CLC
 ADC S
 CMP T
 BCS TT135
 STA T
 LDX #5

.TT136

 LDA QQ15,X
 STA QQ19,X
 DEX
 BPL TT136
 LDA U
 STA ZZ

.TT135

 JSR TT20
 INC U
 BNE TT130
 LDX #5

.TT137

 LDA QQ19,X
 STA QQ15,X
 DEX
 BPL TT137
 LDA QQ15+1
 STA QQ10
 LDA QQ15+3
 STA QQ9
 SEC
 SBC QQ0
 BCS TT139
 EOR #FF
 ADC #1

.TT139

 JSR SQUA2
 STA K+1
 LDA P
 STA K
 LDA QQ10
 SEC
 SBC QQ1
 BCS TT141
 EOR #FF
 ADC #1

.TT141

 LSR A
 JSR SQUA2
 PHA
 LDA P
 CLC
 ADC K
 STA Q
 PLA
 ADC K+1
 STA R
 JSR LL5
 LDA Q
 ASL A
 LDX #0
 STX QQ8+1
 ROL QQ8+1
 ASL A
 ROL QQ8+1
 STA QQ8
 JMP TT24
}

\ ******************************************************************************
\       Name: dockEd
\ ******************************************************************************

.dockEd
{
 JSR CLYNS
 LDA #15
 JSR DOXC
 LDA #RED
 JSR DOCOL
 LDA #205
 JMP DETOK \< = Ian = >
}

\ ******************************************************************************
\       Name: hyp
\ ******************************************************************************

.hyp
{
 LDA QQ12
 BNE dockEd
 LDA QQ22+1
 BEQ P%+3
 RTS
 LDA #CYAN
 JSR DOCOL
 JSR CTRL
 BMI Ghy
 LDA QQ11
 BEQ TTX110
 AND #192
 BNE P%+3
 RTS \< = Ian = >
 JSR hm

.^TTX111

 LDA QQ8
 ORA QQ8+1
 BNE P%+3
 RTS
 LDX #5

.sob

 LDA QQ15,X
 STA safehouse,X
 DEX
 BPL sob
 LDA #7
 JSR DOXC
 LDA #23
 JSR DOYC
 LDA #0
 STA QQ17
 LDA #189
 JSR TT27
 LDA QQ8+1
 BNE goTT147
 LDA QQ14
 CMP QQ8
 BCS P%+5

.goTT147

 JMP TT147
 LDA #&2D
 JSR TT27
 JSR cpl
}

\ ******************************************************************************
\       Name: wW
\ ******************************************************************************

.wW
{
 LDA #15

.^wW2

 STA QQ22+1
 STA QQ22
 TAX
 JMP ee3\hy5 RTS
}

\ ******************************************************************************
\       Name: TTX110
\ ******************************************************************************

.TTX110
{
 JSR TT111
 JMP TTX111
}

\ ******************************************************************************
\       Name: Ghy
\ ******************************************************************************

.Ghy
{
 LDX GHYP
 BEQ zZ+1
 INX
\STXQQ8
\STXQQ8+1
 STX GHYP
 STX FIST
 LDA #2
 JSR wW2
 LDX #5
 INC GCNT
 LDA GCNT
 AND #7
 STA GCNT

.G1

 LDA QQ21,X
 ASL A
 ROL QQ21,X
 DEX
 BPL G1
\JSRDORND

.zZ

 LDA #&60
 STA QQ9
 STA QQ10
 JSR TT110
 JSR TT111
 LDX #5

.dumdeedum

 LDA QQ15,X
 STA safehouse,X
 DEX
 BPL dumdeedum
 LDX #0
 STX QQ8
 STX QQ8+1
 LDA #116
 JSR MESS
}

\ ******************************************************************************
\       Name: jmp
\ ******************************************************************************

.jmp
{
 LDA QQ9
 STA QQ0
 LDA QQ10
 STA QQ1

.hy5

 RTS
}

\ ******************************************************************************
\       Name: ee3
\ ******************************************************************************

.ee3
{
 LDA #RED
 JSR DOCOL
 LDA #1
 JSR DOXC
 JSR DOYC
 LDY #0
}

\ ******************************************************************************
\       Name: pr6
\ ******************************************************************************

.pr6
{
 CLC
}

\ ******************************************************************************
\       Name: pr5
\ ******************************************************************************

.pr5
{
 LDA #5
 JMP TT11
}

\ ******************************************************************************
\       Name: TT147
\ ******************************************************************************

.TT147
{
 LDA #202
}

\ ******************************************************************************
\       Name: prq
\ ******************************************************************************

.prq
{
 JSR TT27
 LDA #&3F
 JMP TT27
}

\ ******************************************************************************
\       Name: TT151
\ ******************************************************************************

{
.TT151q

 PLA
 RTS \no trade items in MJ

.^TT151

 PHA
 STA QQ19+4
 ASL A
 ASL A
 STA QQ19
 LDA MJ
 BNE TT151q
 LDA #1
 JSR DOXC
 PLA
 ADC #208
 JSR TT27
 LDA #14
 JSR DOXC
 LDX QQ19
 LDA QQ23+1,X
 STA QQ19+1
 LDA QQ26
 AND QQ23+3,X
 CLC
 ADC QQ23,X
 STA QQ24
 JSR TT152
 JSR var
 LDA QQ19+1
 BMI TT155
 LDA QQ24
 ADC QQ19+3
 JMP TT156

.TT155

 LDA QQ24
 SEC
 SBC QQ19+3

.TT156

 STA QQ24
 STA P
 LDA #0
 JSR GC2
 SEC
 JSR pr5
 LDY QQ19+4
 LDA #5
 LDX AVL,Y
 STX QQ25
 CLC
 BEQ TT172
 JSR pr2+2
 JMP TT152

.TT172

 LDA #25
 JSR DOXC
 LDA #&2D
 BNE TT162+2
}

\ ******************************************************************************
\       Name: TT152
\ ******************************************************************************

.TT152
{
 LDA QQ19+1
 AND #96
 BEQ TT160
 CMP #32
 BEQ TT161
 JSR TT16a
}

\ ******************************************************************************
\       Name: TT162
\ ******************************************************************************

.TT162
{
 LDA #32
 JMP TT27
}

\ ******************************************************************************
\       Name: TT160
\ ******************************************************************************

.TT160
{
 LDA #&74
 JSR TT26
 BCC TT162
}

\ ******************************************************************************
\       Name: 
\ ******************************************************************************

.TT161
{
 LDA #&6B
 JSR TT26
}

\ ******************************************************************************
\       Name: TT16a
\ ******************************************************************************

.TT16a
{
 LDA #&67
 JMP TT26
}

\ ******************************************************************************
\       Name: TT163
\ ******************************************************************************

.TT163
{
 LDA #17
 JSR DOXC
 LDA #FF
 BNE TT162+2
}

\ ******************************************************************************
\       Name: TT167
\ ******************************************************************************

.TT167
{
 LDA #16
 JSR TRADEMODE
 LDA #5
 JSR DOXC
 LDA #167
 JSR NLIN3
 LDA #3
 JSR DOYC
 JSR TT163
 LDA #6
 JSR DOYC
 LDA #0
 STA QQ29

.TT168

 LDX #128
 STX QQ17
 JSR TT151
 JSR INCYC
 INC QQ29
 LDA QQ29
 CMP #17
 BCC TT168
 RTS
}

\ ******************************************************************************
\       Name: var
\ ******************************************************************************

.var
{
 LDA QQ19+1
 AND #31
 LDY QQ28
 STA QQ19+2
 CLC
 LDA #0
 STA AVL+16

.TT153

 DEY
 BMI TT154
 ADC QQ19+2
 JMP TT153

.TT154

 STA QQ19+3
 RTS
}

\ ******************************************************************************
\       Name: hyp1
\ ******************************************************************************

.hyp1
{
 JSR TT111
 JSR jmp
 LDX #5

.TT112

 LDA safehouse,X
 STA QQ2,X
 DEX
 BPL TT112
 INX
 STX EV
 LDA QQ3
 STA QQ28
 LDA QQ5
 STA tek
 LDA QQ4
 STA gov

 JSR DORND  \ GVL from tape starts here
 STA QQ26
 LDX #0
 STX XX4

.hy9

 LDA QQ23+1,X
 STA QQ19+1
 JSR var
 LDA QQ23+3,X
 AND QQ26
 CLC
 ADC QQ23+2,X
 LDY QQ19+1
 BMI TT157
 SEC
 SBC QQ19+3
 JMP TT158

.TT157

 CLC
 ADC QQ19+3

.TT158

 BPL TT159
 LDA #0

.TT159

 LDY XX4
 AND #63
 STA AVL,Y
 INY
 TYA
 STA XX4
 ASL A
 ASL A
 TAX
 CMP #63
 BCC hy9

.hyR

 RTS
}

\ ******************************************************************************
\       Name: GTHG
\ ******************************************************************************

.GTHG
{
 JSR Ze
 LDA #FF
 STA INWK+32
 LDA #THG
 JSR NWSHP
 LDA #TGL
 JMP NWSHP
}

\ ******************************************************************************
\       Name: MJP
\ ******************************************************************************

{
.^ptg

 LSR COK
 SEC
 ROL COK

.^MJP

\JSRCATLOD
 LDA #3
 JSR TT66
 JSR LL164
 JSR RES2
 STY MJ

.MJP1

 JSR GTHG
 LDA #3
 CMP MANY+THG
 BCS MJP1
 STA NOSTM
 LDX #0
 JSR LOOK1
 LDA QQ1
 EOR #31
 STA QQ1

.^RTS111

 RTS
}

\ ******************************************************************************
\       Name: TT18
\ ******************************************************************************

.TT18\HSPC
{
 LDA QQ14
 SEC
 SBC QQ8
 BCS P%+4
 LDA #0
 STA QQ14
 LDA QQ11
 BNE ee5
 JSR TT66
 JSR LL164

.ee5

 JSR CTRL
 AND PATG
 BMI ptg
 JSR DORND
 CMP #253
 BCS MJP
\JSRTT111
 JSR hyp1+3
 JSR RES2
 JSR SOLAR
\JSRCATLOD\JSRLOMOD
 LDA QQ11
 AND #63
 BNE RTS111
 JSR TTX66
 LDA QQ11
 BNE TT114
 INC QQ11
}

\ ******************************************************************************
\       Name: TT110
\ ******************************************************************************

.TT110
{
 LDX QQ12
 BEQ NLUNCH
 JSR LAUN
 JSR RES2
 JSR TT111
 INC INWK+8
 JSR SOS1
 LDA #128
 STA INWK+8
 INC INWK+7
 JSR NWSPS
 LDA #12
 STA DELTA
 JSR BAD
 ORA FIST
 STA FIST
 LDA #FF
 STA QQ11
 JSR HFS1

.NLUNCH

 LDX #0
 STX QQ12
 JMP LOOK1
}

\ ******************************************************************************
\       Name: TT114
\ ******************************************************************************

.TT114
{
 BMI TT115
 JMP TT22

.TT115

 JMP TT23
}

\ ******************************************************************************
\       Name: LCASH
\ ******************************************************************************

.LCASH
{
 STX T1
 LDA CASH+3
 SEC
 SBC T1
 STA CASH+3
 STY T1
 LDA CASH+2
 SBC T1
 STA CASH+2
 LDA CASH+1
 SBC #0
 STA CASH+1
 LDA CASH
 SBC #0
 STA CASH
 BCS TT113
}

\ ******************************************************************************
\       Name: MCASH
\ ******************************************************************************

.MCASH
{
 TXA
 CLC
 ADC CASH+3
 STA CASH+3
 TYA
 ADC CASH+2
 STA CASH+2
 LDA CASH+1
 ADC #0
 STA CASH+1
 LDA CASH
 ADC #0
 STA CASH
 CLC

.^TT113

 RTS
}

\ ******************************************************************************
\       Name: GCASH
\ ******************************************************************************

.GCASH
{
 JSR MULTU
}

\ ******************************************************************************
\       Name: GC2
\ ******************************************************************************

.GC2
{
 ASL P
 ROL A
 ASL P
 ROL A
 TAY
 LDX P
 RTS
}

\ ******************************************************************************
\       Name: RDLI
\ ******************************************************************************

.RDLI
{
 EQUS "R.D.CODE"
 EQUB 13
}

\ ******************************************************************************
\       Name: EQSHP
\ ******************************************************************************

{
.bay

 JMP BAY

.^EQSHP

 LDA #32
 JSR TRADEMODE
 LDA #12
 JSR DOXC
 LDA #207
 JSR spc
 LDA #185
 JSR NLIN3
 LDA #128
 STA QQ17
 JSR INCYC
 LDA tek
 CLC
 ADC #3
 CMP #12
 BCC P%+4
 LDA #14
 STA Q
 STA QQ25
 INC Q
 LDA #70
 SEC
 SBC QQ14
 ASL A
 STA PRXS
 LDX #1

.EQL1

 STX XX13
 JSR TT67
 LDX XX13
 CLC
 JSR pr2
 JSR TT162
 LDA XX13
 CLC
 ADC #&68
 JSR TT27
 LDA XX13
 JSR prx-3
 SEC
 LDA #25
 JSR DOXC
 LDA #6
 JSR TT11
 LDX XX13
 INX
 CPX Q
 BCC EQL1
 JSR CLYNS
 LDA #127
 JSR prq
 JSR gnum
 beq bay
 bcs bay
 SBC #0
 PHA
 LDA #2
 JSR DOXC
 JSR INCYC
 PLA
 PHA
 JSR eq
 PLA
 BNE et0
 LDX #70
 STX QQ14

.et0

 CMP #1
 BNE et1
 LDX NOMSL
 INX
 LDY #124
 CPX #5
 BCS pres
 STX NOMSL
 JSR msblob
 LDA #1

.et1

 LDY #&6B
 CMP #2
 BNE et2
 LDX #37
 CPX CRGO
 BEQ pres
 STX CRGO

.et2

 CMP #3
 BNE et3
 INY
 LDX ECM
 BNE pres
 DEC ECM

.et3

 CMP #4
 BNE et4
 JSR qv
 LDA #POW
 JSR refund
 LDA #4

.et4

 CMP #5
 BNE et5
 JSR qv
 LDA #POW+128
 JSR refund

.et5

 LDY #&6F
 CMP #6
 BNE et6
 LDX BST
 BEQ ed9

.pres

 STY K
 JSR prx
 JSR MCASH
 LDA K
 JSR spc
 LDA #31
 JSR TT27

.^err

 JSR dn2
 JMP BAY

.ed9

 DEC BST

.et6

 INY
 CMP #7
 BNE et7
 LDX ESCP
 BNE pres
 DEC ESCP

.et7

 INY
 CMP #8
 BNE et8
 LDX BOMB
 BNE pres
 LDX #&7F
 STX BOMB

.et8

 INY
 CMP #9
 BNE etA
 LDX ENGY
 BNE pres
 INC ENGY

.etA

 INY
 CMP #10
 BNE etB
 LDX DKCMP
 BNE pres
 DEC DKCMP

.etB

 INY
 CMP #11
 BNE et9
 LDX GHYP
 BNE pres
 DEC GHYP

.et9

 INY
 CMP #12
 BNE et10
 JSR qv
 LDA #Armlas
 JSR refund

.et10

 INY
 CMP #13
 BNE et11
 JSR qv
 LDA #Mlas
 JSR refund

.et11

 JSR dn
 JMP EQSHP
}

\ ******************************************************************************
\       Name: dn
\ ******************************************************************************

.dn
{
 JSR TT162
 LDA #119
 JSR spc
}

\ ******************************************************************************
\       Name: dn2
\ ******************************************************************************

.dn2
{
 JSR BEEP
 LDY #50
 JMP DELAY
}

\ ******************************************************************************
\       Name: eq
\ ******************************************************************************

.eq
{
 JSR prx
 JSR LCASH
 BCS c
 LDA #197
 JSR prq
 JMP err
}

\ ******************************************************************************
\       Name: prx
\ ******************************************************************************

{
 SEC
 SBC #1

.^prx

 ASL A
 TAY
 LDX PRXS,Y
 LDA PRXS+1,Y
 TAY

.^c

 RTS
}

\ ******************************************************************************
\       Name: qv
\ ******************************************************************************

.qv
{
 LDA tek
 CMP #8
 BCC P%+7
 LDA #32
 JSR TT66
 LDA #16
 TAY
 JSR DOYC

.qv1

 LDA #12
 JSR DOXC
 TYA
 CLC
 ADC #B-16
 JSR spc
 LDA YC
 CLC
 ADC #&50
 JSR TT27
 JSR INCYC
 LDY YC
 CPY #20
 BCC qv1
 JSR CLYNS

.qv2

 LDA #175
 JSR prq
 JSR TT217
 SEC
 SBC #&30
 CMP #4
 BCC qv3
 JSR CLYNS
 JMP qv2

.qv3

 TAX
 RTS
}

\ ******************************************************************************
\       Name: hm
\ ******************************************************************************

.hm
{
 JSR TT103
 JSR TT111
 JSR TT103
 JMP CLYNS
}

\ ******************************************************************************
\       Name: refund
\ ******************************************************************************

\ref2 LDY#187\JMPpres\Belgium

.refund
{
 STA T1
 LDA LASER,X
 BEQ ref3\CMPT1\BEQref2
 LDY #4
 CMP #POW
 BEQ ref1
 LDY #5
 CMP #POW+128
 BEQ ref1
 LDY #12\11
 CMP #Armlas
 BEQ ref1
\Mlas
 LDY #13\12

.ref1

 STX ZZ
 TYA
 JSR prx
 JSR MCASH
 LDX ZZ

.ref3

 LDA T1
 STA LASER,X
 RTS
}

\ ******************************************************************************
\       Name: PRXS
\ ******************************************************************************

.PRXS
{
 EQUW 1
 EQUW 300
 EQUW 4000
 EQUW 6000
 EQUW 4000
 EQUW 10000
 EQUW 5250
 EQUW 10000
 EQUW 9000
 EQUW 15000
 EQUW 10000
 EQUW 50000
 EQUW 60000
 EQUW 8000
}

\ ******************************************************************************
\
\ Save output/ELTD.bin
\
\ ******************************************************************************

PRINT "ELITE D"
PRINT "Assembled at ", ~CODE_D%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - CODE_D%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_D%

PRINT "S.ELTD ", ~CODE_D%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_D%
SAVE "output/ELTD.bin", CODE_D%, P%, LOAD%

\ ******************************************************************************
\
\ ELITE E FILE
\
\ Produces the binary file ELTE.bin that gets loaded by elite-bcfs.asm.
\
\ ******************************************************************************

CODE_E% = P%
LOAD_E% = LOAD% + P% - CODE%

\ ******************************************************************************
\       Name: cpl
\ ******************************************************************************

.cpl
{
 LDX #5

.TT53

 LDA QQ15,X
 STA QQ19,X
 DEX
 BPL TT53
 LDY #3
 BIT QQ15
 BVS P%+3
 DEY
 STY T

.TT55

 LDA QQ15+5
 AND #31
 BEQ P%+7
 ORA #128
 JSR TT27
 JSR TT54
 DEC T
 BPL TT55
 LDX #5

.TT56

 LDA QQ19,X
 STA QQ15,X
 DEX
 BPL TT56
 RTS
}

\ ******************************************************************************
\       Name: cmn
\ ******************************************************************************

.cmn
{
 LDY #0

.QUL4

 LDA NAME,Y
 CMP #13
 BEQ ypl-1
 JSR TT26
 INY
 BNE QUL4
 RTS
}

\ ******************************************************************************
\       Name: ypl
\ ******************************************************************************

.ypl
{
 BIT MJ
 BMI ypl16
 JSR TT62
 JSR cpl

.TT62

 LDX #5

.TT78

 LDA QQ15,X
 LDY QQ2,X
 STA QQ2,X
 STY QQ15,X
 DEX
 BPL TT78

.ypl16

 RTS
}

\ ******************************************************************************
\       Name: tal
\ ******************************************************************************

.tal
{
 CLC
 LDX GCNT
 INX
 JMP pr2
}

\ ******************************************************************************
\       Name: fwl
\ ******************************************************************************

.fwl
{
 LDA #105
 JSR TT68
 LDX QQ14
 SEC
 JSR pr2
 LDA #195
 JSR plf

.PCASH

 LDA #119
 BNE TT27
}

\ ******************************************************************************
\       Name: csh
\ ******************************************************************************

.csh
{
 LDX #3

.pc1

 LDA CASH,X
 STA K,X
 DEX
 BPL pc1
 LDA #9
 STA U
 SEC
 JSR BPRNT
 LDA #226
}

\ ******************************************************************************
\       Name: plf
\ ******************************************************************************

.plf
{
 JSR TT27
 JMP TT67
}

\ ******************************************************************************
\       Name: 
\ ******************************************************************************

.TT68
{
 JSR TT27
}

\ ******************************************************************************
\       Name: TT73
\ ******************************************************************************

.TT73
{
 LDA #&3A
}

\ ******************************************************************************
\       Name: TT27
\ ******************************************************************************

.TT27
{
 TAX
 BEQ csh
 BMI TT43
 DEX
 BEQ tal
 DEX
 BEQ ypl
 DEX
 BNE P%+5
 JMP cpl
 DEX
 BEQ cmn
 DEX
 BEQ fwl
 DEX
 BNE P%+7
 LDA #128
 STA QQ17
 RTS
 DEX
 DEX
 BNE P%+5
 STX QQ17
 RTS
 DEX
 BEQ crlf
 CMP #&60
 BCS ex
 CMP #14
 BCC P%+6
 CMP #32
 BCC qw
 LDX QQ17
 BEQ TT74
 BMI TT41
 BIT QQ17
 BVS TT46
}

\ ******************************************************************************
\       Name: TT42
\ ******************************************************************************

.TT42
{
 CMP #65
 BCC TT44
 CMP #&5B
 BCS TT44
 ADC #32

.^TT44

 JMP TT26
}

\ ******************************************************************************
\       Name: TT41
\ ******************************************************************************

.TT41
{
 BIT QQ17
 BVS TT45
 CMP #65
 BCC TT74
 PHA
 TXA
 ORA #64
 STA QQ17
 PLA
 BNE TT44
}

\ ******************************************************************************
\       Name: qw
\ ******************************************************************************

.qw
{
 ADC #114
 BNE ex
}

\ ******************************************************************************
\       Name: crlf
\ ******************************************************************************

.crlf
{
 LDA #21
 JSR DOXC
 JMP TT73
}

\ ******************************************************************************
\       Name: TT45
\ ******************************************************************************

.TT45
{
 CPX #FF
 BEQ TT48
 CMP #65
 BCS TT42
}

\ ******************************************************************************
\       Name: TT46
\ ******************************************************************************

.TT46
{
 PHA
 TXA
 AND #191
 STA QQ17
 PLA
}

\ ******************************************************************************
\       Name: TT74
\ ******************************************************************************

.TT74
{
 JMP TT26
}

\ ******************************************************************************
\       Name: TT43
\ ******************************************************************************

.TT43
{
 CMP #160
 BCS TT47
 AND #127
 ASL A
 TAY
 LDA QQ16,Y
 JSR TT27
 LDA QQ16+1,Y
 CMP #63
 BEQ TT48
 JMP TT27

.TT47

 SBC #160
}

\ ******************************************************************************
\       Name: ex
\ ******************************************************************************

.ex
{
 TAX
 LDA #(QQ18 MOD256)
 STA V
 LDA #(QQ18 DIV256)
 STA V+1
 LDY #0
 TXA
 BEQ TT50

.TT51

 LDA (V),Y
 BEQ TT49
 INY
 BNE TT51
 INC V+1
 BNE TT51

.TT49

 INY
 BNE TT59
 INC V+1

.TT59

 DEX
 BNE TT51

.TT50

 TYA
 PHA
 LDA V+1
 PHA
 LDA (V),Y
 EOR #35
 JSR TT27
 PLA
 STA V+1
 PLA
 TAY
 INY
 BNE P%+4
 INC V+1
 LDA (V),Y
 BNE TT50

.^TT48

 RTS
}

\ ******************************************************************************
\       Name: DOEXP
\ ******************************************************************************

{
.EX2

 LDA INWK+31
 ORA #&A0
 STA INWK+31
 RTS

.^DOEXP

 LDA INWK+31
 AND #64
 BEQ P%+5
 JSR PTCLS
 LDA INWK+6
 STA T
 LDA INWK+7
 CMP #&20
 BCC P%+6
 LDA #&FE
 BNE yy
 ASL T
 ROL A
 ASL T
 ROL A
 SEC
 ROL A

.yy

 STA Q
 LDY #1
 LDA (XX19),Y
 ADC #4
 BCS EX2
 STA (XX19),Y
 JSR DVID4
 LDA P
 CMP #&1C
 BCC P%+6
 LDA #&FE
 BNE backtick_     \ MM Renamed to be legal
 ASL R
 ROL A
 ASL R
 ROL A
 ASL R
 ROL A

.backtick_

 DEY
 STA (XX19),Y
 LDA INWK+31
 AND #&BF
 STA INWK+31
 AND #8
 BEQ TT48
 LDY #2
 LDA (XX19),Y
 TAY

.EXL1

 LDA XX3-7,Y
 STA (XX19),Y
 DEY
 CPY #6
 BNE EXL1
 LDA INWK+31
 ORA #64
 STA INWK+31

.PTCLS

 LDY #0
 LDA (XX19),Y
 STA Q
 INY
 LDA (XX19),Y
 BPL P%+4
 EOR #FF
 LSR A
 LSR A
 LSR A
 ORA #1
 STA U
 INY
 LDA (XX19),Y
 STA TGT
 LDA RAND+1
 PHA
 LDY #6

.EXL5

 LDX #3

.EXL3

 INY
 LDA (XX19),Y
 STA K3,X
 DEX
 BPL EXL3
 STY CNT
 LDY #2

.EXL2

 INY
 LDA (XX19),Y
 EOR CNT
 STA &FFFD,Y
 CPY #6
 BNE EXL2
 LDY U

.EXL4

 JSR DORND2
 STA ZZ
 LDA K3+1
 STA R
 LDA K3
 JSR EXS1
 BNE EX11
 CPX #2*Y-1
 BCS EX11
 STX Y1
 LDA K3+3
 STA R
 LDA K3+2
 JSR EXS1
 BNE EX4
 LDA Y1
 JSR PIXEL3

.EX4

 DEY
 BPL EXL4
 LDY CNT
 CPY TGT
 BCC EXL5
 PLA
 STA RAND+1
 LDA K%+6
 STA RAND+3
 RTS

.EX11

 JSR DORND2
 JMP EX4

.EXS1

 STA S
 JSR DORND2
 ROL A
 BCS EX5
 JSR FMLTU
 ADC R
 TAX
 LDA S
 ADC #0
 RTS

.EX5

 JSR FMLTU
 STA T
 LDA R
 SBC T
 TAX
 LDA S
 SBC #0
 RTS
}

\ ******************************************************************************
\       Name: SOS1
\ ******************************************************************************

.SOS1
{
 JSR msblob
 LDA #127
 STA INWK+29
 STA INWK+30
 LDA tek
 AND #2
 ORA #128
 JMP NWSHP
}

\ ******************************************************************************
\       Name: SOLAR
\ ******************************************************************************

.SOLAR
{
 LSR FIST
 JSR ZINF
 LDA QQ15+1
 AND #3
 ADC #3
 STA INWK+8
 ROR A
 STA INWK+2
 STA INWK+5
 JSR SOS1
 LDA QQ15+3
 AND #7
 ORA #129
 STA INWK+8
 LDA QQ15+5
 AND #3
 STA INWK+2
 STA INWK+1
 LDA #0
 STA INWK+29
 STA INWK+30
 LDA #&81
 JSR NWSHP
}

\ ******************************************************************************
\       Name: NWSTARS
\ ******************************************************************************

.NWSTARS
{
 LDA QQ11
\ORA MJ
 BNE WPSHPS
}

\ ******************************************************************************
\       Name: nWq
\ ******************************************************************************

.nWq
{
 LDY NOSTM

.SAL4

 JSR DORND
 ORA #8
 STA SZ,Y
 STA ZZ
 JSR DORND
 STA SX,Y
 STA X1
 JSR DORND
 STA SY,Y
 STA Y1
 JSR PIXEL2
 DEY
 BNE SAL4
 JSR PBFL
}

\ ******************************************************************************
\       Name: WPSHPS
\ ******************************************************************************

.WPSHPS
{
 LDX #0

.WSL1

 LDA FRIN,X
 BEQ WS2
 BMI WS1
 STA TYPE
 JSR GINF
 LDY #31

.WSL2

 LDA (INF),Y
 STA INWK,Y
 DEY
 BPL WSL2
 STX XSAV
 JSR SCAN
 LDX XSAV
 LDY #31
 LDA (INF),Y
 AND #&A7
 STA (INF),Y

.WS1

 INX
 BNE WSL1

.WS2

 STZ LSP \++
 LDX #FF
}

\ ******************************************************************************
\       Name: FLFLLS
\ ******************************************************************************

.FLFLLS
{
 LDY #2*Y-1
 LDA #0

.SAL6

 STA LSO,Y
 DEY
 BNE SAL6
 DEY
 STY LSX
 RTS
}

\ ******************************************************************************
\       Name: DET1
\ ******************************************************************************

.DET1
{
 LDA #DODIALS
 JSR OSWRCH
 TXA
 JMP OSWRCH
}

\ ******************************************************************************
\       Name: SHD
\ ******************************************************************************

{
 DEX
 RTS

.^SHD

 INX
 BEQ SHD-2
}

\ ******************************************************************************
\       Name: DENGY
\ ******************************************************************************

.DENGY
{
 DEC ENERGY
 PHP
 BNE P%+5
 INC ENERGY
 PLP
 RTS
}

\ ******************************************************************************
\       Name: COMPAS
\ ******************************************************************************

.COMPAS
{
 JSR DOT
 LDA SSPR
 BNE SP1
 JSR SPS1
 BRA SP2\++
}

\ ******************************************************************************
\       Name: SPS2
\ ******************************************************************************

.SPS2
{
 ASL A
 TAX
 LDA #0
 ROR A
 TAY
 LDA #20 \14
 STA Q
 TXA
 JSR DVID4
 LDX P
 TYA
 BMI LL163
 LDY #0
 RTS

.LL163

 LDY #FF
 TXA
 EOR #FF
 TAX
 INX
 RTS
}

\ ******************************************************************************
\       Name: SPS4
\ ******************************************************************************

.SPS4
{
 LDX #8

.SPL1

 LDA K%+NI%,X
 STA K3,X
 DEX
 BPL SPL1
 JMP TAS2
}

\ ******************************************************************************
\       Name: SP1
\ ******************************************************************************

.SP1
{
 JSR SPS4
}

\ ******************************************************************************
\       Name: SP2
\ ******************************************************************************

.SP2
{
 LDA XX15
 JSR SPS2
 TXA
 ADC #195\X-1
 STA COMX
 LDA XX15+1
 JSR SPS2
 STX T
 LDA #204
 SBC T
 STA COMY
 LDA #WHITE2
 LDX XX15+2
 BPL P%+4
 LDA #GREEN2
 STA COMC
}

\ ******************************************************************************
\       Name: DOT
\ ******************************************************************************

.DOT
{
 LDA COMY
 STA DOTY1
 LDA COMX
 STA DOTX1
 LDA COMC
 STA DOTCOL
 LDX #(DOTpars MOD256)
 LDY #(DOTpars DIV256)
 LDA #DOdot
 JMP OSWORD

.DOTpars

 EQUB 5
 EQUB 0

.DOTX1

 BRK

.DOTY1

 BRK

.DOTCOL

 BRK
 RTS
}

\ ******************************************************************************
\       Name: OOPS
\ ******************************************************************************

.OOPS
{
 STA T
 LDX #0
 LDY #8
 LDA (INF),Y
 BMI OO1
 LDA FSH
 SBC T
 BCC OO2
 STA FSH
 RTS

.OO2\LDX#0

 STZ FSH\X++
 BCC OO3

.OO1

 LDA ASH
 SBC T
 BCC OO5
 STA ASH
 RTS

.OO5\LDX#0

 STZ ASH\X++

.OO3

 ADC ENERGY
 STA ENERGY
 BEQ P%+4
 BCS P%+5
 JMP DEATH
 JSR EXNO3
 JMP OUCH
}

\ ******************************************************************************
\       Name: SPS3
\ ******************************************************************************

.SPS3
{
 LDA K%+1,X
 STA K3,X
 LDA K%+2,X
 TAY
 AND #127
 STA K3+1,X
 TYA
 AND #128
 STA K3+2,X
 RTS
}

\ ******************************************************************************
\       Name: GINF
\ ******************************************************************************

.GINF
{
 TXA
 ASL A
 TAY
 LDA UNIV,Y
 STA INF
 LDA UNIV+1,Y
 STA INF+1
 RTS
}

\ ******************************************************************************
\       Name: NWSPS
\ ******************************************************************************

.NWSPS
{
 JSR SPBLB
 LDX #&81
 STX INWK+32
 LDX #0
 STX INWK+30
 STX NEWB
\STXINWK+31
 STX FRIN+1
 DEX
 STX INWK+29
 LDX #10
 JSR NwS1
 JSR NwS1
 JSR NwS1
 LDA spasto
 STA XX21+2*SST-2
 LDA spasto+1
 STA XX21+2*SST-1
 LDA tek
 CMP #10
 BCC notadodo
 LDA XX21+2*DOD-2
 STA XX21+2*SST-2
 LDA XX21+2*DOD-1
 STA XX21+2*SST-1

.notadodo

 LDA #(LSO MOD256)
 STA INWK+33
 LDA #(LSO DIV256)
 STA INWK+34
 LDA #SST
}

\ ******************************************************************************
\       Name: NWSHP
\ ******************************************************************************

.NWSHP
{
 STA T
 LDX #0

.NWL1

 LDA FRIN,X
 BEQ NW1
 INX
 CPX #NOSH
 BCC NWL1

.NW3

 CLC
 RTS

.NW1

 JSR GINF
 LDA T
 BMI NW2
 ASL A
 TAY
 LDA XX21-1,Y
 BEQ NW3
 STA XX0+1
 LDA XX21-2,Y
 STA XX0
 CPY #2*SST
 BEQ NW6
 LDY #5
 LDA (XX0),Y
 STA T1
 LDA SLSP
 SEC
 SBC T1
 STA INWK+33
 LDA SLSP+1
 SBC #0
 STA INWK+34
 LDA INWK+33
\SEC
 SBC INF
 TAY
 LDA INWK+34
 SBC INF+1
 BCC NW3+1
 BNE NW4
 CPY #NI%
 BCC NW3+1

.NW4

 LDA INWK+33
 STA SLSP
 LDA INWK+34
 STA SLSP+1

.NW6

 LDY #14
 LDA (XX0),Y
 STA INWK+35
 LDY #19
 LDA (XX0),Y
 AND #7
 STA INWK+31
 LDA T

.NW2

 STA FRIN,X
 TAX
 BMI NW8
 CPX #HER
 BEQ gangbang
 CPX #JL
 BCC NW7
 CPX #JH
 BCS NW7

.gangbang

 INC JUNK

.NW7

 INC MANY,X

.NW8

 LDY T
 LDA E%-1,Y
 AND #&6F
 ORA NEWB
 STA NEWB
 LDY #NI%-1

.NWL3

 LDA INWK,Y
 STA (INF),Y
 DEY
 BPL NWL3
 SEC
 RTS
}

\ ******************************************************************************
\       Name: NwS1
\ ******************************************************************************

.NwS1
{
 LDA INWK,X
 EOR #128
 STA INWK,X
 INX
 INX
 RTS
}

\ ******************************************************************************
\       Name: ABORT
\ ******************************************************************************

.ABORT
{
 LDX #FF
}

\ ******************************************************************************
\       Name: ABORT2
\ ******************************************************************************

.ABORT2
{
 STX MSTG
 LDX NOMSL
 JSR MSBAR
 STY MSAR
 RTS
}

\ ******************************************************************************
\       Name: ECBLB2
\ ******************************************************************************

.ECBLB2
{
 LDA #32
 STA ECMA
 ASL A
 JSR NOISE
}

\ ******************************************************************************
\       Name: ECBLB
\ ******************************************************************************

.ECBLB
{
 LDA #DOBULB
 JSR OSWRCH
 LDA #FF
 JMP OSWRCH
}

\ ******************************************************************************
\       Name: SPBLB
\ ******************************************************************************

.SPBLB
{
 LDA #DOBULB
 JSR OSWRCH
 LDA #0
 JMP OSWRCH
}

\ ******************************************************************************
\       Name: MSBAR
\ ******************************************************************************

{
.msbpars

 EQUB 4
 EQUD 0

.^MSBAR

 PHX \++
 STX msbpars+2
 STY msbpars+3
 PHY
 LDX #(msbpars MOD256)
 LDY #(msbpars DIV256)
 LDA #DOmsbar
 JSR OSWORD
 LDY #0
 PLA
 PLX \++
 RTS
}

\ ******************************************************************************
\       Name: PROJ
\ ******************************************************************************

.PROJ
{
\K3,K4 (2bTC) = screen X,Y for INWK coords
 LDA INWK
 STA P
 LDA INWK+1
 STA P+1
 LDA INWK+2
 JSR PLS6
 BCS PL2-1
 LDA K
 ADC #X
 STA K3
 TXA
 ADC #0
 STA K3+1
 LDA INWK+3
 STA P
 LDA INWK+4
 STA P+1
 LDA INWK+5
 EOR #128
 JSR PLS6
 BCS PL2-1
 LDA K
 ADC #Y
 STA K4
 TXA
 ADC #0
 STA K4+1
 CLC
 RTS
}

\ ******************************************************************************
\       Name: PL2
\ ******************************************************************************

.PL2
{
 LDA TYPE
 LSR A
 BCS PL57
 JSR LS2FL
 STZ LSP \++
 RTS

.PL57

 JMP WPLS
}

\ ******************************************************************************
\       Name: PLANET
\ ******************************************************************************

.PLANET
{
 LDA #GREEN
 JSR DOCOL
 LDA INWK+8
\BMIPL2
 CMP #48
 BCS PL2
 ORA INWK+7
 BEQ PL2
 JSR PROJ
 BCS PL2
 LDA #96
 STA P+1
 LDA #0
 STA P
 JSR DVID3B2
 LDA K+1
 BEQ PL82
 LDA #&F8
 STA K

.PL82

 LDA TYPE
 LSR A
 BCC PL9
 JMP SUN
}

\ ******************************************************************************
\       Name: PL9 (Part 1 of 3)
\ ******************************************************************************

.PL9
{
 JSR LS2FL
 STZ LSP
 JSR CIRCLE
 BCS PL20
 LDA K+1
 BEQ PL25

.PL20

 JMP LS2FL

.PL25

 LDA TYPE
 CMP #&80
 BNE PL26

\ ******************************************************************************
\       Name: PL9 (Part 2 of 3)
\ ******************************************************************************

 LDA K
 CMP #6
 BCC PL20
 LDA INWK+14
 EOR #128
 STA P
 LDA INWK+20
 JSR PLS4
 LDX #9
 JSR PLS1
 STA K2
 STY XX16
 JSR PLS1
 STA K2+1
 STY XX16+1
 LDX #15
 JSR PLS5
 JSR PLS2
 LDA INWK+14
 EOR #128
 STA P
 LDA INWK+26
 JSR PLS4
 LDX #21
 JSR PLS5
 JSR PLS2
 JMP LS2FL

\ ******************************************************************************
\       Name: PL9 (Part 3 of 3)
\ ******************************************************************************


.PL26

 LDA INWK+20
 BMI PL20
 LDX #15
 JSR PLS3
 CLC
 ADC K3
 STA K3
 TYA
 ADC K3+1
 STA K3+1
 JSR PLS3
 STA P
 LDA K4
 SEC
 SBC P
 STA K4
 STY P
 LDA K4+1
 SBC P
 STA K4+1
 LDX #9
 JSR PLS1
 LSR A
 STA K2
 STY XX16
 JSR PLS1
 LSR A
 STA K2+1
 STY XX16+1
 LDX #21
 JSR PLS1
 LSR A
 STA K2+2
 STY XX16+2
 JSR PLS1
 LSR A
 STA K2+3
 STY XX16+3
 LDA #64
 STA TGT
 STZ CNT2 \++useA
 JSR PLS22
 JMP LS2FL
}

\ ******************************************************************************
\       Name: PLS1
\ ******************************************************************************

.PLS1
{
 LDA INWK,X
 STA P
 LDA INWK+1,X
 AND #127
 STA P+1
 LDA INWK+1,X
 AND #128
 JSR DVID3B2
 LDA K
 LDY K+1
 BEQ P%+4
 LDA #&FE
 LDY K+3
 INX
 INX
 RTS
}

\ ******************************************************************************
\       Name: PLS2
\ ******************************************************************************

.PLS2
{
 LDA #31
 STA TGT
}

\ ******************************************************************************
\       Name: PLS22
\ ******************************************************************************

.PLS22
{
 LDX #0
 STX CNT
 DEX
 STX FLAG

.PLL4

 LDA CNT2
 AND #31
 TAX
 LDA SNE,X
 STA Q
 LDA K2+2
 JSR FMLTU
 STA R
 LDA K2+3
 JSR FMLTU
 STA K
 LDX CNT2
 CPX #33
 LDA #0
 ROR A
 STA XX16+5
 LDA CNT2
 CLC
 ADC #16
 AND #31
 TAX
 LDA SNE,X
 STA Q
 LDA K2+1
 JSR FMLTU
 STA K+2
 LDA K2
 JSR FMLTU
 STA P
 LDA CNT2
 ADC #15
 AND #63
 CMP #33
 LDA #0
 ROR A
 STA XX16+4
 LDA XX16+5
 EOR XX16+2
 STA S
 LDA XX16+4
 EOR XX16
 JSR ADD
 STA T
 BPL PL42
 TXA
 EOR #FF
 CLC
 ADC #1
 TAX
 LDA T
 EOR #&7F
 ADC #0
 STA T

.PL42

 TXA
 ADC K3
 STA K6
 LDA T
 ADC K3+1
 STA K6+1
 LDA K
 STA R
 LDA XX16+5
 EOR XX16+3
 STA S
 LDA K+2
 STA P
 LDA XX16+4
 EOR XX16+1
 JSR ADD
 EOR #128
 STA T
 BPL PL43
 TXA
 EOR #FF
 CLC
 ADC #1
 TAX
 LDA T
 EOR #&7F
 ADC #0
 STA T

.PL43

 JSR BLINE
 CMP TGT
 BEQ P%+4
 BCS PL40
 LDA CNT2
 CLC
 ADC STP
 AND #63
 STA CNT2
 JMP PLL4

.PL40

 RTS
}

\ ******************************************************************************
\       Name: SUN (Part 1 of 4)
\ ******************************************************************************

{
 JMP WPLS

.PLF3

 TXA
 EOR #FF
 CLC
 ADC #1
 TAX

.PLF17

 LDA #FF
 BNE PLF5

.^SUN

 LDA #1
 STA LSX
 JSR CHKON
 BCS PLF3-3
 LDA #0
 LDX K
 CPX #&60
 ROL A
 CPX #&28
 ROL A
 CPX #&10
 ROL A

.PLF18

 STA CNT
 LDA #2*Y-1
 LDX P+2
 BNE PLF2
 CMP P+1
 BCC PLF2
 LDA P+1
 BNE PLF2
 LDA #1

.PLF2

 STA TGT
 LDA #2*Y-1
 SEC
 SBC K4
 TAX
 LDA #0
 SBC K4+1
 BMI PLF3
 BNE PLF4
 INX
 DEX
 BEQ PLF17
 CPX K
 BCC PLF5

.PLF4

 LDX K
 LDA #0

.PLF5

 STX V
 STA V+1
 LDA K
 JSR SQUA2
 STA K2+1
 LDA P
 STA K2

\ ******************************************************************************
\       Name: SUN (Part 2 of 4)
\ ******************************************************************************

 LDY #2*Y-1
 LDA SUNX
 STA YY
 LDA SUNX+1
 STA YY+1

.PLFL2

 CPY TGT
 BEQ PLFL
 LDA LSO,Y
 BEQ PLF13
 JSR HLOIN2

.PLF13

 DEY
 BNE PLFL2

\ ******************************************************************************
\       Name: SUN (Part 3 of 4)
\ ******************************************************************************

.PLFL

 LDA V
 JSR SQUA2
 STA T
 LDA K2
 SEC
 SBC P
 STA Q
 LDA K2+1
 SBC T
 STA R
 STY Y1
 JSR LL5
 LDY Y1
 JSR DORND
 AND CNT
 CLC
 ADC Q
 BCC PLF44
 LDA #FF

.PLF44

 LDX LSO,Y
 STA LSO,Y
 BEQ PLF11
 LDA SUNX
 STA YY
 LDA SUNX+1
 STA YY+1
 TXA
 JSR EDGES
 LDA X1
 STA XX
 LDA X2
 STA XX+1
 LDA K3
 STA YY
 LDA K3+1
 STA YY+1
 LDA LSO,Y
 JSR EDGES
 BCS PLF23
 LDA X2
 LDX XX
 STX X2
 STA XX
 JSR HLOIN

.PLF23

 LDA XX
 STA X1
 LDA XX+1
 STA X2

.PLF16

 JSR HLOIN

.PLF6

 DEY
 BEQ PLF8
 LDA V+1
 BNE PLF10
 DEC V
 BNE PLFL
 DEC V+1

.PLFLS

 JMP PLFL

.PLF11

 LDX K3
 STX YY
 LDX K3+1
 STX YY+1
 JSR EDGES
 BCC PLF16
 LDA #0
 STA LSO,Y
 BEQ PLF6

.PLF10

 LDX V
 INX
 STX V
 CPX K
 BCC PLFLS
 BEQ PLFLS

\ ******************************************************************************
\       Name: SUN (Part 4 of 4)
\ ******************************************************************************

 LDA SUNX
 STA YY
 LDA SUNX+1
 STA YY+1

.PLFL3

 LDA LSO,Y
 BEQ PLF9
 JSR HLOIN2

.PLF9

 DEY
 BNE PLFL3

.PLF8

 CLC
 LDA K3
 STA SUNX
 LDA K3+1
 STA SUNX+1
 JSR HBFL

.^RTS2

 RTS
}

\ ******************************************************************************
\       Name: CIRCLE
\ ******************************************************************************

.CIRCLE
{
 JSR CHKON
 BCS RTS2
 LDX K
 LDA #8
 CPX #4
 BCC PL89
 LSR A
 CPX #50
 BCC PL89
 LSR A

.PL89

 STA STP
}

\ ******************************************************************************
\       Name: CIRCLE3 (same as CIRCLE2 in tape)
\ ******************************************************************************

.CIRCLE3
{
 LDX #FF
 STX FLAG
 INX
 STX CNT

.PLL3

 LDA CNT
 JSR FMLTU2
 LDX #0
 STX T
 LDX CNT
 CPX #33
 BCC PL37
 EOR #FF
 ADC #0
 TAX
 LDA #FF
 ADC #0
 STA T
 TXA
 CLC

.PL37

 ADC K3
 STA K6
 LDA K3+1
 ADC T
 STA K6+1
 LDA CNT
 CLC
 ADC #16
 JSR FMLTU2
 TAX
 LDA #0
 STA T
 LDA CNT
 ADC #15
 AND #63
 CMP #33
 BCC PL38
 TXA
 EOR #FF
 ADC #0
 TAX
 LDA #FF
 ADC #0
 STA T
 CLC

.PL38

 JSR BLINE
 CMP #65
 BCS P%+5
 JMP PLL3
 CLC
 RTS
}

\ ******************************************************************************
\       Name: CIRCLE2
\ ******************************************************************************

.CIRCLE2
{
 STZ LSP
 JSR CIRCLE3
}

\ ******************************************************************************
\       Name: LS2FL similar to WPLS2
\ ******************************************************************************

.LS2FL
{
 LDY LSP

.WP3

 STY T
 BEQ WP1
 LDA #&81
 JSR OSWRCH
 TYA
 BMI WP2
 SEC
 ROL A
 JSR OSWRCH
 LDY #0

.WPL1

 LDA LSX2,Y
 JSR OSWRCH
 LDA LSY2,Y
 JSR OSWRCH
 INY
 LDA LSX2,Y
 JSR OSWRCH
 LDA LSY2,Y
 JSR OSWRCH
 INY
 CPY T
 BCC WPL1

.^WP1

 RTS

.WP2

 ASL A
 ADC #4
 JSR OSWRCH
 LDY #126
 JSR WPL1
 LDY #126
 JMP WP3
}

\ ******************************************************************************
\       Name: WPLS
\ ******************************************************************************

.WPLS
{
 LDA LSX
 BMI WP1
 LDA SUNX
 STA YY
 LDA SUNX+1
 STA YY+1
 LDY #2*Y-1

.WPL2

 LDA LSO,Y
 BEQ P%+5
 JSR HLOIN2
 DEY
 BNE WPL2
 DEY
 STY LSX
 JMP HBFL
}

\ ******************************************************************************
\       Name: EDGES
\ ******************************************************************************

.EDGES
{
 STA T
 CLC
 ADC YY
 STA X2
 LDA YY+1
 ADC #0
 BMI ED1
 BEQ P%+6
 LDA #254
 STA X2
 LDA YY
 SEC
 SBC T
 STA X1
 LDA YY+1
 SBC #0
 BNE ED3
 CLC
 RTS

.ED3

 BPL ED1
 LDA #2
 STA X1
 CLC
 RTS

.ED1

 LDA #0
 STA LSO,Y
 SEC
 RTS
}

\ ******************************************************************************
\       Name: CHKON
\ ******************************************************************************

.CHKON
{
 LDA K3
 CLC
 ADC K
 LDA K3+1
 ADC #0
 BMI PL21
 LDA K3
 SEC
 SBC K
 LDA K3+1
 SBC #0
 BMI PL31
 BNE PL21

.PL31

 LDA K4
 CLC
 ADC K
 STA P+1
 LDA K4+1
 ADC #0
 BMI PL21
 STA P+2
 LDA K4
 SEC
 SBC K
 TAX
 LDA K4+1
 SBC #0
 BMI PL44
 BNE PL21
 CPX #2*Y-1
 RTS
}

\ ******************************************************************************
\       Name: PL21
\ ******************************************************************************

.PL21
{
 SEC
 RTS
}

\ ******************************************************************************
\       Name: PLS3
\ ******************************************************************************

.PLS3
{
 JSR PLS1
 STA P
 LDA #222
 STA Q
 STX U
 JSR MULTU
 LDX U
 LDY K+3
 BPL PL12
 EOR #FF
 CLC
 ADC #1
 BEQ PL12
 LDY #FF
 RTS

.PL12

 LDY #0
 RTS
}

\ ******************************************************************************
\       Name: PLS4
\ ******************************************************************************

.PLS4
{
 STA Q
 JSR ARCTAN
 LDX INWK+14
 BMI P%+4
 EOR #128
 LSR A
 LSR A
 STA CNT2
 RTS
}

\ ******************************************************************************
\       Name: PLS5
\ ******************************************************************************

.PLS5
{
 JSR PLS1
 STA K2+2
 STY XX16+2
 JSR PLS1
 STA K2+3
 STY XX16+3
 RTS
}

\ ******************************************************************************
\       Name: PLS6
\ ******************************************************************************

.PLS6
{
 JSR DVID3B2
 LDA K+3
 AND #127
 ORA K+2
 BNE PL21
 LDX K+1
 CPX #4
 BCS PL6
 LDA K+3
\CLC
 BPL PL6
 LDA K
 EOR #FF
 ADC #1
 STA K
 TXA
 EOR #FF
 ADC #0
 TAX

.^PL44

 CLC

.PL6

 RTS
}

\ ******************************************************************************
\       Name: TT17
\ ******************************************************************************

.TT17
{
 JSR DOKEY
 LDX #0
 JSR DKS4
 STA newlocn
 LDA JSTK
 BEQ TJ1
 LDA JSTX
 EOR #FF
 JSR TJS1
 TYA
 BIT newlocn
 BPL P%+3
 ASL A
 TAX
 LDA JSTY

.TJS1

 TAY
 LDA #0
 CPY #&10
 SBC #0
 CPY #&40
 SBC #0
 CPY #&C0
 ADC #0
 CPY #&E0
 ADC #0
 BIT newlocn
 BPL P%+3
 ASL A
 TAY
 LDA KL
 RTS

.newlocn

 BRK

.TJ1

 LDA KL
 LDX #0
 LDY #0
 CMP #&19
 BNE P%+3
 DEX
 CMP #&79
 BNE P%+3
 INX
 CMP #&39
 BNE P%+3
 INY
 CMP #&29
 BNE P%+3
 DEY
 TXA
 BIT newlocn
 BPL P%+4
 ASL A
 ASL A
 TAX
 TYA
 BIT newlocn
 BPL P%+4
 ASL A
 ASL A
 TAY
 LDA KL
 RTS
}

\ ******************************************************************************
\       Name: ping
\ ******************************************************************************

.ping
{
 LDX #1

.pl1

 LDA QQ0,X
 STA QQ9,X
 DEX
 BPL pl1
 RTS
}

\ ******************************************************************************
\
\ Save output/ELTE.bin
\
\ ******************************************************************************

PRINT "ELITE E"
PRINT "Assembled at ", ~CODE_E%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - CODE_E%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_E%

PRINT "S.ELTE ", ~CODE_E%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_E%
SAVE "output/ELTE.bin", CODE_E%, P%, LOAD%

\ ******************************************************************************
\
\ ELITE F FILE
\
\ Produces the binary file ELTF.bin that gets loaded by elite-bcfs.asm.
\
\ ******************************************************************************

CODE_F% = P%
LOAD_F% = LOAD% + P% - CODE%

\ ******************************************************************************
\       Name: KS3
\ ******************************************************************************

.KS3
{
 LDA P
 STA SLSP
 LDA P+1
 STA SLSP+1
 RTS
}

\ ******************************************************************************
\       Name: KS1
\ ******************************************************************************

.KS1
{
 LDX XSAV
 JSR KILLSHP
 LDX XSAV
 JMP MAL1
}

\ ******************************************************************************
\       Name: KS4
\ ******************************************************************************

.KS4
{
 JSR ZINF
 JSR FLFLLS
 STA FRIN+1
 STA SSPR
 JSR SPBLB
 LDA #6
 STA INWK+5
 LDA #&81
 JMP NWSHP
}

\ ******************************************************************************
\       Name: KS2
\ ******************************************************************************

.KS2
{
 LDX #FF

.KSL4

 INX
 LDA FRIN,X
 BEQ KS3
 CMP #MSL
 BNE KSL4
 TXA
 ASL A
 TAY
 LDA UNIV,Y
 STA SC
 LDA UNIV+1,Y
 STA SC+1
 LDY #32
 LDA (SC),Y
 BPL KSL4
 AND #&7F
 LSR A
 CMP XX4
 BCC KSL4
 BEQ KS6
 SBC #1
 ASL A
 ORA #128
 STA (SC),Y
 BNE KSL4

.KS6

 LDA #0
 STA (SC),Y
 BEQ KSL4
}

\ ******************************************************************************
\       Name: KILLSHIP
\ ******************************************************************************

.KILLSHP
{
 STX XX4
 LDA MSTG
 CMP XX4
 BNE KS5
 LDY #GREEN2
 JSR ABORT
 LDA #200
 JSR MESS

.KS5

 LDY XX4
 LDX FRIN,Y
 CPX #SST
 BEQ KS4
 CPX #CON
 BNE lll
 LDA TP
 ORA #2
 STA TP

.lll

 CPX #HER
 BEQ blacksuspenders
 CPX #JL
 BCC KS7
 CPX #JH
 BCS KS7

.blacksuspenders

 DEC JUNK

.KS7

 DEC MANY,X
 LDX XX4
 LDY #5
 LDA (XX0),Y
 LDY #33
 CLC
 ADC (INF),Y
 STA P
 INY
 LDA (INF),Y
 ADC #0
 STA P+1

.KSL1

 INX
 LDA FRIN,X
 STA FRIN-1,X
 BNE P%+5
 JMP KS2
 ASL A
 TAY
 LDA XX21-2,Y
 STA SC
 LDA XX21-1,Y
 STA SC+1
 LDY #5
 LDA (SC),Y
 STA T
 LDA P
 SEC
 SBC T
 STA P
 LDA P+1
 SBC #0
 STA P+1
 TXA
 ASL A
 TAY
 LDA UNIV,Y
 STA SC
 LDA UNIV+1,Y
 STA SC+1
 LDY #36
 LDA (SC),Y
 STA (INF),Y
 DEY
 LDA (SC),Y
 STA (INF),Y
 DEY
 LDA (SC),Y
 STA K+1
 LDA P+1
 STA (INF),Y
 DEY
 LDA (SC),Y
 STA K
 LDA P
 STA (INF),Y
 DEY

.KSL2

\DEY
 LDA (SC),Y
 STA (INF),Y
\TYA
 DEY
 BPL KSL2
 LDA SC
 STA INF
 LDA SC+1
 STA INF+1
 LDY T

.KSL3

 DEY
 LDA (K),Y
 STA (P),Y
 TYA
 BNE KSL3
 BEQ KSL1
}

\ ******************************************************************************
\       Name: SFX
\ ******************************************************************************

.SFX
{
 EQUB &12, &01, &00, &10
 EQUB &12, &02, &2C, &08
 EQUB &11, &03, &F0, &18
 EQUB &10, &F1, &07, &1A
 EQUB &03, &F1, &BC, &01
 EQUB &13, &F4, &0C, &08
 EQUB &10, &F1, &06, &0C
 EQUB &10, &02, &60, &10 \HYP
 EQUB &13, &04, &C2, &FF
 EQUB &13, &00, &00, &00
}

\ ******************************************************************************
\       Name: THERE
\ ******************************************************************************

.THERE
{
 LDX GCNT
 DEX
 BNE THEX
 LDA QQ0
 CMP #144
 BNE THEX
 LDA QQ1
 CMP #33
 BEQ THEX+1

.THEX

 CLC
 RTS
}

\ ******************************************************************************
\       Name: RESET
\ ******************************************************************************

.RESET
{
 JSR ZERO
 LDX #6

.SAL3

 STA BETA,X
 DEX
 BPL SAL3
 TXA
 STA QQ12
 LDX #2

.REL5

 STA FSH,X
 DEX
 BPL REL5
}

\ ******************************************************************************
\       Name: RES2
\ ******************************************************************************

.RES2
{
 LDA #NOST
 STA NOSTM
 LDX #FF
 STX LSX2
 STX LSY2
 STX MSTG
 LDA #128
 STA JSTY
 STA ALP2
 STA BET2
 ASL A
 STA BETA
 STA BET1
 STA ALP2+1
 STA BET2+1
 STA MCNT
 LDA #3
 STA DELTA
 STA ALPHA
 STA ALP1
 LDA SSPR
 BEQ P%+5
 JSR SPBLB
 LDA ECMA
 BEQ yu
 JSR ECMOF

.yu

 JSR WPSHPS
 JSR ZERO
 LDA #(LS%MOD256)
 STA SLSP
 LDA #(LS%DIV256)
 STA SLSP+1
 JSR DIALS
}

\ ******************************************************************************
\       Name: ZINF
\ ******************************************************************************

.ZINF
{
 LDY #NI%-1
 LDA #0

.ZI1

 STA INWK,Y
 DEY
 BPL ZI1
 LDA #96
 STA INWK+18
 STA INWK+22
 ORA #128
 STA INWK+14
 RTS
}

\ ******************************************************************************
\       Name: msblob
\ ******************************************************************************

.msblob
{
 LDX #4

.ss

 CPX NOMSL
 BEQ SAL8
 LDY #0
 JSR MSBAR
 DEX
 BNE ss
 RTS

.SAL8

 LDY #GREEN2
 JSR MSBAR
 DEX
 BNE SAL8
 RTS
}

\ ******************************************************************************
\       Name: me2
\ ******************************************************************************

.me2
{
 LDA MCH
 JSR MESS
 LDA #0
 STA DLY
 JMP me3
}

\ ******************************************************************************
\       Name: Ze
\ ******************************************************************************

.Ze
{
 JSR ZINF
 JSR DORND
 STA T1
 AND #128
 STA INWK+2
 TXA
 AND #128
 STA INWK+5
 LDA #25
 STA INWK+1
 STA INWK+4
 STA INWK+7
 TXA
 CMP #245
 ROL A
 ORA #&C0
 STA INWK+32
}

\ ******************************************************************************
\       Name: 
\ ******************************************************************************

{
.^DORND2

 CLC

.^DORND

 LDA RAND
 ROL A
 TAX
 ADC RAND+2
 STA RAND
 STX RAND+2
 LDA RAND+1
 TAX
 ADC RAND+3
 STA RAND+1
 STX RAND+3
 RTS
}

\ ******************************************************************************
\       Name: Main game loop (Part 1 of 6)
\ ******************************************************************************

{
.MTT4

 JSR DORND
 LSR A
 STA INWK+32
 STA INWK+29
 ROL INWK+31
 AND #31
 ORA #16
 STA INWK+27
 JSR DORND
 BMI nodo
 LDA INWK+32
 ORA #&C0
 STA INWK+32
 LDX #16
 STX NEWB

.nodo

 AND #2
 ADC #CYL
 CMP #HER
 BEQ TT100
 JSR NWSHP\trader

\ ******************************************************************************
\       Name: Main game loop (Part 2 of 6)
\ ******************************************************************************

.^TT100

 JSR M%
 DEC DLY
 BEQ me2
 BPL me3
 INC DLY

.^me3

 DEC MCNT
 BEQ P%+5

.ytq

 JMP MLOOP
 LDA MJ
 BNE ytq
 JSR DORND
 CMP #35
 BCS MTT1
 LDA JUNK
 CMP #3
 BCS MTT1
 JSR ZINF
 LDA #38
 STA INWK+7
 JSR DORND
 STA INWK
 STX INWK+3
 AND #128
 STA INWK+2
 TXA
 AND #128
 STA INWK+5
 ROL INWK+1
 ROL INWK+1
 JSR DORND
 BVS MTT4
 ORA #&6F
 STA INWK+29
 LDA SSPR
 BNE MTT1
 TXA
 BCS MTT2
 AND #31
 ORA #16
 STA INWK+27
 BCC MTT3

.MTT2

 ORA #127
 STA INWK+30

.MTT3

 JSR DORND
 CMP #252
 BCC thongs
 LDA #HER
 STA INWK+32
 BNE whips

.thongs

 CMP #10
 AND #1
 ADC #OIL

.whips

 JSR NWSHP \junk

\ ******************************************************************************
\       Name: Main game loop (Part 3 of 6)
\ ******************************************************************************

.MTT1

 LDA SSPR
 BEQ P%+5

.MLOOPS

 JMP MLOOP
 JSR BAD
 ASL A
 LDX MANY+COPS
 BEQ P%+5
 ORA FIST
 STA T
 JSR Ze
 CMP #136
 BEQ fothg
 CMP T
 BCS P%+7
 LDA #COPS
 JSR NWSHP
 LDA MANY+COPS
 BNE MLOOPS

\ ******************************************************************************
\       Name: Main game loop (Part 4 of 6)
\ ******************************************************************************

 DEC EV
 BPL MLOOPS
 INC EV
 LDA TP
 AND #&C
 CMP #8
 BNE nopl
 JSR DORND
 CMP #200
 BCC nopl

.fothg2

 JSR GTHG

.nopl

 JSR DORND
 LDY gov
 BEQ backtick
 CMP #90
 BCS MLOOPS
 AND #7
 CMP gov
 BCC MLOOPS

.backtick

 JSR Ze
 CMP #100
 BCS mt1
 INC EV
 AND #3
 ADC #CYL2
 TAY
 JSR THERE
 BCC NOCON
 LDA #&F9
 STA INWK+32
 LDA TP
 AND #3
 LSR A
 BCC NOCON
 ORA MANY+CON
 BEQ YESCON

.NOCON

 LDA #4
 STA NEWB
 JSR DORND
 CMP #200
 ROL A
 ORA #&C0
 STA INWK+32
 TYA
 EQUB &2C

.YESCON

 LDA #CON

.focoug

 JSR NWSHP

.mj1

 JMP MLOOP

.fothg

 LDA K%+6
 AND #&3E
 BNE fothg2
 LDA #18
 STA INWK+27
 LDA #&79
 STA INWK+32
 LDA #COU
 BNE focoug

.mt1

 AND #3
 STA EV
 STA XX13

.mt3

 JSR DORND
 STA T
 JSR DORND
 AND T
 AND #7
 ADC #PACK
 JSR NWSHP \pack
 DEC XX13
 BPL mt3

\ ******************************************************************************
\       Name: Main game loop (Part 5 of 6)
\ ******************************************************************************

.^MLOOP

 LDX #FF
 TXS
 LDX GNTMP
 BEQ EE20
 DEC GNTMP

.EE20

 LDX LASCT
 BEQ NOLASCT
 DEX
 BEQ P%+3
 DEX
 STX LASCT

.NOLASCT

 JSR DIALS
 BIT printflag
 BPL dontdolinefeedontheprinternow
 LDA #prilf
 JSR OSWRCH
 JSR OSWRCH

.dontdolinefeedontheprinternow

 STZ printflag\++
 LDA QQ11
 BEQ P%+13
 AND PATG
 LSR A
 BCS P%+7
 LDY #2
 JSR DELAY
 JSR TT17

\ ******************************************************************************
\       Name: Main game loop (Part 6 of 6)
\ ******************************************************************************

.^FRCE

 JSR TT102
 LDA QQ12
 BNE MLOOP
 JMP TT100
}

\ ******************************************************************************
\       Name: TT102
\ ******************************************************************************

.TT102
{
 CMP #f8
 BNE P%+5
 JMP STATUS
 CMP #f4
 BNE P%+5
 JMP TT22
 CMP #f5
 BNE P%+5
 JMP TT23
 CMP #f6
 BNE TT92
 JSR TT111
 JMP TT25

.TT92

 CMP #f9
 BNE P%+5
 JMP TT213
 CMP #f7
 BNE P%+5
 JMP TT167
 CMP #f0
 BNE fvw
\JSRCTRL\BPLP%+5\JMPHALL
 JMP TT110

.fvw

 BIT QQ12
 BPL INSP
 CMP #f3
 BNE P%+5
 JMP EQSHP
 CMP #f1
 BNE P%+5
 JMP TT219
 CMP #&47
 BNE nosave
 JSR SVE
 BCC P%+5
 JMP QU5
 JMP BAY

.nosave

 CMP #f2
 BNE backticks
 JMP TT208

.INSP

 CMP #&71
 BCC backticks
 CMP #&74
 BCS backticks
 AND #3
 TAX
 JMP LOOK1

.backticks
 CMP #&54
 BNE P%+5
 JMP hyp

.NWDAV5

 CMP #&32
 BEQ T95
 CMP #&43\Find
 BNE HME1
 LDA QQ12
 BEQ t95
 LDA QQ11
 AND #192
 BEQ t95
 JMP HME2

.HME1

 STA T1
 LDA QQ11
 AND #192
 BEQ TT107
 LDA QQ22+1
 BNE TT107
 LDA T1
 CMP #&36
 BNE ee2
 JSR TT103
 JSR ping
 JMP TT103

.ee2

 JSR TT16

.TT107

 LDA QQ22+1
 BEQ t95
 DEC QQ22
 BNE t95
 LDX QQ22+1
 DEX
 JSR ee3
 LDA #5
 STA QQ22
 LDX QQ22+1
 JSR ee3
 DEC QQ22+1
 BNE t95
 JMP TT18

.t95

 RTS

.^T95

 LDA QQ11
 AND #192
 BEQ t95
 LDA #CYAN
 JSR DOCOL
 JSR hm
 STA QQ17
 JSR cpl
 LDA #128
 STA QQ17
 LDA #10
 JSR TT26
 LDA #1
 JSR DOXC
 JSR INCYC
 JMP TT146
}

\ ******************************************************************************
\       Name: BAD
\ ******************************************************************************

.BAD
{
 LDA QQ20+3
 CLC
 ADC QQ20+6
 ASL A
 ADC QQ20+10
 RTS
}

\ ******************************************************************************
\       Name: FAROF
\ ******************************************************************************

.FAROF
{
 LDA #&E0
}

\ ******************************************************************************
\       Name: FAROF2
\ ******************************************************************************

.FAROF2
{
 CMP INWK+1
 BCC FA1
 CMP INWK+4
 BCC FA1
 CMP INWK+7

.FA1

 RTS
}

\ ******************************************************************************
\       Name: MAS4
\ ******************************************************************************

.MAS4
{
 ORA INWK+1
 ORA INWK+4
 ORA INWK+7
 RTS
}

\ ******************************************************************************
\       Name: brkd
\ ******************************************************************************

.brkd
{
 BRK
}

\ ******************************************************************************
\       Name: BRBR
\ ******************************************************************************

.BRBR
{
 DEC brkd
 LDX #FF
 TXS
 JSR backtonormal
 TAY
 LDA #7

.BRBRLOOP

 JSR OSWRCH
 INY
 LDA (&FD),Y
 BNE BRBRLOOP
 JMP BR1
}

\ ******************************************************************************
\       Name: DEATH
\ ******************************************************************************

.DEATH
{
 JSR EXNO3
 JSR RES2
 ASL DELTA
 ASL DELTA
 LDX #24
 JSR DET1
 JSR TT66
 JSR BOX
 JSR nWq
 LDA #12
 JSR DOYC
 JSR DOXC
 LDA #YELLOW
 JSR DOCOL
 LDA #146
 JSR ex

.D1

 JSR Ze
 LSR A
 LSR A
 STA INWK
 LDY #0
 STY QQ11
 STY INWK+1
 STY INWK+4
 STY INWK+7
 STY INWK+32
 DEY
 STY MCNT
 EOR #42
 STA INWK+3
 ORA #80
 STA INWK+6
 TXA
 AND #&8F
 STA INWK+29
 STY LASCT
 LSR LASCT
 ROR A
 AND #&87
 STA INWK+30
 LDX #OIL
 LDA XX21-1+2*PLT
 BEQ D3
 BCC D3
 DEX

.D3

 JSR fq1
 JSR DORND
 AND #128
 LDY #31
 STA (INF),Y
 LDA FRIN+4
 BEQ D1
 JSR U%
 STA DELTA

.D2

 JSR M%
 DEC LASCT
 BNE D2
 LDX #31
 JSR DET1
 JMP DEATH2
}

\ ******************************************************************************
\       Name: 
\ ******************************************************************************

.spasto
{
 EQUW &8888
}

\ ******************************************************************************
\       Name: BEGIN
\ ******************************************************************************

.BEGIN
{
\JSRBRKBK
 LDX #(CATF-COMC)
 LDA #0

.BEL1

 STA COMC,X
 DEX
 BPL BEL1
 LDA XX21+SST*2-2
 STA spasto
 LDA XX21+SST*2-1
 STA spasto+1
}

\ ******************************************************************************
\       Name: TT170
\ ******************************************************************************

.TT170
{
 LDX #FF
 TXS
 JSR RESET
}

\ ******************************************************************************
\       Name: DEATH2
\ ******************************************************************************

.DEATH2
{
 LDX #FF
 TXS
 JSR RES2
}

\ ******************************************************************************
\       Name: BR1 part of TT170
\ ******************************************************************************

.BR1
{
 JSR ZEKTRAN
 LDA #3
 JSR DOXC
 LDX #3
 JSR FX200
 LDX #CYL
 LDA #6
 JSR TITLE
 CMP #&60
 BNE P%+5

.BRGO

 JMP DEMON
 CMP #&44
 BNE QU5
 JSR DFAULT
 JSR SVE

.^QU5

 JSR DFAULT
 JSR msblob
 LDA #7
 LDX #ASP
 JSR TITLE
 JSR ping
\JSRhyp1 was here...
 JSR TT111
 JSR jmp
 LDX #5

.likeTT112

 LDA QQ15,X
 STA QQ2,X
 DEX
 BPL likeTT112
 INX
 STX EV
 LDA QQ3
 STA QQ28
 LDA QQ5
 STA tek
 LDA QQ4
 STA gov
}

\ ******************************************************************************
\       Name: BAY
\ ******************************************************************************

.BAY
{
 LDA #FF
 STA QQ12
 LDA #f8
 JMP FRCE
}

\ ******************************************************************************
\       Name: DFAULT
\ ******************************************************************************

.DFAULT
{
 LDX #NT%+8

.QUL1

 LDA NA%-1,X
 STA NAME-1,X
 DEX
 BNE QUL1
 STX QQ11
 JSR CHECK
 CMP CHK
 BNE P%-6
\JSRBELL
 EOR #&A9
 TAX
 LDA COK
 CPX CHK2
 BEQ tZ
 ORA #128

.tZ

 ORA #4
 STA COK
 RTS
}

\ ******************************************************************************
\       Name: TITLE
\ ******************************************************************************

.TITLE
{
 PHA
 STX TYPE
 JSR RESET
 JSR ZEKTRAN
 LDA #32
 JSR DOVDU19
 LDA #1
 JSR TT66
 LDA #RED
 JSR DOCOL
 STZ QQ11\++
 LDA #96
 STA INWK+14
\LSRA
 STA INWK+7
 LDX #127
 STX INWK+29
 STX INWK+30
 INX
 STX QQ17
 LDA TYPE
 JSR NWSHP
 LDA #6
 JSR DOXC
 LDA #30
 JSR plf
 LDA #10
 JSR TT26
 LDA #6
 JSR DOXC
 LDA PATG
 BEQ awe
 LDA #13
 JSR DETOK

.awe

 LDA brkd
 BEQ BRBR2
 INC brkd
 LDA #7
 JSR DOXC
 LDA #10
 JSR DOYC
 LDY #0
 JSR OSWRCH
 INY
 LDA (&FD),Y
 BNE P%-6

.BRBR2

 JSR CLYNS
 STY DELTA
 STY JSTK
 PLA
\JSRex
 JSR DETOK
 LDA #7
 JSR DOXC
 LDA #12
 JSR DETOK
 LDA #12
 STA CNT2
 LDA #5
 STA MCNT

.TLL2

 LDA INWK+7
 CMP #1
 BEQ TL1
 DEC INWK+7

.TL1

 JSR MVEIT
 LDX #128
 STX INWK+6
 LDA MCNT
 AND #3
 BNE nodesire
 STX NEEDKEY

.nodesire

 STZ INWK
 STZ INWK+3\++
 JSR LL9
 LDA KTRAN+12\&FE40
 AND #16
 TAX
 BEQ TL2
 LDA KTRAN
 BNE TL3
 DEC MCNT
 BNE TLL2
 DEC CNT2
 BNE TLL2
 JMP DEMON

.TL2

 DEC JSTK

.TL3

 RTS
}

\ ******************************************************************************
\       Name: CHECK
\ ******************************************************************************

.CHECK
{
 LDX #NT%-2
 CLC
 TXA

.QUL2

 ADC NA%+7,X
 EOR NA%+8,X
 DEX
 BNE QUL2
 RTS
}

\ ******************************************************************************
\       Name: TRNME
\ ******************************************************************************

.TRNME
{
 LDX #7

.GTL1

 LDA INWK+5,X
 STA NA%,X
 DEX
 BPL GTL1
}

\ ******************************************************************************
\       Name: TR1
\ ******************************************************************************

.TR1
{
 LDX #7

.GTL2

 LDA NA%,X
 STA INWK+5,X
 DEX
 BPL GTL2
 RTS
}

\ ******************************************************************************
\       Name: GTMNMEW
\ ******************************************************************************

.GTNMEW
{
\LDY#8\JSRDELAY

.GTNME

 LDX #4

.GTL3

 LDA NA%-5,X
 STA INWK,X
 DEX
 BPL GTL3
 LDA #7
 STA RLINE+2
 LDA #8
 JSR DETOK
 JSR MT26
 LDA #9
 STA RLINE+2
 TYA
 BEQ TR1
 RTS
}
\ ******************************************************************************
\       Name: MT26
\ ******************************************************************************

.MT26
{
 LDA #VIAE
 JSR OSWRCH
 LDA #&81
 JSR OSWRCH
 LDY #8
 JSR DELAY
 JSR FLKB
 LDX #(RLINE MOD256)
 LDY #(RLINE DIV256)
 LDA #0
 JSR OSWORD
 BCC P%+4
 LDY #0
 LDA #VIAE
 JSR OSWRCH
 LDA #1
 JSR OSWRCH
 JMP FEED
}

\ ******************************************************************************
\       Name: RLINE
\ ******************************************************************************

.RLINE
{
 EQUW (INWK+5)
 EQUB 9
 EQUB &21
 EQUB &7B
}

\ ******************************************************************************
\       Name: ZERO
\ ******************************************************************************

.ZERO
{
 LDX #(de-FRIN)
 LDA #0

.ZEL2

 STA FRIN,X
 DEX
 BPL ZEL2
 RTS
}

\ ******************************************************************************
\       Name: ZEBC
\ ******************************************************************************

.ZEBC
{
 LDX #&C
 JSR ZES1
 DEX
}

\ ******************************************************************************
\       Name: ZES1
\ ******************************************************************************

.ZES1
{
 LDY #0
 STY SC
}

\ ******************************************************************************
\       Name: ZES2
\ ******************************************************************************

.ZES2
{
 LDA #0
 STX SC+1

.ZEL1

 STA (SC),Y
 INY
 BNE ZEL1
 RTS
}

\ ******************************************************************************
\       Name: CTLI
\ ******************************************************************************

.CTLI
{
 EQUS ".0"
 EQUB 13
}

\ ******************************************************************************
\       Name: DELI
\ ******************************************************************************

.DELI
{
 EQUS "DELETE:0.E.1234567"
 EQUB 13
}

\ ******************************************************************************
\       Name: CATS
\ ******************************************************************************

.CATS
{
 JSR GTDRV
 BCS DELT-1
 STA CTLI+1
 STA DTW7
 LDA #4
 JSR DETOK
 LDA #DOCATF
 JSR OSWRCH
 LDA #1
 JSR OSWRCH
 STA XC
 LDX #(CTLI MOD256)
 LDY #(CTLI DIV256)
 JSR SCLI2
 LDA #DOCATF
 JSR OSWRCH
 LDA #0
 JSR OSWRCH
 CLC
 RTS
}

\ ******************************************************************************
\       Name: DELT
\ ******************************************************************************

.DELT
{
 JSR CATS \!!
 BCS SVE
 LDA CTLI+1
 STA DELI+7
 LDA #9
 JSR DETOK
 JSR MT26
 TYA
 BEQ SVE
 LDX #9

.DELL1

 LDA INWK+4,X
 STA DELI+8,X
 DEX
 BNE DELL1
 LDX #(DELI MOD256)
 LDY #(DELI DIV256)
 JSR SCLI2
 JMP SVE
}

\ ******************************************************************************
\       Name: stack
\ ******************************************************************************

.stack
{
 BRK
}

\ ******************************************************************************
\       Name: MEBRK
\ ******************************************************************************

.MEBRK
{
 LDX stack
 TXS
 JSR backtonormal
 TAY
 LDA #7

.MEBRKL

 JSR OSWRCH
 INY
 BEQ retry
 LDA (&FD),Y
 BNE MEBRKL
 BEQ retry
}

\ ******************************************************************************
\       Name: CAT
\ ******************************************************************************

.CAT
{
 JSR CATS
}

\ ******************************************************************************
\       Name: retry
\ ******************************************************************************

.retry
{
 JSR t
}

\ ******************************************************************************
\       Name: SVE
\ ******************************************************************************

.SVE
{
 JSR ZEBC
 TSX
 STX stack
 LDA #(MEBRK MOD256)
 SEI
 STA BRKV
 LDA #(MEBRK DIV256)
 STA BRKV+1
 CLI
 LDA #1
 JSR DETOK
 JSR t
 CMP #&31
 BCC SVEX
 CMP #&34
 BEQ DELT
 BCS SVEX
 CMP #&32
 BCS SV1
 JSR GTNMEW
 JSR LOD
 JSR TRNME
 SEC
 BCS SVEX+1

.SV1

 BNE CAT
 JSR GTNMEW
 JSR TRNME
 LSR SVC
 LDA #3
 JSR DETOK
 LDX #NT%

.SVL1

 LDA TP,X
 STA &B00,X
 STA NA%+8,X
 DEX
 BPL SVL1
 JSR CHECK
 STA CHK
 PHA
 ORA #128
 STA K
 EOR COK
 STA K+2
 EOR CASH+2
 STA K+1
 EOR #&5A
 EOR TALLY+1
 STA K+3
 CLC
 JSR BPRNT
 JSR TT67
 PLA
 STA &B00+NT%
 EOR #&A9
 STA CHK2
 STA &AFF+NT%
 LDY #&B
 STY &C0B
 INY
 STY &C0F
 LDA #0
 JSR QUS1

.SVEX

 CLC
 JMP BRKBK
}

\ ******************************************************************************
\       Name: QUS1
\ ******************************************************************************

.QUS1
{
 PHA
 JSR GTDRV
 STA INWK+1
 PLA
 BCS QUR
 PHA
 LDA #FF
 JSR DODOSVN
 PLA
 LDX #(INWK)
 STX &C00
 LDX #0
 LDY #&C
 JSR OSFILE
 JSR CLDELAY
 LDA #0
 JSR DODOSVN
 CLC

.QUR

 RTS
}

\ ******************************************************************************
\       Name: GTDRV
\ ******************************************************************************

.GTDRV
{
 LDA #2
 JSR DETOK
 JSR t
 ORA #&10
 JSR CHPR
 PHA
 JSR FEED
 PLA
 CMP #&30
 BCC LOR
 CMP #&34
 RTS
}

\ ******************************************************************************
\       Name: LOD
\ ******************************************************************************

.LOD
{
\LDX#(MINI MOD256)
\LDY#(MINI DIV256)
\JSRSCLI
\JMPLOL1-2
\LDX#2
\JSRFX200
 JSR ZEBC
 LDY #&B
 STY &C03
 INC &C0B
 LDA #FF
 JSR QUS1
 BCS LOR
 LDA &B00
 BMI ELT2F
 LDX #NT%

.LOL1

 LDA &B00,X
 STA NA%+8,X
 DEX
 BPL LOL1

.^LOR

 SEC
 RTS

.ELT2F

 BRK
 EQUS "IIllegal ELITE II file"
 BRK
\.MINI \EQUS("L.E.MINING B00")\EQUB13
}

\ ******************************************************************************
\       Name: FX200
\ ******************************************************************************

.FX200
{
\LDYMOS\BNESPS1-1
 LDY #0
 LDA #200
 JMP OSBYTE
}

\ ******************************************************************************
\       Name: backtonormal
\ ******************************************************************************

.backtonormal
{
 LDA #VIAE
 JSR OSWRCH
 LDA #1
 JSR OSWRCH
 LDA #0
 BEQ DODOSVN
}

\ ******************************************************************************
\       Name: SCLI2
\ ******************************************************************************

.SCLI2
{
 LDA #FF
 JSR DODOSVN
 JSR SCLI
 LDA #0
}

\ ******************************************************************************
\       Name: DODOSVN
\ ******************************************************************************

.DODOSVN
{
 PHA
 PHY \++
 LDA #DOsvn
 JSR OSWRCH
 PLY
 PLA
 JSR OSWRCH
}

\ ******************************************************************************
\       Name: CLDELAY
\ ******************************************************************************

.CLDELAY
{
 PHX
 PHY
 PHA
 LDY #5
 LDX #0

.CLDEL1

 DEX
 BNE CLDEL1
 DEY
 BNE CLDEL1
 PLA
 PLY
 PLX \++
 RTS
}

\ ******************************************************************************
\       Name: ZEKTRAN
\ ******************************************************************************

.ZEKTRAN
{
 LDX #11
 LDA #0

.ZEKLOOP

 STA KTRAN,X
 DEX
 BPL ZEKLOOP
 RTS
 RTS
}

\ ******************************************************************************
\       Name: SPS1
\ ******************************************************************************

.SPS1
{
 LDX #0
 JSR SPS3
 LDX #3
 JSR SPS3
 LDX #6
 JSR SPS3
}

\ ******************************************************************************
\       Name: TAS2
\ ******************************************************************************

.TAS2
{
 LDA K3
 ORA K3+3
 ORA K3+6
 ORA #1
 STA K3+9
 LDA K3+1
 ORA K3+4
 ORA K3+7

.TAL2

 ASL K3+9
 ROL A
 BCS TA2
 ASL K3
 ROL K3+1
 ASL K3+3
 ROL K3+4
 ASL K3+6
 ROL K3+7
 BCC TAL2

.^TA2

 LDA K3+1
 LSR A
 ORA K3+2
 STA XX15
 LDA K3+4
 LSR A
 ORA K3+5
 STA XX15+1
 LDA K3+7
 LSR A
 ORA K3+8
 STA XX15+2
}

\ ******************************************************************************
\       Name: NORM
\ ******************************************************************************

.NORM
{
 LDA XX15
 JSR SQUA
 STA R
 LDA P
 STA Q
 LDA XX15+1
 JSR SQUA
 STA T
 LDA P
 ADC Q
 STA Q
 LDA T
 ADC R
 STA R
 LDA XX15+2
 JSR SQUA
 STA T
 LDA P
 ADC Q
 STA Q
 LDA T
 ADC R
 STA R
 JSR LL5
 LDA XX15
 JSR TIS2
 STA XX15 \*96/Q
 LDA XX15+1
 JSR TIS2
 STA XX15+1
 LDA XX15+2
 JSR TIS2
 STA XX15+2

.NO1

 RTS
}

\ ******************************************************************************
\       Name: RDKEY
\ ******************************************************************************

.RDKEY
{
 LDA #&F0
 LDY #(buf DIV256)
 LDX #(buf MOD256)
 JSR OSWORD
 LDX KTRAN
 TXA
 RTS
}

\ ******************************************************************************
\       Name: WARP
\ ******************************************************************************

.WARP
{
 LDX JUNK
 LDA FRIN+2,X
 ORA SSPR
 ORA MJ
 BNE WA1
 LDY K%+8
 BMI WA3
 TAY
 JSR MAS2
 CMP #2
 BCC WA1

.WA3

 LDY K%+NI%+8
 BMI WA2
 LDY #NI%
 JSR m
 CMP #2
 BCC WA1

.WA2

 LDA #&81
 STA S
 STA R
 STA P
 LDA K%+8
 JSR ADD
 STA K%+8
 LDA K%+NI%+8
 JSR ADD
 STA K%+NI%+8
 LDA #1
 STA QQ11
 STA MCNT
 LSR A
 STA EV
 LDX VIEW
 JMP LOOK1

.WA1

 LDA #40
 BNE NOISE
}

\ ******************************************************************************
\       Name: ECMOF
\ ******************************************************************************

.ECMOF
{
 LDA #0
 STA ECMA
 STA ECMP
 JSR ECBLB
 LDA #72
 BNE NOISE
}

\ ******************************************************************************
\       Name: EXNO3
\ ******************************************************************************

.EXNO3
{
 LDA #16
 JSR NOISE
 LDA #24
 BNE NOISE
}

\ ******************************************************************************
\       Name: BEEP
\ ******************************************************************************

.BEEP
{
 LDA #32
 BNE NOISE
}

\ ******************************************************************************
\       Name: SFRMIS
\ ******************************************************************************

.SFRMIS
{
 LDX #MSL
 JSR SFS1-2
 BCC KYTB
 LDA #&78
 JSR MESS
 LDA #48
 BNE NOISE
}

\ ******************************************************************************
\       Name: EXNO2
\ ******************************************************************************

.EXNO2
{
 INC TALLY
 BNE EXNO-2
 INC TALLY+1
 LDA #101
 JSR MESS
 LDX #7
}

\ ******************************************************************************
\       Name: EXNO
\ ******************************************************************************

.EXNO
{
 STX T
 LDA #24
 JSR NOS1
 LDA INWK+8
 ASL A
 BEQ P%+5
 LDA #0
 EQUB &2C
 LDA INWK+7
 LSR A
 LSR A
 AND T
 ORA #&F1
 STA XX16+2
 JSR NO3
 LDA #16
}

\ ******************************************************************************
\       Name: NOISE
\ ******************************************************************************

.NOISE
{
 JSR NOS1
}

\ ******************************************************************************
\       Name: NO3
\ ******************************************************************************

.NO3
{
 LDX DNOIZ
 BNE KYTB
 LDX #(XX16 MOD256)
 LDY #(XX16 DIV256)
 LDA #7
 JMP OSWORD
}

\ ******************************************************************************
\       Name: NOS1
\ ******************************************************************************

.NOS1
{
 LSR A
 ADC #3
 TAY
 LDX #7

.NOL1

 LDA #0
 STA XX16,X
 DEX
 LDA SFX,Y
 STA XX16,X
 DEY
 DEX
 BPL NOL1
}

\ ******************************************************************************
\       Name: KYTB
\ ******************************************************************************

.KYTB
{
 RTS
 EQUB &E8
 EQUB &E2
 EQUB &E6
 EQUB &E7
 EQUB &C2
 EQUB &D1
 EQUB &C1
\EQUD&56336443
 EQUD &35237060
 EQUW &2265
 EQUB &45
 EQUB &52
 EQUB &37 \? <>XSA.FBRLtabescTUMEJCP
}

\ ******************************************************************************
\       Name: CTRL
\ ******************************************************************************

.CTRL
{
 LDX #1
}

\ ******************************************************************************
\       Name: DKS4
\ ******************************************************************************

.DKS4
{
 STX DKS4pars+2
 LDX #(DKS4pars MOD256)
 LDY #(DKS4pars DIV256)
 LDA #DODKS4
 JSR OSWORD
 LDA DKS4pars+2
 RTS

.DKS4pars

 EQUB 3
 EQUB 3
 EQUB 0
 RTS
}

\ ******************************************************************************
\       Name: DKS2
\ ******************************************************************************

.DKS2
{
 LDA KTRAN+7,X
 EOR JSTE
 RTS
}

\ ******************************************************************************
\       Name: DKS3
\ ******************************************************************************

.DKS3
{
 STY T
 CPX T
 BNE Dk3
 LDA DAMP-&40,X
 EOR #FF
 STA DAMP-&40,X
 JSR BELL
 JSR DELAY
 LDY T

.Dk3

 RTS
}

\ ******************************************************************************
\       Name: DKJ1
\ ******************************************************************************

.DKJ1
{
 LDA auto
 BNE auton
 LDA KTRAN+1
 STA KL+1
 LDA KTRAN+2
 STA KL+2

.BS1

 LDA KTRAN+12\&FE40
 TAX
 AND #16
 EOR #16
 STA KL+7
 LDX #1
 JSR DKS2
 ORA #1
 STA JSTX
 LDX #2
 JSR DKS2
 EOR JSTGY
 STA JSTY
 JMP DK4
}

\ ******************************************************************************
\       Name: U%
\ ******************************************************************************

.U%
{
 LDA#0
 LDY #16

.DKL3

 STA KL,Y
 DEY
 BNE DKL3
 RTS
}

\ ******************************************************************************
\       Name: DOKEY
\ ******************************************************************************

.DOKEY
{
 LDA NEEDKEY
 BEQ P%+5
 JSR RDKEY
 LDA #FF
 STA NEEDKEY
 JSR U%
 LDA JSTK
 BNE DKJ1
 STA BSTK
 LDX #7

.DKL2

 LDA KTRAN,X
 STA KL,X
 DEX
 BNE DKL2
 LDA auto
 BEQ DK15

.^auton

 JSR ZINF
 LDA #96
 STA INWK+14
 ORA #128
 STA INWK+22
 STA TYPE
 LDA DELTA
 STA INWK+27
 JSR DOCKIT
 LDA INWK+27
 CMP #22
 BCC P%+4
 LDA #22
 STA DELTA
 LDA #FF
 LDX #0
 LDY INWK+28
 BEQ DK11
 BMI P%+3
 INX
 STA KY1,X

.DK11

 LDA #128
 LDX #0
 ASL INWK+29
 BEQ DK12
 BCC P%+3
 INX
 BIT INWK+29
 BPL DK14
 LDA #64
 STA JSTX
 LDA #0

.DK14

 STA KY3,X
 LDA JSTX

.DK12

 STA JSTX
 LDA #128
 LDX #0
 ASL INWK+30
 BEQ DK13
 BCS P%+3
 INX
 STA KY5,X
 LDA JSTY

.DK13

 STA JSTY

.DK15

 LDX JSTX
 LDA #7
 LDY KL+3
 BEQ P%+5
 JSR BUMP2
 LDY KL+4
 BEQ P%+5
 JSR REDU2
 STX JSTX
 ASL A
 LDX JSTY
 LDY KL+5
 BEQ P%+5
 JSR REDU2
 LDY KL+6
 BEQ P%+5
 JSR BUMP2
 STX JSTY
}

\ ******************************************************************************
\       Name: DK4
\ ******************************************************************************

.DK4
{
 LDX KTRAN
 STX KL
 CPX #&69
 BNE DK2

.^FREEZE

 JSR WSCAN
 JSR RDKEY
 CPX #&51
 BNE DK6
 LDA #0
 STA DNOIZ

.DK6

 LDY #&40

.DKL4

 JSR DKS3
 INY
 CPY #&47
 BNE DKL4
 CPX #&10
 BNE DK7
 STX DNOIZ

.DK7

 CPX #&70
 BNE P%+5
 JMP DEATH2
 CPX #&64
 BNE nobit
 LDA BSTK
 EOR #FF
 STA BSTK
 STA JSTK
 STA JSTE

.nobit

 CPX #&32
 BEQ savscr
 CPX #&59
 BNE FREEZE

.DK2

 LDA QQ11
 BNE out
 LDY #16
 LDA #FF

.DKL1

 LDX KYTB,Y
 CPX KL
 BNE DK1
 STA KL,Y

.DK1

 DEY
 CPY #7
 BNE DKL1
 RTS

.savscr

 JSR CTRL
 BPL FREEZE
 LDX #&11

.savscl

 LDA oscobl2,X
 STA oscobl,X
 DEX
 BPL savscl
 LDX #(oscobl MOD256)
 LDY #(oscobl DIV256)
 LDA #0
 JSR OSFILE
 INC scname+11
 JMP FREEZE
}

\ ******************************************************************************
\       Name: TT217
\ ******************************************************************************

.TT217
{
 STY YSAV

.^t

 LDY #2
 JSR DELAY
 JSR RDKEY
 BNE t

.t2

 JSR RDKEY
 BEQ t2
 TAY
 LDA TRANTABLE,Y
 LDY YSAV
 TAX

.^out

 RTS
}

\ ******************************************************************************
\       Name: me1
\ ******************************************************************************

.me1
{
 STX DLY
 PHA
 LDA MCH
 JSR mes9
 PLA
}

\ ******************************************************************************
\       Name: MESS
\ ******************************************************************************

.MESS
{
 PHA
 LDA #YELLOW
 JSR DOCOL
 PLA
 LDX #0
 STX QQ17
 PHA
 LDA messXC
 JSR DOXC
 LDA #22
 TAY
 JSR DOYC
 PLA
 CPX DLY
 BNE me1
 STY DLY
 STA MCH
 LDA #&C0
 STA DTW4
 LDA de
 LSR A
 LDA #0
 BCC P%+4
 LDA #10
 STA DTW5
 LDA MCH
 JSR TT27
 LDA #32
 SEC
 SBC DTW5
 LSR A
 STA messXC
 JSR DOXC
 JSR MT15
 LDA MCH
}

\ ******************************************************************************
\       Name: mes9
\ ******************************************************************************

.mes9
{
 JSR TT27
 LSR de
 BCC out
 LDA #253
 JMP TT27
}

\ ******************************************************************************
\       Name: OUCH
\ ******************************************************************************

.OUCH
{
 JSR DORND
 BMI out
 CPX #22
 BCS out
 LDA QQ20,X
 BEQ out
 LDA DLY
 BNE out
 LDY #3
 STY de
 STA QQ20,X
 CPX #17
 BCS ou1
 TXA
 ADC #208
 BNE MESS

.ou1

 BEQ ou2
 CPX #18
 BEQ ou3
 TXA
 ADC #113-20
 JMP MESS

.ou2

 LDA #108
 JMP MESS

.ou3

 LDA #111
 JMP MESS
}

\ ******************************************************************************
\       Name: QQ23
\ ******************************************************************************

.QQ23
{
 EQUD &1068213
 EQUD &30A8114
 EQUD &7028341 \Food
 EQUD &1FE28528
 EQUD &FFB8553
 EQUD &33608C4
 EQUD &78081DEB \slvs..
 EQUD &3380E9A
 EQUD &7280675
 EQUD &1F11014E
 EQUD &71D0D7C \comps
 EQUD &3FDC89B0
 EQUD &03358120
\EQUD&360A118
 EQUD &742A161
 EQUD &1F37A2AB \platnm
 EQUD &FFAC12D
 EQUD &7C00F35 \Gms.
}

\ ******************************************************************************
\       Name: oscobl
\ ******************************************************************************

.oscobl
{
 EQUW scname
 EQUD &FFFF4000
 EQUD &FFFF4000
 EQUD &FFFF4000
 EQUD &FFFF8000
}

\ ******************************************************************************
\       Name: scname
\ ******************************************************************************

.scname
{
 EQUS ":0.X.SCREEN1"
 EQUB &D
}

\ ******************************************************************************
\       Name: oscobl2
\ ******************************************************************************

.oscobl2
{
 EQUW scname
 EQUD &FFFF4000
 EQUD &FFFF4000
 EQUD &FFFF4000
 EQUD &FFFF8000
}

\ ******************************************************************************
\       Name: TIDY
\ ******************************************************************************

{
.TI2

 TYA
 LDY #2
 JSR TIS3
 STA INWK+20 \Uz = -(FxUx+FyUy)/Fz
 JMP TI3

.TI1

 TAX
 LDA XX15+1
 AND #&60
 BEQ TI2
 LDA #2
 JSR TIS3
 STA INWK+18
 JMP TI3

.^TIDY

 LDA INWK+10
 STA XX15
 LDA INWK+12
 STA XX15+1
 LDA INWK+14
 STA XX15+2
 JSR NORM
 LDA XX15
 STA INWK+10
 LDA XX15+1
 STA INWK+12
 LDA XX15+2
 STA INWK+14
 LDY #4
 LDA XX15
 AND #&60
 BEQ TI1
 LDX #2
 LDA #0
 JSR TIS3
 STA INWK+16

.TI3

 LDA INWK+16
 STA XX15
 LDA INWK+18
 STA XX15+1
 LDA INWK+20
 STA XX15+2
 JSR NORM
 LDA XX15
 STA INWK+16
 LDA XX15+1
 STA INWK+18
 LDA XX15+2
 STA INWK+20
 LDA INWK+12
 STA Q
 LDA INWK+20
 JSR MULT12
 LDX INWK+14
 LDA INWK+18
 JSR TIS1
 EOR #128
 STA INWK+22
 LDA INWK+16
 JSR MULT12
 LDX INWK+10
 LDA INWK+20
 JSR TIS1
 EOR #128
 STA INWK+24
 LDA INWK+18
 JSR MULT12
 LDX INWK+12
 LDA INWK+16
 JSR TIS1
 EOR #128
 STA INWK+26 \FxU/96(LHS)
 LDA #0
 LDX #14

.TIL1

 STA INWK+9,X
 DEX
 DEX
 BPL TIL1
 RTS
}

\ ******************************************************************************
\       Name: TIS2
\ ******************************************************************************

.TIS2
{
 TAY
 AND #127
 CMP Q
 BCS TI4
 LDX #254
 STX T

.TIL2

 ASL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL T
 BCS TIL2
 LDA T
 LSR A
 LSR A
 STA T
 LSR A
 ADC T
 STA T
 TYA
 AND #128
 ORA T
 RTS

.TI4

 TYA
 AND #128
 ORA #96
 RTS
}

\ ******************************************************************************
\       Name: TIS3
\ ******************************************************************************

.TIS3
{
 STA P+2
 LDA INWK+10,X
 STA Q
 LDA INWK+16,X
 JSR MULT12
 LDX INWK+10,Y
 STX Q
 LDA INWK+16,Y
 JSR MAD
 STX P
 LDY P+2
 LDX INWK+10,Y
 STX Q
 EOR #128
}

\ ******************************************************************************
\       Name: 
\ ******************************************************************************

.DVIDT
{
 STA P+1
 EOR Q
 AND #128
 STA T
 LDA #0
 LDX #16
 ASL P
 ROL P+1
 ASL Q
 LSR Q

.DVL2

 ROL A
 CMP Q
 BCC P%+4
 SBC Q
 ROL P
 ROL P+1
 DEX
 BNE DVL2
 LDA P
 ORA T
 RTS
}

\ ******************************************************************************
\       Name: buf
\ ******************************************************************************

.buf
{
 EQUB 2
 EQUB 15
}

\ ******************************************************************************
\       Name: KTRAN
\ ******************************************************************************

.KTRAN
{
 EQUS "12345678901234567"
}

\ ******************************************************************************
\       Name: TRANTABLE
\ ******************************************************************************

.TRANTABLE
{
 EQUB &03, &8C, &40, &FE, &A0, &7F, &8C, &43
 EQUB &FE, &8E, &4F, &FE, &AE, &4F, &FE, &60
 EQUB &71, &33, &34, &35, &84, &38, &87, &2D
 EQUB &5E, &8C, &84, &EC, &86, &ED, &60, &00
 EQUB &80, &77, &65, &74, &37, &69, &39, &30
 EQUB &5F, &8E, &6C, &FE, &FD, &6C, &FA, &00
 EQUB &31, &32, &64, &72, &36, &75, &6F, &70
 EQUB &5B, &8F, &2C, &B7, &D9, &6C, &28, &02
 EQUB &01, &61, &78, &66, &79, &6A, &6B, &40
 EQUB &3A, &0D, &00, &FF, &01, &02, &09, &0A
 EQUB &02, &73, &63, &67, &68, &6E, &6C, &3B
 EQUB &5D, &7F, &AC, &44, &02, &A2, &00, &60
 EQUB &00, &7A, &20, &76, &62, &6D, &2C, &2E
 EQUB &2F, &8B, &AE, &41, &02, &4C, &AD, &E1
 EQUB &1B, &81, &82, &83, &85, &86, &88, &89
 EQUB &5C, &8D, &6C, &20, &02, &D0, &EB, &A2
 EQUB &08
}

\ ******************************************************************************
\
\ Save output/ELTF.bin
\
\ ******************************************************************************

PRINT "ELITE F"
PRINT "Assembled at ", ~CODE_F%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - CODE_F%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_F%

PRINT "S.ELTF ", ~CODE_F%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_F%
SAVE "output/ELTF.bin", CODE_F%, P%, LOAD%

\ ******************************************************************************
\
\ ELITE G FILE
\
\ Produces the binary file ELTG.bin that gets loaded by elite-bcfs.asm.
\
\ ******************************************************************************

CODE_G% = P%
LOAD_G% = LOAD% + P% - CODE%

IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTG-align.bin"
ELSE
 ALIGN &100
ENDIF

\ ******************************************************************************
\       Name: log
\ ******************************************************************************

.log
{
IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTG-log.bin"
ELSE
 SKIP 1
 FOR I%, 1, 255
   B% = INT(&2000 * LOG(I%) / LOG(2) + 0.5)
   EQUB B% DIV 256
 NEXT
ENDIF
}

\ ******************************************************************************
\       Name: logL
\ ******************************************************************************

.logL
{
IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTG-logL.bin"
ELSE
 SKIP 1
 FOR I%, 1, 255
   B% = INT(&2000 * LOG(I%) / LOG(2) + 0.5)
   EQUB B% MOD 256
 NEXT
ENDIF
}

\ ******************************************************************************
\       Name: antilog
\ ******************************************************************************

.antilog
{
IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTG-antilog.bin"
ELSE
 FOR I%, 0, 255
   B% = INT(2^((I% / 2 + 128) / 16) + 0.5) DIV 256
   IF B% = 256
     EQUB B%+1
   ELSE
     EQUB B%
   ENDIF
 NEXT
ENDIF
}

\ ******************************************************************************
\       Name: antilogODD
\ ******************************************************************************

.antilogODD
{
IF _MATCH_EXTRACTED_BINARIES
 INCBIN "extracted/workspaces/ELTG-antilogODD.bin"
ELSE
 FOR I%, 0, 255
   B% = INT(2^((I% / 2 + 128.25) / 16) + 0.5) DIV 256
   IF B% = 256
     EQUB B%+1
   ELSE
     EQUB B%
   ENDIF
 NEXT
ENDIF
}

\ ******************************************************************************
\       Name: SHPPT
\ ******************************************************************************

.SHPPT
{
 JSR EE51
 JSR PROJ
 ORA K3+1
 BNE nono
 LDA K4
 CMP #Y*2-2
 BCS nono
 LDY #2
 JSR Shpt
 LDY #6
 LDA K4
 ADC #1
 JSR Shpt
 LDA #8
 ORA XX1+31
 STA XX1+31
 LDA #9
 JMP LL81+2
 PLA
 PLA

.nono

 LDA #&F7
 AND XX1+31
 STA XX1+31
 RTS

.Shpt

 STA (XX19),Y
 INY
 INY
 STA (XX19),Y
 LDA K3
 DEY
 STA (XX19),Y
 ADC #3
 BCS nono-2
 DEY
 DEY
 STA (XX19),Y
 RTS
}

\ ******************************************************************************
\       Name: LL5
\ ******************************************************************************

.LL5
{
 LDY R
 LDA Q
 STA S
 LDX #0
 STX Q
 LDA #8
 STA T

.LL6

 CPX Q
 BCC LL7
 BNE LL8
 CPY #&40
 BCC LL7

.LL8

 TYA
 SBC #&40
 TAY
 TXA
 SBC Q
 TAX

.LL7

 ROL Q
 ASL S
 TYA
 ROL A
 TAY
 TXA
 ROL A
 TAX
 ASL S
 TYA
 ROL A
 TAY
 TXA
 ROL A
 TAX
 DEC T
 BNE LL6
 RTS
}

\ ******************************************************************************
\       Name: LL28
\ ******************************************************************************

.LL28
{
 CMP Q
 BCS LL2
 STA widget
 TAX
 BEQ LLfix
 LDA logL,X
 LDX Q
 SEC
 SBC logL,X
 BMI noddlog
 LDX widget
 LDA log,X
 LDX Q
 SBC log,X
 BCS LL2
 TAX
 LDA antilog,X

.LLfix

 STA R
 RTS

.noddlog

 LDX widget
 LDA log,X
 LDX Q
 SBC log,X
 BCS LL2
 TAX
 LDA antilogODD,X
 STA R
 RTS

.^LL31

 ASL A
 BCS LL29
 CMP Q
 BCC P%+4
 SBC Q
 ROL R
 BCS LL31
 RTS

.LL29

 SBC Q
 SEC
 ROL R
 BCS LL31
 LDA R
 RTS

.LL2

 LDA #FF
 STA R
 RTS
}

\ ******************************************************************************
\       Name: LL38
\ ******************************************************************************

.LL38
{
 EOR S
 BMI LL39
 LDA Q
 CLC
 ADC R
 RTS

.LL39

 LDA R
 SEC
 SBC Q
 BCC P%+4
 CLC
 RTS
 PHA
 LDA S
 EOR #128
 STA S
 PLA
 EOR #255
 ADC #1
 RTS
}

\ ******************************************************************************
\       Name: LL51
\ ******************************************************************************

.LL51
{
 LDX #0
 LDY #0

.ll51

 LDA XX15
 STA Q
 LDA XX16,X
 JSR FMLTU
 STA T
 LDA XX15+1
 EOR XX16+1,X
 STA S
 LDA XX15+2
 STA Q
 LDA XX16+2,X
 JSR FMLTU
 STA Q
 LDA T
 STA R
 LDA XX15+3
 EOR XX16+3,X
 JSR LL38
 STA T
 LDA XX15+4
 STA Q
 LDA XX16+4,X
 JSR FMLTU
 STA Q
 LDA T
 STA R
 LDA XX15+5
 EOR XX16+5,X
 JSR LL38
 STA XX12,Y
 LDA S
 STA XX12+1,Y
 INY
 INY
 TXA
 CLC
 ADC #6
 TAX
 CMP #17
 BCC ll51
 RTS
}

\ ******************************************************************************
\       Name: LL9 (Part 1 of 11)
\ ******************************************************************************

{
.LL25

 JMP PLANET

.^LL9

 LDX TYPE
 BMI LL25
 LDA shpcol,X
 JSR DOCOL \ ENTRY
 LDA #31
 STA XX4
 LDA NEWB
 BMI EE51
 LDA #32
 BIT XX1+31
 BNE EE28
 BPL EE28
 ORA XX1+31
 AND #&3F
 STA XX1+31
 LDA #0
 LDY #28
 STA (INF),Y
 LDY #30
 STA (INF),Y
 JSR EE51
 LDY #1
 LDA #18
 STA (XX19),Y
 LDY #7
 LDA (XX0),Y
 LDY #2
 STA (XX19),Y
\LDAXX1+32\AND#&7F\STAXX1+32

.EE55

 INY
 JSR DORND
 STA (XX19),Y
 CPY #6
 BNE EE55

.EE28

 LDA XX1+8

.EE49

 BPL LL10

.LL14

 LDA XX1+31
 AND #32
 BEQ EE51
 LDA XX1+31
 AND #&F7
 STA XX1+31
 JMP DOEXP

.^EE51

 LDA #8
 BIT XX1+31
 BEQ LL10-1
 EOR XX1+31
 STA XX1+31
 JMP LL155
\LL24
 RTS

\ ******************************************************************************
\       Name: LL9 (Part 2 of 11)
\ ******************************************************************************

.LL10

 LDA XX1+7
 CMP #&C0
 BCS LL14
 LDA XX1
 CMP XX1+6
 LDA XX1+1
 SBC XX1+7
 BCS LL14
 LDA XX1+3
 CMP XX1+6
 LDA XX1+4
 SBC XX1+7
 BCS LL14
 LDY #6
 LDA (XX0),Y
 TAX
 LDA #255
 STA XX3,X
 STA XX3+1,X
 LDA XX1+6
 STA T
 LDA XX1+7
 LSR A
 ROR T
 LSR A
 ROR T
 LSR A
 ROR T
 LSR A
 BNE LL13
 LDA T
 ROR A
 LSR A
 LSR A
 LSR A
 STA XX4
 BPL LL17

.LL13

 LDY #13
 LDA (XX0),Y
 CMP XX1+7
 BCS LL17
 LDA #32
 AND XX1+31
 BNE LL17
 JMP SHPPT

\ ******************************************************************************
\       Name: LL9 (Part 3 of 11)
\ ******************************************************************************

.LL17

 LDX #5

.LL15

 LDA XX1+21,X
 STA XX16,X
 LDA XX1+15,X
 STA XX16+6,X
 LDA XX1+9,X
 STA XX16+12,X
 DEX
 BPL LL15
 LDA #197 \NORM
 STA Q
 LDY #16

.LL21

 LDA XX16,Y
 ASL A
 LDA XX16+1,Y
 ROL A
 JSR LL28
 LDX R
 STX XX16,Y
 DEY
 DEY
 BPL LL21
 LDX #8

.ll91

 LDA XX1,X
 STA XX18,X
 DEX
 BPL ll91
 LDA #255
 STA XX2+15
 LDY #12
 LDA XX1+31
 AND #32
 BEQ EE29

\ ******************************************************************************
\       Name: LL9 (Part 4 of 11)
\ ******************************************************************************

 LDA (XX0),Y
 LSR A
 LSR A
 TAX
 LDA #FF

.EE30

 STA XX2,X
 DEX
 BPL EE30
 INX
 STX XX4

.LL41

 JMP LL42

\ ******************************************************************************
\       Name: LL9 (Part 5 of 11)
\ ******************************************************************************

.EE29

 LDA (XX0),Y
 BEQ LL41
 STA XX20
\DtProd^XX2
 LDY #18
 LDA (XX0),Y
 TAX
 LDA XX18+7

.LL90

 TAY
 BEQ LL91
 INX
 LSR XX18+4
 ROR XX18+3
 LSR XX18+1
 ROR XX18
 LSR A
 ROR XX18+6
 TAY
 BNE LL90+3

.LL91

 STX XX17
 LDA XX18+8
 STA XX15+5
 LDA XX18
 STA XX15
 LDA XX18+2
 STA XX15+1
 LDA XX18+3
 STA XX15+2
 LDA XX18+5
 STA XX15+3
 LDA XX18+6
 STA XX15+4
 JSR LL51
 LDA XX12
 STA XX18
 LDA XX12+1
 STA XX18+2
 LDA XX12+2
 STA XX18+3
 LDA XX12+3
 STA XX18+5
 LDA XX12+4
 STA XX18+6
 LDA XX12+5
 STA XX18+8
 LDY #4
 LDA (XX0),Y
 CLC
 ADC XX0
 STA V
 LDY #17
 LDA (XX0),Y
 ADC XX0+1
 STA V+1
 LDY #0

.LL86

 LDA (V),Y
 STA XX12+1
 AND #31
 CMP XX4
 BCS LL87
 TYA
 LSR A
 LSR A
 TAX
 LDA #255
 STA XX2,X
 TYA
 ADC #4
 TAY
 JMP LL88

.LL87

 LDA XX12+1
 ASL A
 STA XX12+3
 ASL A
 STA XX12+5
 INY
 LDA (V),Y
 STA XX12
 INY
 LDA (V),Y
 STA XX12+2
 INY
 LDA (V),Y
 STA XX12+4
 LDX XX17
 CPX #4
 BCC LL92

.LL143

\Face offset<<PV
 LDA XX18
 STA XX15
 LDA XX18+2
 STA XX15+1
 LDA XX18+3
 STA XX15+2
 LDA XX18+5
 STA XX15+3
 LDA XX18+6
 STA XX15+4
 LDA XX18+8
 STA XX15+5
 JMP LL89

.ovflw

 LSR XX18
 LSR XX18+6
 LSR XX18+3
 LDX #1

.LL92

 LDA XX12
 STA XX15
 LDA XX12+2
 STA XX15+2
 LDA XX12+4

.LL93

 DEX
 BMI LL94
 LSR XX15
 LSR XX15+2
 LSR A
 DEX
 BPL LL93+3

.LL94

 STA R
 LDA XX12+5
 STA S
 LDA XX18+6
 STA Q
 LDA XX18+8
 JSR LL38
 BCS ovflw
 STA XX15+4
 LDA S
 STA XX15+5
 LDA XX15
 STA R
 LDA XX12+1
 STA S
 LDA XX18
 STA Q
 LDA XX18+2
 JSR LL38
 BCS ovflw
 STA XX15
 LDA S
 STA XX15+1
 LDA XX15+2
 STA R
 LDA XX12+3
 STA S
 LDA XX18+3
 STA Q
 LDA XX18+5
 JSR LL38
 BCS ovflw
 STA XX15+2
 LDA S
 STA XX15+3

.LL89

 LDA XX12
 STA Q
 LDA XX15
 JSR FMLTU
 STA T
 LDA XX12+1
 EOR XX15+1
 STA S
 LDA XX12+2
 STA Q
 LDA XX15+2
 JSR FMLTU
 STA Q
 LDA T
 STA R
 LDA XX12+3
 EOR XX15+3
 JSR LL38
 STA T
 LDA XX12+4
 STA Q
 LDA XX15+4
 JSR FMLTU
 STA Q
 LDA T
 STA R
 LDA XX15+5
 EOR XX12+5
 JSR LL38
 PHA
 TYA
 LSR A
 LSR A
 TAX
 PLA
 BIT S
 BMI P%+4
 LDA #0
 STA XX2,X
 INY

.LL88

 CPY XX20
 BCS LL42
 JMP LL86

\ ******************************************************************************
\       Name: LL9 (Part 6 of 11)
\ ******************************************************************************

.LL42

\DO nodeX-Ycoords
\TrnspMat
 LDY XX16+2
 LDX XX16+3
 LDA XX16+6
 STA XX16+2
 LDA XX16+7
 STA XX16+3
 STY XX16+6
 STX XX16+7
 LDY XX16+4
 LDX XX16+5
 LDA XX16+12
 STA XX16+4
 LDA XX16+13
 STA XX16+5
 STY XX16+12
 STX XX16+13
 LDY XX16+10
 LDX XX16+11
 LDA XX16+14
 STA XX16+10
 LDA XX16+15
 STA XX16+11
 STY XX16+14
 STX XX16+15
 LDY #8
 LDA (XX0),Y
 STA XX20
 LDA XX0
 CLC
 ADC #20
 STA V
 LDA XX0+1
 ADC #0
 STA V+1
 LDY #0
 STY CNT

.LL48

 STY XX17
 LDA (V),Y
 STA XX15
 INY
 LDA (V),Y
 STA XX15+2
 INY
 LDA (V),Y
 STA XX15+4
 INY
 LDA (V),Y
 STA T
 AND #31
 CMP XX4
 BCC LL49-3
 INY
 LDA (V),Y
 STA P
 AND #15
 TAX
 LDA XX2,X
 BNE LL49
 LDA P
 LSR A
 LSR A
 LSR A
 LSR A
 TAX
 LDA XX2,X
 BNE LL49
 INY
 LDA (V),Y
 STA P
 AND #15
 TAX
 LDA XX2,X
 BNE LL49
 LDA P
 LSR A
 LSR A
 LSR A
 LSR A
 TAX
 LDA XX2,X
 BNE LL49
 JMP LL50

.LL49

 LDA T
 STA XX15+1
 ASL A
 STA XX15+3
 ASL A
 STA XX15+5
 JSR LL51
 LDA XX1+2
 STA XX15+2
 EOR XX12+1
 BMI LL52
 CLC
 LDA XX12
 ADC XX1
 STA XX15
 LDA XX1+1
 ADC #0
 STA XX15+1
 JMP LL53

.LL52

 LDA XX1
 SEC
 SBC XX12
 STA XX15
 LDA XX1+1
 SBC #0
 STA XX15+1
 BCS LL53
 EOR #FF
 STA XX15+1
 LDA #1
 SBC XX15
 STA XX15
 BCC P%+4
 INC XX15+1
 LDA XX15+2
 EOR #128
 STA XX15+2

.LL53

 LDA XX1+5
 STA XX15+5
 EOR XX12+3
 BMI LL54
 CLC
 LDA XX12+2
 ADC XX1+3
 STA XX15+3
 LDA XX1+4
 ADC #0
 STA XX15+4
 JMP LL55

.LL54

 LDA XX1+3
 SEC
 SBC XX12+2
 STA XX15+3
 LDA XX1+4
 SBC #0
 STA XX15+4
 BCS LL55
 EOR #255
 STA XX15+4
 LDA XX15+3
 EOR #255
 ADC #1
 STA XX15+3
 LDA XX15+5
 EOR #128
 STA XX15+5
 BCC LL55
 INC XX15+4

.LL55

 LDA XX12+5
 BMI LL56
 LDA XX12+4
 CLC
 ADC XX1+6
 STA T
 LDA XX1+7
 ADC #0
 STA U
 JMP LL57

\ ******************************************************************************
\       Name: LL61
\ ******************************************************************************

.LL61

 LDX Q
 BEQ LL84
 LDX #0

.LL63

 LSR A
 INX
 CMP Q
 BCS LL63
 STX S
 JSR LL28
 LDX S
 LDA R

.LL64

 ASL A
 ROL U
 BMI LL84
 DEX
 BNE LL64
 STA R
 RTS

.LL84

 LDA #50
 STA R
 STA U
 RTS

\ ******************************************************************************
\       Name: LL62
\ ******************************************************************************

.LL62

 LDA #128
 SEC
 SBC R
 STA XX3,X
 INX
 LDA #0
 SBC U
 STA XX3,X
 JMP LL66

\ ******************************************************************************
\       Name: LL9 (Part 7 of 11)
\ ******************************************************************************

.LL56

 LDA XX1+6
 SEC
 SBC XX12+4
 STA T
 LDA XX1+7
 SBC #0
 STA U
 BCC LL140
 BNE LL57
 LDA T
 CMP #4
 BCS LL57

.LL140

 LDA #0
 STA U
 LDA #4
 STA T

.LL57

 LDA U
 ORA XX15+1
 ORA XX15+4
 BEQ LL60
 LSR XX15+1
 ROR XX15
 LSR XX15+4
 ROR XX15+3
 LSR U
 ROR T
 JMP LL57

\ ******************************************************************************
\       Name: LL9 (Part 8 of 11)
\ ******************************************************************************

.LL60

 LDA T
 STA Q
 LDA XX15
 CMP Q
 BCC LL69
 JSR LL61
 JMP LL65

.LL69

 JSR LL28

.LL65

 LDX CNT
 LDA XX15+2
 BMI LL62
 LDA R
 CLC
 ADC #128
 STA XX3,X
 INX
 LDA U
 ADC #0
 STA XX3,X

.LL66

 TXA
 PHA
 LDA #0
 STA U
 LDA T
 STA Q
 LDA XX15+3
 CMP Q
 BCC LL67
 JSR LL61
 JMP LL68

.LL70

 LDA #Y
 CLC
 ADC R
 STA XX3,X
 INX
 LDA #0
 ADC U
 STA XX3,X
 JMP LL50

.LL67

 JSR LL28

.LL68

 PLA
 TAX
 INX
 LDA XX15+5
 BMI LL70
 LDA #Y
 SEC
 SBC R
 STA XX3,X
 INX
 LDA #0
 SBC U
 STA XX3,X

.LL50

 CLC
 LDA CNT
 ADC #4
 STA CNT
 LDA XX17
 ADC #6
 TAY
 BCS LL72
 CMP XX20
 BCS LL72
 JMP LL48

\ ******************************************************************************
\       Name: LL9 (Part 9 of 11)
\ ******************************************************************************

.LL72

 LDA XX1+31
 AND #32
 BEQ EE31
 LDA XX1+31
 ORA #8
 STA XX1+31
 JMP DOEXP

.EE31

 LDA #8
 BIT XX1+31
 BEQ LL74
 JSR LL155
 LDA #8

.LL74

 TSB XX1+31\++
 LDY #9
 LDA (XX0),Y
 STA XX20
\LDY#0
 STZ U
 STZ XX17
\++
 INC U
 BIT XX1+31
 BVC LL170
 LDA #64
 TRB XX1+31\++
 LDY #6
 LDA (XX0),Y
 TAY
 LDX XX3,Y
 STX XX15
 INX
 BEQ LL170
 LDX XX3+1,Y
 STX XX15+1
 INX
 BEQ LL170
 LDX XX3+2,Y
 STX XX15+2
 LDX XX3+3,Y
 STX XX15+3
 LDA #0
 STA XX15+4
 STA XX15+5
 STA XX12+1
 LDA XX1+6
 STA XX12
 LDA XX1+2
 BPL P%+4
 DEC XX15+4
 JSR LL145
 BCS LL170
 LDA U
 ADC #3
 TAY
 LDA #FF
 STA (XX19),Y
 INY \Red laser
 LDA XX15
 STA (XX19),Y
 INY
 LDA XX15+1
 STA (XX19),Y
 INY
 LDA XX15+2
 STA (XX19),Y
 INY
 LDA XX15+3
 STA (XX19),Y
 INY
 STY U

\ ******************************************************************************
\       Name: LL9 (Part 10 of 11)
\ ******************************************************************************

.LL170

\ Calculate new lines
 LDY #3
 CLC
 LDA (XX0),Y
 ADC XX0
 STA V
 LDY #16
 LDA (XX0),Y
 ADC XX0+1
 STA V+1
 LDY #5
 LDA (XX0),Y
 STA T1
 LDY XX17

.LL75

 LDA (V),Y
 CMP XX4
 BCC LL78
 INY
 LDA (V),Y
 INY
 STA P
 AND #15
 TAX
 LDA XX2,X
 BNE LL79
 LDA P
 LSR A
 LSR A
 LSR A
 LSR A
 TAX
 LDA XX2,X
 BEQ LL78

.LL79

 LDA (V),Y
 TAX
 INY
 LDA (V),Y
 STA Q
 LDA XX3+1,X
 STA XX15+1
 LDA XX3,X
 STA XX15
 LDA XX3+2,X
 STA XX15+2
 LDA XX3+3,X
 STA XX15+3
 LDX Q
 LDA XX3,X
 STA XX15+4
 LDA XX3+3,X
 STA XX12+1
 LDA XX3+2,X
 STA XX12
 LDA XX3+1,X
 STA XX15+5
 JSR LL147
 BCS LL78

.LL80

 LDY U
 LDA XX15
 STA (XX19),Y
 INY
 LDA XX15+1
 STA (XX19),Y
 INY
 LDA XX15+2
 STA (XX19),Y
 INY
 LDA XX15+3
 STA (XX19),Y
 INY
 STY U
 CPY T1
 BCS LL81

.LL78

 INC XX17
 LDY XX17
 CPY XX20
 BCS LL81
 LDY #0
 LDA V
 ADC #4
 STA V
 BCC ll81
 INC V+1

.ll81

 JMP LL75

.^LL81

 LDA U
\LDY#0
 STA (XX19) \++

\ ******************************************************************************
\       Name: LL9 (Part 11 of 11)
\ ******************************************************************************

.LL155

 LDA NEEDKEY
 BEQ notneed
 STZ NEEDKEY \++
 JSR RDKEY

.notneed

 LDA (XX19)
 CMP #5
 BCC nolines
 LDA #&81
 JSR OSWRCH
\ CLEAR LINEstr
 LDY #0
 LDA (XX19),Y
 STA XX20

.LL27

 LDA (XX19),Y
 JSR OSWRCH\NVOSWRCH
 INY
 CPY XX20
 BCC LL27

.nolines

\RTS
 RTS
}

\ ******************************************************************************
\       Name: LL118
\ ******************************************************************************

.LL118
{
 LDA XX15+1
 BPL LL119
 STA S
 JSR LL120  \ X1<0
 TXA
 CLC
 ADC XX15+2
 STA XX15+2
 TYA
 ADC XX15+3
 STA XX15+3
 LDA #0
 STA XX15
 STA XX15+1
 TAX

.LL119

 BEQ LL134
 STA S
 DEC S
 JSR LL120 \ X1>255
 TXA
 CLC
 ADC XX15+2
 STA XX15+2
 TYA
 ADC XX15+3
 STA XX15+3
 LDX #FF
 STX XX15
 INX
 STX XX15+1

.LL134

 LDA XX15+3
 BPL LL135
 STA S
 LDA XX15+2
 STA R   \ Y1<0
 JSR LL123
 TXA
 CLC
 ADC XX15
 STA XX15
 TYA
 ADC XX15+1
 STA XX15+1
 LDA #0
 STA XX15+2
 STA XX15+3

.LL135

\BNELL139
 LDA XX15+2
 SEC
 SBC #Y*2
 STA R     \ Y1>191
 LDA XX15+3
 SBC #0
 STA S
 BCC LL136

.LL139

 JSR LL123
 TXA
 CLC
 ADC XX15
 STA XX15
 TYA
 ADC XX15+1
 STA XX15+1
 LDA #Y*2-1
 STA XX15+2
 LDA #0
 STA XX15+3

.LL136

 RTS
}

\ ******************************************************************************
\       Name: LL120
\ ******************************************************************************

.LL120
{
 LDA XX15
 STA R
\.LL120
 JSR LL129
 PHA
 LDX T
 BNE LL121

.^LL122

 LDA #0
 TAX
 TAY
 LSR S
 ROR R
 ASL Q
 BCC LL126

.LL125

 TXA
 CLC
 ADC R
 TAX
 TYA
 ADC S
 TAY

.LL126

 LSR S
 ROR R
 ASL Q
 BCS LL125
 BNE LL126
 PLA
 BPL LL133
 RTS
}

\ ******************************************************************************
\       Name: LL123
\ ******************************************************************************

.LL123
{
 JSR LL129
 PHA
 LDX T
 BNE LL122

.^LL121

 LDA #255
 TAY
 ASL A
 TAX

.LL130

 ASL R
 ROL S
 LDA S
 BCS LL131
 CMP Q
 BCC LL132

.LL131

 SBC Q
 STA S
 LDA R
 SBC #0
 STA R
 SEC

.LL132

 TXA
 ROL A
 TAX
 TYA
 ROL A
 TAY
 BCS LL130
 PLA
 BMI LL128

.^LL133

 TXA
 EOR #FF
\CLC
 ADC #1
 TAX
 TYA
 EOR #FF
 ADC #0
 TAY

.LL128

 RTS
}

\ ******************************************************************************
\       Name: LL129
\ ******************************************************************************

.LL129
{
 LDX XX12+2
 STX Q
 LDA S
 BPL LL127
 LDA #0
 SEC
 SBC R
 STA R
 LDA S
 PHA
 EOR #255
 ADC #0
 STA S
 PLA

.LL127

 EOR XX12+3
 RTS
}

\ ******************************************************************************
\       Name: LL145 (Part 1 of 4)
\ ******************************************************************************

.LL145
{
 LDA #0
 STA SWAP
 LDA XX15+5

.^LL147

 LDX #Y*2-1
 ORA XX12+1
 BNE LL107
 CPX XX12
 BCC LL107
 LDX #0

.LL107

 STX XX13
 LDA XX15+1
 ORA XX15+3
 BNE LL83
 LDA #Y*2-1
 CMP XX15+2
 BCC LL83
 LDA XX13
 BNE LL108

.LL146

 LDA XX15+2
 STA XX15+1
 LDA XX15+4
 STA XX15+2
 LDA XX12
 STA XX15+3
 LDA SWAP
 BEQ noswap
 LDA X1
 LDY X2
 STA X2
 STY X1
 LDA Y1
 LDY Y2
 STA Y2
 STY Y1

.noswap

 CLC
 RTS

.LL109

 SEC
 RTS

.LL108

 LSR XX13

\ ******************************************************************************
\       Name: LL145 (Part 2 of 4)
\ ******************************************************************************

.LL83

 LDA XX13
 BPL LL115
 LDA XX15+1
 AND XX15+5
 BMI LL109
 LDA XX15+3
 AND XX12+1
 BMI LL109
 LDX XX15+1
 DEX
 TXA
 LDX XX15+5
 DEX
 STX XX12+2
 ORA XX12+2
 BPL LL109
 LDA XX15+2
 CMP #Y*2
 LDA XX15+3
 SBC #0
 STA XX12+2
 LDA XX12
 CMP #Y*2
 LDA XX12+1
 SBC #0
 ORA XX12+2
 BPL LL109

\ ******************************************************************************
\       Name: LL145 (Part 3 of 4)
\ ******************************************************************************

.LL115

 TYA
 PHA
 LDA XX15+4
 SEC
 SBC XX15
 STA XX12+2
 LDA XX15+5
 SBC XX15+1
 STA XX12+3
 LDA XX12
 SEC
 SBC XX15+2
 STA XX12+4
 LDA XX12+1
 SBC XX15+3
 STA XX12+5
 EOR XX12+3
 STA S
 LDA XX12+5
 BPL LL110
 LDA #0
 SEC
 SBC XX12+4
 STA XX12+4
 LDA #0
 SBC XX12+5
 STA XX12+5

.LL110

 LDA XX12+3
 BPL LL111
 SEC
 LDA #0
 SBC XX12+2
 STA XX12+2
 LDA #0
 SBC XX12+3
\GETgrad

.LL111

 TAX
 BNE LL112
 LDX XX12+5
 BEQ LL113

.LL112

 LSR A
 ROR XX12+2
 LSR XX12+5
 ROR XX12+4
 JMP LL111

.LL113

 STX T
 LDA XX12+2
 CMP XX12+4
 BCC LL114
 STA Q
 LDA XX12+4
 JSR LL28
\ Use Y/X grad.
 JMP LL116

.LL114

 LDA XX12+4
 STA Q
 LDA XX12+2
 JSR LL28
\ Use X/Y grad.
 DEC T

\ ******************************************************************************
\       Name: LL145 (Part 4 of 4)
\ ******************************************************************************

.LL116

 LDA R
 STA XX12+2
 LDA S
 STA XX12+3
 LDA XX13
 BEQ LL138
 BPL LLX117

.LL138

 JSR LL118
 LDA XX13
 BPL LL124

.LL117

 LDA XX15+1
 ORA XX15+3
 BNE LL137
 LDA XX15+2
 CMP #Y*2
 BCS LL137

.LLX117

 LDX XX15
 LDA XX15+4
 STA XX15
 STX XX15+4
 LDA XX15+5
 LDX XX15+1
 STX XX15+5
 STA XX15+1
 LDX XX15+2
 LDA XX12
 STA XX15+2
 STX XX12
 LDA XX12+1
 LDX XX15+3
 STX XX12+1
 STA XX15+3
 JSR LL118
 DEC SWAP

.LL124

 PLA
 TAY
 JMP LL146

.LL137

 PLA
 TAY
 SEC
 RTS
}

\ ******************************************************************************
\
\ Save output/ELTG.bin
\
\ ******************************************************************************

PRINT "ELITE G"
PRINT "Assembled at ", ~CODE_G%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - CODE_G%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_G%

PRINT "S.ELTG ", ~CODE_G%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_G%
SAVE "output/ELTG.bin", CODE_G%, P%, LOAD%

\ ******************************************************************************
\
\ ELITE H FILE
\
\ Produces the binary file ELTH.bin that gets loaded by elite-bcfs.asm.
\
\ ******************************************************************************

CODE_H% = P%
LOAD_H% = LOAD% + P% - CODE%

\CATLOD DECCTLDL+8\JSRCATLODS\INCCTLDL+8\.CATLODS LDA#&7F\LDX#(CTLDL MOD256)\LDY#(CTLDL DIV256)\JMPOSWORD
\CTLDL EQUB0\EQUD&E00\EQUB3\EQUB&53\EQUB0\EQUB1\EQUB&21\EQUB0

\ ******************************************************************************
\       Name: MVEIT (Part 1 of 9)
\ ******************************************************************************

.MVEIT
{
 LDA INWK+31
 AND #&A0
 BNE MV30
 LDA MCNT
 EOR XSAV
 AND #15
 BNE MV3
 JSR TIDY

\ ******************************************************************************
\       Name: MVEIT (Part 2 of 9)
\ ******************************************************************************

.MV3

 LDX TYPE
 BPL P%+5
 JMP MV40
 LDA INWK+32
 BPL MV30
 CPX #MSL
 BEQ MV26
 LDA MCNT
 EOR XSAV
 AND #7
 BNE MV30

.MV26

 JSR TACTICS

.MV30

 JSR SCAN

\ ******************************************************************************
\       Name: MVEIT (Part 3 of 9)
\ ******************************************************************************

 LDA INWK+27
 ASL A
 ASL A
 STA Q
 LDA INWK+10
 AND #127
 JSR FMLTU
 STA R
 LDA INWK+10
 LDX #0
 JSR MVT1-2
 LDA INWK+12
 AND #127
 JSR FMLTU
 STA R
 LDA INWK+12
 LDX #3
 JSR MVT1-2
 LDA INWK+14
 AND #127
 JSR FMLTU
 STA R
 LDA INWK+14
 LDX #6
 JSR MVT1-2

\ ******************************************************************************
\       Name: MVEIT (Part 4 of 9)
\ ******************************************************************************

 LDA INWK+27
 CLC
 ADC INWK+28
 BPL P%+4
 LDA #0
 LDY #15
 CMP (XX0),Y
 BCC P%+4
 LDA (XX0),Y
 STA INWK+27
 LDA #0
 STA INWK+28

\ ******************************************************************************
\       Name: MVEIT (Part 5 of 9)
\ ******************************************************************************

 LDX ALP1
 LDA INWK
 EOR #FF
 STA P
 LDA INWK+1
 JSR MLTU2-2
 STA P+2
 LDA ALP2+1
 EOR INWK+2
 LDX #3
 JSR MVT6
 STA K2+3
 LDA P+1
 STA K2+1
 EOR #FF
 STA P
 LDA P+2
 STA K2+2\K2 = Y-aX
 LDX BET1
 JSR MLTU2-2
 STA P+2
 LDA K2+3
 EOR BET2
 LDX #6
 JSR MVT6
 STA INWK+8
 LDA P+1
 STA INWK+6
 EOR #FF
 STA P
 LDA P+2
 STA INWK+7\Z = Z+bK2
 JSR MLTU2
 STA P+2
 LDA K2+3
 STA INWK+5
 EOR BET2
 EOR INWK+8
 BPL MV43
 LDA P+1
 ADC K2+1
 STA INWK+3
 LDA P+2
 ADC K2+2
 STA INWK+4
 JMP MV44

.MV43

 LDA K2+1
 SBC P+1
 STA INWK+3
 LDA K2+2
 SBC P+2
 STA INWK+4
 BCS MV44
 LDA #1
 SBC INWK+3
 STA INWK+3
 LDA #0
 SBC INWK+4
 STA INWK+4
 LDA INWK+5
 EOR #128
 STA INWK+5

.MV44\Y = K2-bZ

 LDX ALP1
 LDA INWK+3
 EOR #FF
 STA P
 LDA INWK+4
 JSR MLTU2-2
 STA P+2
 LDA ALP2
 EOR INWK+5
 LDX #0
 JSR MVT6
 STA INWK+2
 LDA P+2
 STA INWK+1
 LDA P+1
 STA INWK\X = X+aY

\ ******************************************************************************
\       Name: MVEIT (Part 6 of 9)
\ ******************************************************************************

.^MV45

 LDA DELTA
 STA R
 LDA #128
 LDX #6
 JSR MVT1
 LDA TYPE
 AND #&81
 CMP #&81
 BNE P%+3
 RTS \Z = Z-d

\ ******************************************************************************
\       Name: MVEIT (Part 7 of 9)
\ ******************************************************************************

 LDY #9
 JSR MVS4
 LDY #15
 JSR MVS4
 LDY #21
 JSR MVS4

\ ******************************************************************************
\       Name: MVEIT (Part 8 of 9)
\ ******************************************************************************

 LDA INWK+30
 AND #128
 STA RAT2
 LDA INWK+30
 AND #127
 BEQ MV8
 CMP #127
 SBC #0
 ORA RAT2
 STA INWK+30
 LDX #15
 LDY #9
 JSR MVS5
 LDX #17
 LDY #11
 JSR MVS5
 LDX #19
 LDY #13
 JSR MVS5

.MV8

 LDA INWK+29
 AND #128
 STA RAT2
 LDA INWK+29
 AND #127
 BEQ MV5
 CMP #127
 SBC #0
 ORA RAT2
 STA INWK+29
 LDX #15
 LDY #21
 JSR MVS5
 LDX #17
 LDY #23
 JSR MVS5
 LDX #19
 LDY #25
 JSR MVS5

\ ******************************************************************************
\       Name: MVEIT (Part 9 of 9)
\ ******************************************************************************


.MV5

 LDA INWK+31
 AND #&A0
 BNE MVD1
 LDA INWK+31
 ORA #16
 STA INWK+31
 JMP SCAN

.MVD1

 LDA INWK+31
 AND #&EF
 STA INWK+31
 RTS
}

\ ******************************************************************************
\       Name: MVT1
\ ******************************************************************************

{
 AND #128

.^MVT1

 ASL A
 STA S
 LDA #0
 ROR A
 STA T
 LSR S
 EOR INWK+2,X
 BMI MV10
 LDA R
 ADC INWK,X
 STA INWK,X
 LDA S
 ADC INWK+1,X
 STA INWK+1,X
 LDA INWK+2,X
 ADC #0
 ORA T
 STA INWK+2,X
 RTS

.MV10

 LDA INWK,X
 SEC
 SBC R
 STA INWK,X
 LDA INWK+1,X
 SBC S
 STA INWK+1,X
 LDA INWK+2,X
 AND #127
 SBC #0
 ORA #128
 EOR T
 STA INWK+2,X
 BCS MV11
 LDA #1
 SBC INWK,X
 STA INWK,X
 LDA #0
 SBC INWK+1,X
 STA INWK+1,X
 LDA #0
 SBC INWK+2,X
 AND #127
 ORA T
 STA INWK+2,X

.MV11

 RTS
}

\ ******************************************************************************
\       Name: MVS4
\ ******************************************************************************

.MVS4
{
 LDA ALPHA
 STA Q
 LDX INWK+2,Y
 STX R
 LDX INWK+3,Y
 STX S
 LDX INWK,Y
 STX P
 LDA INWK+1,Y
 EOR #128
 JSR MAD
 STA INWK+3,Y
 STX INWK+2,Y
 STX P\Y = Y-aX
 LDX INWK,Y
 STX R
 LDX INWK+1,Y
 STX S
 LDA INWK+3,Y
 JSR MAD
 STA INWK+1,Y
 STX INWK,Y
 STX P\X = X+aY
 LDA BETA
 STA Q
 LDX INWK+2,Y
 STX R
 LDX INWK+3,Y
 STX S
 LDX INWK+4,Y
 STX P
 LDA INWK+5,Y
 EOR #128
 JSR MAD
 STA INWK+3,Y
 STX INWK+2,Y
 STX P\Y = Y-bZ
 LDX INWK+4,Y
 STX R
 LDX INWK+5,Y
 STX S
 LDA INWK+3,Y
 JSR MAD
 STA INWK+5,Y
 STX INWK+4,Y
 RTS \Z = Z+bY
}

\ ******************************************************************************
\       Name: MVT6
\ ******************************************************************************

.MVT6
{
 TAY
 EOR INWK+2,X
 BMI MV50
 LDA P+1
 CLC
 ADC INWK,X
 STA P+1
 LDA P+2
 ADC INWK+1,X
 STA P+2
 TYA
 RTS

.MV50

 LDA INWK,X
 SEC
 SBC P+1
 STA P+1
 LDA INWK+1,X
 SBC P+2
 STA P+2
 BCC MV51
 TYA
 EOR #128
 RTS

.MV51

 LDA #1
 SBC P+1
 STA P+1
 LDA #0
 SBC P+2
 STA P+2
 TYA
 RTS
}

\ ******************************************************************************
\       Name: MV40
\ ******************************************************************************

.MV40
{
 LDA ALPHA
 EOR #128
 STA Q
 LDA INWK
 STA P
 LDA INWK+1
 STA P+1
 LDA INWK+2
 JSR MULT3
 LDX #3
 JSR MVT3\K = Y-aX
 LDA K+1
 STA K2+1
 STA P
 LDA K+2
 STA K2+2
 STA P+1
 LDA BETA
 STA Q
 LDA K+3
 STA K2+3
 JSR MULT3
 LDX #6
 JSR MVT3
 LDA K+1
 STA P
 STA INWK+6
 LDA K+2
 STA P+1
 STA INWK+7
 LDA K+3
 STA INWK+8\Z = Z+bK2
 EOR #128
 JSR MULT3
 LDA K+3
 AND #128
 STA T
 EOR K2+3
 BMI MV1
 LDA K
 CLC
 ADC K2
 LDA K+1
 ADC K2+1
 STA INWK+3
 LDA K+2
 ADC K2+2
 STA INWK+4
 LDA K+3
 ADC K2+3
 JMP MV2

.MV1

 LDA K
 SEC
 SBC K2
 LDA K+1
 SBC K2+1
 STA INWK+3
 LDA K+2
 SBC K2+2
 STA INWK+4
 LDA K2+3
 AND #127
 STA P
 LDA K+3
 AND #127
 SBC P
 STA P
 BCS MV2
 LDA #1
 SBC INWK+3
 STA INWK+3
 LDA #0
 SBC INWK+4
 STA INWK+4
 LDA #0
 SBC P
 ORA #128

.MV2

 EOR T
 STA INWK+5\Y = K2-bZ
 LDA ALPHA
 STA Q
 LDA INWK+3
 STA P
 LDA INWK+4
 STA P+1
 LDA INWK+5
 JSR MULT3
 LDX #0
 JSR MVT3
 LDA K+1
 STA INWK
 LDA K+2
 STA INWK+1
 LDA K+3
 STA INWK+2\X = X+aY
 JMP MV45
}

\ ******************************************************************************
\       Name: Checksum
\ ******************************************************************************

.Checksum
{
 SEC
 LDY #0
 STY V
 LDX #&10
 LDA (SC)\++RH
 TXA

.CHKLoop

 STX V+1
 STY T
 ADC (V),Y
 EOR T
 SBC V+1
 DEY
 BNE CHKLoop
 INX
 CPX #&A0
 BCC CHKLoop
 CMP S%-1

IF _REMOVE_CHECKSUMS
 NOP
 NOP
ELSE
 BNE Checksum
ENDIF

 RTS
}

\ ******************************************************************************
\       Name: PLUT
\ ******************************************************************************

.PLUT
{
 LDX VIEW
 BEQ PU2-1

.PU1

 DEX
 BNE PU2
 LDA INWK+2
 EOR #128
 STA INWK+2
 LDA INWK+8
 EOR #128
 STA INWK+8
 LDA INWK+10
 EOR #128
 STA INWK+10
 LDA INWK+14
 EOR #128
 STA INWK+14
 LDA INWK+16
 EOR #128
 STA INWK+16
 LDA INWK+20
 EOR #128
 STA INWK+20
 LDA INWK+22
 EOR #128
 STA INWK+22
 LDA INWK+26
 EOR #128
 STA INWK+26
 RTS

.PU2

 LDA #0
 CPX #2
 ROR A
 STA RAT2
 EOR #128
 STA RAT
 LDA INWK
 LDX INWK+6
 STA INWK+6
 STX INWK
 LDA INWK+1
 LDX INWK+7
 STA INWK+7
 STX INWK+1
 LDA INWK+2
 EOR RAT
 TAX
 LDA INWK+8
 EOR RAT2
 STA INWK+2
 STX INWK+8
 LDY #9
 JSR PUS1
 LDY #15
 JSR PUS1
 LDY #21

.PUS1

 LDA INWK,Y
 LDX INWK+4,Y
 STA INWK+4,Y
 STX INWK,Y
 LDA INWK+1,Y
 EOR RAT
 TAX
 LDA INWK+5,Y
 EOR RAT2
 STA INWK+1,Y
 STX INWK+5,Y
}

\ ******************************************************************************
\       Name: LOOK1
\ ******************************************************************************

{
.LO2

 RTS

.LQ

 STX VIEW
 JSR TT66
 JSR SIGHT
 JMP NWSTARS

.^LOOK1

 LDA #0
 JSR DOVDU19
 LDY QQ11
 BNE LQ
 CPX VIEW
 BEQ LO2
 STX VIEW
 JSR TT66
 JSR FLIP
 JSR WPSHPS

.SIGHT

 LDY VIEW
 LDA LASER,Y
 BEQ LO2
 LDA #YELLOW
 JSR DOCOL
 LDA #128
 STA QQ19
 LDA #Y-24
 STA QQ19+1
 LDA #20
 STA QQ19+2
 JSR TT15b
 LDA #10
 STA QQ19+2
 JMP TT15b  \<< = Ian = >>
}

\ ******************************************************************************
\       Name: TT66
\ ******************************************************************************

.TT66
{
 STA QQ11
}

\ ******************************************************************************
\       Name: TTX66
\ ******************************************************************************

.TTX66
{
 JSR MT2
 JSR PBZE
 JSR HBZE
 STZ LBUP
 STZ LSP \++
 LDA #128
 STA QQ17
 STA DTW2
 JSR FLFLLS
 LDA #YELLOW
 JSR DOCOL
 STZ LAS2
 STZ DLY
 STZ de\+++
 LDA #11
 JSR OSWRCH
 LDX QQ22+1
 BEQ OLDBOX
 JSR ee3

.OLDBOX

 LDA #1
 JSR DOYC
 LDA QQ11
 BNE tt66
 LDA #11
 JSR DOXC
 LDA #CYAN
 JSR DOCOL
 LDA VIEW
 ORA #&60
 JSR TT27
 JSR TT162
 LDA #175
 JSR TT27

.tt66

 LDA #1
 JSR DOXC
 JSR DOYC
 LDX #0
 STX QQ17
 RTS

.^BOX

 LDA #YELLOW
 JSR DOCOL
 LDX #0
 STX QQ17
 STX X1
 STX Y1
 STX Y2
 DEX
 STX X2
 JSR LL30
 LDA #2
 STA X1
 STA X2
 JSR BOS2

.BOS2

 JSR BOS1

.BOS1

 LDA #0
 STA Y1
 LDA #2*Y-1
 STA Y2
 DEC X1
 DEC X2
 JMP LL30
}

\ ******************************************************************************
\       Name: DELAY
\ ******************************************************************************

.DELAY
{
 JSR WSCAN
 DEY
 BNE DELAY
 RTS
}

\ ******************************************************************************
\       Name: CLYNS
\ ******************************************************************************

.CLYNS
{
 LDA #FF
 STA DTW2
 LDA #128
 STA QQ17
 LDA #21
 STA YC
 LDA #1
 STA XC
 LDA #clyns
 JSR OSWRCH
 JSR OSWRCH
 LDA #0
 TAY

.^SC5

 RTS
}
\ ******************************************************************************
\       Name: 
\ ******************************************************************************

.SCANpars

 EQUB 7
 EQUB 0

\ ******************************************************************************
\       Name: SCANflg
\ ******************************************************************************

.SCANflg
{
 BRK
}

\ ******************************************************************************
\       Name: SCANlen
\ ******************************************************************************

.SCANlen
{
 BRK
}

\ ******************************************************************************
\       Name: SCANcol
\ ******************************************************************************

.SCANcol
{
 BRK
}

\ ******************************************************************************
\       Name: SCANx1
\ ******************************************************************************

.SCANx1
{
 BRK
}

\ ******************************************************************************
\       Name: SCANy1
\ ******************************************************************************

.SCANy1
{
 BRK
}

\ ******************************************************************************
\       Name: 
\ ******************************************************************************

.SCAN
{
 LDA INWK+31
 AND #16
 BEQ SC5
 LDX TYPE
 BMI SC5
 LDA scacol,x
 STA SCANcol
 LDA INWK+1
 ORA INWK+4
 ORA INWK+7
 AND #&C0
 BNE SC5
 LDA INWK+1
 CLC
 LDX INWK+2
 BPL SC2
 EOR #FF
 ADC #1

.SC2

 ADC #123
 STA SCANx1
 LDA INWK+7
 LSR A
 LSR A
 CLC
 LDX INWK+8
 BPL SC3
 EOR #FF
 SEC

.SC3

 ADC #35
 EOR #FF
 STA SC
 LDA INWK+4
 LSR A
 CLC
 LDX INWK+5
 BMI SCD6
 EOR #FF
 SEC

.SCD6

 ADC SC
 BPL FIXIT
 CMP #194
 BCS P%+4
 LDA #194
 CMP #247
 BCC P%+4

.FIXIT

 LDA #246
 STA SCANy1
 SEC
 SBC SC
 STA SCANlen
 ROR SCANflg

.SC48

 LDX #(SCANpars MOD256)
 LDY #(SCANpars DIV256)
 LDA #onescan
 JMP OSWORD
}

\ ******************************************************************************
\       Name: WSCpars
\ ******************************************************************************

.WSCpars
{
 EQUB 2
 EQUB 2
 EQUW 0
}

\ ******************************************************************************
\       Name: WSCAN
\ ******************************************************************************

.WSCAN
{
 PHX
 PHY
\++
 LDA #wscn
 LDX #(WSCpars MOD256)
 LDY #(WSCpars DIV256)
 JSR OSWORD
 PLY
 PLX
 RTS
}

\ ******************************************************************************
\
\ Save output/ELTH.bin
\
\ ******************************************************************************

PRINT "ELITE H"
PRINT "Assembled at ", ~CODE_H%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - CODE_H%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_H%

PRINT "S.ELTH ", ~CODE_H%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_H%
SAVE "output/ELTH.bin", CODE_H%, P%, LOAD%

\ ******************************************************************************
\
\ ELITE I FILE
\
\ Produces the binary file ELTI.bin that gets loaded by elite-bcfs.asm.
\
\ ******************************************************************************

CODE_I% = P%
LOAD_I% = LOAD% + P% - CODE%

W = 5
W2 = 16
WY = 12
W2Y = 2.5*WY
D = 80

\ ******************************************************************************
\       Name: HIMCNT
\ ******************************************************************************

.HIMCNT
{
 BRK

}

\ ******************************************************************************
\       Name: ZINF2
\ ******************************************************************************

.ZINF2
{
 LDA #0
 LDX #NI%-1

.DML1

 STA INWK,X
 DEX
 BPL DML1
 LDA #96
 STA INWK+18
 STA INWK+22
 STA INWK+14
 RTS
}


\ ******************************************************************************
\       Name: TWIST2
\ ******************************************************************************

.TWIST2
{
 EQUB &2C
}

\ ******************************************************************************
\       Name: TWIST
\ ******************************************************************************

.TWIST
{
 LDA #0
 STA RAT2
 LDX #15
 LDY #9
 JSR MVS5
 LDX #17
 LDY #11
 JSR MVS5
 LDX #19
 LDY #13
 JMP MVS5
}

\ ******************************************************************************
\       Name: STORE
\ ******************************************************************************

.STORE
{
 LDY #NI%-1

.DML2

 LDA INWK,Y
 STA (INF),Y
 DEY
 BPL DML2
 RTS
}

\ ******************************************************************************
\       Name: DEMON
\ ******************************************************************************

.DEMON
{
 LDA #1
 JSR TT66
 JSR RESET
 LDA #0
 STA ALPHA
 STA ALP1
 STA DELTA
 STA scacol+CYL
 JSR DOVDU19
 JSR nWq
 LDX #(acorn MOD256)
 LDY #(acorn DIV256)
 JSR SLIDE
 JSR ZINF2
 LDA #128
 STA INWK+5
 LDA #100
 STA INWK+3
 LDA #LGO
 STA TYPE
 JSR NWSHP
 LDA #150
 STA MCNT

.FLYL1

 LDA INWK+6
 CLC
 ADC #3
 STA INWK+6
 LDA INWK+7
 ADC #0
 STA INWK+7
 JSR LL9
 DEC MCNT
 BNE FLYL1

.FLYL2

 LDA INWK+6
 CLC
 ADC #2
 STA INWK+6
 LDA INWK+7
 ADC #0
 STA INWK+7
 LDA #128
 JSR TWIST2
\DECINWK+3
 JSR LL9
 LDA INWK+14
 BPL FLYL2
 JSR STORE
 JSR ZINF2
 LDA #108
 STA INWK+3
 LDA #40
 STA INWK+6
 LDA #128
 STA INWK+8
 LDA #CYL
 STA TYPE
 JSR NWSHP
 LDA #1
 STA INWK+27
 STA HIMCNT
 LDA #90
 STA MCNT
 JSR TWIST
 JSR TWIST
 JSR TWIST

.FLYL4

 JSR LL9
 JSR MVEIT
 DEC MCNT
 BNE FLYL4
 DEC HIMCNT
 BPL FLYL4
 JSR ZZAAP
 LDA #0
 JSR NOISE
 LDY #10
 JSR DELAY
 LDA #44
 STA INWK+29
 LDA #8
 STA INWK+27
 LDA #&87
 STA INWK+30
 JSR STORE
 LDA #128
 TSB K%+31 \++
 JSR EXNO3
 JSR ZZAAP

.FLYL5

 LDX #NI%-1

.DML3

 LDA K%,X
 STA INWK,X
 DEX
 BPL DML3
 INX
 JSR GINF
 LDA XX21-2+2*LGO
 STA XX0
 LDA XX21-1+2*LGO
 STA XX0+1
 LDA #LGO
 STA TYPE
 INC INWK
 JSR LL9
 JSR STORE
 JSR PBFL
 LDA INWK+31
 AND #&A0
 CMP #&A0
 PHP
 LDX #NI%-1

.DML4

 LDA K%+NI%,X
 STA INWK,X
 DEX
 BPL DML4
 LDX #1
 JSR GINF
 LDA XX21-2+2*CYL
 STA XX0
 LDA XX21-1+2*CYL
 STA XX0+1
 LDA #CYL
 STA TYPE
 JSR MVEIT
 JSR LL9
 JSR STORE
 PLP
 BNE FLYL5
 LDA #14
 STA DELTA
 STZ DELT4 \++
 LSR A
 ROR DELT4
 LSR A
 ROR DELT4
 STA DELT4+1
 LDX #(byian MOD256)
 LDY #(byian DIV256)
 JSR SLIDE
 LDX #NI%-1

.DML5

 LDA K%+NI%,X
 STA INWK,X
 DEX
 BPL DML5

.FLYL6

 JSR STARS1
 JSR MVEIT
 JSR LL9
 LDA INWK+8
 BPL FLYL6
 LDX #(true3 MOD256)
 LDY #(true3 DIV256)
 JSR SLIDE
 JSR RES2
 LDA #&E0
 STA INWK+14
 STZ DELTA
 STZ ALPHA
 STZ ALP1 \++
 LDX #15
 STX INWK+27
 LDX #5
 STX INWK+7
 LDA #ADA
 STA TYPE
 JSR NWSHP

.FLYL7

 JSR MVEIT
 JSR LL9
 LDA INWK+7
 BNE FLYL7
 LDA #3
 STA INWK+29
 STA INWK+30
 LDA INWK+8
 BPL FLYL7
 JSR SCAN
 JSR RES2
 LDA #CYAN2
 STA scacol+CYL
 JMP DEATH2 \More Demo stuff here
}

\ ******************************************************************************
\       Name: SLIDE
\ ******************************************************************************

.SLIDE
{
 JSR GRIDSET
 JSR ZEVB
 LDA #YELLOW
 JSR DOCOL
 LDA #254
 STA BALI

.SLL2

 JSR GRID
 DEC BALI
 DEC BALI
 BNE SLL2

.SL1

 JSR ZEVB
 LDA #2
 STA BALI

.GRID

 LDY #0
 STY UPO
 STY INWK+8
 STY INWK+1
 STY INWK+4
 DEY

.GRIDL

 INY
 STZ INWK+7 \++
 LDA Y1TB,Y
 BNE P%+5
 JMP GREX
 SEC
 SBC BALI
 BCC GRIDL
 STA R
 ASL A
 ROL INWK+7
 ASL A
 ROL INWK+7
 ADC #D
 STA INWK+6
 LDA INWK+7
 ADC #0
 STA INWK+7
 STZ S
 LDA #128
 STA P
 JSR ADD
 STA INWK+5
 STX INWK+3
 LDA X1TB,Y
 EOR #128
 BPL GR2
 EOR #FF
 INA \++

.GR2

 STA INWK
 LDA X1TB,Y
 EOR #128
 AND #128
 STA INWK+2
 STY YS
 JSR PROJ
 LDY YS
 LDA K3
 STA XX15
 LDA K3+1
 STA XX15+1
 LDA K4
 STA XX15+2
 LDA K4+1
 STA XX15+3
 STZ INWK+7 \++
 LDA Y2TB,Y
 SEC
 SBC BALI
 BCC GR6
 STA R
 ASL A
 ROL INWK+7
 ASL A
 ROL INWK+7
 ADC #D
 STA INWK+6
 LDA INWK+7
 ADC #0
 STA INWK+7
 STZ S
 LDA #128
 STA P
 JSR ADD
 STA INWK+5
 STX INWK+3
 LDA X2TB,Y
 EOR #128
 BPL GR3
 EOR #FF
 INA \++

.GR3

 STA INWK
 LDA X2TB,Y
 EOR #128
 AND #128
 STA INWK+2
 JSR PROJ
 LDA K3
 STA XX15+4
 LDA K3+1
 STA XX15+5
 LDA K4
 STA XX12
 LDA K4+1
 STA XX12+1
 JSR LL145
 LDY YS
 BCS GR6
 INC UPO
 LDX UPO
 LDA X1
 STA X1UB,X
 LDA Y1
 STA Y1UB,X
 LDA X2
 STA X2UB,X
 LDA Y2
 STA Y2UB,X

.GR6

 JMP GRIDL

.GREX

 LDY UPO
 BEQ GREX2

.GRL2

 LDA Y1VB,Y
 BEQ GR4
 STA Y1
 LDA X1VB,Y
 STA X1
 LDA X2VB,Y
 STA X2
 LDA Y2VB,Y
 STA Y2
 JSR LOIN

.GR4

 LDA X1UB,Y
 STA X1
 STA X1VB,Y
 LDA Y1UB,Y
 STA Y1
 STA Y1VB,Y
 LDA X2UB,Y
 STA X2
 STA X2VB,Y
 LDA Y2UB,Y
 STA Y2
 STA Y2VB,Y
 JSR LOIN
 DEY
 BNE GRL2
 JSR LBFL

.GREX2

 RTS
}

\ ******************************************************************************
\       Name: ZEVB
\ ******************************************************************************

.ZEVB
{
 LDA #0
 TAY

.SLL1

 STA Y1VB,Y
 DEY
 BNE SLL1
 RTS
}

\ ******************************************************************************
\       Name: GRIDSET
\ ******************************************************************************

.GRIDSET
{
 STX GSL1+1
 STY GSL1+2
 LDA #254
 STA YP
 LDY #0
 LDX #0
 STX XP

.GSL1

 LDA P%,Y
 BEQ GRSEX
 STY T
 SEC
 SBC #44
 STA S
 ASL A
 ASL A
 ADC S
 TAY
 LDA LTDEF,Y
 JSR GRS1
 LDA LTDEF+1,Y
 JSR GRS1
 LDA LTDEF+2,Y
 JSR GRS1
 LDA LTDEF+3,Y
 JSR GRS1
 LDA LTDEF+4,Y
 JSR GRS1
 LDY T
 INY
 LDA XP
 CLC
 ADC #W2
 STA XP
 BCC GSL1
 LDA #0
 STA XP
 LDA YP
 SBC #W2Y
 STA YP
 JMP GSL1

.GRSEX

 LDA #0
 STA Y1TB,X
 RTS

.GRS1

 BEQ GRR1
 STA R
 AND #15
 STY P
 TAY
 LDA NOFX,Y
 CLC
 ADC XP
 STA X1TB,X
 LDA YP
 SEC
 SBC NOFY,Y
 STA Y1TB,X
 LDA R
 LSR A
 LSR A
 LSR A
 LSR A
 TAY
 LDA NOFX,Y
 CLC
 ADC XP
 STA X2TB,X
 LDA YP
 SEC
 SBC NOFY,Y
 STA Y2TB,X
 INX
 LDY P

.GRR1

 RTS
}

\ ******************************************************************************
\       Name: ZZAAP
\ ******************************************************************************

.ZZAAP
{
 LDA #RED
 JSR DOCOL
 LDA #128
 STA X1
 STA X2
 LDA #67
 STA Y1
 LDA #160
 STA Y2
 JMP LL30
}

\ ******************************************************************************
\       Name: LTDEF
\ ******************************************************************************

.LTDEF
{
 EQUB &63, &34, &47, &76, &97
 EQUB &35, &00, &00, &00, &00
 EQUB &63, &34, &47, &76, &00
 EQUB &61, &00, &00, &00, &00
 EQUB &73, &31, &15, &57, &00
 EQUB &31, &17, &00, &00, &00
 EQUB &02, &25, &53, &36, &68
 EQUB &02, &28, &86, &35, &00
 EQUB &82, &23, &35, &00, &00
 EQUB &20, &03, &35, &58, &86
 EQUB &20, &06, &68, &85, &53
 EQUB &02, &28, &00, &00, &00
 EQUB &60, &02, &28, &86, &35
 EQUB &82, &20, &03, &35, &00
 EQUB &00, &00, &00, &00, &00
 EQUB &00, &00, &00, &00, &00
 EQUB &00, &00, &00, &00, &00
 EQUB &00, &00, &00, &00, &00
 EQUB &00, &00, &00, &00, &00
 EQUB &00, &00, &00, &00, &00
 EQUB &00, &00, &00, &00, &00
 EQUB &60, &02, &28, &35, &00
 EQUB &60, &02, &28, &86, &35
 EQUB &86, &60, &02, &00, &00
 EQUB &60, &05, &56, &00, &00
 EQUB &86, &60, &02, &35, &00
 EQUB &60, &02, &35, &00, &00
 EQUB &45, &58, &86, &60, &02
 EQUB &60, &28, &35, &00, &00
 EQUB &17, &00, &00, &00, &00
 EQUB &28, &86, &63, &00, &00
 EQUB &60, &23, &83, &00, &00
 EQUB &86, &60, &00, &00, &00
 EQUB &60, &04, &42, &28, &00
 EQUB &60, &08, &82, &00, &00
 EQUB &60, &02, &28, &86, &00
 EQUB &60, &02, &25, &53, &00
 EQUB &60, &02, &28, &86, &48
 EQUB &60, &02, &25, &53, &48
 EQUB &20, &03, &35, &58, &86
 EQUB &02, &17, &00, &00, &00
 EQUB &28, &86, &60, &00, &00
 EQUB &27, &70, &00, &00, &00
 EQUB &28, &84, &46, &60, &00
 EQUB &26, &08, &00, &00, &00
 EQUB &74, &04, &24, &00, &00
 EQUB &02, &26, &68, &00, &00
}

\ ******************************************************************************
\       Name: NOFX
\ ******************************************************************************

.NOFX
{
 EQUB 4
 EQUB 8
 EQUB 12
 EQUB 4
 EQUB 8
 EQUB 12
 EQUB 4
 EQUB 8
 EQUB 12
 EQUB 4
 EQUB 8
 EQUB 12
}

\ ******************************************************************************
\       Name: NOFY
\ ******************************************************************************

.NOFY
{
 EQUB 0
 EQUB 0
 EQUB 0
 EQUB WY
 EQUB WY
 EQUB WY
 EQUB 2*WY
 EQUB 2*WY
 EQUB 2*WY
 EQUB 2.5*WY
 EQUB 2.5*WY
 EQUB 2.5*WY
}

\ ******************************************************************************
\       Name: acorn
\ ******************************************************************************


\           \......+......./\......+......./\......+......./\......+......"

.acorn
{
 EQUS ":::ACORNSOFT::::;;;;;;;;;;;;;;;;::::PRESENTS"
 EQUB 0
}

\ ******************************************************************************
\       Name: byian
\ ******************************************************************************

.byian
{
 EQUS "::::::BY:;::::::;;;;IAN;BELL;;;;::::::AND:::::::;;DAVID;BRABEN"
 EQUB 0
}

\ ******************************************************************************
\       Name: true3
\ ******************************************************************************

.true3
{
 EQUS "THE:GALAXY:IS:INTURMOIL,THE:NAVYFAR:AWAY:AS::THEEMPIRE:CRUMBLES."
 EQUB 0
}

\ ******************************************************************************
\
\ Save output/ELTI.bin
\
\ ******************************************************************************

PRINT "ELITE I"
PRINT "Assembled at ", ~CODE_I%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - CODE_I%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_I%

PRINT "S.ELTI ", ~CODE_I%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_H%
SAVE "output/ELTI.bin", CODE_I%, P%, LOAD%

\ ******************************************************************************
\
\ ELITE J FILE
\
\ Produces the binary file ELTJ.bin that gets loaded by elite-bcfs.asm.
\
\ ******************************************************************************

CODE_J% = P%
LOAD_J% = LOAD% + P% - CODE%

MACRO TOKN n
  PRINT n
  EQUB n EOR VE
ENDMACRO

MACRO CHAR x
  PRINT x
  EQUB x EOR VE
ENDMACRO

.TKN1
{
 EQUB VE

 TOKN 9
 TOKN 11
 TOKN 30
 TOKN 1
 TOKN 8
 CHAR ' '
 TOKN 241
 CHAR 'S'
 CHAR 'K'
 CHAR ' '
 CHAR 'A'
 CHAR 'C'
 TOKN 233
 CHAR 'S'
 CHAR 'S'
 CHAR ' '
 CHAR 'M'
 CHAR 'E'
 TOKN 225
 TOKN 215
 TOKN 10
 TOKN 2
 CHAR '1'
 CHAR '.'
 CHAR ' '
 TOKN 149
 TOKN 215
 CHAR '2'
 CHAR '.'
 CHAR ' '
 CHAR 'S'
 CHAR 'A'
 TOKN 250
 CHAR ' '
 TOKN 154
 CHAR ' '
 TOKN 4
 TOKN 215
 CHAR '3'
 CHAR '.'
 CHAR ' '
 CHAR 'C'
 TOKN 245
 CHAR 'A'
 TOKN 224
 CHAR 'G'
 CHAR 'U'
 CHAR 'E'
 TOKN 215
 CHAR '4'
 CHAR '.'
 CHAR ' '
 CHAR 'D'
 CHAR 'E'
 CHAR 'L'
 TOKN 221
 CHAR 'E'
 TOKN 208
 CHAR 'F'
 CHAR 'I'
 TOKN 229
 TOKN 215
 CHAR '5'
 CHAR '.'
 CHAR ' '
 CHAR 'E'
 CHAR 'X'
 TOKN 219
 TOKN 215
 EQUB VE

 TOKN 12
 CHAR 'W'
 CHAR 'H'
 CHAR 'I'
 CHAR 'C'
 CHAR 'H'
 CHAR ' '
 TOKN 151
 CHAR '?'
 EQUB VE

 CHAR 'C'
 CHAR 'O'
 CHAR 'M'
 CHAR 'P'
 CHAR 'E'
 TOKN 251    \ <251)
 TOKN 251
 TOKN 223
 CHAR ' '
 TOKN 225
 CHAR 'M'
 CHAR 'B'
 TOKN 244
 CHAR ':'
 EQUB VE

 TOKN 150
 TOKN 151
 CHAR ' '
 TOKN 16
 TOKN 152
 TOKN 215
 EQUB VE

 TOKN 176
 TOKN 109
 TOKN 202
 TOKN 110
 TOKN 177
 EQUB VE

 CHAR ' '
 CHAR ' '
 TOKN 149
 CHAR ' '
 TOKN 1
 CHAR '('
 CHAR 'Y'
 CHAR '/'
 CHAR 'N'
 CHAR ')'
 CHAR '?'
 TOKN 2
 TOKN 12
 TOKN 12
 EQUB VE

 CHAR 'P'
 TOKN 242
 CHAR 'S'
 CHAR 'S'
 CHAR ' '
 CHAR 'S'
 CHAR 'P'
 CHAR 'A'
 TOKN 233
 CHAR ' '
 TOKN 253
 CHAR ' '
 CHAR 'F'
 CHAR 'I'
 TOKN 242
 CHAR ','
 TOKN 154
 CHAR '.'
 TOKN 12
 TOKN 12
 EQUB VE

 TOKN 154
 CHAR 39
 CHAR 'S'
 TOKN 200
 EQUB VE

 TOKN 21
 CHAR 'F'
 CHAR 'I'
 TOKN 229
 TOKN 201
 CHAR 'D'
 CHAR 'E'
 CHAR 'L'
 TOKN 221
 CHAR 'E'
 CHAR '?'
 EQUB VE

 TOKN 23
 TOKN 14
 TOKN 2
 CHAR 'G'
 TOKN 242
 TOKN 221
 TOKN 240
 CHAR 'G'
 CHAR 'S'
 TOKN 213
 TOKN 178
 TOKN 19
 CHAR 'I'
 CHAR ' '
 TOKN 247
 CHAR 'G'
 TOKN 208
 CHAR 'M'
 CHAR 'O'
 CHAR 'M'
 TOKN 246
 CHAR 'T'
 CHAR ' '
 CHAR 'O'
 CHAR 'F'
 CHAR ' '
 TOKN 179
 CHAR 'R'
 CHAR ' '
 CHAR 'V'
 TOKN 228
 CHAR 'U'
 TOKN 216
 TOKN 229
 CHAR ' '
 TOKN 251
 CHAR 'M'
 CHAR 'E'
 TOKN 204
\CHAR '#'
\EQUB VE

 CHAR 'W'
 CHAR 'E'
 CHAR ' '
 CHAR 'W'
 TOKN 217
 CHAR 'L'
 CHAR 'D'
 CHAR ' '
 CHAR 'L'
 CHAR 'I'
 CHAR 'K'
 CHAR 'E'
 CHAR ' '
 TOKN 179
 TOKN 201
 CHAR 'D'
 CHAR 'O'
 TOKN 208
 CHAR 'L'
 TOKN 219
 CHAR 'T'
 TOKN 229
 CHAR ' '
 CHAR 'J'
 CHAR 'O'
 CHAR 'B'
 CHAR ' '
 CHAR 'F'
 TOKN 253
 CHAR ' '
 TOKN 236
 TOKN 204
 TOKN 147
 TOKN 207
 CHAR ' '
 TOKN 179
 CHAR ' '
 TOKN 218
 CHAR 'E'
 CHAR ' '
 CHAR 'H'
 CHAR 'E'
 TOKN 242
 TOKN 202
 CHAR 'A'
 TOKN 210
 CHAR 'M'
 CHAR 'O'
 CHAR 'D'
 CHAR 'E'
 CHAR 'L'
 CHAR ','
 CHAR ' '
 TOKN 147
 TOKN 19
 CHAR 'C'
 TOKN 223
 TOKN 222
 CHAR 'R'
 CHAR 'I'
 CHAR 'C'
 CHAR 'T'
 TOKN 253
 CHAR ','
 CHAR ' '
 CHAR 'E'
 TOKN 254
 CHAR 'I'
 CHAR 'P'
 TOKN 196
 CHAR 'W'
 CHAR 'I'
 TOKN 226
 TOKN 208
 CHAR 'T'
 CHAR 'O'
 CHAR 'P'
\CHAR '#'
\EQUB VE

 CHAR ' '
 TOKN 218
 CHAR 'C'
 CHAR 'R'
 TOKN 221
 TOKN 210
 CHAR 'S'
 CHAR 'H'
 CHAR 'I'
 CHAR 'E'
 CHAR 'L'
 CHAR 'D'
 CHAR ' '
 CHAR 'G'
 TOKN 246
 TOKN 244
 TOKN 245
 TOKN 253
 TOKN 204
 CHAR 'U'
 CHAR 'N'
 CHAR 'F'
 TOKN 253
 CHAR 'T'
 CHAR 'U'
 CHAR 'N'
 TOKN 245
 CHAR 'E'
 CHAR 'L'
 CHAR 'Y'
 CHAR ' '
 TOKN 219
 CHAR 39
 CHAR 'S'
 CHAR ' '
 TOKN 247
 TOKN 246
 CHAR ' '
 TOKN 222
 CHAR 'O'
 CHAR 'L'
 TOKN 246
 TOKN 204
 TOKN 22
\CHAR '#'
\EQUB VE

 TOKN 219
 CHAR ' '
 CHAR 'W'
 TOKN 246
 CHAR 'T'
 CHAR ' '
 CHAR 'M'
 CHAR 'I'
 CHAR 'S'
 CHAR 'S'
 TOKN 195
 CHAR 'F'
 CHAR 'R'
 CHAR 'O'
 CHAR 'M'
 CHAR ' '
 TOKN 217
 CHAR 'R'
 CHAR ' '
 TOKN 207
 CHAR ' '
 CHAR 'Y'
 TOKN 238
 CHAR 'D'
 CHAR ' '
 TOKN 223
 CHAR ' '
 TOKN 19
 TOKN 230
 TOKN 244
 CHAR ' '
 CHAR 'F'
 CHAR 'I'
 TOKN 250
 CHAR ' '
 CHAR 'M'
 TOKN 223
 TOKN 226
 CHAR 'S'
 CHAR ' '
 CHAR 'A'
 CHAR 'G'
 CHAR 'O'
 TOKN 178
 TOKN 28
 TOKN 204
 TOKN 179
 CHAR 'R'
 CHAR ' '
 CHAR 'M'
 CHAR 'I'
 CHAR 'S'
 CHAR 'S'
 CHAR 'I'
 TOKN 223
 CHAR ','
 CHAR ' '
 CHAR 'S'
 CHAR 'H'
 TOKN 217
 CHAR 'L'
 CHAR 'D'
 CHAR ' '
 TOKN 179
 CHAR ' '
 CHAR 'D'
 CHAR 'E'
 CHAR 'C'
 CHAR 'I'
 CHAR 'D'
 CHAR 'E'
 TOKN 201
 CHAR 'A'
 CHAR 'C'
 TOKN 233
 CHAR 'P'
 CHAR 'T'
 CHAR ' '
 TOKN 219
 CHAR ','
 CHAR ' '
 CHAR 'I'
 CHAR 'S'
 TOKN 201
 TOKN 218
 CHAR 'E'
 CHAR 'K'
 TOKN 178
 CHAR 'D'
 TOKN 237
 CHAR 'T'
 CHAR 'R'
 CHAR 'O'
 CHAR 'Y'
 CHAR ' '
\CHAR '#'
\EQUB VE

 TOKN 148
 TOKN 207
 TOKN 204
 TOKN 179
 CHAR ' '
 CHAR 'A'
 TOKN 242
 CHAR ' '
 CHAR 'C'
 CHAR 'A'
 CHAR 'U'
 TOKN 251
 TOKN 223
 TOKN 196
 TOKN 226
 TOKN 245
 CHAR ' '
 TOKN 223
 CHAR 'L'
 CHAR 'Y'
 CHAR ' '
 TOKN 6
 TOKN 117
 TOKN 5
 CHAR 'S'
 CHAR ' '
 CHAR 'W'
 TOKN 220
 CHAR 'L'
 CHAR ' '
 CHAR 'P'
 TOKN 246
 TOKN 221
 TOKN 248
 CHAR 'T'
 CHAR 'E'
 CHAR ' '
 TOKN 147
 CHAR 'N'
 CHAR 'E'
 CHAR 'W'
 CHAR ' '
 CHAR 'S'
 CHAR 'H'
 CHAR 'I'
 CHAR 'E'
 CHAR 'L'
 CHAR 'D'
 CHAR 'S'
 TOKN 178
 TOKN 226
 TOKN 245
 CHAR ' '
 TOKN 147
 TOKN 19
 CHAR 'C'
 TOKN 223
 TOKN 222
 CHAR 'R'
 CHAR 'I'
 CHAR 'C'
 CHAR 'T'
 TOKN 253
 TOKN 202
 CHAR 'F'
 TOKN 219
 CHAR 'T'
 TOKN 196
 CHAR 'W'
 CHAR 'I'
 TOKN 226
\CHAR '#'
\EQUB VE

 CHAR ' '
 TOKN 255
 CHAR ' '
 TOKN 6
 TOKN 108
 TOKN 5
 TOKN 177
 TOKN 2
 TOKN 8
 CHAR 'G'
 CHAR 'O'
 CHAR 'O'
 CHAR 'D'
 CHAR ' '
 CHAR 'L'
 CHAR 'U'
 CHAR 'C'
 CHAR 'K'
 CHAR ','
 CHAR ' '
 TOKN 154
 TOKN 212
 TOKN 22
 EQUB VE

 TOKN 25
 TOKN 9
 TOKN 30
 TOKN 23
 TOKN 14
 TOKN 2
 CHAR ' '
 CHAR ' '
 TOKN 245
 CHAR 'T'
 TOKN 246
 TOKN 251
 TOKN 223
 TOKN 213
 CHAR '.'
 CHAR ' '
 TOKN 19
 CHAR 'W'
 CHAR 'E'
 CHAR ' '
 CHAR 'H'
 CHAR 'A'
 TOKN 250
 CHAR ' '
 CHAR 'N'
 CHAR 'E'
 TOKN 196
 CHAR 'O'
 CHAR 'F'
 CHAR ' '
 TOKN 179
 CHAR 'R'
 CHAR ' '
 TOKN 218
 CHAR 'R'
 CHAR 'V'
 CHAR 'I'
 CHAR 'C'
 TOKN 237
 CHAR ' '
 CHAR 'A'
 CHAR 'G'
 CHAR 'A'
 TOKN 240
 TOKN 204
\CHAR '#'
\EQUB VE

 CHAR 'I'
 CHAR 'F'
 CHAR ' '
 TOKN 179
 CHAR ' '
 CHAR 'W'
 TOKN 217
 CHAR 'L'
 CHAR 'D'
 CHAR ' '
 TOKN 247
 CHAR ' '
 TOKN 235
 CHAR ' '
 CHAR 'G'
 CHAR 'O'
 CHAR 'O'
 CHAR 'D'
 CHAR ' '
 CHAR 'A'
 CHAR 'S'
 TOKN 201
 CHAR 'G'
 CHAR 'O'
 TOKN 201
 TOKN 19
 TOKN 233
 TOKN 244
 TOKN 241
 CHAR ' '
 TOKN 179
 CHAR ' '
 CHAR 'W'
 TOKN 220
 CHAR 'L'
 CHAR ' '
 TOKN 247
 CHAR ' '
 CHAR 'B'
 CHAR 'R'
 CHAR 'I'
 CHAR 'E'
 CHAR 'F'
 TOKN 252
 TOKN 204
 CHAR 'I'
 CHAR 'F'
 CHAR ' '
 CHAR 'S'
 CHAR 'U'
 CHAR 'C'
 TOKN 233
 CHAR 'S'
 CHAR 'S'
 CHAR 'F'
 CHAR 'U'
 CHAR 'L'
 CHAR ','
 CHAR ' '
 TOKN 179
 CHAR ' '
 CHAR 'W'
 TOKN 220
 CHAR 'L'
 CHAR ' '
 TOKN 247
 CHAR ' '
 CHAR 'W'
 CHAR 'E'
 CHAR 'L'
 CHAR 'L'
 CHAR ' '
 TOKN 242
 CHAR 'W'
 TOKN 238
 CHAR 'D'
 TOKN 252
 TOKN 212
 TOKN 24
 EQUB VE

 CHAR '('
 TOKN 19
 CHAR 'C'
 CHAR ')'
 CHAR ' '
 CHAR 'A'
 CHAR 'C'
 TOKN 253
 CHAR 'N'
 TOKN 235
 CHAR 'F'
 CHAR 'T'
 CHAR ' '
 CHAR '1'
 CHAR '9'
 CHAR '8'
 CHAR '4'
 EQUB VE

 CHAR 'B'
 CHAR 'Y'
 CHAR ' '
 CHAR 'D'
 CHAR '.'
 CHAR 'B'
 TOKN 248
 TOKN 247
 CHAR 'N'
 CHAR ' '
 CHAR '&'
 CHAR ' '
 CHAR 'I'
 CHAR '.'
 TOKN 247
 CHAR 'L'
 CHAR 'L'
 EQUB VE

 TOKN 21
 TOKN 145
 TOKN 200
 TOKN 26
 EQUB VE

 TOKN 25
 TOKN 9
 TOKN 30
 TOKN 23
 TOKN 14
 TOKN 2
 CHAR ' '
 CHAR ' '
 CHAR 'C'
 TOKN 223
 CHAR 'G'
 TOKN 248
 CHAR 'T'
 CHAR 'U'
 TOKN 249
 TOKN 251
 TOKN 223
 CHAR 'S'
 CHAR ' '
 TOKN 154
 CHAR '!'
 TOKN 12
 TOKN 12
 TOKN 226
 TOKN 244
 CHAR 'E'
 TOKN 13
 CHAR ' '
 CHAR 'W'
 TOKN 220
 CHAR 'L'
 CHAR ' '
 TOKN 228
 CHAR 'W'
 CHAR 'A'
 CHAR 'Y'
 CHAR 'S'
 CHAR ' '
 TOKN 247
 TOKN 208
 CHAR 'P'
 TOKN 249
 TOKN 233
 CHAR ' '
 CHAR 'F'
 TOKN 253
 CHAR ' '
 TOKN 179
 CHAR ' '
 TOKN 240
 TOKN 211
 TOKN 204
 TOKN 255
 CHAR 'D'
 CHAR ' '
 TOKN 239
 CHAR 'Y'
 TOKN 247
 CHAR ' '
 TOKN 235
 TOKN 223
 TOKN 244
 CHAR ' '
 TOKN 226
 TOKN 255
 CHAR ' '
 TOKN 179
 CHAR ' '
 TOKN 226
 TOKN 240
 CHAR 'K'
\CHAR '#'
\EQUB VE

 CHAR '.'
 CHAR '.'
 TOKN 212
 TOKN 24
 EQUB VE

 CHAR 'F'
 TOKN 216
 TOKN 229
 CHAR 'D'
 EQUB VE

 TOKN 227
 CHAR 'T'
 TOKN 216
 TOKN 229
 EQUB VE

 CHAR 'W'
 CHAR 'E'
 CHAR 'L'
 CHAR 'L'
 CHAR ' '
 CHAR 'K'
 TOKN 227
 CHAR 'W'
 CHAR 'N'
 EQUB VE

 CHAR 'F'
 CHAR 'A'
 CHAR 'M'
 CHAR 'O'
 TOKN 236
 EQUB VE

 TOKN 227
 CHAR 'T'
 TOKN 252
 EQUB VE

 TOKN 250
 CHAR 'R'
 CHAR 'Y'
 EQUB VE

 CHAR 'M'
 TOKN 220
 CHAR 'D'
 CHAR 'L'
 CHAR 'Y'
 EQUB VE

 CHAR 'M'
 CHAR 'O'
 TOKN 222
 EQUB VE

 TOKN 242
 CHAR 'A'
 CHAR 'S'
 TOKN 223
 TOKN 216
 CHAR 'L'
 CHAR 'Y'
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

 TOKN 165
 EQUB VE

 TOKN 114
 EQUB VE

 CHAR 'G'
 TOKN 242
 TOKN 245
 EQUB VE

 CHAR 'V'
 CHAR 'A'
 TOKN 222
 EQUB VE

 CHAR 'P'
 TOKN 240
 CHAR 'K'
 EQUB VE

 TOKN 2
 TOKN 119
 CHAR ' '
 TOKN 118
 TOKN 13
 CHAR ' '
 TOKN 185
 CHAR 'A'
 TOKN 251
 TOKN 223
 CHAR 'S'
 EQUB VE

 TOKN 156
 CHAR 'S'
 EQUB VE

 TOKN 117
 EQUB VE

 TOKN 128
 CHAR ' '
 CHAR 'F'
 TOKN 253
 TOKN 237
 CHAR 'T'
 CHAR 'S'
 EQUB VE

 CHAR 'O'
 TOKN 233
 TOKN 255
 CHAR 'S'
 EQUB VE

 CHAR 'S'
 CHAR 'H'
 CHAR 'Y'
 CHAR 'N'
 TOKN 237
 CHAR 'S'
 EQUB VE

 CHAR 'S'
 TOKN 220
 CHAR 'L'
 TOKN 240
 TOKN 237
 CHAR 'S'
 EQUB VE

 TOKN 239
 CHAR 'T'
 TOKN 195
 CHAR 'T'
 TOKN 248
 TOKN 241
 TOKN 251
 TOKN 223
 CHAR 'S'
 EQUB VE

 TOKN 224
 TOKN 245
 CHAR 'H'
 TOKN 195
 CHAR 'O'
 CHAR 'F'
 CHAR ' '
 TOKN 100
 EQUB VE

 TOKN 224
 TOKN 250
 CHAR ' '
 CHAR 'F'
 TOKN 253
 CHAR ' '
 TOKN 100
 EQUB VE

 CHAR 'F'
 CHAR 'O'
 CHAR 'O'
 CHAR 'D'
 CHAR ' '
 CHAR 'B'
 TOKN 229
 CHAR 'N'
 CHAR 'D'
 TOKN 244
 CHAR 'S'
 EQUB VE

 CHAR 'T'
 TOKN 217
 CHAR 'R'
 CHAR 'I'
 TOKN 222
 CHAR 'S'
 EQUB VE

 CHAR 'P'
 CHAR 'O'
 TOKN 221
 CHAR 'R'
 CHAR 'Y'
 EQUB VE

 TOKN 241
 CHAR 'S'
 CHAR 'C'
 CHAR 'O'
 CHAR 'S'
 EQUB VE

 TOKN 108
 EQUB VE

 CHAR 'W'
 TOKN 228
 CHAR 'K'
 TOKN 195
 TOKN 158
 EQUB VE

 CHAR 'C'
 TOKN 248
 CHAR 'B'
 EQUB VE

 CHAR 'B'
 TOKN 245
 EQUB VE

 TOKN 224
 CHAR 'B'
 TOKN 222
 EQUB VE

 TOKN 18
 EQUB VE

 TOKN 247
 CHAR 'S'
 TOKN 221
 EQUB VE

 CHAR 'P'
 TOKN 249
 CHAR 'G'
 CHAR 'U'
 TOKN 252
 EQUB VE

 TOKN 248
 CHAR 'V'
 CHAR 'A'
 CHAR 'G'
 TOKN 252
 EQUB VE

 CHAR 'C'
 CHAR 'U'
 CHAR 'R'
 CHAR 'S'
 TOKN 252
 EQUB VE

 CHAR 'S'
 CHAR 'C'
 TOKN 217
 CHAR 'R'
 CHAR 'G'
 TOKN 252
 EQUB VE

 TOKN 113
 CHAR ' '
 CHAR 'C'
 CHAR 'I'
 CHAR 'V'
 TOKN 220
 CHAR ' '
 CHAR 'W'
 TOKN 238
 EQUB VE

 TOKN 104
 CHAR ' '
 TOKN 95
 CHAR ' '
 TOKN 96
 CHAR 'S'
 EQUB VE

 CHAR 'A'
 CHAR ' '
 TOKN 104
 CHAR ' '
 TOKN 241
 TOKN 218
 CHAR 'A'
 TOKN 218
 EQUB VE

 TOKN 113
 CHAR ' '
 CHAR 'E'
 TOKN 238
 TOKN 226
 TOKN 254
 CHAR 'A'
 CHAR 'K'
 TOKN 237
 EQUB VE

 TOKN 113
 CHAR ' '
 TOKN 235
 TOKN 249
 CHAR 'R'
 CHAR ' '
 CHAR 'A'
 CHAR 'C'
 TOKN 251
 CHAR 'V'
 TOKN 219
 CHAR 'Y'
 EQUB VE

 TOKN 175
 TOKN 93
 CHAR ' '
 TOKN 94
 EQUB VE

 TOKN 147
 TOKN 17
 CHAR ' '
 TOKN 95
 CHAR ' '
 TOKN 96
 EQUB VE

 TOKN 175
 TOKN 193
 CHAR 'S'
 CHAR 39
 CHAR ' '
 TOKN 98
 CHAR ' '
 TOKN 99
 EQUB VE

 TOKN 2
 TOKN 122
 TOKN 13
 EQUB VE

 TOKN 175
 TOKN 107
 CHAR ' '
 TOKN 108
 EQUB VE

 CHAR 'J'
 CHAR 'U'
 CHAR 'I'
 TOKN 233
 EQUB VE

 CHAR 'B'
 TOKN 248
 CHAR 'N'
 CHAR 'D'
 CHAR 'Y'
 EQUB VE

 CHAR 'W'
 TOKN 245
 TOKN 244
 EQUB VE

 CHAR 'B'
 TOKN 242
 CHAR 'W'
 EQUB VE

 CHAR 'G'
 TOKN 238
 CHAR 'G'
 TOKN 229
 CHAR ' '
 CHAR 'B'
 TOKN 249
 TOKN 222
 TOKN 244
 CHAR 'S'
 EQUB VE

 TOKN 18
 EQUB VE

 TOKN 17
 CHAR ' '
 TOKN 96
 EQUB VE

 TOKN 17
 CHAR ' '
 TOKN 18
 EQUB VE

 TOKN 17
 CHAR ' '
 TOKN 104
 EQUB VE

 TOKN 104
 CHAR ' '
 TOKN 18
 EQUB VE

 CHAR 'F'
 TOKN 216
 CHAR 'U'
 TOKN 224
 TOKN 236
 EQUB VE

 CHAR 'E'
 CHAR 'X'
 CHAR 'O'
 TOKN 251
 CHAR 'C'
 EQUB VE

 CHAR 'H'
 CHAR 'O'
 CHAR 'O'
 CHAR 'P'
 CHAR 'Y'
 EQUB VE

 CHAR 'U'
 TOKN 225
 CHAR 'S'
 CHAR 'U'
 TOKN 228
 EQUB VE

 CHAR 'E'
 CHAR 'X'
 CHAR 'C'
 TOKN 219
 TOKN 240
 CHAR 'G'
 EQUB VE

 CHAR 'C'
 CHAR 'U'
 CHAR 'I'
 CHAR 'S'
 TOKN 240
 CHAR 'E'
 EQUB VE

 CHAR 'N'
 CHAR 'I'
 CHAR 'G'
 CHAR 'H'
 CHAR 'T'
 CHAR ' '
 CHAR 'L'
 CHAR 'I'
 CHAR 'F'
 CHAR 'E'
 EQUB VE

 CHAR 'C'
 CHAR 'A'
 CHAR 'S'
 CHAR 'I'
 TOKN 227
 CHAR 'S'
 EQUB VE

 CHAR 'S'
 TOKN 219
 CHAR ' '
 CHAR 'C'
 CHAR 'O'
 CHAR 'M'
 CHAR 'S'
 EQUB VE

 TOKN 2
 TOKN 122
 TOKN 13
 EQUB VE

 TOKN 3
 EQUB VE

 TOKN 147
 TOKN 145
 CHAR ' '
 TOKN 3
 EQUB VE

 TOKN 147
 TOKN 146
 CHAR ' '
 TOKN 3
 EQUB VE

 TOKN 148
 TOKN 145
 EQUB VE

 TOKN 148
 TOKN 146
 EQUB VE

 CHAR 'S'
 TOKN 223
 CHAR ' '
 CHAR 'O'
 CHAR 'F'
 TOKN 208
 CHAR 'B'
 TOKN 219
 CHAR 'C'
 CHAR 'H'
 EQUB VE

 CHAR 'S'
 CHAR 'C'
 TOKN 217
 CHAR 'N'
 CHAR 'D'
 TOKN 242
 CHAR 'L'
 EQUB VE

 CHAR 'B'
 TOKN 249
 CHAR 'C'
 CHAR 'K'
 CHAR 'G'
 CHAR 'U'
 TOKN 238
 CHAR 'D'
 EQUB VE

 CHAR 'R'
 CHAR 'O'
 CHAR 'G'
 CHAR 'U'
 CHAR 'E'
 EQUB VE

 CHAR 'W'
 CHAR 'H'
 TOKN 253
 TOKN 237
 TOKN 223
 CHAR ' '
 TOKN 247
 TOKN 221
 TOKN 229
 CHAR ' '
 CHAR 'H'
 CHAR 'E'
 CHAR 'A'
 CHAR 'D'
 TOKN 196
 CHAR 'F'
 TOKN 249
 CHAR 'P'
 CHAR ' '
 CHAR 'E'
 TOKN 238
 CHAR 39
 CHAR 'D'
 CHAR ' '
 CHAR 'K'
 CHAR 'N'
 CHAR 'A'
 TOKN 250
 EQUB VE

 CHAR 'N'
 CHAR ' '
 CHAR 'U'
 CHAR 'N'
 TOKN 242
 TOKN 239
 CHAR 'R'
 CHAR 'K'
 TOKN 216
 TOKN 229
 EQUB VE

 CHAR ' '
 CHAR 'B'
 TOKN 253
 TOKN 240
 CHAR 'G'
 EQUB VE

 CHAR ' '
 CHAR 'D'
 CHAR 'U'
 CHAR 'L'
 CHAR 'L'
 EQUB VE

 CHAR ' '
 CHAR 'T'
 CHAR 'E'
 TOKN 241
 CHAR 'O'
 TOKN 236
 EQUB VE

 CHAR ' '
 TOKN 242
 CHAR 'V'
 CHAR 'O'
 CHAR 'L'
 CHAR 'T'
 TOKN 240
 CHAR 'G'
 EQUB VE

 TOKN 145
 EQUB VE

 TOKN 146
 EQUB VE

 CHAR 'P'
 TOKN 249
 TOKN 233
 EQUB VE

 CHAR 'L'
 TOKN 219
 CHAR 'T'
 TOKN 229
 CHAR ' '
 TOKN 145
 EQUB VE

 CHAR 'D'
 CHAR 'U'
 CHAR 'M'
 CHAR 'P'
 EQUB VE

 CHAR 'I'
 CHAR ' '
 CHAR 'H'
 CHAR 'E'
 TOKN 238
 TOKN 208
 TOKN 114
 CHAR ' '
 TOKN 224
 CHAR 'O'
 CHAR 'K'
 TOKN 195
 TOKN 207
 CHAR ' '
 CHAR 'A'
 CHAR 'P'
 CHAR 'P'
 CHAR 'E'
 TOKN 238
 TOKN 196
 TOKN 245
 TOKN 209
 EQUB VE

 CHAR 'Y'
 CHAR 'E'
 CHAR 'A'
 CHAR 'H'
 CHAR ','
 CHAR ' '
 CHAR 'I'
 CHAR ' '
 CHAR 'H'
 CHAR 'E'
 TOKN 238
 TOKN 208
 TOKN 114
 CHAR ' '
 TOKN 207
 CHAR ' '
 TOKN 229
 CHAR 'F'
 CHAR 'T'
 TOKN 209
 TOKN 208
 CHAR ' '
 CHAR 'W'
 CHAR 'H'
 CHAR 'I'
 TOKN 229
 CHAR ' '
 CHAR 'B'
 CHAR 'A'
 CHAR 'C'
 CHAR 'K'
 EQUB VE

 CHAR 'G'
 TOKN 221
 CHAR ' '
 TOKN 179
 CHAR 'R'
 CHAR ' '
 CHAR 'I'
 CHAR 'R'
 TOKN 223
 CHAR ' '
 CHAR 'A'
 CHAR 'S'
 CHAR 'S'
 CHAR ' '
 CHAR 'O'
 CHAR 'V'
 TOKN 244
 CHAR ' '
 CHAR 'T'
 CHAR 'O'
 TOKN 209
 EQUB VE

 TOKN 235
 CHAR 'M'
 CHAR 'E'
 CHAR ' '
 TOKN 115
 TOKN 210
 TOKN 207
 CHAR ' '
 CHAR 'W'
 CHAR 'A'
 CHAR 'S'
 CHAR ' '
 TOKN 218
 TOKN 246
 CHAR ' '
 TOKN 245
 TOKN 209
 EQUB VE

 CHAR 'T'
 CHAR 'R'
 CHAR 'Y'
 TOKN 209
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

 CHAR 'W'
 CHAR 'A'
 CHAR 'S'
 CHAR 'P'
 EQUB VE

 CHAR 'M'
 CHAR 'O'
 TOKN 226
 EQUB VE

 CHAR 'G'
 CHAR 'R'
 CHAR 'U'
 CHAR 'B'
 EQUB VE

 TOKN 255
 CHAR 'T'
 EQUB VE

 TOKN 18
 EQUB VE

 CHAR 'P'
 CHAR 'O'
 TOKN 221
 EQUB VE

 TOKN 238
 CHAR 'T'
 CHAR 'S'
 CHAR ' '
 CHAR 'G'
 TOKN 248
 CHAR 'D'
 CHAR 'U'
 TOKN 245
 CHAR 'E'
 EQUB VE

 CHAR 'Y'
 CHAR 'A'
 CHAR 'K'
 EQUB VE

 CHAR 'S'
 CHAR 'N'
 CHAR 'A'
 TOKN 220
 EQUB VE

 CHAR 'S'
 CHAR 'L'
 CHAR 'U'
 CHAR 'G'
 EQUB VE

 CHAR 'T'
 CHAR 'R'
 CHAR 'O'
 CHAR 'P'
 CHAR 'I'
 CHAR 'C'
 TOKN 228
 EQUB VE

 CHAR 'D'
 TOKN 246
 TOKN 218
 EQUB VE

 TOKN 248
 TOKN 240
 EQUB VE

 CHAR 'I'
 CHAR 'M'
 CHAR 'P'
 TOKN 246
 TOKN 221
 TOKN 248
 CHAR 'B'
 TOKN 229
 EQUB VE

 CHAR 'E'
 CHAR 'X'
 CHAR 'U'
 TOKN 247
 TOKN 248
 CHAR 'N'
 CHAR 'T'
 EQUB VE

 CHAR 'F'
 CHAR 'U'
 CHAR 'N'
 CHAR 'N'
 CHAR 'Y'
 EQUB VE

 CHAR 'W'
 CHAR 'I'
 TOKN 244
 CHAR 'D'
 EQUB VE

 CHAR 'U'
 TOKN 225
 CHAR 'S'
 CHAR 'U'
 TOKN 228
 EQUB VE

 TOKN 222
 TOKN 248
 CHAR 'N'
 TOKN 231
 EQUB VE

 CHAR 'P'
 CHAR 'E'
 CHAR 'C'
 CHAR 'U'
 CHAR 'L'
 CHAR 'I'
 TOKN 238
 EQUB VE

 CHAR 'F'
 TOKN 242
 TOKN 254
 TOKN 246
 CHAR 'T'
 EQUB VE

 CHAR 'O'
 CHAR 'C'
 CHAR 'C'
 CHAR 'A'
 CHAR 'S'
 CHAR 'I'
 TOKN 223
 TOKN 228
 EQUB VE

 CHAR 'U'
 CHAR 'N'
 CHAR 'P'
 TOKN 242
 TOKN 241
 CHAR 'C'
 CHAR 'T'
 TOKN 216
 TOKN 229
 EQUB VE

 CHAR 'D'
 TOKN 242
 CHAR 'A'
 CHAR 'D'
 CHAR 'F'
 CHAR 'U'
 CHAR 'L'
 EQUB VE

 TOKN 171
 EQUB VE

 TOKN 92
 CHAR ' '
 TOKN 91
 CHAR ' '
 CHAR 'F'
 TOKN 253
 CHAR ' '
 TOKN 101
 EQUB VE

 TOKN 140
 TOKN 178
 TOKN 101
 EQUB VE

 TOKN 102
 CHAR ' '
 CHAR 'B'
 CHAR 'Y'
 CHAR ' '
 TOKN 103
 EQUB VE

 TOKN 140
 CHAR ' '
 CHAR 'B'
 CHAR 'U'
 CHAR 'T'
 CHAR ' '
 TOKN 142
 EQUB VE

 CHAR ' '
 CHAR 'A'
 TOKN 111
 CHAR ' '
 TOKN 112
 EQUB VE

 CHAR 'P'
 CHAR 'L'
 TOKN 255
 TOKN 221
 EQUB VE

 CHAR 'W'
 TOKN 253
 CHAR 'L'
 CHAR 'D'
 EQUB VE

 TOKN 226
 CHAR 'E'
 CHAR ' '
 EQUB VE

 TOKN 226
 CHAR 'I'
 CHAR 'S'
 CHAR ' '
 EQUB VE

 TOKN 224
 CHAR 'A'
 CHAR 'D'
 TOKN 210
 TOKN 154
 EQUB VE

 TOKN 9
 TOKN 11
 TOKN 1
 TOKN 8
 EQUB VE

 CHAR 'D'
 CHAR 'R'
 CHAR 'I'
 TOKN 250
 EQUB VE

 CHAR ' '
 CHAR 'C'
 TOKN 245
 CHAR 'A'
 TOKN 224
 CHAR 'G'
 CHAR 'U'
 CHAR 'E'
 EQUB VE

 CHAR 'I'
 TOKN 255
 EQUB VE

 TOKN 19
 CHAR 'C'
 CHAR 'O'
 CHAR 'M'
 CHAR 'M'
 TOKN 255
 CHAR 'D'
 TOKN 244
 EQUB VE

 TOKN 104
 EQUB VE

 CHAR 'M'
 TOKN 217
 CHAR 'N'
 CHAR 'T'
 CHAR 'A'
 TOKN 240
 EQUB VE

 TOKN 252
 CHAR 'I'
 CHAR 'B'
 TOKN 229
 EQUB VE

 CHAR 'T'
 TOKN 242
 CHAR 'E'
 EQUB VE

 CHAR 'S'
 CHAR 'P'
 CHAR 'O'
 CHAR 'T'
 CHAR 'T'
 TOKN 252
 EQUB VE

 TOKN 120
 EQUB VE

 TOKN 121
 EQUB VE

 TOKN 97
 CHAR 'O'
 CHAR 'I'
 CHAR 'D'
 EQUB VE

 TOKN 127
 EQUB VE

 TOKN 126
 EQUB VE

 TOKN 255
 CHAR 'C'
 CHAR 'I'
 TOKN 246
 CHAR 'T'
 EQUB VE

 CHAR 'E'
 CHAR 'X'
 TOKN 233
 CHAR 'P'
 TOKN 251
 TOKN 223
 TOKN 228
 EQUB VE

 CHAR 'E'
 CHAR 'C'
 TOKN 233
 CHAR 'N'
 CHAR 'T'
 CHAR 'R'
 CHAR 'I'
 CHAR 'C'
 EQUB VE

 TOKN 240
 CHAR 'G'
 TOKN 248
 TOKN 240
 TOKN 252
 EQUB VE

 TOKN 114
 EQUB VE

 CHAR 'K'
 TOKN 220
 CHAR 'L'
 TOKN 244
 EQUB VE

 CHAR 'D'
 CHAR 'E'
 CHAR 'A'
 CHAR 'D'
 CHAR 'L'
 CHAR 'Y'
 EQUB VE

 CHAR 'E'
 CHAR 'V'
 TOKN 220
 EQUB VE

 TOKN 229
 TOKN 226
 TOKN 228
 EQUB VE

 CHAR 'V'
 CHAR 'I'
 CHAR 'C'
 CHAR 'I'
 CHAR 'O'
 TOKN 236
 EQUB VE

 TOKN 219
 CHAR 'S'
 CHAR ' '
 EQUB VE

 TOKN 13
 TOKN 14
 TOKN 19
 EQUB VE

 CHAR '.'
 TOKN 12
 TOKN 15
 EQUB VE

 CHAR ' '
 TOKN 255
 CHAR 'D'
 CHAR ' '
 EQUB VE

 CHAR 'Y'
 TOKN 217
 EQUB VE

 CHAR 'P'
 TOKN 238
 CHAR 'K'
 TOKN 195
 CHAR 'M'
 TOKN 221
 TOKN 244
 CHAR 'S'
 EQUB VE

 CHAR 'D'
 TOKN 236
 CHAR 'T'
 CHAR ' '
 CHAR 'C'
 TOKN 224
 CHAR 'U'
 CHAR 'D'
 CHAR 'S'
 EQUB VE

 CHAR 'I'
 TOKN 233
 CHAR ' '
 TOKN 247
 CHAR 'R'
 CHAR 'G'
 CHAR 'S'
 EQUB VE

 CHAR 'R'
 CHAR 'O'
 CHAR 'C'
 CHAR 'K'
 CHAR ' '
 CHAR 'F'
 TOKN 253
 TOKN 239
 TOKN 251
 TOKN 223
 CHAR 'S'
 EQUB VE

 CHAR 'V'
 CHAR 'O'
 CHAR 'L'
 CHAR 'C'
 CHAR 'A'
 TOKN 227
 TOKN 237
 EQUB VE

 CHAR 'P'
 CHAR 'L'
 TOKN 255
 CHAR 'T'
 EQUB VE

 CHAR 'T'
 CHAR 'U'
 CHAR 'L'
 CHAR 'I'
 CHAR 'P'
 EQUB VE

 CHAR 'B'
 TOKN 255
 TOKN 255
 CHAR 'A'
 EQUB VE

 CHAR 'C'
 TOKN 253
 CHAR 'N'
 EQUB VE

 TOKN 18
 CHAR 'W'
 CHAR 'E'
 TOKN 252
 EQUB VE

 TOKN 18
 EQUB VE

 TOKN 17
 CHAR ' '
 TOKN 18
 EQUB VE

 TOKN 17
 CHAR ' '
 TOKN 104
 EQUB VE

 TOKN 240
 CHAR 'H'
 CHAR 'A'
 TOKN 234
 CHAR 'T'
 TOKN 255
 CHAR 'T'
 EQUB VE

 TOKN 191
 EQUB VE

 TOKN 240
 CHAR 'G'
 CHAR ' '
 EQUB VE

 TOKN 252
 CHAR ' '
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

 CHAR ' '
 CHAR 'N'
 CHAR 'A'
 CHAR 'M'
 CHAR 'E'
 CHAR '?'
 CHAR ' '
 EQUB VE

 CHAR ' '
 CHAR 'T'
 CHAR 'O'
 CHAR ' '
 EQUB VE

 CHAR ' '
 CHAR 'I'
 CHAR 'S'
 CHAR ' '
 EQUB VE

 CHAR 'W'
 CHAR 'A'
 CHAR 'S'
 CHAR ' '
 TOKN 249
 TOKN 222
 CHAR ' '
 TOKN 218
 TOKN 246
 CHAR ' '
 TOKN 245
 CHAR ' '
 TOKN 19
 EQUB VE

 CHAR '.'
 TOKN 12
 CHAR ' '
 TOKN 19
 EQUB VE

 CHAR 'D'
 CHAR 'O'
 CHAR 'C'
 CHAR 'K'
 TOKN 252
 EQUB VE

 TOKN 1
 CHAR '('
 CHAR 'Y'
 CHAR '/'
 CHAR 'N'
 CHAR ')'
 CHAR '?'
 EQUB VE

 CHAR 'S'
 CHAR 'H'
 CHAR 'I'
 CHAR 'P'
 EQUB VE

 CHAR ' '
 CHAR 'A'
 CHAR ' '
 EQUB VE

 CHAR ' '
 TOKN 244
 CHAR 'R'
 CHAR 'I'
 TOKN 236
 EQUB VE

 CHAR ' '
 CHAR 'N'
 CHAR 'E'
 CHAR 'W'
 CHAR ' '
 EQUB VE

 TOKN 2
 CHAR ' '
 CHAR 'H'
 TOKN 244
 CHAR ' '
 TOKN 239
 CHAR 'J'
 TOKN 237
 CHAR 'T'
 CHAR 'Y'
 CHAR 39
 CHAR 'S'
 CHAR ' '
 CHAR 'S'
 CHAR 'P'
 CHAR 'A'
 TOKN 233
 CHAR ' '
 CHAR 'N'
 CHAR 'A'
 CHAR 'V'
 CHAR 'Y'
 TOKN 13
 EQUB VE

 TOKN 177
 TOKN 8
 TOKN 1
 CHAR ' '
 CHAR ' '
 CHAR 'M'
 TOKN 237
 CHAR 'S'
 CHAR 'A'
 TOKN 231
 CHAR ' '
 TOKN 246
 CHAR 'D'
 CHAR 'S'
 EQUB VE

 CHAR ' '
 TOKN 154
 CHAR ' '
 TOKN 4
 CHAR ','
 CHAR ' '
 CHAR 'I'
 CHAR ' '
 TOKN 13
 CHAR 'A'
 CHAR 'M'
 TOKN 2
 CHAR ' '
 CHAR 'C'
 CHAR 'A'
 CHAR 'P'
 CHAR 'T'
 CHAR 'A'
 TOKN 240
 CHAR ' '
 TOKN 27
 CHAR ' '
 TOKN 13
 CHAR 'O'
 CHAR 'F'
 TOKN 211
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

 TOKN 15
 CHAR ' '
 CHAR 'U'
 CHAR 'N'
 CHAR 'K'
 TOKN 227
 CHAR 'W'
 CHAR 'N'
 CHAR ' '
 TOKN 145
 EQUB VE

 TOKN 9
 TOKN 8
 TOKN 23
 TOKN 30
 TOKN 1
 TOKN 240
 CHAR 'C'
 CHAR 'O'
 CHAR 'M'
 TOKN 195
 CHAR 'M'
 TOKN 237
 CHAR 'S'
 CHAR 'A'
 TOKN 231
 EQUB VE

 CHAR 'C'
 CHAR 'U'
 CHAR 'R'
 CHAR 'R'
 CHAR 'U'
 TOKN 226
 TOKN 244
 CHAR 'S'
 EQUB VE

 CHAR 'F'
 CHAR 'O'
 CHAR 'S'
 CHAR 'D'
 CHAR 'Y'
 CHAR 'K'
 CHAR 'E'
 CHAR ' '
 CHAR 'S'
 CHAR 'M'
 CHAR 'Y'
 TOKN 226
 CHAR 'E'
 EQUB VE

 CHAR 'F'
 TOKN 253
 CHAR 'T'
 TOKN 237
 TOKN 254
 CHAR 'E'
 EQUB VE

 TOKN 203
 TOKN 242
 TOKN 237
 TOKN 241
 TOKN 233
 EQUB VE

 CHAR 'I'
 CHAR 'S'
 CHAR ' '
 TOKN 247
 CHAR 'L'
 CHAR 'I'
 CHAR 'E'
 CHAR 'V'
 TOKN 252
 TOKN 201
 CHAR 'H'
 CHAR 'A'
 TOKN 250
 CHAR ' '
 CHAR 'J'
 CHAR 'U'
 CHAR 'M'
 CHAR 'P'
 TOKN 252
 TOKN 201
 TOKN 148
 CHAR 'G'
 TOKN 228
 CHAR 'A'
 CHAR 'X'
 CHAR 'Y'
 EQUB VE

 TOKN 25
 TOKN 9
 TOKN 30
 TOKN 29
 TOKN 14
 TOKN 2
 CHAR 'G'
 CHAR 'O'
 CHAR 'O'
 CHAR 'D'
 CHAR ' '
 CHAR 'D'
 CHAR 'A'
 CHAR 'Y'
 CHAR ' '
 TOKN 154
 CHAR ' '
 TOKN 4
 TOKN 204
 CHAR 'I'
 TOKN 13
 CHAR ' '
 CHAR 'A'
 CHAR 'M'
 CHAR ' '
 TOKN 19
 CHAR 'A'
 CHAR 'G'
 TOKN 246
 CHAR 'T'
 CHAR ' '
 TOKN 19
 CHAR 'B'
 TOKN 249
 CHAR 'K'
 CHAR 'E'
 CHAR ' '
 CHAR 'O'
 CHAR 'F'
 CHAR ' '
 TOKN 19
 CHAR 'N'
 CHAR 'A'
 CHAR 'V'
 CHAR 'A'
 CHAR 'L'
 CHAR ' '
 TOKN 19
 TOKN 240
 CHAR 'T'
 CHAR 'E'
 CHAR 'L'
 TOKN 229
 CHAR 'G'
 TOKN 246
 TOKN 233
 TOKN 204
 CHAR 'A'
 CHAR 'S'
 CHAR ' '
 TOKN 179
 CHAR ' '
 CHAR 'K'
 TOKN 227
 CHAR 'W'
 CHAR ','
 CHAR ' '
 TOKN 147
 TOKN 19
 CHAR 'N'
 CHAR 'A'
 CHAR 'V'
 CHAR 'Y'
 CHAR ' '
 CHAR 'H'
 CHAR 'A'
 TOKN 250
 CHAR ' '
 TOKN 247
 TOKN 246
 CHAR ' '
 CHAR 'K'
 CHAR 'E'
 CHAR 'E'
 CHAR 'P'
 TOKN 195
 TOKN 147
 TOKN 19
 TOKN 226
 TOKN 238
 CHAR 'G'
 CHAR 'O'
 CHAR 'I'
 CHAR 'D'
 CHAR 'S'
\CHAR '#'
\EQUB VE

 CHAR ' '
 CHAR 'O'
 CHAR 'F'
 CHAR 'F'
 CHAR ' '
 TOKN 179
 CHAR 'R'
 CHAR ' '
 CHAR 'A'
 CHAR 'S'
 CHAR 'S'
 CHAR ' '
 TOKN 217
 CHAR 'T'
 CHAR ' '
 TOKN 240
 CHAR ' '
 CHAR 'D'
 CHAR 'E'
 CHAR 'E'
 CHAR 'P'
 CHAR ' '
 CHAR 'S'
 CHAR 'P'
 CHAR 'A'
 TOKN 233
 CHAR ' '
 CHAR 'F'
 TOKN 253
 CHAR ' '
 TOKN 239
 CHAR 'N'
 CHAR 'Y'
 CHAR ' '
 CHAR 'Y'
 CHAR 'E'
 TOKN 238
 CHAR 'S'
 CHAR ' '
 TOKN 227
 CHAR 'W'
 CHAR '.'
 CHAR ' '
 TOKN 19
 CHAR 'W'
 CHAR 'E'
 CHAR 'L'
 CHAR 'L'
 CHAR ' '
 TOKN 147
 CHAR 'S'
 TOKN 219
 CHAR 'U'
 CHAR 'A'
 TOKN 251
 TOKN 223
 CHAR ' '
 CHAR 'H'
 CHAR 'A'
 CHAR 'S'
 CHAR ' '
 CHAR 'C'
 CHAR 'H'
 TOKN 255
 CHAR 'G'
 TOKN 252
 TOKN 204
 TOKN 217
 CHAR 'R'
 CHAR ' '
 CHAR 'B'
 CHAR 'O'
 CHAR 'Y'
 CHAR 'S'
 CHAR ' '
 TOKN 238
 CHAR 'E'
 CHAR ' '
 TOKN 242
 CHAR 'A'
 CHAR 'D'
 CHAR 'Y'
 CHAR ' '
 CHAR 'F'
 TOKN 253
 TOKN 208
 CHAR 'P'
 CHAR 'U'
 CHAR 'S'
 CHAR 'H'
 CHAR ' '
 CHAR 'R'
 CHAR 'I'
 CHAR 'G'
 CHAR 'H'
 CHAR 'T'
 TOKN 201
 TOKN 147
\CHAR '#'
\EQUB VE

 CHAR 'H'
 CHAR 'O'
 CHAR 'M'
 CHAR 'E'
 CHAR ' '
 CHAR 'S'
 CHAR 'Y'
 CHAR 'S'
 CHAR 'T'
 CHAR 'E'
 CHAR 'M'
 CHAR ' '
 CHAR 'O'
 CHAR 'F'
 CHAR ' '
 TOKN 226
 CHAR 'O'
 TOKN 218
 CHAR ' '
 CHAR 'M'
 CHAR 'O'
 TOKN 226
 TOKN 244
 CHAR 'S'
 TOKN 204
 TOKN 24
 TOKN 9
 TOKN 30
 TOKN 29
 CHAR 'I'
 TOKN 13
 CHAR ' '
 CHAR 'H'
 CHAR 'A'
 TOKN 250
 CHAR ' '
 CHAR 'O'
 CHAR 'B'
 CHAR 'T'
 CHAR 'A'
 TOKN 240
 TOKN 196
 TOKN 147
 CHAR 'D'
 CHAR 'E'
 CHAR 'F'
 TOKN 246
 TOKN 233
 CHAR ' '
 CHAR 'P'
 TOKN 249
 CHAR 'N'
 CHAR 'S'
 CHAR ' '
 CHAR 'F'
 TOKN 253
 CHAR ' '
 TOKN 226
 CHAR 'E'
 CHAR 'I'
 CHAR 'R'
 CHAR ' '
 TOKN 19
 CHAR 'H'
 CHAR 'I'
 TOKN 250
 CHAR ' '
 TOKN 19
 CHAR 'W'
 TOKN 253
 CHAR 'L'
 CHAR 'D'
 CHAR 'S'
 TOKN 204
 TOKN 147
 TOKN 247
 TOKN 221
 TOKN 229
 CHAR 'S'
 CHAR ' '
 CHAR 'K'
 TOKN 227
 CHAR 'W'
 CHAR ' '
 CHAR 'W'
 CHAR 'E'
 CHAR 39
 TOKN 250
 CHAR ' '
 CHAR 'G'
 CHAR 'O'
 CHAR 'T'
 CHAR ' '
 TOKN 235
 CHAR 'M'
 CHAR 'E'
 TOKN 226
\CHAR '#'
\EQUB VE

 TOKN 195
 CHAR 'B'
 CHAR 'U'
 CHAR 'T'
 CHAR ' '
 TOKN 227
 CHAR 'T'
 CHAR ' '
 CHAR 'W'
 CHAR 'H'
 TOKN 245
 TOKN 204
 CHAR 'I'
 CHAR 'F'
 CHAR ' '
 TOKN 19
 CHAR 'I'
 CHAR ' '
 CHAR 'T'
 TOKN 248
 CHAR 'N'
 CHAR 'S'
 CHAR 'M'
 TOKN 219
 CHAR ' '
 TOKN 147
 CHAR 'P'
 TOKN 249
 CHAR 'N'
 CHAR 'S'
 TOKN 201
 TOKN 217
 CHAR 'R'
 CHAR ' '
 CHAR 'B'
 CHAR 'A'
 TOKN 218
 CHAR ' '
 TOKN 223
 CHAR ' '
 TOKN 19
 TOKN 234
 TOKN 242
 TOKN 248
 CHAR ' '
 TOKN 226
 CHAR 'E'
 CHAR 'Y'
 CHAR 39
 CHAR 'L'
 CHAR 'L'
 CHAR ' '
 TOKN 240
 CHAR 'T'
 TOKN 244
 TOKN 233
 CHAR 'P'
 CHAR 'T'
 CHAR ' '
 TOKN 147
 CHAR 'T'
 CHAR 'R'
 TOKN 255
 CHAR 'S'
 CHAR 'M'
 CHAR 'I'
 CHAR 'S'
 CHAR 'S'
 CHAR 'I'
 TOKN 223
 CHAR '.'
\CHAR '#'
\EQUB VE

 CHAR ' '
 TOKN 19
 CHAR 'I'
 CHAR ' '
 CHAR 'N'
 CHAR 'E'
 TOKN 252
 TOKN 208
 TOKN 207
 TOKN 201
 TOKN 239
 CHAR 'K'
 CHAR 'E'
 CHAR ' '
 TOKN 147
 CHAR 'R'
 CHAR 'U'
 CHAR 'N'
 TOKN 204
 TOKN 179
 CHAR 39
 TOKN 242
 CHAR ' '
 CHAR 'E'
 TOKN 229
 CHAR 'C'
 CHAR 'T'
 TOKN 252
\CHAR '#'
\EQUB VE

 TOKN 204
 TOKN 147
 CHAR 'P'
 TOKN 249
 CHAR 'N'
 CHAR 'S'
 CHAR ' '
 CHAR 'A'
 TOKN 242
 CHAR ' '
 CHAR 'U'
 CHAR 'N'
 CHAR 'I'
 CHAR 'P'
 CHAR 'U'
 CHAR 'L'
 TOKN 218
 CHAR ' '
 CHAR 'C'
 CHAR 'O'
 CHAR 'D'
 TOKN 196
 CHAR 'W'
 CHAR 'I'
 TOKN 226
 TOKN 240
 CHAR ' '
 TOKN 148
 CHAR 'T'
 CHAR 'R'
 TOKN 255
 CHAR 'S'
 CHAR 'M'
 CHAR 'I'
 CHAR 'S'
 CHAR 'S'
 CHAR 'I'
 TOKN 223
 TOKN 204
 TOKN 8
 TOKN 179
 CHAR ' '
 CHAR 'W'
 TOKN 220
 CHAR 'L'
 CHAR ' '
 TOKN 247
 CHAR ' '
 CHAR 'P'
 CHAR 'A'
 CHAR 'I'
 CHAR 'D'
 TOKN 204
 CHAR ' '
 CHAR ' '
 CHAR ' '
 CHAR ' '
 TOKN 19
 CHAR 'G'
 CHAR 'O'
 CHAR 'O'
 CHAR 'D'
 CHAR ' '
 CHAR 'L'
 CHAR 'U'
 CHAR 'C'
 CHAR 'K'
 CHAR ' '
 TOKN 154
 TOKN 212
 TOKN 24
 EQUB VE

 TOKN 25
 TOKN 9
 TOKN 29
 TOKN 30
 TOKN 8
 TOKN 14
 TOKN 13
 TOKN 19
 CHAR 'W'
 CHAR 'E'
 CHAR 'L'
 CHAR 'L'
 CHAR ' '
 CHAR 'D'
 TOKN 223
 CHAR 'E'
 CHAR ' '
 TOKN 154
 TOKN 204
 TOKN 179
 CHAR ' '
 CHAR 'H'
 CHAR 'A'
 TOKN 250
 CHAR ' '
 TOKN 218
 CHAR 'R'
 CHAR 'V'
 TOKN 196
 CHAR 'U'
 CHAR 'S'
 CHAR ' '
 CHAR 'W'
 CHAR 'E'
 CHAR 'L'
 CHAR 'L'
 TOKN 178
 CHAR 'W'
 CHAR 'E'
 CHAR ' '
 CHAR 'S'
 CHAR 'H'
 TOKN 228
 CHAR 'L'
 CHAR ' '
 TOKN 242
 CHAR 'M'
 CHAR 'E'
 CHAR 'M'
 CHAR 'B'
 TOKN 244
 TOKN 204
\CHAR '#'
\EQUB VE

 CHAR 'W'
 CHAR 'E'
 CHAR ' '
 CHAR 'D'
 CHAR 'I'
 CHAR 'D'
 CHAR ' '
 TOKN 227
 CHAR 'T'
 CHAR ' '
 CHAR 'E'
 CHAR 'X'
 CHAR 'P'
 CHAR 'E'
 CHAR 'C'
 CHAR 'T'
 CHAR ' '
 TOKN 147
 TOKN 19
 TOKN 226
 TOKN 238
 CHAR 'G'
 CHAR 'O'
 CHAR 'I'
 CHAR 'D'
 CHAR 'S'
 TOKN 201
 CHAR 'F'
 TOKN 240
 CHAR 'D'
 CHAR ' '
 TOKN 217
 CHAR 'T'
 CHAR ' '
 CHAR 'A'
 CHAR 'B'
 TOKN 217
 CHAR 'T'
 CHAR ' '
 TOKN 179
 TOKN 204
\CHAR '#'
\EQUB VE

 CHAR 'F'
 TOKN 253
 CHAR ' '
 TOKN 147
 CHAR 'M'
 CHAR 'O'
 CHAR 'M'
 TOKN 246
 CHAR 'T'
 CHAR ' '
 CHAR 'P'
 TOKN 229
 CHAR 'A'
 TOKN 218
 CHAR ' '
 CHAR 'A'
 CHAR 'C'
 TOKN 233
 CHAR 'P'
 CHAR 'T'
 CHAR ' '
 TOKN 148
\CHAR '#'
\EQUB VE

 TOKN 19
 CHAR 'N'
 CHAR 'A'
 CHAR 'V'
 CHAR 'Y'
 CHAR ' '
 TOKN 6
 TOKN 114
 TOKN 5
 CHAR ' '
 CHAR 'A'
 CHAR 'S'
 CHAR ' '
 CHAR 'P'
 CHAR 'A'
 CHAR 'Y'
 CHAR 'M'
 TOKN 246
 CHAR 'T'
 TOKN 212
 TOKN 24
 EQUB VE

\EQUB 0 EOR VE
 EQUB VE

 CHAR 'S'
 CHAR 'H'
 TOKN 242
 CHAR 'W'
 EQUB VE

 TOKN 247
 CHAR 'A'
 TOKN 222
 EQUB VE

 CHAR 'B'
 CHAR 'I'
 CHAR 'S'
 TOKN 223
 EQUB VE

 CHAR 'S'
 CHAR 'N'
 CHAR 'A'
 CHAR 'K'
 CHAR 'E'
 EQUB VE

 CHAR 'W'
 CHAR 'O'
 CHAR 'L'
 CHAR 'F'
 EQUB VE

 TOKN 229
 CHAR 'O'
 CHAR 'P'
 TOKN 238
 CHAR 'D'
 EQUB VE

 CHAR 'C'
 TOKN 245
 EQUB VE

 CHAR 'M'
 TOKN 223
 CHAR 'K'
 CHAR 'E'
 CHAR 'Y'
 EQUB VE

 CHAR 'G'
 CHAR 'O'
 TOKN 245
 EQUB VE

 CHAR 'F'
 CHAR 'I'
 CHAR 'S'
 CHAR 'H'
 EQUB VE

 TOKN 106
 CHAR ' '
 TOKN 105
 EQUB VE

 TOKN 17
 CHAR ' '
 TOKN 120
 CHAR ' '
 TOKN 123
 EQUB VE

 TOKN 175
 TOKN 107
 CHAR ' '
 TOKN 121
 CHAR ' '
 TOKN 123
 EQUB VE

 TOKN 124
 CHAR ' '
 TOKN 125
 EQUB VE

 TOKN 106
 CHAR ' '
 TOKN 105
 EQUB VE

 CHAR 'M'
 CHAR 'E'
 TOKN 245
 EQUB VE

 CHAR 'C'
 CHAR 'U'
 CHAR 'T'
 CHAR 'L'
 TOKN 221
 EQUB VE

 TOKN 222
 CHAR 'E'
 CHAR 'A'
 CHAR 'K'
 EQUB VE

 CHAR 'B'
 CHAR 'U'
 CHAR 'R'
 CHAR 'G'
 TOKN 244
 CHAR 'S'
 EQUB VE

 TOKN 235
 CHAR 'U'
 CHAR 'P'
 EQUB VE

 CHAR 'I'
 TOKN 233
 EQUB VE

 CHAR 'M'
 CHAR 'U'
 CHAR 'D'
 EQUB VE

 CHAR 'Z'
 TOKN 244
 CHAR 'O'
 CHAR '-'
 TOKN 19
 CHAR 'G'
 EQUB VE

 CHAR 'V'
 CHAR 'A'
 CHAR 'C'
 CHAR 'U'
 CHAR 'U'
 CHAR 'M'
 EQUB VE

 TOKN 17
 CHAR ' '
 CHAR 'U'
 CHAR 'L'
 CHAR 'T'
 TOKN 248
 EQUB VE

 CHAR 'H'
 CHAR 'O'
 CHAR 'C'
 CHAR 'K'
 CHAR 'E'
 CHAR 'Y'
 EQUB VE

 CHAR 'C'
 CHAR 'R'
 CHAR 'I'
 CHAR 'C'
 CHAR 'K'
 TOKN 221
 EQUB VE

 CHAR 'K'
 TOKN 238
 TOKN 245
 CHAR 'E'
 EQUB VE

 CHAR 'P'
 CHAR 'O'
 TOKN 224
 EQUB VE

 CHAR 'T'
 TOKN 246
 CHAR 'N'
 CHAR 'I'
 CHAR 'S'
 EQUB VE

 EQUB VE
}

\ ******************************************************************************
\       Name: RUPLA
\ ******************************************************************************

.RUPLA
{
 EQUB 211
 EQUB 150
 EQUB 36
 EQUB 28
 EQUB 253
 EQUB 79
 EQUB 53
 EQUB 118
 EQUB 100
 EQUB 32
 EQUB 68
 EQUB 164
 EQUB 220
 EQUB 106
 EQUB 16
 EQUB 162
 EQUB 3
 EQUB 107
 EQUB 26
 EQUB 192
 EQUB 184
 EQUB 5
 EQUB 101
 EQUB 193
 EQUB 41
 EQUB 7
}

\ ******************************************************************************
\       Name: RUGAL
\ ******************************************************************************

.RUGAL
{
 EQUB 128
 EQUB 0
 EQUB 0
 EQUB 0
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 130
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 1
 EQUB 2
 EQUB 1
 EQUB &82
 EQUB 128
}

\ ******************************************************************************
\       Name: RUTOK
\ ******************************************************************************

.RUTOK
{
 EQUB VE

 TOKN 147
 CHAR 'C'
 CHAR 'O'
 TOKN 224
 CHAR 'N'
 CHAR 'I'
 TOKN 222
 CHAR 'S'
 CHAR ' '
 CHAR 'H'
 CHAR 'E'
 TOKN 242
 CHAR ' '
 CHAR 'H'
 CHAR 'A'
 TOKN 250
 CHAR ' '
 CHAR 'V'
 CHAR 'I'
 CHAR 'O'
 CHAR 'L'
 TOKN 245
 TOKN 252
 TOKN 2
 CHAR ' '
 TOKN 240
 CHAR 'T'
 TOKN 244
 CHAR 'G'
 TOKN 228
 CHAR 'A'
 CHAR 'C'
 TOKN 251
 CHAR 'C'
 CHAR ' '
 CHAR 'C'
 TOKN 224
 CHAR 'N'
 TOKN 195
 CHAR 'P'
 CHAR 'R'
 CHAR 'O'
 CHAR 'T'
 CHAR 'O'
 CHAR 'C'
 CHAR 'O'
 CHAR 'L'
 TOKN 13
 TOKN 178
 CHAR 'S'
 CHAR 'H'
 TOKN 217
 CHAR 'L'
 CHAR 'D'
 CHAR ' '
 TOKN 247
 CHAR ' '
 CHAR 'A'
 CHAR 'V'
 CHAR 'O'
 CHAR 'I'
 CHAR 'D'
 TOKN 252
 EQUB VE

 TOKN 147
 CHAR 'C'
 TOKN 223
 TOKN 222
 CHAR 'R'
 CHAR 'I'
 CHAR 'C'
 CHAR 'T'
 TOKN 253
 CHAR ' '
 TOKN 203
 TOKN 242
 TOKN 237
 TOKN 241
 TOKN 233
 CHAR ','
 CHAR ' '
 TOKN 154
 EQUB VE

 CHAR 'A'
 CHAR ' '
 TOKN 114
 CHAR ' '
 TOKN 224
 CHAR 'O'
 CHAR 'K'
 TOKN 195
 TOKN 207
 CHAR ' '
 TOKN 229
 CHAR 'F'
 CHAR 'T'
 CHAR ' '
 CHAR 'H'
 CHAR 'E'
 TOKN 242
 TOKN 208
 CHAR 'W'
 CHAR 'H'
 CHAR 'I'
 TOKN 229
 CHAR ' '
 CHAR 'B'
 CHAR 'A'
 CHAR 'C'
 CHAR 'K'
 CHAR '.'
 CHAR ' '
 CHAR 'L'
 CHAR 'O'
 CHAR 'O'
 CHAR 'K'
 TOKN 196
 CHAR 'B'
 TOKN 217
 CHAR 'N'
 CHAR 'D'
 CHAR ' '
 CHAR 'F'
 TOKN 253
 CHAR ' '
 TOKN 238
 CHAR 'E'
 TOKN 230
 EQUB VE

 CHAR 'Y'
 CHAR 'E'
 CHAR 'P'
 CHAR ','
 TOKN 208
 TOKN 114
 TOKN 210
 TOKN 207
 CHAR ' '
 CHAR 'H'
 CHAR 'A'
 CHAR 'D'
 TOKN 208
 CHAR 'G'
 TOKN 228
 CHAR 'A'
 CHAR 'C'
 TOKN 251
 CHAR 'C'
 CHAR ' '
 CHAR 'H'
 CHAR 'Y'
 CHAR 'P'
 TOKN 244
 CHAR 'D'
 CHAR 'R'
 CHAR 'I'
 TOKN 250
 CHAR ' '
 CHAR 'F'
 TOKN 219
 CHAR 'T'
 TOKN 196
 CHAR 'H'
 CHAR 'E'
 TOKN 242
 CHAR '.'
 CHAR ' '
 TOKN 236
 TOKN 196
 TOKN 219
 CHAR ' '
 CHAR 'T'
 CHAR 'O'
 CHAR 'O'
 EQUB VE

 TOKN 148
 CHAR ' '
 TOKN 114
 CHAR ' '
 TOKN 207
 CHAR ' '
 CHAR 'D'
 CHAR 'E'
 CHAR 'H'
 CHAR 'Y'
 CHAR 'P'
 TOKN 196
 CHAR 'H'
 CHAR 'E'
 TOKN 242
 CHAR ' '
 CHAR 'F'
 CHAR 'R'
 CHAR 'O'
 CHAR 'M'
 CHAR ' '
 TOKN 227
 CHAR 'W'
 CHAR 'H'
 CHAR 'E'
 TOKN 242
 CHAR ','
 CHAR ' '
 CHAR 'S'
 CHAR 'U'
 CHAR 'N'
 CHAR ' '
 CHAR 'S'
 CHAR 'K'
 CHAR 'I'
 CHAR 'M'
 CHAR 'M'
 TOKN 252
 TOKN 178
 CHAR 'J'
 CHAR 'U'
 CHAR 'M'
 CHAR 'P'
 TOKN 252
 CHAR '.'
 CHAR ' '
 CHAR 'I'
 CHAR ' '
 CHAR 'H'
 CHAR 'E'
 TOKN 238
 CHAR ' '
 TOKN 219
 CHAR ' '
 CHAR 'W'
 TOKN 246
 CHAR 'T'
 TOKN 201
 TOKN 240
 TOKN 234
 TOKN 247
 EQUB VE

 TOKN 115
 CHAR ' '
 TOKN 207
 CHAR ' '
 CHAR 'W'
 TOKN 246
 CHAR 'T'
 CHAR ' '
 CHAR 'F'
 TOKN 253
 CHAR ' '
 CHAR 'M'
 CHAR 'E'
 CHAR ' '
 TOKN 245
 CHAR ' '
 CHAR 'A'
 TOKN 236
 TOKN 238
 CHAR '.'
 CHAR ' '
 CHAR 'M'
 CHAR 'Y'
 CHAR ' '
 TOKN 249
 CHAR 'S'
 TOKN 244
 CHAR 'S'
 CHAR ' '
 CHAR 'D'
 CHAR 'I'
 CHAR 'D'
 CHAR 'N'
 CHAR 39
 CHAR 'T'
 CHAR ' '
 CHAR 'E'
 CHAR 'V'
 TOKN 246
 CHAR ' '
 CHAR 'S'
 CHAR 'C'
 TOKN 248
 CHAR 'T'
 CHAR 'C'
 CHAR 'H'
 CHAR ' '
 TOKN 147
 TOKN 115
 EQUB VE

 CHAR 'O'
 CHAR 'H'
 CHAR ' '
 CHAR 'D'
 CHAR 'E'
 TOKN 238
 CHAR ' '
 CHAR 'M'
 CHAR 'E'
 CHAR ' '
 CHAR 'Y'
 TOKN 237
 CHAR '.'
 TOKN 208
 CHAR 'F'
 CHAR 'R'
 CHAR 'I'
 CHAR 'G'
 CHAR 'H'
 CHAR 'T'
 CHAR 'F'
 CHAR 'U'
 CHAR 'L'
 CHAR ' '
 CHAR 'R'
 CHAR 'O'
 CHAR 'G'
 CHAR 'U'
 CHAR 'E'
 CHAR ' '
 CHAR 'W'
 CHAR 'I'
 TOKN 226
 CHAR ' '
 CHAR 'W'
 CHAR 'H'
 TOKN 245
 CHAR ' '
 CHAR 'I'
 CHAR ' '
 TOKN 247
 CHAR 'L'
 CHAR 'I'
 CHAR 'E'
 TOKN 250
 CHAR ' '
 TOKN 179
 CHAR ' '
 CHAR 'P'
 CHAR 'E'
 CHAR 'O'
 CHAR 'P'
 TOKN 229
 CHAR ' '
 CHAR 'C'
 TOKN 228
 CHAR 'L'
 TOKN 208
 TOKN 229
 CHAR 'A'
 CHAR 'D'
 CHAR ' '
 CHAR 'P'
 CHAR 'O'
 TOKN 222
 TOKN 244
 CHAR 'I'
 TOKN 253
 CHAR ' '
 CHAR 'S'
 CHAR 'H'
 CHAR 'O'
 CHAR 'T'
 CHAR ' '
 CHAR 'U'
 CHAR 'P'
 CHAR ' '
 TOKN 224
 CHAR 'T'
 CHAR 'S'
 CHAR ' '
 CHAR 'O'
 CHAR 'F'
 CHAR ' '
 TOKN 226
 CHAR 'O'
 TOKN 218
 CHAR ' '
 TOKN 247
 CHAR 'A'
 TOKN 222
 CHAR 'L'
 CHAR 'Y'
 CHAR ' '
 CHAR 'P'
 CHAR 'I'
 TOKN 248
 CHAR 'T'
 TOKN 237
 TOKN 178
 CHAR 'W'
 TOKN 246
 CHAR 'T'
 TOKN 201
 TOKN 236
 TOKN 229
 CHAR 'R'
 CHAR 'I'
 EQUB VE

 TOKN 179
 CHAR ' '
 CHAR 'C'
 TOKN 255
 CHAR ' '
 CHAR 'T'
 CHAR 'A'
 CHAR 'C'
 CHAR 'K'
 TOKN 229
 CHAR ' '
 TOKN 147
 TOKN 104
 CHAR ' '
 TOKN 115
 CHAR ' '
 CHAR 'I'
 CHAR 'F'
 CHAR ' '
 TOKN 179
 CHAR ' '
 CHAR 'L'
 CHAR 'I'
 CHAR 'K'
 CHAR 'E'
 CHAR '.'
 CHAR ' '
 CHAR 'H'
 CHAR 'E'
 CHAR 39
 CHAR 'S'
 CHAR ' '
 TOKN 245
 CHAR ' '
 TOKN 253
 TOKN 238
 TOKN 248
 EQUB VE

 TOKN 1
 CHAR 'C'
 CHAR 'O'
 CHAR 'M'
 TOKN 195
 TOKN 235
 TOKN 223
 CHAR ':'
 CHAR ' '
 CHAR 'E'
 CHAR 'L'
 TOKN 219
 CHAR 'E'
 CHAR ' '
 CHAR 'I'
 CHAR 'I'
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 TOKN 116
 EQUB VE

 CHAR 'B'
 CHAR 'O'
 CHAR 'Y'
 CHAR ' '
 CHAR 'A'
 TOKN 242
 CHAR ' '
 TOKN 179
 CHAR ' '
 TOKN 240
 CHAR ' '
 TOKN 147
 CHAR 'W'
 CHAR 'R'
 TOKN 223
 CHAR 'G'
 CHAR ' '
 CHAR 'G'
 TOKN 228
 CHAR 'A'
 CHAR 'X'
 CHAR 'Y'
 CHAR '!'
 EQUB VE

 TOKN 226
 TOKN 244
 CHAR 'E'
 CHAR 39
 CHAR 'S'
 TOKN 208
 TOKN 242
 TOKN 228
 CHAR ' '
 TOKN 115
 CHAR ' '
 CHAR 'P'
 CHAR 'I'
 TOKN 248
 CHAR 'T'
 CHAR 'E'
 CHAR ' '
 TOKN 217
 CHAR 'T'
 CHAR ' '
 TOKN 226
 TOKN 244
 CHAR 'E'
 EQUB VE

 TOKN 147
 TOKN 193
 CHAR 'S'
 CHAR ' '
 CHAR 'O'
 CHAR 'F'
 CHAR ' '
 TOKN 109
 CHAR ' '
 CHAR 'A'
 TOKN 242
 CHAR ' '
 TOKN 235
 CHAR ' '
 CHAR 'A'
 TOKN 239
 CHAR 'Z'
 TOKN 240
 CHAR 'G'
 CHAR 'L'
 CHAR 'Y'
 CHAR ' '
 CHAR 'P'
 CHAR 'R'
 CHAR 'I'
 CHAR 'M'
 CHAR 'I'
 TOKN 251
 TOKN 250
 CHAR ' '
 TOKN 226
 TOKN 245
 CHAR ' '
 TOKN 226
 CHAR 'E'
 CHAR 'Y'
 CHAR ' '
 TOKN 222
 TOKN 220
 CHAR 'L'
 CHAR ' '
 TOKN 226
 TOKN 240
 CHAR 'K'
 CHAR ' '
 TOKN 19
 CHAR '*'
 CHAR '*'
 CHAR '*'
 CHAR '*'
 CHAR '*'
 CHAR ' '
 CHAR '*'
 CHAR '*'
 CHAR '*'
 CHAR '*'
 CHAR '*'
 CHAR '*'
 TOKN 202
 CHAR ' '
 CHAR '3'
 CHAR 'D'
 EQUB VE

 TOKN 2
 CHAR 'B'
 CHAR 'I'
 CHAR 'T'
 CHAR 'S'
 CHAR 39
 CHAR 'N'
 CHAR ' '
 CHAR 'P'
 CHAR 'I'
 CHAR 'E'
 CHAR 'C'
 CHAR 'E'
 CHAR 'S'
 CHAR ' '
 CHAR '-'
 CHAR ' '
 CHAR 'E'
 CHAR 'N'
 CHAR 'D'
 CHAR ' '
 CHAR 'O'
 CHAR 'F'
 CHAR ' '
 CHAR 'P'
 CHAR 'A'
 CHAR 'R'
 CHAR 'T'
 CHAR ' '
 CHAR '1'
 EQUB VE
}

\ ******************************************************************************
\       Name: MTIN
\ ******************************************************************************

.MTIN
{
 EQUB 16
 EQUB 21
 EQUB 26
 EQUB 31
 EQUB 155
 EQUB 160
 EQUB 46
 EQUB 165
 EQUB 36
 EQUB 41
 EQUB 61
 EQUB 51
 EQUB 56
 EQUB 170
 EQUB 66
 EQUB 71
 EQUB 76
 EQUB 81
 EQUB 86
 EQUB 140
 EQUB 96
 EQUB 101
 EQUB 135
 EQUB 130
 EQUB 91
 EQUB 106
 EQUB 180
 EQUB 185
 EQUB 190
 EQUB 225
 EQUB 230
 EQUB 235
 EQUB 240
 EQUB 245
 EQUB 250
 EQUB 115
 EQUB 120
 EQUB 125
}

\ ******************************************************************************
\       Name: COLD
\ ******************************************************************************

.COLD
{
\Move WORDS and SHIPS to proper places
 LDA #(F%MOD256)
 STA V
 LDA #(F%DIV256)
 STA V+1
 LDA #(QQ18 MOD256)
 STA SC
 LDA #(QQ18 DIV256)
 STA SC+1
 LDX #4
 JSR mvblock
 LDA #(F%MOD256)
 STA V
 LDA #((F%DIV256)+4)
 STA V+1
 LDA #(D%MOD256)
 STA SC
 LDA #(D%DIV256)
 STA SC+1
 LDX #&22

.mvblock

 LDY #0

.mvbllop

 LDA (V),Y
 STA (SC),Y
 INY
 BNE mvbllop
 INC V+1
 INC SC+1
 DEX
 BNE mvbllop
 RTS
}

\ ******************************************************************************
\       Name: F%
\ ******************************************************************************

.F%
{
 SKIP 0
}

\ ******************************************************************************
\
\ Save output/ELTJ.bin
\
\ ******************************************************************************

PRINT "ELITE J"
PRINT "Assembled at ", ~CODE_J%
PRINT "Ends at ", ~P%
PRINT "Code size is ", ~(P% - CODE_J%)
PRINT "Execute at ", ~LOAD%
PRINT "Reload at ", ~LOAD_J%

PRINT "S.ELTJ ", ~CODE_J%, " ", ~P%, " ", ~LOAD%, " ", ~LOAD_J%
SAVE "output/ELTJ.bin", CODE_J%, P%, LOAD%

\ ******************************************************************************
\
\ Show free space
\
\ ******************************************************************************

PRINT "ELITE game code ", ~(K%-F%), " bytes free"
PRINT "F% = ", ~F%
PRINT "Ends at ", ~P%
