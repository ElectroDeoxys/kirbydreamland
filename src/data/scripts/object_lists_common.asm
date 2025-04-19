IF DEF(EXPORT_SCRIPTS)
LevelObjectLists::
ELSE
LevelObjectLists_@:
ENDC
	table_width 2
	dw .GreenGreens  ; GREEN_GREENS
	dw .CastleLololo ; CASTLE_LOLOLO
	dw .FloatIslands ; FLOAT_ISLANDS
	dw .BubblyClouds ; BUBBLY_CLOUDS
	dw .MtDedede     ; MT_DEDEDE
	assert_table_length NUM_STAGES

.GreenGreens:
	table_width 4
	dw ObjectList_GreenGreens0_X, ObjectList_GreenGreens0_Y ; GREEN_GREENS_0
	dw ObjectList_GreenGreens1_X, ObjectList_GreenGreens1_Y ; GREEN_GREENS_1
	dw ObjectList_GreenGreens2_X, ObjectList_GreenGreens2_Y ; GREEN_GREENS_2
	dw ObjectList_GreenGreens3_X, ObjectList_GreenGreens3_Y ; GREEN_GREENS_3
	dw ObjectList_GreenGreens4_X, ObjectList_GreenGreens4_Y ; GREEN_GREENS_4
	assert_table_length NUM_GREEN_GREENS_AREAS

.CastleLololo:
	table_width 4
	dw ObjectList_CastleLololo00_X, ObjectList_CastleLololo00_Y ; CASTLE_LOLOLO_00
	dw ObjectList_CastleLololo01_X, ObjectList_CastleLololo01_Y ; CASTLE_LOLOLO_01
	dw ObjectList_CastleLololo02_X, ObjectList_CastleLololo02_Y ; CASTLE_LOLOLO_02
	dw ObjectList_CastleLololo03_X, ObjectList_CastleLololo03_Y ; CASTLE_LOLOLO_03
	dw ObjectList_CastleLololo04_X, ObjectList_CastleLololo04_Y ; CASTLE_LOLOLO_04
	dw ObjectList_CastleLololo05_X, ObjectList_CastleLololo05_Y ; CASTLE_LOLOLO_05
	dw ObjectList_CastleLololo06_X, ObjectList_CastleLololo06_Y ; CASTLE_LOLOLO_06
	dw ObjectList_CastleLololo07_X, ObjectList_CastleLololo07_Y ; CASTLE_LOLOLO_07
	dw ObjectList_CastleLololo08_X, ObjectList_CastleLololo08_Y ; CASTLE_LOLOLO_08
	dw ObjectList_CastleLololo09_X, ObjectList_CastleLololo09_Y ; CASTLE_LOLOLO_09
	dw ObjectList_CastleLololo10_X, ObjectList_CastleLololo10_Y ; CASTLE_LOLOLO_10
	dw ObjectList_CastleLololo11_X, ObjectList_CastleLololo11_Y ; CASTLE_LOLOLO_11
	dw ObjectList_CastleLololo12_X, ObjectList_CastleLololo12_Y ; CASTLE_LOLOLO_12
	dw ObjectList_CastleLololo13_X, ObjectList_CastleLololo13_Y ; CASTLE_LOLOLO_13
	dw ObjectList_CastleLololo14_X, ObjectList_CastleLololo14_Y ; CASTLE_LOLOLO_14
	dw ObjectList_CastleLololo15_X, ObjectList_CastleLololo15_Y ; CASTLE_LOLOLO_15
	assert_table_length NUM_CASTLE_LOLOLO_AREAS

.FloatIslands:
	table_width 4
	dw ObjectList_FloatIslands0_X, ObjectList_FloatIslands0_Y ; FLOAT_ISLANDS_0
	dw ObjectList_FloatIslands1_X, ObjectList_FloatIslands1_Y ; FLOAT_ISLANDS_1
	dw ObjectList_FloatIslands2_X, ObjectList_FloatIslands2_Y ; FLOAT_ISLANDS_2
	dw ObjectList_FloatIslands3_X, ObjectList_FloatIslands3_Y ; FLOAT_ISLANDS_3
	dw ObjectList_FloatIslands4_X, ObjectList_FloatIslands4_Y ; FLOAT_ISLANDS_4
	dw ObjectList_FloatIslands5_X, ObjectList_FloatIslands5_Y ; FLOAT_ISLANDS_5
	dw ObjectList_FloatIslands6_X, ObjectList_FloatIslands6_Y ; FLOAT_ISLANDS_6
	dw ObjectList_FloatIslands7_X, ObjectList_FloatIslands7_Y ; FLOAT_ISLANDS_7
	assert_table_length NUM_FLOAT_ISLANDS_AREAS

.BubblyClouds:
	table_width 4
	dw ObjectList_BubblyClouds0_X, ObjectList_BubblyClouds0_Y ; BUBBLY_CLOUDS_0
	dw ObjectList_BubblyClouds1_X, ObjectList_BubblyClouds1_Y ; BUBBLY_CLOUDS_1
	dw ObjectList_BubblyClouds2_X, ObjectList_BubblyClouds2_Y ; BUBBLY_CLOUDS_2
	dw ObjectList_BubblyClouds3_X, ObjectList_BubblyClouds3_Y ; BUBBLY_CLOUDS_3
	dw ObjectList_BubblyClouds4_X, ObjectList_BubblyClouds4_Y ; BUBBLY_CLOUDS_4
	dw ObjectList_BubblyClouds5_X, ObjectList_BubblyClouds5_Y ; BUBBLY_CLOUDS_5
	dw ObjectList_BubblyClouds6_X, ObjectList_BubblyClouds6_Y ; BUBBLY_CLOUDS_6
	dw ObjectList_BubblyClouds7_X, ObjectList_BubblyClouds7_Y ; BUBBLY_CLOUDS_7
	dw ObjectList_BubblyClouds8_X, ObjectList_BubblyClouds8_Y ; BUBBLY_CLOUDS_8
	dw ObjectList_BubblyClouds9_X, ObjectList_BubblyClouds9_Y ; BUBBLY_CLOUDS_9
	assert_table_length NUM_BUBBLY_CLOUDS_AREAS

.MtDedede:
	table_width 4
	dw ObjectList_MtDedede0_X,      ObjectList_MtDedede0_Y ; MT_DEDEDE_0
	dw ObjectList_MtDedede1_X,      ObjectList_MtDedede1_Y ; MT_DEDEDE_1
	dw ObjectList_MtDedede2_X,      ObjectList_MtDedede2_Y ; MT_DEDEDE_2
	dw ObjectList_MtDedede3_X,      ObjectList_MtDedede3_Y ; MT_DEDEDE_3
	dw ObjectList_MtDedede4_X,      ObjectList_MtDedede4_Y ; MT_DEDEDE_4
	dw ObjectList_MtDedede5_X,      ObjectList_MtDedede5_Y ; MT_DEDEDE_5
	dw ObjectList_GreenGreens4_X,   ObjectList_GreenGreens4_Y ; MT_DEDEDE_6
	dw ObjectList_FloatIslands7_X,  ObjectList_FloatIslands7_Y ; MT_DEDEDE_7
	dw ObjectList_CastleLololo14_X, ObjectList_CastleLololo14_Y ; MT_DEDEDE_8
	dw ObjectList_BubblyClouds9_X,  ObjectList_BubblyClouds9_Y ; MT_DEDEDE_9
	assert_table_length NUM_MT_DEDEDE_AREAS

IF DEF(EXPORT_SCRIPTS)
SceneObjectLists::
ENDC
	table_width 4
	dw ObjectList_TitleScreen,               ObjectList_Null ; SCENE_TITLE_SCREEN
	dw ObjectList_SoundTest,                 ObjectList_Null ; SCENE_SOUND_TEST
	dw ObjectList_Epilogue_DededeLaunch,     ObjectList_Null ; SCENE_EPILOGUE_DEDEDE_LAUNCH
	dw ObjectList_Epilogue_KirbyDance,       ObjectList_Null ; SCENE_EPILOGUE_KIRBY_DANCE
	dw ObjectList_Epilogue_KirbyInflate,     ObjectList_Null ; SCENE_EPILOGUE_KIRBY_INFLATE
	dw ObjectList_Epilogue_FallingFood,      ObjectList_Null ; SCENE_EPILOGUE_FALLING_FOOD
	dw ObjectList_Credits,                   ObjectList_Null ; SCENE_CREDITS
	dw ObjectList_Epilogue_KirbyDeflate,     ObjectList_Null ; SCENE_EPILOGUE_KIRBY_DEFLATE
	dw ObjectList_Epilogue_ByeBye,           ObjectList_Null ; SCENE_EPILOGUE_BYE_BYE
	dw ObjectList_GameOver,                  ObjectList_Null ; SCENE_GAME_OVER
	dw ObjectList_Continue,                  ObjectList_Null ; SCENE_CONTINUE
	dw ObjectList_SceneGreenGreensEnemies1,  ObjectList_Null ; SCENE_GREEN_GREENS_ENEMIES_1
	dw ObjectList_SceneGreenGreensEnemies2,  ObjectList_Null ; SCENE_GREEN_GREENS_ENEMIES_2
	dw ObjectList_SceneGreenGreensEnemies3,  ObjectList_Null ; SCENE_GREEN_GREENS_ENEMIES_3
	dw ObjectList_SceneCastleLololoEnemies1, ObjectList_Null ; SCENE_CASTLE_LOLOLO_ENEMIES_1
	dw ObjectList_SceneCastleLololoEnemies2, ObjectList_Null ; SCENE_CASTLE_LOLOLO_ENEMIES_2
	dw ObjectList_SceneFloatIslandsEnemies1, ObjectList_Null ; SCENE_FLOAT_ISLANDS_ENEMIES_1
	dw ObjectList_SceneFloatIslandsEnemies2, ObjectList_Null ; SCENE_FLOAT_ISLANDS_ENEMIES_2
	dw ObjectList_SceneBubblyCloudsEnemies1, ObjectList_Null ; SCENE_BUBBLY_CLOUDS_ENEMIES_1
	dw ObjectList_SceneBubblyCloudsEnemies2, ObjectList_Null ; SCENE_BUBBLY_CLOUDS_ENEMIES_2
	dw ObjectList_SceneGreenGreensEnemies4,  ObjectList_Null ; SCENE_GREEN_GREENS_ENEMIES_4
	dw ObjectList_SceneCastleLololoEnemies3, ObjectList_Null ; SCENE_CASTLE_LOLOLO_ENEMIES_3
	dw ObjectList_SceneFloatIslandsEnemies3, ObjectList_Null ; SCENE_FLOAT_ISLANDS_ENEMIES_3
	dw ObjectList_SceneBubblyCloudsEnemies3, ObjectList_Null ; SCENE_BUBBLY_CLOUDS_ENEMIES_3
	dw ObjectList_KingDedede,                ObjectList_Null ; SCENE_KING_DEDEDE
	dw ObjectList_ConfigModeUnlock,          ObjectList_Null ; SCENE_CONFIG_MODE_UNLOCK
	dw ObjectList_ExtraGameUnlock,           ObjectList_Null ; SCENE_EXTRA_GAME_UNLOCK
	assert_table_length NUM_SCENES

IF DEF(EXPORT_SCRIPTS)
StageIntroObjectLists::
ENDC
	table_width 4
	dw ObjectList_GreenGreensIntro, ObjectList_Null ; GREEN_GREENS
	dw ObjectList_CastleLololoIntro, ObjectList_Null ; CASTLE_LOLOLO
	dw ObjectList_FloatIslandsIntro, ObjectList_Null ; FLOAT_ISLANDS
	dw ObjectList_BubblyCloudsIntro, ObjectList_Null ; BUBBLY_CLOUDS
	dw ObjectList_MtDededeIntro, ObjectList_Null ; MT_DEDEDE
	assert_table_length NUM_STAGES

IF DEF(EXPORT_SCRIPTS)
Data_1c14e::
ENDC
	dw AnimScript_20000, MotionScript_10008, Data_3425

IF DEF(EXPORT_SCRIPTS)
Data_1c154::
ENDC
	dw AnimScript_DefeatStars, MotionScript_10008, PuffOfSmokeProperties

IF DEF(EXPORT_SCRIPTS)
Data_1c15a::
ENDC
	dw AnimScript_DefeatStars_RelPos, MotionScript_10008, Properties_35a6

IF DEF(EXPORT_SCRIPTS)
Data_1c160::
ENDC
	dw AnimScript_Explosion, MotionScript_10008, ExplosionProperties

IF DEF(EXPORT_SCRIPTS)
Data_1c166::
ENDC
	dw AnimScript_Explosion, MotionScript_10008, Properties_35c4

IF DEF(EXPORT_SCRIPTS)
Data_1c16c::
ENDC
	dw AnimScript_203b2, MotionScript_10008, ExplosionProperties

IF DEF(EXPORT_SCRIPTS)
Data_1c172::
ENDC
	dw AnimScript_20000, MotionScript_10008, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c178::
ENDC
	dw AnimScript_SmallStar, MotionScript_Star_RandomDirection, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c17e::
ENDC
	dw AnimScript_Star, MotionScript_InvincibilityStar, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c184::
ENDC
	dw AnimScript_SpitStar, MotionScript_SpitStar, SpitStarProperties

IF DEF(EXPORT_SCRIPTS)
Data_1c18a::
ENDC
	dw AnimScript_DiveHitbox, MotionScript_10008, DiveHitboxProperties

IF DEF(EXPORT_SCRIPTS)
Data_1c190::
ENDC
	dw AnimScript_UnkSpitStarFX, MotionScript_10008, Data_35ab

IF DEF(EXPORT_SCRIPTS)
Data_1c196::
ENDC
	dw AnimScript_FirePellet, MotionScript_1022a, Data_35b3

IF DEF(EXPORT_SCRIPTS)
Data_1c19c::
ENDC
	dw AnimScript_KirbyPuff, MotionScript_KirbyPuff, Data_35b3

IF DEF(EXPORT_SCRIPTS)
Data_1c1a2::
ENDC
	dw AnimScript_20474, MotionScript_InhaledObject, Data_3685

IF DEF(EXPORT_SCRIPTS)
Data_1c1a8::
ENDC
	dw AnimScript_PoppyBrosJrSeparated, MotionScript_10008, Data_3421

; unreferenced
IF DEF(EXPORT_SCRIPTS)
Data_1c1ae::
ENDC
	dw AnimScript_GrizzoSeparated, MotionScript_10008, Properties_353e

IF DEF(EXPORT_SCRIPTS)
Data_1c1b4::
ENDC
	dw AnimScript_PoppyBrosJrSeparated, MotionScript_10008, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c1ba::
ENDC
	dw AnimScript_ParasolSeparated, MotionScript_ParasolSeparated, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c1c0::
ENDC
	dw AnimScript_OnPoppyBrosSrDestroyed, MotionScript_10008, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c1c6::
ENDC
	dw AnimScript_WhispyWoodsDespawnGuard, MotionScript_10008, Data_358f

IF DEF(EXPORT_SCRIPTS)
Data_1c1cc::
ENDC
	dw AnimScript_OnWhispyWoodsDestroyed, MotionScript_10008, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c1d2::
ENDC
	dw AnimScript_OnLololoLalalaDestroyed, MotionScript_10008, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c1d8::
ENDC
	dw AnimScript_OnKaboolaDestroyed, MotionScript_10008, Data_3425

IF DEF(EXPORT_SCRIPTS)
Data_1c1de::
ENDC
	dw AnimScript_KrackoJrExplosion, MotionScript_10008, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c1e4::
ENDC
	dw AnimScript_KrackoDespawnGuard, MotionScript_10008, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c1ea::
ENDC
	dw AnimScript_OnKrackoDestroyed, MotionScript_10008, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c1f0::
ENDC
	dw AnimScript_KingDededeDespawnGuard, MotionScript_10008, Properties_361f

IF DEF(EXPORT_SCRIPTS)
Data_1c1f6::
ENDC
	dw AnimScript_22f60, MotionScript_OnKingDededeDestroyed, Data_3421

IF DEF(EXPORT_SCRIPTS)
Data_1c1fc::
ENDC
	dw AnimScript_22def, MotionScript_10008, Data_3421
