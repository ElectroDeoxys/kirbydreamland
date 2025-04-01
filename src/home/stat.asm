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

; fills block in BG location wBlockFillPtr
; with tile in wBlockFillTileIndex
ProcessPendingBlockFill:
	ld hl, hBlockFillPending
	bit 7, [hl]
	ret z
	res 7, [hl]
	ld hl, wBlockFillPtr
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli] ; wBlockFillTileIndex
	ld [de], a
	inc e
	ld [de], a
	ld hl, SCRN_VX_B ; next row
	add hl, de
	ld [hld], a
	ld [hl], a
	ret
