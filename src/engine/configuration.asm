ConfigurationMenu:
	call Func_648
	call ResetTimer
	call ClearAllObjects
	call InitWindow
	xor a
	ld [wSCX ], a
	ld [wSCY], a
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
	dec a ; $ff, all buttons
	ld [wd050], a

	ld hl, $98eb
	ld a, [wConfigMaxHP]
.loop_draw_hp_bars
	ld [hl], $c5
	inc hl
	dec a
	jr nz, .loop_draw_hp_bars

	call StopTimerAndSwitchOnLCD
	call Func_670

	ld a, [wConfigLives]
	call .UpdateNumLives

	ld hl, hVBlankFlags
	set VBLANK_6_F, [hl]
.asm_1a3f2
	bit VBLANK_6_F, [hl]
	jr nz, .asm_1a3f2

	call .config_update_cursor

.input_ret
	ld hl, hVBlankFlags
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
	cp CONFIGMENU_SOUND_TEST
	jp z, .SoundTest
	cp CONFIGMENU_EXIT
	ret nz
.exit_config_menu
	pop hl
	ld a, SELECT | START
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
.config_update_cursor
	ld a, HIGH($98e4)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW($98e4)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG000TileID], a
	ld a, HIGH($9924)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW($9924)
	ld [wQueuedBG001BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG001TileID], a
	ld a, HIGH($9964)
	ld [wQueuedBG002BGPtr + 0], a
	ld a, LOW($9964)
	ld [wQueuedBG002BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG002TileID], a
	ld a, HIGH($99c4)
	ld [wQueuedBG003BGPtr + 0], a
	ld a, LOW($99c4)
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
	ld a, [wConfigLives]
	dec a
	ret z
	ld [wConfigLives], a

.UpdateNumLives:
	call GetDigits
	add "0"
	ld [wQueuedBG000TileID], a
	ld a, HIGH($992c)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW($992c)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, b
	add "0"
	ld [wQueuedBG001TileID], a
	ld a, HIGH($992b)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW($992b)
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

	xor a ; SOUNDTEST_MUSIC
	ld [wMenuCursorPos], a
	ld hl, wSoundCheckMusic
	ld [hli], a
	ld [hl], a
	call .UpdateSoundCheckCursor

.asm_1a58a
	ld hl, hVBlankFlags
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
	ld a, HIGH($98ee)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW($98ee)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, b
	add "0"
	ld [wQueuedBG001TileID], a
	ld a, HIGH($98ed)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW($98ed)
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
	ld a, HIGH($992e)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW($992e)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, b
	add "0"
	ld [wQueuedBG001TileID], a
	ld a, HIGH($992d)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW($992d)
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
	jr nz, .cursor_on_sfx
	ld a, HIGH($98e6)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW($98e6)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, $c6
	ld [wQueuedBG000TileID], a
	ld a, HIGH($9926)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW($9926)
	ld [wQueuedBG001BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG001TileID], a
	xor a
	ld [wQueuedBG002BGPtr + 0], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.cursor_on_sfx
	ld a, HIGH($98e6)
	ld [wQueuedBG000BGPtr + 0], a
	ld a, LOW($98e6)
	ld [wQueuedBG000BGPtr + 1], a
	ld a, $c7
	ld [wQueuedBG000TileID], a
	ld a, HIGH($9926)
	ld [wQueuedBG001BGPtr + 0], a
	ld a, LOW($9926)
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
