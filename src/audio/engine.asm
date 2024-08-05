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
	call LoadWaveSample

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
	ld hl, wde8a
	add hl, bc
	ld [hl], $24
	xor a
	ld hl, wde92
	add hl, bc
	ld [hl], a
	ld hl, wde9a
	add hl, bc
	ld [hl], a
	ld hl, wdea2
	add hl, bc
	ld [hl], a
	ld hl, wdeaa
	add hl, bc
	ld [hl], a
	ld hl, wdeb2
	add hl, bc
	ld [hl], a
	ld hl, ChannelAudioStackOffsets
	add hl, bc
	ld a, [hl]
	ld hl, wAudioStackPointers
	add hl, bc
	ld [hl], a
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
	jr nc, .no_overflow
	inc h
.no_overflow
	ld a, [hl]
	ld hl, wChannelSelectorOffsets
	add hl, bc
	ld [hl], a
	; set this channel active
	ld hl, wAudioCommandDurations
	add hl, bc
	ld [hl], 1
	ld hl, wde82
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

	call Func_15235
	ld h, HIGH(wde72)
	ld a, LOW(wde72)
	add b
	ld l, a
	push hl
	ld e, [hl]
	add wde7a - wde72
	ld l, a
	push hl
	ld d, [hl]
	push bc
	call Func_1524f
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
	ld c, a
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
	add $a0
	ld l, a
	ld h, $54
	jr nc, .asm_14f90
	inc h
.asm_14f90
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
	or $e0
.asm_14fa7
	ld c, a
	ld a, LOW(wde8a)
	add b
	ld l, a
	ld a, [hl]
	add c
	push de
	call Func_151f9
	pop de
	jp .asm_14fcd
.asm_14fb6
	call .Func_15038
	ld c, a
	ld h, HIGH(wde82)
	ld a, LOW(wde82)
	add b
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_14fc6
	ld [hl], $01
.asm_14fc6
	ld a, c
	and a
	jp z, .next_cmd
	inc de
	ret

.asm_14fcd
	call .Func_15038
	ld c, a
	ld h, HIGH(wde82)
	ld a, LOW(wde82)
	add b
	ld l, a
	ld [hl], $ff
	add wde92 - wde82
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_14ff3
	push bc
	push de
	ld e, a
	ld h, HIGH(wde82)
	ld a, LOW(wde82)
	add b
	ld l, a
	push hl
	ld a, c
	call Func_153d3
	ld b, h
	pop hl
	ld [hl], b
	pop de
	pop bc
.asm_14ff3
	push bc
	call .Func_14ffb
	pop bc
	jp .asm_14fc6

.Func_14ffb:
	ld h, HIGH(wdea2)
	ld a, LOW(wdea2)
	add b
	ld l, a
	ld a, [hl]
	bit 7, a
	jr nz, .asm_15037
.Func_15006:
	add a
	add a ; *4
.asm_15008
	push de
	add $d3
	ld e, a
	ld d, $78
	jr nc, .asm_15011
	inc d
.asm_15011
	ld h, HIGH(wde72)
	ld a, LOW(wde72)
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	ld a, LOW(wde7a)
	add b
	ld l, a
	inc de
	ld a, [de]
	ld [hl], a
	ld h, $54
	ld a, $96
	add b
	ld l, a
	jr nc, .asm_15029
	inc h
.asm_15029
	ld c, [hl]
	ld h, HIGH(wdec2)
	ld a, LOW(wdec2)
	add b
	ld l, a
	ld [hl], c
	add $a8
	ld l, a
	ld [hl], $01
	pop de
.asm_15037
	ret

.Func_15038:
	ld a, [de]
	and $e0
	cp AUDIOCMD_WAIT
	jr nz, .asm_15043
	inc de
	ld a, [de]
	jr .got_duration
.asm_15043
	ld h, HIGH(wdeaa)
	ld a, LOW(wdeaa)
	add b
	ld l, a
	ld a, [de]
	and $e0
	swap a
	srl a
	add [hl]
	add $ab
	ld l, a
	ld a, $00
	adc $79
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
	cp AUDIOCMD_F0
	jr nz, .asm_15081
	inc de
	ld h, HIGH(wde9a)
	ld a, LOW(wde9a)
	add b
	ld l, a
	ld a, [de]
.asm_15071
	swap a
	and $f0
	ld c, a
	ld a, [hl]
	and $0f
	or c
	ld [hl], a
	call Func_15347
	jp .next_cmd

.asm_15081
	cp AUDIOCMD_F1
	jr nz, .asm_150a5
	inc de
	ld a, [de]
	ld c, a
	ld h, HIGH(wde9a)
	ld a, LOW(wde9a)
	add b
	ld l, a
	ld a, [hl]
	swap a
	and $0f
	add c
	bit 7, c
	jr nz, .asm_150a0
	cp $10
	jr c, .asm_150a3
	ld a, 15 ; cap it to max 15
	jr .asm_150a3
.asm_150a0
	jr c, .asm_150a3
	xor a ; cap it to min 0
.asm_150a3
	jr .asm_15071

.asm_150a5
	cp AUDIOCMD_F2
	jr nz, .asm_150ba
	inc de
	ld a, [de]
	add a
	ld c, a
	add a
	add c ; *6
	ld hl, wdeaa
.set_channel_value
	ld c, a
	ld a, l
	add b
	ld l, a
	ld [hl], c
	jp .next_cmd

.asm_150ba
	cp AUDIOCMD_F3
	jr nz, .asm_150cf
	inc de
	ld h, HIGH(wAudioCommandDurations)
	ld a, LOW(wAudioCommandDurations)
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	ld a, LOW(wde82)
	add b
	ld l, a
	ld [hl], $ff
	inc de
	ret

.asm_150cf
	cp AUDIOCMD_F4
	jr nz, .asm_150db
	inc de
	ld a, [de]
	ld hl, wde92
	jp .set_channel_value

.asm_150db
	cp AUDIOCMD_F5
	jr nz, .asm_150e7
	inc de
	ld a, [de]
	ld hl, wde8a
	jp .set_channel_value

.asm_150e7
	cp AUDIOCMD_F6
	jr nz, .asm_150fc
	inc de
	ld h, HIGH(wdea2)
	ld a, LOW(wdea2)
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	bit 7, a
	call nz, .Func_15006
	jp .next_cmd

.asm_150fc
	cp AUDIOCMD_F7
	jr nz, .asm_15108
	inc de
	ld a, [de]
	ld hl, wdeb2
	jp .set_channel_value

.asm_15108
	cp AUDIOCMD_SET_FREQUENCY
	jr nz, .asm_1511e
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

.asm_1511e
	cp AUDIOCMD_SUBTRACT_FREQUENCY
	jr nz, .asm_15135
	inc de
	ld a, [de]
	push de
	cpl
	inc a
	ld e, a
	ld d, $00
	rla
	jr nc, .asm_1512e
	dec d ; $ff
.asm_1512e
	call AddToChannelFrequency
	pop de
	jp .next_cmd

.asm_15135
	cp AUDIOCMD_SET_PAN
	jr nz, .asm_1516f
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

.asm_1516f
	cp AUDIOCMD_E1
	jr nz, .asm_1517b
	inc de
	ld a, [de]
	ld [wde00], a
	jp .next_cmd

.asm_1517b
	cp AUDIOCMD_FF
	jr nz, .stack_commands
	ld h, HIGH(wAudioCommandDurations)
	ld a, LOW(wAudioCommandDurations)
	add b
	ld l, a
	ld [hl], 0
	add wde6a - wAudioCommandDurations
	ld l, a
	xor a
	ld [hl], a
	jp Func_1533b

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
	jr nz, .asm_151bb
	inc de
	ld a, [de]
	ld c, a
	inc de
	ld a, [de]
	ld d, a
	ld e, c
	ret

.asm_151bb
	cp AUDIOCMD_CALL
	jr nz, .asm_151ce
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

.asm_151ce
	cp AUDIOCMD_RET
	jr nz, .asm_151d7
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl
	ret

.asm_151d7
	cp AUDIOCMD_REPEAT
	jr nz, .asm_151e6
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

.asm_151e6
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

Func_151f9:
	ld e, a
	ld a, LOW(wdeb2)
	add b
	ld l, a
	ld a, [hl]
	add a ; *2
	add $9e
	ld l, a
	ld a, $00
	adc $54
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

Func_15235:
	ld h, HIGH(wde82)
	ld a, LOW(wde82)
	add b
	ld l, a
	ld a, [hl]
	and a
	ret z
	cp $ff
	ret z
	dec [hl]
	ret nz
	ld a, LOW(wdea2)
	add b
	ld l, a
	ld a, [hl]
	add a
	add a
	add $02 ; a = a*4 + 2
	jp ExecuteAudioCommands.asm_15008

Func_1524f:
	ld h, HIGH(wde6a)
	ld a, LOW(wde6a)
	add b
	ld l, a
	dec [hl]
	jr z, Func_1525a
	ret

Func_15259:
	inc de
Func_1525a:
	ld h, $de
	ld a, [de]
	ld c, a
	and $e0
	jr nz, .asm_1526d
	ld a, c
	and $1f
	ld c, a
	ld a, $6a
	add b
	ld l, a
	ld [hl], c
	inc de
	ret
.asm_1526d
	cp $20
	jr nz, .asm_1528a
	push bc
	push de
	call Func_153a8
	call AddToChannelFrequency
	pop de
	pop bc

.asm_1527b
	ld a, [de]
	and $10
	jr z, Func_15259
	ld h, HIGH(wde6a)
	ld a, LOW(wde6a)
	add b
	ld l, a
	ld [hl], $01
	inc de
	ret

.asm_1528a
	cp $40
	jr nz, .asm_15294
	ld a, c
	and $0f
	jp .asm_152b2
.asm_15294
	cp $60
	jr nz, .asm_152ba
	push de
	call Func_153a8
	ld h, HIGH(wde9a)
	ld a, LOW(wde9a)
	add b
	ld l, a
	ld a, [hl]
	and $0f
	add e
	bit 7, a
	jr z, .asm_152ab
	xor a
.asm_152ab
	cp $10
	jr c, .asm_152b1
	ld a, $0f
.asm_152b1
	pop de
.asm_152b2
	push de
	call Func_1533b
	pop de
	jp .asm_1527b
.asm_152ba
	cp $80
	jr nz, Func_15311
	ld h, HIGH(wChannelSelectorOffsets)
	ld a, LOW(wChannelSelectorOffsets)
	add b
	ld l, a
	ld a, [hl]
	cp CHANNEL3_LENGTH - 1
	jr z, .asm_152dc
	ld a, CHANNEL_SELECTOR_LENGTH
	call GetPointerToChannelProperty_GotOffset
	ld a, c
	rrca
	rrca
	and $c0
	ld c, a
	ld a, [hl]
	and $3f
	or c
	ld [hl], a
	jp .asm_1527b
.asm_152dc
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
	call LoadWaveSample
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
LoadWaveSample:
	ld de, _AUD3WAVERAM
	ld c, $10
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret

Func_15311:
	cp $e0
	jr nz, .asm_1533a
	ld a, c
	cp $f0
	jr nz, .asm_15326
	inc de
	ld a, [de]
	ld c, a
	ld a, CHANNEL_SELECTOR_ENABLED
	call GetPointerToChannelProperty
	ld [hl], c
	jp Func_15259
.asm_15326
	cp $ff
	jr nz, .asm_15331
	ld a, $6a
	add b
	ld l, a
	ld [hl], $00
	ret
.asm_15331
	ld hl, wdec2
	call ExecuteStackAudioCommands
	jp Func_1525a
.asm_1533a
	ret

Func_1533b:
	ld c, a
	ld h, HIGH(wde9a)
	ld a, LOW(wde9a)
	add b
	ld l, a
	ld a, [hl]
	and $f0
	or c
	ld [hl], a
;	fallthrough

Func_15347:
	push de
	; subtracts from $ff each nybble in [hl]
	; so you get e = ($f - high nybble [hl]) - ($f - low nybble [hl])
	ld a, $ff
	sub [hl]
	swap a
	and $0f
	ld e, a
	ld a, [hl]
	and $0f
	sub e
	ld e, a
	jr nc, .no_underflow
	ld e, $00 ; minimum of 0
.no_underflow
	push hl
	ld hl, wde01
	ld a, b
	cp CHANNEL4 + 1
	jr c, .is_sfx
	inc l ; wde02
.is_sfx
	ld a, $ff
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
; set envelope
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
	db AUD3LEVEL_MUTE ; $0
	db AUD3LEVEL_25   ; $1
	db AUD3LEVEL_25   ; $2
	db AUD3LEVEL_25   ; $3
	db AUD3LEVEL_50   ; $4
	db AUD3LEVEL_50   ; $5
	db AUD3LEVEL_50   ; $6
	db AUD3LEVEL_50   ; $7
	db AUD3LEVEL_100  ; $8
	db AUD3LEVEL_100  ; $9
	db AUD3LEVEL_100  ; $a
	db AUD3LEVEL_100  ; $b
	db AUD3LEVEL_100  ; $c
	db AUD3LEVEL_100  ; $d
	db AUD3LEVEL_100  ; $e
	db AUD3LEVEL_100  ; $f

Func_153a8:
	ld a, c
	and $0f
	ld d, $00
	bit 3, a
	jr z, .asm_153b4
	or $f0
	dec d
.asm_153b4
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

Func_153d3:
	push bc
	push de
	ld d, $dc
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
	jr nc, .asm_153e9
	cpl
	inc a
.asm_153e9
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
; 0x153f6

SECTION "Bank 5@548e", ROMX[$548e], BANK[$5]

; offsets in wAudioStack reserved for each channel
ChannelAudioStackOffsets:
	db LOW(wChannel1AudioStackBottom) ; CHANNEL1
	db LOW(wChannel2AudioStackBottom) ; CHANNEL2
	db LOW(wChannel3AudioStackBottom) ; CHANNEL3
	db LOW(wChannel4AudioStackBottom) ; CHANNEL4
	db LOW(wChannel5AudioStackBottom) ; CHANNEL5
	db LOW(wChannel6AudioStackBottom) ; CHANNEL6
	db LOW(wChannel7AudioStackBottom) ; CHANNEL7
	db LOW(wChannel8AudioStackBottom) ; CHANNEL8
; 0x15496

SECTION "Bank 5@54af", ROMX[$54af], BANK[$5]

WaveSamples:
	table_width 16, WaveSamples
	dn  2,  2,  6,  6, 10, 10, 14, 14, 15, 15, 15, 15, 15, 14, 14, 10, 10,  6,  6,  6,  8, 10, 12, 15, 15, 14, 14, 12, 10,  6,  3,  3 ; WAVEFORM_M_SHAPE
	dn 15, 15, 15, 15, 15, 15, 15, 15,  0,  0,  0,  0,  0,  0,  0,  0, 15, 15, 15, 15, 15, 15, 15, 15,  0,  0,  0,  0,  0,  0,  0,  0 ; WAVEFORM_SQUARE
	dn  1,  3,  5,  7,  9, 11, 13, 15, 13, 11,  9,  7,  5,  3,  1,  0,  1,  3,  5,  7,  9, 11, 13, 15, 13, 11,  9,  7,  5,  3,  1,  0 ; WAVEFORM_SINE
	assert_table_length NUM_WAVEFORMS

MusicHeader_BubblyCloudsIntro:
	db $04
	dwb $55cd, $00 ; CHANNEL1
	dwb $56ac, $04 ; CHANNEL2
	dwb $5780, $10 ; CHANNEL3
	dwb $5852, $0c ; CHANNEL4

MusicHeader_GreenGreensIntro:
	db $04
	dwb $587b, $10 ; CHANNEL1
	dwb $5949, $00 ; CHANNEL2
	dwb $5a22, $04 ; CHANNEL3
	dwb $5b0b, $0c ; CHANNEL4

MusicHeader_InvincibilityCandy:
	db $04
	dwb $5b59, $00 ; CHANNEL1
	dwb $5b91, $10 ; CHANNEL2
	dwb $5bc9, $04 ; CHANNEL3
	dwb $5bf6, $0c ; CHANNEL4

MusicHeader_GameOver:
	db $04
	dwb $5c1f, $00 ; CHANNEL1
	dwb $5c47, $10 ; CHANNEL2
	dwb $5c75, $04 ; CHANNEL3
	dwb $5c99, $0c ; CHANNEL4

MusicHeader_SparklingStar:
	db $02
	dwb $5cbc, $00 ; CHANNEL1
	dwb $5cd1, $04 ; CHANNEL2

MusicHeader_Titlescreen:
	db $04
	dwb $5ce1, $00 ; CHANNEL1
	dwb $5d55, $10 ; CHANNEL2
	dwb $5de2, $04 ; CHANNEL3
	dwb $5e5e, $0c ; CHANNEL4

MusicHeader_FloatIslandsIntro:
	db $04
	dwb $5e93, $10 ; CHANNEL1
	dwb $5f36, $00 ; CHANNEL2
	dwb $600e, $04 ; CHANNEL3
	dwb $6101, $0c ; CHANNEL4

MusicHeader_LifeLost:
	db $03
	dwb $6160, $00 ; CHANNEL1
	dwb $6180, $04 ; CHANNEL2
	dwb $6189, $10 ; CHANNEL3

MusicHeader_BossBattle:
	db $04
	dwb $61a3, $10 ; CHANNEL1
	dwb $6218, $00 ; CHANNEL2
	dwb $62a0, $04 ; CHANNEL3
	dwb $6322, $0c ; CHANNEL4

MusicHeader_MintLeaf:
	db $04
	dwb $639d, $10 ; CHANNEL1
	dwb $6418, $00 ; CHANNEL2
	dwb $6484, $04 ; CHANNEL3
	dwb $64ff, $0c ; CHANNEL4

MusicHeader_Victory:
	db $04
	dwb $6569, $00 ; CHANNEL1
	dwb $6598, $04 ; CHANNEL2
	dwb $65c9, $10 ; CHANNEL3
	dwb $65f8, $0c ; CHANNEL4

MusicHeader_Credits:
	db $04
	dwb $6612, $10 ; CHANNEL1
	dwb $6729, $00 ; CHANNEL2
	dwb $6827, $04 ; CHANNEL3
	dwb $6958, $0c ; CHANNEL4

MusicHeader_CastleLololoIntro:
	db $04
	dwb $69f4, $10 ; CHANNEL1
	dwb $6a71, $00 ; CHANNEL2
	dwb $6b6f, $04 ; CHANNEL3
	dwb $6c4f, $0c ; CHANNEL4

MusicHeader_GreenGreens:
	db $04
	dwb $6ce7, $00 ; CHANNEL1
	dwb $6cef, $04 ; CHANNEL2
	dwb $6d03, $10 ; CHANNEL3
	dwb $6cf7, $0c ; CHANNEL4

MusicHeader_FloatIslands:
	db $04
	dwb $6d0a, $00 ; CHANNEL1
	dwb $6d11, $04 ; CHANNEL2
	dwb $6d18, $10 ; CHANNEL3
	dwb $6d27, $0c ; CHANNEL4

MusicHeader_BubblyClouds:
	db $04
	dwb $6d34, $00 ; CHANNEL1
	dwb $6d3d, $04 ; CHANNEL2
	dwb $6d44, $10 ; CHANNEL3
	dwb $5852, $0c ; CHANNEL4

MusicHeader_CastleLololo:
	db $04
	dwb $6d53, $00 ; CHANNEL1
	dwb $6d5a, $04 ; CHANNEL2
	dwb $6d5f, $10 ; CHANNEL3
	dwb $6d6c, $0c ; CHANNEL4

MusicHeader_DededeBattle:
	db $04
	dwb $6d77, $10 ; CHANNEL1
	dwb $6dda, $00 ; CHANNEL2
	dwb $6e4f, $04 ; CHANNEL3
	dwb $6ebf, $0c ; CHANNEL4

MusicHeader_MtDedede:
	db $04
	dwb $6eec, $10 ; CHANNEL1
	dwb $6f10, $00 ; CHANNEL2
	dwb $6f34, $04 ; CHANNEL3
	dwb $6f54, $0c ; CHANNEL4
; 0x155cd

SECTION "Bank 5@707e", ROMX[$707e], BANK[$5]

SFXHeader_00:
	db $02
	dwb $7144, $00 ; CHANNEL1
	dwb $71da, $04 ; CHANNEL2

SFXHeader_Inhale:
	db $02
	dwb $71e0, $04 ; CHANNEL1
	dwb $721b, $0c ; CHANNEL2

SFXHeader_02:
	db $01
	dwb $723b, $04 ; CHANNEL1

SFXHeader_Swallow:
	db $01
	dwb $725c, $04 ; CHANNEL1

SFXHeader_Jump:
	db $01
	dwb $728d, $04 ; CHANNEL1

SFXHeader_Bump:
	db $01
	dwb $72b0, $04 ; CHANNEL1

SFXHeader_Damage:
	db $02
	dwb $72cd, $0c ; CHANNEL1
	dwb $72f6, $04 ; CHANNEL2

SFXHeader_EnterDoor:
	db $02
	dwb $7317, $04 ; CHANNEL1
	dwb $7356, $00 ; CHANNEL2

SFXHeader_08:
	db $01
	dwb $735f, $04 ; CHANNEL1

SFXHeader_PowerUp:
	db $01
	dwb $7378, $04 ; CHANNEL1

SFXHeader_10:
	db $01
	dwb $7394, $0c ; CHANNEL1

SFXHeader_RestoreHp:
	db $01
	dwb $73ba, $04 ; CHANNEL1

SFXHeader_WarpStar:
	db $02
	dwb $73d4, $04 ; CHANNEL1
	dwb $743d, $00 ; CHANNEL2

SFXHeader_13:
	db $02
	dwb $744a, $04 ; CHANNEL1
	dwb $74dc, $00 ; CHANNEL2

SFXHeader_14:
	db $01
	dwb $74e4, $0c ; CHANNEL1

SFXHeader_15:
	db $01
	dwb $74f8, $04 ; CHANNEL1

SFXHeader_16:
	db $01
	dwb $7515, $04 ; CHANNEL1

SFXHeader_17:
	db $01
	dwb $7544, $0c ; CHANNEL1

SFXHeader_18:
	db $01
	dwb $7559, $04 ; CHANNEL1

SFXHeader_19:
	db $01
	dwb $757e, $0c ; CHANNEL1

SFXHeader_20:
	db $01
	dwb $7597, $0c ; CHANNEL1

SFXHeader_21:
	db $01
	dwb $75b6, $0c ; CHANNEL1

SFXHeader_1Up:
	db $02
	dwb $75cf, $00 ; CHANNEL1
	dwb $75e7, $04 ; CHANNEL2

SFXHeader_23:
	db $03
	dwb $75ee, $0c ; CHANNEL1
	dwb $7602, $04 ; CHANNEL2
	dwb $7618, $00 ; CHANNEL3

SFXHeader_Pause:
	db $04
	dwb $762e, $04 ; CHANNEL1
	dwb $7649, $00 ; CHANNEL2
	dwb $7678, $10 ; CHANNEL3
	dwb $767b, $0c ; CHANNEL4

SFXHeader_25:
	db $01
	dwb $767e, $0c ; CHANNEL1

SFXHeader_Cursor:
	db $01
	dwb $76a2, $04 ; CHANNEL1

SFXHeader_GameStart:
	db $01
	dwb $76b0, $04 ; CHANNEL1

SFXHeader_28:
	db $01
	dwb $76c1, $0c ; CHANNEL1

SFXHeader_29:
	db $03
	dwb $76d6, $0c ; CHANNEL1
	dwb $76fa, $04 ; CHANNEL2
	dwb $7717, $00 ; CHANNEL3

SFXHeader_30:
	db $01
	dwb $7734, $04 ; CHANNEL1

SFXHeader_31:
	db $01
	dwb $7747, $04 ; CHANNEL1

SFXHeader_BossDefeat:
	db $01
	dwb $7768, $0c ; CHANNEL1

SFXHeader_33:
	db $04
	dwb $7798, $04 ; CHANNEL1
	dwb $77a0, $00 ; CHANNEL2
	dwb $77a8, $10 ; CHANNEL3
	dwb $77ad, $0c ; CHANNEL4

SFXHeader_34:
	db $02
	dwb $77b2, $04 ; CHANNEL1
	dwb $721b, $0c ; CHANNEL2

SFXHeader_35:
	db $01
	dwb $77b7, $04 ; CHANNEL1
; 0x17144

SECTION "Bank 5@79f3", ROMX[$79f3], BANK[$5]

MusicHeaders:
	table_width 2, MusicHeaders
	dw MusicHeader_BubblyCloudsIntro  ; MUSIC_BUBBLY_CLOUDS_INTRO
	dw MusicHeader_GreenGreensIntro   ; MUSIC_GREEN_GREENS_INTRO
	dw MusicHeader_InvincibilityCandy ; MUSIC_INVINCIBILITY_CANDY
	dw MusicHeader_GameOver           ; MUSIC_GAME_OVER
	dw MusicHeader_SparklingStar      ; MUSIC_SPARKLING_STAR
	dw MusicHeader_Titlescreen        ; MUSIC_TITLESCREEN
	dw MusicHeader_FloatIslandsIntro  ; MUSIC_FLOAT_ISLANDS_INTRO
	dw MusicHeader_LifeLost           ; MUSIC_LIFE_LOST
	dw MusicHeader_BossBattle         ; MUSIC_BOSS_BATTLE
	dw MusicHeader_MintLeaf           ; MUSIC_MINT_LEAF
	dw MusicHeader_Victory            ; MUSIC_VICTORY
	dw MusicHeader_Credits            ; MUSIC_CREDITS
	dw MusicHeader_CastleLololoIntro  ; MUSIC_CASTLE_LOLOLO_INTRO
	dw MusicHeader_GreenGreens        ; MUSIC_GREEN_GREENS
	dw MusicHeader_FloatIslands       ; MUSIC_FLOAT_ISLANDS
	dw MusicHeader_BubblyClouds       ; MUSIC_BUBBLY_CLOUDS
	dw MusicHeader_CastleLololo       ; MUSIC_CASTLE_LOLOLO
	dw MusicHeader_DededeBattle       ; MUSIC_DEDEDE_BATTLE
	dw MusicHeader_MtDedede           ; MUSIC_MT_DEDEDE
	assert_table_length NUM_MUSICS

SFXHeaders:
	table_width 2, SFXHeaders
	dw SFXHeader_00         ; SFX_00
	dw SFXHeader_Inhale     ; SFX_INHALE
	dw SFXHeader_02         ; SFX_02
	dw SFXHeader_Swallow    ; SFX_SWALLOW
	dw SFXHeader_Jump       ; SFX_JUMP
	dw SFXHeader_Bump       ; SFX_BUMP
	dw SFXHeader_Damage     ; SFX_DAMAGE
	dw SFXHeader_EnterDoor  ; SFX_ENTER_DOOR
	dw SFXHeader_08         ; SFX_08
	dw SFXHeader_PowerUp    ; SFX_POWER_UP
	dw SFXHeader_10         ; SFX_10
	dw SFXHeader_RestoreHp  ; SFX_RESTORE_HP
	dw SFXHeader_WarpStar   ; SFX_WARP_STAR
	dw SFXHeader_13         ; SFX_13
	dw SFXHeader_14         ; SFX_14
	dw SFXHeader_15         ; SFX_15
	dw SFXHeader_16         ; SFX_16
	dw SFXHeader_17         ; SFX_17
	dw SFXHeader_18         ; SFX_18
	dw SFXHeader_19         ; SFX_19
	dw SFXHeader_20         ; SFX_20
	dw SFXHeader_21         ; SFX_LOSE_LIFE
	dw SFXHeader_1Up        ; SFX_1UP
	dw SFXHeader_23         ; SFX_23
	dw SFXHeader_Pause      ; SFX_PAUSE
	dw SFXHeader_25         ; SFX_25
	dw SFXHeader_Cursor     ; SFX_CURSOR
	dw SFXHeader_GameStart  ; SFX_GAME_START
	dw SFXHeader_28         ; SFX_28
	dw SFXHeader_29         ; SFX_29
	dw SFXHeader_30         ; SFX_30
	dw SFXHeader_31         ; SFX_31
	dw SFXHeader_BossDefeat ; SFX_BOSS_DEFEAT
	dw SFXHeader_33         ; SFX_33
	dw SFXHeader_34         ; SFX_34
	dw SFXHeader_35         ; SFX_35
	assert_table_length NUM_SFX

; for each SFX, lists the channels that are used
SFXRequiredChannels:
	table_width 1, SFXRequiredChannels
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_00
	db SFXFLAG_SQUARE2 | SFXFLAG_NOISE ; SFX_INHALE
	db SFXFLAG_SQUARE2 ; SFX_02
	db SFXFLAG_SQUARE2 ; SFX_SWALLOW
	db SFXFLAG_SQUARE2 ; SFX_JUMP
	db SFXFLAG_SQUARE2 ; SFX_BUMP
	db SFXFLAG_SQUARE2 | SFXFLAG_NOISE ; SFX_DAMAGE
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_ENTER_DOOR
	db SFXFLAG_SQUARE2 ; SFX_08
	db SFXFLAG_SQUARE2 ; SFX_POWER_UP
	db SFXFLAG_NOISE ; SFX_10
	db SFXFLAG_SQUARE2 ; SFX_RESTORE_HP
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_WARP_STAR
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_13
	db SFXFLAG_NOISE ; SFX_14
	db SFXFLAG_SQUARE2 ; SFX_15
	db SFXFLAG_SQUARE2 ; SFX_16
	db SFXFLAG_NOISE ; SFX_17
	db SFXFLAG_SQUARE2 ; SFX_18
	db SFXFLAG_NOISE ; SFX_19
	db SFXFLAG_NOISE ; SFX_20
	db SFXFLAG_NOISE ; SFX_21
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_1UP
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 | SFXFLAG_NOISE ; SFX_23
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 | SFXFLAG_NOISE | SFXFLAG_WAVE ; SFX_PAUSE
	db SFXFLAG_NOISE ; SFX_25
	db SFXFLAG_SQUARE2 ; SFX_CURSOR
	db SFXFLAG_SQUARE2 ; SFX_GAME_START
	db SFXFLAG_NOISE ; SFX_28
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 ; SFX_29
	db SFXFLAG_SQUARE2 ; SFX_30
	db SFXFLAG_SQUARE2 ; SFX_31
	db SFXFLAG_NOISE ; SFX_BOSS_DEFEAT
	db SFXFLAG_SQUARE1 | SFXFLAG_SQUARE2 | SFXFLAG_NOISE | SFXFLAG_WAVE ; SFX_33
	db SFXFLAG_SQUARE2 | SFXFLAG_NOISE ; SFX_34
	db SFXFLAG_SQUARE2 ; SFX_35
	assert_table_length NUM_SFX

; priority values for each SFX
; lower value means higher priority
SFXPriorities:
	table_width 1, SFXPriorities
	db 10 ; SFX_00
	db 50 ; SFX_INHALE
	db 50 ; SFX_02
	db 50 ; SFX_SWALLOW
	db 50 ; SFX_JUMP
	db 51 ; SFX_BUMP
	db 40 ; SFX_DAMAGE
	db 20 ; SFX_ENTER_DOOR
	db 40 ; SFX_08
	db 45 ; SFX_POWER_UP
	db 35 ; SFX_10
	db 25 ; SFX_RESTORE_HP
	db  0 ; SFX_WARP_STAR
	db  0 ; SFX_13
	db 50 ; SFX_14
	db 50 ; SFX_15
	db 50 ; SFX_16
	db 55 ; SFX_17
	db 55 ; SFX_18
	db 50 ; SFX_19
	db 30 ; SFX_20
	db  5 ; SFX_21
	db  0 ; SFX_1UP
	db 20 ; SFX_23
	db  0 ; SFX_PAUSE
	db  9 ; SFX_25
	db 50 ; SFX_CURSOR
	db 50 ; SFX_GAME_START
	db 49 ; SFX_28
	db  5 ; SFX_29
	db 50 ; SFX_30
	db 50 ; SFX_31
	db 35 ; SFX_BOSS_DEFEAT
	db  1 ; SFX_33
	db 49 ; SFX_34
	db 49 ; SFX_35
	assert_table_length NUM_SFX

; triangle wave sample
TriangleWaveSample:
	dn  0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 14, 13, 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1,  0,  0
; 0x17ab9
