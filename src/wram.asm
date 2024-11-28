INCLUDE "vram.asm"

SECTION "WRAM0", WRAM0

wVirtualOAM:: ; c000
	ds $4 * OAM_COUNT
wVirtualOAMEnd::

	ds $60

wc100:: ; c100
	ds $500

wBlockTileMap:: ; c600
	ds $4 * $100

wca00:: ; ca00
	ds $100

UNION
wBGQueue:: ; cb00
FOR n, $100
wQueuedBG{03d:n}:: queued_bg_struct wQueuedBG{03d:n}
ENDR
NEXTU
wBlockQueue:: ; cb00
FOR n, $80
wQueuedBlock{03d:n}:: queued_block_struct wQueuedBlock{03d:n}
ENDR
ENDU

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

wFadeDelayTimer:: ; d032
	db

	ds $1

wGlobalCounter:: db ; d034
wUnkTimer:: db ; d035
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

; level dimensions in blocks (2x2 tiles)
wLevelWidth::  db ; d03f
wLevelHeight:: db ; d040

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
; Kirby's x acceleration
wKirbyXAcc:: db ; d054
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

wCurScreenX:: db ; d05c
wCurScreenY:: db ; d05d

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

wInhaleDuration:: ; d066
	db

UNION
wSoundCheckMusic:: db ; d067
wSoundCheckSFX::   db ; d068
NEXTU
wPauseCounter:: dw ; d067
NEXTU
wd067:: dw ; d067
ENDU

wDamageKnockBack:: ; d069
	db

wd06a:: ; d06a
	db

UNION

wOAMFlagsOverride::
wMenuCursorPos::
wd06b:: ; d06b
	dw

NEXTU

wBGPtr_d06b:: ; d06b
	dw

ENDU

	ds $1

wd06e:: ; d06e
	db

; digits of wScore in big endian
wScoreDigits:: ; d06f
	ds $5

; absolute value of Kirby's x velocity
; in big endian
wKirbyXVel:: ; d074
	dw

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

wKirbyXDeceleration:: ; d07d
	db

wd07e:: ; d07e
	db

wd07f:: ; d07f
	db

wBGP:: db ; d080
wOBP:: db ; d081

wKirbyAnimScript:: ; d082
wCreditsTextPtr:: ; d082
	dw

wCreditsBGMapPtr:: ; d084
	dw

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

; holds a routine that copies byte in a to [de],
; increments de and then returns, with some nops
; used exclusively in Decompress
wDelayedCopyAToDEFunc:: ; d099
	ds $7

wObjectXCoords:: ; d0a0
	ds $3 * NUM_OBJECT_SLOTS

wObjectYCoords:: ; d0d0
	ds $3 * NUM_OBJECT_SLOTS

wObjectXVels:: ; d100
	ds $2 * NUM_OBJECT_SLOTS

wObjectYVels:: ; d120
	ds $2 * NUM_OBJECT_SLOTS

wObjectScreenXPositions:: ; d140
	ds NUM_OBJECT_SLOTS

wObjectScreenYPositions:: ; d150
	ds NUM_OBJECT_SLOTS

; if OBJECT_NOT_ACTIVE, then this object slot is empty
; if OBJECT_ACTIVE, then this object is active
; if > 1, then this represents a counter until is active again
wObjectActiveStates:: ; d160
	ds NUM_OBJECT_SLOTS

wObjectMotionScriptTimers:: ; d170
	ds NUM_OBJECT_SLOTS

wObjectAnimScriptTimers:: ; d180
	ds NUM_OBJECT_SLOTS

wObjectPropertyFlags:: ; d190
	ds NUM_OBJECT_SLOTS

wd1a0:: ; d1a0
	ds NUM_OBJECT_SLOTS

wd1b0:: ; d1b0
	ds NUM_OBJECT_SLOTS

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

wObjectAnimScriptPtrs:: ; d2ba
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

wObjectCustomFuncArgs:: ; d37a
	ds $2 * NUM_OBJECT_SLOTS

wd39a:: ; d39a
	ds $10

wd3aa:: ; d3aa
	ds $10

wd3ba:: ; d3ba
	db

	ds $2

wd3bd:: ; d3bd
	db

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

wd3cd:: ; d3cd
	db

wd3ce:: ; d3ce
	db

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

; equal to wLevelWidth in pixels
wLevelWidthPx:: ; d3e3
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

; multiplies the score amount of a
; defeat enemy by this value - 1
wEnemyScoreMultiplier:: ; d3f7
	db

wd3f8:: ; d3f8
	db

wd3f9:: ; d3f9
	ds 3 * $2

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

wDisableBumpStars:: ; d414
	db

SECTION "Audio WRAM", WRAMX, ALIGN[8]

wdc00:: ; dc00
	ds $200

wde00:: ; de00
	db

wde01:: ; de01
	db

wde02:: ; de02
	db

wSFXActiveChannelFlags:: ; de03
	db

wde04:: ; de04
	db

	ds $1

; these are the final channel configurations
; that are applied to the actual hardware
wChannels::
wChannel1:: channel1_struct wChannel1 ; de06
wChannel2:: channel2_struct wChannel2 ; de0c
wChannel3:: channel3_struct wChannel3 ; de10
wChannel4:: channel4_struct wChannel4 ; de16
wChannelsEnd::

wSFXChannels::
wSFXChannel1:: channel1_struct wSFXChannel1 ; de1a
wSFXChannel2:: channel2_struct wSFXChannel2 ; de20
wSFXChannel3:: channel3_struct wSFXChannel3 ; de24
wSFXChannel4:: channel4_struct wSFXChannel4 ; de2a
wSFXChannelsEnd::

wMusicChannels::
wMusicChannel1:: channel1_struct wMusicChannel1 ; de2e
wMusicChannel2:: channel2_struct wMusicChannel2 ; de34
wMusicChannel3:: channel3_struct wMusicChannel3 ; de38
wMusicChannel4:: channel4_struct wMusicChannel4 ; de3e
wMusicChannelsEnd::

wChannelPans:: ; de42
	ds NUM_CHANNELS

wChannelSelectorOffsets:: ; de4a
	ds NUM_CHANNELS

wAudioCommandDurations:: ; de52
	ds NUM_CHANNELS

wAudioCommandPointersLo:: ; de5a
	ds NUM_CHANNELS

wAudioCommandPointersHi:: ; de62
	ds NUM_CHANNELS

wde6a:: ; de6a
	ds NUM_CHANNELS

wde72:: ; de72
	ds NUM_CHANNELS

wde7a:: ; de7a
	ds NUM_CHANNELS

wde82:: ; de82
	ds NUM_CHANNELS

wChannelBaseNotes:: ; de8a
	ds NUM_CHANNELS

wde92:: ; de92
	ds NUM_CHANNELS

; low nybble is note and instrument volume
; high nybble is base volume of track
wChannelVolumes:: ; de9a
	ds NUM_CHANNELS

wdea2:: ; dea2
	ds NUM_CHANNELS

wChannelTempoModes:: ; deaa
	ds NUM_CHANNELS

wdeb2:: ; deb2
	ds NUM_CHANNELS

; low byte of the pointer in wAudioStack
; corresponding to each channel
wAudioStackPointers:: ; deba
	ds NUM_CHANNELS

wdec2:: ; dec2
	ds NUM_CHANNELS

wChannelSFXFlags:: ; deca
	ds NUM_SFX_CHANNELS

wChannelSoundPriorities:: ; dece
	ds NUM_MUSIC_CHANNELS

wWaveSample:: ; ded2
	db

wded3:: ; ded3
	db

wded4:: ; ded4
	db

	ds $2b

wAudioStack:: ; df00
wChannel1AudioStack:: ; df00
	ds $10
wChannel1AudioStackBottom:: ; df10
wChannel2AudioStack:: ; df00
	ds $10
wChannel2AudioStackBottom:: ; df20
wChannel3AudioStack:: ; df00
	ds $10
wChannel3AudioStackBottom:: ; df30
wChannel4AudioStack:: ; df00
	ds $10
wChannel4AudioStackBottom:: ; df40
wChannel5AudioStack:: ; df00
	ds $10
wChannel5AudioStackBottom:: ; df50
wChannel6AudioStack:: ; df00
	ds $10
wChannel6AudioStackBottom:: ; df60
wChannel7AudioStack:: ; df00
	ds $10
wChannel7AudioStackBottom:: ; df70
wChannel8AudioStack:: ; df00
	ds $10
wChannel8AudioStackBottom:: ; df80

wChannelConfigLowByte:: ; df80
	db
