GreenGreensIntro_Channel1:
	tempo_mode TEMPO_01
	pan PAN_CENTER
	volume 15
	instrument INSTRUMENT_02
	sustain_length 0.938
	base_note D#2
	note -5
	note -5
	rest 0
	note -5
	sustain_length 0.5
	note -5, 1
	note -5, 1
	note -5, 1
	base_note D#4
	sustain_length 0.703
	note 2
	note 2
	note 2
	rest 0
	sustain_length 0.0
	base_note D#1
	note_long -5, 3
	note_long -3, 4
	note_long -1, 3
	sustain_length 0.195
	base_note D#2
	note -12, 5
	note -12, 5
	note -10, 5
	sustain_length 0.508
	instrument INSTRUMENT_11
	rest 1
	note -5, 1
	note -5, 1
	note -5, 1
	note -5, 1
	rest 1
.main_loop
	base_note D#4
	volume 15
	instrument INSTRUMENT_11
	audio_call .sub_1
	audio_call .sub_1
	sustain 20
	audio_call .sub_2
	base_note D#2
	instrument INSTRUMENT_02
	sustain_length 0.195
	note -12, 5
	note -12, 5
	base_note D#1
	sustain_length 0.938
	audio_repeat 3
	audio_call .sub_3
	audio_repeat_end
	audio_call .sub_4
	audio_jump .main_loop

.sub_1
	sustain_length 0.586
	note -5, 2
	sustain_length 0.996
	note -5
	note_long 0, 57
	rest_long 3
	note 0, 2
	note 4
	note 7, 1
	sustain_length 0.547
	note 12, 1
	note 11, 1
	note 9, 1
	sustain_length 0.996
	note 7, 3
	note 4, 2
	note 7
	sustain_length 0.938
	note 5, 3
	note 2, 2
	note 4
	note 2, 3
	note 4, 2
	note 2
	sustain_length 0.898
	note_long 0, 60
	audio_ret

.sub_2
	sustain_length 0.898
	note 0, 2
	note 0
	note 2
	rest 0
	note 4, 3
	note 0
	rest 0
	note 2, 1
	note 0, 1
	audio_ret

.sub_3
	note -7
	note 0
	note 8
	note 5
	note 8
	note 5
	note 8
	note 5
	note -2
	note 5
	note 10
	note 5
	note 10
	note 5
	note 10
	note 5
	note -9
	note -2
	note 7
	note 3
	note 7
	note 3
	note 7
	note 3
	note -4
	note 3
	note 8
	note 3
	note 8
	note 3
	note 8
	note 3
	audio_ret

.sub_4
	note -7
	note 0
	note 5
	note 0
	note 5
	note 0
	note 5
	note 0
	note -2
	note 5
	note 10
	note 5
	note 10
	note 5
	note 10
	note 5
	audio_repeat 2
	sustain_length 0.938
	note -5
	rest 0
	note -5
	note 2
	audio_repeat_end
	note 7
	rest 2
	audio_ret

GreenGreensIntro_Channel2:
	tempo_mode TEMPO_01
	rest_long 50
	pan PAN_CENTER
	volume 10
	instrument INSTRUMENT_08
	base_note D#3
	sustain_length 0.938
	note 5
	note 5
	note 5
	rest 2
	base_note D#2
	audio_call .sub_1
	audio_call .sub_1
	audio_call .sub_2
.main_loop
	instrument INSTRUMENT_08
	volume 10
	base_note D#2
	audio_call .sub_3
	audio_call .sub_4
	audio_call .sub_3
	audio_call .sub_5
	audio_call .sub_6
	audio_call .sub_1
	audio_call .sub_1
	base_note D#3
	instrument INSTRUMENT_12
	volume 12
	sustain_length 0.0
	audio_call .sub_7
	audio_call .sub_8
	volume 11
	audio_call .sub_7
	audio_call .sub_9
	rest 3
	audio_jump .main_loop

.sub_1
	rest 1
	sustain_length 0.547
	audio_repeat 7
	note -5, 1
	audio_repeat_end
	audio_ret

.sub_2
	rest 1
	audio_repeat 7
	note -3, 1
	audio_repeat_end
	rest 1
	instrument INSTRUMENT_04
	note 9, 1
	note 9, 1
	note 9, 1
	note 11, 1
	rest 4
	audio_ret

.sub_3
	audio_repeat 2
	sustain_length 0.0
	note -12, 1
	sustain_length 0.508
	audio_repeat 7
	note -5, 1
	audio_repeat_end
	audio_repeat_end
	sustain_length 0.0
	note -10, 1
	sustain_length 0.547
	note -3, 1
	note -3, 1
	note -3, 1
	audio_ret

.sub_4
	sustain_length 0.0
	note -10, 1
	sustain_length 0.547
	note -5, 1
	note -5, 1
	note -5, 1
	sustain_length 0.0
	note -12, 1
	audio_repeat 7
	sustain_length 0.547
	note -5, 1
	audio_repeat_end
	audio_ret

.sub_5
	sustain_length 0.0
	note -8, 1
	sustain_length 0.547
	note -1, 1
	note -1, 1
	note -1, 1
	sustain_length 0.0
	pan PAN_LEFT
	note -3, 1
	sustain_length 0.547
	note 9, 1
	note 9, 1
	note 9, 1
	sustain_length 0.0
	note -5, 1
	sustain_length 0.547
	note 7, 1
	note 7, 1
	note 7, 1
	pan PAN_CENTER
	audio_ret

.sub_6
	sustain_length 0.586
	note -3, 2
	note -3, 1
	rest 2
	note -1, 1
	note -1, 1
	rest 3
	audio_ret

.sub_7
	note 3, 3
	note 2, 2
	note 3
	note 5, 3
	note 3, 2
	note 5
	note 7, 3
	note 5, 2
	note 7
	note 0, 3
	note 0, 2
	note 2
	note 3, 3
	note 2, 2
	note 3
	note 5, 3
	note 3, 2
	note 5
	audio_ret

.sub_8
	note_long 7, 40
	note 12, 1
	rest 1
	instrument INSTRUMENT_0D
	base_note D#4
	sustain_length 0.898
	note 0, 2
	note 2
	audio_ret

.sub_9
	note_long 2, 40
	note 7, 3
	audio_ret

GreenGreensIntro_Channel3:
	tempo_mode TEMPO_01
	pan PAN_CENTER
	volume 10
	instrument INSTRUMENT_08
	base_note D#1
	sustain_length 0.938
	note -5
	note -5
	rest 0
	note -5
	sustain_length 0.5
	note -5, 1
	note -5, 1
	note -5, 1
	sustain_length 0.703
	base_note D#3
	note 7
	note 7
	note 7
	rest 0
	sustain_length 0.0
	base_note D#1
	volume 13
	note_long -5, 3
	note_long -3, 4
	note_long -1, 3
	base_note D#3
	volume 10
	sustain_length 0.547
	audio_call .sub_1
	audio_call .sub_1
	audio_call .sub_2
.main_loop
	instrument INSTRUMENT_08
	volume 10
	base_note D#2
	audio_call .sub_3
	audio_call .sub_4
	audio_call .sub_3
	audio_call .sub_5
	audio_call .sub_6
	audio_call .sub_1
	audio_call .sub_1
	base_note D#3
	instrument INSTRUMENT_12
	volume 12
	sustain_length 0.0
	audio_call .sub_7
	audio_call .sub_8
	volume 11
	audio_call .sub_7
	audio_call .sub_9
	rest 3
	audio_jump .main_loop

.sub_1
	rest 1
	audio_repeat 7
	note -8, 1
	audio_repeat_end
	audio_ret

.sub_2
	rest 1
	audio_repeat 7
	note -7, 1
	audio_repeat_end
	instrument INSTRUMENT_04
	rest 1
	note 5, 1
	note 5, 1
	note 7, 1
	note 7, 1
	rest 4
	audio_ret

.sub_3
	audio_repeat 2
	sustain_length 0.0
	note -5, 1
	sustain_length 0.547
	audio_repeat 7
	note 4, 1
	audio_repeat_end
	audio_repeat_end
	sustain_length 0.0
	note -3, 1
	sustain_length 0.547
	note 0, 1
	note 0, 1
	note 0, 1
	audio_ret

.sub_4
	sustain_length 0.0
	note -5, 1
	sustain_length 0.547
	note -1, 1
	note -1, 1
	note -1, 1
	sustain_length 0.0
	note -5, 1
	sustain_length 0.547
	audio_repeat 7
	note 4, 1
	audio_repeat_end
	audio_ret

.sub_5
	sustain_length 0.0
	note -4, 1
	sustain_length 0.547
	note 4, 1
	note 4, 1
	note 4, 1
	sustain_length 0.996
	pan PAN_RIGHT
	audio_repeat 8
	note 0
	note 4
	audio_repeat_end
	pan PAN_CENTER
	audio_ret

.sub_6
	sustain_length 0.586
	note 5, 2
	note 5, 1
	rest 2
	note 7, 1
	note 7, 1
	rest 3
	audio_ret

.sub_7
	note -4, 3
	note -4, 2
	note -4
	note 2, 3
	note 0, 2
	note 2
	note 3, 3
	note 2, 2
	note 3
	note -4, 3
	note -4, 2
	note -2
	note -4, 3
	note -4, 2
	note -4
	note 2, 3
	note 0, 2
	note 2
	audio_ret

.sub_8
	note_long 3, 40
	note 7, 1
	rest 1
	sustain_length 0.898
	base_note D#4
	instrument INSTRUMENT_0D
	note -4, 2
	note -2
	audio_ret

.sub_9
	note_long -1, 40
	note -1, 3
	audio_ret

GreenGreensIntro_Channel4:
	tempo_mode TEMPO_01
	pan PAN_CENTER
	volume 10
	instrument INSTRUMENT_10
	sustain_length 0.938
	note 15, 5
	note_long 15, 250
	note 2, 1
	note 2, 1
	note 2, 1
	note 2, 1
	note 15, 4
.main_loop
	audio_repeat 8
	volume 8
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_2
	volume 7
	audio_repeat 9
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_3
	audio_jump .main_loop

.sub_1
	audio_repeat 3
	note 3, 1
	note 4
	note 4
	audio_repeat_end
	note 3
	note 4
	note 4
	note 4
	audio_ret

.sub_2
	note 3, 1
	note 4
	note 4
	note 3, 1
	note 4
	note 4
	volume_shift 1
	note 4, 1
	note 4, 1
	volume_shift -1
	note 15, 3
	audio_ret

.sub_3
	note 3, 1
	note 4
	note 4
	note 3, 1
	note 4
	note 4
	note 2, 1
	note 15, 1
	note 15, 3
	audio_ret
