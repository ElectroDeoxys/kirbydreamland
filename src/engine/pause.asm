; loops until player presses Start button
; then after button press, waits 30 frames
; before game resumes
Pause::
	ld a, SFX_PAUSE_ON
	call PlaySFX

	xor a
	ld [wPauseCounter + 0], a
	ld [wPauseCounter + 1], a
	ld [hJoypadPressed], a

	ld a, [hKirbyFlags4]
	set KIRBY4F_PAUSED_F, a
	ld [hKirbyFlags4], a
.loop
	ld a, [hVBlankFlags]
	bit VBLANK_PENDING_F, a
	jr nz, .loop
	ld a, [hKirbyFlags5]
	bit KIRBY5F_UNK0_F, a
	jr nz, .skip_animation
	ld a, [hKirbyFlags2]
	and KIRBY2F_SPIT | KIRBY2F_MOUTHFUL | KIRBY2F_INHALE | KIRBY2F_HOVER
	jr nz, .show_sprites
	ld a, [hKirbyFlags3]
	and KIRBY3F_SQUISHED
	jr nz, .show_sprites
	ld a, [hKirbyFlags4]
	and KIRBY4F_UNK3 | KIRBY4F_UNK4 | KIRBY4F_UNK5
	jr nz, .show_sprites
	ld hl, hKirbyFlags4
	set KIRBY4F_UNK0_F, [hl]

	; increment counter
	ld hl, wPauseCounter
	ld a, [hl]
	add 1
	ld [hli], a
	ld a, [hl]
	adc 0
	ld [hld], a
	cp HIGH($400)
	jr c, .show_sprites
	ld a, [hl]
	cp $b0
	jr c, .show_sprites
	ld hl, hEngineFlags
	set PAUSE_ANIMATION_F, [hl]
.show_sprites
	xor a
	ld [wVirtualOAMSize], a
	call UpdateObjects
	call Func_139b
	call ClearSprites
	ld a, [hVBlankFlags]
	set VBLANK_PENDING_F, a
	ld [hVBlankFlags], a
	ld a, [hJoypadPressed]
	bit B_PAD_START, a
	jr z, .loop

	; player pressed Start
	ld a, SFX_PAUSE_OFF
	call PlaySFX
	ld a, [hKirbyFlags4]
	and $ff ^ (KIRBY4F_UNK0 | KIRBY4F_PAUSED)
	ld [hKirbyFlags4], a
	ld hl, hEngineFlags
	res PAUSE_ANIMATION_F, [hl]
	ld hl, hKirbyFlags5
	res KIRBY5F_UNK0_F, [hl]
	ld a, 30
	call WaitFrames
	ret

.skip_animation
	ld a, [hEngineFlags]
	res PAUSE_ANIMATION_F, a
	ld [hEngineFlags], a
	jr .show_sprites
