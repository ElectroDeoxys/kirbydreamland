MACRO lb ; r, hi, lo
	ld \1, (\2) << 8 + ((\3) & $ff)
ENDM

MACRO bankswitch
	ld [wROMBank], a
	ld [rROMB0 + $100], a
ENDM
