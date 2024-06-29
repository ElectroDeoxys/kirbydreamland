TitleScreen::
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call ResetTimer

	xor a
	ld [wVirtualOAMSize], a
	ld [wSCX + 0], a
	ld [wOBP], a
	ld [wBGP], a
	ld a, $00 ; unnecessary
	ld [wSCY + 0], a

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
	ld a, $04
	ld [hHUDFlags], a
	call .PrintExtraGameText

	ld a, 1
	call DoFrames
	call Func_670
	ld a, $08
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
	ld [wExtraGameEnabled], a
	call .PrintExtraGameText
.no_extra_game
	ld a, [hJoypadPressed]
	and START
	jr z, .loop

	ld a, SFX_GAME_START
	call PlaySFX
	ret

.PrintExtraGameText:
	ld a, [wExtraGameEnabled]
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

SECTION "Bank 6@40e4", ROMX[$40e4], BANK[$6]

Func_180e4::
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	xor a
	ld [hff90], a
	ld [wd3f1], a
	ld hl, wd3df
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wd3be], a

	ld a, [wStage]
	ld b, a
	add a
	add a
	add a
	sub b ; *7
	ld c, a
	ld b, $00
	ld hl, StageHeaders
	add hl, bc
	push hl
	ld bc, $5
	add hl, bc
	ld a, [hli]
	cp $01
	jr z, .asm_1811a
	ld a, $c8
	jr .asm_1811c
.asm_1811a
	ld a, $cc
.asm_1811c
	ld [hff90], a
	push hl
	xor a
	ld [hff8c], a
	ld [hff8d], a

	call Func_648
	ld a, SFX_NONE
	call PlaySFX
	ld a, MUSIC_NONE
	call PlayMusic
	pop hl

	ld a, [hff95]
	bit 7, a
	jr nz, .asm_18142
	call InitWindow
	call $42e8 ; Func_182e8
.asm_18142
	ld a, $ff
	ld [wd096], a
	call Clearwd160
	call Func_648
	call Func_1c0a
	call ResetTimer
	call $4285 ; Func_18285

	ld d, $00 ; useless

	ld a, [wStage]
	ld c, a
	add a
	add c
	ld b, $00
	ld c, a
	ld hl, Data_20a2
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld e, a
	ld h, d
	ld l, e
	ld de, wc600
	call FarDecompress

	ld a, $32
	ld [hHUDFlags], a
	ld a, $15
	ld [wd07e], a
	ld a, $16
	ld [wd065], a

	xor a
	ld hl, wd082
	ld [hli], a
	ld [hl], a ; wHP
	ld [hff8d], a
	ld [hff8e], a
	ld [hff92], a
	ld [hff93], a
	ld [wd064], a
	ld [wSCX + 0], a
	ld [wSCY + 0], a
	ld [wSCX + 1], a
	ld [wSCY + 1], a
	ld [wd078], a
	ld [wd079], a
	ld a, $20
	ld [wd07c], a
	ld a, $0e
	ld [wd07d], a
	ld a, $01
	ld [wd076], a
	ld a, $33
	ld [wd077], a

	ld a, [wMaxHP]
	ld [wHP], a

	xor a
	ld [wVirtualOAMSize], a
	call ClearSprites
	pop hl

	ld a, [hli]
	ld [wArea], a

	push hl
	call StopTimerAndSwitchOnLCD
	call Func_19c9
	call Func_19f9
	pop hl

	ld a, [hli]
	ld [wd051], a
	ld a, [hli]
	ld [wd052], a
	ld a, [hli]
	ld [wd05c], a
	ld a, [hli]
	ld [wd05d], a

	ld a, [wStage]
	ld e, a
	ld d, $00
	ld hl, StageMusics
	add hl, de
	ld a, [hl]
	ld [wd03c], a

	ld bc, $0
	ld a, MT_DEDEDE
	cp e
	jr nz, .asm_1821e
	ld hl, hff95
	bit 7, [hl]
	jr z, .asm_1821e
	ld a, $33
	ld [wd051], a
	ld a, $01
	ld [wd052], a
	ld a, $48
	ld [wd05c], a
	ld a, $70
	ld [wd05d], a
	ld bc, $32
.asm_1821e
	ld hl, wc100
	add hl, bc
	call Func_1964

	xor a
	ld [wVirtualOAMSize], a
	call Func_21fb
	call Func_139b
	call Clearwd3c4
	call ClearSprites

	ld a, [wStage]
	cp MT_DEDEDE
	jr nz, .asm_1824a
	ld hl, hff94
	res 2, [hl]
	ld a, [hff95]
	bit 7, a
	jr nz, .asm_1824a
	set 2, [hl]
.asm_1824a
	ld hl, hff95
	res 7, [hl]
	ld a, [hff95]
	bit 7, a
	jr z, .skip_music
	ld a, [wStage]
	cp MT_DEDEDE
	jr z, .skip_music
	ld a, [wd03c]
	call PlayMusic
.skip_music
	call SetFullHP
	call StopTimerAndSwitchOnLCD
	call Func_670
	call Func_8dc
	ret

StageMusics:
	db MUSIC_13 ; GREEN_GREENS
	db MUSIC_16 ; CASTLE_LOLOLO
	db MUSIC_14 ; FLOAT_ISLANDS
	db MUSIC_15 ; BUBBLY_CLOUDS
	db MUSIC_18 ; MT_DEDEDE
; 0x18275

SECTION "Bank 6@5098", ROMX[$5098], BANK[$6]

Func_19098:
	push af
	push bc
	push de
	push hl
	ld a, [wMenuCursorPos]
	push af
	ld a, [wd06c]
	push af
	xor a
	ld [wVirtualOAMSize], a
	call Func_2e9c
	call ClearSprites
	pop af
	ld [wd06c], a
	pop af
	ld [wMenuCursorPos], a
	pop hl
	pop de
	pop bc
	pop af
	ret
; 0x190bb

SECTION "Bank 6@6386", ROMX[$6386], BANK[$6]

ConfigurationMenu:
	call Func_648
	call ResetTimer
	call Clearwd160
	call InitWindow
	xor a
	ld [wSCX + 0], a
	ld [wSCY + 0], a
	ld a, $ff
	ld [wd096], a
	call ClearSprites

	ld hl, $4855
	ld de, $9670
	ld c, $02
	call FarDecompress
	ld hl, $7b0d
	ld de, v0Tiles1
	ld c, $06
	call FarDecompress
	ld hl, $41c7
	ld de, $8e00
	ld c, $03
	call FarDecompress
	ld hl, $4541
	ld de, v0BGMap0
	ld c, $03
	call FarDecompress

	xor a
	ld [wMenuCursorPos], a
	dec a
	ld [wd050], a

	ld hl, $98eb
	ld a, [wInitialMaxHP]
.loop_draw_hp_bars
	ld [hl], $c5
	inc hl
	dec a
	jr nz, .loop_draw_hp_bars

	call StopTimerAndSwitchOnLCD
	call Func_670

	ld a, [wInitialLives]
	call .UpdateNumLives

	ld hl, hff8c
	set VBLANK_6_F, [hl]
.asm_1a3f2
	bit VBLANK_6_F, [hl]
	jr nz, .asm_1a3f2

	call .config_update_cursor

.input_ret
	ld hl, hff8c
	set VBLANK_6_F, [hl]
.asm_1a3fe
	bit VBLANK_6_F, [hl]
	jr nz, .asm_1a3fe

	call Func_19098

	ld hl, .input_ret
	push hl
	ld a, [hJoypadPressed]
	bit A_BUTTON_F, a
	jp nz, .config_a_btn
	bit B_BUTTON_F, a
	jp nz, .config_b_btn
	bit SELECT_F, a
	jp nz, .config_select_btn
	bit START_F, a
	jp nz, .config_start_btn
	bit D_RIGHT_F, a
	jp nz, .config_d_right
	bit D_LEFT_F, a
	jp nz, .config_d_left
	bit D_UP_F, a
	jp nz, .config_d_up
	bit D_DOWN_F, a
	jp nz, .config_d_down
	ret

.config_start_btn
	ld a, [wMenuCursorPos]
	cp $02
	jp z, .SoundTest
	cp $03
	ret nz
.exit_config_menu
	pop hl
	ld a, $0c
	ld [wd050], a
	jp TitleScreen

.config_d_up
	ld a, [wMenuCursorPos]
	and a
	ret z
	dec a
	jr .config_update_cursor_with_sfx
.config_d_down
	ld a, [wMenuCursorPos]
	cp $03
	ret z
	inc a
	jr .config_update_cursor_with_sfx
.config_select_btn
	ld a, [wMenuCursorPos]
	inc a
	cp $04
	jr nz, .config_update_cursor_with_sfx
	xor a ; wrap around
.config_update_cursor_with_sfx
	ld [wMenuCursorPos], a
	ld a, SFX_CURSOR
	call PlaySFX
.config_update_cursor
	ld a, $98
	ld [wQueuedBG000BGPtr + 0], a
	ld a, $e4
	ld [wQueuedBG000BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG000TileID], a
	ld a, $99
	ld [wQueuedBG001BGPtr + 0], a
	ld a, $24
	ld [wQueuedBG001BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG001TileID], a
	ld a, $99
	ld [wQueuedBG002BGPtr + 0], a
	ld a, $64
	ld [wQueuedBG002BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG002TileID], a
	ld a, $99
	ld [wQueuedBG003BGPtr + 0], a
	ld a, $c4
	ld [wQueuedBG003BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG003TileID], a
	xor a
	ld [wBGQueue + 4 * $3], a

	ld a, [wMenuCursorPos]
	ld c, a
	add a
	add c ; *3
	ld c, a
	ld b, $00
	ld hl, wQueuedBG000TileID
	add hl, bc
	ld [hl], $c6 ; cursor tile ID
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.config_a_btn
	ld a, [wMenuCursorPos]
	cp $02
	jp z, .SoundTest
	cp $03
	jp z, .exit_config_menu
.config_d_right
	ld a, [wMenuCursorPos]
	cp $01
	jr z, .incr_lives
	and a
	ret nz
	ld a, [wInitialMaxHP]
	inc a
	cp $07
	ret z
	ld [wInitialMaxHP], a
	ld c, a
	ld a, $c5
	jr .update_hp_bar

.incr_lives
	ld a, [wInitialLives]
	cp $09
	ret z ; cannot add more lives
	inc a
	ld [wInitialLives], a
	jr .UpdateNumLives

.config_b_btn
.config_d_left
	ld a, [wMenuCursorPos]
	cp $01
	jr z, .decr_lives
	and a
	ret nz
	ld a, [wInitialMaxHP]
	dec a
	ret z
	ld [wInitialMaxHP], a
	ld c, a
	inc c
	ld a, $c4

.update_hp_bar
	ld [wQueuedBG000TileID], a
	ld b, $00
	ld hl, $98ea
	add hl, bc
	ld a, h
	ld [wQueuedBG000BGPtr + 0], a
	ld a, l
	ld [wQueuedBG000BGPtr + 1], a
	xor a
	ld [wQueuedBG001BGPtr + 0], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.decr_lives
	ld a, [wInitialLives]
	dec a
	ret z
	ld [wInitialLives], a

.UpdateNumLives:
	call GetDigits
	add "0"
	ld [wQueuedBG000TileID], a
	ld a, $99
	ld [wQueuedBG000BGPtr + 0], a
	ld a, $2c
	ld [wQueuedBG000BGPtr + 1], a
	ld a, b
	add "0"
	ld [wQueuedBG001TileID], a
	ld a, $99
	ld [wQueuedBG001BGPtr + 0], a
	ld a, $2b
	ld [wQueuedBG001BGPtr + 1], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.SoundTest:
	pop hl
	call Func_648
	call ResetTimer
	ld a, $02
	call Func_21fb
	call InitWindow

	ld hl, $44c9
	ld de, v0BGMap0
	ld c, $03
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670

	xor a
	ld [wMenuCursorPos], a
	ld hl, wSoundCheckMusic
	ld [hli], a
	ld [hl], a
	call .UpdateSoundCheckCursor

.asm_1a58a
	ld hl, hff8c
	set VBLANK_6_F, [hl]
.asm_1a58f
	bit VBLANK_6_F, [hl]
	jr nz, .asm_1a58f

	call Func_19098

	ld a, [hJoypadPressed]
	bit A_BUTTON_F, a
	jp nz, .soundcheck_a_btn
	bit B_BUTTON_F, a
	jp nz, .soundcheck_b_btn
	bit SELECT_F, a
	jp nz, .soundcheck_select_btn
	bit START_F, a
	jp nz, .soundcheck_start_btn
	bit D_RIGHT_F, a
	jr nz, .soundcheck_d_right
	bit D_LEFT_F, a
	jr nz, .soundcheck_d_left
	bit D_UP_F, a
	jr nz, .soundcheck_d_up
	bit D_DOWN_F, a
	jr nz, .soundcheck_d_down
	jr .asm_1a58a

.soundcheck_d_down
	ld a, $01
	ld [wMenuCursorPos], a
	call .UpdateSoundCheckCursor
	ld a, SFX_CURSOR
	call PlaySFX
	jr .asm_1a58a

.soundcheck_d_up
	xor a
	ld [wMenuCursorPos], a
	call .UpdateSoundCheckCursor
	ld a, SFX_CURSOR
	call PlaySFX
	jr .asm_1a58a

.soundcheck_d_left
	ld a, [wMenuCursorPos]
	and a
	jr nz, .asm_1a5f4
	ld a, [wSoundCheckMusic]
	dec a
	cp -1
	jr c, .set_soundcheck_music
	ld a, NUM_MUSICS - 1
	ld [wSoundCheckMusic], a
	call .UpdateSoundCheckMusicNumber
	jr .asm_1a58a
.asm_1a5f4
	ld a, [wSoundCheckSFX]
	dec a
	cp -1
	jr c, .set_soundcheck_sfx
	ld a, NUM_SOUNDCHECK_SFX - 1
	ld [wSoundCheckSFX], a
	call .UpdateSoundCheckSFXNumber
	jr .asm_1a58a

.soundcheck_d_right
	ld a, [wMenuCursorPos]
	and a
	jr nz, .asm_1a61e
	ld a, [wSoundCheckMusic]
	inc a
	cp NUM_MUSICS
	jr c, .set_soundcheck_music
	xor a ; wrap around
.set_soundcheck_music
	ld [wSoundCheckMusic], a
	call .UpdateSoundCheckMusicNumber
	jp .asm_1a58a
.asm_1a61e
	ld a, [wSoundCheckSFX]
	inc a
	cp NUM_SOUNDCHECK_SFX
	jr c, .set_soundcheck_sfx
	xor a ; wrap around
.set_soundcheck_sfx
	ld [wSoundCheckSFX], a
	call .UpdateSoundCheckSFXNumber
	jp .asm_1a58a

.soundcheck_start_btn
	jp ConfigurationMenu

.soundcheck_select_btn
	ld a, [wMenuCursorPos]
	ld b, a
	ld a, $01
	sub b
	ld [wMenuCursorPos], a
	call .UpdateSoundCheckCursor
	ld a, $1a
	call PlaySFX
	jp .asm_1a58a

.soundcheck_b_btn
	ld a, MUSIC_NONE
	call PlayMusic
	ld a, SFX_NONE
	call PlaySFX
	jp .asm_1a58a

.soundcheck_a_btn
	ld a, [wMenuCursorPos]
	and a
	jr nz, .play_sfx
; play music
	ld a, [wSoundCheckMusic]
	call PlayMusic
	jp .asm_1a58a
.play_sfx
	ld a, [wSoundCheckSFX]
	call PlaySFX
	jp .asm_1a58a

.UpdateSoundCheckMusicNumber:
	call GetDigits
	add "0"
	ld [wQueuedBG000TileID], a
	ld a, $98
	ld [wQueuedBG000BGPtr + 0], a
	ld a, $ee
	ld [wQueuedBG000BGPtr + 1], a
	ld a, b
	add "0"
	ld [wQueuedBG001TileID], a
	ld a, $98
	ld [wQueuedBG001BGPtr + 0], a
	ld a, $ed
	ld [wQueuedBG001BGPtr + 1], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.UpdateSoundCheckSFXNumber:
	call GetDigits
	add "0"
	ld [wQueuedBG000TileID], a
	ld a, $99
	ld [wBGQueue], a
	ld a, $2e
	ld [wQueuedBG000BGPtr + 1], a
	ld a, b
	add "0"
	ld [wQueuedBG001TileID], a
	ld a, $99
	ld [wQueuedBG001BGPtr + 0], a
	ld a, $2d
	ld [wQueuedBG001BGPtr + 1], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.UpdateSoundCheckCursor:
	ld a, [wMenuCursorPos]
	and a
	jr nz, .asm_1a6fc
	ld a, $98
	ld [wQueuedBG000BGPtr + 0], a
	ld a, $e6
	ld [wQueuedBG000BGPtr + 1], a
	ld a, $c6
	ld [wQueuedBG000TileID], a
	ld a, $99
	ld [wQueuedBG001BGPtr + 0], a
	ld a, $26
	ld [wQueuedBG001BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG001TileID], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret
.asm_1a6fc
	ld a, $98
	ld [wQueuedBG000BGPtr + 0], a
	ld a, $e6
	ld [wQueuedBG000BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG000TileID], a
	ld a, $99
	ld [wQueuedBG001BGPtr + 0], a
	ld a, $26
	ld [wQueuedBG001BGPtr + 1], a
	ld a, $c6
	ld [wQueuedBG001TileID], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret
; 0x1a727
