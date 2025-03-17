Victory_Channel1:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	instrument INSTRUMENT_0A
	volume 12
	sustain_length 0.996
	base_note D#4
	audio_call .sub_1
	note 0, 1
	note -5, 0
	note -8, 2
	audio_call .sub_1
	note 0, 2
	note -8, 2
	audio_call .sub_1
	note 0, 1
	note -5, 0
	note -8, 1
	note 7, 0
	note 5, 1
	note 4, 0
	note 2, 1
	note 4, 0
	note 0, 2
	note_long 12, 10
	rest_long 11
	audio_end

.sub_1
	note -7, 0
	note -5, 0
	note -3, 0
	note -1, 0
	note -3, 0
	note -1, 0
	audio_ret

Victory_Channel2:
	tempo_mode TEMPO_03
	instrument INSTRUMENT_0A
	pan PAN_CENTER
	sustain_length 0.996
	volume 11
	base_note D#4
	audio_call .sub_1
	note -8, 2
	note -12, 1
	note -5, 0
	audio_call .sub_1
	note -8, 1
	note -7, 0
	note -5, 1
	note -12, 0
	audio_call .sub_1
	note -8, 2
	note -12, 1
	note 4, 0
	note 2, 1
	note -1, 0
	note -5, 0
	note -3, 0
	note -1, 0
	note -8, 2
	note_long 4, 10
	rest_long 11
	audio_end

.sub_1
	note -12, 0
	note -10, 0
	note -7, 0
	note -7, 0
	note -7, 0
	note -7, 0
	audio_ret

Victory_Channel3:
	tempo_mode TEMPO_03
	instrument INSTRUMENT_07
	pan PAN_CENTER
	volume 15
	sustain_length 0.996
	base_note D#3
	note 2, 1
	note 2, 0
	note 7, 1
	note 7, 0
	note 0, 2
	note 0, 1
	note 7, 0
	note 5, 1
	note 5, 0
	note 7, 1
	note 7, 0
	note 0, 1
	note 7, 0
	note 0, 2
	note 2, 1
	note 2, 0
	note 7, 1
	note 7, 0
	note 0, 1
	note -12, 0
	note -12, 1
	note 0, 0
	note -7, 0
	note -5, 0
	note -3, 0
	note -1, 0
	note -3, 0
	note -1, 0
	note 0, 1
	base_note D#2
	note -5, 0
	note -12, 0
	rest 1
	audio_end

Victory_Channel4:
	tempo_mode TEMPO_03
	volume 10
	instrument INSTRUMENT_10
	sustain_length 0.918
	audio_repeat 7
	note 6, 1
	note 6, 0
	note 6, 0
	volume_shift -4
	note 3, 0
	volume_shift 4
	note 6, 0
	audio_repeat_end
	note 3, 0
	note 3, 0
	note 3, 0
	note 3, 0
	note 15, 1
	audio_end
