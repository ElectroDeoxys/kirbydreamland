AnimScript_20000:
	frame  0, $58b8

AnimScript_20003:
	script_delay 0

AnimScript_20005:
	set_object_properties Data_35b7
	set_update_func Func_141b1, AnimScript_20ba2
	script_exec Func_4adf
	set_scripts AnimScript_Explosion, MotionScript_102fb

AnimScript_20017:
	set_object_properties Data_35b7
	set_update_func Func_141b1, AnimScript_20ba2
	set_scripts AnimScript_Explosion, MotionScript_10008

AnimScript_20026:
	jump_if_flags hEngineFlags, KABOOLA_BATTLE, .script_20034
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
	create_object AnimScript_Explosion, MotionScript_135bc, Data_3425
	frame 88, $5c01
.loop
	frame  4, $5c01
	create_object AnimScript_Explosion, MotionScript_10317, Data_3425
	create_object AnimScript_Explosion, MotionScript_135bc, Data_3425
	create_object AnimScript_Explosion, MotionScript_135bc, Data_3425
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

AnimScript_2010c:
	frame  0, $5c01

AnimScript_2010f:
	jumptable_random %11
	dw .sub_20119
	dw .sub_2011e
	dw .sub_20123
	dw .sub_20123

.sub_20119
	frame 48, $5b69
	jump_rel .common

.sub_2011e
	frame 48, $58d9
	jump_rel .common

.sub_20123
	frame 10, $5be1
	frame 10, $5be9
	frame 10, $5bf9
	frame 10, $5bf1
	frame  8, $58d9
.common
	frame 16, $5bc9
	frame  0, $58b9

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
	set_rel_pos
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_2073c
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
	set_kirby_pos
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	script_delay 0

AnimScript_20206:
	set_flags hEngineFlags, $00, ENGINEF_UNK5
	jump_if_flags hKirbyFlags6, KIRBY6F_UNK7, $4008 ; bug?
	set_motion_script MotionScript_135d2
	create_object AnimScript_Explosion, MotionScript_10008, Data_3425
	frame  4, $5c01
	create_object AnimScript_Explosion, MotionScript_10008, Data_3425
	frame  4, $5c01
	create_object AnimScript_Explosion, MotionScript_10008, Data_3425
	frame  8, $5c01
	create_object AnimScript_Explosion, MotionScript_10008, Data_3425
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

AnimScript_2028f:
	script_repeat 6
	create_object AnimScript_22f63, MotionScript_135bc, Data_3425
	frame 10, $5b69
	script_repeat_end

	frame 58, $5b69
	frame  8, $5bc9
	set_kirby_pos
	set_flags hPalFadeFlags, $00, SCROLL_LOCKED
	set_value wStageTransitionCounter, 1
	set_motion_script MotionScript_10008
	frame  0, $58b9

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
	script_call AnimScript_208b8
	script_call AnimScript_208b8
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
	script_call AnimScript_208b8
	script_call AnimScript_208b8
	frame  1, $58d9
	set_flags hKirbyFlags5, KIRBY5F_UNK0, KIRBY5F_UNK0
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
	script_call AnimScript_208cb
	script_call AnimScript_208cb
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
	script_call AnimScript_208cb
	script_call AnimScript_208cb
	frame  1, $5909
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK0
	script_delay 1

AnimScript_2036c:
	create_object AnimScript_20a01, MotionScript_10008, Data_3421
	frame 16, $58b8
	set_flags wClearScreenFlags, $00, CLEAR_NEXT_OBJ
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
	set_flags wClearScreenFlags, $00, CLEAR_NEXT_OBJ
	script_end

AnimScript_203b2:
	frame 32, $58b8
	script_end

AnimScript_203b6:
	script_exec ScriptFunc_CreateExplosion
	set_object_properties ExplosionProperties
AnimScript_Explosion:
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

AnimScript_SpitStar:
	play_sfx SFX_STAR_SPIT
	jump_if_flags wPowerUpAttack, POWERUP_MIKE, AnimScript_20bc9
	jump_if_flags wPowerUpAttack, POWERUP_BOMB, AnimScript_20bb7
	set_update_func Func_141b1, AnimScript_20b9a
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_2045b
	script_repeat 2
	frame  4, $5c25
	frame  4, $5c45
	frame  4, $5c3d
	frame  4, $5c2d
	script_repeat_end
	frame  4, $5c25
	frame  4, $5c45
	frame  2, $5c1d
	script_end

.script_2045b
	script_repeat 2
	frame  4, $5c25
	frame  4, $5c2d
	frame  4, $5c3d
	frame  4, $5c45
	script_repeat_end
	frame  4, $5c25
	frame  4, $5c45
	frame  4, $5c1d
	script_end

AnimScript_20474:
	frame  0, $5df9

AnimScript_KirbyPuff:
	play_sfx SFX_PUFF
	jump_if_flags wPowerUpAttack, POWERUP_MIKE, AnimScript_20bc9
	jump_if_flags wPowerUpAttack, POWERUP_BOMB, AnimScript_20bb7
	jump_if_flags hEngineFlags, KABOOLA_BATTLE, .script_2049e
	set_update_func Func_141b1, AnimScript_20b9a
.check_land
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_2049b
	frame  0, $5cf9
.script_2049b
	frame  0, $5cf1
.script_2049e
	frame  1, $58b8
	set_abs_pos
	jump_rel .check_land

AnimScript_204a4:
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103bf, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103fb, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103f7, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103f3, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103ef, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103eb, GlunkPodProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_ret

AnimScript_2051d:
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103bf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103c3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103c7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103cb, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103cf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103d3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_ret

AnimScript_20566::
	frame  4, $5b81
	frame  0, $5b89

AnimScript_2056c::
	frame  4, $5b99
	frame  0, $5ba1

AnimScript_20572:
.loop
	script_repeat 2
	frame 10, $5e45
	frame 10, $5e4d
	script_repeat_end
	script_repeat 4
	frame  6, $5e45
	frame  6, $5e4d
	script_repeat_end
	jump_abs .loop

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

AnimScript_205e1:
.loop
	frame 16, $5e75
	frame 16, $5e7d
	jump_abs .loop
; 0x205ea

SECTION "Bank 8@461d", ROMX[$461d], BANK[$8]

AnimScript_2061d:
.loop
	frame 10, $5e75
	frame 10, $5e7d
	frame 10, $5e75
	frame 10, $5e7d
	frame 20, $5e9d
	frame 10, $5ea5
	frame 10, $5e9d
	frame 10, $5ea5
	frame 10, $5e75
	jump_abs .loop

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

AnimScript_20650:
.loop
	frame 10, $5ed5
	frame 10, $5edd
	jump_abs .loop

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

SECTION "Bank 8@4671", ROMX[$4671], BANK[$8]

AnimScript_20671:
.loop
	script_repeat 3
	frame 10, $5ef5
	create_object AnimScript_Bullet, MotionScript_1030e, ShotzoBulletProperties
	set_motion_script MotionScript_102a4
	frame 10, $5ef5
	script_repeat_end
	frame 96, $5ef5
	jump_abs .loop

AnimScript_2068c:
.loop
	create_object AnimScript_Bullet, MotionScript_102e9, ShotzoBulletProperties
	set_motion_script MotionScript_102bc
	frame 32, $5f05
	create_object AnimScript_Bullet, MotionScript_102ef, ShotzoBulletProperties
	set_motion_script MotionScript_102b0
	frame 32, $5efd
	create_object AnimScript_Bullet, MotionScript_102ec, ShotzoBulletProperties
	set_motion_script MotionScript_102a4
	frame 32, $5ef5
	create_object AnimScript_Bullet, MotionScript_102f2, ShotzoBulletProperties
	set_motion_script MotionScript_10298
	frame 32, $5eed
	create_object AnimScript_Bullet, MotionScript_102e6, ShotzoBulletProperties
	set_motion_script MotionScript_1028c
	frame 32, $5ee5
	create_object AnimScript_Bullet, MotionScript_102f2, ShotzoBulletProperties
	set_motion_script MotionScript_10298
	frame 32, $5eed
	create_object AnimScript_Bullet, MotionScript_102ec, ShotzoBulletProperties
	set_motion_script MotionScript_102a4
	frame 32, $5ef5
	create_object AnimScript_Bullet, MotionScript_102ef, ShotzoBulletProperties
	set_motion_script MotionScript_102b0
	frame 32, $5efd
	jump_abs .loop

AnimScript_20707:
.loop
	frame 30, $5ef5
	script_repeat 3
	frame 10, $5ef5
	create_object AnimScript_Bullet, MotionScript_102ec, ShotzoBulletProperties
	frame 20, $5ef5
	frame 10, $5efd
	create_object AnimScript_Bullet, MotionScript_102ef, ShotzoBulletProperties
	frame 20, $5efd
	frame  5, $5ef5
	frame  5, $5eed
	create_object AnimScript_Bullet, MotionScript_102f2, ShotzoBulletProperties
	frame 20, $5eed
	frame 100, $5ef5
	jump_abs .loop

AnimScript_2073c:
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
	frame 10, $58f1
	frame  6, $58f9
	frame 10, $5901
	frame  6, $58f9
	jump_rel .loop_1

.walk_right
	set_motion_script MotionScript_10af4
.loop_2
	frame 10, $58c1
	frame  6, $58c9
	frame 10, $58d1
	frame  6, $58c9
	jump_rel .loop_2

AnimScript_MainKirbyStageClearDance:
	set_motion_script MotionScript_10008
	; create extra Kirbys for dance
	create_object AnimScript_LeftKirbyStageClearDance, MotionScript_10008, Data_3425
	create_object AnimScript_RightKirbyStageClearDance, MotionScript_10008, Data_3425
	script_call AnimScript_208b8
	frame 55, $58e1
	play_music MUSIC_VICTORY

AnimScript_KirbyStageClearDance_Common:
	jumptable wStage
	table_width 2
	dw AnimScript_KirbyStageClearDance_GreenGreens  ; GREEN_GREENS
	dw AnimScript_KirbyStageClearDance_CastleLololo ; CASTLE_LOLOLO
	dw AnimScript_KirbyStageClearDance_FloatIslands ; FLOAT_ISLANDS
	dw AnimScript_KirbyStageClearDance_BubblyClouds ; BUBBLY_CLOUDS
	assert_table_length NUM_STAGES - 1

AnimScript_LeftKirbyStageClearDance:
	position_offset -30, 0
	script_call AnimScript_208de
	frame 55, $58e1
	jump_abs AnimScript_KirbyStageClearDance_Common

AnimScript_RightKirbyStageClearDance:
	position_offset 30, 0
	script_call AnimScript_208de
	frame 55, $58e1
	jump_abs AnimScript_KirbyStageClearDance_Common

AnimScript_KirbyStageClearDance_GreenGreens:
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
	set_value wStageTransitionCounter, 1
	script_delay 0

AnimScript_KirbyStageClearDance_CastleLololo:
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
	set_value wStageTransitionCounter, 1
	script_delay 0

AnimScript_KirbyStageClearDance_FloatIslands:
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
	set_value wStageTransitionCounter, 1
	script_delay 0

AnimScript_KirbyStageClearDance_BubblyClouds:
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
	set_value wStageTransitionCounter, 1
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

AnimScript_208f1:
	frame  0, $5c1d

AnimScript_BombItem:
	script_exec Func_4ad6
	set_update_func ObjFunc_CountdownToExplosion, 256
AnimScript_208fc:
	frame 162, $5c4d
.loop
	frame  2, $5c55
	frame  2, $5c4d
	jump_rel .loop
; 0x20907

SECTION "Bank 8@490a", ROMX[$490a], BANK[$8]

AnimScript_2090a:
	script_exec Func_4ad6
	frame  0, $5c5d
; 0x20910

SECTION "Bank 8@4913", ROMX[$4913], BANK[$8]

AnimScript_SpicyFood:
	script_exec Func_4ad6
	frame  0, $5c65
; 0x20919

SECTION "Bank 8@491c", ROMX[$491c], BANK[$8]

AnimScript_MintLeaf:
	script_exec Func_4ad6
	frame  0, $5c6d
; 0x20922

SECTION "Bank 8@4925", ROMX[$4925], BANK[$8]

AnimScript_20925:
	script_exec Func_4ad6
	frame  0, $5c75

AnimScript_2092b:
	frame  0, $5c7d

AnimScript_EnergyDrink:
	script_exec Func_4ad6
	frame  0, $5c7d

AnimScript_20934:
	frame  0, $5c81
AnimScript_20937:
.loop
	frame 16, $5c89
	set_pal_dark
	frame  8, $5c89
	set_pal_light
	jump_abs .loop

AnimScript_20946:
.loop
	script_exec Func_4ad6
	frame 16, $5c89
	set_pal_dark
	frame  8, $5c89
	set_pal_light
	jump_abs .loop

AnimScript_WarpStar:
.loop
	frame 20, $5c25
	frame 20, $5c2d
	frame 20, $5c3d
	frame 20, $5c45
	jump_abs .loop

AnimScript_20967:
	jump_if_equal wStage, MT_DEDEDE, .mt_dedede
	play_music MUSIC_SPARKLING_STAR
.star_loop
	frame  4, $5c91
	frame  4, $5c9d
	frame  4, $5ca9
	frame  4, $5cb5
	frame  4, $5cc1
	frame  4, $5ccd
	frame  4, $5cd9
	frame  4, $5ce5
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
	frame 120, $58b8
	jump_rel .trigger_transition
.mt_dedede_8
	frame 120, $58b8
	jump_rel .trigger_transition
.mt_dedede_7
	frame 120, $58b8
	jump_rel .trigger_transition
.mt_dedede_9
	frame 120, $58b8
.trigger_transition
	set_flags hKirbyFlags5, $00, KIRBY5F_TRIGGER_TRANSITION
	script_end

AnimScript_209c0:
.loop
	play_sfx SFX_18
	frame  1, $5e01
	frame  1, $5e05
	frame  1, $5e09
	frame  1, $5e0d
	jump_abs .loop
; 0x209d3

SECTION "Bank 8@49d6", ROMX[$49d6], BANK[$8]

AnimScript_Bullet:
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
	branch_kirby_pos .script_20a7d, .script_20a9a
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
	set_value wDisableBumpStars, TRUE
	frame 24, $5c1d
	set_value wDisableBumpStars, FALSE
	script_end

AnimScript_20af2:
	frame  4, $5c1d
	frame  5, $5c25
	frame  5, $5c2d
	frame  5, $5c3d
	frame  5, $5c45
	frame  6, $5c1d
	script_end

AnimScript_20b05:
	play_sfx SFX_29
	create_object AnimScript_Explosion, MotionScript_10008, Data_3421
	create_object AnimScript_20af2, MotionScript_10713, Data_3421
	create_object AnimScript_20af2, MotionScript_1071f, Data_3421
	create_object AnimScript_20af2, MotionScript_1072b, Data_3421
	create_object AnimScript_20af2, MotionScript_10737, Data_3421
	create_object AnimScript_20af2, MotionScript_10743, Data_3421
	create_object AnimScript_20af2, MotionScript_1074f, Data_3421
	create_object AnimScript_20af2, MotionScript_1075b, Data_3421
	create_object AnimScript_20af2, MotionScript_10767, Data_3421
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
	frame  3, $5c1d
	frame  6, $5c25
	frame  0, $5c1d

AnimScript_20b96:
	frame  2, $58b8
	script_end

AnimScript_20b9a:
	script_exec Func_4a1c
	set_scripts AnimScript_209f6, MotionScript_10008

AnimScript_20ba2:
	script_exec Func_4a1c
	set_object_properties Data_35b7
	set_scripts AnimScript_Explosion, MotionScript_10008
AnimScript_20baf:
	set_update_func Func_142a3, NULL
	jump_abs AnimScript_20000

AnimScript_20bb7:
	set_flags wPowerUpAttack, $ff ^ POWERUP_MINT_LEAF, $00
	script_exec Func_4adf
	set_update_func Func_141b1, AnimScript_20ba2
	set_scripts AnimScript_208fc, MotionScript_SpitStar

AnimScript_20bc9:
	set_flags wPowerUpAttack, $ff ^ POWERUP_MINT_LEAF, $00
	play_sfx SFX_00
	script_exec Func_4ae6
	set_scripts AnimScript_20925, MotionScript_10370

AnimScript_20bda:
	position_offset 0, 5
	play_sfx SFX_19
	set_update_func Func_141b1, AnimScript_20b9a
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .loop_2

.loop_1
	frame  2, $5d11
	frame  2, $5d19
	jump_abs .loop_1

.loop_2
	frame  2, $5d01
	frame  2, $5d09
	jump_abs .loop_2

AnimScript_20bfe:
	frame  0, $58d9

AnimScript_20c01:
.loop
	frame  4, $5be1
	frame  4, $5bf1
	frame  4, $5bf9
	frame  4, $5be9
	jump_abs .loop

AnimScript_20c10:
	frame  0, $5b69
; 0x20c13

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
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	branch_kirby_pos .branch_1, .branch_2
.branch_1
	set_motion_script MotionScript_10db7
	script_repeat 6
	frame 4, $41a4
	frame 4, $419c
	script_repeat_end
	script_exec ScriptFunc_ResetImmuneFlag
	set_object_properties CappyProperties
	set_scripts AnimScript_20cc3, MotionScript_10ddf
.branch_2
	set_scripts AnimScript_20cad, MotionScript_10dcb

AnimScript_20cad:
	script_repeat 6
	frame 4, $41b4
	frame 4, $41ac
	script_repeat_end
	script_exec ScriptFunc_ResetImmuneFlag
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

AnimScript_20cef:
.loop
	script_call GfxSubScript_20d01
	script_call GfxSubScript_20cf7
	jump_rel .loop

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
	set_update_func Func_140c2, AnimScript_20c6d
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
	set_update_func Func_141b1, AnimScript_20d79
	set_motion_script MotionScript_10ef1
	frame  0, $417c

AnimScript_20d64:
	position_offset 0, -10
	set_object_properties Data_352c
	set_update_func Func_141b1, AnimScript_20d83
	set_motion_script MotionScript_10ef1
	frame  0, $418c

AnimScript_20d79:
	set_object_properties PoppyBrosJrProperties
	set_scripts AnimScript_20d3f, MotionScript_10e96

AnimScript_20d83:
	set_object_properties PoppyBrosJrProperties
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

SECTION "Bank 8@4da4", ROMX[$4da4], BANK[$8]

AnimScript_20da4:
	set_motion_script MotionScript_10f0e
.loop
	script_call AnimScript_20dbb
	script_call AnimScript_20db1
	jump_rel .loop

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

AnimScript_20dda:
	frame  0, $4224
; 0x20ddd

SECTION "Bank 8@4de5", ROMX[$4de5], BANK[$8]

AnimScript_20de5:
	branch_kirby_pos .script_20de5, .script_20dfe
.script_20de5
	set_motion_script MotionScript_10f3c
	frame 30, $4254
	set_object_properties $3535
	set_scripts AnimScript_20dc5, MotionScript_10f5a

.script_20dfe
; 0x20dfe

SECTION "Bank 8@4e10", ROMX[$4e10], BANK[$8]

AnimScript_20e10:
.loop
	script_call GfxSubScript_20e20
	script_call GfxSubScript_20e3c
	jump_rel .loop
; 0x20e18

SECTION "Bank 8@4e20", ROMX[$4e20], BANK[$8]

GfxSubScript_20e20:
	set_update_func Func_140c2, AnimScript_20e2f
	script_repeat 9
	frame  3, $42d4
	frame 16, $42b4
	script_repeat_end
	script_ret

AnimScript_20e2f:
	create_object AnimScript_20de5, MotionScript_10008, Properties_353e
	position_offset 0, -16
	jump_abs AnimScript_20e8d

GfxSubScript_20e3c:
	set_update_func Func_140c2, AnimScript_20e4b
	script_repeat 9
	frame  3, $4334
	frame 16, $4354
	script_repeat_end
	script_ret

AnimScript_20e4b:
	create_object AnimScript_20de5, MotionScript_10008, Properties_353e
	position_offset 0, -16
	jump_abs AnimScript_20e92

AnimScript_20e58:
	set_update_func Func_140c2, AnimScript_20e83
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
	set_object_properties PoppyBrosJrProperties
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

AnimScript_20ec6:
	play_sfx SFX_28
	branch_kirby_pos .script_20ed1, .script_20edb
.script_20ed1
	create_object AnimScript_20d4f, MotionScript_10008, PoppyBrosJrProperties
	jump_abs AnimScript_20a0f
.script_20edb
	create_object AnimScript_20d64, MotionScript_10008, PoppyBrosJrProperties
	jump_abs AnimScript_20a0f
; 0x20ee5

SECTION "Bank 8@4f14", ROMX[$4f14], BANK[$8]

AnimScript_PoppyBrosSr:
	jump_if_equal wd3f1, $00, .init
	script_end

.init
	set_object_properties Data_356b
	script_exec ScriptFunc_LockScrolling
	set_value wBossHPCounter, 3
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
	frame 45, $4088
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
	frame  8, $4088
	frame  8, $4098
	frame  8, $40a8
	frame 16, $40b8
	frame  8, $40a8
	frame  8, $4098
	frame  8, $4088
	script_repeat_end
	script_ret

.JumpLong:
	set_motion_script MotionScript_PoppyBrosSr.JumpMid
	frame 12, $4088
	frame 12, $4098
	frame 12, $40b8
	frame 24, $40a8
	frame 12, $40b8
	frame 12, $4098
	frame 12, $4088
	set_motion_script MotionScript_PoppyBrosSr.JumpLong
	frame 15, $4088
	frame 15, $4098
	frame 15, $40b8
	frame 30, $40a8
	frame 15, $40b8
	frame 15, $4098
	frame 15, $4088
	script_ret

.ThrowBombNoDelay:
	set_motion_script MotionScript_PoppyBrosSr.JumpHigh
	frame  6, $40c8
	frame  6, $40f0
	frame  6, $410c
	frame  6, $4128
	frame  6, $4144
	frame  8, $4160
	frame  3, $4144
	frame  3, $4128
	play_sfx SFX_28
	create_object AnimScript_PoppyBrosSrBomb, MotionScript_PoppyBrosSrBombBounce, Data_3574
	frame  3, $40dc
	frame  8, $40c8
	frame 21, $4088
	script_ret

.ThrowBombWithDelay:
	set_motion_script MotionScript_PoppyBrosSr.JumpHigh
	frame  6, $40c8
	frame  6, $40f0
	frame  6, $410c
	frame  6, $4128
	frame  6, $4144
	frame 40, $4160
	frame  3, $4144
	frame  3, $4128
	play_sfx SFX_28
	create_object AnimScript_PoppyBrosSrBomb, MotionScript_PoppyBrosSrBombFall, Data_3574
	frame  3, $40dc
	frame  8, $40c8
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
	frame  0, $5c4d

AnimScript_WhispyWoods:
.loop_wait
	jump_if_equal wLevelYSection, $11, .init
	frame  1, $4000
	jump_abs .loop_wait

.init
	set_object_properties Data_3586
	set_value wBossHPCounter, 6
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
	frame 60, $4000
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
	frame 10, $4000
	script_repeat_end
	jump_random 25 percent + 1, .shoot_two_puffs

.spawn_apples
	script_repeat 3
	create_object AnimScript_WhispyWoodsApple_Fall, MotionScript_WhispyWoodsApple, Data_359d
	frame 30, $4000
	frame  4, $400c
	frame  6, $4018
	frame  4, $400c
	frame  6, $4000
	frame 40, $4000
	script_repeat_end
	script_call .BlinkTwice
	jump_random 25 percent + 1, .spawn_apples
	jump_rel .shoot_two_puffs

.BlinkTwice
	frame 20, $4000
	frame  3, $400c
	frame  6, $4018
	frame  3, $400c
	frame  4, $4000
	frame 20, $4000
	frame  3, $400c
	frame  8, $4018
	frame  3, $400c
	frame 10, $4000
	script_ret

.ShootPuff_Slow
	frame  1, $4068
	frame 10, $4078
	create_object AnimScript_WhispyWoodsPuff, MotionScript_WhispyWoodsPuff, Data_3596
	frame 14, $4078
	frame  1, $4068
	frame  1, $4058
	script_ret

.ShootPuff_Fast
	frame  1, $4068
	frame  5, $4078
	create_object AnimScript_WhispyWoodsPuff, MotionScript_WhispyWoodsPuff, Data_3596
	frame  5, $4078
	frame  1, $4068
	frame  1, $4058
	script_ret

AnimScript_210e7:
	frame  6, $4034
	frame 28, $4024
	script_exec Func_4897
	script_end

AnimScript_210f1:
	play_music MUSIC_NONE
	play_sfx SFX_29
	create_object AnimScript_20967, MotionScript_111c7, Data_3421
	script_call AnimScript_20b05
	script_exec_arg ScriptFunc_AddScore, SCORE_1000
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	frame 30, $58b8
	set_value wClearScreenFlags, CLEAR_ACTIVE | CLEAR_NON_MIKE
	frame  0, $4044

AnimScript_WhispyWoodsPuff:
	frame  0, $5cf9

AnimScript_WhispyWoodsApple_Fall:
	frame  1, $41d4
	script_repeat 3
	set_pal_dark
	script_delay 4
	set_pal_light
	script_delay 4
	script_repeat_end
	frame 42, $41d4
	script_end

AnimScript_WhispyWoodsApple_RollLeft:
	play_sfx SFX_30
	frame 10, $41ec
	frame 10, $41e4
	frame 10, $41dc
	frame 10, $41d4
	frame  6, $41ec
	frame  6, $41e4
	frame  6, $41dc
	frame  6, $41d4
.loop
	frame  8, $41ec
	frame  8, $41e4
	frame  8, $41dc
	frame  8, $41d4
	jump_rel .loop

AnimScript_WhispyWoodsApple_RollRight:
	play_sfx SFX_30
	frame 10, $41d4
	frame 10, $41dc
	frame 10, $41e4
	frame 10, $41ec
	frame  6, $41d4
	frame  6, $41dc
	frame  6, $41e4
	frame  6, $41ec
.loop
	frame  8, $41d4
	frame  8, $41dc
	frame  8, $41e4
	frame  8, $41ec
	jump_rel .loop

AnimScript_WhispyWoodsScrollLocker:
.loop
	jump_if_equal wLevelYSection, $11, .lock_scroll
	frame  1, $58b8
	jump_abs .loop

.lock_scroll
	script_exec ScriptFunc_LockScrolling
	script_end
; 0x21191

SECTION "Bank 8@5195", ROMX[$5195], BANK[$8]

AnimScript_BossHPIncrementer:
	frame  1, $58b8
	set_abs_pos
	set_position 20, 20
	set_value wBossHP, 0
	set_flags hHUDFlags, $00, HUD_UPDATE_LABEL | HUD_BOSS_BATTLE
.loop
	frame 10, $58b8
	inc_value wBossHP
	set_flags hHUDFlags, $00, HUD_UPDATE_FIRST_ROW
	play_sfx SFX_RESTORE_HP
	dec_value wBossHPCounter
	jump_if_equal wBossHPCounter, 0, .end
	jump_rel .loop
.end
	script_end
; 0x211c0

SECTION "Bank 8@51c3", ROMX[$51c3], BANK[$8]

AnimScript_FallingGlunk:
.loop
	frame 10, $447c
	frame 10, $4484
	frame 10, $448c
	jump_abs .loop
; 0x211cf

SECTION "Bank 8@51d8", ROMX[$51d8], BANK[$8]

AnimScript_211d8:
.loop
	frame 20, $43ec
	frame 20, $43f4
	frame 20, $43fc
	jump_abs .loop

AnimScript_ShootingGlunk:
.loop
	script_repeat 6
	frame 30, $43ec
	frame 20, $43f4
	script_repeat_end
	frame 50, $43ec
	frame 15, $43f4
	frame 10, $43fc
	branch_kirby_pos .shoot_left, .shoot_right
	; unreachable
	jump_abs .loop

.shoot_left
	create_object AnimScript_21220, MotionScript_1123a, GlunkPodProperties
	frame 80, $43fc
	jump_abs .loop

.shoot_right
	create_object AnimScript_21220, MotionScript_11233, GlunkPodProperties
	frame 80, $43fc
	jump_abs .loop
; 0x2121a

SECTION "Bank 8@5220", ROMX[$5220], BANK[$8]

AnimScript_21220:
.loop
	frame  2, $6899
	frame  2, $689d
	frame  2, $68a1
	frame  2, $68a5
	jump_abs .loop

AnimScript_2122f:
.loop
	frame 30, $43b4
	frame 20, $43c0
	jump_abs .loop

AnimScript_21238:
	frame 30, $43dc
	frame 40, $43b4
	frame 14, $43c0
	frame  8, $43c0
	frame  3, $43b4
	jump_abs AnimScript_2122f

AnimScript_2124a:
.loop
	frame  8, $43b4
	frame  8, $43c0
	jump_abs .loop
; 0x21253

SECTION "Bank 8@527a", ROMX[$527a], BANK[$8]

AnimScript_2127a:
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
AnimScript_212a4:
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
	jump_abs AnimScript_2127a

AnimScript_212d1:
.loop
	frame  8, $437c
	frame  8, $4384
	jump_abs .loop

AnimScript_212da:
.loop
	frame  8, $4394
	frame  8, $439c
	jump_abs .loop

AnimScript_212e3:
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
AnimScript_2130d:
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
	jump_abs AnimScript_212e3

AnimScript_2133a:
	script_repeat 5
	frame  8, $4394
	frame  8, $439c
	script_repeat_end
	frame  5, $4394
.loop
	frame  8, $437c
	frame  8, $4384
	jump_abs .loop

AnimScript_2134f:
	frame 48, $4374
	frame 32, $437c
	frame 32, $4384
	frame 32, $437c
.loop
	frame 32, $4384
	frame 32, $437c
	jump_rel .loop

AnimScript_21363:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	branch_kirby_pos .script_21372, .script_2137d

.script_21372
	script_repeat 10
	frame  4, $58b8
	frame  4, $441c
	script_repeat_end
	jump_rel AnimScript_21388

.script_2137d
	script_repeat 10
	frame  4, $58b8
	frame  4, $442c
	script_repeat_end
	jump_rel AnimScript_21388 ; useless jump

AnimScript_21388:
	branch_kirby_pos .script_21398, .script_2138f

.script_2138f
	frame 24, $442c
	frame 12, $4434
	jump_abs AnimScript_21388

.script_21398
	frame 24, $441c
	frame 12, $4424
	jump_abs AnimScript_21388

AnimScript_213a1:
.loop
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
	jump_abs .loop
; 0x213d3

SECTION "Bank 8@53fa", ROMX[$53fa], BANK[$8]

AnimScript_213fa:
.loop
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
	frame 10, $445c
	frame  6, $4464
	frame  6, $446c
	frame 10, $4474
	frame  6, $446c
	frame  6, $4464
	script_ret

AnimScript_21457:
.loop
	frame 11, $445c
	frame  7, $4464
	frame  7, $446c
	frame 11, $4474
	frame  7, $446c
	frame  7, $4464
	jump_rel .loop

AnimScript_Chuckie:
.loop
	frame 10, $440c
	frame 10, $4414
	jump_abs .loop

AnimScript_PuffOfSmoke:
	position_offset 0, -8
	frame  6, $5d29
	frame  6, $5d31
	script_end

AnimScript_TwoFace_Waiting:
	set_update_func Func_14252, AnimScript_TwoFace_Chasing
	frame  0, $443c

AnimScript_TwoFace_Chasing:
	frame  4, $444c
	frame 10, $4454
	frame 10, $4454
	frame  4, $4450
	frame 10, $4444
	set_object_properties TwoFaceProperties
	set_update_func Func_14208, NULL
.loop
	frame 10, $4444
	frame 10, $444c
	frame 10, $4454
	frame 10, $4450
	jump_abs .loop
; 0x214ae

SECTION "Bank 8@5524", ROMX[$5524], BANK[$8]

AnimScript_21524:
.loop
	frame 65, $5ee5
	create_object AnimScript_Bullet, MotionScript_102da, ShotzoBulletProperties
	set_motion_script MotionScript_1028c
	frame 65, $5ee5
	jump_abs .loop
; 0x21539

SECTION "Bank 8@5598", ROMX[$5598], BANK[$8]

AnimScript_CirclingEnemiesTrap:
	set_update_func Func_14252, AnimScript_215a0
	frame  0, $58b8

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
	frame  8, $5d29
	frame  8, $5d31
	set_scripts AnimScript_2165d, MotionScript_1169a

.script_215e7
	position_offset 48, 0
	frame  8, $5d29
	frame  8, $5d31
	set_scripts AnimScript_2165d, MotionScript_116d0

.script_215f5
	position_offset 0, 48
	frame  8, $5d29
	frame  8, $5d31
	set_scripts AnimScript_2165d, MotionScript_116be

.script_21603
	position_offset -48, 0
	frame  8, $5d29
	frame  8, $5d31
	set_scripts AnimScript_2165d, MotionScript_116ac

.script_21611
	position_offset 34, -34
	frame  8, $5d29
	frame  8, $5d31
	set_object_properties MumbiesOrbitingProperties
	set_scripts AnimScript_21388, MotionScript_116d9

.script_21624
	position_offset 34, 34
	frame  8, $5d29
	frame  8, $5d31
	set_object_properties MumbiesOrbitingProperties
	set_scripts AnimScript_21388, MotionScript_116c7

.script_21637
	position_offset -34, 34
	frame  8, $5d29
	frame  8, $5d31
	set_object_properties MumbiesOrbitingProperties
	set_scripts AnimScript_21388, MotionScript_116b5

.script_2164a
	position_offset -34, -34
	frame  8, $5d29
	frame  8, $5d31
	set_object_properties MumbiesOrbitingProperties
	set_scripts AnimScript_21388, MotionScript_116a3

AnimScript_2165d:
	set_object_properties StandardEnemyProperties
.loop
	branch_kirby_pos .script_21669, .script_21672

.script_21669
	frame  8, $437c
	frame  8, $4384
	jump_abs .loop

.script_21672
	frame  8, $4394
	frame  8, $439c
	jump_abs .loop

AnimScript_2167b:
	frame  1, $58b8
	set_object_properties Data_3421
	set_update_func Func_14252, MotionScript_1168b
	frame  0, $58b8

AnimScript_2168b:
	branch_on_kirby_vertical_alignment AnimScript_2167b, .script_21694
	jump_rel AnimScript_2167b

.script_21694:
	create_object AnimScript_PuffOfSmoke, MotionScript_10008, PuffOfSmokeProperties
	position_offset 0, -16
	play_sfx SFX_PUFF
	set_object_properties MaximTomatoProperties
	frame  0, $5c81
; 0x216aa

SECTION "Bank 8@56b0", ROMX[$56b0], BANK[$8]

AnimScript_Coner:
.loop
	frame  8, $5f9d
	frame 40, $5f95
	jump_abs .loop
; 0x216b9

SECTION "Bank 8@56c2", ROMX[$56c2], BANK[$8]

AnimScript_216c2:
.loop
	script_repeat 3
	frame  8, $5f9d
	frame 24, $5f95
	script_repeat_end
	script_repeat 3
	frame  8, $5fb5
	frame 24, $5fad
	script_repeat_end
	jump_abs .loop
; 0x216d7

SECTION "Bank 8@56f9", ROMX[$56f9], BANK[$8]

AnimScript_216f9:
.loop
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 112, $5fbd
	frame 48, $5fb5
	script_exec ScriptFunc_ResetImmuneFlag
	script_repeat 3
	frame 32, $5fad
	frame 10, $5fb5
	script_repeat_end
	jump_abs .loop
; 0x21716

SECTION "Bank 8@571c", ROMX[$571c], BANK[$8]

AnimScript_2171c:
.script_2171c
	frame 10, $5fcd
	branch_kirby_pos .script_21726, .script_21761

.script_21726
	frame 20, $5fcd
	script_repeat 4
	frame  4, $5fd5
	frame  4, $5fcd
	script_repeat_end
	script_call AnimScript_204a4
	frame 40, $5fcd
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 50, $5fc5
	script_exec ScriptFunc_ResetImmuneFlag
	jump_abs .script_2171c

.script_21749
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 60, $5fdd
	script_exec ScriptFunc_ResetImmuneFlag
	frame 20, $5fe5
	branch_kirby_pos .script_21726, .script_21761

.script_21761
	frame 20, $5fe5
	script_repeat 10
	frame  4, $5fed
	frame  4, $5fe5
	script_repeat_end
	script_call AnimScript_2051d
	frame 40, $5fe5
	jump_abs .script_21749
; 0x21776

SECTION "Bank 8@5796", ROMX[$5796], BANK[$8]

AnimScript_21796:
.loop
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	frame 64, $5fdd
	script_exec ScriptFunc_ResetImmuneFlag
	frame 20, $5fe5
	script_repeat 10
	frame  4, $5fed
	frame  4, $5fe5
	script_repeat_end
	script_call AnimScript_2051d
	jump_abs .loop
; 0x217b6

SECTION "Bank 8@57c8", ROMX[$57c8], BANK[$8]

AnimScript_217c8:
.loop
	frame  8, $6045
	frame  8, $604d
	frame  8, $6055
	frame  8, $605d
	jump_abs .loop

AnimScript_217d7:
.loop
	frame  4, $6045
	frame  4, $604d
	frame  4, $6055
	frame  4, $605d
	jump_abs .loop
; 0x217e6

SECTION "Bank 8@57e9", ROMX[$57e9], BANK[$8]

AnimScript_217e9:
.loop
	frame  8, $6065
	frame 48, $6045
	frame  4, $604d
	frame  4, $6055
	frame  4, $605d
	frame  8, $6045
	jump_abs .loop

AnimScript_217fe:
	jumptable_random 1
	dw $5804
	dw $5823

.loop
	script_repeat 3
	frame 10, $6045
	frame 10, $604d
	frame 10, $6055
	frame 10, $605d
	script_repeat_end
	set_object_properties $3495
	script_call AnimScript_2184e
	set_object_properties $349e
	frame 100, $58b8
	set_object_properties $3495
	script_call AnimScript_21832
	set_object_properties StandardEnemyProperties
	jump_rel .loop

AnimScript_21832:
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

AnimScript_2184e:
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

AnimScript_2186a:
.loop
	frame 10, $6045
	frame 10, $604d
	frame 10, $6055
	frame 10, $605d
	frame 10, $6065
	frame 10, $6045
	jump_abs .loop

AnimScript_2187f:
.loop
	frame 16, $5ff5
	frame  8, $5ffd
	frame 16, $5ff5
	frame 16, $5ffd
	frame  8, $5ff5
	jump_abs .loop

AnimScript_21891:
.loop
	frame  8, $6005
	frame  8, $5ffd
	jump_abs .loop

AnimScript_2189a:
	frame  0, $600d

AnimScript_2189d:
	frame  8, $5ffd
	frame  0, $5ff5

AnimScript_218a3:
	frame  8, $6025
	frame  0, $601d

AnimScript_218a9:
	frame 32, $602d
	frame  0, $6025

AnimScript_218af:
	frame 32, $6005
	frame  0, $5ffd

AnimScript_218b5:
.loop
	frame 16, $621d
	frame 16, $6225
	jump_abs .loop

AnimScript_218be:
.loop
	frame 16, $622d
	frame 16, $6235
	jump_abs .loop

AnimScript_218c7:
	frame 16, $6245
	frame  0, $623d

AnimScript_218cd:
.loop
	frame 16, $6245
	frame 32, $623d
	jump_abs .loop

AnimScript_218d6:
.loop
	frame  1, $6245
	jump_abs .loop

AnimScript_218dc:
.loop
	frame  1, $623d
	jump_abs .loop

AnimScript_218e2:
.loop
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
	jump_abs .loop

AnimScript_218fd:
	frame 100, $623d
	frame 20, $6245
	frame  0, $623d

AnimScript_21906:
	frame  1, $624d
	set_motion_script MotionScript_11b2b
	frame  0, $624d

AnimScript_21911:
	frame 40, $624d
	set_object_properties $366a
	set_update_func Func_141b1, $5921
	frame  0, $624d

AnimScript_21921:
	set_object_properties $3673
	set_scripts AnimScript_209f6, MotionScript_10008
; 0x2192b

SECTION "Bank 8@592e", ROMX[$592e], BANK[$8]

AnimScript_2192e:
	frame 80, $6255
	frame  4, $625d
	frame  4, $6269
	script_repeat 8
	frame  4, $6279
	frame  4, $6289
	script_repeat_end
	frame  0, $6255

AnimScript_21943:
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

AnimScript_2195e:
	frame  0, $606d

AnimScript_Kaboola_Shoot:
	frame 10, $606d

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
	frame 15, $606d
	jump_random 70 percent, .invert_and_shoot
	frame 15, $606d
	jump_rel .regular_shot

.invert_and_shoot
	script_call AnimScript_21a0d
	frame 15, $60d5
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
	frame 15, $60d5
	jump_random 70 percent, .return_regular_and_shoot
	frame 15, $60d5
	jump_rel .inverted_shot

.return_regular_and_shoot
	script_call AnimScript_21a17
	jump_rel .regular_shot

.regular_shoot_one
	create_object AnimScript_21a73, MotionScript_SpitStar_Left, KaboolaBulletProperties
	script_call AnimScript_21a21
	jump_rel .maybe_invert_shot

.regular_shoot_three
	script_repeat 3
	script_call AnimScript_21a35
	create_object AnimScript_21a73, MotionScript_SpitStar_Left, KaboolaBulletProperties
	frame 10, $606d
	script_repeat_end
	jump_rel .maybe_invert_shot

.regular_shoot_triplet
	script_call AnimScript_21a35
	create_object AnimScript_21a73, MotionScript_11ad9, KaboolaBulletProperties
	create_object AnimScript_21a73, MotionScript_SpitStar_Left, KaboolaBulletProperties
	create_object AnimScript_21a73, MotionScript_11adc, KaboolaBulletProperties
	jump_rel .maybe_invert_shot

.inverted_shoot_one
	script_call AnimScript_21a2b
	create_object AnimScript_21a6d, MotionScript_SpitStar_Left, KaboolaBulletProperties
	jump_rel .maybe_regular_shot

.inverted_shoot_three
	script_repeat 3
	script_call AnimScript_21a3f
	create_object AnimScript_21a6d, MotionScript_SpitStar_Left, KaboolaBulletProperties
	frame 10, $60d5
	script_repeat_end
	jump_rel .maybe_regular_shot

.inverted_shoot_triplet
	script_call AnimScript_21a3f
	create_object AnimScript_21a6d, MotionScript_11ad9, KaboolaBulletProperties
	create_object AnimScript_21a6d, MotionScript_SpitStar_Left, KaboolaBulletProperties
	create_object AnimScript_21a6d, MotionScript_11adc, KaboolaBulletProperties
	jump_rel .maybe_regular_shot

AnimScript_21a0d:
	frame  4, $6095
	frame  4, $60b5
	frame 10, $60d5
	script_ret

AnimScript_21a17:
	frame  4, $60b5
	frame  4, $6095
	frame 10, $606d
	script_ret

AnimScript_21a21:
	frame  4, $60fd
	frame  4, $612d
	frame  4, $615d
	script_ret

AnimScript_21a2b:
	frame  4, $618d
	frame  4, $61bd
	frame  4, $61ed
	script_ret

AnimScript_21a35:
	frame  2, $60fd
	frame  2, $612d
	frame  2, $615d
	script_ret

AnimScript_21a3f:
	frame  2, $618d
	frame  2, $61bd
	frame  2, $61ed
	script_ret

AnimScript_Kaboola_RamStart:
.loop
	frame  4, $606d
	frame  4, $6095
	frame  4, $60b5
	frame  4, $60d5
	jump_abs .loop

AnimScript_Kaboola_RamEnd:
	frame  8, $606d
	frame  8, $6095
	frame 10, $60b5
	frame 10, $60d5
	frame 16, $60b5
	frame 16, $6095
	frame  0, $606d

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

AnimScript_21aa8:
	play_sfx SFX_28
	frame  6, $5d21
	frame  2, $5d29
	frame  2, $5d31
	script_end
; 0x21ab6

SECTION "Bank 8@5c31", ROMX[$5c31], BANK[$8]

AnimScript_StationaryShotzo:
	jump_abs .script_21c59

.turn_up
	frame 30, $5ef5
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
	frame 15, $5ef5
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
	frame 60, $5ef5
	jump_abs .loop

.turn_up_right
	frame 30, $5efd
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
	frame 15, $5efd
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
	frame 30, $5f05
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
	frame 30, $5f05

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
	frame 60, $5f05
	jump_abs .script_21cde

.turn_left
	frame 30, $5ee5
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
	frame 30, $5ee5

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
	frame 60, $5ee5
	jump_abs .script_21d22

.turn_up_left
	frame 30, $5eed
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
	frame 15, $5eed
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
; 0x21d7c

SECTION "Bank 8@5e6c", ROMX[$5e6c], BANK[$8]

AnimScript_21e6c:
	play_sfx SFX_20
.loop
	frame  4, $4764
	frame  4, $476c
	frame  4, $4770
	frame  4, $4778
	jump_rel .loop

AnimScript_21e7e:
.loop
	play_sfx SFX_20
	frame  4, $477c
	frame  4, $4784
	frame  4, $4788
	frame  4, $4790
	jump_abs .loop
; 0x21e91

SECTION "Bank 8@5eae", ROMX[$5eae], BANK[$8]

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
	frame 10, $4724
	frame 10, $472c
	script_repeat_end
	set_motion_script MotionScript_10008
	frame 20, $4734
	create_object AnimScript_21e6c, MotionScript_11f0c, Data_367c
	frame 76, $473c
	frame 20, $4734
	script_ret
; 0x21f2e

SECTION "Bank 8@5f4d", ROMX[$5f4d], BANK[$8]

AnimScript_21f4d:
	set_motion_script MotionScript_102d1
AnimScript_21f52:
	script_repeat 3
	frame 10, $4744
	frame 10, $474c
	script_repeat_end
	set_motion_script MotionScript_10008
	frame 20, $4754
	create_object AnimScript_21e7e, MotionScript_11f4a, Data_367c
	frame 76, $475c
	frame 20, $4754
	script_ret
; 0x21f71

SECTION "Bank 8@5ff8", ROMX[$5ff8], BANK[$8]

AnimScript_21ff8:
	branch_kirby_pos AnimScript_21fff, AnimScript_22016
AnimScript_21fff:
	script_repeat 8
	frame  3, $5e8d
	frame  3, $5e75
	script_repeat_end
	script_call AnimScript_2202e
	script_repeat 2
	frame  4, $5e75
	frame  4, $5e7d
	script_repeat_end
	jump_rel AnimScript_21ff8
AnimScript_22016:
	script_repeat 12
	frame  3, $5eb5
	frame  3, $5e9d
	script_repeat_end
	script_call AnimScript_2208f
	script_repeat 4
	frame  4, $5e9d
	frame  4, $5ea5
	script_repeat_end
	jump_abs AnimScript_21fff

AnimScript_2202e:
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103bf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103fb, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103f7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103f3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103ef, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103eb, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103e7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103e3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_ret

AnimScript_2208f:
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103bf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103c3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103c7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103cb, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103cf, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103d3, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103d7, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_repeat 3
	create_object AnimScript_209c0, MotionScript_103db, GlunkPodProperties
	script_delay 4
	script_repeat_end
	script_ret
; 0x220f0

SECTION "Bank 8@6114", ROMX[$6114], BANK[$8]

AnimScript_TitleScreenWarpStarKirby:
	frame 40, $58b8
	create_object AnimScript_TitleScreenStar, MotionScript_10008, Data_3425
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

AnimScript_TitleScreenKirbySpawner:
.loop
	frame 170, $58b8
	create_object AnimScript_TitleScreenKirby, MotionScript_TitleScreenKirby, Data_3425
	jump_rel .loop

AnimScript_TitleScreenKirby:
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

AnimScript_TitleScreenStarSpawner:
	frame 200, $58b8
.loop
	frame 30, $58b8
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

AnimScript_SoundTestNote:
.loop
	frame 150, $52b0
	frame   8, $52b4
	frame   8, $52b8
	frame  20, $52bc
	frame   8, $52b8
	frame   8, $52b4
	frame 200, $52b0
	frame   8, $52b4
	frame   8, $52b8
	frame  20, $52bc
	frame   8, $52b8
	frame   8, $52b4
	jump_abs .loop

AnimScript_SoundTestKirbyEyes:
.loop
	frame   8, $52c0
	frame 180, $58b8
	frame   8, $52c0
	frame  10, $58b8
	frame   8, $52c0
	frame 120, $58b8
	jump_abs .loop
; 0x222a4

SECTION "Bank 8@64af", ROMX[$64af], BANK[$8]

AnimScript_224af:
	frame 80, $4d98
	play_sfx SFX_23
	frame 16, $4dcc
	frame 16, $4e00
	frame  0, $4e34
; 0x224bf

SECTION "Bank 8@64e4", ROMX[$64e4], BANK[$8]

AnimScript_224e4:
	frame 80, $58b8
	frame  0, $4f90
; 0x224ea

SECTION "Bank 8@6a33", ROMX[$6a33], BANK[$8]

AnimScript_22a33:
	frame  0, $58b8

AnimScript_22a36:
	create_object AnimScript_22afa, MotionScript_12fc0, StandardEnemyProperties
	frame  4, $58b8
	frame 10, $44a0
	frame  4, $58b8
	frame  5, $44a0
	frame 12, $44a8
	script_repeat 11
	frame  8, $44c0
	frame  8, $44b8
	script_repeat_end
	frame 10, $44b8
	frame  5, $44d8
	set_pal_dark
	frame  5, $44d8
	set_pal_light
	frame  0, $58b8

AnimScript_22a67:
	create_object AnimScript_22afa, MotionScript_12fd6, StandardEnemyProperties
	frame  4, $58b8
	frame 10, $44a0
	frame  4, $58b8
	frame  5, $44a0
	frame 12, $44a8
	script_repeat 11
	frame  8, $44d0
	frame  8, $44c8
	script_repeat_end
	frame 10, $44c8
	frame  5, $44d8
	set_pal_dark
	frame  5, $44d8
	set_pal_light
	frame  0, $58b8
; 0x22a98

SECTION "Bank 8@6afa", ROMX[$6afa], BANK[$8]

AnimScript_22afa:
	play_sfx SFX_30
	frame  0, $4494

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
	frame  8, $44b8
	frame  8, $44c0
	script_repeat_end
	frame  4, $44b8
	frame  4, $44c0
	frame 20, $44b0
	script_repeat 5
	frame  8, $44b8
	frame  8, $44c0
	script_repeat_end
	frame  8, $44b8
	frame  5, $44d8
	set_pal_dark
	frame  5, $44d8
	set_pal_light
	frame  0, $58b8

AnimScript_22b53:
	position_offset -16, 0
	frame 80, $4494
	play_sfx SFX_JUMP
	frame  0, $4494

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
; 0x22bb6

SECTION "Bank 8@6f63", ROMX[$6f63], BANK[$8]

AnimScript_22f63:
	position_offset 0, -6
	jump_abs AnimScript_208f1

AnimScript_22f69:
	position_offset 0, 6
	jump_abs AnimScript_208f1
; 0x22f6f
