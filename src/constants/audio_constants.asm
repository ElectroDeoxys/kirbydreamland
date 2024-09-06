; channel
	const_def
	const CHANNEL1 ; 0
	const CHANNEL2 ; 1
	const CHANNEL3 ; 2
	const CHANNEL4 ; 3
DEF NUM_SFX_CHANNELS EQU const_value
	const CHANNEL5 ; 4
	const CHANNEL6 ; 5
	const CHANNEL7 ; 6
	const CHANNEL8 ; 7
DEF NUM_MUSIC_CHANNELS EQU const_value - NUM_SFX_CHANNELS
DEF NUM_CHANNELS EQU const_value

; channelX_struct constants
RSRESET
DEF CHANNEL1_SWEEP     RB ; $00
DEF CHANNEL1_LENGTH    RB ; $01
DEF CHANNEL1_ENVELOPE  RB ; $02
DEF CHANNEL1_FREQUENCY RW ; $03
DEF CHANNEL1_UNUSED    RB ; $05

DEF CHANNEL2_LENGTH    RB ; $06
DEF CHANNEL2_ENVELOPE  RB ; $07
DEF CHANNEL2_FREQUENCY RW ; $08

DEF CHANNEL3_ENABLED   RB ; $0a
DEF CHANNEL3_LENGTH    RB ; $0b
DEF CHANNEL3_LEVEL     RB ; $0c
DEF CHANNEL3_FREQUENCY RW ; $0d
DEF CHANNEL3_UNUSED    RB ; $0f

DEF CHANNEL4_LENGTH    RB ; $10
DEF CHANNEL4_ENVELOPE  RB ; $11
DEF CHANNEL4_FREQUENCY RW ; $12

; generic channel offsets
	const_def
	const CHANNEL_SELECTOR_ENABLED   ; 0
	const CHANNEL_SELECTOR_LENGTH    ; 1
	const CHANNEL_SELECTOR_ENVELOPE  ; 2
	const CHANNEL_SELECTOR_FREQUENCY ; 3

; flags for wSFXActiveChannelFlags
	const_def
	const SFXFLAG_SQUARE1_F ; 0
	const SFXFLAG_SQUARE2_F ; 1
	const_skip
	const SFXFLAG_NOISE_F   ; 3
	const SFXFLAG_WAVE_F    ; 4

DEF SFXFLAG_SQUARE1 EQU 1 << SFXFLAG_SQUARE1_F ; $01
DEF SFXFLAG_SQUARE2 EQU 1 << SFXFLAG_SQUARE2_F ; $02
DEF SFXFLAG_NOISE   EQU 1 << SFXFLAG_NOISE_F   ; $08
DEF SFXFLAG_WAVE    EQU 1 << SFXFLAG_WAVE_F    ; $10

; for wAudioCommandDurations
DEF CHANNEL_OFF EQU 0

DEF VOLUME_SO1_LEVEL EQU %00000111
DEF VOLUME_SO2_LEVEL EQU %01110000
DEF MAX_VOLUME       EQU VOLUME_SO1_LEVEL | VOLUME_SO2_LEVEL

; wWaveSample constants
	const_def
	const WAVEFORM_M_SHAPE ; $0
	const WAVEFORM_SQUARE  ; $1
	const WAVEFORM_SINE    ; $2
DEF NUM_WAVEFORMS EQU const_value

DEF WAVEDUTY_12_5 EQU AUDLEN_DUTY_12_5 >> 6
DEF WAVEDUTY_25   EQU AUDLEN_DUTY_25 >> 6
DEF WAVEDUTY_50   EQU AUDLEN_DUTY_50 >> 6
DEF WAVEDUTY_75   EQU AUDLEN_DUTY_75 >> 6

DEF SFX_MINIMUM_PRIORITY EQU 255

DEF PAN_LEFT   EQU %01
DEF PAN_RIGHT  EQU %10
DEF PAN_CENTER EQU %11

	const_def
	const C_0 ; $00
	const C#0 ; $01
	const D_0 ; $02
	const D#0 ; $03
	const E_0 ; $04
	const F_0 ; $05
	const F#0 ; $06
	const G_0 ; $07
	const G#0 ; $08
	const A_0 ; $09
	const A#0 ; $0a
	const B_0 ; $0b
	const C_1 ; $0c
	const C#1 ; $0d
	const D_1 ; $0e
	const D#1 ; $0f
	const E_1 ; $10
	const F_1 ; $11
	const F#1 ; $12
	const G_1 ; $13
	const G#1 ; $14
	const A_1 ; $15
	const A#1 ; $16
	const B_1 ; $17
	const C_2 ; $18
	const C#2 ; $19
	const D_2 ; $1a
	const D#2 ; $1b
	const E_2 ; $1c
	const F_2 ; $1d
	const F#2 ; $1e
	const G_2 ; $1f
	const G#2 ; $20
	const A_2 ; $21
	const A#2 ; $22
	const B_2 ; $23
	const C_3 ; $24
	const C#3 ; $25
	const D_3 ; $26
	const D#3 ; $27
	const E_3 ; $28
	const F_3 ; $29
	const F#3 ; $2a
	const G_3 ; $2b
	const G#3 ; $2c
	const A_3 ; $2d
	const A#3 ; $2e
	const B_3 ; $2f
	const C_4 ; $30
	const C#4 ; $31
	const D_4 ; $32
	const D#4 ; $33
	const E_4 ; $34
	const F_4 ; $35
	const F#4 ; $36
	const G_4 ; $37
	const G#4 ; $38
	const A_4 ; $39
	const A#4 ; $3a
	const B_4 ; $3b
	const C_5 ; $3c
	const C#5 ; $3d
	const D_5 ; $3e
	const D#5 ; $3f
	const E_5 ; $40
	const F_5 ; $41
	const F#5 ; $42
	const G_5 ; $43
	const G#5 ; $44
	const A_5 ; $45
	const A#5 ; $46
	const B_5 ; $47

	const_def
	const TEMPO_00 ; $0
	const TEMPO_01 ; $1
	const TEMPO_02 ; $2
	const TEMPO_03 ; $3
	const TEMPO_04 ; $4
	const TEMPO_05 ; $5
	const TEMPO_06 ; $6
	const TEMPO_07 ; $7
	const TEMPO_08 ; $8
	const TEMPO_09 ; $9
	const TEMPO_10 ; $a
	const TEMPO_11 ; $b
DEF NUM_TEMPO_MODES EQU const_value

	const_def
	const INSTRUMENT_00 ; $00
	const INSTRUMENT_01 ; $01
	const INSTRUMENT_02 ; $02
	const INSTRUMENT_03 ; $03
	const INSTRUMENT_04 ; $04
	const INSTRUMENT_05 ; $05
	const INSTRUMENT_06 ; $06
	const INSTRUMENT_07 ; $07
	const INSTRUMENT_08 ; $08
	const INSTRUMENT_09 ; $09
	const INSTRUMENT_0A ; $0a
	const INSTRUMENT_0B ; $0b
	const INSTRUMENT_0C ; $0c
	const INSTRUMENT_0D ; $0d
	const INSTRUMENT_0E ; $0e
	const INSTRUMENT_0F ; $0f
	const INSTRUMENT_10 ; $10
	const INSTRUMENT_11 ; $11
	const INSTRUMENT_12 ; $12
	const INSTRUMENT_13 ; $13
	const INSTRUMENT_14 ; $14
	const INSTRUMENT_15 ; $15
	const INSTRUMENT_16 ; $16
	const INSTRUMENT_17 ; $17
	const INSTRUMENT_18 ; $18
	const INSTRUMENT_19 ; $19
	const INSTRUMENT_1A ; $1a
	const INSTRUMENT_1B ; $1b
	const INSTRUMENT_1C ; $1c
	const INSTRUMENT_1D ; $1d
	const INSTRUMENT_1E ; $1e
	const INSTRUMENT_1F ; $1f
	const INSTRUMENT_20 ; $20
	const INSTRUMENT_21 ; $21
	const INSTRUMENT_22 ; $22
	const INSTRUMENT_23 ; $23
	const INSTRUMENT_24 ; $24
	const INSTRUMENT_25 ; $25
	const INSTRUMENT_26 ; $26
	const INSTRUMENT_27 ; $27
	const INSTRUMENT_28 ; $28
	const INSTRUMENT_29 ; $29
	const INSTRUMENT_2A ; $2a
	const INSTRUMENT_2B ; $2b
	const INSTRUMENT_2C ; $2c
	const INSTRUMENT_2D ; $2d
	const INSTRUMENT_2E ; $2e
	const INSTRUMENT_2F ; $2f
	const INSTRUMENT_30 ; $30
	const INSTRUMENT_31 ; $31
	const INSTRUMENT_32 ; $32
	const INSTRUMENT_33 ; $33
	const INSTRUMENT_34 ; $34
	const INSTRUMENT_35 ; $35
DEF NUM_INSTRUMENTS EQU const_value
