VBlank:
	push af
	push bc
	push de
	push hl
	ld hl, hVBlankFlags
	bit VBLANK_PENDING_F, [hl]
	jp z, .waste_cycles
	ld hl, hEngineFlags
	bit PROCESS_BG_QUEUE_F, [hl]
	jp nz, .process_bg_queue

	ld hl, wUnkTimer
	inc [hl]
	ld hl, wGlobalCounter
	inc [hl]
	ld hl, wFadeDelayTimer
	inc [hl]

	call UpdateHUD
	call Func_1ee3
	call Func_1e2e

	; write to OAM
	call hTransferVirtualOAM

	ldh a, [hVBlankFlags]
	and ~(VBLANK_5 | VBLANK_PENDING)
	ldh [hVBlankFlags], a

	call ApplyLCDCScrollAndBGPalette
	call FadePalettes
	call ReadJoypad
	jr .asm_1d56

.asm_1d53
	call ApplyLCDCScrollAndBGPalette
.asm_1d56
	ld hl, hEngineFlags
	res ENGINEF_UNK3_F, [hl]
	ld hl, wd037
	dec [hl]
	jr nz, .asm_1d6f
	ld d, 2
	ld a, [wd036]
	xor $1
	ld [wd036], a
	jr z, .asm_1d6e
	inc d
.asm_1d6e
	; d = (wd036) ? 3 : 2
	ld [hl], d
.asm_1d6f
	inc hl
	dec [hl] ; wd038
	jr nz, .update_audio
	ld d, 4
	ld a, [wd036]
	xor $2
	ld [wd036], a
	jr z, .asm_1d81
	ld d, 6
.asm_1d81
	; d = (wd036) ? 6 : 4
	ld [hl], d

.update_audio
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

.process_bg_queue
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
	ld hl, hEngineFlags
	res PROCESS_BG_QUEUE_F, [hl]
	jr .asm_1d53
; 0x1dc3
