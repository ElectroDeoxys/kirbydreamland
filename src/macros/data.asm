MACRO bigdw ; big-endian word
	db HIGH(\1), LOW(\1)
ENDM

MACRO dbw
	db \1
	dw \2
ENDM

MACRO dwb
	dw \1
	db \2
ENDM

MACRO dn ; nybbles
REPT _NARG / 2
	db ((\1) << 4) | (\2)
	shift 2
ENDR
ENDM

DEF percent EQUS "* $ff / 100"
