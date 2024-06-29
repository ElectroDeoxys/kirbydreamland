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
    eRepeatByte,
    eRepeat2Bytes,
    eSequence,
    eLiteralCopy,
    eLookBack,
    eLookBackInverted,
    eReverseLookBack,
};

byte invertByte(byte b)
{
    byte res = 0;
    for (int bit = 0; bit < 8; bit++)
    {
        res |= ((b & (1 << bit)) >> bit) << (7 - bit);
    }
    return res;
}

unsigned getRepeatByteLen(byte *source, unsigned remaining)
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

unsigned getRepeat2BytesLen(byte *source, unsigned remaining)
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

void compressRepeatByte(const byte *source, unsigned length, byte *dest, unsigned *destLength)
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
        *destLength += 3;
    }
}

void compressRepeat2Bytes(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    length = (length / 2) - 1;
    if (length <= 0x1f)
    {
        dest[0] = 0x40 | length;
        dest[1] = source[0];
        dest[2] = source[1];
        *destLength += 2;
    }
    else
    {
        dest[0] = 0xe0 | (0x40 >> 3) | (length / 0x100);
        dest[1] = length % 0x100;
        *destLength += 3;
    }
}

void compress(char *outFilename, byte *source, unsigned fileSize)
{
    unsigned remaining = fileSize;

    FILE *fo = fopen(outFilename, "wb");
    byte *buffer = (byte*) malloc(MAX_FILE_SIZE * sizeof(byte));
    unsigned bufferLength = 0;

    byte *tempBuffer = (byte*) malloc(MAX_FILE_SIZE * sizeof(byte));

    while (true)
    {
        unsigned lengthRepeat = getRepeatByteLen(source, remaining);
        unsigned lengthRepeat2 = getRepeat2BytesLen(source, remaining);

        if (lengthRepeat >= lengthRepeat2)
        {
            compressRepeatByte(source, lengthRepeat, buffer, &bufferLength);
            remaining -= lengthRepeat;
            source += lengthRepeat;
        }
        else
        {
            compressRepeat2Bytes(source, lengthRepeat, buffer, &bufferLength);
            remaining -= lengthRepeat2;
            source += lengthRepeat2;
        }
    }

    fwrite(buffer, sizeof(byte), bufferLength, fo);
    fclose(fo);

    free(buffer);
    free(tempBuffer);
}

void decompressRepeatByte(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = *source;
    *destLength = i;
}

void decompressRepeat2Bytes(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
    {
        dest[2*i+0] = source[0];
        dest[2*i+1] = source[1];
    }
    *destLength = 2*i;
}

void decompressSequence(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    int byte = *source;
    for (; i < length; i++)
        dest[i] = byte++;
    *destLength = i;
}

void decompressLiteralCopy(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = *(source++);
    *destLength = i;
}

void decompressLookBack(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = *(source++);
    *destLength = i;
}

void decompressLookBackInverted(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = invertByte(source[i]);
    *destLength = i;
}

void decompressReverseLookBack(const byte *source, unsigned length, byte *dest, unsigned *destLength)
{
    unsigned i = 0;
    for (; i < length; i++)
        dest[i] = *(source--);
    *destLength = i;
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

        printf("flag = %d, mode = %d, length = %d\n", flags, mode, length);
        unsigned tempBufferLength;

        switch (mode)
        {
            case eRepeatByte:
                decompressRepeatByte(source, length, tempBuffer, &tempBufferLength);
                source++;
                break;
            case eRepeat2Bytes:
                decompressRepeat2Bytes(source, length, tempBuffer, &tempBufferLength);
                source += 2;
                break;
            case eSequence:
                decompressSequence(source, length, tempBuffer, &tempBufferLength);
                source++;
                break;
            case eLiteralCopy:
                decompressLiteralCopy(source, length, tempBuffer, &tempBufferLength);
                source += length;
                break;
            case eLookBack:
            {
                unsigned lookBackPos = (((unsigned) source[0]) << 8) + (unsigned) source[1];
                byte *sourceLookBack = buffer + lookBackPos;
                decompressLookBack(sourceLookBack, length, tempBuffer, &tempBufferLength);
                source += 2;
                break;
            }
            case eLookBackInverted:
            {
                unsigned lookBackPos = (((unsigned) source[0]) << 8) + (unsigned) source[1];
                byte *sourceLookBack = buffer + lookBackPos;
                decompressLookBackInverted(sourceLookBack, length, tempBuffer, &tempBufferLength);
                source += 2;
                break;
            }
            case eReverseLookBack:
            {
                unsigned lookBackPos = (((unsigned) source[0]) << 8) + (unsigned) source[1];
                byte *sourceLookBack = buffer + lookBackPos;
                decompressReverseLookBack(sourceLookBack, length, tempBuffer, &tempBufferLength);
                source += 2;
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
        char *outFilename = (char*) malloc((strlen(inFilename) + 1) * sizeof(char));
        strcpy(outFilename, inFilename);
        outFilename[strlen(inFilename) - strlen(".lz")] = '\0';

        decompress(outFilename, fileBuffer);
        free(outFilename);
    }
    else // compress
    {
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
