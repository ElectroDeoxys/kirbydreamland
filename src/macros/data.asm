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

MACRO object
	db \1 ; x
	db \2 ; y
	db \3 ; ?
	db \4 ; ?
	dw \5 ; anim script
	dw \6 ; motion script
	dw \7 ; object properties
IF _NARG == 8
	db \8 ; consumable item ID
ENDC
ENDM
