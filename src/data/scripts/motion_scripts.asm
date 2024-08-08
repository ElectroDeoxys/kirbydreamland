MotionScript_10000:
	set_custom_func Func_1401a
	set_velocities 0, $00, $00
; 0x10006

SECTION "Bank 4@4008", ROMX[$4008], BANK[$4]

MotionScript_10008:
	set_velocities 0, $00, $00
; 0x1000b

SECTION "Bank 4@4137", ROMX[$4137], BANK[$4]

MotionScript_10137:
	set_velocities  8, $00, $8a
	set_velocities  8, $00, $88
	set_velocities  8, $00, $85
	set_velocities  8, $00, $75
	set_velocities  8, $00, $79
	set_velocities  0, $00, $7b

MotionScript_10149:
	set_flags hff94, $ff, $20
	script_repeat 3
	set_velocities  1, $8a, $8c
	set_velocities  1, $7a, $8a
	script_repeat_end
	script_exec Func_4ac1
	set_flags hff94, $df, $00
	set_velocities  0, $00, $00

MotionScript_10162:
	set_flags hff94, $ff, $20
	script_repeat 4
	set_velocities  1, $8a, $79
	set_velocities  1, $7a, $79
	script_repeat_end
	script_exec Func_4ac1
	set_flags hff94, $df, $00
	set_velocities  0, $00, $00
; 0x1017b

SECTION "Bank 4@422a", ROMX[$422a], BANK[$4]

MotionScript_1022a:
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1023a
	set_velocities  8, $8c, $00
	set_velocities  8, $8a, $00
	set_velocities 10, $86, $00
	script_end

.script_1023a
	set_velocities  8, $7c, $00
	set_velocities  8, $7a, $00
	set_velocities 10, $76, $00
	script_end
; 0x10244

SECTION "Bank 4@428c", ROMX[$428c], BANK[$4]

MotionScript_1028c::
	set_velocities  2, $7c, $00
	set_velocities  4, $00, $00
	set_velocities  2, $8c, $00
	set_velocities  0, $00, $00
; 0x10298

SECTION "Bank 4@42bc", ROMX[$42bc], BANK[$4]

MotionScript_102bc::
	set_velocities  2, $8c, $00
	set_velocities  4, $00, $00
	set_velocities  2, $7c, $00
	set_velocities  0, $00, $00

MotionScript_102c8:
	set_velocities 0, $85, $00
; 0x102cb

SECTION "Bank 4@42fb", ROMX[$42fb], BANK[$4]

MotionScript_102fb:
	script_exec Func_30b2
	dw MotionScript_1030b, MotionScript_10308

MotionScript_10302:
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, MotionScript_1030b

MotionScript_10308:
	set_velocities 0, $8b, $00

MotionScript_1030b:
	set_velocities 0, $7b, $00
; 0x1030e

SECTION "Bank 4@4317", ROMX[$4317], BANK[$4]

MotionScript_10317:
	set_velocities  0, $8c, $00
; 0x1031a

SECTION "Bank 4@431d", ROMX[$431d], BANK[$4]

MotionScript_1031d:
	set_velocities  1, $00, $00
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
	set_flags hff94, $ff, $20
	jump_if_not_flags hKirbyFlags3, KIRBY3F_FACE_LEFT, .script_1038d
	position_offset $00, $06
	set_velocities  2, $8a, $00
	set_velocities  2, $88, $00
	set_velocities  4, $86, $00
	jump_rel .jump
.script_1038d
	set_velocities  2, $7a, $00
	set_velocities  2, $78, $00
	set_velocities  4, $76, $00
.jump
	set_velocities  0, $00, $00
; 0x10399

SECTION "Bank 4@43ff", ROMX[$43ff], BANK[$4]

MotionScript_103ff:
.loop
	set_velocities 10, $85, $00
	set_velocities 30, $86, $00
	set_velocities 10, $85, $00
	set_velocities 10, $75, $00
	set_velocities 30, $76, $00
	set_velocities 10, $75, $00
	jump_abs .loop
; 0x10414

SECTION "Bank 4@442f", ROMX[$442f], BANK[$4]

MotionScript_1042f:
.loop
	set_velocities 16, $86, $00
	set_velocities 48, $89, $00
	set_velocities 16, $86, $00
	set_velocities 16, $76, $00
	set_velocities 48, $79, $00
	set_velocities 16, $76, $00
	jump_abs .loop
; 0x10444

SECTION "Bank 4@4508", ROMX[$4508], BANK[$4]

MotionScript_10508:
.loop
	set_velocities 16, $00, $00
	set_velocities 32, $00, $75
	set_velocities 64, $00, $76
	set_velocities 32, $00, $75
	set_velocities 16, $00, $00
	set_velocities 32, $00, $85
	set_velocities 64, $00, $86
	set_velocities 32, $00, $85
	jump_abs .loop
; 0x10523

SECTION "Bank 4@467d", ROMX[$467d], BANK[$4]

MotionScript_1067d:
.loop
	set_anim_script AnimScript_2063b
	set_velocities  6, $87, $89
	set_velocities  6, $87, $87
	set_velocities  6, $87, $85
	set_velocities  6, $87, $75
	set_velocities  6, $87, $77
	jump_random 33 percent + 1, .loop
	set_velocities  3, $87, $79
	jump_random 50 percent + 1, .loop
	set_velocities  3, $87, $79
	jump_abs .loop
; 0x106a2

SECTION "Bank 4@46eb", ROMX[$46eb], BANK[$4]

MotionScript_106eb:
	position_offset $fc, $fc
	set_velocities  8, $87, $87
	set_velocities 48, $84, $85
	script_end

MotionScript_106f5:
	position_offset $04, $fc
	set_velocities  8, $77, $87
	set_velocities 48, $74, $85
	script_end

MotionScript_106ff:
	position_offset $fa, $00
	set_velocities  8, $89, $00
	set_velocities 48, $85, $00
	script_end

MotionScript_10709:
	position_offset $06, $00
	set_velocities  8, $79, $00
	set_velocities 48, $75, $00
	script_end

MotionScript_10713:
	set_velocities  6, $00, $8d
	set_velocities  6, $00, $8b
	set_velocities  6, $00, $89
	set_velocities  0, $00, $87

MotionScript_1071f:
	set_velocities  6, $7d, $00
	set_velocities  6, $7b, $00
	set_velocities  6, $79, $00
	set_velocities  0, $77, $00

MotionScript_1072b:
	set_velocities  6, $00, $7d
	set_velocities  6, $00, $7b
	set_velocities  6, $00, $79
	set_velocities  0, $00, $77

MotionScript_10737:
	set_velocities  6, $8d, $00
	set_velocities  6, $8b, $00
	set_velocities  6, $89, $00
	set_velocities  0, $87, $00

MotionScript_10743:
	set_velocities  6, $7c, $8c
	set_velocities  6, $7a, $8a
	set_velocities  6, $78, $88
	set_velocities  0, $76, $86

MotionScript_1074f:
	set_velocities  6, $7c, $7c
	set_velocities  6, $7a, $7a
	set_velocities  6, $78, $78
	set_velocities  0, $76, $76

MotionScript_1075b:
	set_velocities  6, $8c, $7c
	set_velocities  6, $8a, $7a
	set_velocities  6, $88, $78
	set_velocities  0, $86, $76

MotionScript_10767:
	set_velocities  6, $8c, $8c
	set_velocities  6, $8a, $8a
	set_velocities  6, $88, $88
	set_velocities  0, $86, $86
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
	position_offset $00, $fa
	set_velocities  3, $00, $8b
	set_velocities  3, $00, $8a
	set_velocities  0, $00, $00

.script_107e1
	position_offset $05, $fb
	set_velocities  3, $7a, $8a
	set_velocities  3, $79, $89
	set_velocities  0, $00, $00

.script_107ed
	position_offset $06, $00
	set_velocities  3, $7b, $00
	set_velocities  3, $7a, $00
	set_velocities  0, $00, $00

.script_107f9
	position_offset $05, $05
	set_velocities  3, $7a, $7a
	set_velocities  3, $79, $79
	set_velocities  0, $00, $00

.script_10805
	position_offset $00, $06
	set_velocities  3, $00, $7b
	set_velocities  3, $00, $7a
	set_velocities  0, $00, $00

.script_10811
	position_offset $fb, $05
	set_velocities  3, $8a, $7a
	set_velocities  3, $89, $79
	set_velocities  0, $00, $00

.script_1081d
	position_offset $fa, $00
	set_velocities  3, $8b, $00
	set_velocities  3, $8a, $00
	set_velocities  0, $00, $00

.script_10829
	position_offset $fb, $fb
	set_velocities  3, $8a, $8a
	set_velocities  3, $89, $89
	set_velocities  0, $00, $00

MotionScript_10835:
	set_velocities  4, $7b, $8b
	set_velocities  4, $79, $89
	set_velocities  4, $76, $86
	script_end

MotionScript_1083f:
	set_velocities  3, $7b, $7b
	set_velocities  3, $79, $79
	script_end

MotionScript_10846:
	set_velocities  4, $8b, $7b
	set_velocities  4, $89, $79
	set_velocities  4, $76, $76
	script_end

MotionScript_10850:
	set_velocities  3, $8b, $8b
	set_velocities  3, $89, $89
	script_end

MotionScript_10857:
	set_velocities  3, $00, $8c
	set_velocities  3, $00, $8a
	set_velocities  3, $00, $88
	script_end

MotionScript_10861:
	set_velocities  3, $7b, $8b
	set_velocities  3, $79, $89
	set_velocities  3, $76, $86
	script_end

MotionScript_1086b:
	set_velocities  3, $7c, $00
	set_velocities  3, $7a, $00
	set_velocities  3, $78, $00
	script_end

MotionScript_10875:
	set_velocities  3, $7b, $7b
	set_velocities  3, $79, $79
	set_velocities  3, $76, $76
	script_end

MotionScript_1087f:
	set_velocities  3, $00, $7c
	set_velocities  3, $00, $7a
	set_velocities  3, $00, $78
	script_end

MotionScript_10889:
	set_velocities  3, $8b, $7b
	set_velocities  3, $89, $79
	set_velocities  3, $86, $76
	script_end

MotionScript_10893:
	set_velocities  3, $8c, $00
	set_velocities  3, $8a, $00
	set_velocities  3, $88, $00
	script_end

MotionScript_1089d:
	set_velocities  3, $8b, $8b
	set_velocities  3, $89, $89
	set_velocities  3, $86, $86
	script_end

MotionScript_108a7:
	set_velocities  3, $7a, $8c
	set_velocities  3, $78, $8a
	set_velocities  3, $75, $88
	set_velocities  3, $73, $85
	script_end

MotionScript_108b4:
	set_velocities  3, $7c, $8a
	set_velocities  3, $7a, $88
	set_velocities  3, $78, $85
	set_velocities  3, $75, $83
	script_end

MotionScript_108c1:
	set_velocities  3, $7c, $7a
	set_velocities  3, $7a, $78
	set_velocities  3, $78, $75
	set_velocities  3, $75, $73
	script_end

MotionScript_108ce:
	set_velocities  3, $7a, $7c
	set_velocities  3, $78, $7a
	set_velocities  3, $75, $78
	set_velocities  3, $73, $75
	script_end

MotionScript_108db:
	set_velocities  3, $8a, $7c
	set_velocities  3, $88, $7a
	set_velocities  3, $85, $78
	set_velocities  3, $83, $75
	script_end

MotionScript_108e8:
	set_velocities  3, $8c, $7a
	set_velocities  3, $8a, $78
	set_velocities  3, $88, $75
	set_velocities  3, $85, $73
	script_end

MotionScript_108f5:
	set_velocities  3, $8c, $8a
	set_velocities  3, $8a, $88
	set_velocities  3, $88, $85
	set_velocities  3, $85, $83
	script_end

MotionScript_10902:
	set_velocities  3, $8a, $8c
	set_velocities  3, $88, $8a
	set_velocities  3, $85, $88
	set_velocities  3, $83, $85
	script_end
 
MotionScript_1090f:
	set_velocities  2, $7b, $8b
	set_velocities  2, $00, $8c
MotionScript_10915:
	set_velocities  2, $8b, $8b
	set_velocities  2, $8c, $00
MotionScript_1091b:
	set_velocities  2, $8b, $7b
	set_velocities  2, $00, $7c
MotionScript_10921:
	set_velocities  2, $7b, $7b
	set_velocities  2, $7c, $00
	jump_abs MotionScript_1090f

MotionScript_1092a:
	script_call MotionScript_10a75
	set_velocities 20, $00, $00
	set_velocities 20, $00, $83
	set_velocities 16, $84, $89
	set_velocities 16, $88, $85
	set_velocities  8, $8a, $75
	set_velocities  8, $88, $78
	set_velocities  8, $78, $7a
	set_velocities  8, $7a, $7c
	set_velocities  8, $78, $7a
	set_velocities  8, $85, $78
	set_velocities  8, $88, $76
	set_velocities  8, $8b, $84
	set_velocities  8, $8c, $86
	set_velocities  8, $8a, $88
	set_velocities  8, $88, $8b
	set_velocities  8, $74, $8c
	set_velocities  8, $77, $8c
	set_velocities  6, $78, $8c
	set_velocities 32, $7a, $00
	set_velocities 128, $84, $76
	set_velocities  0, $00, $00

MotionScript_1096c:
	script_call MotionScript_10a75
	set_velocities  8, $00, $79
	set_velocities  8, $00, $76
	set_velocities  8, $00, $86
	set_velocities  8, $00, $89
	set_velocities  8, $00, $8a
	set_velocities 12, $00, $8c
	set_velocities  8, $8c, $00
	set_velocities  8, $8a, $00
	set_velocities  8, $89, $00
	set_velocities  8, $85, $00
	set_velocities  8, $00, $00
	script_repeat 22
	set_velocities  2, $79, $88
	set_velocities  2, $7a, $78
	create_object AnimScript_208f1, MotionScript_135bc, Data_3425
	script_repeat_end
	set_velocities  0, $87, $00

MotionScript_109a3:
	script_call MotionScript_10a75
	set_velocities  8, $00, $84
	set_velocities  8, $85, $8a
	set_velocities  8, $85, $8c
	set_velocities  8, $85, $8a
	set_velocities  8, $85, $86
	set_velocities  8, $85, $76
	set_velocities  8, $85, $7a
	set_velocities  8, $85, $7c
	set_velocities  8, $85, $7a
	set_velocities  8, $00, $74
	set_velocities 16, $00, $70
	play_sfx SFX_WARP_STAR
	script_repeat 15
	create_object AnimScript_208f1, $4a13, Data_3425
	set_velocities  2, $70, $8a
	set_velocities  2, $70, $7a
	script_repeat_end
	create_object $43be, $4a13, Data_3425
	script_repeat 8
	set_velocities  6, $70, $74
	create_object AnimScript_208f1, $4a13, Data_3425
	script_repeat_end
	set_velocities  8, $83, $88
	create_object AnimScript_208f1, $4a13, Data_3425
	set_velocities  8, $85, $8a
	create_object AnimScript_208f1, $4a13, Data_3425
	set_velocities 20, $86, $8c
	script_f0 $68, $08
	set_velocities 20, $00, $00
	play_sfx SFX_13
	set_velocities  0, $73, $75

MotionScript_10a13:
	jumptable_random %11
	dw .script_10a1d
	dw .script_10a20
	dw .script_10a23
	dw .script_10a26

.script_10a1d
	set_velocities  0, $86, $7b
.script_10a20
	set_velocities  0, $84, $7b
.script_10a23
	set_velocities  0, $74, $7b
.script_10a26
	set_velocities  0, $76, $7b

MotionScript_10a29:
	script_call MotionScript_10a75
	set_velocities  8, $8c, $8a
	set_velocities  8, $8a, $8c
	set_velocities  8, $87, $8b
	set_velocities  8, $77, $86
	set_velocities  8, $7a, $77
	set_velocities  8, $7c, $7a
	set_velocities  8, $7c, $7c
	set_velocities  8, $7a, $7a
	set_velocities  8, $77, $77
	set_velocities  8, $87, $00
	set_velocities  8, $8a, $86
	set_velocities  8, $8c, $88
	set_velocities  8, $8a, $86
	set_velocities  8, $86, $00
	set_velocities  8, $76, $78
	set_velocities  8, $79, $76
	set_velocities  8, $76, $74
	set_velocities  8, $85, $00
	set_velocities  8, $00, $00
	set_velocities  8, $00, $8a
	set_velocities  8, $00, $8b
	play_sfx SFX_08
	set_velocities  8, $00, $88
	set_velocities  0, $00, $86

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
	set_velocities  6, $85, $00
	set_velocities  6, $85, $74
	set_velocities  6, $85, $76
	set_velocities  6, $85, $78
	set_velocities  0, $85, $79

MotionScript_10abd:
	create_object AnimScript_208f1, MotionScript_106eb, Data_3425
	create_object AnimScript_208f1, MotionScript_106f5, Data_3425
	create_object AnimScript_208f1, MotionScript_106ff, Data_3425
	create_object AnimScript_208f1, MotionScript_10709, Data_3425
	set_velocities  6, $75, $00
	set_velocities  6, $75, $74
	set_velocities  6, $75, $76
	set_velocities  6, $75, $78
	set_velocities  0, $75, $79

MotionScript_10ae8:
.loop
	jump_if_equal wd140, $56, $4b00
	set_velocities  1, $86, $00
	jump_abs .loop

MotionScript_10af4:
.loop
	jump_if_equal wd140, $5a, $4b00
	set_velocities  1, $76, $00
	jump_abs .loop

MotionScript_10b00:
	set_scripts $4771, MotionScript_10008

MotionScript_10b05:
	set_velocities 79, $85, $00
	script_repeat 2
	set_velocities  6, $86, $00
	set_velocities 12, $85, $00
	set_velocities  6, $83, $00
	script_repeat_end
	set_velocities 31, $00, $00
	set_velocities  8, $76, $8a
	set_velocities  8, $76, $88
	set_velocities  8, $76, $84
	set_velocities  8, $76, $74
	set_velocities  8, $76, $78
	set_velocities  8, $76, $7a
	set_velocities  8, $76, $00
	set_velocities 31, $75, $00
	set_velocities 36, $00, $00
	set_velocities 24, $86, $00
	set_velocities  0, $00, $00

MotionScript_10b38:
	set_velocities 10, $77, $89
	set_velocities 10, $00, $00
	set_velocities 10, $87, $89
	set_velocities 10, $00, $00
	set_velocities 20, $00, $79
	set_velocities 18, $00, $00
	set_velocities 10, $87, $8a
	set_velocities 10, $87, $86
	set_velocities 10, $87, $00
	set_velocities 10, $87, $76
	set_velocities 10, $87, $7a
	set_velocities 10, $00, $00
	set_velocities 18, $00, $00
	set_velocities  6, $78, $8a
	set_velocities  6, $78, $88
	set_velocities  6, $78, $86
	set_velocities  6, $78, $84
	set_velocities  6, $78, $74
	set_velocities  6, $78, $76
	set_velocities  6, $78, $78
	set_velocities  6, $78, $7a
	set_velocities  6, $76, $89
	set_velocities  6, $76, $86
	set_velocities  6, $76, $76
	set_velocities  6, $76, $79
	set_velocities 12, $00, $00
	script_repeat 2
	set_velocities  6, $88, $00
	set_velocities  6, $86, $00
	set_velocities  6, $85, $00
	set_velocities  6, $84, $00
	script_repeat_end
	set_velocities  0, $00, $00

MotionScript_10b98:
	set_velocities 10, $76, $8a
	set_velocities 10, $76, $88
	set_velocities 10, $76, $85
	set_velocities 10, $76, $75
	set_velocities 10, $76, $78
	set_velocities 10, $76, $7a
	set_velocities 20, $00, $00
	script_repeat 2
	set_velocities  6, $88, $00
	set_velocities 12, $86, $00
	set_velocities  6, $84, $00
	script_repeat_end
	set_velocities 31, $00, $00
	script_repeat 2
	set_velocities 10, $00, $00
	set_velocities 10, $89, $00
	set_velocities 10, $86, $00
	set_velocities 10, $84, $00
	script_repeat_end
	script_repeat 2
	set_velocities  8, $79, $00
	set_velocities  8, $76, $00
	set_velocities  8, $75, $00
	script_repeat_end
	set_velocities  0, $00, $00

MotionScript_10bda:
	set_velocities 10, $00, $8a
	set_velocities 10, $00, $88
	set_velocities 10, $00, $85
	set_velocities 10, $00, $75
	set_velocities 10, $00, $78
	set_velocities 10, $00, $7a
	set_velocities 20, $00, $00
	script_call MotionScript_10c3a
	script_repeat 2
	set_velocities  4, $77, $89
	set_velocities  4, $77, $86
	set_velocities  4, $77, $76
	set_velocities  4, $77, $79
	script_repeat_end
	script_call MotionScript_10c3a
	set_velocities 16, $00, $00
	set_velocities  5, $8a, $88
	set_velocities  5, $8a, $85
	set_velocities  5, $8a, $75
	set_velocities  5, $8a, $78
	set_velocities 20, $00, $00
	set_velocities  5, $7a, $88
	set_velocities  5, $7a, $85
	set_velocities  5, $7a, $75
	set_velocities  5, $7a, $78
	set_velocities 20, $00, $00
	set_velocities  8, $79, $00
	set_velocities  8, $76, $00
	set_velocities  8, $75, $00
	set_velocities  8, $89, $00
	set_velocities  8, $86, $00
	set_velocities  8, $85, $00
	set_velocities  0, $00, $00

MotionScript_10c3a:
	set_velocities  4, $87, $89
	set_velocities  4, $87, $86
	set_velocities  4, $87, $76
	set_velocities  4, $87, $79
	script_ret

MotionScript_10c47:
.loop
	set_velocities  2, $86, $00
	set_velocities  2, $76, $00
	jump_abs .loop
; 0x10c50

SECTION "Bank 4@4cf4", ROMX[$4cf4], BANK[$4]

MotionScript_10cf4:
	set_velocities 80, $00, $00
	set_anim_script AnimScript_20647
	set_velocities 16, $00, $86
	set_velocities 16, $00, $85
	set_velocities 16, $00, $84
	set_velocities 80, $00, $74
	set_anim_script AnimScript_20647
	set_velocities  8, $86, $00
	set_velocities  8, $88, $00
	set_velocities 0, $87, $00

MotionScript_10d16:
.loop
	set_velocities  2, $00, $79
	script_exec Func_30dc
	dw .script_10d40, .script_10d23
	jump_abs .loop

.script_10d23
	set_anim_script AnimScript_20662
	set_velocities 16, $00, $78
	set_velocities  8, $84, $75
	set_velocities  8, $86, $73
	set_velocities  8, $89, $8a
	set_velocities  8, $86, $87
	set_velocities  8, $73, $85
	set_velocities  8, $74, $00
	set_velocities  0, $78, $00

.script_10d40
	set_anim_script AnimScript_20659
	set_velocities 16, $00, $78
	set_velocities  8, $74, $75
	set_velocities  8, $76, $73
	set_velocities  8, $79, $8a
	set_velocities  8, $76, $87
	set_velocities  8, $83, $85
	set_velocities  8, $84, $00
	set_velocities  0, $88, $00

MotionScript_10d5d:
.loop
	set_velocities  4, $86, $75
	set_velocities  4, $86, $00
	set_velocities  4, $85, $85
	set_velocities  4, $87, $88
	set_velocities  4, $88, $85
	set_velocities  4, $88, $00
	set_velocities  4, $87, $00
	set_velocities  4, $86, $75
	set_velocities  4, $86, $78
	jump_abs .loop
; 0x10d7b

SECTION "Bank 4@4d99", ROMX[$4d99], BANK[$4]

MotionScript_10d99:
.loop
	set_velocities 80, $00, $00
	set_velocities  8, $00, $88
	set_velocities  8, $00, $87
	set_velocities  8, $00, $85
	set_velocities  8, $00, $83
	set_velocities  8, $00, $73
	set_velocities  8, $00, $75
	set_velocities  8, $00, $77
	set_velocities  8, $00, $78
	jump_abs .loop

MotionScript_10db7:
	set_velocities  8, $77, $88
	set_velocities  8, $77, $87
	set_velocities  8, $77, $77
	set_velocities  8, $77, $78
	set_object_properties Data_3483
	set_velocities 0, $00, $00

MotionScript_10dcb:
	set_velocities  8, $87, $88
	set_velocities  8, $87, $87
	set_velocities  8, $87, $77
	set_velocities  8, $87, $78
	set_object_properties Data_3483
	set_velocities 0, $00, $00

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
	set_velocities  4, $80, $88
	set_velocities  4, $84, $84
	set_velocities  4, $84, $74
	set_velocities  4, $84, $78
	set_velocities  1, $00, $00
	set_velocities  4, $80, $86
	set_velocities  4, $84, $84
	set_velocities  4, $84, $74
	set_velocities  4, $84, $76
	set_velocities  1, $00, $00
	script_repeat_end
	script_ret

MotionSubScript_10e11:
	script_repeat 12
	set_velocities  4, $70, $88
	set_velocities  4, $74, $84
	set_velocities  4, $74, $74
	set_velocities  4, $74, $78
	set_velocities  1, $00, $00
	set_velocities  4, $70, $86
	set_velocities  4, $74, $84
	set_velocities  4, $74, $74
	set_velocities  4, $74, $76
	set_velocities  1, $00, $00
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
	set_velocities  4, $80, $78
	set_velocities  4, $84, $74
	set_velocities  4, $84, $84
	set_velocities  4, $84, $88
	set_velocities  1, $00, $00
	set_velocities  4, $80, $76
	set_velocities  4, $84, $74
	set_velocities  4, $84, $84
	set_velocities  4, $84, $86
	set_velocities  1, $00, $00
	script_repeat_end
	script_ret

MotionSubScript_10e65:
	script_repeat 3
	set_velocities  4, $70, $78
	set_velocities  4, $74, $74
	set_velocities  4, $74, $84
	set_velocities  4, $74, $88
	set_velocities  1, $00, $00
	set_velocities  4, $70, $76
	set_velocities  4, $74, $74
	set_velocities  4, $74, $84
	set_velocities  4, $74, $86
	set_velocities  1, $00, $00
	script_repeat_end
	script_ret

MotionScript_10e87:
.loop
	set_velocities 16, $00, $00
	set_velocities 32, $00, $76
	set_velocities 64, $00, $77
	set_velocities 32, $00, $76
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
	set_velocities  3, $86, $00
	set_velocities  3, $86, $85
	set_velocities  3, $86, $89
	set_velocities  3, $86, $79
	set_velocities  3, $86, $75
	set_velocities  3, $86, $00
	script_ret

MotionSubScript_10ede:
	set_velocities  3, $76, $00
	set_velocities  3, $76, $85
	set_velocities  3, $76, $89
	set_velocities  3, $76, $79
	set_velocities  3, $76, $75
	set_velocities  3, $76, $00
	script_ret

MotionScript_10ef1:
	set_velocities 10, $00, $8a
	set_velocities 10, $00, $87
	set_velocities 10, $00, $00
	set_velocities 10, $00, $76
	set_velocities 10, $00, $78
	set_velocities 14, $00, $7a
	set_velocities  0, $00, $00

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
	set_velocities  3, $00, $00
	set_velocities  4, $86, $86
	set_velocities  4, $85, $83
	set_velocities  4, $85, $73
	set_velocities  4, $85, $76
	script_repeat_end
	script_ret

MotionSubScript_10f29:
	script_repeat 9
	set_velocities  3, $00, $00
	set_velocities  4, $76, $86
	set_velocities  4, $75, $83
	set_velocities  4, $75, $73
	set_velocities  4, $75, $76
	script_repeat_end
	script_ret

MotionScript_10f3c:
	set_velocities  4, $00, $00
	set_velocities  8, $7a, $00
	set_velocities  8, $78, $00
	set_velocities  8, $76, $00
	set_velocities  0, $00, $00
; 0x10f4b

SECTION "Bank 4@4f5a", ROMX[$4f5a], BANK[$4]

MotionScript_10f5a:
.loop
	script_repeat 3
	set_velocities  3, $00, $00
	set_velocities  4, $86, $86
	set_velocities  4, $85, $83
	set_velocities  4, $85, $73
	set_velocities  4, $85, $76
	script_repeat_end
	jump_abs .asm_10f6f ; unnecessary
.asm_10f6f
	script_repeat 3
	set_velocities  3, $00, $00
	set_velocities  4, $76, $86
	set_velocities  4, $75, $83
	set_velocities  4, $75, $73
	set_velocities  4, $75, $76
	script_repeat_end
	jump_abs .loop

MotionScript_10f84:
.loop
	set_velocities 60, $87, $00
	set_velocities 60, $77, $00
	jump_rel .loop
; 0x10f8c

SECTION "Bank 4@4f9c", ROMX[$4f9c], BANK[$4]

MotionScript_10f9c:
	script_exec Func_30b2
	dw .script_10fa3, .script_10fc1

.script_10fa3
	set_velocities  6, $77, $8a
	set_velocities  6, $77, $00
	set_velocities  6, $77, $7a
	set_velocities  6, $75, $88
	set_velocities  6, $75, $00
	set_velocities  6, $75, $78
	set_velocities  6, $73, $76
	set_velocities  6, $73, $00
	set_velocities  6, $73, $76
	set_velocities 0, $00, $00

.script_10fc1
	set_velocities  6, $87, $8a
	set_velocities  6, $87, $00
	set_velocities  6, $87, $7a
	set_velocities  6, $85, $88
	set_velocities  6, $85, $00
	set_velocities  6, $85, $78
	set_velocities  6, $83, $76
	set_velocities  6, $83, $00
	set_velocities  6, $83, $76
	set_velocities 0, $00, $00

MotionScript_10fdf:
	set_velocities 45, $00, $7a
MotionScript_10fe2:
	script_repeat 2
	set_velocities  8, $76, $88
	set_velocities  8, $76, $86
	set_velocities  8, $76, $76
	set_velocities  8, $76, $78
	set_velocities  8, $86, $89
	set_velocities  8, $86, $87
	set_velocities  8, $86, $77
	set_velocities  8, $86, $79
	script_repeat_end
	set_velocities 0, $00, $00

MotionScript_11000:
	set_velocities  4, $87, $8a
	set_velocities  4, $87, $8a
	set_velocities  4, $87, $88
	set_velocities  4, $87, $87
	set_velocities  4, $87, $86
	set_velocities  4, $87, $85
	set_velocities  4, $87, $75
	set_velocities  4, $87, $76
	set_velocities  4, $87, $77
	set_velocities  4, $87, $78
	set_velocities  4, $87, $7a
	set_velocities  4, $87, $7a
	set_velocities  4, $77, $8a
	set_velocities  4, $77, $8a
	set_velocities  4, $77, $88
	set_velocities  4, $77, $87
	set_velocities  4, $77, $86
	set_velocities  4, $77, $85
	set_velocities  4, $77, $75
	set_velocities  4, $77, $76
	set_velocities  4, $77, $77
	set_velocities  4, $77, $78
	set_velocities  4, $77, $7a
	set_velocities  4, $77, $7a
	set_velocities  0, $00, $00

MotionScript_1104b:
	set_velocities  5, $8a, $8a
	set_velocities  5, $8a, $8a
	set_velocities  5, $8a, $88
	set_velocities  5, $8a, $87
	set_velocities  5, $8a, $86
	set_velocities  5, $8a, $85
	set_velocities  5, $8a, $75
	set_velocities  5, $8a, $76
	set_velocities  5, $8a, $77
	set_velocities  5, $8a, $78
	set_velocities  5, $8a, $7a
	set_velocities  5, $8a, $7a
	set_velocities  5, $7a, $8a
	set_velocities  5, $7a, $8a
	set_velocities  5, $7a, $88
	set_velocities  5, $7a, $87
	set_velocities  5, $7a, $86
	set_velocities  5, $7a, $85
	set_velocities  5, $7a, $75
	set_velocities  5, $7a, $76
	set_velocities  5, $7a, $77
	set_velocities  5, $7a, $78
	set_velocities  5, $7a, $7a
	set_velocities  5, $7a, $7a
	set_velocities  0, $00, $00

MotionScript_11096:
	set_velocities  6, $00, $8b
	set_velocities  6, $00, $8a
	set_velocities  6, $00, $89
	set_velocities  6, $00, $87
	set_velocities  6, $00, $84
	set_velocities 16, $00, $00
	set_velocities  6, $00, $74
	set_velocities  6, $00, $77
	set_velocities  6, $00, $79
	set_velocities  6, $00, $7a
	set_velocities  6, $00, $7b
	set_velocities  0, $00, $00

MotionScript_110ba:
	set_velocities  8, $8a, $00
	set_velocities  8, $8a, $75
	set_velocities  8, $8a, $77
	set_velocities  8, $89, $89
	set_velocities  8, $89, $84
	set_velocities  8, $89, $74
	set_velocities  8, $89, $78
	create_object AnimScript_203be, MotionScript_10008, Data_35bb
	script_end

MotionScript_110d7:
	set_velocities  8, $8a, $78
	set_velocities  8, $8a, $7a
	set_velocities  8, $8a, $7b
	set_velocities  8, $89, $8a
	set_velocities  8, $89, $86
	set_velocities  8, $89, $76
	set_velocities  8, $89, $7a
	create_object AnimScript_203be, MotionScript_10008, Data_35bb
	script_end
; 0x110f4

SECTION "Bank 4@51d8", ROMX[$51d8], BANK[$4]

MotionScript_111d8:
.loop
	set_velocities 20, $00, $00
	set_velocities  2, $00, $88
	set_velocities  2, $00, $78
	jump_abs .loop

MotionScript_111e4:
.loop
	script_repeat 6
	set_velocities  4, $80, $88
	set_velocities  4, $84, $84
	set_velocities  4, $84, $74
	set_velocities  4, $84, $78
	set_velocities  1, $00, $00
	set_velocities  4, $80, $86
	set_velocities  4, $84, $84
	set_velocities  4, $84, $74
	set_velocities  4, $84, $76
	set_velocities  1, $00, $00
	script_repeat_end
	script_repeat 6
	set_velocities  4, $70, $88
	set_velocities  4, $74, $84
	set_velocities  4, $74, $74
	set_velocities  4, $74, $78
	set_velocities  1, $00, $00
	set_velocities  4, $70, $86
	set_velocities  4, $74, $84
	set_velocities  4, $74, $74
	set_velocities  4, $74, $76
	set_velocities  1, $00, $00
	script_repeat_end
	jump_abs .loop
; 0x11229

SECTION "Bank 4@5fc6", ROMX[$5fc6], BANK[$4]

MotionScript_11fc6:
	set_velocities 40, $00, $00
	script_repeat 2
	set_velocities  8, $7c, $82
	set_velocities  8, $7a, $83
	set_velocities  8, $79, $85
	set_velocities  8, $78, $86
	set_velocities  8, $77, $86
	set_velocities  8, $87, $86
	set_velocities  8, $88, $86
	set_velocities  8, $89, $85
	set_velocities  8, $8a, $83
	set_velocities  8, $8c, $82
	position_offset 0, 14
	set_velocities  8, $8b, $72
	set_velocities  8, $8a, $73
	set_velocities  8, $89, $75
	set_velocities  8, $88, $76
	set_velocities  8, $87, $76
	set_velocities  8, $77, $76
	set_velocities  8, $78, $76
	set_velocities  8, $79, $75
	set_velocities  8, $7a, $73
	set_velocities  8, $7b, $72
	script_repeat_end
	set_velocities 30, $7b, $84
	script_end

MotionScript_1200f:
	script_call MotionSubScript_1208c
	set_velocities 16, $74, $87
	set_velocities 16, $74, $86
	set_velocities 16, $74, $85
	set_velocities 16, $74, $75
	set_velocities 16, $74, $76
	set_velocities 16, $74, $77
	set_velocities 32, $00, $00
	script_call MotionSubScript_1208c
	set_velocities 10, $75, $86
	set_velocities  8, $76, $85
	set_velocities  8, $75, $84
	set_velocities 10, $74, $84
	set_velocities 10, $75, $74
	set_velocities  8, $76, $74
	set_velocities  8, $75, $75
	set_velocities 10, $74, $76
	set_velocities 64, $74, $00
	set_velocities 48, $74, $00
	set_velocities 16, $74, $88
	set_velocities 16, $74, $86
	set_velocities 16, $74, $84
	set_velocities 16, $74, $00
	set_velocities 16, $74, $74
	set_velocities 16, $74, $76
	set_velocities 16, $74, $78
	set_velocities  8, $75, $88
	set_velocities  8, $75, $85
	set_velocities  8, $75, $75
	set_velocities  8, $75, $78
	set_velocities 16, $00, $00
	script_repeat 2
	set_velocities  8, $75, $88
	set_velocities  8, $75, $85
	set_velocities  8, $75, $75
	set_velocities  8, $75, $78
	script_repeat_end
	set_velocities 10, $75, $88
	set_velocities 10, $75, $86
	set_velocities 10, $75, $85
.loop
	set_velocities 10, $75, $84
	set_velocities 10, $75, $85
	jump_rel .loop

MotionSubScript_1208c:
	script_repeat 2
	set_velocities 18, $75, $84
	set_velocities 11, $75, $00
	set_velocities 18, $75, $74
	set_velocities 11, $75, $00
	script_repeat_end
	script_ret
; 0x1209c

SECTION "Bank 4@75bc", ROMX[$75bc], BANK[$4]

MotionScript_135bc:
	jumptable_random %11
	dw .script_135c6
	dw .script_135c9
	dw .script_135cc
	dw .script_135cf

.script_135c6
	set_velocities  0, $8b, $77

.script_135c9
	set_velocities  0, $8b, $74

.script_135cc
	set_velocities  0, $8b, $84

.script_135cf
	set_velocities  0, $8b, $87

MotionScript_135d2:
	script_f0 $00, $70
	set_velocities 16, $7b, $00
	set_velocities 16, $7a, $00
	set_velocities 16, $79, $00
	set_velocities 16, $78, $83
	set_velocities 16, $78, $84
	set_velocities 16, $76, $84
	script_repeat 4
	set_velocities  2, $89, $8a
	set_velocities  2, $88, $79
	script_repeat_end
	set_velocities 16, $89, $76
	script_repeat 8
	set_velocities  2, $89, $8a
	set_velocities  2, $88, $7b
	script_repeat_end
	set_velocities  8, $75, $8b
	set_velocities  8, $75, $89
	set_velocities  8, $75, $86
	set_velocities  8, $75, $84
	set_velocities 40, $00, $00
	set_velocities 16, $74, $74
	set_velocities 16, $74, $75
	set_velocities 16, $74, $77
	set_velocities 16, $74, $78
	script_repeat 2
	play_sfx SFX_BUMP
	set_velocities  2, $84, $00
	set_velocities 10, $84, $86
	set_velocities 10, $84, $84
	set_velocities 10, $84, $74
	set_velocities 10, $84, $76
	script_repeat_end
	play_sfx SFX_25
	set_scripts $428f, $4008
; 0x13636
