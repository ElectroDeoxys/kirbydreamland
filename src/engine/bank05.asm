SECTION "Bank 5@4ad6", ROMX[$4ad6], BANK[$5]

Func_14ad6::
	ld hl, STARTOF(WRAM0)
.loop_clear_wram
	xor a
	ld [hli], a
	ld a, HIGH(STARTOF(WRAM0) + SIZEOF(WRAM0) + SIZEOF(WRAMX))
	cp h
	jr nz, .loop_clear_wram

	ld hl, hLCDC
.loop_clear_hram
	xor a
	ld [hli], a
	ld a, l
	cp LOW(hStack)
	jr nz, .loop_clear_hram

	ld a, $01
	ld [wd051], a
	ld [wd052], a
	ld [wd074], a
	ld a, $30
	ld [wd05c], a
	ld a, $00
	ld [wd05d], a
	ld a, $ff
	ld [wd096], a
	ld [wd03d], a
	xor a
	ld [hl], a
	ld a, $e4
	ld [wBGP], a
	ld a, $d0
	ld [wOBP], a
	ld a, $c0
	ld [hff8c], a
	ld a, $00
	ld [hff8d], a
	ld a, $0c
	ld [wd050], a
	ld a, $01
	ld [wd048], a
	ld hl, wd02f
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ret
; 0x14b30

SECTION "Bank 5@4abe", ROMX[$4abe], BANK[$5]

InitTransferVirtualOAMFunction::
	ld c, LOW(hTransferVirtualOAM)
	ld b, .end - .Func
	ld hl, .Func
.loop_copy
	ld a, [hli]
	ld [$ff00+c], a
	inc c
	dec b
	jr nz, .loop_copy
	ret

.Func:
	ld a, HIGH(wVirtualOAM)
	ldh [rDMA], a ; start DMA transfer (starts right after instruction)
	ld a, 160 / (1 + 3) ; delay for a total of 160 cycles
.loop
	dec a        ; 1 cycle
	jr nz, .loop ; 3 cycles
	ret
.end
; 0x14ad6

SECTION "Bank 5@4b30", ROMX[$4b30], BANK[$5]

Func_14b30::
	ld hl, $4b3a
	ld de, $dc00
	call Decompress
	ret
; 0x14b3a

SECTION "Bank 5@4e0b", ROMX[$4e0b], BANK[$5]

Func_14e0b::
