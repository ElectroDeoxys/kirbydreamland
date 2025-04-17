#ifndef GUARD_OVERLAYBYTES_H
#define GUARD_OVERLAYBYTES_H

typedef unsigned char byte;

struct StrayByte
{
    unsigned offset;
    byte val;
};

#define STRAY_BYTES_UE_LEN 322

struct StrayByte strayBytesUE[STRAY_BYTES_UE_LEN] = {
    {0x3fe2, 0x39},
    {0x3fe6, 0xef},
    {0x3fe7, 0xec},
    {0x3feb, 0xdf},
    {0x3fee, 0xba},
    {0x3fef, 0xfd},
    {0x3ff2, 0x5f},
    {0x3ff3, 0xfc},
    {0x3ff6, 0x7d},
    {0x3ffa, 0xfb},
    {0x3ffb, 0x43},
    {0x3ffe, 0x6d},
    {0x3fff, 0x00},
    {0x6bfd, 0x01},
    {0x6c60, 0x80},
    {0x7fe2, 0xc6},
    {0x7fe3, 0x01},
    {0x7fe6, 0x05},
    {0x7fea, 0xc1},
    {0x7feb, 0x80},
    {0x7fee, 0xc3},
    {0x7fef, 0xf3},
    {0x7ff2, 0x8a},
    {0x7ff3, 0xe8},
    {0x7ff6, 0x08},
    {0x7ff7, 0x98},
    {0x7ffa, 0x11},
    {0x7ffb, 0x10},
    {0x7ffe, 0x62},
    {0xffe2, 0x0f},
    {0xffe3, 0x01},
    {0xffe6, 0x8d},
    {0xffea, 0xc5},
    {0xffeb, 0x13},
    {0xffee, 0x86},
    {0xffef, 0xc4},
    {0xfff2, 0x90},
    {0xfff3, 0xad},
    {0xfff6, 0x23},
    {0xfff7, 0xc1},
    {0xfffa, 0x98},
    {0xfffb, 0xf3},
    {0xfffe, 0x24},
    {0x13891, 0x04},
    {0x138dc, 0x02},
    {0x138df, 0x20},
    {0x13999, 0x20},
    {0x1399f, 0x40},
    {0x13a1c, 0x80},
    {0x13a5f, 0x10},
    {0x13b1c, 0x10},
    {0x13b1f, 0x20},
    {0x13b5c, 0x80},
    {0x13b5f, 0xa4},
    {0x13d41, 0x01},
    {0x13dc3, 0x02},
    {0x13e0a, 0x40},
    {0x13e40, 0x02},
    {0x13e87, 0x08},
    {0x13f83, 0x02},
    {0x13fc3, 0x20},
    {0x13fcb, 0x08},
    {0x13ff4, 0xdf},
    {0x17afe, 0x04},
    {0x17b3f, 0x04},
    {0x17b7c, 0x02},
    {0x17bbd, 0x80},
    {0x17bfe, 0x02},
    {0x17c21, 0x08},
    {0x17d52, 0xfe},
    {0x17f2a, 0x04},
    {0x17f62, 0x01},
    {0x17fa8, 0x04},
    {0x1a782, 0x40},
    {0x1be43, 0x02},
    {0x1bf46, 0x20},
    {0x1bfc2, 0x80},
    {0x1bffb, 0xbf},
    {0x1dca0, 0x80},
    {0x1dea0, 0x80},
    {0x1e427, 0x80},
    {0x1e5da, 0xdf},
    {0x1e9bd, 0x10},
    {0x1eb3c, 0x02},
    {0x1ebb0, 0x80},
    {0x1ec16, 0x7f},
    {0x1ef62, 0x80},
    {0x1ef6f, 0x01},
    {0x1efef, 0x04},
    {0x1f462, 0x80},
    {0x1f7e3, 0x04},
    {0x1fb3f, 0x10},
    {0x1fea9, 0x04},
    {0x1ff20, 0x80},
    {0x1ff22, 0x02},
    {0x1ffaf, 0x08},
    {0x2395e, 0x02},
    {0x239df, 0x08},
    {0x23a9f, 0x01},
    {0x23be5, 0xdf},
    {0x23f43, 0x10},
    {0x23fcf, 0x01},
    {0x23fe2, 0xee},
    {0x23fe3, 0xbf},
    {0x23fe6, 0x7f},
    {0x23fe7, 0xdf},
    {0x23feb, 0xbe},
    {0x23fee, 0xf7},
    {0x23fef, 0xcf},
    {0x23ff2, 0x07},
    {0x23ff3, 0xfb},
    {0x23ff6, 0x2c},
    {0x23ff7, 0xed},
    {0x23ffb, 0xf8},
    {0x23ffe, 0xbb},
    {0x23fff, 0x00},
    {0x27762, 0x02},
    {0x2783c, 0x02},
    {0x27f2f, 0x20},
    {0x2bfe2, 0x66},
    {0x2bfe3, 0xf7},
    {0x2bfe6, 0x5f},
    {0x2bfe7, 0xdb},
    {0x2bfea, 0x7f},
    {0x2bfeb, 0xf7},
    {0x2bfee, 0xad},
    {0x2bfef, 0xde},
    {0x2bff2, 0xeb},
    {0x2bff3, 0x3d},
    {0x2bff6, 0xf3},
    {0x2bff7, 0x27},
    {0x2bffb, 0x7d},
    {0x2bffe, 0x3f},
    {0x2bfff, 0x00},
    {0x2e389, 0x90},
    {0x2e38a, 0x00},
    {0x2e38b, 0xfa},
    {0x2e38c, 0x70},
    {0x2e38d, 0x80},
    {0x2e38e, 0x00},
    {0x2e38f, 0xfa},
    {0x2e390, 0x70},
    {0x2e391, 0x70},
    {0x2e392, 0x00},
    {0x2e393, 0xfa},
    {0x2e394, 0x70},
    {0x2e395, 0x60},
    {0x2e396, 0x00},
    {0x2e397, 0xfa},
    {0x2e398, 0x70},
    {0x2e399, 0x50},
    {0x2e39a, 0x00},
    {0x2e39b, 0xfa},
    {0x2e39c, 0x70},
    {0x2e39d, 0x40},
    {0x2e39e, 0x00},
    {0x2e39f, 0xfa},
    {0x2e3a0, 0x70},
    {0x2e3a1, 0x30},
    {0x2e3a3, 0xfa},
    {0x2e3a4, 0x70},
    {0x2e3a5, 0x20},
    {0x2e3a7, 0xfa},
    {0x2e3a8, 0x70},
    {0x2e3a9, 0x10},
    {0x2e3ab, 0xfa},
    {0x2e3ac, 0x70},
    {0x2e3ad, 0x90},
    {0x2e3ae, 0xf8},
    {0x2e3af, 0xfa},
    {0x2e3b0, 0x10},
    {0x2e3b1, 0x80},
    {0x2e3b2, 0xf8},
    {0x2e3b3, 0xfa},
    {0x2e3b4, 0x10},
    {0x2e3b5, 0x70},
    {0x2e3b6, 0xf8},
    {0x2e3b7, 0xfa},
    {0x2e3b8, 0x10},
    {0x2e3b9, 0x60},
    {0x2e3ba, 0xf8},
    {0x2e3bb, 0xfa},
    {0x2e3bc, 0x10},
    {0x2e3bd, 0x50},
    {0x2e3be, 0xf8},
    {0x2e3bf, 0xfa},
    {0x2e3c0, 0x10},
    {0x2e3c1, 0x40},
    {0x2e3c2, 0xf8},
    {0x2e3c3, 0xfa},
    {0x2e3c4, 0x10},
    {0x2e3c5, 0x30},
    {0x2e3c6, 0xf8},
    {0x2e3c7, 0xfa},
    {0x2e3c8, 0x10},
    {0x2e3c9, 0x20},
    {0x2e3ca, 0xf8},
    {0x2e3cb, 0xfa},
    {0x2e3cc, 0x10},
    {0x2e3cd, 0x10},
    {0x2e3ce, 0xf8},
    {0x2e3cf, 0xfa},
    {0x2e3d0, 0x10},
    {0x2e3d1, 0x00},
    {0x2e3d2, 0x00},
    {0x2e3d3, 0xfa},
    {0x2e3d4, 0x70},
    {0x2e3d5, 0x00},
    {0x2e3d6, 0xf8},
    {0x2e3d7, 0xfa},
    {0x2e3d8, 0x11},
    {0x2e3d9, 0x90},
    {0x2e3da, 0xf8},
    {0x2e3db, 0xfa},
    {0x2e3dc, 0x50},
    {0x2e3dd, 0x80},
    {0x2e3de, 0xf8},
    {0x2e3df, 0xfa},
    {0x2e3e0, 0x50},
    {0x2e3e1, 0x70},
    {0x2e3e2, 0xf8},
    {0x2e3e3, 0xfa},
    {0x2e3e4, 0x50},
    {0x2e3e5, 0x60},
    {0x2e3e6, 0xf8},
    {0x2e3e7, 0xfa},
    {0x2e3e8, 0x50},
    {0x2e3e9, 0x50},
    {0x2e3ea, 0xf8},
    {0x2e3eb, 0xfa},
    {0x2e3ec, 0x50},
    {0x2e3ed, 0x40},
    {0x2e3ee, 0xf8},
    {0x2e3ef, 0xfa},
    {0x2e3f0, 0x50},
    {0x2e3f1, 0x30},
    {0x2e3f2, 0xf8},
    {0x2e3f3, 0xfa},
    {0x2e3f4, 0x50},
    {0x2e3f5, 0x20},
    {0x2e3f6, 0xf8},
    {0x2e3f7, 0xfa},
    {0x2e3f8, 0x50},
    {0x2e3f9, 0x10},
    {0x2e3fa, 0xf8},
    {0x2e3fb, 0xfa},
    {0x2e3fc, 0x50},
    {0x2e3fd, 0x90},
    {0x2e3ff, 0xfa},
    {0x2e400, 0x30},
    {0x2e401, 0x80},
    {0x2e402, 0x00},
    {0x2e403, 0xfa},
    {0x2e404, 0x30},
    {0x2e405, 0x70},
    {0x2e406, 0x00},
    {0x2e407, 0xfa},
    {0x2e408, 0x30},
    {0x2e409, 0x60},
    {0x2e40a, 0x00},
    {0x2e40b, 0xfa},
    {0x2e40c, 0x30},
    {0x2e40d, 0x50},
    {0x2e40e, 0x00},
    {0x2e40f, 0xfa},
    {0x2e410, 0x30},
    {0x2e411, 0x40},
    {0x2e412, 0x00},
    {0x2e413, 0xfa},
    {0x2e414, 0x30},
    {0x2e415, 0x30},
    {0x2e416, 0x00},
    {0x2e417, 0xfa},
    {0x2e418, 0x30},
    {0x2e419, 0x20},
    {0x2e41a, 0x00},
    {0x2e41b, 0xfa},
    {0x2e41c, 0x30},
    {0x2e41d, 0x10},
    {0x2e41e, 0x00},
    {0x2e41f, 0xfa},
    {0x2e420, 0x30},
    {0x2e422, 0xf8},
    {0x2e423, 0xfa},
    {0x2e424, 0x50},
    {0x2e427, 0xfa},
    {0x2e428, 0x31},
    {0x2ffe2, 0x08},
    {0x2ffe3, 0x40},
    {0x2ffe6, 0x50},
    {0x2ffe7, 0xa4},
    {0x2ffea, 0x15},
    {0x2ffeb, 0x49},
    {0x2ffee, 0x05},
    {0x2ffef, 0x36},
    {0x2fff2, 0x50},
    {0x2fff3, 0x8f},
    {0x2fff6, 0x6b},
    {0x2fff7, 0x0c},
    {0x2fffa, 0xf0},
    {0x2fffb, 0x4d},
    {0x2fffe, 0x10},
    {0x37ae0, 0x01},
    {0x37ba0, 0x02},
    {0x37e38, 0x01},
    {0x3f2bf, 0x08},
    {0x3fa7d, 0x02},
    {0x3ffe2, 0x18},
    {0x3ffe3, 0x85},
    {0x3ffe6, 0x21},
    {0x3ffe7, 0x09},
    {0x3ffea, 0x41},
    {0x3ffeb, 0x33},
    {0x3ffee, 0x83},
    {0x3ffef, 0x4c},
    {0x3fff2, 0xd8},
    {0x3fff3, 0x51},
    {0x3fff6, 0x33},
    {0x3fff7, 0x02},
    {0x3fffa, 0x90},
    {0x3fffb, 0x74},
    {0x3fffe, 0x14}
};

#define STRAY_BYTES_JP10_LEN 395

struct StrayByte strayBytesJP10[STRAY_BYTES_JP10_LEN] = {
    {0x3fe2, 0x39},
    {0x3fe6, 0xef},
    {0x3fe7, 0xec},
    {0x3feb, 0x5f},
    {0x3fee, 0xfa},
    {0x3fef, 0xfd},
    {0x3ff2, 0xdf},
    {0x3ff3, 0xfd},
    {0x3ff6, 0x7d},
    {0x3ffa, 0xfb},
    {0x3ffb, 0x43},
    {0x3ffe, 0x6f},
    {0x3fff, 0x00},
    {0x5da0, 0x80},
    {0x6bfd, 0x01},
    {0x7a85, 0xdf},
    {0x7b3c, 0x01},
    {0x7b3f, 0x08},
    {0x7fe2, 0xc6},
    {0x7fe3, 0x01},
    {0x7fe6, 0x05},
    {0x7fea, 0xc1},
    {0x7feb, 0x80},
    {0x7fee, 0xc3},
    {0x7fef, 0xc2},
    {0x7ff2, 0x02},
    {0x7ff3, 0xe8},
    {0x7ff6, 0x08},
    {0x7ff7, 0x98},
    {0x7ffa, 0x11},
    {0x7ffb, 0x10},
    {0x7ffe, 0x62},
    {0xbff1, 0x7f},
    {0xbff9, 0xfb},
    {0xffe2, 0x0f},
    {0xffe3, 0x01},
    {0xffe6, 0x8d},
    {0xffea, 0xc4},
    {0xffeb, 0x13},
    {0xffee, 0x86},
    {0xffef, 0xc4},
    {0xfff2, 0x90},
    {0xfff3, 0x84},
    {0xfff6, 0x23},
    {0xfff7, 0x81},
    {0xfffa, 0x88},
    {0xfffb, 0xf3},
    {0x13777, 0x7f},
    {0x13891, 0x04},
    {0x138dc, 0x02},
    {0x138df, 0x20},
    {0x13999, 0x20},
    {0x1399f, 0x40},
    {0x139de, 0x08},
    {0x13a1c, 0x80},
    {0x13a50, 0x80},
    {0x13a5f, 0x10},
    {0x13a6a, 0xef},
    {0x13b1c, 0x10},
    {0x13b1f, 0x20},
    {0x13b5c, 0x82},
    {0x13b5e, 0x20},
    {0x13b5f, 0xa4},
    {0x13b97, 0x10},
    {0x13bd9, 0x08},
    {0x13bdf, 0x20},
    {0x13be5, 0xdf},
    {0x13bee, 0xcf},
    {0x13d41, 0x01},
    {0x13dc0, 0x80},
    {0x13dc3, 0x02},
    {0x13e0a, 0x40},
    {0x13e0f, 0x20},
    {0x13e40, 0x02},
    {0x13e43, 0x21},
    {0x13e87, 0x08},
    {0x13f0e, 0x04},
    {0x13f42, 0x80},
    {0x13f4a, 0x20},
    {0x13f4e, 0x02},
    {0x13f83, 0x02},
    {0x13fb5, 0xfb},
    {0x13fc0, 0x80},
    {0x13fc3, 0x20},
    {0x13fcb, 0x08},
    {0x13ff4, 0xdf},
    {0x13ff6, 0xfd},
    {0x17aba, 0x02},
    {0x17afe, 0x04},
    {0x17b30, 0x02},
    {0x17b3d, 0x04},
    {0x17b3f, 0x04},
    {0x17b7c, 0x02},
    {0x17bbd, 0x80},
    {0x17bf4, 0x04},
    {0x17bf8, 0x02},
    {0x17bfd, 0x0c},
    {0x17bfe, 0x02},
    {0x17bff, 0x01},
    {0x17c21, 0x08},
    {0x17c61, 0xa0},
    {0x17ceb, 0x04},
    {0x17d52, 0xfe},
    {0x17da0, 0x04},
    {0x17da3, 0x01},
    {0x17daf, 0x10},
    {0x17dd1, 0xfb},
    {0x17e59, 0xfd},
    {0x17e63, 0x04},
    {0x17e6f, 0x80},
    {0x17f2a, 0x04},
    {0x17f62, 0x01},
    {0x17fa8, 0x04},
    {0x17fec, 0x40},
    {0x1a782, 0x40},
    {0x1be43, 0x02},
    {0x1be8b, 0x10},
    {0x1bf46, 0x20},
    {0x1bf83, 0x01},
    {0x1bf8a, 0x80},
    {0x1bfc2, 0x80},
    {0x1bff1, 0xf7},
    {0x1bffb, 0xbf},
    {0x1dbf1, 0x08},
    {0x1dbfe, 0x40},
    {0x1dca0, 0x80},
    {0x1dd23, 0x02},
    {0x1dda3, 0x80},
    {0x1dea0, 0x80},
    {0x1e427, 0x80},
    {0x1e5da, 0xdf},
    {0x1e87c, 0x02},
    {0x1e8fc, 0x01},
    {0x1e9bd, 0x10},
    {0x1eb3c, 0x02},
    {0x1ebb0, 0x80},
    {0x1ebbe, 0x02},
    {0x1ebf5, 0x10},
    {0x1ec16, 0x7f},
    {0x1ec29, 0x40},
    {0x1ef21, 0x20},
    {0x1ef62, 0x80},
    {0x1ef6f, 0x01},
    {0x1efa3, 0x01},
    {0x1efe1, 0x08},
    {0x1efef, 0x04},
    {0x1f462, 0x80},
    {0x1f713, 0x7f},
    {0x1f7e3, 0x04},
    {0x1fb30, 0x80},
    {0x1fb3f, 0x10},
    {0x1fe2a, 0x20},
    {0x1fea3, 0x01},
    {0x1fea9, 0x04},
    {0x1fed5, 0xef},
    {0x1fee2, 0x40},
    {0x1ff20, 0x80},
    {0x1ff22, 0x02},
    {0x1ffaf, 0x08},
    {0x22fc3, 0x40},
    {0x232dd, 0x02},
    {0x2395e, 0x02},
    {0x239df, 0x08},
    {0x23a9f, 0x01},
    {0x23be5, 0xdf},
    {0x23f43, 0x12},
    {0x23fcf, 0x01},
    {0x23fe2, 0xee},
    {0x23fe3, 0xbf},
    {0x23fe6, 0x7f},
    {0x23fe7, 0xdf},
    {0x23feb, 0xbe},
    {0x23fee, 0xf7},
    {0x23fef, 0xef},
    {0x23ff2, 0x87},
    {0x23ff3, 0xdb},
    {0x23ff6, 0x2c},
    {0x23ff7, 0xed},
    {0x23ffb, 0xf8},
    {0x23ffe, 0xbb},
    {0x23fff, 0x00},
    {0x2783c, 0x02},
    {0x27b3f, 0x08},
    {0x27bff, 0x02},
    {0x27c62, 0x04},
    {0x27f2f, 0x20},
    {0x27fe1, 0x08},
    {0x2bd9d, 0x08},
    {0x2bfe2, 0x66},
    {0x2bfe3, 0xf7},
    {0x2bfe6, 0x5f},
    {0x2bfe7, 0xdf},
    {0x2bfea, 0x7f},
    {0x2bfeb, 0xf7},
    {0x2bfee, 0xed},
    {0x2bfef, 0xde},
    {0x2bff2, 0xeb},
    {0x2bff3, 0x3d},
    {0x2bff6, 0xf3},
    {0x2bff7, 0x23},
    {0x2bffb, 0x7d},
    {0x2bffe, 0x3f},
    {0x2bfff, 0x00},
    {0x2e389, 0x90},
    {0x2e38a, 0x00},
    {0x2e38b, 0xfa},
    {0x2e38c, 0x70},
    {0x2e38d, 0x80},
    {0x2e38e, 0x00},
    {0x2e38f, 0xfa},
    {0x2e390, 0x70},
    {0x2e391, 0x70},
    {0x2e392, 0x00},
    {0x2e393, 0xfa},
    {0x2e394, 0x70},
    {0x2e395, 0x60},
    {0x2e396, 0x00},
    {0x2e397, 0xfa},
    {0x2e398, 0x70},
    {0x2e399, 0x50},
    {0x2e39a, 0x00},
    {0x2e39b, 0xfa},
    {0x2e39c, 0x70},
    {0x2e39d, 0x40},
    {0x2e39e, 0x00},
    {0x2e39f, 0xfa},
    {0x2e3a0, 0x70},
    {0x2e3a1, 0x30},
    {0x2e3a3, 0xfa},
    {0x2e3a4, 0x70},
    {0x2e3a5, 0x20},
    {0x2e3a7, 0xfa},
    {0x2e3a8, 0x70},
    {0x2e3a9, 0x10},
    {0x2e3ab, 0xfa},
    {0x2e3ac, 0x70},
    {0x2e3ad, 0x90},
    {0x2e3ae, 0xf8},
    {0x2e3af, 0xfa},
    {0x2e3b0, 0x10},
    {0x2e3b1, 0x80},
    {0x2e3b2, 0xf8},
    {0x2e3b3, 0xfa},
    {0x2e3b4, 0x10},
    {0x2e3b5, 0x70},
    {0x2e3b6, 0xf8},
    {0x2e3b7, 0xfa},
    {0x2e3b8, 0x10},
    {0x2e3b9, 0x60},
    {0x2e3ba, 0xf8},
    {0x2e3bb, 0xfa},
    {0x2e3bc, 0x10},
    {0x2e3bd, 0x50},
    {0x2e3be, 0xf8},
    {0x2e3bf, 0xfa},
    {0x2e3c0, 0x10},
    {0x2e3c1, 0x40},
    {0x2e3c2, 0xf8},
    {0x2e3c3, 0xfa},
    {0x2e3c4, 0x10},
    {0x2e3c5, 0x30},
    {0x2e3c6, 0xf8},
    {0x2e3c7, 0xfa},
    {0x2e3c8, 0x10},
    {0x2e3c9, 0x20},
    {0x2e3ca, 0xf8},
    {0x2e3cb, 0xfa},
    {0x2e3cc, 0x10},
    {0x2e3cd, 0x10},
    {0x2e3ce, 0xf8},
    {0x2e3cf, 0xfa},
    {0x2e3d0, 0x10},
    {0x2e3d1, 0x00},
    {0x2e3d2, 0x00},
    {0x2e3d3, 0xfa},
    {0x2e3d4, 0x70},
    {0x2e3d5, 0x00},
    {0x2e3d6, 0xf8},
    {0x2e3d7, 0xfa},
    {0x2e3d8, 0x11},
    {0x2e3d9, 0x90},
    {0x2e3da, 0xf8},
    {0x2e3db, 0xfa},
    {0x2e3dc, 0x50},
    {0x2e3dd, 0x80},
    {0x2e3de, 0xf8},
    {0x2e3df, 0xfa},
    {0x2e3e0, 0x50},
    {0x2e3e1, 0x70},
    {0x2e3e2, 0xf8},
    {0x2e3e3, 0xfa},
    {0x2e3e4, 0x50},
    {0x2e3e5, 0x60},
    {0x2e3e6, 0xf8},
    {0x2e3e7, 0xfa},
    {0x2e3e8, 0x50},
    {0x2e3e9, 0x50},
    {0x2e3ea, 0xf8},
    {0x2e3eb, 0xfa},
    {0x2e3ec, 0x50},
    {0x2e3ed, 0x40},
    {0x2e3ee, 0xf8},
    {0x2e3ef, 0xfa},
    {0x2e3f0, 0x50},
    {0x2e3f1, 0x30},
    {0x2e3f2, 0xf8},
    {0x2e3f3, 0xfa},
    {0x2e3f4, 0x50},
    {0x2e3f5, 0x20},
    {0x2e3f6, 0xf8},
    {0x2e3f7, 0xfa},
    {0x2e3f8, 0x50},
    {0x2e3f9, 0x10},
    {0x2e3fa, 0xf8},
    {0x2e3fb, 0xfa},
    {0x2e3fc, 0x50},
    {0x2e3fd, 0x90},
    {0x2e3ff, 0xfa},
    {0x2e400, 0x30},
    {0x2e401, 0x80},
    {0x2e402, 0x00},
    {0x2e403, 0xfa},
    {0x2e404, 0x30},
    {0x2e405, 0x70},
    {0x2e406, 0x00},
    {0x2e407, 0xfa},
    {0x2e408, 0x30},
    {0x2e409, 0x60},
    {0x2e40a, 0x00},
    {0x2e40b, 0xfa},
    {0x2e40c, 0x30},
    {0x2e40d, 0x50},
    {0x2e40e, 0x00},
    {0x2e40f, 0xfa},
    {0x2e410, 0x30},
    {0x2e411, 0x40},
    {0x2e412, 0x00},
    {0x2e413, 0xfa},
    {0x2e414, 0x30},
    {0x2e415, 0x30},
    {0x2e416, 0x00},
    {0x2e417, 0xfa},
    {0x2e418, 0x30},
    {0x2e419, 0x20},
    {0x2e41a, 0x00},
    {0x2e41b, 0xfa},
    {0x2e41c, 0x30},
    {0x2e41d, 0x10},
    {0x2e41e, 0x00},
    {0x2e41f, 0xfa},
    {0x2e420, 0x30},
    {0x2e422, 0xf8},
    {0x2e423, 0xfa},
    {0x2e424, 0x50},
    {0x2e427, 0xfa},
    {0x2e428, 0x31},
    {0x2ffe2, 0x08},
    {0x2ffe3, 0x40},
    {0x2ffe6, 0x40},
    {0x2ffe7, 0x24},
    {0x2ffea, 0x15},
    {0x2ffeb, 0x49},
    {0x2ffee, 0x05},
    {0x2ffef, 0x30},
    {0x2fff2, 0x50},
    {0x2fff3, 0x8f},
    {0x2fff6, 0x63},
    {0x2fff7, 0x0c},
    {0x2fffa, 0xf0},
    {0x2fffb, 0x4d},
    {0x2fffe, 0x10},
    {0x37ae0, 0x01},
    {0x37ba0, 0x02},
    {0x37c04, 0xef},
    {0x37c23, 0x20},
    {0x37e20, 0x80},
    {0x37e38, 0x01},
    {0x37ef0, 0x80},
    {0x3f2bf, 0x08},
    {0x3fa7d, 0x02},
    {0x3ffe2, 0x18},
    {0x3ffe3, 0x85},
    {0x3ffe6, 0x21},
    {0x3ffe7, 0x09},
    {0x3ffea, 0x41},
    {0x3ffeb, 0x33},
    {0x3ffee, 0x83},
    {0x3ffef, 0x4c},
    {0x3fff2, 0xd8},
    {0x3fff3, 0x51},
    {0x3fff6, 0x33},
    {0x3fff7, 0x02},
    {0x3fffa, 0x90},
    {0x3fffb, 0x74},
    {0x3fffe, 0x14}
};

#define STRAY_BYTES_JP11_LEN 321

struct StrayByte strayBytesJP11[STRAY_BYTES_JP11_LEN] = {
    {0x3fe2, 0x39},
    {0x3fe6, 0xef},
    {0x3fe7, 0xed},
    {0x3feb, 0xdf},
    {0x3fee, 0xba},
    {0x3fef, 0xfd},
    {0x3ff2, 0x5f},
    {0x3ff3, 0xfd},
    {0x3ff6, 0x7d},
    {0x3ffa, 0xfb},
    {0x3ffb, 0x43},
    {0x3ffe, 0x6d},
    {0x3fff, 0x00},
    {0x5da0, 0x80},
    {0x6bfd, 0x01},
    {0x6c60, 0x80},
    {0x7a85, 0xdf},
    {0x7fe2, 0xc6},
    {0x7fe3, 0x01},
    {0x7fe6, 0x05},
    {0x7fea, 0xc1},
    {0x7feb, 0x80},
    {0x7fee, 0xc3},
    {0x7fef, 0xe3},
    {0x7ff2, 0x8a},
    {0x7ff3, 0xe8},
    {0x7ff6, 0x08},
    {0x7ff7, 0x98},
    {0x7ffa, 0x11},
    {0x7ffb, 0x10},
    {0x7ffe, 0x62},
    {0xffe2, 0x0f},
    {0xffe3, 0x01},
    {0xffe6, 0x8d},
    {0xffea, 0xc5},
    {0xffeb, 0x13},
    {0xffee, 0x86},
    {0xffef, 0xc0},
    {0xfff2, 0x90},
    {0xfff3, 0xad},
    {0xfff6, 0x23},
    {0xfff7, 0xc1},
    {0xfffa, 0x98},
    {0xfffb, 0xf3},
    {0x13891, 0x04},
    {0x138dc, 0x02},
    {0x138df, 0x20},
    {0x13999, 0x20},
    {0x1399f, 0x40},
    {0x139de, 0x08},
    {0x13a5f, 0x10},
    {0x13b1c, 0x10},
    {0x13b1f, 0x20},
    {0x13b5c, 0x80},
    {0x13b5f, 0xa4},
    {0x13bdf, 0x20},
    {0x13d41, 0x01},
    {0x13dc3, 0x02},
    {0x13e40, 0x02},
    {0x13e87, 0x08},
    {0x13f4a, 0x20},
    {0x13f83, 0x02},
    {0x13fc0, 0x80},
    {0x13fc3, 0x20},
    {0x13fcb, 0x08},
    {0x13ff4, 0xdf},
    {0x17aba, 0x02},
    {0x17b3f, 0x04},
    {0x17b7c, 0x02},
    {0x17bbd, 0x80},
    {0x17bfe, 0x02},
    {0x17d52, 0xfe},
    {0x17f2a, 0x04},
    {0x17f62, 0x01},
    {0x17fa8, 0x04},
    {0x1a782, 0x40},
    {0x1be43, 0x02},
    {0x1bf46, 0x20},
    {0x1bfc2, 0x80},
    {0x1dca0, 0x80},
    {0x1dea0, 0x80},
    {0x1e427, 0x80},
    {0x1e9bd, 0x10},
    {0x1eb3c, 0x02},
    {0x1ebb0, 0x80},
    {0x1ec16, 0x7f},
    {0x1ef62, 0x80},
    {0x1ef6f, 0x01},
    {0x1efef, 0x04},
    {0x1f462, 0x80},
    {0x1f7e3, 0x04},
    {0x1fb3f, 0x10},
    {0x1fea9, 0x04},
    {0x1fee2, 0x40},
    {0x1ff20, 0x80},
    {0x1ff22, 0x02},
    {0x1ffaf, 0x08},
    {0x2395e, 0x02},
    {0x239df, 0x08},
    {0x23a9f, 0x01},
    {0x23be5, 0xdf},
    {0x23f43, 0x10},
    {0x23fcf, 0x01},
    {0x23fe2, 0x6e},
    {0x23fe3, 0xbf},
    {0x23fe6, 0x7f},
    {0x23fe7, 0xdf},
    {0x23feb, 0xbe},
    {0x23fee, 0xf7},
    {0x23fef, 0xef},
    {0x23ff2, 0x07},
    {0x23ff3, 0xfb},
    {0x23ff6, 0x2c},
    {0x23ff7, 0xed},
    {0x23ffb, 0xf8},
    {0x23ffe, 0xbb},
    {0x23fff, 0x00},
    {0x2783c, 0x02},
    {0x27f2f, 0x20},
    {0x2bfe2, 0x66},
    {0x2bfe3, 0xf7},
    {0x2bfe6, 0x5f},
    {0x2bfe7, 0xdf},
    {0x2bfea, 0x7f},
    {0x2bfeb, 0xf7},
    {0x2bfee, 0xad},
    {0x2bfef, 0xde},
    {0x2bff2, 0xeb},
    {0x2bff3, 0x3d},
    {0x2bff6, 0xf3},
    {0x2bff7, 0x23},
    {0x2bffb, 0x7d},
    {0x2bffe, 0x3f},
    {0x2bfff, 0x00},
    {0x2e389, 0x90},
    {0x2e38a, 0x00},
    {0x2e38b, 0xfa},
    {0x2e38c, 0x70},
    {0x2e38d, 0x80},
    {0x2e38e, 0x00},
    {0x2e38f, 0xfa},
    {0x2e390, 0x70},
    {0x2e391, 0x70},
    {0x2e392, 0x00},
    {0x2e393, 0xfa},
    {0x2e394, 0x70},
    {0x2e395, 0x60},
    {0x2e396, 0x00},
    {0x2e397, 0xfa},
    {0x2e398, 0x70},
    {0x2e399, 0x50},
    {0x2e39a, 0x00},
    {0x2e39b, 0xfa},
    {0x2e39c, 0x70},
    {0x2e39d, 0x40},
    {0x2e39e, 0x00},
    {0x2e39f, 0xfa},
    {0x2e3a0, 0x70},
    {0x2e3a1, 0x30},
    {0x2e3a3, 0xfa},
    {0x2e3a4, 0x70},
    {0x2e3a5, 0x20},
    {0x2e3a7, 0xfa},
    {0x2e3a8, 0x70},
    {0x2e3a9, 0x10},
    {0x2e3ab, 0xfa},
    {0x2e3ac, 0x70},
    {0x2e3ad, 0x90},
    {0x2e3ae, 0xf8},
    {0x2e3af, 0xfa},
    {0x2e3b0, 0x10},
    {0x2e3b1, 0x80},
    {0x2e3b2, 0xf8},
    {0x2e3b3, 0xfa},
    {0x2e3b4, 0x10},
    {0x2e3b5, 0x70},
    {0x2e3b6, 0xf8},
    {0x2e3b7, 0xfa},
    {0x2e3b8, 0x10},
    {0x2e3b9, 0x60},
    {0x2e3ba, 0xf8},
    {0x2e3bb, 0xfa},
    {0x2e3bc, 0x10},
    {0x2e3bd, 0x50},
    {0x2e3be, 0xf8},
    {0x2e3bf, 0xfa},
    {0x2e3c0, 0x10},
    {0x2e3c1, 0x40},
    {0x2e3c2, 0xf8},
    {0x2e3c3, 0xfa},
    {0x2e3c4, 0x10},
    {0x2e3c5, 0x30},
    {0x2e3c6, 0xf8},
    {0x2e3c7, 0xfa},
    {0x2e3c8, 0x10},
    {0x2e3c9, 0x20},
    {0x2e3ca, 0xf8},
    {0x2e3cb, 0xfa},
    {0x2e3cc, 0x10},
    {0x2e3cd, 0x10},
    {0x2e3ce, 0xf8},
    {0x2e3cf, 0xfa},
    {0x2e3d0, 0x10},
    {0x2e3d1, 0x00},
    {0x2e3d2, 0x00},
    {0x2e3d3, 0xfa},
    {0x2e3d4, 0x70},
    {0x2e3d5, 0x00},
    {0x2e3d6, 0xf8},
    {0x2e3d7, 0xfa},
    {0x2e3d8, 0x11},
    {0x2e3d9, 0x90},
    {0x2e3da, 0xf8},
    {0x2e3db, 0xfa},
    {0x2e3dc, 0x50},
    {0x2e3dd, 0x80},
    {0x2e3de, 0xf8},
    {0x2e3df, 0xfa},
    {0x2e3e0, 0x50},
    {0x2e3e1, 0x70},
    {0x2e3e2, 0xf8},
    {0x2e3e3, 0xfa},
    {0x2e3e4, 0x50},
    {0x2e3e5, 0x60},
    {0x2e3e6, 0xf8},
    {0x2e3e7, 0xfa},
    {0x2e3e8, 0x50},
    {0x2e3e9, 0x50},
    {0x2e3ea, 0xf8},
    {0x2e3eb, 0xfa},
    {0x2e3ec, 0x50},
    {0x2e3ed, 0x40},
    {0x2e3ee, 0xf8},
    {0x2e3ef, 0xfa},
    {0x2e3f0, 0x50},
    {0x2e3f1, 0x30},
    {0x2e3f2, 0xf8},
    {0x2e3f3, 0xfa},
    {0x2e3f4, 0x50},
    {0x2e3f5, 0x20},
    {0x2e3f6, 0xf8},
    {0x2e3f7, 0xfa},
    {0x2e3f8, 0x50},
    {0x2e3f9, 0x10},
    {0x2e3fa, 0xf8},
    {0x2e3fb, 0xfa},
    {0x2e3fc, 0x50},
    {0x2e3fd, 0x90},
    {0x2e3ff, 0xfa},
    {0x2e400, 0x30},
    {0x2e401, 0x80},
    {0x2e402, 0x00},
    {0x2e403, 0xfa},
    {0x2e404, 0x30},
    {0x2e405, 0x70},
    {0x2e406, 0x00},
    {0x2e407, 0xfa},
    {0x2e408, 0x30},
    {0x2e409, 0x60},
    {0x2e40a, 0x00},
    {0x2e40b, 0xfa},
    {0x2e40c, 0x30},
    {0x2e40d, 0x50},
    {0x2e40e, 0x00},
    {0x2e40f, 0xfa},
    {0x2e410, 0x30},
    {0x2e411, 0x40},
    {0x2e412, 0x00},
    {0x2e413, 0xfa},
    {0x2e414, 0x30},
    {0x2e415, 0x30},
    {0x2e416, 0x00},
    {0x2e417, 0xfa},
    {0x2e418, 0x30},
    {0x2e419, 0x20},
    {0x2e41a, 0x00},
    {0x2e41b, 0xfa},
    {0x2e41c, 0x30},
    {0x2e41d, 0x10},
    {0x2e41e, 0x00},
    {0x2e41f, 0xfa},
    {0x2e420, 0x30},
    {0x2e422, 0xf8},
    {0x2e423, 0xfa},
    {0x2e424, 0x50},
    {0x2e427, 0xfa},
    {0x2e428, 0x31},
    {0x2ffe2, 0x08},
    {0x2ffe3, 0x40},
    {0x2ffe6, 0x40},
    {0x2ffe7, 0xa4},
    {0x2ffea, 0x15},
    {0x2ffeb, 0x49},
    {0x2ffee, 0x05},
    {0x2ffef, 0x34},
    {0x2fff2, 0x50},
    {0x2fff3, 0x8f},
    {0x2fff6, 0x4b},
    {0x2fff7, 0x0c},
    {0x2fffa, 0xf0},
    {0x2fffb, 0x4d},
    {0x2fffe, 0x10},
    {0x37ae0, 0x01},
    {0x37ba0, 0x02},
    {0x37ef0, 0x80},
    {0x3f2bf, 0x08},
    {0x3ffe2, 0x18},
    {0x3ffe3, 0x85},
    {0x3ffe6, 0x21},
    {0x3ffe7, 0x09},
    {0x3ffea, 0x41},
    {0x3ffeb, 0x33},
    {0x3ffee, 0x83},
    {0x3ffef, 0x48},
    {0x3fff2, 0xf8},
    {0x3fff3, 0x51},
    {0x3fff6, 0x33},
    {0x3fff7, 0x22},
    {0x3fffa, 0x90},
    {0x3fffb, 0x74},
    {0x3fffe, 0x14},
};

#endif // GUARD_OVERLAYBYTES_H
