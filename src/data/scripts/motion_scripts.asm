MotionScript_InhaledObject:
	set_update_func InhaleObject, NULL
	set_velocities  0, 0, 0

MotionScript_10008:
	set_velocities  0, 0, 0

MotionScript_1000b:
	set_position $18, $00
	set_velocities 60, VEL_RIGHT_0_75, VEL_DOWN_2_00
	jump_abs MotionScript_106a2

MotionScript_10014:
	set_position $08, $52
	set_anim_script AnimScript_20bfe
	set_velocities  1, 0, 0
	create_object AnimScript_Explosion, MotionScript_102e0, Data_3425
	set_velocities 10, VEL_RIGHT_2_00, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	jump_abs MotionScript_106dc

MotionScript_1002f:
	set_position $44, $08
	set_velocities 40, VEL_RIGHT_0_50, VEL_DOWN_2_00
	play_sfx SFX_08
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	script_end

MotionScript_10056:
	set_anim_script AnimScript_20c01
	set_position $1e, $86
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_3_00
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
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
	set_anim_script AnimScript_20c10
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_25
	jump_abs MotionScript_106dc

MotionScript_100bf:
	set_position $51, $48
	set_anim_script AnimScript_20bfe
	set_velocities  1, 0, 0
	create_object AnimScript_20ae6, MotionScript_10713, Data_3425
	create_object AnimScript_20ae6, MotionScript_1071f, Data_3425
	create_object AnimScript_20ae6, MotionScript_1072b, Data_3425
	create_object AnimScript_20ae6, MotionScript_10737, Data_3425
	create_object AnimScript_20ae6, MotionScript_10743, Data_3425
	create_object AnimScript_20ae6, MotionScript_10767, Data_3425
	create_object AnimScript_20ae6, MotionScript_1074f, Data_3425
	create_object AnimScript_20ae6, MotionScript_1075b, Data_3425
	create_object AnimScript_20138, MotionScript_10008, Data_3425
	play_sfx SFX_LOSE_LIFE
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_8TH
	play_sfx SFX_28
	jump_abs MotionScript_106dc

MotionScript_1011d:
	set_position $58, $78
	set_anim_script AnimScript_15f1
	set_velocities  1, 0, 0
	set_kirby_pos
	set_flags hKirbyFlags3, KIRBY3F_UNK2 | KIRBY3F_DIVE, $00
	set_value wStageTransitionCounter, 1
	set_velocities  0, 0, 0

MotionScript_10137:
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_25
	set_velocities  8, 0, VEL_DOWN_0_25
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  0, 0, VEL_DOWN_3_00

MotionScript_10149:
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	script_repeat 3
	set_velocities  1, VEL_LEFT_2_00, VEL_UP_4_00
	set_velocities  1, VEL_RIGHT_2_00, VEL_UP_2_00
	script_repeat_end
	set_kirby_pos
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	set_velocities  0, 0, 0

MotionScript_10162:
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	script_repeat 4
	set_velocities  1, VEL_LEFT_2_00, VEL_DOWN_1_25
	set_velocities  1, VEL_RIGHT_2_00, VEL_DOWN_1_25
	script_repeat_end
	set_kirby_pos
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	set_velocities  0, 0, 0
; 0x1017b

SECTION "Bank 4@4194", ROMX[$4194], BANK[$4]

MotionScript_10194:
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

MotionScript_101df:
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

MotionScript_1022a:
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

MotionScript_KirbyPuff:
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

MotionScript_10276:
	set_position $40, $78
	set_anim_script AnimScript_15f1
	set_velocities  1, 0, 0
	set_kirby_pos
	set_flags hKirbyFlags5, KIRBY5F_TRIGGER_TRANSITION, $00
	set_velocities  0, 0, 0

MotionScript_1028c::
	set_velocities  2, VEL_RIGHT_4_00, 0
	set_velocities  4, 0, 0
	set_velocities  2, VEL_LEFT_4_00, 0
	set_velocities  0, 0, 0

MotionScript_10298:
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  4, 0, 0
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  0, 0, 0

MotionScript_102a4:
	set_velocities  2, 0, VEL_DOWN_4_00
	set_velocities  4, 0, 0
	set_velocities  2, 0, VEL_UP_4_00
	set_velocities  0, 0, 0

MotionScript_102b0:
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  4, 0, 0
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  0, 0, 0

MotionScript_102bc::
	set_velocities  2, VEL_LEFT_4_00, 0
	set_velocities  4, 0, 0
	set_velocities  2, VEL_RIGHT_4_00, 0
	set_velocities  0, 0, 0

MotionScript_102c8:
	set_velocities  0, VEL_LEFT_0_25, 0
; 0x102cb

SECTION "Bank 4@42ce", ROMX[$42ce], BANK[$4]

MotionScript_102ce:
	set_velocities  0, VEL_LEFT_0_50, 0

MotionScript_102d1:
	set_velocities  0, VEL_RIGHT_0_50, 0

MotionScript_102d4:
	set_velocities  0, VEL_LEFT_0_75, 0

MotionScript_102d7:
	set_velocities  0, VEL_RIGHT_0_75, 0

MotionScript_102da:
	set_velocities  0, VEL_LEFT_1_00, 0
; 0x102dd

SECTION "Bank 4@42e0", ROMX[$42e0], BANK[$4]

MotionScript_102e0:
	set_velocities  0, VEL_RIGHT_1_00, 0
; 0x102e3

SECTION "Bank 4@42e6", ROMX[$42e6], BANK[$4]

MotionScript_102e6:
	set_velocities  0, VEL_LEFT_1_25, 0

MotionScript_102e9:
	set_velocities  0, VEL_RIGHT_1_25, 0

MotionScript_102ec:
	set_velocities  0, 0, VEL_UP_1_25

MotionScript_102ef:
	set_velocities  0, VEL_RIGHT_1_00, VEL_UP_1_00

MotionScript_102f2:
	set_velocities  0, VEL_LEFT_1_00, VEL_UP_1_00

MotionScript_102f5:
	set_velocities  0, VEL_LEFT_2_00, 0

MotionScript_102f8:
	set_velocities  0, VEL_RIGHT_2_00, 0

MotionScript_102fb:
	branch_kirby_pos MotionScript_SpitStar_Right, MotionScript_SpitStar_Left

MotionScript_SpitStar:
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, MotionScript_SpitStar_Right
MotionScript_SpitStar_Left:
	set_velocities  0, VEL_LEFT_3_00, 0
MotionScript_SpitStar_Right:
	set_velocities  0, VEL_RIGHT_3_00, 0

MotionScript_1030e:
	set_velocities  0, 0, VEL_UP_3_00
; 0x10311

SECTION "Bank 4@4317", ROMX[$4317], BANK[$4]

MotionScript_10317:
	set_velocities  0, VEL_LEFT_4_00, 0
; 0x1031a

SECTION "Bank 4@431d", ROMX[$431d], BANK[$4]

MotionScript_WarpStar:
	set_velocities  1, 0, 0
.loop
	set_pal_light
	script_delay 28
	set_pal_dark
	script_delay 4
	jump_abs .loop

MotionScript_1032d:
	set_velocities  5, 0, 0
	set_velocities  9, 0, VEL_DOWN_0_25
	script_exec ScriptFunc_SetObjectPalDark
	set_velocities  9, 0, VEL_DOWN_0_75
	script_exec ScriptFunc_SetObjectPalLight
	set_velocities  4, 0, VEL_DOWN_0_25
	set_object_properties SparklingStarProperties
	jump_rel .start_loop
.loop
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
.start_loop
	set_velocities  5, 0, VEL_DOWN_0_25
	jump_abs .loop

MotionScript_10370:
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
; 0x10399

SECTION "Bank 4@43bf", ROMX[$43bf], BANK[$4]

MotionScript_103bf:
	set_velocities  7, 0, 26.0
	script_end

MotionScript_103c3:
	set_velocities  7, 2.25, 26.625
	script_end

MotionScript_103c7:
	set_velocities  7, 4.0, 28.0
	script_end

MotionScript_103cb:
	set_velocities  7, 5.375, 29.75
	script_end

MotionScript_103cf:
	set_velocities  7, 6.0, 0
	script_end

MotionScript_103d3:
	set_velocities  7, 5.375, 2.25
	script_end

MotionScript_103d7:
	set_velocities  7, 4.0, 4.0
	script_end

MotionScript_103db:
	set_velocities  7, 2.25, 5.375
	script_end

MotionScript_103df:
	set_velocities  7, 0, 6.0
	script_end

MotionScript_103e3:
	set_velocities  7, 29.75, 5.375
	script_end

MotionScript_103e7:
	set_velocities  7, 28.0, 4.0
	script_end

MotionScript_103eb:
	set_velocities  7, 26.625, 2.25
	script_end

MotionScript_103ef:
	set_velocities  7, 26.0, 0
	script_end

MotionScript_103f3:
	set_velocities  7, 26.625, 29.75
	script_end

MotionScript_103f7:
	set_velocities  7, 28.0, 28.0
	script_end

MotionScript_103fb:
	set_velocities  7, 29.75, 26.625
	script_end

MotionScript_103ff:
.loop
	set_velocities 10, VEL_LEFT_0_25, 0
	set_velocities 30, VEL_LEFT_0_50, 0
	set_velocities 10, VEL_LEFT_0_25, 0
	set_velocities 10, VEL_RIGHT_0_25, 0
	set_velocities 30, VEL_RIGHT_0_50, 0
	set_velocities 10, VEL_RIGHT_0_25, 0
	jump_abs .loop

MotionScript_10414:
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

MotionScript_1042f:
.loop
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities 48, VEL_LEFT_1_25, 0
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	set_velocities 48, VEL_RIGHT_1_25, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	jump_abs .loop

MotionScript_10444:
.loop
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 10, 0, VEL_DOWN_0_75
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 10, 0, VEL_UP_0_25
	set_velocities 10, 0, VEL_UP_0_75
	set_velocities 10, 0, VEL_UP_0_25
	jump_abs .loop

MotionScript_10459:
.loop
	set_velocities 20, 0, 0
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 30, 0, VEL_DOWN_0_75
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 20, 0, 0
	set_velocities 10, 0, VEL_UP_0_25
	set_velocities 30, 0, VEL_UP_0_75
	set_velocities 10, 0, VEL_UP_0_25
	jump_abs .loop
; 0x10474

SECTION "Bank 4@448f", ROMX[$448f], BANK[$4]

MotionScript_1048f:
.loop
	set_velocities 30, 0, 0
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 150, 0, VEL_DOWN_0_50
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 30, 0, 0
	set_velocities 10, 0, VEL_UP_0_25
	set_velocities 150, 0, VEL_UP_0_50
	set_velocities 10, 0, VEL_UP_0_25
	jump_abs .loop

MotionScript_104aa:
.loop
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_00, 0
	jump_abs .loop
; 0x104b9

SECTION "Bank 4@4508", ROMX[$4508], BANK[$4]

MotionScript_10508:
.loop
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_DOWN_0_25
	set_velocities 64, 0, VEL_DOWN_0_50
	set_velocities 32, 0, VEL_DOWN_0_25
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_UP_0_25
	set_velocities 64, 0, VEL_UP_0_50
	set_velocities 32, 0, VEL_UP_0_25
	jump_abs .loop
; 0x10523

SECTION "Bank 4@459a", ROMX[$459a], BANK[$4]

MotionScript_1059a:
.loop
	set_velocities 10, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities 10, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities 10, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities 10, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities 20, 0, 0
	set_velocities 10, VEL_RIGHT_1_00, VEL_UP_3_00
	set_velocities 10, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities 10, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities 10, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities 20, 0, 0
	jump_abs .loop

MotionScript_105bb:
.loop
	set_velocities  2, 0, VEL_DOWN_1_25
	branch_on_kirby_vertical_alignment MotionScript_105e5, MotionScript_105c8
	jump_abs .loop

MotionScript_105c8:
	set_anim_script AnimScript_20662
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  0, VEL_RIGHT_2_00, 0

MotionScript_105e5:
	set_anim_script AnimScript_20659
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  0, VEL_LEFT_2_00, 0

MotionScript_10602:
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities 16, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_0_75
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, 0
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_2_00
	branch_kirby_pos MotionScript_105e5, MotionScript_105c8

MotionScript_10639:
	set_velocities 80, 0, 0
	set_anim_script AnimScript_20647
	set_velocities 16, 0, VEL_UP_0_50
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_16TH
	set_velocities 80, 0, VEL_DOWN_1_16TH
	set_anim_script AnimScript_2063b
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities  0, VEL_LEFT_3_00, 0
; 0x1065b

SECTION "Bank 4@467d", ROMX[$467d], BANK[$4]

MotionScript_1067d:
.loop
	set_anim_script AnimScript_2063b
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_0_75
	jump_random 33 percent + 1, .loop
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_25
	jump_random 50 percent + 1, .loop
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_25
	jump_abs .loop

MotionScript_106a2:
	create_object AnimScript_20138, MotionScript_10008, Data_3425
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_anim_script AnimScript_2010f
	set_velocities  8, 0, VEL_UP_3_00
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
MotionScript_106dc:
	set_kirby_pos
	set_flags hKirbyFlags3, KIRBY3F_UNK2 | KIRBY3F_DIVE, $00
	set_value wStageTransitionCounter, 1
	set_velocities  0, 0, 0

MotionScript_106eb:
	position_offset -4, -4
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities 48, VEL_LEFT_1_8TH, VEL_UP_0_25
	script_end

MotionScript_106f5:
	position_offset 4, -4
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities 48, VEL_RIGHT_1_8TH, VEL_UP_0_25
	script_end

MotionScript_106ff:
	position_offset -6, 0
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities 48, VEL_LEFT_0_25, 0
	script_end

MotionScript_10709:
	position_offset 6, 0
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities 48, VEL_RIGHT_0_25, 0
	script_end

MotionScript_10713:
	set_velocities  6, 0, VEL_UP_6_00
	set_velocities  6, 0, VEL_UP_3_00
	set_velocities  6, 0, VEL_UP_1_25
	set_velocities  0, 0, VEL_UP_0_75

MotionScript_1071f:
	set_velocities  6, VEL_RIGHT_6_00, 0
	set_velocities  6, VEL_RIGHT_3_00, 0
	set_velocities  6, VEL_RIGHT_1_25, 0
	set_velocities  0, VEL_RIGHT_0_75, 0

MotionScript_1072b:
	set_velocities  6, 0, VEL_DOWN_6_00
	set_velocities  6, 0, VEL_DOWN_3_00
	set_velocities  6, 0, VEL_DOWN_1_25
	set_velocities  0, 0, VEL_DOWN_0_75

MotionScript_10737:
	set_velocities  6, VEL_LEFT_6_00, 0
	set_velocities  6, VEL_LEFT_3_00, 0
	set_velocities  6, VEL_LEFT_1_25, 0
	set_velocities  0, VEL_LEFT_0_75, 0

MotionScript_10743:
	set_velocities  6, VEL_RIGHT_4_00, VEL_UP_4_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_UP_0_50

MotionScript_1074f:
	set_velocities  6, VEL_RIGHT_4_00, VEL_DOWN_4_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_0_50

MotionScript_1075b:
	set_velocities  6, VEL_LEFT_4_00, VEL_DOWN_4_00
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_0_50

MotionScript_10767:
	set_velocities  6, VEL_LEFT_4_00, VEL_UP_4_00
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  0, VEL_LEFT_0_50, VEL_UP_0_50

MotionScript_10773:
	set_velocities  6, 0, VEL_UP_4_00
	set_velocities  6, 0, VEL_UP_1_25
	set_velocities  6, 0, VEL_UP_1_8TH
	script_end

MotionScript_1077d:
	set_velocities  6, VEL_LEFT_4_00, 0
	set_velocities  6, VEL_LEFT_1_25, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_end

MotionScript_10787:
	set_velocities  6, 0, VEL_DOWN_4_00
	set_velocities  6, 0, VEL_DOWN_1_25
	set_velocities  6, 0, VEL_DOWN_1_8TH
	script_end

MotionScript_10791:
	set_velocities  6, VEL_LEFT_4_00, 0
	set_velocities  6, VEL_LEFT_1_25, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_end

MotionScript_1079b:
	set_velocities  6, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_16TH, VEL_UP_1_16TH
	script_end
; 0x107a5

SECTION "Bank 4@47af", ROMX[$47af], BANK[$4]

MotionScript_107af:
	set_velocities  6, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_1_16TH, VEL_DOWN_1_16TH
	script_end

MotionScript_107b9:
	set_velocities  6, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_1_16TH, VEL_UP_1_16TH
	script_end

MotionScript_107c3:
	jumptable_random %111
	dw .script_107d5
	dw .script_107e1
	dw .script_107ed
	dw .script_107f9
	dw .script_10805
	dw .script_10811
	dw .script_1081d
	dw .script_10829

.script_107d5
	position_offset 0, -6
	set_velocities  3, 0, VEL_UP_3_00
	set_velocities  3, 0, VEL_UP_2_00
	set_velocities  0, 0, 0

.script_107e1
	position_offset 5, -5
	set_velocities  3, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  0, 0, 0

.script_107ed
	position_offset 6, 0
	set_velocities  3, VEL_RIGHT_3_00, 0
	set_velocities  3, VEL_RIGHT_2_00, 0
	set_velocities  0, 0, 0

.script_107f9
	position_offset 5, 5
	set_velocities  3, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  0, 0, 0

.script_10805
	position_offset 0, 6
	set_velocities  3, 0, VEL_DOWN_3_00
	set_velocities  3, 0, VEL_DOWN_2_00
	set_velocities  0, 0, 0

.script_10811
	position_offset -5, 5
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  0, 0, 0

.script_1081d
	position_offset -6, 0
	set_velocities  3, VEL_LEFT_3_00, 0
	set_velocities  3, VEL_LEFT_2_00, 0
	set_velocities  0, 0, 0

.script_10829
	position_offset -5, -5
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  0, 0, 0

MotionScript_10835:
	set_velocities  4, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_50
	script_end

MotionScript_1083f:
	set_velocities  3, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_1_25
	script_end

MotionScript_10846:
	set_velocities  4, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_end

MotionScript_10850:
	set_velocities  3, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	script_end

MotionScript_10857:
	set_velocities  3, 0, VEL_UP_4_00
	set_velocities  3, 0, VEL_UP_2_00
	set_velocities  3, 0, VEL_UP_1_00
	script_end

MotionScript_10861:
	set_velocities  3, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_50
	script_end

MotionScript_1086b:
	set_velocities  3, VEL_RIGHT_4_00, 0
	set_velocities  3, VEL_RIGHT_2_00, 0
	set_velocities  3, VEL_RIGHT_1_00, 0
	script_end

MotionScript_10875:
	set_velocities  3, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_end

MotionScript_1087f:
	set_velocities  3, 0, VEL_DOWN_4_00
	set_velocities  3, 0, VEL_DOWN_2_00
	set_velocities  3, 0, VEL_DOWN_1_00
	script_end

MotionScript_10889:
	set_velocities  3, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  3, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_0_50
	script_end

MotionScript_10893:
	set_velocities  3, VEL_LEFT_4_00, 0
	set_velocities  3, VEL_LEFT_2_00, 0
	set_velocities  3, VEL_LEFT_1_00, 0
	script_end

MotionScript_1089d:
	set_velocities  3, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_0_50
	script_end

MotionScript_108a7:
	set_velocities  3, VEL_RIGHT_2_00, VEL_UP_4_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_1_16TH, VEL_UP_0_25
	script_end

MotionScript_108b4:
	set_velocities  3, VEL_RIGHT_4_00, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_0_25
	set_velocities  3, VEL_RIGHT_0_25, VEL_UP_1_16TH
	script_end

MotionScript_108c1:
	set_velocities  3, VEL_RIGHT_4_00, VEL_DOWN_2_00
	set_velocities  3, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_0_25
	set_velocities  3, VEL_RIGHT_0_25, VEL_DOWN_1_16TH
	script_end

MotionScript_108ce:
	set_velocities  3, VEL_RIGHT_2_00, VEL_DOWN_4_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  3, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  3, VEL_RIGHT_1_16TH, VEL_DOWN_0_25
	script_end

MotionScript_108db:
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_4_00
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_1_16TH, VEL_DOWN_0_25
	script_end

MotionScript_108e8:
	set_velocities  3, VEL_LEFT_4_00, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities  3, VEL_LEFT_0_25, VEL_DOWN_1_16TH
	script_end

MotionScript_108f5:
	set_velocities  3, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  3, VEL_LEFT_0_25, VEL_UP_1_16TH
	script_end

MotionScript_10902:
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_4_00
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_1_16TH, VEL_UP_0_25
	script_end
 
MotionScript_1090f:
	set_velocities  2, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  2, 0, VEL_UP_4_00
MotionScript_10915:
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  2, VEL_LEFT_4_00, 0
MotionScript_1091b:
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  2, 0, VEL_DOWN_4_00
MotionScript_10921:
	set_velocities  2, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  2, VEL_RIGHT_4_00, 0
	jump_abs MotionScript_1090f

MotionScript_1092a:
	script_call MotionScript_10a75
	set_velocities 20, 0, 0
	set_velocities 20, 0, VEL_UP_1_16TH
	set_velocities 16, VEL_LEFT_1_8TH, VEL_UP_1_25
	set_velocities 16, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_4_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_4_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_4_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_4_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_4_00
	set_velocities 32, VEL_RIGHT_2_00, 0
	set_velocities 128, VEL_LEFT_1_8TH, VEL_DOWN_0_50
	set_velocities  0, 0, 0

MotionScript_1096c:
	script_call MotionScript_10a75
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_25
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities 12, 0, VEL_UP_4_00
	set_velocities  8, VEL_LEFT_4_00, 0
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities  8, 0, 0
	script_repeat 22
	set_velocities  2, VEL_RIGHT_1_25, VEL_UP_1_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_1_00
	create_object AnimScript_208f1, MotionScript_135bc, Data_3425
	script_repeat_end
	set_velocities  0, VEL_LEFT_0_75, 0

MotionScript_109a3:
	script_call MotionScript_10a75
	set_velocities  8, 0, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_4_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_4_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_1_8TH
	set_velocities 16, 0, VEL_DOWN_0_00
	play_sfx SFX_WARP_STAR
	script_repeat 15
	create_object AnimScript_208f1, MotionScript_10a13, Data_3425
	set_velocities  2, VEL_RIGHT_0_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_0_00, VEL_DOWN_2_00
	script_repeat_end
	create_object AnimScript_Explosion, MotionScript_10a13, Data_3425
	script_repeat 8
	set_velocities  6, VEL_RIGHT_0_00, VEL_DOWN_1_8TH
	create_object AnimScript_208f1, MotionScript_10a13, Data_3425
	script_repeat_end
	set_velocities  8, VEL_LEFT_1_16TH, VEL_UP_1_00
	create_object AnimScript_208f1, MotionScript_10a13, Data_3425
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	create_object AnimScript_208f1, MotionScript_10a13, Data_3425
	set_velocities 20, VEL_LEFT_0_50, VEL_UP_4_00
	set_position $68, $08
	set_velocities 20, 0, 0
	play_sfx SFX_13
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_0_25

MotionScript_10a13:
	jumptable_random %11
	dw .script_10a1d
	dw .script_10a20
	dw .script_10a23
	dw .script_10a26

.script_10a1d
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_3_00
.script_10a20
	set_velocities  0, VEL_LEFT_1_8TH, VEL_DOWN_3_00
.script_10a23
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
.script_10a26
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_3_00

MotionScript_10a29:
	script_call MotionScript_10a75
	set_velocities  8, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_4_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_3_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_4_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_4_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_3_00
	play_sfx SFX_08
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  0, 0, VEL_UP_0_50

MotionScript_10a75:
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	script_ret

MotionScript_10a92:
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_velocities  6, VEL_LEFT_0_25, 0
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_1_8TH
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  0, VEL_LEFT_0_25, VEL_DOWN_1_25

MotionScript_10abd:
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_velocities  6, VEL_RIGHT_0_25, 0
	set_velocities  6, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities  6, VEL_RIGHT_0_25, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  0, VEL_RIGHT_0_25, VEL_DOWN_1_25

MotionScript_10ae8:
.loop
	jump_if_equal wObjectScreenXPositions + OBJECT_SLOT_KIRBY, $56, MotionScript_10b00
	set_velocities  1, VEL_LEFT_0_50, 0
	jump_abs .loop

MotionScript_10af4:
.loop
	jump_if_equal wObjectScreenXPositions + OBJECT_SLOT_KIRBY, $5a, MotionScript_10b00
	set_velocities  1, VEL_RIGHT_0_50, 0
	jump_abs .loop

MotionScript_10b00:
	set_scripts AnimScript_MainKirbyStageClearDance, MotionScript_10008

MotionScript_10b05:
	set_velocities 79, VEL_LEFT_0_25, 0
	script_repeat 2
	set_velocities  6, VEL_LEFT_0_50, 0
	set_velocities 12, VEL_LEFT_0_25, 0
	set_velocities  6, VEL_LEFT_1_16TH, 0
	script_repeat_end
	set_velocities 31, 0, 0
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities 31, VEL_RIGHT_0_25, 0
	set_velocities 36, 0, 0
	set_velocities 24, VEL_LEFT_0_50, 0
	set_velocities  0, 0, 0

MotionScript_10b38:
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities 10, 0, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities 10, 0, 0
	set_velocities 20, 0, VEL_DOWN_1_25
	set_velocities 18, 0, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities 10, 0, 0
	set_velocities 18, 0, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities 12, 0, 0
	script_repeat 2
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_0_50, 0
	set_velocities  6, VEL_LEFT_0_25, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_10b98:
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities 20, 0, 0
	script_repeat 2
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities 12, VEL_LEFT_0_50, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_repeat_end
	set_velocities 31, 0, 0
	script_repeat 2
	set_velocities 10, 0, 0
	set_velocities 10, VEL_LEFT_1_25, 0
	set_velocities 10, VEL_LEFT_0_50, 0
	set_velocities 10, VEL_LEFT_1_8TH, 0
	script_repeat_end
	script_repeat 2
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_10bda:
	set_velocities 10, 0, VEL_UP_2_00
	set_velocities 10, 0, VEL_UP_1_00
	set_velocities 10, 0, VEL_UP_0_25
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 10, 0, VEL_DOWN_1_00
	set_velocities 10, 0, VEL_DOWN_2_00
	set_velocities 20, 0, 0
	script_call MotionScript_10c3a
	script_repeat 2
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_25
	script_repeat_end
	script_call MotionScript_10c3a
	set_velocities 16, 0, 0
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_0_25
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities 20, 0, 0
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_0_25
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_0_25
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities 20, 0, 0
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities  0, 0, 0

MotionScript_10c3a:
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_25
	script_ret

MotionScript_10c47:
.loop
	set_velocities  2, VEL_LEFT_0_50, 0
	set_velocities  2, VEL_RIGHT_0_50, 0
	jump_abs .loop

MotionScript_10c50:
	jumptable_random $07
	dw .script_10c62
	dw .script_10c6f
	dw .script_10c7c
	dw .script_10c89
	dw .script_10c96
	dw .script_10ca3
	dw .script_10cb0
	dw .script_10cbd

.script_10c62
	position_offset 0, -6
	set_velocities  3, 0, VEL_UP_1_00
	set_velocities  3, 0, VEL_UP_0_75
	set_velocities  2, 0, 0
	script_end

.script_10c6f
	position_offset 5, -5
	set_velocities  3, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  2, 0, 0
	script_end

.script_10c7c
	position_offset 6, 0
	set_velocities  3, VEL_RIGHT_1_00, 0
	set_velocities  3, VEL_RIGHT_0_75, 0
	set_velocities  2, 0, 0
	script_end

.script_10c89
	position_offset 5, 5
	set_velocities  3, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  2, 0, 0
	script_end

.script_10c96
	position_offset 0, 6
	set_velocities  3, 0, VEL_DOWN_1_00
	set_velocities  3, 0, VEL_DOWN_0_75
	set_velocities  2, 0, 0
	script_end

.script_10ca3
	position_offset -5, 5
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  2, 0, 0
	script_end

.script_10cb0
	position_offset -6, 0
	set_velocities  3, VEL_LEFT_1_00, 0
	set_velocities  3, VEL_LEFT_0_75, 0
	set_velocities  2, 0, 0
	script_end

.script_10cbd
	position_offset -5, -5
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  2, 0, 0
	script_end

MotionScript_10cca:
.loop
	set_velocities 200, VEL_LEFT_1_8TH, 0
	set_velocities 200, VEL_RIGHT_1_8TH, 0
	jump_abs .loop

MotionScript_10cd3:
.loop
	set_velocities 10, 0, VEL_UP_0_50
	set_velocities 10, 0, VEL_UP_1_8TH
	set_velocities 10, 0, 0
	set_velocities 10, 0, VEL_DOWN_1_8TH
	set_velocities 10, 0, VEL_DOWN_0_50
	jump_abs .loop

MotionScript_DoorGuardGordo:
.loop
	set_velocities  6, 0, VEL_UP_1_00
	set_velocities  3, 0, 0
	set_velocities  6, 0, VEL_DOWN_1_00
	set_velocities  3, 0, 0
	jump_abs .loop

MotionScript_10cf4:
	set_velocities 80, 0, 0
	set_anim_script AnimScript_20647
	set_velocities 16, 0, VEL_UP_0_50
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_8TH
	set_velocities 80, 0, VEL_DOWN_1_8TH
	set_anim_script AnimScript_20647
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  0, VEL_LEFT_0_75, 0

MotionScript_10d16:
.loop
	set_velocities  2, 0, VEL_DOWN_1_25
	branch_on_kirby_vertical_alignment .swoop_left, .swoop_right
	jump_abs .loop

.swoop_right
	set_anim_script AnimScript_20662
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_1_8TH, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_16TH
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_16TH, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	set_velocities  0, VEL_RIGHT_1_00, 0

.swoop_left
	set_anim_script AnimScript_20659
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_16TH
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_1_16TH, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_1_8TH, 0
	set_velocities  0, VEL_LEFT_1_00, 0

MotionScript_10d5d:
.loop
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_0_50, 0
	set_velocities  4, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  4, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_0_75, 0
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_00
	jump_abs .loop
; 0x10d7b

SECTION "Bank 4@4d99", ROMX[$4d99], BANK[$4]

MotionScript_10d99:
.loop
	set_velocities 80, 0, 0
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_75
	set_velocities  8, 0, VEL_UP_0_25
	set_velocities  8, 0, VEL_UP_1_16TH
	set_velocities  8, 0, VEL_DOWN_1_16TH
	set_velocities  8, 0, VEL_DOWN_0_25
	set_velocities  8, 0, VEL_DOWN_0_75
	set_velocities  8, 0, VEL_DOWN_1_00
	jump_abs .loop

MotionScript_10db7:
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_object_properties StandardEnemyGravityProperties
	set_velocities  0, 0, 0

MotionScript_10dcb:
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_object_properties StandardEnemyGravityProperties
	set_velocities  0, 0, 0

MotionScript_10ddf:
.loop
	script_call MotionSubScript_10def
	script_call MotionSubScript_10e11
	jump_rel .loop

MotionScript_10de7:
.loop
	script_call MotionSubScript_10e11
	script_call MotionSubScript_10def
	jump_rel .loop

MotionSubScript_10def:
	script_repeat 12
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionSubScript_10e11:
	script_repeat 12
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret
; 0x10e33

SECTION "Bank 4@4e3b", ROMX[$4e3b], BANK[$4]

MotionScript_10e3b:
.loop
	script_call MotionSubScript_10e65
	script_call MotionSubScript_10e43
	jump_rel .loop

MotionSubScript_10e43:
	script_repeat 3
	set_velocities  4, VEL_LEFT_0_00, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0_00, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionSubScript_10e65:
	script_repeat 3
	set_velocities  4, VEL_RIGHT_0_00, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0_00, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionScript_10e87:
.loop
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_DOWN_0_50
	set_velocities 64, 0, VEL_DOWN_0_75
	set_velocities 32, 0, VEL_DOWN_0_50
	jump_abs .loop

MotionScript_10e96:
	set_anim_script AnimScript_20d3f
	script_repeat 2
	script_call MotionSubScript_10ecb
	script_repeat_end
MotionScript_10ea1:
	set_anim_script AnimScript_20d47
	script_repeat 2
	script_call MotionSubScript_10ede
	script_repeat_end
	jump_rel MotionScript_10e96

MotionScript_10eae:
.loop
	set_anim_script AnimScript_20d3f
	script_repeat 4
	script_call MotionSubScript_10ecb
	script_repeat_end
	set_anim_script AnimScript_20d47
	script_repeat 4
	script_call MotionSubScript_10ede
	script_repeat_end
	jump_rel .loop
; 0x10ec6

SECTION "Bank 4@4ecb", ROMX[$4ecb], BANK[$4]

MotionSubScript_10ecb:
	set_velocities  3, VEL_LEFT_0_50, 0
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  3, VEL_LEFT_0_50, 0
	script_ret

MotionSubScript_10ede:
	set_velocities  3, VEL_RIGHT_0_50, 0
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities  3, VEL_RIGHT_0_50, 0
	script_ret

MotionScript_10ef1:
	set_velocities 10, 0, VEL_UP_2_00
	set_velocities 10, 0, VEL_UP_0_75
	set_velocities 10, 0, 0
	set_velocities 10, 0, VEL_DOWN_0_50
	set_velocities 10, 0, VEL_DOWN_1_00
	set_velocities 14, 0, VEL_DOWN_2_00
	set_velocities  0, 0, 0

MotionScript_10f06:
.loop
	script_call MotionSubScript_10f16
	script_call MotionSubScript_10f29
	jump_rel .loop

MotionScript_10f0e:
.loop
	script_call MotionSubScript_10f29
	script_call MotionSubScript_10f16
	jump_rel .loop

MotionSubScript_10f16:
	script_repeat 9
	set_velocities  3, 0, 0
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_0_50
	script_repeat_end
	script_ret

MotionSubScript_10f29:
	script_repeat 9
	set_velocities  3, 0, 0
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_0_50
	script_repeat_end
	script_ret

MotionScript_10f3c:
	set_velocities  4, 0, 0
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  0, 0, 0
; 0x10f4b

SECTION "Bank 4@4f5a", ROMX[$4f5a], BANK[$4]

MotionScript_10f5a:
.loop
	script_repeat 3
	set_velocities  3, 0, 0
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_0_50
	script_repeat_end
	jump_abs .asm_10f6f ; unnecessary
.asm_10f6f
	script_repeat 3
	set_velocities  3, 0, 0
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_0_50
	script_repeat_end
	jump_abs .loop

MotionScript_10f84:
.loop
	set_velocities 60, VEL_LEFT_0_75, 0
	set_velocities 60, VEL_RIGHT_0_75, 0
	jump_rel .loop
; 0x10f8c

SECTION "Bank 4@4f9c", ROMX[$4f9c], BANK[$4]

MotionScript_10f9c:
	branch_kirby_pos .move_right, .move_left

.move_right
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_0_75, 0
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_0_25, 0
	set_velocities  6, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_16TH, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_16TH, 0
	set_velocities  6, VEL_RIGHT_1_16TH, VEL_DOWN_0_50
	set_velocities  0, 0, 0

.move_left
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_0_75, 0
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_0_25, 0
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_1_16TH, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_16TH, 0
	set_velocities  6, VEL_LEFT_1_16TH, VEL_DOWN_0_50
	set_velocities  0, 0, 0

MotionScript_PoppyBrosSr:
	set_velocities 45, 0, VEL_DOWN_2_00
.JumpShort:
	script_repeat 2
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_25
	script_repeat_end
	set_velocities  0, 0, 0

.JumpMid:
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_0_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  0, 0, 0

.JumpLong:
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_0_75
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_0_25
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_0_75
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_0_75
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_0_50
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_0_25
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_0_25
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_0_50
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_0_75
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  0, 0, 0

.JumpHigh:
	set_velocities  6, 0, VEL_UP_3_00
	set_velocities  6, 0, VEL_UP_2_00
	set_velocities  6, 0, VEL_UP_1_25
	set_velocities  6, 0, VEL_UP_0_75
	set_velocities  6, 0, VEL_UP_1_8TH
	set_velocities 16, 0, 0
	set_velocities  6, 0, VEL_DOWN_1_8TH
	set_velocities  6, 0, VEL_DOWN_0_75
	set_velocities  6, 0, VEL_DOWN_1_25
	set_velocities  6, 0, VEL_DOWN_2_00
	set_velocities  6, 0, VEL_DOWN_3_00
	set_velocities  0, 0, 0

MotionScript_PoppyBrosSrBombFall:
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_00
	create_object AnimScript_Explosion, MotionScript_10008, ExplosionProperties
	script_end

MotionScript_PoppyBrosSrBombBounce:
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_2_00
	create_object AnimScript_Explosion, MotionScript_10008, ExplosionProperties
	script_end

MotionScript_WhispyWoodsPuff:
	jump_random 50 percent + 1, .down
; up
	position_offset -16, 24
	play_sfx SFX_PUFF
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_50
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_0_75

.down
	position_offset -16, 24
	play_sfx SFX_PUFF
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_0_50
	set_velocities  0, VEL_LEFT_3_00, VEL_DOWN_0_75

MotionScript_WhispyWoodsApple:
	calltable_random %111
	dw .position_1
	dw .position_2
	dw .position_3
	dw .position_4
	dw .position_5
	dw .position_6
	dw .position_7
	dw .position_8
	jump_rel .wait_and_fall

.position_1
	set_position $30, $20
	script_ret
.position_2
	set_position $18, $20
	script_ret
.position_3
	set_position $28, $20
	script_ret
.position_4
	set_position $38, $20
	script_ret
.position_5
	set_position $48, $20
	script_ret
.position_6
	set_position $58, $20
	script_ret
.position_7
	set_position $13, $20
	script_ret
.position_8
	set_position $4d, $20
	script_ret

.wait_and_fall
	set_velocities 25, 0, 0
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  8, 0, VEL_DOWN_4_00
	branch_kirby_pos .roll_left, .roll_right

.roll_left
	set_anim_script AnimScript_WhispyWoodsApple_RollLeft
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_1_25
.loop_1
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_50
	jump_rel .loop_1

.roll_right
	set_anim_script AnimScript_WhispyWoodsApple_RollRight
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_25
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_25
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_1_25
.loop_2
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_75, 0
	set_velocities 10, VEL_RIGHT_0_75, 0
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_50
	jump_rel .loop_2

MotionScript_111c7:
	set_velocities 16, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_object_properties SparklingStarProperties
	jump_abs MotionScript_1032d.loop

MotionScript_111d8:
.loop
	set_velocities 20, 0, 0
	set_velocities  2, 0, VEL_UP_1_00
	set_velocities  2, 0, VEL_DOWN_1_00
	jump_abs .loop

MotionScript_111e4:
.loop
	script_repeat 6
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_repeat 6
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	jump_abs .loop
; 0x11229

SECTION "Bank 4@5233", ROMX[$5233], BANK[$4]

MotionScript_11233:
	position_offset 0, -12
	set_velocities 128, VEL_RIGHT_0_50, 0
	script_end

MotionScript_1123a:
	position_offset 0, -12
	set_velocities 128, VEL_LEFT_0_50, 0
	script_end

MotionScript_11241:
	set_velocities 100, 0, 0
	set_object_properties Data_368e
	set_update_func Func_141b1, AnimScript_211d8
	set_velocities  0, 0, 0

MotionScript_11251:
	set_velocities 10, 0, 0
	set_velocities 40, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_25
	set_velocities  8, 0, VEL_UP_1_8TH
	set_scripts AnimScript_2124a, MotionScript_112b8

MotionScript_11265:
.loop
	create_object AnimScript_2124a, MotionScript_11297, StandardEnemyProperties
	set_velocities  1, 0, 0
	script_delay 250
	script_delay 200
	jump_abs .loop

MotionScript_11276:
.loop
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_25
	jump_abs .loop

MotionScript_11297:
.loop
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_25
	jump_abs .loop

MotionScript_112b8:
.loop
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_16TH
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	jump_abs .loop

MotionScript_112d9:
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_1_8TH, VEL_DOWN_1_25
MotionScript_11300:
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_50
	jump_abs MotionScript_112d9

MotionScript_1130c:
	set_velocities 18, 0, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities 13, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities 10, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities 14, VEL_LEFT_1_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities 16, VEL_LEFT_1_00, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_8TH
MotionScript_11345:
	set_velocities 18, 0, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities 13, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities 10, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities 14, VEL_RIGHT_1_25, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_8TH
	jump_abs MotionScript_1130c

MotionScript_11381:
	set_velocities 10, 0, 0
	script_call MotionScript_113ae
	set_velocities 10, 0, 0
	script_call MotionScript_113bb
	script_call MotionScript_113ae
	set_velocities 10, 0, 0
	script_call MotionScript_113bb
MotionScript_11396:
	set_velocities 10, 0, 0
	script_call MotionScript_113c8
	set_velocities 10, 0, 0
	script_call MotionScript_113d5
	script_call MotionScript_113c8
	set_velocities 10, 0, 0
	script_call MotionScript_113d5
	jump_abs MotionScript_11381

MotionScript_113ae:
	set_velocities 16, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities 16, VEL_LEFT_0_25, VEL_DOWN_0_50
	set_velocities 16, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities 24, VEL_LEFT_0_50, VEL_DOWN_2_00
	script_ret

MotionScript_113bb:
	set_velocities 24, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities 16, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities 16, VEL_LEFT_0_25, VEL_UP_0_50
	set_velocities 16, VEL_LEFT_0_50, VEL_UP_0_25
	script_ret

MotionScript_113c8:
	set_velocities 16, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_0_25, VEL_DOWN_0_50
	set_velocities 16, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities 24, VEL_RIGHT_0_50, VEL_DOWN_2_00
	script_ret

MotionScript_113d5:
	set_velocities 24, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities 16, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities 16, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities 16, VEL_RIGHT_0_50, VEL_UP_0_25
	script_ret

MotionScript_113e2:
	set_velocities 48, 0, 0
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_25, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_3_00, 0
	set_velocities  8, VEL_LEFT_4_00, 0
	set_velocities  8, VEL_LEFT_6_00, 0
	set_velocities  0, VEL_LEFT_6_00, 0

	; unreachable
	script_end

MotionScript_11425:
.loop
	set_velocities 16, VEL_LEFT_1_16TH, VEL_DOWN_0_25
	set_velocities 16, VEL_LEFT_0_25, VEL_DOWN_0_25
	set_velocities 16, VEL_LEFT_0_25, VEL_DOWN_0_25
	set_velocities 16, VEL_LEFT_1_16TH, VEL_DOWN_0_25
	set_velocities 16, 0, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_1_16TH, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_1_16TH, VEL_DOWN_0_25
	jump_abs .loop

MotionScript_11443:
.loop
	set_velocities 16, VEL_LEFT_1_16TH, VEL_UP_0_25
	set_velocities 16, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities 16, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities 16, VEL_LEFT_1_16TH, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_1_16TH, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_1_16TH, VEL_UP_0_25
	jump_abs .loop

MotionScript_11461:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	set_anim_script AnimScript_21363
	set_velocities 80, 0, 0
.loop
	script_call .script_1147c
	script_call .script_1147c
	set_velocities 12, 0, 0
	jump_rel .loop

.script_1147c
	script_exec Func_495c
	jumptable wd3bd
	dw .script_11492
	dw .script_11496
	dw .script_1149a
	dw .script_1149e
	dw .script_114a2
	dw .script_114a6
	dw .script_114aa
	dw .script_114ae

.script_11492
	set_velocities 20, 0, VEL_UP_0_25
	script_ret

.script_11496
	set_velocities 20, VEL_RIGHT_0_25, VEL_UP_0_25
	script_ret

.script_1149a
	set_velocities 20, VEL_RIGHT_0_25, 0
	script_ret

.script_1149e
	set_velocities 20, VEL_RIGHT_0_25, VEL_DOWN_0_25
	script_ret

.script_114a2
	set_velocities 20, 0, VEL_DOWN_0_25
	script_ret

.script_114a6
	set_velocities 20, VEL_LEFT_0_25, VEL_DOWN_0_25
	script_ret

.script_114aa
	set_velocities 20, VEL_LEFT_0_25, 0
	script_ret

.script_114ae
	set_velocities 20, VEL_LEFT_0_25, VEL_UP_0_25
	script_ret

MotionScript_114b2:
.loop
	set_velocities 16, 0, 0
	set_velocities 32, VEL_LEFT_0_25, 0
	set_velocities 32, VEL_LEFT_0_50, 0
	set_velocities 32, VEL_LEFT_0_25, 0
	set_velocities 16, 0, 0
	set_velocities 32, VEL_RIGHT_0_25, 0
	set_velocities 32, VEL_RIGHT_0_50, 0
	set_velocities 32, VEL_RIGHT_0_25, 0
	jump_abs .loop

MotionScript_114cd:
.loop
	set_velocities 12, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities 12, VEL_LEFT_1_00, 0
	set_velocities 28, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities 12, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities 12, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities 12, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities 12, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities 12, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities 12, VEL_LEFT_0_50, 0
	set_velocities 12, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities 12, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities 12, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities 12, VEL_LEFT_1_00, 0
	set_velocities 12, VEL_LEFT_1_00, VEL_UP_0_50
	jump_abs .loop

MotionScript_114fa:
.loop
	set_velocities 32, VEL_LEFT_0_75, 0
	set_velocities  4, 0, VEL_UP_3_00
	set_velocities  4, 0, VEL_UP_1_25
	set_velocities  4, 0, VEL_UP_1_00
	set_velocities  4, 0, VEL_UP_0_75
	set_velocities  4, 0, VEL_DOWN_0_75
	set_velocities  4, 0, VEL_DOWN_1_00
	set_velocities  4, 0, VEL_DOWN_1_25
	set_velocities  4, 0, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities 32, VEL_LEFT_0_75, 0
	set_velocities 32, VEL_RIGHT_0_75, 0
	set_velocities  4, 0, VEL_UP_3_00
	set_velocities  4, 0, VEL_UP_1_25
	set_velocities  4, 0, VEL_UP_1_00
	set_velocities  4, 0, VEL_UP_0_75
	set_velocities  4, 0, VEL_DOWN_0_75
	set_velocities  4, 0, VEL_DOWN_1_00
	set_velocities  4, 0, VEL_DOWN_1_25
	set_velocities  4, 0, VEL_DOWN_3_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities 32, VEL_RIGHT_0_75, 0
	jump_abs .loop

MotionScript_11545:
	set_update_func Func_141b1, AnimScript_21439
	set_velocities  0, 0, 0

MotionScript_1154d:
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities 32, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities 32, VEL_RIGHT_0_75, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	jump_abs MotionScript_102da

MotionScript_11562:
.loop
	set_anim_script AnimScript_20000
	position_offset 0, 16
	set_velocities 50, 0, 0
	set_anim_script AnimScript_Chuckie
	set_object_properties PuffyProperties
	script_call MotionScript_Chuckie_PopOut
	position_offset 0, -16
	set_object_properties Data_3421
	jump_abs .loop

MotionScript_Chuckie:
.loop
	set_anim_script AnimScript_20000
	set_velocities 50, 0, 0
	calltable_random %11
	dw .wait_1
	dw .wait_10
	dw .wait_20
	dw .wait_30

	set_object_properties TwoFaceProperties
	set_anim_script AnimScript_Chuckie
	script_call MotionScript_Chuckie_PopOut
	set_object_properties Data_3421
	jump_abs .loop

.wait_1
	set_velocities  1, 0, 0
	script_ret

.wait_10
	set_velocities 10, 0, 0
	script_ret

.wait_20
	set_velocities 20, 0, 0
	script_ret

.wait_30
	set_velocities 30, 0, 0
	script_ret

MotionScript_Chuckie_PopOut:
	create_object AnimScript_PuffOfSmoke, MotionScript_10008, PuffOfSmokeProperties
	create_object AnimScript_20ae6, MotionScript_107c3, Data_3421
	set_velocities  4, 0, VEL_UP_4_00
	set_velocities  4, 0, VEL_UP_3_00
	set_velocities  4, 0, VEL_UP_2_00
	set_velocities  4, 0, VEL_DOWN_1_25
	set_velocities  4, 0, VEL_DOWN_3_00
	set_velocities  4, 0, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  4, VEL_LEFT_2_00, VEL_DOWN_1_25
	set_velocities  4, 0, VEL_UP_1_25
	set_velocities  4, 0, VEL_UP_3_00
	set_velocities  4, 0, VEL_UP_1_25
	set_velocities  4, 0, VEL_DOWN_2_00
	set_velocities 48, 0, 0
	set_velocities  4, 0, VEL_DOWN_3_00
	set_velocities  4, 0, VEL_DOWN_4_00
	create_object AnimScript_PuffOfSmoke, MotionScript_10008, PuffOfSmokeProperties
	create_object AnimScript_20ae6, MotionScript_107c3, Data_3421
	script_ret
; 0x11624

SECTION "Bank 4@5637", ROMX[$5637], BANK[$4]

MotionScript_11637:
	set_velocities  0, VEL_LEFT_0_75, VEL_UP_0_75
; 0x1163a

SECTION "Bank 4@5643", ROMX[$5643], BANK[$4]

MotionScript_11643:
	set_velocities  0, 0, VEL_DOWN_1_00

MotionScript_11646:
	set_velocities  0, 0, VEL_UP_1_00
; 0x11649

SECTION "Bank 4@5655", ROMX[$5655], BANK[$4]

MotionScript_11655:
	set_velocities  0, 0, VEL_DOWN_1_25
; 0x11658

SECTION "Bank 4@566a", ROMX[$566a], BANK[$4]

MotionScript_1166a:
	set_velocities  0, 0, VEL_DOWN_3_00
; 0x1166d

SECTION "Bank 4@5673", ROMX[$5673], BANK[$4]

MotionScript_11673:
	set_velocities  0, VEL_LEFT_2_00, VEL_DOWN_2_00

MotionScript_11676:
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_2_00

MotionScript_11679:
	set_velocities 128, 0, VEL_UP_0_50
MotionScript_1167c:
	set_velocities 128, 0, VEL_DOWN_0_50
	jump_abs MotionScript_11679

MotionScript_11682:
	set_velocities 128, 0, VEL_UP_0_50
	set_velocities 128, 0, VEL_DOWN_0_50
MotionScript_11688:
	set_velocities 128, 0, VEL_DOWN_0_50
MotionScript_1168b:
	set_velocities 128, 0, VEL_UP_0_50
	jump_abs MotionScript_11682

MotionScript_11691:
.loop
	set_velocities 128, VEL_LEFT_0_50, 0
	set_velocities 128, VEL_RIGHT_0_50, 0
	jump_abs .loop

MotionScript_1169a:
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_75
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_1_00
MotionScript_116a3:
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_2_00
MotionScript_116ac:
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_1_00
MotionScript_116b5:
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_50
MotionScript_116be:
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_75
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_1_00
MotionScript_116c7:
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_2_00
MotionScript_116d0:
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_00
MotionScript_116d9:
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_50
	jump_abs MotionScript_1169a

MotionScript_116e5:
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_2_00, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_25
	set_velocities 13, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_75
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_0_75
	set_velocities 13, VEL_LEFT_4_00, VEL_DOWN_0_25
	set_velocities  0, VEL_LEFT_4_00, 0

MotionScript_1170f:
.loop
	set_velocities  8, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities 16, VEL_LEFT_1_16TH, 0
	set_velocities 16, 0, 0
	jump_abs .loop
; 0x1171e

SECTION "Bank 4@572d", ROMX[$572d], BANK[$4]

MotionScript_1172d:
.loop
	script_repeat 3
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_LEFT_1_8TH, 0
	script_repeat_end
	script_repeat 3
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	script_repeat_end
	jump_abs .loop
; 0x11748

SECTION "Bank 4@5764", ROMX[$5764], BANK[$4]

MotionScript_11764:
.loop
	set_anim_script AnimScript_Coner
	script_repeat 2
	set_velocities  8, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities 16, VEL_LEFT_1_16TH, 0
	set_velocities 16, 0, 0
	script_repeat_end
	set_anim_script AnimScript_216b9
	script_repeat 2
	set_velocities  8, VEL_RIGHT_0_75, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	set_velocities 16, VEL_RIGHT_1_16TH, 0
	set_velocities 16, 0, 0
	script_repeat_end
	jump_rel .loop
; 0x1178e

SECTION "Bank 4@579b", ROMX[$579b], BANK[$4]

MotionScript_1179b:
.loop
	script_repeat 2
	script_call MotionScript_117bf
	script_repeat_end
	script_call MotionScript_1181a
	jump_abs .loop

MotionScript_117a7:
.loop
	script_repeat 2
	script_call MotionScript_117bf
	script_repeat_end
	script_call MotionScript_11849
	jump_abs .loop

MotionScript_117b3:
.loop
	script_repeat 2
	script_call MotionScript_117bf
	script_repeat_end
	script_call MotionScript_11849
	jump_abs .loop

MotionScript_117bf:
	set_anim_script AnimScript_2187f
	set_velocities  8, VEL_LEFT_1_8TH, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_16TH
	set_velocities  8, VEL_LEFT_1_8TH, VEL_DOWN_1_16TH
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_16TH
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_1_16TH
	script_ret

MotionScript_117dd:
.loop
	script_call MotionScript_11878
	script_delay 10
	script_call MotionScript_11878
	script_delay 30
	script_call MotionScript_11878
	script_delay 20
	set_anim_script AnimScript_218a9
	set_velocities 16, VEL_LEFT_1_25, 0
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_1_8TH, 0
	script_call MotionScript_1188a
	script_delay 10
	script_call MotionScript_1188a
	script_delay 30
	script_call MotionScript_1188a
	script_delay 20
	set_anim_script AnimScript_218af
	set_velocities 16, VEL_RIGHT_1_25, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	jump_abs .loop

MotionScript_1181a:
	set_anim_script AnimScript_21891
	set_velocities  8, 0, VEL_UP_3_00
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_25
	set_velocities  8, 0, VEL_UP_0_75
	set_velocities  8, 0, VEL_DOWN_0_75
	set_anim_script AnimScript_2189a
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_00
	script_ret

MotionScript_11849:
	set_anim_script AnimScript_21891
	set_velocities 14, 0, VEL_UP_3_00
	set_velocities 14, 0, VEL_UP_2_00
	set_velocities 14, 0, VEL_UP_1_25
	set_velocities 14, 0, VEL_UP_0_75
	set_velocities 14, 0, VEL_DOWN_0_75
	set_anim_script AnimScript_2189a
	set_velocities 14, 0, VEL_DOWN_1_25
	set_velocities 14, 0, VEL_DOWN_2_00
	set_velocities 14, 0, VEL_DOWN_3_00
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_00
	script_ret

MotionScript_11878:
	set_anim_script AnimScript_2189d
	set_velocities  8, VEL_LEFT_1_8TH, 0
	set_velocities  4, VEL_LEFT_2_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  1, VEL_LEFT_0_25, 0
	script_ret

MotionScript_1188a:
	set_anim_script AnimScript_218a3
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	set_velocities  4, VEL_RIGHT_2_00, 0
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  1, VEL_RIGHT_0_25, 0
	script_ret
; 0x1189c

SECTION "Bank 4@58ad", ROMX[$58ad], BANK[$4]

MotionScript_118ad:
	set_anim_script AnimScript_218c7
	set_velocities 10, 0, 0
	set_velocities 10, 0, VEL_UP_1_00
	set_velocities 10, 0, VEL_UP_0_50
	script_ret

MotionScript_118bc:
	set_anim_script AnimScript_218c7
	set_velocities 10, 0, 0
	set_velocities 16, 0, VEL_UP_2_00
	set_velocities 16, 0, VEL_UP_1_25
	set_velocities 16, 0, VEL_UP_1_00
	set_velocities 16, 0, VEL_UP_0_50
	script_ret

MotionScript_118d1:
.loop
	set_anim_script AnimScript_218b5
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_velocities 160, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_anim_script AnimScript_218be
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities 160, VEL_RIGHT_0_50, 0
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	jump_abs .loop

MotionScript_118f0:
.loop
	set_anim_script AnimScript_218b5
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_velocities 24, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_anim_script AnimScript_218be
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities 24, VEL_RIGHT_0_50, 0
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	jump_abs .loop

MotionScript_1190f:
	set_velocities 40, 0, VEL_DOWN_1_00
	set_anim_script AnimScript_218d6
	set_velocities 16, 0, 0
.loop
	script_call MotionScript_118ad
	jump_abs .loop

MotionScript_11920:
.loop
	set_anim_script AnimScript_218c7
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_0_75
	jump_random 33 percent + 1, .loop
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_25
	jump_random 50 percent + 1, .loop
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_25
	jump_abs .loop

MotionScript_11945:
	set_velocities 64, VEL_LEFT_0_50, 0
	set_velocities 64, VEL_RIGHT_0_50, 0
	set_anim_script AnimScript_218d6
	set_velocities 48, 0, 0
	set_anim_script AnimScript_218dc
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_75
	set_anim_script AnimScript_218d6
	set_velocities 32, 0, 0
.loop
	script_call MotionScript_118bc
	jump_abs .loop

MotionScript_11975:
.loop
	set_velocities 16, 0, VEL_UP_1_8TH
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_25
	set_velocities  8, 0, VEL_UP_0_75
	set_velocities  8, 0, VEL_UP_0_50
	jump_abs .loop

MotionScript_11987:
	set_velocities 16, 0, VEL_UP_3_00
	set_velocities 16, 0, VEL_UP_2_00
	set_velocities 16, 0, VEL_UP_1_00
	set_velocities 16, 0, 0
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities 20, 0, VEL_DOWN_2_00
	set_velocities 20, 0, 0
	set_velocities  0, 0, VEL_UP_3_00
; 0x1199f

SECTION "Bank 4@59a5", ROMX[$59a5], BANK[$4]

MotionScript_Kaboola:
	set_value wBossHPCounter, 8
	set_value wd3c1, $05
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
	set_velocities 32, 0, 0
	set_velocities  8, VEL_LEFT_1_8TH, VEL_DOWN_2_00
	set_abs_pos
	set_velocities 40, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities 16, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities 16, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities 16, VEL_LEFT_0_25, 0
	set_velocities 16, 0, VEL_UP_0_75
	set_velocities 16, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities 16, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities 16, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities 16, 0, 0
.loop
	set_anim_script AnimScript_Kaboola_Shoot
	script_repeat 2
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_75
	set_velocities 10, VEL_RIGHT_0_25, VEL_DOWN_0_50
	set_velocities 10, 0, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_0_25, VEL_DOWN_0_25
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities 10, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities 10, 0, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities 10, 0, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities 10, VEL_LEFT_0_25, VEL_DOWN_0_25
	set_velocities 10, 0, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_25, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_75
	script_repeat_end

	script_exec Func_48f5
	jumptable wd3bd
	dw .ram_up
	dw .ram_up
	dw .ram_up
	dw .ram_up
	dw .ram_straight
	dw .ram_down
	dw .ram_down
	dw .ram_down
	dw .ram_down
	dw .ram_down
	dw .ram_down
	dw .ram_down
	dw .ram_straight
	dw .ram_up
	dw .ram_up
	dw .ram_up

.ram_straight
	set_anim_script AnimScript_Kaboola_RamStart
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_LEFT_1_00, 0
	play_sfx SFX_BOSS_DEFEAT
	set_velocities 24, VEL_LEFT_4_00, 0
	set_velocities 48, VEL_LEFT_0_50, 0
	set_anim_script AnimScript_Kaboola_RamEnd
	set_velocities 48, VEL_RIGHT_2_00, 0
	set_velocities 48, VEL_RIGHT_0_50, 0
	set_velocities 16, 0, 0
	jump_abs .loop

.ram_up
	set_anim_script AnimScript_Kaboola_RamStart
	set_velocities 16, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities 16, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities 16, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities 16, VEL_LEFT_1_00, VEL_UP_0_50
	play_sfx SFX_BOSS_DEFEAT
	set_velocities 24, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities 48, VEL_LEFT_0_50, VEL_UP_0_25
	set_anim_script AnimScript_Kaboola_RamEnd
	set_velocities 48, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities 48, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities 16, 0, 0
	jump_abs .loop

.ram_down
	set_anim_script AnimScript_Kaboola_RamStart
	set_velocities 16, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities 16, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities 16, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities 16, VEL_LEFT_1_00, VEL_DOWN_0_50
	play_sfx SFX_BOSS_DEFEAT
	set_velocities 24, VEL_LEFT_4_00, VEL_DOWN_2_00
	set_velocities 48, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_anim_script AnimScript_Kaboola_RamEnd
	set_velocities 48, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities 48, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities 16, 0, 0
	jump_abs .loop
; 0x11ad3

SECTION "Bank 4@5ad9", ROMX[$5ad9], BANK[$4]

MotionScript_11ad9:
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_1_00

MotionScript_11adc:
	set_velocities  0, VEL_LEFT_2_00, VEL_DOWN_1_00

MotionScript_11adf:
	script_exec_arg ScriptFunc_AddScore, SCORE_2000
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	set_flags hEngineFlags, HURT_PAL_EFFECT, $00
	set_flags wd1a0, %00110000, $00
	set_value wFoodPowerUpCounter + 0, 0
	set_value wFoodPowerUpCounter + 1, 0
	set_value wPowerUpAttack, $00
	script_repeat 16
	set_velocities  1, 0, VEL_UP_1_00
	set_velocities  2, 0, 0
	inc_value wSCY
	dec_value wObjectYCoords + (3 * OBJECT_SLOT_KIRBY) + $1
	dec_value wKirbyScreenY
	script_repeat_end
	inc_value wLevelYSection
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	set_flags hEngineFlags, KABOOLA_BATTLE | ENGINEF_UNK6, $00
	set_velocities  0, 0, 0

MotionScript_11b20:
	set_abs_pos
	set_position $5c, $40
	set_velocities  1, 0, 0
	set_rel_pos
	jump_abs MotionScript_1032d

MotionScript_11b2b:
.loop
	script_exec Func_48f5
	jumptable wd3bd
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .fall
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing
	dw .do_nothing

.do_nothing
	set_velocities 12, 0, 0
	jump_rel .loop

.fall
	set_object_properties Data_366a
	set_update_func Func_141b1, AnimScript_21921
	set_velocities  0, 0, 0

MotionScript_11b63:
	set_velocities 40, VEL_LEFT_0_50, VEL_UP_2_00
	script_call MotionScript_11b75
	set_velocities  0, VEL_LEFT_0_50, VEL_UP_2_00

MotionScript_11b6c:
	set_velocities 40, VEL_LEFT_0_50, VEL_DOWN_2_00
	script_call MotionScript_11b75
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_2_00

MotionScript_11b75:
	set_anim_script AnimScript_21af6
	set_velocities 10, 0, 0
	create_object AnimScript_21220, MotionScript_11676, GlunkPodProperties
	create_object AnimScript_21220, MotionScript_SpitStar_Left, GlunkPodProperties
	create_object AnimScript_21220, MotionScript_11673, GlunkPodProperties
	script_ret

MotionScript_11b93:
.loop
	branch_on_kirby_vertical_alignment .script_11ba0, .script_11ba5
	set_velocities  1, 0, 0
	jump_abs .loop
.script_11ba0
	set_scripts AnimScript_21af6, MotionScript_102f5
.script_11ba5
	set_scripts AnimScript_21aff, MotionScript_102f8

MotionScript_11baa:
.loop
	set_velocities 32, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities 32, VEL_LEFT_1_00, VEL_DOWN_1_25
	set_velocities 32, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities 32, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities 32, VEL_LEFT_1_00, VEL_UP_1_25
	set_velocities 32, VEL_LEFT_0_50, VEL_UP_1_00
	jump_abs .loop

MotionScript_11bbf:
.loop
	set_velocities 32, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities 32, VEL_RIGHT_1_00, VEL_DOWN_1_25
	set_velocities 32, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities 32, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities 32, VEL_RIGHT_1_00, VEL_UP_1_25
	set_velocities 32, VEL_RIGHT_0_50, VEL_UP_1_00
	jump_abs .loop

MotionScript_11bd4:
.loop
	set_velocities 32, VEL_LEFT_2_00, 0
	set_velocities 32, 0, VEL_DOWN_2_00
	set_velocities 32, VEL_LEFT_2_00, 0
	set_velocities 32, 0, VEL_UP_2_00
	jump_abs .loop

MotionScript_11be3:
	script_repeat 10
	set_velocities  2, 0, VEL_DOWN_1_00
	set_velocities  2, 0, VEL_UP_1_00
	script_repeat_end
	set_velocities  0, VEL_LEFT_1_00, 0

MotionScript_11bef:
.loop
	set_velocities 64, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities 64, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities 64, VEL_RIGHT_0_50, VEL_DOWN_1_25
	jump_abs .loop

MotionScript_11bfb:
.loop
	set_velocities 64, VEL_LEFT_0_25, VEL_DOWN_0_75
	set_velocities 64, VEL_LEFT_0_25, VEL_UP_0_75
	set_velocities 64, VEL_LEFT_0_25, VEL_DOWN_0_75
	set_velocities 64, VEL_RIGHT_0_25, VEL_UP_0_75
	set_velocities 64, VEL_RIGHT_0_25, VEL_DOWN_0_75
	set_velocities 64, VEL_RIGHT_0_25, VEL_UP_0_75
	jump_abs .loop

MotionScript_11c10:
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_25
	set_velocities  6, 0, VEL_UP_1_00
	set_velocities  6, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  0, 0, 0

MotionScript_11c25:
.loop
	set_velocities 54, VEL_LEFT_0_50, 0
	set_velocities 54, VEL_RIGHT_0_50, 0
	set_velocities 36, VEL_LEFT_0_50, 0
	set_velocities 36, VEL_RIGHT_0_50, 0
	set_velocities 18, VEL_LEFT_0_50, 0
	set_velocities 18, VEL_RIGHT_0_50, 0
	set_velocities 20, 0, 0
	set_velocities 16, 0, VEL_UP_1_25
	set_velocities 10, 0, VEL_UP_0_75
	set_velocities  6, 0, VEL_UP_0_50
	set_velocities  6, 0, VEL_DOWN_0_50
	set_velocities 10, 0, VEL_DOWN_0_75
	set_velocities 16, 0, VEL_DOWN_1_25
	set_velocities 20, 0, 0
	jump_abs .loop
; 0x11c52

SECTION "Bank 4@5c91", ROMX[$5c91], BANK[$4]

MotionScript_11c91:
	set_velocities  8, 0, VEL_UP_2_00
MotionScript_11c94:
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_8TH
	jump_abs MotionScript_10444

MotionScript_11ca3:
	set_velocities  8, 0, VEL_DOWN_2_00
MotionScript_11ca6:
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_1_8TH
	jump_abs MotionScript_10444
; 0x11cb2

SECTION "Bank 4@5ce3", ROMX[$5ce3], BANK[$4]

MotionScript_MutantScarfy:
.loop
	script_repeat 2
	script_call .ChaseFast
	script_call .ChaseFast
	script_call .ChaseFast
	script_call .ChaseSlow
	script_call .ChaseSlow
	script_call .ChaseSlow
	script_repeat_end
	set_anim_script AnimScript_21bdc
	script_repeat 8
	set_velocities  2, VEL_RIGHT_2_00, 0
	set_velocities  2, VEL_LEFT_2_00, 0
	script_repeat_end
	set_update_func ObjFunc_CountdownToExplosion, 1
	jump_abs .loop

.ChaseFast:
	script_exec Func_495c
	jumptable wd3bd
	dw .script_11d24
	dw .script_11d28
	dw .script_11d2c
	dw .script_11d30
	dw .script_11d34
	dw .script_11d38
	dw .script_11d3c
	dw .script_11d40

.script_11d24
	set_velocities 10, 0, VEL_UP_1_00
	script_ret

.script_11d28
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_75
	script_ret

.script_11d2c
	set_velocities 10, VEL_RIGHT_1_00, 0
	script_ret

.script_11d30
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_75
	script_ret

.script_11d34
	set_velocities 10, 0, VEL_DOWN_1_00
	script_ret

.script_11d38
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_75
	script_ret

.script_11d3c
	set_velocities 10, VEL_LEFT_1_00, 0
	script_ret

.script_11d40
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_75
	script_ret

.ChaseSlow:
	script_exec Func_495c
	jumptable wd3bd
	dw .script_11d5a
	dw .script_11d5e
	dw .script_11d62
	dw .script_11d66
	dw .script_11d6a
	dw .script_11d6e
	dw .script_11d72
	dw .script_11d76

.script_11d5a
	set_velocities 10, 0, VEL_UP_0_75
	script_ret

.script_11d5e
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_50
	script_ret

.script_11d62
	set_velocities 10, VEL_RIGHT_0_75, 0
	script_ret

.script_11d66
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_ret

.script_11d6a
	set_velocities 10, 0, VEL_DOWN_0_75
	script_ret

.script_11d6e
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_0_50
	script_ret

.script_11d72
	set_velocities 10, VEL_LEFT_0_75, 0
	script_ret

.script_11d76
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_0_50
	script_ret

MotionScript_11d7a:
	branch_kirby_pos .move_right, .move_left

.move_right
	script_repeat 2
	set_velocities  2, VEL_RIGHT_4_00, 0
	set_velocities  2, VEL_LEFT_2_00, 0
	script_repeat_end
	script_repeat 2
	set_velocities  2, VEL_RIGHT_4_00, 0
	set_velocities  2, VEL_LEFT_1_25, 0
	script_repeat_end
	script_repeat 2
	set_velocities  2, VEL_RIGHT_3_00, 0
	set_velocities  2, VEL_LEFT_1_00, 0
	script_repeat_end
	script_end

.move_left
	script_repeat 2
	set_velocities  2, VEL_LEFT_4_00, 0
	set_velocities  2, VEL_RIGHT_2_00, 0
	script_repeat_end
	script_repeat 2
	set_velocities  2, VEL_LEFT_4_00, 0
	set_velocities  2, VEL_RIGHT_1_25, 0
	script_repeat_end
	script_repeat 2
	set_velocities  2, VEL_LEFT_3_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	script_repeat_end
	script_end

MotionScript_11db9:
	script_repeat 2
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_8TH
	script_repeat_end
	script_ret

MotionScript_11dd5:
	set_update_func Func_140c2, AnimScript_21dc9
	script_call MotionScript_11db9
	create_object AnimScript_21ded, MotionScript_10008, Data_3685
	set_scripts AnimScript_21e02, MotionScript_10008

MotionScript_11de9:
	set_update_func Func_140c2, AnimScript_21dc9
	script_call MotionScript_11db9
	create_object AnimScript_21ded, MotionScript_10008, Data_3685
	set_scripts AnimScript_21e14, MotionScript_10008

MotionScript_11dfd:
	set_update_func Func_140c2, AnimScript_21ddb
	script_call MotionScript_11db9
	create_object AnimScript_21ded, MotionScript_10008, Data_3685
	set_scripts AnimScript_21e26, MotionScript_10008

MotionScript_11e11:
	set_update_func Func_140c2, AnimScript_21ddb
	script_call MotionScript_11db9
	create_object AnimScript_21ded, MotionScript_10008, Data_3685
	set_scripts AnimScript_21e38, MotionScript_10008

MotionScript_11e25:
	branch_kirby_pos .script_11e2c, .script_11e43

.script_11e2c
	position_offset 0, -16
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_object_properties Data_3685
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_velocities 16, VEL_RIGHT_0_25, VEL_UP_1_25
	set_velocities  0, VEL_RIGHT_0_25, VEL_UP_2_00

.script_11e43
	position_offset 0, -16
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_25
	set_object_properties Data_3685
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_25
	set_velocities 16, VEL_LEFT_0_25, VEL_UP_1_25
	set_velocities  0, VEL_LEFT_0_25, VEL_UP_2_00

MotionScript_11e5a:
.loop
	set_velocities 16, 0, 0
	set_velocities 16, 0, VEL_DOWN_0_25
	set_velocities 16, 0, VEL_DOWN_0_50
	set_velocities 16, 0, VEL_DOWN_0_75
	script_repeat 3
	create_object AnimScript_21c25, MotionScript_1166a, GlunkPodProperties
	set_velocities  4, 0, VEL_UP_3_00
	set_velocities  4, 0, VEL_DOWN_2_00
	set_velocities  4, 0, VEL_UP_1_00
	set_velocities  4, 0, 0
	script_repeat_end
	jump_abs .loop

MotionScript_11e7f:
	set_velocities 40, VEL_LEFT_0_50, VEL_DOWN_1_25
MotionScript_11e82:
	set_velocities 30, VEL_RIGHT_0_75, 0
	set_velocities 40, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities 40, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities 30, VEL_RIGHT_0_75, 0
	set_velocities 40, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities 40, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities 30, VEL_LEFT_0_75, 0
	set_velocities 40, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities 40, VEL_RIGHT_0_75, VEL_DOWN_1_25
	set_velocities 30, VEL_LEFT_0_75, 0
	set_velocities 40, VEL_RIGHT_0_50, VEL_UP_1_25
	jump_abs MotionScript_11e7f

MotionScript_11ea6:
.loop
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	jump_abs .loop

MotionScript_11ed9:
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_75
MotionScript_11ef1:
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	jump_abs MotionScript_11ed9

MotionScript_11f0c:
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_32TH, VEL_DOWN_1_32TH
	set_velocities  6, VEL_RIGHT_1_32TH, VEL_DOWN_1_32TH
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	script_end

MotionScript_11f2b:
	set_velocities 18, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities 18, VEL_LEFT_3_00, VEL_UP_0_25
	set_velocities 18, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities 18, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_32TH, VEL_DOWN_1_32TH
	set_velocities  8, VEL_RIGHT_1_32TH, VEL_DOWN_1_32TH
	set_velocities 18, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities 18, VEL_RIGHT_2_00, VEL_DOWN_0_25
	set_velocities 18, VEL_RIGHT_3_00, VEL_UP_0_25
	set_velocities 18, VEL_RIGHT_1_00, VEL_UP_0_50
	script_end

MotionScript_11f4a:
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_32TH, VEL_DOWN_1_32TH
	set_velocities  6, VEL_LEFT_1_32TH, VEL_DOWN_1_32TH
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	script_end

MotionScript_Waterfall:
	create_object AnimScript_WaterfallParticles, MotionScript_10008, Data_3421
.loop
	set_velocities  1, 0, 0
	script_delay 10
	create_object AnimScript_WaterfallCurrent, MotionScript_WaterfallCurrent, Data_3421
	jump_abs .loop

MotionScript_WaterfallCurrent:
	set_velocities 48, 0, VEL_DOWN_2_00
	script_end

MotionScript_FallingStar:
	jumptable_random 3
	dw .script_11f8d
	dw .script_11f90
	dw .script_11f93
	dw .script_11f96

.script_11f8d
	set_velocities  0, VEL_LEFT_0_25, VEL_DOWN_1_25

.script_11f90
	set_velocities  0, VEL_LEFT_1_8TH, VEL_DOWN_1_25

.script_11f93
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_1_25

.script_11f96
	set_velocities  0, VEL_LEFT_1_16TH, VEL_DOWN_1_25

MotionScript_11f99:
	script_exec Func_4ad6
	jump_if_flags hKirbyFlags3, KIRBY3F_UNK6, .script_11fac
	jumptable_random 3
	dw MotionScript_11fba
	dw MotionScript_11fbd
	dw MotionScript_11fc0
	dw MotionScript_11fc3

.script_11fac
	script_end

MotionScript_11fad:
	script_exec Func_4ad6
	jump_if_flags hKirbyFlags3, KIRBY3F_UNK6, .script_11fb9
	jump_abs MotionScript_11655

.script_11fb9
	script_end

MotionScript_11fba:
	set_velocities  0, VEL_RIGHT_0_25, VEL_DOWN_1_25

MotionScript_11fbd:
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_1_25

MotionScript_11fc0:
	; bug, since duration is 1, this velocity
	; will be active for 1 frame and then
	; fallthrough to MotionScript_11fc3
	set_velocities  1, VEL_LEFT_0_25, VEL_DOWN_1_25

MotionScript_11fc3:
	set_velocities  0, VEL_LEFT_1_8TH, VEL_DOWN_1_25

MotionScript_TitleScreenWarpStarKirby:
	set_velocities 40, 0, 0
	script_repeat 2
	set_velocities  8, VEL_RIGHT_4_00, VEL_UP_1_32TH
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_16TH
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_16TH
	set_velocities  8, VEL_LEFT_4_00, VEL_UP_1_32TH
	position_offset 0, 14
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_32TH
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_16TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_1_16TH
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_32TH
	script_repeat_end
	set_velocities 30, VEL_RIGHT_3_00, VEL_UP_1_8TH
	script_end

MotionScript_TitleScreenKirby:
	script_call MotionSubScript_1208c
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_75
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_75
	set_velocities 32, 0, 0
	script_call MotionSubScript_1208c
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities 10, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 64, VEL_RIGHT_1_8TH, 0
	set_velocities 48, VEL_RIGHT_1_8TH, 0
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities 16, 0, 0
	script_repeat 2
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_00
	script_repeat_end
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_25
.loop
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_25
	jump_rel .loop

MotionSubScript_1208c:
	script_repeat 2
	set_velocities 18, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 11, VEL_RIGHT_0_25, 0
	set_velocities 18, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities 11, VEL_RIGHT_0_25, 0
	script_repeat_end
	script_ret

MotionScript_SoundTestNote:
.loop
	set_velocities 16, 0, 0
	set_velocities 16, 0, VEL_UP_1_16TH
	set_velocities 16, 0, VEL_UP_1_8TH
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_8TH
	set_velocities 16, 0, VEL_UP_1_16TH
	set_velocities 16, 0, 0
	set_velocities 16, 0, VEL_DOWN_1_16TH
	set_velocities 16, 0, VEL_DOWN_1_8TH
	set_velocities 16, 0, VEL_DOWN_0_25
	set_velocities 16, 0, VEL_DOWN_1_8TH
	set_velocities 16, 0, VEL_DOWN_1_16TH
	set_velocities 16, 0, 0
	jump_abs .loop
; 0x120c6

SECTION "Bank 4@6491", ROMX[$6491], BANK[$4]

MotionScript_12491:
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	script_repeat 10
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	script_repeat_end
	set_velocities  0, 0, 0
; 0x124a0

SECTION "Bank 4@64b9", ROMX[$64b9], BANK[$4]

MotionScript_124b9:
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_UP_0_50
; 0x124bf

SECTION "Bank 4@68fe", ROMX[$68fe], BANK[$4]

MotionScript_128fe:
	set_value wBossHPCounter, 3
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
	set_anim_script AnimScript_22863
	set_velocities 100, 0, 0
	set_velocities 20, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, 0
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_object_properties Properties_35e0
	set_anim_script AnimScript_22846
.loop
	script_call .script_12a71
	script_call .script_129f4
	script_call .script_129c9
	script_call .script_12939
	jump_rel .loop

.script_12939
	set_anim_script AnimScript_22846
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_0_25
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  3, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_75
	set_velocities  3, VEL_RIGHT_0_25, VEL_DOWN_0_75
	set_velocities  3, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_1_8TH, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_0_25, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_25
	set_velocities  6, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_25, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_1_8TH, VEL_DOWN_1_00
	set_velocities  3, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  3, VEL_RIGHT_0_25, VEL_DOWN_0_75
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_75
	set_velocities  3, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_0_25
	set_velocities  3, VEL_RIGHT_1_25, VEL_UP_0_25
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  3, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities  3, VEL_RIGHT_0_25, VEL_UP_0_75
	set_velocities  3, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_1_8TH, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_0_25, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_1_25
	set_velocities  6, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_25, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_1_8TH, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_0_25, VEL_UP_0_75
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities  3, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  3, VEL_RIGHT_1_25, VEL_UP_0_25
	script_ret

.script_129c9
	set_anim_script AnimScript_22854
	set_velocities 40, 0, 0
	set_anim_script AnimScript_22846
	jump_abs .spawn_waddle_doo ; unnecessary jump
.spawn_waddle_doo
	play_sfx SFX_30
	branch_kirby_pos .script_129e4, .script_129ec
.script_129e4
	create_object AnimScript_229c9, MotionScript_102d4, StandardEnemyGravityProperties
	script_ret
.script_129ec
	create_object AnimScript_229fe, MotionScript_102d7, StandardEnemyGravityProperties
	script_ret

.script_129f4
	set_anim_script AnimScript_22854
	set_velocities  3, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_25
	set_velocities 12, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities 12, VEL_LEFT_1_25, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  6, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  9, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_25
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_velocities  6, VEL_RIGHT_1_25, VEL_DOWN_1_00
	set_velocities 24, VEL_RIGHT_1_25, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_25
	set_velocities  6, VEL_RIGHT_1_25, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_25
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  6, VEL_RIGHT_0_25, VEL_UP_2_00
	set_velocities  6, 0, VEL_UP_2_00
	set_velocities  6, 0, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities  7, VEL_LEFT_0_25, 0
	set_abs_pos
	set_position $90, $3a
	set_rel_pos
	script_ret

.script_12a71
	create_object AnimScript_Bullet, MotionScript_12b18, GlunkPodProperties
	set_velocities  3, 0, 0
	create_object AnimScript_Bullet, MotionScript_12ad9, GlunkPodProperties
	set_velocities  3, 0, 0
	create_object AnimScript_Bullet, MotionScript_12aee, GlunkPodProperties
	set_velocities  3, 0, 0
	create_object AnimScript_Bullet, MotionScript_12b03, GlunkPodProperties
	set_velocities  3, 0, 0
	script_ret

MotionScript_12a9a:
	script_exec_arg ScriptFunc_AddScore, SCORE_750
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	create_object AnimScript_WarpStar, MotionScript_12ab9, WarpStarFloatingProperties
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities 16, VEL_RIGHT_1_25, VEL_UP_2_00
	set_velocities 16, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  0, VEL_RIGHT_3_00, VEL_UP_2_00

MotionScript_12ab9:
	set_abs_pos
	set_position 88, 104
	create_object AnimScript_209f6, MotionScript_10008, Data_3425
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_8TH
	set_velocities  8, 0, VEL_DOWN_1_8TH
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_1_00
	jump_abs MotionScript_WarpStar

MotionScript_12ad9:
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_4_00
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_6_00

MotionScript_12aee:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_4_00
	set_velocities  0, VEL_LEFT_1_25, VEL_DOWN_6_00

MotionScript_12b03:
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_4_00
	set_velocities  0, VEL_LEFT_2_00, VEL_DOWN_6_00

MotionScript_12b18:
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_4_00
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_6_00

MotionScript_12b2d:
	set_value wBossHPCounter, 6
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
	script_exec Func_48a3
	set_update_func Func_14172, Data_1c1e4
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_1_16TH, VEL_UP_1_00
	set_velocities  8, 0, VEL_DOWN_1_8TH
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities  1, 0, VEL_DOWN_1_8TH
	set_velocities 10, 0, VEL_UP_1_8TH
	set_velocities 127, 0, VEL_UP_0_25
	set_velocities 24, 0, VEL_UP_0_75
	set_velocities  8, 0, VEL_UP_0_25
	set_velocities  8, 0, 0
	set_object_properties Properties_35e9
	set_value wKirbySideOfScreen, $00
	script_call MotionScript_12d57

.asm_12b7a
	jump_random 31 percent - 1, .script_12bee
	jump_abs .script_12b8f

.asm_12b81
	jump_random 31 percent - 1, .script_12b8f
	jump_abs .script_12bcc

.script_12b88
	jump_random 31 percent - 1, .script_12bcc
	jump_abs .script_12bee

.script_12b8f
	script_call MotionScript_12dcf
	jump_if_equal wKirbySideOfScreen, $ff, .script_12bb2
	set_value wKirbySideOfScreen, $ff
	script_exec Func_495c
	jumptable wd3bd
	dw .script_12cc1
	dw .script_12cc1
	dw .script_12cc1
	dw .script_12cc1
	dw .script_12cf9
	dw .script_12cf9
	dw .script_12cc1
	dw .script_12cc1

.script_12bb2
	set_value wKirbySideOfScreen, $00
	script_exec Func_495c
	jumptable wd3bd
	dw .script_12cdd
	dw .script_12cdd
	dw .script_12cdd
	dw .script_12d28
	dw .script_12d28
	dw .script_12cdd
	dw .script_12cdd
	dw .script_12cdd

.script_12bcc
	script_call MotionScript_12dcf
	play_sfx SFX_30
	branch_kirby_pos .script_12bda, .script_12be4
.script_12bda
	create_object AnimScript_229c9, MotionScript_102d4, StandardEnemyGravityProperties
	jump_abs .asm_12b7a
.script_12be4
	create_object AnimScript_229fe, MotionScript_102d7, StandardEnemyGravityProperties
	jump_abs .asm_12b7a

.script_12bee
	script_call MotionScript_12dcf
	set_anim_script AnimScript_22949
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d6f, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12d9f, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d75, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12da5, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d7b, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12dab, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d81, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12db1, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d87, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12db7, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d8d, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12dbd, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d93, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12dc3, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d99, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12dc9, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d6f, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12d9f, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_209c0, MotionScript_12d75, GlunkPodProperties
	create_object AnimScript_209c0, MotionScript_12da5, GlunkPodProperties
	set_velocities  4, 0, 0
	script_repeat_end
	jump_abs .asm_12b81
.script_12cc1
	set_anim_script AnimScript_22977
	script_repeat 3
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_25
	script_repeat_end
	set_anim_script AnimScript_228f9
	jump_abs .script_12b88
.script_12cdd
	set_anim_script AnimScript_2297f
	script_repeat 3
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_25
	script_repeat_end
	set_anim_script AnimScript_228f9
	jump_abs .script_12b88
.script_12cf9
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_DOWN_2_00
	play_sfx SFX_BOSS_DEFEAT
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_anim_script AnimScript_22977
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_3_00, VEL_DOWN_0_25
	set_velocities  6, VEL_LEFT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_00
	set_anim_script AnimScript_228f9
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_3_00
	jump_abs .script_12b88
.script_12d28
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_DOWN_2_00
	play_sfx SFX_BOSS_DEFEAT
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_3_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_anim_script AnimScript_2297f
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_3_00, VEL_DOWN_0_25
	set_velocities  6, VEL_RIGHT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_00
	set_anim_script AnimScript_228f9
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_3_00
	jump_abs .script_12b88

MotionScript_12d57:
	set_anim_script AnimScript_228f9
	set_velocities  9, 0, VEL_UP_1_8TH
	set_velocities  9, 0, VEL_UP_0_25
	set_velocities  9, 0, VEL_UP_1_8TH
	set_velocities  9, 0, VEL_DOWN_1_8TH
	set_velocities  9, 0, VEL_DOWN_0_25
	set_velocities  9, 0, VEL_DOWN_1_8TH
	script_ret

MotionScript_12d6f:
	position_offset 0, -28
	jump_abs MotionScript_103bf

MotionScript_12d75:
	position_offset 8, -24
	jump_abs MotionScript_103c3

MotionScript_12d7b:
	position_offset 16, -16
	jump_abs MotionScript_103c7

MotionScript_12d81:
	position_offset 24, -8
	jump_abs MotionScript_103cb

MotionScript_12d87:
	position_offset 28, 0
	jump_abs MotionScript_103cf

MotionScript_12d8d:
	position_offset 24, 8
	jump_abs MotionScript_103d3

MotionScript_12d93:
	position_offset 16, 16
	jump_abs MotionScript_103d7

MotionScript_12d99:
	position_offset 8, 24
	jump_abs MotionScript_103db

MotionScript_12d9f:
	position_offset 0, 28
	jump_abs MotionScript_103df

MotionScript_12da5:
	position_offset -8, 24
	jump_abs MotionScript_103e3

MotionScript_12dab:
	position_offset -16, 16
	jump_abs MotionScript_103e7

MotionScript_12db1:
	position_offset -24, 8
	jump_abs MotionScript_103eb

MotionScript_12db7:
	position_offset -28, 0
	jump_abs MotionScript_103ef

MotionScript_12dbd:
	position_offset -24, -8
	jump_abs MotionScript_103f3

MotionScript_12dc3:
	position_offset -16, -16
	jump_abs MotionScript_103f7

MotionScript_12dc9:
	position_offset -8, -24
	jump_abs MotionScript_103fb

MotionScript_12dcf:
	set_anim_script AnimScript_22960
	jumptable_random 1
	dw .script_12dda
	dw .script_12df0

.script_12dda
	script_repeat 2
	set_velocities  9, 0, VEL_UP_1_8TH
	set_velocities  9, 0, VEL_UP_0_25
	set_velocities  9, 0, VEL_UP_1_8TH
	set_velocities  9, 0, VEL_DOWN_1_8TH
	set_velocities  9, 0, VEL_DOWN_0_25
	set_velocities  9, 0, VEL_DOWN_1_8TH
	script_repeat_end
	script_ret

.script_12df0
	set_velocities  9, 0, VEL_UP_1_8TH
	set_velocities  9, 0, VEL_UP_0_25
	set_velocities  9, 0, VEL_DOWN_0_25
	set_velocities  9, 0, VEL_DOWN_1_8TH
	script_ret
; 0x12dfd

SECTION "Bank 4@6e09", ROMX[$6e09], BANK[$4]

MotionScript_12e09:
	set_value wBossHPCounter, 6
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
	set_value wKirbySideOfScreen, $00
	set_value wd3cf, $00
	set_value wd3d0, $00
	set_value wd3d1, $00

.right_side
	jumptable_random %11
	dw .script_12e32
	dw .script_12e49
	dw .script_12e60
	dw .script_12e77

.script_12e32
	jump_if_equal wKirbySideOfScreen, $ff, .right_side
	set_position $a1, $18
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_12ff1
	set_value wKirbySideOfScreen, $00
	jump_abs .left_side

.script_12e49
	jump_if_equal wd3cf, $ff, .right_side
	set_position $a1, $38
	set_value wd3cf, $ff
	script_call MotionScript_12ff1
	set_value wd3cf, $00
	jump_abs .left_side

.script_12e60
	jump_if_equal wd3d0, $ff, .right_side
	set_position $a1, $58
	set_value wd3d0, $ff
	script_call MotionScript_12ff1
	set_value wd3d0, $00
	jump_abs .left_side

.script_12e77
	jump_if_equal wd3d1, $ff, .right_side
	set_position $a1, $78
	set_value wd3d1, $ff
	script_call MotionScript_12ff1
	set_value wd3d1, $00
	jump_abs .left_side ; useless jump

.left_side
	jumptable_random %11
	dw .script_12e98
	dw .script_12eaf
	dw .script_12ec6
	dw .script_12edd

.script_12e98
	jump_if_equal wKirbySideOfScreen, $ff, .left_side
	set_position $10, $18
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_13017
	set_value wKirbySideOfScreen, $00
	jump_abs .right_side

.script_12eaf
	jump_if_equal wd3cf, $ff, .left_side
	set_position $10, $38
	set_value wd3cf, $ff
	script_call MotionScript_13017
	set_value wd3cf, $00
	jump_abs .right_side

.script_12ec6
	jump_if_equal wd3d0, $ff, .left_side
	set_position $10, $58
	set_value wd3d0, $ff
	script_call MotionScript_13017
	set_value wd3d0, $00
	jump_abs .right_side

.script_12edd
	jump_if_equal wd3d1, $ff, .left_side
	set_position $10, $78
	set_value wd3d1, $ff
	script_call MotionScript_13017
	set_value wd3d1, $00
	jump_abs .right_side

MotionScript_12ef4:
	jumptable_random 3
	dw .script_12efe
	dw .script_12f15
	dw .script_12f2c
	dw .script_12f43

.script_12efe
	jump_if_equal wKirbySideOfScreen, $ff, MotionScript_12ef4
	set_position 161, 24
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_12fec
	set_value wKirbySideOfScreen, $00
	jump_abs MotionScript_12f5a
.script_12f15
	jump_if_equal wd3cf, $ff, MotionScript_12ef4
	set_position 161, 56
	set_value wd3cf, $ff
	script_call MotionScript_12fec
	set_value wd3cf, $00
	jump_abs MotionScript_12f5a
.script_12f2c
	jump_if_equal wd3d0, $ff, MotionScript_12ef4
	set_position 161, 88
	set_value wd3d0, $ff
	script_call MotionScript_12fec
	set_value wd3d0, $00
	jump_abs MotionScript_12f5a
.script_12f43
	jump_if_equal wd3d1, $ff, MotionScript_12ef4
	set_position 161, 120
	set_value wd3d1, $ff
	script_call MotionScript_12fec
	set_value wd3d1, $00
	jump_abs MotionScript_12f5a

MotionScript_12f5a:
	jumptable_random 3
	dw .script_12f64
	dw .script_12f7b
	dw .script_12f92
	dw .script_12fa9

.script_12f64
	jump_if_equal wKirbySideOfScreen, $ff, MotionScript_12f5a
	set_position 16, 24
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_13012
	set_value wKirbySideOfScreen, $00
	jump_abs MotionScript_12ef4
.script_12f7b
	jump_if_equal wd3cf, $ff, MotionScript_12f5a
	set_position 16, 56
	set_value wd3cf, $ff
	script_call MotionScript_13012
	set_value wd3cf, $00
	jump_abs MotionScript_12ef4
.script_12f92
	jump_if_equal wd3d0, $ff, MotionScript_12f5a
	set_position 16, 88
	set_value wd3d0, $ff
	script_call MotionScript_13012
	set_value wd3d0, $00
	jump_abs MotionScript_12ef4
.script_12fa9
	jump_if_equal wd3d1, $ff, MotionScript_12f5a
	set_position 16, 120
	set_value wd3d1, $ff
	script_call MotionScript_13012
	set_value wd3d1, $00
	jump_abs MotionScript_12ef4

MotionScript_12fc0:
	set_velocities  4, VEL_LEFT_2_00, 0
	set_velocities  4, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_0_75, 0
	set_velocities  4, VEL_LEFT_0_25, 0
	set_velocities  4, VEL_LEFT_1_16TH, 0
	set_velocities 15, 0, 0
	set_velocities 176, VEL_LEFT_0_75, 0
	script_end

MotionScript_12fd6:
	set_velocities  4, VEL_RIGHT_2_00, 0
	set_velocities  4, VEL_RIGHT_1_00, 0
	set_velocities  4, VEL_RIGHT_0_75, 0
	set_velocities  4, VEL_RIGHT_0_25, 0
	set_velocities  4, VEL_RIGHT_1_16TH, 0
	set_velocities 15, 0, 0
	set_velocities 176, VEL_RIGHT_0_75, 0
	script_end

MotionScript_12fec:
	set_scripts AnimScript_22ac9, MotionScript_12ff6

MotionScript_12ff1:
	set_anim_script AnimScript_22a36
MotionScript_12ff6:
	script_exec Func_4ba6
	set_velocities 35, 0, 0
	set_velocities 80, VEL_LEFT_0_75, 0
	set_velocities 88, VEL_LEFT_0_75, 0
	set_velocities  6, VEL_LEFT_2_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_0_25, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	script_ret

MotionScript_13012:
	set_scripts AnimScript_22a98, MotionScript_1301c

MotionScript_13017:
	set_anim_script AnimScript_22a67
MotionScript_1301c:
	script_exec Func_4ba6
	set_velocities 35, 0, 0
	set_velocities 80, VEL_RIGHT_0_75, 0
	set_velocities 88, VEL_RIGHT_0_75, 0
	set_velocities  6, VEL_RIGHT_2_00, 0
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_0_25, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	script_ret

MotionScript_13038:
	set_value wBossHPCounter, 3
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
.loop
	; randomly selects which door to pop out from
	jumptable_random %11
	dw .upper_door
	dw .mid_upper_door
	dw .mid_bottom_door
	dw .bottom_door

.upper_door
	set_position $a3, $18
	jump_abs .attack_short
.mid_upper_door
	set_position $a3, $38
	jump_abs .attack_mid
.mid_bottom_door
	set_position $a3, $58
	jump_abs .attack_far
.bottom_door
	set_position $a3, $78
	jump_abs .attack_far ; useless jump

.attack_far
	script_exec Func_4ba6
	set_anim_script AnimScript_22b01
	set_velocities 80, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_0_50, 0
	set_velocities 28, 0, 0
	set_velocities 80, VEL_RIGHT_1_00, 0
	set_velocities  8, 0, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	jump_abs .loop

.attack_mid
	script_exec Func_4ba6
	set_anim_script AnimScript_22b15
	set_velocities 80, VEL_LEFT_0_75, 0
	set_velocities  4, VEL_LEFT_0_50, 0
	set_velocities 28, 0, 0
	set_velocities 80, VEL_RIGHT_0_75, 0
	set_velocities  8, 0, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	jump_abs .loop

.attack_short
	script_exec Func_4ba6
	set_anim_script AnimScript_22b1f
	set_velocities 40, VEL_LEFT_0_75, 0
	set_velocities 40, VEL_LEFT_0_50, 0
	set_velocities  4, VEL_LEFT_0_50, 0
	set_velocities 28, 0, 0
	set_velocities 40, VEL_RIGHT_0_50, 0
	set_velocities 40, VEL_RIGHT_0_75, 0
	set_velocities  8, 0, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	jump_abs .loop

MotionScript_130cf:
	set_velocities 80, VEL_LEFT_1_00, 0
	set_velocities  8, 0, 0
	set_velocities  0, VEL_LEFT_2_00, 0

MotionScript_130d8:
	set_velocities 80, VEL_LEFT_0_75, 0
	set_velocities  8, 0, 0
	set_velocities  0, VEL_LEFT_2_00, 0

MotionScript_130e1:
	set_velocities 40, VEL_LEFT_0_75, 0
	set_velocities 40, VEL_LEFT_0_50, 0
	set_velocities  8, 0, 0
	set_velocities  0, VEL_LEFT_2_00, 0

MotionScript_130ed:
	set_object_properties Properties_360d
	set_anim_script AnimScript_22bb6
	jump_random 50 percent + 1, .script_13100
	set_velocities 60, 0, 0
	jump_rel .script_13103
.script_13100
	set_velocities 80, 0, 0
.script_13103
	set_object_properties Properties_3604
	script_ret

MotionScript_13109:
	set_value wBossHPCounter, 10
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_10008, Data_3421
	set_value wd3c0, $01
	script_exec ScriptFunc_LockScrolling
	script_exec Func_48a3
	script_exec Func_48af
	set_value wd3cd, $01
	script_exec Func_4aad
	create_object AnimScript_22f60, MotionScript_1341e, Properties_3616
	script_call MotionScript_130ed
.script_13136
	jumptable_random 7
	dw .script_13148
	dw .script_131c6
	dw .script_13272
	dw .script_132d5
	dw .script_132d5
	dw .script_13136
	dw .script_13136
	dw .script_13136

.script_13148
	branch_kirby_pos .script_1314f, .script_13157
.script_1314f
	set_update_func Func_14276, AnimScript_22c0b
	jump_abs .script_13344
.script_13157
	set_update_func Func_14276, AnimScript_22c17
	jump_abs .script_13363

.script_1315f
	set_value wd3cd, $00
	set_object_properties Properties_360d
	create_object AnimScript_20ae6, MotionScript_107c3, Data_3425
	set_velocities 16, VEL_LEFT_1_00, 0
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_velocities 48, 0, 0
	jump_rel .script_13199

.script_1317d:
	set_value wd3cd, $00
	set_object_properties Properties_360d
	create_object AnimScript_20ae6, MotionScript_107c3, Data_3425
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities 48, 0, 0
.script_13199
	set_value wd3cd, $01
	set_object_properties Properties_3604
	script_call MotionScript_130ed
	script_exec Func_49d5
	jumptable wd3bd
	dw .script_131b4
	dw .script_13227
	dw .script_131d6

	script_call MotionScript_130ed
.script_131b4
	jumptable_random 7
	dw .script_13148
	dw .script_131c6
	dw .script_13272
	dw .script_132d5
	dw .script_131c6
	dw .script_13272
	dw .script_132d5
	dw .script_132d5

.script_131c6
	script_exec Func_49ac
	jumptable wd3bd
	dw .script_131d6
	dw .script_131d6
	dw .script_13202
	dw .script_13227
	dw .script_13227

.script_131d6
	set_anim_script AnimScript_22c23
	set_velocities 32, 0, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_4_00
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_3_00
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_50
	branch_kirby_pos .script_131f1, .script_13216
.script_131f1
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_3_00
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_4_00
	set_velocities 32, 0, 0
	jump_rel .script_13251
.script_13202
	set_anim_script AnimScript_22c23
.script_13207
	set_velocities 32, 0, 0
.script_1320a
	set_velocities 10, 0, VEL_UP_4_00
	set_velocities 10, 0, VEL_UP_3_00
	set_velocities 10, 0, VEL_UP_1_00
	set_velocities 10, 0, VEL_UP_0_50
.script_13216
	set_velocities 10, 0, VEL_DOWN_0_50
	set_velocities 10, 0, VEL_DOWN_1_00
	set_velocities 10, 0, VEL_DOWN_3_00
	set_velocities 10, 0, VEL_DOWN_4_00
	set_velocities 32, 0, 0
	jump_rel .script_13251
.script_13227
	set_anim_script AnimScript_22c23
	set_velocities 32, 0, 0
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_4_00
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_3_00
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_50
	branch_kirby_pos .script_13216, .script_13242
.script_13242
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_3_00
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_4_00
	set_velocities 32, 0, 0
.script_13251
	script_exec Func_49d5
	jumptable wd3bd
	dw .script_13260
	dw .script_13227
	dw .script_131d6

	script_call MotionScript_130ed
.script_13260
	jumptable_random 7
	dw .script_131c6
	dw .script_13148
	dw .script_13272
	dw .script_132d5
	dw .script_13148
	dw .script_13272
	dw .script_132d5
	dw .script_132d5

.script_13272
	jump_if_equal wBossHP, 1, .script_132c3
	script_exec Func_48a8
	branch_kirby_pos .script_13282, .script_1328a
.script_13282
	set_update_func Func_141bb, AnimScript_22c3e
	jump_abs .script_13344
.script_1328a
	set_update_func Func_141bb, AnimScript_22ca9
	jump_abs .script_13363

.script_13292
	set_object_properties Properties_360d
.script_13297
	create_object AnimScript_208f1, MotionScript_13438, Data_3421
	script_repeat 3
	set_velocities  2, VEL_RIGHT_1_00, 0
	set_velocities  2, VEL_LEFT_1_00, 0
	script_repeat_end
	jump_rel .script_13297

.script_132a9
	set_object_properties Properties_360d
.loop_1
	create_object AnimScript_208f1, MotionScript_1344a, Data_3421
	script_repeat 3
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	script_repeat_end
	jump_rel .loop_1

.script_132c0
	script_call MotionScript_130ed

.script_132c3
	jumptable_random 7
	dw .script_13272
	dw .script_13148
	dw .script_131c6
	dw .script_132d5
	dw .script_13148
	dw .script_131c6
	dw .script_132d5
	dw .script_132d5

.script_132d5
	script_exec Func_48a8
	set_update_func Func_141bb, AnimScript_22d14
	script_exec Func_49ac
	branch_kirby_pos .script_132e7, .script_13300
.script_132e7
	set_anim_script AnimScript_22bff
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  2, 0, 0
	set_scripts AnimScript_22be9, .script_13352
.script_13300
	set_anim_script AnimScript_22c05
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  2, 0, 0
	set_scripts AnimScript_22bf4, MotionScript_13371

.script_13319
	set_value wd3cd, $01
	script_call MotionScript_130ed
	jumptable_random 7
	dw .script_132d5
	dw .script_13148
	dw .script_131c6
	dw .script_13272
	dw .script_13148
	dw .script_131c6
	dw .script_13272
	dw .script_132d5

.script_13332
	set_velocities 26, 0, 0
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities 26, 0, 0
	set_velocities  0, 0, 0

.script_13344
	set_anim_script AnimScript_22bd3
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_1_8TH, 0
.script_13352
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_0_75, 0
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_0_75, 0
	jump_rel .script_13352

.script_13363
	set_scripts AnimScript_22bde, MotionScript_13371
; 0x13368

SECTION "Bank 4@7371", ROMX[$7371], BANK[$4]

MotionScript_13371:
.loop
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_1_00, 0
	set_velocities  4, VEL_RIGHT_0_75, 0
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_75, 0
	jump_rel .loop

MotionScript_13382:
.loop
	set_velocities  2, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_2_00
	jump_abs .loop

MotionScript_1338b:
.loop
	set_velocities  2, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_2_00
	jump_abs .loop
; 0x13394

SECTION "Bank 4@73ae", ROMX[$73ae], BANK[$4]

MotionScript_133ae:
	position_offset -20, 8
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities 20, 0, 0
	script_end

MotionScript_133bb:
	position_offset 20, 8
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities 20, 0, 0
	script_end

MotionScript_133c8:
	position_offset -8, 8
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities 20, 0, 0
	script_end

MotionScript_133d5:
	position_offset 8, 8
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities 20, 0, 0
	script_end

MotionScript_133e2:
	position_offset 16, -18
	set_velocities  0, 0, 0

MotionScript_133e8:
	position_offset 8, -25
	set_velocities  0, 0, 0

MotionScript_133ee:
	position_offset -8, -25
	set_velocities  0, 0, 0

MotionScript_133f4:
	position_offset -16, -18
	set_velocities  0, 0, 0

MotionScript_133fa:
	position_offset -23, -6
	set_velocities  0, 0, 0

MotionScript_13400:
	position_offset -23, 6
	set_velocities  0, 0, 0

MotionScript_13406:
	position_offset -8, 10
	set_velocities  0, 0, 0

MotionScript_1340c:
	position_offset 23, -6
	set_velocities  0, 0, 0

MotionScript_13412:
	position_offset 23, 6
	set_velocities  0, 0, 0

MotionScript_13418:
	position_offset 8, 10
	set_velocities  0, 0, 0

MotionScript_1341e:
	set_update_func Func_14172, Data_1c1f0
.loop
	script_exec Func_48b4
	set_velocities  1, 0, 0
	jump_rel .loop

MotionScript_1342b:
	script_exec_arg ScriptFunc_AddScore, SCORE_10000
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	script_exec Func_48c0
	script_end

MotionScript_13438:
	jumptable_random 7
	dw MotionScript_1345c
	dw MotionScript_13472
	dw MotionScript_13488
	dw MotionScript_1349e
	dw MotionScript_134b4
	dw MotionScript_134ca
	dw MotionScript_134e0
	dw MotionScript_134f6

MotionScript_1344a:
	jumptable_random 7
	dw MotionScript_1350c
	dw MotionScript_13522
	dw MotionScript_13538
	dw MotionScript_1354e
	dw MotionScript_13564
	dw MotionScript_1357a
	dw MotionScript_13590
	dw MotionScript_135a6

MotionScript_1345c:
	position_offset -40, -16
	set_velocities  2, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  2, 0, 0
	set_velocities  2, VEL_RIGHT_0_25, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_00
	script_end

MotionScript_13472:
	position_offset -24, -16
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  2, 0, VEL_DOWN_0_50
	set_velocities  2, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  2, VEL_RIGHT_3_00, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_0_75
	script_end

MotionScript_13488:
	position_offset -48, -8
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_1_8TH
	set_velocities  2, 0, VEL_DOWN_1_8TH
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_3_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_8TH
	script_end

MotionScript_1349e:
	position_offset -8, -16
	set_velocities  2, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_2_00, 0
	set_velocities  2, 0, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_4_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_4_00, 0
	script_end

MotionScript_134b4:
	position_offset -40, 16
	set_velocities  2, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  2, 0, 0
	set_velocities  2, VEL_RIGHT_0_25, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_1_00
	script_end

MotionScript_134ca:
	position_offset -24, 16
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  2, 0, VEL_UP_0_50
	set_velocities  2, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  2, VEL_RIGHT_3_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_0_75
	script_end

MotionScript_134e0:
	position_offset -48, 8
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_1_8TH
	set_velocities  2, 0, VEL_UP_1_8TH
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_3_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_1_8TH
	script_end

MotionScript_134f6:
	position_offset -8, 16
	set_velocities  2, VEL_LEFT_4_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_2_00, 0
	set_velocities  2, 0, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_4_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_4_00, 0
	script_end

MotionScript_1350c:
	position_offset 40, -16
	set_velocities  2, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  2, 0, 0
	set_velocities  2, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_00
	script_end

MotionScript_13522:
	position_offset 24, -16
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  2, 0, VEL_DOWN_0_50
	set_velocities  2, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_0_75
	script_end

MotionScript_13538:
	position_offset 48, -8
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	set_velocities  2, 0, VEL_DOWN_1_8TH
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_8TH
	script_end

MotionScript_1354e:
	position_offset 8, -16
	set_velocities  2, VEL_RIGHT_4_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_2_00, 0
	set_velocities  2, 0, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_4_00
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_4_00, 0
	script_end

MotionScript_13564:
	position_offset 40, 16
	set_velocities  2, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  2, 0, 0
	set_velocities  2, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_1_00
	script_end

MotionScript_1357a:
	position_offset 24, 16
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  2, 0, VEL_UP_0_50
	set_velocities  2, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_0_75
	script_end

MotionScript_13590:
	position_offset 48, 8
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_1_8TH
	set_velocities  2, 0, VEL_UP_1_8TH
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_1_8TH
	script_end

MotionScript_135a6:
	position_offset 8, 16
	set_velocities  2, VEL_RIGHT_4_00, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_2_00, 0
	set_velocities  2, 0, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_4_00
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_4_00, 0
	script_end

MotionScript_135bc:
	jumptable_random %11
	dw .script_135c6
	dw .script_135c9
	dw .script_135cc
	dw .script_135cf

.script_135c6
	set_velocities  0, VEL_LEFT_3_00, VEL_DOWN_0_75

.script_135c9
	set_velocities  0, VEL_LEFT_3_00, VEL_DOWN_1_8TH

.script_135cc
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_1_8TH

.script_135cf
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_0_75

MotionScript_135d2:
	set_position $00, $70
	set_velocities 16, VEL_RIGHT_3_00, 0
	set_velocities 16, VEL_RIGHT_2_00, 0
	set_velocities 16, VEL_RIGHT_1_25, 0
	set_velocities 16, VEL_RIGHT_1_00, VEL_UP_1_16TH
	set_velocities 16, VEL_RIGHT_1_00, VEL_UP_1_8TH
	set_velocities 16, VEL_RIGHT_0_50, VEL_UP_1_8TH
	script_repeat 4
	set_velocities  2, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_1_25
	script_repeat_end
	set_velocities 16, VEL_LEFT_1_25, VEL_DOWN_0_50
	script_repeat 8
	set_velocities  2, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_3_00
	script_repeat_end
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_3_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 40, 0, 0
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_75
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	script_repeat 2
	play_sfx SFX_BUMP
	set_velocities  2, VEL_LEFT_1_8TH, 0
	set_velocities 10, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities 10, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities 10, VEL_LEFT_1_8TH, VEL_DOWN_0_50
	script_repeat_end
	play_sfx SFX_25
	set_scripts AnimScript_2028f, MotionScript_10008
; 0x13636
