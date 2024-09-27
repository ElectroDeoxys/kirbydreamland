Func_246::
	xor a
	ld [wVirtualOAMSize], a

	ld a, [wROMBank]
	push af
ASSERT BANK(Func_1432c) == BANK(Func_147e4)
	ld a, BANK(Func_1432c)
	bankswitch
	call Func_1432c
	call Func_147e4
	pop af
	bankswitch

	call Func_319d
	call Func_2e9c
	call ClearSprites

	ld hl, hff95
	bit 3, [hl]
	jr z, .asm_280
	ld a, [wd06a]
	inc a
	ld [wd06a], a
	cp $0f
	jr c, .asm_280
	res 3, [hl]
.asm_280
	; if fell in a pit, then zero HP and lose life
	ld a, [wKirbyScreenY]
	cp $88
	jp nc, SetHPToZeroAndLoseLife
	; if HP reached 0, then lose life
	ld a, [wHP]
	and a
	jp z, LoseLife

	ld hl, hHUDFlags
	bit HUD_UPDATE_SCORE_DIGITS_F, [hl]
	jr z, .asm_29b
	res HUD_UPDATE_SCORE_DIGITS_F, [hl]
	call GetScoreDigitTiles
.asm_29b
	ldh a, [hff94]
	bit 2, a
	jp z, .asm_2ad ; can be jr
	ld a, BANK(Func_183bf)
	bankswitch
	jp Func_183bf

.asm_2ad
	ld hl, hff94
	bit 5, [hl]
	jr z, .asm_2d1
	ld hl, hVBlankFlags
.asm_2b7
	set VBLANK_6_F, [hl]
.asm_2b9
	bit VBLANK_6_F, [hl]
	jr nz, .asm_2b9
	push hl
	xor a
	ld [wVirtualOAMSize], a
	call Func_2e9c
	call ClearSprites
	pop hl
	ldh a, [hff94]
	bit 5, a
	jr nz, .asm_2b7
	jr .asm_29b
.asm_2d1
	ld hl, hff94
	bit 3, [hl]
	jr z, .asm_30a
	ldh a, [hVBlankFlags]
	and VBLANK_5
	jr nz, .asm_30a
	ld a, [wd069]
	ld c, a
	inc a
	ld [wd069], a
	ld b, $00
	ld hl, Data_488c
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_313
	ld [wd074], a
	xor a
	ld [wd075], a
	ld hl, hff94
	bit 4, [hl]
	jr nz, .asm_303
	call Func_4000
	jr .asm_306
.asm_303
	call Func_417c
.asm_306
	xor a
	ld [wd074], a
.asm_30a
	ldh a, [hVBlankFlags]
	set VBLANK_6_F, a
	ldh [hVBlankFlags], a
	jp Func_1f2
.asm_313
	ld hl, hff94
	res 3, [hl]
	ld hl, hff91
	set 6, [hl]
	xor a
	ld [wd074], a
	ld [wd075], a
	jr .asm_30a

Func_326::
	ldh a, [hff8e]
	bit 6, a
	ret nz
	ld hl, hff95
	bit 5, [hl]
	jr z, .asm_354
	res 5, [hl]
	ld a, SFX_21
	call PlaySFX
	ld a, [wCurMusic]
	cp MUSIC_MINT_LEAF
	jr nz, .asm_359
	ld a, [wMusic]
	call PlayMusic
	xor a
	ld [wMintLeafCounter + 0], a
	ld [wMintLeafCounter + 1], a
	ld hl, wd1a0 + OBJECT_SLOT_00
	res OBJFLAG_FLASHING_F, [hl]
	jr .asm_359
.asm_354
	ld a, SFX_20
	call PlaySFX
.asm_359
	ldh a, [hff8e]
	set 6, a
	set 5, a
	bit 4, a
	jr z, .asm_365
	set 2, a
.asm_365
	ldh [hff8e], a
	bit 7, a
	jr nz, .asm_373
	ld a, [wd190 + OBJECT_SLOT_00]
	set 7, a
	ld [wd190 + OBJECT_SLOT_00], a
.asm_373
	and $ff ^ (KIRBY1F_UNK4 | KIRBY1F_GROUNDED | KIRBY1F_AIRBORNE)
	ldh [hff8d], a
	ldh a, [hff92]
	and ~(KIRBY2F_UNK2 | KIRBY2F_UNK3)
	ldh [hff92], a
	xor a
	ld [wd064], a
	ld [wGlobalCounter2], a
	ld a, $00
	ld [wd076], a
	ld a, $a8
	ld [wd077], a
	ret

Func_38f::
	ld a, $ff
	ld [wd078], a
	ld a, $d8
	ld [wd079], a
	ld a, $02
	ld [wd07a], a
	ld a, $00
	ld [wd07b], a
	ld a, $15
	ld [wd07e], a
	xor a
	ld [wd064], a
	ldh a, [hff92]
	and ~(KIRBY2F_UNK2 | KIRBY2F_UNK3)
	ldh [hff92], a
	ret

Func_3b3::
	ldh a, [hff92]
	bit KIRBY2F_UNK6_F, a
	jr nz, .asm_3f2
	ld a, [wd07a]
	ld d, a
	ld a, [wd07b]
	ld e, a
	ld a, [wd079]
	ld b, a
	ld a, [wd07e]
	add b
	ld [wd079], a
	ld a, [wd078]
	adc $00
	ld [wd078], a
	bit 7, a
	jr nz, Func_426
	cp d
	jr c, Func_426
	ld a, [wd078]
	bit 7, a
	jr nz, Func_426
	ld a, d
	ld [wd078], a
	ld a, [wd079]
	cp e
	jr c, Func_426
	ld a, e
	ld [wd079], a
	jr Func_426
.asm_3f2
	ld a, $fe
	ld d, a
	ld a, $b3
	ld e, a
	ld a, [wd07e]
	ld b, a
	ld a, [wd079]
	sub b
	ld [wd079], a
	ld a, [wd078]
	sbc $00
	bit 7, a
	jr nz, .asm_411
.asm_40c
	ld [wd078], a
	jr Func_426
.asm_411
	cp d
	jr z, .asm_416
	jr nc, .asm_40c
.asm_416
	ld a, d
	ld [wd078], a
	ld a, [wd079]
	cp e
	jr z, .asm_422
	jr nc, Func_426
.asm_422
	ld a, e
	ld [wd079], a
;	fallthrough
Func_426::
	ld a, [wd078]
	bit 7, a
	jr z, .asm_455
	ldh a, [hVBlankFlags]
	and $f7
	or $04
	ldh [hVBlankFlags], a
	ld a, [wd079]
	cpl
	inc a
	ld b, a
	ld a, [wd056]
	sub b
	ld [wd056], a
	ld a, [wd078]
	sbc $00
	jr z, .asm_47a
	cpl
	ld b, a
	ldh a, [hff8d]
	and ~(KIRBY1F_UNK0 | KIRBY1F_UNK1 | KIRBY1F_UNK2)
	or b
	ldh [hff8d], a
	jp Func_4783
.asm_455
	ldh a, [hVBlankFlags]
	and $fb
	or $08
	ldh [hVBlankFlags], a
	ld a, [wd079]
	ld b, a
	ld a, [wd056]
	add b
	ld [wd056], a
	ld a, [wd078]
	adc $00
	jr z, .asm_47a
	ld b, a
	ldh a, [hff8d]
	and ~(KIRBY1F_UNK0 | KIRBY1F_UNK1 | KIRBY1F_UNK2)
	or b
	ldh [hff8d], a
	jp Func_4783
.asm_47a
	ldh a, [hVBlankFlags]
	and $f3
	ldh [hVBlankFlags], a
	jp Func_4783

; output:
; - a = $ff if not entered door
;       else, entered door
ProcessDoorConnection::
	ld hl, DoorConnections
.loop_door_connections
	ld a, [wStage]
	ld b, a
	ld a, [hli]
	cp b
	jr z, .check_area
	cp $ff
	ret z
	ld bc, $8
	add hl, bc
	jr .loop_door_connections
.check_area
	ld a, [wArea]
	ld b, a
	ld a, [hli]
	cp b
	jr z, .check_x
	ld bc, $7
	add hl, bc
	jr .loop_door_connections
.check_x
	ld a, [wd051]
	ld b, a
	ld a, [wSCX]
	and $0f
	ld c, a
	ld a, [wKirbyScreenX]
	add c
	and $f0
	swap a
	add b
	ld b, a
	ld a, [wd03f]
	cp b
	jr nc, .got_x
	ld c, a
	ld a, b
	sub c
	ld b, a
.got_x
	ld a, [hli]
	cp b
	jr z, .check_y
	ld bc, $6
	add hl, bc
	jr .loop_door_connections
.check_y
	ld a, [wd052]
	ld b, a
	ld a, [wSCY]
	and $0f
	ld c, a
	ld a, [wKirbyScreenY]
	add c
	add $0a
	and $f0
	swap a
	add b
	ld b, a
	ld a, [hli]
	cp b
	jr z, .is_in_front_of_door
	ld bc, $5
	add hl, bc
	jr .loop_door_connections
.is_in_front_of_door
	ld a, [hli]
	ld [wArea], a
	push hl
	ld a, [wStage]
	cp MT_DEDEDE
	jr c, .enter_door
	ld a, [wArea]
	ld c, a
	ld b, $00
	ld hl, wMtDededeDefeatedBosses
	add hl, bc
	ld a, [hl]
	cp TRUE
	jr nz, .enter_door
	xor a
	ld [wArea], a
	pop hl
	ld a, $ff
	ret

.enter_door
	ld a, SFX_ENTER_DOOR
	call PlaySFX
	ld hl, hff93
	bit 4, [hl]
	jr nz, .asm_566
	ldh a, [hff95]
	bit 5, a
	jr nz, .asm_548
	ld hl, hff8e
	ld a, [hl]
	and $88
	jr z, .asm_566
	bit 2, [hl]
	jr nz, .asm_566
	set 2, [hl]
	ld a, [wd3be]
	and $f9
	ld [wd3be], a
	ld a, $04
	ld [wd094], a
	ld a, [hl]
	bit 7, a
	push af
	call z, Func_380a
	pop af
	call nz, Func_385b
.asm_548
	call Func_139b
	ld b, $13
.asm_54d
	call Func_1def
	push bc
	xor a
	ld [wVirtualOAMSize], a
	call Func_2e9c
	call ClearSprites
	pop bc
	ld a, [wd094]
	cp $01
	jr z, .asm_566
	dec b
	jr nz, .asm_54d
.asm_566
	xor a
	ld [wd082 + 0], a
	ld [wd082 + 1], a

	ldh a, [hff92]
	bit KIRBY2F_LAND_F, a
	jr nz, .asm_578
	ld hl, MotionScript_10566
	jr .asm_57b
.asm_578
	ld hl, MotionScript_1056c
.asm_57b
	ld de, GfxScript_157a
	ld bc, OBJECT_SLOT_00
	call Func_21e6

	xor a
	ldh [hVBlankFlags], a
	ldh [hff8d], a
	ldh [hff93], a
	call Func_19c9
	call Func_648
	call Func_19f9
	pop hl
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld e, a
	ld a, [wd03f]
	ld b, a
	push de
	call CalculateBCPercentage
	pop de
	ld a, d
	add c
	ld c, a
	ld a, b
	adc $00
	ld b, a
	xor a
	ld [wSCX], a
	ld [wSCY], a
	ld a, d
	inc a
	ld [wd051], a
	ld a, e
	inc a
	ld [wd052], a
	ld a, [hli]
	swap a
	add $08
	ld [wKirbyScreenX], a
	ld a, [hli]
	swap a
	ld [wKirbyScreenY], a

	ldh a, [hHUDFlags]
	or HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_LIVES
	ldh [hHUDFlags], a

	ldh a, [hff92]
	and KIRBY2F_LAND
	ldh [hff92], a
	ld hl, wc100
	add hl, bc
	call Func_1964
	ld a, $16
	ld [wd065], a
	xor a
	ldh [hff8e], a
	ld [wd074], a
	ld [wd075], a
	ld [wd078], a
	ld [wd079], a
	ld [wd064], a
	ld [wVirtualOAMSize], a
	ld a, $20
	ld [wd07c], a
	ld a, $0e
	ld [wd07d], a
	ld a, $15
	ld [wd07e], a
	ld a, $01
	ld [wd076], a
	ld a, $33
	ld [wd077], a
	ld a, $02
	ld [wd07a], a
	ld a, $00
	ld [wd07b], a
	xor a
	call Func_21fb
	call Func_139b
	call Func_2e9c
	call ClearSprites
	call StopTimerAndSwitchOnLCD
	call Func_670
	ld a, $08
	ldh [hVBlankFlags], a
	ld a, [wd03d]
	cp $ff
	jr z, .asm_641
	ld [wMusic], a
	call PlayMusic
	ld a, $ff
	ld [wd03d], a
.asm_641
	xor a
	ret

Func_643::
	and $0f
	ret z
	scf
	ret

Func_648::
	push hl
	ldh a, [hff91]
	and $fb
	ldh [hff91], a
	ldh a, [hff90]
	or $c8
	ldh [hff90], a
.asm_655
	xor a
	ld [wVirtualOAMSize], a
	call Func_2e9c
	call ClearSprites
	ld hl, hVBlankFlags
	set VBLANK_6_F, [hl]
.asm_664
	bit VBLANK_6_F, [hl]
	jr nz, .asm_664
	ldh a, [hff90]
	bit 7, a
	jr nz, .asm_655
	pop hl
	ret

Func_670::
	ldh a, [hff91]
	and $fb
	ldh [hff91], a
	ldh a, [hff90]
	and $3c
	or $88
	ldh [hff90], a
.asm_67e
	ld hl, hVBlankFlags
	set VBLANK_6_F, [hl]
.asm_683
	bit VBLANK_6_F, [hl]
	jr nz, .asm_683
	ldh a, [hff90]
	bit 7, a
	jr nz, .asm_67e
	ret

; read the joypad register and translate it to something more
; workable for use in-game. There are 8 buttons, so we can use
; one byte to contain all player input.
ReadJoypad:
	ldh a, [hVBlankFlags]
	bit VBLANK_7_F, a
	ret nz

; can only get four inputs at a time
; take d-pad first
	ld a, P1F_GET_DPAD
	ldh [rP1], a

; wait some cycles
REPT 5
	push hl
	pop hl
ENDR

; store the d-pad value
	ldh a, [rP1]
	and %1111
	ld c, a

; take the buttons values next
	ld a, P1F_GET_BTN
	ldh [rP1], a

; wait some cycles
REPT 5
	push hl
	pop hl
ENDR

	ldh a, [rP1]
	and %1111

	; button bits on lower nybble, d-pad on higher nybble
	swap c
	or c
	cpl
	ld b, a
	and BUTTONS
	cp A_BUTTON | B_BUTTON | SELECT | START
	jr nz, .no_reset

; soft reset game
	ld a, VBLANK_7
	ldh [hVBlankFlags], a
	ei
	call Func_648
	call ResetTimer
	jp Reset

.no_reset
	ld a, [wd050]
	ld c, a
	ldh a, [hff93]
	and B_BUTTON
	or c
	ld c, a
	ld a, [wJoypadDown]
	and c
	and b
	xor b
	ldh [hJoypadPressed], a
	ld a, b
	ld [wJoypadDown], a

; reset joypad
	ld a, P1F_GET_NONE
	ldh [rP1], a
	ret

Func_6ec::
	ldh a, [hVBlankFlags]
	and VBLANK_5
	ret nz
	ldh [hVBlankFlags], a
	ld hl, hff90
	bit 4, [hl]
	jr nz, .asm_708
	ld hl, hff91
	ld a, [wKirbyScreenX]
	cp $45
	jr c, .asm_70e
	cp $4b
	jr nc, .asm_733
.asm_708
	ld hl, hff91
	res 6, [hl]
	ret
.asm_70e
	bit 7, [hl]
	jr nz, .asm_720
	ld a, [wd051]
	cp $01
	jr nz, .asm_720
	ld a, [wSCX]
	and $0f
	jr z, .asm_708
.asm_720
	ld a, $02
	ld [wKirbyScreenDeltaX], a
	ld [wd063], a
	call MoveKirbyRight
	xor a
	ld [wKirbyScreenDeltaX], a
	call Func_110b
	ret
.asm_733
	jr z, .asm_708
	bit 7, [hl]
	jr nz, .asm_747
	ld a, [wd042]
	and a
	jr z, .asm_708
	inc a
	ld b, a
	ld a, [wd051]
	cp b
	jr z, .asm_759
.asm_747
	ld a, $02
	ld [wKirbyScreenDeltaX], a
	ld [wd063], a
	call MoveKirbyLeft
	xor a
	ld [wKirbyScreenDeltaX], a
	jp Func_1062
.asm_759
	ld a, [wSCX]
	and $f0
	ld [wSCX], a
	jr .asm_708

Func_763:
	push bc
	push de
	ld a, [wd052]
	sub $01
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld b, $00
	ld a, [wd05f]
	ld c, a
	add hl, bc
	ld a, [wSCY]
	and $0f
	ld b, $00
	ld c, a
	add hl, bc
	pop de
	pop bc
	ret

Func_784::
	push bc
	push de
	ld a, [wd051]
	sub $01
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld b, $00
	ld a, [wd05e]
	sub $08
	ld c, a
	add hl, bc
	ld a, [wSCX]
	and $0f
	ld b, $00
	ld c, a
	add hl, bc
	pop de
	pop bc
	ret

Func_7a7:
	ld [wd05f], a
	call Func_763
	call Func_1ccb
	ld a, c
	dec a
	dec a
	jr Func_7bf
Func_7b5:
	ld [wd05f], a
	call Func_763
	call Func_1ccb
	ld a, c
;	fallthrough
Func_7bf:
	ld [wd05f], a
	ld a, [wKirbyScreenX]
	add $08
	ld [wd05e], a
	jp Func_7cd ; useless jump

Func_7cd:
	push bc
	push de
	push hl
	ld a, [wd05f]
	cp $ff
	jr z, .asm_816
	ld b, a
	ld a, [wd03f]
	ld e, a
	call CalculateBCPercentage
	ld hl, wc100
	add hl, bc
	push hl
	call Func_784
	call Func_1ccb
	pop hl
	ld a, [wd03f]
	cp c
	jr z, .asm_7ff
	xor a
	cp c
	jr z, .asm_7f7
	dec bc
	inc hl
.asm_7f7
	ld a, [wd03f]
	sub $02
	cp c
	jr nc, .asm_808
.asm_7ff
	ld a, [wd03f]
	ld e, a
	ld a, c
	sub e
	ld c, a
	ld b, $00
.asm_808
	add hl, bc
	ld a, [hl]
	ld c, a
	ld b, $00
	ld hl, wca00
	add hl, bc
	ld a, [hl]
.asm_812
	pop hl
	pop de
	pop bc
	ret
.asm_816
	xor a
	jr .asm_812

Func_819::
	push bc
	push de
	push hl
	call Func_763
	call Func_1ccb
	ld b, c
	ld a, [wd03f]
	ld e, a
	call CalculateBCPercentage
	ld hl, wc100
	add hl, bc
	ldh a, [hff91]
	ld b, a
	ld a, [wd05e]
	ld c, a
	bit 7, b
	jr z, .asm_850
	cp $01
	jr z, .asm_84b
	ld a, [wd03f]
	dec a
	cp c
	jr nc, .asm_850
	inc a
	ld e, a
	ld a, c
	sub e
	ld c, a
	jr .asm_850
.asm_84b
	ld a, [wd03f]
	add e
	ld c, a
.asm_850
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld c, a
	ld b, $00
	ld hl, wca00
	add hl, bc
	ld a, [hl]
	pop hl
	pop de
	pop bc
	ret

Func_860:
	ld a, [wd07c]
	ld d, a
	ld a, [wd076]
	ld b, a
	ld a, [wd077]
	ld c, a
	ld a, [wd075]
	add d
	ld [wd075], a
	ld a, [wd074]
	adc $00
	cp b
	jr nc, .asm_87f
	ld [wd074], a
	ret
.asm_87f
	ld a, b
	ld [wd074], a
	ld a, [wd075]
	cp c
	ret c
	ld a, c
	ld [wd075], a
	ret

Func_88d:
	ldh a, [hff8d]
	bit KIRBY1F_UNK5_F, a
	jr nz, .asm_8a4
	jr .asm_895 ; useless jump
.asm_895
	call .Func_8b3
	call Func_4000
	jp nc, Func_990
	call Func_1062
	jp Func_990
.asm_8a4
	call .Func_8b3
	call Func_417c
	jp nc, Func_9d6
	call Func_110b
	jp Func_9d6

.Func_8b3:
	ld a, [wd07d]
	ld b, a
	ld a, [wd075]
	sub b
	ld [wd075], a
	ld a, [wd074]
	sbc $00
	ld [wd074], a
	jr c, Func_8cb
	bit 7, a
	ret z
;	fallthrough
Func_8cb::
	xor a
	ld [wd075], a
	ld [wd074], a
	ld [wd04d], a
	ldh a, [hff8d]
	res KIRBY1F_UNK4_F, a
	ldh [hff8d], a
	ret

Func_8dc::
	ldh a, [hff8e]
	bit 7, a
	ret nz
	ldh a, [hff92]
	and KIRBY2F_UNK2
	ret nz
	ldh a, [hff8d]
	bit KIRBY1F_AIRBORNE_F, a
	ret nz
	set KIRBY1F_AIRBORNE_F, a
	set KIRBY1F_UNK0_F, a
	ldh [hff8d], a
	ldh a, [hff92]
	and ~(KIRBY2F_UNK2 | KIRBY2F_UNK3 | KIRBY2F_UNK6)
	ldh [hff92], a
	ld a, $16
	ld [wd065], a
	xor a
	ld [wd064], a
	ld [wd078], a
	ld [wd079], a
	ld a, $02
	ld [wd07a], a
	ld a, $00
	ld [wd07b], a
	ldh a, [hVBlankFlags]
	or VBLANK_3 | VBLANK_4
	ldh [hVBlankFlags], a
	ret

Func_917::
	ldh a, [hff90]
	bit 5, a
	jr nz, .asm_97b
	ldh a, [hff8d]
	bit KIRBY1F_UNK4_F, a
	jr z, .asm_97b
	ldh a, [hVBlankFlags]
	and VBLANK_0 | VBLANK_1
	jp z, Func_88d
	swap a
	ld b, a
	ldh a, [hff8d]
	and KIRBY1F_UNK5
	jr z, .asm_956
	and b
	jr nz, .asm_97b
	ldh a, [hVBlankFlags]
	res VBLANK_0_F, a
	ldh [hVBlankFlags], a
	bit VBLANK_4_F, b
	jp z, Func_88d
	ld a, [wd074]
	cp $01
	jp c, Func_88d
	ld a, $00
	ld [wd074], a
	ld a, $80
	ld [wd075], a
	jp Func_88d
.asm_956
	bit 4, b
	jp nz, .asm_97b
	ldh a, [hVBlankFlags]
	res VBLANK_1_F, a
	ldh [hVBlankFlags], a
	bit VBLANK_5_F, b
	jp z, Func_88d
	ld a, [wd074]
	cp $01
	jp c, Func_88d
	ld a, $00
	ld [wd074], a
	ld a, $80
	ld [wd075], a
	jp Func_88d
.asm_97b
	ldh a, [hVBlankFlags]
	bit VBLANK_0_F, a
	jr z, Func_998
	call Func_860
	ldh a, [hff8d]
	set KIRBY1F_UNK4_F, a
	ldh [hff8d], a
	call Func_4000
	call c, Func_1062
;	fallthrough

Func_990:
	ldh a, [hVBlankFlags]
	set VBLANK_4_F, a
	res VBLANK_0_F, a
	ldh [hVBlankFlags], a
;	fallthrough

Func_998:
	ld hl, hff95
	bit 6, [hl]
	jr z, .asm_9c0
	ldh a, [hff90]
	bit 5, a
	jr z, .asm_9c0
	ld a, [wStage]
	cp FLOAT_ISLANDS
	jr z, .float_islands_or_mt_dedede
	cp MT_DEDEDE
	jr nz, .asm_9c0
.float_islands_or_mt_dedede
	ld a, [wArea]
	cp $07
	jr nz, .asm_9c0
	ldh a, [hff92]
	and ~(KIRBY2F_UNK2 | KIRBY2F_UNK3)
	ldh [hff92], a
	call Func_11de
.asm_9c0
	ldh a, [hVBlankFlags]
	bit VBLANK_1_F, a
	jp z, Func_9de
	call Func_860
	ldh a, [hff8d]
	set KIRBY1F_UNK4_F, a
	ldh [hff8d], a
	call Func_417c
	call c, Func_110b
;	fallthrough

Func_9d6:
	ldh a, [hVBlankFlags]
	set VBLANK_4_F, a
	res VBLANK_1_F, a
	ldh [hVBlankFlags], a
;	fallthrough

Func_9de:
	ldh a, [hVBlankFlags]
	bit VBLANK_2_F, a
	jp z, Func_caf
	ldh a, [hff93]
	res 7, a
	ldh [hff93], a
	ldh a, [hff90]
	bit 5, a
	jp nz, .asm_ab8
	ld a, [wKirbyScreenY]
	ld [wd05f], a
	call Func_763
	ld d, $00
	ldh a, [hff8d]
	and (KIRBY1F_UNK0 | KIRBY1F_UNK1 | KIRBY1F_UNK2)
	jp z, .asm_ab8
	ld e, a
.asm_a05
	ld a, l
	call Func_643
	jr nc, .asm_a13
	dec hl
	inc d
	dec e
	jr nz, .asm_a05
	jp .asm_ab8
.asm_a13
	call Func_1ccb
	ld a, c
	dec a
	dec a
	ld [wd05f], a
	ld a, [wKirbyScreenX]
	add $03
	ld [wd05e], a
	call Func_7cd
	ld c, $00
	ld b, a
	and a
	jr z, .asm_a3f
	cp $01
	jr z, .asm_a3f
	cp $06
	jr z, .asm_a3f
	cp $07
	jr nz, .asm_a63
	ldh a, [hff93]
	set 6, a
	ldh [hff93], a
.asm_a3f
	ld a, [wKirbyScreenX]
	add $0c
	ld [wd05e], a
	call Func_7cd
	ld c, a
	and a
	jp z, .asm_ab8
	cp $01
	jp z, .asm_ab8
	cp $06
	jp z, .asm_ab8
	cp $07
	jr nz, .asm_a63
	ldh a, [hff93]
	set 6, a
	ldh [hff93], a
.asm_a63
	ld a, [wKirbyScreenY]
	cp $10
	jp z, .asm_a9e
	jp c, .asm_a9e
	ld a, [wd3f5]
	ld hl, wInvincibilityCounter
	or [hl]
	inc hl
	or [hl]
	jr nz, .asm_aa4
	ld a, b
	and a
	jr z, .asm_a87
	cp $07
	jr z, .asm_a87
	cp $08
	jr nz, .asm_a9e
	jr .asm_a93
.asm_a87
	ld a, c
	and a
	jr z, .asm_a93
	cp $07
	jr z, .asm_ab8
	cp $08
	jr nz, .asm_a9e
.asm_a93
	push bc
	push de
	call Func_4c9b
	pop de
	pop bc
	jr c, .asm_aa9
	jr .asm_ab8
.asm_a9e
	ldh a, [hff8e]
	bit 6, a
	jr nz, .asm_aa9
.asm_aa4
	push de
	call Func_c85
	pop de
.asm_aa9
	ld a, $16
	ld [wd065], a
	xor a
	ld [wd078], a
	ld [wd079], a
	ld a, d
	jr .asm_abc
.asm_ab8
	ldh a, [hff8d]
	and (KIRBY1F_UNK0 | KIRBY1F_UNK1 | KIRBY1F_UNK2)
.asm_abc
	ld [wd061], a
	ld b, a
	ldh a, [hff90]
	bit 4, a
	jr nz, .asm_ad6
	ld c, $4c
	ld a, [wd052]
	cp $01
	jr nz, .asm_ad8
	ld a, [wSCY]
	and $0f
	jr nz, .asm_ad8
.asm_ad6
	ld c, $10
.asm_ad8
	ld a, [wKirbyScreenY]
	sub c
	ld [wKirbyScreenDeltaY], a
	sub b
	jr c, .asm_b08
	ld a, [wd061]
	ld [wKirbyScreenDeltaY], a
	call MoveKirbyDown
	ld a, [wKirbyScreenY]
	cp $08
	jp nz, .asm_bba
.asm_af3
	call Func_c85
	jp c, .asm_bba
	ld a, $16
	ld [wd065], a
	xor a
	ld [wd078], a
	ld [wd079], a
	jp .asm_bba
.asm_b08
	call MoveKirbyDown
	ldh a, [hff90]
	bit 4, a
	jp nz, .asm_bba
	ld a, [wKirbyScreenDeltaY]
	ld b, a
	ld a, [wd061]
	sub b
	jp z, .asm_bba
	ld [wd061], a
	ld b, a
	ld a, [wSCY]
	ld c, a
.asm_b25
	ld a, c
	call Func_643
	jr nc, .asm_b68
	dec c
	dec b
	jr nz, .asm_b25
	ld a, [wKirbyScreenY]
	cp $10
	jp nc, .asm_baf
	jp .asm_bba
.asm_b3a
	ld a, [wKirbyScreenY]
	cp $10
	jr z, .asm_af3
	ld a, [wd061]
	sub b
	ld [wd061], a
	ld a, b
	ld [wKirbyScreenDeltaY], a
	call MoveKirbyDown
	ld a, [wKirbyScreenY]
	cp $10
	jp nz, .asm_baf
	call Func_c85
	xor a
	ld [wd078], a
	ld [wd079], a
	ld a, $16
	ld [wd065], a
	jr .asm_baf
.asm_b68
	ld a, [wd052]
	ld c, a
	cp $01
	jr z, .asm_b3a
	ldh a, [hVBlankFlags]
	bit VBLANK_5_F, a
	jp nz, Func_caf
	ld a, [wSCY]
	sub $10
	ld [wYCoord], a
	ld a, [wSCX]
	and $f0
	ld [wXCoord], a
	ld a, [wd052]
	dec a
	jr z, .asm_b8e
	dec a
.asm_b8e
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
	ldh a, [hVBlankFlags]
	set VBLANK_5_F, a
	ldh [hVBlankFlags], a
.asm_baf
	ld a, [wd061]
	ld b, a
	ld a, [wSCY]
	sub b
	ld [wSCY], a
.asm_bba
	ldh a, [hVBlankFlags]
	set VBLANK_4_F, a
	res VBLANK_2_F, a
	ldh [hVBlankFlags], a
	ldh a, [hff93]
	bit 6, a
	jr z, .asm_be0
	ld a, [wd3f5]
	ld hl, wInvincibilityCounter
	or [hl]
	inc hl
	or [hl]
	jr nz, .asm_be0
	ld a, [wKirbyScreenY]
	add $18
	call Func_7a7
	cp $07
	jp z, Func_4c9b
.asm_be0
	ldh a, [hff8e]
	bit 6, a
	jp z, Func_caf
	ld a, [wKirbyScreenY]
	cp $71
	jp nc, Func_caf
	dec a
	call Func_7b5
	cp $06
	jp z, Func_caf
	ldh a, [hff92]
	and $ff ^ (KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_UNK6 | KIRBY2F_FACE_LEFT)
	ldh [hff92], a
	ld a, [wd190 + OBJECT_SLOT_00]
	res 7, a
	ld [wd190 + OBJECT_SLOT_00], a
	ldh a, [hff8e]
	and $9c
	ldh [hff8e], a
	ldh a, [hff95]
	bit 6, a
	jr nz, .asm_c82
	ldh a, [hff8e]
	bit 7, a
	jr nz, .asm_c59
.asm_c18
	ld a, $02
	ld [wd07a], a
	ld a, $00
	ld [wd07b], a
	ld a, $01
	ld [wd076], a
	ld a, $33
	ld [wd077], a
	ldh a, [hff90]
	res 3, a
	ldh [hff90], a
	ldh a, [hff92]
	res KIRBY2F_UNK6_F, a
	ldh [hff92], a
	ldh a, [hff8d]
	set KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	set KIRBY1F_UNK3_F, a
	ldh [hff8d], a
	ld a, $16
	xor a
	ld [wd065], a
	ld [wd078], a
	ld [wd079], a
	ldh a, [hff8e]
	bit 7, a
	ret z
	ld a, $16
	ld [wd065], a
	ret
.asm_c59
	bit 2, a
	jr nz, .asm_c18
	ldh a, [hff8d]
	res KIRBY1F_GROUNDED_F, a
	ldh [hff8d], a
	ld a, $00
	ld [wd07a], a
	ld a, $cc
	ld [wd07b], a
	ld a, $00
	ld [wd076], a
	ld a, $00
	ld [wd076], a
	xor a
	ld [wd078], a
	ld [wd079], a
	ld [wd065], a
	ret
.asm_c82
	jp Func_3768

Func_c85:
	ldh a, [hff8e]
	bit 7, a
	jr nz, .set_carry
	ld a, [wd065]
	cp $03
	jr c, .set_carry
	ld a, [wd078]
	bit 7, a
	jp z, .set_carry
	cp $ff
	jp nc, .set_carry
	ld b, KIRBY2F_UNK0 | KIRBY2F_FACE_LEFT
	ldh a, [hff92]
	and ~(KIRBY2F_UNK0 | KIRBY2F_UNK1)
	or b
	ldh [hff92], a
	call Func_37ac
	xor a
	ret
.set_carry
	scf
	ret

Func_caf:
	ldh a, [hff90]
	bit 3, a
	jr nz, .asm_cba
	ldh a, [hVBlankFlags]
	bit VBLANK_3_F, a
	ret z
.asm_cba
	ldh a, [hff93]
	res 6, a
	ldh [hff93], a
	ldh a, [hff90]
	res 3, a
	ldh [hff90], a
	bit 5, a
	jp nz, .asm_ee0
	ld a, [wKirbyScreenY]
	cp $71
	jp nc, .asm_ee0
	ld a, [wKirbyScreenY]
	ld [wd05f], a
	call Func_763
	ld d, $00
	ldh a, [hff8d]
	and (KIRBY1F_UNK0 | KIRBY1F_UNK1 | KIRBY1F_UNK2)
	jp z, .asm_cf5
	inc a
	ld e, a
.asm_ce7
	ld a, l
	call Func_643
	jr nc, .asm_cf5
	inc hl
	inc d
	dec e
	jr nz, .asm_ce7
	jp .asm_ee0
.asm_cf5
	call Func_1ccb
	ld a, c
	ld [wd05f], a
	ld a, [wKirbyScreenX]
	add $03
	ld [wd05e], a
	call Func_7cd
	ld c, $00
	ld b, a
	and a
	jr z, .asm_d24
	cp $01
	jr z, .asm_d24
	cp $08
	jr z, .asm_d1e
	cp $06
	jr nz, .asm_d55
	call Func_326
	jr .asm_d24
.asm_d1e
	ldh a, [hff93]
	set 7, a
	ldh [hff93], a
.asm_d24
	ld a, [wKirbyScreenX]
	add $0c
	ld [wd05e], a
	call Func_7cd
	ld c, a
	and a
	jp z, .asm_d4f
	cp $01
	jr z, .asm_d55
	cp $08
	jr z, .asm_d46
	cp $06
	jr nz, .asm_d55
	call Func_326
	jp .asm_ee0
.asm_d46
	ldh a, [hff93]
	set 7, a
	ldh [hff93], a
	jp .asm_ee0

.asm_d4f
	ld a, $01
	cp b
	jp nz, .asm_ee0
.asm_d55
	ld a, [wd3f5]
	ld hl, wInvincibilityCounter
	or [hl]
	inc hl
	or [hl]
	jr nz, .asm_d7f
	ld a, b
	and a
	jr z, .asm_d6a
	cp $07
	jr nz, .asm_d7f
	jr .asm_d72
.asm_d6a
	ld a, c
	and a
	jr z, .asm_d72
	cp $07
	jr nz, .asm_d7f
.asm_d72
	push bc
	push de
	call Func_4ced
	pop de
	pop bc
	jp c, .asm_ece
	jp .asm_ee0
.asm_d7f
	ldh a, [hff92]
	bit KIRBY2F_UNK2_F, a
	jr z, .asm_da7
	ldh a, [hff8e]
	and $18
	jp nz, .asm_ec8
	ldh a, [hff8e]
	set 2, a
	ldh [hff8e], a
	bit 4, a
	jp z, .asm_ece
	ld a, SFX_INHALE
	call PlaySFX
	ld a, [wJoypadDown]
	or A_BUTTON
	ld [wJoypadDown], a
	jp .asm_ece
.asm_da7
	bit 3, a
	jp nz, .asm_e7f
	ldh a, [hff93]
	bit 4, a
	jr nz, .asm_df4
	ldh a, [hJoypadPressed]
	bit D_DOWN_F, a
	jp z, .asm_e57
	ld a, b
	and a
	jr z, .asm_dc5
	cp $06
	jr z, .asm_dc5
	cp $01
	jr nz, .asm_df4
.asm_dc5
	ld a, c
	and a
	jr z, .asm_dd1
	cp $06
	jr z, .asm_dd1
	cp $01
	jr nz, .asm_df4
.asm_dd1
	xor a
	ld [wd064], a
	ld hl, hff93
	res 4, [hl]
	ldh a, [hff92]
	and ~(KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_UNK2 | KIRBY2F_UNK3 | KIRBY2F_DUCK)
	or KIRBY2F_FACE_LEFT
	ldh [hff92], a
	ld hl, hff8e
	res 1, [hl]
	ldh a, [hff8d]
	set KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	ldh [hff8d], a
	inc d
	ld a, d
	jp .asm_f19

.asm_df4
	ld hl, hff8e
	bit 3, [hl]
	jr z, .asm_e1b
	bit 7, [hl]
	jp nz, .asm_e4f
	ldh a, [hff93]
	bit 4, a
	jp nz, .asm_ece
	ldh a, [hff93]
	set 4, a
	ldh [hff93], a
	xor a
	ld [wd3be], a
	push de
	ld a, SFX_SWALLOW
	call PlaySFX
	pop de
	jp .asm_ece
.asm_e1b
	ldh a, [hff8e]
	and $98
	jp nz, .asm_ece
	ldh a, [hff8e]
	and $f8
	ldh [hff8e], a
	ldh a, [hff92]
	and KIRBY2F_UNK3
	jp nz, .asm_ece
	ldh a, [hff95]
	and $7e
	jp nz, .asm_ece
	ldh a, [hff92]
	and $ff ^ (KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_UNK2 | KIRBY2F_UNK3 | KIRBY2F_FACE_LEFT)
	or KIRBY2F_DUCK
	ldh [hff92], a
	ldh a, [hff8d]
	and $ff ^ (KIRBY1F_UNK0 | KIRBY1F_UNK1 | KIRBY1F_UNK2 | KIRBY1F_UNK3 | KIRBY1F_AIRBORNE)
	or KIRBY1F_GROUNDED
	ldh [hff8d], a
	xor a
	ld [wd078], a
	ld [wd079], a
	jr .asm_ece

.asm_e4f
	ldh a, [hff92]
	res KIRBY2F_DUCK_F, a
	ldh [hff92], a
	jr .asm_ece

.asm_e57
	ld a, [wJoypadDown]
	or A_BUTTON
	ld [wJoypadDown], a
	ld a, [wd078]
	cp $01
	jr c, .asm_ece
	ldh a, [hff8e]
	and $70
	jr nz, .asm_ece
	xor a
	ld [wd065], a
	ldh a, [hff92]
	and ~(KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_UNK2 | KIRBY2F_UNK3 | KIRBY2F_DUCK)
	or KIRBY2F_FACE_LEFT
	ldh [hff92], a
	push de
	call Func_37ac
	pop de
	jr .asm_ece
.asm_e7f
	ld hl, hff92
	res KIRBY2F_UNK3_F, [hl]
	ldh a, [hff8e]
	and $f8
	jr nz, .asm_ec8
	ldh a, [hff95]
	bit 6, a
	jr nz, .asm_ec8
	ldh a, [hff92]
	set KIRBY2F_UNK2_F, a
	res KIRBY2F_UNK6_F, a
	ldh [hff92], a
	ld a, $02
	ld [wd07a], a
	ld a, $00
	ld [wd07b], a
	ld a, $fd
	ld [wd078], a
	ld a, $00
	ld [wd079], a
	ld hl, hff8e
	bit 4, [hl]
	jr nz, .asm_ec8
	push de
	ld a, SFX_30
	call PlaySFX
	call Func_37b1
	pop de
	ldh a, [hff8d]
	res KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	ldh [hff8d], a
	ld a, d
	jr .asm_f19
.asm_ec8
	ldh a, [hff92]
	and KIRBY2F_LAND | KIRBY2F_UNK6
	ldh [hff92], a
.asm_ece
	ldh a, [hff8d]
	res KIRBY1F_AIRBORNE_F, a
	set KIRBY1F_GROUNDED_F, a
	ldh [hff8d], a
	xor a
	ld [wd078], a
	ld [wd079], a
	ld a, d
	jr .asm_f19

.asm_ee0
	ld hl, hff8d
	set KIRBY1F_UNK3_F, [hl]
	ldh a, [hff8e]
	and $e0
	jr nz, .asm_f0f
	ldh a, [hff95]
	and $40
	jr nz, .asm_f0f
	ld hl, hff92
	ld a, [hl]
	and KIRBY2F_UNK2 | KIRBY2F_UNK3
	jr nz, .asm_f0f
	ld a, [wd064]
	inc a
	ld [wd064], a
	cp $1a
	jr c, .asm_f0f
	ldh a, [hff8e]
	bit 3, a
	jr nz, .asm_f0f
	set 3, [hl]
	call Func_383b
.asm_f0f
	ldh a, [hff8d]
	set KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	ldh [hff8d], a
	and KIRBY1F_UNK0 | KIRBY1F_UNK1 | KIRBY1F_UNK2
.asm_f19
	ld [wKirbyScreenDeltaY], a
	ld b, a
	ldh a, [hff90]
	bit 4, a
	jr nz, .asm_f31
	ld c, $54
	ld a, [wd040]
	sub $07
	ld d, a
	ld a, [wd052]
	cp d
	jr nz, .asm_f3b
.asm_f31
	ld c, $90
	ldh a, [hff95]
	bit 6, a
	jr z, .asm_f3b
	ld c, $80
.asm_f3b
	ld a, [wKirbyScreenY]
	add b
	ld b, a
	ld a, c
	sub b
	jr c, .asm_f5a
	call MoveKirbyUp
	ld a, [wd040]
	cp $08
	jp nz, .asm_1021
	ld a, [wKirbyScreenY]
	cp $90
	jp c, .asm_1021
	jp .asm_f92
.asm_f5a
	cpl
	inc a
	ld [wd061], a
	ld b, a
	ld a, [wKirbyScreenDeltaY]
	sub b
	ld [wKirbyScreenDeltaY], a
	call nz, MoveKirbyUp
	ld a, [wd052]
	ld b, a
	ld a, [wd040]
	sub b
	cp $08
	jp c, .asm_f92
	ld a, [wd061]
	ld b, a
	ld a, [wSCY]
	inc a
	ld c, a
.asm_f80
	ld a, c
	call Func_643
	jr nc, .asm_fc3
	inc c
	dec b
	jr nz, .asm_f80
	ld a, [wKirbyScreenY]
	cp $90
	jp nz, .asm_1019
.asm_f92
	ldh a, [hff8d]
	and $ff ^ KIRBY1F_AIRBORNE
	set KIRBY1F_GROUNDED_F, a
	ldh [hff8d], a
	ldh a, [hff92]
	and $ff ^ (KIRBY2F_UNK2 | KIRBY2F_UNK3 | KIRBY2F_UNK6 | KIRBY2F_FACE_LEFT)
	ldh [hff92], a
	ldh a, [hVBlankFlags]
	and ~(VBLANK_0 | VBLANK_1)
	ldh [hVBlankFlags], a
	jp .asm_1021
.asm_fa9
	ld a, [wd061]
	sub b
	inc a
	ld [wd061], a
	ld a, b
	dec a
	ld [wKirbyScreenDeltaY], a
	call MoveKirbyUp
	ld a, [wd040]
	sub $07
	ld [wd052], a
	jr .asm_1019
.asm_fc3
	ld a, [wd040]
	sub $08
	ld c, a
	ld a, [wd052]
	cp c
	jr z, .asm_fa9
	jr nc, .asm_f92
	ldh a, [hVBlankFlags]
	bit VBLANK_5_F, a
	ret nz
	ld a, [wSCY]
	and $0f
	ld b, a
	jr z, .asm_fe2
	ld a, $10
	sub b
	ld b, a
.asm_fe2
	ld a, [wSCY]
	add $80
	add b
	ld [wYCoord], a
	ld a, [wSCX]
	and $f0
	ld [wXCoord], a
	ld a, [wd052]
	add $08
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
	ldh a, [hVBlankFlags]
	set VBLANK_5_F, a
	ldh [hVBlankFlags], a
	ld hl, wd052
	inc [hl]
.asm_1019
	ld hl, wSCY
	ld a, [wd061]
	add [hl]
	ld [hl], a
.asm_1021
	ldh a, [hVBlankFlags]
	set VBLANK_4_F, a
	res VBLANK_3_F, a
	ldh [hVBlankFlags], a
	ldh a, [hff93]
	bit 7, a
	ret z
	ld a, [wd3f5]
	ld hl, wInvincibilityCounter
	or [hl]
	inc hl
	or [hl]
	ret nz
	ld a, [wKirbyScreenY]
	sub $08
	call Func_7b5
	cp $08
	ret nz
	jp Func_4ced

Func_1046:
	push bc
	push de
	ld hl, wc100
	ld a, [wd052]
	dec a
	ld b, a
	ld a, [wd03f]
	ld e, a
	call CalculateBCPercentage
	add hl, bc
	ld b, $00
	ld a, [wd051]
	ld c, a
	add hl, bc
	pop de
	pop bc
	ret

Func_1062::
	ldh a, [hff90]
	bit 4, a
	ret nz
	ld a, [wd063]
	and a
	ret z
	ld b, a
	ld a, [wSCX]
	inc a
	ld c, a
.asm_1072
	ld a, c
	call Func_643
	jr nc, .asm_109b
	inc c
	dec b
	jr nz, .asm_1072
	ld a, [wKirbyScreenX]
	cp $98
	jp nz, .asm_1102
.asm_1084
	ld a, [wd063]
	sub b
	ld [wd063], a
	ld a, b
	ld [wKirbyScreenDeltaX], a
	call MoveKirbyRight
	ld a, [wd042]
	inc a
	ld [wd051], a
	jr .asm_1102
.asm_109b
	ldh a, [hff91]
	bit 7, a
	jr nz, .asm_10ac
	ld a, [wd042]
	inc a
	ld c, a
	ld a, [wd051]
	cp c
	jr z, .asm_1084
.asm_10ac
	ld a, [wSCX]
	and $0f
	ld b, a
	jr z, .asm_10b8
	ld a, $10
	sub b
	ld b, a
.asm_10b8
	ld a, [wSCX]
	add $a0
	add b
	ld [wXCoord], a
	ld a, [wSCY]
	and $f0
	ld [wYCoord], a
	call Func_1046
	ld b, $00
	ld c, $0a
	add hl, bc
	ld a, [wd051]
	add $0b
	ld c, a
	ld a, [wd03f]
	cp c
	jr nc, .asm_10e1
	ld c, a
	call SubtractBCFromHL
.asm_10e1
	call Func_1292
	ldh a, [hVBlankFlags]
	set VBLANK_5_F, a
	ldh [hVBlankFlags], a
	ld a, [wd051]
	ld b, a
	ld a, [wd03f]
	cp b
	jr nz, .asm_10fe
	ldh a, [hff91]
	bit 7, a
	jr z, .asm_10fe
	xor a
	ld [wd051], a
.asm_10fe
	ld hl, wd051
	inc [hl]
.asm_1102
	ld hl, wSCX
	ld a, [wd063]
	add [hl]
	ld [hl], a
	ret

Func_110b:
	ldh a, [hff90]
	bit 4, a
	ret nz
	ldh a, [hff90]
	bit 5, a
	ret nz
	ld hl, hff94
	bit 3, [hl]
	ret nz
	ld a, [wKirbyScreenDeltaX]
	ld b, a
	ld a, [wd063]
	sub b
	ret z
	ld [wd063], a
	ld b, a
	ld a, [wSCX]
	ld c, a
.asm_112c
	ld a, c
	call Func_643
	jr nc, .asm_115d
	dec c
	dec b
	jr nz, .asm_112c
	ld a, [wKirbyScreenX]
	cp $08
	jp nc, .asm_11be
	ret
.asm_113f
	ld a, [wKirbyScreenX]
	cp $08
	jp z, Func_42a1
	ld a, [wd063]
	sub b
	ld [wd063], a
	ld b, a
	ld [wKirbyScreenDeltaX], a
	call MoveKirbyLeft
	ld a, $01
	ld [wd051], a
	jp .asm_11be

.asm_115d
	ldh a, [hff91]
	bit 7, a
	jr nz, .asm_116d
	ld a, [wd051]
	cp $01
	jr z, .asm_113f
	jp c, Func_42a1
.asm_116d
	ldh a, [hVBlankFlags]
	bit VBLANK_5_F, a
	ret nz
	ld a, [wSCX]
	sub $10
	ld [wXCoord], a
	ld a, [wSCY]
	and $f0
	ld [wYCoord], a
	ld a, [wd051]
	cp $01
	jr nz, .asm_11ac
	ldh a, [hff91]
	bit 7, a
	jr z, .asm_11ac
	ld a, [wd03f]
	inc a
	ld [wd051], a
	call Func_1046
	dec hl
	dec hl
	ld a, [wd03f]
	ld [wd051], a
	call Func_1292
	ldh a, [hVBlankFlags]
	set VBLANK_5_F, a
	ldh [hVBlankFlags], a
	jr .asm_11be
.asm_11ac
	call Func_1046
	dec hl
	dec hl
	call Func_1292
	ldh a, [hVBlankFlags]
	set VBLANK_5_F, a
	ldh [hVBlankFlags], a
	ld hl, wd051
	dec [hl]
.asm_11be
	ld hl, wd063
	ld a, [wSCX]
	sub [hl]
	ld [wSCX], a
	ret

Func_11c9::
	ldh a, [hff8d]
	bit KIRBY1F_GROUNDED_F, a
	ret z
	ldh a, [hff92]
	bit KIRBY2F_UNK2_F, a
	ret z
	res KIRBY2F_UNK2_F, a
	ldh [hff92], a
	ldh a, [hff8e]
	res 2, a
	ldh [hff8e], a
	ret

Func_11de:
	ld b, $01
	ld a, [wSCX]
	inc a
	ld c, a
.asm_11e5
	ld a, c
	call Func_643
	jr nc, .asm_11f6
	inc c
	dec b
	jr nz, .asm_11e5
	jr .asm_123f
.asm_11f1
	ld a, $14
	ld [wd051], a
.asm_11f6
	ld c, $1e
	ld a, [wd051]
	cp c
	jr z, .asm_11f1
	ld a, [wSCX]
	and $0f
	ld b, a
	jr z, .asm_120a
	ld a, $10
	sub b
	ld b, a
.asm_120a
	ld a, [wSCX]
	add $a0
	add b
	ld [wXCoord], a
	xor a
	ld [wYCoord], a
	ld hl, wc100
	ld b, $00
	ld a, [wd051]
	bit 7, a
	jr z, .asm_122b
	cpl
	inc a
	ld c, a
	call SubtractBCFromHL
	jr .asm_122d
.asm_122b
	ld c, a
	add hl, bc
.asm_122d
	ld b, $00
	ld c, $0a
	add hl, bc
	call Func_1292
	ldh a, [hVBlankFlags]
	set VBLANK_5_F, a
	ldh [hVBlankFlags], a
	ld hl, wd051
	inc [hl]
.asm_123f
	ld a, [wSCX]
	add $01
	ld [wSCX], a
	ret

Func_1248::
	ld hl, wKirbyScreenY
	ld a, [wSCY]
	and $0f
	add [hl]
	and $08
	jr nz, Func_1257.no_carry
	scf
	ret

Func_1257::
	ld hl, wKirbyScreenY
	ld a, [wSCY]
	and $0f
	add [hl]
	and $08
	jr z, .no_carry
	scf
	ret
.no_carry
	xor a
	ret

; input:
; - [wKirbyScreenDeltaX] = offset to add to
;   Kirby's screen X position
MoveKirbyRight::
	ld hl, wKirbyScreenX
	ld a, [wKirbyScreenDeltaX]
	ld b, a
	add [hl]
	ld [hl], a
	ret

; input:
; - [wKirbyScreenDeltaX] = offset to subtract
;   from Kirby's screen X position
MoveKirbyLeft::
	ld hl, wKirbyScreenX
	ld a, [wKirbyScreenDeltaX]
	ld b, a
	ld a, [hl]
	sub b
	ld [hl], a
	ret

; input:
; - [wKirbyScreenDeltaY] = offset to add to
;   Kirby's screen Y position
MoveKirbyDown:
	ld hl, wKirbyScreenY
	ld a, [wKirbyScreenDeltaY]
	ld b, a
	ld a, [hl]
	sub b
	ld [hl], a
	ret

; input:
; - [wKirbyScreenDeltaY] = offset to subtract
;   from Kirby's screen Y position
MoveKirbyUp:
	ld hl, wKirbyScreenY
	ld a, [wKirbyScreenDeltaY]
	ld b, a
	add [hl]
	ld [hl], a
	ret

Func_1292:
	push bc
	ld de, wBGQueue
	ld c, $09
.asm_1298
	ld a, [hl]
	call Func_131a
	push bc
	ld b, $00
	ld a, [wd03f]
	ld c, a
	add hl, bc
	pop bc
	ld a, [wYCoord]
	add $10
	ld [wYCoord], a
	dec c
	jr nz, .asm_1298
	xor a
	ld [de], a
	pop bc
	ret

Func_12b4::
	push bc
	ld de, wBGQueue
	ld a, [wd03f]
	ld b, a
	ld a, [wd051]
	add $0a
	sub b
	jr c, .asm_12cb
	ld b, a
	ld a, $0b
	sub b
	ld c, a
	jr .asm_12cf
.asm_12cb
	ld c, $0b
	ld b, $00
.asm_12cf
	push bc
.asm_12d0
	ld a, [hli]
	call Func_131a
	ld a, [wXCoord]
	add $10
	ld [wXCoord], a
	dec c
	jr nz, .asm_12d0
	pop bc
	xor a
	cp b
	jr z, .asm_1316
	push bc
	push de
	ld a, [wd052]
	ld c, a
	ldh a, [hVBlankFlags]
	bit VBLANK_2_F, a
	jr nz, .asm_12f4
	ld a, $0a
	add c
	ld c, a
.asm_12f4
	dec c
	jr z, .asm_12f8
	dec c
.asm_12f8
	ld e, c
	ld a, [wd03f]
	ld b, a
	call CalculateBCPercentage
	ld hl, wc100
	add hl, bc
	pop de
	pop bc
	ld c, b
.asm_1307
	ld a, [hli]
	call Func_131a
	ld a, [wXCoord]
	add $10
	ld [wXCoord], a
	dec c
	jr nz, .asm_1307
.asm_1316
	xor a
	ld [de], a
	pop bc
	ret

; input:
; - a = index in wc600
Func_131a:
	push bc
	push hl
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl ; *4
	ld bc, wc600
	add hl, bc
	ld a, [wXCoord]
	ld [wd06b], a
	ld a, [wYCoord]
	ld [wd06c], a
	ld [wd07f], a
	call GetBGCoordFromPosition
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ld a, [wd06b]
	ld [wXCoord], a
	ld a, [wd06c]
	ld [wYCoord], a
	pop hl
	pop bc
	ret

; input:
; - [wXCoord] = x pos
; - [wYCoord] = y pos
; - de = bg map pointer
GetBGCoordFromPosition:
	push bc
	push hl
	ld hl, v0BGMap0
	ld a, [wXCoord]
	srl a
	srl a
	srl a ; /8
	ld [wd06e], a
	ld a, [wYCoord]
	srl a
	srl a
	srl a ; /8
	jr z, .got_row
	ld bc, SCRN_VX_B
.loop
	add hl, bc
	dec a
	jr nz, .loop
.got_row
	ld b, $00
	ld a, [wd06e]
	ld c, a
	add hl, bc
	ld a, h
	ld [de], a
	inc de
	ld a, l
	ld [de], a
	inc de
	pop hl
	pop bc
	ret

SetHPToZeroAndLoseLife:
	ld a, BANK(_SetHPToZeroAndLoseLife)
	bankswitch
	jp _SetHPToZeroAndLoseLife

LoseLife:
	ld a, BANK(_LoseLife)
	bankswitch
	jp _LoseLife

Func_139b::
	ld hl, hff94
	bit 5, [hl]
	ret nz
	ld a, $01
	ld [rROMB0 + $100], a
	ld a, [wKirbyScreenX]
	add $08
	ld [wObjectXCoords + $1], a
	ld a, [wKirbyScreenY]
	add $08
	ld [wObjectYCoords + $1], a
	ld de, GfxScript_157a
	ldh a, [hff92]
	bit KIRBY2F_LAND_F, a
	jr nz, .asm_13c4
	ld hl, $157d
	jr .asm_13c7
.asm_13c4
	ld hl, $15b7
.asm_13c7
	ld c, $00
	ldh a, [hff8d]
	bit KIRBY1F_UNK4_F, a
	jr z, .asm_13d1
	ld c, $01
.asm_13d1
	bit 7, a
	jr z, .asm_13df
	ld c, $02
	ldh a, [hff92]
	bit KIRBY2F_UNK3_F, a
	jr z, .asm_13df
	ld c, $0e
.asm_13df
	ldh a, [hff8e]
	bit 7, a
	jr z, .asm_1410
	ldh a, [hff95]
	bit 2, a
	jr nz, .asm_13fe
	ld a, [wd094]
	cp $02
	jr nz, .asm_13fa
	ld c, $04
	ldh a, [hff92]
	bit KIRBY2F_UNK6_F, a
	jr z, .asm_1408
.asm_13fa
	ld c, $03
	jr .asm_1408
.asm_13fe
	ldh a, [hff95]
	bit 1, a
	jr nz, .asm_1408
	ld c, $1b
	jr .asm_1408
.asm_1408
	ldh a, [hff8e]
	bit 2, a
	jr z, .asm_1410
	ld c, $05
.asm_1410
	ldh a, [hff8e]
	and $80
	jr nz, .asm_1424
	ldh a, [hff92]
	bit KIRBY2F_FACE_LEFT_F, a
	jr z, .asm_1424
	ld c, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_UNK2
	ldh a, [hff92]
	and KIRBY2F_UNK0 | KIRBY2F_UNK1
	add c
	ld c, a
.asm_1424
	ldh a, [hff92]
	bit KIRBY2F_DUCK_F, a
	jr z, .asm_142c
	ld c, $0b
.asm_142c
	ldh a, [hff8e]
	bit 6, a
	jr z, .asm_146b
	ldh a, [hff92]
	bit KIRBY2F_DUCK_F, a
	jr nz, .asm_146b
	ldh a, [hff8e]
	and $fc
	ldh [hff8e], a
	bit 7, a
	jr nz, .asm_1465
	ldh a, [hff8d]
	bit KIRBY1F_UNK4_F, a
	jr nz, .asm_1453
	ld a, [wd078]
	bit 7, a
	jr z, .asm_1457
	ld c, $0d
	jr .asm_146b
.asm_1453
	ld c, $0c
	jr .asm_146b
.asm_1457
	ldh a, [hff8d]
	bit KIRBY1F_GROUNDED_F, a
	jr nz, .asm_1461
	ld c, $02
	jr .asm_146b
.asm_1461
	ld c, $00
	jr .asm_146b
.asm_1465
	bit 2, a
	jr z, .asm_146b
	ld c, $05
.asm_146b
	ldh a, [hff92]
	bit KIRBY2F_UNK2_F, a
	jr z, .asm_147d
	ldh a, [hff8e]
	bit 2, a
	jr nz, .asm_147b
	ld c, $0e
	jr .asm_147d
.asm_147b
	ld c, $0f
.asm_147d
	ldh a, [hff8e]
	bit 4, a
	jr z, .asm_149f
	ld c, $10
	bit 2, a
	jr z, .asm_148d
	ld c, $11
	jr .asm_149f
.asm_148d
	bit 3, a
	jr z, .asm_1495
	ld c, $16
	jr .asm_14dc
.asm_1495
	ldh a, [hff93]
	bit 3, a
	jr z, .asm_14dc
	ld c, $19
	jr .asm_14dc
.asm_149f
	ldh a, [hff8e]
	bit 3, a
	jr z, .asm_14dc
	ld a, [wd094]
	cp $04
	jr z, .asm_14b6
	ld c, $17
	ldh a, [hff8e]
	res 2, a
	ldh [hff8e], a
	jr .asm_14dc
.asm_14b6
	ldh a, [hff92]
	res KIRBY2F_FACE_LEFT_F, a
	ldh [hff92], a
	ld c, $12
	ldh a, [hff8d]
	bit KIRBY1F_UNK4_F, a
	jr z, .asm_14c6
	ld c, $13
.asm_14c6
	bit 7, a
	jr z, .asm_14cc
	ld c, $14
.asm_14cc
	ldh a, [hff8e]
	bit 2, a
	jr z, .asm_14d4
	ld c, $15
.asm_14d4
	ldh a, [hff93]
	bit 4, a
	jr z, .asm_14dc
	ld c, $18
.asm_14dc
	ldh a, [hff8e]
	and $f8
	jr nz, .asm_14f0
	ldh a, [hff95]
	bit 1, a
	jr nz, .asm_1510
	bit 4, a
	jr z, .asm_14f0
	ld c, $1a
	jr .asm_1510
.asm_14f0
	ldh a, [hff8e]
	and $f0
	jr nz, .asm_1510
	ldh a, [hff92]
	and KIRBY2F_UNK2 | KIRBY2F_UNK3 | KIRBY2F_DUCK | KIRBY2F_FACE_LEFT
	jr nz, .asm_1510
	ldh a, [hff95]
	bit 5, a
	jr z, .asm_1510
	ldh a, [hff8e]
	and $e7
	ldh [hff8e], a
	ldh a, [hff93]
	res 4, a
	ldh [hff93], a
	ld c, $1c
.asm_1510
	ldh a, [hff93]
	bit 2, a
	jr z, .asm_1524
	bit 0, a
	jr z, .asm_1524
	ld c, $00
	ldh a, [hff91]
	bit 4, a
	jr z, .asm_1524
	ld c, $06
.asm_1524
	ld a, c
	add c
	ld c, a
	ld a, $00
	adc $00
	ld b, a
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hl]
	ld b, a
	push af
	ldh a, [hff94]
	bit 6, a
	jr nz, .asm_1546
	pop af
	ld hl, wd082
	cp [hl]
	jr nz, .asm_1559
	ld a, c
	inc hl
	cp [hl]
	jr nz, .asm_1559
	jr .finish
.asm_1546
	res 6, a
	ldh [hff94], a
	pop af

	ldh a, [hff92]
	bit KIRBY2F_LAND_F, a
	jr nz, .asm_1556
	ld de, $42bc
	jr .asm_1559
.asm_1556
	ld de, $428c
.asm_1559
	ld a, b
	ld h, a
	ld [wd082 + 0], a
	ld a, c
	ld l, a
	ld [wd082 + 1], a
	ld bc, OBJECT_SLOT_00
	call Func_21e6

.finish
	ld a, [wROMBank]
	ld [rROMB0 + $100], a
	ret

SetFullHP::
	ld a, [wConfigMaxHP]
	ld [wMaxHP], a
	ld [wHP], a
	ret

GfxScript_157a::
	frame  0, $0000
; 0x157d

SECTION "Home@18ff", ROM0[$18ff]

; input:
; - a = flags for wOAMFlagsOverride
; - hl = OAM data pointer
AddSprite::
	ld [wOAMFlagsOverride], a
	ld a, [wROMBank]
	push af
	ld a, $0b
	bankswitch
	ld a, [hl]
	cp $80
	jr z, .skip
	ld a, [wVirtualOAMSize]
	ld e, a
	ld d, HIGH(wVirtualOAM)
.loop_add_oam
	ld a, [hli]
	add c
	ld [de], a ; y
	inc e
	ld a, [hli]
	add b
	ld [de], a ; x
	inc e
	ld a, [hli]
	ld [de], a ; tile ID
	inc e
	ld a, [wOAMFlagsOverride]
	xor [hl]
	ld [de], a ; flags
	inc hl
	inc e
	bit 0, a
	jr z, .loop_add_oam
	ld a, e
	ld [wVirtualOAMSize], a
.skip
	pop af
	bankswitch
	ret

ClearSprites::
	ld a, [wd096]
	inc a
	jr nz, .not_all_sprites
; clear all sprites
	ld a, wVirtualOAMEnd - wVirtualOAM
	ld c, a
	ld [wd096], a
	xor a
	ld [wVirtualOAMSize], a
	jr .got_offset
.not_all_sprites
	ld a, [wVirtualOAMSize]
	ld [wd096], a
	ld c, wVirtualOAMEnd - wVirtualOAM
.got_offset
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ld de, $4
	ld b, $00
.loop_oam
	ld [hl], b
	add hl, de
	ld a, l
	cp c
	jr nz, .loop_oam
	ret

; input:
; - hl = ?
Func_1964::
	push bc
	push de
	xor a
	ld [wXCoord], a
	ld [wYCoord], a
	ld de, wBGQueue
	ld a, $0a
	ld b, a
.loop_rows
	ld a, [wd03f]
	cp $0a
	jr z, .got_num_cols
	ld a, $0b
.got_num_cols
	ld c, a
.loop_cols
	ld a, [hli]
	call Func_131a
	ld a, [wXCoord]
	add $10
	ld [wXCoord], a
	dec c
	jr nz, .loop_cols
	push bc
	ld b, $00
	ld a, [wd03f]
	sub $0a
	jr z, .asm_1998
	sub $01
.asm_1998
	ld c, a
	add hl, bc
	pop bc
	xor a
	ld [wXCoord], a
	ld a, [wYCoord]
	add $10
	ld [wYCoord], a
	dec b
	jr nz, .loop_rows
	xor a
	ld [de], a
	ld [wXCoord], a
	ld [wYCoord], a
	xor a
	ldh [rSCX], a
	ldh [rSCY], a
	ldh a, [hVBlankFlags]
	or VBLANK_5 | VBLANK_6
	ldh [hVBlankFlags], a
	call Func_1ee3
	ld a, [wd06b]
	xor a
	ldh [hVBlankFlags], a
	pop de
	pop bc
	ret

Func_19c9::
	ldh a, [hff90]
	and $08
	ldh [hff90], a
	ld hl, Data_38b1
	ld a, [wStage]
	add a ; *2
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hl]
	ld b, a
	ld h, b
	ld l, c
	ld a, [wArea]
	add a
	add a
	add a ; *8
	ld c, a
	ld b, $00
	add hl, bc
	ld bc, $5
	add hl, bc
	ld a, [hli]
	and a
	jr z, .asm_19f8
	ldh a, [hff90]
	set 2, a
	ldh [hff90], a
.asm_19f8
	ret

Func_19f9::
	push bc
	push hl
	ld a, $ff
	ld [wd03d], a
	ld [wd096], a
	call ResetTimer
	ld hl, Data_38b1
	ld a, [wStage]
	add a ; *2
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hl]
	ld b, a
	ld h, b
	ld l, c
	ld a, [wArea]
	add a
	add a
	add a ; *8
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld e, a
	push hl
	ld h, d
	ld l, e
	ld de, wc100
	call FarDecompress
	pop hl
	ld a, [hli]
	ld [wd03f], a
	sub $0a
	ld [wd041], a
	ld a, [hli]
	ld [wd040], a
	ldh a, [hff91]
	and $7f
	ldh [hff91], a

	ldh a, [hHUDFlags]
	and $ff ^ (HUD_6 | HUD_BOSS_BATTLE)
	ldh [hHUDFlags], a

	inc hl
	ld a, [hl]
	and $15
	jr z, .asm_1a6e
	bit 0, a
	jr nz, .asm_1a60
	bit 4, a
	jr nz, .asm_1a68
	ldh a, [hff91]
	set 7, a
	ldh [hff91], a
	jr .asm_1a6e
.asm_1a60
	ldh a, [hff90]
	set 4, a
	ldh [hff90], a
	jr .asm_1a6e

.asm_1a68
	ldh a, [hHUDFlags]
	set HUD_6_F, a
	ldh [hHUDFlags], a
.asm_1a6e
	bit 3, [hl]
	jr z, .asm_1a79
	push hl
	ld a, $08
	ld [wd03d], a
	pop hl
.asm_1a79
	inc hl
	ld a, [hl]
	ld [wd042], a

	ld a, [wStage]
	cp MT_DEDEDE
	jp nz, .asm_1bc2
	ld a, [wArea]
	and a
	jr nz, .asm_1b09
	ldh a, [hff90]
	set 4, a
	ldh [hff90], a
	ld a, [wMtDededeDefeatedBosses + MT_DEDEDE_1]
	and a
	jr z, .asm_1aae
	ld a, $15
	ld [wc100 + $6f], a
	ld a, $16
	ld [wc100 + $ab], a
	ld a, $17
	ld [wc100 + $70], a
	ld a, $18
	ld [wc100 + $ac], a
	ld b, 1
.asm_1aae
	ld a, [wMtDededeDefeatedBosses + MT_DEDEDE_2]
	and a
	jr z, .asm_1ac9
	ld a, $15
	ld [wc100 + $15f], a
	ld a, $16
	ld [wc100 + $19b], a
	ld a, $17
	ld [wc100 + $160], a
	ld a, $18
	ld [wc100 + $19c], a
	inc b
.asm_1ac9
	ld a, [wMtDededeDefeatedBosses + MT_DEDEDE_3]
	and a
	jr z, .asm_1ae4
	ld a, $15
	ld [wc100 + $75], a
	ld a, $16
	ld [wc100 + $b1], a
	ld a, $17
	ld [wc100 + $76], a
	ld a, $18
	ld [wc100 + $b2], a
	inc b
.asm_1ae4
	ld a, [wMtDededeDefeatedBosses + MT_DEDEDE_4]
	and a
	jr z, .asm_1aff
	ld a, $15
	ld [wc100 + $165], a
	ld a, $16
	ld [wc100 + $1a1], a
	ld a, $17
	ld [wc100 + $166], a
	ld a, $18
	ld [wc100 + $1a2], a
	inc b
.asm_1aff
	ld a, $04
	cp b
	jr nz, .asm_1b08
	xor a
	ld [wMtDededeDefeatedBosses + MT_DEDEDE_5], a
.asm_1b08
	xor a
.asm_1b09
	ld hl, wMtDededeDefeatedBosses
	ld c, a
	ld b, $00
	add hl, bc
	ld a, TRUE
	ld [hl], a
	xor a
	ld [wMtDededeDefeatedBosses + MT_DEDEDE_0], a
	ld [wMtDededeDefeatedBosses + MT_DEDEDE_6], a
	ld [wMtDededeDefeatedBosses + MT_DEDEDE_8], a
	ld [wMtDededeDefeatedBosses + MT_DEDEDE_7], a
	ld [wMtDededeDefeatedBosses + MT_DEDEDE_9], a
	ld hl, Data_1bc5
	add hl, bc
	ld a, [hl]
	ld [wd06c], a
	cp $04
	jr z, .asm_1b69

	push af
	push hl
	push de
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
	jr .asm_1b66
.extra_game
	ld hl, $488d
	ld de, v0Tiles0
	ld c, $0a
	call FarDecompress
	ld hl, $50f3
	ld de, $9670
	ld c, $0a
	call FarDecompress
.asm_1b66
	pop de
	pop hl
	pop af

.asm_1b69
	ld c, a
	add a
	add a
	add c
	ld b, $00
	ld c, a
	ld hl, Data_2070
	ld a, [wExtraGameEnabled]
	and a
	jr z, .asm_1b7c
	ld hl, Data_2089
.asm_1b7c
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
	ld a, [wd06c]
	ld c, a
	add a
	add c ; *3
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
	ld hl, hff91
	bit 5, [hl]
	jr z, .asm_1bc2
	ld hl, Data_1bcf
	ld a, [wArea]
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wd03d], a
.asm_1bc2
	pop hl
	pop bc
	ret

Data_1bc5:
	table_width 1, Data_1bc5
	db MT_DEDEDE     ; MT_DEDEDE_0
	db GREEN_GREENS  ; MT_DEDEDE_1
	db CASTLE_LOLOLO ; MT_DEDEDE_2
	db FLOAT_ISLANDS ; MT_DEDEDE_3
	db BUBBLY_CLOUDS ; MT_DEDEDE_4
	db MT_DEDEDE     ; MT_DEDEDE_5
	db GREEN_GREENS  ; MT_DEDEDE_6
	db FLOAT_ISLANDS ; MT_DEDEDE_7
	db CASTLE_LOLOLO ; MT_DEDEDE_8
	db BUBBLY_CLOUDS ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

Data_1bcf:
	table_width 1, Data_1bcf
	db $12 ; MT_DEDEDE_0
	db $0d ; MT_DEDEDE_1
	db $10 ; MT_DEDEDE_2
	db $0e ; MT_DEDEDE_3
	db $0f ; MT_DEDEDE_4
	db $11 ; MT_DEDEDE_5
	db $0d ; MT_DEDEDE_6
	db $0e ; MT_DEDEDE_7
	db $10 ; MT_DEDEDE_8
	db $0f ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

GetScoreDigitTiles:
	ld hl, wScore
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hl]
	call GetScoreDigits

	ld a, $7f
	ld e, a
	ld d, $5 ; number of score digits
	ld hl, wScoreDigits
	ld bc, wScoreDigitTiles
.loop
	ld a, [hli]
	and a
	jr z, .zero
	ld e, "0"
.zero
	add e
	ld [bc], a
	inc bc
	dec d
	jr nz, .loop
	ld hl, hHUDFlags
	set HUD_UPDATE_FIRST_ROW_F, [hl]
	ret

InitWindow::
	ld a, $a0
	ldh [rWX], a
	ld a, $90
	ldh [rWY], a
	ret

Func_1c0a::
	call ResetTimer
	ld c, $40
	ld hl, v0BGMap1
	ld a, $7f
.asm_1c14
	ld [hli], a
	dec c
	jr nz, .asm_1c14
	ld a, $07
	ldh [rWX], a
	ld a, $80
	ldh [rWY], a
	ld a, $67
	ld [$9c2e], a
	ld a, $6b
	ld [$9c2f], a
	ld a, $6f
	ld [$9c22], a
	ld a, $70
	ld [$9c23], a
	inc a
	ld [$9c24], a
	ld a, $7f
	ld [$9c06], a
	ld [$9c07], a
	ld [$9c08], a
	ld [$9c09], a
	ld [$9c0a], a
	ld [$9c30], a
	ld [$9c31], a
	jp StopTimerAndSwitchOnLCD

; calculates bc as a percentage,
; given its percentage value in e
; i.e. bc = bc * (e / 256)
; input:
; - bc = value to get percentage
; - e = percentage
; output:
; - bc = result
CalculateBCPercentage::
	push af
	push hl
	ld hl, 0
	ld c, h ; 0
	ld a, 8
.loop
	srl b
	rr c
	sla e
	jr nc, .next
	add hl, bc
.next
	dec a
	jr nz, .loop
	ld c, l
	ld b, h
	pop hl
	pop af
	ret

; input
; - a = number to get digits
; output:
; - a = ones digit
; - b = tens digit
; - c = hundreds digit
GetDigits::
	ld b, -1
	ld c, b
.loop_hundreds
	inc c
	sub 100
	jr nc, .loop_hundreds
	add 100
.loop_tens
	inc b
	sub 10
	jr nc, .loop_tens
	add 10
	ret

; outputs in wScoreDigits the number
; given in a and bc
; input:
; - a and bc = score to display
GetScoreDigits:
	ld l, c
	ld h, b
	ld de, 0
	ld bc, -10000
.loop_ten_thousands
	inc d
	add hl, bc
	ccf
	sbc e
	jr nc, .loop_ten_thousands
	dec d
	ld bc, 10000
	add hl, bc
	adc e

	ld bc, -1000
.loop_thousands
	inc e
	add hl, bc
	jr c, .loop_thousands
	dec e
	ld bc, 1000
	add hl, bc
	ld b, a
	ld a, d
	ld [wScoreDigits + 0], a ; 10,000
	ld a, e
	ld [wScoreDigits + 1], a ; 1,000
	ld a, b

	ld de, 0
	ld bc, -100
.loop_hundreds
	inc d
	add hl, bc
	jr c, .loop_hundreds
	dec d
	ld bc, 100
	add hl, bc

	ld a, l
.loop_tens
	inc e
	sub 10
	jr nc, .loop_tens
	dec e
	add 10
	ld [wScoreDigits + 4], a
	ld a, e
	ld [wScoreDigits + 3], a
	ld a, d
	ld [wScoreDigits + 2], a
	ret

Func_1ccb::
	push af
	ld a, l
	and $f0
	swap a
	ld c, a
	ld a, h
	swap a
	ld b, a
	and $f0
	or c
	ld c, a
	ld a, b
	and $0f
	ld b, a
	pop af
	ret

SubtractBCFromHL::
	push de
	ld a, b
	ld d, a
	ld a, c
	ld e, a
	ld a, l
	sub e
	ld l, a
	ld a, h
	sbc d
	ld h, a
	pop de
	ret
; 0x1ced
