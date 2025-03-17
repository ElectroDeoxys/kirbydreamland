Credits_Channel1:
	tempo_mode TEMPO_04
	volume 15
	instrument INSTRUMENT_07
	pan PAN_CENTER
	sustain_length 0.996
	base_note D#2
	audio_call .sub_1
.main_loop
	audio_call .sub_2
	audio_call .sub_3
	audio_call .sub_2
	audio_call .sub_4
	audio_call .sub_5
	audio_call .sub_6
	audio_call .sub_2
	audio_call .sub_3
	audio_call .sub_2
	audio_call .sub_4
	audio_call .sub_5
	audio_call .sub_7
	audio_call .sub_8
	audio_call .sub_9
	audio_call .sub_10
	audio_call .sub_9
	audio_call .sub_11
	audio_jump .main_loop

.sub_1
	note -10, 1
	note -3, 1
	note -10, 1
	note 2, 1
	note -8, 1
	note -1, 1
	note -8, 1
	note 4, 1
	note -7, 1
	note 0, 1
	note -7, 1
	note 5, 1
	note -5, 0
	rest 2
	note -5, 0
	rest 2
	audio_ret

.sub_2
	note 0, 1
	note 12, 1
	note 0, 1
	note 12, 1
	note -1, 1
	note 11, 1
	note -1, 1
	note 11, 1
	audio_ret

.sub_3
	note -3, 1
	note 9, 1
	note -3, 1
	note 9, 1
	note -7, 1
	note 5, 1
	note -5, 1
	note 7, 1
	audio_ret

.sub_4
	note -2, 1
	note 10, 1
	note -2, 1
	note 10, 1
	note -3, 1
	note 9, 1
	note -3, 1
	note 9, 1
	audio_ret

.sub_5
	note -10, 1
	note 2, 1
	note -10, 1
	note 2, 1
	note -5, 1
	note 7, 1
	note -5, 1
	note 7, 1
	note -12, 1
	note 0, 1
	note -12, 1
	note 0, 1
	note -7, 1
	note 5, 1
	note -7, 1
	note 5, 1
	audio_ret

.sub_6
	audio_repeat 4
	note -10, 1
	note 2, 1
	audio_repeat_end
	note -5, 1
	note 7, 1
	note -5, 1
	note 7, 1
	sustain_length 0.469
	note 7, 1
	note 2, 1
	note -1, 1
	note -3, 1
	sustain_length 0.996
	audio_ret

.sub_7
	audio_repeat 3
	note -4, 1
	note -4, 0
	note 8, 0
	audio_repeat_end
	note -4, 0
	note -4, 0
	note 8, 0
	note -4, 0
	audio_repeat 4
	note -5, 0
	note -5, 0
	note 7, 0
	note -5, 0
	audio_repeat_end
	audio_ret

.sub_8
	note -3, 1
	note 9, 0
	note 4, 0
	note -3, 0
	note -3, 0
	note 9, 0
	note 4, 0
	note -5, 1
	note 7, 0
	note 2, 0
	note -5, 0
	note -5, 0
	note 7, 0
	note 2, 0
	note -6, 1
	note 6, 0
	note -6, 0
	note -6, 0
	note -6, 0
	note 6, 0
	note -6, 0
	note -5, 1
	note 7, 0
	note 2, 0
	note -5, 0
	note 7, 0
	note 2, 0
	note 7, 0
	note -3, 0
	note -3, 0
	note 9, 0
	note 4, 0
	note -3, 0
	note -3, 0
	note 9, 0
	note 4, 0
	note -8, 0
	note -8, 0
	note 4, 0
	note -1, 0
	note -8, 0
	note -8, 0
	note 4, 0
	note -1, 0
	audio_repeat 4
	note -10, 0
	volume_shift -3
	note -10, 0
	volume_shift 3
	note 2, 0
	volume_shift -2
	note -3, 0
	volume_shift 2
	audio_repeat_end
	instrument INSTRUMENT_00
	note_long -3, 144
	instrument INSTRUMENT_07
	note 7, 0
	note 7, 0
	rest 1
	note 7, 0
	note 7, 0
	note 7, 1
	audio_ret

.sub_9
	note -10, 1
	note 2, 0
	note -3, 0
	note -10, 1
	note 2, 0
	note -3, 0
	note -8, 1
	note 4, 0
	note -1, 0
	note -8, 0
	note -8, 0
	note 4, 0
	note -1, 0
	note -7, 1
	note 5, 0
	note 0, 0
	note -7, 0
	note -7, 0
	note 5, 0
	note 0, 0
	audio_ret

.sub_10
	note -8, 0
	note -8, 0
	note 4, 0
	note -1, 0
	note -8, 0
	note -8, 0
	note 4, 0
	note -1, 0
	audio_ret

.sub_11
	sustain_length 0.625
	note_long 7, 16
	note_long 7, 16
	note_long 7, 16
	sustain_length 0.996
	audio_ret

Credits_Channel2:
	tempo_mode TEMPO_04
	pan PAN_CENTER
	audio_call .sub_1
	audio_call .sub_2
.main_loop
	volume 12
	instrument INSTRUMENT_13
	base_note D#3
	audio_call .sub_3
	audio_call .sub_4
	note -3, 2
	rest 0
	audio_call .sub_5
	audio_call .sub_3
	audio_call .sub_4
	note -3, 2
	note 0, 0
	audio_call .sub_6
	volume 13
	instrument INSTRUMENT_12
	audio_call .sub_7
	audio_call .sub_1
	audio_call .sub_8
	audio_call .sub_1
	audio_call .sub_9
	audio_jump .main_loop

.sub_1
	sustain_length 0.957
	base_note D#2
	volume 13
	instrument INSTRUMENT_19
	note 2, 3
	note 0, 2
	note 2, 0
	note 4, 3
	note 2, 2
	note 4, 0
	note 5, 3
	note 4, 2
	note 5, 0
	audio_ret

.sub_2
	sustain_length 0.0
	note_long 7, 12
	volume_shift -3
	audio_repeat 6
	pitch 3
	sustain 1
	pitch 4
	sustain 1
	audio_repeat_end
	volume_shift 3
	note -5, 0
	rest 2
	audio_ret

.sub_3
	sustain_length 0.957
	note -5, 3
	note 0, 2
	note 2, 0
	sustain_length 0.469
	note 4, 1
	note 2, 1
	note 4, 1
	note 5, 1
	sustain_length 0.957
	note 7, 3
	note 4, 2
	note 7, 0
	sustain_length 0.996
	note 0, 3
	note 2, 3
	sustain_length 0.957
	note -5, 3
	note 0, 2
	note 2, 0
	sustain_length 0.469
	note 4, 1
	note 2, 1
	note 4, 1
	note 5, 1
	sustain_length 0.977
	note 7, 3
	note 9, 2
	note 7, 0
	sustain_length 0.859
	note 5, 1
	note 4, 1
	note 2, 1
	note 4, 1
	audio_ret

.sub_4
	sustain_length 0.977
	note 5, 3
	note 4, 2
	note 5, 0
	sustain_length 0.547
	note 7, 1
	note 5, 1
	note 4, 1
	note 7, 1
	sustain_length 0.961
	note 4, 3
	note 0, 2
	note 2, 0
	note 4, 3
	audio_ret

.sub_5
	note 2, 3
	note 4, 2
	note 2, 0
	sustain_length 0.5
	note 2, 1
	note 0, 1
	note -1, 1
	note 0, 1
	sustain_length 0.0
	note_long 2, 24
	volume_shift -5
	audio_repeat 12
	pitch -2
	sustain 2
	audio_repeat_end
	volume_shift 5
	sustain_length 0.5
	note 7, 1
	note 2, 1
	note -1, 1
	note -3, 1
	audio_ret

.sub_6
	sustain_length 0.988
	note 7, 3
	note 7, 2
	note 7, 0
	sustain_length 0.508
	note 7, 1
	note 5, 1
	note 3, 1
	note 5, 1
	sustain_length 0.0
	note_long 7, 96
	audio_ret

.sub_7
	note 9, 3
	note 1, 2
	note 2, 0
	note 4, 5
	note 1, 0
	note 2, 0
	note 4, 3
	note 1, 2
	note 2, 0
	note 1, 3
	note -1, 1
	note -3, 0
	note -1, 0
	note 1, 3
	note 4, 2
	note 1, 0
	note 1, 3
	note -1, 3
	note_long -3, 96
	note_long -3, 144
	instrument INSTRUMENT_17
	volume 13
	note 2, 0
	note 2, 0
	rest 1
	note 2, 0
	note 2, 0
	note 2, 1
	audio_ret

.sub_8
	note 4, 3
	note 2, 2
	note 4, 0
	audio_ret

.sub_9
	sustain_length 0.625
	note_long 7, 16
	note_long 7, 16
	note_long 7, 16
	audio_ret

Credits_Channel3:
	tempo_mode TEMPO_04
	pan PAN_CENTER
	base_note D#2
	volume 11
	audio_call .sub_1
	audio_call .sub_2
.main_loop
	instrument INSTRUMENT_0A
	base_note D#2
	volume 9
	sustain_length 0.996
	audio_repeat 3
	audio_call .sub_3
	audio_repeat_end
	audio_call .sub_4
	audio_call .sub_3
	audio_call .sub_3
	audio_call .sub_5
	base_note D#3
	instrument INSTRUMENT_06
	audio_call .sub_6
	audio_call .sub_7
	instrument INSTRUMENT_0A
	base_note D#2
	audio_repeat 3
	audio_call .sub_3
	audio_repeat_end
	audio_call .sub_4
	audio_call .sub_3
	audio_call .sub_3
	audio_call .sub_5
	base_note D#3
	instrument INSTRUMENT_06
	audio_call .sub_6
	instrument INSTRUMENT_13
	audio_call .sub_8
	instrument INSTRUMENT_12
	volume 11
	audio_call .sub_9
	volume 11
	audio_call .sub_1
	audio_call .sub_10
	audio_call .sub_1
	audio_call .sub_11
	audio_jump .main_loop

.sub_1
	sustain_length 0.957
	instrument INSTRUMENT_19
	note -7, 3
	note -7, 2
	note -7, 0
	note -5, 3
	note -5, 2
	note -5, 0
	note -3, 3
	note -3, 2
	note -3, 0
	audio_ret

.sub_2
	sustain_length 0.0
	note_long -1, 12
	volume_shift -3
	audio_repeat 6
	pitch 3
	sustain 1
	pitch 4
	sustain 1
	audio_repeat_end
	volume_shift 3
	note -13, 0
	rest 2
	audio_ret

.sub_3
	note -5, 0
	note 0, 0
	note 4, 0
	note 0, 0
	note -5, 0
	note 0, 0
	note 4, 0
	note 0, 0
	audio_ret

.sub_4
	note -7, 0
	note -3, 0
	note 0, 0
	note -3, 0
	note -5, 0
	note -1, 0
	note 2, 0
	note -1, 0
	audio_ret

.sub_5
	note -5, 0
	note 2, 0
	note 5, 0
	note 2, 0
	note -5, 0
	note 2, 0
	note 5, 0
	note 2, 0
	note -5, 0
	note 1, 0
	note 4, 0
	note 1, 0
	note -5, 0
	note 1, 0
	note 4, 0
	note 1, 0
	audio_ret

.sub_6
	note -10, 0
	note -7, 0
	note 0, 0
	note -7, 0
	note -10, 0
	note -7, 0
	note 0, 0
	note -7, 0
	note -10, 0
	note -5, 0
	note -1, 0
	note -5, 0
	note -10, 0
	note -5, 0
	note -1, 0
	note -5, 0
	note -12, 0
	note -8, 0
	note -1, 0
	note -5, 0
	note -12, 0
	note -8, 0
	note -5, 0
	note -1, 0
	note -12, 0
	note -7, 0
	note -3, 0
	note -7, 0
	note -12, 0
	note -7, 0
	note -15, 0
	note -12, 0
	audio_ret

.sub_7
	audio_repeat 4
	note -10, 0
	note -7, 0
	note -3, 0
	note -7, 0
	audio_repeat_end
	note -10, 0
	note -7, 0
	note -1, 0
	note -7, 0
	note -10, 0
	note -7, 0
	note -1, 0
	note -7, 0
	sustain_length 0.469
	note -5, 1
	note -10, 1
	note -13, 1
	note -15, 1
	sustain_length 0.996
	audio_ret

.sub_8
	sustain_length 0.988
	note 3, 3
	note 3, 2
	note 3, 0
	sustain_length 0.508
	note 3, 1
	note 2, 1
	note 0, 1
	note 2, 1
	sustain_length 0.977
	note 0, 3
	note 2, 2
	note 0, 0
	note -1, 3
	note -5, 3
	audio_ret

.sub_9
	note 1, 3
	note -3, 2
	note -1, 0
	note 1, 5
	note -3, 0
	note -1, 0
	note 1, 3
	note -3, 2
	note -1, 0
	note -7, 3
	note -7, 3
	note -3, 3
	note 1, 2
	note -3, 0
	note -8, 3
	note -8, 3
	note_long -6, 48
	note_long -7, 48
	note_long -10, 48
	note_long -13, 48
	note_long -11, 48
	instrument INSTRUMENT_17
	volume 13
	note -7, 0
	note -7, 0
	rest 1
	note -7, 0
	note -7, 0
	note -7, 1
	audio_ret

.sub_10
	note -5, 3
	note -5, 2
	note -5, 0
	audio_ret

.sub_11
	sustain_length 0.625
	note_long -1, 16
	note_long -1, 16
	note_long -1, 16
	audio_ret

Credits_Channel4:
	tempo_mode TEMPO_04
	volume 8
	sustain_length 0.996
	pan PAN_CENTER
	audio_repeat 6
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_2
.main_loop
	audio_repeat 30
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_3
	audio_repeat 30
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_5
	audio_repeat 16
	audio_call .sub_4
	audio_repeat_end
	audio_call .sub_6
	audio_repeat 14
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_7
	audio_jump .main_loop

.sub_1
	instrument INSTRUMENT_1A
	note 3, 0
	volume_shift -2
	note 3, 0
	instrument INSTRUMENT_10
	volume_shift 4
	note 6, 0
	volume_shift -2
	instrument INSTRUMENT_1A
	note 3, 0
	audio_ret

.sub_2
	volume_shift 2
	note 6, 0
	note 6, 2
	note 6, 3
	volume_shift -2
	audio_ret

.sub_3
	volume_shift 2
	note 6, 1
	note 6, 1
	note 6, 0
	volume_shift -5
	note 6, 0
	volume_shift 5
	note 6, 1
	volume_shift -2
	audio_ret

.sub_4
	instrument INSTRUMENT_1A
	note 2, 0
	volume_shift -2
	note 2, 0
	volume_shift 2
	note 6, 0
	volume_shift -2
	note 2, 0
	volume_shift 2
	audio_ret

.sub_5
	instrument INSTRUMENT_1A
	note 3, 0
	volume_shift -1
	note 3, 0
	audio_repeat 3
	volume_shift 1
	note 6, 0
	note 6, 0
	audio_repeat_end
	volume_shift -2
	audio_ret

.sub_6
	instrument INSTRUMENT_04
	note_long 4, 144
	volume_shift 3
	instrument INSTRUMENT_10
	note 5, 0
	note 5, 2
	note 5, 0
	note 5, 0
	note 5, 0
	volume_shift -3
	note 6, 0
	audio_ret

.sub_7
	instrument INSTRUMENT_10
	volume_shift 2
	note_long 5, 16
	note_long 5, 16
	note_long 5, 16
	volume_shift -2
	audio_ret
