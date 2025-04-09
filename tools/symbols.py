def read_symbols():
    symbols = {}

    with open("kirbydreamland.sym", "r") as file:
        for line in file.readlines():
            line = line.split(":")
            if len(line) != 2:
                continue
            offs = int(line[1][0:4], 16)
            bank = int(line[0], 16)

            if offs > 0x8000:
                continue

            absOffs = offs + (bank - 1) * 0x4000 if bank > 1 else offs
            symString = line[1].split()[1]
            if '.' in symString:
                continue
            symbols[absOffs] = symString

    return symbols

def read_ram():
    ram_symbols = {}

    with open("kirbydreamland.sym", "r") as file:
        for line in file.readlines():
            line = line.split(":")
            if len(line) != 2:
                continue
            offs = int(line[1][0:4], 16)

            if offs < 0x8000:
                continue

            symString = line[1].split()[1]
            ram_symbols[offs] = symString

    return ram_symbols
