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
	call ProcessBlockQueue
	call ProcessPendingBlockFill

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
	res RESET_TIMER_PENDING_F, [hl]

	ld hl, wBlinkingCounter
	dec [hl]
	jr nz, .flash
	ld d, BLINK_DURATION_INVISIBLE
	ld a, [wObjectFlashBlinkFlags]
	xor BLINK_FLAG
	ld [wObjectFlashBlinkFlags], a
	jr z, .got_blink_duration
ASSERT BLINK_DURATION_VISIBLE == BLINK_DURATION_INVISIBLE + 1
	inc d
.got_blink_duration
	; d = (blink flag set) ? 3 : 2
	ld [hl], d ; wBlinkingCounter

.flash
	inc hl
	dec [hl] ; wFlashingCounter
	jr nz, .update_audio
	ld d, FLASH_DURATION_ALTPAL
	ld a, [wObjectFlashBlinkFlags]
	xor FLASH_FLAG
	ld [wObjectFlashBlinkFlags], a
	jr z, .got_flash_duration
	ld d, FLASH_DURATION_REGPAL
.got_flash_duration
	; d = (flash flag set) ? 6 : 4
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
