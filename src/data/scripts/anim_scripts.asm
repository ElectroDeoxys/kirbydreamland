AnimScript_20000:
	frame  0, $58b8

AnimScript_20003:
	script_delay 0

AnimScript_20005:
	set_object_properties Data_35b7
	set_custom_func Func_141b1, AnimScript_20ba2
	script_exec Func_4adf
	set_scripts AnimScript_203be, MotionScript_102fb

AnimScript_20017:
	set_object_properties Data_35b7
	set_custom_func Func_141b1, AnimScript_20ba2
	set_scripts AnimScript_203be, MotionScript_10008

AnimScript_20026:
	jump_if_flags hEngineFlags, ENGINEF_UNK0, .script_20034
	create_object AnimScript_20a01, MotionScript_10008, Data_3421
	script_end
.script_20034
	create_object AnimScript_21aa8, MotionScript_10008, Data_3425
	script_end

AnimScript_2003c:
	create_object AnimScript_20044, MotionScript_10008, Data_3421
	script_end

AnimScript_20044:
	frame  2, $5d29
	frame  2, $5d31
AnimScript_2004a:
	script_end

AnimScript_2004b:
	set_motion_script MotionScript_1092a
	frame 60, $5c01
	frame  6, $5c01
	script_repeat 15
	frame  8, $5c01
	create_object AnimScript_208f1, MotionScript_135bc, Data_3425
	script_repeat_end
	frame 16, $58b8
	play_sfx SFX_13
	frame 16, $58b8
	frame 128, $5c1d
	jump_abs AnimScript_209f6
AnimScript_20073:
	set_motion_script MotionScript_1096c
	frame 44, $5c01
	frame 40, $5c01
	create_object AnimScript_203be, MotionScript_135bc, Data_3425
	frame 88, $5c01
.loop
	frame  4, $5c01
	create_object AnimScript_203be, MotionScript_10317, Data_3425
	create_object AnimScript_203be, MotionScript_135bc, Data_3425
	create_object AnimScript_203be, MotionScript_135bc, Data_3425
	jump_abs .loop

AnimScript_200a3:
	set_motion_script MotionScript_109a3
	frame 100, $5c01
	frame 142, $5c01
	frame 20, $58b8
	frame  0, $5c1d

AnimScript_200b4:
	set_motion_script MotionScript_10a29
	frame 80, $5c01
	script_repeat 21
	create_object AnimScript_208f1, MotionScript_10a13, Data_3425
	frame  4, $5c01
	script_repeat_end
	frame 20, $5c01
	create_object AnimScript_20af2, MotionScript_10713, Data_3425
	create_object AnimScript_20af2, MotionScript_1071f, Data_3425
	create_object AnimScript_20af2, MotionScript_1072b, Data_3425
	create_object AnimScript_20af2, MotionScript_10737, Data_3425
	create_object AnimScript_20af2, MotionScript_10743, Data_3425
	create_object AnimScript_20af2, MotionScript_10767, Data_3425
	create_object AnimScript_20af2, MotionScript_1074f, Data_3425
	create_object AnimScript_20af2, MotionScript_1075b, Data_3425
	create_object AnimScript_20138, MotionScript_10008, Data_3425
	script_end
; 0x2010c

SECTION "Bank 8@4138", ROMX[$4138], BANK[$8]

AnimScript_20138:
	script_repeat 2
	frame  2, $5c91
	frame  2, $5c9d
	frame  2, $5ca9
	frame  2, $5cb5
	frame  2, $5cc1
	frame  2, $5ccd
	frame  2, $5cd9
	frame  2, $5ce5
	script_repeat_end
	script_end

AnimScript_20154:
	create_object AnimScript_20af2, MotionScript_10713, Data_3425
	create_object AnimScript_20af2, MotionScript_1071f, Data_3425
	create_object AnimScript_20af2, MotionScript_1072b, Data_3425
	create_object AnimScript_20af2, MotionScript_10737, Data_3425
	create_object AnimScript_20af2, MotionScript_10743, Data_3425
	create_object AnimScript_20af2, MotionScript_10767, Data_3425
	create_object AnimScript_20af2, MotionScript_1074f, Data_3425
	create_object AnimScript_20af2, MotionScript_1075b, Data_3425
.loop
	frame  8, $5bf9
	create_object AnimScript_20ae6, MotionScript_107c3, Data_3425
	frame  8, $5be9
	create_object AnimScript_20ae6, MotionScript_107c3, Data_3425
	frame  8, $5be1
	create_object AnimScript_20ae6, MotionScript_107c3, Data_3425
	frame  8, $5bf1
	create_object AnimScript_20ae6, MotionScript_107c3, Data_3425
	jump_abs .loop

AnimScript_201b7:
	script_f2
	set_object_properties Data_3483
	set_custom_func Func_141b1, AnimScript_2073c
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_201d2
	set_motion_script MotionScript_10a92
.loop_1
	script_call AnimScript_208cb
	jump_rel .loop_1

.script_201d2
	set_motion_script MotionScript_10abd
.loop_2
	script_call AnimScript_208b8
	jump_rel .loop_2

AnimScript_201dc:
	script_delay 0

	script_repeat 10
	frame  4, $5be1
	frame  4, $58b8
	frame  4, $5be9
	frame  4, $58b8
	frame  4, $5bf9
	frame  4, $58b8
	frame  4, $5bf1
	frame  4, $58b8
	script_repeat_end
	frame  1, $58d9
	script_exec Func_4ac1
	set_flags hff94, $df, $00
	script_delay 0

AnimScript_20206:
	set_flags hEngineFlags, $ff, ENGINEF_UNK5
	jump_if_flags hff95, $80, $4008 ; bug?
	set_motion_script MotionScript_135d2
	create_object AnimScript_203be, MotionScript_10008, Data_3425
	frame  4, $5c01
	create_object AnimScript_203be, MotionScript_10008, Data_3425
	frame  4, $5c01
	create_object AnimScript_203be, MotionScript_10008, Data_3425
	frame  8, $5c01
	create_object AnimScript_203be, MotionScript_10008, Data_3425
	frame 80, $5c01
	script_repeat 4
	create_object AnimScript_22f63, MotionScript_135bc, Data_3425
	play_sfx SFX_DAMAGE
	script_delay 4
	script_repeat_end
	script_delay 16
	script_repeat 8
	create_object AnimScript_22f69, MotionScript_135bc, Data_3425
	play_sfx SFX_20
	script_delay 4
	script_repeat_end
	play_sfx SFX_ENTER_DOOR
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
.loop
	frame 10, $5be1
	frame 10, $5bf1
	frame 10, $5bf9
	frame 10, $5be9
	jump_abs .loop
; 0x2028f

SECTION "Bank 8@42b6", ROMX[$42b6], BANK[$8]

AnimScript_202b6::
	frame 26, $58c1
	frame 18, $58c9
	frame 18, $58d1
	frame  8, $58c9
	frame 18, $58c1
	script_repeat 6
	frame 10, $58c9
	frame 16, $58d1
	frame 10, $58c9
	frame 16, $58c1
	script_repeat_end
	script_call $48b8
	script_call $48b8
	frame 128, $5b79
	frame 128, $58b9
	frame  8, $5bc9
	frame 128, $5b69
	frame 48, $5bc9
	frame  4, $58b9
	frame 10, $5bc5
	frame 96, $58b9
	frame 16, $5bd1
	frame 16, $5bdd
	frame 16, $5bc9
	frame 16, $5bd9
	frame 16, $5bd1
	script_call $48b8
	script_call $48b8
	frame  1, $58d9
	set_flags hff94, $fe, $01
	script_delay 1

AnimScript_20311::
	frame 26, $58f1
	frame 18, $58f9
	frame 18, $5901
	frame  8, $58f9
	frame 18, $58f1
	script_repeat 3
	frame 10, $58f9
	frame 16, $5901
	frame 10, $58f9
	frame 16, $58f1
	script_repeat_end
	script_call $48cb
	script_call $48cb
	frame 128, $5b91
	frame 128, $58e9
	frame  8, $5bad
	frame 128, $5b71
	frame 48, $5bad
	frame  4, $58e9
	frame 10, $5ba9
	frame 96, $58e9
	frame 16, $5bb5
	frame 16, $5bc1
	frame 16, $5bad
	frame 16, $5bbd
	frame 16, $5bb5
	script_call $48cb
	script_call $48cb
	frame  1, $5909
	set_flags hff94, $ff, $01
	script_delay 1

AnimScript_2036c:
	create_object AnimScript_20a01, MotionScript_10008, Data_3421
	frame 16, $58b8
	set_flags wd3bf, $ff, $02
	script_end

AnimScript_2037c:
	frame  2, $5c91
	frame  2, $5c9d
	frame  2, $5ca9
	frame  2, $5cb5
	frame  2, $5cc1
	frame  2, $5ccd
	frame  2, $5cd9
	frame  2, $5ce5
	frame  2, $5c91
	frame  2, $5c9d
	frame  2, $5ca9
	frame  2, $5cb5
	frame  2, $5cc1
	frame  2, $5ccd
	frame  2, $5cd9
	frame  2, $5ce5
	set_flags wd3bf, $ff, $02
	script_end
; 0x203b2

SECTION "Bank 8@43be", ROMX[$43be], BANK[$8]

AnimScript_203be:
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

SECTION "Bank 8@4405", ROMX[$4405], BANK[$8]

AnimScript_20405:
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_20419
	frame  6, $5af1
	frame  6, $5ae9
	set_motion_script MotionScript_10c47
	frame  0, $5af1
.script_20419:
	frame  6, $5a71
	frame  6, $5a69
	set_motion_script MotionScript_10c47
	frame  0, $5a71
; 0x20427

SECTION "Bank 8@4477", ROMX[$4477], BANK[$8]

AnimScript_20477:
	play_sfx SFX_15
	jump_if_flags wd3be, $02, AnimScript_20bc9
	jump_if_flags wd3be, $04, AnimScript_20bb7
	jump_if_flags hEngineFlags, ENGINEF_UNK0, .script_2049e
	set_custom_func Func_141b1, AnimScript_20b9a
.check_land
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_2049b
	frame  0, $5cf9
.script_2049b
	frame  0, $5cf1
.script_2049e
	frame  1, $58b8
	script_f3
	jump_rel .check_land
; 0x204a4

SECTION "Bank 8@4566", ROMX[$4566], BANK[$8]

AnimScript_20566::
	frame  4, $5b81
	frame  0, $5b89

AnimScript_2056c::
	frame  4, $5b99
	frame  0, $5ba1
; 0x20572

SECTION "Bank 8@4587", ROMX[$4587], BANK[$8]

AnimScript_20587:
.loop
	frame 16, $5e55
	frame 16, $5e5d
	jump_abs .loop
; 0x20590

SECTION "Bank 8@45ae", ROMX[$45ae], BANK[$8]

AnimScript_205ae:
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

AnimScript_205cc:
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

AnimScript_2063b:
	frame  8, $5ecd
	frame  0, $5ec5

	frame  8, $5edd
	frame  0, $5ed5

AnimScript_20647:
.loop
	frame 10, $5ec5
	frame 10, $5ecd
	jump_abs .loop
; 0x20650

SECTION "Bank 8@4659", ROMX[$4659], BANK[$8]

AnimScript_20659:
.loop
	frame  5, $5ec5
	frame  5, $5ecd
	jump_abs .loop

AnimScript_20662:
.loop
	frame  5, $5ed5
	frame  5, $5edd
	jump_abs .loop
; 0x2066b

SECTION "Bank 8@473c", ROMX[$473c], BANK[$8]

AnimScript_2073c:
	script_f3
	set_object_properties Data_3425
	script_exec Func_49fb
	jump_if_equal wd3ce, $00, .script_2075e
	set_motion_script MotionScript_10ae8
.loop_1
	frame 10, $58f1
	frame  6, $58f9
	frame 10, $5901
	frame  6, $58f9
	jump_rel .loop_1

.script_2075e
	set_motion_script MotionScript_10af4
.loop_2
	frame 10, $58c1
	frame  6, $58c9
	frame 10, $58d1
	frame  6, $58c9
	jump_rel .loop_2

AnimScript_20771:
	set_motion_script MotionScript_10008
	create_object AnimScript_20799, MotionScript_10008, Data_3425
	create_object AnimScript_207a5, MotionScript_10008, Data_3425
	script_call AnimScript_208b8
	frame 55, $58e1
	play_music MUSIC_VICTORY
AnimScript_2078e:
	jumptable wStage
	dw AnimScript_207b1 ; GREEN_GREENS
	dw AnimScript_207f8 ; CASTLE_LOLOLO
	dw AnimScript_2084b ; FLOAT_ISLANDS
	dw AnimScript_20883 ; BUBBLY_CLOUDS

AnimScript_20799:
	position_offset -30, 0
	script_call AnimScript_208de
	frame 55, $58e1
	jump_abs AnimScript_2078e

AnimScript_207a5:
	position_offset 30, 0
	script_call AnimScript_208de
	frame 55, $58e1
	jump_abs AnimScript_2078e

AnimScript_207b1:
	set_motion_script MotionScript_10b05
	script_repeat 2
	frame 10, $58d1
	frame  6, $58c9
	frame 10, $58c1
	frame  6, $58c9
	script_repeat_end
	frame  9, $58d1
	frame  5, $58c9
	script_call AnimScript_208b8
	script_call AnimScript_208b8
	frame 31, $58e1
	frame 24, $58d9
	frame 55, $5b69
	frame  8, $5bc9
	frame  4, $58b9
	frame  8, $5bc5
	frame  4, $58b9
	frame  8, $5bc9
	script_call AnimScript_208cb
	frame 23, $5bad
	frame 60, $5911
	set_value wd3dd, $01
	script_delay 0

AnimScript_207f8:
	set_motion_script MotionScript_10b38
	frame 10, $5909
	frame 10, $5ba9
	frame 10, $58d9
	frame 10, $5bc5
	frame 20, $58d9
	frame 18, $5bc9
	frame 60, $5b69
	frame  9, $5bc9
	frame  9, $58e1
	script_repeat 3
	frame  6, $5be1
	frame  6, $5be9
	frame  6, $5bf9
	frame  6, $5bf1
	script_repeat_end
	frame  6, $5bc9
	frame  2, $58c9
	frame  4, $58d1
	script_repeat 2
	frame  6, $5be1
	frame  6, $5be9
	frame  6, $5bf9
	frame  6, $5bf1
	script_repeat_end
	script_call AnimScript_208b8
	frame 60, $58e1
	set_value wd3dd, $01
	script_delay 0

AnimScript_2084b:
	set_motion_script MotionScript_10b98
	frame 60, $5909
	frame 20, $5bad
	script_repeat 2
	frame  6, $5be1
	frame  6, $5be9
	frame  6, $5bf9
	frame  6, $5bf1
	script_repeat_end
	frame 31, $58e1
	script_repeat 2
	frame 10, $5909
	frame 30, $5b71
	script_repeat_end
	script_call AnimScript_208b8
	script_call AnimScript_208b8
	frame 32, $5bad
	frame 60, $5911
	set_value wd3dd, $01
	script_delay 0

AnimScript_20883:
	set_motion_script MotionScript_10bda
	frame 60, $5bc5
	frame 20, $5bc9
	frame 16, $58d9
	frame 32, $5909
	frame 16, $58d9
	frame 16, $5bc9
	frame 20, $5b71
	frame 20, $5ba9
	frame 20, $5909
	frame 20, $5ba9
	script_call AnimScript_208cb
	script_call AnimScript_208cb
	frame 32, $5bad
	frame 60, $5911
	set_value wd3dd, $01
	script_delay 0

AnimScript_208b8:
	frame  4, $58d1
	frame  4, $5b81
	frame  4, $5b89
	frame  4, $5ba1
	frame  4, $5b99
	frame  4, $5901
	script_ret

AnimScript_208cb:
	frame  4, $5901
	frame  4, $5b99
	frame  4, $5ba1
	frame  4, $5b89
	frame  4, $5b81
	frame  4, $58d1
	script_ret

AnimScript_208de:
	frame  4, $5c91
	frame  4, $5c9d
	frame  4, $5ca9
	frame  4, $5cb5
	frame  4, $5cc1
	frame  4, $5ccd
	script_ret
; 0x208f1

SECTION "Bank 8@48f1", ROMX[$48f1], BANK[$8]

AnimScript_208f1:
	frame  0, $5c1d
; 0x208f4

SECTION "Bank 8@48fc", ROMX[$48fc], BANK[$8]

AnimScript_208fc:
	frame 162, $5c4d
.loop
	frame  2, $5c55
	frame  2, $5c4d
	jump_rel .loop
; 0x20907

SECTION "Bank 8@4925", ROMX[$4925], BANK[$8]

AnimScript_20925:
	script_exec Func_4ad6
	frame  0, $5c75
; 0x2092b

SECTION "Bank 8@492e", ROMX[$492e], BANK[$8]

AnimScript_2092e:
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

AnimScript_20958:
.loop
	frame 20, $5c25
	frame 20, $5c2d
	frame 20, $5c3d
	frame 20, $5c45
	jump_abs .loop
; 0x20967

SECTION "Bank 8@49f6", ROMX[$49f6], BANK[$8]

AnimScript_209f6:
	frame  4, $5d21
	frame  4, $5d29
	frame  4, $5d31
	script_end
; 0x20a00

SECTION "Bank 8@4a01", ROMX[$4a01], BANK[$8]

AnimScript_20a01:
	play_sfx SFX_28
	jumptable_random %11
	dw AnimScript_20a0f
	dw AnimScript_20a3b
	dw AnimScript_20a76
	dw AnimScript_20ab7

AnimScript_20a0f:
	create_object AnimScript_208f1, MotionScript_1083f, Data_3421
	create_object AnimScript_208f1, MotionScript_10850, Data_3421
	frame  3, $5c25
	frame  3, $5c2d
	create_object AnimScript_208f1, MotionScript_10835, Data_3421
	create_object AnimScript_208f1, MotionScript_10846, Data_3421
	frame  3, $5c3d
	frame  3, $5c45
	frame  3, $5c25
	script_end

AnimScript_20a3b:
	create_object AnimScript_208f1, MotionScript_10857, Data_3421
	create_object AnimScript_208f1, MotionScript_1086b, Data_3421
	create_object AnimScript_208f1, MotionScript_1087f, Data_3421
	create_object AnimScript_208f1, MotionScript_10893, Data_3421
	script_delay 9
	create_object AnimScript_208f1, MotionScript_10861, Data_3421
	create_object AnimScript_208f1, MotionScript_10875, Data_3421
	create_object AnimScript_208f1, MotionScript_10889, Data_3421
	create_object AnimScript_208f1, MotionScript_1089d, Data_3421
	script_end

AnimScript_20a76:
	script_exec Func_30b2
	dw .script_20a7d, .script_20a9a
.script_20a7d
	create_object AnimScript_208f1, MotionScript_108a7, Data_3421
	create_object AnimScript_208f1, MotionScript_108b4, Data_3421
	create_object AnimScript_208f1, MotionScript_108c1, Data_3421
	create_object AnimScript_208f1, MotionScript_108ce, Data_3421
	script_end
.script_20a9a
	create_object AnimScript_208f1, MotionScript_108db, Data_3421
	create_object AnimScript_208f1, MotionScript_108e8, Data_3421
	create_object AnimScript_208f1, MotionScript_108f5, Data_3421
	create_object AnimScript_208f1, MotionScript_10902, Data_3421
	script_end

AnimScript_20ab7:
	create_object AnimScript_20ad4, MotionScript_1090f, Data_3421
	create_object AnimScript_20ad4, MotionScript_10915, Data_3421
	create_object AnimScript_20ad4, MotionScript_1091b, Data_3421
	create_object AnimScript_20ad4, MotionScript_10921, Data_3421
	script_end

AnimScript_20ad4:
	frame 10, $5c1d
	set_motion_script MotionScript_10008
	script_delay 10
	script_end
; 0x20adf

SECTION "Bank 8@4ae6", ROMX[$4ae6], BANK[$8]

AnimScript_20ae6:
	set_value wd414, $01
	frame 24, $5c1d
	set_value wd414, $00
	script_end

AnimScript_20af2:
	frame  4, $5c1d
	frame  5, $5c25
	frame  5, $5c2d
	frame  5, $5c3d
	frame  5, $5c45
	frame  6, $5c1d
	script_end
; 0x20b05

SECTION "Bank 8@4b9a", ROMX[$4b9a], BANK[$8]

AnimScript_20b9a:
	script_exec Func_4a1c
	set_scripts AnimScript_209f6, MotionScript_10008

AnimScript_20ba2:
	script_exec Func_4a1c
	set_object_properties Data_35b7
	set_scripts AnimScript_203be, MotionScript_10008
	set_custom_func Func_142a3, NULL
	jump_abs AnimScript_20000

AnimScript_20bb7:
	set_flags wd3be, $01, $00
	script_exec Func_4adf
	set_custom_func Func_141b1, AnimScript_20ba2
	set_scripts AnimScript_208fc, MotionScript_10302

AnimScript_20bc9:
	set_flags wd3be, $01, $00
	play_sfx SFX_00
	script_exec Func_4ae6
	set_scripts AnimScript_20925, MotionScript_10370

AnimScript_20bda:
	position_offset 0, 5
	play_sfx SFX_19
	set_custom_func Func_141b1, AnimScript_20b9a
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .loop_2

.loop_1
	frame  2, $5d11
	frame  2, $5d19
	jump_abs .loop_1

.loop_2
	frame  2, $5d01
	frame  2, $5d09
	jump_abs .loop_2
; 0x20bfe

SECTION "Bank 8@4c52", ROMX[$4c52], BANK[$8]

AnimScript_20c52:
.loop
	frame 12, $41fc
	frame 24, $4204
	jump_abs .loop

AnimScript_20c5b:
.loop
	frame 80, $41f4
	frame  8, $41fc
	frame  8, $4204
	frame  8, $41fc
	frame 40, $4204
	jump_abs .loop

AnimScript_20c6d:
	create_object AnimScript_20c7e, MotionScript_10008, Data_3421
	play_sfx SFX_30
	frame 1, $41cc
	script_exec Func_4afb

AnimScript_20c7e:
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
	set_scripts AnimScript_20cc3, MotionScript_10ddf
.branch_2
	set_scripts AnimScript_20cad, MotionScript_10dcb

AnimScript_20cad:
	script_repeat 6
	frame 4, $41b4
	frame 4, $41ac
	script_repeat_end
	script_exec Func_48e8
	set_object_properties CappyProperties
	set_scripts AnimScript_20ccb, MotionScript_10de7

AnimScript_20cc3:
.loop
	script_call GfxSubScript_20cd3
	script_call GfxSubScript_20cdd
	jump_rel .loop

AnimScript_20ccb:
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

AnimScript_20ce7:
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

AnimScript_20d0b:
	set_custom_func Func_140c2, AnimScript_20c6d
.loop
	frame 20, $41c4
	frame 20, $41bc
	jump_abs .loop

AnimScript_20d19:
.loop
	frame 20, $41c4
	frame 20, $41bc
	jump_abs .loop
; 0x20d22

SECTION "Bank 8@4d28", ROMX[$4d28], BANK[$8]

AnimScript_20d28:
	script_repeat 10
	frame 10, $5ec5
	frame 10, $5ecd
	script_repeat_end
	set_motion_script MotionScript_10e87
.loop
	frame  7, $5ec5
	frame  7, $5ecd
	jump_abs .loop

AnimScript_20d3f:
.loop
	frame  9, $417c
	frame  9, $4184
	jump_rel .loop

AnimScript_20d47:
.loop
	frame  9, $418c
	frame  9, $4194
	jump_rel .loop

AnimScript_20d4f:
	position_offset 0, -10
	set_object_properties Data_352c
	set_custom_func Func_141b1, AnimScript_20d79
	set_motion_script MotionScript_10ef1
	frame  0, $417c

AnimScript_20d64:
	position_offset 0, -10
	set_object_properties Data_352c
	set_custom_func Func_141b1, AnimScript_20d83
	set_motion_script MotionScript_10ef1
	frame  0, $418c

AnimScript_20d79:
	set_object_properties Data_3523
	set_scripts AnimScript_20d3f, MotionScript_10e96

AnimScript_20d83:
	set_object_properties Data_3523
	set_scripts AnimScript_20d47, MotionScript_10ea1
; 0x20d8d

SECTION "Bank 8@4d92", ROMX[$4d92], BANK[$8]

AnimScript_20d92:
	set_motion_script MotionScript_10f06
.loop
	script_call AnimScript_20db1
	script_call AnimScript_20dbb
	jump_rel .loop
; 0x20d9f

SECTION "Bank 8@4db1", ROMX[$4db1], BANK[$8]

AnimScript_20db1:
	script_repeat 9
	frame  3, $4224
	frame 16, $423c
	script_repeat_end
	script_ret

AnimScript_20dbb:
	script_repeat 9
	frame  3, $426c
	frame 16, $4284
	script_repeat_end
	script_ret

AnimScript_20dc5:
.loop
	script_repeat 3
	frame  3, $4224
	frame 16, $423c
	script_repeat_end
	script_repeat 3
	frame  3, $426c
	frame 16, $4284
	script_repeat_end
	jump_abs .loop
; 0x20dda

SECTION "Bank 8@4de5", ROMX[$4de5], BANK[$8]

AnimScript_20de5:
	script_exec Func_30b2
	dw $4dec, $4dfe
	set_motion_script MotionScript_10f3c
	frame 30, $4254
	set_object_properties $3535
	set_scripts AnimScript_20dc5, MotionScript_10f5a
; 0x20e03

SECTION "Bank 8@4e20", ROMX[$4e20], BANK[$8]

GfxSubScript_20e20:
	set_custom_func Func_140c2, AnimScript_20e2f
	script_repeat 9
	frame  3, $42d4
	frame 16, $42b4
	script_repeat_end
	script_ret

AnimScript_20e2f:
	create_object AnimScript_20de5, MotionScript_10008, $353e
	position_offset 0, -16
	jump_abs AnimScript_20e8d

GfxSubScript_20e3c:
	set_custom_func Func_140c2, AnimScript_20e4b
	script_repeat 9
	frame  3, $4334
	frame 16, $4354
	script_repeat_end
	script_ret

AnimScript_20e4b:
	create_object AnimScript_20de5, MotionScript_10008, $353e
	position_offset 0, -16
	jump_abs AnimScript_20e92

AnimScript_20e58:
	set_custom_func Func_140c2, AnimScript_20e83
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

AnimScript_20e83:
	create_object AnimScript_20e9d, MotionScript_10f9c, Data_3559
	position_offset 0, -16
AnimScript_20e8d:
	frame  1, $417c
	jump_rel AnimScript_20e95
AnimScript_20e92:
	frame  1, $418c
AnimScript_20e95:
	set_object_properties Data_3523
	script_exec Func_4afb

AnimScript_20e9d:
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
	create_object AnimScript_20d4f, MotionScript_10008, Data_3523
	jump_abs AnimScript_20a0f
.script_20edb
	create_object AnimScript_20d64, MotionScript_10008, Data_3523
	jump_abs AnimScript_20a0f
; 0x20ee5

SECTION "Bank 8@4f14", ROMX[$4f14], BANK[$8]

AnimScript_20f14:
	jump_if_equal wd3f1, $00, .start_battle
	script_end
.start_battle
	set_object_properties Data_356b
	script_exec Func_4a82
	set_value wBossHPCounter, 3
	set_value wd3c1, $01
	create_object AnimScript_21195, MotionScript_10008, Data_3421
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
	create_object AnimScript_2101d, MotionScript_110d7, Data_3574
	frame  3, $40dc
	frame  8, $40c8
	frame 21, $4088
	script_ret

GfxSubScript_20fd5:
	set_motion_script MotionScript_11096
	frame  6, $40c8
	frame  6, $40f0
	frame  6, $410c
	frame  6, $4128
	frame  6, $4144
	frame 40, $4160
	frame  3, $4144
	frame  3, $4128
	play_sfx SFX_28
	create_object AnimScript_2101d, MotionScript_110ba, Data_3574
	frame  3, $40dc
	frame  8, $40c8
	script_ret
; 0x21004

SECTION "Bank 8@501d", ROMX[$501d], BANK[$8]

AnimScript_2101d:
	position_offset -16, 8
	frame  0, $5c4d
; 0x21023

SECTION "Bank 8@5195", ROMX[$5195], BANK[$8]

AnimScript_21195:
	frame  1, $58b8
	script_f3
	script_f0 $14, $14
	set_value wBossHP, 0
	set_flags hHUDFlags, $ff, HUD_UPDATE_LABEL | HUD_BOSS_BATTLE
.loop
	frame 10, $58b8
	inc_value wBossHP
	set_flags hHUDFlags, $ff, HUD_UPDATE_FIRST_ROW
	play_sfx SFX_RESTORE_HP
	dec_value wBossHPCounter
	jump_if_equal wBossHPCounter, 0, .end
	jump_rel .loop
.end
	script_end
; 0x211c0

SECTION "Bank 8@5aa8", ROMX[$5aa8], BANK[$8]

AnimScript_21aa8:
	play_sfx SFX_28
	frame  6, $5d21
	frame  2, $5d29
	frame  2, $5d31
	script_end
; 0x21ab6

SECTION "Bank 8@5eae", ROMX[$5eae], BANK[$8]

; TODO unreferenced?
AnimScript_21eae:
	script_call AnimScript_21f0a
	script_exec Func_30b2
	dw AnimScript_21eb8, AnimScript_21efa

AnimScript_21eb8:
	script_call AnimScript_21f0a
	script_exec Func_30b2
	dw AnimScript_21ec2, AnimScript_21ef0

AnimScript_21ec2:
	script_call AnimScript_21f0a
	script_exec Func_30b2
	dw AnimScript_21ecc, AnimScript_21ee6

AnimScript_21ecc:
	script_call AnimScript_21f0a
AnimScript_21ecf:
	script_exec Func_30b2
	dw AnimScript_21ed6, AnimScript_21edc

AnimScript_21ed6:
	script_call AnimScript_21f0f
	jump_abs AnimScript_21ecf

AnimScript_21edc:
	script_call AnimScript_21f4d
	script_exec Func_30b2
	dw AnimScript_21ecc, AnimScript_21ee6

AnimScript_21ee6:
	script_call AnimScript_21f4d
	script_exec Func_30b2
	dw AnimScript_21ec2, AnimScript_21ef0

AnimScript_21ef0:
	script_call AnimScript_21f4d
	script_exec Func_30b2
	dw AnimScript_21eb8, AnimScript_21efa

AnimScript_21efa:
	script_call AnimScript_21f4d
AnimScript_21efd:
	script_exec Func_30b2
	dw AnimScript_21eae, AnimScript_21f04

AnimScript_21f04:
	script_call AnimScript_21f52
	jump_abs AnimScript_21efd

AnimScript_21f0a:
	set_motion_script $42ce
AnimScript_21f0f:
	script_repeat 3
	frame 10, $4724
	frame 10, $472c
	script_repeat_end
	set_motion_script MotionScript_10008
	frame 20, $4734
	create_object $5e6c, $5f0c, $367c
	frame 76, $473c
	frame 20, $4734
	script_ret
; 0x21f2e

SECTION "Bank 8@5f4d", ROMX[$5f4d], BANK[$8]

AnimScript_21f4d:
	set_motion_script $42d1
AnimScript_21f52:
	script_repeat 3
	frame 10, $4744
	frame 10, $474c
	script_repeat_end
	set_motion_script MotionScript_10008
	frame 20, $4754
	create_object $5e7e, $5f4a, $367c
	frame 76, $475c
	frame 20, $4754
	script_ret
; 0x21f71

SECTION "Bank 8@6114", ROMX[$6114], BANK[$8]

AnimScript_22114:
	frame 40, $58b8
	create_object AnimScript_22239, MotionScript_10008, Data_3425
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

AnimScript_22139:
.loop
	frame 170, $58b8
	create_object AnimScript_22145, MotionScript_1200f, Data_3425
	jump_rel .loop

AnimScript_22145:
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

AnimScript_221b9:
	frame 200, $58b8
.loop
	frame 30, $58b8
	create_object AnimScript_221c9, MotionScript_10008, Data_3425
	jump_abs .loop

AnimScript_221c9:
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
	position_offset 20, 10
	jump_rel AnimScript_22239

.script_221f0
	position_offset 40, 20
	jump_rel AnimScript_22239

.script_221f5
	position_offset 60, 10
	jump_rel AnimScript_22239

.script_221fa
	position_offset 80, 20
	jump_rel AnimScript_22239

.script_221ff
	position_offset 100, 10
	jump_rel AnimScript_22239

.script_22204
	position_offset 120, 20
	jump_rel AnimScript_22239

.script_22209
	position_offset 60, 20
	jump_rel AnimScript_22239

.script_2220e
	position_offset 20, 30
	jump_rel AnimScript_22239

.script_22213
	position_offset 40, 40
	jump_rel AnimScript_22239

.script_22218
	position_offset 60, 30
	jump_rel AnimScript_22239

.script_2221d
	position_offset 80, 40
	jump_rel AnimScript_22239

.script_22222
	position_offset 100, 30
	jump_rel AnimScript_22239

.script_22227
	position_offset 120, 40
	jump_rel AnimScript_22239

.script_2222c
	position_offset 120, 30
	jump_rel AnimScript_22239

.script_22231
	position_offset 50, 35
	jump_rel AnimScript_22239

.script_22236
	position_offset 70, 35

AnimScript_22239:
	create_object AnimScript_22265, MotionScript_1083f, Data_3421
	create_object AnimScript_22265, MotionScript_10850, Data_3421
	frame  3, $5c25
	frame  3, $5c2d
	create_object AnimScript_22265, MotionScript_10835, Data_3421
	create_object AnimScript_22265, MotionScript_10846, Data_3421
	frame  3, $5c3d
	frame  3, $5c45
	frame  3, $5c25
	script_end

AnimScript_22265:
	frame  0, $4ba8
; 0x22268

SECTION "Bank 8@6f63", ROMX[$6f63], BANK[$8]

AnimScript_22f63:
	position_offset 0, -6
	jump_abs AnimScript_208f1

AnimScript_22f69:
	position_offset 0, 6
	jump_abs AnimScript_208f1
; 0x22f6f
