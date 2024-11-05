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
	ld a, FADE_WHITE | FADE_3 | FADE_OUT | FADE_ON | 0
	jr .got_fade_config
.black
	ld a, FADE_BLACK | FADE_3 | FADE_OUT | FADE_ON | 0
.got_fade_config
	ld [hPalFadeFlags], a
	push hl
	xor a
	ld [hVBlankFlags], a
	ld [hff8d], a

	call FadeOut
	ld a, SFX_NONE
	call PlaySFX
	ld a, MUSIC_NONE
	call PlayMusic
	pop hl

	ld a, [hff95]
	bit 7, a
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

	ld a, HUD_UPDATE_LABEL | HUD_UPDATE_LIVES | HUD_UPDATE_SCORE_DIGITS
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
	ld [wSCX ], a
	ld [wSCY], a
	ld [wd054], a
	ld [wd056], a
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
	ld hl, hff95
	bit 7, [hl]
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
	table_width 1, StageMusics
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
	inc a
	ld [wd051], a
	ld [wd052], a
	ld hl, hff94
	set 1, [hl]
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
	set VBLANK_6_F, [hl]
.asm_1839b
	halt
	bit VBLANK_6_F, [hl]
	jr nz, .asm_1839b
	call Func_19098
	ld a, [hJoypadPressed]
	bit START_F, a
	jr nz, .start_btn
	dec de
	ld a, d
	or e
	jr nz, .loop

.start_btn
	ld hl, hff94
	res 1, [hl]
	ret

StageIntroDurations:
	table_width 2, StageIntroDurations
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
	res FADE_4_F, [hl]

	ld a, [wStage]
	add a ; *2
	ld c, a
	ld b, $00
	ld hl, Data_190ca
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
	ld a, [hVBlankFlags]
	set 6, a
	ld [hVBlankFlags], a
.asm_183f4
	ld a, [hVBlankFlags]
	bit 6, a
	jr nz, .asm_183f4

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
	call nz, .Func_184f4
	bit 1, a
	call nz, .Func_184f4
	bit 2, a
	call nz, .Func_18485
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
	ld de, GfxScript_157a
	ld bc, OBJECT_SLOT_00
	call Func_21e6
	ret

.Func_18473:
	push af
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push hl
	ld hl, $410c
	ld bc, OBJECT_SLOT_00
	call Func_21e6
	pop hl
	pop af
	ret

.Func_18485:
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
	call CalculateBCPercentage
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

.Func_184f4:
	push af
	ld a, [hli]
	ld [wd074], a
	ld a, [hli]
	ld [wd075], a
	xor a
	ld [wd076], a
	ld [wd077], a
	pop af
	ret

.Func_18506:
	push af
	push hl
	ld a, [wd075]
	ld e, a
	ld a, [wd077]
	add e
	ld [wd077], a
	ld a, [wd074]
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
	ld a, [wd075]
	ld e, a
	ld a, [wd077]
	add e
	ld [wd077], a
	ld a, [wd074]
	ld e, a
	ld a, [wd076]
	adc e
	ld b, a
	ld [wSoundCheckMusic], a
	xor a
	ld [wd076], a
	cp b
	jr z, .asm_18591
	ld a, [wSCY]
	ld c, a
.asm_1854b
	ld a, c
	call Func_643
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
	call CalculateBCPercentage
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
	ld a, [wSoundCheckMusic]
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

	ld a, [hff93]
	set 2, a
	ld [hff93], a
.loop
	ld a, [hVBlankFlags]
	bit 6, a
	jr nz, .loop
	ld a, [hff94]
	bit 0, a
	jr nz, .skip_animation
	ld a, [hff8e]
	and $9c
	jr nz, .show_sprites
	ld a, [hff92]
	and KIRBY2F_FACE_LEFT
	jr nz, .show_sprites
	ld a, [hff93]
	and $38
	jr nz, .show_sprites
	ld hl, hff93
	set 0, [hl]

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
	ld hl, hff91
	set 4, [hl]
.show_sprites
	xor a
	ld [wVirtualOAMSize], a
	call Func_2e9c
	call Func_139b
	call ClearSprites
	ld a, [hVBlankFlags]
	set 6, a
	ld [hVBlankFlags], a
	ld a, [hJoypadPressed]
	bit START_F, a
	jr z, .loop

	; player pressed Start
	ld a, SFX_PAUSE
	call PlaySFX
	ld a, [hff93]
	and $fa
	ld [hff93], a
	ld hl, hff91
	res 4, [hl]
	ld hl, hff94
	res 0, [hl]
	ld a, 30
	call WaitAFrames
	ret

.skip_animation
	ld a, [hff91]
	res 4, a
	ld [hff91], a
	jr .show_sprites

_SetHPToZeroAndLoseLife::
	xor a
	ld [wHP], a
;	fallthrough
_LoseLife::
	ld a, SFX_21
	call PlaySFX
	ld a, MUSIC_NONE
	call PlayMusic

	ld hl, wMintLeafCounter
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wd3be], a
	ld [wd3f5], a
	ld a, [wd1a0 + OBJECT_SLOT_00]
	res OBJFLAG_FLASHING_F, a
	res OBJFLAG_BLINKING_F, a
	ld [wd1a0 + OBJECT_SLOT_00], a
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
	ld [hff94], a
	ld [hff93], a
	ld a, [hff95]
	and $81
	ld [hff95], a

	call ClearConsumedItems

	ld a, 1
	call DoFrames
	ld a, 59
	call WaitAFrames
	ld a, MUSIC_LIFE_LOST
	call PlayMusic

	ld hl, hff94
	set 5, [hl]
	call ClearObjectsExceptSlot00
	xor a
	ld [wd3cc], a
	ld bc, OBJECT_SLOT_00
	ld hl, $4154
	ld de, $4137
	call Func_21e6

	ld b, 160
.asm_186b6
	push bc
	ld a, [wObjectYCoords + $1]
	cp $dc
	jr nc, .asm_186c2
	cp $a0
	jr nc, .asm_186c7
.asm_186c2
	ld a, OBJECT_ACTIVE
	ld [wObjectActiveStates + OBJECT_SLOT_00], a
.asm_186c7
	ld a, 1
	call DoFrames
	pop bc
	dec b
	jr nz, .asm_186b6

	ld hl, hff94
	res 5, [hl]

	; decrement lives
	ld a, [wLives]
	dec a
	jr z, Func_18757
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
	ld [hff8d], a
	ld [hff8e], a
	ld [hff92], a
	call Func_139b
	ld a, [wStage]
	cp MT_DEDEDE
	jr z, .asm_18731
	ld a, [wMusic]
	call PlayMusic
.asm_18731
	ld a, [hff91]
	res 6, a
	ld [hff91], a
	call Func_3d92
	ld a, [hHUDFlags]
	set HUD_UPDATE_LIVES_F, a
	ld [hHUDFlags], a
	ld a, [wMaxHP]
	ld [wHP], a
	jp Func_1e6

Data_1874d:
	table_width 1, Data_1874d
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

Func_18757:
	call FadeOut
	call HideWindow
	call ResetTimer
	ld a, $0a
	call Func_21fb
	ld hl, $4665
	debgcoord 0, 0
	ld c, $03
	call FarDecompress
	ld hl, $41c7
	ld de, vTiles1 tile $60
	ld c, $03
	call FarDecompress
	ld a, $03
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
	ld hl, hVBlankFlags
	set 6, [hl]
.asm_1879c
	bit 6, [hl]
	jr nz, .asm_1879c
	ld a, [hJoypadPressed]
	bit START_F, a
	jr nz, .break
	dec bc
	ld a, b
	and a
	jr nz, .loop
	ld a, c
	and a
	jr nz, .loop

.break
	ld hl, hff95
	set 0, [hl]
	call FadeOut
	call HideWindow
	call ResetTimer
	call ClearAllObjects
	inc a
	ld [wd051], a
	ld [wd052], a
	ld a, $0b
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
	ld a, $04
	call PlayMusic
	call StopTimerAndSwitchOnLCD
	call FadeIn
.asm_1880b
	ld hl, hVBlankFlags
	set 6, [hl]
.asm_18810
	bit 6, [hl]
	jr nz, .asm_18810
	call Func_19098
	ld a, [wd3d0]
	and a
	jr z, .asm_1880b
	ld hl, hff95
	res 0, [hl]
	ld a, [wd3cf]
	and a
	jp nz, .asm_1885e
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
	ld hl, hff91
	set 5, [hl]
	call StartStage
	ld a, [wMusic]
	call PlayMusic
	jp Func_1e6

.asm_1885e
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
	ld a, $03
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
.asm_188de
	set 6, [hl]
.asm_188e0
	bit 6, [hl]
	jr nz, .asm_188e0
	call Func_19098
	dec de
	ld a, d
	or e
	jr nz, .asm_188de

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
	ld de, wc600
	ld c, $06
	call FarDecompress
	ld hl, $71e2
	ld de, wc100
	ld c, $06
	call FarDecompress

	ld a, $04
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
	set 6, [hl]
.asm_1895b
	bit 6, [hl]
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
	ld a, $05
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
	set 6, [hl]
.asm_189b7
	bit 6, [hl]
	jr nz, .asm_189b7
	call Func_19098
	dec de
	ld a, d
	or e
	jr nz, .asm_189b5

	call FadeOut
	call ResetTimer
	ld a, $06
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
	ld a, [hff91]
	res 2, a
	ld [hff91], a
.asm_18a09
	ld a, [hVBlankFlags]
	set 6, a
	ld [hVBlankFlags], a
.asm_18a11
	ld a, [hVBlankFlags]
	bit 6, a
	jr nz, .asm_18a11
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
	call SubtractBCFromHL
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	jr .asm_18a09

.asm_18a65
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call FadeOut
	call ResetTimer
	ld a, $07
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
	ld [wd084 + 0], a
	ld a, LOW(vBGMap1 + $80)
	ld [wd084 + 1], a
	ld hl, $5ed6
	ld a, h
	ld [wd082 + 0], a
	ld a, l
	ld [wd082 + 1], a
	xor a
	ld [wd054], a
	ld [wKirbyScreenDeltaY], a
	ld [wd061], a
	ld [wd054], a ; unnecessary
	ld [wd065], a
	ld [wSoundCheckMusic], a

	ld a, [hff91]
	res 2, a
	ld [hff91], a
.asm_18b48
	ld a, [hVBlankFlags]
	set 6, a
	ld [hVBlankFlags], a
.asm_18b50
	ld a, [hVBlankFlags]
	bit 6, a
	jr nz, .asm_18b50
	call Func_19098

	ld a, [wSoundCheckMusic]
	and a
	jp nz, .Func_18c5c
	ld a, [wd065]
	and a
	call nz, .Func_18b85
	ld a, [wd054]
	inc a
	ld [wd054], a
	cp $04
	jr c, .asm_18b48
	xor a
	ld [wd054], a
	ld a, [wSCX]
	dec a
	ld [wSCX], a
	and $07
	call z, .Func_18bf6
	jr .asm_18b48

.Func_18b85:
	ld a, [wKirbyScreenDeltaY]
	ld b, a
	ld a, $01
	sub b
	ld [wKirbyScreenDeltaY], a
	ld hl, wBGQueue
	ld b, $0a
.asm_18b94
	ld a, [wd084 + 0]
	ld [hli], a
	ld d, a
	ld a, [wd084 + 1]
	ld [hli], a
	ld e, a
	inc de
	ld a, d
	ld [wd084 + 0], a
	ld a, e
	ld [wd084 + 1], a
	ld a, [wd082 + 0]
	ld d, a
	ld a, [wd082 + 1]
	ld e, a
	ld a, [de]
	ld [hli], a
	inc de
	ld a, d
	ld [wd082 + 0], a
	ld a, e
	ld [wd082 + 1], a
	dec b
	jr nz, .asm_18b94
	ld a, [wd061]
	inc a
	cp $08
	jr nz, .asm_18bc9
	xor a
	ld [wd065], a
.asm_18bc9
	ld [wd061], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ld a, [wKirbyScreenDeltaY]
	and a
	ret nz
	ld a, [wd084 + 0]
	ld h, a
	ld a, [wd084 + 1]
	ld l, a
	ld bc, $c
	add hl, bc
	ld a, $a0
	cp h
	jr nz, .asm_18bed
	hlbgcoord 0, 0, vBGMap1
.asm_18bed
	ld a, h
	ld [wd084 + 0], a
	ld a, l
	ld [wd084 + 1], a
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
	ld bc, $20
	add hl, bc
	pop bc
	ld a, $cb
	cp b
	jr nz, .asm_18c09
	ld a, $2a
	cp c
	jr nz, .asm_18c09
	xor a
	ld [bc], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
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

.Func_18c5c:
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
	ld a, $08
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
	set 6, [hl]
.asm_18cba
	bit 6, [hl]
	jr nz, .asm_18cba
	call Func_19098
	dec de
	ld a, d
	or e
	jr nz, .asm_18cb8
	call FadeOut
	call ResetTimer
	ld a, $09
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
	set 6, [hl]
.asm_18cf3
	bit 6, [hl]
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
	ld a, $0c
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
	ld a, $0d
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
	ld a, $0e
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
	ld a, $0f
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
	ld a, $10
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
	ld a, $11
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
	ld a, $12
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
	ld a, $13
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
	ld a, $14
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
	ld a, $15
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
	ld a, $16
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
	ld a, $17
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
	ld a, $18
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

	ld a, $19
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
	set 6, [hl]
.asm_1900b
	bit 6, [hl]
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

	ld a, $1a
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

	ld a, $1b
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
	set 6, [hl]
.asm_1908b
	bit 6, [hl]
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
	call Func_2e9c
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
	table_width 3, Data_190bb
	db $06, $78, $35 ; GREEN_GREENS
	db $06, $78, $df ; CASTLE_LOLOLO
	db $06, $79, $5d ; FLOAT_ISLANDS
	db $06, $79, $f9 ; BUBBLY_CLOUDS
	db $06, $7a, $af ; MT_DEDEDE
	assert_table_length NUM_STAGES

Data_190ca:
	table_width 2, Data_190ca
	dw .GreenGreens  ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede     ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 2, Data_190ca.GreenGreens
	dw Data_19138 ; GREEN_GREENS_0
	dw Data_19136 ; GREEN_GREENS_1
	dw Data_19136 ; GREEN_GREENS_2
	dw Data_19136 ; GREEN_GREENS_3
	dw Data_1916d ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 2, Data_190ca.CastleLololo
	dw Data_19136 ; CASTLE_LOLOLO_00
	dw Data_19136 ; CASTLE_LOLOLO_01
	dw Data_19136 ; CASTLE_LOLOLO_02
	dw Data_19136 ; CASTLE_LOLOLO_03
	dw Data_19136 ; CASTLE_LOLOLO_04
	dw Data_19136 ; CASTLE_LOLOLO_05
	dw Data_19136 ; CASTLE_LOLOLO_06
	dw Data_19175 ; CASTLE_LOLOLO_07
	dw Data_191aa ; CASTLE_LOLOLO_08
	dw Data_19136 ; CASTLE_LOLOLO_09
	dw Data_19136 ; CASTLE_LOLOLO_10
	dw Data_19136 ; CASTLE_LOLOLO_11
	dw Data_19136 ; CASTLE_LOLOLO_12
	dw Data_19136 ; CASTLE_LOLOLO_13
	dw Data_191b7 ; CASTLE_LOLOLO_14
	dw Data_191be ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 2, Data_190ca.FloatIslands
	dw Data_19136 ; FLOAT_ISLANDS_0
	dw Data_19136 ; FLOAT_ISLANDS_1
	dw Data_19136 ; FLOAT_ISLANDS_2
	dw Data_19136 ; FLOAT_ISLANDS_3
	dw Data_19136 ; FLOAT_ISLANDS_4
	dw Data_191c6 ; FLOAT_ISLANDS_5
	dw Data_19136 ; FLOAT_ISLANDS_6
	dw Data_191fe ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 2, Data_190ca.BubblyClouds
	dw Data_19136 ; BUBBLY_CLOUDS_0
	dw Data_19136 ; BUBBLY_CLOUDS_1
	dw Data_19136 ; BUBBLY_CLOUDS_2
	dw Data_19136 ; BUBBLY_CLOUDS_3
	dw Data_19206 ; BUBBLY_CLOUDS_4
	dw Data_19136 ; BUBBLY_CLOUDS_5
	dw Data_19136 ; BUBBLY_CLOUDS_6
	dw Data_19136 ; BUBBLY_CLOUDS_7
	dw Data_19136 ; BUBBLY_CLOUDS_8
	dw Data_1922b ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 2, Data_190ca.MtDedede
	dw Data_19233 ; MT_DEDEDE_0
	dw Data_19136 ; MT_DEDEDE_1
	dw Data_19136 ; MT_DEDEDE_2
	dw Data_19136 ; MT_DEDEDE_3
	dw Data_19136 ; MT_DEDEDE_4
	dw Data_19268 ; MT_DEDEDE_5
	dw Data_1925b ; MT_DEDEDE_6
	dw Data_1925b ; MT_DEDEDE_7
	dw Data_1925b ; MT_DEDEDE_8
	dw Data_1925b ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

Data_19136:
	db $01, $80

Data_19138:
	db $3c, $00, $0a, $01, $00, $80, $0a, $01, $01, $00, $0a, $01, $02, $00, $0b, $01, $03, $00, $56, $01, $04, $00, $0b, $01, $03, $00, $0a, $01, $02, $00, $0a, $01, $01, $00, $0a, $01, $00, $80, $78, $00, $01, $04, $02, $01, $01, $01, $10, $0b, $40, $ff, $00, $01, $80

Data_1916d:
	db $f0, $00, $f0, $00, $f0, $00, $01, $08

Data_19175:
	db $3c, $00, $0a, $01, $00, $80, $0a, $01, $01, $00, $0a, $01, $02, $00, $0b, $01, $03, $00, $56, $01, $04, $00, $0b, $01, $03, $00, $0a, $01, $02, $00, $0a, $01, $01, $00, $0a, $01, $00, $80, $1e, $00, $01, $04, $08, $01, $01, $01, $10, $14, $40, $f0, $00, $01, $80

Data_191aa:
	db $01, $04, $09, $01, $09, $01, $10, $76, $42, $1e, $00, $01, $80

Data_191b7:
	db $01, $04, $0f, $01, $01, $01, $80

Data_191be:
	db $f0, $00, $f0, $00, $f0, $00, $01, $08

Data_191c6:
	db $a0, $00, $0a, $02, $01, $00, $0a, $02, $02, $00, $0a, $02, $03, $00, $22, $02, $04, $00, $0a, $02, $03, $00, $0a, $02, $02, $00, $0a, $02, $01, $00, $8c, $00, $01, $04, $06, $01, $01, $01, $10, $2f, $40, $c8, $00, $01, $04, $07, $01, $01, $01, $10, $56, $40, $ff, $00, $01, $80

Data_191fe:
	db $f0, $00, $f0, $00, $f0, $00, $01, $08

Data_19206:
	db $64, $00, $0a, $02, $00, $80, $0a, $02, $01, $00, $0a, $02, $02, $00, $0b, $02, $03, $00, $2c, $02, $04, $00, $78, $00, $01, $04, $05, $01, $01, $01, $10, $bf, $40, $ff, $00, $01, $80

Data_1922b:
	db $f0, $00, $f0, $00, $f0, $00, $01, $08

Data_19233:
	db $f0, $01, $01, $c0, $bc, $01, $01, $c0, $0a, $01, $01, $80, $0a, $01, $01, $40, $0a, $01, $01, $00, $0a, $01, $00, $c0, $0a, $01, $00, $80, $0a, $01, $00, $40, $0a, $01, $00, $00, $32, $00, $01, $80

Data_1925b:
	db $01, $04, $00, $33, $01, $01, $10, $1d, $41, $f0, $00, $01, $80

Data_19268:
	db $01, $20

Data_1926a:
	table_width 2, Data_1926a
	dw .GreenGreens ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 2, Data_1926a.GreenGreens
	dw $404b ; GREEN_GREENS_0
	dw NULL ; GREEN_GREENS_1
	dw NULL ; GREEN_GREENS_2
	dw NULL ; GREEN_GREENS_3
	dw $41b7 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 2, Data_1926a.CastleLololo
	dw NULL ; CASTLE_LOLOLO_00
	dw NULL ; CASTLE_LOLOLO_01
	dw NULL ; CASTLE_LOLOLO_02
	dw NULL ; CASTLE_LOLOLO_03
	dw NULL ; CASTLE_LOLOLO_04
	dw NULL ; CASTLE_LOLOLO_05
	dw NULL ; CASTLE_LOLOLO_06
	dw $4073 ; CASTLE_LOLOLO_07
	dw $4000 ; CASTLE_LOLOLO_08
	dw $4000 ; CASTLE_LOLOLO_09
	dw NULL ; CASTLE_LOLOLO_10
	dw NULL ; CASTLE_LOLOLO_11
	dw NULL ; CASTLE_LOLOLO_12
	dw NULL ; CASTLE_LOLOLO_13
	dw $4000 ; CASTLE_LOLOLO_14
	dw $41b7 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 2, Data_1926a.FloatIslands
	dw NULL ; FLOAT_ISLANDS_0
	dw NULL ; FLOAT_ISLANDS_1
	dw NULL ; FLOAT_ISLANDS_2
	dw NULL ; FLOAT_ISLANDS_3
	dw NULL ; FLOAT_ISLANDS_4
	dw $40a3 ; FLOAT_ISLANDS_5
	dw NULL ; FLOAT_ISLANDS_6
	dw $41b7 ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 2, Data_1926a.BubblyClouds
	dw NULL ; BUBBLY_CLOUDS_0
	dw NULL ; BUBBLY_CLOUDS_1
	dw NULL ; BUBBLY_CLOUDS_2
	dw NULL ; BUBBLY_CLOUDS_3
	dw $40b4 ; BUBBLY_CLOUDS_4
	dw NULL ; BUBBLY_CLOUDS_5
	dw NULL ; BUBBLY_CLOUDS_6
	dw NULL ; BUBBLY_CLOUDS_7
	dw NULL ; BUBBLY_CLOUDS_8
	dw $41b7 ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 2, Data_1926a.MtDedede
	dw $4206 ; MT_DEDEDE_0
	dw NULL ; MT_DEDEDE_1
	dw NULL ; MT_DEDEDE_2
	dw NULL ; MT_DEDEDE_3
	dw NULL ; MT_DEDEDE_4
	dw $404a ; MT_DEDEDE_5
	dw $404a ; MT_DEDEDE_6
	dw $404a ; MT_DEDEDE_7
	dw $404a ; MT_DEDEDE_8
	dw $404a ; MT_DEDEDE_9
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
; 0x19ed6

SECTION "Configuration", ROMX[$6386], BANK[$6]

INCLUDE "engine/configuration.asm"
