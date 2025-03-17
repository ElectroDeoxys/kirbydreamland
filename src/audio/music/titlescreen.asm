Titlescreen_Channel1:
.main_loop
	tempo_mode TEMPO_04
	pan PAN_CENTER
	volume 12
	sustain_length 0.996
	base_note D#3
	audio_call .sub_1
	note 7, 0
	note 7, 0
	note 7, 0
	volume 12
	rest 0
	audio_call .sub_1
	rest 1
	sustain_length 0.0
	note_long 7, 12
	audio_repeat 6
	pitch 2
	sustain 2
	audio_repeat_end
	instrument INSTRUMENT_0D
	base_note D#4
	volume 11
	sustain_length 0.781
	audio_call .sub_2
	audio_jump .main_loop

.sub_1
	instrument INSTRUMENT_13
	note_long -8, 4
	note_long -5, 4
	note_long 0, 4
	sustain_length 0.422
	note 4, 1
	note 2, 1
	note 0, 1
	note -1, 1
	note 0, 1
	sustain_length 0.996
	note -3, 0
	note 0, 0
	note -5, 0
	rest 0
	note -5, 0
	note -4, 0
	note -3, 0
	rest 0
	note 5, 3
	note 4, 1
	note 2, 0
	volume 13
	instrument INSTRUMENT_07
	rest 0
	audio_ret

.sub_2
	note 0, 2
	note 0, 0
	note 2, 0
	rest 0
	note 4, 3
	note 0, 0
	rest 0
	note 2, 0
	rest 0
	note_long 0, 108
	note 0, 2
	note 0, 0
	note 2, 0
	rest 0
	note 7, 3
	note 0, 0
	rest 0
	note 2, 0
	rest 0
	note_long 0, 60
	volume 13
	sustain_length 0.781
	instrument INSTRUMENT_07
	note 2, 0
	note 2, 0
	rest 0
	note 4, 0
	note 2, 1
	audio_ret

Titlescreen_Channel2:
.main_loop
	tempo_mode TEMPO_04
	pan PAN_CENTER
	instrument INSTRUMENT_07
	volume 15
	sustain_length 0.996
	rest 1
	audio_call .sub_1
	note 9, 0
	note 9, 0
	note 11, 1
	note -5, 1
	audio_call .sub_1
	rest 1
	instrument INSTRUMENT_00
	sustain_length 0.0
	note_long 11, 12
	audio_repeat 6
	pitch 2
	sustain 2
	volume_shift -2
	audio_repeat_end
	instrument INSTRUMENT_07
	sustain_length 0.977
	volume 15
	base_note D#2
	audio_call .sub_2
	audio_call .sub_3
	audio_call .sub_2
	base_note D#3
	audio_call .sub_4
	audio_jump .main_loop

.sub_1
	audio_repeat 3
	base_note D#2
	note -12, 0
	rest 0
	note 0, 1
	audio_repeat_end
	note -12, 0
	rest 0
	note 0, 0
	note 0, 0
	audio_repeat 2
	note -7, 0
	rest 0
	note 5, 0
	note 5, 0
	audio_repeat_end
	note -5, 0
	rest 0
	base_note D#3
	audio_ret

.sub_2
	note -3, 0
	rest 0
	volume_shift -5
	note 9, 0
	volume_shift 5
	note 9, 0
	note -3, 0
	rest 0
	volume_shift -5
	note 9, 0
	volume_shift 5
	note 9, 0
	note -5, 0
	rest 0
	volume_shift -5
	note 7, 0
	volume_shift 5
	note 7, 0
	note -5, 0
	volume_shift -6
	note -5, 0
	volume_shift 6
	note 7, 0
	note 7, 0
	audio_repeat 2
	note -7, 0
	rest 0
	note 5, 0
	note 0, 0
	audio_repeat_end
	audio_ret

.sub_3
	note -7, 0
	note -7, 0
	note 5, 0
	note -7, 0
	note -5, 0
	note -5, 0
	note 7, 0
	note -5, 0
	audio_ret

.sub_4
	note 2, 0
	note 7, 0
	rest 0
	note -5, 0
	note 7, 1
	audio_ret

Titlescreen_Channel3:
.main_loop
	tempo_mode TEMPO_04
	pan PAN_CENTER
	rest 1
	sustain_length 0.586
	base_note D#4
	audio_call .sub_1
	note -10, 0
	note -10, 0
	note -10, 1
	rest 1
	audio_call .sub_1
	rest 1
	sustain_length 0.0
	note_long -10, 12
	audio_repeat 6
	pitch 2
	sustain 2
	audio_repeat_end
	instrument INSTRUMENT_09
	sustain_length 0.625
	volume 8
	audio_repeat 7
	audio_call .sub_2
	audio_repeat_end
	audio_call .sub_3
	audio_repeat 6
	audio_call .sub_2
	audio_repeat_end
	volume 12
	instrument INSTRUMENT_07
	sustain_length 0.703
	base_note D#4
	pan PAN_CENTER
	audio_call .sub_4
	audio_jump .main_loop

.sub_1
	audio_repeat 4
	instrument INSTRUMENT_0F
	volume 10
	rest 1
	pan PAN_LEFT
	note -5, 0
	pan PAN_RIGHT
	note -5, 0
	audio_repeat_end
	audio_repeat 2
	rest 1
	pan PAN_LEFT
	note -3, 0
	pan PAN_RIGHT
	note -3, 0
	audio_repeat_end
	rest 1
	pan PAN_CENTER
	instrument INSTRUMENT_07
	volume 13
	audio_ret

.sub_2
	pan PAN_LEFT
	note -5, 0
	note -3, 0
	pan PAN_RIGHT
	note -5, 0
	note -3, 0
	audio_ret

.sub_3
	pan PAN_LEFT
	note -1, 0
	note 0, 0
	pan PAN_RIGHT
	note -1, 0
	note -5, 0
	audio_ret

.sub_4
	note -7, 0
	note -7, 0
	rest 0
	note -7, 0
	note -7, 1
	audio_ret

Titlescreen_Channel4:
	tempo_mode TEMPO_04
	pan PAN_CENTER
	sustain_length 0.996
	instrument INSTRUMENT_10
	volume 9
	note 15, 1
.main_loop
	audio_repeat 2
	audio_repeat 3
	note 2, 1
	note 4, 0
	note 4, 0
	audio_repeat_end
	note 1, 0
	note 1, 0
	note 4, 0
	note 4, 0
	note 0, 1
	note 4, 0
	note 4, 0
	note 1, 0
	note 1, 0
	note 4, 0
	note 4, 0
	volume_shift 2
	note_long 3, 48
	volume_shift -2
	audio_repeat_end
	audio_repeat 14
	note 3, 0
	volume_shift -3
	note 4, 0
	volume_shift 3
	note 4, 0
	note 2, 0
	audio_repeat_end
	note_long 3, 48
	audio_jump .main_loop
