HandleStageTransition::
	ld a, [wd041]
	ld [wd042], a
	call .Func_1844f
	ld hl, hPalFadeFlags
	res SCROLL_LOCKED_F, [hl]

	ld a, [wStage]
	add a ; *2
	ld c, a
	ld b, $00
	ld hl, StageTransitions
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [wArea]
	add a ; *2
	ld l, a
	ld h, $00
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, 1
	ld [wStageTransitionCounter], a

.asm_183ec
	wait_vblank_a

	push hl
	call Func_319d
	call UpdateObjectsAndClearStaleSprites
	pop hl

	; decrement counter
	ld a, [wStageTransitionCounter]
	dec a
	ld [wStageTransitionCounter], a
	jr nz, .wait ; still waiting

	; counter reached 0, do next command
	ld a, [hli]
	ld [wStageTransitionCounter], a
	ld a, [hli]
	ld [wStageTransitionCmd], a
	bit 7, a
	jp nz, EndStageTransition
	bit 0, a
	call nz, .SetKirbyXVel
	bit 1, a
	call nz, .SetKirbyXVel
	bit 2, a
	call nz, .SetArea
	bit 4, a
	call nz, .SetKirbyMotionScript
	bit 5, a
	jp nz, Epilogue
	bit 3, a
	jr z, .wait
; next stage
	ld hl, wStage
	inc [hl]
	call StartStage
	jp Func_3d32
.wait
	ld a, [wStageTransitionCmd]
	bit 0, a
	call nz, .Func_18506
	bit 1, a
	call nz, .Func_18528
	jr .asm_183ec

.Func_1844f:
	ld a, [wStage]
	add a
	ld c, a
	ld b, $00
	ld hl, TransitionAnimScripts
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [wArea]
	add a ; *2
	ld l, a
	ld h, $00
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, MotionScript_157a
	ld bc, OBJECT_SLOT_KIRBY
	call SetObjectScripts
	ret

.SetKirbyMotionScript:
	push af
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push hl
	ld hl, AnimScript_2010c
	ld bc, OBJECT_SLOT_KIRBY
	call SetObjectScripts
	pop hl
	pop af
	ret

.SetArea:
	push af
	ld a, [hli]
	ld [wArea], a
	push hl
	call Func_19c9
	call FadeOut
	ld a, SFX_NONE
	call PlaySFX
	pop hl
	xor a
	ld [wSCX], a
	ld [wSCY], a
	ld a, [hli]
	ld [wLevelXSection], a
	ld a, [hli]
	ld [wLevelYSection], a
	push hl
	call LoadArea
	ld a, [wLevelYSection]
	dec a
	ld b, a
	ld a, [wLevelWidth]
	ld e, a
	call FixedPointMultiply
	ld a, [wLevelXSection]
	dec a
	ld l, a
	ld h, $00
	add hl, bc
	ld b, h
	ld c, l
	ld hl, wLevelBlockMap
	add hl, bc
	call Func_1964
	ld a, $ff
	ld [wd096], a
	call .Func_1844f
	xor a
	call Func_21fb
	call ClearSprites
	call UpdateObjects
	ld a, [wStage]
	cp MT_DEDEDE
	jr nz, .asm_184eb
	ld a, [wArea]
	and a
	jr nz, .asm_184eb
	ld a, MUSIC_MT_DEDEDE
	call PlayMusic
.asm_184eb
	call StopTimerAndSwitchOnLCD
	call FadeIn
	pop hl
	pop af
	ret

.SetKirbyXVel:
	push af
	ld a, [hli]
	ld [wKirbyXVel + 0], a
	ld a, [hli]
	ld [wKirbyXVel + 1], a
	xor a
	ld [wKirbyMaxXVel + 0], a
	ld [wKirbyMaxXVel + 1], a
	pop af
	ret

.Func_18506:
	push af
	push hl
	ld a, [wKirbyXVel + 1]
	ld e, a
	ld a, [wKirbyMaxXVel + 1]
	add e
	ld [wKirbyMaxXVel + 1], a
	ld a, [wKirbyXVel + 0]
	ld e, a
	ld a, [wKirbyMaxXVel + 0]
	adc e
	ld [wd063], a
	xor a
	ld [wKirbyMaxXVel + 0], a
	call Func_1062
	pop hl
	pop af
	ret

.Func_18528:
	push hl
	ld a, [wKirbyXVel + 1]
	ld e, a
	ld a, [wKirbyMaxXVel + 1]
	add e
	ld [wKirbyMaxXVel + 1], a
	ld a, [wKirbyXVel + 0]
	ld e, a
	ld a, [wKirbyMaxXVel + 0]
	adc e
	ld b, a
	ld [wd067], a
	xor a
	ld [wKirbyMaxXVel + 0], a
	cp b
	jr z, .asm_18591
	ld a, [wSCY]
	ld c, a
.asm_1854b
	ld a, c
	call Is4BitUnaligned
	jr nc, .asm_18557
	dec c
	dec b
	jr nz, .asm_1854b
	jr .asm_18591
.asm_18557
	ld a, [wSCY]
	sub $10
	ld [wYCoord], a
	ld a, [wSCX]
	and $f0
	ld [wXCoord], a
	ld a, [wLevelYSection]
	dec a
	jr z, .asm_1856e
	dec a
.asm_1856e
	ld e, a
	ld a, [wLevelWidth]
	ld b, a
	call FixedPointMultiply
	ld hl, wLevelBlockMap
	add hl, bc
	ld b, $00
	ld a, [wLevelXSection]
	dec a
	ld c, a
	add hl, bc
	call Func_12b4
	ld hl, wLevelYSection
	dec [hl]
	ld a, [hVBlankFlags]
	set VBLANK_5_F, a
	ld [hVBlankFlags], a
.asm_18591
	ld a, [wd067]
	ld b, a
	ld a, [wSCY]
	sub b
	ld [wSCY], a
	pop hl
	ret
