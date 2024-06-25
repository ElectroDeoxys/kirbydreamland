SECTION "Home@0648", ROM0[$0648]

Func_648:
	push hl
	ldh a, [hff91]
	and $fb
	ldh [hff91], a
	ldh a, [hff90]
	or $c8
	ldh [hff90], a
.asm_655
	xor a
	ld [wd095], a
	call Func_2e9c
	call Func_193b
	ld hl, hff8c
	set 6, [hl]
.asm_664
	bit 6, [hl]
	jr nz, .asm_664
	ldh a, [hff90]
	bit 7, a
	jr nz, .asm_655
	pop hl
	ret

Func_670::
	ldh a, [hff91]
	and $fb
	ldh [hff91], a
	ldh a, [hff90]
	and $3c
	or $88
	ldh [hff90], a
.asm_67e
	ld hl, hff8c
	set 6, [hl]
.asm_683
	bit 6, [hl]
	jr nz, .asm_683
	ldh a, [hff90]
	bit 7, a
	jr nz, .asm_67e
	ret

; read the joypad register and translate it to something more
; workable for use in-game. There are 8 buttons, so we can use
; one byte to contain all player input.
ReadJoypad:
	ldh a, [hff8c]
	bit 7, a
	ret nz

; can only get four inputs at a time
; take d-pad first
	ld a, P1F_GET_DPAD
	ldh [rP1], a

; wait some cycles
REPT 5
	push hl
	pop hl
ENDR

; store the d-pad value
	ldh a, [rP1]
	and %1111
	ld c, a

; take the buttons values next
	ld a, P1F_GET_BTN
	ldh [rP1], a

; wait some cycles
REPT 5
	push hl
	pop hl
ENDR

	ldh a, [rP1]
	and %1111

	; button bits on lower nybble, d-pad on higher nybble
	swap c
	or c
	cpl
	ld b, a
	and BUTTONS
	cp A_BUTTON | B_BUTTON | SELECT | START
	jr nz, .no_reset

; soft reset game
	ld a, $80
	ldh [hff8c], a
	ei
	call Func_648
	call ResetTimer
	jp $156 ; Func_156

.no_reset
	ld a, [wd050]
	ld c, a
	ldh a, [hff93]
	and B_BUTTON
	or c
	ld c, a
	ld a, [wJoypadDown]
	and c
	and b
	xor b
	ldh [hJoypadPressed], a
	ld a, b
	ld [wJoypadDown], a

; reset joypad
	ld a, P1F_GET_NONE
	ldh [rP1], a
	ret
; 0x6ec

SECTION "Home@193b", ROM0[$193b]

Func_193b::
	ld a, [wd096]
	inc a
	jr nz, .asm_194d
	ld a, wVirtualOAMEnd - wVirtualOAM
	ld c, a
	ld [wd096], a
	xor a
	ld [wd095], a
	jr .asm_1955
.asm_194d
	ld a, [wd095]
	ld [wd096], a
	ld c, wVirtualOAMEnd - wVirtualOAM
.asm_1955
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ld de, $4
	ld b, $00
.loop_oam
	ld [hl], b
	add hl, de
	ld a, l
	cp c
	jr nz, .loop_oam
	ret
; 0x1964

SECTION "Home@1c01", ROM0[$1c01]

InitWindow:
	ld a, $a0
	ldh [rWX], a
	ld a, $90
	ldh [rWY], a
	ret
; 0x1c0a

SECTION "Home@1c6b", ROM0[$1c6b]

; input
; - a = number to get digits
; output:
; - a = ones digit
; - b = tens digit
; - c = hundreds digit
GetDigits:
	ld b, -1
	ld c, b
.loop_hundreds
	inc c
	sub 100
	jr nc, .loop_hundreds
	add 100
.loop_tens
	inc b
	sub 10
	jr nc, .loop_tens
	add 10
	ret
; 0x1c7d

SECTION "Home@1dfb", ROM0[$1dfb]

Func_1dfb:
	ldh a, [hLCDC]
	ldh [rLCDC], a
	ld a, [wSCX]
	ldh [rSCX], a
	ld a, [wSCY]
	ldh [rSCY], a
	ld a, [wBGP]
	ldh [rBGP], a
	ret
; 0x1e0f

SECTION "Home@1e2e", ROM0[$1e2e]

Func_1e2e:
	ld hl, hff96
	bit 7, [hl]
	ret z
	res 7, [hl]
	ld hl, wd029
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli] ; wd02b
	ld [de], a
	inc e
	ld [de], a
	ld hl, $20
	add hl, de
	ld [hld], a
	ld [hl], a
	ret
; 0x1e48

SECTION "Home@1e74", ROM0[$1e74]

ResetTimer::
	ld hl, hLCDC
	res LCDCB_ON, [hl]
	ld hl, hff91
	set 3, [hl]
.asm_1e7e
	bit 3, [hl]
	jr nz, .asm_1e7e
	ld a, TACF_STOP
	ldh [rTAC], a
	ld a, $bc
	ldh [rTMA], a
	ld a, TACF_START
	ldh [rTAC], a
	ret
; 0x1e8f

SECTION "Home@1eb4", ROM0[$1eb4]

; input:
; - a = ?
Func_1eb4::
	push bc
	ld c, a
	cp $05
	jr z, .asm_1ec7
	ld a, [wd02e]
	cp $21
	jr z, .asm_1ec7
	ld a, [wd02d]
	cp c
	jr z, .done
.asm_1ec7
	ld a, [wROMBank]
	push af
	ld a, $5
	bankswitch
	ld a, c
	ld [wd02d], a
	call $4dc5 ; Func_14dc5
	pop af
	bankswitch
.done
	pop bc
	ret

Func_1ee3:
	ldh a, [hff8c]
	bit 6, a
	ret z
	bit 5, a
	ret z
	ld bc, wTileQueue
.asm_1eee
	ld a, [bc]
	inc bc
	ld h, a
	and a
	ret z
	ld a, [bc]
	inc bc
	ld l, a
	ld a, [bc]
	inc bc
	ld [hli], a
	ld a, [bc]
	inc bc
	ld [hl], a
	ld a, [bc]
	inc bc
	ld de, $1f
	add hl, de
	ld [hli], a
	ld a, [bc]
	inc bc
	ld [hl], a
	jr .asm_1eee

Func_1f08:
	ld a, [wd032]
	cp 5
	ret c ; < 5
	xor a
	ld [wd032], a

	ldh a, [hff90]
	bit 7, a
	ret z
	and $04
	ld e, a
	ldh a, [hff90]
	and $03
	ld c, a
	cp $03
	jp z, .asm_1fab
	inc a
	ld b, a
	ldh a, [hff90]
	and $fc
	or b
	ldh [hff90], a
	ldh a, [hff90] ; unnecessary
	bit 6, a
	jr nz, .asm_1f78
	ld d, $00
	ld b, d ; $00
	ld hl, $20b9
	add hl, de
	add hl, bc
	ld a, [wBGP]
	bit 2, e
	jr nz, .asm_1f48
	srl a
	srl a
	jr .asm_1f4c
.asm_1f48
	sla a
	sla a
.asm_1f4c
	ld b, a
	ld a, [hl]
	or b
	ld [wBGP], a
	ldh [rBGP], a
	ldh [rOBP1], a
	ld d, $00
	ld b, d
	ld hl, $20b1
	add hl, de
	add hl, bc
	ld a, [wOBP]
	bit 2, e
	jr nz, .asm_1f6b
	srl a
	srl a
	jr .asm_1f6f
.asm_1f6b
	sla a
	sla a
.asm_1f6f
	ld b, a
	ld a, [hl]
	or b
	ld [wOBP], a
	ldh [rOBP0], a
	ret
.asm_1f78
	ld a, [wBGP]
	bit 2, e
	jr nz, .asm_1f85
	sla a
	sla a
	jr .asm_1f8b
.asm_1f85
	srl a
	srl a
	or $c0
.asm_1f8b
	ld [wBGP], a
	ldh [rBGP], a
	ldh [rOBP1], a
	ld a, [wOBP]
	bit 2, e
	jr nz, .asm_1f9f
	sla a
	sla a
	jr .asm_1fa5
.asm_1f9f
	srl a
	srl a
	or $c0
.asm_1fa5
	ld [wOBP], a
	ldh [rOBP0], a
	ret

.asm_1fab
	ldh a, [hff90]
	and $7c
	ldh [hff90], a
	ret

UpdateHUD:
	ld hl, hff8c
	bit 5, [hl]
	ret nz
	ld hl, hff90
	bit 6, [hl]
	ret nz
	ldh a, [hHUDFlags]
	bit 0, a
	jr z, .asm_2000
	ld hl, $9c06
	ld c, $0c
.asm_1fc9
	ld a, $7f
	ld [hli], a
	dec c
	jr nz, .asm_1fc9
	ldh a, [hHUDFlags]
	bit 7, a
	jr nz, .asm_1fea
	ld hl, wd08e
	ld bc, $9c06
	ld d, $5
.asm_1fdd
	ld a, [hli]
	ld [bc], a
	inc bc
	dec d
	jr nz, .asm_1fdd
	ld a, $72
	ld [$9c0b], a
	jr .asm_1ffa
.asm_1fea
	ld hl, $9c06
	ld a, [wd093]
	and a
	jr z, .asm_1ffa
	ld c, a
	ld a, $69
.asm_1ff6
	ld [hli], a
	dec c
	jr nz, .asm_1ff6
.asm_1ffa
	ldh a, [hHUDFlags]
	res 0, a
	ldh [hHUDFlags], a
.asm_2000
	ldh a, [hHUDFlags]
	bit 1, a
	jr z, .asm_202d
	res 1, a
	ldh [hHUDFlags], a
	bit 7, a
	jr nz, .asm_201e
	ld a, $7f
	ld [$9c02], a
	ld a, $6c
	ld [$9c03], a
	inc a
	ld [$9c04], a
	jr .asm_202d
.asm_201e
	ld a, $7f
	ld [$9c02], a
	ld a, $6a
	ld [$9c03], a
	ld a, $7f
	ld [$9c04], a
.asm_202d
	ldh a, [hHUDFlags]
	bit 2, a
	jr nz, .lives
	ld a, [wHP]
	ld c, a
	ld b, a
	ld hl, $9c26
	and a
	jr z, .asm_2044
	ld a, $68
.asm_2040
	ld [hli], a
	dec c
	jr nz, .asm_2040
.asm_2044
	ld a, [wMaxHP]
	sub b
	ld b, a
	jr z, .asm_2051
	ld a, $6e
.asm_204d
	ld [hli], a
	dec b
	jr nz, .asm_204d
.asm_2051
	ld a, $7f
	ld [hli], a
.lives
	ldh a, [hHUDFlags]
	bit 4, a
	ret z
	res 4, a
	ldh [hHUDFlags], a
	ld a, [wLives]
	dec a
	call GetDigits
	add $72
	ld [$9c31], a ; ones digit
	ld a, b
	add $72
	ld [$9c30], a ; tens digit
	ret
; 0x2070

SECTION "Home@20c1", ROM0[$20c1]

; input:
; - c = bank
; - hl = source address
; - de = destination address
FarDecompress::
	ld a, [wROMBank]
	push af
	ld a, c
	bankswitch
	ld [rROMB0 + $100], a ; unnecessary
	call Decompress
	pop af
	bankswitch
	ret

; input:
; - hl = source address
; - de = destination address
Decompress::
	ld a, e
	ld [wd097 + 0], a
	ld a, d
	ld [wd097 + 1], a

.loop_compressed_data
	ld a, [hl]
	cp $ff
	ret z ; done
	and $e0
	cp $e0
	jr nz, .short_length

; long length
	ld a, [hl]
	add a
	add a
	add a ; *8
	and $e0
	push af
	ld a, [hli]
	and $03
	ld b, a
	ld a, [hli]
	ld c, a
	inc bc
	jr .got_length

.short_length
	push af
	ld a, [hli]
	and $1f
	ld c, a
	ld b, $00
	inc c
.got_length
	inc b
	inc c
	pop af
	bit 7, a
	jr nz, .is_lookback
	cp $20
	jr z, .repeat_byte
	cp $40
	jr z, .loop_repeat_bytes
	cp $60
	jr z, .increasing_sequence
.loop_literal_copy
	dec c
	jr nz, .continue_literal_copy
	dec b
	jp z, .loop_compressed_data
.continue_literal_copy
	ld a, [hli]
	call wd099
	jr .loop_literal_copy

.repeat_byte
	ld a, [hli]
.loop_repeat_byte
	dec c
	jr nz, .continue_repeat_byte
	dec b
	jp z, .loop_compressed_data
.continue_repeat_byte
	call wd099
	jr .loop_repeat_byte

.loop_repeat_bytes
	dec c
	jr nz, .continue_repeat_bytes
	dec b
	jp z, .done_repeat_bytes
.continue_repeat_bytes
	ld a, [hli]
	call wd099
	ld a, [hld]
	call wd099
	jr .loop_repeat_bytes
.done_repeat_bytes
	inc hl
	inc hl
	jr .loop_compressed_data

.increasing_sequence
	ld a, [hli]
.loop_increasing_sequence
	dec c
	jr nz, .continue_increasing_sequence
	dec b
	jp z, .loop_compressed_data
.continue_increasing_sequence
	call wd099
	inc a
	jr .loop_increasing_sequence

.is_lookback
	push hl
	push af
	ld a, [hli]
	ld l, [hl]
	ld h, a
	ld a, [wd097 + 0]
	add l
	ld l, a
	ld a, [wd097 + 1]
	adc h
	ld h, a
	pop af
	cp $80
	jr z, .loop_lookback
	cp $a0
	jr z, .loop_lookback_inverted
	cp $c0
	jr z, .loop_reverse_lookback

.loop_lookback
	dec c
	jr nz, .continue_lookback
	dec b
	jr z, .done_lookback
.continue_lookback
	ld a, [hli]
	ld [de], a
	inc de
	jr .loop_lookback

.loop_lookback_inverted
	dec c
	jr nz, .continue_lookback_inverted
	dec b
	jp z, .done_lookback
.continue_lookback_inverted
	ld a, [hli]
	push bc
	lb bc, 0, 8
.loop_invert_bits
	rra
	rl b
	dec c
	jr nz, .loop_invert_bits
	ld a, b
	pop bc
	ld [de], a
	inc de
	jr .loop_lookback_inverted

.loop_reverse_lookback
	dec c
	jr nz, .continue_reverse_lookback
	dec b
	jp z, .done_lookback
.continue_reverse_lookback
	ld a, [hld]
	ld [de], a
	inc de
	jr .loop_reverse_lookback

.done_lookback
	pop hl
	inc hl
	inc hl
	jp .loop_compressed_data
; 0x21a5

SECTION "Home@21bb", ROM0[$21bb]

; writes the following routine to wd099:
;	nop
;	nop
;	ld [de], a
;	nop
;	nop
;	inc de
;	ret
Func_21bb:
	ld hl, wd099
	xor a
	ld [hli], a ; nop
	ld [hli], a ; nop
	ld a, $12
	ld [hli], a ; ld [de], a
	xor a
	ld [hli], a ; nop
	ld [hli], a ; nop
	ld a, $13
	ld [hli], a ; inc de
	ld a, $c9
	ld [hl], a ; ret
	ret
; 0x21ce

SECTION "Home@21fb", ROM0[$21fb]

; input:
; - a = ?
Func_21fb::
	ld [$d3f2], a
	ld a, $ff
	ld [wd096], a

	call Func_193b

	ld a, [wROMBank]
	push af
	ld a, [wd039]
	and a
	ld a, $07
	jr z, .asm_2214
	ld a, $0f
.asm_2214
	ld [$d3f0], a
	bankswitch
	ld d, $00
	ld a, [$d3f2]
	and a
	jr z, .asm_222b
	dec a
	ld hl, $40ce
	jr .asm_2249
.asm_222b
	ld hl, $ff94
	bit 1, [hl]
	jr z, .asm_223a
	ld hl, $413a
	ld a, [$d03b]
	jr .asm_2249
.asm_223a
	ld hl, $4000
	ld a, [$d03b]
	ld e, a
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [$d03e]
.asm_2249
	ld e, a
	add hl, de
	add hl, de
	add hl, de
	add hl, de ; *16
	ld a, [hli]
	ld [$d3e5], a
	ld a, [hli]
	ld [$d3e6], a
	ld a, [hli]
	ld [$d3e7], a
	ld a, [hl]
	ld [$d3e8], a
	pop af
	bankswitch

	call $231e ; Func_231e

	xor a
	ld [$d3e9], a
	ld [$d3ea], a
	ld [$d3eb], a
	ld [$d3ec], a
	ld [$d3ed], a
	ld [$d3ee], a
	ld [$d3be], a
	ld [$d3c0], a
	ld [$d3f7], a
	ld [$d3c2], a
	ld [$d3f5], a
	ld [$d3f8], a
	inc a
	ld hl, wd037
	ld [hli], a
	ld [hl], a

	ld a, [hff91]
	and $fc
	ld [hff91], a

	ld a, [$d03f]
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *16
	ld a, l
	ld [$d3e3], a
	ld a, h
	ld [$d3e4], a
	ld a, [$d3f2]
	and a
	jr nz, .asm_22c5
	ld a, [$ff94]
	and $02
	jr nz, .asm_22c5
	ld hl, $414e
	ld de, $8080
	call $2338 ; Func_2338
	jr c, .asm_22dd
.asm_22c5
	call $3199 ; Func_3199
	ld hl, $d3ed
	ld a, [wd051]
	cp [hl]
	jr nz, .asm_22c5
.asm_22d1
	call $3199 ; Func_3199
	ld hl, $d3ee
	ld a, [wd052]
	cp [hl]
	jr nz, .asm_22d1
.asm_22dd
	xor a
	ld [$d3f6], a
	ld [$d3cc], a
	ld hl, $ff95
	bit 0, [hl]
	ret nz
	ld hl, $ff94
	bit 1, [hl]
	ret nz
	ld b, $00
	ld hl, $d3df
	ld a, [hli]
	or [hl]
	jr z, .asm_2305
	ld hl, $ff95
	bit 6, [hl]
	jr z, .asm_2303
	call $3768 ; Func_3768
.asm_2303
	set 4, b
.asm_2305
	ld hl, $d3e1
	ld a, [hli]
	or [hl]
	jr z, .asm_230e
	set 4, b
.asm_230e
	ld a, b
	ld [$d1a0], a
	xor a
	ld [$d190], a
	ret
; 0x2317

SECTION "Home@2e9c", ROM0[$2e9c]

Func_2e9c:
	ld a, [wROMBank]
	push af
	ld a, $01
	bankswitch
	call $2fdf ; Func_2fdf
	ld hl, $d3bf
	bit 0, [hl]
	call nz, $4bb4
	ld b, $10
	ld c, $00
.asm_2eb7
	push bc
	ld b, $00
	ld hl, $d160
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_2ecf
	cp $ff
	jr z, .asm_2ecf
	dec a
	jr z, .asm_2ecc
	ld [hl], a
	jr .asm_2ecf
.asm_2ecc
	call $29b7 ; Func_29b7
.asm_2ecf
	pop bc
	inc c
	dec b
	jr nz, .asm_2eb7
	ld hl, hff93
	bit 2, [hl]
	jr nz, .asm_2f15
	ld a, [wROMBank]
	push af
	ld a, $05
	bankswitch
	ld b, $10
	ld c, $00
.asm_2eeb
	push bc
	ld b, $00
	ld hl, $d160
	add hl, bc
	ld a, [hl]
	cp $01
	jr nz, .asm_2f05
	ld hl, $d35a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h
	jr z, .asm_2f05
	call $2f33 ; Func_2f33
.asm_2f05
	pop bc
	inc c
	dec b
	jp nz, .asm_2eeb
	pop af
	bankswitch
	call $2f34 ; Func_2f34
.asm_2f15
	ld b, $10
	ld c, $00
.asm_2f19
	push bc
	ld b, $00
	ld hl, $d160
	add hl, bc
	ld a, [hl]
	cp $01
	call z, $2b26 ; Func_2b26
	pop bc
	inc c
	dec b
	jr nz, .asm_2f19
	pop af
	bankswitch
	ret
; 0x2f33
