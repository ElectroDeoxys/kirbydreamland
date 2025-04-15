ProcessBlockQueue:
	ldh a, [hVBlankFlags]
	bit VBLANK_PENDING_F, a
	ret z
	bit VBLANK_5_F, a
	ret z
	ld bc, wBlockQueue
.loop_queue
	ld a, [bc]
	inc bc
	ld h, a
	and a
	ret z
	ld a, [bc]
	inc bc
	ld l, a
	ld a, [bc]
	inc bc
	ld [hli], a
	ld a, [bc]
	inc bc
	ld [hl], a
	ld a, [bc]
	inc bc
	ld de, SCRN_VX_B - 1
	add hl, de
	ld [hli], a
	ld a, [bc]
	inc bc
	ld [hl], a
	jr .loop_queue

FadePalettes:
	; fade only ticks every 5 frames
	ld a, [wFadeDelayTimer]
	cp 5
	ret c ; < 5
	xor a
	ld [wFadeDelayTimer], a

	ldh a, [hPalFadeFlags]
	bit FADE_ON_F, a
	ret z ; no fade
	and FADE_BLACK
	ld e, a

	ldh a, [hPalFadeFlags]
	and %11
	ld c, a
	cp 3
	jp z, .end_fade
	; increment fade step
	inc a
	ld b, a
	ldh a, [hPalFadeFlags]
	and %11111100
	or b
	ldh [hPalFadeFlags], a

	ldh a, [hPalFadeFlags] ; unnecessary
	bit FADE_MODE_F, a
	jr nz, .fade_out

; fade in
	; fade for BG and OB1
	ld d, $00
	ld b, d ; $00
	ld hl, BGPAndOBP1FadeInMasks
	add hl, de
	add hl, bc
	ld a, [wBGP]
	bit FADE_COLOR_F, e
	jr nz, .black1
	; darken
	srl a
	srl a
	jr .shifted1
.black1
	; lighten
	sla a
	sla a
.shifted1
	ld b, a
	ld a, [hl]
	or b
	ld [wBGP], a
	ldh [rBGP], a
	ldh [rOBP1], a

	; fade for OB0
	ld d, $00
	ld b, d
	ld hl, OBP0FadeInMasks
	add hl, de
	add hl, bc
	ld a, [wOBP]
	bit FADE_COLOR_F, e
	jr nz, .black2
	; darken
	srl a
	srl a
	jr .shifted2
.black2
	; lighten
	sla a
	sla a
.shifted2
	ld b, a
	ld a, [hl]
	or b
	ld [wOBP], a
	ldh [rOBP0], a
	ret

.fade_out
	; fade for BG and OB1
	ld a, [wBGP]
	bit FADE_COLOR_F, e
	jr nz, .black3
	; lighten
	sla a
	sla a
	jr .shifted3
.black3
	; darken
	srl a
	srl a
	or $c0
.shifted3
	ld [wBGP], a
	ldh [rBGP], a
	ldh [rOBP1], a
	ld a, [wOBP]

	; fade for OB0
	bit FADE_COLOR_F, e
	jr nz, .black4
	; lighten
	sla a
	sla a
	jr .shifted4
.black4
	; darken
	srl a
	srl a
	or $c0
.shifted4
	ld [wOBP], a
	ldh [rOBP0], a
	ret

.end_fade
	ldh a, [hPalFadeFlags]
	and $fc ^ FADE_ON
	ldh [hPalFadeFlags], a
	ret

UpdateHUD:
	ld hl, hVBlankFlags
	bit VBLANK_5_F, [hl]
	ret nz
	ld hl, hPalFadeFlags
	bit FADE_MODE_F, [hl]
	ret nz ; is fading in
	ldh a, [hHUDFlags]
	bit HUD_UPDATE_FIRST_ROW_F, a
	jr z, .skip_first_row
	hlbgcoord 6, 0, vBGMap1
	ld c, $0c
.loop_clear
	ld a, $7f
	ld [hli], a
	dec c
	jr nz, .loop_clear
	ldh a, [hHUDFlags]
	bit HUD_BOSS_BATTLE_F, a
	jr nz, .boss_hp

	ld hl, wScoreDigitTiles
	bcbgcoord 6, 0, vBGMap1
	ld d, $5
.loop_print_score
	ld a, [hli]
	ld [bc], a
	inc bc
	dec d
	jr nz, .loop_print_score
	ld a, "0"
	ldbgcoord 11, 0, vBGMap1
	jr .asm_1ffa

.boss_hp
	hlbgcoord 6, 0, vBGMap1
	ld a, [wBossHP]
	and a
	jr z, .asm_1ffa
	ld c, a
	ld a, $69 ; HP bar tile
.loop_boss_hp
	ld [hli], a
	dec c
	jr nz, .loop_boss_hp

.asm_1ffa
	ldh a, [hHUDFlags]
	res HUD_UPDATE_FIRST_ROW_F, a
	ldh [hHUDFlags], a
.skip_first_row
	ldh a, [hHUDFlags]
	bit HUD_UPDATE_LABEL_F, a
	jr z, .asm_202d
	res HUD_UPDATE_LABEL_F, a
	ldh [hHUDFlags], a
	bit HUD_BOSS_BATTLE_F, a
	jr nz, .asm_201e
	ld a, $7f
	ldbgcoord 2, 0, vBGMap1
	ld a, $6c
	ldbgcoord 3, 0, vBGMap1
	inc a
	ldbgcoord 4, 0, vBGMap1
	jr .asm_202d
.asm_201e
	ld a, $7f
	ldbgcoord 2, 0, vBGMap1
	ld a, $6a
	ldbgcoord 3, 0, vBGMap1
	ld a, $7f
	ldbgcoord 4, 0, vBGMap1

.asm_202d
	ldh a, [hHUDFlags]
	bit HUD_UPDATE_HP_F, a
	jr nz, .lives
	ld a, [wHP]
	ld c, a
	ld b, a
	hlbgcoord 6, 1, vBGMap1
	and a
	jr z, .no_filled_hp_bars
	ld a, $68
.loop_filled_bars
	ld [hli], a
	dec c
	jr nz, .loop_filled_bars
.no_filled_hp_bars
	ld a, [wMaxHP]
	sub b
	ld b, a
	jr z, .no_empty_hp_bars
	ld a, $6e
.loop_empty_bars
	ld [hli], a
	dec b
	jr nz, .loop_empty_bars
.no_empty_hp_bars
	ld a, $7f
	ld [hli], a

.lives
	ldh a, [hHUDFlags]
	bit HUD_UPDATE_LIVES_F, a
	ret z
	res HUD_UPDATE_LIVES_F, a
	ldh [hHUDFlags], a
	ld a, [wLives]
	dec a
	call GetDigits
	add "0"
	ldbgcoord 17, 1, vBGMap1 ; ones digit
	ld a, b
	add "0"
	ldbgcoord 16, 1, vBGMap1 ; tens digit
	ret

MACRO data_2070
	db BANK(\1)
	bigdw \1
	dw \2
ENDM

Data_2070::
	table_width 5
	data_2070 Gfx_8952, vTiles1 tile $2e ; GREEN_GREENS
	data_2070 Gfx_9266, vTiles1 tile $2e ; CASTLE_LOLOLO
	data_2070 Gfx_9b2c, vTiles1 tile $2e ; FLOAT_ISLANDS
	data_2070 Gfx_a3ee, vTiles1 tile $2e ; BUBBLY_CLOUDS
	data_2070 Gfx_ac49, vTiles1 tile $00 ; MT_DEDEDE
	assert_table_length NUM_STAGES

Data_2089::
	table_width 5
	data_2070 Gfx_291f5, vTiles1 tile $2e ; GREEN_GREENS
	data_2070 Gfx_29b0b, vTiles1 tile $2e ; CASTLE_LOLOLO
	data_2070 Gfx_2a3c1, vTiles1 tile $2e ; FLOAT_ISLANDS
	data_2070 Gfx_2ac79, vTiles1 tile $2e ; BUBBLY_CLOUDS
	data_2070 Gfx_ac49,  vTiles1 tile $00 ; MT_DEDEDE
	assert_table_length NUM_STAGES

MACRO data_20a2
	db BANK(\1)
	bigdw \1
ENDM

StageBlockTileMaps::
	table_width 3
	data_20a2 Data_c6e0 ; GREEN_GREENS
	data_20a2 Data_cac3 ; CASTLE_LOLOLO
	data_20a2 Data_c8d9 ; FLOAT_ISLANDS
	data_20a2 Data_ccff ; BUBBLY_CLOUDS
	data_20a2 Data_1b77c ; MT_DEDEDE
	assert_table_length NUM_STAGES

OBP0FadeInMasks:
	db $00, $40, $c0, $00 ; black
	db $01, $00, $00, $00 ; white

BGPAndOBP1FadeInMasks:
	db $40, $80, $c0, $00 ; black
	db $02, $01, $00, $00 ; white

; input:
; - c = bank
; - hl = source address
; - de = destination address
FarDecompress::
	ld a, [wROMBank]
	push af
	ld a, c
	bankswitch
	ld [rROMB0 + $100], a ; unnecessary
	call Decompress
	pop af
	bankswitch
	ret

; input:
; - hl = source address
; - de = destination address
Decompress::
	ld a, e
	ld [wd097 + 0], a
	ld a, d
	ld [wd097 + 1], a

.loop_compressed_data
	ld a, [hl]
	cp $ff
	ret z ; done
	and $e0
	cp $e0
	jr nz, .short_length

; long length
	ld a, [hl]
	add a
	add a
	add a ; *8
	and $e0
	push af
	ld a, [hli]
	and $03
	ld b, a
	ld a, [hli]
	ld c, a
	inc bc
	jr .got_length

.short_length
	push af
	ld a, [hli]
	and $1f
	ld c, a
	ld b, $00
	inc c
.got_length
	inc b
	inc c
	pop af
	bit 7, a
	jr nz, .is_lookback
	cp $20
	jr z, .repeat_byte
	cp $40
	jr z, .loop_repeat_bytes
	cp $60
	jr z, .increasing_sequence
.loop_literal_copy
	dec c
	jr nz, .continue_literal_copy
	dec b
	jp z, .loop_compressed_data
.continue_literal_copy
	ld a, [hli]
	call wDelayedCopyAToDEFunc
	jr .loop_literal_copy

.repeat_byte
	ld a, [hli]
.loop_repeat_byte
	dec c
	jr nz, .continue_repeat_byte
	dec b
	jp z, .loop_compressed_data
.continue_repeat_byte
	call wDelayedCopyAToDEFunc
	jr .loop_repeat_byte

.loop_repeat_bytes
	dec c
	jr nz, .continue_repeat_bytes
	dec b
	jp z, .done_repeat_bytes
.continue_repeat_bytes
	ld a, [hli]
	call wDelayedCopyAToDEFunc
	ld a, [hld]
	call wDelayedCopyAToDEFunc
	jr .loop_repeat_bytes
.done_repeat_bytes
	inc hl
	inc hl
	jr .loop_compressed_data

.increasing_sequence
	ld a, [hli]
.loop_increasing_sequence
	dec c
	jr nz, .continue_increasing_sequence
	dec b
	jp z, .loop_compressed_data
.continue_increasing_sequence
	call wDelayedCopyAToDEFunc
	inc a
	jr .loop_increasing_sequence

.is_lookback
	push hl
	push af
	ld a, [hli]
	ld l, [hl]
	ld h, a
	ld a, [wd097 + 0]
	add l
	ld l, a
	ld a, [wd097 + 1]
	adc h
	ld h, a
	pop af
	cp $80
	jr z, .loop_lookback
	cp $a0
	jr z, .loop_lookback_inverted
	cp $c0
	jr z, .loop_reverse_lookback

.loop_lookback
	dec c
	jr nz, .continue_lookback
	dec b
	jr z, .done_lookback
.continue_lookback
	ld a, [hli]
	ld [de], a
	inc de
	jr .loop_lookback

.loop_lookback_inverted
	dec c
	jr nz, .continue_lookback_inverted
	dec b
	jp z, .done_lookback
.continue_lookback_inverted
	ld a, [hli]
	push bc
	lb bc, 0, 8
.loop_invert_bits
	rra
	rl b
	dec c
	jr nz, .loop_invert_bits
	ld a, b
	pop bc
	ld [de], a
	inc de
	jr .loop_lookback_inverted

.loop_reverse_lookback
	dec c
	jr nz, .continue_reverse_lookback
	dec b
	jp z, .done_lookback
.continue_reverse_lookback
	ld a, [hld]
	ld [de], a
	inc de
	jr .loop_reverse_lookback

.done_lookback
	pop hl
	inc hl
	inc hl
	jp .loop_compressed_data

; unreferenced
Func_21a5:
	ld a, $cb
	ld [wDelayedCopyAToDEFunc + 0], a
	ld [wDelayedCopyAToDEFunc + 3], a
	ld a, $37
	ld [wDelayedCopyAToDEFunc + 1], a
	ld [wDelayedCopyAToDEFunc + 4], a
	call Decompress
	jp InitDelayedCopyAToDEFunc

; writes the following routine to wDelayedCopyAToDEFunc:
;	nop
;	nop
;	ld [de], a
;	nop
;	nop
;	inc de
;	ret
InitDelayedCopyAToDEFunc:
	ld hl, wDelayedCopyAToDEFunc
	xor a
	ld [hli], a ; nop
	ld [hli], a ; nop
	ld a, $12
	ld [hli], a ; ld [de], a
	xor a
	ld [hli], a ; nop
	ld [hli], a ; nop
	ld a, $13
	ld [hli], a ; inc de
	ld a, $c9
	ld [hl], a ; ret
	ret

; input:
; - bc = object slot
DestroyObject::
	ld hl, wObjectActiveStates
	add hl, bc
	ld [hl], OBJECT_NOT_ACTIVE
	ret

Func_21d5::
	ld hl, wObjectActiveStates
	add hl, bc
	ld [hl], 255
	ret

Func_21dc::
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	and a
	ret z
	ld [hl], 1
	ret

; input:
; - hl = anim script
; - de = motion script
; - bc = object slot
SetObjectScripts::
	push hl
	ld hl, wObjectMotionScriptPtrs
	add hl, bc
	add hl, bc
	ld a, e
	ld [hli], a
	ld [hl], d
	pop de
	ld hl, wObjectAnimScriptPtrs
	add hl, bc
	add hl, bc
	ld a, e
	ld [hli], a
	ld [hl], d
	jp Func_2419

; input:
; - a = SCENE_* constant
Func_21fb::
	ld [wScene], a
	ld a, $ff
	ld [wd096], a

	call ClearSprites

	ld a, [wROMBank]
	push af
	ld a, [wExtraGameEnabled]
	and a
	ld a, $07
	jr z, .asm_2214
	ld a, $0f
.asm_2214
	ld [wd3f0], a
	bankswitch
	ld d, $00
	ld a, [wScene]
	and a
	jr z, .asm_222b
	dec a
	ld hl, SceneObjectLists
	jr .asm_2249
.asm_222b
	ld hl, hKirbyFlags5
	bit KIRBY5F_STAGE_INTRO_F, [hl]
	jr z, .asm_223a
	ld hl, StageIntroObjectLists
	ld a, [wStage]
	jr .asm_2249
.asm_223a
	ld hl, LevelObjectLists
	ld a, [wStage]
	ld e, a
	add hl, de
	add hl, de ; *2
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wArea]
.asm_2249
	ld e, a
	add hl, de
	add hl, de
	add hl, de
	add hl, de ; *4
	ld a, [hli]
	ld [wLevelHorizontalObjectList + 0], a
	ld a, [hli]
	ld [wLevelHorizontalObjectList + 1], a
	ld a, [hli]
	ld [wLevelVerticalObjectList + 0], a
	ld a, [hl]
	ld [wLevelVerticalObjectList + 1], a
	pop af
	bankswitch

	call ClearAllObjects

	xor a
	ld [wd3e9], a
	ld [wd3ea], a
	ld [wd3eb], a
	ld [wd3ec], a
	ld [wLastLevelXSection], a
	ld [wLastLevelYSection], a
	ld [wPowerUpAttack], a
	ld [wd3c0], a
	ld [wEnemyScoreMultiplier], a
	ld [wd3c2], a
	ld [wDamageBlinkingCounter], a
	ld [wd3f8], a
	inc a ; a = $1
	ld hl, wBlinkingCounter
	ld [hli], a
	ld [hl], a ; wFlashingCounter

	ld a, [hEngineFlags]
	and ~(KABOOLA_BATTLE | HURT_PAL_EFFECT)
	ld [hEngineFlags], a

	ld a, [wLevelWidth]
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld a, l
	ld [wLevelWidthPx + 0], a
	ld a, h
	ld [wLevelWidthPx + 1], a
	ld a, [wScene]
	and a
	jr nz, .asm_22c5
	ld a, [hKirbyFlags5]
	and KIRBY5F_STAGE_INTRO
	jr nz, .asm_22c5
	ld hl, Data_1c14e
	lb de, $80, $80
	call CreateObject_Groups1And2
	jr c, .asm_22dd
.asm_22c5
	call Func_3199
	ld hl, wLastLevelXSection
	ld a, [wLevelXSection]
	cp [hl]
	jr nz, .asm_22c5
.asm_22d1
	call Func_3199
	ld hl, wLastLevelYSection
	ld a, [wLevelYSection]
	cp [hl]
	jr nz, .asm_22d1
.asm_22dd
	xor a
	ld [wd3f6], a
	ld [wd3cc], a
	ld hl, hKirbyFlags6
	bit KIRBY6F_UNK0_F, [hl]
	ret nz
	ld hl, hKirbyFlags5
	bit KIRBY5F_STAGE_INTRO_F, [hl]
	ret nz
	ld b, $00
	ld hl, wFoodPowerUpCounter
	ld a, [hli]
	or [hl]
	jr z, .asm_2305
	ld hl, hKirbyFlags6
	bit KIRBY6F_UNK6_F, [hl]
	jr z, .asm_2303
	call Func_3768
.asm_2303
	set 4, b
.asm_2305
	ld hl, wInvincibilityCounter
	ld a, [hli]
	or [hl]
	jr z, .asm_230e
	set 4, b
.asm_230e
	ld a, b
	ld [wd1a0 + OBJECT_SLOT_KIRBY], a
	xor a
	ld [wObjectPropertyFlags + OBJECT_SLOT_KIRBY], a
	ret

ClearObjectsExceptKirby::
	ld b, NUM_OBJECT_SLOTS - 1
	ld hl, wObjectActiveStates + OBJECT_GROUP_1_BEGIN
	jr ClearObjects

; clears wObjectActiveStates
ClearAllObjects::
	ld b, NUM_OBJECT_SLOTS
	ld hl, wObjectActiveStates
ClearObjects:
	xor a ; OBJECT_NOT_ACTIVE
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

; clears wConsumedItems
ClearConsumedItems::
	push hl
	push bc
	xor a
	ld b, MAX_NUM_STAGE_ITEMS / 8
	ld hl, wConsumedItems
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	pop bc
	pop hl
	ret

; input:
; - d = x position
; - e = y position
; - hl = scripts and object data
CreateObject_Groups1And2:
	ld c, OBJECT_SLOT_KIRBY
	ld b, OBJECT_GROUP_1_END
	jr CreateObject

; input:
; - d = x position
; - e = y position
; - hl = scripts and object data
CreateObject_Group1:
	ld c, OBJECT_GROUP_1_BEGIN
	ld b, OBJECT_GROUP_1_END
	jr CreateObject

; input:
; - d = x position
; - e = y position
; - hl = scripts and object data
CreateObject_Group2::
	ld c, OBJECT_GROUP_2_BEGIN
	ld b, OBJECT_GROUP_2_END
	jr CreateObject

; input:
; - d = x position
; - e = y position
; - hl = scripts and object data
CreateObject_Group3::
	ld c, OBJECT_GROUP_3_BEGIN
	ld b, OBJECT_GROUP_3_END
;	fallthrough

CreateObject:
	ld a, d
	swap a
	ld [wd3d6], a
	ld a, e
	swap a
	ld [wd3d7], a
	ld d, h
	ld e, l

	; find first non-zero entry in wObjectActiveStates
	ld a, LOW(wObjectActiveStates)
	add c
	ld l, a
	ld h, HIGH(wObjectActiveStates)
	incc h
.loop
	ld a, [hli]
	and a
	jr z, .found_empty
	inc c
	ld a, c
	cp b
	jr nz, .loop
	scf
	ret

.found_empty
	push de
	ld b, $00
	ld a, OBJECT_ACTIVE
	ld hl, wObjectActiveStates
	add hl, bc
	ld [hl], a

	xor a
	ld hl, wObjectXCoords
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hli], a
	ld a, [wd3d6]
	and $0f
	ld d, a ; low nybble
	ld a, [wd3d6]
	and $f0
	add $10
	ld [hli], a
	ld a, d
	adc $00
	ld [hl], a

	ld hl, wObjectYCoords
	add hl, bc
	add hl, bc
	add hl, bc
	xor a
	ld [hli], a
	ld a, [wd3d7]
	and $0f
	ld d, a ; low nybble
	ld a, [wd3d7]
	and $f0
	add $18
	ld [hli], a
	ld a, d
	adc $00
	ld [hl], a
	pop de
;	fallthrough

Func_23af::
	ld a, [wROMBank]
	push af
	ld a, [wd3f0]
	bankswitch
	ld a, [de]
	inc de
	ld hl, wObjectAnimScriptPtrs
	add hl, bc
	add hl, bc
	ld [hli], a
	ld a, [de]
	inc de
	ld [hl], a

	ld a, [de]
	inc de
	ld hl, wObjectMotionScriptPtrs
	add hl, bc
	add hl, bc
	ld [hli], a
	ld a, [de]
	inc de
	ld [hl], a

	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	push bc
	ld a, [de]
	ld [hli], a
	ld c, a
	inc de
	ld a, [de]
	ld [hl], a
	inc de
	ld h, a
	ld l, c
	pop bc
	push hl
	ld hl, wd3aa
	add hl, bc
	ld a, [de]
	ld [hl], a
	pop hl
	pop af
	bankswitch

	push hl
	ld a, [hl]
	ld hl, wObjectPropertyFlags
	add hl, bc
	ld [hl], a
	pop hl

REPT OBJ_HP
	inc hl
ENDR
	ld a, [hl] ; OBJ_HP
	ld hl, wObjectHPs
	add hl, bc
	ld [hl], a

	xor a
	ld hl, wd1a0
	add hl, bc
	ld [hl], a
	ld hl, wObjectStatuses
	add hl, bc
	ld [hl], a
	ld de, OAM_2d8b8
	ld hl, wSpriteOAMPtrs
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
;	fallthrough
Func_2419:
	ld hl, wObjectMotionScriptTimers
	add hl, bc
	ld [hl], 1
;	fallthrough
Func_241f::
	ld hl, wObjectAnimScriptTimers
	add hl, bc
	ld [hl], 1

	xor a
	ld hl, wd25a
	call .Clear
	ld hl, wd2fa
	call .Clear
	ld hl, wd23a
	call .Clear
	ld hl, wd2da
	call .Clear
	ld hl, wObjectUpdateFuncs
;	fallthrough
.Clear:
	add hl, bc
	add hl, bc
	ld [hli], a
	ld [hl], a
	xor a
	ret

DoCommonScriptCommand:
	cp $ef
	jp nc, .set_position_cmd
	cp SCRIPT_END
	jr nz, .jump_cmd
	ld hl, wObjectActiveStates
	add hl, bc
	xor a
	ld [hl], a
	dec a ; $ff
	ld [wScriptCommand], a
	ret

.jump_cmd
	cp SCRIPT_JUMP_ABS
	jr nz, .jump_relative_cmd
	jp SetScriptPtr

.jump_relative_cmd
	cp SCRIPT_JUMP_REL
	jr nz, .call_cmd
	ld a, [hl]
	ld d, $00
	ld e, a
	rlca
	jr nc, .positive_offset
	ld d, $ff
.positive_offset
	add hl, de
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.call_cmd
	cp SCRIPT_EXEC
	jr nz, .script_exec_arg
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ld h, d
	ld l, e
	jp .call_hl_bank01

.script_exec_arg
	cp SCRIPT_EXEC_ARG
	jr nz, .condition_cmd
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	push af
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ld h, d
	ld l, e
	pop af
	ld e, a

.call_hl_bank01
	ld a, [wROMBank]
	ld [wScriptBank], a
	push af
	ld a, $01
	bankswitch
	ld a, e
	call JumpHL
	pop af
	bankswitch
	ret

.condition_cmd
	cp SCRIPT_JUMP_IF_EQUAL
	jr nz, .jumptable_cmd
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
	cp [hl]
	jr nz, .skip_jump
	inc hl
	jp SetScriptPtr
.skip_jump
	ld de, $3
	add hl, de
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.jumptable_cmd
	cp SCRIPT_JUMPTABLE
	jr nz, .asm_24ed
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
.asm_24e5
	add a
	ld e, a
	ld d, $00
	add hl, de
	jp SetScriptPtr

.asm_24ed
	cp SCRIPT_ED
	jr nz, .set_update_func_cmd
	ld d, h
	ld e, l
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [de]
	inc a
	ld [hl], a
	inc de
	ld a, [de] ; useless
	ld a, e
	ld [wScriptPtr + 0], a
	ld a, d
	ld [wScriptPtr + 1], a
	ret

.set_update_func_cmd
	cp SCRIPT_SET_UPDATE_FUNC
	jr nz, .clear_update_func_cmd
	ld d, h
	ld e, l
	ld hl, wObjectUpdateFuncs
	add hl, bc
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	inc de
	ld hl, wObjectUpdateFuncArgs
	add hl, bc
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	inc de
	ld a, e
	ld [wScriptPtr + 0], a
	ld a, d
	ld [wScriptPtr + 1], a
	ret

.clear_update_func_cmd
	cp SCRIPT_CLEAR_UPDATE_FUNC
	jr nz, .set_position_cmd
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	xor a
	ld hl, wObjectUpdateFuncs
	add hl, bc
	add hl, bc
	ld [hli], a
	ld [hl], a
	ret

.set_position_cmd
	cp SCRIPT_SET_POSITION
	jr nz, .asm_2568
	ld d, h
	ld e, l
	ld hl, wObjectXCoords
	add hl, bc
	add hl, bc
	add hl, bc
	xor a
	ld [hli], a
	ld a, [de]
	ld [hli], a
	ld [hl], $00
	inc de
	ld hl, wObjectYCoords
	add hl, bc
	add hl, bc
	add hl, bc
	xor a
	ld [hli], a
	ld a, [de]
	ld [hli], a
	ld [hl], $00
	inc de
	ld a, e
	ld [wScriptPtr + 0], a
	ld a, d
	ld [wScriptPtr + 1], a
	ret

.asm_2568
	cp SCRIPT_POSITION_OFFSET
	jr nz, .asm_25a3
	push bc
	ld d, h
	ld e, l
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld b, $00
	ld a, [de]
	bit 7, a
	jr z, .asm_257d
	dec b ; $ff
.asm_257d
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a
	inc de
	pop bc
	push bc
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld b, $00
	ld a, [de]
	bit 7, a
	jr z, .asm_2593
	dec b ; $ff
.asm_2593
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a
	inc de
	ld a, e
	ld [wScriptPtr + 0], a
	ld a, d
	ld [wScriptPtr + 1], a
	pop bc
	ret

.asm_25a3
	cp SCRIPT_SET_REL_POS
	jr nz, .asm_260c
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a

	; sets relative position flag
	ld hl, wObjectPropertyFlags
	add hl, bc
	set PROPERTY_REL_POS_F, [hl]

	; translate its coordinates into
	; coordinates relative to the level
	ld a, [wSCX]
	and $0f
	ld e, a
	ld a, [wLevelXSection]
	dec a
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld a, l
	or e
	ld l, a
	push hl
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld e, [hl]
	ld d, $00
	pop hl
	add hl, de
	ld d, h
	ld e, l
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d

	ld a, [wSCY]
	and $0f
	ld e, a
	ld a, [wLevelYSection]
	dec a
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld a, l
	or e
	ld l, a
	push hl
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld e, [hl]
	ld d, $00
	pop hl
	add hl, de
	ld d, h
	ld e, l
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
	ret

.asm_260c
	cp SCRIPT_SET_ABS_POS
	jr nz, .set_cmd
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a

	; unsets relative position flag
	ld hl, wObjectPropertyFlags
	add hl, bc
	res PROPERTY_REL_POS_F, [hl]

	; overwrites coordinates with
	; its screen position
	ld hl, wObjectScreenXPositions
	add hl, bc
	ld a, [hl]
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], a
	ld hl, wObjectScreenYPositions
	add hl, bc
	ld a, [hl]
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], a
	ret

.set_cmd
	cp SCRIPT_SET_VALUE
	jr nz, .inc_cmd
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld [de], a
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.inc_cmd
	cp SCRIPT_INC_VALUE
	jr nz, .dec_cmd
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ld h, d
	ld l, e
	inc [hl]
	ret

.dec_cmd
	cp SCRIPT_DEC_VALUE
	jr nz, .jp_if_cmd
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ld h, d
	ld l, e
	dec [hl]
	ret

.jp_if_cmd
	cp SCRIPT_JUMP_IF_FLAGS
	jr nz, .asm_2699
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
	and [hl]
	cp [hl]
	jr nz, .asm_268d
.asm_267f
	inc hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, e
	ld [wScriptPtr + 0], a
	ld a, d
	ld [wScriptPtr + 1], a
	ret
.asm_268d
	inc hl
	inc hl
	inc hl
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.asm_2699
	cp SCRIPT_JUMP_IF_NOT_FLAGS
	jr nz, .asm_26a8
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
	and [hl]
	cp [hl]
	jr z, .asm_268d
	jr .asm_267f

.asm_26a8
	cp SCRIPT_SET_FLAGS
	jr nz, .asm_26bf
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
	and [hl]
	inc hl
	or [hl]
	ld [de], a
	inc hl
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.asm_26bf
	cp SCRIPT_JUMP_RANDOM
	jr nz, .asm_26d8
	call Random
	cp [hl]
	inc hl
	jr nc, .asm_26cd
	jp SetScriptPtr
.asm_26cd
	inc hl
	inc hl
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.asm_26d8
	cp SCRIPT_JUMPTABLE_RANDOM
	jr nz, .asm_26e4
	call Random
	and [hl]
	inc hl
	jp .asm_24e5

.asm_26e4
	cp SCRIPT_CREATE_OBJECT
	jr nz, .done
	push hl
	ld a, [wd3f0]
	push af
	ld a, [wROMBank]
	ld [wd3f0], a
	call Func_2708
	pop af
	ld [wd3f0], a
	pop hl
	ld de, 3 * $2
	add hl, de
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a

.done
	ret

Func_2708::
	push bc
	lb de, $0, $0
	call CreateObject_Group1
	jr nc, .created
	pop bc
	ret
.created
	ld d, b
	ld e, c
	pop bc

	; bc = original object slot
	; de = created object slot

	; copies wd200 from original to created objects
	ld hl, wd200
	add hl, bc
	add hl, bc
	ld a, [hli]
	push af
	ld a, [hl]
	ld hl, wd200 + $1
	add hl, de
	add hl, de
	ld [hld], a
	pop af
	ld [hl], a

	ld hl, wObjectPropertyFlags
	add hl, de
	bit PROPERTY_REL_POS_F, [hl]
	jr nz, CopyObjectCoordinates

	; copies only whole part of coordinates
	ld hl, wObjectScreenXPositions
	add hl, bc
	ld a, [hl]
	ld hl, wObjectScreenXPositions
	add hl, de
	ld [hl], a
	ld hl, wObjectXCoords + $1
	add hl, de
	add hl, de
	add hl, de
	ld [hli], a
	ld [hl], $00
	ld hl, wObjectScreenYPositions
	add hl, bc
	ld a, [hl]
	ld hl, wObjectScreenYPositions
	add hl, de
	ld [hl], a
	ld hl, wObjectYCoords + $1
	add hl, de
	add hl, de
	add hl, de
	ld [hli], a
	ld [hl], $00
	ret

; copies coordinates of object bc
; to coordinates of object de
; input:
; - bc = object slot to copy from
; - de = object slot to copy to
CopyObjectCoordinates::
	ld hl, wObjectXCoords
	call .CopyCoordinates
	ld hl, wObjectYCoords
	call .CopyCoordinates
	ld hl, wObjectScreenXPositions
	call .CopyObjDataByte
	ld hl, wObjectScreenYPositions
.CopyObjDataByte:
	push hl
	add hl, bc
	ld a, [hl]
	pop hl
	add hl, de
	ld [hl], a
	ret

.CopyCoordinates:
	push bc
	push hl
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	inc hl
	ld c, [hl]
	pop hl
	add hl, de
	add hl, de
	add hl, de
	ld [hli], a
	ld [hl], b
	inc hl
	ld [hl], c
	pop bc
	ret

SetScriptPtr:
	ld a, [hli]
	ld [wScriptPtr + 0], a
	ld a, [hl]
	ld [wScriptPtr + 1], a
	ret

DoMotionScriptCommand:
	inc hl
	cp SCRIPT_CALL_RANDOM
	jr nz, .asm_27a4
	call Random
	cp [hl]
	inc hl
	jr c, .asm_27ca
	inc hl
	inc hl
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.asm_27a4
	cp SCRIPT_CALLTABLE_RANDOM
	jr nz, .asm_27c6
	ld d, [hl]
	push de
	call Random
	and [hl]
	inc hl
	add a
	ld e, a
	ld d, $00
	add hl, de
	pop de
	push hl
	ld hl, wd23a
	add hl, bc
	add hl, bc
	ld a, $2 + $2 ; 2 bytes for this command, 2 bytes for first entry
	add d
	add d ; + val * 2
	ld d, a
	ld a, [wScriptPtr + 0]
	add d
	jr .asm_27d5

.asm_27c6
	cp SCRIPT_CALL
	jr nz, .asm_27e0
.asm_27ca
	push hl
	ld hl, wd23a
	add hl, bc
	add hl, bc
	ld a, [wScriptPtr + 0]
	add $03
.asm_27d5
	ld [hli], a
	ld a, [wScriptPtr + 1]
	adc $00
	ld [hl], a
	pop hl
	jp SetScriptPtr

.asm_27e0
	cp SCRIPT_RET
	jr nz, .asm_27ec
	ld hl, wd23a
	add hl, bc
	add hl, bc
	jp SetScriptPtr

.asm_27ec
	cp SCRIPT_SET_SCRIPTS
	jr nz, .asm_2813
	ld d, h
	ld e, l
	ld hl, wObjectAnimScriptPtrs
	add hl, bc
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	inc de
	ld a, [de]
	ld [wScriptPtr + 0], a
	inc de
	ld a, [de]
	ld [wScriptPtr + 1], a
	ld hl, wObjectAnimScriptTimers
	add hl, bc
	ld [hl], 1
	ld hl, wObjectMotionScriptTimers
	add hl, bc
	ld [hl], 1
	ret

.asm_2813
	cp SCRIPT_REPEAT
	jr nz, .asm_283e
	ld a, [hli]
	push hl
	push af
	ld hl, wd29a
	ld de, wd25a
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_282c
	ld hl, wd2aa
	ld de, wd27a
	add hl, bc
.asm_282c
	pop af
	ld [hl], a
	ld h, d
	ld l, e
	add hl, bc
	add hl, bc
	pop de
	ld a, e
	ld [hli], a
	ld [wScriptPtr + 0], a
	ld a, d
	ld [hl], a
	ld [wScriptPtr + 1], a
	ret

.asm_283e
	cp SCRIPT_REPEAT_END
	jr nz, .asm_286b
	push hl
	ld hl, wd2aa
	ld de, wd27a
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_2855
	ld hl, wd29a
	ld de, wd25a
	add hl, bc
.asm_2855
	dec [hl]
	jr z, .asm_2861
	ld h, d
	ld l, e
	add hl, bc
	add hl, bc
	call SetScriptPtr
	pop hl
	ret
.asm_2861
	pop hl
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.asm_286b
	call DoCommonScriptCommand
	ret

DoAnimScriptCommand:
	inc hl
	cp SCRIPT_CALL_RANDOM
	jr nz, .asm_2886
	call Random
	cp [hl]
	inc hl
	jr c, .asm_28ac
	inc hl
	inc hl
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.asm_2886
	cp SCRIPT_CALLTABLE_RANDOM
	jr nz, .asm_28a8
	ld d, [hl]
	push de
	call Random
	and [hl]
	inc hl
	add a
	ld e, a
	ld d, $00
	add hl, de
	pop de
	push hl
	ld hl, wd2da
	add hl, bc
	add hl, bc
	ld a, $04
	add d
	add d
	ld d, a
	ld a, [wScriptPtr + 0]
	add d
	jr .asm_28b7

.asm_28a8
	cp SCRIPT_CALL
	jr nz, .asm_28c2
.asm_28ac
	push hl
	ld hl, wd2da
	add hl, bc
	add hl, bc
	ld a, [wScriptPtr + 0]
	add $03
.asm_28b7
	ld [hli], a
	ld a, [wScriptPtr + 1]
	adc 0
	ld [hl], a
	pop hl
	jp SetScriptPtr

.asm_28c2
	cp SCRIPT_RET
	jr nz, .asm_28ce
	ld hl, wd2da
	add hl, bc
	add hl, bc
	jp SetScriptPtr

.asm_28ce
	cp SCRIPT_SET_SCRIPTS
	jr nz, .asm_28f3
	ld a, [hli]
	ld [wScriptPtr + 0], a
	ld a, [hli]
	ld [wScriptPtr + 1], a
	ld d, h
	ld e, l
	ld hl, wObjectMotionScriptPtrs
	add hl, bc
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	ld hl, wObjectAnimScriptTimers
	add hl, bc
	ld [hl], 1
	ld hl, wObjectMotionScriptTimers
	add hl, bc
	ld [hl], 1
	ret

.asm_28f3
	cp SCRIPT_REPEAT
	jr nz, .asm_291e
	ld a, [hli]
	push hl
	push af
	ld hl, wd33a
	ld de, wd2fa
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_290c
	ld hl, wd34a
	ld de, wd31a
	add hl, bc
.asm_290c
	pop af
	ld [hl], a
	ld h, d
	ld l, e
	add hl, bc
	add hl, bc
	pop de
	ld a, e
	ld [hli], a
	ld [wScriptPtr + 0], a
	ld a, d
	ld [hl], a
	ld [wScriptPtr + 1], a
	ret

.asm_291e
	cp SCRIPT_REPEAT_END
	jr nz, .asm_294b
	push hl
	ld hl, wd34a
	ld de, wd31a
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_2935
	ld hl, wd33a
	ld de, wd2fa
	add hl, bc
.asm_2935
	dec [hl]
	jr z, .asm_2941
	ld h, d
	ld l, e
	add hl, bc
	add hl, bc
	call SetScriptPtr
	pop hl
	ret
.asm_2941
	pop hl
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ret

.asm_294b
	call DoCommonScriptCommand
	ret

; if $70 <= a < $90, then return
; corresponding entry in PredefinedVelocities
; otherwise, return a << 5
; this means velocities in the interval [14, 18[ cannot be used
; input:
; - a = either entry in PredefinedVelocities or a velocity value
; output:
; - de = velocity
SetObjectVelocity::
	cp $70
	jr c, .use_input_value
	cp $90
	jr nc, .use_input_value
	; $70 <= a < $90
	sub $70
	ld hl, PredefinedVelocities
	add a ; *2
	add l
	ld l, a
	ld a, h
	adc 0
	ld h, a
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ret

.use_input_value
	; a < $70 || a >= $90
	ld d, a
	ld e, $00
	sra d
	rr e
	sra d
	rr e
	sra d
	rr e ; /8
	ret

PredefinedVelocities:
	dw        0.00 ; VEL_RIGHT_0_00   | VEL_DOWN_0_00
	dw  DIV(1, 64) ; VEL_RIGHT_1_64TH | VEL_DOWN_1_64TH
	dw  DIV(1, 32) ; VEL_RIGHT_1_32TH | VEL_DOWN_1_32TH
	dw  DIV(1, 16) ; VEL_RIGHT_1_16TH | VEL_DOWN_1_16TH
	dw  DIV(1,  8) ; VEL_RIGHT_1_8TH  | VEL_DOWN_1_8TH
	dw  DIV(1,  4) ; VEL_RIGHT_0_25   | VEL_DOWN_0_25
	dw        0.50 ; VEL_RIGHT_0_50   | VEL_DOWN_0_50
	dw        0.75 ; VEL_RIGHT_0_75   | VEL_DOWN_0_75
	dw        1.00 ; VEL_RIGHT_1_00   | VEL_DOWN_1_00
	dw        1.25 ; VEL_RIGHT_1_25   | VEL_DOWN_1_25
	dw        2.00 ; VEL_RIGHT_2_00   | VEL_DOWN_2_00
	dw        3.00 ; VEL_RIGHT_3_00   | VEL_DOWN_3_00
	dw        4.00 ; VEL_RIGHT_4_00   | VEL_DOWN_4_00
	dw        6.00 ; VEL_RIGHT_6_00   | VEL_DOWN_6_00
	dw        8.00 ; VEL_RIGHT_8_00   | VEL_DOWN_8_00
	dw       16.00 ; VEL_RIGHT_16_00  | VEL_DOWN_16_00

	dw       -0.00 ; VEL_LEFT_0_00    | VEL_UP_0_00
	dw -DIV(1, 64) ; VEL_LEFT_1_64TH  | VEL_UP_1_64TH
	dw -DIV(1, 32) ; VEL_LEFT_1_32TH  | VEL_UP_1_32TH
	dw -DIV(1, 16) ; VEL_LEFT_1_16TH  | VEL_UP_1_16TH
	dw -DIV(1,  8) ; VEL_LEFT_1_8TH   | VEL_UP_1_8TH
	dw -DIV(1,  4) ; VEL_LEFT_0_25    | VEL_UP_0_25
	dw       -0.50 ; VEL_LEFT_0_50    | VEL_UP_0_50
	dw       -0.75 ; VEL_LEFT_0_75    | VEL_UP_0_75
	dw       -1.00 ; VEL_LEFT_1_00    | VEL_UP_1_00
	dw       -1.25 ; VEL_LEFT_1_25    | VEL_UP_1_25
	dw       -2.00 ; VEL_LEFT_2_00    | VEL_UP_2_00
	dw       -3.00 ; VEL_LEFT_3_00    | VEL_UP_3_00
	dw       -4.00 ; VEL_LEFT_4_00    | VEL_UP_4_00
	dw       -6.00 ; VEL_LEFT_6_00    | VEL_UP_6_00
	dw       -8.00 ; VEL_LEFT_8_00    | VEL_UP_8_00
	dw      -16.00 ; VEL_LEFT_16_00   | VEL_UP_16_00

; c = object slot
ExecuteObjectScripts:
	ld a, c
	cp OBJECT_GROUP_2_BEGIN
	jr nc, .group_2
	ld hl, wObjectStatuses
	add hl, bc
	bit OBJSTAT_UNK1_F, [hl]
	ret nz
.group_2
	ld a, c
	and a
	jr nz, .not_kirby
	ld hl, hEngineFlags
	bit PAUSE_ANIMATION_F, [hl]
	jr nz, .pause_animation_active
.not_kirby
	ld hl, hKirbyFlags4
	bit KIRBY4F_PAUSED_F, [hl]
	ret nz
.pause_animation_active
	call CanObjMove
	ret c

; motion script
	ld a, [wExtraGameEnabled]
	and a
	ld a, BANK("Motion Scripts Normal")
	jr z, .asm_29e2
	ld a, BANK("Motion Scripts Extra")
.asm_29e2
	bankswitch
	ld hl, wObjectMotionScriptTimers
	add hl, bc
	ld a, [hl]
	and a
	jp z, .anim_script ; permanent motion
	dec a ; countdown
	jr z, .asm_29f8
	ld [hl], a
	jp .anim_script
.asm_29f8
	ld hl, wObjectMotionScriptPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wScriptPtr + 0], a
	ld a, [hl]
	ld [wScriptPtr + 1], a
.asm_2a05
	ld a, [wScriptPtr + 0]
	ld l, a
	ld a, [wScriptPtr + 1]
	ld h, a
	ld a, [hl]
	ld [wScriptCommand], a
	cp SCRIPT_COMMANDS_BEGIN
	jr c, .set_velocities
	cp SCRIPT_DELAY
	jr nz, .asm_2a2b
	inc hl
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ld hl, wObjectMotionScriptTimers
	add hl, bc
	ld [hl], d
	jr .asm_2a73
.asm_2a2b
	call DoMotionScriptCommand
	ld a, [wScriptCommand]
	cp $ff
	jr nz, .asm_2a05
	ld a, $01
	bankswitch
	ret

.set_velocities
	ld a, [wScriptCommand]
	ld hl, wObjectMotionScriptTimers
	add hl, bc
	ld [hl], a
	ld a, [wScriptPtr + 0]
	ld l, a
	ld a, [wScriptPtr + 1]
	ld h, a
	inc hl

	; set x velocity
	ld a, [hli]
	push hl
	call SetObjectVelocity
	ld hl, wObjectXVels
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
	pop hl

	; set y velocity
	ld a, [hli]
	push hl
	call SetObjectVelocity
	ld hl, wObjectYVels
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
	pop hl

	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a

.asm_2a73
	ld a, [wScriptPtr + 0]
	ld hl, wObjectMotionScriptPtrs
	add hl, bc
	add hl, bc
	ld [hli], a
	ld a, [wScriptPtr + 1]
	ld [hl], a

.anim_script
	ld a, [wExtraGameEnabled]
	and a
	ld a, BANK("Animation Scripts Normal")
	jr z, .asm_2a8a
	ld a, BANK("Animation Scripts Extra")
.asm_2a8a
	bankswitch
	ld hl, wObjectAnimScriptTimers
	add hl, bc
	ld a, [hl]
	and a
	ret z ; inactive
	dec a ; countdown
	jr z, .read_command
	ld [hl], a
	ret
.read_command
	ld hl, wObjectAnimScriptPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wScriptPtr + 0], a
	ld a, [hl]
	ld [wScriptPtr + 1], a
.asm_2aa9
	ld a, [wScriptPtr + 0]
	ld l, a
	ld a, [wScriptPtr + 1]
	ld h, a
	ld a, [hl]
	ld [wScriptCommand], a
	cp SCRIPT_COMMANDS_BEGIN
	jr c, .duration
	cp SCRIPT_DELAY
	jr nz, .read_cmd
	inc hl
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	ld hl, wObjectAnimScriptTimers
	add hl, bc
	ld [hl], d
	jr .asm_2b18
.read_cmd
	call DoAnimScriptCommand
	ld a, [wScriptCommand]
	cp $ff
	ret z ; animation ended
	jr .asm_2aa9

.duration
	ld a, [wScriptCommand]
	ld hl, wObjectAnimScriptTimers
	add hl, bc
	ld [hl], a
	ld a, [wScriptPtr + 0]
	ld l, a
	ld a, [wScriptPtr + 1]
	ld h, a
	inc hl
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
	inc hl
	ld a, [hl]
	cp $ff
	jr z, .asm_2b06
	ld d, h
	ld e, l
	dec de
	ld a, [de]
	ld hl, wSpriteOAMPtrs
	add hl, bc
	add hl, bc
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
.asm_2b06
	ld a, [wScriptPtr + 0]
	ld l, a
	ld a, [wScriptPtr + 1]
	ld h, a
	inc hl
	inc hl
	ld a, l
	ld [wScriptPtr + 0], a
	ld a, h
	ld [wScriptPtr + 1], a
.asm_2b18
	ld a, [wScriptPtr + 0]
	ld hl, wObjectAnimScriptPtrs
	add hl, bc
	add hl, bc
	ld [hli], a
	ld a, [wScriptPtr + 1]
	ld [hl], a
	ret

; input:
; - bc = object slot
UpdateObject:
	ld hl, hKirbyFlags4
	bit KIRBY4F_PAUSED_F, [hl]
	jp nz, .handle_screen_position

	; assume it's not in view
	ld hl, wd1a0
	add hl, bc
	res OBJFLAG_IN_VIEW_F, [hl]

	ld hl, wObjectStatuses
	add hl, bc
	bit OBJSTAT_UNK1_F, [hl]
	jp nz, .skip_velocities
	call CanObjMove
	jp c, .skip_velocities

	ld de, wObjectXCoords
	ld hl, wObjectXVels
	call ApplyObjectVelocity

	ld hl, hEngineFlags
	bit ENGINEF_XWARP_F, [hl]
	jr z, .y_velocity
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_REL_POS_F, [hl]
	jr z, .y_velocity
	ld a, [wLevelWidthPx + 0]
	ld e, a
	ld a, [wLevelWidthPx + 1]
	ld d, a
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	sub e
	ld a, [hl]
	sbc d
	jr c, .y_velocity
	bit 7, [hl]
	jr nz, .warp_around_right
; warp around on left
	dec hl
	ld a, [hl]
	sub e
	ld [hli], a
	ld a, [hl]
	sbc d
	jr .asm_2b81
.warp_around_right
	dec hl
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
.asm_2b81
	ld [hl], a

.y_velocity
	ld de, wObjectYCoords
	ld hl, wObjectYVels
	call ApplyObjectVelocity

.skip_velocities
	ld hl, wd3cc
	bit 0, [hl]
	jp nz, .gravity
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_REL_POS_F, [hl]
	jr z, .asm_2bf9
	ld hl, hEngineFlags
	bit ENGINEF_XWARP_F, [hl]
	jr nz, .asm_2bca
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	swap a
	and $0f
	ld e, a
	ld a, [hl]
	swap a
	and $f0
	or e
	ld e, a
	; e = obj level x section
	ld a, [wLevelXSection]
	add 14
	cp e
	jr c, .outside_active_area
	sub 14 + 6
	jr nc, .asm_2bc2
	xor a ; minimum 0
.asm_2bc2
	cp e
	jr z, .asm_2bca
	jr c, .asm_2bca
.outside_active_area
	; if outside active area, then destroy it
	jp DestroyObject

.asm_2bca
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_REL_POS_F, [hl]
	jr z, .gravity
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	swap a
	and $0f
	ld e, a
	ld a, [hl]
	swap a
	and $f0
	or e
	ld e, a
	; e = obj level y section
	ld a, [wLevelYSection]
	add 12
	cp e
	jr c, .outside_active_area
	sub 12 + 6
	jr nc, .asm_2bf2
	xor a ; minimum 0
.asm_2bf2
	cp e
	jr z, .gravity
	jr nc, .outside_active_area
	jr .gravity

.asm_2bf9
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hl]
	cp SCRN_X + 8
	jr nc, .outside_active_area
	ld d, SCRN_Y
	ld a, [wScene]
	and a
	jr z, .asm_2c0e
	ld d, SCRN_Y + 26
.asm_2c0e
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hl]
	cp d
	jr nc, .outside_active_area

.gravity
	ld hl, wObjectPropertyFlags
	add hl, bc
	ld a, [hl]
	bit PROPERTY_GRAVITY_F, a
	jr z, .not_affected_by_gravity
	push af
	call ApplyGravityToObject
	pop af
.not_affected_by_gravity
	bit PROPERTY_SINKABLE_F, a
	jr z, .handle_screen_position
	call Func_2e20
	and a
	jr z, .handle_screen_position
	cp $06
	jr nz, .zero_y_velocity
	; a == $6
	ld hl, wObjectYVels
	add hl, bc
	add hl, bc
	ld [hl], LOW(0.40)
	inc hl
	xor a ; HIGH(0.40)
	ld [hl], a

; zero x velocity
	ld hl, wObjectXVels
	add hl, bc
	add hl, bc
	ld [hli], a
	ld [hl], a
	ld hl, wObjectPropertyFlags
	add hl, bc
	set PROPERTY_PRIORITY_F, [hl]
	jr .handle_screen_position

.zero_y_velocity
	ld hl, wObjectYVels
	add hl, bc
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, wObjectStatuses
	add hl, bc
	set OBJSTAT_UNK6_F, [hl]

.handle_screen_position
	ld d, b
	ld e, c
	ld hl, wObjectPropertyFlags
	add hl, de
	bit PROPERTY_REL_POS_F, [hl]
	jr z, .abs_position
	call CalculateObjScreenPosition_Relative
	jr nc, .check_obj_within_limits
	ret
.abs_position
	call CalculateObjScreenPosition_Absolute

.check_obj_within_limits
	push bc
	ld b, SCRN_Y + 32
	ld a, [wScene]
	and a
	jr nz, .got_y_limit ; in a scene
	; inside a level
	ld b, SCRN_Y
	ld hl, hKirbyFlags5
	bit KIRBY5F_STAGE_INTRO_F, [hl]
	jr z, .got_y_limit
	ld a, [wStage]
	cp MT_DEDEDE
	jr z, .set_y_limit_158
	; don't render object if x < 24 or x >= 152
	ld hl, wObjectScreenXPositions
	add hl, de
	ld a, [hl]
	cp 24
	jr c, .exit
	cp 152
	jr nc, .exit
.set_y_limit_158
	ld b, 158
.got_y_limit
	ld hl, wObjectScreenYPositions
	add hl, de
	ld a, [hl]
	cp b
	jr nc, .exit ; y >= b
	pop bc

	; set object as in view
	ld hl, wd1a0
	add hl, de
	set OBJFLAG_IN_VIEW_F, [hl]

	ld hl, wObjectPropertyFlags
	add hl, de
	ld a, [hl]
	and OAMF_PAL1 | OAMF_PRI
	ld [wOAMFlagsOverride], a
	ld hl, hKirbyFlags5
	bit KIRBY5F_UNK5_F, [hl]
	jr nz, .load_sprite
	ld hl, wd1a0
	add hl, de
	ld a, [wObjectFlashBlinkFlags]
	bit BLINK_FLAG_F, a
	jr nz, .skip_blinking
	bit OBJFLAG_BLINKING_F, [hl]
	ret nz ; exit
.skip_blinking
	bit FLASH_FLAG_F, a
	jr nz, .load_sprite ; skip flashing
	bit OBJFLAG_FLASHING_F, [hl]
	jr z, .load_sprite ; not flashing
	; use alternate palette
	ld a, [wOAMFlagsOverride]
	xor OAMF_PAL1 ; flip pal number
	ld [wOAMFlagsOverride], a
.load_sprite
	ld a, [wOAMFlagsOverride]
	ld hl, wSpriteOAMPtrs
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld h, [hl]
	ld l, e
	jp LoadSprite
.exit
	pop bc
	ret

; returns carry if object cannot move
; input:
; - c = object slot
CanObjMove:
	ld a, c
	and a
	jr z, .no_carry ; is Kirby
	ld hl, wClearScreenFlags
	bit CLEAR_UNK3_F, [hl]
	jr z, .no_carry
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_2_F, [hl]
	jr nz, .no_carry
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	add OBJ_UNK5
	ld h, [hl]
	incc h
	ld l, a
	bit 0, [hl]
	jr nz, .no_carry
	scf
	ret
.no_carry
	xor a
	ret

; adds the bc-th word (velocity) in [hl]
; to the bc-th 3-byte value (coordinate) in [de]
; input:
; - hl = object velocities
; - de = object coordinates
; - bc = object slot
ApplyObjectVelocity:
	push hl
	ld h, d
	ld l, e
	add hl, bc
	add hl, bc
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	add hl, bc
	add hl, bc
	ld a, [de]
	add [hl]
	ld [de], a
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	ld [de], a
	inc de
	ld a, $00
	bit 7, [hl]
	jr z, .positive
	dec a ; $ff
.positive
	ld h, a
	ld a, [de]
	adc h
	ld [de], a
	ret

; for objects with PROPERTY_REL_POS, their coordinates
; are relative to the level and need to be
; translated to screen position
; output:
; - bc = screen position
; - carry set if outside view
CalculateObjScreenPosition_Relative:
	xor a
	ld [wObjOutsideView], a

	; update object's screen position
	push de
	ld a, [wSCX]
	and $0f
	ld d, a
	ld a, [wLevelXSection]
	dec a
	swap a
	ld e, a
	and $0f
	ld c, a
	ld [wd3dc], a
	ld a, e
	and $f0
	or d
	ld b, a
	ld [wd3db], a
	pop de
	ld hl, wObjectXCoords + $1
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	sub b
	ld b, a
	push af
	push hl
	ld hl, wObjectScreenXPositions
	add hl, de
	ld [hl], b
	pop hl
	pop af
	ld a, [hld]
	sbc c
	jr nz, .asm_2d69
	ld a, b
	cp SCRN_X + 16
	jr c, .y_position
.asm_2d69
	ld a, [hEngineFlags]
	bit ENGINEF_XWARP_F, a
	jr z, .outside_view
	ld a, [wd3db]
	ld b, a
	ld a, [wd3dc]
	ld c, a
	push de
	ld d, h
	ld e, l
	ld a, [wLevelWidth]
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	; hl = level width in px
	; add object's x coord to hl
	ld a, [de]
	add l
	ld l, a
	inc de
	ld a, [de]
	adc h
	ld h, a
	pop de
	ld a, l
	sub b
	ld b, a
	push af
	push hl
	ld hl, wObjectScreenXPositions
	add hl, de
	ld [hl], a
	pop hl
	pop af
	ld a, h
	sbc c
	jr nz, .outside_view
	ld a, b
	cp SCRN_X + 16
	jr c, .y_position
.outside_view
	call .SetObjOutsideView

.y_position
	; update object's screen position
	push bc
	push de
	ld a, [wSCY]
	and $0f
	ld d, a
	ld a, [wLevelYSection]
	dec a
	swap a
	ld e, a
	and $0f
	ld c, a
	ld a, e
	and $f0
	or d
	ld b, a
	pop de
	ld hl, wObjectYCoords + $1
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	sub b
	ld b, a
	push af
	push hl
	ld hl, wObjectScreenYPositions
	add hl, de
	ld [hl], b
	pop hl
	pop af
	ld a, [hl]
	sbc c
	call nz, .SetObjOutsideView
	ld a, b
	pop bc
	ld c, a
	cp SCRN_Y
	call nc, .SetObjOutsideView
	ld a, [wObjOutsideView]
	and a
	ret z
	; outside view, return carry set
	scf
	ret

.SetObjOutsideView:
	push af
	ld a, TRUE
	ld [wObjOutsideView], a
	pop af
	ret

; for objects without PROPERTY_REL_POS, their coordinates
; are absolute and correspond to their screen position
; output:
; - bc = screen position
CalculateObjScreenPosition_Absolute:
	ld hl, wObjectXCoords + $1
	add hl, de
	add hl, de
	add hl, de
	ld b, [hl]
	ld hl, wObjectScreenXPositions
	add hl, de
	ld [hl], b
	ld hl, wObjectYCoords + $1
	add hl, de
	add hl, de
	add hl, de
	ld c, [hl]
	ld hl, wObjectScreenYPositions
	add hl, de
	ld [hl], c
	ret

; adds 0.14 to the y velocity of the bc-th object
; caps this velocity to 2.5
ApplyGravityToObject:
	ld hl, wObjectYVels
	add hl, bc
	add hl, bc
	ld a, [hl]
	add 0.14
	ld [hli], a
	jr nc, .no_overflow
	inc [hl]
.no_overflow
	dec hl
	ld a, [hli]
	cp LOW(2.5)
	ld a, [hl]
	cp HIGH(2.5)
	jr c, .done
	ld a, HIGH(2.5)
	ld [hld], a
	ld a, LOW(2.5)
	ld [hl], a
.done
	ret

Func_2e20:
	ld hl, wd1a0
	add hl, bc
	bit OBJFLAG_INHALED_F, [hl]
	jr z, .not_inhaled
	xor a
	ret
.not_inhaled
	push bc
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, -$8
	add hl, de
	bit 7, h
	jr z, .no_x_wrap
	; wrap around
	ld a, [wLevelWidthPx + 0]
	ld e, a
	ld a, [wLevelWidthPx + 1]
	ld d, a
	add hl, de
.no_x_wrap
	call DivideHLBy16
	push af
	ld a, [wLevelWidth]
	ld d, a
	pop af
	; a = x coordinate in blocks
	cp d
	jr c, .asm_2e52
	sub d
.asm_2e52
	ld d, a
	push de
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, -$10
	ld a, c
	cp OBJECT_GROUP_2_BEGIN
	jr nc, .asm_2e71
	; is from group 1
	ld de, -$8
	ld a, [wd3c0]
	and a
	jr z, .asm_2e71
	ld de, $0
.asm_2e71
	add hl, de
	call DivideHLBy16
	pop de
	; a = y coordinate in blocks
	ld e, a
	call GetLevelBlock
	call GetLevelBlockTypeFromID
	pop bc
	ret

; input:
; - d = x block
; - e = y block
; ouptut:
; - e = corresponding block in wLevelBlockMap
GetLevelBlock::
	ld a, [wLevelWidth]
	ld b, a
	call FixedPointMultiply
	; bc = wLevelWidth * e
	ld hl, wLevelBlockMap
	add hl, bc
	ld e, d
	ld d, $00
	add hl, de
	ld e, [hl]
	ret

GetLevelBlockTypeFromID:
	ld hl, wBlockTypesByID
	add hl, de
	ld a, [hl]
	ret

; input:
; - hl = value to divide
; output:
; - a = result
DivideHLBy16::
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld a, h ; grab upper byte only
	; a = (hl * 16) / 256 = hl / 16
	ret

UpdateObjects::
	ld a, [wROMBank]
	push af
	ld a, $01
	bankswitch

	call TickPowerUpCounters

	; clears all enemies if clear screen flag was set
	ld hl, wClearScreenFlags
	bit CLEAR_ACTIVE_F, [hl]
	call nz, ClearAllEnemies

	; run scripts of each active object
	ld b, NUM_OBJECT_SLOTS
	ld c, OBJECT_SLOT_KIRBY
.loop_objects_1
	push bc
	ld b, $00
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next_object
	cp $ff
	jr z, .next_object
	dec a
	jr z, .run_scripts
	ld [hl], a
	jr .next_object
.run_scripts
	call ExecuteObjectScripts
.next_object
	pop bc
	inc c
	dec b
	jr nz, .loop_objects_1

	ld hl, hKirbyFlags4
	bit KIRBY4F_PAUSED_F, [hl]
	jr nz, .skip_update_funcs

	; run update functions of each active object
	ld a, [wROMBank]
	push af
	ld a, $05
	bankswitch
	ld b, NUM_OBJECT_SLOTS
	ld c, OBJECT_SLOT_KIRBY
.loop_objects_2
	push bc
	ld b, $00
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	cp OBJECT_ACTIVE
	jr nz, .skip_execution
	ld hl, wObjectUpdateFuncs
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h
	jr z, .skip_execution
	call JumpHL
.skip_execution
	pop bc
	inc c
	dec b
	jp nz, .loop_objects_2
	pop af
	bankswitch

	call UpdateHurtEnemies

.skip_update_funcs
	ld b, NUM_OBJECT_SLOTS
	ld c, OBJECT_SLOT_KIRBY
.loop_objects_3
	push bc
	ld b, $00
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	cp OBJECT_ACTIVE
	call z, UpdateObject
	pop bc
	inc c
	dec b
	jr nz, .loop_objects_3
	pop af
	bankswitch
	ret

JumpHL:
	jp hl

UpdateHurtEnemies:
	; tick down hurt counter
	ld a, [wEnemyHurtCounter]
	and a
	jr z, .skip
	dec a
	ld [wEnemyHurtCounter], a
	ld hl, hEngineFlags
	bit HURT_PAL_EFFECT_F, [hl]
	jr z, .shake

; change pal effect
	ld a, [wEnemyHurtCounter]
	and a
	ret nz
	ld a, [wEnemyHurtObjectIndex]
	ld e, a
	ld d, $00
	ld hl, wObjectPropertyFlags
	add hl, de
	res PROPERTY_PAL_F, [hl]
	ret

.shake
	push bc
	ld e, LOW(.XOffsets)
	add e
	ld e, a
	ld d, HIGH(.XOffsets)
	incc d
	ld a, [de]
	ld e, a
	ld d, 0
	bit 7, a
	jr z, .non_negative_x
	dec d ; -1
.non_negative_x
	ld a, [wEnemyHurtObjectIndex]
	ld c, a
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	pop bc
	push bc
	ld a, [wEnemyHurtCounter]
	ld e, LOW(.YOffsets)
	add e
	ld e, a
	ld d, HIGH(.YOffsets)
	incc d
	ld a, [de]
	ld e, a
	ld d, 0
	bit 7, a
	jr z, .non_negative_y
	dec d ; -1
.non_negative_y
	ld a, [wEnemyHurtObjectIndex]
	ld c, a
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	pop bc
.skip
	ret

.XOffsets:
	db -1, -1,  1,  1, -1, -1,  1,  1,  1, -1, -2, -2,  2,  2, -2, -2,  2,  2,  2, -2, -1, -1,  1,  1, -1, -1,  1,  1,  1, -1

.YOffsets:
	db -1,  1,  1,  1, -1, -1, -1,  1,  1, -1, -2,  2,  2,  2, -2, -2, -2,  2,  2, -2, -1,  1,  1,  1, -1, -1, -1,  1,  1, -1

; handles ticking down both Invincibility and Mint Leaf counters
TickPowerUpCounters:
	ld a, [hKirbyFlags4]
	bit KIRBY4F_PAUSED_F, a
	ret nz
	ld a, [hKirbyFlags5]
	bit KIRBY5F_UNK5_F, a
	ret nz
	call .RestoreLevelMusicWhenCounterIsLow
	ld a, [wDamageBlinkingCounter]
	and a
	jr z, .skip_reset_blinking
	dec a
	ld [wDamageBlinkingCounter], a
	jr nz, .skip_reset_blinking
	ld hl, wd1a0 + OBJECT_SLOT_KIRBY
	res OBJFLAG_BLINKING_F, [hl]
.skip_reset_blinking
	call .TickInvincibilityCounter
	ld a, [hEngineFlags]
	bit KABOOLA_BATTLE_F, a
	ret nz ; skip rest of routine
	ld hl, wFoodPowerUpCounter
	call .TickCounter
	ret nz
	; turn off flashing and blinking
	ld a, [wd1a0 + OBJECT_SLOT_KIRBY]
	and ~(OBJFLAG_FLASHING | OBJFLAG_BLINKING)
	ld [wd1a0 + OBJECT_SLOT_KIRBY], a
	ld hl, wPowerUpAttack
	bit POWERUP_MINT_LEAF_F, [hl]
	jr z, .asm_3030
	ld hl, hKirbyFlags2
	set KIRBY2F_SPIT_F, [hl]
	ld hl, hPalFadeFlags
	set SCROLLINGF_UNK3_F, [hl]
	ld a, [hEngineFlags]
	and ~(KABOOLA_BATTLE | HURT_PAL_EFFECT)
	ld [hEngineFlags], a
.asm_3030
	ld a, [hKirbyFlags6]
	and KIRBY6F_UNK0 | KIRBY6F_UNK1 | KIRBY6F_UNK7
	ld [hKirbyFlags6], a
	jr .clear_kirby_flashing

.TickInvincibilityCounter:
	ld hl, wInvincibilityCounter
	call .TickCounter
	ret nz
.clear_kirby_flashing
	ld hl, wd1a0 + OBJECT_SLOT_KIRBY
	res OBJFLAG_FLASHING_F, [hl]
	ret

; ticks down 16-bit counter in [hl]
; returns z if ticks down to 0
.TickCounter:
	ld a, [hli]
	or [hl]
	jr nz, .non_zero
	; already 0, return nz
	or $1
	ret
.non_zero
	dec hl
	dec [hl]
	ld a, [hli]
	cp $ff
	jr nz, .ticked_down
	dec [hl]
.ticked_down
	; return z if just got 0
	ld a, [hld]
	or [hl]
	ret

.RestoreLevelMusicWhenCounterIsLow:
	ld a, [wFoodPowerUpCounter + 1]
	ld e, a
	ld a, [wInvincibilityCounter + 1]
	or e
	ret nz ; still counting down
	; get the larger of both counters
	ld a, [wFoodPowerUpCounter + 0]
	ld e, a
	ld a, [wInvincibilityCounter + 0]
	cp e
	jr nc, .got_larger
	ld a, e
.got_larger
	cp 120
	ret nz
	; restore level music
	ld a, [wLevelMusic]
	jp PlayMusic

; input:
; - de = coordinates in blocks
; - c = tile index
Func_3076::
	ld a, [wSCX]
	swap a
	ld b, a
	inc d
	ld hl, wLevelXSection
	ld a, d
	sub [hl]
	add b
	rlca
	and $1e
	ld d, a
	ld a, [wSCY]
	swap a
	ld b, a
	inc e
	ld hl, wLevelYSection
	ld a, e
	sub [hl]
	add b
	rrca
	rrca
	ld e, a
	and $c0
	or d
	ld l, a
	ld a, e
	and $03
	ld h, a
	ld de, vBGMap0
	add hl, de
	ld a, l
	ld d, h
	ld hl, wBlockFillPtr
	ld [hli], a
	ld [hl], d
	inc hl
	ld [hl], c ; wBlockFillTileIndex
	ld hl, hBlockFillPending
	set 7, [hl]
	ret

ScriptFunc_BranchOnKirbyRelativePosition::
	ld a, [wScriptBank]
	bankswitch
	ld hl, wObjectScreenXPositions + OBJECT_SLOT_KIRBY
	ld a, [hl]
	add $28
	ld e, a ; Kirby X
	add hl, bc
	ld a, [hl]
	add $28
	sub e ; obj X - Kirby X
	; carry set if Kirby's on the right
	ld a, [wScriptPtr + 0]
	ld l, a
	ld a, [wScriptPtr + 1]
	ld h, a
	jr nc, .kirby_on_left
; kirby on right
	inc hl
	inc hl
.kirby_on_left
	ld a, [hli]
	ld [wScriptPtr + 0], a
	ld a, [hl]
	ld [wScriptPtr + 1], a
	ret

ScriptFunc_BranchOnKirbyVerticalAlignment::
	ld a, [wScriptBank]
	bankswitch
	ld hl, wObjectScreenYPositions
	ld a, [hl] ; OBJECT_SLOT_KIRBY y pos
	add hl, bc
	sub [hl]
	bit 7, a
	jr z, .positive
	cpl
	inc a
.positive
	; is within 3 distance in the y axis?
	cp 3
	jr nc, .outside_range
	ld hl, wObjectScreenXPositions + OBJECT_SLOT_KIRBY
	ld a, [hl] ; OBJECT_SLOT_KIRBY x pos
	add hl, bc
	cp [hl]
	; carry set if Kirby's on the left
	ld a, [wScriptPtr + 0]
	ld l, a
	ld a, [wScriptPtr + 1]
	ld h, a
	jr c, .kirby_on_left
; kirby's on the right
	inc hl
	inc hl
.kirby_on_left
	ld a, [hli]
	ld [wScriptPtr + 0], a
	ld a, [hl]
	ld [wScriptPtr + 1], a
	ret
.outside_range
	ld a, [wScriptPtr + 0]
	add $4
	ld [wScriptPtr + 0], a
	ld a, [wScriptPtr + 1]
	adc $00
	ld [wScriptPtr + 1], a
	ret

ScriptFunc_SetObjectProperties::
	ld a, [wScriptBank]
	bankswitch
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	push bc
	ld a, [wScriptPtr + 0]
	ld e, a
	ld a, [wScriptPtr + 1]
	ld d, a
	ld a, [de]
	ld [hli], a
	ld b, a
	inc de
	ld a, [de]
	ld [hl], a
	ld h, a
	ld l, b
	inc de
	ld a, e
	ld [wScriptPtr + 0], a
	ld a, d
	ld [wScriptPtr + 1], a
	pop bc
	push hl
	ld a, [hl] ; OBJ_PROPERTY_FLAGS
	ld hl, wObjectPropertyFlags
	add hl, bc
	ld [hl], a
	pop hl

REPT OBJ_HP
	inc hl
ENDR
	ld a, [hl] ; OBJ_HP
	ld hl, wObjectHPs
	add hl, bc
	ld [hl], a

	xor a
	ld hl, wd1a0
	add hl, bc
	ld [hl], a
	ld hl, wObjectStatuses
	add hl, bc
	ld [hl], a
	ret

; input:
; - a = score to add
AddToScore::
	push hl
	ld hl, hHUDFlags
	set HUD_UPDATE_SCORE_DIGITS_F, [hl]
	ld hl, wScore
	add [hl]
	ld [hli], a
	jr nc, .cap
	inc [hl]
	jr nz, .cap
	inc hl
	inc [hl]
.cap
	call CapScore
	pop hl
	ret

; caps score to MAX_SCORE
CapScore::
	ld hl, wScore
	ld a, [hli]
	sub LOW(MAX_SCORE)
	ld a, [hli]
	sbc HIGH(MAX_SCORE)
	ld a, [hl]
	sbc (MAX_SCORE / $10000)
	ret c
	ld hl, wScore
	ld a, LOW(MAX_SCORE)
	ld [hli], a
	ld a, HIGH(MAX_SCORE)
	ld [hli], a
	ld a, (MAX_SCORE / $10000)
	ld [hl], a
	ret

Func_3199:
	ld d, $1
	jr Func_319f
Func_319d::
	ld d, $0
;	fallthrough
Func_319f:
	ld a, [wROMBank]
	push af
	ld a, [wd3f0]
	bankswitch
	call .Func_31b7
	pop af
	bankswitch
	ret

.Func_31b7:
	ld hl, wLastLevelXSection
	ld a, [wLevelXSection]
	cp [hl]
	jr z, .check_vertical ; wLevelXSection == wLastLevelXSection
	jr nc, .moved_section_right ; wLevelXSection > wLastLevelXSection
	jr .moved_section_left ; wLevelXSection < wLastLevelXSection

.check_vertical
	ld hl, wLastLevelYSection
	ld a, [wLevelYSection]
	cp [hl]
	ret z ; wLevelYSection == wLastLevelYSection
	jp nc, .moved_section_down ; wLevelYSection > wLastLevelYSection
	jp .moved_section_up ; wLevelYSection < wLastLevelYSection

.moved_section_right
	ld e, $05
	bit 0, d
	jr z, .asm_31da
	ld e, $03
.asm_31da
	; e = (d == $1) ? $3 : $5
	ld a, [wd3e9]
	and a
	jr z, .asm_31f0
	call .GetHorizontalObjectEntry
	ld a, [wLevelXSection]
	add 11
	cp [hl]
	jr c, .update_last_level_x_section
	push de
	call .CreateObjectIfInRange
	pop de
.asm_31f0
	ld a, [wd3e9]
	add $03
	ld [wd3e9], a
	jr .asm_3200
.update_last_level_x_section
	ld a, [wLevelXSection]
	ld [wLastLevelXSection], a
.asm_3200
	ld a, [wd3ea]
	add $03
	ld [wd3ea], a
	call .GetHorizontalObjectEntry
	ld a, [wLevelXSection]
	sub e
	jr nc, .asm_3212
	xor a ; minimum a = 0
.asm_3212
	cp [hl]
	jr z, .asm_3217
	jr nc, .asm_3200
.asm_3217
	ld a, [wd3ea]
	sub $03
	ld [wd3ea], a
	ret

.moved_section_left
	ld e, $0d
	bit 0, d
	jr z, .asm_3228
	ld e, $0b
.asm_3228
	; e = (d == $1) ? $b : $d
	ld a, [wd3ea]
	and a
	jr z, .asm_324d
	call .GetHorizontalObjectEntry
	ld a, [wLevelXSection]
	sub 3
	jr nc, .asm_3239
	xor a ; minimum a = 0
.asm_3239
	cp [hl]
	jr z, .asm_323e
	jr nc, .asm_324d
.asm_323e
	push de
	call .CreateObjectIfInRange
	pop de
	ld a, [wd3ea]
	sub $03
	ld [wd3ea], a
	jr .asm_3253
.asm_324d
	ld a, [wLevelXSection]
	ld [wLastLevelXSection], a
.asm_3253
	ld a, [wd3e9]
	and a
	jr z, .asm_3270
	sub $03
	ld [wd3e9], a
	call .GetHorizontalObjectEntry
	ld a, [wLevelXSection]
	add e
	cp [hl]
	jr c, .asm_3253
	ld a, [wd3e9]
	add $03
	ld [wd3e9], a
.asm_3270
	ret

.moved_section_down
	ld e, $04
	bit 0, d
	jr z, .asm_3279
	ld e, $03
.asm_3279
	; e = (d == $1) ? $3 : $4
	ld a, [wd3eb]
	and a
	jr z, .asm_328f
	call .GetVerticalObjectEntry
	ld a, [wLevelYSection]
	add $09
	cp [hl]
	jr c, .asm_3299
	push de
	call .CreateObjectIfInRange
	pop de
.asm_328f
	ld a, [wd3eb]
	add $03
	ld [wd3eb], a
	jr .asm_329f
.asm_3299
	ld a, [wLevelYSection]
	ld [wLastLevelYSection], a
.asm_329f
	ld a, [wd3ec]
	add $03
	ld [wd3ec], a
	call .GetVerticalObjectEntry
	ld a, [wLevelYSection]
	sub e
	jr nc, .asm_32b1
	xor a
.asm_32b1
	cp [hl]
	jr z, .asm_32b6
	jr nc, .asm_329f
.asm_32b6
	ld a, [wd3ec]
	sub $03
	ld [wd3ec], a
	ret

.moved_section_up
	ld e, $0a
	bit 0, d
	jr z, .asm_32c7
	ld e, $09
.asm_32c7
	ld a, [wd3ec]
	and a
	jr z, .asm_32ec
	call .GetVerticalObjectEntry
	ld a, [wLevelYSection]
	sub $03
	jr nc, .asm_32d8
	xor a
.asm_32d8
	cp [hl]
	jr z, .asm_32dd
	jr nc, .asm_32ec
.asm_32dd
	push de
	call .CreateObjectIfInRange
	pop de
	ld a, [wd3ec]
	sub $03
	ld [wd3ec], a
	jr .asm_32f2
.asm_32ec
	ld a, [wLevelYSection]
	ld [wLastLevelYSection], a
.asm_32f2
	ld a, [wd3eb]
	and a
	ret z
	sub $03
	ld [wd3eb], a
	call .GetVerticalObjectEntry
	ld a, [wLevelYSection]
	add e
	cp [hl]
	jr c, .asm_32f2
	ld a, [wd3eb]
	add $03
	ld [wd3eb], a
	ret

; output:
; - hl = wLevelHorizontalObjectList + a
.GetHorizontalObjectEntry:
	ld l, a
	ld a, [wLevelHorizontalObjectList + 0]
	add l
	ld l, a
	ld a, [wLevelHorizontalObjectList + 1]
	adc $00
	ld h, a
	ret

; output:
; - hl = wLevelVerticalObjectList + a
.GetVerticalObjectEntry:
	ld l, a
	ld a, [wLevelVerticalObjectList + 0]
	add l
	ld l, a
	ld a, [wLevelVerticalObjectList + 1]
	adc $00
	ld h, a
	ret

.CreateObjectIfInRange:
	inc hl
	ld a, [hli]
	ld [wd06b], a
	ld h, [hl]
	ld l, a
	ld a, h
	ld [wd06c], a
	ld a, [hli]
	ld d, a ; x
	ld a, [hEngineFlags]
	bit ENGINEF_XWARP_F, a
	jr nz, .asm_3350

	; check if object X is within [wLevelXSection - 3, wLevelXSection + 11]
	ld a, [wLevelXSection]
	sub 3
	jr nc, .asm_3345
	xor a ; minimum a = 0
.asm_3345
	cp d
	jr z, .asm_3349
	ret nc ; object x is on right
.asm_3349
	ld a, [wLevelXSection]
	add 11
	cp d
	ret c ; object x is on left
.asm_3350
	; check if object X is within [wLevelYSection - 3, wLevelYSection + 9]
	ld a, [hli]
	ld e, a ; y
	ld a, [wLevelYSection]
	sub 3
	jr nc, .asm_335a
	xor a ; minimum a = 0
.asm_335a
	cp e
	jr z, .asm_335e
	ret nc
.asm_335e
	ld a, [wLevelYSection]
	add 9
	cp e
	ret c

	; check if there are no other objects already active
	; that was created from the same data, by comparing
	; the values in wd200
	push hl
	push bc
	push de
	ld d, h ; useless
	ld e, l ;
	ld b, OBJECT_GROUP_1_END - OBJECT_GROUP_1_BEGIN
	ld de, wObjectActiveStates + OBJECT_GROUP_1_BEGIN
	ld hl, wd200 + OBJECT_GROUP_1_BEGIN * $2
.loop_object_active_states
	ld a, [de]
	and a
	jr z, .next_1 ; is inactive
	ld a, [wd06b]
	cp [hl]
	jr nz, .next_1
	inc hl
	ld a, [wd06c]
	cp [hl]
	jr nz, .next_2
	pop de
	pop bc
	pop hl
	ret
.next_1
	inc hl
.next_2
	inc hl
	inc de
	dec b
	jr nz, .loop_object_active_states
	pop de
	pop bc
	pop hl

	push hl
	inc hl
	inc hl
	call CreateObject_Group1
	jr nc, .created
	pop de
	ret
.created
	pop de
	push de
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_PERSISTENT_F, [hl]
	jr z, .not_consumable
	ld hl, wd3aa
	add hl, bc
	ld a, [hl]
	cp $ff
	jr z, .not_consumable
	push bc
	ld e, a
	and %111
	ld c, a ; which power of two to use
	xor a
	ld b, a
	ld d, a
	srl e
	srl e
	srl e ; which byte in wConsumedItems to use
	ld hl, wConsumedItems
	add hl, de
	ld a, [hl]
	ld hl, PowersOfTwo
	add hl, bc
	and [hl]
	jr z, .not_consumed
	pop bc
	; destroy object if it was already consumed
	call DestroyObject
	pop de
	ret
.not_consumed
	pop bc
.not_consumable
	pop de
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [de]
	push de
	ld d, 0
	bit 7, a
	jr z, .asm_33df
	ld d, -1
.asm_33df
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	pop de
	inc de
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [de]
	ld d, 0
	bit 7, a
	jr z, .asm_33f5
	ld d, -1
.asm_33f5
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ld hl, wd200
	add hl, bc
	add hl, bc
	ld a, [wd06b]
	ld [hli], a
	ld a, [wd06c]
	ld [hl], a
	ret

PowersOfTwo::
	db 1 << 0
	db 1 << 1
	db 1 << 2
	db 1 << 3
	db 1 << 4
	db 1 << 5
	db 1 << 6
	db 1 << 7

; input:
; - a = ?
; - d = ?
; output:
; - a = ?
Func_3410::
	push bc
	ld b, $8
.loop
	add a
	cp d
	jr c, .skip_sub
	sub d
.skip_sub
	ccf
	rl c
	dec b
	jr nz, .loop
	ld a, c
	pop bc
	ret

MACRO object_properties
	db \1 ; property flags
	db (\2) / 2 ; collision width
	db (\3) / 2 ; collision height

IF (\1) & PROPERTY_2

IF _NARG == 4
	db \4 ; ?
ELSE
	db \4 ; damage dealt to Kirby
	db \5 ; health points
	db \6 ; ?
	db (\7) / 10 ; score when defeated
	dw \8 ; when object is defeated
ENDC

ELIF (\1) & PROPERTY_PERSISTENT

ASSERT _NARG == 5
	db \4 ; item ID
	dw \5 ; when item is consumed

ELSE

	db \4 ; damage dealt to Kirby
	db \5 ; health points
	db \6 ; ?
	db (\7) / 10 ; score when defeated
IF _NARG == 8
	dw \8 ; when object is defeated
ENDC

ENDC
ENDM

Data_3421::
	object_properties PROPERTY_REL_POS | PROPERTY_2, 0, 0, $00

Data_3425::
	object_properties PROPERTY_2, 0, 0, $00

Data_3429::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 16, 16, $00, Data_1c154

InvincibilityCandyProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 16, 16, INVINCIBILITY_CANDY, Data_1c172

BombProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 16, 16, BOMB, Data_1c172

MikeProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 16, 16, MIKE, Data_1c172

MintLeafProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 16, 16, MINT_LEAF, Data_1c172

SpicyFoodProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 16, 16, SPICY_FOOD, Data_1c172

WarpStarFloorProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 16, 16, WARP_STAR, Data_1c172

WarpStarFloatingProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_PERSISTENT, 16, 16, WARP_STAR, Data_1c172

MaximTomatoProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 16, 16, MAXIM_TOMATO, Data_1c172

; unreferenced
Properties_345f::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_PERSISTENT, 16, 16, MAXIM_TOMATO, Data_1c172

EnergyDrinkProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 12, 16, ENERGY_DRINK, Data_1c172

SparklingStarProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_PERSISTENT, 16, 16, SPARKLING_STAR, Data_1c172

; unreferenced
Properties_3471::
	object_properties PROPERTY_SINKABLE | PROPERTY_PERSISTENT, 16, 16, SPARKLING_STAR, Data_1c172

OneUpProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY | PROPERTY_PERSISTENT, 16, 16, ONE_UP, Data_1c172

KirbyItemProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_PERSISTENT, 16, 16, KIRBY_ITEM, Data_1c172

StandardEnemyGravityProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY, 12, 12, 1, 1, $03, 200, Data_1c154

StandardEnemyProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 200, Data_1c154

Properties_3495::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $01, 200, Data_1c154

Properties_349e::
	object_properties PROPERTY_REL_POS | PROPERTY_2, 12, 12, 1, 1, $00, 200, Data_1c154

; unreferenced
Properties_34a7::
	object_properties $00, 12, 12, 1, 1, $03, 200, Data_1c154

; unreferenced
Properties_34b0::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 400, Data_1c154

GordoProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 3, 100, $00, 0

Properties_34c0::
	object_properties $00, 12, 12, 3, 100, $01, 0, Data_1c154

ProjectileProperties::
	object_properties PROPERTY_REL_POS, 6, 6, 1, 0, $11, 10, Data_1c154

ShotzoBulletProperties::
	object_properties PROPERTY_REL_POS, 6, 6, 1, 100, $01, 0, Data_1c154

ShotzoProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 100, $01, 30, Data_1c154

ScarfyProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 400, Data_1c160

Properties_34ed::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $01, 700, Data_1c154

ParasolWaddleDeeProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 300, Data_1c1ba

CappyProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 1, 1, $03, 200, Data_1c154

CaplessCappyProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 1, 1, $03, 200, Data_1c154

; unreferenced
Properties_3511::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 50, Data_1c154

TwizzyProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 200, Data_1c154

PoppyBrosJrProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 200, Data_1c154

Data_352c::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 1, 1, $03, 200, Data_1c154

GrizzoProperties::
	object_properties PROPERTY_REL_POS, 20, 20, 2, 1, $03, 400, Data_1c154

Properties_353e::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY, 18, 18, 2, 1, $01, 400, Data_1c154

PoppyBrosJrOnGrizzoProperties::
	object_properties PROPERTY_REL_POS, 20, 26, 2, 1, $03, 200, Data_1c1a8

Data_3550::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 1, 1, $03, 200, Data_1c154

Data_3559::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 1, 1, $01, 200, Data_1c154

PoppyBrosJrOnAppleProperties::
	object_properties PROPERTY_REL_POS, 16, 32, 1, 1, $03, 300, Data_1c1b4

Data_356b::
	object_properties PROPERTY_REL_POS, 16, 22, 1, 3, $09, 0, Data_1c1c0

Data_3574::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 10, Data_1c160

Properties_357d::
	object_properties $00, 12, 12, 1, 1, $03, 10, Data_1c166

Data_3586::
	object_properties PROPERTY_REL_POS, 26, 64, 2, 6, $09, 0, Data_1c1cc

Data_358f::
	db PROPERTY_REL_POS | PROPERTY_2, 26 / 2, 32 / 2

; unreferenced
Properties_3592::
	object_properties PROPERTY_1 | PROPERTY_2, 2, 2, $00

Data_3596::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 60, $01, 0

Data_359d::
	object_properties $00, 12, 12, 1, 1, $03, 200, Data_1c15a

Properties_35a6::
	db PROPERTY_2

SpitStarProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_2 | PROPERTY_SINKABLE, 20, 20, $01

Data_35ab::
	object_properties PROPERTY_REL_POS | PROPERTY_2 | PROPERTY_SINKABLE, 20, 28, $01

DiveHitboxProperties::
	object_properties PROPERTY_2, 20, 20, $01

Data_35b3::
	object_properties PROPERTY_REL_POS | PROPERTY_2 | PROPERTY_SINKABLE, 12, 12, $01

Data_35b7::
	object_properties PROPERTY_REL_POS | PROPERTY_2 | PROPERTY_SINKABLE, 40, 40, $01

ExplosionProperties::
	object_properties PROPERTY_REL_POS, 40, 40, 1, 5, $00, 0, Data_1c160

Properties_35c4::
	object_properties $00, 40, 40, 1, 5, $00, 0, Data_1c160

PuffOfSmokeProperties::
	db PROPERTY_REL_POS | PROPERTY_2 | PROPERTY_SINKABLE

KaboolaProperties::
	object_properties PROPERTY_REL_POS, 36, 32, 1, 40, $09, 0, Data_1c1d8

KaboolaBulletProperties::
	object_properties $00, 6, 4, 1, 0, $10, 0, Data_1c154

Properties_35e0::
	object_properties $00, 20, 20, 1, 3, $09, 0, Data_1c1de

Properties_35e9::
	object_properties PROPERTY_REL_POS, 32, 26, 1, 6, $09, 0, Data_1c1ea

LololoProperties::
	object_properties $00, 12, 12, 1, 3, $09, 0, Data_1c1d2

; unreferenced
Properties_35fb::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 1, 1, $03, 300, Data_1c154

Properties_3604::
	object_properties PROPERTY_REL_POS | PROPERTY_2, 0, 0, 0, 1, $00, 0, Data_1c1fc

Properties_360d::
	object_properties PROPERTY_REL_POS | PROPERTY_2 | PROPERTY_SINKABLE | PROPERTY_GRAVITY, 0, 0, 0, 1, $00, 0, Data_1c1fc

Properties_3616::
	object_properties PROPERTY_REL_POS, 22, 26, 1, 10, $09, 0, Data_1c1f6

Properties_361f::
	object_properties PROPERTY_REL_POS, 0, 0, 1, 100, $00, 10, Data_1c1fc

Properties_3628::
	object_properties PROPERTY_REL_POS, 20, 16, 1, 1, $00, 0

Properties_362f::
	object_properties PROPERTY_REL_POS, 52, 16, 1, 1, $00, 0

Properties_3636::
	object_properties PROPERTY_REL_POS, 2, 2, 0, 80, $01, 0, Data_1c154

Properties_363f::
	object_properties PROPERTY_REL_POS, 16, 16, 6, 100, $01, 0, Data_1c154

Properties_3648::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $02, 0

TwoFaceProperties::
BlipperProperties::
PuffyProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 300, Data_1c154

GlunkProperties::
SirKibbleProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 500, Data_1c154

CoconutProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 6, 6, 1, 1, $03, 50, Data_1c154

Data_366a::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY, 6, 6, 1, 1, $03, 50, Data_1c154

Data_3673::
	object_properties PROPERTY_REL_POS, 18, 18, 1, 5, $01, 0, Data_1c172

SirKibbleBladeProperties::
	object_properties PROPERTY_REL_POS, 8, 8, 1, 1, $01, 50, Data_1c154

Data_3685::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 10, Data_1c154

Data_368e::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY, 12, 12, 1, 1, $03, 500, Data_1c154

MumbiesProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $03, 500, Data_1c154

MumbiesOrbitingProperties::
	object_properties PROPERTY_REL_POS, 12, 12, 1, 1, $01, 500, Data_1c154

ConerProperties::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY, 12, 12, 1, 1, $03, 300, Data_1c154

; unreferenced
Properties_36b2::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 1, 1, $03, 300, Data_1c154

; unreferenced
Properties_36bb::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 1, 1, $03, 500, Data_1c154

; unreferenced
Properties_36c4::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY, 12, 12, 2, 1, $03, 200, Data_1c154

Properties_36cd::
	object_properties PROPERTY_REL_POS, 12, 12, 2, 1, $03, 200, Data_1c154

; unreferenced
Properties_36d6::
	object_properties PROPERTY_REL_POS, 12, 12, 2, 1, $01, 200, Data_1c154

; unreferenced
Properties_36df::
	object_properties PROPERTY_REL_POS | PROPERTY_2, 12, 12, 2, 1, $00, 200, Data_1c154

; unreferenced
Properties_36e8::
	object_properties $00, 12, 12, 2, 1, $03, 200, Data_1c154

; unreferenced
Properties_36f1::
	object_properties PROPERTY_REL_POS, 12, 12, 2, 1, $03, 400, Data_1c154

; unreferenced
Properties_36fa::
	object_properties PROPERTY_REL_POS, 6, 6, 2, 0, $11, 10, Data_1c154

Properties_3703::
	object_properties PROPERTY_REL_POS, 12, 12, 2, 100, $01, 0, Data_1c154

Properties_370c::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 2, 1, $03, 200, Data_1c154

Properties_3715::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE, 12, 12, 2, 1, $03, 200, Data_1c154

Properties_371e::
	object_properties PROPERTY_REL_POS, 12, 12, 2, 1, $03, 200, Data_1c154

Properties_3727::
	object_properties PROPERTY_REL_POS, 12, 12, 2, 1, $03, 300, Data_1c154

Properties_3730::
	object_properties PROPERTY_REL_POS, 12, 12, 2, 1, $03, 500, Data_1c154

; unreferenced
Properties_3739::
	object_properties PROPERTY_REL_POS | PROPERTY_SINKABLE | PROPERTY_GRAVITY, 12, 12, 1, 1, $03, 500, Data_1c154

Properties_3742::
	object_properties PROPERTY_REL_POS, 12, 12, 2, 1, $03, 500, Data_1c154

Properties_374b::
	object_properties PROPERTY_REL_POS, 12, 12, 2, 1, $01, 500, Data_1c154

; unreferenced
Properties_3754::
	object_properties PROPERTY_REL_POS, 8, 8, 2, 1, $01, 50, Data_1c154

InitInhaleParticleXCoords::
	xor a
	ld hl, wInhaleParticleXCoords
	ld c, NUM_INHALE_PARTICLES * $2
.loop
	ld [hli], a
	dec c
	jr nz, .loop
	ret

Func_3768::
	ld hl, wd1a0 + OBJECT_SLOT_KIRBY
	set OBJFLAG_FLASHING_F, [hl]
	ld a, KIRBY6F_UNK6
	ld [hKirbyFlags6], a
	ld hl, hKirbyFlags1
	res KIRBY1F_AIRBORNE_F, [hl]
	ld a, [hKirbyFlags3]
	and $ff ^ (KIRBY3F_UNK2 | KIRBY3F_DIVE | KIRBY3F_DUCK | KIRBY3F_LAND)
	ld [hKirbyFlags3], a
	ld a, KIRBY2F_HOVER
	ld [hKirbyFlags2], a
	xor a
	ld [hKirbyFlags4], a

	ld a, HIGH(1.2)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(1.2)
	ld [wKirbyMaxYVel + 1], a
	ld a, HIGH(1.2)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(1.2)
	ld [wKirbyMaxXVel + 1], a
	ld a, 0.085
	ld [wKirbyXAcceleration], a
	ld a, 0.035
	ld [wKirbyXDeceleration], a
	ret

SpawnInvincibilityStar::
	ld hl, Data_1c17e
	jr Func_37b9

SpawnBumpStar_WithSFX::
	ld a, SFX_BUMP
	call PlaySFX
;	fallthrough
SpawnBumpStar:
	ld a, [wDisableBumpStars]
	and a
	ret nz
	ld hl, Data_1c178
;	fallthrough

Func_37b9:
	call CreateObject_Group1
	ret c
	push bc
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [wObjectScreenXPositions + OBJECT_SLOT_KIRBY]
	ld c, a
	ld a, [wSCX]
	and $0f
	ld b, a
	ld a, [wLevelXSection]
	dec a
	swap a
	ld d, a
	and $0f
	ld e, a
	ld a, d
	and $f0
	add b
	add c
	ld [hli], a
	ld a, e
	adc $00
	ld [hl], a
	pop bc
	push bc
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [wObjectScreenYPositions + OBJECT_SLOT_KIRBY]
	ld c, a
	ld a, [wSCY]
	and $0f
	ld b, a
	ld a, [wLevelYSection]
	dec a
	swap a
	ld d, a
	and $0f
	ld e, a
	ld a, d
	and $f0
	add b
	add c
	ld [hli], a
	ld a, e
	adc $00
	ld [hl], a
	pop bc
	ret

StarSpit::
	push hl
	push bc
	push de
	ld hl, Data_1c184
	call CreateObject_Group2
	jr c, KirbyAttackCommon.done
	ld a, [wROMBank]
	push af
	ld a, BANK(Func_14a5f)
	bankswitch
	call Func_14a5f
	pop af
	bankswitch
	ld hl, Data_1c190
	call CreateObject_Group2
	jr c, KirbyAttackCommon.no_carry
	ld hl, wObjectStatuses
	add hl, bc
	set OBJSTAT_UNK1_F, [hl]
	jr Func_384a

SpawnDiveHitbox:
	push hl
	push bc
	push de
	ld hl, Data_1c18a
	call CreateObject_Group2
	jr c, KirbyAttackCommon.done
	ld hl, wObjectStatuses
	add hl, bc
Func_384a:
	set OBJSTAT_UNK0_F, [hl]
	jr KirbyAttackCommon

ShootFirePellet::
	push hl
	push bc
	push de
	ld hl, Data_1c196
	call CreateObject_Group2
	jr c, KirbyAttackCommon.done
	jr KirbyAttackCommon

PuffSpit::
	push hl
	push bc
	push de
	ld hl, Data_1c19c
	call CreateObject_Group2
	jr c, KirbyAttackCommon.done
	ld a, [hEngineFlags]
	bit KABOOLA_BATTLE_F, a
	jr nz, KirbyAttackCommon
	ld hl, wObjectStatuses
	add hl, bc
	set OBJSTAT_UNK3_F, [hl]
;	fallthrough

KirbyAttackCommon:
	ld a, [wROMBank]
	push af
	ld a, BANK(Func_14a5f)
	bankswitch
	call Func_14a5f
	pop af
	bankswitch
.no_carry
	xor a
.done
	pop de
	pop bc
	pop hl
	ret

StageHeaders::
; starting area, ?, ?, starting X, starting Y, black/white fade, intro music
	table_width 7
	db GREEN_GREENS_0,   1, 1, $28, $3c, FALSE, MUSIC_GREEN_GREENS_INTRO  ; GREEN_GREENS
	db CASTLE_LOLOLO_00, 1, 1, $28, $58, FALSE, MUSIC_CASTLE_LOLOLO_INTRO ; CASTLE_LOLOLO
	db FLOAT_ISLANDS_0,  1, 1, $28, $32, FALSE, MUSIC_FLOAT_ISLANDS_INTRO ; FLOAT_ISLANDS
	db BUBBLY_CLOUDS_0,  1, 1, $48, $41, FALSE, MUSIC_BUBBLY_CLOUDS_INTRO ; BUBBLY_CLOUDS
	db MT_DEDEDE_0,      1, 1, $28, $70, FALSE, MUSIC_KING_DEDEDE_BATTLE  ; MT_DEDEDE
	assert_table_length NUM_STAGES

MACRO area
	db BANK(\1)
	bigdw \1 ; ?
	db \2 ; level width in blocks
	db \3 ; level height in blocks
	db \4 ; if $0, fade from white, otherwise fade from black
	db \5 ; ?
	db \6 ; ?
ENDM

Data_38b1:
	table_width 2
	dw .GreenGreens ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 8
	area Data_eda3, 110,  8, $0, $00, $46 ; GREEN_GREENS_0
	area Data_ea78,  16,  8, $0, $00, $06 ; GREEN_GREENS_1
	area Data_eba1,  80,  8, $0, $00, $46 ; GREEN_GREENS_2
	area Data_f005,  16, 40, $0, $00, $06 ; GREEN_GREENS_3
	area Data_ead2,  10, 24, $0, $08, $00 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 8
	area Data_f626, 10,  8, $0, $00, $00 ; CASTLE_LOLOLO_00
	area Data_f71e, 10, 16, $1, $00, $00 ; CASTLE_LOLOLO_01
	area Data_f3f1, 10,  8, $0, $00, $00 ; CASTLE_LOLOLO_02
	area Data_f1cd, 24,  8, $1, $00, $0e ; CASTLE_LOLOLO_03
	area Data_f42b, 20, 12, $1, $04, $0a ; CASTLE_LOLOLO_04
	area Data_f771, 16, 12, $1, $00, $06 ; CASTLE_LOLOLO_05
	area Data_f58d, 10, 20, $0, $00, $00 ; CASTLE_LOLOLO_06
	area Data_f234, 60,  8, $1, $00, $14 ; CASTLE_LOLOLO_07
	area Data_f317, 10,  8, $0, $00, $00 ; CASTLE_LOLOLO_08
	area Data_f4ba, 22, 16, $0, $00, $0c ; CASTLE_LOLOLO_09
	area Data_f199, 10,  8, $1, $00, $00 ; CASTLE_LOLOLO_10
	area Data_f669, 16,  8, $0, $00, $06 ; CASTLE_LOLOLO_11
	area Data_f366, 12, 16, $0, $00, $02 ; CASTLE_LOLOLO_12
	area Data_f6bc, 16,  8, $0, $00, $06 ; CASTLE_LOLOLO_13
	area Data_f33d, 10,  8, $0, $08, $00 ; CASTLE_LOLOLO_14
	area Data_f801, 10,  8, $0, $00, $00 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 8
	area Data_e273, 120,  8, $0, $00, $6e ; FLOAT_ISLANDS_0
	area Data_e688,  50, 16, $1, $00, $28 ; FLOAT_ISLANDS_1
	area Data_e5bc,  10, 24, $0, $00, $00 ; FLOAT_ISLANDS_2
	area Data_e8d3,  70,  8, $0, $00, $3c ; FLOAT_ISLANDS_3
	area Data_e593,  10,  8, $1, $00, $00 ; FLOAT_ISLANDS_4
	area Data_e86f,  10, 24, $1, $01, $00 ; FLOAT_ISLANDS_5
	area Data_ea54,  10,  8, $0, $00, $00 ; FLOAT_ISLANDS_6
	area Data_e49e,  42,  8, $0, $00, $14 ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 8
	area Data_f843,   98,   8, $0, $00, $58 ; BUBBLY_CLOUDS_0
	area Data_fc9f,   70,   8, $0, $00, $3c ; BUBBLY_CLOUDS_1
	area Data_fac5,   18,  32, $0, $04, $16 ; BUBBLY_CLOUDS_2
	area Data_1ace8,  50,  12, $0, $00, $28 ; BUBBLY_CLOUDS_3
	area Data_fe39,   10,  24, $0, $00, $00 ; BUBBLY_CLOUDS_4
	area Data_1a9d7,  50,  14, $0, $00, $28 ; BUBBLY_CLOUDS_5
	area Data_1ab94,  60,   8, $0, $00, $32 ; BUBBLY_CLOUDS_6
	area Data_1a800,  14,  40, $0, $00, $04 ; BUBBLY_CLOUDS_7
	area Data_1ae6d,  10, 100, $0, $00, $00 ; BUBBLY_CLOUDS_8
	area Data_1b12d,  10,   8, $0, $08, $00 ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 8
	area Data_1b16e,  60,  8, $0, $10, $32 ; MT_DEDEDE_0
	area Data_1b653,  40,  8, $0, $00, $1e ; MT_DEDEDE_1
	area Data_1b225,  30, 16, $0, $00, $14 ; MT_DEDEDE_2
	area Data_1b39c,  26, 14, $0, $00, $10 ; MT_DEDEDE_3
	area Data_1b497,  10, 50, $0, $00, $00 ; MT_DEDEDE_4
	area Data_1b1e2,  18,  8, $0, $00, $08 ; MT_DEDEDE_5
	area Data_ead2,   10, 24, $0, $00, $00 ; MT_DEDEDE_6
	area Data_e49e,   42,  8, $0, $00, $14 ; MT_DEDEDE_7
	area Data_f33d,   10,  8, $0, $00, $00 ; MT_DEDEDE_8
	area Data_1b12d,  10,  8, $0, $00, $00 ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

Data_3a43::
	table_width 2
	dw .GreenGreens ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 5
	db GREEN_GREENS_0, $01, $01, $28, $40 ; GREEN_GREENS_0
	db GREEN_GREENS_0, $01, $01, $28, $40 ; GREEN_GREENS_1
	db GREEN_GREENS_2, $01, $01, $28, $50 ; GREEN_GREENS_2
	db GREEN_GREENS_3, $03, $21, $48, $60 ; GREEN_GREENS_3
	db GREEN_GREENS_4, $01, $01, $18, $30 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 5
	db CASTLE_LOLOLO_00, $01, $01, $28, $40 ; CASTLE_LOLOLO_00
	db CASTLE_LOLOLO_00, $01, $01, $28, $40 ; CASTLE_LOLOLO_01
	db CASTLE_LOLOLO_00, $01, $01, $28, $40 ; CASTLE_LOLOLO_02
	db CASTLE_LOLOLO_00, $01, $01, $28, $40 ; CASTLE_LOLOLO_03
	db CASTLE_LOLOLO_04, $02, $01, $48, $30 ; CASTLE_LOLOLO_04
	db CASTLE_LOLOLO_04, $02, $01, $48, $30 ; CASTLE_LOLOLO_05
	db CASTLE_LOLOLO_04, $02, $01, $48, $30 ; CASTLE_LOLOLO_06
	db CASTLE_LOLOLO_04, $02, $01, $48, $30 ; CASTLE_LOLOLO_07
	db CASTLE_LOLOLO_08, $01, $01, $18, $50 ; CASTLE_LOLOLO_08
	db CASTLE_LOLOLO_09, $01, $09, $38, $70 ; CASTLE_LOLOLO_09
	db CASTLE_LOLOLO_09, $01, $09, $38, $70 ; CASTLE_LOLOLO_10
	db CASTLE_LOLOLO_09, $01, $09, $38, $70 ; CASTLE_LOLOLO_11
	db CASTLE_LOLOLO_12, $02, $09, $28, $70 ; CASTLE_LOLOLO_12
	db CASTLE_LOLOLO_12, $02, $09, $28, $70 ; CASTLE_LOLOLO_13
	db CASTLE_LOLOLO_14, $01, $01, $58, $50 ; CASTLE_LOLOLO_14
	assert_table_length NUM_CASTLE_LOLOLO_AREAS - 1

.FloatIslands:
	table_width 5
	db FLOAT_ISLANDS_0, $01, $01, $28, $40 ; FLOAT_ISLANDS_0
	db FLOAT_ISLANDS_1, $01, $01, $48, $50 ; FLOAT_ISLANDS_1
	db FLOAT_ISLANDS_1, $01, $01, $48, $50 ; FLOAT_ISLANDS_2
	db FLOAT_ISLANDS_3, $01, $01, $38, $30 ; FLOAT_ISLANDS_3
	db FLOAT_ISLANDS_3, $01, $01, $38, $30 ; FLOAT_ISLANDS_4
	db FLOAT_ISLANDS_3, $01, $01, $38, $30 ; FLOAT_ISLANDS_5
	db FLOAT_ISLANDS_3, $01, $01, $38, $30 ; FLOAT_ISLANDS_6
	db FLOAT_ISLANDS_7, $01, $01, $28, $40 ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 5
	db BUBBLY_CLOUDS_0, $01, $01, $48, $40 ; BUBBLY_CLOUDS_0
	db BUBBLY_CLOUDS_1, $01, $01, $28, $70 ; BUBBLY_CLOUDS_1
	db BUBBLY_CLOUDS_2, $01, $19, $48, $50 ; BUBBLY_CLOUDS_2
	db BUBBLY_CLOUDS_2, $01, $19, $48, $50 ; BUBBLY_CLOUDS_3
	db BUBBLY_CLOUDS_4, $01, $11, $18, $48 ; BUBBLY_CLOUDS_4
	db BUBBLY_CLOUDS_5, $01, $01, $48, $3f ; BUBBLY_CLOUDS_5
	db BUBBLY_CLOUDS_6, $01, $01, $40, $40 ; BUBBLY_CLOUDS_6
	db BUBBLY_CLOUDS_7, $03, $1f, $48, $50 ; BUBBLY_CLOUDS_7
	db BUBBLY_CLOUDS_7, $03, $1f, $48, $50 ; BUBBLY_CLOUDS_8
	db BUBBLY_CLOUDS_9, $01, $01, $18, $48 ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 5
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_0
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_1
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_2
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_3
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_4
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_5
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_6
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_7
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_8
	db MT_DEDEDE_0, $33, $01, $48, $70 ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

DoorConnections:
	db GREEN_GREENS,  GREEN_GREENS_0,   $2c, $07, GREEN_GREENS_1,   $04, $00, $04, $05
	db GREEN_GREENS,  GREEN_GREENS_1,   $09, $06, GREEN_GREENS_0,   $27, $00, $04, $06
	db GREEN_GREENS,  GREEN_GREENS_2,   $4a, $08, GREEN_GREENS_3,   $02, $20, $04, $06
	db GREEN_GREENS,  GREEN_GREENS_3,   $09, $06, GREEN_GREENS_4,   $00, $00, $01, $03
	db CASTLE_LOLOLO, CASTLE_LOLOLO_00, $08, $08, CASTLE_LOLOLO_01, $00, $08, $01, $05
	db CASTLE_LOLOLO, CASTLE_LOLOLO_01, $02, $03, CASTLE_LOLOLO_02, $00, $00, $04, $07
	db CASTLE_LOLOLO, CASTLE_LOLOLO_01, $09, $0b, CASTLE_LOLOLO_03, $00, $00, $03, $07
	db CASTLE_LOLOLO, CASTLE_LOLOLO_02, $05, $08, CASTLE_LOLOLO_01, $00, $00, $01, $02
	db CASTLE_LOLOLO, CASTLE_LOLOLO_03, $16, $08, CASTLE_LOLOLO_04, $01, $00, $04, $03
	db CASTLE_LOLOLO, CASTLE_LOLOLO_04, $08, $0c, CASTLE_LOLOLO_05, $00, $00, $03, $03
	db CASTLE_LOLOLO, CASTLE_LOLOLO_04, $0d, $04, CASTLE_LOLOLO_07, $00, $00, $03, $05
	db CASTLE_LOLOLO, CASTLE_LOLOLO_05, $03, $0a, CASTLE_LOLOLO_06, $00, $0a, $07, $05
	db CASTLE_LOLOLO, CASTLE_LOLOLO_06, $08, $04, CASTLE_LOLOLO_07, $00, $00, $03, $05
	db CASTLE_LOLOLO, CASTLE_LOLOLO_09, $0c, $05, CASTLE_LOLOLO_10, $00, $00, $04, $07
	db CASTLE_LOLOLO, CASTLE_LOLOLO_09, $14, $10, CASTLE_LOLOLO_11, $00, $00, $02, $06
	db CASTLE_LOLOLO, CASTLE_LOLOLO_10, $05, $08, CASTLE_LOLOLO_09, $07, $00, $04, $04
	db CASTLE_LOLOLO, CASTLE_LOLOLO_11, $0c, $04, CASTLE_LOLOLO_12, $00, $08, $03, $07
	db CASTLE_LOLOLO, CASTLE_LOLOLO_12, $02, $05, CASTLE_LOLOLO_12, $02, $08, $06, $07
	db CASTLE_LOLOLO, CASTLE_LOLOLO_12, $09, $10, CASTLE_LOLOLO_12, $00, $00, $01, $04
	db CASTLE_LOLOLO, CASTLE_LOLOLO_12, $03, $09, CASTLE_LOLOLO_12, $02, $01, $06, $05
	db CASTLE_LOLOLO, CASTLE_LOLOLO_12, $09, $07, CASTLE_LOLOLO_12, $00, $03, $02, $05
	db CASTLE_LOLOLO, CASTLE_LOLOLO_12, $0a, $04, CASTLE_LOLOLO_13, $00, $00, $02, $07
	db CASTLE_LOLOLO, CASTLE_LOLOLO_13, $0c, $05, CASTLE_LOLOLO_14, $00, $00, $04, $05
	db FLOAT_ISLANDS, FLOAT_ISLANDS_0,  $75, $06, FLOAT_ISLANDS_1,  $00, $01, $04, $04
	db FLOAT_ISLANDS, FLOAT_ISLANDS_1,  $23, $06, FLOAT_ISLANDS_2,  $00, $00, $04, $02
	db FLOAT_ISLANDS, FLOAT_ISLANDS_1,  $2b, $0f, FLOAT_ISLANDS_3,  $00, $00, $03, $03
	db FLOAT_ISLANDS, FLOAT_ISLANDS_2,  $09, $15, FLOAT_ISLANDS_1,  $18, $00, $04, $04
	db FLOAT_ISLANDS, FLOAT_ISLANDS_3,  $2d, $07, FLOAT_ISLANDS_4,  $00, $00, $02, $03
	db FLOAT_ISLANDS, FLOAT_ISLANDS_3,  $43, $05, FLOAT_ISLANDS_5,  $00, $10, $02, $07
	db FLOAT_ISLANDS, FLOAT_ISLANDS_4,  $03, $04, FLOAT_ISLANDS_3,  $2a, $00, $04, $06
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_0,  $60, $07, BUBBLY_CLOUDS_1,  $00, $00, $02, $07
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_1,  $44, $08, BUBBLY_CLOUDS_2,  $00, $18, $04, $05
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_2,  $05, $10, BUBBLY_CLOUDS_3,  $00, $00, $04, $05
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_2,  $07, $06, BUBBLY_CLOUDS_4,  $00, $10, $02, $05
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_3,  $2d, $05, BUBBLY_CLOUDS_4,  $00, $10, $02, $05
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_4,  $04, $00, BUBBLY_CLOUDS_5,  $00, $00, $04, $01
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_5,  $2f, $04, BUBBLY_CLOUDS_6,  $00, $00, $04, $05
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_6,  $38, $08, BUBBLY_CLOUDS_7,  $02, $1e, $04, $05
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_7,  $09, $03, BUBBLY_CLOUDS_8,  $00, $00, $04, $03
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_7,  $07, $07, BUBBLY_CLOUDS_9,  $00, $00, $04, $05
	db BUBBLY_CLOUDS, BUBBLY_CLOUDS_8,  $06, $63, BUBBLY_CLOUDS_9,  $00, $00, $04, $05
	db MT_DEDEDE,     MT_DEDEDE_0,      $34, $04, MT_DEDEDE_1,      $00, $00, $03, $06
	db MT_DEDEDE,     MT_DEDEDE_0,      $35, $04, MT_DEDEDE_1,      $00, $00, $03, $06
	db MT_DEDEDE,     MT_DEDEDE_0,      $34, $08, MT_DEDEDE_2,      $00, $07, $03, $05
	db MT_DEDEDE,     MT_DEDEDE_0,      $35, $08, MT_DEDEDE_2,      $00, $07, $03, $05
	db MT_DEDEDE,     MT_DEDEDE_0,      $3a, $04, MT_DEDEDE_3,      $00, $00, $03, $04
	db MT_DEDEDE,     MT_DEDEDE_0,      $3b, $04, MT_DEDEDE_3,      $00, $00, $03, $04
	db MT_DEDEDE,     MT_DEDEDE_0,      $3a, $08, MT_DEDEDE_4,      $00, $00, $04, $03
	db MT_DEDEDE,     MT_DEDEDE_0,      $3b, $08, MT_DEDEDE_4,      $00, $00, $04, $03
	db MT_DEDEDE,     MT_DEDEDE_0,      $37, $05, MT_DEDEDE_5,      $04, $00, $02, $03
	db MT_DEDEDE,     MT_DEDEDE_0,      $38, $05, MT_DEDEDE_5,      $04, $00, $02, $03
	db MT_DEDEDE,     MT_DEDEDE_1,      $24, $05, MT_DEDEDE_6,      $00, $00, $01, $03
	db MT_DEDEDE,     MT_DEDEDE_2,      $1c, $04, MT_DEDEDE_8,      $00, $00, $04, $03
	db MT_DEDEDE,     MT_DEDEDE_3,      $04, $0d, MT_DEDEDE_7,      $00, $00, $02, $06
	db MT_DEDEDE,     MT_DEDEDE_4,      $03, $31, MT_DEDEDE_9,      $00, $00, $02, $06
	db $ff

EndStageTransition::
	ld hl, hKirbyFlags5
	res KIRBY5F_TRIGGER_TRANSITION_F, [hl]
;	fallthrough

Func_3d32::
	call Func_3d48
	ld a, OBJECT_ACTIVE
	ld [wObjectActiveStates + OBJECT_SLOT_KIRBY], a
	call Func_139b
	ld a, BANK("Bank 1")
	bankswitch
	jp StageLoop_SkipHUDUpdate

Func_3d48::
	ld a, 0.082
	ld [wKirbyYAcceleration], a
	ld a, $16
	ld [wd065], a
	xor a
	ld [hKirbyFlags1], a
	ld [hKirbyFlags2], a
	ld [hKirbyFlags3], a
	ld [hKirbyFlags4], a
	ld [wd064], a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ld hl, hPalFadeFlags
	set SCROLLINGF_UNK3_F, [hl]

	ld a, 0.125
	ld [wKirbyXAcceleration], a
	ld a, 0.055
	ld [wKirbyXDeceleration], a
	ld a, HIGH(1.2)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(1.2)
	ld [wKirbyMaxXVel + 1], a
	ld a, HIGH(2.0)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(2.0)
	ld [wKirbyMaxYVel + 1], a

	xor a
	ld hl, wKirbyAnimScript
	ld [hli], a
	ld [hl], a
	ret

StartLevelAfterContinue::
	ld a, [wROMBank]
	push af
	ld a, BANK(_StartLevelAfterContinue)
	bankswitch
	call _StartLevelAfterContinue
	pop af
	bankswitch
	ret

; unreferenced
Func_3da9:
	ret nc
	ld [$2100], a
	ret
; 0x3dae
