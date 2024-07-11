_Start:
.wait_vblank
	ldh a, [rLY]
	cp $91
	jr c, .wait_vblank

Reset::
	; reset LCDC
	xor a
	ldh [rLCDC], a

	; set stack
	di
	ld sp, hStackTop

	; init RAM, OAM and audio
	ld a, BANK("Bank 5")
	bankswitch
	call InitRAM
	call InitDMATransferFunction
	call ClearSprites
	call Func_21bb
	call Func_14b30

	ld a, BANK("Bank 5")
	bankswitch
	call $4c4a ; Func_14c4a

	ld a, $01  ; not necessary since
	bankswitch ; InitWindow is in home bank
	call InitWindow

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

	ld a, STATF_LYC
	ldh [rSTAT], a
	ld a, LCDCF_BGON | LCDCF_OBJON | LCDCF_OBJ16 | LCDCF_WINON | LCDCF_WIN9C00 | LCDCF_ON
	ldh [hLCDC], a
	ldh [rLCDC], a
	ld a, IEF_VBLANK | IEF_TIMER
	ldh [rIE], a
	ei

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
	ld a, SELECT | START
	ld [wd050], a
	ld a, [wConfigLives]
	ld [wLives], a
	call ClearAllObjects
	ld a, [wExtraGameUnlocked]
	ld [wExtraGameEnabled], a

	ld a, BANK(StartStage)
	bankswitch
	call StartStage
;	fallthrough
Func_1e6::
	ld a, $01
	bankswitch
	ld a, HUD_UPDATE_LABEL | HUD_UPDATE_LIVES | HUD_UPDATE_SCORE_DIGITS
	ldh [hHUDFlags], a
;	fallthrough
Func_1f2:
	ld a, [wBGP]
	ldh [rBGP], a
.asm_1f7
	ldh a, [hVBlankFlags]
	bit VBLANK_5_F, a
	jr nz, .asm_1f7
	bit VBLANK_6_F, a
	jr nz, .asm_1f7
	bit VBLANK_4_F, a
	jr z, .asm_20c
	and VBLANK_0 | VBLANK_1 | VBLANK_2 | VBLANK_3
	jr nz, .asm_20c
	xor a
	ldh [hVBlankFlags], a
.asm_20c
	ldh a, [hff94]
	bit 3, a
	jr z, .check_pause
	xor a
	ldh [hJoypadPressed], a
	ldh a, [hVBlankFlags]
	and VBLANK_4
	ldh [hVBlankFlags], a
	jp Func_4783

.check_pause
	ldh a, [hff8e]
	bit 4, a
	jr z, .check_start_btn
	ldh a, [hJoypadPressed]
	and $ff ^ (A_BUTTON | D_RIGHT | D_LEFT | D_DOWN)
	ldh [hJoypadPressed], a
.check_start_btn
	ldh a, [hJoypadPressed]
	bit START_F, a
	jr z, .no_pause
	ld a, BANK(Pause)
	bankswitch
	call Pause
.no_pause
	ld a, BANK(Func_42bf)
	bankswitch
	jp Func_42bf
; 0x246
