INCLUDE "vram.asm"

SECTION "WRAM0", WRAM0

wVirtualOAM:: ; c000
	ds $4 * OAM_COUNT
wVirtualOAMEnd::

	ds $60

wc100:: ; c100
	ds $500

wc600:: ; c600
	ds $4 * $100

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

wRNG:: ; d02f
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

wMtDededeDefeatedBosses:: ; d043
	ds NUM_MT_DEDEDE_AREAS

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

wXCoord:: ; d057
	db

wYCoord:: ; d058
	db

wd059:: ; d059
	dw

wd05b:: ; d05b
	db

wKirbyScreenX:: db ; d05c
wKirbyScreenY:: db ; d05d

wd05e:: ; d05e
	db

wd05f:: ; d05f
	db

wKirbyScreenDeltaY:: ; d060
	db

wd061:: ; d061
	db

wKirbyScreenDeltaX:: ; d062
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
	dw

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

wObjectXCoords:: ; d0a0
	ds $3 * NUM_OBJECT_SLOTS

wObjectYCoords:: ; d0d0
	ds $3 * NUM_OBJECT_SLOTS

wObjectXVels:: ; d100
	ds $2 * NUM_OBJECT_SLOTS

wObjectYVels:: ; d120
	ds $2 * NUM_OBJECT_SLOTS

wd140:: ; d140
	ds NUM_OBJECT_SLOTS

wd150:: ; d150
	ds $d

wd15d:: ; d15d
	db

wd15e:: ; d15e
	db

	ds $1

; if OBJECT_NOT_ACTIVE, then this object slot is empty
; if OBJECT_ACTIVE, then this object is active
; if > 1, then this represents a counter until is active again
wObjectActiveStates:: ; d160
	ds NUM_OBJECT_SLOTS

wObjectMotionScriptTimers:: ; d170
	ds NUM_OBJECT_SLOTS

wObjectGfxScriptTimers:: ; d180
	ds NUM_OBJECT_SLOTS

wd190:: ; d190
	ds NUM_OBJECT_SLOTS

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
	ds $2 * NUM_OBJECT_SLOTS

wObjectPropertyPtrs:: ; d1e0
	ds $2 * NUM_OBJECT_SLOTS

wd200:: ; d200
	ds $10

	ds $a

wObjectMotionScriptPtrs:: ; d21a
	ds $2 * NUM_OBJECT_SLOTS

wd23a:: ; d23a
	ds $2 * NUM_OBJECT_SLOTS

wd25a:: ; d25a
	ds $2 * NUM_OBJECT_SLOTS

wd27a:: ; d27a
	ds $2 * NUM_OBJECT_SLOTS

wd29a:: ; d29a
	ds NUM_OBJECT_SLOTS

wd2aa:: ; d2aa
	ds NUM_OBJECT_SLOTS

wObjectGfxScriptPtrs:: ; d2ba
	ds $2 * NUM_OBJECT_SLOTS

wd2da:: ; d2da
	ds $2 * NUM_OBJECT_SLOTS

wd2fa:: ; d2fa
	ds $2 * NUM_OBJECT_SLOTS

wd31a:: ; d31a
	ds $2 * NUM_OBJECT_SLOTS

wd33a:: ; d33a
	ds NUM_OBJECT_SLOTS

wd34a:: ; d34a
	ds NUM_OBJECT_SLOTS

wObjectCustomFuncs:: ; d35a
	ds $2 * NUM_OBJECT_SLOTS

wd37a:: ; d37a
	ds $2 * NUM_OBJECT_SLOTS

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

; used to animate boss HP replenishing
; at the start of the battle
; counts down until it's 0
wBossHPCounter:: ; d3c3
	db

; bit array of items that were consumed
; each consumable item in the stage
; represents a bit in this array
; bit set means the item was consumed
wConsumedItems:: ; d3c4
	ds $8

wd3cc:: ; d3cc
	db

	ds $2

wd3cf:: ; d3cf
	db

wd3d0:: ; d3d0
	db

	ds $3

wd3d4:: ; d3d4
	db

wd3d5:: ; d3d5
	db

wd3d6:: ; d3d6
	db

wd3d7:: ; d3d7
	db

wScriptCommand:: db ; d3d8
wScriptPtr::     dw ; d3d9

wd3db:: ; d3db
	db

wd3dc:: ; d3dc
	db

wd3dd:: ; d3dd
	db

wd3de:: ; d3de
	db

wMintLeafCounter:: ; d3df
	dw

wInvincibilityCounter:: ; d3e1
	dw

wd3e3:: ; d3e3
	dw

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

wScriptBank:: ; d3ef
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
	dw

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

	ds $1ff

wde00:: ; de00
	db

wde01:: ; de01
	db

wde02:: ; de02
	db

wde03:: ; de03
	db

wde04:: ; de04
	db

	ds $1

wChannel1::
wChannel1Sweep::    db ; de06
wChannel1Length::   db ; de07
wChannel1Envelope:: db ; de08
wChannel1FreqLo::   db ; de09
wChannel1FreqHi::   db ; de0a

	ds $1

wChannel2::
wChannel2Length::   db ; de0c
wChannel2Envelope:: db ; de0d
wChannel2FreqLo::   db ; de0e
wChannel2FreqHi::   db ; de0f

wChannel3::
wChannel3Enabled:: db ; de10
wChannel3Length::  db ; de11
wChannel3Level::   db ; de12
wChannel3FreqLo::  db ; de13
wChannel3FreqHi::  db ; de14

	ds $1

wChannel4::
wChannel4Length::   db ; de16
wChannel4Envelope:: db ; de17
wChannel4FreqLo::   db ; de18
wChannel4FreqHi::   db ; de19

wde1a:: ; de1a
	db

	ds $5

wde20:: ; de20
	db

	ds $3

wde24:: ; de24
	db

	ds $5

wde2a:: ; de2a
	db

	ds $3

wde2e:: ; de2e
	db

	ds $5

wde34:: ; de34
	db

	ds $3

wde38:: ; de38
	db

	ds $5

wde3e:: ; de3e
	db

	ds $3

wde42:: ; de42
	db

wde43:: ; de43
	db

wde44:: ; de44
	db

wde45:: ; de45
	db

wde46:: ; de46
	db

wde47:: ; de47
	db

wde48:: ; de48
	db

wde49:: ; de49
	db

wde4a:: ; de4a
	ds NUM_CHANNELS

wde52:: ; de52
	ds NUM_CHANNELS

wde5a:: ; de5a
	ds NUM_CHANNELS

wde62:: ; de62
	ds NUM_CHANNELS

wde6a:: ; de6a
	ds NUM_CHANNELS

wde72:: ; de72
	ds NUM_CHANNELS

	ds $8

wde82:: ; de82
	ds NUM_CHANNELS

wde8a:: ; de8a
	ds NUM_CHANNELS

wde92:: ; de92
	ds NUM_CHANNELS

wde9a:: ; de9a
	ds NUM_CHANNELS

wdea2:: ; dea2
	ds NUM_CHANNELS

wdeaa:: ; deaa
	ds NUM_CHANNELS

wdeb2:: ; deb2
	ds NUM_CHANNELS

wdeba:: ; deba
	ds NUM_CHANNELS

wdec2:: ; dec2
	ds NUM_CHANNELS

wdeca:: ; deca
	ds NUM_SFX_CHANNELS

wdece:: ; dece
	ds NUM_MUSIC_CHANNELS

wWaveSample:: ; ded2
	db

wded3:: ; ded3
	db

wded4:: ; ded4
	db

	ds $ab

wdf80:: ; df80
	db
