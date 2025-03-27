InitAudio::
	; enable sound
	ld a, AUDENA_ON
	ldh [rAUDENA], a

	; set volume to maximum
	ld a, MAX_VOLUME
	ldh [rAUDVOL], a

	; set panning
	ld a, AUDTERM_1_RIGHT | AUDTERM_2_RIGHT | AUDTERM_3_RIGHT | AUDTERM_4_RIGHT | AUDTERM_1_LEFT | AUDTERM_2_LEFT | AUDTERM_3_LEFT | AUDTERM_4_LEFT
	ldh [rAUDTERM], a

	ld a, $ff
	ld [wde01], a
	ld [wde02], a
	; undefined wave sample
	ld [wWaveSample], a

	; reset channel configurations
	ld hl, wChannels
	ld b, wChannelsEnd - wChannels
	ld a, $aa ; invalid fill value
.loop_fill
	ld [hli], a
	dec b
	jr nz, .loop_fill

	; loads triangle wave sample for Channel 3
	ld hl, TriangleWaveSample
	call ExecuteInstrumentCommands.LoadWaveSample

	; no music and no SFX
	ld a, MUSIC_NONE
	call _PlayMusic
	ld a, SFX_NONE
	call _PlaySFX

	call ApplyChannelConfigurations

	; restart all channel frequencies
	ld hl, rAUD1HIGH
	set 7, [hl]
	ld hl, rAUD2HIGH
	set 7, [hl]
	ld hl, rAUD3HIGH
	set 7, [hl]
	ld hl, rAUD4GO
	set 7, [hl]

	ld a, $13
	ld [wded3], a
	ld a, $24
	ld [wded4], a
	ret

; input:
; - a = SFX_* constant
_PlaySFX::
	ld e, a
	cp SFX_NONE
	jp z, ClearAllSFXChannels
	ld d, $00
	ld a, [wSFXActiveChannelFlags]
	and a
	jr z, .play_sfx
	ld hl, SFXRequiredChannels
	add hl, de
	and [hl]
	jr z, .play_sfx ; no overlap

	; SFX already playing, if it's higher priority
	; then exit and don't play SFX
	ld bc, CHANNEL4
.loop_channel_priorities
	ld hl, SFXRequiredChannels
	add hl, de
	ld a, [hl]
	ld hl, wChannelSFXFlags
	add hl, bc
	and [hl]
	jr z, .next_channel_priority
	ld hl, wChannelSoundPriorities
	add hl, bc
	ld a, [hl]
	ld hl, SFXPriorities
	add hl, de
	cp [hl]
	ret c ; current loaded SFX has higher priority
	ld hl, wAudioCommandDurations
	add hl, bc
	ld [hl], CHANNEL_OFF
.next_channel_priority
	dec c
	bit 7, c
	jr z, .loop_channel_priorities

.play_sfx
	ld hl, SFXRequiredChannels
	add hl, de
	ld a, [hl]
	ld [wde04], a
	ld hl, SFXPriorities
	add hl, de
	ld a, [hl]
	ld c, a
	ld hl, SFXHeaders
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld a, [de]
	ld h, a ; num channels
	ld l, c ; sfx priority
	push hl
	ld bc, CHANNEL4
.loop_sfx_channels
	ld hl, wAudioCommandDurations
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .next_channel
	call InitChannel
	ld hl, sp+$00
	ld a, [hl]
	ld hl, wChannelSoundPriorities
	add hl, bc
	ld [hl], a
	ld a, [wde04]
	ld hl, wChannelSFXFlags
	add hl, bc
	ld [hl], a
	pop hl
	dec h
	push hl
	jr z, .done
.next_channel
	dec c
	bit 7, c
	jr z, .loop_sfx_channels
.done
	pop hl
;	fallthrough

UpdateActiveSFXChannels:
	ld a, [wChannelSFXFlags + CHANNEL1]
	ld hl, wChannelSFXFlags + CHANNEL2
	ld c, NUM_SFX_CHANNELS - 1
.loop
	or [hl]
	inc hl
	dec c
	jr nz, .loop
	ld [wSFXActiveChannelFlags], a
	ret

ClearAllSFXChannels:
	ld bc, CHANNEL4
.loop_sfx_channels
	ld hl, wAudioCommandDurations
	add hl, bc
	ld [hl], b ; CHANNEL_OFF
	ld hl, wChannelSFXFlags
	add hl, bc
	ld [hl], b ; 0
	ld hl, wChannelSoundPriorities
	add hl, bc
	ld [hl], SFX_MINIMUM_PRIORITY
	dec c
	bit 7, c
	jr z, .loop_sfx_channels

	ld hl, ChannelDefaultConfigs
	ld de, wSFXChannels
	ld c, wSFXChannelsEnd - wSFXChannels
.loop_copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop_copy
	ret

ChannelDefaultConfigs:
	db AUD1SWEEP_DOWN, AUDLEN_DUTY_12_5, AUDENV_UP, $00, AUDHIGH_RESTART, $00
	db AUDLEN_DUTY_12_5, AUDENV_UP, $00, AUDHIGH_RESTART
	db AUD3ENA_ON, $00, AUD3LEVEL_MUTE, $00, AUDHIGH_RESTART, $00
	db $00, AUDENV_UP, AUD4POLY_15STEP, $80

; input:
; - [de] = audio commands
; - bc = channel
InitChannel:
	ld hl, wChannelBaseNotes
	add hl, bc
	ld [hl], C_3

	xor a
	ld hl, wInstrumentSustainLength
	add hl, bc
	ld [hl], a ; $00
	ld hl, wChannelVolumes
	add hl, bc
	ld [hl], a ; $00
	ld hl, wChannelInstruments
	add hl, bc
	ld [hl], a ; $00
	ld hl, wChannelTempoModes
	add hl, bc
	ld [hl], a ; $00
	ld hl, wNoteFrequencyTables
	add hl, bc
	ld [hl], a ; $00

	ld hl, ChannelAudioStackOffsets
	add hl, bc
	ld a, [hl]
	ld hl, wAudioStackPointers
	add hl, bc
	ld [hl], a

	; set command pointer for this channel
	inc de
	ld a, [de]
	ld hl, wAudioCommandPointersLo
	add hl, bc
	ld [hl], a
	inc de
	ld a, [de]
	ld hl, wAudioCommandPointersHi
	add hl, bc
	ld [hl], a

	inc de
	ld a, [de]
	sra a
	sra a ; /4
	add LOW(ChannelSelectorOffsets)
	ld l, a
	ld h, HIGH(ChannelSelectorOffsets)
	incc h
	ld a, [hl]
	ld hl, wChannelSelectorOffsets
	add hl, bc
	ld [hl], a

	; set this channel active
	ld hl, wAudioCommandDurations
	add hl, bc
	ld [hl], 1
	ld hl, wInstrumentSustain
	add hl, bc
	ld [hl], $01
	ret

ChannelSelectorOffsets:
	db CHANNEL1_LENGTH - 1
	db CHANNEL2_LENGTH - 1
	db $ff
	db CHANNEL4_LENGTH - 1
	db CHANNEL3_LENGTH - 1

; input:
; - a = MUSIC_* constant
_PlayMusic::
	ld b, a
	ld hl, wAudioCommandDurations + CHANNEL5
	ld c, NUM_MUSIC_CHANNELS
	xor a ; CHANNEL_OFF
.loop_clear
	ld [hli], a
	dec c
	jr nz, .loop_clear

	ld hl, ChannelDefaultConfigs
	ld de, wMusicChannels
	ld c, wMusicChannelsEnd - wMusicChannels
.loop_copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop_copy
	ld a, MUSIC_NONE
	cp b
	ret z ; done

	ld e, b
	ld d, $00
	ld hl, MusicHeaders
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld a, [de]
	ld h, a ; num channels
	push hl
	ld bc, CHANNEL8
.loop
	ld hl, wAudioCommandDurations
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .next
	call InitChannel
	pop hl
	dec h
	push hl
	jr z, .done
.next
	dec c
	ld a, CHANNEL5 - 1
	cp c
	jr nz, .loop
.done
	pop hl
	ret

UpdateAudio::
	ld b, CHANNEL8
.loop_channels
	ld h, HIGH(wAudioCommandDurations)
	ld a, LOW(wAudioCommandDurations)
	add b
	ld l, a
	ld a, [hl]
	and a
	jr z, .next_channel ; inactive
	ld a, b
	cp CHANNEL4 + 1
	ld a, LOW(wSFXChannels) ; sfx
	jr c, .got_channel_config_ptr
	ld a, LOW(wMusicChannels) ; music
.got_channel_config_ptr
	ld [wChannelConfigLowByte], a

	ld h, HIGH(wAudioCommandPointersLo)
	ld a, LOW(wAudioCommandPointersLo)
	add b
	ld l, a
	push hl
	ld e, [hl]
	add wAudioCommandPointersHi - wAudioCommandPointersLo
	ld l, a ; wAudioCommandPointersHi
	push hl
	ld d, [hl]
	push bc
	call ExecuteAudioCommands
	pop bc
	pop hl
	ld [hl], d ; wAudioCommandPointersHi
	pop hl
	ld [hl], e ; wAudioCommandPointersLo

	call UpdateInstrumentSustain
	ld h, HIGH(wInstrumentAudioCommandPointersLo)
	ld a, LOW(wInstrumentAudioCommandPointersLo)
	add b
	ld l, a
	push hl
	ld e, [hl]
	add wInstrumentAudioCommandPointersHi - wInstrumentAudioCommandPointersLo
	ld l, a
	push hl
	ld d, [hl]
	push bc
	call ExecuteInstrumentCommands
	pop bc
	pop hl
	ld [hl], d
	pop hl
	ld [hl], e
.next_channel
	dec b
	bit 7, b
	jr z, .loop_channels

	; reset unused sfx channels
	ld b, CHANNEL4
.loop_sfx_channels
	ld h, HIGH(wAudioCommandDurations)
	ld a, LOW(wAudioCommandDurations)
	add b
	ld l, a
	ld a, [hl]
	and a
	jr nz, .next_sfx_channel
	ld a, LOW(wChannelSoundPriorities)
	add b
	ld l, a
	ld [hl], SFX_MINIMUM_PRIORITY
	add wChannelSFXFlags - wChannelSoundPriorities
	ld l, a
	ld [hl], $00
.next_sfx_channel
	dec b
	bit 7, b
	jr z, .loop_sfx_channels
	call UpdateActiveSFXChannels
;	fallthrough

; actually applies the configurations of audio channels
ApplyChannelConfigurations:
	ld de, wMusicChannel1
	ld a, [wSFXActiveChannelFlags]
	bit SFXFLAG_SQUARE1_F, a
	jr z, .no_sfx_1
	ld e, LOW(wSFXChannel1)
.no_sfx_1
	ld b, FALSE
	ld hl, wChannels
	ld c, LOW(rAUD1SWEEP)
.loop_channel_1
	ld a, [de]
	cp [hl]
	jr z, .next_channel_1
	ld [hl], a
	ld [$ff00+c], a
	ld a, c
	cp LOW(rAUD1ENV)
	jr nz, .next_channel_1
	inc b ; envelope is changed
.next_channel_1
	inc l
	inc e
	inc c
	ld a, c
	cp LOW(rAUD1HIGH + 1)
	jr nz, .loop_channel_1
	dec b
	jr nz, .channel_2
	; envelope changed, need to restart
	ld a, [wChannel1FreqHi]
	set 7, a
	ldh [rAUD1HIGH], a

.channel_2
	ld de, wMusicChannel2
	ld a, [wSFXActiveChannelFlags]
	bit SFXFLAG_SQUARE2_F, a
	jr z, .no_sfx_2
	ld e, LOW(wSFXChannel2)
.no_sfx_2
	ld b, FALSE
	ld hl, wChannel2
	ld c, LOW(rAUD2LEN)
.loop_channel_2
	ld a, [de]
	cp [hl]
	jr z, .next_channel_2
	ld [hl], a
	ld [$ff00+c], a
	ld a, c
	cp LOW(rAUD2ENV)
	jr nz, .next_channel_2
	inc b ; envelope is changed
.next_channel_2
	inc l
	inc e
	inc c
	ld a, c
	cp LOW(rAUD2HIGH + 1)
	jr nz, .loop_channel_2
	dec b
	jr nz, .channel_3
	; envelope changed, need to restart
	ld a, [wChannel2FreqHi]
	set 7, a
	ldh [rAUD2HIGH], a

.channel_3
	ld de, wMusicChannel3
	ld a, [wSFXActiveChannelFlags]
	bit SFXFLAG_WAVE_F, a
	jr z, .no_sfx_3
	ld e, LOW(wSFXChannel3)
.no_sfx_3
	ld hl, wChannel3
	ld c, LOW(rAUD3ENA)
.loop_channel_3
	ld a, [de]
	cp [hl]
	jr z, .next_channel_3
	ld [hl], a
	ld [$ff00+c], a
.next_channel_3
	inc l
	inc e
	inc c
	ld a, c
	cp LOW(rAUD3HIGH + 1)
	jr nz, .loop_channel_3

	ld de, wMusicChannel4
	ld a, [wSFXActiveChannelFlags]
	bit SFXFLAG_NOISE_F, a
	jr z, .no_sfx_4
	ld e, LOW(wSFXChannel4)
.no_sfx_4
	ld b, FALSE
	ld hl, wChannel4
	ld c, LOW(rAUD4LEN)
.loop_channel_4
	ld a, [de]
	cp [hl]
	jr z, .next_channel_4
	ld [hl], a
	ld [$ff00+c], a
	ld a, c
	cp LOW(rAUD4ENV)
	jr nz, .next_channel_4
	inc b ; envelope is changed
.next_channel_4
	inc l
	inc e
	inc c
	ld a, c
	cp LOW(rAUD4GO + 1)
	jr nz, .loop_channel_4
	dec b
	jr nz, .pan
	; envelope changed, need to restart
	ld a, [wChannel4Control]
	set 7, a
	ldh [rAUD4GO], a

.pan
	ld a, [wSFXActiveChannelFlags]
	ld c, a
	ld a, [wChannelPans + CHANNEL5]
	bit SFXFLAG_SQUARE1_F, c
	jr z, .no_pan_sfx_1
	ld a, [wChannelPans + CHANNEL1]
.no_pan_sfx_1
	ld b, a
	ld a, [wChannelPans + CHANNEL6]
	bit SFXFLAG_SQUARE2_F, c
	jr z, .no_pan_sfx_2
	ld a, [wChannelPans + CHANNEL2]
.no_pan_sfx_2
	or b
	ld b, a
	ld a, [wChannelPans + CHANNEL7]
	bit SFXFLAG_WAVE_F, c
	jr z, .no_pan_sfx_3
	ld a, [wChannelPans + CHANNEL3]
.no_pan_sfx_3
	or b
	ld b, a
	ld a, [wChannelPans + CHANNEL8]
	bit SFXFLAG_NOISE_F, c
	jr z, .no_pan_sfx_4
	ld a, [wChannelPans + CHANNEL4]
.no_pan_sfx_4
	or b
	ldh [rAUDTERM], a
	ret

; input:
; - [de] = audio commands
; - b = channel
ExecuteAudioCommands:
	ld h, HIGH(wAudioCommandDurations)
	ld a, LOW(wAudioCommandDurations)
	add b
	ld l, a
	dec [hl]
	jr z, .do_cmds
	ret ; still waiting delay
.next_cmd
	inc de
.do_cmds
	ld h, $de
	ld a, [de]
	ld c, a ; command byte
	and $e0
	cp AUDIO_COMMANDS_BEGIN
	jp z, .audio_command
	ld a, LOW(wChannelSelectorOffsets)
	add b
	ld l, a
	ld a, [hl]
	cp CHANNEL4_LENGTH - 1
	jr nz, .not_noise_channel
	; noise channel
	bit 4, c
	jp nz, .asm_14fcd
	ld a, c
	and $0f
	cp $0f
	jr z, .asm_14fb6
	add LOW(NoiseChannelPolynomialCounters)
	ld l, a
	ld h, HIGH(NoiseChannelPolynomialCounters)
	incc h
	ld c, [hl]
	ld a, CHANNEL4_FREQUENCY
	call GetPointerToChannelConfig
	ld [hl], c
	jp .asm_14fcd
.not_noise_channel
	ld a, c
	and $1f
	cp $10
	jr z, .asm_14fb6
	bit 4, a
	jr z, .asm_14fa7
	; is negative
	or $e0
.asm_14fa7
	ld c, a
	ld a, LOW(wChannelBaseNotes)
	add b
	ld l, a
	ld a, [hl]
	add c ; + fundamental note
	push de
	call SetChannelNoteFrequency
	pop de
	jp .asm_14fcd

.asm_14fb6
	call .Func_15038
	ld c, a
	ld h, HIGH(wInstrumentSustain)
	ld a, LOW(wInstrumentSustain)
	add b
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_14fc6
	ld [hl], 1
.asm_14fc6
	ld a, c
	and a
	jp z, .next_cmd
	inc de
	ret

.asm_14fcd
	call .Func_15038
	ld c, a
	ld h, HIGH(wInstrumentSustain)
	ld a, LOW(wInstrumentSustain)
	add b
	ld l, a
	ld [hl], -1
	add wInstrumentSustainLength - wInstrumentSustain
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_14ff3
	push bc
	push de
	ld e, a ; value from wInstrumentSustainLength
	ld h, HIGH(wInstrumentSustain)
	ld a, LOW(wInstrumentSustain)
	add b
	ld l, a
	push hl
	ld a, c
	call Multiply
	; hl = a * wInstrumentSustainLength
	ld b, h
	pop hl
	ld [hl], b ; wInstrumentSustain
	pop de
	pop bc
.asm_14ff3
	push bc
	call .Func_14ffb
	pop bc
	jp .asm_14fc6

.Func_14ffb:
	ld h, HIGH(wChannelInstruments)
	ld a, LOW(wChannelInstruments)
	add b
	ld l, a
	ld a, [hl]
	bit 7, a
	jr nz, .asm_15037
;	fallthrough

; input:
; - a = INSTRUMENT_* constant
.SetChannelInstrument_Attack:
	add a
	add a ; *4
.SetChannelInstrument_Release
	push de
	add LOW(Instruments)
	ld e, a
	ld d, HIGH(Instruments)
	incc d
	ld h, HIGH(wInstrumentAudioCommandPointersLo)
	ld a, LOW(wInstrumentAudioCommandPointersLo)
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	ld a, LOW(wInstrumentAudioCommandPointersHi)
	add b
	ld l, a
	inc de
	ld a, [de]
	ld [hl], a

	; reset instrument stack for this channel
	ld h, HIGH(ChannelInstrumentStackOffsets)
	ld a, LOW(ChannelInstrumentStackOffsets)
	add b
	ld l, a
	incc h
	ld c, [hl]
	ld h, HIGH(wInstrumentStackPointers)
	ld a, LOW(wInstrumentStackPointers)
	add b
	ld l, a
	ld [hl], c
	add wInstrumentCommandDurations - wInstrumentStackPointers
	ld l, a
	ld [hl], 1
	pop de
.asm_15037
	ret

.Func_15038:
	ld a, [de]
	and $e0
	cp AUDIOCMD_WAIT
	jr nz, .rest
	inc de
	ld a, [de]
	jr .got_duration

.rest
	ld h, HIGH(wChannelTempoModes)
	ld a, LOW(wChannelTempoModes)
	add b
	ld l, a
	ld a, [de]
	and $e0
	swap a
	srl a
	add [hl] ; wChannelTempoModes
	add LOW(TempoModeDurations)
	ld l, a
	ld a, $00
	adc HIGH(TempoModeDurations)
	ld h, a
	ld a, [hl]
.got_duration
	ld c, a
	ld h, HIGH(wAudioCommandDurations)
	ld a, LOW(wAudioCommandDurations)
	add b
	ld l, a
	ld a, c
	ld [hl], a
	ret

.audio_command
	ld a, c
	cp AUDIOCMD_VOLUME
	jr nz, .volumn_shift_cmd
	inc de
	ld h, HIGH(wChannelVolumes)
	ld a, LOW(wChannelVolumes)
	add b
	ld l, a
	ld a, [de]
.set_channel_base_volume
	; set high nybble of wChannelVolumes to
	; the command argument
	swap a
	and $f0
	ld c, a
	ld a, [hl] ; wChannelVolumes + CHANNEL
	and $0f
	or c
	ld [hl], a
	call UpdateChannelVolume
	jp .next_cmd

.volumn_shift_cmd
	cp AUDIOCMD_VOLUME_SHIFT
	jr nz, .tempo_mode_cmd
	inc de
	ld a, [de]
	ld c, a
	ld h, HIGH(wChannelVolumes)
	ld a, LOW(wChannelVolumes)
	add b
	ld l, a
	ld a, [hl]
	swap a
	and $0f
	add c
	bit 7, c
	jr nz, .negative_volume_shift
	cp $10
	jr c, .got_volume_shift
	ld a, 15 ; cap it to max 15
	jr .got_volume_shift
.negative_volume_shift
	jr c, .got_volume_shift
	xor a ; cap it to min 0
.got_volume_shift
	jr .set_channel_base_volume

.tempo_mode_cmd
	cp AUDIOCMD_SET_TEMPO_MODE
	jr nz, .sustain_cmd
	inc de
	ld a, [de]
	add a
	ld c, a
	add a
	add c ; *6
	ld hl, wChannelTempoModes
.set_channel_value
	ld c, a
	ld a, l
	add b
	ld l, a
	ld [hl], c
	jp .next_cmd

.sustain_cmd
	cp AUDIOCMD_SUSTAIN
	jr nz, .sustain_length_cmd
	inc de
	ld h, HIGH(wAudioCommandDurations)
	ld a, LOW(wAudioCommandDurations)
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	ld a, LOW(wInstrumentSustain)
	add b
	ld l, a
	ld [hl], -1
	inc de
	ret

.sustain_length_cmd
	cp AUDIOCMD_SUSTAIN_LENGTH
	jr nz, .base_note_cmd
	inc de
	ld a, [de]
	ld hl, wInstrumentSustainLength
	jp .set_channel_value

.base_note_cmd
	cp AUDIOCMD_SET_BASE_NOTE
	jr nz, .instrument_cmd
	inc de
	ld a, [de]
	ld hl, wChannelBaseNotes
	jp .set_channel_value

.instrument_cmd
	cp AUDIOCMD_SET_INSTRUMENT
	jr nz, .note_frequencies_cmd
	inc de
	ld h, HIGH(wChannelInstruments)
	ld a, LOW(wChannelInstruments)
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	bit 7, a
	call nz, .SetChannelInstrument_Attack ; bug? should be call z
	jp .next_cmd

.note_frequencies_cmd
	cp AUDIOCMD_NOTE_FREQUENCIES
	jr nz, .set_frequency_cmd
	inc de
	ld a, [de]
	ld hl, wNoteFrequencyTables
	jp .set_channel_value

.set_frequency_cmd
	cp AUDIOCMD_SET_FREQUENCY
	jr nz, .pitch_cmd
	inc de
	ld a, [de]
	ld c, a
	inc de
	ld a, [de]
	push de
	ld d, a
	ld e, c
	call SetChannelFrequency
	call .Func_14ffb
	pop de
	jp .next_cmd

.pitch_cmd
	cp AUDIOCMD_PITCH
	jr nz, .pan_cmd
	inc de
	ld a, [de]
	push de
	cpl
	inc a
	ld e, a
	ld d, 0
	rla
	jr nc, .got_pitch_val
	dec d ; -1
.got_pitch_val
	call AddToChannelFrequency
	pop de
	jp .next_cmd

.pan_cmd
	cp AUDIOCMD_SET_PAN
	jr nz, .audio_e1_cmd
	inc de
	ld a, [de]
	ld c, a
	push de
	ld h, HIGH(wChannelSelectorOffsets)
	ld a, LOW(wChannelSelectorOffsets)
	add b
	ld l, a
	ld e, [hl]
	srl e
	srl e
	ld d, $00
	ld hl, wChannelPans
	add hl, de
	ld a, c
	rra
	jr nc, .no_left_output
	set 4, d ; left
.no_left_output
	rra
	jr nc, .no_right_output
	inc d ; right
.no_right_output
	inc e
	dec e
	jr z, .got_final_pan ; is channel 1
	; not channel 1, then need to shift
	; left to get correct channel sound output
.loop_pan_shift
	rlc d
	dec e
	jr nz, .loop_pan_shift
.got_final_pan
	ld a, b
	cp CHANNEL4 + 1
	jr c, .sfx_panning
REPT NUM_SFX_CHANNELS
	inc l
ENDR
.sfx_panning
	ld [hl], d
	pop de
	jp .next_cmd

.audio_e1_cmd
	cp AUDIOCMD_E1
	jr nz, .audio_end_cmd
	inc de
	ld a, [de]
	ld [wde00], a
	jp .next_cmd

.audio_end_cmd
	cp AUDIOCMD_END
	jr nz, .stack_commands
	ld h, HIGH(wAudioCommandDurations)
	ld a, LOW(wAudioCommandDurations)
	add b
	ld l, a
	ld [hl], 0
	add wInstrumentCommandDurations - wAudioCommandDurations
	ld l, a
	xor a
	ld [hl], a
	jp SetChannelNoteVolume

.stack_commands
	ld hl, wAudioStackPointers
	call ExecuteStackAudioCommands
	jp .do_cmds

; input:
; - hl = ?
ExecuteStackAudioCommands:
	ld a, l
	add b
	ld l, a
	push hl
	ld a, LOW(wAudioStack)
	add [hl]
	ld l, a
	ld a, HIGH(wAudioStack)
	adc 0
	ld h, a
	call .ExecuteCommand
	ld a, l
	sub $00 ; what?
	pop hl
	ld [hl], a
	ret

.ExecuteCommand:
	ld a, [de]
	cp AUDIOCMD_JUMP
	jr nz, .call_cmd
	inc de
	ld a, [de]
	ld c, a
	inc de
	ld a, [de]
	ld d, a
	ld e, c
	ret

.call_cmd
	cp AUDIOCMD_CALL
	jr nz, .ret_cmd
	inc de
	inc de
	inc de
	dec hl
	ld [hl], d
	dec hl
	ld [hl], e
	dec de
	ld a, [de]
	ld c, a
	dec de
	ld a, [de]
	ld e, a
	ld d, c
	ret

.ret_cmd
	cp AUDIOCMD_RET
	jr nz, .repeat_cmd
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl
	ret

.repeat_cmd
	cp AUDIOCMD_REPEAT
	jr nz, .repeat_end_cmd
	inc de
	ld a, [de]
	ld c, a
	inc de
	dec hl
	ld [hl], d
	dec hl
	ld [hl], e
	dec hl
	ld [hl], c
	ret

.repeat_end_cmd
	cp AUDIOCMD_REPEAT_END
	jr nz, .asm_151f8
	dec [hl]
	jr z, .asm_151f4
	inc hl
	ld e, [hl]
	inc hl
	ld d, [hl]
	dec hl
	dec hl
	ret
.asm_151f4
	inc hl
	inc hl
	inc hl
	inc de
.asm_151f8
	ret

; input:
; - a = note constant
SetChannelNoteFrequency:
	ld e, a
	ld a, LOW(wNoteFrequencyTables)
	add b
	ld l, a
	ld a, [hl]
	add a ; *2
	add LOW(NoteFrequencyTable)
	ld l, a
	ld a, $00
	adc HIGH(NoteFrequencyTable)
	ld h, a
	ld a, [hli]
	rlc e ; *2
	add e
	ld e, a
	ld a, [hl]
	adc $00
	ld h, a
	ld l, e
	ld a, [hli]
	ld d, a
	ld e, [hl]
;	fallthrough

; input:
; - b = channel
; - de = frequency
SetChannelFrequency:
	ld h, HIGH(wChannelSelectorOffsets)
	ld a, LOW(wChannelSelectorOffsets)
	add b
	ld l, a
	ld a, [hl]
	cp CHANNEL3_LENGTH - 1
	jr z, .channel_3
	ld a, CHANNEL_SELECTOR_FREQUENCY
	call GetPointerToChannelProperty_GotOffset
	jr .set_frequency
.channel_3
	; channel 3 needs to be enabled as well
	ld a, CHANNEL_SELECTOR_ENABLED
	call GetPointerToChannelProperty_GotOffset
	ld [hl], AUD3ENA_ON
	inc l
	inc l
	inc l
.set_frequency
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

; tick down sustain counter for instrument
; if it reaches 0, then do release audio scripts
; if sustain is -1, then don't release note
UpdateInstrumentSustain:
	ld h, HIGH(wInstrumentSustain)
	ld a, LOW(wInstrumentSustain)
	add b
	ld l, a
	ld a, [hl]
	and a
	ret z ; not playing
	cp -1
	ret z ; no releasing
	dec [hl]
	ret nz ; still waiting delay
	ld a, LOW(wChannelInstruments)
	add b
	ld l, a
	ld a, [hl]
	add a
	add a
	add $2 ; a = a*4 + 2
	jp ExecuteAudioCommands.SetChannelInstrument_Release

ExecuteInstrumentCommands:
	ld h, HIGH(wInstrumentCommandDurations)
	ld a, LOW(wInstrumentCommandDurations)
	add b
	ld l, a
	dec [hl]
	jr z, .do_cmds
	ret ; still waiting delay
.next_cmd
	inc de
.do_cmds
	ld h, $de
	ld a, [de]
	ld c, a ; command byte
	and $e0
	jr nz, .check_change_pitch
	ld a, c
	and $1f
	ld c, a
	ld a, LOW(wInstrumentCommandDurations)
	add b
	ld l, a
	ld [hl], c
	inc de
	ret

.check_change_pitch
	cp AUDIOCMD_PITCH_SHIFT
	jr nz, .volume_cmd
	push bc
	push de
	call ConvertTo16BitFrequency
	call AddToChannelFrequency
	pop de
	pop bc
.asm_1527b
	ld a, [de]
	and AUDIOCMD_BREAK
	jr z, .next_cmd
	ld h, HIGH(wInstrumentCommandDurations)
	ld a, LOW(wInstrumentCommandDurations)
	add b
	ld l, a
	ld [hl], 1
	inc de
	ret

.volume_cmd
	cp AUDIOCMD_NOTE_VOLUME
	jr nz, .asm_15294
	ld a, c
	and $0f
	jp .asm_152b2

.asm_15294
	cp AUDIOCMD_NOTE_VOLUME_SHIFT
	jr nz, .wave_cmd
	push de
	call ConvertTo16BitFrequency
	ld h, HIGH(wChannelVolumes)
	ld a, LOW(wChannelVolumes)
	add b
	ld l, a
	ld a, [hl]
	and $0f
	add e
	bit 7, a
	jr z, .asm_152ab
	xor a ; cap to min 0
.asm_152ab
	cp 15 + 1
	jr c, .asm_152b1
	ld a, 15 ; cap to max 15
.asm_152b1
	pop de
.asm_152b2
	push de
	call SetChannelNoteVolume
	pop de
	jp .asm_1527b

.wave_cmd
	cp AUDIOCMD_WAVE
	jr nz, .asm_15311
	ld h, HIGH(wChannelSelectorOffsets)
	ld a, LOW(wChannelSelectorOffsets)
	add b
	ld l, a
	ld a, [hl]
	cp CHANNEL3_LENGTH - 1
	jr z, .change_wave_sample
	ld a, CHANNEL_SELECTOR_LENGTH
	call GetPointerToChannelProperty_GotOffset
	ld a, c
	rrca
	rrca
	and $c0 ; wave duty cycle mask
	ld c, a
	ld a, [hl]
	and $3f
	or c
	ld [hl], a
	jp .asm_1527b
.change_wave_sample
	ld a, c
	and $0f
	ld hl, wWaveSample
	cp [hl]
	jr z, .skip_load_wave_sample
	push de
	ld [hl], a
	swap a ; *$10
	ld e, a
	ld d, $00
	ld hl, WaveSamples
	add hl, de
	xor a ; AUD3ENA_OFF
	ldh [rAUD3ENA], a
	call .LoadWaveSample
	ld a, AUD3ENA_ON
	ldh [rAUD3ENA], a
	ld a, [wChannel3FreqHi]
	set 7, a
	ldh [rAUD3HIGH], a
	pop de
.skip_load_wave_sample
	jp .asm_1527b

; input:
; - hl = wave sample data
.LoadWaveSample:
	ld de, _AUD3WAVERAM
	ld c, $10
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret

.asm_15311
	cp $e0
	jr nz, .done
	ld a, c
	cp $f0
	jr nz, .audio_end_cmd
	inc de
	ld a, [de]
	ld c, a
	ld a, CHANNEL_SELECTOR_ENABLED
	call GetPointerToChannelProperty
	ld [hl], c
	jp .next_cmd
.audio_end_cmd
	cp AUDIOCMD_END
	jr nz, .stack_commands
	ld a, LOW(wInstrumentCommandDurations)
	add b
	ld l, a
	ld [hl], 0
	ret

.stack_commands
	ld hl, wInstrumentStackPointers
	call ExecuteStackAudioCommands
	jp .do_cmds

.done
	ret

; input:
; - a = volume value (between 0 and 15)
SetChannelNoteVolume:
	; set low nybble of wChannelVolumes to input
	ld c, a
	ld h, HIGH(wChannelVolumes)
	ld a, LOW(wChannelVolumes)
	add b
	ld l, a
	ld a, [hl]
	and $f0
	or c
	ld [hl], a
;	fallthrough

; input:
; - hl = channel volume
UpdateChannelVolume:
	push de
	ld a, -1
	sub [hl]
	swap a
	and $0f
	ld e, a
	ld a, [hl]
	and $0f
	sub e
	ld e, a
	; e = noteVolume - (15 - channelVolume)
	jr nc, .no_underflow
	ld e, 0 ; minimum of 0
.no_underflow
	push hl
	ld hl, wde01
	ld a, b
	cp CHANNEL4 + 1
	jr c, .is_sfx
	inc l ; wde02
.is_sfx
	ld a, -1
	sub [hl]
	swap a
	and $0f
	ld d, a
	pop hl
	ld a, e
	sub d
	jr nc, .set_envelope_or_level
	xor a ; minimum of 0
.set_envelope_or_level
	ld e, a
	ld a, LOW(wChannelSelectorOffsets)
	add b
	ld l, a
	ld a, [hl]
	cp CHANNEL3_LENGTH - 1
	jr z, .channel_3
; set envelope initial volume
	ld a, CHANNEL_SELECTOR_ENVELOPE
	call GetPointerToChannelProperty_GotOffset
	swap e
	ld a, [hl]
	and $0f
	or e
	ld [hl], a
	pop de
	ret
.channel_3
	ld d, $00
	ld hl, Channel3OutputLevels
	add hl, de
	ld e, [hl]
	ld a, CHANNEL_SELECTOR_ENVELOPE
	call GetPointerToChannelProperty
	ld [hl], e
	pop de
	ret

Channel3OutputLevels:
	db AUD3LEVEL_MUTE ;  0
	db AUD3LEVEL_25   ;  1
	db AUD3LEVEL_25   ;  2
	db AUD3LEVEL_25   ;  3
	db AUD3LEVEL_50   ;  4
	db AUD3LEVEL_50   ;  5
	db AUD3LEVEL_50   ;  6
	db AUD3LEVEL_50   ;  7
	db AUD3LEVEL_100  ;  8
	db AUD3LEVEL_100  ;  9
	db AUD3LEVEL_100  ; 10
	db AUD3LEVEL_100  ; 11
	db AUD3LEVEL_100  ; 12
	db AUD3LEVEL_100  ; 13
	db AUD3LEVEL_100  ; 14
	db AUD3LEVEL_100  ; 15

; input:
; - c = 4-bit two's compliment frequency
; output:
; - de = frequency
ConvertTo16BitFrequency:
	ld a, c
	and $0f
	ld d, $00
	bit 3, a
	jr z, .positive
; negative
	or $f0
	dec d ; $ff
.positive
	ld e, a
	ret

; input:
; - de = channel frequency to add
AddToChannelFrequency:
	ld a, CHANNEL_SELECTOR_FREQUENCY
	call GetPointerToChannelProperty
	ld a, e
	add [hl]
	ld [hli], a
	ld a, d
	adc [hl]
	ld [hl], a
	ret

; selects a property of the current channel
; and gets its pointer in hl
; input:
; - a = CHANNEL_SELECTOR_* constant
GetPointerToChannelProperty:
	push af
	ld h, HIGH(wChannelSelectorOffsets)
	ld a, LOW(wChannelSelectorOffsets)
	add b
	ld l, a
	pop af
;	fallthrough

; same as GetPointerToChannelProperty but
; expects hl to already point to the channel specific offset
; input:
; - a = CHANNEL_SELECTOR_* constant
; - hl = wChannelSelectorOffsets + channel
GetPointerToChannelProperty_GotOffset:
	add [hl]
;	fallthrough

; input:
; - a = CHANNEL_SELECTOR_* constant
GetPointerToChannelConfig:
	ld hl, wChannelConfigLowByte
	add [hl]
	ld l, a
	ld h, HIGH(wSFXChannels) ; aka HIGH(wMusicChannels)
	ret

; output:
; - hl = a * e
Multiply:
	push bc
	push de
	ld d, HIGH(wdc00)
	ld l, a
	ld h, d
	and e
	rra
	ld a, [de]
	adc [hl]
	ld c, a
	inc d
	ld h, d
	ld a, [de]
	adc [hl]
	ld b, a
	ld a, l
	sub e
	jr nc, .positive
	cpl
	inc a
.positive
	; a = |l - e|
	ld l, a
	dec h
	ld a, c
	sub [hl]
	ld e, a
	inc h
	ld a, b
	sbc [hl]
	ld h, a
	ld l, e
	pop de
	pop bc
	ret

NoteFrequencies:
	bigdw  $3b ;   65.9 Hz ; C_0
	bigdw  $aa ;   69.8 Hz ; C#0
	bigdw $112 ;   73.9 Hz ; D_0
	bigdw $175 ;   78.3 Hz ; D#0
	bigdw $1d3 ;   82.9 Hz ; E_0
	bigdw $22b ;   87.8 Hz ; F_0
	bigdw $27e ;   93.0 Hz ; F#0
	bigdw $2cd ;   98.5 Hz ; G_0
	bigdw $317 ;  104.3 Hz ; G#0
	bigdw $35d ;  110.4 Hz ; A_0
	bigdw $3a0 ;  117.0 Hz ; A#0
	bigdw $3de ;  123.9 Hz ; B_0
	bigdw $419 ;  131.2 Hz ; C_1
	bigdw $451 ;  139.0 Hz ; C#1
	bigdw $486 ;  147.3 Hz ; D_1
	bigdw $4b8 ;  156.0 Hz ; D#1
	bigdw $4e7 ;  165.3 Hz ; E_1
	bigdw $513 ;  175.0 Hz ; F_1
	bigdw $53d ;  185.4 Hz ; F#1
	bigdw $564 ;  196.2 Hz ; G_1
	bigdw $58a ;  208.1 Hz ; G#1
	bigdw $5ad ;  220.3 Hz ; A_1
	bigdw $5ce ;  233.2 Hz ; A#1
	bigdw $5ee ;  247.3 Hz ; B_1
	bigdw $60b ;  261.6 Hz ; C_2
	bigdw $627 ;  277.1 Hz ; C#2
	bigdw $642 ;  293.9 Hz ; D_2
	bigdw $65b ;  311.3 Hz ; D#2
	bigdw $672 ;  329.3 Hz ; E_2
	bigdw $689 ;  349.5 Hz ; F_2
	bigdw $69e ;  370.3 Hz ; F#2
	bigdw $6b2 ;  392.4 Hz ; G_2
	bigdw $6c4 ;  414.8 Hz ; G#2
	bigdw $6d6 ;  439.8 Hz ; A_2
	bigdw $6e7 ;  466.4 Hz ; A#2
	bigdw $6f6 ;  492.8 Hz ; B_2
	bigdw $705 ;  522.2 Hz ; C_3
	bigdw $713 ;  553.0 Hz ; C#3
	bigdw $721 ;  587.8 Hz ; D_3
	bigdw $72d ;  621.2 Hz ; D#3
	bigdw $739 ;  658.7 Hz ; E_3
	bigdw $744 ;  697.2 Hz ; F_3
	bigdw $74e ;  736.4 Hz ; F#3
	bigdw $758 ;  780.2 Hz ; G_3
	bigdw $762 ;  829.6 Hz ; G#3
	bigdw $76b ;  879.7 Hz ; A_3
	bigdw $773 ;  929.6 Hz ; A#3
	bigdw $77b ;  985.5 Hz ; B_3
	bigdw $782 ; 1040.3 Hz ; C_4
	bigdw $789 ; 1101.4 Hz ; C#4
	bigdw $790 ; 1170.3 Hz ; D_4
	bigdw $796 ; 1236.5 Hz ; D#4
	bigdw $79c ; 1310.7 Hz ; E_4
	bigdw $7a2 ; 1394.4 Hz ; F_4
	bigdw $7a7 ; 1472.7 Hz ; F#4
	bigdw $7ac ; 1560.4 Hz ; G_4
	bigdw $7b1 ; 1659.1 Hz ; G#4
	bigdw $7b5 ; 1747.6 Hz ; A_4
	bigdw $7b9 ; 1846.1 Hz ; A#4
	bigdw $7bd ; 1956.3 Hz ; B_4
	bigdw $7c1 ; 2080.5 Hz ; C_5
	bigdw $7c4 ; 2184.5 Hz ; C#5
	bigdw $7c8 ; 2340.6 Hz ; D_5
	bigdw $7cb ; 2473.1 Hz ; D#5
	bigdw $7ce ; 2621.4 Hz ; E_5
	bigdw $7d1 ; 2788.8 Hz ; F_5
	bigdw $7d3 ; 2912.7 Hz ; F#5
	bigdw $7d6 ; 3120.8 Hz ; G_5
	bigdw $7d8 ; 3276.8 Hz ; G#5
	bigdw $7da ; 3449.3 Hz ; A_5
	bigdw $7dc ; 3640.9 Hz ; A#5
	bigdw $7de ; 3855.1 Hz ; B_5
; 0x15486

SECTION "Bank 5@548e", ROMX[$548e], BANK[$5]

; offsets in wAudioStack reserved for each channel
; holds stack for general audio commands
ChannelAudioStackOffsets:
	db LOW(wChannel1StackAudioBottom) ; CHANNEL1
	db LOW(wChannel2StackAudioBottom) ; CHANNEL2
	db LOW(wChannel3StackAudioBottom) ; CHANNEL3
	db LOW(wChannel4StackAudioBottom) ; CHANNEL4
	db LOW(wChannel5StackAudioBottom) ; CHANNEL5
	db LOW(wChannel6StackAudioBottom) ; CHANNEL6
	db LOW(wChannel7StackAudioBottom) ; CHANNEL7
	db LOW(wChannel8StackAudioBottom) ; CHANNEL8

; offsets in wAudioStack reserved for each channel
; holds stack for instrument audio commands
ChannelInstrumentStackOffsets:
	db LOW(wChannel1StackInstrumentBottom) ; CHANNEL1
	db LOW(wChannel2StackInstrumentBottom) ; CHANNEL2
	db LOW(wChannel3StackInstrumentBottom) ; CHANNEL3
	db LOW(wChannel4StackInstrumentBottom) ; CHANNEL4
	db LOW(wChannel5StackInstrumentBottom) ; CHANNEL5
	db LOW(wChannel6StackInstrumentBottom) ; CHANNEL6
	db LOW(wChannel7StackInstrumentBottom) ; CHANNEL7
	db LOW(wChannel8StackInstrumentBottom) ; CHANNEL8

NoteFrequencyTable:
	dw NoteFrequencies - 6

NoiseChannelPolynomialCounters:
	db %000 | AUD4POLY_15STEP | (0 << 4)
	db %000 | AUD4POLY_15STEP | (1 << 4)
	db %000 | AUD4POLY_15STEP | (2 << 4)
	db %000 | AUD4POLY_15STEP | (3 << 4)
	db %111 | AUD4POLY_15STEP | (0 << 4)
	db %011 | AUD4POLY_15STEP | (2 << 4)
	db %000 | AUD4POLY_15STEP | (5 << 4)
	db %011 | AUD4POLY_15STEP | (3 << 4)
	db %000 | AUD4POLY_15STEP | (6 << 4)
	db %011 | AUD4POLY_15STEP | (4 << 4)
	db %000 | AUD4POLY_15STEP | (7 << 4)
	db %101 | AUD4POLY_15STEP | (4 << 4)
	db %111 | AUD4POLY_15STEP | (4 << 4)
	db %101 | AUD4POLY_15STEP | (5 << 4)
	db %101 | AUD4POLY_15STEP | (6 << 4)

WaveSamples:
	table_width 16
	dn  2,  2,  6,  6, 10, 10, 14, 14, 15, 15, 15, 15, 15, 14, 14, 10, 10,  6,  6,  6,  8, 10, 12, 15, 15, 14, 14, 12, 10,  6,  3,  3 ; WAVEFORM_M_SHAPE
	dn 15, 15, 15, 15, 15, 15, 15, 15,  0,  0,  0,  0,  0,  0,  0,  0, 15, 15, 15, 15, 15, 15, 15, 15,  0,  0,  0,  0,  0,  0,  0,  0 ; WAVEFORM_SQUARE
	dn  1,  3,  5,  7,  9, 11, 13, 15, 13, 11,  9,  7,  5,  3,  1,  0,  1,  3,  5,  7,  9, 11, 13, 15, 13, 11,  9,  7,  5,  3,  1,  0 ; WAVEFORM_SINE
	assert_table_length NUM_WAVEFORMS

INCLUDE "audio/music_headers.asm"
INCLUDE "audio/music/bubbly_clouds_intro.asm"
INCLUDE "audio/music/green_greens_intro.asm"
INCLUDE "audio/music/invincibility_candy.asm"
INCLUDE "audio/music/game_over.asm"
INCLUDE "audio/music/sparkling_star.asm"
INCLUDE "audio/music/titlescreen.asm"
INCLUDE "audio/music/float_islands_intro.asm"
INCLUDE "audio/music/life_lost.asm"
INCLUDE "audio/music/boss_battle.asm"
INCLUDE "audio/music/mint_leaf.asm"
INCLUDE "audio/music/victory.asm"
INCLUDE "audio/music/credits.asm"
INCLUDE "audio/music/castle_lololo_intro.asm"
INCLUDE "audio/music/green_greens.asm"
INCLUDE "audio/music/float_islands.asm"
INCLUDE "audio/music/bubbly_clouds.asm"
INCLUDE "audio/music/castle_lololo.asm"
INCLUDE "audio/music/dedede_battle.asm"
INCLUDE "audio/music/mt_dedede.asm"

AudioScript_16f6d:
	wave WAVEDUTY_12_5
	note_volume 15
	db $ff ; end

AudioScript_16f70:
	wave WAVEDUTY_25
	note_volume 15
	db $ff ; end

AudioScript_16f73:
	wave WAVEDUTY_50
	note_volume 15
	db $ff ; end

AudioScript_16f76:
	wave WAVEDUTY_75
	note_volume 15
	db $ff ; end

AudioScript_16f79:
	note_volume 4, 8
	note_volume 0
	db $ff ; end

AudioScript_16f7d:
	wave WAVEDUTY_25
AudioScript_16f7e:
	note_volume 15
	audio_repeat 15
	note_volume_shift -1, 8
	audio_repeat_end
	db $ff ; end

AudioScript_16f85:
	wave WAVEDUTY_50
AudioScript_16f86:
	note_volume 15, 1
AudioScript_16f87:
	audio_repeat 8
	db 3
	note_volume_shift -2
	audio_repeat_end
	db $ff ; end

AudioScript_16f8d:
	wave WAVEDUTY_25
	audio_jump AudioScript_16f86

AudioScript_16f91:
	wave WAVEDUTY_12_5
	note_volume 15, 2
	note_volume 13, 2
	audio_jump AudioScript_16f87

AudioScript_16f99:
	wave WAVEDUTY_50
	audio_jump AudioScript_16f7e

AudioScript_16f9d:
	wave WAVEDUTY_50
AudioScript_16f9e:
	note_volume 15, 2
	note_volume 14
AudioScript_16fa1:
	audio_repeat 12
	note_volume_shift -1, 3
	audio_repeat_end
	db $ff ; end

AudioScript_16fa7:
	wave WAVEDUTY_25
	audio_jump AudioScript_16f9e

AudioScript_16fab:
	wave WAVEDUTY_12_5
	audio_call AudioScript_16fb2
	audio_jump AudioScript_16fa1

AudioScript_16fb2:
	note_volume 15, 1
	note_volume 11, 1
	audio_ret

AudioScript_16fb5:
	wave WAVEDUTY_25
	note_volume 15, 1
	note_volume 12, 1
	wave WAVEDUTY_12_5
	audio_repeat 8
	note_volume_shift 1, 1
	note_volume_shift -2, 1
	audio_repeat_end
.loop
	note_volume_shift 1, 1
	note_volume_shift -1, 1
	audio_jump .loop

AudioScript_16fc3:
	wave WAVEDUTY_50
AudioScript_16fc4:
	note_volume 7, 1
AudioScript_16fc5:
	note_volume 13, 1
	note_volume 15, 1
	note_volume 12, 1
	note_volume 6, 6
	audio_repeat 4
	note_volume_shift 1, 3
	note_volume_shift 1, 3
	audio_repeat_end
.loop
	pitch_shift 1, 3
	pitch_shift -1, 3
	audio_jump .loop

AudioScript_16fd8:
	note_volume 8, 5
	note_volume 7, 2
	note_volume 6, 2
	audio_repeat 5
	note_volume 5, 4
	note_volume 4, 3
	audio_repeat_end
	note_volume 2, 5
	note_volume 0
	db $ff ; end

AudioScript_16fe9:
	wave WAVEDUTY_25
	audio_jump AudioScript_16fc4

AudioScript_16fed:
	wave WAVEDUTY_50
	note_volume 15, 2
	wave WAVEDUTY_25
	note_volume 13, 1
	wave WAVEDUTY_12_5
	audio_repeat 6
	note_volume_shift -1, 2
	audio_repeat_end
.loop
	note_volume 6, 3
	note_volume 7, 3
	audio_jump .loop

AudioScript_16fff:
	wave WAVEDUTY_75
	note_volume 15, 1
	note_volume 12, 1
	audio_repeat 5
	note_volume_shift -2, 1
	audio_repeat_end
	note_volume 0
	db $ff ; end

AudioScript_17008:
	wave WAVEDUTY_50
	note_volume 15, 2
	note_volume 14, 5
	note_volume 13, 5
.loop
	pitch_shift -1, 2
	pitch_shift -1, 3
	pitch_shift 1, 2
	pitch_shift 1, 3
	audio_jump .loop

AudioScript_1701a:
	wave WAVEDUTY_12_5
	audio_jump AudioScript_16fc5

AudioScript_1701e:
	wave WAVEDUTY_75
	note_volume 15, 1
	wave WAVEDUTY_50
	note_volume 12, 2
.loop
	pitch_shift -1, 3
	pitch_shift 1, 3
	audio_jump .loop

AudioScript_1702a:
	note_volume 4, 2
	note_volume 0
	db $ff ; end

AudioScript_1702e:
	wave WAVEDUTY_50
	note_volume 11, 1
	note_volume 12, 2
	note_volume 13, 6
	note_volume 14
.loop
	pitch_shift 1, 3
	pitch_shift -1, 3
	audio_jump .loop

AudioScript_1703c:
	wave WAVEDUTY_75
	note_volume 15, 1
	wave WAVEDUTY_12_5
	note_volume 14, 2
	wave WAVEDUTY_25
	note_volume 10
	audio_repeat 5
	note_volume_shift -1, 1
	audio_repeat_end
	note_volume_shift -1, 3
.loop
	pitch_shift -1, 4
	pitch_shift 1, 4
	audio_jump .loop

AudioScript_17050:
	pitch_shift -1
	audio_jump AudioScript_1702e

AudioScript_17054:
	wave WAVEDUTY_75
	note_volume 15, 1
	wave WAVEDUTY_25
	note_volume 12, 2
.loop
	pitch_shift 1, 3
	pitch_shift -1, 3
	audio_jump .loop

AudioScript_17060:
	wave WAVEDUTY_12_5
	note_volume 15, 1
	wave WAVEDUTY_75
	note_volume 13, 1
	audio_repeat 5
	note_volume_shift -1, 1
	audio_repeat_end
	db $ff ; end

AudioScript_17069:
	wave WAVEDUTY_12_5
	note_volume 15, 1
	wave WAVEDUTY_50
	note_volume 14, 1
	wave WAVEDUTY_25
	note_volume 13, 1
	note_volume 12, 1
	note_volume 11, 1
	note_volume 10, 1
	note_volume 9, 1
	db $ff ; end

AudioScript_17074:
	note_volume 15, 1
	audio_repeat 5
	note_volume_shift -2, 1
	audio_repeat_end
	note_volume 3, 1
	note_volume 2, 1
	note_volume 1, 1
	note_volume 0, 1
	db $ff ; end

INCLUDE "audio/sfx_headers.asm"
INCLUDE "audio/sfx/sfx.asm"

AudioScript_177c2:
	wave WAVEDUTY_12_5
	note_volume 15
	db $ff ; end

AudioScript_177c5:
	wave WAVEDUTY_25
	note_volume 15
	db $ff ; end

AudioScript_177c8:
	wave WAVEDUTY_50
	note_volume 15
	db $ff ; end

AudioScript_177cb:
	wave WAVEDUTY_75
	note_volume 15
	db $ff ; end

AudioScript_177ce:
	note_volume 4, 8
	note_volume 0
	db $ff ; end

AudioScript_177d2:
	wave WAVEDUTY_25
AudioScript_177d3:
	note_volume 15
	audio_repeat 15
	note_volume_shift -1, 8
	audio_repeat_end
	db $ff ; end

AudioScript_177da:
	wave WAVEDUTY_50
AudioScript_177db:
	note_volume 15, 1
AudioScript_177dc:
	audio_repeat 8
	db $03
	note_volume_shift -2
	audio_repeat_end
	db $ff ; end

AudioScript_177e2:
	wave WAVEDUTY_25
	audio_jump AudioScript_177db

AudioScript_177e6:
	wave WAVEDUTY_12_5
	note_volume 15, 2
	note_volume 13, 2
	audio_jump AudioScript_177dc

AudioScript_177ee:
	wave WAVEDUTY_50
	audio_jump AudioScript_177d3

AudioScript_177f2:
	wave WAVEDUTY_50
AudioScript_177f3:
	note_volume 15, 2
	note_volume 14
AudioScript_177f6:
	audio_repeat 12
	note_volume_shift -1, 3
	audio_repeat_end
	db $ff ; end

AudioScript_177fc:
	wave WAVEDUTY_25
	audio_jump AudioScript_177f3

AudioScript_17800:
	wave WAVEDUTY_12_5
	audio_call AudioScript_17807
	audio_jump AudioScript_177f6

AudioScript_17807:
	note_volume 15, 1
	note_volume 11, 1
	audio_ret

AudioScript_1780a:
	wave WAVEDUTY_25
	note_volume 15, 1
	note_volume 12, 1
	wave WAVEDUTY_12_5
	audio_repeat 8
	note_volume_shift 1, 1
	note_volume_shift -2, 1
	audio_repeat_end
.loop
	note_volume_shift 1, 1
	note_volume_shift -1, 1
	audio_jump .loop

AudioScript_17818:
	wave WAVEDUTY_50
AudioScript_17819:
	note_volume 7, 1
AudioScript_1781a:
	note_volume 13, 1
	note_volume 15, 1
	note_volume 12, 1
	note_volume 6, 6
	audio_repeat 4
	note_volume_shift 1
	db $03
	note_volume_shift 1
	db $03
	audio_repeat_end
.loop
	pitch_shift 1, 3
	pitch_shift -1, 3
	audio_jump .loop

AudioScript_1782d:
	note_volume 8, 5
	note_volume 7, 2
	note_volume 6, 2
	audio_repeat 5
	note_volume 5, 4
	note_volume 4, 3
	audio_repeat_end
	note_volume 2, 5
	note_volume 0
	db $ff ; end

AudioScript_1783e:
	wave WAVEDUTY_25
	audio_jump AudioScript_17819

AudioScript_17842:
	wave WAVEDUTY_50
	note_volume 15, 2
	wave WAVEDUTY_25
	note_volume 13, 1
	wave WAVEDUTY_12_5
	audio_repeat 6
	note_volume_shift -1, 2
	audio_repeat_end
.loop
	note_volume 6, 3
	note_volume 7, 3
	audio_jump .loop

AudioScript_17854:
	wave WAVEDUTY_75
	note_volume 15, 1
	note_volume 12, 1
	audio_repeat 5
	note_volume_shift -2, 1
	audio_repeat_end
	note_volume 0
	db $ff ; end

AudioScript_1785d:
	wave WAVEDUTY_50
	note_volume 15, 2
	note_volume 14, 5
	note_volume 13, 5
.loop
	pitch_shift -1, 2
	pitch_shift -1, 3
	pitch_shift 1, 2
	pitch_shift 1, 3
	audio_jump .loop

AudioScript_1786f:
	wave WAVEDUTY_12_5
	audio_jump AudioScript_1781a

AudioScript_17873:
	wave WAVEDUTY_75
	note_volume 15, 1
	wave WAVEDUTY_50
	note_volume 12, 2
.loop
	pitch_shift -1, 3
	pitch_shift 1, 3
	audio_jump .loop

AudioScript_1787f:
	note_volume 4, 2
	note_volume 0
	db $ff ; end

AudioScript_17883:
	wave WAVEDUTY_50
	note_volume 11, 1
	note_volume 12, 2
	note_volume 13, 6
	note_volume 14
.loop
	pitch_shift 1, 3
	pitch_shift -1, 3
	audio_jump .loop

AudioScript_17891:
	wave WAVEDUTY_75
	note_volume 15, 1
	wave WAVEDUTY_12_5
	note_volume 14, 2
	wave WAVEDUTY_25
	note_volume 10
	audio_repeat 5
	note_volume_shift -1, 1
	audio_repeat_end
	note_volume_shift -1, 3
.loop
	pitch_shift -1, 4
	pitch_shift 1, 4
	audio_jump .loop

AudioScript_178a5:
	pitch_shift -1
	audio_jump AudioScript_17883

AudioScript_178a9:
	wave WAVEDUTY_75
	note_volume 15, 1
	wave WAVEDUTY_25
	note_volume 12
	db $02
.loop
	pitch_shift 1, 3
	pitch_shift -1, 3
	audio_jump .loop

AudioScript_178b5:
	wave WAVEDUTY_12_5
	note_volume 15, 1
	wave WAVEDUTY_75
	note_volume 13, 1
	audio_repeat 5
	note_volume_shift -1, 1
	audio_repeat_end
	db $ff ; end

AudioScript_178be:
	wave WAVEDUTY_12_5
	note_volume 15, 1
	wave WAVEDUTY_50
	note_volume 14, 1
	wave WAVEDUTY_25
	note_volume 13, 1
	note_volume 12, 1
	note_volume 11, 1
	note_volume 10, 1
	note_volume 9, 1
	db $ff ; end

AudioScript_178c9:
	note_volume 15, 1
	audio_repeat 5
	note_volume_shift -2, 1
	audio_repeat_end
	note_volume 3, 1
	note_volume 2, 1
	note_volume 1, 1
	note_volume 0, 1
	db $ff ; end
