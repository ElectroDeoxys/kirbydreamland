ConfigurationMenu:
	call FadeOut
	call ResetTimer
	call ClearAllObjects
	call HideWindow
	xor a
	ld [wSCX ], a
	ld [wSCY], a
	ld a, $ff
	ld [wd096], a
	call ClearSprites

	ld hl, Gfx_8855
	ld de, vTiles2 tile $67
	ld c, BANK(Gfx_8855)
	call FarDecompress
	ld hl, Gfx_1bb0d
	ld de, vTiles1 tile $00
	ld c, BANK(Gfx_1bb0d)
	call FarDecompress
	ld hl, Gfx_c1c7
	ld de, vTiles1 tile $60
	ld c, BANK(Gfx_c1c7)
	call FarDecompress
	ld hl, BG_c541
	debgcoord 0, 0
	ld c, BANK(BG_c541)
	call FarDecompress

	xor a
	ld [wMenuCursorPos], a
	dec a ; $ff, all buttons
	ld [wNonStickyKeys], a

	hlbgcoord 11, 7
	ld a, [wConfigMaxHP]
.loop_draw_hp_bars
	ld [hl], $c5
	inc hl
	dec a
	jr nz, .loop_draw_hp_bars

	call StopTimerAndSwitchOnLCD
	call FadeIn

	ld a, [wConfigLives]
	call .UpdateNumLives
	wait_vblank
	call .ConfigUpdateCursor

.input_ret
	wait_vblank
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
	cp CONFIGMENU_SOUND_TEST
	jp z, .SoundTest
	cp CONFIGMENU_EXIT
	ret nz
.exit_config_menu
	pop hl
	ld a, SELECT | START
	ld [wNonStickyKeys], a
	jp TitleScreen

.config_d_up
	ld a, [wMenuCursorPos]
	and a
	ret z
	dec a
	jr .config_update_cursor_with_sfx
.config_d_down
	ld a, [wMenuCursorPos]
	cp CONFIGMENU_EXIT
	ret z
	inc a
	jr .config_update_cursor_with_sfx
.config_select_btn
	ld a, [wMenuCursorPos]
	inc a
	cp NUM_CONFIGMENU_BUTTONS
	jr nz, .config_update_cursor_with_sfx
	xor a ; wrap around
.config_update_cursor_with_sfx
	ld [wMenuCursorPos], a
	ld a, SFX_CURSOR
	call PlaySFX
.ConfigUpdateCursor
	ld a, HIGH(vBGMap0 + $e4)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW(vBGMap0 + $e4)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG000TileID], a
	ld a, HIGH(vBGMap0 + $124)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW(vBGMap0 + $124)
	ld [wQueuedBG001BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG001TileID], a
	ld a, HIGH(vBGMap0 + $164)
	ld [wQueuedBG002BGPtr + 0], a
	ld a, LOW(vBGMap0 + $164)
	ld [wQueuedBG002BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG002TileID], a
	ld a, HIGH(vBGMap0 + $1c4)
	ld [wQueuedBG003BGPtr + 0], a
	ld a, LOW(vBGMap0 + $1c4)
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
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ret

.config_a_btn
	ld a, [wMenuCursorPos]
	cp CONFIGMENU_SOUND_TEST
	jp z, .SoundTest
	cp CONFIGMENU_EXIT
	jp z, .exit_config_menu
.config_d_right
	ld a, [wMenuCursorPos]
	cp CONFIGMENU_LIVES
	jr z, .incr_lives
	and a
	ret nz
	; a = CONFIGMENU_MAX_HP
	ld a, [wConfigMaxHP]
	inc a
	cp 7
	ret z
	ld [wConfigMaxHP], a
	ld c, a
	ld a, $c5
	jr .update_hp_bar

.incr_lives
	ld a, [wConfigLives]
	cp 9
	ret z ; cannot add more lives
	inc a
	ld [wConfigLives], a
	jr .UpdateNumLives

.config_b_btn
.config_d_left
	ld a, [wMenuCursorPos]
	cp CONFIGMENU_LIVES
	jr z, .decr_lives
	and a
	ret nz
	ld a, [wConfigMaxHP]
	dec a
	ret z
	ld [wConfigMaxHP], a
	ld c, a
	inc c
	ld a, $c4

.update_hp_bar
	ld [wQueuedBG000TileID], a
	ld b, $00
	hlbgcoord 10, 7
	add hl, bc
	ld a, h
	ld [wQueuedBG000BGPtr + 0], a
	ld a, l
	ld [wQueuedBG000BGPtr + 1], a
	xor a
	ld [wQueuedBG001BGPtr + 0], a
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ret

.decr_lives
	ld a, [wConfigLives]
	dec a
	ret z
	ld [wConfigLives], a

.UpdateNumLives:
	call GetDigits
	add "0"
	ld [wQueuedBG000TileID], a
	ld a, HIGH(vBGMap0 + $12c)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW(vBGMap0 + $12c)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, b
	add "0"
	ld [wQueuedBG001TileID], a
	ld a, HIGH(vBGMap0 + $12b)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW(vBGMap0 + $12b)
	ld [wQueuedBG001BGPtr + 1], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ret

.SoundTest:
	pop hl
	call FadeOut
	call ResetTimer
	ld a, SCENE_SOUND_TEST
	call Func_21fb
	call HideWindow

	ld hl, BG_c4c9
	debgcoord 0, 0
	ld c, BANK(BG_c4c9)
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn

	xor a ; SOUNDTEST_MUSIC
	ld [wMenuCursorPos], a
	ld hl, wSoundCheckMusic
	ld [hli], a
	ld [hl], a
	call .UpdateSoundCheckCursor

.asm_1a58a
	wait_vblank
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
	ld a, SOUNDTEST_SFX
	ld [wMenuCursorPos], a
	call .UpdateSoundCheckCursor
	ld a, SFX_CURSOR
	call PlaySFX
	jr .asm_1a58a

.soundcheck_d_up
	xor a ; SOUNDTEST_MUSIC
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
	ld a, 1
	sub b
	ld [wMenuCursorPos], a
	call .UpdateSoundCheckCursor
	ld a, SFX_CURSOR
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
	ld a, HIGH(vBGMap0 + $ee)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW(vBGMap0 + $ee)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, b
	add "0"
	ld [wQueuedBG001TileID], a
	ld a, HIGH(vBGMap0 + $ed)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW(vBGMap0 + $ed)
	ld [wQueuedBG001BGPtr + 1], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ret

.UpdateSoundCheckSFXNumber:
	call GetDigits
	add "0"
	ld [wQueuedBG000TileID], a
	ld a, HIGH(vBGMap0 + $12e)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW(vBGMap0 + $12e)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, b
	add "0"
	ld [wQueuedBG001TileID], a
	ld a, HIGH(vBGMap0 + $12d)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW(vBGMap0 + $12d)
	ld [wQueuedBG001BGPtr + 1], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ret

.UpdateSoundCheckCursor:
	ld a, [wMenuCursorPos]
	and a
	jr nz, .cursor_on_sfx
	ld a, HIGH(vBGMap0 + $e6)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW(vBGMap0 + $e6)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, $c6
	ld [wQueuedBG000TileID], a
	ld a, HIGH(vBGMap0 + $126)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW(vBGMap0 + $126)
	ld [wQueuedBG001BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG001TileID], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ret

.cursor_on_sfx
	ld a, HIGH(vBGMap0 + $e6)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW(vBGMap0 + $e6)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG000TileID], a
	ld a, HIGH(vBGMap0 + $126)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW(vBGMap0 + $126)
	ld [wQueuedBG001BGPtr + 1], a
	ld a, $c6
	ld [wQueuedBG001TileID], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ret
; 0x1a727
