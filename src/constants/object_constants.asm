	const_def
	const OBJECT_SLOT_KIRBY ; $0
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

; object property struct
RSRESET
DEF OBJ_PROPERTY_FLAGS RB
DEF OBJ_COL_WIDTH      RB
DEF OBJ_COL_HEIGHT     RB
DEF OBJ_ITEM_ID EQU _RS
DEF OBJ_DAMAGE         RB
DEF OBJ_HP             RB
DEF OBJ_UNK5           RB
DEF OBJ_SCORE          RB
DEF OBJ_UNK7           RW

; property flags
	const_def
	const PROPERTY_0_F ; 0
	const PROPERTY_1_F ; 1
	const PROPERTY_2_F ; 2
	const PROPERTY_3_F ; 3
	const PROPERTY_PAL_F ; 4
	const PROPERTY_GRAVITY_F ; 5
	const PROPERTY_PERSISTENT_F ; 6
	const PROPERTY_PRIORITY_F ; 7

DEF PROPERTY_0          EQU 1 << PROPERTY_0_F
DEF PROPERTY_1          EQU 1 << PROPERTY_1_F
DEF PROPERTY_2          EQU 1 << PROPERTY_2_F
DEF PROPERTY_3          EQU 1 << PROPERTY_3_F
DEF PROPERTY_PAL        EQU 1 << PROPERTY_PAL_F
DEF PROPERTY_GRAVITY    EQU 1 << PROPERTY_GRAVITY_F
DEF PROPERTY_PERSISTENT EQU 1 << PROPERTY_PERSISTENT_F
DEF PROPERTY_PRIORITY   EQU 1 << PROPERTY_PRIORITY_F

; object flags
	const_def
	const OBJFLAG_INHALED_F ; 0
	const OBJFLAG_IMMUNE_F ; 1
	const OBJFLAG_2_F ; 2
	const OBJFLAG_3_F ; 3
	const OBJFLAG_FLASHING_F ; 4
	const OBJFLAG_BLINKING_F ; 5
	const OBJFLAG_6_F ; 6
	const OBJFLAG_7_F ; 7

DEF OBJFLAG_INHALED EQU 1 << OBJFLAG_INHALED_F
DEF OBJFLAG_IMMUNE EQU 1 << OBJFLAG_IMMUNE_F
DEF OBJFLAG_2 EQU 1 << OBJFLAG_2_F
DEF OBJFLAG_3 EQU 1 << OBJFLAG_3_F
DEF OBJFLAG_FLASHING EQU 1 << OBJFLAG_FLASHING_F
DEF OBJFLAG_BLINKING EQU 1 << OBJFLAG_BLINKING_F
DEF OBJFLAG_6 EQU 1 << OBJFLAG_6_F
DEF OBJFLAG_7 EQU 1 << OBJFLAG_7_F

	const_def $70
	const VEL_RIGHT_0_00   ; $70
	const VEL_RIGHT_1_64TH ; $71
	const VEL_RIGHT_1_32TH ; $72
	const VEL_RIGHT_1_16TH ; $73
	const VEL_RIGHT_1_8TH  ; $74
	const VEL_RIGHT_0_25   ; $75
	const VEL_RIGHT_0_50   ; $76
	const VEL_RIGHT_0_75   ; $77
	const VEL_RIGHT_1_00   ; $78
	const VEL_RIGHT_1_25   ; $79
	const VEL_RIGHT_2_00   ; $7a
	const VEL_RIGHT_3_00   ; $7b
	const VEL_RIGHT_4_00   ; $7c
	const VEL_RIGHT_6_00   ; $7d
	const VEL_RIGHT_8_00   ; $7e
	const VEL_RIGHT_16_00  ; $7f
	const VEL_LEFT_0_00    ; $80
	const VEL_LEFT_1_64TH  ; $81
	const VEL_LEFT_1_32TH  ; $82
	const VEL_LEFT_1_16TH  ; $83
	const VEL_LEFT_1_8TH   ; $84
	const VEL_LEFT_0_25    ; $85
	const VEL_LEFT_0_50    ; $86
	const VEL_LEFT_0_75    ; $87
	const VEL_LEFT_1_00    ; $88
	const VEL_LEFT_1_25    ; $89
	const VEL_LEFT_2_00    ; $8a
	const VEL_LEFT_3_00    ; $8b
	const VEL_LEFT_4_00    ; $8c
	const VEL_LEFT_6_00    ; $8d
	const VEL_LEFT_8_00    ; $8e
	const VEL_LEFT_16_00   ; $8f

	const_def $70
	const VEL_DOWN_0_00    ; $70
	const VEL_DOWN_1_64TH  ; $71
	const VEL_DOWN_1_32TH  ; $72
	const VEL_DOWN_1_16TH  ; $73
	const VEL_DOWN_1_8TH   ; $74
	const VEL_DOWN_0_25    ; $75
	const VEL_DOWN_0_50    ; $76
	const VEL_DOWN_0_75    ; $77
	const VEL_DOWN_1_00    ; $78
	const VEL_DOWN_1_25    ; $79
	const VEL_DOWN_2_00    ; $7a
	const VEL_DOWN_3_00    ; $7b
	const VEL_DOWN_4_00    ; $7c
	const VEL_DOWN_6_00    ; $7d
	const VEL_DOWN_8_00    ; $7e
	const VEL_DOWN_16_00   ; $7f
	const VEL_UP_0_00      ; $80
	const VEL_UP_1_64TH    ; $81
	const VEL_UP_1_32TH    ; $82
	const VEL_UP_1_16TH    ; $83
	const VEL_UP_1_8TH     ; $84
	const VEL_UP_0_25      ; $85
	const VEL_UP_0_50      ; $86
	const VEL_UP_0_75      ; $87
	const VEL_UP_1_00      ; $88
	const VEL_UP_1_25      ; $89
	const VEL_UP_2_00      ; $8a
	const VEL_UP_3_00      ; $8b
	const VEL_UP_4_00      ; $8c
	const VEL_UP_6_00      ; $8d
	const VEL_UP_8_00      ; $8e
	const VEL_UP_16_00     ; $8f

; score constants for ScriptFunc_AddScore
	const_def
	const SCORE_300  ; $0
	const SCORE_1000 ; $1
	const SCORE_400  ; $2
	const SCORE_650  ; $3
	const_skip
	const SCORE_2000 ; $5
	const SCORE_750  ; $6
	const SCORE_2500 ; $7
