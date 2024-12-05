import reader

import argparse

parser = argparse.ArgumentParser(description='Extracts compressed data.')
parser.add_argument('offsets', metavar='offsets', type=str, nargs='+',
                    help='offset(s) to parse')

args = parser.parse_args()

for o in args.offsets:
    #cache whole bank
    offset = int(o, 16)
    bank = int(offset / 0x4000)
    source = reader.getROMBytes(bank * 0x4000, 0x4000)
    offset = offset % 0x4000 # convert to offset relative in bank

    pos = offset
    while True:
        cmdByte = source[pos]
        pos += 1

        if cmdByte == 0xff:
            break

        len = 0
        flags = 0
        if (cmdByte & 0xe0) == 0xe0:
            len = ((cmdByte & 0x3) << 8) | source[pos] + 1
            pos += 1
            flags = (cmdByte << 3) & 0xe0
        else:
            len = (cmdByte & 0x1f) + 1
            flags = cmdByte & 0xe0

        if flags & 0x80 == 0:
            if flags == 0x20:
                pos += 1
            elif flags == 0x40:
                pos += 2
            elif flags == 0x60:
                pos += 1
            else:
                pos += len
        else:
            pos += 2

        data = source[offset : offset + pos + 1]
        with open("Data_{}.lz".format(o), "wb") as fo:
            fo.write(bytes(data))