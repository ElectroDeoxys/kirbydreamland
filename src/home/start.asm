_Start:
.wait_vblank
	ldh a, [rLY]
	cp $91
	jr c, .wait_vblank
Reset::
	; reset LCDC
	xor a
	ldh [rLCDC], a

	di
	; set stack
	ld sp, hStackTop

	; init RAM, OAM and audio
	ld a, BANK("Bank 5")
	bankswitch
	call InitRAM
	call InitDMATransferFunction
	call ClearSprites
	call InitDelayedCopyAToDEFunc
	call LoadMultiplicationTable

	; initialize audio engine
	ld a, BANK(InitAudio)
	bankswitch
	call InitAudio
	ld a, BANK("Bank 1")
	bankswitch

	call HideWindow

	ld a, %11100100 ; standard GB palette data
	ldh [rOBP1], a

	; init scrolling and clear interrupt flags
	ld a, $08
	ldh [rSCY], a
	ld [wSCY], a
	xor a
	ldh [rSCX], a
	ld [wSCX], a
	ldh [rIF], a

	ld a, STAT_LYC
	ldh [rSTAT], a
	ld a, LCDC_BG_ON | LCDC_OBJ_ON | LCDC_OBJ_16 | LCDC_WIN_ON | LCDC_WIN_9C00 | LCDC_ON
	ldh [hLCDC], a
	ldh [rLCDC], a
	ld a, IE_VBLANK | IE_TIMER
	ldh [rIE], a
	ei

	; Title Screen
	xor a
	ldh [hVBlankFlags], a
	ld [wExtraGameUnlocked], a
	ld a, BANK(TitleScreen)
	bankswitch
	ld a, DEFAULT_LIVES
	ld [wConfigLives], a
	ld a, DEFAULT_MAX_HP
	ld [wConfigMaxHP], a
	call TitleScreen
	ld a, PAD_SELECT | PAD_START
	ld [wNonStickyKeys], a
	ld a, [wConfigLives]
	ld [wLives], a
	call ClearAllObjects
	ld a, [wExtraGameUnlocked]
	ld [wExtraGameEnabled], a

	; Start Stage
	ld a, BANK(StartStage)
	bankswitch
	call StartStage
StageLoop_UpdateHUD::
	ld a, BANK("Bank 1")
	bankswitch
	ld a, HUD_UPDATE_LABEL | HUD_UPDATE_LIVES | HUD_UPDATE_SCORE_DIGITS
	ldh [hHUDFlags], a
StageLoop_SkipHUDUpdate:
	ld a, [wBGP]
	ldh [rBGP], a
.asm_1f7
	ldh a, [hVBlankFlags]
	bit VBLANK_5_F, a
	jr nz, .asm_1f7
	bit VBLANK_PENDING_F, a
	jr nz, .asm_1f7
	bit VBLANK_4_F, a
	jr z, .asm_20c
	and VBLANK_0 | VBLANK_1 | VBLANK_2 | VBLANK_3
	jr nz, .asm_20c
	xor a
	ldh [hVBlankFlags], a
.asm_20c
	ldh a, [hKirbyFlags5]
	bit KIRBY5F_DAMAGED_F, a
	jr z, .check_pause
	xor a
	ldh [hJoypadPressed], a
	ldh a, [hVBlankFlags]
	and VBLANK_4
	ldh [hVBlankFlags], a
	jp Func_4783

.check_pause
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_INHALE_F, a
	jr z, .check_start_btn
	ldh a, [hJoypadPressed]
	and $ff ^ (PAD_A | PAD_RIGHT | PAD_LEFT | PAD_DOWN)
	ldh [hJoypadPressed], a
.check_start_btn
	ldh a, [hJoypadPressed]
	bit B_PAD_START, a
	jr z, .no_pause
	ld a, BANK(Pause)
	bankswitch
	call Pause
.no_pause
	ld a, BANK(KirbyControl)
	bankswitch
	jp KirbyControl
; 0x246
