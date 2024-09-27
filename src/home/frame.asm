; waits a number of frames
; input:
; - a = number of frames
DoFrames::
	push hl
	ld hl, hVBlankFlags
.loop
	set VBLANK_6_F, [hl]
.asm_1dc9
	bit VBLANK_6_F, [hl]
	jr nz, .asm_1dc9
	push hl
	push af
	xor a
	ld [wVirtualOAMSize], a
	call Func_2e9c
	call ClearSprites
	pop af
	pop hl
	dec a
	jr nz, .loop
	pop hl
	ret

; input:
; a = number of frames
WaitAFrames::
	push hl
	ld hl, hVBlankFlags
.asm_1de4
	set VBLANK_6_F, [hl]
.asm_1de6
	bit VBLANK_6_F, [hl]
	jr nz, .asm_1de6
	dec a
	jr nz, .asm_1de4
	pop hl
	ret

Func_1def:
	push hl
	ld hl, hVBlankFlags
	set 6, [hl]
.asm_1df5
	bit 6, [hl]
	jr nz, .asm_1df5
	pop hl
	ret

ApplyLCDCScrollAndBGPalette:
	ldh a, [hLCDC]
	ldh [rLCDC], a
	ld a, [wSCX]
	ldh [rSCX], a
	ld a, [wSCY]
	ldh [rSCY], a
	ld a, [wBGP]
	ldh [rBGP], a
	ret
; 0x1e0f
