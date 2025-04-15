IF DEF(EXPORT_SCRIPTS)
MotionScript_InhaledObject::
ELSE
MotionScript_InhaledObject_@:
ENDC
	set_update_func InhaleObject, NULL
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_10008::
ELSE
MotionScript_10008_@:
ENDC
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_1000b::
ELSE
MotionScript_1000b_@:
ENDC
	set_position $18, $00
	set_velocities 60, VEL_RIGHT_0_75, VEL_DOWN_2_00
	jump_abs MotionScript_KirbyWarpStar_Crash1

IF DEF(EXPORT_SCRIPTS)
MotionScript_10014::
ELSE
MotionScript_10014_@:
ENDC
	set_position $08, $52
	set_anim_script AnimScript_KirbyFall
	set_velocities  1, 0, 0
	create_object AnimScript_Explosion, MotionScript_102e0, Data_3425
	set_velocities 10, VEL_RIGHT_2_00, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	jump_abs MotionScript_Kirby_EndTransitionSegment

IF DEF(EXPORT_SCRIPTS)
MotionScript_1002f::
ELSE
MotionScript_1002f_@:
ENDC
	set_position $44, $08
	set_velocities 40, VEL_RIGHT_0_50, VEL_DOWN_2_00
	play_sfx SFX_08
	create_object AnimScript_Star, MotionScript_Star_UpLeft, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpRight, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Left, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Right, Data_3425
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_10056::
ELSE
MotionScript_10056_@:
ENDC
	set_anim_script AnimScript_KirbyTumble
	set_position $1e, $86
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_3_00
	create_object AnimScript_Star, MotionScript_Star_UpLeft, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpRight, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Left, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Right, Data_3425
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_2_00
	play_sfx SFX_30
	set_anim_script AnimScript_KirbyDive
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_25
	jump_abs MotionScript_Kirby_EndTransitionSegment

IF DEF(EXPORT_SCRIPTS)
MotionScript_100bf::
ELSE
MotionScript_100bf_@:
ENDC
	set_position $51, $48
	set_anim_script AnimScript_KirbyFall
	set_velocities  1, 0, 0
	create_object AnimScript_SmallStar, MotionScript_Star_UpFast, Data_3425
	create_object AnimScript_SmallStar, MotionScript_Star_RightFast, Data_3425
	create_object AnimScript_SmallStar, MotionScript_Star_DownFast, Data_3425
	create_object AnimScript_SmallStar, MotionScript_Star_LeftFast, Data_3425
	create_object AnimScript_SmallStar, MotionScript_Star_UpRightFast, Data_3425
	create_object AnimScript_SmallStar, MotionScript_Star_UpLeftFast, Data_3425
	create_object AnimScript_SmallStar, MotionScript_Star_DownRightFast, Data_3425
	create_object AnimScript_SmallStar, MotionScript_Star_DownLeftFast, Data_3425
	create_object AnimScript_20138, MotionScript_10008, Data_3425
	play_sfx SFX_LOSE_LIFE
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_8TH
	play_sfx SFX_28
	jump_abs MotionScript_Kirby_EndTransitionSegment

IF DEF(EXPORT_SCRIPTS)
MotionScript_1011d::
ELSE
MotionScript_1011d_@:
ENDC
	set_position $58, $78
	set_anim_script AnimScript_15f1
	set_velocities  1, 0, 0
	set_kirby_pos
	set_flags hKirbyFlags3, KIRBY3F_UNK2 | KIRBY3F_DIVE, $00
	set_value wStageTransitionCounter, 1
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_10137::
ELSE
MotionScript_10137_@:
ENDC
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_25
	set_velocities  8, 0, VEL_DOWN_0_25
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  0, 0, VEL_DOWN_3_00

IF DEF(EXPORT_SCRIPTS)
MotionScript_10149::
ELSE
MotionScript_10149_@:
ENDC
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	script_repeat 3
	set_velocities  1, VEL_LEFT_2_00, VEL_UP_4_00
	set_velocities  1, VEL_RIGHT_2_00, VEL_UP_2_00
	script_repeat_end
	set_kirby_pos
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_10162::
ELSE
MotionScript_10162_@:
ENDC
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	script_repeat 4
	set_velocities  1, VEL_LEFT_2_00, VEL_DOWN_1_25
	set_velocities  1, VEL_RIGHT_2_00, VEL_DOWN_1_25
	script_repeat_end
	set_kirby_pos
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	set_velocities  0, 0, 0

; unreferenced
IF DEF(EXPORT_SCRIPTS)
MotionScript_1017b::
ELSE
MotionScript_1017b_@:
ENDC
	set_flags hKirbyFlags5, $00, $20
	play_sfx SFX_LOSE_LIFE
	set_velocities 100, 0, 0
	play_sfx SFX_30
	position_offset 0, -2
	set_velocities 64, 0, VEL_UP_1_8TH
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_10194::
ELSE
MotionScript_10194_@:
ENDC
	set_rel_pos
.script_10195
	set_velocities  1, VEL_LEFT_2_00, 0
	script_exec Func_49d5
	jump_if_equal wd3bd, $01, .script_101a3
	jump_rel .script_10195
.script_101a3
	play_sfx SFX_ENTER_DOOR
	set_anim_script AnimScript_203e8
	set_value wDamageBlinkingCounter, $5a
	set_flags wd1a0, $00, $20
	position_offset 8, 0
	create_object AnimScript_20138, MotionScript_10008, Data_3421
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_abs_pos
	set_flags hKirbyFlags5, $20, $00
	set_kirby_pos
	script_exec Func_3d48
	script_exec Func_4b6d
	set_flags hPalFadeFlags, $00, $08
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_101df::
ELSE
MotionScript_101df_@:
ENDC
	set_rel_pos
.script_101e0
	set_velocities  1, VEL_RIGHT_2_00, 0
	script_exec Func_49d5
	jump_if_equal wd3bd, $02, .script_101ee
	jump_rel .script_101e0
.script_101ee
	play_sfx SFX_ENTER_DOOR
	set_anim_script AnimScript_203e8
	set_value wDamageBlinkingCounter, $5a
	set_flags wd1a0, $00, $20
	position_offset -8, 0
	create_object AnimScript_20138, MotionScript_10008, Data_3421
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_abs_pos
	set_flags hKirbyFlags5, $20, $00
	set_kirby_pos
	script_exec Func_3d48
	script_exec Func_4b6d
	set_flags hPalFadeFlags, $00, $08
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_1022a::
ELSE
MotionScript_1022a_@:
ENDC
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1023a
	set_velocities  8, VEL_LEFT_4_00, 0
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities 10, VEL_LEFT_0_50, 0
	script_end

.script_1023a
	set_velocities  8, VEL_RIGHT_4_00, 0
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities 10, VEL_RIGHT_0_50, 0
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_KirbyPuff::
ELSE
MotionScript_KirbyPuff_@:
ENDC
	jump_if_flags hEngineFlags, KABOOLA_BATTLE, .script_1026a
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1025d
	set_velocities 16, VEL_LEFT_3_00, 0
	set_velocities  8, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_1_8TH, 0
	set_velocities  8, 0, 0
	script_end
.script_1025d
	set_velocities 16, VEL_RIGHT_3_00, 0
	set_velocities  8, VEL_RIGHT_0_75, 0
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	set_velocities  8, 0, 0
	script_end

.script_1026a
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_10273
	set_velocities  0, VEL_LEFT_4_00, 0
.script_10273
	set_velocities  0, VEL_RIGHT_4_00, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_10276::
ELSE
MotionScript_10276_@:
ENDC
	set_position $40, $78
	set_anim_script AnimScript_15f1
	set_velocities  1, 0, 0
	set_kirby_pos
	set_flags hKirbyFlags5, KIRBY5F_TRIGGER_TRANSITION, $00
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_1028c::
ELSE
MotionScript_1028c_@:
ENDC
	set_velocities  2, VEL_RIGHT_4_00, 0
	set_velocities  4, 0, 0
	set_velocities  2, VEL_LEFT_4_00, 0
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_10298::
ELSE
MotionScript_10298_@:
ENDC
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  4, 0, 0
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102a4::
ELSE
MotionScript_102a4_@:
ENDC
	set_velocities  2, 0, VEL_DOWN_4_00
	set_velocities  4, 0, 0
	set_velocities  2, 0, VEL_UP_4_00
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102b0::
ELSE
MotionScript_102b0_@:
ENDC
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  4, 0, 0
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102bc::
ELSE
MotionScript_102bc_@:
ENDC
	set_velocities  2, VEL_LEFT_4_00, 0
	set_velocities  4, 0, 0
	set_velocities  2, VEL_RIGHT_4_00, 0
	set_velocities  0, 0, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102c8::
ELSE
MotionScript_102c8_@:
ENDC
	set_velocities  0, VEL_LEFT_0_25, 0

; unreferenced
IF DEF(EXPORT_SCRIPTS)
MotionScript_102cb::
ELSE
MotionScript_102cb_@:
ENDC
	set_velocities  0, VEL_RIGHT_0_25, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102ce::
ELSE
MotionScript_102ce_@:
ENDC
	set_velocities  0, VEL_LEFT_0_50, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102d1::
ELSE
MotionScript_102d1_@:
ENDC
	set_velocities  0, VEL_RIGHT_0_50, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102d4::
ELSE
MotionScript_102d4_@:
ENDC
	set_velocities  0, VEL_LEFT_0_75, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102d7::
ELSE
MotionScript_102d7_@:
ENDC
	set_velocities  0, VEL_RIGHT_0_75, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102da::
ELSE
MotionScript_102da_@:
ENDC
	set_velocities  0, VEL_LEFT_1_00, 0

; unreferenced
IF DEF(EXPORT_SCRIPTS)
MotionScript_102dd::
ELSE
MotionScript_102dd_@:
ENDC
	set_velocities  0, VEL_RIGHT_0_75, VEL_UP_0_75

IF DEF(EXPORT_SCRIPTS)
MotionScript_102e0::
ELSE
MotionScript_102e0_@:
ENDC
	set_velocities  0, VEL_RIGHT_1_00, 0

; unreferenced
IF DEF(EXPORT_SCRIPTS)
MotionScript_102e3::
ELSE
MotionScript_102e3_@:
ENDC
	set_velocities  0, VEL_RIGHT_0_75, VEL_DOWN_0_75

IF DEF(EXPORT_SCRIPTS)
MotionScript_102e6::
ELSE
MotionScript_102e6_@:
ENDC
	set_velocities  0, VEL_LEFT_1_25, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102e9::
ELSE
MotionScript_102e9_@:
ENDC
	set_velocities  0, VEL_RIGHT_1_25, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102ec::
ELSE
MotionScript_102ec_@:
ENDC
	set_velocities  0, 0, VEL_UP_1_25

IF DEF(EXPORT_SCRIPTS)
MotionScript_102ef::
ELSE
MotionScript_102ef_@:
ENDC
	set_velocities  0, VEL_RIGHT_1_00, VEL_UP_1_00

IF DEF(EXPORT_SCRIPTS)
MotionScript_102f2::
ELSE
MotionScript_102f2_@:
ENDC
	set_velocities  0, VEL_LEFT_1_00, VEL_UP_1_00

IF DEF(EXPORT_SCRIPTS)
MotionScript_102f5::
ELSE
MotionScript_102f5_@:
ENDC
	set_velocities  0, VEL_LEFT_2_00, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102f8::
ELSE
MotionScript_102f8_@:
ENDC
	set_velocities  0, VEL_RIGHT_2_00, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_102fb::
ELSE
MotionScript_102fb_@:
ENDC
	branch_kirby_pos MotionScript_Projectile_Right, MotionScript_Projectile_Left

IF DEF(EXPORT_SCRIPTS)
MotionScript_SpitStar::
ELSE
MotionScript_SpitStar_@:
ENDC
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, MotionScript_Projectile_Right

IF DEF(EXPORT_SCRIPTS)
MotionScript_Projectile_Left::
ELSE
MotionScript_Projectile_Left_@:
ENDC
	set_velocities  0, VEL_LEFT_3_00, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_Projectile_Right::
ELSE
MotionScript_Projectile_Right_@:
ENDC
	set_velocities  0, VEL_RIGHT_3_00, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_Projectile_Up::
ELSE
MotionScript_Projectile_Up_@:
ENDC
	set_velocities  0, 0, VEL_UP_3_00

; unreferenced
IF DEF(EXPORT_SCRIPTS)
MotionScript_10311::
ELSE
MotionScript_10311_@:
ENDC
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_2_00

; unreferenced
IF DEF(EXPORT_SCRIPTS)
MotionScript_10314::
ELSE
MotionScript_10314_@:
ENDC
	set_velocities  0, VEL_LEFT_2_00, VEL_DOWN_2_00

IF DEF(EXPORT_SCRIPTS)
MotionScript_10317::
ELSE
MotionScript_10317_@:
ENDC
	set_velocities  0, VEL_LEFT_4_00, 0

; unreferenced
IF DEF(EXPORT_SCRIPTS)
MotionScript_1031a::
ELSE
MotionScript_1031a_@:
ENDC
	set_velocities  0, VEL_RIGHT_4_00, 0

IF DEF(EXPORT_SCRIPTS)
MotionScript_WarpStar::
ELSE
MotionScript_WarpStar_@:
ENDC
	set_velocities  1, 0, 0
.loop
	set_pal_light
	script_delay 28
	set_pal_dark
	script_delay 4
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
MotionScript_1032d::
ELSE
MotionScript_1032d_@:
ENDC
	set_velocities  5, 0, 0
	set_velocities  9, 0, VEL_DOWN_0_25
	script_exec ScriptFunc_SetObjectPalDark
	set_velocities  9, 0, VEL_DOWN_0_75
	script_exec ScriptFunc_SetObjectPalLight
	set_velocities  4, 0, VEL_DOWN_0_25
	set_object_properties SparklingStarProperties
	jump_rel MotionScript_1032d_StartLoop

IF DEF(EXPORT_SCRIPTS)
MotionScript_1032d_Loop::
ELSE
MotionScript_1032d_Loop_@:
ENDC
	set_velocities  5, 0, 0
	set_velocities  9, 0, VEL_UP_0_25
	set_velocities  9, 0, VEL_UP_0_75
	set_pal_dark
	set_velocities  9, 0, VEL_UP_0_25
	set_pal_light
	set_velocities  5, 0, 0
	set_velocities  9, 0, VEL_DOWN_0_25
	set_pal_dark
	set_velocities  9, 0, VEL_DOWN_0_75
	set_pal_light
	set_velocities  4, 0, VEL_DOWN_0_25
IF DEF(EXPORT_SCRIPTS)
MotionScript_1032d_StartLoop::
ELSE
MotionScript_1032d_StartLoop_@:
ENDC
	set_velocities  5, 0, VEL_DOWN_0_25
	jump_abs MotionScript_1032d_Loop

IF DEF(EXPORT_SCRIPTS)
MotionScript_10370::
ELSE
MotionScript_10370_@:
ENDC
	set_value wClearScreenFlags, CLEAR_ACTIVE
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1038d
	position_offset 0, 6
	set_velocities  2, VEL_LEFT_2_00, 0
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_0_50, 0
	jump_rel .jump
.script_1038d
	set_velocities  2, VEL_RIGHT_2_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	set_velocities  4, VEL_RIGHT_0_50, 0
.jump
	set_velocities  0, 0, 0

; unreferenced
IF DEF(EXPORT_SCRIPTS)
MotionScript_10399::
ELSE
MotionScript_10399_@:
ENDC
	script_exec Func_48f5
	jumptable wd3bd
	dw MotionScript_103bf
	dw MotionScript_103c3
	dw MotionScript_103c7
	dw MotionScript_103cb
	dw MotionScript_103cf
	dw MotionScript_103d3
	dw MotionScript_103d7
	dw MotionScript_103db
	dw MotionScript_103df
	dw MotionScript_103e3
	dw MotionScript_103e7
	dw MotionScript_103eb
	dw MotionScript_103ef
	dw MotionScript_103f3
	dw MotionScript_103f7
	dw MotionScript_103fb

IF DEF(EXPORT_SCRIPTS)
MotionScript_103bf::
ELSE
MotionScript_103bf_@:
ENDC
	set_velocities  7, 0, 26.0
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103c3::
ELSE
MotionScript_103c3_@:
ENDC
	set_velocities  7, 2.25, 26.625
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103c7::
ELSE
MotionScript_103c7_@:
ENDC
	set_velocities  7, 4.0, 28.0
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103cb::
ELSE
MotionScript_103cb_@:
ENDC
	set_velocities  7, 5.375, 29.75
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103cf::
ELSE
MotionScript_103cf_@:
ENDC
	set_velocities  7, 6.0, 0
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103d3::
ELSE
MotionScript_103d3_@:
ENDC
	set_velocities  7, 5.375, 2.25
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103d7::
ELSE
MotionScript_103d7_@:
ENDC
	set_velocities  7, 4.0, 4.0
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103db::
ELSE
MotionScript_103db_@:
ENDC
	set_velocities  7, 2.25, 5.375
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103df::
ELSE
MotionScript_103df_@:
ENDC
	set_velocities  7, 0, 6.0
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103e3::
ELSE
MotionScript_103e3_@:
ENDC
	set_velocities  7, 29.75, 5.375
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103e7::
ELSE
MotionScript_103e7_@:
ENDC
	set_velocities  7, 28.0, 4.0
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103eb::
ELSE
MotionScript_103eb_@:
ENDC
	set_velocities  7, 26.625, 2.25
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103ef::
ELSE
MotionScript_103ef_@:
ENDC
	set_velocities  7, 26.0, 0
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103f3::
ELSE
MotionScript_103f3_@:
ENDC
	set_velocities  7, 26.625, 29.75
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103f7::
ELSE
MotionScript_103f7_@:
ENDC
	set_velocities  7, 28.0, 28.0
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103fb::
ELSE
MotionScript_103fb_@:
ENDC
	set_velocities  7, 29.75, 26.625
	script_end

IF DEF(EXPORT_SCRIPTS)
MotionScript_103ff::
ELSE
MotionScript_103ff_@:
ENDC
.loop
	set_velocities 10, VEL_LEFT_0_25, 0
	set_velocities 30, VEL_LEFT_0_50, 0
	set_velocities 10, VEL_LEFT_0_25, 0
	set_velocities 10, VEL_RIGHT_0_25, 0
	set_velocities 30, VEL_RIGHT_0_50, 0
	set_velocities 10, VEL_RIGHT_0_25, 0
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
MotionScript_10414::
ELSE
MotionScript_10414_@:
ENDC
.loop
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, 0, 0
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, 0, 0
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
MotionScript_1042f::
ELSE
MotionScript_1042f_@:
ENDC
.loop
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities 48, VEL_LEFT_1_25, 0
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	set_velocities 48, VEL_RIGHT_1_25, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	jump_abs .loop

IF DEF(EXPORT_SCRIPTS)
MotionScript_10444::
ELSE
MotionScript_10444_@:
ENDC
.loop
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 10, 0, VEL_DOWN_0_75
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 10, 0, VEL_UP_0_25
	set_velocities 10, 0, VEL_UP_0_75
	set_velocities 10, 0, VEL_UP_0_25
	jump_abs .loop
