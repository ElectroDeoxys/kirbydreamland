INCLUDE "home/header.asm"

SECTION "Home", ROM0

INCLUDE "home/start.asm"
INCLUDE "home/home1.asm"
INCLUDE "home/random.asm"
INCLUDE "home/vblank.asm"
INCLUDE "home/frame.asm"
INCLUDE "home/stat.asm"
INCLUDE "home/timer.asm"
INCLUDE "home/sound.asm"
INCLUDE "home/home2.asm"

	ds $12, $ff
REPT 8
	ds $20
	ds $20, $ff
ENDR
	ds $20

	; garbage data
	db $ff, $ff, $39, $ff, $ff, $ff, $ef, $ec, $ff, $ff, $ff, $df, $ff, $ff, $ba, $fd
	db $ff, $ff, $5f, $fc, $ff, $ff, $7d, $ff, $ff, $ff, $fb, $43, $ff, $ff, $6d, $00
