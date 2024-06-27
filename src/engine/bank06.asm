TitleScreen::
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call ResetTimer

	xor a
	ld [wVirtualOAMSize], a
	ld [wSCX], a
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
	ld de, .tile_ids
	ld hl, wTileQueue
	ld a, .tile_ids_end - .tile_ids
.loop_copy_tile_ids
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
	jr nz, .loop_copy_tile_ids
	xor a ; terminating byte
	ld [wTileQueue + (.tile_ids_end - .tile_ids) * $3], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.tile_ids
	db $e4, $79, $f2, $f0, $e0, $00, $e6, $e0, $ec, $e4
.tile_ids_end
; 0x180d4

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
	call Func_231e
	call InitWindow
	xor a
	ld [wSCX], a
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
	ld [wTileQueue + $0], a
	ld a, $e4
	ld [wTileQueue + $1], a
	ld a, $c7
	ld [wTileQueue + $2], a
	ld a, $99
	ld [wTileQueue + $3], a
	ld a, $24
	ld [wTileQueue + $4], a
	ld a, $c7
	ld [wTileQueue + $5], a
	ld a, $99
	ld [wTileQueue + $6], a
	ld a, $64
	ld [wTileQueue + $7], a
	ld a, $c7
	ld [wTileQueue + $8], a
	ld a, $99
	ld [wTileQueue + $9], a
	ld a, $c4
	ld [wTileQueue + $a], a
	ld a, $c7
	ld [wTileQueue + $b], a
	xor a
	ld [wTileQueue + $c], a
	ld a, [wMenuCursorPos]
	ld c, a
	add a
	add c ; *3
	ld c, a
	ld b, $00
	ld hl, wTileQueue + $2
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
	ld [wTileQueue + $2], a
	ld b, $00
	ld hl, $98ea
	add hl, bc
	ld a, h
	ld [wTileQueue + $0], a
	ld a, l
	ld [wTileQueue + $1], a
	xor a
	ld [wTileQueue + $3], a
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
	add $72
	ld [wTileQueue + $2], a
	ld a, $99
	ld [wTileQueue + $0], a
	ld a, $2c
	ld [wTileQueue + $1], a
	ld a, b
	add $72
	ld [wTileQueue + $5], a
	ld a, $99
	ld [wTileQueue + $3], a
	ld a, $2b
	ld [wTileQueue + $4], a
	xor a
	ld [wTileQueue + $6], a
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
	add $72
	ld [wTileQueue + $2], a
	ld a, $98
	ld [wTileQueue + $0], a
	ld a, $ee
	ld [wTileQueue + $1], a
	ld a, b
	add $72
	ld [wTileQueue + $5], a
	ld a, $98
	ld [wTileQueue + $3], a
	ld a, $ed
	ld [wTileQueue + $4], a
	xor a
	ld [wTileQueue + $6], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.UpdateSoundCheckSFXNumber:
	call GetDigits
	add $72
	ld [wTileQueue + $2], a
	ld a, $99
	ld [wTileQueue], a
	ld a, $2e
	ld [wTileQueue + $1], a
	ld a, b
	add $72
	ld [wTileQueue + $5], a
	ld a, $99
	ld [wTileQueue + $3], a
	ld a, $2d
	ld [wTileQueue + $4], a
	xor a
	ld [wTileQueue + $6], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.UpdateSoundCheckCursor:
	ld a, [wMenuCursorPos]
	and a
	jr nz, .asm_1a6fc
	ld a, $98
	ld [wTileQueue + $0], a
	ld a, $e6
	ld [wTileQueue + $1], a
	ld a, $c6
	ld [wTileQueue + $2], a
	ld a, $99
	ld [wTileQueue + $3], a
	ld a, $26
	ld [wTileQueue + $4], a
	ld a, $c7
	ld [wTileQueue + $5], a
	xor a
	ld [wTileQueue + $6], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret
.asm_1a6fc
	ld a, $98
	ld [wTileQueue + $0], a
	ld a, $e6
	ld [wTileQueue + $1], a
	ld a, $c7
	ld [wTileQueue + $2], a
	ld a, $99
	ld [wTileQueue + $3], a
	ld a, $26
	ld [wTileQueue + $4], a
	ld a, $c6
	ld [wTileQueue + $5], a
	xor a
	ld [wTileQueue + $6], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret
; 0x1a727
