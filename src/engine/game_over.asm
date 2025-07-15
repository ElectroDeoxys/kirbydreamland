_SetHPToZeroAndLoseLife::
	xor a
	ld [wHP], a
;	fallthrough
_LoseLife::
	ld a, SFX_LOSE_LIFE
	call PlaySFX
	ld a, MUSIC_NONE
	call PlayMusic

	ld hl, wFoodPowerUpCounter
	xor a
	ld [hli], a ; wFoodPowerUpCounter
	ld [hli], a ;
	ld [hli], a ; wInvincibilityCounter
	ld [hl], a  ;
	ld [wPowerUpAttack], a
	ld [wDamageBlinkingCounter], a

	; stop blinking and flashing
	ld a, [wd1a0 + OBJECT_SLOT_KIRBY]
	res OBJFLAG_FLASHING_F, a
	res OBJFLAG_BLINKING_F, a
	ld [wd1a0 + OBJECT_SLOT_KIRBY], a

	ld a, [wStage]
	cp MT_DEDEDE
	jr nz, .not_mt_dedede
	ld a, [wArea]
	ld b, $00
	ld c, a
	ld hl, Data_1874d
	add hl, bc
	ld a, [hl]
	ld c, a
	ld hl, wMtDededeClearedAreas
	add hl, bc
	xor a
	ld [hl], a

.not_mt_dedede
	xor a
	ld [hVBlankFlags], a
	ld [hKirbyFlags5], a
	ld [hKirbyFlags4], a
	ld a, [hKirbyFlags6]
	and KIRBY6F_UNK0 | KIRBY6F_UNK7
	ld [hKirbyFlags6], a

	call ClearConsumedItems

	ld a, 1
	call DoFrames
	ld a, 59
	call WaitFrames
	ld a, MUSIC_LIFE_LOST
	call PlayMusic

	ld hl, hKirbyFlags5
	set KIRBY5F_UNK5_F, [hl]
	call ClearObjectsExceptKirby
	xor a
	ld [wd3cc], a
	ld bc, OBJECT_SLOT_KIRBY
	ld hl, AnimScript_20154
	ld de, MotionScript_10137
	call SetObjectScripts

	ld b, 160
.loop_wait_animation
	; overwrite Kirby's active state to active
	; if it's outside screen
	push bc
	ld a, [wObjectYCoords + OBJECT_SLOT_KIRBY + $1]
	cp 220
	jr nc, .set_kirby_obj_active
	cp 160
	jr nc, .skip_set_kirby_obj_active
.set_kirby_obj_active
	; y < 160 || y >= 220
	ld a, OBJECT_ACTIVE
	ld [wObjectActiveStates + OBJECT_SLOT_KIRBY], a
.skip_set_kirby_obj_active
	ld a, 1
	call DoFrames
	pop bc
	dec b
	jr nz, .loop_wait_animation

	ld hl, hKirbyFlags5
	res KIRBY5F_UNK5_F, [hl]

	; decrement lives
	ld a, [wLives]
	dec a
	jr z, GameOver
	ld [wLives], a

	ld a, [wStage]
	add a ; *2
	ld c, a
	ld b, $00
	ld hl, Data_3a43
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [wArea]
	ld h, a
	add a
	add a
	add h ; *5
	ld l, a
	ld h, $00
	add hl, bc
	ld a, [hli]
	ld [wArea], a

	push hl
	call Func_19c9
	call FadeOut
	call LoadArea
	pop hl

	ld a, [hli]
	ld [wLevelXSection], a
	ld a, [hli]
	ld [wLevelYSection], a
	ld a, [hli]
	ld [wKirbyScreenX], a
	ld a, [hli]
	ld [wKirbyScreenY], a
	xor a
	ld [hKirbyFlags1], a
	ld [hKirbyFlags2], a
	ld [hKirbyFlags3], a
	call Func_139b
	ld a, [wStage]
	cp MT_DEDEDE
	jr z, .skip_play_music
	ld a, [wLevelMusic]
	call PlayMusic
.skip_play_music
	ld a, [hEngineFlags]
	res ENGINEF_UNK6_F, a
	ld [hEngineFlags], a
	call StartLevelAfterContinue
	ld a, [hHUDFlags]
	set HUD_UPDATE_LIVES_F, a
	ld [hHUDFlags], a
	ld a, [wMaxHP]
	ld [wHP], a
	jp StageLoop_UpdateHUD

Data_1874d:
	table_width 1
	db MT_DEDEDE_0 ; MT_DEDEDE_0
	db MT_DEDEDE_1 ; MT_DEDEDE_1
	db MT_DEDEDE_2 ; MT_DEDEDE_2
	db MT_DEDEDE_3 ; MT_DEDEDE_3
	db MT_DEDEDE_4 ; MT_DEDEDE_4
	db MT_DEDEDE_5 ; MT_DEDEDE_5
	db MT_DEDEDE_1 ; MT_DEDEDE_6
	db MT_DEDEDE_3 ; MT_DEDEDE_7
	db MT_DEDEDE_2 ; MT_DEDEDE_8
	db MT_DEDEDE_4 ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

GameOver:
	call FadeOut
	call HideWindow
	call ResetTimer

	ld a, SCENE_GAME_OVER
	call Func_21fb

	ld hl, BG_c665
	debgcoord 0, 0
	ld c, BANK(BG_c665)
	call FarDecompress
	ld hl, FontWoNumbersGfx
	ld de, vTiles1 tile $60
	ld c, BANK(FontWoNumbersGfx)
	call FarDecompress

	ld a, MUSIC_GAME_OVER
	call PlayMusic

	xor a
	ld [wSCX], a
	ld [wSCY], a
	call StopTimerAndSwitchOnLCD
	call FadeIn
	xor a
	ld [wVirtualOAMSize], a
	call UpdateObjects

	; wait 280 frames ~ 4.5 seconds
	; unless Start is pressed
	ld bc, 280
.loop
	wait_vblank
	ld a, [hJoypadPressed]
	bit B_PAD_START, a
	jr nz, .start_pressed
	dec bc
	ld a, b
	and a
	jr nz, .loop
	ld a, c
	and a
	jr nz, .loop

.start_pressed
	ld hl, hKirbyFlags6
	set KIRBY6F_UNK0_F, [hl]
	call FadeOut
	call HideWindow
	call ResetTimer
	call ClearAllObjects

	inc a ; $1
	ld [wLevelXSection], a
	ld [wLevelYSection], a

	ld a, SCENE_CONTINUE
	call Func_21fb
	ld a, $ff
	ld [wd096], a
	call ClearSprites

	ld hl, FontGfx
	ld de, vTiles1 tile $60
	ld c, BANK(FontGfx)
	call FarDecompress
	ld hl, StageIntroGfx
	ld de, vTiles1 tile $00
	ld c, BANK(StageIntroGfx)
	call FarDecompress
	ld hl, BG_c6b5
	debgcoord 0, 0
	ld c, BANK(BG_c6b5)
	call FarDecompress

	xor a
	ld [wOAMFlagsOverride], a
	ld [wSCX], a
	ld [wSCY], a

	ld a, MUSIC_SPARKLING_STAR
	call PlayMusic

	call StopTimerAndSwitchOnLCD
	call FadeIn
.asm_1880b
	wait_vblank
	call UpdateObjectsAndClearStaleSprites
	ld a, [wd3d0]
	and a
	jr z, .asm_1880b

	ld hl, hKirbyFlags6
	res KIRBY6F_UNK0_F, [hl]
	ld a, [wd3cf]
	and a
	jp nz, .reset_game

	ld a, [wConfigLives]
	ld [wLives], a
	call SetFullHP
	ld hl, wMtDededeClearedAreas + MT_DEDEDE_5
	ld a, [hld]
	and a
	jr z, .asm_1883e
	xor a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
.asm_1883e
	; halve score
	ld hl, wScore + $2
	ld a, [hl]
	srl a
	ld [hld], a
	ld a, [hl]
	rr a
	ld [hld], a
	ld a, [hl]
	rr a
	ld [hl], a
	ld hl, hEngineFlags
	set ENGINEF_UNK5_F, [hl]
	call StartStage
	ld a, [wLevelMusic]
	call PlayMusic
	jp StageLoop_UpdateHUD

.reset_game
	ld a, 60
	call DoFrames
	call FadeOut
	call ResetTimer
	jp Reset
