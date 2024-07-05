; Boolean checks
DEF FALSE EQU 0
DEF TRUE  EQU 1

DEF NULL EQU $0000

	const_def
	const VBLANK_0_F ; 0
	const VBLANK_1_F ; 1
	const VBLANK_2_F ; 2
	const VBLANK_3_F ; 3
	const VBLANK_4_F ; 4
	const VBLANK_5_F ; 5
	const VBLANK_6_F ; 6
	const VBLANK_7_F ; 7

DEF VBLANK_0 EQU 1 << VBLANK_0_F
DEF VBLANK_1 EQU 1 << VBLANK_1_F
DEF VBLANK_2 EQU 1 << VBLANK_2_F
DEF VBLANK_3 EQU 1 << VBLANK_3_F
DEF VBLANK_4 EQU 1 << VBLANK_4_F
DEF VBLANK_5 EQU 1 << VBLANK_5_F
DEF VBLANK_6 EQU 1 << VBLANK_6_F
DEF VBLANK_7 EQU 1 << VBLANK_7_F

	const_def
	const HUD_UPDATE_FIRST_ROW_F ; 0
	const HUD_UPDATE_LABEL_F ; 1
	const HUD_UPDATE_HP_F ; 2
	const HUD_3_F ; 3
	const HUD_UPDATE_LIVES_F ; 4
	const HUD_UPDATE_SCORE_DIGITS_F ; 5
	const HUD_6_F ; 6
	const HUD_BOSS_BATTLE_F ; 7

DEF HUD_UPDATE_FIRST_ROW    EQU 1 << HUD_UPDATE_FIRST_ROW_F
DEF HUD_UPDATE_LABEL        EQU 1 << HUD_UPDATE_LABEL_F
DEF HUD_UPDATE_HP           EQU 1 << HUD_UPDATE_HP_F
DEF HUD_3                   EQU 1 << HUD_3_F
DEF HUD_UPDATE_LIVES        EQU 1 << HUD_UPDATE_LIVES_F
DEF HUD_UPDATE_SCORE_DIGITS EQU 1 << HUD_UPDATE_SCORE_DIGITS_F
DEF HUD_6                   EQU 1 << HUD_6_F
DEF HUD_BOSS_BATTLE         EQU 1 << HUD_BOSS_BATTLE_F

; default number of lives at start of game
DEF DEFAULT_LIVES EQU 5
; default max HP at start of game
DEF DEFAULT_MAX_HP EQU 6
; maximum score allowed, divided by 10
DEF MAX_SCORE EQU 99999
; maximum number of lives allowed
DEF MAX_LIVES EQU 99

	const_def
	const OBJECT_SLOT_00 ; $0
DEF OBJECT_GROUP_1_BEGIN EQU const_value
	const OBJECT_SLOT_01 ; $1
	const OBJECT_SLOT_02 ; $2
	const OBJECT_SLOT_03 ; $3
	const OBJECT_SLOT_04 ; $4
	const OBJECT_SLOT_05 ; $5
	const OBJECT_SLOT_06 ; $6
	const OBJECT_SLOT_07 ; $7
	const OBJECT_SLOT_08 ; $8
	const OBJECT_SLOT_09 ; $9
	const OBJECT_SLOT_10 ; $a
	const OBJECT_SLOT_11 ; $b
	const OBJECT_SLOT_12 ; $c
DEF OBJECT_GROUP_1_END EQU const_value
DEF OBJECT_GROUP_2_BEGIN EQU const_value
	const OBJECT_SLOT_13 ; $d
	const OBJECT_SLOT_14 ; $e
DEF OBJECT_GROUP_2_END EQU const_value
DEF OBJECT_GROUP_3_BEGIN EQU const_value
	const OBJECT_SLOT_15 ; $f
DEF OBJECT_GROUP_3_END EQU const_value
DEF NUM_OBJECT_SLOTS EQU const_value

; wObjectActiveStates state
DEF OBJECT_NOT_ACTIVE EQU 0
DEF OBJECT_ACTIVE     EQU 1
