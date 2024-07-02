Data_1c000::
	table_width 2, Data_1c000
	dw .GreenGreens ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 4, Data_1c000.GreenGreens
	dw Data_1c202, Data_1c2d0 ; GREEN_GREENS_0
	dw Data_1c245, Data_1c2d0 ; GREEN_GREENS_1
	dw Data_1c24f, Data_1c2d0 ; GREEN_GREENS_2
	dw Data_1c2a1, Data_1c2d4 ; GREEN_GREENS_3
	dw Data_1c2c9, Data_1c2f9 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 4, Data_1c000.CastleLololo
	dw $45b2, $45b9 ; CASTLE_LOLOLO_00
	dw $4621, $4625 ; CASTLE_LOLOLO_01
	dw $4692, $46a2 ; CASTLE_LOLOLO_02
	dw $45ca, $45e0 ; CASTLE_LOLOLO_03
	dw $46d0, $46d7 ; CASTLE_LOLOLO_04
	dw $4729, $4748 ; CASTLE_LOLOLO_05
	dw $47c2, $47c6 ; CASTLE_LOLOLO_06
	dw $4819, $4835 ; CASTLE_LOLOLO_07
	dw $5936, $593d ; CASTLE_LOLOLO_08
	dw $48e0, $48ea ; CASTLE_LOLOLO_09
	dw $4909, $4919 ; CASTLE_LOLOLO_10
	dw $488a, $48a0 ; CASTLE_LOLOLO_11
	dw $4947, $4960 ; CASTLE_LOLOLO_12
	dw $49c0, $49d6 ; CASTLE_LOLOLO_13
	dw $5944, $594e ; CASTLE_LOLOLO_14
	dw $4a16, $4a20 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 4, Data_1c000.FloatIslands
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
	table_width 4, Data_1c000.BubblyClouds
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
	table_width 4, Data_1c000.MtDedede
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
	dw $558f, $57e7 ; $01
	dw $55ba, $57e7 ; $02
	dw $55fd, $57e7 ; $03
	dw $5607, $57e7 ; $04
	dw $561d, $57e7 ; $05
	dw $5624, $57e7 ; $06
	dw $5631, $57e7 ; $07
	dw $55c4, $57e7 ; $08
	dw $55e0, $57e7 ; $09
	dw $55f9, $57e7 ; $0a
	dw $563e, $57e7 ; $0b
	dw $57e7, $57e7 ; $0c
	dw $57e7, $57e7 ; $0d
	dw $57e7, $57e7 ; $0e
	dw $57e7, $57e7 ; $0f
	dw $57e7, $57e7 ; $10
	dw $57e7, $57e7 ; $11
	dw $57e7, $57e7 ; $12
	dw $57e7, $57e7 ; $13
	dw $57e7, $57e7 ; $14
	dw $57e7, $57e7 ; $15
	dw $57e7, $57e7 ; $16
	dw $57e7, $57e7 ; $17
	dw $57e7, $57e7 ; $18
	dw $57e7, $57e7 ; $19
	dw $57e7, $57e7 ; $1a
	dw $57e7, $57e7 ; $1b

Data_1c13a::
	table_width 4, Data_1c13a
	dw $578b, $57e7 ; GREEN_GREENS
	dw $57a7, $57e7 ; CASTLE_LOLOLO
	dw $57bd, $57e7 ; FLOAT_ISLANDS
	dw $57ca, $57e7 ; BUBBLY_CLOUDS
	dw $57d4, $57e7 ; MT_DEDEDE
	assert_table_length NUM_STAGES
; 0x1c14e

SECTION "Bank 7@4202", ROMX[$4202], BANK[$7]

Data_1c202:
	dbw $00, NULL
	dbw $0f, Data_1c304
	dbw $11, Data_1c318
	dbw $15, Data_1c322
	dbw $16, Data_1c32c
	dbw $18, Data_1c336
	dbw $1f, Data_1c340
	dbw $21, Data_1c34a
	dbw $29, Data_1c354
	dbw $30, Data_1c35e
	dbw $30, Data_1c368
	dbw $31, Data_1c372
	dbw $39, Data_1c386
	dbw $3d, Data_1c390
	dbw $40, Data_1c39a
	dbw $42, Data_1c3a4
	dbw $43, Data_1c3ae
	dbw $46, Data_1c3b8
	dbw $47, Data_1c3c2
	dbw $4a, Data_1c3cc
	dbw $4f, Data_1c3d6
	dbw $4e, Data_1c3e0
	db $ff

Data_1c245:
	dbw $00, NULL
	dbw $05, Data_1c3eb
	dbw $0a, Data_1c3f6
	db $ff

Data_1c24f:
	dbw $00, NULL
	dbw $0a, Data_1c45b
	dbw $0f, Data_1c40b
	dbw $12, Data_1c401
	dbw $15, Data_1c415
	dbw $19, Data_1c41f
	dbw $1b, Data_1c429
	dbw $1f, Data_1c433
	dbw $21, Data_1c43d
	dbw $24, Data_1c447
	dbw $26, Data_1c451
	dbw $2a, Data_1c470
	dbw $2b, Data_1c47a
	dbw $2a, Data_1c484
	dbw $2f, Data_1c498
	dbw $30, Data_1c4a2
	dbw $32, Data_1c4ac
	dbw $38, Data_1c4b6
	dbw $3a, Data_1c4c0
	dbw $3b, Data_1c4ca
	dbw $3f, Data_1c4de
	dbw $41, Data_1c4e8
	dbw $42, Data_1c4f2
	dbw $44, Data_1c4fc
	dbw $45, Data_1c506
	dbw $46, Data_1c510
	dbw $4c, Data_1c51a
	db $ff

Data_1c2a1:
	dbw $00, NULL
	dbw $01, Data_1c556
	dbw $02, Data_1c594
	dbw $03, Data_1c58a
	dbw $06, Data_1c524
	dbw $06, Data_1c56c
	dbw $07, Data_1c562
	dbw $09, Data_1c52e
	dbw $09, Data_1c54c
	dbw $0a, Data_1c538
	dbw $0b, Data_1c580
	dbw $0b, Data_1c542
	dbw $0c, Data_1c54c
	db $ff

Data_1c2c9:
	dbw $00, NULL
	dbw $07, Data_1c59e
	db $ff

Data_1c2d0:
	dbw $00, NULL
	db $ff

Data_1c2d4:
	dbw $00, NULL
	dbw $04, $452e
	dbw $04, $4524
	dbw $07, $4538
	dbw $0e, $4556
	dbw $13, $4562
	dbw $13, $4542
	dbw $13, $454c
	dbw $17, $456c
	dbw $1c, $4580
	dbw $20, $458a
	dbw $25, $4594
	db $ff

Data_1c2f9:
	dbw $00, NULL
	dbw $16, $459e
	dbw $1a, $45a8
	db $ff

	db $ff

MACRO object
	db \1 ; x
	db \2 ; y
	db \3 ; ?
	db \4 ; ?
	dw \5 ; ?
	dw \6 ; ?
	dw \7 ; ?
ENDM

Data_1c304:
	object $0f, $05, $00, $00, SpriteAnim_20587, $42c8, Data_348c
; unreferenced
	object $11, $05, $f8, $00, SpriteAnim_20d19, $51d8, Data_34ff
Data_1c318:
	object $11, $05, $00, $00, SpriteAnim_20587, $42c8, Data_348c
Data_1c322:
	object $15, $04, $00, $00, SpriteAnim_205ae, $43ff, Data_348c
Data_1c32c:
	object $16, $02, $00, $00, SpriteAnim_20c52, $4d5d, Data_351a
Data_1c336:
	object $18, $04, $00, $00, SpriteAnim_20c5b, $4d99, Data_351a
Data_1c340:
	object $1f, $01, $00, $00, SpriteAnim_20647, $4508, Data_348c
Data_1c34a:
	object $21, $05, $00, $00, SpriteAnim_205ae, $43ff, Data_348c
Data_1c354:
	object $29, $05, $08, $00, SpriteAnim_20d0b, $51e4, Data_34ff
Data_1c35e:
	object $30, $02, $00, $00, $4d28, $467d, Data_348c
Data_1c368:
	object $30, $05, $f8, $00, SpriteAnim_20d19, $51d8, Data_34ff
Data_1c372:
	object $31, $02, $00, $08, $4d28, $467d, Data_348c
; unreferenced
	object $33, $03, $00, $00, SpriteAnim_20c5b, $4d99, Data_351a
Data_1c386:
	object $39, $04, $00, $00, SpriteAnim_20c5b, $4d99, Data_351a
Data_1c390:
	object $3d, $01, $00, $00, SpriteAnim_20647, $4508, Data_348c
Data_1c39a:
	object $40, $05, $00, $00, SpriteAnim_205cc, $442f, Data_348c
Data_1c3a4:
	object $42, $05, $00, $00, $4d3f, $4eae, Data_3523
Data_1c3ae:
	object $43, $05, $08, $00, SpriteAnim_20d19, $51d8, Data_34ff
Data_1c3b8:
	object $46, $05, $00, $00, SpriteAnim_205ae, $43ff, Data_348c
Data_1c3c2:
	object $47, $03, $00, $00, SpriteAnim_20c52, $4d5d, Data_351a
Data_1c3cc:
	object $4a, $04, $00, $00, SpriteAnim_20c5b, $4d99, Data_351a
Data_1c3d6:
	object $4f, $02, $00, $00, SpriteAnim_20647, $467d, Data_348c
Data_1c3e0:
	object $4e, $03, $fa, $00, $4958, $431d, Data_344d

	db $02

Data_1c3eb:
	object $05, $06, $00, $00, $492e, $4008, Data_3465
	db $00
Data_1c3f6:
	object $0a, $06, $00, $00, $492e, $4008, Data_3465

	db $01

Data_1c401:
	object $12, $01, $00, $00, SpriteAnim_20647, $4508, Data_348c
Data_1c40b:
	object $0f, $06, $00, $00, $4e58, $4f84, Data_3562
Data_1c415:
	object $15, $06, $f8, $00, SpriteAnim_20d0b, $51e4, Data_34ff
Data_1c41f:
	object $19, $04, $00, $00, SpriteAnim_205ae, $43ff, Data_348c
Data_1c429:
	object $1b, $03, $00, $00, $4d28, $467d, Data_348c
Data_1c433:
	object $1f, $06, $00, $00, SpriteAnim_205ae, $43ff, Data_348c
Data_1c43d:
	object $21, $01, $00, $00, SpriteAnim_20647, $4508, Data_348c
Data_1c447:
	object $24, $06, $00, $00, $4d92, $4f06, Data_3535
Data_1c451:
	object $26, $00, $d0, $00, SpriteAnim_20647, $4d16, Data_348c
Data_1c45b:
	object $0a, $00, $e0, $00, $4f14, $4fdf, Data_3429
	db $06, $37, $06, $f8, $00, $3b, $46, $f4, $4c, $8c, $34
Data_1c470:
	object $2a, $02, $00, $00, SpriteAnim_20c52, $4d5d, Data_351a
Data_1c47a:
	object $2b, $02, $00, $0a, SpriteAnim_20c52, $4d5d, Data_351a
Data_1c484:
	object $2a, $06, $00, $00, $4e58, $4f84, Data_3562
; unreferenced
	object $2d, $06, $00, $00, SpriteAnim_20c5b, $4d99, Data_351a
Data_1c498:
	object $2f, $06, $f8, $00, SpriteAnim_20d19, $51d8, Data_34ff
Data_1c4a2:
	object $30, $05, $00, $00, $463b, $4cf4, Data_348c
Data_1c4ac:
	object $32, $00, $ba, $00, SpriteAnim_20647, $4d16, Data_348c
Data_1c4b6:
	object $38, $00, $b8, $00, SpriteAnim_20647, $4d16, Data_348c
Data_1c4c0:
	object $3a, $06, $00, $00, $4d3f, $4e96, Data_3523
Data_1c4ca:
	object $3b, $02, $00, $00, SpriteAnim_20c52, $4d5d, Data_351a
; unreferenced
	object $3b, $06, $f8, $00, SpriteAnim_20d0b, $51e4, Data_34ff
Data_1c4de:
	object $3f, $06, $00, $00, $4e10, $4f06, Data_3547
Data_1c4e8:
	object $41, $06, $f0, $00, $463b, $4cf4, Data_348c
Data_1c4f2:
	object $42, $06, $08, $00, SpriteAnim_20d0b, $51e4, Data_34ff
Data_1c4fc:
	object $44, $01, $00, $00, SpriteAnim_20647, $4508, Data_348c
Data_1c506:
	object $45, $02, $00, $00, SpriteAnim_20c52, $4d5d, Data_351a
Data_1c510:
	object $46, $06, $08, $00, SpriteAnim_20d0b, $51e4, Data_34ff
Data_1c51a:
	object $4c, $06, $00, $00, $4e10, $4f06, Data_3547

Data_1c524:
	object $06, $04, $00, $00, SpriteAnim_20c5b, $4d99, Data_351a
Data_1c52e:
	object $09, $04, $00, $00, SpriteAnim_205ae, $43ff, Data_348c
Data_1c538:
	object $0a, $07, $00, $00, SpriteAnim_205cc, $442f, Data_348c
Data_1c542:
	object $0b, $13, $f9, $00, $4cef, $4e3b, Data_3508
Data_1c54c:
	object $0c, $13, $f9, $00, $4cef, $4e3b, Data_3508
Data_1c556:
	object $01, $0e, $08, $00, $4934, $4008, Data_3459
	db $04, $00
Data_1c562:
	object $07, $13, $00, $00, SpriteAnim_20c5b, $4d99, Data_351a
Data_1c56c:
	object $06, $17, $02, $00, $4ccb, $4de7, Data_3508
; unreferenced
	object $0e, $17, $02, $00, $4dda, $4008, Data_3508
Data_1c580:
	object $0b, $1c, $00, $00, $4d92, $4f06, Data_3535
Data_1c58a:
	object $03, $20, $00, $00, $4da4, $4f0e, Data_3535
Data_1c594:
	object $02, $25, $00, $00, $4ccb, $4de7, Data_3508

Data_1c59e:
	object $07, $16, $02, $D5, $5023, $4008, Data_3421
