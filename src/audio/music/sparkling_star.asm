SparklingStar_Channel1:
	tempo_mode TEMPO_04
	pan PAN_CENTER
	volume 11
	audio_f4 $00
	instrument INSTRUMENT_0E
	base_note G#4
.main_loop
	note 2, 1
	note 7, 1
	note 11, 1
	note 9, 1
	note 7, 1
	note 4, 1
	audio_jump .main_loop

SparklingStar_Channel2:
	tempo_mode TEMPO_04
	pan PAN_CENTER
	volume 11
	rest 2
	audio_f4 $00
	instrument INSTRUMENT_0E
	base_note G#4
	audio_jump SparklingStar_Channel1.main_loop
