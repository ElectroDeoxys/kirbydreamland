SECTION "Home@1d16", ROM0[$1d16]

VBlank:
	push af
	push bc
	push de
	push hl
	ld hl, hVBlankFlags
	bit VBLANK_6_F, [hl]
	jp z, .waste_cycles
	ld hl, hff91
	bit 2, [hl]
	jp nz, .asm_1da4

	ld hl, wGlobalCounter2
	inc [hl]
	ld hl, wGlobalCounter1
	inc [hl]
	ld hl, wd032
	inc [hl]

	call UpdateHUD
	call Func_1ee3
	call Func_1e2e

	; write to OAM
	call hTransferVirtualOAM

	ldh a, [hVBlankFlags]
	and ~(VBLANK_5 | VBLANK_6)
	ldh [hVBlankFlags], a

	call ApplyLCDCScrollAndBGPalette
	call Func_1f08
	call ReadJoypad
	jr .asm_1d56

.asm_1d53
	call ApplyLCDCScrollAndBGPalette
.asm_1d56
	ld hl, hff91
	res 3, [hl]
	ld hl, wd037
	dec [hl]
	jr nz, .asm_1d6f
	ld d, $02
	ld a, [wd036]
	xor $01
	ld [wd036], a
	jr z, .asm_1d6e
	inc d
.asm_1d6e
	ld [hl], d
.asm_1d6f
	inc hl
	dec [hl] ; wd038
	jr nz, .asm_1d82
	ld d, $04
	ld a, [wd036]
	xor $02
	ld [wd036], a
	jr z, .asm_1d81
	ld d, $06
.asm_1d81
	ld [hl], d
.asm_1d82
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

.waste_cycles
	ld b, $50
.loop_waste_cycles
	dec b
	jr nz, .loop_waste_cycles
	jr .asm_1d53

.asm_1da4
	ld a, [wSCX]
	ldh [rSCX], a
	ld a, [wSCY]
	ldh [rSCY], a

	ld hl, wBGQueue
.loop_queue
	ld a, [hli]
	and a
	jr z, .done_tile_queue
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld [bc], a
	jr .loop_queue
.done_tile_queue
	ld hl, hff91
	res 2, [hl]
	jr .asm_1d53
; 0x1dc3
