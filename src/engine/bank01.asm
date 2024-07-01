SECTION "Bank 1@42bf", ROMX[$42bf], BANK[$1]

Func_42bf::
	ldh a, [hJoypadPressed]
	bit D_DOWN_F, a
	jr z, .asm_4301
	ldh a, [hff8d]
	bit 6, a
	jr z, .asm_4301
	ldh a, [hff8e]
	bit 7, a
	jr nz, .asm_4301
	ldh a, [hff95]
	and $60
	jp nz, .asm_4301
	ld hl, hff8e
	bit 2, [hl]
	jp nz, .asm_4301
	bit 4, [hl]
	jr nz, .asm_4301
	ldh a, [hff92]
	bit 2, a
	jr nz, .asm_4301
	set 4, a
	ldh [hff92], a
	call Func_8dc
	ld hl, hff8d
	res 7, [hl]
	res 0, [hl]
	ldh a, [hVBlankFlags]
	set 3, a
	ldh [hVBlankFlags], a
	jp Func_4783
.asm_4301
	ld hl, hff92
	res 4, [hl]
	ldh a, [hff8e]
	bit 1, a
	jp nz, .asm_4778
	bit 0, a
	jp nz, Func_4783
	ldh a, [hff8e]
	and $f0
	jr nz, .asm_437c
	ldh a, [hff92]
	bit 7, a
	jr nz, .asm_437c
	bit 2, a
	jr nz, .asm_437c
	ldh a, [hJoypadPressed]
	bit A_BUTTON_F, a
	jr z, .asm_4361
	ldh a, [hff8d]
	bit 7, a
	jr nz, .asm_437c
	bit 6, a
	jr z, .asm_437c
	bit 3, a
	jr nz, .asm_437c
	ld hl, hff90
	res 3, [hl]
	ld hl, hff92
	res 6, [hl]
	ldh a, [hff8d]
	set 7, a
	res 6, a
	set 3, a
	ldh [hff8d], a
	xor a
	ld [wd414], a
	ld [wd065], a
	ld [wd064], a
	ldh a, [hff92]
	and $f3
	ldh [hff92], a
	ld a, SFX_04
	call PlaySFX
	jr .asm_437c
.asm_4361
	ldh a, [hff8d]
	bit 7, a
	jr z, .asm_4377
	bit 3, a
	jr z, .asm_437c
	ld a, [wd065]
	cp $11
	jr nc, .asm_4377
	ld a, $11
	ld [wd065], a
.asm_4377
	ld hl, hff8d
	res 3, [hl]
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
	and $b3
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
	bit 6, c
	jp nz, .asm_4492
	ld hl, hff93
	res 1, [hl]
	and $f7
	jr nz, .asm_4492
	ldh a, [hff92]
	and $94
	jr nz, .asm_4492
	ld hl, hff8e
	set 4, [hl]
	ldh a, [hff92]
	and $f3
	ldh [hff92], a
	xor a
	ld [wd064], a
	ld a, SFX_01
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
	cp SFX_01
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
	call Func_483
	pop de
	pop hl
	pop bc
	and a
	jr z, .asm_452a
	bit 1, b
	jr nz, .asm_452a
	ldh a, [hff8e]
	and $7b
	jr nz, .asm_452a
	ldh a, [hff92]
	and $f3
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
	and $37
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
	set 5, [hl]
.asm_4556
	ldh a, [hff8d]
	bit 4, a
	jr nz, .asm_4560
	set 5, a
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
	res 5, [hl]
.asm_4586
	ldh a, [hff8d]
	bit 4, a
	jr nz, .asm_4590
	res 5, a
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
	set 7, [hl]
	bit 4, b
	jr nz, .asm_4629
	bit 2, b
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
	add c
	ld c, a
	ld hl, $4820
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
	and $f3
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
	bit 2, b
	jr nz, .asm_46ef
	bit 4, b
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
	bit 6, a
	jr nz, .asm_46c8
	bit 7, a
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
	set 6, [hl]
	jp Func_426
.asm_46dc
	xor a
	ld [wd079], a
	ld [wd07e], a
	inc a
	ld [wd078], a
	ld hl, hff92
	res 6, [hl]
	jp Func_426
.asm_46ef
	ld hl, hff92
	set 6, [hl]
	ld a, $50
	ld [wd07e], a
	jp Func_3b3
.asm_46fc
	ld hl, hff92
	res 6, [hl]
	ld a, $14
	ld [wd07e], a
	jp Func_3b3
.asm_4709
	ldh a, [hff92]
	bit 2, a
	jr z, .asm_4726
	ld hl, hff8d
	set 3, [hl]
	ld hl, hff92
	res 6, [hl]
	ld a, $40
	ld [wd07e], a
	ld a, [wd04d]
	ldh [hVBlankFlags], a
	jp Func_3b3
.asm_4726
	ldh a, [hff8d]
	bit 7, a
	jp z, .asm_476b
	ldh a, [hff92]
	res 6, a
	ldh [hff92], a
	ldh a, [hJoypadPressed]
	swap a
	and $03
	ld b, a
	ld a, b
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
	ld hl, $4860
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
	res 7, a
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
	and $37
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
	ld hl, wd3e1
	ld a, [hli]
	or [hl]
	jr z, .asm_481d
	ld a, [wGlobalCounter1]
	and %111
	jr nz, .asm_481d
	call Func_37a7
.asm_481d
	jp Func_246
; 0x4820
