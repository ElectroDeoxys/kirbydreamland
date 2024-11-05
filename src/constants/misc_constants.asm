; Boolean checks
DEF FALSE EQU 0
DEF TRUE  EQU 1

DEF NULL EQU $0000

; hVBlankFlags constants
	const_def
	const VBLANK_0_F ; 0
	const VBLANK_1_F ; 1
	const VBLANK_2_F ; 2
	const VBLANK_3_F ; 3
	const VBLANK_4_F ; 4
	const VBLANK_5_F ; 5
	const VBLANK_PENDING_F ; 6
	const VBLANK_IGNORE_INPUT_F ; 7

DEF VBLANK_0 EQU 1 << VBLANK_0_F
DEF VBLANK_1 EQU 1 << VBLANK_1_F
DEF VBLANK_2 EQU 1 << VBLANK_2_F
DEF VBLANK_3 EQU 1 << VBLANK_3_F
DEF VBLANK_4 EQU 1 << VBLANK_4_F
DEF VBLANK_5 EQU 1 << VBLANK_5_F
DEF VBLANK_PENDING EQU 1 << VBLANK_PENDING_F
DEF VBLANK_IGNORE_INPUT EQU 1 << VBLANK_IGNORE_INPUT_F

	const_def
	const HUD_UPDATE_FIRST_ROW_F ; 0
	const HUD_UPDATE_LABEL_F ; 1
	const HUD_UPDATE_HP_F ; 2
	const HUD_UNUSED_F ; 3
	const HUD_UPDATE_LIVES_F ; 4
	const HUD_UPDATE_SCORE_DIGITS_F ; 5
	const HUD_6_F ; 6
	const HUD_BOSS_BATTLE_F ; 7

DEF HUD_UPDATE_FIRST_ROW    EQU 1 << HUD_UPDATE_FIRST_ROW_F
DEF HUD_UPDATE_LABEL        EQU 1 << HUD_UPDATE_LABEL_F
DEF HUD_UPDATE_HP           EQU 1 << HUD_UPDATE_HP_F
DEF HUD_UNUSED              EQU 1 << HUD_UNUSED_F
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

; object flags
	const_def
	const OBJFLAG_0_F ; 0
	const OBJFLAG_1_F ; 1
	const OBJFLAG_2_F ; 2
	const OBJFLAG_3_F ; 3
	const OBJFLAG_FLASHING_F ; 4
	const OBJFLAG_BLINKING_F ; 5
	const OBJFLAG_6_F ; 6
	const OBJFLAG_7_F ; 7

DEF OBJFLAG_0 EQU 1 << OBJFLAG_0_F
DEF OBJFLAG_1 EQU 1 << OBJFLAG_1_F
DEF OBJFLAG_2 EQU 1 << OBJFLAG_2_F
DEF OBJFLAG_3 EQU 1 << OBJFLAG_3_F
DEF OBJFLAG_FLASHING EQU 1 << OBJFLAG_FLASHING_F
DEF OBJFLAG_BLINKING EQU 1 << OBJFLAG_BLINKING_F
DEF OBJFLAG_6 EQU 1 << OBJFLAG_6_F
DEF OBJFLAG_7 EQU 1 << OBJFLAG_7_F

; flags for hPalFadeFlags
	const_def 2
	const FADE_COLOR_F ; 2
	const SCROLLINGF_UNK3_F ; 3
	const SCROLL_LOCKED_F ; 4
	const SCROLLINGF_UNK5_F ; 5
	const FADE_MODE_F ; 6
	const FADE_ON_F ; 7

DEF FADE_WHITE EQU 0 << FADE_COLOR_F
DEF FADE_BLACK EQU 1 << FADE_COLOR_F
DEF SCROLLINGF_UNK3 EQU 1 << SCROLLINGF_UNK3_F
DEF SCROLL_LOCKED   EQU 1 << SCROLL_LOCKED_F
DEF SCROLLINGF_UNK5 EQU 1 << SCROLLINGF_UNK5_F
DEF FADE_IN    EQU 0 << FADE_MODE_F
DEF FADE_OUT   EQU 1 << FADE_MODE_F
DEF FADE_ON    EQU 1 << FADE_ON_F

; hEngineFlags flags
	const_def
	const KABOOLA_BATTLE_F ; $0
	const ENGINEF_UNK1_F ; $1
	const PROCESS_BG_QUEUE_F ; $2
	const RESET_TIMER_PENDING_F ; $3
	const PAUSE_ANIMATION_F ; $4
	const ENGINEF_UNK5_F ; $5
	const ENGINEF_UNK6_F ; $6
	const ENGINEF_UNK7_F ; $7

DEF KABOOLA_BATTLE EQU 1 << KABOOLA_BATTLE_F ; $01
DEF ENGINEF_UNK1 EQU 1 << ENGINEF_UNK1_F ; $02
DEF PROCESS_BG_QUEUE EQU 1 << PROCESS_BG_QUEUE_F ; $04
DEF RESET_TIMER_PENDING EQU 1 << RESET_TIMER_PENDING_F ; $08
DEF PAUSE_ANIMATION EQU 1 << PAUSE_ANIMATION_F ; $10
DEF ENGINEF_UNK5 EQU 1 << ENGINEF_UNK5_F ; $20
DEF ENGINEF_UNK6 EQU 1 << ENGINEF_UNK6_F ; $40
DEF ENGINEF_UNK7 EQU 1 << ENGINEF_UNK7_F ; $80
