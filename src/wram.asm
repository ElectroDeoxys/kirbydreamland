INCLUDE "vram.asm"

SECTION "WRAM0", WRAM0

wVirtualOAM:: ; c000
	ds $4 * OAM_COUNT
wVirtualOAMEnd::

	ds $60

wc100:: ; c100
	ds $500

wc600:: ; c600
	ds $400

wca00:: ; ca00
	ds $100

wBGQueue:: ; cb00
FOR n, $100
wQueuedBG{03d:n}:: queued_bg_struct wQueuedBG{03d:n}
ENDR

SECTION "WRAM1", WRAMX

	ds $29

wd029:: dw ; d029
wd02b:: db ; d02b

wROMBank:: ; d02c
	db

wCurMusic:: ; d02d
	db

wCurSFX:: ; d02e
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
wExtraGameEnabled:: db ; d039
wExtraGameUnlocked:: db ; d03a

wStage:: ; d03b
	db

wMusic:: ; d03c
	db

wd03d:: ; d03d
	db

wArea:: ; d03e
	db

wd03f:: ; d03f
	db

wd040:: ; d040
	db

wd041:: ; d041
	db

wd042:: ; d042
	db

wd043:: ; d043
	db

wd044:: ; d044
	db

wd045:: ; d045
	db

wd046:: ; d046
	db

wd047:: ; d047
	db

wd048:: ; d048
	db

wd049:: ; d049
	db

wd04a:: ; d04a
	db

wd04b:: ; d04b
	db

wd04c:: ; d04c
	db

wd04d:: ; d04d
	db

	ds $1

wJoypadDown:: ; d04f
	db

wd050:: ; d050
	db

wd051:: ; d051
	db

wd052:: ; d052
	db

wSCX:: db ; d053
wd054:: db ; d054
wSCY:: db ; d055
wd056:: db ; d056

wd057:: ; d057
	db

wd058:: ; d058
	db

wd059:: ; d059
	dw

wd05b:: ; d05b
	db

wd05c:: ; d05c
	db

wd05d:: ; d05d
	db

wd05e:: ; d05e
	db

wd05f:: ; d05f
	db

wd060:: ; d060
	db

wd061:: ; d061
	db

wd062:: ; d062
	db

wd063:: ; d063
	db

wd064:: ; d064
	db

wd065:: ; d065
	db

wd066:: ; d066
	db

UNION
wSoundCheckMusic:: db ; d067
wSoundCheckSFX::   db ; d068
NEXTU
wPauseCounter:: dw ; d067
ENDU

wd069:: ; d069
	db

wd06a:: ; d06a
	db

wOAMFlagsOverride::
wMenuCursorPos::
wd06b:: ; d06b
	db

wd06c:: ; d06c
	db

	ds $1

wd06e:: ; d06e
	db

; digits of wScore in big endian
wScoreDigits:: ; d06f
	ds $5

wd074:: ; d074
	db

wd075:: ; d075
	db

wd076:: ; d076
	db

wd077:: ; d077
	db

wd078:: ; d078
	db

wd079:: ; d079
	db

wd07a:: ; d07a
	db

wd07b:: ; d07b
	db

wd07c:: ; d07c
	db

wd07d:: ; d07d
	db

wd07e:: ; d07e
	db

wd07f:: ; d07f
	db

wBGP:: db ; d080
wOBP:: db ; d081

wd082:: ; d082
	db

wd083:: ; d083
	db

wd084:: ; d084
	db

wd085:: ; d085
	db

wHP::	db ; d086
wMaxHP:: db ; d087
wConfigMaxHP::  db ; d088

; number of lives + 1, so in the HUD
; this number is subtracted by 1
; 0 means Game Over
wLives:: ; d089
	db

; value of number of lives at game start
wConfigLives:: ; d08a
	db

; current score
wScore:: ; d08b
	ds $3

; these hold the digit tiles of wScoreDigits
wScoreDigitTiles:: ; d08e
	ds $5

wBossHP:: ; d093
	db

wd094:: ; d094
	db

wVirtualOAMSize:: ; d095
	db

wd096:: ; d096
	db

wd097:: ; d097
	dw

wd099:: ; d099
	ds $7

wd0a0:: ; d0a0
	ds $3 * $10

wd0d0:: ; d0d0
	ds $3 * $10

wd100:: ; d100
	ds $2 * $10

wd120:: ; d120
	ds $2 * $10

wd140:: ; d140
	ds $d

wd14d:: ; d14d
	db

wd14e:: ; d14e
	db

	ds $1

wd150:: ; d150
	ds $d

wd15d:: ; d15d
	db

wd15e:: ; d15e
	db

	ds $1

wd160:: ; d160
	ds $d

wd16d:: ; d16d
	db

wd16e:: ; d16e
	db

	ds $1

wd170:: ; d170
	ds $10

wAnimationDurations:: ; d180
	ds $10

wd190:: ; d190
	ds $10

wd1a0:: ; d1a0
	ds $d

wd1ad:: ; d1ad
	db

wd1ae:: ; d1ae
	db

	ds $1

wd1b0:: ; d1b0
	ds $d

wd1bd:: ; d1bd
	db

wd1be:: ; d1be
	db

	ds $1

wSpriteOAMPtrs:: ; d1c0
	ds $2 * $10

wd1e0:: ; d1e0
	ds $2 * $10

wd200:: ; d200
	ds $10

	ds $a

wd21a:: ; d21a
	ds $2 * $10

wd23a:: ; d23a
	ds $2 * $10

wd25a:: ; d25a
	ds $2 * $10

wd27a:: ; d27a
	ds $2 * $10

wd29a:: ; d29a
	ds $10

wd2aa:: ; d2aa
	ds $10

wd2ba:: ; d2ba
	ds $2 * $10

wd2da:: ; d2da
	ds $2 * $10

wd2fa:: ; d2fa
	ds $2 * $10

wd31a:: ; d31a
	ds $2 * $10

wd33a:: ; d33a
	ds $10

wd34a:: ; d34a
	ds $10

wd35a:: ; d35a
	ds $2 * $10

wd37a:: ; d37a
	ds $2 * $10

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

wd3c1:: ; d3c1
	db

wd3c2:: ; d3c2
	db

	ds $1

wd3c4:: ; d3c4
	ds $8

wd3cc:: ; d3cc
	db

	ds $7

wd3d4:: ; d3d4
	db

wd3d5:: ; d3d5
	db

wd3d6:: ; d3d6
	db

wd3d7:: ; d3d7
	db

wAnimationCommand:: ; d3d8
	db

wAnimationPtr:: ; d3d9
	dw

wd3db:: ; d3db
	db

wd3dc:: ; d3dc
	db

wd3dd:: ; d3dd
	db

wd3de:: ; d3de
	db

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

wd3ef:: ; d3ef
	db

wd3f0:: ; d3f0
	db

wd3f1:: ; d3f1
	db

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

wd3f9:: ; d3f9
	db

wd3fa:: ; d3fa
	db

	ds $4

wd3ff:: ; d3ff
	db

	ds $6

wd406:: ; d406
	db

	ds $4

wDamage:: ; d40b
	db

wScoreToAdd:: ; d40c
	db

wd40d:: ; d40d
	db

wd40e:: ; d40e
	db

wd40f:: ; d40f
	db

wd410:: ; d410
	db

wd411:: ; d411
	db

wd412:: ; d412
	db

wd413:: ; d413
	db

wd414:: ; d414
	db

	ds $7eb

wdc00:: ; dc00
	db

	ds $22d

wde2e:: ; de2e
	ds $14

	ds $10

wde52:: ; de52
	db

	ds $3

wde56:: ; de56
	ds $4

