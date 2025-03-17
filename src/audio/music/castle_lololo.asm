CastleLololo_Channel1:
	tempo_mode TEMPO_04
	sustain_length 0.867
	audio_jump CastleLololoIntro_Channel2.post_intro

CastleLololo_Channel2:
	tempo_mode TEMPO_04
	audio_jump CastleLololoIntro_Channel3.post_intro

CastleLololo_Channel3:
	tempo_mode TEMPO_04
	volume 15
	instrument INSTRUMENT_07
	pan PAN_CENTER
	sustain_length 0.996
	audio_jump CastleLololoIntro_Channel1.main_loop

CastleLololo_Channel4:
	tempo_mode TEMPO_04
	volume 8
	sustain_length 0.996
	pan PAN_CENTER
	audio_jump CastleLololoIntro_Channel4.main_loop
