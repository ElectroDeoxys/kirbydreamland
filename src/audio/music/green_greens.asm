GreenGreens_Channel1:
	tempo_mode TEMPO_01
	rest 3
	pan PAN_CENTER
	audio_jump GreenGreensIntro_Channel2.main_loop

GreenGreens_Channel2:
	tempo_mode TEMPO_01
	rest 3
	pan PAN_CENTER
	audio_jump GreenGreensIntro_Channel3.main_loop

GreenGreens_Channel4:
	tempo_mode TEMPO_01
	note 15, 3
	pan PAN_CENTER
	instrument INSTRUMENT_10
	audio_f4 $f0
	audio_jump GreenGreensIntro_Channel4.main_loop

GreenGreens_Channel3:
	tempo_mode TEMPO_01
	pan PAN_CENTER
	audio_jump GreenGreensIntro_Channel1.main_loop
