Func_4000::
	ldh a, [hff8e]
	bit 6, a
	call z, Func_8dc
	ld a, [wKirbyScreenX]
	cp $98
	jr c, .asm_401c
	call Func_8cb
	ldh a, [hff8d]
	res KIRBY1F_UNK4_F, a
	ldh [hff8d], a
	xor a
	ld [wd063], a
	ret
.asm_401c
	ld a, [wd074]
	ld e, a
	ld a, [wd075]
	ld b, a
	ld a, [wd054]
	add b
	ld [wd054], a
	jr nc, .asm_402e
	inc e
.asm_402e
	ld a, e
	and a
	ret z
	ld [wKirbyScreenDeltaX], a
	ldh a, [hff90]
	bit 5, a
	jp nz, .asm_40e1
	inc e
	ld a, [wKirbyScreenX]
	add $0d
	ld [wd05e], a
	call Func_784
	ld d, $00
.asm_4049
	ld a, l
	call Func_643
	jr nc, .asm_4057
	inc hl
	inc d
	dec e
	jr nz, .asm_4049
	jp .asm_40e1
.asm_4057
	call Func_1ccb
	ld a, c
	ld [wd05e], a
	ld a, [wKirbyScreenY]
	sub $10
	ld [wd05f], a
	call Func_819
	and a
	jr z, .asm_4081
	cp $01
	jr z, .asm_4081
	cp $06
	jr z, .asm_4081
	cp $09
	jr z, .asm_4081
	cp $08
	jr nz, .asm_40a4
	call Func_1248
	jr c, .asm_40a4
.asm_4081
	ld a, [wKirbyScreenY]
	sub $01
	ld [wd05f], a
	call Func_819
	and a
	jr z, .asm_40e1
	cp $01
	jr z, .asm_40e1
	cp $06
	jr z, .asm_40e1
	cp $09
	jr z, .asm_40e1
	cp $08
	jr nz, .asm_40a4
	call Func_1257
	jr nc, .asm_40e1
.asm_40a4
	ldh a, [hff8e]
	bit 6, a
	jr nz, .asm_40d5
	call Func_11c9
	ldh a, [hff92]
	and KIRBY2F_UNK2 | KIRBY2F_UNK3
	jr nz, .asm_40d5
	ld a, [wd074]
	cp $01
	jr nc, .asm_40c1
	ld a, [wd075]
	cp $82
	jr c, .asm_40d5
.asm_40c1
	ldh a, [hff8d]
	res KIRBY1F_UNK4_F, a
	ldh [hff8d], a
	ld b, KIRBY2F_UNK1 | KIRBY2F_FACE_LEFT
	ldh a, [hff92]
	and KIRBY2F_DUCK | KIRBY2F_LAND | KIRBY2F_UNK6 | KIRBY2F_FACE_LEFT
	or b
	ldh [hff92], a
	push de
	call Func_37ac
	pop de
.asm_40d5
	call Func_8cb
	ld a, $ff
	ld [wd054], a
	ld a, d
	ld [wKirbyScreenDeltaX], a
.asm_40e1
	ldh a, [hff90]
	bit 4, a
	jr nz, .asm_4115
	ld hl, hff94
	bit 3, [hl]
	jr nz, .asm_4115
	ld hl, hff91
	bit 6, [hl]
	jr nz, .asm_4115
	ldh a, [hff90]
	bit 5, a
	jr nz, .asm_4115
	ld c, $4c
	ldh a, [hff91]
	bit 7, a
	jr nz, .asm_4117
	ldh a, [hff90]
	bit 5, a
	jp nz, .asm_4115
	ld a, [wd042]
	inc a
	ld d, a
	ld a, [wd051]
	cp d
	jr nz, .asm_4117
.asm_4115
	ld c, $98
.asm_4117
	ld a, [wKirbyScreenDeltaX]
	ld b, a
	ld a, [wKirbyScreenX]
	add b
	cp $98
	jr nc, .asm_4149
	ld b, a
	ld a, c
	sub b
	jr c, .asm_4133
	call MoveKirbyRight
	ld a, [wKirbyScreenX]
	xor a
	ld [wd063], a
	ret
.asm_4133
	cpl
	inc a
	ld [wd063], a
	ld b, a
	ld a, [wKirbyScreenDeltaX]
	sub b
	ld [wKirbyScreenDeltaX], a
	ld a, b
	ld [wd063], a
	call MoveKirbyRight
	scf
	ret
.asm_4149
	ldh a, [hff92]
	and KIRBY2F_UNK2 | KIRBY2F_UNK3
	jr nz, .asm_416f
	ld a, [wd074]
	cp $01
	jr nc, .asm_415d
	ld a, [wd075]
	cp $82
	jr c, .asm_416f
.asm_415d
	ld b, KIRBY2F_UNK1 | KIRBY2F_FACE_LEFT
	ldh a, [hff92]
	and KIRBY2F_DUCK | KIRBY2F_LAND | KIRBY2F_UNK6 | KIRBY2F_FACE_LEFT
	or b
	ldh [hff92], a
	call Func_37ac
	ldh a, [hff8d]
	res KIRBY1F_UNK4_F, a
	ldh [hff8d], a
.asm_416f
	call Func_8cb
	ld a, $98
	ld [wKirbyScreenX], a
	xor a
	ld [wd063], a
	ret

Func_417c::
	xor a
	ld [wd063], a
	ldh a, [hff8e]
	bit 6, a
	call z, Func_8dc
	ld a, [wKirbyScreenX]
	cp $08
	jr nz, .asm_4193
	call Func_8cb
	and a
	ret
.asm_4193
	ld a, [wd074]
	ld e, a
	ld a, [wd075]
	ld b, a
	ld a, [wd054]
	sub b
	ld [wd054], a
	jr nc, .asm_41a5
	inc e
.asm_41a5
	ld a, e
	ld [wd063], a
	and a
	ret z
	ldh a, [hff90]
	bit 5, a
	jp nz, .asm_4250
	inc e
	ld a, [wKirbyScreenX]
	add $03
	ld [wd05e], a
	call Func_784
	ld bc, $10
	call SubtractBCFromHL
	ld d, $00
.asm_41c6
	ld a, l
	call Func_643
	jr nc, .asm_41d4
	dec hl
	inc d
	dec e
	jr nz, .asm_41c6
	jp .asm_4250
.asm_41d4
	call Func_1ccb
	ld a, c
	ld [wd05e], a
	ld a, [wKirbyScreenY]
	sub $10
	ld [wd05f], a
	call Func_819
	and a
	jr z, .asm_41fe
	cp $01
	jr z, .asm_41fe
	cp $06
	jr z, .asm_41fe
	cp $09
	jr z, .asm_41fe
	cp $07
	jr nz, .asm_4221
	call Func_1248
	jr c, .asm_4221
.asm_41fe
	ld a, [wKirbyScreenY]
	sub $01
	ld [wd05f], a
	call Func_819
	and a
	jr z, .asm_4250
	cp $01
	jr z, .asm_4250
	cp $06
	jr z, .asm_4250
	cp $09
	jr z, .asm_4250
	cp $08
	jr nz, .asm_4221
	call Func_1257
	jr c, .asm_4250
.asm_4221
	ldh a, [hff8e]
	bit 6, a
	jr nz, .asm_4245
	call Func_11c9
	ldh a, [hff92]
	and KIRBY2F_UNK2 | KIRBY2F_UNK3
	jr nz, .asm_4245
	ld a, [wd074]
	cp $01
	jr nz, .asm_4245
	ld b, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_FACE_LEFT
	ldh a, [hff92]
	and KIRBY2F_DUCK | KIRBY2F_LAND | KIRBY2F_UNK6 | KIRBY2F_FACE_LEFT
	or b
	ldh [hff92], a
	push de
	call Func_37ac
	pop de
.asm_4245
	call Func_8cb
	xor a
	ld [wd054], a
	ld a, d
	ld [wd063], a
.asm_4250
	ld a, [wd063]
	ld b, a
	ldh a, [hff90]
	bit 4, a
	jr nz, .asm_427e
	ld hl, hff94
	bit 3, [hl]
	jr nz, .asm_427e
	ld c, $44
	ldh a, [hff90]
	bit 5, a
	jp nz, .asm_427e
	ldh a, [hff91]
	bit 7, a
	jr nz, .asm_4280
	ld a, [wd051]
	cp $01
	jr nz, .asm_4280
	ld a, [wSCX]
	and $0f
	jr nz, .asm_4280
.asm_427e
	ld c, $08
.asm_4280
	ld a, [wKirbyScreenX]
	sub c
	ld [wKirbyScreenDeltaX], a
	sub b
	jr c, .asm_429c
	ld a, [wd063]
	ld [wKirbyScreenDeltaX], a
	call MoveKirbyLeft
	ld a, [wKirbyScreenX]
	cp $08
	jr z, Func_42a1
	and a
	ret
.asm_429c
	call MoveKirbyLeft
	scf
	ret

Func_42a1::
	ldh a, [hff92]
	and KIRBY2F_UNK2 | KIRBY2F_UNK3
	jr nz, .asm_42ba
	ld a, [wd074]
	cp $01
	jr c, .asm_42ba
	ld b, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_FACE_LEFT
	ldh a, [hff92]
	and KIRBY2F_DUCK | KIRBY2F_LAND | KIRBY2F_UNK6 | KIRBY2F_FACE_LEFT
	or b
	ldh [hff92], a
	call Func_37ac
.asm_42ba
	call Func_8cb
	and a
	ret

Func_42bf::
	ldh a, [hJoypadPressed]
	bit D_DOWN_F, a
	jr z, .not_ducking
	ldh a, [hff8d]
	bit KIRBY1F_GROUNDED_F, a
	jr z, .not_ducking
	ldh a, [hff8e]
	bit 7, a
	jr nz, .not_ducking
	ldh a, [hff95]
	and $60
	jp nz, .not_ducking
	ld hl, hff8e
	bit 2, [hl]
	jp nz, .not_ducking
	bit 4, [hl]
	jr nz, .not_ducking
	ldh a, [hff92]
	bit KIRBY2F_UNK2_F, a
	jr nz, .not_ducking

	; do duck
	set KIRBY2F_DUCK_F, a
	ldh [hff92], a
	call Func_8dc
	ld hl, hff8d
	res KIRBY1F_AIRBORNE_F, [hl]
	res KIRBY1F_UNK0_F, [hl]
	ldh a, [hVBlankFlags]
	set 3, a
	ldh [hVBlankFlags], a
	jp Func_4783

.not_ducking
	ld hl, hff92
	res KIRBY2F_DUCK_F, [hl]
	ldh a, [hff8e]
	bit 1, a
	jp nz, .asm_4778
	bit 0, a
	jp nz, Func_4783

	ldh a, [hff8e]
	and $f0
	jr nz, .asm_437c
	ldh a, [hff92]
	bit KIRBY2F_FACE_LEFT_F, a
	jr nz, .asm_437c
	bit KIRBY2F_UNK2_F, a
	jr nz, .asm_437c
	ldh a, [hJoypadPressed]
	bit A_BUTTON_F, a
	jr z, .asm_4361
	ldh a, [hff8d]
	bit KIRBY1F_AIRBORNE_F, a
	jr nz, .asm_437c
	bit KIRBY1F_GROUNDED_F, a
	jr z, .asm_437c
	bit KIRBY1F_UNK3_F, a
	jr nz, .asm_437c

	; do jump
	ld hl, hff90
	res 3, [hl]
	ld hl, hff92
	res KIRBY2F_UNK6_F, [hl]
	ldh a, [hff8d]
	set KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	set KIRBY1F_UNK3_F, a
	ldh [hff8d], a
	xor a
	ld [wd414], a
	ld [wd065], a
	ld [wd064], a
	ldh a, [hff92]
	and ~(KIRBY2F_UNK2 | KIRBY2F_UNK3)
	ldh [hff92], a
	ld a, SFX_JUMP
	call PlaySFX
	jr .asm_437c
.asm_4361
	ldh a, [hff8d]
	bit KIRBY1F_AIRBORNE_F, a
	jr z, .asm_4377
	bit KIRBY1F_UNK3_F, a
	jr z, .asm_437c
	ld a, [wd065]
	cp $11
	jr nc, .asm_4377
	ld a, $11
	ld [wd065], a
.asm_4377
	ld hl, hff8d
	res KIRBY1F_UNK3_F, [hl]
.asm_437c
	ldh a, [hJoypadPressed]
	ld c, a
	bit B_BUTTON_F, a
	jp z, .asm_4492
	ldh a, [hff8e]
	bit 7, a
	jp z, .asm_4410
	bit 2, a
	jp nz, .asm_4410
	ld a, [wd094]
	cp $02
	jp nz, .asm_4492
	ld hl, hff95
	bit 6, [hl]
	jr nz, .asm_43e8
	ldh a, [hff8e]
	bit 6, a
	jp nz, .asm_440b
	ld a, $20
	ld [wd07c], a
	ld a, $0e
	ld [wd07d], a
	ld a, $01
	ld [wd076], a
	ld a, $33
	ld [wd077], a
	ld a, $02
	ld [wd07a], a
	ld a, $00
	ld [wd07b], a
	xor a
	ld [wd079], a
	ld a, $15
	ld [wd07e], a
.asm_43cd
	ld hl, hff8e
	set 2, [hl]
	ld a, $16
	ld [wd065], a
	ldh a, [hff92]
	and ~(KIRBY2F_UNK2 | KIRBY2F_UNK3 | KIRBY2F_UNK6)
	ldh [hff92], a
	xor a
	ld [wd064], a
	ld hl, hff95
	bit 5, [hl]
	jr nz, .asm_4403
.asm_43e8
	bit 3, [hl]
	jp nz, .asm_4492
	set 3, [hl]
	set 2, [hl]
	xor a
	ld [wd06a], a
	call Func_385b
	jp nc, .asm_4492
	ld hl, hff95
	res 2, [hl]
	jp .asm_4492
.asm_4403
	ld hl, hff93
	res 1, [hl]
	jp .asm_447d

.asm_440b
	call Func_326
	jr .asm_43cd

.asm_4410
	ldh a, [hff95]
	bit 5, a
	jr nz, .asm_446a
	ldh a, [hff8e]
	bit 3, a
	jr nz, .asm_444e
	bit D_UP_F, c
	jp nz, .asm_4492
	ld hl, hff93
	res 1, [hl]
	and $f7
	jr nz, .asm_4492
	ldh a, [hff92]
	and KIRBY2F_UNK2 | KIRBY2F_DUCK | KIRBY2F_FACE_LEFT
	jr nz, .asm_4492
	ld hl, hff8e
	set 4, [hl]
	ldh a, [hff92]
	and ~(KIRBY2F_UNK2 | KIRBY2F_UNK3)
	ldh [hff92], a
	xor a
	ld [wd064], a
	ld a, SFX_INHALE
	call PlaySFX
	xor a
	ld [wd066], a
	call Func_375d
	jp .asm_4590
.asm_444e
	ld a, [wd094]
	cp $04
	jr nz, .asm_4492
	ldh a, [hff93]
	bit 4, a
	jr nz, .asm_4492
	ldh a, [hff8e]
	bit 2, a
	jr nz, .asm_4492
	set 2, a
	ldh [hff8e], a
	call Func_380a
	jr .asm_4492
.asm_446a
	bit 3, a
	jr nz, .asm_4492
	set 3, a
	set 4, a
	ldh [hff95], a
	ld hl, hff93
	res 1, [hl]
	xor a
	ld [wJoypadDown], a
.asm_447d
	xor a
	ld [wd06a], a
	call Func_11c9
	call Func_384e
	jr nc, .asm_4492
	ld hl, hff95
	res 2, [hl]
	res 4, [hl]
	jr .asm_4492
.asm_4492
	ldh a, [hJoypadPressed]
	ld b, a
	bit D_UP_F, a
	jp z, .asm_452a
	ld a, [wCurSFX]
	cp SFX_INHALE
	jr nz, .asm_44a6
	ld a, SFX_NONE
	call PlaySFX
.asm_44a6
	ldh a, [hff8e]
	ld c, a
	and $03
	jp nz, .asm_452a
	bit 4, c
	jr nz, .asm_451a
	push bc
	push hl
	push de
	call ProcessDoorConnection
	pop de
	pop hl
	pop bc
	and a
	jr z, .asm_452a
	bit B_BUTTON_F, b
	jr nz, .asm_452a
	ldh a, [hff8e]
	and $7b
	jr nz, .asm_452a
	ldh a, [hff92]
	and ~(KIRBY2F_UNK2 | KIRBY2F_UNK3)
	ldh [hff92], a
	ldh a, [hff8e]
	bit 6, a
	jr nz, .asm_452a
	bit 7, a
	jr nz, .asm_452a
	set 7, a
	and $98
	ldh [hff8e], a
	ld hl, hff93
	set 1, [hl]
	ld hl, hff95
	res 2, [hl]
	ldh a, [hff8d]
	and $ff ^ (KIRBY1F_UNK3 | KIRBY1F_GROUNDED | KIRBY1F_AIRBORNE)
	ldh [hff8d], a
	ld a, $00
	ld [wd07a], a
	ld a, $cc
	ld [wd07b], a
	ld a, $00
	ld [wd076], a
	ld a, $c0
	ld [wd077], a
	ld a, $16
	ld [wd07c], a
	ld a, $09
	ld [wd07d], a
	ld a, SFX_NONE
	call PlaySFX
	xor a
	ld [wd094], a
	ld [wd064], a
	jr .asm_452a
.asm_451a
	ldh a, [hff94]
	and $c0
	jr nz, .asm_452a
	ld hl, hff8e
	set 2, [hl]
	ld hl, hff93
	set 1, [hl]

.asm_452a
	ldh a, [hJoypadPressed]
	bit D_LEFT_F, a
	jr z, .asm_4560
	ldh a, [hff93]
	bit 4, a
	jr nz, .asm_4560
	ldh a, [hff8e]
	bit 4, a
	jr nz, .asm_4560
	bit 2, a
	jr nz, .asm_4556
	bit 7, a
	jr z, .asm_4551
	ld a, [wd094]
	cp $02
	jr nz, .asm_4560
	ldh a, [hff91]
	bit 1, a
	jr nz, .asm_4556
.asm_4551
	ld hl, hff92
	set KIRBY2F_LAND_F, [hl]
.asm_4556
	ldh a, [hff8d]
	bit KIRBY1F_UNK4_F, a
	jr nz, .asm_4560
	set KIRBY1F_UNK5_F, a
	ldh [hff8d], a
.asm_4560
	ldh a, [hJoypadPressed]
	bit D_RIGHT_F, a
	jr z, .asm_4590
	ldh a, [hff93]
	bit 4, a
	jr nz, .asm_4590
	ldh a, [hff8e]
	bit 4, a
	jr nz, .asm_4590
	bit 2, a
	jr nz, .asm_4586
	bit 7, a
	jr z, .asm_4581
	ld a, [wd094]
	cp $02
	jr nz, .asm_4590
.asm_4581
	ld hl, hff92
	res KIRBY2F_LAND_F, [hl]
.asm_4586
	ldh a, [hff8d]
	bit KIRBY1F_UNK4_F, a
	jr nz, .asm_4590
	res KIRBY1F_UNK5_F, a
	ldh [hff8d], a
.asm_4590
	ldh a, [hff8e]
	bit 6, a
	jp z, .asm_466a
	ldh a, [hJoypadPressed]
	swap a
	ld b, a
	and $03
	ldh [hVBlankFlags], a
	ld [wd04d], a
	ldh a, [hff8e]
	bit 5, a
	jr nz, .asm_45eb
	bit 7, a
	jr nz, .asm_460c
	ld hl, hff8d
	set KIRBY1F_AIRBORNE_F, [hl]
	bit A_BUTTON_F + 4, b
	jr nz, .asm_4629
	bit D_UP_F - 4, b
	jr nz, .asm_4629
	ld a, [wd064]
	and a
	jr nz, .asm_4629
.asm_45c0
	ld hl, wd190
	set 7, [hl]
	ldh a, [hff8e]
	bit 3, a
	jr nz, .asm_45d9
	ld a, $15
	ld [wd07e], a
	ld a, $00
	ld [wd078], a
	ld a, $cc
	jr .asm_45e5
.asm_45d9
	ld a, $30
	ld [wd07e], a
	ld a, $01
	ld [wd078], a
	ld a, $54
.asm_45e5
	ld [wd079], a
	jp Func_426
.asm_45eb
	ld a, $00
	ld [wd078], a
	ld a, $b3
	ld [wd079], a
	ld a, [wGlobalCounter2]
	cp $0a
	jp c, Func_426
	ld hl, hff8e
	res 5, [hl]
	xor a
	ld [wGlobalCounter2], a
	ld [wd064], a
	jp Func_426
.asm_460c
	bit 2, a
	jr nz, .asm_45c0
	ld a, $ff
	ld [wd078], a
	ld a, $c0
	ld [wd079], a
	ld a, [wGlobalCounter2]
	cp $0a
	jp c, Func_426
	xor a
	ld [wGlobalCounter2], a
	jp Func_426
.asm_4629
	ld a, [wd064]
	and a
	jr nz, .asm_4638
	push af
	push bc
	ld a, SFX_31
	call PlaySFX
	pop bc
	pop af
.asm_4638
	ld c, a
	inc a
	ld [wd064], a
	cp $21
	jr nc, .asm_4655
	ld b, $00
	ld a, c
	add c ; *2
	ld c, a
	ld hl, Data_4820
	add hl, bc
	ld a, [hli]
	ld [wd078], a
	ld a, [hl]
	ld [wd079], a
	jp Func_426
.asm_4655
	xor a
	ld [wd064], a
	ldh a, [hff92]
	and ~(KIRBY2F_UNK2 | KIRBY2F_UNK3)
	ldh [hff92], a
	bit 4, b
	jr nz, .asm_4629
	bit 2, b
	jr nz, .asm_4629
	jp .asm_45c0

.asm_466a
	ldh a, [hff95]
	bit 6, a
	jr nz, .asm_4692
.asm_4670
	ldh a, [hff8e]
	bit 7, a
	jp z, .asm_4709
	bit 2, a
	jp nz, .asm_4709
	ldh a, [hJoypadPressed]
	swap a
	ld b, a
	and $03
	ldh [hVBlankFlags], a
	ld [wd04d], a
	bit D_UP_F - 4, b
	jr nz, .asm_46ef
	bit A_BUTTON_F + 4, b
	jr nz, .asm_46ef
	jr .asm_46fc
.asm_4692
	ld hl, hff91
	bit 0, [hl]
	jr z, .asm_4670
	ldh a, [hJoypadPressed]
	swap a
	ld b, a
	and $03
	ldh [hVBlankFlags], a
	ld a, $ff
	ld [wd07d], a
	ld [wd07c], a
	inc a
	ld [wd075], a
	inc a
	ld [wd074], a
	ldh a, [hJoypadPressed]
	bit D_UP_F, a
	jr nz, .asm_46c8
	bit D_DOWN_F, a
	jr nz, .asm_46dc
	xor a
	ld [wd078], a
	ld [wd079], a
	ld [wd07e], a
	jr .asm_4709
.asm_46c8
	ld a, $fe
	ld [wd078], a
	xor a
	ld [wd079], a
	ld [wd07e], a
	ld hl, hff92
	set KIRBY2F_UNK6_F, [hl]
	jp Func_426
.asm_46dc
	xor a
	ld [wd079], a
	ld [wd07e], a
	inc a
	ld [wd078], a
	ld hl, hff92
	res KIRBY2F_UNK6_F, [hl]
	jp Func_426
.asm_46ef
	ld hl, hff92
	set KIRBY2F_UNK6_F, [hl]
	ld a, $50
	ld [wd07e], a
	jp Func_3b3
.asm_46fc
	ld hl, hff92
	res KIRBY2F_UNK6_F, [hl]
	ld a, $14
	ld [wd07e], a
	jp Func_3b3
.asm_4709
	ldh a, [hff92]
	bit KIRBY2F_UNK2_F, a
	jr z, .asm_4726
	ld hl, hff8d
	set KIRBY1F_UNK3_F, [hl]
	ld hl, hff92
	res KIRBY2F_UNK6_F, [hl]
	ld a, $40
	ld [wd07e], a
	ld a, [wd04d]
	ldh [hVBlankFlags], a
	jp Func_3b3
.asm_4726
	ldh a, [hff8d]
	bit KIRBY1F_AIRBORNE_F, a
	jp z, .asm_476b
	ldh a, [hff92]
	res KIRBY2F_UNK6_F, a
	ldh [hff92], a
	ldh a, [hJoypadPressed]
	swap a
	and $03
	ld b, a
	ld a, b ; unnecessary
	ld [wd04d], a
	ldh [hVBlankFlags], a
	ld a, [wd065]
	cp $16
	jp nc, Func_3b3
	ld c, a
	inc a
	ld [wd065], a
	cp $16
	jr nc, .asm_4765
	ld b, $00
	ld a, c
	add c
	ld c, a
	ld hl, Data_4860
	add hl, bc
	ld a, [hli]
	ld [wd078], a
	ld a, [hl]
	ld [wd079], a
	jp Func_426
.asm_4765
	call Func_38f
	jp Func_3b3

.asm_476b
	ldh a, [hJoypadPressed]
	swap a
	and $03
	ld [wd04d], a
	ldh [hVBlankFlags], a
	jr Func_4783

.asm_4778
	ld a, [wd04d]
	ldh [hVBlankFlags], a
	ldh a, [hff8e]
	res 1, a
	ldh [hff8e], a
;	fallthrough

Func_4783::
	ldh a, [hff8e]
	bit 4, a
	jr z, .asm_47ab
	ld a, [wd066]
	inc a
	ld [wd066], a
	cp $1f
	jr c, .asm_47ab
	ldh a, [hff94]
	bit 7, a
	jr nz, .asm_47ab
	ldh a, [hJoypadPressed]
	bit B_BUTTON_F, a
	jr nz, .asm_47ab
	ldh a, [hff8e]
	set 2, a
	ldh [hff8e], a
	ld a, SFX_NONE
	call PlaySFX
.asm_47ab
	ld a, [wd094]
	cp $01
	jr nz, .asm_47bf
	call Func_8dc
	ldh a, [hff92]
	res KIRBY2F_FACE_LEFT_F, a
	ldh [hff92], a
	xor a
	ld [wd094], a
.asm_47bf
	cp $06
	jr nz, .asm_47fe
	ldh a, [hff8e]
	bit 6, a
	jr nz, .asm_47fe
	set 7, a
	and $98
	ldh [hff8e], a
	ldh a, [hff93]
	set 1, a
	ldh [hff93], a
	ldh a, [hff8d]
	and $ff ^ (KIRBY1F_UNK3 | KIRBY1F_GROUNDED | KIRBY1F_AIRBORNE)
	ldh [hff8d], a
	ld a, $00
	ld [wd07a], a
	ld a, $cc
	ld [wd07b], a
	ld a, $00
	ld [wd076], a
	ld a, $c0
	ld [wd077], a
	ld a, $16
	ld [wd07c], a
	ld a, $09
	ld [wd07d], a
	ld a, $02
	ld [wd094], a
.asm_47fe
	call Func_917
	call Func_139b
	ld hl, hff91
	bit 6, [hl]
	call nz, Func_6ec
	ld hl, wInvincibilityCounter
	ld a, [hli]
	or [hl]
	jr z, .skip_spawn_star
	ld a, [wGlobalCounter1]
	and %111
	jr nz, .skip_spawn_star
	call Func_37a7
.skip_spawn_star
	jp Func_246

Data_4820:
	db $fe, $80
	db $fe, $80
	db $fe, $80
	db $fe, $80
	db $fe, $80
	db $fe, $80
	db $fe, $80
	db $fe, $80
	db $ff, $bf
	db $ff, $bf
	db $ff, $bf
	db $ff, $bf
	db $ff, $bf
	db $ff, $bf
	db $ff, $bf
	db $ff, $bf
	db $ff, $3f
	db $ff, $3f
	db $ff, $3f
	db $ff, $3f
	db $ff, $3f
	db $ff, $3f
	db $ff, $3f
	db $ff, $3f
	db $00, $3f
	db $00, $3f
	db $00, $3f
	db $00, $3f
	db $00, $3f
	db $00, $3f
	db $00, $3f
	db $00, $3f

Data_4860:
	db $fc, $00
	db $fc, $00
	db $fc, $00
	db $fc, $00
	db $fc, $00
	db $fc, $00
	db $fd, $00
	db $fd, $00
	db $fd, $00
	db $fd, $00
	db $fd, $00
	db $fd, $00
	db $fe, $00
	db $fe, $00
	db $fe, $00
	db $fe, $00
	db $fe, $00
	db $ff, $80
	db $ff, $80
	db $ff, $80
	db $ff, $80
	db $ff, $80

Data_488c::
	db $04
	db $03
	db $03
	db $02
	db $02
	db $02
	db $01
	db $01
	db $01
	db $01
; 0x4896

SECTION "Bank 1@48e1", ROMX[$48e1], BANK[$1]

Func_48e1:
	ld hl, wd1a0
	add hl, bc
	set OBJFLAG_1_F, [hl]
	ret

Func_48e8:
	ld hl, wd1a0
	add hl, bc
	res OBJFLAG_1_F, [hl]
	ld hl, wd1b0
	add hl, bc
	res 5, [hl]
	ret
; 0x48f5

SECTION "Bank 1@4a1c", ROMX[$4a1c], BANK[$1]

Func_4a1c:
	push bc
	ld a, [wSCX]
	and $0f
	ld hl, wd140
	add hl, bc
	add [hl]
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
	ld hl, wd150
	add hl, bc
	add [hl]
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
	ld a, LOW(wca00)
	add [hl]
	ld e, a
	ld a, HIGH(wca00)
	adc 0
	ld d, a
	ld a, [de]
	cp $04
	jr z, .asm_4a68
	cp $05
	jr z, .asm_4a6d
	pop de
	pop bc
	ret
.asm_4a68
	xor a
	ld c, $7f
	jr .asm_4a71
.asm_4a6d
	ld a, $03
	ld c, $7c
.asm_4a71
	ld [hl], a
	pop de
	call Func_3076
	pop bc
	ld a, $02
	call AddToScore
	ld a, SFX_14
	call PlaySFX
	ret

Func_4a82:
	ld hl, hff90
	set 4, [hl]
	ret
; 0x4a88

SECTION "Bank 1@4ab3", ROMX[$4ab3], BANK[$1]

Func_4ab3:
	ld hl, wd190
	add hl, bc
	res 4, [hl]
	ret

Func_4aba:
	ld hl, wd190
	add hl, bc
	set 4, [hl]
	ret
; 0x4ac1

SECTION "Bank 1@4ad6", ROMX[$4ad6], BANK[$1]

Func_4ad6:
	ld hl, wd190
	add hl, bc
	res 5, [hl]
	res 3, [hl]
	ret

Func_4adf:
	ld hl, wd1b0
	add hl, bc
	set 4, [hl]
	ret
; 0x4ae6

SECTION "Bank 1@4afb", ROMX[$4afb], BANK[$1]

Func_4afb:
	ld hl, wd1a0
	add hl, bc
	set OBJFLAG_0_F, [hl]
	ld hl, MotionScript_10003
	ld de, GfxScript_20000
	call Func_21e6
	ld hl, hff94
	set 7, [hl]
	ld hl, wd3f6
	inc [hl]
	ld a, $ff
	ld [wScriptCommand], a
	ret
; 0x4b19

SECTION "Bank 1@4c9b", ROMX[$4c9b], BANK[$1]

Func_4c9b::
	ld a, [wd3f5]
	and a
	jp nz, Func_4ced.set_carry
	ld hl, wInvincibilityCounter
	ld a, [hli]
	or [hl]
	jp nz, Func_4ced.set_carry
	ld a, [wHP]
	srl a
	ld [wHP], a
	ld a, $5a
	ld [wd3f5], a
	ld a, [wd1a0 + OBJECT_SLOT_00]
	set OBJFLAG_BLINKING_F, a
	ld [wd1a0 + OBJECT_SLOT_00], a

	ld a, SFX_21
	call PlaySFX

	ld de, GfxScript_20162
	ld hl, MotionScript_101dc
	ld bc, OBJECT_SLOT_00
	call Func_21e6
.asm_4cd0
	ld a, 1
	call DoFrames
	ld hl, hff94
	bit 5, a
	jr nz, .asm_4cd0
	ld a, $01
	ld [wd082 + 0], a
	ld a, $01
	ld [wd078], a
	ld a, $80
	ld [wd079], a
	xor a
	ret

Func_4ced::
	ld a, [wd3f5]
	and a
	jr nz, .set_carry
	ld hl, wInvincibilityCounter
	ld a, [hli]
	or [hl]
	jr nz, .set_carry
	ld a, [wHP]
	srl a
	ld [wHP], a
	ld a, SFX_21
	call PlaySFX
	ld a, $5a
	ld [wd3f5], a
	ld a, [wd1a0 + OBJECT_SLOT_00]
	set OBJFLAG_BLINKING_F, a
	ld [wd1a0 + OBJECT_SLOT_00], a
	ld de, $4149
	ld hl, $41dc
	ld bc, OBJECT_SLOT_00
	call Func_21e6
.asm_4d20
	ld a, 1
	call DoFrames
	ld hl, hff94
	bit 5, a
	jr nz, .asm_4d20
	ld a, $01
	ld [wd082 + 0], a
	ld a, $fe
	ld [wd078], a
	ld a, $80
	ld [wd079], a
	xor a
	ret
.set_carry
	scf
	ret
