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

	const SCRIPT_CALL ; $e3
MACRO script_call
	db SCRIPT_CALL
	dw \1 ; address
ENDM

	const SCRIPT_RET ; $e4
MACRO script_ret
	db SCRIPT_RET
ENDM

	const SCRIPT_SET_SCRIPTS ; $e5
MACRO set_scripts
	db SCRIPT_SET_SCRIPTS
	dw \1 ; address
	dw \2 ; address
ENDM

	const SCRIPT_REPEAT ; $e6
MACRO script_repeat
	db SCRIPT_REPEAT
	db \1 ; value
ENDM

	const SCRIPT_REPEAT_END ; $e7
MACRO script_repeat_end
	db SCRIPT_REPEAT_END
ENDM

	const SCRIPT_EXEC ; $e8
MACRO script_exec
	db SCRIPT_EXEC
	dw \1 ; address
ENDM

	const SCRIPT_EXEC_ARG ; $e9
MACRO script_exec_arg
	db SCRIPT_EXEC_ARG
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
	db \1 ; value
ENDM

	const SCRIPT_ED ; $ed
MACRO script_ed
	db SCRIPT_ED
	db \1 ; value
ENDM

	const SCRIPT_SET_UPDATE_FUNC ; $ee
MACRO set_update_func
	db SCRIPT_SET_UPDATE_FUNC
	dw \1 ; function
	dw \2 ; argument
ENDM

	const SCRIPT_CLEAR_UPDATE_FUNC ; $ef
MACRO clear_update_func
	db SCRIPT_CLEAR_UPDATE_FUNC
ENDM

	const SCRIPT_SET_POSITION ; $f0
MACRO set_position
	db SCRIPT_SET_POSITION
	db \1 ; value 1
	db \2 ; value 2
ENDM

	const SCRIPT_POSITION_OFFSET ; $f1
MACRO position_offset
	db SCRIPT_POSITION_OFFSET
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

	const SCRIPT_SET_FLAGS ; $f9
MACRO set_flags
	db SCRIPT_SET_FLAGS
	dw \1 ; address
	db $ff ^ (\2) ; value 1
	db \3 ; value 2
ENDM

	const SCRIPT_JUMP_RANDOM ; $fa
MACRO jump_random
	db SCRIPT_JUMP_RANDOM
	db \1 ; value
	dw \2 ; address
ENDM

	const SCRIPT_JUMPTABLE_RANDOM ; $fb
MACRO jumptable_random
	db SCRIPT_JUMPTABLE_RANDOM
	db \1 ; value 1
ENDM

	const SCRIPT_CREATE_OBJECT ; $fc
MACRO create_object
	db SCRIPT_CREATE_OBJECT
	dw \1, \2, \3
ENDM

	const SCRIPT_CALL_RANDOM ; $fd
MACRO script_call_random
	db SCRIPT_CALL_RANDOM
	db \1 ; value 1
ENDM

	const SCRIPT_CALLTABLE_RANDOM ; $fe
MACRO calltable_random
	db SCRIPT_CALLTABLE_RANDOM
	db \1 ; value 1
ENDM

MACRO frame
	db \1 ; duration
	dw \2 ; OAM ptr
ENDM

MACRO set_velocities
	db \1 ; duration
	db \2 ; x vel
	db \3 ; y vel
ENDM

MACRO set_anim_script
	set_scripts \1, :+
:
ENDM

MACRO set_motion_script
	set_scripts :+, \1
:
ENDM

MACRO play_sfx
	script_exec_arg PlaySFX, \1
ENDM

MACRO play_music
	script_exec_arg PlayMusic, \1
ENDM

MACRO set_object_properties
	script_exec ScriptFunc_SetObjectProperties
	dw \1
ENDM

MACRO set_pal_light
	script_exec ScriptFunc_SetObjectPalLight
ENDM

MACRO set_pal_dark
	script_exec ScriptFunc_SetObjectPalDark
ENDM

MACRO set_kirby_pos
	script_exec ScriptFunc_SetKirbyPosition
ENDM

MACRO branch_kirby_pos
	script_exec ScriptFunc_BranchOnKirbyRelativePosition
	dw \1 ; address when Kirby's on the left
	dw \2 ; address when Kirby's on the right
ENDM

MACRO branch_on_kirby_vertical_alignment
	script_exec ScriptFunc_BranchOnKirbyVerticalAlignment
	dw \1 ; address when Kirby's on the left
	dw \2 ; address when Kirby's on the right
ENDM

; stage transition scripting

; \1 = duration
MACRO trans_wait
	db \1, $00
ENDM

; functionally the same as trans_move_kirby_1
; \1 = x velocity
; \2 = duration
MACRO trans_move_kirby_1
	db \2, 1 << 0
	bigdw \1
ENDM

; functionally the same as trans_move_kirby_1
; \1 = x velocity
; \2 = duration
MACRO trans_move_kirby_2
	db \2, 1 << 1
	bigdw \1
ENDM

; \1 = area
; \2 = x section
; \3 = y section
; \4 = duration
MACRO trans_change_area
	db \4, 1 << 2, \1, \2, \3
ENDM

; \1 = duration
MACRO trans_next_stage
	db \1, 1 << 3
ENDM

; \1 = motion script
; \2 = duration
MACRO trans_set_motion_script
	db \2, 1 << 4
	dw \1
ENDM

; \1 = duration
MACRO trans_epilogue
	db \1, 1 << 5
ENDM

; \1 = duration
MACRO trans_end
	db \1, 1 << 7
ENDM
