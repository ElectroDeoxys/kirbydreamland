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
	ld a, $00 ; unnecessary
	ld [wSCY], a

	; load graphics
	ld hl, $4000
	ld de, v0Tiles0
	ld c, $02
	call FarDecompress
	ld hl, $4000
	ld de, v0Tiles1
	ld c, $0a
	call FarDecompress
	ld hl, $42ac
	ld de, v0Tiles2
	ld c, $0a
	call FarDecompress
	ld hl, $77e9
	ld de, $8e00
	ld c, $02
	call FarDecompress
	ld hl, $4000
	ld de, v0BGMap0
	ld c, $03
	call FarDecompress

	ld a, MUSIC_TITLESCREEN
	call PlayMusic

	ld a, $01
	call Func_21fb

	call StopTimerAndSwitchOnLCD

	xor a
	ld [hff90], a
	ld a, HUD_UPDATE_HP
	ld [hHUDFlags], a
	call .PrintExtraGameText

	ld a, 1
	call DoFrames
	call Func_670
	ld a, START
	ld [wd050], a

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
	ld bc, $9945
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
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.text
	db "EXTRA GAME"
.text_end
; 0x180d4
