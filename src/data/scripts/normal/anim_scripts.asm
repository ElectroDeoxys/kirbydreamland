AnimScript_20671:
.loop
	script_repeat 3
	frame 10, OAM_2def5
	create_object AnimScript_Bullet, MotionScript_Projectile_Up, ShotzoBulletProperties
	set_motion_script MotionScript_102a4
	frame 10, OAM_2def5
	script_repeat_end
	frame 96, OAM_2def5
	jump_abs .loop

AnimScript_2068c:
.loop
	create_object AnimScript_Bullet, MotionScript_102e9, ShotzoBulletProperties
	set_motion_script MotionScript_102bc
	frame 32, OAM_2df05
	create_object AnimScript_Bullet, MotionScript_102ef, ShotzoBulletProperties
	set_motion_script MotionScript_102b0
	frame 32, OAM_2defd
	create_object AnimScript_Bullet, MotionScript_102ec, ShotzoBulletProperties
	set_motion_script MotionScript_102a4
	frame 32, OAM_2def5
	create_object AnimScript_Bullet, MotionScript_102f2, ShotzoBulletProperties
	set_motion_script MotionScript_10298
	frame 32, OAM_2deed
	create_object AnimScript_Bullet, MotionScript_102e6, ShotzoBulletProperties
	set_motion_script MotionScript_1028c
	frame 32, OAM_2dee5
	create_object AnimScript_Bullet, MotionScript_102f2, ShotzoBulletProperties
	set_motion_script MotionScript_10298
	frame 32, OAM_2deed
	create_object AnimScript_Bullet, MotionScript_102ec, ShotzoBulletProperties
	set_motion_script MotionScript_102a4
	frame 32, OAM_2def5
	create_object AnimScript_Bullet, MotionScript_102ef, ShotzoBulletProperties
	set_motion_script MotionScript_102b0
	frame 32, OAM_2defd
	jump_abs .loop

AnimScript_20707:
.loop
	frame 30, OAM_2def5
	script_repeat 3
	frame 10, OAM_2def5
	create_object AnimScript_Bullet, MotionScript_102ec, ShotzoBulletProperties
	frame 20, OAM_2def5
	frame 10, OAM_2defd
	create_object AnimScript_Bullet, MotionScript_102ef, ShotzoBulletProperties
	frame 20, OAM_2defd
	frame  5, OAM_2def5
	frame  5, OAM_2deed
	create_object AnimScript_Bullet, MotionScript_102f2, ShotzoBulletProperties
	frame 20, OAM_2deed
	frame 100, OAM_2def5
	jump_abs .loop

AnimScript_KirbyDance:
	set_abs_pos
	set_object_properties Data_3425

	; check which half side of the screen Kirby is
	; if on the right side, then walk left
	; if on left side, then walk right
	script_exec ScriptFunc_CheckHalfSideOfScreen
	jump_if_equal wKirbySideOfScreen, $0, .walk_right

; walk left
	set_motion_script MotionScript_10ae8
.loop_1
	frame 10, OAM_2d8f1
	frame  6, OAM_2d8f9
	frame 10, OAM_2d901
	frame  6, OAM_2d8f9
	jump_rel .loop_1

.walk_right
	set_motion_script MotionScript_10af4
.loop_2
	frame 10, OAM_2d8c1
	frame  6, OAM_2d8c9
	frame 10, OAM_2d8d1
	frame  6, OAM_2d8c9
	jump_rel .loop_2

AnimScript_MainKirbyDance:
	set_motion_script MotionScript_10008
	; create extra Kirbys for dance
	create_object AnimScript_LeftKirbyDance, MotionScript_10008, Data_3425
	create_object AnimScript_RightKirbyDance, MotionScript_10008, Data_3425
	script_call AnimScript_KirbySpin_Right
	frame 55, OAM_2d8e1
	play_music MUSIC_VICTORY

AnimScript_KirbyDance_Common:
	jumptable wStage
	table_width 2
	dw AnimScript_KirbyDance_GreenGreens  ; GREEN_GREENS
	dw AnimScript_KirbyDance_CastleLololo ; CASTLE_LOLOLO
	dw AnimScript_KirbyDance_FloatIslands ; FLOAT_ISLANDS
	dw AnimScript_KirbyDance_BubblyClouds ; BUBBLY_CLOUDS
	assert_table_length NUM_STAGES - 1

AnimScript_LeftKirbyDance:
	position_offset -30, 0
	script_call AnimScript_208de
	frame 55, OAM_2d8e1
	jump_abs AnimScript_KirbyDance_Common

AnimScript_RightKirbyDance:
	position_offset 30, 0
	script_call AnimScript_208de
	frame 55, OAM_2d8e1
	jump_abs AnimScript_KirbyDance_Common

AnimScript_KirbyDance_GreenGreens:
	set_motion_script MotionScript_10b05
	script_repeat 2
	frame 10, OAM_2d8d1
	frame  6, OAM_2d8c9
	frame 10, OAM_2d8c1
	frame  6, OAM_2d8c9
	script_repeat_end
	frame  9, OAM_2d8d1
	frame  5, OAM_2d8c9
	script_call AnimScript_KirbySpin_Right
	script_call AnimScript_KirbySpin_Right
	frame 31, OAM_2d8e1
	frame 24, OAM_2d8d9
	frame 55, OAM_2db69
	frame  8, OAM_2dbc9
	frame  4, OAM_2d8b9
	frame  8, OAM_2dbc5
	frame  4, OAM_2d8b9
	frame  8, OAM_2dbc9
	script_call AnimScript_KirbySpin_Left
	frame 23, OAM_2dbad
	frame 60, OAM_2d911
	set_value wStageTransitionCounter, 1
	script_delay 0

AnimScript_KirbyDance_CastleLololo:
	set_motion_script MotionScript_10b38
	frame 10, OAM_2d909
	frame 10, OAM_2dba9
	frame 10, OAM_2d8d9
	frame 10, OAM_2dbc5
	frame 20, OAM_2d8d9
	frame 18, OAM_2dbc9
	frame 60, OAM_2db69
	frame  9, OAM_2dbc9
	frame  9, OAM_2d8e1
	script_repeat 3
	frame  6, OAM_2dbe1
	frame  6, OAM_2dbe9
	frame  6, OAM_2dbf9
	frame  6, OAM_2dbf1
	script_repeat_end
	frame  6, OAM_2dbc9
	frame  2, OAM_2d8c9
	frame  4, OAM_2d8d1
	script_repeat 2
	frame  6, OAM_2dbe1
	frame  6, OAM_2dbe9
	frame  6, OAM_2dbf9
	frame  6, OAM_2dbf1
	script_repeat_end
	script_call AnimScript_KirbySpin_Right
	frame 60, OAM_2d8e1
	set_value wStageTransitionCounter, 1
	script_delay 0

AnimScript_KirbyDance_FloatIslands:
	set_motion_script MotionScript_10b98
	frame 60, OAM_2d909
	frame 20, OAM_2dbad
	script_repeat 2
	frame  6, OAM_2dbe1
	frame  6, OAM_2dbe9
	frame  6, OAM_2dbf9
	frame  6, OAM_2dbf1
	script_repeat_end
	frame 31, OAM_2d8e1
	script_repeat 2
	frame 10, OAM_2d909
	frame 30, OAM_2db71
	script_repeat_end
	script_call AnimScript_KirbySpin_Right
	script_call AnimScript_KirbySpin_Right
	frame 32, OAM_2dbad
	frame 60, OAM_2d911
	set_value wStageTransitionCounter, 1
	script_delay 0

AnimScript_KirbyDance_BubblyClouds:
	set_motion_script MotionScript_10bda
	frame 60, OAM_2dbc5
	frame 20, OAM_2dbc9
	frame 16, OAM_2d8d9
	frame 32, OAM_2d909
	frame 16, OAM_2d8d9
	frame 16, OAM_2dbc9
	frame 20, OAM_2db71
	frame 20, OAM_2dba9
	frame 20, OAM_2d909
	frame 20, OAM_2dba9
	script_call AnimScript_KirbySpin_Left
	script_call AnimScript_KirbySpin_Left
	frame 32, OAM_2dbad
	frame 60, OAM_2d911
	set_value wStageTransitionCounter, 1
	script_delay 0

AnimScript_KirbySpin_Right:
	frame  4, OAM_2d8d1
	frame  4, OAM_2db81
	frame  4, OAM_2db89
	frame  4, OAM_2dba1
	frame  4, OAM_2db99
	frame  4, OAM_2d901
	script_ret

AnimScript_KirbySpin_Left:
	frame  4, OAM_2d901
	frame  4, OAM_2db99
	frame  4, OAM_2dba1
	frame  4, OAM_2db89
	frame  4, OAM_2db81
	frame  4, OAM_2d8d1
	script_ret

AnimScript_208de:
	frame  4, OAM_2dc91
	frame  4, OAM_2dc9d
	frame  4, OAM_2dca9
	frame  4, OAM_2dcb5
	frame  4, OAM_2dcc1
	frame  4, OAM_2dccd
	script_ret

AnimScript_Star:
	frame  0, OAM_2dc1d

AnimScript_BombItem:
	script_exec Func_4ad6
	set_update_func ObjFunc_CountdownToExplosion, 256
AnimScript_208fc:
	frame 162, OAM_2dc4d
.loop
	frame  2, OAM_2dc55
	frame  2, OAM_2dc4d
	jump_rel .loop

; unreferenced
AnimScript_20907:
	frame  0, OAM_2dc5d

AnimScript_2090a:
	script_exec Func_4ad6
	frame  0, OAM_2dc5d

; unreferenced
AnimScript_20910:
	frame  0, OAM_2dc65

AnimScript_SpicyFood:
	script_exec Func_4ad6
	frame  0, OAM_2dc65

; unreferenced
AnimScript_20919:
	frame  0, OAM_2dc6d

AnimScript_MintLeaf:
	script_exec Func_4ad6
	frame  0, OAM_2dc6d

; unreferenced
AnimScript_20922:
	frame  0, OAM_2dc75

AnimScript_20925:
	script_exec Func_4ad6
	frame  0, OAM_2dc75

AnimScript_2092b:
	frame  0, OAM_2dc7d

AnimScript_EnergyDrink:
	script_exec Func_4ad6
	frame  0, OAM_2dc7d

AnimScript_20934:
	frame  0, OAM_2dc81
AnimScript_20937:
.loop
	frame 16, OAM_2dc89
	set_pal_dark
	frame  8, OAM_2dc89
	set_pal_light
	jump_abs .loop

AnimScript_20946:
.loop
	script_exec Func_4ad6
	frame 16, OAM_2dc89
	set_pal_dark
	frame  8, OAM_2dc89
	set_pal_light
	jump_abs .loop

AnimScript_WarpStar:
.loop
	frame 20, OAM_2dc25
	frame 20, OAM_2dc2d
	frame 20, OAM_2dc3d
	frame 20, OAM_2dc45
	jump_abs .loop

AnimScript_20967:
	jump_if_equal wStage, MT_DEDEDE, .mt_dedede
	play_music MUSIC_SPARKLING_STAR
.star_loop
	frame  4, OAM_2dc91
	frame  4, OAM_2dc9d
	frame  4, OAM_2dca9
	frame  4, OAM_2dcb5
	frame  4, OAM_2dcc1
	frame  4, OAM_2dccd
	frame  4, OAM_2dcd9
	frame  4, OAM_2dce5
	jump_abs .star_loop

.mt_dedede
	set_motion_script MotionScript_10008
	jumptable wArea
	dw .star_loop ; MT_DEDEDE_0
	dw .star_loop ; MT_DEDEDE_1
	dw .star_loop ; MT_DEDEDE_2
	dw .star_loop ; MT_DEDEDE_3
	dw .star_loop ; MT_DEDEDE_4
	dw .star_loop ; MT_DEDEDE_5
	dw .mt_dedede_6 ; MT_DEDEDE_6
	dw .mt_dedede_7 ; MT_DEDEDE_7
	dw .mt_dedede_8 ; MT_DEDEDE_8
	dw .mt_dedede_9 ; MT_DEDEDE_9

.mt_dedede_6
	frame 120, OAM_2d8b8
	jump_rel .trigger_transition
.mt_dedede_8
	frame 120, OAM_2d8b8
	jump_rel .trigger_transition
.mt_dedede_7
	frame 120, OAM_2d8b8
	jump_rel .trigger_transition
.mt_dedede_9
	frame 120, OAM_2d8b8
.trigger_transition
	set_flags hKirbyFlags5, $00, KIRBY5F_TRIGGER_TRANSITION
	script_end

AnimScript_Projectile:
.loop
	play_sfx SFX_18
	frame  1, OAM_2de01
	frame  1, OAM_2de05
	frame  1, OAM_2de09
	frame  1, OAM_2de0d
	jump_abs .loop

; unreferenced
AnimScript_209d3:
	frame  0, OAM_2de29

AnimScript_Bullet:
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

AnimScript_Hit:
	frame  4, OAM_2dd21
	frame  4, OAM_2dd29
	frame  4, OAM_2dd31
	script_end

AnimScript_20a00:
	set_rel_pos
AnimScript_DefeatStars:
	play_sfx SFX_28
	jumptable_random %11
	dw AnimScript_20a0f
	dw AnimScript_20a3b
	dw AnimScript_20a76
	dw AnimScript_20ab7

AnimScript_20a0f:
	create_object AnimScript_Star, MotionScript_1083f, Data_3421
	create_object AnimScript_Star, MotionScript_10850, Data_3421
	frame  3, OAM_2dc25
	frame  3, OAM_2dc2d
	create_object AnimScript_Star, MotionScript_10835, Data_3421
	create_object AnimScript_Star, MotionScript_10846, Data_3421
	frame  3, OAM_2dc3d
	frame  3, OAM_2dc45
	frame  3, OAM_2dc25
	script_end

AnimScript_20a3b:
	create_object AnimScript_Star, MotionScript_10857, Data_3421
	create_object AnimScript_Star, MotionScript_1086b, Data_3421
	create_object AnimScript_Star, MotionScript_1087f, Data_3421
	create_object AnimScript_Star, MotionScript_10893, Data_3421
	script_delay 9
	create_object AnimScript_Star, MotionScript_10861, Data_3421
	create_object AnimScript_Star, MotionScript_10875, Data_3421
	create_object AnimScript_Star, MotionScript_10889, Data_3421
	create_object AnimScript_Star, MotionScript_1089d, Data_3421
	script_end

AnimScript_20a76:
	branch_kirby_pos .script_20a7d, .script_20a9a
.script_20a7d
	create_object AnimScript_Star, MotionScript_108a7, Data_3421
	create_object AnimScript_Star, MotionScript_108b4, Data_3421
	create_object AnimScript_Star, MotionScript_108c1, Data_3421
	create_object AnimScript_Star, MotionScript_108ce, Data_3421
	script_end
.script_20a9a
	create_object AnimScript_Star, MotionScript_108db, Data_3421
	create_object AnimScript_Star, MotionScript_108e8, Data_3421
	create_object AnimScript_Star, MotionScript_108f5, Data_3421
	create_object AnimScript_Star, MotionScript_10902, Data_3421
	script_end

AnimScript_20ab7:
	create_object AnimScript_20ad4, MotionScript_1090f, Data_3421
	create_object AnimScript_20ad4, MotionScript_10915, Data_3421
	create_object AnimScript_20ad4, MotionScript_1091b, Data_3421
	create_object AnimScript_20ad4, MotionScript_10921, Data_3421
	script_end

AnimScript_20ad4:
	frame 10, OAM_2dc1d
	set_motion_script MotionScript_10008
	script_delay 10
	script_end

; unreferenced
AnimScript_20adf:
	frame  4, OAM_2dd29
	frame  4, OAM_2dd31
	script_end

AnimScript_SmallStar:
	set_value wDisableBumpStars, TRUE
	frame 24, OAM_2dc1d
	set_value wDisableBumpStars, FALSE
	script_end

AnimScript_PulsingStar:
	frame  4, OAM_2dc1d
	frame  5, OAM_2dc25
	frame  5, OAM_2dc2d
	frame  5, OAM_2dc3d
	frame  5, OAM_2dc45
	frame  6, OAM_2dc1d
	script_end

AnimScript_20b05:
	play_sfx SFX_29
	create_object AnimScript_Explosion, MotionScript_10008, Data_3421
	create_object AnimScript_PulsingStar, MotionScript_Star_UpFast, Data_3421
	create_object AnimScript_PulsingStar, MotionScript_Star_RightFast, Data_3421
	create_object AnimScript_PulsingStar, MotionScript_Star_DownFast, Data_3421
	create_object AnimScript_PulsingStar, MotionScript_Star_LeftFast, Data_3421
	create_object AnimScript_PulsingStar, MotionScript_Star_UpRightFast, Data_3421
	create_object AnimScript_PulsingStar, MotionScript_Star_DownRightFast, Data_3421
	create_object AnimScript_PulsingStar, MotionScript_Star_DownLeftFast, Data_3421
	create_object AnimScript_PulsingStar, MotionScript_Star_UpLeftFast, Data_3421
	script_ret

AnimScript_20b49:
	create_object AnimScript_Explosion, MotionScript_10008, Data_3421
	create_object AnimScript_20b8d, MotionScript_10773, Data_3421
	create_object AnimScript_20b8d, MotionScript_10787, Data_3421
	create_object AnimScript_20b8d, MotionScript_10791, Data_3421
	create_object AnimScript_20b8d, MotionScript_1077d, Data_3421
	script_delay 18
	create_object AnimScript_20b8d, MotionScript_107af, Data_3421
	create_object AnimScript_20b8d, MotionScript_107b9, Data_3421
	create_object AnimScript_20b8d, MotionScript_1079b, Data_3421
	create_object AnimScript_20b8d, MotionScript_107b9, Data_3421
	script_delay 18
	script_ret

AnimScript_20b8d:
	frame  3, OAM_2dc1d
	frame  6, OAM_2dc25
	frame  0, OAM_2dc1d

AnimScript_20b96:
	frame  2, OAM_2d8b8
	script_end

AnimScript_DestructiveHit:
	script_exec Func_4a1c
	set_scripts AnimScript_Hit, MotionScript_10008

AnimScript_DestructiveExplosion:
	script_exec Func_4a1c
	set_object_properties Data_35b7
	set_scripts AnimScript_Explosion, MotionScript_10008

AnimScript_20baf:
	set_update_func Func_142a3, NULL
	jump_abs AnimScript_20000

AnimScript_BombAttack:
	set_flags wPowerUpAttack, $ff ^ POWERUP_MINT_LEAF, $00
	script_exec Func_4adf
	set_update_func Func_141b1, AnimScript_DestructiveExplosion
	set_scripts AnimScript_208fc, MotionScript_SpitStar

AnimScript_MikeAttack:
	set_flags wPowerUpAttack, $ff ^ POWERUP_MINT_LEAF, $00
	play_sfx SFX_00
	script_exec Func_4ae6
	set_scripts AnimScript_20925, MotionScript_10370

AnimScript_20bda:
	position_offset 0, 5
	play_sfx SFX_19
	set_update_func Func_141b1, AnimScript_DestructiveHit
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .loop_2

.loop_1
	frame  2, OAM_2dd11
	frame  2, OAM_2dd19
	jump_abs .loop_1

.loop_2
	frame  2, OAM_2dd01
	frame  2, OAM_2dd09
	jump_abs .loop_2

AnimScript_KirbyFall:
	frame  0, OAM_2d8d9

AnimScript_KirbyTumble:
.loop
	frame  4, OAM_2dbe1
	frame  4, OAM_2dbf1
	frame  4, OAM_2dbf9
	frame  4, OAM_2dbe9
	jump_abs .loop

AnimScript_KirbyDive:
	frame  0, OAM_2db69

AnimScript_20c13:
.loop
	frame 12, OAM_2d8f1
	frame  8, OAM_2d8f9
	frame 12, OAM_2d901
	frame  8, OAM_2d8f9
	jump_abs .loop

AnimScript_20c22:
.loop
	frame  8, OAM_2dba9
	frame  5, OAM_2d8e9
	frame  8, OAM_2dbad
	frame  5, OAM_2d8e9
	jump_abs .loop

AnimScript_20c31:
.loop
	frame  8, OAM_2d8d1
	frame  7, OAM_2db81
	frame  6, OAM_2db89
	frame  5, OAM_2dba1
	frame  4, OAM_2db99
	frame  4, OAM_2d901
	frame 47, OAM_2d8e1
	jump_abs .loop

AnimScript_20c49:
.loop
	frame 20, OAM_2d961
	frame 30, OAM_2d949
	jump_abs .loop

AnimScript_20c52:
.loop
	frame 12, OAM_2c1fc
	frame 24, OAM_2c204
	jump_abs .loop

AnimScript_20c5b:
.loop
	frame 80, OAM_2c1f4
	frame  8, OAM_2c1fc
	frame  8, OAM_2c204
	frame  8, OAM_2c1fc
	frame 40, OAM_2c204
	jump_abs .loop

AnimScript_20c6d:
	create_object AnimScript_20c7e, MotionScript_10008, Data_3421
	play_sfx SFX_30
	frame 1, OAM_2c1cc
	script_exec Func_4afb

AnimScript_20c7e:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	branch_kirby_pos .branch_1, .branch_2
.branch_1
	set_motion_script MotionScript_10db7
	script_repeat 6
	frame 4, OAM_2c1a4
	frame 4, OAM_2c19c
	script_repeat_end
	script_exec ScriptFunc_ResetImmuneFlag
	set_object_properties CappyProperties
	set_scripts AnimScript_20cc3, MotionScript_10ddf
.branch_2
	set_scripts AnimScript_20cad, MotionScript_10dcb

AnimScript_20cad:
	script_repeat 6
	frame 4, OAM_2c1b4
	frame 4, OAM_2c1ac
	script_repeat_end
	script_exec ScriptFunc_ResetImmuneFlag
	set_object_properties CappyProperties
	set_scripts AnimScript_20ccb, MotionScript_10de7

AnimScript_20cc3:
.loop
	script_call AnimScript_20cd3
	script_call AnimScript_20cdd
	jump_rel .loop

AnimScript_20ccb:
.loop
	script_call AnimScript_20cdd
	script_call AnimScript_20cd3
	jump_rel .loop

AnimScript_20cd3:
	script_repeat 12
	frame 17, OAM_2c19c
	frame 17, OAM_2c1a4
	script_repeat_end
	script_ret

AnimScript_20cdd:
	script_repeat 12
	frame 17, OAM_2c1ac
	frame 17, OAM_2c1b4
	script_repeat_end
	script_ret

AnimScript_20ce7:
.loop
	script_call AnimScript_20cf7
	script_call AnimScript_20d01
	jump_rel .loop

AnimScript_20cef:
.loop
	script_call AnimScript_20d01
	script_call AnimScript_20cf7
	jump_rel .loop

AnimScript_20cf7:
	script_repeat 3
	frame 17, OAM_2c19c
	frame 17, OAM_2c1a4
	script_repeat_end
	script_ret

AnimScript_20d01:
	script_repeat 3
	frame 17, OAM_2c1ac
	frame 17, OAM_2c1b4
	script_repeat_end
	script_ret

AnimScript_20d0b:
	set_update_func Func_140c2, AnimScript_20c6d
.loop
	frame 20, OAM_2c1c4
	frame 20, OAM_2c1bc
	jump_abs .loop

AnimScript_20d19:
.loop
	frame 20, OAM_2c1c4
	frame 20, OAM_2c1bc
	jump_abs .loop

; unreferenced
AnimScript_20d22:
	frame  0, OAM_2c1c4

; unreferenced
AnimScript_20d25:
	frame  0, OAM_2c1bc

AnimScript_20d28:
	script_repeat 10
	frame 10, OAM_2dec5
	frame 10, OAM_2decd
	script_repeat_end
	set_motion_script MotionScript_10e87
.loop
	frame  7, OAM_2dec5
	frame  7, OAM_2decd
	jump_abs .loop

AnimScript_20d3f:
.loop
	frame  9, OAM_2c17c
	frame  9, OAM_2c184
	jump_rel .loop

AnimScript_20d47:
.loop
	frame  9, OAM_2c18c
	frame  9, OAM_2c194
	jump_rel .loop

AnimScript_20d4f:
	position_offset 0, -10
	set_object_properties Data_352c
	set_update_func Func_141b1, AnimScript_20d79
	set_motion_script MotionScript_10ef1
	frame  0, OAM_2c17c

AnimScript_20d64:
	position_offset 0, -10
	set_object_properties Data_352c
	set_update_func Func_141b1, AnimScript_20d83
	set_motion_script MotionScript_10ef1
	frame  0, OAM_2c18c

AnimScript_20d79:
	set_object_properties PoppyBrosJrProperties
	set_scripts AnimScript_20d3f, MotionScript_10e96

AnimScript_20d83:
	set_object_properties PoppyBrosJrProperties
	set_scripts AnimScript_20d47, MotionScript_10ea1

; unreferenced
AnimScript_20d8d:
	set_update_func Func_140c2, AnimScript_20de0
AnimScript_20d92:
	set_motion_script MotionScript_10f06
.loop
	script_call AnimScript_20db1
	script_call AnimScript_20dbb
	jump_rel .loop

; unreferenced
AnimScript_20d9f:
	set_update_func Func_140c2, AnimScript_20de0

AnimScript_20da4:
	set_motion_script MotionScript_10f0e
.loop
	script_call AnimScript_20dbb
	script_call AnimScript_20db1
	jump_rel .loop

AnimScript_20db1:
	script_repeat 9
	frame  3, OAM_2c224
	frame 16, OAM_2c23c
	script_repeat_end
	script_ret

AnimScript_20dbb:
	script_repeat 9
	frame  3, OAM_2c26c
	frame 16, OAM_2c284
	script_repeat_end
	script_ret

AnimScript_20dc5:
	script_repeat 3
	frame  3, OAM_2c224
	frame 16, OAM_2c23c
	script_repeat_end
AnimScript_20dce:
	script_repeat 3
	frame  3, OAM_2c26c
	frame 16, OAM_2c284
	script_repeat_end
	jump_abs AnimScript_20dc5

AnimScript_20dda:
	frame  0, OAM_2c224

; unreferenced
AnimScript_20ddd:
	frame  0, OAM_2c26c

AnimScript_20de0:
	set_object_properties Properties_353e
AnimScript_20de5:
	branch_kirby_pos .script_20de5, .script_20dfe
.script_20de5
	set_motion_script MotionScript_10f3c
	frame 30, OAM_2c254
	set_object_properties GrizzoProperties
	set_scripts AnimScript_20dc5, MotionScript_10f5a

.script_20dfe

; unreferenced
AnimScript_20dfe:
	set_motion_script MotionScript_10f4b
	frame 30, OAM_2c29c
	set_object_properties GrizzoProperties
	set_scripts AnimScript_20dce, MotionScript_10f6f

AnimScript_20e10:
.loop
	script_call AnimScript_20e20
	script_call AnimScript_20e3c
	jump_rel .loop

; unreferenced
AnimScript_20e18:
.loop
	script_call AnimScript_20e3c
	script_call AnimScript_20e20
	jump_rel .loop

AnimScript_20e20:
	set_update_func Func_140c2, AnimScript_20e2f
	script_repeat 9
	frame  3, OAM_2c2d4
	frame 16, OAM_2c2b4
	script_repeat_end
	script_ret

AnimScript_20e2f:
	create_object AnimScript_20de5, MotionScript_10008, Properties_353e
	position_offset 0, -16
	jump_abs AnimScript_20e8d

AnimScript_20e3c:
	set_update_func Func_140c2, AnimScript_20e4b
	script_repeat 9
	frame  3, OAM_2c334
	frame 16, OAM_2c354
	script_repeat_end
	script_ret

AnimScript_20e4b:
	create_object AnimScript_20de5, MotionScript_10008, Properties_353e
	position_offset 0, -16
	jump_abs AnimScript_20e92

AnimScript_20e58:
	set_update_func Func_140c2, AnimScript_20e83
.loop
	frame 10, OAM_2c324
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
	jump_rel .loop

AnimScript_20e83:
	create_object AnimScript_20e9d, MotionScript_10f9c, Data_3559
	position_offset 0, -16
AnimScript_20e8d:
	frame  1, OAM_2c17c
	jump_rel AnimScript_20e95
AnimScript_20e92:
	frame  1, OAM_2c18c
AnimScript_20e95:
	set_object_properties PoppyBrosJrProperties
	script_exec Func_4afb

AnimScript_20e9d:
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

AnimScript_20ec6:
	play_sfx SFX_28
	branch_kirby_pos .script_20ed1, .script_20edb
.script_20ed1
	create_object AnimScript_20d4f, MotionScript_10008, PoppyBrosJrProperties
	jump_abs AnimScript_20a0f
.script_20edb
	create_object AnimScript_20d64, MotionScript_10008, PoppyBrosJrProperties
	jump_abs AnimScript_20a0f

; unreferenced
AnimScript_20ee5:
	script_end

; unreferenced
AnimScript_20ee6:
.loop
	script_call AnimScript_20ef6
	script_call AnimScript_20f05
	jump_rel .loop

; unreferenced
AnimScript_20eee:
.loop
	script_call AnimScript_20f05
	script_call AnimScript_20ef6
	jump_rel .loop

AnimScript_20ef6:
.loop
	frame 10, OAM_2c1d4
	frame 10, OAM_2c1ec
	frame 10, OAM_2c1e4
	frame 10, OAM_2c1dc
	jump_rel .loop

; unreferenced
AnimScript_20f04:
	script_ret

AnimScript_20f05:
.loop
	frame 10, OAM_2c1dc
	frame 10, OAM_2c1e4
	frame 10, OAM_2c1ec
	frame 10, OAM_2c1d4
	jump_rel .loop

; unreferenced
AnimScript_20f13:
	script_ret

AnimScript_PoppyBrosSr:
	jump_if_equal wd3f1, $00, .init
	script_end

.init
	set_object_properties Data_356b
	script_exec ScriptFunc_LockScrolling
	set_value wBossHPCounter, 3
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
	frame 45, OAM_2c088
.loop
	; scripted attacks
	script_call .JumpShort
	script_call .ThrowBombWithDelay
	script_call .JumpShort
	script_call .ThrowBombNoDelay
	script_call .JumpShort
	; random attack
	calltable_random %11
	dw .ThrowBombWithDelay
	dw .ThrowBombNoDelay
	dw .JumpLong
	dw .JumpLong
	jump_rel .loop

.JumpShort:
	set_motion_script MotionScript_PoppyBrosSr.JumpShort
	script_repeat 2
	frame  8, OAM_2c088
	frame  8, OAM_2c098
	frame  8, OAM_2c0a8
	frame 16, OAM_2c0b8
	frame  8, OAM_2c0a8
	frame  8, OAM_2c098
	frame  8, OAM_2c088
	script_repeat_end
	script_ret

.JumpLong:
	set_motion_script MotionScript_PoppyBrosSr.JumpMid
	frame 12, OAM_2c088
	frame 12, OAM_2c098
	frame 12, OAM_2c0b8
	frame 24, OAM_2c0a8
	frame 12, OAM_2c0b8
	frame 12, OAM_2c098
	frame 12, OAM_2c088
	set_motion_script MotionScript_PoppyBrosSr.JumpLong
	frame 15, OAM_2c088
	frame 15, OAM_2c098
	frame 15, OAM_2c0b8
	frame 30, OAM_2c0a8
	frame 15, OAM_2c0b8
	frame 15, OAM_2c098
	frame 15, OAM_2c088
	script_ret

.ThrowBombNoDelay:
	set_motion_script MotionScript_PoppyBrosSr.JumpHigh
	frame  6, OAM_2c0c8
	frame  6, OAM_2c0f0
	frame  6, OAM_2c10c
	frame  6, OAM_2c128
	frame  6, OAM_2c144
	frame  8, OAM_2c160
	frame  3, OAM_2c144
	frame  3, OAM_2c128
	play_sfx SFX_28
	create_object AnimScript_PoppyBrosSrBomb, MotionScript_PoppyBrosSrBombBounce, Data_3574
	frame  3, OAM_2c0dc
	frame  8, OAM_2c0c8
	frame 21, OAM_2c088
	script_ret

.ThrowBombWithDelay:
	set_motion_script MotionScript_PoppyBrosSr.JumpHigh
	frame  6, OAM_2c0c8
	frame  6, OAM_2c0f0
	frame  6, OAM_2c10c
	frame  6, OAM_2c128
	frame  6, OAM_2c144
	frame 40, OAM_2c160
	frame  3, OAM_2c144
	frame  3, OAM_2c128
	play_sfx SFX_28
	create_object AnimScript_PoppyBrosSrBomb, MotionScript_PoppyBrosSrBombFall, Data_3574
	frame  3, OAM_2c0dc
	frame  8, OAM_2c0c8
	script_ret

AnimScript_21004:
	set_value wd3f1, $01
	set_flags wConsumedItems, $00, 1 << 6
	script_exec ScriptFunc_EnableScrollingAndFadeOut
	script_exec_arg ScriptFunc_AddScore, SCORE_300
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	script_call AnimScript_20b49
	script_end

AnimScript_PoppyBrosSrBomb:
	position_offset -16, 8
	frame  0, OAM_2dc4d

AnimScript_WhispyWoods:
.loop_wait
	jump_if_equal wLevelYSection, $11, .init
	frame  1, OAM_2c000
	jump_abs .loop_wait

.init
	set_object_properties Data_3586
	set_value wBossHPCounter, 6
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
	frame 60, OAM_2c000
	script_exec Func_48a3
	set_value wd3cd, $01
	set_update_func Func_14172, Data_1c1c6
	script_call .BlinkTwice
	jump_random 50 percent + 1, .spawn_apples

.shoot_two_puffs
	script_repeat 2
	script_call .ShootPuff_Slow
	script_repeat_end
	script_call .BlinkTwice
	jump_random 13 percent - 1, .shoot_four_puffs
	jump_rel .spawn_apples

.shoot_four_puffs
	script_repeat 4
	script_call .ShootPuff_Fast
	frame 10, OAM_2c000
	script_repeat_end
	jump_random 25 percent + 1, .shoot_two_puffs

.spawn_apples
	script_repeat 3
	create_object AnimScript_WhispyWoodsApple_Fall, MotionScript_WhispyWoodsApple, Data_359d
	frame 30, OAM_2c000
	frame  4, OAM_2c00c
	frame  6, OAM_2c018
	frame  4, OAM_2c00c
	frame  6, OAM_2c000
	frame 40, OAM_2c000
	script_repeat_end
	script_call .BlinkTwice
	jump_random 25 percent + 1, .spawn_apples
	jump_rel .shoot_two_puffs

.BlinkTwice
	frame 20, OAM_2c000
	frame  3, OAM_2c00c
	frame  6, OAM_2c018
	frame  3, OAM_2c00c
	frame  4, OAM_2c000
	frame 20, OAM_2c000
	frame  3, OAM_2c00c
	frame  8, OAM_2c018
	frame  3, OAM_2c00c
	frame 10, OAM_2c000
	script_ret

.ShootPuff_Slow
	frame  1, OAM_2c068
	frame 10, OAM_2c078
	create_object AnimScript_WhispyWoodsPuff, MotionScript_WhispyWoodsPuff, Data_3596
	frame 14, OAM_2c078
	frame  1, OAM_2c068
	frame  1, OAM_2c058
	script_ret

.ShootPuff_Fast
	frame  1, OAM_2c068
	frame  5, OAM_2c078
	create_object AnimScript_WhispyWoodsPuff, MotionScript_WhispyWoodsPuff, Data_3596
	frame  5, OAM_2c078
	frame  1, OAM_2c068
	frame  1, OAM_2c058
	script_ret

AnimScript_210e7:
	frame  6, OAM_2c034
	frame 28, OAM_2c024
	script_exec Func_4897
	script_end

AnimScript_210f1:
	play_music MUSIC_NONE
	play_sfx SFX_29
	create_object AnimScript_20967, MotionScript_111c7, Data_3421
	script_call AnimScript_20b05
	script_exec_arg ScriptFunc_AddScore, SCORE_1000
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	frame 30, OAM_2d8b8
	set_value wClearScreenFlags, CLEAR_ACTIVE | CLEAR_NON_MIKE
	frame  0, OAM_2c044

AnimScript_WhispyWoodsPuff:
	frame  0, OAM_2dcf9

AnimScript_WhispyWoodsApple_Fall:
	frame  1, OAM_2c1d4
	script_repeat 3
	set_pal_dark
	script_delay 4
	set_pal_light
	script_delay 4
	script_repeat_end
	frame 42, OAM_2c1d4
	script_end

AnimScript_WhispyWoodsApple_RollLeft:
	play_sfx SFX_30
	frame 10, OAM_2c1ec
	frame 10, OAM_2c1e4
	frame 10, OAM_2c1dc
	frame 10, OAM_2c1d4
	frame  6, OAM_2c1ec
	frame  6, OAM_2c1e4
	frame  6, OAM_2c1dc
	frame  6, OAM_2c1d4
.loop
	frame  8, OAM_2c1ec
	frame  8, OAM_2c1e4
	frame  8, OAM_2c1dc
	frame  8, OAM_2c1d4
	jump_rel .loop

AnimScript_WhispyWoodsApple_RollRight:
	play_sfx SFX_30
	frame 10, OAM_2c1d4
	frame 10, OAM_2c1dc
	frame 10, OAM_2c1e4
	frame 10, OAM_2c1ec
	frame  6, OAM_2c1d4
	frame  6, OAM_2c1dc
	frame  6, OAM_2c1e4
	frame  6, OAM_2c1ec
.loop
	frame  8, OAM_2c1d4
	frame  8, OAM_2c1dc
	frame  8, OAM_2c1e4
	frame  8, OAM_2c1ec
	jump_rel .loop

AnimScript_WhispyWoodsScrollLocker:
.loop
	jump_if_equal wLevelYSection, $11, .lock_scroll
	frame  1, OAM_2d8b8
	jump_abs .loop

.lock_scroll
	script_exec ScriptFunc_LockScrolling
	script_end

AnimScript_21191:
	script_exec ScriptFunc_LockScrolling
	script_end

AnimScript_BossHPIncrementer:
	frame  1, OAM_2d8b8
	set_abs_pos
	set_position 20, 20
	set_value wBossHP, 0
	set_flags hHUDFlags, $00, HUD_UPDATE_LABEL | HUD_BOSS_BATTLE
.loop
	frame 10, OAM_2d8b8
	inc_value wBossHP
	set_flags hHUDFlags, $00, HUD_UPDATE_FIRST_ROW
	play_sfx SFX_RESTORE_HP
	dec_value wBossHPCounter
	jump_if_equal wBossHPCounter, 0, .end
	jump_rel .loop
.end
	script_end

; unreferenced
AnimScript_211c0:
	frame  0, OAM_2c47c

AnimScript_FallingGlunk:
.loop
	frame 10, OAM_2c47c
	frame 10, OAM_2c484
	frame 10, OAM_2c48c
	jump_abs .loop

; unreferenced
AnimScript_211cf:
	frame 32, OAM_2c484
	frame 32, OAM_2c48c
	frame  0, OAM_2c3fc

AnimScript_211d8:
.loop
	frame 20, OAM_2c3ec
	frame 20, OAM_2c3f4
	frame 20, OAM_2c3fc
	jump_abs .loop

AnimScript_ShootingGlunk:
.loop
	script_repeat 6
	frame 30, OAM_2c3ec
	frame 20, OAM_2c3f4
	script_repeat_end
	frame 50, OAM_2c3ec
	frame 15, OAM_2c3f4
	frame 10, OAM_2c3fc
	branch_kirby_pos .shoot_left, .shoot_right
	; unreachable
	jump_abs .loop

.shoot_left
	create_object AnimScript_21220, MotionScript_1123a, ProjectileProperties
	frame 80, OAM_2c3fc
	jump_abs .loop

.shoot_right
	create_object AnimScript_21220, MotionScript_11233, ProjectileProperties
	frame 80, OAM_2c3fc
	jump_abs .loop

; unreferenced
AnimScript_2121a:
	frame  0, OAM_2c408

; unreferenced
AnimScript_2121d:
	frame  0, OAM_2c404

AnimScript_21220:
.loop
	frame  2, OAM_2e899
	frame  2, OAM_2e89d
	frame  2, OAM_2e8a1
	frame  2, OAM_2e8a5
	jump_abs .loop

AnimScript_2122f:
.loop
	frame 30, OAM_2c3b4
	frame 20, OAM_2c3c0
	jump_abs .loop

AnimScript_21238:
	frame 30, OAM_2c3dc
	frame 40, OAM_2c3b4
	frame 14, OAM_2c3c0
	frame  8, OAM_2c3c0
	frame  3, OAM_2c3b4
	jump_abs AnimScript_2122f

AnimScript_2124a:
.loop
	frame  8, OAM_2c3b4
	frame  8, OAM_2c3c0
	jump_abs .loop

; unreferenced
AnimScript_21253:
	frame  8, OAM_2c3c8
	frame  8, OAM_2c3d4
	jump_abs AnimScript_21253

AnimScript_2125c:
.loop
	set_motion_script MotionScript_11297
	script_repeat 5
	frame  8, OAM_2c3b4
	frame  8, OAM_2c3c0
	script_repeat_end
	set_motion_script MotionScript_11276
	script_repeat 5
	frame  8, OAM_2c3c8
	frame  8, OAM_2c3d4
	script_repeat_end
	jump_rel .loop

AnimScript_2127a:
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
AnimScript_212a4:
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
	jump_abs AnimScript_2127a

AnimScript_212d1:
.loop
	frame  8, OAM_2c37c
	frame  8, OAM_2c384
	jump_abs .loop

AnimScript_212da:
.loop
	frame  8, OAM_2c394
	frame  8, OAM_2c39c
	jump_abs .loop

AnimScript_212e3:
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
AnimScript_2130d:
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
	jump_abs AnimScript_212e3

AnimScript_2133a:
	script_repeat 5
	frame  8, OAM_2c394
	frame  8, OAM_2c39c
	script_repeat_end
	frame  5, OAM_2c394
.loop
	frame  8, OAM_2c37c
	frame  8, OAM_2c384
	jump_abs .loop

AnimScript_2134f:
	frame 48, OAM_2c374
	frame 32, OAM_2c37c
	frame 32, OAM_2c384
	frame 32, OAM_2c37c
.loop
	frame 32, OAM_2c384
	frame 32, OAM_2c37c
	jump_rel .loop

AnimScript_21363:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	branch_kirby_pos .script_21372, .script_2137d

.script_21372
	script_repeat 10
	frame  4, OAM_2d8b8
	frame  4, OAM_2c41c
	script_repeat_end
	jump_rel AnimScript_21388

.script_2137d
	script_repeat 10
	frame  4, OAM_2d8b8
	frame  4, OAM_2c42c
	script_repeat_end
	jump_rel AnimScript_21388 ; useless jump

AnimScript_21388:
	branch_kirby_pos .script_21398, .script_2138f

.script_2138f
	frame 24, OAM_2c42c
	frame 12, OAM_2c434
	jump_abs AnimScript_21388

.script_21398
	frame 24, OAM_2c41c
	frame 12, OAM_2c424
	jump_abs AnimScript_21388

AnimScript_213a1:
.loop
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
	jump_abs .loop

AnimScript_213d3:
.loop
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
	jump_abs .loop

AnimScript_213fa:
.loop
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
	jump_abs .loop

AnimScript_21433:
.loop
	script_call AnimScript_21444
	jump_abs .loop

AnimScript_21439:
	set_scripts AnimScript_21433, MotionScript_102ce

AnimScript_2143e:
.loop
	script_call AnimScript_21444
	jump_abs .loop

AnimScript_21444:
	frame 10, OAM_2c45c
	frame  6, OAM_2c464
	frame  6, OAM_2c46c
	frame 10, OAM_2c474
	frame  6, OAM_2c46c
	frame  6, OAM_2c464
	script_ret

AnimScript_21457:
.loop
	frame 11, OAM_2c45c
	frame  7, OAM_2c464
	frame  7, OAM_2c46c
	frame 11, OAM_2c474
	frame  7, OAM_2c46c
	frame  7, OAM_2c464
	jump_rel .loop

AnimScript_Chuckie:
.loop
	frame 10, OAM_2c40c
	frame 10, OAM_2c414
	jump_abs .loop

AnimScript_PuffOfSmoke:
	position_offset 0, -8
	frame  6, OAM_2dd29
	frame  6, OAM_2dd31
	script_end

AnimScript_TwoFace_Waiting:
	set_update_func Func_14252, AnimScript_TwoFace_Chasing
	frame  0, OAM_2c43c

AnimScript_TwoFace_Chasing:
	frame  4, OAM_2c44c
	frame 10, OAM_2c454
	frame 10, OAM_2c454
	frame  4, OAM_2c450
	frame 10, OAM_2c444
	set_object_properties TwoFaceProperties
	set_update_func Func_14208, NULL
.loop
	frame 10, OAM_2c444
	frame 10, OAM_2c44c
	frame 10, OAM_2c454
	frame 10, OAM_2c450
	jump_abs .loop

; unreferenced
AnimScript_214ae:
	create_object AnimScript_Bullet, MotionScript_1163d, ShotzoBulletProperties
	set_motion_script MotionScript_102a4
	frame 140, OAM_2def5
	create_object AnimScript_Bullet, MotionScript_1162e, ShotzoBulletProperties
	set_motion_script MotionScript_102a4
	frame 140, OAM_2def5
	create_object AnimScript_Bullet, MotionScript_11640, ShotzoBulletProperties
	set_motion_script MotionScript_102a4
	frame 180, OAM_2def5
	jump_abs AnimScript_214ae

; unreferenced
AnimScript_214de:
	branch_kirby_pos .script_214e5, .script_214fa
.script_214e5
	frame 65, OAM_2deed
	create_object AnimScript_Bullet, MotionScript_1163d, ShotzoBulletProperties
	set_motion_script MotionScript_10298
	frame 65, OAM_2deed
	jump_abs AnimScript_214de
.script_214fa
	frame 65, OAM_2defd
	create_object AnimScript_Bullet, MotionScript_11640, ShotzoBulletProperties
	set_motion_script MotionScript_102b0
	frame 65, OAM_2defd
	jump_abs AnimScript_214de

; unreferenced
AnimScript_2150f:
	frame 65, OAM_2df05
	create_object AnimScript_Bullet, MotionScript_102d1, ShotzoBulletProperties
	set_motion_script MotionScript_102bc
	frame 65, OAM_2df05
	jump_abs AnimScript_2150f

AnimScript_21524:
.loop
	frame 65, OAM_2dee5
	create_object AnimScript_Bullet, MotionScript_102da, ShotzoBulletProperties
	set_motion_script MotionScript_1028c
	frame 65, OAM_2dee5
	jump_abs .loop

; unreferenced
AnimScript_21539:
	frame 65, OAM_2df05
	create_object AnimScript_Bullet, MotionScript_102d1, ShotzoBulletProperties
	set_motion_script MotionScript_102bc
	frame 65, OAM_2df05
	frame 65, OAM_2defd
	create_object AnimScript_Bullet, MotionScript_11640, ShotzoBulletProperties
	set_motion_script MotionScript_102b0
	frame 65, OAM_2defd
	jump_abs AnimScript_21539

; unreferenced
AnimScript_21560:
	frame 65, OAM_2dee5
	create_object AnimScript_Bullet, MotionScript_102ce, ShotzoBulletProperties
	set_motion_script MotionScript_1028c
	frame 65, OAM_2dee5
	frame 65, OAM_2deed
	create_object AnimScript_21c2e, MotionScript_1163d, ProjectileProperties
	set_motion_script MotionScript_10298
	frame 65, OAM_2deed
	jump_abs AnimScript_21560

AnimScript_21587:
	set_motion_script MotionScript_11e5a
.loop
	frame 64, OAM_2c6f4
	frame 48, OAM_2c6f4
	jump_abs .loop

AnimScript_21595:
	frame  0, OAM_2c6f4

AnimScript_CirclingEnemiesTrap:
	set_update_func Func_14252, AnimScript_215a0
	frame  0, OAM_2d8b8

AnimScript_215a0:
	create_object .script_215d9, MotionScript_10008, Data_3421
	create_object .script_215e7, MotionScript_10008, Data_3421
	create_object .script_215f5, MotionScript_10008, Data_3421
	create_object .script_21603, MotionScript_10008, Data_3421
	create_object .script_21611, MotionScript_10008, Data_3421
	create_object .script_21624, MotionScript_10008, Data_3421
	create_object .script_21637, MotionScript_10008, Data_3421
	create_object .script_2164a, MotionScript_10008, Data_3421
	script_end

.script_215d9
	position_offset 0, -48
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_scripts AnimScript_2165d, MotionScript_1169a

.script_215e7
	position_offset 48, 0
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_scripts AnimScript_2165d, MotionScript_116d0

.script_215f5
	position_offset 0, 48
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_scripts AnimScript_2165d, MotionScript_116be

.script_21603
	position_offset -48, 0
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_scripts AnimScript_2165d, MotionScript_116ac

.script_21611
	position_offset 34, -34
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_object_properties MumbiesOrbitingProperties
	set_scripts AnimScript_21388, MotionScript_116d9

.script_21624
	position_offset 34, 34
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_object_properties MumbiesOrbitingProperties
	set_scripts AnimScript_21388, MotionScript_116c7

.script_21637
	position_offset -34, 34
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_object_properties MumbiesOrbitingProperties
	set_scripts AnimScript_21388, MotionScript_116b5

.script_2164a
	position_offset -34, -34
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	set_object_properties MumbiesOrbitingProperties
	set_scripts AnimScript_21388, MotionScript_116a3

AnimScript_2165d:
	set_object_properties StandardEnemyProperties
.loop
	branch_kirby_pos .script_21669, .script_21672

.script_21669
	frame  8, OAM_2c37c
	frame  8, OAM_2c384
	jump_abs .loop

.script_21672
	frame  8, OAM_2c394
	frame  8, OAM_2c39c
	jump_abs .loop

AnimScript_2167b:
	frame  1, OAM_2d8b8
	set_object_properties Data_3421
	set_update_func Func_14252, MotionScript_1168b
	frame  0, OAM_2d8b8

AnimScript_2168b:
	branch_on_kirby_vertical_alignment AnimScript_2167b, .script_21694
	jump_rel AnimScript_2167b

.script_21694:
	create_object AnimScript_PuffOfSmoke, MotionScript_10008, PuffOfSmokeProperties
	position_offset 0, -16
	play_sfx SFX_PUFF
	set_object_properties MaximTomatoProperties
	frame  0, OAM_2dc81

; unreferenced
AnimScript_216aa:
	frame  0, OAM_2df9d

; unreferenced
AnimScript_216ad:
	frame  0, OAM_2dfb5

AnimScript_Coner:
.loop
	frame  8, OAM_2df9d
	frame 40, OAM_2df95
	jump_abs .loop

AnimScript_216b9:
.loop
	frame  8, OAM_2dfb5
	frame 40, OAM_2dfad
	jump_abs .loop

AnimScript_216c2:
.loop
	script_repeat 3
	frame  8, OAM_2df9d
	frame 24, OAM_2df95
	script_repeat_end
	script_repeat 3
	frame  8, OAM_2dfb5
	frame 24, OAM_2dfad
	script_repeat_end
	jump_abs .loop

; unreferenced
AnimScript_216d7:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 30, OAM_2dfa5
	script_exec ScriptFunc_ResetImmuneFlag
	frame 10, OAM_2df9d
	frame 40, OAM_2df95
	frame  0, OAM_2df9d

; unreferenced
AnimScript_216ee:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame  0, OAM_2dfa5

AnimScript_216f9:
.loop
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 112, OAM_2dfbd
	frame 48, OAM_2dfb5
	script_exec ScriptFunc_ResetImmuneFlag
	script_repeat 3
	frame 32, OAM_2dfad
	frame 10, OAM_2dfb5
	script_repeat_end
	jump_abs .loop

; unreferenced
AnimScript_21716:
	frame  0, OAM_2dfcd

; unreferenced
AnimScript_21719:
	frame  0, OAM_2dfe5

AnimScript_2171c:
.script_2171c
	frame 10, OAM_2dfcd
	branch_kirby_pos .script_21726, .script_21761

.script_21726
	frame 20, OAM_2dfcd
	script_repeat 4
	frame  4, OAM_2dfd5
	frame  4, OAM_2dfcd
	script_repeat_end
	script_call AnimScript_204a4
	frame 40, OAM_2dfcd
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 50, OAM_2dfc5
	script_exec ScriptFunc_ResetImmuneFlag
	jump_abs .script_2171c

.script_21749
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 60, OAM_2dfdd
	script_exec ScriptFunc_ResetImmuneFlag
	frame 20, OAM_2dfe5
	branch_kirby_pos .script_21726, .script_21761

.script_21761
	frame 20, OAM_2dfe5
	script_repeat 10
	frame  4, OAM_2dfed
	frame  4, OAM_2dfe5
	script_repeat_end
	script_call AnimScript_2051d
	frame 40, OAM_2dfe5
	jump_abs .script_21749

; unreferenced
AnimScript_21776:
	set_motion_script MotionScript_1178e
	frame 12, OAM_2dfcd
	frame 20, OAM_2dfc5
	jump_random 13 percent - 1, .script_21787
	dw AnimScript_21776 ; bug, supposed to be a jump_rel
.script_21787
	script_repeat 6
	frame  4, OAM_2dfed
	frame  4, OAM_2dfe5
	script_repeat_end
	script_call AnimScript_2051d
	jump_abs AnimScript_21776

AnimScript_21796:
.loop
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 64, OAM_2dfdd
	script_exec ScriptFunc_ResetImmuneFlag
	frame 20, OAM_2dfe5
	script_repeat 10
	frame  4, OAM_2dfed
	frame  4, OAM_2dfe5
	script_repeat_end
	script_call AnimScript_2051d
	jump_abs .loop

; unreferenced
AnimScript_217b6:
	frame  0, OAM_2e045

; unreferenced
AnimScript_217b9:
	frame 16, OAM_2e045
	frame 16, OAM_2e04d
	frame 16, OAM_2e055
	frame 16, OAM_2e05d
	jump_abs AnimScript_217b9

AnimScript_217c8:
.loop
	frame  8, OAM_2e045
	frame  8, OAM_2e04d
	frame  8, OAM_2e055
	frame  8, OAM_2e05d
	jump_abs .loop

AnimScript_217d7:
.loop
	frame  4, OAM_2e045
	frame  4, OAM_2e04d
	frame  4, OAM_2e055
	frame  4, OAM_2e05d
	jump_abs .loop

; unreferenced
AnimScript_217e6:
	frame  0, OAM_2e065

AnimScript_217e9:
.loop
	frame  8, OAM_2e065
	frame 48, OAM_2e045
	frame  4, OAM_2e04d
	frame  4, OAM_2e055
	frame  4, OAM_2e05d
	frame  8, OAM_2e045
	jump_abs .loop

AnimScript_217fe:
	jumptable_random 1
	dw .script_21804
	dw .script_21823

.script_21804
	script_repeat 3
	frame 10, OAM_2e045
	frame 10, OAM_2e04d
	frame 10, OAM_2e055
	frame 10, OAM_2e05d
	script_repeat_end
	set_object_properties Properties_3495
	script_call AnimScript_2184e
	set_object_properties Properties_349e
	frame 100, OAM_2d8b8
.script_21823
	set_object_properties Properties_3495
	script_call AnimScript_21832
	set_object_properties StandardEnemyProperties
	jump_rel .script_21804

AnimScript_21832:
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

AnimScript_2184e:
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

AnimScript_2186a:
.loop
	frame 10, OAM_2e045
	frame 10, OAM_2e04d
	frame 10, OAM_2e055
	frame 10, OAM_2e05d
	frame 10, OAM_2e065
	frame 10, OAM_2e045
	jump_abs .loop

AnimScript_2187f:
.loop
	frame 16, OAM_2dff5
	frame  8, OAM_2dffd
	frame 16, OAM_2dff5
	frame 16, OAM_2dffd
	frame  8, OAM_2dff5
	jump_abs .loop

AnimScript_21891:
.loop
	frame  8, OAM_2e005
	frame  8, OAM_2dffd
	jump_abs .loop

AnimScript_2189a:
	frame  0, OAM_2e00d

AnimScript_2189d:
	frame  8, OAM_2dffd
	frame  0, OAM_2dff5

AnimScript_218a3:
	frame  8, OAM_2e025
	frame  0, OAM_2e01d

AnimScript_218a9:
	frame 32, OAM_2e02d
	frame  0, OAM_2e025

AnimScript_218af:
	frame 32, OAM_2e005
	frame  0, OAM_2dffd

AnimScript_218b5:
	frame 16, OAM_2e21d
AnimScript_218b8:
	frame 16, OAM_2e225
	jump_abs AnimScript_218b5

AnimScript_218be:
.loop
	frame 16, OAM_2e22d
	frame 16, OAM_2e235
	jump_abs .loop

AnimScript_218c7:
	frame 16, OAM_2e245
	frame  0, OAM_2e23d

AnimScript_218cd:
.loop
	frame 16, OAM_2e245
	frame 32, OAM_2e23d
	jump_abs .loop

AnimScript_218d6:
.loop
	frame  1, OAM_2e245
	jump_abs .loop

AnimScript_218dc:
.loop
	frame  1, OAM_2e23d
	jump_abs .loop

AnimScript_218e2:
.loop
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
	jump_abs .loop

AnimScript_218fd:
	frame 100, OAM_2e23d
	frame 20, OAM_2e245
	frame  0, OAM_2e23d

AnimScript_21906:
	frame  1, OAM_2e24d
	set_motion_script MotionScript_11b2b
	frame  0, OAM_2e24d

AnimScript_21911:
	frame 40, OAM_2e24d
	set_object_properties Data_366a
	set_update_func Func_141b1, AnimScript_21921
	frame  0, OAM_2e24d

AnimScript_21921:
	set_object_properties Data_3673
	set_scripts AnimScript_Hit, MotionScript_10008

; unreferenced
AnimScript_2192b:
	frame 176, OAM_2e24d
AnimScript_2192e:
	frame 80, OAM_2e255
	frame  4, OAM_2e25d
	frame  4, OAM_2e269
	script_repeat 8
	frame  4, OAM_2e279
	frame  4, OAM_2e289
	script_repeat_end
	frame  0, OAM_2e255

AnimScript_21943:
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

AnimScript_2195e:
	frame  0, OAM_2e06d

AnimScript_Kaboola_Shoot:
	frame 10, OAM_2e06d

.regular_shot
	; 33% chance to shoot 1 bullet
	; 33% chance to shoot 3 bullets consecutively
	; 33% chance to shoot a triplet
	jump_random 33 percent + 1, .regular_shoot_one
	jump_random 50 percent + 1, .regular_shoot_three
	jump_abs .regular_shoot_triplet

.maybe_invert_shot
	; 70% chance to invert and shoot
	; 30% chance to keep shooting regular
	frame 15, OAM_2e06d
	jump_random 70 percent, .invert_and_shoot
	frame 15, OAM_2e06d
	jump_rel .regular_shot

.invert_and_shoot
	script_call AnimScript_21a0d
	frame 15, OAM_2e0d5
.inverted_shot
	; 33% chance to shoot 1 bullet
	; 33% chance to shoot 3 bullets consecutively
	; 33% chance to shoot a triplet
	jump_random 33 percent + 1, .inverted_shoot_one
	jump_random 50 percent + 1, .inverted_shoot_three
	jump_abs .inverted_shoot_triplet

.maybe_regular_shot
	; 70% chance to return to regular shooting
	; 30% chance to keep inverted shooting
	frame 15, OAM_2e0d5
	jump_random 70 percent, .return_regular_and_shoot
	frame 15, OAM_2e0d5
	jump_rel .inverted_shot

.return_regular_and_shoot
	script_call AnimScript_21a17
	jump_rel .regular_shot

.regular_shoot_one
	create_object AnimScript_21a73, MotionScript_Projectile_Left, KaboolaBulletProperties
	script_call AnimScript_21a21
	jump_rel .maybe_invert_shot

.regular_shoot_three
	script_repeat 3
	script_call AnimScript_21a35
	create_object AnimScript_21a73, MotionScript_Projectile_Left, KaboolaBulletProperties
	frame 10, OAM_2e06d
	script_repeat_end
	jump_rel .maybe_invert_shot

.regular_shoot_triplet
	script_call AnimScript_21a35
	create_object AnimScript_21a73, MotionScript_11ad9, KaboolaBulletProperties
	create_object AnimScript_21a73, MotionScript_Projectile_Left, KaboolaBulletProperties
	create_object AnimScript_21a73, MotionScript_11adc, KaboolaBulletProperties
	jump_rel .maybe_invert_shot

.inverted_shoot_one
	script_call AnimScript_21a2b
	create_object AnimScript_21a6d, MotionScript_Projectile_Left, KaboolaBulletProperties
	jump_rel .maybe_regular_shot

.inverted_shoot_three
	script_repeat 3
	script_call AnimScript_21a3f
	create_object AnimScript_21a6d, MotionScript_Projectile_Left, KaboolaBulletProperties
	frame 10, OAM_2e0d5
	script_repeat_end
	jump_rel .maybe_regular_shot

.inverted_shoot_triplet
	script_call AnimScript_21a3f
	create_object AnimScript_21a6d, MotionScript_11ad9, KaboolaBulletProperties
	create_object AnimScript_21a6d, MotionScript_Projectile_Left, KaboolaBulletProperties
	create_object AnimScript_21a6d, MotionScript_11adc, KaboolaBulletProperties
	jump_rel .maybe_regular_shot

AnimScript_21a0d:
	frame  4, OAM_2e095
	frame  4, OAM_2e0b5
	frame 10, OAM_2e0d5
	script_ret

AnimScript_21a17:
	frame  4, OAM_2e0b5
	frame  4, OAM_2e095
	frame 10, OAM_2e06d
	script_ret

AnimScript_21a21:
	frame  4, OAM_2e0fd
	frame  4, OAM_2e12d
	frame  4, OAM_2e15d
	script_ret

AnimScript_21a2b:
	frame  4, OAM_2e18d
	frame  4, OAM_2e1bd
	frame  4, OAM_2e1ed
	script_ret

AnimScript_21a35:
	frame  2, OAM_2e0fd
	frame  2, OAM_2e12d
	frame  2, OAM_2e15d
	script_ret

AnimScript_21a3f:
	frame  2, OAM_2e18d
	frame  2, OAM_2e1bd
	frame  2, OAM_2e1ed
	script_ret

AnimScript_Kaboola_RamStart:
.loop
	frame  4, OAM_2e06d
	frame  4, OAM_2e095
	frame  4, OAM_2e0b5
	frame  4, OAM_2e0d5
	jump_abs .loop

AnimScript_Kaboola_RamEnd:
	frame  8, OAM_2e06d
	frame  8, OAM_2e095
	frame 10, OAM_2e0b5
	frame 10, OAM_2e0d5
	frame 16, OAM_2e0b5
	frame 16, OAM_2e095
	frame  0, OAM_2e06d

AnimScript_21a6d:
	position_offset -10, -16
	jump_abs AnimScript_Bullet

AnimScript_21a73:
	position_offset -10, 16
	jump_abs AnimScript_Bullet

AnimScript_21a79:
	play_music MUSIC_NONE
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	set_flags hKirbyFlags6, KIRBY6F_UNK6, $00
	set_flags hPalFadeFlags, SCROLLINGF_UNK5, SCROLL_LOCKED
	set_value wObjectAnimScriptPtrs + (2 * OBJECT_SLOT_KIRBY) + 0, LOW(AnimScript_1623)
	set_value wObjectAnimScriptPtrs + (2 * OBJECT_SLOT_KIRBY) + 1, HIGH(AnimScript_1623)
	set_value wLevelXSection, 32
	set_rel_pos
	create_object AnimScript_20967, MotionScript_11b20, Data_3421
	script_call AnimScript_20b05
	set_scripts AnimScript_20000, MotionScript_11adf

AnimScript_PuffHit:
	play_sfx SFX_28
	frame  6, OAM_2dd21
	frame  2, OAM_2dd29
	frame  2, OAM_2dd31
	script_end

AnimScript_21ab6:
.loop
	set_motion_script MotionScript_11bbf
	script_repeat 8
	frame 12, OAM_2c528
	frame 12, OAM_2c530
	script_repeat_end
	set_motion_script MotionScript_10008
	script_repeat 2
	frame  4, OAM_2c530
	frame  4, OAM_2c528
	script_repeat_end
	frame 10, OAM_2c530
	set_motion_script MotionScript_11baa
	script_repeat 8
	frame 12, OAM_2c518
	frame 12, OAM_2c520
	script_repeat_end
	set_motion_script MotionScript_10008
	script_repeat 2
	frame  4, OAM_2c520
	frame  4, OAM_2c518
	script_repeat_end
	frame 10, OAM_2c520
	jump_rel .loop

AnimScript_21af6:
.loop
	frame  8, OAM_2c518
	frame  8, OAM_2c520
	jump_abs .loop

AnimScript_21aff:
.loop
	frame  8, OAM_2c528
	frame  8, OAM_2c530
	jump_abs .loop

AnimScript_21b08:
.loop
	frame 12, OAM_2c518
	frame 10, OAM_2c520
	jump_abs .loop

AnimScript_21b11:
.loop
	frame 12, OAM_2c528
	frame 10, OAM_2c530
	jump_abs .loop

AnimScript_21b1a:
	frame  0, OAM_2c540

; unreferenced
AnimScript_21b1d:
	frame  0, OAM_2c538

; unreferenced
AnimScript_21b20:
	frame  0, OAM_2c548

AnimScript_21b23:
.loop
	frame  8, OAM_2c538
	frame  8, OAM_2c540
	frame  8, OAM_2c548
	frame  8, OAM_2c550
	jump_abs .loop

AnimScript_21b32:
.loop
	frame  6, OAM_2de45
	frame  6, OAM_2de4d
	script_repeat 2
	frame 10, OAM_2de45
	frame 10, OAM_2de4d
	script_repeat_end
	jump_abs .loop

AnimScript_21b44:
	frame 10, OAM_2decd
	frame 10, OAM_2dec5
	set_scripts AnimScript_21b6b, MotionScript_113e2

AnimScript_21b4f:
	script_repeat 2
	frame 10, OAM_2decd
	frame 10, OAM_2dec5
	script_repeat_end
	set_scripts AnimScript_21b6b, MotionScript_113e2

AnimScript_21b5d:
	script_repeat 3
	frame 10, OAM_2decd
	frame 10, OAM_2dec5
	script_repeat_end
	set_motion_script MotionScript_113e2
AnimScript_21b6b:
	frame 10, OAM_2decd
	frame 10, OAM_2dec5
	frame 10, OAM_2decd
.loop
	frame  8, OAM_2decd
	frame  8, OAM_2dec5
	jump_abs .loop

AnimScript_21b7d:
.loop
	set_motion_script MotionScript_102ce
	script_repeat 18
	frame 16, OAM_2de55
	frame 16, OAM_2de5d
	script_repeat_end
	set_motion_script MotionScript_102d1
	script_repeat 18
	frame 16, OAM_2de65
	frame 16, OAM_2de6d
	script_repeat_end
	jump_rel .loop

AnimScript_Scarfy:
	set_update_func Func_140ce, AnimScript_MutantScarfy
.loop
	frame 10, OAM_2c558
	frame 10, OAM_2c560
	jump_rel .loop

; unreferenced
AnimScript_21ba8:
.loop
	frame 10, OAM_2c580
	frame 10, OAM_2c588
	jump_rel .loop

AnimScript_MutantScarfy:
	set_object_properties Properties_34ed
	set_motion_script MotionScript_11d7a
	frame 12, OAM_2c558
	frame 12, OAM_2c578
	set_motion_script MotionScript_MutantScarfy
.loop
	branch_kirby_pos .script_21bcc, .script_21bd4

.script_21bcc
	frame  8, OAM_2c568
	frame 10, OAM_2c578
	jump_rel .loop

.script_21bd4
	frame  8, OAM_2c590
	frame 10, OAM_2c5a0
	jump_rel .loop

AnimScript_21bdc:
	branch_kirby_pos .script_21be3, .script_21be6

.script_21be3
	frame  0, OAM_2c578

.script_21be6
	frame  0, OAM_2c5a0

AnimScript_21be9:
.loop
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
	jump_abs .loop

AnimScript_21c25:
	position_offset 0, 6
	jump_abs AnimScript_Bullet

; unreferenced
AnimScript_21c2b:
	frame  0, OAM_2c5a8

AnimScript_21c2e:
	frame  0, OAM_2c5ac

AnimScript_StationaryShotzo:
	jump_abs .script_21c59

.turn_up
	frame 30, OAM_2def5
	script_exec Func_495c
	jumptable wd3bd
	dw .shoot_up ; $0
	dw .turn_up_right ; $1
	dw .script_21c9d ; $2
	dw .script_21c9d ; $3
	dw .script_21c72 ; $4
	dw .script_21d63 ; $5
	dw .script_21d63 ; $6
	dw .turn_up_left ; $7

.shoot_up
	create_object AnimScript_Bullet, MotionScript_102ec, ShotzoBulletProperties
	set_motion_script MotionScript_102a4

.script_21c59
	frame 15, OAM_2def5
.loop
	script_exec Func_495c
	jumptable wd3bd
	dw .turn_up ; $0
	dw .turn_up_right ; $1
	dw .script_21c9d ; $2
	dw .script_21c9d ; $3
	dw .script_21c72 ; $4
	dw .script_21d63 ; $5
	dw .script_21d63 ; $6
	dw .turn_up_left ; $7

.script_21c72
	frame 60, OAM_2def5
	jump_abs .loop

.turn_up_right
	frame 30, OAM_2defd
	script_exec Func_495c
	jumptable wd3bd
	dw .turn_up ; $0
	dw .shoot_up_right ; $1
	dw .turn_right ; $2
	dw .script_21cf4 ; $3
	dw .script_21c72 ; $4
	dw .script_21c59 ; $5
	dw .script_21c59 ; $6
	dw .script_21c59 ; $7

.shoot_up_right
	create_object AnimScript_Bullet, MotionScript_102ef, ShotzoBulletProperties
	set_motion_script MotionScript_102b0

.script_21c9d
	frame 15, OAM_2defd
	script_exec Func_495c
	jumptable wd3bd
	dw .turn_up ; $0
	dw .turn_up_right ; $1
	dw .turn_right ; $2
	dw .script_21cf4 ; $3
	dw .script_21c72 ; $4
	dw .script_21c59 ; $5
	dw .script_21c59 ; $6
	dw .script_21c59 ; $7

.turn_right
	frame 30, OAM_2df05
	script_exec Func_495c
	jumptable wd3bd
	dw .script_21c9d ; $0
	dw .turn_up_right ; $1
	dw .shoot_right ; $2
	dw .script_21cf4 ; $3
	dw .script_21c9d ; $4
	dw .script_21c9d ; $5
	dw .script_21c9d ; $6
	dw .script_21c9d ; $7

.shoot_right
	create_object AnimScript_Bullet, MotionScript_102e9, ShotzoBulletProperties
	set_motion_script MotionScript_102bc
	frame 30, OAM_2df05

.script_21cde
	script_exec Func_495c
	jumptable wd3bd
	dw .script_21c9d ; $0
	dw .turn_up_right ; $1
	dw .turn_right ; $2
	dw .script_21cf4 ; $3
	dw .script_21c9d ; $4
	dw .script_21c9d ; $5
	dw .script_21c9d ; $6
	dw .script_21c9d ; $7

.script_21cf4
	frame 60, OAM_2df05
	jump_abs .script_21cde

.turn_left
	frame 30, OAM_2dee5
	script_exec Func_495c
	jumptable wd3bd
	dw .script_21d63 ; $0
	dw .script_21d63 ; $1
	dw .script_21d63 ; $2
	dw .script_21d63 ; $3
	dw .script_21d63 ; $4
	dw .script_21d38 ; $5
	dw .shoot_left ; $6
	dw .turn_up_left ; $7

.shoot_left
	create_object AnimScript_Bullet, MotionScript_102e6, ShotzoBulletProperties
	set_motion_script MotionScript_1028c
	frame 30, OAM_2dee5

.script_21d22
	script_exec Func_495c
	jumptable wd3bd
	dw .script_21d63 ; $0
	dw .script_21d63 ; $1
	dw .script_21d63 ; $2
	dw .script_21d63 ; $3
	dw .script_21d63 ; $4
	dw .script_21d38 ; $5
	dw .turn_left ; $6
	dw .turn_up_left ; $7

.script_21d38
	frame 60, OAM_2dee5
	jump_abs .script_21d22

.turn_up_left
	frame 30, OAM_2deed
	script_exec Func_495c
	jumptable wd3bd
	dw .turn_up ; $0
	dw .script_21c59 ; $1
	dw .script_21c59 ; $2
	dw .script_21c59 ; $3
	dw .script_21c72 ; $4
	dw .script_21d38 ; $5
	dw .turn_left ; $6
	dw .shoot_up_left ; $7

.shoot_up_left
	create_object AnimScript_Bullet, MotionScript_102f2, ShotzoBulletProperties
	set_motion_script MotionScript_10298

.script_21d63
	frame 15, OAM_2deed
	script_exec Func_495c
	jumptable wd3bd
	dw .turn_up ; $0
	dw .script_21c59 ; $1
	dw .script_21c59 ; $2
	dw .script_21c59 ; $3
	dw .script_21c72 ; $4
	dw .script_21d38 ; $5
	dw .turn_left ; $6
	dw .turn_up_left ; $7

AnimScript_21d7c:
	frame  0, OAM_2c6a4

AnimScript_21d7f:
	frame  0, OAM_2c664

AnimScript_21d82:
	frame  0, OAM_2c654

AnimScript_21d85:
	set_update_func Func_140c2, AnimScript_21dc9
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

AnimScript_21da7:
	set_update_func Func_140c2, AnimScript_21ddb
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

AnimScript_21dc9:
	create_object AnimScript_21d82, MotionScript_11e25, Data_3421
	set_object_properties StandardEnemyProperties
	frame  1, OAM_2de55
	script_exec Func_4afb

AnimScript_21ddb:
	create_object AnimScript_21d82, MotionScript_11e25, Data_3421
	set_object_properties StandardEnemyProperties
	frame  1, OAM_2de75
	script_exec Func_4afb

AnimScript_21ded:
	set_object_properties Data_3421
	set_scripts AnimScript_21d82, MotionScript_11e25

; unreferenced
AnimScript_21df7:
	script_end

AnimScript_21df8:
	create_object AnimScript_DefeatStars, MotionScript_10008, Data_3421
	frame  0, OAM_2c654

AnimScript_21e02:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_21e0f
	frame  0, OAM_2de55

AnimScript_21e0f:
	set_scripts AnimScript_20587, MotionScript_102ce

AnimScript_21e14:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_21e21
	frame  0, OAM_2de55

AnimScript_21e21:
	set_scripts AnimScript_205ae, MotionScript_103ff

AnimScript_21e26:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_21e33
	frame  0, OAM_2de75

AnimScript_21e33:
	set_scripts AnimScript_205e1, MotionScript_102ce

AnimScript_21e38:
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_21e45
	frame  0, OAM_2de75

AnimScript_21e45:
	set_scripts AnimScript_2061d, MotionScript_103ff

; unreferenced
AnimScript_21e4a:
	frame 64, OAM_2c6f4
	script_repeat 3
	create_object AnimScript_21c2e, MotionScript_11661, ProjectileProperties
	frame 16, OAM_2c6f4
	script_repeat_end
	jump_abs AnimScript_21e4a

AnimScript_21e5d:
.loop
	frame 20, OAM_2c794
	frame 20, OAM_2c79c
	frame 20, OAM_2c794
	frame 20, OAM_2c7a4
	jump_abs .loop

AnimScript_21e6c:
	play_sfx SFX_20
.loop
	frame  4, OAM_2c764
	frame  4, OAM_2c76c
	frame  4, OAM_2c770
	frame  4, OAM_2c778
	jump_rel .loop

AnimScript_21e7e:
.loop
	play_sfx SFX_20
	frame  4, OAM_2c77c
	frame  4, OAM_2c784
	frame  4, OAM_2c788
	frame  4, OAM_2c790
	jump_abs .loop

AnimScript_21e91:
.loop
	script_call AnimScript_21f0f
	jump_abs .loop

; unreferenced
AnimScript_21e97:
	script_call AnimScript_21f52
	jump_abs AnimScript_21e97

AnimScript_21e9d:
.loop
	script_call AnimScript_21f2e
	jump_abs .loop

AnimScript_21ea3:
.loop
	set_motion_script MotionScript_102ce
	script_call AnimScript_21f0f
	jump_abs .loop

AnimScript_21eae:
	script_call AnimScript_21f0a
	branch_kirby_pos AnimScript_21eb8, AnimScript_21efa

AnimScript_21eb8:
	script_call AnimScript_21f0a
	branch_kirby_pos AnimScript_21ec2, AnimScript_21ef0

AnimScript_21ec2:
	script_call AnimScript_21f0a
	branch_kirby_pos AnimScript_21ecc, AnimScript_21ee6

AnimScript_21ecc:
	script_call AnimScript_21f0a
AnimScript_21ecf:
	branch_kirby_pos AnimScript_21ed6, AnimScript_21edc

AnimScript_21ed6:
	script_call AnimScript_21f0f
	jump_abs AnimScript_21ecf

AnimScript_21edc:
	script_call AnimScript_21f4d
	branch_kirby_pos AnimScript_21ecc, AnimScript_21ee6

AnimScript_21ee6:
	script_call AnimScript_21f4d
	branch_kirby_pos AnimScript_21ec2, AnimScript_21ef0

AnimScript_21ef0:
	script_call AnimScript_21f4d
	branch_kirby_pos AnimScript_21eb8, AnimScript_21efa

AnimScript_21efa:
	script_call AnimScript_21f4d
AnimScript_21efd:
	branch_kirby_pos AnimScript_21eae, AnimScript_21f04

AnimScript_21f04:
	script_call AnimScript_21f52
	jump_abs AnimScript_21efd

AnimScript_21f0a:
	set_motion_script MotionScript_102ce
AnimScript_21f0f:
	script_repeat 3
	frame 10, OAM_2c724
	frame 10, OAM_2c72c
	script_repeat_end
	set_motion_script MotionScript_10008
	frame 20, OAM_2c734
	create_object AnimScript_21e6c, MotionScript_11f0c, SirKibbleBladeProperties
	frame 76, OAM_2c73c
	frame 20, OAM_2c734
	script_ret

AnimScript_21f2e:
	script_repeat 3
	frame 10, OAM_2c724
	frame 10, OAM_2c72c
	script_repeat_end
	set_motion_script MotionScript_10008
	frame 20, OAM_2c734
	create_object AnimScript_21e6c, MotionScript_11f2b, SirKibbleBladeProperties
	frame 112, OAM_2c73c
	frame 20, OAM_2c734
	script_ret

AnimScript_21f4d:
	set_motion_script MotionScript_102d1
AnimScript_21f52:
	script_repeat 3
	frame 10, OAM_2c744
	frame 10, OAM_2c74c
	script_repeat_end
	set_motion_script MotionScript_10008
	frame 20, OAM_2c754
	create_object AnimScript_21e7e, MotionScript_11f4a, SirKibbleBladeProperties
	frame 76, OAM_2c75c
	frame 20, OAM_2c754
	script_ret

AnimScript_Waterfall:
	frame  0, OAM_2d8b8

AnimScript_WaterfallCurrent:
	frame  0, OAM_2c7ac

AnimScript_WaterfallParticles:
	position_offset 0, 96
.loop
	frame  2, OAM_2c7b0
	frame  2, OAM_2c7b8
	frame  2, OAM_2c7c4
	frame  2, OAM_2c7c0
	frame  2, OAM_2c7b4
	frame  2, OAM_2c7bc
	jump_abs .loop

AnimScript_FallingStarSpawner:
.loop
	frame 40, OAM_2d8b8
	jump_random 25 percent + 1, .script_21fa7
	frame 20, OAM_2d8b8
	jump_random 50 percent + 1, .script_21fa7
	frame 20, OAM_2d8b8
	jump_random 75 percent + 1, .script_21fa7
	frame 20, OAM_2d8b8
.script_21fa7
	create_object AnimScript_FallingStar, MotionScript_FallingStar, Data_3421
	jump_abs .loop

AnimScript_FallingStar:
	script_exec Func_4a93
	jump_abs AnimScript_Star

AnimScript_21fb7:
.loop
	branch_kirby_pos .script_21fbe, .script_21fdb

.script_21fbe
	script_repeat 6
	frame  3, OAM_2de8d
	frame  3, OAM_2de75
	script_repeat_end
	set_motion_script MotionScript_11c10
	script_call AnimScript_2202e
	script_repeat 2
	frame  4, OAM_2de75
	frame  4, OAM_2de7d
	script_repeat_end
	jump_abs .loop

.script_21fdb
	script_repeat 12
	frame  3, OAM_2deb5
	frame  3, OAM_2de9d
	script_repeat_end
	set_motion_script MotionScript_11c10
	script_call AnimScript_2208f
	script_repeat 4
	frame  4, OAM_2de9d
	frame  4, OAM_2dea5
	script_repeat_end
	jump_abs .loop

AnimScript_21ff8:
	branch_kirby_pos AnimScript_21fff, AnimScript_22016
AnimScript_21fff:
	script_repeat 8
	frame  3, OAM_2de8d
	frame  3, OAM_2de75
	script_repeat_end
	script_call AnimScript_2202e
	script_repeat 2
	frame  4, OAM_2de75
	frame  4, OAM_2de7d
	script_repeat_end
	jump_rel AnimScript_21ff8
AnimScript_22016:
	script_repeat 12
	frame  3, OAM_2deb5
	frame  3, OAM_2de9d
	script_repeat_end
	script_call AnimScript_2208f
	script_repeat 4
	frame  4, OAM_2de9d
	frame  4, OAM_2dea5
	script_repeat_end
	jump_abs AnimScript_21fff

AnimScript_2202e:
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103bf, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103fb, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103f7, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103f3, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103ef, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103eb, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103e7, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103e3, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_ret

AnimScript_2208f:
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103bf, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103c3, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103c7, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103cb, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103cf, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103d3, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103d7, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_Projectile, MotionScript_103db, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_ret

AnimScript_220f0:
	frame  1, OAM_2d8b8
	set_object_properties Data_3421
	set_update_func Func_14252, AnimScript_22100
	frame  0, OAM_2d8b8

AnimScript_22100:
	branch_on_kirby_vertical_alignment AnimScript_220f0, AnimScript_22109
	jump_rel AnimScript_220f0

AnimScript_22109:
	position_offset -16, -32
	set_object_properties OneUpProperties
	jump_abs AnimScript_20937

AnimScript_TitleScreenWarpStarKirby:
	frame 40, OAM_2d8b8
	create_object AnimScript_TitleScreenStar, MotionScript_10008, Data_3425
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

AnimScript_TitleScreenKirbySpawner:
.loop
	frame 170, OAM_2d8b8
	create_object AnimScript_TitleScreenKirby, MotionScript_TitleScreenKirby, Data_3425
	jump_rel .loop

AnimScript_TitleScreenKirby:
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

AnimScript_TitleScreenStarSpawner:
	frame 200, OAM_2d8b8
.loop
	frame 30, OAM_2d8b8
	create_object AnimScript_TitleScreenStar_RandomPosition, MotionScript_10008, Data_3425
	jump_abs .loop

AnimScript_TitleScreenStar_RandomPosition:
	jumptable_random $0f
	dw .position_1
	dw .position_2
	dw .position_3
	dw .position_4
	dw .position_5
	dw .position_6
	dw .position_7
	dw .position_8
	dw .position_9
	dw .position_10
	dw .position_11
	dw .position_12
	dw .position_13
	dw .position_14
	dw .position_15
	dw .position_16

.position_1
	position_offset 20, 10
	jump_rel AnimScript_TitleScreenStar

.position_2
	position_offset 40, 20
	jump_rel AnimScript_TitleScreenStar

.position_3
	position_offset 60, 10
	jump_rel AnimScript_TitleScreenStar

.position_4
	position_offset 80, 20
	jump_rel AnimScript_TitleScreenStar

.position_5
	position_offset 100, 10
	jump_rel AnimScript_TitleScreenStar

.position_6
	position_offset 120, 20
	jump_rel AnimScript_TitleScreenStar

.position_7
	position_offset 60, 20
	jump_rel AnimScript_TitleScreenStar

.position_8
	position_offset 20, 30
	jump_rel AnimScript_TitleScreenStar

.position_9
	position_offset 40, 40
	jump_rel AnimScript_TitleScreenStar

.position_10
	position_offset 60, 30
	jump_rel AnimScript_TitleScreenStar

.position_11
	position_offset 80, 40
	jump_rel AnimScript_TitleScreenStar

.position_12
	position_offset 100, 30
	jump_rel AnimScript_TitleScreenStar

.position_13
	position_offset 120, 40
	jump_rel AnimScript_TitleScreenStar

.position_14
	position_offset 120, 30
	jump_rel AnimScript_TitleScreenStar

.position_15
	position_offset 50, 35
	jump_rel AnimScript_TitleScreenStar

.position_16
	position_offset 70, 35

AnimScript_TitleScreenStar:
	create_object AnimScript_22265, MotionScript_1083f, Data_3421
	create_object AnimScript_22265, MotionScript_10850, Data_3421
	frame  3, OAM_2dc25
	frame  3, OAM_2dc2d
	create_object AnimScript_22265, MotionScript_10835, Data_3421
	create_object AnimScript_22265, MotionScript_10846, Data_3421
	frame  3, OAM_2dc3d
	frame  3, OAM_2dc45
	frame  3, OAM_2dc25
	script_end

AnimScript_22265:
	frame  0, OAM_2cba8

AnimScript_SoundTestNote:
.loop
	frame 150, OAM_2d2b0
	frame   8, OAM_2d2b4
	frame   8, OAM_2d2b8
	frame  20, OAM_2d2bc
	frame   8, OAM_2d2b8
	frame   8, OAM_2d2b4
	frame 200, OAM_2d2b0
	frame   8, OAM_2d2b4
	frame   8, OAM_2d2b8
	frame  20, OAM_2d2bc
	frame   8, OAM_2d2b8
	frame   8, OAM_2d2b4
	jump_abs .loop

AnimScript_SoundTestKirbyEyes:
.loop
	frame   8, OAM_2d2c0
	frame 180, OAM_2d8b8
	frame   8, OAM_2d2c0
	frame  10, OAM_2d8b8
	frame   8, OAM_2d2c0
	frame 120, OAM_2d8b8
	jump_abs .loop

AnimScript_222a4:
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

AnimScript_222d5:
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

	dw AnimScript_218b8 ; ?

; unreferenced
AnimScript_222ed:
	script_delay 112
	script_end

AnimScript_222f0:
	frame  8, OAM_2cbb8
AnimScript_222f3:
	script_repeat 100
	frame  8, OAM_2cbb4
	frame  8, OAM_2cbb8
	script_repeat_end
	script_end

AnimScript_222fd:
	script_call AnimScript_2232d
	set_scripts AnimScript_222f0, MotionScript_12121

AnimScript_22305:
	script_call AnimScript_2232d
	set_scripts AnimScript_222f0, MotionScript_12127

AnimScript_2230d:
	script_call AnimScript_2232d
	set_scripts AnimScript_222f3, MotionScript_1212a

AnimScript_22315:
	script_call AnimScript_2232d
	set_scripts AnimScript_222f0, MotionScript_1212d

AnimScript_2231d:
	script_call AnimScript_2232d
	set_scripts AnimScript_222f0, MotionScript_12133

AnimScript_22325:
	script_call AnimScript_2232d
	set_scripts AnimScript_222f3, MotionScript_12136

AnimScript_2232d:
	frame 104, OAM_2d8b8
	script_delay 94
	script_ret

AnimScript_22333:
	frame  0, OAM_2dc21

AnimScript_22336:
	frame  8, OAM_2cd6c
	frame  8, OAM_2cd78
	script_end

AnimScript_2233d:
	frame 48, OAM_2d8e9
	frame 16, OAM_2cd84
	script_delay 15
	frame 16, OAM_2cd8c
	frame 48, OAM_2d8e9
	frame 32, OAM_2cd84
	frame 16, OAM_2cd8c
	frame 52, OAM_2d8e9
	frame  0, OAM_2dbe1

AnimScript_22357:
	frame 96, OAM_2d8b8
	frame 96, OAM_2d8b8
	frame  0, OAM_2dc21

AnimScript_22360:
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

AnimScript_2239c:
	frame 96, OAM_2d8b8
.loop
	frame 24, OAM_2cc7c
	frame 24, OAM_2cc80
	jump_abs .loop

AnimScript_223a8:
	frame 104, OAM_2d8b8
.loop
	frame  6, OAM_2cca0
	frame  6, OAM_2cca8
	frame  6, OAM_2cca0
	frame  6, OAM_2cca8
	frame  6, OAM_2ccb0
	frame  6, OAM_2ccb8
	jump_abs .loop

AnimScript_223c0:
	frame 50, OAM_2d8b8
	frame 50, OAM_2db69
	frame  8, OAM_2dd29
	frame  8, OAM_2dd31
	script_end

AnimScript_223cd:
	jumptable_random 15
	dw .script_223f1
	dw .script_223f4
	dw .script_223f7
	dw .script_223f7
	dw .script_22412
	dw .script_223fa
	dw .script_223fd
	dw .script_22400
	dw .script_22403
	dw .script_22406
	dw .script_22409
	dw .script_2240c
	dw .script_2240f
	dw .script_22412
	dw .script_22412
	dw .script_22412
	dw .script_22412 ; extra entry

.script_223f1
	frame  0, OAM_2ccc0

.script_223f4
	frame  0, OAM_2ccc4

.script_223f7
	frame  0, OAM_2cce4

.script_223fa
	frame  0, OAM_2d901

.script_223fd
	frame  0, OAM_2d8e1

.script_22400
	frame  0, OAM_2dae9

.script_22403
	frame  0, OAM_2db71

.script_22406
	frame  0, OAM_2dbe9

.script_22409
	frame  0, OAM_2d8d9

.script_2240c
	frame  0, OAM_2dbf1

.script_2240f
	frame  0, OAM_2dbad

.script_22412
	jump_abs AnimScript_203f6

AnimScript_22415:
	frame 128, OAM_2d8b8
	script_repeat 4
	frame  6, OAM_2ccfc
	frame  6, OAM_2cd1c
	frame  6, OAM_2cd3c
	frame  6, OAM_2cd5c
	script_repeat_end
	frame  0, OAM_2d8b8

AnimScript_2242a:
	frame  8, OAM_2d8c1
	frame  8, OAM_2d8c9
	frame  8, OAM_2d8d1
	frame  8, OAM_2d8c9
	frame  8, OAM_2d8c1
	frame  8, OAM_2d8c9
	frame 30, OAM_2d8d9
	script_end

AnimScript_22440:
	script_delay 120
	script_delay 160
	script_delay 96
	script_delay 80
	script_delay 64
	jump_abs AnimScript_Star

AnimScript_2244d:
	frame 156, OAM_2d8b8
	script_delay 160
	script_delay 96
	script_delay 80
	frame  0, OAM_2cb30

AnimScript_22459:
	script_repeat 4
	frame  4, OAM_2dc25
	frame  4, OAM_2dc2d
	frame  4, OAM_2dc3d
	frame  4, OAM_2dc45
	script_repeat_end
	frame  5, OAM_2dc25
	frame  5, OAM_2dc2d
	frame  5, OAM_2dc3d
	create_object AnimScript_Star, MotionScript_Star_Right, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Left, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpRight, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpLeft, Data_3425
	frame 100, OAM_2dc01
	script_repeat 28
	script_delay 4
	create_object AnimScript_224a8, MotionScript_123ac, Data_3425
	script_repeat_end
.loop
	create_object AnimScript_224a8, MotionScript_RandomLeftDirection, Data_3425
	script_delay 8
	jump_abs .loop

AnimScript_224a8:
	position_offset -5, 4
	frame 25, OAM_2dc1d
	script_end

AnimScript_224af:
	frame 80, OAM_2cd98
	play_sfx SFX_23
	frame 16, OAM_2cdcc
	frame 16, OAM_2ce00
	frame  0, OAM_2ce34

AnimScript_224bf:
	frame 80, OAM_2ce34
	set_motion_script MotionScript_10008
	script_delay 80
	set_motion_script MotionScript_124a0
	script_delay 128
	frame 32, OAM_2ce68
	frame 32, OAM_2ce98
	frame 32, OAM_2ced0
	frame 32, OAM_2cf20
	set_motion_script MotionScript_124ac
	frame  0, OAM_2cf20

AnimScript_224e4:
	frame 80, OAM_2d8b8
	frame  0, OAM_2cf90

AnimScript_224ea:
	script_call AnimScript_22512
	set_scripts AnimScript_2252e, MotionScript_1251c

AnimScript_224f2:
	script_call AnimScript_22512
	set_scripts AnimScript_2252e, MotionScript_12549

AnimScript_224fa:
	script_call AnimScript_22512
	set_scripts AnimScript_2252e, MotionScript_1255f

AnimScript_22502:
	script_call AnimScript_22512
	set_scripts AnimScript_2252e, MotionScript_1252d

AnimScript_2250a:
	script_call AnimScript_22512
	set_scripts AnimScript_2252e, MotionScript_1257b

AnimScript_22512:
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

AnimScript_2252e:
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

AnimScript_22548:
	play_music MUSIC_SPARKLING_STAR
	script_call AnimScript_KirbySpin_Right
	frame 20, OAM_2dbc9
	frame 40, OAM_2d8e1
	script_repeat 3
	frame 12, OAM_2d8c1
	frame 10, OAM_2d8c9
	frame 12, OAM_2d8d1
	frame 10, OAM_2d8c9
	script_repeat_end
	script_call AnimScript_KirbySpin_Right
	script_call AnimScript_KirbySpin_Left
	script_call AnimScript_KirbySpin_Right
	frame  0, OAM_2d8e1

AnimScript_22570:
	frame 200, OAM_2cfbc
	frame 21, OAM_2cfbc
	frame  0, OAM_2cf94

AnimScript_22579:
	frame 200, OAM_2cfbc
	frame 21, OAM_2cfbc
	frame  0, OAM_2cfa4

AnimScript_22582:
	create_object AnimScript_225a8, MotionScript_125c6, Data_3425
	frame 50, OAM_2cfbc
	create_object AnimScript_225a8, MotionScript_125ec, Data_3425
	frame 90, OAM_2cfbc
	create_object AnimScript_225a8, MotionScript_1260b, Data_3425
	frame 64, OAM_2cfbc
	set_motion_script MotionScript_11643
	frame 136, OAM_2cfbc
AnimScript_225a8:
	frame  0, OAM_2cfbc

AnimScript_225ab:
	frame  0, OAM_2cfc0

AnimScript_225ae:
.loop
	frame 12, OAM_2cfc4
	frame 12, OAM_2cfcc
	frame 12, OAM_2cfd4
	frame 12, OAM_2cfdc
	jump_rel .loop

AnimScript_225bc:
.loop
	frame 12, OAM_2cfe4
	frame 12, OAM_2cfec
	frame 12, OAM_2cff4
	frame 12, OAM_2cffc
	jump_rel .loop

AnimScript_225ca:
.loop
	frame 13, OAM_2d004
	frame 13, OAM_2d00c
	frame 13, OAM_2d014
	frame 13, OAM_2d01c
	jump_rel .loop

AnimScript_225d8:
.loop
	frame 11, OAM_2d024
	frame 11, OAM_2d02c
	frame 11, OAM_2d034
	frame 11, OAM_2d03c
	jump_rel .loop

AnimScript_225e6:
.loop
	frame 12, OAM_2d044
	frame 12, OAM_2d04c
	frame 12, OAM_2d054
	frame 12, OAM_2d05c
	jump_rel .loop

AnimScript_225f4:
.loop
	frame 18, OAM_2d064
	frame 18, OAM_2d068
	frame 18, OAM_2d06c
	frame 18, OAM_2d070
	jump_rel .loop

AnimScript_22602:
.loop
	frame 16, OAM_2d074
	frame 16, OAM_2d078
	frame 16, OAM_2d07c
	frame 16, OAM_2d080
	jump_rel .loop

AnimScript_22610:
	frame  0, OAM_2d084

AnimScript_22613:
	frame  0, OAM_2d094

AnimScript_22616:
	frame 64, OAM_2cf20
	play_sfx SFX_EXPLOSION
	frame  0, OAM_2d0b4

AnimScript_22620:
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

AnimScript_22645:
	frame 64, OAM_2d8b8
	frame  0, OAM_2d2ac

AnimScript_2264b:
	frame  0, OAM_2cfbc

AnimScript_2264e:
	frame 11, OAM_2d8b8
AnimScript_22651:
	frame 12, OAM_2d29c
AnimScript_22654:
	frame 11, OAM_2d8b8
AnimScript_22657:
	frame 11, OAM_2d8b8
AnimScript_2265a:
	frame 12, OAM_2d29c
	jump_rel AnimScript_2264e

AnimScript_2265f:
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

AnimScript_22688:
.loop
	frame 20, OAM_2cfbc
	create_object AnimScript_2269e, MotionScript_10008, Data_3425
	frame 20, OAM_2cfbc
	create_object AnimScript_226b2, MotionScript_10008, Data_3425
	jump_rel .loop

AnimScript_2269e:
	calltable_random 7
	dw AnimScript_226fe
	dw AnimScript_22702
	dw AnimScript_22706
	dw AnimScript_2270a
	dw AnimScript_2270e
	dw AnimScript_22712
	dw AnimScript_22716
	dw AnimScript_2271a
	jump_rel AnimScript_226c4

AnimScript_226b2:
	calltable_random 7
	dw AnimScript_2271e
	dw AnimScript_22722
	dw AnimScript_22726
	dw AnimScript_2272a
	dw AnimScript_2272e
	dw AnimScript_22732
	dw AnimScript_22736
	dw AnimScript_2273a

AnimScript_226c4:
	jumptable_random 7
	dw AnimScript_226db
	dw AnimScript_226e0
	dw AnimScript_226e5
	dw AnimScript_226ea
	dw AnimScript_226d6
	dw AnimScript_226ef
	dw AnimScript_226f4
	dw AnimScript_226f9

AnimScript_226d6:
	set_scripts AnimScript_225d8, MotionScript_127fa

AnimScript_226db:
	set_scripts AnimScript_225e6, MotionScript_127fa

AnimScript_226e0:
	set_scripts AnimScript_225ae, MotionScript_127fa

AnimScript_226e5:
	set_scripts AnimScript_225bc, MotionScript_127fa

AnimScript_226ea:
	set_scripts AnimScript_225ca, MotionScript_127fa

AnimScript_226ef:
	set_scripts AnimScript_225f4, MotionScript_127fe

AnimScript_226f4:
	set_scripts AnimScript_22602, MotionScript_127fe

AnimScript_226f9:
	set_scripts AnimScript_225ab, MotionScript_12802


AnimScript_226fe:
	position_offset -62, 0
	script_ret

AnimScript_22702:
	position_offset -56, 0
	script_ret

AnimScript_22706:
	position_offset -51, 0
	script_ret

AnimScript_2270a:
	position_offset -46, 0
	script_ret

AnimScript_2270e:
	position_offset -41, 0
	script_ret

AnimScript_22712:
	position_offset -36, 0
	script_ret

AnimScript_22716:
	position_offset -31, 0
	script_ret

AnimScript_2271a:
	position_offset -26, 0
	script_ret

AnimScript_2271e:
	position_offset 26, 0
	script_ret

AnimScript_22722:
	position_offset 31, 0
	script_ret

AnimScript_22726:
	position_offset 36, 0
	script_ret

AnimScript_2272a:
	position_offset 41, 0
	script_ret

AnimScript_2272e:
	position_offset 46, 0
	script_ret

AnimScript_22732:
	position_offset 51, 0
	script_ret

AnimScript_22736:
	position_offset 56, 0
	script_ret

AnimScript_2273a:
	position_offset 62, 0
	script_ret

AnimScript_2273e:
	frame 15, OAM_2d8b8
	script_repeat 15
	script_delay 4
	set_value wd065, $01
	script_delay 204
	create_object AnimScript_2275c, MotionScript_10008, Data_3425
	script_repeat_end
	script_delay 180
	script_delay 160
	set_value wd067, $01
	script_end

AnimScript_2275c:
	script_repeat 32
	inc_value wCreditsTextScroll
	frame  2, OAM_2d8b8
	script_repeat_end
	script_end

AnimScript_22766:
	frame  0, OAM_2d884

AnimScript_22769:
	set_scripts AnimScript_22766, MotionScript_1281a

AnimScript_2276e:
	set_scripts AnimScript_22766, MotionScript_12829

AnimScript_22773:
	set_update_func Func_14200, AnimScript_22781
.loop
	frame 40, OAM_2d89c
	frame 40, OAM_2d8a4
	jump_abs .loop

AnimScript_22781:
	play_sfx SFX_GAME_START
	jump_if_equal wd3cf, $01, .script_227cd
	set_motion_script MotionScript_1289e
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
.script_227cd
	play_sfx SFX_19
	set_motion_script MotionScript_128f0
	script_repeat 2
	frame 35, OAM_2d89c
	frame 35, OAM_2d8a4
	script_repeat_end
	frame 10, OAM_2d89c
	play_sfx SFX_DAMAGE
.script_227e6
	frame  4, OAM_2dbe1
	create_object AnimScript_22333, MotionScript_Star_RandomDirection, Data_3425
	jump_rel .script_227e6

AnimScript_227f2:
	set_update_func Func_14200, AnimScript_227ff
.loop
	frame 40, OAM_2d8b8
	frame 40, OAM_2d8ac
	jump_rel .loop

AnimScript_227ff:
	jump_if_equal wd3cf, $00, .loop
	script_end
.loop
	script_repeat 2
	frame 20, OAM_2d8b8
	frame 20, OAM_2d8ac
	script_repeat_end
	script_end

AnimScript_22810:
	frame 10, OAM_2d87c
	frame 50, OAM_2d884
	frame 120, OAM_2d894
	frame  5, OAM_2d884
	frame  5, OAM_2d88c
	script_delay 150
	set_value wd3d0, $01
	set_flags hKirbyFlags6, $ff, $80
	script_end

AnimScript_2282b:
	frame 10, OAM_2d87c
	frame 10, OAM_2d884
	frame  0, OAM_2d87c

AnimScript_22834:
	frame  2, OAM_2d884
	frame 26, OAM_2d88c
	set_value wd3d0, $01
	set_flags hKirbyFlags6, $80, $00
	frame  0, OAM_2d88c

AnimScript_22846:
.loop
	frame  6, OAM_2e7b9
	frame  6, OAM_2e7d1
	frame  6, OAM_2e7e9
	frame  6, OAM_2e801
	jump_rel .loop

AnimScript_22854:
.loop
	frame  2, OAM_2e7b9
	frame  2, OAM_2e7d1
	frame  2, OAM_2e7e9
	frame  2, OAM_2e801
	jump_abs .loop

AnimScript_22863:
.loop
	frame 16, OAM_2e7b9
	frame 16, OAM_2e7d1
	frame 16, OAM_2e7e9
	frame 16, OAM_2e801
	jump_rel .loop

AnimScript_22871:
	play_sfx SFX_EXPLOSION
	script_call .script_22883
	create_object AnimScript_228a3, MotionScript_12a9a, Data_3421
	script_call .script_22883
	script_end

.script_22883
	frame  2, OAM_2dd39
	frame  2, OAM_2dd51
	frame  2, OAM_2dd69
	frame  2, OAM_2dd81
	frame  2, OAM_2dd99
	frame  2, OAM_2ddb1
	frame  2, OAM_2ddc9
	frame  2, OAM_2dde1
	script_ret

; unreferenced
AnimScript_2289c:
	set_abs_pos
	set_position 80, 80
	jump_abs AnimScript_WarpStar

AnimScript_228a3:
	set_value wClearScreenFlags, CLEAR_ACTIVE | CLEAR_NON_MIKE
	frame  0, OAM_2e889

AnimScript_228aa:
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
	frame  8, OAM_2e469
	frame  8, OAM_2e429
	frame  0, OAM_2e469

AnimScript_228f9:
.loop
	script_exec Func_495c
	branch_kirby_pos .script_22903, .script_22916
.script_22903
	jumptable wd3bd
	dw .script_22929
	dw .script_22929
	dw .script_22941
	dw .script_22941
	dw .script_22941
	dw .script_22941
	dw .script_22941
	dw .script_22929

.script_22916
	jumptable wd3bd
	dw .script_22931
	dw .script_22931
	dw .script_22939
	dw .script_22939
	dw .script_22939
	dw .script_22939
	dw .script_22939
	dw .script_22931

.script_22929
	frame 20, OAM_2e529
	frame 20, OAM_2e569
	jump_rel .loop
.script_22931
	frame 20, OAM_2e5a9
	frame 20, OAM_2e5e9
	jump_rel .loop
.script_22939
	frame 20, OAM_2e4a9
	frame 20, OAM_2e4e9
	jump_rel .loop
.script_22941
	frame 20, OAM_2e429
	frame 20, OAM_2e469
	jump_rel .loop

AnimScript_22949:
.loop
	branch_kirby_pos .script_22950, .script_22958
.script_22950
	frame  2, OAM_2e429
	frame  2, OAM_2e469
	jump_rel .loop
.script_22958
	frame  2, OAM_2e4a9
	frame  2, OAM_2e4e9
	jump_rel .loop

AnimScript_22960:
.loop
	branch_kirby_pos .script_22967, .script_2296f
.script_22967
	frame  8, OAM_2e429
	frame  8, OAM_2e469
	jump_rel .loop
.script_2296f
	frame  8, OAM_2e4a9
	frame  8, OAM_2e4e9
	jump_rel .loop

AnimScript_22977:
.loop
	frame  8, OAM_2e629
	frame  8, OAM_2e669
	jump_rel .loop

AnimScript_2297f:
.loop
	frame  8, OAM_2e6a9
	frame  8, OAM_2e6e9
	jump_rel .loop

; unreferenced
AnimScript_22987:
.loop
	frame  8, OAM_2e529
	frame  8, OAM_2e569
	jump_rel .loop

; unreferenced
AnimScript_2298f:
.loop
	frame  8, OAM_2e5a9
	frame  8, OAM_2e5e9
	jump_rel .loop

AnimScript_22997:
	script_repeat 2
	frame  2, OAM_2e429
	frame  2, OAM_2e569
	frame  2, OAM_2e5a9
	frame  2, OAM_2e4e9
	script_repeat_end
	script_exec Func_4897
	script_end

AnimScript_229aa:
	play_music MUSIC_NONE
	create_object AnimScript_20967, MotionScript_1032d, Data_3421
	script_call AnimScript_20b05
	script_exec_arg ScriptFunc_AddScore, SCORE_2500
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	frame 30, OAM_2d8b8
	set_value wClearScreenFlags, CLEAR_ACTIVE | CLEAR_NON_MIKE
	script_end

AnimScript_229c9:
	jumptable_random 3
	dw .script_229d3
	dw .script_229f9
	dw .script_229df
	dw .script_229f9

.script_229d3
	script_repeat 1
	frame 16, OAM_2de75
	frame 16, OAM_2de7d
	script_repeat_end
	jump_abs .loop
.script_229df
	script_repeat 3
	frame 16, OAM_2de75
	frame 16, OAM_2de7d
	script_repeat_end
.loop
	set_motion_script MotionScript_10008
	script_repeat 8
	frame  3, OAM_2de8d
	frame  3, OAM_2de75
	script_repeat_end
	script_call AnimScript_2202e
.script_229f9
	set_scripts AnimScript_205e1, MotionScript_102d4

AnimScript_229fe:
	jumptable_random 3
	dw .script_22a08
	dw .script_22a2e
	dw .script_22a14
	dw .script_22a2e

.script_22a08
	script_repeat 1
	frame 16, OAM_2de9d
	frame 16, OAM_2dea5
	script_repeat_end
	jump_abs .loop
.script_22a14
	script_repeat 3
	frame 16, OAM_2de9d
	frame 16, OAM_2dea5
	script_repeat_end
.loop
	set_motion_script MotionScript_10008
	script_repeat 8
	frame  3, OAM_2deb5
	frame  3, OAM_2de9d
	script_repeat_end
	script_call AnimScript_2208f
.script_22a2e
	set_scripts AnimScript_205ea, MotionScript_102d7

AnimScript_22a33:
	frame  0, OAM_2d8b8

AnimScript_22a36:
	create_object AnimScript_22afa, MotionScript_12fc0, StandardEnemyProperties
	frame  4, OAM_2d8b8
	frame 10, OAM_2c4a0
	frame  4, OAM_2d8b8
	frame  5, OAM_2c4a0
	frame 12, OAM_2c4a8
	script_repeat 11
	frame  8, OAM_2c4c0
	frame  8, OAM_2c4b8
	script_repeat_end
	frame 10, OAM_2c4b8
	frame  5, OAM_2c4d8
	set_pal_dark
	frame  5, OAM_2c4d8
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_22a67:
	create_object AnimScript_22afa, MotionScript_12fd6, StandardEnemyProperties
	frame  4, OAM_2d8b8
	frame 10, OAM_2c4a0
	frame  4, OAM_2d8b8
	frame  5, OAM_2c4a0
	frame 12, OAM_2c4a8
	script_repeat 11
	frame  8, OAM_2c4d0
	frame  8, OAM_2c4c8
	script_repeat_end
	frame 10, OAM_2c4c8
	frame  5, OAM_2c4d8
	set_pal_dark
	frame  5, OAM_2c4d8
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_22a98:
	create_object AnimScript_22afa, MotionScript_12fd6, StandardEnemyProperties
	frame  4, OAM_2d8b8
	frame 10, OAM_2c4a0
	frame  4, OAM_2d8b8
	frame  5, OAM_2c4a0
	frame 12, OAM_2c4e0
	script_repeat 11
	frame  8, OAM_2c500
	frame  8, OAM_2c508
	script_repeat_end
	frame 10, OAM_2c508
	frame  5, OAM_2c510
	set_pal_dark
	frame  5, OAM_2c510
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_22ac9:
	create_object AnimScript_22afa, MotionScript_12fc0, StandardEnemyProperties
	frame  4, OAM_2d8b8
	frame 10, OAM_2c4a0
	frame  4, OAM_2d8b8
	frame  5, OAM_2c4a0
	frame 12, OAM_2c4e0
	script_repeat 11
	frame  8, OAM_2c4f0
	frame  8, OAM_2c4f8
	script_repeat_end
	frame 10, OAM_2c4f8
	frame  5, OAM_2c510
	set_pal_dark
	frame  5, OAM_2c510
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_22afa:
	play_sfx SFX_30
	frame  0, OAM_2c494

AnimScript_22b01:
	create_object AnimScript_22b53, MotionScript_130cf, StandardEnemyProperties
	jump_abs AnimScript_22c09
; unreferenced
	create_object AnimScript_22b53, MotionScript_130cf, StandardEnemyProperties
	jump_abs AnimScript_22c09
AnimScript_22b15:
	create_object AnimScript_22b53, MotionScript_130d8, StandardEnemyProperties
	jump_abs AnimScript_22c09
AnimScript_22b1f:
	create_object AnimScript_22b53, MotionScript_130e1, StandardEnemyProperties
;	fallthrough
AnimScript_22c09:
.loop
	script_repeat 5
	frame  8, OAM_2c4b8
	frame  8, OAM_2c4c0
	script_repeat_end
	frame  4, OAM_2c4b8
	frame  4, OAM_2c4c0
	frame 20, OAM_2c4b0
	script_repeat 5
	frame  8, OAM_2c4b8
	frame  8, OAM_2c4c0
	script_repeat_end
	frame  8, OAM_2c4b8
	frame  5, OAM_2c4d8
	set_pal_dark
	frame  5, OAM_2c4d8
	set_pal_light
	frame  0, OAM_2d8b8

AnimScript_22b53:
	position_offset -16, 0
	frame 80, OAM_2c494
	play_sfx SFX_JUMP
	frame  0, OAM_2c494

AnimScript_22b60:
	jump_if_equal wBossHP, 0, .script_22b7a
	script_call AnimScript_20b49
	set_value wKirbySideOfScreen, $00
	set_value wd3cf, $00
	set_value wd3d0, $00
	set_value wd3d1, $00
	script_end

.script_22b7a
	jump_if_equal wStage, MT_DEDEDE, .mt_dedede
	jump_if_equal wArea, CASTLE_LOLOLO_08, .castle_lololo_midstage
.mt_dedede
	play_music MUSIC_NONE
	play_sfx SFX_29
	script_call AnimScript_20b05
	script_exec_arg ScriptFunc_AddScore, SCORE_650
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	script_delay 120
	set_flags hKirbyFlags5, $ff, KIRBY5F_TRIGGER_TRANSITION
	script_end

.castle_lololo_midstage
	script_call AnimScript_20b49
	script_exec_arg ScriptFunc_AddScore, SCORE_400
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	script_delay 120
	set_flags hKirbyFlags5, $ff, KIRBY5F_TRIGGER_TRANSITION
	script_end

AnimScript_22bb6:
	script_delay 1
	play_sfx SFX_NONE
	branch_kirby_pos .script_22bc3, .script_22bcb
.script_22bc3
	frame 16, OAM_2c7c8
	frame 32, OAM_2c7f8
	jump_rel .script_22bc3
.script_22bcb
	frame 16, OAM_2c7e0
	frame 32, OAM_2c810
	jump_rel .script_22bcb

AnimScript_22bd3:
.loop
	frame  4, OAM_2c828
	frame 12, OAM_2c860
	frame 10, OAM_2c828
	jump_rel .loop

AnimScript_22bde:
.loop
	frame  4, OAM_2c844
	frame 12, OAM_2c87c
	frame 10, OAM_2c844
	jump_rel .loop

AnimScript_22be9:
.loop
	frame  4, OAM_2c9a0
	frame 12, OAM_2c9e8
	frame 10, OAM_2c9a0
	jump_rel .loop

AnimScript_22bf4:
.loop
	frame  4, OAM_2c9c4
	frame 12, OAM_2ca0c
	frame 10, OAM_2c9c4
	jump_rel .loop

AnimScript_22bff:
	frame  6, OAM_2c9a0
	frame  0, OAM_2c9a0

AnimScript_22c05:
	frame  6, OAM_2c9c4
	frame  0, OAM_2ca0c

AnimScript_22c0b:
	play_sfx SFX_23
	set_motion_script MotionScript_13109.script_1315f
	frame  0, OAM_2c8c8

AnimScript_22c17:
	play_sfx SFX_23
	set_motion_script MotionScript_13109.script_1317d
	frame  0, OAM_2c8e0

AnimScript_22c23:
	frame 32, OAM_2c8b8
	play_sfx SFX_DAMAGE
	frame 80, OAM_2c898
	create_object AnimScript_22f6f, MotionScript_133c8, Properties_3648
	create_object AnimScript_22f6f, MotionScript_133d5, Properties_3648
	frame  0, OAM_2c8b8

AnimScript_22c3e:
	play_sfx SFX_34
	set_motion_script MotionScript_13109.script_13292
	frame 15, OAM_2c968
	set_value wd3d2, $00
.script_22c4e
	frame  1, OAM_2c968
	script_exec Func_4b19
	jump_if_equal wd3d2, $ff, .script_22c65
	jump_if_equal wd3d2, $64, .script_22c9d
	inc_value wd3d2
	jump_rel .script_22c4e
.script_22c65
	script_exec Func_4bad
	set_value wd3d2, $00
.script_22c6c
	frame  1, OAM_2c968
	jump_if_equal wd3d2, $ff, .script_22c80
	jump_if_equal wd3d2, $64, .script_22c9d
	inc_value wd3d2
	jump_rel .script_22c6c
.script_22c80
	play_sfx SFX_35
	play_sfx SFX_02
	set_motion_script MotionScript_10008
	frame  4, OAM_2c8f8
	frame 48, OAM_2c928
	script_exec Func_4b5a
	play_sfx SFX_PUFF
	frame 56, OAM_2c968
.script_22c9d
	script_delay 20
	set_object_properties Properties_3604
	set_scripts AnimScript_22bb6, MotionScript_13109.script_132c0

AnimScript_22ca9:
	play_sfx SFX_34
	set_motion_script MotionScript_13109.script_132a9
	frame 15, OAM_2c984
	set_value wd3d2, $00
.script_22cb9
	frame  1, OAM_2c984
	script_exec Func_4b27
	jump_if_equal wd3d2, $ff, .script_22cd0
	jump_if_equal wd3d2, $64, .script_22d08
	inc_value wd3d2
	jump_rel .script_22cb9
.script_22cd0
	script_exec Func_4bad
	set_value wd3d2, $00
.script_22cd7
	frame  1, OAM_2c984
	jump_if_equal wd3d2, $ff, .script_22ceb
	jump_if_equal wd3d2, $64, .script_22d08
	inc_value wd3d2
	jump_rel .script_22cd7
.script_22ceb
	play_sfx SFX_35
	play_sfx SFX_02
	set_motion_script MotionScript_10008
	frame  4, OAM_2c910
	frame 48, OAM_2c948
	script_exec Func_4b5f
	play_sfx SFX_PUFF
	frame 56, OAM_2c984
.script_22d08
	script_delay 20
	set_object_properties Properties_3604
	set_scripts AnimScript_22bb6, MotionScript_13109.script_132c0

AnimScript_22d14:
	set_value wd3cd, $00
	jumptable wd3bd
	dw .script_22d2c
	dw .script_22d55
	dw .script_22d25
	dw .script_22db2
	dw .script_22d89

.script_22d25
	branch_kirby_pos .script_22d55, .script_22db2
.script_22d2c
	set_motion_script MotionScript_13109.script_13332
	create_object AnimScript_22e4e, MotionScript_13109.script_13332, Properties_3636
	frame 16, OAM_2ca30
	frame 10, OAM_2c828
	create_object AnimScript_22f6f, MotionScript_133ae, Properties_3648
	frame 24, OAM_2ca70
	frame 10, OAM_2c828
	frame 16, OAM_2ca30
	set_motion_script MotionScript_13109.script_13319
	script_delay 10
.script_22d55
	set_object_properties Properties_360d
	set_motion_script MotionScript_13109.script_13207
	frame 32, OAM_2c9e8
	set_object_properties Properties_3604
	create_object AnimScript_22e4e, MotionScript_13109.script_1320a, Properties_3636
	frame 16, OAM_2ca30
	play_sfx SFX_28
	frame 10, OAM_2c828
	frame 24, OAM_2ca70
	frame 10, OAM_2c828
	frame 16, OAM_2ca30
.script_22d81
	frame 16, OAM_2c9e8
	set_scripts .script_22d81, MotionScript_13109.script_13319
.script_22d89
	set_motion_script MotionScript_13109.script_13332
	create_object AnimScript_22ed1, MotionScript_13109.script_13332, Properties_3636
	frame 16, OAM_2ca50
	frame 10, OAM_2c844
	create_object AnimScript_22f6f, MotionScript_133bb, Properties_3648
	frame 24, OAM_2ca8c
	frame 10, OAM_2c844
	frame 16, OAM_2ca50
	set_motion_script MotionScript_13109.script_13319
	script_delay 100
.script_22db2
	set_motion_script MotionScript_13109.script_13207
	frame 32, OAM_2ca0c
	create_object AnimScript_22ed1, MotionScript_13109.script_1320a, Properties_3636
	frame 16, OAM_2ca50
	play_sfx SFX_28
	frame 10, OAM_2c844
	frame 24, OAM_2ca8c
	frame 10, OAM_2c844
	frame 16, OAM_2ca50
.script_22dd4
	frame 16, OAM_2ca0c
	set_scripts .script_22dd4, MotionScript_13109.script_13319

AnimScript_22ddc:
	branch_kirby_pos .script_22de3, .script_22de8
.script_22de3
	frame 30, OAM_2caf8
	jump_rel .script_22deb
.script_22de8
	frame 30, OAM_2cb14
.script_22deb
	script_exec Func_4897
	script_end

AnimScript_22def:
	set_flags hKirbyFlags5, $00, $20
	set_value wObjectAnimScriptTimers + OBJECT_SLOT_KIRBY, $ff
	play_music MUSIC_NONE
	create_object AnimScript_22e3f, MotionScript_10008, Data_3421
	create_object AnimScript_20967, MotionScript_10008, Data_3421
	set_value wClearScreenFlags, $81
	branch_kirby_pos .script_22e15, .script_22e2a
.script_22e15
	play_sfx SFX_00
	set_motion_script MotionScript_1338b
.script_22e1e
	frame  4, OAM_2caf8
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3421
	jump_rel .script_22e1e
.script_22e2a
	play_sfx SFX_00
	set_motion_script MotionScript_13382
.script_22e33
	frame  4, OAM_2cb14
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3421
	jump_rel .script_22e33

AnimScript_22e3f:
	frame  1, OAM_2d8b8
	script_delay 180
	set_flags hKirbyFlags5, $20, $04
	script_delay 0
	frame  0, OAM_2dc25

AnimScript_22e4e:
	create_object AnimScript_22f54, MotionScript_133e2, Properties_3628
	frame 16, OAM_2caa8
	create_object AnimScript_22f58, MotionScript_133e8, Properties_3628
	frame  2, OAM_2cab0
	create_object AnimScript_22f58, MotionScript_133ee, Properties_3628
	frame  2, OAM_2cab8
	create_object AnimScript_22f58, MotionScript_133f4, Properties_3628
	frame  2, OAM_2cac0
	create_object AnimScript_22f58, MotionScript_133fa, Properties_3628
	frame  2, OAM_2cac8
	create_object AnimScript_22f58, MotionScript_13400, Properties_3628
	frame  2, OAM_2cad0
	create_object AnimScript_22f5c, MotionScript_13406, Properties_362f
	frame 24, OAM_2cad8
	create_object AnimScript_22f58, MotionScript_13400, Properties_3628
	frame  2, OAM_2cad0
	create_object AnimScript_22f58, MotionScript_133fa, Properties_3628
	frame  2, OAM_2cac8
	create_object AnimScript_22f58, MotionScript_133f4, Properties_3628
	frame  2, OAM_2cac0
	create_object AnimScript_22f58, MotionScript_133ee, Properties_3628
	frame  2, OAM_2cab8
	create_object AnimScript_22f58, MotionScript_133e8, Properties_3628
	frame  2, OAM_2cab0
	create_object AnimScript_22f54, MotionScript_133e2, Properties_3628
	frame 16, OAM_2caa8
	script_end

AnimScript_22ed1:
	create_object AnimScript_22f54, MotionScript_133f4, Properties_3628
	frame 16, OAM_2cac0
	create_object AnimScript_22f58, MotionScript_133ee, Properties_3628
	frame  2, OAM_2cab8
	create_object AnimScript_22f58, MotionScript_133e8, Properties_3628
	frame  2, OAM_2cab0
	create_object AnimScript_22f58, MotionScript_133e2, Properties_3628
	frame  2, OAM_2caa8
	create_object AnimScript_22f58, MotionScript_1340c, Properties_3628
	frame  2, OAM_2cae0
	create_object AnimScript_22f58, MotionScript_13412, Properties_3628
	frame  2, OAM_2cae8
	create_object AnimScript_22f5c, MotionScript_13418, Properties_362f
	frame 24, OAM_2caf0
	create_object AnimScript_22f58, MotionScript_13412, Properties_3628
	frame  2, OAM_2cae8
	create_object AnimScript_22f58, MotionScript_1340c, Properties_3628
	frame  2, OAM_2cae0
	create_object AnimScript_22f58, MotionScript_133e2, Properties_3628
	frame  2, OAM_2caa8
	create_object AnimScript_22f58, MotionScript_133e8, Properties_3628
	frame  2, OAM_2cab0
	create_object AnimScript_22f58, MotionScript_133ee, Properties_3628
	frame  2, OAM_2cab8
	create_object AnimScript_22f54, MotionScript_133f4, Properties_3628
	frame 16, OAM_2cac0
	script_end

AnimScript_22f54:
	frame  8, OAM_2d8b8
	script_end

AnimScript_22f58:
	frame  2, OAM_2d8b8
	script_end

AnimScript_22f5c:
	frame  6, OAM_2d8b8
	script_end

AnimScript_22f60:
	frame  0, OAM_2d8b8

AnimScript_WarpStarTrailingStar1:
	position_offset 0, -6
	jump_abs AnimScript_Star

AnimScript_WarpStarTrailingStar2:
	position_offset 0, 6
	jump_abs AnimScript_Star

AnimScript_22f6f:
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

AnimScript_DoorGuardGordo:
	set_object_properties Properties_363f
.loop
	script_repeat 2
	frame 10, OAM_2de45
	frame 10, OAM_2de4d
	script_repeat_end
	script_repeat 4
	frame  6, OAM_2de45
	frame  6, OAM_2de4d
	script_repeat_end
	jump_abs .loop
; 0x22fa7
