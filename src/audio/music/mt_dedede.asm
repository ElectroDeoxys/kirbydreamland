MtDedede_Channel1:
.main_loop
	tempo_mode TEMPO_03
	instrument INSTRUMENT_07
	pan PAN_CENTER
	volume 15
	audio_f4 $fa
	base_note G#2
	note -10, 2
	note -10, 2
	note -10, 0
	note -8, 0
	note -7, 0
	rest 0
	note -7, 0
	rest 0
	note -7, 0
	note -7, 0
	note -7, 1
	note -5, 2
	note -5, 2
	note -5, 1
	note 14, 0
	rest 0
	note 14, 0
	rest 0
	note 13, 0
	note 13, 0
	note 7, 1
	audio_jump .main_loop

MtDedede_Channel2:
.main_loop
	tempo_mode TEMPO_03
	pan PAN_CENTER
	volume 11
	audio_f4 $f5
	instrument INSTRUMENT_17
	base_note G#3
	note 0, 2
	note 0, 2
	note -3, 0
	note 2, 0
	note 0, 0
	rest 0
	note 0, 0
	rest 0
	note 0, 0
	note 0, 0
	note 0, 1
	note -1, 2
	note -1, 2
	note -1, 1
	note -3, 0
	rest 0
	note -3, 0
	rest 0
	note -3, 0
	note -3, 0
	note -3, 1
	audio_jump .main_loop

MtDedede_Channel3:
.main_loop
	tempo_mode TEMPO_03
	instrument INSTRUMENT_18
	audio_f4 $f5
	volume 11
	pan PAN_CENTER
	base_note G#2
	audio_repeat 8
	note 5, 0
	note 9, 0
	audio_repeat_end
	audio_repeat 4
	note 2, 0
	note 5, 0
	audio_repeat_end
	note 4, 0
	rest 0
	note 4, 0
	rest 0
	note 4, 0
	note 4, 0
	note 1, 1
	audio_jump .main_loop

MtDedede_Channel4:
	tempo_mode TEMPO_03
	instrument INSTRUMENT_10
	pan PAN_LEFT
	volume 11
	audio_f4 $ff
.main_loop
	note 1, 0
	volume_shift -1
	note 2, 0
	volume_shift 2
	note 6, 0
	volume_shift -2
	note 8, 0
	volume_shift 1
	audio_jump .main_loop
