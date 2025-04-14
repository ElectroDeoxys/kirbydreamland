AnimScript_24000:
	frame  0, OAM_2d8b8
; 0x24003

SECTION "Bank 9@43be", ROMX[$43be], BANK[$9]

AnimScript_243be:
	play_sfx SFX_EXPLOSION
	script_repeat 2
	frame  2, OAM_2dd39
	frame  2, OAM_2dd51
	frame  2, OAM_2dd69
	frame  2, OAM_2dd81
	frame  2, OAM_2dd99
	frame  2, OAM_2ddb1
	frame  2, OAM_2ddc9
	frame  2, OAM_2dde1
	script_repeat_end
	script_end
; 0x243de

SECTION "Bank 9@43f6", ROMX[$43f6], BANK[$9]

AnimScript_243f6:
	frame  8, OAM_2dc25
	frame  8, OAM_2dc2d
	frame  8, OAM_2dc3d
	frame  8, OAM_2dc45
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
	frame 10, OAM_2de45
	frame 10, OAM_2de4d
	script_repeat_end
	script_repeat 4
	frame  6, OAM_2de45
	frame  6, OAM_2de4d
	script_repeat_end
	jump_abs AnimScript_24572

AnimScript_24587:
	frame 16, OAM_2de55
	frame 16, OAM_2de5d
	jump_abs AnimScript_24587
; 0x24590

SECTION "Bank 9@45ae", ROMX[$45ae], BANK[$9]

AnimScript_245ae:
.loop
	frame 10, OAM_2de55
	frame 10, OAM_2de5d
	frame 10, OAM_2de55
	frame 10, OAM_2de5d
	frame 20, OAM_2de65
	frame 10, OAM_2de6d
	frame 10, OAM_2de65
	frame 10, OAM_2de6d
	frame 10, OAM_2de55
	jump_abs .loop

AnimScript_245cc:
.loop
	frame 64, OAM_2de55
	frame  8, OAM_2de5d
	frame  8, OAM_2de6d
	frame 64, OAM_2de65
	frame  8, OAM_2de6d
	frame  8, OAM_2de5d
	jump_abs .loop

AnimScript_245e1:
	frame 16, OAM_2de75
	frame 16, OAM_2de7d
	jump_abs AnimScript_245e1

AnimScript_245ea:
	frame 16, OAM_2de9d
	frame 16, OAM_2dea5
	jump_abs AnimScript_245ea
; 0x245f3

SECTION "Bank 9@461d", ROMX[$461d], BANK[$9]

AnimScript_2461d:
	frame 10, OAM_2de75
	frame 10, OAM_2de7d
	frame 10, OAM_2de75
	frame 10, OAM_2de7d
	frame 20, OAM_2de9d
	frame 10, OAM_2dea5
	frame 10, OAM_2de9d
	frame 10, OAM_2dea5
	frame 10, OAM_2de75
	jump_abs AnimScript_2461d
; 0x2463b

SECTION "Bank 9@463b", ROMX[$463b], BANK[$9]

AnimScript_2463b:
	frame  8, OAM_2decd
	frame  0, OAM_2dec5
; 0x24641

SECTION "Bank 9@4647", ROMX[$4647], BANK[$9]

AnimScript_24647:
.loop
	frame 10, OAM_2dec5
	frame 10, OAM_2decd
	jump_abs .loop

AnimScript_24650:
	frame 10, OAM_2ded5
	frame 10, OAM_2dedd
	jump_abs AnimScript_24650

AnimScript_24659:
.loop
	frame  5, OAM_2dec5
	frame  5, OAM_2decd
	jump_abs .loop

AnimScript_24662:
.loop
	frame  5, OAM_2ded5
	frame  5, OAM_2dedd
	jump_abs .loop
; 0x2466b

SECTION "Bank 9@4671", ROMX[$4671], BANK[$9]

AnimScript_24671:
	frame 11, OAM_2def5
	create_object AnimScript_249f0, MotionScript_3030e, ShotzoBulletProperties
	set_motion_script MotionScript_302a4
	frame 11, OAM_2def5
	jump_abs AnimScript_24671

AnimScript_24686:
	create_object AnimScript_249f0, MotionScript_3030b, ShotzoBulletProperties
	set_motion_script MotionScript_302bc
	frame  8, OAM_2df05
	create_object AnimScript_249f0, MotionScript_30d95, ShotzoBulletProperties
	set_motion_script MotionScript_302b0
	frame  8, OAM_2defd
	create_object AnimScript_249f0, MotionScript_3030e, ShotzoBulletProperties
	set_motion_script MotionScript_302a4
	frame  8, OAM_2def5
	create_object AnimScript_249f0, MotionScript_30311, ShotzoBulletProperties
	set_motion_script MotionScript_30298
	frame  8, OAM_2deed
	create_object AnimScript_249f0, MotionScript_30308, ShotzoBulletProperties
	set_motion_script MotionScript_3028c
	frame  8, OAM_2dee5
	create_object AnimScript_249f0, MotionScript_30311, ShotzoBulletProperties
	set_motion_script MotionScript_30298
	frame  8, OAM_2deed
	create_object AnimScript_249f0, MotionScript_3030e, ShotzoBulletProperties
	set_motion_script MotionScript_302a4
	frame  8, OAM_2def5
	create_object AnimScript_249f0, MotionScript_30d95, ShotzoBulletProperties
	set_motion_script MotionScript_302b0
	frame  8, OAM_2defd
	jump_abs AnimScript_24686

AnimScript_24701:
	position_offset 0, 8
.loop
	set_motion_script MotionScript_31e72
	frame 100, OAM_2def5
	frame 10, OAM_2defd
	frame  8, OAM_2df05
	create_object AnimScript_249f0, MotionScript_3030b, ShotzoBulletProperties
	frame  5, OAM_2df05
	frame  5, OAM_2defd
	create_object AnimScript_249f0, MotionScript_30d95, ShotzoBulletProperties
	frame  5, OAM_2defd
	frame  5, OAM_2def5
	create_object AnimScript_249f0, MotionScript_3030e, ShotzoBulletProperties
	frame  5, OAM_2def5
	frame  5, OAM_2deed
	create_object AnimScript_249f0, MotionScript_30311, ShotzoBulletProperties
	frame  5, OAM_2deed
	frame  5, OAM_2dee5
	create_object AnimScript_249f0, MotionScript_30308, ShotzoBulletProperties
	frame  8, OAM_2dee5
	frame 10, OAM_2deed
	jump_abs .loop
; 0x24756

SECTION "Bank 9@48d2", ROMX[$48d2], BANK[$9]

AnimScript_248d2:
	frame  4, OAM_2d8d1
	frame  4, OAM_2db81
	frame  4, OAM_2db89
	frame  4, OAM_2dba1
	frame  4, OAM_2db99
	frame  4, OAM_2d901
	script_ret

AnimScript_248e5:
	frame  4, OAM_2d901
	frame  4, OAM_2db99
	frame  4, OAM_2dba1
	frame  4, OAM_2db89
	frame  4, OAM_2db81
	frame  4, OAM_2d8d1
	script_ret
; 0x248f8

SECTION "Bank 9@490b", ROMX[$490b], BANK[$9]

AnimScript_2490b:
	frame  0, OAM_2dc1d

AnimScript_2490e:
	script_exec Func_4ad6
	set_update_func ObjFunc_CountdownToExplosion, 256
	frame 162, OAM_2dc4d
.loop
	frame  2, OAM_2dc55
	frame  2, OAM_2dc4d
	jump_rel .loop
; 0x24921

SECTION "Bank 9@4924", ROMX[$4924], BANK[$9]

AnimScript_24924:
	script_exec Func_4ad6
	frame  0, OAM_2dc5d
; 0x2492a

SECTION "Bank 9@492d", ROMX[$492d], BANK[$9]

AnimScript_2492d:
	script_exec Func_4ad6
	frame  0, OAM_2dc65
; 0x24933

SECTION "Bank 9@4936", ROMX[$4936], BANK[$9]

AnimScript_24936:
	script_exec Func_4ad6
	frame  0, OAM_2dc6d
; 0x2493c

SECTION "Bank 9@493f", ROMX[$493f], BANK[$9]

AnimScript_2493f:
	script_exec Func_4ad6
	frame  0, OAM_2dc75

AnimScript_24945:
	frame  0, OAM_2dc7d

AnimScript_24948:
	script_exec Func_4ad6
	frame  0, OAM_2dc7d

AnimScript_2494e:
	frame  0, OAM_2dc81

AnimScript_24951:
	frame 16, OAM_2dc89
	set_pal_dark
	frame  8, OAM_2dc89
	set_pal_light
	jump_abs AnimScript_24951

AnimScript_24960:
	script_exec Func_4ad6
	frame 16, OAM_2dc89
	set_pal_dark
	frame  8, OAM_2dc89
	set_pal_light
	jump_abs AnimScript_24960

AnimScript_24972:
.loop
	frame 20, OAM_2dc25
	frame 20, OAM_2dc2d
	frame 20, OAM_2dc3d
	frame 20, OAM_2dc45
	jump_abs .loop

AnimScript_24981:
	jump_if_equal wStage, $04, .script_249a6
	play_music MUSIC_SPARKLING_STAR
.script_2498b
	frame  4, OAM_2dc91
	frame  4, OAM_2dc9d
	frame  4, OAM_2dca9
	frame  4, OAM_2dcb5
	frame  4, OAM_2dcc1
	frame  4, OAM_2dccd
	frame  4, OAM_2dcd9
	frame  4, OAM_2dce5
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
	frame 120, OAM_2d8b8
	jump_rel .script_249d4
.script_249c7
	frame 120, OAM_2d8b8
	jump_rel .script_249d4
.script_249cc
	frame 120, OAM_2d8b8
	jump_rel .script_249d4
.script_249d1
	frame 120, OAM_2d8b8
.script_249d4
	set_flags hKirbyFlags5, $00, $04
	script_end

AnimScript_249da:
	play_sfx SFX_18
	frame  1, OAM_2de01
	frame  1, OAM_2de05
	frame  1, OAM_2de09
	frame  1, OAM_2de0d
	jump_abs AnimScript_249da
; 0x249ed

SECTION "Bank 9@49f0", ROMX[$49f0], BANK[$9]

AnimScript_249f0:
	play_sfx SFX_17
	script_repeat 30
	frame  1, OAM_2de2d
	frame  1, OAM_2de31
	frame  1, OAM_2de35
	frame  1, OAM_2de39
	frame  1, OAM_2de3d
	frame  1, OAM_2de41
	script_repeat_end
	frame  4, OAM_2dc1d
	frame  4, OAM_2dc19
	script_end

AnimScript_24a10:
	frame  4, OAM_2dd21
	frame  4, OAM_2dd29
	frame  4, OAM_2dd31
	script_end
; 0x24a1a

SECTION "Bank 9@4b00", ROMX[$4b00], BANK[$9]

AnimScript_24b00:
	set_value wDisableBumpStars, $01
	frame 24, OAM_2dc1d
	set_value wDisableBumpStars, $00
	script_end
; 0x24b0c

SECTION "Bank 9@4c2d", ROMX[$4c2d], BANK[$9]

AnimScript_24c2d:
	frame 12, OAM_2d8f1
	frame  8, OAM_2d8f9
	frame 12, OAM_2d901
	frame  8, OAM_2d8f9
	jump_abs AnimScript_24c2d

AnimScript_24c3c:
	frame  8, OAM_2dba9
	frame  5, OAM_2d8e9
	frame  8, OAM_2dbad
	frame  5, OAM_2d8e9
	jump_abs AnimScript_24c3c

AnimScript_24c4b:
	frame  8, OAM_2d8d1
	frame  7, OAM_2db81
	frame  6, OAM_2db89
	frame  5, OAM_2dba1
	frame  4, OAM_2db99
	frame  4, OAM_2d901
	frame 47, OAM_2d8e1
	jump_abs AnimScript_24c4b

AnimScript_24c63:
	frame 20, OAM_2d961
	frame 30, OAM_2d949
	jump_abs AnimScript_24c63

AnimScript_24c6c:
.loop
	script_repeat 2
	frame  8, OAM_2de55
	frame  8, OAM_2de5d
	script_repeat_end
	frame 48, OAM_2de55
	jump_abs .loop
; 0x24c7b

SECTION "Bank 9@4ccf", ROMX[$4ccf], BANK[$9]

AnimScript_24ccf:
	frame  0, OAM_2dee5

AnimScript_24cd2:
	frame  0, OAM_2deed

AnimScript_24cd5:
.loop
	frame 12, OAM_2c1fc
	frame 24, OAM_2c204
	jump_abs .loop

AnimScript_24cde:
.loop
	frame 40, OAM_2c1f4
	script_repeat 4
	frame  4, OAM_2c1fc
	frame  4, OAM_2c204
	script_repeat_end
	frame  8, OAM_2c1fc
	script_repeat 4
	frame  4, OAM_2c1fc
	frame  4, OAM_2c204
	script_repeat_end
	frame  8, OAM_2c1fc
	frame 24, OAM_2c1fc
	frame  8, OAM_2c204
	frame  8, OAM_2c1fc
	jump_abs .loop

AnimScript_24d05:
	create_object AnimScript_24d16, MotionScript_30008, Data_3421
	play_sfx SFX_30
	frame  1, OAM_2c1cc
	script_exec Func_4afb
AnimScript_24d16:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	branch_kirby_pos .script_24d25, .script_24d40
.script_24d25
	set_motion_script MotionScript_30edb
	script_repeat 6
	frame  4, OAM_2c1a4
	frame  4, OAM_2c19c
	script_repeat_end
	script_exec ScriptFunc_ResetImmuneFlag
	set_object_properties CappyProperties
	set_scripts AnimScript_24d5b, MotionScript_30f03
.script_24d40
	set_motion_script MotionScript_30eef
	script_repeat 6
	frame  4, OAM_2c1b4
	frame  4, OAM_2c1ac
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
	frame 17, OAM_2c19c
	frame 17, OAM_2c1a4
	script_repeat_end
	script_ret

AnimScript_24d75:
	script_repeat 6
	frame 17, OAM_2c1ac
	frame 17, OAM_2c1b4
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
	frame 17, OAM_2c19c
	frame 17, OAM_2c1a4
	script_repeat_end
	script_ret

AnimScript_24d99:
	script_repeat 3
	frame 17, OAM_2c1ac
	frame 17, OAM_2c1b4
	script_repeat_end
	script_ret

AnimScript_24da3:
	set_update_func Func_140c2, AnimScript_24d05
.loop
	frame 20, OAM_2c1c4
	create_object AnimScript_24dce, MotionScript_30e7b, GlunkPodProperties
	frame 20, OAM_2c1bc
	create_object AnimScript_24dce, MotionScript_30e7b, GlunkPodProperties
	jump_abs .loop

AnimScript_24dbf:
.loop
	frame 20, OAM_2c1c4
	frame 20, OAM_2c1bc
	jump_abs .loop
; 0x24dc8

SECTION "Bank 9@4dce", ROMX[$4dce], BANK[$9]

AnimScript_24dce:
	play_sfx SFX_28
	frame  0, OAM_2c1cc

AnimScript_24dd5:
.loop
	frame 10, OAM_2dec5
	frame 10, OAM_2decd
	jump_rel .loop

AnimScript_24ddd:
.loop
	frame  9, OAM_2c17c
	frame  9, OAM_2c184
	jump_rel .loop

AnimScript_24de5:
.loop
	frame  9, OAM_2c18c
	frame  9, OAM_2c194
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
	frame  3, OAM_2c224
	frame 16, OAM_2c23c
	script_repeat_end
	script_ret

AnimScript_24e5e:
	script_repeat 5
	frame  3, OAM_2c26c
	frame 16, OAM_2c284
	script_repeat_end
	script_ret

AnimScript_24e68:
	script_repeat 3
	frame  3, OAM_2c224
	frame 16, OAM_2c23c
	script_repeat_end
AnimScript_24e71:
	script_repeat 3
	frame  3, OAM_2c26c
	frame 16, OAM_2c284
	script_repeat_end
	jump_abs AnimScript_24e68

AnimScript_24e7d:
	frame  0, OAM_2c224
; 0x24e80

SECTION "Bank 9@4e88", ROMX[$4e88], BANK[$9]

AnimScript_24e88:
	branch_kirby_pos .script_24e8f, .script_24ea1
.script_24e8f
	set_motion_script MotionScript_31060
	frame 30, OAM_2c254
	set_object_properties GrizzoProperties
	set_scripts AnimScript_24e68, MotionScript_3107e
.script_24ea1
	set_motion_script MotionScript_3106f
	frame 30, OAM_2c29c
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
	frame  3, OAM_2c2d4
	frame 16, OAM_2c2b4
	script_repeat_end
	script_ret

AnimScript_24ed2:
	create_object AnimScript_24e88, MotionScript_30008, Properties_353e
	position_offset 0, -16
	jump_abs AnimScript_24f30
AnimScript_24edf:
	set_update_func Func_140c2, AnimScript_24eee
	script_repeat 5
	frame  3, OAM_2c334
	frame 16, OAM_2c354
	script_repeat_end
	script_ret

AnimScript_24eee:
	create_object AnimScript_24e88, MotionScript_30008, Properties_353e
	position_offset 0, -16
	jump_abs AnimScript_24f35
AnimScript_24efb:
	set_update_func Func_140c2, AnimScript_24f26
AnimScript_24f00:
	frame 10, OAM_2c324
AnimScript_24f03:
	frame 10, OAM_2c314
	frame 10, OAM_2c304
	frame 10, OAM_2c2f4
	frame 10, OAM_2c324
	frame 10, OAM_2c314
	frame 10, OAM_2c314
	frame 10, OAM_2c324
	frame 10, OAM_2c2f4
	frame 10, OAM_2c304
	frame 10, OAM_2c314
	frame 10, OAM_2c324
	jump_rel AnimScript_24f00

AnimScript_24f26:
	create_object AnimScript_24f40, MotionScript_310c0, Data_3559
	position_offset 0, -16
AnimScript_24f30:
	frame  1, OAM_2c17c
	jump_rel AnimScript_24f38
AnimScript_24f35:
	frame  1, OAM_2c18c
AnimScript_24f38:
	set_object_properties PoppyBrosJrProperties
	script_exec Func_4afb
AnimScript_24f40:
	script_repeat 2
	frame  2, OAM_2c1d4
	frame  2, OAM_2c1ec
	frame  2, OAM_2c1e4
	frame  2, OAM_2c1dc
	script_repeat_end
	frame  2, OAM_2c1d4
	frame  8, OAM_2c1dc
	frame  8, OAM_2c1e4
	frame  8, OAM_2c1ec
	frame  8, OAM_2c1d4
	frame 20, OAM_2c1ec
	set_object_properties Data_3550
	frame  0, OAM_2c1ec
; 0x24f69

SECTION "Bank 9@4fb7", ROMX[$4fb7], BANK[$9]

AnimScript_24fb7:
	frame  0, OAM_2c160

AnimScript_24fba:
	jump_if_equal wd3f1, $00, .script_24fc1
	script_end
.script_24fc1
	set_object_properties Data_356b
	script_exec ScriptFunc_LockScrolling
	set_value wBossHPCounter, $03
	set_value wd3c1, $01
	create_object AnimScript_2526d, MotionScript_30008, Data_3421
	frame 45, OAM_2c088
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
	frame  6, OAM_2c088
	frame  6, OAM_2c098
	frame  6, OAM_2c0a8
	frame 12, OAM_2c0b8
	frame  6, OAM_2c0a8
	frame  6, OAM_2c098
	frame  6, OAM_2c088
	script_repeat_end
	script_ret

AnimScript_25011:
	set_motion_script MotionScript_31124
	frame  6, OAM_2c088
	frame  6, OAM_2c098
	frame  6, OAM_2c0a8
	frame 25, OAM_2c0b8
	frame 68, OAM_2c088
	script_ret

AnimScript_25026:
	set_motion_script MotionScript_3115b
	frame  5, OAM_2c0c8
	frame  5, OAM_2c0f0
	frame  5, OAM_2c10c
	frame  5, OAM_2c128
	frame  5, OAM_2c144
	frame  8, OAM_2c160
	frame  3, OAM_2c144
	frame  3, OAM_2c128
	play_sfx SFX_28
	create_object AnimScript_250a0, MotionScript_3119c, Data_3574
	frame  3, OAM_2c0dc
	frame  8, OAM_2c0c8
	frame 18, OAM_2c088
	script_ret

AnimScript_25058:
	set_motion_script MotionScript_3115b
	frame  5, OAM_2c0c8
	frame  5, OAM_2c0f0
	frame  5, OAM_2c10c
	frame  5, OAM_2c128
	frame  5, OAM_2c144
	frame 40, OAM_2c160
	frame  3, OAM_2c144
	frame  3, OAM_2c128
	play_sfx SFX_28
	create_object AnimScript_250a0, MotionScript_3117f, Data_3574
	frame  3, OAM_2c0dc
	frame  8, OAM_2c0c8
	script_ret
; 0x25087

SECTION "Bank 9@50a0", ROMX[$50a0], BANK[$9]

AnimScript_250a0:
	position_offset -16, 8
	frame  0, OAM_2dc4d

AnimScript_250a6:
.script_250a6
	jump_if_equal wLevelYSection, $11, .script_250b2
	frame  1, OAM_2c000
	jump_abs .script_250a6
.script_250b2
	set_object_properties Data_3586
	set_value wBossHPCounter, $06
	set_value wd3c1, $01
	create_object AnimScript_2526d, MotionScript_30008, Data_3421
	frame 60, OAM_2c000
	script_exec Func_48a3
	set_value wd3cd, $01
	set_update_func Func_14172, Data_1c1c6
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
	frame  1, OAM_2c000
	script_repeat_end
	jump_random 25 percent + 1, .script_250dc
.script_250f8
	create_object AnimScript_25241, MotionScript_31201, Properties_34c0
	frame 20, OAM_2c000
	frame  4, OAM_2c00c
	frame  6, OAM_2c018
	frame  4, OAM_2c00c
	frame  6, OAM_2c000
	frame 20, OAM_2c000
	create_object AnimScript_251db, MotionScript_31201, Data_359d
	frame 20, OAM_2c000
	frame  4, OAM_2c00c
	frame  6, OAM_2c018
	frame  4, OAM_2c00c
	frame  6, OAM_2c000
	frame 20, OAM_2c000
	jump_random 50 percent + 1, .script_25137
	create_object AnimScript_25241, MotionScript_31201, Properties_34c0
	jump_rel .script_2513e
.script_25137
	create_object AnimScript_251db, MotionScript_31201, Data_359d
.script_2513e
	frame 20, OAM_2c000
	frame  4, OAM_2c00c
	frame  6, OAM_2c018
	frame  4, OAM_2c00c
	frame  6, OAM_2c000
	frame 10, OAM_2c000
	script_call AnimScript_2515c
	jump_random 44 percent, .script_250f8
	jump_rel .script_250dc

AnimScript_25159:
	frame  0, OAM_2c000

AnimScript_2515c:
	frame 10, OAM_2c000
	frame  3, OAM_2c00c
	frame  6, OAM_2c018
	frame  3, OAM_2c00c
	frame  4, OAM_2c000
	frame 10, OAM_2c000
	frame  3, OAM_2c00c
	frame  8, OAM_2c018
	frame  3, OAM_2c00c
	frame 10, OAM_2c000
	script_ret

SECTION "Bank 9@517b", ROMX[$517b], BANK[$9]

AnimScript_2517b:
	frame  1, OAM_2c068
	frame 10, OAM_2c078
	create_object AnimScript_251d8, MotionScript_311b9, Data_3596
	frame 14, OAM_2c078
	frame  1, OAM_2c068
	frame  1, OAM_2c058
	script_ret

SECTION "Bank 9@5192", ROMX[$5192], BANK[$9]

AnimScript_25192:
	frame  1, OAM_2c068
	frame  5, OAM_2c078
	create_object AnimScript_251d8, MotionScript_311b9, Data_3596
	frame  5, OAM_2c078
	frame  1, OAM_2c068
	frame  1, OAM_2c058
	script_ret
; 0x251a9

SECTION "Bank 9@51d8", ROMX[$51d8], BANK[$9]

AnimScript_251d8:
	frame  0, OAM_2dcf9

AnimScript_251db:
	frame  1, OAM_2c1d4
	script_repeat 3
	set_pal_dark
	script_delay 4
	set_pal_light
	script_delay 4
	script_repeat_end
	frame 42, OAM_2c1d4
	branch_kirby_pos .script_251f5, .script_2521b
.script_251f5
	frame 10, OAM_2c1ec
	frame 10, OAM_2c1e4
	frame 10, OAM_2c1dc
	frame 10, OAM_2c1d4
	frame  6, OAM_2c1ec
	frame  6, OAM_2c1e4
	frame  6, OAM_2c1dc
	frame  6, OAM_2c1d4
.script_2520d
	frame  8, OAM_2c1ec
	frame  8, OAM_2c1e4
	frame  8, OAM_2c1dc
	frame  8, OAM_2c1d4
	jump_rel .script_2520d
.script_2521b
	frame 10, OAM_2c1d4
	frame 10, OAM_2c1dc
	frame 10, OAM_2c1e4
	frame 10, OAM_2c1ec
	frame  6, OAM_2c1d4
	frame  6, OAM_2c1dc
	frame  6, OAM_2c1e4
	frame  6, OAM_2c1ec
.script_25233
	frame  8, OAM_2c1d4
	frame  8, OAM_2c1dc
	frame  8, OAM_2c1e4
	frame  8, OAM_2c1ec
	jump_rel .script_25233

SECTION "Bank 9@5241", ROMX[$5241], BANK[$9]

AnimScript_25241:
	frame  1, OAM_2de45
	script_repeat 3
	set_pal_dark
	script_delay 4
	set_pal_light
	script_delay 4
	script_repeat_end
.loop
	frame  8, OAM_2de45
	frame  8, OAM_2de4d
	jump_rel .loop

AnimScript_25259:
	jump_if_equal wLevelYSection, $11, .loop
	frame  1, OAM_2d8b8
	jump_abs AnimScript_25259
.loop
	script_exec ScriptFunc_LockScrolling
	script_end

AnimScript_25269:
	script_exec ScriptFunc_LockScrolling
	script_end

AnimScript_2526d:
	frame  1, OAM_2d8b8
	set_abs_pos
	set_position 20, 20
	set_value wBossHP, $00
	set_flags hHUDFlags, $00, $82
.script_2527d
	frame 10, OAM_2d8b8
	inc_value wBossHP
	set_flags hHUDFlags, $00, $01
	play_sfx SFX_RESTORE_HP
	dec_value wBossHPCounter
	jump_if_equal wBossHPCounter, $00, .script_25297
	jump_rel .script_2527d
.script_25297
	script_end

AnimScript_25298:
	frame 33, OAM_2c204
	script_repeat 8
	frame  4, OAM_2c1fc
	frame  4, OAM_2c204
	script_repeat_end
	frame 33, OAM_2c204
	jump_abs AnimScript_25298
; 0x252aa

SECTION "Bank 9@52ad", ROMX[$52ad], BANK[$9]

AnimScript_252ad:
	frame 10, OAM_2c47c
	frame 10, OAM_2c484
	frame 10, OAM_2c48c
	jump_abs AnimScript_252ad
; 0x252b9

SECTION "Bank 9@52c2", ROMX[$52c2], BANK[$9]

AnimScript_252c2:
	frame 10, OAM_2c3ec
	frame 10, OAM_2c3f4
	frame 10, OAM_2c3fc
	jump_abs AnimScript_252c2

AnimScript_252ce:
	script_repeat 6
	frame 15, OAM_2c3ec
	frame 10, OAM_2c3f4
	script_repeat_end
	frame 25, OAM_2c3ec
	frame  9, OAM_2c3f4
	frame  5, OAM_2c3fc
	branch_kirby_pos .script_252ea, .script_252f7
	jump_abs AnimScript_252ce
.script_252ea
	create_object AnimScript_2530a, MotionScript_31321, GlunkPodProperties
	frame 40, OAM_2c3fc
	jump_abs AnimScript_252ce
.script_252f7
	create_object AnimScript_2530a, MotionScript_3130e, GlunkPodProperties
	frame 40, OAM_2c3fc
	jump_abs AnimScript_252ce
; 0x25304

SECTION "Bank 9@530a", ROMX[$530a], BANK[$9]

AnimScript_2530a:
	frame  2, OAM_2e899
	frame  2, OAM_2e89d
	frame  2, OAM_2e8a1
	frame  2, OAM_2e8a5
	jump_abs AnimScript_2530a

AnimScript_25319:
	frame 30, OAM_2c3b4
	frame 20, OAM_2c3c0
	jump_abs AnimScript_25319

AnimScript_25322:
	frame 30, OAM_2c3dc
	frame 40, OAM_2c3b4
	frame 14, OAM_2c3c0
	frame  8, OAM_2c3c0
	frame  3, OAM_2c3b4
	jump_abs AnimScript_25319

AnimScript_25334:
	frame  8, OAM_2c3b4
	frame  8, OAM_2c3c0
	jump_abs AnimScript_25334
; 0x2533d

SECTION "Bank 9@5346", ROMX[$5346], BANK[$9]

AnimScript_25346:
.loop
	set_motion_script MotionScript_3138a
	script_repeat 5
	frame  8, OAM_2c3b4
	frame  8, OAM_2c3c0
	script_repeat_end
	set_motion_script MotionScript_31369
	script_repeat 5
	frame  8, OAM_2c3c8
	frame  8, OAM_2c3d4
	script_repeat_end
	jump_rel .loop

AnimScript_25364:
	script_repeat 2
	frame  4, OAM_2c37c
	frame  4, OAM_2c384
	script_repeat_end
	frame  2, OAM_2c37c
	frame 85, OAM_2c384
	script_repeat 2
	frame  2, OAM_2c384
	frame  2, OAM_2c37c
	script_repeat_end
	frame  2, OAM_2c384
	script_repeat 4
	frame  8, OAM_2c37c
	frame  8, OAM_2c384
	script_repeat_end
	frame  4, OAM_2c37c
	frame  4, OAM_2c374
AnimScript_2538e:
	script_repeat 2
	frame  4, OAM_2c394
	frame  4, OAM_2c39c
	script_repeat_end
	frame  2, OAM_2c394
	frame 85, OAM_2c39c
	script_repeat 2
	frame  2, OAM_2c39c
	frame  2, OAM_2c394
	script_repeat_end
	frame  2, OAM_2c39c
	script_repeat 4
	frame  8, OAM_2c394
	frame  8, OAM_2c39c
	script_repeat_end
	frame  4, OAM_2c394
	frame  4, OAM_2c38c
	jump_abs AnimScript_25364

AnimScript_253bb:
	frame  8, OAM_2c37c
	frame  8, OAM_2c384
	jump_abs AnimScript_253bb

AnimScript_253c4:
	frame  8, OAM_2c394
	frame  8, OAM_2c39c
	jump_abs AnimScript_253c4

AnimScript_253cd:
	frame 10, OAM_2c37c
	script_repeat 4
	frame  8, OAM_2c384
	frame  8, OAM_2c37c
	script_repeat_end
	frame  8, OAM_2c384
	frame 10, OAM_2c374
	script_repeat 9
	frame  8, OAM_2c384
	frame  8, OAM_2c37c
	script_repeat_end
	frame 10, OAM_2c374
	script_repeat 4
	frame  8, OAM_2c384
	frame  8, OAM_2c37c
	script_repeat_end
	frame  8, OAM_2c384
AnimScript_253f7:
	frame 10, OAM_2c394
	script_repeat 4
	frame  8, OAM_2c39c
	frame  8, OAM_2c394
	script_repeat_end
	frame  8, OAM_2c39c
	frame 10, OAM_2c38c
	script_repeat 9
	frame  8, OAM_2c39c
	frame  8, OAM_2c394
	script_repeat_end
	frame 10, OAM_2c38c
	script_repeat 4
	frame  8, OAM_2c39c
	frame  8, OAM_2c394
	script_repeat_end
	frame  8, OAM_2c39c
	jump_abs AnimScript_253cd

AnimScript_25424:
	script_repeat 5
	frame  8, OAM_2c394
	frame  8, OAM_2c39c
	script_repeat_end
	frame  5, OAM_2c394
AnimScript_25430:
	frame  8, OAM_2c37c
	frame  8, OAM_2c384
	jump_abs AnimScript_25430

AnimScript_25439:
	frame 16, OAM_2c374
	frame 32, OAM_2c37c
	frame 32, OAM_2c384
	frame 32, OAM_2c37c
.loop
	frame 32, OAM_2c384
	frame 32, OAM_2c37c
	jump_rel .loop

AnimScript_2544d:
	frame  0, OAM_2c41c

AnimScript_25450:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	branch_kirby_pos .script_2545f, .script_2546a
.script_2545f
	script_repeat 10
	frame  4, OAM_2d8b8
	frame  4, OAM_2c41c
	script_repeat_end
	jump_rel AnimScript_25475
.script_2546a
	script_repeat 10
	frame  4, OAM_2d8b8
	frame  4, OAM_2c42c
	script_repeat_end
	jump_rel AnimScript_25475

AnimScript_25475:
	branch_kirby_pos .script_25485, .script_2547c
.script_2547c
	frame 24, OAM_2c42c
	frame 12, OAM_2c434
	jump_abs AnimScript_25475
.script_25485
	frame 24, OAM_2c41c
	frame 12, OAM_2c424
	jump_abs AnimScript_25475

AnimScript_2548e:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	script_repeat 3
	frame 16, OAM_2c42c
	frame 16, OAM_2c434
	script_repeat_end
	frame 16, OAM_2c42c
	frame 16, OAM_2c424
	script_repeat 5
	frame 16, OAM_2c41c
	frame 16, OAM_2c424
	script_repeat_end
	frame 16, OAM_2c41c
	frame 16, OAM_2c434
	script_repeat 2
	frame 16, OAM_2c42c
	frame 16, OAM_2c434
	script_repeat_end
	jump_abs AnimScript_2548e

AnimScript_254c0:
	frame 16, OAM_2decd
	frame 16, OAM_2dec5
	frame 16, OAM_2decd
	frame 16, OAM_2dec5
	frame 96, OAM_2dec5
	script_repeat 5
	frame 16, OAM_2decd
	frame 16, OAM_2dec5
	script_repeat_end
	frame 96, OAM_2dec5
	frame 16, OAM_2decd
	frame 16, OAM_2dec5
	frame 32, OAM_2dec5
	jump_abs AnimScript_254c0

AnimScript_254e7:
	frame 10, OAM_2c45c
	frame  6, OAM_2c464
	frame  6, OAM_2c46c
	frame 10, OAM_2c474
	frame  4, OAM_2c46c
	frame  4, OAM_2c464
	frame  4, OAM_2c45c
	frame  4, OAM_2c464
	frame  4, OAM_2c46c
	frame  4, OAM_2c474
	frame  4, OAM_2c46c
	frame  4, OAM_2c464
	frame 10, OAM_2c45c
	frame  6, OAM_2c464
	frame  6, OAM_2c46c
	frame 10, OAM_2c474
	frame  8, OAM_2c46c
	frame  8, OAM_2c464
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
	frame 10, OAM_2c45c
	frame  6, OAM_2c464
	frame  6, OAM_2c46c
	frame 10, OAM_2c474
	frame  6, OAM_2c46c
	frame  6, OAM_2c464
	script_ret

AnimScript_25544:
.loop
	frame 11, OAM_2c45c
	frame  7, OAM_2c464
	frame  7, OAM_2c46c
	frame 11, OAM_2c474
	frame  7, OAM_2c46c
	frame  7, OAM_2c464
	jump_rel .loop

AnimScript_25558:
	frame 10, OAM_2c40c
	frame 10, OAM_2c414
	jump_abs AnimScript_25558

AnimScript_25561:
	position_offset 0, -8
	frame  6, OAM_2dd29
	frame  6, OAM_2dd31
	script_end

AnimScript_2556b:
	set_update_func Func_14252, AnimScript_25573
	frame  0, OAM_2c43c

AnimScript_25573:
	frame  4, OAM_2c44c
	frame 10, OAM_2c454
	frame 10, OAM_2c454
	frame  4, OAM_2c450
	frame 10, OAM_2c444
	set_object_properties Properties_3727
	set_update_func Func_14208, NULL
AnimScript_2558c:
	frame 10, OAM_2c444
	frame 10, OAM_2c44c
	frame 10, OAM_2c454
	frame 10, OAM_2c450
	jump_abs AnimScript_2558c

AnimScript_2559b:
	frame 55, OAM_2c43c
	jump_rel AnimScript_2558c
; 0x255a0

SECTION "Bank 9@5616", ROMX[$5616], BANK[$9]

AnimScript_25616:
	frame 25, OAM_2dee5
	create_object AnimScript_249f0, MotionScript_30308, ShotzoBulletProperties
	set_motion_script MotionScript_3028c
	frame 10, OAM_2dee5
	jump_abs AnimScript_25616
; 0x2562b

SECTION "Bank 9@5679", ROMX[$5679], BANK[$9]

AnimScript_25679:
	set_motion_script MotionScript_321b8
.loop
	frame 64, OAM_2c6f4
	frame 48, OAM_2c6f4
	jump_abs .loop

AnimScript_25687:
	frame  0, OAM_2c6f4

AnimScript_2568a:
	set_update_func Func_14252, AnimScript_25692
	frame  0, OAM_2d8b8

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
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_scripts AnimScript_2574f, MotionScript_317be

AnimScript_256d9:
	position_offset 48, 0
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_scripts AnimScript_2574f, MotionScript_317f4

AnimScript_256e7:
	position_offset 0, 48
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_scripts AnimScript_2574f, MotionScript_317e2

AnimScript_256f5:
	position_offset -48, 0
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_scripts AnimScript_2574f, MotionScript_317d0

AnimScript_25703:
	position_offset 34, -34
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_object_properties Properties_374b
	set_scripts AnimScript_25475, MotionScript_317fd

AnimScript_25716:
	position_offset 34, 34
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_object_properties Properties_374b
	set_scripts AnimScript_25475, MotionScript_317eb

AnimScript_25729:
	position_offset -34, 34
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_object_properties Properties_374b
	set_scripts AnimScript_25475, MotionScript_317d9

AnimScript_2573c:
	position_offset -34, -34
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_object_properties Properties_374b
	set_scripts AnimScript_25475, MotionScript_317c7

AnimScript_2574f:
	set_object_properties Properties_36cd
AnimScript_25754:
	branch_kirby_pos .script_2575b, .script_25764
.script_2575b
	frame  6, OAM_2c37c
	frame  6, OAM_2c384
	jump_abs AnimScript_25754
.script_25764
	frame  6, OAM_2c394
	frame  6, OAM_2c39c
	jump_abs AnimScript_25754

AnimScript_2576d:
	frame  1, OAM_2d8b8
	set_object_properties Data_3421
	set_update_func Func_14252, AnimScript_2577d
	frame  0, OAM_2d8b8

AnimScript_2577d:
	branch_on_kirby_vertical_alignment AnimScript_2576d, .script_25786
	jump_rel AnimScript_2576d
.script_25786
	create_object AnimScript_25561, MotionScript_30008, PuffOfSmokeProperties
	position_offset 0, -16
	play_sfx SFX_PUFF
	set_object_properties MaximTomatoProperties
	frame  0, OAM_2dc81

AnimScript_2579c:
	frame  8, OAM_2de7d
	frame  8, OAM_2de75
	frame  8, OAM_2de7d
	frame  8, OAM_2de75
	frame  8, OAM_2de7d
	frame  8, OAM_2de9d
AnimScript_257ae:
	frame  8, OAM_2dea5
	frame  8, OAM_2de9d
	frame  8, OAM_2dea5
	frame  8, OAM_2de9d
	frame  8, OAM_2dea5
	frame  8, OAM_2de75
	jump_abs AnimScript_2579c

AnimScript_257c3:
	frame  8, OAM_2de6d
	frame  8, OAM_2de65
	frame  8, OAM_2de6d
	frame  8, OAM_2de65
	frame  8, OAM_2de6d
	frame  8, OAM_2de55
AnimScript_257d5:
	frame  8, OAM_2de5d
	frame  8, OAM_2de55
	frame  8, OAM_2de5d
	frame  8, OAM_2de55
	frame  8, OAM_2de5d
	frame  8, OAM_2de65
	jump_abs AnimScript_257c3
; 0x257ea

SECTION "Bank 9@57f0", ROMX[$57f0], BANK[$9]

AnimScript_257f0:
	frame  8, OAM_2df9d
	frame 24, OAM_2df95
	jump_abs AnimScript_257f0

AnimScript_257f9:
	frame  8, OAM_2dfb5
AnimScript_257fc:
	frame 24, OAM_2dfad
	jump_abs AnimScript_257f9

AnimScript_25802:
	script_repeat 3
	frame  8, OAM_2df9d
	frame 24, OAM_2df95
	script_repeat_end
	script_repeat 3
	frame  8, OAM_2dfb5
	frame 24, OAM_2dfad
	script_repeat_end
	jump_abs AnimScript_25802
; 0x25817

SECTION "Bank 9@5856", ROMX[$5856], BANK[$9]

AnimScript_25856:
	frame  0, OAM_2dfcd
; 0x25859

SECTION "Bank 9@585c", ROMX[$585c], BANK[$9]

AnimScript_2585c:
	frame 10, OAM_2dfcd
	branch_kirby_pos .script_25866, .script_258a1
.script_25866
	frame 10, OAM_2dfcd
	script_repeat 4
	frame  4, OAM_2dfd5
	frame  4, OAM_2dfcd
	script_repeat_end
	script_call AnimScript_244a4
	frame 10, OAM_2dfcd
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 30, OAM_2dfc5
	script_exec ScriptFunc_ResetImmuneFlag
	jump_abs AnimScript_2585c

.script_25889
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 10, OAM_2dfdd
	script_exec ScriptFunc_ResetImmuneFlag
	frame 10, OAM_2dfe5
	branch_kirby_pos .script_25866, .script_258a1

.script_258a1
	frame 10, OAM_2dfe5
	script_repeat 4
	frame  4, OAM_2dfed
	frame  4, OAM_2dfe5
	script_repeat_end
	script_call AnimScript_2451d
	frame 30, OAM_2dfe5
	jump_abs .script_25889
; 0x258b6

SECTION "Bank 9@58d6", ROMX[$58d6], BANK[$9]

AnimScript_258d6:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 40, OAM_2dfdd
	script_exec ScriptFunc_ResetImmuneFlag
	frame 10, OAM_2dfe5
	script_repeat 4
	frame  4, OAM_2dfed
	frame  4, OAM_2dfe5
	script_repeat_end
	script_call AnimScript_2451d
	jump_abs AnimScript_258d6
; 0x258f6

SECTION "Bank 9@58f9", ROMX[$58f9], BANK[$9]

AnimScript_258f9:
	frame 16, OAM_2e045
	frame 16, OAM_2e04d
	frame 16, OAM_2e055
	frame 16, OAM_2e05d
	jump_abs AnimScript_258f9

AnimScript_25908:
	frame  8, OAM_2e045
	frame  8, OAM_2e04d
	frame  8, OAM_2e055
	frame  8, OAM_2e05d
	jump_abs AnimScript_25908

AnimScript_25917:
	frame  4, OAM_2e045
	frame  4, OAM_2e04d
	frame  4, OAM_2e055
	frame  4, OAM_2e05d
	jump_abs AnimScript_25917
; 0x25926

SECTION "Bank 9@593e", ROMX[$593e], BANK[$9]

AnimScript_2593e:
	frame 16, OAM_2e045
	frame 16, OAM_2e04d
	frame 16, OAM_2e055
	frame 16, OAM_2e05d
	frame 16, OAM_2e045
	frame 16, OAM_2e04d
	frame 16, OAM_2e055
	frame 16, OAM_2e05d
	set_object_properties Properties_3495
	script_call AnimScript_25994
	set_object_properties Properties_349e
	frame 80, OAM_2d8b8
	set_object_properties Properties_3495
	script_call AnimScript_25978
	set_object_properties StandardEnemyProperties
	set_scripts AnimScript_25917, MotionScript_31de6

AnimScript_25978:
	script_repeat 3
	frame  1, OAM_2e045
	frame  5, OAM_2d8b8
	script_repeat_end
	script_repeat 3
	frame  2, OAM_2e045
	frame  2, OAM_2d8b8
	script_repeat_end
	script_repeat 3
	frame  5, OAM_2e045
	frame  1, OAM_2d8b8
	script_repeat_end
	script_ret

AnimScript_25994:
	script_repeat 3
	frame  5, OAM_2e045
	frame  1, OAM_2d8b8
	script_repeat_end
	script_repeat 3
	frame  2, OAM_2e045
	frame  2, OAM_2d8b8
	script_repeat_end
	script_repeat 3
	frame  1, OAM_2e045
	frame  5, OAM_2d8b8
	script_repeat_end
	script_ret

AnimScript_259b0:
	frame 10, OAM_2e045
	frame 10, OAM_2e04d
	frame 10, OAM_2e055
	frame 10, OAM_2e05d
	frame 10, OAM_2e065
	frame 10, OAM_2e045
	jump_abs AnimScript_259b0

AnimScript_259c5:
	frame 16, OAM_2dff5
	frame  8, OAM_2dffd
	frame 16, OAM_2dff5
	frame 16, OAM_2dffd
	frame  8, OAM_2dff5
	jump_abs AnimScript_259c5

AnimScript_259d7:
	frame  8, OAM_2e005
	frame  8, OAM_2dffd
	jump_abs AnimScript_259d7

AnimScript_259e0:
	frame  0, OAM_2e015

AnimScript_259e3:
	frame  8, OAM_2dffd
	frame  0, OAM_2dff5

AnimScript_259e9:
	frame  8, OAM_2e025
	frame  0, OAM_2e01d

AnimScript_259ef:
	frame 32, OAM_2e02d
	frame  0, OAM_2e025

AnimScript_259f5:
	frame 32, OAM_2e005
	frame  0, OAM_2dffd

AnimScript_259fb:
	frame 10, OAM_2e21d
	frame 10, OAM_2e225
	jump_abs AnimScript_259fb

AnimScript_25a04:
	frame 10, OAM_2e22d
	frame 10, OAM_2e235
	jump_abs AnimScript_25a04

AnimScript_25a0d:
	frame  8, OAM_2e245
	frame  0, OAM_2e23d

AnimScript_25a13:
	frame  8, OAM_2e245
	frame 16, OAM_2e23d
	jump_abs AnimScript_25a13

AnimScript_25a1c:
	frame  1, OAM_2e245
	jump_abs AnimScript_25a1c

AnimScript_25a22:
	frame  1, OAM_2e23d
	jump_abs AnimScript_25a22

AnimScript_25a28:
	frame 10, OAM_2e22d
	script_repeat 2
	frame 10, OAM_2e21d
	frame 10, OAM_2e225
	script_repeat_end
	frame 10, OAM_2e21d
	script_repeat 2
	frame 10, OAM_2e22d
	frame 10, OAM_2e235
	script_repeat_end
	jump_abs AnimScript_25a28

AnimScript_25a43:
	frame 50, OAM_2e23d
	frame 14, OAM_2e245
	frame  0, OAM_2e23d

AnimScript_25a4c:
.loop
	frame 18, OAM_2e23d
	frame  6, OAM_2e245
	jump_rel .loop

AnimScript_25a54:
	frame  1, OAM_2e24d
	set_motion_script MotionScript_31d7d
	frame  0, OAM_2e24d

AnimScript_25a5f:
	frame 40, OAM_2e24d
	set_object_properties Data_366a
	set_update_func Func_141b1, AnimScript_25a6f
	frame  0, OAM_2e24d

AnimScript_25a6f:
	set_object_properties ExplosionProperties
	set_scripts AnimScript_243be, MotionScript_30008
; 0x25a79

SECTION "Bank 9@5a7c", ROMX[$5a7c], BANK[$9]

AnimScript_25a7c:
	frame 80, OAM_2e255
	frame  4, OAM_2e25d
	frame  4, OAM_2e269
	script_repeat 8
	frame  4, OAM_2e279
	frame  4, OAM_2e289
	script_repeat_end
	frame  0, OAM_2e255

AnimScript_25a91:
	frame 40, OAM_2e299
	frame 60, OAM_2e2a1
	frame  4, OAM_2e2a9
	frame  4, OAM_2e2c9
	play_sfx SFX_25
	frame  4, OAM_2e2f1
.loop
	frame  4, OAM_2e329
	frame  4, OAM_2e359
	jump_rel .loop

AnimScript_25aac:
	frame  0, OAM_2e06d

AnimScript_25aaf:
	frame 10, OAM_2e06d
.loop_1
	jump_random 33 percent + 1, .script_25aeb
	jump_random 50 percent + 1, .script_25af7
	jump_abs .script_25b09

.script_25abd
	frame 15, OAM_2e06d
	jump_random 70 percent, .script_25ac9
	frame 15, OAM_2e06d
	jump_rel .loop_1

.script_25ac9
	script_call .script_25b5b
	frame 15, OAM_2e0d5
.loop_2
	jump_random 33 percent + 1, .script_25b23
	jump_random 50 percent + 1, .script_25b2f
	jump_abs .script_25b41

.script_25ada
	frame 15, OAM_2e0d5
	jump_random 70 percent, .script_25ae6
	frame 15, OAM_2e0d5
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
	frame 10, OAM_2e06d
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
	frame 10, OAM_2e0d5
	script_repeat_end
	jump_rel .script_25ada

.script_25b41
	script_call AnimScript_25b8d
	create_object AnimScript_25bc0, MotionScript_31c9d, KaboolaBulletProperties
	create_object AnimScript_25bc0, MotionScript_30308, KaboolaBulletProperties
	create_object AnimScript_25bc0, MotionScript_31ca0, KaboolaBulletProperties
	jump_rel .script_25ada

.script_25b5b
	frame  4, OAM_2e095
	frame  4, OAM_2e0b5
	frame 10, OAM_2e0d5
	script_ret

.script_25b65
	frame  4, OAM_2e0b5
	frame  4, OAM_2e095
	frame 10, OAM_2e06d
	script_ret

.script_25b6f
	frame  4, OAM_2e0fd
	frame  4, OAM_2e12d
	frame  4, OAM_2e15d
	script_ret

.script_25b79
	frame  4, OAM_2e18d
	frame  4, OAM_2e1bd
	frame  4, OAM_2e1ed
	script_ret

AnimScript_25b83:
	frame  2, OAM_2e0fd
	frame  2, OAM_2e12d
	frame  2, OAM_2e15d
	script_ret

AnimScript_25b8d:
	frame  2, OAM_2e18d
	frame  2, OAM_2e1bd
	frame  2, OAM_2e1ed
	script_ret

AnimScript_25b97:
.loop
	script_call AnimScript_25b9c
	jump_rel .loop

AnimScript_25b9c:
	frame  4, OAM_2e06d
	frame  4, OAM_2e095
	frame  4, OAM_2e0b5
	frame  4, OAM_2e0d5
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
	frame 12, OAM_2c528
	frame 12, OAM_2c530
	script_repeat_end
	set_motion_script MotionScript_30008
	script_repeat 2
	frame  4, OAM_2c530
	frame  4, OAM_2c528
	script_repeat_end
	frame 10, OAM_2c530
	set_motion_script MotionScript_31ee6
	script_repeat 8
	frame 12, OAM_2c518
	frame 12, OAM_2c520
	script_repeat_end
	set_motion_script MotionScript_30008
	script_repeat 2
	frame  4, OAM_2c520
	frame  4, OAM_2c518
	script_repeat_end
	frame 10, OAM_2c520
	jump_rel .loop

AnimScript_25c49:
	frame  8, OAM_2c518
	frame  8, OAM_2c520
	jump_abs AnimScript_25c49
; 0x25c52

SECTION "Bank 9@5c5b", ROMX[$5c5b], BANK[$9]

AnimScript_25c5b:
	frame 12, OAM_2c518
	frame 10, OAM_2c520
	jump_abs AnimScript_25c5b

AnimScript_25c64:
	frame 12, OAM_2c528
	frame 10, OAM_2c530
	jump_abs AnimScript_25c64

AnimScript_25c6d:
	frame  0, OAM_2c540
; 0x25c70

SECTION "Bank 9@5c73", ROMX[$5c73], BANK[$9]

AnimScript_25c73:
	frame  0, OAM_2c548

AnimScript_25c76:
	frame  8, OAM_2c538
	frame  8, OAM_2c540
	frame  8, OAM_2c548
	frame  8, OAM_2c550
	jump_abs AnimScript_25c76

AnimScript_25c85:
	frame  6, OAM_2de45
	frame  6, OAM_2de4d
	script_repeat 2
	frame 10, OAM_2de45
	frame 10, OAM_2de4d
	script_repeat_end
	jump_abs AnimScript_25c85

AnimScript_25c97:
	frame 10, OAM_2decd
	frame 10, OAM_2dec5
	set_scripts AnimScript_25cbe, MotionScript_314d5

AnimScript_25ca2:
	script_repeat 2
	frame 10, OAM_2decd
	frame 10, OAM_2dec5
	script_repeat_end
	set_scripts AnimScript_25cbe, MotionScript_314d5

AnimScript_25cb0:
	script_repeat 3
	frame 10, OAM_2decd
	frame 10, OAM_2dec5
	script_repeat_end
	set_motion_script MotionScript_314d5
AnimScript_25cbe:
	frame 10, OAM_2decd
	frame 10, OAM_2dec5
	frame 10, OAM_2decd
AnimScript_25cc7:
	frame  8, OAM_2decd
	frame  8, OAM_2dec5
	jump_abs AnimScript_25cc7

AnimScript_25cd0:
.loop
	set_motion_script MotionScript_302ce
	script_repeat 18
	frame 16, OAM_2de55
	frame 16, OAM_2de5d
	script_repeat_end
	set_motion_script MotionScript_302d1
	script_repeat 18
	frame 16, OAM_2de65
	frame 16, OAM_2de6d
	script_repeat_end
	jump_rel .loop

AnimScript_25cee:
	set_update_func Func_140ce, AnimScript_25d03
AnimScript_25cf3:
.loop
	frame 10, OAM_2c558
	frame 10, OAM_2c560
	jump_rel .loop
; 0x25cfb

SECTION "Bank 9@5d03", ROMX[$5d03], BANK[$9]

AnimScript_25d03:
	set_object_properties Properties_34ed
	set_motion_script MotionScript_320b6
	frame 12, OAM_2c558
	frame 12, OAM_2c578
	set_motion_script MotionScript_3201f
.script_25d18
	branch_kirby_pos .script_25d1f, .script_25d27
.script_25d1f
	frame  8, OAM_2c568
	frame 10, OAM_2c578
	jump_rel .script_25d18
.script_25d27
	frame  8, OAM_2c590
	frame 10, OAM_2c5a0
	jump_rel .script_25d18

AnimScript_25d2f:
	branch_kirby_pos .script_25d36, .script_25d39
.script_25d36
	frame  0, OAM_2c578

.script_25d39
	frame  0, OAM_2c5a0

AnimScript_25d3c:
	script_repeat 3
	frame 10, OAM_2de55
	frame  8, OAM_2de5d
	script_repeat_end
	script_repeat 3
	frame 10, OAM_2de65
	frame  8, OAM_2de6d
	script_repeat_end
	script_repeat 2
	frame 10, OAM_2de55
	frame  8, OAM_2de5d
	script_repeat_end
	script_repeat 2
	frame 10, OAM_2de65
	frame  8, OAM_2de6d
	script_repeat_end
	frame 10, OAM_2de55
	frame  8, OAM_2de5d
	frame 10, OAM_2de65
	frame  8, OAM_2de6d
	frame 20, OAM_2de5d
	frame 64, OAM_2de55
	frame 20, OAM_2de5d
	jump_abs AnimScript_25d3c

AnimScript_25d78:
	position_offset 0, 6
	jump_abs AnimScript_249f0
; 0x25d7e

SECTION "Bank 9@5d84", ROMX[$5d84], BANK[$9]

AnimScript_25d84:
	jump_abs AnimScript_25d87.script_25dac

AnimScript_25d87:
	frame 15, OAM_2def5
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
	frame  8, OAM_2def5
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
	frame 15, OAM_2def5
	jump_abs .script_25daf

.script_25dcb
	frame 15, OAM_2defd
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
	frame  8, OAM_2defd
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
	frame 15, OAM_2df05
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
	frame 15, OAM_2df05
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
	frame 15, OAM_2df05
	jump_abs .script_25e31

.script_25e4d
	frame 15, OAM_2dee5
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
	frame 15, OAM_2dee5
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
	frame 15, OAM_2dee5
	jump_abs .script_25e75
.script_25e91
	frame 30, OAM_2deed
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
	frame 15, OAM_2deed
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
	frame  0, OAM_2c6a4

AnimScript_25ed2:
	frame  0, OAM_2c664

AnimScript_25ed5:
.loop
	set_pal_light
	frame 10, OAM_2c654
	set_pal_dark
	frame 10, OAM_2c654
	jump_rel .loop

AnimScript_25ee3:
	set_update_func Func_140c2, AnimScript_25f27
.loop
	frame 10, OAM_2c6a4
	frame 10, OAM_2c6b4
	frame 10, OAM_2c6a4
	frame 10, OAM_2c6b4
	frame 20, OAM_2c6c4
	frame 10, OAM_2c6d4
	frame 10, OAM_2c6c4
	frame 10, OAM_2c6d4
	frame 10, OAM_2c6a4
	jump_rel .loop

AnimScript_25f05:
	set_update_func Func_140c2, AnimScript_25f39
.loop
	frame 10, OAM_2c664
	frame 10, OAM_2c674
	frame 10, OAM_2c664
	frame 10, OAM_2c674
	frame 20, OAM_2c684
	frame 10, OAM_2c694
	frame 10, OAM_2c684
	frame 10, OAM_2c694
	frame 10, OAM_2c664
	jump_rel .loop

AnimScript_25f27:
	create_object AnimScript_25ed5, MotionScript_32161, Data_3421
	set_object_properties StandardEnemyProperties
	frame  1, OAM_2de55
	script_exec Func_4afb
AnimScript_25f39:
	create_object AnimScript_25ed5, MotionScript_32161, Data_3421
	set_object_properties StandardEnemyProperties
	frame  1, OAM_2de75
	script_exec Func_4afb
AnimScript_25f4b:
	set_object_properties Data_3421
	set_scripts AnimScript_25ed5, MotionScript_32161
; 0x25f55

SECTION "Bank 9@5f60", ROMX[$5f60], BANK[$9]

AnimScript_25f60:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_25f6d
	frame  0, OAM_2de55

AnimScript_25f6d:
	set_scripts AnimScript_24587, MotionScript_302ce

AnimScript_25f72:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_25f7f
	frame  0, OAM_2de55

AnimScript_25f7f:
	set_scripts AnimScript_245ae, MotionScript_303ff

AnimScript_25f84:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_25f91
	frame  0, OAM_2de75

AnimScript_25f91:
	set_scripts AnimScript_245e1, MotionScript_302ce

AnimScript_25f96:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_25fa3
	frame  0, OAM_2de75

AnimScript_25fa3:
	set_scripts AnimScript_2461d, MotionScript_303ff
; 0x25fa8

SECTION "Bank 9@5fbb", ROMX[$5fbb], BANK[$9]

AnimScript_25fbb:
	frame 20, OAM_2c794
	frame 20, OAM_2c79c
	frame 20, OAM_2c794
	frame 20, OAM_2c7a4
	jump_abs AnimScript_25fbb

AnimScript_25fca:
	play_sfx SFX_20
.loop
	frame  4, OAM_2c764
	frame  4, OAM_2c76c
	frame  4, OAM_2c770
	frame  4, OAM_2c778
	jump_rel .loop

AnimScript_25fdc:
	play_sfx SFX_20
	frame  4, OAM_2c77c
	frame  4, OAM_2c784
	frame  4, OAM_2c788
	frame  4, OAM_2c790
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
	frame  8, OAM_2c724
AnimScript_26072:
	frame  8, OAM_2c72c
	script_repeat_end
	set_motion_script MotionScript_30008
	frame 20, OAM_2c734
	create_object AnimScript_25fca, MotionScript_3226a, SirKibbleBladeProperties
	frame 10, OAM_2c73c
	frame 10, OAM_2c734
	create_object AnimScript_25fca, MotionScript_3226a, SirKibbleBladeProperties
	frame 10, OAM_2c73c
	frame 16, OAM_2c73c
	frame 20, OAM_2c734
	script_ret

AnimScript_2609c:
	branch_kirby_pos .script_260a3, .script_260ce
.script_260a3
	frame 18, OAM_2c734
	create_object AnimScript_25fca, MotionScript_322a8, SirKibbleBladeProperties
	frame 18, OAM_2c73c
	frame 18, OAM_2c734
	create_object AnimScript_25fca, MotionScript_322c7, SirKibbleBladeProperties
	frame 18, OAM_2c73c
	frame 18, OAM_2c734
	create_object AnimScript_25fca, MotionScript_32289, SirKibbleBladeProperties
	frame 18, OAM_2c73c
	frame 20, OAM_2c734
	script_ret
.script_260ce
	script_repeat 3
	frame 18, OAM_2c754
	create_object AnimScript_25fdc, MotionScript_32305, SirKibbleBladeProperties
	frame 18, OAM_2c75c
	script_repeat_end
	frame 20, OAM_2c754
	script_ret

AnimScript_260e2:
	set_motion_script MotionScript_302d7
AnimScript_260e7:
	script_repeat 3
	frame  8, OAM_2c744
	frame  8, OAM_2c74c
	script_repeat_end
	set_motion_script MotionScript_30008
	frame 20, OAM_2c754
	create_object AnimScript_25fca, MotionScript_322e6, SirKibbleBladeProperties
	frame 10, OAM_2c75c
	frame 10, OAM_2c754
	create_object AnimScript_25fdc, MotionScript_322e6, SirKibbleBladeProperties
	frame 10, OAM_2c75c
	frame 16, OAM_2c75c
	frame 20, OAM_2c754
	script_ret

SECTION "Bank 9@6116", ROMX[$6116], BANK[$9]

AnimScript_26116:
	frame  0, OAM_2d8b8

AnimScript_26119:
	frame  0, OAM_2c7ac

AnimScript_2611c:
	position_offset 0, 96
AnimScript_2611f:
	frame  2, OAM_2c7b0
	frame  2, OAM_2c7b8
	frame  2, OAM_2c7c4
	frame  2, OAM_2c7c0
	frame  2, OAM_2c7b4
	frame  2, OAM_2c7bc
	jump_abs AnimScript_2611f

AnimScript_26134:
	frame 40, OAM_2d8b8
	jump_random 25 percent + 1, .script_2614c
	frame 20, OAM_2d8b8
	jump_random 50 percent + 1, .script_2614c
	frame 20, OAM_2d8b8
	jump_random 75 percent + 1, .script_2614c
	frame 20, OAM_2d8b8
.script_2614c
	create_object AnimScript_26156, MotionScript_32326, GlunkPodProperties
	jump_abs AnimScript_26134

AnimScript_26156:
	script_exec Func_4a93
.loop
	frame 10, OAM_2dc1d
	set_pal_dark
	frame  4, OAM_2dc1d
	set_pal_light
	jump_rel .loop

AnimScript_26167:
	branch_kirby_pos .script_2616e, .script_2618b
.script_2616e
	script_repeat 6
	frame  3, OAM_2de8d
	frame  3, OAM_2de75
	script_repeat_end
	set_motion_script MotionScript_31f4c
	script_call AnimScript_261de
	script_repeat 2
	frame  4, OAM_2de75
	frame  4, OAM_2de7d
	script_repeat_end
	jump_abs AnimScript_26167
.script_2618b
	script_repeat 12
	frame  3, OAM_2deb5
	frame  3, OAM_2de9d
	script_repeat_end
	set_motion_script MotionScript_31f4c
	script_call AnimScript_2623f
	script_repeat 4
	frame  4, OAM_2de9d
	frame  4, OAM_2dea5
	script_repeat_end
	jump_abs AnimScript_26167

AnimScript_261a8:
	branch_kirby_pos AnimScript_261af, AnimScript_261c6

AnimScript_261af:
	script_repeat 8
	frame  3, OAM_2de8d
	frame  3, OAM_2de75
	script_repeat_end
	script_call AnimScript_261de
	script_repeat 2
	frame  4, OAM_2de75
	frame  4, OAM_2de7d
	script_repeat_end
	jump_rel AnimScript_261a8

AnimScript_261c6:
	script_repeat 12
	frame  3, OAM_2deb5
	frame  3, OAM_2de9d
	script_repeat_end
	script_call AnimScript_2623f
	script_repeat 4
	frame  4, OAM_2de9d
	frame  4, OAM_2dea5
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
	frame  1, OAM_2d8b8
	set_object_properties Data_3421
	set_update_func Func_14252, AnimScript_262b0
	frame  0, OAM_2d8b8

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
	frame  8, OAM_2c518
	frame  8, OAM_2c520
	jump_rel .script_262c4
.script_262d3
	frame  8, OAM_2c528
	frame  8, OAM_2c530
	jump_rel .script_262c4

AnimScript_262db:
	frame 40, OAM_2d8b8
	create_object AnimScript_26400, MotionScript_30008, Data_3425
	script_repeat 2
	frame 40, OAM_2dc01
	frame 10, OAM_2dc2d
	frame 10, OAM_2cba8
	frame 40, OAM_2d8b8
	frame 10, OAM_2cba8
	frame 10, OAM_2dc2d
	frame 40, OAM_2dc01
	script_repeat_end
	frame  0, OAM_2dc01

AnimScript_26300:
.loop
	frame 170, OAM_2d8b8
	create_object AnimScript_2630c, MotionScript_323f6, Data_3425
	jump_rel .loop

AnimScript_2630c:
	script_repeat 2
	frame 18, OAM_2d8c1
	frame 11, OAM_2d8c9
	frame 18, OAM_2d8d1
	frame 11, OAM_2d8c9
	script_repeat_end
	script_repeat 2
	frame  8, OAM_2d8d1
	frame  8, OAM_2db81
	frame  8, OAM_2db89
	frame  8, OAM_2dba1
	frame  8, OAM_2db99
	frame  8, OAM_2d901
	script_repeat_end
	frame 32, OAM_2d8e1
	script_repeat 2
	frame 18, OAM_2d8f1
	frame 11, OAM_2d8f9
	frame 18, OAM_2d901
	frame 11, OAM_2d8f9
	script_repeat_end
	script_repeat 2
	frame 10, OAM_2dbf1
	frame  8, OAM_2dbf9
	frame  8, OAM_2dbe9
	frame 10, OAM_2dbe1
	script_repeat_end
	script_repeat 3
	frame  6, OAM_2d8e9
	frame 10, OAM_2dba9
	frame  6, OAM_2d8e9
	frame 10, OAM_2dbad
	script_repeat_end
	frame 16, OAM_2dbc9
	frame 64, OAM_2d8d9
	frame 64, OAM_2db69
	frame 32, OAM_2dbc9
	frame 64, OAM_2d901
	frame 10, OAM_2dae9
	frame 10, OAM_2daf1
	frame 10, OAM_2da81
.loop
	frame 10, OAM_2d919
	frame 10, OAM_2d931
	jump_rel .loop

AnimScript_26380:
	frame 200, OAM_2d8b8
AnimScript_26383:
	frame 30, OAM_2d8b8
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
	frame  3, OAM_2dc25
	frame  3, OAM_2dc2d
	create_object AnimScript_2642c, MotionScript_308a1, Data_3421
	create_object AnimScript_2642c, MotionScript_308b2, Data_3421
	frame  3, OAM_2dc3d
	frame  3, OAM_2dc45
	frame  3, OAM_2dc25
	script_end

AnimScript_2642c:
	frame  0, OAM_2cba8

AnimScript_2642f:
	frame 150, OAM_2d2b0
	frame  8, OAM_2d2b4
	frame  8, OAM_2d2b8
	frame 20, OAM_2d2bc
	frame  8, OAM_2d2b8
	frame  8, OAM_2d2b4
	frame 200, OAM_2d2b0
	frame  8, OAM_2d2b4
	frame  8, OAM_2d2b8
	frame 20, OAM_2d2bc
	frame  8, OAM_2d2b8
	frame  8, OAM_2d2b4
	jump_abs AnimScript_2642f

AnimScript_26456:
	frame  8, OAM_2d2c0
	frame 180, OAM_2d8b8
	frame  8, OAM_2d2c0
	frame 10, OAM_2d8b8
	frame  8, OAM_2d2c0
	frame 120, OAM_2d8b8
	jump_abs AnimScript_26456

AnimScript_2646b:
	frame 32, OAM_2d8b8
	frame 32, OAM_2d8d9
	frame 24, OAM_2db69
	frame  8, OAM_2dbc9
	script_repeat 2
	frame  8, OAM_2d8c1
	frame  8, OAM_2d8c9
	frame  8, OAM_2d8d1
	frame  8, OAM_2d8c9
	script_repeat_end
	frame 32, OAM_2d8b8
	script_repeat 5
	frame  8, OAM_2dbe1
	frame  8, OAM_2dbe9
	frame  8, OAM_2dbf9
	frame  8, OAM_2dbf1
	script_repeat_end
	frame 32, OAM_2dbf1
	script_end

AnimScript_2649c:
	script_repeat 4
	frame  8, OAM_2cbb4
	frame  8, OAM_2cbb8
	script_repeat_end
	script_repeat 30
	frame  4, OAM_2cbac
	frame  4, OAM_2cbb0
	script_repeat_end
	frame  4, OAM_2cbac
	script_end
; 0x264b2

SECTION "Bank 9@64b7", ROMX[$64b7], BANK[$9]

AnimScript_264b7:
	frame  8, OAM_2cbb8
AnimScript_264ba:
	script_repeat 100
	frame  8, OAM_2cbb4
	frame  8, OAM_2cbb8
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
	frame 104, OAM_2d8b8
	script_delay 94
	script_ret

AnimScript_264fa:
	frame  0, OAM_2dc21

AnimScript_264fd:
	frame  8, OAM_2cd6c
	frame  8, OAM_2cd78
	script_end

AnimScript_26504:
	frame 48, OAM_2d8e9
	frame 16, OAM_2cd84
	script_delay 15
	frame 16, OAM_2cd8c
	frame 48, OAM_2d8e9
	frame 32, OAM_2cd84
	frame 16, OAM_2cd8c
	frame 52, OAM_2d8e9
	frame  0, OAM_2dbe1

AnimScript_2651e:
	frame 96, OAM_2d8b8
	frame 96, OAM_2d8b8
	frame  0, OAM_2dc21

AnimScript_26527:
	frame 48, OAM_2cbbc
	frame  8, OAM_2cbcc
	frame 16, OAM_2cbbc
	frame  8, OAM_2cbcc
	frame 16, OAM_2cbbc
	frame 10, OAM_2cbdc
	frame 32, OAM_2cbf4
	frame 48, OAM_2cc0c
	frame 16, OAM_2cc18
	frame 16, OAM_2cc24
	frame 32, OAM_2cc84
	frame 10, OAM_2cc38
	frame 20, OAM_2cc54
	frame 20, OAM_2cc60
	frame  8, OAM_2cc6c
	frame 16, OAM_2cc60
	frame 32, OAM_2cc6c
	frame 16, OAM_2cc60
	frame 160, OAM_2cc6c
	frame  0, OAM_2cc60

AnimScript_26563:
	frame 96, OAM_2d8b8
.loop
	frame 24, OAM_2cc7c
	frame 24, OAM_2cc80
	jump_abs .loop

AnimScript_2656f:
	frame 104, OAM_2d8b8
.loop
	frame  6, OAM_2cca0
	frame  6, OAM_2cca8
	frame  6, OAM_2cca0
	frame  6, OAM_2cca8
	frame  6, OAM_2ccb0
	frame  6, OAM_2ccb8
	jump_abs .loop

AnimScript_26587:
	frame 50, OAM_2d8b8
	frame 50, OAM_2db69
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
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
	frame  0, OAM_2ccc0

.script_265bb
	frame  0, OAM_2ccc4

.script_265be
	frame  0, OAM_2cce4

.script_265c1
	frame  0, OAM_2d901

.script_265c4
	frame  0, OAM_2d8e1

.script_265c7
	frame  0, OAM_2dae9

.script_265ca
	frame  0, OAM_2db71

.script_265cd
	frame  0, OAM_2dbe9

.script_265d0
	frame  0, OAM_2d8d9

.script_265d3
	frame  0, OAM_2dbf1

.script_265d6
	frame  0, OAM_2dbad

.script_265d9
	jump_abs AnimScript_243f6

SECTION "Bank 9@65dc", ROMX[$65dc], BANK[$9]

AnimScript_265dc:
	frame 128, OAM_2d8b8
	script_repeat 4
	frame  6, OAM_2ccfc
	frame  6, OAM_2cd1c
	frame  6, OAM_2cd3c
	frame  6, OAM_2cd5c
	script_repeat_end
	frame  0, OAM_2d8b8

AnimScript_265f1:
	frame  8, OAM_2d8c1
	frame  8, OAM_2d8c9
	frame  8, OAM_2d8d1
	frame  8, OAM_2d8c9
	frame  8, OAM_2d8c1
	frame  8, OAM_2d8c9
	frame 30, OAM_2d8d9
	script_end

AnimScript_26607:
	script_delay 120
	script_delay 160
	script_delay 96
	script_delay 80
	script_delay 64
	jump_abs AnimScript_2490b

AnimScript_26614:
	frame 156, OAM_2d8b8
	script_delay 160
	script_delay 96
	script_delay 80
	frame  0, OAM_2cb30

AnimScript_26620:
	script_repeat 4
	frame  4, OAM_2dc25
	frame  4, OAM_2dc2d
	frame  4, OAM_2dc3d
	frame  4, OAM_2dc45
	script_repeat_end
	frame  5, OAM_2dc25
	frame  5, OAM_2dc2d
	frame  5, OAM_2dc3d
	create_object AnimScript_2490b, MotionScript_30775, Data_3425
	create_object AnimScript_2490b, MotionScript_3076b, Data_3425
	create_object AnimScript_2490b, MotionScript_30761, Data_3425
	create_object AnimScript_2490b, MotionScript_30757, Data_3425
	frame 100, OAM_2dc01
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
	frame 25, OAM_2dc1d
	script_end

AnimScript_26676:
	frame 80, OAM_2cd98
	play_sfx SFX_23
	frame 16, OAM_2cdcc
	frame 16, OAM_2ce00
	frame  0, OAM_2ce34

AnimScript_26686:
	frame 80, OAM_2ce34
	set_motion_script MotionScript_30008
	script_delay 80
	set_motion_script MotionScript_32887
	script_delay 128
	frame 32, OAM_2ce68
	frame 32, OAM_2ce98
	frame 32, OAM_2ced0
	frame 32, OAM_2cf20
	set_motion_script MotionScript_32893
	frame  0, OAM_2cf20

AnimScript_266ab:
	frame 80, OAM_2d8b8
	frame  0, OAM_2cf90

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
	frame  5, OAM_2dc91
	frame  5, OAM_2dc9d
	frame  5, OAM_2dca9
	frame  5, OAM_2dcb5
	frame  5, OAM_2dcc1
	frame  5, OAM_2dccd
	frame  5, OAM_2dcd9
	frame  5, OAM_2dce5
	script_repeat_end
	script_ret

AnimScript_266f5:
.loop
	frame  2, OAM_2dc91
	frame  2, OAM_2dc9d
	frame  2, OAM_2dca9
	frame  2, OAM_2dcb5
	frame  2, OAM_2dcc1
	frame  2, OAM_2dccd
	frame  2, OAM_2dcd9
	frame  2, OAM_2dce5
	jump_rel .loop

AnimScript_2670f:
	play_music MUSIC_SPARKLING_STAR
	script_call AnimScript_248d2
	frame 20, OAM_2dbc9
	frame 40, OAM_2d8e1
	script_repeat 3
	frame 12, OAM_2d8c1
	frame 10, OAM_2d8c9
	frame 12, OAM_2d8d1
	frame 10, OAM_2d8c9
	script_repeat_end
	script_call AnimScript_248d2
	script_call AnimScript_248e5
	script_call AnimScript_248d2
	frame  0, OAM_2d8e1

AnimScript_26737:
	frame 200, OAM_2cfbc
	frame 21, OAM_2cfbc
	frame  0, OAM_2cf94

AnimScript_26740:
	frame 200, OAM_2cfbc
	frame 21, OAM_2cfbc
	frame  0, OAM_2cfa4

AnimScript_26749:
	create_object AnimScript_2676f, MotionScript_329ad, Data_3425
	frame 50, OAM_2cfbc
	create_object AnimScript_2676f, MotionScript_329d3, Data_3425
	frame 90, OAM_2cfbc
	create_object AnimScript_2676f, MotionScript_329f2, Data_3425
	frame 64, OAM_2cfbc
	set_motion_script MotionScript_31767
	frame 136, OAM_2cfbc
AnimScript_2676f:
	frame  0, OAM_2cfbc

AnimScript_26772:
	frame  0, OAM_2cfc0

AnimScript_26775:
.loop
	frame 12, OAM_2cfc4
	frame 12, OAM_2cfcc
	frame 12, OAM_2cfd4
	frame 12, OAM_2cfdc
	jump_rel .loop

AnimScript_26783:
.loop
	frame 12, OAM_2cfe4
	frame 12, OAM_2cfec
	frame 12, OAM_2cff4
	frame 12, OAM_2cffc
	jump_rel .loop

AnimScript_26791:
.loop
	frame 13, OAM_2d004
	frame 13, OAM_2d00c
	frame 13, OAM_2d014
	frame 13, OAM_2d01c
	jump_rel .loop

AnimScript_2679f:
.loop
	frame 11, OAM_2d024
	frame 11, OAM_2d02c
	frame 11, OAM_2d034
	frame 11, OAM_2d03c
	jump_rel .loop

AnimScript_267ad:
.loop
	frame 12, OAM_2d044
	frame 12, OAM_2d04c
	frame 12, OAM_2d054
	frame 12, OAM_2d05c
	jump_rel .loop

AnimScript_267bb:
.loop
	frame 18, OAM_2d064
	frame 18, OAM_2d068
	frame 18, OAM_2d06c
	frame 18, OAM_2d070
	jump_rel .loop

AnimScript_267c9:
.loop
	frame 16, OAM_2d074
	frame 16, OAM_2d078
	frame 16, OAM_2d07c
	frame 16, OAM_2d080
	jump_rel .loop

AnimScript_267d7:
	frame  0, OAM_2d084

AnimScript_267da:
	frame  0, OAM_2d094

AnimScript_267dd:
	frame 64, OAM_2cf20
	play_sfx SFX_EXPLOSION
	frame  0, OAM_2d0b4

AnimScript_267e7:
	frame 64, OAM_2d8b8
	script_repeat 7
	frame  1, OAM_2d0e4
	frame  1, OAM_2d0fc
	frame  1, OAM_2d110
	frame  1, OAM_2d128
	frame  1, OAM_2d13c
	frame  1, OAM_2d154
	frame  1, OAM_2d168
	script_repeat_end
	frame 30, OAM_2d194
	play_sfx SFX_13
	frame  0, OAM_2d194

AnimScript_2680c:
	frame 64, OAM_2d8b8
	frame  0, OAM_2d2ac

AnimScript_26812:
	frame  0, OAM_2cfbc

AnimScript_26815:
	frame 11, OAM_2d8b8
AnimScript_26818:
	frame 12, OAM_2d29c
AnimScript_2681b:
	frame 11, OAM_2d8b8
AnimScript_2681e:
	frame 11, OAM_2d8b8
AnimScript_26821:
	frame 12, OAM_2d29c
	jump_rel AnimScript_26815

AnimScript_26826:
	frame 44, OAM_2d198
	play_sfx SFX_BUMP
	frame 32, OAM_2d1b0
	frame 80, OAM_2d1bc
	frame 32, OAM_2d1d4
	script_repeat 3
	frame 16, OAM_2d1d4
	frame 10, OAM_2d1ec
	script_repeat_end
	frame 64, OAM_2d1ec
	frame  8, OAM_2d204
	frame  8, OAM_2d234
	play_sfx SFX_JUMP
	frame  0, OAM_2d264

AnimScript_2684f:
.loop
	frame 20, OAM_2cfbc
	create_object AnimScript_26865, MotionScript_30008, Data_3425
	frame 20, OAM_2cfbc
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
	frame 15, OAM_2d8b8
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
	frame  2, OAM_2d8b8
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
	frame  1, OAM_2d8b8
	frame  6, OAM_2d2c4
	frame  6, OAM_2d2e4
	frame  6, OAM_2d304
	frame  6, OAM_2d324
	frame  6, OAM_2d2c4
	frame  6, OAM_2d2e4
	frame  4, OAM_2d35c
	frame  6, OAM_2d344
	frame  6, OAM_2d3f4
	frame  6, OAM_2d2c4
	frame  6, OAM_2d2e4
	frame  6, OAM_2d304
	frame  6, OAM_2d324
	frame  1, OAM_2d5cc
	frame  1, OAM_2d564
	frame  6, OAM_2d2c4
	frame  6, OAM_2d2e4
	frame  6, OAM_2d304
	frame  6, OAM_2d324
	frame  6, OAM_2d2c4
	frame  6, OAM_2d2e4
	frame  6, OAM_2d304
	frame  6, OAM_2d324
	play_sfx SFX_08
	frame  6, OAM_2d5cc
	frame  4, OAM_2d564
	frame  4, OAM_2d5cc
	frame  3, OAM_2d4b4
	frame  3, OAM_2d5cc
	frame  3, OAM_2d46c
	frame  3, OAM_2d5cc
	frame  3, OAM_2d484
	frame  4, OAM_2d5cc
	frame  5, OAM_2d49c
	frame  6, OAM_2d5cc
	frame  7, OAM_2d4b4
	frame  8, OAM_2d5cc
	frame  8, OAM_2d4b4
	frame  8, OAM_2d5cc
	script_repeat 17
	frame  2, OAM_2d46c
	frame  3, OAM_2d484
	frame  2, OAM_2d49c
	frame  3, OAM_2d4b4
	script_repeat_end
	frame  4, OAM_2d46c
	frame  5, OAM_2d484
	frame  6, OAM_2d49c
	frame  7, OAM_2d4b4
	frame 16, OAM_2d46c
	frame 128, OAM_2d4b4
	frame 128, OAM_2d4b4
	frame  4, OAM_2d564
	frame 16, OAM_2d4b4
	frame  4, OAM_2d564
	frame 32, OAM_2d4b4
	frame  6, OAM_2d564
	frame  4, OAM_2d4b4
	frame 96, OAM_2d564
	frame  6, OAM_2d57c
	frame 16, OAM_2d3f4
	frame  6, OAM_2d57c
	frame 48, OAM_2d3f4
	script_repeat 11
	play_sfx SFX_SWALLOW
	frame  8, OAM_2d4cc
	frame  8, OAM_2d40c
	script_repeat_end
	script_repeat 11
	play_sfx SFX_17
	frame  6, OAM_2d50c
	frame  6, OAM_2d52c
	script_repeat_end
	frame  2, OAM_2d564
	script_repeat 10
	frame  6, OAM_2d3b4
	frame  2, OAM_2d3b4
	frame  6, OAM_2d3d4
	frame  2, OAM_2d3d4
	script_repeat_end
	script_end

AnimScript_26a67:
	frame 10, OAM_2d8b8
	frame 10, OAM_2d604
	frame  8, OAM_2d604
	frame  4, OAM_2d604
	script_end

AnimScript_26a74:
	frame 10, OAM_2d8b8
	frame 10, OAM_2d864
	frame  6, OAM_2d864
	frame  4, OAM_2d864
	script_end

AnimScript_26a81:
	frame  1, OAM_2d8b8
	frame  6, OAM_2d2c4
	frame  6, OAM_2d2e4
	frame  6, OAM_2d304
	frame  6, OAM_2d324
	frame  6, OAM_2d2c4
	frame  6, OAM_2d2e4
	frame  4, OAM_2d35c
	frame  6, OAM_2d344
	frame  6, OAM_2d344
	frame  6, OAM_2d344
	frame  6, OAM_2d344
	frame  6, OAM_2d344
	frame  6, OAM_2d344
	frame  4, OAM_2d35c
	frame  6, OAM_2d35c
	frame 16, OAM_2d35c
	frame  6, OAM_2d35c
	frame 16, OAM_2d35c
	frame 16, OAM_2d35c
	frame 16, OAM_2d35c
	frame  6, OAM_2d37c
	frame 48, OAM_2d37c
	frame 16, OAM_2d394
	frame 16, OAM_2d3b4
	frame  3, OAM_2d394
	play_sfx SFX_23
	frame  6, OAM_2d37c
	frame  6, OAM_2d35c
	frame  6, OAM_2d37c
	frame 48, OAM_2d394
	frame  8, OAM_2d394
	script_repeat 4
	play_sfx SFX_JUMP
	frame  6, OAM_2d784
	frame  6, OAM_2d7a8
	frame  6, OAM_2d7cc
	play_sfx SFX_JUMP
	frame  6, OAM_2d7f0
	frame  6, OAM_2d814
	frame  6, OAM_2d838
	script_repeat_end
	script_repeat 3
	play_sfx SFX_JUMP
	frame  4, OAM_2d784
	frame  4, OAM_2d7a8
	frame  4, OAM_2d7cc
	play_sfx SFX_JUMP
	frame  4, OAM_2d7f0
	frame  4, OAM_2d814
	frame  4, OAM_2d838
	script_repeat_end
	play_sfx SFX_JUMP
	frame  4, OAM_2d3b4
	frame  4, OAM_2d3b4
	frame  8, OAM_2d35c
	frame  6, OAM_2d344
	play_sfx SFX_23
	frame  4, OAM_2d37c
	frame 128, OAM_2d37c
	frame 128, OAM_2d37c
	frame 128, OAM_2d37c
	frame 128, OAM_2d37c
	script_repeat 4
	play_sfx SFX_SWALLOW
	frame  6, OAM_2d73c
	frame  6, OAM_2d758
	play_sfx SFX_SWALLOW
	frame  6, OAM_2d73c
	frame  6, OAM_2d758
	frame 40, OAM_2d73c
	script_repeat_end
	play_sfx SFX_02
	frame 160, OAM_2d60c
	frame 128, OAM_2d60c
	frame 128, OAM_2d60c
	script_repeat 11
	frame  8, OAM_2d6d4
	frame  8, OAM_2d6f4
	frame  8, OAM_2d714
	script_repeat_end
	play_sfx SFX_02
	frame 16, OAM_2d60c
	frame  6, OAM_2d3d4
	frame 96, OAM_2d65c
	script_repeat 5
	frame 13, OAM_2d62c
	frame  8, OAM_2d62c
	frame 11, OAM_2d65c
	frame  8, OAM_2d65c
	frame 13, OAM_2d644
	frame  8, OAM_2d644
	frame 11, OAM_2d65c
	frame  8, OAM_2d65c
	script_repeat_end
	script_end

AnimScript_26b9b:
	frame 10, OAM_2d674
	frame  8, OAM_2d67c
	frame 10, OAM_2d684
	frame  8, OAM_2d67c
	frame 10, OAM_2d674
	frame  2, OAM_2d67c
	frame 48, OAM_2d68c
	frame 16, OAM_2d694
	frame  6, OAM_2d68c
	frame 16, OAM_2d69c
	frame  6, OAM_2d68c
	frame 48, OAM_2d68c
	frame 10, OAM_2d68c
	frame 128, OAM_2d68c
	frame 90, OAM_2d68c
	frame 10, OAM_2d674
	frame  8, OAM_2d67c
	frame 10, OAM_2d684
	frame  8, OAM_2d67c
	frame 10, OAM_2d674
	frame  4, OAM_2d67c
	frame 128, OAM_2d8b8
	frame 118, OAM_2d8b8
	frame 16, OAM_2d68c
	frame  8, OAM_2d6a4
	frame  8, OAM_2d6c4
	frame  8, OAM_2d6bc
	frame  8, OAM_2d68c
	script_repeat 3
	frame  6, OAM_2d6a4
	frame  6, OAM_2d6c4
	frame  6, OAM_2d6bc
	frame  6, OAM_2d68c
	script_repeat_end
	frame 128, OAM_2d734
	frame 128, OAM_2d734
	frame 128, OAM_2d68c
	frame 128, OAM_2d68c
	frame 16, OAM_2d774
	frame 176, OAM_2d77c
	frame 32, OAM_2d68c
	script_repeat 11
	frame 10, OAM_2d674
	frame  8, OAM_2d67c
	frame 10, OAM_2d684
	frame  8, OAM_2d67c
	script_repeat_end
	script_end

AnimScript_26c23:
	frame  0, OAM_2d884

AnimScript_26c26:
	set_scripts AnimScript_26c23, MotionScript_32ed4

AnimScript_26c2b:
	set_scripts AnimScript_26c23, MotionScript_32ee3

AnimScript_26c30:
	set_update_func Func_14200, AnimScript_26c3e
.loop
	frame 40, OAM_2d89c
	frame 40, OAM_2d8a4
	jump_abs .loop

AnimScript_26c3e:
	play_sfx SFX_GAME_START
	jump_if_equal wd3cf, $01, .script_26c8a
	set_motion_script MotionScript_32f58
	frame 40, OAM_2d89c
	frame 40, OAM_2d8a4
	frame 44, OAM_2d89c
	frame  4, OAM_2d8a4
	play_sfx SFX_PUFF
	frame  7, OAM_2dbad
	frame 15, OAM_2d89c
	frame  4, OAM_2d8a4
	play_sfx SFX_PUFF
	frame  7, OAM_2dbad
	frame 10, OAM_2d8a4
	play_sfx SFX_08
	frame 60, OAM_2d8b0
	frame  8, OAM_2d8b9
	script_repeat 4
	frame  7, OAM_2d8c1
	frame  5, OAM_2d8c9
	frame  7, OAM_2d8d1
	frame  5, OAM_2d8c9
	script_repeat_end
	script_end
.script_26c8a
	play_sfx SFX_19
	set_motion_script MotionScript_32faa
	script_repeat 2
	frame 35, OAM_2d89c
	frame 35, OAM_2d8a4
	script_repeat_end
	frame 10, OAM_2d89c
	play_sfx SFX_DAMAGE
.script_26ca3
	frame  4, OAM_2dbe1
	create_object AnimScript_264fa, MotionScript_3082f, Data_3425
	jump_rel .script_26ca3

AnimScript_26caf:
	set_update_func Func_14200, AnimScript_26cbc
.loop
	frame 40, OAM_2d8b8
	frame 40, OAM_2d8ac
	jump_rel .loop

AnimScript_26cbc:
	jump_if_equal wd3cf, $00, .loop
	script_end
.loop
	script_repeat 2
	frame 20, OAM_2d8b8
	frame 20, OAM_2d8ac
	script_repeat_end
	script_end

AnimScript_26ccd:
	frame 10, OAM_2d87c
	frame 50, OAM_2d884
	frame 120, OAM_2d894
	frame  5, OAM_2d884
	frame  5, OAM_2d88c
	script_delay 150
	set_value wd3d0, $01
	set_flags hKirbyFlags6, $ff, $80
	script_end

AnimScript_26ce8:
	frame 10, OAM_2d87c
	frame 10, OAM_2d884
	frame  0, OAM_2d87c

AnimScript_26cf1:
	frame  2, OAM_2d884
	frame 26, OAM_2d88c
	set_value wd3d0, $01
	set_flags hKirbyFlags6, $80, $00
	frame  0, OAM_2d88c

AnimScript_26d03:
.loop
	frame  6, OAM_2e7b9
	frame  6, OAM_2e7d1
	frame  6, OAM_2e7e9
	frame  6, OAM_2e801
	jump_rel .loop

AnimScript_26d11:
	frame  2, OAM_2e7b9
	frame  2, OAM_2e7d1
	frame  2, OAM_2e7e9
	frame  2, OAM_2e801
	jump_abs AnimScript_26d11

AnimScript_26d20:
.loop
	frame 16, OAM_2e7b9
	frame 16, OAM_2e7d1
	frame 16, OAM_2e7e9
	frame 16, OAM_2e801
	jump_rel .loop
; 0x26d2e

SECTION "Bank 9@6d67", ROMX[$6d67], BANK[$9]

AnimScript_26d67:
	frame  0, OAM_2e4a9

AnimScript_26d6a:
	frame 72, OAM_2e879
	script_repeat 2
	frame  1, OAM_2e7b9
	frame  1, OAM_2e879
	script_repeat_end
	frame 40, OAM_2e7b9
	frame  8, OAM_2e7d1
	frame  8, OAM_2e7e9
	frame  8, OAM_2e801
	script_repeat 3
	frame  3, OAM_2e7b9
	frame  3, OAM_2e7d1
	frame  3, OAM_2e7e9
	frame  3, OAM_2e801
	script_repeat_end
	script_repeat 6
	frame  1, OAM_2e7b9
	frame  1, OAM_2e7d1
	frame  1, OAM_2e7e9
	frame  1, OAM_2e801
	script_repeat_end
	play_sfx SFX_BOSS_DEFEAT
	script_repeat 6
	frame  2, OAM_2e879
	frame  1, OAM_2e469
	frame  1, OAM_2e429
	script_repeat_end
	script_repeat 3
	frame  8, OAM_2e469
	frame  8, OAM_2e429
	script_repeat_end
	frame  0, OAM_2e469

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
	frame 20, OAM_2e529
	frame 20, OAM_2e569
	jump_rel .script_26dbc
.script_26df4
	frame 20, OAM_2e5a9
	frame 20, OAM_2e5e9
	jump_rel .script_26dbc
.script_26dfc
	frame 20, OAM_2e4a9
	frame 20, OAM_2e4e9
	jump_rel .script_26dbc
.script_26e04
	frame 20, OAM_2e429
	frame 20, OAM_2e469
	jump_rel .script_26dbc

AnimScript_26e0c:
.script_26e0c
	branch_kirby_pos .script_26e13, .script_26e1b
.script_26e13
	frame  2, OAM_2e429
	frame  2, OAM_2e469
	jump_rel .script_26e0c
.script_26e1b
	frame  2, OAM_2e4a9
	frame  2, OAM_2e4e9
	jump_rel .script_26e0c

AnimScript_26e23:
.script_26e23
	branch_kirby_pos .script_26e2a, .script_26e32
.script_26e2a
	frame  8, OAM_2e429
	frame  8, OAM_2e469
	jump_rel .script_26e23
.script_26e32
	frame  8, OAM_2e4a9
	frame  8, OAM_2e4e9
	jump_rel .script_26e23

AnimScript_26e3a:
.loop
	frame  8, OAM_2e629
	frame  8, OAM_2e669
	jump_rel .loop

AnimScript_26e42:
.loop
	frame  8, OAM_2e6a9
	frame  8, OAM_2e6e9
	jump_rel .loop
; 0x26e4a

SECTION "Bank 9@6ef6", ROMX[$6ef6], BANK[$9]

AnimScript_26ef6:
	frame  0, OAM_2d8b8

AnimScript_26ef9:
	create_object AnimScript_26fbd, MotionScript_3365a, StandardEnemyProperties
	frame  4, OAM_2d8b8
	frame 10, OAM_2c4a0
	frame  4, OAM_2d8b8
	frame  5, OAM_2c4a0
	frame 12, OAM_2c4a8
	script_repeat 9
	frame  6, OAM_2c4c0
	frame  6, OAM_2c4b8
	script_repeat_end
	frame  4, OAM_2c4b8
	frame  5, OAM_2c4d8
	set_pal_dark
	frame  5, OAM_2c4d8
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_26f2a:
	create_object AnimScript_26fbd, MotionScript_33670, StandardEnemyProperties
	frame  4, OAM_2d8b8
	frame 10, OAM_2c4a0
	frame  4, OAM_2d8b8
	frame  5, OAM_2c4a0
	frame 12, OAM_2c4a8
	script_repeat 9
	frame  6, OAM_2c4d0
	frame  6, OAM_2c4c8
	script_repeat_end
	frame  4, OAM_2c4c8
	frame  5, OAM_2c4d8
	set_pal_dark
	frame  5, OAM_2c4d8
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_26f5b:
	create_object AnimScript_26fbd, MotionScript_33670, StandardEnemyProperties
	frame  4, OAM_2d8b8
	frame 10, OAM_2c4a0
	frame  4, OAM_2d8b8
	frame  5, OAM_2c4a0
	frame 12, OAM_2c4e0
	script_repeat 9
	frame  6, OAM_2c500
	frame  6, OAM_2c508
	script_repeat_end
	frame  4, OAM_2c508
	frame  5, OAM_2c510
	set_pal_dark
	frame  5, OAM_2c510
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_26f8c:
	create_object AnimScript_26fbd, MotionScript_3365a, StandardEnemyProperties
	frame  4, OAM_2d8b8
	frame 10, OAM_2c4a0
	frame  4, OAM_2d8b8
	frame  5, OAM_2c4a0
	frame 12, OAM_2c4e0
	script_repeat 9
	frame  6, OAM_2c4f0
	frame  6, OAM_2c4f8
	script_repeat_end
	frame  4, OAM_2c4f8
	frame  5, OAM_2c510
	set_pal_dark
	frame  5, OAM_2c510
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_26fbd:
	play_sfx SFX_30
	frame  0, OAM_2c494

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
	frame  4, OAM_2c4b8
	frame  4, OAM_2c4c0
	script_repeat_end
	frame  4, OAM_2c4b8
	frame  4, OAM_2c4c0
	frame 20, OAM_2c4b0
	frame 10, OAM_2c4b8
	create_object AnimScript_27027, MotionScript_3376c, GordoProperties
	play_sfx SFX_JUMP
	frame 10, OAM_2c4b8
	frame 20, OAM_2c4b0
	script_repeat 5
	frame  4, OAM_2c4b8
	frame  4, OAM_2c4c0
	script_repeat_end
	frame  5, OAM_2c4d8
	set_pal_dark
	frame  5, OAM_2c4d8
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_27027:
	position_offset -16, 0
	jump_abs AnimScript_24572

AnimScript_2702d:
.loop
	frame  8, OAM_2c4d0
	frame  8, OAM_2c4c8
	jump_rel .loop

AnimScript_27035:
.loop
	frame  8, OAM_2c4f0
	frame  8, OAM_2c4f8
	jump_rel .loop

AnimScript_2703d:
	position_offset -16, 0
	frame 80, OAM_2c494
	play_sfx SFX_JUMP
	frame  0, OAM_2c494
; 0x2704a

SECTION "Bank 9@70a0", ROMX[$70a0], BANK[$9]

AnimScript_270a0:
	script_delay 1
	play_sfx SFX_NONE
	branch_kirby_pos .script_270ad, .script_270b5
.script_270ad
	frame  8, OAM_2c7c8
	frame  8, OAM_2c7f8
	jump_rel .script_270ad
.script_270b5
	frame  8, OAM_2c7e0
	frame  8, OAM_2c810
	jump_rel .script_270b5

AnimScript_270bd:
.loop
	frame  4, OAM_2c828
	frame 12, OAM_2c860
	frame 10, OAM_2c828
	jump_rel .loop

AnimScript_270c8:
.loop
	frame  4, OAM_2c844
	frame 12, OAM_2c87c
	frame 10, OAM_2c844
	jump_rel .loop

AnimScript_270d3:
.loop
	frame  4, OAM_2c9a0
	frame 12, OAM_2c9e8
	frame 10, OAM_2c9a0
	jump_rel .loop

AnimScript_270de:
.loop
	frame  4, OAM_2c9c4
	frame 12, OAM_2ca0c
	frame 10, OAM_2c9c4
	jump_rel .loop

AnimScript_270e9:
	frame  6, OAM_2c9a0
	frame  0, OAM_2c9a0

AnimScript_270ef:
	frame  6, OAM_2c9c4
	frame  0, OAM_2ca0c

AnimScript_270f5:
	play_sfx SFX_23
	set_motion_script MotionScript_337bb.script_33817
	frame  0, OAM_2c8c8

AnimScript_27101:
	play_sfx SFX_23
	set_motion_script MotionScript_337bb.script_33835
	frame  0, OAM_2c8e0

AnimScript_2710d:
	frame 16, OAM_2c8b8
	play_sfx SFX_DAMAGE
	frame 64, OAM_2c898
	create_object AnimScript_27459, MotionScript_33a74, Properties_3648
	create_object AnimScript_27459, MotionScript_33a81, Properties_3648
	frame  0, OAM_2c8b8

AnimScript_27128:
	play_sfx SFX_34
	set_motion_script MotionScript_337bb.script_3394a
	frame 15, OAM_2c968
	set_value wd3d2, $00
.script_27138
	frame  1, OAM_2c968
	script_exec Func_4b19
	jump_if_equal wd3d2, $ff, .script_2714f
	jump_if_equal wd3d2, $32, .script_27187
	inc_value wd3d2
	jump_rel .script_27138
.script_2714f
	script_exec Func_4bad
	set_value wd3d2, $00
.script_27156
	frame  1, OAM_2c968
	jump_if_equal wd3d2, $ff, .script_2716a
	jump_if_equal wd3d2, $32, .script_27187
	inc_value wd3d2
	jump_rel .script_27156
.script_2716a
	play_sfx SFX_35
	play_sfx SFX_02
	set_motion_script MotionScript_30008
	frame  4, OAM_2c8f8
	frame 48, OAM_2c928
	script_exec Func_4b5a
	play_sfx SFX_PUFF
	frame 56, OAM_2c968
.script_27187
	script_delay 20
	set_object_properties Properties_3604
	set_scripts AnimScript_270a0, MotionScript_337bb.script_33978

AnimScript_27193:
	play_sfx SFX_34
	set_motion_script MotionScript_337bb.script_33961
	frame 15, OAM_2c984
	set_value wd3d2, $00
.script_271a3
	frame  1, OAM_2c984
	script_exec Func_4b27
	jump_if_equal wd3d2, $ff, .script_271ba
	jump_if_equal wd3d2, $32, .script_271f2
	inc_value wd3d2
	jump_rel .script_271a3
.script_271ba
	script_exec Func_4bad
	set_value wd3d2, $00
.script_271c1
	frame  1, OAM_2c984
	jump_if_equal wd3d2, $ff, .script_271d5
	jump_if_equal wd3d2, $32, .script_271f2
	inc_value wd3d2
	jump_rel .script_271c1
.script_271d5
	play_sfx SFX_35
	play_sfx SFX_02
	set_motion_script MotionScript_30008
	frame  4, OAM_2c910
	frame 48, OAM_2c948
	script_exec Func_4b5f
	play_sfx SFX_PUFF
	frame 56, OAM_2c984
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
	frame 16, OAM_2ca30
	frame 10, OAM_2c828
	create_object AnimScript_27459, MotionScript_33a5a, Properties_3648
	frame 24, OAM_2ca70
	frame 10, OAM_2c828
	frame 16, OAM_2ca30
	set_motion_script MotionScript_337bb.script_339d1
	script_delay 10
.script_2723f
	set_object_properties Properties_360d
	set_motion_script MotionScript_337bb.script_338bf
	frame 16, OAM_2c9e8
	set_object_properties Properties_3604
	create_object AnimScript_27338, MotionScript_337bb.script_338c2, Properties_3636
	frame 16, OAM_2ca30
	play_sfx SFX_28
	frame 10, OAM_2c828
	frame 24, OAM_2ca70
	frame 10, OAM_2c828
	frame 16, OAM_2ca30
.script_2726b
	frame 16, OAM_2c9e8
	set_scripts .script_2726b, MotionScript_337bb.script_339d1
.script_27273
	set_motion_script MotionScript_339ea
	create_object AnimScript_273bb, MotionScript_339ea, Properties_3636
	frame 16, OAM_2ca50
	frame 10, OAM_2c844
	create_object AnimScript_27459, MotionScript_33a67, Properties_3648
	frame 24, OAM_2ca8c
	frame 10, OAM_2c844
	frame 16, OAM_2ca50
	set_motion_script MotionScript_337bb.script_339d1
	script_delay 100
.script_2729c
	set_motion_script MotionScript_337bb.script_338bf
	frame 16, OAM_2ca0c
	create_object AnimScript_273bb, MotionScript_337bb.script_338c2, Properties_3636
	frame 16, OAM_2ca50
	play_sfx SFX_28
	frame 10, OAM_2c844
	frame 24, OAM_2ca8c
	frame 10, OAM_2c844
	frame 16, OAM_2ca50
.script_272be
	frame  8, OAM_2ca0c
	set_scripts .script_272be, MotionScript_337bb.script_339d1
; 0x272c6

SECTION "Bank 9@7338", ROMX[$7338], BANK[$9]

AnimScript_27338:
	create_object AnimScript_2743e, MotionScript_33a8e, Properties_3628
	frame 16, OAM_2caa8
	create_object AnimScript_27442, MotionScript_33a94, Properties_3628
	frame  2, OAM_2cab0
	create_object AnimScript_27442, MotionScript_33a9a, Properties_3628
	frame  2, OAM_2cab8
	create_object AnimScript_27442, MotionScript_33aa0, Properties_3628
	frame  2, OAM_2cac0
	create_object AnimScript_27442, MotionScript_33aa6, Properties_3628
	frame  2, OAM_2cac8
	create_object AnimScript_27442, MotionScript_33aac, Properties_3628
	frame  2, OAM_2cad0
	create_object AnimScript_27446, MotionScript_33ab2, Properties_362f
	frame 24, OAM_2cad8
	create_object AnimScript_27442, MotionScript_33aac, Properties_3628
	frame  2, OAM_2cad0
	create_object AnimScript_27442, MotionScript_33aa6, Properties_3628
	frame  2, OAM_2cac8
	create_object AnimScript_27442, MotionScript_33aa0, Properties_3628
	frame  2, OAM_2cac0
	create_object AnimScript_27442, MotionScript_33a9a, Properties_3628
	frame  2, OAM_2cab8
	create_object AnimScript_27442, MotionScript_33a94, Properties_3628
	frame  2, OAM_2cab0
	create_object AnimScript_2743e, MotionScript_33a8e, Properties_3628
	frame 16, OAM_2caa8
	script_end

AnimScript_273bb:
	create_object AnimScript_2743e, MotionScript_33aa0, Properties_3628
	frame 16, OAM_2cac0
	create_object AnimScript_27442, MotionScript_33a9a, Properties_3628
	frame  2, OAM_2cab8
	create_object AnimScript_27442, MotionScript_33a94, Properties_3628
	frame  2, OAM_2cab0
	create_object AnimScript_27442, MotionScript_33a8e, Properties_3628
	frame  2, OAM_2caa8
	create_object AnimScript_27442, MotionScript_33ab8, Properties_3628
	frame  2, OAM_2cae0
	create_object AnimScript_27442, MotionScript_33abe, Properties_3628
	frame  2, OAM_2cae8
	create_object AnimScript_27446, MotionScript_33ac4, Properties_362f
	frame 24, OAM_2caf0
	create_object AnimScript_27442, MotionScript_33abe, Properties_3628
	frame  2, OAM_2cae8
	create_object AnimScript_27442, MotionScript_33ab8, Properties_3628
	frame  2, OAM_2cae0
	create_object AnimScript_27442, MotionScript_33a8e, Properties_3628
	frame  2, OAM_2caa8
	create_object AnimScript_27442, MotionScript_33a94, Properties_3628
	frame  2, OAM_2cab0
	create_object AnimScript_27442, MotionScript_33a9a, Properties_3628
	frame  2, OAM_2cab8
	create_object AnimScript_2743e, MotionScript_33aa0, Properties_3628
	frame 16, OAM_2cac0
	script_end

AnimScript_2743e:
	frame  8, OAM_2d8b8
	script_end

AnimScript_27442:
	frame  2, OAM_2d8b8
	script_end

AnimScript_27446:
	frame  6, OAM_2d8b8
	script_end

AnimScript_2744a:
	frame  0, OAM_2d8b8
; 0x2744d

SECTION "Bank 9@7459", ROMX[$7459], BANK[$9]

AnimScript_27459:
	play_sfx SFX_23
.loop
	frame  4, OAM_2dc91
	frame  4, OAM_2dc9d
	frame  4, OAM_2dca9
	frame  4, OAM_2dcb5
	frame  4, OAM_2dcc1
	frame  4, OAM_2dccd
	frame  4, OAM_2dcd9
	frame  4, OAM_2dce5
	jump_rel .loop

AnimScript_27477:
	set_object_properties Properties_363f
AnimScript_2747c:
	script_repeat 2
	frame 10, OAM_2de45
	frame 10, OAM_2de4d
	script_repeat_end
	script_repeat 4
	frame  6, OAM_2de45
	frame  6, OAM_2de4d
	script_repeat_end
	jump_abs AnimScript_2747c
; 0x27491
