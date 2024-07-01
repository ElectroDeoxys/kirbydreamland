SECTION "Bank 5@432c", ROMX[$432c], BANK[$5]

Func_1432c::
	call .Func_14336
	call .Func_14379
	call .Func_143a4
	ret

.Func_14336:
	ld c, $fc
	ld de, $505
	ld a, [hff8e]
	and $98
	jr nz, .asm_14353
	ld c, $00
	ld de, $303
	ld hl, hff92
	bit 4, [hl]
	jr z, .asm_14353
	ld c, $06
	ld de, $201
.asm_14353
	ld a, [wd140]
	ld [wd412], a
	ld a, [wd150]
	add c
	ld [wd413], a
	ld bc, $1
.asm_14363
	push de
	call .Func_145b0
	jr c, .asm_14371
	call .Func_145d1
	jr nc, .asm_14371
	call .Func_143ef
.asm_14371
	pop de
	inc c
	ld a, c
	cp $0d
	jr nz, .asm_14363
	ret

.Func_14379:
	ld hl, wd16d
	ld a, [hl]
	and a
	ret z
	ld hl, wd1ad
	bit 7, [hl]
	ret z
	ld a, [wd1bd]
	bit 2, a
	ret nz
	ld [wd410], a
	ld a, [wd14d]
	ld [wd412], a
	ld a, [wd15d]
	ld [wd413], a
	ld a, $0d
	ld [wd411], a
	ld hl, wd1e0 + 13 * $2
	jr .asm_143cd

.Func_143a4:
	ld hl, wd16e
	ld a, [hl]
	and a
	ret z
	ld hl, wd1ae
	bit 7, [hl]
	ret z
	ld a, [wd1be]
	bit 2, a
	ret nz
	ld [wd410], a
	ld a, [wd14e]
	ld [wd412], a
	ld a, [wd15e]
	ld [wd413], a
	ld a, $0e
	ld [wd411], a
	ld hl, wd1e0 + 14 * $2
.asm_143cd
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld d, [hl]
	inc hl
	ld e, [hl]
	ld bc, $1
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
	cp $0d
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
	ld [wd40c], a
	ld a, [hli]
	ld [wd40d], a
	ld a, [hli]
	ld [wd40e], a
	ld hl, wd3e1
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
	jr nc, .non_zero_hp
	xor a
.non_zero_hp
	ld [wHP], a

.asm_14466
	ld a, [wd40f]
	bit 3, a
	ret nz
	bit 0, a
	ret z
	call .Func_1456d
	ret nz
	ld a, [wd40c]
	add a
	call Func_3168
	ld a, [wHP]
	and a
	ret z
	ld a, [wd40d]
	ld e, a
	ld a, [wd40e]
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
	ld [wd40c], a
	ld a, [hli]
	ld [wd40d], a
	ld a, [hli]
	ld [wd40e], a
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
	ld a, [wd40c]
	add a
	call Func_3168
	ld a, [wd40d]
	ld e, a
	ld a, [wd40e]
	ld d, a
	call Func_23af
	jr .asm_144ee
.asm_144e1
	ld hl, $4026
.asm_144e4
	ld de, $4008
	ld a, [wd411]
	ld c, a
	jp Func_21e6
.asm_144ee
	ld a, [wd411]
	ld c, a
	jp Func_21ce
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
	ld de, $4008
	jp Func_21e6
.asm_1451b
	jp Func_21ce
.asm_1451e
	ld hl, wd410
	bit 0, [hl]
	jr z, .asm_1453b
	bit 1, [hl]
	jr nz, .asm_1453b
	ld a, [hff92]
	and $20
	push af
	call Func_3d48
	pop af
	ld [hff92], a
	ld hl, hff90
	set 3, [hl]
.asm_1453b
	call .Func_1456d
	jr nz, .asm_144f9
	ld a, [wd40c]
	add a
	call Func_3168
	ld a, [wd40d]
	ld e, a
	ld a, [wd40e]
	ld d, a
	call Func_23af
	ld a, [wd410]
	bit 4, a
	jr nz, .asm_14560
	ld a, [wd411]
	ld c, a
	jp Func_21ce
.asm_14560
	ld a, [wd411]
	ld c, a
	ld hl, $4005
	ld de, $4008
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
	ld hl, wd160
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_145cf
	ld hl, wd1a0
	add hl, bc
	ld a, [hl]
	bit 7, a
	jr z, .asm_145cf
	bit 0, a
	jr nz, .asm_145cf
	ld hl, wd190
	add hl, bc
	bit 2, [hl]
	jr nz, .asm_145cf
	xor a
	ret
.asm_145cf
	scf
	ret

.Func_145d1:
	ld hl, wd1e0
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
	ld hl, wd1e0
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
	jr z, .InvincibilityCandy
	dec a
	jp z, .asm_14711
	dec a
	jp z, .asm_1471b
	dec a
	jp z, .asm_1474f
	dec a
	jr z, .MintLeaf
	dec a
	jp z, .WarpStar
	dec a
	jp z, .MaximTomato
	dec a
	jp z, .EnergyDrink
	dec a
	jp z, .asm_14704
	dec a
	jp z, .OneUp

	call .Func_147c0
	ld a, $81
	ld [wd3bf], a
	ld a, SFX_32
	call PlaySFX
	jp Func_21ce

.OneUp:
	call .Func_147c0
	call .Func_147b5
	ld hl, hHUDFlags
	set HUD_UPDATE_LIVES_F, [hl]
	ld a, [wLives]
	inc a
	cp MAX_LIVES
	jr c, .asm_1465c
	ld a, MAX_LIVES
.asm_1465c
	ld [wLives], a
	ld a, SFX_1UP
	call PlaySFX
	jp Func_21ce

.InvincibilityCandy:
	call .Func_147c0
	call .Func_147b5
	ld a, $84
	ld [wd3e1], a
	ld a, $03
	ld [wd3e2], a
	ld hl, wd1a0
	set 4, [hl]
	ld a, MUSIC_INVINCIBILITY_CANDY
	call PlayMusic
	jp .Func_1470e

.MintLeaf:
	call .Func_147c0
	call .Func_147b5
	ld hl, hff95
	set 5, [hl]
	res 6, [hl]
	ld a, SFX_POWER_UP
	call PlaySFX
	ld hl, wd1a0
	set 4, [hl]
	ld a, $fc
	ld [wd3df], a
	ld a, $03
	ld [wd3e0], a
	ld a, MUSIC_MINT_LEAF
	call PlayMusic
	jp .Func_1470e

.MaximTomato:
	call .Func_147c0
	ld a, SFX_POWER_UP
	call PlaySFX
	call .Func_147b5
	call .Func_1470e
	ld a, [wHP]
	ld e, a
	ld a, $88
	sub e
	ld e, a
.asm_146c3
	call .Restore1HP
	dec e
	jr nz, .asm_146c3
	ret

.EnergyDrink:
	call .Func_147c0
	ld a, SFX_POWER_UP
	call PlaySFX
	call .Func_147b5
	call .Func_1470e
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
	ld [wd0a0 + $1], a
	sub $08
	ld [wd05c], a
	ld hl, wd150
	add hl, bc
	ld a, [hl]
	ld [wd0d0 + $1], a
	sub $08
	ld [wd05d], a
	jr .Func_1470e

.asm_14704
	ld hl, hff94
	set 2, [hl]
	ld a, SFX_POWER_UP
	call PlaySFX

.Func_1470e:
	jp Func_21ce

.asm_14711
	call .Func_147c0
	ld hl, wd3be
	set 2, [hl]
	jr .asm_14723

.asm_1471b
	call .Func_147c0
	ld hl, wd3be
	set 1, [hl]
.asm_14723
	ld a, SFX_POWER_UP
	call PlaySFX
	ld a, [wd06b]
	and a
	jr z, .asm_14730
	jr .Func_1470e
.asm_14730
	ld a, [hff8e]
	bit 7, a
	jr z, .asm_14748
	ld a, [hff92]
	and $20
	push af
	call Func_3d48
	pop af
	ld [hff92], a
	xor a
	ld [wd094], a
.asm_14748
	ld a, $08
	ld [hff8e], a
	jr .Func_1470e

.asm_1474f
	call .Func_147c0
	ld a, [wd06b]
	and a
	jr z, .asm_14761
	ld a, $01
	ld a, $01
	ld [wd3be], a
	jr .Func_1470e
.asm_14761
	ld hl, wd3be
	res 0, [hl]
	ld a, $52
	ld [wd3df], a
	ld a, $03
	ld [wd3e0], a
	ld a, [wArea]
	cp $07
	jr nz, .asm_14791
	ld a, [wStage]
	cp FLOAT_ISLANDS
	jr z, .asm_14782
	cp MT_DEDEDE
	jr nz, .asm_14791
.asm_14782
	ld a, [hff91]
	and $bf
	or $03
	ld [hff91], a
	ld hl, hff90
	set 5, [hl]
.asm_14791
	call Func_3768
	ld a, MUSIC_MINT_LEAF
	call PlayMusic
	jp Func_21ce

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

.Func_147c0:
	push bc
	ld hl, wd3aa
	add hl, bc
	ld a, [hl]
	cp $ff
	jr z, .asm_147e2
	ld e, a
	and $07
	ld c, a
	xor a
	ld b, a
	ld d, a
	srl e
	srl e
	srl e
	ld hl, $3408
	add hl, bc
	ld a, [hl]
	ld hl, wd3c4
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
	ld hl, wd160
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
	ld hl, wd1e0
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
	ld hl, $4003
	ld de, $4000
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
	ld bc, $1
.asm_148a5
	ld hl, wd160
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_148bc
	ld hl, wd35a
	add hl, bc
	add hl, bc
	ld a, [hli]
	cp $1a
	jr nz, .asm_148bc
	ld a, [hl]
	cp $40
	jr z, .asm_148d7
.asm_148bc
	inc c
	ld a, c
	cp $10
	jr nz, .asm_148a5
	ld a, [wd3f8]
	inc a
	cp $0a
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
	ld hl, wd1e0
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
	bit 5, a
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
	call Func_234a
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
	call Func_1d01
	and $1e
	add $db
	ld e, a
	ld a, $49
	adc $00
	ld d, a
	ld hl, wd3fa
	add hl, bc
	push hl
	ld a, [de]
	ld hl, hff92
	bit 5, [hl]
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
; 0x149db

SECTION "Bank 5@49fb", ROMX[$49fb], BANK[$5]

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
; 0x14a5f

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
	ld [wd05c], a
	ld a, $00
	ld [wd05d], a
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
	ld [wd048], a
	ld hl, wd02f
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
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
	ld a, HIGH(wVirtualOAM)
	ldh [rDMA], a ; start DMA transfer (starts right after instruction)
	ld a, 160 / (1 + 3) ; delay for a total of 160 cycles
.loop
	dec a        ; 1 cycle
	jr nz, .loop ; 3 cycles
	ret
.end
; 0x14ad6

SECTION "Bank 5@4b30", ROMX[$4b30], BANK[$5]

Func_14b30::
	ld hl, $4b3a
	ld de, wdc00
	call Decompress
	ret
; 0x14b3a

SECTION "Bank 5@4d53", ROMX[$4d53], BANK[$5]

Data_14d53:
	db $08, $00, $08, $00, $80, $00, $00, $08, $00, $80, $80, $00, $00, $00, $80, $00, $00, $08, $00, $80

Func_14d67:

SECTION "Bank 5@4dc5", ROMX[$4dc5], BANK[$5]

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

SECTION "Bank 5@79f3", ROMX[$79f3], BANK[$5]

Data_179f3:
	dw $54df
	dw $54ec
	dw $54f9
	dw $5506
	dw $5513
	dw $551a
	dw $5527
	dw $5534
	dw $553e
	dw $554b
	dw $5558
	dw $5565
	dw $5572
	dw $557f
	dw $558c
	dw $5599
	dw $55a6
	dw $55b3
	dw $55c0
	dw $707e
	dw $7085
	dw $708c
	dw $7090
	dw $7094
	dw $7098
	dw $709c
	dw $70a3
	dw $70aa
	dw $70ae
	dw $70b2
	dw $70b6
	dw $70ba
	dw $70c1
	dw $70c8
	dw $70cc
	dw $70d0
	dw $70d4
	dw $70d8
	dw $70dc
	dw $70e0
	dw $70e4
	dw $70e8
	dw $70ef
	dw $70f9
	dw $7106
	dw $710a
	dw $710e
	dw $7112
	dw $7116
	dw $7120
	dw $7124
	dw $7128
	dw $712c
	dw $7139
	dw $7140
; 0x17a61
