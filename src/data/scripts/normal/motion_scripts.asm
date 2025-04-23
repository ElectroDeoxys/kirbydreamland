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

; unreferenced
MotionScript_10474:
	set_velocities 30, 0, 0
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 60, 0, VEL_DOWN_0_75
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 30, 0, 0
	set_velocities 10, 0, VEL_UP_0_25
	set_velocities 60, 0, VEL_UP_0_75
	set_velocities 10, 0, VEL_UP_0_25
	jump_abs MotionScript_10474

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

; unreferenced
MotionScript_104b9:
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_1_00, 0
	jump_abs MotionScript_104b9

; unreferenced
MotionScript_104c8:
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities 10, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities 10, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities 10, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_ret

; unreferenced
MotionScript_104ed:
	set_velocities  6, 0, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  6, 0, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  6, VEL_LEFT_2_00, 0
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_0_75
	jump_abs MotionScript_104ed

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

; unreferenced
MotionScript_10523:
	set_velocities 16, 0, VEL_UP_1_25
	set_velocities 16, 0, VEL_UP_0_75
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_DOWN_0_25
	set_velocities 16, 0, VEL_DOWN_0_75
	set_velocities 16, 0, VEL_DOWN_1_25
	script_ret

; unreferenced
MotionScript_10536:
	script_call MotionScript_10523
	set_velocities 16, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities 16, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities 16, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities 16, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities 16, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities 16, VEL_LEFT_0_50, VEL_DOWN_1_25
	script_call MotionScript_10523
	set_velocities 16, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities 16, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities 16, VEL_RIGHT_0_75, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_0_75, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities 16, VEL_RIGHT_0_50, VEL_DOWN_1_25
	script_ret

; unreferenced
MotionScript_10561:
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities 16, 0, 0
	jump_abs MotionScript_10561

; unreferenced
MotionScript_10573:
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities 16, 0, 0
	jump_abs MotionScript_10573

; unreferenced
MotionScript_10585:
	set_velocities 16, 0, VEL_DOWN_2_00
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities 16, 0, VEL_DOWN_0_25
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_00
	set_velocities 16, 0, VEL_UP_2_00
	jump_abs MotionScript_10585

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

; unreferenced
MotionScript_1065b:
	set_velocities 80, 0, 0
	set_anim_script AnimScript_20650
	set_velocities 16, 0, VEL_UP_0_50
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_16TH
	set_velocities 80, 0, VEL_DOWN_1_16TH
	set_anim_script AnimScript_20641
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities  0, VEL_RIGHT_3_00, 0

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

MotionScript_KirbyWarpStar_Crash1:
	create_object AnimScript_20138, MotionScript_Stationary, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpLeft, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpRight, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Left, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Right, Data_3425
	set_anim_script AnimScript_2010f
	set_velocities  8, 0, VEL_UP_3_00
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
MotionScript_Kirby_EndTransitionSegment:
	set_kirby_pos
	set_flags hKirbyFlags3, KIRBY3F_DIVE_BOUNCE | KIRBY3F_DIVE, NONE
	set_value wStageTransitionCounter, 1
	set_velocities  0, 0, 0

MotionScript_Star_UpLeft:
	position_offset -4, -4
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities 48, VEL_LEFT_1_8TH, VEL_UP_0_25
	script_end

MotionScript_Star_UpRight:
	position_offset 4, -4
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities 48, VEL_RIGHT_1_8TH, VEL_UP_0_25
	script_end

MotionScript_Star_Left:
	position_offset -6, 0
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities 48, VEL_LEFT_0_25, 0
	script_end

MotionScript_Star_Right:
	position_offset 6, 0
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities 48, VEL_RIGHT_0_25, 0
	script_end

MotionScript_Star_UpFast:
	set_velocities  6, 0, VEL_UP_6_00
	set_velocities  6, 0, VEL_UP_3_00
	set_velocities  6, 0, VEL_UP_1_25
	set_velocities  0, 0, VEL_UP_0_75

MotionScript_Star_RightFast:
	set_velocities  6, VEL_RIGHT_6_00, 0
	set_velocities  6, VEL_RIGHT_3_00, 0
	set_velocities  6, VEL_RIGHT_1_25, 0
	set_velocities  0, VEL_RIGHT_0_75, 0

MotionScript_Star_DownFast:
	set_velocities  6, 0, VEL_DOWN_6_00
	set_velocities  6, 0, VEL_DOWN_3_00
	set_velocities  6, 0, VEL_DOWN_1_25
	set_velocities  0, 0, VEL_DOWN_0_75

MotionScript_Star_LeftFast:
	set_velocities  6, VEL_LEFT_6_00, 0
	set_velocities  6, VEL_LEFT_3_00, 0
	set_velocities  6, VEL_LEFT_1_25, 0
	set_velocities  0, VEL_LEFT_0_75, 0

MotionScript_Star_UpRightFast:
	set_velocities  6, VEL_RIGHT_4_00, VEL_UP_4_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_UP_0_50

MotionScript_Star_DownRightFast:
	set_velocities  6, VEL_RIGHT_4_00, VEL_DOWN_4_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_0_50

MotionScript_Star_DownLeftFast:
	set_velocities  6, VEL_LEFT_4_00, VEL_DOWN_4_00
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_0_50

MotionScript_Star_UpLeftFast:
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

; unreferenced
MotionScript_107a5:
	set_velocities  6, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_16TH, VEL_DOWN_1_16TH
	script_end

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

MotionScript_Star_RandomDirection:
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

MotionScript_KirbyWarpStar_LiftOff1:
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

MotionScript_KirbyWarpStar_LiftOff2:
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
	create_object AnimScript_Star, MotionScript_RandomLeftDirection, Data_3425
	script_repeat_end
	set_velocities  0, VEL_LEFT_0_75, 0

MotionScript_KirbyWarpStar_LiftOff3:
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
	create_object AnimScript_Star, MotionScript_RandomDownwardsDirection, Data_3425
	set_velocities  2, VEL_RIGHT_0_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_0_00, VEL_DOWN_2_00
	script_repeat_end
	create_object AnimScript_Explosion, MotionScript_RandomDownwardsDirection, Data_3425
	script_repeat 8
	set_velocities  6, VEL_RIGHT_0_00, VEL_DOWN_1_8TH
	create_object AnimScript_Star, MotionScript_RandomDownwardsDirection, Data_3425
	script_repeat_end
	set_velocities  8, VEL_LEFT_1_16TH, VEL_UP_1_00
	create_object AnimScript_Star, MotionScript_RandomDownwardsDirection, Data_3425
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	create_object AnimScript_Star, MotionScript_RandomDownwardsDirection, Data_3425
	set_velocities 20, VEL_LEFT_0_50, VEL_UP_4_00
	set_position 104, 8
	set_velocities 20, 0, 0
	play_sfx SFX_13
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_0_25

MotionScript_RandomDownwardsDirection:
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

MotionScript_KirbyWarpStar_LiftOff4:
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
	create_object AnimScript_Star, MotionScript_Star_UpLeft, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpRight, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Left, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Right, Data_3425
	script_ret

MotionScript_KirbyGetSparklingStarLeft:
	create_object AnimScript_Star, MotionScript_Star_UpLeft, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpRight, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Left, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Right, Data_3425
	set_velocities  6, VEL_LEFT_0_25, 0
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_1_8TH
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  0, VEL_LEFT_0_25, VEL_DOWN_1_25

MotionScript_KirbyGetSparklingStarRight:
	create_object AnimScript_Star, MotionScript_Star_UpLeft, Data_3425
	create_object AnimScript_Star, MotionScript_Star_UpRight, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Left, Data_3425
	create_object AnimScript_Star, MotionScript_Star_Right, Data_3425
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
	set_scripts AnimScript_MainKirbyDance, MotionScript_Stationary

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

MotionScript_KirbyMike:
.loop
	set_velocities  2, VEL_LEFT_0_50, 0
	set_velocities  2, VEL_RIGHT_0_50, 0
	jump_abs .loop

MotionScript_InvincibilityStar:
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

; unreferenced
MotionScript_10d7b:
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities  4, VEL_RIGHT_0_50, 0
	set_velocities  4, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_0_25
	set_velocities  4, VEL_RIGHT_1_00, 0
	set_velocities  4, VEL_RIGHT_0_75, 0
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_00
	jump_abs MotionScript_10d5d

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

; unreferenced
MotionScript_10e33:
.loop
	script_call MotionSubScript_10e43
	script_call MotionSubScript_10e65
	jump_rel .loop

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

; unreferenced
MotionScript_10ec6:
.loop
	script_call MotionSubScript_10ecb
	jump_rel .loop

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

; unreferenced
MotionScript_10f4b:
	set_velocities  4, 0, 0
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  0, 0, 0

MotionScript_10f5a:
	script_repeat 3
	set_velocities  3, 0, 0
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_0_50
	script_repeat_end
	jump_abs MotionScript_10f6f ; unnecessary

MotionScript_10f6f:
	script_repeat 3
	set_velocities  3, 0, 0
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_0_50
	script_repeat_end
	jump_abs MotionScript_10f5a

MotionScript_10f84:
.loop
	set_velocities 60, VEL_LEFT_0_75, 0
	set_velocities 60, VEL_RIGHT_0_75, 0
	jump_rel .loop

; unreferenced
MotionScript_10f8c:
.loop
	set_velocities 40, VEL_LEFT_0_75, 0
	set_velocities 40, VEL_RIGHT_0_75, 0
	jump_rel .loop

; unreferenced
MotionScript_10f94:
.loop
	set_velocities 40, VEL_RIGHT_0_75, 0
	set_velocities 40, VEL_LEFT_0_75, 0
	jump_rel .loop

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
	create_object AnimScript_Explosion, MotionScript_Stationary, ExplosionProperties
	script_end

MotionScript_PoppyBrosSrBombBounce:
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_2_00
	create_object AnimScript_Explosion, MotionScript_Stationary, ExplosionProperties
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
	set_position 48, 32
	script_ret
.position_2
	set_position 24, 32
	script_ret
.position_3
	set_position 40, 32
	script_ret
.position_4
	set_position 56, 32
	script_ret
.position_5
	set_position 72, 32
	script_ret
.position_6
	set_position 88, 32
	script_ret
.position_7
	set_position 19, 32
	script_ret
.position_8
	set_position 77, 32
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
	jump_abs MotionScript_SparklingStar_Loop

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

; unreferenced
MotionScript_11229:
	jump_if_flags hKirbyFlags3, KIRBY3F_UNK6, .script_11232
	set_velocities  0, 0, VEL_DOWN_1_25
.script_11232
	script_end

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
	create_object AnimScript_PuffOfSmoke, MotionScript_Stationary, PuffOfSmokeProperties
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3421
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
	create_object AnimScript_PuffOfSmoke, MotionScript_Stationary, PuffOfSmokeProperties
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3421
	script_ret

; unreferenced
MotionScript_11624:
	set_velocities  6, 0, VEL_UP_0_75
	set_velocities  4, 0, VEL_UP_0_50
	set_velocities  4, 0, VEL_UP_1_8TH
	script_end

MotionScript_1162e:
	set_velocities  0, 0, VEL_UP_0_75

; unreferenced
MotionScript_11631:
	set_velocities  0, VEL_LEFT_0_75, VEL_DOWN_0_75

; unreferenced
MotionScript_11634:
	set_velocities  0, VEL_RIGHT_0_75, VEL_DOWN_0_75

MotionScript_11637:
	set_velocities  0, VEL_LEFT_0_75, VEL_UP_0_75

; unreferenced
MotionScript_1163a:
	set_velocities  0, VEL_RIGHT_0_75, VEL_UP_0_75

MotionScript_1163d:
	set_velocities  0, VEL_LEFT_0_75, VEL_UP_0_50

MotionScript_11640:
	set_velocities  0, VEL_RIGHT_0_75, VEL_UP_0_50

MotionScript_11643:
	set_velocities  0, 0, VEL_DOWN_1_00

MotionScript_11646:
	set_velocities  0, 0, VEL_UP_1_00

; unreferenced
MotionScript_11649:
	set_velocities  0, VEL_RIGHT_1_00, VEL_UP_1_00

; unreferenced
MotionScript_1164c:
	set_velocities  0, VEL_RIGHT_1_00, VEL_DOWN_1_00

; unreferenced
MotionScript_1164f:
	set_velocities  0, VEL_LEFT_1_00, VEL_DOWN_1_00

MotionScript_11652:
	set_velocities  0, VEL_LEFT_1_00, VEL_UP_1_00

MotionScript_11655:
	set_velocities  0, 0, VEL_DOWN_1_25

; unreferenced
MotionScript_11658:
	set_velocities  0, VEL_LEFT_1_00, VEL_DOWN_1_00

; unreferenced
MotionScript_1165b:
	set_velocities  0, VEL_RIGHT_1_00, VEL_DOWN_1_00

; unreferenced
MotionScript_1165e:
	set_velocities  0, 0, VEL_UP_0_25

MotionScript_11661:
	set_velocities  0, 0, VEL_DOWN_2_00

; unreferenced
MotionScript_11664:
	set_velocities  0, 0, VEL_UP_2_00

; unreferenced
MotionScript_11667:
	set_velocities  0, 0, VEL_DOWN_0_50

MotionScript_1166a:
	set_velocities  0, 0, VEL_DOWN_3_00

; unreferenced
MotionScript_1166d:
	set_velocities  0, VEL_RIGHT_2_00, VEL_DOWN_2_00

; unreferenced
MotionScript_11670:
	set_velocities  0, VEL_RIGHT_2_00, VEL_UP_2_00

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

; unreferenced
MotionScript_1171e:
	set_velocities  8, VEL_RIGHT_0_75, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	set_velocities 16, VEL_RIGHT_1_16TH, 0
	set_velocities 16, 0, 0
	jump_abs MotionScript_1171e

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

; unreferenced
MotionScript_11748:
	set_velocities 28, 0, VEL_UP_2_00
	set_anim_script AnimScript_216d7
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_0_75
	set_velocities  8, 0, VEL_DOWN_0_75
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities 60, 0, 0
	set_scripts AnimScript_Coner, MotionScript_1170f

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

; unreferenced
MotionScript_1178e:
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	script_ret

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

; unreferenced
MotionScript_1189c:
	set_anim_script AnimScript_218be
	set_velocities 120, VEL_LEFT_0_50, 0
	script_repeat 2
	script_call MotionScript_118ad
	script_repeat_end
	jump_abs MotionScript_1189c

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

; unreferenced
MotionScript_1199f:
	set_velocities 40, 0, VEL_UP_2_00
	set_velocities  0, 0, 0

MotionScript_Kaboola:
	set_value wBossHPCounter, 8
	set_value wd3c1, $05
	create_object AnimScript_BossHPIncrementer, MotionScript_Stationary, Data_3421
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

; unreferenced
MotionScript_11ad3:
	set_velocities  0, 2.125, 2.125

; unreferenced
MotionScript_11ad6:
	set_velocities  0, 28.125, 2.125

MotionScript_11ad9:
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_1_00

MotionScript_11adc:
	set_velocities  0, VEL_LEFT_2_00, VEL_DOWN_1_00

MotionScript_11adf:
	add_score SCORE_2000
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	set_flags hEngineFlags, HURT_PAL_EFFECT, NONE
	set_flags wd1a0 + OBJECT_SLOT_KIRBY, %00110000, NONE
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
	set_flags hKirbyFlags5, KIRBY5F_UNK5, NONE
	set_flags hEngineFlags, KABOOLA_BATTLE | ENGINEF_UNK6, NONE
	set_velocities  0, 0, 0

MotionScript_11b20:
	set_abs_pos
	set_position 92, 64
	set_velocities  1, 0, 0
	set_rel_pos
	jump_abs MotionScript_SparklingStar

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
	create_object AnimScript_21220, MotionScript_11676, ProjectileProperties
	create_object AnimScript_21220, MotionScript_Projectile_Left, ProjectileProperties
	create_object AnimScript_21220, MotionScript_11673, ProjectileProperties
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

; unreferenced
MotionScript_11c52:
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  5, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  5, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_0_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_0_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  5, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_25
	jump_abs MotionScript_11c52

MotionScript_11c91:
	set_velocities  8, 0, VEL_UP_2_00
MotionScript_11c94:
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_8TH
	jump_abs MotionScript_UpAndDown

MotionScript_11ca3:
	set_velocities  8, 0, VEL_DOWN_2_00
MotionScript_11ca6:
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_1_8TH
	jump_abs MotionScript_UpAndDown

; unreferenced
MotionScript_11cb2:
	branch_kirby_pos .script_11cb9, .script_11cce
.script_11cb9
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	jump_abs .script_11cb9
.script_11cce
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_00
	jump_abs .script_11cce

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
	create_object AnimScript_21ded, MotionScript_Stationary, Data_3685
	set_scripts AnimScript_21e02, MotionScript_Stationary

MotionScript_11de9:
	set_update_func Func_140c2, AnimScript_21dc9
	script_call MotionScript_11db9
	create_object AnimScript_21ded, MotionScript_Stationary, Data_3685
	set_scripts AnimScript_21e14, MotionScript_Stationary

MotionScript_11dfd:
	set_update_func Func_140c2, AnimScript_21ddb
	script_call MotionScript_11db9
	create_object AnimScript_21ded, MotionScript_Stationary, Data_3685
	set_scripts AnimScript_21e26, MotionScript_Stationary

MotionScript_11e11:
	set_update_func Func_140c2, AnimScript_21ddb
	script_call MotionScript_11db9
	create_object AnimScript_21ded, MotionScript_Stationary, Data_3685
	set_scripts AnimScript_21e38, MotionScript_Stationary

MotionScript_ParasolSeparated:
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
	create_object AnimScript_21c25, MotionScript_1166a, ProjectileProperties
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
	create_object AnimScript_WaterfallParticles, MotionScript_Stationary, Data_3421
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

MotionScript_120c6:
	set_velocities 32, 0, 0
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_75, 0
	set_velocities 60, VEL_RIGHT_1_25, 0
	set_velocities 32, 0, 0
	script_repeat 5
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_50
	script_repeat_end
	set_velocities 32, 0, 0
	script_end

MotionScript_12100:
	set_velocities 48, 0, 0
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_50
	set_velocities  0, VEL_RIGHT_1_25, VEL_UP_1_25

MotionScript_12121:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
MotionScript_12127:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_75
MotionScript_1212a:
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_2_00
MotionScript_1212d:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_25
MotionScript_12133:
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_8TH
MotionScript_12136:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_2_00
	jump_abs MotionScript_12121

MotionScript_1213c:
	script_call MotionScript_12195
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  6, 0, VEL_DOWN_4_00
	set_scripts AnimScript_22336, MotionScript_Stationary

MotionScript_12153:
	script_call MotionScript_12195
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities 11, 0, VEL_DOWN_3_00
	set_scripts AnimScript_22336, MotionScript_Stationary

MotionScript_12167:
	script_call MotionScript_12195
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  9, 0, VEL_DOWN_4_00
	set_scripts AnimScript_22336, MotionScript_Stationary

MotionScript_1217e:
	script_call MotionScript_12195
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  6, 0, VEL_DOWN_4_00
	set_scripts AnimScript_22336, MotionScript_Stationary

MotionScript_12195:
	set_velocities 89, 0, 0
	script_repeat 3
	set_velocities  2, 0, VEL_UP_2_00
	set_velocities  2, 0, VEL_DOWN_2_00
	script_repeat_end
	script_ret

MotionScript_121a2:
	set_velocities 144, 0, 0
	set_velocities 100, 0, 0
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_velocities  2, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  9, 0, VEL_DOWN_2_00
	set_scripts AnimScript_22336, MotionScript_Stationary

MotionScript_121bf:
	set_velocities 106, 0, 0
	set_velocities 96, 0, 0
	set_velocities 38, 0, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_2_00
	script_repeat 3
	set_velocities  2, 0, VEL_DOWN_2_00
	set_velocities  2, 0, VEL_UP_2_00
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_121d7:
	set_velocities 106, 0, 0
	set_velocities  8, VEL_LEFT_1_8TH, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities 64, 0, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	set_velocities  0, 0, 0

MotionScript_121ec:
	set_velocities 96, 0, 0
	set_velocities 10, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities 10, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities 10, VEL_LEFT_1_25, VEL_UP_1_8TH
	set_velocities 10, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_1_8TH, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_1_25
	set_velocities  6, VEL_RIGHT_0_25, VEL_DOWN_1_25
	set_velocities  6, 0, VEL_UP_2_00
	set_velocities  6, 0, VEL_UP_0_75
	set_velocities  6, 0, VEL_DOWN_0_75
	set_velocities  6, 0, VEL_DOWN_2_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_00
	script_end

MotionScript_1221a:
	set_velocities 104, 0, 0
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  5, VEL_LEFT_1_8TH, VEL_UP_3_00
	set_velocities  5, VEL_LEFT_1_8TH, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_1_8TH, VEL_DOWN_1_00
	set_velocities  5, VEL_LEFT_1_8TH, VEL_DOWN_3_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_25
	set_velocities  6, VEL_RIGHT_3_00, VEL_UP_0_50
	script_end

MotionScript_1224e:
	set_velocities 50, 0, 0
	set_velocities 45, 0, VEL_DOWN_2_00
	set_velocities 16, 0, 0
	script_end

MotionScript_12258:
	set_velocities 96, 0, 0
	set_velocities 132, 0, 0
.loop
	create_object AnimScript_223cd, MotionScript_12269, Data_3425
	script_delay 7
	jump_rel .loop

MotionScript_12269:
	calltable_random 15
	dw MotionScript_1229d
	dw MotionScript_122a1
	dw MotionScript_122a5
	dw MotionScript_122a9
	dw MotionScript_122ad
	dw MotionScript_122b1
	dw MotionScript_122b5
	dw MotionScript_122b9
	dw MotionScript_122bd
	dw MotionScript_122c1
	dw MotionScript_122c5
	dw MotionScript_122c9
	dw MotionScript_122cd
	dw MotionScript_122d1
	dw MotionScript_122d5
	dw MotionScript_122d9

	jumptable_random 7
	dw MotionScript_122dd
	dw MotionScript_122f2
	dw MotionScript_12307
	dw MotionScript_1231c
	dw MotionScript_1232e
	dw MotionScript_122dd
	dw MotionScript_122f2
	dw MotionScript_12307

MotionScript_1229d:
	position_offset -2, -6
	script_ret

MotionScript_122a1:
	position_offset -5, -4
	script_ret

MotionScript_122a5:
	position_offset -8, -8
	script_ret

MotionScript_122a9:
	position_offset -11, -6
	script_ret

MotionScript_122ad:
	position_offset -14, -4
	script_ret

MotionScript_122b1:
	position_offset -17, -8
	script_ret

MotionScript_122b5:
	position_offset 0, -6
	script_ret

MotionScript_122b9:
	position_offset -1, -4
	script_ret

MotionScript_122bd:
	position_offset 2, -8
	script_ret

MotionScript_122c1:
	position_offset 5, -6
	script_ret

MotionScript_122c5:
	position_offset 8, -4
	script_ret

MotionScript_122c9:
	position_offset 11, -8
	script_ret

MotionScript_122cd:
	position_offset 14, -6
	script_ret

MotionScript_122d1:
	position_offset 17, -4
	script_ret

MotionScript_122d5:
	position_offset 0, -8
	script_ret

MotionScript_122d9:
	position_offset 1, -6
	script_ret

MotionScript_122dd:
	set_velocities  3, 0, VEL_UP_1_00
	set_velocities  3, 0, VEL_UP_0_50
	set_velocities  3, 0, VEL_DOWN_1_00
	set_velocities  4, 0, VEL_DOWN_1_25
	set_velocities  4, 0, VEL_DOWN_2_00
	set_velocities  4, 0, VEL_DOWN_3_00
	set_velocities  0, 0, VEL_DOWN_4_00

MotionScript_122f2:
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_3_00
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_4_00

MotionScript_12307:
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_3_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_4_00

MotionScript_1231c:
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  0, VEL_LEFT_1_00, VEL_DOWN_4_00

MotionScript_1232e:
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities  0, VEL_RIGHT_1_00, VEL_DOWN_4_00

MotionScript_12340:
	set_velocities 156, 0, 0
	set_velocities 160, 0, 0
	set_velocities 96, 0, 0
	set_velocities 64, 0, 0
	set_velocities 48, 0, 0
	set_velocities 112, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 20, VEL_RIGHT_1_16TH, VEL_DOWN_0_25
	set_scripts AnimScript_Hit, MotionScript_Stationary

MotionScript_1235a:
	set_velocities 132, 0, 0
	script_repeat 4
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_00
	script_repeat_end
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_1_25
	set_velocities 16, 0, 0
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_3_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_3_00, VEL_UP_4_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_6_00
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_6_00
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_6_00
	set_velocities  4, VEL_LEFT_3_00, VEL_UP_6_00
	set_velocities  4, VEL_LEFT_4_00, VEL_UP_6_00
	set_velocities  4, VEL_LEFT_8_00, VEL_UP_6_00
	script_end

MotionScript_123ac:
	jumptable_random 3
	dw .script_123b6
	dw .script_123b9
	dw .script_123bc
	dw .script_123bf

.script_123b6
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_3_00
.script_123b9
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_3_00
.script_123bc
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_4_00
.script_123bf
	set_velocities  0, VEL_LEFT_1_25, VEL_UP_4_00

MotionScript_123c2:
	set_velocities 48, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_2_00
	script_end

MotionScript_123d8:
	set_velocities 156, 0, 0
	script_delay 160
	script_delay 96
	script_delay 80
	set_velocities 80, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities 32, 0, 0
	set_velocities  0, 0, 0

MotionScript_123ea:
	script_exec Func_48a3
	script_exec Func_4aad
	set_position 0, 0
	set_velocities  1, 0, 0
	set_update_func Func_1428c, NULL
	set_velocities 132, 0, 0
	set_velocities 24, VEL_RIGHT_2_00, VEL_DOWN_2_00
	create_object AnimScript_20000, MotionScript_1241d, Data_3425
	set_velocities 160, 0, 0
	set_velocities 64, VEL_RIGHT_2_00, VEL_DOWN_0_50
	set_velocities 64, VEL_RIGHT_2_00, VEL_DOWN_1_8TH
	set_velocities 80, VEL_RIGHT_2_00, 0
	set_velocities 32, VEL_RIGHT_1_00, 0
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities  0, 0, 0

MotionScript_1241d:
	script_repeat 23
	create_object AnimScript_Star, MotionScript_1242b, Data_3425
	set_velocities  6, 0, 0
	script_repeat_end
	script_end

MotionScript_1242b:
	calltable_random $0f
	dw .script_12451
	dw .script_12455
	dw .script_12459
	dw .script_1245d
	dw .script_12461
	dw .script_12465
	dw .script_12469
	dw .script_1246d
	dw .script_12471
	dw .script_12475
	dw .script_12479
	dw .script_1247d
	dw .script_12481
	dw .script_12485
	dw .script_12489
	dw .script_1248d

	set_velocities 60, VEL_LEFT_3_00, VEL_UP_2_00
	script_end
.script_12451
	set_position 176, 168
	script_ret
.script_12455
	set_position 176, 148
	script_ret
.script_12459
	set_position 176, 128
	script_ret
.script_1245d
	set_position 176, 108
	script_ret
.script_12461
	set_position 176, 88
	script_ret
.script_12465
	set_position 176, 68
	script_ret
.script_12469
	set_position 176, 48
	script_ret
.script_1246d
	set_position 176, 28
	script_ret
.script_12471
	set_position 156, 168
	script_ret
.script_12475
	set_position 136, 168
	script_ret
.script_12479
	set_position 116, 168
	script_ret
.script_1247d
	set_position 96, 168
	script_ret
.script_12481
	set_position 76, 168
	script_ret
.script_12485
	set_position 56, 168
	script_ret
.script_12489
	set_position 36, 168
	script_ret
.script_1248d
	set_position 16, 168
	script_ret

MotionScript_12491:
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	script_repeat 10
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_124a0:
.loop
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	play_sfx SFX_EXPLOSION
	jump_rel .loop

MotionScript_124ac:
	set_velocities 16, VEL_LEFT_1_32TH, VEL_UP_1_8TH
	play_sfx SFX_WARP_STAR
	set_velocities 16, VEL_LEFT_1_16TH, VEL_UP_0_50
	set_velocities  0, VEL_LEFT_1_8TH, VEL_UP_1_00

MotionScript_124b9:
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_UP_0_50

MotionScript_124bf:
	set_velocities 120, 0, 0
	jump_abs MotionScript_124dd
MotionScript_124c5:
	set_velocities 120, 0, 0
	jump_abs MotionScript_124e9
MotionScript_124cb:
	set_velocities 120, 0, 0
	jump_abs MotionScript_124f5
MotionScript_124d1:
	set_velocities 120, 0, 0
	jump_abs MotionScript_12501
MotionScript_124d7:
	set_velocities 120, 0, 0
	jump_abs MotionScript_1250d

MotionScript_124dd:
	set_velocities  4, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_3_00, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_4_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_4_00, VEL_UP_0_50

MotionScript_124e9:
	set_velocities  4, VEL_RIGHT_4_00, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_4_00, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_3_00, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_2_00

MotionScript_124f5:
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_3_00, VEL_DOWN_1_25

MotionScript_12501:
	set_velocities  4, VEL_LEFT_4_00, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_4_00, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_4_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_4_00, VEL_UP_1_00

MotionScript_1250d:
	set_velocities  4, VEL_LEFT_3_00, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_2_00
	jump_abs MotionScript_124dd

MotionScript_1251c:
	set_velocities 48, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities 16, VEL_RIGHT_0_00, VEL_DOWN_3_00
	play_sfx SFX_PAUSE_OFF
	script_end

MotionScript_1252d:
	set_velocities 16, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_3_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_25
	script_end

MotionScript_12549:
	set_velocities 32, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_00
	script_end

MotionScript_1255f:
	set_velocities 16, VEL_LEFT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_25
	script_end

MotionScript_1257b:
	set_velocities 32, VEL_LEFT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_00
	script_end

MotionScript_12591:
	set_velocities 84, 0, 0
	script_repeat 3
	set_velocities 12, VEL_LEFT_0_25, 0
	set_velocities 10, VEL_LEFT_1_8TH, 0
	set_velocities 10, VEL_LEFT_0_25, 0
	set_velocities 12, VEL_LEFT_1_8TH, 0
	script_repeat_end
	script_repeat 3
	set_velocities  6, VEL_RIGHT_0_75, 0
	set_velocities  6, VEL_RIGHT_0_50, 0
	set_velocities  6, VEL_RIGHT_1_8TH, 0
	set_velocities  6, 0, 0
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_125b5:
	set_velocities  1, 0, 0
	play_music MUSIC_NONE
	script_delay 200
	script_delay 20
	set_velocities 115, 0, VEL_DOWN_1_00
	set_velocities  0, 0, 0

MotionScript_125c6:
	create_object AnimScript_225e6, MotionScript_1264f, Data_3425
	set_velocities 25, 0, 0
	create_object AnimScript_225ae, MotionScript_1264f, Data_3425
	set_velocities 25, 0, 0
	create_object AnimScript_225bc, MotionScript_1264f, Data_3425
	set_velocities 25, 0, 0
	create_object AnimScript_225ca, MotionScript_1264f, Data_3425
	script_end

MotionScript_125ec:
	script_repeat 2
	create_object AnimScript_225f4, MotionScript_1265c, Data_3425
	set_velocities 20, 0, 0
	create_object AnimScript_22602, MotionScript_1265c, Data_3425
	set_velocities 20, 0, 0
	script_repeat_end
	create_object AnimScript_225f4, MotionScript_1265c, Data_3425
	script_end

MotionScript_1260b:
	create_object AnimScript_225ab, MotionScript_12689, Data_3425
	set_velocities 20, 0, 0
	create_object AnimScript_225ab, MotionScript_12689, Data_3425
	set_velocities 20, 0, 0
	create_object AnimScript_225ab, MotionScript_12689, Data_3425
	set_velocities 20, 0, 0
	create_object AnimScript_225ab, MotionScript_12689, Data_3425
	set_velocities  4, 0, 0
	set_velocities 26, 0, VEL_DOWN_1_00
	script_repeat 3
	create_object AnimScript_225ab, MotionScript_12689, Data_3425
	set_velocities 40, 0, VEL_DOWN_1_00
	script_repeat_end
.loop
	create_object AnimScript_225ab, MotionScript_12689, Data_3425
	set_velocities 80, 0, 0
	jump_rel .loop

MotionScript_1264f:
	calltable_random 3
	dw MotionScript_12669
	dw MotionScript_1266d
	dw MotionScript_12671
	dw MotionScript_12675
	jump_abs MotionScript_126b7

MotionScript_1265c:
	calltable_random 3
	dw MotionScript_12679
	dw MotionScript_1267d
	dw MotionScript_12681
	dw MotionScript_12685
	jump_abs MotionScript_126a1

MotionScript_12669:
	set_position 20, 0
	script_ret

MotionScript_1266d:
	set_position 60, 0
	script_ret

MotionScript_12671:
	set_position 100, 0
	script_ret

MotionScript_12675:
	set_position 140, 0
	script_ret

MotionScript_12679:
	position_offset -20, 0
	script_ret

MotionScript_1267d:
	position_offset -10, 0
	script_ret

MotionScript_12681:
	position_offset 10, 0
	script_ret

MotionScript_12685:
	position_offset 20, 0
	script_ret

MotionScript_12689:
	jumptable_random 1
	dw .script_1268f
	dw .script_12692

.script_1268f
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_1_25
.script_12692
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_1_25

MotionScript_12695:
	jumptable_random 1
	dw .script_1269b
	dw .script_1269e

.script_1269b
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_0_75
.script_1269e
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_0_75

MotionScript_126a1:
	jumptable_random 3
	dw .script_126ab
	dw .script_126ae
	dw .script_126b1
	dw .script_126b4

.script_126ab
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_1_25
.script_126ae
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_1_25
.script_126b1
	set_velocities  0, VEL_RIGHT_0_25, VEL_DOWN_1_25
.script_126b4
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_1_25

MotionScript_126b7:
	jumptable_random 3
	dw .script_126c1
	dw .script_126c4
	dw .script_126c7
	dw .script_126ca

.script_126c1
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_2_00
.script_126c4
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_2_00
.script_126c7
	set_velocities  0, VEL_RIGHT_0_25, VEL_DOWN_2_00
.script_126ca
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_2_00

MotionScript_126cd:
.loop
	set_velocities 32, 0, VEL_DOWN_1_32TH
	set_velocities 144, 0, VEL_DOWN_1_16TH
	set_velocities 32, 0, VEL_DOWN_1_32TH
	set_velocities 144, 0, 0
	set_velocities 32, 0, VEL_UP_1_32TH
	set_velocities 144, 0, VEL_UP_1_16TH
	set_velocities 32, 0, VEL_UP_1_32TH
	set_velocities 144, 0, 0
	jump_rel .loop

MotionScript_126e7:
	set_velocities 64, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 48, VEL_RIGHT_0_00, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  0, 0, 0

MotionScript_126fc:
	set_velocities 64, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 56, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 48, VEL_RIGHT_0_00, 0
	set_velocities  6, VEL_RIGHT_0_00, 0.75
	set_velocities  6, VEL_RIGHT_0_00, 0.875
	set_velocities  6, VEL_RIGHT_0_00, 1.0
	set_velocities  6, VEL_RIGHT_0_00, 1.125
	set_velocities 64, VEL_RIGHT_0_00, 1.25
	script_end

MotionScript_12715:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_RIGHT_0_00, VEL_UP_4_00
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 15, VEL_RIGHT_0_25, VEL_DOWN_2_00
	set_velocities 15, VEL_RIGHT_1_16TH, VEL_DOWN_2_00
	set_velocities  9, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities 16, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  0, 0, 0

MotionScript_1272d:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_LEFT_4_00, VEL_DOWN_0_00
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 15, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities 15, VEL_RIGHT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities 16, VEL_RIGHT_1_00, VEL_DOWN_1_16TH
	set_velocities  0, 0, 0

MotionScript_12745:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_0_00
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 15, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities 15, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities 16, VEL_LEFT_1_00, VEL_DOWN_1_16TH
	set_velocities  0, 0, 0

MotionScript_1275d:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_4_00
	set_velocities 96, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 48, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_0_50
	set_velocities  0, 0, 0

MotionScript_1276f:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_LEFT_4_00, VEL_DOWN_4_00
	set_velocities 96, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 48, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  0, 0, 0

MotionScript_12781:
	script_repeat 3
	create_object AnimScript_225ab, MotionScript_12695, Data_3425
	set_velocities 40, 0, 0
	script_repeat_end
	create_object AnimScript_225ab, MotionScript_12695, Data_3425
	set_velocities 24, 0, 0
	set_velocities 16, 0, VEL_DOWN_1_8TH
	create_object AnimScript_225ab, MotionScript_12695, Data_3425
	set_velocities 32, 0, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_0_50
	create_object AnimScript_225ab, MotionScript_12695, Data_3425
	set_velocities 10, VEL_RIGHT_0_00, VEL_DOWN_1_00
	set_velocities 30, 0, 0
.loop
	create_object AnimScript_225ab, MotionScript_12695, Data_3425
	set_velocities 40, 0, 0
	jump_rel .loop

MotionScript_127c1:
	set_velocities 11, VEL_RIGHT_0_00, VEL_DOWN_0_00
MotionScript_127c4:
	set_velocities  6, VEL_RIGHT_0_00, VEL_UP_0_25
	set_velocities  6, VEL_RIGHT_0_00, VEL_DOWN_0_25
MotionScript_127ca:
	set_velocities 11, VEL_RIGHT_0_00, VEL_DOWN_0_00
MotionScript_127cd:
	set_velocities 11, VEL_RIGHT_0_00, VEL_DOWN_0_00
MotionScript_127d0:
	set_velocities  6, VEL_RIGHT_0_00, VEL_UP_0_25
	set_velocities  6, VEL_RIGHT_0_00, VEL_DOWN_0_25
	jump_abs MotionScript_127c1

MotionScript_127d9:
	set_velocities 44, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities 32, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 32, VEL_RIGHT_0_00, VEL_DOWN_0_00
	script_repeat 2
	set_velocities 16, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 10, VEL_RIGHT_0_00, VEL_DOWN_0_00
	script_repeat_end
	set_velocities 64, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  0, VEL_RIGHT_0_00, VEL_DOWN_0_00

MotionScript_127fa:
	set_velocities 86, 0, VEL_DOWN_1_25
	script_end

MotionScript_127fe:
	set_velocities 108, 0, VEL_DOWN_1_00
	script_end

MotionScript_12802:
	set_velocities 128, 0, VEL_DOWN_0_75
	script_end

MotionScript_12806:
	set_value wKirbySideOfScreen, $00
	set_value wd3cf, $00
	set_value wd3d0, $00
MotionScript_12812:
	set_update_func Func_141d3, AnimScript_22769
	set_velocities  0, 0, 0

MotionScript_1281a:
	jump_if_equal wKirbySideOfScreen, $01, MotionScript_12857
	jump_if_equal wd3cf, $01, MotionScript_1283d
	jump_abs MotionScript_12812

MotionScript_12829:
	jump_if_equal wKirbySideOfScreen, $01, MotionScript_12857
	jump_if_equal wd3cf, $00, MotionScript_1284a
MotionScript_12835:
	set_update_func Func_141d3, AnimScript_2276e
	set_velocities  0, 0, 0

MotionScript_1283d:
	play_sfx SFX_CURSOR
	set_velocities  5, 0, VEL_DOWN_3_00
	set_velocities  3, 0, VEL_DOWN_1_00
	jump_abs MotionScript_12835

MotionScript_1284a:
	play_sfx SFX_CURSOR
	set_velocities  5, 0, VEL_UP_3_00
	set_velocities  3, 0, VEL_UP_1_00
	jump_abs MotionScript_12812

MotionScript_12857:
	jump_if_equal wd3cf, $01, MotionScript_128b3
	set_anim_script AnimScript_22810
	set_velocities 18, 0, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_0_75
	set_velocities  5, VEL_LEFT_1_25, VEL_DOWN_1_00
	set_velocities  5, VEL_LEFT_1_00, VEL_DOWN_1_25
	set_velocities  5, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  5, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  5, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  5, VEL_RIGHT_3_00, VEL_DOWN_1_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_0_75
	set_velocities 10, VEL_RIGHT_1_25, VEL_UP_0_75
	set_velocities 51, 0, 0
	set_velocities  5, 0, VEL_DOWN_2_00
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_UP_1_25
	set_velocities  8, 0, 0
	set_velocities  5, 0, VEL_DOWN_2_00
	set_velocities  8, 0, 0
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  0, 0, 0

MotionScript_1289e:
	set_velocities 95, 0, 0
	script_delay 135
	set_velocities 80, 1.125, 0
	script_delay 80
	script_end

; unreferenced
MotionScript_128a9:
	script_repeat 2
	set_velocities 40, VEL_RIGHT_1_8TH, VEL_DOWN_0_25
	set_velocities 40, VEL_LEFT_1_8TH, VEL_UP_0_25
	script_repeat_end
	script_end

MotionScript_128b3:
	set_anim_script AnimScript_2282b
	set_velocities 20, 0, 0
	set_velocities  5, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  5, VEL_LEFT_1_00, VEL_DOWN_0_75
	set_velocities  5, VEL_LEFT_1_00, VEL_DOWN_1_25
	set_velocities  5, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  5, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  5, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  5, VEL_RIGHT_3_00, VEL_DOWN_1_00
	set_velocities  5, VEL_RIGHT_1_00, 0
	set_velocities 10, 0, 0
	script_repeat 9
	set_velocities  4, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_RIGHT_1_00, 0
	script_repeat_end
	set_anim_script AnimScript_22834
	set_velocities  2, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities 26, 0, 0
MotionScript_128f0:
	set_velocities 150, 0, 0
	set_velocities  0, VEL_RIGHT_3_00, VEL_UP_3_00

MotionScript_128f6:
.loop
	set_velocities 40, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities 40, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	jump_rel .loop

MotionScript_128fe:
	set_value wBossHPCounter, 3
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_Stationary, Data_3421
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
	set_position 144, 58
	set_rel_pos
	script_ret

.script_12a71
	create_object AnimScript_Bullet, MotionScript_12b18, ProjectileProperties
	set_velocities  3, 0, 0
	create_object AnimScript_Bullet, MotionScript_12ad9, ProjectileProperties
	set_velocities  3, 0, 0
	create_object AnimScript_Bullet, MotionScript_12aee, ProjectileProperties
	set_velocities  3, 0, 0
	create_object AnimScript_Bullet, MotionScript_12b03, ProjectileProperties
	set_velocities  3, 0, 0
	script_ret

MotionScript_12a9a:
	add_score SCORE_750
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
	create_object AnimScript_Hit, MotionScript_Stationary, Data_3425
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
	create_object AnimScript_BossHPIncrementer, MotionScript_Stationary, Data_3421
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
	create_object AnimScript_Projectile, MotionScript_12d6f, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12d9f, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_12d75, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12da5, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_12d7b, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12dab, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_12d81, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12db1, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_12d87, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12db7, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_12d8d, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12dbd, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_12d93, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12dc3, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_12d99, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12dc9, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_12d6f, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12d9f, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_12d75, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_12da5, ProjectileProperties
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

; unreferenced
MotionScript_12dfd:
	set_velocities 16, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	jump_abs MotionScript_SparklingStar

MotionScript_12e09:
	set_value wBossHPCounter, 6
	set_value wd3c1, $01
	create_object AnimScript_BossHPIncrementer, MotionScript_Stationary, Data_3421
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
	set_position 161, 24
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_12ff1
	set_value wKirbySideOfScreen, $00
	jump_abs .left_side

.script_12e49
	jump_if_equal wd3cf, $ff, .right_side
	set_position 161, 56
	set_value wd3cf, $ff
	script_call MotionScript_12ff1
	set_value wd3cf, $00
	jump_abs .left_side

.script_12e60
	jump_if_equal wd3d0, $ff, .right_side
	set_position 161, 88
	set_value wd3d0, $ff
	script_call MotionScript_12ff1
	set_value wd3d0, $00
	jump_abs .left_side

.script_12e77
	jump_if_equal wd3d1, $ff, .right_side
	set_position 161, 120
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
	set_position 16, 24
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_13017
	set_value wKirbySideOfScreen, $00
	jump_abs .right_side

.script_12eaf
	jump_if_equal wd3cf, $ff, .left_side
	set_position 16, 56
	set_value wd3cf, $ff
	script_call MotionScript_13017
	set_value wd3cf, $00
	jump_abs .right_side

.script_12ec6
	jump_if_equal wd3d0, $ff, .left_side
	set_position 16, 88
	set_value wd3d0, $ff
	script_call MotionScript_13017
	set_value wd3d0, $00
	jump_abs .right_side

.script_12edd
	jump_if_equal wd3d1, $ff, .left_side
	set_position 16, 120
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
	create_object AnimScript_BossHPIncrementer, MotionScript_Stationary, Data_3421
.loop
	; randomly selects which door to pop out from
	jumptable_random %11
	dw .upper_door
	dw .mid_upper_door
	dw .mid_bottom_door
	dw .bottom_door

.upper_door
	set_position 163, 24
	jump_abs .attack_short
.mid_upper_door
	set_position 163, 56
	jump_abs .attack_mid
.mid_bottom_door
	set_position 163, 88
	jump_abs .attack_far
.bottom_door
	set_position 163, 120
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
	create_object AnimScript_BossHPIncrementer, MotionScript_Stationary, Data_3421
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
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3425
	set_velocities 16, VEL_LEFT_1_00, 0
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_velocities 48, 0, 0
	jump_rel .script_13199

.script_1317d:
	set_value wd3cd, $00
	set_object_properties Properties_360d
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3425
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
	create_object AnimScript_Star, MotionScript_13438, Data_3421
	script_repeat 3
	set_velocities  2, VEL_RIGHT_1_00, 0
	set_velocities  2, VEL_LEFT_1_00, 0
	script_repeat_end
	jump_rel .script_13297

.script_132a9
	set_object_properties Properties_360d
.loop_1
	create_object AnimScript_Star, MotionScript_1344a, Data_3421
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

; unreferenced
MotionScript_13368:
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_1_8TH, 0
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

; unreferenced
MotionScript_13394:
	set_velocities 60, VEL_LEFT_3_00, 0
	script_end

; unreferenced
MotionScript_13398:
	set_velocities 60, VEL_RIGHT_3_00, 0
	script_end

; unreferenced
MotionScript_1339c:
	set_velocities 18, 0, 0
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities 10, 0, 0
	set_velocities  0, 0, 0

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

MotionScript_OnKingDededeDestroyed:
	add_score SCORE_10000
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

MotionScript_RandomLeftDirection:
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

MotionScript_KirbyWarpStar_Crash2:
	set_position 0, 112
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
	set_scripts AnimScript_2028f, MotionScript_Stationary
