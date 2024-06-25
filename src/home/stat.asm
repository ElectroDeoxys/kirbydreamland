SECTION "Home@1e0f", ROM0[$1e0f]

Stat:
	push af
	push bc
	push hl
	ld b, 7
.loop_wait
	dec b
	jr nz, .loop_wait
	ld hl, rLCDC
	ld a, [wd05b]
	ld c, a
	ld a, $e4
	set LCDCB_BG9C00, [hl]
	ldh [rBGP], a
	xor a
	ldh [rSCX], a
	ld a, c
	ldh [rSCY], a
	pop hl
	pop bc
	pop af
	reti
; 0x1e2e
