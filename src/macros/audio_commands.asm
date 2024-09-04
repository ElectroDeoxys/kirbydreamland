; audio commands
	const_def $c0

	const AUDIOCMD_WAIT ; $c0
MACRO audio_wait
	db AUDIOCMD_WAIT
	db \1 ; duration
ENDM

	const_def $e0

DEF AUDIO_COMMANDS_BEGIN EQU const_value

	const AUDIOCMD_E0 ; $e0

	const AUDIOCMD_E1 ; $e1
MACRO audio_e1
	db AUDIOCMD_E1
	db \1 ; ?
ENDM

	const AUDIOCMD_SET_FREQUENCY ; $e2
MACRO set_frequency
	db AUDIOCMD_SET_FREQUENCY
	dw \1 ; ?
ENDM

	const AUDIOCMD_SUBTRACT_FREQUENCY ; $e3
MACRO subtract_frequency
	db AUDIOCMD_SUBTRACT_FREQUENCY
	db \1 ; ?
ENDM

	const AUDIOCMD_E4 ; $e4

	const AUDIOCMD_E5 ; $e5

	const AUDIOCMD_E6 ; $e6

	const AUDIOCMD_E7 ; $e7

	const AUDIOCMD_E8 ; $e8

	const AUDIOCMD_E9 ; $e9

	const AUDIOCMD_EA ; $ea

	const AUDIOCMD_EB ; $eb

	const AUDIOCMD_EC ; $ec

	const AUDIOCMD_ED ; $ed

	const AUDIOCMD_EE ; $ee

	const AUDIOCMD_EF ; $ef

	const AUDIOCMD_F0 ; $f0
MACRO audio_f0
	db AUDIOCMD_F0
	db \1 ; ?
ENDM

	const AUDIOCMD_F1 ; $f1
MACRO audio_f1
	db AUDIOCMD_F1
	db \1 ; ?
ENDM

	const AUDIOCMD_F2 ; $f2
MACRO audio_f2
	db AUDIOCMD_F2
	db \1 ; ?
ENDM

	const AUDIOCMD_F3 ; $f3
MACRO audio_f3
	db AUDIOCMD_F3
	db \1 ; ?
ENDM

	const AUDIOCMD_F4 ; $f4
MACRO audio_f4
	db AUDIOCMD_F4
	db \1 ; ?
ENDM

	const AUDIOCMD_F5 ; $f5
MACRO audio_f5
	db AUDIOCMD_F5
	db \1 ; ?
ENDM

	const AUDIOCMD_F6 ; $f6
MACRO audio_f6
	db AUDIOCMD_F6
	db \1 ; ?
ENDM

	const AUDIOCMD_F7 ; $f7
MACRO audio_f7
	db AUDIOCMD_F7
	db \1 ; ?
ENDM

	const AUDIOCMD_JUMP ; $f8
MACRO audio_jump
	db AUDIOCMD_JUMP
	dw \1 ; address
ENDM

	const AUDIOCMD_F9 ; $f9

	const AUDIOCMD_CALL ; $fa
MACRO audio_call
	db AUDIOCMD_CALL
	dw \1 ; address
ENDM

	const AUDIOCMD_RET ; $fb
MACRO audio_ret
	db AUDIOCMD_RET
ENDM

	const AUDIOCMD_REPEAT ; $fc
MACRO audio_repeat
	db AUDIOCMD_REPEAT
	db \1 ; number of repetitions
ENDM

	const AUDIOCMD_REPEAT_END ; $fd
MACRO audio_repeat_end
	db AUDIOCMD_REPEAT_END
ENDM

	const AUDIOCMD_SET_PAN ; $fe
MACRO set_pan
	db AUDIOCMD_SET_PAN
	db \1 ; PAN_* constant
ENDM

	const AUDIOCMD_FF ; $ff
MACRO audio_ff
	db AUDIOCMD_FF
ENDM
