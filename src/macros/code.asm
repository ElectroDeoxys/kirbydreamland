MACRO lb ; r, hi, lo
	ld \1, (\2) << 8 + ((\3) & $ff)
ENDM

MACRO incc
	jr nc, :+
	inc \1
:
ENDM

MACRO bankswitch
	ld [wROMBank], a
	ld [rROMB0 + $100], a
ENDM

MACRO wait_vblank
	ld hl, hVBlankFlags
	set VBLANK_PENDING_F, [hl]
:
	bit VBLANK_PENDING_F, [hl]
	jr nz, :-
ENDM

MACRO wait_vblank_a
	ld a, [hVBlankFlags]
	set VBLANK_PENDING_F, a
	ld [hVBlankFlags], a
:
	ld a, [hVBlankFlags]
	bit VBLANK_PENDING_F, a
	jr nz, :-
ENDM


