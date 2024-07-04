#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <getopt.h>
#include <errno.h>

#include "common.h"

typedef unsigned char byte;

static void usage(void) {
	fprintf(stderr, "Usage: compressor [-d decompress] [-h] infile\n");
}

struct Options {
	int decompress;
	int help;
};

struct Options Options = {
	.decompress = false,
};

void get_args(int argc, char *argv[]) {
	struct option long_options[] = {
		{"decompress", no_argument, 0, 'd'},
		{"help", no_argument, 0, 'h'},
		{0}
	};
	for (int opt = 0; opt != -1;) {
		switch (opt = getopt_long(argc, argv, "hd::", long_options)) {
		case 'h':
			Options.help = true;
			break;
		case 'd':
			Options.decompress = true;
			break;
		case 0:
		case -1:
			break;
		default:
			usage();
			exit(1);
			break;
		}
	}
}

const unsigned MAX_FILE_SIZE = 0x8000;

enum Mode
{
    eRepeatByte = 0,
    eRepeat2Bytes,
    eSequence,
    eLiteralCopy,
    eLookBack,
    eLookBackInverted,
    eReverseLookBack,
};

byte returnByte(const byte b)
{
    return b;
}

byte invertByte(const byte b)
{
    byte res = 0;
    for (int bit = 0; bit < 8; bit++)
    {
        res |= ((b & (1 << bit)) >> bit) << (7 - bit);
    }
    return res;
}

typedef unsigned (*GetCompressLengthFunc)(const byte *, unsigned);
GetCompressLengthFunc getCompressLengthFuncs[7];
typedef void (*CompressFunc)(const byte *, unsigned, byte *, unsigned *, unsigned);
CompressFunc compressFuncs[7];
const unsigned compressModeMinLengths[7] = {
    3, // eRepeatByte
    4, // eRepeat2Bytes
    3, // eSequence
    0, // eLiteralCopy
    4, // eLookBack
    4, // eLookBackInverted
    4, // eReverseLookBack
};

unsigned getCompressRepeatByteLen(const byte *source, unsigned remaining)
{
    unsigned len = 0;
    byte repeatByte = *(source++);
    while (len < remaining)
    {
        len++;
        if (*(source++) != repeatByte) break;
    }
    return len;
}

unsigned getCompressRepeat2BytesLen(const byte *source, unsigned remaining)
{
    if (remaining < 2) return 0;

    unsigned len = 0;
    byte repeatByte1 = *(source++);
    byte repeatByte2 = *(source++);
    while (len < remaining)
    {
        len += 2;
        if (*(source++) != repeatByte1) break;
        if (*(source++) != repeatByte2) break;
    }
    return len;
}

unsigned getCompressSequenceLen(const byte *source, unsigned remaining)
{
    unsigned len = 0;
    byte pivot = *(source++);
    while (len < remaining)
    {
        len++;
        pivot++;
        if (*(source++) != pivot) break;
    }
    return len;
}

unsigned getCompressLookBackLenGeneric(const byte *sourceBegin, unsigned pos, unsigned remaining, unsigned *lookBackPos, byte (*func)(const byte))
{
    if (remaining < 2) return 0;
    if (pos < 2) return 0;

    unsigned maxLen = 0;

    for (unsigned i = 0; i < pos - 1; i++)
    {
        unsigned curLen = 0;
        for (unsigned j = 0; j < pos - i && j < remaining; j++)
        {
            if (func(*(sourceBegin + i + j)) != *(sourceBegin + pos + j))
                break;
            curLen++;
        }
        if (curLen > maxLen)
        {
            maxLen = curLen;
            *lookBackPos = i;
        }
    }

    return maxLen;
}

unsigned getCompressLookBackLen(const byte *sourceBegin, unsigned pos, unsigned remaining, unsigned *lookBackPos)
{
    return getCompressLookBackLenGeneric(sourceBegin, pos, remaining, lookBackPos, &returnByte);
}

unsigned getCompressLookBackInvertedLen(const byte *sourceBegin, unsigned pos, unsigned remaining, unsigned *lookBackPos)
{
    return getCompressLookBackLenGeneric(sourceBegin, pos, remaining, lookBackPos, &invertByte);
}

unsigned getCompressReverseLookBackLen(const byte *sourceBegin, unsigned pos, unsigned remaining, unsigned *lookBackPos, byte (*func)(const byte))
{
    if (remaining < 2) return 0;
    if (pos < 2) return 0;

    unsigned maxLen = 0;

    for (unsigned i = pos - 1; i > 0; i--)
    {
        unsigned curLen = 0;
        for (unsigned j = 0; j < pos - i && j < remaining; j++)
        {
            if (func(*(sourceBegin + i - j)) != *(sourceBegin + pos + j))
                break;
            curLen++;
        }
        if (curLen > maxLen)
        {
            maxLen = curLen;
            *lookBackPos = i;
        }
    }

    return maxLen;
}

void compressRepeatByte(const byte *source, unsigned length, byte *dest, unsigned *destLength, __attribute__((unused)) unsigned lookBackPos)
{
    length--;
    if (length <= 0x1f)
    {
        dest[0] = 0x20 | length;
        dest[1] = *source;
        *destLength += 2;
    }
    else
    {
        dest[0] = 0xe0 | (0x20 >> 3) | (length / 0x100);
        dest[1] = length % 0x100;
        dest[2] = *source;
        *destLength += 3;
    }
}

void compressRepeat2Bytes(const byte *source, unsigned length, byte *dest, unsigned *destLength, __attribute__((unused)) unsigned lookBackPos)
{
    length = (length / 2) - 1;
    if (length <= 0x1f)
    {
        dest[0] = 0x40 | length;
        dest[1] = source[0];
        dest[2] = source[1];
        *destLength += 3;
    }
    else
    {
        dest[0] = 0xe0 | (0x40 >> 3) | (length / 0x100);
        dest[1] = length % 0x100;
        dest[2] = source[0];
        dest[3] = source[1];
        *destLength += 4;
    }
}

void compressSequence(const byte *source, unsigned length, byte *dest, unsigned *destLength, __attribute__((unused)) unsigned lookBackPos)
{
    length--;
    if (length <= 0x1f)
    {
        dest[0] = 0x60 | length;
        dest[1] = *source;
        *destLength += 2;
    }
    else
    {
        dest[0] = 0xe0 | (0x60 >> 3) | (length / 0x100);
        dest[1] = length % 0x100;
        dest[2] = *source;
        *destLength += 3;
    }
}

void compressLiteralCopy(const byte *source, unsigned length, byte *dest, unsigned *destLength, __attribute__((unused)) unsigned lookBackPos)
{
    unsigned byteLen = length - 1;
    if (byteLen <= 0x1f)
    {
        dest[0] = byteLen;
        dest++;
        memcpy(dest, source, sizeof(byte) * length);
        *destLength += 1 + length;
    }
    else
    {
        dest[0] = 0xe0 | (byteLen / 0x100);
        dest[1] = byteLen % 0x100;
        dest += 2;
        memcpy(dest, source, sizeof(byte) * length);
        *destLength += 2 + length;
    }
}

void compressLookBackGeneric(unsigned length, byte *dest, unsigned *destLength, unsigned lookBackPos, byte cmdByte)
{
    length--;
    if (length <= 0x1f)
    {
        dest[0] = cmdByte | length;
        dest[1] = lookBackPos / 0x100;
        dest[2] = lookBackPos % 0x100;
        *destLength += 3;
    }
    else
    {
        dest[0] = 0xe0 | (cmdByte >> 3) | (length / 0x100);
        dest[1] = length % 0x100;
        dest[2] = lookBackPos / 0x100;
        dest[3] = lookBackPos % 0x100;
        *destLength += 4;
    }
}

void compressLookBack(__attribute__((unused)) const byte *source, unsigned length, byte *dest, unsigned *destLength, unsigned lookBackPos)
{
    compressLookBackGeneric(length, dest, destLength, lookBackPos, 0x80);
}

void compressLookBackInverted(__attribute__((unused)) const byte *source, unsigned length, byte *dest, unsigned *destLength, unsigned lookBackPos)
{
    compressLookBackGeneric(length, dest, destLength, lookBackPos, 0xa0);
}

void compress(char *outFilename, byte *source, unsigned fileSize)
{
    unsigned remaining = fileSize;
    const byte *sourceBegin = source;

    FILE *fo = fopen(outFilename, "wb");
    byte *buffer = (byte*) malloc(MAX_FILE_SIZE * sizeof(byte));
    unsigned bufferLength = 0;

    unsigned literalCopyLen = 0;
    bool isCopyingLiteral = false;

    while (remaining != 0)
    {
        enum Mode chosenMode = eLiteralCopy;
        unsigned maxLen = 0;

        for (int i = 0; i < 3; i++)
        {
            enum Mode mode = (enum Mode) i;
            unsigned curLen = getCompressLengthFuncs[mode](source, remaining);
            if (curLen > maxLen && curLen >= compressModeMinLengths[mode])
            {
                chosenMode = mode;
                maxLen = curLen;
            }
        }

        unsigned chosenLookBackPos = 0;

        unsigned curLen;
        unsigned pos = source - sourceBegin;
        unsigned lookBackPos = 0;

        curLen = getCompressLookBackLen(sourceBegin, pos, remaining, &lookBackPos);
        if (curLen > maxLen && curLen >= compressModeMinLengths[eLookBack])
        {
            chosenMode = eLookBack;
            maxLen = curLen;
            chosenLookBackPos = lookBackPos;
        }

        curLen = getCompressLookBackInvertedLen(sourceBegin, pos, remaining, &lookBackPos);
        if (curLen > maxLen && curLen >= compressModeMinLengths[eLookBackInverted])
        {
            chosenMode = eLookBackInverted;
            maxLen = curLen;
            chosenLookBackPos = lookBackPos;
        }

        if (chosenMode == eLiteralCopy)
        {
            if (!isCopyingLiteral)
            {
                isCopyingLiteral = true;
                literalCopyLen = 0;
            }
            literalCopyLen++;
            remaining--;
            source++;
        }
        else
        {
            if (isCopyingLiteral)
            {
                byte *destLiteralCopy = buffer + bufferLength;
                byte *sourceLiteralCopy = source - literalCopyLen;
                compressFuncs[eLiteralCopy](sourceLiteralCopy, literalCopyLen, destLiteralCopy, &bufferLength, chosenLookBackPos);
                isCopyingLiteral = false;
            }

            byte *dest = buffer + bufferLength;
            compressFuncs[chosenMode](source, maxLen, dest, &bufferLength, chosenLookBackPos);
            remaining -= maxLen;
            source += maxLen;
        }
    }

    fwrite(buffer, sizeof(byte), bufferLength, fo);
    fclose(fo);

    free(buffer);
}

typedef unsigned (*DecompressFunc)(const byte *, unsigned, byte *, unsigned *);
DecompressFunc decompressFuncs[7];

unsigned decompressRepeatByte(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = *source;
    *destLength = i;
    return 1;
}

unsigned decompressRepeat2Bytes(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
    {
        dest[2*i+0] = source[0];
        dest[2*i+1] = source[1];
    }
    *destLength = 2*i;
    return 2;
}

unsigned decompressSequence(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    int byte = *source;
    for (; i < length; i++)
        dest[i] = byte++;
    *destLength = i;
    return 1;
}

unsigned decompressLiteralCopy(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = *(source++);
    *destLength = i;
    return length;
}

unsigned decompressLookBack(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = *(source++);
    *destLength = i;
    return 2;
}

unsigned decompressLookBackInverted(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = invertByte(source[i]);
    *destLength = i;
    return 2;
}

unsigned decompressReverseLookBack(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = *(source--);
    *destLength = i;
    return 2;
}

void decompress(char *outFilename, byte *source)
{
    FILE *fo = fopen(outFilename, "wb");
    byte *buffer = (byte*) malloc(MAX_FILE_SIZE * sizeof(byte));
    unsigned bufferLength = 0;

    byte *tempBuffer = (byte*) malloc(MAX_FILE_SIZE * sizeof(byte));

    while (true)
    {
        byte cmdByte = *(source++);
        if (cmdByte == 0xff) break;
        int isLongLen = ((cmdByte & 0xe0) == 0xe0);
        int flags;
        unsigned length;
        if (isLongLen)
        {
            // long length
            unsigned lowLengthByte = (unsigned) *(source++);
            length = ((cmdByte & 0x3) * 0x100) + lowLengthByte + 1;
            flags = (cmdByte & 0x1c) << 3;
        }
        else
        {
            // short length
            length = (cmdByte & 0x1f) + 1;
            flags = (cmdByte & 0xe0);
        }

        enum Mode mode;

        if (flags & 0x80)
        {
            // is look back
            switch (flags)
            {
                default:
                case 0x80: mode = eLookBack; break;
                case 0xa0: mode = eLookBackInverted; break;
                case 0xc0: mode = eReverseLookBack; break;
            }
        }
        else
        {
            // not look back
            switch (flags)
            {
                case 0x20: mode = eRepeatByte; break;
                case 0x40: mode = eRepeat2Bytes; break;
                case 0x60: mode = eSequence; break;
                default:   mode = eLiteralCopy; break;
            }
        }

        unsigned tempBufferLength;

        switch (mode)
        {
            case eRepeatByte:
            case eRepeat2Bytes:
            case eSequence:
            case eLiteralCopy:
            {
                unsigned sourceOffset = decompressFuncs[mode](source, length, tempBuffer, &tempBufferLength);
                source += sourceOffset;
                break;
            }

            case eLookBack:
            case eLookBackInverted:
            case eReverseLookBack:
            {
                unsigned lookBackPos = (((unsigned) source[0]) << 8) + (unsigned) source[1];
                byte *sourceLookBack = buffer + lookBackPos;
                unsigned sourceOffset = decompressFuncs[mode](sourceLookBack, length, tempBuffer, &tempBufferLength);
                source += sourceOffset;
                break;
            }
        }

        memcpy(buffer + bufferLength, tempBuffer, tempBufferLength * sizeof(byte));
        bufferLength += tempBufferLength;
    }

    fwrite(buffer, sizeof(byte), bufferLength, fo);
    fclose(fo);

    free(buffer);
    free(tempBuffer);
}

int main(int argc, char *argv[])
{
	get_args(argc, argv);
	argc -= optind;
	argv += optind;
	if (Options.help)
    {
		usage();
		return 0;
	}
	if (argc < 1)
    {
		usage();
		exit(1);
	}

    char *inFilename = (char*) malloc((strlen(argv[0]) + 1) * sizeof(char));
    strcpy(inFilename, argv[0]);

    FILE *fi = fopen(inFilename, "rb");

    if (fi == NULL)
    {
        printf("Error: %d (%s)\n", errno, strerror(errno));
        free(inFilename);
        exit(1);
    }

    byte *fileBuffer = (byte*) malloc(MAX_FILE_SIZE * sizeof(byte));
    unsigned fileSize = 0;
    for (unsigned i = 0; i < MAX_FILE_SIZE; i++)
    {
        int c = fgetc(fi);
        if (feof(fi))
        {
            fileSize = i;
            break;
        }
        fileBuffer[i] = c;
    }

    fclose(fi);

    if (Options.decompress)
    {
        decompressFuncs[eRepeatByte] = &decompressRepeatByte;
        decompressFuncs[eRepeat2Bytes] = &decompressRepeat2Bytes;
        decompressFuncs[eSequence] = &decompressSequence;
        decompressFuncs[eLiteralCopy] = &decompressLiteralCopy;
        decompressFuncs[eLookBack] = &decompressLookBack;
        decompressFuncs[eLookBackInverted] = &decompressLookBackInverted;
        decompressFuncs[eReverseLookBack] = &decompressReverseLookBack;

        char *outFilename = (char*) malloc((strlen(inFilename) + 1) * sizeof(char));
        strcpy(outFilename, inFilename);
        outFilename[strlen(inFilename) - strlen(".lz")] = '\0';

        decompress(outFilename, fileBuffer);
        free(outFilename);
    }
    else // compress
    {
        getCompressLengthFuncs[eRepeatByte] = &getCompressRepeatByteLen;
        compressFuncs[eRepeatByte] = &compressRepeatByte;
        getCompressLengthFuncs[eRepeat2Bytes] = &getCompressRepeat2BytesLen;
        compressFuncs[eRepeat2Bytes] = &compressRepeat2Bytes;
        getCompressLengthFuncs[eSequence] = &getCompressSequenceLen;
        compressFuncs[eSequence] = &compressSequence;
        getCompressLengthFuncs[eLiteralCopy] = NULL;
        compressFuncs[eLiteralCopy] = &compressLiteralCopy;
        compressFuncs[eLookBack] = &compressLookBack;
        compressFuncs[eLookBackInverted] = &compressLookBackInverted;
        // getCompressLengthFuncs[eReverseLookBack] = &getCompressReverseLookBackLen;
        // compressFuncs[eReverseLookBack] = &compressReverseLookBack;

        char *outFilename = (char*) malloc((strlen(inFilename) + strlen(".lz") + 1) * sizeof(char));
        strcpy(outFilename, inFilename);
        strcat(outFilename, ".lz");

        compress(outFilename, fileBuffer, fileSize);
        free(outFilename);
    }

    free(inFilename);
    free(fileBuffer);

    return 0;
}
