INCLUDE "vram.asm"

SECTION "WRAM0", WRAM0

wVirtualOAM:: ; c000
	ds $4 * OAM_COUNT
wVirtualOAMEnd::

	ds $a60

wTileQueue:: ; cb00
	ds $3 * $100

SECTION "WRAM1", WRAMX

	ds $29

wd029:: dw ; d029
wd02b:: db ; d02b

wROMBank:: ; d02c
	db

wd02d:: ; d02d
	db

wd02e:: ; d02e
	db

wd02f:: ; d02f
	ds $3

wd032:: ; d032
	db

	ds $1

wGlobalCounter1:: db ; d034
wGlobalCounter2:: db ; d035
wd036:: db ; d036
wd037:: db ; d037
wd038:: db ; d038
wd039:: db ; d039
wd03a:: db ; d03a

wd03b:: ; d03b
	db

wd03c:: ; d03c
	db

wd03d:: ; d03d
	db

wd03e:: ; d03e
	db

wd03f:: ; d03f
	db

	ds $8

wd048:: ; d048
	db

	ds $6

wJoypadDown:: ; d04f
	db

wd050:: ; d050
	db

wd051:: ; d051
	db

wd052:: ; d052
	db

wSCX:: dw ; d053
wSCY:: dw ; d055

	ds $4

wd05b:: ; d05b
	db

wd05c:: ; d05c
	db

wd05d:: ; d05d
	db

	ds $d

wd06b:: ; d06b
	db

wd06c:: ; d06c
	db

	ds $7

wd074:: ; d074
	db

	ds $1

wd076:: ; d076
	db

wd077:: ; d077
	db

	ds $2

wd07a:: ; d07a
	db

wd07b:: ; d07b
	db

wd07c:: ; d07c
	db

wd07d:: ; d07d
	db

	ds $2

wBGP:: db ; d080
wOBP:: db ; d081

	ds $4

wHP::	db ; d086
wMaxHP:: db ; d087
wd088::  db ; d088

; number of lives + 1, so in the HUD
; this number is subtracted by 1
; 0 means Game Over
wLives:: ; d089
	db

; value of number of lives at game start
wInitialLives:: ; d08a
	db

	ds $3

wd08e:: ; d08e
	ds $5

wd093:: ; d093
	db

	ds $1

wd095:: ; d095
	db

wd096:: ; d096
	db

wd097:: ; d097
	dw

wd099:: ; d099
	ds $7

wd0a0:: ; d0a0
	ds $30

wd0d0:: ; d0d0
	ds $30

	ds $60

wd160:: ; d160
	ds $10

wd170:: ; d170
	ds $10

wd180:: ; d180
	ds $10

wd190:: ; d190
	ds $10

wd1a0:: ; d1a0
	ds $10

wd1b0:: ; d1b0
	ds $10

wd1c0:: ; d1c0
	ds $20

wd1e0:: ; d1e0
	ds $20

wd200:: ; d200
	ds $10

	ds $a

wd21a:: ; d21a
	ds $20

wd23a:: ; d23a
	ds $20

wd25a:: ; d25a
	ds $60

wd2ba:: ; d2ba
	ds $20

wd2da:: ; d2da
	ds $20

wd2fa:: ; d2fa
	ds $60

wd35a:: ; d35a
	ds $40

wd39a:: ; d39a
	ds $10

wd3aa:: ; d3aa
	ds $10

	ds $4

wd3be:: ; d3be
	db

wd3bf:: ; d3bf
	db

wd3c0:: ; d3c0
	db

	ds $1

wd3c2:: ; d3c2
	db

	ds $1

wd3c4:: ; d3c4
	db

	ds $7

wd3cc:: ; d3cc
	db

	ds $9

wd3d6:: ; d3d6
	db

wd3d7:: ; d3d7
	db

	ds $7

wd3df:: ; d3df
	db

wd3e0:: ; d3e0
	db

wd3e1:: ; d3e1
	db

wd3e2:: ; d3e2
	db

wd3e3:: ; d3e3
	db

wd3e4:: ; d3e4
	db

wd3e5:: dw ; d3e5
wd3e7:: dw ; d3e7

wd3e9:: ; d3e9
	db

wd3ea:: ; d3ea
	db

wd3eb:: ; d3eb
	db

wd3ec:: ; d3ec
	db

wd3ed:: ; d3ed
	db

wd3ee:: ; d3ee
	db

	ds $1

wd3f0:: ; d3f0
	db

	ds $1

wd3f2:: ; d3f2
	db

	ds $2

wd3f5:: ; d3f5
	db

wd3f6:: ; d3f6
	db

wd3f7:: ; d3f7
	db

wd3f8:: ; d3f8
	db

	ds $807

wdc00:: ; dc00
	db
