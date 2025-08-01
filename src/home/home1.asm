Func_246::
	xor a
	ld [wVirtualOAMSize], a

	ld a, [wROMBank]
	push af
ASSERT BANK(ProcessObjectInteractions) == BANK(InhaleObjectsInRange)
	ld a, BANK(ProcessObjectInteractions)
	bankswitch
	call ProcessObjectInteractions
	call InhaleObjectsInRange
	pop af
	bankswitch

	call Func_319d
	call UpdateObjects
	call ClearSprites

	ld hl, hKirbyFlags6
	bit KIRBY6F_UNK3_F, [hl]
	jr z, .check_fall_in_pit
	ld a, [wd06a]
	inc a
	ld [wd06a], a
	cp $0f
	jr c, .check_fall_in_pit
	res KIRBY6F_UNK3_F, [hl]
.check_fall_in_pit
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
	jr z, .check_transition_trigger
	res HUD_UPDATE_SCORE_DIGITS_F, [hl]
	call GetScoreDigitTiles

.check_transition_trigger
	ldh a, [hKirbyFlags5]
	bit KIRBY5F_TRIGGER_TRANSITION_F, a
	jp z, .no_transition ; can be jr
	ld a, BANK(HandleStageTransition)
	bankswitch
	jp HandleStageTransition
.no_transition
	ld hl, hKirbyFlags5
	bit KIRBY5F_UNK5_F, [hl]
	jr z, .asm_2d1
	ld hl, hVBlankFlags
.loop_frames
	; wait VBlank
	set VBLANK_PENDING_F, [hl]
.loop_wait_vblank
	bit VBLANK_PENDING_F, [hl]
	jr nz, .loop_wait_vblank
	push hl
	xor a
	ld [wVirtualOAMSize], a
	call UpdateObjects
	call ClearSprites
	pop hl
	ldh a, [hKirbyFlags5]
	bit KIRBY5F_UNK5_F, a
	jr nz, .loop_frames
	jr .check_transition_trigger

.asm_2d1
	ld hl, hKirbyFlags5
	bit KIRBY5F_DAMAGED_F, [hl]
	jr z, .skip_damage_knock_back
	ldh a, [hVBlankFlags]
	and VBLANK_5
	jr nz, .skip_damage_knock_back
	ld a, [wDamageKnockBack]
	ld c, a
	inc a
	ld [wDamageKnockBack], a
	ld b, $00
	ld hl, DamageKnockBackVelocities
	add hl, bc
	ld a, [hl]
	and a
	jr z, .end_damage_knock_back
	; apply damage knock back
	ld [wKirbyXVel + 0], a
	xor a
	ld [wKirbyXVel + 1], a
	ld hl, hKirbyFlags5
	bit KIRBY5F_DAMAGE_KNOCK_BACK_LEFT_F, [hl]
	jr nz, .knock_back_left
; knock back right
	call Func_4000
	jr .reset_x_vel
.knock_back_left
	call Func_417c
.reset_x_vel
	xor a
	ld [wKirbyXVel + 0], a
.skip_damage_knock_back
	ldh a, [hVBlankFlags]
	set VBLANK_PENDING_F, a
	ldh [hVBlankFlags], a
	jp StageLoop_SkipHUDUpdate

.end_damage_knock_back
	ld hl, hKirbyFlags5
	res KIRBY5F_DAMAGED_F, [hl]
	ld hl, hEngineFlags
	set ENGINEF_UNK6_F, [hl]
	xor a
	ld [wKirbyXVel + 0], a
	ld [wKirbyXVel + 1], a
	jr .skip_damage_knock_back

Func_326::
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	ret nz
	ld hl, hKirbyFlags6
	bit KIRBY6F_UNK5_F, [hl]
	jr z, .asm_354
	res KIRBY6F_UNK5_F, [hl]
	ld a, SFX_LOSE_LIFE
	call PlaySFX
	ld a, [wCurMusic]
	cp MUSIC_MINT_LEAF
	jr nz, .asm_359
	ld a, [wLevelMusic]
	call PlayMusic
	xor a
	ld [wFoodPowerUpCounter + 0], a
	ld [wFoodPowerUpCounter + 1], a
	ld hl, wd1a0
	res 4, [hl]
	jr .asm_359
.asm_354
	ld a, SFX_20
	call PlaySFX
.asm_359
	ldh a, [hKirbyFlags2]
	set KIRBY2F_UNK6_F, a
	set KIRBY2F_UNK5_F, a
	bit KIRBY2F_INHALE_F, a
	jr z, .asm_365
	set KIRBY2F_SPIT_F, a
.asm_365
	ldh [hKirbyFlags2], a
	bit KIRBY2F_HOVER_F, a
	jr nz, .asm_373
	ld a, [wObjectPropertyFlags + OBJECT_SLOT_KIRBY]
	set PROPERTY_PRIORITY_F, a
	ld [wObjectPropertyFlags + OBJECT_SLOT_KIRBY], a
.asm_373
	and $ff ^ (KIRBY1F_WALK | KIRBY1F_GROUNDED | KIRBY1F_AIRBORNE)
	ldh [hKirbyFlags1], a
	ldh a, [hKirbyFlags3]
	and ~(KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE)
	ldh [hKirbyFlags3], a
	xor a
	ld [wd064], a
	ld [wUnkTimer], a
	ld a, HIGH(0.656)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(0.656)
	ld [wKirbyMaxXVel + 1], a
	ret

Func_38f::
	ld a, HIGH(-0.156)
	ld [wKirbyYVel + 0], a
	ld a, LOW(-0.156)
	ld [wKirbyYVel + 1], a
	ld a, HIGH(2.0)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(2.0)
	ld [wKirbyMaxYVel + 1], a
	ld a, 0.082
	ld [wKirbyYAcceleration], a
	xor a
	ld [wd064], a
	ldh a, [hKirbyFlags3]
	and ~(KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE)
	ldh [hKirbyFlags3], a
	ret

; adds wKirbyYAcceleration to wKirbyYVel
; also limits this velocity to wKirbyMaxYVel
ApplyKirbyYAcceleration::
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_UNK6_F, a
	jr nz, .asm_3f2

	ld a, [wKirbyMaxYVel + 0]
	ld d, a
	ld a, [wKirbyMaxYVel + 1]
	ld e, a
	; de = max Y vel

	; add wKirbyYAcceleration to wKirbyYVel
	ld a, [wKirbyYVel + 1]
	ld b, a
	ld a, [wKirbyYAcceleration]
	add b
	ld [wKirbyYVel + 1], a
	ld a, [wKirbyYVel + 0]
	adc 0
	ld [wKirbyYVel + 0], a

	bit 7, a ; negative?
	jr nz, Func_426
	; is positive, compare to de
	cp d
	jr c, Func_426
	; unnecessary, check was done above
	ld a, [wKirbyYVel + 0]
	bit 7, a
	jr nz, Func_426
	; overwrite with d
	ld a, d
	ld [wKirbyYVel + 0], a
	ld a, [wKirbyYVel + 1]
	cp e
	jr c, Func_426
	; overwrite with e
	ld a, e
	ld [wKirbyYVel + 1], a
	jr Func_426

.asm_3f2
	ld a, HIGH(-1.3)
	ld d, a
	ld a, LOW(-1.3)
	ld e, a
	ld a, [wKirbyYAcceleration]
	ld b, a
	ld a, [wKirbyYVel + 1]
	sub b
	ld [wKirbyYVel + 1], a
	ld a, [wKirbyYVel + 0]
	sbc 0
	bit 7, a
	jr nz, .asm_411
.asm_40c
	ld [wKirbyYVel + 0], a
	jr Func_426
.asm_411
	cp d
	jr z, .asm_416
	jr nc, .asm_40c
.asm_416
	ld a, d
	ld [wKirbyYVel + 0], a
	ld a, [wKirbyYVel + 1]
	cp e
	jr z, .asm_422
	jr nc, Func_426 ; [wKirbyYVel + 1] > e
.asm_422
	ld a, e
	ld [wKirbyYVel + 1], a
;	fallthrough

; input:
; - [wKirbyYVel + 0] = ?
; - [wKirbyYVel + 1] = ?
Func_426::
	ld a, [wKirbyYVel + 0]
	bit 7, a
	jr z, .positive_vel

; negative vel
	ldh a, [hVBlankFlags]
	and $ff ^ VBLANK_3
	or VBLANK_2
	ldh [hVBlankFlags], a

	; subtract abs(LOW(wKirbyYVel)) from wd056
	ld a, [wKirbyYVel + 1]
	cpl
	inc a
	ld b, a
	ld a, [wd056]
	sub b
	ld [wd056], a
	ld a, [wKirbyYVel + 0]
	sbc 0
	jr z, .asm_47a
	cpl
	ld b, a
	ldh a, [hKirbyFlags1]
	and ~UNK_BITMASK
	or b
	ldh [hKirbyFlags1], a
	jp Func_4783

.positive_vel
	ldh a, [hVBlankFlags]
	and $ff ^ VBLANK_2
	or VBLANK_3
	ldh [hVBlankFlags], a

	; add LOW(wKirbyYVel) to wd056
	ld a, [wKirbyYVel + 1]
	ld b, a
	ld a, [wd056]
	add b
	ld [wd056], a
	ld a, [wKirbyYVel + 0]
	adc 0
	jr z, .asm_47a
	ld b, a
	ldh a, [hKirbyFlags1]
	and ~UNK_BITMASK
	or b
	ldh [hKirbyFlags1], a
	jp Func_4783

.asm_47a
	ldh a, [hVBlankFlags]
	and $ff ^ (VBLANK_2 | VBLANK_3)
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
	ld a, [wLevelXSection]
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
	ld a, [wLevelWidth]
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
	ld a, [wLevelYSection]
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
	ld hl, wMtDededeClearedAreas
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
	ld hl, hKirbyFlags4
	bit KIRBY4F_UNK4_F, [hl]
	jr nz, .asm_566
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK5_F, a
	jr nz, .asm_548
	ld hl, hKirbyFlags2
	ld a, [hl]
	and KIRBY2F_MOUTHFUL | KIRBY2F_HOVER
	jr z, .asm_566
	bit KIRBY2F_SPIT_F, [hl]
	jr nz, .asm_566
	set KIRBY2F_SPIT_F, [hl]
	ld a, [wPowerUpAttack]
	and $ff ^ (POWERUP_MIKE | POWERUP_BOMB)
	ld [wPowerUpAttack], a
	ld a, $04
	ld [wd094], a

	; force a Star or Puff spit
	ld a, [hl]
	bit KIRBY2F_HOVER_F, a
	push af ; unnecessary push/pop
	call z, StarSpit
	pop af ; unnecessary push/pop
	call nz, PuffSpit

.asm_548
	call Func_139b
	ld b, $13
.asm_54d
	call WaitVBlank
	push bc
	xor a
	ld [wVirtualOAMSize], a
	call UpdateObjects
	call ClearSprites
	pop bc
	ld a, [wd094]
	cp $01
	jr z, .asm_566
	dec b
	jr nz, .asm_54d
.asm_566
	xor a
	ld [wKirbyAnimScript + 0], a
	ld [wKirbyAnimScript + 1], a

	ldh a, [hKirbyFlags3]
	bit KIRBY3F_FACE_LEFT_F, a
	jr nz, .asm_578
	ld hl, AnimScript_20566
	jr .asm_57b
.asm_578
	ld hl, AnimScript_2056c
.asm_57b
	ld de, MotionScript_157a
	ld bc, OBJECT_SLOT_KIRBY
	call SetObjectScripts

	xor a
	ldh [hVBlankFlags], a
	ldh [hKirbyFlags1], a
	ldh [hKirbyFlags4], a
	call Func_19c9
	call FadeOut
	call LoadArea
	pop hl
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld e, a
	ld a, [wLevelWidth]
	ld b, a
	push de
	call FixedPointMultiply
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
	ld [wLevelXSection], a
	ld a, e
	inc a
	ld [wLevelYSection], a
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

	ldh a, [hKirbyFlags3]
	and KIRBY3F_FACE_LEFT
	ldh [hKirbyFlags3], a
	ld hl, wLevelBlockMap
	add hl, bc
	call Func_1964
	ld a, $16
	ld [wd065], a
	xor a
	ldh [hKirbyFlags2], a
	ld [wKirbyXVel + 0], a
	ld [wKirbyXVel + 1], a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ld [wd064], a
	ld [wVirtualOAMSize], a

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
	call Func_21fb
	call Func_139b
	call UpdateObjects
	call ClearSprites
	call StopTimerAndSwitchOnLCD
	call FadeIn
	ld a, VBLANK_3
	ldh [hVBlankFlags], a
	ld a, [wOverrideMusic]
	cp MUSIC_NONE
	jr z, .asm_641
	ld [wLevelMusic], a
	call PlayMusic
	ld a, MUSIC_NONE
	ld [wOverrideMusic], a
.asm_641
	xor a
	ret

; returns carry if value in a
; is not aligned to 4 bits
; (ie bottom 4 bits not zero)
Is4BitUnaligned::
	and $0f
	ret z
	scf
	ret

; fades palettes out
FadeOut::
	push hl
	ldh a, [hEngineFlags]
	and ~PROCESS_BG_QUEUE
	ldh [hEngineFlags], a
	ldh a, [hPalFadeFlags]
	or SCROLLINGF_UNK3 | FADE_OUT | FADE_ON
	ldh [hPalFadeFlags], a
.loop_wait_fade
	xor a
	ld [wVirtualOAMSize], a
	call UpdateObjects
	call ClearSprites
	wait_vblank
	ldh a, [hPalFadeFlags]
	bit FADE_ON_F, a
	jr nz, .loop_wait_fade
	pop hl
	ret

; fades palettes in
FadeIn::
	ldh a, [hEngineFlags]
	and ~PROCESS_BG_QUEUE
	ldh [hEngineFlags], a
	ldh a, [hPalFadeFlags]
	and $fc ^ (FADE_OUT | FADE_ON)
	or SCROLLINGF_UNK3 | FADE_IN | FADE_ON
	ldh [hPalFadeFlags], a
.loop_wait_fade
	wait_vblank
	ldh a, [hPalFadeFlags]
	bit FADE_ON_F, a
	jr nz, .loop_wait_fade
	ret

; read the joypad register and translate it to something more
; workable for use in-game. There are 8 buttons, so we can use
; one byte to contain all player input.
ReadJoypad:
	ldh a, [hVBlankFlags]
	bit VBLANK_IGNORE_INPUT_F, a
	ret nz ; ignoring input

; can only get four inputs at a time
; take d-pad first
	ld a, JOYP_GET_CTRL_PAD
	ldh [rJOYP], a

; wait some cycles
REPT 5
	push hl
	pop hl
ENDR

; store the d-pad value
	ldh a, [rJOYP]
	and JOYP_INPUTS
	ld c, a

; take the buttons values next
	ld a, JOYP_GET_BUTTONS
	ldh [rJOYP], a

; wait some cycles
REPT 5
	push hl
	pop hl
ENDR

	ldh a, [rJOYP]
	and JOYP_INPUTS

	; button bits on lower nybble, d-pad on higher nybble
	swap c
	or c
	cpl
	ld b, a
	and PAD_BUTTONS
	cp PAD_A | PAD_B | PAD_SELECT | PAD_START
	jr nz, .no_reset

; soft reset game
	ld a, VBLANK_IGNORE_INPUT
	ldh [hVBlankFlags], a
	ei
	call FadeOut
	call ResetTimer
	jp Reset

.no_reset
	ld a, [wNonStickyKeys]
	ld c, a
	ldh a, [hKirbyFlags4]
	and PAD_B ; KIRBY4F_NONSTICKY_B
	or c
	ld c, a
	ld a, [wJoypadDown] ; keys that were already down
	and c
	and b
	xor b
	ldh [hJoypadPressed], a
	ld a, b
	ld [wJoypadDown], a

; reset joypad
	ld a, JOYP_GET_NONE
	ldh [rJOYP], a
	ret

Func_6ec::
	ldh a, [hVBlankFlags]
	and VBLANK_5
	ret nz
	ldh [hVBlankFlags], a
	ld hl, hPalFadeFlags
	bit SCROLL_LOCKED_F, [hl]
	jr nz, .asm_708
	ld hl, hEngineFlags
	ld a, [wKirbyScreenX]
	cp $45
	jr c, .asm_70e
	cp $4b
	jr nc, .asm_733
.asm_708
	ld hl, hEngineFlags
	res ENGINEF_UNK6_F, [hl]
	ret
.asm_70e
	bit ENGINEF_XWARP_F, [hl]
	jr nz, .asm_720
	ld a, [wLevelXSection]
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
	bit ENGINEF_XWARP_F, [hl]
	jr nz, .asm_747
	ld a, [wd042]
	and a
	jr z, .asm_708
	inc a
	ld b, a
	ld a, [wLevelXSection]
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

; output:
; - hl = y coordinate
GetKirbyLevelYCoord:
	push bc
	push de
	ld a, [wLevelYSection]
	sub 1
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld b, $00
	ld a, [wd05f]
	ld c, a
	add hl, bc
	ld a, [wSCY]
	and $0f
	ld b, $00
	ld c, a
	add hl, bc
	; hl = (wLevelYSection - 1) * 16 + wd05f + (wSCY & 0x0f)
	pop de
	pop bc
	ret

; output:
; - hl = x coordinate
GetKirbyLevelXCoord::
	push bc
	push de
	ld a, [wLevelXSection]
	sub 1
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld b, $00
	ld a, [wd05e]
	sub 8
	ld c, a
	add hl, bc
	ld a, [wSCX]
	and $0f
	ld b, $00
	ld c, a
	add hl, bc
	; hl = (wLevelXSection - 1) * 16 + (wd05e - 8) + (wSCX & 0x0f)
	pop de
	pop bc
	ret

Func_7a7:
	ld [wd05f], a
	call GetKirbyLevelYCoord
	call ConvertPositionCoordinateToBlock
	ld a, c
	dec a
	dec a
	jr Func_7bf
Func_7b5:
	ld [wd05f], a
	call GetKirbyLevelYCoord
	call ConvertPositionCoordinateToBlock
	ld a, c
;	fallthrough
Func_7bf:
	ld [wd05f], a
	ld a, [wKirbyScreenX]
	add $08
	ld [wd05e], a
	jp Func_7cd ; useless jump

; input:
; - [wd05f] = ?
; output:
; - a = block type
Func_7cd:
	push bc
	push de
	push hl
	; if wd05f == 0xff, return 0
	ld a, [wd05f]
	cp $ff
	jr z, .return_zero
	ld b, a
	ld a, [wLevelWidth]
	ld e, a
	call FixedPointMultiply
	; bc = wd05f * wLevelWidth
	ld hl, wLevelBlockMap
	add hl, bc
	push hl
	call GetKirbyLevelXCoord
	call ConvertPositionCoordinateToBlock
	pop hl
	ld a, [wLevelWidth]
	cp c
	jr z, .rightmost_block
	xor a
	cp c
	jr z, .leftmost_block
	dec bc
	inc hl
.leftmost_block
	ld a, [wLevelWidth]
	sub 2
	cp c
	jr nc, .asm_808
.rightmost_block
	ld a, [wLevelWidth]
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
	ld hl, wBlockTypesByID
	add hl, bc
	ld a, [hl]
.done
	pop hl
	pop de
	pop bc
	ret
.return_zero
	xor a ; BLOCK_0
	jr .done

Func_819::
	push bc
	push de
	push hl
	call GetKirbyLevelYCoord
	call ConvertPositionCoordinateToBlock
	ld b, c
	ld a, [wLevelWidth]
	ld e, a
	call FixedPointMultiply
	ld hl, wLevelBlockMap
	add hl, bc
	ldh a, [hEngineFlags]
	ld b, a
	ld a, [wd05e]
	ld c, a
	bit ENGINEF_XWARP_F, b
	jr z, .asm_850
	cp $01
	jr z, .asm_84b
	ld a, [wLevelWidth]
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
	ld a, [wLevelWidth]
	add e
	ld c, a
.asm_850
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld c, a
	ld b, $00
	ld hl, wBlockTypesByID
	add hl, bc
	ld a, [hl]
	pop hl
	pop de
	pop bc
	ret

; adds wKirbyXAcceleration to wKirbyXVel
; also limits this velocity to wKirbyMaxXVel
ApplyKirbyXAcceleration:
	ld a, [wKirbyXAcceleration]
	ld d, a
	ld a, [wKirbyMaxXVel + 0]
	ld b, a
	ld a, [wKirbyMaxXVel + 1]
	ld c, a
	ld a, [wKirbyXVel + 1]
	add d
	ld [wKirbyXVel + 1], a
	ld a, [wKirbyXVel + 0]
	adc 0
	cp b
	jr nc, .cap_vel
	ld [wKirbyXVel + 0], a
	ret
.cap_vel
	ld a, b
	ld [wKirbyXVel + 0], a
	ld a, [wKirbyXVel + 1]
	cp c
	ret c
	ld a, c
	ld [wKirbyXVel + 1], a
	ret

Func_88d:
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_WALK_LEFT_F, a
	jr nz, .walking_left
	jr .walking_right ; useless jump
.walking_right
	call .Decelerate
	call Func_4000
	jp nc, Func_990
	call Func_1062
	jp Func_990
.walking_left
	call .Decelerate
	call Func_417c
	jp nc, Func_9d6
	call Func_110b
	jp Func_9d6

.Decelerate:
	ld a, [wKirbyXDeceleration]
	ld b, a
	ld a, [wKirbyXVel + 1]
	sub b
	ld [wKirbyXVel + 1], a
	ld a, [wKirbyXVel + 0]
	sbc 0
	ld [wKirbyXVel + 0], a
	jr c, StopKirbyWalking
	bit 7, a
	ret z
;	fallthrough

; resets flag of Kirby walking
; and zeroes x velocity
StopKirbyWalking::
	xor a
	ld [wKirbyXVel + 1], a
	ld [wKirbyXVel + 0], a
	ld [wd04d], a
	ldh a, [hKirbyFlags1]
	res KIRBY1F_WALK_F, a
	ldh [hKirbyFlags1], a
	ret

Func_8dc::
	; skip if hovering
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_HOVER_F, a
	ret nz

	ldh a, [hKirbyFlags3]
	and KIRBY3F_DIVE_BOUNCE
	ret nz

	; skip if airborne
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_AIRBORNE_F, a
	ret nz

	set KIRBY1F_AIRBORNE_F, a
	set 0, a
	ldh [hKirbyFlags1], a
	ldh a, [hKirbyFlags3]
	and ~(KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE | KIRBY3F_UNK6)
	ldh [hKirbyFlags3], a
	ld a, $16
	ld [wd065], a
	xor a
	ld [wd064], a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ld a, HIGH(2.0)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(2.0)
	ld [wKirbyMaxYVel + 1], a
	ldh a, [hVBlankFlags]
	or VBLANK_3 | VBLANK_4
	ldh [hVBlankFlags], a
	ret

Func_917::
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK5_F, a
	jr nz, .asm_97b
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_WALK_F, a
	jr z, .asm_97b
	ldh a, [hVBlankFlags]
	and VBLANK_0 | VBLANK_1
	jp z, Func_88d
	swap a
	ld b, a
	ldh a, [hKirbyFlags1]
	and KIRBY1F_WALK_LEFT
	jr z, .asm_956
	and b
	jr nz, .asm_97b
	ldh a, [hVBlankFlags]
	res VBLANK_0_F, a
	ldh [hVBlankFlags], a
	bit VBLANK_4_F, b
	jp z, Func_88d

	ld a, [wKirbyXVel + 0]
	cp HIGH(1.0)
	jp c, Func_88d
	; x vel >= 1.0
	ld a, HIGH(0.5)
	ld [wKirbyXVel + 0], a
	ld a, LOW(0.5)
	ld [wKirbyXVel + 1], a
	jp Func_88d

.asm_956
	bit 4, b
	jp nz, .asm_97b
	ldh a, [hVBlankFlags]
	res VBLANK_1_F, a
	ldh [hVBlankFlags], a
	bit VBLANK_5_F, b
	jp z, Func_88d

	ld a, [wKirbyXVel + 0]
	cp HIGH(1.0)
	jp c, Func_88d
	; x vel >= 1.0
	ld a, HIGH(0.5)
	ld [wKirbyXVel + 0], a
	ld a, LOW(0.5)
	ld [wKirbyXVel + 1], a
	jp Func_88d

.asm_97b
	ldh a, [hVBlankFlags]
	bit VBLANK_0_F, a
	jr z, Func_998
	call ApplyKirbyXAcceleration
	ldh a, [hKirbyFlags1]
	set KIRBY1F_WALK_F, a
	ldh [hKirbyFlags1], a
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
	ld hl, hKirbyFlags6
	bit KIRBY6F_UNK6_F, [hl]
	jr z, .asm_9c0
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK5_F, a
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
	ldh a, [hKirbyFlags3]
	and ~(KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE)
	ldh [hKirbyFlags3], a
	call Func_11de
.asm_9c0
	ldh a, [hVBlankFlags]
	bit VBLANK_1_F, a
	jp z, Func_9de
	call ApplyKirbyXAcceleration
	ldh a, [hKirbyFlags1]
	set KIRBY1F_WALK_F, a
	ldh [hKirbyFlags1], a
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
	ldh a, [hKirbyFlags4]
	res KIRBY4F_UNK7_F, a
	ldh [hKirbyFlags4], a
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK5_F, a
	jp nz, .asm_ab8
	ld a, [wKirbyScreenY]
	ld [wd05f], a

	call GetKirbyLevelYCoord
	ld d, 0
	ldh a, [hKirbyFlags1]
	and UNK_BITMASK
	jp z, .asm_ab8
	ld e, a
.asm_a05
	ld a, l
	call Is4BitUnaligned
	jr nc, .asm_a13
	dec hl
	inc d
	dec e
	jr nz, .asm_a05
	jp .asm_ab8

.asm_a13
	call ConvertPositionCoordinateToBlock
	ld a, c
	dec a
	dec a
	ld [wd05f], a
	ld a, [wKirbyScreenX]
	add $03
	ld [wd05e], a
	call Func_7cd
	ld c, BLOCK_0
	ld b, a
	and a
	jr z, .asm_a3f
	cp BLOCK_1
	jr z, .asm_a3f
	cp BLOCK_WATER
	jr z, .asm_a3f
	cp BLOCK_7
	jr nz, .asm_a63
	ldh a, [hKirbyFlags4]
	set KIRBY4F_UNK6_F, a
	ldh [hKirbyFlags4], a
.asm_a3f
	ld a, [wKirbyScreenX]
	add $0c
	ld [wd05e], a
	call Func_7cd
	ld c, a
	and a
	jp z, .asm_ab8
	cp BLOCK_1
	jp z, .asm_ab8
	cp BLOCK_WATER
	jp z, .asm_ab8
	cp BLOCK_7
	jr nz, .asm_a63
	ldh a, [hKirbyFlags4]
	set KIRBY4F_UNK6_F, a
	ldh [hKirbyFlags4], a
.asm_a63
	ld a, [wKirbyScreenY]
	cp $10
	jp z, .asm_a9e
	jp c, .asm_a9e
	ld a, [wDamageBlinkingCounter]
	ld hl, wInvincibilityCounter
	or [hl]
	inc hl
	or [hl]
	jr nz, .asm_aa4
	ld a, b
	and a
	jr z, .asm_a87
	cp BLOCK_7
	jr z, .asm_a87
	cp BLOCK_8
	jr nz, .asm_a9e
	jr .asm_a93
.asm_a87
	ld a, c
	and a
	jr z, .asm_a93
	cp BLOCK_7
	jr z, .asm_ab8
	cp BLOCK_8
	jr nz, .asm_a9e
.asm_a93
	push bc
	push de
	call InflictHalfDamage_MoveDown
	pop de
	pop bc
	jr c, .asm_aa9
	jr .asm_ab8
.asm_a9e
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	jr nz, .asm_aa9
.asm_aa4
	push de
	call Func_c85
	pop de
.asm_aa9
	ld a, $16
	ld [wd065], a
	xor a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ld a, d
	jr .asm_abc

.asm_ab8
	ldh a, [hKirbyFlags1]
	and UNK_BITMASK
.asm_abc
	ld [wd061], a
	ld b, a
	ldh a, [hPalFadeFlags]
	bit SCROLL_LOCKED_F, a
	jr nz, .scroll_locked
	ld c, $4c
	ld a, [wLevelYSection]
	cp $01
	jr nz, .asm_ad8
	ld a, [wSCY]
	and $0f
	jr nz, .asm_ad8
.scroll_locked
	ld c, $10
.asm_ad8
	ld a, [wKirbyScreenY]
	sub c
	ld [wKirbyScreenDeltaY], a
	sub b
	jr c, .move_down
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
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	jp .asm_bba

.move_down
	call MoveKirbyDown
	ldh a, [hPalFadeFlags]
	bit SCROLL_LOCKED_F, a
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
	call Is4BitUnaligned
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
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ld a, $16
	ld [wd065], a
	jr .asm_baf
.asm_b68
	ld a, [wLevelYSection]
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
	ld a, [wLevelYSection]
	dec a
	jr z, .asm_b8e
	dec a
.asm_b8e
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
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_UNK6_F, a
	jr z, .asm_be0
	ld a, [wDamageBlinkingCounter]
	ld hl, wInvincibilityCounter
	or [hl]
	inc hl
	or [hl]
	jr nz, .asm_be0
	ld a, [wKirbyScreenY]
	add $18
	call Func_7a7
	cp BLOCK_7
	jp z, InflictHalfDamage_MoveDown
.asm_be0
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	jp z, Func_caf
	ld a, [wKirbyScreenY]
	cp $71
	jp nc, Func_caf
	dec a
	call Func_7b5
	cp BLOCK_WATER
	jp z, Func_caf
	ldh a, [hKirbyFlags3]
	and $ff ^ (SQUISH_BITMASK | KIRBY3F_UNK6 | KIRBY3F_SQUISHED)
	ldh [hKirbyFlags3], a
	ld a, [wObjectPropertyFlags + OBJECT_SLOT_KIRBY]
	res PROPERTY_PRIORITY_F, a
	ld [wObjectPropertyFlags + OBJECT_SLOT_KIRBY], a
	ldh a, [hKirbyFlags2]
	and $ff ^ (KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_UNK5 | KIRBY2F_UNK6)
	ldh [hKirbyFlags2], a
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK6_F, a
	jr nz, .asm_c82
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_HOVER_F, a
	jr nz, .asm_c59
.asm_c18
	ld a, HIGH(2.0)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(2.0)
	ld [wKirbyMaxYVel + 1], a
	ld a, HIGH(1.2)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(1.2)
	ld [wKirbyMaxXVel + 1], a
	ldh a, [hPalFadeFlags]
	res SCROLLINGF_UNK3_F, a
	ldh [hPalFadeFlags], a
	ldh a, [hKirbyFlags3]
	res KIRBY3F_UNK6_F, a
	ldh [hKirbyFlags3], a
	ldh a, [hKirbyFlags1]
	set KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	set KIRBY1F_JUMP_RISE_F, a
	ldh [hKirbyFlags1], a
	ld a, $16
	xor a
	ld [wd065], a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_HOVER_F, a
	ret z
	ld a, $16
	ld [wd065], a
	ret
.asm_c59
	bit KIRBY2F_SPIT_F, a
	jr nz, .asm_c18
	ldh a, [hKirbyFlags1]
	res KIRBY1F_GROUNDED_F, a
	ldh [hKirbyFlags1], a
	ld a, HIGH(0.797)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(0.797)
	ld [wKirbyMaxYVel + 1], a
	ld a, HIGH(0.0)
	ld [wKirbyMaxXVel + 0], a
	ld a, LOW(0.0)
	ld [wKirbyMaxXVel + 0], a ; bug, should be [wKirbyMaxXVel + 1]
	xor a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ld [wd065], a
	ret
.asm_c82
	jp Func_3768

Func_c85:
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_HOVER_F, a
	jr nz, .set_carry
	ld a, [wd065]
	cp $03
	jr c, .set_carry
	ld a, [wKirbyYVel + 0]
	bit 7, a
	jp z, .set_carry
	cp $ff
	jp nc, .set_carry
	ld b, SQUISH_UP | KIRBY3F_SQUISHED
	ldh a, [hKirbyFlags3]
	and ~SQUISH_BITMASK
	or b
	ldh [hKirbyFlags3], a
	call SpawnBumpStar_WithSFX
	xor a
	ret
.set_carry
	scf
	ret

Func_caf:
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK3_F, a
	jr nz, .asm_cba
	ldh a, [hVBlankFlags]
	bit VBLANK_3_F, a
	ret z
.asm_cba
	ldh a, [hKirbyFlags4]
	res KIRBY4F_UNK6_F, a
	ldh [hKirbyFlags4], a
	ldh a, [hPalFadeFlags]
	res SCROLLINGF_UNK3_F, a
	ldh [hPalFadeFlags], a
	bit SCROLLINGF_UNK5_F, a
	jp nz, .asm_ee0
	ld a, [wKirbyScreenY]
	cp $71
	jp nc, .asm_ee0
	ld a, [wKirbyScreenY]
	ld [wd05f], a
	call GetKirbyLevelYCoord
	ld d, $00
	ldh a, [hKirbyFlags1]
	and UNK_BITMASK
	jp z, .asm_cf5
	inc a
	ld e, a
.asm_ce7
	ld a, l
	call Is4BitUnaligned
	jr nc, .asm_cf5
	inc hl
	inc d
	dec e
	jr nz, .asm_ce7
	jp .asm_ee0
.asm_cf5
	call ConvertPositionCoordinateToBlock
	ld a, c
	ld [wd05f], a
	ld a, [wKirbyScreenX]
	add $03
	ld [wd05e], a
	call Func_7cd
	ld c, BLOCK_0
	ld b, a
	and a
	jr z, .asm_d24
	cp BLOCK_1
	jr z, .asm_d24
	cp BLOCK_8
	jr z, .asm_d1e
	cp BLOCK_WATER
	jr nz, .asm_d55
	call Func_326
	jr .asm_d24
.asm_d1e
	ldh a, [hKirbyFlags4]
	set KIRBY4F_UNK7_F, a
	ldh [hKirbyFlags4], a
.asm_d24
	ld a, [wKirbyScreenX]
	add $0c
	ld [wd05e], a
	call Func_7cd
	ld c, a
	and a
	jp z, .asm_d4f
	cp BLOCK_1
	jr z, .asm_d55
	cp BLOCK_8
	jr z, .asm_d46
	cp BLOCK_WATER
	jr nz, .asm_d55
	call Func_326
	jp .asm_ee0
.asm_d46
	ldh a, [hKirbyFlags4]
	set KIRBY4F_UNK7_F, a
	ldh [hKirbyFlags4], a
	jp .asm_ee0

.asm_d4f
	ld a, $01
	cp b
	jp nz, .asm_ee0
.asm_d55
	ld a, [wDamageBlinkingCounter]
	ld hl, wInvincibilityCounter
	or [hl]
	inc hl
	or [hl]
	jr nz, .asm_d7f
	ld a, b
	and a
	jr z, .asm_d6a
	cp BLOCK_7
	jr nz, .asm_d7f
	jr .asm_d72
.asm_d6a
	ld a, c
	and a
	jr z, .asm_d72
	cp BLOCK_7
	jr nz, .asm_d7f
.asm_d72
	push bc
	push de
	call InflictHalfDamage_MoveUp
	pop de
	pop bc
	jp c, .asm_ece
	jp .asm_ee0
.asm_d7f
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_DIVE_BOUNCE_F, a
	jr z, .asm_da7
	ldh a, [hKirbyFlags2]
	and KIRBY2F_MOUTHFUL | KIRBY2F_INHALE
	jp nz, .asm_ec8
	ldh a, [hKirbyFlags2]
	set KIRBY2F_SPIT_F, a
	ldh [hKirbyFlags2], a
	bit KIRBY2F_INHALE_F, a
	jp z, .asm_ece
	ld a, SFX_INHALE
	call PlaySFX
	ld a, [wJoypadDown]
	or PAD_A
	ld [wJoypadDown], a
	jp .asm_ece
.asm_da7
	bit KIRBY3F_DIVE_F, a
	jp nz, .dive_bounce
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_UNK4_F, a
	jr nz, .asm_df4
	ldh a, [hJoypadPressed]
	bit B_PAD_DOWN, a
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
	ld hl, hKirbyFlags4
	res KIRBY4F_UNK4_F, [hl]
	ldh a, [hKirbyFlags3]
	and ~(SQUISH_BITMASK | KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE | KIRBY3F_DUCK)
	or SQUISH_DOWN | KIRBY3F_SQUISHED
	ldh [hKirbyFlags3], a
	ld hl, hKirbyFlags2
	res KIRBY2F_UNK1_F, [hl]
	ldh a, [hKirbyFlags1]
	set KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	ldh [hKirbyFlags1], a
	inc d
	ld a, d
	jp .asm_f19

.asm_df4
	ld hl, hKirbyFlags2
	bit KIRBY2F_MOUTHFUL_F, [hl]
	jr z, .asm_e1b
	bit KIRBY2F_HOVER_F, [hl]
	jp nz, .asm_e4f
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_UNK4_F, a
	jp nz, .asm_ece
	ldh a, [hKirbyFlags4]
	set KIRBY4F_UNK4_F, a
	ldh [hKirbyFlags4], a
	xor a
	ld [wPowerUpAttack], a
	push de
	ld a, SFX_SWALLOW
	call PlaySFX
	pop de
	jp .asm_ece
.asm_e1b
	ldh a, [hKirbyFlags2]
	and KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER
	jp nz, .asm_ece
	ldh a, [hKirbyFlags2]
	and $ff ^(KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT)
	ldh [hKirbyFlags2], a
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DIVE
	jp nz, .asm_ece
	ldh a, [hKirbyFlags6]
	and KIRBY6F_UNK1 | KIRBY6F_UNK2 | KIRBY6F_UNK3 | KIRBY6F_UNK4 | KIRBY6F_UNK5 | KIRBY6F_UNK6
	jp nz, .asm_ece
	ldh a, [hKirbyFlags3]
	and $ff ^ (SQUISH_BITMASK | KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE | KIRBY3F_SQUISHED)
	or KIRBY3F_DUCK
	ldh [hKirbyFlags3], a
	ldh a, [hKirbyFlags1]
	and $ff ^ (UNK_BITMASK | KIRBY1F_JUMP_RISE | KIRBY1F_AIRBORNE)
	or KIRBY1F_GROUNDED
	ldh [hKirbyFlags1], a
	xor a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	jr .asm_ece

.asm_e4f
	ldh a, [hKirbyFlags3]
	res KIRBY3F_DUCK_F, a
	ldh [hKirbyFlags3], a
	jr .asm_ece

.asm_e57
	ld a, [wJoypadDown]
	or PAD_A
	ld [wJoypadDown], a
	ld a, [wKirbyYVel + 0]
	cp HIGH(1.0)
	jr c, .asm_ece
	ldh a, [hKirbyFlags2]
	and KIRBY2F_INHALE | KIRBY2F_UNK5 | KIRBY2F_UNK6
	jr nz, .asm_ece
	xor a
	ld [wd065], a
	ldh a, [hKirbyFlags3]
	and ~(SQUISH_BITMASK | KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE | KIRBY3F_DUCK)
	or SQUISH_DOWN | KIRBY3F_SQUISHED
	ldh [hKirbyFlags3], a
	push de
	call SpawnBumpStar_WithSFX
	pop de
	jr .asm_ece

.dive_bounce
	ld hl, hKirbyFlags3
	res KIRBY3F_DIVE_F, [hl]
	ldh a, [hKirbyFlags2]
	and KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_UNK5 | KIRBY2F_UNK6 | KIRBY2F_HOVER
	jr nz, .asm_ec8
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK6_F, a
	jr nz, .asm_ec8
	ldh a, [hKirbyFlags3]
	set KIRBY3F_DIVE_BOUNCE_F, a
	res KIRBY3F_UNK6_F, a
	ldh [hKirbyFlags3], a

	ld a, HIGH(2.0)
	ld [wKirbyMaxYVel + 0], a
	ld a, LOW(2.0)
	ld [wKirbyMaxYVel + 1], a
	ld a, HIGH(-3.0)
	ld [wKirbyYVel + 0], a
	ld a, LOW(-3.0)
	ld [wKirbyYVel + 1], a

	ld hl, hKirbyFlags2
	bit KIRBY2F_INHALE_F, [hl]
	jr nz, .asm_ec8
	push de
	ld a, SFX_30
	call PlaySFX
	call SpawnBumpStar
	pop de
	ldh a, [hKirbyFlags1]
	res KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	ldh [hKirbyFlags1], a
	ld a, d
	jr .asm_f19
.asm_ec8
	ldh a, [hKirbyFlags3]
	and KIRBY3F_FACE_LEFT | KIRBY3F_UNK6
	ldh [hKirbyFlags3], a
.asm_ece
	ldh a, [hKirbyFlags1]
	res KIRBY1F_AIRBORNE_F, a
	set KIRBY1F_GROUNDED_F, a
	ldh [hKirbyFlags1], a
	xor a
	ld [wKirbyYVel + 0], a
	ld [wKirbyYVel + 1], a
	ld a, d
	jr .asm_f19

.asm_ee0
	ld hl, hKirbyFlags1
	set KIRBY1F_JUMP_RISE_F, [hl]
	ldh a, [hKirbyFlags2]
	and KIRBY2F_UNK5 | KIRBY2F_UNK6 | KIRBY2F_HOVER
	jr nz, .asm_f0f
	ldh a, [hKirbyFlags6]
	and KIRBY6F_UNK6
	jr nz, .asm_f0f
	ld hl, hKirbyFlags3
	ld a, [hl]
	and KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE
	jr nz, .asm_f0f
	ld a, [wd064]
	inc a
	ld [wd064], a
	cp $1a
	jr c, .asm_f0f
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_MOUTHFUL_F, a
	jr nz, .asm_f0f
	set KIRBY3F_DIVE_F, [hl]
	call SpawnDiveHitbox
.asm_f0f
	ldh a, [hKirbyFlags1]
	set KIRBY1F_AIRBORNE_F, a
	res KIRBY1F_GROUNDED_F, a
	ldh [hKirbyFlags1], a
	and UNK_BITMASK
.asm_f19
	ld [wKirbyScreenDeltaY], a
	ld b, a
	ldh a, [hPalFadeFlags]
	bit SCROLL_LOCKED_F, a
	jr nz, .scroll_locked
	ld c, $54
	ld a, [wLevelHeight]
	sub $07
	ld d, a
	ld a, [wLevelYSection]
	cp d
	jr nz, .asm_f3b
.scroll_locked
	ld c, SCREEN_HEIGHT_PX
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK6_F, a
	jr z, .asm_f3b
	ld c, SCREEN_HEIGHT_PX - 16
.asm_f3b
	ld a, [wKirbyScreenY]
	add b
	ld b, a
	ld a, c
	sub b
	jr c, .asm_f5a
	call MoveKirbyUp
	ld a, [wLevelHeight]
	cp $08
	jp nz, .asm_1021
	ld a, [wKirbyScreenY]
	cp SCREEN_HEIGHT_PX
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
	ld a, [wLevelYSection]
	ld b, a
	ld a, [wLevelHeight]
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
	call Is4BitUnaligned
	jr nc, .asm_fc3
	inc c
	dec b
	jr nz, .asm_f80
	ld a, [wKirbyScreenY]
	cp SCREEN_HEIGHT_PX
	jp nz, .asm_1019
.asm_f92
	ldh a, [hKirbyFlags1]
	and $ff ^ KIRBY1F_AIRBORNE
	set KIRBY1F_GROUNDED_F, a
	ldh [hKirbyFlags1], a
	ldh a, [hKirbyFlags3]
	and $ff ^ (KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE | KIRBY3F_UNK6 | KIRBY3F_SQUISHED)
	ldh [hKirbyFlags3], a
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
	ld a, [wLevelHeight]
	sub $07
	ld [wLevelYSection], a
	jr .asm_1019
.asm_fc3
	ld a, [wLevelHeight]
	sub $08
	ld c, a
	ld a, [wLevelYSection]
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
	ld a, [wLevelYSection]
	add $08
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
	ldh a, [hVBlankFlags]
	set VBLANK_5_F, a
	ldh [hVBlankFlags], a
	ld hl, wLevelYSection
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
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_UNK7_F, a
	ret z
	ld a, [wDamageBlinkingCounter]
	ld hl, wInvincibilityCounter
	or [hl]
	inc hl
	or [hl]
	ret nz
	ld a, [wKirbyScreenY]
	sub $08
	call Func_7b5
	cp BLOCK_8
	ret nz
	jp InflictHalfDamage_MoveUp

Func_1046:
	push bc
	push de
	ld hl, wLevelBlockMap
	ld a, [wLevelYSection]
	dec a
	ld b, a
	ld a, [wLevelWidth]
	ld e, a
	call FixedPointMultiply
	add hl, bc
	ld b, $00
	ld a, [wLevelXSection]
	ld c, a
	add hl, bc
	pop de
	pop bc
	ret

Func_1062::
	ldh a, [hPalFadeFlags]
	bit SCROLL_LOCKED_F, a
	ret nz
	ld a, [wd063]
	and a
	ret z
	ld b, a
	ld a, [wSCX]
	inc a
	ld c, a
.loop_align
	ld a, c
	call Is4BitUnaligned
	jr nc, .aligned
	inc c
	dec b
	jr nz, .loop_align
	ld a, [wKirbyScreenX]
	cp SCREEN_WIDTH_PX - 8
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
	ld [wLevelXSection], a
	jr .asm_1102
.aligned
	ldh a, [hEngineFlags]
	bit ENGINEF_XWARP_F, a
	jr nz, .asm_10ac
	ld a, [wd042]
	inc a
	ld c, a
	ld a, [wLevelXSection]
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
	add SCREEN_WIDTH_PX
	add b
	ld [wXCoord], a
	ld a, [wSCY]
	and $f0
	ld [wYCoord], a
	call Func_1046
	ld b, $00
	ld c, $0a
	add hl, bc
	ld a, [wLevelXSection]
	add $0b
	ld c, a
	ld a, [wLevelWidth]
	cp c
	jr nc, .asm_10e1
	ld c, a
	call HLMinusBC
.asm_10e1
	call Func_1292
	ldh a, [hVBlankFlags]
	set VBLANK_5_F, a
	ldh [hVBlankFlags], a
	ld a, [wLevelXSection]
	ld b, a
	ld a, [wLevelWidth]
	cp b
	jr nz, .asm_10fe
	ldh a, [hEngineFlags]
	bit ENGINEF_XWARP_F, a
	jr z, .asm_10fe
	xor a
	ld [wLevelXSection], a
.asm_10fe
	ld hl, wLevelXSection
	inc [hl]
.asm_1102
	ld hl, wSCX
	ld a, [wd063]
	add [hl]
	ld [hl], a
	ret

Func_110b:
	ldh a, [hPalFadeFlags]
	bit SCROLL_LOCKED_F, a
	ret nz
	ldh a, [hPalFadeFlags]
	bit SCROLLINGF_UNK5_F, a
	ret nz
	ld hl, hKirbyFlags5
	bit KIRBY5F_DAMAGED_F, [hl]
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
	call Is4BitUnaligned
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
	ld [wLevelXSection], a
	jp .asm_11be

.asm_115d
	ldh a, [hEngineFlags]
	bit ENGINEF_XWARP_F, a
	jr nz, .asm_116d
	ld a, [wLevelXSection]
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
	ld a, [wLevelXSection]
	cp $01
	jr nz, .asm_11ac
	ldh a, [hEngineFlags]
	bit ENGINEF_XWARP_F, a
	jr z, .asm_11ac
	ld a, [wLevelWidth]
	inc a
	ld [wLevelXSection], a
	call Func_1046
	dec hl
	dec hl
	ld a, [wLevelWidth]
	ld [wLevelXSection], a
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
	ld hl, wLevelXSection
	dec [hl]
.asm_11be
	ld hl, wd063
	ld a, [wSCX]
	sub [hl]
	ld [wSCX], a
	ret

Func_11c9::
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_GROUNDED_F, a
	ret z
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_DIVE_BOUNCE_F, a
	ret z
	res KIRBY3F_DIVE_BOUNCE_F, a
	ldh [hKirbyFlags3], a
	ldh a, [hKirbyFlags2]
	res KIRBY2F_SPIT_F, a
	ldh [hKirbyFlags2], a
	ret

Func_11de:
	ld b, $01
	ld a, [wSCX]
	inc a
	ld c, a
.asm_11e5
	ld a, c
	call Is4BitUnaligned
	jr nc, .asm_11f6
	inc c
	dec b
	jr nz, .asm_11e5
	jr .asm_123f
.asm_11f1
	ld a, $14
	ld [wLevelXSection], a
.asm_11f6
	ld c, $1e
	ld a, [wLevelXSection]
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
	add SCREEN_WIDTH_PX
	add b
	ld [wXCoord], a
	xor a
	ld [wYCoord], a
	ld hl, wLevelBlockMap
	ld b, $00
	ld a, [wLevelXSection]
	bit 7, a
	jr z, .asm_122b
	cpl
	inc a
	ld c, a
	call HLMinusBC
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
	ld hl, wLevelXSection
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
	ld de, wBlockQueue
	ld c, $09
.loop
	ld a, [hl]
	call AddBlockTilesToQueue
	push bc
	ld b, $00
	ld a, [wLevelWidth]
	ld c, a
	add hl, bc
	pop bc
	ld a, [wYCoord]
	add $10
	ld [wYCoord], a
	dec c
	jr nz, .loop
	xor a
	ld [de], a
	pop bc
	ret

Func_12b4::
	push bc
	ld de, wBlockQueue
	ld a, [wLevelWidth]
	ld b, a
	ld a, [wLevelXSection]
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
	call AddBlockTilesToQueue
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
	ld a, [wLevelYSection]
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
	ld a, [wLevelWidth]
	ld b, a
	call FixedPointMultiply
	ld hl, wLevelBlockMap
	add hl, bc
	pop de
	pop bc
	ld c, b
.asm_1307
	ld a, [hli]
	call AddBlockTilesToQueue
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
; - a = index in wBlockTileMap
; - de = pointer to wBlockQueue entry
; - [wXCoord] = x coordinate
; - [wYCoord] = y coordinate
AddBlockTilesToQueue:
	push bc
	push hl
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl ; *4
	ld bc, wBlockTileMap
	add hl, bc

	ld a, [wXCoord]
	ld [wd06b], a
	ld a, [wYCoord]
	ld [wd06c], a
	ld [wd07f], a

	; write BG coordinate
	call .GetBGCoordFromPosition

	; write block tile indices to [de]
REPT 3
	ld a, [hli]
	ld [de], a
	inc de
ENDR
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

; given a set of coordinates (wXCoord, wYCoord)
; outputs in [de] the BG map address of that coordinate
; input:
; - [wXCoord] = x pos
; - [wYCoord] = y pos
; output:
; - [de] = bg map pointer
.GetBGCoordFromPosition:
	push bc
	push hl
	ld hl, vBGMap0
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
	ld bc, TILEMAP_WIDTH
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
	ld hl, hKirbyFlags5
	bit KIRBY5F_UNK5_F, [hl]
	ret nz
	ld a, $01
	ld [rROMB0 + $100], a

	; set coordinates of object in OBJECT_SLOT_KIRBY
	; to Kirby's screen coordinates
	ld a, [wKirbyScreenX]
	add $08
	ld [wObjectXCoords + OBJECT_SLOT_KIRBY + $1], a
	ld a, [wKirbyScreenY]
	add $08
	ld [wObjectYCoords + OBJECT_SLOT_KIRBY + $1], a

	ld de, MotionScript_157a
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_FACE_LEFT_F, a
	jr nz, .asm_13c4
	ld hl, AnimScriptPointers_157d
	jr .got_anim_script_pointers
.asm_13c4
	ld hl, AnimScriptPointers_15b7
.got_anim_script_pointers
	ld c, KIRBY_IDLE
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_WALK_F, a
	jr z, .not_walking
	ld c, KIRBY_WALK
.not_walking
	bit KIRBY1F_AIRBORNE_F, a
	jr z, .check_hover
	ld c, KIRBY_JUMP
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_DIVE_F, a
	jr z, .check_hover
	ld c, KIRBY_DIVE
.check_hover
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_HOVER_F, a
	jr z, .not_hovering_or_puffing
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK2_F, a
	jr nz, .asm_13fe
	ld a, [wd094]
	cp $02
	jr nz, .start_inhale
	ld c, KIRBY_HOVER
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_UNK6_F, a
	jr z, .asm_1408
.start_inhale
	ld c, KIRBY_START_INHALE
	jr .asm_1408
.asm_13fe
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK1_F, a
	jr nz, .asm_1408
	ld c, KIRBY_UNK_1B
	jr .asm_1408
.asm_1408
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_SPIT_F, a
	jr z, .not_hovering_or_puffing
	ld c, KIRBY_PUFF
.not_hovering_or_puffing
	ldh a, [hKirbyFlags2]
	and KIRBY2F_HOVER
	jr nz, .check_duck
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_SQUISHED_F, a
	jr z, .check_duck
	ld c, KIRBY_SQUISH_DOWN
	ldh a, [hKirbyFlags3]
	and SQUISH_BITMASK
	add c
	ld c, a
.check_duck
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_DUCK_F, a
	jr z, .not_ducking
	ld c, KIRBY_DUCK
.not_ducking
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_UNK6_F, a
	jr z, .asm_146b
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_DUCK_F, a
	jr nz, .asm_146b
	ldh a, [hKirbyFlags2]
	and $ff ^ (KIRBY2F_UNK0 | KIRBY2F_UNK1)
	ldh [hKirbyFlags2], a
	bit KIRBY2F_HOVER_F, a
	jr nz, .asm_1465
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_WALK_F, a
	jr nz, .asm_1453
	ld a, [wKirbyYVel + 0]
	bit 7, a
	jr z, .asm_1457
	ld c, KIRBY_STEP
	jr .asm_146b
.asm_1453
	ld c, KIRBY_WALK_SLOW
	jr .asm_146b
.asm_1457
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_GROUNDED_F, a
	jr nz, .asm_1461
	ld c, KIRBY_JUMP
	jr .asm_146b
.asm_1461
	ld c, KIRBY_IDLE
	jr .asm_146b
.asm_1465
	bit KIRBY2F_SPIT_F, a
	jr z, .asm_146b
	ld c, KIRBY_PUFF
.asm_146b
	ldh a, [hKirbyFlags3]
	bit KIRBY3F_DIVE_BOUNCE_F, a
	jr z, .asm_147d
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_SPIT_F, a
	jr nz, .asm_147b
	ld c, KIRBY_DIVE
	jr .asm_147d
.asm_147b
	ld c, KIRBY_UNK_0F
.asm_147d
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_INHALE_F, a
	jr z, .asm_149f
	ld c, KIRBY_INHALE
	bit KIRBY2F_SPIT_F, a
	jr z, .asm_148d
	ld c, KIRBY_GET_MOUTHFUL
	jr .asm_149f
.asm_148d
	bit KIRBY2F_MOUTHFUL_F, a
	jr z, .asm_1495
	ld c, KIRBY_AFTER_SPIT
	jr .asm_14dc
.asm_1495
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_UNK3_F, a
	jr z, .asm_14dc
	ld c, KIRBY_START_HOVER
	jr .asm_14dc
.asm_149f
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_MOUTHFUL_F, a
	jr z, .asm_14dc
	ld a, [wd094]
	cp $04
	jr z, .asm_14b6
	ld c, KIRBY_UNK_17
	ldh a, [hKirbyFlags2]
	res KIRBY2F_SPIT_F, a
	ldh [hKirbyFlags2], a
	jr .asm_14dc
.asm_14b6
	ldh a, [hKirbyFlags3]
	res KIRBY3F_SQUISHED_F, a
	ldh [hKirbyFlags3], a
	ld c, KIRBY_MOUTHFUL
	ldh a, [hKirbyFlags1]
	bit KIRBY1F_WALK_F, a
	jr z, .asm_14c6
	ld c, KIRBY_MOUTHFUL_WALK
.asm_14c6
	bit KIRBY1F_AIRBORNE_F, a
	jr z, .asm_14cc
	ld c, KIRBY_MOUTHFUL_JUMP
.asm_14cc
	ldh a, [hKirbyFlags2]
	bit KIRBY2F_SPIT_F, a
	jr z, .asm_14d4
	ld c, KIRBY_SPIT
.asm_14d4
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_UNK4_F, a
	jr z, .asm_14dc
	ld c, KIRBY_UNK_18
.asm_14dc
	ldh a, [hKirbyFlags2]
	and KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_UNK5 | KIRBY2F_UNK6 | KIRBY2F_HOVER
	jr nz, .asm_14f0
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK1_F, a
	jr nz, .asm_1510
	bit KIRBY6F_UNK4_F, a
	jr z, .asm_14f0
	ld c, KIRBY_UNK_1A
	jr .asm_1510
.asm_14f0
	ldh a, [hKirbyFlags2]
	and KIRBY2F_INHALE | KIRBY2F_UNK5 | KIRBY2F_UNK6 | KIRBY2F_HOVER
	jr nz, .asm_1510
	ldh a, [hKirbyFlags3]
	and KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE | KIRBY3F_DUCK | KIRBY3F_SQUISHED
	jr nz, .asm_1510
	ldh a, [hKirbyFlags6]
	bit KIRBY6F_UNK5_F, a
	jr z, .asm_1510
	ldh a, [hKirbyFlags2]
	and $ff ^ (KIRBY2F_MOUTHFUL | KIRBY2F_INHALE)
	ldh [hKirbyFlags2], a
	ldh a, [hKirbyFlags4]
	res KIRBY4F_UNK4_F, a
	ldh [hKirbyFlags4], a
	ld c, KIRBY_WALK_FAST
.asm_1510
	ldh a, [hKirbyFlags4]
	bit KIRBY4F_PAUSED_F, a
	jr z, .asm_1524
	bit KIRBY4F_UNK0_F, a
	jr z, .asm_1524
	ld c, KIRBY_IDLE
	ldh a, [hEngineFlags]
	bit PAUSE_ANIMATION_F, a
	jr z, .asm_1524
	ld c, KIRBY_PAUSE_DANCE
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
	ldh a, [hKirbyFlags5]
	bit KIRBY5F_UNK6_F, a
	jr nz, .asm_1546
	pop af
	ld hl, wKirbyAnimScript
	cp [hl]
	jr nz, .got_motion_script
	ld a, c
	inc hl
	cp [hl]
	jr nz, .got_motion_script
	jr .finish
.asm_1546
	res KIRBY5F_UNK6_F, a
	ldh [hKirbyFlags5], a
	pop af

	ldh a, [hKirbyFlags3]
	bit KIRBY3F_FACE_LEFT_F, a
	jr nz, .facing_left
	ld de, MotionScript_ProjectileRecoil_Right
	jr .got_motion_script
.facing_left
	ld de, MotionScript_ProjectileRecoil_Left
.got_motion_script
	ld a, b
	ld h, a
	ld [wKirbyAnimScript + 0], a
	ld a, c
	ld l, a
	ld [wKirbyAnimScript + 1], a
	ld bc, OBJECT_SLOT_KIRBY
	call SetObjectScripts

.finish
	ld a, [wROMBank]
	ld [rROMB0 + $100], a
	ret

SetFullHP::
	ld a, [wConfigMaxHP]
	ld [wMaxHP], a
	ld [wHP], a
	ret

MotionScript_157a::
	set_velocities 0, 0, 0

AnimScriptPointers_157d:
	dw AnimScript_15f1 ; KIRBY_IDLE
	dw AnimScript_15f4 ; KIRBY_WALK
	dw AnimScript_1602 ; KIRBY_JUMP
	dw AnimScript_1605 ; KIRBY_START_INHALE
	dw AnimScript_1623 ; KIRBY_HOVER
	dw AnimScript_162b ; KIRBY_PUFF
	dw AnimScript_202b6 ; KIRBY_PAUSE_DANCE
	dw AnimScript_163f ; KIRBY_SQUISH_DOWN
	dw AnimScript_1653 ; KIRBY_SQUISH_UP
	dw AnimScript_1667 ; KIRBY_SQUISH_FRONT
	dw AnimScript_167b ; KIRBY_SQUISH_BACK
	dw AnimScript_168f ; KIRBY_DUCK
	dw AnimScript_1692 ; KIRBY_WALK_SLOW
	dw AnimScript_16a0 ; KIRBY_STEP
	dw AnimScript_16ab ; KIRBY_DIVE
	dw AnimScript_16ae ; KIRBY_UNK_0F
	dw AnimScript_16ce ; KIRBY_INHALE
	dw AnimScript_16de ; KIRBY_GET_MOUTHFUL
	dw AnimScript_16f2 ; KIRBY_MOUTHFUL
	dw AnimScript_16fa ; KIRBY_MOUTHFUL_WALK
	dw AnimScript_1707 ; KIRBY_MOUTHFUL_JUMP
	dw AnimScript_170f ; KIRBY_SPIT
	dw AnimScript_1723 ; KIRBY_AFTER_SPIT
	dw AnimScript_1726 ; KIRBY_UNK_17
	dw AnimScript_1732 ; KIRBY_UNK_18
	dw AnimScript_1747 ; KIRBY_START_HOVER
	dw AnimScript_1753 ; KIRBY_UNK_1A
	dw AnimScript_175d ; KIRBY_UNK_1B
	dw AnimScript_176a ; KIRBY_WALK_FAST

AnimScriptPointers_15b7:
	dw AnimScript_1778 ; KIRBY_IDLE
	dw AnimScript_177b ; KIRBY_WALK
	dw AnimScript_1789 ; KIRBY_JUMP
	dw AnimScript_178c ; KIRBY_START_INHALE
	dw AnimScript_17aa ; KIRBY_HOVER
	dw AnimScript_17b2 ; KIRBY_PUFF
	dw AnimScript_20311 ; KIRBY_PAUSE_DANCE
	dw AnimScript_17c6 ; KIRBY_SQUISH_DOWN
	dw AnimScript_17da ; KIRBY_SQUISH_UP
	dw AnimScript_17ee ; KIRBY_SQUISH_FRONT
	dw AnimScript_1802 ; KIRBY_SQUISH_BACK
	dw AnimScript_1816 ; KIRBY_DUCK
	dw AnimScript_1819 ; KIRBY_WALK_SLOW
	dw AnimScript_1827 ; KIRBY_STEP
	dw AnimScript_1832 ; KIRBY_DIVE
	dw AnimScript_1835 ; KIRBY_UNK_0F
	dw AnimScript_1855 ; KIRBY_INHALE
	dw AnimScript_1865 ; KIRBY_GET_MOUTHFUL
	dw AnimScript_1879 ; KIRBY_MOUTHFUL
	dw AnimScript_1881 ; KIRBY_MOUTHFUL_WALK
	dw AnimScript_188e ; KIRBY_MOUTHFUL_JUMP
	dw AnimScript_1896 ; KIRBY_SPIT
	dw AnimScript_18aa ; KIRBY_AFTER_SPIT
	dw AnimScript_18ad ; KIRBY_UNK_17
	dw AnimScript_18b9 ; KIRBY_UNK_18
	dw AnimScript_18ce ; KIRBY_START_HOVER
	dw AnimScript_18da ; KIRBY_UNK_1A
	dw AnimScript_18e4 ; KIRBY_UNK_1B
	dw AnimScript_18f1 ; KIRBY_WALK_FAST

AnimScript_15f1::
	frame  0, OAM_2d8b9

AnimScript_15f4:
.loop
	frame 11, OAM_2d8c1
	frame  8, OAM_2d8c9
	frame 11, OAM_2d8d1
	frame  8, OAM_2d8c9
	jump_rel .loop

AnimScript_1602:
	frame  0, OAM_2d8d9

AnimScript_1605:
	jump_if_equal wd094, $02, .loop
	frame 10, OAM_2da69
	frame 10, OAM_2da71
	frame 10, OAM_2da81
	frame  2, OAM_2da99
	set_value wd094, $02
.loop
	frame  4, OAM_2d919
	frame  4, OAM_2d931
	jump_rel .loop

AnimScript_1623::
.loop
	frame 20, OAM_2d919
	frame 20, OAM_2d931
	jump_rel .loop

AnimScript_162b:
	frame 10, OAM_2da81
	frame 10, OAM_2da99
	frame 10, OAM_2da69
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_HOVER, NONE
	set_value wd094, $01
	script_delay 1

AnimScript_163f:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  6, OAM_2dbc9
	set_flags hKirbyFlags3, KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_1653:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  6, OAM_2dbd1
	set_flags hKirbyFlags3, KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_1667:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  6, OAM_2dbd9
	set_flags hKirbyFlags3, KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_167b:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  6, OAM_2dbdd
	set_flags hKirbyFlags3, KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_168f:
	frame  0, OAM_2dbc9

AnimScript_1692:
.loop
	frame 16, OAM_2d8c1
	frame 12, OAM_2d8c9
	frame 16, OAM_2d8d1
	frame 12, OAM_2d8c9
	jump_rel .loop

AnimScript_16a0:
.loop
	frame  8, OAM_2d8c1
	frame  8, OAM_2d8c9
	frame 16, OAM_2d8d1
	jump_rel .loop

AnimScript_16ab:
	frame  0, OAM_2db69

AnimScript_16ae:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  5, OAM_2db69
	frame  6, OAM_2dbc9
	set_flags hKirbyFlags3, KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE | KIRBY3F_DUCK | KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT, NONE
	set_value wd064, $02
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_16ce:
	jump_if_equal wd094, $03, .script_16db
	frame  8, OAM_2da69
	set_value wd094, $03
.script_16db
	frame  0, OAM_2da71

AnimScript_16de:
	frame  8, OAM_2da71
	frame  6, OAM_2da69
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER, NONE
	frame  8, OAM_2dae1
	set_value wd094, $01
	script_delay 1

AnimScript_16f2:
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_INHALE, NONE
	frame  0, OAM_2d979

AnimScript_16fa:
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_INHALE, NONE
.loop
	frame 12, OAM_2d9a9
	frame 12, OAM_2d9c1
	jump_rel .loop

AnimScript_1707:
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_INHALE, NONE
	frame  0, OAM_2d9d9

AnimScript_170f:
	frame  5, OAM_2dab1
	frame  5, OAM_2da71
	frame  6, OAM_2da69
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER, NONE
	set_value wd094, $01
	script_delay 1

AnimScript_1723:
	frame  0, OAM_2dab1

AnimScript_1726:
	frame 10, OAM_2dac9
	frame 10, OAM_2d991
	set_value wd094, $04
	script_delay 1

AnimScript_1732:
	frame  5, OAM_2d991
	frame  3, OAM_2dac9
	frame  3, OAM_2dae1
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER, NONE
	set_flags hKirbyFlags4, KIRBY5F_DAMAGE_KNOCK_BACK_LEFT, NONE
	script_delay 1

AnimScript_1747:
	frame  8, OAM_2da71
	frame  8, OAM_2da71
	set_value wd094, $06
	script_delay 1

AnimScript_1753:
	frame  5, OAM_2da69
	set_flags hKirbyFlags6, KIRBY6F_UNK4, NONE
	script_delay 1

AnimScript_175d:
	frame  3, OAM_2da81
	frame  3, OAM_2da99
	set_flags hKirbyFlags6, KIRBY6F_UNK2, NONE
	script_delay 1

AnimScript_176a:
.loop
	frame  3, OAM_2d8c1
	frame  2, OAM_2d8c9
	frame  3, OAM_2d8d1
	frame  2, OAM_2d8c9
	jump_rel .loop

AnimScript_1778:
	frame  0, OAM_2d8e9

AnimScript_177b:
.loop
	frame 11, OAM_2d8f1
	frame  8, OAM_2d8f9
	frame 11, OAM_2d901
	frame  8, OAM_2d8f9
	jump_rel .loop

AnimScript_1789:
	frame  0, OAM_2d909

AnimScript_178c:
	jump_if_equal wd094, $02, .loop
	frame 10, OAM_2dae9
	frame 10, OAM_2daf1
	frame 10, OAM_2db01
	frame  2, OAM_2db19
	set_value wd094, $02
.loop
	frame  4, OAM_2d949
	frame  4, OAM_2d961
	jump_rel .loop

AnimScript_17aa:
.loop
	frame 20, OAM_2d949
	frame 20, OAM_2d961
	jump_rel .loop

AnimScript_17b2:
	frame 10, OAM_2db01
	frame 10, OAM_2db19
	frame 10, OAM_2dae9
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_HOVER, NONE
	set_value wd094, $01
	script_delay 1

AnimScript_17c6:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  6, OAM_2dbad
	set_flags hKirbyFlags3, KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_17da:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  6, OAM_2dbb5
	set_flags hKirbyFlags3, KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_17ee:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  6, OAM_2dbbd
	set_flags hKirbyFlags3, KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_1802:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  6, OAM_2dbc1
	set_flags hKirbyFlags3, KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_1816:
	frame  0, OAM_2dbad

AnimScript_1819:
.loop
	frame 16, OAM_2d8f1
	frame 12, OAM_2d8f9
	frame 16, OAM_2d901
	frame 12, OAM_2d8f9
	jump_rel .loop

AnimScript_1827:
.loop
	frame  8, OAM_2d8f1
	frame  8, OAM_2d8f9
	frame 16, OAM_2d901
	jump_rel .loop

AnimScript_1832:
	frame  0, OAM_2db71

AnimScript_1835:
	set_flags hKirbyFlags2, NONE, KIRBY2F_UNK1
	frame  5, OAM_2db71
	frame  6, OAM_2dbad
	set_flags hKirbyFlags3, KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE | KIRBY3F_DUCK | KIRBY3F_SQUISHED, NONE
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT, NONE
	set_value wd064, $02
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1, NONE
	script_delay 1

AnimScript_1855:
	jump_if_equal wd094, $03, .script_1862
	frame  8, OAM_2dae9
	set_value wd094, $03
.script_1862
	frame  0, OAM_2daf1

AnimScript_1865:
	frame  8, OAM_2daf1
	frame  6, OAM_2dae9
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER, NONE
	frame  8, OAM_2db61
	set_value wd094, $01
	script_delay 1

AnimScript_1879:
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_INHALE, NONE
	frame  0, OAM_2d9f1

AnimScript_1881:
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_INHALE, NONE
.loop
	frame 12, OAM_2da21
	frame 12, OAM_2da39
	jump_rel .loop

AnimScript_188e:
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_INHALE, NONE
	frame  0, OAM_2da51

AnimScript_1896:
	frame  5, OAM_2db31
	frame  5, OAM_2daf1
	frame  6, OAM_2dae9
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER, NONE
	set_value wd094, $01
	script_delay 1

AnimScript_18aa:
	frame  0, OAM_2db31

AnimScript_18ad:
	frame 10, OAM_2db49
	frame 10, OAM_2da09
	set_value wd094, $04
	script_delay 1

AnimScript_18b9:
	frame  5, OAM_2da09
	frame  3, OAM_2db49
	frame  3, OAM_2db61
	set_flags hKirbyFlags2, KIRBY2F_UNK0 | KIRBY2F_UNK1 | KIRBY2F_SPIT | KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER, NONE
	set_flags hKirbyFlags4, KIRBY5F_DAMAGE_KNOCK_BACK_LEFT, NONE
	script_delay 1

AnimScript_18ce:
	frame  8, OAM_2daf1
	frame  8, OAM_2daf1
	set_value wd094, $06
	script_delay 1

AnimScript_18da:
	frame  5, OAM_2dae9
	set_flags hKirbyFlags6, KIRBY6F_UNK4, NONE
	script_delay 1

AnimScript_18e4:
	frame  3, OAM_2db01
	frame  3, OAM_2db19
	set_flags hKirbyFlags6, KIRBY6F_UNK2, NONE
	script_delay 1

AnimScript_18f1:
.loop
	frame  3, OAM_2d8f1
	frame  2, OAM_2d8f9
	frame  3, OAM_2d901
	frame  2, OAM_2d8f9
	jump_rel .loop

; input:
; - hl = OAM pointer
; - a = OAM flags to override
; - b = x offset
; - c = y offset
LoadSprite::
	ld [wOAMFlagsOverride], a
	ld a, [wROMBank]
	push af
	ld a, BANK("OAM")
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
	ld de, OBJ_SIZE
	ld b, $00
.loop_oam
	ld [hl], b
	add hl, de
	ld a, l
	cp c
	jr nz, .loop_oam
	ret

; input:
; - hl = level block map at current position
Func_1964::
	push bc
	push de
	xor a
	ld [wXCoord], a
	ld [wYCoord], a
	ld de, wBlockQueue
	ld a, 10 ; can be ld b, 10
	ld b, a  ;
.loop_rows
	ld a, [wLevelWidth]
	cp 10
	jr z, .got_num_cols
	ld a, 11
.got_num_cols
	ld c, a
.loop_cols
	; add this block to block queue
	ld a, [hli]
	call AddBlockTilesToQueue
	; increment x coordinate by 2 tiles
	ld a, [wXCoord]
	add TILE_WIDTH * 2
	ld [wXCoord], a
	; decrement col counter
	dec c
	jr nz, .loop_cols

	push bc
	ld b, $00
	ld a, [wLevelWidth]
	sub 10
	jr z, .asm_1998
	sub 1
.asm_1998
	ld c, a
	add hl, bc
	pop bc
	; wrap back around on x coordinate
	xor a
	ld [wXCoord], a
	; increment y coordinate by 2 tiles
	ld a, [wYCoord]
	add TILE_HEIGHT * 2
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
	or VBLANK_5 | VBLANK_PENDING
	ldh [hVBlankFlags], a
	call ProcessBlockQueue
	ld a, [wd06b] ; useless
	xor a
	ldh [hVBlankFlags], a
	pop de
	pop bc
	ret

Func_19c9::
	ldh a, [hPalFadeFlags]
	and SCROLLINGF_UNK3
	ldh [hPalFadeFlags], a
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
	jr z, .fade_from_white ; jump if FADE_FROM_WHITE
	; a = FADE_FROM_BLACK
	ldh a, [hPalFadeFlags]
	set FADE_COLOR_F, a
	ldh [hPalFadeFlags], a
.fade_from_white
	ret

LoadArea::
	push bc
	push hl
	ld a, $ff
	ld [wOverrideMusic], a ; MUSIC_NONE
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
	ld de, wLevelBlockMap
	call FarDecompress
	pop hl

	ld a, [hli]
	ld [wLevelWidth], a
	sub 10
	ld [wd041], a

	ld a, [hli]
	ld [wLevelHeight], a
	ldh a, [hEngineFlags]
	and $ff ^ ENGINEF_XWARP
	ldh [hEngineFlags], a

	ldh a, [hHUDFlags]
	and $ff ^ (HUD_6 | HUD_BOSS_BATTLE)
	ldh [hHUDFlags], a

	inc hl
	ld a, [hl]
	and AREAF_SCROLL_LOCKED | AREAF_XWRAP | AREAF_UNK4
	jr z, .check_boss_battle
	bit AREAF_SCROLL_LOCKED_F, a
	jr nz, .lock_scroll
	bit AREAF_UNK4_F, a
	jr nz, .asm_1a68

	ldh a, [hEngineFlags]
	set ENGINEF_XWARP_F, a
	ldh [hEngineFlags], a
	jr .check_boss_battle

.lock_scroll
	ldh a, [hPalFadeFlags]
	set SCROLL_LOCKED_F, a
	ldh [hPalFadeFlags], a
	jr .check_boss_battle

.asm_1a68
	ldh a, [hHUDFlags]
	set HUD_6_F, a
	ldh [hHUDFlags], a

.check_boss_battle
	bit AREAF_BOSS_BATTLE_F, [hl]
	jr z, .not_boss_battle
	push hl
	ld a, MUSIC_BOSS_BATTLE
	ld [wOverrideMusic], a
	pop hl
.not_boss_battle
	inc hl
	ld a, [hl]
	ld [wd042], a

	ld a, [wStage]
	cp MT_DEDEDE
	jp nz, .done
	ld a, [wArea]
	and a
	jr nz, .asm_1b09
	ldh a, [hPalFadeFlags]
	set SCROLL_LOCKED_F, a
	ldh [hPalFadeFlags], a
	ld a, [wMtDededeClearedAreas + MT_DEDEDE_1]
	and a
	jr z, .asm_1aae
	ld a, $15
	ld [wLevelBlockMap + $6f], a
	ld a, $16
	ld [wLevelBlockMap + $ab], a
	ld a, $17
	ld [wLevelBlockMap + $70], a
	ld a, $18
	ld [wLevelBlockMap + $ac], a
	ld b, 1
.asm_1aae
	ld a, [wMtDededeClearedAreas + MT_DEDEDE_2]
	and a
	jr z, .asm_1ac9
	ld a, $15
	ld [wLevelBlockMap + $15f], a
	ld a, $16
	ld [wLevelBlockMap + $19b], a
	ld a, $17
	ld [wLevelBlockMap + $160], a
	ld a, $18
	ld [wLevelBlockMap + $19c], a
	inc b
.asm_1ac9
	ld a, [wMtDededeClearedAreas + MT_DEDEDE_3]
	and a
	jr z, .asm_1ae4
	ld a, $15
	ld [wLevelBlockMap + $75], a
	ld a, $16
	ld [wLevelBlockMap + $b1], a
	ld a, $17
	ld [wLevelBlockMap + $76], a
	ld a, $18
	ld [wLevelBlockMap + $b2], a
	inc b
.asm_1ae4
	ld a, [wMtDededeClearedAreas + MT_DEDEDE_4]
	and a
	jr z, .asm_1aff
	ld a, $15
	ld [wLevelBlockMap + $165], a
	ld a, $16
	ld [wLevelBlockMap + $1a1], a
	ld a, $17
	ld [wLevelBlockMap + $166], a
	ld a, $18
	ld [wLevelBlockMap + $1a2], a
	inc b
.asm_1aff
	ld a, $04
	cp b
	jr nz, .asm_1b08
	xor a
	ld [wMtDededeClearedAreas + MT_DEDEDE_5], a
.asm_1b08
	xor a
.asm_1b09
	ld hl, wMtDededeClearedAreas
	ld c, a
	ld b, $00
	add hl, bc
	ld a, TRUE
	ld [hl], a
	xor a
	ld [wMtDededeClearedAreas + MT_DEDEDE_0], a
	ld [wMtDededeClearedAreas + MT_DEDEDE_6], a
	ld [wMtDededeClearedAreas + MT_DEDEDE_8], a
	ld [wMtDededeClearedAreas + MT_DEDEDE_7], a
	ld [wMtDededeClearedAreas + MT_DEDEDE_9], a
	ld hl, Data_1bc5
	add hl, bc
	ld a, [hl]
	ld [wd06c], a
	cp MT_DEDEDE
	jr z, .asm_1b69

	push af
	push hl
	push de
	ld a, [wExtraGameEnabled]
	and a
	jr nz, .extra_game
	ld hl, CommonGfx
	ld de, vTiles0 + $00
	ld c, BANK(CommonGfx)
	call FarDecompress
	ld hl, HUDGfx
	ld de, vTiles2 tile $67
	ld c, BANK(HUDGfx)
	call FarDecompress
	jr .asm_1b66
.extra_game
	ld hl, CommonExtraGfx
	ld de, vTiles0 + $00
	ld c, BANK(CommonExtraGfx)
	call FarDecompress
	ld hl, HUDExtraGfx
	ld de, vTiles2 tile $67
	ld c, BANK(HUDExtraGfx)
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
	ld hl, StageBlockTileMaps
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld e, a
	ld h, d
	ld l, e
	ld de, wBlockTileMap
	call FarDecompress

	ld hl, hEngineFlags
	bit ENGINEF_UNK5_F, [hl]
	jr z, .done
	ld hl, MtDededeAreaMusics
	ld a, [wArea]
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wOverrideMusic], a
.done
	pop hl
	pop bc
	ret

Data_1bc5:
	table_width 1
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

MtDededeAreaMusics:
	table_width 1
	db MUSIC_MT_DEDEDE          ; MT_DEDEDE_0
	db MUSIC_GREEN_GREENS       ; MT_DEDEDE_1
	db MUSIC_CASTLE_LOLOLO      ; MT_DEDEDE_2
	db MUSIC_FLOAT_ISLANDS      ; MT_DEDEDE_3
	db MUSIC_BUBBLY_CLOUDS      ; MT_DEDEDE_4
	db MUSIC_KING_DEDEDE_BATTLE ; MT_DEDEDE_5
	db MUSIC_GREEN_GREENS       ; MT_DEDEDE_6
	db MUSIC_FLOAT_ISLANDS      ; MT_DEDEDE_7
	db MUSIC_CASTLE_LOLOLO      ; MT_DEDEDE_8
	db MUSIC_BUBBLY_CLOUDS      ; MT_DEDEDE_9
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

; places window outside visible coordinates
; functionally hiding it
HideWindow::
	ld a, SCREEN_WIDTH_PX
	ldh [rWX], a
	ld a, SCREEN_HEIGHT_PX
	ldh [rWY], a
	ret

Func_1c0a::
	call ResetTimer

	; fills 2 rows in vBGMap1
	; with tile index $7f
	ld c, 2 * TILEMAP_WIDTH
	hlbgcoord 0, 0, vBGMap1
	ld a, $7f
.loop_fill
	ld [hli], a
	dec c
	jr nz, .loop_fill

	; set window's coordinate to (0, 128)
	ld a, WX_OFS
	ldh [rWX], a
	ld a, 128
	ldh [rWY], a

	ld a, $67
	ldbgcoord 14, 1, vBGMap1
	ld a, $6b
	ldbgcoord 15, 1, vBGMap1
	ld a, $6f
	ldbgcoord  2, 1, vBGMap1
	ld a, $70
	ldbgcoord  3, 1, vBGMap1
	inc a ; $71
	ldbgcoord  4, 1, vBGMap1
	ld a, $7f
	ldbgcoord  6, 0, vBGMap1
	ldbgcoord  7, 0, vBGMap1
	ldbgcoord  8, 0, vBGMap1
	ldbgcoord  9, 0, vBGMap1
	ldbgcoord 10, 0, vBGMap1
	ldbgcoord 16, 1, vBGMap1
	ldbgcoord 17, 1, vBGMap1

	jp StopTimerAndSwitchOnLCD

; calculates bc * e considering both values
; as fixed-point numbers with 8-bit precision
; e is considered only as fractional part
; output:
; - bc = fixed-point number
FixedPointMultiply::
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

; input:
; - hl = level coordinate
; output:
; - bc = block coordinate
ConvertPositionCoordinateToBlock::
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
	; bc = hl / 16
	pop af
	ret

; calculates hl - bc
; outputs result in hl
HLMinusBC::
	; this is unoptimized
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

; unreferenced
Func_1ced:
	; push/pop de is unnecessary
	push de
	inc hl
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	pop de
	ret

; unreferenced
Func_1cf7:
	; push/pop de is unnecessary
	push de
	inc hl
	ld a, [hl]
	sub b
	ld [hld], a
	ld a, [hl]
	sbc c
	ld [hl], a
	pop de
	ret
