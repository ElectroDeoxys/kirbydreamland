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

; flags for hHUDFlags
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
	const HURT_PAL_EFFECT_F ; $1
	const PROCESS_BG_QUEUE_F ; $2
	const RESET_TIMER_PENDING_F ; $3
	const PAUSE_ANIMATION_F ; $4
	const ENGINEF_UNK5_F ; $5
	const ENGINEF_UNK6_F ; $6
	const ENGINEF_XWARP_F ; $7

DEF KABOOLA_BATTLE EQU 1 << KABOOLA_BATTLE_F ; $01
DEF HURT_PAL_EFFECT EQU 1 << HURT_PAL_EFFECT_F ; $02
DEF PROCESS_BG_QUEUE EQU 1 << PROCESS_BG_QUEUE_F ; $04
DEF RESET_TIMER_PENDING EQU 1 << RESET_TIMER_PENDING_F ; $08
DEF PAUSE_ANIMATION EQU 1 << PAUSE_ANIMATION_F ; $10
DEF ENGINEF_UNK5 EQU 1 << ENGINEF_UNK5_F ; $20
DEF ENGINEF_UNK6 EQU 1 << ENGINEF_UNK6_F ; $40
DEF ENGINEF_XWARP EQU 1 << ENGINEF_XWARP_F ; $80

; wClearScreenFlags constants
	const_def
	const CLEAR_ACTIVE_F   ; $0
	const CLEAR_NEXT_OBJ_F ; $1
	const_skip
	const CLEAR_UNK3_F     ; $3
	const_skip 3
	const CLEAR_NON_MIKE_F ; $7

DEF CLEAR_ACTIVE   EQU 1 << CLEAR_ACTIVE_F   ; $01
DEF CLEAR_NEXT_OBJ EQU 1 << CLEAR_NEXT_OBJ_F ; $02
DEF CLEAR_UNK3     EQU 1 << CLEAR_UNK3_F     ; $08
DEF CLEAR_NON_MIKE EQU 1 << CLEAR_NON_MIKE_F ; $80
