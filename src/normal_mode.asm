DEF EXPORT_SCRIPTS EQU 1
DEF EXTRA_MODE EQU 0


SECTION "Bank 7", ROMX

INCLUDE "engine/bank07.asm"


SECTION "Animation Scripts Normal", ROMX

INCLUDE "data/scripts/anim_common.asm"
INCLUDE "data/scripts/normal/anim_scripts.asm"


SECTION "Motion Scripts Normal", ROMX

INCLUDE "data/scripts/motion_common.asm"
INCLUDE "data/scripts/normal/motion_scripts.asm"
