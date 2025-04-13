import reader
import argparse
import symbols

parser = argparse.ArgumentParser(description='Extracts object properties data.')
parser.add_argument('offsets', metavar='offsets', type=str, nargs='+',
                    help='offset(s) to parse')

args = parser.parse_args()

syms = symbols.read_symbols()

flags = [
    (0x01, "PROPERTY_REL_POS"),
    (0x02, "PROPERTY_1"),
    (0x04, "PROPERTY_2"),
    (0x08, "PROPERTY_SINKABLE"),
    (0x10, "PROPERTY_PAL"),
    (0x20, "PROPERTY_GRAVITY"),
    (0x40, "PROPERTY_PERSISTENT"),
    (0x80, "PROPERTY_PRIORITY)")
]

items = [
    "INVINCIBILITY_CANDY",
    "BOMB",
    "MIKE",
    "MINT_LEAF",
    "SPICY_FOOD",
    "WARP_STAR",
    "MAXIM_TOMATO",
    "ENERGY_DRINK",
    "SPARKLING_STAR",
    "ONE_UP",
    "KIRBY_ITEM",
]

for o in reader.standardise_list(args.offsets):
    offset = int(o, 16)
    data = reader.get_rom_bytes(offset, 9)

    flag_str = ""
    for f, s in flags:
        if data[0] & f != 0:
            flag_str += s + " | "
    flag_str = flag_str[:-3]

    x_box = data[1] * 2
    y_box = data[2] * 2

    properties = ""
    len = None

    if "PROPERTY_2" in flag_str:
        properties = f"{flag_str}, {x_box}, {y_box}, ${data[3]:02x}"
        len = 4
    elif "PROPERTY_PERSISTENT" in flag_str:
        item = items[data[3]]

        data_ptr = data[4] + data[5] * 0x100
        abs_ptr = data_ptr + 0x1c000 - 0x4000
        data_str = syms[abs_ptr] if abs_ptr in syms else f"${data_ptr:04x}"

        properties = f"{flag_str}, {x_box}, {y_box}, {item}, {data_str}"
        len = 6
    else:
        damage = data[3]
        hp = data[4]
        unk = data[5]
        score = data[6] * 10

        data_ptr = data[7] + data[8] * 0x100
        abs_ptr = data_ptr + 0x3c000 - 0x4000
        data_str = syms[abs_ptr] if abs_ptr in syms else f"${data_ptr:04x}"
        properties = f"{flag_str}, {x_box}, {y_box}, {damage}, {hp}, ${unk:02x}, {score}, {data_str}"
        len = 9

    end_off = offset + len
    print(f"Properties_{o}::\n\tobject_properties {properties}\n; 0x{end_off:0x}")
