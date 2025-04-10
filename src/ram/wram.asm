SECTION "WRAM0", WRAM0

wVirtualOAM:: ; c000
	ds $4 * OAM_COUNT
wVirtualOAMEnd::

	ds $60

; stores a map of the current level's blocks
; this map's dimension is wLevelWidth x wLevelHeight
wLevelBlockMap:: ; c100
	ds $500

wBlockTileMap:: ; c600
	ds $4 * $100

wBlockTypesByID:: ; ca00
	ds $100

UNION
wBGQueue:: ; cb00
FOR n, $100
wQueuedBG{03d:n}:: queued_bg_struct wQueuedBG{03d:n}
ENDR
NEXTU
wBlockQueue:: ; cb00
	ds $80 * 6
ENDU

	ds $229

wBlockFillPtr:: dw ; d029
wBlockFillTileIndex:: db ; d02b

; currently loaded ROM bank
wROMBank:: ; d02c
	db

wCurMusic:: db ; d02d
wCurSFX::   db ; d02e

wRNG:: ; d02f
	ds $3

; timer to control palette fading
; ticks up on every V-Blank
wFadeDelayTimer:: ; d032
	db

	ds $1

wGlobalCounter:: db ; d034
wUnkTimer:: db ; d035

; these flags are alternated during VBlank according to their durations
; if flag is set, the respective visual effect is deactivated
; meaning blinking yields a visible object
; and flashing yields an object with its regular palette
wObjectFlashBlinkFlags:: db ; d036
wBlinkingCounter::       db ; d037
wFlashingCounter::       db ; d038

wExtraGameEnabled::  db ; d039
wExtraGameUnlocked:: db ; d03a

wStage:: ; d03b
	db

; music for this level
; isn't necessarily the current music
; because it can be temporarily replaced
wLevelMusic:: ; d03c
	db

; holds a music ID to override normal
; level music when area is loaded (e.g. through door connection)
; used for special cases like Mt. Dedede's areas
; and Boss Battle music
wOverrideMusic:: ; d03d
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

; by default all keys are "sticky", as in their
; bits remain set in hJoypadPressed for as long
; as they are pressed, this variable holds
; keys where they only remain pressed for 1 frame
wNonStickyKeys:: ; d050
	db

wLevelXSection:: db ; d051
wLevelYSection:: db ; d052

wSCX:: db ; d053
wKirbyXAccumulator::
wCreditsSCXDecrementCounter::
	db ; d054
wSCY:: db ; d055
wd056:: db ; d056

wXCoord:: db ; d057
wYCoord:: db ; d058

wd059:: ; d059
	dw

wCreditsTextScroll:: ; d05b
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

wBGPtr_d06b::
	dw

NEXTU

wOAMFlagsOverride::
wMenuCursorPos::
wItemWasInhaled::
wd06b:: ; d06b
	db

wObjOutsideView::
wd06c:: ; d06c
	db

ENDU

	ds $1

wd06e:: ; d06e
	db

; digits of wScore in big endian
wScoreDigits:: ; d06f
	ds $5

; absolute value of Kirby's x velocity in big endian
wKirbyXVel::          dw ; d074
wKirbyMaxXVel::       dw ; d076
; signed Kirby's y velocity in big endian
wKirbyYVel::          dw ; d078
wKirbyMaxYVel::       dw ; d07a
wKirbyXAcceleration:: db ; d07c
wKirbyXDeceleration:: db ; d07d
wKirbyYAcceleration:: db ; d07e

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

wObjectStatuses:: ; d1b0
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

wObjectUpdateFuncs:: ; d35a
	ds $2 * NUM_OBJECT_SLOTS

wObjectUpdateFuncArgs:: ; d37a
	ds $2 * NUM_OBJECT_SLOTS

wObjectHPs:: ; d39a
	ds NUM_OBJECT_SLOTS

wd3aa:: ; d3aa
	ds $10

wd3ba:: ; d3ba
	db

wd3bb:: ; d3bb
	db

wd3bc:: ; d3bc
	db

wd3bd:: ; d3bd
	db

wPowerUpAttack:: ; d3be
	db

; flags to determine behaviour of clearing the screen
; from enemies (e.g. through Mike)
wClearScreenFlags:: ; d3bf
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
	ds MAX_NUM_STAGE_ITEMS / 8

wd3cc:: ; d3cc
	db

wd3cd:: ; d3cd
	db

; which half side of the screen Kirby is on:
; - $0: left side
; - $1: right side
wKirbySideOfScreen:: ; d3ce
	db

wd3cf:: ; d3cf
	db

wd3d0:: ; d3d0
	db

wd3d1:: ; d3d1
	db

wd3d2:: ; d3d2
	db

wd3d3:: ; d3d3
	db

wEnemyHurtCounter:: db ; d3d4
wEnemyHurtObjectIndex::   db ; d3d5

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

wStageTransitionCounter:: db ; d3dd
wStageTransitionCmd::     db ; d3de

; remaining duration of the effects
; of Mint Leaf and Spicy Food
wFoodPowerUpCounter:: ; d3df
	dw

; remaining duration of the effects
; of Invincibility Candy
wInvincibilityCounter:: ; d3e1
	dw

; equal to wLevelWidth in pixels
wLevelWidthPx:: ; d3e3
	dw

wLevelHorizontalObjectList:: dw ; d3e5
wLevelVerticalObjectList:: dw ; d3e7

wd3e9:: ; d3e9
	db

wd3ea:: ; d3ea
	db

wd3eb:: ; d3eb
	db

wd3ec:: ; d3ec
	db

wLastLevelXSection:: db ; d3ed
wLastLevelYSection:: db ; d3ee

wScriptBank:: ; d3ef
	db

wd3f0:: ; d3f0
	db

wd3f1:: ; d3f1
	db

wScene:: ; d3f2
	db

	ds $2

; remaining duration of Kirby blinking
; after taking damage
wDamageBlinkingCounter:: ; d3f5
	db

wd3f6:: ; d3f6
	db

; multiplies the score amount of a
; defeat enemy by this value - 1
wEnemyScoreMultiplier:: ; d3f7
	db

wd3f8:: ; d3f8
	db

; particle coordinates are relative to Kirby
wInhaleParticleXCoords:: ds NUM_INHALE_PARTICLES * $2 ; d3f9
wInhaleParticleXVel::    ds NUM_INHALE_PARTICLES * $2 ; d3ff
wInhaleParticleYCoords:: ds NUM_INHALE_PARTICLES * $2 ; d405

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

wCurObjCollisionX:: ; d412
	db

wCurObjCollisionY:: ; d413
	db

wDisableBumpStars:: ; d414
	db

SECTION "Audio WRAM", WRAM0, ALIGN[8]

; used in Multiply
wMultiplicationTable:: ; dc00
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

wInstrumentCommandDurations:: ; de6a
	ds NUM_CHANNELS

wInstrumentAudioCommandPointersLo:: ; de72
	ds NUM_CHANNELS

wInstrumentAudioCommandPointersHi:: ; de7a
	ds NUM_CHANNELS

wInstrumentSustain:: ; de82
	ds NUM_CHANNELS

wChannelBaseNotes:: ; de8a
	ds NUM_CHANNELS

wInstrumentSustainLength:: ; de92
	ds NUM_CHANNELS

; low nybble is note and instrument volume
; high nybble is base volume of track
wChannelVolumes:: ; de9a
	ds NUM_CHANNELS

wChannelInstruments:: ; dea2
	ds NUM_CHANNELS

wChannelTempoModes:: ; deaa
	ds NUM_CHANNELS

wNoteFrequencyTables:: ; deb2
	ds NUM_CHANNELS

; low byte of the pointer in wAudioStack
; corresponding to each channel
wAudioStackPointers:: ; deba
	ds NUM_CHANNELS

; low byte of the pointer in wAudioStack
; corresponding to each channel's instrument
wInstrumentStackPointers:: ; dec2
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

; each channel has 2 stacks
; one for the general audio commands
; and another specific for the instrument attack/release scripts
wAudioStack:: ; df00
wChannel1Stack:: ; df00
	channel_stack_struct wChannel1Stack
wChannel2Stack:: ; df10
	channel_stack_struct wChannel2Stack
wChannel3Stack:: ; df20
	channel_stack_struct wChannel3Stack
wChannel4Stack:: ; df30
	channel_stack_struct wChannel4Stack
wChannel5Stack:: ; df40
	channel_stack_struct wChannel5Stack
wChannel6Stack:: ; df50
	channel_stack_struct wChannel6Stack
wChannel7Stack:: ; df60
	channel_stack_struct wChannel7Stack
wChannel8Stack:: ; df70
	channel_stack_struct wChannel8Stack

wChannelConfigLowByte:: ; df80
	db
