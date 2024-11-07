; audio commands

; \1 = note constant
; \2 = note duration (optional)
MACRO note
ASSERT \1 >= -15 && \1 <= 15
IF _NARG == 1
	db (\1 & %11111)
ELSE
ASSERT \2 <= 5
	db (\1 & %11111) | (\2 << 5)
ENDC
ENDM

; \1 = note constant
; \2 = note duration
MACRO note_long
ASSERT \1 >= -15 && \1 <= 15
	db (\1 & %11111) | (6 << 5)
	db \2
ENDM

; \1 = rest duration
MACRO rest
ASSERT \1 <= 5
	db \1 << 5 | $10
ENDM

; \1 = rest duration
MACRO rest_long
	db $10 | (6 << 5)
	db \1
ENDM

	const_def $10
	const AUDIOCMD_BREAK ; $10

	const_def $20

	const AUDIOCMD_PITCH_SHIFT ; $20
MACRO pitch_shift
ASSERT \1 >= -8 && \1 <= 7
IF _NARG == 1
	IF \1 >= 0
		db \1 | AUDIOCMD_PITCH_SHIFT
	ELSE ; negative
		db ($10 + \1) | AUDIOCMD_PITCH_SHIFT
	ENDC
ELSE
	IF \2 == 1
		IF \1 >= 0
			db \1 | AUDIOCMD_PITCH_SHIFT | AUDIOCMD_BREAK
		ELSE ; negative
			db ($10 + \1) | AUDIOCMD_PITCH_SHIFT | AUDIOCMD_BREAK
		ENDC
	ELSE
		IF \1 >= 0
			db \1 | AUDIOCMD_PITCH_SHIFT
		ELSE ; negative
			db ($10 + \1) | AUDIOCMD_PITCH_SHIFT
		ENDC
		db \2
	ENDC
ENDC
ENDM

	const_def $40

	const AUDIOCMD_NOTE_VOLUME ; $40
MACRO note_volume
ASSERT \1 <= 15
IF _NARG == 1
	db \1 | AUDIOCMD_NOTE_VOLUME
ELSE
	IF \2 == 1
		db \1 | AUDIOCMD_NOTE_VOLUME | AUDIOCMD_BREAK
	ELSE
		db \1 | AUDIOCMD_NOTE_VOLUME
		db \2
	ENDC
ENDC
ENDM

	const_def $60

	const AUDIOCMD_NOTE_VOLUME_SHIFT ; $60
MACRO note_volume_shift
ASSERT \1 >= -8 && \1 <= 7
IF _NARG == 1
	IF \1 >= 0
		db \1 | AUDIOCMD_NOTE_VOLUME_SHIFT
	ELSE ; negative
		db ($10 + \1) | AUDIOCMD_NOTE_VOLUME_SHIFT
	ENDC
ELSE
	IF \2 == 1
		IF \1 >= 0
			db \1 | AUDIOCMD_NOTE_VOLUME_SHIFT | AUDIOCMD_BREAK
		ELSE ; negative
			db ($10 + \1) | AUDIOCMD_NOTE_VOLUME_SHIFT | AUDIOCMD_BREAK
		ENDC
	ELSE
		IF \1 >= 0
			db \1 | AUDIOCMD_NOTE_VOLUME_SHIFT
		ELSE ; negative
			db ($10 + \1) | AUDIOCMD_NOTE_VOLUME_SHIFT
		ENDC
		db \2
	ENDC
ENDC
ENDM

	const_def $80

	const AUDIOCMD_WAVE ; $80
MACRO wave
ASSERT \1 <= $f
	db \1 | AUDIOCMD_WAVE
ENDM

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

	const AUDIOCMD_PITCH ; $e3
MACRO pitch
	db AUDIOCMD_PITCH
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

	const AUDIOCMD_VOLUME ; $f0
MACRO volume
	db AUDIOCMD_VOLUME
	db \1 ; volume value
ENDM

	const AUDIOCMD_VOLUME_SHIFT ; $f1
MACRO volume_shift
	db AUDIOCMD_VOLUME_SHIFT
	db \1 ; volume shift value
ENDM

	const AUDIOCMD_SET_TEMPO_MODE ; $f2
MACRO tempo_mode
	db AUDIOCMD_SET_TEMPO_MODE
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

	const AUDIOCMD_SET_BASE_NOTE ; $f5
MACRO base_note
	db AUDIOCMD_SET_BASE_NOTE
	db \1 ; ?
ENDM

	const AUDIOCMD_SET_INSTRUMENT ; $f6
MACRO instrument
	db AUDIOCMD_SET_INSTRUMENT
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
MACRO pan
	db AUDIOCMD_SET_PAN
	db \1 ; PAN_* constant
ENDM

	const AUDIOCMD_END ; $ff
MACRO audio_end
	db AUDIOCMD_END
ENDM
