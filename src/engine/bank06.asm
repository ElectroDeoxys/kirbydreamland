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
	ld hl, wFoodPowerUpCounter
	ld [hli], a ; wFoodPowerUpCounter
	ld [hli], a ;
	ld [hli], a ; wInvincibilityCounter
	ld [hl], a  ;
	ld [wPowerUpAttack], a

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
	ld a, 0.082
	ld [wKirbyYAcceleration], a
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
	ld [wCreditsSCXDecrementCounter], a
	ld [wd056], a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a

	ld a, 0.125
	ld [wKirbyXAcceleration], a
	ld a, 0.055
	ld [wKirbyXDeceleration], a
	ld a, HIGH(1.2)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(1.2)
	ld [wKirbyMaxXVel + 1], a

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

	ld a, [wStage]
	ld e, a
	ld d, $00
	ld hl, StageMusics
	add hl, de
	ld a, [hl]
	ld [wLevelMusic], a

	ld bc, $0
	ld a, MT_DEDEDE
	cp e ; wStage
	jr nz, .asm_1821e
	ld hl, hKirbyFlags6
	bit KIRBY6F_UNK7_F, [hl]
	jr z, .asm_1821e
	ld a, $33
	ld [wLevelXSection], a
	ld a, $01
	ld [wLevelYSection], a
	ld a, $48
	ld [wKirbyScreenX], a
	ld a, $70
	ld [wKirbyScreenY], a
	ld bc, $32
.asm_1821e
	ld hl, wLevelBlockMap
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
	jr nz, .no_transition
	ld hl, hKirbyFlags5
	res KIRBY5F_TRIGGER_TRANSITION_F, [hl]
	ld a, [hKirbyFlags6]
	bit KIRBY6F_UNK7_F, a
	jr nz, .no_transition
	set KIRBY5F_TRIGGER_TRANSITION_F, [hl]
.no_transition
	ld hl, hKirbyFlags6
	res KIRBY6F_UNK7_F, [hl]
	ld a, [hKirbyFlags6]
	bit KIRBY6F_UNK7_F, a
	jr z, .skip_music ; z is always set here

	; unreachable
	ld a, [wStage]
	cp MT_DEDEDE
	jr z, .skip_music
	ld a, [wLevelMusic]
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
	ld hl, Gfx_8000
	ld de, vTiles0 tile $00
	ld c, BANK(Gfx_8000)
	call FarDecompress
	ld hl, Gfx_8855
	ld de, vTiles2 tile $67
	ld c, BANK(Gfx_8855)
	call FarDecompress
	jr .asm_182b9
.extra_game
	ld hl, Gfx_2888d
	ld de, vTiles0 tile $00
	ld c, BANK(Gfx_2888d)
	call FarDecompress
	ld hl, Gfx_290f3
	ld de, vTiles2 tile $67
	ld c, BANK(Gfx_290f3)
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
	ld [wd06b], a
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
	ld a, [wd06b]
	ld c, a
	call FarDecompress
	ret

StageIntro:
	push hl
	xor a
	ld [wVirtualOAMSize], a
	ld [wSCX], a
	ld [wSCY], a
	inc a ; $1
	ld [wLevelXSection], a
	ld [wLevelYSection], a
	ld hl, hKirbyFlags5
	set KIRBY5F_STAGE_INTRO_F, [hl]
	call ClearSprites
	call ResetTimer

	ld hl, Gfx_8000
	ld de, vTiles0 tile $00
	ld c, BANK(Gfx_8000)
	call FarDecompress
	ld hl, Gfx_8855
	ld de, vTiles2 tile $67
	ld c, BANK(Gfx_8855)
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
	ld [wd06b], a
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
	ld a, [wd06b]
	ld c, a
	call FarDecompress

	ld a, [wStage]
	cp MT_DEDEDE
	jr z, .asm_1835b
	ld hl, Gfx_b7e9
	ld de, vTiles1 tile $60
	ld c, BANK(Gfx_b7e9)
	call FarDecompress
	ld hl, Gfx_dcdd
	ld de, vTiles1 tile $00
	ld c, BANK(Gfx_dcdd)
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
	ld [wLevelMusic], a
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
	res KIRBY5F_STAGE_INTRO_F, [hl]
	ret

StageIntroDurations:
	table_width 2
	dw 320 ; GREEN_GREENS
	dw 343 ; CASTLE_LOLOLO
	dw 400 ; FLOAT_ISLANDS
	dw 390 ; BUBBLY_CLOUDS
	dw 712 ; MT_DEDEDE
	assert_table_length NUM_STAGES

HandleStageTransition::
	ld a, [wd041]
	ld [wd042], a
	call .Func_1844f
	ld hl, hPalFadeFlags
	res SCROLL_LOCKED_F, [hl]

	ld a, [wStage]
	add a ; *2
	ld c, a
	ld b, $00
	ld hl, StageTransitions
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
	ld a, 1
	ld [wStageTransitionCounter], a

.asm_183ec
	wait_vblank_a

	push hl
	call Func_319d
	call Func_19098
	pop hl

	; decrement counter
	ld a, [wStageTransitionCounter]
	dec a
	ld [wStageTransitionCounter], a
	jr nz, .wait ; still waiting

	; counter reached 0, do next command
	ld a, [hli]
	ld [wStageTransitionCounter], a
	ld a, [hli]
	ld [wStageTransitionCmd], a
	bit 7, a
	jp nz, EndStageTransition
	bit 0, a
	call nz, .SetKirbyXVel
	bit 1, a
	call nz, .SetKirbyXVel
	bit 2, a
	call nz, .SetArea
	bit 4, a
	call nz, .SetKirbyMotionScript
	bit 5, a
	jp nz, Epilogue
	bit 3, a
	jr z, .wait
; next stage
	ld hl, wStage
	inc [hl]
	call StartStage
	jp Func_3d32
.wait
	ld a, [wStageTransitionCmd]
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

.SetKirbyMotionScript:
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
	ld [wLevelXSection], a
	ld a, [hli]
	ld [wLevelYSection], a
	push hl
	call LoadArea
	ld a, [wLevelYSection]
	dec a
	ld b, a
	ld a, [wLevelWidth]
	ld e, a
	call FixedPointMultiply
	ld a, [wLevelXSection]
	dec a
	ld l, a
	ld h, $00
	add hl, bc
	ld b, h
	ld c, l
	ld hl, wLevelBlockMap
	add hl, bc
	call Func_1964
	ld a, $ff
	ld [wd096], a
	call .Func_1844f
	xor a
	call Func_21fb
	call ClearSprites
	call UpdateObjects
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
	ld [wKirbyMaxXVel + 0], a
	ld [wKirbyMaxXVel + 1], a
	pop af
	ret

.Func_18506:
	push af
	push hl
	ld a, [wKirbyXVel + 1]
	ld e, a
	ld a, [wKirbyMaxXVel + 1]
	add e
	ld [wKirbyMaxXVel + 1], a
	ld a, [wKirbyXVel + 0]
	ld e, a
	ld a, [wKirbyMaxXVel + 0]
	adc e
	ld [wd063], a
	xor a
	ld [wKirbyMaxXVel + 0], a
	call Func_1062
	pop hl
	pop af
	ret

.Func_18528:
	push hl
	ld a, [wKirbyXVel + 1]
	ld e, a
	ld a, [wKirbyMaxXVel + 1]
	add e
	ld [wKirbyMaxXVel + 1], a
	ld a, [wKirbyXVel + 0]
	ld e, a
	ld a, [wKirbyMaxXVel + 0]
	adc e
	ld b, a
	ld [wd067], a
	xor a
	ld [wKirbyMaxXVel + 0], a
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
	ld a, [wLevelYSection]
	dec a
	jr z, .asm_1856e
	dec a
.asm_1856e
	ld e, a
	ld a, [wLevelWidth]
	ld b, a
	call FixedPointMultiply
	ld hl, wLevelBlockMap
	add hl, bc
	ld b, $00
	ld a, [wLevelXSection]
	dec a
	ld c, a
	add hl, bc
	call Func_12b4
	ld hl, wLevelYSection
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
	ld a, SFX_PAUSE_ON
	call PlaySFX

	xor a
	ld [wPauseCounter + 0], a
	ld [wPauseCounter + 1], a
	ld [hJoypadPressed], a

	ld a, [hKirbyFlags4]
	set KIRBY4F_PAUSED_F, a
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
	call UpdateObjects
	call Func_139b
	call ClearSprites
	ld a, [hVBlankFlags]
	set VBLANK_PENDING_F, a
	ld [hVBlankFlags], a
	ld a, [hJoypadPressed]
	bit START_F, a
	jr z, .loop

	; player pressed Start
	ld a, SFX_PAUSE_OFF
	call PlaySFX
	ld a, [hKirbyFlags4]
	and $ff ^ (KIRBY4F_UNK0 | KIRBY4F_PAUSED)
	ld [hKirbyFlags4], a
	ld hl, hEngineFlags
	res PAUSE_ANIMATION_F, [hl]
	ld hl, hKirbyFlags5
	res KIRBY5F_UNK0_F, [hl]
	ld a, 30
	call WaitFrames
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
	ld hl, Gfx_c1c7
	ld de, vTiles1 tile $60
	ld c, BANK(Gfx_c1c7)
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
	ld [wLevelXSection], a
	ld [wLevelYSection], a

	ld a, SCENE_CONTINUE
	call Func_21fb
	ld a, $ff
	ld [wd096], a
	call ClearSprites

	ld hl, Gfx_b7e9
	ld de, vTiles1 tile $60
	ld c, BANK(Gfx_b7e9)
	call FarDecompress
	ld hl, Gfx_dcdd
	ld de, vTiles1 tile $00
	ld c, BANK(Gfx_dcdd)
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
	ld a, [wLevelMusic]
	call PlayMusic
	jp StageLoop_UpdateHUD

.reset_game
	ld a, 60
	call DoFrames
	call FadeOut
	call ResetTimer
	jp Reset

Epilogue:
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
	inc a ; $1
	ld [wLevelXSection], a
	ld [wLevelYSection], a
	ld a, SCENE_EPILOGUE_DEDEDE_LAUNCH
	call Func_21fb
	call Func_19098
	call HideWindow

	ld a, HUD_UPDATE_HP
	ld [hHUDFlags], a

	xor a
	ld [wSCX], a
	ld [wSCY], a

	call ResetTimer

	ld hl, Gfx_c1c7
	ld de, vTiles1 tile $60
	ld c, BANK(Gfx_c1c7)
	call FarDecompress
	ld hl, Gfx_cfcf
	ld de, vTiles0 tile $00
	ld c, BANK(Gfx_cfcf)
	call FarDecompress
	ld hl, Gfx_d894
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_d894)
	call FarDecompress
	ld hl, BG_c2c8
	debgcoord 0, 0
	ld c, BANK(BG_c2c8)
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

	ld hl, Gfx_8000
	ld de, vTiles0 tile $00
	ld c, BANK(Gfx_8000)
	call FarDecompress
	ld hl, Gfx_8855
	ld de, vTiles2 tile $67
	ld c, BANK(Gfx_8855)
	call FarDecompress
	ld hl, Gfx_ac49
	ld de, vTiles1 tile $00
	ld c, BANK(Gfx_ac49)
	call FarDecompress
	ld hl, Data_1b77c
	ld de, wBlockTileMap
	ld c, BANK(Data_1b77c)
	call FarDecompress
	ld hl, Data_1b1e2
	ld de, wLevelBlockMap
	ld c, BANK(Data_1b1e2)
	call FarDecompress

	ld a, SCENE_EPILOGUE_KIRBY_DANCE
	call Func_21fb
	call Func_19098
	ld a, 18
	ld [wLevelWidth], a
	ld a, 8
	ld [wLevelHeight], a
	ld hl, wLevelBlockMap + $4
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
	ld a, SCENE_EPILOGUE_KIRBY_INFLATE
	call Func_21fb
	call Func_19098
	call ResetTimer

	ld hl, Gfx_c1c7
	ld de, vTiles1 tile $60
	ld c, BANK(Gfx_c1c7)
	call FarDecompress
	ld hl, Gfx_cfcf
	ld de, vTiles0 tile $00
	ld c, BANK(Gfx_cfcf)
	call FarDecompress
	ld hl, Gfx_d894
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_d894)
	call FarDecompress
	ld hl, BG_c2c8
	debgcoord 0, 0
	ld c, BANK(BG_c2c8)
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
	ld a, SCENE_EPILOGUE_FALLING_FOOD
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
	ld [wCreditsTextScroll], a
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
	ld [wCreditsSCXDecrementCounter], a
	ld [wKirbyScreenDeltaY], a
	ld [wd061], a
	ld [wCreditsSCXDecrementCounter], a ; unnecessary
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
	ld a, [wCreditsSCXDecrementCounter]
	inc a
	ld [wCreditsSCXDecrementCounter], a
	cp 4
	jr c, .loop_credits
	xor a
	ld [wCreditsSCXDecrementCounter], a
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
	ld a, SCENE_EPILOGUE_KIRBY_DEFLATE
	call Func_21fb
	call Func_19098

	ld hl, rIE
	res IEB_STAT, [hl]
	xor a
	ld [wSCX], a
	ld [wSCY], a

	ld hl, BG_c37a
	debgcoord 0, 0
	ld c, BANK(BG_c37a)
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
	ld a, SCENE_EPILOGUE_BYE_BYE
	call Func_21fb
	call Func_19098

	ld hl, BG_c41d
	debgcoord 0, 0
	ld c, BANK(BG_c41d)
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
	ld a, SCENE_GREEN_GREENS_ENEMIES_1
	call Func_21fb
	call Func_19098

	ld hl, Gfx_34000
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_34000)
	call FarDecompress
	ld hl, Gfx_345c0
	debgcoord 0, 0
	ld c, BANK(Gfx_345c0)
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_GREEN_GREENS_ENEMIES_2
	call Func_21fb
	call Func_19098

	ld hl, Gfx_346fb
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_346fb)
	call FarDecompress
	ld hl, BG_34cb4
	debgcoord 0, 0
	ld c, BANK(BG_34cb4)
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_GREEN_GREENS_ENEMIES_3
	call Func_21fb
	call Func_19098

	ld hl, Gfx_34dc0
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_34dc0)
	call FarDecompress
	ld hl, BG_3535c
	debgcoord 0, 0
	ld c, BANK(BG_3535c)
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
	ld a, SCENE_CASTLE_LOLOLO_ENEMIES_1
	call Func_21fb
	call Func_19098

	ld hl, Gfx_3543e
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_3543e)
	call FarDecompress
	ld hl, BG_35987
	debgcoord 0, 0
	ld c, BANK(BG_35987)
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_CASTLE_LOLOLO_ENEMIES_2
	call Func_21fb
	call Func_19098

	ld hl, Gfx_35a89
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_35a89)
	call FarDecompress
	ld hl, BG_35fd2
	debgcoord 0, 0
	ld c, BANK(BG_35fd2)
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
	ld a, SCENE_FLOAT_ISLANDS_ENEMIES_1
	call Func_21fb
	call Func_19098

	ld hl, Gfx_36063
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_36063)
	call FarDecompress
	ld hl, BG_36553
	debgcoord 0, 0
	ld c, BANK(BG_36553)
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_FLOAT_ISLANDS_ENEMIES_2
	call Func_21fb
	call Func_19098

	ld hl, Gfx_36658
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_36658)
	call FarDecompress
	ld hl, BG_36b80
	debgcoord 0, 0
	ld c, BANK(BG_36b80)
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
	ld a, SCENE_BUBBLE_CLOUDS_ENEMIES_1
	call Func_21fb
	call Func_19098

	ld hl, Gfx_36c7c
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_36c7c)
	call FarDecompress
	ld hl, BG_3717d
	debgcoord 0, 0
	ld c, BANK(BG_3717d)
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer
	ld a, SCENE_BUBBLE_CLOUDS_ENEMIES_2
	call Func_21fb
	call Func_19098

	ld hl, Gfx_3729b
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_3729b)
	call FarDecompress
	ld hl, BG_3779c
	debgcoord 0, 0
	ld c, BANK(BG_3779c)
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
	ld a, SCENE_GREEN_GREENS_ENEMIES_4
	call Func_21fb
	call Func_19098

	ld hl, Gfx_38000
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_38000)
	call FarDecompress
	ld hl, BG_378cc
	debgcoord 0, 0
	ld c, BANK(BG_378cc)
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
	ld a, SCENE_CASTLE_LOLOLO_ENEMIES_3
	call Func_21fb
	call Func_19098

	ld hl, Gfx_38582
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_38582)
	call FarDecompress
	ld hl, BG_38ac6
	debgcoord 0, 0
	ld c, BANK(BG_38ac6)
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
	ld a, SCENE_FLOAT_ISLANDS_ENEMIES_3
	call Func_21fb
	call Func_19098

	ld hl, Gfx_38bf3
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_38bf3)
	call FarDecompress
	ld hl, BG_3911e
	debgcoord 0, 0
	ld c, BANK(BG_3911e)
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
	ld a, SCENE_BUBBLE_CLOUDS_ENEMIES_3
	call Func_21fb
	call Func_19098

	ld hl, Gfx_39206
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_39206)
	call FarDecompress
	ld hl, BG_39707
	debgcoord 0, 0
	ld c, BANK(BG_39707)
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut
	call ResetTimer

	ld hl, Gfx_ac49
	ld de, vTiles1 tile $00
	ld c, BANK(Gfx_ac49)
	call FarDecompress

	ld a, SCENE_KING_DEDEDE
	call Func_21fb
	call Func_19098

	ld hl, Gfx_39820
	ld de, vTiles2 tile $00
	ld c, BANK(Gfx_39820)
	call FarDecompress
	ld hl, BG_39be1
	debgcoord 0, 0
	ld c, BANK(BG_39be1)
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

	ld a, SCENE_CONFIG_MODE_UNLOCK
	call Func_21fb
	call Func_19098

	ld hl, Gfx_39cbf
	ld de, vTiles0 tile $00
	ld c, BANK(Gfx_39cbf)
	call FarDecompress
	ld hl, BG_3acce
	debgcoord 0, 0
	ld c, BANK(BG_3acce)
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

	ld a, SCENE_EXTRA_GAME_UNLOCK
	call Func_21fb
	call Func_19098

	ld hl, Gfx_3add9
	ld de, vTiles0 tile $00
	ld c, BANK(Gfx_3add9)
	call FarDecompress
	ld hl, BG_3be4a
	debgcoord 0, 0
	ld c, BANK(BG_3be4a)
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
	ld a, [wd06b]
	push af
	ld a, [wd06c]
	push af
	xor a
	ld [wVirtualOAMSize], a
	call UpdateObjects
	call ClearSprites
	pop af
	ld [wd06c], a
	pop af
	ld [wd06b], a
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

StageTransitions:
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
	trans_move_kirby_1 0.5, 10
	trans_move_kirby_1 1.0, 10
	trans_move_kirby_1 2.0, 10
	trans_move_kirby_1 3.0, 11
	trans_move_kirby_1 4.0, 86
	trans_move_kirby_1 3.0, 11
	trans_move_kirby_1 2.0, 10
	trans_move_kirby_1 1.0, 10
	trans_move_kirby_1 0.5, 10
	trans_wait 120
	trans_change_area GREEN_GREENS_2, 1, 1, 1
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
	trans_move_kirby_1 0.5, 10
	trans_move_kirby_1 1.0, 10
	trans_move_kirby_1 2.0, 10
	trans_move_kirby_1 3.0, 11
	trans_move_kirby_1 4.0, 86
	trans_move_kirby_1 3.0, 11
	trans_move_kirby_1 2.0, 10
	trans_move_kirby_1 1.0, 10
	trans_move_kirby_1 0.5, 10
	trans_wait 30
	trans_change_area CASTLE_LOLOLO_08, 1, 1, 1
	trans_set_motion_script MotionScript_10014, 1
	trans_wait 240
	trans_end 1

.CastleLololo08:
	trans_change_area CASTLE_LOLOLO_09, 1, 9, 1
	trans_set_motion_script MotionScript_10276, 1
	trans_wait 30
	trans_end 1

.CastleLololo14:
	trans_change_area CASTLE_LOLOLO_15, 1, 1, 1
	trans_end 1

.CastleLololo15:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.FloatIslands5:
	trans_wait 160
	trans_move_kirby_2 1.0, 10
	trans_move_kirby_2 2.0, 10
	trans_move_kirby_2 3.0, 10
	trans_move_kirby_2 4.0, 34
	trans_move_kirby_2 3.0, 10
	trans_move_kirby_2 2.0, 10
	trans_move_kirby_2 1.0, 10
	trans_wait 140
	trans_change_area FLOAT_ISLANDS_6, 1, 1, 1
	trans_set_motion_script MotionScript_1002f, 1
	trans_wait 200
	trans_change_area FLOAT_ISLANDS_7, 1, 1, 1
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
	trans_move_kirby_2 0.5, 10
	trans_move_kirby_2 1.0, 10
	trans_move_kirby_2 2.0, 10
	trans_move_kirby_2 3.0, 11
	trans_move_kirby_2 4.0, 44
	trans_wait 120
	trans_change_area BUBBLY_CLOUDS_5, 1, 1, 1
	trans_set_motion_script MotionScript_100bf, 1
	trans_wait 255
	trans_end 1

.BubbleClouds9:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.MtDedede0:
	trans_move_kirby_1 1.75, 240
	trans_move_kirby_1 1.75, 188
	trans_move_kirby_1 1.50,  10
	trans_move_kirby_1 1.25,  10
	trans_move_kirby_1 1.00,  10
	trans_move_kirby_1 0.75,  10
	trans_move_kirby_1 0.50,  10
	trans_move_kirby_1 0.25,  10
	trans_move_kirby_1   $0,  10
	trans_wait 50
	trans_end 1

.MtDedede6:
.MtDedede7:
.MtDedede8:
.MtDedede9:
	trans_change_area MT_DEDEDE_0, 51, 1, 1
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

BG_192d6: INCBIN "data/bg_192d6.bin"
; 0x19452

SECTION "Bank 6@5786", ROMX[$5786], BANK[$6]

BG_19786: INCBIN "data/bg_19786.bin"
; 0x198ac

SECTION "Bank 6@5e86", ROMX[$5e86], BANK[$6]

BG_19e86: INCBIN "data/bg_19e86.bin"

INCLUDE "data/credits.asm"

INCLUDE "engine/configuration.asm"

SECTION "Bank 6@6800", ROMX[$6800], BANK[$6]

Data_1a800:: INCBIN "data/data_1a800.bin.lz"
Data_1a9d7:: INCBIN "data/data_1a9d7.bin.lz"
Data_1ab94:: INCBIN "data/data_1ab94.bin.lz"
Data_1ace8:: INCBIN "data/data_1ace8.bin.lz"
Data_1ae6d:: INCBIN "data/data_1ae6d.bin.lz"
Data_1b12d:: INCBIN "data/data_1b12d.bin.lz"
Data_1b16e:: INCBIN "data/data_1b16e.bin.lz"
Data_1b1e2:: INCBIN "data/data_1b1e2.bin.lz"
Data_1b225:: INCBIN "data/data_1b225.bin.lz"
Data_1b39c:: INCBIN "data/data_1b39c.bin.lz"
Data_1b497:: INCBIN "data/data_1b497.bin.lz"
Data_1b653:: INCBIN "data/data_1b653.bin.lz"
Data_1b77c:: INCBIN "data/data_1b77c.bin.lz"

SECTION "Bank 6@7b0d", ROMX[$7b0d], BANK[$6]

Gfx_1bb0d: INCBIN "gfx/gfx_1bb0d.2bpp.lz"
