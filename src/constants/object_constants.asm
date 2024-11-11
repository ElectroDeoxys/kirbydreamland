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

	const_def $70
	const VEL_RIGHT_0000 ; $70
	const VEL_RIGHT_0004 ; $71
	const VEL_RIGHT_0008 ; $72
	const VEL_RIGHT_0016 ; $73
	const VEL_RIGHT_0032 ; $74
	const VEL_RIGHT_0064 ; $75
	const VEL_RIGHT_0128 ; $76
	const VEL_RIGHT_0192 ; $77
	const VEL_RIGHT_0256 ; $78
	const VEL_RIGHT_0320 ; $79
	const VEL_RIGHT_0512 ; $7a
	const VEL_RIGHT_0768 ; $7b
	const VEL_RIGHT_1024 ; $7c
	const VEL_RIGHT_1536 ; $7d
	const VEL_RIGHT_2048 ; $7e
	const VEL_RIGHT_4096 ; $7f
	const VEL_LEFT_0000 ; $80
	const VEL_LEFT_0004 ; $81
	const VEL_LEFT_0008 ; $82
	const VEL_LEFT_0016 ; $83
	const VEL_LEFT_0032 ; $84
	const VEL_LEFT_0064 ; $85
	const VEL_LEFT_0128 ; $86
	const VEL_LEFT_0192 ; $87
	const VEL_LEFT_0256 ; $88
	const VEL_LEFT_0320 ; $89
	const VEL_LEFT_0512 ; $8a
	const VEL_LEFT_0768 ; $8b
	const VEL_LEFT_1024 ; $8c
	const VEL_LEFT_1536 ; $8d
	const VEL_LEFT_2048 ; $8e
	const VEL_LEFT_4096 ; $8f

	const_def $70
	const VEL_DOWN_0000 ; $70
	const VEL_DOWN_0004 ; $71
	const VEL_DOWN_0008 ; $72
	const VEL_DOWN_0016 ; $73
	const VEL_DOWN_0032 ; $74
	const VEL_DOWN_0064 ; $75
	const VEL_DOWN_0128 ; $76
	const VEL_DOWN_0192 ; $77
	const VEL_DOWN_0256 ; $78
	const VEL_DOWN_0320 ; $79
	const VEL_DOWN_0512 ; $7a
	const VEL_DOWN_0768 ; $7b
	const VEL_DOWN_1024 ; $7c
	const VEL_DOWN_1536 ; $7d
	const VEL_DOWN_2048 ; $7e
	const VEL_DOWN_4096 ; $7f
	const VEL_UP_0000 ; $80
	const VEL_UP_0004 ; $81
	const VEL_UP_0008 ; $82
	const VEL_UP_0016 ; $83
	const VEL_UP_0032 ; $84
	const VEL_UP_0064 ; $85
	const VEL_UP_0128 ; $86
	const VEL_UP_0192 ; $87
	const VEL_UP_0256 ; $88
	const VEL_UP_0320 ; $89
	const VEL_UP_0512 ; $8a
	const VEL_UP_0768 ; $8b
	const VEL_UP_1024 ; $8c
	const VEL_UP_1536 ; $8d
	const VEL_UP_2048 ; $8e
	const VEL_UP_4096 ; $8f
