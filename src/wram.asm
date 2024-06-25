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

	ds $1

wd039:: db ; d039
wd03a:: db ; d03a

	ds $2

wd03d:: ; d03d
	db

	ds $a

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

	ds $16

wd074:: ; d074
	db

	ds $b

wBGP:: db ; d080
wOBP:: db ; d081

	ds $4

wHP::    db ; d086
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
