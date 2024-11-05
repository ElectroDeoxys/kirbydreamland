; waits a number of frames
; input:
; - a = number of frames
DoFrames::
	push hl
	ld hl, hVBlankFlags
.loop
	set VBLANK_PENDING_F, [hl]
.asm_1dc9
	bit VBLANK_PENDING_F, [hl]
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
.loop_outer
	set VBLANK_PENDING_F, [hl]
.loop_inner
	bit VBLANK_PENDING_F, [hl]
	jr nz, .loop_inner
	dec a
	jr nz, .loop_outer
	pop hl
	ret

WaitVBlank:
	push hl
	wait_vblank
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
