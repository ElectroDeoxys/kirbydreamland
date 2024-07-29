InitAudio::
	ld a, AUDENA_ON
	ldh [rAUDENA], a
	ld a, MAX_VOLUME
	ldh [rAUDVOL], a
	ld a, AUDTERM_1_RIGHT | AUDTERM_2_RIGHT | AUDTERM_3_RIGHT | AUDTERM_4_RIGHT | AUDTERM_1_LEFT | AUDTERM_2_LEFT | AUDTERM_3_LEFT | AUDTERM_4_LEFT
	ldh [rAUDTERM], a
	ld a, $ff
	ld [wde01], a
	ld [wde02], a
	ld [wWaveSample], a

	ld hl, wChannel1
	ld b, $14
	ld a, $aa
.loop_fill
	ld [hli], a
	dec b
	jr nz, .loop_fill

	ld hl, TriangleWaveSample
	call LoadWaveSample

	ld a, MUSIC_NONE
	call Func_14dc5
	ld a, SFX_NONE
	call Func_14c9e

	call Func_14e76

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
Func_14c9e::
	ld e, a
	cp SFX_NONE
	jp z, Func_14d2c
	ld d, $00
	ld a, [wde03]
	and a
	jr z, .asm_14cd8
	ld hl, Data_17a61
	add hl, de
	and [hl]
	jr z, .asm_14cd8
	ld bc, CHANNEL_4
.asm_14cb6
	ld hl, Data_17a61
	add hl, de
	ld a, [hl]
	ld hl, wdeca
	add hl, bc
	and [hl]
	jr z, .asm_14cd3
	ld hl, wdece
	add hl, bc
	ld a, [hl]
	ld hl, Data_17a85
	add hl, de
	cp [hl]
	ret c
	ld hl, wde52
	add hl, bc
	ld [hl], CHANNEL_OFF
.asm_14cd3
	dec c
	bit 7, c
	jr z, .asm_14cb6

.asm_14cd8
	ld hl, Data_17a61
	add hl, de
	ld a, [hl]
	ld [wde04], a
	ld hl, Data_17a85
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
	ld h, a
	ld l, c
	push hl
	ld bc, CHANNEL_4
.asm_14cf5
	ld hl, wde52
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .next_channel
	call Func_14d67
	ld hl, sp+$00
	ld a, [hl]
	ld hl, wdece
	add hl, bc
	ld [hl], a
	ld a, [wde04]
	ld hl, wdeca
	add hl, bc
	ld [hl], a
	pop hl
	dec h
	push hl
	jr z, .asm_14d1a
.next_channel
	dec c
	bit 7, c
	jr z, .asm_14cf5
.asm_14d1a
	pop hl
;	fallthrough

Func_14d1b:
	ld a, [wdeca + CHANNEL_1]
	ld hl, wdeca + CHANNEL_2
	ld c, NUM_SFX_CHANNELS - 1
.loop
	or [hl]
	inc hl
	dec c
	jr nz, .loop
	ld [wde03], a
	ret

Func_14d2c:
	ld bc, CHANNEL_4
.asm_14d2f
	ld hl, wde52
	add hl, bc
	ld [hl], b ; CHANNEL_OFF
	ld hl, wdeca
	add hl, bc
	ld [hl], b ; 0
	ld hl, wdece
	add hl, bc
	ld [hl], $ff
	dec c
	bit 7, c
	jr z, .asm_14d2f

	ld hl, Data_14d53
	ld de, wde1a
	ld c, $14
.loop_copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop_copy
	ret

Data_14d53:
	db AUD1SWEEP_DOWN, AUDLEN_DUTY_12_5, AUDENV_UP, $00, AUDHIGH_RESTART, $00
	db AUDLEN_DUTY_12_5, AUDENV_UP, $00, AUDHIGH_RESTART
	db AUD3ENA_ON, $00, AUD3LEVEL_MUTE, $00, AUDHIGH_RESTART, $00
	db $00, AUDENV_UP, AUD4POLY_15STEP, $80

; input:
; - [de] = ?
; - bc = channel
Func_14d67:
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
	ld hl, Data_1548e
	add hl, bc
	ld a, [hl]
	ld hl, wdeba
	add hl, bc
	ld [hl], a
	inc de
	ld a, [de]
	ld hl, wde5a
	add hl, bc
	ld [hl], a
	inc de
	ld a, [de]
	ld hl, wde62
	add hl, bc
	ld [hl], a
	inc de
	ld a, [de]
	sra a
	sra a 
	add LOW(Data_14dc0)
	ld l, a
	ld h, HIGH(Data_14dc0)
	jr nc, .asm_14dad
	inc h
.asm_14dad
	ld a, [hl]
	ld hl, wde4a
	add hl, bc
	ld [hl], a
	ld hl, wde52
	add hl, bc
	ld [hl], CHANNEL_ON
	ld hl, wde82
	add hl, bc
	ld [hl], $01
	ret

Data_14dc0:
	db $00, $05, $ff, $0f, $0a

; input:
; - a = MUSIC_* constant
Func_14dc5::
	ld b, a
	ld hl, wde52 + CHANNEL_5
	ld c, NUM_MUSIC_CHANNELS
	xor a ; CHANNEL_OFF
.loop_clear
	ld [hli], a
	dec c
	jr nz, .loop_clear

	ld hl, Data_14d53
	ld de, wde2e
	ld c, $14
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
	ld h, a
	push hl
	ld bc, CHANNEL_8
.loop
	ld hl, wde52
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .next
	call Func_14d67
	pop hl
	dec h
	push hl
	jr z, .done
.next
	dec c
	ld a, CHANNEL_5 - 1
	cp c
	jr nz, .loop
.done
	pop hl
	ret

Func_14e0b::
	ld b, CHANNEL_8
.asm_14e0d
	ld h, HIGH(wde52)
	ld a, LOW(wde52)
	add b
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_14e52
	ld a, b
	cp $04
	ld a, $1a
	jr c, .asm_14e20
	ld a, $2e
.asm_14e20
	ld [wdf80], a
	ld h, HIGH(wde5a)
	ld a, LOW(wde5a)
	add b
	ld l, a
	push hl
	ld e, [hl]
	add NUM_CHANNELS
	ld l, a ; wde62
	push hl
	ld d, [hl]
	push bc
	call Func_14f5d
	pop bc
	pop hl
	ld [hl], d
	pop hl
	ld [hl], e
	call Func_15235
	ld h, HIGH(wde72)
	ld a, LOW(wde72)
	add b
	ld l, a
	push hl
	ld e, [hl]
	add $08
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
.asm_14e52
	dec b
	bit 7, b
	jr z, .asm_14e0d
	ld b, $03
.asm_14e59
	ld h, HIGH(wde52)
	ld a, LOW(wde52)
	add b
	ld l, a
	ld a, [hl]
	and a
	jr nz, .asm_14e6e
	ld a, $ce
	add b
	ld l, a
	ld [hl], $ff
	add $fc
	ld l, a
	ld [hl], $00
.asm_14e6e
	dec b
	bit 7, b
	jr z, .asm_14e59
	call Func_14d1b
;	fallthrough

Func_14e76:
	ld de, wde2e
	ld a, [wde03]
	bit 0, a
	jr z, .asm_14e82
	ld e, LOW(wde1a)
.asm_14e82
	ld b, FALSE
	ld hl, wChannel1
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
	ld de, wde34
	ld a, [wde03]
	bit 1, a
	jr z, .asm_14eb3
	ld e, LOW(wde20)
.asm_14eb3
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
	ld de, wde38
	ld a, [wde03]
	bit 4, a
	jr z, .asm_14ee4
	ld e, LOW(wde24)
.asm_14ee4
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

	ld de, wde3e
	ld a, [wde03]
	bit 3, a
	jr z, .asm_14f03
	ld e, LOW(wde2a)
.asm_14f03
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
	jr nz, .asm_14f28
	; envelope changed, need to restart
	ld a, [wChannel4FreqHi]
	set 7, a
	ldh [rAUD4GO], a

.asm_14f28
	ld a, [wde03]
	ld c, a
	ld a, [wde46]
	bit 0, c
	jr z, .asm_14f36
	ld a, [wde42]
.asm_14f36
	ld b, a
	ld a, [wde47]
	bit 1, c
	jr z, .asm_14f41
	ld a, [wde43]
.asm_14f41
	or b
	ld b, a
	ld a, [wde48]
	bit 4, c
	jr z, .asm_14f4d
	ld a, [wde44]
.asm_14f4d
	or b
	ld b, a
	ld a, [wde49]
	bit 3, c
	jr z, .asm_14f59
	ld a, [wde45]
.asm_14f59
	or b
	ldh [rAUDTERM], a
	ret

Func_14f5d:
	ld h, HIGH(wde52)
	ld a, LOW(wde52)
	add b
	ld l, a
	dec [hl]
	jr z, .asm_14f68
	ret
.asm_14f67
	inc de
.asm_14f68
	ld h, $de
	ld a, [de]
	ld c, a
	and $e0
	cp $e0
	jp z, .asm_15064
	ld a, $4a
	add b
	ld l, a
	ld a, [hl]
	cp $0f
	jr nz, .asm_14f9a
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
	ld a, $12
	call Func_153cb
	ld [hl], c
	jp .asm_14fcd
.asm_14f9a
	ld a, c
	and $1f
	cp $10
	jr z, .asm_14fb6
	bit 4, a
	jr z, .asm_14fa7
	or $e0
.asm_14fa7
	ld c, a
	ld a, $8a
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
	jp z, .asm_14f67
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
	add $10
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
	add a
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
	ld a, $7a
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
	cp $c0
	jr nz, .asm_15043
	inc de
	ld a, [de]
	jr .asm_1505a
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
.asm_1505a
	ld c, a
	ld h, HIGH(wde52)
	ld a, LOW(wde52)
	add b
	ld l, a
	ld a, c
	ld [hl], a
	ret

.asm_15064
	ld a, c
	cp $f0
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
	jp .asm_14f67
.asm_15081
	cp $f1
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
	ld a, $0f
	jr .asm_150a3
.asm_150a0
	jr c, .asm_150a3
	xor a
.asm_150a3
	jr .asm_15071
.asm_150a5
	cp $f2
	jr nz, .asm_150ba
	inc de
	ld a, [de]
	add a
	ld c, a
	add a
	add c ; *6
	ld hl, wdeaa
.asm_150b2
	ld c, a
	ld a, l
	add b
	ld l, a
	ld [hl], c
	jp .asm_14f67
.asm_150ba
	cp $f3
	jr nz, .asm_150cf
	inc de
	ld h, HIGH(wde52)
	ld a, LOW(wde52)
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	ld a, $82
	add b
	ld l, a
	ld [hl], $ff
	inc de
	ret
.asm_150cf
	cp $f4
	jr nz, .asm_150db
	inc de
	ld a, [de]
	ld hl, wde92
	jp .asm_150b2
.asm_150db
	cp $f5
	jr nz, .asm_150e7
	inc de
	ld a, [de]
	ld hl, wde8a
	jp .asm_150b2
.asm_150e7
	cp $f6
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
	jp .asm_14f67
.asm_150fc
	cp $f7
	jr nz, .asm_15108
	inc de
	ld a, [de]
	ld hl, wdeb2
	jp .asm_150b2
.asm_15108
	cp $e2
	jr nz, .asm_1511e
	inc de
	ld a, [de]
	ld c, a
	inc de
	ld a, [de]
	push de
	ld d, a
	ld e, c
	call Func_15215
	call .Func_14ffb
	pop de
	jp .asm_14f67
.asm_1511e
	cp $e3
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
	dec d
.asm_1512e
	call Func_153b6
	pop de
	jp .asm_14f67
.asm_15135
	cp $fe
	jr nz, .asm_1516f
	inc de
	ld a, [de]
	ld c, a
	push de
	ld h, HIGH(wde4a)
	ld a, LOW(wde4a)
	add b
	ld l, a
	ld e, [hl]
	srl e
	srl e
	ld d, $00
	ld hl, wde42
	add hl, de
	ld a, c
	rra
	jr nc, .asm_15154
	set 4, d
.asm_15154
	rra
	jr nc, .asm_15158
	inc d
.asm_15158
	inc e
	dec e
	jr z, .asm_15161
.asm_1515c
	rlc d
	dec e
	jr nz, .asm_1515c
.asm_15161
	ld a, b
	cp $04
	jr c, .asm_1516a
	inc l
	inc l
	inc l
	inc l
.asm_1516a
	ld [hl], d
	pop de
	jp .asm_14f67
.asm_1516f
	cp $e1
	jr nz, .asm_1517b
	inc de
	ld a, [de]
	ld [wde00], a
	jp .asm_14f67
.asm_1517b
	cp $ff
	jr nz, .asm_1518f
	ld h, HIGH(wde52)
	ld a, LOW(wde52)
	add b
	ld l, a
	ld [hl], $00
	add $18
	ld l, a
	xor a
	ld [hl], a
	jp Func_1533b
.asm_1518f
	ld hl, wdeba
	call Func_15198
	jp .asm_14f68

Func_15198:
	ld a, l
	add b
	ld l, a
	push hl
	ld a, $00
	add [hl]
	ld l, a
	ld a, $df
	adc $00
	ld h, a
	call .Func_151ae
	ld a, l
	sub $00
	pop hl
	ld [hl], a
	ret

.Func_151ae:
	ld a, [de]
	cp $f8
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
	cp $fa
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
	cp $fb
	jr nz, .asm_151d7
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl
	ret
.asm_151d7
	cp $fc
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
	cp $fd
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
	ld a, $b2
	add b
	ld l, a
	ld a, [hl]
	add a
	add $9e
	ld l, a
	ld a, $00
	adc $54
	ld h, a
	ld a, [hli]
	rlc e
	add e
	ld e, a
	ld a, [hl]
	adc $00
	ld h, a
	ld l, e
	ld a, [hli]
	ld d, a
	ld e, [hl]

Func_15215:
	ld h, HIGH(wde4a)
	ld a, LOW(wde4a)
	add b
	ld l, a
	ld a, [hl]
	cp $0a
	jr z, .asm_15227
	ld a, $03
	call Func_153ca
	jr .asm_15231
.asm_15227
	ld a, $00
	call Func_153ca
	ld [hl], $80
	inc l
	inc l
	inc l
.asm_15231
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
	ld a, $a2
	add b
	ld l, a
	ld a, [hl]
	add a
	add a
	add $02
	jp Func_14f5d.asm_15008

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
	call Func_153b6
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
	ld h, HIGH(wde4a)
	ld a, LOW(wde4a)
	add b
	ld l, a
	ld a, [hl]
	cp $0a
	jr z, .asm_152dc
	ld a, $01
	call Func_153ca
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
	ld a, $00
	call Func_153c2
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
	call Func_15198
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
	ld a, $ff
	sub [hl]
	swap a
	and $0f
	ld e, a
	ld a, [hl]
	and $0f
	sub e
	ld e, a
	jr nc, .asm_15359
	ld e, $00
.asm_15359
	push hl
	ld hl, wde01
	ld a, b
	cp $04
	jr c, .asm_15363
	inc l
.asm_15363
	ld a, $ff
	sub [hl]
	swap a
	and $0f
	ld d, a
	pop hl
	ld a, e
	sub d
	jr nc, .asm_15371
	xor a
.asm_15371
	ld e, a
	ld a, $4a
	add b
	ld l, a
	ld a, [hl]
	cp $0a
	jr z, .asm_15389
	ld a, $02
	call Func_153ca
	swap e
	ld a, [hl]
	and $0f
	or e
	ld [hl], a
	pop de
	ret
.asm_15389
	ld d, $00
	ld hl, Data_15398
	add hl, de
	ld e, [hl]
	ld a, $02
	call Func_153c2
	ld [hl], e
	pop de
	ret

Data_15398:
	db $00, $60, $60, $60, $40, $40, $40, $40, $20, $20, $20, $20, $20, $20, $20, $20

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

Func_153b6:
	ld a, $03
	call Func_153c2
	ld a, e
	add [hl]
	ld [hli], a
	ld a, d
	adc [hl]
	ld [hl], a
	ret

Func_153c2:
	push af
	ld h, HIGH(wde4a)
	ld a, LOW(wde4a)
	add b
	ld l, a
	pop af
;	fallthrough
Func_153ca:
	add [hl]
Func_153cb:
	ld hl, wdf80
	add [hl]
	ld l, a
	ld h, $de
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

Data_1548e:
	db $10 ; CHANNEL_1
	db $20 ; CHANNEL_2
	db $30 ; CHANNEL_3
	db $40 ; CHANNEL_4
	db $50 ; CHANNEL_5
	db $60 ; CHANNEL_6
	db $70 ; CHANNEL_7
	db $80 ; CHANNEL_8
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
	dwb $55cd, $00 ; CHANNEL_1
	dwb $56ac, $04 ; CHANNEL_2
	dwb $5780, $10 ; CHANNEL_3
	dwb $5852, $0c ; CHANNEL_4

MusicHeader_GreenGreensIntro:
	db $04
	dwb $587b, $10 ; CHANNEL_1
	dwb $5949, $00 ; CHANNEL_2
	dwb $5a22, $04 ; CHANNEL_3
	dwb $5b0b, $0c ; CHANNEL_4

MusicHeader_InvincibilityCandy:
	db $04
	dwb $5b59, $00 ; CHANNEL_1
	dwb $5b91, $10 ; CHANNEL_2
	dwb $5bc9, $04 ; CHANNEL_3
	dwb $5bf6, $0c ; CHANNEL_4

MusicHeader_GameOver:
	db $04
	dwb $5c1f, $00 ; CHANNEL_1
	dwb $5c47, $10 ; CHANNEL_2
	dwb $5c75, $04 ; CHANNEL_3
	dwb $5c99, $0c ; CHANNEL_4

MusicHeader_SparklingStar:
	db $02
	dwb $5cbc, $00 ; CHANNEL_1
	dwb $5cd1, $04 ; CHANNEL_2

MusicHeader_Titlescreen:
	db $04
	dwb $5ce1, $00 ; CHANNEL_1
	dwb $5d55, $10 ; CHANNEL_2
	dwb $5de2, $04 ; CHANNEL_3
	dwb $5e5e, $0c ; CHANNEL_4

MusicHeader_FloatIslandsIntro:
	db $04
	dwb $5e93, $10 ; CHANNEL_1
	dwb $5f36, $00 ; CHANNEL_2
	dwb $600e, $04 ; CHANNEL_3
	dwb $6101, $0c ; CHANNEL_4

MusicHeader_LifeLost:
	db $03
	dwb $6160, $00 ; CHANNEL_1
	dwb $6180, $04 ; CHANNEL_2
	dwb $6189, $10 ; CHANNEL_3

MusicHeader_BossBattle:
	db $04
	dwb $61a3, $10 ; CHANNEL_1
	dwb $6218, $00 ; CHANNEL_2
	dwb $62a0, $04 ; CHANNEL_3
	dwb $6322, $0c ; CHANNEL_4

MusicHeader_MintLeaf:
	db $04
	dwb $639d, $10 ; CHANNEL_1
	dwb $6418, $00 ; CHANNEL_2
	dwb $6484, $04 ; CHANNEL_3
	dwb $64ff, $0c ; CHANNEL_4

MusicHeader_Victory:
	db $04
	dwb $6569, $00 ; CHANNEL_1
	dwb $6598, $04 ; CHANNEL_2
	dwb $65c9, $10 ; CHANNEL_3
	dwb $65f8, $0c ; CHANNEL_4

MusicHeader_Credits:
	db $04
	dwb $6612, $10 ; CHANNEL_1
	dwb $6729, $00 ; CHANNEL_2
	dwb $6827, $04 ; CHANNEL_3
	dwb $6958, $0c ; CHANNEL_4

MusicHeader_CastleLololoIntro:
	db $04
	dwb $69f4, $10 ; CHANNEL_1
	dwb $6a71, $00 ; CHANNEL_2
	dwb $6b6f, $04 ; CHANNEL_3
	dwb $6c4f, $0c ; CHANNEL_4

MusicHeader_GreenGreens:
	db $04
	dwb $6ce7, $00 ; CHANNEL_1
	dwb $6cef, $04 ; CHANNEL_2
	dwb $6d03, $10 ; CHANNEL_3
	dwb $6cf7, $0c ; CHANNEL_4

MusicHeader_FloatIslands:
	db $04
	dwb $6d0a, $00 ; CHANNEL_1
	dwb $6d11, $04 ; CHANNEL_2
	dwb $6d18, $10 ; CHANNEL_3
	dwb $6d27, $0c ; CHANNEL_4

MusicHeader_BubblyClouds:
	db $04
	dwb $6d34, $00 ; CHANNEL_1
	dwb $6d3d, $04 ; CHANNEL_2
	dwb $6d44, $10 ; CHANNEL_3
	dwb $5852, $0c ; CHANNEL_4

MusicHeader_CastleLololo:
	db $04
	dwb $6d53, $00 ; CHANNEL_1
	dwb $6d5a, $04 ; CHANNEL_2
	dwb $6d5f, $10 ; CHANNEL_3
	dwb $6d6c, $0c ; CHANNEL_4

MusicHeader_DededeBattle:
	db $04
	dwb $6d77, $10 ; CHANNEL_1
	dwb $6dda, $00 ; CHANNEL_2
	dwb $6e4f, $04 ; CHANNEL_3
	dwb $6ebf, $0c ; CHANNEL_4

MusicHeader_MtDedede:
	db $04
	dwb $6eec, $10 ; CHANNEL_1
	dwb $6f10, $00 ; CHANNEL_2
	dwb $6f34, $04 ; CHANNEL_3
	dwb $6f54, $0c ; CHANNEL_4
; 0x155cd

SECTION "Bank 5@707e", ROMX[$707e], BANK[$5]

SFXHeader_00:
	db $02
	dwb $7144, $00 ; CHANNEL_1
	dwb $71da, $04 ; CHANNEL_2

SFXHeader_Inhale:
	db $02
	dwb $71e0, $04 ; CHANNEL_1
	dwb $721b, $0c ; CHANNEL_2

SFXHeader_02:
	db $01
	dwb $723b, $04 ; CHANNEL_1

SFXHeader_Swallow:
	db $01
	dwb $725c, $04 ; CHANNEL_1

SFXHeader_Jump:
	db $01
	dwb $728d, $04 ; CHANNEL_1

SFXHeader_Bump:
	db $01
	dwb $72b0, $04 ; CHANNEL_1

SFXHeader_Damage:
	db $02
	dwb $72cd, $0c ; CHANNEL_1
	dwb $72f6, $04 ; CHANNEL_2

SFXHeader_EnterDoor:
	db $02
	dwb $7317, $04 ; CHANNEL_1
	dwb $7356, $00 ; CHANNEL_2

SFXHeader_08:
	db $01
	dwb $735f, $04 ; CHANNEL_1

SFXHeader_PowerUp:
	db $01
	dwb $7378, $04 ; CHANNEL_1

SFXHeader_10:
	db $01
	dwb $7394, $0c ; CHANNEL_1

SFXHeader_RestoreHp:
	db $01
	dwb $73ba, $04 ; CHANNEL_1

SFXHeader_WarpStar:
	db $02
	dwb $73d4, $04 ; CHANNEL_1
	dwb $743d, $00 ; CHANNEL_2

SFXHeader_13:
	db $02
	dwb $744a, $04 ; CHANNEL_1
	dwb $74dc, $00 ; CHANNEL_2

SFXHeader_14:
	db $01
	dwb $74e4, $0c ; CHANNEL_1

SFXHeader_15:
	db $01
	dwb $74f8, $04 ; CHANNEL_1

SFXHeader_16:
	db $01
	dwb $7515, $04 ; CHANNEL_1

SFXHeader_17:
	db $01
	dwb $7544, $0c ; CHANNEL_1

SFXHeader_18:
	db $01
	dwb $7559, $04 ; CHANNEL_1

SFXHeader_19:
	db $01
	dwb $757e, $0c ; CHANNEL_1

SFXHeader_20:
	db $01
	dwb $7597, $0c ; CHANNEL_1

SFXHeader_21:
	db $01
	dwb $75b6, $0c ; CHANNEL_1

SFXHeader_1Up:
	db $02
	dwb $75cf, $00 ; CHANNEL_1
	dwb $75e7, $04 ; CHANNEL_2

SFXHeader_23:
	db $03
	dwb $75ee, $0c ; CHANNEL_1
	dwb $7602, $04 ; CHANNEL_2
	dwb $7618, $00 ; CHANNEL_3

SFXHeader_Pause:
	db $04
	dwb $762e, $04 ; CHANNEL_1
	dwb $7649, $00 ; CHANNEL_2
	dwb $7678, $10 ; CHANNEL_3
	dwb $767b, $0c ; CHANNEL_4

SFXHeader_25:
	db $01
	dwb $767e, $0c ; CHANNEL_1

SFXHeader_Cursor:
	db $01
	dwb $76a2, $04 ; CHANNEL_1

SFXHeader_GameStart:
	db $01
	dwb $76b0, $04 ; CHANNEL_1

SFXHeader_28:
	db $01
	dwb $76c1, $0c ; CHANNEL_1

SFXHeader_29:
	db $03
	dwb $76d6, $0c ; CHANNEL_1
	dwb $76fa, $04 ; CHANNEL_2
	dwb $7717, $00 ; CHANNEL_3

SFXHeader_30:
	db $01
	dwb $7734, $04 ; CHANNEL_1

SFXHeader_31:
	db $01
	dwb $7747, $04 ; CHANNEL_1

SFXHeader_BossDefeat:
	db $01
	dwb $7768, $0c ; CHANNEL_1

SFXHeader_33:
	db $04
	dwb $7798, $04 ; CHANNEL_1
	dwb $77a0, $00 ; CHANNEL_2
	dwb $77a8, $10 ; CHANNEL_3
	dwb $77ad, $0c ; CHANNEL_4

SFXHeader_34:
	db $02
	dwb $77b2, $04 ; CHANNEL_1
	dwb $721b, $0c ; CHANNEL_2

SFXHeader_35:
	db $01
	dwb $77b7, $04 ; CHANNEL_1
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
	dw SFXHeader_21         ; SFX_21
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

Data_17a61:
	table_width 1, Data_17a61
	db $03 ; SFX_00
	db $0a ; SFX_INHALE
	db $02 ; SFX_02
	db $02 ; SFX_SWALLOW
	db $02 ; SFX_JUMP
	db $02 ; SFX_BUMP
	db $0a ; SFX_DAMAGE
	db $03 ; SFX_ENTER_DOOR
	db $02 ; SFX_08
	db $02 ; SFX_POWER_UP
	db $08 ; SFX_10
	db $02 ; SFX_RESTORE_HP
	db $03 ; SFX_WARP_STAR
	db $03 ; SFX_13
	db $08 ; SFX_14
	db $02 ; SFX_15
	db $02 ; SFX_16
	db $08 ; SFX_17
	db $02 ; SFX_18
	db $08 ; SFX_19
	db $08 ; SFX_20
	db $08 ; SFX_21
	db $03 ; SFX_1UP
	db $0b ; SFX_23
	db $1b ; SFX_PAUSE
	db $08 ; SFX_25
	db $02 ; SFX_CURSOR
	db $02 ; SFX_GAME_START
	db $08 ; SFX_28
	db $03 ; SFX_29
	db $02 ; SFX_30
	db $02 ; SFX_31
	db $08 ; SFX_BOSS_DEFEAT
	db $1b ; SFX_33
	db $0a ; SFX_34
	db $02 ; SFX_35
	assert_table_length NUM_SFX

Data_17a85:
	table_width 1, Data_17a85
	db $0a ; SFX_00
	db $32 ; SFX_INHALE
	db $32 ; SFX_02
	db $32 ; SFX_SWALLOW
	db $32 ; SFX_JUMP
	db $33 ; SFX_BUMP
	db $28 ; SFX_DAMAGE
	db $14 ; SFX_ENTER_DOOR
	db $28 ; SFX_08
	db $2d ; SFX_POWER_UP
	db $23 ; SFX_10
	db $19 ; SFX_RESTORE_HP
	db $00 ; SFX_WARP_STAR
	db $00 ; SFX_13
	db $32 ; SFX_14
	db $32 ; SFX_15
	db $32 ; SFX_16
	db $37 ; SFX_17
	db $37 ; SFX_18
	db $32 ; SFX_19
	db $1e ; SFX_20
	db $05 ; SFX_21
	db $00 ; SFX_1UP
	db $14 ; SFX_23
	db $00 ; SFX_PAUSE
	db $09 ; SFX_25
	db $32 ; SFX_CURSOR
	db $32 ; SFX_GAME_START
	db $31 ; SFX_28
	db $05 ; SFX_29
	db $32 ; SFX_30
	db $32 ; SFX_31
	db $23 ; SFX_BOSS_DEFEAT
	db $01 ; SFX_33
	db $31 ; SFX_34
	db $31 ; SFX_35
	assert_table_length NUM_SFX

; triangle wave sample
TriangleWaveSample:
	dn  0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 14, 13, 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1,  0,  0
; 0x17ab9
