ObjectList_GreenGreens0_X:
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

ObjectList_GreenGreens1_X:
	dbw $00, NULL
	dbw $05, LevelObject_1c3eb
	dbw $0a, LevelObject_1c3f6
	db $ff ; end

ObjectList_GreenGreens2_X:
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

ObjectList_GreenGreens3_X:
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

ObjectList_GreenGreens4_X:
	dbw $00, NULL
	dbw $07, LevelObject_1c59e
	db $ff ; end

ObjectList_GreenGreens0_Y:
ObjectList_GreenGreens1_Y:
ObjectList_GreenGreens2_Y:
	dbw $00, NULL
	db $ff ; end

ObjectList_GreenGreens3_Y:
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

ObjectList_GreenGreens4_Y:
	dbw $00, NULL
	dbw $16, LevelObject_1c59e
	dbw $1a, LevelObject_1c5a8
	db $ff ; end

	db $ff ; end

LevelObject_1c304:
	object 15, 5, 0, 0, AnimScript_20587, MotionScript_102c8, StandardEnemyProperties
; unreferenced
	object 17, 5, -8, 0, AnimScript_20d19, MotionScript_111d8, CappyProperties
LevelObject_1c318:
	object 17, 5, 0, 0, AnimScript_20587, MotionScript_102c8, StandardEnemyProperties
LevelObject_1c322:
	object 21, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1c32c:
	object 22, 2, 0, 0, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
LevelObject_1c336:
	object 24, 4, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c340:
	object 31, 1, 0, 0, AnimScript_20647, MotionScript_10508, StandardEnemyProperties
LevelObject_1c34a:
	object 33, 5, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1c354:
	object 41, 5, 8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c35e:
	object 48, 2, 0, 0, AnimScript_20d28, MotionScript_1067d, StandardEnemyProperties
LevelObject_1c368:
	object 48, 5, -8, 0, AnimScript_20d19, MotionScript_111d8, CappyProperties
LevelObject_1c372:
	object 49, 2, 0, 8, AnimScript_20d28, MotionScript_1067d, StandardEnemyProperties
; unreferenced
	object 51, 3, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c386:
	object 57, 4, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c390:
	object 61, 1, 0, 0, AnimScript_20647, MotionScript_10508, StandardEnemyProperties
LevelObject_1c39a:
	object 64, 5, 0, 0, AnimScript_205cc, MotionScript_1042f, StandardEnemyProperties
LevelObject_1c3a4:
	object 66, 5, 0, 0, AnimScript_20d3f, MotionScript_10eae, PoppyBrosJrProperties
LevelObject_1c3ae:
	object 67, 5, 8, 0, AnimScript_20d19, MotionScript_111d8, CappyProperties
LevelObject_1c3b8:
	object 70, 5, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1c3c2:
	object 71, 3, 0, 0, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
LevelObject_1c3cc:
	object 74, 4, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c3d6:
	object 79, 2, 0, 0, AnimScript_20647, MotionScript_1067d, StandardEnemyProperties
LevelObject_1c3e0:
	object 78, 3, -6, 0, AnimScript_WarpStar, MotionScript_WarpStar, WarpStarFloorProperties, 2

LevelObject_1c3eb:
	object 5, 6, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 0
LevelObject_1c3f6:
	object 10, 6, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 1

LevelObject_1c401:
	object 18, 1, 0, 0, AnimScript_20647, MotionScript_10508, StandardEnemyProperties
LevelObject_1c40b:
	object 15, 6, 0, 0, AnimScript_20e58, MotionScript_10f84, PoppyBrosJrOnAppleProperties
LevelObject_1c415:
	object 21, 6, -8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c41f:
	object 25, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1c429:
	object 27, 3, 0, 0, AnimScript_20d28, MotionScript_1067d, StandardEnemyProperties
LevelObject_1c433:
	object 31, 6, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1c43d:
	object 33, 1, 0, 0, AnimScript_20647, MotionScript_10508, StandardEnemyProperties
LevelObject_1c447:
	object 36, 6, 0, 0, AnimScript_20d92, MotionScript_10f06, GrizzoProperties
LevelObject_1c451:
	object 38, 0, -48, 0, AnimScript_20647, MotionScript_10d16, StandardEnemyProperties
LevelObject_1c45b:
	object 10, 0, -32, 0, AnimScript_PoppyBrosSr, MotionScript_PoppyBrosSr, Data_3429, 6
; unreferenced
	object 55, 6, -8, 0, AnimScript_2063b, MotionScript_10cf4, StandardEnemyProperties
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
	object 48, 5, 0, 0, AnimScript_2063b, MotionScript_10cf4, StandardEnemyProperties
LevelObject_1c4ac:
	object 50, 0, -70, 0, AnimScript_20647, MotionScript_10d16, StandardEnemyProperties
LevelObject_1c4b6:
	object 56, 0, -72, 0, AnimScript_20647, MotionScript_10d16, StandardEnemyProperties
LevelObject_1c4c0:
	object 58, 6, 0, 0, AnimScript_20d3f, MotionScript_10e96, PoppyBrosJrProperties
LevelObject_1c4ca:
	object 59, 2, 0, 0, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
; unreferenced
	object 59, 6, -8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c4de:
	object 63, 6, 0, 0, AnimScript_20e10, MotionScript_10f06, PoppyBrosJrOnGrizzoProperties
LevelObject_1c4e8:
	object 65, 6, -16, 0, AnimScript_2063b, MotionScript_10cf4, StandardEnemyProperties
LevelObject_1c4f2:
	object 66, 6, 8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c4fc:
	object 68, 1, 0, 0, AnimScript_20647, MotionScript_10508, StandardEnemyProperties
LevelObject_1c506:
	object 69, 2, 0, 0, AnimScript_20c52, MotionScript_10d5d, TwizzyProperties
LevelObject_1c510:
	object 70, 6, 8, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1c51a:
	object 76, 6, 0, 0, AnimScript_20e10, MotionScript_10f06, PoppyBrosJrOnGrizzoProperties

LevelObject_1c524:
	object 6, 4, 0, 0, AnimScript_20c5b, MotionScript_10d99, TwizzyProperties
LevelObject_1c52e:
	object 9, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1c538:
	object 10, 7, 0, 0, AnimScript_205cc, MotionScript_1042f, StandardEnemyProperties
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
	object 0, 26, 0, 0, AnimScript_WhispyWoodsScrollLocker, MotionScript_10008, Data_3421

ObjectList_CastleLololo00_X:
	dbw $00, NULL
	dbw $08, LevelObject_1c5c0
	db $ff ; end

ObjectList_CastleLololo00_Y:
	dbw $00, NULL
	dbw $01, LevelObject_1c5c0
	db $ff ; end

LevelObject_1c5c0:
	object 8, 1, 0, 0, AnimScript_2143e, MotionScript_1154d, StandardEnemyGravityProperties

ObjectList_CastleLololo03_X:
	dbw $00, NULL
	dbw $0a, LevelObject_1c603
	dbw $0b, LevelObject_1c5e4
	dbw $0b, LevelObject_1c5f8
	dbw $14, LevelObject_1c60d
	dbw $15, LevelObject_1c5ee
	dbw $16, LevelObject_1c617
	db $ff ; end

ObjectList_CastleLololo03_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c5e4:
	object 11, 0, -64, 0, AnimScript_21238, MotionScript_11251, StandardEnemyProperties
LevelObject_1c5ee:
	object 21, 0, -64, 0, AnimScript_21238, MotionScript_11251, StandardEnemyProperties
LevelObject_1c5f8:
	object 11, 6, 0, 0, AnimScript_BombItem, MotionScript_10008, BombProperties, -1
LevelObject_1c603:
	object 10, 6, -32, 0, AnimScript_2134f, MotionScript_113e2, StandardEnemyProperties
LevelObject_1c60d:
	object 20, 6, -32, 0, AnimScript_2134f, MotionScript_113e2, StandardEnemyProperties
LevelObject_1c617:
	object 22, 6, 0, 0, AnimScript_2143e, MotionScript_1154d, StandardEnemyProperties

ObjectList_CastleLololo01_X:
	dbw $00, NULL
	db $ff ; end

ObjectList_CastleLololo01_Y:
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
	object 0, 3, 0, 0, AnimScript_212da, MotionScript_102d1, StandardEnemyProperties
LevelObject_1c656:
	object 7, 1, 8, 0, AnimScript_StationaryShotzo, MotionScript_10008, ShotzoProperties
LevelObject_1c660:
	object 0, 7, 0, 0, AnimScript_20650, MotionScript_1167c, StandardEnemyProperties
LevelObject_1c66a:
	object 2, 11, 0, 0, AnimScript_20650, MotionScript_11679, StandardEnemyProperties
LevelObject_1c674:
	object 3, 14, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1c67e:
	object 5, 14, 0, 0, AnimScript_2061d, MotionScript_103ff, StandardEnemyProperties
LevelObject_1c688:
	object 7, 14, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties

ObjectList_CastleLololo02_X:
	dbw $00, NULL
	dbw $00, LevelObject_1c6a6
	dbw $02, LevelObject_1c6c5
	dbw $07, LevelObject_1c6ba
	dbw $09, LevelObject_1c6b0
	db $ff ; end

ObjectList_CastleLololo02_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c6a6:
	object 0, 3, 0, 0, AnimScript_212a4, MotionScript_11345, StandardEnemyProperties
LevelObject_1c6b0:
	object 9, 3, 0, 0, AnimScript_2127a, MotionScript_1130c, StandardEnemyProperties
LevelObject_1c6ba:
	object 7, 6, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 0
LevelObject_1c6c5:
	object 2, 6, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 1

ObjectList_CastleLololo04_X:
	dbw $00, NULL
	dbw $09, LevelObject_1c715
	db $ff ; end

ObjectList_CastleLololo04_Y:
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

ObjectList_CastleLololo05_X:
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

ObjectList_CastleLololo05_Y:
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
	object 2, 5, 0, 0, AnimScript_ShootingGlunk, MotionScript_10008, GlunkProperties
LevelObject_1c77c:
	object 13, 9, 0, 0, AnimScript_ShootingGlunk, MotionScript_10008, GlunkProperties
LevelObject_1c786:
	object 15, 6, 0, 0, AnimScript_ShootingGlunk, MotionScript_10008, GlunkProperties
LevelObject_1c790:
	object 9, 1, -32, 0, AnimScript_FallingGlunk, MotionScript_11241, GlunkProperties
LevelObject_1c79a:
	object 14, 1, -32, 0, AnimScript_FallingGlunk, MotionScript_11241, GlunkProperties
LevelObject_1c7a4:
	object 5, 7, 0, 0, AnimScript_20572, MotionScript_10508, GordoProperties
LevelObject_1c7ae:
	object 9, 3, 0, 0, AnimScript_20572, MotionScript_114b2, GordoProperties
LevelObject_1c7b8:
	object 11, 2, 0, 0, AnimScript_20647, MotionScript_102ce, StandardEnemyProperties

ObjectList_CastleLololo06_X:
	dbw $00, NULL
	db $ff ; end

ObjectList_CastleLololo06_Y:
	dbw $00, NULL
	dbw $05, LevelObject_1c7dc
	dbw $06, LevelObject_1c7f0
	dbw $07, LevelObject_1c7fa
	dbw $08, LevelObject_1c804
	dbw $0b, LevelObject_1c80e
	dbw $12, LevelObject_1c7e6
	db $ff ; end

LevelObject_1c7dc:
	object 9, 5, 0, 0, AnimScript_213fa, MotionScript_114fa, StandardEnemyProperties
LevelObject_1c7e6:
	object 1, 18, 0, 0, AnimScript_ShootingGlunk, MotionScript_10008, GlunkProperties
LevelObject_1c7f0:
	object 1, 7, 0, -16, AnimScript_20650, MotionScript_11682, StandardEnemyProperties
LevelObject_1c7fa:
	object 4, 7, 0, 0, AnimScript_20650, MotionScript_11688, StandardEnemyProperties
LevelObject_1c804:
	object 8, 8, 0, 0, AnimScript_21524, MotionScript_10008, ShotzoProperties
LevelObject_1c80e:
	object 8, 11, 0, 0, AnimScript_2090a, MotionScript_10008, InvincibilityCandyProperties, 2

ObjectList_CastleLololo07_X:
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

ObjectList_CastleLololo07_Y:
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
	object 10, 4, 0, 0, AnimScript_212d1, MotionScript_112d9, StandardEnemyProperties
LevelObject_1c876:
	object 15, 5, 22, -18, AnimScript_212d1, MotionScript_11300, StandardEnemyProperties
LevelObject_1c880:
	object 20, 4, 0, 0, AnimScript_212d1, MotionScript_112d9, StandardEnemyProperties

ObjectList_CastleLololo11_X:
	dbw $00, NULL
	dbw $06, LevelObject_1c8b8
	dbw $08, LevelObject_1c8c2
	dbw $0a, LevelObject_1c8cc
	dbw $0b, LevelObject_1c8a4
	dbw $0f, LevelObject_1c8d6
	dbw $0f, LevelObject_1c8ae
	db $ff ; end

ObjectList_CastleLololo11_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c8a4:
	object 11, 8, 0, 0, AnimScript_2122f, MotionScript_11637, StandardEnemyProperties
LevelObject_1c8ae:
	object 15, 8, 0, 0, AnimScript_2122f, MotionScript_11637, StandardEnemyProperties
LevelObject_1c8b8:
	object 6, 0, 0, 0, AnimScript_21433, MotionScript_11545, StandardEnemyGravityProperties
LevelObject_1c8c2:
	object 8, 0, 0, 0, AnimScript_21433, MotionScript_11545, StandardEnemyGravityProperties
LevelObject_1c8cc:
	object 10, 0, 0, 0, AnimScript_21433, MotionScript_11545, StandardEnemyGravityProperties
LevelObject_1c8d6:
	object 15, 0, 0, 0, AnimScript_21433, MotionScript_11545, StandardEnemyGravityProperties

ObjectList_CastleLololo09_X:
	dbw $00, NULL
	dbw $0b, LevelObject_1c8ff
	dbw $0b, LevelObject_1c8f4
	db $ff ; end

ObjectList_CastleLololo09_Y:
	dbw $00, NULL
	dbw $03, LevelObject_1c8ff
	dbw $09, LevelObject_1c8f4
	db $ff ; end

LevelObject_1c8f4:
	object 11, 9, 0, 0, AnimScript_2167b, MotionScript_10008, MaximTomatoProperties, 10
LevelObject_1c8ff:
	object 11, 3, 0, 0, AnimScript_CirclingEnemiesTrap, MotionScript_10008, Data_3421

ObjectList_CastleLololo10_X:
	dbw $00, NULL
	dbw $01, LevelObject_1c931
	dbw $01, LevelObject_1c91d
	dbw $07, LevelObject_1c93c
	dbw $08, LevelObject_1c927
	db $ff ; end

ObjectList_CastleLololo10_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c91d:
	object 1, 1, 8, 8, AnimScript_2130d, MotionScript_11396, StandardEnemyProperties
LevelObject_1c927:
	object 8, 1, -8, 8, AnimScript_212e3, MotionScript_11381, StandardEnemyProperties
LevelObject_1c931:
	object 1, 1, 8, 0, AnimScript_SpicyFood, MotionScript_10008, SpicyFoodProperties, 4
LevelObject_1c93c:
	object 7, 3, 8, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 5

ObjectList_CastleLololo12_X:
	dbw $00, NULL
	dbw $00, LevelObject_1c979
	dbw $03, LevelObject_1c9b6
	dbw $06, LevelObject_1c9a2
	dbw $08, LevelObject_1c9ac
	dbw $0a, LevelObject_1c984
	dbw $0b, LevelObject_1c98e
	dbw $0c, LevelObject_1c998
	db $ff ; end

ObjectList_CastleLololo12_Y:
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
	object 10, 14, 0, 0, AnimScript_21457, MotionScript_103ff, StandardEnemyProperties
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

ObjectList_CastleLololo13_X:
	dbw $00, NULL
	dbw $01, LevelObject_1c9da
	dbw $06, LevelObject_1c9ee
	dbw $07, LevelObject_1c9f8
	dbw $0a, LevelObject_1ca02
	dbw $0c, LevelObject_1ca0c
	dbw $0d, LevelObject_1c9e4
	db $ff ; end

ObjectList_CastleLololo13_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1c9da:
	object 1, 3, 0, 0, AnimScript_2133a, MotionScript_116e5, StandardEnemyProperties
LevelObject_1c9e4:
	object 13, 3, 0, 0, AnimScript_21433, MotionScript_11691, StandardEnemyProperties
LevelObject_1c9ee:
	object 6, 4, 0, 0, AnimScript_20587, MotionScript_102ce, StandardEnemyGravityProperties
LevelObject_1c9f8:
	object 7, 3, 0, 0, AnimScript_20587, MotionScript_102ce, StandardEnemyGravityProperties
LevelObject_1ca02:
	object 10, 5, 0, 0, AnimScript_21238, MotionScript_11251, StandardEnemyProperties
LevelObject_1ca0c:
	object 12, 5, 0, 0, AnimScript_21238, MotionScript_11251, StandardEnemyProperties

ObjectList_CastleLololo15_X:
	dbw $00, NULL
	dbw $01, LevelObject_1ca24
	dbw $05, LevelObject_1ca2e
	db $ff ; end

ObjectList_CastleLololo15_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1ca24:
	object 1, 1, 0, 0, AnimScript_20000, MotionScript_10008, Data_3425
LevelObject_1ca2e:
	object 5, 3, -8, 0, AnimScript_20967, MotionScript_1032d, Data_3421
	db $1f

ObjectList_FloatIslands0_X:
	dbw $00, NULL
	dbw $10, LevelObject_1cbcf
	dbw $12, LevelObject_1cbd9
	dbw $13, LevelObject_1cbe3
	dbw $14, LevelObject_1cbed
	dbw $16, LevelObject_1cbf7
	dbw $19, LevelObject_1cc01
	dbw $1b, LevelObject_1cc0b
	dbw $20, LevelObject_1cc15
	dbw $20, LevelObject_1cc1f
	dbw $22, LevelObject_1cc29
	dbw $25, LevelObject_1cc33
	dbw $2d, LevelObject_1cc3d
	dbw $2e, LevelObject_1cc47
	dbw $36, LevelObject_1cc51
	dbw $38, LevelObject_1cc5b
	dbw $3c, LevelObject_1cc65
	dbw $3d, LevelObject_1cc6f
	dbw $43, LevelObject_1cc79
	dbw $45, LevelObject_1cc83
	dbw $50, LevelObject_1cc8d
	dbw $50, LevelObject_1cc97
	dbw $50, LevelObject_1cca1
	dbw $53, LevelObject_1ccab
	dbw $57, LevelObject_1ccb5
	dbw $5a, LevelObject_1ccbf
	dbw $5a, LevelObject_1ccc9
	dbw $5c, LevelObject_1ccd4
	dbw $61, LevelObject_1ccde
	dbw $61, LevelObject_1cce8
	dbw $67, LevelObject_1ccf2
	dbw $68, LevelObject_1ccfc
	dbw $6a, LevelObject_1cd06
	dbw $6b, LevelObject_1cd10
	dbw $6f, LevelObject_1cd1a
	dbw $6f, LevelObject_1cd24
	dbw $6f, LevelObject_1cd2e
	db $ff ; end

ObjectList_FloatIslands0_Y:
	dbw $00, NULL
	db $ff ; end

ObjectList_FloatIslands1_X:
	dbw $00, NULL
	dbw $01, LevelObject_1cd38
	dbw $02, LevelObject_1cd43
	dbw $05, LevelObject_1cd4d
	dbw $05, LevelObject_1cd57
	dbw $0a, LevelObject_1cd61
	dbw $0f, LevelObject_1cd6b
	dbw $10, LevelObject_1cd75
	dbw $15, LevelObject_1cd9d
	dbw $17, LevelObject_1cd7f
	dbw $18, LevelObject_1cda7
	dbw $1a, LevelObject_1cd89
	dbw $1e, LevelObject_1cd93
	dbw $23, LevelObject_1cdb1
	dbw $28, LevelObject_1cdbb
	dbw $29, LevelObject_1cdc5
	dbw $2b, LevelObject_1cdcf
	dbw $2e, LevelObject_1cdd9
	db $ff ; end

ObjectList_FloatIslands1_Y:
	dbw $00, NULL
	dbw $01, LevelObject_1cdbb
	dbw $02, LevelObject_1cdd9
	dbw $02, LevelObject_1cd6b
	dbw $02, LevelObject_1cd93
	dbw $03, LevelObject_1cd89
	dbw $03, LevelObject_1cd7f
	dbw $05, LevelObject_1cdc5
	dbw $05, LevelObject_1cd61
	dbw $08, LevelObject_1cdb1
	dbw $09, LevelObject_1cd43
	dbw $09, LevelObject_1cd57
	dbw $09, LevelObject_1cdcf
	dbw $0C, LevelObject_1cd75
	dbw $0D, LevelObject_1cda7
	dbw $0D, LevelObject_1cd38
	dbw $0E, LevelObject_1cd9d
	dbw $0E, LevelObject_1cd4d
	db $ff ; end

ObjectList_FloatIslands2_X:
	dbw $00, NULL
	dbw $01, LevelObject_1cde4
	dbw $02, LevelObject_1cdee
	dbw $06, LevelObject_1cdf8
	dbw $05, LevelObject_1ce16
	dbw $07, LevelObject_1ce02
	dbw $0F, LevelObject_1ce0c
	db $ff ; end

ObjectList_FloatIslands2_Y:
	dbw $00, NULL
	dbw $01, LevelObject_1ce02
	dbw $02, LevelObject_1cde4
	dbw $03, LevelObject_1cdee
	dbw $03, LevelObject_1cdf8
	dbw $07, LevelObject_1ce0c
	dbw $16, LevelObject_1ce16
	db $ff ; end

ObjectList_FloatIslands3_X:
	dbw $00, NULL
	dbw $0A, LevelObject_1ce21
	dbw $0E, LevelObject_1ce2b
	dbw $0F, LevelObject_1ce35
	dbw $12, LevelObject_1ce40
	dbw $14, LevelObject_1ce4a
	dbw $1C, LevelObject_1ce54
	dbw $1D, LevelObject_1ce5e
	dbw $1E, LevelObject_1ce68
	dbw $26, LevelObject_1ce72
	dbw $26, LevelObject_1ce7c
	dbw $27, LevelObject_1ce86
	dbw $2C, LevelObject_1ce90
	dbw $2E, LevelObject_1ce9a
	dbw $31, LevelObject_1cea4
	dbw $31, LevelObject_1ceae
	dbw $33, LevelObject_1ceb8
	dbw $36, LevelObject_1cec2
	dbw $3C, LevelObject_1cecc
	dbw $44, LevelObject_1ced6
	db $ff ; end

ObjectList_FloatIslands3_Y:
	dbw $00, NULL
	db $ff ; end

ObjectList_FloatIslands4_X:
	dbw $00, NULL
	dbw $01, LevelObject_1cee0
	dbw $02, LevelObject_1ceeb
	db $ff ; end

ObjectList_FloatIslands4_Y:
	dbw $00, NULL
	dbw $04, LevelObject_1cee0
	dbw $04, LevelObject_1ceeb
	db $ff ; end

ObjectList_FloatIslands5_X:
	dbw $00, NULL
	dbw $06, LevelObject_1cef6
	db $ff ; end

ObjectList_FloatIslands5_Y:
	dbw $00, NULL
	dbw $02, LevelObject_1cef6
	dbw $15, LevelObject_1cf00
	db $ff ; end

ObjectList_FloatIslands6_X:
	dbw $00, NULL
	dbw $05, LevelObject_1cf0b
	db $ff ; end

ObjectList_FloatIslands6_Y:
	dbw $00, NULL
	db $ff ; end

ObjectList_FloatIslands7_X:
	dbw $00, NULL
	dbw $0A, LevelObject_1cf29
	dbw $0D, LevelObject_1cf15
	dbw $0E, LevelObject_1cf1f
	dbw $18, LevelObject_1cf33
	dbw $26, LevelObject_1cf3e
	db $ff ; end 

ObjectList_FloatIslands7_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1cbcf:
	object 16, 5, 0, 0, AnimScript_218b5, MotionScript_118d1, StandardEnemyProperties
LevelObject_1cbd9:
	object 18, 1, 0, 0, AnimScript_20647, MotionScript_104aa, StandardEnemyProperties
LevelObject_1cbe3:
	object 19, 3, 0, -8, AnimScript_20647, MotionScript_1067d, StandardEnemyProperties
LevelObject_1cbed:
	object 20, 0, 0, 0, AnimScript_218c7, MotionScript_1190f, StandardEnemyProperties
LevelObject_1cbf7:
	object 22, 5, 0, 0, AnimScript_2171c, MotionScript_10008, GlunkProperties
LevelObject_1cc01:
	object 25, 1, 0, 0, AnimScript_21906, MotionScript_10008, CoconutProperties
LevelObject_1cc0b:
	object 27, 4, 0, 0, AnimScript_BombItem, MotionScript_10008, BombProperties ; bug, missing consumable flag
LevelObject_1cc15:
	object 32, 4, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1cc1f:
	object 32, 4, 20, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1cc29:
	object 34, 1, 0, 8, AnimScript_20647, MotionScript_1067d, StandardEnemyProperties
LevelObject_1cc33:
	object 37, 7, 0, 0, AnimScript_2187f, MotionScript_1179b, BlipperProperties
LevelObject_1cc3d:
	object 45, 7, 0, 0, AnimScript_2187f, MotionScript_117dd, BlipperProperties
LevelObject_1cc47:
	object 46, 4, 0, 0, AnimScript_21fff, MotionScript_10008, StandardEnemyProperties
LevelObject_1cc51:
	object 54, 7, -36, 0, AnimScript_20707, MotionScript_10459, ShotzoProperties
LevelObject_1cc5b:
	object 56, 7, 0, 0, AnimScript_2187f, MotionScript_117dd, BlipperProperties
LevelObject_1cc65:
	object 60, 0, -60, 0, AnimScript_20647, MotionScript_105bb, StandardEnemyProperties
LevelObject_1cc6f:
	object 61, 4, 0, 0, AnimScript_Coner, MotionScript_1170f, ConerProperties
LevelObject_1cc79:
	object 67, 4, 0, 0, AnimScript_218be, MotionScript_11945, StandardEnemyProperties
LevelObject_1cc83:
	object 69, 0, -120, 0, AnimScript_20650, MotionScript_105bb, StandardEnemyProperties
LevelObject_1cc8d:
	object 80, 7, -110, 16, AnimScript_218cd, MotionScript_11975, StandardEnemyProperties
LevelObject_1cc97:
	object 80, 7, -80, 40, AnimScript_218cd, MotionScript_11975, StandardEnemyProperties
LevelObject_1cca1:
	object 80, 7, -50, 16, AnimScript_218cd, MotionScript_11975, StandardEnemyProperties
LevelObject_1ccab:
	object 83, 3, 0, 0, AnimScript_218b5, MotionScript_11920, StandardEnemyProperties
LevelObject_1ccb5:
	object 87, 7, 0, 0, AnimScript_2187f, MotionScript_117dd, BlipperProperties
LevelObject_1ccbf:
	object 90, 7, -64, 0, AnimScript_20707, MotionScript_10459, ShotzoProperties
LevelObject_1ccc9:
	object 90, 4, 0, 0, AnimScript_20925, MotionScript_10008, MikeProperties, 0
LevelObject_1ccd4:
	object 92, 4, 0, 0, AnimScript_20647, MotionScript_10639, StandardEnemyProperties
LevelObject_1ccde:
	object 97, 4, 0, 0, AnimScript_20587, MotionScript_102ce, StandardEnemyGravityProperties
LevelObject_1cce8:
	object 97, 4, 20, 0, AnimScript_205e1, MotionScript_102ce, StandardEnemyGravityProperties
LevelObject_1ccf2:
	object 103, 2, 0, 0, AnimScript_21906, MotionScript_10008, CoconutProperties
LevelObject_1ccfc:
	object 104, 0, 0, 0, AnimScript_21906, MotionScript_10008, CoconutProperties
LevelObject_1cd06:
	object 106, 3, 0, 0, AnimScript_21906, MotionScript_10008, CoconutProperties
LevelObject_1cd10:
	object 107, 1, 0, 0, AnimScript_21906, MotionScript_10008, CoconutProperties
LevelObject_1cd1a:
	object 111, 3, 0, 0, AnimScript_Coner, MotionScript_1170f, ConerProperties
LevelObject_1cd24:
	object 111, 3, 20, 0, AnimScript_Coner, MotionScript_1170f, ConerProperties
LevelObject_1cd2e:
	object 111, 3, 40, 0, AnimScript_Coner, MotionScript_1170f, ConerProperties

LevelObject_1cd38:
	object 1, 13, 8, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 1
LevelObject_1cd43:
	object 2, 9, 0, 0, AnimScript_217d7, MotionScript_10008, StandardEnemyProperties
LevelObject_1cd4d:
	object 5, 12, 0, 0, AnimScript_21796, MotionScript_10008, GlunkProperties
LevelObject_1cd57:
	object 5, 9, 0, 0, AnimScript_217c8, MotionScript_10008, StandardEnemyProperties
LevelObject_1cd61:
	object 10, 5, 0, 0, AnimScript_2186a, MotionScript_1059a, StandardEnemyProperties
LevelObject_1cd6b:
	object 15, 2, 0, 0, AnimScript_21906, MotionScript_10008, CoconutProperties
LevelObject_1cd75:
	object 16, 12, 0, 0, AnimScript_217c8, MotionScript_1042f, StandardEnemyProperties
LevelObject_1cd7f:
	object 23, 4, 0, 0, AnimScript_217fe, MotionScript_10444, StandardEnemyProperties
LevelObject_1cd89:
	object 26, 3, 0, 0, AnimScript_217fe, MotionScript_10444, StandardEnemyProperties
LevelObject_1cd93:
	object 30, 2, 8, 3, AnimScript_217fe, MotionScript_10444, StandardEnemyProperties
LevelObject_1cd9d:
	object 21, 12, 0, 0, AnimScript_217e9, MotionScript_10008, StandardEnemyProperties
LevelObject_1cda7:
	object 24, 11, 0, 0, AnimScript_217e9, MotionScript_10008, StandardEnemyProperties
LevelObject_1cdb1:
	object 35, 8, 0, 0, AnimScript_20572, MotionScript_1048f, GordoProperties
LevelObject_1cdbb:
	object 40, 1, 8, 8, AnimScript_217fe, MotionScript_10444, StandardEnemyProperties
LevelObject_1cdc5:
	object 41, 5, 8, 0, AnimScript_218e2, MotionScript_103ff, StandardEnemyProperties
LevelObject_1cdcf:
	object 43, 9, 0, 0, AnimScript_216f9, MotionScript_10008, BlipperProperties
LevelObject_1cdd9:
	object 46, 2, 8, 0, AnimScript_20934, MotionScript_10008, MaximTomatoProperties, 2

LevelObject_1cde4:
	object 1, 2, 0, 0, AnimScript_21911, MotionScript_10008, CoconutProperties
LevelObject_1cdee:
	object 2, 3, 0, 0, AnimScript_21911, MotionScript_10008, CoconutProperties
LevelObject_1cdf8:
	object 6, 3, 0, 0, AnimScript_21911, MotionScript_10008, CoconutProperties
LevelObject_1ce02:
	object 7, 1, 0, 0, AnimScript_21911, MotionScript_10008, CoconutProperties
LevelObject_1ce0c:
	object 15, 7, 0, 0, AnimScript_2187f, MotionScript_117dd, BlipperProperties
LevelObject_1ce16:
	object 6, 19, 8, 0, AnimScript_20946, MotionScript_10008, OneUpProperties, 3

LevelObject_1ce21:
	object 10, 7, 0, 0, AnimScript_2187f, MotionScript_117a7, BlipperProperties
LevelObject_1ce2b:
	object 14, 7, 0, 0, AnimScript_2187f, MotionScript_117b3, BlipperProperties
LevelObject_1ce35:
	object 15, 2, 8, 0, AnimScript_SpicyFood, MotionScript_10008, SpicyFoodProperties, 8
LevelObject_1ce40:
	object 18, 2, 0, 0, AnimScript_218e2, MotionScript_103ff, StandardEnemyProperties
LevelObject_1ce4a:
	object 20, 2, 0, 0, AnimScript_StationaryShotzo, MotionScript_10008, ShotzoProperties
LevelObject_1ce54:
	object 28, 1, 0, 0, AnimScript_218b5, MotionScript_11920, StandardEnemyProperties
LevelObject_1ce5e:
	object 29, 2, 3, 0, AnimScript_218b5, MotionScript_11920, StandardEnemyProperties
LevelObject_1ce68:
	object 30, 7, 0, 0, AnimScript_2187f, MotionScript_117a7, BlipperProperties
LevelObject_1ce72:
	object 38, 0, -48, 7, AnimScript_20647, MotionScript_105bb, StandardEnemyProperties
LevelObject_1ce7c:
	object 38, 0, -128, 7, AnimScript_20650, MotionScript_10602, StandardEnemyProperties
LevelObject_1ce86:
	object 39, 5, 0, 0, AnimScript_20671, MotionScript_10008, ShotzoProperties
LevelObject_1ce90:
	object 44, 3, 0, 0, AnimScript_2063b, MotionScript_10639, StandardEnemyProperties
LevelObject_1ce9a:
	object 46, 7, 0, 0, AnimScript_2187f, MotionScript_117dd, BlipperProperties
LevelObject_1cea4:
	object 49, 7, -8, 7, AnimScript_218fd, MotionScript_11987, StandardEnemyProperties
LevelObject_1ceae:
	object 49, 7, -128, 7, AnimScript_218fd, MotionScript_11987, StandardEnemyProperties
LevelObject_1ceb8:
	object 51, 5, 0, 0, AnimScript_2186a, MotionScript_1059a, StandardEnemyProperties
LevelObject_1cec2:
	object 54, 4, 0, 0, AnimScript_20671, MotionScript_10008, ShotzoProperties
LevelObject_1cecc:
	object 60, 4, 0, 0, AnimScript_216c2, MotionScript_1172d, BlipperProperties
LevelObject_1ced6:
	object 68, 2, 0, 0, AnimScript_2068c, MotionScript_10008, ShotzoProperties

LevelObject_1cee0:
	object 1, 4, 0, 0, AnimScript_20937, MotionScript_10008, OneUpProperties, 4
LevelObject_1ceeb:
	object 2, 4, 0, 0, AnimScript_2092b, MotionScript_10008, EnergyDrinkProperties, 5

LevelObject_1cef6:
	object 6, 2, 8, 0, AnimScript_2192e, MotionScript_10008, Data_3421
LevelObject_1cf00:
	object 5, 21, 8, 0, AnimScript_WarpStar, MotionScript_WarpStar, WarpStarFloorProperties, 6

LevelObject_1cf0b:
	object 4, 3, 8, -8, AnimScript_21943, MotionScript_10008, Data_3421

LevelObject_1cf15:
	object 13, 5, 0, 0, AnimScript_Coner, MotionScript_1170f, ConerProperties
LevelObject_1cf1f:
	object 14, 2, 0, 0, AnimScript_217d7, MotionScript_10414, StandardEnemyProperties
LevelObject_1cf29:
	object 10, 3, 0, 0, AnimScript_217d7, MotionScript_10414, StandardEnemyProperties
LevelObject_1cf33:
	object 24, 4, 8, 0, AnimScript_MintLeaf, MotionScript_10444, MintLeafProperties, 7
LevelObject_1cf3e:
	object 38, 1, 0, -5, AnimScript_2195e, MotionScript_Kaboola, KaboolaProperties

ObjectList_BubblyClouds0_X:
	dbw $00, NULL
	dbw $0b, LevelObject_1d033
	dbw $0e, LevelObject_1d0c9
	dbw $13, LevelObject_1d001
	dbw $17, LevelObject_1cff7
	dbw $1b, LevelObject_1d03d
	dbw $1b, LevelObject_1d051
	dbw $23, LevelObject_1d047
	dbw $24, LevelObject_1d083
	dbw $25, LevelObject_1d00b
	dbw $2c, LevelObject_1cfc5
	dbw $2d, LevelObject_1cfcf
	dbw $2f, LevelObject_1cfd9
	dbw $30, LevelObject_1cfe3
	dbw $32, LevelObject_1cfed
	dbw $36, LevelObject_1cfa7
	dbw $3c, LevelObject_1cfb1
	dbw $3c, LevelObject_1cfbb
	dbw $41, LevelObject_1d0a1
	dbw $47, LevelObject_1d097
	dbw $4b, LevelObject_1d08d
	dbw $4f, LevelObject_1d0b5
	dbw $53, LevelObject_1d0bf
	dbw $53, LevelObject_1d05b
	dbw $55, LevelObject_1d0ab
	dbw $5f, LevelObject_1d015
	dbw $62, LevelObject_1d01f
	dbw $5f, LevelObject_1d065
	dbw $60, LevelObject_1d06f
	dbw $60, LevelObject_1d079
	db $ff ; end

ObjectList_BubblyClouds0_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1cfa7:
	object 54, 0, 0, 0, AnimScript_21e5d, MotionScript_11ed9, StandardEnemyProperties
LevelObject_1cfb1:
	object 58, 2, 0, 0, AnimScript_21e5d, MotionScript_11ed9, StandardEnemyProperties
LevelObject_1cfbb:
	object 60, 0, 0, 0, AnimScript_21e5d, MotionScript_11ea6, StandardEnemyProperties
LevelObject_1cfc5:
	object 44, 7, -64, 0, AnimScript_Scarfy, MotionScript_11c94, ScarfyProperties
LevelObject_1cfcf:
	object 45, 1, -56, 0, AnimScript_Scarfy, MotionScript_11ca3, ScarfyProperties
LevelObject_1cfd9:
	object 47, 7, -64, 0, AnimScript_Scarfy, MotionScript_11c94, ScarfyProperties
LevelObject_1cfe3:
	object 48, 6, 0, 0, AnimScript_Scarfy, MotionScript_11c94, ScarfyProperties
LevelObject_1cfed:
	object 50, 0, -64, 0, AnimScript_Scarfy, MotionScript_11ca6, ScarfyProperties
LevelObject_1cff7:
	object 23, 3, 8, 0, AnimScript_StationaryShotzo, MotionScript_10008, ShotzoProperties
LevelObject_1d001:
	object 19, 0, -64, 0, AnimScript_21b23, MotionScript_11643, StandardEnemyProperties
LevelObject_1d00b:
	object 37, 4, -32, -8, AnimScript_21b1a, MotionScript_11be3, StandardEnemyProperties
LevelObject_1d015:
	object 95, 8, -112, 0, AnimScript_21b23, MotionScript_11646, StandardEnemyProperties
LevelObject_1d01f:
	object 98, 8, -96, 0, AnimScript_21b23, MotionScript_11646, StandardEnemyProperties
; unreferenced
	object 76, 3, 0, 0, AnimScript_205e1, MotionScript_102ce, StandardEnemyGravityProperties
LevelObject_1d033:
	object 12, 2, 0, 0, AnimScript_205e1, MotionScript_102ce, StandardEnemyGravityProperties
LevelObject_1d03d:
	object 27, 3, 8, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1d047:
	object 35, 6, 0, 0, AnimScript_21be9, MotionScript_11c25, StandardEnemyProperties
LevelObject_1d051:
	object 27, 1, 0, 0, AnimScript_20647, MotionScript_104aa, StandardEnemyProperties
LevelObject_1d05b:
	object 83, 1, 0, 0, AnimScript_20647, MotionScript_105e5, StandardEnemyProperties
LevelObject_1d065:
	object 95, 3, 0, 0, AnimScript_20647, MotionScript_1067d, StandardEnemyProperties
LevelObject_1d06f:
	object 96, 1, 0, 0, AnimScript_20647, MotionScript_1067d, StandardEnemyProperties
LevelObject_1d079:
	object 96, 5, 0, 0, AnimScript_20647, MotionScript_1067d, StandardEnemyProperties
LevelObject_1d083:
	object 36, 0, -64, 0, AnimScript_20650, MotionScript_105bb, StandardEnemyProperties
LevelObject_1d08d:
	object 75, 0, 0, 0, AnimScript_21d7c, MotionScript_11dd5, ParasolWaddleDeeProperties
LevelObject_1d097:
	object 71, 1, 0, 0, AnimScript_21d7f, MotionScript_11dfd, ParasolWaddleDeeProperties
LevelObject_1d0a1:
	object 65, 1, 0, 0, AnimScript_21d7c, MotionScript_11dd5, ParasolWaddleDeeProperties
LevelObject_1d0ab:
	object 85, 1, 0, 0, AnimScript_21595, MotionScript_11e5a, ShotzoProperties
LevelObject_1d0b5:
	object 79, 0, 0, 0, AnimScript_21d7f, MotionScript_11dfd, ParasolWaddleDeeProperties
LevelObject_1d0bf:
	object 83, 1, 0, 0, AnimScript_21d7c, MotionScript_11dd5, ParasolWaddleDeeProperties
LevelObject_1d0c9:
	object 14, 0, 8, 0, AnimScript_20572, MotionScript_10508, GordoProperties

ObjectList_BubblyClouds1_X:
	dbw $00, NULL
	dbw $09, LevelObject_1d193
	dbw $0b, LevelObject_1d1bb
	dbw $10, LevelObject_1d19d
	dbw $14, LevelObject_1d16b
	dbw $19, LevelObject_1d175
	dbw $20, LevelObject_1d1a7
	dbw $2a, LevelObject_1d125
	dbw $2b, LevelObject_1d139
	dbw $2c, LevelObject_1d12f
	dbw $2c, LevelObject_1d143
	dbw $2c, LevelObject_1d14d
	dbw $34, LevelObject_1d111
	dbw $36, LevelObject_1d11b
	dbw $37, LevelObject_1d17f
	dbw $39, LevelObject_1d189
	dbw $3c, LevelObject_1d157
	dbw $3e, LevelObject_1d161
	dbw $42, LevelObject_1d1b1
	db $ff ; end

ObjectList_BubblyClouds1_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1d111:
	object 52, 7, -48, 0, AnimScript_Scarfy, MotionScript_11c91, ScarfyProperties
LevelObject_1d11b:
	object 54, 7, -48, 0, AnimScript_Scarfy, MotionScript_11c91, ScarfyProperties
LevelObject_1d125:
	object 42, 0, 0, 0, AnimScript_21b08, MotionScript_11baa, PuffyProperties
LevelObject_1d12f:
	object 44, 0, 0, 0, AnimScript_21b08, MotionScript_11baa, PuffyProperties
LevelObject_1d139:
	object 43, 4, 32, 0, AnimScript_21b44, MotionScript_10008, StandardEnemyProperties
LevelObject_1d143:
	object 44, 2, 32, 8, AnimScript_21b4f, MotionScript_10008, StandardEnemyProperties
LevelObject_1d14d:
	object 44, 5, 32, 8, AnimScript_21b5d, MotionScript_10008, StandardEnemyProperties
LevelObject_1d157:
	object 60, 1, 0, 0, AnimScript_213d3, MotionScript_114cd, StandardEnemyProperties
LevelObject_1d161:
	object 62, 3, 0, 0, AnimScript_213d3, MotionScript_114cd, StandardEnemyProperties
LevelObject_1d16b:
	object 20, 4, 0, 0, AnimScript_21fb7, MotionScript_10008, StandardEnemyProperties
LevelObject_1d175:
	object 25, 5, 0, 0, AnimScript_21fb7, MotionScript_10008, StandardEnemyProperties
LevelObject_1d17f:
	object 55, 5, 0, 0, AnimScript_21b7d, MotionScript_102ce, StandardEnemyProperties
LevelObject_1d189:
	object 57, 5, 0, 0, AnimScript_21b7d, MotionScript_102ce, StandardEnemyProperties
LevelObject_1d193:
	object 9, 6, 0, 0, AnimScript_21ea3, MotionScript_10008, SirKibbleProperties
LevelObject_1d19d:
	object 16, 6, 0, 0, AnimScript_21eae, MotionScript_10008, SirKibbleProperties
LevelObject_1d1a7:
	object 32, 5, 0, 0, AnimScript_21e91, MotionScript_10008, SirKibbleProperties
LevelObject_1d1b1:
	object 66, 3, -8, 0, AnimScript_21e91, MotionScript_10008, SirKibbleProperties
LevelObject_1d1bb:
	object 11, 4, 0, 0, AnimScript_21e91, MotionScript_10008, SirKibbleProperties

ObjectList_BubblyClouds2_X:
	dbw $00, NULL
	db $ff ; end

ObjectList_BubblyClouds2_Y:
	dbw $00, NULL
	dbw $04, LevelObject_1d1f1
	dbw $06, LevelObject_1d237
	dbw $07, LevelObject_1d25f
	dbw $08, LevelObject_1d255
	dbw $0b, LevelObject_1d20f
	dbw $0e, LevelObject_1d219
	dbw $12, LevelObject_1d223
	dbw $12, LevelObject_1d22d
	dbw $14, LevelObject_1d205
	dbw $15, LevelObject_1d1fb
	dbw $19, LevelObject_1d24b
	dbw $1d, LevelObject_1d241
	db $ff ; end

LevelObject_1d1f1:
	object 3, 4, 0, 0, AnimScript_21e91, MotionScript_10008, SirKibbleProperties
LevelObject_1d1fb:
	object 14, 21, 0, 0, AnimScript_21e5d, MotionScript_11e7f, StandardEnemyProperties
LevelObject_1d205:
	object 10, 20, 0, 0, AnimScript_21e5d, MotionScript_11e7f, StandardEnemyProperties
LevelObject_1d20f:
	object 15, 11, 8, 0, AnimScript_21e5d, MotionScript_11ea6, StandardEnemyProperties
LevelObject_1d219:
	object 10, 14, -2, 7, AnimScript_21e5d, MotionScript_11e82, StandardEnemyProperties
LevelObject_1d223:
	object 15, 18, 8, 0, AnimScript_21e5d, MotionScript_11ef1, StandardEnemyProperties
LevelObject_1d22d:
	object 8, 18, 0, 0, AnimScript_21be9, MotionScript_11c25, StandardEnemyProperties
LevelObject_1d237:
	object 8, 6, 0, 0, AnimScript_21b32, MotionScript_11bfb, GordoProperties
LevelObject_1d241:
	object 8, 29, 0, 0, AnimScript_21be9, MotionScript_11c25, StandardEnemyProperties
LevelObject_1d24b:
	object 6, 25, 0, 0, AnimScript_21b23, MotionScript_11bef, StandardEnemyProperties
LevelObject_1d255:
	object 15, 8, 0, 0, AnimScript_21b23, MotionScript_11bef, StandardEnemyProperties
LevelObject_1d25f:
	object 17, 7, 0, 0, AnimScript_Scarfy, MotionScript_11c94, ScarfyProperties

ObjectList_BubblyClouds3_X:
	dbw $00, NULL
	dbw $03, LevelObject_1d333
	dbw $0f, LevelObject_1d349
	dbw $12, LevelObject_1d315
	dbw $17, LevelObject_1d31f
	dbw $1c, LevelObject_1d33e
	dbw $1c, LevelObject_1d329
	dbw $26, LevelObject_1d2c5
	dbw $28, LevelObject_1d354
	dbw $29, LevelObject_1d2cf
	dbw $2c, LevelObject_1d2f7
	dbw $2c, LevelObject_1d301
	dbw $2c, LevelObject_1d30b
	dbw $31, LevelObject_1d2e3
	dbw $31, LevelObject_1d2d9
	dbw $31, LevelObject_1d2ed
	db $ff ; end

ObjectList_BubblyClouds3_Y:
	dbw $00, NULL
	dbw $00, LevelObject_1d2c5
	dbw $01, LevelObject_1d31f
	dbw $03, LevelObject_1d2d9
	dbw $03, LevelObject_1d33e
	dbw $05, LevelObject_1d2e3
	dbw $04, LevelObject_1d315
	dbw $05, LevelObject_1d349
	dbw $07, LevelObject_1d2ed
	dbw $07, LevelObject_1d329
	dbw $08, LevelObject_1d354
	dbw $09, LevelObject_1d333
	dbw $0a, LevelObject_1d2cf
	dbw $0a, LevelObject_1d31f
	db $ff ; end

LevelObject_1d2c5:
	object 38, 0, -64, 0, AnimScript_21b08, MotionScript_11b6c, PuffyProperties
LevelObject_1d2cf:
	object 41, 10, -64, 0, AnimScript_21b08, MotionScript_11b63, PuffyProperties
LevelObject_1d2d9:
	object 49, 3, 0, 0, AnimScript_20647, MotionScript_104aa, StandardEnemyProperties
LevelObject_1d2e3:
	object 49, 5, -32, 0, AnimScript_20647, MotionScript_104aa, StandardEnemyProperties
LevelObject_1d2ed:
	object 49, 7, 0, 0, AnimScript_20647, MotionScript_104aa, StandardEnemyProperties
LevelObject_1d2f7:
	object 44, 1, 0, 0, AnimScript_21b23, MotionScript_11bd4, StandardEnemyProperties
LevelObject_1d301:
	object 44, 3, 0, 0, AnimScript_21b23, MotionScript_11bd4, StandardEnemyProperties
LevelObject_1d30b:
	object 44, 5, 0, 0, AnimScript_21b23, MotionScript_11bd4, StandardEnemyProperties
LevelObject_1d315:
	object 18, 4, 0, 0, AnimScript_21e5d, MotionScript_11ed9, StandardEnemyProperties
LevelObject_1d31f:
	object 23, 1, 0, 0, AnimScript_21e5d, MotionScript_11ea6, StandardEnemyProperties
LevelObject_1d329:
	object 28, 7, 0, 0, AnimScript_21e5d, MotionScript_11ed9, StandardEnemyProperties
LevelObject_1d333:
	object 3, 9, 0, 0, AnimScript_MintLeaf, MotionScript_10008, MintLeafProperties, 0
LevelObject_1d33e:
	object 28, 3, 0, 0, AnimScript_20934, MotionScript_10008, MaximTomatoProperties, 1
LevelObject_1d349:
	object 15, 5, 0, 0, AnimScript_EnergyDrink, MotionScript_10008, EnergyDrinkProperties, 2
LevelObject_1d354:
	object 40, 8, 0, 0, AnimScript_20946, MotionScript_10008, OneUpProperties, 3

ObjectList_BubblyClouds5_X:
	dbw $00, NULL
	dbw $01, LevelObject_1d3f3
	dbw $04, LevelObject_1d3bf
	dbw $19, LevelObject_1d3e9
	dbw $1c, LevelObject_1d3df
	dbw $1c, LevelObject_1d3d4
	dbw $1d, LevelObject_1d3b4
	dbw $1f, LevelObject_1d3a9
	dbw $24, LevelObject_1d408
	dbw $26, LevelObject_1d412
	dbw $2a, LevelObject_1d3fe
	dbw $30, LevelObject_1d3ca
	db $ff ; end

ObjectList_BubblyClouds5_Y:
	dbw $00, NULL
	dbw $00, LevelObject_1d3ca
	dbw $04, LevelObject_1d412
	dbw $04, LevelObject_1d3bf
	dbw $04, LevelObject_1d3d4
	dbw $05, LevelObject_1d3df
	dbw $05, LevelObject_1d3e9
	dbw $06, LevelObject_1d3fe
	dbw $06, LevelObject_1d408
	dbw $08, LevelObject_1d3b4
	dbw $08, LevelObject_1d3f3
	dbw $0a, LevelObject_1d3a9
	db $ff ; end

LevelObject_1d3a9:
	object 31, 10, 0, 0, AnimScript_20934, MotionScript_10008, MaximTomatoProperties, 4
LevelObject_1d3b4:
	object 29, 8, 0, 0, AnimScript_2092b, MotionScript_10008, EnergyDrinkProperties, 5
LevelObject_1d3bf:
	object 4, 4, 0, -8, AnimScript_Waterfall, MotionScript_Waterfall, Data_3421, 6
LevelObject_1d3ca:
	object 47, 0, 0, 0, AnimScript_Scarfy, MotionScript_11ca6, ScarfyProperties
LevelObject_1d3d4:
	object 28, 4, 0, 0, AnimScript_2092b, MotionScript_10008, EnergyDrinkProperties, 50
LevelObject_1d3df:
	object 28, 5, 10, -10, AnimScript_20572, MotionScript_1048f, GordoProperties
LevelObject_1d3e9:
	object 25, 5, 10, -10, AnimScript_20572, MotionScript_1048f, GordoProperties
LevelObject_1d3f3:
	object 1, 8, 0, 0, AnimScript_MintLeaf, MotionScript_10008, MintLeafProperties, 7
LevelObject_1d3fe:
	object 42, 6, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1d408:
	object 36, 6, 0, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
LevelObject_1d412:
	object 38, 4, 8, 0, AnimScript_205ae, MotionScript_103ff, StandardEnemyProperties
; unreferenced
	object 18, 3, 8, 0, AnimScript_21587, MotionScript_10008, ShotzoProperties

ObjectList_BubblyClouds6_X:
	dbw $00, NULL
	dbw $0a, LevelObject_1d48f
	dbw $10, LevelObject_1d49a
	dbw $13, LevelObject_1d449
	dbw $1d, LevelObject_1d453
	dbw $27, LevelObject_1d45d
	dbw $31, LevelObject_1d467
	dbw $3b, LevelObject_1d471
	dbw $45, LevelObject_1d47b
	dbw $4f, LevelObject_1d485
	db $ff ; end

ObjectList_BubblyClouds6_Y:
	dbw $00, NULL
	db $ff ; end

LevelObject_1d449:
	object 19, 0, 0, 0, AnimScript_FallingStarSpawner, MotionScript_10008, Data_3421
LevelObject_1d453:
	object 29, 0, 0, 0, AnimScript_FallingStarSpawner, MotionScript_10008, Data_3421
LevelObject_1d45d:
	object 39, 0, 0, 0, AnimScript_FallingStarSpawner, MotionScript_10008, Data_3421
LevelObject_1d467:
	object 49, 0, 0, 0, AnimScript_FallingStarSpawner, MotionScript_10008, Data_3421
LevelObject_1d471:
	object 59, 0, 0, 0, AnimScript_FallingStarSpawner, MotionScript_10008, Data_3421
LevelObject_1d47b:
	object 69, 0, 0, 0, AnimScript_FallingStarSpawner, MotionScript_10008, Data_3421
LevelObject_1d485:
	object 79, 0, 0, 0, AnimScript_FallingStarSpawner, MotionScript_10008, Data_3421
LevelObject_1d48f:
	object 10, 6, 0, 0, AnimScript_SpicyFood, MotionScript_10008, SpicyFoodProperties, 8
LevelObject_1d49a:
	object 16, 2, 0, 0, AnimScript_220f0, MotionScript_10008, OneUpProperties, 60

ObjectList_BubblyClouds7_X:
	dbw $00, NULL
	dbw $04, LevelObject_1d505
	dbw $04, LevelObject_1d4fb
	dbw $06, LevelObject_1d50f
	dbw $06, LevelObject_1d523
	dbw $09, LevelObject_1d519
	dbw $0a, LevelObject_1d52d
	dbw $0a, LevelObject_1d537
	db $ff ; end

ObjectList_BubblyClouds7_Y:
	dbw $00, NULL
	dbw $02, LevelObject_1d519
	dbw $02, LevelObject_1d4fb
	dbw $05, LevelObject_1d523
	dbw $0e, LevelObject_1d4f1
	dbw $0f, LevelObject_1d505
	dbw $10, LevelObject_1d537
	dbw $11, LevelObject_1d50f
	dbw $18, LevelObject_1d4dd
	dbw $1d, LevelObject_1d52d
	db $ff ; end

LevelObject_1d4dd:
	object 2, 24, 0, 0, AnimScript_21b11, MotionScript_11b93, PuffyProperties
; unreferenced
	object 14, 10, 0, 0, AnimScript_21b08, MotionScript_11baa, PuffyProperties
LevelObject_1d4f1:
	object 0, 14, 0, 0, AnimScript_21b11, MotionScript_11bbf, PuffyProperties
LevelObject_1d4fb:
	object 4, 2, 0, 0, AnimScript_21d7c, MotionScript_11de9, ParasolWaddleDeeProperties
LevelObject_1d505:
	object 4, 15, 0, 0, AnimScript_21d7c, MotionScript_11dd5, ParasolWaddleDeeProperties
LevelObject_1d50f:
	object 6, 17, 0, 0, AnimScript_21d7c, MotionScript_11dd5, ParasolWaddleDeeProperties
LevelObject_1d519:
	object 9, 2, 0, 0, AnimScript_21d7f, MotionScript_11e11, ParasolWaddleDeeProperties
LevelObject_1d523:
	object 6, 5, 8, 0, AnimScript_21d7f, MotionScript_11e11, ParasolWaddleDeeProperties
LevelObject_1d52d:
	object 10, 29, 0, 0, AnimScript_21e9d, MotionScript_10008, SirKibbleProperties
LevelObject_1d537:
	object 10, 16, 0, 46, AnimScript_21b44, MotionScript_10008, StandardEnemyProperties

ObjectList_BubblyClouds8_X:
	dbw $00, NULL
	db $ff ; end

ObjectList_BubblyClouds8_Y:
	dbw $00, NULL
	dbw $20, LevelObject_1d558
	dbw $37, LevelObject_1d563
	dbw $3a, LevelObject_1d579
	dbw $51, LevelObject_1d56e
	dbw $55, LevelObject_1d584
	db $ff ; end

LevelObject_1d558:
	object 3, 32, 0, 0, AnimScript_20934, MotionScript_11f99, MaximTomatoProperties, 17
LevelObject_1d563:
	object 8, 55, 0, 0, AnimScript_20934, MotionScript_11f99, MaximTomatoProperties, 24
LevelObject_1d56e:
	object 1, 81, 0, 0, AnimScript_20934, MotionScript_11f99, MaximTomatoProperties, 32
LevelObject_1d579:
	object 2, 58, 0, 0, AnimScript_20946, MotionScript_11fad, OneUpProperties, 25
LevelObject_1d584:
	object 8, 85, 0, 0, AnimScript_20946, MotionScript_11fad, OneUpProperties, 36

ObjectList_TitleScreen:
	dbw $00, NULL
	dbw $00, LevelObject_1d5b0
	dbw $00, LevelObject_1d5a6
	dbw $04, LevelObject_1d59c
	db $ff ; end

LevelObject_1d59c:
	object 4, 3, 10, -26, AnimScript_TitleScreenWarpStarKirby, MotionScript_TitleScreenWarpStarKirby, Data_3425
LevelObject_1d5a6:
IF DEF(_KDL_JP) || DEF(_KDL_JP11)
	object 0, 6, -16, -8, AnimScript_TitleScreenKirbySpawner, MotionScript_10008, Data_3425
ELSE
	object 0, 7, -16, -8, AnimScript_TitleScreenKirbySpawner, MotionScript_10008, Data_3425
ENDC
LevelObject_1d5b0:
	object 0, 0, 0, 0, AnimScript_TitleScreenStarSpawner, MotionScript_10008, Data_3425

ObjectList_SoundTest:
	dbw $00, NULL
	dbw $06, Data_1d777
	dbw $07, Data_1d781
	db $ff ; end

ObjectList_Epilogue_KirbyDeflate:
	dbw $00, NULL
	dbw $05, LevelObject_1d6e1
	dbw $05, LevelObject_1d6eb
	dbw $05, LevelObject_1d6f5
	dbw $05, LevelObject_1d6ff
	dbw $05, LevelObject_1d709
	dbw $05, LevelObject_1d713
	dbw $05, LevelObject_1d71d
	dbw $05, LevelObject_1d727
	db $ff ; end

ObjectList_Epilogue_ByeBye:
	dbw $00, NULL
	dbw $01, LevelObject_1d763
	dbw $03, LevelObject_1d76d
	dbw $04, LevelObject_1d731
	dbw $04, LevelObject_1d73b
	dbw $05, LevelObject_1d745
	dbw $07, LevelObject_1d74f
	dbw $09, LevelObject_1d759
	db $ff ; end

ObjectList_GameOver:
	dbw $00, NULL
	db $ff ; end

ObjectList_Epilogue_DededeLaunch:
	dbw $00, NULL
	dbw $05, Data_1d655
	dbw $06, Data_1d64b
	db $ff ; end

ObjectList_Epilogue_KirbyDance:
	dbw $00, NULL
	dbw $01, LevelObject_1d687
	dbw $02, LevelObject_1d67d
	dbw $04, LevelObject_1d691
	dbw $04, LevelObject_1d65f
	dbw $06, LevelObject_1d673
	dbw $07, LevelObject_1d669
	db $ff ; end

ObjectList_Epilogue_KirbyInflate:
	dbw $00, NULL
	dbw $05, LevelObject_1d69b
	db $ff ; end

ObjectList_Epilogue_FallingFood:
	dbw $00, NULL
	dbw $03, LevelObject_1d6a5
	dbw $05, LevelObject_1d6af
	dbw $05, LevelObject_1d6b9
	db $ff ; end

ObjectList_Credits:
	dbw $00, NULL
	dbw $01, LevelObject_1d6c3
	dbw $04, LevelObject_1d6cd
	dbw $07, LevelObject_1d6d7
	db $ff ; end

ObjectList_Continue:
	dbw $00, NULL
	dbw $02, LevelObject_1d8e5
	dbw $03, LevelObject_1d8ef
	dbw $04, LevelObject_1d8db
	db $ff ; end

Data_1d64b:
	object $06, $06, $f8, $00, AnimScript_224e4, MotionScript_124b9, Data_3425
Data_1d655:
	object $05, $06, $fb, $f8, AnimScript_224af, MotionScript_12491, Data_3425

LevelObject_1d65f:
	object 4, 0, 8, 8, AnimScript_224ea, MotionScript_124c5, Data_3425
LevelObject_1d669:
	object 7, 1, 12, 11, AnimScript_224f2, MotionScript_124cb, Data_3425
LevelObject_1d673:
	object 6, 3, 8, 8, AnimScript_224fa, MotionScript_124d1, Data_3425
LevelObject_1d67d:
	object 2, 3, 8, 8, AnimScript_22502, MotionScript_124d7, Data_3425
LevelObject_1d687:
	object 1, 1, 4, 11, AnimScript_2250a, MotionScript_124bf, Data_3425
LevelObject_1d691:
	object 4, 6, 8, 0, AnimScript_22548, MotionScript_12591, Data_3425

LevelObject_1d69b:
	object 5, 6, -5, -8, AnimScript_224bf, MotionScript_124a0, Data_3425

LevelObject_1d6a5:
	object 3, 0, -4, 0, AnimScript_22570, MotionScript_125b5, Data_3425
LevelObject_1d6af:
	object 5, 0, -4, 0, AnimScript_22579, MotionScript_125b5, Data_3425
LevelObject_1d6b9:
	object 5, 0, -4, 0, AnimScript_22582, MotionScript_10008, Data_3425

LevelObject_1d6c3:
	object 1, 1, 0, 0, AnimScript_2273e, MotionScript_10008, Data_3425
LevelObject_1d6cd:
	object 4, 4, 0, 4, AnimScript_22613, MotionScript_10008, Data_3425
LevelObject_1d6d7:
	object 7, 3, 0, 0, AnimScript_22610, MotionScript_126cd, Data_3425

LevelObject_1d6e1:
	object 5, 3, -8, 8, AnimScript_22616, MotionScript_126e7, Data_3425
LevelObject_1d6eb:
	object 5, 2, -8, 0, AnimScript_22620, MotionScript_126fc, Data_3425
LevelObject_1d6f5:
	object 5, 2, -8, 0, AnimScript_22645, MotionScript_12715, Data_3425
LevelObject_1d6ff:
	object 5, 2, -8, 0, AnimScript_22645, MotionScript_1272d, Data_3425
LevelObject_1d709:
	object 5, 2, -8, 0, AnimScript_22645, MotionScript_12745, Data_3425
LevelObject_1d713:
	object 5, 2, -8, 0, AnimScript_22645, MotionScript_1275d, Data_3425
LevelObject_1d71d:
	object 5, 2, -8, 0, AnimScript_22645, MotionScript_1276f, Data_3425
LevelObject_1d727:
	object 5, 5, -8, 8, AnimScript_2264b, MotionScript_12781, Data_3425

LevelObject_1d731:
	object 4, 0, 4, 0, AnimScript_2265f, MotionScript_127d9, Data_3425
LevelObject_1d73b:
	object 4, 0, 8, 0, AnimScript_22688, MotionScript_10008, Data_3425
LevelObject_1d745:
	object 5, 7, -8, 7, AnimScript_2264e, MotionScript_127c1, Data_3425
LevelObject_1d74f:
	object 7, 7, -8, 7, AnimScript_22651, MotionScript_127c4, Data_3425
LevelObject_1d759:
	object 9, 7, -8, 7, AnimScript_22654, MotionScript_127ca, Data_3425
LevelObject_1d763:
	object 1, 7, -8, 7, AnimScript_22657, MotionScript_127cd, Data_3425
LevelObject_1d76d:
	object 3, 7, -8, 7, AnimScript_2265a, MotionScript_127d0, Data_3425

Data_1d777:
	object $06, $06, $00, $00, AnimScript_SoundTestNote, MotionScript_SoundTestNote, Data_3425
Data_1d781:
	object $08, $07, $f0, $f8, AnimScript_SoundTestKirbyEyes, MotionScript_10008, Data_3425

ObjectList_GreenGreensIntro:
	dbw $00, NULL
	dbw $01, LevelObject_1d7eb
	dbw $05, LevelObject_1d7f5
	dbw $08, LevelObject_1d831
	dbw $09, LevelObject_1d7ff
	dbw $0a, LevelObject_1d809
	dbw $0b, LevelObject_1d81d
	dbw $0b, LevelObject_1d827
	dbw $0c, LevelObject_1d813
	db $ff ; end

ObjectList_CastleLololoIntro:
	dbw $00, NULL
	dbw $01, LevelObject_1d83b
	dbw $02, LevelObject_1d845
	dbw $03, LevelObject_1d84f
	dbw $04, LevelObject_1d859
	dbw $05, LevelObject_1d863
	dbw $05, LevelObject_1d86d
	db $ff ; end

ObjectList_FloatIslandsIntro:
	dbw $00, NULL
	dbw $01, LevelObject_1d877
	dbw $06, LevelObject_1d881
	dbw $06, LevelObject_1d88b
	db $ff ; end

ObjectList_BubblyCloudsIntro:
	dbw $00, NULL
	dbw $05, LevelObject_1d895
	dbw $05, LevelObject_1d89f
	db $ff ; end

ObjectList_MtDededeIntro:
	dbw $00, NULL
	dbw $00, LevelObject_1d8a9
	dbw $00, LevelObject_1d8d1
	dbw $04, LevelObject_1d8b3
	dbw $04, LevelObject_1d8bd
	dbw $07, LevelObject_1d8c7
	db $ff ; end

ObjectList_Null:
ObjectList_SceneGreenGreensEnemies1:
ObjectList_SceneGreenGreensEnemies2:
ObjectList_SceneGreenGreensEnemies3:
ObjectList_SceneCastleLololoEnemies1:
ObjectList_SceneCastleLololoEnemies2:
ObjectList_SceneFloatIslandsEnemies1:
ObjectList_SceneFloatIslandsEnemies2:
ObjectList_SceneBubbleCloudsEnemies1:
ObjectList_SceneBubbleCloudsEnemies2:
ObjectList_SceneGreenGreensEnemies4:
ObjectList_SceneCastleLololoEnemies3:
ObjectList_SceneFloatIslandsEnemies3:
ObjectList_SceneBubbleCloudsEnemies3:
ObjectList_KingDedede:
ObjectList_ConfigModeUnlock:
ObjectList_ExtraGameUnlock:
	dbw $00, NULL
	db $ff ; end

LevelObject_1d7eb:
	object 0, 3, 8, 6, AnimScript_222a4, MotionScript_120c6, Data_3421
LevelObject_1d7f5:
	object 5, 5, 0, 0, AnimScript_222d5, MotionScript_12100, Data_3421
LevelObject_1d7ff:
	object 8, 3, 0, 8, AnimScript_222fd, MotionScript_10008, Data_3421
LevelObject_1d809:
	object 9, 4, 0, -8, AnimScript_22305, MotionScript_10008, Data_3421
LevelObject_1d813:
	object 10, 3, 0, 0, AnimScript_2230d, MotionScript_10008, Data_3421
LevelObject_1d81d:
	object 11, 4, 0, 0, AnimScript_22315, MotionScript_10008, Data_3421
LevelObject_1d827:
	object 12, 5, 0, -8, AnimScript_2231d, MotionScript_10008, Data_3421
LevelObject_1d831:
	object 13, 3, 0, 0, AnimScript_22325, MotionScript_10008, Data_3421

LevelObject_1d83b:
	object 1, 2, 0, 5, AnimScript_22333, MotionScript_1213c, Data_3421
LevelObject_1d845:
	object 2, 3, 0, 5, AnimScript_22333, MotionScript_12153, Data_3421
LevelObject_1d84f:
	object 3, 2, 0, -10, AnimScript_22333, MotionScript_12167, Data_3421
LevelObject_1d859:
	object 4, 2, 0, 0, AnimScript_22333, MotionScript_1217e, Data_3421
LevelObject_1d863:
	object 5, 5, 0, 1, AnimScript_2233d, MotionScript_121a2, Data_3421
LevelObject_1d86d:
	object 5, 0, 0, -2, AnimScript_22357, MotionScript_121bf, Data_3421

LevelObject_1d877:
	object 5, 6, -2, -14, AnimScript_22360, MotionScript_121d7, Data_3421
LevelObject_1d881:
	object 7, 7, 0, -16, AnimScript_2239c, MotionScript_121ec, Data_3421
LevelObject_1d88b:
	object 7, 7, 0, -16, AnimScript_223a8, MotionScript_1221a, Data_3421

LevelObject_1d895:
	object 5, 0, -8, -10, AnimScript_223c0, MotionScript_1224e, Data_3421
LevelObject_1d89f:
	object 5, 6, -8, -8, AnimScript_22415, MotionScript_12258, Data_3421

LevelObject_1d8a9:
	object 0, 5, -3, 0, AnimScript_2242a, MotionScript_123c2, Data_3425
LevelObject_1d8b3:
	object 5, 5, 0, 0, AnimScript_22459, MotionScript_1235a, Data_3425
LevelObject_1d8bd:
	object 4, 0, -3, 2, AnimScript_22440, MotionScript_12340, Data_3425
LevelObject_1d8c7:
	object 9, 7, 16, 0, AnimScript_2244d, MotionScript_123d8, Data_3425
LevelObject_1d8d1:
	object 0, 0, 0, 0, AnimScript_20000, MotionScript_123ea, Data_3425

LevelObject_1d8db:
	object 4, 6, 8, -8, AnimScript_22773, MotionScript_10008, Data_3421
LevelObject_1d8e5:
	object 2, 2, 2, -2, AnimScript_22766, MotionScript_12806, Data_3421
LevelObject_1d8ef:
	object 3, 5, 14, 2, AnimScript_227f2, MotionScript_128f6, Data_3421

ObjectList_BubblyClouds4_X:
	dbw $00, NULL
	dbw $08, LevelObject_1d922
	db $ff ; end

ObjectList_BubblyClouds4_Y:
	dbw $00, NULL
	dbw $11, LevelObject_1d922
	dbw $1a, LevelObject_1d90a
	db $ff ; end

LevelObject_1d90a:
	object 0, 26, 0, 0, AnimScript_21191, MotionScript_10008, Data_3421

ObjectList_BubblyClouds9_X:
	dbw $00, NULL
	dbw $0a, LevelObject_1d92c
	db $ff ; end

ObjectList_BubblyClouds9_Y:
	dbw $00, NULL
	dbw $04, LevelObject_1d92c
	db $ff ; end

LevelObject_1d922:
	object 8, 17, 0, 0, AnimScript_22863, MotionScript_128fe, Data_3421

LevelObject_1d92c:
	object 10, 4, 0, 0, AnimScript_228aa, MotionScript_12b2d, Data_3421

ObjectList_CastleLololo08_X:
	dbw $00, NULL
	dbw $01, LevelObject_1d958
	db $ff ; end

ObjectList_CastleLololo08_Y:
	dbw $00, NULL
	dbw $01, LevelObject_1d958
	db $ff ; end

ObjectList_CastleLololo14_X:
	dbw $00, NULL
	dbw $01, LevelObject_1d962
	dbw $09, LevelObject_1d96c
	db $ff ; end

ObjectList_CastleLololo14_Y:
	dbw $00, NULL
	dbw $01, LevelObject_1d962
	dbw $09, LevelObject_1d96c
	db $ff ; end

LevelObject_1d958:
	object 1, 1, 0, 0, AnimScript_22a33, MotionScript_13038, LololoProperties
LevelObject_1d962:
	object 1, 1, 0, 0, AnimScript_22a33, MotionScript_12e09, LololoProperties
LevelObject_1d96c:
	object 9, 9, 0, 0, AnimScript_22a33, MotionScript_12f5a, LololoProperties

ObjectList_MtDedede0_X:
	dbw $00, NULL
	db $ff ; end

ObjectList_MtDedede1_X:
	dbw $00, NULL
	dbw $08, LevelObject_1da6e
	dbw $0f, LevelObject_1da5a
	dbw $14, LevelObject_1da64
	dbw $1d, LevelObject_1da50
	dbw $20, LevelObject_1da46
	dbw $23, LevelObject_1da3b
	dbw $26, LevelObject_1da30
	db $ff ; end

ObjectList_MtDedede2_X:
	dbw $00, NULL
	dbw $03, LevelObject_1daac
	dbw $07, LevelObject_1da8e
	dbw $0a, LevelObject_1dac0
	dbw $10, LevelObject_1da98
	dbw $12, LevelObject_1dab6
	dbw $15, LevelObject_1daca
	dbw $18, LevelObject_1daa2
	dbw $1a, LevelObject_1da78
	dbw $1b, LevelObject_1da83
	db $ff ; end

ObjectList_MtDedede2_Y:
	dbw $00, NULL
	dbw $01, LevelObject_1daac
	dbw $02, LevelObject_1dac0
	dbw $02, LevelObject_1da83
	dbw $03, LevelObject_1dab6
	dbw $05, LevelObject_1da78
	dbw $07, LevelObject_1da98
	dbw $09, LevelObject_1daca
	dbw $09, LevelObject_1da8e
	dbw $0a, LevelObject_1daa2
	db $ff ; end

ObjectList_MtDedede3_X:
	dbw $00, NULL
	dbw $01, LevelObject_1dad4
	dbw $03, LevelObject_1dadf
	dbw $05, LevelObject_1db08
	dbw $07, LevelObject_1dafe
	dbw $0b, LevelObject_1db1c
	dbw $12, LevelObject_1daf4
	dbw $13, LevelObject_1daea
	dbw $13, LevelObject_1db12
	db $ff ; end

ObjectList_MtDedede3_Y:
	dbw $00, NULL
	dbw $03, LevelObject_1db12
	dbw $0c, LevelObject_1dadf
	dbw $0c, LevelObject_1daea
	dbw $0c, LevelObject_1daf4
	db $ff ; end

ObjectList_MtDedede4_Y:
	dbw $00, NULL
	dbw $00, LevelObject_1db50
	dbw $00, LevelObject_1db5a
	dbw $05, LevelObject_1db64
	dbw $0c, LevelObject_1db82
	dbw $15, LevelObject_1db8c
	dbw $21, LevelObject_1db6e
	dbw $29, LevelObject_1db78
	dbw $2e, LevelObject_1db26
	dbw $2f, LevelObject_1db31
	dbw $2f, LevelObject_1db3c
	dbw $2f, LevelObject_1db46
	db $ff ; end

ObjectList_MtDedede0_Y:
ObjectList_MtDedede1_Y:
ObjectList_MtDedede4_X:
ObjectList_MtDedede5_Y:
	dbw $00, NULL
	db $ff ; end

ObjectList_MtDedede5_X:
	dbw $00, NULL
	dbw $0b, LevelObject_1db96
	db $ff ; end

; unreferenced
	dbw $00, NULL

LevelObject_1da30:
	object 38, 3, 3, 0, AnimScript_20c13, MotionScript_10cca, KirbyItemProperties, 0
LevelObject_1da3b:
	object 35, 3, 0, -1, AnimScript_DoorGuardGordo, MotionScript_DoorGuardGordo, Data_3429, 0
LevelObject_1da46:
	object 32, 4, 0, 0, AnimScript_20cef, MotionScript_10008, CaplessCappyProperties
LevelObject_1da50:
	object 29, 4, 0, 0, AnimScript_20d3f, MotionScript_10e96, PoppyBrosJrProperties
LevelObject_1da5a:
	object 15, 4, -8, 0, AnimScript_20dc5, MotionScript_10f5a, GrizzoProperties
LevelObject_1da64:
	object 20, 2, 0, 0, AnimScript_20c52, MotionScript_10508, TwizzyProperties
LevelObject_1da6e:
	object 8, 6, 0, 0, AnimScript_20d0b, MotionScript_111e4, CappyProperties
LevelObject_1da78:
	object 26, 5, -10, 0, AnimScript_20c22, MotionScript_10cca, KirbyItemProperties, 2
LevelObject_1da83:
	object 27, 2, 0, -1, AnimScript_DoorGuardGordo, MotionScript_DoorGuardGordo, Data_3429, 2
LevelObject_1da8e:
	object 7, 9, 8, 0, AnimScript_21388, MotionScript_10444, MumbiesProperties
LevelObject_1da98:
	object 16, 7, 0, 0, AnimScript_ShootingGlunk, MotionScript_10008, GlunkProperties
LevelObject_1daa2:
	object 24, 10, 0, 0, AnimScript_Chuckie, MotionScript_11562, Data_3421
LevelObject_1daac:
	object 3, 1, 0, 0, AnimScript_TwoFace_Waiting, MotionScript_10008, Data_3421
LevelObject_1dab6:
	object 18, 3, 0, 0, AnimScript_212d1, MotionScript_10444, StandardEnemyProperties
LevelObject_1dac0:
	object 10, 2, 0, 0, AnimScript_213fa, MotionScript_114fa, StandardEnemyProperties
LevelObject_1daca:
	object 21, 9, 0, 0, AnimScript_2125c, MotionScript_10008, StandardEnemyProperties
LevelObject_1dad4:
	object 1, 11, 8, 0, AnimScript_20c31, MotionScript_10008, KirbyItemProperties, 4
LevelObject_1dadf:
	object 3, 11, 0, -1, AnimScript_DoorGuardGordo, MotionScript_DoorGuardGordo, Data_3429, 4
LevelObject_1daea:
	object 19, 12, 0, 0, AnimScript_2186a, MotionScript_1059a, StandardEnemyProperties
LevelObject_1daf4:
	object 18, 12, 7, 0, AnimScript_Coner, MotionScript_11764, PuffyProperties
LevelObject_1dafe:
	object 7, 6, 0, 0, AnimScript_2187f, MotionScript_1179b, PuffyProperties
LevelObject_1db08:
	object 5, 1, 0, 0, AnimScript_21906, MotionScript_10008, CoconutProperties
LevelObject_1db12:
	object 19, 3, 0, 0, AnimScript_2171c, MotionScript_10008, GlunkProperties
LevelObject_1db1c:
	object 11, 2, 0, 0, AnimScript_218b5, MotionScript_118f0, StandardEnemyProperties
LevelObject_1db26:
	object 6, 45, 2, 2, AnimScript_20c49, MotionScript_10cd3, KirbyItemProperties, 6
LevelObject_1db31:
	object 2, 47, 0, -1, AnimScript_DoorGuardGordo, MotionScript_DoorGuardGordo, Data_3429, 6
LevelObject_1db3c:
	object 8, 47, -4, 0, AnimScript_21d85, MotionScript_103ff, ParasolWaddleDeeProperties
LevelObject_1db46:
	object 9, 47, 0, 0, AnimScript_21da7, MotionScript_103ff, ParasolWaddleDeeProperties
LevelObject_1db50:
	object 2, 0, 8, 0, AnimScript_FallingStarSpawner, MotionScript_10008, Data_3421
LevelObject_1db5a:
	object 7, 0, -8, 0, AnimScript_FallingStarSpawner, MotionScript_10008, Data_3421
LevelObject_1db64:
	object 0, 5, 0, 0, AnimScript_21ab6, MotionScript_10008, PuffyProperties
LevelObject_1db6e:
	object 6, 33, 0, 0, AnimScript_21e91, MotionScript_10008, GlunkProperties
LevelObject_1db78:
	object 3, 41, 0, 0, AnimScript_21b23, MotionScript_114b2, StandardEnemyProperties
LevelObject_1db82:
	object 8, 12, 8, -32, AnimScript_21e5d, MotionScript_11e7f, StandardEnemyProperties
LevelObject_1db8c:
	object 7, 21, 0, 0, AnimScript_Scarfy, MotionScript_11c94, ScarfyProperties
LevelObject_1db96:
	object 11, 5, 0, 0, AnimScript_22bb6, MotionScript_13109, Properties_3604
