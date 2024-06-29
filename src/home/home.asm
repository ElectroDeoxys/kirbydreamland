SECTION "Home@0648", ROM0[$0648]

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
	ld hl, hff8c
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
	ld hl, hff8c
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
	ldh a, [hff8c]
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
	ldh [hff8c], a
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
; 0x6ec

SECTION "Home@08dc", ROM0[$08dc]

Func_8dc::
	ldh a, [hff8e]
	bit 7, a
	ret nz
	ldh a, [hff92]
	and $04
	ret nz
	ldh a, [hff8d]
	bit 7, a
	ret nz
	set 7, a
	set 0, a
	ldh [hff8d], a
	ldh a, [hff92]
	and $b3
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
	ldh a, [hff8c]
	or $18
	ldh [hff8c], a
	ret
; 0x917

SECTION "Home@131a", ROM0[$131a]

Func_131a:
	push bc
	push hl
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	ld bc, wc600
	add hl, bc
	ld a, [wd057]
	ld [wd06b], a
	ld a, [wd058]
	ld [wd06c], a
	ld [wd07f], a
	call Func_1352
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
	ld [wd057], a
	ld a, [wd06c]
	ld [wd058], a
	pop hl
	pop bc
	ret

Func_1352:
	push bc
	push hl
	ld hl, v0BGMap0
	ld a, [wd057]
	srl a
	srl a
	srl a
	ld [wd06e], a
	ld a, [wd058]
	srl a
	srl a
	srl a
	jr z, .asm_1375
	ld bc, $20
.asm_1371
	add hl, bc
	dec a
	jr nz, .asm_1371
.asm_1375
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
; 0x1385

SECTION "Home@139b", ROM0[$139b]

Func_139b::
	ld hl, hff94
	bit 5, [hl]
	ret nz
	ld a, $01
	ld [rROMB0 + $100], a
	ld a, [wd05c]
	add $08
	ld [wd0a0 + $1], a
	ld a, [wd05d]
	add $08
	ld [wd0d0 + $1], a
	ld de, $157a
	ldh a, [hff92]
	bit 5, a
	jr nz, .asm_13c4
	ld hl, $157d
	jr .asm_13c7
.asm_13c4
	ld hl, $15b7
.asm_13c7
	ld c, $00
	ldh a, [hff8d]
	bit 4, a
	jr z, .asm_13d1
	ld c, $01
.asm_13d1
	bit 7, a
	jr z, .asm_13df
	ld c, $02
	ldh a, [hff92]
	bit 3, a
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
	bit 6, a
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
	bit 7, a
	jr z, .asm_1424
	ld c, $07
	ldh a, [hff92]
	and $03
	add c
	ld c, a
.asm_1424
	ldh a, [hff92]
	bit 4, a
	jr z, .asm_142c
	ld c, $0b
.asm_142c
	ldh a, [hff8e]
	bit 6, a
	jr z, .asm_146b
	ldh a, [hff92]
	bit 4, a
	jr nz, .asm_146b
	ldh a, [hff8e]
	and $fc
	ldh [hff8e], a
	bit 7, a
	jr nz, .asm_1465
	ldh a, [hff8d]
	bit 4, a
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
	bit 6, a
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
	bit 2, a
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
	res 7, a
	ldh [hff92], a
	ld c, $12
	ldh a, [hff8d]
	bit 4, a
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
	and $9c
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
	jr .asm_1569
.asm_1546
	res 6, a
	ldh [hff94], a
	pop af
	ldh a, [hff92]
	bit 5, a
	jr nz, .asm_1556
	ld de, $42bc
	jr .asm_1559
.asm_1556
	ld de, $428c
.asm_1559
	ld a, b
	ld h, a
	ld [wd082], a
	ld a, c
	ld l, a
	ld [wd083], a
	ld bc, $0
	call Func_21e6
.asm_1569
	ld a, [wROMBank]
	ld [rROMB0 + $100], a
	ret

SetFullHP::
	ld a, [wInitialMaxHP]
	ld [wMaxHP], a
	ld [wHP], a
	ret
; 0x157a

SECTION "Home@18ff", ROM0[$18ff]

AddSprite:
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
	jr nz, .asm_194d
	ld a, wVirtualOAMEnd - wVirtualOAM
	ld c, a
	ld [wd096], a
	xor a
	ld [wVirtualOAMSize], a
	jr .asm_1955
.asm_194d
	ld a, [wVirtualOAMSize]
	ld [wd096], a
	ld c, wVirtualOAMEnd - wVirtualOAM
.asm_1955
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

Func_1964::
	push bc
	push de
	xor a
	ld [wd057], a
	ld [wd058], a
	ld de, wBGQueue
	ld a, $0a
	ld b, a
.asm_1973
	ld a, [wd03f]
	cp $0a
	jr z, .asm_197c
	ld a, $0b
.asm_197c
	ld c, a
.asm_197d
	ld a, [hli]
	call Func_131a
	ld a, [wd057]
	add $10
	ld [wd057], a
	dec c
	jr nz, .asm_197d
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
	ld [wd057], a
	ld a, [wd058]
	add $10
	ld [wd058], a
	dec b
	jr nz, .asm_1973
	xor a
	ld [de], a
	ld [wd057], a
	ld [wd058], a
	xor a
	ldh [rSCX], a
	ldh [rSCY], a
	ldh a, [hff8c]
	or $60
	ldh [hff8c], a
	call Func_1ee3
	ld a, [wd06b]
	xor a
	ldh [hff8c], a
	pop de
	pop bc
	ret

Func_19c9::
	ldh a, [hff90]
	and $08
	ldh [hff90], a
	ld hl, $38b1
	ld a, [wStage]
	add a
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
	add a
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
	ld hl, $38b1
	ld a, [wStage]
	add a
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
	add a
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
	and $3f
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
	set 6, a
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
	cp $04
	jp nz, .asm_1bc2
	ld a, [wArea]
	and a
	jr nz, .asm_1b09
	ldh a, [hff90]
	set 4, a
	ldh [hff90], a
	ld a, [wd044]
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
	ld b, $01
.asm_1aae
	ld a, [wd045]
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
	ld a, [wd046]
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
	ld a, [wd047]
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
	ld [wd048], a
.asm_1b08
	xor a
.asm_1b09
	ld hl, wd043
	ld c, a
	ld b, $00
	add hl, bc
	ld a, $01
	ld [hl], a
	xor a
	ld [wd043], a
	ld [wd049], a
	ld [wd04b], a
	ld [wd04a], a
	ld [wd04c], a
	ld hl, $1bc5
	add hl, bc
	ld a, [hl]
	ld [wd06c], a
	cp $04
	jr z, .asm_1b69
	push af
	push hl
	push de
	ld a, [wd039]
	and a
	jr nz, .asm_1b50
	ld hl, $4000
	ld de, v0Tiles0
	ld c, $02
	call FarDecompress
	ld hl, $4855
	ld de, $9670
	ld c, $02
	call FarDecompress
	jr .asm_1b66
.asm_1b50
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
	ld hl, $2070
	ld a, [wd039]
	and a
	jr z, .asm_1b7c
	ld hl, $2089
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
	add c
	ld b, $00
	ld c, a
	ld hl, $20a2
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
	ld hl, $1bcf
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
; 0x1bc5

SECTION "Home@1c01", ROM0[$1c01]

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
CalculateBCPercentage:
	push af
	push hl
	ld hl, $0
	ld c, h ; $0
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
; 0x1c7d

SECTION "Home@1d01", ROM0[$1d01]

Func_1d01:
	push hl
	push de
	ld hl, wd02f
	ld a, [hli]
	ld e, a
	adc [hl]
	ld d, a
	inc hl
	adc [hl]
	ld hl, wd02f
	ld [hl], d
	inc hl
	ld [hli], a
	ld [hl], e
	pop de
	pop hl
	ret
; 0x1d16

SECTION "Home@1dc3", ROM0[$1dc3]

; waits a number of frames
; input:
; - a = number of frames
DoFrames::
	push hl
	ld hl, hff8c
.loop
	set VBLANK_6_F, [hl]
.asm_1dc9
	bit VBLANK_6_F, [hl]
	jr nz, .asm_1dc9
	push hl
	push af
	xor a
	ld [wVirtualOAMSize], a
	call Func_2e9c
	call ClearSprites
	pop af
	pop hl
	dec a
	jr nz, .loop
	pop hl
	ret
; 0x1de0

SECTION "Home@1dfb", ROM0[$1dfb]

Func_1dfb:
	ldh a, [hLCDC]
	ldh [rLCDC], a
	ld a, [wSCX]
	ldh [rSCX], a
	ld a, [wSCY]
	ldh [rSCY], a
	ld a, [wBGP]
	ldh [rBGP], a
	ret
; 0x1e0f

SECTION "Home@1e2e", ROM0[$1e2e]

Func_1e2e:
	ld hl, hff96
	bit 7, [hl]
	ret z
	res 7, [hl]
	ld hl, wd029
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli] ; wd02b
	ld [de], a
	inc e
	ld [de], a
	ld hl, $20
	add hl, de
	ld [hld], a
	ld [hl], a
	ret
; 0x1e48

SECTION "Home@1e67", ROM0[$1e67]

StopTimerAndSwitchOnLCD::
	ld a, TACF_STOP
	ldh [rTAC], a
	ldh a, [hLCDC]
	set LCDCB_ON, a
	ldh [hLCDC], a
	ldh [rLCDC], a
	ret

ResetTimer::
	ld hl, hLCDC
	res LCDCB_ON, [hl]
	ld hl, hff91
	set 3, [hl]
.asm_1e7e
	bit 3, [hl]
	jr nz, .asm_1e7e
	ld a, TACF_STOP
	ldh [rTAC], a
	; sets timer to interrupt at
	; 4k Hz / 68 ~ 60 Hz
	ld a, $100 - 68
	ldh [rTMA], a
	ld a, TACF_4KHZ | TACF_START
	ldh [rTAC], a
	ret
; 0x1e8f

SECTION "Home@1e96", ROM0[$1e96]

; input:
; - a = SFX_* constant
PlaySFX::
	push bc
	ld [wCurSFX], a
	ld c, a
	ld a, [wROMBank]
	push af
	ld a, $05
	bankswitch
	ld a, c
	call $4c9e ; Func_14c9e
	pop af
	bankswitch
	pop bc
	ret

; input:
; - a = MUSIC_* constant
PlayMusic::
	push bc
	ld c, a
	cp MUSIC_TITLESCREEN
	jr z, .play_music
	ld a, [wCurSFX]
	cp SFX_33
	jr z, .play_music
	ld a, [wCurMusic]
	cp c
	jr z, .skip ; already playing
.play_music
	ld a, [wROMBank]
	push af
	ld a, BANK(Func_14dc5)
	bankswitch
	ld a, c
	ld [wCurMusic], a
	call Func_14dc5
	pop af
	bankswitch
.skip
	pop bc
	ret

Func_1ee3:
	ldh a, [hff8c]
	bit VBLANK_6_F, a
	ret z
	bit VBLANK_5_F, a
	ret z
	ld bc, wBGQueue
.asm_1eee
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
	ld de, $1f
	add hl, de
	ld [hli], a
	ld a, [bc]
	inc bc
	ld [hl], a
	jr .asm_1eee

Func_1f08:
	ld a, [wd032]
	cp 5
	ret c ; < 5
	xor a
	ld [wd032], a

	ldh a, [hff90]
	bit 7, a
	ret z
	and $04
	ld e, a
	ldh a, [hff90]
	and $03
	ld c, a
	cp $03
	jp z, .asm_1fab
	inc a
	ld b, a
	ldh a, [hff90]
	and $fc
	or b
	ldh [hff90], a
	ldh a, [hff90] ; unnecessary
	bit 6, a
	jr nz, .asm_1f78
	ld d, $00
	ld b, d ; $00
	ld hl, $20b9
	add hl, de
	add hl, bc
	ld a, [wBGP]
	bit 2, e
	jr nz, .asm_1f48
	srl a
	srl a
	jr .asm_1f4c
.asm_1f48
	sla a
	sla a
.asm_1f4c
	ld b, a
	ld a, [hl]
	or b
	ld [wBGP], a
	ldh [rBGP], a
	ldh [rOBP1], a
	ld d, $00
	ld b, d
	ld hl, $20b1
	add hl, de
	add hl, bc
	ld a, [wOBP]
	bit 2, e
	jr nz, .asm_1f6b
	srl a
	srl a
	jr .asm_1f6f
.asm_1f6b
	sla a
	sla a
.asm_1f6f
	ld b, a
	ld a, [hl]
	or b
	ld [wOBP], a
	ldh [rOBP0], a
	ret
.asm_1f78
	ld a, [wBGP]
	bit 2, e
	jr nz, .asm_1f85
	sla a
	sla a
	jr .asm_1f8b
.asm_1f85
	srl a
	srl a
	or $c0
.asm_1f8b
	ld [wBGP], a
	ldh [rBGP], a
	ldh [rOBP1], a
	ld a, [wOBP]
	bit 2, e
	jr nz, .asm_1f9f
	sla a
	sla a
	jr .asm_1fa5
.asm_1f9f
	srl a
	srl a
	or $c0
.asm_1fa5
	ld [wOBP], a
	ldh [rOBP0], a
	ret

.asm_1fab
	ldh a, [hff90]
	and $7c
	ldh [hff90], a
	ret

UpdateHUD:
	ld hl, hff8c
	bit VBLANK_5_F, [hl]
	ret nz
	ld hl, hff90
	bit 6, [hl]
	ret nz
	ldh a, [hHUDFlags]
	bit 0, a
	jr z, .asm_2000
	ld hl, $9c06
	ld c, $0c
.asm_1fc9
	ld a, $7f
	ld [hli], a
	dec c
	jr nz, .asm_1fc9
	ldh a, [hHUDFlags]
	bit 7, a
	jr nz, .asm_1fea
	ld hl, wd08e
	ld bc, $9c06
	ld d, $5
.asm_1fdd
	ld a, [hli]
	ld [bc], a
	inc bc
	dec d
	jr nz, .asm_1fdd
	ld a, $72
	ld [$9c0b], a
	jr .asm_1ffa
.asm_1fea
	ld hl, $9c06
	ld a, [wd093]
	and a
	jr z, .asm_1ffa
	ld c, a
	ld a, $69
.asm_1ff6
	ld [hli], a
	dec c
	jr nz, .asm_1ff6
.asm_1ffa
	ldh a, [hHUDFlags]
	res 0, a
	ldh [hHUDFlags], a
.asm_2000
	ldh a, [hHUDFlags]
	bit 1, a
	jr z, .asm_202d
	res 1, a
	ldh [hHUDFlags], a
	bit 7, a
	jr nz, .asm_201e
	ld a, $7f
	ld [$9c02], a
	ld a, $6c
	ld [$9c03], a
	inc a
	ld [$9c04], a
	jr .asm_202d
.asm_201e
	ld a, $7f
	ld [$9c02], a
	ld a, $6a
	ld [$9c03], a
	ld a, $7f
	ld [$9c04], a
.asm_202d
	ldh a, [hHUDFlags]
	bit 2, a
	jr nz, .lives
	ld a, [wHP]
	ld c, a
	ld b, a
	ld hl, $9c26
	and a
	jr z, .asm_2044
	ld a, $68
.asm_2040
	ld [hli], a
	dec c
	jr nz, .asm_2040
.asm_2044
	ld a, [wMaxHP]
	sub b
	ld b, a
	jr z, .asm_2051
	ld a, $6e
.asm_204d
	ld [hli], a
	dec b
	jr nz, .asm_204d
.asm_2051
	ld a, $7f
	ld [hli], a
.lives
	ldh a, [hHUDFlags]
	bit 4, a
	ret z
	res 4, a
	ldh [hHUDFlags], a
	ld a, [wLives]
	dec a
	call GetDigits
	add $72
	ld [$9c31], a ; ones digit
	ld a, b
	add $72
	ld [$9c30], a ; tens digit
	ret
; 0x2070

SECTION "Home@20a2", ROM0[$20a2]

Data_20a2::
	db $03, $46, $e0 ; GREEN_GREENS
	db $03, $4a, $c3 ; CASTLE_LOLOLO
	db $03, $48, $d9 ; FLOAT_ISLANDS
	db $03, $4c, $ff ; BUBBLY_CLOUDS
	db $06, $77, $7c ; MT_DEDEDE
; 0x20b1

SECTION "Home@20c1", ROM0[$20c1]

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
	call wd099
	jr .loop_literal_copy

.repeat_byte
	ld a, [hli]
.loop_repeat_byte
	dec c
	jr nz, .continue_repeat_byte
	dec b
	jp z, .loop_compressed_data
.continue_repeat_byte
	call wd099
	jr .loop_repeat_byte

.loop_repeat_bytes
	dec c
	jr nz, .continue_repeat_bytes
	dec b
	jp z, .done_repeat_bytes
.continue_repeat_bytes
	ld a, [hli]
	call wd099
	ld a, [hld]
	call wd099
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
	call wd099
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
; 0x21a5

SECTION "Home@21bb", ROM0[$21bb]

; writes the following routine to wd099:
;	nop
;	nop
;	ld [de], a
;	nop
;	nop
;	inc de
;	ret
Func_21bb:
	ld hl, wd099
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

Func_21ce:
	ld hl, wd160
	add hl, bc
	ld [hl], $00
	ret
; 0x21d5

SECTION "Home@21e6", ROM0[$21e6]

Func_21e6:
	push hl
	ld hl, wd21a
	add hl, bc
	add hl, bc
	ld a, e
	ld [hli], a
	ld [hl], d
	pop de
	ld hl, wd2ba
	add hl, bc
	add hl, bc
	ld a, e
	ld [hli], a
	ld [hl], d
	jp Func_2419

; input:
; - a = ?
Func_21fb::
	ld [wd3f2], a
	ld a, $ff
	ld [wd096], a

	call ClearSprites

	ld a, [wROMBank]
	push af
	ld a, [wd039]
	and a
	ld a, $07
	jr z, .asm_2214
	ld a, $0f
.asm_2214
	ld [wd3f0], a
	bankswitch
	ld d, $00
	ld a, [wd3f2]
	and a
	jr z, .asm_222b
	dec a
assert Data_1c0ce == Data_3c0ce
	ld hl, Data_1c0ce ; aka Data_3c0ce
	jr .asm_2249
.asm_222b
	ld hl, hff94
	bit 1, [hl]
	jr z, .asm_223a
	ld hl, $413a
	ld a, [wStage]
	jr .asm_2249
.asm_223a
	ld hl, $4000
	ld a, [wStage]
	ld e, a
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wArea]
.asm_2249
	ld e, a
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	ld [wd3e5 + 0], a
	ld a, [hli]
	ld [wd3e5 + 1], a
	ld a, [hli]
	ld [wd3e7 + 0], a
	ld a, [hl]
	ld [wd3e7 + 1], a
	pop af
	bankswitch

	call Clearwd160

	xor a
	ld [wd3e9], a
	ld [wd3ea], a
	ld [wd3eb], a
	ld [wd3ec], a
	ld [wd3ed], a
	ld [wd3ee], a
	ld [wd3be], a
	ld [wd3c0], a
	ld [wd3f7], a
	ld [wd3c2], a
	ld [wd3f5], a
	ld [wd3f8], a
	inc a ; a = $1
	ld hl, wd037
	ld [hli], a
	ld [hl], a ; wd038

	ld a, [hff91]
	and $fc
	ld [hff91], a

	ld a, [wd03f]
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld a, l
	ld [wd3e3], a
	ld a, h
	ld [wd3e4], a
	ld a, [wd3f2]
	and a
	jr nz, .asm_22c5
	ld a, [hff94]
	and $02
	jr nz, .asm_22c5
	ld hl, $414e
	lb de, $80, $80
	call Func_2338
	jr c, .asm_22dd
.asm_22c5
	call Func_3199
	ld hl, wd3ed
	ld a, [wd051]
	cp [hl]
	jr nz, .asm_22c5
.asm_22d1
	call Func_3199
	ld hl, wd3ee
	ld a, [wd052]
	cp [hl]
	jr nz, .asm_22d1
.asm_22dd
	xor a
	ld [wd3f6], a
	ld [wd3cc], a
	ld hl, hff95
	bit 0, [hl]
	ret nz
	ld hl, hff94
	bit 1, [hl]
	ret nz
	ld b, $00
	ld hl, wd3df
	ld a, [hli]
	or [hl]
	jr z, .asm_2305
	ld hl, hff95
	bit 6, [hl]
	jr z, .asm_2303
	call Func_3768
.asm_2303
	set 4, b
.asm_2305
	ld hl, wd3e1
	ld a, [hli]
	or [hl]
	jr z, .asm_230e
	set 4, b
.asm_230e
	ld a, b
	ld [wd1a0], a
	xor a
	ld [wd190], a
	ret
; 0x2317

SECTION "Home@231e", ROM0[$231e]

; clears wd160
Clearwd160::
	ld b, $10
	ld hl, wd160
	xor a
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

; clears wd3c4
Clearwd3c4::
	push hl
	push bc
	xor a
	ld b, $08
	ld hl, wd3c4
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	pop bc
	pop hl
	ret

; input:
; - d = ?
; - e = ?
; - hl = ?
Func_2338:
	ld c, $00
	ld b, $0d
	jr Func_234e

; input:
; - d = ?
; - e = ?
; - hl = ?
Func_233e:
	ld c, $01
	ld b, $0d
	jr Func_234e

	ld c, $0d
	ld b, $0f
	jr Func_234e

	ld c, $0f
	ld b, $10
;	fallthrough

Func_234e:
	ld a, d
	swap a
	ld [wd3d6], a
	ld a, e
	swap a
	ld [wd3d7], a
	ld d, h
	ld e, l
	ld a, LOW(wd160)
	add c
	ld l, a
	ld h, HIGH(wd160)
	jr nc, .loop
	inc h
.loop
	ld a, [hli]
	and a
	jr z, .zero
	inc c
	ld a, c
	cp b
	jr nz, .loop
	scf
	ret
.zero
	push de
	ld b, $00
	ld a, $01
	ld hl, wd160
	add hl, bc
	ld [hl], a

	xor a
	ld hl, wd0a0
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

	ld hl, wd0d0
	add hl, bc
	add hl, bc
	add hl, bc
	xor a
	ld [hli], a
	ld a, [wd3d7]
	and $0f
	ld d, a
	ld a, [wd3d7]
	and $f0
	add $18
	ld [hli], a
	ld a, d
	adc $00
	ld [hl], a
	pop de

	ld a, [wROMBank]
	push af
	ld a, [wd3f0]
	bankswitch
	ld a, [de]
	inc de
	ld hl, wd2ba
	add hl, bc
	add hl, bc
	ld [hli], a
	ld a, [de]
	inc de
	ld [hl], a

	ld a, [de]
	inc de
	ld hl, wd21a
	add hl, bc
	add hl, bc
	ld [hli], a
	ld a, [de]
	inc de
	ld [hl], a

	ld hl, wd1e0
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
	ld hl, wd190
	add hl, bc
	ld [hl], a
	pop hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld a, [hl]
	ld hl, wd39a
	add hl, bc
	ld [hl], a
	xor a
	ld hl, wd1a0
	add hl, bc
	ld [hl], a
	ld hl, wd1b0
	add hl, bc
	ld [hl], a
	ld de, $58b8
	ld hl, wSpriteOAMPtrs
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
;	fallthrough
Func_2419:
	ld hl, wd170
	add hl, bc
	ld [hl], $01
	ld hl, wd180
	add hl, bc
	ld [hl], $01

	xor a
	ld hl, wd25a
	call .Func_2441
	ld hl, wd2fa
	call .Func_2441
	ld hl, wd23a
	call .Func_2441
	ld hl, wd2da
	call .Func_2441
	ld hl, wd35a
;	fallthrough
.Func_2441:
	add hl, bc
	add hl, bc
	ld [hli], a
	ld [hl], a
	xor a
	ret

Func_2447:
	cp $ef
	jp nc, .asm_253f
	cp $e0
	jr nz, .asm_245b
	ld hl, wd160
	add hl, bc
	xor a
	ld [hl], a
	dec a
	ld [wd3d8], a
	ret
.asm_245b
	cp $e1
	jr nz, .asm_2462
	jp Func_2784
.asm_2462
	cp $e2
	jr nz, .asm_2479
	ld a, [hl]
	ld d, $00
	ld e, a
	rlca
	jr nc, .asm_246f
	ld d, $ff
.asm_246f
	add hl, de
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_2479
	cp $e8
	jr nz, .asm_248e
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ld h, d
	ld l, e
	jp .asm_24a4
.asm_248e
	cp $e9
	jr nz, .asm_24bf
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	push af
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ld h, d
	ld l, e
	pop af
	ld e, a
.asm_24a4
	ld a, [wROMBank]
	ld [wd3ef], a
	push af
	ld a, $01
	bankswitch
	ld a, e
	call JumpHL
	pop af
	bankswitch
	ret
.asm_24bf
	cp $ea
	jr nz, .asm_24dc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
	cp [hl]
	jr nz, .asm_24cf
	inc hl
	jp Func_2784
.asm_24cf
	ld de, $3
	add hl, de
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_24dc
	cp $eb
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
	jp Func_2784
.asm_24ed
	cp $ed
	jr nz, .asm_2505
	ld d, h
	ld e, l
	ld hl, wd160
	add hl, bc
	ld a, [de]
	inc a
	ld [hl], a
	inc de
	ld a, [de]
	ld a, e
	ld [wd3d9 + 0], a
	ld a, d
	ld [wd3d9 + 1], a
	ret
.asm_2505
	cp $ee
	jr nz, .asm_252a
	ld d, h
	ld e, l
	ld hl, wd35a
	add hl, bc
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	inc de
	ld hl, wd37a
	add hl, bc
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	inc de
	ld a, e
	ld [wd3d9 + 0], a
	ld a, d
	ld [wd3d9 + 1], a
	ret
.asm_252a
	cp $ef
	jr nz, .asm_253f
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	xor a
	ld hl, wd35a
	add hl, bc
	add hl, bc
	ld [hli], a
	ld [hl], a
	ret
.asm_253f
	cp $f0
	jr nz, .asm_2568
	ld d, h
	ld e, l
	ld hl, wd0a0
	add hl, bc
	add hl, bc
	add hl, bc
	xor a
	ld [hli], a
	ld a, [de]
	ld [hli], a
	ld [hl], $00
	inc de
	ld hl, wd0d0
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
	ld [wd3d9 + 0], a
	ld a, d
	ld [wd3d9 + 1], a
	ret
.asm_2568
	cp $f1
	jr nz, .asm_25a3
	push bc
	ld d, h
	ld e, l
	ld hl, wd0a0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld b, $00
	ld a, [de]
	bit 7, a
	jr z, .asm_257d
	dec b
.asm_257d
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a
	inc de
	pop bc
	push bc
	ld hl, wd0d0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld b, $00
	ld a, [de]
	bit 7, a
	jr z, .asm_2593
	dec b
.asm_2593
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a
	inc de
	ld a, e
	ld [wd3d9 + 0], a
	ld a, d
	ld [wd3d9 + 1], a
	pop bc
	ret
.asm_25a3
	cp $f2
	jr nz, .asm_260c
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ld hl, wd190
	add hl, bc
	set 0, [hl]
	ld a, [wSCX]
	and $0f
	ld e, a
	ld a, [wd051]
	dec a
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	or e
	ld l, a
	push hl
	ld hl, wd0a0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld e, [hl]
	ld d, $00
	pop hl
	add hl, de
	ld d, h
	ld e, l
	ld hl, wd0a0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
	ld a, [wSCY]
	and $0f
	ld e, a
	ld a, [wd052]
	dec a
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	or e
	ld l, a
	push hl
	ld hl, wd0d0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld e, [hl]
	ld d, $00
	pop hl
	add hl, de
	ld d, h
	ld e, l
	ld hl, wd0d0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
	ret
.asm_260c
	cp $f3
	jr nz, .asm_2637
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ld hl, wd190
	add hl, bc
	res 0, [hl]
	ld hl, wd140
	add hl, bc
	ld a, [hl]
	ld hl, wd0a0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], a
	ld hl, wd150
	add hl, bc
	ld a, [hl]
	ld hl, wd0d0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld [hl], a
	ret
.asm_2637
	cp $f4
	jr nz, .asm_264a
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld [de], a
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_264a
	cp $f5
	jr nz, .asm_265e
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ld h, d
	ld l, e
	inc [hl]
	ret
.asm_265e
	cp $f6
	jr nz, .asm_2672
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ld h, d
	ld l, e
	dec [hl]
	ret
.asm_2672
	cp $f7
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
	ld [wd3d9 + 0], a
	ld a, d
	ld [wd3d9 + 1], a
	ret
.asm_268d
	inc hl
	inc hl
	inc hl
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_2699
	cp $f8
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
	cp $f9
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
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_26bf
	cp $fa
	jr nz, .asm_26d8
	call Func_1d01
	cp [hl]
	inc hl
	jr nc, .asm_26cd
	jp Func_2784
.asm_26cd
	inc hl
	inc hl
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_26d8
	cp $fb
	jr nz, .asm_26e4
	call Func_1d01
	and [hl]
	inc hl
	jp .asm_24e5
.asm_26e4
	cp $fc
	jr nz, .asm_2707
	push hl
	ld a, [wd3f0]
	push af
	ld a, [wROMBank]
	ld [wd3f0], a
	call .Func_2708
	pop af
	ld [wd3f0], a
	pop hl
	ld de, $6
	add hl, de
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
.asm_2707
	ret

.Func_2708:
	push bc
	ld de, $0
	call Func_233e
	jr nc, .asm_2713
	pop bc
	ret
.asm_2713
	ld d, b
	ld e, c
	pop bc
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
	ld hl, wd190
	add hl, de
	bit 0, [hl]
	jr nz, .asm_2755
	ld hl, wd140
	add hl, bc
	ld a, [hl]
	ld hl, wd140
	add hl, de
	ld [hl], a
	ld hl, wd0a0 + $1
	add hl, de
	add hl, de
	add hl, de
	ld [hli], a
	ld [hl], $00
	ld hl, wd150
	add hl, bc
	ld a, [hl]
	ld hl, wd150
	add hl, de
	ld [hl], a
	ld hl, wd0d0 + $1
	add hl, de
	add hl, de
	add hl, de
	ld [hli], a
	ld [hl], $00
	ret
.asm_2755
	ld hl, wd0a0
	call .Func_2771
	ld hl, wd0d0
	call .Func_2771
	ld hl, wd140
	call .Func_276a
	ld hl, wd150
.Func_276a:
	push hl
	add hl, bc
	ld a, [hl]
	pop hl
	add hl, de
	ld [hl], a
	ret

.Func_2771:
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

Func_2784:
	ld a, [hli]
	ld [wd3d9 + 0], a
	ld a, [hl]
	ld [wd3d9 + 1], a
	ret

Func_278d:
	inc hl
	cp $fd
	jr nz, .asm_27a4
	call Func_1d01
	cp [hl]
	inc hl
	jr c, .asm_27ca
	inc hl
	inc hl
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_27a4
	cp $fe
	jr nz, .asm_27c6
	ld d, [hl]
	push de
	call Func_1d01
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
	ld a, $04
	add d
	add d
	ld d, a
	ld a, [wd3d9 + 0]
	add d
	jr .asm_27d5
.asm_27c6
	cp $e3
	jr nz, .asm_27e0
.asm_27ca
	push hl
	ld hl, wd23a
	add hl, bc
	add hl, bc
	ld a, [wd3d9 + 0]
	add $03
.asm_27d5
	ld [hli], a
	ld a, [wd3d9 + 1]
	adc $00
	ld [hl], a
	pop hl
	jp Func_2784
.asm_27e0
	cp $e4
	jr nz, .asm_27ec
	ld hl, wd23a
	add hl, bc
	add hl, bc
	jp Func_2784
.asm_27ec
	cp $e5
	jr nz, .asm_2813
	ld d, h
	ld e, l
	ld hl, wd2ba
	add hl, bc
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	inc de
	ld a, [de]
	ld [wd3d9 + 0], a
	inc de
	ld a, [de]
	ld [wd3d9 + 1], a
	ld hl, wd180
	add hl, bc
	ld [hl], $01
	ld hl, wd170
	add hl, bc
	ld [hl], $01
	ret
.asm_2813
	cp $e6
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
	ld [wd3d9 + 0], a
	ld a, d
	ld [hl], a
	ld [wd3d9 + 1], a
	ret
.asm_283e
	cp $e7
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
	call Func_2784
	pop hl
	ret
.asm_2861
	pop hl
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_286b
	call Func_2447
	ret

Func_286f:
	inc hl
	cp $fd
	jr nz, .asm_2886
	call Func_1d01
	cp [hl]
	inc hl
	jr c, .asm_28ac
	inc hl
	inc hl
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_2886
	cp $fe
	jr nz, .asm_28a8
	ld d, [hl]
	push de
	call Func_1d01
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
	ld a, [wd3d9 + 0]
	add d
	jr .asm_28b7
.asm_28a8
	cp $e3
	jr nz, .asm_28c2
.asm_28ac
	push hl
	ld hl, wd2da
	add hl, bc
	add hl, bc
	ld a, [wd3d9 + 0]
	add $03
.asm_28b7
	ld [hli], a
	ld a, [wd3d9 + 1]
	adc $00
	ld [hl], a
	pop hl
	jp Func_2784
.asm_28c2
	cp $e4
	jr nz, .asm_28ce
	ld hl, wd2da
	add hl, bc
	add hl, bc
	jp Func_2784
.asm_28ce
	cp $e5
	jr nz, .asm_28f3
	ld a, [hli]
	ld [wd3d9 + 0], a
	ld a, [hli]
	ld [wd3d9 + 1], a
	ld d, h
	ld e, l
	ld hl, wd21a
	add hl, bc
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	ld hl, wd180
	add hl, bc
	ld [hl], $01
	ld hl, wd170
	add hl, bc
	ld [hl], $01
	ret
.asm_28f3
	cp $e6
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
	ld [wd3d9 + 0], a
	ld a, d
	ld [hl], a
	ld [wd3d9 + 1], a
	ret
.asm_291e
	cp $e7
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
	call Func_2784
	pop hl
	ret
.asm_2941
	pop hl
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ret
.asm_294b
	call Func_2447
	ret

; input:
; - a = ?
; output:
; - de = ?
Func_294f:
	cp $70
	jr c, .divide
	cp $90
	jr nc, .divide
	; $70 <= a < $90
	sub $70
	ld hl, $2977
	add a ; *2
	add l
	ld l, a
	ld a, h
	adc $00
	ld h, a
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ret

.divide
	; a < $70 && a >= $90
	ld d, a
	ld e, $00
	sra d
	rr e
	sra d
	rr e
	sra d
	rr e ; /8
	ret
; 0x2977

SECTION "Home@29b7", ROM0[$29b7]

Func_29b7:
	ld a, c
	cp $0d
	jr nc, .asm_29c3
	ld hl, wd1b0
	add hl, bc
	bit 1, [hl]
	ret nz
.asm_29c3
	ld a, c
	and a
	jr nz, .asm_29ce
	ld hl, hff91
	bit 4, [hl]
	jr nz, .asm_29d4
.asm_29ce
	ld hl, hff93
	bit 2, [hl]
	ret nz
.asm_29d4
	call Func_2ce5
	ret c
	ld a, [wd039]
	and a
	ld a, $04
	jr z, .asm_29e2
	ld a, $0c
.asm_29e2
	bankswitch
	ld hl, wd170
	add hl, bc
	ld a, [hl]
	and a
	jp z, .asm_2a80
	dec a
	jr z, .asm_29f8
	ld [hl], a
	jp .asm_2a80
.asm_29f8
	ld hl, wd21a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wd3d9 + 0], a
	ld a, [hl]
	ld [wd3d9 + 1], a
.asm_2a05
	ld a, [wd3d9 + 0]
	ld l, a
	ld a, [wd3d9 + 1]
	ld h, a
	ld a, [hl]
	ld [wd3d8], a
	cp $e0
	jr c, .asm_2a3e
	cp $ec
	jr nz, .asm_2a2b
	inc hl
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ld hl, wd170
	add hl, bc
	ld [hl], d
	jr .asm_2a73
.asm_2a2b
	call Func_278d
	ld a, [wd3d8]
	cp $ff
	jr nz, .asm_2a05
	ld a, $01
	bankswitch
	ret
.asm_2a3e
	ld a, [wd3d8]
	ld hl, wd170
	add hl, bc
	ld [hl], a
	ld a, [wd3d9 + 0]
	ld l, a
	ld a, [wd3d9 + 1]
	ld h, a
	inc hl
	ld a, [hli]
	push hl
	call Func_294f
	ld hl, wd100
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
	pop hl
	ld a, [hli]
	push hl
	call Func_294f
	ld hl, wd120
	add hl, bc
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
	pop hl
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
.asm_2a73
	ld a, [wd3d9 + 0]
	ld hl, wd21a
	add hl, bc
	add hl, bc
	ld [hli], a
	ld a, [wd3d9 + 1]
	ld [hl], a
.asm_2a80
	ld a, [wd039]
	and a
	ld a, $08
	jr z, .asm_2a8a
	ld a, $09
.asm_2a8a
	bankswitch
	ld hl, wd180
	add hl, bc
	ld a, [hl]
	and a
	ret z
	dec a
	jr z, .asm_2a9c
	ld [hl], a
	ret
.asm_2a9c
	ld hl, wd2ba
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wd3d9 + 0], a
	ld a, [hl]
	ld [wd3d9 + 1], a
.asm_2aa9
	ld a, [wd3d9 + 0]
	ld l, a
	ld a, [wd3d9 + 1]
	ld h, a
	ld a, [hl]
	ld [wd3d8], a
	cp $e0
	jr c, .asm_2ada
	cp $ec
	jr nz, .asm_2acf
	inc hl
	ld a, [hli]
	ld d, a
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
	ld hl, wd180
	add hl, bc
	ld [hl], d
	jr .asm_2b18
.asm_2acf
	call Func_286f
	ld a, [wd3d8]
	cp $ff
	ret z
	jr .asm_2aa9
.asm_2ada
	ld a, [wd3d8]
	ld hl, wd180
	add hl, bc
	ld [hl], a
	ld a, [wd3d9 + 0]
	ld l, a
	ld a, [wd3d9 + 1]
	ld h, a
	inc hl
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
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
	ld a, [wd3d9 + 0]
	ld l, a
	ld a, [wd3d9 + 1]
	ld h, a
	inc hl
	inc hl
	ld a, l
	ld [wd3d9 + 0], a
	ld a, h
	ld [wd3d9 + 1], a
.asm_2b18
	ld a, [wd3d9 + 0]
	ld hl, wd2ba
	add hl, bc
	add hl, bc
	ld [hli], a
	ld a, [wd3d9 + 1]
	ld [hl], a
	ret

Func_2b26:
	ld hl, hff93
	bit 2, [hl]
	jp nz, .asm_2c5b
	ld hl, wd1a0
	add hl, bc
	res 7, [hl]
	ld hl, wd1b0
	add hl, bc
	bit 1, [hl]
	jp nz, .asm_2b8b
	call Func_2ce5
	jp c, .asm_2b8b
	ld de, wd0a0
	ld hl, wd100
	call Func_2d0d
	ld hl, hff91
	bit 7, [hl]
	jr z, .asm_2b82
	ld hl, wd190
	add hl, bc
	bit 0, [hl]
	jr z, .asm_2b82
	ld a, [wd3e3]
	ld e, a
	ld a, [wd3e4]
	ld d, a
	ld hl, wd0a0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	sub e
	ld a, [hl]
	sbc d
	jr c, .asm_2b82
	bit 7, [hl]
	jr nz, .asm_2b7b
	dec hl
	ld a, [hl]
	sub e
	ld [hli], a
	ld a, [hl]
	sbc d
	jr .asm_2b81
.asm_2b7b
	dec hl
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
.asm_2b81
	ld [hl], a
.asm_2b82
	ld de, wd0d0
	ld hl, wd120
	call Func_2d0d
.asm_2b8b
	ld hl, wd3cc
	bit 0, [hl]
	jp nz, .asm_2c18
	ld hl, wd190
	add hl, bc
	bit 0, [hl]
	jr z, .asm_2bf9
	ld hl, hff91
	bit 7, [hl]
	jr nz, .asm_2bca
	ld hl, wd0a0 + $1
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
	ld a, [wd051]
	add $0e
	cp e
	jr c, .asm_2bc7
	sub $14
	jr nc, .asm_2bc2
	xor a
.asm_2bc2
	cp e
	jr z, .asm_2bca
	jr c, .asm_2bca
.asm_2bc7
	jp Func_21ce
.asm_2bca
	ld hl, wd190
	add hl, bc
	bit 0, [hl]
	jr z, .asm_2c18
	ld hl, wd0d0 + $1
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
	ld a, [wd052]
	add $0c
	cp e
	jr c, .asm_2bc7
	sub $12
	jr nc, .asm_2bf2
	xor a
.asm_2bf2
	cp e
	jr z, .asm_2c18
	jr nc, .asm_2bc7
	jr .asm_2c18
.asm_2bf9
	ld hl, wd0a0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hl]
	cp $a8
	jr nc, .asm_2bc7
	ld d, $90
	ld a, [wd3f2]
	and a
	jr z, .asm_2c0e
	ld d, $aa
.asm_2c0e
	ld hl, wd0d0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hl]
	cp d
	jr nc, .asm_2bc7
.asm_2c18
	ld hl, wd190
	add hl, bc
	ld a, [hl]
	bit 5, a
	jr z, .asm_2c26
	push af
	call Func_2e04
	pop af
.asm_2c26
	bit 3, a
	jr z, .asm_2c5b
	call Func_2e20
	and a
	jr z, .asm_2c5b
	cp $06
	jr nz, .asm_2c4d
	ld hl, wd120
	add hl, bc
	add hl, bc
	ld [hl], $66
	inc hl
	xor a
	ld [hl], a
	ld hl, wd100
	add hl, bc
	add hl, bc
	ld [hli], a
	ld [hl], a
	ld hl, wd190
	add hl, bc
	set 7, [hl]
	jr .asm_2c5b
.asm_2c4d
	ld hl, wd120
	add hl, bc
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, wd1b0
	add hl, bc
	set 6, [hl]
.asm_2c5b
	ld d, b
	ld e, c
	ld hl, wd190
	add hl, de
	bit 0, [hl]
	jr z, .asm_2c6b
	call Func_2d2d
	jr nc, .asm_2c6e
	ret
.asm_2c6b
	call Func_2deb
.asm_2c6e
	push bc
	ld b, $b0
	ld a, [wd3f2]
	and a
	jr nz, .asm_2c96
	ld b, $90
	ld hl, hff94
	bit 1, [hl]
	jr z, .asm_2c96
	ld a, [wStage]
	cp $04
	jr z, .asm_2c94
	ld hl, wd140
	add hl, de
	ld a, [hl]
	cp $18
	jr c, .asm_2ce3
	cp $98
	jr nc, .asm_2ce3
.asm_2c94
	ld b, $9e
.asm_2c96
	ld hl, wd150
	add hl, de
	ld a, [hl]
	cp b
	jr nc, .asm_2ce3
	pop bc
	ld hl, wd1a0
	add hl, de
	set 7, [hl]
	ld hl, wd190
	add hl, de
	ld a, [hl]
	and OAMF_PAL1 | OAMF_PRI
	ld [wOAMFlagsOverride], a
	ld hl, hff94
	bit 5, [hl]
	jr nz, .add_sprite
	ld hl, wd1a0
	add hl, de
	ld a, [wd036]
	bit 0, a
	jr nz, .asm_2cc4
	bit 5, [hl]
	ret nz
.asm_2cc4
	bit 1, a
	jr nz, .add_sprite
	bit 4, [hl]
	jr z, .add_sprite
	ld a, [wOAMFlagsOverride]
	xor $10 ; flip pal number
	ld [wOAMFlagsOverride], a
.add_sprite
	ld a, [wOAMFlagsOverride]
	ld hl, wSpriteOAMPtrs
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld h, [hl]
	ld l, e
	jp AddSprite
.asm_2ce3
	pop bc
	ret

Func_2ce5:
	ld a, c
	and a
	jr z, .no_carry
	ld hl, wd3bf
	bit 3, [hl]
	jr z, .no_carry
	ld hl, wd190
	add hl, bc
	bit 2, [hl]
	jr nz, .no_carry
	ld hl, wd1e0
	add hl, bc
	add hl, bc
	ld a, [hli]
	add $05
	ld h, [hl]
	jr nc, .asm_2d04
	inc h
.asm_2d04
	ld l, a
	bit 0, [hl]
	jr nz, .no_carry
	scf
	ret
.no_carry
	xor a
	ret

Func_2d0d:
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
	jr z, .asm_2d28
	dec a
.asm_2d28
	ld h, a
	ld a, [de]
	adc h
	ld [de], a
	ret

Func_2d2d:
	xor a
	ld [wd06c], a
	push de
	ld a, [wSCX]
	and $0f
	ld d, a
	ld a, [wd051]
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
	ld hl, wd0a0 + $1
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	sub b
	ld b, a
	push af
	push hl
	ld hl, wd140
	add hl, de
	ld [hl], b
	pop hl
	pop af
	ld a, [hld]
	sbc c
	jr nz, .asm_2d69
	ld a, b
	cp $b0
	jr c, .asm_2da5
.asm_2d69
	ld a, [hff91]
	bit 7, a
	jr z, .asm_2da2
	ld a, [wd3db]
	ld b, a
	ld a, [wd3dc]
	ld c, a
	push de
	ld d, h
	ld e, l
	ld a, [wd03f]
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
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
	ld hl, wd140
	add hl, de
	ld [hl], a
	pop hl
	pop af
	ld a, h
	sbc c
	jr nz, .asm_2da2
	ld a, b
	cp $b0
	jr c, .asm_2da5
.asm_2da2
	call .Func_2de3
.asm_2da5
	push bc
	push de
	ld a, [wSCY]
	and $0f
	ld d, a
	ld a, [wd052]
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
	ld hl, wd0d0 + $1
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	sub b
	ld b, a
	push af
	push hl
	ld hl, wd150
	add hl, de
	ld [hl], b
	pop hl
	pop af
	ld a, [hl]
	sbc c
	call nz, .Func_2de3
	ld a, b
	pop bc
	ld c, a
	cp $90
	call nc, .Func_2de3
	ld a, [wd06c]
	and a
	ret z
	scf
	ret

.Func_2de3:
	push af
	ld a, $01
	ld [wd06c], a
	pop af
	ret

Func_2deb:
	ld hl, wd0a0 + $1
	add hl, de
	add hl, de
	add hl, de
	ld b, [hl]
	ld hl, wd140
	add hl, de
	ld [hl], b
	ld hl, wd0d0 + $1
	add hl, de
	add hl, de
	add hl, de
	ld c, [hl]
	ld hl, wd150
	add hl, de
	ld [hl], c
	ret

Func_2e04:
	ld hl, wd120
	add hl, bc
	add hl, bc
	ld a, [hl]
	add $24
	ld [hli], a
	jr nc, .asm_2e10
	inc [hl]
.asm_2e10
	dec hl
	ld a, [hli]
	cp $80
	ld a, [hl]
	cp $02
	jr c, .asm_2e1f
	ld a, $02
	ld [hld], a
	ld a, $80
	ld [hl], a
.asm_2e1f
	ret

Func_2e20:
	ld hl, wd1a0
	add hl, bc
	bit 0, [hl]
	jr z, .asm_2e2a
	xor a
	ret
.asm_2e2a
	push bc
	ld hl, wd0a0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, -$8
	add hl, de
	bit 7, h
	jr z, .asm_2e45
	ld a, [wd3e3]
	ld e, a
	ld a, [wd3e4]
	ld d, a
	add hl, de
.asm_2e45
	call MultiplyHLBy16
	push af
	ld a, [wd03f]
	ld d, a
	pop af
	cp d
	jr c, .asm_2e52
	sub d
.asm_2e52
	ld d, a
	push de
	ld hl, wd0d0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, -$10
	ld a, c
	cp $0d
	jr nc, .asm_2e71
	ld de, -$8
	ld a, [wd3c0]
	and a
	jr z, .asm_2e71
	ld de, $0
.asm_2e71
	add hl, de
	call MultiplyHLBy16
	pop de
	ld e, a
	call .Func_2e7f
	call .Func_2e90
	pop bc
	ret

.Func_2e7f:
	ld a, [wd03f]
	ld b, a
	call CalculateBCPercentage
	ld hl, wc100
	add hl, bc
	ld e, d
	ld d, $00
	add hl, de
	ld e, [hl]
	ret

.Func_2e90:
	ld hl, wca00
	add hl, de
	ld a, [hl]
	ret

MultiplyHLBy16:
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld a, h
	ret

Func_2e9c::
	ld a, [wROMBank]
	push af
	ld a, $01
	bankswitch
	call Func_2fdf
	ld hl, wd3bf
	bit 0, [hl]
	call nz, $4bb4
	ld b, $10
	ld c, $00
.asm_2eb7
	push bc
	ld b, $00
	ld hl, wd160
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_2ecf
	cp $ff
	jr z, .asm_2ecf
	dec a
	jr z, .asm_2ecc
	ld [hl], a
	jr .asm_2ecf
.asm_2ecc
	call Func_29b7
.asm_2ecf
	pop bc
	inc c
	dec b
	jr nz, .asm_2eb7
	ld hl, hff93
	bit 2, [hl]
	jr nz, .asm_2f15
	ld a, [wROMBank]
	push af
	ld a, $05
	bankswitch
	ld b, $10
	ld c, $00
.asm_2eeb
	push bc
	ld b, $00
	ld hl, wd160
	add hl, bc
	ld a, [hl]
	cp $01
	jr nz, .asm_2f05
	ld hl, wd35a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h
	jr z, .asm_2f05
	call JumpHL
.asm_2f05
	pop bc
	inc c
	dec b
	jp nz, .asm_2eeb
	pop af
	bankswitch
	call Func_2f34
.asm_2f15
	ld b, $10
	ld c, $00
.asm_2f19
	push bc
	ld b, $00
	ld hl, wd160
	add hl, bc
	ld a, [hl]
	cp $01
	call z, Func_2b26
	pop bc
	inc c
	dec b
	jr nz, .asm_2f19
	pop af
	bankswitch
	ret

JumpHL:
	jp hl

Func_2f34:
	ld a, [wd3d4]
	and a
	jr z, .asm_2fa2
	dec a
	ld [wd3d4], a
	ld hl, hff91
	bit 1, [hl]
	jr z, .asm_2f57
	ld a, [wd3d4]
	and a
	ret nz
	ld a, [wd3d5]
	ld e, a
	ld d, $00
	ld hl, wd190
	add hl, de
	res 4, [hl]
	ret
.asm_2f57
	push bc
	ld e, LOW(.data_1)
	add e
	ld e, a
	ld d, HIGH(.data_1)
	jr nc, .asm_2f61
	inc d
.asm_2f61
	ld a, [de]
	ld e, a
	ld d, 0
	bit 7, a
	jr z, .asm_2f6a
	dec d
.asm_2f6a
	ld a, [wd3d5]
	ld c, a
	ld hl, wd0a0 + $1
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
	ld a, [wd3d4]
	ld e, LOW(.data_2)
	add e
	ld e, a
	ld d, HIGH(.data_2)
	jr nc, .asm_2f88
	inc d
.asm_2f88
	ld a, [de]
	ld e, a
	ld d, 0
	bit 7, a
	jr z, .asm_2f91
	dec d
.asm_2f91
	ld a, [wd3d5]
	ld c, a
	ld hl, wd0d0 + $1
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
.asm_2fa2
	ret

.data_1
	db -1, -1,  1,  1, -1, -1,  1,  1,  1, -1, -2, -2,  2,  2, -2, -2,  2,  2,  2, -2, -1, -1,  1,  1, -1, -1,  1,  1,  1, -1

.data_2
	db -1,  1,  1,  1, -1, -1, -1,  1,  1, -1, -2,  2,  2,  2, -2, -2, -2,  2,  2, -2, -1,  1,  1,  1, -1, -1, -1,  1,  1, -1

Func_2fdf:
	ld a, [hff93]
	bit 2, a
	ret nz
	ld a, [hff94]
	bit 5, a
	ret nz
	call .Func_3059
	ld a, [wd3f5]
	and a
	jr z, .asm_2fff
	dec a
	ld [wd3f5], a
	jr nz, .asm_2fff
	ld hl, wd1a0
	res 5, [hl]
.asm_2fff
	call .Func_303a
	ld a, [hff91]
	bit 0, a
	ret nz
	ld hl, wd3df
	call .Func_3047
	ret nz
	ld a, [wd1a0]
	and $cf
	ld [wd1a0], a
	ld hl, wd3be
	bit 0, [hl]
	jr z, .asm_3030
	ld hl, hff8e
	set 2, [hl]
	ld hl, hff90
	set 3, [hl]
	ld a, [hff91]
	and $fc
	ld [hff91], a
.asm_3030
	ld a, [hff95]
	and $83
	ld [hff95], a
	jr .asm_3041

.Func_303a:
	ld hl, wd3e1
	call .Func_3047
	ret nz

.asm_3041
	ld hl, wd1a0
	res 4, [hl]
	ret

.Func_3047:
	ld a, [hli]
	or [hl]
	jr nz, .asm_304e
	or $01
	ret
.asm_304e
	dec hl
	dec [hl]
	ld a, [hli]
	cp $ff
	jr nz, .asm_3056
	dec [hl]
.asm_3056
	ld a, [hld]
	or [hl]
	ret

.Func_3059:
	ld a, [wd3e0]
	ld e, a
	ld a, [wd3e2]
	or e
	ret nz
	ld a, [wd3df]
	ld e, a
	ld a, [wd3e1]
	cp e
	jr nc, .asm_306d
	ld a, e
.asm_306d
	cp $78
	ret nz
	ld a, [wd03c]
	jp PlayMusic
; 0x3076

SECTION "Home@3199", ROM0[$3199]

Func_3199:
	ld d, $01
	jr .asm_319f
	ld d, $00
.asm_319f
	ld a, [wROMBank]
	push af
	ld a, [wd3f0]
	bankswitch
	call .Func_31b7
	pop af
	bankswitch
	ret

.Func_31b7:
	ld hl, wd3ed
	ld a, [wd051]
	cp [hl]
	jr z, .asm_31c4 ; wd051 == wd3ed
	jr nc, .asm_31d2 ; wd051 > wd3ed
	jr .asm_3220 ; wd051 < wd3ed
.asm_31c4
	ld hl, wd3ee
	ld a, [wd052]
	cp [hl]
	ret z
	jp nc, .asm_3271
	jp .asm_32bf
.asm_31d2
	ld e, $05
	bit 0, d
	jr z, .asm_31da
	ld e, $03
.asm_31da
	ld a, [wd3e9]
	and a
	jr z, .asm_31f0
	call .Func_330f
	ld a, [wd051]
	add $0b
	cp [hl]
	jr c, .asm_31fa
	push de
	call .Func_3329
	pop de
.asm_31f0
	ld a, [wd3e9]
	add $03
	ld [wd3e9], a
	jr .asm_3200
.asm_31fa
	ld a, [wd051]
	ld [wd3ed], a
.asm_3200
	ld a, [wd3ea]
	add $03
	ld [wd3ea], a
	call .Func_330f
	ld a, [wd051]
	sub e
	jr nc, .asm_3212
	xor a
.asm_3212
	cp [hl]
	jr z, .asm_3217
	jr nc, .asm_3200
.asm_3217
	ld a, [wd3ea]
	sub $03
	ld [wd3ea], a
	ret
.asm_3220
	ld e, $0d
	bit 0, d
	jr z, .asm_3228
	ld e, $0b
.asm_3228
	ld a, [wd3ea]
	and a
	jr z, .asm_324d
	call .Func_330f
	ld a, [wd051]
	sub $03
	jr nc, .asm_3239
	xor a
.asm_3239
	cp [hl]
	jr z, .asm_323e
	jr nc, .asm_324d
.asm_323e
	push de
	call .Func_3329
	pop de
	ld a, [wd3ea]
	sub $03
	ld [wd3ea], a
	jr .asm_3253
.asm_324d
	ld a, [wd051]
	ld [wd3ed], a
.asm_3253
	ld a, [wd3e9]
	and a
	jr z, .asm_3270
	sub $03
	ld [wd3e9], a
	call .Func_330f
	ld a, [wd051]
	add e
	cp [hl]
	jr c, .asm_3253
	ld a, [wd3e9]
	add $03
	ld [wd3e9], a
.asm_3270
	ret

.asm_3271
	ld e, $04
	bit 0, d
	jr z, .asm_3279
	ld e, $03
.asm_3279
	ld a, [wd3eb]
	and a
	jr z, .asm_328f
	call .Func_331c
	ld a, [wd052]
	add $09
	cp [hl]
	jr c, .asm_3299
	push de
	call .Func_3329
	pop de
.asm_328f
	ld a, [wd3eb]
	add $03
	ld [wd3eb], a
	jr .asm_329f
.asm_3299
	ld a, [wd052]
	ld [wd3ee], a
.asm_329f
	ld a, [wd3ec]
	add $03
	ld [wd3ec], a
	call .Func_331c
	ld a, [wd052]
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

.asm_32bf
	ld e, $0a
	bit 0, d
	jr z, .asm_32c7
	ld e, $09
.asm_32c7
	ld a, [wd3ec]
	and a
	jr z, .asm_32ec
	call .Func_331c
	ld a, [wd052]
	sub $03
	jr nc, .asm_32d8
	xor a
.asm_32d8
	cp [hl]
	jr z, .asm_32dd
	jr nc, .asm_32ec
.asm_32dd
	push de
	call .Func_3329
	pop de
	ld a, [wd3ec]
	sub $03
	ld [wd3ec], a
	jr .asm_32f2
.asm_32ec
	ld a, [wd052]
	ld [wd3ee], a
.asm_32f2
	ld a, [wd3eb]
	and a
	ret z
	sub $03
	ld [wd3eb], a
	call .Func_331c
	ld a, [wd052]
	add e
	cp [hl]
	jr c, .asm_32f2
	ld a, [wd3eb]
	add $03
	ld [wd3eb], a
	ret

.Func_330f:
	ld l, a
	ld a, [wd3e5 + 0]
	add l
	ld l, a
	ld a, [wd3e5 + 1]
	adc $00
	ld h, a
	ret

.Func_331c:
	ld l, a
	ld a, [wd3e7 + 0]
	add l
	ld l, a
	ld a, [wd3e7 + 1]
	adc $00
	ld h, a
	ret

.Func_3329:
	inc hl
	ld a, [hli]
	ld [wd06b], a
	ld h, [hl]
	ld l, a
	ld a, h
	ld [wd06c], a
	ld a, [hli]
	ld d, a
	ld a, [hff91]
	bit 7, a
	jr nz, .asm_3350
	ld a, [wd051]
	sub $03
	jr nc, .asm_3345
	xor a
.asm_3345
	cp d
	jr z, .asm_3349
	ret nc
.asm_3349
	ld a, [wd051]
	add $0b
	cp d
	ret c
.asm_3350
	ld a, [hli]
	ld e, a
	ld a, [wd052]
	sub $03
	jr nc, .asm_335a
	xor a
.asm_335a
	cp e
	jr z, .asm_335e
	ret nc
.asm_335e
	ld a, [wd052]
	add $09
	cp e
	ret c
	push hl
	push bc
	push de
	ld d, h
	ld e, l
	ld b, $0c
	ld de, wd160 + $1
	ld hl, wd200 + $2
.asm_3372
	ld a, [de]
	and a
	jr z, .asm_3387
	ld a, [wd06b]
	cp [hl]
	jr nz, .asm_3387
	inc hl
	ld a, [wd06c]
	cp [hl]
	jr nz, .asm_3388
	pop de
	pop bc
	pop hl
	ret
.asm_3387
	inc hl
.asm_3388
	inc hl
	inc de
	dec b
	jr nz, .asm_3372
	pop de
	pop bc
	pop hl
	push hl
	inc hl
	inc hl
	call Func_233e
	jr nc, .asm_339a
	pop de
	ret
.asm_339a
	pop de
	push de
	ld hl, wd190
	add hl, bc
	bit 6, [hl]
	jr z, .asm_33ce
	ld hl, wd3aa
	add hl, bc
	ld a, [hl]
	cp $ff
	jr z, .asm_33ce
	push bc
	ld e, a
	and $07
	ld c, a
	xor a
	ld b, a
	ld d, a
	srl e
	srl e
	srl e
	ld hl, wd3c4
	add hl, de
	ld a, [hl]
	ld hl, $3408
	add hl, bc
	and [hl]
	jr z, .asm_33cd
	pop bc
	call Func_21ce
	pop de
	ret
.asm_33cd
	pop bc
.asm_33ce
	pop de
	ld hl, wd0a0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [de]
	push de
	ld d, $00
	bit 7, a
	jr z, .asm_33df
	ld d, $ff
.asm_33df
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	pop de
	inc de
	ld hl, wd0d0 + $1
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [de]
	ld d, $00
	bit 7, a
	jr z, .asm_33f5
	ld d, $ff
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
; 0x3408

SECTION "Home@3768", ROM0[$3768]

Func_3768:
	ld hl, wd1a0
	set 4, [hl]
	ld a, $40
	ld [hff95], a
	ld hl, hff8d
	res 7, [hl]
	ld a, [hff92]
	and $63
	ld [hff92], a
	ld a, $80
	ld [hff8e], a
	xor a
	ld [hff93], a
	ld a, $01
	ld [wd07a], a
	ld a, $33
	ld [wd07b], a
	ld a, $01
	ld [wd076], a
	ld a, $33
	ld [wd077], a
	ld a, $16
	ld [wd07c], a
	ld a, $09
	ld [wd07d], a
	ret
; 0x37a7

SECTION "Home@388e", ROM0[$388e]

StageHeaders::
; starting area, ?, ?, starting X, starting Y, pals, ?
	db $00, $01, $01, $28, $3c, $00, $01 ; GREEN_GREENS
	db $00, $01, $01, $28, $58, $00, $0c ; CASTLE_LOLOLO
	db $00, $01, $01, $28, $32, $00, $06 ; FLOAT_ISLANDS
	db $00, $01, $01, $48, $41, $00, $00 ; BUBBLY_CLOUDS
	db $00, $01, $01, $28, $70, $00, $11 ; MT_DEDEDE
