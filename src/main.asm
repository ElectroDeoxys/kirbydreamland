SECTION "Bank 1", ROMX

INCLUDE "engine/bank01.asm"


SECTION "Bank 2", ROMX

Gfx_8000:: INCBIN "gfx/gfx_8000.2bpp.lz"
Gfx_8855:: INCBIN "gfx/gfx_8855.2bpp.lz"
Gfx_8952:: INCBIN "gfx/gfx_8952.2bpp.lz"
Gfx_9266:: INCBIN "gfx/gfx_9266.2bpp.lz"
Gfx_9b2c:: INCBIN "gfx/gfx_9b2c.2bpp.lz"
Gfx_a3ee:: INCBIN "gfx/gfx_a3ee.2bpp.lz"
Gfx_ac49:: INCBIN "gfx/gfx_ac49.2bpp.lz"
Gfx_b7e9: INCBIN "gfx/gfx_b7e9.2bpp.lz"


SECTION "Bank 3", ROMX

BG_c000: INCBIN "data/bg_c000.bin.lz"
Gfx_c1c7: INCBIN "gfx/gfx_c1c7.2bpp.lz"
BG_c2c8: INCBIN "data/bg_c2c8.bin.lz"
BG_c37a: INCBIN "data/bg_c37a.bin.lz"
BG_c41d: INCBIN "data/bg_c41d.bin.lz"
BG_c4c9: INCBIN "data/bg_c4c9.bin.lz"
BG_c541: INCBIN "data/bg_c541.bin.lz"
BG_c665: INCBIN "data/bg_c665.bin.lz"
BG_c6b5: INCBIN "data/bg_c6b5.bin.lz"

Data_c6e0:: INCBIN "data/data_c6e0.bin.lz"
Data_c8d9:: INCBIN "data/data_c8d9.bin.lz"
Data_cac3:: INCBIN "data/data_cac3.bin.lz"
Data_ccff:: INCBIN "data/data_ccff.bin.lz"

Gfx_cfcf: INCBIN "gfx/gfx_cfcf.2bpp.lz"
Gfx_d894: INCBIN "gfx/gfx_d894.2bpp.lz"
Gfx_dcdd: INCBIN "gfx/gfx_dcdd.2bpp.lz"

SECTION "Bank 3@e273", ROMX[$6273], BANK[$3]

Data_e273:: INCBIN "data/data_e273.bin.lz"
Data_e49e:: INCBIN "data/data_e49e.bin.lz"
Data_e593:: INCBIN "data/data_e593.bin.lz"
Data_e5bc:: INCBIN "data/data_e5bc.bin.lz"
Data_e688:: INCBIN "data/data_e688.bin.lz"
Data_e86f:: INCBIN "data/data_e86f.bin.lz"
Data_e8d3:: INCBIN "data/data_e8d3.bin.lz"

SECTION "Bank 3@ea54", ROMX[$6a54], BANK[$3]

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


SECTION "Motion Scripts", ROMX

INCLUDE "data/scripts/motion_scripts.asm"


SECTION "Bank 5", ROMX

INCLUDE "engine/bank05.asm"


SECTION "Bank 6", ROMX

INCLUDE "engine/bank06.asm"


SECTION "Bank 7", ROMX

INCLUDE "engine/bank07.asm"


SECTION "Animation Scripts", ROMX

INCLUDE "data/scripts/anim_scripts.asm"


SECTION "Bank A", ROMX

Gfx_28000: INCBIN "gfx/gfx_28000.2bpp.lz"
Gfx_282ac: INCBIN "gfx/gfx_282ac.2bpp.lz"
Gfx_2888d:: INCBIN "gfx/gfx_2888d.2bpp.lz"
Gfx_290f3:: INCBIN "gfx/gfx_290f3.2bpp.lz"
Gfx_291f5:: INCBIN "gfx/gfx_291f5.2bpp.lz"
Gfx_29b0b:: INCBIN "gfx/gfx_29b0b.2bpp.lz"
Gfx_2a3c1:: INCBIN "gfx/gfx_2a3c1.2bpp.lz"
Gfx_2ac79:: INCBIN "gfx/gfx_2ac79.2bpp.lz"


SECTION "Bank D", ROMX

Gfx_34000: INCBIN "gfx/gfx_34000.2bpp.lz"
Gfx_345c0: INCBIN "gfx/gfx_345c0.2bpp.lz"
Gfx_346fb: INCBIN "gfx/gfx_346fb.2bpp.lz"
BG_34cb4: INCBIN "data/bg_34cb4.bin.lz"
Gfx_34dc0: INCBIN "gfx/gfx_34dc0.2bpp.lz"
BG_3535c: INCBIN "data/bg_3535c.bin.lz"
Gfx_3543e: INCBIN "gfx/gfx_3543e.2bpp.lz"
BG_35987: INCBIN "data/bg_35987.bin.lz"
Gfx_35a89: INCBIN "gfx/gfx_35a89.2bpp.lz"
BG_35fd2: INCBIN "data/bg_35fd2.bin.lz"
Gfx_36063: INCBIN "gfx/gfx_36063.2bpp.lz"
BG_36553: INCBIN "data/bg_36553.bin.lz"
Gfx_36658: INCBIN "gfx/gfx_36658.2bpp.lz"
BG_36b80: INCBIN "data/bg_36b80.bin.lz"
Gfx_36c7c: INCBIN "gfx/gfx_36c7c.2bpp.lz"
BG_3717d: INCBIN "data/bg_3717d.bin.lz"
Gfx_3729b: INCBIN "gfx/gfx_3729b.2bpp.lz"
BG_3779c: INCBIN "data/bg_3779c.bin.lz"
BG_378cc: INCBIN "data/bg_378cc.bin.lz"


SECTION "Bank E", ROMX

Gfx_38000: INCBIN "gfx/gfx_38000.2bpp.lz"
Gfx_38582: INCBIN "gfx/gfx_38582.2bpp.lz"
BG_38ac6: INCBIN "data/bg_38ac6.bin.lz"
Gfx_38bf3: INCBIN "gfx/gfx_38bf3.2bpp.lz"
BG_3911e: INCBIN "data/bg_3911e.bin.lz"
Gfx_39206: INCBIN "gfx/gfx_39206.2bpp.lz"
BG_39707: INCBIN "data/bg_39707.bin.lz"
Gfx_39820: INCBIN "gfx/gfx_39820.2bpp.lz"
BG_39be1: INCBIN "data/bg_39be1.bin.lz"
Gfx_39cbf: INCBIN "gfx/gfx_39cbf.2bpp.lz"
BG_3acce: INCBIN "data/bg_3acce.bin.lz"
Gfx_3add9: INCBIN "gfx/gfx_3add9.2bpp.lz"
BG_3be4a: INCBIN "data/bg_3be4a.bin.lz"


SECTION "Bank F", ROMX

INCLUDE "engine/bank0f.asm"
