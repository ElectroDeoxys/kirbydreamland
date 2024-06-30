SECTION "VRAM0", VRAM

v0Tiles0:: ds $80 tiles ; 8000
v0Tiles1:: ds $80 tiles ; 8800
v0Tiles2:: ds $80 tiles ; 9000

v0BGMap0:: ds SCRN_VX_B * SCRN_VY_B ; 9800
v0BGMap1:: ds SCRN_VX_B * SCRN_VY_B ; 9c00

v0End:: ; a000
