AnimScript_24000:
	frame  0, $58b8
; 0x24003

SECTION "Bank 9@41c6", ROMX[$41c6], BANK[$9]

AnimScript_241c6:
	frame 210, $e541
	frame 205, $fe41
	frame 74, $e5e3
	frame 72, $fce2
	set_motion_script MotionScript_30b29
.loop
	script_call AnimScript_248d2
	jump_rel .loop
; 0x241dc

SECTION "Bank 9@43be", ROMX[$43be], BANK[$9]

AnimScript_243be:
	play_sfx SFX_EXPLOSION
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
; 0x243de

SECTION "Bank 9@43f6", ROMX[$43f6], BANK[$9]

AnimScript_243f6:
	frame  8, $5c25
	frame  8, $5c2d
	frame  8, $5c3d
	frame  8, $5c45
	jump_abs AnimScript_243f6
; 0x24405

SECTION "Bank 9@44a4", ROMX[$44a4], BANK[$9]

AnimScript_244a4:
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303bf, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303fb, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303f7, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303f3, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303ef, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303eb, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_ret

AnimScript_2451d:
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303bf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303c3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303c7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303cb, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303cf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 1
	create_object AnimScript_249da, MotionScript_303d3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_ret
; 0x24566

SECTION "Bank 9@4572", ROMX[$4572], BANK[$9]

AnimScript_24572:
	script_repeat 2
	frame 10, $5e45
	frame 10, $5e4d
	script_repeat_end
	script_repeat 4
	frame  6, $5e45
	frame  6, $5e4d
	script_repeat_end
	jump_abs AnimScript_24572

AnimScript_24587:
	frame 16, $5e55
	frame 16, $5e5d
	jump_abs AnimScript_24587
; 0x24590

SECTION "Bank 9@45ae", ROMX[$45ae], BANK[$9]

AnimScript_245ae:
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

AnimScript_245cc:
.loop
	frame 64, $5e55
	frame  8, $5e5d
	frame  8, $5e6d
	frame 64, $5e65
	frame  8, $5e6d
	frame  8, $5e5d
	jump_abs .loop

AnimScript_245e1:
	frame 16, $5e75
	frame 16, $5e7d
	jump_abs AnimScript_245e1

AnimScript_245ea:
	frame 16, $5e9d
	frame 16, $5ea5
	jump_abs AnimScript_245ea
; 0x245f3

SECTION "Bank 9@461d", ROMX[$461d], BANK[$9]

AnimScript_2461d:
	frame 10, $5e75
	frame 10, $5e7d
	frame 10, $5e75
	frame 10, $5e7d
	frame 20, $5e9d
	frame 10, $5ea5
	frame 10, $5e9d
	frame 10, $5ea5
	frame 10, $5e75
	jump_abs AnimScript_2461d
; 0x2463b

SECTION "Bank 9@463b", ROMX[$463b], BANK[$9]

AnimScript_2463b:
	frame  8, $5ecd
	frame  0, $5ec5
; 0x24641

SECTION "Bank 9@4647", ROMX[$4647], BANK[$9]

AnimScript_24647:
.loop
	frame 10, $5ec5
	frame 10, $5ecd
	jump_abs .loop

AnimScript_24650:
	frame 10, $5ed5
	frame 10, $5edd
	jump_abs AnimScript_24650

AnimScript_24659:
.loop
	frame  5, $5ec5
	frame  5, $5ecd
	jump_abs .loop

AnimScript_24662:
.loop
	frame  5, $5ed5
	frame  5, $5edd
	jump_abs .loop
; 0x2466b

SECTION "Bank 9@4671", ROMX[$4671], BANK[$9]

AnimScript_24671:
	frame 11, $5ef5
	create_object AnimScript_249f0, MotionScript_3030e, ShotzoBulletProperties
	set_motion_script MotionScript_302a4
	frame 11, $5ef5
	jump_abs AnimScript_24671

AnimScript_24686:
	create_object AnimScript_249f0, MotionScript_3030b, ShotzoBulletProperties
	set_motion_script MotionScript_302bc
	frame  8, $5f05
	create_object AnimScript_249f0, MotionScript_30d95, ShotzoBulletProperties
	set_motion_script MotionScript_302b0
	frame  8, $5efd
	create_object AnimScript_249f0, MotionScript_3030e, ShotzoBulletProperties
	set_motion_script MotionScript_302a4
	frame  8, $5ef5
	create_object AnimScript_249f0, MotionScript_30311, ShotzoBulletProperties
	set_motion_script MotionScript_30298
	frame  8, $5eed
	create_object AnimScript_249f0, MotionScript_30308, ShotzoBulletProperties
	set_motion_script MotionScript_3028c
	frame  8, $5ee5
	create_object AnimScript_249f0, MotionScript_30311, ShotzoBulletProperties
	set_motion_script MotionScript_30298
	frame  8, $5eed
	create_object AnimScript_249f0, MotionScript_3030e, ShotzoBulletProperties
	set_motion_script MotionScript_302a4
	frame  8, $5ef5
	create_object AnimScript_249f0, MotionScript_30d95, ShotzoBulletProperties
	set_motion_script MotionScript_302b0
	frame  8, $5efd
	jump_abs AnimScript_24686

AnimScript_24701:
	position_offset 0, 8
.loop
	set_motion_script MotionScript_31e72
	frame 100, $5ef5
	frame 10, $5efd
	frame  8, $5f05
	create_object AnimScript_249f0, MotionScript_3030b, ShotzoBulletProperties
	frame  5, $5f05
	frame  5, $5efd
	create_object AnimScript_249f0, MotionScript_30d95, ShotzoBulletProperties
	frame  5, $5efd
	frame  5, $5ef5
	create_object AnimScript_249f0, MotionScript_3030e, ShotzoBulletProperties
	frame  5, $5ef5
	frame  5, $5eed
	create_object AnimScript_249f0, MotionScript_30311, ShotzoBulletProperties
	frame  5, $5eed
	frame  5, $5ee5
	create_object AnimScript_249f0, MotionScript_30308, ShotzoBulletProperties
	frame  8, $5ee5
	frame 10, $5eed
	jump_abs .loop
; 0x24756

SECTION "Bank 9@48d2", ROMX[$48d2], BANK[$9]

AnimScript_248d2:
	frame  4, $58d1
	frame  4, $5b81
	frame  4, $5b89
	frame  4, $5ba1
	frame  4, $5b99
	frame  4, $5901
	script_ret

AnimScript_248e5:
	frame  4, $5901
	frame  4, $5b99
	frame  4, $5ba1
	frame  4, $5b89
	frame  4, $5b81
	frame  4, $58d1
	script_ret
; 0x248f8

SECTION "Bank 9@490b", ROMX[$490b], BANK[$9]

AnimScript_2490b:
	frame  0, $5c1d

AnimScript_2490e:
	script_exec Func_4ad6
	set_update_func ObjFunc_CountdownToExplosion, 256
	frame 162, $5c4d
.loop
	frame  2, $5c55
	frame  2, $5c4d
	jump_rel .loop
; 0x24921

SECTION "Bank 9@4924", ROMX[$4924], BANK[$9]

AnimScript_24924:
	script_exec Func_4ad6
	frame  0, $5c5d
; 0x2492a

SECTION "Bank 9@492d", ROMX[$492d], BANK[$9]

AnimScript_2492d:
	script_exec Func_4ad6
	frame  0, $5c65
; 0x24933

SECTION "Bank 9@4936", ROMX[$4936], BANK[$9]

AnimScript_24936:
	script_exec Func_4ad6
	frame  0, $5c6d
; 0x2493c

SECTION "Bank 9@493f", ROMX[$493f], BANK[$9]

AnimScript_2493f:
	script_exec Func_4ad6
	frame  0, $5c75

AnimScript_24945:
	frame  0, $5c7d

AnimScript_24948:
	script_exec Func_4ad6
	frame  0, $5c7d

AnimScript_2494e:
	frame  0, $5c81

AnimScript_24951:
	frame 16, $5c89
	set_pal_dark
	frame  8, $5c89
	set_pal_light
	jump_abs AnimScript_24951

AnimScript_24960:
	script_exec Func_4ad6
	frame 16, $5c89
	set_pal_dark
	frame  8, $5c89
	set_pal_light
	jump_abs AnimScript_24960

AnimScript_24972:
.loop
	frame 20, $5c25
	frame 20, $5c2d
	frame 20, $5c3d
	frame 20, $5c45
	jump_abs .loop

AnimScript_24981:
	jump_if_equal wStage, $04, .script_249a6
	play_music MUSIC_SPARKLING_STAR
.script_2498b
	frame  4, $5c91
	frame  4, $5c9d
	frame  4, $5ca9
	frame  4, $5cb5
	frame  4, $5cc1
	frame  4, $5ccd
	frame  4, $5cd9
	frame  4, $5ce5
	jump_abs .script_2498b
.script_249a6
	set_motion_script MotionScript_30008
	jumptable wArea
	dw .script_2498b
	dw .script_2498b
	dw .script_2498b
	dw .script_2498b
	dw .script_2498b
	dw .script_2498b
	dw .script_249c2
	dw .script_249cc
	dw .script_249c7
	dw .script_249d1

.script_249c2
	frame 120, $58b8
	jump_rel .script_249d4
.script_249c7
	frame 120, $58b8
	jump_rel .script_249d4
.script_249cc
	frame 120, $58b8
	jump_rel .script_249d4
.script_249d1
	frame 120, $58b8
.script_249d4
	set_flags hKirbyFlags5, $00, $04
	script_end

AnimScript_249da:
	play_sfx SFX_18
	frame  1, $5e01
	frame  1, $5e05
	frame  1, $5e09
	frame  1, $5e0d
	jump_abs AnimScript_249da
; 0x249ed

SECTION "Bank 9@49f0", ROMX[$49f0], BANK[$9]

AnimScript_249f0:
	play_sfx SFX_17
	script_repeat 30
	frame  1, $5e2d
	frame  1, $5e31
	frame  1, $5e35
	frame  1, $5e39
	frame  1, $5e3d
	frame  1, $5e41
	script_repeat_end
	frame  4, $5c1d
	frame  4, $5c19
	script_end

AnimScript_24a10:
	frame  4, $5d21
	frame  4, $5d29
	frame  4, $5d31
	script_end
; 0x24a1a

SECTION "Bank 9@4b00", ROMX[$4b00], BANK[$9]

AnimScript_24b00:
	set_value wDisableBumpStars, $01
	frame 24, $5c1d
	set_value wDisableBumpStars, $00
	script_end
; 0x24b0c

SECTION "Bank 9@4c2d", ROMX[$4c2d], BANK[$9]

AnimScript_24c2d:
	frame 12, $58f1
	frame  8, $58f9
	frame 12, $5901
	frame  8, $58f9
	jump_abs AnimScript_24c2d

AnimScript_24c3c:
	frame  8, $5ba9
	frame  5, $58e9
	frame  8, $5bad
	frame  5, $58e9
	jump_abs AnimScript_24c3c

AnimScript_24c4b:
	frame  8, $58d1
	frame  7, $5b81
	frame  6, $5b89
	frame  5, $5ba1
	frame  4, $5b99
	frame  4, $5901
	frame 47, $58e1
	jump_abs AnimScript_24c4b

AnimScript_24c63:
	frame 20, $5961
	frame 30, $5949
	jump_abs AnimScript_24c63

AnimScript_24c6c:
.loop
	script_repeat 2
	frame  8, $5e55
	frame  8, $5e5d
	script_repeat_end
	frame 48, $5e55
	jump_abs .loop
; 0x24c7b

SECTION "Bank 9@4ccf", ROMX[$4ccf], BANK[$9]

AnimScript_24ccf:
	frame  0, $5ee5

AnimScript_24cd2:
	frame  0, $5eed

AnimScript_24cd5:
.loop
	frame 12, $41fc
	frame 24, $4204
	jump_abs .loop

AnimScript_24cde:
.loop
	frame 40, $41f4
	script_repeat 4
	frame  4, $41fc
	frame  4, $4204
	script_repeat_end
	frame  8, $41fc
	script_repeat 4
	frame  4, $41fc
	frame  4, $4204
	script_repeat_end
	frame  8, $41fc
	frame 24, $41fc
	frame  8, $4204
	frame  8, $41fc
	jump_abs .loop

AnimScript_24d05:
	create_object AnimScript_24d16, MotionScript_30008, Data_3421
	play_sfx SFX_30
	frame  1, $41cc
	script_exec Func_4afb
AnimScript_24d16:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	branch_kirby_pos .script_24d25, .script_24d40
.script_24d25
	set_motion_script MotionScript_30edb
	script_repeat 6
	frame  4, $41a4
	frame  4, $419c
	script_repeat_end
	script_exec ScriptFunc_ResetImmuneFlag
	set_object_properties CappyProperties
	set_scripts AnimScript_24d5b, MotionScript_30f03
.script_24d40
	set_motion_script MotionScript_30eef
	script_repeat 6
	frame  4, $41b4
	frame  4, $41ac
	script_repeat_end
	script_exec ScriptFunc_ResetImmuneFlag
	set_object_properties CappyProperties
	set_scripts AnimScript_24d63, MotionScript_30f0b

AnimScript_24d5b:
.loop
	script_call AnimScript_24d6b
	script_call AnimScript_24d75
	jump_rel .loop

AnimScript_24d63:
.loop
	script_call AnimScript_24d75
	script_call AnimScript_24d6b
	jump_rel .loop

AnimScript_24d6b:
	script_repeat 6
	frame 17, $419c
	frame 17, $41a4
	script_repeat_end
	script_ret

AnimScript_24d75:
	script_repeat 6
	frame 17, $41ac
	frame 17, $41b4
	script_repeat_end
	script_ret
; 0x24d7f

SECTION "Bank 9@4d87", ROMX[$4d87], BANK[$9]

AnimScript_24d87:
.loop
	script_call AnimScript_24d99
	script_call AnimScript_24d8f
	jump_rel .loop

AnimScript_24d8f:
	script_repeat 3
	frame 17, $419c
	frame 17, $41a4
	script_repeat_end
	script_ret

AnimScript_24d99:
	script_repeat 3
	frame 17, $41ac
	frame 17, $41b4
	script_repeat_end
	script_ret

AnimScript_24da3:
	set_update_func Func_140c2, AnimScript_24d05
.loop
	frame 20, $41c4
	create_object AnimScript_24dce, MotionScript_30e7b, GlunkPodProperties
	frame 20, $41bc
	create_object AnimScript_24dce, MotionScript_30e7b, GlunkPodProperties
	jump_abs .loop

AnimScript_24dbf:
.loop
	frame 20, $41c4
	frame 20, $41bc
	jump_abs .loop
; 0x24dc8

SECTION "Bank 9@4dce", ROMX[$4dce], BANK[$9]

AnimScript_24dce:
	play_sfx SFX_28
	frame  0, $41cc

AnimScript_24dd5:
.loop
	frame 10, $5ec5
	frame 10, $5ecd
	jump_rel .loop

AnimScript_24ddd:
.loop
	frame  9, $417c
	frame  9, $4184
	jump_rel .loop

AnimScript_24de5:
.loop
	frame  9, $418c
	frame  9, $4194
	jump_rel .loop
; 0x24ded

SECTION "Bank 9@4e30", ROMX[$4e30], BANK[$9]

AnimScript_24e30:
	set_motion_script MotionScript_3102a
.loop
	script_call AnimScript_24e54
	script_call AnimScript_24e5e
	jump_rel .loop
; 0x24e3d

SECTION "Bank 9@4e42", ROMX[$4e42], BANK[$9]

AnimScript_24e42:
	set_motion_script MotionScript_31032
.loop
	script_call AnimScript_24e5e
	script_call AnimScript_24e54
	jump_rel .loop

AnimScript_24e4f:
.loop
	script_call AnimScript_24e54
	jump_rel .loop

AnimScript_24e54:
	script_repeat 5
	frame  3, $4224
	frame 16, $423c
	script_repeat_end
	script_ret

AnimScript_24e5e:
	script_repeat 5
	frame  3, $426c
	frame 16, $4284
	script_repeat_end
	script_ret

AnimScript_24e68:
	script_repeat 3
	frame  3, $4224
	frame 16, $423c
	script_repeat_end
AnimScript_24e71:
	script_repeat 3
	frame  3, $426c
	frame 16, $4284
	script_repeat_end
	jump_abs AnimScript_24e68

AnimScript_24e7d:
	frame  0, $4224
; 0x24e80

SECTION "Bank 9@4e88", ROMX[$4e88], BANK[$9]

AnimScript_24e88:
	branch_kirby_pos .script_24e8f, .script_24ea1
.script_24e8f
	set_motion_script MotionScript_31060
	frame 30, $4254
	set_object_properties GrizzoProperties
	set_scripts AnimScript_24e68, MotionScript_3107e
.script_24ea1
	set_motion_script MotionScript_3106f
	frame 30, $429c
	set_object_properties GrizzoProperties
	set_scripts AnimScript_24e71, MotionScript_31093

AnimScript_24eb3:
.loop
	script_call AnimScript_24ec3
	script_call AnimScript_24edf
	jump_rel .loop
; 0x24ebb

SECTION "Bank 9@4ec3", ROMX[$4ec3], BANK[$9]

AnimScript_24ec3:
	set_update_func Func_140c2, AnimScript_24ed2
	script_repeat 5
	frame  3, $42d4
	frame 16, $42b4
	script_repeat_end
	script_ret

AnimScript_24ed2:
	create_object AnimScript_24e88, MotionScript_30008, Properties_353e
	position_offset 0, -16
	jump_abs AnimScript_24f30
AnimScript_24edf:
	set_update_func Func_140c2, AnimScript_24eee
	script_repeat 5
	frame  3, $4334
	frame 16, $4354
	script_repeat_end
	script_ret

AnimScript_24eee:
	create_object AnimScript_24e88, MotionScript_30008, Properties_353e
	position_offset 0, -16
	jump_abs AnimScript_24f35
AnimScript_24efb:
	set_update_func Func_140c2, AnimScript_24f26
AnimScript_24f00:
	frame 10, $4324
AnimScript_24f03:
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
	jump_rel AnimScript_24f00

AnimScript_24f26:
	create_object AnimScript_24f40, MotionScript_310c0, Data_3559
	position_offset 0, -16
AnimScript_24f30:
	frame  1, $417c
	jump_rel AnimScript_24f38
AnimScript_24f35:
	frame  1, $418c
AnimScript_24f38:
	set_object_properties PoppyBrosJrProperties
	script_exec Func_4afb
AnimScript_24f40:
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
; 0x24f69

SECTION "Bank 9@4fb7", ROMX[$4fb7], BANK[$9]

AnimScript_24fb7:
	frame  0, $4160

AnimScript_24fba:
	jump_if_equal wd3f1, $00, .script_24fc1
	script_end
.script_24fc1
	set_object_properties Data_356b
	script_exec ScriptFunc_LockScrolling
	set_value wBossHPCounter, $03
	set_value wd3c1, $01
	create_object AnimScript_2526d, MotionScript_30008, Data_3421
	frame 45, $4088
.loop
	script_call AnimScript_24ff3
	script_call AnimScript_25058
	script_call AnimScript_24ff3
	script_call AnimScript_25026
	calltable_random $03
	dw AnimScript_25011
	dw AnimScript_25011
	dw AnimScript_25058
	dw AnimScript_25026
	jump_rel .loop

AnimScript_24ff3:
	set_motion_script MotionScript_31106
	script_repeat 1
	frame  6, $4088
	frame  6, $4098
	frame  6, $40a8
	frame 12, $40b8
	frame  6, $40a8
	frame  6, $4098
	frame  6, $4088
	script_repeat_end
	script_ret

AnimScript_25011:
	set_motion_script MotionScript_31124
	frame  6, $4088
	frame  6, $4098
	frame  6, $40a8
	frame 25, $40b8
	frame 68, $4088
	script_ret

AnimScript_25026:
	set_motion_script MotionScript_3115b
	frame  5, $40c8
	frame  5, $40f0
	frame  5, $410c
	frame  5, $4128
	frame  5, $4144
	frame  8, $4160
	frame  3, $4144
	frame  3, $4128
	play_sfx SFX_28
	create_object AnimScript_250a0, MotionScript_3119c, Data_3574
	frame  3, $40dc
	frame  8, $40c8
	frame 18, $4088
	script_ret

AnimScript_25058:
	set_motion_script MotionScript_3115b
	frame  5, $40c8
	frame  5, $40f0
	frame  5, $410c
	frame  5, $4128
	frame  5, $4144
	frame 40, $4160
	frame  3, $4144
	frame  3, $4128
	play_sfx SFX_28
	create_object AnimScript_250a0, MotionScript_3117f, Data_3574
	frame  3, $40dc
	frame  8, $40c8
	script_ret
; 0x25087

SECTION "Bank 9@50a0", ROMX[$50a0], BANK[$9]

AnimScript_250a0:
	position_offset -16, 8
	frame  0, $5c4d

AnimScript_250a6:
.script_250a6
	jump_if_equal wLevelYSection, $11, .script_250b2
	frame  1, $4000
	jump_abs .script_250a6
.script_250b2
	set_object_properties Data_3586
	set_value wBossHPCounter, $06
	set_value wd3c1, $01
	create_object AnimScript_2526d, MotionScript_30008, Data_3421
	frame 60, $4000
	script_exec Func_48a3
	set_value wd3cd, $01
	set_update_func Func_14172, AnimScript_241c6
	script_call AnimScript_2515c
	jump_random 50 percent + 1, .script_250f8
.script_250dc
	jump_random 38 percent, .script_250eb
	script_repeat 2
	script_call AnimScript_2517b
	script_repeat_end
	script_call AnimScript_2515c
	jump_rel .script_250f8
.script_250eb
	script_repeat 4
	script_call AnimScript_25192
	frame  1, $4000
	script_repeat_end
	jump_random 25 percent + 1, .script_250dc
.script_250f8
	create_object AnimScript_25241, MotionScript_31201, Properties_34c0
	frame 20, $4000
	frame  4, $400c
	frame  6, $4018
	frame  4, $400c
	frame  6, $4000
	frame 20, $4000
	create_object AnimScript_251db, MotionScript_31201, Data_359d
	frame 20, $4000
	frame  4, $400c
	frame  6, $4018
	frame  4, $400c
	frame  6, $4000
	frame 20, $4000
	jump_random 50 percent + 1, .script_25137
	create_object AnimScript_25241, MotionScript_31201, Properties_34c0
	jump_rel .script_2513e
.script_25137
	create_object AnimScript_251db, MotionScript_31201, Data_359d
.script_2513e
	frame 20, $4000
	frame  4, $400c
	frame  6, $4018
	frame  4, $400c
	frame  6, $4000
	frame 10, $4000
	script_call AnimScript_2515c
	jump_random 44 percent, .script_250f8
	jump_rel .script_250dc

AnimScript_25159:
	frame  0, $4000

AnimScript_2515c:
	frame 10, $4000
	frame  3, $400c
	frame  6, $4018
	frame  3, $400c
	frame  4, $4000
	frame 10, $4000
	frame  3, $400c
	frame  8, $4018
	frame  3, $400c
	frame 10, $4000
	script_ret

SECTION "Bank 9@517b", ROMX[$517b], BANK[$9]

AnimScript_2517b:
	frame  1, $4068
	frame 10, $4078
	create_object AnimScript_251d8, MotionScript_311b9, Data_3596
	frame 14, $4078
	frame  1, $4068
	frame  1, $4058
	script_ret

SECTION "Bank 9@5192", ROMX[$5192], BANK[$9]

AnimScript_25192:
	frame  1, $4068
	frame  5, $4078
	create_object AnimScript_251d8, MotionScript_311b9, Data_3596
	frame  5, $4078
	frame  1, $4068
	frame  1, $4058
	script_ret
; 0x251a9

SECTION "Bank 9@51d8", ROMX[$51d8], BANK[$9]

AnimScript_251d8:
	frame  0, $5cf9

AnimScript_251db:
	frame  1, $41d4
	script_repeat 3
	set_pal_dark
	script_delay 4
	set_pal_light
	script_delay 4
	script_repeat_end
	frame 42, $41d4
	branch_kirby_pos .script_251f5, .script_2521b
.script_251f5
	frame 10, $41ec
	frame 10, $41e4
	frame 10, $41dc
	frame 10, $41d4
	frame  6, $41ec
	frame  6, $41e4
	frame  6, $41dc
	frame  6, $41d4
.script_2520d
	frame  8, $41ec
	frame  8, $41e4
	frame  8, $41dc
	frame  8, $41d4
	jump_rel .script_2520d
.script_2521b
	frame 10, $41d4
	frame 10, $41dc
	frame 10, $41e4
	frame 10, $41ec
	frame  6, $41d4
	frame  6, $41dc
	frame  6, $41e4
	frame  6, $41ec
.script_25233
	frame  8, $41d4
	frame  8, $41dc
	frame  8, $41e4
	frame  8, $41ec
	jump_rel .script_25233

SECTION "Bank 9@5241", ROMX[$5241], BANK[$9]

AnimScript_25241:
	frame  1, $5e45
	script_repeat 3
	set_pal_dark
	script_delay 4
	set_pal_light
	script_delay 4
	script_repeat_end
.loop
	frame  8, $5e45
	frame  8, $5e4d
	jump_rel .loop

AnimScript_25259:
	jump_if_equal wLevelYSection, $11, .loop
	frame  1, $58b8
	jump_abs AnimScript_25259
.loop
	script_exec ScriptFunc_LockScrolling
	script_end

AnimScript_25269:
	script_exec ScriptFunc_LockScrolling
	script_end

AnimScript_2526d:
	frame  1, $58b8
	set_abs_pos
	set_position 20, 20
	set_value wBossHP, $00
	set_flags hHUDFlags, $00, $82
.script_2527d
	frame 10, $58b8
	inc_value wBossHP
	set_flags hHUDFlags, $00, $01
	play_sfx SFX_RESTORE_HP
	dec_value wBossHPCounter
	jump_if_equal wBossHPCounter, $00, .script_25297
	jump_rel .script_2527d
.script_25297
	script_end

AnimScript_25298:
	frame 33, $4204
	script_repeat 8
	frame  4, $41fc
	frame  4, $4204
	script_repeat_end
	frame 33, $4204
	jump_abs AnimScript_25298
; 0x252aa

SECTION "Bank 9@52ad", ROMX[$52ad], BANK[$9]

AnimScript_252ad:
	frame 10, $447c
	frame 10, $4484
	frame 10, $448c
	jump_abs AnimScript_252ad
; 0x252b9

SECTION "Bank 9@52c2", ROMX[$52c2], BANK[$9]

AnimScript_252c2:
	frame 10, $43ec
	frame 10, $43f4
	frame 10, $43fc
	jump_abs AnimScript_252c2

AnimScript_252ce:
	script_repeat 6
	frame 15, $43ec
	frame 10, $43f4
	script_repeat_end
	frame 25, $43ec
	frame  9, $43f4
	frame  5, $43fc
	branch_kirby_pos .script_252ea, .script_252f7
	jump_abs AnimScript_252ce
.script_252ea
	create_object AnimScript_2530a, MotionScript_31321, GlunkPodProperties
	frame 40, $43fc
	jump_abs AnimScript_252ce
.script_252f7
	create_object AnimScript_2530a, MotionScript_3130e, GlunkPodProperties
	frame 40, $43fc
	jump_abs AnimScript_252ce
; 0x25304

SECTION "Bank 9@530a", ROMX[$530a], BANK[$9]

AnimScript_2530a:
	frame  2, $6899
	frame  2, $689d
	frame  2, $68a1
	frame  2, $68a5
	jump_abs AnimScript_2530a

AnimScript_25319:
	frame 30, $43b4
	frame 20, $43c0
	jump_abs AnimScript_25319

AnimScript_25322:
	frame 30, $43dc
	frame 40, $43b4
	frame 14, $43c0
	frame  8, $43c0
	frame  3, $43b4
	jump_abs AnimScript_25319

AnimScript_25334:
	frame  8, $43b4
	frame  8, $43c0
	jump_abs AnimScript_25334
; 0x2533d

SECTION "Bank 9@5346", ROMX[$5346], BANK[$9]

AnimScript_25346:
.loop
	set_motion_script MotionScript_3138a
	script_repeat 5
	frame  8, $43b4
	frame  8, $43c0
	script_repeat_end
	set_motion_script MotionScript_31369
	script_repeat 5
	frame  8, $43c8
	frame  8, $43d4
	script_repeat_end
	jump_rel .loop

AnimScript_25364:
	script_repeat 2
	frame  4, $437c
	frame  4, $4384
	script_repeat_end
	frame  2, $437c
	frame 85, $4384
	script_repeat 2
	frame  2, $4384
	frame  2, $437c
	script_repeat_end
	frame  2, $4384
	script_repeat 4
	frame  8, $437c
	frame  8, $4384
	script_repeat_end
	frame  4, $437c
	frame  4, $4374
AnimScript_2538e:
	script_repeat 2
	frame  4, $4394
	frame  4, $439c
	script_repeat_end
	frame  2, $4394
	frame 85, $439c
	script_repeat 2
	frame  2, $439c
	frame  2, $4394
	script_repeat_end
	frame  2, $439c
	script_repeat 4
	frame  8, $4394
	frame  8, $439c
	script_repeat_end
	frame  4, $4394
	frame  4, $438c
	jump_abs AnimScript_25364

AnimScript_253bb:
	frame  8, $437c
	frame  8, $4384
	jump_abs AnimScript_253bb

AnimScript_253c4:
	frame  8, $4394
	frame  8, $439c
	jump_abs AnimScript_253c4

AnimScript_253cd:
	frame 10, $437c
	script_repeat 4
	frame  8, $4384
	frame  8, $437c
	script_repeat_end
	frame  8, $4384
	frame 10, $4374
	script_repeat 9
	frame  8, $4384
	frame  8, $437c
	script_repeat_end
	frame 10, $4374
	script_repeat 4
	frame  8, $4384
	frame  8, $437c
	script_repeat_end
	frame  8, $4384
AnimScript_253f7:
	frame 10, $4394
	script_repeat 4
	frame  8, $439c
	frame  8, $4394
	script_repeat_end
	frame  8, $439c
	frame 10, $438c
	script_repeat 9
	frame  8, $439c
	frame  8, $4394
	script_repeat_end
	frame 10, $438c
	script_repeat 4
	frame  8, $439c
	frame  8, $4394
	script_repeat_end
	frame  8, $439c
	jump_abs AnimScript_253cd

AnimScript_25424:
	script_repeat 5
	frame  8, $4394
	frame  8, $439c
	script_repeat_end
	frame  5, $4394
AnimScript_25430:
	frame  8, $437c
	frame  8, $4384
	jump_abs AnimScript_25430

AnimScript_25439:
	frame 16, $4374
	frame 32, $437c
	frame 32, $4384
	frame 32, $437c
.loop
	frame 32, $4384
	frame 32, $437c
	jump_rel .loop

AnimScript_2544d:
	frame  0, $441c

AnimScript_25450:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	branch_kirby_pos .script_2545f, .script_2546a
.script_2545f
	script_repeat 10
	frame  4, $58b8
	frame  4, $441c
	script_repeat_end
	jump_rel AnimScript_25475
.script_2546a
	script_repeat 10
	frame  4, $58b8
	frame  4, $442c
	script_repeat_end
	jump_rel AnimScript_25475

AnimScript_25475:
	branch_kirby_pos .script_25485, .script_2547c
.script_2547c
	frame 24, $442c
	frame 12, $4434
	jump_abs AnimScript_25475
.script_25485
	frame 24, $441c
	frame 12, $4424
	jump_abs AnimScript_25475

AnimScript_2548e:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	script_repeat 3
	frame 16, $442c
	frame 16, $4434
	script_repeat_end
	frame 16, $442c
	frame 16, $4424
	script_repeat 5
	frame 16, $441c
	frame 16, $4424
	script_repeat_end
	frame 16, $441c
	frame 16, $4434
	script_repeat 2
	frame 16, $442c
	frame 16, $4434
	script_repeat_end
	jump_abs AnimScript_2548e

AnimScript_254c0:
	frame 16, $5ecd
	frame 16, $5ec5
	frame 16, $5ecd
	frame 16, $5ec5
	frame 96, $5ec5
	script_repeat 5
	frame 16, $5ecd
	frame 16, $5ec5
	script_repeat_end
	frame 96, $5ec5
	frame 16, $5ecd
	frame 16, $5ec5
	frame 32, $5ec5
	jump_abs AnimScript_254c0

AnimScript_254e7:
	frame 10, $445c
	frame  6, $4464
	frame  6, $446c
	frame 10, $4474
	frame  4, $446c
	frame  4, $4464
	frame  4, $445c
	frame  4, $4464
	frame  4, $446c
	frame  4, $4474
	frame  4, $446c
	frame  4, $4464
	frame 10, $445c
	frame  6, $4464
	frame  6, $446c
	frame 10, $4474
	frame  8, $446c
	frame  8, $4464
	jump_abs AnimScript_254e7

AnimScript_25520:
	script_call AnimScript_25531
	jump_abs AnimScript_25520

AnimScript_25526:
	set_scripts AnimScript_25520, MotionScript_302da

AnimScript_2552b:
	script_call AnimScript_25531
	jump_abs AnimScript_2552b

AnimScript_25531:
	frame 10, $445c
	frame  6, $4464
	frame  6, $446c
	frame 10, $4474
	frame  6, $446c
	frame  6, $4464
	script_ret

AnimScript_25544:
.loop
	frame 11, $445c
	frame  7, $4464
	frame  7, $446c
	frame 11, $4474
	frame  7, $446c
	frame  7, $4464
	jump_rel .loop

AnimScript_25558:
	frame 10, $440c
	frame 10, $4414
	jump_abs AnimScript_25558

AnimScript_25561:
	position_offset 0, -8
	frame  6, $5d29
	frame  6, $5d31
	script_end

AnimScript_2556b:
	set_update_func Func_14252, AnimScript_25573
	frame  0, $443c

AnimScript_25573:
	frame  4, $444c
	frame 10, $4454
	frame 10, $4454
	frame  4, $4450
	frame 10, $4444
	set_object_properties Properties_3727
	set_update_func Func_14208, NULL
AnimScript_2558c:
	frame 10, $4444
	frame 10, $444c
	frame 10, $4454
	frame 10, $4450
	jump_abs AnimScript_2558c

AnimScript_2559b:
	frame 55, $443c
	jump_rel AnimScript_2558c
; 0x255a0

SECTION "Bank 9@5616", ROMX[$5616], BANK[$9]

AnimScript_25616:
	frame 25, $5ee5
	create_object AnimScript_249f0, MotionScript_30308, ShotzoBulletProperties
	set_motion_script MotionScript_3028c
	frame 10, $5ee5
	jump_abs AnimScript_25616
; 0x2562b

SECTION "Bank 9@5679", ROMX[$5679], BANK[$9]

AnimScript_25679:
	set_motion_script MotionScript_321b8
.loop
	frame 64, $46f4
	frame 48, $46f4
	jump_abs .loop

AnimScript_25687:
	frame  0, $46f4

AnimScript_2568a:
	set_update_func Func_14252, AnimScript_25692
	frame  0, $58b8

AnimScript_25692:
	create_object AnimScript_256cb, MotionScript_30008, Data_3421
	create_object AnimScript_256d9, MotionScript_30008, Data_3421
	create_object AnimScript_256e7, MotionScript_30008, Data_3421
	create_object AnimScript_256f5, MotionScript_30008, Data_3421
	create_object AnimScript_25703, MotionScript_30008, Data_3421
	create_object AnimScript_25716, MotionScript_30008, Data_3421
	create_object AnimScript_25729, MotionScript_30008, Data_3421
	create_object AnimScript_2573c, MotionScript_30008, Data_3421
	script_end

AnimScript_256cb:
	position_offset 0, -48
	frame  8, $5d29
	frame  8, $5d31
	set_scripts AnimScript_2574f, MotionScript_317be

AnimScript_256d9:
	position_offset 48, 0
	frame  8, $5d29
	frame  8, $5d31
	set_scripts AnimScript_2574f, MotionScript_317f4

AnimScript_256e7:
	position_offset 0, 48
	frame  8, $5d29
	frame  8, $5d31
	set_scripts AnimScript_2574f, MotionScript_317e2

AnimScript_256f5:
	position_offset -48, 0
	frame  8, $5d29
	frame  8, $5d31
	set_scripts AnimScript_2574f, MotionScript_317d0

AnimScript_25703:
	position_offset 34, -34
	frame  8, $5d29
	frame  8, $5d31
	set_object_properties Properties_374b
	set_scripts AnimScript_25475, MotionScript_317fd

AnimScript_25716:
	position_offset 34, 34
	frame  8, $5d29
	frame  8, $5d31
	set_object_properties Properties_374b
	set_scripts AnimScript_25475, MotionScript_317eb

AnimScript_25729:
	position_offset -34, 34
	frame  8, $5d29
	frame  8, $5d31
	set_object_properties Properties_374b
	set_scripts AnimScript_25475, MotionScript_317d9

AnimScript_2573c:
	position_offset -34, -34
	frame  8, $5d29
	frame  8, $5d31
	set_object_properties Properties_374b
	set_scripts AnimScript_25475, MotionScript_317c7

AnimScript_2574f:
	set_object_properties Properties_36cd
AnimScript_25754:
	branch_kirby_pos .script_2575b, .script_25764
.script_2575b
	frame  6, $437c
	frame  6, $4384
	jump_abs AnimScript_25754
.script_25764
	frame  6, $4394
	frame  6, $439c
	jump_abs AnimScript_25754

AnimScript_2576d:
	frame  1, $58b8
	set_object_properties Data_3421
	set_update_func Func_14252, AnimScript_2577d
	frame  0, $58b8

AnimScript_2577d:
	branch_on_kirby_vertical_alignment AnimScript_2576d, .script_25786
	jump_rel AnimScript_2576d
.script_25786
	create_object AnimScript_25561, MotionScript_30008, PuffOfSmokeProperties
	position_offset 0, -16
	play_sfx SFX_PUFF
	set_object_properties MaximTomatoProperties
	frame  0, $5c81

AnimScript_2579c:
	frame  8, $5e7d
	frame  8, $5e75
	frame  8, $5e7d
	frame  8, $5e75
	frame  8, $5e7d
	frame  8, $5e9d
AnimScript_257ae:
	frame  8, $5ea5
	frame  8, $5e9d
	frame  8, $5ea5
	frame  8, $5e9d
	frame  8, $5ea5
	frame  8, $5e75
	jump_abs AnimScript_2579c

AnimScript_257c3:
	frame  8, $5e6d
	frame  8, $5e65
	frame  8, $5e6d
	frame  8, $5e65
	frame  8, $5e6d
	frame  8, $5e55
AnimScript_257d5:
	frame  8, $5e5d
	frame  8, $5e55
	frame  8, $5e5d
	frame  8, $5e55
	frame  8, $5e5d
	frame  8, $5e65
	jump_abs AnimScript_257c3
; 0x257ea

SECTION "Bank 9@57f0", ROMX[$57f0], BANK[$9]

AnimScript_257f0:
	frame  8, $5f9d
	frame 24, $5f95
	jump_abs AnimScript_257f0

AnimScript_257f9:
	frame  8, $5fb5
AnimScript_257fc:
	frame 24, $5fad
	jump_abs AnimScript_257f9

AnimScript_25802:
	script_repeat 3
	frame  8, $5f9d
	frame 24, $5f95
	script_repeat_end
	script_repeat 3
	frame  8, $5fb5
	frame 24, $5fad
	script_repeat_end
	jump_abs AnimScript_25802
; 0x25817

SECTION "Bank 9@5856", ROMX[$5856], BANK[$9]

AnimScript_25856:
	frame  0, $5fcd
; 0x25859

SECTION "Bank 9@585c", ROMX[$585c], BANK[$9]

AnimScript_2585c:
	frame 10, $5fcd
	branch_kirby_pos .script_25866, .script_258a1
.script_25866
	frame 10, $5fcd
	script_repeat 4
	frame  4, $5fd5
	frame  4, $5fcd
	script_repeat_end
	script_call AnimScript_244a4
	frame 10, $5fcd
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 30, $5fc5
	script_exec ScriptFunc_ResetImmuneFlag
	jump_abs AnimScript_2585c

.script_25889
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 10, $5fdd
	script_exec ScriptFunc_ResetImmuneFlag
	frame 10, $5fe5
	branch_kirby_pos .script_25866, .script_258a1

.script_258a1
	frame 10, $5fe5
	script_repeat 4
	frame  4, $5fed
	frame  4, $5fe5
	script_repeat_end
	script_call AnimScript_2451d
	frame 30, $5fe5
	jump_abs .script_25889
; 0x258b6

SECTION "Bank 9@58d6", ROMX[$58d6], BANK[$9]

AnimScript_258d6:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 40, $5fdd
	script_exec ScriptFunc_ResetImmuneFlag
	frame 10, $5fe5
	script_repeat 4
	frame  4, $5fed
	frame  4, $5fe5
	script_repeat_end
	script_call AnimScript_2451d
	jump_abs AnimScript_258d6
; 0x258f6

SECTION "Bank 9@58f9", ROMX[$58f9], BANK[$9]

AnimScript_258f9:
	frame 16, $6045
	frame 16, $604d
	frame 16, $6055
	frame 16, $605d
	jump_abs AnimScript_258f9

AnimScript_25908:
	frame  8, $6045
	frame  8, $604d
	frame  8, $6055
	frame  8, $605d
	jump_abs AnimScript_25908

AnimScript_25917:
	frame  4, $6045
	frame  4, $604d
	frame  4, $6055
	frame  4, $605d
	jump_abs AnimScript_25917
; 0x25926

SECTION "Bank 9@593e", ROMX[$593e], BANK[$9]

AnimScript_2593e:
	frame 16, $6045
	frame 16, $604d
	frame 16, $6055
	frame 16, $605d
	frame 16, $6045
	frame 16, $604d
	frame 16, $6055
	frame 16, $605d
	set_object_properties Properties_3495
	script_call AnimScript_25994
	set_object_properties Properties_349e
	frame 80, $58b8
	set_object_properties Properties_3495
	script_call AnimScript_25978
	set_object_properties StandardEnemyProperties
	set_scripts AnimScript_25917, MotionScript_31de6

AnimScript_25978:
	script_repeat 3
	frame  1, $6045
	frame  5, $58b8
	script_repeat_end
	script_repeat 3
	frame  2, $6045
	frame  2, $58b8
	script_repeat_end
	script_repeat 3
	frame  5, $6045
	frame  1, $58b8
	script_repeat_end
	script_ret

AnimScript_25994:
	script_repeat 3
	frame  5, $6045
	frame  1, $58b8
	script_repeat_end
	script_repeat 3
	frame  2, $6045
	frame  2, $58b8
	script_repeat_end
	script_repeat 3
	frame  1, $6045
	frame  5, $58b8
	script_repeat_end
	script_ret

AnimScript_259b0:
	frame 10, $6045
	frame 10, $604d
	frame 10, $6055
	frame 10, $605d
	frame 10, $6065
	frame 10, $6045
	jump_abs AnimScript_259b0

AnimScript_259c5:
	frame 16, $5ff5
	frame  8, $5ffd
	frame 16, $5ff5
	frame 16, $5ffd
	frame  8, $5ff5
	jump_abs AnimScript_259c5

AnimScript_259d7:
	frame  8, $6005
	frame  8, $5ffd
	jump_abs AnimScript_259d7

AnimScript_259e0:
	frame  0, $6015

AnimScript_259e3:
	frame  8, $5ffd
	frame  0, $5ff5

AnimScript_259e9:
	frame  8, $6025
	frame  0, $601d

AnimScript_259ef:
	frame 32, $602d
	frame  0, $6025

AnimScript_259f5:
	frame 32, $6005
	frame  0, $5ffd

AnimScript_259fb:
	frame 10, $621d
	frame 10, $6225
	jump_abs AnimScript_259fb

AnimScript_25a04:
	frame 10, $622d
	frame 10, $6235
	jump_abs AnimScript_25a04

AnimScript_25a0d:
	frame  8, $6245
	frame  0, $623d

AnimScript_25a13:
	frame  8, $6245
	frame 16, $623d
	jump_abs AnimScript_25a13

AnimScript_25a1c:
	frame  1, $6245
	jump_abs AnimScript_25a1c

AnimScript_25a22:
	frame  1, $623d
	jump_abs AnimScript_25a22

AnimScript_25a28:
	frame 10, $622d
	script_repeat 2
	frame 10, $621d
	frame 10, $6225
	script_repeat_end
	frame 10, $621d
	script_repeat 2
	frame 10, $622d
	frame 10, $6235
	script_repeat_end
	jump_abs AnimScript_25a28

AnimScript_25a43:
	frame 50, $623d
	frame 14, $6245
	frame  0, $623d

AnimScript_25a4c:
.loop
	frame 18, $623d
	frame  6, $6245
	jump_rel .loop

AnimScript_25a54:
	frame  1, $624d
	set_motion_script MotionScript_31d7d
	frame  0, $624d

AnimScript_25a5f:
	frame 40, $624d
	set_object_properties Data_366a
	set_update_func Func_141b1, AnimScript_25a6f
	frame  0, $624d

AnimScript_25a6f:
	set_object_properties ExplosionProperties
	set_scripts AnimScript_243be, MotionScript_30008
; 0x25a79

SECTION "Bank 9@5a7c", ROMX[$5a7c], BANK[$9]

AnimScript_25a7c:
	frame 80, $6255
	frame  4, $625d
	frame  4, $6269
	script_repeat 8
	frame  4, $6279
	frame  4, $6289
	script_repeat_end
	frame  0, $6255

AnimScript_25a91:
	frame 40, $6299
	frame 60, $62a1
	frame  4, $62a9
	frame  4, $62c9
	play_sfx SFX_25
	frame  4, $62f1
.loop
	frame  4, $6329
	frame  4, $6359
	jump_rel .loop

AnimScript_25aac:
	frame  0, $606d

AnimScript_25aaf:
	frame 10, $606d
.loop_1
	jump_random 33 percent + 1, .script_25aeb
	jump_random 50 percent + 1, .script_25af7
	jump_abs .script_25b09

.script_25abd
	frame 15, $606d
	jump_random 70 percent, .script_25ac9
	frame 15, $606d
	jump_rel .loop_1

.script_25ac9
	script_call .script_25b5b
	frame 15, $60d5
.loop_2
	jump_random 33 percent + 1, .script_25b23
	jump_random 50 percent + 1, .script_25b2f
	jump_abs .script_25b41

.script_25ada
	frame 15, $60d5
	jump_random 70 percent, .script_25ae6
	frame 15, $60d5
	jump_rel .loop_2

.script_25ae6
	script_call .script_25b65
	jump_rel .loop_1

.script_25aeb
	create_object AnimScript_25bc6, MotionScript_31ca3, KaboolaBulletProperties
	script_call .script_25b6f
	jump_rel .script_25abd

.script_25af7
	script_repeat 3
	script_call AnimScript_25b83
	create_object AnimScript_25bc6, MotionScript_31ca3, KaboolaBulletProperties
	frame 10, $606d
	script_repeat_end
	jump_rel .script_25abd

.script_25b09
	script_call AnimScript_25b83
	create_object AnimScript_25bc6, MotionScript_31c9d, KaboolaBulletProperties
	create_object AnimScript_25bc6, MotionScript_30308, KaboolaBulletProperties
	create_object AnimScript_25bc6, MotionScript_31ca0, KaboolaBulletProperties
	jump_rel .script_25abd

.script_25b23
	script_call .script_25b79
	create_object AnimScript_25bc0, MotionScript_31ca3, KaboolaBulletProperties
	jump_rel .script_25ada

.script_25b2f
	script_repeat 3
	script_call AnimScript_25b8d
	create_object AnimScript_25bc0, MotionScript_31ca3, KaboolaBulletProperties
	frame 10, $60d5
	script_repeat_end
	jump_rel .script_25ada

.script_25b41
	script_call AnimScript_25b8d
	create_object AnimScript_25bc0, MotionScript_31c9d, KaboolaBulletProperties
	create_object AnimScript_25bc0, MotionScript_30308, KaboolaBulletProperties
	create_object AnimScript_25bc0, MotionScript_31ca0, KaboolaBulletProperties
	jump_rel .script_25ada

.script_25b5b
	frame  4, $6095
	frame  4, $60b5
	frame 10, $60d5
	script_ret

.script_25b65
	frame  4, $60b5
	frame  4, $6095
	frame 10, $606d
	script_ret

.script_25b6f
	frame  4, $60fd
	frame  4, $612d
	frame  4, $615d
	script_ret

.script_25b79
	frame  4, $618d
	frame  4, $61bd
	frame  4, $61ed
	script_ret

AnimScript_25b83:
	frame  2, $60fd
	frame  2, $612d
	frame  2, $615d
	script_ret

AnimScript_25b8d:
	frame  2, $618d
	frame  2, $61bd
	frame  2, $61ed
	script_ret

AnimScript_25b97:
.loop
	script_call AnimScript_25b9c
	jump_rel .loop

AnimScript_25b9c:
	frame  4, $606d
	frame  4, $6095
	frame  4, $60b5
	frame  4, $60d5
	jump_abs AnimScript_25b9c
; 0x25bab

SECTION "Bank 9@5bc0", ROMX[$5bc0], BANK[$9]

AnimScript_25bc0:
	position_offset -10, -16
	jump_abs AnimScript_249f0

AnimScript_25bc6:
	position_offset -10, 16
	jump_abs AnimScript_249f0
; 0x25bcc

SECTION "Bank 9@5c09", ROMX[$5c09], BANK[$9]

AnimScript_25c09:
.loop
	set_motion_script MotionScript_31efb
	script_repeat 8
	frame 12, $4528
	frame 12, $4530
	script_repeat_end
	set_motion_script MotionScript_30008
	script_repeat 2
	frame  4, $4530
	frame  4, $4528
	script_repeat_end
	frame 10, $4530
	set_motion_script MotionScript_31ee6
	script_repeat 8
	frame 12, $4518
	frame 12, $4520
	script_repeat_end
	set_motion_script MotionScript_30008
	script_repeat 2
	frame  4, $4520
	frame  4, $4518
	script_repeat_end
	frame 10, $4520
	jump_rel .loop

AnimScript_25c49:
	frame  8, $4518
	frame  8, $4520
	jump_abs AnimScript_25c49
; 0x25c52

SECTION "Bank 9@5c5b", ROMX[$5c5b], BANK[$9]

AnimScript_25c5b:
	frame 12, $4518
	frame 10, $4520
	jump_abs AnimScript_25c5b

AnimScript_25c64:
	frame 12, $4528
	frame 10, $4530
	jump_abs AnimScript_25c64

AnimScript_25c6d:
	frame  0, $4540
; 0x25c70

SECTION "Bank 9@5c73", ROMX[$5c73], BANK[$9]

AnimScript_25c73:
	frame  0, $4548

AnimScript_25c76:
	frame  8, $4538
	frame  8, $4540
	frame  8, $4548
	frame  8, $4550
	jump_abs AnimScript_25c76

AnimScript_25c85:
	frame  6, $5e45
	frame  6, $5e4d
	script_repeat 2
	frame 10, $5e45
	frame 10, $5e4d
	script_repeat_end
	jump_abs AnimScript_25c85

AnimScript_25c97:
	frame 10, $5ecd
	frame 10, $5ec5
	set_scripts AnimScript_25cbe, MotionScript_314d5

AnimScript_25ca2:
	script_repeat 2
	frame 10, $5ecd
	frame 10, $5ec5
	script_repeat_end
	set_scripts AnimScript_25cbe, MotionScript_314d5

AnimScript_25cb0:
	script_repeat 3
	frame 10, $5ecd
	frame 10, $5ec5
	script_repeat_end
	set_motion_script MotionScript_314d5
AnimScript_25cbe:
	frame 10, $5ecd
	frame 10, $5ec5
	frame 10, $5ecd
AnimScript_25cc7:
	frame  8, $5ecd
	frame  8, $5ec5
	jump_abs AnimScript_25cc7

AnimScript_25cd0:
.loop
	set_motion_script MotionScript_302ce
	script_repeat 18
	frame 16, $5e55
	frame 16, $5e5d
	script_repeat_end
	set_motion_script MotionScript_302d1
	script_repeat 18
	frame 16, $5e65
	frame 16, $5e6d
	script_repeat_end
	jump_rel .loop

AnimScript_25cee:
	set_update_func Func_140ce, AnimScript_25d03
AnimScript_25cf3:
.loop
	frame 10, $4558
	frame 10, $4560
	jump_rel .loop
; 0x25cfb

SECTION "Bank 9@5d03", ROMX[$5d03], BANK[$9]

AnimScript_25d03:
	set_object_properties Properties_34ed
	set_motion_script MotionScript_320b6
	frame 12, $4558
	frame 12, $4578
	set_motion_script MotionScript_3201f
.script_25d18
	branch_kirby_pos .script_25d1f, .script_25d27
.script_25d1f
	frame  8, $4568
	frame 10, $4578
	jump_rel .script_25d18
.script_25d27
	frame  8, $4590
	frame 10, $45a0
	jump_rel .script_25d18

AnimScript_25d2f:
	branch_kirby_pos .script_25d36, .script_25d39
.script_25d36
	frame  0, $4578

.script_25d39
	frame  0, $45a0

AnimScript_25d3c:
	script_repeat 3
	frame 10, $5e55
	frame  8, $5e5d
	script_repeat_end
	script_repeat 3
	frame 10, $5e65
	frame  8, $5e6d
	script_repeat_end
	script_repeat 2
	frame 10, $5e55
	frame  8, $5e5d
	script_repeat_end
	script_repeat 2
	frame 10, $5e65
	frame  8, $5e6d
	script_repeat_end
	frame 10, $5e55
	frame  8, $5e5d
	frame 10, $5e65
	frame  8, $5e6d
	frame 20, $5e5d
	frame 64, $5e55
	frame 20, $5e5d
	jump_abs AnimScript_25d3c

AnimScript_25d78:
	position_offset 0, 6
	jump_abs AnimScript_249f0
; 0x25d7e

SECTION "Bank 9@5d84", ROMX[$5d84], BANK[$9]

AnimScript_25d84:
	jump_abs AnimScript_25d87.script_25dac

AnimScript_25d87:
	frame 15, $5ef5
	script_exec Func_495c
	jumptable wd3bd
	dw .script_25da0
	dw .script_25dcb
	dw .script_25df0
	dw .script_25df0
	dw .script_25dc5
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25e91

.script_25da0
	create_object AnimScript_249f0, MotionScript_31788, ShotzoBulletProperties
	set_motion_script MotionScript_302a4
.script_25dac
	frame  8, $5ef5
.script_25daf
	script_exec Func_495c
	jumptable wd3bd
	dw AnimScript_25d87
	dw .script_25dcb
	dw .script_25df0
	dw .script_25df0
	dw .script_25dc5
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25e91

.script_25dc5
	frame 15, $5ef5
	jump_abs .script_25daf

.script_25dcb
	frame 15, $5efd
	script_exec Func_495c
	jumptable wd3bd
	dw AnimScript_25d87
	dw .script_25de4
	dw .script_25e09
	dw .script_25e47
	dw .script_25dc5
	dw .script_25dac
	dw .script_25dac
	dw .script_25dac

.script_25de4
	create_object AnimScript_249f0, MotionScript_30d92, ShotzoBulletProperties
	set_motion_script MotionScript_302b0
.script_25df0
	frame  8, $5efd
	script_exec Func_495c
	jumptable wd3bd
	dw AnimScript_25d87
	dw .script_25dcb
	dw .script_25e09
	dw .script_25e47
	dw .script_25dc5
	dw .script_25dac
	dw .script_25dac
	dw .script_25dac

.script_25e09
	frame 15, $5f05
	script_exec Func_495c
	jumptable wd3bd
	dw .script_25df0
	dw .script_25dcb
	dw .script_25e22
	dw .script_25e47
	dw .script_25df0
	dw .script_25df0
	dw .script_25df0
	dw .script_25df0

.script_25e22
	create_object AnimScript_249f0, MotionScript_302f8, ShotzoBulletProperties
	set_motion_script MotionScript_302bc
	frame 15, $5f05
.script_25e31
	script_exec Func_495c
	jumptable wd3bd
	dw .script_25df0
	dw .script_25dcb
	dw .script_25e09
	dw .script_25e47
	dw .script_25df0
	dw .script_25df0
	dw .script_25df0
	dw .script_25df0

.script_25e47
	frame 15, $5f05
	jump_abs .script_25e31

.script_25e4d
	frame 15, $5ee5
	script_exec Func_495c
	jumptable wd3bd
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25e8b
	dw .script_25e66
	dw .script_25e91

.script_25e66
	create_object AnimScript_249f0, MotionScript_302f5, ShotzoBulletProperties
	set_motion_script MotionScript_3028c
	frame 15, $5ee5
.script_25e75
	script_exec Func_495c
	jumptable wd3bd
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25eb6
	dw .script_25e8b
	dw .script_25e4d
	dw .script_25e91

.script_25e8b
	frame 15, $5ee5
	jump_abs .script_25e75
.script_25e91
	frame 30, $5eed
	script_exec Func_495c
	jumptable wd3bd
	dw AnimScript_25d87
	dw .script_25dac
	dw .script_25dac
	dw .script_25dac
	dw .script_25dc5
	dw .script_25e8b
	dw .script_25e4d
	dw .script_25eaa

.script_25eaa
	create_object AnimScript_249f0, MotionScript_30d8f, ShotzoBulletProperties
	set_motion_script MotionScript_30298

.script_25eb6
	frame 15, $5eed
	script_exec Func_495c
	jumptable wd3bd
	dw AnimScript_25d87
	dw .script_25dac
	dw .script_25dac
	dw .script_25dac
	dw .script_25dc5
	dw .script_25e8b
	dw .script_25e4d
	dw .script_25e91

AnimScript_25ecf:
	frame  0, $46a4

AnimScript_25ed2:
	frame  0, $4664

AnimScript_25ed5:
.loop
	set_pal_light
	frame 10, $4654
	set_pal_dark
	frame 10, $4654
	jump_rel .loop

AnimScript_25ee3:
	set_update_func Func_140c2, AnimScript_25f27
.loop
	frame 10, $46a4
	frame 10, $46b4
	frame 10, $46a4
	frame 10, $46b4
	frame 20, $46c4
	frame 10, $46d4
	frame 10, $46c4
	frame 10, $46d4
	frame 10, $46a4
	jump_rel .loop

AnimScript_25f05:
	set_update_func Func_140c2, AnimScript_25f39
.loop
	frame 10, $4664
	frame 10, $4674
	frame 10, $4664
	frame 10, $4674
	frame 20, $4684
	frame 10, $4694
	frame 10, $4684
	frame 10, $4694
	frame 10, $4664
	jump_rel .loop

AnimScript_25f27:
	create_object AnimScript_25ed5, MotionScript_32161, Data_3421
	set_object_properties StandardEnemyProperties
	frame  1, $5e55
	script_exec Func_4afb
AnimScript_25f39:
	create_object AnimScript_25ed5, MotionScript_32161, Data_3421
	set_object_properties StandardEnemyProperties
	frame  1, $5e75
	script_exec Func_4afb
AnimScript_25f4b:
	set_object_properties Data_3421
	set_scripts AnimScript_25ed5, MotionScript_32161
; 0x25f55

SECTION "Bank 9@5f60", ROMX[$5f60], BANK[$9]

AnimScript_25f60:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_25f6d
	frame  0, $5e55

AnimScript_25f6d:
	set_scripts AnimScript_24587, MotionScript_302ce

AnimScript_25f72:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_25f7f
	frame  0, $5e55

AnimScript_25f7f:
	set_scripts AnimScript_245ae, MotionScript_303ff

AnimScript_25f84:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_25f91
	frame  0, $5e75

AnimScript_25f91:
	set_scripts AnimScript_245e1, MotionScript_302ce

AnimScript_25f96:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_25fa3
	frame  0, $5e75

AnimScript_25fa3:
	set_scripts AnimScript_2461d, MotionScript_303ff
; 0x25fa8

SECTION "Bank 9@5fbb", ROMX[$5fbb], BANK[$9]

AnimScript_25fbb:
	frame 20, $4794
	frame 20, $479c
	frame 20, $4794
	frame 20, $47a4
	jump_abs AnimScript_25fbb

AnimScript_25fca:
	play_sfx SFX_20
.loop
	frame  4, $4764
	frame  4, $476c
	frame  4, $4770
	frame  4, $4778
	jump_rel .loop

AnimScript_25fdc:
	play_sfx SFX_20
	frame  4, $477c
	frame  4, $4784
	frame  4, $4788
	frame  4, $4790
	jump_abs AnimScript_25fdc

AnimScript_25fef:
	script_call AnimScript_2606d
	jump_abs AnimScript_25fef
; 0x25ff5

SECTION "Bank 9@5ffb", ROMX[$5ffb], BANK[$9]

AnimScript_25ffb:
	script_call AnimScript_2609c
	jump_abs AnimScript_25ffb

AnimScript_26001:
	set_motion_script MotionScript_302ce
	script_call AnimScript_2606d
	jump_abs AnimScript_26001

AnimScript_2600c:
.script_2600c
	script_call AnimScript_26068
	branch_kirby_pos .script_26016, .script_26058
.script_26016
	script_call AnimScript_26068
	branch_kirby_pos .script_26020, .script_2604e
.script_26020
	script_call AnimScript_26068
	branch_kirby_pos .script_2602a, .script_26044
.script_2602a
	script_call AnimScript_26068
.script_2602d
	branch_kirby_pos .script_26034, .script_2603a
.script_26034
	script_call AnimScript_2606d
	jump_abs .script_2602d
.script_2603a
	script_call AnimScript_260e2
	branch_kirby_pos .script_2602a, .script_26044
.script_26044
	script_call AnimScript_260e2
	branch_kirby_pos .script_26020, .script_2604e
.script_2604e
	script_call AnimScript_260e2
	branch_kirby_pos .script_26016, .script_26058
.script_26058
	script_call AnimScript_260e2
.script_2605b
	branch_kirby_pos .script_2600c, .script_26062
.script_26062
	script_call AnimScript_260e7
	jump_abs .script_2605b

AnimScript_26068:
	set_motion_script MotionScript_302d4
AnimScript_2606d:
	script_repeat 3
	frame  8, $4724
AnimScript_26072:
	frame  8, $472c
	script_repeat_end
	set_motion_script MotionScript_30008
	frame 20, $4734
	create_object AnimScript_25fca, MotionScript_3226a, SirKibbleBladeProperties
	frame 10, $473c
	frame 10, $4734
	create_object AnimScript_25fca, MotionScript_3226a, SirKibbleBladeProperties
	frame 10, $473c
	frame 16, $473c
	frame 20, $4734
	script_ret

AnimScript_2609c:
	branch_kirby_pos .script_260a3, .script_260ce
.script_260a3
	frame 18, $4734
	create_object AnimScript_25fca, MotionScript_322a8, SirKibbleBladeProperties
	frame 18, $473c
	frame 18, $4734
	create_object AnimScript_25fca, MotionScript_322c7, SirKibbleBladeProperties
	frame 18, $473c
	frame 18, $4734
	create_object AnimScript_25fca, MotionScript_32289, SirKibbleBladeProperties
	frame 18, $473c
	frame 20, $4734
	script_ret
.script_260ce
	script_repeat 3
	frame 18, $4754
	create_object AnimScript_25fdc, MotionScript_32305, SirKibbleBladeProperties
	frame 18, $475c
	script_repeat_end
	frame 20, $4754
	script_ret

AnimScript_260e2:
	set_motion_script MotionScript_302d7
AnimScript_260e7:
	script_repeat 3
	frame  8, $4744
	frame  8, $474c
	script_repeat_end
	set_motion_script MotionScript_30008
	frame 20, $4754
	create_object AnimScript_25fca, MotionScript_322e6, SirKibbleBladeProperties
	frame 10, $475c
	frame 10, $4754
	create_object AnimScript_25fdc, MotionScript_322e6, SirKibbleBladeProperties
	frame 10, $475c
	frame 16, $475c
	frame 20, $4754
	script_ret

SECTION "Bank 9@6116", ROMX[$6116], BANK[$9]

AnimScript_26116:
	frame  0, $58b8

AnimScript_26119:
	frame  0, $47ac

AnimScript_2611c:
	position_offset 0, 96
AnimScript_2611f:
	frame  2, $47b0
	frame  2, $47b8
	frame  2, $47c4
	frame  2, $47c0
	frame  2, $47b4
	frame  2, $47bc
	jump_abs AnimScript_2611f

AnimScript_26134:
	frame 40, $58b8
	jump_random 25 percent + 1, .script_2614c
	frame 20, $58b8
	jump_random 50 percent + 1, .script_2614c
	frame 20, $58b8
	jump_random 75 percent + 1, .script_2614c
	frame 20, $58b8
.script_2614c
	create_object AnimScript_26156, MotionScript_32326, GlunkPodProperties
	jump_abs AnimScript_26134

AnimScript_26156:
	script_exec Func_4a93
.loop
	frame 10, $5c1d
	set_pal_dark
	frame  4, $5c1d
	set_pal_light
	jump_rel .loop

AnimScript_26167:
	branch_kirby_pos .script_2616e, .script_2618b
.script_2616e
	script_repeat 6
	frame  3, $5e8d
	frame  3, $5e75
	script_repeat_end
	set_motion_script MotionScript_31f4c
	script_call AnimScript_261de
	script_repeat 2
	frame  4, $5e75
	frame  4, $5e7d
	script_repeat_end
	jump_abs AnimScript_26167
.script_2618b
	script_repeat 12
	frame  3, $5eb5
	frame  3, $5e9d
	script_repeat_end
	set_motion_script MotionScript_31f4c
	script_call AnimScript_2623f
	script_repeat 4
	frame  4, $5e9d
	frame  4, $5ea5
	script_repeat_end
	jump_abs AnimScript_26167

AnimScript_261a8:
	branch_kirby_pos AnimScript_261af, AnimScript_261c6

AnimScript_261af:
	script_repeat 8
	frame  3, $5e8d
	frame  3, $5e75
	script_repeat_end
	script_call AnimScript_261de
	script_repeat 2
	frame  4, $5e75
	frame  4, $5e7d
	script_repeat_end
	jump_rel AnimScript_261a8

AnimScript_261c6:
	script_repeat 12
	frame  3, $5eb5
	frame  3, $5e9d
	script_repeat_end
	script_call AnimScript_2623f
	script_repeat 4
	frame  4, $5e9d
	frame  4, $5ea5
	script_repeat_end
	jump_abs AnimScript_261af

AnimScript_261de:
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303bf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303fb, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303f7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303f3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303ef, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303eb, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303e7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303e3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_ret

AnimScript_2623f:
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303bf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303c3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303c7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303cb, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303cf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303d3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303d7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_249da, MotionScript_303db, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_ret

AnimScript_262a0:
	frame  1, $58b8
	set_object_properties Data_3421
	set_update_func Func_14252, AnimScript_262b0
	frame  0, $58b8

AnimScript_262b0:
	branch_on_kirby_vertical_alignment AnimScript_262a0, .script_262b9
	jump_rel AnimScript_262a0
.script_262b9
	position_offset -16, -32
	set_object_properties OneUpProperties
	jump_abs AnimScript_24951

AnimScript_262c4:
.script_262c4
	branch_kirby_pos .script_262cb, .script_262d3
.script_262cb
	frame  8, $4518
	frame  8, $4520
	jump_rel .script_262c4
.script_262d3
	frame  8, $4528
	frame  8, $4530
	jump_rel .script_262c4

AnimScript_262db:
	frame 40, $58b8
	create_object AnimScript_26400, MotionScript_30008, Data_3425
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

AnimScript_26300:
.loop
	frame 170, $58b8
	create_object AnimScript_2630c, MotionScript_323f6, Data_3425
	jump_rel .loop

AnimScript_2630c:
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

AnimScript_26380:
	frame 200, $58b8
AnimScript_26383:
	frame 30, $58b8
	create_object AnimScript_26390, MotionScript_30008, Data_3425
	jump_abs AnimScript_26383

AnimScript_26390:
	jumptable_random 15
	dw .script_263b2
	dw .script_263b7
	dw .script_263bc
	dw .script_263c1
	dw .script_263c6
	dw .script_263cb
	dw .script_263d0
	dw .script_263d5
	dw .script_263da
	dw .script_263df
	dw .script_263e4
	dw .script_263e9
	dw .script_263ee
	dw .script_263f3
	dw .script_263f8
	dw .script_263fd

.script_263b2
	position_offset 20, 10
	jump_rel AnimScript_26400
.script_263b7
	position_offset 40, 20
	jump_rel AnimScript_26400
.script_263bc
	position_offset 60, 10
	jump_rel AnimScript_26400
.script_263c1
	position_offset 80, 20
	jump_rel AnimScript_26400
.script_263c6
	position_offset 100, 10
	jump_rel AnimScript_26400
.script_263cb
	position_offset 120, 20
	jump_rel AnimScript_26400
.script_263d0
	position_offset 60, 20
	jump_rel AnimScript_26400
.script_263d5
	position_offset 20, 30
	jump_rel AnimScript_26400
.script_263da
	position_offset 40, 40
	jump_rel AnimScript_26400
.script_263df
	position_offset 60, 30
	jump_rel AnimScript_26400
.script_263e4
	position_offset 80, 40
	jump_rel AnimScript_26400
.script_263e9
	position_offset 100, 30
	jump_rel AnimScript_26400
.script_263ee
	position_offset 120, 40
	jump_rel AnimScript_26400
.script_263f3
	position_offset 120, 30
	jump_rel AnimScript_26400
.script_263f8
	position_offset 50, 35
	jump_rel AnimScript_26400
.script_263fd
	position_offset 70, 35
AnimScript_26400:
	create_object AnimScript_2642c, MotionScript_308ab, Data_3421
	create_object AnimScript_2642c, MotionScript_308bc, Data_3421
	frame  3, $5c25
	frame  3, $5c2d
	create_object AnimScript_2642c, MotionScript_308a1, Data_3421
	create_object AnimScript_2642c, MotionScript_308b2, Data_3421
	frame  3, $5c3d
	frame  3, $5c45
	frame  3, $5c25
	script_end

AnimScript_2642c:
	frame  0, $4ba8

AnimScript_2642f:
	frame 150, $52b0
	frame  8, $52b4
	frame  8, $52b8
	frame 20, $52bc
	frame  8, $52b8
	frame  8, $52b4
	frame 200, $52b0
	frame  8, $52b4
	frame  8, $52b8
	frame 20, $52bc
	frame  8, $52b8
	frame  8, $52b4
	jump_abs AnimScript_2642f

AnimScript_26456:
	frame  8, $52c0
	frame 180, $58b8
	frame  8, $52c0
	frame 10, $58b8
	frame  8, $52c0
	frame 120, $58b8
	jump_abs AnimScript_26456

AnimScript_2646b:
	frame 32, $58b8
	frame 32, $58d9
	frame 24, $5b69
	frame  8, $5bc9
	script_repeat 2
	frame  8, $58c1
	frame  8, $58c9
	frame  8, $58d1
	frame  8, $58c9
	script_repeat_end
	frame 32, $58b8
	script_repeat 5
	frame  8, $5be1
	frame  8, $5be9
	frame  8, $5bf9
	frame  8, $5bf1
	script_repeat_end
	frame 32, $5bf1
	script_end

AnimScript_2649c:
	script_repeat 4
	frame  8, $4bb4
	frame  8, $4bb8
	script_repeat_end
	script_repeat 30
	frame  4, $4bac
	frame  4, $4bb0
	script_repeat_end
	frame  4, $4bac
	script_end
; 0x264b2

SECTION "Bank 9@64b7", ROMX[$64b7], BANK[$9]

AnimScript_264b7:
	frame  8, $4bb8
AnimScript_264ba:
	script_repeat 100
	frame  8, $4bb4
	frame  8, $4bb8
	script_repeat_end
	script_end

AnimScript_264c4:
	script_call AnimScript_264f4
	set_scripts AnimScript_264b7, MotionScript_32508

AnimScript_264cc:
	script_call AnimScript_264f4
	set_scripts AnimScript_264b7, MotionScript_3250e

AnimScript_264d4:
	script_call AnimScript_264f4
	set_scripts AnimScript_264ba, MotionScript_32511

AnimScript_264dc:
	script_call AnimScript_264f4
	set_scripts AnimScript_264b7, MotionScript_32514

AnimScript_264e4:
	script_call AnimScript_264f4
	set_scripts AnimScript_264b7, MotionScript_3251a

AnimScript_264ec:
	script_call AnimScript_264f4
	set_scripts AnimScript_264ba, MotionScript_3251d

AnimScript_264f4:
	frame 104, $58b8
	script_delay 94
	script_ret

AnimScript_264fa:
	frame  0, $5c21

AnimScript_264fd:
	frame  8, $4d6c
	frame  8, $4d78
	script_end

AnimScript_26504:
	frame 48, $58e9
	frame 16, $4d84
	script_delay 15
	frame 16, $4d8c
	frame 48, $58e9
	frame 32, $4d84
	frame 16, $4d8c
	frame 52, $58e9
	frame  0, $5be1

AnimScript_2651e:
	frame 96, $58b8
	frame 96, $58b8
	frame  0, $5c21

AnimScript_26527:
	frame 48, $4bbc
	frame  8, $4bcc
	frame 16, $4bbc
	frame  8, $4bcc
	frame 16, $4bbc
	frame 10, $4bdc
	frame 32, $4bf4
	frame 48, $4c0c
	frame 16, $4c18
	frame 16, $4c24
	frame 32, $4c84
	frame 10, $4c38
	frame 20, $4c54
	frame 20, $4c60
	frame  8, $4c6c
	frame 16, $4c60
	frame 32, $4c6c
	frame 16, $4c60
	frame 160, $4c6c
	frame  0, $4c60

AnimScript_26563:
	frame 96, $58b8
.loop
	frame 24, $4c7c
	frame 24, $4c80
	jump_abs .loop

AnimScript_2656f:
	frame 104, $58b8
.loop
	frame  6, $4ca0
	frame  6, $4ca8
	frame  6, $4ca0
	frame  6, $4ca8
	frame  6, $4cb0
	frame  6, $4cb8
	jump_abs .loop

AnimScript_26587:
	frame 50, $58b8
	frame 50, $5b69
	frame  8, $5d29
	frame  8, $5d31
	script_end

AnimScript_26594:
	jumptable_random 15
	dw .script_265b8
	dw .script_265bb
	dw .script_265be
	dw .script_265be
	dw .script_265d9
	dw .script_265c1
	dw .script_265c4
	dw .script_265c7
	dw .script_265ca
	dw .script_265cd
	dw .script_265d0
	dw .script_265d3
	dw .script_265d6
	dw .script_265d9
	dw .script_265d9
	dw .script_265d9
	dw .script_265d9 ; extra entry

.script_265b8
	frame  0, $4cc0

.script_265bb
	frame  0, $4cc4

.script_265be
	frame  0, $4ce4

.script_265c1
	frame  0, $5901

.script_265c4
	frame  0, $58e1

.script_265c7
	frame  0, $5ae9

.script_265ca
	frame  0, $5b71

.script_265cd
	frame  0, $5be9

.script_265d0
	frame  0, $58d9

.script_265d3
	frame  0, $5bf1

.script_265d6
	frame  0, $5bad

.script_265d9
	jump_abs AnimScript_243f6

SECTION "Bank 9@65dc", ROMX[$65dc], BANK[$9]

AnimScript_265dc:
	frame 128, $58b8
	script_repeat 4
	frame  6, $4cfc
	frame  6, $4d1c
	frame  6, $4d3c
	frame  6, $4d5c
	script_repeat_end
	frame  0, $58b8

AnimScript_265f1:
	frame  8, $58c1
	frame  8, $58c9
	frame  8, $58d1
	frame  8, $58c9
	frame  8, $58c1
	frame  8, $58c9
	frame 30, $58d9
	script_end

AnimScript_26607:
	script_delay 120
	script_delay 160
	script_delay 96
	script_delay 80
	script_delay 64
	jump_abs AnimScript_2490b

AnimScript_26614:
	frame 156, $58b8
	script_delay 160
	script_delay 96
	script_delay 80
	frame  0, $4b30

AnimScript_26620:
	script_repeat 4
	frame  4, $5c25
	frame  4, $5c2d
	frame  4, $5c3d
	frame  4, $5c45
	script_repeat_end
	frame  5, $5c25
	frame  5, $5c2d
	frame  5, $5c3d
	create_object AnimScript_2490b, MotionScript_30775, Data_3425
	create_object AnimScript_2490b, MotionScript_3076b, Data_3425
	create_object AnimScript_2490b, MotionScript_30761, Data_3425
	create_object AnimScript_2490b, MotionScript_30757, Data_3425
	frame 100, $5c01
	script_repeat 28
	script_delay 4
	create_object AnimScript_2666f, MotionScript_32793, Data_3425
	script_repeat_end
AnimScript_26663:
	create_object AnimScript_2666f, MotionScript_33c68, Data_3425
	script_delay 8
	jump_abs AnimScript_26663

AnimScript_2666f:
	position_offset -5, 4
	frame 25, $5c1d
	script_end

AnimScript_26676:
	frame 80, $4d98
	play_sfx SFX_23
	frame 16, $4dcc
	frame 16, $4e00
	frame  0, $4e34

AnimScript_26686:
	frame 80, $4e34
	set_motion_script MotionScript_30008
	script_delay 80
	set_motion_script MotionScript_32887
	script_delay 128
	frame 32, $4e68
	frame 32, $4e98
	frame 32, $4ed0
	frame 32, $4f20
	set_motion_script MotionScript_32893
	frame  0, $4f20

AnimScript_266ab:
	frame 80, $58b8
	frame  0, $4f90

AnimScript_266b1:
	script_call AnimScript_266d9
	set_scripts AnimScript_266f5, MotionScript_32903

AnimScript_266b9:
	script_call AnimScript_266d9
	set_scripts AnimScript_266f5, MotionScript_32930

AnimScript_266c1:
	script_call AnimScript_266d9
	set_scripts AnimScript_266f5, MotionScript_32946

AnimScript_266c9:
	script_call AnimScript_266d9
	set_scripts AnimScript_266f5, MotionScript_32914

AnimScript_266d1:
	script_call AnimScript_266d9
	set_scripts AnimScript_266f5, MotionScript_32962

AnimScript_266d9:
	script_repeat 9
	frame  5, $5c91
	frame  5, $5c9d
	frame  5, $5ca9
	frame  5, $5cb5
	frame  5, $5cc1
	frame  5, $5ccd
	frame  5, $5cd9
	frame  5, $5ce5
	script_repeat_end
	script_ret

AnimScript_266f5:
.loop
	frame  2, $5c91
	frame  2, $5c9d
	frame  2, $5ca9
	frame  2, $5cb5
	frame  2, $5cc1
	frame  2, $5ccd
	frame  2, $5cd9
	frame  2, $5ce5
	jump_rel .loop

AnimScript_2670f:
	play_music MUSIC_SPARKLING_STAR
	script_call AnimScript_248d2
	frame 20, $5bc9
	frame 40, $58e1
	script_repeat 3
	frame 12, $58c1
	frame 10, $58c9
	frame 12, $58d1
	frame 10, $58c9
	script_repeat_end
	script_call AnimScript_248d2
	script_call AnimScript_248e5
	script_call AnimScript_248d2
	frame  0, $58e1

AnimScript_26737:
	frame 200, $4fbc
	frame 21, $4fbc
	frame  0, $4f94

AnimScript_26740:
	frame 200, $4fbc
	frame 21, $4fbc
	frame  0, $4fa4

AnimScript_26749:
	create_object AnimScript_2676f, MotionScript_329ad, Data_3425
	frame 50, $4fbc
	create_object AnimScript_2676f, MotionScript_329d3, Data_3425
	frame 90, $4fbc
	create_object AnimScript_2676f, MotionScript_329f2, Data_3425
	frame 64, $4fbc
	set_motion_script MotionScript_31767
	frame 136, $4fbc
AnimScript_2676f:
	frame  0, $4fbc

AnimScript_26772:
	frame  0, $4fc0

AnimScript_26775:
.loop
	frame 12, $4fc4
	frame 12, $4fcc
	frame 12, $4fd4
	frame 12, $4fdc
	jump_rel .loop

AnimScript_26783:
.loop
	frame 12, $4fe4
	frame 12, $4fec
	frame 12, $4ff4
	frame 12, $4ffc
	jump_rel .loop

AnimScript_26791:
.loop
	frame 13, $5004
	frame 13, $500c
	frame 13, $5014
	frame 13, $501c
	jump_rel .loop

AnimScript_2679f:
.loop
	frame 11, $5024
	frame 11, $502c
	frame 11, $5034
	frame 11, $503c
	jump_rel .loop

AnimScript_267ad:
.loop
	frame 12, $5044
	frame 12, $504c
	frame 12, $5054
	frame 12, $505c
	jump_rel .loop

AnimScript_267bb:
.loop
	frame 18, $5064
	frame 18, $5068
	frame 18, $506c
	frame 18, $5070
	jump_rel .loop

AnimScript_267c9:
.loop
	frame 16, $5074
	frame 16, $5078
	frame 16, $507c
	frame 16, $5080
	jump_rel .loop

AnimScript_267d7:
	frame  0, $5084

AnimScript_267da:
	frame  0, $5094

AnimScript_267dd:
	frame 64, $4f20
	play_sfx SFX_EXPLOSION
	frame  0, $50b4

AnimScript_267e7:
	frame 64, $58b8
	script_repeat 7
	frame  1, $50e4
	frame  1, $50fc
	frame  1, $5110
	frame  1, $5128
	frame  1, $513c
	frame  1, $5154
	frame  1, $5168
	script_repeat_end
	frame 30, $5194
	play_sfx SFX_13
	frame  0, $5194

AnimScript_2680c:
	frame 64, $58b8
	frame  0, $52ac

AnimScript_26812:
	frame  0, $4fbc

AnimScript_26815:
	frame 11, $58b8
AnimScript_26818:
	frame 12, $529c
AnimScript_2681b:
	frame 11, $58b8
AnimScript_2681e:
	frame 11, $58b8
AnimScript_26821:
	frame 12, $529c
	jump_rel AnimScript_26815

AnimScript_26826:
	frame 44, $5198
	play_sfx SFX_BUMP
	frame 32, $51b0
	frame 80, $51bc
	frame 32, $51d4
	script_repeat 3
	frame 16, $51d4
	frame 10, $51ec
	script_repeat_end
	frame 64, $51ec
	frame  8, $5204
	frame  8, $5234
	play_sfx SFX_JUMP
	frame  0, $5264

AnimScript_2684f:
.loop
	frame 20, $4fbc
	create_object AnimScript_26865, MotionScript_30008, Data_3425
	frame 20, $4fbc
	create_object AnimScript_26865.script_26879, MotionScript_30008, Data_3425
	jump_rel .loop

AnimScript_26865:
	calltable_random $07
	dw .script_268c5
	dw .script_268c9
	dw .script_268cd
	dw .script_268d1
	dw .script_268d5
	dw .script_268d9
	dw .script_268dd
	dw .script_268e1
	jump_rel .script_2688b

.script_26879
	calltable_random $07
	dw .script_268e5
	dw .script_268e9
	dw .script_268ed
	dw .script_268f1
	dw .script_268f5
	dw .script_268f9
	dw .script_268fd
	dw .script_26901

.script_2688b
	jumptable_random 7
	dw .script_268a2
	dw .script_268a7
	dw .script_268ac
	dw .script_268b1
	dw .script_2689d
	dw .script_268b6
	dw .script_268bb
	dw .script_268c0

.script_2689d
	set_scripts AnimScript_2679f, MotionScript_32be1
.script_268a2
	set_scripts AnimScript_267ad, MotionScript_32be1
.script_268a7
	set_scripts AnimScript_26775, MotionScript_32be1
.script_268ac
	set_scripts AnimScript_26783, MotionScript_32be1
.script_268b1
	set_scripts AnimScript_26791, MotionScript_32be1
.script_268b6
	set_scripts AnimScript_267bb, MotionScript_32be5
.script_268bb
	set_scripts AnimScript_267c9, MotionScript_32be5
.script_268c0
	set_scripts AnimScript_26772, MotionScript_32be9

.script_268c5
	position_offset -62, 0
	script_ret
.script_268c9
	position_offset -56, 0
	script_ret
.script_268cd
	position_offset -51, 0
	script_ret
.script_268d1
	position_offset -46, 0
	script_ret
.script_268d5
	position_offset -41, 0
	script_ret
.script_268d9
	position_offset -36, 0
	script_ret
.script_268dd
	position_offset -31, 0
	script_ret
.script_268e1
	position_offset -26, 0
	script_ret
.script_268e5
	position_offset 26, 0
	script_ret
.script_268e9
	position_offset 31, 0
	script_ret
.script_268ed
	position_offset 36, 0
	script_ret
.script_268f1
	position_offset 41, 0
	script_ret
.script_268f5
	position_offset 46, 0
	script_ret
.script_268f9
	position_offset 51, 0
	script_ret
.script_268fd
	position_offset 56, 0
	script_ret
.script_26901
	position_offset 62, 0
	script_ret

AnimScript_26905:
	frame 15, $58b8
	script_repeat 15
	script_delay 4
	set_value wd065, $01
	script_delay 204
	create_object AnimScript_26923, MotionScript_30008, Data_3425
	script_repeat_end
	script_delay 180
	script_delay 160
	set_value wd067, $01
	script_end

AnimScript_26923:
	script_repeat 32
	inc_value wCreditsTextScroll
	frame  2, $58b8
	script_repeat_end
	script_end

AnimScript_2692d:
	set_value wSCY, $80
	set_value wd056, $00
	set_update_func Func_14000, NULL
	script_exec_arg Func_4c7b, $00
	script_delay 1
	script_exec Func_4c87
	script_delay 119
	script_exec_arg Func_4c7b, $fc
	script_delay 16
	script_exec_arg Func_4c7b, $f8
	script_delay 8
	script_exec_arg Func_4c7b, $f0
	script_delay 8
	script_exec_arg Func_4c7b, $e0
	script_delay 16
	script_exec_arg Func_4c7b, $f0
	script_delay 8
	script_exec_arg Func_4c7b, $f8
	script_delay 8
	script_exec_arg Func_4c7b, $fc
	script_delay 16
	script_exec_arg Func_4c7b, $00
	set_value wSCY, $00
	set_value wd056, $00
	script_end

AnimScript_2697c:
	frame  1, $58b8
	frame  6, $52c4
	frame  6, $52e4
	frame  6, $5304
	frame  6, $5324
	frame  6, $52c4
	frame  6, $52e4
	frame  4, $535c
	frame  6, $5344
	frame  6, $53f4
	frame  6, $52c4
	frame  6, $52e4
	frame  6, $5304
	frame  6, $5324
	frame  1, $55cc
	frame  1, $5564
	frame  6, $52c4
	frame  6, $52e4
	frame  6, $5304
	frame  6, $5324
	frame  6, $52c4
	frame  6, $52e4
	frame  6, $5304
	frame  6, $5324
	play_sfx SFX_08
	frame  6, $55cc
	frame  4, $5564
	frame  4, $55cc
	frame  3, $54b4
	frame  3, $55cc
	frame  3, $546c
	frame  3, $55cc
	frame  3, $5484
	frame  4, $55cc
	frame  5, $549c
	frame  6, $55cc
	frame  7, $54b4
	frame  8, $55cc
	frame  8, $54b4
	frame  8, $55cc
	script_repeat 17
	frame  2, $546c
	frame  3, $5484
	frame  2, $549c
	frame  3, $54b4
	script_repeat_end
	frame  4, $546c
	frame  5, $5484
	frame  6, $549c
	frame  7, $54b4
	frame 16, $546c
	frame 128, $54b4
	frame 128, $54b4
	frame  4, $5564
	frame 16, $54b4
	frame  4, $5564
	frame 32, $54b4
	frame  6, $5564
	frame  4, $54b4
	frame 96, $5564
	frame  6, $557c
	frame 16, $53f4
	frame  6, $557c
	frame 48, $53f4
	script_repeat 11
	play_sfx SFX_SWALLOW
	frame  8, $54cc
	frame  8, $540c
	script_repeat_end
	script_repeat 11
	play_sfx SFX_17
	frame  6, $550c
	frame  6, $552c
	script_repeat_end
	frame  2, $5564
	script_repeat 10
	frame  6, $53b4
	frame  2, $53b4
	frame  6, $53d4
	frame  2, $53d4
	script_repeat_end
	script_end

AnimScript_26a67:
	frame 10, $58b8
	frame 10, $5604
	frame  8, $5604
	frame  4, $5604
	script_end

AnimScript_26a74:
	frame 10, $58b8
	frame 10, $5864
	frame  6, $5864
	frame  4, $5864
	script_end

AnimScript_26a81:
	frame  1, $58b8
	frame  6, $52c4
	frame  6, $52e4
	frame  6, $5304
	frame  6, $5324
	frame  6, $52c4
	frame  6, $52e4
	frame  4, $535c
	frame  6, $5344
	frame  6, $5344
	frame  6, $5344
	frame  6, $5344
	frame  6, $5344
	frame  6, $5344
	frame  4, $535c
	frame  6, $535c
	frame 16, $535c
	frame  6, $535c
	frame 16, $535c
	frame 16, $535c
	frame 16, $535c
	frame  6, $537c
	frame 48, $537c
	frame 16, $5394
	frame 16, $53b4
	frame  3, $5394
	play_sfx SFX_23
	frame  6, $537c
	frame  6, $535c
	frame  6, $537c
	frame 48, $5394
	frame  8, $5394
	script_repeat 4
	play_sfx SFX_JUMP
	frame  6, $5784
	frame  6, $57a8
	frame  6, $57cc
	play_sfx SFX_JUMP
	frame  6, $57f0
	frame  6, $5814
	frame  6, $5838
	script_repeat_end
	script_repeat 3
	play_sfx SFX_JUMP
	frame  4, $5784
	frame  4, $57a8
	frame  4, $57cc
	play_sfx SFX_JUMP
	frame  4, $57f0
	frame  4, $5814
	frame  4, $5838
	script_repeat_end
	play_sfx SFX_JUMP
	frame  4, $53b4
	frame  4, $53b4
	frame  8, $535c
	frame  6, $5344
	play_sfx SFX_23
	frame  4, $537c
	frame 128, $537c
	frame 128, $537c
	frame 128, $537c
	frame 128, $537c
	script_repeat 4
	play_sfx SFX_SWALLOW
	frame  6, $573c
	frame  6, $5758
	play_sfx SFX_SWALLOW
	frame  6, $573c
	frame  6, $5758
	frame 40, $573c
	script_repeat_end
	play_sfx SFX_02
	frame 160, $560c
	frame 128, $560c
	frame 128, $560c
	script_repeat 11
	frame  8, $56d4
	frame  8, $56f4
	frame  8, $5714
	script_repeat_end
	play_sfx SFX_02
	frame 16, $560c
	frame  6, $53d4
	frame 96, $565c
	script_repeat 5
	frame 13, $562c
	frame  8, $562c
	frame 11, $565c
	frame  8, $565c
	frame 13, $5644
	frame  8, $5644
	frame 11, $565c
	frame  8, $565c
	script_repeat_end
	script_end

AnimScript_26b9b:
	frame 10, $5674
	frame  8, $567c
	frame 10, $5684
	frame  8, $567c
	frame 10, $5674
	frame  2, $567c
	frame 48, $568c
	frame 16, $5694
	frame  6, $568c
	frame 16, $569c
	frame  6, $568c
	frame 48, $568c
	frame 10, $568c
	frame 128, $568c
	frame 90, $568c
	frame 10, $5674
	frame  8, $567c
	frame 10, $5684
	frame  8, $567c
	frame 10, $5674
	frame  4, $567c
	frame 128, $58b8
	frame 118, $58b8
	frame 16, $568c
	frame  8, $56a4
	frame  8, $56c4
	frame  8, $56bc
	frame  8, $568c
	script_repeat 3
	frame  6, $56a4
	frame  6, $56c4
	frame  6, $56bc
	frame  6, $568c
	script_repeat_end
	frame 128, $5734
	frame 128, $5734
	frame 128, $568c
	frame 128, $568c
	frame 16, $5774
	frame 176, $577c
	frame 32, $568c
	script_repeat 11
	frame 10, $5674
	frame  8, $567c
	frame 10, $5684
	frame  8, $567c
	script_repeat_end
	script_end

AnimScript_26c23:
	frame  0, $5884

AnimScript_26c26:
	set_scripts AnimScript_26c23, MotionScript_32ed4

AnimScript_26c2b:
	set_scripts AnimScript_26c23, MotionScript_32ee3

AnimScript_26c30:
	set_update_func Func_14200, AnimScript_26c3e
.loop
	frame 40, $589c
	frame 40, $58a4
	jump_abs .loop

AnimScript_26c3e:
	play_sfx SFX_GAME_START
	jump_if_equal wd3cf, $01, .script_26c8a
	set_motion_script MotionScript_32f58
	frame 40, $589c
	frame 40, $58a4
	frame 44, $589c
	frame  4, $58a4
	play_sfx SFX_PUFF
	frame  7, $5bad
	frame 15, $589c
	frame  4, $58a4
	play_sfx SFX_PUFF
	frame  7, $5bad
	frame 10, $58a4
	play_sfx SFX_08
	frame 60, $58b0
	frame  8, $58b9
	script_repeat 4
	frame  7, $58c1
	frame  5, $58c9
	frame  7, $58d1
	frame  5, $58c9
	script_repeat_end
	script_end
.script_26c8a
	play_sfx SFX_19
	set_motion_script MotionScript_32faa
	script_repeat 2
	frame 35, $589c
	frame 35, $58a4
	script_repeat_end
	frame 10, $589c
	play_sfx SFX_DAMAGE
.script_26ca3
	frame  4, $5be1
	create_object AnimScript_264fa, MotionScript_3082f, Data_3425
	jump_rel .script_26ca3

AnimScript_26caf:
	set_update_func Func_14200, AnimScript_26cbc
.loop
	frame 40, $58b8
	frame 40, $58ac
	jump_rel .loop

AnimScript_26cbc:
	jump_if_equal wd3cf, $00, .loop
	script_end
.loop
	script_repeat 2
	frame 20, $58b8
	frame 20, $58ac
	script_repeat_end
	script_end

AnimScript_26ccd:
	frame 10, $587c
	frame 50, $5884
	frame 120, $5894
	frame  5, $5884
	frame  5, $588c
	script_delay 150
	set_value wd3d0, $01
	set_flags hKirbyFlags6, $ff, $80
	script_end

AnimScript_26ce8:
	frame 10, $587c
	frame 10, $5884
	frame  0, $587c

AnimScript_26cf1:
	frame  2, $5884
	frame 26, $588c
	set_value wd3d0, $01
	set_flags hKirbyFlags6, $80, $00
	frame  0, $588c

AnimScript_26d03:
.loop
	frame  6, $67b9
	frame  6, $67d1
	frame  6, $67e9
	frame  6, $6801
	jump_rel .loop

AnimScript_26d11:
	frame  2, $67b9
	frame  2, $67d1
	frame  2, $67e9
	frame  2, $6801
	jump_abs AnimScript_26d11

AnimScript_26d20:
.loop
	frame 16, $67b9
	frame 16, $67d1
	frame 16, $67e9
	frame 16, $6801
	jump_rel .loop
; 0x26d2e

SECTION "Bank 9@6d67", ROMX[$6d67], BANK[$9]

AnimScript_26d67:
	frame  0, $64a9

AnimScript_26d6a:
	frame 72, $6879
	script_repeat 2
	frame  1, $67b9
	frame  1, $6879
	script_repeat_end
	frame 40, $67b9
	frame  8, $67d1
	frame  8, $67e9
	frame  8, $6801
	script_repeat 3
	frame  3, $67b9
	frame  3, $67d1
	frame  3, $67e9
	frame  3, $6801
	script_repeat_end
	script_repeat 6
	frame  1, $67b9
	frame  1, $67d1
	frame  1, $67e9
	frame  1, $6801
	script_repeat_end
	play_sfx SFX_BOSS_DEFEAT
	script_repeat 6
	frame  2, $6879
	frame  1, $6469
	frame  1, $6429
	script_repeat_end
	script_repeat 3
	frame  8, $6469
	frame  8, $6429
	script_repeat_end
	frame  0, $6469

AnimScript_26dbc:
.script_26dbc
	script_exec Func_495c
	branch_kirby_pos .script_26dc6, .script_26dd9
.script_26dc6
	jumptable wd3bd
	dw .script_26dec
	dw .script_26dec
	dw .script_26e04
	dw .script_26e04
	dw .script_26e04
	dw .script_26e04
	dw .script_26e04
	dw .script_26dec

.script_26dd9
	jumptable wd3bd
	dw .script_26df4
	dw .script_26df4
	dw .script_26dfc
	dw .script_26dfc
	dw .script_26dfc
	dw .script_26dfc
	dw .script_26dfc
	dw .script_26df4

.script_26dec
	frame 20, $6529
	frame 20, $6569
	jump_rel .script_26dbc
.script_26df4
	frame 20, $65a9
	frame 20, $65e9
	jump_rel .script_26dbc
.script_26dfc
	frame 20, $64a9
	frame 20, $64e9
	jump_rel .script_26dbc
.script_26e04
	frame 20, $6429
	frame 20, $6469
	jump_rel .script_26dbc

AnimScript_26e0c:
.script_26e0c
	branch_kirby_pos .script_26e13, .script_26e1b
.script_26e13
	frame  2, $6429
	frame  2, $6469
	jump_rel .script_26e0c
.script_26e1b
	frame  2, $64a9
	frame  2, $64e9
	jump_rel .script_26e0c

AnimScript_26e23:
.script_26e23
	branch_kirby_pos .script_26e2a, .script_26e32
.script_26e2a
	frame  8, $6429
	frame  8, $6469
	jump_rel .script_26e23
.script_26e32
	frame  8, $64a9
	frame  8, $64e9
	jump_rel .script_26e23

AnimScript_26e3a:
.loop
	frame  8, $6629
	frame  8, $6669
	jump_rel .loop

AnimScript_26e42:
.loop
	frame  8, $66a9
	frame  8, $66e9
	jump_rel .loop
; 0x26e4a

SECTION "Bank 9@6ef6", ROMX[$6ef6], BANK[$9]

AnimScript_26ef6:
	frame  0, $58b8

AnimScript_26ef9:
	create_object AnimScript_26fbd, MotionScript_3365a, StandardEnemyProperties
	frame  4, $58b8
	frame 10, $44a0
	frame  4, $58b8
	frame  5, $44a0
	frame 12, $44a8
	script_repeat 9
	frame  6, $44c0
	frame  6, $44b8
	script_repeat_end
	frame  4, $44b8
	frame  5, $44d8
	set_pal_dark
	frame  5, $44d8
	set_pal_light
	frame  0, $58b8

AnimScript_26f2a:
	create_object AnimScript_26fbd, MotionScript_33670, StandardEnemyProperties
	frame  4, $58b8
	frame 10, $44a0
	frame  4, $58b8
	frame  5, $44a0
	frame 12, $44a8
	script_repeat 9
	frame  6, $44d0
	frame  6, $44c8
	script_repeat_end
	frame  4, $44c8
	frame  5, $44d8
	set_pal_dark
	frame  5, $44d8
	set_pal_light
	frame  0, $58b8

AnimScript_26f5b:
	create_object AnimScript_26fbd, MotionScript_33670, StandardEnemyProperties
	frame  4, $58b8
	frame 10, $44a0
	frame  4, $58b8
	frame  5, $44a0
	frame 12, $44e0
	script_repeat 9
	frame  6, $4500
	frame  6, $4508
	script_repeat_end
	frame  4, $4508
	frame  5, $4510
	set_pal_dark
	frame  5, $4510
	set_pal_light
	frame  0, $58b8

AnimScript_26f8c:
	create_object AnimScript_26fbd, MotionScript_3365a, StandardEnemyProperties
	frame  4, $58b8
	frame 10, $44a0
	frame  4, $58b8
	frame  5, $44a0
	frame 12, $44e0
	script_repeat 9
	frame  6, $44f0
	frame  6, $44f8
	script_repeat_end
	frame  4, $44f8
	frame  5, $4510
	set_pal_dark
	frame  5, $4510
	set_pal_light
	frame  0, $58b8

AnimScript_26fbd:
	play_sfx SFX_30
	frame  0, $4494

AnimScript_26fc4:
	create_object AnimScript_2703d, MotionScript_33781, StandardEnemyProperties
	jump_abs AnimScript_26fe9
	create_object AnimScript_2703d, MotionScript_33781, StandardEnemyProperties
	jump_abs AnimScript_26fe9
AnimScript_26fd8:
	create_object AnimScript_2703d, MotionScript_3378a, StandardEnemyProperties
	jump_abs AnimScript_26fe9
AnimScript_26fe2:
	create_object AnimScript_2703d, MotionScript_33793, StandardEnemyProperties
AnimScript_26fe9:
	script_repeat 5
	frame  4, $44b8
	frame  4, $44c0
	script_repeat_end
	frame  4, $44b8
	frame  4, $44c0
	frame 20, $44b0
	frame 10, $44b8
	create_object AnimScript_27027, MotionScript_3376c, GordoProperties
	play_sfx SFX_JUMP
	frame 10, $44b8
	frame 20, $44b0
	script_repeat 5
	frame  4, $44b8
	frame  4, $44c0
	script_repeat_end
	frame  5, $44d8
	set_pal_dark
	frame  5, $44d8
	set_pal_light
	frame  0, $58b8

AnimScript_27027:
	position_offset -16, 0
	jump_abs AnimScript_24572

AnimScript_2702d:
.loop
	frame  8, $44d0
	frame  8, $44c8
	jump_rel .loop

AnimScript_27035:
.loop
	frame  8, $44f0
	frame  8, $44f8
	jump_rel .loop

AnimScript_2703d:
	position_offset -16, 0
	frame 80, $4494
	play_sfx SFX_JUMP
	frame  0, $4494
; 0x2704a

SECTION "Bank 9@70a0", ROMX[$70a0], BANK[$9]

AnimScript_270a0:
	script_delay 1
	play_sfx SFX_NONE
	branch_kirby_pos .script_270ad, .script_270b5
.script_270ad
	frame  8, $47c8
	frame  8, $47f8
	jump_rel .script_270ad
.script_270b5
	frame  8, $47e0
	frame  8, $4810
	jump_rel .script_270b5

AnimScript_270bd:
.loop
	frame  4, $4828
	frame 12, $4860
	frame 10, $4828
	jump_rel .loop

AnimScript_270c8:
.loop
	frame  4, $4844
	frame 12, $487c
	frame 10, $4844
	jump_rel .loop

AnimScript_270d3:
.loop
	frame  4, $49a0
	frame 12, $49e8
	frame 10, $49a0
	jump_rel .loop

AnimScript_270de:
.loop
	frame  4, $49c4
	frame 12, $4a0c
	frame 10, $49c4
	jump_rel .loop

AnimScript_270e9:
	frame  6, $49a0
	frame  0, $49a0

AnimScript_270ef:
	frame  6, $49c4
	frame  0, $4a0c

AnimScript_270f5:
	play_sfx SFX_23
	set_motion_script MotionScript_337bb.script_33817
	frame  0, $48c8

AnimScript_27101:
	play_sfx SFX_23
	set_motion_script MotionScript_337bb.script_33835
	frame  0, $48e0

AnimScript_2710d:
	frame 16, $48b8
	play_sfx SFX_DAMAGE
	frame 64, $4898
	create_object AnimScript_27459, MotionScript_33a74, Properties_3648
	create_object AnimScript_27459, MotionScript_33a81, Properties_3648
	frame  0, $48b8

AnimScript_27128:
	play_sfx SFX_34
	set_motion_script MotionScript_337bb.script_3394a
	frame 15, $4968
	set_value wd3d2, $00
.script_27138
	frame  1, $4968
	script_exec Func_4b19
	jump_if_equal wd3d2, $ff, .script_2714f
	jump_if_equal wd3d2, $32, .script_27187
	inc_value wd3d2
	jump_rel .script_27138
.script_2714f
	script_exec Func_4bad
	set_value wd3d2, $00
.script_27156
	frame  1, $4968
	jump_if_equal wd3d2, $ff, .script_2716a
	jump_if_equal wd3d2, $32, .script_27187
	inc_value wd3d2
	jump_rel .script_27156
.script_2716a
	play_sfx SFX_35
	play_sfx SFX_02
	set_motion_script MotionScript_30008
	frame  4, $48f8
	frame 48, $4928
	script_exec Func_4b5a
	play_sfx SFX_PUFF
	frame 56, $4968
.script_27187
	script_delay 20
	set_object_properties Properties_3604
	set_scripts AnimScript_270a0, MotionScript_337bb.script_33978

AnimScript_27193:
	play_sfx SFX_34
	set_motion_script MotionScript_337bb.script_33961
	frame 15, $4984
	set_value wd3d2, $00
.script_271a3
	frame  1, $4984
	script_exec Func_4b27
	jump_if_equal wd3d2, $ff, .script_271ba
	jump_if_equal wd3d2, $32, .script_271f2
	inc_value wd3d2
	jump_rel .script_271a3
.script_271ba
	script_exec Func_4bad
	set_value wd3d2, $00
.script_271c1
	frame  1, $4984
	jump_if_equal wd3d2, $ff, .script_271d5
	jump_if_equal wd3d2, $32, .script_271f2
	inc_value wd3d2
	jump_rel .script_271c1
.script_271d5
	play_sfx SFX_35
	play_sfx SFX_02
	set_motion_script MotionScript_30008
	frame  4, $4910
	frame 48, $4948
	script_exec Func_4b5f
	play_sfx SFX_PUFF
	frame 56, $4984
.script_271f2
	script_delay 20
	set_object_properties Properties_3604
	set_scripts AnimScript_270a0, MotionScript_337bb.script_33978

AnimScript_271fe:
	set_value wd3cd, $00
	jumptable wd3bd
	dw .script_27216
	dw .script_2723f
	dw .script_2720f
	dw .script_2729c
	dw .script_27273

.script_2720f
	branch_kirby_pos .script_2723f, .script_2729c
.script_27216
	set_motion_script MotionScript_339ea
	create_object AnimScript_27338, MotionScript_339ea, Properties_3636
	frame 16, $4a30
	frame 10, $4828
	create_object AnimScript_27459, MotionScript_33a5a, Properties_3648
	frame 24, $4a70
	frame 10, $4828
	frame 16, $4a30
	set_motion_script MotionScript_337bb.script_339d1
	script_delay 10
.script_2723f
	set_object_properties Properties_360d
	set_motion_script MotionScript_337bb.script_338bf
	frame 16, $49e8
	set_object_properties Properties_3604
	create_object AnimScript_27338, MotionScript_337bb.script_338c2, Properties_3636
	frame 16, $4a30
	play_sfx SFX_28
	frame 10, $4828
	frame 24, $4a70
	frame 10, $4828
	frame 16, $4a30
.script_2726b
	frame 16, $49e8
	set_scripts .script_2726b, MotionScript_337bb.script_339d1
.script_27273
	set_motion_script MotionScript_339ea
	create_object AnimScript_273bb, MotionScript_339ea, Properties_3636
	frame 16, $4a50
	frame 10, $4844
	create_object AnimScript_27459, MotionScript_33a67, Properties_3648
	frame 24, $4a8c
	frame 10, $4844
	frame 16, $4a50
	set_motion_script MotionScript_337bb.script_339d1
	script_delay 100
.script_2729c
	set_motion_script MotionScript_337bb.script_338bf
	frame 16, $4a0c
	create_object AnimScript_273bb, MotionScript_337bb.script_338c2, Properties_3636
	frame 16, $4a50
	play_sfx SFX_28
	frame 10, $4844
	frame 24, $4a8c
	frame 10, $4844
	frame 16, $4a50
.script_272be
	frame  8, $4a0c
	set_scripts .script_272be, MotionScript_337bb.script_339d1
; 0x272c6

SECTION "Bank 9@7338", ROMX[$7338], BANK[$9]

AnimScript_27338:
	create_object AnimScript_2743e, MotionScript_33a8e, Properties_3628
	frame 16, $4aa8
	create_object AnimScript_27442, MotionScript_33a94, Properties_3628
	frame  2, $4ab0
	create_object AnimScript_27442, MotionScript_33a9a, Properties_3628
	frame  2, $4ab8
	create_object AnimScript_27442, MotionScript_33aa0, Properties_3628
	frame  2, $4ac0
	create_object AnimScript_27442, MotionScript_33aa6, Properties_3628
	frame  2, $4ac8
	create_object AnimScript_27442, MotionScript_33aac, Properties_3628
	frame  2, $4ad0
	create_object AnimScript_27446, MotionScript_33ab2, Properties_362f
	frame 24, $4ad8
	create_object AnimScript_27442, MotionScript_33aac, Properties_3628
	frame  2, $4ad0
	create_object AnimScript_27442, MotionScript_33aa6, Properties_3628
	frame  2, $4ac8
	create_object AnimScript_27442, MotionScript_33aa0, Properties_3628
	frame  2, $4ac0
	create_object AnimScript_27442, MotionScript_33a9a, Properties_3628
	frame  2, $4ab8
	create_object AnimScript_27442, MotionScript_33a94, Properties_3628
	frame  2, $4ab0
	create_object AnimScript_2743e, MotionScript_33a8e, Properties_3628
	frame 16, $4aa8
	script_end

AnimScript_273bb:
	create_object AnimScript_2743e, MotionScript_33aa0, Properties_3628
	frame 16, $4ac0
	create_object AnimScript_27442, MotionScript_33a9a, Properties_3628
	frame  2, $4ab8
	create_object AnimScript_27442, MotionScript_33a94, Properties_3628
	frame  2, $4ab0
	create_object AnimScript_27442, MotionScript_33a8e, Properties_3628
	frame  2, $4aa8
	create_object AnimScript_27442, MotionScript_33ab8, Properties_3628
	frame  2, $4ae0
	create_object AnimScript_27442, MotionScript_33abe, Properties_3628
	frame  2, $4ae8
	create_object AnimScript_27446, MotionScript_33ac4, Properties_362f
	frame 24, $4af0
	create_object AnimScript_27442, MotionScript_33abe, Properties_3628
	frame  2, $4ae8
	create_object AnimScript_27442, MotionScript_33ab8, Properties_3628
	frame  2, $4ae0
	create_object AnimScript_27442, MotionScript_33a8e, Properties_3628
	frame  2, $4aa8
	create_object AnimScript_27442, MotionScript_33a94, Properties_3628
	frame  2, $4ab0
	create_object AnimScript_27442, MotionScript_33a9a, Properties_3628
	frame  2, $4ab8
	create_object AnimScript_2743e, MotionScript_33aa0, Properties_3628
	frame 16, $4ac0
	script_end

AnimScript_2743e:
	frame  8, $58b8
	script_end

AnimScript_27442:
	frame  2, $58b8
	script_end

AnimScript_27446:
	frame  6, $58b8
	script_end

AnimScript_2744a:
	frame  0, $58b8
; 0x2744d

SECTION "Bank 9@7459", ROMX[$7459], BANK[$9]

AnimScript_27459:
	play_sfx SFX_23
.loop
	frame  4, $5c91
	frame  4, $5c9d
	frame  4, $5ca9
	frame  4, $5cb5
	frame  4, $5cc1
	frame  4, $5ccd
	frame  4, $5cd9
	frame  4, $5ce5
	jump_rel .loop

AnimScript_27477:
	set_object_properties Properties_363f
AnimScript_2747c:
	script_repeat 2
	frame 10, $5e45
	frame 10, $5e4d
	script_repeat_end
	script_repeat 4
	frame  6, $5e45
	frame  6, $5e4d
	script_repeat_end
	jump_abs AnimScript_2747c
; 0x27491
