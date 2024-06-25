SECTION "HRAM", HRAM

hTransferVirtualOAM:: ; ff80
	ds $a

hLCDC:: ; ff8a
	db

hJoypadPressed:: ; ff8b
	db

hff8c:: ; ff8c
	db

hff8d:: ; ff8d
	db

	ds $1

hHUDFlags:: ; ff8f
	db

hff90:: ; ff90
	db

hff91:: ; ff91
	db

	ds $1

hff93:: ; ff93
	db

	ds $2

hff96:: ; ff96
	db

hStack:: ; ff97
	ds $67
hStackTop:: ; fffe
	db
