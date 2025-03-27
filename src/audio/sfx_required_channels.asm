
; for each SFX, lists the channels that are used
SFXRequiredChannels:
	table_width 1
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_00
	db SFXFLAG_SQUARE2 | SFXFLAG_NOISE ; SFX_INHALE
	db SFXFLAG_SQUARE2 ; SFX_02
	db SFXFLAG_SQUARE2 ; SFX_SWALLOW
	db SFXFLAG_SQUARE2 ; SFX_JUMP
	db SFXFLAG_SQUARE2 ; SFX_BUMP
	db SFXFLAG_SQUARE2 | SFXFLAG_NOISE ; SFX_DAMAGE
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_ENTER_DOOR
	db SFXFLAG_SQUARE2 ; SFX_08
	db SFXFLAG_SQUARE2 ; SFX_POWER_UP
	db SFXFLAG_NOISE ; SFX_EXPLOSION
	db SFXFLAG_SQUARE2 ; SFX_RESTORE_HP
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_WARP_STAR
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_13
	db SFXFLAG_NOISE ; SFX_14
	db SFXFLAG_SQUARE2 ; SFX_PUFF
	db SFXFLAG_SQUARE2 ; SFX_STAR_SPIT
	db SFXFLAG_NOISE ; SFX_17
	db SFXFLAG_SQUARE2 ; SFX_18
	db SFXFLAG_NOISE ; SFX_19
	db SFXFLAG_NOISE ; SFX_20
	db SFXFLAG_NOISE ; SFX_21
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_1UP
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 | SFXFLAG_NOISE ; SFX_23
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 | SFXFLAG_NOISE | SFXFLAG_WAVE ; SFX_PAUSE_OFF
	db SFXFLAG_NOISE ; SFX_25
	db SFXFLAG_SQUARE2 ; SFX_CURSOR
	db SFXFLAG_SQUARE2 ; SFX_GAME_START
	db SFXFLAG_NOISE ; SFX_28
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_29
	db SFXFLAG_SQUARE2 ; SFX_30
	db SFXFLAG_SQUARE2 ; SFX_31
	db SFXFLAG_NOISE ; SFX_BOSS_DEFEAT
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 | SFXFLAG_NOISE | SFXFLAG_WAVE ; SFX_PAUSE_ON
	db SFXFLAG_SQUARE2 | SFXFLAG_NOISE ; SFX_34
	db SFXFLAG_SQUARE2 ; SFX_35
	assert_table_length NUM_SFX
