MACRO object
	db \1 ; x
	db \2 ; y
	db \3 ; ?
	db \4 ; ?
	dw \5 ; anim script
	dw \6 ; motion script
	dw \7 ; object properties
IF _NARG == 8
	db \8 ; consumable item ID
ENDC
ENDM

Data_1c000::
	table_width 2
	dw .GreenGreens  ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede     ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 4
	dw Data_1c202, Data_1c2d0 ; GREEN_GREENS_0
	dw Data_1c245, Data_1c2d0 ; GREEN_GREENS_1
	dw Data_1c24f, Data_1c2d0 ; GREEN_GREENS_2
	dw Data_1c2a1, Data_1c2d4 ; GREEN_GREENS_3
	dw Data_1c2c9, Data_1c2f9 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 4
	dw Data_1c5b2, Data_1c5b9 ; CASTLE_LOLOLO_00
	dw Data_1c621, Data_1c625 ; CASTLE_LOLOLO_01
	dw Data_1c692, Data_1c6a2 ; CASTLE_LOLOLO_02
	dw Data_1c5ca, Data_1c5e0 ; CASTLE_LOLOLO_03
	dw Data_1c6d0, Data_1c6d7 ; CASTLE_LOLOLO_04
	dw Data_1c729, Data_1c748 ; CASTLE_LOLOLO_05
	dw Data_1c7c2, Data_1c7c6 ; CASTLE_LOLOLO_06
	dw Data_1c819, Data_1c835 ; CASTLE_LOLOLO_07
	dw Data_1d936, Data_1d93d ; CASTLE_LOLOLO_08
	dw Data_1c8e0, Data_1c8ea ; CASTLE_LOLOLO_09
	dw Data_1c909, Data_1c919 ; CASTLE_LOLOLO_10
	dw Data_1c88a, Data_1c8a0 ; CASTLE_LOLOLO_11
	dw Data_1c947, Data_1c960 ; CASTLE_LOLOLO_12
	dw Data_1c9c0, Data_1c9d6 ; CASTLE_LOLOLO_13
	dw Data_1d944, Data_1d94e ; CASTLE_LOLOLO_14
	dw Data_1ca16, Data_1ca20 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 4
	dw $4a39, $4aa9 ; FLOAT_ISLANDS_0
	dw $4aad, $4ae4 ; FLOAT_ISLANDS_1
	dw $4b1b, $4b31 ; FLOAT_ISLANDS_2
	dw $4b47, $4b84 ; FLOAT_ISLANDS_3
	dw $4b88, $4b92 ; FLOAT_ISLANDS_4
	dw $4b9c, $4ba3 ; FLOAT_ISLANDS_5
	dw $4bad, $4bb4 ; FLOAT_ISLANDS_6
	dw $4bb8, $4bcb ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 4
	dw $4f48, $4fa3 ; BUBBLY_CLOUDS_0
	dw $50d3, $510d ; BUBBLY_CLOUDS_1
	dw $51c5, $51c9 ; BUBBLY_CLOUDS_2
	dw $5269, $529a ; BUBBLY_CLOUDS_3
	dw $58f9, $5900 ; BUBBLY_CLOUDS_4
	dw $535f, $5384 ; BUBBLY_CLOUDS_5
	dw $5426, $5445 ; BUBBLY_CLOUDS_6
	dw $54a5, $54be ; BUBBLY_CLOUDS_7
	dw $5541, $5545 ; BUBBLY_CLOUDS_8
	dw $5914, $591b ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 4
	dw $5976, $5a22 ; MT_DEDEDE_0
	dw $597a, $5a22 ; MT_DEDEDE_1
	dw $5993, $59b2 ; MT_DEDEDE_2
	dw $59d1, $59ed ; MT_DEDEDE_3
	dw $5a22, $59fd ; MT_DEDEDE_4
	dw $5a26, $5a22 ; MT_DEDEDE_5
	dw $42c9, $42f9 ; MT_DEDEDE_6
	dw $4bb8, $4bcb ; MT_DEDEDE_7
	dw $5944, $594e ; MT_DEDEDE_8
	dw $5914, $591b ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

Data_1c0ce::
	table_width 4
	dw Data_1d58f, Data_1d7e7 ; SCENE_TITLE_SCREEN
	dw Data_1d5ba, Data_1d7e7 ; SCENE_SOUND_TEST
	dw Data_1d5fd, Data_1d7e7 ; SCENE_EPILOGUE_DEDEDE_LAUNCH
	dw $5607, Data_1d7e7 ; SCENE_EPILOGUE_KIRBY_DANCE
	dw $561d, Data_1d7e7 ; SCENE_EPILOGUE_KIRBY_INFLATE
	dw $5624, Data_1d7e7 ; SCENE_EPILOGUE_FALLING_FOOD
	dw $5631, Data_1d7e7 ; SCENE_CREDITS
	dw $55c4, Data_1d7e7 ; SCENE_EPILOGUE_KIRBY_DEFLATE
	dw $55e0, Data_1d7e7 ; SCENE_EPILOGUE_BYE_BYE
	dw $55f9, Data_1d7e7 ; SCENE_GAME_OVER
	dw $563e, Data_1d7e7 ; SCENE_CONTINUE
	dw $57e7, Data_1d7e7 ; SCENE_GREEN_GREENS_ENEMIES_1
	dw $57e7, Data_1d7e7 ; SCENE_GREEN_GREENS_ENEMIES_2
	dw $57e7, Data_1d7e7 ; SCENE_GREEN_GREENS_ENEMIES_3
	dw $57e7, Data_1d7e7 ; SCENE_CASTLE_LOLOLO_ENEMIES_1
	dw $57e7, Data_1d7e7 ; SCENE_CASTLE_LOLOLO_ENEMIES_2
	dw $57e7, Data_1d7e7 ; SCENE_FLOAT_ISLANDS_ENEMIES_1
	dw $57e7, Data_1d7e7 ; SCENE_FLOAT_ISLANDS_ENEMIES_2
	dw $57e7, Data_1d7e7 ; SCENE_BUBBLE_CLOUDS_ENEMIES_1
	dw $57e7, Data_1d7e7 ; SCENE_BUBBLE_CLOUDS_ENEMIES_2
	dw $57e7, Data_1d7e7 ; SCENE_GREEN_GREENS_ENEMIES_4
	dw $57e7, Data_1d7e7 ; SCENE_CASTLE_LOLOLO_ENEMIES_3
	dw $57e7, Data_1d7e7 ; SCENE_FLOAT_ISLANDS_ENEMIES_3
	dw $57e7, Data_1d7e7 ; SCENE_BUBBLE_CLOUDS_ENEMIES_3
	dw $57e7, Data_1d7e7 ; SCENE_KING_DEDEDE
	dw $57e7, Data_1d7e7 ; SCENE_CONFIG_MODE_UNLOCK
	dw $57e7, Data_1d7e7 ; SCENE_EXTRA_GAME_UNLOCK
	assert_table_length NUM_SCENES

Data_1c13a::
	table_width 4
	dw $578b, Data_1d7e7 ; GREEN_GREENS
	dw $57a7, Data_1d7e7 ; CASTLE_LOLOLO
	dw $57bd, Data_1d7e7 ; FLOAT_ISLANDS
	dw $57ca, Data_1d7e7 ; BUBBLY_CLOUDS
	dw $57d4, Data_1d7e7 ; MT_DEDEDE
	assert_table_length NUM_STAGES

Data_1c14e::
	dw AnimScript_20000, MotionScript_10008, Data_3425

Data_1c154::
	dw AnimScript_20a01, MotionScript_10008, PuffOfSmokeProperties
; 0x1c15a

SECTION "Bank 7@4160", ROMX[$4160], BANK[$7]

Data_1c160::
	dw AnimScript_Explosion, MotionScript_10008, ExplosionProperties
; 0x1c166

SECTION "Bank 7@416c", ROMX[$416c], BANK[$7]

Data_1c16c:
	dw AnimScript_203b2, MotionScript_10008, ExplosionProperties

Data_1c172::
	dw AnimScript_20000, MotionScript_10008, Data_3421

Data_1c178::
	dw AnimScript_20ae6, MotionScript_107c3, Data_3421

Data_1c17e::
	dw AnimScript_208f1, MotionScript_10c50, Data_3421

Data_1c184::
	dw AnimScript_SpitStar, MotionScript_SpitStar, SpitStarProperties

Data_1c18a::
	dw AnimScript_20baf, MotionScript_10008, Data_35af

Data_1c190::
	dw AnimScript_20b96, MotionScript_10008, Data_35ab

Data_1c196::
	dw AnimScript_20bda, MotionScript_1022a, Data_35b3

Data_1c19c::
	dw AnimScript_KirbyPuff, MotionScript_KirbyPuff, Data_35b3

Data_1c1a2:
	dw AnimScript_20474, MotionScript_InhaledObject, Data_3685

Data_1c1a8::
	dw AnimScript_20ec6, MotionScript_10008, Data_3421
; 0x1c1ae

SECTION "Bank 7@41b4", ROMX[$41b4], BANK[$7]

Data_1c1b4::
	dw AnimScript_20ec6, MotionScript_10008, Data_3421
; 0x1c1ba

SECTION "Bank 7@41c0", ROMX[$41c0], BANK[$7]

Data_1c1c0::
	dw AnimScript_21004, MotionScript_10008, Data_3421

Data_1c1c6::
	dw AnimScript_210e7, MotionScript_10008, Data_358f

Data_1c1cc::
	dw AnimScript_210f1, MotionScript_10008, Data_3421
; 0x1c1d2

SECTION "Bank 7@4202", ROMX[$4202], BANK[$7]

Data_1c202:
	dbw $00, NULL
	dbw $0f, LevelObject_1c304
	dbw $11, LevelObject_1c318
	dbw $15, LevelObject_1c322
	dbw $16, LevelObject_1c32c
	dbw $18, LevelObject_1c336
	dbw $1f, LevelObject_1c340
	dbw $21, LevelObject_1c34a
	dbw $29, LevelObject_1c354
	dbw $30, LevelObject_1c35e
	dbw $30, LevelObject_1c368
	dbw $31, LevelObject_1c372
	dbw $39, LevelObject_1c386
	dbw $3d, LevelObject_1c390
	dbw $40, LevelObject_1c39a
	dbw $42, LevelObject_1c3a4
	dbw $43, LevelObject_1c3ae
	dbw $46, LevelObject_1c3b8
	dbw $47, LevelObject_1c3c2
	dbw $4a, LevelObject_1c3cc
	dbw $4f, LevelObject_1c3d6
	dbw $4e, LevelObject_1c3e0
	db $ff ; end

Data_1c245:
	dbw $00, NULL
	dbw $05, LevelObject_1c3eb
	dbw $0a, LevelObject_1c3f6
	db $ff ; end

Data_1c24f:
	dbw $00, NULL
	dbw $0a, LevelObject_1c45b
	dbw $0f, LevelObject_1c40b
	dbw $12, LevelObject_1c401
	dbw $15, LevelObject_1c415
	dbw $19, LevelObject_1c41f
	dbw $1b, LevelObject_1c429
	dbw $1f, LevelObject_1c433
	dbw $21, LevelObject_1c43d
	dbw $24, LevelObject_1c447
	dbw $26, LevelObject_1c451
	dbw $2a, LevelObject_1c470
	dbw $2b, LevelObject_1c47a
	dbw $2a, LevelObject_1c484
	dbw $2f, LevelObject_1c498
	dbw $30, LevelObject_1c4a2
	dbw $32, LevelObject_1c4ac
	dbw $38, LevelObject_1c4b6
	dbw $3a, LevelObject_1c4c0
	dbw $3b, LevelObject_1c4ca
	dbw $3f, LevelObject_1c4de
	dbw $41, LevelObject_1c4e8
	dbw $42, LevelObject_1c4f2
	dbw $44, LevelObject_1c4fc
	dbw $45, LevelObject_1c506
	dbw $46, LevelObject_1c510
	dbw $4c, LevelObject_1c51a
	db $ff ; end

Data_1c2a1:
	dbw $00, NULL
	dbw $01, LevelObject_1c556
	dbw $02, LevelObject_1c594
	dbw $03, LevelObject_1c58a
	dbw $06, LevelObject_1c524
	dbw $06, LevelObject_1c56c
	dbw $07, LevelObject_1c562
	dbw $09, LevelObject_1c52e
	dbw $09, LevelObject_1c54c
	dbw $0a, LevelObject_1c538
	dbw $0b, LevelObject_1c580
	dbw $0b, LevelObject_1c542
	dbw $0c, LevelObject_1c54c
	db $ff ; end

Data_1c2c9:
	dbw $00, NULL
	dbw $07, LevelObject_1c59e
	db $ff ; end

Data_1c2d0:
	dbw $00, NULL
	db $ff ; end

Data_1c2d4:
	dbw $00, NULL
	dbw $04, LevelObject_1c52e
	dbw $04, LevelObject_1c524
	dbw $07, LevelObject_1c538
	dbw $0e, LevelObject_1c556
	dbw $13, LevelObject_1c562
	dbw $13, LevelObject_1c542
	dbw $13, LevelObject_1c54c
	dbw $17, LevelObject_1c56c
	dbw $1c, LevelObject_1c580
	dbw $20, LevelObject_1c58a
	dbw $25, LevelObject_1c594
	db $ff ; end

Data_1c2f9:
	dbw $00, NULL
	dbw $16, LevelObject_1c59e
	dbw $1a, LevelObject_1c5a8
	db $ff ; end

	db $ff ; end

LevelObject_1c304:
	object 15, 5, 0, 0, AnimScript_20587, MotionScript_102c8, WaddleDeeProperties
; unreferenced
	object 17, 5, -8, 0, AnimScript_20d19, MotionScript_111d8, CappyProperties
LevelObject_1c318:
	object 17, 5, 0, 0, AnimScript_20587, MotionScript_102c8, WaddleDeeProperties
LevelObject_1c322:
	object 21, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, WaddleDeeProperties
LevelObject_1c32c:
	object 22, 2, 0, 0, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
LevelObject_1c336:
	object 24, 4, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c340:
	object 31, 1, 0, 0, AnimScript_20647, MotionScript_10508, WaddleDeeProperties
LevelObject_1c34a:
	object 33, 5, 0, 0, AnimScript_205ae, MotionScript_103ff, WaddleDeeProperties
LevelObject_1c354:
	object 41, 5, 8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c35e:
	object 48, 2, 0, 0, AnimScript_20d28, MotionScript_1067d, WaddleDeeProperties
LevelObject_1c368:
	object 48, 5, -8, 0, AnimScript_20d19, MotionScript_111d8, CappyProperties
LevelObject_1c372:
	object 49, 2, 0, 8, AnimScript_20d28, MotionScript_1067d, WaddleDeeProperties
; unreferenced
	object 51, 3, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c386:
	object 57, 4, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c390:
	object 61, 1, 0, 0, AnimScript_20647, MotionScript_10508, WaddleDeeProperties
LevelObject_1c39a:
	object 64, 5, 0, 0, AnimScript_205cc, MotionScript_1042f, WaddleDeeProperties
LevelObject_1c3a4:
	object 66, 5, 0, 0, AnimScript_20d3f, MotionScript_10eae, PoppyBrosJrProperties
LevelObject_1c3ae:
	object 67, 5, 8, 0, AnimScript_20d19, MotionScript_111d8, CappyProperties
LevelObject_1c3b8:
	object 70, 5, 0, 0, AnimScript_205ae, MotionScript_103ff, WaddleDeeProperties
LevelObject_1c3c2:
	object 71, 3, 0, 0, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
LevelObject_1c3cc:
	object 74, 4, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c3d6:
	object 79, 2, 0, 0, AnimScript_20647, MotionScript_1067d, WaddleDeeProperties
LevelObject_1c3e0:
	object 78, 3, -6, 0, AnimScript_WarpStar, MotionScript_WarpStar, WarpStarFloorProperties, 2

LevelObject_1c3eb:
	object 5, 6, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 0
LevelObject_1c3f6:
	object 10, 6, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 1

LevelObject_1c401:
	object 18, 1, 0, 0, AnimScript_20647, MotionScript_10508, WaddleDeeProperties
LevelObject_1c40b:
	object 15, 6, 0, 0, AnimScript_20e58, MotionScript_10f84, PoppyBrosJrOnAppleProperties
LevelObject_1c415:
	object 21, 6, -8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c41f:
	object 25, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, WaddleDeeProperties
LevelObject_1c429:
	object 27, 3, 0, 0, AnimScript_20d28, MotionScript_1067d, WaddleDeeProperties
LevelObject_1c433:
	object 31, 6, 0, 0, AnimScript_205ae, MotionScript_103ff, WaddleDeeProperties
LevelObject_1c43d:
	object 33, 1, 0, 0, AnimScript_20647, MotionScript_10508, WaddleDeeProperties
LevelObject_1c447:
	object 36, 6, 0, 0, AnimScript_20d92, MotionScript_10f06, GrizzoProperties
LevelObject_1c451:
	object 38, 0, -48, 0, AnimScript_20647, MotionScript_10d16, WaddleDeeProperties
LevelObject_1c45b:
	object 10, 0, -32, 0, AnimScript_PoppyBrosSr, MotionScript_PoppyBrosSr, Data_3429, 6
; unreferenced
	object 55, 6, -8, 0, AnimScript_2063b, MotionScript_10cf4, WaddleDeeProperties
LevelObject_1c470:
	object 42, 2, 0, 0, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
LevelObject_1c47a:
	object 43, 2, 0, 10, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
LevelObject_1c484:
	object 42, 6, 0, 0, AnimScript_20e58, MotionScript_10f84, PoppyBrosJrOnAppleProperties
; unreferenced
	object 45, 6, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c498:
	object 47, 6, -8, 0, AnimScript_20d19, MotionScript_111d8, CappyProperties
LevelObject_1c4a2:
	object 48, 5, 0, 0, AnimScript_2063b, MotionScript_10cf4, WaddleDeeProperties
LevelObject_1c4ac:
	object 50, 0, -70, 0, AnimScript_20647, MotionScript_10d16, WaddleDeeProperties
LevelObject_1c4b6:
	object 56, 0, -72, 0, AnimScript_20647, MotionScript_10d16, WaddleDeeProperties
LevelObject_1c4c0:
	object 58, 6, 0, 0, AnimScript_20d3f, MotionScript_10e96, PoppyBrosJrProperties
LevelObject_1c4ca:
	object 59, 2, 0, 0, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
; unreferenced
	object 59, 6, -8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c4de:
	object 63, 6, 0, 0, AnimScript_20e10, MotionScript_10f06, PoppyBrosJrOnGrizzoProperties
LevelObject_1c4e8:
	object 65, 6, -16, 0, AnimScript_2063b, MotionScript_10cf4, WaddleDeeProperties
LevelObject_1c4f2:
	object 66, 6, 8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c4fc:
	object 68, 1, 0, 0, AnimScript_20647, MotionScript_10508, WaddleDeeProperties
LevelObject_1c506:
	object 69, 2, 0, 0, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
LevelObject_1c510:
	object 70, 6, 8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c51a:
	object 76, 6, 0, 0, AnimScript_20e10, MotionScript_10f06, PoppyBrosJrOnGrizzoProperties

LevelObject_1c524:
	object 6, 4, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c52e:
	object 9, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, WaddleDeeProperties
LevelObject_1c538:
	object 10, 7, 0, 0, AnimScript_205cc, MotionScript_1042f, WaddleDeeProperties
LevelObject_1c542:
	object 11, 19, -7, 0, AnimScript_20cef, MotionScript_10e3b, CaplessCappyProperties
LevelObject_1c54c:
	object 12, 19, -7, 0, AnimScript_20cef, MotionScript_10e3b, CaplessCappyProperties
LevelObject_1c556:
	object 1, 14, 8, 0, AnimScript_20934, MotionScript_10008, MaximTomatoProperties, 4
	db $00
LevelObject_1c562:
	object 7, 19, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c56c:
	object 6, 23, 2, 0, AnimScript_20ccb, MotionScript_10de7, CaplessCappyProperties
; unreferenced
	object 14, 23, 2, 0, AnimScript_20dda, MotionScript_10008, CaplessCappyProperties
LevelObject_1c580:
	object 11, 28, 0, 0, AnimScript_20d92, MotionScript_10f06, GrizzoProperties
LevelObject_1c58a:
	object 3, 32, 0, 0, AnimScript_20da4, MotionScript_10f0e, GrizzoProperties
LevelObject_1c594:
	object 2, 37, 0, 0, AnimScript_20ccb, MotionScript_10de7, CaplessCappyProperties

LevelObject_1c59e:
	object 7, 22, 2, -43, AnimScript_WhispyWoods, MotionScript_10008, Data_3421
LevelObject_1c5a8:
	object 0, 26, 0, 0, AnimScript_21181, MotionScript_10008, Data_3421

Data_1c5b2:
	dbw $00, NULL
	dbw $08, LevelObject_1c5c0
	db $ff ; end

Data_1c5b9:
	dbw $00, NULL
	dbw $01, LevelObject_1c5c0
	db $ff ; end

LevelObject_1c5c0:
	object 8, 1, 0, 0, AnimScript_2143e, MotionScript_1154d, BroomHatterProperties

Data_1c5ca:
	dbw $00, NULL
	dbw $0a, LevelObject_1c603
	dbw $0b, LevelObject_1c5e4
	dbw $0b, LevelObject_1c5f8
	dbw $14, LevelObject_1c60d
	dbw $15, LevelObject_1c5ee
	dbw $16, LevelObject_1c617
	db $ff ; end

Data_1c5e0:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c5e4:
	object 11, 0, -64, 0, AnimScript_21238, MotionScript_11251, WaddleDeeProperties
LevelObject_1c5ee:
	object 21, 0, -64, 0, AnimScript_21238, MotionScript_11251, WaddleDeeProperties
LevelObject_1c5f8:
	object 11, 6, 0, 0, AnimScript_BombItem, MotionScript_10008, BombProperties, -1
LevelObject_1c603:
	object 10, 6, -32, 0, AnimScript_2134f, MotionScript_113e2, WaddleDeeProperties
LevelObject_1c60d:
	object 20, 6, -32, 0, AnimScript_2134f, MotionScript_113e2, WaddleDeeProperties
LevelObject_1c617:
	object 22, 6, 0, 0, AnimScript_2143e, MotionScript_1154d, WaddleDeeProperties

Data_1c621:
	dbw $00, NULL
	db $ff ; end

Data_1c625:
	dbw $00, NULL
	dbw $01, LevelObject_1c64c
	dbw $01, LevelObject_1c656
	dbw $07, LevelObject_1c660
	dbw $0b, LevelObject_1c66a
	dbw $0b, LevelObject_1c641
	dbw $0e, LevelObject_1c674
	dbw $0e, LevelObject_1c67e
	dbw $0e, LevelObject_1c688
	db $ff ; end

LevelObject_1c641:
	object 4, 11, 8, 0, AnimScript_20925, MotionScript_10008, MikeProperties, 7
LevelObject_1c64c:
	object 0, 3, 0, 0, AnimScript_212da, MotionScript_102d1, WaddleDeeProperties
LevelObject_1c656:
	object 7, 1, 8, 0, AnimScript_StationaryShotzo, MotionScript_10008, ShotzoProperties
LevelObject_1c660:
	object 0, 7, 0, 0, AnimScript_20650, MotionScript_1167c, WaddleDeeProperties
LevelObject_1c66a:
	object 2, 11, 0, 0, AnimScript_20650, MotionScript_11679, WaddleDeeProperties
LevelObject_1c674:
	object 3, 14, 0, 0, AnimScript_205ae, MotionScript_103ff, WaddleDeeProperties
LevelObject_1c67e:
	object 5, 14, 0, 0, AnimScript_2061d, MotionScript_103ff, WaddleDeeProperties
LevelObject_1c688:
	object 7, 14, 0, 0, AnimScript_205ae, MotionScript_103ff, WaddleDeeProperties

Data_1c692:
	dbw $00, NULL
	dbw $00, LevelObject_1c6a6
	dbw $02, LevelObject_1c6c5
	dbw $07, LevelObject_1c6ba
	dbw $09, LevelObject_1c6b0
	db $ff ; end

Data_1c6a2:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c6a6:
	object 0, 3, 0, 0, AnimScript_212a4, MotionScript_11345, WaddleDeeProperties
LevelObject_1c6b0:
	object 9, 3, 0, 0, AnimScript_2127a, MotionScript_1130c, WaddleDeeProperties
LevelObject_1c6ba:
	object 7, 6, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 0
LevelObject_1c6c5:
	object 2, 6, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 1

Data_1c6d0:
	dbw $00, NULL
	dbw $09, LevelObject_1c715
	db $ff ; end

Data_1c6d7:
	dbw $00, NULL
	dbw $01, LevelObject_1c6ed
	dbw $06, LevelObject_1c701
	dbw $06, LevelObject_1c71f
	dbw $09, LevelObject_1c6f7
	dbw $0a, LevelObject_1c70b
	dbw $0a, LevelObject_1c715
	db $ff ; end

LevelObject_1c6ed:
	object 7, 1, 0, 0, AnimScript_TwoFace_Waiting, MotionScript_10008, Data_3421
LevelObject_1c6f7:
	object 17, 9, 0, 0, AnimScript_TwoFace_Waiting, MotionScript_10008, Data_3421
LevelObject_1c701:
	object 4, 6, 0, 0, AnimScript_Chuckie, MotionScript_Chuckie, Data_3421
LevelObject_1c70b:
	object 5, 10, 0, 0, AnimScript_Chuckie, MotionScript_Chuckie, Data_3421
LevelObject_1c715:
	object 9, 10, 0, 0, AnimScript_Chuckie, MotionScript_Chuckie, Data_3421
LevelObject_1c71f:
	object 17, 6, 0, 0, AnimScript_Chuckie, MotionScript_Chuckie, Data_3421

Data_1c729:
	dbw $00, NULL
	dbw $02, LevelObject_1c772
	dbw $05, LevelObject_1c7a4
	dbw $08, LevelObject_1c767
	dbw $09, LevelObject_1c790
	dbw $09, LevelObject_1c7ae
	dbw $0b, LevelObject_1c7b8
	dbw $0d, LevelObject_1c77c
	dbw $0e, LevelObject_1c79a
	dbw $0f, LevelObject_1c786
	db $ff ; end

Data_1c748:
	dbw $00, NULL
	dbw $01, LevelObject_1c790
	dbw $01, LevelObject_1c79a
	dbw $02, LevelObject_1c7b8
	dbw $03, LevelObject_1c7ae
	dbw $05, LevelObject_1c772
	dbw $06, LevelObject_1c786
	dbw $07, LevelObject_1c767
	dbw $09, LevelObject_1c77c
	dbw $07, LevelObject_1c7a4
	db $ff ; end

LevelObject_1c767:
	object 8, 7, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 8
LevelObject_1c772:
	object 2, 5, 0, 0, AnimScript_211e4, MotionScript_10008, GlunkProperties
LevelObject_1c77c:
	object 13, 9, 0, 0, AnimScript_211e4, MotionScript_10008, GlunkProperties
LevelObject_1c786:
	object 15, 6, 0, 0, AnimScript_211e4, MotionScript_10008, GlunkProperties
LevelObject_1c790:
	object 9, 1, -32, 0, AnimScript_211c3, MotionScript_11241, GlunkProperties
LevelObject_1c79a:
	object 14, 1, -32, 0, AnimScript_211c3, MotionScript_11241, GlunkProperties
LevelObject_1c7a4:
	object 5, 7, 0, 0, AnimScript_20572, MotionScript_10508, GordoProperties
LevelObject_1c7ae:
	object 9, 3, 0, 0, AnimScript_20572, MotionScript_114b2, GordoProperties
LevelObject_1c7b8:
	object 11, 2, 0, 0, AnimScript_20647, MotionScript_102ce, WaddleDeeProperties

Data_1c7c2:
	dbw $00, NULL
	db $ff ; end

Data_1c7c6:
	dbw $00, NULL
	dbw $05, LevelObject_1c7dc
	dbw $06, LevelObject_1c7f0
	dbw $07, LevelObject_1c7fa
	dbw $08, LevelObject_1c804
	dbw $0b, LevelObject_1c80e
	dbw $12, LevelObject_1c7e6
	db $ff ; end

LevelObject_1c7dc:
	object 9, 5, 0, 0, AnimScript_213fa, MotionScript_114fa, WaddleDeeProperties
LevelObject_1c7e6:
	object 1, 18, 0, 0, AnimScript_211e4, MotionScript_10008, GlunkProperties
LevelObject_1c7f0:
	object 1, 7, 0, -16, AnimScript_20650, MotionScript_11682, WaddleDeeProperties
LevelObject_1c7fa:
	object 4, 7, 0, 0, AnimScript_20650, MotionScript_11688, WaddleDeeProperties
LevelObject_1c804:
	object 8, 8, 0, 0, AnimScript_21524, MotionScript_10008, ShotzoProperties
LevelObject_1c80e:
	object 8, 11, 0, 0, AnimScript_2090a, MotionScript_10008, InvincibilityCandyProperties, 2

Data_1c819:
	dbw $00, NULL
	dbw $07, LevelObject_1c844
	dbw $0a, LevelObject_1c86c
	dbw $0b, LevelObject_1c84e
	dbw $0f, LevelObject_1c876
	dbw $0f, LevelObject_1c858
	dbw $11, LevelObject_1c862
	dbw $14, LevelObject_1c880
	dbw $19, LevelObject_1c839
	db $ff ; end

Data_1c835:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c839:
	object 25, 6, -8, 0, AnimScript_WarpStar, MotionScript_WarpStar, WarpStarFloatingProperties, 3
LevelObject_1c844:
	object 7, 0, 0, 0, AnimScript_213a1, MotionScript_11425, MumbiesProperties
LevelObject_1c84e:
	object 11, 3, 0, 0, AnimScript_20000, MotionScript_11461, MumbiesProperties
LevelObject_1c858:
	object 15, 5, 0, 0, AnimScript_213a1, MotionScript_11443, MumbiesProperties
LevelObject_1c862:
	object 17, 0, 0, 0, AnimScript_213a1, MotionScript_11425, MumbiesProperties
LevelObject_1c86c:
	object 10, 4, 0, 0, AnimScript_212d1, MotionScript_112d9, WaddleDeeProperties
LevelObject_1c876:
	object 15, 5, 22, -18, AnimScript_212d1, MotionScript_11300, WaddleDeeProperties
LevelObject_1c880:
	object 20, 4, 0, 0, AnimScript_212d1, MotionScript_112d9, WaddleDeeProperties

Data_1c88a:
	dbw $00, NULL
	dbw $06, LevelObject_1c8b8
	dbw $08, LevelObject_1c8c2
	dbw $0a, LevelObject_1c8cc
	dbw $0b, LevelObject_1c8a4
	dbw $0f, LevelObject_1c8d6
	dbw $0f, LevelObject_1c8ae
	db $ff ; end

Data_1c8a0:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c8a4:
	object 11, 8, 0, 0, AnimScript_2122f, MotionScript_11637, WaddleDeeProperties
LevelObject_1c8ae:
	object 15, 8, 0, 0, AnimScript_2122f, MotionScript_11637, WaddleDeeProperties
LevelObject_1c8b8:
	object 6, 0, 0, 0, AnimScript_21433, MotionScript_11545, BroomHatterProperties
LevelObject_1c8c2:
	object 8, 0, 0, 0, AnimScript_21433, MotionScript_11545, BroomHatterProperties
LevelObject_1c8cc:
	object 10, 0, 0, 0, AnimScript_21433, MotionScript_11545, BroomHatterProperties
LevelObject_1c8d6:
	object 15, 0, 0, 0, AnimScript_21433, MotionScript_11545, BroomHatterProperties

Data_1c8e0:
	dbw $00, NULL
	dbw $0b, LevelObject_1c8ff
	dbw $0b, LevelObject_1c8f4
	db $ff ; end

Data_1c8ea:
	dbw $00, NULL
	dbw $03, LevelObject_1c8ff
	dbw $09, LevelObject_1c8f4
	db $ff ; end

LevelObject_1c8f4:
	object 11, 9, 0, 0, AnimScript_2167b, MotionScript_10008, MaximTomatoProperties, 10
LevelObject_1c8ff:
	object 11, 3, 0, 0, AnimScript_21598, MotionScript_10008, Data_3421

Data_1c909:
	dbw $00, NULL
	dbw $01, LevelObject_1c931
	dbw $01, LevelObject_1c91d
	dbw $07, LevelObject_1c93c
	dbw $08, LevelObject_1c927
	db $ff ; end

Data_1c919:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c91d:
	object 1, 1, 8, 8, AnimScript_2130d, MotionScript_11396, WaddleDeeProperties
LevelObject_1c927:
	object 8, 1, -8, 8, AnimScript_212e3, MotionScript_11381, WaddleDeeProperties
LevelObject_1c931:
	object 1, 1, 8, 0, AnimScript_SpicyFood, MotionScript_10008, SpicyFoodProperties, 4
LevelObject_1c93c:
	object 7, 3, 8, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 5

Data_1c947:
	dbw $00, NULL
	dbw $00, LevelObject_1c979
	dbw $03, LevelObject_1c9b6
	dbw $06, LevelObject_1c9a2
	dbw $08, LevelObject_1c9ac
	dbw $0a, LevelObject_1c984
	dbw $0b, LevelObject_1c98e
	dbw $0c, LevelObject_1c998
	db $ff ; end

Data_1c960:
	dbw $00, NULL
	dbw $03, LevelObject_1c9a2
	dbw $04, LevelObject_1c98e
	dbw $05, LevelObject_1c9b6
	dbw $07, LevelObject_1c998
	dbw $08, LevelObject_1c9ac
	dbw $0a, LevelObject_1c979
	dbw $0e, LevelObject_1c984
	db $ff ; end

LevelObject_1c979:
	object 0, 10, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 6
LevelObject_1c984:
	object 10, 14, 0, 0, AnimScript_21457, MotionScript_103ff, WaddleDeeProperties
LevelObject_1c98e:
	object 11, 4, 0, 0, AnimScript_TwoFace_Waiting, MotionScript_10008, Data_3421
LevelObject_1c998:
	object 12, 7, 0, 0, AnimScript_20000, MotionScript_11265, Data_3421
LevelObject_1c9a2:
	object 6, 3, 0, 0, AnimScript_20572, MotionScript_114b2, GordoProperties
LevelObject_1c9ac:
	object 8, 8, 0, 0, AnimScript_20572, MotionScript_10508, GordoProperties
LevelObject_1c9b6:
	object 3, 5, 0, 0, AnimScript_20572, MotionScript_114b2, GordoProperties

Data_1c9c0:
	dbw $00, NULL
	dbw $01, LevelObject_1c9da
	dbw $06, LevelObject_1c9ee
	dbw $07, LevelObject_1c9f8
	dbw $0a, LevelObject_1ca02
	dbw $0c, LevelObject_1ca0c
	dbw $0d, LevelObject_1c9e4
	db $ff ; end

Data_1c9d6:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c9da:
	object 1, 3, 0, 0, AnimScript_2133a, MotionScript_116e5, WaddleDeeProperties
LevelObject_1c9e4:
	object 13, 3, 0, 0, AnimScript_21433, MotionScript_11691, WaddleDeeProperties
LevelObject_1c9ee:
	object 6, 4, 0, 0, AnimScript_20587, MotionScript_102ce, BroomHatterProperties
LevelObject_1c9f8:
	object 7, 3, 0, 0, AnimScript_20587, MotionScript_102ce, BroomHatterProperties
LevelObject_1ca02:
	object 10, 5, 0, 0, AnimScript_21238, MotionScript_11251, WaddleDeeProperties
LevelObject_1ca0c:
	object 12, 5, 0, 0, AnimScript_21238, MotionScript_11251, WaddleDeeProperties

Data_1ca16:
	dbw $00, NULL
	dbw $01, $4a24
	dbw $05, $4a2e
	db $ff ; end

Data_1ca20:
	dbw $00, NULL
	db $ff ; end
; 0x1ca24

SECTION "Bank 7@558f", ROMX[$558f], BANK[$7]

Data_1d58f:
	dbw $00, NULL
	dbw $00, LevelObject_1d5b0
	dbw $00, LevelObject_1d5a6
	dbw $04, LevelObject_1d59c
	db $ff ; end

LevelObject_1d59c:
	object 4, 3, 10, -26, AnimScript_TitleScreenWarpStarKirby, MotionScript_TitleScreenWarpStarKirby, Data_3425
LevelObject_1d5a6:
	object 0, 7, -16, -8, AnimScript_TitleScreenKirbySpawner, MotionScript_10008, Data_3425
LevelObject_1d5b0:
	object 0, 0, 0, 0, AnimScript_TitleScreenStarSpawner, MotionScript_10008, Data_3425

Data_1d5ba:
	dbw $00, NULL
	dbw $06, Data_1d777
	dbw $07, Data_1d781
	db $ff ; end
; 0x1d5c4

SECTION "Bank 7@55fd", ROMX[$55fd], BANK[$7]

Data_1d5fd:
	dbw $00, NULL
	dbw $05, Data_1d655
	dbw $06, Data_1d64b
	db $ff ; end
; 0x1d607

SECTION "Bank 7@564b", ROMX[$564b], BANK[$7]

Data_1d64b:
	object $06, $06, $f8, $00, AnimScript_224e4, MotionScript_124b9, Data_3425
Data_1d655:
	object $05, $06, $fb, $f8, AnimScript_224af, MotionScript_12491, Data_3425
; 0x1d65f

SECTION "Bank 7@5777", ROMX[$5777], BANK[$7]

Data_1d777:
	object $06, $06, $00, $00, AnimScript_SoundTestNote, MotionScript_SoundTestNote, Data_3425

Data_1d781:
	object $08, $07, $f0, $f8, AnimScript_SoundTestKirbyEyes, MotionScript_10008, Data_3425
; 0x1d78b

SECTION "Bank 7@57e7", ROMX[$57e7], BANK[$7]

Data_1d7e7:
	dbw $00, NULL
	db $ff ; end
; 0x1d7eb

SECTION "Bank 7@5936", ROMX[$5936], BANK[$7]

Data_1d936:
	dbw $00, NULL
	dbw $01, $5958
	db $ff ; end

Data_1d93d:
	dbw $00, NULL
	dbw $01, $5958
	db $ff ; end

Data_1d944:
	dbw $00, NULL
	dbw $01, $5962
	dbw $09, $596c
	db $ff ; end

Data_1d94e:
	dbw $00, NULL
	dbw $01, $5962
	dbw $09, $596c
	db $ff ; end
; 0x1d958
