SECTION "romheader", ROM0

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

SECTION "Start", ROM0[$100]

Start:
	nop
	jp _Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.

	ds $0150 - @, $00
