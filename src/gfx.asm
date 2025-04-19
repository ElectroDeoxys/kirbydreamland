SECTION "Bank 2", ROMX

CommonGfx:: INCBIN "gfx/objects/common.2bpp.lz"
HUDGfx::    INCBIN "gfx/hud.2bpp.lz"
GreenGreensGfx:: INCBIN "gfx/objects/green_greens.2bpp.lz"
CastleLololoGfx:: INCBIN "gfx/objects/castle_lololo.2bpp.lz"
FloatIslandsGfx:: INCBIN "gfx/objects/float_islands.2bpp.lz"
BubblyCloudsGfx:: INCBIN "gfx/objects/bubbly_clouds.2bpp.lz"
MtDededeGfx:: INCBIN "gfx/objects/mt_dedede.2bpp.lz"
FontGfx:: INCBIN "gfx/font.2bpp.lz"
IF DEF(_KDL_JP) || DEF(_KDL_JP11)
TitleScreen1Gfx:: INCBIN "gfx/title_screen_1_jp.2bpp.lz"
TitleScreen2Gfx:: INCBIN "gfx/title_screen_2_jp.2bpp.lz"
ENDC


SECTION "Bank 3", ROMX

BG_c000::
IF DEF(_KDL_JP) || DEF(_KDL_JP11)
	INCBIN "data/bg_c000_jp.bin.lz"
ELSE
	INCBIN "data/bg_c000.bin.lz"
ENDC
FontWoNumbersGfx:: INCBIN "gfx/font_wo_numbers.2bpp.lz"
BG_c2c8:: INCBIN "data/bg_c2c8.bin.lz"
BG_c37a:: INCBIN "data/bg_c37a.bin.lz"
BG_c41d:: INCBIN "data/bg_c41d.bin.lz"
BG_c4c9:: INCBIN "data/bg_c4c9.bin.lz"
BG_c541::
IF DEF(_KDL_JP) || DEF(_KDL_JP11)
	INCBIN "data/bg_c541_jp.bin.lz"
ELSE
	INCBIN "data/bg_c541.bin.lz"
ENDC
BG_c665:: INCBIN "data/bg_c665.bin.lz"
BG_c6b5:: INCBIN "data/bg_c6b5.bin.lz"

Data_c6e0:: INCBIN "data/data_c6e0.bin.lz"
Data_c8d9:: INCBIN "data/data_c8d9.bin.lz"
Data_cac3:: INCBIN "data/data_cac3.bin.lz"
Data_ccff:: INCBIN "data/data_ccff.bin.lz"

Epilogue1Gfx::
IF DEF(_KDL_JP) || DEF(_KDL_JP11)
	INCBIN "gfx/epilogue_1_jp.2bpp.lz"
ELSE
	INCBIN "gfx/epilogue_1.2bpp.lz"
ENDC
Epilogue2Gfx:: INCBIN "gfx/epilogue_2.2bpp.lz"
StageIntroGfx::
IF DEF(_KDL_JP) || DEF(_KDL_JP11)
	INCBIN "gfx/stage_intro_jp.2bpp.lz"
ELSE
	INCBIN "gfx/stage_intro.2bpp.lz"
ENDC

; unreferenced
Data_e195:: INCBIN "data/data_e195.bin.lz"

Data_e273:: INCBIN "data/data_e273.bin.lz"
Data_e49e:: INCBIN "data/data_e49e.bin.lz"
Data_e593:: INCBIN "data/data_e593.bin.lz"
Data_e5bc:: INCBIN "data/data_e5bc.bin.lz"
Data_e688:: INCBIN "data/data_e688.bin.lz"
Data_e86f:: INCBIN "data/data_e86f.bin.lz"
Data_e8d3:: INCBIN "data/data_e8d3.bin.lz"

; unreferenced
Data_ea2c:: INCBIN "data/data_ea2c.bin.lz"

Data_ea54:: INCBIN "data/data_ea54.bin.lz"
Data_ea78:: INCBIN "data/data_ea78.bin.lz"
Data_ead2:: INCBIN "data/data_ead2.bin.lz"
Data_eba1:: INCBIN "data/data_eba1.bin.lz"
Data_eda3:: INCBIN "data/data_eda3.bin.lz"
Data_f005:: INCBIN "data/data_f005.bin.lz"
Data_f199:: INCBIN "data/data_f199.bin.lz"
Data_f1cd:: INCBIN "data/data_f1cd.bin.lz"
Data_f234:: INCBIN "data/data_f234.bin.lz"
Data_f317:: INCBIN "data/data_f317.bin.lz"
Data_f33d:: INCBIN "data/data_f33d.bin.lz"
Data_f366:: INCBIN "data/data_f366.bin.lz"
Data_f3f1:: INCBIN "data/data_f3f1.bin.lz"
Data_f42b:: INCBIN "data/data_f42b.bin.lz"
Data_f4ba:: INCBIN "data/data_f4ba.bin.lz"
Data_f58d:: INCBIN "data/data_f58d.bin.lz"
Data_f626:: INCBIN "data/data_f626.bin.lz"
Data_f669:: INCBIN "data/data_f669.bin.lz"
Data_f6bc:: INCBIN "data/data_f6bc.bin.lz"
Data_f71e:: INCBIN "data/data_f71e.bin.lz"
Data_f771:: INCBIN "data/data_f771.bin.lz"
Data_f801:: INCBIN "data/data_f801.bin.lz"
Data_f843:: INCBIN "data/data_f843.bin.lz"
Data_fac5:: INCBIN "data/data_fac5.bin.lz"
Data_fc9f:: INCBIN "data/data_fc9f.bin.lz"
Data_fe39:: INCBIN "data/data_fe39.bin.lz"


SECTION "Bank A", ROMX

IF !DEF(_KDL_JP) && !DEF(_KDL_JP11)
TitleScreen1Gfx:: INCBIN "gfx/title_screen_1.2bpp.lz"
TitleScreen2Gfx:: INCBIN "gfx/title_screen_2.2bpp.lz"
ENDC
CommonExtraGfx:: INCBIN "gfx/objects/common_extra.2bpp.lz"
HUDExtraGfx:: INCBIN "gfx/hud_extra.2bpp.lz"
GreenGreensExtraGfx:: INCBIN "gfx/objects/green_greens_extra.2bpp.lz"
CastleLololoExtraGfx:: INCBIN "gfx/objects/castle_lololo_extra.2bpp.lz"
FloatIslandsExtraGfx:: INCBIN "gfx/objects/float_islands_extra.2bpp.lz"
BubblyCloudsExtraGfx:: INCBIN "gfx/objects/bubbly_clouds_extra.2bpp.lz"


SECTION "Bank D", ROMX

GreenGreensCredits1Gfx:: INCBIN "gfx/credits/green_greens_1.2bpp.lz"
BG_345c0:: INCBIN "data/bg_345c0.bin.lz"
GreenGreensCredits2Gfx:: INCBIN "gfx/credits/green_greens_2.2bpp.lz"
BG_34cb4:: INCBIN "data/bg_34cb4.bin.lz"
GreenGreensCredits3Gfx:: INCBIN "gfx/credits/green_greens_3.2bpp.lz"
BG_3535c:: INCBIN "data/bg_3535c.bin.lz"
CastleLololoCredits1Gfx:: INCBIN "gfx/credits/castle_lololo_1.2bpp.lz"
BG_35987:: INCBIN "data/bg_35987.bin.lz"
CastleLololoCredits2Gfx:: INCBIN "gfx/credits/castle_lololo_2.2bpp.lz"
BG_35fd2:: INCBIN "data/bg_35fd2.bin.lz"
FloatIslandsCredits1Gfx:: INCBIN "gfx/credits/float_islands_1.2bpp.lz"
BG_36553:: INCBIN "data/bg_36553.bin.lz"
FloatIslandsCredits2Gfx:: INCBIN "gfx/credits/float_islands_2.2bpp.lz"
BG_36b80:: INCBIN "data/bg_36b80.bin.lz"
BubblyCloudsCredits1Gfx:: INCBIN "gfx/credits/bubbly_clouds_1.2bpp.lz"
BG_3717d:: INCBIN "data/bg_3717d.bin.lz"
BubblyCloudsCredits2Gfx:: INCBIN "gfx/credits/bubbly_clouds_2.2bpp.lz"
BG_3779c:: INCBIN "data/bg_3779c.bin.lz"
BG_378cc:: INCBIN "data/bg_378cc.bin.lz"


SECTION "Bank E", ROMX

GreenGreensCredits4Gfx:: INCBIN "gfx/credits/green_greens_4.2bpp.lz"
CastleLololoCredits3Gfx:: INCBIN "gfx/credits/castle_lololo_3.2bpp.lz"
BG_38ac6:: INCBIN "data/bg_38ac6.bin.lz"
FloatIslandsCredits3Gfx:: INCBIN "gfx/credits/float_islands_3.2bpp.lz"
BG_3911e:: INCBIN "data/bg_3911e.bin.lz"
BubblyCloudsCredits3Gfx:: INCBIN "gfx/credits/bubbly_clouds_3.2bpp.lz"
BG_39707:: INCBIN "data/bg_39707.bin.lz"
MtDededeCreditsGfx:: INCBIN "gfx/credits/mt_dedede.2bpp.lz"
BG_39be1:: INCBIN "data/bg_39be1.bin.lz"

IF DEF(_KDL_JP) || DEF(_KDL_JP11)
ConfigModeUnlockGfx:: INCBIN "gfx/config_mode_unlock_jp.2bpp.lz"
BG_3acce:: INCBIN "data/bg_3acce_jp.bin.lz"
ExtraGameUnlockGfx:: INCBIN "gfx/extra_game_unlock_jp.2bpp.lz"
BG_3be4a:: INCBIN "data/bg_3be4a_jp.bin.lz"
ELSE
ConfigModeUnlockGfx:: INCBIN "gfx/config_mode_unlock.2bpp.lz"
BG_3acce:: INCBIN "data/bg_3acce.bin.lz"
ExtraGameUnlockGfx:: INCBIN "gfx/extra_game_unlock.2bpp.lz"
BG_3be4a:: INCBIN "data/bg_3be4a.bin.lz"
ENDC
