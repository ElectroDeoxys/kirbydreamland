DEF EXTRA_MODE EQU 1

SECTION "Bank F", ROMX

INCLUDE "engine/bank0f.asm"


SECTION "Animation Scripts Extra", ROMX

INCLUDE "data/scripts/anim_common.asm"
INCLUDE "data/scripts/extra/anim_scripts.asm"


SECTION "Motion Scripts Extra", ROMX

INCLUDE "data/scripts/motion_common.asm"
INCLUDE "data/scripts/extra/motion_scripts.asm"
