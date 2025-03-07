; item constants
	const_def
	const INVINCIBILITY_CANDY ; $0
	const BOMB                ; $1
	const MIKE                ; $2
	const MINT_LEAF           ; $3
	const SPICY_FOOD          ; $4
	const WARP_STAR           ; $5
	const MAXIM_TOMATO        ; $6
	const ENERGY_DRINK        ; $7
	const SPARKLING_STAR      ; $8
	const ONE_UP              ; $9
	const ITEM_A              ; $a

DEF INVINCIBILITY_DURATION EQU 900
DEF SPICY_FOOD_DURATION    EQU 1020
DEF MINT_LEAF_DURATION     EQU 850

DEF MAX_NUM_STAGE_ITEMS EQU 64

; wPowerUpAttack flags
	const_def
	const POWERUP_MINT_LEAF_F  ; $0
	const POWERUP_MIKE_F       ; $1
	const POWERUP_BOMB_F       ; $2
	const_skip
	const POWERUP_CONSUMABLE_F ; $4

DEF POWERUP_MINT_LEAF  EQU 1 << POWERUP_MINT_LEAF_F
DEF POWERUP_MIKE       EQU 1 << POWERUP_MIKE_F
DEF POWERUP_BOMB       EQU 1 << POWERUP_BOMB_F
DEF POWERUP_CONSUMABLE EQU 1 << POWERUP_CONSUMABLE_F