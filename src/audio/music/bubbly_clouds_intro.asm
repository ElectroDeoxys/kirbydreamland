BubblyCloudsIntro_Channel1:
	tempo_mode TEMPO_02
	pan PAN_CENTER
	base_note D#4
	instrument INSTRUMENT_05
	volume 11
	audio_f4 $80
	audio_call .sub_2
	audio_call .sub_3
	audio_call .sub_2
	audio_call .sub_4
.main_loop
	instrument INSTRUMENT_0D
	volume 10
	audio_f4 $00
	audio_call .sub_5
	audio_call .sub_6
	audio_call .sub_5
	audio_call .sub_7
	instrument INSTRUMENT_0F
	audio_call .sub_8
	volume 9
	pan PAN_CENTER
	audio_call .sub_9
	pan PAN_CENTER
	audio_call .sub_1
	instrument INSTRUMENT_0E
	volume 9
	audio_call .sub_10
	audio_call .sub_1
	audio_jump .main_loop

.sub_1
	audio_f4 $80
	instrument INSTRUMENT_05
	volume 8
	audio_repeat 6
	note G_0
	volume_shift 1
	audio_repeat_end
	audio_ret

.sub_2
	rest 1
	audio_f4 $80
	note -1
	note -1
	note -1
	rest 2
	note -1, 1
	note -1, 1
	audio_ret

.sub_3
	rest 1
	note 0
	note 0
	note -3, 1
	rest 1
	note -3, 1
	note -1, 1
	audio_ret

.sub_4
	rest 1
	note 0
	note 0
	note -3, 1
	instrument INSTRUMENT_0C
	audio_f4 $c8
	audio_repeat 3
	note 7
	volume_shift -1
	note 7
	volume_shift 2
	audio_repeat_end
	audio_ret

.sub_5
	note 4, 2
	note 5
	note 4
	note 5
	note 7
	rest 0
	note 12, 2
	rest 0
	note 11, 3
	note 9, 1
	note 9, 5
	audio_ret

.sub_6
	rest 1
	note 2
	note 4
	note 2
	note 4
	note 5
	rest 0
	note 11, 2
	note 9
	note_long 7, 54
	note_long 2, 54
	audio_ret

.sub_7
	note 12, 1
	note 10, 1
	note 8, 1
	note 12, 1
	note 10, 2
	note 12
	note_long 7, 108
	audio_ret

.sub_8
	note 2, 3
	note 2
	note 4
	note 5, 1
	note 2, 1
	note 5, 1
	note 4, 3
	note 4
	note 5
	note 7, 1
	note 5, 1
	note 4, 1
	note 2, 1
	note 2, 1
	note 2
	note 4
	note 5, 1
	note 2, 1
	note 5, 1
	note 7, 1
	note 4, 1
	note 7, 1
	note 12, 5
	audio_ret

.sub_9
	note 14, 3
	note 12
	note 10
	note 9, 1
	note 10, 1
	note 12, 1
	note 7, 3
	note 4
	note 5
	note 7, 1
	note 4, 1
	note 5, 1
	note 4, 3
	note 2
	note 4
	note 2, 3
	note 0
	note 2
	note 2, 5
	audio_ret

.sub_10
	audio_repeat 6
	audio_f4 $00
	note -1
	note -5
	audio_repeat_end
	audio_repeat 6
	note 0
	note -3
	audio_repeat_end
	audio_repeat 6
	note -1
	note -5
	audio_repeat_end
	audio_repeat 3
	note 0
	note -3
	audio_repeat_end
	audio_ret

BubblyCloudsIntro_Channel2:
	tempo_mode TEMPO_02
	pan PAN_CENTER
	instrument INSTRUMENT_05
	audio_f4 $80
	volume 11
	base_note D#4
	audio_call .sub_1
	audio_call .sub_2
	audio_call .sub_1
	audio_call .sub_3
.main_loop
	pan PAN_CENTER
	instrument INSTRUMENT_0D
	volume 10
	audio_f4 $00
	audio_call .sub_4
	audio_call .sub_5
	audio_call .sub_4
	audio_call .sub_6
	instrument INSTRUMENT_05
	audio_f4 $8c
	volume 8
	base_note D#3
	audio_call .sub_7
	audio_call .sub_7
	instrument INSTRUMENT_0E
	audio_f4 $ff
	volume 10
	pan PAN_CENTER
	audio_call BubblyCloudsIntro_Channel1.sub_9
	audio_call .sub_3
	base_note D#3
	pan PAN_CENTER
	instrument INSTRUMENT_0E
	audio_f4 $00
	volume 9
	audio_call .sub_8
	audio_call .sub_3
	audio_jump .main_loop

.sub_1
	rest 1
	note -5
	note -5
	note -5
	rest 2
	note -5, 1
	note -5, 1
	rest 1
	note -7
	note -7
	note -7
	rest 0
	audio_ret

.sub_2
	rest 1
	note -8, 1
	note -10, 1
	audio_ret

.sub_3
	instrument INSTRUMENT_0C
	base_note D#4
	audio_f4 $c8
	pan PAN_LEFT
	note 7
	volume_shift -1
	pan PAN_RIGHT
	note 6
	volume_shift 2
	pan PAN_LEFT
	note 5
	volume_shift -1
	pan PAN_RIGHT
	note 4
	volume_shift 2
	pan PAN_LEFT
	note 3
	volume_shift -1
	pan PAN_RIGHT
	note 2
	audio_ret

.sub_4
	note 0, 2
	note 2
	note 0
	note 2
	note 4
	rest 0
	note 4, 2
	rest 0
	note 2, 3
	note 0
	rest 0
	note 0, 5
	audio_ret

.sub_5
	rest 1
	note -1
	note 0
	note -1
	note 0
	note 2
	rest 0
	note 7, 2
	note 5
	note_long 4, 54
	note -1, 1
	note -3, 1
	note -5, 1
	audio_ret

.sub_6
	note 8, 1
	note 7, 1
	note 5, 1
	note 8, 1
	note 7, 2
	note 8
	note_long 4, 108
	audio_ret

.sub_7
	audio_repeat 6
	note -7
	note -10
	audio_repeat_end
	audio_repeat 6
	note -5
	note -8
	audio_repeat_end
	audio_ret

.sub_8
	audio_repeat 6
	note -5
	note -8
	audio_repeat_end
	audio_repeat 6
	note -3
	note -7
	audio_repeat_end
	audio_repeat 6
	note -5
	note -8
	audio_repeat_end
	audio_repeat 3
	note -3
	note -7
	audio_repeat_end
	audio_ret

BubblyCloudsIntro_Channel3:
.main_loop
	tempo_mode TEMPO_02
	pan PAN_CENTER
	volume 15
	instrument INSTRUMENT_07
	base_note D#3
	audio_call .sub_1
	audio_call .sub_2
	audio_call .sub_1
	audio_call .sub_3
.post_intro
	audio_call .sub_4
	base_note G#2
	audio_call .sub_4
	base_note A#2
	audio_call .sub_4
	base_note D#3
	audio_call .sub_5
	audio_call .sub_4
	base_note G#2
	audio_call .sub_4
	base_note D#2
	audio_call .sub_6
	audio_call .sub_4
	base_note D#3
	instrument INSTRUMENT_0B
	audio_f4 $8c
	audio_call .sub_7
	audio_call .sub_7
	base_note D#2
	audio_f4 $c8
	audio_call .sub_7
	audio_f4 $00
	audio_call .sub_8
	audio_jump .main_loop

.sub_1
	audio_f4 $dc
	base_note D#3
	note -12
	note -5
	audio_f4 $c8
	note 2
	note 2
	note 0
	rest 0
	audio_f4 $dc
	note -12
	note -5
	audio_f4 $c8
	note 2, 1
	note 0, 1
	audio_ret

.sub_2
	note -10
	note -3
	note 4
	note 4
	note 2
	rest 0
	base_note D#2
	note -5
	note 2
	note 7, 1
	note 7, 1
	audio_ret

.sub_3
	note -10
	note -3
	note 4
	note 4
	note 2, 1
	audio_f4 $a0
	note -5
	note -5
	note -5
	note -5
	note -3
	note -1
	audio_ret

.sub_4
	audio_repeat 2
	note -12
	note -5
	note 2
	note 4
	note 0
	rest 0
	audio_repeat_end
	audio_ret

.sub_5
	note -12
	note -5
	note 2
	note 4
	note 0
	rest 0
	note -5
	note 7
	note 7
	note -5
	note 7
	note 7
	audio_ret

.sub_6
	note -4
	note -4
	note 8
	note -4
	note 8
	note -9
	note -2
	note -2
	note 10
	note -2
	note 10
	note -7
	audio_ret

.sub_7
	audio_repeat 2
	note -14
	note -7
	note 2
	note -2
	note 2
	note -2
	audio_repeat_end
	audio_repeat 2
	note -12
	note -5
	note 4
	note 0
	note 4
	note 0
	audio_repeat_end
	audio_ret

.sub_8
	audio_repeat 2
	note -10
	note -3
	note 5
	note 2
	note 9
	note 5
	audio_repeat_end
	note -5
	note 2
	note 11
	note 7
	note 11
	note 5
	audio_f4 $a0
	note -5
	note -5
	note -5
	note -5
	note -3
	note -1
	audio_ret

BubblyCloudsIntro_Channel4:
BubblyClouds_Channel4:
	tempo_mode TEMPO_02
	pan PAN_CENTER
	volume 10
	instrument INSTRUMENT_10
	audio_f4 $00
.main_loop
	note 2
	volume_shift -5
	note 4
	volume_shift 5
	note 2
	note 2
	note 2
	volume_shift -5
	note 4
	volume_shift 5
	note 2
	note 2
	note 2
	volume_shift -5
	note 4
	volume_shift 5
	note 2
	volume_shift -5
	note 4
	volume_shift 5
	audio_jump .main_loop
