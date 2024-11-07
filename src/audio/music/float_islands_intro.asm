FloatIslandsIntro_Channel1:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	instrument INSTRUMENT_07
	base_note G#2
	volume 15
	audio_f4 $ff
	audio_call .sub_1
	audio_call .sub_2
	audio_call .sub_1
	audio_call .sub_3
.main_loop
	audio_repeat 4
	audio_call .sub_4
	audio_repeat_end
	audio_call .sub_5
	audio_call .sub_5
	base_note B_2
	audio_call .sub_5
	base_note G#2
	audio_call .sub_6
	audio_jump .main_loop

.sub_1
	note -12, 0
	note -5, 0
	note 0, 0
	rest 0
	note -12, 0
	note 0, 0
	rest 0
	note -10, 1
	note -3, 0
	note 2, 0
	rest 0
	note -10, 0
	note 2, 0
	rest 0
	note -3, 0
	note -8, 0
	note -1, 0
	note 4, 0
	rest 0
	note -8, 0
	note 4, 0
	rest 0
	note -1, 0
	audio_ret

.sub_2
	note -10, 0
	note -3, 0
	note 2, 0
	rest 0
	note -10, 0
	note 2, 0
	rest 0
	note -3, 0
	audio_ret

.sub_3
	note 2, 0
	note 2, 0
	rest 1
	note 7, 0
	note 7, 0
	rest 1
	audio_ret

.sub_4
	note -12, 0
	rest 0
	note -12, 0
	rest 0
	note -5, 2
	note -10, 0
	rest 0
	note -10, 0
	rest 0
	note -10, 0
	note -3, 1
	note -10, 0
	note -9, 0
	note -8, 0
	rest 0
	note -8, 0
	rest 0
	note -1, 2
	note -10, 0
	rest 0
	note -10, 0
	rest 0
	note -10, 0
	note -3, 1
	note -10, 1
	audio_ret

.sub_5
	note -7, 0
	rest 0
	note -7, 2
	note 5, 1
	note -7, 0
	rest 0
	note -7, 0
	rest 0
	note 0, 0
	note 9, 1
	note 0, 1
	note -8, 0
	rest 0
	note -8, 2
	note 4, 1
	note -8, 0
	rest 0
	note -8, 0
	rest 0
	note -1, 0
	note 7, 1
	note -1, 1
	audio_ret

.sub_6
	note -4, 0
	rest 0
	note -4, 2
	note 3, 1
	note -4, 0
	rest 0
	note -4, 0
	rest 0
	note 3, 0
	note 8, 1
	note 3, 1
	note -5, 0
	rest 0
	note 7, 1
	note -5, 0
	note 7, 0
	rest 0
	note -5, 0
	rest 0
	note -5, 0
	rest 0
	note 5, 0
	note 7, 1
	note -5, 1
	audio_ret

FloatIslandsIntro_Channel2:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	instrument INSTRUMENT_15
	audio_f4 $fa
	volume 11
	base_note G#3
	audio_call .sub_1
	audio_call .sub_2
	audio_call .sub_1
	audio_call .sub_3
.main_loop
	audio_f4 $00
	instrument INSTRUMENT_0D
	volume 10
	base_note G#3
	audio_call .sub_4
	volume 13
	instrument INSTRUMENT_15
	note 4, 2
	volume_shift -6
	audio_call .sub_5
	note 0, 0
	note 2, 0
	rest 0
	note 4, 1
	instrument INSTRUMENT_11
	volume_shift -6
	note -3, 0
	note 4, 0
	audio_call .sub_5
	audio_call .sub_6
	audio_jump .main_loop

.sub_1
	rest 1
	note -1, 1
	rest 0
	volume_shift 1
	note -1, 1
	volume_shift -1
	rest 2
	note 0, 1
	rest 0
	volume_shift 1
	note 0, 1
	rest 2
	note 2, 1
	rest 0
	volume_shift -1
	note 2, 1
	rest 0
	audio_ret

.sub_2
	rest 1
	note 0, 1
	rest 0
	volume_shift -1
	note 0, 1
	volume_shift 1
	rest 0
	audio_ret

.sub_3
	note 0, 0
	volume_shift -2
	note 0, 0
	volume_shift 2
	rest 1
	note 0, 0
	note 0, 0
	rest 1
	audio_ret

.sub_4
	note_long 6, 2
	note_long 7, 194
	note 5, 1
	note 4, 0
	note 7, 2
	note_long -1, 2
	note_long 0, 180
	note -5, 1
	note 0, 0
	note_long 6, 2
	note_long 7, 201
	note 4, 1
	note 5, 0
	note 7, 2
	note_long 12, 97
	note_long 5, 1
	note_long 6, 2
	note_long 7, 110
	audio_ret

.sub_5
	instrument INSTRUMENT_11
	audio_repeat 4
	note -3, 0
	note 4, 0
	audio_repeat_end
	note -3, 0
	instrument INSTRUMENT_15
	volume_shift 6
	note 2, 0
	rest 0
	note 0, 0
	note 2, 1
	volume_shift -6
	instrument INSTRUMENT_11
	audio_repeat 5
	note -5, 0
	note 2, 0
	audio_repeat_end
	note -5, 0
	instrument INSTRUMENT_15
	volume_shift 6
	audio_ret

.sub_6
	note 4, 0
	rest 0
	note 5, 0
	note 7, 1
	volume_shift -6
	instrument INSTRUMENT_11
	audio_repeat 5
	note 0, 0
	note 7, 0
	audio_repeat_end
	note 0, 0
	volume_shift 6
	instrument INSTRUMENT_15
	note 5, 0
	rest 0
	note 3, 0
	note 5, 1
	volume_shift -6
	instrument INSTRUMENT_11
	audio_repeat 5
	note -2, 0
	note 5, 0
	audio_repeat_end
	instrument INSTRUMENT_0E
	volume_shift 6
	note -2, 0
	note 3, 0
	note 5, 0
	rest 0
	note_long 7, 91
	note 12, 2
	note_long 6, 2
	note_long 7, 89
	note -5, 0
	note 0, 2
	audio_ret

FloatIslandsIntro_Channel3:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	volume 11
	instrument INSTRUMENT_15
	audio_f4 $ff
	base_note G#3
	audio_call .sub_1
	audio_call .sub_2
	audio_call .sub_1
	audio_call .sub_3
.main_loop
	instrument INSTRUMENT_0B
	audio_f4 $be
	volume 10
	audio_repeat 4
	audio_call .sub_4
	audio_repeat_end
	volume 12
	pan PAN_CENTER
	instrument INSTRUMENT_15
	note 0, 2
	volume_shift -6
	audio_call .sub_5
	note -3, 0
	note -1, 0
	rest 0
	note 0, 1
	instrument INSTRUMENT_11
	volume_shift -6
	note -7, 0
	note 0, 0
	audio_call .sub_5
	note -1, 0
	rest 0
	note 2, 0
	audio_call .sub_6
	audio_jump .main_loop

.sub_1
	rest 1
	note -8, 1
	rest 0
	volume_shift 1
	note -8, 1
	volume_shift -1
	rest 2
	note -7, 1
	rest 0
	volume_shift 1
	note -7, 1
	rest 2
	note -5, 1
	volume_shift -1
	rest 0
	note -5, 1
	rest 0
	audio_ret

.sub_2
	rest 1
	note -7, 1
	rest 0
	volume_shift -1
	note -7, 1
	volume_shift 1
	rest 0
	audio_ret

.sub_3
	note -7, 0
	volume_shift -2
	note -7, 0
	volume_shift 2
	rest 1
	note -7, 0
	note -7, 0
	rest 1
	audio_ret

.sub_4
	pan PAN_LEFT
	note -8, 0
	note -5, 0
	note -1, 0
	note -5, 0
	note -8, 0
	note -5, 0
	note -1, 0
	note -5, 0
	pan PAN_RIGHT
	note -7, 0
	note -3, 0
	note 0, 0
	note -3, 0
	note -7, 0
	note -3, 0
	note 0, 0
	note -3, 0
	pan PAN_LEFT
	note -5, 0
	note -1, 0
	note 2, 0
	note -1, 0
	note -5, 0
	note -1, 0
	note 2, 0
	note -1, 0
	pan PAN_RIGHT
	note -7, 0
	note -3, 0
	note 0, 0
	pan PAN_LEFT
	note -7, 0
	note -3, 0
	note 0, 0
	pan PAN_RIGHT
	note -7, 0
	note -3, 0
	audio_ret

.sub_5
	audio_repeat 4
	instrument INSTRUMENT_11
	note -7, 0
	note 0, 0
	audio_repeat_end
	note -7, 0
	instrument INSTRUMENT_15
	volume_shift 6
	note -1, 0
	rest 0
	note -3, 0
	note -1, 1
	instrument INSTRUMENT_11
	volume_shift -6
	note -8, 0
	audio_repeat 5
	note -1, 0
	note -8, 0
	audio_repeat_end
	instrument INSTRUMENT_15
	volume_shift 6
	audio_ret

.sub_6
	note 3, 1
	volume_shift -6
	instrument INSTRUMENT_11
	audio_repeat 5
	note -4, 0
	note 3, 0
	audio_repeat_end
	note -4, 0
	volume_shift 6
	instrument INSTRUMENT_15
	note 2, 0
	rest 0
	note 0, 0
	note 2, 1
	volume_shift -6
	instrument INSTRUMENT_11
	audio_repeat 7
	note -5, 0
	note 2, 0
	audio_repeat_end
	volume_shift 1
	note -5, 0
	volume_shift 1
	audio_repeat 5
	note -4, 0
	note 0, 0
	note 3, 0
	audio_repeat_end
	note -4, 0
	note 5, 0
	note 2, 0
	note -1, 0
	note 2, 0
	note -1, 0
	note -5, 0
	note -1, 0
	note -5, 0
	audio_repeat 4
	note -7, 0
	note -5, 0
	audio_repeat_end
	audio_ret

FloatIslandsIntro_Channel4:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	volume 9
	audio_f4 $ff
	instrument INSTRUMENT_10
	audio_repeat 7
	audio_call .sub_3
	audio_repeat_end
	audio_call .sub_2
.main_loop
	audio_repeat 2
	audio_repeat 12
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_4
	audio_repeat_end
	audio_repeat 14
	audio_call .sub_3
	audio_repeat_end
	audio_call .sub_4
	audio_jump .main_loop

.sub_1
	note 6, 0
	volume_shift -3
	note 6, 0
	volume_shift 3
	note 5, 0
	note 6, 0
	audio_ret

.sub_2
	note 5, 0
	note 5, 2
	note 5, 0
	note 5, 2
	audio_ret

.sub_3
	note 6, 0
	volume_shift -2
	note 7, 0
	note 7, 0
	note 7, 0
	volume_shift 2
	note 4, 0
	volume_shift -2
	note 7, 0
	note 7, 0
	note 7, 0
	volume_shift 2
	audio_ret

.sub_4
	note 5, 0
	note 7, 0
	note 5, 0
	note 7, 0
	note 5, 0
	note 7, 0
	note 7, 0
	volume_shift 1
	note 5, 0
	note 7, 0
	note 4, 0
	note 4, 0
	note 7, 0
	note 4, 0
	note 5, 0
	note 6, 0
	note 7, 0
	volume_shift -1
	audio_ret
