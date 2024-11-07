BossBattle_Channel1:
	tempo_mode TEMPO_01
	pan PAN_CENTER
	instrument INSTRUMENT_00
	audio_f4 $00
	volume 0
	base_note G#2
	note_long -1, 10
	audio_repeat 14
	volume_shift 1
	audio_f3 $05
	audio_repeat_end
	audio_f4 $fa
	volume 15
	instrument INSTRUMENT_07
	note -5, 0
	note -5, 0
	rest 3
	note -5, 0
	note -5, 0
	rest 3
	note -5, 0
	note -5, 0
	rest 1
.main_loop
	audio_repeat 2
	instrument INSTRUMENT_07
	audio_f4 $ff
	base_note G#2
	note -3, 2
	note -3, 0
	note -3, 1
	note -3, 1
	rest 1
	note 9, 1
	rest 1
	note 7, 3
	note -5, 1
	note -5, 0
	note 7, 0
	note 7, 1
	note_long -5, 40
	note -6, 2
	note 6, 0
	note -6, 1
	note 6, 1
	rest 1
	note 6, 0
	rest 0
	note -6, 1
	note 6, 1
	note -7, 0
	note 5, 0
	note -7, 0
	note 5, 0
	note -7, 1
	note 5, 1
	rest 1
	note -7, 0
	rest 0
	note -5, 3
	audio_repeat_end
	audio_repeat 4
	note -8, 0
	note -8, 0
	note 4, 0
	note -1, 0
	audio_repeat_end
	audio_repeat 4
	note -10, 0
	note -10, 0
	note 2, 0
	note -3, 0
	audio_repeat_end
	audio_repeat 4
	note -8, 0
	note -8, 0
	note 4, 0
	note -1, 0
	audio_repeat_end
	audio_repeat 2
	note -10, 0
	note -10, 0
	note 2, 0
	note -3, 0
	audio_repeat_end
	note -8, 0
	note -8, 0
	note 4, 0
	note -8, 0
	note -8, 0
	note 4, 0
	note -8, 0
	note -5, 0
	audio_jump .main_loop

BossBattle_Channel2:
	tempo_mode TEMPO_01
	pan PAN_CENTER
	audio_f4 $00
	instrument INSTRUMENT_14
	volume 1
	base_note G#2
	note_long 7, 10
	audio_repeat 14
	volume_shift 1
	audio_f3 $05
	audio_repeat_end
	instrument INSTRUMENT_15
	audio_f4 $fa
	note 11, 0
	note 11, 0
	rest 3
	note 11, 0
	note 11, 0
	rest 3
	note 11, 0
	note 11, 0
	rest 1
.main_loop
	audio_repeat 2
	instrument INSTRUMENT_13
	audio_f4 $ff
	volume 12
	base_note G#3
	audio_repeat 8
	note 0, 0
	note -8, 0
	volume_shift -3
	note 0, 0
	note -8, 0
	volume_shift 3
	audio_repeat_end
	audio_repeat 4
	note 0, 0
	note -6, 0
	volume_shift -3
	note 0, 0
	note -6, 0
	volume_shift 3
	audio_repeat_end
	instrument INSTRUMENT_19
	volume 13
	audio_repeat 4
	note 0, 0
	note -7, 0
	audio_repeat_end
	rest 0
	volume 12
	audio_f4 $f5
	instrument INSTRUMENT_13
	note -7, 0
	audio_repeat 3
	note 0, 0
	note -7, 0
	audio_repeat_end
	volume_shift -1
	audio_repeat_end
	audio_repeat 4
	note 2, 0
	note -1, 0
	note -5, 0
	note -1, 0
	audio_repeat_end
	audio_repeat 4
	note 0, 0
	note -3, 0
	note -7, 0
	note -3, 0
	audio_repeat_end
	audio_repeat 4
	note 2, 0
	note -1, 0
	note -5, 0
	note -1, 0
	audio_repeat_end
	audio_repeat 2
	note 2, 0
	note -3, 0
	note -7, 0
	note -3, 0
	audio_repeat_end
	volume_shift 1
	instrument INSTRUMENT_18
	note -8, 0
	note 5, 0
	note 4, 0
	note 2, 0
	note 0, 0
	note -1, 0
	note 0, 0
	note 2, 0
	volume_shift -1
	audio_jump .main_loop

BossBattle_Channel3:
	tempo_mode TEMPO_01
	pan PAN_CENTER
	volume 1
	base_note G#2
	audio_f4 $00
	instrument INSTRUMENT_14
	note_long 2, 10
	audio_repeat 14
	volume_shift 1
	audio_f3 $05
	audio_repeat_end
	audio_f4 $fa
	instrument INSTRUMENT_15
	note 4, 0
	note 4, 0
	rest 3
	note 4, 0
	note 4, 0
	rest 3
	note 4, 0
	note 4, 0
	rest 1
.main_loop
	audio_repeat 2
	instrument INSTRUMENT_13
	volume 12
	audio_f4 $ff
	base_note G#3
	audio_repeat 8
	note -5, 0
	note -12, 0
	volume_shift -3
	note -5, 0
	note -12, 0
	volume_shift 3
	audio_repeat_end
	audio_repeat 4
	note -3, 0
	note -10, 0
	volume_shift -3
	note -3, 0
	note -10, 0
	volume_shift 3
	audio_repeat_end
	instrument INSTRUMENT_19
	volume 13
	audio_repeat 4
	note -3, 0
	note -12, 0
	audio_repeat_end
	volume 12
	rest 0
	instrument INSTRUMENT_13
	audio_f4 $f5
	note -12, 0
	audio_repeat 3
	note -3, 0
	note -12, 0
	audio_repeat_end
	volume_shift -1
	audio_repeat_end
	audio_repeat 4
	note -1, 0
	note -5, 0
	note -8, 0
	note -5, 0
	audio_repeat_end
	audio_repeat 4
	note -3, 0
	note -7, 0
	note -10, 0
	note -7, 0
	audio_repeat_end
	audio_repeat 4
	note -1, 0
	note -5, 0
	note -8, 0
	note -5, 0
	audio_repeat_end
	audio_repeat 2
	note -3, 0
	note -7, 0
	note -10, 0
	note -7, 0
	audio_repeat_end
	note -13, 0
	note 5, 0
	note 4, 0
	note 2, 0
	note 0, 0
	note -1, 0
	note 0, 0
	note 2, 0
	audio_jump .main_loop

BossBattle_Channel4:
	tempo_mode TEMPO_01
	pan PAN_CENTER
	volume 3
	instrument INSTRUMENT_10
	audio_f4 $aa
	audio_repeat 2
	note 4, 0
	note 6, 0
	note 6, 0
	note 6, 0
	audio_repeat_end
	volume 9
	audio_repeat 4
	note 6, 0
	note 6, 0
	audio_repeat_end
	pan PAN_CENTER
	note 4, 0
	note 4, 0
	note 15, 3
	note 4, 0
	note 4, 0
	note 15, 3
	note 4, 0
	note 4, 0
	note 15, 1
.main_loop
	audio_repeat 16
	audio_f4 $e1
	volume 10
	instrument INSTRUMENT_10
	pan PAN_LEFT
	volume 11
	note 2, 0
	volume_shift -3
	note 2, 0
	volume_shift 4
	note 5, 0
	volume_shift -2
	note 2, 0
	pan PAN_RIGHT
	volume_shift 1
	note 2, 0
	volume_shift -3
	note 2, 0
	volume_shift 4
	note 5, 0
	volume_shift -2
	note 2, 0
	volume_shift 1
	audio_repeat_end
	pan PAN_CENTER
	audio_repeat 7
	instrument INSTRUMENT_1A
	note 2, 0
	volume_shift -2
	note 2, 0
	volume_shift -2
	instrument INSTRUMENT_00
	note 2, 1
	volume_shift 6
	instrument INSTRUMENT_10
	note 6, 0
	volume_shift -4
	instrument INSTRUMENT_1A
	note 2, 0
	volume_shift -2
	instrument INSTRUMENT_00
	note 2, 1
	volume_shift 4
	audio_repeat_end
	instrument INSTRUMENT_1A
	audio_repeat 6
	note 7, 0
	audio_repeat_end
	instrument INSTRUMENT_10
	volume_shift 4
	note 10, 1
	volume_shift -4
	audio_jump .main_loop
