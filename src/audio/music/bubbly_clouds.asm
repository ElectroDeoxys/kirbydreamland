BubblyClouds_Channel1:
	tempo_mode TEMPO_02
	pan PAN_CENTER
	base_note D#4
	audio_jump BubblyCloudsIntro_Channel1.main_loop

BubblyClouds_Channel2:
	tempo_mode TEMPO_02
	base_note D#4
	audio_jump BubblyCloudsIntro_Channel2.main_loop

BubblyClouds_Channel3:
	tempo_mode TEMPO_02
	sustain_length 0.625
	pan PAN_CENTER
	base_note D#3
	instrument INSTRUMENT_07
	volume 15
	audio_jump BubblyCloudsIntro_Channel3.post_intro
