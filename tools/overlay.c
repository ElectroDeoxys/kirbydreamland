#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <getopt.h>
#include <errno.h>

#include "common.h"
#include "overlay_bytes.h"

#define ROM_SIZE 0x40000

static void usage(void)
{
    fprintf(stderr, "Creates an overlay file to match the original ROMs.\nUsage: overlay [-m mode] [-h] outfile\n");
}

enum Mode
{
    UE,
    J10,
    J11
};

struct Options {
    enum Mode mode;
    int help;
};

struct Options Options = {
    .help = false,
};

void get_args(int argc, char *argv[]) {
    struct option long_options[] = {
        {"mode", required_argument, 0, 'm'},
        {"help", no_argument, 0, 'h'},
        {0}
    };

    for (int opt = 0; opt != -1;) {
        switch (opt = getopt_long(argc, argv, "hm:", long_options)) {
        case 'h':
            Options.help = true;
            break;
        case 'm':
            if (strcmp(optarg, "ue") == 0)
                Options.mode = UE;
            else if (strcmp(optarg, "j10") == 0)
                Options.mode = J10;
            else if (strcmp(optarg, "j11") == 0)
                Options.mode = J11;
            else
            {
                usage();
                exit(1);
            }
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

    byte *fileBuffer = (byte*) malloc(ROM_SIZE * sizeof(byte));

    for (unsigned i = 0; i < ROM_SIZE / 0x40; i++)
    {
        // regions in ROM where pattern is swapped
        if ((i * 0x40 <= 0x00800)
         || (i * 0x40 >= 0x03800 && i * 0x40 <= 0x04000)
         || (i * 0x40 >= 0x0b800 && i * 0x40 <= 0x0c000)
         || (i * 0x40 >= 0x13000 && i * 0x40 <= 0x14000)
         || (i * 0x40 >= 0x1a000 && i * 0x40 <= 0x1a800)
         || (i * 0x40 >= 0x1b800 && i * 0x40 <= 0x1c000)
         || (i * 0x40 >= 0x22800 && i * 0x40 <= 0x23fff)
         || (i * 0x40 >= 0x2a800 && i * 0x40 <= 0x2b000)
         || (i * 0x40 >= 0x2b000 && i * 0x40 <= 0x2bfff)
         || (i * 0x40 >= 0x33800 && i * 0x40 <= 0x34000)
         || (i * 0x40 >= 0x3b800 && i * 0x40 <= 0x3c000))
        {
            memset(fileBuffer + (i * 0x40) + 0x00, 0x00, 0x20);
            memset(fileBuffer + (i * 0x40) + 0x20, 0xff, 0x20);
        }
        else
        {
            memset(fileBuffer + (i * 0x40) + 0x00, 0xff, 0x20);
            memset(fileBuffer + (i * 0x40) + 0x20, 0x00, 0x20);
        }
    }

    // take care of hardcoded stray bytes
    struct StrayByte *strayBytes = NULL;
    unsigned bytesLen = 0;

    switch (Options.mode)
    {
        case UE:
            strayBytes = strayBytesUE;
            bytesLen = STRAY_BYTES_UE_LEN;
            break;
        case J10:
            strayBytes = strayBytesJP10;
            bytesLen = STRAY_BYTES_JP10_LEN;
            break;
        case J11:
            strayBytes = strayBytesJP11;
            bytesLen = STRAY_BYTES_JP11_LEN;
            break;
    }

    for (unsigned i = 0; i < bytesLen; i++)
        fileBuffer[strayBytes[i].offset] = strayBytes[i].val;

    FILE *fi = fopen(argv[0], "wb");

    if (fi == NULL)
    {
        printf("Error: %d (%s)\n", errno, strerror(errno));
        exit(1);
    }

    fwrite(fileBuffer, sizeof(byte), ROM_SIZE, fi);
    fclose(fi);

    free(fileBuffer);

    return 0;
}
