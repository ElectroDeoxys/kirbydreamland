SECTION "Bank 5@40c2", ROMX[$40c2], BANK[$5]

Func_140c2:
	call Func_140d5
	ret c
	ld hl, hff94
	set 7, [hl]
	jp Func_1415e
; 0x140ce

SECTION "Bank 5@40d5", ROMX[$40d5], BANK[$5]

Func_140d5:
	ld hl, wd1b0
	add hl, bc
	set 5, [hl]
	ld hl, wd1a0
	add hl, bc
	bit 0, [hl]
	jr nz, .asm_140e7
	res 3, [hl]
.set_carry
	scf
	ret
.asm_140e7
	res 0, [hl]
	bit 3, [hl]
	jr nz, .set_carry
	set 3, [hl]
	xor a
	ret
; 0x140f1

SECTION "Bank 5@4105", ROMX[$4105], BANK[$5]

Func_14105:
	ld hl, wd1b0
	add hl, bc
	res 1, [hl]
	ld hl, wd1a0
	add hl, bc
	bit 0, [hl]
	ret z
	res 0, [hl]
	ld hl, wd1b0
	add hl, bc
	set 1, [hl]
	ld hl, wObjectXCoords
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [wGlobalCounter1]
	and %110
	add LOW(.data)
	ld e, a
	ld a, HIGH(.data)
	adc 0
	ld d, a
	ld a, [de]
	add [hl]
	ld [hli], a
	inc de
	ld a, [de]
	ld d, 0
	bit 7, a
	jr z, .positive
	ld d, -1
.positive
	adc [hl]
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ret

.data
	dw  -$40
	dw -$100
	dw   $40
	dw  $100
; 0x14148

SECTION "Bank 5@415e", ROMX[$415e], BANK[$5]

Func_1415e:
	ld hl, wObjectGfxScriptPtrs
	add hl, bc
	add hl, bc
	ld d, h
	ld e, l
	ld hl, wd37a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	jp Func_241f
; 0x14172

SECTION "Bank 5@41b1", ROMX[$41b1], BANK[$5]

Func_141b1:
	ld hl, wd1b0
	add hl, bc
	bit 6, [hl]
	ret z
	jp Func_1415e
; 0x141bb

SECTION "Bank 5@42a3", ROMX[$42a3], BANK[$5]

Func_142a3:
	ld hl, wd140
	ld a, [hl]
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], a
	ld hl, wd150
	ld a, [hl]
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], a
	ld hl, hff92
	bit KIRBY2F_UNK3_F, [hl]
	jp z, DestroyObject
	ret
; 0x142c2

SECTION "Bank 5@432c", ROMX[$432c], BANK[$5]

Func_1432c::
	call .Func_14336
	call .Func_14379
	call .Func_143a4
	ret

.Func_14336:
	ld c, -4
	ld de, $505
	ld a, [hff8e]
	and $98
	jr nz, .asm_14353
	ld c, 0
	ld de, $303
	ld hl, hff92
	bit KIRBY2F_DUCK_F, [hl]
	jr z, .asm_14353
	ld c, 6
	ld de, $201
.asm_14353
	ld a, [wd140]
	ld [wd412], a
	ld a, [wd150]
	add c
	ld [wd413], a
	ld bc, OBJECT_GROUP_1_BEGIN
.loop_objects
	push de
	call .Func_145b0
	jr c, .next_object
	call .Func_145d1
	jr nc, .next_object
	call .Func_143ef
.next_object
	pop de
	inc c
	ld a, c
	cp OBJECT_GROUP_1_END
	jr nz, .loop_objects
	ret

.Func_14379:
	ld hl, wObjectActiveStates + OBJECT_SLOT_13
	ld a, [hl]
	and a
	ret z ; OBJECT_NOT_ACTIVE
	ld hl, wd1ad
	bit 7, [hl]
	ret z
	ld a, [wd1bd]
	bit 2, a
	ret nz
	ld [wd410], a
	ld a, [wd140 + OBJECT_SLOT_13]
	ld [wd412], a
	ld a, [wd15d]
	ld [wd413], a
	ld a, OBJECT_SLOT_13
	ld [wd411], a
	ld hl, wObjectPropertyPtrs + OBJECT_SLOT_13 * $2
	jr .asm_143cd

.Func_143a4:
	ld hl, wObjectActiveStates + OBJECT_SLOT_14
	ld a, [hl]
	and a
	ret z ; OBJECT_NOT_ACTIVE
	ld hl, wd1ae
	bit 7, [hl]
	ret z
	ld a, [wd1be]
	bit 2, a
	ret nz
	ld [wd410], a
	ld a, [wd140 + OBJECT_SLOT_14]
	ld [wd412], a
	ld a, [wd15e]
	ld [wd413], a
	ld a, OBJECT_SLOT_14
	ld [wd411], a
	ld hl, wObjectPropertyPtrs + OBJECT_SLOT_14 * $2
.asm_143cd
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld d, [hl]
	inc hl
	ld e, [hl]
	ld bc, OBJECT_GROUP_1_BEGIN
.asm_143d7
	push de
	call .Func_145b0
	jr c, .asm_143e7
	call .Func_145d1
	jr nc, .asm_143e7
	push bc
	call .Func_1448a
	pop bc
.asm_143e7
	pop de
	inc c
	ld a, c
	cp OBJECT_GROUP_1_END
	jr nz, .asm_143d7
	ret

.Func_143ef:
	ld hl, wd190
	add hl, bc
	bit 6, [hl]
	jr z, .asm_143fe
	push bc
	xor a
	call .Func_14600
	pop bc
	ret
.asm_143fe
	call Func_148dc
	dec hl
	dec hl
	ld a, [hli]
	ld [wDamage], a
	inc hl
	ld a, [hli]
	ld [wd40f], a
	ld a, [hli]
	ld [wScoreToAdd], a
	ld a, [hli]
	ld [wd40d + 0], a
	ld a, [hli]
	ld [wd40d + 1], a
	ld hl, wInvincibilityCounter
	ld a, [wd3f5]
	or [hl]
	inc hl
	or [hl]
	jr nz, .asm_14466
	ld a, $5a
	ld [wd3f5], a
	ld hl, wd1a0
	set 5, [hl]
	ld a, [hff91]
	bit 0, a
	jr nz, .asm_14453
	ld hl, hff94
	set 3, [hl]
	res 4, [hl]
	ld hl, wd140
	ld a, [hl]
	add hl, bc
	cp [hl]
	jr nc, .asm_14448
	ld hl, hff94
	set 4, [hl]
.asm_14448
	xor a
	ld [wd069], a
	ld a, SFX_DAMAGE
	call PlaySFX
	jr .apply_damage
.asm_14453
	ld a, SFX_08
	call PlaySFX
.apply_damage
	ld a, [wDamage]
	ld e, a
	ld a, [wHP]
	sub e
	jr nc, .got_hp_value
	xor a
.got_hp_value
	ld [wHP], a

.asm_14466
	ld a, [wd40f]
	bit 3, a
	ret nz
	bit 0, a
	ret z
	call .Func_1456d
	ret nz
	ld a, [wScoreToAdd]
	add a
	call AddToScore
	ld a, [wHP]
	and a
	ret z
	ld a, [wd40d + 0]
	ld e, a
	ld a, [wd40d + 1]
	ld d, a
	jp Func_23af

.Func_1448a:
	ld hl, wd190
	add hl, bc
	bit 6, [hl]
	ret nz
	call Func_148dc
	dec hl
	dec hl
	ld a, [hli]
	ld [wDamage], a
	inc hl
	ld a, [hli]
	ld [wd40f], a
	ld a, [hli]
	ld [wScoreToAdd], a
	ld a, [hli]
	ld [wd40d + 0], a
	ld a, [hli]
	ld [wd40d + 1], a
	ld a, [wd40f]
	bit 4, a
	ret nz
	bit 3, a
	jr z, .asm_144f5
	ld a, [wd410]
	bit 0, a
	jr nz, .asm_144ee
	bit 3, a
	jr z, .asm_144c5
	ld hl, $403c
	jr .asm_144e4
.asm_144c5
	call .Func_14579
	call .Func_1456d
	jr nz, .asm_144e1
	ld a, [wScoreToAdd]
	add a
	call AddToScore
	ld a, [wd40d + 0]
	ld e, a
	ld a, [wd40d + 1]
	ld d, a
	call Func_23af
	jr .asm_144ee
.asm_144e1
	ld hl, $4026
.asm_144e4
	ld de, MotionScript_10008
	ld a, [wd411]
	ld c, a
	jp Func_21e6
.asm_144ee
	ld a, [wd411]
	ld c, a
	jp DestroyObject
.asm_144f5
	bit 0, a
	jr nz, .asm_1451e
.asm_144f9
	ld a, [wd411]
	ld c, a
	ld a, [wd410]
	bit 0, a
	jr nz, .asm_1451b
	ld hl, $403c
	bit 3, a
	jr nz, .asm_14515
	ld hl, $4017
	bit 4, a
	jr nz, .asm_14515
	ld hl, $4026
.asm_14515
	ld de, MotionScript_10008
	jp Func_21e6
.asm_1451b
	jp DestroyObject
.asm_1451e
	ld hl, wd410
	bit 0, [hl]
	jr z, .asm_1453b
	bit 1, [hl]
	jr nz, .asm_1453b
	ld a, [hff92]
	and KIRBY2F_LAND
	push af
	call Func_3d48
	pop af
	ld [hff92], a
	ld hl, hff90
	set 3, [hl]
.asm_1453b
	call .Func_1456d
	jr nz, .asm_144f9
	ld a, [wScoreToAdd]
	add a
	call AddToScore
	ld a, [wd40d + 0]
	ld e, a
	ld a, [wd40d + 1]
	ld d, a
	call Func_23af
	ld a, [wd410]
	bit 4, a
	jr nz, .asm_14560
	ld a, [wd411]
	ld c, a
	jp DestroyObject
.asm_14560
	ld a, [wd411]
	ld c, a
	ld hl, GfxScript_20005
	ld de, MotionScript_10008
	jp Func_21e6

.Func_1456d:
	ld hl, wd1b0
	add hl, bc
	set 7, [hl]
	ld hl, wd39a
	add hl, bc
	dec [hl]
	ret

.Func_14579:
	ld a, [wd3c1]
	ld e, a
	ld a, [wd3c2]
	inc a
	cp e
	jr nz, .asm_1458e
	xor a
	ld hl, wBossHP
	dec [hl]
	ld hl, hHUDFlags
	set HUD_UPDATE_FIRST_ROW_F, [hl]
.asm_1458e
	ld [wd3c2], a
	ld a, c
	ld [wd3d5], a
	ld hl, hff91
	bit 1, [hl]
	jr z, .asm_145aa
	ld hl, wd190
	ld b, $00
	add hl, bc
	set 4, [hl]
	ld a, $05
	ld [wd3d4], a
	ret
.asm_145aa
	ld a, $1e
	ld [wd3d4], a
	ret

.Func_145b0:
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	and a
	jr z, .set_carry
	ld hl, wd1a0
	add hl, bc
	ld a, [hl]
	bit 7, a
	jr z, .set_carry
	bit 0, a
	jr nz, .set_carry
	ld hl, wd190
	add hl, bc
	bit 2, [hl]
	jr nz, .set_carry
	xor a
	ret
.set_carry
	scf
	ret

.Func_145d1:
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hli]
	add d
	ld d, a
	push hl
	ld hl, wd140
	add hl, bc
	ld a, [wd412]
	sub [hl]
	jr nc, .asm_145ea
	cpl
	inc a
.asm_145ea
	cp d
	pop hl
	ret nc
	ld a, [hli]
	add e
	ld e, a
	push hl
	ld hl, wd150
	add hl, bc
	ld a, [wd413]
	sub [hl]
	jr nc, .asm_145fd
	cpl
	inc a
.asm_145fd
	cp e
	pop hl
	ret

.Func_14600:
	ld [wd06b], a
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	add $03
	ld h, [hl]
	jr nc, .asm_1460f
	inc h
.asm_1460f
	ld l, a
	ld a, [hl]
	and a
	jr z, .InvincibilityCandy ; INVINCIBILITY_CANDY
	dec a
	jp z, .Bomb ; $1
	dec a
	jp z, .Mike ; $2
	dec a
	jp z, .asm_1474f ; $3
	dec a
	jr z, .MintLeaf ; MINT_LEAF
	dec a
	jp z, .WarpStar ; WARP_STAR
	dec a
	jp z, .MaximTomato ; MAXIM_TOMATO
	dec a
	jp z, .EnergyDrink ; ENERGY_DRINK
	dec a
	jp z, .asm_14704 ; $8
	dec a
	jp z, .OneUp ; ONE_UP

	call .ConsumeItem
	ld a, $81
	ld [wd3bf], a
	ld a, SFX_BOSS_DEFEAT
	call PlaySFX
	jp DestroyObject

.OneUp:
	call .ConsumeItem
	call .Func_147b5
	ld hl, hHUDFlags
	set HUD_UPDATE_LIVES_F, [hl]
	ld a, [wLives]
	inc a
	cp MAX_LIVES
	jr c, .got_num_lives
	ld a, MAX_LIVES
.got_num_lives
	ld [wLives], a
	ld a, SFX_1UP
	call PlaySFX
	jp DestroyObject

.InvincibilityCandy:
	call .ConsumeItem
	call .Func_147b5
	ld a, LOW(INVINCIBILITY_DURATION)
	ld [wInvincibilityCounter + 0], a
	ld a, HIGH(INVINCIBILITY_DURATION)
	ld [wInvincibilityCounter + 1], a
	ld hl, wd1a0
	set 4, [hl]
	ld a, MUSIC_INVINCIBILITY_CANDY
	call PlayMusic
	jp .DestroyObject

.MintLeaf:
	call .ConsumeItem
	call .Func_147b5
	ld hl, hff95
	set 5, [hl]
	res 6, [hl]
	ld a, SFX_POWER_UP
	call PlaySFX
	ld hl, wd1a0
	set 4, [hl]
	ld a, $fc
	ld [wMintLeafCounter + 0], a
	ld a, $03
	ld [wMintLeafCounter + 1], a
	ld a, MUSIC_MINT_LEAF
	call PlayMusic
	jp .DestroyObject

.MaximTomato:
	call .ConsumeItem
	ld a, SFX_POWER_UP
	call PlaySFX
	call .Func_147b5
	call .DestroyObject
	ld a, [wHP]
	ld e, a
	ld a, $88
	sub e
	ld e, a ; $88 - wHP
	; this loops many times unnecessarily
	; when HP reaches max, calling .Restore1HP
	; does nothing, but loop continues
.loop_restore_hp
	call .Restore1HP
	dec e
	jr nz, .loop_restore_hp
	ret

.EnergyDrink:
	call .ConsumeItem
	ld a, SFX_POWER_UP
	call PlaySFX
	call .Func_147b5
	call .DestroyObject
	call .Restore1HP
	jp .Restore1HP

.WarpStar
	ld hl, hff94
	set 2, [hl]
	ld a, SFX_WARP_STAR
	call PlaySFX
	ld hl, wd140
	add hl, bc
	ld a, [hl]
	ld [wObjectXCoords + $1], a
	sub $08
	ld [wKirbyScreenX], a
	ld hl, wd150
	add hl, bc
	ld a, [hl]
	ld [wObjectYCoords + $1], a
	sub $08
	ld [wKirbyScreenY], a
	jr .DestroyObject

.asm_14704
	ld hl, hff94
	set 2, [hl]
	ld a, SFX_POWER_UP
	call PlaySFX

.DestroyObject:
	jp DestroyObject

.Bomb
	call .ConsumeItem
	ld hl, wd3be
	set 2, [hl]
	jr .asm_14723

.Mike
	call .ConsumeItem
	ld hl, wd3be
	set 1, [hl]
.asm_14723
	ld a, SFX_POWER_UP
	call PlaySFX
	ld a, [wd06b]
	and a
	jr z, .asm_14730
	jr .DestroyObject
.asm_14730
	ld a, [hff8e]
	bit 7, a
	jr z, .asm_14748
	ld a, [hff92]
	and KIRBY2F_LAND
	push af
	call Func_3d48
	pop af
	ld [hff92], a
	xor a
	ld [wd094], a
.asm_14748
	ld a, $08
	ld [hff8e], a
	jr .DestroyObject

.asm_1474f
	call .ConsumeItem
	ld a, [wd06b]
	and a
	jr z, .asm_14761
	ld a, $01
	ld a, $01 ; unnecessary
	ld [wd3be], a
	jr .DestroyObject
.asm_14761
	ld hl, wd3be
	res 0, [hl]
	ld a, LOW(MINT_LEAF_DURATION)
	ld [wMintLeafCounter + 0], a
	ld a, HIGH(MINT_LEAF_DURATION)
	ld [wMintLeafCounter + 1], a
	ld a, [wArea]
ASSERT FLOAT_ISLANDS_7 == MT_DEDEDE_7
	cp FLOAT_ISLANDS_7 ; MT_DEDEDE_7
	jr nz, .not_kaboola_fight
	ld a, [wStage]
	cp FLOAT_ISLANDS
	jr z, .kaboola_fight
	cp MT_DEDEDE
	jr nz, .not_kaboola_fight
.kaboola_fight
	ld a, [hff91]
	and $bf
	or $03
	ld [hff91], a
	ld hl, hff90
	set 5, [hl]
.not_kaboola_fight
	call Func_3768
	ld a, MUSIC_MINT_LEAF
	call PlayMusic
	jp DestroyObject

.Restore1HP:
	ld a, [wMaxHP]
	ld l, a
	ld a, [wHP]
	cp l
	ret z
	inc a
	ld [wHP], a
	push de
	ld a, SFX_RESTORE_HP
	call PlaySFX
	pop de
	ld a, 10
	jp WaitAFrames

.Func_147b5:
	ld a, [wd06b]
	and a
	ret z
	ld hl, wd3be
	set 4, [hl]
	ret

.ConsumeItem:
	push bc
	ld hl, wd3aa
	add hl, bc
	ld a, [hl]
	cp $ff
	jr z, .asm_147e2
	ld e, a
	and %111
	ld c, a
	xor a
	ld b, a
	ld d, a
	srl e
	srl e
	srl e
	ld hl, PowersOfTwo
	add hl, bc
	ld a, [hl]
	ld hl, wConsumedItems
	add hl, de
	or [hl]
	ld [hl], a
.asm_147e2
	pop bc
	ret

Func_147e4::
	call .Func_1489b
	ld a, [hff8e]
	bit 4, a
	ret z
	bit 2, a
	ret nz
	call Func_14993
	ld hl, hff94
	bit 7, [hl]
	call z, Func_148ea
	ld bc, $1
.loop
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	and a
	jp z, .asm_1488d
	ld hl, wd1a0
	add hl, bc
	bit 7, [hl]
	jr z, .asm_1488d
	bit 0, [hl]
	jr nz, .asm_1488d
	ld hl, wd190
	add hl, bc
	bit 2, [hl]
	jr nz, .asm_1488d
	ld hl, wd190
	add hl, bc
	bit 6, [hl]
	jr z, .asm_1483d
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	inc hl
	inc hl
	ld a, [hl]
	cp $05
	jr z, .asm_1488d
	cp $08
	jr z, .asm_1488d
	cp $0a
	jr z, .asm_1488d
	jr .asm_14844
.asm_1483d
	call Func_148dc
	bit 1, [hl]
	jr z, .asm_1488d
.asm_14844
	ld hl, wd150
	ld a, [hl]
	add hl, bc
	sub [hl]
	bit 7, a
	jr z, .asm_14850
	cpl
	inc a
.asm_14850
	cp $14
	jr nc, .asm_1488d
	ld a, [hff92]
	ld e, a
	ld hl, wd140
	ld a, [hl]
	add hl, bc
	sub [hl]
	bit 5, e
	jr nz, .asm_14864
	cpl
	inc a
.asm_14864
	cp $2a
	jr nc, .asm_1488d
	ld hl, wd1a0
	add hl, bc
	set 0, [hl]
	bit 1, [hl]
	jr nz, .asm_1488d
	ld hl, wd1b0
	add hl, bc
	ld a, [hl]
	and $22
	jr nz, .asm_1488d
	ld hl, GfxScript_20003
	ld de, MotionScript_10000
	call Func_21e6
	ld hl, hff94
	set 7, [hl]
	ld hl, wd3f6
	inc [hl]
.asm_1488d
	inc c
	ld a, c
	cp $0d
	jr nz, .asm_14895
	inc c
	inc c
.asm_14895
	cp $10
	jp nz, .loop
	ret

.Func_1489b:
	ld hl, hff94
	bit 7, [hl]
	jr z, .asm_148d7
	ld bc, OBJECT_SLOT_01
.loop_objects
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next_object
	ld hl, wObjectCustomFuncs
	add hl, bc
	add hl, bc
	ld a, [hli]
	cp $1a
	jr nz, .next_object
	ld a, [hl]
	cp $40
	jr z, .asm_148d7
.next_object
	inc c
	ld a, c
	cp NUM_OBJECT_SLOTS
	jr nz, .loop_objects
	ld a, [wd3f8]
	inc a
	cp 10
	jr nz, .asm_148d3
	ld hl, hff94
	res 7, [hl]
	xor a
	ld [wd3f6], a
.asm_148d3
	ld [wd3f8], a
	ret
.asm_148d7
	xor a
	ld [wd3f8], a
	ret

Func_148dc:
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	add $05
	ld h, [hl]
	jr nc, .asm_148e8
	inc h
.asm_148e8
	ld l, a
	ret

Func_148ea:
	ld a, [wSCX]
	and $0f
	ld l, a
	ld a, [wd140]
	add l
	sub $08
	ld l, a
	ld h, $00
	call MultiplyHLBy16
	ld hl, wd051
	add [hl]
	dec a
	ld d, a
	ld a, [wSCY]
	and $0f
	ld l, a
	ld a, [wd150]
	add l
	sub $10
	ld l, a
	ld h, $00
	call MultiplyHLBy16
	ld hl, wd052
	add [hl]
	dec a
	ld e, a
	push de
	call Func_2e7f
	pop bc
	push bc
	ld c, $03
	ld a, [hff92]
	bit KIRBY2F_LAND_F, a
	jr nz, .asm_1494a
	jr .asm_14933
.asm_1492b
	inc b
	ld a, [wd03f]
	cp b
	jr z, .asm_14991
	inc hl
.asm_14933
	ld a, $00
	add [hl]
	ld e, a
	ld a, $ca
	adc $00
	ld d, a
	ld a, [de]
	cp $04
	jr z, .asm_14969
	cp $05
	jr z, .asm_1496e
	dec c
	jr nz, .asm_1492b
	jr .asm_14991
.asm_1494a
	ld a, b
	and a
	jr z, .asm_14991
.asm_1494e
	dec b
	jr z, .asm_14991
	dec hl
	ld a, $00
	add [hl]
	ld e, a
	ld a, $ca
	adc $00
	ld d, a
	ld a, [de]
	cp $04
	jr z, .asm_14969
	cp $05
	jr z, .asm_1496e
	dec c
	jr nz, .asm_1494e
	jr .asm_14991
.asm_14969
	xor a
	ld c, $7f
	jr .asm_14972
.asm_1496e
	ld a, $03
	ld c, $7c
.asm_14972
	ld [hl], a
	pop de
	ld d, b
	push bc
	push de
	ld hl, $41a2
	call CreateObject_Group3
	ld hl, wd1a0
	add hl, bc
	set 0, [hl]
	ld hl, hff94
	set 7, [hl]
	ld hl, wd3f6
	inc [hl]
	pop de
	pop bc
	jp Func_3076
.asm_14991
	pop bc
	ret

Func_14993:
	ld bc, $0
.asm_14996
	ld hl, wd3f9
	add hl, bc
	ld a, [hli]
	or [hl]
	jr nz, .asm_149a1
	call .Func_149ae
.asm_149a1
	push bc
	call Func_149fb
	pop bc
	inc c
	inc c
	ld a, c
	cp $06
	jr nz, .asm_14996
	ret

.Func_149ae:
	call Random
	and $1e
	add LOW(.data)
	ld e, a
	ld a, HIGH(.data)
	adc $00
	ld d, a
	ld hl, wd3fa
	add hl, bc
	push hl
	ld a, [de]
	ld hl, hff92
	bit KIRBY2F_LAND_F, [hl]
	jr z, .asm_149ca
	cpl
	inc a
.asm_149ca
	pop hl
	ld [hl], a
	inc de
	ld hl, wd406
	add hl, bc
	ld a, [de]
	ld [hl], a
	xor a
	ld hl, wd3ff
	add hl, bc
	ld [hli], a
	ld [hl], a
	ret

.data
	db $0f, $ec
	db $14, $ec
	db $19, $ec
	db $1e, $ec
	db $23, $ec
	db $28, $ec
	db $2c, $f4
	db $2c, $fb
	db $2c, $05
	db $2c, $0c
	db $28, $14
	db $23, $14
	db $1e, $14
	db $19, $14
	db $14, $14
	db $0f, $14

Func_149fb:
	ld hl, wd3fa
	add hl, bc
	ld a, [hl]
	ld de, -$3c
	bit 7, a
	jr z, .asm_14a0c
	cpl
	inc a
	ld de, $3c
.asm_14a0c
	cp $0a
	jr c, .asm_14a5b
	ld hl, wd3ff
	add hl, bc
	ld a, [hl]
	add e
	ld e, a
	ld [hli], a
	ld a, [hl]
	adc d
	ld d, a
	ld [hl], a
	ld hl, wd3f9
	add hl, bc
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	push af
	bit 7, a
	jr z, .asm_14a2d
	cpl
	inc a
.asm_14a2d
	swap a
	and $0f
	inc a
	inc a
	ld d, a
	ld hl, wd406
	add hl, bc
	ld a, [hld]
	cpl
	inc a
	ld e, a
	xor a
.asm_14a3d
	sra e
	rra
	dec d
	jr nz, .asm_14a3d
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc e
	ld [hl], a
	ld hl, wd150
	add [hl]
	dec a
	ld c, a
	pop af
	ld hl, wd140
	add [hl]
	ld b, a
	ld hl, $5c19
	xor a
	jp AddSprite
.asm_14a5b
	xor a
	ld [hld], a
	ld [hl], a
	ret

Func_14a5f::
	ld hl, wd1a0
	add hl, bc
	set 2, [hl]
	push bc
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld c, $0a
	ld a, [hff92]
	bit KIRBY2F_LAND_F, a
	jr z, .asm_14a77
	ld c, $f6
.asm_14a77
	ld a, [wd140]
	add c
	ld c, a
	ld a, [wSCX]
	and $0f
	ld b, a
	ld a, [wd051]
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
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [wd150]
	sub $05
	ld c, a
	ld a, [wSCY]
	and $0f
	ld b, a
	ld a, [wd052]
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
	ret
; 0x14abe

SECTION "Bank 5@4ad6", ROMX[$4ad6], BANK[$5]

; clears WRAM and HRAM
; and inits some variables
InitRAM::
	ld hl, STARTOF(WRAM0)
.loop_clear_wram
	xor a
	ld [hli], a
	ld a, HIGH(STARTOF(WRAM0) + SIZEOF(WRAM0) + SIZEOF(WRAMX))
	cp h
	jr nz, .loop_clear_wram

	ld hl, hLCDC
.loop_clear_hram
	xor a
	ld [hli], a
	ld a, l
	cp LOW(hStack)
	jr nz, .loop_clear_hram

	ld a, $01
	ld [wd051], a
	ld [wd052], a
	ld [wd074], a
	ld a, $30
	ld [wKirbyScreenX], a
	ld a, $00
	ld [wKirbyScreenY], a
	ld a, $ff
	ld [wd096], a
	ld [wd03d], a
	xor a
	ld [hl], a
	ld a, $e4
	ld [wBGP], a
	ld a, $d0
	ld [wOBP], a
	ld a, VBLANK_6 | VBLANK_7
	ld [hVBlankFlags], a
	ld a, $00
	ld [hff8d], a
	ld a, SELECT | START
	ld [wd050], a
	ld a, $01
	ld [wMtDededeDefeatedBosses + MT_DEDEDE_5], a

	; initial RNG seed
	ld hl, wRNG
	ld [hli], a ; $1
	inc a
	ld [hli], a ; $2
	inc a
	ld [hl], a  ; $3
	ret
; 0x14b30

SECTION "Bank 5@4abe", ROMX[$4abe], BANK[$5]

InitDMATransferFunction::
	ld c, LOW(hTransferVirtualOAM)
	ld b, .end - .Func
	ld hl, .Func
.loop_copy
	ld a, [hli]
	ld [$ff00+c], a
	inc c
	dec b
	jr nz, .loop_copy
	ret

.Func:
LOAD "DMA Transfer", HRAM
hTransferVirtualOAM::
	ld a, HIGH(wVirtualOAM)
	ldh [rDMA], a ; start DMA transfer (starts right after instruction)
	ld a, 160 / (1 + 3) ; delay for a total of 160 cycles
.loop
	dec a        ; 1 cycle
	jr nz, .loop ; 3 cycles
	ret
ENDL
.end
; 0x14ad6

SECTION "Bank 5@4b30", ROMX[$4b30], BANK[$5]

Func_14b30::
	ld hl, $4b3a
	ld de, wdc00
	call Decompress
	ret
; 0x14b3a

SECTION "Bank 5@4c4a", ROMX[$4c4a], BANK[$5]

InitAudio::
	ld a, AUDENA_ON
	ldh [rAUDENA], a
	ld a, $77
	ldh [rAUDVOL], a
	ld a, AUDTERM_1_RIGHT | AUDTERM_2_RIGHT | AUDTERM_3_RIGHT | AUDTERM_4_RIGHT | AUDTERM_1_LEFT | AUDTERM_2_LEFT | AUDTERM_3_LEFT | AUDTERM_4_LEFT
	ldh [rAUDTERM], a
	ld a, $ff
	ld [wde01], a
	ld [wde02], a
	ld [wded2], a

	ld hl, wde06
	ld b, $14
	ld a, $aa
.asm_14c68
	ld [hli], a
	dec b
	jr nz, .asm_14c68

	ld hl, WaveSample
	call LoadWaveSample

	ld a, $ff
	call Func_14dc5
	ld a, $ff
	call Func_14c9e
	call Func_14e76

	ld hl, rAUD1HIGH
	set 7, [hl]
	ld hl, rAUD2HIGH
	set 7, [hl]
	ld hl, rAUD3HIGH
	set 7, [hl]
	ld hl, rAUD4GO
	set 7, [hl]

	ld a, $13
	ld [wded3], a
	ld a, $24
	ld [wded4], a
	ret

Func_14c9e:
	ld e, a
	cp $ff
	jp z, Func_14d2c
	ld d, $00
	ld a, [wde03]
	and a
	jr z, .asm_14cd8
	ld hl, $7a61
	add hl, de
	and [hl]
	jr z, .asm_14cd8
	ld bc, $3
.asm_14cb6
	ld hl, $7a61
	add hl, de
	ld a, [hl]
	ld hl, wdeca
	add hl, bc
	and [hl]
	jr z, .asm_14cd3
	ld hl, wdece
	add hl, bc
	ld a, [hl]
	ld hl, $7a85
	add hl, de
	cp [hl]
	ret c
	ld hl, wde52
	add hl, bc
	ld [hl], $00
.asm_14cd3
	dec c
	bit 7, c
	jr z, .asm_14cb6
.asm_14cd8
	ld hl, $7a61
	add hl, de
	ld a, [hl]
	ld [wde04], a
	ld hl, $7a85
	add hl, de
	ld a, [hl]
	ld c, a
	ld hl, Data_17a19
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld a, [de]
	ld h, a
	ld l, c
	push hl
	ld bc, $3
.asm_14cf5
	ld hl, wde52
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_14d15
	call Func_14d67
	ld hl, sp+$00
	ld a, [hl]
	ld hl, wdece
	add hl, bc
	ld [hl], a
	ld a, [wde04]
	ld hl, wdeca
	add hl, bc
	ld [hl], a
	pop hl
	dec h
	push hl
	jr z, .asm_14d1a
.asm_14d15
	dec c
	bit 7, c
	jr z, .asm_14cf5
.asm_14d1a
	pop hl
;	fallthrough

Func_14d1b:
	ld a, [wdeca]
	ld hl, wdecb
	ld c, $03
.asm_14d23
	or [hl]
	inc hl
	dec c
	jr nz, .asm_14d23
	ld [wde03], a
	ret

Func_14d2c:
	ld bc, $3
.asm_14d2f
	ld hl, wde52
	add hl, bc
	ld [hl], b
	ld hl, wdeca
	add hl, bc
	ld [hl], b
	ld hl, wdece
	add hl, bc
	ld [hl], $ff
	dec c
	bit 7, c
	jr z, .asm_14d2f
	ld hl, Data_14d53
	ld de, wde1a
	ld c, $14
.asm_14d4c
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .asm_14d4c
	ret

Data_14d53:
	db $08, $00, $08, $00, $80, $00, $00, $08, $00, $80, $80, $00, $00, $00, $80, $00, $00, $08, $00, $80

; input:
; - [de] = ?
Func_14d67:
	ld hl, wde8a
	add hl, bc
	ld [hl], $24
	xor a
	ld hl, wde92
	add hl, bc
	ld [hl], a
	ld hl, wde9a
	add hl, bc
	ld [hl], a
	ld hl, wdea2
	add hl, bc
	ld [hl], a
	ld hl, wdeaa
	add hl, bc
	ld [hl], a
	ld hl, wdeb2
	add hl, bc
	ld [hl], a
	ld hl, $548e
	add hl, bc
	ld a, [hl]
	ld hl, wdeba
	add hl, bc
	ld [hl], a
	inc de
	ld a, [de]
	ld hl, wde5a
	add hl, bc
	ld [hl], a
	inc de
	ld a, [de]
	ld hl, wde62
	add hl, bc
	ld [hl], a
	inc de
	ld a, [de]
	sra a
	sra a
	add LOW(Data_14dc0)
	ld l, a
	ld h, HIGH(Data_14dc0)
	jr nc, .asm_14dad
	inc h
.asm_14dad
	ld a, [hl]
	ld hl, wde4a
	add hl, bc
	ld [hl], a
	ld hl, wde52
	add hl, bc
	ld [hl], $01
	ld hl, wde82
	add hl, bc
	ld [hl], $01
	ret

Data_14dc0:
	db $00, $05, $ff, $0f, $0a

; input:
; - a = ?
Func_14dc5::
	ld b, a
	ld hl, wde56
	ld c, $04
	xor a
.loop_clear
	ld [hli], a
	dec c
	jr nz, .loop_clear

	ld hl, Data_14d53
	ld de, wde2e
	ld c, $14
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ld a, $ff
	cp b
	ret z
	ld e, b
	ld d, $00
	ld hl, Data_179f3
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld a, [de]
	ld h, a
	push hl
	ld bc, $7
.asm_14df3
	ld hl, wde52
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_14e03
	call Func_14d67
	pop hl
	dec h
	push hl
	jr z, .done
.asm_14e03
	dec c
	ld a, $03
	cp c
	jr nz, .asm_14df3
.done
	pop hl
	ret

Func_14e0b::
	ld b, $07
.asm_14e0d
	ld h, $de
	ld a, $52
	add b
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_14e52
	ld a, b
	cp $04
	ld a, $1a
	jr c, .asm_14e20
	ld a, $2e
.asm_14e20
	ld [$df80], a
	ld h, $de
	ld a, $5a
	add b
	ld l, a
	push hl
	ld e, [hl]
	add $08
	ld l, a
	push hl
	ld d, [hl]
	push bc
	call Func_14f5d
	pop bc
	pop hl
	ld [hl], d
	pop hl
	ld [hl], e
	call Func_15235
	ld h, $de
	ld a, $72
	add b
	ld l, a
	push hl
	ld e, [hl]
	add $08
	ld l, a
	push hl
	ld d, [hl]
	push bc
	call Func_1524f
	pop bc
	pop hl
	ld [hl], d
	pop hl
	ld [hl], e
.asm_14e52
	dec b
	bit 7, b
	jr z, .asm_14e0d
	ld b, $03
.asm_14e59
	ld h, $de
	ld a, $52
	add b
	ld l, a
	ld a, [hl]
	and a
	jr nz, .asm_14e6e
	ld a, $ce
	add b
	ld l, a
	ld [hl], $ff
	add $fc
	ld l, a
	ld [hl], $00
.asm_14e6e
	dec b
	bit 7, b
	jr z, .asm_14e59
	call Func_14d1b
;	fallthrough

Func_14e76:
	ld de, wde2e
	ld a, [wde03]
	bit 0, a
	jr z, .asm_14e82
	ld e, $1a
.asm_14e82
	ld b, $00
	ld hl, wde06
	ld c, LOW(rAUD1SWEEP)
.asm_14e89
	ld a, [de]
	cp [hl]
	jr z, .asm_14e95
	ld [hl], a
	ld [$ff00+c], a
	ld a, c
	cp LOW(rAUD1LEN + 1)
	jr nz, .asm_14e95
	inc b
.asm_14e95
	inc l
	inc e
	inc c
	ld a, c
	cp LOW(rAUD1HIGH + 1)
	jr nz, .asm_14e89
	dec b
	jr nz, .asm_14ea7
	ld a, [wde0a]
	set 7, a
	ldh [rAUD1HIGH], a
.asm_14ea7
	ld de, wde34
	ld a, [wde03]
	bit 1, a
	jr z, .asm_14eb3
	ld e, $20
.asm_14eb3
	ld b, $00
	ld hl, wde0c
	ld c, $16
.asm_14eba
	ld a, [de]
	cp [hl]
	jr z, .asm_14ec6
	ld [hl], a
	ld [$ff00+c], a
	ld a, c
	cp $17
	jr nz, .asm_14ec6
	inc b
.asm_14ec6
	inc l
	inc e
	inc c
	ld a, c
	cp $1a
	jr nz, .asm_14eba
	dec b
	jr nz, .asm_14ed8
	ld a, [wde0f]
	set 7, a
	ldh [rNR24], a
.asm_14ed8
	ld de, wde38
	ld a, [wde03]
	bit 4, a
	jr z, .asm_14ee4
	ld e, $24
.asm_14ee4
	ld hl, wde10
	ld c, $1a
.asm_14ee9
	ld a, [de]
	cp [hl]
	jr z, .asm_14eef
	ld [hl], a
	ld [$ff00+c], a
.asm_14eef
	inc l
	inc e
	inc c
	ld a, c
	cp $1f
	jr nz, .asm_14ee9
	ld de, wde3e
	ld a, [wde03]
	bit 3, a
	jr z, .asm_14f03
	ld e, $2a
.asm_14f03
	ld b, $00
	ld hl, wde16
	ld c, LOW(rAUD4LEN)
.asm_14f0a
	ld a, [de]
	cp [hl]
	jr z, .asm_14f16
	ld [hl], a
	ld [$ff00+c], a
	ld a, c
	cp LOW(rAUD4LEN + 1)
	jr nz, .asm_14f16
	inc b
.asm_14f16
	inc l
	inc e
	inc c
	ld a, c
	cp LOW(rAUD4GO + 1)
	jr nz, .asm_14f0a
	dec b
	jr nz, .asm_14f28
	ld a, [wde19]
	set 7, a
	ldh [rNR44], a
.asm_14f28
	ld a, [wde03]
	ld c, a
	ld a, [wde46]
	bit 0, c
	jr z, .asm_14f36
	ld a, [wde42]
.asm_14f36
	ld b, a
	ld a, [wde47]
	bit 1, c
	jr z, .asm_14f41
	ld a, [wde43]
.asm_14f41
	or b
	ld b, a
	ld a, [wde48]
	bit 4, c
	jr z, .asm_14f4d
	ld a, [wde44]
.asm_14f4d
	or b
	ld b, a
	ld a, [wde49]
	bit 3, c
	jr z, .asm_14f59
	ld a, [wde45]
.asm_14f59
	or b
	ldh [rAUDTERM], a
	ret

Func_14f5d:
	ld h, $de
	ld a, $52
	add b
	ld l, a
	dec [hl]
	jr z, .asm_14f68
	ret
.asm_14f67
	inc de
.asm_14f68
	ld h, $de
	ld a, [de]
	ld c, a
	and $e0
	cp $e0
	jp z, .Func_15064
	ld a, $4a
	add b
	ld l, a
	ld a, [hl]
	cp $0f
	jr nz, .asm_14f9a
	bit 4, c
	jp nz, .asm_14fcd
	ld a, c
	and $0f
	cp $0f
	jr z, .asm_14fb6
	add $a0
	ld l, a
	ld h, $54
	jr nc, .asm_14f90
	inc h
.asm_14f90
	ld c, [hl]
	ld a, $12
	call Func_153cb
	ld [hl], c
	jp .asm_14fcd
.asm_14f9a
	ld a, c
	and $1f
	cp $10
	jr z, .asm_14fb6
	bit 4, a
	jr z, .asm_14fa7
	or $e0
.asm_14fa7
	ld c, a
	ld a, $8a
	add b
	ld l, a
	ld a, [hl]
	add c
	push de
	call Func_151f9
	pop de
	jp .asm_14fcd
.asm_14fb6
	call .Func_15038
	ld c, a
	ld h, $de
	ld a, $82
	add b
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_14fc6
	ld [hl], $01
.asm_14fc6
	ld a, c
	and a
	jp z, .asm_14f67
	inc de
	ret

.asm_14fcd
	call .Func_15038
	ld c, a
	ld h, $de
	ld a, $82
	add b
	ld l, a
	ld [hl], $ff
	add $10
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_14ff3
	push bc
	push de
	ld e, a
	ld h, $de
	ld a, $82
	add b
	ld l, a
	push hl
	ld a, c
	call Func_153d3
	ld b, h
	pop hl
	ld [hl], b
	pop de
	pop bc
.asm_14ff3
	push bc
	call .Func_14ffb
	pop bc
	jp .asm_14fc6

.Func_14ffb:
	ld h, $de
	ld a, $a2
	add b
	ld l, a
	ld a, [hl]
	bit 7, a
	jr nz, .asm_15037

.Func_15006:
	add a
	add a
.asm_15008
	push de
	add $d3
	ld e, a
	ld d, $78
	jr nc, .asm_15011
	inc d
.asm_15011
	ld h, $de
	ld a, $72
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	ld a, $7a
	add b
	ld l, a
	inc de
	ld a, [de]
	ld [hl], a
	ld h, $54
	ld a, $96
	add b
	ld l, a
	jr nc, .asm_15029
	inc h
.asm_15029
	ld c, [hl]
	ld h, $de
	ld a, $c2
	add b
	ld l, a
	ld [hl], c
	add $a8
	ld l, a
	ld [hl], $01
	pop de
.asm_15037
	ret

.Func_15038:
	ld a, [de]
	and $e0
	cp $c0
	jr nz, .asm_15043
	inc de
	ld a, [de]
	jr .asm_1505a
.asm_15043
	ld h, $de
	ld a, $aa
	add b
	ld l, a
	ld a, [de]
	and $e0
	swap a
	srl a
	add [hl]
	add $ab
	ld l, a
	ld a, $00
	adc $79
	ld h, a
	ld a, [hl]
.asm_1505a
	ld c, a
	ld h, $de
	ld a, $52
	add b
	ld l, a
	ld a, c
	ld [hl], a
	ret

.Func_15064:
	ld a, c
	cp $f0
	jr nz, .asm_15081
	inc de
	ld h, $de
	ld a, $9a
	add b
	ld l, a
	ld a, [de]
.asm_15071
	swap a
	and $f0
	ld c, a
	ld a, [hl]
	and $0f
	or c
	ld [hl], a
	call Func_15347
	jp .asm_14f67
.asm_15081
	cp $f1
	jr nz, .asm_150a5
	inc de
	ld a, [de]
	ld c, a
	ld h, $de
	ld a, $9a
	add b
	ld l, a
	ld a, [hl]
	swap a
	and $0f
	add c
	bit 7, c
	jr nz, .asm_150a0
	cp $10
	jr c, .asm_150a3
	ld a, $0f
	jr .asm_150a3
.asm_150a0
	jr c, .asm_150a3
	xor a
.asm_150a3
	jr .asm_15071
.asm_150a5
	cp $f2
	jr nz, .asm_150ba
	inc de
	ld a, [de]
	add a
	ld c, a
	add a
	add c
	ld hl, wdeaa
.asm_150b2
	ld c, a
	ld a, l
	add b
	ld l, a
	ld [hl], c
	jp .asm_14f67
.asm_150ba
	cp $f3
	jr nz, .asm_150cf
	inc de
	ld h, $de
	ld a, $52
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	ld a, $82
	add b
	ld l, a
	ld [hl], $ff
	inc de
	ret
.asm_150cf
	cp $f4
	jr nz, .asm_150db
	inc de
	ld a, [de]
	ld hl, wde92
	jp .asm_150b2
.asm_150db
	cp $f5
	jr nz, .asm_150e7
	inc de
	ld a, [de]
	ld hl, wde8a
	jp .asm_150b2
.asm_150e7
	cp $f6
	jr nz, .asm_150fc
	inc de
	ld h, $de
	ld a, $a2
	add b
	ld l, a
	ld a, [de]
	ld [hl], a
	bit 7, a
	call nz, .Func_15006
	jp .asm_14f67
.asm_150fc
	cp $f7
	jr nz, .asm_15108
	inc de
	ld a, [de]
	ld hl, wdeb2
	jp .asm_150b2
.asm_15108
	cp $e2
	jr nz, .asm_1511e
	inc de
	ld a, [de]
	ld c, a
	inc de
	ld a, [de]
	push de
	ld d, a
	ld e, c
	call Func_15215
	call .Func_14ffb
	pop de
	jp .asm_14f67
.asm_1511e
	cp $e3
	jr nz, .asm_15135
	inc de
	ld a, [de]
	push de
	cpl
	inc a
	ld e, a
	ld d, $00
	rla
	jr nc, .asm_1512e
	dec d
.asm_1512e
	call Func_153b6
	pop de
	jp .asm_14f67
.asm_15135
	cp $fe
	jr nz, .asm_1516f
	inc de
	ld a, [de]
	ld c, a
	push de
	ld h, $de
	ld a, $4a
	add b
	ld l, a
	ld e, [hl]
	srl e
	srl e
	ld d, $00
	ld hl, wde42
	add hl, de
	ld a, c
	rra
	jr nc, .asm_15154
	set 4, d
.asm_15154
	rra
	jr nc, .asm_15158
	inc d
.asm_15158
	inc e
	dec e
	jr z, .asm_15161
.asm_1515c
	rlc d
	dec e
	jr nz, .asm_1515c
.asm_15161
	ld a, b
	cp $04
	jr c, .asm_1516a
	inc l
	inc l
	inc l
	inc l
.asm_1516a
	ld [hl], d
	pop de
	jp .asm_14f67
.asm_1516f
	cp $e1
	jr nz, .asm_1517b
	inc de
	ld a, [de]
	ld [$de00], a
	jp .asm_14f67
.asm_1517b
	cp $ff
	jr nz, .asm_1518f
	ld h, $de
	ld a, $52
	add b
	ld l, a
	ld [hl], $00
	add $18
	ld l, a
	xor a
	ld [hl], a
	jp Func_1533b
.asm_1518f
	ld hl, wdeba
	call Func_15198
	jp .asm_14f68

Func_15198:
	ld a, l
	add b
	ld l, a
	push hl
	ld a, $00
	add [hl]
	ld l, a
	ld a, $df
	adc $00
	ld h, a
	call .Func_151ae
	ld a, l
	sub $00
	pop hl
	ld [hl], a
	ret

.Func_151ae:
	ld a, [de]
	cp $f8
	jr nz, .asm_151bb
	inc de
	ld a, [de]
	ld c, a
	inc de
	ld a, [de]
	ld d, a
	ld e, c
	ret
.asm_151bb
	cp $fa
	jr nz, .asm_151ce
	inc de
	inc de
	inc de
	dec hl
	ld [hl], d
	dec hl
	ld [hl], e
	dec de
	ld a, [de]
	ld c, a
	dec de
	ld a, [de]
	ld e, a
	ld d, c
	ret
.asm_151ce
	cp $fb
	jr nz, .asm_151d7
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl
	ret
.asm_151d7
	cp $fc
	jr nz, .asm_151e6
	inc de
	ld a, [de]
	ld c, a
	inc de
	dec hl
	ld [hl], d
	dec hl
	ld [hl], e
	dec hl
	ld [hl], c
	ret
.asm_151e6
	cp $fd
	jr nz, .asm_151f8
	dec [hl]
	jr z, .asm_151f4
	inc hl
	ld e, [hl]
	inc hl
	ld d, [hl]
	dec hl
	dec hl
	ret
.asm_151f4
	inc hl
	inc hl
	inc hl
	inc de
.asm_151f8
	ret

Func_151f9:
	ld e, a
	ld a, $b2
	add b
	ld l, a
	ld a, [hl]
	add a
	add $9e
	ld l, a
	ld a, $00
	adc $54
	ld h, a
	ld a, [hli]
	rlc e
	add e
	ld e, a
	ld a, [hl]
	adc $00
	ld h, a
	ld l, e
	ld a, [hli]
	ld d, a
	ld e, [hl]

Func_15215:
	ld h, $de
	ld a, $4a
	add b
	ld l, a
	ld a, [hl]
	cp $0a
	jr z, .asm_15227
	ld a, $03
	call Func_153ca
	jr .asm_15231
.asm_15227
	ld a, $00
	call Func_153ca
	ld [hl], $80
	inc l
	inc l
	inc l
.asm_15231
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

Func_15235:
	ld h, $de
	ld a, $82
	add b
	ld l, a
	ld a, [hl]
	and a
	ret z
	cp $ff
	ret z
	dec [hl]
	ret nz
	ld a, $a2
	add b
	ld l, a
	ld a, [hl]
	add a
	add a
	add $02
	jp Func_14f5d.asm_15008

Func_1524f:
	ld h, $de
	ld a, $6a
	add b
	ld l, a
	dec [hl]
	jr z, Func_1525a
	ret

Func_15259:
	inc de
Func_1525a:
	ld h, $de
	ld a, [de]
	ld c, a
	and $e0
	jr nz, .asm_1526d
	ld a, c
	and $1f
	ld c, a
	ld a, $6a
	add b
	ld l, a
	ld [hl], c
	inc de
	ret
.asm_1526d
	cp $20
	jr nz, .asm_1528a
	push bc
	push de
	call Func_153a8
	call Func_153b6
	pop de
	pop bc

.asm_1527b
	ld a, [de]
	and $10
	jr z, Func_15259
	ld h, $de
	ld a, $6a
	add b
	ld l, a
	ld [hl], $01
	inc de
	ret
.asm_1528a
	cp $40
	jr nz, .asm_15294
	ld a, c
	and $0f
	jp .asm_152b2
.asm_15294
	cp $60
	jr nz, .asm_152ba
	push de
	call Func_153a8
	ld h, $de
	ld a, $9a
	add b
	ld l, a
	ld a, [hl]
	and $0f
	add e
	bit 7, a
	jr z, .asm_152ab
	xor a
.asm_152ab
	cp $10
	jr c, .asm_152b1
	ld a, $0f
.asm_152b1
	pop de
.asm_152b2
	push de
	call Func_1533b
	pop de
	jp .asm_1527b
.asm_152ba
	cp $80
	jr nz, Func_15311
	ld h, $de
	ld a, $4a
	add b
	ld l, a
	ld a, [hl]
	cp $0a
	jr z, .asm_152dc
	ld a, $01
	call Func_153ca
	ld a, c
	rrca
	rrca
	and $c0
	ld c, a
	ld a, [hl]
	and $3f
	or c
	ld [hl], a
	jp .asm_1527b
.asm_152dc
	ld a, c
	and $0f
	ld hl, wded2
	cp [hl]
	jr z, .asm_15302
	push de
	ld [hl], a
	swap a
	ld e, a
	ld d, $00
	ld hl, $54af
	add hl, de
	xor a
	ldh [rAUD3ENA], a
	call LoadWaveSample
	ld a, $80
	ldh [rAUD3ENA], a
	ld a, [$de14]
	set 7, a
	ldh [rAUD3HIGH], a
	pop de
.asm_15302
	jp .asm_1527b

; input:
; - hl = wave sample data
LoadWaveSample:
	ld de, _AUD3WAVERAM
	ld c, $10
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret

Func_15311:
	cp $e0
	jr nz, .asm_1533a
	ld a, c
	cp $f0
	jr nz, .asm_15326
	inc de
	ld a, [de]
	ld c, a
	ld a, $00
	call Func_153c2
	ld [hl], c
	jp Func_15259
.asm_15326
	cp $ff
	jr nz, .asm_15331
	ld a, $6a
	add b
	ld l, a
	ld [hl], $00
	ret
.asm_15331
	ld hl, $dec2
	call Func_15198
	jp Func_1525a
.asm_1533a
	ret

Func_1533b:
	ld c, a
	ld h, $de
	ld a, $9a
	add b
	ld l, a
	ld a, [hl]
	and $f0
	or c
	ld [hl], a
;	fallthrough

Func_15347:
	push de
	ld a, $ff
	sub [hl]
	swap a
	and $0f
	ld e, a
	ld a, [hl]
	and $0f
	sub e
	ld e, a
	jr nc, .asm_15359
	ld e, $00
.asm_15359
	push hl
	ld hl, wde01
	ld a, b
	cp $04
	jr c, .asm_15363
	inc l
.asm_15363
	ld a, $ff
	sub [hl]
	swap a
	and $0f
	ld d, a
	pop hl
	ld a, e
	sub d
	jr nc, .asm_15371
	xor a
.asm_15371
	ld e, a
	ld a, $4a
	add b
	ld l, a
	ld a, [hl]
	cp $0a
	jr z, .asm_15389
	ld a, $02
	call Func_153ca
	swap e
	ld a, [hl]
	and $0f
	or e
	ld [hl], a
	pop de
	ret
.asm_15389
	ld d, $00
	ld hl, Data_15398
	add hl, de
	ld e, [hl]
	ld a, $02
	call Func_153c2
	ld [hl], e
	pop de
	ret

Data_15398:
	db $00, $60, $60, $60, $40, $40, $40, $40, $20, $20, $20, $20, $20, $20, $20, $20

Func_153a8:
	ld a, c
	and $0f
	ld d, $00
	bit 3, a
	jr z, .asm_153b4
	or $f0
	dec d
.asm_153b4
	ld e, a
	ret

Func_153b6:
	ld a, $03
	call Func_153c2
	ld a, e
	add [hl]
	ld [hli], a
	ld a, d
	adc [hl]
	ld [hl], a
	ret

Func_153c2:
	push af
	ld h, $de
	ld a, $4a
	add b
	ld l, a
	pop af
;	fallthrough
Func_153ca:
	add [hl]
Func_153cb:
	ld hl, $df80
	add [hl]
	ld l, a
	ld h, $de
	ret

Func_153d3:
	push bc
	push de
	ld d, $dc
	ld l, a
	ld h, d
	and e
	rra
	ld a, [de]
	adc [hl]
	ld c, a
	inc d
	ld h, d
	ld a, [de]
	adc [hl]
	ld b, a
	ld a, l
	sub e
	jr nc, .asm_153e9
	cpl
	inc a
.asm_153e9
	ld l, a
	dec h
	ld a, c
	sub [hl]
	ld e, a
	inc h
	ld a, b
	sbc [hl]
	ld h, a
	ld l, e
	pop de
	pop bc
	ret
; 0x153f6

SECTION "Bank 5@79f3", ROMX[$79f3], BANK[$5]

Data_179f3:
	table_width 2, Data_179f3
	dw $54df ; MUSIC_BUBBLY_CLOUDS_INTRO
	dw $54ec ; MUSIC_GREEN_GREENS_INTRO
	dw $54f9 ; MUSIC_INVINCIBILITY_CANDY
	dw $5506 ; MUSIC_GAME_OVER
	dw $5513 ; MUSIC_SPARKLING_STAR
	dw $551a ; MUSIC_TITLESCREEN
	dw $5527 ; MUSIC_FLOAT_ISLANDS_INTRO
	dw $5534 ; MUSIC_LIFE_LOST
	dw $553e ; MUSIC_BOSS_BATTLE
	dw $554b ; MUSIC_MINT_LEAF
	dw $5558 ; MUSIC_VICTORY
	dw $5565 ; MUSIC_CREDITS
	dw $5572 ; MUSIC_CASTLE_LOLOLO_INTRO
	dw $557f ; MUSIC_GREEN_GREENS
	dw $558c ; MUSIC_FLOAT_ISLANDS
	dw $5599 ; MUSIC_BUBBLY_CLOUDS
	dw $55a6 ; MUSIC_CASTLE_LOLOLO
	dw $55b3 ; MUSIC_DEDEDE_BATTLE
	dw $55c0 ; MUSIC_MT_DEDEDE
	assert_table_length NUM_MUSICS

Data_17a19:
	table_width 2, Data_17a19
	dw $707e ; SFX_00
	dw $7085 ; SFX_INHALE
	dw $708c ; SFX_02
	dw $7090 ; SFX_SWALLOW
	dw $7094 ; SFX_JUMP
	dw $7098 ; SFX_BUMP
	dw $709c ; SFX_DAMAGE
	dw $70a3 ; SFX_ENTER_DOOR
	dw $70aa ; SFX_08
	dw $70ae ; SFX_POWER_UP
	dw $70b2 ; SFX_10
	dw $70b6 ; SFX_RESTORE_HP
	dw $70ba ; SFX_WARP_STAR
	dw $70c1 ; SFX_13
	dw $70c8 ; SFX_14
	dw $70cc ; SFX_15
	dw $70d0 ; SFX_16
	dw $70d4 ; SFX_17
	dw $70d8 ; SFX_18
	dw $70dc ; SFX_19
	dw $70e0 ; SFX_20
	dw $70e4 ; SFX_21
	dw $70e8 ; SFX_1UP
	dw $70ef ; SFX_23
	dw $70f9 ; SFX_PAUSE
	dw $7106 ; SFX_25
	dw $710a ; SFX_CURSOR
	dw $710e ; SFX_GAME_START
	dw $7112 ; SFX_28
	dw $7116 ; SFX_29
	dw $7120 ; SFX_30
	dw $7124 ; SFX_31
	dw $7128 ; SFX_BOSS_DEFEAT
	dw $712c ; SFX_33
	dw $7139 ; SFX_34
	dw $7140 ; SFX_35
	assert_table_length NUM_SFX
; 0x17a61

SECTION "Bank 5@7aa9", ROMX[$7aa9], BANK[$5]

; triangle wave sample
WaveSample:
	dn  0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 14, 13, 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1,  0,  0
; 0x17ab9
