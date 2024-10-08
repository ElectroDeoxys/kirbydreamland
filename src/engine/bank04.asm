MotionScript_10000:
	set_custom_func $401a
MotionScript_10003:
	set_velocities 0, $00, $00
; 0x10006

SECTION "Bank 4@4008", ROMX[$4008], BANK[$4]

MotionScript_10008:
	set_velocities 0, $00, $00
; 0x1000b

SECTION "Bank 4@41dc", ROMX[$41dc], BANK[$4]

MotionScript_101dc:
	set_velocities  0, $00, $00
; 0x101df

SECTION "Bank 4@42c8", ROMX[$42c8], BANK[$4]

MotionScript_102c8:
	set_velocities 0, $85, $00
; 0x102cb

SECTION "Bank 4@42fb", ROMX[$42fb], BANK[$4]

MotionScript_102fb:
	script_exec Func_30b2
	dw MotionScript_1030b, MotionScript_10308

MotionScript_10302:
	jump_if_not_flags hff92, KIRBY2F_LAND, MotionScript_1030b

MotionScript_10308:
	set_velocities 0, $8b, $00

MotionScript_1030b:
	set_velocities 0, $7b, $00
; 0x1030e

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

SECTION "Bank 4@4566", ROMX[$4566], BANK[$4]

MotionScript_10566::
	set_velocities 136, $04, $87
	set_velocities 120, $04, $87
MotionScript_1056c::
	set_velocities 122, $10, $00
	set_velocities   0, $e1, $61
; 0x10572

SECTION "Bank 4@467d", ROMX[$467d], BANK[$4]

MotionScript_1067d:
.loop
	set_gfx_script GfxScript_2063b
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

SECTION "Bank 4@472b", ROMX[$472b], BANK[$4]

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
	jumptable_random $07
	set_velocities 213, $47, $e1
	set_velocities 71, $ed, $47
	script_f9 $0547, $48, $11
	set_velocities 72, $1d, $48
	set_velocities 41, $48, $f1
	set_velocities  0, $fa, $03
; 0x107d9

SECTION "Bank 4@4835", ROMX[$4835], BANK[$4]

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
; 0x1092a

SECTION "Bank 4@4cf4", ROMX[$4cf4], BANK[$4]

MotionScript_10cf4:
	set_velocities 80, $00, $00
	set_gfx_script GfxScript_20647
	set_velocities 16, $00, $86
	set_velocities 16, $00, $85
	set_velocities 16, $00, $84
	set_velocities 80, $00, $74
	set_gfx_script GfxScript_20647
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
	set_gfx_script GfxScript_20662
	set_velocities 16, $00, $78
	set_velocities  8, $84, $75
	set_velocities  8, $86, $73
	set_velocities  8, $89, $8a
	set_velocities  8, $86, $87
	set_velocities  8, $73, $85
	set_velocities  8, $74, $00
	set_velocities  0, $78, $00

.script_10d40
	set_gfx_script GfxScript_20659
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
	set_gfx_script GfxScript_20d3f
	script_repeat 2
	script_call MotionSubScript_10ecb
	script_repeat_end
MotionScript_10ea1:
	set_gfx_script GfxScript_20d47
	script_repeat 2
	script_call MotionSubScript_10ede
	script_repeat_end
	jump_rel MotionScript_10e96

MotionScript_10eae:
.loop
	set_gfx_script GfxScript_20d3f
	script_repeat 4
	script_call MotionSubScript_10ecb
	script_repeat_end
	set_gfx_script GfxScript_20d47
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
; 0x10f3c

SECTION "Bank 4@4f84", ROMX[$4f84], BANK[$4]

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
	create_object GfxScript_203be, MotionScript_10008, Data_35bb
	script_end

MotionScript_110d7:
	set_velocities  8, $8a, $78
	set_velocities  8, $8a, $7a
	set_velocities  8, $8a, $7b
	set_velocities  8, $89, $8a
	set_velocities  8, $89, $86
	set_velocities  8, $89, $76
	set_velocities  8, $89, $7a
	create_object GfxScript_203be, MotionScript_10008, Data_35bb
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
