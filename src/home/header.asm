SECTION "romheader", ROM0

	ds $20
	ds $20, $ff

; interrupts
SECTION "VBlank", ROM0
	jp VBlank
	ds 5

SECTION "Stat", ROM0
	jp Stat
	ds 5

SECTION "Timer", ROM0
	jp Timer
	ds 5

	ds $8
	ds $20, $ff

	ds $20
	ds $20, $ff

	ds $20
	ds $20, $ff

SECTION "Start", ROM0

Start:
	nop
	jp _Start
