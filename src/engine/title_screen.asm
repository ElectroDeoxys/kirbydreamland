TitleScreen::
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call ResetTimer

	xor a
	ld [wVirtualOAMSize], a
	ld [wSCX ], a
	ld [wOBP], a
	ld [wBGP], a
IF DEF(_KDL_JP) || DEF(_KDL_JP11)
	ld a, 8
ELSE
	ld a, 0 ; unnecessary
ENDC
	ld [wSCY], a

	; load graphics
	ld hl, Gfx_8000
	ld de, vTiles0 tile $00
	ld c, BANK(Gfx_8000)
	call FarDecompress
	ld hl, Gfx_28000
	ld de, vTiles1 tile $00
	ld c, BANK(Gfx_28000)
	call FarDecompress
	ld hl, Gfx_282ac
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_282ac)
	call FarDecompress
	ld hl, Gfx_b7e9
	ld de, vTiles1 tile $60
	ld c, BANK(Gfx_b7e9)
	call FarDecompress
	ld hl, BG_c000
	debgcoord 0, 0
	ld c, BANK(BG_c000)
	call FarDecompress

	ld a, MUSIC_TITLESCREEN
	call PlayMusic

	ld a, SCENE_TITLE_SCREEN
	call Func_21fb

	call StopTimerAndSwitchOnLCD

	xor a
	ld [hPalFadeFlags], a
	ld a, HUD_UPDATE_HP
	ld [hHUDFlags], a
	call .PrintExtraGameText

	ld a, 1
	call DoFrames
	call FadeIn
	ld a, START
	ld [wNonStickyKeys], a

; loop until player presses Start
.loop
	ld a, 1
	call DoFrames
	ld a, [hJoypadPressed]
	cp B_BUTTON | SELECT | D_DOWN
	jp z, ConfigurationMenu
	cp A_BUTTON | SELECT | D_UP
	jr nz, .no_extra_game
	ld a, TRUE
	ld [wExtraGameUnlocked], a
	call .PrintExtraGameText
.no_extra_game
	ld a, [hJoypadPressed]
	and START
	jr z, .loop

	ld a, SFX_GAME_START
	call PlaySFX
	ret

.PrintExtraGameText:
	ld a, [wExtraGameUnlocked]
	and a
	ret z ; Extra Game not enabled
	bcbgcoord 5, 10
	ld de, .text
	ld hl, wBGQueue
	ld a, .text_end - .text
.loop_copy_text
	push af
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ld a, [de]
	ld [hli], a
	inc de
	inc bc
	pop af
	dec a
	jr nz, .loop_copy_text
	xor a ; terminating byte
	ld [wBGQueue + (.text_end - .text) * $3], a
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ret

.text
	db "EXTRA GAME"
.text_end

; unreferenced
Func_180d4:
	ld a, TRUE
	ld [wExtraGameEnabled], a
	ld a, BANK(Epilogue)
	ld [wROMBank], a
	ld [$2100], a
	jp Epilogue
