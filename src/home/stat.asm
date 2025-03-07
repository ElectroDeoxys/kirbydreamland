; stat is exclusively used to show
; the text during the credits sequence
Stat:
	push af
	push bc
	push hl
	ld b, 7
.loop_wait
	dec b
	jr nz, .loop_wait
	ld hl, rLCDC
	ld a, [wCreditsTextScroll]
	ld c, a
	ld a, %11100100
	; temporarily select BG9C00 map
	; this is reset back to BG9800 during VBlank
	set LCDCB_BG9C00, [hl]
	ldh [rBGP], a
	; apply text scroll
	xor a
	ldh [rSCX], a
	ld a, c
	ldh [rSCY], a
	pop hl
	pop bc
	pop af
	reti

Func_1e2e:
	ld hl, hff96
	bit 7, [hl]
	ret z
	res 7, [hl]
	ld hl, wd029
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli] ; wd02b
	ld [de], a
	inc e
	ld [de], a
	ld hl, $20
	add hl, de
	ld [hld], a
	ld [hl], a
	ret
