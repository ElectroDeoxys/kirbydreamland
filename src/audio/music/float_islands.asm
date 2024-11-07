FloatIslands_Channel1:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	audio_jump FloatIslandsIntro_Channel2.main_loop

FloatIslands_Channel2:
	tempo_mode TEMPO_03
	base_note G#3
	audio_jump FloatIslandsIntro_Channel3.main_loop

FloatIslands_Channel3:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	base_note G#2
	instrument INSTRUMENT_07
	volume 15
	audio_f4 $ff
	audio_jump FloatIslandsIntro_Channel1.main_loop

FloatIslands_Channel4:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	audio_f4 $ff
	instrument INSTRUMENT_10
	volume 9
	audio_jump FloatIslandsIntro_Channel4.main_loop
