; script commands
	const_def $e0

DEF SCRIPT_COMMANDS_BEGIN EQU const_value

	const SCRIPT_END ; $e0
MACRO script_end
	db SCRIPT_END
ENDM

	const SCRIPT_JUMP_ABS ; $e1
MACRO jump_abs
	db SCRIPT_JUMP_ABS
	dw \1 ; address
ENDM

	const SCRIPT_JUMP_REL ; $e2
MACRO jump_rel
	db SCRIPT_JUMP_REL
	db \1 - @ ; relative offset
ENDM

	const SCRIPT_E3 ; $e3
MACRO script_e3
	db SCRIPT_E3
	dw \1 ; address
ENDM

	const SCRIPT_E4 ; $e4
MACRO script_e4
	db SCRIPT_E4
ENDM

	const SCRIPT_SET_SCRIPTS ; $e5
MACRO set_scripts
	db SCRIPT_SET_SCRIPTS
	dw \1 ; address
	dw \2 ; address
ENDM

	const SCRIPT_E6 ; $e6
MACRO script_e6
	db SCRIPT_E6
	db \1 ; value
ENDM

	const SCRIPT_E7 ; $e7
MACRO script_e7
	db SCRIPT_E7
ENDM

	const SCRIPT_CALL ; $e8
MACRO script_call_bank01
	db SCRIPT_CALL
	dw \1 ; address
ENDM

	const SCRIPT_CALL_ARG ; $e9
MACRO script_call_arg
	db SCRIPT_CALL_ARG
	dw \1 ; address
	db \2 ; arg
ENDM

	const SCRIPT_JUMP_IF_EQUAL ; $ea
MACRO jump_if_equal
	db SCRIPT_JUMP_IF_EQUAL
	dw \1 ; address
	db \2 ; value
	dw \3 ; address
ENDM

	const SCRIPT_JUMPTABLE ; $eb
MACRO jumptable
	db SCRIPT_JUMPTABLE
	dw \1 ; address
ENDM

	const SCRIPT_DELAY ; $ec
MACRO script_delay
	db SCRIPT_DELAY
	dw \1 ; address
ENDM

	const SCRIPT_ED ; $ed
MACRO script_ed
	db SCRIPT_ED
	db \1 ; value
ENDM

	const SCRIPT_SET_CUSTOM_FUNC ; $ee
MACRO set_custom_func
	db SCRIPT_SET_CUSTOM_FUNC
	dw \1 ; value 1
	dw \2 ; value 2
ENDM

	const SCRIPT_CLEAR_CUSTOM_FUNC ; $ef
MACRO clear_custom_func
	db SCRIPT_CLEAR_CUSTOM_FUNC
ENDM

	const SCRIPT_F0 ; $f0
MACRO script_f0
	db SCRIPT_F0
	db \1 ; value 1
	db \2 ; value 2
ENDM

	const SCRIPT_F1 ; $f1
MACRO script_f1
	db SCRIPT_F1
	db \1 ; value 1
	db \2 ; value 2
ENDM

	const SCRIPT_F2 ; $f2
MACRO script_f2
	db SCRIPT_F2
ENDM

	const SCRIPT_F3 ; $f3
MACRO script_f3
	db SCRIPT_F3
ENDM

	const SCRIPT_SET_VALUE ; $f4
MACRO set_value
	db SCRIPT_SET_VALUE
	dw \1 ; address
	db \2 ; value
ENDM

	const SCRIPT_INC_VALUE ; $f5
MACRO inc_value
	db SCRIPT_INC_VALUE
	dw \1 ; address
ENDM

	const SCRIPT_DEC_VALUE ; $f6
MACRO dec_value
	db SCRIPT_DEC_VALUE
	dw \1 ; address
ENDM

	const SCRIPT_JUMP_IF_FLAGS ; $f7
MACRO jump_if_flags
	db SCRIPT_JUMP_IF_FLAGS
	dw \1 ; address
	db \2 ; value
	dw \3 ; address
ENDM

	const SCRIPT_JUMP_IF_NOT_FLAGS ; $f8
MACRO jump_if_not_flags
	db SCRIPT_JUMP_IF_NOT_FLAGS
	dw \1 ; address
	db \2 ; value
	dw \3 ; address
ENDM

	const SCRIPT_F9 ; $f9
MACRO script_f9
	db SCRIPT_F9
	dw \1 ; address
	db \2 ; value 1
	db \3 ; value 2
ENDM

	const SCRIPT_FA ; $fa
MACRO script_fa
	db SCRIPT_FA
	db \1 ; value
ENDM

	const SCRIPT_FB ; $fb
MACRO script_fb
	db SCRIPT_FB
	db \1 ; value 1
ENDM

	const SCRIPT_CREATE_OBJECT ; $fc
MACRO create_object
	db SCRIPT_CREATE_OBJECT
	dw \1, \2, \3
ENDM

	const SCRIPT_FD ; $fd
MACRO script_fd
	db SCRIPT_FD
	db \1 ; value 1
ENDM

	const SCRIPT_FE ; $fe
MACRO script_fe
	db SCRIPT_FE
	db \1 ; value 1
ENDM

MACRO frame
	db \1 ; duration
	dw \2 ; OAM ptr
ENDM
