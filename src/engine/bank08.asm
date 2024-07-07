GfxScript_20000:
	frame  0, $58b8

	script_delay 0
	script_exec Func_3121
	dw $35b7
	set_custom_func Func_41b1, GfxScript_20ba2
	script_exec Func_4adf
	set_scripts GfxScript_203be, MotionScript_102fb
; 0x20017

SECTION "Bank 8@43be", ROMX[$43be], BANK[$8]

GfxScript_203be:
	script_exec_arg PlaySFX, SFX_10
	script_repeat 2
	frame  2, $5d39
	frame  2, $5d51
	frame  2, $5d69
	frame  2, $5d81
	frame  2, $5d99
	frame  2, $5db1
	frame  2, $5dc9
	frame  2, $5de1
	script_repeat_end
	script_end
; 0x203de

SECTION "Bank 8@4587", ROMX[$4587], BANK[$8]

GfxScript_20587:
.loop
	frame 16, $5e55
	frame 16, $5e5d
	jump_abs .loop
; 0x20590

SECTION "Bank 8@45ae", ROMX[$45ae], BANK[$8]

GfxScript_205ae:
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

GfxScript_205cc:
.loop
	frame 64, $5e55
	frame  8, $5e5d
	frame  8, $5e6d
	frame 64, $5e65
	frame  8, $5e6d
	frame  8, $5e5d
	jump_abs .loop
; 0x205e1

SECTION "Bank 8@463b", ROMX[$463b], BANK[$8]

GfxScript_2063b:
	frame  8, $5ecd
	frame  0, $5ec5

	frame  8, $5edd
	frame  0, $5ed5

GfxScript_20647:
.loop
	frame 10, $5ec5
	frame 10, $5ecd
	jump_abs .loop
; 0x20650

SECTION "Bank 8@4662", ROMX[$4662], BANK[$8]

GfxScript_20662:
.loop
	frame  5, $5ed5
	frame  5, $5edd
	jump_abs .loop
; 0x2066b

SECTION "Bank 8@48f1", ROMX[$48f1], BANK[$8]

GfxScript_208f1:
	frame  0, $5c1d
; 0x208f4

SECTION "Bank 8@492e", ROMX[$492e], BANK[$8]

GfxScript_2092e:
	script_exec Func_4ad6
	frame  0, $5c7d

	frame  0, $5c81

.loop
	frame 16, $5c89
	script_exec Func_4aba
	frame  8, $5c89
	script_exec Func_4ab3
	jump_abs .loop
; 0x20946

SECTION "Bank 8@4958", ROMX[$4958], BANK[$8]

GfxScript_20958:
.loop
	frame 20, $5c25
	frame 20, $5c2d
	frame 20, $5c3d
	frame 20, $5c45
	jump_abs .loop
; 0x20967

SECTION "Bank 8@4a01", ROMX[$4a01], BANK[$8]

GfxScript_20a01:
	script_exec_arg PlaySFX, SFX_28
	script_fb $03
	dw GfxScript_20a0f
	dw GfxScript_20a3b
	dw GfxScript_20a76
	dw GfxScript_20ab7

GfxScript_20a0f:
	create_object GfxScript_208f1, MotionScript_1083f, Data_3421
	create_object GfxScript_208f1, MotionScript_10850, Data_3421
	frame  3, $5c25
	frame  3, $5c2d
	create_object GfxScript_208f1, MotionScript_10835, Data_3421
	create_object GfxScript_208f1, MotionScript_10846, Data_3421
	frame  3, $5c3d
	frame  3, $5c45
	frame  3, $5c25
	script_end

GfxScript_20a3b:
	create_object GfxScript_208f1, MotionScript_10857, Data_3421
	create_object GfxScript_208f1, MotionScript_1086b, Data_3421
	create_object GfxScript_208f1, MotionScript_1087f, Data_3421
	create_object GfxScript_208f1, MotionScript_10893, Data_3421
	script_delay 9
	create_object GfxScript_208f1, MotionScript_10861, Data_3421
	create_object GfxScript_208f1, MotionScript_10875, Data_3421
	create_object GfxScript_208f1, MotionScript_10889, Data_3421
	create_object GfxScript_208f1, MotionScript_1089d, Data_3421
	script_end

GfxScript_20a76:
	script_exec Func_30b2
	dw .script_20a7d, .script_20a9a
.script_20a7d
	create_object GfxScript_208f1, MotionScript_108a7, Data_3421
	create_object GfxScript_208f1, MotionScript_108b4, Data_3421
	create_object GfxScript_208f1, MotionScript_108c1, Data_3421
	create_object GfxScript_208f1, MotionScript_108ce, Data_3421
	script_end
.script_20a9a
	create_object GfxScript_208f1, MotionScript_108db, Data_3421
	create_object GfxScript_208f1, MotionScript_108e8, Data_3421
	create_object GfxScript_208f1, MotionScript_108f5, Data_3421
	create_object GfxScript_208f1, MotionScript_10902, Data_3421
	script_end

GfxScript_20ab7:
	create_object GfxScript_20ad4, MotionScript_1090f, Data_3421
	create_object GfxScript_20ad4, MotionScript_10915, Data_3421
	create_object GfxScript_20ad4, MotionScript_1091b, Data_3421
	create_object GfxScript_20ad4, MotionScript_10921, Data_3421
	script_end

GfxScript_20ad4:
	frame 10, $5c1d
	set_motion_script MotionScript_10008
	script_delay 10
	script_end
; 0x20adf

SECTION "Bank 8@4ba2", ROMX[$4ba2], BANK[$8]

GfxScript_20ba2:
	script_exec Func_4a1c
	script_exec Func_3121
	dw $35b7
	set_scripts GfxScript_203be, MotionScript_10008
	set_custom_func Func_42a3, NULL
	jump_abs GfxScript_20000
; 0x20bb7

SECTION "Bank 8@4c52", ROMX[$4c52], BANK[$8]

GfxScript_20c52:
.loop
	frame 12, $41fc
	frame 24, $4204
	jump_abs .loop

GfxScript_20c5b:
.loop
	frame 80, $41f4
	frame  8, $41fc
	frame  8, $4204
	frame  8, $41fc
	frame 40, $4204
	jump_abs .loop

GfxScript_20c6d:
	create_object GfxScript_20c7e, MotionScript_10008, Data_3421
	script_exec_arg PlaySFX, SFX_30
	frame 1, $41cc
	script_exec Func_4afb

GfxScript_20c7e:
	set_custom_func Func_4105, NULL
	script_exec Func_48e1
	script_exec Func_30b2
	dw .branch_1, .branch_2
.branch_1
	set_motion_script MotionScript_10db7
	script_repeat 6
	frame 4, $41a4
	frame 4, $419c
	script_repeat_end
	script_exec Func_48e8
	script_exec Func_3121
	dw $34ff
	set_scripts GfxScript_20cc3, MotionScript_10ddf
.branch_2
	set_scripts GfxScript_20cad, MotionScript_10dcb

GfxScript_20cad:
	script_repeat 6
	frame 4, $41b4
	frame 4, $41ac
	script_repeat_end
	script_exec Func_48e8
	script_exec Func_3121
	dw $34ff
	set_scripts GfxScript_20ccb, MotionScript_10de7

GfxScript_20cc3:
.loop
	script_call GfxSubScript_20cd3
	script_call GfxSubScript_20cdd
	jump_rel .loop

GfxScript_20ccb:
.loop
	script_call GfxSubScript_20cdd
	script_call GfxSubScript_20cd3
	jump_rel .loop

GfxSubScript_20cd3:
	script_repeat 12
	frame 17, $419c
	frame 17, $41a4
	script_repeat_end
	script_ret

GfxSubScript_20cdd:
	script_repeat 12
	frame 17, $41ac
	frame 17, $41b4
	script_repeat_end
	script_ret

GfxScript_20ce7:
.loop
	script_call $4cf7
	script_call $4d01
	jump_rel .loop
; 0x20cef

SECTION "Bank 8@4d0b", ROMX[$4d0b], BANK[$8]

GfxScript_20d0b:
	set_custom_func Func_140c2, GfxScript_20c6d
.loop
	frame 20, $41c4
	frame 20, $41bc
	jump_abs .loop

GfxScript_20d19:
.loop
	frame 20, $41c4
	frame 20, $41bc
	jump_abs .loop
; 0x20d22

SECTION "Bank 8@4d28", ROMX[$4d28], BANK[$8]

GfxScript_20d28:
	script_repeat 10
	frame 10, $5ec5
	frame 10, $5ecd
	script_repeat_end
	set_motion_script MotionScript_10e87
.loop
	frame  7, $5ec5
	frame  7, $5ecd
	jump_abs .loop

GfxScript_20d3f:
.loop
	frame  9, $417c
	frame  9, $4184
	jump_rel .loop

GfxScript_20d47:
.loop
	frame  9, $418c
	frame  9, $4194
	jump_rel .loop

GfxScript_20d4f:
	script_f1 $00, $f6
	script_exec Func_3121
	dw $352c
	set_custom_func $41b1, $4d79
	set_motion_script $4ef1
	frame  0, $417c
; 0x20d64

SECTION "Bank 8@4e58", ROMX[$4e58], BANK[$8]

GfxScript_20e58:
	set_custom_func Func_140c2, GfxScript_20e83
.loop
	frame 10, $4324
	frame 10, $4314
	frame 10, $4304
	frame 10, $42f4
	frame 10, $4324
	frame 10, $4314
	frame 10, $4314
	frame 10, $4324
	frame 10, $42f4
	frame 10, $4304
	frame 10, $4314
	frame 10, $4324
	jump_rel .loop

GfxScript_20e83:
	create_object GfxScript_20e9d, MotionScript_10f9c, Data_3559
	script_f1 $00, $f0
	frame  1, $417c
	jump_rel .asm_20e95
	frame  1, $418c
.asm_20e95
	script_exec Func_3121
	dw $3523
	script_exec Func_4afb

GfxScript_20e9d:
	script_repeat 2
	frame  2, $41d4
	frame  2, $41ec
	frame  2, $41e4
	frame  2, $41dc
	script_repeat_end
	frame  2, $41d4
	frame  8, $41dc
	frame  8, $41e4
	frame  8, $41ec
	frame  8, $41d4
	frame 20, $41ec
	script_exec Func_3121
	dw $3550
	frame  0, $41ec

	script_exec_arg PlaySFX, SFX_28
	script_exec Func_30b2
	dw .script_20ed1, .script_20edb
.script_20ed1
	create_object $4d4f, MotionScript_10008, $3523
	jump_abs GfxScript_20a0f
.script_20edb
	create_object $4d64, MotionScript_10008, $3523
	jump_abs GfxScript_20a0f
; 0x20ee5
