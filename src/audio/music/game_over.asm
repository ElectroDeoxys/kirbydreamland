GameOver_Channel1:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	volume 10
	instrument INSTRUMENT_14
	audio_f4 $fa
	base_note D#3
	note -3, 1
	note -4, 0
	note -3, 0
	rest 0
	note 7, 2
	note 5, 0
	note 4, 1
	note 5, 0
	note 4, 2
	note 2, 2
	note 0, 2
	note 2, 1
	audio_f4 $00
	note_long 1, 3
	note_long 0, 4
	note_long -1, 75
	audio_repeat 12
	volume_shift -1
	audio_f3 $02
	audio_repeat_end
	audio_end

GameOver_Channel2:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	instrument INSTRUMENT_07
	volume 15
	base_note D#3
	audio_f4 $f0
	note -10, 0
	rest 0
	note 2, 0
	note 0, 0
	rest 0
	note -10, 2
	note 2, 0
	note 0, 0
	rest 0
	note -3, 0
	note 5, 1
	note -5, 0
	note 5, 1
	note -5, 0
	note 2, 1
	note -5, 0
	note 5, 1
	note -5, 0
	volume_shift -1
	audio_f4 $00
	instrument INSTRUMENT_00
	note_long -12, 75
	audio_repeat 12
	volume_shift -1
	audio_f3 $02
	audio_repeat_end
	audio_end

GameOver_Channel3:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	instrument INSTRUMENT_14
	volume 10
	audio_f4 $fa
	base_note D#2
	note 5, 1
	note 5, 0
	note 5, 0
	rest 0
	note 14, 2
	note 14, 0
	note 12, 1
	note 12, 0
	note 9, 2
	note 9, 2
	note 7, 2
	note 7, 2
	audio_f4 $00
	note_long 4, 75
	audio_repeat 12
	volume_shift -1
	audio_f3 $02
	audio_repeat_end
	audio_end

GameOver_Channel4:
	tempo_mode TEMPO_03
	pan PAN_CENTER
	volume 9
	audio_f4 $ff
	instrument INSTRUMENT_10
	note 5, 1
	note 7, 0
	note 7, 1
	note 7, 0
	note 5, 1
	note 7, 0
	note 6, 0
	note 7, 0
	note 7, 0
	note 5, 1
	note 7, 0
	note 5, 1
	note 7, 0
	note 5, 0
	note 7, 0
	note 7, 0
	note 5, 1
	note 7, 0
	volume_shift 2
	instrument INSTRUMENT_07
	note_long 5, 70
	audio_end
