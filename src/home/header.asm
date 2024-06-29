SECTION "romheader", ROM0

	ds $20
REPT $20
	db $ff
ENDR

; interrupts
SECTION "vblank", ROM0
	jp VBlank
	ds 5

SECTION "stat", ROM0
	jp Stat
	ds 5

SECTION "timer", ROM0
	jp Timer
	ds 5

	ds $8
REPT $20
	db $ff
ENDR

	ds $20
REPT $20
	db $ff
ENDR

	ds $20
REPT $20
	db $ff
ENDR

SECTION "Start", ROM0

Start:
	nop
	jp _Start
