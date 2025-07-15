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
	call UpdateObjectsAndClearStaleSprites
	call HideWindow

	ld a, HUD_UPDATE_HP
	ld [hHUDFlags], a

	xor a
	ld [wSCX], a
	ld [wSCY], a

	call ResetTimer

	ld hl, FontWoNumbersGfx
	ld de, vTiles1 tile $60
	ld c, BANK(FontWoNumbersGfx)
	call FarDecompress
	ld hl, Epilogue1Gfx
	ld de, vTiles0 tile $00
	ld c, BANK(Epilogue1Gfx)
	call FarDecompress
	ld hl, Epilogue2Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(Epilogue2Gfx)
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
	call UpdateObjectsAndClearStaleSprites
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

	ld hl, CommonGfx
	ld de, vTiles0 tile $00
	ld c, BANK(CommonGfx)
	call FarDecompress
	ld hl, HUDGfx
	ld de, vTiles2 tile $67
	ld c, BANK(HUDGfx)
	call FarDecompress
	ld hl, MtDededeGfx
	ld de, vTiles1 tile $00
	ld c, BANK(MtDededeGfx)
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
	call UpdateObjectsAndClearStaleSprites
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
	call UpdateObjectsAndClearStaleSprites
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
	call UpdateObjectsAndClearStaleSprites
	call ResetTimer

	ld hl, FontWoNumbersGfx
	ld de, vTiles1 tile $60
	ld c, BANK(FontWoNumbersGfx)
	call FarDecompress
	ld hl, Epilogue1Gfx
	ld de, vTiles0 tile $00
	ld c, BANK(Epilogue1Gfx)
	call FarDecompress
	ld hl, Epilogue2Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(Epilogue2Gfx)
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
	call UpdateObjectsAndClearStaleSprites
	dec de
	ld a, d
	or e
	jr nz, .asm_189b5

	call FadeOut
	call ResetTimer
	ld a, SCENE_EPILOGUE_FALLING_FOOD
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites

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
	ld bc, TILEMAP_WIDTH - 20 ; next row
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
	call UpdateObjectsAndClearStaleSprites

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
	call UpdateObjectsAndClearStaleSprites

	ld a, $08
	ld [wSCX], a
	xor a
	ld [wSCY], a
	hlbgcoord 0, 0, vBGMap1
	ld c, 4 * TILEMAP_WIDTH
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
	ld bc, TILEMAP_WIDTH - 21
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
	ld hl, TILEMAP_WIDTH - $14
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
	set B_IE_STAT, [hl]
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
	call UpdateObjectsAndClearStaleSprites

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
	ld bc, TILEMAP_WIDTH - 2 * 10
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
	ld bc, TILEMAP_WIDTH
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
	call UpdateObjectsAndClearStaleSprites

	ld hl, rIE
	res B_IE_STAT, [hl]
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
	call UpdateObjectsAndClearStaleSprites
	dec de
	ld a, d
	or e
	jr nz, .asm_18cb8
	call FadeOut
	call ResetTimer
	ld a, SCENE_EPILOGUE_BYE_BYE
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites

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
	call UpdateObjectsAndClearStaleSprites
	ld a, [hJoypadPressed]
	bit B_PAD_A, a
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
	call LoadLevelGfx_RegularGame
	ld a, SCENE_GREEN_GREENS_ENEMIES_1
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, GreenGreensCredits1Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(GreenGreensCredits1Gfx)
	call FarDecompress
	ld hl, BG_345c0
	debgcoord 0, 0
	ld c, BANK(BG_345c0)
	call FarDecompress
	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld de, 416
	call .DoFrames
	call FadeOut

	call ResetTimer
	ld a, SCENE_GREEN_GREENS_ENEMIES_2
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, GreenGreensCredits2Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(GreenGreensCredits2Gfx)
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
	call UpdateObjectsAndClearStaleSprites
	ld hl, GreenGreensCredits3Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(GreenGreensCredits3Gfx)
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
	call LoadLevelGfx_RegularGame
	ld a, SCENE_CASTLE_LOLOLO_ENEMIES_1
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, CastleLololoCredits1Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(CastleLololoCredits1Gfx)
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
	call UpdateObjectsAndClearStaleSprites
	ld hl, CastleLololoCredits2Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(CastleLololoCredits2Gfx)
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
	call LoadLevelGfx_RegularGame
	ld a, SCENE_FLOAT_ISLANDS_ENEMIES_1
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, FloatIslandsCredits1Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(FloatIslandsCredits1Gfx)
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
	call UpdateObjectsAndClearStaleSprites
	ld hl, FloatIslandsCredits2Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(FloatIslandsCredits2Gfx)
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
	call LoadLevelGfx_RegularGame
	ld a, SCENE_BUBBLY_CLOUDS_ENEMIES_1
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, BubblyCloudsCredits1Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(BubblyCloudsCredits1Gfx)
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
	ld a, SCENE_BUBBLY_CLOUDS_ENEMIES_2
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, BubblyCloudsCredits2Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(BubblyCloudsCredits2Gfx)
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
	call LoadLevelGfx
	ld a, SCENE_GREEN_GREENS_ENEMIES_4
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, GreenGreensCredits4Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(GreenGreensCredits4Gfx)
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
	call LoadLevelGfx
	ld a, SCENE_CASTLE_LOLOLO_ENEMIES_3
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, CastleLololoCredits3Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(CastleLololoCredits3Gfx)
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
	call LoadLevelGfx
	ld a, SCENE_FLOAT_ISLANDS_ENEMIES_3
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, FloatIslandsCredits3Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(FloatIslandsCredits3Gfx)
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
	call LoadLevelGfx
	ld a, SCENE_BUBBLY_CLOUDS_ENEMIES_3
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, BubblyCloudsCredits3Gfx
	ld de, vTiles2 tile $00
	ld c, BANK(BubblyCloudsCredits3Gfx)
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
	ld hl, MtDededeGfx
	ld de, vTiles1 tile $00
	ld c, BANK(MtDededeGfx)
	call FarDecompress
	ld a, SCENE_KING_DEDEDE
	call Func_21fb
	call UpdateObjectsAndClearStaleSprites
	ld hl, MtDededeCreditsGfx
	ld de, vTiles2 tile $00
	ld c, BANK(MtDededeCreditsGfx)
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
	call UpdateObjectsAndClearStaleSprites
	ld a, [hJoypadPressed]
	bit B_PAD_A, a
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
	call UpdateObjectsAndClearStaleSprites
	ld hl, ConfigModeUnlockGfx
	ld de, vTiles0 tile $00
	ld c, BANK(ConfigModeUnlockGfx)
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
	call UpdateObjectsAndClearStaleSprites
	ld hl, ExtraGameUnlockGfx
	ld de, vTiles0 tile $00
	ld c, BANK(ExtraGameUnlockGfx)
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
	call UpdateObjectsAndClearStaleSprites
	dec de
	ld a, d
	or e
	jr nz, .asm_19089
	ret
