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
