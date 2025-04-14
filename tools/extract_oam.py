import reader
import argparse
import symbols
import re

parser = argparse.ArgumentParser(description='Extracts OAM data.')
parser.add_argument('offsets', metavar='offsets', type=str, nargs='+',
                    help='offset(s) to parse')

args = parser.parse_args()

syms = symbols.read_symbols()

out_str = ""

def convert_signed(x):
    return x if x < 0x80 else x - 0x100

for o in reader.standardise_list(args.offsets):
    offset = int(o, 16)
    pos = 0

    if offset in syms:
        continue

    out_str += f"OAM_{o}:\n"

    while True:
        data = reader.get_rom_bytes(offset + pos, 4)

        if data[0] == 0x80:
            out_str += f"\tdb $80 ; end\n"
            pos += 1
            break

        y = convert_signed(data[0])
        x = convert_signed(data[1])
        tile_id = data[2]
        flag_str = ""

        flag_str += "OAMF_PAL1" if data[3] & 0x10 != 0 else "OAMF_PAL0"
        is_end = False
        if data[3] & 0x20 != 0:
            flag_str += " | OAMF_XFLIP"
        if data[3] & 0x40 != 0:
            flag_str += " | OAMF_YFLIP"
        if data[3] & 0x80 != 0:
            flag_str += " | OAMF_PRI"
        if data[3] & 0x01 != 0:
            flag_str += " | OAM_END"
            is_end = True

        pos += 4

        out_str += f"\tdb {y:3}, {x:3}, ${tile_id:02x}, {flag_str}\n"
        if is_end:
            break

    out_str += "; 0x{:0x}\n\n".format(offset + pos)

out_str = re.sub(r"; 0x([a-f0-9]{5})\n(\n.+)\1:", lambda m: m[2] + m[1] + ":", out_str)
print(out_str)
