StageTransitions:
	table_width 2
	dw .GreenGreens  ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede     ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 2
	dw .GreenGreens0 ; GREEN_GREENS_0
	dw .NoTransition ; GREEN_GREENS_1
	dw .NoTransition ; GREEN_GREENS_2
	dw .NoTransition ; GREEN_GREENS_3
	dw .GreenGreens4 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 2
	dw .NoTransition ; CASTLE_LOLOLO_00
	dw .NoTransition ; CASTLE_LOLOLO_01
	dw .NoTransition ; CASTLE_LOLOLO_02
	dw .NoTransition ; CASTLE_LOLOLO_03
	dw .NoTransition ; CASTLE_LOLOLO_04
	dw .NoTransition ; CASTLE_LOLOLO_05
	dw .NoTransition ; CASTLE_LOLOLO_06
	dw .CastleLololo07 ; CASTLE_LOLOLO_07
	dw .CastleLololo08 ; CASTLE_LOLOLO_08
	dw .NoTransition ; CASTLE_LOLOLO_09
	dw .NoTransition ; CASTLE_LOLOLO_10
	dw .NoTransition ; CASTLE_LOLOLO_11
	dw .NoTransition ; CASTLE_LOLOLO_12
	dw .NoTransition ; CASTLE_LOLOLO_13
	dw .CastleLololo14 ; CASTLE_LOLOLO_14
	dw .CastleLololo15 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 2
	dw .NoTransition ; FLOAT_ISLANDS_0
	dw .NoTransition ; FLOAT_ISLANDS_1
	dw .NoTransition ; FLOAT_ISLANDS_2
	dw .NoTransition ; FLOAT_ISLANDS_3
	dw .NoTransition ; FLOAT_ISLANDS_4
	dw .FloatIslands5 ; FLOAT_ISLANDS_5
	dw .NoTransition ; FLOAT_ISLANDS_6
	dw .FloatIslands6 ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 2
	dw .NoTransition ; BUBBLY_CLOUDS_0
	dw .NoTransition ; BUBBLY_CLOUDS_1
	dw .NoTransition ; BUBBLY_CLOUDS_2
	dw .NoTransition ; BUBBLY_CLOUDS_3
	dw .BubblyClouds4 ; BUBBLY_CLOUDS_4
	dw .NoTransition ; BUBBLY_CLOUDS_5
	dw .NoTransition ; BUBBLY_CLOUDS_6
	dw .NoTransition ; BUBBLY_CLOUDS_7
	dw .NoTransition ; BUBBLY_CLOUDS_8
	dw .BubblyClouds9 ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 2
	dw .MtDedede0 ; MT_DEDEDE_0
	dw .NoTransition ; MT_DEDEDE_1
	dw .NoTransition ; MT_DEDEDE_2
	dw .NoTransition ; MT_DEDEDE_3
	dw .NoTransition ; MT_DEDEDE_4
	dw .MtDedede5 ; MT_DEDEDE_5
	dw .MtDedede6 ; MT_DEDEDE_6
	dw .MtDedede7 ; MT_DEDEDE_7
	dw .MtDedede8 ; MT_DEDEDE_8
	dw .MtDedede9 ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

.NoTransition:
	trans_end 1

.GreenGreens0:
	trans_wait 60
	trans_move_kirby_1 0.5, 10
	trans_move_kirby_1 1.0, 10
	trans_move_kirby_1 2.0, 10
	trans_move_kirby_1 3.0, 11
	trans_move_kirby_1 4.0, 86
	trans_move_kirby_1 3.0, 11
	trans_move_kirby_1 2.0, 10
	trans_move_kirby_1 1.0, 10
	trans_move_kirby_1 0.5, 10
	trans_wait 120
	trans_change_area GREEN_GREENS_2, 1, 1, 1
	trans_set_motion_script MotionScript_1000b, 1
	trans_wait 255
	trans_end 1

.GreenGreens4:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.CastleLololo07:
	trans_wait 60
	trans_move_kirby_1 0.5, 10
	trans_move_kirby_1 1.0, 10
	trans_move_kirby_1 2.0, 10
	trans_move_kirby_1 3.0, 11
	trans_move_kirby_1 4.0, 86
	trans_move_kirby_1 3.0, 11
	trans_move_kirby_1 2.0, 10
	trans_move_kirby_1 1.0, 10
	trans_move_kirby_1 0.5, 10
	trans_wait 30
	trans_change_area CASTLE_LOLOLO_08, 1, 1, 1
	trans_set_motion_script MotionScript_10014, 1
	trans_wait 240
	trans_end 1

.CastleLololo08:
	trans_change_area CASTLE_LOLOLO_09, 1, 9, 1
	trans_set_motion_script MotionScript_10276, 1
	trans_wait 30
	trans_end 1

.CastleLololo14:
	trans_change_area CASTLE_LOLOLO_15, 1, 1, 1
	trans_end 1

.CastleLololo15:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.FloatIslands5:
	trans_wait 160
	trans_move_kirby_2 1.0, 10
	trans_move_kirby_2 2.0, 10
	trans_move_kirby_2 3.0, 10
	trans_move_kirby_2 4.0, 34
	trans_move_kirby_2 3.0, 10
	trans_move_kirby_2 2.0, 10
	trans_move_kirby_2 1.0, 10
	trans_wait 140
	trans_change_area FLOAT_ISLANDS_6, 1, 1, 1
	trans_set_motion_script MotionScript_1002f, 1
	trans_wait 200
	trans_change_area FLOAT_ISLANDS_7, 1, 1, 1
	trans_set_motion_script MotionScript_10056, 1
	trans_wait 255
	trans_end 1

.FloatIslands6:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.BubblyClouds4:
	trans_wait 100
	trans_move_kirby_2 0.5, 10
	trans_move_kirby_2 1.0, 10
	trans_move_kirby_2 2.0, 10
	trans_move_kirby_2 3.0, 11
	trans_move_kirby_2 4.0, 44
	trans_wait 120
	trans_change_area BUBBLY_CLOUDS_5, 1, 1, 1
	trans_set_motion_script MotionScript_100bf, 1
	trans_wait 255
	trans_end 1

.BubblyClouds9:
	trans_wait 240
	trans_wait 240
	trans_wait 240
	trans_next_stage 1

.MtDedede0:
	trans_move_kirby_1 1.75, 240
	trans_move_kirby_1 1.75, 188
	trans_move_kirby_1 1.50,  10
	trans_move_kirby_1 1.25,  10
	trans_move_kirby_1 1.00,  10
	trans_move_kirby_1 0.75,  10
	trans_move_kirby_1 0.50,  10
	trans_move_kirby_1 0.25,  10
	trans_move_kirby_1   $0,  10
	trans_wait 50
	trans_end 1

.MtDedede6:
.MtDedede7:
.MtDedede8:
.MtDedede9:
	trans_change_area MT_DEDEDE_0, 51, 1, 1
	trans_set_motion_script MotionScript_1011d, 1
	trans_wait 240
	trans_end 1

.MtDedede5:
	trans_epilogue 1

TransitionAnimScripts:
	table_width 2
	dw .GreenGreens ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 2
	dw AnimScript_2004b ; GREEN_GREENS_0
	dw NULL ; GREEN_GREENS_1
	dw NULL ; GREEN_GREENS_2
	dw NULL ; GREEN_GREENS_3
	dw AnimScript_201b7 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 2
	dw NULL ; CASTLE_LOLOLO_00
	dw NULL ; CASTLE_LOLOLO_01
	dw NULL ; CASTLE_LOLOLO_02
	dw NULL ; CASTLE_LOLOLO_03
	dw NULL ; CASTLE_LOLOLO_04
	dw NULL ; CASTLE_LOLOLO_05
	dw NULL ; CASTLE_LOLOLO_06
	dw AnimScript_20073 ; CASTLE_LOLOLO_07
	dw AnimScript_20000 ; CASTLE_LOLOLO_08
	dw AnimScript_20000 ; CASTLE_LOLOLO_09
	dw NULL ; CASTLE_LOLOLO_10
	dw NULL ; CASTLE_LOLOLO_11
	dw NULL ; CASTLE_LOLOLO_12
	dw NULL ; CASTLE_LOLOLO_13
	dw AnimScript_20000 ; CASTLE_LOLOLO_14
	dw AnimScript_201b7 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 2
	dw NULL ; FLOAT_ISLANDS_0
	dw NULL ; FLOAT_ISLANDS_1
	dw NULL ; FLOAT_ISLANDS_2
	dw NULL ; FLOAT_ISLANDS_3
	dw NULL ; FLOAT_ISLANDS_4
	dw AnimScript_200a3 ; FLOAT_ISLANDS_5
	dw NULL ; FLOAT_ISLANDS_6
	dw AnimScript_201b7 ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 2
	dw NULL ; BUBBLY_CLOUDS_0
	dw NULL ; BUBBLY_CLOUDS_1
	dw NULL ; BUBBLY_CLOUDS_2
	dw NULL ; BUBBLY_CLOUDS_3
	dw AnimScript_200b4 ; BUBBLY_CLOUDS_4
	dw NULL ; BUBBLY_CLOUDS_5
	dw NULL ; BUBBLY_CLOUDS_6
	dw NULL ; BUBBLY_CLOUDS_7
	dw NULL ; BUBBLY_CLOUDS_8
	dw AnimScript_201b7 ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 2
	dw AnimScript_20206 ; MT_DEDEDE_0
	dw NULL ; MT_DEDEDE_1
	dw NULL ; MT_DEDEDE_2
	dw NULL ; MT_DEDEDE_3
	dw NULL ; MT_DEDEDE_4
	dw AnimScript_2004a ; MT_DEDEDE_5
	dw AnimScript_2004a ; MT_DEDEDE_6
	dw AnimScript_2004a ; MT_DEDEDE_7
	dw AnimScript_2004a ; MT_DEDEDE_8
	dw AnimScript_2004a ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS
