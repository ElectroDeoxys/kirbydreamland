SECTION "Bank 6@4000", ROMX[$4000], BANK[$6]

Func_18000::
	ld a, $ff
	ld [wd096], a
	call Func_193b
	call ResetTimer

	xor a
	ld [wd095], a
	ld [wSCX], a
	ld [wOBP], a
	ld [wBGP], a
	ld a, $00 ; unnecessary
	ld [wSCY], a

	ld hl, $4000
	ld de, v0Tiles0
	ld c, $02
	call FarDecompress
	ld hl, $4000
	ld de, v0Tiles1
	ld c, $0a
	call FarDecompress
	ld hl, $42ac
	ld de, v0Tiles2
	ld c, $0a
	call FarDecompress
	ld hl, $77e9
	ld de, $8e00
	ld c, $02
	call FarDecompress
	ld hl, $4000
	ld de, v0BGMap0
	ld c, $03
	call FarDecompress

	ld a, $05
	call Func_1eb4

	ld a, $01
	call Func_21fb
	call $1e67 ; Func_1e67
	xor a
	ld [hff90], a
	ld a, $04
	ld [hHUDFlags], a
	call .Func_180a0
	ld a, $01
	call $1dc3 ; Func_1dc3
	call Func_670
	ld a, $08
	ld [wd050], a
.asm_1807a
	ld a, $01
	call $1dc3 ; Func_1dc3
	ld a, [hJoypadPressed]
	cp $86
	jp z, $6386 ; Func_1a386
	cp $45
	jr nz, .asm_18093
	ld a, $01
	ld [wd03a], a
	call .Func_180a0
.asm_18093
	ld a, [hJoypadPressed]
	and $08
	jr z, .asm_1807a
	ld a, $1b
	call $1e96 ; Func_1e96
	ret

.Func_180a0:
	ld a, [wd03a]
	and a
	ret z
	ld bc, $9945
	ld de, .tile_indices
	ld hl, wTileQueue
	ld a, .tile_indices_end - .tile_indices
.asm_180b0
	push af
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ld a, [de]
	ld [hli], a
	inc de
	inc bc
	pop af
	dec a
	jr nz, .asm_180b0
	xor a ; terminating byte
	ld [wTileQueue + (.tile_indices_end - .tile_indices) * $3], a
	ld a, [hff91]
	set 2, a
	ld [hff91], a
	ret

.tile_indices
	db $e4, $79, $f2, $f0, $e0, $00, $e6, $e0, $ec, $e4
.tile_indices_end
; 0x180d4
