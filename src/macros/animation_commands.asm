; animation commands
	const_def $e0

	const ANIMCMD_END ; $e0
MACRO anim_end
	db ANIMCMD_END
ENDM

	const ANIMCMD_JUMP ; $e1
MACRO anim_jp
	db ANIMCMD_JUMP
	dw \1 ; address
ENDM

	const ANIMCMD_JUMP_RELATIVE ; $e2
MACRO anim_jr
	db ANIMCMD_JUMP_RELATIVE
	db \1 - @ ; relative offset
ENDM

	const ANIMCMD_E3 ; $e3
MACRO anim_e3
	db ANIMCMD_E3
	dw \1 ; address
ENDM

	const ANIMCMD_E4 ; $e4
MACRO anim_e4
	db ANIMCMD_E4
ENDM

	const ANIMCMD_E5 ; $e5
MACRO anim_e5
	db ANIMCMD_E5
	dw \1 ; address
	dw \2 ; address
ENDM

	const ANIMCMD_E6 ; $e6
MACRO anim_e6
	db ANIMCMD_E6
	db \1 ; value
ENDM

	const ANIMCMD_E7 ; $e7
MACRO anim_e7
	db ANIMCMD_E7
ENDM

	const ANIMCMD_CALL ; $e8
MACRO anim_call
	db ANIMCMD_CALL
	dw \1 ; address
ENDM

	const ANIMCMD_CALL_ARG ; $e9
MACRO anim_callarg
	db ANIMCMD_CALL_ARG
	dw \1 ; address
	db \2 ; arg
ENDM

	const ANIMCMD_JPEQ ; $ea
MACRO anim_jpeq
	db ANIMCMD_JPEQ
	dw \1 ; address
	db \2 ; value
	dw \3 ; address
ENDM

	const ANIMCMD_ANIM_TABLE ; $eb
MACRO anim_animtable
	db ANIMCMD_ANIM_TABLE
	dw \1 ; address
ENDM

	const ANIMCMD_DELAY ; $ec
MACRO anim_delay
	db ANIMCMD_DELAY
	dw \1 ; address
ENDM

	const ANIMCMD_ED ; $ed
MACRO anim_ed
	db ANIMCMD_ED
	db \1 ; value
ENDM

	const ANIMCMD_EE ; $ee
MACRO anim_ee
	db ANIMCMD_EE
	dw \1 ; value 1
	dw \2 ; value 2
ENDM

	const ANIMCMD_EF ; $ef
MACRO anim_ef
	db ANIMCMD_EF
ENDM

	const ANIMCMD_F0 ; $f0
MACRO anim_f0
	db ANIMCMD_F0
	db \1 ; value 1
	db \2 ; value 2
ENDM

	const ANIMCMD_F1 ; $f1
MACRO anim_f1
	db ANIMCMD_F1
	db \1 ; value 1
	db \2 ; value 2
ENDM

	const ANIMCMD_F2 ; $f2
MACRO anim_f2
	db ANIMCMD_F2
ENDM

	const ANIMCMD_F3 ; $f3
MACRO anim_f3
	db ANIMCMD_F3
ENDM

	const ANIMCMD_SET ; $f4
MACRO anim_set
	db ANIMCMD_SET
	dw \1 ; address
	db \2 ; value
ENDM

	const ANIMCMD_INC ; $f5
MACRO anim_inc
	db ANIMCMD_INC
	dw \1 ; address
ENDM

	const ANIMCMD_DEC ; $f6
MACRO anim_dec
	db ANIMCMD_DEC
	dw \1 ; address
ENDM

	const ANIMCMD_JP_IF ; $f7
MACRO anim_jpif
	db ANIMCMD_JP_IF
	dw \1 ; address
	db \2 ; value
	dw \3 ; address
ENDM

	const ANIMCMD_JP_IFNOT ; $f8
MACRO anim_jpifnot
	db ANIMCMD_JP_IFNOT
	dw \1 ; address
	db \2 ; value
	dw \3 ; address
ENDM

	const ANIMCMD_F9 ; $f9
MACRO anim_f9
	db ANIMCMD_F9
	dw \1 ; address
	db \2 ; value 1
	db \3 ; value 2
ENDM

	const ANIMCMD_FA ; $fa
MACRO anim_fa
	db ANIMCMD_FA
	db \1 ; value
ENDM

	const ANIMCMD_FB ; $fb
MACRO anim_fb
	db ANIMCMD_FB
	db \1 ; value 1
ENDM

	const ANIMCMD_FC ; $fc
MACRO anim_fc
	db ANIMCMD_FC
	dw \1, \2, \3
ENDM

	const ANIMCMD_FD ; $fd
MACRO anim_fd
	db ANIMCMD_FD
	db \1 ; value 1
ENDM

	const ANIMCMD_FE ; $fe
MACRO anim_fe
	db ANIMCMD_FE
	db \1 ; value 1
ENDM
