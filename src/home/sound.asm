; input:
; - a = SFX_* constant
PlaySFX::
	push bc
	ld [wCurSFX], a
	ld c, a
	ld a, [wROMBank]
	push af
	ld a, BANK(_PlaySFX)
	bankswitch
	ld a, c
	call _PlaySFX
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
	cp SFX_PAUSE_ON
	jr z, .play_music
	ld a, [wCurMusic]
	cp c
	jr z, .skip ; already playing
.play_music
	ld a, [wROMBank]
	push af
	ld a, BANK(_PlayMusic)
	bankswitch
	ld a, c
	ld [wCurMusic], a
	call _PlayMusic
	pop af
	bankswitch
.skip
	pop bc
	ret
