Data_3c000::
	table_width 2
	dw .GreenGreens ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 4
	dw Data_3c202, Data_3c2d0 ; GREEN_GREENS_0
	dw Data_3c245, Data_3c2d0 ; GREEN_GREENS_1
	dw Data_3c24f, Data_3c2d0 ; GREEN_GREENS_2
	dw Data_3c2a1, Data_3c2d4 ; GREEN_GREENS_3
	dw Data_3c2c9, Data_3c2f9 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 4
	dw Data_3c5b2, Data_3c5b9 ; CASTLE_LOLOLO_00
	dw Data_3c621, Data_3c625 ; CASTLE_LOLOLO_01
	dw Data_3c692, Data_3c6a2 ; CASTLE_LOLOLO_02
	dw Data_3c5ca, Data_3c5e0 ; CASTLE_LOLOLO_03
	dw Data_3c6d0, Data_3c6d7 ; CASTLE_LOLOLO_04
	dw Data_3c71c, Data_3c73b ; CASTLE_LOLOLO_05
	dw Data_3c7b5, Data_3c7b9 ; CASTLE_LOLOLO_06
	dw Data_3c80c, Data_3c828 ; CASTLE_LOLOLO_07
	dw Data_3dd48, Data_3dd4f ; CASTLE_LOLOLO_08
	dw Data_3c8d3, Data_3c8dd ; CASTLE_LOLOLO_09
	dw Data_3c8fc, Data_3c90c ; CASTLE_LOLOLO_10
	dw Data_3c87d, Data_3c893 ; CASTLE_LOLOLO_11
	dw Data_3c93a, Data_3c953 ; CASTLE_LOLOLO_12
	dw Data_3c9b3, Data_3c9c9 ; CASTLE_LOLOLO_13
	dw Data_3dd56, Data_3dd60 ; CASTLE_LOLOLO_14
	dw Data_3ca09, Data_3ca13 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 4
	dw Data_3ca2c, Data_3ca9c ; FLOAT_ISLANDS_0
	dw Data_3caa0, Data_3cada ; FLOAT_ISLANDS_1
	dw Data_3ca9c, Data_3cb14 ; FLOAT_ISLANDS_2
	dw Data_3cb2a, Data_3cb67 ; FLOAT_ISLANDS_3
	dw Data_3cb6b, Data_3cb75 ; FLOAT_ISLANDS_4
	dw Data_3cb7f, Data_3cb86 ; FLOAT_ISLANDS_5
	dw Data_3cb90, Data_3cb97 ; FLOAT_ISLANDS_6
	dw Data_3cb9b, Data_3cbae ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 4
	dw Data_3cf37, Data_3cf92 ; BUBBLY_CLOUDS_0
	dw Data_3d0c2, Data_3d0fc ; BUBBLY_CLOUDS_1
	dw Data_3d1b4, Data_3d1b8 ; BUBBLY_CLOUDS_2
	dw Data_3d258, Data_3d289 ; BUBBLY_CLOUDS_3
	dw Data_3dd0b, Data_3dd12 ; BUBBLY_CLOUDS_4
	dw Data_3d34e, Data_3d373 ; BUBBLY_CLOUDS_5
	dw Data_3d415, Data_3d434 ; BUBBLY_CLOUDS_6
	dw Data_3d494, Data_3d4ad ; BUBBLY_CLOUDS_7
	dw Data_3d530, Data_3d534 ; BUBBLY_CLOUDS_8
	dw Data_3dd26, Data_3dd2d ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 4
	dw Data_3dd88, Data_3de34 ; MT_DEDEDE_0
	dw Data_3dd8c, Data_3de34 ; MT_DEDEDE_1
	dw Data_3dda5, Data_3ddc4 ; MT_DEDEDE_2
	dw Data_3dde3, Data_3ddff ; MT_DEDEDE_3
	dw Data_3de34, Data_3de0f ; MT_DEDEDE_4
	dw Data_3de38, Data_3de34 ; MT_DEDEDE_5
	dw Data_3c2c9, Data_3c2f9 ; MT_DEDEDE_6
	dw Data_3cb9b, Data_3cbae ; MT_DEDEDE_7
	dw Data_3dd56, Data_3dd60 ; MT_DEDEDE_8
	dw Data_3dd26, Data_3dd2d ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

Data_3c0ce::
	table_width 4
	dw Data_3d699, Data_3dbf9 ; SCENE_TITLE_SCREEN
	dw Data_3d6c4, Data_3dbf9 ; SCENE_SOUND_TEST
	dw Data_3d707, Data_3dbf9 ; SCENE_EPILOGUE_DEDEDE_LAUNCH
	dw Data_3d711, Data_3dbf9 ; SCENE_EPILOGUE_KIRBY_DANCE
	dw Data_3d727, Data_3dbf9 ; SCENE_EPILOGUE_KIRBY_INFLATE
	dw Data_3d72e, Data_3dbf9 ; SCENE_EPILOGUE_FALLING_FOOD
	dw Data_3d73b, Data_3dbf9 ; SCENE_CREDITS
	dw Data_3d6ce, Data_3dbf9 ; SCENE_EPILOGUE_KIRBY_DEFLATE
	dw Data_3d6ea, Data_3dbf9 ; SCENE_EPILOGUE_BYE_BYE
	dw Data_3d703, Data_3dbf9 ; SCENE_GAME_OVER
	dw Data_3d748, Data_3dbf9 ; SCENE_CONTINUE
	dw Data_3d881, Data_3dbf9 ; SCENE_GREEN_GREENS_ENEMIES_1
	dw Data_3d897, Data_3dbf9 ; SCENE_GREEN_GREENS_ENEMIES_2
	dw Data_3d8aa, Data_3dbf9 ; SCENE_GREEN_GREENS_ENEMIES_3
	dw Data_3d8b4, Data_3dbf9 ; SCENE_CASTLE_LOLOLO_ENEMIES_1
	dw Data_3d8d0, Data_3dbf9 ; SCENE_CASTLE_LOLOLO_ENEMIES_2
	dw Data_3d8dd, Data_3dbf9 ; SCENE_FLOAT_ISLANDS_ENEMIES_1
	dw Data_3d8f3, Data_3dbf9 ; SCENE_FLOAT_ISLANDS_ENEMIES_2
	dw Data_3d8fd, Data_3dbf9 ; SCENE_BUBBLE_CLOUDS_ENEMIES_1
	dw Data_3d913, Data_3dbf9 ; SCENE_BUBBLE_CLOUDS_ENEMIES_2
	dw Data_3d920, Data_3dbf9 ; SCENE_GREEN_GREENS_ENEMIES_4
	dw Data_3d930, Data_3dbf9 ; SCENE_CASTLE_LOLOLO_ENEMIES_3
	dw Data_3d943, Data_3dbf9 ; SCENE_FLOAT_ISLANDS_ENEMIES_3
	dw Data_3d956, Data_3dbf9 ; SCENE_BUBBLE_CLOUDS_ENEMIES_3
	dw Data_3d969, Data_3dbf9 ; SCENE_KING_DEDEDE
	dw Data_3db67, Data_3dbf9 ; SCENE_CONFIG_MODE_UNLOCK
	dw Data_3db78, Data_3dbf9 ; SCENE_EXTRA_GAME_UNLOCK
	assert_table_length NUM_SCENES

Data_3c13a::
	dw Data_3db9d, Data_3dbf9
	dw Data_3dbb9, Data_3dbf9
	dw Data_3dbcf, Data_3dbf9
	dw Data_3dbdc, Data_3dbf9
	dw Data_3dbe6, Data_3dbf9
; 0x3c14e

SECTION "Bank F@4202", ROMX[$4202], BANK[$f]

Data_3c202:
	dbw $00, NULL
	dbw $0f, LevelObject_3c304
	dbw $11, LevelObject_3c318
	dbw $15, LevelObject_3c322
	dbw $16, LevelObject_3c32c
	dbw $18, LevelObject_3c336
	dbw $1f, LevelObject_3c340
	dbw $21, LevelObject_3c34a
	dbw $29, LevelObject_3c354
	dbw $30, LevelObject_3c35e
	dbw $30, LevelObject_3c368
	dbw $31, LevelObject_3c372
	dbw $39, LevelObject_3c386
	dbw $3d, LevelObject_3c390
	dbw $40, LevelObject_3c39a
	dbw $42, LevelObject_3c3a4
	dbw $43, LevelObject_3c3ae
	dbw $46, LevelObject_3c3b8
	dbw $47, LevelObject_3c3c2
	dbw $4a, LevelObject_3c3cc
	dbw $4f, LevelObject_3c3d6
	dbw $4e, LevelObject_3c3e0
	db $ff ; end

Data_3c245:
	dbw $00, NULL
	dbw $05, LevelObject_3c3eb
	dbw $0a, LevelObject_3c3f6
	db $ff ; end

Data_3c24f:
	dbw $00, NULL
	dbw $0a, LevelObject_3c45b
	dbw $0f, LevelObject_3c40b
	dbw $12, LevelObject_3c401
	dbw $15, LevelObject_3c415
	dbw $19, LevelObject_3c41f
	dbw $1b, LevelObject_3c429
	dbw $1f, LevelObject_3c433
	dbw $21, LevelObject_3c43d
	dbw $24, LevelObject_3c447
	dbw $26, LevelObject_3c451
	dbw $2a, LevelObject_3c470
	dbw $2b, LevelObject_3c47a
	dbw $2a, LevelObject_3c484
	dbw $2f, LevelObject_3c498
	dbw $30, LevelObject_3c4a2
	dbw $32, LevelObject_3c4ac
	dbw $38, LevelObject_3c4b6
	dbw $3a, LevelObject_3c4c0
	dbw $3b, LevelObject_3c4ca
	dbw $3f, LevelObject_3c4de
	dbw $41, LevelObject_3c4e8
	dbw $42, LevelObject_3c4f2
	dbw $44, LevelObject_3c4fc
	dbw $45, LevelObject_3c506
	dbw $46, LevelObject_3c510
	dbw $4c, LevelObject_3c51a
	db $ff ; end

Data_3c2a1:
	dbw $00, NULL
	dbw $01, LevelObject_3c556
	dbw $02, LevelObject_3c594
	dbw $03, LevelObject_3c58a
	dbw $06, LevelObject_3c524
	dbw $06, LevelObject_3c56c
	dbw $07, LevelObject_3c562
	dbw $09, LevelObject_3c52e
	dbw $09, LevelObject_3c54c
	dbw $0a, LevelObject_3c538
	dbw $0b, LevelObject_3c580
	dbw $0b, LevelObject_3c542
	dbw $0c, LevelObject_3c54c
	db $ff ; end

Data_3c2c9:
	dbw $00, NULL
	dbw $07, LevelObject_3c59e
	db $ff ; end

Data_3c2d0:
	dbw $00, NULL
	db $ff ; end

Data_3c2d4:
	dbw $00, NULL
	dbw $04, LevelObject_3c52e
	dbw $04, LevelObject_3c524
	dbw $07, LevelObject_3c538
	dbw $0e, LevelObject_3c556
	dbw $13, LevelObject_3c562
	dbw $13, LevelObject_3c542
	dbw $13, LevelObject_3c54c
	dbw $17, LevelObject_3c56c
	dbw $1c, LevelObject_3c580
	dbw $20, LevelObject_3c58a
	dbw $25, LevelObject_3c594
	db $ff ; end

Data_3c2f9:
	dbw $00, NULL
	dbw $16, LevelObject_3c59e
	dbw $1a, LevelObject_3c5a8
	db $ff ; end

	db $ff ; end

LevelObject_3c304:
	object 15, 5, 0, 0, AnimScript_24c6c, MotionScript_30d60, StandardEnemyProperties
; unreferenced
	object 17, 5, -8, 0, AnimScript_24dbf, MotionScript_312b3, Properties_370c
LevelObject_3c318:
	object 17, 5, 0, 0, AnimScript_24c6c, MotionScript_30d60, StandardEnemyProperties
LevelObject_3c322:
	object 21, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3c32c:
	object 22, 2, 0, 0, AnimScript_24cd5, MotionScript_30e0c, Properties_371e
LevelObject_3c336:
	object 24, 4, 0, 0, AnimScript_24cde, MotionScript_30e48, Properties_371e
LevelObject_3c340:
	object 31, 1, 0, 0, AnimScript_20647, MotionScript_305c6, Properties_36cd
LevelObject_3c34a:
	object 33, 5, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3c354:
	object 41, 5, 8, 0, AnimScript_24da3, MotionScript_312bf, Properties_370c
LevelObject_3c35e:
	object 48, 2, 0, 0, AnimScript_24dd5, MotionScript_304a4, Properties_36cd
LevelObject_3c368:
	object 48, 5, -8, 0, AnimScript_24dbf, MotionScript_312b3, Properties_370c
LevelObject_3c372:
	object 49, 2, 0, 8, AnimScript_24dd5, MotionScript_304a4, Properties_36cd
; unreferenced
	object 51, 3, 0, 0, AnimScript_24cde, MotionScript_30e48, Properties_371e
LevelObject_3c386:
	object 57, 4, 0, 0, AnimScript_24cde, MotionScript_30e48, Properties_371e
LevelObject_3c390:
	object 61, 1, 0, 0, AnimScript_20647, MotionScript_305c6, Properties_36cd
LevelObject_3c39a:
	object 64, 5, 0, 0, AnimScript_205cc, MotionScript_1042f, StandardEnemyProperties
LevelObject_3c3a4:
	object 66, 5, 0, 0, AnimScript_24ddd, MotionScript_30fd2, PoppyBrosJrProperties
LevelObject_3c3ae:
	object 67, 5, 8, 0, AnimScript_24dbf, MotionScript_312b3, Properties_370c
LevelObject_3c3b8:
	object 70, 5, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3c3c2:
	object 71, 3, 0, 0, AnimScript_24cd5, MotionScript_30e0c, Properties_371e
LevelObject_3c3cc:
	object 74, 4, 0, 0, AnimScript_24cde, MotionScript_30e48, Properties_371e
LevelObject_3c3d6:
	object 79, 2, 0, 0, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3c3e0:
	object 78, 3, -6, 0, AnimScript_24972, MotionScript_WarpStar, WarpStarFloorProperties, 2

LevelObject_3c3eb:
	object 5, 6, 0, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 0
LevelObject_3c3f6:
	object 10, 6, 0, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 1

LevelObject_3c401:
	object 18, 1, 0, 0, AnimScript_20647, MotionScript_305c6, Properties_36cd
LevelObject_3c40b:
	object 15, 6, 0, 0, AnimScript_24efb, MotionScript_310a8, PoppyBrosJrOnAppleProperties
LevelObject_3c415:
	object 21, 6, -8, 0, AnimScript_24da3, MotionScript_312bf, Properties_370c
LevelObject_3c41f:
	object 25, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3c429:
	object 27, 3, 0, 0, AnimScript_24dd5, MotionScript_304a4, Properties_36cd
LevelObject_3c433:
	object 31, 6, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3c43d:
	object 33, 1, 0, 0, AnimScript_20647, MotionScript_305c6, Properties_36cd
LevelObject_3c447:
	object 36, 6, 0, 0, AnimScript_24e30, MotionScript_3102a, GrizzoProperties
LevelObject_3c451:
	object 38, 0, -48, 0, AnimScript_20647, MotionScript_30ddd, Properties_36cd
LevelObject_3c45b:
	object 10, 0, -32, 0, AnimScript_24fba, MotionScript_31103, Data_3429, 6
; unreferenced
	object 55, 6, -8, 0, AnimScript_2063b, MotionScript_30dba, Properties_36cd
LevelObject_3c470:
	object 42, 2, 0, 0, AnimScript_24cd5, MotionScript_30e0c, Properties_371e
LevelObject_3c47a:
	object 43, 2, 0, 10, AnimScript_24cd5, MotionScript_304a4, Properties_371e
LevelObject_3c484:
	object 42, 6, 0, 0, AnimScript_24efb, MotionScript_310a8, PoppyBrosJrOnAppleProperties
; unreferenced
	object 45, 6, 0, 0, AnimScript_24cde, MotionScript_30e48, Properties_371e
LevelObject_3c498:
	object 47, 6, -8, 0, AnimScript_24dbf, MotionScript_312b3, Properties_370c
LevelObject_3c4a2:
	object 48, 5, 0, 0, AnimScript_2063b, MotionScript_30dba, Properties_36cd
LevelObject_3c4ac:
	object 50, 0, -70, 0, AnimScript_20647, MotionScript_30ddd, Properties_36cd
LevelObject_3c4b6:
	object 56, 0, -72, 0, AnimScript_20647, MotionScript_30ddd, Properties_36cd
LevelObject_3c4c0:
	object 58, 6, 0, 0, AnimScript_24ddd, MotionScript_30fba, PoppyBrosJrProperties
LevelObject_3c4ca:
	object 59, 2, 0, 0, AnimScript_24cd5, MotionScript_30e0c, Properties_371e
; unreferenced
	object 59, 6, -8, 0, AnimScript_24da3, MotionScript_312bf, Properties_370c
LevelObject_3c4de:
	object 63, 6, 0, 0, AnimScript_24eb3, MotionScript_3102a, PoppyBrosJrOnGrizzoProperties
LevelObject_3c4e8:
	object 65, 6, -16, 0, AnimScript_2063b, MotionScript_30dba, Properties_36cd
LevelObject_3c4f2:
	object 66, 6, 8, 0, AnimScript_24da3, MotionScript_312bf, Properties_370c
LevelObject_3c4fc:
	object 68, 1, 0, 0, AnimScript_20647, MotionScript_305c6, Properties_36cd
LevelObject_3c506:
	object 69, 2, 0, 0, AnimScript_24cd5, MotionScript_30e0c, Properties_371e
LevelObject_3c510:
	object 70, 6, 8, 0, AnimScript_24da3, MotionScript_312bf, Properties_370c
LevelObject_3c51a:
	object 76, 6, 0, 0, AnimScript_24eb3, MotionScript_3102a, PoppyBrosJrOnGrizzoProperties

LevelObject_3c524:
	object 6, 4, 0, 0, AnimScript_24cde, MotionScript_30e48, Properties_371e
LevelObject_3c52e:
	object 9, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3c538:
	object 10, 7, 0, 0, AnimScript_205cc, MotionScript_1042f, StandardEnemyProperties
LevelObject_3c542:
	object 11, 19, -7, 0, AnimScript_24d87, MotionScript_30f5f, Properties_3715
LevelObject_3c54c:
	object 12, 19, -7, 0, AnimScript_24d87, MotionScript_30f5f, Properties_3715
LevelObject_3c556:
	object 1, 14, 8, 0, AnimScript_2494e, MotionScript_10008, MaximTomatoProperties, 4
	db $00
LevelObject_3c562:
	object 7, 19, 0, 0, AnimScript_24cde, MotionScript_30e48, Properties_371e
LevelObject_3c56c:
	object 6, 23, 2, 0, AnimScript_24d63, MotionScript_30f0b, Properties_3715
; unreferenced
	object 14, 23, 2, 0, AnimScript_24e7d, MotionScript_10008, GrizzoProperties
LevelObject_3c580:
	object 11, 28, 0, 0, AnimScript_24e30, MotionScript_3102a, GrizzoProperties
LevelObject_3c58a:
	object 3, 32, 0, 0, AnimScript_24e42, MotionScript_31032, GrizzoProperties
LevelObject_3c594:
	object 2, 37, 0, 0, AnimScript_24d63, MotionScript_30f0b, Properties_3715

LevelObject_3c59e:
	object 7, 22, 2, -43, AnimScript_250a6, MotionScript_10008, Data_3421
LevelObject_3c5a8:
	object 0, 26, 0, 0, AnimScript_25259, MotionScript_10008, Data_3421

Data_3c5b2:
	dbw $00, NULL
	dbw $08, LevelObject_3c5c0
	db $ff ; end

Data_3c5b9:
	dbw $00, NULL
	dbw $01, LevelObject_3c5c0
	db $ff ; end

LevelObject_3c5c0:
	object 8, 2, 0, 6, AnimScript_2552b, MotionScript_31630, StandardEnemyGravityProperties

Data_3c5ca:
	dbw $00, NULL
	dbw $0a, LevelObject_3c603
	dbw $0b, LevelObject_3c5e4
	dbw $0b, LevelObject_3c5f8
	dbw $14, LevelObject_3c60d
	dbw $15, LevelObject_3c5ee
	dbw $16, LevelObject_3c617
	db $ff ; end

Data_3c5e0:
	dbw $00, NULL
	db $ff ; end

LevelObject_3c5e4:
	object 11, 0, -64, 0, AnimScript_25322, MotionScript_31344, StandardEnemyProperties
LevelObject_3c5ee:
	object 21, 0, -64, 0, AnimScript_25322, MotionScript_31344, StandardEnemyProperties
LevelObject_3c5f8:
	object 11, 6, 0, 0, AnimScript_2490e, MotionScript_10008, BombProperties, 255
LevelObject_3c603:
	object 10, 6, -32, 0, AnimScript_25439, MotionScript_314d5, Properties_36cd
LevelObject_3c60d:
	object 20, 6, -32, 0, AnimScript_25439, MotionScript_314d5, Properties_36cd
LevelObject_3c617:
	object 22, 6, 0, 0, AnimScript_2552b, MotionScript_31689, StandardEnemyProperties

Data_3c621:
	dbw $00, NULL
	db $ff ; end

Data_3c625:
	dbw $00, NULL
	dbw $01, LevelObject_3c64c
	dbw $01, LevelObject_3c656
	dbw $07, LevelObject_3c660
	dbw $0b, LevelObject_3c66a
	dbw $0b, LevelObject_3c641
	dbw $0e, LevelObject_3c674
	dbw $0e, LevelObject_3c67e
	dbw $0e, LevelObject_3c688
	db $ff ; end

LevelObject_3c641:
	object 4, 11, 8, 0, AnimScript_2493f, MotionScript_10008, MikeProperties, 7
LevelObject_3c64c:
	object 0, 3, 0, 0, AnimScript_253c4, MotionScript_102e0, Properties_36cd
LevelObject_3c656:
	object 7, 1, 8, 0, AnimScript_25616, MotionScript_10008, ShotzoProperties
LevelObject_3c660:
	object 5, 10, 0, 0, AnimScript_20572, MotionScript_30d87, Properties_34c0
LevelObject_3c66a:
	object 2, 11, 0, 0, AnimScript_20650, MotionScript_3179d, Properties_36cd
LevelObject_3c674:
	object 3, 14, 0, 0, AnimScript_257d5, MotionScript_31833, StandardEnemyProperties
LevelObject_3c67e:
	object 4, 14, 0, 0, AnimScript_257ae, MotionScript_31845, StandardEnemyProperties
LevelObject_3c688:
	object 7, 14, 6, 0, AnimScript_257d5, MotionScript_31833, StandardEnemyProperties

Data_3c692:
	dbw $00, NULL
	dbw $00, LevelObject_3c6a6
	dbw $02, LevelObject_3c6c5
	dbw $07, LevelObject_3c6ba
	dbw $09, LevelObject_3c6b0
	db $ff ; end

Data_3c6a2:
	dbw $00, NULL
	db $ff ; end

LevelObject_3c6a6:
	object 0, 3, 0, 0, AnimScript_2538e, MotionScript_31438, Properties_36cd
LevelObject_3c6b0:
	object 9, 3, 0, 0, AnimScript_25364, MotionScript_313ff, Properties_36cd
LevelObject_3c6ba:
	object 7, 6, 0, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 0
LevelObject_3c6c5:
	object 2, 6, 0, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 1

Data_3c6d0:
	dbw $00, NULL
	dbw $09, LevelObject_3c708
	db $ff ; end

Data_3c6d7:
	dbw $00, NULL
	dbw $01, LevelObject_3c6ea
	dbw $06, LevelObject_3c6fe
	dbw $06, LevelObject_3c712
	dbw $09, LevelObject_3c6f4
	dbw $02, LevelObject_3c708
	db $ff ; end

LevelObject_3c6ea:
	object 7, 1, 0, 0, AnimScript_2556b, MotionScript_10008, Data_3421
LevelObject_3c6f4:
	object 17, 9, 0, 0, AnimScript_2556b, MotionScript_10008, Data_3421
LevelObject_3c6fe:
	object 4, 6, 0, 0, AnimScript_25558, MotionScript_316b3, Data_3421
LevelObject_3c708:
	object 15, 2, 0, 0, AnimScript_25558, MotionScript_316b3, Data_3421
LevelObject_3c712:
	object 17, 6, 0, 0, AnimScript_25558, MotionScript_316b3, Data_3421

Data_3c71c:
	dbw $00, NULL
	dbw $02, LevelObject_3c765
	dbw $05, LevelObject_3c797
	dbw $08, LevelObject_3c75a
	dbw $09, LevelObject_3c783
	dbw $09, LevelObject_3c7a1
	dbw $0b, LevelObject_3c7ab
	dbw $0d, LevelObject_3c76f
	dbw $0e, LevelObject_3c78d
	dbw $0f, LevelObject_3c779
	db $ff ; end

Data_3c73b:
	dbw $00, NULL
	dbw $01, LevelObject_3c783
	dbw $01, LevelObject_3c78d
	dbw $02, LevelObject_3c7ab
	dbw $03, LevelObject_3c7a1
	dbw $05, LevelObject_3c765
	dbw $06, LevelObject_3c779
	dbw $07, LevelObject_3c75a
	dbw $09, LevelObject_3c76f
	dbw $07, LevelObject_3c797
	db $ff ; end

LevelObject_3c75a:
	object 8, 7, 0, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 8
LevelObject_3c765:
	object 2, 5, 0, 0, AnimScript_252ce, MotionScript_10008, GlunkProperties
LevelObject_3c76f:
	object 13, 9, 0, 0, AnimScript_252ce, MotionScript_10008, GlunkProperties
LevelObject_3c779:
	object 15, 6, 0, 0, AnimScript_252ce, MotionScript_10008, GlunkProperties
LevelObject_3c783:
	object 9, 1, -32, 0, AnimScript_252ad, MotionScript_31334, GlunkProperties
LevelObject_3c78d:
	object 14, 1, -32, 0, AnimScript_252ad, MotionScript_31334, GlunkProperties
LevelObject_3c797:
	object 5, 7, 0, 0, AnimScript_20572, MotionScript_305c6, GordoProperties
LevelObject_3c7a1:
	object 9, 3, 4, 0, AnimScript_20572, MotionScript_315a2, GordoProperties
LevelObject_3c7ab:
	object 11, 2, 0, 0, AnimScript_20647, MotionScript_102ce, Properties_36cd

Data_3c7b5:
	dbw $00, NULL
	db $ff ; end

Data_3c7b9:
	dbw $00, NULL
	dbw $05, LevelObject_3c7cf
	dbw $06, LevelObject_3c7e3
	dbw $07, LevelObject_3c7ed
	dbw $08, LevelObject_3c7f7
	dbw $0b, LevelObject_3c801
	dbw $12, LevelObject_3c7d9
	db $ff ; end

LevelObject_3c7cf:
	object 9, 5, 0, 0, AnimScript_254e7, MotionScript_31636, StandardEnemyProperties
LevelObject_3c7d9:
	object 1, 18, 0, 0, AnimScript_252ce, MotionScript_10008, GlunkProperties
LevelObject_3c7e3:
	object 1, 7, 0, -16, AnimScript_20650, MotionScript_317a6, Properties_36cd
LevelObject_3c7ed:
	object 4, 7, 0, 0, AnimScript_20650, MotionScript_317ac, Properties_36cd
LevelObject_3c7f7:
	object 8, 8, 0, 0, AnimScript_25616, MotionScript_10008, Properties_3703
LevelObject_3c801:
	object 8, 11, 0, 0, AnimScript_24924, MotionScript_10008, InvincibilityCandyProperties, 2

Data_3c80c:
	dbw $00, NULL
	dbw $07, LevelObject_3c837
	dbw $0a, LevelObject_3c85f
	dbw $0b, LevelObject_3c841
	dbw $0f, LevelObject_3c869
	dbw $0f, LevelObject_3c84b
	dbw $11, LevelObject_3c855
	dbw $14, LevelObject_3c873
	dbw $19, LevelObject_3c82c
	db $ff ; end

Data_3c828:
	dbw $00, NULL
	db $ff ; end

LevelObject_3c82c:
	object 25, 6, -8, 0, AnimScript_24972, MotionScript_WarpStar, WarpStarFloatingProperties, 3
LevelObject_3c837:
	object 7, 1, 0, 0, AnimScript_2548e, MotionScript_31512, Properties_3742
LevelObject_3c841:
	object 11, 3, 0, 0, AnimScript_20000, MotionScript_31551, Properties_3742
LevelObject_3c84b:
	object 15, 5, 0, 0, AnimScript_2548e, MotionScript_31530, Properties_3742
LevelObject_3c855:
	object 17, 1, 0, 0, AnimScript_2548e, MotionScript_31512, Properties_3742
LevelObject_3c85f:
	object 10, 4, 0, 0, AnimScript_253bb, MotionScript_313cc, Properties_36cd
LevelObject_3c869:
	object 15, 5, 22, -18, AnimScript_253bb, MotionScript_313f3, Properties_36cd
LevelObject_3c873:
	object 20, 4, 0, 0, AnimScript_253bb, MotionScript_313cc, Properties_36cd

Data_3c87d:
	dbw $00, NULL
	dbw $06, LevelObject_3c8ab
	dbw $08, LevelObject_3c8b5
	dbw $0a, LevelObject_3c8bf
	dbw $0b, LevelObject_3c897
	dbw $0f, LevelObject_3c8c9
	dbw $0f, LevelObject_3c8a1
	db $ff ; end

Data_3c893:
	dbw $00, NULL
	db $ff ; end

LevelObject_3c897:
	object 11, 8, 0, 0, AnimScript_25319, MotionScript_3175b, StandardEnemyProperties
LevelObject_3c8a1:
	object 15, 8, 0, 0, AnimScript_25319, MotionScript_3175b, StandardEnemyProperties
LevelObject_3c8ab:
	object 6, 0, 0, 0, AnimScript_25520, MotionScript_31681, StandardEnemyGravityProperties
LevelObject_3c8b5:
	object 8, 0, 0, 0, AnimScript_25520, MotionScript_31681, StandardEnemyGravityProperties
LevelObject_3c8bf:
	object 10, 0, 0, 0, AnimScript_25520, MotionScript_31681, StandardEnemyGravityProperties
LevelObject_3c8c9:
	object 15, 0, 0, 0, AnimScript_25520, MotionScript_31681, StandardEnemyGravityProperties

Data_3c8d3:
	dbw $00, NULL
	dbw $0b, LevelObject_3c8f2
	dbw $0b, LevelObject_3c8e7
	db $ff ; end

Data_3c8dd:
	dbw $00, NULL
	dbw $03, LevelObject_3c8f2
	dbw $09, LevelObject_3c8e7
	db $ff ; end

LevelObject_3c8e7:
	object 11, 9, 0, 0, AnimScript_2576d, MotionScript_10008, MaximTomatoProperties, 10
LevelObject_3c8f2:
	object 11, 3, 0, 0, AnimScript_2568a, MotionScript_10008, Data_3421

Data_3c8fc:
	dbw $00, NULL
	dbw $01, LevelObject_3c924
	dbw $01, LevelObject_3c910
	dbw $07, LevelObject_3c92f
	dbw $08, LevelObject_3c91a
	db $ff ; end

Data_3c90c:
	dbw $00, NULL
	db $ff ; end

LevelObject_3c910:
	object 1, 1, 8, 8, AnimScript_253f7, MotionScript_31489, Properties_36cd
LevelObject_3c91a:
	object 8, 1, -8, 8, AnimScript_253cd, MotionScript_31474, Properties_36cd
LevelObject_3c924:
	object 1, 1, 8, 0, AnimScript_2492d, MotionScript_10008, SpicyFoodProperties, 4
LevelObject_3c92f:
	object 7, 3, 8, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 5

Data_3c93a:
	dbw $00, NULL
	dbw $00, LevelObject_3c96c
	dbw $03, LevelObject_3c9a9
	dbw $06, LevelObject_3c995
	dbw $08, LevelObject_3c99f
	dbw $0a, LevelObject_3c977
	dbw $0b, LevelObject_3c981
	dbw $0c, LevelObject_3c98b
	db $ff ; end

Data_3c953:
	dbw $00, NULL
	dbw $03, LevelObject_3c995
	dbw $04, LevelObject_3c981
	dbw $05, LevelObject_3c9a9
	dbw $07, LevelObject_3c98b
	dbw $08, LevelObject_3c99f
	dbw $0a, LevelObject_3c96c
	dbw $0e, LevelObject_3c977
	db $ff ; end

LevelObject_3c96c:
	object 0, 10, 0, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 6
LevelObject_3c977:
	object 10, 14, 0, 0, AnimScript_25544, MotionScript_103ff, StandardEnemyProperties
LevelObject_3c981:
	object 11, 4, 0, 0, AnimScript_2556b, MotionScript_10008, Data_3421
LevelObject_3c98b:
	object 12, 7, 0, 0, AnimScript_20000, MotionScript_31358, Data_3421
LevelObject_3c995:
	object 6, 3, 0, 0, AnimScript_20572, MotionScript_315a2, GordoProperties
LevelObject_3c99f:
	object 8, 8, 0, 0, AnimScript_20572, MotionScript_305c6, GordoProperties
LevelObject_3c9a9:
	object 3, 5, 0, 0, AnimScript_20572, MotionScript_315a2, GordoProperties

Data_3c9b3:
	dbw $00, NULL
	dbw $01, LevelObject_3c9cd
	dbw $06, LevelObject_3c9e1
	dbw $07, LevelObject_3c9eb
	dbw $0a, LevelObject_3c9f5
	dbw $0c, LevelObject_3c9ff
	dbw $0d, LevelObject_3c9d7
	db $ff ; end

Data_3c9c9:
	dbw $00, NULL
	db $ff ; end

LevelObject_3c9cd:
	object 1, 3, 0, 0, AnimScript_25424, MotionScript_31809, StandardEnemyProperties
LevelObject_3c9d7:
	object 13, 3, 0, 0, AnimScript_25520, MotionScript_317b5, StandardEnemyProperties
LevelObject_3c9e1:
	object 6, 4, 0, 0, AnimScript_20587, MotionScript_102da, StandardEnemyGravityProperties
LevelObject_3c9eb:
	object 7, 3, 0, 0, AnimScript_20587, MotionScript_102da, StandardEnemyGravityProperties
LevelObject_3c9f5:
	object 10, 5, 0, 0, AnimScript_25322, MotionScript_31344, StandardEnemyProperties
LevelObject_3c9ff:
	object 12, 5, 0, 0, AnimScript_25322, MotionScript_31344, StandardEnemyProperties

Data_3ca09:
	dbw $00, NULL
	dbw $01, LevelObject_3ca17
	dbw $05, LevelObject_3ca21
	db $ff ; end

Data_3ca13:
	dbw $00, NULL
	db $ff ; end

LevelObject_3ca17:
	object 1, 1, 0, 0, AnimScript_20000, MotionScript_10008, Data_3425
LevelObject_3ca21:
	object 5, 3, -8, 0, AnimScript_24981, MotionScript_1032d, Data_3421
	db $1f

Data_3ca2c:
	dbw $00, NULL
	dbw $10, LevelObject_3cbb2
	dbw $12, LevelObject_3cbbc
	dbw $13, LevelObject_3cbc6
	dbw $14, LevelObject_3cbd0
	dbw $16, LevelObject_3cbda
	dbw $19, LevelObject_3cbe4
	dbw $1b, LevelObject_3cbee
	dbw $20, LevelObject_3cbf8
	dbw $20, LevelObject_3cc02
	dbw $22, LevelObject_3cc0c
	dbw $25, LevelObject_3cc16
	dbw $2d, LevelObject_3cc20
	dbw $2e, LevelObject_3cc2a
	dbw $36, LevelObject_3cc34
	dbw $38, LevelObject_3cc3e
	dbw $3c, LevelObject_3cc48
	dbw $3d, LevelObject_3cc52
	dbw $43, LevelObject_3cc5c
	dbw $45, LevelObject_3cc66
	dbw $50, LevelObject_3cc70
	dbw $50, LevelObject_3cc7a
	dbw $50, LevelObject_3cc84
	dbw $53, LevelObject_3cc8e
	dbw $57, LevelObject_3cc98
	dbw $5a, LevelObject_3cca2
	dbw $5a, LevelObject_3ccac
	dbw $5c, LevelObject_3ccb7
	dbw $61, LevelObject_3ccc1
	dbw $61, LevelObject_3cccb
	dbw $67, LevelObject_3ccd5
	dbw $68, LevelObject_3ccdf
	dbw $6a, LevelObject_3cce9
	dbw $6b, LevelObject_3ccf3
	dbw $6f, LevelObject_3ccfd
	dbw $6f, LevelObject_3cd07
	dbw $6f, LevelObject_3cd11
	db $ff ; end

Data_3ca9c:
	dbw $00, NULL
	db $ff ; end

Data_3caa0:
	dbw $00, NULL
	dbw $01, LevelObject_3cd1b
	dbw $01, LevelObject_3cd26
	dbw $03, LevelObject_3cd3a
	dbw $05, LevelObject_3cd30
	dbw $0a, LevelObject_3cd44
	dbw $0f, LevelObject_3cd4e
	dbw $10, LevelObject_3cd58
	dbw $15, LevelObject_3cd80
	dbw $17, LevelObject_3cd62
	dbw $18, LevelObject_3cd8a
	dbw $1a, LevelObject_3cd6c
	dbw $1e, LevelObject_3cd76
	dbw $23, LevelObject_3cd94
	dbw $23, LevelObject_3cd9e
	dbw $28, LevelObject_3cda8
	dbw $29, LevelObject_3cdb2
	dbw $2b, LevelObject_3cdbc
	dbw $2e, LevelObject_3cdc6
	db $ff ; end

Data_3cada:
	dbw $00, NULL
	dbw $01, LevelObject_3cda8
	dbw $02, LevelObject_3cdc6
	dbw $02, LevelObject_3cd4e
	dbw $02, LevelObject_3cd76
	dbw $03, LevelObject_3cd6c
	dbw $03, LevelObject_3cd62
	dbw $05, LevelObject_3cdb2
	dbw $05, LevelObject_3cd44
	dbw $08, LevelObject_3cd94
	dbw $08, LevelObject_3cd9e
	dbw $09, LevelObject_3cd26
	dbw $09, LevelObject_3cd3a
	dbw $09, LevelObject_3cdbc
	dbw $0c, LevelObject_3cd58
	dbw $0d, LevelObject_3cd8a
	dbw $0d, LevelObject_3cd1b
	dbw $0e, LevelObject_3cd80
	dbw $0e, LevelObject_3cd30
	db $ff ; end

Data_3cb14:
	dbw $00, NULL
	dbw $01, LevelObject_3cdef
	dbw $02, LevelObject_3cdd1
	dbw $03, LevelObject_3cddb
	dbw $03, LevelObject_3cde5
	dbw $0d, LevelObject_3cdf9
	dbw $16, LevelObject_3ce05
	db $ff ; end

Data_3cb2a:
	dbw $00, NULL
	dbw $0a, LevelObject_3ce10
	dbw $0e, LevelObject_3ce1a
	dbw $0f, LevelObject_3ce24
	dbw $12, LevelObject_3ce2f
	dbw $14, LevelObject_3ce39
	dbw $1c, LevelObject_3ce43
	dbw $1d, LevelObject_3ce4d
	dbw $1e, LevelObject_3ce57
	dbw $26, LevelObject_3ce61
	dbw $26, LevelObject_3ce6b
	dbw $27, LevelObject_3ce75
	dbw $2c, LevelObject_3ce7f
	dbw $2e, LevelObject_3ce89
	dbw $31, LevelObject_3ce93
	dbw $31, LevelObject_3ce9d
	dbw $33, LevelObject_3cea7
	dbw $36, LevelObject_3ceb1
	dbw $3c, LevelObject_3cebb
	dbw $44, LevelObject_3cec5
	db $ff ; end

Data_3cb67:
	dbw $00, NULL
	db $ff ; end

Data_3cb6b:
	dbw $00, NULL
	dbw $01, LevelObject_3cecf
	dbw $02, LevelObject_3ceda
	db $ff ; end

Data_3cb75:
	dbw $00, NULL
	dbw $04, LevelObject_3cecf
	dbw $04, LevelObject_3ceda
	db $ff ; end

Data_3cb7f:
	dbw $00, NULL
	dbw $06, LevelObject_3cee5
	db $ff ; end

Data_3cb86:
	dbw $00, NULL
	dbw $02, LevelObject_3cee5
	dbw $15, LevelObject_3ceef
	db $ff ; end

Data_3cb90:
	dbw $00, NULL
	dbw $05, LevelObject_3cefa
	db $ff ; end

Data_3cb97:
	dbw $00, NULL
	db $ff ; end

Data_3cb9b:
	dbw $00, NULL
	dbw $0a, LevelObject_3cf18
	dbw $0d, LevelObject_3cf04
	dbw $0e, LevelObject_3cf0e
	dbw $18, LevelObject_3cf22
	dbw $26, LevelObject_3cf2d
	db $ff ; end

Data_3cbae:
	dbw $00, NULL
	db $ff ; end

LevelObject_3cbb2:
	object 16, 5, 0, 0, AnimScript_259fb, MotionScript_31a82, Properties_36cd
LevelObject_3cbbc:
	object 18, 1, 0, 0, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3cbc6:
	object 19, 3, 0, -8, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3cbd0:
	object 20, 0, 0, 0, AnimScript_25a0d, MotionScript_31ac0, Properties_36cd
LevelObject_3cbda:
	object 22, 5, 0, 0, AnimScript_2585c, MotionScript_10008, GlunkProperties
LevelObject_3cbe4:
	object 25, 1, 0, 0, AnimScript_25a54, MotionScript_10008, CoconutProperties
LevelObject_3cbee:
	object 27, 4, 0, 0, AnimScript_2490e, MotionScript_10008, BombProperties ; bug, missing consumable ID
LevelObject_3cbf8:
	object 32, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3cc02:
	object 32, 4, 20, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3cc0c:
	object 34, 1, 0, 8, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3cc16:
	object 37, 7, 0, 0, AnimScript_259c5, MotionScript_318e0, PuffyProperties
LevelObject_3cc20:
	object 45, 7, 0, 0, AnimScript_259c5, MotionScript_31925, PuffyProperties
LevelObject_3cc2a:
	object 46, 4, 0, 0, AnimScript_261af, MotionScript_10008, StandardEnemyProperties
LevelObject_3cc34:
	object 54, 7, -36, 0, AnimScript_24701, MotionScript_30459, Properties_3703
LevelObject_3cc3e:
	object 56, 7, 0, 0, AnimScript_259c5, MotionScript_31925, PuffyProperties
LevelObject_3cc48:
	object 60, 0, -60, 0, AnimScript_20647, MotionScript_30691, Properties_36cd
LevelObject_3cc52:
	object 61, 4, 0, 0, AnimScript_257f0, MotionScript_3185a, ConerProperties
LevelObject_3cc5c:
	object 67, 4, 0, 0, AnimScript_25a04, MotionScript_31ad9, Properties_36cd
LevelObject_3cc66:
	object 69, 0, -120, 0, AnimScript_20650, MotionScript_30691, Properties_36cd
LevelObject_3cc70:
	object 80, 7, -110, 16, AnimScript_25a13, MotionScript_31b03, Properties_36cd
LevelObject_3cc7a:
	object 80, 7, -80, 40, AnimScript_25a13, MotionScript_31b03, Properties_36cd
LevelObject_3cc84:
	object 80, 7, -50, 16, AnimScript_25a13, MotionScript_31b03, Properties_36cd
LevelObject_3cc8e:
	object 83, 3, 0, 0, AnimScript_259fb, MotionScript_31ad1, Properties_36cd
LevelObject_3cc98:
	object 87, 7, 0, 0, AnimScript_259c5, MotionScript_31925, PuffyProperties
LevelObject_3cca2:
	object 90, 7, -64, 0, AnimScript_24701, MotionScript_30459, Properties_3703
LevelObject_3ccac:
	object 90, 4, 0, 0, AnimScript_2493f, MotionScript_10008, MikeProperties, 0
LevelObject_3ccb7:
	object 92, 4, 0, 0, AnimScript_20647, MotionScript_306d0, Properties_36cd
LevelObject_3ccc1:
	object 97, 4, -20, -10, AnimScript_20587, MotionScript_30d98, StandardEnemyGravityProperties
LevelObject_3cccb:
	object 97, 4, 0, -10, AnimScript_205e1, MotionScript_30da0, StandardEnemyGravityProperties
LevelObject_3ccd5:
	object 103, 2, 0, 0, AnimScript_25a54, MotionScript_10008, CoconutProperties
LevelObject_3ccdf:
	object 104, 0, 0, 0, AnimScript_25a54, MotionScript_10008, CoconutProperties
LevelObject_3cce9:
	object 106, 3, 0, 0, AnimScript_25a54, MotionScript_10008, CoconutProperties
LevelObject_3ccf3:
	object 107, 1, 0, 0, AnimScript_25a54, MotionScript_10008, CoconutProperties
LevelObject_3ccfd:
	object 111, 3, 0, 0, AnimScript_257f0, MotionScript_3185a, ConerProperties
LevelObject_3cd07:
	object 111, 3, 20, 0, AnimScript_257f0, MotionScript_3185a, ConerProperties
LevelObject_3cd11:
	object 111, 3, 40, 0, AnimScript_257f0, MotionScript_3185a, ConerProperties

LevelObject_3cd1b:
	object 1, 13, 8, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 1
LevelObject_3cd26:
	object 1, 9, 16, 0, AnimScript_258f9, MotionScript_31db5, Properties_36cd
LevelObject_3cd30:
	object 5, 12, 0, 0, AnimScript_258d6, MotionScript_10008, GlunkProperties
LevelObject_3cd3a:
	object 3, 9, 32, 0, AnimScript_258f9, MotionScript_31db5, Properties_36cd
LevelObject_3cd44:
	object 10, 5, 0, 0, AnimScript_259b0, MotionScript_30670, Properties_36cd
LevelObject_3cd4e:
	object 16, 2, 0, 0, AnimScript_25a54, MotionScript_10008, CoconutProperties
LevelObject_3cd58:
	object 16, 12, 0, 0, AnimScript_25908, MotionScript_1042f, Properties_36cd
LevelObject_3cd62:
	object 23, 4, 0, 0, AnimScript_2593e, MotionScript_10444, Properties_36cd
LevelObject_3cd6c:
	object 26, 3, 0, 0, AnimScript_2593e, MotionScript_10444, Properties_36cd
LevelObject_3cd76:
	object 30, 2, 8, 3, AnimScript_2593e, MotionScript_10444, Properties_36cd
LevelObject_3cd80:
	object 21, 12, 0, 0, AnimScript_20572, MotionScript_31df5, GordoProperties
LevelObject_3cd8a:
	object 24, 11, 0, 0, AnimScript_20572, MotionScript_31df5, GordoProperties
LevelObject_3cd94:
	object 35, 8, 0, 0, AnimScript_20572, MotionScript_3048f, GordoProperties
LevelObject_3cd9e:
	object 35, 8, 0, 80, AnimScript_20572, MotionScript_30498, GordoProperties
LevelObject_3cda8:
	object 40, 1, 8, 8, AnimScript_2593e, MotionScript_10444, Properties_36cd
LevelObject_3cdb2:
	object 41, 5, 8, 0, AnimScript_25a28, MotionScript_103ff, Properties_36cd
LevelObject_3cdbc:
	object 43, 9, 0, 0, AnimScript_2585c, MotionScript_10008, GlunkProperties
LevelObject_3cdc6:
	object 46, 2, 8, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 2

LevelObject_3cdd1:
	object 1, 2, 0, 0, AnimScript_25a5f, MotionScript_10008, CoconutProperties
LevelObject_3cddb:
	object 2, 3, 0, 0, AnimScript_25a5f, MotionScript_10008, CoconutProperties
LevelObject_3cde5:
	object 6, 3, 0, 0, AnimScript_25a5f, MotionScript_10008, CoconutProperties
LevelObject_3cdef:
	object 7, 1, 0, 0, AnimScript_25a5f, MotionScript_10008, CoconutProperties
LevelObject_3cdf9:
	object 3, 13, 8, 0, AnimScript_20572, MotionScript_31e24, GordoProperties
	dw PuffyProperties ; ?
LevelObject_3ce05:
	object 6, 19, 8, 0, AnimScript_24960, MotionScript_10008, OneUpProperties, 3

LevelObject_3ce10:
	object 10, 7, 0, 0, AnimScript_259c5, MotionScript_318e9, PuffyProperties
LevelObject_3ce1a:
	object 14, 7, 0, 0, AnimScript_259c5, MotionScript_318f2, PuffyProperties
LevelObject_3ce24:
	object 15, 2, 8, 0, AnimScript_2492d, MotionScript_10008, SpicyFoodProperties, 8
LevelObject_3ce2f:
	object 18, 2, 0, 0, AnimScript_25a28, MotionScript_103ff, Properties_36cd
LevelObject_3ce39:
	object 20, 2, 0, 0, AnimScript_25d84, MotionScript_10008, Properties_3703
LevelObject_3ce43:
	object 28, 1, 0, 0, AnimScript_259fb, MotionScript_31ad1, Properties_36cd
LevelObject_3ce4d:
	object 29, 2, 3, 0, AnimScript_259fb, MotionScript_31ad1, Properties_36cd
LevelObject_3ce57:
	object 30, 7, 0, 0, AnimScript_259c5, MotionScript_318e9, PuffyProperties
LevelObject_3ce61:
	object 38, 0, -48, 7, AnimScript_20647, MotionScript_30691, Properties_36cd
LevelObject_3ce6b:
	object 38, 0, -120, 7, AnimScript_20650, MotionScript_306c6, Properties_36cd
LevelObject_3ce75:
	object 39, 5, 0, 0, AnimScript_24671, MotionScript_10008, Properties_3703
LevelObject_3ce7f:
	object 44, 3, 0, 0, AnimScript_2063b, MotionScript_306d0, Properties_36cd
LevelObject_3ce89:
	object 46, 7, 0, 0, AnimScript_259c5, MotionScript_31925, PuffyProperties
LevelObject_3ce93:
	object 49, 7, -8, 7, AnimScript_25a43, MotionScript_31b24, Properties_36cd
LevelObject_3ce9d:
	object 49, 7, -128, 7, AnimScript_25a43, MotionScript_31b3c, Properties_36cd
LevelObject_3cea7:
	object 51, 5, 0, 0, AnimScript_259b0, MotionScript_30670, Properties_36cd
LevelObject_3ceb1:
	object 54, 4, 0, 0, AnimScript_24671, MotionScript_10008, Properties_3703
LevelObject_3cebb:
	object 60, 4, 0, 0, AnimScript_25802, MotionScript_31872, PuffyProperties
LevelObject_3cec5:
	object 68, 2, 0, 0, AnimScript_24686, MotionScript_10008, Properties_3703

LevelObject_3cecf:
	object 1, 4, 0, 0, AnimScript_24951, MotionScript_10008, OneUpProperties, 4
LevelObject_3ceda:
	object 2, 4, 0, 0, AnimScript_24945, MotionScript_10008, EnergyDrinkProperties, 5

LevelObject_3cee5:
	object 6, 2, 8, 0, AnimScript_25a7c, MotionScript_10008, Data_3421
LevelObject_3ceef:
	object 5, 21, 8, 0, AnimScript_24972, MotionScript_WarpStar, WarpStarFloorProperties, 6

LevelObject_3cefa:
	object 4, 3, 8, -8, AnimScript_25a91, MotionScript_10008, Data_3421

LevelObject_3cf04:
	object 13, 5, 0, 0, AnimScript_257f0, MotionScript_3185a, ConerProperties
LevelObject_3cf0e:
	object 14, 2, 0, 0, AnimScript_25917, MotionScript_10414, Properties_36cd
LevelObject_3cf18:
	object 10, 3, 0, 0, AnimScript_25917, MotionScript_10414, Properties_36cd
LevelObject_3cf22:
	object 24, 4, 8, 0, AnimScript_24936, MotionScript_10444, MintLeafProperties, 7
LevelObject_3cf2d:
	object 38, 1, 0, -5, AnimScript_25aac, MotionScript_31b5a, KaboolaProperties

Data_3cf37:
	dbw $00, NULL
	dbw $0b, LevelObject_3d022
	dbw $0e, LevelObject_3d0b8
	dbw $13, LevelObject_3cff0
	dbw $17, LevelObject_3cfe6
	dbw $1b, LevelObject_3d02c
	dbw $1b, LevelObject_3d040
	dbw $23, LevelObject_3d036
	dbw $24, LevelObject_3d072
	dbw $25, LevelObject_3cffa
	dbw $2c, LevelObject_3cfb4
	dbw $2d, LevelObject_3cfbe
	dbw $2f, LevelObject_3cfc8
	dbw $30, LevelObject_3cfd2
	dbw $32, LevelObject_3cfdc
	dbw $36, LevelObject_3cf96
	dbw $3c, LevelObject_3cfa0
	dbw $3c, LevelObject_3cfaa
	dbw $41, LevelObject_3d090
	dbw $47, LevelObject_3d086
	dbw $4b, LevelObject_3d07c
	dbw $4f, LevelObject_3d0a4
	dbw $53, LevelObject_3d0ae
	dbw $53, LevelObject_3d04a
	dbw $55, LevelObject_3d09a
	dbw $5f, LevelObject_3d004
	dbw $62, LevelObject_3d00e
	dbw $5f, LevelObject_3d054
	dbw $60, LevelObject_3d05e
	dbw $60, LevelObject_3d068
	db $ff ; end

Data_3cf92:
	dbw $00, NULL
	db $ff ; end

LevelObject_3cf96:
	object 54, 0, 0, 0, AnimScript_25fbb, MotionScript_32237, Properties_36cd
LevelObject_3cfa0:
	object 58, 2, 0, 0, AnimScript_25fbb, MotionScript_32237, Properties_36cd
LevelObject_3cfaa:
	object 60, 0, 0, 0, AnimScript_25fbb, MotionScript_32204, Properties_36cd
LevelObject_3cfb4:
	object 44, 7, -64, 0, AnimScript_25cee, MotionScript_31fd0, ScarfyProperties
LevelObject_3cfbe:
	object 45, 1, -56, 0, AnimScript_25cee, MotionScript_31fdf, ScarfyProperties
LevelObject_3cfc8:
	object 47, 7, -64, 0, AnimScript_25cee, MotionScript_31fd0, ScarfyProperties
LevelObject_3cfd2:
	object 48, 6, 0, 0, AnimScript_25cee, MotionScript_31fd0, ScarfyProperties
LevelObject_3cfdc:
	object 50, 0, -64, 0, AnimScript_25cee, MotionScript_31fe2, ScarfyProperties
LevelObject_3cfe6:
	object 23, 3, 8, 0, AnimScript_25d84, MotionScript_10008, Properties_3703
LevelObject_3cff0:
	object 19, 0, -64, 0, AnimScript_25c76, MotionScript_31767, Properties_36cd
LevelObject_3cffa:
	object 37, 4, -32, -8, AnimScript_25c6d, MotionScript_31f1f, Properties_36cd
LevelObject_3d004:
	object 95, 8, -112, 0, AnimScript_25c76, MotionScript_3176a, Properties_36cd
LevelObject_3d00e:
	object 98, 8, -96, 0, AnimScript_25c76, MotionScript_3176a, Properties_36cd
; unreferenced
	object 76, 3, 0, 0, AnimScript_205e1, MotionScript_102da, StandardEnemyGravityProperties
LevelObject_3d022:
	object 12, 2, 0, 0, AnimScript_205e1, MotionScript_102da, StandardEnemyGravityProperties
LevelObject_3d02c:
	object 27, 3, 8, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3d036:
	object 35, 6, 0, 0, AnimScript_25d3c, MotionScript_31f61, StandardEnemyProperties
LevelObject_3d040:
	object 27, 1, 0, 0, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3d04a:
	object 83, 1, 0, 0, AnimScript_20647, MotionScript_306b2, Properties_36cd
LevelObject_3d054:
	object 95, 3, 0, 0, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3d05e:
	object 96, 1, 0, 0, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3d068:
	object 96, 5, 0, 0, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3d072:
	object 36, 0, -64, 0, AnimScript_20650, MotionScript_30691, Properties_36cd
LevelObject_3d07c:
	object 75, 0, 0, 0, AnimScript_25ecf, MotionScript_32111, ParasolWaddleDeeProperties
LevelObject_3d086:
	object 71, 1, 0, 0, AnimScript_25ed2, MotionScript_32139, ParasolWaddleDeeProperties
LevelObject_3d090:
	object 65, 1, 0, 0, AnimScript_25ecf, MotionScript_32111, ParasolWaddleDeeProperties
LevelObject_3d09a:
	object 85, 1, 0, 0, AnimScript_25687, MotionScript_321b8, Properties_3703
LevelObject_3d0a4:
	object 79, 0, 0, 0, AnimScript_25ed2, MotionScript_32139, ParasolWaddleDeeProperties
LevelObject_3d0ae:
	object 83, 1, 0, 0, AnimScript_25ecf, MotionScript_32111, ParasolWaddleDeeProperties
LevelObject_3d0b8:
	object 14, 0, 8, 0, AnimScript_20572, MotionScript_305c6, GordoProperties

Data_3d0c2:
	dbw $00, NULL
	dbw $09, LevelObject_3d182
	dbw $0b, LevelObject_3d1aa
	dbw $10, LevelObject_3d18c
	dbw $14, LevelObject_3d15a
	dbw $19, LevelObject_3d164
	dbw $20, LevelObject_3d196
	dbw $2a, LevelObject_3d114
	dbw $2b, LevelObject_3d128
	dbw $2c, LevelObject_3d11e
	dbw $2c, LevelObject_3d132
	dbw $2c, LevelObject_3d13c
	dbw $34, LevelObject_3d100
	dbw $36, LevelObject_3d10a
	dbw $37, LevelObject_3d16e
	dbw $39, LevelObject_3d178
	dbw $3c, LevelObject_3d146
	dbw $3e, LevelObject_3d150
	dbw $42, LevelObject_3d1a0
	db $ff ; end

Data_3d0fc:
	dbw $00, NULL
	db $ff ; end

LevelObject_3d100:
	object 52, 7, -48, 0, AnimScript_25cee, MotionScript_31fcd, ScarfyProperties
LevelObject_3d10a:
	object 54, 7, -48, 0, AnimScript_25cee, MotionScript_31fcd, ScarfyProperties
LevelObject_3d114:
	object 42, 0, 0, 0, AnimScript_25c5b, MotionScript_31ee6, Properties_3727
LevelObject_3d11e:
	object 44, 0, 0, 0, AnimScript_25c5b, MotionScript_31ee6, Properties_3727
LevelObject_3d128:
	object 43, 4, 32, 0, AnimScript_25c97, MotionScript_10008, Properties_36cd
LevelObject_3d132:
	object 44, 2, 32, 8, AnimScript_25ca2, MotionScript_10008, Properties_36cd
LevelObject_3d13c:
	object 44, 5, 32, 8, AnimScript_25cb0, MotionScript_10008, Properties_36cd
LevelObject_3d146:
	object 60, 1, 0, 0, AnimScript_254c0, MotionScript_315c6, Properties_36cd
LevelObject_3d150:
	object 62, 3, 0, 0, AnimScript_254c0, MotionScript_315c6, Properties_36cd
LevelObject_3d15a:
	object 20, 4, 0, 0, AnimScript_26167, MotionScript_10008, StandardEnemyProperties
LevelObject_3d164:
	object 25, 5, 0, 0, AnimScript_26167, MotionScript_10008, StandardEnemyProperties
LevelObject_3d16e:
	object 55, 5, 0, 0, AnimScript_25cd0, MotionScript_102ce, StandardEnemyProperties
LevelObject_3d178:
	object 57, 5, 0, 0, AnimScript_25cd0, MotionScript_102ce, StandardEnemyProperties
LevelObject_3d182:
	object 9, 6, 0, 0, AnimScript_26001, MotionScript_10008, Properties_3730
LevelObject_3d18c:
	object 16, 6, 0, 0, AnimScript_2600c, MotionScript_10008, Properties_3730
LevelObject_3d196:
	object 32, 5, 0, 0, AnimScript_25fef, MotionScript_10008, Properties_3730
LevelObject_3d1a0:
	object 66, 3, -8, 0, AnimScript_25fef, MotionScript_10008, Properties_3730
LevelObject_3d1aa:
	object 11, 4, 0, 0, AnimScript_25fef, MotionScript_10008, Properties_3730

Data_3d1b4:
	dbw $00, NULL
	db $ff ; end

Data_3d1b8:
	dbw $00, NULL
	dbw $04, LevelObject_3d1e0
	dbw $06, LevelObject_3d226
	dbw $07, LevelObject_3d24e
	dbw $08, LevelObject_3d244
	dbw $0b, LevelObject_3d1fe
	dbw $0e, LevelObject_3d208
	dbw $12, LevelObject_3d212
	dbw $12, LevelObject_3d21c
	dbw $14, LevelObject_3d1f4
	dbw $15, LevelObject_3d1ea
	dbw $19, LevelObject_3d23a
	dbw $1d, LevelObject_3d230
	db $ff ; end

LevelObject_3d1e0:
	object 3, 4, 0, 0, AnimScript_25fef, MotionScript_10008, Properties_3730
LevelObject_3d1ea:
	object 14, 21, 0, 0, AnimScript_25fbb, MotionScript_321dd, Properties_36cd
LevelObject_3d1f4:
	object 10, 20, 0, 0, AnimScript_25fbb, MotionScript_321dd, Properties_36cd
LevelObject_3d1fe:
	object 15, 11, 8, 0, AnimScript_25fbb, MotionScript_32204, Properties_36cd
LevelObject_3d208:
	object 10, 14, -2, 7, AnimScript_25fbb, MotionScript_321e0, Properties_36cd
LevelObject_3d212:
	object 15, 18, 8, 0, AnimScript_25fbb, MotionScript_3224f, Properties_36cd
LevelObject_3d21c:
	object 8, 18, 0, 0, AnimScript_25d3c, MotionScript_31f61, StandardEnemyProperties
LevelObject_3d226:
	object 8, 6, 0, 0, AnimScript_25c85, MotionScript_31f37, GordoProperties
LevelObject_3d230:
	object 8, 29, 0, 0, AnimScript_25d3c, MotionScript_31f61, StandardEnemyProperties
LevelObject_3d23a:
	object 6, 25, 0, 0, AnimScript_25c76, MotionScript_31f2b, Properties_36cd
LevelObject_3d244:
	object 15, 8, 0, 0, AnimScript_25c76, MotionScript_31f2b, Properties_36cd
LevelObject_3d24e:
	object 17, 7, 0, 0, AnimScript_25cee, MotionScript_31fd0, ScarfyProperties

Data_3d258:
	dbw $00, NULL
	dbw $03, LevelObject_3d322
	dbw $0f, LevelObject_3d338
	dbw $12, LevelObject_3d304
	dbw $17, LevelObject_3d30e
	dbw $1c, LevelObject_3d32d
	dbw $1c, LevelObject_3d318
	dbw $26, LevelObject_3d2b4
	dbw $28, LevelObject_3d343
	dbw $29, LevelObject_3d2be
	dbw $2c, LevelObject_3d2e6
	dbw $2c, LevelObject_3d2f0
	dbw $2c, LevelObject_3d2fa
	dbw $31, LevelObject_3d2d2
	dbw $31, LevelObject_3d2c8
	dbw $31, LevelObject_3d2dc
	db $ff ; end

Data_3d289:
	dbw $00, NULL
	dbw $00, LevelObject_3d2b4
	dbw $01, LevelObject_3d30e
	dbw $03, LevelObject_3d2c8
	dbw $03, LevelObject_3d32d
	dbw $05, LevelObject_3d2d2
	dbw $04, LevelObject_3d304
	dbw $05, LevelObject_3d338
	dbw $07, LevelObject_3d2dc
	dbw $07, LevelObject_3d318
	dbw $08, LevelObject_3d343
	dbw $09, LevelObject_3d322
	dbw $0a, LevelObject_3d2be
	dbw $0a, LevelObject_3d30e
	db $ff ; end

LevelObject_3d2b4:
	object 38, 0, -64, 0, AnimScript_25c5b, MotionScript_31e9e, Properties_3727
LevelObject_3d2be:
	object 41, 10, -64, 0, AnimScript_25c5b, MotionScript_31e95, Properties_3727
LevelObject_3d2c8:
	object 49, 3, 0, 0, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3d2d2:
	object 49, 5, -32, 0, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3d2dc:
	object 49, 7, 0, 0, AnimScript_20647, MotionScript_304a4, Properties_36cd
LevelObject_3d2e6:
	object 44, 1, 0, 0, AnimScript_25c76, MotionScript_31f10, Properties_36cd
LevelObject_3d2f0:
	object 44, 3, 0, 0, AnimScript_25c76, MotionScript_31f10, Properties_36cd
LevelObject_3d2fa:
	object 44, 5, 0, 0, AnimScript_25c76, MotionScript_31f10, Properties_36cd
LevelObject_3d304:
	object 18, 4, 0, 0, AnimScript_25fbb, MotionScript_32237, Properties_36cd
LevelObject_3d30e:
	object 23, 1, 0, 0, AnimScript_25fbb, MotionScript_32204, Properties_36cd
LevelObject_3d318:
	object 28, 7, 0, 0, AnimScript_25fbb, MotionScript_32237, Properties_36cd
LevelObject_3d322:
	object 3, 9, 0, 0, AnimScript_24936, MotionScript_10008, MintLeafProperties, 0
LevelObject_3d32d:
	object 28, 3, 0, 0, AnimScript_2494e, MotionScript_10008, MaximTomatoProperties, 1
LevelObject_3d338:
	object 15, 5, 0, 0, AnimScript_24948, MotionScript_10008, EnergyDrinkProperties, 2
LevelObject_3d343:
	object 40, 8, 0, 0, AnimScript_24960, MotionScript_10008, OneUpProperties, 3

Data_3d34e:
	dbw $00, NULL
	dbw $01, LevelObject_3d3e2
	dbw $04, LevelObject_3d3ae
	dbw $1a, LevelObject_3d3d8
	dbw $1c, LevelObject_3d3c3
	dbw $1d, LevelObject_3d3ce
	dbw $1d, LevelObject_3d3a3
	dbw $1f, LevelObject_3d398
	dbw $24, LevelObject_3d3f7
	dbw $26, LevelObject_3d401
	dbw $2a, LevelObject_3d3ed
	dbw $30, LevelObject_3d3b9
	db $ff ; end

Data_3d373:
	dbw $00, NULL
	dbw $00, LevelObject_3d3b9
	dbw $04, LevelObject_3d401
	dbw $04, LevelObject_3d3ae
	dbw $04, LevelObject_3d3c3
	dbw $05, LevelObject_3d3ce
	dbw $05, LevelObject_3d3d8
	dbw $06, LevelObject_3d3ed
	dbw $06, LevelObject_3d3f7
	dbw $08, LevelObject_3d3a3
	dbw $08, LevelObject_3d3e2
	dbw $0a, LevelObject_3d398
	db $ff ; end

LevelObject_3d398:
	object 31, 10, 0, 0, AnimScript_2494e, MotionScript_10008, MaximTomatoProperties, 4
LevelObject_3d3a3:
	object 29, 8, 0, 0, AnimScript_24945, MotionScript_10008, EnergyDrinkProperties, 5
LevelObject_3d3ae:
	object 4, 4, 0, -8, AnimScript_26116, MotionScript_3230c, Data_3421, 6
LevelObject_3d3b9:
	object 47, 0, 0, 0, AnimScript_25cee, MotionScript_31fe2, ScarfyProperties
LevelObject_3d3c3:
	object 28, 4, 0, 0, AnimScript_24945, MotionScript_10008, EnergyDrinkProperties, 50
LevelObject_3d3ce:
	object 29, 5, 10, 14, AnimScript_20572, MotionScript_32369, GordoProperties
LevelObject_3d3d8:
	object 26, 5, 10, 14, AnimScript_20572, MotionScript_32369, GordoProperties
LevelObject_3d3e2:
	object 1, 8, 0, 0, AnimScript_24936, MotionScript_10008, MintLeafProperties, 7
LevelObject_3d3ed:
	object 42, 6, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3d3f7:
	object 36, 6, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_3d401:
	object 38, 4, 8, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
; unreferenced
	object 18, 3, 8, 0, AnimScript_25679, MotionScript_10008, Properties_3703

Data_3d415:
	dbw $00, NULL
	dbw $0a, LevelObject_3d47e
	dbw $10, LevelObject_3d489
	dbw $13, LevelObject_3d438
	dbw $1d, LevelObject_3d442
	dbw $27, LevelObject_3d44c
	dbw $31, LevelObject_3d456
	dbw $3b, LevelObject_3d460
	dbw $45, LevelObject_3d46a
	dbw $4f, LevelObject_3d474
	db $ff ; end

Data_3d434:
	dbw $00, NULL
	db $ff ; end

LevelObject_3d438:
	object 19, 0, 0, 0, AnimScript_26134, MotionScript_10008, Data_3421
LevelObject_3d442:
	object 29, 0, 0, 0, AnimScript_26134, MotionScript_10008, Data_3421
LevelObject_3d44c:
	object 39, 0, 0, 0, AnimScript_26134, MotionScript_10008, Data_3421
LevelObject_3d456:
	object 49, 0, 0, 0, AnimScript_26134, MotionScript_10008, Data_3421
LevelObject_3d460:
	object 59, 0, 0, 0, AnimScript_26134, MotionScript_10008, Data_3421
LevelObject_3d46a:
	object 69, 0, 0, 0, AnimScript_26134, MotionScript_10008, Data_3421
LevelObject_3d474:
	object 79, 0, 0, 0, AnimScript_26134, MotionScript_10008, Data_3421
LevelObject_3d47e:
	object 10, 6, 0, 0, AnimScript_2492d, MotionScript_10008, SpicyFoodProperties, 8
LevelObject_3d489:
	object 16, 2, 0, 0, AnimScript_262a0, MotionScript_10008, OneUpProperties, 60

Data_3d494:
	dbw $00, NULL
	dbw $04, LevelObject_3d4f4
	dbw $04, LevelObject_3d4ea
	dbw $06, LevelObject_3d4fe
	dbw $06, LevelObject_3d512
	dbw $09, LevelObject_3d508
	dbw $0a, LevelObject_3d51c
	dbw $0a, LevelObject_3d526
	db $ff ; end

Data_3d4ad:
	dbw $00, NULL
	dbw $02, LevelObject_3d508
	dbw $02, LevelObject_3d4ea
	dbw $05, LevelObject_3d512
	dbw $0e, LevelObject_3d4e0
	dbw $0f, LevelObject_3d4f4
	dbw $10, LevelObject_3d526
	dbw $11, LevelObject_3d4fe
	dbw $18, LevelObject_3d4cc
	dbw $1d, LevelObject_3d51c
	db $ff ; end

LevelObject_3d4cc:
	object 2, 24, 0, 0, AnimScript_25c64, MotionScript_31ec5, Properties_3727
; unreferenced
	object 14, 10, 0, 0, AnimScript_25c5b, MotionScript_31ee6, Properties_3727
LevelObject_3d4e0:
	object 0, 14, 0, 0, AnimScript_25c64, MotionScript_31efb, Properties_3727
LevelObject_3d4ea:
	object 4, 2, 0, 0, AnimScript_25ecf, MotionScript_32125, ParasolWaddleDeeProperties
LevelObject_3d4f4:
	object 4, 15, 0, 0, AnimScript_25ecf, MotionScript_32111, ParasolWaddleDeeProperties
LevelObject_3d4fe:
	object 6, 17, 0, 0, AnimScript_25ecf, MotionScript_32111, ParasolWaddleDeeProperties
LevelObject_3d508:
	object 9, 2, 0, 0, AnimScript_25ed2, MotionScript_3214d, ParasolWaddleDeeProperties
LevelObject_3d512:
	object 6, 5, 8, 0, AnimScript_25ed2, MotionScript_3214d, ParasolWaddleDeeProperties
LevelObject_3d51c:
	object 10, 29, 0, 0, AnimScript_25ffb, MotionScript_10008, Properties_3730
LevelObject_3d526:
	object 10, 16, 0, 46, AnimScript_25c97, MotionScript_10008, Properties_36cd

Data_3d530:
	dbw $00, NULL
	db $ff ; end

Data_3d534:
	dbw $00, NULL
	dbw $06, LevelObject_3d5ba
	dbw $09, LevelObject_3d5c5
	dbw $12, LevelObject_3d5d0
	dbw $1a, LevelObject_3d5dc
	dbw $1d, LevelObject_3d5e7
	dbw $20, LevelObject_3d583
	dbw $23, LevelObject_3d5f2
	dbw $26, LevelObject_3d5fd
	dbw $29, LevelObject_3d608
	dbw $2e, LevelObject_3d613
	dbw $31, LevelObject_3d61f
	dbw $34, LevelObject_3d62a
	dbw $37, LevelObject_3d58e
	dbw $3a, LevelObject_3d5a4
	dbw $3d, LevelObject_3d635
	dbw $42, LevelObject_3d640
	dbw $45, LevelObject_3d64b
	dbw $48, LevelObject_3d656
	dbw $4b, LevelObject_3d662
	dbw $4e, LevelObject_3d66d
	dbw $51, LevelObject_3d599
	dbw $55, LevelObject_3d5af
	dbw $56, LevelObject_3d678
	dbw $59, LevelObject_3d683
	dbw $5c, LevelObject_3d68e
	db $ff ; end

LevelObject_3d583:
	object 3, 32, 0, 0, AnimScript_2494e, MotionScript_3233c, MaximTomatoProperties, 17
LevelObject_3d58e:
	object 5, 55, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $18
LevelObject_3d599:
	object 1, 81, 0, 0, AnimScript_2494e, MotionScript_3233c, MaximTomatoProperties, 32
LevelObject_3d5a4:
	object 2, 58, 0, 0, AnimScript_24960, MotionScript_32350, OneUpProperties, 25
LevelObject_3d5af:
	object 8, 85, 0, 0, AnimScript_20587, MotionScript_32350, StandardEnemyProperties
	db $24
LevelObject_3d5ba:
	object 6, 6, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $0a
LevelObject_3d5c5:
	object 3, 9, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $0b
LevelObject_3d5d0:
	object 1, 18, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $0e, $ff
LevelObject_3d5dc:
	object 2, 26, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $0f
LevelObject_3d5e7:
	object 6, 29, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $10
LevelObject_3d5f2:
	object 8, 35, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $12
LevelObject_3d5fd:
	object 4, 38, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $13
LevelObject_3d608:
	object 1, 41, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $14
LevelObject_3d613:
	object 2, 46, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $15, $ff
LevelObject_3d61f:
	object 6, 49, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $16
LevelObject_3d62a:
	object 3, 52, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $17
LevelObject_3d635:
	object 1, 61, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $1a
LevelObject_3d640:
	object 2, 66, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $1b
LevelObject_3d64b:
	object 6, 69, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $1c
LevelObject_3d656:
	object 3, 72, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $1d, $ff
LevelObject_3d662:
	object 8, 75, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $1e
LevelObject_3d66d:
	object 4, 78, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $1f
LevelObject_3d678:
	object 2, 86, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $21
LevelObject_3d683:
	object 6, 89, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $22
LevelObject_3d68e:
	object 3, 92, 0, 0, AnimScript_20572, MotionScript_3233c, GordoProperties
	db $23

Data_3d699:
	dbw $00, NULL
	dbw $00, LevelObject_3d6ba
	dbw $00, LevelObject_3d6b0
	dbw $04, LevelObject_3d6a6
	db $ff ; end

LevelObject_3d6a6:
	object 4, 3, 10, -6, AnimScript_262db, MotionScript_323ad, Data_3425
LevelObject_3d6b0:
	object 0, 7, -16, -8, AnimScript_26300, MotionScript_10008, Data_3425
LevelObject_3d6ba:
	object 0, 0, 0, 0, AnimScript_26380, MotionScript_10008, Data_3425

Data_3d6c4:
	dbw $00, NULL
	dbw $06, LevelObject_3db89
	dbw $07, LevelObject_3db93
	db $ff ; end

Data_3d6ce:
	dbw $00, NULL
	dbw $05, LevelObject_3d7eb
	dbw $05, LevelObject_3d7f5
	dbw $05, LevelObject_3d7ff
	dbw $05, LevelObject_3d809
	dbw $05, LevelObject_3d813
	dbw $05, LevelObject_3d81d
	dbw $05, LevelObject_3d827
	dbw $05, LevelObject_3d831
	db $ff ; end

Data_3d6ea:
	dbw $00, NULL
	dbw $01, LevelObject_3d86d
	dbw $03, LevelObject_3d877
	dbw $04, LevelObject_3d83b
	dbw $04, LevelObject_3d845
	dbw $05, LevelObject_3d84f
	dbw $07, LevelObject_3d859
	dbw $09, LevelObject_3d863
	db $ff ; end

Data_3d703:
	dbw $00, NULL
	db $ff ; end

Data_3d707:
	dbw $00, NULL
	dbw $05, LevelObject_3d75f
	dbw $06, LevelObject_3d755
	db $ff ; end

Data_3d711:
	dbw $00, NULL
	dbw $01, LevelObject_3d791
	dbw $02, LevelObject_3d787
	dbw $04, LevelObject_3d79b
	dbw $04, LevelObject_3d769
	dbw $06, LevelObject_3d77d
	dbw $07, LevelObject_3d773
	db $ff ; end

Data_3d727:
	dbw $00, NULL
	dbw $05, LevelObject_3d7a5
	db $ff ; end

Data_3d72e:
	dbw $00, NULL
	dbw $03, LevelObject_3d7af
	dbw $05, LevelObject_3d7b9
	dbw $05, LevelObject_3d7c3
	db $ff ; end

Data_3d73b:
	dbw $00, NULL
	dbw $01, LevelObject_3d7cd
	dbw $04, LevelObject_3d7d7
	dbw $07, LevelObject_3d7e1
	db $ff ; end

Data_3d748:
	dbw $00, NULL
	dbw $02, LevelObject_3dcf7
	dbw $03, LevelObject_3dd01
	dbw $04, LevelObject_3dced
	db $ff ; end

LevelObject_3d755:
	object 6, 6, -8, 0, AnimScript_266ab, MotionScript_328a0, Data_3425
LevelObject_3d75f:
	object 5, 6, -5, -8, AnimScript_26676, MotionScript_32878, Data_3425
LevelObject_3d769:
	object 4, 0, 8, 8, AnimScript_266b1, MotionScript_328ac, Data_3425
LevelObject_3d773:
	object 7, 1, 12, 11, AnimScript_266b9, MotionScript_328b2, Data_3425
LevelObject_3d77d:
	object 6, 3, 8, 8, AnimScript_266c1, MotionScript_328b8, Data_3425
LevelObject_3d787:
	object 2, 3, 8, 8, AnimScript_266c9, MotionScript_328be, Data_3425
LevelObject_3d791:
	object 1, 1, 4, 11, AnimScript_266d1, MotionScript_328a6, Data_3425
LevelObject_3d79b:
	object 4, 6, 8, 0, AnimScript_2670f, MotionScript_32978, Data_3425
LevelObject_3d7a5:
	object 5, 6, -5, -8, AnimScript_26686, MotionScript_32887, Data_3425
LevelObject_3d7af:
	object 3, 0, -4, 0, AnimScript_26737, MotionScript_3299c, Data_3425
LevelObject_3d7b9:
	object 5, 0, -4, 0, AnimScript_26740, MotionScript_3299c, Data_3425
LevelObject_3d7c3:
	object 5, 0, -4, 0, AnimScript_26749, MotionScript_10008, Data_3425
LevelObject_3d7cd:
	object 1, 1, 0, 0, AnimScript_26905, MotionScript_10008, Data_3425
LevelObject_3d7d7:
	object 4, 4, 0, 4, AnimScript_267da, MotionScript_10008, Data_3425
LevelObject_3d7e1:
	object 7, 3, 0, 0, AnimScript_267d7, MotionScript_32ab4, Data_3425
LevelObject_3d7eb:
	object 5, 3, -8, 8, AnimScript_267dd, MotionScript_32ace, Data_3425
LevelObject_3d7f5:
	object 5, 2, -8, 0, AnimScript_267e7, MotionScript_32ae3, Data_3425
LevelObject_3d7ff:
	object 5, 2, -8, 0, AnimScript_2680c, MotionScript_32afc, Data_3425
LevelObject_3d809:
	object 5, 2, -8, 0, AnimScript_2680c, MotionScript_32b14, Data_3425
LevelObject_3d813:
	object 5, 2, -8, 0, AnimScript_2680c, MotionScript_32b2c, Data_3425
LevelObject_3d81d:
	object 5, 2, -8, 0, AnimScript_2680c, MotionScript_32b44, Data_3425
LevelObject_3d827:
	object 5, 2, -8, 0, AnimScript_2680c, MotionScript_32b56, Data_3425
LevelObject_3d831:
	object 5, 5, -8, 8, AnimScript_26812, MotionScript_32b68, Data_3425
LevelObject_3d83b:
	object 4, 0, 4, 0, AnimScript_26826, MotionScript_32bc0, Data_3425
LevelObject_3d845:
	object 4, 0, 8, 0, AnimScript_2684f, MotionScript_10008, Data_3425
LevelObject_3d84f:
	object 5, 7, -8, 7, AnimScript_26815, MotionScript_32ba8, Data_3425
LevelObject_3d859:
	object 7, 7, -8, 7, AnimScript_26818, MotionScript_32bab, Data_3425
LevelObject_3d863:
	object 9, 7, -8, 7, AnimScript_2681b, MotionScript_32bb1, Data_3425
LevelObject_3d86d:
	object 1, 7, -8, 7, AnimScript_2681e, MotionScript_32bb4, Data_3425
LevelObject_3d877:
	object 3, 7, -8, 7, AnimScript_26821, MotionScript_32bb7, Data_3425

Data_3d881:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $02, LevelObject_3d97d
	dbw $03, LevelObject_3d991
	dbw $05, LevelObject_3d9a5
	dbw $06, LevelObject_3d99b
	dbw $08, LevelObject_3d987
	db $ff ; end

Data_3d897:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $02, LevelObject_3d9c3
	dbw $03, LevelObject_3d9af
	dbw $05, LevelObject_3d9cd
	dbw $07, LevelObject_3d9b9
	db $ff ; end

Data_3d8aa:
	dbw $00, NULL
	dbw $02, LevelObject_3d9d7
	dbw $06, LevelObject_3d9e1
	db $ff ; end

Data_3d8b4:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $02, LevelObject_3d9f5
	dbw $03, LevelObject_3da1d
	dbw $04, LevelObject_3d9eb
	dbw $05, LevelObject_3d9ff
	dbw $07, LevelObject_3da09
	dbw $08, LevelObject_3da13
	dbw $08, LevelObject_3da27
	db $ff ; end

Data_3d8d0:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $03, LevelObject_3da31
	dbw $07, LevelObject_3da3b
	db $ff ; end

Data_3d8dd:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $02, LevelObject_3da45
	dbw $02, LevelObject_3da6d
	dbw $05, LevelObject_3da63
	dbw $06, LevelObject_3da4f
	dbw $08, LevelObject_3da59
	db $ff ; end

Data_3d8f3:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $06, LevelObject_3da77
	db $ff ; end

Data_3d8fd:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $03, LevelObject_3da8b
	dbw $04, LevelObject_3daa9
	dbw $05, LevelObject_3da9f
	dbw $07, LevelObject_3da95
	dbw $07, LevelObject_3da81
	db $ff ; end

Data_3d913:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $03, LevelObject_3dabd
	dbw $07, LevelObject_3dab3
	db $ff ; end

Data_3d920:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $05, LevelObject_3dac7
	dbw $05, LevelObject_3dad1
	dbw $07, LevelObject_3dadb
	db $ff ; end

Data_3d930:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $02, LevelObject_3daef
	dbw $02, LevelObject_3daf9
	dbw $07, LevelObject_3dae5
	dbw $07, LevelObject_3db03
	db $ff ; end

Data_3d943:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $02, LevelObject_3db21
	dbw $03, LevelObject_3db0d
	dbw $07, LevelObject_3db17
	dbw $07, LevelObject_3db2b
	db $ff ; end

Data_3d956:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $03, LevelObject_3db53
	dbw $05, LevelObject_3db49
	dbw $06, LevelObject_3db3f
	dbw $08, LevelObject_3db35
	db $ff ; end

Data_3d969:
	dbw $00, NULL
	dbw $01, LevelObject_3d973
	dbw $05, LevelObject_3db5d
	db $ff ; end

LevelObject_3d973:
	object 1, 1, 0, 0, AnimScript_2692d, MotionScript_10008, Data_3425
LevelObject_3d97d:
	object 2, 2, -8, -8, AnimScript_20572, MotionScript_10008, Data_3425
LevelObject_3d987:
	object 8, 2, -8, 0, AnimScript_20587, MotionScript_10008, Data_3425
LevelObject_3d991:
	object 3, 4, -8, 0, AnimScript_205ea, MotionScript_10008, Data_3425
LevelObject_3d99b:
	object 6, 5, -8, 0, AnimScript_24ccf, MotionScript_10008, Data_3425
LevelObject_3d9a5:
	object 5, 3, -8, -8, AnimScript_20647, MotionScript_10008, Data_3425
LevelObject_3d9af:
	object 3, 2, -8, 0, AnimScript_24cd5, MotionScript_10008, Data_3425
LevelObject_3d9b9:
	object 7, 3, -8, 8, AnimScript_24e4f, MotionScript_10008, Data_3425
LevelObject_3d9c3:
	object 2, 5, -8, 8, AnimScript_24f03, MotionScript_10008, Data_3425
LevelObject_3d9cd:
	object 5, 4, -16, 8, AnimScript_24dbf, MotionScript_10008, Data_3425
LevelObject_3d9d7:
	object 2, 4, 0, 0, AnimScript_24fb7, MotionScript_10008, Data_3425
LevelObject_3d9e1:
	object 6, 4, 2, 4, AnimScript_25159, MotionScript_10008, Data_3425
LevelObject_3d9eb:
	object 4, 3, 0, 0, AnimScript_2544d, MotionScript_10008, Data_3425
LevelObject_3d9f5:
	object 2, 4, -8, 0, AnimScript_2552b, MotionScript_10008, Data_3425
LevelObject_3d9ff:
	object 5, 5, -8, 0, AnimScript_25558, MotionScript_10008, Data_3425
LevelObject_3da09:
	object 7, 6, 0, 0, AnimScript_253bb, MotionScript_10008, Data_3425
LevelObject_3da13:
	object 8, 4, -8, 0, AnimScript_2559b, MotionScript_10008, Data_3425
LevelObject_3da1d:
	object 3, 2, -8, -8, AnimScript_25319, MotionScript_10008, Data_3425
LevelObject_3da27:
	object 8, 2, -8, 0, AnimScript_252c2, MotionScript_10008, Data_3425
LevelObject_3da31:
	object 3, 2, 0, 0, AnimScript_2702d, MotionScript_10008, Data_3425
LevelObject_3da3b:
	object 7, 4, 0, 0, AnimScript_27035, MotionScript_10008, Data_3425
LevelObject_3da45:
	object 2, 5, 0, 0, AnimScript_257fc, MotionScript_10008, Data_3425
LevelObject_3da4f:
	object 6, 5, 0, 0, AnimScript_25856, MotionScript_10008, Data_3425
LevelObject_3da59:
	object 8, 3, -8, 0, AnimScript_25a43, MotionScript_10008, Data_3425
LevelObject_3da63:
	object 5, 2, 0, -8, AnimScript_259d7, MotionScript_10008, Data_3425
LevelObject_3da6d:
	object 2, 3, 0, -8, AnimScript_258f9, MotionScript_10008, Data_3425
LevelObject_3da77:
	object 6, 3, -10, 0, AnimScript_25b97, MotionScript_10008, Data_3425
LevelObject_3da81:
	object 7, 4, 0, 0, AnimScript_25cf3, MotionScript_10008, Data_3425
LevelObject_3da8b:
	object 3, 5, -8, -8, AnimScript_25c73, MotionScript_10008, Data_3425
LevelObject_3da95:
	object 7, 2, -8, 0, AnimScript_25c49, MotionScript_10008, Data_3425
LevelObject_3da9f:
	object 5, 5, 0, 8, AnimScript_26072, MotionScript_10008, Data_3425
LevelObject_3daa9:
	object 4, 3, -8, -8, AnimScript_25fbb, MotionScript_10008, Data_3425
LevelObject_3dab3:
	object 3, 3, 6, -8, AnimScript_26d67, MotionScript_10008, Data_3425
LevelObject_3dabd:
	object 7, 5, -8, -8, AnimScript_26d03, MotionScript_10008, Data_3425
LevelObject_3dac7:
	object 3, 4, 0, 0, AnimScript_20650, MotionScript_10008, Data_3425
LevelObject_3dad1:
	object 5, 2, -8, -8, AnimScript_24cd5, MotionScript_10008, Data_3425
LevelObject_3dadb:
	object 7, 6, 0, -8, AnimScript_24dbf, MotionScript_10008, Data_3425
LevelObject_3dae5:
	object 7, 7, -8, -8, AnimScript_2544d, MotionScript_10008, Data_3425
LevelObject_3daef:
	object 3, 5, -8, 0, AnimScript_25558, MotionScript_10008, Data_3425
LevelObject_3daf9:
	object 2, 3, -8, 0, AnimScript_253c4, MotionScript_10008, Data_3425
LevelObject_3db03:
	object 7, 3, 0, -8, AnimScript_2559b, MotionScript_10008, Data_3425
LevelObject_3db0d:
	object 3, 4, 0, -8, AnimScript_25856, MotionScript_10008, Data_3425
LevelObject_3db17:
	object 7, 2, -8, 0, AnimScript_258f9, MotionScript_10008, Data_3425
LevelObject_3db21:
	object 2, 2, 0, -8, AnimScript_25a43, MotionScript_10008, Data_3425
LevelObject_3db2b:
	object 7, 5, -8, -8, AnimScript_24cd2, MotionScript_10008, Data_3425
LevelObject_3db35:
	object 8, 5, -8, -8, AnimScript_25c73, MotionScript_10008, Data_3425
LevelObject_3db3f:
	object 6, 2, 0, -8, AnimScript_25c49, MotionScript_10008, Data_3425
LevelObject_3db49:
	object 5, 5, -8, 0, AnimScript_25fef, MotionScript_10008, Data_3425
LevelObject_3db53:
	object 3, 3, -8, 0, AnimScript_25fbb, MotionScript_10008, Data_3425
LevelObject_3db5d:
	object 5, 6, -8, -8, AnimScript_270bd, MotionScript_10008, Data_3425

Data_3db67:
	dbw $00, NULL
	dbw $03, LevelObject_3db6e
	db $ff ; end

LevelObject_3db6e:
	object 5, 1, -54, -30, AnimScript_26a81, MotionScript_32cef, Data_3425

Data_3db78:
	dbw $00, NULL
	dbw $05, LevelObject_3db7f
	db $ff ; end

LevelObject_3db7f:
	object 5, 1, -64, -30, AnimScript_2697c, MotionScript_32bed, Data_3425
LevelObject_3db89:
	object 6, 6, 0, 0, AnimScript_2642f, MotionScript_32483, Data_3425
LevelObject_3db93:
	object 8, 7, -16, -8, AnimScript_26456, MotionScript_10008, Data_3425

Data_3db9d:
	dbw $00, NULL
	dbw $01, LevelObject_3dbfd
	dbw $05, LevelObject_3dc07
	dbw $08, LevelObject_3dc43
	dbw $09, LevelObject_3dc11
	dbw $0a, LevelObject_3dc1b
	dbw $0b, LevelObject_3dc2f
	dbw $0b, LevelObject_3dc39
	dbw $0c, LevelObject_3dc25
	db $ff ; end

Data_3dbb9:
	dbw $00, NULL
	dbw $01, LevelObject_3dc4d
	dbw $02, LevelObject_3dc57
	dbw $03, LevelObject_3dc61
	dbw $04, LevelObject_3dc6b
	dbw $05, LevelObject_3dc75
	dbw $05, LevelObject_3dc7f
	db $ff ; end

Data_3dbcf:
	dbw $00, NULL
	dbw $01, LevelObject_3dc89
	dbw $06, LevelObject_3dc93
	dbw $06, LevelObject_3dc9d
	db $ff ; end

Data_3dbdc:
	dbw $00, NULL
	dbw $05, LevelObject_3dca7
	dbw $05, LevelObject_3dcb1
	db $ff ; end

Data_3dbe6:
	dbw $00, NULL
	dbw $00, LevelObject_3dcbb
	dbw $00, LevelObject_3dce3
	dbw $04, LevelObject_3dcc5
	dbw $04, LevelObject_3dccf
	dbw $07, LevelObject_3dcd9
	db $ff ; end

Data_3dbf9:
	dbw $00, NULL
	db $ff ; end

LevelObject_3dbfd:
	object 0, 3, 8, 6, AnimScript_2646b, MotionScript_324ad, Data_3421
LevelObject_3dc07:
	object 5, 5, 0, 0, AnimScript_2649c, MotionScript_324e7, Data_3421
LevelObject_3dc11:
	object 8, 3, 0, 8, AnimScript_264c4, MotionScript_10008, Data_3421
LevelObject_3dc1b:
	object 9, 4, 0, -8, AnimScript_264cc, MotionScript_10008, Data_3421
LevelObject_3dc25:
	object 10, 3, 0, 0, AnimScript_264d4, MotionScript_10008, Data_3421
LevelObject_3dc2f:
	object 11, 4, 0, 0, AnimScript_264dc, MotionScript_10008, Data_3421
LevelObject_3dc39:
	object 12, 5, 0, -8, AnimScript_264e4, MotionScript_10008, Data_3421
LevelObject_3dc43:
	object 13, 3, 0, 0, AnimScript_264ec, MotionScript_10008, Data_3421
LevelObject_3dc4d:
	object 1, 2, 0, 5, AnimScript_264fa, MotionScript_32523, Data_3421
LevelObject_3dc57:
	object 2, 3, 0, 5, AnimScript_264fa, MotionScript_3253a, Data_3421
LevelObject_3dc61:
	object 3, 2, 0, -10, AnimScript_264fa, MotionScript_3254e, Data_3421
LevelObject_3dc6b:
	object 4, 2, 0, 0, AnimScript_264fa, MotionScript_32565, Data_3421
LevelObject_3dc75:
	object 5, 5, 0, 1, AnimScript_26504, MotionScript_32589, Data_3421
LevelObject_3dc7f:
	object 5, 0, 0, -2, AnimScript_2651e, MotionScript_325a6, Data_3421
LevelObject_3dc89:
	object 5, 6, -2, -14, AnimScript_26527, MotionScript_325be, Data_3421
LevelObject_3dc93:
	object 7, 7, 0, -16, AnimScript_26563, MotionScript_325d3, Data_3421
LevelObject_3dc9d:
	object 7, 7, 0, -16, AnimScript_2656f, MotionScript_32601, Data_3421
LevelObject_3dca7:
	object 5, 0, -8, -10, AnimScript_26587, MotionScript_32635, Data_3421
LevelObject_3dcb1:
	object 5, 6, -8, -8, AnimScript_265dc, MotionScript_3263f, Data_3421
LevelObject_3dcbb:
	object 0, 5, -3, 0, AnimScript_265f1, MotionScript_327a9, Data_3425
LevelObject_3dcc5:
	object 5, 5, 0, 0, AnimScript_26620, MotionScript_32741, Data_3425
LevelObject_3dccf:
	object 4, 0, -3, 2, AnimScript_26607, MotionScript_32727, Data_3425
LevelObject_3dcd9:
	object 9, 7, 16, 0, AnimScript_26614, MotionScript_327bf, Data_3425
LevelObject_3dce3:
	object 0, 0, 0, 0, AnimScript_20000, MotionScript_327d1, Data_3425

LevelObject_3dced:
	object 4, 6, 8, -8, AnimScript_26c30, MotionScript_10008, Data_3421
LevelObject_3dcf7:
	object 2, 2, 2, -2, AnimScript_26c23, MotionScript_32ec0, Data_3421
LevelObject_3dd01:
	object 3, 5, 14, 2, AnimScript_26caf, MotionScript_32fb0, Data_3421

Data_3dd0b:
	dbw $00, NULL
	dbw $08, LevelObject_3dd34
	db $ff ; end

Data_3dd12:
	dbw $00, NULL
	dbw $11, LevelObject_3dd34
	dbw $1a, LevelObject_3dd1c
	db $ff ; end

LevelObject_3dd1c:
	object 0, 26, 0, 0, AnimScript_25269, MotionScript_10008, Data_3421

Data_3dd26:
	dbw $00, NULL
	dbw $0a, LevelObject_3dd3e
	db $ff ; end

Data_3dd2d:
	dbw $00, NULL
	dbw $04, LevelObject_3dd3e
	db $ff ; end

LevelObject_3dd34:
	object 8, 17, 0, 0, AnimScript_26d20, MotionScript_32fb8, Data_3421
LevelObject_3dd3e:
	object 10, 4, 0, 0, AnimScript_26d6a, MotionScript_331aa, Data_3421

Data_3dd48:
	dbw $00, NULL
	dbw $01, LevelObject_3dd6a
	db $ff ; end

Data_3dd4f:
	dbw $00, NULL
	dbw $01, LevelObject_3dd6a
	db $ff ; end

Data_3dd56:
	dbw $00, NULL
	dbw $01, LevelObject_3dd74
	dbw $09, LevelObject_3dd7e
	db $ff ; end

Data_3dd60:
	dbw $00, NULL
	dbw $01, LevelObject_3dd74
	dbw $09, LevelObject_3dd7e
	db $ff ; end

LevelObject_3dd6a:
	object 1, 1, 0, 0, AnimScript_26ef6, MotionScript_336cc, LololoProperties
LevelObject_3dd74:
	object 1, 1, 0, 0, AnimScript_26ef6, MotionScript_334a3, LololoProperties
LevelObject_3dd7e:
	object 9, 9, 0, 0, AnimScript_26ef6, MotionScript_335f4, LololoProperties

Data_3dd88:
	dbw $00, NULL
	db $ff ; end

Data_3dd8c:
	dbw $00, NULL
	dbw $08, LevelObject_3de80
	dbw $0f, LevelObject_3de6c
	dbw $14, LevelObject_3de76
	dbw $1d, LevelObject_3de62
	dbw $20, LevelObject_3de58
	dbw $23, LevelObject_3de4d
	dbw $26, LevelObject_3de42
	db $ff ; end

Data_3dda5:
	dbw $00, NULL
	dbw $03, LevelObject_3debe
	dbw $07, LevelObject_3dea0
	dbw $0a, LevelObject_3ded2
	dbw $10, LevelObject_3deaa
	dbw $12, LevelObject_3dec8
	dbw $15, LevelObject_3dedc
	dbw $18, LevelObject_3deb4
	dbw $1a, LevelObject_3de8a
	dbw $1b, LevelObject_3de95
	db $ff ; end

Data_3ddc4:
	dbw $00, NULL
	dbw $01, LevelObject_3debe
	dbw $02, LevelObject_3ded2
	dbw $02, LevelObject_3de95
	dbw $03, LevelObject_3dec8
	dbw $05, LevelObject_3de8a
	dbw $07, LevelObject_3deaa
	dbw $09, LevelObject_3dedc
	dbw $09, LevelObject_3dea0
	dbw $0a, LevelObject_3deb4
	db $ff ; end

Data_3dde3:
	dbw $00, NULL
	dbw $01, LevelObject_3dee6
	dbw $03, LevelObject_3def1
	dbw $05, LevelObject_3df1a
	dbw $07, LevelObject_3df10
	dbw $0b, LevelObject_3df2e
	dbw $12, LevelObject_3df06
	dbw $13, LevelObject_3defc
	dbw $13, LevelObject_3df24
	db $ff ; end

Data_3ddff:
	dbw $00, NULL
	dbw $03, LevelObject_3df24
	dbw $0c, LevelObject_3def1
	dbw $0c, LevelObject_3defc
	dbw $0c, LevelObject_3df06
	db $ff ; end

Data_3de0f:
	dbw $00, NULL
	dbw $00, LevelObject_3df62
	dbw $00, LevelObject_3df6c
	dbw $05, LevelObject_3df76
	dbw $0c, LevelObject_3df94
	dbw $15, LevelObject_3df9e
	dbw $21, LevelObject_3df80
	dbw $29, LevelObject_3df8a
	dbw $2e, LevelObject_3df38
	dbw $2f, LevelObject_3df43
	dbw $2f, LevelObject_3df4e
	dbw $2f, LevelObject_3df58
	db $ff ; end

Data_3de34:
	dbw $00, NULL
	db $ff ; end

Data_3de38:
	dbw $00, NULL
	dbw $0b, LevelObject_3dfa8
	db $ff ; end

; unreferenced
	dbw $00, NULL

LevelObject_3de42:
	object 38, 3, 3, 0, AnimScript_24c2d, MotionScript_30d36, KirbyItemProperties, 0
LevelObject_3de4d:
	object 35, 3, 0, -1, AnimScript_27477, MotionScript_30d51, Data_3429, 0
LevelObject_3de58:
	object 32, 4, 0, 0, AnimScript_24d87, MotionScript_10008, CaplessCappyProperties
LevelObject_3de62:
	object 29, 4, 0, 0, AnimScript_24ddd, MotionScript_30fba, PoppyBrosJrProperties
LevelObject_3de6c:
	object 15, 4, -8, 0, AnimScript_24e68, MotionScript_3107e, GrizzoProperties
LevelObject_3de76:
	object 20, 2, 0, 0, AnimScript_25298, MotionScript_305c6, TwizzyProperties
LevelObject_3de80:
	object 8, 6, 0, 0, AnimScript_24da3, MotionScript_312bf, CappyProperties

LevelObject_3de8a:
	object 26, 5, -10, 0, AnimScript_24c3c, MotionScript_30d36, KirbyItemProperties, 2
LevelObject_3de95:
	object 27, 2, 0, -1, AnimScript_27477, MotionScript_30d51, Data_3429, 2
LevelObject_3dea0:
	object 7, 9, 8, 0, AnimScript_25475, MotionScript_10444, MumbiesProperties
LevelObject_3deaa:
	object 16, 7, 0, 0, AnimScript_252ce, MotionScript_10008, GlunkProperties
LevelObject_3deb4:
	object 24, 10, 0, 0, AnimScript_25558, MotionScript_3169e, Data_3421
LevelObject_3debe:
	object 3, 1, 0, 0, AnimScript_2556b, MotionScript_10008, Data_3421
LevelObject_3dec8:
	object 18, 3, 0, 0, AnimScript_253bb, MotionScript_10444, StandardEnemyProperties
LevelObject_3ded2:
	object 10, 2, 0, 0, AnimScript_254e7, MotionScript_31636, StandardEnemyProperties
LevelObject_3dedc:
	object 21, 9, 0, 0, AnimScript_25346, MotionScript_10008, StandardEnemyProperties

LevelObject_3dee6:
	object 1, 11, 8, 0, AnimScript_24c4b, MotionScript_10008, KirbyItemProperties, 4
LevelObject_3def1:
	object 3, 11, 0, -1, AnimScript_27477, MotionScript_30d51, Data_3429, 4
LevelObject_3defc:
	object 19, 12, 0, 0, AnimScript_259b0, MotionScript_30670, StandardEnemyProperties
LevelObject_3df06:
	object 18, 12, 7, 0, AnimScript_257f0, MotionScript_318a9, PuffyProperties
LevelObject_3df10:
	object 7, 6, 0, 0, AnimScript_259c5, MotionScript_318e0, PuffyProperties
LevelObject_3df1a:
	object 5, 1, 0, 0, AnimScript_25a54, MotionScript_10008, CoconutProperties
LevelObject_3df24:
	object 19, 3, 0, 0, AnimScript_2585c, MotionScript_10008, GlunkProperties
LevelObject_3df2e:
	object 11, 2, 0, 0, AnimScript_259fb, MotionScript_31aa1, StandardEnemyProperties

LevelObject_3df38:
	object 6, 45, 2, 2, AnimScript_24c63, MotionScript_30d3f, KirbyItemProperties, 6
LevelObject_3df43:
	object 2, 47, 0, -1, AnimScript_27477, MotionScript_30d51, Data_3429, 6
LevelObject_3df4e:
	object 8, 47, -4, 0, AnimScript_25ee3, MotionScript_103ff, ParasolWaddleDeeProperties
LevelObject_3df58:
	object 9, 47, 0, 0, AnimScript_25f05, MotionScript_103ff, ParasolWaddleDeeProperties
LevelObject_3df62:
	object 2, 0, 8, 0, AnimScript_26134, MotionScript_10008, Data_3421
LevelObject_3df6c:
	object 7, 0, -8, 0, AnimScript_26134, MotionScript_10008, Data_3421
LevelObject_3df76:
	object 0, 5, 0, 0, AnimScript_25c09, MotionScript_10008, PuffyProperties
LevelObject_3df80:
	object 6, 33, 0, 0, AnimScript_25fef, MotionScript_10008, GlunkProperties
LevelObject_3df8a:
	object 3, 41, 0, 0, AnimScript_25c76, MotionScript_315a2, StandardEnemyProperties
LevelObject_3df94:
	object 8, 12, 8, -32, AnimScript_25fbb, MotionScript_321dd, StandardEnemyProperties
LevelObject_3df9e:
	object 7, 21, 0, 0, AnimScript_25cee, MotionScript_31fd0, ScarfyProperties

LevelObject_3dfa8:
	object 11, 5, 0, 0, AnimScript_270a0, MotionScript_337bb, Properties_3604
