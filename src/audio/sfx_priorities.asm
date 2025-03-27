; priority values for each SFX
; lower value means higher priority
SFXPriorities:
	table_width 1
	db 10 ; SFX_00
	db 50 ; SFX_INHALE
	db 50 ; SFX_02
	db 50 ; SFX_SWALLOW
	db 50 ; SFX_JUMP
	db 51 ; SFX_BUMP
	db 40 ; SFX_DAMAGE
	db 20 ; SFX_ENTER_DOOR
	db 40 ; SFX_08
	db 45 ; SFX_POWER_UP
	db 35 ; SFX_EXPLOSION
	db 25 ; SFX_RESTORE_HP
	db  0 ; SFX_WARP_STAR
	db  0 ; SFX_13
	db 50 ; SFX_14
	db 50 ; SFX_PUFF
	db 50 ; SFX_STAR_SPIT
	db 55 ; SFX_17
	db 55 ; SFX_18
	db 50 ; SFX_19
	db 30 ; SFX_20
	db  5 ; SFX_21
	db  0 ; SFX_1UP
	db 20 ; SFX_23
	db  0 ; SFX_PAUSE_OFF
	db  9 ; SFX_25
	db 50 ; SFX_CURSOR
	db 50 ; SFX_GAME_START
	db 49 ; SFX_28
	db  5 ; SFX_29
	db 50 ; SFX_30
	db 50 ; SFX_31
	db 35 ; SFX_BOSS_DEFEAT
	db  1 ; SFX_PAUSE_ON
	db 49 ; SFX_34
	db 49 ; SFX_35
	assert_table_length NUM_SFX
