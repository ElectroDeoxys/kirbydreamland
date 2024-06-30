SECTION "Bank 5@4ad6", ROMX[$4ad6], BANK[$5]

; clears WRAM and HRAM
; and inits some variables
InitRAM::
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
	ld a, VBLANK_6 | VBLANK_7
	ld [hVBlankFlags], a
	ld a, $00
	ld [hff8d], a
	ld a, SELECT | START
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

InitDMATransferFunction::
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
	ld de, wdc00
	call Decompress
	ret
; 0x14b3a

SECTION "Bank 5@4d53", ROMX[$4d53], BANK[$5]

Data_14d53:
	db $08, $00, $08, $00, $80, $00, $00, $08, $00, $80, $80, $00, $00, $00, $80, $00, $00, $08, $00, $80

Func_14d67:

SECTION "Bank 5@4dc5", ROMX[$4dc5], BANK[$5]

Func_14dc5::
	ld b, a
	ld hl, wde56
	ld c, $04
	xor a
.loop_clear
	ld [hli], a
	dec c
	jr nz, .loop_clear

	ld hl, Data_14d53
	ld de, wde2e
	ld c, $14
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ld a, $ff
	cp b
	ret z
	ld e, b
	ld d, $00
	ld hl, Data_179f3
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld a, [de]
	ld h, a
	push hl
	ld bc, $7
.asm_14df3
	ld hl, wde52
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_14e03
	call Func_14d67
	pop hl
	dec h
	push hl
	jr z, .done
.asm_14e03
	dec c
	ld a, $03
	cp c
	jr nz, .asm_14df3
.done
	pop hl
	ret

Func_14e0b::

SECTION "Bank 5@79f3", ROMX[$79f3], BANK[$5]

Data_179f3:
	dw $54df
	dw $54ec
	dw $54f9
	dw $5506
	dw $5513
	dw $551a
	dw $5527
	dw $5534
	dw $553e
	dw $554b
	dw $5558
	dw $5565
	dw $5572
	dw $557f
	dw $558c
	dw $5599
	dw $55a6
	dw $55b3
	dw $55c0
	dw $707e
	dw $7085
	dw $708c
	dw $7090
	dw $7094
	dw $7098
	dw $709c
	dw $70a3
	dw $70aa
	dw $70ae
	dw $70b2
	dw $70b6
	dw $70ba
	dw $70c1
	dw $70c8
	dw $70cc
	dw $70d0
	dw $70d4
	dw $70d8
	dw $70dc
	dw $70e0
	dw $70e4
	dw $70e8
	dw $70ef
	dw $70f9
	dw $7106
	dw $710a
	dw $710e
	dw $7112
	dw $7116
	dw $7120
	dw $7124
	dw $7128
	dw $712c
	dw $7139
	dw $7140
; 0x17a61
