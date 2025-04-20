MotionScript_30459:
	set_velocities 10, 0, 0
	set_velocities  5, 0, VEL_DOWN_0_75
	set_velocities 15, 0, VEL_DOWN_1_25
	set_velocities  5, 0, VEL_DOWN_0_75
	set_velocities 10, 0, 0
	set_velocities  5, 0, VEL_UP_0_75
	set_velocities 15, 0, VEL_UP_1_25
	set_velocities  5, 0, VEL_UP_0_75
	jump_abs MotionScript_30459

; unreferenced
MotionScript_30474:
	set_velocities 15, 0, 0
	set_velocities  5, 0, VEL_DOWN_0_75
	set_velocities 30, 0, VEL_DOWN_1_25
	set_velocities  5, 0, VEL_DOWN_0_75
	set_velocities 15, 0, 0
	set_velocities  5, 0, VEL_UP_0_75
	set_velocities 30, 0, VEL_UP_1_25
	set_velocities  5, 0, VEL_UP_0_75
	jump_abs MotionScript_30474

MotionScript_3048f:
	set_velocities  5, 0, VEL_DOWN_0_75
	set_velocities 75, 0, VEL_DOWN_1_00
	set_velocities  5, 0, VEL_DOWN_0_75
MotionScript_30498:
	set_velocities  5, 0, VEL_UP_0_75
	set_velocities 75, 0, VEL_UP_1_00
	set_velocities  5, 0, VEL_UP_0_75
	jump_abs MotionScript_3048f

MotionScript_304a4:
.loop
	script_exec Func_48f5
	jumptable wd3bd
	dw .script_304ca
	dw .script_304ca
	dw .script_304d9
	dw .script_304d9
	dw .script_304e8
	dw .script_304f7
	dw .script_304f7
	dw .script_30506
	dw .script_30506
	dw .script_30506
	dw .script_304f7
	dw .script_304f7
	dw .script_304e8
	dw .script_304d9
	dw .script_304d9
	dw .script_304ca

.script_304ca
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  6, VEL_LEFT_0_50, 0
	jump_abs .loop
.script_304d9
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_1_8TH
	set_velocities  6, VEL_LEFT_1_00, 0
	jump_abs .loop
.script_304e8
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_1_00, 0
	jump_abs .loop
.script_304f7
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_8TH
	set_velocities  6, VEL_LEFT_1_00, 0
	jump_abs .loop
.script_30506
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  6, VEL_LEFT_0_50, 0
	jump_abs .loop

; unreferenced
MotionScript_30515:
	script_exec Func_48f5
	jumptable wd3bd
	dw .script_3053b
	dw .script_3053b
	dw .script_3054a
	dw .script_3054a
	dw .script_30559
	dw .script_30568
	dw .script_30568
	dw .script_30577
	dw .script_30577
	dw .script_30577
	dw .script_30568
	dw .script_30568
	dw .script_30559
	dw .script_3054a
	dw .script_3054a
	dw .script_3053b

.script_3053b
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  6, VEL_RIGHT_0_50, 0
	jump_abs MotionScript_30515

.script_3054a
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, 0
	jump_abs MotionScript_30515

.script_30559
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, 0
	jump_abs MotionScript_30515

.script_30568
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, 0
	jump_abs MotionScript_30515

.script_30577
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_0_75
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  6, VEL_RIGHT_0_50, 0
	jump_abs MotionScript_30515

; unreferenced
MotionScript_30586:
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_ret

; unreferenced
MotionScript_305ab:
	set_velocities  6, 0, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  6, 0, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  6, VEL_LEFT_2_00, 0
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_0_75
	jump_abs MotionScript_305ab

MotionScript_305c6:
.loop
	set_velocities  5, 0, 0
	set_velocities  4, 0, VEL_DOWN_0_25
	set_velocities  4, 0, VEL_DOWN_0_50
	set_velocities  4, 0, VEL_DOWN_0_75
	set_velocities 36, 0, VEL_DOWN_1_00
	set_velocities  4, 0, VEL_DOWN_0_75
	set_velocities  4, 0, VEL_DOWN_0_50
	set_velocities  4, 0, VEL_DOWN_0_25
	set_velocities  5, 0, 0
	set_velocities  4, 0, VEL_UP_0_25
	set_velocities  4, 0, VEL_UP_0_50
	set_velocities  4, 0, VEL_UP_0_75
	set_velocities 36, 0, VEL_UP_1_00
	set_velocities  4, 0, VEL_UP_0_75
	set_velocities  4, 0, VEL_UP_0_50
	set_velocities  4, 0, VEL_UP_0_25
	jump_abs .loop

; unreferenced
MotionScript_305f9:
	set_velocities 16, 0, VEL_UP_1_25
	set_velocities 16, 0, VEL_UP_0_75
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_DOWN_0_25
	set_velocities 16, 0, VEL_DOWN_0_75
	set_velocities 16, 0, VEL_DOWN_1_25
	script_ret

; unreferenced
MotionScript_3060c:
	script_call MotionScript_305f9
	set_velocities 16, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities 16, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities 16, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities 16, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities 16, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities 16, VEL_LEFT_0_50, VEL_DOWN_1_25
	script_call MotionScript_305f9
	set_velocities 16, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities 16, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities 16, VEL_RIGHT_0_75, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_0_75, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities 16, VEL_RIGHT_0_50, VEL_DOWN_1_25
	script_ret

; unreferenced
MotionScript_30637:
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities 16, 0, 0
	jump_abs MotionScript_30637

; unreferenced
MotionScript_30649:
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities 16, 0, 0
	jump_abs MotionScript_30649

; unreferenced
MotionScript_3065b:
	set_velocities 16, 0, VEL_DOWN_2_00
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities 16, 0, VEL_DOWN_0_25
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_00
	set_velocities 16, 0, VEL_UP_2_00
	jump_abs MotionScript_3065b

MotionScript_30670:
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
	jump_abs MotionScript_30670

MotionScript_30691:
	set_velocities  1, 0, VEL_DOWN_1_25
	branch_on_kirby_vertical_alignment MotionScript_306b2, MotionScript_3069e
	jump_abs MotionScript_30691
MotionScript_3069e:
	set_anim_script AnimScript_20662
	set_velocities  6, 0, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_8TH, VEL_DOWN_0_75
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_16TH
	set_velocities  0, VEL_RIGHT_2_00, 0

MotionScript_306b2:
	set_anim_script AnimScript_20659
	set_velocities  6, 0, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_1_8TH, VEL_DOWN_0_75
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_16TH
	set_velocities  0, VEL_LEFT_2_00, 0

MotionScript_306c6:
	set_velocities  8, 0, VEL_DOWN_3_00
	branch_kirby_pos MotionScript_306b2, MotionScript_3069e
MotionScript_306d0:
	set_velocities 80, 0, 0
	set_anim_script AnimScript_20647
	set_velocities 16, 0, VEL_UP_0_50
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_16TH
	set_anim_script AnimScript_2063b
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities  0, VEL_LEFT_3_00, 0

; unreferenced
MotionScript_306ef:
	set_velocities 80, 0, 0
	set_anim_script AnimScript_20650
	set_velocities 16, 0, VEL_UP_0_50
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_16TH
	set_anim_script AnimScript_20641
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities  0, VEL_RIGHT_3_00, 0

MotionScript_KirbyWarpStar_Crash1:
	create_object AnimScript_20138, MotionScript_10008, Data_3425
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

MotionScript_307df:
	set_velocities  6, 0, VEL_UP_4_00
	set_velocities  6, 0, VEL_UP_1_25
	set_velocities  6, 0, VEL_UP_1_8TH
	script_end

MotionScript_307e9:
	set_velocities  6, VEL_LEFT_4_00, 0
	set_velocities  6, VEL_LEFT_1_25, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_end

MotionScript_307f3:
	set_velocities  6, 0, VEL_DOWN_4_00
	set_velocities  6, 0, VEL_DOWN_1_25
	set_velocities  6, 0, VEL_DOWN_1_8TH
	script_end

MotionScript_307fd:
	set_velocities  6, VEL_LEFT_4_00, 0
	set_velocities  6, VEL_LEFT_1_25, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_end

MotionScript_30807:
	set_velocities  6, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_16TH, VEL_UP_1_16TH
	script_end

; unreferenced
MotionScript_30811:
	set_velocities  6, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_16TH, VEL_DOWN_1_16TH
	script_end

MotionScript_3081b:
	set_velocities  6, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_1_16TH, VEL_DOWN_1_16TH
	script_end

MotionScript_30825:
	set_velocities  6, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_1_16TH, VEL_UP_1_16TH
	script_end

MotionScript_Star_RandomDirection:
	jumptable_random 7
	dw .script_30841
	dw .script_3084d
	dw .script_30859
	dw .script_30865
	dw .script_30871
	dw .script_3087d
	dw .script_30889
	dw .script_30895

.script_30841
	position_offset 0, -6
	set_velocities  3, 0, VEL_UP_3_00
	set_velocities  3, 0, VEL_UP_2_00
	set_velocities  0, 0, 0

.script_3084d
	position_offset 5, -5
	set_velocities  3, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  0, 0, 0

.script_30859
	position_offset 6, 0
	set_velocities  3, VEL_RIGHT_3_00, 0
	set_velocities  3, VEL_RIGHT_2_00, 0
	set_velocities  0, 0, 0

.script_30865
	position_offset 5, 5
	set_velocities  3, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  0, 0, 0

.script_30871
	position_offset 0, 6
	set_velocities  3, 0, VEL_DOWN_3_00
	set_velocities  3, 0, VEL_DOWN_2_00
	set_velocities  0, 0, 0

.script_3087d
	position_offset -5, 5
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  0, 0, 0

.script_30889
	position_offset -6, 0
	set_velocities  3, VEL_LEFT_3_00, 0
	set_velocities  3, VEL_LEFT_2_00, 0
	set_velocities  0, 0, 0

.script_30895
	position_offset -5, -5
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  0, 0, 0

MotionScript_308a1:
	set_velocities  4, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_50
	script_end

MotionScript_308ab:
	set_velocities  3, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_1_25
	script_end

MotionScript_308b2:
	set_velocities  4, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_end

MotionScript_308bc:
	set_velocities  3, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	script_end

; unreferenced
MotionScript_308c3:
	set_velocities  3, 0, VEL_UP_4_00
	set_velocities  3, 0, VEL_UP_2_00
	set_velocities  3, 0, VEL_UP_1_00
	script_end

MotionScript_308cd:
	set_velocities  3, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_50
	script_end

MotionScript_308d7:
	set_velocities  3, VEL_RIGHT_4_00, 0
	set_velocities  3, VEL_RIGHT_2_00, 0
	set_velocities  3, VEL_RIGHT_1_00, 0
	script_end

MotionScript_308e1:
	set_velocities  3, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_end

MotionScript_308eb:
	set_velocities  3, 0, VEL_DOWN_4_00
	set_velocities  3, 0, VEL_DOWN_2_00
	set_velocities  3, 0, VEL_DOWN_1_00
	script_end

MotionScript_308f5:
	set_velocities  3, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  3, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_0_50
	script_end

MotionScript_308ff:
	set_velocities  3, VEL_LEFT_4_00, 0
	set_velocities  3, VEL_LEFT_2_00, 0
	set_velocities  3, VEL_LEFT_1_00, 0
	script_end

MotionScript_30909:
	set_velocities  3, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_0_50
	script_end

MotionScript_30913:
	set_velocities  3, VEL_RIGHT_2_00, VEL_UP_4_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_1_16TH, VEL_UP_0_25
	script_end

MotionScript_30920:
	set_velocities  3, VEL_RIGHT_4_00, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_0_25
	set_velocities  3, VEL_RIGHT_0_25, VEL_UP_1_16TH
	script_end

MotionScript_3092d:
	set_velocities  3, VEL_RIGHT_4_00, VEL_DOWN_2_00
	set_velocities  3, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_0_25
	set_velocities  3, VEL_RIGHT_0_25, VEL_DOWN_1_16TH
	script_end

MotionScript_3093a:
	set_velocities  3, VEL_RIGHT_2_00, VEL_DOWN_4_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  3, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  3, VEL_RIGHT_1_16TH, VEL_DOWN_0_25
	script_end

MotionScript_30947:
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_4_00
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_1_16TH, VEL_DOWN_0_25
	script_end

MotionScript_30954:
	set_velocities  3, VEL_LEFT_4_00, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities  3, VEL_LEFT_0_25, VEL_DOWN_1_16TH
	script_end

MotionScript_30961:
	set_velocities  3, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  3, VEL_LEFT_0_25, VEL_UP_1_16TH
	script_end

MotionScript_3096e:
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_4_00
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_1_16TH, VEL_UP_0_25
	script_end

MotionScript_3097b:
	set_velocities  2, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  2, 0, VEL_UP_4_00
MotionScript_30981:
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  2, VEL_LEFT_4_00, 0
MotionScript_30987:
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  2, 0, VEL_DOWN_4_00
MotionScript_3098d:
	set_velocities  2, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  2, VEL_RIGHT_4_00, 0
	jump_abs MotionScript_3097b

MotionScript_KirbyWarpStar_LiftOff1:
	script_call MotionScript_30ae1
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
	script_call MotionScript_30ae1
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
	script_call MotionScript_30ae1
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
	jumptable_random 3
	dw .script_30a89
	dw .script_30a8c
	dw .script_30a8f
	dw .script_30a92

.script_30a89
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_3_00

.script_30a8c
	set_velocities  0, VEL_LEFT_1_8TH, VEL_DOWN_3_00

.script_30a8f
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_3_00

.script_30a92
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_3_00

MotionScript_KirbyWarpStar_LiftOff4:
	script_call MotionScript_30ae1
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

MotionScript_30ae1:
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

; unreferenced
MotionScript_30b54:
	jump_if_equal wObjectScreenXPositions, $56, MotionScript_30b6c
	set_velocities  1, VEL_LEFT_0_50, 0
	jump_abs MotionScript_30b54

MotionScript_30b60:
	jump_if_equal wObjectScreenXPositions, $5a, MotionScript_30b6c
	set_velocities  1, VEL_RIGHT_0_50, 0
	jump_abs MotionScript_30b60
MotionScript_30b6c:
	set_scripts AnimScript_2478b, MotionScript_10008

MotionScript_30b71:
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

MotionScript_30ba4:
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

MotionScript_30c04:
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

MotionScript_30c46:
	set_velocities 10, 0, VEL_UP_2_00
	set_velocities 10, 0, VEL_UP_1_00
	set_velocities 10, 0, VEL_UP_0_25
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 10, 0, VEL_DOWN_1_00
	set_velocities 10, 0, VEL_DOWN_2_00
	set_velocities 20, 0, 0
	script_call MotionScript_30ca6
	script_repeat 2
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_25
	script_repeat_end
	script_call MotionScript_30ca6
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

MotionScript_30ca6:
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
	jumptable_random 7
	dw .script_30cce
	dw .script_30cdb
	dw .script_30ce8
	dw .script_30cf5
	dw .script_30d02
	dw .script_30d0f
	dw .script_30d1c
	dw .script_30d29

.script_30cce
	position_offset 0, -6
	set_velocities  3, 0, VEL_UP_1_00
	set_velocities  3, 0, VEL_UP_0_75
	set_velocities  2, 0, 0
	script_end
.script_30cdb
	position_offset 5, -5
	set_velocities  3, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  2, 0, 0
	script_end
.script_30ce8
	position_offset 6, 0
	set_velocities  3, VEL_RIGHT_1_00, 0
	set_velocities  3, VEL_RIGHT_0_75, 0
	set_velocities  2, 0, 0
	script_end
.script_30cf5
	position_offset 5, 5
	set_velocities  3, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  2, 0, 0
	script_end
.script_30d02
	position_offset 0, 6
	set_velocities  3, 0, VEL_DOWN_1_00
	set_velocities  3, 0, VEL_DOWN_0_75
	set_velocities  2, 0, 0
	script_end
.script_30d0f
	position_offset -5, 5
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  2, 0, 0
	script_end
.script_30d1c
	position_offset -6, 0
	set_velocities  3, VEL_LEFT_1_00, 0
	set_velocities  3, VEL_LEFT_0_75, 0
	set_velocities  2, 0, 0
	script_end
.script_30d29
	position_offset -5, -5
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  2, 0, 0
	script_end

MotionScript_30d36:
	set_velocities 200, VEL_LEFT_1_8TH, 0
	set_velocities 200, VEL_RIGHT_1_8TH, 0
	jump_abs MotionScript_30d36

MotionScript_30d3f:
	set_velocities 10, 0, VEL_UP_0_50
	set_velocities 10, 0, VEL_UP_1_8TH
	set_velocities 10, 0, 0
	set_velocities 10, 0, VEL_DOWN_1_8TH
	set_velocities 10, 0, VEL_DOWN_0_50
	jump_abs MotionScript_30d3f

MotionScript_30d51:
	set_velocities  6, 0, VEL_UP_1_00
	set_velocities  3, 0, 0
	set_velocities  6, 0, VEL_DOWN_1_00
	set_velocities  3, 0, 0
	jump_abs MotionScript_30d51

MotionScript_30d60:
.loop
	set_velocities 32, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_3_00
	jump_abs .loop

MotionScript_30d78:
	set_velocities  4, 0, 0
	set_velocities  4, 0, VEL_UP_1_00
	set_velocities  4, 0, 0
	set_velocities  4, 0, VEL_DOWN_1_00
	jump_abs MotionScript_30d78

MotionScript_30d87:
	set_update_func Func_14208, NULL
	jump_abs MotionScript_30d78

MotionScript_30d8f:
	set_velocities  0, VEL_LEFT_1_25, VEL_UP_1_25

MotionScript_30d92:
	set_velocities  0, VEL_RIGHT_1_25, VEL_UP_1_25

MotionScript_30d95:
	set_velocities  0, VEL_RIGHT_2_00, VEL_UP_2_00

MotionScript_30d98:
	set_velocities 32, VEL_LEFT_1_00, 0
	set_object_properties StandardEnemyProperties
MotionScript_30da0:
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  7, VEL_LEFT_0_75, VEL_DOWN_3_00
	set_object_properties StandardEnemyGravityProperties
	jump_abs MotionScript_30d98

MotionScript_30dba:
	set_velocities 80, 0, 0
	set_anim_script AnimScript_20647
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities 10, VEL_LEFT_1_00, 0
	set_velocities 10, VEL_LEFT_1_25, VEL_DOWN_0_75
	set_velocities 10, VEL_LEFT_2_00, VEL_DOWN_3_00
	set_velocities 10, VEL_LEFT_3_00, VEL_DOWN_1_25
	set_velocities 10, VEL_LEFT_3_00, VEL_DOWN_0_75
	set_velocities  0, VEL_LEFT_3_00, 0

MotionScript_30ddd:
.script_30ddd
	set_velocities  2, 0, VEL_DOWN_1_25
	branch_on_kirby_vertical_alignment .script_30dfb, .script_30dea
	jump_abs .script_30ddd
.script_30dea
	set_anim_script AnimScript_20662
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_25
	set_velocities  6, VEL_RIGHT_2_00, VEL_DOWN_1_8TH
	set_velocities  0, VEL_RIGHT_3_00, 0

.script_30dfb
	set_anim_script AnimScript_20659
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_1_8TH
	set_velocities  0, VEL_LEFT_3_00, 0

MotionScript_30e0c:
.loop
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_0_75, 0
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_0_25
	set_velocities  4, VEL_LEFT_1_25, 0
	set_velocities  4, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_00
	jump_abs .loop

; unreferenced
MotionScript_30e2a:
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_25
	set_velocities  4, VEL_RIGHT_0_75, 0
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_0_25
	set_velocities  4, VEL_RIGHT_1_25, 0
	set_velocities  4, VEL_RIGHT_1_00, 0
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_00
	jump_abs MotionScript_30e0c

MotionScript_30e48:
.loop
	set_velocities 40, 0, 0
	set_velocities  8, 0, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_3_00
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_00
	jump_abs .loop

MotionScript_30e7b:
	jump_random 25 percent + 1, .script_30e9c
	jump_random 33 percent + 1, .script_30eb1
	jump_random 50 percent + 1, .script_30ec6

	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_4_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities  0, VEL_RIGHT_1_00, VEL_DOWN_4_00

.script_30e9c
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_4_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_3_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_4_00

.script_30eb1
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_4_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_3_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_3_00
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_4_00

.script_30ec6
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_4_00
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_3_00
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  0, VEL_LEFT_1_00, VEL_DOWN_4_00

MotionScript_30edb:
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_object_properties StandardEnemyGravityProperties
	set_velocities  0, 0, 0

MotionScript_30eef:
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_object_properties StandardEnemyGravityProperties
	set_velocities  0, 0, 0

MotionScript_30f03:
.loop
	script_call MotionScript_30f13
	script_call MotionScript_30f35
	jump_rel .loop

MotionScript_30f0b:
.loop
	script_call MotionScript_30f35
	script_call MotionScript_30f13
	jump_rel .loop

MotionScript_30f13:
	script_repeat 6
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionScript_30f35:
	script_repeat 6
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

; unreferenced
MotionScript_30f57:
.loop
	script_call MotionScript_30f67
	script_call MotionScript_30f89
	jump_rel .loop

MotionScript_30f5f:
.loop
	script_call MotionScript_30f89
	script_call MotionScript_30f67
	jump_rel .loop

MotionScript_30f67:
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

MotionScript_30f89:
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

; unreferenced
MotionScript_30fab:
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_DOWN_0_50
	set_velocities 64, 0, VEL_DOWN_0_75
	set_velocities 32, 0, VEL_DOWN_0_50
	jump_abs MotionScript_30fab

MotionScript_30fba:
	set_anim_script AnimScript_24ddd
	script_repeat 2
	script_call MotionScript_30fef
	script_repeat_end
MotionScript_30fc5:
	set_anim_script AnimScript_24de5
	script_repeat 2
	script_call MotionScript_31002
	script_repeat_end
	jump_rel MotionScript_30fba

MotionScript_30fd2:
.loop
	set_anim_script AnimScript_24ddd
	script_repeat 4
	script_call MotionScript_30fef
	script_repeat_end
	set_anim_script AnimScript_24de5
	script_repeat 4
	script_call MotionScript_31002
	script_repeat_end
	jump_rel .loop

; unreferenced
MotionScript_30fea:
.loop
	script_call MotionScript_30fef
	jump_rel .loop

MotionScript_30fef:
	set_velocities  3, VEL_LEFT_0_50, 0
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  3, VEL_LEFT_0_50, 0
	script_ret

MotionScript_31002:
	set_velocities  3, VEL_RIGHT_0_50, 0
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities  3, VEL_RIGHT_0_50, 0
	script_ret

; unreferenced
MotionScript_31015:
	set_velocities 10, 0, VEL_UP_2_00
	set_velocities 10, 0, VEL_UP_0_75
	set_velocities 10, 0, 0
	set_velocities 10, 0, VEL_DOWN_0_50
	set_velocities 10, 0, VEL_DOWN_1_00
	set_velocities 14, 0, VEL_DOWN_2_00
	set_velocities  0, 0, 0

MotionScript_3102a:
.loop
	script_call MotionScript_3103a
	script_call MotionScript_3104d
	jump_rel .loop

MotionScript_31032:
.loop
	script_call MotionScript_3104d
	script_call MotionScript_3103a
	jump_rel .loop

MotionScript_3103a:
	script_repeat 5
	set_velocities  3, 0, 0
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_16TH
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_16TH
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_50
	script_repeat_end
	script_ret

MotionScript_3104d:
	script_repeat 5
	set_velocities  3, 0, 0
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_16TH
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_16TH
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_50
	script_repeat_end
	script_ret

MotionScript_31060:
	set_velocities  4, 0, 0
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  0, 0, 0

MotionScript_3106f:
	set_velocities  4, 0, 0
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  0, 0, 0

MotionScript_3107e:
	script_repeat 2
	set_velocities  3, 0, 0
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_16TH
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_16TH
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_50
	script_repeat_end
	jump_abs MotionScript_31093
MotionScript_31093:
	script_repeat 2
	set_velocities  3, 0, 0
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_16TH
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_16TH
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_50
	script_repeat_end
	jump_abs MotionScript_3107e

MotionScript_310a8:
.loop
	set_velocities 60, VEL_LEFT_0_75, 0
	set_velocities 60, VEL_RIGHT_0_75, 0
	jump_rel .loop

; unreferenced
MotionScript_310b0:
.loop
	set_velocities 40, VEL_LEFT_0_75, 0
	set_velocities 40, VEL_RIGHT_0_75, 0
	jump_rel .loop

; unreferenced
MotionScript_310b8:
.loop
	set_velocities 40, VEL_RIGHT_0_75, 0
	set_velocities 40, VEL_LEFT_0_75, 0
	jump_rel .loop

MotionScript_310c0:
	branch_kirby_pos .script_310c7, .script_310e5
.script_310c7
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

.script_310e5
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

MotionScript_31103:
	set_velocities 45, 0, VEL_DOWN_2_00
MotionScript_31106:
	script_repeat 1
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_1_25
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_31124:
	set_velocities  6, VEL_RIGHT_2_00, 0
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_0_50, 0
	play_sfx SFX_BOSS_DEFEAT
	set_velocities 13, VEL_LEFT_6_00, 0
	set_velocities  6, VEL_LEFT_4_00, 0
	set_velocities  6, VEL_LEFT_3_00, 0
	set_velocities  6, VEL_LEFT_2_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_2_00, 0
	set_velocities  6, VEL_RIGHT_3_00, 0
	set_velocities  6, VEL_RIGHT_4_00, 0
	set_velocities 13, VEL_RIGHT_6_00, 0
	set_velocities  6, VEL_LEFT_0_50, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_2_00, 0
	set_velocities  0, 0, 0

MotionScript_3115b:
	set_velocities  5, 0, VEL_UP_3_00
	set_velocities  5, 0, VEL_UP_2_00
	set_velocities  5, 0, VEL_UP_1_25
	set_velocities  5, 0, VEL_UP_0_75
	set_velocities  5, 0, VEL_UP_1_8TH
	set_velocities 16, 0, 0
	set_velocities  5, 0, VEL_DOWN_1_8TH
	set_velocities  5, 0, VEL_DOWN_0_75
	set_velocities  5, 0, VEL_DOWN_1_25
	set_velocities  5, 0, VEL_DOWN_2_00
	set_velocities  5, 0, VEL_DOWN_3_00
	set_velocities  0, 0, 0

MotionScript_3117f:
	set_velocities  6, VEL_LEFT_3_00, 0
	set_velocities  6, VEL_LEFT_3_00, VEL_DOWN_0_25
	set_velocities  6, VEL_LEFT_3_00, VEL_DOWN_0_75
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_1_8TH
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_1_8TH
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_1_00
	create_object AnimScript_Explosion, MotionScript_10008, ExplosionProperties
	script_end

MotionScript_3119c:
	set_velocities  5, VEL_LEFT_3_00, VEL_DOWN_2_00
	set_velocities  5, VEL_LEFT_3_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_2_00
	create_object AnimScript_Explosion, MotionScript_10008, ExplosionProperties
	script_end

MotionScript_311b9:
	jump_random 50 percent + 1, .script_311df
	position_offset -16, 24
	play_sfx SFX_PUFF
.loop_1
	set_velocities  2, VEL_LEFT_6_00, 0
	set_velocities  2, VEL_LEFT_6_00, VEL_UP_1_00
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_2_00
	set_velocities  1, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  1, VEL_LEFT_0_00, 0
	set_velocities  1, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_LEFT_3_00, 0
	set_velocities  2, VEL_LEFT_6_00, 0
	jump_abs .loop_1

.script_311df
	position_offset -16, 24
	play_sfx SFX_PUFF
.loop_2
	set_velocities  2, VEL_LEFT_6_00, 0
	set_velocities  2, VEL_LEFT_6_00, VEL_DOWN_1_00
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_2_00
	set_velocities  1, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  1, VEL_LEFT_0_00, 0
	set_velocities  1, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_LEFT_3_00, 0
	set_velocities  2, VEL_LEFT_6_00, 0
	jump_abs .loop_2

MotionScript_31201:
	calltable_random $07
	dw .script_31215
	dw .script_31219
	dw .script_3121d
	dw .script_31221
	dw .script_31225
	dw .script_31229
	dw .script_3122d
	dw .script_31231

	jump_rel .script_31235
.script_31215
	set_position 48, 32
	script_ret
.script_31219
	set_position 24, 32
	script_ret
.script_3121d
	set_position 40, 32
	script_ret
.script_31221
	set_position 56, 32
	script_ret
.script_31225
	set_position 72, 32
	script_ret
.script_31229
	set_position 88, 32
	script_ret
.script_3122d
	set_position 19, 32
	script_ret
.script_31231
	set_position 77, 32
	script_ret
.script_31235
	set_velocities 25, 0, 0
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  8, 0, VEL_DOWN_4_00
	branch_kirby_pos .script_3124e, .script_31278
.script_3124e
	play_sfx SFX_30
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_1_25
.script_3126a
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_50
	jump_rel .script_3126a
.script_31278
	play_sfx SFX_30
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_25
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_25
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_1_25
.script_31294
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_75, 0
	set_velocities 10, VEL_RIGHT_0_75, 0
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_50
	jump_rel .script_31294

; unreferenced
MotionScript_312a2:
	set_velocities 16, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_object_properties SparklingStarProperties
	jump_abs MotionScript_1032d_Loop

MotionScript_312b3:
.loop
	set_velocities 20, 0, 0
	set_velocities  2, 0, VEL_UP_1_00
	set_velocities  2, 0, VEL_DOWN_1_00
	jump_abs .loop

MotionScript_312bf:
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
MotionScript_31304:
	jump_if_flags hKirbyFlags3, KIRBY3F_UNK6, .script_3130d
	set_velocities  0, 0, VEL_DOWN_1_25
.script_3130d
	script_end

MotionScript_3130e:
	position_offset 0, -10
	script_repeat 12
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_0_75
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_0_75
	script_repeat_end
	script_end

MotionScript_31321:
	position_offset 0, -10
	script_repeat 12
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_0_75
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_0_75
	script_repeat_end
	script_end

MotionScript_31334:
	set_velocities 100, 0, 0
	set_object_properties Data_368e
	set_update_func Func_141b1, AnimScript_252c2
	set_velocities  0, 0, 0

MotionScript_31344:
	set_velocities 10, 0, 0
	set_velocities 24, VEL_LEFT_0_50, VEL_DOWN_3_00
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_25
	set_velocities  8, 0, VEL_UP_1_8TH
	set_scripts AnimScript_25334, MotionScript_313ab

MotionScript_31358:
	create_object AnimScript_25334, MotionScript_3138a, StandardEnemyProperties
	set_velocities  1, 0, 0
	script_delay 250
	script_delay 200
	jump_abs MotionScript_31358

MotionScript_31369:
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_25
	jump_abs MotionScript_31369

MotionScript_3138a:
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_25
	jump_abs MotionScript_3138a

MotionScript_313ab:
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
	jump_abs MotionScript_313ab

MotionScript_313cc:
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_0_75
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_2_00
MotionScript_313f3:
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_0_75
	jump_abs MotionScript_313cc

MotionScript_313ff:
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
MotionScript_31438:
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
	jump_abs MotionScript_313ff

MotionScript_31474:
	set_velocities 10, 0, 0
	script_call MotionScript_314a1
	set_velocities 10, 0, 0
	script_call MotionScript_314ae
	script_call MotionScript_314a1
	set_velocities 10, 0, 0
	script_call MotionScript_314ae
MotionScript_31489:
	set_velocities 10, 0, 0
	script_call MotionScript_314bb
	set_velocities 10, 0, 0
	script_call MotionScript_314c8
	script_call MotionScript_314bb
	set_velocities 10, 0, 0
	script_call MotionScript_314c8
	jump_abs MotionScript_31474

MotionScript_314a1:
	set_velocities 16, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities 16, VEL_LEFT_0_25, VEL_DOWN_0_50
	set_velocities 16, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities 24, VEL_LEFT_0_50, VEL_DOWN_2_00
	script_ret

MotionScript_314ae:
	set_velocities 24, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities 16, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities 16, VEL_LEFT_0_25, VEL_UP_0_50
	set_velocities 16, VEL_LEFT_0_50, VEL_UP_0_25
	script_ret

MotionScript_314bb:
	set_velocities 16, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_0_25, VEL_DOWN_0_50
	set_velocities 16, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities 24, VEL_RIGHT_0_50, VEL_DOWN_2_00
	script_ret

MotionScript_314c8:
	set_velocities 24, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities 16, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities 16, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities 16, VEL_RIGHT_0_50, VEL_UP_0_25
	script_ret

MotionScript_314d5:
	set_velocities 16, 0, 0
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_0_75
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_2_00, VEL_UP_0_75
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_0_75
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_1_25, VEL_DOWN_0_75
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  3, VEL_LEFT_3_00, 0
	set_velocities  4, VEL_LEFT_4_00, 0
	set_velocities  0, VEL_LEFT_6_00, 0

; unreferenced
MotionScript_31511:
	script_end

MotionScript_31512:
	script_repeat 2
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, 0, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_75
	script_repeat_end
MotionScript_31530:
	script_repeat 2
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, 0, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_75
	script_repeat_end
	jump_abs MotionScript_31512

MotionScript_31551:
	set_update_func Func_14105, NULL
	script_exec ScriptFunc_SetImmuneFlag
	set_anim_script AnimScript_25450
	set_velocities 80, 0, 0
.loop
	script_call MotionScript_3156c
	script_call MotionScript_3156c
	set_velocities  6, 0, 0
	jump_rel .loop

MotionScript_3156c:
	script_exec Func_495c
	jumptable wd3bd
	dw .script_31582
	dw .script_31586
	dw .script_3158a
	dw .script_3158e
	dw .script_31592
	dw .script_31596
	dw .script_3159a
	dw .script_3159e

.script_31582
	set_velocities 10, 0, VEL_UP_1_00
	script_ret
.script_31586
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_75
	script_ret
.script_3158a
	set_velocities 10, VEL_RIGHT_1_00, 0
	script_ret
.script_3158e
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_75
	script_ret
.script_31592
	set_velocities 10, 0, VEL_DOWN_1_00
	script_ret
.script_31596
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_75
	script_ret
.script_3159a
	set_velocities 10, VEL_LEFT_1_00, 0
	script_ret
.script_3159e
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_75
	script_ret

MotionScript_315a2:
	set_velocities  5, 0, 0
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_3_00
	set_velocities  5, 0, 0
	set_velocities 16, VEL_RIGHT_0_75, 0
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities 16, VEL_RIGHT_0_75, 0
	jump_abs MotionScript_315a2

MotionScript_315c6:
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
	jump_abs MotionScript_315c6

; unreferenced
MotionScript_315f3:
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_75
	set_anim_script AnimScript_20647
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_anim_script AnimScript_20647
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_0_75
	jump_abs MotionScript_315f3

MotionScript_31630:
	position_offset 4, 0
	set_velocities  0, VEL_LEFT_1_25, 0

MotionScript_31636:
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
	jump_abs MotionScript_31636

MotionScript_31681:
	set_update_func Func_141b1, AnimScript_25526
	set_velocities  0, 0, 0

MotionScript_31689:
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities 32, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities 32, VEL_RIGHT_0_75, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	jump_abs MotionScript_102f5

MotionScript_3169e:
	set_anim_script AnimScript_20000
	position_offset 0, 16
	set_velocities 50, 0, 0
	create_object AnimScript_25558, MotionScript_30e7b, StandardEnemyProperties
	jump_abs MotionScript_3169e

MotionScript_316b3:
	set_anim_script AnimScript_20000
	jump_random 50 percent + 1, .script_316bf
	set_velocities 60, 0, 0
.script_316bf
	set_velocities 24, 0, 0
	create_object AnimScript_25558, MotionScript_30e7b, StandardEnemyProperties
	play_sfx SFX_28
	jump_abs MotionScript_316b3

; unreferenced
MotionScript_316d0:
	set_velocities  1, 0, 0
	script_ret

; unreferenced
MotionScript_316d4:
	set_velocities 10, 0, 0
	script_ret

; unreferenced
MotionScript_316d8:
	set_velocities 20, 0, 0
	script_ret

; unreferenced
MotionScript_316dc:
	set_velocities 30, 0, 0
	script_ret

; unreferenced
MotionScript_316e0:
	create_object AnimScript_25561, MotionScript_10008, PuffOfSmokeProperties
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
	create_object AnimScript_25561, MotionScript_10008, PuffOfSmokeProperties
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3421
	script_ret

MotionScript_31748:
	set_velocities  6, 0, VEL_UP_0_75
	set_velocities  4, 0, VEL_UP_0_50
	set_velocities  4, 0, VEL_UP_1_8TH
	script_end

MotionScript_31752:
	set_velocities  0, 0, VEL_UP_1_25

; unreferenced
MotionScript_31755:
	set_velocities  0, VEL_LEFT_1_25, VEL_DOWN_1_25

; unreferenced
MotionScript_31758:
	set_velocities  0, VEL_RIGHT_1_25, VEL_DOWN_1_25

MotionScript_3175b:
	set_velocities  0, VEL_LEFT_1_25, VEL_UP_1_25

; unreferenced
MotionScript_3175e:
	set_velocities  0, VEL_RIGHT_1_25, VEL_UP_1_25

MotionScript_31761:
	set_velocities  0, VEL_LEFT_1_25, VEL_UP_1_00

MotionScript_31764:
	set_velocities  0, VEL_RIGHT_1_25, VEL_UP_1_00

MotionScript_31767:
	set_velocities  0, 0, VEL_DOWN_2_00

MotionScript_3176a:
	set_velocities  0, 0, VEL_UP_2_00

; unreferenced
MotionScript_3176d:
	set_velocities  0, VEL_RIGHT_2_00, VEL_UP_2_00

; unreferenced
MotionScript_31770:
	set_velocities  0, VEL_RIGHT_2_00, VEL_DOWN_2_00

; unreferenced
MotionScript_31773:
	set_velocities  0, VEL_LEFT_2_00, VEL_DOWN_2_00

; unreferenced
MotionScript_31776:
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_2_00

MotionScript_31779:
	set_velocities  0, 0, VEL_DOWN_1_25

; unreferenced
MotionScript_3177c:
	set_velocities  0, VEL_LEFT_1_00, VEL_DOWN_2_00

; unreferenced
MotionScript_3177f:
	set_velocities  0, VEL_RIGHT_2_00, VEL_DOWN_2_00

; unreferenced
MotionScript_31782:
	set_velocities  0, 0, VEL_UP_0_75

MotionScript_31785:
	set_velocities  0, 0, VEL_DOWN_4_00

MotionScript_31788:
	set_velocities  0, 0, VEL_UP_4_00

; unreferenced
MotionScript_3178b:
	set_velocities  0, 0, VEL_DOWN_1_00

MotionScript_3178e:
	set_velocities  0, 0, VEL_DOWN_6_00

; unreferenced
MotionScript_31791:
	set_velocities  0, VEL_RIGHT_4_00, VEL_DOWN_4_00

; unreferenced
MotionScript_31794:
	set_velocities  0, VEL_RIGHT_4_00, VEL_UP_4_00

MotionScript_31797:
	set_velocities  0, VEL_LEFT_4_00, VEL_DOWN_4_00

MotionScript_3179a:
	set_velocities  0, VEL_LEFT_4_00, VEL_UP_4_00

MotionScript_3179d:
	set_velocities 128, 0, VEL_UP_0_50
	set_velocities 128, 0, VEL_DOWN_0_50
	jump_abs MotionScript_3179d

MotionScript_317a6:
	set_velocities 128, 0, VEL_UP_0_50
	set_velocities 128, 0, VEL_DOWN_0_50
MotionScript_317ac:
	set_velocities 128, 0, VEL_DOWN_0_50
	set_velocities 128, 0, VEL_UP_0_50
	jump_abs MotionScript_317a6

MotionScript_317b5:
	set_velocities 128, VEL_LEFT_0_50, 0
	set_velocities 128, VEL_RIGHT_0_50, 0
	jump_abs MotionScript_317b5

MotionScript_317be:
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_25, VEL_DOWN_0_75
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_00
MotionScript_317c7:
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_2_00
MotionScript_317d0:
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_1_25
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_1_00
MotionScript_317d9:
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_25, VEL_DOWN_0_75
	set_velocities  6, VEL_RIGHT_2_00, VEL_DOWN_0_50
MotionScript_317e2:
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_1_25, VEL_UP_0_75
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_1_00
MotionScript_317eb:
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_2_00
MotionScript_317f4:
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_1_00
MotionScript_317fd:
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_1_25, VEL_UP_0_75
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_0_50
	jump_abs MotionScript_317be

MotionScript_31809:
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

MotionScript_31833:
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
MotionScript_31845:
	set_velocities  8, VEL_RIGHT_0_25, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	jump_abs MotionScript_31833

MotionScript_3185a:
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities  8, VEL_LEFT_0_75, 0
	set_velocities 16, VEL_LEFT_0_25, 0
	jump_abs MotionScript_3185a

; unreferenced
MotionScript_31866:
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities  8, VEL_RIGHT_0_75, 0
	set_velocities 16, VEL_RIGHT_0_25, 0
	jump_abs MotionScript_31866

MotionScript_31872:
	script_repeat 3
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities  8, VEL_LEFT_0_75, 0
	set_velocities 16, VEL_LEFT_0_25, 0
	script_repeat_end
	script_repeat 3
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities  8, VEL_RIGHT_0_75, 0
	set_velocities 16, VEL_RIGHT_0_25, 0
	script_repeat_end
	jump_abs MotionScript_31872

; unreferenced
MotionScript_3188d:
	set_velocities 28, 0, VEL_UP_2_00
	set_anim_script AnimScript_25817
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_0_75
	set_velocities  8, 0, VEL_DOWN_0_75
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities 20, 0, 0
	set_scripts AnimScript_257f0, MotionScript_3185a

MotionScript_318a9:
.loop
	set_anim_script AnimScript_257f0
	script_repeat 2
	set_velocities  8, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities 16, VEL_LEFT_1_16TH, 0
	set_velocities 16, 0, 0
	script_repeat_end
	set_anim_script AnimScript_257f9
	script_repeat 2
	set_velocities  8, VEL_RIGHT_0_75, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	set_velocities 16, VEL_RIGHT_1_16TH, 0
	set_velocities 16, 0, 0
	script_repeat_end
	jump_rel .loop

; unreferenced
MotionScript_318d3:
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	script_ret

MotionScript_318e0:
	script_call MotionScript_31962
	script_call MotionScript_31995
	jump_abs MotionScript_318e0

MotionScript_318e9:
	script_call MotionScript_319c3
	script_call MotionScript_319f6
	jump_abs MotionScript_318e9

MotionScript_318f2:
	script_call MotionScript_319c3
	script_call MotionScript_319c3
	script_call MotionScript_319c3
	script_call MotionScript_319f6
	script_call MotionScript_319f6
	script_call MotionScript_319f6
	jump_abs MotionScript_318f2

; unreferenced
MotionScript_31907:
	set_anim_script AnimScript_259c5
	set_velocities  8, VEL_LEFT_1_8TH, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_16TH
	set_velocities  8, VEL_LEFT_1_8TH, VEL_DOWN_1_16TH
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_16TH
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_1_16TH
	script_ret

MotionScript_31925:
	script_call MotionScript_31a29
	script_delay 10
	script_call MotionScript_31a29
	script_delay 30
	script_call MotionScript_31a29
	script_delay 20
	set_anim_script AnimScript_259ef
	set_velocities 16, VEL_LEFT_1_25, 0
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_1_8TH, 0
	script_call MotionScript_31a3b
	script_delay 10
	script_call MotionScript_31a3b
	script_delay 30
	script_call MotionScript_31a3b
	script_delay 20
	set_anim_script AnimScript_259f5
	set_velocities 16, VEL_RIGHT_1_25, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	jump_abs MotionScript_31925

MotionScript_31962:
	set_anim_script AnimScript_259d7
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_4_00
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_3_00
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_anim_script AnimScript_259e0
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_1_25
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_3_00
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_4_00
	play_sfx SFX_20
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_1_00
	script_ret

MotionScript_31995:
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_4_00
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_3_00
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_anim_script AnimScript_259e0
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_1_25
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_3_00
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_4_00
	play_sfx SFX_20
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_1_00
	script_ret

MotionScript_319c3:
	set_anim_script AnimScript_259d7
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_4_00
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_3_00
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_anim_script AnimScript_259e0
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_3_00
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_4_00
	play_sfx SFX_20
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_25
	script_ret

MotionScript_319f6:
	set_anim_script AnimScript_259d7
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_4_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_3_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_anim_script AnimScript_259e0
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_3_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_4_00
	play_sfx SFX_20
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_25
	script_ret

MotionScript_31a29:
	set_anim_script AnimScript_259e3
	set_velocities  8, VEL_LEFT_1_8TH, 0
	set_velocities  4, VEL_LEFT_2_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  1, VEL_LEFT_0_25, 0
	script_ret

MotionScript_31a3b:
	set_anim_script AnimScript_259e9
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	set_velocities  4, VEL_RIGHT_2_00, 0
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  1, VEL_RIGHT_0_25, 0
	script_ret

; unreferenced
MotionScript_31a4d:
	set_anim_script AnimScript_25a04
	set_velocities 120, VEL_LEFT_0_50, 0
	script_repeat 2
	script_call MotionScript_31a5e
	script_repeat_end
	jump_abs MotionScript_31a4d

MotionScript_31a5e:
	set_anim_script AnimScript_25a0d
	set_velocities 10, 0, 0
	set_velocities 10, 0, VEL_UP_1_00
	set_velocities 10, 0, VEL_UP_0_50
	script_ret

MotionScript_31a6d:
	set_anim_script AnimScript_25a0d
	set_velocities 10, 0, 0
	set_velocities 16, 0, VEL_UP_2_00
	set_velocities 16, 0, VEL_UP_1_25
	set_velocities 16, 0, VEL_UP_1_00
	set_velocities 16, 0, VEL_UP_0_50
	script_ret

MotionScript_31a82:
	set_anim_script AnimScript_259fb
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_velocities 160, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_anim_script AnimScript_25a04
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities 160, VEL_RIGHT_0_50, 0
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	jump_abs MotionScript_31a82

MotionScript_31aa1:
	set_anim_script AnimScript_259fb
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_velocities 24, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_anim_script AnimScript_25a04
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities 24, VEL_RIGHT_0_50, 0
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	jump_abs MotionScript_31aa1

MotionScript_31ac0:
	set_velocities 33, 0, VEL_DOWN_1_25
	set_anim_script AnimScript_25a1c
	set_velocities 10, 0, 0
.loop
	script_call MotionScript_31a5e
	jump_abs .loop

MotionScript_31ad1:
	set_anim_script AnimScript_25a4c
	jump_abs MotionScript_304a4

MotionScript_31ad9:
	set_anim_script AnimScript_25a1c
	set_velocities 48, 0, 0
	set_anim_script AnimScript_25a22
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_75
	set_anim_script AnimScript_25a1c
	set_velocities 32, 0, 0
.loop
	script_call MotionScript_31a6d
	jump_abs .loop

MotionScript_31b03:
	set_velocities  8, 0, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  8, 0, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_0_75
	jump_abs MotionScript_31b03

MotionScript_31b24:
	set_velocities 11, VEL_LEFT_0_25, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_25
	set_velocities 14, 0, 0
	set_velocities  0, VEL_LEFT_0_50, VEL_UP_3_00

MotionScript_31b3c:
	set_velocities 11, VEL_RIGHT_1_8TH, VEL_UP_3_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_1_25
	set_velocities 14, 0, 0
	set_velocities  0, VEL_RIGHT_0_50, VEL_UP_3_00

; unreferenced
MotionScript_31b54:
	set_velocities 40, 0, VEL_UP_2_00
	set_velocities  0, 0, 0

MotionScript_31b5a:
	set_value wBossHPCounter, $08
	set_value wd3c1, $05
	create_object AnimScript_2526d, MotionScript_10008, Data_3421
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
.script_31b8b
	set_position 132, 80
	set_anim_script AnimScript_25aaf
	script_repeat 2
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_3_00
	script_repeat_end
	script_exec Func_48f5
	jumptable wd3bd
	dw .script_31c2b
	dw .script_31c2b
	dw .script_31c2b
	dw .script_31c2b
	dw .script_31bec
	dw .script_31c61
	dw .script_31c61
	dw .script_31c61
	dw .script_31c61
	dw .script_31c61
	dw .script_31c61
	dw .script_31c61
	dw .script_31bec
	dw .script_31c2b
	dw .script_31c2b
	dw .script_31c2b

.script_31bec
	set_anim_script AnimScript_25b9c
	set_velocities  4, VEL_RIGHT_2_00, 0
	set_velocities  4, VEL_RIGHT_1_00, 0
	set_velocities  4, VEL_RIGHT_0_50, 0
	set_velocities  4, VEL_RIGHT_1_8TH, 0
	set_velocities  8, 0, 0
	play_sfx SFX_BOSS_DEFEAT
	set_velocities 12, VEL_LEFT_6_00, 0
	set_velocities  8, VEL_LEFT_4_00, 0
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities  8, VEL_RIGHT_4_00, 0
	set_velocities 12, VEL_RIGHT_6_00, 0
	set_velocities  4, VEL_LEFT_1_8TH, 0
	set_velocities  4, VEL_LEFT_0_50, 0
	set_velocities  4, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_2_00, 0
	jump_abs .script_31b8b
.script_31c2b
	set_anim_script AnimScript_25b9c
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_0_00, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_1_00
	play_sfx SFX_BOSS_DEFEAT
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities 13, VEL_LEFT_6_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_6_00, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_1_32TH
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	jump_abs .script_31b8b
.script_31c61
	set_anim_script AnimScript_25b9c
	set_velocities  6, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_0_00, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_00
	play_sfx SFX_BOSS_DEFEAT
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities 13, VEL_LEFT_6_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_6_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_4_00, VEL_UP_1_32TH
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	jump_abs .script_31b8b

; unreferenced
MotionScript_31c97:
	set_velocities  0, 2.125, 2.125

; unreferenced
MotionScript_31c9a:
	set_velocities  0, 28.125, 2.125

MotionScript_31c9d:
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_1_00

MotionScript_31ca0:
	set_velocities  0, VEL_LEFT_2_00, VEL_DOWN_1_00

MotionScript_31ca3:
	script_delay 2
	script_exec Func_48f5
	jumptable wd3bd
	dw .script_31ccb
	dw .script_31ccb
	dw .script_31ce0
	dw .script_31ce0
	dw .script_31cf4
	dw .script_31d08
	dw .script_31d08
	dw .script_31d1c
	dw .script_31d1c
	dw .script_31d1c
	dw .script_31d08
	dw .script_31d08
	dw .script_31cf4
	dw .script_31ce0
	dw .script_31ce0
	dw .script_31ccb

.script_31ccb
	set_velocities  2, VEL_LEFT_4_00, VEL_UP_3_00
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_3_00
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_8TH, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_8TH, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  0, VEL_RIGHT_2_00, VEL_UP_2_00

.script_31ce0
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_6_00
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_4_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_3_00, 0
	jump_rel .script_31ce0

.script_31cf4
	set_velocities  2, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_4_00, VEL_UP_6_00
	set_velocities  2, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_4_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_4_00, VEL_DOWN_6_00
	set_velocities  2, VEL_LEFT_4_00, VEL_DOWN_2_00
	jump_rel .script_31cf4

.script_31d08
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_6_00
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_3_00, 0
	jump_rel .script_31d08

.script_31d1c
	set_velocities  2, VEL_LEFT_4_00, VEL_DOWN_3_00
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_3_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_1_8TH, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_8TH, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  0, VEL_RIGHT_2_00, VEL_DOWN_2_00

; unreferenced
MotionScript_31d31:
	script_exec_arg ScriptFunc_AddScore, $05
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	set_flags hEngineFlags, HURT_PAL_EFFECT, NONE
	set_flags wd1a0 + OBJECT_SLOT_KIRBY, $30, NONE
	set_value wFoodPowerUpCounter + 0, $00
	set_value wFoodPowerUpCounter + 1, $00
	set_value wPowerUpAttack, $00
	script_repeat 16
	set_velocities  1, 0, VEL_UP_1_00
	set_velocities  2, 0, 0
	inc_value wSCY
	dec_value wObjectYCoords + (OBJECT_SLOT_KIRBY * 3) + $1
	dec_value wKirbyScreenY
	script_repeat_end
	inc_value wLevelYSection
	set_flags hKirbyFlags5, KIRBY5F_UNK5, NONE
	set_flags hEngineFlags, KABOOLA_BATTLE | ENGINEF_UNK6, NONE
	set_velocities  0, 0, 0

MotionScript_31d72:
	set_abs_pos
	set_position 92, 64
	set_velocities  1, 0, 0
	set_rel_pos
	jump_abs MotionScript_1032d

MotionScript_31d7d:
.script_31d7d
	script_exec Func_48f5
	jumptable wd3bd
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da8
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3
	dw .script_31da3

.script_31da3
	set_velocities 12, 0, 0
	jump_rel .script_31d7d
.script_31da8
	set_object_properties Data_366a
	set_update_func Func_141b1, AnimScript_25a6f
	set_velocities  0, 0, 0

MotionScript_31db5:
	set_anim_script AnimScript_258f9
.script_31dba
	set_velocities  8, 0, 0
	script_exec Func_495c
	jumptable wd3bd
	dw .script_31dba
	dw .script_31dba
	dw .script_31dba
	dw .script_31dba
	dw .script_31dd3
	dw .script_31dba
	dw .script_31dba
	dw .script_31dba

.script_31dd3
	set_velocities 30, 0, 0
	set_anim_script AnimScript_25908
	set_velocities 50, 0, 0
	set_anim_script AnimScript_25917
	set_velocities 50, 0, 0
MotionScript_31de6:
	set_velocities 60, 0, VEL_UP_1_8TH
	play_sfx SFX_28
	set_update_func Func_14208, NULL
	set_velocities  0, 0, 0

MotionScript_31df5:
.loop
	script_repeat 2
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_1_8TH
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_1_8TH
	script_repeat_end
	script_repeat 4
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_1_8TH
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_1_8TH
	script_repeat_end
	script_repeat 2
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_1_8TH
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_1_8TH
	script_repeat_end
	jump_rel .loop

MotionScript_31e24:
	set_velocities  5, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities  5, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  5, 0, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_1_8TH, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  5, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities  5, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  5, VEL_RIGHT_0_50, VEL_UP_1_8TH
	script_repeat 3
	set_velocities  5, 0, VEL_DOWN_1_00
	set_velocities  5, VEL_LEFT_1_8TH, VEL_DOWN_1_00
	set_velocities  5, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  5, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  5, VEL_RIGHT_0_50, VEL_DOWN_1_00
	script_repeat_end
	set_velocities  5, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  5, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  5, 0, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_1_8TH, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  5, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities  5, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  5, 0, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_1_8TH, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_0_50, VEL_UP_1_00
	jump_abs MotionScript_31e24

MotionScript_31e72:
.loop
	set_velocities 100, 0, 0
	set_velocities 10, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_25
	set_velocities  7, 0, VEL_UP_0_75
	set_velocities  7, 0, VEL_UP_1_8TH
	set_velocities  6, 0, 0
	set_velocities  6, 0, 0
	set_velocities  7, 0, VEL_DOWN_1_8TH
	set_velocities  7, 0, VEL_DOWN_0_75
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities 10, 0, VEL_DOWN_2_00
	jump_rel .loop

MotionScript_31e95:
	set_velocities 40, VEL_LEFT_0_50, VEL_UP_2_00
	script_call MotionScript_31ea7
	set_velocities  0, VEL_LEFT_0_50, VEL_UP_2_00

MotionScript_31e9e:
	set_velocities 40, VEL_LEFT_0_50, VEL_DOWN_2_00
	script_call MotionScript_31ea7
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_2_00

MotionScript_31ea7:
	set_anim_script AnimScript_25c49
	set_velocities 10, 0, 0
	create_object AnimScript_2530a, MotionScript_3179a, ProjectileProperties
	create_object AnimScript_2530a, MotionScript_Projectile_Left, ProjectileProperties
	create_object AnimScript_2530a, MotionScript_31797, ProjectileProperties
	script_ret

MotionScript_31ec5:
	branch_on_kirby_vertical_alignment .loop, .loop
	set_velocities  1, 0, 0
	jump_abs MotionScript_31ec5
.loop
	set_update_func Func_14208, NULL
	set_scripts AnimScript_262c4, MotionScript_10008

; unreferenced
MotionScript_31edc:
	set_update_func Func_14208, NULL
	set_scripts AnimScript_262c4, MotionScript_10008

MotionScript_31ee6:
	set_velocities 32, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities 32, VEL_LEFT_1_00, VEL_DOWN_1_25
	set_velocities 32, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities 32, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities 32, VEL_LEFT_1_00, VEL_UP_1_25
	set_velocities 32, VEL_LEFT_0_50, VEL_UP_1_00
	jump_abs MotionScript_31ee6

MotionScript_31efb:
	set_velocities 32, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities 32, VEL_RIGHT_1_00, VEL_DOWN_1_25
	set_velocities 32, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities 32, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities 32, VEL_RIGHT_1_00, VEL_UP_1_25
	set_velocities 32, VEL_RIGHT_0_50, VEL_UP_1_00
	jump_abs MotionScript_31efb

MotionScript_31f10:
	set_velocities 32, VEL_LEFT_2_00, 0
	set_velocities 32, 0, VEL_DOWN_2_00
	set_velocities 32, VEL_LEFT_2_00, 0
	set_velocities 32, 0, VEL_UP_2_00
	jump_abs MotionScript_31f10

MotionScript_31f1f:
	script_repeat 10
	set_velocities  2, 0, VEL_DOWN_1_00
	set_velocities  2, 0, VEL_UP_1_00
	script_repeat_end
	set_velocities  0, VEL_LEFT_1_00, 0

MotionScript_31f2b:
	set_velocities 64, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities 64, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities 64, VEL_RIGHT_0_50, VEL_DOWN_1_25
	jump_abs MotionScript_31f2b

MotionScript_31f37:
	set_velocities 64, VEL_LEFT_0_25, VEL_DOWN_0_75
	set_velocities 64, VEL_LEFT_0_25, VEL_UP_0_75
	set_velocities 64, VEL_LEFT_0_25, VEL_DOWN_0_75
	set_velocities 64, VEL_RIGHT_0_25, VEL_UP_0_75
	set_velocities 64, VEL_RIGHT_0_25, VEL_DOWN_0_75
	set_velocities 64, VEL_RIGHT_0_25, VEL_UP_0_75
	jump_abs MotionScript_31f37

MotionScript_31f4c:
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_25
	set_velocities  6, 0, VEL_UP_1_00
	set_velocities  6, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  0, 0, 0

MotionScript_31f61:
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
	jump_abs MotionScript_31f61

; unreferenced
MotionScript_31f8e:
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
	jump_abs MotionScript_31f8e

MotionScript_31fcd:
	set_velocities  8, 0, VEL_UP_2_00
MotionScript_31fd0:
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_8TH
	jump_abs MotionScript_10444

MotionScript_31fdf:
	set_velocities  8, 0, VEL_DOWN_2_00
MotionScript_31fe2:
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_1_8TH
	jump_abs MotionScript_10444

; unreferenced
MotionScript_31fee:
	branch_kirby_pos .script_31ff5, .script_3200a
.script_31ff5
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	jump_abs .script_31ff5
.script_3200a
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_00
	jump_abs .script_3200a

MotionScript_3201f:
	script_repeat 2
	script_call MotionScript_3204a
	script_call MotionScript_3204a
	script_call MotionScript_3204a
	script_call MotionScript_32080
	script_call MotionScript_32080
	script_call MotionScript_32080
	script_repeat_end
	set_anim_script AnimScript_25d2f
	script_repeat 8
	set_velocities  2, VEL_RIGHT_2_00, 0
	set_velocities  2, VEL_LEFT_2_00, 0
	script_repeat_end
	set_update_func ObjFunc_CountdownToExplosion, 1
	jump_abs MotionScript_3201f

MotionScript_3204a:
	script_exec Func_495c
	jumptable wd3bd
	dw .script_32060
	dw .script_32064
	dw .script_32068
	dw .script_3206c
	dw .script_32070
	dw .script_32074
	dw .script_32078
	dw .script_3207c

.script_32060
	set_velocities 10, 0, VEL_UP_1_00
	script_ret
.script_32064
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_75
	script_ret
.script_32068
	set_velocities 10, VEL_RIGHT_1_00, 0
	script_ret
.script_3206c
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_75
	script_ret
.script_32070
	set_velocities 10, 0, VEL_DOWN_1_00
	script_ret
.script_32074
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_75
	script_ret
.script_32078
	set_velocities 10, VEL_LEFT_1_00, 0
	script_ret
.script_3207c
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_75
	script_ret

MotionScript_32080:
	script_exec Func_495c
	jumptable wd3bd
	dw .script_32096
	dw .script_3209a
	dw .script_3209e
	dw .script_320a2
	dw .script_320a6
	dw .script_320aa
	dw .script_320ae
	dw .script_320b2

.script_32096
	set_velocities 10, 0, VEL_UP_0_75
	script_ret
.script_3209a
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_50
	script_ret
.script_3209e
	set_velocities 10, VEL_RIGHT_0_75, 0
	script_ret
.script_320a2
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_ret
.script_320a6
	set_velocities 10, 0, VEL_DOWN_0_75
	script_ret
.script_320aa
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_0_50
	script_ret
.script_320ae
	set_velocities 10, VEL_LEFT_0_75, 0
	script_ret
.script_320b2
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_0_50
	script_ret

MotionScript_320b6:
	branch_kirby_pos .script_320bd, .script_320d9
.script_320bd
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
.script_320d9
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

MotionScript_320f5:
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

MotionScript_32111:
	set_update_func Func_140c2, AnimScript_25f27
	script_call MotionScript_320f5
	create_object AnimScript_25f4b, MotionScript_10008, Data_3685
	set_scripts AnimScript_25f60, MotionScript_10008

MotionScript_32125:
	set_update_func Func_140c2, AnimScript_25f27
	script_call MotionScript_320f5
	create_object AnimScript_25f4b, MotionScript_10008, Data_3685
	set_scripts AnimScript_25f72, MotionScript_10008

MotionScript_32139:
	set_update_func Func_140c2, AnimScript_25f39
	script_call MotionScript_320f5
	create_object AnimScript_25f4b, MotionScript_10008, Data_3685
	set_scripts AnimScript_25f84, MotionScript_10008

MotionScript_3214d:
	set_update_func Func_140c2, AnimScript_25f39
	script_call MotionScript_320f5
	create_object AnimScript_25f4b, MotionScript_10008, Data_3685
	set_scripts AnimScript_25f96, MotionScript_10008

MotionScript_ParasolSeparated:
	branch_kirby_pos .script_32168, .script_32190
.script_32168
	position_offset 0, -16
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_object_properties Data_3685
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_update_func Func_14208, NULL
	play_sfx SFX_28
	set_velocities 200, 0, 0
	set_velocities 100, 0, 0
	create_object AnimScript_Explosion, MotionScript_10008, ExplosionProperties
	script_end
.script_32190
	position_offset 0, -16
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_25
	set_object_properties Data_3685
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_1_25
	set_update_func Func_14208, NULL
	play_sfx SFX_28
	set_velocities 200, 0, 0
	set_velocities 100, 0, 0
	create_object AnimScript_Explosion, MotionScript_10008, ExplosionProperties
	script_end

MotionScript_321b8:
	set_velocities 16, 0, 0
	set_velocities 16, 0, VEL_DOWN_0_25
	set_velocities 16, 0, VEL_DOWN_0_50
	set_velocities 16, 0, VEL_DOWN_0_75
	script_repeat 3
	create_object AnimScript_25d78, MotionScript_3178e, ProjectileProperties
	set_velocities  4, 0, VEL_UP_3_00
	set_velocities  4, 0, VEL_DOWN_2_00
	set_velocities  4, 0, VEL_UP_1_00
	set_velocities  4, 0, 0
	script_repeat_end
	jump_abs MotionScript_321b8

MotionScript_321dd:
	set_velocities 20, VEL_LEFT_1_00, VEL_DOWN_3_00
MotionScript_321e0:
	set_velocities 15, VEL_RIGHT_1_25, 0
	set_velocities 20, VEL_LEFT_1_25, VEL_UP_3_00
	set_velocities 20, VEL_LEFT_1_25, VEL_DOWN_3_00
	set_velocities 15, VEL_RIGHT_1_25, 0
	set_velocities 20, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities 20, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities 15, VEL_LEFT_1_25, 0
	set_velocities 20, VEL_RIGHT_1_25, VEL_UP_3_00
	set_velocities 20, VEL_RIGHT_1_25, VEL_DOWN_3_00
	set_velocities 15, VEL_LEFT_1_25, 0
	set_velocities 20, VEL_RIGHT_1_00, VEL_UP_3_00
	jump_abs MotionScript_321dd

MotionScript_32204:
	set_velocities  4, VEL_LEFT_2_00, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_4_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_4_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_4_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_4_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_1_25
	jump_abs MotionScript_32204

MotionScript_32237:
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_4_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_4_00
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_2_00, VEL_DOWN_1_25
MotionScript_3224f:
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_4_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_4_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_2_00, VEL_UP_1_25
	jump_abs MotionScript_32237

MotionScript_3226a:
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_0_75
	set_velocities  6, VEL_LEFT_6_00, VEL_UP_0_25
	set_velocities  6, VEL_LEFT_4_00, VEL_DOWN_0_25
	set_velocities  6, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_8TH, VEL_DOWN_1_32TH
	set_velocities  3, VEL_RIGHT_1_8TH, VEL_DOWN_1_32TH
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_4_00, VEL_DOWN_0_25
	set_velocities  4, VEL_RIGHT_6_00, VEL_UP_0_25
	set_velocities  0, VEL_RIGHT_3_00, VEL_UP_0_75

; unreferenced
MotionScript_32288:
	script_end

MotionScript_32289:
	set_velocities  9, VEL_LEFT_2_00, VEL_UP_0_75
	set_velocities  9, VEL_LEFT_6_00, VEL_UP_0_25
	set_velocities  9, VEL_LEFT_4_00, VEL_DOWN_0_25
	set_velocities  9, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_32TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_32TH
	set_velocities  9, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities  9, VEL_RIGHT_4_00, VEL_DOWN_0_25
	set_velocities  9, VEL_RIGHT_6_00, VEL_UP_0_25
	set_velocities  9, VEL_RIGHT_2_00, VEL_UP_0_50
	script_end

MotionScript_322a8:
	set_velocities  9, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  9, VEL_LEFT_6_00, VEL_UP_1_00
	set_velocities  9, VEL_LEFT_4_00, VEL_UP_1_00
	set_velocities  9, VEL_LEFT_1_25, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  9, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities  9, VEL_RIGHT_4_00, VEL_DOWN_1_00
	set_velocities  9, VEL_RIGHT_6_00, VEL_DOWN_1_00
	set_velocities  9, VEL_RIGHT_2_00, VEL_DOWN_1_00
	script_end

MotionScript_322c7:
	set_velocities  9, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  9, VEL_LEFT_6_00, VEL_DOWN_1_00
	set_velocities  9, VEL_LEFT_4_00, VEL_DOWN_1_00
	set_velocities  9, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  9, VEL_RIGHT_1_25, VEL_UP_0_50
	set_velocities  9, VEL_RIGHT_4_00, VEL_UP_1_00
	set_velocities  9, VEL_RIGHT_6_00, VEL_UP_1_00
	set_velocities  9, VEL_RIGHT_2_00, VEL_UP_1_00
	script_end

MotionScript_322e6:
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_0_75
	set_velocities  6, VEL_RIGHT_6_00, VEL_UP_0_25
	set_velocities  6, VEL_RIGHT_4_00, VEL_DOWN_0_25
	set_velocities  6, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_8TH, VEL_DOWN_1_32TH
	set_velocities  3, VEL_LEFT_1_8TH, VEL_DOWN_1_32TH
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_4_00, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_6_00, VEL_UP_0_25
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_0_75

; unreferenced
MotionScript_32304:
	script_end

MotionScript_32305:
	set_velocities  9, VEL_RIGHT_2_00, VEL_DOWN_0_75
	set_velocities  4, VEL_RIGHT_6_00, VEL_DOWN_0_75
	script_end

MotionScript_3230c:
	create_object AnimScript_2611c, MotionScript_10008, Data_3421
.loop
	set_velocities  1, 0, 0
	script_delay 10
	create_object AnimScript_26119, MotionScript_32322, Data_3421
	jump_abs .loop

MotionScript_32322:
	set_velocities 48, 0, VEL_DOWN_2_00
	script_end

MotionScript_32326:
	jumptable_random 3
	dw .script_32330
	dw .script_32333
	dw .script_32336
	dw .script_32339

.script_32330
	set_velocities  0, VEL_LEFT_0_25, VEL_DOWN_1_25

.script_32333
	set_velocities  0, VEL_LEFT_1_8TH, VEL_DOWN_1_25

.script_32336
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_1_25

.script_32339
	set_velocities  0, VEL_LEFT_1_16TH, VEL_DOWN_1_25

MotionScript_3233c:
	script_exec Func_4ad6
	jump_if_flags hKirbyFlags3, KIRBY3F_UNK6, .script_3234f
	jumptable_random 3
	dw MotionScript_3235d
	dw MotionScript_32360
	dw MotionScript_32363
	dw MotionScript_32366

.script_3234f
	script_end

MotionScript_32350:
	script_exec Func_4ad6
	jump_if_flags hKirbyFlags3, KIRBY3F_UNK6, .loop
	jump_abs MotionScript_31779
.loop
	script_end

MotionScript_3235d:
	set_velocities  0, VEL_RIGHT_0_25, VEL_DOWN_1_25

MotionScript_32360:
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_1_25

MotionScript_32363:
	set_velocities  1, VEL_LEFT_0_25, VEL_DOWN_1_25
MotionScript_32366:
	set_velocities  0, VEL_LEFT_1_8TH, VEL_DOWN_1_25

MotionScript_32369:
.script_32369
	script_exec Func_48f5
	jumptable wd3bd
	dw .script_3238f
	dw .script_3238f
	dw .script_3238f
	dw .script_3238f
	dw .script_3239a
	dw .script_323a2
	dw .script_323a2
	dw .script_323a2
	dw .script_323a2
	dw .script_323a2
	dw .script_323a2
	dw .script_323a2
	dw .script_3239a
	dw .script_3238f
	dw .script_3238f
	dw .script_3238f

.script_3238f
	set_velocities 16, VEL_LEFT_2_00, 0
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities 16, VEL_RIGHT_2_00, 0
	jump_rel .script_32369
.script_3239a
	set_velocities 16, VEL_LEFT_2_00, 0
	set_velocities 16, VEL_RIGHT_2_00, 0
	jump_rel .script_32369
.script_323a2
	set_velocities 16, VEL_LEFT_2_00, 0
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities 16, VEL_RIGHT_2_00, 0
	jump_rel .script_32369

MotionScript_323ad:
	set_velocities 40, 0, 0
	script_repeat 2
	set_velocities  8, VEL_RIGHT_4_00, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_4_00, VEL_UP_1_8TH
	position_offset 0, 14
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_8TH
	script_repeat_end
	set_velocities 30, VEL_RIGHT_3_00, VEL_UP_1_8TH
	script_end

MotionScript_323f6:
	script_call MotionScript_32473
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_75
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_75
	set_velocities 32, 0, 0
	script_call MotionScript_32473
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities 10, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_25, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_1_8TH, VEL_UP_0_50
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

MotionScript_32473:
	script_repeat 2
	set_velocities 18, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 11, VEL_RIGHT_0_25, 0
	set_velocities 18, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities 11, VEL_RIGHT_0_25, 0
	script_repeat_end
	script_ret

MotionScript_32483:
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
	jump_abs MotionScript_32483

MotionScript_324ad:
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

MotionScript_324e7:
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

MotionScript_32508:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
MotionScript_3250e:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_75
MotionScript_32511:
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_2_00
MotionScript_32514:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_25
MotionScript_3251a:
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_8TH
MotionScript_3251d:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_2_00
	jump_abs MotionScript_32508

MotionScript_32523:
	script_call MotionScript_3257c
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  6, 0, VEL_DOWN_4_00
	set_scripts AnimScript_264fd, MotionScript_10008

MotionScript_3253a:
	script_call MotionScript_3257c
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities 11, 0, VEL_DOWN_3_00
	set_scripts AnimScript_264fd, MotionScript_10008

MotionScript_3254e:
	script_call MotionScript_3257c
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  9, 0, VEL_DOWN_4_00
	set_scripts AnimScript_264fd, MotionScript_10008

MotionScript_32565:
	script_call MotionScript_3257c
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  6, 0, VEL_DOWN_4_00
	set_scripts AnimScript_264fd, MotionScript_10008

MotionScript_3257c:
	set_velocities 89, 0, 0
	script_repeat 3
	set_velocities  2, 0, VEL_UP_2_00
	set_velocities  2, 0, VEL_DOWN_2_00
	script_repeat_end
	script_ret

MotionScript_32589:
	set_velocities 144, 0, 0
	set_velocities 100, 0, 0
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_velocities  2, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  9, 0, VEL_DOWN_2_00
	set_scripts AnimScript_264fd, MotionScript_10008

MotionScript_325a6:
	set_velocities 106, 0, 0
	set_velocities 96, 0, 0
	set_velocities 38, 0, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_2_00
	script_repeat 3
	set_velocities  2, 0, VEL_DOWN_2_00
	set_velocities  2, 0, VEL_UP_2_00
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_325be:
	set_velocities 106, 0, 0
	set_velocities  8, VEL_LEFT_1_8TH, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities 64, 0, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	set_velocities  0, 0, 0

MotionScript_325d3:
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

MotionScript_32601:
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

MotionScript_32635:
	set_velocities 50, 0, 0
	set_velocities 45, 0, VEL_DOWN_2_00
	set_velocities 16, 0, 0
	script_end

MotionScript_3263f:
	set_velocities 96, 0, 0
	set_velocities 132, 0, 0
.loop
	create_object AnimScript_26594, MotionScript_32650, Data_3425
	script_delay 7
	jump_rel .loop

MotionScript_32650:
	calltable_random $0f
	dw .script_32684
	dw .script_32688
	dw .script_3268c
	dw .script_32690
	dw .script_32694
	dw .script_32698
	dw .script_3269c
	dw .script_326a0
	dw .script_326a4
	dw .script_326a8
	dw .script_326ac
	dw .script_326b0
	dw .script_326b4
	dw .script_326b8
	dw .script_326bc
	dw .script_326c0

	jumptable_random 7
	dw .script_326c4
	dw .script_326d9
	dw .script_326ee
	dw .script_32703
	dw .script_32715
	dw .script_326c4
	dw .script_326d9
	dw .script_326ee

.script_32684
	position_offset -2, -6
	script_ret
.script_32688
	position_offset -5, -4
	script_ret
.script_3268c
	position_offset -8, -8
	script_ret
.script_32690
	position_offset -11, -6
	script_ret
.script_32694
	position_offset -14, -4
	script_ret
.script_32698
	position_offset -17, -8
	script_ret
.script_3269c
	position_offset 0, -6
	script_ret
.script_326a0
	position_offset -1, -4
	script_ret
.script_326a4
	position_offset 2, -8
	script_ret
.script_326a8
	position_offset 5, -6
	script_ret
.script_326ac
	position_offset 8, -4
	script_ret
.script_326b0
	position_offset 11, -8
	script_ret
.script_326b4
	position_offset 14, -6
	script_ret
.script_326b8
	position_offset 17, -4
	script_ret
.script_326bc
	position_offset 0, -8
	script_ret
.script_326c0
	position_offset 1, -6
	script_ret
.script_326c4
	set_velocities  3, 0, VEL_UP_1_00
	set_velocities  3, 0, VEL_UP_0_50
	set_velocities  3, 0, VEL_DOWN_1_00
	set_velocities  4, 0, VEL_DOWN_1_25
	set_velocities  4, 0, VEL_DOWN_2_00
	set_velocities  4, 0, VEL_DOWN_3_00
	set_velocities  0, 0, VEL_DOWN_4_00

.script_326d9
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_3_00
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_4_00

.script_326ee
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_3_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_4_00

.script_32703
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  0, VEL_LEFT_1_00, VEL_DOWN_4_00

.script_32715
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities  0, VEL_RIGHT_1_00, VEL_DOWN_4_00

MotionScript_32727:
	set_velocities 156, 0, 0
	set_velocities 160, 0, 0
	set_velocities 96, 0, 0
	set_velocities 64, 0, 0
	set_velocities 48, 0, 0
	set_velocities 112, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 20, VEL_RIGHT_1_16TH, VEL_DOWN_0_25
	set_scripts AnimScript_Hit, MotionScript_10008

MotionScript_32741:
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

MotionScript_32793:
	jumptable_random 3
	dw .script_3279d
	dw .script_327a0
	dw .script_327a3
	dw .script_327a6

.script_3279d
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_3_00

.script_327a0
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_3_00

.script_327a3
	set_velocities  0, VEL_LEFT_2_00, VEL_UP_4_00

.script_327a6
	set_velocities  0, VEL_LEFT_1_25, VEL_UP_4_00

MotionScript_327a9:
	set_velocities 48, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_2_00
	script_end

MotionScript_327bf:
	set_velocities 156, 0, 0
	script_delay 160
	script_delay 96
	script_delay 80
	set_velocities 80, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities 32, 0, 0
	set_velocities  0, 0, 0

MotionScript_327d1:
	script_exec Func_48a3
	script_exec Func_4aad
	set_position 0, 0
	set_velocities  1, 0, 0
	set_update_func Func_1428c, NULL
	set_velocities 132, 0, 0
	set_velocities 24, VEL_RIGHT_2_00, VEL_DOWN_2_00
	create_object AnimScript_20000, MotionScript_32804, Data_3425
	set_velocities 160, 0, 0
	set_velocities 64, VEL_RIGHT_2_00, VEL_DOWN_0_50
	set_velocities 64, VEL_RIGHT_2_00, VEL_DOWN_1_8TH
	set_velocities 80, VEL_RIGHT_2_00, 0
	set_velocities 32, VEL_RIGHT_1_00, 0
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities  0, 0, 0

MotionScript_32804:
	script_repeat 23
	create_object AnimScript_Star, MotionScript_32812, Data_3425
	set_velocities  6, 0, 0
	script_repeat_end
	script_end

MotionScript_32812:
	calltable_random $0f
	dw .script_32838
	dw .script_3283c
	dw .script_32840
	dw .script_32844
	dw .script_32848
	dw .script_3284c
	dw .script_32850
	dw .script_32854
	dw .script_32858
	dw .script_3285c
	dw .script_32860
	dw .script_32864
	dw .script_32868
	dw .script_3286c
	dw .script_32870
	dw .script_32874

	set_velocities 60, VEL_LEFT_3_00, VEL_UP_2_00
	script_end
.script_32838
	set_position 176, 168
	script_ret
.script_3283c
	set_position 176, 148
	script_ret
.script_32840
	set_position 176, 128
	script_ret
.script_32844
	set_position 176, 108
	script_ret
.script_32848
	set_position 176, 88
	script_ret
.script_3284c
	set_position 176, 68
	script_ret
.script_32850
	set_position 176, 48
	script_ret
.script_32854
	set_position 176, 28
	script_ret
.script_32858
	set_position 156, 168
	script_ret
.script_3285c
	set_position 136, 168
	script_ret
.script_32860
	set_position 116, 168
	script_ret
.script_32864
	set_position 96, 168
	script_ret
.script_32868
	set_position 76, 168
	script_ret
.script_3286c
	set_position 56, 168
	script_ret
.script_32870
	set_position 36, 168
	script_ret
.script_32874
	set_position 16, 168
	script_ret

MotionScript_32878:
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	script_repeat 10
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_32887:
.loop
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	play_sfx SFX_EXPLOSION
	jump_rel .loop

MotionScript_32893:
	set_velocities 16, VEL_LEFT_1_32TH, VEL_UP_1_8TH
	play_sfx SFX_WARP_STAR
	set_velocities 16, VEL_LEFT_1_16TH, VEL_UP_0_50
	set_velocities  0, VEL_LEFT_1_8TH, VEL_UP_1_00

MotionScript_328a0:
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_UP_0_50

MotionScript_328a6:
	set_velocities 120, 0, 0
	jump_abs MotionScript_328c4
MotionScript_328ac:
	set_velocities 120, 0, 0
	jump_abs MotionScript_328d0
MotionScript_328b2:
	set_velocities 120, 0, 0
	jump_abs MotionScript_328dc
MotionScript_328b8:
	set_velocities 120, 0, 0
	jump_abs MotionScript_328e8
MotionScript_328be:
	set_velocities 120, 0, 0
	jump_abs MotionScript_328f4
MotionScript_328c4:
	set_velocities  4, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_3_00, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_4_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_4_00, VEL_UP_0_50
MotionScript_328d0:
	set_velocities  4, VEL_RIGHT_4_00, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_4_00, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_3_00, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_2_00
MotionScript_328dc:
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_3_00, VEL_DOWN_1_25
MotionScript_328e8:
	set_velocities  4, VEL_LEFT_4_00, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_4_00, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_4_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_4_00, VEL_UP_1_00
MotionScript_328f4:
	set_velocities  4, VEL_LEFT_3_00, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_2_00
	jump_abs MotionScript_328c4

MotionScript_32903:
	set_velocities 48, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities 16, VEL_RIGHT_0_00, VEL_DOWN_3_00
	play_sfx SFX_PAUSE_OFF
	script_end

MotionScript_32914:
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

MotionScript_32930:
	set_velocities 32, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_00
	script_end

MotionScript_32946:
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

MotionScript_32962:
	set_velocities 32, VEL_LEFT_0_00, VEL_DOWN_0_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_00
	script_end

MotionScript_32978:
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

MotionScript_3299c:
	set_velocities  1, 0, 0
	play_music MUSIC_NONE
	script_delay 200
	script_delay 20
	set_velocities 115, 0, VEL_DOWN_1_00
	set_velocities  0, 0, 0

MotionScript_329ad:
	create_object AnimScript_267ad, MotionScript_32a36, Data_3425
	set_velocities 25, 0, 0
	create_object AnimScript_26775, MotionScript_32a36, Data_3425
	set_velocities 25, 0, 0
	create_object AnimScript_26783, MotionScript_32a36, Data_3425
	set_velocities 25, 0, 0
	create_object AnimScript_26791, MotionScript_32a36, Data_3425
	script_end

MotionScript_329d3:
	script_repeat 2
	create_object AnimScript_267bb, MotionScript_32a36.script_32a43, Data_3425
	set_velocities 20, 0, 0
	create_object AnimScript_267c9, MotionScript_32a36.script_32a43, Data_3425
	set_velocities 20, 0, 0
	script_repeat_end
	create_object AnimScript_267bb, MotionScript_32a36.script_32a43, Data_3425
	script_end

MotionScript_329f2:
	create_object AnimScript_26772, MotionScript_32a70, Data_3425
	set_velocities 20, 0, 0
	create_object AnimScript_26772, MotionScript_32a70, Data_3425
	set_velocities 20, 0, 0
	create_object AnimScript_26772, MotionScript_32a70, Data_3425
	set_velocities 20, 0, 0
	create_object AnimScript_26772, MotionScript_32a70, Data_3425
	set_velocities  4, 0, 0
	set_velocities 26, 0, VEL_DOWN_1_00
	script_repeat 3
	create_object AnimScript_26772, MotionScript_32a70, Data_3425
	set_velocities 40, 0, VEL_DOWN_1_00
	script_repeat_end
.loop
	create_object AnimScript_26772, MotionScript_32a70, Data_3425
	set_velocities 80, 0, 0
	jump_rel .loop

MotionScript_32a36:
	calltable_random $03
	dw .script_32a50
	dw .script_32a54
	dw .script_32a58
	dw .script_32a5c
	jump_abs MotionScript_32a9e

.script_32a43
	calltable_random $03
	dw .script_32a60
	dw .script_32a64
	dw .script_32a68
	dw .script_32a6c
	jump_abs MotionScript_32a88

.script_32a50
	set_position 20, 0
	script_ret
.script_32a54
	set_position 60, 0
	script_ret
.script_32a58
	set_position 100, 0
	script_ret
.script_32a5c
	set_position 140, 0
	script_ret
.script_32a60
	position_offset -20, 0
	script_ret
.script_32a64
	position_offset -10, 0
	script_ret
.script_32a68
	position_offset 10, 0
	script_ret
.script_32a6c
	position_offset 20, 0
	script_ret

MotionScript_32a70:
	jumptable_random 1
	dw .script_32a76
	dw .script_32a79

.script_32a76
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_1_25
.script_32a79
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_1_25

MotionScript_32a7c:
	jumptable_random 1
	dw .script_32a82
	dw .script_32a85

.script_32a82
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_0_75
.script_32a85
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_0_75

MotionScript_32a88:
	jumptable_random 3
	dw .script_32a92
	dw .script_32a95
	dw .script_32a98
	dw .script_32a9b

.script_32a92
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_1_25
.script_32a95
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_1_25
.script_32a98
	set_velocities  0, VEL_RIGHT_0_25, VEL_DOWN_1_25
.script_32a9b
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_1_25

MotionScript_32a9e:
	jumptable_random 3
	dw .script_32aa8
	dw .script_32aab
	dw .script_32aae
	dw .script_32ab1

.script_32aa8
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_2_00
.script_32aab
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_2_00
.script_32aae
	set_velocities  0, VEL_RIGHT_0_25, VEL_DOWN_2_00
.script_32ab1
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_2_00

MotionScript_32ab4:
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

MotionScript_32ace:
	set_velocities 64, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 48, VEL_RIGHT_0_00, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  0, 0, 0

MotionScript_32ae3:
	set_velocities 64, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 56, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 48, VEL_RIGHT_0_00, 0
	set_velocities  6, VEL_RIGHT_0_00, 0.75
	set_velocities  6, VEL_RIGHT_0_00, 0.875
	set_velocities  6, VEL_RIGHT_0_00, 1.0
	set_velocities  6, VEL_RIGHT_0_00, 1.125
	set_velocities 64, VEL_RIGHT_0_00, 1.25
	script_end

MotionScript_32afc:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_RIGHT_0_00, VEL_UP_4_00
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 15, VEL_RIGHT_0_25, VEL_DOWN_2_00
	set_velocities 15, VEL_RIGHT_1_16TH, VEL_DOWN_2_00
	set_velocities  9, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities 16, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  0, 0, 0

MotionScript_32b14:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_LEFT_4_00, VEL_DOWN_0_00
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 15, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities 15, VEL_RIGHT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities 16, VEL_RIGHT_1_00, VEL_DOWN_1_16TH
	set_velocities  0, 0, 0

MotionScript_32b2c:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_0_00
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 15, VEL_RIGHT_0_00, VEL_DOWN_2_00
	set_velocities 15, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities 16, VEL_LEFT_1_00, VEL_DOWN_1_16TH
	set_velocities  0, 0, 0

MotionScript_32b44:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_4_00
	set_velocities 96, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 48, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_0_50
	set_velocities  0, 0, 0

MotionScript_32b56:
	set_velocities 80, 0, 0
	set_velocities  8, VEL_LEFT_4_00, VEL_DOWN_4_00
	set_velocities 96, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities 48, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  0, 0, 0

MotionScript_32b68:
	script_repeat 3
	create_object AnimScript_26772, MotionScript_32a7c, Data_3425
	set_velocities 40, 0, 0
	script_repeat_end
	create_object AnimScript_26772, MotionScript_32a7c, Data_3425
	set_velocities 24, 0, 0
	set_velocities 16, 0, VEL_DOWN_1_8TH
	create_object AnimScript_26772, MotionScript_32a7c, Data_3425
	set_velocities 32, 0, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_00, VEL_DOWN_0_50
	create_object AnimScript_26772, MotionScript_32a7c, Data_3425
	set_velocities 10, VEL_RIGHT_0_00, VEL_DOWN_1_00
	set_velocities 30, 0, 0
.loop
	create_object AnimScript_26772, MotionScript_32a7c, Data_3425
	set_velocities 40, 0, 0
	jump_rel .loop

MotionScript_32ba8:
	set_velocities 11, VEL_RIGHT_0_00, VEL_DOWN_0_00
MotionScript_32bab:
	set_velocities  6, VEL_RIGHT_0_00, VEL_UP_0_25
	set_velocities  6, VEL_RIGHT_0_00, VEL_DOWN_0_25
MotionScript_32bb1:
	set_velocities 11, VEL_RIGHT_0_00, VEL_DOWN_0_00
MotionScript_32bb4:
	set_velocities 11, VEL_RIGHT_0_00, VEL_DOWN_0_00
MotionScript_32bb7:
	set_velocities  6, VEL_RIGHT_0_00, VEL_UP_0_25
	set_velocities  6, VEL_RIGHT_0_00, VEL_DOWN_0_25
	jump_abs MotionScript_32ba8

MotionScript_32bc0:
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

MotionScript_32be1:
	set_velocities 86, 0, VEL_DOWN_1_25
	script_end

MotionScript_32be5:
	set_velocities 108, 0, VEL_DOWN_1_00
	script_end

MotionScript_32be9:
	set_velocities 128, 0, VEL_DOWN_0_75
	script_end

MotionScript_32bed:
	set_velocities  1, 0, 0
	play_sfx SFX_23
	set_velocities  2, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
	create_object AnimScript_26a67, MotionScript_32e98, Data_3425
	create_object AnimScript_26a67, MotionScript_32ea2, Data_3425
	create_object AnimScript_26a67, MotionScript_32eac, Data_3425
	create_object AnimScript_26a67, MotionScript_32eb6, Data_3425
	set_velocities 22, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
	set_velocities 12, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
	play_sfx SFX_23
	set_velocities  4, 0, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_3_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_25
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_25
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_3_00
	play_sfx SFX_23
	set_velocities  1, 0, 0
	set_velocities  1, 0, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	play_sfx SFX_23
	set_velocities  6, 0, 0
	set_velocities  4, 0, 0
	set_velocities  4, 0, 0
	set_velocities  3, 0, 0
	set_velocities  3, 0, 0
	set_velocities  3, 0, 0
	set_velocities  3, 0, 0
	set_velocities  3, 0, 0
	set_velocities  4, 0, 0
	set_velocities  5, 0, 0
	set_velocities  6, 0, 0
	set_velocities  7, 0, 0
	set_velocities  8, 0, 0
	set_velocities  8, 0, 0
	set_velocities  8, 0, 0
	script_repeat 17
	set_velocities  2, 0, 0
	set_velocities  3, 0, 0
	set_velocities  2, 0, 0
	set_velocities  3, 0, 0
	script_repeat_end
	set_velocities  4, 0, 0
	set_velocities  5, 0, 0
	set_velocities  6, 0, 0
	set_velocities  7, 0, 0
	set_velocities 16, 0, 0
	set_velocities 128, 0, 0
	set_velocities 128, 0, 0
	set_velocities  4, 0, 0
	set_velocities 16, 0, 0
	set_velocities  4, 0, 0
	set_velocities 32, 0, 0
	set_velocities  6, 0, 0
	set_velocities  4, 0, 0
	set_velocities 96, 0, 0
	set_velocities  6, 0, 0
	set_velocities 16, 0, 0
	set_velocities  6, 0, 0
	set_velocities 48, 0, 0
	script_repeat 11
	set_velocities  8, 0, 0
	set_velocities  8, 0, 0
	script_repeat_end
	script_repeat 11
	set_velocities  6, 0, 0
	set_velocities  6, 0, 0
	script_repeat_end
	set_velocities  2, 0, 0
	script_repeat 10
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  2, 0, 0
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  2, 0, 0
	script_repeat_end
	script_end

MotionScript_32cef:
	set_velocities  1, 0, 0
	play_sfx SFX_23
	set_velocities  2, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
	create_object AnimScript_26a74, MotionScript_32e98, Data_3425
	create_object AnimScript_26a74, MotionScript_32ea2, Data_3425
	create_object AnimScript_26a74, MotionScript_32eac, Data_3425
	create_object AnimScript_26a74, MotionScript_32eb6, Data_3425
	set_velocities 22, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
	set_velocities 12, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
	play_sfx SFX_23
	set_velocities  4, 0, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_3_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_25
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_25
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_3_00
	play_sfx SFX_23
	set_velocities  4, 0, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	play_sfx SFX_23
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities  6, VEL_RIGHT_1_32TH, 0
	set_velocities 48, 0, 0
	set_velocities 16, 0, 0
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities  3, VEL_LEFT_1_8TH, 0
	set_velocities  6, 0, 0
	set_velocities  6, VEL_RIGHT_0_50, 0
	set_velocities  6, 0, 0
	set_velocities 48, 0, 0
	set_velocities  8, VEL_LEFT_1_8TH, 0
	script_repeat 4
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  6, 0, 0
	set_velocities  6, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  6, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  6, 0, 0
	script_repeat_end
	script_repeat 5
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  4, 0, 0
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities  4, 0, 0
	script_repeat_end
	set_velocities  4, 0, VEL_UP_0_50
	set_velocities  4, 0, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_32TH, 0
	set_velocities  6, VEL_LEFT_1_32TH, 0
	set_velocities  4, 0, 0
	create_object AnimScript_26b9b, MotionScript_32e0a, Data_3425
	set_velocities 128, 0, 0
	set_velocities 128, 0, 0
	set_velocities 128, 0, 0
	set_velocities 128, 0, 0
	set_velocities  8, 0, 0
	script_repeat 4
	set_velocities  6, 0, 0
	set_velocities  6, 0, 0
	set_velocities  6, 0, 0
	set_velocities  6, 0, 0
	set_velocities 32, 0, 0
	script_repeat_end
	set_velocities 160, 0, 0
	set_velocities 128, 0, 0
	set_velocities 128, 0, 0
	script_repeat 11
	set_velocities  8, 0, 0
	set_velocities  8, 0, 0
	set_velocities  8, 0, 0
	script_repeat_end
	set_velocities 16, 0, 0
	set_velocities  6, 0, 0
	set_velocities 96, 0, 0
	script_repeat 5
	set_velocities 13, VEL_LEFT_1_00, 0
	set_velocities  8, 0, 0
	set_velocities 11, 0, 0
	set_velocities  8, 0, 0
	set_velocities 13, VEL_LEFT_1_00, 0
	set_velocities  8, 0, 0
	set_velocities 11, 0, 0
	set_velocities  8, 0, 0
	script_repeat_end
	script_end

MotionScript_32e0a:
	position_offset 116, 9
	script_repeat 2
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	script_repeat_end
	set_velocities 48, 0, 0
	set_velocities 16, 0, 0
	set_velocities  6, 0, 0
	set_velocities 16, 0, 0
	set_velocities  6, 0, 0
	set_velocities 48, 0, 0
	set_velocities 10, 0, 0
	set_velocities 128, 0, 0
	set_velocities 90, 0, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities 128, 0, 0
	set_velocities 118, 0, 0
	set_velocities 16, 0, 0
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  6, 0, 0
	set_velocities  8, 0, 0
	script_repeat 3
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, 0, 0
	set_velocities  6, 0, 0
	script_repeat_end
	set_velocities 128, 0, 0
	set_velocities 128, 0, 0
	set_velocities 128, 0, 0
	set_velocities 128, 0, 0
	set_velocities 32, 0, 0
	set_velocities 16, 0, 0
	set_velocities 144, 0, 0
	set_velocities 32, 0, 0
	script_repeat 11
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	script_repeat_end
	script_end

MotionScript_32e98:
	set_velocities 10, VEL_RIGHT_4_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_1_00
	script_end

MotionScript_32ea2:
	set_velocities 10, VEL_RIGHT_2_00, VEL_DOWN_6_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_1_00
	script_end

MotionScript_32eac:
	set_velocities 10, VEL_RIGHT_1_8TH, VEL_DOWN_6_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_4_00
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	script_end

MotionScript_32eb6:
	set_velocities 10, VEL_LEFT_2_00, VEL_DOWN_6_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_1_00
	script_end

MotionScript_32ec0:
	set_value wKirbySideOfScreen, $00
	set_value wd3cf, $00
	set_value wd3d0, $00
MotionScript_32ecc:
	set_update_func Func_141d3, AnimScript_26c26
	set_velocities  0, 0, 0

MotionScript_32ed4:
	jump_if_equal wKirbySideOfScreen, $01, MotionScript_32f11
	jump_if_equal wd3cf, $01, MotionScript_32ef7
	jump_abs MotionScript_32ecc

MotionScript_32ee3:
	jump_if_equal wKirbySideOfScreen, $01, MotionScript_32f11
	jump_if_equal wd3cf, $00, MotionScript_32f04
MotionScript_32eef:
	set_update_func Func_141d3, AnimScript_26c2b
	set_velocities  0, 0, 0

MotionScript_32ef7:
	play_sfx SFX_CURSOR
	set_velocities  5, 0, VEL_DOWN_3_00
	set_velocities  3, 0, VEL_DOWN_1_00
	jump_abs MotionScript_32eef

MotionScript_32f04:
	play_sfx SFX_CURSOR
	set_velocities  5, 0, VEL_UP_3_00
	set_velocities  3, 0, VEL_UP_1_00
	jump_abs MotionScript_32ecc

MotionScript_32f11:
	jump_if_equal wd3cf, $01, MotionScript_32f6d
	set_anim_script AnimScript_26ccd
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

MotionScript_32f58:
	set_velocities 95, 0, 0
	script_delay 135
	set_velocities 80, 1.125, 0
	script_delay 80
	script_end

; unreferenced
MotionScript_32f63:
	script_repeat 2
	set_velocities 40, VEL_RIGHT_1_8TH, VEL_DOWN_0_25
	set_velocities 40, VEL_LEFT_1_8TH, VEL_UP_0_25
	script_repeat_end
	script_end

MotionScript_32f6d:
	set_anim_script AnimScript_26ce8
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
	set_anim_script AnimScript_26cf1
	set_velocities  2, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities 26, 0, 0
MotionScript_32faa:
	set_velocities 150, 0, 0
	set_velocities  0, VEL_RIGHT_3_00, VEL_UP_3_00

MotionScript_32fb0:
.loop
	set_velocities 40, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities 40, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	jump_rel .loop

MotionScript_32fb8:
	set_value wBossHPCounter, $03
	set_value wd3c1, $01
	create_object AnimScript_2526d, MotionScript_10008, Data_3421
	set_anim_script AnimScript_26d20
	set_velocities 100, 0, 0
	set_velocities 20, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, 0
	set_velocities  8, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_object_properties Properties_35e0
	set_anim_script AnimScript_26d03
.loop
	script_call MotionScript_330ee
	script_call MotionScript_3303f
	script_call MotionScript_32ff0
	jump_rel .loop

MotionScript_32ff0:
	set_anim_script AnimScript_26d03
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities  4, 0, VEL_DOWN_4_00
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  4, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities  4, 0, VEL_UP_4_00
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_2_00, VEL_UP_2_00
	script_ret

; unreferenced
MotionScript_33014:
	set_anim_script AnimScript_26d11
	set_velocities 40, 0, 0
	set_anim_script AnimScript_26d03
	jump_abs .script_33024 ; useless jump
.script_33024
	play_sfx SFX_30
	branch_kirby_pos .script_3302f, .script_33037
.script_3302f
	create_object AnimScript_26e8c, MotionScript_102d4, StandardEnemyGravityProperties
	script_ret
.script_33037
	create_object AnimScript_26ec1, MotionScript_102d7, StandardEnemyGravityProperties
	script_ret

MotionScript_3303f:
	set_anim_script AnimScript_26d11
	set_velocities 16, VEL_LEFT_4_00, VEL_UP_1_00
	set_velocities 16, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities 16, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  8, 0, VEL_DOWN_4_00
	play_sfx SFX_02
	set_velocities  6, VEL_RIGHT_1_25, VEL_UP_3_00
	set_velocities  6, VEL_RIGHT_1_25, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_25, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_25, VEL_DOWN_3_00
	play_sfx SFX_02
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_3_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_DOWN_3_00
	play_sfx SFX_02
	set_velocities  6, VEL_RIGHT_3_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_3_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_4_00
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  7, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_4_00, VEL_DOWN_4_00
	set_velocities  6, VEL_LEFT_6_00, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_6_00, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_3_00, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_1_25, VEL_UP_4_00
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_4_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  9, VEL_RIGHT_2_00, 0
	create_object AnimScript_2490e, MotionScript_330d7, Properties_357d
	set_velocities 16, VEL_RIGHT_2_00, 0
	create_object AnimScript_2490e, MotionScript_330d7, Properties_357d
	set_velocities 16, VEL_RIGHT_2_00, 0
	create_object AnimScript_2490e, MotionScript_330d7, Properties_357d
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities 10, VEL_RIGHT_2_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_25, VEL_DOWN_1_00
	set_velocities  6, 0, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_abs_pos
	set_position 144, 58
	set_rel_pos
	script_ret

MotionScript_330d7:
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  7, 0, VEL_DOWN_4_00
	create_object AnimScript_Explosion, MotionScript_10008, Properties_35c4
	script_end

MotionScript_330ee:
	create_object AnimScript_249f0, MotionScript_33195, ProjectileProperties
	set_velocities  3, 0, 0
	create_object AnimScript_249f0, MotionScript_33156, ProjectileProperties
	set_velocities  3, 0, 0
	create_object AnimScript_249f0, MotionScript_3316b, ProjectileProperties
	set_velocities  3, 0, 0
	create_object AnimScript_249f0, MotionScript_33180, ProjectileProperties
	set_velocities  3, 0, 0
	script_ret

; unreferenced
MotionScript_33117:
	script_exec_arg ScriptFunc_AddScore, $06
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	create_object AnimScript_24972, MotionScript_33136, WarpStarFloatingProperties
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities 16, VEL_RIGHT_1_25, VEL_UP_2_00
	set_velocities 16, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  0, VEL_RIGHT_3_00, VEL_UP_2_00

MotionScript_33136:
	set_abs_pos
	set_position 88, 104
	create_object AnimScript_Hit, MotionScript_10008, Data_3425
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_8TH
	set_velocities  8, 0, VEL_DOWN_1_8TH
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_DOWN_1_00
	jump_abs MotionScript_WarpStar

MotionScript_33156:
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_4_00
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_6_00

MotionScript_3316b:
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_4_00
	set_velocities  0, VEL_LEFT_1_25, VEL_DOWN_6_00

MotionScript_33180:
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_4_00
	set_velocities  0, VEL_LEFT_2_00, VEL_DOWN_6_00

MotionScript_33195:
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_4_00
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_6_00

MotionScript_331aa:
	set_value wBossHPCounter, $06
	set_value wd3c1, $01
	create_object AnimScript_2526d, MotionScript_10008, Data_3421
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
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_0_25, 0
	set_object_properties Properties_35e9
	set_value wKirbySideOfScreen, $00
	script_call MotionScript_333f1
.script_33206
	set_abs_pos
	set_position 88, 80
	set_rel_pos
	jump_random 31 percent - 1, .script_332d9
	jump_abs .script_3322a

.script_33212
	set_abs_pos
	set_position 88, 80
	set_rel_pos
	jump_random 31 percent - 1, .script_3322a
	jump_abs .script_33234

.script_3321e
	set_abs_pos
	set_position 88, 80
	set_rel_pos
	jump_random 31 percent - 1, .script_33234
	jump_abs .script_332d9
.script_3322a
	script_call MotionScript_33469
	branch_kirby_pos .script_3336f, .script_333b0
.script_33234
	script_call MotionScript_33469
	branch_kirby_pos .script_3323e, .script_33286
.script_3323e
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_00
	create_object AnimScript_2490e, .script_332ce, Properties_357d
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_3_00, 0
	create_object AnimScript_2490e, .script_332ce, Properties_357d
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_1_00
	create_object AnimScript_2490e, .script_332ce, Properties_357d
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_2_00
	jump_abs .script_33206
.script_33286
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_00
	create_object AnimScript_2490e, .script_332ce, Properties_357d
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_3_00, 0
	create_object AnimScript_2490e, .script_332ce, Properties_357d
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_50, 0
	create_object AnimScript_2490e, .script_332ce, Properties_357d
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_2_00
	jump_abs .script_33206

.script_332ce
	set_velocities 32, 0, VEL_DOWN_2_00
	create_object AnimScript_Explosion, MotionScript_10008, ExplosionProperties
	script_end

.script_332d9
	script_call MotionScript_33469
	set_anim_script AnimScript_26e0c
	script_repeat 2
	create_object AnimScript_Projectile, MotionScript_33409, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_33439, ProjectileProperties
	set_velocities  4, 0, 0
	create_object AnimScript_Projectile, MotionScript_3340f, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_3343f, ProjectileProperties
	set_velocities  4, 0, 0
	create_object AnimScript_Projectile, MotionScript_33415, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_33445, ProjectileProperties
	set_velocities  4, 0, 0
	create_object AnimScript_Projectile, MotionScript_3341b, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_3344b, ProjectileProperties
	set_velocities  4, 0, 0
	create_object AnimScript_Projectile, MotionScript_33421, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_33451, ProjectileProperties
	set_velocities  4, 0, 0
	create_object AnimScript_Projectile, MotionScript_33427, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_33457, ProjectileProperties
	set_velocities  4, 0, 0
	create_object AnimScript_Projectile, MotionScript_3342d, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_3345d, ProjectileProperties
	set_velocities  4, 0, 0
	create_object AnimScript_Projectile, MotionScript_33433, ProjectileProperties
	create_object AnimScript_Projectile, MotionScript_33463, ProjectileProperties
	set_velocities  4, 0, 0
	script_repeat_end
	jump_abs .script_33212

.script_3336f
	set_anim_script AnimScript_26e3a
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_00, VEL_UP_0_00
	play_sfx SFX_BOSS_DEFEAT
	set_velocities 16, VEL_LEFT_4_00, VEL_DOWN_3_00
	set_velocities 10, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_1_00, VEL_DOWN_0_75
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities 16, VEL_RIGHT_4_00, 0
	set_velocities  8, VEL_RIGHT_3_00, 0
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_4_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_4_00, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_anim_script AnimScript_26dbc
	jump_abs .script_3321e

.script_333b0
	set_anim_script AnimScript_26e42
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_00, VEL_UP_0_00
	play_sfx SFX_BOSS_DEFEAT
	set_velocities 16, VEL_RIGHT_4_00, VEL_DOWN_3_00
	set_velocities 10, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_75
	set_velocities 16, VEL_LEFT_4_00, 0
	set_velocities  8, VEL_LEFT_3_00, 0
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_4_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_anim_script AnimScript_26dbc
	jump_abs .script_3321e

MotionScript_333f1:
	set_anim_script AnimScript_26dbc
	set_velocities  6, 0, VEL_UP_1_8TH
	set_velocities  6, 0, VEL_UP_0_25
	set_velocities  6, 0, VEL_UP_1_8TH
	set_velocities  6, 0, VEL_DOWN_1_8TH
	set_velocities  6, 0, VEL_DOWN_0_25
	set_velocities  6, 0, VEL_DOWN_1_8TH
	script_ret

MotionScript_33409:
	position_offset 0, -28
	jump_abs MotionScript_103bf

MotionScript_3340f:
	position_offset 8, -24
	jump_abs MotionScript_103c3

MotionScript_33415:
	position_offset 16, -16
	jump_abs MotionScript_103c7

MotionScript_3341b:
	position_offset 24, -8
	jump_abs MotionScript_103cb

MotionScript_33421:
	position_offset 28, 0
	jump_abs MotionScript_103cf

MotionScript_33427:
	position_offset 24, 8
	jump_abs MotionScript_103d3

MotionScript_3342d:
	position_offset 16, 16
	jump_abs MotionScript_103d7

MotionScript_33433:
	position_offset 8, 24
	jump_abs MotionScript_103db

MotionScript_33439:
	position_offset 0, 28
	jump_abs MotionScript_103df

MotionScript_3343f:
	position_offset -8, 24
	jump_abs MotionScript_103e3

MotionScript_33445:
	position_offset -16, 16
	jump_abs MotionScript_103e7

MotionScript_3344b:
	position_offset -24, 8
	jump_abs MotionScript_103eb

MotionScript_33451:
	position_offset -28, 0
	jump_abs MotionScript_103ef

MotionScript_33457:
	position_offset -24, -8
	jump_abs MotionScript_103f3

MotionScript_3345d:
	position_offset -16, -16
	jump_abs MotionScript_103f7

MotionScript_33463:
	position_offset -8, -24
	jump_abs MotionScript_103fb

MotionScript_33469:
	set_anim_script AnimScript_26e23
	jumptable_random 1
	dw .script_33474
	dw .script_3348a

.script_33474
	script_repeat 2
	set_velocities  3, 0, VEL_UP_1_8TH
	set_velocities  3, 0, VEL_UP_0_25
	set_velocities  3, 0, VEL_UP_1_8TH
	set_velocities  3, 0, VEL_DOWN_1_8TH
	set_velocities  3, 0, VEL_DOWN_0_25
	set_velocities  3, 0, VEL_DOWN_1_8TH
	script_repeat_end
	script_ret
.script_3348a
	set_velocities  3, 0, VEL_UP_1_8TH
	set_velocities  3, 0, VEL_UP_0_25
	set_velocities  3, 0, VEL_DOWN_0_25
	set_velocities  3, 0, VEL_DOWN_1_8TH
	script_ret

; unreferenced
MotionScript_33497:
	set_velocities 16, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	jump_abs MotionScript_1032d

MotionScript_334a3:
	set_value wBossHPCounter, $06
	set_value wd3c1, $01
	create_object AnimScript_2526d, MotionScript_10008, Data_3421
	set_value wKirbySideOfScreen, $00
	set_value wd3cf, $00
	set_value wd3d0, $00
	set_value wd3d1, $00
.script_334c2
	jumptable_random 3
	dw .script_334cc
	dw .script_334e3
	dw .script_334fa
	dw .script_33511

.script_334cc
	jump_if_equal wKirbySideOfScreen, $ff, .script_334c2
	set_position 161, 24
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_3368b
	set_value wKirbySideOfScreen, $00
	jump_abs .script_33528
.script_334e3
	jump_if_equal wd3cf, $ff, .script_334c2
	set_position 161, 56
	set_value wd3cf, $ff
	script_call MotionScript_3368b
	set_value wd3cf, $00
	jump_abs .script_33528
.script_334fa
	jump_if_equal wd3d0, $ff, .script_334c2
	set_position 161, 88
	set_value wd3d0, $ff
	script_call MotionScript_3368b
	set_value wd3d0, $00
	jump_abs .script_33528
.script_33511
	jump_if_equal wd3d1, $ff, .script_334c2
	set_position 161, 120
	set_value wd3d1, $ff
	script_call MotionScript_3368b
	set_value wd3d1, $00
	jump_abs .script_33528
.script_33528
	jumptable_random 3
	dw .script_33532
	dw .script_33549
	dw .script_33560
	dw .script_33577

.script_33532
	jump_if_equal wKirbySideOfScreen, $ff, .script_33528
	set_position 16, 24
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_336ae
	set_value wKirbySideOfScreen, $00
	jump_abs .script_334c2
.script_33549
	jump_if_equal wd3cf, $ff, .script_33528
	set_position 16, 56
	set_value wd3cf, $ff
	script_call MotionScript_336ae
	set_value wd3cf, $00
	jump_abs .script_334c2
.script_33560
	jump_if_equal wd3d0, $ff, .script_33528
	set_position 16, 88
	set_value wd3d0, $ff
	script_call MotionScript_336ae
	set_value wd3d0, $00
	jump_abs .script_334c2
.script_33577
	jump_if_equal wd3d1, $ff, .script_33528
	set_position 16, 120
	set_value wd3d1, $ff
	script_call MotionScript_336ae
	set_value wd3d1, $00
	jump_abs .script_334c2

MotionScript_3358e:
.script_3358e
	jumptable_random 3
	dw .script_33598
	dw .script_335af
	dw .script_335c6
	dw .script_335dd

.script_33598
	jump_if_equal wKirbySideOfScreen, $ff, .script_3358e
	set_position 161, 24
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_33686
	set_value wKirbySideOfScreen, $00
	jump_abs MotionScript_335f4
.script_335af
	jump_if_equal wd3cf, $ff, .script_3358e
	set_position 161, 56
	set_value wd3cf, $ff
	script_call MotionScript_33686
	set_value wd3cf, $00
	jump_abs MotionScript_335f4
.script_335c6
	jump_if_equal wd3d0, $ff, .script_3358e
	set_position 161, 88
	set_value wd3d0, $ff
	script_call MotionScript_33686
	set_value wd3d0, $00
	jump_abs MotionScript_335f4
.script_335dd
	jump_if_equal wd3d1, $ff, .script_3358e
	set_position 161, 120
	set_value wd3d1, $ff
	script_call MotionScript_33686
	set_value wd3d1, $00
	jump_abs MotionScript_335f4

MotionScript_335f4:
	jumptable_random 3
	dw .script_335fe
	dw .script_33615
	dw .script_3362c
	dw .script_33643

.script_335fe
	jump_if_equal wKirbySideOfScreen, $ff, MotionScript_335f4
	set_position 16, 24
	set_value wKirbySideOfScreen, $ff
	script_call MotionScript_336a9
	set_value wKirbySideOfScreen, $00
	jump_abs MotionScript_3358e
.script_33615
	jump_if_equal wd3cf, $ff, MotionScript_335f4
	set_position 16, 56
	set_value wd3cf, $ff
	script_call MotionScript_336a9
	set_value wd3cf, $00
	jump_abs MotionScript_3358e
.script_3362c
	jump_if_equal wd3d0, $ff, MotionScript_335f4
	set_position 16, 88
	set_value wd3d0, $ff
	script_call MotionScript_336a9
	set_value wd3d0, $00
	jump_abs MotionScript_3358e
.script_33643
	jump_if_equal wd3d1, $ff, MotionScript_335f4
	set_position 16, 120
	set_value wd3d1, $ff
	script_call MotionScript_336a9
	set_value wd3d1, $00
	jump_abs MotionScript_3358e

MotionScript_3365a:
	set_velocities  4, VEL_LEFT_2_00, 0
	set_velocities  4, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_0_75, 0
	set_velocities  4, VEL_LEFT_0_25, 0
	set_velocities  4, VEL_LEFT_1_16TH, 0
	set_velocities 15, 0, 0
	set_velocities 176, VEL_LEFT_1_25, 0
	script_end

MotionScript_33670:
	set_velocities  4, VEL_RIGHT_2_00, 0
	set_velocities  4, VEL_RIGHT_1_00, 0
	set_velocities  4, VEL_RIGHT_0_75, 0
	set_velocities  4, VEL_RIGHT_0_25, 0
	set_velocities  4, VEL_RIGHT_1_16TH, 0
	set_velocities 15, 0, 0
	set_velocities 176, VEL_RIGHT_1_25, 0
	script_end

MotionScript_33686:
	set_scripts AnimScript_26f8c, MotionScript_33690

MotionScript_3368b:
	set_anim_script AnimScript_26ef9
MotionScript_33690:
	script_exec Func_4ba6
	set_velocities 35, 0, 0
	set_velocities 100, VEL_LEFT_1_25, 0
	set_velocities  6, VEL_LEFT_2_00, 0
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_0_25, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	script_ret

MotionScript_336a9:
	set_scripts AnimScript_26f5b, MotionScript_336b3

MotionScript_336ae:
	set_anim_script AnimScript_26f2a
MotionScript_336b3:
	script_exec Func_4ba6
	set_velocities 35, 0, 0
	set_velocities 100, VEL_RIGHT_1_25, 0
	set_velocities  6, VEL_RIGHT_2_00, 0
	set_velocities  6, VEL_RIGHT_1_00, 0
	set_velocities  6, VEL_RIGHT_0_25, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	script_ret

MotionScript_336cc:
	set_value wBossHPCounter, $03
	set_value wd3c1, $01
	create_object AnimScript_2526d, MotionScript_10008, Data_3421
MotionScript_336db:
.loop
	jumptable_random 3
	dw .script_336e5
	dw .script_336eb
	dw .script_336f1
	dw .script_336f7

.script_336e5
	set_position 163, 24
	jump_abs MotionScript_33743
.script_336eb
	set_position 163, 56
	jump_abs MotionScript_33720
.script_336f1
	set_position 163, 88
	jump_abs .script_336fd
.script_336f7
	set_position 163, 120
	jump_abs .script_336fd
.script_336fd
	script_exec Func_4ba6
	set_anim_script AnimScript_26fc4
	set_velocities 40, VEL_LEFT_2_00, 0
	set_velocities  6, VEL_LEFT_0_50, 0
	set_velocities 28, 0, 0
	set_velocities 40, 0, 0
	set_velocities 40, VEL_RIGHT_2_00, 0
	set_velocities  8, 0, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	jump_abs .loop

MotionScript_33720:
	script_exec Func_4ba6
	set_anim_script AnimScript_26fd8
	set_velocities 40, VEL_LEFT_1_25, 0
	set_velocities  6, VEL_LEFT_0_50, 0
	set_velocities 28, 0, 0
	set_velocities 40, 0, 0
	set_velocities 40, VEL_RIGHT_1_25, 0
	set_velocities  8, 0, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	jump_abs MotionScript_336db

MotionScript_33743:
	script_exec Func_4ba6
	set_anim_script AnimScript_26fe2
	set_velocities 20, VEL_LEFT_1_25, 0
	set_velocities 20, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_0_50, 0
	set_velocities 28, 0, 0
	set_velocities 40, 0, 0
	set_velocities 20, VEL_RIGHT_1_00, 0
	set_velocities 20, VEL_RIGHT_1_25, 0
	set_velocities  8, 0, 0
	script_exec Func_4bad
	set_velocities 32, 0, 0
	jump_abs MotionScript_336db

MotionScript_3376c:
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3425
	play_sfx SFX_30
	set_velocities 20, 0, 0
	play_sfx SFX_28
	set_velocities  0, VEL_LEFT_3_00, 0

MotionScript_33781:
	set_velocities 40, VEL_LEFT_2_00, 0
	set_velocities  8, 0, 0
	set_velocities  0, VEL_LEFT_3_00, 0

MotionScript_3378a:
	set_velocities 40, VEL_LEFT_1_25, 0
	set_velocities  8, 0, 0
	set_velocities  0, VEL_LEFT_3_00, 0

MotionScript_33793:
	set_velocities 20, VEL_LEFT_1_25, 0
	set_velocities 20, VEL_LEFT_1_00, 0
	set_velocities  8, 0, 0
	set_velocities  0, VEL_LEFT_3_00, 0

MotionScript_3379f:
	set_object_properties Properties_360d
	set_anim_script AnimScript_270a0
	jump_random 50 percent + 1, .script_337b2
	set_velocities 18, 0, 0
	jump_rel .loop
.script_337b2
	set_velocities 30, 0, 0
.loop
	set_object_properties Properties_3604
	script_ret

MotionScript_337bb:
	set_value wBossHPCounter, 10
	set_value wd3c1, $01
	create_object AnimScript_2526d, MotionScript_10008, Data_3421
	set_value wd3c0, $01
	script_exec ScriptFunc_LockScrolling
	script_exec Func_48a3
	script_exec Func_48af
	set_value wd3cd, $01
	script_exec Func_4aad
	create_object AnimScript_22f60, MotionScript_33aca, Properties_3616
	script_call MotionScript_3379f
	script_call MotionScript_3379f
	script_call MotionScript_3379f
.script_337ee
	jumptable_random 7
	dw .script_33800
	dw .script_3387e
	dw .script_3392a
	dw .script_3398d
	dw .script_3398d
	dw .script_337ee
	dw .script_337ee
	dw .script_337ee

.script_33800
	branch_kirby_pos .script_33807, .script_3380f
.script_33807
	set_update_func Func_14276, AnimScript_270f5
	jump_abs MotionScript_339fc
.script_3380f
	set_update_func Func_14276, AnimScript_27101
	jump_abs MotionScript_33a15
.script_33817
	set_value wd3cd, $00
	set_object_properties Properties_360d
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3425
	set_velocities 16, VEL_LEFT_1_25, 0
	set_velocities 16, VEL_LEFT_0_75, 0
	set_velocities 16, VEL_LEFT_1_8TH, 0
	set_velocities 32, 0, 0
	jump_rel .script_33851
.script_33835
	set_value wd3cd, $00
	set_object_properties Properties_360d
	create_object AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3425
	set_velocities 16, VEL_RIGHT_1_25, 0
	set_velocities 16, VEL_RIGHT_0_75, 0
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities 32, 0, 0
.script_33851
	set_value wd3cd, $01
	set_object_properties Properties_3604
	script_call MotionScript_3379f
	script_exec Func_49d5
	jumptable wd3bd
	dw .script_3386c
	dw .script_338df
	dw .script_3388e

	script_call MotionScript_3379f
.script_3386c
	jumptable_random 7
	dw .script_33800
	dw .script_3387e
	dw .script_3392a
	dw .script_3398d
	dw .script_3387e
	dw .script_3392a
	dw .script_3398d
	dw .script_33800

.script_3387e
	script_exec Func_49ac
	jumptable wd3bd
	dw .script_3388e
	dw .script_3388e
	dw .script_338ba
	dw .script_338df
	dw .script_338df

.script_3388e
	set_anim_script AnimScript_2710d
	set_velocities 16, 0, 0
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_4_00
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_3_00
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_75
	branch_kirby_pos .script_338a9, .script_338ce
.script_338a9
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_4_00
	set_velocities 24, 0, 0
	jump_rel .script_33909
.script_338ba
	set_anim_script AnimScript_2710d
.script_338bf
	set_velocities 16, 0, 0
.script_338c2
	set_velocities  8, 0, VEL_UP_4_00
	set_velocities  8, 0, VEL_UP_3_00
	set_velocities  8, 0, VEL_UP_1_25
	set_velocities  8, 0, VEL_UP_0_75
.script_338ce
	set_velocities  8, 0, VEL_DOWN_0_75
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  8, 0, VEL_DOWN_4_00
	set_velocities 24, 0, 0
	jump_rel .script_33909
.script_338df
	set_anim_script AnimScript_2710d
	set_velocities 16, 0, 0
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_4_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_3_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_0_75
	branch_kirby_pos .script_338ce, .script_338fa
.script_338fa
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_3_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_4_00
	set_velocities 24, 0, 0
.script_33909
	script_exec Func_49d5
	jumptable wd3bd
	dw .script_33918
	dw .script_338df
	dw .script_3388e

	script_call MotionScript_3379f
.script_33918
	jumptable_random 7
	dw .script_3387e
	dw .script_33800
	dw .script_3392a
	dw .script_3398d
	dw .script_33800
	dw .script_3392a
	dw .script_3398d
	dw .script_3392a

.script_3392a
	jump_if_equal wBossHP, $01, .script_3397b
	script_exec Func_48a8
	branch_kirby_pos .script_3393a, .script_33942
.script_3393a
	set_update_func Func_141bb, AnimScript_27128
	jump_abs MotionScript_339fc
.script_33942
	set_update_func Func_141bb, AnimScript_27193
	jump_abs MotionScript_33a15
.script_3394a
	set_object_properties Properties_360d
.script_3394f
	create_object AnimScript_Star, MotionScript_33ae4, Data_3421
	script_repeat 3
	set_velocities  2, VEL_RIGHT_1_00, 0
	set_velocities  2, VEL_LEFT_1_00, 0
	script_repeat_end
	jump_rel .script_3394f

.script_33961
	set_object_properties Properties_360d
.loop
	create_object AnimScript_Star, MotionScript_33ae4.script_33af6, Data_3421
	script_repeat 3
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	script_repeat_end
	jump_rel .loop

.script_33978
	script_call MotionScript_3379f
.script_3397b
	jumptable_random 7
	dw .script_3392a
	dw .script_33800
	dw .script_3387e
	dw .script_3398d
	dw .script_33800
	dw .script_3387e
	dw .script_3398d
	dw .script_33800

.script_3398d
	script_exec Func_48a8
	set_update_func Func_141bb, AnimScript_271fe
	script_exec Func_49ac
	branch_kirby_pos .script_3399f, .script_339b8

.script_3399f
	set_anim_script AnimScript_270e9
	set_velocities  4, 0, VEL_UP_2_00
	set_velocities  4, 0, VEL_UP_0_50
	set_velocities  4, 0, VEL_DOWN_0_50
	set_velocities  4, 0, VEL_DOWN_2_00
	set_velocities  2, 0, 0
	set_scripts AnimScript_270d3, MotionScript_33a04

.script_339b8
	set_anim_script AnimScript_270ef
	set_velocities  4, 0, VEL_UP_2_00
	set_velocities  4, 0, VEL_UP_0_50
	set_velocities  4, 0, VEL_DOWN_0_50
	set_velocities  4, 0, VEL_DOWN_2_00
	set_velocities  2, 0, 0
	set_scripts AnimScript_270de, MotionScript_33a1d

.script_339d1
	set_value wd3cd, $01
	script_call MotionScript_3379f
	jumptable_random 7
	dw .script_3398d
	dw .script_33800
	dw .script_3387e
	dw .script_3392a
	dw .script_33800
	dw .script_3387e
	dw .script_3392a
	dw .script_3392a

MotionScript_339ea:
	set_velocities 26, 0, 0
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities 26, 0, 0
	set_velocities  0, 0, 0

MotionScript_339fc:
	set_anim_script AnimScript_270bd
	set_velocities  8, VEL_RIGHT_1_00, 0
MotionScript_33a04:
.loop
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_2_00, 0
	set_velocities  4, VEL_LEFT_1_25, 0
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_1_00, 0
	jump_rel .loop

MotionScript_33a15:
	set_scripts AnimScript_270c8, MotionScript_33a1d

; unreferenced
MotionScript_33a1a:
	set_velocities  8, VEL_LEFT_1_00, 0
MotionScript_33a1d:
.loop
	set_velocities  4, VEL_RIGHT_2_00, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_2_00, 0
	set_velocities  4, VEL_RIGHT_1_25, 0
	set_velocities  4, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_1_00, 0
	jump_rel .loop

; unreferenced
MotionScript_33a2e:
	set_velocities  2, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_2_00
	jump_abs MotionScript_33a2e

; unreferenced
MotionScript_33a37:
	set_velocities  2, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_2_00
	jump_abs MotionScript_33a37

; unreferenced
MotionScript_33a40:
	set_velocities 60, VEL_LEFT_3_00, 0
	script_end

; unreferenced
MotionScript_33a44:
	set_velocities 60, VEL_RIGHT_3_00, 0
	script_end

; unreferenced
MotionScript_33a48:
	set_velocities 18, 0, 0
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities 10, 0, 0
	set_velocities  0, 0, 0

MotionScript_33a5a:
	position_offset -20, 8
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities 14, 0, 0
	script_end

MotionScript_33a67:
	position_offset 20, 8
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities 14, 0, 0
	script_end

MotionScript_33a74:
	position_offset -8, 8
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities 14, 0, 0
	script_end

MotionScript_33a81:
	position_offset 8, 8
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities 14, 0, 0
	script_end

MotionScript_33a8e:
	position_offset 16, -18
	set_velocities  0, 0, 0

MotionScript_33a94:
	position_offset 8, -25
	set_velocities  0, 0, 0

MotionScript_33a9a:
	position_offset -8, -25
	set_velocities  0, 0, 0

MotionScript_33aa0:
	position_offset -16, -18
	set_velocities  0, 0, 0

MotionScript_33aa6:
	position_offset -23, -6
	set_velocities  0, 0, 0

MotionScript_33aac:
	position_offset -23, 6
	set_velocities  0, 0, 0

MotionScript_33ab2:
	position_offset -8, 10
	set_velocities  0, 0, 0

MotionScript_33ab8:
	position_offset 23, -6
	set_velocities  0, 0, 0

MotionScript_33abe:
	position_offset 23, 6
	set_velocities  0, 0, 0

MotionScript_33ac4:
	position_offset 8, 10
	set_velocities  0, 0, 0

MotionScript_33aca:
	set_update_func Func_14172, Data_1c1f0
.loop
	script_exec Func_48b4
	set_velocities  1, 0, 0
	jump_rel .loop

MotionScript_OnKingDededeDestroyed:
	script_exec_arg ScriptFunc_AddScore, SCORE_10000
	set_flags hHUDFlags, HUD_BOSS_BATTLE, HUD_UPDATE_FIRST_ROW | HUD_UPDATE_LABEL | HUD_UPDATE_SCORE_DIGITS
	script_exec Func_48c0
	script_end

MotionScript_33ae4:
.script_33ae4
	jumptable_random 7
	dw .script_33b08
	dw .script_33b1e
	dw .script_33b34
	dw .script_33b4a
	dw .script_33b60
	dw .script_33b76
	dw .script_33b8c
	dw .script_33ba2

.script_33af6
	jumptable_random 7
	dw .script_33bb8
	dw .script_33bce
	dw .script_33be4
	dw .script_33bfa
	dw .script_33c10
	dw .script_33c26
	dw .script_33c3c
	dw .script_33c52

.script_33b08
	position_offset -40, -16
	set_velocities  2, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  2, 0, 0
	set_velocities  2, VEL_RIGHT_0_25, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_00
	script_end
.script_33b1e
	position_offset -24, -16
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  2, 0, VEL_DOWN_0_50
	set_velocities  2, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  2, VEL_RIGHT_3_00, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_0_75
	script_end
.script_33b34
	position_offset -48, -8
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_1_8TH
	set_velocities  2, 0, VEL_DOWN_1_8TH
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_3_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_8TH
	script_end
.script_33b4a
	position_offset -8, -16
	set_velocities  2, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_2_00, 0
	set_velocities  2, 0, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_4_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_4_00, 0
	script_end
.script_33b60
	position_offset -40, 16
	set_velocities  2, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  2, 0, 0
	set_velocities  2, VEL_RIGHT_0_25, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_1_00
	script_end
.script_33b76
	position_offset -24, 16
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  2, 0, VEL_UP_0_50
	set_velocities  2, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  2, VEL_RIGHT_3_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_0_75
	script_end
.script_33b8c
	position_offset -48, 8
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_1_8TH
	set_velocities  2, 0, VEL_UP_1_8TH
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_3_00, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_1_8TH
	script_end
.script_33ba2
	position_offset -8, 16
	set_velocities  2, VEL_LEFT_4_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_2_00, 0
	set_velocities  2, 0, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_4_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_4_00, 0
	script_end
.script_33bb8
	position_offset 40, -16
	set_velocities  2, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  2, 0, 0
	set_velocities  2, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_00
	script_end
.script_33bce
	position_offset 24, -16
	set_velocities  2, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  2, 0, VEL_DOWN_0_50
	set_velocities  2, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_0_75
	script_end
.script_33be4
	position_offset 48, -8
	set_velocities  2, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	set_velocities  2, 0, VEL_DOWN_1_8TH
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_8TH
	script_end
.script_33bfa
	position_offset 8, -16
	set_velocities  2, VEL_RIGHT_4_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_2_00, 0
	set_velocities  2, 0, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_4_00
	set_velocities  2, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  2, VEL_LEFT_4_00, 0
	script_end
.script_33c10
	position_offset 40, 16
	set_velocities  2, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  2, 0, 0
	set_velocities  2, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_1_00
	script_end
.script_33c26
	position_offset 24, 16
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  2, 0, VEL_UP_0_50
	set_velocities  2, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_0_75
	script_end
.script_33c3c
	position_offset 48, 8
	set_velocities  2, VEL_RIGHT_1_00, VEL_UP_1_8TH
	set_velocities  2, 0, VEL_UP_1_8TH
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_1_8TH
	script_end
.script_33c52
	position_offset 8, 16
	set_velocities  2, VEL_RIGHT_4_00, VEL_DOWN_2_00
	set_velocities  2, VEL_RIGHT_2_00, 0
	set_velocities  2, 0, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_UP_4_00
	set_velocities  2, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_4_00, 0
	script_end

MotionScript_RandomLeftDirection:
	jumptable_random 3
	dw .script_33c72
	dw .script_33c75
	dw .script_33c78
	dw .script_33c7b

.script_33c72
	set_velocities  0, VEL_LEFT_3_00, VEL_DOWN_0_75

.script_33c75
	set_velocities  0, VEL_LEFT_3_00, VEL_DOWN_1_8TH

.script_33c78
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_1_8TH

.script_33c7b
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_0_75

	set_velocities  0, 0, 0

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
	set_scripts AnimScript_2028f, MotionScript_10008
