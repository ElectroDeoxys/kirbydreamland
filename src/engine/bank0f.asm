Data_3c000::
	table_width 2, Data_3c000
	dw .GreenGreens ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 4, Data_3c000.GreenGreens
	dw $4202, $42d0 ; GREEN_GREENS_0
	dw $4245, $42d0 ; GREEN_GREENS_1
	dw $424f, $42d0 ; GREEN_GREENS_2
	dw $42a1, $42d4 ; GREEN_GREENS_3
	dw $42c9, $42f9 ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 4, Data_3c000.CastleLololo
	dw $45b2, $45b9 ; CASTLE_LOLOLO_00
	dw $4621, $4625 ; CASTLE_LOLOLO_01
	dw $4692, $46a2 ; CASTLE_LOLOLO_02
	dw $45ca, $45e0 ; CASTLE_LOLOLO_03
	dw $46d0, $46d7 ; CASTLE_LOLOLO_04
	dw $471c, $473b ; CASTLE_LOLOLO_05
	dw $47b5, $47b9 ; CASTLE_LOLOLO_06
	dw $480c, $4828 ; CASTLE_LOLOLO_07
	dw $5d48, $5d4f ; CASTLE_LOLOLO_08
	dw $48d3, $48dd ; CASTLE_LOLOLO_09
	dw $48fc, $490c ; CASTLE_LOLOLO_10
	dw $487d, $4893 ; CASTLE_LOLOLO_11
	dw $493a, $4953 ; CASTLE_LOLOLO_12
	dw $49b3, $49c9 ; CASTLE_LOLOLO_13
	dw $5d56, $5d60 ; CASTLE_LOLOLO_14
	dw $4a09, $4a13 ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 4, Data_3c000.FloatIslands
	dw $4a2c, $4a9c ; FLOAT_ISLANDS_0
	dw $4aa0, $4ada ; FLOAT_ISLANDS_1
	dw $4a9c, $4b14 ; FLOAT_ISLANDS_2
	dw $4b2a, $4b67 ; FLOAT_ISLANDS_3
	dw $4b6b, $4b75 ; FLOAT_ISLANDS_4
	dw $4b7f, $4b86 ; FLOAT_ISLANDS_5
	dw $4b90, $4b97 ; FLOAT_ISLANDS_6
	dw $4b9b, $4bae ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 4, Data_3c000.BubblyClouds
	dw $4f37, $4f92 ; BUBBLY_CLOUDS_0
	dw $50c2, $50fc ; BUBBLY_CLOUDS_1
	dw $51b4, $51b8 ; BUBBLY_CLOUDS_2
	dw $5258, $5289 ; BUBBLY_CLOUDS_3
	dw $5d0b, $5d12 ; BUBBLY_CLOUDS_4
	dw $534e, $5373 ; BUBBLY_CLOUDS_5
	dw $5415, $5434 ; BUBBLY_CLOUDS_6
	dw $5494, $54ad ; BUBBLY_CLOUDS_7
	dw $5530, $5534 ; BUBBLY_CLOUDS_8
	dw $5d26, $5d2d ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 4, Data_3c000.MtDedede
	dw $5d88, $5e34 ; MT_DEDEDE_0
	dw $5d8c, $5e34 ; MT_DEDEDE_1
	dw $5da5, $5dc4 ; MT_DEDEDE_2
	dw $5de3, $5dff ; MT_DEDEDE_3
	dw $5e34, $5e0f ; MT_DEDEDE_4
	dw $5e38, $5e34 ; MT_DEDEDE_5
	dw $42c9, $42f9 ; MT_DEDEDE_6
	dw $4b9b, $4bae ; MT_DEDEDE_7
	dw $5d56, $5d60 ; MT_DEDEDE_8
	dw $5d26, $5d2d ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

Data_3c0ce::
	dw $5699, $5bf9 ; $01
	dw $56c4, $5bf9 ; $02
	dw $5707, $5bf9 ; $03
	dw $5711, $5bf9 ; $04
	dw $5727, $5bf9 ; $05
	dw $572e, $5bf9 ; $06
	dw $573b, $5bf9 ; $07
	dw $56ce, $5bf9 ; $08
	dw $56ea, $5bf9 ; $09
	dw $5703, $5bf9 ; $0a
	dw $5748, $5bf9 ; $0b
	dw $5881, $5bf9 ; $0c
	dw $5897, $5bf9 ; $0d
	dw $58aa, $5bf9 ; $0e
	dw $58b4, $5bf9 ; $0f
	dw $58d0, $5bf9 ; $10
	dw $58dd, $5bf9 ; $11
	dw $58f3, $5bf9 ; $12
	dw $58fd, $5bf9 ; $13
	dw $5913, $5bf9 ; $14
	dw $5920, $5bf9 ; $15
	dw $5930, $5bf9 ; $16
	dw $5943, $5bf9 ; $17
	dw $5956, $5bf9 ; $18
	dw $5969, $5bf9 ; $19
	dw $5b67, $5bf9 ; $1a
	dw $5b78, $5bf9 ; $1b

Data_3c13a::
	dw $5b9d, $5bf9
	dw $5bb9, $5bf9
	dw $5bcf, $5bf9
	dw $5bdc, $5bf9
	dw $5be6, $5bf9
; 0x3c14e
