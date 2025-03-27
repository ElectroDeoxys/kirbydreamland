SFX00_Channel1:
	tempo_mode TEMPO_06
	pan PAN_CENTER
	volume 15
	instrument INSTRUMENT_1B
	sustain_length $00
	base_note D#3
	note 5, 0
	audio_repeat 6
	pitch -15
	sustain $01
	pitch 11
	sustain $01
	audio_repeat_end
	base_note G#3
	note 14, 0
	note 15, 0
	note 14, 0
	note 15, 0
	rest 3
	note_long 15, 0
	audio_repeat 3
	pitch -6
	sustain $01
	pitch 8
	sustain $01
	pitch -8
	sustain $01
	pitch 6
	sustain $01
	audio_repeat_end
	rest_long 8
	note_long 15, 0
	audio_repeat 3
	pitch -7
	sustain $01
	pitch -5
	sustain $01
	pitch 7
	sustain $01
	pitch 5
	sustain $01
	audio_repeat_end
	audio_repeat 2
	note_long 15, 0
	audio_repeat 3
	pitch -6
	sustain $01
	pitch 5
	sustain $01
	pitch -5
	sustain $01
	pitch 6
	sustain $01
	audio_repeat_end
	pitch 6
	sustain $01
	pitch -5
	sustain $01
	volume_shift -1
	pitch 9
	sustain $01
	pitch -7
	sustain $01
	volume_shift -1
	pitch 8
	sustain $01
	pitch -9
	sustain $01
	volume_shift -1
	pitch 7
	sustain $01
	pitch -5
	sustain $01
	volume_shift -1
	pitch 9
	sustain $01
	pitch -7
	sustain $01
	volume 4
	audio_repeat_end
	audio_end

SFX00_Channel2:
	tempo_mode TEMPO_06
	rest 1
	audio_jump SFX00_Channel1

SFXInhale_Channel1:
	base_note D#3
AudioScript_171e2:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1C
	sustain_length $00
	pan PAN_CENTER
	volume 4
	note 4, 0
	audio_repeat 5
	pitch -7
	sustain $01
	pitch -8
	sustain $01
	pitch 4
	sustain $01
	pitch -7
	sustain $01
	volume_shift 1
	pitch 5
	sustain $01
	pitch -8
	sustain $01
	audio_repeat_end
	volume_shift -2
	pitch 1
	sustain $01
.loop
	pitch -2
	sustain $01
	pitch 2
	sustain $01
	audio_jump .loop

SFXInhale_Channel2:
	tempo_mode TEMPO_09
	pan PAN_CENTER
	instrument INSTRUMENT_1B
	sustain_length $00
	volume 3
	note 6, 0
	volume_shift 3
	note 5, 0
	volume_shift 3
	note 4, 0
	volume_shift 2
	note 3, 0
	volume_shift 2
	note 2, 0
	volume_shift 2
.audio_17234
	note_long 1, 1
	note_long 0, 1
	audio_jump .audio_17234

SFX02_Channel1:
	base_note A#1
	audio_call $7246
	base_note C#2
	audio_call AudioScript_17256
	audio_end

AudioScript_17246:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1E
	pan PAN_CENTER
	volume 15
	sustain_length $00
	base_note C_2
	note 7, 0
	note 8, 0
	note -3, 0
	audio_ret

AudioScript_17256:
	volume 11
	note 10, 0
	note 11, 0
	note 15, 0
	audio_ret

SFXSwallow_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1D
	sustain_length $00
	base_note C_2
	pan PAN_CENTER
	volume 9
	note 2, 0
	volume 15
	note_long -5, 0
	audio_repeat 2
	pitch 88
	sustain $01
	pitch -33
	sustain $01
	audio_repeat_end
	base_note G#3
	volume 0
	rest 0
	volume 6
	instrument INSTRUMENT_1D
	note_long 14, 0
	audio_repeat 5
	pitch -1
	sustain $01
	volume_shift 1
	audio_repeat_end
	audio_end

SFXJump_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1D
	sustain_length $00
	base_note D#4
	pan PAN_CENTER
	volume 6
	note_long 0, 0
	audio_repeat 3
	pitch -8
	sustain $01
	volume_shift 3
	audio_repeat_end
	volume_shift -6
	audio_repeat 2
	pitch -9
	sustain $01
	volume_shift -5
	audio_repeat_end
	audio_end

SFXBump_Channel1:
	tempo_mode TEMPO_06
	sustain_length $00
	pan PAN_CENTER
	instrument INSTRUMENT_1C
	volume 14
	base_note D_3
	note -12, 1
	volume_shift -1
	note -13, 0
	volume_shift -3
	note -6, 0
	volume_shift -1
	note -5, 0
	volume_shift -1
	note -4, 0
	volume_shift -1
	note -2, 0
	audio_end

SFXDamage_Channel1:
	tempo_mode TEMPO_06
	sustain_length $00
	instrument INSTRUMENT_1B
	volume 15
	note 9, 1
	note 11, 0
	note 12, 0
	note 13, 0
	note 14, 0
	note 15, 1
	volume 3
	note_long 6, 0
	audio_repeat 3
	note 1, 0
	volume_shift 2
	note 2, 0
	volume_shift 2
	audio_repeat_end
	note_long 0, 0
	audio_repeat 6
	volume_shift -1
	sustain $02
	volume_shift -1
	sustain $01
	audio_repeat_end
	audio_end

SFXDamage_Channel2:
	tempo_mode TEMPO_06
	sustain_length $00
	instrument INSTRUMENT_1C
	volume 15
	pan PAN_CENTER
	base_note D#1
	note_long 7, 0
	audio_repeat 6
	pitch 85
	sustain $02
	volume_shift -1
	audio_repeat_end
	volume 8
	audio_repeat 6
	note -15, 0
	note -14, 0
	volume_shift -1
	audio_repeat_end
	audio_end

SFXEnterDoor_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1D
AudioScript_1731b:
	volume 5
	sustain_length $00
	base_note G_4
	pan PAN_CENTER
	note 12, 1
	volume 8
	note 9, 1
	volume 15
	note 10, 1
	volume 14
	note 7, 1
	volume_shift -1
	note 8, 1
	volume_shift -2
	note 5, 1
	volume_shift -2
	note 6, 1
	volume_shift -2
	note 3, 1
	volume_shift -2
	note 4, 1
	instrument INSTRUMENT_1D
	volume 3
	note 1, 1
	volume_shift -2
	note 2, 2
	volume 3
	note 12, 1
	note 9, 1
	note 10, 1
	volume 2
	note 7, 1
	note 8, 1
	note 5, 1
	note 6, 1
	volume 1
	note 3, 1
	note 4, 1
	note 1, 1
	note 2, 1
	audio_end

SFXEnterDoor_Channel2:
	tempo_mode TEMPO_06
	rest_long 2
	instrument INSTRUMENT_1B
	audio_jump AudioScript_1731b

SFX08_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1B
	sustain_length $00
	base_note D#3
	volume 15
	pan PAN_CENTER
	note -3, 0
	note -2, 0
	note -4, 0
	volume 0
	rest 0
	volume 15
	note 5, 0
	note 7, 0
	note 6, 0
	note 8, 0
	audio_end

SFXPowerUp_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1D
	volume 4
	pan PAN_CENTER
	sustain_length $78
	base_note D#3
	note_long 7, 0
	audio_repeat 6
	pitch -18
	sustain $01
	volume_shift -4
	sustain $01
	volume_shift 6
	audio_repeat_end
	audio_end

SFXExplosion_Channel1:
	tempo_mode TEMPO_06
	volume 15
	sustain_length $00
	pan PAN_CENTER
	instrument INSTRUMENT_1B
	note 14, 0
	note 12, 0
	note 5, 0
	note 14, 0
	note 15, 1
	note 9, 1
	note 10, 1
	note 11, 0
	note 12, 0
	note 13, 0
	note 14, 0
	note 14, 0
	audio_repeat 3
	note 11, 1
	volume_shift -1
	note 12, 1
	volume_shift -1
	note 13, 1
	volume_shift -2
	note 14, 1
	volume_shift -1
	audio_repeat_end
	audio_end

SFXRestoreHP_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1C
	sustain_length $00
	volume 14
	base_note D#5
	pan PAN_CENTER
	note 7, 1
	volume_shift -8
	note -5, 1
	volume_shift 8
	note 2, 1
	volume_shift -8
	note 7, 1
	volume_shift 8
	note 2, 1
	audio_end

SFXWarpStar_Channel1:
	tempo_mode TEMPO_06
	audio_call AudioScript_173df
	pan PAN_LEFT
	audio_call AudioScript_17402
	audio_end

AudioScript_173df:
	volume 15
	base_note G#4
	sustain_length $00
	pan PAN_CENTER
	instrument INSTRUMENT_1D
	note 0, 1
	note 4, 1
	note 7, 1
	note 9, 1
	note 12, 1
	rest 0
	volume 10
	audio_repeat 4
	note 0, 1
	note 4, 1
	note 9, 1
	note 12, 1
	volume_shift -2
	audio_repeat_end
	volume 2
	note 1, 1
	note 5, 1
	note 8, 1
	note 10, 1
	note 13, 1
	audio_ret

AudioScript_17402:
	note 2, 1
	note 6, 1
	note 9, 1
	note 11, 1
	note 14, 1
	audio_repeat 4
	audio_repeat 2
	note 3, 1
	note 7, 1
	note 10, 1
	note 12, 1
	note 15, 1
	audio_repeat_end
	volume_shift 2
	audio_repeat_end
	volume 10
	audio_repeat 10
	audio_repeat 2
	note_long 3, 0
	pitch -2
	sustain $02
	note_long 7, 0
	pitch -2
	sustain $02
	note_long 10, 0
	pitch -2
	sustain $02
	note_long 12, 0
	pitch -2
	sustain $02
	note_long 15, 0
	pitch -2
	sustain $02
	audio_repeat_end
	volume_shift -1
	audio_repeat_end
	audio_ret

SFXWarpStar_Channel2:
	rest_long 2
	tempo_mode TEMPO_06
	audio_call AudioScript_173df
	pan PAN_RIGHT
	audio_call AudioScript_17402
	audio_end

SFX13_Channel1:
	tempo_mode TEMPO_06
	pan PAN_LEFT
AudioScript_1744e:
	volume 1
	instrument INSTRUMENT_1D
	sustain_length $00
	base_note G#4
	audio_repeat 6
	audio_call AudioScript_1747a
	volume_shift 1
	audio_repeat_end
	audio_call AudioScript_17499
	audio_repeat 6
	audio_call AudioScript_174d6
	volume_shift -1
	audio_repeat_end
	volume 2
	audio_call AudioScript_174d6
	audio_call AudioScript_174d6
	volume 1
	audio_repeat 5
	audio_call AudioScript_174d6
	audio_repeat_end
	audio_end

AudioScript_1747a:
	note_long 3, 0
	pitch -3
	sustain $02
	note_long 7, 0
	pitch -3
	sustain $02
	note_long 10, 0
	pitch -3
	sustain $02
	note_long 12, 0
	pitch -3
	sustain $02
	note_long 15, 0
	pitch -3
	sustain $02
	audio_ret

AudioScript_17499:
	note_long 3, 0
	pitch -2
	sustain $02
	note_long 7, 0
	pitch -2
	sustain $02
	note_long 10, 0
	pitch -2
	sustain $02
	note_long 12, 0
	pitch -2
	sustain $02
	note_long 15, 0
	pitch -2
	sustain $02
	note_long 3, 0
	pitch -1
	sustain $02
	note_long 7, 0
	pitch -1
	sustain $02
	note_long 10, 0
	pitch -1
	sustain $02
	note_long 12, 0
	pitch -1
	sustain $02
	note_long 15, 0
	pitch -1
	sustain $02
	audio_ret

AudioScript_174d6:
	note 3, 1
	note 7, 1
	note 10, 1
	note 12, 1
	note 15, 1
	audio_ret

SFX13_Channel2:
	tempo_mode TEMPO_06
	pan PAN_RIGHT
	rest 1
	audio_jump AudioScript_1744e

SFX14_Channel1:
	tempo_mode TEMPO_06
	volume 15
	instrument INSTRUMENT_1B
	sustain_length $00
	note 5, 0
	note 9, 0
	note 6, 0
	note 15, 0
	audio_repeat 8
	note 14, 0
	note 10, 0
	volume_shift -2
	audio_repeat_end
	audio_end

SFXPuff_Channel1:
	tempo_mode TEMPO_06
	volume 15
	instrument INSTRUMENT_1D
	sustain_length $00
	pan PAN_CENTER
	base_note C_3
	note_long 10, 0
	pitch 20
	sustain $01
	note 11, 0
	volume 7
	note 7, 0
	note 3, 0
	volume 5
	note 0, 0
	note -3, 0
	note -6, 0
	audio_end

SFXStarSpit_Channel1:
	tempo_mode TEMPO_06
	volume 15
	instrument INSTRUMENT_1D
	sustain_length $00
	base_note E_4
	pan PAN_CENTER
	note 15, 0
	rest 0
	note 14, 0
	rest 0
	note 13, 0
	volume_shift -2
	note 10, 0
	volume_shift -2
	note 7, 0
	volume_shift -2
	note 4, 0
	volume_shift -2
	note 1, 0
	volume_shift -2
	note -2, 0
	volume_shift -1
	note -5, 0
	volume_shift -1
	note -7, 0
	note -9, 0
	volume_shift -1
	note -11, 0
	note -13, 0
	volume 1
	note -14, 0
	audio_end

SFX17_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1B
	sustain_length $00
	volume 15
	pan PAN_CENTER
	note 12, 0
	volume 15
	audio_repeat 6
	note 13, 0
	note 14, 0
	volume_shift -3
	audio_repeat_end
	audio_end

SFX18_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1E
	pan PAN_CENTER
	sustain_length $00
	volume 15
	base_note A#5
	note_long -2, 0
	audio_repeat 5
	pitch 29
	sustain $01
	volume_shift -2
	audio_repeat_end
	volume 15
	note_long 4, 0
	audio_repeat 5
	pitch 27
	sustain $01
	volume_shift -2
	audio_repeat_end
	audio_end

SFX19_Channel1:
	tempo_mode TEMPO_06
	volume 7
	pan PAN_CENTER
	instrument INSTRUMENT_1B
	sustain_length $00
	audio_repeat 4
	note 11, 0
	note 10, 0
	volume_shift 2
	audio_repeat_end
	audio_repeat 8
	note 11, 0
	note 12, 0
	volume_shift -2
	audio_repeat_end
	audio_end

SFX20_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1B
	sustain_length $00
	volume 13
	pan PAN_CENTER
	note 9, 0
	note 3, 0
	volume_shift -5
	note 6, 0
	volume_shift 5
	note 9, 0
	note 6, 0
	note 3, 0
	note 15, 0
	volume 10
	audio_repeat 10
	note 1, 0
	note 0, 1
	volume_shift -1
	audio_repeat_end
	audio_end

SFXLoseLife_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1B
	sustain_length $00
	volume 15
	pan PAN_CENTER
	base_note D#3
	note 4, 0
	note 5, 0
	note 6, 0
	note 7, 0
	note 8, 0
	note 9, 0
	note 10, 0
	note 11, 0
	note 12, 0
	note 13, 0
	note 14, 0
	note 15, 1
	audio_end

SFX1Up_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1D
AudioScript_175d3:
	sustain_length $00
	pan PAN_CENTER
	base_note A#4
	volume 15
	note -5, 4
	note 0, 4
	note 4, 4
	note 7, 5
	rest 5
	note 12, 5
	rest 5
	note 6, 0
	note_long 7, 12
	rest 5
	audio_end

SFX1Up_Channel2:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_2E
	audio_jump AudioScript_175d3

SFX23_Channel1:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1B
	volume 15
	sustain_length $00
	pan PAN_CENTER
	audio_repeat 8
	note 14, 0
	note 13, 0
	note 14, 0
	note 13, 0
	volume_shift -2
	audio_repeat_end
	audio_end

SFX23_Channel2:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1D
	volume 15
	sustain_length $00
	pan PAN_CENTER
	base_note A#1
	audio_repeat 8
	note -15, 0
	note -13, 0
	note -14, 0
	note -12, 0
	volume_shift -2
	audio_repeat_end
	audio_end

SFX23_Channel3:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1D
	volume 15
	sustain_length $00
	pan PAN_CENTER
	base_note A#1
	audio_repeat 8
	note -14, 0
	note -12, 0
	note -13, 0
	note -11, 0
	volume_shift -2
	audio_repeat_end
	audio_end

SFXPauseOff_Channel1:
	audio_call AudioScript_17632
	audio_end

AudioScript_17632:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1D
	volume 15
	sustain_length $00
	pan PAN_CENTER
	base_note D#5
	audio_repeat 2
	note -3, 3
	note 0, 1
	note 2, 1
	note 5, 3
	rest 1
	volume_shift -12
	audio_repeat_end
	audio_ret

SFXPauseOff_Channel2:
	audio_call AudioScript_1764d
	audio_end

AudioScript_1764d:
	tempo_mode TEMPO_06
	instrument INSTRUMENT_1D
	volume 14
	sustain_length $00
	pan PAN_CENTER
	base_note D#5
	audio_repeat 2
	note_long -3, 0
	pitch 1
	sustain $04
	note_long 0, 0
	pitch 1
	sustain $02
	note_long 2, 0
	pitch 1
	sustain $02
	note_long 5, 0
	pitch 1
	sustain $04
	rest 1
	volume_shift -12
	audio_repeat_end
	audio_ret

SFXPauseOff_Channel3:
	rest_long 1
	audio_end

SFXPauseOff_Channel4:
	note_long 15, 1
	audio_end

SFX25_Channel1:
	tempo_mode TEMPO_06
	volume 15
	sustain_length $00
	instrument INSTRUMENT_1B
	pan PAN_CENTER
	note 8, 0
	note 7, 0
	note 6, 0
	note 5, 0
	note 4, 0
	note 3, 0
	note 2, 0
	audio_repeat 6
	note 1, 0
	note 0, 0
	note 1, 0
	note 0, 0
	note 1, 0
	note 2, 0
	note 1, 0
	note 0, 0
	audio_repeat_end
	audio_repeat 15
	note 1, 1
	note 0, 1
	volume_shift -1
	audio_repeat_end
	audio_end

SFXCursor_Channel1:
	tempo_mode TEMPO_06
	volume 15
	instrument INSTRUMENT_1D
	pan PAN_CENTER
	sustain_length $00
	base_note D#5
	note 2, 1
	audio_end

SFXGameStart_Channel1:
	tempo_mode TEMPO_06
	volume 15
	instrument INSTRUMENT_1D
	pan PAN_CENTER
	sustain_length $00
	base_note D#5
	note -5, 1
	note 0, 1
	note 4, 1
	note 7, 1
	audio_end

SFX28_Channel1:
	tempo_mode TEMPO_06
	volume 15
	instrument INSTRUMENT_1B
	pan PAN_CENTER
	sustain_length $00
	note 5, 0
	note 14, 0
	note 8, 0
	audio_repeat 3
	note 2, 0
	note 4, 0
	volume_shift -4
	audio_repeat_end
	audio_end

SFX29_Channel1:
	tempo_mode TEMPO_06
	volume 15
	sustain_length $00
	instrument INSTRUMENT_1B
	pan PAN_CENTER
	note 11, 0
	note 12, 0
	note 13, 0
	audio_repeat 3
	note 13, 0
	note 14, 0
	audio_repeat_end
	note 3, 0
	note 4, 1
	audio_repeat 6
	note 5, 1
	note 6, 1
	note 7, 0
	note 8, 0
	note 9, 0
	note 10, 0
	note 11, 0
	note 12, 0
	note 13, 0
	note 14, 2
	volume_shift -3
	audio_repeat_end
	audio_end

SFX29_Channel2:
	tempo_mode TEMPO_06
	volume 15
	sustain_length $00
	instrument INSTRUMENT_1D
	pan PAN_CENTER
	base_note D#2
	audio_repeat 4
	note_long 0, 0
	audio_repeat 13
	pitch 90
	sustain $01
	audio_repeat_end
	volume_shift -3
	sustain $02
	audio_repeat_end
	audio_end

SFX29_Channel3:
	tempo_mode TEMPO_06
	volume 15
	sustain_length $00
	instrument INSTRUMENT_1E
	pan PAN_CENTER
	base_note D#2
	audio_repeat 4
	note_long 5, 0
	audio_repeat 13
	pitch 90
	sustain $01
	audio_repeat_end
	volume_shift -3
	sustain $02
	audio_repeat_end
	audio_end

SFX30_Channel1:
	tempo_mode TEMPO_06
	pan PAN_CENTER
	volume 13
	sustain_length $00
	instrument INSTRUMENT_1D
	base_note D#3
	note -12, 0
	note -13, 0
	rest 1
	note 11, 0
	note 12, 0
	note 14, 0
	audio_end

SFX31_Channel1:
	tempo_mode TEMPO_06
	volume 1
	instrument INSTRUMENT_1D
	sustain_length $00
	base_note D#2
	pan PAN_CENTER
	note_long 11, 0
	audio_repeat 6
	pitch -13
	sustain $01
	volume_shift 2
	audio_repeat_end
	audio_repeat 12
	pitch -6
	sustain $01
	volume_shift -1
	audio_repeat_end
	audio_end

SFXBossDefeat_Channel1:
	tempo_mode TEMPO_06
	volume 15
	instrument INSTRUMENT_1B
	sustain_length $00
	pan PAN_CENTER
	note 5, 0
	note 3, 0
	note 6, 0
	note 4, 0
	note 6, 0
	note 15, 1
	note 5, 0
	note 3, 0
	audio_call AudioScript_17788
	volume 6
	audio_repeat 3
	audio_call AudioScript_17788
	volume_shift -2
	audio_repeat_end
	audio_end

AudioScript_17788:
	note 5, 0
	note 6, 0
	note 7, 0
	note 8, 0
	note 9, 0
	note 10, 1
	note 11, 0
	note 12, 0
	note 11, 0
	note 12, 0
	note 13, 0
	note 12, 0
	note 13, 0
	note 14, 0
	note 13, 0
	audio_ret

SFXPauseOn_Channel1:
	audio_call AudioScript_17632
.audio_1779b
	rest_long 20
	audio_jump .audio_1779b

SFXPauseOn_Channel2:
	audio_call AudioScript_1764d
.audio_177a3
	rest_long 20
	audio_jump .audio_177a3

SFXPauseOn_Channel3:
.audio_177a8
	rest_long 20
	audio_jump .audio_177a8

SFXPauseOn_Channel4:
.audio_177ad
	note_long 15, 20
	audio_jump .audio_177ad

SFX34_Channel1:
	base_note A#2
	audio_jump AudioScript_171e2

SFX35_Channel1:
	base_note F_2
	audio_call AudioScript_17246
	base_note F#1
	audio_call AudioScript_17256
	audio_end
