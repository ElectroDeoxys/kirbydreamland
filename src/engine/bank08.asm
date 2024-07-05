SECTION "Bank 8@4587", ROMX[$4587], BANK[$8]

Script_20587:
.loop
	frame 16, $5e55
	frame 16, $5e5d
	jump_abs .loop
; 0x20590

SECTION "Bank 8@45ae", ROMX[$45ae], BANK[$8]

Script_205ae:
.loop
	frame 10, $5e55
	frame 10, $5e5d
	frame 10, $5e55
	frame 10, $5e5d
	frame 20, $5e65
	frame 10, $5e6d
	frame 10, $5e65
	frame 10, $5e6d
	frame 10, $5e55
	jump_abs .loop

Script_205cc:
.loop
	frame 64, $5e55
	frame  8, $5e5d
	frame  8, $5e6d
	frame 64, $5e65
	frame  8, $5e6d
	frame  8, $5e5d
	jump_abs .loop
; 0x205e1

SECTION "Bank 8@4647", ROMX[$4647], BANK[$8]

Script_20647:
.loop
	frame 10, $5ec5
	frame 10, $5ecd
	jump_abs .loop
; 0x20650

SECTION "Bank 8@4c52", ROMX[$4c52], BANK[$8]

Script_20c52:
.loop
	frame 12, $41fc
	frame 24, $4204
	jump_abs .loop

Script_20c5b:
.loop
	frame 80, $41f4
	frame  8, $41fc
	frame  8, $4204
	frame  8, $41fc
	frame 40, $4204
	jump_abs .loop

Script_20c6d:
	create_object Script_20c7e, $4008, Data_3421
	script_call_arg PlaySFX, SFX_30
	frame 1, $41cc
	script_call_bank01 $4afb

Script_20c7e:
	set_custom_func $4105, NULL
	script_call_bank01 $48e1
	script_call_bank01 Func_30b2
	dw .branch_1
	dw .branch_2
.branch_1
	set_scripts .asm_20c92, $4db7
.asm_20c92
	script_e6 $06
	frame 4, $41a4
	frame 4, $419c
	script_e7
	script_call_bank01 $48e8
	script_call_bank01 Func_3121
	dw $34ff
	set_scripts Script_20cc3, $4ddf
.branch_2
	set_scripts Script_20cad, $4dcb

Script_20cad:
	script_e6 $06
	frame 4, $41b4
	frame 4, $41ac
	script_e7
	script_call_bank01 $48e8
	script_call_bank01 Func_3121
	dw $34ff
	set_scripts Script_20ccb, $4de7

Script_20cc3:
.loop
	script_e3 Script_20cd3
	script_e3 Script_20cdd
	jump_rel .loop

Script_20ccb:
.loop
	script_e3 Script_20cdd
	script_e3 Script_20cd3
	jump_rel .loop

Script_20cd3:
	script_e6 $0c
	frame 17, $419c
	frame 17, $41a4
	script_e7
	script_e4

Script_20cdd:
	script_e6 $0c
	frame 17, $41ac
	frame 17, $41b4
	script_e7
	script_e4

Script_20ce7:
.loop
	script_e3 $4cf7
	script_e3 $4d01
	jump_rel .loop
; 0x20cef

SECTION "Bank 8@4d0b", ROMX[$4d0b], BANK[$8]

Script_20d0b:
	set_custom_func Func_140c2, Script_20c6d
.loop
	frame 20, $41c4
	frame 20, $41bc
	jump_abs .loop

Script_20d19:
.loop
	frame 20, $41c4
	frame 20, $41bc
	jump_abs .loop
; 0x20d22
