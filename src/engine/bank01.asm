SECTION "Bank 1@4783", ROMX[$4783], BANK[$1]

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
