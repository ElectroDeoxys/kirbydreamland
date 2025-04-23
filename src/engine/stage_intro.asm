StageIntro:
	push hl
	xor a
	ld [wVirtualOAMSize], a
	ld [wSCX], a
	ld [wSCY], a
	inc a ; $1
	ld [wLevelXSection], a
	ld [wLevelYSection], a
	ld hl, hKirbyFlags5
	set KIRBY5F_STAGE_INTRO_F, [hl]
	call ClearSprites
	call ResetTimer

	ld hl, CommonGfx
	ld de, vTiles0 tile $00
	ld c, BANK(CommonGfx)
	call FarDecompress
	ld hl, HUDGfx
	ld de, vTiles2 tile $67
	ld c, BANK(HUDGfx)
	call FarDecompress

	ld a, [wStage]
	ld c, a
	add a
	add a
	add c ; *5
	ld c, a
	ld b, $00
	ld hl, Data_2070
	add hl, bc
	ld a, [hli]
	ld [wd06b], a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	ld h, b
	ld l, c
	ld a, [wd06b]
	ld c, a
	call FarDecompress

	ld a, [wStage]
	cp MT_DEDEDE
	jr z, .asm_1835b
	ld hl, FontGfx
	ld de, vTiles1 tile $60
	ld c, BANK(FontGfx)
	call FarDecompress
	ld hl, StageIntroGfx
	ld de, vTiles1 tile $00
	ld c, BANK(StageIntroGfx)
	call FarDecompress

.asm_1835b
	ld a, [wStage]
	ld c, a
	add a
	add c
	ld c, a
	ld b, $00
	ld hl, Data_190bb
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld a, [hl]
	ld e, a
	ld h, d
	ld l, e
	debgcoord 0, 0
	call FarDecompress

	xor a
	call Func_21fb
	call StopTimerAndSwitchOnLCD
	call FadeIn

	pop hl
	ld a, [hl]
	ld [wLevelMusic], a
	call PlayMusic

	ld a, [wStage]
	add a
	ld e, a
	ld d, $00
	ld hl, StageIntroDurations
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
.loop
	ld hl, hVBlankFlags
	set VBLANK_PENDING_F, [hl]
.wait_vblank
	halt
	bit VBLANK_PENDING_F, [hl]
	jr nz, .wait_vblank

	call UpdateObjectsAndClearStaleSprites
	ld a, [hJoypadPressed]
	bit START_F, a
	jr nz, .start_btn
	dec de
	ld a, d
	or e
	jr nz, .loop

.start_btn
	ld hl, hKirbyFlags5
	res KIRBY5F_STAGE_INTRO_F, [hl]
	ret

INCLUDE "data/stage_intro_durations.asm"
