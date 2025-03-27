
SFXHeader_00:
	db 2 ; num of channels
	dwb SFX00_Channel1, $00 ; CHANNEL1
	dwb SFX00_Channel2, $04 ; CHANNEL2

SFXHeader_Inhale:
	db 2 ; num of channels
	dwb SFXInhale_Channel1, $04 ; CHANNEL1
	dwb SFXInhale_Channel2, $0c ; CHANNEL2

SFXHeader_02:
	db 1 ; num of channels
	dwb SFX02_Channel1, $04 ; CHANNEL1

SFXHeader_Swallow:
	db 1 ; num of channels
	dwb SFXSwallow_Channel1, $04 ; CHANNEL1

SFXHeader_Jump:
	db 1 ; num of channels
	dwb SFXJump_Channel1, $04 ; CHANNEL1

SFXHeader_Bump:
	db 1 ; num of channels
	dwb SFXBump_Channel1, $04 ; CHANNEL1

SFXHeader_Damage:
	db 2 ; num of channels
	dwb SFXDamage_Channel1, $0c ; CHANNEL1
	dwb SFXDamage_Channel2, $04 ; CHANNEL2

SFXHeader_EnterDoor:
	db 2 ; num of channels
	dwb SFXEnterDoor_Channel1, $04 ; CHANNEL1
	dwb SFXEnterDoor_Channel2, $00 ; CHANNEL2

SFXHeader_08:
	db 1 ; num of channels
	dwb SFX08_Channel1, $04 ; CHANNEL1

SFXHeader_PowerUp:
	db 1 ; num of channels
	dwb SFXPowerUp_Channel1, $04 ; CHANNEL1

SFXHeader_Explosion:
	db 1 ; num of channels
	dwb SFXExplosion_Channel1, $0c ; CHANNEL1

SFXHeader_RestoreHp:
	db 1 ; num of channels
	dwb SFXRestoreHP_Channel1, $04 ; CHANNEL1

SFXHeader_WarpStar:
	db 2 ; num of channels
	dwb SFXWarpStar_Channel1, $04 ; CHANNEL1
	dwb SFXWarpStar_Channel2, $00 ; CHANNEL2

SFXHeader_13:
	db 2 ; num of channels
	dwb SFX13_Channel1, $04 ; CHANNEL1
	dwb SFX13_Channel2, $00 ; CHANNEL2

SFXHeader_14:
	db 1 ; num of channels
	dwb SFX14_Channel1, $0c ; CHANNEL1

SFXHeader_Puff:
	db 1 ; num of channels
	dwb SFXPuff_Channel1, $04 ; CHANNEL1

SFXHeader_StarSpit:
	db 1 ; num of channels
	dwb SFXStarSpit_Channel1, $04 ; CHANNEL1

SFXHeader_17:
	db 1 ; num of channels
	dwb SFX17_Channel1, $0c ; CHANNEL1

SFXHeader_18:
	db 1 ; num of channels
	dwb SFX18_Channel1, $04 ; CHANNEL1

SFXHeader_19:
	db 1 ; num of channels
	dwb SFX19_Channel1, $0c ; CHANNEL1

SFXHeader_20:
	db 1 ; num of channels
	dwb SFX20_Channel1, $0c ; CHANNEL1

SFXHeader_LoseLife:
	db 1 ; num of channels
	dwb SFXLoseLife_Channel1, $0c ; CHANNEL1

SFXHeader_1Up:
	db 2 ; num of channels
	dwb SFX1Up_Channel1, $00 ; CHANNEL1
	dwb SFX1Up_Channel2, $04 ; CHANNEL2

SFXHeader_23:
	db 3 ; num of channels
	dwb SFX23_Channel1, $0c ; CHANNEL1
	dwb SFX23_Channel2, $04 ; CHANNEL2
	dwb SFX23_Channel3, $00 ; CHANNEL3

SFXHeader_PauseOff:
	db 4 ; num of channels
	dwb SFXPauseOff_Channel1, $04 ; CHANNEL1
	dwb SFXPauseOff_Channel2, $00 ; CHANNEL2
	dwb SFXPauseOff_Channel3, $10 ; CHANNEL3
	dwb SFXPauseOff_Channel4, $0c ; CHANNEL4

SFXHeader_25:
	db 1 ; num of channels
	dwb SFX25_Channel1, $0c ; CHANNEL1

SFXHeader_Cursor:
	db 1 ; num of channels
	dwb SFXCursor_Channel1, $04 ; CHANNEL1

SFXHeader_GameStart:
	db 1 ; num of channels
	dwb SFXGameStart_Channel1, $04 ; CHANNEL1

SFXHeader_28:
	db 1 ; num of channels
	dwb SFX28_Channel1, $0c ; CHANNEL1

SFXHeader_29:
	db 3 ; num of channels
	dwb SFX29_Channel1, $0c ; CHANNEL1
	dwb SFX29_Channel2, $04 ; CHANNEL2
	dwb SFX29_Channel3, $00 ; CHANNEL3

SFXHeader_30:
	db 1 ; num of channels
	dwb SFX30_Channel1, $04 ; CHANNEL1

SFXHeader_31:
	db 1 ; num of channels
	dwb SFX31_Channel1, $04 ; CHANNEL1

SFXHeader_BossDefeat:
	db 1 ; num of channels
	dwb SFXBossDefeat_Channel1, $0c ; CHANNEL1

SFXHeader_PauseOn:
	db 4 ; num of channels
	dwb SFXPauseOn_Channel1, $04 ; CHANNEL1
	dwb SFXPauseOn_Channel2, $00 ; CHANNEL2
	dwb SFXPauseOn_Channel3, $10 ; CHANNEL3
	dwb SFXPauseOn_Channel4, $0c ; CHANNEL4

SFXHeader_34:
	db 2 ; num of channels
	dwb SFX34_Channel1, $04 ; CHANNEL1
	dwb SFXInhale_Channel2, $0c ; CHANNEL2

SFXHeader_35:
	db 1 ; num of channels
	dwb SFX35_Channel1, $04 ; CHANNEL1
