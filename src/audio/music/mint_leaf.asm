MintLeaf_Channel1:
.main_loop
	tempo_mode TEMPO_01
	pan PAN_CENTER
	instrument INSTRUMENT_07
	volume 15
	sustain_length 0.496
	base_note B_1
	audio_repeat 3
	audio_call .sub_1
	audio_repeat_end
	audio_call .sub_2
	audio_call .sub_1
	audio_call .sub_3
	audio_call .sub_4
	base_note A_1
	audio_call .sub_4
	base_note B_1
	audio_call .sub_4
	audio_call .sub_5
	audio_jump .main_loop

.sub_1
	note -3, 1
	note -3, 1
	note 4, 1
	note -3, 1
	note 6, 1
	note 7, 1
	note -5, 1
	note -8, 1
	audio_ret

.sub_2
	note -3, 1
	sustain_length 0.820
	note -3, 0
	volume_shift -2
	note -3, 0
	volume_shift 2
	sustain_length 0.496
	note 4, 1
	note -3, 1
	note 6, 1
	note 7, 1
	note -5, 1
	note -8, 1
	audio_ret

.sub_3
	note -7, 1
	note -7, 1
	note 5, 1
	note -7, 1
	sustain_length 0.977
	note 4, 1
	note 5, 0
	rest 0
	note -1, 1
	note 0, 0
	rest 0
	sustain_length 0.496
	audio_ret

.sub_4
	note -8, 1
	note -8, 1
	note 4, 1
	note -8, 1
	sustain_length 0.977
	note -8, 0
	volume_shift -3
	note 4, 0
	volume_shift 3
	sustain_length 0.496
	note -8, 1
	note 4, 1
	note -8, 1
	audio_ret

.sub_5
	sustain_length 0.352
	note -5, 1
	sustain_length 0.977
	note 7, 1
	sustain_length 0.469
	note 6, 1
	note 5, 1
	note 3, 1
	note 0, 1
	sustain_length 0.938
	note -5, 1
	note -2, 1
	audio_ret

MintLeaf_Channel2:
.main_loop
	tempo_mode TEMPO_01
	pan PAN_CENTER
	volume 12
	instrument INSTRUMENT_17
	base_note B_1
	sustain_length 0.496
	audio_call MintLeaf_Channel1.sub_1
	audio_call MintLeaf_Channel1.sub_1
	base_note B_2
	audio_call .sub_1
	note_long -3, 7
	rest_long 43
	audio_call .sub_1
	note_long 2, 7
	rest_long 43
	instrument INSTRUMENT_13
	volume 13
	audio_call .sub_2
	base_note A_2
	audio_call .sub_2
	base_note B_2
	audio_call .sub_2
	instrument INSTRUMENT_17
	volume 12
	audio_call MintLeaf_Channel1.sub_5
	audio_jump .main_loop

.sub_1
	rest 1
	sustain_length 0.0
	note_long 2, 3
	sustain_length 0.898
	note_long 3, 7
	sustain_length 0.496
	note 4, 1
	note 7, 1
	sustain_length 0.953
	note 4, 1
	note 3, 0
	rest 0
	sustain_length 0.496
	note 2, 1
	sustain_length 0.977
	note -5, 1
	sustain_length 0.469
	note -3, 1
	note -3, 1
	sustain_length 0.977
	note 0, 1
	audio_ret

.sub_2
	sustain_length 0.586
	note 2, 1
	note 7, 1
	rest 1
	note 2, 1
	note 7, 1
	rest 1
	sustain_length 0.859
	note 2, 1
	sustain_length 0.508
	note 7, 1
	audio_ret

MintLeaf_Channel3:
.main_loop
	tempo_mode TEMPO_01
	pan PAN_CENTER
	sustain_length 0.469
	volume 5
	instrument INSTRUMENT_05
	base_note B_4
	audio_call .sub_1
	audio_call .sub_1
	instrument INSTRUMENT_17
	volume 10
	base_note B_3
	pan PAN_CENTER
	audio_call MintLeaf_Channel2.sub_1
	note_long -3, 7
	rest_long 43
	audio_call MintLeaf_Channel2.sub_1
	note_long 2, 7
	rest_long 43
	instrument INSTRUMENT_13
	volume 12
	base_note B_2
	audio_call .sub_2
	base_note B_4
	instrument INSTRUMENT_17
	volume 10
	audio_call MintLeaf_Channel1.sub_5
	audio_jump .main_loop

.sub_1
	rest 1
	pan PAN_LEFT
	note 7, 1
	pan PAN_RIGHT
	note 7, 1
	rest 1
	pan PAN_LEFT
	note 6, 1
	pan PAN_RIGHT
	note 7, 1
	rest 1
	pan PAN_CENTER
	note 7, 1
	audio_ret

.sub_2
	sustain_length 0.586
	note -1, 1
	note 2, 1
	rest 1
	note -1, 1
	note 2, 1
	rest 1
	sustain_length 0.859
	note -1, 1
	sustain_length 0.508
	note 2, 1
	sustain_length 0.586
	note -3, 1
	note 0, 1
	rest 1
	note -3, 1
	note 0, 1
	rest 1
	sustain_length 0.859
	note -3, 1
	sustain_length 0.508
	note 0, 1
	sustain_length 0.586
	note -4, 1
	note -4, 1
	rest 1
	note -4, 1
	note -4, 1
	rest 1
	sustain_length 0.859
	note -4, 1
	sustain_length 0.508
	note -4, 1
	audio_ret

MintLeaf_Channel4:
.main_loop
	tempo_mode TEMPO_01
	instrument INSTRUMENT_10
	volume 9
	sustain_length 0.996
	audio_repeat 4
	audio_repeat 3
	pan PAN_LEFT
	note 3, 1
	volume_shift -3
	note 3, 1
	volume_shift 6
	pan PAN_CENTER
	note 6, 1
	pan PAN_LEFT
	volume_shift -4
	note 3, 1
	volume_shift 1
	audio_repeat_end
	pan PAN_LEFT
	note 3, 0
	volume_shift -3
	note 3, 0
	note 3, 1
	volume_shift 6
	pan PAN_CENTER
	note 6, 1
	volume_shift -4
	pan PAN_LEFT
	note 3, 1
	volume_shift 1
	audio_repeat_end
	pan PAN_LEFT
	note 3, 1
	volume_shift -3
	note 3, 1
	volume_shift 6
	pan PAN_CENTER
	note 6, 1
	volume_shift -4
	pan PAN_LEFT
	note 3, 1
	volume_shift 1
	note 3, 0
	volume_shift -3
	note 3, 0
	note 3, 0
	note 3, 0
	volume_shift 6
	pan PAN_CENTER
	note 6, 1
	volume_shift -4
	pan PAN_LEFT
	note 3, 0
	note 3, 0
	volume_shift 4
	pan PAN_CENTER
	note 15, 1
	note 6, 1
	note 6, 1
	note 6, 1
	volume_shift -3
	audio_repeat 4
	note 6, 0
	note 6, 0
	volume_shift 1
	audio_repeat_end
	audio_jump .main_loop
