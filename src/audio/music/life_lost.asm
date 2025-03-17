LifeLost_Channel1:
	tempo_mode TEMPO_03
	pan PAN_LEFT
	instrument INSTRUMENT_14
.sub_1
	sustain_length 0.938
	base_note D#4
	volume 11
	note 0, 0
	rest 0
	note -1, 0
	note -2, 0
	rest 0
	note -3, 0
	note -4, 0
	rest 0
	note -9, 2
	note -4, 0
	note -5, 0
	rest 4
	sustain_length 0.0
	note_long 6, 2
	note_long 7, 6
	rest 0
	audio_end

LifeLost_Channel2:
	tempo_mode TEMPO_03
	pan PAN_RIGHT
	instrument INSTRUMENT_16
	audio_jump LifeLost_Channel1.sub_1

LifeLost_Channel3:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	instrument INSTRUMENT_07
	volume 15
	sustain_length 0.996
	base_note D#4
	note -12, 0
	rest 0
	note -5, 0
	note 4, 0
	rest 0
	note 0, 0
	note -4, 0
	note -9, 0
	note -4, 0
	note 0, 1
	note -4, 0
	note -5, 0
	rest 0
	audio_end
