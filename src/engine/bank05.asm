SECTION "Bank 5@401a", ROMX[$401a], BANK[$5]

Func_1401a:
	ld hl, wd1a0
	add hl, bc
	bit 7, [hl]
	ret z
	ld hl, wd140
	ld e, [hl]
	add hl, bc
	ld a, [hl]
	sub e
	ld de, -30
	jr nc, .asm_14032
	cpl
	inc a
	ld de, 30
.asm_14032
	cp $0a
	jr c, .asm_1405d
	ld hl, wObjectXVels
	add hl, bc
	add hl, bc
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ld d, $03
	ld hl, wd150
	ld e, [hl]
	add hl, bc
	ld a, [hl]
	inc a
	sub e
	cpl
	inc a
	ld e, a
	xor a
.asm_1404f
	sra e
	rra
	dec d
	jr nz, .asm_1404f
	ld hl, wObjectYVels
	add hl, bc
	add hl, bc
	ld [hli], a
	ld [hl], e
	ret
.asm_1405d
	ld hl, wd190
	add hl, bc
	bit 6, [hl]
	jr z, .asm_1406c
	ld a, $01
	call Func_14600
	jr .asm_1407f
.asm_1406c
	ld hl, wd3f7
	inc [hl]
	ld d, [hl]
	call Func_148dc
	inc hl
.asm_14075
	ld a, [hl]
	call AddToScore
	dec d
	jr nz, .asm_14075
	call DestroyObject
.asm_1407f
	ld hl, hKirbyFlags2
	set KIRBY2F_MOUTHFUL_F, [hl]
	ld hl, hKirbyFlags4
	bit KIRBY4F_UNK5_F, [hl]
	jr nz, .asm_14090
	ld hl, hKirbyFlags5
	set KIRBY5F_UNK6_F, [hl]
.asm_14090
	ld hl, wd3f6
	dec [hl]
	jr nz, .asm_140c1
	xor a
	ld [wd3f7], a
	ld hl, hKirbyFlags5
	res KIRBY5F_UNK7_F, [hl]
	ld hl, hKirbyFlags2
	res KIRBY2F_INHALE_F, [hl]
	ld hl, hKirbyFlags4
	set KIRBY4F_UNK1_F, [hl]
	ld a, SFX_02
	call PlaySFX
	ld hl, wd3be
	bit 0, [hl]
	jp nz, Func_14761
	bit 4, [hl]
	jr z, .asm_140c1
	res 4, [hl]
	ld hl, hKirbyFlags4
	set KIRBY4F_UNK4_F, [hl]
.asm_140c1
	ret

Func_140c2:
	call Func_140d5
	ret c
	ld hl, hKirbyFlags5
	set KIRBY5F_UNK7_F, [hl]
	jp Func_1415e
; 0x140ce

SECTION "Bank 5@40d5", ROMX[$40d5], BANK[$5]

Func_140d5:
	ld hl, wd1b0
	add hl, bc
	set 5, [hl]
	ld hl, wd1a0
	add hl, bc
	bit OBJFLAG_0_F, [hl]
	jr nz, .asm_140e7
	res OBJFLAG_3_F, [hl]
.set_carry
	scf
	ret
.asm_140e7
	res OBJFLAG_0_F, [hl]
	bit OBJFLAG_3_F, [hl]
	jr nz, .set_carry
	set OBJFLAG_3_F, [hl]
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
	bit OBJFLAG_0_F, [hl]
	ret z
	res OBJFLAG_0_F, [hl]
	ld hl, wd1b0
	add hl, bc
	set 1, [hl]
	ld hl, wObjectXCoords
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [wGlobalCounter]
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
	ld hl, wObjectAnimScriptPtrs
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

Func_14172:
	ld hl, wd1b0
	add hl, bc
	bit 7, [hl]
	ret z
	res 7, [hl]
	ld a, [wd3cd]
	and a
	ret z
	ld hl, wd37a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call Func_2708
	push bc
	jr c, .asm_14195
	ld a, [wd3ba]
	ld c, a
	call Func_21d5
.asm_14195
	pop bc
	ret
; 0x14197

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
	ld hl, hKirbyFlags3
	bit KIRBY3F_DIVE_F, [hl]
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
	ld a, [hKirbyFlags2]
	and KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER
	jr nz, .asm_14353
	ld c, 0
	ld de, $303
	ld hl, hKirbyFlags3
	bit KIRBY3F_DUCK_F, [hl]
	jr z, .asm_14353
	ld c, 6
	ld de, $201
.asm_14353
	ld a, [wd140]
	ld [wd412], a
	ld a, [wd150 + OBJECT_SLOT_00]
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
	ld hl, wd1a0 + OBJECT_SLOT_13
	bit OBJFLAG_7_F, [hl]
	ret z
	ld a, [wd1b0 + OBJECT_SLOT_13]
	bit 2, a
	ret nz
	ld [wd410], a
	ld a, [wd140 + OBJECT_SLOT_13]
	ld [wd412], a
	ld a, [wd150 + OBJECT_SLOT_13]
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
	ld hl, wd1a0 + OBJECT_SLOT_14
	bit OBJFLAG_7_F, [hl]
	ret z
	ld a, [wd1b0 + OBJECT_SLOT_14]
	bit 2, a
	ret nz
	ld [wd410], a
	ld a, [wd140 + OBJECT_SLOT_14]
	ld [wd412], a
	ld a, [wd150 + OBJECT_SLOT_14]
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
	call Func_14600
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
	ld hl, wd1a0 + OBJECT_SLOT_00
	set OBJFLAG_BLINKING_F, [hl]
	ld a, [hEngineFlags]
	bit ENGINEF_UNK0_F, a
	jr nz, .asm_14453
	ld hl, hKirbyFlags5
	set KIRBY5F_UNK3_F, [hl]
	res KIRBY5F_UNK4_F, [hl]
	ld hl, wd140
	ld a, [hl]
	add hl, bc
	cp [hl]
	jr nc, .asm_14448
	ld hl, hKirbyFlags5
	set KIRBY5F_UNK4_F, [hl]
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
	ld hl, AnimScript_2003c
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
	ld hl, AnimScript_20026
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
	ld hl, AnimScript_2003c
	bit 3, a
	jr nz, .asm_14515
	ld hl, AnimScript_20017
	bit 4, a
	jr nz, .asm_14515
	ld hl, AnimScript_20026
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
	ld a, [hKirbyFlags3]
	and KIRBY3F_FACE_LEFT
	push af
	call Func_3d48
	pop af
	ld [hKirbyFlags3], a
	ld hl, hPalFadeFlags
	set FADE_3_F, [hl]
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
	ld hl, AnimScript_20005
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
	ld hl, hEngineFlags
	bit ENGINEF_UNK1_F, [hl]
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
	bit OBJFLAG_7_F, a
	jr z, .set_carry
	bit OBJFLAG_0_F, a
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

Func_14600:
	ld [wd06b], a
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	add $03
	ld h, [hl]
	incc h
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

	call ConsumeItem
	ld a, $81
	ld [wd3bf], a
	ld a, SFX_BOSS_DEFEAT
	call PlaySFX
	jp DestroyObject

.OneUp:
	call ConsumeItem
	call Func_147b5
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
	call ConsumeItem
	call Func_147b5
	ld a, LOW(INVINCIBILITY_DURATION)
	ld [wInvincibilityCounter + 0], a
	ld a, HIGH(INVINCIBILITY_DURATION)
	ld [wInvincibilityCounter + 1], a
	ld hl, wd1a0 + OBJECT_SLOT_00
	set OBJFLAG_FLASHING_F, [hl]
	ld a, MUSIC_INVINCIBILITY_CANDY
	call PlayMusic
	jp .DestroyObject

.MintLeaf:
	call ConsumeItem
	call Func_147b5
	ld hl, hKirbyFlags6
	set KIRBY6F_UNK5_F, [hl]
	res KIRBY6F_UNK6_F, [hl]
	ld a, SFX_POWER_UP
	call PlaySFX
	ld hl, wd1a0 + OBJECT_SLOT_00
	set OBJFLAG_FLASHING_F, [hl]
	ld a, LOW($3fc)
	ld [wMintLeafCounter + 0], a
	ld a, HIGH($3fc)
	ld [wMintLeafCounter + 1], a
	ld a, MUSIC_MINT_LEAF
	call PlayMusic
	jp .DestroyObject

.MaximTomato:
	call ConsumeItem
	ld a, SFX_POWER_UP
	call PlaySFX
	call Func_147b5
	call .DestroyObject
	ld a, [wHP]
	ld e, a
	ld a, $88
	sub e
	ld e, a ; $88 - wHP
	; this loops many times unnecessarily
	; when HP reaches max, calling Restore1HP
	; does nothing, but loop continues
.loop_restore_hp
	call Restore1HP
	dec e
	jr nz, .loop_restore_hp
	ret

.EnergyDrink:
	call ConsumeItem
	ld a, SFX_POWER_UP
	call PlaySFX
	call Func_147b5
	call .DestroyObject
	call Restore1HP
	jp Restore1HP

.WarpStar
	ld hl, hKirbyFlags5
	set KIRBY5F_UNK2_F, [hl]
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
	ld hl, hKirbyFlags5
	set KIRBY5F_UNK2_F, [hl]
	ld a, SFX_POWER_UP
	call PlaySFX

.DestroyObject:
	jp DestroyObject

.Bomb
	call ConsumeItem
	ld hl, wd3be
	set 2, [hl]
	jr .asm_14723

.Mike
	call ConsumeItem
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
	ld a, [hKirbyFlags2]
	bit KIRBY2F_HOVER_F, a
	jr z, .asm_14748
	ld a, [hKirbyFlags3]
	and KIRBY3F_FACE_LEFT
	push af
	call Func_3d48
	pop af
	ld [hKirbyFlags3], a
	xor a
	ld [wd094], a
.asm_14748
	ld a, KIRBY2F_MOUTHFUL
	ld [hKirbyFlags2], a
	jr .DestroyObject

.asm_1474f
	call ConsumeItem
	ld a, [wd06b]
	and a
	jr z, Func_14761
	ld a, $01
	ld a, $01 ; unnecessary
	ld [wd3be], a
	jr .DestroyObject

Func_14761:
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
	ld a, [hEngineFlags]
	and ~ENGINEF_UNK6
	or ENGINEF_UNK0 | ENGINEF_UNK1
	ld [hEngineFlags], a
	ld hl, hPalFadeFlags
	set FADE_5_F, [hl]
.not_kaboola_fight
	call Func_3768
	ld a, MUSIC_MINT_LEAF
	call PlayMusic
	jp DestroyObject

Restore1HP:
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

Func_147b5:
	ld a, [wd06b]
	and a
	ret z
	ld hl, wd3be
	set 4, [hl]
	ret

ConsumeItem:
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
	ld a, [hKirbyFlags2]
	bit KIRBY2F_INHALE_F, a
	ret z
	bit KIRBY2F_INTERRUPT_INHALE_F, a
	ret nz
	call Func_14993
	ld hl, hKirbyFlags5
	bit KIRBY5F_UNK7_F, [hl]
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
	bit OBJFLAG_7_F, [hl]
	jr z, .asm_1488d
	bit OBJFLAG_0_F, [hl]
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
	cp WARP_STAR
	jr z, .asm_1488d
	cp ITEM_8
	jr z, .asm_1488d
	cp ITEM_A
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
	ld a, [hKirbyFlags3]
	ld e, a
	ld hl, wd140
	ld a, [hl]
	add hl, bc
	sub [hl]
	bit KIRBY3F_FACE_LEFT_F, e
	jr nz, .asm_14864
	cpl
	inc a
.asm_14864
	cp $2a
	jr nc, .asm_1488d
	ld hl, wd1a0
	add hl, bc
	set OBJFLAG_0_F, [hl]
	bit OBJFLAG_1_F, [hl]
	jr nz, .asm_1488d
	ld hl, wd1b0
	add hl, bc
	ld a, [hl]
	and $22
	jr nz, .asm_1488d
	ld hl, AnimScript_20003
	ld de, MotionScript_10000
	call Func_21e6
	ld hl, hKirbyFlags5
	set KIRBY5F_UNK7_F, [hl]
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
	ld hl, hKirbyFlags5
	bit KIRBY5F_UNK7_F, [hl]
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
	cp LOW($401a)
	jr nz, .next_object
	ld a, [hl]
	cp HIGH($401a)
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
	ld hl, hKirbyFlags5
	res KIRBY5F_UNK7_F, [hl]
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
	incc h
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
	ld a, [wd150 + OBJECT_SLOT_00]
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
	ld a, [hKirbyFlags3]
	bit KIRBY3F_FACE_LEFT_F, a
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
	set OBJFLAG_0_F, [hl]
	ld hl, hKirbyFlags5
	set KIRBY5F_UNK7_F, [hl]
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
	call .Func_149fb
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
	ld hl, wd3f9 + 1
	add hl, bc
	push hl
	ld a, [de]
	ld hl, hKirbyFlags3
	bit KIRBY3F_FACE_LEFT_F, [hl]
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

; first byte goes to second byte of wd3f9
; second byte goes to wd406
.data
	db 15, -20
	db 20, -20
	db 25, -20
	db 30, -20
	db 35, -20
	db 40, -20
	db 44, -12
	db 44,  -5
	db 44,   5
	db 44,  12
	db 40,  20
	db 35,  20
	db 30,  20
	db 25,  20
	db 20,  20
	db 15,  20

.Func_149fb:
	ld hl, wd3f9 + 1
	add hl, bc
	ld a, [hl]
	ld de, -$3c
	bit 7, a
	jr z, .got_abs_value
	cpl
	inc a
	ld de, $3c
.got_abs_value
	cp 10
	jr c, .asm_14a5b
	; add wd3ff to de
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
	; add de to wd3f9
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
	set OBJFLAG_2_F, [hl]
	push bc
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld c, $0a
	ld a, [hKirbyFlags3]
	bit KIRBY3F_FACE_LEFT_F, a
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
	ld a, [wd150 + OBJECT_SLOT_00]
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
	ld [wKirbyXVel + 0], a
	ld a, $30
	ld [wKirbyScreenX], a
	ld a, $00
	ld [wKirbyScreenY], a
	ld a, $ff
	ld [wd096], a
	ld [wd03d], a ; MUSIC_NONE
	xor a
	ld [hl], a
	ld a, $e4
	ld [wBGP], a
	ld a, $d0
	ld [wOBP], a
	ld a, VBLANK_PENDING | VBLANK_7
	ld [hVBlankFlags], a
	ld a, $00
	ld [hKirbyFlags1], a
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

Func_14b30::
	ld hl, $4b3a
	ld de, wdc00
	call Decompress
	ret
; 0x14b3a
