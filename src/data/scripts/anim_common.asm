IF DEF(EXPORT_SCRIPTS)
AnimScript_20000::
ELSE
AnimScript_20000_@:
ENDC
	frame  0, OAM_2d8b8

IF DEF(EXPORT_SCRIPTS)
AnimScript_20003::
ELSE
AnimScript_20003_@:
ENDC
	script_delay 0

IF DEF(EXPORT_SCRIPTS)
AnimScript_20005::
ELSE
AnimScript_20005_@:
ENDC
	set_object_properties Data_35b7
	set_update_func Func_141b1, AnimScript_DestructiveExplosion
	script_exec Func_4adf
	set_scripts AnimScript_Explosion, MotionScript_102fb

IF DEF(EXPORT_SCRIPTS)
AnimScript_20017::
ELSE
AnimScript_20017_@:
ENDC
	set_object_properties Data_35b7
	set_update_func Func_141b1, AnimScript_DestructiveExplosion
	set_scripts AnimScript_Explosion, MotionScript_10008

IF DEF(EXPORT_SCRIPTS)
AnimScript_20026::
ELSE
AnimScript_20026_@:
ENDC
	jump_if_flags hEngineFlags, KABOOLA_BATTLE, .script_20034
	create_object AnimScript_DefeatStars, MotionScript_10008, Data_3421
	script_end
.script_20034
	create_object AnimScript_PuffHit, MotionScript_10008, Data_3425
	script_end

IF DEF(EXPORT_SCRIPTS)
AnimScript_2003c::
ELSE
AnimScript_2003c_@:
ENDC
	create_object AnimScript_20044, MotionScript_10008, Data_3421
	script_end

IF DEF(EXPORT_SCRIPTS)
AnimScript_20044::
ELSE
AnimScript_20044_@:
ENDC
	frame  2, OAM_2dd29
	frame  2, OAM_2dd31
IF DEF(EXPORT_SCRIPTS)
AnimScript_2004a::
ELSE
AnimScript_2004a_@:
ENDC
	script_end

IF DEF(EXPORT_SCRIPTS)
AnimScript_2004b::
ELSE
AnimScript_2004b_@:
ENDC
	set_motion_script MotionScript_KirbyWarpStar_LiftOff1
	frame 60, OAM_2dc01
	frame  6, OAM_2dc01
	script_repeat 15
	frame  8, OAM_2dc01
	create_object AnimScript_Star, MotionScript_RandomLeftDirection, Data_3425
	script_repeat_end
	frame 16, OAM_2d8b8
	play_sfx SFX_13
	frame 16, OAM_2d8b8
	frame 128, OAM_2dc1d
	jump_abs AnimScript_Hit

IF DEF(EXPORT_SCRIPTS)
AnimScript_20073::
ELSE
AnimScript_20073_@:
ENDC
	set_motion_script MotionScript_KirbyWarpStar_LiftOff2
	frame 44, OAM_2dc01
	frame 40, OAM_2dc01
	create_object AnimScript_Explosion, MotionScript_RandomLeftDirection, Data_3425
	frame 88, OAM_2dc01
.loop
	frame  4, OAM_2dc01
	create_object AnimScript_Explosion, MotionScript_10317, Data_3425
	create_object AnimScript_Explosion, MotionScript_RandomLeftDirection, Data_3425
	create_object AnimScript_Explosion, MotionScript_RandomLeftDirection, Data_3425
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_200a3::
ELSE
AnimScript_200a3_@:
ENDC
	set_motion_script MotionScript_KirbyWarpStar_LiftOff3
	frame 100, OAM_2dc01
	frame 142, OAM_2dc01
	frame 20, OAM_2d8b8
	frame  0, OAM_2dc1d

IF DEF(EXPORT_SCRIPTS)
AnimScript_200b4::
ELSE
AnimScript_200b4_@:
ENDC
	set_motion_script MotionScript_KirbyWarpStar_LiftOff4
	frame 80, OAM_2dc01
	script_repeat 21
	create_object AnimScript_Star, MotionScript_RandomDownwardsDirection, Data_3425
	frame  4, OAM_2dc01
	script_repeat_end
	frame 20, OAM_2dc01
	create_object AnimScript_PulsingStar, MotionScript_Star_UpFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_RightFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_DownFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_LeftFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_UpRightFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_UpLeftFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_DownRightFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_DownLeftFast, Data_3425
	create_object AnimScript_20138, MotionScript_10008, Data_3425
	script_end

IF DEF(EXPORT_SCRIPTS)
AnimScript_2010c::
ELSE
AnimScript_2010c_@:
ENDC
	frame  0, OAM_2dc01

IF DEF(EXPORT_SCRIPTS)
AnimScript_2010f::
ELSE
AnimScript_2010f_@:
ENDC
	jumptable_random %11
	dw .sub_20119
	dw .sub_2011e
	dw .sub_20123
	dw .sub_20123

.sub_20119
	frame 48, OAM_2db69
	jump_rel .common

.sub_2011e
	frame 48, OAM_2d8d9
	jump_rel .common

.sub_20123
	frame 10, OAM_2dbe1
	frame 10, OAM_2dbe9
	frame 10, OAM_2dbf9
	frame 10, OAM_2dbf1
	frame  8, OAM_2d8d9
.common
	frame 16, OAM_2dbc9
	frame  0, OAM_2d8b9

IF DEF(EXPORT_SCRIPTS)
AnimScript_20138::
ELSE
AnimScript_20138_@:
ENDC
	script_repeat 2
	frame  2, OAM_2dc91
	frame  2, OAM_2dc9d
	frame  2, OAM_2dca9
	frame  2, OAM_2dcb5
	frame  2, OAM_2dcc1
	frame  2, OAM_2dccd
	frame  2, OAM_2dcd9
	frame  2, OAM_2dce5
	script_repeat_end
	script_end

IF DEF(EXPORT_SCRIPTS)
AnimScript_20154::
ELSE
AnimScript_20154_@:
ENDC
	create_object AnimScript_PulsingStar, MotionScript_Star_UpFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_RightFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_DownFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_LeftFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_UpRightFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_UpLeftFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_DownRightFast, Data_3425
	create_object AnimScript_PulsingStar, MotionScript_Star_DownLeftFast, Data_3425
.loop
	frame  8, OAM_2dbf9
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3425
	frame  8, OAM_2dbe9
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3425
	frame  8, OAM_2dbe1
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3425
	frame  8, OAM_2dbf1
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3425
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_201b7::
ELSE
AnimScript_201b7_@:
ENDC
	set_rel_pos
	set_object_properties StandardEnemyGravityProperties
	set_update_func Func_141b1, AnimScript_KirbyDance
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_201d2
	set_motion_script MotionScript_KirbyGetSparklingStarLeft
.loop_1
	script_call AnimScript_KirbySpin_Left
	jump_rel .loop_1

.script_201d2
	set_motion_script MotionScript_KirbyGetSparklingStarRight
.loop_2
	script_call AnimScript_KirbySpin_Right
	jump_rel .loop_2

IF DEF(EXPORT_SCRIPTS)
AnimScript_201dc::
ELSE
AnimScript_201dc_@:
ENDC
	script_delay 0

	script_repeat 10
	frame  4, OAM_2dbe1
	frame  4, OAM_2d8b8
	frame  4, OAM_2dbe9
	frame  4, OAM_2d8b8
	frame  4, OAM_2dbf9
	frame  4, OAM_2d8b8
	frame  4, OAM_2dbf1
	frame  4, OAM_2d8b8
	script_repeat_end

	frame  1, OAM_2d8d9
	set_kirby_pos
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	script_delay 0

IF DEF(EXPORT_SCRIPTS)
AnimScript_20206::
ELSE
AnimScript_20206_@:
ENDC
	set_flags hEngineFlags, $00, ENGINEF_UNK5
	jump_if_flags hKirbyFlags6, KIRBY6F_UNK7, $4008 ; bug?
	set_motion_script MotionScript_KirbyWarpStar_Crash2
	create_object AnimScript_Explosion, MotionScript_10008, Data_3425
	frame  4, OAM_2dc01
	create_object AnimScript_Explosion, MotionScript_10008, Data_3425
	frame  4, OAM_2dc01
	create_object AnimScript_Explosion, MotionScript_10008, Data_3425
	frame  8, OAM_2dc01
	create_object AnimScript_Explosion, MotionScript_10008, Data_3425
	frame 80, OAM_2dc01

	script_repeat 4
	create_object AnimScript_WarpStarTrailingStar1, MotionScript_RandomLeftDirection, Data_3425
	play_sfx SFX_DAMAGE
	script_delay 4
	script_repeat_end

	script_delay 16

	script_repeat 8
	create_object AnimScript_WarpStarTrailingStar2, MotionScript_RandomLeftDirection, Data_3425
	play_sfx SFX_20
	script_delay 4
	script_repeat_end

	play_sfx SFX_ENTER_DOOR
	create_object AnimScript_Star, MotionScript_Star_UpLeft, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpRight, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Left, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Right, Data_3425
.loop
	frame 10, OAM_2dbe1
	frame 10, OAM_2dbf1
	frame 10, OAM_2dbf9
	frame 10, OAM_2dbe9
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_2028f::
ELSE
AnimScript_2028f_@:
ENDC
	script_repeat 6
	create_object AnimScript_WarpStarTrailingStar1, MotionScript_RandomLeftDirection, Data_3425
	frame 10, OAM_2db69
	script_repeat_end

	frame 58, OAM_2db69
	frame  8, OAM_2dbc9
	set_kirby_pos
	set_flags hPalFadeFlags, $00, SCROLL_LOCKED
	set_value wStageTransitionCounter, 1
	set_motion_script MotionScript_10008
	frame  0, OAM_2d8b9

IF DEF(EXPORT_SCRIPTS)
AnimScript_202b6::
ELSE
AnimScript_202b6_@:
ENDC
	frame 26, OAM_2d8c1
	frame 18, OAM_2d8c9
	frame 18, OAM_2d8d1
	frame  8, OAM_2d8c9
	frame 18, OAM_2d8c1
	script_repeat 6
	frame 10, OAM_2d8c9
	frame 16, OAM_2d8d1
	frame 10, OAM_2d8c9
	frame 16, OAM_2d8c1
	script_repeat_end
	script_call AnimScript_KirbySpin_Right
	script_call AnimScript_KirbySpin_Right
	frame 128, OAM_2db79
	frame 128, OAM_2d8b9
	frame  8, OAM_2dbc9
	frame 128, OAM_2db69
	frame 48, OAM_2dbc9
	frame  4, OAM_2d8b9
	frame 10, OAM_2dbc5
	frame 96, OAM_2d8b9
	frame 16, OAM_2dbd1
	frame 16, OAM_2dbdd
	frame 16, OAM_2dbc9
	frame 16, OAM_2dbd9
	frame 16, OAM_2dbd1
	script_call AnimScript_KirbySpin_Right
	script_call AnimScript_KirbySpin_Right
	frame  1, OAM_2d8d9
	set_flags hKirbyFlags5, KIRBY5F_UNK0, KIRBY5F_UNK0
	script_delay 1

IF DEF(EXPORT_SCRIPTS)
AnimScript_20311::
ELSE
AnimScript_20311_@:
ENDC
	frame 26, OAM_2d8f1
	frame 18, OAM_2d8f9
	frame 18, OAM_2d901
	frame  8, OAM_2d8f9
	frame 18, OAM_2d8f1
	script_repeat 3
	frame 10, OAM_2d8f9
	frame 16, OAM_2d901
	frame 10, OAM_2d8f9
	frame 16, OAM_2d8f1
	script_repeat_end
	script_call AnimScript_KirbySpin_Left
	script_call AnimScript_KirbySpin_Left
	frame 128, OAM_2db91
	frame 128, OAM_2d8e9
	frame  8, OAM_2dbad
	frame 128, OAM_2db71
	frame 48, OAM_2dbad
	frame  4, OAM_2d8e9
	frame 10, OAM_2dba9
	frame 96, OAM_2d8e9
	frame 16, OAM_2dbb5
	frame 16, OAM_2dbc1
	frame 16, OAM_2dbad
	frame 16, OAM_2dbbd
	frame 16, OAM_2dbb5
	script_call AnimScript_KirbySpin_Left
	script_call AnimScript_KirbySpin_Left
	frame  1, OAM_2d909
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK0
	script_delay 1

IF DEF(EXPORT_SCRIPTS)
AnimScript_2036c::
ELSE
AnimScript_2036c_@:
ENDC
	create_object AnimScript_DefeatStars, MotionScript_10008, Data_3421
	frame 16, OAM_2d8b8
	set_flags wClearScreenFlags, $00, CLEAR_NEXT_OBJ
	script_end

IF DEF(EXPORT_SCRIPTS)
AnimScript_2037c::
ELSE
AnimScript_2037c_@:
ENDC
	frame  2, OAM_2dc91
	frame  2, OAM_2dc9d
	frame  2, OAM_2dca9
	frame  2, OAM_2dcb5
	frame  2, OAM_2dcc1
	frame  2, OAM_2dccd
	frame  2, OAM_2dcd9
	frame  2, OAM_2dce5
	frame  2, OAM_2dc91
	frame  2, OAM_2dc9d
	frame  2, OAM_2dca9
	frame  2, OAM_2dcb5
	frame  2, OAM_2dcc1
	frame  2, OAM_2dccd
	frame  2, OAM_2dcd9
	frame  2, OAM_2dce5
	set_flags wClearScreenFlags, $00, CLEAR_NEXT_OBJ
	script_end

IF DEF(EXPORT_SCRIPTS)
AnimScript_203b2::
ELSE
AnimScript_203b2_@:
ENDC
	frame 32, OAM_2d8b8
	script_end

IF DEF(EXPORT_SCRIPTS)
AnimScript_203b6::
ELSE
AnimScript_203b6_@:
ENDC
	script_exec ScriptFunc_CreateExplosion
	set_object_properties ExplosionProperties
IF DEF(EXPORT_SCRIPTS)
AnimScript_Explosion::
ELSE
AnimScript_Explosion_@:
ENDC
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

IF DEF(EXPORT_SCRIPTS)
AnimScript_203de::
ELSE
AnimScript_203de_@:
ENDC
	set_flags hKirbyFlags5, $00, $20
	set_update_func Func_142dc, NULL
IF DEF(EXPORT_SCRIPTS)
AnimScript_203e8::
ELSE
AnimScript_203e8_@:
ENDC
.loop
	frame  8, OAM_2dbe1
	frame  8, OAM_2dbe9
	frame  8, OAM_2dbf9
	frame  8, OAM_2dbf1
	jump_rel .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_203f6::
ELSE
AnimScript_203f6_@:
ENDC
.loop
	frame  8, OAM_2dc25
	frame  8, OAM_2dc2d
	frame  8, OAM_2dc3d
	frame  8, OAM_2dc45
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_20405::
ELSE
AnimScript_20405_@:
ENDC
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_20419
	frame  6, OAM_2daf1
	frame  6, OAM_2dae9
	set_motion_script MotionScript_KirbyMike
	frame  0, OAM_2daf1
.script_20419
	frame  6, OAM_2da71
	frame  6, OAM_2da69
	set_motion_script MotionScript_KirbyMike
	frame  0, OAM_2da71

IF DEF(EXPORT_SCRIPTS)
AnimScript_SpitStar::
ELSE
AnimScript_SpitStar_@:
ENDC
	play_sfx SFX_STAR_SPIT
	jump_if_flags wPowerUpAttack, POWERUP_MIKE, AnimScript_MikeAttack
	jump_if_flags wPowerUpAttack, POWERUP_BOMB, AnimScript_BombAttack
	set_update_func Func_141b1, AnimScript_DestructiveHit
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_2045b
	script_repeat 2
	frame  4, OAM_2dc25
	frame  4, OAM_2dc45
	frame  4, OAM_2dc3d
	frame  4, OAM_2dc2d
	script_repeat_end
	frame  4, OAM_2dc25
	frame  4, OAM_2dc45
IF EXTRA_MODE
	frame  4, OAM_2dc1d
ELSE
	frame  2, OAM_2dc1d
ENDC
	script_end

.script_2045b
	script_repeat 2
	frame  4, OAM_2dc25
	frame  4, OAM_2dc2d
	frame  4, OAM_2dc3d
	frame  4, OAM_2dc45
	script_repeat_end
	frame  4, OAM_2dc25
	frame  4, OAM_2dc45
	frame  4, OAM_2dc1d
	script_end

IF DEF(EXPORT_SCRIPTS)
AnimScript_20474::
ELSE
AnimScript_20474_@:
ENDC
	frame  0, OAM_2ddf9

IF DEF(EXPORT_SCRIPTS)
AnimScript_KirbyPuff::
ELSE
AnimScript_KirbyPuff_@:
ENDC
	play_sfx SFX_PUFF
	jump_if_flags wPowerUpAttack, POWERUP_MIKE, AnimScript_MikeAttack
	jump_if_flags wPowerUpAttack, POWERUP_BOMB, AnimScript_BombAttack
	jump_if_flags hEngineFlags, KABOOLA_BATTLE, .script_2049e
	set_update_func Func_141b1, AnimScript_DestructiveHit
.check_land
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_2049b
	frame  0, OAM_2dcf9
.script_2049b
	frame  0, OAM_2dcf1
.script_2049e
	frame  1, OAM_2d8b8
	set_abs_pos
	jump_rel .check_land

IF DEF(EXPORT_SCRIPTS)
AnimScript_204a4::
ELSE
AnimScript_204a4_@:
ENDC
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103bf, ProjectileProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103fb, ProjectileProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103f7, ProjectileProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103f3, ProjectileProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103ef, ProjectileProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103eb, ProjectileProperties
	set_pal_dark
	script_delay 2
	set_pal_light
	script_delay 2
	script_repeat_end
	script_ret

IF DEF(EXPORT_SCRIPTS)
AnimScript_2051d::
ELSE
AnimScript_2051d_@:
ENDC
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103bf, ProjectileProperties
	script_delay 4
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103c3, ProjectileProperties
	script_delay 4
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103c7, ProjectileProperties
	script_delay 4
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103cb, ProjectileProperties
	script_delay 4
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103cf, ProjectileProperties
	script_delay 4
	script_repeat_end
IF EXTRA_MODE
	script_repeat 1
ELSE
	script_repeat 3
ENDC
	create_object AnimScript_Projectile, MotionScript_103d3, ProjectileProperties
	script_delay 4
	script_repeat_end
	script_ret

IF DEF(EXPORT_SCRIPTS)
AnimScript_20566::
ELSE
AnimScript_20566_@:
ENDC
	frame  4, OAM_2db81
	frame  0, OAM_2db89

IF DEF(EXPORT_SCRIPTS)
AnimScript_2056c::
ELSE
AnimScript_2056c_@:
ENDC
	frame  4, OAM_2db99
	frame  0, OAM_2dba1

IF DEF(EXPORT_SCRIPTS)
AnimScript_20572::
ELSE
AnimScript_20572_@:
ENDC
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

IF DEF(EXPORT_SCRIPTS)
AnimScript_20587::
ELSE
AnimScript_20587_@:
ENDC
.loop
	frame 16, OAM_2de55
	frame 16, OAM_2de5d
	jump_abs .loop

; unreferenced
IF DEF(EXPORT_SCRIPTS)
AnimScript_20590::
ELSE
AnimScript_20590_@:
ENDC
	frame 16, OAM_2de65
	frame 16, OAM_2de6d
	jump_abs AnimScript_20590

; unreferenced
IF DEF(EXPORT_SCRIPTS)
AnimScript_20599::
ELSE
AnimScript_20599_@:
ENDC
	frame  8, OAM_2de5d
	frame 16, OAM_2de55
	frame  8, OAM_2de5d
	frame  8, OAM_2de6d
	frame 16, OAM_2de65
	frame  8, OAM_2de6d
	jump_abs AnimScript_20599

IF DEF(EXPORT_SCRIPTS)
AnimScript_205ae::
ELSE
AnimScript_205ae_@:
ENDC
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

IF DEF(EXPORT_SCRIPTS)
AnimScript_205cc::
ELSE
AnimScript_205cc_@:
ENDC
.loop
	frame 64, OAM_2de55
	frame  8, OAM_2de5d
	frame  8, OAM_2de6d
	frame 64, OAM_2de65
	frame  8, OAM_2de6d
	frame  8, OAM_2de5d
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_205e1::
ELSE
AnimScript_205e1_@:
ENDC
.loop
	frame 16, OAM_2de75
	frame 16, OAM_2de7d
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_205ea::
ELSE
AnimScript_205ea_@:
ENDC
.loop
	frame 16, OAM_2de9d
	frame 16, OAM_2dea5
	jump_abs .loop

; unreferenced
IF DEF(EXPORT_SCRIPTS)
AnimScript_205f3::
ELSE
AnimScript_205f3_@:
ENDC
	frame  0, OAM_2de85

; unreferenced
IF DEF(EXPORT_SCRIPTS)
AnimScript_205f6::
ELSE
AnimScript_205f6_@:
ENDC
	frame  0, OAM_2dead

; unreferenced
IF DEF(EXPORT_SCRIPTS)
AnimScript_205f9::
ELSE
AnimScript_205f9_@:
ENDC
	frame  3, OAM_2de8d
	frame  3, OAM_2de75
	jump_abs AnimScript_205f9

; unreferenced
IF DEF(EXPORT_SCRIPTS)
AnimScript_20602::
ELSE
AnimScript_20602_@:
ENDC
	frame  3, OAM_2deb5
	frame  3, OAM_2de9d
	jump_abs AnimScript_20602

; unreferenced
IF DEF(EXPORT_SCRIPTS)
AnimScript_2060b::
ELSE
AnimScript_2060b_@:
ENDC
	frame  3, OAM_2de95
	frame  3, OAM_2de85
	jump_abs AnimScript_2060b

; unreferenced
IF DEF(EXPORT_SCRIPTS)
AnimScript_20614::
ELSE
AnimScript_20614_@:
ENDC
	frame  3, OAM_2debd
	frame  3, OAM_2dead
	jump_abs AnimScript_20614

IF DEF(EXPORT_SCRIPTS)
AnimScript_2061d::
ELSE
AnimScript_2061d_@:
ENDC
.loop
	frame 10, OAM_2de75
	frame 10, OAM_2de7d
	frame 10, OAM_2de75
	frame 10, OAM_2de7d
	frame 20, OAM_2de9d
	frame 10, OAM_2dea5
	frame 10, OAM_2de9d
	frame 10, OAM_2dea5
	frame 10, OAM_2de75
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_2063b::
ELSE
AnimScript_2063b_@:
ENDC
	frame  8, OAM_2decd
	frame  0, OAM_2dec5

IF DEF(EXPORT_SCRIPTS)
AnimScript_20641::
ELSE
AnimScript_20641_@:
ENDC
	frame  8, OAM_2dedd
	frame  0, OAM_2ded5

IF DEF(EXPORT_SCRIPTS)
AnimScript_20647::
ELSE
AnimScript_20647_@:
ENDC
.loop
	frame 10, OAM_2dec5
	frame 10, OAM_2decd
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_20650::
ELSE
AnimScript_20650_@:
ENDC
.loop
	frame 10, OAM_2ded5
	frame 10, OAM_2dedd
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_20659::
ELSE
AnimScript_20659_@:
ENDC
.loop
	frame  5, OAM_2dec5
	frame  5, OAM_2decd
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
AnimScript_20662::
ELSE
AnimScript_20662_@:
ENDC
.loop
	frame  5, OAM_2ded5
	frame  5, OAM_2dedd
	jump_abs .loop

; unreferenced
IF DEF(EXPORT_SCRIPTS)
AnimScript_2066b::
ELSE
AnimScript_2066b_@:
ENDC
	frame 10, OAM_2def5
	jump_abs AnimScript_2066b
