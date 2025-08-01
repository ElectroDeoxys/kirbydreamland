Func_4000::
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	call z, Func_8dc
	ld a, [wKirbyScreenX]
	cp SCREEN_WIDTH_PX - 8
	jr c, .not_on_right_edge
	; on right edge of screen
	call StopKirbyWalking
	; stop walking
	; (redundant, already done in StopKirbyWalking)
	ldh a, [hKirbyFlags1]
	res KIRBY1F_WALK_F, a
	ldh [hKirbyFlags1], a
	xor a
	ld [wd063], a
	ret

.not_on_right_edge
	; accelerate right
	ld a, [wKirbyXVel + 0]
	ld e, a
	ld a, [wKirbyXVel + 1]
	ld b, a
	ld a, [wKirbyXAccumulator]
	add b
	ld [wKirbyXAccumulator], a
	incc e
	ld a, e
	and a
	ret z ; no delta x
	ld [wKirbyScreenDeltaX], a
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK5_F, a
	jp nz, .continue_walk
	inc e
	ld a, [wKirbyScreenX]
	add $0d
	ld [wd05e], a
	call GetKirbyLevelXCoord
	ld d, 0
.asm_4049
	ld a, l
	call Is4BitUnaligned
	jr nc, .aligned
	inc hl ; increment x
	inc d ; num pixels
	dec e ; decrement num pixels remaining
	jr nz, .asm_4049
	jp .continue_walk
.aligned
	call ConvertPositionCoordinateToBlock
	ld a, c
	ld [wd05e], a
	ld a, [wKirbyScreenY]
	sub $10
	ld [wd05f], a
	call Func_819
	and a
	jr z, .asm_4081
	cp BLOCK_1
	jr z, .asm_4081
	cp BLOCK_WATER
	jr z, .asm_4081
	cp BLOCK_9
	jr z, .asm_4081
	cp BLOCK_8
	jr nz, .stop_walk
	call Func_1248
	jr c, .stop_walk
.asm_4081
	ld a, [wKirbyScreenY]
	sub $01
	ld [wd05f], a
	call Func_819
	and a
	jr z, .continue_walk
	cp BLOCK_1
	jr z, .continue_walk
	cp BLOCK_WATER
	jr z, .continue_walk
	cp BLOCK_9
	jr z, .continue_walk
	cp BLOCK_8
	jr nz, .stop_walk
	call Func_1257
	jr nc, .continue_walk

.stop_walk
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	jr nz, .stop_walk_without_bump
	call Func_11c9
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE
	jr nz, .stop_walk_without_bump

	ld a, [wKirbyXVel + 0]
	cp HIGH(1.5078)
	jr nc, .bump
	ld a, [wKirbyXVel + 1]
	cp LOW(1.5078)
	jr c, .stop_walk_without_bump
.bump
	; x vel >= 1.5078
	ldh a, [hKirbyFlags1]
	res KIRBY1F_WALK_F, a
	ldh [hKirbyFlags1], a
	ld b, SQUISH_FRONT | KIRBY3F_SQUISHED
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DUCK | KIRBY3F_FACE_LEFT | KIRBY3F_UNK6 | KIRBY3F_SQUISHED
	or b
	ldh [hKirbyFlags3], a
	push de
	call SpawnBumpStar_WithSFX
	pop de

.stop_walk_without_bump
	call StopKirbyWalking
	ld a, 255
	ld [wKirbyXAccumulator], a
	ld a, d
	ld [wKirbyScreenDeltaX], a

.continue_walk
	ldh a, [hPalFadeFlags]
	bit SCROLL_LOCKED_F, a
	jr nz, .asm_4115
	ld hl, hKirbyFlags5
	bit KIRBY5F_DAMAGED_F, [hl]
	jr nz, .asm_4115
	ld hl, hEngineFlags
	bit ENGINEF_UNK6_F, [hl]
	jr nz, .asm_4115
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK5_F, a
	jr nz, .asm_4115
	ld c, $4c
	ldh a, [hEngineFlags]
	bit ENGINEF_XWARP_F, a
	jr nz, .asm_4117
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK5_F, a
	jp nz, .asm_4115
	ld a, [wd042]
	inc a
	ld d, a
	ld a, [wLevelXSection]
	cp d
	jr nz, .asm_4117
.asm_4115
	ld c, SCREEN_WIDTH_PX - 8
.asm_4117
	ld a, [wKirbyScreenDeltaX]
	ld b, a
	ld a, [wKirbyScreenX]
	add b
	cp SCREEN_WIDTH_PX - 8
	jr nc, .asm_4149
	ld b, a
	ld a, c
	sub b
	jr c, .asm_4133
	call MoveKirbyRight
	ld a, [wKirbyScreenX] ; useless
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
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE
	jr nz, .asm_416f
	ld a, [wKirbyXVel + 0]
	cp HIGH($182)
	jr nc, .asm_415d
	ld a, [wKirbyXVel + 1]
	cp LOW($182)
	jr c, .asm_416f
.asm_415d
	ld b, SQUISH_FRONT | KIRBY3F_SQUISHED
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DUCK | KIRBY3F_FACE_LEFT | KIRBY3F_UNK6 | KIRBY3F_SQUISHED
	or b
	ldh [hKirbyFlags3], a
	call SpawnBumpStar_WithSFX
	ldh a, [hKirbyFlags1]
	res KIRBY1F_WALK_F, a
	ldh [hKirbyFlags1], a
.asm_416f
	call StopKirbyWalking
	ld a, SCREEN_WIDTH_PX - 8
	ld [wKirbyScreenX], a
	xor a
	ld [wd063], a
	ret

Func_417c::
	xor a
	ld [wd063], a
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	call z, Func_8dc
	ld a, [wKirbyScreenX]
	cp $08
	jr nz, .not_on_left_edge
	; on left edge of screen
	call StopKirbyWalking
	and a
	ret

.not_on_left_edge
	; accelerate left
	ld a, [wKirbyXVel + 0]
	ld e, a
	ld a, [wKirbyXVel + 1]
	ld b, a
	ld a, [wKirbyXAccumulator]
	sub b
	ld [wKirbyXAccumulator], a
	incc e
	ld a, e
	ld [wd063], a
	and a
	ret z ; no delta x
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK5_F, a
	jp nz, .asm_4250
	inc e
	ld a, [wKirbyScreenX]
	add $03
	ld [wd05e], a
	call GetKirbyLevelXCoord
	ld bc, $10
	call HLMinusBC
	ld d, $00
.asm_41c6
	ld a, l
	call Is4BitUnaligned
	jr nc, .aligned
	dec hl ; decrement x
	inc d ; num pixels
	dec e ; decrement num pixels remaining
	jr nz, .asm_41c6
	jp .asm_4250
.aligned
	call ConvertPositionCoordinateToBlock
	ld a, c
	ld [wd05e], a
	ld a, [wKirbyScreenY]
	sub $10
	ld [wd05f], a
	call Func_819
	and a
	jr z, .asm_41fe
	cp BLOCK_1
	jr z, .asm_41fe
	cp BLOCK_WATER
	jr z, .asm_41fe
	cp BLOCK_9
	jr z, .asm_41fe
	cp BLOCK_7
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
	cp BLOCK_1
	jr z, .asm_4250
	cp BLOCK_WATER
	jr z, .asm_4250
	cp BLOCK_9
	jr z, .asm_4250
	cp BLOCK_8
	jr nz, .asm_4221
	call Func_1257
	jr c, .asm_4250
.asm_4221
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	jr nz, .asm_4245
	call Func_11c9
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE
	jr nz, .asm_4245
	ld a, [wKirbyXVel + 0]
	cp HIGH(1.0)
	jr nz, .asm_4245
	ld b, SQUISH_BACK | KIRBY3F_SQUISHED
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DUCK | KIRBY3F_FACE_LEFT | KIRBY3F_UNK6 | KIRBY3F_SQUISHED
	or b
	ldh [hKirbyFlags3], a
	push de
	call SpawnBumpStar_WithSFX
	pop de
.asm_4245
	call StopKirbyWalking
	xor a
	ld [wKirbyXAccumulator], a
	ld a, d
	ld [wd063], a
.asm_4250
	ld a, [wd063]
	ld b, a
	ldh a, [hPalFadeFlags]
	bit SCROLL_LOCKED_F, a
	jr nz, .asm_427e
	ld hl, hKirbyFlags5
	bit KIRBY5F_DAMAGED_F, [hl]
	jr nz, .asm_427e
	ld c, $44
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK5_F, a
	jp nz, .asm_427e
	ldh a, [hEngineFlags]
	bit ENGINEF_XWARP_F, a
	jr nz, .asm_4280
	ld a, [wLevelXSection]
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
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE
	jr nz, .stop_walking
	ld a, [wKirbyXVel + 0]
	cp HIGH(1.0)
	jr c, .stop_walking ; < 1.0
	; x velocity >= 1.0
	ld b, SQUISH_BACK | KIRBY3F_SQUISHED
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DUCK | KIRBY3F_FACE_LEFT | KIRBY3F_UNK6 | KIRBY3F_SQUISHED
	or b
	ldh [hKirbyFlags3], a
	call SpawnBumpStar_WithSFX
.stop_walking
	call StopKirbyWalking
	and a
	ret

; handles player input to control Kirby
KirbyControl::
	ldh a, [hJoypadPressed]
	bit B_PAD_DOWN, a
	jr z, .not_ducking
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_GROUNDED_F, a
	jr z, .not_ducking
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_HOVER_F, a
	jr nz, .not_ducking
	ldh a, [hKirbyFlags6]
	and KIRBY6F_UNK5 | KIRBY6F_UNK6
	jp nz, .not_ducking
	ld hl, hKirbyFlags2
	bit KIRBY2F_SPIT_F, [hl]
	jp nz, .not_ducking
	bit KIRBY2F_INHALE_F, [hl]
	jr nz, .not_ducking
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_DIVE_BOUNCE_F, a
	jr nz, .not_ducking

	; do duck
	set KIRBY3F_DUCK_F, a
	ldh [hKirbyFlags3], a
	call Func_8dc
	ld hl, hKirbyFlags1
	res KIRBY1F_AIRBORNE_F, [hl]
	res 0, [hl]
	ldh a, [hVBlankFlags]
	set VBLANK_3_F, a
	ldh [hVBlankFlags], a
	jp Func_4783

.not_ducking
	ld hl, hKirbyFlags3
	res KIRBY3F_DUCK_F, [hl]
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK1_F, a
	jp nz, .asm_4778
	bit KIRBY2F_UNK0_F, a
	jp nz, Func_4783

	ldh a, [hKirbyFlags2]
	and KIRBY2F_INHALE | KIRBY2F_UNK5 | KIRBY2F_UNK6 | KIRBY2F_HOVER
	jr nz, .check_b_btn
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_SQUISHED_F, a
	jr nz, .check_b_btn
	bit KIRBY3F_DIVE_BOUNCE_F, a
	jr nz, .check_b_btn
	ldh a, [hJoypadPressed]
	bit B_PAD_A, a
	jr z, .asm_4361
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_AIRBORNE_F, a
	jr nz, .check_b_btn
	bit KIRBY1F_GROUNDED_F, a
	jr z, .check_b_btn
	bit KIRBY1F_JUMP_RISE_F, a
	jr nz, .check_b_btn

	; do jump
	ld hl, hPalFadeFlags
	res SCROLLINGF_UNK3_F, [hl]
	ld hl, hKirbyFlags3
	res KIRBY3F_UNK6_F, [hl]
	ldh a, [hKirbyFlags1]
	set KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	set KIRBY1F_JUMP_RISE_F, a
	ldh [hKirbyFlags1], a
	xor a
IF !DEF(_KDL_JP)
	ld [wDisableBumpStars], a
ENDC
	ld [wd065], a
	ld [wd064], a
	ldh a, [hKirbyFlags3]
	and ~(KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE)
	ldh [hKirbyFlags3], a
	ld a, SFX_JUMP
	call PlaySFX
	jr .check_b_btn
.asm_4361
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_AIRBORNE_F, a
	jr z, .stop_rise
	bit KIRBY1F_JUMP_RISE_F, a
	jr z, .check_b_btn
	ld a, [wd065]
	cp $11
	jr nc, .stop_rise
	ld a, $11
	ld [wd065], a
.stop_rise
	ld hl, hKirbyFlags1
	res KIRBY1F_JUMP_RISE_F, [hl]
.check_b_btn
	ldh a, [hJoypadPressed]
	ld c, a
	bit B_PAD_B, a
	jp z, .asm_4492
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_HOVER_F, a
	jp z, .asm_4410
	bit KIRBY2F_SPIT_F, a
	jp nz, .asm_4410
	ld a, [wd094]
	cp $02
	jp nz, .asm_4492
	ld hl, hKirbyFlags6
	bit KIRBY6F_UNK6_F, [hl]
	jr nz, .asm_43e8
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	jp nz, .asm_440b

	ld a, 0.125
	ld [wKirbyXAcceleration], a
	ld a, 0.055
	ld [wKirbyXDeceleration], a
	ld a, HIGH(1.2)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(1.2)
	ld [wKirbyMaxXVel + 1], a
	ld a, HIGH(2.0)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(2.0)
	ld [wKirbyMaxYVel + 1], a
	xor a
	ld [wKirbyYVel + 1], a
	ld a, 0.082
	ld [wKirbyYAcceleration], a

.asm_43cd
	ld hl, hKirbyFlags2
	set KIRBY2F_SPIT_F, [hl]
	ld a, $16
	ld [wd065], a
	ldh a, [hKirbyFlags3]
	and ~(KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE | KIRBY3F_UNK6)
	ldh [hKirbyFlags3], a
	xor a
	ld [wd064], a
	ld hl, hKirbyFlags6
	bit KIRBY6F_UNK5_F, [hl]
	jr nz, .asm_4403
.asm_43e8
	bit KIRBY6F_UNK3_F, [hl]
	jp nz, .asm_4492
	set KIRBY6F_UNK3_F, [hl]
	set KIRBY6F_UNK2_F, [hl]
	xor a
	ld [wd06a], a
	call PuffSpit
	jp nc, .asm_4492
	ld hl, hKirbyFlags6
	res KIRBY6F_UNK2_F, [hl]
	jp .asm_4492
.asm_4403
	ld hl, hKirbyFlags4
	res KIRBY4F_NONSTICKY_B_F, [hl]
	jp .asm_447d

.asm_440b
	call Func_326
	jr .asm_43cd

.asm_4410
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK5_F, a
	jr nz, .asm_446a
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_MOUTHFUL_F, a
	jr nz, .asm_444e
	bit B_PAD_UP, c
	jp nz, .asm_4492
	ld hl, hKirbyFlags4
	res KIRBY4F_NONSTICKY_B_F, [hl]
	and $ff ^ (KIRBY2F_MOUTHFUL)
	jr nz, .asm_4492
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DIVE_BOUNCE | KIRBY3F_DUCK | KIRBY3F_SQUISHED
	jr nz, .asm_4492

	; do inhale
	ld hl, hKirbyFlags2
	set KIRBY2F_INHALE_F, [hl]
	ldh a, [hKirbyFlags3]
	and ~(KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE)
	ldh [hKirbyFlags3], a
	xor a
	ld [wd064], a
	ld a, SFX_INHALE
	call PlaySFX
	xor a
	ld [wInhaleDuration], a
	call InitInhaleParticleXCoords
	jp .asm_4590

.asm_444e
	ld a, [wd094]
	cp $04
	jr nz, .asm_4492
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_UNK4_F, a
	jr nz, .asm_4492
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_SPIT_F, a
	jr nz, .asm_4492
	set KIRBY2F_SPIT_F, a
	ldh [hKirbyFlags2], a
	call StarSpit
	jr .asm_4492
.asm_446a
	bit KIRBY6F_UNK3_F, a
	jr nz, .asm_4492
	set KIRBY6F_UNK3_F, a
	set KIRBY6F_UNK4_F, a
	ldh [hKirbyFlags6], a
	ld hl, hKirbyFlags4
	res KIRBY4F_NONSTICKY_B_F, [hl]
	xor a
	ld [wJoypadDown], a
.asm_447d
	xor a
	ld [wd06a], a
	call Func_11c9
	call ShootFirePellet
	jr nc, .asm_4492
	ld hl, hKirbyFlags6
	res KIRBY6F_UNK2_F, [hl]
	res KIRBY6F_UNK4_F, [hl]
	jr .asm_4492 ; useless jump
.asm_4492
	ldh a, [hJoypadPressed]
	ld b, a
	bit B_PAD_UP, a
	jp z, .check_d_left
	ld a, [wCurSFX]
	cp SFX_INHALE
	jr nz, .asm_44a6
	ld a, SFX_NONE
	call PlaySFX
.asm_44a6
	ldh a, [hKirbyFlags2]
	ld c, a
	and KIRBY2F_UNK0 | KIRBY2F_UNK1
	jp nz, .check_d_left
	bit KIRBY2F_INHALE_F, c
	jr nz, .asm_451a
	push bc
	push hl
	push de
	call ProcessDoorConnection
	pop de
	pop hl
	pop bc
	and a
	jr z, .check_d_left
	bit B_PAD_B, b
	jr nz, .check_d_left
	ldh a, [hKirbyFlags2]
	and KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_UNK5 | KIRBY2F_UNK6
	jr nz, .check_d_left
	ldh a, [hKirbyFlags3]
	and ~(KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE)
	ldh [hKirbyFlags3], a
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	jr nz, .check_d_left
	bit KIRBY2F_HOVER_F, a
	jr nz, .check_d_left

	; do hover
	set KIRBY2F_HOVER_F, a
	and $ff ^ (KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_UNK5 | KIRBY2F_UNK6)
	ldh [hKirbyFlags2], a
	ld hl, hKirbyFlags4
	set KIRBY4F_NONSTICKY_B_F, [hl]
	ld hl, hKirbyFlags6
	res KIRBY6F_UNK2_F, [hl]
	ldh a, [hKirbyFlags1]
	and $ff ^ (KIRBY1F_JUMP_RISE | KIRBY1F_GROUNDED | KIRBY1F_AIRBORNE)
	ldh [hKirbyFlags1], a

	ld a, HIGH(0.797)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(0.797)
	ld [wKirbyMaxYVel + 1], a
	ld a, HIGH(0.75)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(0.75)
	ld [wKirbyMaxXVel + 1], a
	ld a, 0.085
	ld [wKirbyXAcceleration], a
	ld a, 0.035
	ld [wKirbyXDeceleration], a

	ld a, SFX_NONE
	call PlaySFX
	xor a
	ld [wd094], a
	ld [wd064], a
	jr .check_d_left

.asm_451a
	ldh a, [hKirbyFlags5]
	and KIRBY5F_UNK6 | KIRBY5F_INHALING_OBJECT
	jr nz, .check_d_left
	ld hl, hKirbyFlags2
	set KIRBY2F_SPIT_F, [hl]
	ld hl, hKirbyFlags4
	set KIRBY4F_NONSTICKY_B_F, [hl]

.check_d_left
	ldh a, [hJoypadPressed]
	bit B_PAD_LEFT, a
	jr z, .check_d_right
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_UNK4_F, a
	jr nz, .check_d_right
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_INHALE_F, a
	jr nz, .check_d_right
	bit KIRBY2F_SPIT_F, a
	jr nz, .set_walking_flags_left
	bit KIRBY2F_HOVER_F, a
	jr z, .set_face_left
	ld a, [wd094]
	cp $02
	jr nz, .check_d_right
	ldh a, [hEngineFlags]
	bit HURT_PAL_EFFECT_F, a
	jr nz, .set_walking_flags_left
.set_face_left
	ld hl, hKirbyFlags3
	set KIRBY3F_FACE_LEFT_F, [hl]
.set_walking_flags_left
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_WALK_F, a
	jr nz, .check_d_right
	set KIRBY1F_WALK_LEFT_F, a
	ldh [hKirbyFlags1], a

.check_d_right
	ldh a, [hJoypadPressed]
	bit B_PAD_RIGHT, a
	jr z, .asm_4590
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_UNK4_F, a
	jr nz, .asm_4590
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_INHALE_F, a
	jr nz, .asm_4590
	bit KIRBY2F_SPIT_F, a
	jr nz, .set_walking_flags_right
	bit KIRBY2F_HOVER_F, a
	jr z, .unset_face_left
	ld a, [wd094]
	cp $02
	jr nz, .asm_4590
.unset_face_left
	ld hl, hKirbyFlags3
	res KIRBY3F_FACE_LEFT_F, [hl]
.set_walking_flags_right
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_WALK_F, a
	jr nz, .asm_4590
	res KIRBY1F_WALK_LEFT_F, a
	ldh [hKirbyFlags1], a
.asm_4590
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	jp z, .asm_466a
	ldh a, [hJoypadPressed]
	swap a
	ld b, a
	and (PAD_RIGHT | PAD_LEFT) >> 4
	ldh [hVBlankFlags], a
	ld [wd04d], a
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK5_F, a
	jr nz, .asm_45eb
	bit KIRBY2F_HOVER_F, a
	jr nz, .asm_460c
	ld hl, hKirbyFlags1
	set KIRBY1F_AIRBORNE_F, [hl]
	bit B_PAD_A + 4, b
	jr nz, .asm_4629
	bit B_PAD_UP - 4, b
	jr nz, .asm_4629
	ld a, [wd064]
	and a
	jr nz, .asm_4629
.asm_45c0
	ld hl, wObjectPropertyFlags + OBJECT_SLOT_KIRBY
	set PROPERTY_PRIORITY_F, [hl]
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_MOUTHFUL_F, a
	jr nz, .asm_45d9
	ld a, 0.082
	ld [wKirbyYAcceleration], a
	ld a, HIGH(0.797)
	ld [wKirbyYVel + 0], a
	ld a, LOW(0.797)
	jr .asm_45e5
.asm_45d9
	ld a, 0.188
	ld [wKirbyYAcceleration], a
	ld a, HIGH(1.33)
	ld [wKirbyYVel + 0], a
	ld a, LOW(1.33)
.asm_45e5
	ld [wKirbyYVel + 1], a
	jp Func_426

.asm_45eb
	ld a, HIGH(0.7)
	ld [wKirbyYVel + 0], a
	ld a, LOW(0.7)
	ld [wKirbyYVel + 1], a
	ld a, [wUnkTimer]
	cp $0a
	jp c, Func_426
	ld hl, hKirbyFlags2
	res KIRBY2F_UNK5_F, [hl]
	xor a
	ld [wUnkTimer], a
	ld [wd064], a
	jp Func_426

.asm_460c
	bit KIRBY2F_SPIT_F, a
	jr nz, .asm_45c0
	ld a, HIGH(-0.25)
	ld [wKirbyYVel + 0], a
	ld a, LOW(-0.25)
	ld [wKirbyYVel + 1], a
	ld a, [wUnkTimer]
	cp $0a
	jp c, Func_426
	xor a
	ld [wUnkTimer], a
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
	ld [wKirbyYVel + 0], a
	ld a, [hl]
	ld [wKirbyYVel + 1], a
	jp Func_426
.asm_4655
	xor a
	ld [wd064], a
	ldh a, [hKirbyFlags3]
	and ~(KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE)
	ldh [hKirbyFlags3], a
	bit B_PAD_A + 4, b
	jr nz, .asm_4629
	bit B_PAD_UP - 4, b
	jr nz, .asm_4629
	jp .asm_45c0

.asm_466a
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK6_F, a
	jr nz, .asm_4692
.asm_4670
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_HOVER_F, a
	jp z, .asm_4709
	bit KIRBY2F_SPIT_F, a
	jp nz, .asm_4709
	ldh a, [hJoypadPressed]
	swap a
	ld b, a
	and (PAD_RIGHT | PAD_LEFT) >> 4
	ldh [hVBlankFlags], a
	ld [wd04d], a
	bit B_PAD_UP - 4, b
	jr nz, .asm_46ef
	bit B_PAD_A + 4, b
	jr nz, .asm_46ef
	jr .asm_46fc
.asm_4692
	ld hl, hEngineFlags
	bit KABOOLA_BATTLE_F, [hl]
	jr z, .asm_4670
	ldh a, [hJoypadPressed]
	swap a
	ld b, a
	and (PAD_RIGHT | PAD_LEFT) >> 4
	ldh [hVBlankFlags], a

	ld a, 0.996
	ld [wKirbyXDeceleration], a
	ld [wKirbyXAcceleration], a
	inc a
	ld [wKirbyXVel + 1], a
	inc a
	ld [wKirbyXVel + 0], a

	ldh a, [hJoypadPressed]
	bit B_PAD_UP, a
	jr nz, .asm_46c8
	bit B_PAD_DOWN, a
	jr nz, .asm_46dc
	xor a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ld [wKirbyYAcceleration], a
	jr .asm_4709
.asm_46c8
	ld a, HIGH(-2.0)
	ld [wKirbyYVel + 0], a
	xor a ; LOW(-2.0)
	ld [wKirbyYVel + 1], a
	ld [wKirbyYAcceleration], a
	ld hl, hKirbyFlags3
	set KIRBY3F_UNK6_F, [hl]
	jp Func_426
.asm_46dc
	xor a ; LOW(1.0)
	ld [wKirbyYVel + 1], a
	ld [wKirbyYAcceleration], a
	inc a ; HIGH(1.0)
	ld [wKirbyYVel + 0], a
	ld hl, hKirbyFlags3
	res KIRBY3F_UNK6_F, [hl]
	jp Func_426
.asm_46ef
	ld hl, hKirbyFlags3
	set KIRBY3F_UNK6_F, [hl]
	ld a, 0.313
	ld [wKirbyYAcceleration], a
	jp ApplyKirbyYAcceleration
.asm_46fc
	ld hl, hKirbyFlags3
	res KIRBY3F_UNK6_F, [hl]
	ld a, 0.08
	ld [wKirbyYAcceleration], a
	jp ApplyKirbyYAcceleration

.asm_4709
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_DIVE_BOUNCE_F, a
	jr z, .asm_4726
	ld hl, hKirbyFlags1
	set KIRBY1F_JUMP_RISE_F, [hl]
	ld hl, hKirbyFlags3
	res KIRBY3F_UNK6_F, [hl]
	ld a, 0.25
	ld [wKirbyYAcceleration], a
	ld a, [wd04d]
	ldh [hVBlankFlags], a
	jp ApplyKirbyYAcceleration
.asm_4726
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_AIRBORNE_F, a
	jp z, .asm_476b
	ldh a, [hKirbyFlags3]
	res KIRBY3F_UNK6_F, a
	ldh [hKirbyFlags3], a
	ldh a, [hJoypadPressed]
	swap a
	and (PAD_RIGHT | PAD_LEFT) >> 4
	ld b, a
	ld a, b ; unnecessary
	ld [wd04d], a
	ldh [hVBlankFlags], a
	ld a, [wd065]
	cp $16
	jp nc, ApplyKirbyYAcceleration
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
	ld [wKirbyYVel + 0], a
	ld a, [hl]
	ld [wKirbyYVel + 1], a
	jp Func_426
.asm_4765
	call Func_38f
	jp ApplyKirbyYAcceleration

.asm_476b
	ldh a, [hJoypadPressed]
	swap a
	and (PAD_RIGHT | PAD_LEFT) >> 4
	ld [wd04d], a
	ldh [hVBlankFlags], a
	jr Func_4783

.asm_4778
	ld a, [wd04d]
	ldh [hVBlankFlags], a
	ldh a, [hKirbyFlags2]
	res KIRBY2F_UNK1_F, a
	ldh [hKirbyFlags2], a
;	fallthrough

Func_4783::
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_INHALE_F, a
	jr z, .skip_spit

	; can only spit after
	; some minimum duration has elapsed
	ld a, [wInhaleDuration]
	inc a
	ld [wInhaleDuration], a
	cp 31
	jr c, .skip_spit

	; can only spit if it's not still inhaling an object
	ldh a, [hKirbyFlags5]
	bit KIRBY5F_INHALING_OBJECT_F, a
	jr nz, .skip_spit ; still inhaling an object
	ldh a, [hJoypadPressed]
	bit B_PAD_B, a
	jr nz, .skip_spit

	; do spit
	ldh a, [hKirbyFlags2]
	set KIRBY2F_SPIT_F, a
	ldh [hKirbyFlags2], a
	ld a, SFX_NONE
	call PlaySFX

.skip_spit
	ld a, [wd094]
	cp $01
	jr nz, .asm_47bf
	call Func_8dc
	ldh a, [hKirbyFlags3]
	res KIRBY3F_SQUISHED_F, a
	ldh [hKirbyFlags3], a
	xor a
	ld [wd094], a
.asm_47bf
	cp $06
	jr nz, .asm_47fe
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	jr nz, .asm_47fe
	set KIRBY2F_HOVER_F, a
	and $ff ^ (KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_UNK5 | KIRBY2F_UNK6)
	ldh [hKirbyFlags2], a
	ldh a, [hKirbyFlags4]
	set KIRBY4F_NONSTICKY_B_F, a
	ldh [hKirbyFlags4], a
	ldh a, [hKirbyFlags1]
	and $ff ^ (KIRBY1F_JUMP_RISE | KIRBY1F_GROUNDED | KIRBY1F_AIRBORNE)
	ldh [hKirbyFlags1], a

	ld a, HIGH(0.797)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(0.797)
	ld [wKirbyMaxYVel + 1], a
	ld a, HIGH(0.75)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(0.75)
	ld [wKirbyMaxXVel + 1], a
	ld a, 0.085
	ld [wKirbyXAcceleration], a
	ld a, 0.035
	ld [wKirbyXDeceleration], a

	ld a, $02
	ld [wd094], a
.asm_47fe
	call Func_917
	call Func_139b
	ld hl, hEngineFlags
	bit ENGINEF_UNK6_F, [hl]
	call nz, Func_6ec
	ld hl, wInvincibilityCounter
	ld a, [hli]
	or [hl]
	jr z, .skip_spawn_star
	ld a, [wGlobalCounter]
	and %111
	jr nz, .skip_spawn_star
	call SpawnInvincibilityStar
.skip_spawn_star
	jp Func_246

Data_4820:
	bigdw -1.5
	bigdw -1.5
	bigdw -1.5
	bigdw -1.5
	bigdw -1.5
	bigdw -1.5
	bigdw -1.5
	bigdw -1.5
	bigdw -0.253
	bigdw -0.253
	bigdw -0.253
	bigdw -0.253
	bigdw -0.253
	bigdw -0.253
	bigdw -0.253
	bigdw -0.253
	bigdw -0.754
	bigdw -0.754
	bigdw -0.754
	bigdw -0.754
	bigdw -0.754
	bigdw -0.754
	bigdw -0.754
	bigdw -0.754
	bigdw  0.246
	bigdw  0.246
	bigdw  0.246
	bigdw  0.246
	bigdw  0.246
	bigdw  0.246
	bigdw  0.246
	bigdw  0.246

Data_4860:
	bigdw -4.0
	bigdw -4.0
	bigdw -4.0
	bigdw -4.0
	bigdw -4.0
	bigdw -4.0
	bigdw -3.0
	bigdw -3.0
	bigdw -3.0
	bigdw -3.0
	bigdw -3.0
	bigdw -3.0
	bigdw -2.0
	bigdw -2.0
	bigdw -2.0
	bigdw -2.0
	bigdw -2.0
	bigdw -0.5
	bigdw -0.5
	bigdw -0.5
	bigdw -0.5
	bigdw -0.5

DamageKnockBackVelocities::
	db HIGH($400)
	db HIGH($300)
	db HIGH($300)
	db HIGH($200)
	db HIGH($200)
	db HIGH($200)
	db HIGH($100)
	db HIGH($100)
	db HIGH($100)
	db HIGH($100)
	db $00 ; end

Func_4897::
	push bc
	ld a, [wd3ba]
	ld c, a
	ld b, $00
	call Func_21dc
	pop bc
	ret

Func_48a3::
	ld a, c
	ld [wd3ba], a
	ret

Func_48a8::
	ld a, [wObjectScreenXPositions]
	ld [wd3bc], a
	ret

Func_48af::
	ld a, c
	ld [wd3bb], a
	ret

Func_48b4::
	push bc
	ld d, b
	ld e, c
	ld a, [wd3bb]
	ld c, a
	call CopyObjectCoordinates
	pop bc
	ret

Func_48c0::
	push bc
	ld a, [wd3bb]
	ld c, a
	ld hl, wObjectHPs
	add hl, bc
	dec [hl]
	jr nz, .asm_48df
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	add OBJ_UNK7
	ld h, [hl]
	incc h
	ld l, a
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Func_23af
.asm_48df
	pop bc
	ret

ScriptFunc_SetImmuneFlag::
	ld hl, wd1a0
	add hl, bc
	set OBJFLAG_IMMUNE_F, [hl]
	ret

ScriptFunc_ResetImmuneFlag::
	ld hl, wd1a0
	add hl, bc
	res OBJFLAG_IMMUNE_F, [hl]
	ld hl, wObjectStatuses
	add hl, bc
	res OBJSTAT_UNK5_F, [hl]
	ret

Func_48f5::
	push bc
	ld e, $03
	ld hl, wObjectScreenYPositions
	ld a, [hl] ; Kirby's y
	add hl, bc
	sub [hl]
	bit 7, a
	jr z, .got_y_dist
	cpl
	inc a
	ld e, $00
.got_y_dist
	ld d, a ; dist between obj y and Kirby y

	ld hl, wObjectScreenXPositions
	ld a, [hl] ; Kirby's x
	add hl, bc
	sub [hl]
	bit 7, a
	jr z, .got_x_dist
	cpl
	inc a
	push af
	ld a, e
	xor $07
	ld e, a
	pop af
.got_x_dist
	ld b, a ; dist between obj x and Kirby x
	cp d
	jr c, .asm_4923
	ld a, e
	xor $01
	ld e, a
	ld a, d
	ld d, b
.asm_4923
	call Func_3410
	ld c, $00
	cp $33
	jr c, .asm_4932
	inc c
	cp $ad
	jr c, .asm_4932
	inc c
.asm_4932
	ld a, c
	add a
	add a
	add a ; *8
	or e
	ld e, a
	ld d, $00
	ld hl, .data
	add hl, de
	ld a, [hl]
	ld [wd3bd], a
	pop bc
	ret

.data
	db $00, $04, $04, $08, $08, $0c, $0c, $00
	db $01, $03, $05, $07, $09, $0b, $0d, $0f
	db $02, $02, $06, $06, $0a, $0a, $0e, $0e

Func_495c::
	push bc
	ld e, $00
	ld hl, wObjectScreenXPositions
	ld a, [hl] ; Kirby's x pos
	add $28
	add hl, bc
	ld b, a
	ld a, [hl] ; object's x pos
	add $28
	sub b
	; carry set if Kirby is on right
	jr nc, .kirby_on_left
	set 3, e
	cpl
	inc a
.kirby_on_left
	ld d, a ; x distance to Kirby
	pop bc
	push bc
	ld hl, wObjectScreenYPositions
	ld a, [hl] ; Kirby's y pos
	add hl, bc
	sub [hl]
	; carry set if Kirby is on top
	jr nc, .kirby_below
	set 2, e
	cpl
	inc a
.kirby_below
	ld c, a ; y distance to Kirby
	cp d
	; carry set if x dist > y dist
	jr nc, .asm_4988
	set 1, e
	ld c, d
	ld d, a

.asm_4988
	srl c
	ld a, c
	cp d
	jr nc, .asm_4990
	set 0, e
.asm_4990
	ld d, $00
	ld hl, .data
	add hl, de
	ld a, [hl]
	ld [wd3bd], a
	pop bc
	ret

.data
; going left
	; going down
	db $4 ; $0
	db $5 ; $1
	db $6 ; $2
	db $5 ; $3
	; going up
	db $0 ; $4
	db $7 ; $5
	db $6 ; $6
	db $7 ; $7

; going right
	; going down
	db $4 ; $8
	db $3 ; $9
	db $2 ; $a
	db $3 ; $b
	; going up
	db $0 ; $c
	db $1 ; $d
	db $2 ; $e
	db $1 ; $f

Func_49ac::
	call Func_495c
	ld e, a
	ld d, $00
	ld hl, .data
	add hl, de
	ld a, [hl]
	bit 7, a
	jr z, .asm_49c8
	ld e, $04
	ld hl, wObjectScreenXPositions
	ld a, [hl]
	add hl, bc
	cp [hl]
	jr nc, .asm_49c7
	ld e, $00
.asm_49c7
	ld a, e
.asm_49c8
	ld [wd3bd], a
	ret

.data
	db  2,  3,  4,  4, -1,  0,  0,  1

	ret ; stray ret

Func_49d5::
	ld e, $01
	ld hl, wObjectXCoords + $2
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hld]
	and a
	jr nz, .asm_49f0
	ld a, [hl]
	cp $48
	jr c, .asm_49f6
	ld e, $00
	cp $e8
	jr c, .asm_49f6
	ld e, $02
	jr .asm_49f6
.asm_49f0
	bit 7, a
	jr nz, .asm_49f6
	ld e, $02
.asm_49f6
	ld a, e
	ld [wd3bd], a
	ret

ScriptFunc_CheckHalfSideOfScreen::
	ld d, $0
	ld hl, wObjectScreenXPositions
	add hl, bc
	ld a, [hl]
	cp (SCREEN_WIDTH_PX / 2) + 8
	jr c, .got_result
	inc d ; $1
.got_result
	; d = (screen X >= 88)
	ld a, d
	ld [wKirbySideOfScreen], a
	ret

; unreferenced
Func_4a0c:
	ld d, $00
	ld hl, wObjectScreenYPositions
	add hl, bc
	ld a, [hl]
	cp e
	jr c, .asm_4a17
	inc d
.asm_4a17
	ld a, d
	ld [wKirbySideOfScreen], a
	ret

Func_4a1c::
	push bc
	ld a, [wSCX]
	and $0f
	ld hl, wObjectScreenXPositions
	add hl, bc
	add [hl]
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
	ld hl, wObjectScreenYPositions
	add hl, bc
	add [hl]
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
	ld a, LOW(wBlockTypesByID)
	add [hl]
	ld e, a
	ld a, HIGH(wBlockTypesByID)
	adc 0
	ld d, a
	ld a, [de]
	cp BLOCK_4
	jr z, .asm_4a68
	cp BLOCK_5
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
	ld a, 2
	call AddToScore
	ld a, SFX_14
	call PlaySFX
	ret

ScriptFunc_LockScrolling::
	ld hl, hPalFadeFlags
	set SCROLL_LOCKED_F, [hl]
	ret

ScriptFunc_EnableScrollingAndFadeOut::
	ld hl, hPalFadeFlags
	res SCROLL_LOCKED_F, [hl]
	ld hl, hEngineFlags
	set FADE_MODE_F, [hl] ; fade out
	ret

; adds random amount between [-64, 63]
; to object's x coordinate
Func_4a93::
	push bc
	ld hl, wObjectXCoords + $1
	add hl, bc
	add hl, bc
	add hl, bc
	call Random
	sra a ; /2
	ld b, 0
	bit 7, a
	jr z, .positive
	dec b ; -1
.positive
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a
	pop bc
	ret

Func_4aad::
	ld hl, wd3cc
	set 0, [hl]
	ret

ScriptFunc_SetObjectPalLight::
	ld hl, wObjectPropertyFlags
	add hl, bc
	res PROPERTY_PAL_F, [hl]
	ret

ScriptFunc_SetObjectPalDark::
	ld hl, wObjectPropertyFlags
	add hl, bc
	set PROPERTY_PAL_F, [hl]
	ret

ScriptFunc_SetKirbyPosition::
	ld hl, wObjectScreenXPositions
	add hl, bc
	ld a, [hl]
	sub $8
	ld [wKirbyScreenX], a
	ld hl, wObjectScreenYPositions
	add hl, bc
	ld a, [hl]
	sub $8
	ld [wKirbyScreenY], a
	ret

Func_4ad6::
	ld hl, wObjectPropertyFlags
	add hl, bc
	res PROPERTY_GRAVITY_F, [hl]
	res PROPERTY_SINKABLE_F, [hl]
	ret

Func_4adf::
	ld hl, wObjectStatuses
	add hl, bc
	set OBJSTAT_UNK4_F, [hl]
	ret

Func_4ae6::
	ld hl, wObjectStatuses
	add hl, bc
	set OBJSTAT_UNK2_F, [hl]
	ret

ScriptFunc_CreateExplosion::
	push bc
	ld hl, Data_1c16c
	call CreateObject_Group2
	ld d, b
	ld e, c
	pop bc
	call CopyObjectCoordinates
	ret

Func_4afb::
	ld hl, wd1a0
	add hl, bc
	set OBJFLAG_INHALED_F, [hl]
	ld hl, AnimScript_20003
	ld de, MotionScript_InhaledObject
	call SetObjectScripts
	ld hl, hKirbyFlags5
	set KIRBY5F_INHALING_OBJECT_F, [hl]
	ld hl, wd3f6
	inc [hl]
	ld a, $ff
	ld [wScriptCommand], a
	ret

Func_4b19::
	ld hl, wObjectScreenXPositions
	ld a, [hl]
	add hl, bc
	sub [hl]
	ret nc
	cpl
	inc a
	cp $2e
	ret nc
	jr Func_4b31

Func_4b27::
	ld hl, wObjectScreenXPositions
	ld a, [hl]
	add hl, bc
	sub [hl]
	ret c
	cp $2e
	ret nc
;	fallthrough

Func_4b31:
	ld a, [wDamageBlinkingCounter]
	and a
	ret nz
	ld hl, wObjectScreenYPositions
	ld a, [hl]
	add hl, bc
	sub [hl]
	jr nc, .asm_4b40
	cpl
	inc a
.asm_4b40
	cp $14
	ret nc
	ld a, $ff
	ld [wd3d2], a
	push bc
	ld a, c
	ld [wd3d3], a
	ld c, OBJECT_SLOT_KIRBY
	ld hl, AnimScript_203de
	ld de, MotionScript_Stationary
	call SetObjectScripts
	pop bc
	ret

Func_4b5a::
	ld de, MotionScript_Kirby_SpatOutLeft
	jr Func_4b62
Func_4b5f::
	ld de, MotionScript_Kirby_SpatOutRight
Func_4b62:
	push bc
	ld c, OBJECT_SLOT_KIRBY
	ld hl, AnimScript_203f6
	call SetObjectScripts
	pop bc
	ret

Func_4b6d::
	ld a, [wHP]
	and a
	ret z
	dec a
	ld [wHP], a
	ret

ScriptFunc_AddScore::
	ld d, $00
	ld hl, .ScoreValues
	add hl, de
	add hl, de
	ld de, wScore
	ld a, [de]
	add [hl]
	ld [de], a
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	ld [de], a
	inc de
	ld a, [de]
	adc 0
	ld [de], a
	call CapScore
	ret

.ScoreValues:
	dw   300 ; SCORE_300
	dw  1000 ; SCORE_1000
	dw   400 ; SCORE_400
	dw   650 ; SCORE_650
	dw     0 ; $4
	dw  2000 ; SCORE_2000
	dw   750 ; SCORE_750
	dw  2500 ; SCORE_2500
	dw     0 ; $8
	dw 10000 ; SCORE_10000

Func_4ba6::
	ld hl, wObjectPropertyFlags
	add hl, bc
	res PROPERTY_2_F, [hl]
	ret

Func_4bad::
	ld hl, wObjectPropertyFlags
	add hl, bc
	set PROPERTY_2_F, [hl]
	ret

; called when a Sparkling Star is collected
; or when the Mike item is activated
; defeats all enemies on screen
ClearAllEnemies::
	ld hl, wClearScreenFlags
	res CLEAR_ACTIVE_F, [hl]
	set CLEAR_UNK3_F, [hl]
	bit CLEAR_NON_MIKE_F, [hl]
	jr nz, .skip_overwrite_anim_script

	; it was a clear activated by the Mike
	; temporarily replaces Kirby's script with AnimScript_20405
	ld a, [wKirbyAnimScript + 1]
	push af
	ld a, [wKirbyAnimScript + 0]
	push af
	ld a, [wObjectAnimScriptPtrs + OBJECT_SLOT_KIRBY + 0]
	push af
	ld a, [wObjectAnimScriptPtrs + OBJECT_SLOT_KIRBY + 1]
	push af
	ld a, 1
	ld [wObjectAnimScriptTimers + OBJECT_SLOT_KIRBY], a
	ld a, LOW(AnimScript_20405)
	ld [wObjectAnimScriptPtrs + OBJECT_SLOT_KIRBY + 0], a
	ld a, HIGH(AnimScript_20405)
	ld [wObjectAnimScriptPtrs + OBJECT_SLOT_KIRBY + 1], a

.skip_overwrite_anim_script
	ld bc, OBJECT_SLOT_01
.loop_objects
	push bc
	ld hl, wObjectActiveStates
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next_object ; inactive
	ld hl, wClearScreenFlags
	res CLEAR_NEXT_OBJ_F, [hl]
	ld hl, wObjectStatuses
	add hl, bc
	ld a, [hl]
	ld hl, AnimScript_2037c
	bit OBJSTAT_UNK2_F, a
	jr nz, .defeated_without_score
	ld hl, wObjectPropertyFlags
	add hl, bc
	ld a, [hl]
	and PROPERTY_2 | PROPERTY_PERSISTENT
	jr nz, .next_object
	ld hl, wObjectPropertyPtrs
	add hl, bc
	add hl, bc
	ld a, [hli]
	add OBJ_INTERACTION
	ld h, [hl]
	incc h
	ld l, a
	ld a, [hli] ; OBJ_INTERACTION
	bit OBJINT_UNK3_F, a
	jr nz, .next_object
	bit OBJINT_VULNERABLE_F, a
	jr z, .next_object
	ld a, [hl] ; OBJ_SCORE
	ld [wScoreToAdd], a
	ld hl, wd1a0
	add hl, bc
	bit 0, [hl]
	jr nz, .next_object
	bit 7, [hl]
	jr nz, .defeated_with_score
	call DestroyObject
	jr .next_object

.defeated_with_score
	; double the score to add
	ld a, [wScoreToAdd]
	add a
	call AddToScore
	ld hl, AnimScript_2036c
.defeated_without_score
	ld de, MotionScript_Stationary
	call SetObjectScripts

; wait for star animation to finish
.loop_wait
	ld a, 1
	call DoFrames
	ld hl, wClearScreenFlags
	bit CLEAR_NEXT_OBJ_F, [hl]
	jr z, .loop_wait

.next_object
	pop bc
	inc c
	ld a, c
	cp NUM_OBJECT_SLOTS
	jr nz, .loop_objects
	xor a
	ld [wVirtualOAMSize], a
	ld hl, wClearScreenFlags
	res CLEAR_ACTIVE_F, [hl]
	res CLEAR_UNK3_F, [hl]
	bit CLEAR_NON_MIKE_F, [hl]
	ret nz ; skip loading backed up script

	ld hl, hKirbyFlags5
	res KIRBY5F_UNK5_F, [hl]
	ld a, 1
	ld [wObjectAnimScriptTimers + OBJECT_SLOT_KIRBY], a
	pop af
	ld [wObjectAnimScriptPtrs + OBJECT_SLOT_KIRBY + 1], a
	pop af
	ld [wObjectAnimScriptPtrs + OBJECT_SLOT_KIRBY + 0], a
	pop af
	ld [wKirbyAnimScript + 0], a
	pop af
	ld [wKirbyAnimScript + 1], a
	ret

Func_4c7b::
	call SetObjectVelocity
	ld a, e
	ld [wd3f3 + 1], a
	ld a, d
	ld [wd3f3 + 0], a
	ret

Func_4c87::
	ld e, NUM_OBJECT_SLOTS
	ld d, $00
.loop
	ld a, e
	cp c
	jr z, .next_obj
	ld hl, wObjectAnimScriptTimers
	add hl, de
	ld [hl], $00
.next_obj
	ld a, e
	and a
	ret z
	dec e
	jr .loop

InflictHalfDamage_MoveDown::
	ld a, [wDamageBlinkingCounter]
	and a
	jp nz, InflictHalfDamage_MoveUp.set_carry
	ld hl, wInvincibilityCounter
	ld a, [hli]
	or [hl]
	jp nz, InflictHalfDamage_MoveUp.set_carry

	; halve HP
	ld a, [wHP]
	srl a
	ld [wHP], a

	ld a, DAMAGE_BLINK_DURATION
	ld [wDamageBlinkingCounter], a

	ld a, [wd1a0 + OBJECT_SLOT_KIRBY]
	set OBJFLAG_BLINKING_F, a
	ld [wd1a0 + OBJECT_SLOT_KIRBY], a

	ld a, SFX_LOSE_LIFE
	call PlaySFX

	ld de, MotionScript_Kirby_HitBySpikesDown
	ld hl, AnimScript_201dc
	ld bc, OBJECT_SLOT_KIRBY
	call SetObjectScripts
.asm_4cd0
	ld a, 1
	call DoFrames
	ld hl, hKirbyFlags5
	bit KIRBY5F_UNK5_F, a ; bug, should be [hl]
	jr nz, .asm_4cd0
	ld a, $01
	ld [wKirbyAnimScript + 0], a
	ld a, HIGH(1.5)
	ld [wKirbyYVel + 0], a
	ld a, LOW(1.5)
	ld [wKirbyYVel + 1], a
	xor a
	ret

InflictHalfDamage_MoveUp::
	ld a, [wDamageBlinkingCounter]
	and a
	jr nz, .set_carry
	ld hl, wInvincibilityCounter
	ld a, [hli]
	or [hl]
	jr nz, .set_carry

	; halve HP
	ld a, [wHP]
	srl a
	ld [wHP], a

	ld a, SFX_LOSE_LIFE
	call PlaySFX

	ld a, DAMAGE_BLINK_DURATION
	ld [wDamageBlinkingCounter], a

	ld a, [wd1a0 + OBJECT_SLOT_KIRBY]
	set OBJFLAG_BLINKING_F, a
	ld [wd1a0 + OBJECT_SLOT_KIRBY], a

	ld de, MotionScript_Kirby_HitBySpikesUp
	ld hl, AnimScript_201dc
	ld bc, OBJECT_SLOT_KIRBY
	call SetObjectScripts
.asm_4d20
	ld a, 1
	call DoFrames
	ld hl, hKirbyFlags5
	bit KIRBY5F_UNK5_F, a ; bug, should be [hl]
	jr nz, .asm_4d20
	ld a, $01
	ld [wKirbyAnimScript + 0], a
	ld a, HIGH(-1.5)
	ld [wKirbyYVel + 0], a
	ld a, LOW(-1.5)
	ld [wKirbyYVel + 1], a
	xor a
	ret
.set_carry
	scf
	ret

_StartLevelAfterContinue::
	xor a
	ld [wKirbyAnimScript + 0], a
	ld [wKirbyAnimScript + 1], a
	xor a ; unnecessary
	ld [wSCX], a
	ld [wSCY], a
	ld [wKirbyXAccumulator], a
	ld [wd056], a

	ld a, [hHUDFlags]
	or HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_LIVES
	ld [hHUDFlags], a

	ld a, [hKirbyFlags3]
	and KIRBY3F_FACE_LEFT
	ld [hKirbyFlags3], a

	ld a, [hKirbyFlags2]
	and $ff ^ (KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_UNK5 | KIRBY2F_UNK6)
	ld [hKirbyFlags2], a

	; reset everything except KIRBY1F_WALK_LEFT
	ld a, [hKirbyFlags1]
	and KIRBY1F_WALK_LEFT
	ld [hKirbyFlags1], a

	ld bc, $0
	ld a, [wLevelWidth]
	ld b, a
	ld a, [wLevelYSection]
	dec a
	ld e, a
	call FixedPointMultiply
	ld h, $00
	ld a, [wLevelXSection]
	dec a
	ld l, a
	add hl, bc
	ld b, h
	ld c, l
	ld hl, wLevelBlockMap
	add hl, bc
	call Func_1964
	ld a, $16
	ld [wd065], a

	ld a, 0.125
	ld [wKirbyXAcceleration], a
	ld a, 0.055
	ld [wKirbyXDeceleration], a
	ld a, 0.082
	ld [wKirbyYAcceleration], a
	ld a, HIGH(1.2)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(1.2)
	ld [wKirbyMaxXVel + 1], a
	ld a, HIGH(2.0)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(2.0)
	ld [wKirbyMaxYVel + 1], a

	xor a
	ld [wKirbyXVel + 0], a
	ld [wKirbyXVel + 1], a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ld [wd064], a
	ld [wVirtualOAMSize], a

	call Func_21fb
	call Func_139b
	call UpdateObjects
	call StopTimerAndSwitchOnLCD
	call FadeIn

	ld a, [wOverrideMusic]
	cp MUSIC_NONE
	ret z
	ld [wLevelMusic], a
	call PlayMusic
	ld a, MUSIC_NONE
	ld [wOverrideMusic], a
	ret
; 0x4def
