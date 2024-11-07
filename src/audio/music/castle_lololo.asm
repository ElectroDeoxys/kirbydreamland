CastleLololo_Channel1:
	tempo_mode TEMPO_04
	audio_f4 $de
	audio_jump CastleLololoIntro_Channel2.post_intro

CastleLololo_Channel2:
	tempo_mode TEMPO_04
	audio_jump CastleLololoIntro_Channel3.post_intro

CastleLololo_Channel3:
	tempo_mode TEMPO_04
	volume 15
	instrument INSTRUMENT_07
	pan PAN_CENTER
	audio_f4 $ff
	audio_jump CastleLololoIntro_Channel1.main_loop

CastleLololo_Channel4:
	tempo_mode TEMPO_04
	volume 8
	audio_f4 $ff
	pan PAN_CENTER
	audio_jump CastleLololoIntro_Channel4.main_loop
