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
	call LoadLevelGfx

	ld d, $00 ; unused

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
