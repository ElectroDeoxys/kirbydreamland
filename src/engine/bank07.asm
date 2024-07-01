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
	dw $4202, $42d0 ; GREEN_GREENS_0
	dw $4245, $42d0 ; GREEN_GREENS_1
	dw $424f, $42d0 ; GREEN_GREENS_2
	dw $42a1, $42d4 ; GREEN_GREENS_3
	dw $42c9, $42f9 ; GREEN_GREENS_4
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
	table_width 2, Data_1c13a
	dw $578b, $57e7 ; GREEN_GREENS
	dw $57a7, $57e7 ; CASTLE_LOLOLO
	dw $57bd, $57e7 ; FLOAT_ISLANDS
	dw $57ca, $57e7 ; BUBBLY_CLOUDS
	dw $57d4, $57e7 ; MT_DEDEDE
	assert_table_length NUM_STAGES
; 0x1c14e
