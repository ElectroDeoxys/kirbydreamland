InvincibilityCandy_Channel1:
.main_loop
	tempo_mode TEMPO_01
	pan PAN_CENTER
	volume 12
	instrument INSTRUMENT_13
	base_note G#3
	audio_f4 $ff
	note_long 2, 25
	note 0, 1
	note 2, 0
	note 4, 3
	note -5, 3
	note 2, 0
	rest 0
	note 2, 2
	note 0, 1
	note 2, 0
	note 4, 3
	note -5, 3
	note 7, 0
	note 5, 0
	note 4, 0
	note 7, 0
	note 5, 0
	note 4, 0
	note 2, 0
	note 5, 0
	note 4, 0
	note 2, 0
	note 0, 0
	note 4, 0
	note 2, 0
	note 0, 0
	note 2, 0
	note 4, 0
	note_long 0, 40
	volume_shift 255
	audio_f4 $00
	note_long 11, 2
	audio_f4 $ff
	note_long 12, 38
	audio_jump .main_loop

InvincibilityCandy_Channel2:
.main_loop
	tempo_mode TEMPO_01
	pan PAN_CENTER
	instrument INSTRUMENT_07
	volume 15
	audio_f4 $c8
	base_note G#2
	note -7, 2
	note -7, 0
	note 5, 0
	note -7, 1
	note 5, 0
	note -12, 0
	rest 0
	note -12, 2
	note -5, 1
	note -12, 0
	note -14, 0
	rest 0
	note -14, 1
	note -2, 0
	note -14, 1
	note -2, 0
	note -12, 2
	note -12, 0
	note 0, 0
	note -12, 1
	note 0, 0
	audio_repeat 2
	note -7, 1
	note 5, 1
	note -7, 0
	note 5, 1
	note -7, 0
	audio_repeat_end
	note -14, 0
	rest 0
	note -14, 1
	note -2, 0
	note -14, 1
	note -2, 0
	note -14, 0
	note -2, 0
	note -14, 1
	note -2, 0
	note -14, 1
	note -2, 0
	audio_jump .main_loop

InvincibilityCandy_Channel3:
.main_loop
	tempo_mode TEMPO_01
	pan PAN_CENTER
	base_note C#4
	volume 9
	instrument INSTRUMENT_05
	audio_f4 $ff
	audio_repeat 4
	note -12, 0
	note -8, 0
	audio_repeat_end
	audio_repeat 4
	note -13, 0
	note -10, 0
	audio_repeat_end
	audio_repeat 4
	note -12, 0
	note -7, 0
	audio_repeat_end
	audio_repeat 4
	note -13, 0
	note -5, 0
	audio_repeat_end
	audio_repeat 8
	note -12, 0
	note -8, 0
	audio_repeat_end
	audio_repeat 8
	note -12, 0
	note -7, 0
	audio_repeat_end
	audio_jump .main_loop

InvincibilityCandy_Channel4:
.main_loop
	tempo_mode TEMPO_01
	pan PAN_CENTER
	volume 10
	instrument INSTRUMENT_10
	audio_f4 $ff
	note 6, 0
	volume_shift -4
	pan PAN_LEFT
	note 7, 0
	pan PAN_RIGHT
	note 7, 0
	pan PAN_LEFT
	note 7, 0
	pan PAN_CENTER
	volume_shift 4
	note 5, 0
	volume_shift -4
	pan PAN_RIGHT
	note 7, 0
	pan PAN_LEFT
	note 7, 0
	pan PAN_RIGHT
	note 7, 0
	audio_jump .main_loop
