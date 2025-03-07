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

StopTimerAndSwitchOnLCD::
	ld a, TACF_STOP
	ldh [rTAC], a
	ldh a, [hLCDC]
	set LCDCB_ON, a
	ldh [hLCDC], a
	ldh [rLCDC], a
	ret

ResetTimer::
	ld hl, hLCDC
	res LCDCB_ON, [hl]
	ld hl, hEngineFlags
	set RESET_TIMER_PENDING_F, [hl]
.loop_wait_vblank
	bit RESET_TIMER_PENDING_F, [hl]
	jr nz, .loop_wait_vblank
	ld a, TACF_STOP
	ldh [rTAC], a
	; sets timer to interrupt at
	; 4k Hz / 68 ~ 59 Hz
	ld a, -68
	ldh [rTMA], a
	ld a, TACF_4KHZ | TACF_START
	ldh [rTAC], a
	ret

; unreferenced
Func_1e8f:
	ld hl, hVBlankFlags
	set VBLANK_PENDING_F, [hl]
	halt
	ret
