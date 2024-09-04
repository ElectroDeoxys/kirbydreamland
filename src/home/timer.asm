SECTION "Home@1e48", ROM0[$1e48]

Timer:
	push af
	push bc
	push de
	push hl
	ld a, [wROMBank]
	push af
	ld a, BANK(UpdateAudio)
	bankswitch
	call UpdateAudio
	pop af
	bankswitch
	pop hl
	pop de
	pop bc
	pop af
	reti
; 0x1e67
