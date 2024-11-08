SECTION "Title Screen", ROMX[$4000], BANK[$6]

INCLUDE "engine/title_screen.asm"

SECTION "Bank 6@40e4", ROMX[$40e4], BANK[$6]

; starts stage that is in wStage
StartStage::
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	xor a
	ld [hPalFadeFlags], a
	ld [wd3f1], a
	ld hl, wMintLeafCounter
	ld [hli], a ; wMintLeafCounter
	ld [hli], a ;
	ld [hli], a ; wInvincibilityCounter
	ld [hl], a  ;
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
	cp TRUE
	jr z, .black
	ld a, FADE_WHITE | SCROLLINGF_UNK3 | FADE_OUT | FADE_ON | 0
	jr .got_fade_config
.black
	ld a, FADE_BLACK | SCROLLINGF_UNK3 | FADE_OUT | FADE_ON | 0
.got_fade_config
	ld [hPalFadeFlags], a
	push hl
	xor a
	ld [hVBlankFlags], a
	ld [hKirbyFlags1], a

	call FadeOut
	ld a, SFX_NONE
	call PlaySFX
	ld a, MUSIC_NONE
	call PlayMusic
	pop hl

	ld a, [hKirbyFlags6]
	bit KIRBY6F_UNK7_F, a
	jr nz, .skip_intro
	call HideWindow
	call StageIntro
.skip_intro
	ld a, $ff
	ld [wd096], a
	call ClearAllObjects
	call FadeOut
	call Func_1c0a
	call ResetTimer
	call Func_18285

	ld d, $00 ; useless

	ld a, [wStage]
	ld c, a
	add a
	add c
	ld b, $00
	ld c, a
	ld hl, StageBlockTileMaps
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld e, a
	ld h, d
	ld l, e
	ld de, wBlockTileMap
	call FarDecompress

	ld a, HUD_UPDATE_LABEL | HUD_UPDATE_LIVES | HUD_UPDATE_SCORE_DIGITS
	ld [hHUDFlags], a
	ld a, $15
	ld [wd07e], a
	ld a, $16
	ld [wd065], a

	xor a
	ld hl, wKirbyAnimScript
	ld [hli], a
	ld [hl], a
	ld [hKirbyFlags1], a
	ld [hKirbyFlags2], a
	ld [hKirbyFlags3], a
	ld [hKirbyFlags4], a
	ld [wd064], a
	ld [wSCX ], a
	ld [wSCY], a
	ld [wKirbyXAcc], a
	ld [wd056], a
	ld [wd078], a
	ld [wd079], a
	ld a, $20
	ld [wd07c], a
	ld a, 14
	ld [wKirbyXDeceleration], a
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

	; hl = stage header
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
	ld [wKirbyScreenX], a
	ld a, [hli]
	ld [wKirbyScreenY], a

	ld a, [wStage]
	ld e, a
	ld d, $00
	ld hl, StageMusics
	add hl, de
	ld a, [hl]
	ld [wMusic], a

	ld bc, $0
	ld a, MT_DEDEDE
	cp e ; wStage
	jr nz, .asm_1821e
	ld hl, hKirbyFlags6
	bit KIRBY6F_UNK7_F, [hl]
	jr z, .asm_1821e
	ld a, $33
	ld [wd051], a
	ld a, $01
	ld [wd052], a
	ld a, $48
	ld [wKirbyScreenX], a
	ld a, $70
	ld [wKirbyScreenY], a
	ld bc, $32
.asm_1821e
	ld hl, wc100
	add hl, bc
	call Func_1964

	xor a
	ld [wVirtualOAMSize], a
	call Func_21fb
	call Func_139b
	call ClearConsumedItems
	call ClearSprites

	ld a, [wStage]
	cp MT_DEDEDE
	jr nz, .asm_1824a
	ld hl, hKirbyFlags5
	res KIRBY5F_UNK2_F, [hl]
	ld a, [hKirbyFlags6]
	bit KIRBY6F_UNK7_F, a
	jr nz, .asm_1824a
	set KIRBY5F_UNK2_F, [hl]
.asm_1824a
	ld hl, hKirbyFlags6
	res KIRBY6F_UNK7_F, [hl]
	ld a, [hKirbyFlags6]
	bit KIRBY6F_UNK7_F, a
	jr z, .skip_music ; z is always set here

	; unreachable
	ld a, [wStage]
	cp MT_DEDEDE
	jr z, .skip_music
	ld a, [wMusic]
	call PlayMusic

.skip_music
	call SetFullHP
	call StopTimerAndSwitchOnLCD
	call FadeIn
	call Func_8dc
	ret

StageMusics:
	table_width 1
	db MUSIC_GREEN_GREENS
	db MUSIC_CASTLE_LOLOLO
	db MUSIC_FLOAT_ISLANDS
	db MUSIC_BUBBLY_CLOUDS
	db MUSIC_MT_DEDEDE
	assert_table_length NUM_STAGES

Func_18275:
	ld a, [wExtraGameEnabled]
	push af
	xor a
	ld [wExtraGameEnabled], a
	call Func_18285
	pop af
	ld [wExtraGameEnabled], a
	ret

Func_18285:
	ld a, [wExtraGameEnabled]
	and a
	jr nz, .extra_game
	ld hl, $4000
	ld de, vTiles0 tile $00
	ld c, $02
	call FarDecompress
	ld hl, $4855
	ld de, vTiles2 tile $67
	ld c, $02
	call FarDecompress
	jr .asm_182b9
.extra_game
	ld hl, $488d
	ld de, vTiles0 tile $00
	ld c, $0a
	call FarDecompress
	ld hl, $50f3
	ld de, vTiles2 tile $67
	ld c, $0a
	call FarDecompress
.asm_182b9
	ld d, $00
	ld a, [wStage]
	ld c, a
	add a
	add a
	add c ; *5
	ld c, a
	ld b, $00
	ld hl, Data_2070
	ld a, [wExtraGameEnabled]
	and a
	jr z, .asm_182d1
	ld hl, Data_2089
.asm_182d1
	add hl, bc
	ld a, [hli]
	ld [wd06b + 0], a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld h, b
	ld l, c
	ld a, [wd06b + 0]
	ld c, a
	call FarDecompress
	ret

StageIntro:
	push hl
	xor a
	ld [wVirtualOAMSize], a
	ld [wSCX], a
	ld [wSCY], a
	inc a
	ld [wd051], a
	ld [wd052], a
	ld hl, hKirbyFlags5
	set KIRBY5F_UNK1_F, [hl]
	call ClearSprites
	call ResetTimer

	ld hl, $4000
	ld de, vTiles0 tile $00
	ld c, $02
	call FarDecompress
	ld hl, $4855
	ld de, vTiles2 tile $67
	ld c, $02
	call FarDecompress

	ld a, [wStage]
	ld c, a
	add a
	add a
	add c ; *5
	ld c, a
	ld b, $00
	ld hl, Data_2070
	add hl, bc
	ld a, [hli]
	ld [wd06b + 0], a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	ld h, b
	ld l, c
	ld a, [wd06b + 0]
	ld c, a
	call FarDecompress

	ld a, [wStage]
	cp MT_DEDEDE
	jr z, .asm_1835b
	ld hl, $77e9
	ld de, vTiles1 tile $60
	ld c, $02
	call FarDecompress
	ld hl, $5cdd
	ld de, vTiles1 tile $00
	ld c, $03
	call FarDecompress

.asm_1835b
	ld a, [wStage]
	ld c, a
	add a
	add c
	ld c, a
	ld b, $00
	ld hl, Data_190bb
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld a, [hl]
	ld e, a
	ld h, d
	ld l, e
	debgcoord 0, 0
	call FarDecompress

	xor a
	call Func_21fb
	call StopTimerAndSwitchOnLCD
	call FadeIn

	pop hl
	ld a, [hl]
	ld [wMusic], a
	call PlayMusic

	ld a, [wStage]
	add a
	ld e, a
	ld d, $00
	ld hl, StageIntroDurations
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
.loop
	ld hl, hVBlankFlags
	set VBLANK_PENDING_F, [hl]
.wait_vblank
	halt
	bit VBLANK_PENDING_F, [hl]
	jr nz, .wait_vblank

	call Func_19098
	ld a, [hJoypadPressed]
	bit START_F, a
	jr nz, .start_btn
	dec de
	ld a, d
	or e
	jr nz, .loop

.start_btn
	ld hl, hKirbyFlags5
	res KIRBY5F_UNK1_F, [hl]
	ret

StageIntroDurations:
	table_width 2
	dw 320 ; GREEN_GREENS
	dw 343 ; CASTLE_LOLOLO
	dw 400 ; FLOAT_ISLANDS
	dw 390 ; BUBBLY_CLOUDS
	dw 712 ; MT_DEDEDE
	assert_table_length NUM_STAGES

Func_183bf::
	ld a, [wd041]
	ld [wd042], a
	call .Func_1844f
	ld hl, hPalFadeFlags
	res SCROLL_LOCKED_F, [hl]

	ld a, [wStage]
	add a ; *2
	ld c, a
	ld b, $00
	ld hl, StageTransistions
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [wArea]
	add a ; *2
	ld l, a
	ld h, $00
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, $01
	ld [wd3dd], a

.asm_183ec
	wait_vblank_a

	push hl
	call Func_319d
	call Func_19098
	pop hl

	ld a, [wd3dd]
	dec a
	ld [wd3dd], a
	jr nz, .asm_18440
	ld a, [hli]
	ld [wd3dd], a
	ld a, [hli]
	ld [wd3de], a
	bit 7, a
	jp nz, Func_3d2d
	bit 0, a
	call nz, .SetKirbyXVel
	bit 1, a
	call nz, .SetKirbyXVel
	bit 2, a
	call nz, .SetArea
	bit 4, a
	call nz, .Func_18473
	bit 5, a
	jp nz, Func_1886c
	bit 3, a
	jr z, .asm_18440
; next stage
	ld hl, wStage
	inc [hl]
	call StartStage
	jp Func_3d32
.asm_18440
	ld a, [wd3de]
	bit 0, a
	call nz, .Func_18506
	bit 1, a
	call nz, .Func_18528
	jr .asm_183ec

.Func_1844f:
	ld a, [wStage]
	add a
	ld c, a
	ld b, $00
	ld hl, Data_1926a
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [wArea]
	add a ; *2
	ld l, a
	ld h, $00
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, MotionScript_157a
	ld bc, OBJECT_SLOT_KIRBY
	call SetObjectScripts
	ret

.Func_18473:
	push af
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push hl
	ld hl, AnimScript_2010c
	ld bc, OBJECT_SLOT_KIRBY
	call SetObjectScripts
	pop hl
	pop af
	ret

.SetArea:
	push af
	ld a, [hli]
	ld [wArea], a
	push hl
	call Func_19c9
	call FadeOut
	ld a, SFX_NONE
	call PlaySFX
	pop hl
	xor a
	ld [wSCX], a
	ld [wSCY], a
	ld a, [hli]
	ld [wd051], a
	ld a, [hli]
	ld [wd052], a
	push hl
	call Func_19f9
	ld a, [wd052]
	dec a
	ld b, a
	ld a, [wd03f]
	ld e, a
	call BCFractionE
	ld a, [wd051]
	dec a
	ld l, a
	ld h, $00
	add hl, bc
	ld b, h
	ld c, l
	ld hl, wc100
	add hl, bc
	call Func_1964
	ld a, $ff
	ld [wd096], a
	call .Func_1844f
	xor a
	call Func_21fb
	call ClearSprites
	call Func_2e9c
	ld a, [wStage]
	cp MT_DEDEDE
	jr nz, .asm_184eb
	ld a, [wArea]
	and a
	jr nz, .asm_184eb
	ld a, MUSIC_MT_DEDEDE
	call PlayMusic
.asm_184eb
	call StopTimerAndSwitchOnLCD
	call FadeIn
	pop hl
	pop af
	ret

.SetKirbyXVel:
	push af
	ld a, [hli]
	ld [wKirbyXVel + 0], a
	ld a, [hli]
	ld [wKirbyXVel + 1], a
	xor a
	ld [wd076], a
	ld [wd077], a
	pop af
	ret

.Func_18506:
	push af
	push hl
	ld a, [wKirbyXVel + 1]
	ld e, a
	ld a, [wd077]
	add e
	ld [wd077], a
	ld a, [wKirbyXVel + 0]
	ld e, a
	ld a, [wd076]
	adc e
	ld [wd063], a
	xor a
	ld [wd076], a
	call Func_1062
	pop hl
	pop af
	ret

.Func_18528:
	push hl
	ld a, [wKirbyXVel + 1]
	ld e, a
	ld a, [wd077]
	add e
	ld [wd077], a
	ld a, [wKirbyXVel + 0]
	ld e, a
	ld a, [wd076]
	adc e
	ld b, a
	ld [wd067], a
	xor a
	ld [wd076], a
	cp b
	jr z, .asm_18591
	ld a, [wSCY]
	ld c, a
.asm_1854b
	ld a, c
	call Is4BitUnaligned
	jr nc, .asm_18557
	dec c
	dec b
	jr nz, .asm_1854b
	jr .asm_18591
.asm_18557
	ld a, [wSCY]
	sub $10
	ld [wYCoord], a
	ld a, [wSCX]
	and $f0
	ld [wXCoord], a
	ld a, [wd052]
	dec a
	jr z, .asm_1856e
	dec a
.asm_1856e
	ld e, a
	ld a, [wd03f]
	ld b, a
	call BCFractionE
	ld hl, wc100
	add hl, bc
	ld b, $00
	ld a, [wd051]
	dec a
	ld c, a
	add hl, bc
	call Func_12b4
	ld hl, wd052
	dec [hl]
	ld a, [hVBlankFlags]
	set 5, a
	ld [hVBlankFlags], a
.asm_18591
	ld a, [wd067]
	ld b, a
	ld a, [wSCY]
	sub b
	ld [wSCY], a
	pop hl
	ret

; loops until player presses Start button
; then after button press, waits 30 frames
; before game resumes
Pause::
	ld a, SFX_33
	call PlaySFX

	xor a
	ld [wPauseCounter + 0], a
	ld [wPauseCounter + 1], a
	ld [hJoypadPressed], a

	ld a, [hKirbyFlags4]
	set KIRBY4F_UNK2_F, a
	ld [hKirbyFlags4], a
.loop
	ld a, [hVBlankFlags]
	bit VBLANK_PENDING_F, a
	jr nz, .loop
	ld a, [hKirbyFlags5]
	bit KIRBY5F_UNK0_F, a
	jr nz, .skip_animation
	ld a, [hKirbyFlags2]
	and KIRBY2F_SPIT | KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER
	jr nz, .show_sprites
	ld a, [hKirbyFlags3]
	and KIRBY3F_LAND
	jr nz, .show_sprites
	ld a, [hKirbyFlags4]
	and KIRBY4F_UNK3 | KIRBY4F_UNK4 | KIRBY4F_UNK5
	jr nz, .show_sprites
	ld hl, hKirbyFlags4
	set KIRBY4F_UNK0_F, [hl]

	; increment counter
	ld hl, wPauseCounter
	ld a, [hl]
	add 1
	ld [hli], a
	ld a, [hl]
	adc 0
	ld [hld], a
	cp HIGH($400)
	jr c, .show_sprites
	ld a, [hl]
	cp $b0
	jr c, .show_sprites
	ld hl, hEngineFlags
	set PAUSE_ANIMATION_F, [hl]
.show_sprites
	xor a
	ld [wVirtualOAMSize], a
	call Func_2e9c
	call Func_139b
	call ClearSprites
	ld a, [hVBlankFlags]
	set VBLANK_PENDING_F, a
	ld [hVBlankFlags], a
	ld a, [hJoypadPressed]
	bit START_F, a
	jr z, .loop

	; player pressed Start
	ld a, SFX_PAUSE
	call PlaySFX
	ld a, [hKirbyFlags4]
	and $ff ^ (KIRBY4F_UNK0 | KIRBY4F_UNK2)
	ld [hKirbyFlags4], a
	ld hl, hEngineFlags
	res PAUSE_ANIMATION_F, [hl]
	ld hl, hKirbyFlags5
	res KIRBY5F_UNK0_F, [hl]
	ld a, 30
	call WaitAFrames
	ret

.skip_animation
	ld a, [hEngineFlags]
	res PAUSE_ANIMATION_F, a
	ld [hEngineFlags], a
	jr .show_sprites

_SetHPToZeroAndLoseLife::
	xor a
	ld [wHP], a
;	fallthrough
_LoseLife::
	ld a, SFX_LOSE_LIFE
	call PlaySFX
	ld a, MUSIC_NONE
	call PlayMusic

	ld hl, wMintLeafCounter
	xor a
	ld [hli], a ; wMintLeafCounter
	ld [hli], a ;
	ld [hli], a ; wInvincibilityCounter
	ld [hl], a  ;
	ld [wd3be], a
	ld [wd3f5], a

	; stop blinking and flashing
	ld a, [wd1a0 + OBJECT_SLOT_KIRBY]
	res OBJFLAG_FLASHING_F, a
	res OBJFLAG_BLINKING_F, a
	ld [wd1a0 + OBJECT_SLOT_KIRBY], a

	ld a, [wStage]
	cp MT_DEDEDE
	jr nz, .asm_18678
	ld a, [wArea]
	ld b, $00
	ld c, a
	ld hl, Data_1874d
	add hl, bc
	ld a, [hl]
	ld c, a
	ld hl, wMtDededeDefeatedBosses
	add hl, bc
	xor a
	ld [hl], a

.asm_18678
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
	call WaitAFrames
	ld a, MUSIC_LIFE_LOST
	call PlayMusic

	ld hl, hKirbyFlags5
	set KIRBY5F_UNK5_F, [hl]
	call ClearObjectsExceptSlot00
	xor a
	ld [wd3cc], a
	ld bc, OBJECT_SLOT_KIRBY
	ld hl, AnimScript_20154
	ld de, MotionScript_10137
	call SetObjectScripts

	ld b, 160
.loop_wait_animation
	push bc
	ld a, [wObjectYCoords + OBJECT_SLOT_KIRBY + $1]
	cp $dc
	jr nc, .set_kirby_obj_active
	cp $a0
	jr nc, .skip_set_kirby_obj_active
.set_kirby_obj_active
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
	call Func_19f9
	pop hl

	ld a, [hli]
	ld [wd051], a
	ld a, [hli]
	ld [wd052], a
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
	ld a, [wMusic]
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
	jp ResetStage

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

	ld a, SCENE_0A
	call Func_21fb

	ld hl, $4665
	debgcoord 0, 0
	ld c, $03
	call FarDecompress
	ld hl, $41c7
	ld de, vTiles1 tile $60
	ld c, $03
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
	call Func_2e9c

	; wait 280 frames ~ 4.5 seconds
	; unless Start is pressed
	ld bc, 280
.loop
	wait_vblank
	ld a, [hJoypadPressed]
	bit START_F, a
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
	ld [wd051], a
	ld [wd052], a

	ld a, SCENE_0B
	call Func_21fb
	ld a, $ff
	ld [wd096], a
	call ClearSprites

	ld hl, $77e9
	ld de, vTiles1 tile $60
	ld c, $02
	call FarDecompress
	ld hl, $5cdd
	ld de, vTiles1 tile $00
	ld c, $03
	call FarDecompress
	ld hl, $46b5
	debgcoord 0, 0
	ld c, $03
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
	call Func_19098
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
	ld hl, wMtDededeDefeatedBosses + MT_DEDEDE_5
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
	ld a, [wMusic]
	call PlayMusic
	jp ResetStage

.reset_game
	ld a, 60
	call DoFrames
	call FadeOut
	call ResetTimer
	jp Reset

Func_1886c:
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call FadeOut

	ld a, SFX_NONE
	call PlaySFX
	ld a, MUSIC_NONE
	call PlayMusic

	xor a
	ld [hPalFadeFlags], a
	inc a
	ld [wd051], a
	ld [wd052], a
	ld a, SCENE_03
	call Func_21fb
	call Func_19098
	call HideWindow

	ld a, HUD_UPDATE_HP
	ld [hHUDFlags], a

	xor a
	ld [wSCX], a
	ld [wSCY], a

	call ResetTimer

	ld hl, $41c7
	ld de, vTiles1 tile $60
	ld c, $03
	call FarDecompress
	ld hl, $4fcf
	ld de, vTiles0 tile $00
	ld c, $03
	call FarDecompress
	ld hl, $5894
	ld de, vTiles2 tile $00
	ld c, $03
	call FarDecompress
	ld hl, $42c8
	debgcoord 0, 0
	ld c, $03
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 200
	ld hl, hVBlankFlags
.loop_delay
	set VBLANK_PENDING_F, [hl]
.loop_wait_vblank
	bit VBLANK_PENDING_F, [hl]
	jr nz, .loop_wait_vblank
	call Func_19098
	dec de
	ld a, d
	or e
	jr nz, .loop_delay

	xor a
	ld [hPalFadeFlags], a
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call FadeOut
	call ResetTimer

	ld hl, $4000
	ld de, vTiles0 tile $00
	ld c, $02
	call FarDecompress
	ld hl, $4855
	ld de, vTiles2 tile $67
	ld c, $02
	call FarDecompress
	ld hl, $6c49
	ld de, vTiles1 tile $00
	ld c, $02
	call FarDecompress
	ld hl, $777c
	ld de, wBlockTileMap
	ld c, $06
	call FarDecompress
	ld hl, $71e2
	ld de, wc100
	ld c, $06
	call FarDecompress

	ld a, SCENE_04
	call Func_21fb
	call Func_19098
	ld a, $12
	ld [wd03f], a
	ld a, $08
	ld [wd040], a
	ld hl, wc100 + $4
	call Func_1964
	call StopTimerAndSwitchOnLCD
	call FadeIn

	ld de, 432 ; ~ 7 seconds
	ld hl, hVBlankFlags
.asm_18959
	set VBLANK_PENDING_F, [hl]
.asm_1895b
	bit VBLANK_PENDING_F, [hl]
	jr nz, .asm_1895b
	call Func_19098
	dec de
	ld a, d
	or e
	jr nz, .asm_18959

	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call FadeOut
	ld a, SCENE_05
	call Func_21fb
	call Func_19098
	call ResetTimer

	ld hl, $41c7
	ld de, vTiles1 tile $60
	ld c, $03
	call FarDecompress
	ld hl, $4fcf
	ld de, vTiles0 tile $00
	ld c, $03
	call FarDecompress
	ld hl, $5894
	ld de, vTiles2 tile $00
	ld c, $03
	call FarDecompress
	ld hl, $42c8
	debgcoord 0, 0
	ld c, $03
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 512
	ld hl, hVBlankFlags
.asm_189b5
	set VBLANK_PENDING_F, [hl]
.asm_189b7
	bit VBLANK_PENDING_F, [hl]
	jr nz, .asm_189b7
	call Func_19098
	dec de
	ld a, d
	or e
	jr nz, .asm_189b5

	call FadeOut
	call ResetTimer
	ld a, SCENE_06
	call Func_21fb
	call Func_19098

	xor a
	ld [hHUDFlags], a
	ld [wSCX], a
	ld a, $08
	ld [wSCY], a

	hlbgcoord 0, 0
	ld de, BG_192d6
	ld b, 19 ; number of rows
.asm_189e5
	ld c, 20 ; number of cols
.asm_189e7
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .asm_189e7
	dec b
	push bc
	ld bc, SCRN_VX_B - 20 ; next row
	add hl, bc
	pop bc
	jr nz, .asm_189e5

	push de
	call StopTimerAndSwitchOnLCD
	call FadeIn
	pop de
	hlbgcoord 0, 31
	ld a, [hEngineFlags]
	res PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
.asm_18a09
	wait_vblank_a
	call Func_19098

	ld a, [wSCY]
	dec a
	ld [wSCY], a
	and $07
	jr nz, .asm_18a09
	ld a, $57
	cp d
	jr nz, .asm_18a33
	ld a, $86
	cp e
	jr nz, .asm_18a33
	jp .asm_18a65

.asm_18a33
	ld bc, wBGQueue
.asm_18a36
	ld a, $97
	cp h
	jr nz, .asm_18a3e
	hlbgcoord 0, 31
.asm_18a3e
	ld a, h
	ld [bc], a
	inc bc
	ld a, l
	ld [bc], a
	inc bc
	ld a, [de]
	ld [bc], a
	inc bc
	inc de
	inc hl
	ld a, $cb
	cp b
	jr nz, .asm_18a36
	ld a, $3c
	cp c
	jr nz, .asm_18a36
	xor a
	ld [bc], a
	ld bc, $34
	call HLMinusBC
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	jr .asm_18a09

.asm_18a65
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call FadeOut
	call ResetTimer
	ld a, SCENE_CREDITS
	call Func_21fb
	call Func_19098

	ld a, $08
	ld [wSCX], a
	xor a
	ld [wSCY], a
	hlbgcoord 0, 0, vBGMap1
	ld c, 4 * SCRN_VX_B
.asm_18a89
	ld a, $ff
	ld [hli], a
	dec c
	jr nz, .asm_18a89

	hlbgcoord 0, 0
	ld de, BG_19786
	ld b, 14 ; number of rows
.asm_18a97
	ld c, 21 ; number of cols
.asm_18a99
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .asm_18a99
	push bc
	ld bc, SCRN_VX_B - 21
	add hl, bc
	pop bc
	dec b
	jr nz, .asm_18a97
	ld a, d
	ld [wd059 + 0], a
	ld a, e
	ld [wd059 + 1], a

	ld hl, BG_19e86
	debgcoord 0, 0, vBGMap1
	ld c, 4 ; number of rows
.asm_18ab8
	ld b, 20 ; number of cols
.asm_18aba
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .asm_18aba
	push hl
	ld hl, SCRN_VX_B - $14
	add hl, de
	ld d, h
	ld e, l
	pop hl
	dec c
	jr nz, .asm_18ab8

	xor a
	ldh [rIF], a
	ld a, $6f
	ldh [rLYC], a
	ld hl, rIE
	set IEB_STAT, [hl]
	ld a, $90
	ld [wd05b], a
	call StopTimerAndSwitchOnLCD

	ld a, %01000000
	ld [wBGP], a
	ld a, %01000000
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, %10010000
	ld [wBGP], a
	ld a, %10000000
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, %11100001
	ld [wBGP], a
	ld a, %11010000
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, MUSIC_CREDITS
	call PlayMusic

	ld a, HIGH(vBGMap0 + $1f)
	ld [wBGPtr_d06b + 0], a
	ld a, LOW(vBGMap0 + $1f)
	ld [wBGPtr_d06b + 1], a
	ld a, HIGH(vBGMap1 + $80)
	ld [wCreditsBGMapPtr + 0], a
	ld a, LOW(vBGMap1 + $80)
	ld [wCreditsBGMapPtr + 1], a
	ld hl, CreditsText
	ld a, h
	ld [wCreditsTextPtr + 0], a
	ld a, l
	ld [wCreditsTextPtr + 1], a
	xor a
	ld [wKirbyXAcc], a
	ld [wKirbyScreenDeltaY], a
	ld [wd061], a
	ld [wKirbyXAcc], a ; unnecessary
	ld [wd065], a
	ld [wd067], a

	ld a, [hEngineFlags]
	res PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
.loop_credits
	wait_vblank_a
	call Func_19098

	ld a, [wd067]
	and a
	jp nz, .asm_18c5c
	ld a, [wd065]
	and a
	call nz, .PrintText
	ld a, [wKirbyXAcc]
	inc a
	ld [wKirbyXAcc], a
	cp 4
	jr c, .loop_credits
	xor a
	ld [wKirbyXAcc], a
	ld a, [wSCX]
	dec a
	ld [wSCX], a
	and $07
	call z, .Func_18bf6
	jr .loop_credits

.PrintText:
	ld a, [wKirbyScreenDeltaY]
	ld b, a
	ld a, 1
	sub b
	ld [wKirbyScreenDeltaY], a
	; wKirbyScreenDeltaY = 1 - wKirbyScreenDeltaY

	; queue 10 tiles to print from CreditsText
	ld hl, wBGQueue
	ld b, 10
.loop_queue_chars
	ld a, [wCreditsBGMapPtr + 0]
	ld [hli], a
	ld d, a
	ld a, [wCreditsBGMapPtr + 1]
	ld [hli], a
	ld e, a
	inc de
	ld a, d
	ld [wCreditsBGMapPtr + 0], a
	ld a, e
	ld [wCreditsBGMapPtr + 1], a
	ld a, [wCreditsTextPtr + 0]
	ld d, a
	ld a, [wCreditsTextPtr + 1]
	ld e, a
	ld a, [de]
	ld [hli], a
	inc de
	ld a, d
	ld [wCreditsTextPtr + 0], a
	ld a, e
	ld [wCreditsTextPtr + 1], a
	dec b
	jr nz, .loop_queue_chars
	ld a, [wd061]
	inc a
	cp $08
	jr nz, .asm_18bc9
	xor a
	ld [wd065], a
.asm_18bc9
	ld [wd061], a
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ld a, [wKirbyScreenDeltaY]
	and a
	ret nz
	ld a, [wCreditsBGMapPtr + 0]
	ld h, a
	ld a, [wCreditsBGMapPtr + 1]
	ld l, a
	ld bc, SCRN_VX_B - 2 * 10
	add hl, bc
	ld a, HIGH(vEnd)
	cp h
	jr nz, .got_bg_map_ptr
	hlbgcoord 0, 0, vBGMap1
.got_bg_map_ptr
	ld a, h
	ld [wCreditsBGMapPtr + 0], a
	ld a, l
	ld [wCreditsBGMapPtr + 1], a
	ret

.Func_18bf6:
	ld bc, wBGQueue
	ld a, [wBGPtr_d06b + 0]
	ld h, a
	ld a, [wBGPtr_d06b + 1]
	ld l, a
	ld a, [wd059 + 0]
	ld d, a
	ld a, [wd059 + 1]
	ld e, a
.asm_18c09
	ld a, $ff
	cp l
	jr nz, .asm_18c1e
	ld a, $97
	cp h
	jr nz, .asm_18c1e
	hlbgcoord 31, 0
	ld a, h
	ld [wBGPtr_d06b + 0], a
	ld a, l
	ld [wBGPtr_d06b + 1], a
.asm_18c1e
	ld a, h
	ld [bc], a
	inc bc
	ld a, l
	ld [bc], a
	inc bc
	ld a, [de]
	ld [bc], a
	inc bc
	inc de
	push bc
	ld bc, SCRN_VX_B
	add hl, bc
	pop bc
	ld a, HIGH(wQueuedBG014BGPtr)
	cp b
	jr nz, .asm_18c09
	ld a, LOW(wQueuedBG014BGPtr)
	cp c
	jr nz, .asm_18c09
	xor a
	ld [bc], a
	ld a, [hEngineFlags]
	set PROCESS_BG_QUEUE_F, a
	ld [hEngineFlags], a
	ld a, [wBGPtr_d06b + 0]
	ld h, a
	ld a, [wBGPtr_d06b + 1]
	ld l, a
	dec hl
	ld a, h
	ld [wBGPtr_d06b + 0], a
	ld a, l
	ld [wBGPtr_d06b + 1], a
	ld a, d
	ld [wd059 + 0], a
	ld a, e
	ld [wd059 + 1], a
	ret

.asm_18c5c
	ld a, %10010000
	ld [wBGP], a
	ld a, %11010000
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, %01000000
	ld [wBGP], a
	ld a, %10000000
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, %00000000
	ld [wBGP], a
	ld a, %1000000
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	call ResetTimer

	xor a
	ld [wBGP], a
	ld a, SCENE_08
	call Func_21fb
	call Func_19098

	ld hl, rIE
	res IEB_STAT, [hl]
	xor a
	ld [wSCX], a
	ld [wSCY], a

	ld hl, $437a
	debgcoord 0, 0
	ld c, $03
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 324
	ld hl, hVBlankFlags
.asm_18cb8
	set VBLANK_PENDING_F, [hl]
.asm_18cba
	bit VBLANK_PENDING_F, [hl]
	jr nz, .asm_18cba
	call Func_19098
	dec de
	ld a, d
	or e
	jr nz, .asm_18cb8
	call FadeOut
	call ResetTimer
	ld a, SCENE_09
	call Func_21fb
	call Func_19098

	ld hl, $441d
	debgcoord 0, 0
	ld c, $03
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn

	ld de, 400
	call .DoFrames

	ld de, 420
	ld hl, hVBlankFlags
.asm_18cf1
	set VBLANK_PENDING_F, [hl]
.asm_18cf3
	bit VBLANK_PENDING_F, [hl]
	jr nz, .asm_18cf3
	call Func_19098
	ld a, [hJoypadPressed]
	bit A_BUTTON_F, a
	jr nz, .asm_18d06
	dec de
	ld a, d
	or e
	jr nz, .asm_18cf1
.asm_18d06
	call FadeOut
	call ResetTimer
	call ClearAllObjects
	ld a, [wExtraGameEnabled]
	and a
	ld a, TRUE
	ld [wExtraGameEnabled], a
	jp z, .asm_19055

	ld a, MUSIC_GREEN_GREENS_INTRO
	call PlayMusic

	xor a
	ld [wStage], a
	call Func_18275
	ld a, SCENE_0C
	call Func_21fb
	call Func_19098

	ld hl, $4000
	ld de, vTiles2 tile $00
	ld c, $0d
	call FarDecompress
	ld hl, $45c0
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_0D
	call Func_21fb
	call Func_19098

	ld hl, $46fb
	ld de, vTiles2 tile $00
	ld c, $0d
	call FarDecompress
	ld hl, $4cb4
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_0E
	call Func_21fb
	call Func_19098

	ld hl, $4dc0
	ld de, vTiles2 tile $00
	ld c, $0d
	call FarDecompress
	ld hl, $535c
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 236
	call .DoFrames
	call FadeOut
	call ResetTimer

	ld a, CASTLE_LOLOLO
	ld [wStage], a

	call Func_18275
	ld a, SCENE_0F
	call Func_21fb
	call Func_19098

	ld hl, $543e
	ld de, vTiles2 tile $00
	ld c, $0d
	call FarDecompress
	ld hl, $5987
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_10
	call Func_21fb
	call Func_19098

	ld hl, $5a89
	ld de, vTiles2 tile $00
	ld c, $0d
	call FarDecompress
	ld hl, $5fd2
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer

	ld a, FLOAT_ISLANDS
	ld [wStage], a
	call Func_18275
	ld a, SCENE_11
	call Func_21fb
	call Func_19098

	ld hl, $6063
	ld de, vTiles2 tile $00
	ld c, $0d
	call FarDecompress
	ld hl, $6553
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_12
	call Func_21fb
	call Func_19098

	ld hl, $6658
	ld de, vTiles2 tile $00
	ld c, $0d
	call FarDecompress
	ld hl, $6b80
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer

	ld a, BUBBLY_CLOUDS
	ld [wStage], a
	call Func_18275
	ld a, SCENE_13
	call Func_21fb
	call Func_19098

	ld hl, $6c7c
	ld de, vTiles2 tile $00
	ld c, $0d
	call FarDecompress
	ld hl, $717d
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_14
	call Func_21fb
	call Func_19098

	ld hl, $729b
	ld de, vTiles2 tile $00
	ld c, $0d
	call FarDecompress
	ld hl, $779c
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	xor a
	ld [wStage], a
	call Func_18285
	ld a, SCENE_15
	call Func_21fb
	call Func_19098

	ld hl, $4000
	ld de, vTiles2 tile $00
	ld c, $0e
	call FarDecompress
	ld hl, $78cc
	debgcoord 0, 0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, CASTLE_LOLOLO
	ld [wStage], a
	call Func_18285
	ld a, SCENE_16
	call Func_21fb
	call Func_19098

	ld hl, $4582
	ld de, vTiles2 tile $00
	ld c, $0e
	call FarDecompress
	ld hl, $4ac6
	debgcoord 0, 0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, FLOAT_ISLANDS
	ld [wStage], a
	call Func_18285
	ld a, SCENE_17
	call Func_21fb
	call Func_19098

	ld hl, $4bf3
	ld de, vTiles2 tile $00
	ld c, $0e
	call FarDecompress
	ld hl, $511e
	debgcoord 0, 0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, BUBBLY_CLOUDS
	ld [wStage], a
	call Func_18285
	ld a, SCENE_18
	call Func_21fb
	call Func_19098

	ld hl, $5206
	ld de, vTiles2 tile $00
	ld c, $0e
	call FarDecompress
	ld hl, $5707
	debgcoord 0, 0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer

	ld hl, $6c49
	ld de, vTiles1 tile $00
	ld c, $02
	call FarDecompress

	ld a, SCENE_19
	call Func_21fb
	call Func_19098

	ld hl, $5820
	ld de, vTiles2 tile $00
	ld c, $0e
	call FarDecompress
	ld hl, $5be1
	debgcoord 0, 0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames

	ld de, 300
	ld hl, hVBlankFlags
.asm_19009
	set VBLANK_PENDING_F, [hl]
.asm_1900b
	bit VBLANK_PENDING_F, [hl]
	jr nz, .asm_1900b
	call Func_19098
	ld a, [hJoypadPressed]
	bit A_BUTTON_F, a
	jr nz, .asm_1901e
	dec de
	ld a, d
	or e
	jr nz, .asm_19009
.asm_1901e
	call FadeOut
	call ResetTimer

	ld a, MUSIC_NONE
	call PlayMusic

	ld a, SCENE_1A
	call Func_21fb
	call Func_19098

	ld hl, $5cbf
	ld de, vTiles0 tile $00
	ld c, $0e
	call FarDecompress
	ld hl, $6cce
	debgcoord 0, 0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
.asm_1904d
	ld de, 0 ; $ffff + 1 frames
	call .DoFrames
	jr .asm_1904d

.asm_19055
	ld a, MUSIC_NONE
	call PlayMusic

	ld a, SCENE_1B
	call Func_21fb
	call Func_19098

	ld hl, $6dd9
	ld de, vTiles0 tile $00
	ld c, $0e
	call FarDecompress
	ld hl, $7e4a
	debgcoord 0, 0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
.asm_1907e
	ld de, 0 ; $ffff + 1 frames
	call .DoFrames
	jr .asm_1907e

; input:
; - de = number of frames
.DoFrames:
	ld hl, hVBlankFlags
.asm_19089
	set VBLANK_PENDING_F, [hl]
.asm_1908b
	bit VBLANK_PENDING_F, [hl]
	jr nz, .asm_1908b
	call Func_19098
	dec de
	ld a, d
	or e
	jr nz, .asm_19089
	ret

Func_19098:
	push af
	push bc
	push de
	push hl
	ld a, [wd06b + 0]
	push af
	ld a, [wd06b + 1]
	push af
	xor a
	ld [wVirtualOAMSize], a
	call Func_2e9c
	call ClearSprites
	pop af
	ld [wd06b + 1], a
	pop af
	ld [wd06b + 0], a
	pop hl
	pop de
	pop bc
	pop af
	ret

Data_190bb:
	table_width 3
	db $06, $78, $35 ; GREEN_GREENS
	db $06, $78, $df ; CASTLE_LOLOLO
	db $06, $79, $5d ; FLOAT_ISLANDS
	db $06, $79, $f9 ; BUBBLY_CLOUDS
	db $06, $7a, $af ; MT_DEDEDE
	assert_table_length NUM_STAGES

StageTransistions:
	table_width 2
	dw .GreenGreens  ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede     ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 2
	dw .GreenGreens0 ; GREEN_GREENS_0
	dw .NoTransition ; GREEN_GREENS_1
	dw .NoTransition ; GREEN_GREENS_2
	dw .NoTransition ; GREEN_GREENS_3
	dw .GreenGreens4 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 2
	dw .NoTransition ; CASTLE_LOLOLO_00
	dw .NoTransition ; CASTLE_LOLOLO_01
	dw .NoTransition ; CASTLE_LOLOLO_02
	dw .NoTransition ; CASTLE_LOLOLO_03
	dw .NoTransition ; CASTLE_LOLOLO_04
	dw .NoTransition ; CASTLE_LOLOLO_05
	dw .NoTransition ; CASTLE_LOLOLO_06
	dw .CastleLololo07 ; CASTLE_LOLOLO_07
	dw .CastleLololo08 ; CASTLE_LOLOLO_08
	dw .NoTransition ; CASTLE_LOLOLO_09
	dw .NoTransition ; CASTLE_LOLOLO_10
	dw .NoTransition ; CASTLE_LOLOLO_11
	dw .NoTransition ; CASTLE_LOLOLO_12
	dw .NoTransition ; CASTLE_LOLOLO_13
	dw .CastleLololo14 ; CASTLE_LOLOLO_14
	dw .CastleLololo15 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 2
	dw .NoTransition ; FLOAT_ISLANDS_0
	dw .NoTransition ; FLOAT_ISLANDS_1
	dw .NoTransition ; FLOAT_ISLANDS_2
	dw .NoTransition ; FLOAT_ISLANDS_3
	dw .NoTransition ; FLOAT_ISLANDS_4
	dw .FloatIslands5 ; FLOAT_ISLANDS_5
	dw .NoTransition ; FLOAT_ISLANDS_6
	dw .FloatIslands6 ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 2
	dw .NoTransition ; BUBBLY_CLOUDS_0
	dw .NoTransition ; BUBBLY_CLOUDS_1
	dw .NoTransition ; BUBBLY_CLOUDS_2
	dw .NoTransition ; BUBBLY_CLOUDS_3
	dw .BubbleClouds4 ; BUBBLY_CLOUDS_4
	dw .NoTransition ; BUBBLY_CLOUDS_5
	dw .NoTransition ; BUBBLY_CLOUDS_6
	dw .NoTransition ; BUBBLY_CLOUDS_7
	dw .NoTransition ; BUBBLY_CLOUDS_8
	dw .BubbleClouds9 ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 2
	dw .MtDedede0 ; MT_DEDEDE_0
	dw .NoTransition ; MT_DEDEDE_1
	dw .NoTransition ; MT_DEDEDE_2
	dw .NoTransition ; MT_DEDEDE_3
	dw .NoTransition ; MT_DEDEDE_4
	dw .MtDedede5 ; MT_DEDEDE_5
	dw .MtDedede6 ; MT_DEDEDE_6
	dw .MtDedede7 ; MT_DEDEDE_7
	dw .MtDedede8 ; MT_DEDEDE_8
	dw .MtDedede9 ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

.NoTransition:
	trans_end 1

.GreenGreens0:
	trans_wait 60
	trans_move_kirby_1  $80, 10
	trans_move_kirby_1 $100, 10
	trans_move_kirby_1 $200, 10
	trans_move_kirby_1 $300, 11
	trans_move_kirby_1 $400, 86
	trans_move_kirby_1 $300, 11
	trans_move_kirby_1 $200, 10
	trans_move_kirby_1 $100, 10
	trans_move_kirby_1  $80, 10
	trans_wait 120
	trans_change_area GREEN_GREENS_2, $01, $01, 1
	trans_set_motion_script MotionScript_1000b, 1
	trans_wait 255
	trans_end 1

.GreenGreens4:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.CastleLololo07:
	trans_wait 60
	trans_move_kirby_1  $80, 10
	trans_move_kirby_1 $100, 10
	trans_move_kirby_1 $200, 10
	trans_move_kirby_1 $300, 11
	trans_move_kirby_1 $400, 86
	trans_move_kirby_1 $300, 11
	trans_move_kirby_1 $200, 10
	trans_move_kirby_1 $100, 10
	trans_move_kirby_1  $80, 10
	trans_wait 30
	trans_change_area CASTLE_LOLOLO_08, $01, $01, 1
	trans_set_motion_script MotionScript_10014, 1
	trans_wait 240
	trans_end 1

.CastleLololo08:
	trans_change_area CASTLE_LOLOLO_09, $01, $09, 1
	trans_set_motion_script MotionScript_10276, 1
	trans_wait 30
	trans_end 1

.CastleLololo14:
	trans_change_area CASTLE_LOLOLO_15, $01, $01, 1
	trans_end 1

.CastleLololo15:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.FloatIslands5:
	trans_wait 160
	trans_move_kirby_2 $100, 10
	trans_move_kirby_2 $200, 10
	trans_move_kirby_2 $300, 10
	trans_move_kirby_2 $400, 34
	trans_move_kirby_2 $300, 10
	trans_move_kirby_2 $200, 10
	trans_move_kirby_2 $100, 10
	trans_wait 140
	trans_change_area FLOAT_ISLANDS_6, $01, $01, 1
	trans_set_motion_script MotionScript_1002f, 1
	trans_wait 200
	trans_change_area FLOAT_ISLANDS_7, $01, $01, 1
	trans_set_motion_script MotionScript_10056, 1
	trans_wait 255
	trans_end 1

.FloatIslands6:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.BubbleClouds4:
	trans_wait 100
	trans_move_kirby_2  $80, 10
	trans_move_kirby_2 $100, 10
	trans_move_kirby_2 $200, 10
	trans_move_kirby_2 $300, 11
	trans_move_kirby_2 $400, 44
	trans_wait 120
	trans_change_area BUBBLY_CLOUDS_5, $01, $01, 1
	trans_set_motion_script MotionScript_100bf, 1
	trans_wait 255
	trans_end 1

.BubbleClouds9:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.MtDedede0:
	trans_move_kirby_1 $1c0, 240
	trans_move_kirby_1 $1c0, 188
	trans_move_kirby_1 $180,  10
	trans_move_kirby_1 $140,  10
	trans_move_kirby_1 $100,  10
	trans_move_kirby_1 $0c0,  10
	trans_move_kirby_1  $80,  10
	trans_move_kirby_1  $40,  10
	trans_move_kirby_1   $0,  10
	trans_wait 50
	trans_end 1

.MtDedede6:
.MtDedede7:
.MtDedede8:
.MtDedede9:
	trans_change_area MT_DEDEDE_0, $33, $01, 1
	trans_set_motion_script MotionScript_1011d, 1
	trans_wait 240
	trans_end 1

.MtDedede5:
	trans_epilogue 1

Data_1926a:
	table_width 2
	dw .GreenGreens ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 2
	dw AnimScript_2004b ; GREEN_GREENS_0
	dw NULL ; GREEN_GREENS_1
	dw NULL ; GREEN_GREENS_2
	dw NULL ; GREEN_GREENS_3
	dw AnimScript_201b7 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 2
	dw NULL ; CASTLE_LOLOLO_00
	dw NULL ; CASTLE_LOLOLO_01
	dw NULL ; CASTLE_LOLOLO_02
	dw NULL ; CASTLE_LOLOLO_03
	dw NULL ; CASTLE_LOLOLO_04
	dw NULL ; CASTLE_LOLOLO_05
	dw NULL ; CASTLE_LOLOLO_06
	dw AnimScript_20073 ; CASTLE_LOLOLO_07
	dw AnimScript_20000 ; CASTLE_LOLOLO_08
	dw AnimScript_20000 ; CASTLE_LOLOLO_09
	dw NULL ; CASTLE_LOLOLO_10
	dw NULL ; CASTLE_LOLOLO_11
	dw NULL ; CASTLE_LOLOLO_12
	dw NULL ; CASTLE_LOLOLO_13
	dw AnimScript_20000 ; CASTLE_LOLOLO_14
	dw AnimScript_201b7 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 2
	dw NULL ; FLOAT_ISLANDS_0
	dw NULL ; FLOAT_ISLANDS_1
	dw NULL ; FLOAT_ISLANDS_2
	dw NULL ; FLOAT_ISLANDS_3
	dw NULL ; FLOAT_ISLANDS_4
	dw AnimScript_200a3 ; FLOAT_ISLANDS_5
	dw NULL ; FLOAT_ISLANDS_6
	dw AnimScript_201b7 ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 2
	dw NULL ; BUBBLY_CLOUDS_0
	dw NULL ; BUBBLY_CLOUDS_1
	dw NULL ; BUBBLY_CLOUDS_2
	dw NULL ; BUBBLY_CLOUDS_3
	dw AnimScript_200b4 ; BUBBLY_CLOUDS_4
	dw NULL ; BUBBLY_CLOUDS_5
	dw NULL ; BUBBLY_CLOUDS_6
	dw NULL ; BUBBLY_CLOUDS_7
	dw NULL ; BUBBLY_CLOUDS_8
	dw AnimScript_201b7 ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 2
	dw AnimScript_20206 ; MT_DEDEDE_0
	dw NULL ; MT_DEDEDE_1
	dw NULL ; MT_DEDEDE_2
	dw NULL ; MT_DEDEDE_3
	dw NULL ; MT_DEDEDE_4
	dw AnimScript_2004a ; MT_DEDEDE_5
	dw AnimScript_2004a ; MT_DEDEDE_6
	dw AnimScript_2004a ; MT_DEDEDE_7
	dw AnimScript_2004a ; MT_DEDEDE_8
	dw AnimScript_2004a ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

BG_192d6:
INCBIN "data/bg_192d6.bin"
; 0x19452

SECTION "Bank 6@5786", ROMX[$5786], BANK[$6]

BG_19786:
INCBIN "data/bg_19786.bin"
; 0x198ac

SECTION "Bank 6@5e86", ROMX[$5e86], BANK[$6]

BG_19e86:
INCBIN "data/bg_19e86.bin"

INCLUDE "data/credits.asm"

INCLUDE "engine/configuration.asm"
