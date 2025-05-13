SECTION "Bank 1", ROMX

INCLUDE "engine/bank01.asm"


SECTION "Bank 5", ROMX

INCLUDE "engine/bank05.asm"


SECTION "Bank 6", ROMX

INCLUDE "engine/title_screen.asm"
INCLUDE "engine/start_stage.asm"
INCLUDE "data/stage_musics.asm"
INCLUDE "engine/load_level_gfx.asm"
INCLUDE "engine/stage_intro.asm"
INCLUDE "engine/stage_transition.asm"
INCLUDE "engine/pause.asm"
INCLUDE "engine/game_over.asm"
INCLUDE "engine/epilogue.asm"
INCLUDE "engine/update_objects.asm"
INCLUDE "data/bgmaps/stage_intros.asm"
INCLUDE "data/stage_transitions.asm"

BG_192d6: INCBIN "data/bgmaps/bg_192d6.tilemap"

; unreferenced
BG_19452: INCBIN "data/bgmaps/bg_19452.tilemap"
BG_19786: INCBIN "data/bgmaps/bg_19786.tilemap"
; unreferenced
BG_198ac: INCBIN "data/bgmaps/bg_198ac.tilemap"
BG_19e86: INCBIN "data/bgmaps/bg_19e86.tilemap"

INCLUDE "data/credits.asm"
INCLUDE "engine/configuration.asm"


SECTION "Level Blocks", ROMX

Data_1a800:: INCBIN "data/level_blocks/data_1a800.bin.lz"
Data_1a9d7:: INCBIN "data/level_blocks/data_1a9d7.bin.lz"
Data_1ab94:: INCBIN "data/level_blocks/data_1ab94.bin.lz"
Data_1ace8:: INCBIN "data/level_blocks/data_1ace8.bin.lz"
Data_1ae6d:: INCBIN "data/level_blocks/data_1ae6d.bin.lz"
Data_1b12d:: INCBIN "data/level_blocks/data_1b12d.bin.lz"
Data_1b16e:: INCBIN "data/level_blocks/data_1b16e.bin.lz"
Data_1b1e2:: INCBIN "data/level_blocks/data_1b1e2.bin.lz"
Data_1b225:: INCBIN "data/level_blocks/data_1b225.bin.lz"
Data_1b39c:: INCBIN "data/level_blocks/data_1b39c.bin.lz"
Data_1b497:: INCBIN "data/level_blocks/data_1b497.bin.lz"
Data_1b653:: INCBIN "data/level_blocks/data_1b653.bin.lz"
Data_1b77c:: INCBIN "data/level_blocks/data_1b77c.bin.lz"


IF DEF(_KDL_JP) || DEF(_KDL_JP11)
BG_1b835:: INCBIN "data/bgmaps/bg_1b835_jp.tilemap.lz"
BG_1b8df:: INCBIN "data/bgmaps/bg_1b8df_jp.tilemap.lz"
BG_1b95d:: INCBIN "data/bgmaps/bg_1b95d_jp.tilemap.lz"
BG_1b9f9:: INCBIN "data/bgmaps/bg_1b9f9_jp.tilemap.lz"
BG_1baaf:: INCBIN "data/bgmaps/bg_1baaf.tilemap.lz"
ConfigurationGfx: INCBIN "gfx/configuration_jp.2bpp.lz"
ELSE
BG_1b835:: INCBIN "data/bgmaps/bg_1b835.tilemap.lz"
BG_1b8df:: INCBIN "data/bgmaps/bg_1b8df.tilemap.lz"
BG_1b95d:: INCBIN "data/bgmaps/bg_1b95d.tilemap.lz"
BG_1b9f9:: INCBIN "data/bgmaps/bg_1b9f9.tilemap.lz"
BG_1baaf:: INCBIN "data/bgmaps/bg_1baaf.tilemap.lz"
ConfigurationGfx: INCBIN "gfx/configuration.2bpp.lz"
ENDC


SECTION "OAM", ROMX

INCLUDE "data/oam.asm"
