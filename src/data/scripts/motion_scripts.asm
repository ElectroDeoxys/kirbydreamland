MotionScript_10000:
	set_custom_func Func_1401a, NULL
	set_velocities  0, 0, 0

MotionScript_10008:
	set_velocities  0, 0, 0

MotionScript_1000b:
	set_position $18, $00
	set_velocities 60, VEL_RIGHT_0192, VEL_DOWN_0512
	jump_abs MotionScript_106a2

MotionScript_10014:
	set_position $08, $52
	set_anim_script AnimScript_20bfe
	set_velocities  1, 0, 0
	create_object AnimScript_203be, MotionScript_102e0, Data_3425
	set_velocities 10, VEL_RIGHT_0512, VEL_UP_0032
	set_velocities 10, VEL_RIGHT_0256, VEL_DOWN_0032
	jump_abs MotionScript_106dc

MotionScript_1002f:
	set_position $44, $08
	set_velocities 40, VEL_RIGHT_0128, VEL_DOWN_0512
	play_sfx SFX_08
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	script_end

MotionScript_10056:
	set_anim_script $4c01
	set_position $1e, $86
	set_velocities 10, VEL_RIGHT_0064, VEL_UP_0768
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0512
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0320
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0256
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0192
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0128
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0064
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0032
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0032
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0064
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0128
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0192
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0256
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0320
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0512
	play_sfx SFX_30
	set_anim_script AnimScript_20c10
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0320
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0064
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0064
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0320
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
	set_velocities  8, 0, VEL_UP_0256
	set_velocities  8, 0, VEL_UP_0128
	set_velocities  8, 0, VEL_UP_0032
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
	set_velocities  8, 0, VEL_UP_0512
	set_velocities  8, 0, VEL_UP_0256
	set_velocities  8, 0, VEL_UP_0064
	set_velocities  8, 0, VEL_DOWN_0064
	set_velocities  8, 0, VEL_DOWN_0320
	set_velocities  0, 0, VEL_DOWN_0768

MotionScript_10149:
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	script_repeat 3
	set_velocities  1, VEL_LEFT_0512, VEL_UP_1024
	set_velocities  1, VEL_RIGHT_0512, VEL_UP_0512
	script_repeat_end
	script_exec Func_4ac1
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	set_velocities  0, 0, 0

MotionScript_10162:
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	script_repeat 4
	set_velocities  1, VEL_LEFT_0512, VEL_DOWN_0320
	set_velocities  1, VEL_RIGHT_0512, VEL_DOWN_0320
	script_repeat_end
	script_exec Func_4ac1
	set_flags hKirbyFlags5, KIRBY5F_UNK5, $00
	set_velocities  0, 0, 0
; 0x1017b

SECTION "Bank 4@422a", ROMX[$422a], BANK[$4]

MotionScript_1022a:
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1023a
	set_velocities  8, VEL_LEFT_1024, 0
	set_velocities  8, VEL_LEFT_0512, 0
	set_velocities 10, VEL_LEFT_0128, 0
	script_end

.script_1023a
	set_velocities  8, VEL_RIGHT_1024, 0
	set_velocities  8, VEL_RIGHT_0512, 0
	set_velocities 10, VEL_RIGHT_0128, 0
	script_end

MotionScript_10244:
	jump_if_flags hEngineFlags, KABOOLA_BATTLE, .script_1026a
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1025d
	set_velocities 16, VEL_LEFT_0768, 0
	set_velocities  8, VEL_LEFT_0192, 0
	set_velocities  8, VEL_LEFT_0032, 0
	set_velocities  8, 0, 0
	script_end
.script_1025d
	set_velocities 16, VEL_RIGHT_0768, 0
	set_velocities  8, VEL_RIGHT_0192, 0
	set_velocities  8, VEL_RIGHT_0032, 0
	set_velocities  8, 0, 0
	script_end

.script_1026a
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_10273
	set_velocities  0, VEL_LEFT_1024, 0
.script_10273
	set_velocities  0, VEL_RIGHT_1024, 0

MotionScript_10276:
	set_position $40, $78
	set_anim_script AnimScript_15f1
	set_velocities  1, 0, 0
	script_exec Func_4ac1
	set_flags hKirbyFlags5, KIRBY5F_UNK2, $00
	set_velocities  0, 0, 0

MotionScript_1028c::
	set_velocities  2, VEL_RIGHT_1024, 0
	set_velocities  4, 0, 0
	set_velocities  2, VEL_LEFT_1024, 0
	set_velocities  0, 0, 0
; 0x10298

SECTION "Bank 4@42bc", ROMX[$42bc], BANK[$4]

MotionScript_102bc::
	set_velocities  2, VEL_LEFT_1024, 0
	set_velocities  4, 0, 0
	set_velocities  2, VEL_RIGHT_1024, 0
	set_velocities  0, 0, 0

MotionScript_102c8:
	set_velocities  0, VEL_LEFT_0064, 0
; 0x102cb

SECTION "Bank 4@42e0", ROMX[$42e0], BANK[$4]

MotionScript_102e0:
	set_velocities  0, VEL_RIGHT_0256, 0
; 0x102e3

SECTION "Bank 4@42fb", ROMX[$42fb], BANK[$4]

MotionScript_102fb:
	script_exec Func_30b2
	dw MotionScript_1030b, MotionScript_10308

MotionScript_10302:
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, MotionScript_1030b

MotionScript_10308:
	set_velocities  0, VEL_LEFT_0768, 0

MotionScript_1030b:
	set_velocities  0, VEL_RIGHT_0768, 0
; 0x1030e

SECTION "Bank 4@4317", ROMX[$4317], BANK[$4]

MotionScript_10317:
	set_velocities  0, VEL_LEFT_1024, 0
; 0x1031a

SECTION "Bank 4@431d", ROMX[$431d], BANK[$4]

MotionScript_1031d:
	set_velocities  1, 0, 0
.loop
	script_exec Func_4ab3
	script_delay 28
	script_exec Func_4aba
	script_delay 4
	jump_abs .loop
; 0x1032d

SECTION "Bank 4@4370", ROMX[$4370], BANK[$4]

MotionScript_10370:
	set_value wd3bf, $01
	set_flags hKirbyFlags5, $00, KIRBY5F_UNK5
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1038d
	position_offset 0, 6
	set_velocities  2, VEL_LEFT_0512, 0
	set_velocities  2, VEL_LEFT_0256, 0
	set_velocities  4, VEL_LEFT_0128, 0
	jump_rel .jump
.script_1038d
	set_velocities  2, VEL_RIGHT_0512, 0
	set_velocities  2, VEL_RIGHT_0256, 0
	set_velocities  4, VEL_RIGHT_0128, 0
.jump
	set_velocities  0, 0, 0
; 0x10399

SECTION "Bank 4@43ff", ROMX[$43ff], BANK[$4]

MotionScript_103ff:
.loop
	set_velocities 10, VEL_LEFT_0064, 0
	set_velocities 30, VEL_LEFT_0128, 0
	set_velocities 10, VEL_LEFT_0064, 0
	set_velocities 10, VEL_RIGHT_0064, 0
	set_velocities 30, VEL_RIGHT_0128, 0
	set_velocities 10, VEL_RIGHT_0064, 0
	jump_abs .loop
; 0x10414

SECTION "Bank 4@442f", ROMX[$442f], BANK[$4]

MotionScript_1042f:
.loop
	set_velocities 16, VEL_LEFT_0128, 0
	set_velocities 48, VEL_LEFT_0320, 0
	set_velocities 16, VEL_LEFT_0128, 0
	set_velocities 16, VEL_RIGHT_0128, 0
	set_velocities 48, VEL_RIGHT_0320, 0
	set_velocities 16, VEL_RIGHT_0128, 0
	jump_abs .loop
; 0x10444

SECTION "Bank 4@4508", ROMX[$4508], BANK[$4]

MotionScript_10508:
.loop
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_DOWN_0064
	set_velocities 64, 0, VEL_DOWN_0128
	set_velocities 32, 0, VEL_DOWN_0064
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_UP_0064
	set_velocities 64, 0, VEL_UP_0128
	set_velocities 32, 0, VEL_UP_0064
	jump_abs .loop
; 0x10523

SECTION "Bank 4@467d", ROMX[$467d], BANK[$4]

MotionScript_1067d:
.loop
	set_anim_script AnimScript_2063b
	set_velocities  6, VEL_LEFT_0192, VEL_UP_0320
	set_velocities  6, VEL_LEFT_0192, VEL_UP_0192
	set_velocities  6, VEL_LEFT_0192, VEL_UP_0064
	set_velocities  6, VEL_LEFT_0192, VEL_DOWN_0064
	set_velocities  6, VEL_LEFT_0192, VEL_DOWN_0192
	jump_random 33 percent + 1, .loop
	set_velocities  3, VEL_LEFT_0192, VEL_DOWN_0320
	jump_random 50 percent + 1, .loop
	set_velocities  3, VEL_LEFT_0192, VEL_DOWN_0320
	jump_abs .loop

MotionScript_106a2:
	create_object AnimScript_20138, MotionScript_10008, Data_3425
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_anim_script $410f
	set_velocities  8, 0, VEL_UP_0768
	set_velocities  8, 0, VEL_UP_0512
	set_velocities  8, 0, VEL_UP_0256
	set_velocities  8, 0, VEL_DOWN_0256
	set_velocities  8, 0, VEL_DOWN_0512
	set_velocities  8, 0, VEL_DOWN_0768
MotionScript_106dc:
	script_exec Func_4ac1
	set_flags hKirbyFlags3, KIRBY3F_UNK2 | KIRBY3F_DIVE, $00
	set_value wd3dd, $01
	set_velocities  0, 0, 0

MotionScript_106eb:
	position_offset -4, -4
	set_velocities  8, VEL_LEFT_0192, VEL_UP_0192
	set_velocities 48, VEL_LEFT_0032, VEL_UP_0064
	script_end

MotionScript_106f5:
	position_offset 4, -4
	set_velocities  8, VEL_RIGHT_0192, VEL_UP_0192
	set_velocities 48, VEL_RIGHT_0032, VEL_UP_0064
	script_end

MotionScript_106ff:
	position_offset -6, 0
	set_velocities  8, VEL_LEFT_0320, 0
	set_velocities 48, VEL_LEFT_0064, 0
	script_end

MotionScript_10709:
	position_offset 6, 0
	set_velocities  8, VEL_RIGHT_0320, 0
	set_velocities 48, VEL_RIGHT_0064, 0
	script_end

MotionScript_10713:
	set_velocities  6, 0, VEL_UP_1536
	set_velocities  6, 0, VEL_UP_0768
	set_velocities  6, 0, VEL_UP_0320
	set_velocities  0, 0, VEL_UP_0192

MotionScript_1071f:
	set_velocities  6, VEL_RIGHT_1536, 0
	set_velocities  6, VEL_RIGHT_0768, 0
	set_velocities  6, VEL_RIGHT_0320, 0
	set_velocities  0, VEL_RIGHT_0192, 0

MotionScript_1072b:
	set_velocities  6, 0, VEL_DOWN_1536
	set_velocities  6, 0, VEL_DOWN_0768
	set_velocities  6, 0, VEL_DOWN_0320
	set_velocities  0, 0, VEL_DOWN_0192

MotionScript_10737:
	set_velocities  6, VEL_LEFT_1536, 0
	set_velocities  6, VEL_LEFT_0768, 0
	set_velocities  6, VEL_LEFT_0320, 0
	set_velocities  0, VEL_LEFT_0192, 0

MotionScript_10743:
	set_velocities  6, VEL_RIGHT_1024, VEL_UP_1024
	set_velocities  6, VEL_RIGHT_0512, VEL_UP_0512
	set_velocities  6, VEL_RIGHT_0256, VEL_UP_0256
	set_velocities  0, VEL_RIGHT_0128, VEL_UP_0128

MotionScript_1074f:
	set_velocities  6, VEL_RIGHT_1024, VEL_DOWN_1024
	set_velocities  6, VEL_RIGHT_0512, VEL_DOWN_0512
	set_velocities  6, VEL_RIGHT_0256, VEL_DOWN_0256
	set_velocities  0, VEL_RIGHT_0128, VEL_DOWN_0128

MotionScript_1075b:
	set_velocities  6, VEL_LEFT_1024, VEL_DOWN_1024
	set_velocities  6, VEL_LEFT_0512, VEL_DOWN_0512
	set_velocities  6, VEL_LEFT_0256, VEL_DOWN_0256
	set_velocities  0, VEL_LEFT_0128, VEL_DOWN_0128

MotionScript_10767:
	set_velocities  6, VEL_LEFT_1024, VEL_UP_1024
	set_velocities  6, VEL_LEFT_0512, VEL_UP_0512
	set_velocities  6, VEL_LEFT_0256, VEL_UP_0256
	set_velocities  0, VEL_LEFT_0128, VEL_UP_0128
; 0x10773

SECTION "Bank 4@47c3", ROMX[$47c3], BANK[$4]

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
	set_velocities  3, 0, VEL_UP_0768
	set_velocities  3, 0, VEL_UP_0512
	set_velocities  0, 0, 0

.script_107e1
	position_offset 5, -5
	set_velocities  3, VEL_RIGHT_0512, VEL_UP_0512
	set_velocities  3, VEL_RIGHT_0320, VEL_UP_0320
	set_velocities  0, 0, 0

.script_107ed
	position_offset 6, 0
	set_velocities  3, VEL_RIGHT_0768, 0
	set_velocities  3, VEL_RIGHT_0512, 0
	set_velocities  0, 0, 0

.script_107f9
	position_offset 5, 5
	set_velocities  3, VEL_RIGHT_0512, VEL_DOWN_0512
	set_velocities  3, VEL_RIGHT_0320, VEL_DOWN_0320
	set_velocities  0, 0, 0

.script_10805
	position_offset 0, 6
	set_velocities  3, 0, VEL_DOWN_0768
	set_velocities  3, 0, VEL_DOWN_0512
	set_velocities  0, 0, 0

.script_10811
	position_offset -5, 5
	set_velocities  3, VEL_LEFT_0512, VEL_DOWN_0512
	set_velocities  3, VEL_LEFT_0320, VEL_DOWN_0320
	set_velocities  0, 0, 0

.script_1081d
	position_offset -6, 0
	set_velocities  3, VEL_LEFT_0768, 0
	set_velocities  3, VEL_LEFT_0512, 0
	set_velocities  0, 0, 0

.script_10829
	position_offset -5, -5
	set_velocities  3, VEL_LEFT_0512, VEL_UP_0512
	set_velocities  3, VEL_LEFT_0320, VEL_UP_0320
	set_velocities  0, 0, 0

MotionScript_10835:
	set_velocities  4, VEL_RIGHT_0768, VEL_UP_0768
	set_velocities  4, VEL_RIGHT_0320, VEL_UP_0320
	set_velocities  4, VEL_RIGHT_0128, VEL_UP_0128
	script_end

MotionScript_1083f:
	set_velocities  3, VEL_RIGHT_0768, VEL_DOWN_0768
	set_velocities  3, VEL_RIGHT_0320, VEL_DOWN_0320
	script_end

MotionScript_10846:
	set_velocities  4, VEL_LEFT_0768, VEL_DOWN_0768
	set_velocities  4, VEL_LEFT_0320, VEL_DOWN_0320
	set_velocities  4, VEL_RIGHT_0128, VEL_DOWN_0128
	script_end

MotionScript_10850:
	set_velocities  3, VEL_LEFT_0768, VEL_UP_0768
	set_velocities  3, VEL_LEFT_0320, VEL_UP_0320
	script_end

MotionScript_10857:
	set_velocities  3, 0, VEL_UP_1024
	set_velocities  3, 0, VEL_UP_0512
	set_velocities  3, 0, VEL_UP_0256
	script_end

MotionScript_10861:
	set_velocities  3, VEL_RIGHT_0768, VEL_UP_0768
	set_velocities  3, VEL_RIGHT_0320, VEL_UP_0320
	set_velocities  3, VEL_RIGHT_0128, VEL_UP_0128
	script_end

MotionScript_1086b:
	set_velocities  3, VEL_RIGHT_1024, 0
	set_velocities  3, VEL_RIGHT_0512, 0
	set_velocities  3, VEL_RIGHT_0256, 0
	script_end

MotionScript_10875:
	set_velocities  3, VEL_RIGHT_0768, VEL_DOWN_0768
	set_velocities  3, VEL_RIGHT_0320, VEL_DOWN_0320
	set_velocities  3, VEL_RIGHT_0128, VEL_DOWN_0128
	script_end

MotionScript_1087f:
	set_velocities  3, 0, VEL_DOWN_1024
	set_velocities  3, 0, VEL_DOWN_0512
	set_velocities  3, 0, VEL_DOWN_0256
	script_end

MotionScript_10889:
	set_velocities  3, VEL_LEFT_0768, VEL_DOWN_0768
	set_velocities  3, VEL_LEFT_0320, VEL_DOWN_0320
	set_velocities  3, VEL_LEFT_0128, VEL_DOWN_0128
	script_end

MotionScript_10893:
	set_velocities  3, VEL_LEFT_1024, 0
	set_velocities  3, VEL_LEFT_0512, 0
	set_velocities  3, VEL_LEFT_0256, 0
	script_end

MotionScript_1089d:
	set_velocities  3, VEL_LEFT_0768, VEL_UP_0768
	set_velocities  3, VEL_LEFT_0320, VEL_UP_0320
	set_velocities  3, VEL_LEFT_0128, VEL_UP_0128
	script_end

MotionScript_108a7:
	set_velocities  3, VEL_RIGHT_0512, VEL_UP_1024
	set_velocities  3, VEL_RIGHT_0256, VEL_UP_0512
	set_velocities  3, VEL_RIGHT_0064, VEL_UP_0256
	set_velocities  3, VEL_RIGHT_0016, VEL_UP_0064
	script_end

MotionScript_108b4:
	set_velocities  3, VEL_RIGHT_1024, VEL_UP_0512
	set_velocities  3, VEL_RIGHT_0512, VEL_UP_0256
	set_velocities  3, VEL_RIGHT_0256, VEL_UP_0064
	set_velocities  3, VEL_RIGHT_0064, VEL_UP_0016
	script_end

MotionScript_108c1:
	set_velocities  3, VEL_RIGHT_1024, VEL_DOWN_0512
	set_velocities  3, VEL_RIGHT_0512, VEL_DOWN_0256
	set_velocities  3, VEL_RIGHT_0256, VEL_DOWN_0064
	set_velocities  3, VEL_RIGHT_0064, VEL_DOWN_0016
	script_end

MotionScript_108ce:
	set_velocities  3, VEL_RIGHT_0512, VEL_DOWN_1024
	set_velocities  3, VEL_RIGHT_0256, VEL_DOWN_0512
	set_velocities  3, VEL_RIGHT_0064, VEL_DOWN_0256
	set_velocities  3, VEL_RIGHT_0016, VEL_DOWN_0064
	script_end

MotionScript_108db:
	set_velocities  3, VEL_LEFT_0512, VEL_DOWN_1024
	set_velocities  3, VEL_LEFT_0256, VEL_DOWN_0512
	set_velocities  3, VEL_LEFT_0064, VEL_DOWN_0256
	set_velocities  3, VEL_LEFT_0016, VEL_DOWN_0064
	script_end

MotionScript_108e8:
	set_velocities  3, VEL_LEFT_1024, VEL_DOWN_0512
	set_velocities  3, VEL_LEFT_0512, VEL_DOWN_0256
	set_velocities  3, VEL_LEFT_0256, VEL_DOWN_0064
	set_velocities  3, VEL_LEFT_0064, VEL_DOWN_0016
	script_end

MotionScript_108f5:
	set_velocities  3, VEL_LEFT_1024, VEL_UP_0512
	set_velocities  3, VEL_LEFT_0512, VEL_UP_0256
	set_velocities  3, VEL_LEFT_0256, VEL_UP_0064
	set_velocities  3, VEL_LEFT_0064, VEL_UP_0016
	script_end

MotionScript_10902:
	set_velocities  3, VEL_LEFT_0512, VEL_UP_1024
	set_velocities  3, VEL_LEFT_0256, VEL_UP_0512
	set_velocities  3, VEL_LEFT_0064, VEL_UP_0256
	set_velocities  3, VEL_LEFT_0016, VEL_UP_0064
	script_end
 
MotionScript_1090f:
	set_velocities  2, VEL_RIGHT_0768, VEL_UP_0768
	set_velocities  2, 0, VEL_UP_1024
MotionScript_10915:
	set_velocities  2, VEL_LEFT_0768, VEL_UP_0768
	set_velocities  2, VEL_LEFT_1024, 0
MotionScript_1091b:
	set_velocities  2, VEL_LEFT_0768, VEL_DOWN_0768
	set_velocities  2, 0, VEL_DOWN_1024
MotionScript_10921:
	set_velocities  2, VEL_RIGHT_0768, VEL_DOWN_0768
	set_velocities  2, VEL_RIGHT_1024, 0
	jump_abs MotionScript_1090f

MotionScript_1092a:
	script_call MotionScript_10a75
	set_velocities 20, 0, 0
	set_velocities 20, 0, VEL_UP_0016
	set_velocities 16, VEL_LEFT_0032, VEL_UP_0320
	set_velocities 16, VEL_LEFT_0256, VEL_UP_0064
	set_velocities  8, VEL_LEFT_0512, VEL_DOWN_0064
	set_velocities  8, VEL_LEFT_0256, VEL_DOWN_0256
	set_velocities  8, VEL_RIGHT_0256, VEL_DOWN_0512
	set_velocities  8, VEL_RIGHT_0512, VEL_DOWN_1024
	set_velocities  8, VEL_RIGHT_0256, VEL_DOWN_0512
	set_velocities  8, VEL_LEFT_0064, VEL_DOWN_0256
	set_velocities  8, VEL_LEFT_0256, VEL_DOWN_0128
	set_velocities  8, VEL_LEFT_0768, VEL_UP_0032
	set_velocities  8, VEL_LEFT_1024, VEL_UP_0128
	set_velocities  8, VEL_LEFT_0512, VEL_UP_0256
	set_velocities  8, VEL_LEFT_0256, VEL_UP_0768
	set_velocities  8, VEL_RIGHT_0032, VEL_UP_1024
	set_velocities  8, VEL_RIGHT_0192, VEL_UP_1024
	set_velocities  6, VEL_RIGHT_0256, VEL_UP_1024
	set_velocities 32, VEL_RIGHT_0512, 0
	set_velocities 128, VEL_LEFT_0032, VEL_DOWN_0128
	set_velocities  0, 0, 0

MotionScript_1096c:
	script_call MotionScript_10a75
	set_velocities  8, 0, VEL_DOWN_0320
	set_velocities  8, 0, VEL_DOWN_0128
	set_velocities  8, 0, VEL_UP_0128
	set_velocities  8, 0, VEL_UP_0320
	set_velocities  8, 0, VEL_UP_0512
	set_velocities 12, 0, VEL_UP_1024
	set_velocities  8, VEL_LEFT_1024, 0
	set_velocities  8, VEL_LEFT_0512, 0
	set_velocities  8, VEL_LEFT_0320, 0
	set_velocities  8, VEL_LEFT_0064, 0
	set_velocities  8, 0, 0
	script_repeat 22
	set_velocities  2, VEL_RIGHT_0320, VEL_UP_0256
	set_velocities  2, VEL_RIGHT_0512, VEL_DOWN_0256
	create_object AnimScript_208f1, MotionScript_135bc, Data_3425
	script_repeat_end
	set_velocities  0, VEL_LEFT_0192, 0

MotionScript_109a3:
	script_call MotionScript_10a75
	set_velocities  8, 0, VEL_UP_0032
	set_velocities  8, VEL_LEFT_0064, VEL_UP_0512
	set_velocities  8, VEL_LEFT_0064, VEL_UP_1024
	set_velocities  8, VEL_LEFT_0064, VEL_UP_0512
	set_velocities  8, VEL_LEFT_0064, VEL_UP_0128
	set_velocities  8, VEL_LEFT_0064, VEL_DOWN_0128
	set_velocities  8, VEL_LEFT_0064, VEL_DOWN_0512
	set_velocities  8, VEL_LEFT_0064, VEL_DOWN_1024
	set_velocities  8, VEL_LEFT_0064, VEL_DOWN_0512
	set_velocities  8, 0, VEL_DOWN_0032
	set_velocities 16, 0, VEL_DOWN_0000
	play_sfx SFX_WARP_STAR
	script_repeat 15
	create_object AnimScript_208f1, $4a13, Data_3425
	set_velocities  2, VEL_RIGHT_0000, VEL_UP_0512
	set_velocities  2, VEL_RIGHT_0000, VEL_DOWN_0512
	script_repeat_end
	create_object AnimScript_203be, $4a13, Data_3425
	script_repeat 8
	set_velocities  6, VEL_RIGHT_0000, VEL_DOWN_0032
	create_object AnimScript_208f1, $4a13, Data_3425
	script_repeat_end
	set_velocities  8, VEL_LEFT_0016, VEL_UP_0256
	create_object AnimScript_208f1, $4a13, Data_3425
	set_velocities  8, VEL_LEFT_0064, VEL_UP_0512
	create_object AnimScript_208f1, $4a13, Data_3425
	set_velocities 20, VEL_LEFT_0128, VEL_UP_1024
	set_position $68, $08
	set_velocities 20, 0, 0
	play_sfx SFX_13
	set_velocities  0, VEL_RIGHT_0016, VEL_DOWN_0064

MotionScript_10a13:
	jumptable_random %11
	dw .script_10a1d
	dw .script_10a20
	dw .script_10a23
	dw .script_10a26

.script_10a1d
	set_velocities  0, VEL_LEFT_0128, VEL_DOWN_0768
.script_10a20
	set_velocities  0, VEL_LEFT_0032, VEL_DOWN_0768
.script_10a23
	set_velocities  0, VEL_RIGHT_0032, VEL_DOWN_0768
.script_10a26
	set_velocities  0, VEL_RIGHT_0128, VEL_DOWN_0768

MotionScript_10a29:
	script_call MotionScript_10a75
	set_velocities  8, VEL_LEFT_1024, VEL_UP_0512
	set_velocities  8, VEL_LEFT_0512, VEL_UP_1024
	set_velocities  8, VEL_LEFT_0192, VEL_UP_0768
	set_velocities  8, VEL_RIGHT_0192, VEL_UP_0128
	set_velocities  8, VEL_RIGHT_0512, VEL_DOWN_0192
	set_velocities  8, VEL_RIGHT_1024, VEL_DOWN_0512
	set_velocities  8, VEL_RIGHT_1024, VEL_DOWN_1024
	set_velocities  8, VEL_RIGHT_0512, VEL_DOWN_0512
	set_velocities  8, VEL_RIGHT_0192, VEL_DOWN_0192
	set_velocities  8, VEL_LEFT_0192, 0
	set_velocities  8, VEL_LEFT_0512, VEL_UP_0128
	set_velocities  8, VEL_LEFT_1024, VEL_UP_0256
	set_velocities  8, VEL_LEFT_0512, VEL_UP_0128
	set_velocities  8, VEL_LEFT_0128, 0
	set_velocities  8, VEL_RIGHT_0128, VEL_DOWN_0256
	set_velocities  8, VEL_RIGHT_0320, VEL_DOWN_0128
	set_velocities  8, VEL_RIGHT_0128, VEL_DOWN_0032
	set_velocities  8, VEL_LEFT_0064, 0
	set_velocities  8, 0, 0
	set_velocities  8, 0, VEL_UP_0512
	set_velocities  8, 0, VEL_UP_0768
	play_sfx SFX_08
	set_velocities  8, 0, VEL_UP_0256
	set_velocities  0, 0, VEL_UP_0128

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
	set_velocities  6, VEL_LEFT_0064, 0
	set_velocities  6, VEL_LEFT_0064, VEL_DOWN_0032
	set_velocities  6, VEL_LEFT_0064, VEL_DOWN_0128
	set_velocities  6, VEL_LEFT_0064, VEL_DOWN_0256
	set_velocities  0, VEL_LEFT_0064, VEL_DOWN_0320

MotionScript_10abd:
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_velocities  6, VEL_RIGHT_0064, 0
	set_velocities  6, VEL_RIGHT_0064, VEL_DOWN_0032
	set_velocities  6, VEL_RIGHT_0064, VEL_DOWN_0128
	set_velocities  6, VEL_RIGHT_0064, VEL_DOWN_0256
	set_velocities  0, VEL_RIGHT_0064, VEL_DOWN_0320

MotionScript_10ae8:
.loop
	jump_if_equal wd140, $56, $4b00
	set_velocities  1, VEL_LEFT_0128, 0
	jump_abs .loop

MotionScript_10af4:
.loop
	jump_if_equal wd140, $5a, $4b00
	set_velocities  1, VEL_RIGHT_0128, 0
	jump_abs .loop

MotionScript_10b00:
	set_scripts $4771, MotionScript_10008

MotionScript_10b05:
	set_velocities 79, VEL_LEFT_0064, 0
	script_repeat 2
	set_velocities  6, VEL_LEFT_0128, 0
	set_velocities 12, VEL_LEFT_0064, 0
	set_velocities  6, VEL_LEFT_0016, 0
	script_repeat_end
	set_velocities 31, 0, 0
	set_velocities  8, VEL_RIGHT_0128, VEL_UP_0512
	set_velocities  8, VEL_RIGHT_0128, VEL_UP_0256
	set_velocities  8, VEL_RIGHT_0128, VEL_UP_0032
	set_velocities  8, VEL_RIGHT_0128, VEL_DOWN_0032
	set_velocities  8, VEL_RIGHT_0128, VEL_DOWN_0256
	set_velocities  8, VEL_RIGHT_0128, VEL_DOWN_0512
	set_velocities  8, VEL_RIGHT_0128, 0
	set_velocities 31, VEL_RIGHT_0064, 0
	set_velocities 36, 0, 0
	set_velocities 24, VEL_LEFT_0128, 0
	set_velocities  0, 0, 0

MotionScript_10b38:
	set_velocities 10, VEL_RIGHT_0192, VEL_UP_0320
	set_velocities 10, 0, 0
	set_velocities 10, VEL_LEFT_0192, VEL_UP_0320
	set_velocities 10, 0, 0
	set_velocities 20, 0, VEL_DOWN_0320
	set_velocities 18, 0, 0
	set_velocities 10, VEL_LEFT_0192, VEL_UP_0512
	set_velocities 10, VEL_LEFT_0192, VEL_UP_0128
	set_velocities 10, VEL_LEFT_0192, 0
	set_velocities 10, VEL_LEFT_0192, VEL_DOWN_0128
	set_velocities 10, VEL_LEFT_0192, VEL_DOWN_0512
	set_velocities 10, 0, 0
	set_velocities 18, 0, 0
	set_velocities  6, VEL_RIGHT_0256, VEL_UP_0512
	set_velocities  6, VEL_RIGHT_0256, VEL_UP_0256
	set_velocities  6, VEL_RIGHT_0256, VEL_UP_0128
	set_velocities  6, VEL_RIGHT_0256, VEL_UP_0032
	set_velocities  6, VEL_RIGHT_0256, VEL_DOWN_0032
	set_velocities  6, VEL_RIGHT_0256, VEL_DOWN_0128
	set_velocities  6, VEL_RIGHT_0256, VEL_DOWN_0256
	set_velocities  6, VEL_RIGHT_0256, VEL_DOWN_0512
	set_velocities  6, VEL_RIGHT_0128, VEL_UP_0320
	set_velocities  6, VEL_RIGHT_0128, VEL_UP_0128
	set_velocities  6, VEL_RIGHT_0128, VEL_DOWN_0128
	set_velocities  6, VEL_RIGHT_0128, VEL_DOWN_0320
	set_velocities 12, 0, 0
	script_repeat 2
	set_velocities  6, VEL_LEFT_0256, 0
	set_velocities  6, VEL_LEFT_0128, 0
	set_velocities  6, VEL_LEFT_0064, 0
	set_velocities  6, VEL_LEFT_0032, 0
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_10b98:
	set_velocities 10, VEL_RIGHT_0128, VEL_UP_0512
	set_velocities 10, VEL_RIGHT_0128, VEL_UP_0256
	set_velocities 10, VEL_RIGHT_0128, VEL_UP_0064
	set_velocities 10, VEL_RIGHT_0128, VEL_DOWN_0064
	set_velocities 10, VEL_RIGHT_0128, VEL_DOWN_0256
	set_velocities 10, VEL_RIGHT_0128, VEL_DOWN_0512
	set_velocities 20, 0, 0
	script_repeat 2
	set_velocities  6, VEL_LEFT_0256, 0
	set_velocities 12, VEL_LEFT_0128, 0
	set_velocities  6, VEL_LEFT_0032, 0
	script_repeat_end
	set_velocities 31, 0, 0
	script_repeat 2
	set_velocities 10, 0, 0
	set_velocities 10, VEL_LEFT_0320, 0
	set_velocities 10, VEL_LEFT_0128, 0
	set_velocities 10, VEL_LEFT_0032, 0
	script_repeat_end
	script_repeat 2
	set_velocities  8, VEL_RIGHT_0320, 0
	set_velocities  8, VEL_RIGHT_0128, 0
	set_velocities  8, VEL_RIGHT_0064, 0
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_10bda:
	set_velocities 10, 0, VEL_UP_0512
	set_velocities 10, 0, VEL_UP_0256
	set_velocities 10, 0, VEL_UP_0064
	set_velocities 10, 0, VEL_DOWN_0064
	set_velocities 10, 0, VEL_DOWN_0256
	set_velocities 10, 0, VEL_DOWN_0512
	set_velocities 20, 0, 0
	script_call MotionScript_10c3a
	script_repeat 2
	set_velocities  4, VEL_RIGHT_0192, VEL_UP_0320
	set_velocities  4, VEL_RIGHT_0192, VEL_UP_0128
	set_velocities  4, VEL_RIGHT_0192, VEL_DOWN_0128
	set_velocities  4, VEL_RIGHT_0192, VEL_DOWN_0320
	script_repeat_end
	script_call MotionScript_10c3a
	set_velocities 16, 0, 0
	set_velocities  5, VEL_LEFT_0512, VEL_UP_0256
	set_velocities  5, VEL_LEFT_0512, VEL_UP_0064
	set_velocities  5, VEL_LEFT_0512, VEL_DOWN_0064
	set_velocities  5, VEL_LEFT_0512, VEL_DOWN_0256
	set_velocities 20, 0, 0
	set_velocities  5, VEL_RIGHT_0512, VEL_UP_0256
	set_velocities  5, VEL_RIGHT_0512, VEL_UP_0064
	set_velocities  5, VEL_RIGHT_0512, VEL_DOWN_0064
	set_velocities  5, VEL_RIGHT_0512, VEL_DOWN_0256
	set_velocities 20, 0, 0
	set_velocities  8, VEL_RIGHT_0320, 0
	set_velocities  8, VEL_RIGHT_0128, 0
	set_velocities  8, VEL_RIGHT_0064, 0
	set_velocities  8, VEL_LEFT_0320, 0
	set_velocities  8, VEL_LEFT_0128, 0
	set_velocities  8, VEL_LEFT_0064, 0
	set_velocities  0, 0, 0

MotionScript_10c3a:
	set_velocities  4, VEL_LEFT_0192, VEL_UP_0320
	set_velocities  4, VEL_LEFT_0192, VEL_UP_0128
	set_velocities  4, VEL_LEFT_0192, VEL_DOWN_0128
	set_velocities  4, VEL_LEFT_0192, VEL_DOWN_0320
	script_ret

MotionScript_10c47:
.loop
	set_velocities  2, VEL_LEFT_0128, 0
	set_velocities  2, VEL_RIGHT_0128, 0
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
	set_velocities  3, 0, VEL_UP_0256
	set_velocities  3, 0, VEL_UP_0192
	set_velocities  2, 0, 0
	script_end

.script_10c6f
	position_offset 5, -5
	set_velocities  3, VEL_RIGHT_0192, VEL_UP_0192
	set_velocities  3, VEL_RIGHT_0128, VEL_UP_0128
	set_velocities  2, 0, 0
	script_end

.script_10c7c
	position_offset 6, 0
	set_velocities  3, VEL_RIGHT_0256, 0
	set_velocities  3, VEL_RIGHT_0192, 0
	set_velocities  2, 0, 0
	script_end

.script_10c89
	position_offset 5, 5
	set_velocities  3, VEL_RIGHT_0192, VEL_DOWN_0192
	set_velocities  3, VEL_RIGHT_0128, VEL_DOWN_0128
	set_velocities  2, 0, 0
	script_end

.script_10c96
	position_offset 0, 6
	set_velocities  3, 0, VEL_DOWN_0256
	set_velocities  3, 0, VEL_DOWN_0192
	set_velocities  2, 0, 0
	script_end

.script_10ca3
	position_offset -5, 5
	set_velocities  3, VEL_LEFT_0192, VEL_DOWN_0192
	set_velocities  3, VEL_LEFT_0256, VEL_DOWN_0256
	set_velocities  2, 0, 0
	script_end

.script_10cb0
	position_offset -6, 0
	set_velocities  3, VEL_LEFT_0256, 0
	set_velocities  3, VEL_LEFT_0192, 0
	set_velocities  2, 0, 0
	script_end

.script_10cbd
	position_offset -5, -5
	set_velocities  3, VEL_LEFT_0512, VEL_UP_0512
	set_velocities  3, VEL_LEFT_0320, VEL_UP_0320
	set_velocities  2, 0, 0
	script_end
; 0x10cca

SECTION "Bank 4@4cf4", ROMX[$4cf4], BANK[$4]

MotionScript_10cf4:
	set_velocities 80, 0, 0
	set_anim_script AnimScript_20647
	set_velocities 16, 0, VEL_UP_0128
	set_velocities 16, 0, VEL_UP_0064
	set_velocities 16, 0, VEL_UP_0032
	set_velocities 80, 0, VEL_DOWN_0032
	set_anim_script AnimScript_20647
	set_velocities  8, VEL_LEFT_0128, 0
	set_velocities  8, VEL_LEFT_0256, 0
	set_velocities  0, VEL_LEFT_0192, 0

MotionScript_10d16:
.loop
	set_velocities  2, 0, VEL_DOWN_0320
	script_exec Func_30dc
	dw .script_10d40, .script_10d23
	jump_abs .loop

.script_10d23
	set_anim_script AnimScript_20662
	set_velocities 16, 0, VEL_DOWN_0256
	set_velocities  8, VEL_LEFT_0032, VEL_DOWN_0064
	set_velocities  8, VEL_LEFT_0128, VEL_DOWN_0016
	set_velocities  8, VEL_LEFT_0320, VEL_UP_0512
	set_velocities  8, VEL_LEFT_0128, VEL_UP_0192
	set_velocities  8, VEL_RIGHT_0016, VEL_UP_0064
	set_velocities  8, VEL_RIGHT_0032, 0
	set_velocities  0, VEL_RIGHT_0256, 0

.script_10d40
	set_anim_script AnimScript_20659
	set_velocities 16, 0, VEL_DOWN_0256
	set_velocities  8, VEL_RIGHT_0032, VEL_DOWN_0064
	set_velocities  8, VEL_RIGHT_0128, VEL_DOWN_0016
	set_velocities  8, VEL_RIGHT_0320, VEL_UP_0512
	set_velocities  8, VEL_RIGHT_0128, VEL_UP_0192
	set_velocities  8, VEL_LEFT_0016, VEL_UP_0064
	set_velocities  8, VEL_LEFT_0032, 0
	set_velocities  0, VEL_LEFT_0256, 0

MotionScript_10d5d:
.loop
	set_velocities  4, VEL_LEFT_0128, VEL_DOWN_0064
	set_velocities  4, VEL_LEFT_0128, 0
	set_velocities  4, VEL_LEFT_0064, VEL_UP_0064
	set_velocities  4, VEL_LEFT_0192, VEL_UP_0256
	set_velocities  4, VEL_LEFT_0256, VEL_UP_0064
	set_velocities  4, VEL_LEFT_0256, 0
	set_velocities  4, VEL_LEFT_0192, 0
	set_velocities  4, VEL_LEFT_0128, VEL_DOWN_0064
	set_velocities  4, VEL_LEFT_0128, VEL_DOWN_0256
	jump_abs .loop
; 0x10d7b

SECTION "Bank 4@4d99", ROMX[$4d99], BANK[$4]

MotionScript_10d99:
.loop
	set_velocities 80, 0, 0
	set_velocities  8, 0, VEL_UP_0256
	set_velocities  8, 0, VEL_UP_0192
	set_velocities  8, 0, VEL_UP_0064
	set_velocities  8, 0, VEL_UP_0016
	set_velocities  8, 0, VEL_DOWN_0016
	set_velocities  8, 0, VEL_DOWN_0064
	set_velocities  8, 0, VEL_DOWN_0192
	set_velocities  8, 0, VEL_DOWN_0256
	jump_abs .loop

MotionScript_10db7:
	set_velocities  8, VEL_RIGHT_0192, VEL_UP_0256
	set_velocities  8, VEL_RIGHT_0192, VEL_UP_0192
	set_velocities  8, VEL_RIGHT_0192, VEL_DOWN_0192
	set_velocities  8, VEL_RIGHT_0192, VEL_DOWN_0256
	set_object_properties Data_3483
	set_velocities  0, 0, 0

MotionScript_10dcb:
	set_velocities  8, VEL_LEFT_0192, VEL_UP_0256
	set_velocities  8, VEL_LEFT_0192, VEL_UP_0192
	set_velocities  8, VEL_LEFT_0192, VEL_DOWN_0192
	set_velocities  8, VEL_LEFT_0192, VEL_DOWN_0256
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
	set_velocities  4, VEL_LEFT_0000, VEL_UP_0256
	set_velocities  4, VEL_LEFT_0032, VEL_UP_0032
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0256
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0000, VEL_UP_0128
	set_velocities  4, VEL_LEFT_0032, VEL_UP_0032
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0128
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionSubScript_10e11:
	script_repeat 12
	set_velocities  4, VEL_RIGHT_0000, VEL_UP_0256
	set_velocities  4, VEL_RIGHT_0032, VEL_UP_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0256
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0000, VEL_UP_0128
	set_velocities  4, VEL_RIGHT_0032, VEL_UP_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0128
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
	set_velocities  4, VEL_LEFT_0000, VEL_DOWN_0256
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_LEFT_0032, VEL_UP_0032
	set_velocities  4, VEL_LEFT_0032, VEL_UP_0256
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0000, VEL_DOWN_0128
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_LEFT_0032, VEL_UP_0032
	set_velocities  4, VEL_LEFT_0032, VEL_UP_0128
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionSubScript_10e65:
	script_repeat 3
	set_velocities  4, VEL_RIGHT_0000, VEL_DOWN_0256
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_UP_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_UP_0256
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0000, VEL_DOWN_0128
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_UP_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_UP_0128
	set_velocities  1, 0, 0
	script_repeat_end
	script_ret

MotionScript_10e87:
.loop
	set_velocities 16, 0, 0
	set_velocities 32, 0, VEL_DOWN_0128
	set_velocities 64, 0, VEL_DOWN_0192
	set_velocities 32, 0, VEL_DOWN_0128
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
	set_velocities  3, VEL_LEFT_0128, 0
	set_velocities  3, VEL_LEFT_0128, VEL_UP_0064
	set_velocities  3, VEL_LEFT_0128, VEL_UP_0320
	set_velocities  3, VEL_LEFT_0128, VEL_DOWN_0320
	set_velocities  3, VEL_LEFT_0128, VEL_DOWN_0064
	set_velocities  3, VEL_LEFT_0128, 0
	script_ret

MotionSubScript_10ede:
	set_velocities  3, VEL_RIGHT_0128, 0
	set_velocities  3, VEL_RIGHT_0128, VEL_UP_0064
	set_velocities  3, VEL_RIGHT_0128, VEL_UP_0320
	set_velocities  3, VEL_RIGHT_0128, VEL_DOWN_0320
	set_velocities  3, VEL_RIGHT_0128, VEL_DOWN_0064
	set_velocities  3, VEL_RIGHT_0128, 0
	script_ret

MotionScript_10ef1:
	set_velocities 10, 0, VEL_UP_0512
	set_velocities 10, 0, VEL_UP_0192
	set_velocities 10, 0, 0
	set_velocities 10, 0, VEL_DOWN_0128
	set_velocities 10, 0, VEL_DOWN_0256
	set_velocities 14, 0, VEL_DOWN_0512
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
	set_velocities  4, VEL_LEFT_0128, VEL_UP_0128
	set_velocities  4, VEL_LEFT_0064, VEL_UP_0016
	set_velocities  4, VEL_LEFT_0064, VEL_DOWN_0016
	set_velocities  4, VEL_LEFT_0064, VEL_DOWN_0128
	script_repeat_end
	script_ret

MotionSubScript_10f29:
	script_repeat 9
	set_velocities  3, 0, 0
	set_velocities  4, VEL_RIGHT_0128, VEL_UP_0128
	set_velocities  4, VEL_RIGHT_0064, VEL_UP_0016
	set_velocities  4, VEL_RIGHT_0064, VEL_DOWN_0016
	set_velocities  4, VEL_RIGHT_0064, VEL_DOWN_0128
	script_repeat_end
	script_ret

MotionScript_10f3c:
	set_velocities  4, 0, 0
	set_velocities  8, VEL_RIGHT_0512, 0
	set_velocities  8, VEL_RIGHT_0256, 0
	set_velocities  8, VEL_RIGHT_0128, 0
	set_velocities  0, 0, 0
; 0x10f4b

SECTION "Bank 4@4f5a", ROMX[$4f5a], BANK[$4]

MotionScript_10f5a:
.loop
	script_repeat 3
	set_velocities  3, 0, 0
	set_velocities  4, VEL_LEFT_0128, VEL_UP_0128
	set_velocities  4, VEL_LEFT_0064, VEL_UP_0016
	set_velocities  4, VEL_LEFT_0064, VEL_DOWN_0016
	set_velocities  4, VEL_LEFT_0064, VEL_DOWN_0128
	script_repeat_end
	jump_abs .asm_10f6f ; unnecessary
.asm_10f6f
	script_repeat 3
	set_velocities  3, 0, 0
	set_velocities  4, VEL_RIGHT_0128, VEL_UP_0128
	set_velocities  4, VEL_RIGHT_0064, VEL_UP_0016
	set_velocities  4, VEL_RIGHT_0064, VEL_DOWN_0016
	set_velocities  4, VEL_RIGHT_0064, VEL_DOWN_0128
	script_repeat_end
	jump_abs .loop

MotionScript_10f84:
.loop
	set_velocities 60, VEL_LEFT_0192, 0
	set_velocities 60, VEL_RIGHT_0192, 0
	jump_rel .loop
; 0x10f8c

SECTION "Bank 4@4f9c", ROMX[$4f9c], BANK[$4]

MotionScript_10f9c:
	script_exec Func_30b2
	dw .script_10fa3, .script_10fc1

.script_10fa3
	set_velocities  6, VEL_RIGHT_0192, VEL_UP_0512
	set_velocities  6, VEL_RIGHT_0192, 0
	set_velocities  6, VEL_RIGHT_0192, VEL_DOWN_0512
	set_velocities  6, VEL_RIGHT_0064, VEL_UP_0256
	set_velocities  6, VEL_RIGHT_0064, 0
	set_velocities  6, VEL_RIGHT_0064, VEL_DOWN_0256
	set_velocities  6, VEL_RIGHT_0016, VEL_DOWN_0128
	set_velocities  6, VEL_RIGHT_0016, 0
	set_velocities  6, VEL_RIGHT_0016, VEL_DOWN_0128
	set_velocities  0, 0, 0

.script_10fc1
	set_velocities  6, VEL_LEFT_0192, VEL_UP_0512
	set_velocities  6, VEL_LEFT_0192, 0
	set_velocities  6, VEL_LEFT_0192, VEL_DOWN_0512
	set_velocities  6, VEL_LEFT_0064, VEL_UP_0256
	set_velocities  6, VEL_LEFT_0064, 0
	set_velocities  6, VEL_LEFT_0064, VEL_DOWN_0256
	set_velocities  6, VEL_LEFT_0016, VEL_DOWN_0128
	set_velocities  6, VEL_LEFT_0016, 0
	set_velocities  6, VEL_LEFT_0016, VEL_DOWN_0128
	set_velocities  0, 0, 0

MotionScript_10fdf:
	set_velocities 45, 0, VEL_DOWN_0512
MotionScript_10fe2:
	script_repeat 2
	set_velocities  8, VEL_RIGHT_0128, VEL_UP_0256
	set_velocities  8, VEL_RIGHT_0128, VEL_UP_0128
	set_velocities  8, VEL_RIGHT_0128, VEL_DOWN_0128
	set_velocities  8, VEL_RIGHT_0128, VEL_DOWN_0256
	set_velocities  8, VEL_LEFT_0128, VEL_UP_0320
	set_velocities  8, VEL_LEFT_0128, VEL_UP_0192
	set_velocities  8, VEL_LEFT_0128, VEL_DOWN_0192
	set_velocities  8, VEL_LEFT_0128, VEL_DOWN_0320
	script_repeat_end
	set_velocities  0, 0, 0

MotionScript_11000:
	set_velocities  4, VEL_LEFT_0192, VEL_UP_0512
	set_velocities  4, VEL_LEFT_0192, VEL_UP_0512
	set_velocities  4, VEL_LEFT_0192, VEL_UP_0256
	set_velocities  4, VEL_LEFT_0192, VEL_UP_0192
	set_velocities  4, VEL_LEFT_0192, VEL_UP_0128
	set_velocities  4, VEL_LEFT_0192, VEL_UP_0064
	set_velocities  4, VEL_LEFT_0192, VEL_DOWN_0064
	set_velocities  4, VEL_LEFT_0192, VEL_DOWN_0128
	set_velocities  4, VEL_LEFT_0192, VEL_DOWN_0192
	set_velocities  4, VEL_LEFT_0192, VEL_DOWN_0256
	set_velocities  4, VEL_LEFT_0192, VEL_DOWN_0512
	set_velocities  4, VEL_LEFT_0192, VEL_DOWN_0512
	set_velocities  4, VEL_RIGHT_0192, VEL_UP_0512
	set_velocities  4, VEL_RIGHT_0192, VEL_UP_0512
	set_velocities  4, VEL_RIGHT_0192, VEL_UP_0256
	set_velocities  4, VEL_RIGHT_0192, VEL_UP_0192
	set_velocities  4, VEL_RIGHT_0192, VEL_UP_0128
	set_velocities  4, VEL_RIGHT_0192, VEL_UP_0064
	set_velocities  4, VEL_RIGHT_0192, VEL_DOWN_0064
	set_velocities  4, VEL_RIGHT_0192, VEL_DOWN_0128
	set_velocities  4, VEL_RIGHT_0192, VEL_DOWN_0192
	set_velocities  4, VEL_RIGHT_0192, VEL_DOWN_0256
	set_velocities  4, VEL_RIGHT_0192, VEL_DOWN_0512
	set_velocities  4, VEL_RIGHT_0192, VEL_DOWN_0512
	set_velocities  0, 0, 0

MotionScript_1104b:
	set_velocities  5, VEL_LEFT_0512, VEL_UP_0512
	set_velocities  5, VEL_LEFT_0512, VEL_UP_0512
	set_velocities  5, VEL_LEFT_0512, VEL_UP_0256
	set_velocities  5, VEL_LEFT_0512, VEL_UP_0192
	set_velocities  5, VEL_LEFT_0512, VEL_UP_0128
	set_velocities  5, VEL_LEFT_0512, VEL_UP_0064
	set_velocities  5, VEL_LEFT_0512, VEL_DOWN_0064
	set_velocities  5, VEL_LEFT_0512, VEL_DOWN_0128
	set_velocities  5, VEL_LEFT_0512, VEL_DOWN_0192
	set_velocities  5, VEL_LEFT_0512, VEL_DOWN_0256
	set_velocities  5, VEL_LEFT_0512, VEL_DOWN_0512
	set_velocities  5, VEL_LEFT_0512, VEL_DOWN_0512
	set_velocities  5, VEL_RIGHT_0512, VEL_UP_0512
	set_velocities  5, VEL_RIGHT_0512, VEL_UP_0512
	set_velocities  5, VEL_RIGHT_0512, VEL_UP_0256
	set_velocities  5, VEL_RIGHT_0512, VEL_UP_0192
	set_velocities  5, VEL_RIGHT_0512, VEL_UP_0128
	set_velocities  5, VEL_RIGHT_0512, VEL_UP_0064
	set_velocities  5, VEL_RIGHT_0512, VEL_DOWN_0064
	set_velocities  5, VEL_RIGHT_0512, VEL_DOWN_0128
	set_velocities  5, VEL_RIGHT_0512, VEL_DOWN_0192
	set_velocities  5, VEL_RIGHT_0512, VEL_DOWN_0256
	set_velocities  5, VEL_RIGHT_0512, VEL_DOWN_0512
	set_velocities  5, VEL_RIGHT_0512, VEL_DOWN_0512
	set_velocities  0, 0, 0

MotionScript_11096:
	set_velocities  6, 0, VEL_UP_0768
	set_velocities  6, 0, VEL_UP_0512
	set_velocities  6, 0, VEL_UP_0320
	set_velocities  6, 0, VEL_UP_0192
	set_velocities  6, 0, VEL_UP_0032
	set_velocities 16, 0, 0
	set_velocities  6, 0, VEL_DOWN_0032
	set_velocities  6, 0, VEL_DOWN_0192
	set_velocities  6, 0, VEL_DOWN_0320
	set_velocities  6, 0, VEL_DOWN_0512
	set_velocities  6, 0, VEL_DOWN_0768
	set_velocities  0, 0, 0

MotionScript_110ba:
	set_velocities  8, VEL_LEFT_0512, 0
	set_velocities  8, VEL_LEFT_0512, VEL_DOWN_0064
	set_velocities  8, VEL_LEFT_0512, VEL_DOWN_0192
	set_velocities  8, VEL_LEFT_0320, VEL_UP_0320
	set_velocities  8, VEL_LEFT_0320, VEL_UP_0032
	set_velocities  8, VEL_LEFT_0320, VEL_DOWN_0032
	set_velocities  8, VEL_LEFT_0320, VEL_DOWN_0256
	create_object AnimScript_203be, MotionScript_10008, Data_35bb
	script_end

MotionScript_110d7:
	set_velocities  8, VEL_LEFT_0512, VEL_DOWN_0256
	set_velocities  8, VEL_LEFT_0512, VEL_DOWN_0512
	set_velocities  8, VEL_LEFT_0512, VEL_DOWN_0768
	set_velocities  8, VEL_LEFT_0320, VEL_UP_0512
	set_velocities  8, VEL_LEFT_0320, VEL_UP_0128
	set_velocities  8, VEL_LEFT_0320, VEL_DOWN_0128
	set_velocities  8, VEL_LEFT_0320, VEL_DOWN_0512
	create_object AnimScript_203be, MotionScript_10008, Data_35bb
	script_end

MotionScript_WhispyWoodsPuff:
	jump_random 50 percent + 1, .script_1110e
	position_offset -16, 24
	play_sfx SFX_15
	set_velocities  8, VEL_LEFT_0256, VEL_UP_0064
	set_velocities  8, VEL_LEFT_0512, 0
	set_velocities  8, VEL_LEFT_0768, VEL_UP_0064
	set_velocities  8, VEL_LEFT_0768, VEL_UP_0128
	set_velocities  0, VEL_LEFT_0768, VEL_UP_0192

.script_1110e
	position_offset -16, 24
	play_sfx SFX_15
	set_velocities  8, VEL_LEFT_0256, VEL_DOWN_0064
	set_velocities  8, VEL_LEFT_0512, 0
	set_velocities  8, VEL_LEFT_0768, VEL_DOWN_0064
	set_velocities  8, VEL_LEFT_0768, VEL_DOWN_0128
	set_velocities  0, VEL_LEFT_0768, VEL_DOWN_0192

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
	set_velocities  8, 0, VEL_DOWN_0256
	set_velocities  8, 0, VEL_DOWN_0320
	set_velocities  8, 0, VEL_DOWN_0512
	set_velocities  8, 0, VEL_DOWN_0768
	set_velocities  8, 0, VEL_DOWN_1024
	script_exec Func_30b2
	dw .roll_left, .roll_right

.roll_left
	set_anim_script AnimScript_WhispyWoodsApple_RollLeft
	set_velocities 10, VEL_LEFT_0128, VEL_UP_0512
	set_velocities 10, VEL_LEFT_0128, VEL_UP_0128
	set_velocities 10, VEL_LEFT_0128, VEL_DOWN_0128
	set_velocities 10, VEL_LEFT_0128, VEL_DOWN_0512
	set_velocities 10, VEL_LEFT_0192, VEL_UP_0320
	set_velocities 10, VEL_LEFT_0192, VEL_UP_0064
	set_velocities 10, VEL_LEFT_0192, VEL_DOWN_0064
	set_velocities 10, VEL_LEFT_0192, VEL_DOWN_0320
.loop_1
	set_velocities 10, VEL_LEFT_0192, VEL_UP_0128
	set_velocities 10, VEL_LEFT_0192, 0
	set_velocities 10, VEL_LEFT_0192, 0
	set_velocities 10, VEL_LEFT_0192, VEL_DOWN_0128
	jump_rel .loop_1

.roll_right
	set_anim_script AnimScript_WhispyWoodsApple_RollRight
	set_velocities 10, VEL_RIGHT_0128, VEL_UP_0512
	set_velocities 10, VEL_RIGHT_0128, VEL_UP_0128
	set_velocities 10, VEL_RIGHT_0128, VEL_DOWN_0128
	set_velocities 10, VEL_RIGHT_0128, VEL_DOWN_0512
	set_velocities 10, VEL_RIGHT_0192, VEL_UP_0320
	set_velocities 10, VEL_RIGHT_0192, VEL_UP_0064
	set_velocities 10, VEL_RIGHT_0192, VEL_DOWN_0064
	set_velocities 10, VEL_RIGHT_0192, VEL_DOWN_0320
.loop_2
	set_velocities 10, VEL_RIGHT_0192, VEL_UP_0128
	set_velocities 10, VEL_RIGHT_0192, 0
	set_velocities 10, VEL_RIGHT_0192, 0
	set_velocities 10, VEL_RIGHT_0192, VEL_DOWN_0128
	jump_rel .loop_2
; 0x111c7

SECTION "Bank 4@51d8", ROMX[$51d8], BANK[$4]

MotionScript_111d8:
.loop
	set_velocities 20, 0, 0
	set_velocities  2, 0, VEL_UP_0256
	set_velocities  2, 0, VEL_DOWN_0256
	jump_abs .loop

MotionScript_111e4:
.loop
	script_repeat 6
	set_velocities  4, VEL_LEFT_0000, VEL_UP_0256
	set_velocities  4, VEL_LEFT_0032, VEL_UP_0032
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0256
	set_velocities  1, 0, 0
	set_velocities  4, VEL_LEFT_0000, VEL_UP_0128
	set_velocities  4, VEL_LEFT_0032, VEL_UP_0032
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_LEFT_0032, VEL_DOWN_0128
	set_velocities  1, 0, 0
	script_repeat_end
	script_repeat 6
	set_velocities  4, VEL_RIGHT_0000, VEL_UP_0256
	set_velocities  4, VEL_RIGHT_0032, VEL_UP_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0256
	set_velocities  1, 0, 0
	set_velocities  4, VEL_RIGHT_0000, VEL_UP_0128
	set_velocities  4, VEL_RIGHT_0032, VEL_UP_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0032
	set_velocities  4, VEL_RIGHT_0032, VEL_DOWN_0128
	set_velocities  1, 0, 0
	script_repeat_end
	jump_abs .loop
; 0x11229

SECTION "Bank 4@5fc6", ROMX[$5fc6], BANK[$4]

MotionScript_TitleScreenWarpStarKirby:
	set_velocities 40, 0, 0
	script_repeat 2
	set_velocities  8, VEL_RIGHT_1024, VEL_UP_0008
	set_velocities  8, VEL_RIGHT_0512, VEL_UP_0016
	set_velocities  8, VEL_RIGHT_0320, VEL_UP_0064
	set_velocities  8, VEL_RIGHT_0256, VEL_UP_0128
	set_velocities  8, VEL_RIGHT_0192, VEL_UP_0128
	set_velocities  8, VEL_LEFT_0192, VEL_UP_0128
	set_velocities  8, VEL_LEFT_0256, VEL_UP_0128
	set_velocities  8, VEL_LEFT_0320, VEL_UP_0064
	set_velocities  8, VEL_LEFT_0512, VEL_UP_0016
	set_velocities  8, VEL_LEFT_1024, VEL_UP_0008
	position_offset 0, 14
	set_velocities  8, VEL_LEFT_0768, VEL_DOWN_0008
	set_velocities  8, VEL_LEFT_0512, VEL_DOWN_0016
	set_velocities  8, VEL_LEFT_0320, VEL_DOWN_0064
	set_velocities  8, VEL_LEFT_0256, VEL_DOWN_0128
	set_velocities  8, VEL_LEFT_0192, VEL_DOWN_0128
	set_velocities  8, VEL_RIGHT_0192, VEL_DOWN_0128
	set_velocities  8, VEL_RIGHT_0256, VEL_DOWN_0128
	set_velocities  8, VEL_RIGHT_0320, VEL_DOWN_0064
	set_velocities  8, VEL_RIGHT_0512, VEL_DOWN_0016
	set_velocities  8, VEL_RIGHT_0768, VEL_DOWN_0008
	script_repeat_end
	set_velocities 30, VEL_RIGHT_0768, VEL_UP_0032
	script_end

MotionScript_TitleScreenKirby:
	script_call MotionSubScript_1208c
	set_velocities 16, VEL_RIGHT_0032, VEL_UP_0192
	set_velocities 16, VEL_RIGHT_0032, VEL_UP_0128
	set_velocities 16, VEL_RIGHT_0032, VEL_UP_0064
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0064
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0128
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0192
	set_velocities 32, 0, 0
	script_call MotionSubScript_1208c
	set_velocities 10, VEL_RIGHT_0064, VEL_UP_0128
	set_velocities  8, VEL_RIGHT_0128, VEL_UP_0064
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0032
	set_velocities 10, VEL_RIGHT_0032, VEL_UP_0032
	set_velocities 10, VEL_RIGHT_0064, VEL_DOWN_0032
	set_velocities  8, VEL_RIGHT_0128, VEL_DOWN_0032
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0064
	set_velocities 10, VEL_RIGHT_0032, VEL_DOWN_0128
	set_velocities 64, VEL_RIGHT_0032, 0
	set_velocities 48, VEL_RIGHT_0032, 0
	set_velocities 16, VEL_RIGHT_0032, VEL_UP_0256
	set_velocities 16, VEL_RIGHT_0032, VEL_UP_0128
	set_velocities 16, VEL_RIGHT_0032, VEL_UP_0032
	set_velocities 16, VEL_RIGHT_0032, 0
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0032
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0128
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0256
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0256
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0064
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0064
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0256
	set_velocities 16, 0, 0
	script_repeat 2
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0256
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0064
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0064
	set_velocities  8, VEL_RIGHT_0064, VEL_DOWN_0256
	script_repeat_end
	set_velocities 10, VEL_RIGHT_0064, VEL_UP_0256
	set_velocities 10, VEL_RIGHT_0064, VEL_UP_0128
	set_velocities 10, VEL_RIGHT_0064, VEL_UP_0064
.loop
	set_velocities 10, VEL_RIGHT_0064, VEL_UP_0032
	set_velocities 10, VEL_RIGHT_0064, VEL_UP_0064
	jump_rel .loop

MotionSubScript_1208c:
	script_repeat 2
	set_velocities 18, VEL_RIGHT_0064, VEL_UP_0032
	set_velocities 11, VEL_RIGHT_0064, 0
	set_velocities 18, VEL_RIGHT_0064, VEL_DOWN_0032
	set_velocities 11, VEL_RIGHT_0064, 0
	script_repeat_end
	script_ret

MotionScript_SoundTestNote:
.loop
	set_velocities 16, 0, 0
	set_velocities 16, 0, VEL_UP_0016
	set_velocities 16, 0, VEL_UP_0032
	set_velocities 16, 0, VEL_UP_0064
	set_velocities 16, 0, VEL_UP_0032
	set_velocities 16, 0, VEL_UP_0016
	set_velocities 16, 0, 0
	set_velocities 16, 0, VEL_DOWN_0016
	set_velocities 16, 0, VEL_DOWN_0032
	set_velocities 16, 0, VEL_DOWN_0064
	set_velocities 16, 0, VEL_DOWN_0032
	set_velocities 16, 0, VEL_DOWN_0016
	set_velocities 16, 0, 0
	jump_abs .loop
; 0x120c6

SECTION "Bank 4@6491", ROMX[$6491], BANK[$4]

MotionScript_12491:
	set_velocities 80, VEL_RIGHT_0000, VEL_DOWN_0000
	script_repeat 10
	set_velocities  2, VEL_LEFT_0256, 0
	set_velocities  2, VEL_RIGHT_0256, 0
	script_repeat_end
	set_velocities  0, 0, 0
; 0x124a0

SECTION "Bank 4@64b9", ROMX[$64b9], BANK[$4]

MotionScript_124b9:
	set_velocities 80, VEL_RIGHT_0000, VEL_DOWN_0000
	set_velocities  0, VEL_RIGHT_0128, VEL_UP_0128
; 0x124bf

SECTION "Bank 4@75bc", ROMX[$75bc], BANK[$4]

MotionScript_135bc:
	jumptable_random %11
	dw .script_135c6
	dw .script_135c9
	dw .script_135cc
	dw .script_135cf

.script_135c6
	set_velocities  0, VEL_LEFT_0768, VEL_DOWN_0192

.script_135c9
	set_velocities  0, VEL_LEFT_0768, VEL_DOWN_0032

.script_135cc
	set_velocities  0, VEL_LEFT_0768, VEL_UP_0032

.script_135cf
	set_velocities  0, VEL_LEFT_0768, VEL_UP_0192

MotionScript_135d2:
	set_position $00, $70
	set_velocities 16, VEL_RIGHT_0768, 0
	set_velocities 16, VEL_RIGHT_0512, 0
	set_velocities 16, VEL_RIGHT_0320, 0
	set_velocities 16, VEL_RIGHT_0256, VEL_UP_0016
	set_velocities 16, VEL_RIGHT_0256, VEL_UP_0032
	set_velocities 16, VEL_RIGHT_0128, VEL_UP_0032
	script_repeat 4
	set_velocities  2, VEL_LEFT_0320, VEL_UP_0512
	set_velocities  2, VEL_LEFT_0256, VEL_DOWN_0320
	script_repeat_end
	set_velocities 16, VEL_LEFT_0320, VEL_DOWN_0128
	script_repeat 8
	set_velocities  2, VEL_LEFT_0320, VEL_UP_0512
	set_velocities  2, VEL_LEFT_0256, VEL_DOWN_0768
	script_repeat_end
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0768
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0320
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0128
	set_velocities  8, VEL_RIGHT_0064, VEL_UP_0032
	set_velocities 40, 0, 0
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0032
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0064
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0192
	set_velocities 16, VEL_RIGHT_0032, VEL_DOWN_0256
	script_repeat 2
	play_sfx SFX_BUMP
	set_velocities  2, VEL_LEFT_0032, 0
	set_velocities 10, VEL_LEFT_0032, VEL_UP_0128
	set_velocities 10, VEL_LEFT_0032, VEL_UP_0032
	set_velocities 10, VEL_LEFT_0032, VEL_DOWN_0032
	set_velocities 10, VEL_LEFT_0032, VEL_DOWN_0128
	script_repeat_end
	play_sfx SFX_25
	set_scripts $428f, MotionScript_10008
; 0x13636
