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

hKirbyFlags4:: ; ff93
	db

hKirbyFlags5:: ; ff94
	db

hKirbyFlags6:: ; ff95
	db

; if bit 7 is set, then block in wBlockFillPtr
; will be filled by tile index in wBlockFillTileIndex
; during next V-Blank
hBlockFillPending:: ; ff96
	db

SECTION "Stack", HRAM

hStack:: ; ff97
	ds $67

hStackTop:: ; fffe
	db
