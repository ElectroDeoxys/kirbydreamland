; calls LoadLevelGfx but with wExtraGameEnabled disabled
LoadLevelGfx_RegularGame:
	ld a, [wExtraGameEnabled]
	push af
	xor a
	ld [wExtraGameEnabled], a
	call LoadLevelGfx
	pop af
	ld [wExtraGameEnabled], a
	ret

; loads graphics for Kirby, common objects
; the HUD and for the curent area
; from [wStage] and [wArea]
LoadLevelGfx:
	ld a, [wExtraGameEnabled]
	and a
	jr nz, .extra_game
	ld hl, CommonGfx
	ld de, vTiles0 tile $00
	ld c, BANK(CommonGfx)
	call FarDecompress
	ld hl, HUDGfx
	ld de, vTiles2 tile $67
	ld c, BANK(HUDGfx)
	call FarDecompress
	jr .load_level_gfx
.extra_game
	ld hl, CommonExtraGfx
	ld de, vTiles0 tile $00
	ld c, BANK(CommonExtraGfx)
	call FarDecompress
	ld hl, HUDExtraGfx
	ld de, vTiles2 tile $67
	ld c, BANK(HUDExtraGfx)
	call FarDecompress
.load_level_gfx
	ld d, $00
	ld a, [wStage]
	ld c, a
	add a
	add a
	add c ; *5
	ld c, a
	ld b, $00
	ld hl, Data_2070
	ld a, [wExtraGameEnabled]
	and a
	jr z, .asm_182d1
	ld hl, Data_2089
.asm_182d1
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
	ret
