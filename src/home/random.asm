; output:
; - a = random byte
Random::
	push hl
	push de
	ld hl, wRNG
	ld a, [hli]
	ld e, a ; = wRNG[0]
	adc [hl]
	ld d, a ; = wRNG[0] + wRNG[1]
	inc hl
	adc [hl] ; = wRNG[0] + wRNG[1] + wRNG[2]
	ld hl, wRNG
	ld [hl], d
	inc hl
	ld [hli], a
	ld [hl], e
	pop de
	pop hl
	ret
