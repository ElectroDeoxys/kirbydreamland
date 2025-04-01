; Kirby states
	const_def
	const KIRBY_IDLE ; $00
	const KIRBY_WALK ; $01
	const KIRBY_JUMP ; $02
	const KIRBY_START_INHALE ; $03
	const KIRBY_HOVER ; $04
	const KIRBY_PUFF ; $05
	const KIRBY_PAUSE_DANCE ; $06
	const KIRBY_SQUISH_DOWN ; $07
	const KIRBY_SQUISH_UP ; $08
	const KIRBY_SQUISH_FRONT ; $09
	const KIRBY_SQUISH_BACK ; $0a
	const KIRBY_DUCK ; $0b
	const KIRBY_WALK_SLOW ; $0c
	const KIRBY_STEP ; $0d
	const KIRBY_DIVE ; $0e
	const KIRBY_UNK_0F ; $0f
	const KIRBY_INHALE ; $10
	const KIRBY_GET_MOUTHFUL ; $11
	const KIRBY_MOUTHFUL ; $12
	const KIRBY_MOUTHFUL_WALK ; $13
	const KIRBY_MOUTHFUL_JUMP ; $14
	const KIRBY_SPIT ; $15
	const KIRBY_AFTER_SPIT ; $16
	const KIRBY_UNK_17 ; $17
	const KIRBY_UNK_18 ; $18
	const KIRBY_START_HOVER ; $19
	const KIRBY_UNK_1A ; $1a
	const KIRBY_UNK_1B ; $1b
	const KIRBY_WALK_FAST ; $1c

; hKirbyFlags1 flags
	const_def $3
	const KIRBY1F_JUMP_RISE_F ; $3
	const KIRBY1F_WALK_F ; $4
	const KIRBY1F_WALK_LEFT_F ; $5
	const KIRBY1F_GROUNDED_F ; $6
	const KIRBY1F_AIRBORNE_F ; $7

DEF KIRBY1F_JUMP_RISE  EQU 1 << KIRBY1F_JUMP_RISE_F ; $08
DEF KIRBY1F_WALK       EQU 1 << KIRBY1F_WALK_F ; $10
DEF KIRBY1F_WALK_LEFT  EQU 1 << KIRBY1F_WALK_LEFT_F ; $20
DEF KIRBY1F_WALK_RIGHT EQU $00
DEF KIRBY1F_GROUNDED   EQU 1 << KIRBY1F_GROUNDED_F ; $40
DEF KIRBY1F_AIRBORNE   EQU 1 << KIRBY1F_AIRBORNE_F ; $80

DEF UNK_BITMASK EQU %111

; hKirbyFlags2 flags
	const_def
	const KIRBY2F_UNK0_F ; $0
	const KIRBY2F_UNK1_F ; $1
	const KIRBY2F_SPIT_F ; $2
	const KIRBY2F_MOUTHFUL_F ; $3
	const KIRBY2F_INHALE_F ; $4
	const KIRBY2F_UNK5_F ; $5
	const KIRBY2F_UNK6_F ; $6
	const KIRBY2F_HOVER_F ; $7

DEF KIRBY2F_UNK0 EQU 1 << KIRBY2F_UNK0_F ; $01
DEF KIRBY2F_UNK1 EQU 1 << KIRBY2F_UNK1_F ; $02
DEF KIRBY2F_SPIT EQU 1 << KIRBY2F_SPIT_F ; $04
DEF KIRBY2F_MOUTHFUL EQU 1 << KIRBY2F_MOUTHFUL_F ; $08
DEF KIRBY2F_INHALE EQU 1 << KIRBY2F_INHALE_F ; $10
DEF KIRBY2F_UNK5 EQU 1 << KIRBY2F_UNK5_F ; $20
DEF KIRBY2F_UNK6 EQU 1 << KIRBY2F_UNK6_F ; $40
DEF KIRBY2F_HOVER EQU 1 << KIRBY2F_HOVER_F ; $80

; hKirbyFlags3 flags
	const_def
	const KIRBY3F_UNK0_F ; $0
	const KIRBY3F_UNK1_F ; $1
	const KIRBY3F_UNK2_F ; $2
	const KIRBY3F_DIVE_F ; $3
	const KIRBY3F_DUCK_F ; $4
	const KIRBY3F_FACE_LEFT_F ; $5
	const KIRBY3F_UNK6_F ; $6
	const KIRBY3F_LAND_F ; $7

DEF KIRBY3F_UNK0       EQU 1 << KIRBY3F_UNK0_F ; $01
DEF KIRBY3F_UNK1       EQU 1 << KIRBY3F_UNK1_F ; $02
DEF KIRBY3F_UNK2       EQU 1 << KIRBY3F_UNK2_F ; $04
DEF KIRBY3F_DIVE       EQU 1 << KIRBY3F_DIVE_F ; $08
DEF KIRBY3F_DUCK       EQU 1 << KIRBY3F_DUCK_F ; $10
DEF KIRBY3F_FACE_LEFT  EQU 1 << KIRBY3F_FACE_LEFT_F ; $20
DEF KIRBY3F_FACE_RIGHT EQU 0 ; $00
DEF KIRBY3F_UNK6       EQU 1 << KIRBY3F_UNK6_F ; $40
DEF KIRBY3F_LAND       EQU 1 << KIRBY3F_LAND_F ; $80

; hKirbyFlags4 flags
	const_def
	const KIRBY4F_UNK0_F ; $0
	const KIRBY4F_NONSTICKY_B_F ; $1
	const KIRBY4F_PAUSED_F ; $2
	const KIRBY4F_UNK3_F ; $3
	const KIRBY4F_UNK4_F ; $4
	const KIRBY4F_UNK5_F ; $5
	const KIRBY4F_UNK6_F ; $6
	const KIRBY4F_UNK7_F ; $7

DEF KIRBY4F_UNK0       EQU 1 << KIRBY4F_UNK0_F ; $01
DEF KIRBY4F_NONSTICKY_B       EQU 1 << KIRBY4F_NONSTICKY_B_F ; $02
DEF KIRBY4F_PAUSED       EQU 1 << KIRBY4F_PAUSED_F ; $04
DEF KIRBY4F_UNK3       EQU 1 << KIRBY4F_UNK3_F ; $08
DEF KIRBY4F_UNK4       EQU 1 << KIRBY4F_UNK4_F ; $10
DEF KIRBY4F_UNK5       EQU 1 << KIRBY4F_UNK5_F ; $20
DEF KIRBY4F_UNK6       EQU 1 << KIRBY4F_UNK6_F ; $40
DEF KIRBY4F_UNK7       EQU 1 << KIRBY4F_UNK7_F ; $80

; hKirbyFlags5 flags
	const_def
	const KIRBY5F_UNK0_F ; $0
	const KIRBY5F_STAGE_INTRO_F ; $1
	const KIRBY5F_TRIGGER_TRANSITION_F ; $2
	const KIRBY5F_DAMAGED_F ; $3
	const KIRBY5F_DAMAGE_KNOCK_BACK_LEFT_F ; $4
	const KIRBY5F_UNK5_F ; $5
	const KIRBY5F_UNK6_F ; $6
	const KIRBY5F_INHALING_OBJECT_F ; $7

DEF KIRBY5F_UNK0       EQU 1 << KIRBY5F_UNK0_F ; $01
DEF KIRBY5F_STAGE_INTRO       EQU 1 << KIRBY5F_STAGE_INTRO_F ; $02
DEF KIRBY5F_TRIGGER_TRANSITION EQU 1 << KIRBY5F_TRIGGER_TRANSITION_F ; $04
DEF KIRBY5F_DAMAGED    EQU 1 << KIRBY5F_DAMAGED_F ; $08
DEF KIRBY5F_DAMAGE_KNOCK_BACK_LEFT  EQU 1 << KIRBY5F_DAMAGE_KNOCK_BACK_LEFT_F ; $10
DEF KIRBY5F_DAMAGE_KNOCK_BACK_RIGHT EQU $00
DEF KIRBY5F_UNK5       EQU 1 << KIRBY5F_UNK5_F ; $20
DEF KIRBY5F_UNK6       EQU 1 << KIRBY5F_UNK6_F ; $40
DEF KIRBY5F_INHALING_OBJECT       EQU 1 << KIRBY5F_INHALING_OBJECT_F ; $80

; hKirbyFlags6 flags
	const_def
	const KIRBY6F_UNK0_F ; $0
	const KIRBY6F_UNK1_F ; $1
	const KIRBY6F_UNK2_F ; $2
	const KIRBY6F_UNK3_F ; $3
	const KIRBY6F_UNK4_F ; $4
	const KIRBY6F_UNK5_F ; $5
	const KIRBY6F_UNK6_F ; $6
	const KIRBY6F_UNK7_F ; $7

DEF KIRBY6F_UNK0       EQU 1 << KIRBY6F_UNK0_F ; $01
DEF KIRBY6F_UNK1       EQU 1 << KIRBY6F_UNK1_F ; $02
DEF KIRBY6F_UNK2       EQU 1 << KIRBY6F_UNK2_F ; $04
DEF KIRBY6F_UNK3       EQU 1 << KIRBY6F_UNK3_F ; $08
DEF KIRBY6F_UNK4       EQU 1 << KIRBY6F_UNK4_F ; $10
DEF KIRBY6F_UNK5       EQU 1 << KIRBY6F_UNK5_F ; $20
DEF KIRBY6F_UNK6       EQU 1 << KIRBY6F_UNK6_F ; $40
DEF KIRBY6F_UNK7       EQU 1 << KIRBY6F_UNK7_F ; $80

DEF DAMAGE_BLINK_DURATION EQU 90

; how many particles appear while Kirby is inhaling
DEF NUM_INHALE_PARTICLES EQU 3
