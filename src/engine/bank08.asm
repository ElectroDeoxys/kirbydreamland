GfxScript_20000:
	frame  0, $58b8

GfxScript_20003:
	script_delay 0
GfxScript_20005:
	set_object_properties Data_35b7
	set_custom_func Func_141b1, GfxScript_20ba2
	script_exec Func_4adf
	set_scripts GfxScript_203be, MotionScript_102fb
; 0x20017

SECTION "Bank 8@4162", ROMX[$4162], BANK[$8]

GfxScript_20162:
	create_object GfxScript_20af2, MotionScript_1072b, Data_3425
	create_object GfxScript_20af2, MotionScript_10737, Data_3425
	create_object GfxScript_20af2, MotionScript_10743, Data_3425
	create_object GfxScript_20af2, MotionScript_10767, Data_3425
	create_object GfxScript_20af2, MotionScript_1074f, Data_3425
	create_object GfxScript_20af2, MotionScript_1075b, Data_3425
.loop
	frame  8, $5bf9
	create_object GfxScript_20ae6, MotionScript_107c3, Data_3425
	frame  8, $5be9
	create_object GfxScript_20ae6, MotionScript_107c3, Data_3425
	frame  8, $5be1
	create_object GfxScript_20ae6, MotionScript_107c3, Data_3425
	frame  8, $5bf1
	create_object GfxScript_20ae6, MotionScript_107c3, Data_3425
	jump_abs .loop
; 0x201b7

SECTION "Bank 8@43be", ROMX[$43be], BANK[$8]

GfxScript_203be:
	play_sfx SFX_10
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

SECTION "Bank 8@4477", ROMX[$4477], BANK[$8]

GfxScript_20477:
	script_exec_arg PlaySFX, SFX_15
	jump_if_flags wd3be, $02, $4bc9
	jump_if_flags wd3be, $04, $4bb7
	jump_if_flags hff91, $01, .script_2049e
	set_custom_func Func_141b1, GfxScript_20b9a
.check_land
	jump_if_not_flags hff92, KIRBY2F_LAND, .script_2049b
	frame  0, $5cf9
.script_2049b
	frame  0, $5cf1
.script_2049e
	frame  1, $58b8
	script_f3
	jump_rel .check_land
; 0x204a4

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

SECTION "Bank 8@4659", ROMX[$4659], BANK[$8]

GfxScript_20659:
.loop
	frame  5, $5ec5
	frame  5, $5ecd
	jump_abs .loop

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
	play_sfx SFX_28
	jumptable_random %11
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

SECTION "Bank 8@4ae6", ROMX[$4ae6], BANK[$8]

GfxScript_20ae6:
	set_value wd414, $01
	frame 24, $5c1d
	set_value wd414, $00
	script_end

GfxScript_20af2:
	frame  4, $5c1d
	frame  5, $5c25
	frame  5, $5c2d
	frame  5, $5c3d
	frame  5, $5c45
	frame  6, $5c1d
	script_end
; 0x20b05

SECTION "Bank 8@4b9a", ROMX[$4b9a], BANK[$8]

GfxScript_20b9a:
	script_exec Func_4a1c
	set_scripts $49f6, MotionScript_10008

GfxScript_20ba2:
	script_exec Func_4a1c
	set_object_properties Data_35b7
	set_scripts GfxScript_203be, MotionScript_10008
	set_custom_func Func_142a3, NULL
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
	play_sfx SFX_30
	frame 1, $41cc
	script_exec Func_4afb

GfxScript_20c7e:
	set_custom_func Func_14105, NULL
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
	set_object_properties CappyProperties
	set_scripts GfxScript_20cc3, MotionScript_10ddf
.branch_2
	set_scripts GfxScript_20cad, MotionScript_10dcb

GfxScript_20cad:
	script_repeat 6
	frame 4, $41b4
	frame 4, $41ac
	script_repeat_end
	script_exec Func_48e8
	set_object_properties CappyProperties
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
	script_call GfxSubScript_20cf7
	script_call GfxSubScript_20d01
	jump_rel .loop
; 0x20cef

SECTION "Bank 8@4cf7", ROMX[$4cf7], BANK[$8]

GfxSubScript_20cf7:
	script_repeat 3
	frame 17, $419c
	frame 17, $41a4
	script_repeat_end
	script_ret

GfxSubScript_20d01:
	script_repeat 3
	frame 17, $41ac
	frame 17, $41b4
	script_repeat_end
	script_ret

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
	position_offset 0, -10
	set_object_properties Data_352c
	set_custom_func Func_141b1, GfxScript_20d79
	set_motion_script MotionScript_10ef1
	frame  0, $417c

GfxScript_20d64:
	position_offset 0, -10
	set_object_properties Data_352c
	set_custom_func Func_141b1, GfxScript_20d83
	set_motion_script MotionScript_10ef1
	frame  0, $418c

GfxScript_20d79:
	set_object_properties Data_3523
	set_scripts GfxScript_20d3f, MotionScript_10e96

GfxScript_20d83:
	set_object_properties Data_3523
	set_scripts GfxScript_20d47, MotionScript_10ea1
; 0x20d8d

SECTION "Bank 8@4d92", ROMX[$4d92], BANK[$8]

GfxScript_20d92:
	set_motion_script MotionScript_10f06
.loop
	script_call GfxScript_20db1
	script_call GfxScript_20dbb
	jump_rel .loop
; 0x20d9f

SECTION "Bank 8@4db1", ROMX[$4db1], BANK[$8]

GfxScript_20db1:
	script_repeat 9
	frame  3, $4224
	frame 16, $423c
	script_repeat_end
	script_ret

GfxScript_20dbb:
	script_repeat 9
	frame  3, $426c
	frame 16, $4284
	script_repeat_end
	script_ret
; 0x20dc5

SECTION "Bank 8@4de5", ROMX[$4de5], BANK[$8]

GfxScript_20de5:
	script_exec Func_30b2
	dw $4dec, $4dfe
	set_motion_script $4f3c
	frame 30, $4254
	set_object_properties $3535
	set_scripts $4dc5, $4f5a
; 0x20e03

SECTION "Bank 8@4e20", ROMX[$4e20], BANK[$8]

GfxSubScript_20e20:
	set_custom_func Func_140c2, GfxScript_20e2f
	script_repeat 9
	frame  3, $42d4
	frame 16, $42b4
	script_repeat_end
	script_ret

GfxScript_20e2f:
	create_object $4de5, MotionScript_10008, $353e
	position_offset $00, $f0
	jump_abs $4e8d

GfxSubScript_20e3c:
	set_custom_func Func_140c2, GfxScript_20e4b
	script_repeat 9
	frame  3, $4334
	frame 16, $4354
	script_repeat_end
	script_ret

GfxScript_20e4b:
	create_object $4de5, MotionScript_10008, $353e
	position_offset $00, $f0
	jump_abs GfxScript_20e92

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
	position_offset 0, -16
	frame  1, $417c
	jump_rel GfxScript_20e95
GfxScript_20e92:
	frame  1, $418c
GfxScript_20e95:
	set_object_properties Data_3523
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
	set_object_properties Data_3550
	frame  0, $41ec

	play_sfx SFX_28
	script_exec Func_30b2
	dw .script_20ed1, .script_20edb
.script_20ed1
	create_object GfxScript_20d4f, MotionScript_10008, Data_3523
	jump_abs GfxScript_20a0f
.script_20edb
	create_object GfxScript_20d64, MotionScript_10008, Data_3523
	jump_abs GfxScript_20a0f
; 0x20ee5

SECTION "Bank 8@4f14", ROMX[$4f14], BANK[$8]

GfxScript_20f14:
	jump_if_equal wd3f1, $00, .start_battle
	script_end
.start_battle
	set_object_properties Data_356b
	script_exec Func_4a82
	set_value wBossHPCounter, 3
	set_value wd3c1, $01
	create_object GfxScript_21195, MotionScript_10008, Data_3421
	frame 45, $4088
.loop
	; scripted attacks
	script_call GfxSubScript_20f50
	script_call GfxSubScript_20fd5
	script_call GfxSubScript_20f50
	script_call GfxSubScript_20fa3
	script_call GfxSubScript_20f50
	; random attack
	calltable_random %11
	dw GfxSubScript_20fd5
	dw GfxSubScript_20fa3
	dw GfxSubScript_20f6e
	dw GfxSubScript_20f6e
	jump_rel .loop

GfxSubScript_20f50:
	set_motion_script MotionScript_10fe2
	script_repeat 2
	frame  8, $4088
	frame  8, $4098
	frame  8, $40a8
	frame 16, $40b8
	frame  8, $40a8
	frame  8, $4098
	frame  8, $4088
	script_repeat_end
	script_ret

GfxSubScript_20f6e:
	set_motion_script MotionScript_11000
	frame 12, $4088
	frame 12, $4098
	frame 12, $40b8
	frame 24, $40a8
	frame 12, $40b8
	frame 12, $4098
	frame 12, $4088
	set_motion_script MotionScript_1104b
	frame 15, $4088
	frame 15, $4098
	frame 15, $40b8
	frame 30, $40a8
	frame 15, $40b8
	frame 15, $4098
	frame 15, $4088
	script_ret

GfxSubScript_20fa3:
	set_motion_script MotionScript_11096
	frame  6, $40c8
	frame  6, $40f0
	frame  6, $410c
	frame  6, $4128
	frame  6, $4144
	frame  8, $4160
	frame  3, $4144
	frame  3, $4128
	play_sfx SFX_28
	create_object GfxScript_2101d, MotionScript_110d7, Data_3574
	frame  3, $40dc
	frame  8, $40c8
	frame 21, $4088
	script_ret

GfxSubScript_20fd5:
	set_motion_script $5096
	frame  6, $40c8
	frame  6, $40f0
	frame  6, $410c
	frame  6, $4128
	frame  6, $4144
	frame 40, $4160
	frame  3, $4144
	frame  3, $4128
	play_sfx SFX_28
	create_object GfxScript_2101d, MotionScript_110ba, Data_3574
	frame  3, $40dc
	frame  8, $40c8
	script_ret
; 0x21004

SECTION "Bank 8@501d", ROMX[$501d], BANK[$8]

GfxScript_2101d:
	position_offset -16, 8
	frame  0, $5c4d
; 0x21023

SECTION "Bank 8@5195", ROMX[$5195], BANK[$8]

GfxScript_21195:
	frame  1, $58b8
	script_f3
	script_f0 $14, $14
	set_value wBossHP, 0
	script_f9 hHUDFlags, $ff, HUD_UPDATE_LABEL | HUD_BOSS_BATTLE
.loop
	frame 10, $58b8
	inc_value wBossHP
	script_f9 hHUDFlags, $ff, HUD_UPDATE_FIRST_ROW
	play_sfx SFX_RESTORE_HP
	dec_value wBossHPCounter
	jump_if_equal wBossHPCounter, 0, .end
	jump_rel .loop
.end
	script_end
; 0x211c0

SECTION "Bank 8@6114", ROMX[$6114], BANK[$8]

GfxScript_22114:
	frame 40, $58b8
	create_object $6239, MotionScript_10008, Data_3425
	script_repeat 2
	frame 40, $5c01
	frame 10, $5c2d
	frame 10, $4ba8
	frame 40, $58b8
	frame 10, $4ba8
	frame 10, $5c2d
	frame 40, $5c01
	script_repeat_end
	frame  0, $5c01

GfxScript_22139:
.loop
	frame 170, $58b8
	create_object GfxScript_22145, MotionScript_1200f, Data_3425
	jump_rel .loop

GfxScript_22145:
	script_repeat 2
	frame 18, $58c1
	frame 11, $58c9
	frame 18, $58d1
	frame 11, $58c9
	script_repeat_end
	script_repeat 2
	frame  8, $58d1
	frame  8, $5b81
	frame  8, $5b89
	frame  8, $5ba1
	frame  8, $5b99
	frame  8, $5901
	script_repeat_end
	frame 32, $58e1
	script_repeat 2
	frame 18, $58f1
	frame 11, $58f9
	frame 18, $5901
	frame 11, $58f9
	script_repeat_end
	script_repeat 2
	frame 10, $5bf1
	frame  8, $5bf9
	frame  8, $5be9
	frame 10, $5be1
	script_repeat_end
	script_repeat 3
	frame  6, $58e9
	frame 10, $5ba9
	frame  6, $58e9
	frame 10, $5bad
	script_repeat_end
	frame 16, $5bc9
	frame 64, $58d9
	frame 64, $5b69
	frame 32, $5bc9
	frame 64, $5901
	frame 10, $5ae9
	frame 10, $5af1
	frame 10, $5a81
.loop
	frame 10, $5919
	frame 10, $5931
	jump_rel .loop

GfxScript_221b9:
	frame 200, $58b8
.loop
	frame 30, $58b8
	create_object GfxScript_221c9, MotionScript_10008, Data_3425
	jump_abs .loop

GfxScript_221c9:
	jumptable_random $0f
	dw .script_221eb
	dw .script_221f0
	dw .script_221f5
	dw .script_221fa
	dw .script_221ff
	dw .script_22204
	dw .script_22209
	dw .script_2220e
	dw .script_22213
	dw .script_22218
	dw .script_2221d
	dw .script_22222
	dw .script_22227
	dw .script_2222c
	dw .script_22231
	dw .script_22236

.script_221eb
	position_offset $14, $0a
	jump_rel .script_22239

.script_221f0
	position_offset $28, $14
	jump_rel .script_22239

.script_221f5
	position_offset $3c, $0a
	jump_rel .script_22239

.script_221fa
	position_offset $50, $14
	jump_rel .script_22239

.script_221ff
	position_offset $64, $0a
	jump_rel .script_22239

.script_22204
	position_offset $78, $14
	jump_rel .script_22239

.script_22209
	position_offset $3c, $14
	jump_rel .script_22239

.script_2220e
	position_offset $14, $1e
	jump_rel .script_22239

.script_22213
	position_offset $28, $28
	jump_rel .script_22239

.script_22218
	position_offset $3c, $1e
	jump_rel .script_22239

.script_2221d
	position_offset $50, $28
	jump_rel .script_22239

.script_22222
	position_offset $64, $1e
	jump_rel .script_22239

.script_22227
	position_offset $78, $28
	jump_rel .script_22239

.script_2222c
	position_offset $78, $1e
	jump_rel .script_22239

.script_22231
	position_offset $32, $23
	jump_rel .script_22239

.script_22236
	position_offset $46, $23

.script_22239
	create_object GfxScript_22265, $483f, Data_3421
	create_object GfxScript_22265, $4850, Data_3421
	frame  3, $5c25
	frame  3, $5c2d
	create_object GfxScript_22265, $4835, Data_3421
	create_object GfxScript_22265, $4846, Data_3421
	frame  3, $5c3d
	frame  3, $5c45
	frame  3, $5c25
	script_end

GfxScript_22265:
	frame  0, $4ba8
; 0x22268
