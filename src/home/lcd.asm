; enables LCD and disables Timer
EnableLCD::
	ld a, TAC_STOP
	ldh [rTAC], a
	ldh a, [hLCDC]
	set B_LCDC_ENABLE, a
	ldh [hLCDC], a
	ldh [rLCDC], a
	ret

; disables LCD and enables Timer
DisableLCD::
	ld hl, hLCDC
	res B_LCDC_ENABLE, [hl]
	ld hl, hEngineFlags
	set RESET_TIMER_PENDING_F, [hl]
.loop_wait_vblank
	bit RESET_TIMER_PENDING_F, [hl]
	jr nz, .loop_wait_vblank
	ld a, TAC_STOP
	ldh [rTAC], a
	; sets timer to interrupt at
	; 4k Hz / 68 ~ 59 Hz
	ld a, -68
	ldh [rTMA], a
	ld a, TAC_4KHZ | TAC_START
	ldh [rTAC], a
	ret

; unreferenced
Func_1e8f:
	ld hl, hVBlankFlags
	set VBLANK_PENDING_F, [hl]
	halt
	ret
