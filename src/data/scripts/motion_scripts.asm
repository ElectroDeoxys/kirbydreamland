MotionScript_InhaledObject:
	set_custom_func InhaleObject, NULL
	set_velocities  0, 0, 0

MotionScript_10008:
	set_velocities  0, 0, 0

MotionScript_1000b:
	set_position $18, $00
	set_velocities 60, VEL_RIGHT_0_75, VEL_DOWN_2_00
	jump_abs MotionScript_106a2

MotionScript_10014:
	set_position $08, $52
	set_anim_script AnimScript_20bfe
	set_velocities  1, 0, 0
	create_object AnimScript_Explosion, MotionScript_102e0, Data_3425
	set_velocities 10, VEL_RIGHT_2_00, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	jump_abs MotionScript_106dc

MotionScript_1002f:
	set_position $44, $08
	set_velocities 40, VEL_RIGHT_0_50, VEL_DOWN_2_00
	play_sfx SFX_08
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	script_end

MotionScript_10056:
	set_anim_script AnimScript_20c01
	set_position $1e, $86
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_3_00
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_2_00
	play_sfx SFX_30
	set_anim_script AnimScript_20c10
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_25
	jump_abs MotionScript_106dc

MotionScript_100bf:
	set_position $51, $48
	set_anim_script AnimScript_20bfe
	set_velocities  1, 0, 0
	create_object AnimScript_20ae6, MotionScript_10713, Data_3425
	create_object AnimScript_20ae6, MotionScript_1071f, Data_3425
	create_object AnimScript_20ae6, MotionScript_1072b, Data_3425
	create_object AnimScript_20ae6, MotionScript_10737, Data_3425
	create_object AnimScript_20ae6, MotionScript_10743, Data_3425
	create_object AnimScript_20ae6, MotionScript_10767, Data_3425
	create_object AnimScript_20ae6, MotionScript_1074f, Data_3425
	create_object AnimScript_20ae6, MotionScript_1075b, Data_3425
	create_object AnimScript_20138, MotionScript_10008, Data_3425
	play_sfx SFX_LOSE_LIFE
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_8TH
	play_sfx SFX_28
	jump_abs MotionScript_106dc

MotionScript_1011d:
	set_position $58, $78
	set_anim_script AnimScript_15f1
	set_velocities  1, 0, 0
	script_exec Func_4ac1
	set_flags hKirbyFlags3, KIRBY3F_UNK2 | KIRBY3F_DIVE, $00
	set_value wd3dd, $01
	set_velocities  0, 0, 0

MotionScript_10137:
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_25
	set_velocities  8, 0, VEL_DOWN_0_25
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  0, 0, VEL_DOWN_3_00

MotionScript_10149:
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	script_repeat 3
	set_velocities  1, VEL_LEFT_2_00, VEL_UP_4_00
	set_velocities  1, VEL_RIGHT_2_00, VEL_UP_2_00
	script_repeat_end
	script_exec Func_4ac1
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	set_velocities  0, 0, 0

MotionScript_10162:
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	script_repeat 4
	set_velocities  1, VEL_LEFT_2_00, VEL_DOWN_1_25
	set_velocities  1, VEL_RIGHT_2_00, VEL_DOWN_1_25
	script_repeat_end
	script_exec Func_4ac1
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	set_velocities  0, 0, 0
; 0x1017b

SECTION "Bank 4@422a", ROMX[$422a], BANK[$4]

MotionScript_1022a:
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1023a
	set_velocities  8, VEL_LEFT_4_00, 0
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities 10, VEL_LEFT_0_50, 0
	script_end

.script_1023a
	set_velocities  8, VEL_RIGHT_4_00, 0
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities 10, VEL_RIGHT_0_50, 0
	script_end

MotionScript_10244:
	jump_if_flags hEngineFlags, KABOOLA_BATTLE, .script_1026a
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1025d
	set_velocities 16, VEL_LEFT_3_00, 0
	set_velocities  8, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_1_8TH, 0
	set_velocities  8, 0, 0
	script_end
.script_1025d
	set_velocities 16, VEL_RIGHT_3_00, 0
	set_velocities  8, VEL_RIGHT_0_75, 0
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	set_velocities  8, 0, 0
	script_end

.script_1026a
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_10273
	set_velocities  0, VEL_LEFT_4_00, 0
.script_10273
	set_velocities  0, VEL_RIGHT_4_00, 0

MotionScript_10276:
	set_position $40, $78
	set_anim_script AnimScript_15f1
	set_velocities  1, 0, 0
	script_exec Func_4ac1
	set_flags hKirbyFlags5, KIRBY5F_TRIGGER_TRANSITION, $00
	set_velocities  0, 0, 0

MotionScript_1028c::
	set_velocities  2, VEL_RIGHT_4_00, 0
	set_velocities  4, 0, 0
	set_velocities  2, VEL_LEFT_4_00, 0
	set_velocities  0, 0, 0
; 0x10298

SECTION "Bank 4@42bc", ROMX[$42bc], BANK[$4]

MotionScript_102bc::
	set_velocities  2, VEL_LEFT_4_00, 0
	set_velocities  4, 0, 0
	set_velocities  2, VEL_RIGHT_4_00, 0
	set_velocities  0, 0, 0

MotionScript_102c8:
	set_velocities  0, VEL_LEFT_0_25, 0
; 0x102cb

SECTION "Bank 4@42ce", ROMX[$42ce], BANK[$4]

MotionScript_102ce:
	set_velocities  0, VEL_LEFT_0_50, 0

MotionScript_102d1:
	set_velocities  0, VEL_RIGHT_0_50, 0
; 0x102d4

SECTION "Bank 4@42da", ROMX[$42da], BANK[$4]

MotionScript_102da:
	set_velocities  0, VEL_LEFT_1_00, 0
; 0x102dd

SECTION "Bank 4@42e0", ROMX[$42e0], BANK[$4]

MotionScript_102e0:
	set_velocities  0, VEL_RIGHT_1_00, 0
; 0x102e3

SECTION "Bank 4@42fb", ROMX[$42fb], BANK[$4]

MotionScript_102fb:
	script_exec Func_30b2
	dw MotionScript_SpitStar_Right, MotionScript_SpitStar_Left

MotionScript_SpitStar:
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, MotionScript_SpitStar_Right
MotionScript_SpitStar_Left:
	set_velocities  0, VEL_LEFT_3_00, 0
MotionScript_SpitStar_Right:
	set_velocities  0, VEL_RIGHT_3_00, 0
; 0x1030e

SECTION "Bank 4@4317", ROMX[$4317], BANK[$4]

MotionScript_10317:
	set_velocities  0, VEL_LEFT_4_00, 0
; 0x1031a

SECTION "Bank 4@431d", ROMX[$431d], BANK[$4]

MotionScript_1031d:
	set_velocities  1, 0, 0
.loop
	script_exec SetObjectPalLight
	script_delay 28
	script_exec SetObjectPalDark
	script_delay 4
	jump_abs .loop
; 0x1032d

SECTION "Bank 4@4346", ROMX[$4346], BANK[$4]

MotionScript_10346:
.loop
	set_velocities  5, 0, 0
	set_velocities  9, 0, VEL_UP_0_25
	set_velocities  9, 0, VEL_UP_0_75
	script_exec SetObjectPalDark
	set_velocities  9, 0, VEL_UP_0_25
	script_exec SetObjectPalLight
	set_velocities  5, 0, 0
	set_velocities  9, 0, VEL_DOWN_0_25
	script_exec SetObjectPalDark
	set_velocities  9, 0, VEL_DOWN_0_75
	script_exec SetObjectPalLight
	set_velocities  4, 0, VEL_DOWN_0_25
	set_velocities  5, 0, VEL_DOWN_0_25
	jump_abs .loop
; 0x10370

SECTION "Bank 4@4370", ROMX[$4370], BANK[$4]

MotionScript_10370:
	set_value wd3bf, $01
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1038d
	position_offset 0, 6
	set_velocities  2, VEL_LEFT_2_00, 0
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_0_50, 0
	jump_rel .jump
.script_1038d
	set_velocities  2, VEL_RIGHT_2_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	set_velocities  4, VEL_RIGHT_0_50, 0
.jump
	set_velocities  0, 0, 0
; 0x10399

SECTION "Bank 4@43ff", ROMX[$43ff], BANK[$4]

MotionScript_103ff:
.loop
	set_velocities 10, VEL_LEFT_0_25, 0
	set_velocities 30, VEL_LEFT_0_50, 0
	set_velocities 10, VEL_LEFT_0_25, 0
	set_velocities 10, VEL_RIGHT_0_25, 0
	set_velocities 30, VEL_RIGHT_0_50, 0
	set_velocities 10, VEL_RIGHT_0_25, 0
	jump_abs .loop
; 0x10414

SECTION "Bank 4@442f", ROMX[$442f], BANK[$4]

MotionScript_1042f:
.loop
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities 48, VEL_LEFT_1_25, 0
	set_velocities 16, VEL_LEFT_0_50, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	set_velocities 48, VEL_RIGHT_1_25, 0
	set_velocities 16, VEL_RIGHT_0_50, 0
	jump_abs .loop
; 0x10444

SECTION "Bank 4@4508", ROMX[$4508], BANK[$4]

MotionScript_10508:
.loop
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_DOWN_0_25
	set_velocities 64, 0, VEL_DOWN_0_50
	set_velocities 32, 0, VEL_DOWN_0_25
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_UP_0_25
	set_velocities 64, 0, VEL_UP_0_50
	set_velocities 32, 0, VEL_UP_0_25
	jump_abs .loop
; 0x10523

SECTION "Bank 4@467d", ROMX[$467d], BANK[$4]

MotionScript_1067d:
.loop
	set_anim_script AnimScript_2063b
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_0_75
	jump_random 33 percent + 1, .loop
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_25
	jump_random 50 percent + 1, .loop
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_1_25
	jump_abs .loop

MotionScript_106a2:
	create_object AnimScript_20138, MotionScript_10008, Data_3425
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_anim_script AnimScript_2010f
	set_velocities  8, 0, VEL_UP_3_00
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
MotionScript_106dc:
	script_exec Func_4ac1
	set_flags hKirbyFlags3, KIRBY3F_UNK2 | KIRBY3F_DIVE, $00
	set_value wd3dd, $01
	set_velocities  0, 0, 0

MotionScript_106eb:
	position_offset -4, -4
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities 48, VEL_LEFT_1_8TH, VEL_UP_0_25
	script_end

MotionScript_106f5:
	position_offset 4, -4
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities 48, VEL_RIGHT_1_8TH, VEL_UP_0_25
	script_end

MotionScript_106ff:
	position_offset -6, 0
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities 48, VEL_LEFT_0_25, 0
	script_end

MotionScript_10709:
	position_offset 6, 0
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities 48, VEL_RIGHT_0_25, 0
	script_end

MotionScript_10713:
	set_velocities  6, 0, VEL_UP_6_00
	set_velocities  6, 0, VEL_UP_3_00
	set_velocities  6, 0, VEL_UP_1_25
	set_velocities  0, 0, VEL_UP_0_75

MotionScript_1071f:
	set_velocities  6, VEL_RIGHT_6_00, 0
	set_velocities  6, VEL_RIGHT_3_00, 0
	set_velocities  6, VEL_RIGHT_1_25, 0
	set_velocities  0, VEL_RIGHT_0_75, 0

MotionScript_1072b:
	set_velocities  6, 0, VEL_DOWN_6_00
	set_velocities  6, 0, VEL_DOWN_3_00
	set_velocities  6, 0, VEL_DOWN_1_25
	set_velocities  0, 0, VEL_DOWN_0_75

MotionScript_10737:
	set_velocities  6, VEL_LEFT_6_00, 0
	set_velocities  6, VEL_LEFT_3_00, 0
	set_velocities  6, VEL_LEFT_1_25, 0
	set_velocities  0, VEL_LEFT_0_75, 0

MotionScript_10743:
	set_velocities  6, VEL_RIGHT_4_00, VEL_UP_4_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_UP_0_50

MotionScript_1074f:
	set_velocities  6, VEL_RIGHT_4_00, VEL_DOWN_4_00
	set_velocities  6, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_0_50

MotionScript_1075b:
	set_velocities  6, VEL_LEFT_4_00, VEL_DOWN_4_00
	set_velocities  6, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_0_50

MotionScript_10767:
	set_velocities  6, VEL_LEFT_4_00, VEL_UP_4_00
	set_velocities  6, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  0, VEL_LEFT_0_50, VEL_UP_0_50

MotionScript_10773:
	set_velocities  6, 0, VEL_UP_4_00
	set_velocities  6, 0, VEL_UP_1_25
	set_velocities  6, 0, VEL_UP_1_8TH
	script_end

MotionScript_1077d:
	set_velocities  6, VEL_LEFT_4_00, 0
	set_velocities  6, VEL_LEFT_1_25, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_end

MotionScript_10787:
	set_velocities  6, 0, VEL_DOWN_4_00
	set_velocities  6, 0, VEL_DOWN_1_25
	set_velocities  6, 0, VEL_DOWN_1_8TH
	script_end

MotionScript_10791:
	set_velocities  6, VEL_LEFT_4_00, 0
	set_velocities  6, VEL_LEFT_1_25, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_end

MotionScript_1079b:
	set_velocities  6, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_16TH, VEL_UP_1_16TH
	script_end
; 0x107a5

SECTION "Bank 4@47af", ROMX[$47af], BANK[$4]

MotionScript_107af:
	set_velocities  6, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_1_16TH, VEL_DOWN_1_16TH
	script_end

MotionScript_107b9:
	set_velocities  6, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  6, VEL_LEFT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_1_16TH, VEL_UP_1_16TH
	script_end

MotionScript_107c3:
	jumptable_random %111
	dw .script_107d5
	dw .script_107e1
	dw .script_107ed
	dw .script_107f9
	dw .script_10805
	dw .script_10811
	dw .script_1081d
	dw .script_10829

.script_107d5
	position_offset 0, -6
	set_velocities  3, 0, VEL_UP_3_00
	set_velocities  3, 0, VEL_UP_2_00
	set_velocities  0, 0, 0

.script_107e1
	position_offset 5, -5
	set_velocities  3, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  0, 0, 0

.script_107ed
	position_offset 6, 0
	set_velocities  3, VEL_RIGHT_3_00, 0
	set_velocities  3, VEL_RIGHT_2_00, 0
	set_velocities  0, 0, 0

.script_107f9
	position_offset 5, 5
	set_velocities  3, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  0, 0, 0

.script_10805
	position_offset 0, 6
	set_velocities  3, 0, VEL_DOWN_3_00
	set_velocities  3, 0, VEL_DOWN_2_00
	set_velocities  0, 0, 0

.script_10811
	position_offset -5, 5
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  0, 0, 0

.script_1081d
	position_offset -6, 0
	set_velocities  3, VEL_LEFT_3_00, 0
	set_velocities  3, VEL_LEFT_2_00, 0
	set_velocities  0, 0, 0

.script_10829
	position_offset -5, -5
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  0, 0, 0

MotionScript_10835:
	set_velocities  4, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_50
	script_end

MotionScript_1083f:
	set_velocities  3, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_1_25
	script_end

MotionScript_10846:
	set_velocities  4, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  4, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_end

MotionScript_10850:
	set_velocities  3, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	script_end

MotionScript_10857:
	set_velocities  3, 0, VEL_UP_4_00
	set_velocities  3, 0, VEL_UP_2_00
	set_velocities  3, 0, VEL_UP_1_00
	script_end

MotionScript_10861:
	set_velocities  3, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_UP_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_50
	script_end

MotionScript_1086b:
	set_velocities  3, VEL_RIGHT_4_00, 0
	set_velocities  3, VEL_RIGHT_2_00, 0
	set_velocities  3, VEL_RIGHT_1_00, 0
	script_end

MotionScript_10875:
	set_velocities  3, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  3, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_50
	script_end

MotionScript_1087f:
	set_velocities  3, 0, VEL_DOWN_4_00
	set_velocities  3, 0, VEL_DOWN_2_00
	set_velocities  3, 0, VEL_DOWN_1_00
	script_end

MotionScript_10889:
	set_velocities  3, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  3, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_0_50
	script_end

MotionScript_10893:
	set_velocities  3, VEL_LEFT_4_00, 0
	set_velocities  3, VEL_LEFT_2_00, 0
	set_velocities  3, VEL_LEFT_1_00, 0
	script_end

MotionScript_1089d:
	set_velocities  3, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_0_50
	script_end

MotionScript_108a7:
	set_velocities  3, VEL_RIGHT_2_00, VEL_UP_4_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_1_16TH, VEL_UP_0_25
	script_end

MotionScript_108b4:
	set_velocities  3, VEL_RIGHT_4_00, VEL_UP_2_00
	set_velocities  3, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_UP_0_25
	set_velocities  3, VEL_RIGHT_0_25, VEL_UP_1_16TH
	script_end

MotionScript_108c1:
	set_velocities  3, VEL_RIGHT_4_00, VEL_DOWN_2_00
	set_velocities  3, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_0_25
	set_velocities  3, VEL_RIGHT_0_25, VEL_DOWN_1_16TH
	script_end

MotionScript_108ce:
	set_velocities  3, VEL_RIGHT_2_00, VEL_DOWN_4_00
	set_velocities  3, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  3, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  3, VEL_RIGHT_1_16TH, VEL_DOWN_0_25
	script_end

MotionScript_108db:
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_4_00
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_1_16TH, VEL_DOWN_0_25
	script_end

MotionScript_108e8:
	set_velocities  3, VEL_LEFT_4_00, VEL_DOWN_2_00
	set_velocities  3, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities  3, VEL_LEFT_0_25, VEL_DOWN_1_16TH
	script_end

MotionScript_108f5:
	set_velocities  3, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  3, VEL_LEFT_0_25, VEL_UP_1_16TH
	script_end

MotionScript_10902:
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_4_00
	set_velocities  3, VEL_LEFT_1_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  3, VEL_LEFT_1_16TH, VEL_UP_0_25
	script_end
 
MotionScript_1090f:
	set_velocities  2, VEL_RIGHT_3_00, VEL_UP_3_00
	set_velocities  2, 0, VEL_UP_4_00
MotionScript_10915:
	set_velocities  2, VEL_LEFT_3_00, VEL_UP_3_00
	set_velocities  2, VEL_LEFT_4_00, 0
MotionScript_1091b:
	set_velocities  2, VEL_LEFT_3_00, VEL_DOWN_3_00
	set_velocities  2, 0, VEL_DOWN_4_00
MotionScript_10921:
	set_velocities  2, VEL_RIGHT_3_00, VEL_DOWN_3_00
	set_velocities  2, VEL_RIGHT_4_00, 0
	jump_abs MotionScript_1090f

MotionScript_1092a:
	script_call MotionScript_10a75
	set_velocities 20, 0, 0
	set_velocities 20, 0, VEL_UP_1_16TH
	set_velocities 16, VEL_LEFT_1_8TH, VEL_UP_1_25
	set_velocities 16, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_4_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_4_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_UP_4_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_4_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_4_00
	set_velocities 32, VEL_RIGHT_2_00, 0
	set_velocities 128, VEL_LEFT_1_8TH, VEL_DOWN_0_50
	set_velocities  0, 0, 0

MotionScript_1096c:
	script_call MotionScript_10a75
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_0_50
	set_velocities  8, 0, VEL_UP_0_50
	set_velocities  8, 0, VEL_UP_1_25
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities 12, 0, VEL_UP_4_00
	set_velocities  8, VEL_LEFT_4_00, 0
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities  8, 0, 0
	script_repeat 22
	set_velocities  2, VEL_RIGHT_1_25, VEL_UP_1_00
	set_velocities  2, VEL_RIGHT_2_00, VEL_DOWN_1_00
	create_object AnimScript_208f1, MotionScript_135bc, Data_3425
	script_repeat_end
	set_velocities  0, VEL_LEFT_0_75, 0

MotionScript_109a3:
	script_call MotionScript_10a75
	set_velocities  8, 0, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_4_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_4_00
	set_velocities  8, VEL_LEFT_0_25, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_1_8TH
	set_velocities 16, 0, VEL_DOWN_0_00
	play_sfx SFX_WARP_STAR
	script_repeat 15
	create_object AnimScript_208f1, MotionScript_10a13, Data_3425
	set_velocities  2, VEL_RIGHT_0_00, VEL_UP_2_00
	set_velocities  2, VEL_RIGHT_0_00, VEL_DOWN_2_00
	script_repeat_end
	create_object AnimScript_Explosion, MotionScript_10a13, Data_3425
	script_repeat 8
	set_velocities  6, VEL_RIGHT_0_00, VEL_DOWN_1_8TH
	create_object AnimScript_208f1, MotionScript_10a13, Data_3425
	script_repeat_end
	set_velocities  8, VEL_LEFT_1_16TH, VEL_UP_1_00
	create_object AnimScript_208f1, MotionScript_10a13, Data_3425
	set_velocities  8, VEL_LEFT_0_25, VEL_UP_2_00
	create_object AnimScript_208f1, MotionScript_10a13, Data_3425
	set_velocities 20, VEL_LEFT_0_50, VEL_UP_4_00
	set_position $68, $08
	set_velocities 20, 0, 0
	play_sfx SFX_13
	set_velocities  0, VEL_RIGHT_1_16TH, VEL_DOWN_0_25

MotionScript_10a13:
	jumptable_random %11
	dw .script_10a1d
	dw .script_10a20
	dw .script_10a23
	dw .script_10a26

.script_10a1d
	set_velocities  0, VEL_LEFT_0_50, VEL_DOWN_3_00
.script_10a20
	set_velocities  0, VEL_LEFT_1_8TH, VEL_DOWN_3_00
.script_10a23
	set_velocities  0, VEL_RIGHT_1_8TH, VEL_DOWN_3_00
.script_10a26
	set_velocities  0, VEL_RIGHT_0_50, VEL_DOWN_3_00

MotionScript_10a29:
	script_call MotionScript_10a75
	set_velocities  8, VEL_LEFT_4_00, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_4_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_3_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_4_00, VEL_DOWN_4_00
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_4_00, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_UP_2_00
	set_velocities  8, 0, VEL_UP_3_00
	play_sfx SFX_08
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  0, 0, VEL_UP_0_50

MotionScript_10a75:
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	script_ret

MotionScript_10a92:
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_velocities  6, VEL_LEFT_0_25, 0
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_1_8TH
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  0, VEL_LEFT_0_25, VEL_DOWN_1_25

MotionScript_10abd:
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_velocities  6, VEL_RIGHT_0_25, 0
	set_velocities  6, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities  6, VEL_RIGHT_0_25, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  0, VEL_RIGHT_0_25, VEL_DOWN_1_25

MotionScript_10ae8:
.loop
	jump_if_equal wObjectScreenXPositions + OBJECT_SLOT_KIRBY, $56, MotionScript_10b00
	set_velocities  1, VEL_LEFT_0_50, 0
	jump_abs .loop

MotionScript_10af4:
.loop
	jump_if_equal wObjectScreenXPositions + OBJECT_SLOT_KIRBY, $5a, MotionScript_10b00
	set_velocities  1, VEL_RIGHT_0_50, 0
	jump_abs .loop

MotionScript_10b00:
	set_scripts AnimScript_20771, MotionScript_10008

MotionScript_10b05:
	set_velocities 79, VEL_LEFT_0_25, 0
	script_repeat 2
	set_velocities  6, VEL_LEFT_0_50, 0
	set_velocities 12, VEL_LEFT_0_25, 0
	set_velocities  6, VEL_LEFT_1_16TH, 0
	script_repeat_end
	set_velocities 31, 0, 0
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_8TH
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities 31, VEL_RIGHT_0_25, 0
	set_velocities 36, 0, 0
	set_velocities 24, VEL_LEFT_0_50, 0
	set_velocities  0, 0, 0

MotionScript_10b38:
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities 10, 0, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities 10, 0, 0
	set_velocities 20, 0, VEL_DOWN_1_25
	set_velocities 18, 0, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities 10, 0, 0
	set_velocities 18, 0, 0
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_UP_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_8TH
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_00, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  6, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities 12, 0, 0
	script_repeat 2
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities  6, VEL_LEFT_0_50, 0
	set_velocities  6, VEL_LEFT_0_25, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_10b98:
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities 20, 0, 0
	script_repeat 2
	set_velocities  6, VEL_LEFT_1_00, 0
	set_velocities 12, VEL_LEFT_0_50, 0
	set_velocities  6, VEL_LEFT_1_8TH, 0
	script_repeat_end
	set_velocities 31, 0, 0
	script_repeat 2
	set_velocities 10, 0, 0
	set_velocities 10, VEL_LEFT_1_25, 0
	set_velocities 10, VEL_LEFT_0_50, 0
	set_velocities 10, VEL_LEFT_1_8TH, 0
	script_repeat_end
	script_repeat 2
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_10bda:
	set_velocities 10, 0, VEL_UP_2_00
	set_velocities 10, 0, VEL_UP_1_00
	set_velocities 10, 0, VEL_UP_0_25
	set_velocities 10, 0, VEL_DOWN_0_25
	set_velocities 10, 0, VEL_DOWN_1_00
	set_velocities 10, 0, VEL_DOWN_2_00
	set_velocities 20, 0, 0
	script_call MotionScript_10c3a
	script_repeat 2
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_25
	script_repeat_end
	script_call MotionScript_10c3a
	set_velocities 16, 0, 0
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_0_25
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities 20, 0, 0
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_0_25
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_0_25
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities 20, 0, 0
	set_velocities  8, VEL_RIGHT_1_25, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_25, 0
	set_velocities  8, VEL_LEFT_1_25, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_0_25, 0
	set_velocities  0, 0, 0

MotionScript_10c3a:
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_25
	script_ret

MotionScript_10c47:
.loop
	set_velocities  2, VEL_LEFT_0_50, 0
	set_velocities  2, VEL_RIGHT_0_50, 0
	jump_abs .loop

MotionScript_10c50:
	jumptable_random $07
	dw .script_10c62
	dw .script_10c6f
	dw .script_10c7c
	dw .script_10c89
	dw .script_10c96
	dw .script_10ca3
	dw .script_10cb0
	dw .script_10cbd

.script_10c62
	position_offset 0, -6
	set_velocities  3, 0, VEL_UP_1_00
	set_velocities  3, 0, VEL_UP_0_75
	set_velocities  2, 0, 0
	script_end

.script_10c6f
	position_offset 5, -5
	set_velocities  3, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  2, 0, 0
	script_end

.script_10c7c
	position_offset 6, 0
	set_velocities  3, VEL_RIGHT_1_00, 0
	set_velocities  3, VEL_RIGHT_0_75, 0
	set_velocities  2, 0, 0
	script_end

.script_10c89
	position_offset 5, 5
	set_velocities  3, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  2, 0, 0
	script_end

.script_10c96
	position_offset 0, 6
	set_velocities  3, 0, VEL_DOWN_1_00
	set_velocities  3, 0, VEL_DOWN_0_75
	set_velocities  2, 0, 0
	script_end

.script_10ca3
	position_offset -5, 5
	set_velocities  3, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  3, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities  2, 0, 0
	script_end

.script_10cb0
	position_offset -6, 0
	set_velocities  3, VEL_LEFT_1_00, 0
	set_velocities  3, VEL_LEFT_0_75, 0
	set_velocities  2, 0, 0
	script_end

.script_10cbd
	position_offset -5, -5
	set_velocities  3, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  3, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  2, 0, 0
	script_end
; 0x10cca

SECTION "Bank 4@4cf4", ROMX[$4cf4], BANK[$4]

MotionScript_10cf4:
	set_velocities 80, 0, 0
	set_anim_script AnimScript_20647
	set_velocities 16, 0, VEL_UP_0_50
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_8TH
	set_velocities 80, 0, VEL_DOWN_1_8TH
	set_anim_script AnimScript_20647
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  0, VEL_LEFT_0_75, 0

MotionScript_10d16:
.loop
	set_velocities  2, 0, VEL_DOWN_1_25
	script_exec Func_30dc
	dw .script_10d40, .script_10d23
	jump_abs .loop

.script_10d23
	set_anim_script AnimScript_20662
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_1_8TH, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_16TH
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_16TH, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_8TH, 0
	set_velocities  0, VEL_RIGHT_1_00, 0

.script_10d40
	set_anim_script AnimScript_20659
	set_velocities 16, 0, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_1_8TH, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_16TH
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_1_16TH, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_1_8TH, 0
	set_velocities  0, VEL_LEFT_1_00, 0

MotionScript_10d5d:
.loop
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_0_50, 0
	set_velocities  4, VEL_LEFT_0_25, VEL_UP_0_25
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  4, VEL_LEFT_1_00, 0
	set_velocities  4, VEL_LEFT_0_75, 0
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_00
	jump_abs .loop
; 0x10d7b

SECTION "Bank 4@4d99", ROMX[$4d99], BANK[$4]

MotionScript_10d99:
.loop
	set_velocities 80, 0, 0
	set_velocities  8, 0, VEL_UP_1_00
	set_velocities  8, 0, VEL_UP_0_75
	set_velocities  8, 0, VEL_UP_0_25
	set_velocities  8, 0, VEL_UP_1_16TH
	set_velocities  8, 0, VEL_DOWN_1_16TH
	set_velocities  8, 0, VEL_DOWN_0_25
	set_velocities  8, 0, VEL_DOWN_0_75
	set_velocities  8, 0, VEL_DOWN_1_00
	jump_abs .loop

MotionScript_10db7:
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_object_properties Data_3483
	set_velocities  0, 0, 0

MotionScript_10dcb:
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_object_properties Data_3483
	set_velocities  0, 0, 0

MotionScript_10ddf:
.loop
	script_call MotionSubScript_10def
	script_call MotionSubScript_10e11
	jump_rel .loop

MotionScript_10de7:
.loop
	script_call MotionSubScript_10e11
	script_call MotionSubScript_10def
	jump_rel .loop

MotionSubScript_10def:
	script_repeat 12
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionSubScript_10e11:
	script_repeat 12
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret
; 0x10e33

SECTION "Bank 4@4e3b", ROMX[$4e3b], BANK[$4]

MotionScript_10e3b:
.loop
	script_call MotionSubScript_10e65
	script_call MotionSubScript_10e43
	jump_rel .loop

MotionSubScript_10e43:
	script_repeat 3
	set_velocities  4, VEL_LEFT_0_00, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0_00, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionSubScript_10e65:
	script_repeat 3
	set_velocities  4, VEL_RIGHT_0_00, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0_00, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionScript_10e87:
.loop
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_DOWN_0_50
	set_velocities 64, 0, VEL_DOWN_0_75
	set_velocities 32, 0, VEL_DOWN_0_50
	jump_abs .loop

MotionScript_10e96:
	set_anim_script AnimScript_20d3f
	script_repeat 2
	script_call MotionSubScript_10ecb
	script_repeat_end
MotionScript_10ea1:
	set_anim_script AnimScript_20d47
	script_repeat 2
	script_call MotionSubScript_10ede
	script_repeat_end
	jump_rel MotionScript_10e96

MotionScript_10eae:
.loop
	set_anim_script AnimScript_20d3f
	script_repeat 4
	script_call MotionSubScript_10ecb
	script_repeat_end
	set_anim_script AnimScript_20d47
	script_repeat 4
	script_call MotionSubScript_10ede
	script_repeat_end
	jump_rel .loop
; 0x10ec6

SECTION "Bank 4@4ecb", ROMX[$4ecb], BANK[$4]

MotionSubScript_10ecb:
	set_velocities  3, VEL_LEFT_0_50, 0
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities  3, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  3, VEL_LEFT_0_50, VEL_DOWN_0_25
	set_velocities  3, VEL_LEFT_0_50, 0
	script_ret

MotionSubScript_10ede:
	set_velocities  3, VEL_RIGHT_0_50, 0
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  3, VEL_RIGHT_0_50, VEL_DOWN_0_25
	set_velocities  3, VEL_RIGHT_0_50, 0
	script_ret

MotionScript_10ef1:
	set_velocities 10, 0, VEL_UP_2_00
	set_velocities 10, 0, VEL_UP_0_75
	set_velocities 10, 0, 0
	set_velocities 10, 0, VEL_DOWN_0_50
	set_velocities 10, 0, VEL_DOWN_1_00
	set_velocities 14, 0, VEL_DOWN_2_00
	set_velocities  0, 0, 0

MotionScript_10f06:
.loop
	script_call MotionSubScript_10f16
	script_call MotionSubScript_10f29
	jump_rel .loop

MotionScript_10f0e:
.loop
	script_call MotionSubScript_10f29
	script_call MotionSubScript_10f16
	jump_rel .loop

MotionSubScript_10f16:
	script_repeat 9
	set_velocities  3, 0, 0
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_0_50
	script_repeat_end
	script_ret

MotionSubScript_10f29:
	script_repeat 9
	set_velocities  3, 0, 0
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_0_50
	script_repeat_end
	script_ret

MotionScript_10f3c:
	set_velocities  4, 0, 0
	set_velocities  8, VEL_RIGHT_2_00, 0
	set_velocities  8, VEL_RIGHT_1_00, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities  0, 0, 0
; 0x10f4b

SECTION "Bank 4@4f5a", ROMX[$4f5a], BANK[$4]

MotionScript_10f5a:
.loop
	script_repeat 3
	set_velocities  3, 0, 0
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_LEFT_0_25, VEL_DOWN_0_50
	script_repeat_end
	jump_abs .asm_10f6f ; unnecessary
.asm_10f6f
	script_repeat 3
	set_velocities  3, 0, 0
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_25, VEL_UP_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_1_16TH
	set_velocities  4, VEL_RIGHT_0_25, VEL_DOWN_0_50
	script_repeat_end
	jump_abs .loop

MotionScript_10f84:
.loop
	set_velocities 60, VEL_LEFT_0_75, 0
	set_velocities 60, VEL_RIGHT_0_75, 0
	jump_rel .loop
; 0x10f8c

SECTION "Bank 4@4f9c", ROMX[$4f9c], BANK[$4]

MotionScript_10f9c:
	script_exec Func_30b2
	dw .script_10fa3, .script_10fc1

.script_10fa3
	set_velocities  6, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  6, VEL_RIGHT_0_75, 0
	set_velocities  6, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  6, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  6, VEL_RIGHT_0_25, 0
	set_velocities  6, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities  6, VEL_RIGHT_1_16TH, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_16TH, 0
	set_velocities  6, VEL_RIGHT_1_16TH, VEL_DOWN_0_50
	set_velocities  0, 0, 0

.script_10fc1
	set_velocities  6, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  6, VEL_LEFT_0_75, 0
	set_velocities  6, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  6, VEL_LEFT_0_25, VEL_UP_1_00
	set_velocities  6, VEL_LEFT_0_25, 0
	set_velocities  6, VEL_LEFT_0_25, VEL_DOWN_1_00
	set_velocities  6, VEL_LEFT_1_16TH, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_16TH, 0
	set_velocities  6, VEL_LEFT_1_16TH, VEL_DOWN_0_50
	set_velocities  0, 0, 0

MotionScript_PoppyBrosSr:
	set_velocities 45, 0, VEL_DOWN_2_00
.JumpShort:
	script_repeat 2
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_25
	script_repeat_end
	set_velocities  0, 0, 0

.JumpMid:
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_0_75
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  4, VEL_LEFT_0_75, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_0_75
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_UP_0_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_25
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  4, VEL_RIGHT_0_75, VEL_DOWN_2_00
	set_velocities  0, 0, 0

.JumpLong:
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_2_00
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_1_00
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_0_75
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_0_50
	set_velocities  5, VEL_LEFT_2_00, VEL_UP_0_25
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_0_50
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_0_75
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  5, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_2_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_1_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_0_75
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_0_50
	set_velocities  5, VEL_RIGHT_2_00, VEL_UP_0_25
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_0_25
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_0_50
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_0_75
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_1_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  5, VEL_RIGHT_2_00, VEL_DOWN_2_00
	set_velocities  0, 0, 0

.JumpHigh:
	set_velocities  6, 0, VEL_UP_3_00
	set_velocities  6, 0, VEL_UP_2_00
	set_velocities  6, 0, VEL_UP_1_25
	set_velocities  6, 0, VEL_UP_0_75
	set_velocities  6, 0, VEL_UP_1_8TH
	set_velocities 16, 0, 0
	set_velocities  6, 0, VEL_DOWN_1_8TH
	set_velocities  6, 0, VEL_DOWN_0_75
	set_velocities  6, 0, VEL_DOWN_1_25
	set_velocities  6, 0, VEL_DOWN_2_00
	set_velocities  6, 0, VEL_DOWN_3_00
	set_velocities  0, 0, 0

MotionScript_PoppyBrosSrBombFall:
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_75
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_1_8TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_1_00
	create_object AnimScript_Explosion, MotionScript_10008, Data_35bb
	script_end

MotionScript_PoppyBrosSrBombBounce:
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_3_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_2_00
	create_object AnimScript_Explosion, MotionScript_10008, Data_35bb
	script_end

MotionScript_WhispyWoodsPuff:
	jump_random 50 percent + 1, .script_1110e
	position_offset -16, 24
	play_sfx SFX_15
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_50
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_0_75

.script_1110e
	position_offset -16, 24
	play_sfx SFX_15
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_0_50
	set_velocities  0, VEL_LEFT_3_00, VEL_DOWN_0_75

MotionScript_WhispyWoodsApple:
	calltable_random %111
	dw .position_1
	dw .position_2
	dw .position_3
	dw .position_4
	dw .position_5
	dw .position_6
	dw .position_7
	dw .position_8
	jump_rel .wait_and_fall

.position_1
	set_position $30, $20
	script_ret
.position_2
	set_position $18, $20
	script_ret
.position_3
	set_position $28, $20
	script_ret
.position_4
	set_position $38, $20
	script_ret
.position_5
	set_position $48, $20
	script_ret
.position_6
	set_position $58, $20
	script_ret
.position_7
	set_position $13, $20
	script_ret
.position_8
	set_position $4d, $20
	script_ret

.wait_and_fall
	set_velocities 25, 0, 0
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_25
	set_velocities  8, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_3_00
	set_velocities  8, 0, VEL_DOWN_4_00
	script_exec Func_30b2
	dw .roll_left, .roll_right

.roll_left
	set_anim_script AnimScript_WhispyWoodsApple_RollLeft
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_LEFT_0_50, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_0_50
	set_velocities 10, VEL_LEFT_0_50, VEL_DOWN_2_00
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_25
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_25
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_1_25
.loop_1
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_75, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_DOWN_0_50
	jump_rel .loop_1

.roll_right
	set_anim_script AnimScript_WhispyWoodsApple_RollRight
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_2_00
	set_velocities 10, VEL_RIGHT_0_50, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_0_50
	set_velocities 10, VEL_RIGHT_0_50, VEL_DOWN_2_00
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_25
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_25
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_1_25
.loop_2
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_75, 0
	set_velocities 10, VEL_RIGHT_0_75, 0
	set_velocities 10, VEL_RIGHT_0_75, VEL_DOWN_0_50
	jump_rel .loop_2

MotionScript_111c7:
	set_velocities 16, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_1_00, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_object_properties SparklingStarProperties
	jump_abs MotionScript_10346

MotionScript_111d8:
.loop
	set_velocities 20, 0, 0
	set_velocities  2, 0, VEL_UP_1_00
	set_velocities  2, 0, VEL_DOWN_1_00
	jump_abs .loop

MotionScript_111e4:
.loop
	script_repeat 6
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_LEFT_1_8TH, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	script_repeat 6
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_1_00
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0_00, VEL_UP_0_50
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities  4, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities  1, 0, 0
	script_repeat_end
	jump_abs .loop
; 0x11229

SECTION "Bank 4@5251", ROMX[$5251], BANK[$4]

MotionScript_11251:
	set_velocities 10, 0, 0
	set_velocities 40, 0, VEL_DOWN_2_00
	set_velocities  8, 0, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_0_25
	set_velocities  8, 0, VEL_UP_1_8TH
	set_scripts $524a, $52b8
; 0x11265

SECTION "Bank 4@530c", ROMX[$530c], BANK[$4]

MotionScript_1130c:
	set_velocities 18, 0, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities 13, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities 10, VEL_LEFT_1_25, VEL_DOWN_1_25
	set_velocities 14, VEL_LEFT_1_25, VEL_DOWN_2_00
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_1_00
	set_velocities 16, VEL_LEFT_1_00, 0
	set_velocities 10, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_2_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_8TH
MotionScript_11345:
	set_velocities 18, 0, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_75
	set_velocities 13, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities 10, VEL_RIGHT_1_25, VEL_DOWN_1_25
	set_velocities 14, VEL_RIGHT_1_25, VEL_DOWN_2_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_1_00
	set_velocities 16, VEL_RIGHT_1_00, 0
	set_velocities 10, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_2_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  8, 0, VEL_DOWN_1_8TH
	jump_abs MotionScript_1130c
; 0x11381

SECTION "Bank 4@53e2", ROMX[$53e2], BANK[$4]

MotionScript_113e2:
	set_velocities 48, 0, 0
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_75
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  8, VEL_LEFT_0_50, VEL_DOWN_1_00
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_75
	set_velocities  6, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_25, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_2_00, 0
	set_velocities  8, VEL_LEFT_3_00, 0
	set_velocities  8, VEL_LEFT_4_00, 0
	set_velocities  8, VEL_LEFT_6_00, 0
	set_velocities  0, VEL_LEFT_6_00, 0
; 0x11424

SECTION "Bank 4@554d", ROMX[$554d], BANK[$4]

MotionScript_1154d:
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities 32, VEL_LEFT_0_75, 0
	set_velocities  8, VEL_LEFT_0_50, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	set_velocities 32, VEL_RIGHT_0_75, 0
	set_velocities  8, VEL_RIGHT_0_50, 0
	jump_abs MotionScript_102da
; 0x11562

SECTION "Bank 4@5585", ROMX[$5585], BANK[$4]

MotionScript_11585:
.loop
	set_anim_script AnimScript_20000
	set_velocities 50, 0, 0
	calltable_random %11
	dw .wait_1
	dw .wait_10
	dw .wait_20
	dw .wait_30

	set_object_properties Data_364f
	set_anim_script AnimScript_2146b
	script_call .script_115bc
	set_object_properties Data_3421
	jump_abs .loop

.wait_1
	set_velocities  1, 0, 0
	script_ret

.wait_10
	set_velocities 10, 0, 0
	script_ret

.wait_20
	set_velocities 20, 0, 0
	script_ret

.wait_30
	set_velocities 30, 0, 0
	script_ret

.script_115bc
	create_object AnimScript_21474, $4008, Data_35cd
	create_object $4ae6, $47c3, Data_3421
	set_velocities  4, 0, VEL_UP_4_00
	set_velocities  4, 0, VEL_UP_3_00
	set_velocities  4, 0, VEL_UP_2_00
	set_velocities  4, 0, VEL_DOWN_1_25
	set_velocities  4, 0, VEL_DOWN_3_00
	set_velocities  4, 0, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_0_50, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_LEFT_2_00, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_2_00, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_DOWN_3_00
	set_velocities  4, VEL_RIGHT_0_50, VEL_DOWN_1_25
	set_velocities  4, VEL_RIGHT_0_50, VEL_UP_1_25
	set_velocities  4, VEL_RIGHT_1_00, VEL_UP_3_00
	set_velocities  4, VEL_RIGHT_2_00, VEL_UP_1_25
	set_velocities  4, VEL_LEFT_0_50, VEL_DOWN_1_25
	set_velocities  4, VEL_LEFT_1_00, VEL_DOWN_3_00
	set_velocities  4, VEL_LEFT_2_00, VEL_DOWN_1_25
	set_velocities  4, 0, VEL_UP_1_25
	set_velocities  4, 0, VEL_UP_3_00
	set_velocities  4, 0, VEL_UP_1_25
	set_velocities  4, 0, VEL_DOWN_2_00
	set_velocities 48, 0, 0
	set_velocities  4, 0, VEL_DOWN_3_00
	set_velocities  4, 0, VEL_DOWN_4_00
	create_object $5474, $4008, Data_35cd
	create_object $4ae6, $47c3, Data_3421
	script_ret
; 0x11624

SECTION "Bank 4@5679", ROMX[$5679], BANK[$4]

MotionScript_11679:
	set_velocities 128, 0, VEL_UP_0_50
MotionScript_1167c:
	set_velocities 128, 0, VEL_DOWN_0_50
	jump_abs MotionScript_11679
; 0x11682

SECTION "Bank 4@5f0c", ROMX[$5f0c], BANK[$4]

MotionScript_11f0c:
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  6, VEL_LEFT_1_32TH, VEL_DOWN_1_32TH
	set_velocities  6, VEL_RIGHT_1_32TH, VEL_DOWN_1_32TH
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	script_end
; 0x11f2b

SECTION "Bank 4@5f4a", ROMX[$5f4a], BANK[$4]

MotionScript_11f4a:
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_75
	set_velocities  8, VEL_RIGHT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  6, VEL_RIGHT_1_32TH, VEL_DOWN_1_32TH
	set_velocities  6, VEL_LEFT_1_32TH, VEL_DOWN_1_32TH
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_3_00, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_75
	script_end
; 0x11f69

SECTION "Bank 4@5fc6", ROMX[$5fc6], BANK[$4]

MotionScript_TitleScreenWarpStarKirby:
	set_velocities 40, 0, 0
	script_repeat 2
	set_velocities  8, VEL_RIGHT_4_00, VEL_UP_1_32TH
	set_velocities  8, VEL_RIGHT_2_00, VEL_UP_1_16TH
	set_velocities  8, VEL_RIGHT_1_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_75, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_00, VEL_UP_0_50
	set_velocities  8, VEL_LEFT_1_25, VEL_UP_0_25
	set_velocities  8, VEL_LEFT_2_00, VEL_UP_1_16TH
	set_velocities  8, VEL_LEFT_4_00, VEL_UP_1_32TH
	position_offset 0, 14
	set_velocities  8, VEL_LEFT_3_00, VEL_DOWN_1_32TH
	set_velocities  8, VEL_LEFT_2_00, VEL_DOWN_1_16TH
	set_velocities  8, VEL_LEFT_1_25, VEL_DOWN_0_25
	set_velocities  8, VEL_LEFT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_LEFT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_0_75, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_1_00, VEL_DOWN_0_50
	set_velocities  8, VEL_RIGHT_1_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_2_00, VEL_DOWN_1_16TH
	set_velocities  8, VEL_RIGHT_3_00, VEL_DOWN_1_32TH
	script_repeat_end
	set_velocities 30, VEL_RIGHT_3_00, VEL_UP_1_8TH
	script_end

MotionScript_TitleScreenKirby:
	script_call MotionSubScript_1208c
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_75
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_25
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_75
	set_velocities 32, 0, 0
	script_call MotionSubScript_1208c
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_50, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_50, VEL_DOWN_1_8TH
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities 10, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 64, VEL_RIGHT_1_8TH, 0
	set_velocities 48, VEL_RIGHT_1_8TH, 0
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_1_00
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_UP_1_8TH
	set_velocities 16, VEL_RIGHT_1_8TH, 0
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_50
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_00
	set_velocities 16, 0, 0
	script_repeat 2
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_0_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_DOWN_1_00
	script_repeat_end
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_1_00
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_25
.loop
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 10, VEL_RIGHT_0_25, VEL_UP_0_25
	jump_rel .loop

MotionSubScript_1208c:
	script_repeat 2
	set_velocities 18, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 11, VEL_RIGHT_0_25, 0
	set_velocities 18, VEL_RIGHT_0_25, VEL_DOWN_1_8TH
	set_velocities 11, VEL_RIGHT_0_25, 0
	script_repeat_end
	script_ret

MotionScript_SoundTestNote:
.loop
	set_velocities 16, 0, 0
	set_velocities 16, 0, VEL_UP_1_16TH
	set_velocities 16, 0, VEL_UP_1_8TH
	set_velocities 16, 0, VEL_UP_0_25
	set_velocities 16, 0, VEL_UP_1_8TH
	set_velocities 16, 0, VEL_UP_1_16TH
	set_velocities 16, 0, 0
	set_velocities 16, 0, VEL_DOWN_1_16TH
	set_velocities 16, 0, VEL_DOWN_1_8TH
	set_velocities 16, 0, VEL_DOWN_0_25
	set_velocities 16, 0, VEL_DOWN_1_8TH
	set_velocities 16, 0, VEL_DOWN_1_16TH
	set_velocities 16, 0, 0
	jump_abs .loop
; 0x120c6

SECTION "Bank 4@6491", ROMX[$6491], BANK[$4]

MotionScript_12491:
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	script_repeat 10
	set_velocities  2, VEL_LEFT_1_00, 0
	set_velocities  2, VEL_RIGHT_1_00, 0
	script_repeat_end
	set_velocities  0, 0, 0
; 0x124a0

SECTION "Bank 4@64b9", ROMX[$64b9], BANK[$4]

MotionScript_124b9:
	set_velocities 80, VEL_RIGHT_0_00, VEL_DOWN_0_00
	set_velocities  0, VEL_RIGHT_0_50, VEL_UP_0_50
; 0x124bf

SECTION "Bank 4@75bc", ROMX[$75bc], BANK[$4]

MotionScript_135bc:
	jumptable_random %11
	dw .script_135c6
	dw .script_135c9
	dw .script_135cc
	dw .script_135cf

.script_135c6
	set_velocities  0, VEL_LEFT_3_00, VEL_DOWN_0_75

.script_135c9
	set_velocities  0, VEL_LEFT_3_00, VEL_DOWN_1_8TH

.script_135cc
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_1_8TH

.script_135cf
	set_velocities  0, VEL_LEFT_3_00, VEL_UP_0_75

MotionScript_135d2:
	set_position $00, $70
	set_velocities 16, VEL_RIGHT_3_00, 0
	set_velocities 16, VEL_RIGHT_2_00, 0
	set_velocities 16, VEL_RIGHT_1_25, 0
	set_velocities 16, VEL_RIGHT_1_00, VEL_UP_1_16TH
	set_velocities 16, VEL_RIGHT_1_00, VEL_UP_1_8TH
	set_velocities 16, VEL_RIGHT_0_50, VEL_UP_1_8TH
	script_repeat 4
	set_velocities  2, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_1_25
	script_repeat_end
	set_velocities 16, VEL_LEFT_1_25, VEL_DOWN_0_50
	script_repeat 8
	set_velocities  2, VEL_LEFT_1_25, VEL_UP_2_00
	set_velocities  2, VEL_LEFT_1_00, VEL_DOWN_3_00
	script_repeat_end
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_3_00
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_25
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_0_50
	set_velocities  8, VEL_RIGHT_0_25, VEL_UP_1_8TH
	set_velocities 40, 0, 0
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_1_8TH
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_25
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_0_75
	set_velocities 16, VEL_RIGHT_1_8TH, VEL_DOWN_1_00
	script_repeat 2
	play_sfx SFX_BUMP
	set_velocities  2, VEL_LEFT_1_8TH, 0
	set_velocities 10, VEL_LEFT_1_8TH, VEL_UP_0_50
	set_velocities 10, VEL_LEFT_1_8TH, VEL_UP_1_8TH
	set_velocities 10, VEL_LEFT_1_8TH, VEL_DOWN_1_8TH
	set_velocities 10, VEL_LEFT_1_8TH, VEL_DOWN_0_50
	script_repeat_end
	play_sfx SFX_25
	set_scripts AnimScript_2028f, MotionScript_10008
; 0x13636
