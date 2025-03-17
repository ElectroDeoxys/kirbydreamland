CastleLololoIntro_Channel1:
	tempo_mode TEMPO_04
	volume 15
	instrument INSTRUMENT_07
	pan PAN_CENTER
	sustain_length 0.996
	base_note G#2
	audio_call .sub_1
	base_note G_2
	audio_call .sub_1
	base_note G#2
	audio_call .sub_1
	audio_call .sub_2
.main_loop
	audio_repeat 2
	base_note G#2
	audio_call .sub_3
	base_note A_2
	audio_call .sub_3
	audio_repeat_end
	base_note F_2
	audio_call .sub_3
	base_note E_2
	audio_call .sub_3
	base_note G#1
	audio_call .sub_4
	audio_jump .main_loop

.sub_1
	audio_repeat 4
	note -12, 0
	rest 0
	note 0, 1
	audio_repeat_end
	audio_ret

.sub_2
	note -13, 0
	rest 0
	note -1, 1
	note -13, 0
	rest 0
	note -1, 1
	note -1, 0
	rest 0
	note -1, 0
	rest 0
	note -1, 0
	note -1, 0
	note -1, 0
	rest 0
	audio_ret

.sub_3
	audio_repeat 8
	note -12, 1
	note 0, 0
	note -12, 0
	audio_repeat_end
	audio_ret

.sub_4
	audio_repeat 2
	note -5, 1
	note 7, 0
	note -5, 0
	audio_repeat_end
	audio_repeat 2
	note -7, 1
	note 5, 0
	note -7, 0
	audio_repeat_end
	audio_repeat 2
	note -9, 1
	note 3, 0
	note -9, 0
	audio_repeat_end
	audio_repeat 2
	note -4, 1
	note 8, 0
	note -4, 0
	audio_repeat_end
	audio_repeat 6
	note -2, 1
	note 10, 0
	note -2, 0
	audio_repeat_end
	note -1, 0
	note -1, 0
	rest 1
	note -1, 0
	note -1, 0
	note -1, 1
	audio_ret

CastleLololoIntro_Channel2:
	tempo_mode TEMPO_04
	instrument INSTRUMENT_04
	sustain_length 0.867
	volume 9
	base_note G#2
	audio_call .sub_1
	base_note G_2
	audio_call .sub_1
	base_note G#2
	audio_call .sub_1
	audio_call .sub_2
.post_intro
	instrument INSTRUMENT_19
	volume 12
	base_note G#3
	pan PAN_CENTER
	audio_call .sub_3
	audio_call .sub_4
	audio_call .sub_3
	audio_call .sub_5
.main_loop
	instrument INSTRUMENT_13
	volume 13
	sustain_length 0.938
	audio_call .sub_6
	base_note G_3
	audio_call .sub_6
	base_note G#2
	audio_call .sub_7
	base_note G#3
	pan PAN_CENTER
	instrument INSTRUMENT_13
	volume 13
	audio_call .sub_3
	audio_call .sub_4
	audio_call .sub_3
	audio_call .sub_5
	audio_jump .main_loop

.sub_1
	audio_repeat 8
	pan PAN_LEFT
	note 4, 0
	pan PAN_RIGHT
	note 7, 0
	audio_repeat_end
	audio_ret

.sub_2
	audio_repeat 4
	pan PAN_LEFT
	note 3, 0
	pan PAN_RIGHT
	note 6, 0
	audio_repeat_end
	instrument INSTRUMENT_15
	volume 12
	pan PAN_LEFT
	note 6, 0
	rest 0
	note 6, 0
	rest 0
	note 6, 0
	note 6, 0
	note 6, 1
	audio_ret

.sub_3
	rest 1
	note -5, 0
	note -3, 0
	note -1, 0
	rest 0
	note 2, 0
	rest 0
	note -1, 5
	note -5, 0
	note -3, 0
	note -1, 0
	note 2, 0
	note -1, 0
	note 2, 0
	note_long -3, 60
	audio_ret

.sub_4
	note_long -5, 4
	note_long -3, 4
	note_long -1, 4
	note 0, 0
	rest 0
	note -2, 0
	rest 0
	note_long -4, 60
	note 0, 0
	note -2, 0
	note 0, 0
	rest 0
	note -2, 0
	rest 0
	note -4, 5
	note -2, 0
	rest 0
	note -4, 3
	audio_ret

.sub_5
	note_long -5, 4
	note_long -3, 4
	note_long -1, 4
	note 0, 0
	rest 0
	note -2, 0
	rest 0
	note_long -4, 60
	note 0, 0
	note -2, 0
	note 0, 0
	rest 0
	note -2, 0
	rest 0
	note -4, 0
	note -2, 0
	note -4, 2
	rest 0
	note -2, 0
	rest 0
	note 0, 0
	note 1, 0
	note 3, 1
	audio_ret

.sub_6
	note 4, 0
	rest 0
	note 8, 0
	rest 0
	note_long 1, 60
	note 4, 0
	note 3, 0
	note 4, 0
	rest 0
	note 8, 0
	rest 0
	note 1, 5
	note 3, 0
	rest 0
	note 1, 3
	audio_ret

.sub_7
	rest 1
	note 7, 0
	note 9, 0
	note 10, 1
	note 14, 0
	rest 0
	note 15, 0
	rest 0
	note 14, 0
	rest 0
	note 12, 3
	rest 1
	note 10, 0
	note 12, 0
	note 14, 0
	rest 0
	note 10, 0
	rest 0
	note 7, 1
	note 5, 0
	rest 0
	note 7, 0
	rest 0
	note 5, 0
	note 7, 0
	note 9, 0
	rest 0
	note 7, 0
	note 9, 0
	note_long 2, 120
	instrument INSTRUMENT_17
	sustain_length 0.867
	volume 13
	pan PAN_LEFT
	note 6, 0
	note 6, 0
	rest 1
	note 6, 0
	note 6, 0
	note 6, 1
	audio_ret

	volume 222 ; stray command

CastleLololoIntro_Channel3:
	tempo_mode TEMPO_04
	instrument INSTRUMENT_02
	volume 6
	sustain_length 0.586
	base_note G#5
	pan PAN_CENTER
	audio_call .sub_1
	base_note G_5
	audio_call .sub_1
	base_note G#5
	audio_call .sub_1
	audio_call .sub_2
.post_intro
	base_note G#3
	sustain_length 0.977
	volume 12
	instrument INSTRUMENT_16
	pan PAN_CENTER
	audio_call CastleLololoIntro_Channel2.sub_3
	audio_call CastleLololoIntro_Channel2.sub_4
	audio_call CastleLololoIntro_Channel2.sub_3
	audio_call CastleLololoIntro_Channel2.sub_5
.main_loop
	base_note G#3
	instrument INSTRUMENT_13
	volume 12
	sustain_length 0.938
	audio_call .sub_3
	base_note G_3
	audio_call .sub_3
	base_note G#2
	sustain_length 0.0
	instrument INSTRUMENT_06
	volume 7
	audio_call .sub_4
	instrument INSTRUMENT_18
	pan PAN_CENTER
	volume 11
	audio_repeat 2
	base_note G#2
	audio_call .sub_5
	base_note A_2
	audio_call .sub_5
	audio_repeat_end
	audio_jump .main_loop

.sub_1
	audio_repeat 4
	rest 1
	note 4, 0
	note 4, 0
	audio_repeat_end
	audio_ret

.sub_2
	rest 1
	note 3, 0
	note 3, 0
	rest 1
	note 3, 0
	note 3, 0
	base_note G#2
	pan PAN_RIGHT
	instrument INSTRUMENT_15
	sustain_length 0.867
	volume 12
	note 3, 0
	rest 0
	note 3, 0
	rest 0
	note 3, 0
	note 3, 0
	note 3, 1
	audio_ret

.sub_3
	note 1, 0
	rest 0
	note 4, 0
	rest 0
	note_long -3, 60
	note 1, 0
	note -1, 0
	note 1, 0
	rest 0
	note 4, 0
	rest 0
	note -3, 5
	note -1, 0
	rest 0
	note -3, 3
	audio_ret

.sub_4
	audio_repeat 2
	pan PAN_LEFT
	note 5, 0
	note 2, 0
	pan PAN_RIGHT
	note -2, 0
	note 2, 0
	audio_repeat_end
	audio_repeat 2
	pan PAN_LEFT
	note 5, 0
	note 0, 0
	pan PAN_RIGHT
	note -4, 0
	note 0, 0
	audio_repeat_end
	audio_repeat 2
	pan PAN_LEFT
	note 7, 0
	note 3, 0
	pan PAN_RIGHT
	note -2, 0
	note 3, 0
	audio_repeat_end
	audio_repeat 2
	pan PAN_LEFT
	note 3, 0
	note 0, 0
	pan PAN_RIGHT
	note -4, 0
	note 0, 0
	audio_repeat_end
	audio_repeat 6
	pan PAN_LEFT
	note 5, 0
	note 2, 0
	pan PAN_RIGHT
	note -2, 0
	note 2, 0
	audio_repeat_end
	instrument INSTRUMENT_17
	volume 13
	pan PAN_RIGHT
	sustain_length 0.867
	note 3, 0
	note 3, 0
	rest 1
	note 3, 0
	note 3, 0
	note 3, 1
	audio_ret

.sub_5
	audio_repeat 8
	note -5, 1
	note 4, 0
	note 4, 0
	audio_repeat_end
	audio_ret

CastleLololoIntro_Channel4:
	tempo_mode TEMPO_04
	sustain_length 0.996
	volume 8
	pan PAN_CENTER
	audio_repeat 14
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_4
.main_loop
	audio_repeat 2
	audio_repeat 14
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_2
	audio_repeat_end
	audio_repeat 8
	audio_call .sub_3
	audio_repeat_end
	audio_repeat 14
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_5
	audio_jump .main_loop

.sub_1
	instrument INSTRUMENT_1A
	note 4, 0
	volume_shift -3
	note 4, 0
	volume_shift 6
	instrument INSTRUMENT_10
	note 6, 0
	instrument INSTRUMENT_1A
	volume_shift -2
	note 5, 0
	volume_shift -1
	audio_ret

.sub_2
	instrument INSTRUMENT_1A
	note 4, 0
	volume_shift -3
	note 4, 0
	volume_shift 6
	audio_repeat 3
	note 6, 0
	note 6, 0
	volume_shift 1
	audio_repeat_end
	volume_shift -6
	audio_ret

.sub_3
	instrument INSTRUMENT_1A
	note 4, 0
	volume_shift -3
	note 4, 0
	volume_shift 6
	instrument INSTRUMENT_10
	note 6, 0
	volume_shift -6
	instrument INSTRUMENT_00
	note 2, 0
	volume_shift 3
	audio_repeat 2
	instrument INSTRUMENT_1A
	note 4, 0
	instrument INSTRUMENT_10
	volume_shift 3
	note 6, 0
	volume_shift -3
	audio_repeat_end
	audio_ret

.sub_4
	instrument INSTRUMENT_10
	volume_shift 5
	note 7, 1
	note 7, 1
	note 7, 0
	volume_shift -3
	note 7, 0
	volume_shift 3
	instrument INSTRUMENT_07
	note 9, 1
	volume_shift -5
	audio_ret

.sub_5
	volume_shift 3
	instrument INSTRUMENT_10
	note 6, 0
	note 6, 2
	note 6, 0
	volume_shift -2
	note 6, 0
	volume_shift 2
	instrument INSTRUMENT_07
	note 8, 1
	volume_shift -3
	audio_ret
