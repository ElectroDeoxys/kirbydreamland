SECTION "Bank 8@4587", ROMX[$4587], BANK[$8]

Anim_20587:
.loop
	dbw 16, $5e55
	dbw 16, $5e5d
	anim_jp .loop
; 0x20590

SECTION "Bank 8@45ae", ROMX[$45ae], BANK[$8]

Anim_205ae:
.loop
	dbw 10, $5e55
	dbw 10, $5e5d
	dbw 10, $5e55
	dbw 10, $5e5d
	dbw 20, $5e65
	dbw 10, $5e6d
	dbw 10, $5e65
	dbw 10, $5e6d
	dbw 10, $5e55
	anim_jp .loop

Anim_205cc:
.loop
	dbw 64, $5e55
	dbw  8, $5e5d
	dbw  8, $5e6d
	dbw 64, $5e65
	dbw  8, $5e6d
	dbw  8, $5e5d
	anim_jp .loop
; 0x205e1

SECTION "Bank 8@4647", ROMX[$4647], BANK[$8]

Anim_20647:
.loop
	dbw 10, $5ec5
	dbw 10, $5ecd
	anim_jp .loop
; 0x20650

SECTION "Bank 8@4c52", ROMX[$4c52], BANK[$8]

Anim_20c52:
.loop
	dbw 12, $41fc
	dbw 24, $4204
	anim_jp .loop

Anim_20c5b:
.loop
	dbw 80, $41f4
	dbw  8, $41fc
	dbw  8, $4204
	dbw  8, $41fc
	dbw 40, $4204
	anim_jp .loop

Anim_20c6d:
	anim_fc .asm_20c7e, $4008, Data_3421
	anim_callarg PlaySFX, SFX_30
	dbw 1, $41cc
	anim_call $4afb

.asm_20c7e
	anim_ee $4105, NULL
	anim_call $48e1
	anim_call Func_30b2
	dw .branch_1
	dw .branch_2
.branch_1
	anim_e5 .asm_20c92, $4db7
.asm_20c92
	anim_e6 $06
	dbw 4, $41a4
	dbw 4, $419c
	anim_e7
	anim_call $48e8
	anim_call Func_3121
	dw $34ff
	anim_e5 .loop_1, $4ddf
.branch_2
	anim_e5 .asm_20cad, $4dcb
.asm_20cad
	anim_e6 $06
	dbw 4, $41b4
	dbw 4, $41ac
	anim_e7
	anim_call $48e8
	anim_call Func_3121
	dw $34ff
	anim_e5 .loop_2, $4de7
.loop_1
	anim_e3 $4cd3
	anim_e3 $4cdd
	anim_jr .loop_1

.loop_2
	anim_e3 $4cdd
	anim_e3 $4cd3
	anim_jr .loop_2

	anim_e6 $0c
	dbw 17, $419c
	dbw 17, $41a4
	anim_e7
	anim_e4
	anim_e6 $0c
	dbw 17, $41ac
	dbw 17, $41b4
	anim_e7
	anim_e4
.loop_3
	anim_e3 $4cf7
	anim_e3 $4d01
	anim_jr .loop_3
; 0x20cef

SECTION "Bank 8@4d0b", ROMX[$4d0b], BANK[$8]

Anim_20d0b:
	anim_ee Func_140c2, Anim_20c6d
.loop
	dbw 20, $41c4
	dbw 20, $41bc
	anim_jp .loop
; 0x20d19

SECTION "Bank 8@4d19", ROMX[$4d19], BANK[$8]

Anim_20d19:
.loop
	dbw 20, $41c4
	dbw 20, $41bc
	anim_jp .loop
; 0x20d22
