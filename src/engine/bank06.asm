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
	ld [hVBlankFlags], a
	ld [hff8d], a

	call Func_648
	ld a, SFX_NONE
	call PlaySFX
	ld a, MUSIC_NONE
	call PlayMusic
	pop hl

	ld a, [hff95]
	bit 7, a
	jr nz, .skip_intro
	call InitWindow
	call StageIntro
.skip_intro
	ld a, $ff
	ld [wd096], a
	call ClearObjects
	call Func_648
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
	ld [wMusic], a

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
	ld a, [wMusic]
	call PlayMusic
.skip_music
	call SetFullHP
	call StopTimerAndSwitchOnLCD
	call Func_670
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
	ld de, v0Tiles0
	ld c, $02
	call FarDecompress
	ld hl, $4855
	ld de, $9670
	ld c, $02
	call FarDecompress
	jr .asm_182b9
.extra_game
	ld hl, $488d
	ld de, v0Tiles0
	ld c, $0a
	call FarDecompress
	ld hl, $50f3
	ld de, $9670
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
	ld de, v0Tiles0
	ld c, $02
	call FarDecompress
	ld hl, $4855
	ld de, $9670
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
	ld de, $8e00
	ld c, $02
	call FarDecompress
	ld hl, $5cdd
	ld de, v0Tiles1
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
	ld de, v0BGMap0
	call FarDecompress

	xor a
	call Func_21fb
	call StopTimerAndSwitchOnLCD
	call Func_670

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
	ld hl, hff90
	res 4, [hl]

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
	ld hl, wStage
	inc [hl]
	call Func_180e4
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
	ld de, $157a
	ld bc, $0
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
	ld bc, $0
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
	call Func_648
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
	call Func_670
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
	ld [wd058], a
	ld a, [wSCX]
	and $f0
	ld [wd057], a
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
	and $80
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
; 0x18639

SECTION "Bank 6@486c", ROMX[$486c], BANK[$6]

Func_1886c:
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call Func_648

	ld a, SFX_NONE
	call PlaySFX
	ld a, MUSIC_NONE
	call PlayMusic

	xor a
	ld [hff90], a
	inc a
	ld [wd051], a
	ld [wd052], a
	ld a, $03
	call Func_21fb
	call Func_19098
	call InitWindow

	ld a, HUD_UPDATE_HP
	ld [hHUDFlags], a

	xor a
	ld [wSCX], a
	ld [wSCY], a

	call ResetTimer

	ld hl, $41c7
	ld de, $8e00
	ld c, $03
	call FarDecompress
	ld hl, $4fcf
	ld de, v0Tiles0
	ld c, $03
	call FarDecompress
	ld hl, $5894
	ld de, v0Tiles2
	ld c, $03
	call FarDecompress
	ld hl, $42c8
	ld de, v0BGMap0
	ld c, $03
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
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
	ld [hff90], a
	ld a, $ff
	ld [wd096], a
	call ClearSprites
	call Func_648
	call ResetTimer

	ld hl, $4000
	ld de, v0Tiles0
	ld c, $02
	call FarDecompress
	ld hl, $4855
	ld de, $9670
	ld c, $02
	call FarDecompress
	ld hl, $6c49
	ld de, v0Tiles1
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
	call Func_670

	ld de, 432
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
	call Func_648
	ld a, $05
	call Func_21fb
	call Func_19098
	call ResetTimer

	ld hl, $41c7
	ld de, $8e00
	ld c, $03
	call FarDecompress
	ld hl, $4fcf
	ld de, v0Tiles0
	ld c, $03
	call FarDecompress
	ld hl, $5894
	ld de, v0Tiles2
	ld c, $03
	call FarDecompress
	ld hl, $42c8
	ld de, v0BGMap0
	ld c, $03
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
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

	call Func_648
	call ResetTimer
	ld a, $06
	call Func_21fb
	call Func_19098

	xor a
	ld [hHUDFlags], a
	ld [wSCX], a
	ld a, $08
	ld [wSCY], a
	ld hl, v0BGMap0

	ld de, $52d6
	ld b, $13
.asm_189e5
	ld c, $14
.asm_189e7
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .asm_189e7
	dec b
	push bc
	ld bc, $c
	add hl, bc
	pop bc
	jr nz, .asm_189e5
	push de
	call StopTimerAndSwitchOnLCD
	call Func_670
	pop de
	ld hl, $9be0
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
	ld hl, $9be0
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
	call Func_648
	call ResetTimer
	ld a, $07
	call Func_21fb
	call Func_19098

	ld a, $08
	ld [wSCX], a
	xor a
	ld [wSCY], a
	ld hl, v0BGMap1
	ld c, $80
.asm_18a89
	ld a, $ff
	ld [hli], a
	dec c
	jr nz, .asm_18a89
	ld hl, v0BGMap0
	ld de, $5786
	ld b, $0e
.asm_18a97
	ld c, $15
.asm_18a99
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .asm_18a99
	push bc
	ld bc, $b
	add hl, bc
	pop bc
	dec b
	jr nz, .asm_18a97
	ld a, d
	ld [wd059 + 0], a
	ld a, e
	ld [wd059 + 1], a
	ld hl, $5e86
	ld de, v0BGMap1
	ld c, $04
.asm_18ab8
	ld b, $14
.asm_18aba
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .asm_18aba
	push hl
	ld hl, $c
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

	ld a, $40
	ld [wBGP], a
	ld a, $40
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, $90
	ld [wBGP], a
	ld a, $80
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, $e1
	ld [wBGP], a
	ld a, $d0
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, MUSIC_CREDITS
	call PlayMusic

	ld a, $98
	ld [wd06b], a
	ld a, $1f
	ld [wd06c], a
	ld a, $9c
	ld [wd084], a
	ld a, $80
	ld [wd085], a
	ld hl, $5ed6
	ld a, h
	ld [wd082], a
	ld a, l
	ld [wd083], a
	xor a
	ld [wd054], a
	ld [wd060], a
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
	ld a, [wd060]
	ld b, a
	ld a, $01
	sub b
	ld [wd060], a
	ld hl, wBGQueue
	ld b, $0a
.asm_18b94
	ld a, [wd084]
	ld [hli], a
	ld d, a
	ld a, [wd085]
	ld [hli], a
	ld e, a
	inc de
	ld a, d
	ld [wd084], a
	ld a, e
	ld [wd085], a
	ld a, [wd082]
	ld d, a
	ld a, [wd083]
	ld e, a
	ld a, [de]
	ld [hli], a
	inc de
	ld a, d
	ld [wd082], a
	ld a, e
	ld [wd083], a
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
	ld a, [wd060]
	and a
	ret nz
	ld a, [wd084]
	ld h, a
	ld a, [wd085]
	ld l, a
	ld bc, $c
	add hl, bc
	ld a, $a0
	cp h
	jr nz, .asm_18bed
	ld hl, v0BGMap1
.asm_18bed
	ld a, h
	ld [wd084], a
	ld a, l
	ld [wd085], a
	ret

.Func_18bf6:
	ld bc, wBGQueue
	ld a, [wd06b]
	ld h, a
	ld a, [wd06c]
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
	ld hl, $981f
	ld a, h
	ld [wd06b], a
	ld a, l
	ld [wd06c], a
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
	ld a, [wd06b]
	ld h, a
	ld a, [wd06c]
	ld l, a
	dec hl
	ld a, h
	ld [wd06b], a
	ld a, l
	ld [wd06c], a
	ld a, d
	ld [wd059 + 0], a
	ld a, e
	ld [wd059 + 1], a
	ret

.Func_18c5c:
	ld a, $90
	ld [wBGP], a
	ld a, $d0
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, $40
	ld [wBGP], a
	ld a, $80
	ldh [rOBP0], a
	ld a, 5
	call DoFrames

	ld a, $00
	ld [wBGP], a
	ld a, $40
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
	ld de, v0BGMap0
	ld c, $03
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
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
	call Func_648
	call ResetTimer
	ld a, $09
	call Func_21fb
	call Func_19098

	ld hl, $441d
	ld de, v0BGMap0
	ld c, $03
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670

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
	call Func_648
	call ResetTimer
	call ClearObjects
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
	ld de, v0Tiles2
	ld c, $0d
	call FarDecompress
	ld hl, $45c0
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer
	ld a, $0d
	call Func_21fb
	call Func_19098

	ld hl, $46fb
	ld de, v0Tiles2
	ld c, $0d
	call FarDecompress
	ld hl, $4cb4
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer
	ld a, $0e
	call Func_21fb
	call Func_19098

	ld hl, $4dc0
	ld de, v0Tiles2
	ld c, $0d
	call FarDecompress
	ld hl, $535c
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 236
	call .DoFrames
	call Func_648
	call ResetTimer

	ld a, CASTLE_LOLOLO
	ld [wStage], a

	call Func_18275
	ld a, $0f
	call Func_21fb
	call Func_19098

	ld hl, $543e
	ld de, v0Tiles2
	ld c, $0d
	call FarDecompress
	ld hl, $5987
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer
	ld a, $10
	call Func_21fb
	call Func_19098

	ld hl, $5a89
	ld de, v0Tiles2
	ld c, $0d
	call FarDecompress
	ld hl, $5fd2
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer

	ld a, FLOAT_ISLANDS
	ld [wStage], a
	call Func_18275
	ld a, $11
	call Func_21fb
	call Func_19098

	ld hl, $6063
	ld de, v0Tiles2
	ld c, $0d
	call FarDecompress
	ld hl, $6553
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer
	ld a, $12
	call Func_21fb
	call Func_19098

	ld hl, $6658
	ld de, v0Tiles2
	ld c, $0d
	call FarDecompress
	ld hl, $6b80
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer

	ld a, BUBBLY_CLOUDS
	ld [wStage], a
	call Func_18275
	ld a, $13
	call Func_21fb
	call Func_19098

	ld hl, $6c7c
	ld de, v0Tiles2
	ld c, $0d
	call FarDecompress
	ld hl, $717d
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer
	ld a, $14
	call Func_21fb
	call Func_19098

	ld hl, $729b
	ld de, v0Tiles2
	ld c, $0d
	call FarDecompress
	ld hl, $779c
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer
	xor a
	ld [wStage], a
	call Func_18285
	ld a, $15
	call Func_21fb
	call Func_19098

	ld hl, $4000
	ld de, v0Tiles2
	ld c, $0e
	call FarDecompress
	ld hl, $78cc
	ld de, v0BGMap0
	ld c, $0d
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer
	ld a, CASTLE_LOLOLO
	ld [wStage], a
	call Func_18285
	ld a, $16
	call Func_21fb
	call Func_19098

	ld hl, $4582
	ld de, v0Tiles2
	ld c, $0e
	call FarDecompress
	ld hl, $4ac6
	ld de, v0BGMap0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer
	ld a, FLOAT_ISLANDS
	ld [wStage], a
	call Func_18285
	ld a, $17
	call Func_21fb
	call Func_19098

	ld hl, $4bf3
	ld de, v0Tiles2
	ld c, $0e
	call FarDecompress
	ld hl, $511e
	ld de, v0BGMap0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer
	ld a, BUBBLY_CLOUDS
	ld [wStage], a
	call Func_18285
	ld a, $18
	call Func_21fb
	call Func_19098

	ld hl, $5206
	ld de, v0Tiles2
	ld c, $0e
	call FarDecompress
	ld hl, $5707
	ld de, v0BGMap0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
	ld de, 416
	call .DoFrames
	call Func_648
	call ResetTimer

	ld hl, $6c49
	ld de, v0Tiles1
	ld c, $02
	call FarDecompress

	ld a, $19
	call Func_21fb
	call Func_19098

	ld hl, $5820
	ld de, v0Tiles2
	ld c, $0e
	call FarDecompress
	ld hl, $5be1
	ld de, v0BGMap0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
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
	call Func_648
	call ResetTimer

	ld a, MUSIC_NONE
	call PlayMusic

	ld a, $1a
	call Func_21fb
	call Func_19098

	ld hl, $5cbf
	ld de, v0Tiles0
	ld c, $0e
	call FarDecompress
	ld hl, $6cce
	ld de, v0BGMap0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
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
	ld de, v0Tiles0
	ld c, $0e
	call FarDecompress
	ld hl, $7e4a
	ld de, v0BGMap0
	ld c, $0e
	call FarDecompress

	call StopTimerAndSwitchOnLCD
	call Func_670
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
	dw .GreenGreens ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 2, Data_190ca.GreenGreens
	dw $5138 ; GREEN_GREENS_0
	dw $5136 ; GREEN_GREENS_1
	dw $5136 ; GREEN_GREENS_2
	dw $5136 ; GREEN_GREENS_3
	dw $516d ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 2, Data_190ca.CastleLololo
	dw $5136 ; CASTLE_LOLOLO_00
	dw $5136 ; CASTLE_LOLOLO_01
	dw $5136 ; CASTLE_LOLOLO_02
	dw $5136 ; CASTLE_LOLOLO_03
	dw $5136 ; CASTLE_LOLOLO_04
	dw $5136 ; CASTLE_LOLOLO_05
	dw $5136 ; CASTLE_LOLOLO_06
	dw $5175 ; CASTLE_LOLOLO_07
	dw $51aa ; CASTLE_LOLOLO_08
	dw $5136 ; CASTLE_LOLOLO_09
	dw $5136 ; CASTLE_LOLOLO_10
	dw $5136 ; CASTLE_LOLOLO_11
	dw $5136 ; CASTLE_LOLOLO_12
	dw $5136 ; CASTLE_LOLOLO_13
	dw $51b7 ; CASTLE_LOLOLO_14
	dw $51be ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 2, Data_190ca.FloatIslands
	dw $5136 ; FLOAT_ISLANDS_0
	dw $5136 ; FLOAT_ISLANDS_1
	dw $5136 ; FLOAT_ISLANDS_2
	dw $5136 ; FLOAT_ISLANDS_3
	dw $5136 ; FLOAT_ISLANDS_4
	dw $51c6 ; FLOAT_ISLANDS_5
	dw $5136 ; FLOAT_ISLANDS_6
	dw $51fe ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 2, Data_190ca.BubblyClouds
	dw $5136 ; BUBBLY_CLOUDS_0
	dw $5136 ; BUBBLY_CLOUDS_1
	dw $5136 ; BUBBLY_CLOUDS_2
	dw $5136 ; BUBBLY_CLOUDS_3
	dw $5206 ; BUBBLY_CLOUDS_4
	dw $5136 ; BUBBLY_CLOUDS_5
	dw $5136 ; BUBBLY_CLOUDS_6
	dw $5136 ; BUBBLY_CLOUDS_7
	dw $5136 ; BUBBLY_CLOUDS_8
	dw $522b ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 2, Data_190ca.MtDedede
	dw $5233 ; MT_DEDEDE_0
	dw $5136 ; MT_DEDEDE_1
	dw $5136 ; MT_DEDEDE_2
	dw $5136 ; MT_DEDEDE_3
	dw $5136 ; MT_DEDEDE_4
	dw $5268 ; MT_DEDEDE_5
	dw $525b ; MT_DEDEDE_6
	dw $525b ; MT_DEDEDE_7
	dw $525b ; MT_DEDEDE_8
	dw $525b ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS
; 0x19136

SECTION "Bank 6@526a", ROMX[$526a], BANK[$6]

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
; 0x192d6

SECTION "Bank 6@6386", ROMX[$6386], BANK[$6]

ConfigurationMenu:
	call Func_648
	call ResetTimer
	call ClearObjects
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
	cp $02
	jp z, .SoundTest
	cp $03
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
	ld a, [wConfigMaxHP]
	inc a
	cp $07
	ret z
	ld [wConfigMaxHP], a
	ld c, a
	ld a, $c5
	jr .update_hp_bar

.incr_lives
	ld a, [wConfigLives]
	cp $09
	ret z ; cannot add more lives
	inc a
	ld [wConfigLives], a
	jr .UpdateNumLives

.config_b_btn
.config_d_left
	ld a, [wMenuCursorPos]
	cp $01
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
