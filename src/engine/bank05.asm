SECTION "Bank 5@401a", ROMX[$401a], BANK[$5]

; handles motion of object in slot bc
; that is being inhaled by Kirby
; also handles when it gets in Kirby's mouth
InhaleObject:
	ld hl, wd1a0
	add hl, bc
	bit 7, [hl]
	ret z
	ld hl, wObjectScreenXPositions + OBJECT_SLOT_KIRBY
	ld e, [hl]
	add hl, bc
	ld a, [hl]
	sub e ; (obj X) - (Kirby X)
	ld de, -0.117
	jr nc, .got_x_distance
	cpl
	inc a
	ld de, 0.117
.got_x_distance
	; a = X distance between obj and Kirby
	cp 10
	jr c, .within_10_px
	; add de to obj x velocity
	ld hl, wObjectXVels
	add hl, bc
	add hl, bc
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a

	ld d, 3
	ld hl, wObjectScreenYPositions
	ld e, [hl]
	add hl, bc
	ld a, [hl]
	inc a
	sub e
	cpl
	inc a
	ld e, a
	; e = (Kirby Y) - (obj Y + 1)
	xor a
.loop_division
	sra e
	rra
	dec d
	jr nz, .loop_division
	; add ((Kirby Y) - (obj Y + 1)) / 8 to obj y velocity
	ld hl, wObjectYVels
	add hl, bc
	add hl, bc
	ld [hli], a
	ld [hl], e
	ret

.within_10_px
	; < 10 pixels from Kirby X coordinate
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_PERSISTENT_F, [hl]
	jr z, .not_persistent
	ld a, TRUE
	call ExecuteItemEffect
	jr .skip_score

.not_persistent
	; add this enemy's score
	ld hl, wEnemyScoreMultiplier
	inc [hl]
	ld d, [hl]
	call Func_148dc
	inc hl
.loop_score_multiplier
	ld a, [hl] ; OBJ_SCORE
	call AddToScore
	dec d
	jr nz, .loop_score_multiplier
	call DestroyObject

.skip_score
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
	jr nz, .done
	xor a
	ld [wEnemyScoreMultiplier], a
	ld hl, hKirbyFlags5
	res KIRBY5F_INHALING_OBJECT_F, [hl]
	ld hl, hKirbyFlags2
	res KIRBY2F_INHALE_F, [hl]
	ld hl, hKirbyFlags4
	set KIRBY4F_NONSTICKY_B_F, [hl]
	ld a, SFX_02
	call PlaySFX
	ld hl, wPowerUpAttack
	bit POWERUP_MINT_LEAF_F, [hl]
	jp nz, StartMintLeaf
	bit POWERUP_CONSUMABLE_F, [hl]
	jr z, .done
	res POWERUP_CONSUMABLE_F, [hl]
	ld hl, hKirbyFlags4
	set KIRBY4F_UNK4_F, [hl]
.done
	ret

Func_140c2:
	call Func_140d5
	ret c
	ld hl, hKirbyFlags5
	set KIRBY5F_INHALING_OBJECT_F, [hl]
	jp SetObjectUpdateFuncArgAsAnimScript
; 0x140ce

SECTION "Bank 5@40d5", ROMX[$40d5], BANK[$5]

Func_140d5:
	ld hl, wObjectStatuses
	add hl, bc
	set OBJSTAT_UNK5_F, [hl]
	ld hl, wd1a0
	add hl, bc
	bit OBJFLAG_INHALED_F, [hl]
	jr nz, .asm_140e7
	res OBJFLAG_3_F, [hl]
.set_carry
	scf
	ret
.asm_140e7
	res OBJFLAG_INHALED_F, [hl]
	bit OBJFLAG_3_F, [hl]
	jr nz, .set_carry
	set OBJFLAG_3_F, [hl]
	xor a
	ret
; 0x140f1

SECTION "Bank 5@4105", ROMX[$4105], BANK[$5]

Func_14105:
	ld hl, wObjectStatuses
	add hl, bc
	res OBJSTAT_UNK1_F, [hl]
	ld hl, wd1a0
	add hl, bc
	bit OBJFLAG_INHALED_F, [hl]
	ret z ; not being inhaled
	res OBJFLAG_INHALED_F, [hl]
	ld hl, wObjectStatuses
	add hl, bc
	set OBJSTAT_UNK1_F, [hl]
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
	dw -0.25
	dw -1.00
	dw  0.25
	dw  1.00
; 0x14148

SECTION "Bank 5@415e", ROMX[$415e], BANK[$5]

SetObjectUpdateFuncArgAsAnimScript:
	ld hl, wObjectAnimScriptPtrs
	add hl, bc
	add hl, bc
	ld d, h
	ld e, l
	ld hl, wObjectUpdateFuncArgs
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	jp Func_241f

Func_14172:
	ld hl, wObjectStatuses
	add hl, bc
	bit OBJSTAT_HURT_F, [hl]
	ret z ; not hurt
	res OBJSTAT_HURT_F, [hl]
	ld a, [wd3cd]
	and a
	ret z
	ld hl, wObjectUpdateFuncArgs
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
	ld hl, wObjectStatuses
	add hl, bc
	bit OBJSTAT_UNK6_F, [hl]
	ret z
	jp SetObjectUpdateFuncArgAsAnimScript
; 0x141bb

SECTION "Bank 5@4208", ROMX[$4208], BANK[$5]

Func_14208:
	ld hl, wd1a0
	add hl, bc
	bit 7, [hl]
	ret z
	ld de, 0.08
	ld hl, wObjectScreenXPositions
	ld a, [hl] ; Kirby's X
	add hl, bc
	cp [hl]
	jr nc, .got_x_vel
	ld de, -0.08
.got_x_vel
	ld hl, wObjectXVels
	call .AddVelocity
	ld de, 0.08
	ld hl, wObjectScreenYPositions
	ld a, [hl] ; Kirby's Y
	add hl, bc
	cp [hl]
	jr nc, .got_y_vel
	ld de, -0.08
.got_y_vel
	ld hl, wObjectYVels

; input:
; - hl = which velocity to add
; - de = velocity value to add
.AddVelocity:
	add hl, bc
	add hl, bc
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	bit 7, a
	jr nz, .cap_negative
	cp HIGH(2.0)
	jr c, .capped
	ld a, HIGH(2.0)
	jr .got_capped_value
.cap_negative
	cp HIGH(-2.0)
	jr nc, .capped
	ld a, HIGH(-2.0)
.got_capped_value
	ld [hld], a
	xor a
	ld [hl], a
.capped
	ret

Func_14252:
	ld hl, wd1a0
	add hl, bc
	bit 7, [hl]
	ret z
	ld hl, wObjectScreenXPositions
	ld a, [hl] ; Kirby's X position
	add hl, bc
	sub [hl]
	jr nc, .got_x_distance
	cpl
	inc a
.got_x_distance
	cp 24
	ret nc ; too far away
	ld hl, wObjectScreenYPositions
	ld a, [hl]
	add hl, bc
	sub [hl]
	jr nc, .got_y_distance
	cpl
	inc a
.got_y_distance
	cp 24
	ret nc ; too far away
	jp SetObjectUpdateFuncArgAsAnimScript
; 0x14276

SECTION "Bank 5@42a3", ROMX[$42a3], BANK[$5]

Func_142a3:
	ld hl, wObjectScreenXPositions + OBJECT_SLOT_KIRBY
	ld a, [hl]
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], a
	ld hl, wObjectScreenYPositions + OBJECT_SLOT_KIRBY
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

ObjFunc_CountdownToExplosion:
	ld hl, wObjectUpdateFuncArgs
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld d, [hl]
	or d
	ret z ; already 0
	; decrement counter
	dec de
	ld a, d
	ld [hld], a
	ld [hl], e
	or e
	ret nz ; still counting down
	ld hl, AnimScript_203b6
	ld de, MotionScript_10008
	call SetObjectScripts
	ret
; 0x142dc

SECTION "Bank 5@432c", ROMX[$432c], BANK[$5]

ProcessObjectInteractions::
	call .ProcessKirbyInteractions
	call .ProcessObjSlot13Interactions
	call .ProcessObjSlot14Interactions
	ret

.ProcessKirbyInteractions:
	ld c, -4    ; collision y
	lb de, 5, 5 ; width, height
	ld a, [hKirbyFlags2]
	and KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER
	jr nz, .got_collision_box

	ld c, 0     ; collision y
	lb de, 3, 3 ; width, height
	ld hl, hKirbyFlags3
	bit KIRBY3F_DUCK_F, [hl]
	jr z, .got_collision_box

	ld c, 6     ; collision y
	lb de, 2, 1 ; width, height

.got_collision_box
	ld a, [wObjectScreenXPositions + OBJECT_SLOT_KIRBY]
	ld [wCurObjCollisionX], a
	ld a, [wObjectScreenYPositions + OBJECT_SLOT_KIRBY]
	add c
	ld [wCurObjCollisionY], a

	ld bc, OBJECT_GROUP_1_BEGIN
.loop_objects
	push de
	call .CheckObjIsInteractible
	jr c, .next_object
	call .CheckCollisionBoxOverlap
	jr nc, .next_object
	call .CollideWithKirby
.next_object
	pop de
	inc c
	ld a, c
	cp OBJECT_GROUP_1_END
	jr nz, .loop_objects
	ret

.ProcessObjSlot13Interactions:
	ld hl, wObjectActiveStates + OBJECT_SLOT_13
	ld a, [hl]
	and a
	ret z ; OBJECT_NOT_ACTIVE
	ld hl, wd1a0 + OBJECT_SLOT_13
	bit OBJFLAG_IN_VIEW_F, [hl]
	ret z ; not in view
	ld a, [wObjectStatuses + OBJECT_SLOT_13]
	bit OBJSTAT_UNK2_F, a
	ret nz
	ld [wd410], a
	ld a, [wObjectScreenXPositions + OBJECT_SLOT_13]
	ld [wCurObjCollisionX], a
	ld a, [wObjectScreenYPositions + OBJECT_SLOT_13]
	ld [wCurObjCollisionY], a
	ld a, OBJECT_SLOT_13
	ld [wd411], a
	ld hl, wObjectPropertyPtrs + OBJECT_SLOT_13 * $2
	jr .asm_143cd

.ProcessObjSlot14Interactions:
	ld hl, wObjectActiveStates + OBJECT_SLOT_14
	ld a, [hl]
	and a
	ret z ; OBJECT_NOT_ACTIVE
	ld hl, wd1a0 + OBJECT_SLOT_14
	bit OBJFLAG_IN_VIEW_F, [hl]
	ret z ; not in view
	ld a, [wObjectStatuses + OBJECT_SLOT_14]
	bit OBJSTAT_UNK2_F, a
	ret nz
	ld [wd410], a
	ld a, [wObjectScreenXPositions + OBJECT_SLOT_14]
	ld [wCurObjCollisionX], a
	ld a, [wObjectScreenYPositions + OBJECT_SLOT_14]
	ld [wCurObjCollisionY], a
	ld a, OBJECT_SLOT_14
	ld [wd411], a
	ld hl, wObjectPropertyPtrs + OBJECT_SLOT_14 * $2
.asm_143cd
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld d, [hl] ; OBJ_COL_WIDTH
	inc hl
	ld e, [hl] ; OBJ_COL_HEIGHT
	ld bc, OBJECT_GROUP_1_BEGIN
.asm_143d7
	push de
	call .CheckObjIsInteractible
	jr c, .asm_143e7
	call .CheckCollisionBoxOverlap
	jr nc, .asm_143e7
	push bc
	call .CollideWithGroup2Object
	pop bc
.asm_143e7
	pop de
	inc c
	ld a, c
	cp OBJECT_GROUP_1_END
	jr nz, .asm_143d7
	ret

.CollideWithKirby:
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_PERSISTENT_F, [hl]
	jr z, .not_item
	; for items, execute their effects
	push bc
	xor a ; FALSE
	call ExecuteItemEffect
	pop bc
	ret

.not_item
	call Func_148dc
	dec hl
	dec hl
	ld a, [hli] ; OBJ_DAMAGE
	ld [wDamage], a
	inc hl
	ld a, [hli] ; OBJ_UNK5
	ld [wd40f], a
	ld a, [hli] ; OBJ_SCORE
	ld [wScoreToAdd], a
	ld a, [hli] ; OBJ_UNK7
	ld [wd40d + 0], a
	ld a, [hli]
	ld [wd40d + 1], a

	; check if Kirby is impervious to damage
	; either through invincibility or blinking
	ld hl, wInvincibilityCounter
	ld a, [wDamageBlinkingCounter]
	or [hl]
	inc hl
	or [hl]
	jr nz, .skip_damage

	; inflict damage and knock back on Kirby
	ld a, DAMAGE_BLINK_DURATION
	ld [wDamageBlinkingCounter], a
	ld hl, wd1a0 + OBJECT_SLOT_KIRBY
	set OBJFLAG_BLINKING_F, [hl]
	ld a, [hEngineFlags]
	bit KABOOLA_BATTLE_F, a
	jr nz, .no_knock_back
	ld hl, hKirbyFlags5
	set KIRBY5F_DAMAGED_F, [hl]
	res KIRBY5F_DAMAGE_KNOCK_BACK_LEFT_F, [hl]
	ld hl, wObjectScreenXPositions + OBJECT_SLOT_KIRBY
	ld a, [hl]
	add hl, bc
	cp [hl]
	jr nc, .reset_damage_knock_back
	ld hl, hKirbyFlags5
	set KIRBY5F_DAMAGE_KNOCK_BACK_LEFT_F, [hl]
.reset_damage_knock_back
	xor a
	ld [wDamageKnockBack], a
	ld a, SFX_DAMAGE
	call PlaySFX
	jr .apply_damage

.no_knock_back
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

.skip_damage
	ld a, [wd40f]
	bit 3, a
	ret nz
	bit 0, a
	ret z
	call .DecrementObjectHP
	ret nz ; still has HP
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

.CollideWithGroup2Object:
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_PERSISTENT_F, [hl]
	ret nz ; is persistent

	call Func_148dc
	dec hl
	dec hl
	ld a, [hli] ; OBJ_DAMAGE
	ld [wDamage], a
	inc hl
	ld a, [hli] ; OBJ_UNK5
	ld [wd40f], a
	ld a, [hli] ; OBJ_SCORE
	ld [wScoreToAdd], a
	ld a, [hli] ; OBJ_UNK7
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
	call .DecrementObjectHP
	jr nz, .non_zero_hp_1

; zero HP
	ld a, [wScoreToAdd]
	add a ; *2
	call AddToScore
	ld a, [wd40d + 0]
	ld e, a
	ld a, [wd40d + 1]
	ld d, a
	call Func_23af
	jr .asm_144ee

.non_zero_hp_1
	ld hl, AnimScript_20026
.asm_144e4
	ld de, MotionScript_10008
	ld a, [wd411]
	ld c, a
	jp SetObjectScripts
.asm_144ee
	ld a, [wd411]
	ld c, a
	jp DestroyObject
.asm_144f5
	bit 0, a
	jr nz, .asm_1451e

.non_zero_hp_2
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
	jp SetObjectScripts
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
	set SCROLLINGF_UNK3_F, [hl]
.asm_1453b
	call .DecrementObjectHP
	jr nz, .non_zero_hp_2
	ld a, [wScoreToAdd]
	add a ; *2
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
	jp SetObjectScripts

; input:
; - bc = object slot
; output:
; - z set if HP decremented to 0
.DecrementObjectHP:
	ld hl, wObjectStatuses
	add hl, bc
	set OBJSTAT_HURT_F, [hl]
	ld hl, wObjectHPs
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
	ld [wEnemyHurtObjectIndex], a
	ld hl, hEngineFlags
	bit HURT_PAL_EFFECT_F, [hl]
	jr z, .shake_effect
	ld hl, wObjectPropertyFlags
	ld b, $00
	add hl, bc
	set PROPERTY_PAL_F, [hl]
	ld a, 5
	ld [wEnemyHurtCounter], a
	ret
.shake_effect
	ld a, 30
	ld [wEnemyHurtCounter], a
	ret

; input:
; - bc = object slot
; output:
; - carry set if object is inactive 
;   OR OBJFLAG_IN_VIEW is not set
;   OR OBJFLAG_INHALED is set
;   OR PROPERTY_2 is set
.CheckObjIsInteractible:
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	and a
	jr z, .set_carry ; not active
	ld hl, wd1a0
	add hl, bc
	ld a, [hl]
	bit OBJFLAG_IN_VIEW_F, a
	jr z, .set_carry
	bit OBJFLAG_INHALED_F, a
	jr nz, .set_carry
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_2_F, [hl]
	jr nz, .set_carry
	xor a
	ret
.set_carry
	scf
	ret

; input:
; - bc = object slot
; - d = curObj's collision box width
; - e = curObj's collision box height
; - [wCurObjCollisionX] = curObj's collision x coordinate
; - [wCurObjCollisionY] = curObj's collision y coordinate
; output:
; - carry set if object slot bc overlaps
;   with collision box of curObj
.CheckCollisionBoxOverlap:
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hli] ; OBJ_COL_WIDTH
	add d
	ld d, a
	push hl
	ld hl, wObjectScreenXPositions
	add hl, bc
	ld a, [wCurObjCollisionX]
	sub [hl]
	jr nc, .got_x_dist
	cpl
	inc a
.got_x_dist
	cp d
	pop hl
	ret nc ; not within x distance
	ld a, [hli] ; OBJ_COL_HEIGHT
	add e
	ld e, a
	push hl
	ld hl, wObjectScreenYPositions
	add hl, bc
	ld a, [wCurObjCollisionY]
	sub [hl]
	jr nc, .got_y_dist
	cpl
	inc a
.got_y_dist
	cp e
	pop hl
	ret

; input:
; - a = whether item was inhaled (TRUE) or
;   just touched (FALSE)
ExecuteItemEffect:
	ld [wItemWasInhaled], a
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	add OBJ_ITEM_ID
	ld h, [hl]
	incc h
	ld l, a
	ld a, [hl] ; OBJ_ITEM_ID
	and a
	jr z, .InvincibilityCandy ; INVINCIBILITY_CANDY
	dec a
	jp z, .Bomb ; BOMB
	dec a
	jp z, .Mike ; MIKE
	dec a
	jp z, .MintLeaf ; MINT_LEAF
	dec a
	jr z, .SpicyFood ; SPICY_FOOD
	dec a
	jp z, .WarpStar ; WARP_STAR
	dec a
	jp z, .MaximTomato ; MAXIM_TOMATO
	dec a
	jp z, .EnergyDrink ; ENERGY_DRINK
	dec a
	jp z, .SparklingStar ; SPARKLING_STAR
	dec a
	jp z, .OneUp ; ONE_UP

; ITEM_A
	call ConsumeItem
	ld a, CLEAR_ACTIVE | CLEAR_NON_MIKE
	ld [wClearScreenFlags], a
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
	ld hl, wd1a0 + OBJECT_SLOT_KIRBY
	set OBJFLAG_FLASHING_F, [hl]
	ld a, MUSIC_INVINCIBILITY_CANDY
	call PlayMusic
	jp .DestroyObject

.SpicyFood:
	call ConsumeItem
	call Func_147b5
	ld hl, hKirbyFlags6
	set KIRBY6F_UNK5_F, [hl]
	res KIRBY6F_UNK6_F, [hl]
	ld a, SFX_POWER_UP
	call PlaySFX
	ld hl, wd1a0 + OBJECT_SLOT_KIRBY
	set OBJFLAG_FLASHING_F, [hl]
	ld a, LOW(SPICY_FOOD_DURATION)
	ld [wFoodPowerUpCounter + 0], a
	ld a, HIGH(SPICY_FOOD_DURATION)
	ld [wFoodPowerUpCounter + 1], a
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

.WarpStar:
	ld hl, hKirbyFlags5
	set KIRBY5F_TRIGGER_TRANSITION_F, [hl]
	ld a, SFX_WARP_STAR
	call PlaySFX
	ld hl, wObjectScreenXPositions
	add hl, bc
	ld a, [hl]
	ld [wObjectXCoords + OBJECT_SLOT_KIRBY + $1], a
	sub $08
	ld [wKirbyScreenX], a
	ld hl, wObjectScreenYPositions
	add hl, bc
	ld a, [hl]
	ld [wObjectYCoords + OBJECT_SLOT_KIRBY + $1], a
	sub $08
	ld [wKirbyScreenY], a
	jr .DestroyObject

.SparklingStar:
	ld hl, hKirbyFlags5
	set KIRBY5F_TRIGGER_TRANSITION_F, [hl]
	ld a, SFX_POWER_UP
	call PlaySFX

.DestroyObject:
	jp DestroyObject

.Bomb:
	call ConsumeItem
	ld hl, wPowerUpAttack
	set POWERUP_BOMB_F, [hl]
	jr .asm_14723

.Mike:
	call ConsumeItem
	ld hl, wPowerUpAttack
	set POWERUP_MIKE_F, [hl]
.asm_14723
	ld a, SFX_POWER_UP
	call PlaySFX
	ld a, [wItemWasInhaled]
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

.MintLeaf:
	call ConsumeItem
	ld a, [wItemWasInhaled]
	and a
	jr z, StartMintLeaf
	ld a, POWERUP_MINT_LEAF
	ld a, POWERUP_MINT_LEAF ; unnecessary
	ld [wPowerUpAttack], a
	jr .DestroyObject

StartMintLeaf:
	ld hl, wPowerUpAttack
	res POWERUP_MINT_LEAF_F, [hl]

	; set duration of the power up
	ld a, LOW(MINT_LEAF_DURATION)
	ld [wFoodPowerUpCounter + 0], a
	ld a, HIGH(MINT_LEAF_DURATION)
	ld [wFoodPowerUpCounter + 1], a

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
	or KABOOLA_BATTLE | HURT_PAL_EFFECT
	ld [hEngineFlags], a
	ld hl, hPalFadeFlags
	set SCROLLINGF_UNK5_F, [hl]
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
	jp WaitFrames

Func_147b5:
	ld a, [wItemWasInhaled]
	and a
	ret z
	ld hl, wPowerUpAttack
	set POWERUP_CONSUMABLE_F, [hl]
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
	ld c, a ; which power of two to use
	xor a
	ld b, a
	ld d, a
	srl e
	srl e
	srl e ; which byte to use in wConsumedItems
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

InhaleObjectsInRange::
	call .Func_1489b
	ld a, [hKirbyFlags2]
	bit KIRBY2F_INHALE_F, a
	ret z ; not inhaling
	bit KIRBY2F_SPIT_F, a
	ret nz ; is in spitting state

	; handles the inhale particles
	call UpdateInhaleParticles

	ld hl, hKirbyFlags5
	bit KIRBY5F_INHALING_OBJECT_F, [hl]
	call z, Func_148ea

	; loop through all objects, and start
	; inhaling all objects in range
	ld bc, OBJECT_GROUP_1_BEGIN
.loop
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	and a
	jp z, .next_obj
	ld hl, wd1a0
	add hl, bc
	bit OBJFLAG_IN_VIEW_F, [hl]
	jr z, .next_obj ; not in view
	bit OBJFLAG_INHALED_F, [hl]
	jr nz, .next_obj ; already being inhaled
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_2_F, [hl]
	jr nz, .next_obj
	ld hl, wObjectPropertyFlags
	add hl, bc
	bit PROPERTY_PERSISTENT_F, [hl]
	jr z, .not_persistent
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
REPT OBJ_ITEM_ID
	inc hl
ENDR
	; the following items can't be inhaled
	ld a, [hl] ; OBJ_ITEM_ID
	cp WARP_STAR
	jr z, .next_obj
	cp SPARKLING_STAR
	jr z, .next_obj
	cp ITEM_A
	jr z, .next_obj
	jr .check_y

.not_persistent
	call Func_148dc
	bit 1, [hl] ; OBJ_UNK5
	jr z, .next_obj
.check_y
	ld hl, wObjectScreenYPositions
	ld a, [hl] ; Kirby's Y
	add hl, bc
	sub [hl]
	bit 7, a
	jr z, .got_y_dist
	cpl
	inc a
.got_y_dist
	cp 20
	jr nc, .next_obj ; out of range
	; also in y range, inhale object
	ld a, [hKirbyFlags3]
	ld e, a
	ld hl, wObjectScreenXPositions + OBJECT_SLOT_KIRBY
	ld a, [hl]
	add hl, bc
	sub [hl]
	bit KIRBY3F_FACE_LEFT_F, e
	jr nz, .asm_14864
	cpl
	inc a
.asm_14864
	; a = x distance to Kirby
	cp 42
	jr nc, .next_obj
	; flag this object as being inhaled
	ld hl, wd1a0
	add hl, bc
	set OBJFLAG_INHALED_F, [hl]
	bit OBJFLAG_IMMUNE_F, [hl]
	jr nz, .next_obj
	ld hl, wObjectStatuses
	add hl, bc
	ld a, [hl]
	and OBJSTAT_UNK1 | OBJSTAT_UNK5
	jr nz, .next_obj
	ld hl, AnimScript_20003
	ld de, MotionScript_InhaledObject
	call SetObjectScripts
	ld hl, hKirbyFlags5
	set KIRBY5F_INHALING_OBJECT_F, [hl]
	ld hl, wd3f6
	inc [hl]
.next_obj
	inc c
	ld a, c
	cp OBJECT_GROUP_2_BEGIN
	jr nz, .check_if_break
	; skip group 2
	inc c
	inc c
.check_if_break
	cp NUM_OBJECT_SLOTS
	jp nz, .loop
	ret

.Func_1489b:
	ld hl, hKirbyFlags5
	bit KIRBY5F_INHALING_OBJECT_F, [hl]
	jr z, .asm_148d7 ; not inhaling anything
	ld bc, OBJECT_SLOT_01
.loop_objects
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next_object ; is inactive
	; check if its update function
	; is InhaleObject, i.e. is being inhaled
	ld hl, wObjectUpdateFuncs
	add hl, bc
	add hl, bc
	ld a, [hli]
	cp LOW(InhaleObject)
	jr nz, .next_object
	ld a, [hl]
	cp HIGH(InhaleObject)
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
	res KIRBY5F_INHALING_OBJECT_F, [hl]
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
	add OBJ_UNK5
	ld h, [hl]
	incc h
	ld l, a
	ret

Func_148ea:
	ld a, [wSCX]
	and $0f
	ld l, a
	ld a, [wObjectScreenXPositions + OBJECT_SLOT_KIRBY]
	add l
	sub $08
	ld l, a
	ld h, $00
	call DivideHLBy16
	ld hl, wLevelXSection
	add [hl]
	dec a
	ld d, a
	ld a, [wSCY]
	and $0f
	ld l, a
	ld a, [wObjectScreenYPositions + OBJECT_SLOT_KIRBY]
	add l
	sub $10
	ld l, a
	ld h, $00
	call DivideHLBy16
	ld hl, wLevelYSection
	add [hl]
	dec a
	ld e, a
	push de
	call GetLevelBlock
	pop bc
	push bc
	ld c, $03
	ld a, [hKirbyFlags3]
	bit KIRBY3F_FACE_LEFT_F, a
	jr nz, .asm_1494a
	jr .asm_14933
.asm_1492b
	inc b
	ld a, [wLevelWidth]
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
	ld hl, Data_1c1a2
	call CreateObject_Group3
	ld hl, wd1a0
	add hl, bc
	set OBJFLAG_INHALED_F, [hl]
	ld hl, hKirbyFlags5
	set KIRBY5F_INHALING_OBJECT_F, [hl]
	ld hl, wd3f6
	inc [hl]
	pop de
	pop bc
	jp Func_3076
.asm_14991
	pop bc
	ret

UpdateInhaleParticles:
	ld bc, 0
.loop_particles
	ld hl, wInhaleParticleXCoords
	add hl, bc
	ld a, [hli]
	or [hl]
	jr nz, .update
	call .GenerateParticle
.update
	push bc
	call .UpdateParticle
	pop bc
	inc c
	inc c
	ld a, c
	cp NUM_INHALE_PARTICLES * $2
	jr nz, .loop_particles
	ret

.GenerateParticle:
	call Random
	and %11110
	add LOW(.ParticleCoordinates)
	ld e, a
	ld a, HIGH(.ParticleCoordinates)
	adc 0
	ld d, a
	ld hl, wInhaleParticleXCoords + 1
	add hl, bc
	push hl
	ld a, [de]
	ld hl, hKirbyFlags3
	bit KIRBY3F_FACE_LEFT_F, [hl]
	jr z, .facing_right
; facing left
	cpl
	inc a
.facing_right
	pop hl
	ld [hl], a
	inc de
	ld hl, wInhaleParticleYCoords + 1
	add hl, bc
	ld a, [de]
	ld [hl], a
	xor a
	ld hl, wInhaleParticleXVel
	add hl, bc
	ld [hli], a
	ld [hl], a
	ret

; first byte goes wInhaleParticleXCoords
; second byte goes wInhaleParticleYCoords
.ParticleCoordinates:
	;   x,   y
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

.UpdateParticle:
	ld hl, wInhaleParticleXCoords + 1
	add hl, bc
	ld a, [hl]
	ld de, -0.234 ; for facing right
	bit 7, a
	jr z, .got_abs_value
	cpl
	inc a
	ld de, 0.234 ; for facing left
.got_abs_value
	cp 10
	jr c, .destroy_particle
	; wInhaleParticleXVel += de
	ld hl, wInhaleParticleXVel
	add hl, bc
	ld a, [hl]
	add e
	ld e, a
	ld [hli], a
	ld a, [hl]
	adc d
	ld d, a
	ld [hl], a

	; wInhaleParticleXCoords += wInhaleParticleXVel
	ld hl, wInhaleParticleXCoords
	add hl, bc
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	push af
	bit 7, a
	jr z, .got_delta_x
	cpl
	inc a
.got_delta_x
	swap a
	and $0f
	inc a
	inc a
	ld d, a ; = FLOOR(ABS(wInhaleParticleXCoords)) / 16 + 2
	ld hl, wInhaleParticleYCoords + 1
	add hl, bc
	ld a, [hld]
	cpl
	inc a
	ld e, a ; = -FLOOR(wInhaleParticleYCoords)

	xor a
.loop_division
	sra e
	rra
	dec d
	jr nz, .loop_division
	; add e/d to Y coordinates
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc e
	ld [hl], a

	; got coordinates, load sprite
	ld hl, wObjectScreenYPositions + OBJECT_SLOT_KIRBY
	add [hl]
	dec a
	ld c, a ; (ParticleY + KirbyY) - 1
	pop af
	ld hl, wObjectScreenXPositions + OBJECT_SLOT_KIRBY
	add [hl]
	ld b, a ; (ParticleX + KirbyX)
	ld hl, $5c19
	xor a
	jp LoadSprite

.destroy_particle
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
	ld c, 10
	ld a, [hKirbyFlags3]
	bit KIRBY3F_FACE_LEFT_F, a
	jr z, .facing_right
	ld c, -10
.facing_right
	ld a, [wObjectScreenXPositions + OBJECT_SLOT_KIRBY]
	add c
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
	ld hl, wObjectYCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [wObjectScreenYPositions + OBJECT_SLOT_KIRBY]
	sub $05
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
	ld [wLevelXSection], a
	ld [wLevelYSection], a
	ld [wKirbyXVel + 0], a
	ld a, $30
	ld [wKirbyScreenX], a
	ld a, $00
	ld [wKirbyScreenY], a
	ld a, $ff
	ld [wd096], a
	ld [wOverrideMusic], a ; MUSIC_NONE
	xor a
	ld [hl], a
	ld a, $e4
	ld [wBGP], a
	ld a, $d0
	ld [wOBP], a
	ld a, VBLANK_PENDING | VBLANK_IGNORE_INPUT
	ld [hVBlankFlags], a
	ld a, $00
	ld [hKirbyFlags1], a
	ld a, SELECT | START
	ld [wNonStickyKeys], a
	ld a, TRUE
	ld [wMtDededeDefeatedBosses + MT_DEDEDE_5], a

	; initial RNG seed
	ld hl, wRNG
	ld [hli], a ; $1
	inc a
	ld [hli], a ; $2
	inc a
	ld [hl], a  ; $3
	ret

LoadMultiplicationTable::
	ld hl, .MultiplicationTableData
	ld de, wMultiplicationTable
	call Decompress
	ret

.MultiplicationTableData:
	INCBIN "data/data_14b3a.bin.lz"
