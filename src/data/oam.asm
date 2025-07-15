OAM_2c000::
	db  17,  -5, $f2, OAM_PAL0
	db -16,   1, $f2, OAM_PAL0
	db -16,  -7, $f2, OAM_PAL0 | OAM_END

OAM_2c00c::
	db  14,  -5, $f4, OAM_PAL0
	db -16,   1, $f4, OAM_PAL0
	db -16,  -7, $f4, OAM_PAL0 | OAM_END

OAM_2c018::
	db  10,  -5, $f4, OAM_PAL0
	db -16,   1, $fc, OAM_PAL0
	db -16,  -7, $fc, OAM_PAL0 | OAM_END

OAM_2c024::
	db  13,  -7, $f6, OAM_PAL0 | OAM_XFLIP
	db  13,   0, $f6, OAM_PAL0
	db -15,   1, $f4, OAM_PAL0
	db -16,  -7, $f2, OAM_PAL0 | OAM_END

OAM_2c034::
	db  17,  -5, $f6, OAM_PAL0 | OAM_XFLIP
	db  17,   2, $f6, OAM_PAL0
	db -24,   3, $f4, OAM_PAL0 | OAM_YFLIP
	db -26,  -5, $f2, OAM_PAL0 | OAM_END

OAM_2c044::
	db  -2,   2, $fa, OAM_PAL0
	db  13,  -7, $f6, OAM_PAL0 | OAM_XFLIP
	db  13,   0, $f6, OAM_PAL0
	db -13,   2, $f6, OAM_PAL0
	db -16,  -7, $f2, OAM_PAL0 | OAM_END

OAM_2c058::
	db  15,  -6, $f8, OAM_PAL0
	db  15,   2, $fe, OAM_PAL1
	db -16,   1, $f2, OAM_PAL0
	db -16,  -7, $f2, OAM_PAL0 | OAM_END

OAM_2c068::
	db  15, -10, $f8, OAM_PAL0
	db  15,  -2, $fe, OAM_PAL1
	db -16,   1, $f2, OAM_PAL0
	db -16,  -7, $f2, OAM_PAL0 | OAM_END

OAM_2c078::
	db  15, -13, $f8, OAM_PAL0
	db  15,  -5, $fe, OAM_PAL1
	db -16,   1, $f2, OAM_PAL0
	db -16,  -7, $f2, OAM_PAL0 | OAM_END

OAM_2c088::
	db   4,   0, $bc, OAM_PAL0
	db   4,  -8, $b8, OAM_PAL0
	db  -7,  -2, $b4, OAM_PAL0
	db  -7, -10, $b0, OAM_PAL0 | OAM_END

OAM_2c098::
	db   4,   0, $bc, OAM_PAL0
	db   4,  -8, $ba, OAM_PAL0
	db  -7,  -1, $b4, OAM_PAL0
	db  -7,  -9, $b0, OAM_PAL0 | OAM_END

OAM_2c0a8::
	db   4,  -5, $ba, OAM_PAL0 | OAM_XFLIP
	db   4, -13, $bc, OAM_PAL0 | OAM_XFLIP
	db  -7,   0, $b4, OAM_PAL0
	db  -7,  -8, $b0, OAM_PAL0 | OAM_END

OAM_2c0b8::
	db   4,  -4, $b8, OAM_PAL0 | OAM_XFLIP
	db   4, -12, $bc, OAM_PAL0 | OAM_XFLIP
	db  -7,   1, $b4, OAM_PAL0
	db  -7,  -7, $b0, OAM_PAL0 | OAM_END

OAM_2c0c8::
	db   6, -14, $ae, OAM_PAL0
	db   4,   0, $bc, OAM_PAL0
	db   4,  -8, $b8, OAM_PAL0
	db  -7,  -2, $b4, OAM_PAL0
	db  -7, -10, $b0, OAM_PAL0 | OAM_END

OAM_2c0dc::
	db   2, -19, $ae, OAM_PAL0
	db   4,   0, $bc, OAM_PAL0
	db   4,  -8, $b8, OAM_PAL0
	db  -7,  -2, $b6, OAM_PAL0
	db  -7, -10, $b2, OAM_PAL0 | OAM_END

OAM_2c0f0::
	db   9, -25, $66, OAM_PAL0
	db   9, -17, $76, OAM_PAL0
	db   6, -14, $ae, OAM_PAL0
	db   4,   0, $bc, OAM_PAL0
	db   4,  -8, $b8, OAM_PAL0
	db  -7,  -2, $b4, OAM_PAL0
	db  -7, -10, $b0, OAM_PAL0 | OAM_END

OAM_2c10c::
	db  -1, -28, $66, OAM_PAL0
	db  -1, -20, $76, OAM_PAL0
	db   2, -17, $ae, OAM_PAL0
	db   4,   0, $bc, OAM_PAL0
	db   4,  -8, $b8, OAM_PAL0
	db  -7,  -2, $b6, OAM_PAL0
	db  -7, -10, $b2, OAM_PAL0 | OAM_END

OAM_2c128::
	db -15, -26, $66, OAM_PAL0
	db -15, -18, $76, OAM_PAL0
	db  -8, -17, $ae, OAM_PAL0
	db   4,   0, $bc, OAM_PAL0
	db   4,  -8, $ba, OAM_PAL0
	db  -7,  -1, $b6, OAM_PAL0
	db  -7,  -9, $b2, OAM_PAL0 | OAM_END

OAM_2c144::
	db -28,  -6, $76, OAM_PAL0
	db -28, -14, $66, OAM_PAL0
	db -16, -10, $ae, OAM_PAL0
	db   4,  -5, $ba, OAM_PAL0 | OAM_XFLIP
	db   4, -13, $bc, OAM_PAL0 | OAM_XFLIP
	db  -7,   0, $b6, OAM_PAL0
	db  -7,  -8, $b2, OAM_PAL0 | OAM_END

OAM_2c160::
	db -21,  12, $76, OAM_PAL0
	db -21,   4, $66, OAM_PAL0
	db -12,   3, $ae, OAM_PAL0
	db   4,  -4, $b8, OAM_PAL0 | OAM_XFLIP
	db   4, -12, $bc, OAM_PAL0 | OAM_XFLIP
	db  -7,   1, $b6, OAM_PAL0
	db  -7,  -7, $b2, OAM_PAL0 | OAM_END

OAM_2c17c::
	db  -8,   0, $c2, OAM_PAL0
	db  -8,  -8, $be, OAM_PAL0 | OAM_END

OAM_2c184::
	db  -8,   0, $c4, OAM_PAL0
	db  -8,  -8, $c0, OAM_PAL0 | OAM_END

OAM_2c18c::
	db  -8,  -8, $c2, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $be, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c194::
	db  -8,  -8, $c4, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c19c::
	db  -8,   2, $d6, OAM_PAL0
	db  -8,  -6, $d0, OAM_PAL0 | OAM_END

OAM_2c1a4::
	db  -8,  -2, $d4, OAM_PAL0
	db  -8, -10, $d2, OAM_PAL0 | OAM_END

OAM_2c1ac::
	db  -8, -11, $d6, OAM_PAL0 | OAM_XFLIP
	db  -8,  -3, $d0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c1b4::
	db  -8,  -8, $d4, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $d2, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c1bc::
	db  -8,   1, $da, OAM_PAL0
	db  -8,  -7, $d8, OAM_PAL0 | OAM_END

OAM_2c1c4::
	db  -8, -10, $da, OAM_PAL0 | OAM_XFLIP
	db  -8,  -2, $d8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c1cc::
	db  -8,   0, $dc, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $dc, OAM_PAL0 | OAM_END

OAM_2c1d4::
	db  -8,   0, $e0, OAM_PAL0
	db  -8,  -8, $de, OAM_PAL0 | OAM_END

OAM_2c1dc::
	db  -8,  -8, $e0, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $de, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c1e4::
	db  -8,  -8, $e0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2c1ec::
	db  -8,   0, $e0, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $de, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2c1f4::
	db  -8,   0, $ca, OAM_PAL0
	db  -8,  -8, $c6, OAM_PAL0 | OAM_END

OAM_2c1fc::
	db  -9,   0, $cc, OAM_PAL0
	db  -9,  -8, $c6, OAM_PAL0 | OAM_END

OAM_2c204::
	db  -7,   0, $ce, OAM_PAL0
	db  -7,  -8, $c8, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c20c::
	db  -8,  -8, $ca, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c6, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c214::
	db  -9,  -8, $cc, OAM_PAL0 | OAM_XFLIP
	db  -9,   0, $c6, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c21c::
	db  -7,  -8, $ce, OAM_PAL0 | OAM_XFLIP
	db  -7,   0, $c8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c224::
	db   0,   4, $f0, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $ee, OAM_PAL0
	db   0, -12, $f0, OAM_PAL0
	db -16,   4, $e6, OAM_PAL0
	db -16,  -4, $e4, OAM_PAL0
	db -16, -12, $e2, OAM_PAL0 | OAM_END

OAM_2c23c::
	db  -1,   4, $ec, OAM_PAL0
	db  -1,  -4, $ea, OAM_PAL0
	db  -1, -12, $e8, OAM_PAL0
	db -17,   4, $e6, OAM_PAL0
	db -17,  -4, $e4, OAM_PAL0
	db -17, -12, $e2, OAM_PAL0 | OAM_END

OAM_2c254::
	db  -1,   4, $f0, OAM_PAL0 | OAM_XFLIP
	db  -1,  -4, $ea, OAM_PAL0
	db  -1, -12, $e8, OAM_PAL0
	db -17,   4, $e6, OAM_PAL0
	db -17,  -4, $e4, OAM_PAL0
	db -17, -12, $e2, OAM_PAL0 | OAM_END

OAM_2c26c::
	db   0, -12, $f0, OAM_PAL0
	db   0,  -4, $ee, OAM_PAL0 | OAM_XFLIP
	db   0,   4, $f0, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $e6, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $e4, OAM_PAL0 | OAM_XFLIP
	db -16,   4, $e2, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c284::
	db  -1, -12, $ec, OAM_PAL0 | OAM_XFLIP
	db  -1,  -4, $ea, OAM_PAL0 | OAM_XFLIP
	db  -1,   4, $e8, OAM_PAL0 | OAM_XFLIP
	db -17, -12, $e6, OAM_PAL0 | OAM_XFLIP
	db -17,  -4, $e4, OAM_PAL0 | OAM_XFLIP
	db -17,   4, $e2, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c29c::
	db  -1, -12, $f0, OAM_PAL0
	db  -1,  -4, $ea, OAM_PAL0 | OAM_XFLIP
	db  -1,   4, $e8, OAM_PAL0 | OAM_XFLIP
	db -17, -12, $e6, OAM_PAL0 | OAM_XFLIP
	db -17,  -4, $e4, OAM_PAL0 | OAM_XFLIP
	db -17,   4, $e2, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c2b4::
	db  -1,   4, $ec, OAM_PAL0
	db  -1,  -4, $ea, OAM_PAL0
	db  -1, -12, $e8, OAM_PAL0
	db -17,   4, $e6, OAM_PAL0
	db -17,  -4, $e4, OAM_PAL0
	db -17, -12, $e2, OAM_PAL0
	db -29,   3, $c2, OAM_PAL0
	db -29,  -5, $be, OAM_PAL0 | OAM_END

OAM_2c2d4::
	db   0,   4, $f0, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $ee, OAM_PAL0
	db   0, -12, $f0, OAM_PAL0
	db -16,   4, $e6, OAM_PAL0
	db -16,  -4, $e4, OAM_PAL0
	db -16, -12, $e2, OAM_PAL0
	db -27,   3, $c4, OAM_PAL0
	db -27,  -5, $c0, OAM_PAL0 | OAM_END

OAM_2c2f4::
	db -24,   0, $c4, OAM_PAL0
	db -24,  -8, $c0, OAM_PAL0
	db  -8,   0, $e0, OAM_PAL0
	db  -8,  -8, $de, OAM_PAL0 | OAM_END

OAM_2c304::
	db -24,  -8, $be, OAM_PAL0
	db -24,   0, $c2, OAM_PAL0
	db  -8,  -8, $e0, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $de, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c314::
	db -24,   0, $c4, OAM_PAL0
	db -24,  -8, $c0, OAM_PAL0
	db  -8,  -8, $e0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2c324::
	db -24,   0, $c2, OAM_PAL0
	db -24,  -8, $be, OAM_PAL0
	db  -8,   0, $e0, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $de, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2c334::
	db   0, -12, $f0, OAM_PAL0
	db   0,  -4, $ee, OAM_PAL0 | OAM_XFLIP
	db   0,   4, $f0, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $e6, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $e4, OAM_PAL0 | OAM_XFLIP
	db -16,   4, $e2, OAM_PAL0 | OAM_XFLIP
	db -29, -12, $c2, OAM_PAL0 | OAM_XFLIP
	db -29,  -4, $be, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c354::
	db  -1, -12, $ec, OAM_PAL0 | OAM_XFLIP
	db  -1,  -4, $ea, OAM_PAL0 | OAM_XFLIP
	db  -1,   4, $e8, OAM_PAL0 | OAM_XFLIP
	db -17, -12, $e6, OAM_PAL0 | OAM_XFLIP
	db -17,  -4, $e4, OAM_PAL0 | OAM_XFLIP
	db -17,   4, $e2, OAM_PAL0 | OAM_XFLIP
	db -27, -12, $c4, OAM_PAL0 | OAM_XFLIP
	db -27,  -4, $c0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c374::
	db  -8,  -8, $c8, OAM_PAL0
	db  -8,   0, $ca, OAM_PAL0 | OAM_END

OAM_2c37c::
	db  -8,  -8, $cc, OAM_PAL0
	db  -8,   0, $ce, OAM_PAL0 | OAM_END

OAM_2c384::
	db  -8,  -8, $cc, OAM_PAL0
	db  -8,   0, $d0, OAM_PAL0 | OAM_END

OAM_2c38c::
	db  -8,  -8, $ca, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c394::
	db  -8,  -8, $ce, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $cc, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c39c::
	db  -8,  -8, $d0, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $cc, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c3a4::
	db  -8,  -8, $cc, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $d0, OAM_PAL0 | OAM_YFLIP | OAM_END

; unreferenced
OAM_2c3ac::
	db  -8,  -8, $d0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $cc, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2c3b4::
	db  -8, -11, $b2, OAM_PAL0
	db  -8,  -3, $b4, OAM_PAL0
	db  -8,   5, $b6, OAM_PAL0 | OAM_END

OAM_2c3c0::
	db  -8,  -8, $b8, OAM_PAL0
	db  -8,   0, $ba, OAM_PAL0 | OAM_END

OAM_2c3c8::
	db  -8, -11, $b6, OAM_PAL0 | OAM_XFLIP
	db  -8,  -3, $b4, OAM_PAL0 | OAM_XFLIP
	db  -8,   5, $b2, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c3d4::
	db  -8,  -8, $ba, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $b8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c3dc::
	db  -8,  -8, $ba, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $b8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

; unreferenced
OAM_2c3e4::
	db  -8,  -8, $b8, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $ba, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2c3ec::
	db  -8,  -8, $d2, OAM_PAL0
	db  -8,   0, $d2, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c3f4::
	db  -8,  -8, $d4, OAM_PAL0
	db  -8,   0, $d4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c3fc::
	db  -8,  -8, $d6, OAM_PAL0
	db  -8,   0, $d6, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c404::
	db -12,  -4, $ea, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c408::
	db -12,  -4, $ea, OAM_PAL0 | OAM_END

OAM_2c40c::
	db  -8,  -8, $ae, OAM_PAL0
	db  -8,   0, $b0, OAM_PAL0 | OAM_END

OAM_2c414::
	db  -8,  -8, $b0, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $ae, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c41c::
	db  -8,  -8, $c0, OAM_PAL0
	db  -8,   0, $c2, OAM_PAL0 | OAM_END

OAM_2c424::
	db  -8,  -8, $c4, OAM_PAL0
	db  -8,   0, $c6, OAM_PAL0 | OAM_END

OAM_2c42c::
	db  -8,  -8, $c2, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c434::
	db  -8,  -8, $c6, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c43c::
	db  -8,  -8, $e0, OAM_PAL0
	db  -8,   0, $e0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c444::
	db  -8,  -8, $e2, OAM_PAL0
	db  -8,   0, $e2, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c44c::
	db  -8,  -8, $bc, OAM_PAL0 | OAM_END

OAM_2c450::
	db  -8,   0, $bc, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c454::
	db  -8,  -8, $be, OAM_PAL0
	db  -8,   0, $be, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c45c::
	db  -8,  -8, $dc, OAM_PAL0
	db  -8,   0, $de, OAM_PAL0 | OAM_END

OAM_2c464::
	db  -8,  -8, $da, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $d8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c46c::
	db  -8,   0, $da, OAM_PAL0
	db  -8,  -8, $d8, OAM_PAL0 | OAM_END

OAM_2c474::
	db  -8,   0, $dc, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $de, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c47c::
	db  -8,   0, $d2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $d2, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2c484::
	db  -8,  -8, $d4, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $d4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2c48c::
	db  -8,   0, $d6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $d6, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2c494::
	db  -8,   0, $e6, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c49c::
	db  -8,  -4, $e8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c4a0::
	db  -8,   0, $e4, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e4, OAM_PAL0 | OAM_END

OAM_2c4a8::
	db  -8,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $f2, OAM_PAL0 | OAM_END

OAM_2c4b0::
	db  -8,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $ea, OAM_PAL0 | OAM_END

OAM_2c4b8::
	db  -8,   0, $f8, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0 | OAM_END

OAM_2c4c0::
	db  -8,   0, $ec, OAM_PAL0
	db  -8,  -8, $f0, OAM_PAL0 | OAM_END

OAM_2c4c8::
	db  -8,  -8, $f8, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c4d0::
	db  -8,  -8, $ec, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $f0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c4d8::
	db  -8,   0, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $fc, OAM_PAL0 | OAM_END

OAM_2c4e0::
	db  -8,   0, $f4, OAM_PAL0
	db  -8,  -8, $f2, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c4e8::
	db  -8,   0, $f4, OAM_PAL0
	db  -8,  -8, $ea, OAM_PAL0 | OAM_END

OAM_2c4f0::
	db  -8,   0, $ee, OAM_PAL0
	db  -8,  -8, $f0, OAM_PAL0 | OAM_END

OAM_2c4f8::
	db  -8,   0, $f6, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0 | OAM_END

OAM_2c500::
	db  -8,  -8, $ee, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $f0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c508::
	db  -8,  -8, $f6, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c510::
	db  -8,   0, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $fe, OAM_PAL0 | OAM_END

OAM_2c518::
	db  -8,  -8, $b8, OAM_PAL0
	db  -8,   0, $ba, OAM_PAL0 | OAM_END

OAM_2c520::
	db  -8,  -8, $bc, OAM_PAL0
	db  -8,   0, $be, OAM_PAL0 | OAM_END

OAM_2c528::
	db  -8,   0, $b8, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $ba, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c530::
	db  -8,   0, $bc, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $be, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c538::
	db  -8,  -8, $b0, OAM_PAL0
	db  -8,   0, $b2, OAM_PAL0 | OAM_END

OAM_2c540::
	db  -8,  -8, $b4, OAM_PAL0
	db  -8,   0, $b6, OAM_PAL0 | OAM_END

OAM_2c548::
	db  -8,  -8, $b0, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $b2, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2c550::
	db  -8,  -8, $b6, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $b4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c558::
	db  -8,  -8, $c0, OAM_PAL0
	db  -8,   0, $c2, OAM_PAL0 | OAM_END

OAM_2c560::
	db  -8,  -8, $c4, OAM_PAL0
	db  -8,   0, $c6, OAM_PAL0 | OAM_END

OAM_2c568::
	db  -8,  -8, $e8, OAM_PAL0
	db  -8,   0, $c6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c570::
	db  -8,  -8, $ea, OAM_PAL0
	db  -8,   0, $c2, OAM_PAL0 | OAM_END

OAM_2c578::
	db  -8,  -8, $ea, OAM_PAL1
	db  -8,   0, $c2, OAM_PAL1 | OAM_END

OAM_2c580::
	db  -8,  -8, $c2, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c588::
	db  -8,  -8, $c6, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c590::
	db  -8,  -8, $c6, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $e8, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c598::
	db  -8,  -8, $c2, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $ea, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c5a0::
	db  -8,  -8, $c2, OAM_PAL1 | OAM_XFLIP
	db  -8,   0, $ea, OAM_PAL1 | OAM_XFLIP | OAM_END

OAM_2c5a8::
	db  -8,  -4, $88, OAM_PAL0 | OAM_END

OAM_2c5ac::
	db -12,  -4, $88, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c5b0::
	db  -8,   0, $d8, OAM_PAL0
	db  -8,  -8, $c8, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c5b8::
	db  -8,   0, $da, OAM_PAL0
	db  -8,  -8, $ca, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c5c0::
	db  -8,  -8, $ca, OAM_PAL0
	db  -8,   0, $d6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c5c8::
	db  -8,   0, $dc, OAM_PAL0
	db  -8,  -8, $cc, OAM_PAL0 | OAM_END

; unreferenced
    OAM_2c5d0::
	db  -8,  -8, $d8, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c8, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c5d8::
	db  -8,  -8, $da, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $ca, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c5e0::
	db  -8,   0, $ca, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $d6, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c5e8::
	db  -8,  -8, $dc, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $cc, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c5f0::
	db  -8,   0, $ce, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $de, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c5f8::
	db  -6,   2, $d4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

; unreferenced
OAM_2c5fc::
	db  -8,  -8, $ce, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $de, OAM_PAL0 | OAM_YFLIP | OAM_END

; unreferenced
OAM_2c604::
	db -10, -10, $d4, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c608::
	db  -8,  -8, $ce, OAM_PAL0
	db  -8,   0, $de, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c610::
	db  -6, -10, $d4, OAM_PAL0 | OAM_YFLIP | OAM_END

; unreferenced
OAM_2c614::
	db  -8,   0, $ce, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

; unreferenced
OAM_2c61c::
	db -10,   3, $d4, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c620::
	db  -8,   0, $e0, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e0, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c628::
	db  -8,   0, $e2, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e2, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c630::
	db  -8,  -8, $e4, OAM_PAL0
	db  -8,   0, $e4, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2c638::
	db  -8,  -4, $ae, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c63c::
	db  -8,  -9, $e6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c640::
	db  -8,  -6, $e6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c644::
	db  -8,  -2, $e6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c648::
	db  -8,   1, $e6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c64c::
	db  -8, -13, $e6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c650::
	db  -8,   5, $e6, OAM_PAL0 | OAM_END

OAM_2c654::
	db  -8,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $d0, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c65c::
	db  -8,  -1, $d2, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $d2, OAM_PAL0 | OAM_END

OAM_2c664::
	db  -8,   0, $98, OAM_PAL0
	db  -8,  -8, $92, OAM_PAL0
	db -24,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $d0, OAM_PAL0 | OAM_END

OAM_2c674::
	db  -8,   0, $9a, OAM_PAL0
	db  -8,  -8, $94, OAM_PAL0
	db -22,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db -22,  -8, $d0, OAM_PAL0 | OAM_END

OAM_2c684::
	db  -8,   0, $92, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $98, OAM_PAL0 | OAM_XFLIP
	db -24,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $d0, OAM_PAL0 | OAM_END

OAM_2c694::
	db  -8,   0, $94, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $9a, OAM_PAL0 | OAM_XFLIP
	db -22,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db -22,  -8, $d0, OAM_PAL0 | OAM_END

OAM_2c6a4::
	db  -8,   0, $98, OAM_PAL0
	db  -8,  -8, $8c, OAM_PAL0
	db -24,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $d0, OAM_PAL0 | OAM_END

OAM_2c6b4::
	db  -8,   0, $9a, OAM_PAL0
	db  -8,  -8, $8e, OAM_PAL0
	db -22,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db -22,  -8, $d0, OAM_PAL0 | OAM_END

OAM_2c6c4::
	db  -8,   0, $8c, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $98, OAM_PAL0 | OAM_XFLIP
	db -24,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $d0, OAM_PAL0 | OAM_END

OAM_2c6d4::
	db  -8,   0, $8e, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $9a, OAM_PAL0 | OAM_XFLIP
	db -22,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db -22,  -8, $d0, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c6e4::
	db  -8,   0, $ac, OAM_PAL0
	db  -8,  -8, $aa, OAM_PAL0
	db -21,   1, $d0, OAM_PAL0 | OAM_XFLIP
	db -21,  -6, $d0, OAM_PAL0 | OAM_END

OAM_2c6f4::
	db  -8,  -8, $a4, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $a4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -21,   0, $d0, OAM_PAL0 | OAM_XFLIP
	db -21,  -7, $d0, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c704::
	db  -8,  -1, $da, OAM_PAL0
	db  -8,  -9, $ca, OAM_PAL0
	db -24,   1, $d0, OAM_PAL0 | OAM_XFLIP
	db -24,  -6, $d0, OAM_PAL0 | OAM_END

; unreferenced
OAM_2c714::
	db  -8,   0, $6c, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $6c, OAM_PAL0
	db -23,  -1, $d0, OAM_PAL0 | OAM_XFLIP
	db -23,  -8, $d0, OAM_PAL0 | OAM_END

OAM_2c724::
	db  -8,   0, $d8, OAM_PAL0
	db  -8,  -8, $c8, OAM_PAL0 | OAM_END

OAM_2c72c::
	db  -8,   0, $da, OAM_PAL0
	db  -8,  -8, $ca, OAM_PAL0 | OAM_END

OAM_2c734::
	db  -8,  -8, $ca, OAM_PAL0
	db  -8,   0, $d6, OAM_PAL0 | OAM_END

OAM_2c73c::
	db  -8,   0, $dc, OAM_PAL0
	db  -8,  -8, $cc, OAM_PAL0 | OAM_END

OAM_2c744::
	db  -8,  -8, $d8, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c74c::
	db  -8,  -8, $da, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $ca, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c754::
	db  -8,   0, $ca, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $d6, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c75c::
	db  -8,  -8, $dc, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $cc, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c764::
	db  -8,   0, $ce, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $de, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c76c::
	db  -6,   2, $d4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2c770::
	db  -8,  -8, $ce, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $de, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2c778::
	db -10, -10, $d4, OAM_PAL0 | OAM_END

OAM_2c77c::
	db  -8,  -8, $ce, OAM_PAL0
	db  -8,   0, $de, OAM_PAL0 | OAM_END

OAM_2c784::
	db  -6, -10, $d4, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2c788::
	db  -8,   0, $ce, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2c790::
	db -10,   3, $d4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c794::
	db  -8,   0, $e0, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e0, OAM_PAL0 | OAM_END

OAM_2c79c::
	db  -8,   0, $e2, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e2, OAM_PAL0 | OAM_END

OAM_2c7a4::
	db  -8,  -8, $e4, OAM_PAL0
	db  -8,   0, $e4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c7ac::
	db  -8,  -4, $ae, OAM_PAL1 | OAM_END

OAM_2c7b0::
	db  -8,  -9, $e6, OAM_PAL0 | OAM_END

OAM_2c7b4::
	db  -8,  -6, $e6, OAM_PAL0 | OAM_END

OAM_2c7b8::
	db  -8,  -2, $e6, OAM_PAL0 | OAM_END

OAM_2c7bc::
	db  -8,   1, $e6, OAM_PAL0 | OAM_END

OAM_2c7c0::
	db  -8, -13, $e6, OAM_PAL0 | OAM_END

OAM_2c7c4::
	db  -8,   5, $e6, OAM_PAL0 | OAM_END

OAM_2c7c8::
	db   2,   4, $8e, OAM_PAL0
	db   2,  -4, $8c, OAM_PAL0
	db   2, -12, $96, OAM_PAL0
	db -14,   4, $94, OAM_PAL0
	db -14,  -4, $92, OAM_PAL0
	db -14, -12, $90, OAM_PAL0 | OAM_END

OAM_2c7e0::
	db   2, -12, $8e, OAM_PAL0 | OAM_XFLIP
	db   2,  -4, $8c, OAM_PAL0 | OAM_XFLIP
	db   2,   4, $96, OAM_PAL0 | OAM_XFLIP
	db -14, -12, $94, OAM_PAL0 | OAM_XFLIP
	db -14,  -4, $92, OAM_PAL0 | OAM_XFLIP
	db -14,   4, $90, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c7f8::
	db   2,   4, $8e, OAM_PAL0
	db   2,  -4, $8c, OAM_PAL0
	db   2, -12, $8a, OAM_PAL0
	db -14,   4, $88, OAM_PAL0
	db -14,  -4, $86, OAM_PAL0
	db -14, -12, $84, OAM_PAL0 | OAM_END

OAM_2c810::
	db   2, -11, $8e, OAM_PAL0 | OAM_XFLIP
	db   2,  -3, $8c, OAM_PAL0 | OAM_XFLIP
	db   2,   5, $8a, OAM_PAL0 | OAM_XFLIP
	db -14, -11, $88, OAM_PAL0 | OAM_XFLIP
	db -14,  -3, $86, OAM_PAL0 | OAM_XFLIP
	db -14,   5, $84, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c828::
	db   0,   8, $9e, OAM_PAL0
	db   0,   0, $9c, OAM_PAL0
	db   0,  -8, $9a, OAM_PAL0
	db   0, -16, $98, OAM_PAL0
	db -16,   0, $88, OAM_PAL0
	db -16,  -8, $86, OAM_PAL0
	db -16, -16, $84, OAM_PAL0 | OAM_END

OAM_2c844::
	db   0, -16, $9e, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $9c, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $9a, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $98, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $88, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $86, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $84, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c860::
	db  -8,   8, $ac, OAM_PAL0
	db   0,   0, $aa, OAM_PAL0
	db   0,  -8, $a8, OAM_PAL0
	db   0, -16, $a6, OAM_PAL0
	db -16,   0, $a4, OAM_PAL0
	db -16,  -8, $a2, OAM_PAL0
	db -16, -16, $a0, OAM_PAL0 | OAM_END

OAM_2c87c::
	db  -8, -16, $ac, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $aa, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $a8, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $a6, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $a4, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $a2, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $a0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c898::
	db   0,   0, $b4, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $b2, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $b0, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $ae, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $b4, OAM_PAL0
	db   0, -16, $b2, OAM_PAL0
	db -16,  -8, $b0, OAM_PAL0
	db -16, -16, $ae, OAM_PAL0 | OAM_END

OAM_2c8b8::
	db   0,   0, $b8, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $b6, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $b8, OAM_PAL0
	db   0, -16, $b6, OAM_PAL0 | OAM_END

OAM_2c8c8::
	db -16,   0, $c4, OAM_PAL0
	db   0,   8, $c2, OAM_PAL0
	db   0,   0, $c0, OAM_PAL0
	db   0,  -8, $be, OAM_PAL0
	db -16,  -8, $bc, OAM_PAL0
	db   0, -16, $ba, OAM_PAL0 | OAM_END

OAM_2c8e0::
	db -16,  -8, $c4, OAM_PAL0 | OAM_XFLIP
	db   0, -16, $c2, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $c0, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $be, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $bc, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $ba, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c8f8::
	db   2,   5, $8e, OAM_PAL0
	db   2,  -3, $8c, OAM_PAL0
	db   2, -11, $ca, OAM_PAL0 | OAM_YFLIP
	db -14, -11, $ca, OAM_PAL0
	db -14,   5, $c8, OAM_PAL0
	db -14,  -3, $c6, OAM_PAL0 | OAM_END

OAM_2c910::
	db   2, -12, $8e, OAM_PAL0 | OAM_XFLIP
	db   2,  -4, $8c, OAM_PAL0 | OAM_XFLIP
	db   2,   4, $ca, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -14,   4, $ca, OAM_PAL0 | OAM_XFLIP
	db -14, -12, $c8, OAM_PAL0 | OAM_XFLIP
	db -14,  -4, $c6, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c928::
	db   2, -19, $ca, OAM_PAL0 | OAM_YFLIP
	db -14, -19, $ca, OAM_PAL0
	db   2,   5, $8e, OAM_PAL0
	db   2,  -3, $8c, OAM_PAL0
	db   2, -11, $cc, OAM_PAL0 | OAM_YFLIP
	db -14, -11, $cc, OAM_PAL0
	db -14,   5, $c8, OAM_PAL0
	db -14,  -3, $c6, OAM_PAL0 | OAM_END

OAM_2c948::
	db   2,  12, $ca, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -14,  12, $ca, OAM_PAL0 | OAM_XFLIP
	db   2, -12, $8e, OAM_PAL0 | OAM_XFLIP
	db   2,  -4, $8c, OAM_PAL0 | OAM_XFLIP
	db   2,   4, $cc, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -14,   4, $cc, OAM_PAL0 | OAM_XFLIP
	db -14, -12, $c8, OAM_PAL0 | OAM_XFLIP
	db -14,  -4, $c6, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c968::
	db  -1,   8, $d6, OAM_PAL0
	db   0,   0, $9c, OAM_PAL0
	db   0,  -8, $d4, OAM_PAL0
	db   0, -16, $d2, OAM_PAL0
	db -16,   0, $88, OAM_PAL0
	db -16,  -8, $d0, OAM_PAL0
	db -16, -16, $ce, OAM_PAL0 | OAM_END

OAM_2c984::
	db  -1, -16, $d6, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $9c, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $d4, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $d2, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $88, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $d0, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $ce, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c9a0::
	db -20,  14, $de, OAM_PAL0 | OAM_XFLIP
	db -20,   6, $de, OAM_PAL0 | OAM_YFLIP
	db   0,   8, $9e, OAM_PAL0
	db   0,   0, $9c, OAM_PAL0
	db   0,  -8, $9a, OAM_PAL0
	db   0, -16, $98, OAM_PAL0
	db -16,   0, $88, OAM_PAL0
	db -16,  -8, $86, OAM_PAL0
	db -16, -16, $84, OAM_PAL0 | OAM_END

OAM_2c9c4::
	db -20, -22, $de, OAM_PAL0
	db -20, -14, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0, -16, $9e, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $9c, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $9a, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $98, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $88, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $86, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $84, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2c9e8::
	db -21,  14, $de, OAM_PAL0 | OAM_XFLIP
	db -21,   6, $de, OAM_PAL0 | OAM_YFLIP
	db  -8,   8, $ac, OAM_PAL0
	db   0,   0, $aa, OAM_PAL0
	db   0,  -8, $a8, OAM_PAL0
	db   0, -16, $a6, OAM_PAL0
	db -16,   0, $a4, OAM_PAL0
	db -16,  -8, $a2, OAM_PAL0
	db -16, -16, $a0, OAM_PAL0 | OAM_END

OAM_2ca0c::
	db -21, -22, $de, OAM_PAL0
	db -21, -14, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8, -16, $ac, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $aa, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $a8, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $a6, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $a4, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $a2, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $a0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2ca30::
	db -16,   8, $e4, OAM_PAL0
	db   0,   8, $9e, OAM_PAL0
	db   0,   0, $9c, OAM_PAL0
	db   0,  -8, $9a, OAM_PAL0
	db   0, -16, $98, OAM_PAL0
	db -16,   0, $e6, OAM_PAL0
	db -16,  -8, $86, OAM_PAL0
	db -16, -16, $84, OAM_PAL0 | OAM_END

OAM_2ca50::
	db -16, -16, $e4, OAM_PAL0 | OAM_XFLIP
	db   0, -16, $9e, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $9c, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $9a, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $98, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $e6, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $86, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $84, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2ca70::
	db  -5,   8, $d6, OAM_PAL0
	db  -4,   0, $9c, OAM_PAL0
	db  -4,  -8, $9a, OAM_PAL0
	db  -4, -16, $dc, OAM_PAL0
	db -20,   0, $88, OAM_PAL0
	db -20,  -8, $86, OAM_PAL0
	db -20, -16, $84, OAM_PAL0 | OAM_END

OAM_2ca8c::
	db  -5, -16, $d6, OAM_PAL0 | OAM_XFLIP
	db  -4,  -8, $9c, OAM_PAL0 | OAM_XFLIP
	db  -4,   0, $9a, OAM_PAL0 | OAM_XFLIP
	db  -4,   8, $dc, OAM_PAL0 | OAM_XFLIP
	db -20,  -8, $88, OAM_PAL0 | OAM_XFLIP
	db -20,   0, $86, OAM_PAL0 | OAM_XFLIP
	db -20,   8, $84, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2caa8::
	db -27,  10, $de, OAM_PAL0 | OAM_YFLIP
	db -27,  18, $de, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cab0::
	db -31,   8, $e2, OAM_PAL0 | OAM_XFLIP
	db -31,   0, $e2, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2cab8::
	db -31,  -9, $e2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -31, -17, $e2, OAM_PAL0 | OAM_END

OAM_2cac0::
	db -26, -27, $de, OAM_PAL0
	db -26, -19, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2cac8::
	db -13, -32, $e0, OAM_PAL0 | OAM_YFLIP
	db -13, -24, $e0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cad0::
	db  -1, -31, $e0, OAM_PAL0
	db  -1, -23, $e0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2cad8::
	db   5, -21, $de, OAM_PAL0 | OAM_XFLIP
	db   5, -29, $de, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2cae0::
	db -13,  25, $e0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -13,  17, $e0, OAM_PAL0 | OAM_END

OAM_2cae8::
	db  -1,  25, $e0, OAM_PAL0 | OAM_XFLIP
	db  -1,  17, $e0, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2caf0::
	db   6,  14, $de, OAM_PAL0
	db   6,  22, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2caf8::
	db  -1,   8, $d6, OAM_PAL0
	db   0,   0, $9c, OAM_PAL0
	db   0,  -8, $d4, OAM_PAL0
	db   0, -16, $d2, OAM_PAL0
	db -16,   0, $88, OAM_PAL0
	db -16,  -8, $da, OAM_PAL0
	db -16, -16, $d8, OAM_PAL0 | OAM_END

OAM_2cb14::
	db  -1, -16, $d6, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $9c, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $d4, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $d2, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $88, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $da, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $d8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cb30::
	db  32,  24, $ec, OAM_PAL0 | OAM_XFLIP
	db  32,  16, $ec, OAM_PAL0 | OAM_XFLIP
	db  16,  16, $ec, OAM_PAL0 | OAM_XFLIP
	db  32,   8, $ec, OAM_PAL0 | OAM_XFLIP
	db  16,   8, $ec, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $ec, OAM_PAL0 | OAM_XFLIP
	db  32,   0, $e8, OAM_PAL0 | OAM_XFLIP
	db  16,   0, $e8, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $e8, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $e8, OAM_PAL0 | OAM_XFLIP
	db  32,  -8, $e8, OAM_PAL0
	db  32, -16, $ec, OAM_PAL0
	db  32, -24, $ec, OAM_PAL0
	db  32, -32, $ec, OAM_PAL0
	db  16,  -8, $e8, OAM_PAL0
	db   0,  -8, $e8, OAM_PAL0
	db  16, -16, $ec, OAM_PAL0
	db -16,  -8, $ec, OAM_PAL0
	db   0, -16, $ec, OAM_PAL0
	db  16, -24, $ec, OAM_PAL0
	db  32,  32, $ea, OAM_PAL0 | OAM_XFLIP
	db  32, -40, $ea, OAM_PAL0
	db  16,  24, $ea, OAM_PAL0 | OAM_XFLIP
	db   0,  16, $ea, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $ea, OAM_PAL0 | OAM_XFLIP
	db  16, -32, $ea, OAM_PAL0
	db   0, -24, $ea, OAM_PAL0
	db -16, -16, $ea, OAM_PAL0
	db -32,   0, $ee, OAM_PAL0 | OAM_XFLIP
	db -32,  -8, $ee, OAM_PAL0 | OAM_END

OAM_2cba8::
	db  -8,  -8, $a2, OAM_PAL0 | OAM_END

OAM_2cbac::
	db  -8,  -8, $c2, OAM_PAL0 | OAM_END

OAM_2cbb0::
	db  -8,  -8, $c4, OAM_PAL0 | OAM_END

OAM_2cbb4::
	db  -6,  -4, $c2, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cbb8::
	db  -8,  -4, $c4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cbbc::
	db   6,  24, $a8, OAM_PAL0
	db -16,   8, $a4, OAM_PAL0
	db  -8,   0, $b2, OAM_PAL0
	db  -8,  -8, $b0, OAM_PAL0 | OAM_END

OAM_2cbcc::
	db   6,  24, $aa, OAM_PAL0
	db -16,   8, $a6, OAM_PAL0
	db  -8,   0, $b2, OAM_PAL0
	db  -8,  -8, $b0, OAM_PAL0 | OAM_END

OAM_2cbdc::
	db  -8,  30, $8e, OAM_PAL0
	db  -8,  18, $8e, OAM_PAL0 | OAM_XFLIP
	db  -8,  24, $9e, OAM_PAL0
	db -24,   0, $a2, OAM_PAL0
	db  -8,  -8, $b0, OAM_PAL0
	db  -8,   0, $b4, OAM_PAL0 | OAM_END

OAM_2cbf4::
	db -12,  36, $8e, OAM_PAL0
	db -12,  13, $8e, OAM_PAL0 | OAM_XFLIP
	db -15,  24, $9e, OAM_PAL0
	db -20, -13, $a0, OAM_PAL0
	db  -8,  -8, $08, OAM_PAL0
	db  -8,   0, $bc, OAM_PAL0 | OAM_END

OAM_2cc0c::
	db  -3, -16, $a6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $18, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cc18::
	db -20, -14, $a6, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $1a, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cc24::
	db -30,  -8, $a2, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $24, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $34, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $26, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $36, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cc38::
	db -32,  -8, $a2, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $30, OAM_PAL0
	db   0,   4, $28, OAM_PAL0 | OAM_XFLIP
	db   0, -12, $28, OAM_PAL0
	db -16,   4, $0e, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $3a, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cc54::
	db -20, -14, $a4, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $0a, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cc60::
	db -20, -14, $a4, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $ba, OAM_PAL0 | OAM_END

OAM_2cc6c::
	db -23, -11, $a4, OAM_PAL0 | OAM_XFLIP
	db  -8, -16, $c0, OAM_PAL0
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $be, OAM_PAL0 | OAM_END

OAM_2cc7c::
	db  -8,  -8, $ac, OAM_PAL0 | OAM_END

OAM_2cc80::
	db  -8,  -8, $ac, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cc84::
	db -31, -11, $a2, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $30, OAM_PAL0
	db   0,   4, $28, OAM_PAL0 | OAM_XFLIP
	db   0, -12, $28, OAM_PAL0
	db -16,   4, $0e, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $0c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cca0::
	db  -8,   0, $b8, OAM_PAL0
	db  -8,  -8, $b6, OAM_PAL0 | OAM_END

OAM_2cca8::
	db  -8,   0, $b6, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $b8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2ccb0::
	db  -8,   0, $b8, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $b6, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2ccb8::
	db  -8,   0, $b6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $b8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2ccc0::
	db  -8,  -4, $54, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2ccc4::
	db  -8,  -8, $08, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $18, OAM_PAL0 | OAM_YFLIP | OAM_END

; unreferenced
OAM_2cccc::
	db -16, -12, $22, OAM_PAL0 | OAM_YFLIP
	db -16,  -4, $30, OAM_PAL0 | OAM_YFLIP
	db -16,   4, $32, OAM_PAL0 | OAM_YFLIP
	db   0, -12, $0e, OAM_PAL0 | OAM_YFLIP
	db   0,  -4, $20, OAM_PAL0 | OAM_YFLIP
	db   0,   4, $0c, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2cce4::
	db -16,   4, $38, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,  -4, $30, OAM_PAL0 | OAM_YFLIP
	db -16, -12, $38, OAM_PAL0 | OAM_YFLIP
	db   0,   4, $0e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  -4, $20, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0, -12, $0c, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2ccfc::
	db   8,  -8, $ae, OAM_PAL0 | OAM_XFLIP
	db   8, -16, $ae, OAM_PAL0
	db   0,  16, $de, OAM_PAL0
	db   0,  24, $dc, OAM_PAL0
	db -24,   8, $ae, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24,   0, $ae, OAM_PAL0 | OAM_YFLIP
	db -16, -24, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16, -32, $dc, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2cd1c::
	db   8, -16, $ae, OAM_PAL0 | OAM_XFLIP
	db   8, -24, $ae, OAM_PAL0
	db   8,  16, $ae, OAM_PAL0 | OAM_XFLIP
	db   8,   8, $ae, OAM_PAL0
	db -24,  16, $ae, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24,   8, $ae, OAM_PAL0 | OAM_YFLIP
	db -24, -16, $ae, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24, -24, $ae, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2cd3c::
	db   8,   8, $ae, OAM_PAL0 | OAM_XFLIP
	db   8,   0, $ae, OAM_PAL0
	db   0, -24, $de, OAM_PAL0 | OAM_XFLIP
	db   0, -32, $dc, OAM_PAL0 | OAM_XFLIP
	db -16,  16, $de, OAM_PAL0 | OAM_YFLIP
	db -16,  24, $dc, OAM_PAL0 | OAM_YFLIP
	db -24,  -8, $ae, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24, -16, $ae, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2cd5c::
	db -24,   0, $ae, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24,  -8, $ae, OAM_PAL0 | OAM_YFLIP
	db   8,   0, $ae, OAM_PAL0 | OAM_XFLIP
	db   8,  -8, $ae, OAM_PAL0 | OAM_END

OAM_2cd6c::
	db -15, -10, $8e, OAM_PAL0 | OAM_XFLIP
	db -15,   3, $8e, OAM_PAL0
	db -15,  -3, $9e, OAM_PAL0 | OAM_END

OAM_2cd78::
	db -24,   9, $8e, OAM_PAL0
	db -24, -16, $8e, OAM_PAL0 | OAM_XFLIP
	db -27,  -4, $9e, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cd84::
	db  -8,   0, $ca, OAM_PAL0
	db  -8,  -8, $c8, OAM_PAL0 | OAM_END

OAM_2cd8c::
	db   0, -14, $d0, OAM_PAL0
	db  -8,   4, $ce, OAM_PAL0
	db  -8,  -4, $cc, OAM_PAL0 | OAM_END

OAM_2cd98::
	db -16, -11, $10, OAM_PAL0
	db -16,   5, $10, OAM_PAL0 | OAM_XFLIP
	db -16,  -3, $20, OAM_PAL0
	db   0, -19, $02, OAM_PAL0
	db  16, -19, $04, OAM_PAL0
	db   0, -11, $12, OAM_PAL0
	db  16, -11, $14, OAM_PAL0
	db  16,  -3, $24, OAM_PAL0 | OAM_XFLIP
	db   0,  -3, $22, OAM_PAL0 | OAM_XFLIP
	db  16,   5, $14, OAM_PAL0 | OAM_XFLIP
	db   0,   5, $12, OAM_PAL0 | OAM_XFLIP
	db   0,  13, $02, OAM_PAL0 | OAM_XFLIP
	db  16,  13, $04, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cdcc::
	db -16, -11, $10, OAM_PAL0
	db -16,   5, $10, OAM_PAL0 | OAM_XFLIP
	db -16,  -3, $20, OAM_PAL0
	db   0, -19, $02, OAM_PAL0
	db  16, -19, $04, OAM_PAL0
	db   0, -11, $12, OAM_PAL0
	db  16, -11, $14, OAM_PAL0
	db  16,  -3, $24, OAM_PAL0 | OAM_XFLIP
	db   0,  -3, $00, OAM_PAL0 | OAM_XFLIP
	db  16,   5, $14, OAM_PAL0 | OAM_XFLIP
	db   0,   5, $16, OAM_PAL0 | OAM_XFLIP
	db   0,  13, $06, OAM_PAL0 | OAM_XFLIP
	db  16,  13, $04, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2ce00::
	db -16, -11, $10, OAM_PAL0
	db -16,   5, $10, OAM_PAL0 | OAM_XFLIP
	db -16,  -3, $20, OAM_PAL0
	db   0, -19, $02, OAM_PAL0
	db  16, -19, $04, OAM_PAL0
	db   0, -11, $12, OAM_PAL0
	db  16, -11, $14, OAM_PAL0
	db  16,  -3, $24, OAM_PAL0 | OAM_XFLIP
	db   0,  -3, $00, OAM_PAL0 | OAM_XFLIP
	db  16,   5, $14, OAM_PAL0 | OAM_XFLIP
	db   0,   5, $18, OAM_PAL0 | OAM_XFLIP
	db   0,  13, $08, OAM_PAL0 | OAM_XFLIP
	db  16,  13, $04, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2ce34::
	db -16, -11, $10, OAM_PAL0
	db -16,   5, $10, OAM_PAL0 | OAM_XFLIP
	db -16,  -3, $20, OAM_PAL0
	db   0, -19, $02, OAM_PAL0
	db  16, -19, $04, OAM_PAL0
	db   0, -11, $12, OAM_PAL0
	db  16, -11, $14, OAM_PAL0
	db  16,  -3, $24, OAM_PAL0 | OAM_XFLIP
	db   0,  -3, $00, OAM_PAL0 | OAM_XFLIP
	db  16,   5, $14, OAM_PAL0 | OAM_XFLIP
	db   0,   5, $1a, OAM_PAL0 | OAM_XFLIP
	db   0,  13, $0a, OAM_PAL0 | OAM_XFLIP
	db  16,  13, $04, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2ce68::
	db -16,   2, $0c, OAM_PAL0 | OAM_XFLIP
	db -16,  -6, $1c, OAM_PAL0 | OAM_XFLIP
	db   0, -19, $02, OAM_PAL0
	db  16, -19, $04, OAM_PAL0
	db   0, -11, $12, OAM_PAL0
	db  16, -11, $14, OAM_PAL0
	db  16,  -3, $24, OAM_PAL0 | OAM_XFLIP
	db   0,  -3, $00, OAM_PAL0 | OAM_XFLIP
	db  16,   5, $14, OAM_PAL0 | OAM_XFLIP
	db   0,   5, $1a, OAM_PAL0 | OAM_XFLIP
	db   0,  13, $0a, OAM_PAL0 | OAM_XFLIP
	db  16,  13, $04, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2ce98::
	db -14, -18, $2a, OAM_PAL0
	db -14,  12, $2a, OAM_PAL0 | OAM_XFLIP
	db -16,   2, $0e, OAM_PAL0 | OAM_XFLIP
	db -16,  -6, $1e, OAM_PAL0 | OAM_XFLIP
	db   0, -19, $02, OAM_PAL0
	db  16, -19, $04, OAM_PAL0
	db   0, -11, $12, OAM_PAL0
	db  16, -11, $14, OAM_PAL0
	db  16,  -3, $24, OAM_PAL0 | OAM_XFLIP
	db   0,  -3, $00, OAM_PAL0 | OAM_XFLIP
	db  16,   5, $14, OAM_PAL0 | OAM_XFLIP
	db   0,   5, $1a, OAM_PAL0 | OAM_XFLIP
	db   0,  13, $0a, OAM_PAL0 | OAM_XFLIP
	db  16,  13, $04, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2ced0::
	db  -3, -29, $2a, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -1,  21, $2a, OAM_PAL0
	db -16, -15, $28, OAM_PAL0
	db -32, -15, $26, OAM_PAL0
	db -32,  -7, $36, OAM_PAL0
	db -16,  -7, $38, OAM_PAL0
	db -32,   1, $36, OAM_PAL0 | OAM_XFLIP
	db -32,   9, $26, OAM_PAL0 | OAM_XFLIP
	db -16,   9, $28, OAM_PAL0 | OAM_XFLIP
	db -16,   1, $38, OAM_PAL0 | OAM_XFLIP
	db   0, -19, $02, OAM_PAL0
	db  16, -19, $04, OAM_PAL0
	db   0, -11, $12, OAM_PAL0
	db  16, -11, $14, OAM_PAL0
	db  16,  -3, $24, OAM_PAL0 | OAM_XFLIP
	db   0,  -3, $00, OAM_PAL0 | OAM_XFLIP
	db  16,   5, $14, OAM_PAL0 | OAM_XFLIP
	db   0,   5, $1a, OAM_PAL0 | OAM_XFLIP
	db   0,  13, $0a, OAM_PAL0 | OAM_XFLIP
	db  16,  13, $04, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cf20::
	db -32, -15, $42, OAM_PAL0
	db -32,   9, $42, OAM_PAL0
	db  16, -11, $14, OAM_PAL0
	db  16, -19, $04, OAM_PAL0
	db   0, -19, $02, OAM_PAL0
	db   0, -11, $12, OAM_PAL0
	db  16,  -3, $24, OAM_PAL0 | OAM_XFLIP
	db  16,   5, $14, OAM_PAL0 | OAM_XFLIP
	db  16,  13, $04, OAM_PAL0 | OAM_XFLIP
	db   0,  13, $0a, OAM_PAL0 | OAM_XFLIP
	db   0,   5, $1a, OAM_PAL0 | OAM_XFLIP
	db   0,  -3, $00, OAM_PAL0
	db -48,  -7, $50, OAM_PAL0
	db -48, -15, $40, OAM_PAL0
	db -48, -23, $30, OAM_PAL0
	db -32, -23, $32, OAM_PAL0
	db -16, -23, $34, OAM_PAL0
	db -16, -15, $44, OAM_PAL0
	db -16,  -7, $54, OAM_PAL0
	db -32,  -7, $52, OAM_PAL0
	db -32,   1, $52, OAM_PAL0 | OAM_XFLIP
	db -16,   1, $54, OAM_PAL0 | OAM_XFLIP
	db -16,   9, $44, OAM_PAL0 | OAM_XFLIP
	db -16,  17, $34, OAM_PAL0 | OAM_XFLIP
	db -48,   1, $50, OAM_PAL0 | OAM_XFLIP
	db -48,   9, $40, OAM_PAL0 | OAM_XFLIP
	db -48,  17, $30, OAM_PAL0 | OAM_XFLIP
	db -32,  17, $32, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cf90::
	db  -9,  -4, $3a, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2cf94::
	db -72,   0, $3e, OAM_PAL0
	db -72,  -8, $2e, OAM_PAL0
	db -88,   0, $3c, OAM_PAL0
	db -88,  -8, $2c, OAM_PAL0 | OAM_END

OAM_2cfa4::
	db -25,   2, $4a, OAM_PAL0
	db -38,  12, $48, OAM_PAL0 | OAM_XFLIP
	db -22,   8, $48, OAM_PAL0 | OAM_XFLIP
	db -17, -15, $48, OAM_PAL0
	db -33, -19, $48, OAM_PAL0 | OAM_END

; unreferenced
OAM_2cfb8::
	db   0,   0, $70, OAM_PAL0 | OAM_END

OAM_2cfbc::
	db   0,   0, $fe, OAM_PAL0 | OAM_END

OAM_2cfc0::
	db  -3,  -5, $46, OAM_PAL0 | OAM_END

OAM_2cfc4::
	db  -8,   0, $70, OAM_PAL0
	db  -8,  -8, $60, OAM_PAL0 | OAM_END

OAM_2cfcc::
	db  -8,   0, $62, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $72, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2cfd4::
	db  -8,  -8, $70, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $60, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2cfdc::
	db  -8,  -8, $62, OAM_PAL0
	db  -8,   0, $72, OAM_PAL0 | OAM_END

OAM_2cfe4::
	db  -8,   0, $74, OAM_PAL0
	db  -8,  -8, $64, OAM_PAL0 | OAM_END

OAM_2cfec::
	db  -8,   0, $74, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $64, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2cff4::
	db  -8,  -8, $74, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $64, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2cffc::
	db  -8,  -8, $74, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $64, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d004::
	db  -8,  -8, $76, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $66, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2d00c::
	db  -8,  -8, $78, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $68, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2d014::
	db  -8,   0, $76, OAM_PAL0
	db  -8,  -8, $66, OAM_PAL0 | OAM_END

OAM_2d01c::
	db  -8,   0, $78, OAM_PAL0
	db  -8,  -8, $68, OAM_PAL0 | OAM_END

OAM_2d024::
	db  -8,   0, $7a, OAM_PAL0
	db  -8,  -8, $6a, OAM_PAL0 | OAM_END

OAM_2d02c::
	db  -8,  -8, $7a, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $6a, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d034::
	db  -8,  -8, $7a, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $6a, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2d03c::
	db  -8,   0, $7a, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $6a, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2d044::
	db  -8,   0, $7c, OAM_PAL0
	db  -8,  -8, $6c, OAM_PAL0 | OAM_END

OAM_2d04c::
	db  -8,   0, $7c, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $6c, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2d054::
	db  -8,  -8, $7c, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $6c, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2d05c::
	db  -8,  -8, $7c, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $6c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d064::
	db -12,  -3, $7e, OAM_PAL0 | OAM_END

OAM_2d068::
	db  -4,  -3, $7e, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2d06c::
	db  -4,  -4, $7e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2d070::
	db -12,  -4, $7e, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d074::
	db  -4,  -4, $5a, OAM_PAL0 | OAM_END

OAM_2d078::
	db  -4,  -3, $5a, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d07c::
	db -11,  -3, $5a, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2d080::
	db -11,  -3, $5a, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2d084::
	db   8,  -8, $58, OAM_PAL0
	db  -8,   0, $56, OAM_PAL0
	db  -8,  -8, $5c, OAM_PAL0
	db  -8, -16, $4c, OAM_PAL0 | OAM_END

OAM_2d094::
	db -16,   8, $82, OAM_PAL0 | OAM_PRIO
	db -16, -16, $82, OAM_PAL0 | OAM_XFLIP | OAM_PRIO
	db   0,   8, $82, OAM_PAL0 | OAM_YFLIP | OAM_PRIO
	db   0, -16, $82, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db   0,  -8, $80, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db   0,   0, $80, OAM_PAL0 | OAM_YFLIP | OAM_PRIO
	db -16,  -8, $80, OAM_PAL0 | OAM_XFLIP | OAM_PRIO
	db -16,   0, $80, OAM_PAL0 | OAM_PRIO | OAM_END

OAM_2d0b4::
	db   0,  13, $0a, OAM_PAL0 | OAM_XFLIP
	db   0,   5, $1a, OAM_PAL0 | OAM_XFLIP
	db  16,  13, $04, OAM_PAL0 | OAM_XFLIP
	db  16,   5, $14, OAM_PAL0 | OAM_XFLIP
	db  16, -19, $04, OAM_PAL0
	db   0, -19, $02, OAM_PAL0
	db   0, -11, $12, OAM_PAL0
	db  16, -11, $14, OAM_PAL0
	db  16,  -3, $24, OAM_PAL0
	db   0,  -3, $00, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d0dc::
	db  -8,   0, $84, OAM_PAL0
	db  -8,  -8, $84, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d0e4::
	db  -8,  -8, $84, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $84, OAM_PAL0
	db -24,   3, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24,  -5, $4e, OAM_PAL0
	db   8,  -3, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8, -11, $5e, OAM_PAL0 | OAM_END

OAM_2d0fc::
	db  -4,  -3, $a2, OAM_PAL0
	db -16,  14, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,   6, $5e, OAM_PAL0
	db   0, -14, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0, -22, $4e, OAM_PAL0 | OAM_END

OAM_2d110::
	db  -8,  -8, $84, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $84, OAM_PAL0
	db  -5,  16, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -5,   8, $4e, OAM_PAL0
	db -11, -16, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -11, -24, $5e, OAM_PAL0 | OAM_END

OAM_2d128::
	db  -4,  -3, $a2, OAM_PAL0
	db -22, -17, $4e, OAM_PAL0 | OAM_YFLIP
	db -22,  -9, $4e, OAM_PAL0 | OAM_XFLIP
	db   6,   1, $5e, OAM_PAL0 | OAM_YFLIP
	db   6,   9, $5e, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d13c::
	db  -8,  -8, $84, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $84, OAM_PAL0
	db -22,   9, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -22,   1, $5e, OAM_PAL0
	db   6,  -9, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   6, -17, $4e, OAM_PAL0 | OAM_END

OAM_2d154::
	db  -4,  -3, $a2, OAM_PAL0
	db -11,  16, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -11,   8, $4e, OAM_PAL0
	db  -5, -16, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -5, -24, $5e, OAM_PAL0 | OAM_END

OAM_2d168::
	db  -8,  -8, $84, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $84, OAM_PAL0
	db -16, -22, $4e, OAM_PAL0 | OAM_YFLIP
	db -16, -14, $4e, OAM_PAL0 | OAM_XFLIP
	db   0,   6, $5e, OAM_PAL0
	db   0,  14, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

; unreferenced
OAM_2d180::
	db  -4,  -3, $a2, OAM_PAL0
	db -24, -11, $5e, OAM_PAL0 | OAM_YFLIP
	db -24,  -3, $5e, OAM_PAL0 | OAM_XFLIP
	db   8,  -5, $4e, OAM_PAL0 | OAM_YFLIP
	db   8,   3, $4e, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d194::
	db  -4,  -3, $a2, OAM_PAL0 | OAM_END

OAM_2d198::
	db   0,   8, $8c, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $8a, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $8e, OAM_PAL0
	db   0,  -8, $8c, OAM_PAL0
	db -16,  -8, $8a, OAM_PAL0
	db   0,   0, $90, OAM_PAL0 | OAM_END

OAM_2d1b0::
	db   0,   8, $92, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $a0, OAM_PAL0
	db   0,  -8, $92, OAM_PAL0 | OAM_END

OAM_2d1bc::
	db -16,  -8, $8a, OAM_PAL0
	db   0,  -8, $94, OAM_PAL0
	db   0,   8, $94, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $8a, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $96, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $98, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d1d4::
	db   0,   8, $a6, OAM_PAL0
	db -16,   8, $a4, OAM_PAL0
	db -16,   0, $8e, OAM_PAL0
	db   0,   0, $9e, OAM_PAL0
	db   0,  -8, $9c, OAM_PAL0
	db -16,  -8, $9a, OAM_PAL0 | OAM_END

OAM_2d1ec::
	db   0,   8, $a6, OAM_PAL0
	db -16,   8, $a4, OAM_PAL0
	db -16,   0, $8e, OAM_PAL0
	db   0,   0, $9e, OAM_PAL0
	db   0,  -8, $9c, OAM_PAL0
	db -16,  -8, $a8, OAM_PAL0 | OAM_END

OAM_2d204::
	db   2, -31, $be, OAM_PAL0 | OAM_YFLIP
	db   2, -15, $c6, OAM_PAL0 | OAM_YFLIP
	db   2, -23, $c2, OAM_PAL0 | OAM_YFLIP
	db  18, -15, $c4, OAM_PAL0 | OAM_YFLIP
	db  18, -23, $c0, OAM_PAL0 | OAM_YFLIP
	db  18, -31, $bc, OAM_PAL0 | OAM_YFLIP
	db   0,   8, $a6, OAM_PAL0
	db -16,   8, $a4, OAM_PAL0
	db -16,   0, $8e, OAM_PAL0
	db   0,   0, $9e, OAM_PAL0
	db   0,  -8, $9c, OAM_PAL0
	db -16,  -8, $9a, OAM_PAL0 | OAM_END

OAM_2d234::
	db -12, -32, $be, OAM_PAL0
	db -12, -16, $c6, OAM_PAL0
	db -12, -24, $c2, OAM_PAL0
	db -28, -16, $c4, OAM_PAL0
	db -28, -24, $c0, OAM_PAL0
	db -28, -32, $bc, OAM_PAL0
	db   0,   8, $a6, OAM_PAL0
	db -16,   8, $a4, OAM_PAL0
	db -16,   0, $8e, OAM_PAL0
	db   0,   0, $9e, OAM_PAL0
	db   0,  -8, $9c, OAM_PAL0
	db -16,  -8, $9a, OAM_PAL0 | OAM_END

OAM_2d264::
	db -24,   8, $b8, OAM_PAL0
	db -40,   8, $b6, OAM_PAL0
	db -24,   0, $b4, OAM_PAL0
	db -40,   0, $b2, OAM_PAL0
	db -24,  -8, $b0, OAM_PAL0
	db -40,  -8, $ae, OAM_PAL0
	db -24, -16, $ac, OAM_PAL0
	db -40, -16, $aa, OAM_PAL0
	db -16,  -8, $ba, OAM_PAL0
	db   0,  -8, $94, OAM_PAL0
	db   0,   8, $ca, OAM_PAL0
	db -16,   8, $c8, OAM_PAL0
	db -16,   0, $96, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $98, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d29c::
	db   0,   8, $d0, OAM_PAL1
	db   0, -16, $d8, OAM_PAL1
	db   0,   0, $de, OAM_PAL1
	db   0,  -8, $d6, OAM_PAL1 | OAM_END

OAM_2d2ac::
	db  -9,  -4, $88, OAM_PAL0 | OAM_END

OAM_2d2b0::
	db  -8,  -8, $90, OAM_PAL0 | OAM_END

OAM_2d2b4::
	db  -8,  -8, $92, OAM_PAL0 | OAM_END

OAM_2d2b8::
	db  -8,  -8, $92, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d2bc::
	db  -8,  -8, $90, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d2c0::
	db -16,  -8, $94, OAM_PAL0 | OAM_END

OAM_2d2c4::
	db   0,  -8, $12, OAM_PAL0
	db   0,   0, $06, OAM_PAL0
	db   0,   8, $16, OAM_PAL0
	db   0, -16, $02, OAM_PAL0
	db -16, -16, $00, OAM_PAL0
	db -16,   8, $14, OAM_PAL0
	db -16,   0, $04, OAM_PAL0
	db -16,  -8, $10, OAM_PAL0 | OAM_END

OAM_2d2e4::
	db -16,   8, $16, OAM_PAL0 | OAM_YFLIP
	db -16,   0, $06, OAM_PAL0 | OAM_YFLIP
	db -16,  -8, $12, OAM_PAL0 | OAM_YFLIP
	db -16, -16, $02, OAM_PAL0 | OAM_YFLIP
	db   0, -16, $00, OAM_PAL0 | OAM_YFLIP
	db   0,  -8, $10, OAM_PAL0 | OAM_YFLIP
	db   0,   0, $04, OAM_PAL0 | OAM_YFLIP
	db   0,   8, $14, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2d304::
	db -16, -16, $16, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,  -8, $06, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,   8, $02, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,   0, $12, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,   8, $00, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,   0, $10, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0, -16, $14, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  -8, $04, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2d324::
	db   0, -16, $16, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $06, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $12, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $02, OAM_PAL0 | OAM_XFLIP
	db -16,   8, $00, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $10, OAM_PAL0 | OAM_XFLIP
	db -16, -16, $14, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $04, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d344::
	db -16,   0, $28, OAM_PAL0
	db -16,  -8, $18, OAM_PAL0
	db   0, -16, $0a, OAM_PAL0
	db   0,  -8, $1a, OAM_PAL0
	db   0,   0, $2a, OAM_PAL0
	db   0,   8, $36, OAM_PAL0 | OAM_END

OAM_2d35c::
	db -16, -16, $0c, OAM_PAL0
	db -16,   8, $2e, OAM_PAL0
	db -16,   0, $2c, OAM_PAL0
	db -16,  -8, $1c, OAM_PAL0
	db   0, -16, $0e, OAM_PAL0
	db   0,  -8, $1e, OAM_PAL0
	db   0,   0, $2a, OAM_PAL0
	db   0,   8, $36, OAM_PAL0 | OAM_END

OAM_2d37c::
	db -16,   0, $34, OAM_PAL0
	db -16,  -8, $24, OAM_PAL0
	db   0, -16, $26, OAM_PAL0
	db   0,  -8, $1a, OAM_PAL0
	db   0,   0, $2a, OAM_PAL0
	db   0,   8, $36, OAM_PAL0 | OAM_END

OAM_2d394::
	db -16,   8, $50, OAM_PAL0
	db -16,   0, $40, OAM_PAL0
	db -16,  -8, $30, OAM_PAL0
	db -16, -16, $20, OAM_PAL0
	db   0, -16, $22, OAM_PAL0
	db   0,  -8, $32, OAM_PAL0
	db   0,   0, $42, OAM_PAL0
	db   0,   8, $52, OAM_PAL0 | OAM_END

OAM_2d3b4::
	db -16,   8, $68, OAM_PAL0
	db   0,   8, $6a, OAM_PAL0
	db   0,   0, $5a, OAM_PAL0
	db   0,  -8, $4a, OAM_PAL0
	db   0, -16, $3a, OAM_PAL0
	db -16, -16, $38, OAM_PAL0
	db -16,   0, $58, OAM_PAL0
	db -16,  -8, $48, OAM_PAL0 | OAM_END

OAM_2d3d4::
	db   0,   8, $6e, OAM_PAL0
	db -16,   8, $6c, OAM_PAL0
	db   0,   0, $5e, OAM_PAL0
	db   0,  -8, $4e, OAM_PAL0
	db   0, -16, $3e, OAM_PAL0
	db -16, -16, $3c, OAM_PAL0
	db -16,  -8, $4c, OAM_PAL0
	db -16,   0, $5c, OAM_PAL0 | OAM_END

OAM_2d3f4::
	db -16, -12, $78, OAM_PAL0
	db   0, -12, $7a, OAM_PAL0
	db   0,   4, $f2, OAM_PAL0
	db -16,   4, $f0, OAM_PAL0
	db -16,  -4, $88, OAM_PAL0
	db   0,  -4, $8a, OAM_PAL0 | OAM_END

OAM_2d40c::
	db -16,   8, $94, OAM_PAL0
	db   0,   8, $96, OAM_PAL0
	db   0,   0, $86, OAM_PAL0
	db   0,  -8, $76, OAM_PAL0
	db -16, -16, $64, OAM_PAL0
	db   0, -16, $66, OAM_PAL0
	db -16,  -8, $74, OAM_PAL0
	db -16,   0, $84, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d42c::
	db -16,   8, $64, OAM_PAL0 | OAM_XFLIP
	db   0,   8, $66, OAM_PAL0 | OAM_XFLIP
	db   0,   0, $76, OAM_PAL0 | OAM_XFLIP
	db   0, -16, $96, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $86, OAM_PAL0 | OAM_XFLIP
	db -16, -16, $94, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $84, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $74, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2d44c::
	db -12, -16, $a4, OAM_PAL0
	db -12,  -8, $b4, OAM_PAL0
	db -12,   0, $c4, OAM_PAL0
	db -12,   8, $d4, OAM_PAL0
	db   4,   8, $d6, OAM_PAL0
	db   4,   0, $c6, OAM_PAL0
	db   4,  -8, $b6, OAM_PAL0
	db   4, -16, $a6, OAM_PAL0 | OAM_END

OAM_2d46c::
	db -16, -12, $d0, OAM_PAL0
	db   0, -12, $d2, OAM_PAL0
	db   0,   4, $f2, OAM_PAL0
	db -16,   4, $f0, OAM_PAL0
	db -16,  -4, $8c, OAM_PAL0
	db   0,  -4, $e2, OAM_PAL0 | OAM_END

OAM_2d484::
	db -16, -12, $7c, OAM_PAL0
	db   0, -12, $46, OAM_PAL0
	db   0,   4, $f2, OAM_PAL0
	db -16,   4, $f0, OAM_PAL0
	db -16,  -4, $7e, OAM_PAL0
	db   0,  -4, $56, OAM_PAL0 | OAM_END

OAM_2d49c::
	db -16, -12, $7c, OAM_PAL0
	db   0, -12, $46, OAM_PAL0
	db   0,   4, $f2, OAM_PAL0
	db -16,   4, $f0, OAM_PAL0
	db -16,  -4, $8e, OAM_PAL0
	db   0,  -4, $56, OAM_PAL0 | OAM_END

OAM_2d4b4::
	db -16, -12, $d0, OAM_PAL0
	db   0, -12, $d2, OAM_PAL0
	db   0,   4, $f2, OAM_PAL0
	db -16,   4, $f0, OAM_PAL0
	db -16,  -4, $e0, OAM_PAL0
	db   0,  -4, $e2, OAM_PAL0 | OAM_END

OAM_2d4cc::
	db -16,   9, $c0, OAM_PAL0
	db   0,   9, $c2, OAM_PAL0
	db   0, -15, $ec, OAM_PAL0
	db -16, -15, $ea, OAM_PAL0
	db   0,   1, $b2, OAM_PAL0
	db   0,  -7, $a2, OAM_PAL0
	db -16,   1, $b0, OAM_PAL0
	db -16,  -7, $fa, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d4ec::
	db -16,   7, $ea, OAM_PAL0 | OAM_XFLIP
	db   0,   7, $ec, OAM_PAL0 | OAM_XFLIP
	db -16, -17, $c0, OAM_PAL0 | OAM_XFLIP
	db   0, -17, $c2, OAM_PAL0 | OAM_XFLIP
	db   0,  -1, $a2, OAM_PAL0 | OAM_XFLIP
	db   0,  -9, $b2, OAM_PAL0 | OAM_XFLIP
	db -16,  -1, $fa, OAM_PAL0 | OAM_XFLIP
	db -16,  -9, $b0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d50c::
	db -16,   8, $d4, OAM_PAL0
	db -16,   0, $c4, OAM_PAL0
	db -16,  -8, $b4, OAM_PAL0
	db -16, -16, $a4, OAM_PAL0
	db   0,   8, $d6, OAM_PAL0
	db   0, -16, $a6, OAM_PAL0
	db   0,   0, $c6, OAM_PAL0
	db   0,  -8, $b6, OAM_PAL0 | OAM_END

OAM_2d52c::
	db -16,   8, $d8, OAM_PAL0
	db -16,   0, $c8, OAM_PAL0
	db -16,  -8, $b8, OAM_PAL0
	db -16, -16, $a8, OAM_PAL0
	db   0,   8, $da, OAM_PAL0
	db   0,   0, $ca, OAM_PAL0
	db   0,  -8, $ba, OAM_PAL0
	db   0, -16, $aa, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d54c::
	db   0, -12, $f2, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $8a, OAM_PAL0 | OAM_XFLIP
	db   0,   4, $7a, OAM_PAL0 | OAM_XFLIP
	db -16,   4, $d0, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $e0, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $f0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d564::
	db -16, -12, $78, OAM_PAL0
	db   0, -12, $d2, OAM_PAL0
	db   0,   4, $f2, OAM_PAL0
	db -16,   4, $f0, OAM_PAL0
	db -16,  -4, $88, OAM_PAL0
	db   0,  -4, $e2, OAM_PAL0 | OAM_END

OAM_2d57c::
	db -16, -12, $78, OAM_PAL0
	db   0, -12, $46, OAM_PAL0
	db   0,   4, $f2, OAM_PAL0
	db -16,   4, $f0, OAM_PAL0
	db -16,  -4, $88, OAM_PAL0
	db   0,  -4, $56, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d594::
	db   0,   4, $d0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  -4, $e0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0, -12, $f0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16, -12, $f2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,  -4, $e2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,   4, $d2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

; unreferenced
OAM_2d5ac::
	db -20,   8, $a6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -20,   0, $b6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -20,  -8, $c6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -20, -16, $d6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -4, -16, $d4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -4,  -8, $c4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -4,   0, $b4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -4,   8, $a4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2d5cc::
	db -16,   8, $cc, OAM_PAL0
	db -16,   0, $bc, OAM_PAL0
	db -16, -16, $9c, OAM_PAL0
	db -16,  -8, $ac, OAM_PAL0
	db   0, -16, $9e, OAM_PAL0
	db   0,   8, $ce, OAM_PAL0
	db   0,   0, $be, OAM_PAL0
	db   0,  -8, $ae, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d5ec::
	db   0,   4, $78, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  -4, $88, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0, -12, $f0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16, -12, $f2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,  -4, $8a, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,   4, $7a, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2d604::
	db  -8,   0, $54, OAM_PAL0
	db  -8,  -8, $44, OAM_PAL0 | OAM_END

OAM_2d60c::
	db -16,   8, $54, OAM_PAL0
	db -16,   0, $44, OAM_PAL0
	db -16,  -8, $30, OAM_PAL0
	db -16, -16, $20, OAM_PAL0
	db   0, -16, $22, OAM_PAL0
	db   0,  -8, $32, OAM_PAL0
	db   0,   0, $46, OAM_PAL0
	db   0,   8, $56, OAM_PAL0 | OAM_END

OAM_2d62c::
	db   2,   0, $82, OAM_PAL0
	db   2,  -8, $72, OAM_PAL0
	db   2, -16, $62, OAM_PAL0
	db -14, -16, $60, OAM_PAL0
	db -14,  -8, $70, OAM_PAL0
	db -14,   0, $80, OAM_PAL0 | OAM_END

OAM_2d644::
	db   2,   0, $86, OAM_PAL0
	db   2,  -8, $76, OAM_PAL0
	db   2, -16, $66, OAM_PAL0
	db -14,   0, $80, OAM_PAL0
	db -14,  -8, $70, OAM_PAL0
	db -14, -16, $60, OAM_PAL0 | OAM_END

OAM_2d65c::
	db   0,   0, $84, OAM_PAL0
	db   0,  -8, $74, OAM_PAL0
	db   0, -16, $64, OAM_PAL0
	db -16, -16, $60, OAM_PAL0
	db -16,  -8, $70, OAM_PAL0
	db -16,   0, $80, OAM_PAL0 | OAM_END

OAM_2d674::
	db  -8,   0, $f0, OAM_PAL0
	db  -8,  -8, $e0, OAM_PAL0 | OAM_END

OAM_2d67c::
	db -10,   0, $f2, OAM_PAL0
	db -10,  -8, $e2, OAM_PAL0 | OAM_END

OAM_2d684::
	db  -8,   0, $f4, OAM_PAL0
	db  -8,  -8, $e4, OAM_PAL0 | OAM_END

OAM_2d68c::
	db  -8,  -8, $e6, OAM_PAL0
	db  -8,   0, $f6, OAM_PAL0 | OAM_END

OAM_2d694::
	db  -8,  -8, $e8, OAM_PAL0
	db  -8,   0, $f8, OAM_PAL0 | OAM_END

OAM_2d69c::
	db  -8,   0, $fa, OAM_PAL0
	db  -8,  -8, $ea, OAM_PAL0 | OAM_END

OAM_2d6a4::
	db  -8,   0, $d0, OAM_PAL0
	db  -8,  -8, $c0, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d6ac::
	db  -8,  -8, $c6, OAM_PAL0
	db  -8,   0, $d6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d6b4::
	db  -8,  -8, $c4, OAM_PAL0
	db  -8,   0, $d4, OAM_PAL0 | OAM_END

OAM_2d6bc::
	db  -8,  -8, $c2, OAM_PAL0
	db  -8,   0, $d2, OAM_PAL0 | OAM_END

OAM_2d6c4::
	db  -8,  -8, $ee, OAM_PAL0
	db  -8,   0, $d0, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d6cc::
	db  -8,  -8, $c9, OAM_PAL0
	db  -8,   0, $d9, OAM_PAL0 | OAM_END

OAM_2d6d4::
	db -16,   8, $54, OAM_PAL0
	db -16,   0, $44, OAM_PAL0
	db -16,  -8, $30, OAM_PAL0
	db -16, -16, $20, OAM_PAL0
	db   0, -16, $22, OAM_PAL0
	db   0,  -8, $32, OAM_PAL0
	db   0,   0, $78, OAM_PAL0
	db   0,   8, $88, OAM_PAL0 | OAM_END

OAM_2d6f4::
	db -16,   8, $54, OAM_PAL0
	db -16,   0, $44, OAM_PAL0
	db -16,  -8, $30, OAM_PAL0
	db -16, -16, $20, OAM_PAL0
	db   0, -16, $22, OAM_PAL0
	db   0,  -8, $32, OAM_PAL0
	db   0,   0, $7a, OAM_PAL0
	db   0,   8, $8a, OAM_PAL0 | OAM_END

OAM_2d714::
	db -16,   8, $54, OAM_PAL0
	db -16,   0, $44, OAM_PAL0
	db -16,  -8, $30, OAM_PAL0
	db -16, -16, $20, OAM_PAL0
	db   0, -16, $22, OAM_PAL0
	db   0,  -8, $32, OAM_PAL0
	db   0,   0, $7c, OAM_PAL0
	db   0,   8, $8c, OAM_PAL0 | OAM_END

OAM_2d734::
	db  -8,  -8, $cc, OAM_PAL0
	db  -8,   0, $dc, OAM_PAL0 | OAM_END

OAM_2d73c::
	db   0,  15, $d8, OAM_PAL0
	db -16,  -1, $34, OAM_PAL0
	db -16,  -9, $24, OAM_PAL0
	db   0, -17, $26, OAM_PAL0
	db   0,  -9, $1a, OAM_PAL0
	db   0,  -1, $2a, OAM_PAL0
	db   0,   7, $c8, OAM_PAL0 | OAM_END

OAM_2d758::
	db   0,  16, $da, OAM_PAL0
	db -16,   0, $34, OAM_PAL0
	db -16,  -8, $24, OAM_PAL0
	db   0, -16, $26, OAM_PAL0
	db   0,  -8, $1a, OAM_PAL0
	db   0,   0, $2a, OAM_PAL0
	db   0,   8, $ca, OAM_PAL0 | OAM_END

OAM_2d774::
	db  -8,   0, $de, OAM_PAL0
	db  -8,  -8, $e6, OAM_PAL0 | OAM_END

OAM_2d77c::
	db  -8,   0, $ce, OAM_PAL0
	db  -8,  -8, $e6, OAM_PAL0 | OAM_END

OAM_2d784::
	db -24,   0, $08, OAM_PAL0
	db   0,   8, $6a, OAM_PAL0
	db   0,   0, $5a, OAM_PAL0
	db   0,  -8, $4a, OAM_PAL0
	db   0, -16, $3a, OAM_PAL0
	db -16,   8, $68, OAM_PAL0
	db -16,   0, $58, OAM_PAL0
	db -16,  -8, $48, OAM_PAL0
	db -16, -16, $38, OAM_PAL0 | OAM_END

OAM_2d7a8::
	db -24, -12, $08, OAM_PAL0
	db   0,   8, $6a, OAM_PAL0
	db   0,   0, $5a, OAM_PAL0
	db   0,  -8, $4a, OAM_PAL0
	db   0, -16, $3a, OAM_PAL0
	db -16,   8, $68, OAM_PAL0
	db -16,   0, $58, OAM_PAL0
	db -16,  -8, $48, OAM_PAL0
	db -16, -16, $38, OAM_PAL0 | OAM_END

OAM_2d7cc::
	db -25, -15, $08, OAM_PAL0
	db   0,   8, $6a, OAM_PAL0
	db   0,   0, $5a, OAM_PAL0
	db   0,  -8, $4a, OAM_PAL0
	db   0, -16, $3a, OAM_PAL0
	db -16,   8, $68, OAM_PAL0
	db -16,   0, $58, OAM_PAL0
	db -16,  -8, $48, OAM_PAL0
	db -16, -16, $38, OAM_PAL0 | OAM_END

OAM_2d7f0::
	db -24,  -5, $08, OAM_PAL0
	db   0,   8, $6e, OAM_PAL0
	db   0,   0, $5e, OAM_PAL0
	db   0,  -8, $4e, OAM_PAL0
	db   0, -16, $3e, OAM_PAL0
	db -16,   8, $6c, OAM_PAL0
	db -16,   0, $5c, OAM_PAL0
	db -16,  -8, $4c, OAM_PAL0
	db -16, -16, $3c, OAM_PAL0 | OAM_END

OAM_2d814::
	db -24,   2, $08, OAM_PAL0
	db   0,   8, $6e, OAM_PAL0
	db   0,   0, $5e, OAM_PAL0
	db   0,  -8, $4e, OAM_PAL0
	db   0, -16, $3e, OAM_PAL0
	db -16,   8, $6c, OAM_PAL0
	db -16,   0, $5c, OAM_PAL0
	db -16,  -8, $4c, OAM_PAL0
	db -16, -16, $3c, OAM_PAL0 | OAM_END

OAM_2d838::
	db -24,   6, $08, OAM_PAL0
	db   0,   8, $6e, OAM_PAL0
	db   0,   0, $5e, OAM_PAL0
	db   0,  -8, $4e, OAM_PAL0
	db   0, -16, $3e, OAM_PAL0
	db -16,   8, $6c, OAM_PAL0
	db -16,   0, $5c, OAM_PAL0
	db -16,  -8, $4c, OAM_PAL0
	db -16, -16, $3c, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d85c::
	db  -8,   0, $8e, OAM_PAL0
	db  -8,  -8, $7e, OAM_PAL0 | OAM_END

OAM_2d864::
	db  -8,   0, $8e, OAM_PAL0
	db  -8,  -8, $7e, OAM_PAL0 | OAM_END

; unreferenced
OAM_2d86c::
	db  -7, -10, $8c, OAM_PAL0
	db  -7,   5, $8c, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2d874::
	db  16,   5, $8c, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  16, -11, $8c, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2d87c::
	db  -8,   0, $92, OAM_PAL0
	db  -8,  -8, $90, OAM_PAL0 | OAM_END

OAM_2d884::
	db  -8,   0, $96, OAM_PAL0
	db  -8,  -8, $94, OAM_PAL0 | OAM_END

OAM_2d88c::
	db  -8,   0, $9a, OAM_PAL0
	db  -8,  -8, $98, OAM_PAL0 | OAM_END

OAM_2d894::
	db  -8,  -8, $98, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $9c, OAM_PAL0 | OAM_END

OAM_2d89c::
	db  -8,   0, $82, OAM_PAL0
	db  -8,  -8, $80, OAM_PAL0 | OAM_END

OAM_2d8a4::
	db  -8,   0, $86, OAM_PAL0
	db  -8,  -8, $84, OAM_PAL0 | OAM_END

OAM_2d8ac::
	db  -8,  -8, $8c, OAM_PAL0 | OAM_END

OAM_2d8b0::
	db  -8,   0, $8a, OAM_PAL0
	db  -8,  -8, $88, OAM_PAL0 | OAM_END

OAM_2d8b8::
	db $80 ; end

OAM_2d8b9::
	db  -8,  -8, $02, OAM_PAL0
	db  -8,   0, $12, OAM_PAL0 | OAM_END

OAM_2d8c1::
	db  -8,  -8, $04, OAM_PAL0
	db  -8,   0, $14, OAM_PAL0 | OAM_END

OAM_2d8c9::
	db  -8,  -8, $06, OAM_PAL0
	db  -8,   0, $16, OAM_PAL0 | OAM_END

OAM_2d8d1::
	db  -8,  -8, $08, OAM_PAL0
	db  -8,   0, $18, OAM_PAL0 | OAM_END

OAM_2d8d9::
	db  -8,  -8, $00, OAM_PAL0
	db  -8,   0, $10, OAM_PAL0 | OAM_END

OAM_2d8e1::
	db  -8,  -8, $02, OAM_PAL0
	db  -8,   0, $50, OAM_PAL0 | OAM_END

OAM_2d8e9::
	db  -8,   0, $02, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $12, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d8f1::
	db  -8,   0, $04, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $14, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d8f9::
	db  -8,   0, $06, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $16, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d901::
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $18, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d909::
	db  -8,   0, $00, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $10, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d911::
	db  -8,   0, $02, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $50, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d919::
	db   1, -12, $22, OAM_PAL0
	db   1,  -4, $30, OAM_PAL0
	db   1,   4, $32, OAM_PAL0
	db -15, -12, $0e, OAM_PAL0
	db -15,  -4, $20, OAM_PAL0
	db -15,   4, $0c, OAM_PAL0 | OAM_END

OAM_2d931::
	db   0,   4, $32, OAM_PAL0
	db   0, -12, $22, OAM_PAL0
	db   0,  -4, $30, OAM_PAL0
	db -16,   4, $1c, OAM_PAL0
	db -16,  -4, $20, OAM_PAL0
	db -16, -12, $1e, OAM_PAL0 | OAM_END

OAM_2d949::
	db   1,   4, $22, OAM_PAL0 | OAM_XFLIP
	db   1,  -4, $30, OAM_PAL0 | OAM_XFLIP
	db   1, -12, $32, OAM_PAL0 | OAM_XFLIP
	db -15,   4, $0e, OAM_PAL0 | OAM_XFLIP
	db -15,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -15, -12, $0c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d961::
	db   0,   4, $22, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $30, OAM_PAL0 | OAM_XFLIP
	db   0, -12, $32, OAM_PAL0 | OAM_XFLIP
	db -16,   4, $1e, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $1c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2d979::
	db   0, -12, $28, OAM_PAL0
	db   0,  -4, $30, OAM_PAL0 | OAM_XFLIP
	db   0,   4, $28, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $1e, OAM_PAL0
	db -16,  -4, $20, OAM_PAL0
	db -16,   4, $1c, OAM_PAL0 | OAM_END

OAM_2d991::
	db   0, -12, $28, OAM_PAL0
	db   0,  -4, $30, OAM_PAL0 | OAM_XFLIP
	db   0,   4, $28, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $0e, OAM_PAL0
	db -16,  -4, $20, OAM_PAL0
	db -16,   4, $0c, OAM_PAL0 | OAM_END

OAM_2d9a9::
	db   0, -13, $28, OAM_PAL0
	db   0,  -5, $30, OAM_PAL0 | OAM_XFLIP
	db   0,   3, $38, OAM_PAL0 | OAM_XFLIP
	db -16, -13, $0e, OAM_PAL0
	db -16,  -5, $20, OAM_PAL0
	db -16,   3, $1c, OAM_PAL0 | OAM_END

OAM_2d9c1::
	db   1, -11, $38, OAM_PAL0
	db   1,  -3, $30, OAM_PAL0 | OAM_XFLIP
	db   1,   5, $28, OAM_PAL0 | OAM_XFLIP
	db -15, -11, $1e, OAM_PAL0
	db -15,  -3, $20, OAM_PAL0
	db -15,   5, $0c, OAM_PAL0 | OAM_END

OAM_2d9d9::
	db   0, -12, $38, OAM_PAL0
	db   0,  -4, $30, OAM_PAL0 | OAM_XFLIP
	db   0,   4, $38, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $0e, OAM_PAL0
	db -16,  -4, $20, OAM_PAL0
	db -16,   4, $0c, OAM_PAL0 | OAM_END

OAM_2d9f1::
	db   0,   4, $28, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $30, OAM_PAL0
	db   0, -12, $28, OAM_PAL0
	db -16,   4, $1e, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $1c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2da09::
	db   0,   4, $28, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $30, OAM_PAL0
	db   0, -12, $28, OAM_PAL0
	db -16,   4, $0e, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $0c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2da21::
	db   0,   5, $28, OAM_PAL0 | OAM_XFLIP
	db   0,  -3, $30, OAM_PAL0
	db   0, -11, $38, OAM_PAL0
	db -16,   5, $0e, OAM_PAL0 | OAM_XFLIP
	db -16,  -3, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -11, $1c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2da39::
	db   1,   3, $38, OAM_PAL0 | OAM_XFLIP
	db   1,  -5, $30, OAM_PAL0
	db   1, -13, $28, OAM_PAL0
	db -15,   3, $1e, OAM_PAL0 | OAM_XFLIP
	db -15,  -5, $20, OAM_PAL0 | OAM_XFLIP
	db -15, -13, $0c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2da51::
	db   0,   4, $38, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $30, OAM_PAL0
	db   0, -12, $38, OAM_PAL0
	db -16,   4, $0e, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $0c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2da69::
	db  -8,  -8, $08, OAM_PAL0
	db  -8,   0, $1a, OAM_PAL0 | OAM_END

OAM_2da71::
	db   0,  -8, $26, OAM_PAL0
	db   0,   0, $36, OAM_PAL0
	db -16,  -8, $24, OAM_PAL0
	db -16,   0, $34, OAM_PAL0 | OAM_END

OAM_2da81::
	db   1,   4, $32, OAM_PAL0
	db   1, -12, $22, OAM_PAL0
	db   1,  -4, $30, OAM_PAL0
	db -15,   4, $40, OAM_PAL0
	db -15,  -4, $20, OAM_PAL0
	db -15, -12, $0e, OAM_PAL0 | OAM_END

OAM_2da99::
	db   0,   4, $32, OAM_PAL0
	db   0, -12, $22, OAM_PAL0
	db   0,  -4, $30, OAM_PAL0
	db -16,   4, $40, OAM_PAL0
	db -16,  -4, $20, OAM_PAL0
	db -16, -12, $1e, OAM_PAL0 | OAM_END

OAM_2dab1::
	db   1, -12, $28, OAM_PAL0
	db   1,  -4, $30, OAM_PAL0 | OAM_XFLIP
	db   1,   4, $28, OAM_PAL0 | OAM_XFLIP
	db -15, -12, $0e, OAM_PAL0
	db -15,  -4, $20, OAM_PAL0
	db -15,   4, $40, OAM_PAL0 | OAM_END

OAM_2dac9::
	db   0, -12, $28, OAM_PAL0
	db   0,  -4, $30, OAM_PAL0 | OAM_XFLIP
	db   0,   4, $28, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $0e, OAM_PAL0
	db -16,  -4, $20, OAM_PAL0
	db -16,   4, $3a, OAM_PAL0 | OAM_END

OAM_2dae1::
	db  -8,  -8, $08, OAM_PAL0
	db  -8,   0, $0a, OAM_PAL0 | OAM_END

OAM_2dae9::
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $1a, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2daf1::
	db   0,   0, $26, OAM_PAL0 | OAM_XFLIP
	db   0,  -8, $36, OAM_PAL0 | OAM_XFLIP
	db -16,   0, $24, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $34, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2db01::
	db   1,   4, $22, OAM_PAL0 | OAM_XFLIP
	db   1,  -4, $30, OAM_PAL0 | OAM_XFLIP
	db   1, -12, $32, OAM_PAL0 | OAM_XFLIP
	db -15,   4, $0e, OAM_PAL0 | OAM_XFLIP
	db -15,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -15, -12, $40, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2db19::
	db   0,   4, $22, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $30, OAM_PAL0 | OAM_XFLIP
	db   0, -12, $32, OAM_PAL0 | OAM_XFLIP
	db -16,   4, $1e, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $40, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2db31::
	db   0,   4, $28, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $30, OAM_PAL0
	db   0, -12, $28, OAM_PAL0
	db -16,   4, $0e, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $40, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2db49::
	db   0,   4, $28, OAM_PAL0 | OAM_XFLIP
	db   0,  -4, $30, OAM_PAL0
	db   0, -12, $28, OAM_PAL0
	db -16,   4, $0e, OAM_PAL0 | OAM_XFLIP
	db -16,  -4, $20, OAM_PAL0 | OAM_XFLIP
	db -16, -12, $3a, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2db61::
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $0a, OAM_PAL0 | OAM_XFLIP | OAM_END
OAM_2db69::
	db  -8,  -8, $42, OAM_PAL0
	db  -8,   0, $52, OAM_PAL0 | OAM_END

OAM_2db71::
	db  -8,   0, $42, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $52, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2db79::
	db  -8,  -8, $08, OAM_PAL0
	db  -8,   0, $50, OAM_PAL0 | OAM_END

OAM_2db81::
	db  -8,   0, $14, OAM_PAL0
	db  -8,  -8, $08, OAM_PAL0 | OAM_END

OAM_2db89::
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $44, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2db91::
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $50, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2db99::
	db  -8,  -8, $14, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $08, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dba1::
	db  -8,  -8, $08, OAM_PAL0
	db  -8,   0, $44, OAM_PAL0 | OAM_END

OAM_2dba9::
	db  -8,  -4, $54, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dbad::
	db  -8,   0, $46, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $56, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dbb5::
	db -16,   0, $46, OAM_PAL0 | OAM_XFLIP
	db -16,  -8, $56, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dbbd::
	db  -8,   0, $54, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dbc1::
	db  -8,  -8, $54, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dbc5::
	db  -8,  -4, $54, OAM_PAL0 | OAM_END

OAM_2dbc9::
	db  -8,  -8, $46, OAM_PAL0
	db  -8,   0, $56, OAM_PAL0 | OAM_END

OAM_2dbd1::
	db -16,  -8, $46, OAM_PAL0
	db -16,   0, $56, OAM_PAL0 | OAM_END

OAM_2dbd9::
	db  -8,   0, $54, OAM_PAL0 | OAM_END

OAM_2dbdd::
	db  -8,  -8, $54, OAM_PAL0 | OAM_END

OAM_2dbe1::
	db  -8,  -8, $48, OAM_PAL0
	db  -8,   0, $58, OAM_PAL0 | OAM_END

OAM_2dbe9::
	db  -8,  -8, $48, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $58, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2dbf1::
	db  -8,   0, $48, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $58, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dbf9::
	db  -8,  -8, $58, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $48, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2dc01::
	db   0,   4, $2a, OAM_PAL0
	db -16,   4, $2a, OAM_PAL0 | OAM_YFLIP
	db   0,  -4, $3e, OAM_PAL0
	db   0, -12, $2e, OAM_PAL0
	db -16,  -4, $3c, OAM_PAL0
	db -16, -12, $2c, OAM_PAL0 | OAM_END

OAM_2dc19::
	db  -8,  -4, $5a, OAM_PAL0 | OAM_END

OAM_2dc1d::
	db -12,  -4, $82, OAM_PAL0 | OAM_END

OAM_2dc21::
	db -12,  -4, $c6, OAM_PAL0 | OAM_END

OAM_2dc25::
	db  -8,   0, $72, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $72, OAM_PAL0 | OAM_END

OAM_2dc2d::
	db  -8,   0, $74, OAM_PAL0
	db  -8,  -8, $64, OAM_PAL0 | OAM_END

; unreferenced
OAM_2dc35::
	db  -8,   0, $74, OAM_PAL1
	db  -8,  -8, $64, OAM_PAL1 | OAM_END

OAM_2dc3d::
	db  -8,   0, $72, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $72, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2dc45::
	db  -8,   0, $64, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $74, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2dc4d::
	db  -8,   0, $76, OAM_PAL0
	db  -8,  -8, $66, OAM_PAL0 | OAM_END

OAM_2dc55::
	db -10,   0, $76, OAM_PAL1
	db -10,  -8, $66, OAM_PAL1 | OAM_END

OAM_2dc5d::
	db  -8,   0, $78, OAM_PAL0
	db  -8,  -8, $68, OAM_PAL0 | OAM_END

OAM_2dc65::
	db  -8,   0, $7a, OAM_PAL0
	db  -8,  -8, $6a, OAM_PAL0 | OAM_END

OAM_2dc6d::
	db  -8,   0, $7c, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $7c, OAM_PAL0 | OAM_END

OAM_2dc75::
	db  -8,   0, $7e, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $7e, OAM_PAL0 | OAM_END

OAM_2dc7d::
	db  -8,  -4, $6e, OAM_PAL0 | OAM_END

OAM_2dc81::
	db  -8,   0, $6c, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $6c, OAM_PAL0 | OAM_END

OAM_2dc89::
	db  -8,   0, $70, OAM_PAL0
	db  -8,  -8, $60, OAM_PAL0 | OAM_END

OAM_2dc91::
	db -13,  -3, $82, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -6,   0, $72, OAM_PAL0 | OAM_XFLIP
	db  -6,  -8, $72, OAM_PAL0 | OAM_END

OAM_2dc9d::
	db -10,   2, $82, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -6, -10, $64, OAM_PAL0
	db  -6,  -2, $74, OAM_PAL0 | OAM_END

OAM_2dca9::
	db  -6,   4, $82, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -4, $72, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8, -12, $72, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2dcb5::
	db  -9,   3, $82, OAM_PAL0 | OAM_XFLIP
	db -11, -10, $74, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -11,  -2, $64, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2dcc1::
	db  -6,  -3, $82, OAM_PAL0 | OAM_XFLIP
	db -14,   0, $72, OAM_PAL0 | OAM_XFLIP
	db -14,  -8, $72, OAM_PAL0 | OAM_END

OAM_2dccd::
	db  -8,  -8, $82, OAM_PAL0
	db -11,   5, $74, OAM_PAL0
	db -11,  -3, $64, OAM_PAL0 | OAM_END

OAM_2dcd9::
	db  -6, -11, $82, OAM_PAL0 | OAM_YFLIP
	db  -8,  -3, $72, OAM_PAL0 | OAM_YFLIP
	db  -8,   5, $72, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2dce5::
	db -10,  -9, $82, OAM_PAL0 | OAM_YFLIP
	db  -5,   4, $64, OAM_PAL0 | OAM_XFLIP
	db  -5,  -4, $74, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dcf1::
	db  -8,  -8, $4c, OAM_PAL0
	db  -8,   0, $5c, OAM_PAL0 | OAM_END

OAM_2dcf9::
	db  -8,  -8, $5c, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $4c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dd01::
	db  -8,  -8, $4a, OAM_PAL1
	db  -8,   0, $5c, OAM_PAL1 | OAM_END

OAM_2dd09::
	db  -8,  -8, $4a, OAM_PAL1 | OAM_YFLIP
	db  -8,   0, $5c, OAM_PAL1 | OAM_YFLIP | OAM_END

OAM_2dd11::
	db  -8,   0, $4a, OAM_PAL1 | OAM_XFLIP
	db  -8,  -8, $5c, OAM_PAL1 | OAM_XFLIP | OAM_END

OAM_2dd19::
	db  -8,   0, $4a, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $5c, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2dd21::
	db  -8,   0, $62, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $62, OAM_PAL0 | OAM_END

OAM_2dd29::
	db  -8,   0, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $5e, OAM_PAL0 | OAM_END

OAM_2dd31::
	db  -8,   0, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $4e, OAM_PAL0 | OAM_END

OAM_2dd39::
	db  -8,   6, $62, OAM_PAL0 | OAM_XFLIP
	db  -8,  -2, $62, OAM_PAL0
	db -24,   3, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24,  -5, $4e, OAM_PAL0
	db   8,  -3, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8, -11, $5e, OAM_PAL0 | OAM_END

OAM_2dd51::
	db  -4,   4, $62, OAM_PAL0 | OAM_XFLIP
	db  -4,  -4, $62, OAM_PAL0
	db -16,  14, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,   6, $5e, OAM_PAL0
	db   0, -14, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0, -22, $4e, OAM_PAL0 | OAM_END

OAM_2dd69::
	db  -2,   0, $62, OAM_PAL0 | OAM_XFLIP
	db  -2,  -8, $62, OAM_PAL0
	db  -5,  16, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -5,   8, $4e, OAM_PAL0
	db -11, -16, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -11, -24, $5e, OAM_PAL0 | OAM_END

OAM_2dd81::
	db  -4,  -4, $62, OAM_PAL0 | OAM_XFLIP
	db  -4, -12, $62, OAM_PAL0
	db -22, -17, $4e, OAM_PAL0 | OAM_YFLIP
	db -22,  -9, $4e, OAM_PAL0 | OAM_XFLIP
	db   6,   1, $5e, OAM_PAL0 | OAM_YFLIP
	db   6,   9, $5e, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dd99::
	db  -8,  -6, $62, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8, -14, $62, OAM_PAL0
	db -22,   9, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -22,   1, $5e, OAM_PAL0
	db   6,  -9, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   6, -17, $4e, OAM_PAL0 | OAM_END

OAM_2ddb1::
	db -12,  -4, $62, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -12, -12, $62, OAM_PAL0
	db -11,  16, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -11,   8, $4e, OAM_PAL0
	db  -5, -16, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -5, -24, $5e, OAM_PAL0 | OAM_END

OAM_2ddc9::
	db -14,   0, $62, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -14,  -8, $62, OAM_PAL0
	db -16, -22, $4e, OAM_PAL0 | OAM_YFLIP
	db -16, -14, $4e, OAM_PAL0 | OAM_XFLIP
	db   0,   6, $5e, OAM_PAL0
	db   0,  14, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2dde1::
	db -12,   4, $62, OAM_PAL0 | OAM_XFLIP
	db -12,  -4, $62, OAM_PAL0
	db -24, -11, $5e, OAM_PAL0 | OAM_YFLIP
	db -24,  -3, $5e, OAM_PAL0 | OAM_XFLIP
	db   8,  -5, $4e, OAM_PAL0 | OAM_YFLIP
	db   8,   3, $4e, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2ddf9::
	db  -8,   0, $90, OAM_PAL1
	db  -8,  -8, $80, OAM_PAL1 | OAM_END

OAM_2de01::
	db  -8,  -4, $84, OAM_PAL1 | OAM_END

OAM_2de05::
	db  -8,  -4, $84, OAM_PAL1 | OAM_YFLIP | OAM_END

OAM_2de09::
	db  -8,  -4, $84, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2de0d::
	db  -8,  -4, $84, OAM_PAL1 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2de11::
	db   0,   0, $86, OAM_PAL0
	db   0,  -8, $86, OAM_PAL0 | OAM_END

; unreferenced
OAM_2de19::
	db   0,   8, $86, OAM_PAL0
	db   0,   0, $86, OAM_PAL0
	db   0,  -8, $86, OAM_PAL0
	db   0, -16, $86, OAM_PAL0 | OAM_END

OAM_2de29::
	db  -8,  -4, $88, OAM_PAL0 | OAM_END

OAM_2de2d::
	db -10,  -5, $88, OAM_PAL0 | OAM_END

OAM_2de31::
	db -10,  -3, $88, OAM_PAL0 | OAM_END

OAM_2de35::
	db  -8,  -1, $88, OAM_PAL0 | OAM_END

OAM_2de39::
	db  -6,  -3, $88, OAM_PAL0 | OAM_END

OAM_2de3d::
	db  -6,  -5, $88, OAM_PAL0 | OAM_END

OAM_2de41::
	db  -8,  -6, $88, OAM_PAL0 | OAM_END

OAM_2de45::
	db  -8,   0, $8a, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $8a, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2de4d::
	db  -8,  -8, $8a, OAM_PAL0
	db  -8,   0, $8a, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2de55::
	db  -8,   0, $98, OAM_PAL0
	db  -8,  -8, $8c, OAM_PAL0 | OAM_END

OAM_2de5d::
	db  -8,   0, $9a, OAM_PAL0
	db  -8,  -8, $8e, OAM_PAL0 | OAM_END

OAM_2de65::
	db  -8,  -8, $98, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $8c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2de6d::
	db  -8,  -8, $9a, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $8e, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2de75::
	db  -8,   0, $98, OAM_PAL0
	db  -8,  -8, $92, OAM_PAL0 | OAM_END

OAM_2de7d::
	db  -8,   0, $9a, OAM_PAL0
	db  -8,  -8, $94, OAM_PAL0 | OAM_END

OAM_2de85::
	db  -8,  -8, $96, OAM_PAL0
	db  -8,   0, $98, OAM_PAL0 | OAM_END

OAM_2de8d::
	db  -8,   1, $98, OAM_PAL1
	db  -8,  -7, $92, OAM_PAL1 | OAM_END

OAM_2de95::
	db  -8,   1, $98, OAM_PAL1
	db  -8,  -7, $96, OAM_PAL1 | OAM_END

OAM_2de9d::
	db  -8,  -8, $98, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $92, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dea5::
	db  -8,  -8, $9a, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $94, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dead::
	db  -8,   0, $96, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $98, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2deb5::
	db  -8,  -9, $98, OAM_PAL1 | OAM_XFLIP
	db  -8,  -1, $92, OAM_PAL1 | OAM_XFLIP | OAM_END

OAM_2debd::
	db  -8,  -9, $98, OAM_PAL1 | OAM_XFLIP
	db  -8,  -1, $96, OAM_PAL1 | OAM_XFLIP | OAM_END

OAM_2dec5::
	db  -8,   0, $9e, OAM_PAL0
	db  -8,  -8, $9c, OAM_PAL0 | OAM_END

OAM_2decd::
	db  -8,   0, $a2, OAM_PAL0
	db  -8,  -8, $a0, OAM_PAL0 | OAM_END

OAM_2ded5::
	db  -8,  -8, $9e, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $9c, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dedd::
	db  -8,  -8, $a2, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $a0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dee5::
	db  -8,   0, $ac, OAM_PAL0
	db  -8,  -8, $aa, OAM_PAL0 | OAM_END

OAM_2deed::
	db  -8,   0, $a8, OAM_PAL0
	db  -8,  -8, $a6, OAM_PAL0 | OAM_END

OAM_2def5::
	db  -8,   0, $a4, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $a4, OAM_PAL0 | OAM_END

OAM_2defd::
	db  -8,  -8, $a8, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $a6, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2df05::
	db  -8,  -8, $ac, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $aa, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2df0d::
	db  -8,   0, $e6, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e6, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df15::
	db  -8,   0, $e8, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e8, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df1d::
	db  -8,   0, $e4, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e4, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df25::
	db  -8,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $f2, OAM_PAL0 | OAM_END

; unreferenced
    OAM_2df2d::
	db  -8,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $ea, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df35::
	db  -8,   0, $f8, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df3d::
	db  -8,   0, $ec, OAM_PAL0
	db  -8,  -8, $f0, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df45::
	db  -8,  -8, $f8, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2df4d::
	db  -8,  -8, $ec, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $f0, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2df55::
	db  -8,   0, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $fc, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df5d::
	db  -8,   0, $f4, OAM_PAL0
	db  -8,  -8, $f2, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df65::
	db  -8,   0, $f4, OAM_PAL0
	db  -8,  -8, $ea, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df6d::
	db  -8,   0, $ee, OAM_PAL0
	db  -8,  -8, $f0, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df75::
	db  -8,   0, $f6, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0 | OAM_END

; unreferenced
OAM_2df7d::
	db  -8,  -8, $ee, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $f0, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2df85::
	db  -8,  -8, $f6, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2df8d::
	db  -8,   0, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $fe, OAM_PAL0 | OAM_END

OAM_2df95::
	db  -8,  -1, $b4, OAM_PAL1
	db  -8,  -9, $b0, OAM_PAL0 | OAM_END

OAM_2df9d::
	db  -8,   0, $b4, OAM_PAL1
	db  -8,  -8, $ae, OAM_PAL0 | OAM_END

OAM_2dfa5::
	db  -8,   0, $b4, OAM_PAL1
	db  -8,  -8, $b2, OAM_PAL1 | OAM_END

OAM_2dfad::
	db  -8,  -9, $b4, OAM_PAL1 | OAM_XFLIP
	db  -8,  -1, $b0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dfb5::
	db  -8, -10, $b4, OAM_PAL1 | OAM_XFLIP
	db  -8,  -2, $ae, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dfbd::
	db  -8, -10, $b4, OAM_PAL1 | OAM_XFLIP
	db  -8,  -2, $b2, OAM_PAL1 | OAM_XFLIP | OAM_END

OAM_2dfc5::
	db  -8,   0, $ce, OAM_PAL0
	db  -8,  -8, $cc, OAM_PAL0 | OAM_END

OAM_2dfcd::
	db  -8,   0, $d2, OAM_PAL0
	db  -8,  -8, $d0, OAM_PAL0 | OAM_END

OAM_2dfd5::
	db  -8,   1, $d2, OAM_PAL1
	db  -8,  -7, $d0, OAM_PAL1 | OAM_END

OAM_2dfdd::
	db  -8,  -8, $ce, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $cc, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dfe5::
	db  -8,  -8, $d2, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $d0, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2dfed::
	db  -8,  -9, $d2, OAM_PAL1 | OAM_XFLIP
	db  -8,  -1, $d0, OAM_PAL1 | OAM_XFLIP | OAM_END

OAM_2dff5::
	db  -8,   0, $d6, OAM_PAL0
	db  -8,  -8, $d4, OAM_PAL0 | OAM_END

OAM_2dffd::
	db  -8,   0, $da, OAM_PAL0
	db  -8,  -8, $d8, OAM_PAL0 | OAM_END

OAM_2e005::
	db  -8,   0, $de, OAM_PAL0
	db  -8,  -8, $dc, OAM_PAL0 | OAM_END

OAM_2e00d::
	db  -8,   0, $d8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $d6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2e015::
	db  -8,   0, $dc, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $de, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2e01d::
	db  -8,  -8, $d6, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $d4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e025::
	db  -8,  -8, $da, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $d8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e02d::
	db  -8,  -8, $de, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $dc, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2e035::
	db  -8,   0, $da, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $d8, OAM_PAL0 | OAM_YFLIP | OAM_END

; unreferenced
OAM_2e03d::
	db  -8,   0, $de, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $dc, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2e045::
	db  -8,   0, $ba, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $ba, OAM_PAL0 | OAM_END

OAM_2e04d::
	db  -8,   0, $be, OAM_PAL0
	db  -8,  -8, $bc, OAM_PAL0 | OAM_END

OAM_2e055::
	db  -8,   0, $be, OAM_PAL0
	db  -8,  -8, $be, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e05d::
	db  -8,  -8, $be, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $bc, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e065::
	db  -8,   0, $b8, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $b8, OAM_PAL0 | OAM_END

OAM_2e06d::
	db   7,  -2, $f2, OAM_PAL0 | OAM_YFLIP
	db   7, -10, $f0, OAM_PAL0 | OAM_YFLIP
	db  -8,   8, $e2, OAM_PAL0 | OAM_YFLIP
	db -24,   8, $e2, OAM_PAL0
	db  -8,   0, $e8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24,   0, $e8, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $e8, OAM_PAL0 | OAM_YFLIP
	db -24,  -8, $e8, OAM_PAL0
	db  -8, -16, $e0, OAM_PAL0 | OAM_YFLIP
	db -24, -16, $e0, OAM_PAL0 | OAM_END

OAM_2e095::
	db  -2,   8, $e4, OAM_PAL0 | OAM_YFLIP
	db -18,   8, $e6, OAM_PAL0
	db  -2,   0, $ee, OAM_PAL0 | OAM_YFLIP
	db -18,   0, $ea, OAM_PAL0 | OAM_XFLIP
	db  -2,  -8, $ec, OAM_PAL0 | OAM_YFLIP
	db -18,  -8, $ea, OAM_PAL0
	db  -2, -16, $e0, OAM_PAL0 | OAM_YFLIP
	db -18, -16, $e0, OAM_PAL0 | OAM_END

OAM_2e0b5::
	db -14,   8, $e4, OAM_PAL0
	db   2,   8, $e6, OAM_PAL0 | OAM_YFLIP
	db -14,   0, $ee, OAM_PAL0
	db   2,   0, $ea, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -14,  -8, $ec, OAM_PAL0
	db   2,  -8, $ea, OAM_PAL0 | OAM_YFLIP
	db -14, -16, $e0, OAM_PAL0
	db   2, -16, $e0, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2e0d5::
	db -23,  -2, $f2, OAM_PAL0
	db -23, -10, $f0, OAM_PAL0
	db   8,   8, $e2, OAM_PAL0 | OAM_YFLIP
	db  -8,   8, $e2, OAM_PAL0
	db   8,   0, $e8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $e8, OAM_PAL0 | OAM_XFLIP
	db   8,  -8, $e8, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $e8, OAM_PAL0
	db   8, -16, $e0, OAM_PAL0 | OAM_YFLIP
	db  -8, -16, $e0, OAM_PAL0 | OAM_END

OAM_2e0fd::
	db   7,  -7, $5e, OAM_PAL0 | OAM_XFLIP
	db   7, -15, $5e, OAM_PAL0 | OAM_YFLIP
	db   7,  10, $f2, OAM_PAL0 | OAM_YFLIP
	db   7,   2, $f0, OAM_PAL0 | OAM_YFLIP
	db  -8,  13, $e2, OAM_PAL0 | OAM_YFLIP
	db -24,  13, $e2, OAM_PAL0
	db  -8,   5, $e8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24,   5, $e8, OAM_PAL0 | OAM_XFLIP
	db  -8,  -3, $e8, OAM_PAL0 | OAM_YFLIP
	db -24,  -3, $e8, OAM_PAL0
	db  -8, -11, $e0, OAM_PAL0 | OAM_YFLIP
	db -24, -11, $e0, OAM_PAL0 | OAM_END

OAM_2e12d::
	db   7, -17, $4e, OAM_PAL0 | OAM_XFLIP
	db   7, -25, $4e, OAM_PAL0 | OAM_YFLIP
	db   7,   5, $f2, OAM_PAL0 | OAM_YFLIP
	db   7,  -3, $f0, OAM_PAL0 | OAM_YFLIP
	db  -8,  10, $e2, OAM_PAL0 | OAM_YFLIP
	db -24,  10, $e2, OAM_PAL0
	db  -8,   2, $e8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24,   2, $e8, OAM_PAL0 | OAM_XFLIP
	db  -8,  -6, $e8, OAM_PAL0 | OAM_YFLIP
	db -24,  -6, $e8, OAM_PAL0
	db  -8, -14, $e0, OAM_PAL0 | OAM_YFLIP
	db -24, -14, $e0, OAM_PAL0 | OAM_END

OAM_2e15d::
	db   7, -32, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   7, -40, $4e, OAM_PAL0
	db   7,   1, $f2, OAM_PAL0 | OAM_YFLIP
	db   7,  -7, $f0, OAM_PAL0 | OAM_YFLIP
	db  -8,   9, $e2, OAM_PAL0 | OAM_YFLIP
	db -24,   9, $e2, OAM_PAL0
	db  -8,   1, $e8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -24,   1, $e8, OAM_PAL0 | OAM_XFLIP
	db  -8,  -7, $e8, OAM_PAL0 | OAM_YFLIP
	db -24,  -7, $e8, OAM_PAL0
	db  -8, -15, $e0, OAM_PAL0 | OAM_YFLIP
	db -24, -15, $e0, OAM_PAL0 | OAM_END

OAM_2e18d::
	db -23,  -7, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -23, -15, $5e, OAM_PAL0
	db -23,  10, $f2, OAM_PAL0
	db -23,   2, $f0, OAM_PAL0
	db  -8,  13, $e2, OAM_PAL0
	db   8,  13, $e2, OAM_PAL0 | OAM_YFLIP
	db  -8,   5, $e8, OAM_PAL0 | OAM_XFLIP
	db   8,   5, $e8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -3, $e8, OAM_PAL0
	db   8,  -3, $e8, OAM_PAL0 | OAM_YFLIP
	db  -8, -11, $e0, OAM_PAL0
	db   8, -11, $e0, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2e1bd::
	db -23, -17, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -23, -25, $4e, OAM_PAL0
	db -23,   5, $f2, OAM_PAL0
	db -23,  -3, $f0, OAM_PAL0
	db  -8,  10, $e2, OAM_PAL0
	db   8,  10, $e2, OAM_PAL0 | OAM_YFLIP
	db  -8,   2, $e8, OAM_PAL0 | OAM_XFLIP
	db   8,   2, $e8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -6, $e8, OAM_PAL0
	db   8,  -6, $e8, OAM_PAL0 | OAM_YFLIP
	db  -8, -14, $e0, OAM_PAL0
	db   8, -14, $e0, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2e1ed::
	db -23, -32, $4e, OAM_PAL0 | OAM_XFLIP
	db -23, -40, $4e, OAM_PAL0 | OAM_YFLIP
	db -23,   1, $f2, OAM_PAL0
	db -23,  -7, $f0, OAM_PAL0
	db  -8,   9, $e2, OAM_PAL0
	db   8,   9, $e2, OAM_PAL0 | OAM_YFLIP
	db  -8,   1, $e8, OAM_PAL0 | OAM_XFLIP
	db   8,   1, $e8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -7, $e8, OAM_PAL0
	db   8,  -7, $e8, OAM_PAL0 | OAM_YFLIP
	db  -8, -15, $e0, OAM_PAL0
	db   8, -15, $e0, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2e21d::
	db  -8,   0, $ca, OAM_PAL0
	db  -8,  -8, $c8, OAM_PAL0 | OAM_END

OAM_2e225::
	db  -8,   0, $c6, OAM_PAL0
	db  -8,  -8, $c4, OAM_PAL0 | OAM_END

OAM_2e22d::
	db  -8,  -8, $ca, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c8, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e235::
	db  -8,  -8, $c6, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $c4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e23d::
	db  -8,   0, $c0, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $c0, OAM_PAL0 | OAM_END

OAM_2e245::
	db  -8,   0, $c2, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $c2, OAM_PAL0 | OAM_END

OAM_2e24d::
	db  -8,   0, $b6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $b6, OAM_PAL0 | OAM_END

OAM_2e255::
	db  -8,   0, $fe, OAM_PAL1
	db  -8,  -8, $fc, OAM_PAL1 | OAM_END

OAM_2e25d::
	db -22,  -7, $f4, OAM_PAL1
	db  -8,   0, $fe, OAM_PAL1
	db  -8,  -8, $fc, OAM_PAL1 | OAM_END

OAM_2e269::
	db -38,  -7, $f4, OAM_PAL1
	db -22,  -7, $f6, OAM_PAL1
	db  -8,   0, $fe, OAM_PAL1
	db  -8,  -8, $fc, OAM_PAL1 | OAM_END

OAM_2e279::
	db -38,  -7, $f6, OAM_PAL1
	db -22,  -7, $f6, OAM_PAL1
	db  -8,   0, $fe, OAM_PAL1
	db  -8,  -8, $fc, OAM_PAL1 | OAM_END

OAM_2e289::
	db -38,  -6, $f6, OAM_PAL1 | OAM_XFLIP
	db -22,  -6, $f6, OAM_PAL1 | OAM_XFLIP
	db  -8,   0, $fe, OAM_PAL1
	db  -8,  -8, $fc, OAM_PAL1 | OAM_END

OAM_2e299::
	db  24,   0, $f8, OAM_PAL0 | OAM_XFLIP
	db  24,  -8, $f8, OAM_PAL0 | OAM_END

OAM_2e2a1::
	db  28,  -8, $58, OAM_PAL0 | OAM_XFLIP | OAM_PRIO
	db  28,   0, $48, OAM_PAL0 | OAM_XFLIP | OAM_PRIO | OAM_END

OAM_2e2a9::
	db  13,  -8, $58, OAM_PAL0 | OAM_XFLIP
	db  13,   0, $48, OAM_PAL0 | OAM_XFLIP
	db  13,  12, $f4, OAM_PAL1 | OAM_XFLIP
	db  13, -20, $f4, OAM_PAL1
	db  19,   6, $f4, OAM_PAL1 | OAM_XFLIP
	db  19, -14, $f4, OAM_PAL1
	db  29,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db  29,  -8, $fa, OAM_PAL1 | OAM_PRIO | OAM_END

OAM_2e2c9::
	db  -8,  -8, $58, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $48, OAM_PAL0 | OAM_XFLIP
	db  -8,  12, $f4, OAM_PAL1 | OAM_XFLIP
	db  -8, -20, $f4, OAM_PAL1
	db  -2,   6, $f4, OAM_PAL1 | OAM_XFLIP
	db  -2, -14, $f4, OAM_PAL1
	db   8,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP
	db   8,  -8, $fa, OAM_PAL1
	db  24,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db  24,  -8, $fa, OAM_PAL1 | OAM_PRIO | OAM_END

OAM_2e2f1::
	db  24,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db  24,  -8, $fa, OAM_PAL1 | OAM_PRIO
	db   8,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db   8,  -8, $fa, OAM_PAL1 | OAM_PRIO
	db -40,  -8, $58, OAM_PAL0 | OAM_XFLIP | OAM_PRIO
	db -40,   0, $48, OAM_PAL0 | OAM_XFLIP | OAM_PRIO
	db -40,  12, $f4, OAM_PAL1 | OAM_XFLIP | OAM_PRIO
	db -40, -20, $f4, OAM_PAL1 | OAM_PRIO
	db -34,   6, $f4, OAM_PAL1 | OAM_XFLIP | OAM_PRIO
	db -34, -14, $f4, OAM_PAL1 | OAM_PRIO
	db -24,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db -24,  -8, $fa, OAM_PAL1 | OAM_PRIO
	db  -8,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $fa, OAM_PAL1 | OAM_END

OAM_2e329::
	db  24,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db  24,  -8, $fa, OAM_PAL1 | OAM_PRIO
	db   8,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP
	db   8,  -8, $fa, OAM_PAL1
	db  -8,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $fa, OAM_PAL1
	db -24,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db -24,  -8, $fa, OAM_PAL1 | OAM_PRIO
	db -56,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db -56,  -8, $fa, OAM_PAL1 | OAM_PRIO
	db -40,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_YFLIP | OAM_PRIO
	db -40,  -8, $fa, OAM_PAL1 | OAM_PRIO | OAM_END

OAM_2e359::
	db  29,  -8, $fa, OAM_PAL1 | OAM_YFLIP | OAM_PRIO
	db  29,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_PRIO
	db  13,  -8, $fa, OAM_PAL1 | OAM_YFLIP
	db  13,   0, $fa, OAM_PAL1 | OAM_XFLIP
	db  -3,  -8, $fa, OAM_PAL1 | OAM_YFLIP
	db  -3,   0, $fa, OAM_PAL1 | OAM_XFLIP
	db -19,  -8, $fa, OAM_PAL1 | OAM_YFLIP | OAM_PRIO
	db -19,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_PRIO
	db -51,  -8, $fa, OAM_PAL1 | OAM_YFLIP | OAM_PRIO
	db -51,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_PRIO
	db -35,  -8, $fa, OAM_PAL1 | OAM_YFLIP | OAM_PRIO
	db -35,   0, $fa, OAM_PAL1 | OAM_XFLIP | OAM_PRIO | OAM_END

; unreferenced
; seems like placeholder data
; from 0x2e389 to 0x2e429

SECTION "Bank B@6429", ROMX[$6429], BANK[$b]

OAM_2e429::
	db  -8,   8, $fe, OAM_PAL0
	db  -8, -16, $fe, OAM_PAL0
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0
	db   0,  16, $ee, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   0, $f2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,  -8, $f2, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f0, OAM_PAL0 | OAM_YFLIP
	db   0, -24, $ee, OAM_PAL0 | OAM_YFLIP
	db -16,  16, $ee, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f0, OAM_PAL0 | OAM_XFLIP
	db -24,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $f2, OAM_PAL0
	db -24, -16, $f0, OAM_PAL0
	db -16, -24, $ee, OAM_PAL0 | OAM_END

OAM_2e469::
	db  -8,   8, $fe, OAM_PAL0
	db  -8, -16, $fe, OAM_PAL0
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0
	db   0,  16, $f4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   0, $f8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,  -8, $f8, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f6, OAM_PAL0 | OAM_YFLIP
	db   0, -24, $f4, OAM_PAL0 | OAM_YFLIP
	db -16,  16, $f4, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f6, OAM_PAL0 | OAM_XFLIP
	db -24,   0, $f8, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $f8, OAM_PAL0
	db -24, -16, $f6, OAM_PAL0
	db -16, -24, $f4, OAM_PAL0 | OAM_END

OAM_2e4a9::
	db  -8, -16, $fe, OAM_PAL0 | OAM_XFLIP
	db  -8,   8, $fe, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP
	db   0, -24, $ee, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f0, OAM_PAL0 | OAM_YFLIP
	db   8,  -8, $f2, OAM_PAL0 | OAM_YFLIP
	db   8,   0, $f2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  16, $ee, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16, -24, $ee, OAM_PAL0
	db -24, -16, $f0, OAM_PAL0
	db -24,  -8, $f2, OAM_PAL0
	db -24,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f0, OAM_PAL0 | OAM_XFLIP
	db -16,  16, $ee, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e4e9::
	db  -8, -16, $fe, OAM_PAL0 | OAM_XFLIP
	db  -8,   8, $fe, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP
	db   0, -24, $f4, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f6, OAM_PAL0 | OAM_YFLIP
	db   8,  -8, $f8, OAM_PAL0 | OAM_YFLIP
	db   8,   0, $f8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  16, $f4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16, -24, $f4, OAM_PAL0
	db -24, -16, $f6, OAM_PAL0
	db -24,  -8, $f8, OAM_PAL0
	db -24,   0, $f8, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f6, OAM_PAL0 | OAM_XFLIP
	db -16,  16, $f4, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e529::
	db  -8,   8, $fe, OAM_PAL0 | OAM_YFLIP
	db  -8, -16, $fe, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $fc, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $fa, OAM_PAL0 | OAM_YFLIP
	db -16,  16, $ee, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f0, OAM_PAL0 | OAM_XFLIP
	db -24,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $f2, OAM_PAL0
	db -24, -16, $f0, OAM_PAL0
	db -16, -24, $ee, OAM_PAL0
	db   0,  16, $ee, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   0, $f2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,  -8, $f2, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f0, OAM_PAL0 | OAM_YFLIP
	db   0, -24, $ee, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2e569::
	db  -8,   8, $fe, OAM_PAL0 | OAM_YFLIP
	db  -8, -16, $fe, OAM_PAL0 | OAM_YFLIP
	db  -8,   0, $fc, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $fa, OAM_PAL0 | OAM_YFLIP
	db -16,  16, $f4, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f6, OAM_PAL0 | OAM_XFLIP
	db -24,   0, $f8, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $f8, OAM_PAL0
	db -24, -16, $f6, OAM_PAL0
	db -16, -24, $f4, OAM_PAL0
	db   0,  16, $f4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   0, $f8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,  -8, $f8, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f6, OAM_PAL0 | OAM_YFLIP
	db   0, -24, $f4, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2e5a9::
	db  -8, -16, $fe, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   8, $fe, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16, -24, $ee, OAM_PAL0
	db -24, -16, $f0, OAM_PAL0
	db -24,  -8, $f2, OAM_PAL0
	db -24,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f0, OAM_PAL0 | OAM_XFLIP
	db -16,  16, $ee, OAM_PAL0 | OAM_XFLIP
	db   0, -24, $ee, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f0, OAM_PAL0 | OAM_YFLIP
	db   8,  -8, $f2, OAM_PAL0 | OAM_YFLIP
	db   8,   0, $f2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  16, $ee, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2e5e9::
	db  -8, -16, $fe, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   8, $fe, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16, -24, $f4, OAM_PAL0
	db -24, -16, $f6, OAM_PAL0
	db -24,  -8, $f8, OAM_PAL0
	db -24,   0, $f8, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f6, OAM_PAL0 | OAM_XFLIP
	db -16,  16, $f4, OAM_PAL0 | OAM_XFLIP
	db   0, -24, $f4, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f6, OAM_PAL0 | OAM_YFLIP
	db   8,  -8, $f8, OAM_PAL0 | OAM_YFLIP
	db   8,   0, $f8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  16, $f4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2e629::
	db  -8,   8, $fe, OAM_PAL0
	db  -8,   0, $fe, OAM_PAL0
	db  -8,  -8, $fc, OAM_PAL0
	db  -8, -16, $fa, OAM_PAL0
	db -16, -24, $ee, OAM_PAL0
	db -24, -16, $f0, OAM_PAL0
	db -24,  -8, $f2, OAM_PAL0
	db -24,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f0, OAM_PAL0 | OAM_XFLIP
	db -16,  16, $ee, OAM_PAL0 | OAM_XFLIP
	db   0, -24, $ee, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f0, OAM_PAL0 | OAM_YFLIP
	db   8,  -8, $f2, OAM_PAL0 | OAM_YFLIP
	db   8,   0, $f2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  16, $ee, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2e669::
	db  -8,   8, $fe, OAM_PAL0
	db  -8,   0, $fe, OAM_PAL0
	db  -8,  -8, $fc, OAM_PAL0
	db  -8, -16, $fa, OAM_PAL0
	db -16, -24, $f4, OAM_PAL0
	db -24, -16, $f6, OAM_PAL0
	db -24,  -8, $f8, OAM_PAL0
	db -24,   0, $f8, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f6, OAM_PAL0 | OAM_XFLIP
	db -16,  16, $f4, OAM_PAL0 | OAM_XFLIP
	db   0, -24, $f4, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f6, OAM_PAL0 | OAM_YFLIP
	db   8,  -8, $f8, OAM_PAL0 | OAM_YFLIP
	db   8,   0, $f8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,  16, $f4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2e6a9::
	db  -8, -16, $fe, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $fe, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,   8, $fa, OAM_PAL0 | OAM_XFLIP
	db -16,  16, $ee, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f0, OAM_PAL0 | OAM_XFLIP
	db -24,   0, $f2, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $f2, OAM_PAL0
	db -24, -16, $f0, OAM_PAL0
	db -16, -24, $ee, OAM_PAL0
	db   0,  16, $ee, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f0, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   0, $f2, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,  -8, $f2, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f0, OAM_PAL0 | OAM_YFLIP
	db   0, -24, $ee, OAM_PAL0 | OAM_YFLIP | OAM_END

OAM_2e6e9::
	db  -8, -16, $fe, OAM_PAL0 | OAM_XFLIP
	db  -8,  -8, $fe, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,   8, $fa, OAM_PAL0 | OAM_XFLIP
	db -16,  16, $f4, OAM_PAL0 | OAM_XFLIP
	db -24,   8, $f6, OAM_PAL0 | OAM_XFLIP
	db -24,   0, $f8, OAM_PAL0 | OAM_XFLIP
	db -24,  -8, $f8, OAM_PAL0
	db -24, -16, $f6, OAM_PAL0
	db -16, -24, $f4, OAM_PAL0
	db   0,  16, $f4, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   8, $f6, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,   0, $f8, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   8,  -8, $f8, OAM_PAL0 | OAM_YFLIP
	db   8, -16, $f6, OAM_PAL0 | OAM_YFLIP
	db   0, -24, $f4, OAM_PAL0 | OAM_YFLIP | OAM_END

; unreferenced
OAM_2e729::
	db  -8,  -8, $fa, OAM_PAL0
	db  -8,   0, $fc, OAM_PAL0
	db   0, -20, $4e, OAM_PAL0
	db   0, -12, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16,   4, $4e, OAM_PAL0
	db -16,  12, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

; unreferenced
OAM_2e741::
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0
	db  -8,  14, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   6, $5e, OAM_PAL0
	db  -8, -16, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8, -24, $5e, OAM_PAL0 | OAM_END

; unreferenced
OAM_2e759::
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0
	db   0,  12, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   0,   4, $4e, OAM_PAL0
	db -16, -12, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -16, -20, $4e, OAM_PAL0 | OAM_END

; unreferenced
OAM_2e771::
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0
	db   4,   8, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   4,   0, $5e, OAM_PAL0
	db -20,  -8, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -20, -16, $5e, OAM_PAL0 | OAM_END

; unreferenced
    OAM_2e789::
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0
	db   6,   0, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db   6,  -8, $4e, OAM_PAL0
	db -22,   0, $4e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -22,  -8, $4e, OAM_PAL0 | OAM_END

; unreferenced
OAM_2e7a1::
	db  -8,  -8, $fa, OAM_PAL0
	db  -8,   0, $fc, OAM_PAL0
	db   4, -16, $5e, OAM_PAL0
	db   4,  -8, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db -20,   0, $5e, OAM_PAL0
	db -20,   8, $5e, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2e7b9::
	db -21,  -4, $ec, OAM_PAL0
	db   5,  -4, $ec, OAM_PAL0
	db  -8,   9, $ec, OAM_PAL0
	db  -8, -17, $ec, OAM_PAL0
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0 | OAM_END

OAM_2e7d1::
	db   4, -10, $ec, OAM_PAL0
	db -20,   1, $ec, OAM_PAL0
	db  -2,   7, $ec, OAM_PAL0
	db -14, -16, $ec, OAM_PAL0
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0 | OAM_END

OAM_2e7e9::
	db -17,   5, $ec, OAM_PAL0
	db   1, -14, $ec, OAM_PAL0
	db   1,   5, $ec, OAM_PAL0
	db -17, -14, $ec, OAM_PAL0
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0 | OAM_END

OAM_2e801::
	db -12,   8, $ec, OAM_PAL0
	db  -3, -17, $ec, OAM_PAL0
	db   5,   0, $ec, OAM_PAL0
	db -20,  -9, $ec, OAM_PAL0
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0 | OAM_END

; unreferenced
OAM_2e819::
	db -21,  -4, $ec, OAM_PAL0
	db   5,  -4, $ec, OAM_PAL0
	db  -8, -17, $ec, OAM_PAL0
	db  -8,   9, $ec, OAM_PAL0
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2e831::
	db -12, -17, $ec, OAM_PAL0
	db  -3,   9, $ec, OAM_PAL0
	db   5,  -8, $ec, OAM_PAL0
	db -20,   1, $ec, OAM_PAL0
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2e849::
	db -17, -13, $ec, OAM_PAL0
	db   1,   6, $ec, OAM_PAL0
	db   1, -13, $ec, OAM_PAL0
	db -17,   6, $ec, OAM_PAL0
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_END

; unreferenced
OAM_2e861::
	db   4,   2, $ec, OAM_PAL0
	db -20,  -9, $ec, OAM_PAL0
	db  -2, -15, $ec, OAM_PAL0
	db -14,   8, $ec, OAM_PAL0
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e879::
	db  -8,   0, $fc, OAM_PAL0
	db  -8,  -8, $fa, OAM_PAL0 | OAM_END

; unreferenced
OAM_2e881::
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e889::
	db  -8,   0, $fc, OAM_PAL0 | OAM_YFLIP
	db  -8,  -8, $fa, OAM_PAL0 | OAM_YFLIP | OAM_END

; unreferenced
OAM_2e891::
	db  -8,  -8, $fc, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP
	db  -8,   0, $fa, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2e899::
	db  -3,  -3, $86, OAM_PAL0 | OAM_END

OAM_2e89d::
	db  -3,  -5, $86, OAM_PAL0 | OAM_XFLIP | OAM_END

OAM_2e8a1::
	db -13,  -5, $86, OAM_PAL0 | OAM_XFLIP | OAM_YFLIP | OAM_END

OAM_2e8a5::
	db -13,  -3, $86, OAM_PAL0 | OAM_YFLIP | OAM_END
