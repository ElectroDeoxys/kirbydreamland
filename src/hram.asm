SECTION "HRAM", HRAM

hLCDC:: ; ff8a
	db

hJoypadPressed:: ; ff8b
	db

hVBlankFlags:: ; ff8c
	db

hKirbyFlags1:: ; ff8d
	db

hKirbyFlags2:: ; ff8e
	db

hHUDFlags:: ; ff8f
	db

hPalFadeFlags:: ; ff90
	db

hEngineFlags:: ; ff91
	db

hKirbyFlags3:: ; ff92
	db

hff93:: ; ff93
	db

hff94:: ; ff94
	db

hff95:: ; ff95
	db

hff96:: ; ff96
	db

SECTION "Stack", HRAM

hStack:: ; ff97
	ds $67

hStackTop:: ; fffe
	db
