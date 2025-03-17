DededeBattle_Channel1:
	tempo_mode TEMPO_01
	instrument INSTRUMENT_00
	volume 10
	pan PAN_CENTER
	sustain_length 0.0
	base_note F#1
	note_long -5, 40
	volume 15
	note_long -5, 40
	instrument INSTRUMENT_07
	base_note F#3
	sustain_length 0.391
	note 2, 1
	note -1, 1
	rest 1
	note 2, 1
	note -1, 1
	rest 1
	note 2, 1
	note -1, 1
	base_note F#2
	volume 15
	sustain_length 0.508
	audio_repeat 3
	note 0, 1
	note 0, 1
	note -5, 1
	note -2, 1
	audio_repeat_end
	note 0, 1
	note 0, 1
	sustain_length 0.898
	note -5, 0
	note -5, 0
	sustain_length 0.508
	note -2, 1
.main_loop
	audio_call .sub_1
	audio_jump .main_loop
	audio_end ; unreachable

.sub_1
	audio_repeat 4
	note 0, 1
	note 0, 1
	note -5, 1
	note -2, 1
	audio_repeat_end
	audio_repeat 4
	note -2, 1
	note -2, 1
	note -7, 1
	note -4, 1
	audio_repeat_end
	audio_repeat 4
	note -4, 1
	note -4, 1
	note -9, 1
	note 3, 1
	audio_repeat_end
	note -5, 1
	note -5, 1
	note 2, 1
	note -5, 1
	note -5, 1
	note 2, 1
	note -5, 1
	note -5, 1
	note 2, 1
	note -5, 1
	note -5, 1
	note -10, 1
	note 7, 1
	note -5, 1
	note 7, 1
	note -5, 1
	audio_ret

DededeBattle_Channel2:
	tempo_mode TEMPO_01
	sustain_length 0.0
	instrument INSTRUMENT_02
	pan PAN_CENTER
	base_note F#1
	volume 7
	note_long -5, 40
	audio_repeat 8
	volume_shift 1
	sustain 5
	audio_repeat_end
	base_note F#2
	sustain_length 0.391
	note 10, 1
	note 7, 1
	rest 1
	note 10, 1
	note 7, 1
	rest 1
	note 10, 1
	note 7, 1
	volume 0
	rest_long 160
.main_loop
	instrument INSTRUMENT_13
	base_note F#2
	volume 12
	audio_call .sub_1
	base_note F#3
	audio_call .sub_1
	audio_jump .main_loop

.sub_1
	sustain_length 0.996
	note 3, 1
	sustain_length 0.781
	note 0, 1
	rest 4
	note -2, 1
	note 0, 1
	sustain_length 0.996
	note 3, 3
	note 0, 1
	rest 4
	sustain_length 0.781
	note 5, 1
	note 7, 1
	rest 1
	sustain_length 0.0
	note 3, 0
	note 2, 0
	note 0, 1
	rest 4
	sustain_length 0.547
	note -5, 1
	note 3, 1
	sustain_length 0.996
	audio_repeat 3
	note 0, 3
	note -2, 0
	rest 0
	audio_repeat_end
	note 5, 1
	note 3, 1
	rest 4
	note 5, 1
	note 3, 1
	rest 1
	note 0, 1
	note 3, 1
	rest 1
	note 0, 1
	note 3, 1
	note 5, 1
	note 6, 1
	note 7, 1
	note 10, 1
	note 7, 1
	rest_long 40
	note 10, 1
	note 7, 1
	rest_long 40
	note 10, 1
	note 7, 1
	rest 3
	audio_ret

DededeBattle_Channel3:
	tempo_mode TEMPO_01
	sustain_length 0.0
	instrument INSTRUMENT_03
	volume 7
	base_note F#1
	pan PAN_CENTER
	note_long -5, 40
	audio_repeat 8
	volume_shift 1
	sustain 5
	audio_repeat_end
	base_note F#2
	sustain_length 0.391
	instrument INSTRUMENT_02
	note 5, 1
	note 2, 1
	rest 1
	note 5, 1
	note 2, 1
	rest 1
	note 5, 1
	note 2, 1
	volume 12
	base_note F#0
	sustain_length 0.508
	audio_repeat 4
	note 0, 1
	note 0, 1
	note 7, 1
	note -2, 1
	audio_repeat_end
.main_loop
	sustain_length 0.996
	base_note F#2
	instrument INSTRUMENT_00
	volume 8
	audio_call .sub_1
	base_note F#3
	audio_call .sub_1
	audio_jump .main_loop

.sub_1
	audio_repeat 8
	pan PAN_RIGHT
	note -9, 0
	note -5, 0
	pan PAN_LEFT
	note 0, 0
	note -5, 0
	audio_repeat_end
	audio_repeat 8
	pan PAN_RIGHT
	note -10, 0
	note -7, 0
	pan PAN_LEFT
	note -2, 0
	note -7, 0
	audio_repeat_end
	audio_repeat 8
	pan PAN_RIGHT
	note -9, 0
	note -4, 0
	pan PAN_LEFT
	note 0, 0
	note -4, 0
	audio_repeat_end
	audio_repeat 8
	pan PAN_RIGHT
	note -7, 0
	note -5, 0
	pan PAN_LEFT
	note -1, 0
	note -5, 0
	audio_repeat_end
	audio_ret

DededeBattle_Channel4:
	tempo_mode TEMPO_01
	instrument INSTRUMENT_10
	sustain_length 0.996
	pan PAN_CENTER
	volume 12
	note_long 15, 80
	note 7, 1
	note 7, 1
	note 15, 1
	note 7, 1
	note 7, 1
	note 15, 1
	note 7, 1
	note 7, 1
.main_loop
	instrument INSTRUMENT_10
	note 3, 0
	volume_shift -3
	note 3, 0
	instrument INSTRUMENT_00
	note 1, 1
	volume_shift 3
	instrument INSTRUMENT_10
	note 6, 0
	volume_shift -3
	note 3, 0
	instrument INSTRUMENT_00
	note 1, 1
	volume_shift 3
	audio_jump .main_loop
