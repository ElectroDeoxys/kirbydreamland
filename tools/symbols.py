def read_symbols():
    symbols = {}

    with open("kirbydreamland.sym", "r") as file:
        for line in file.readlines():
            line = line.split(":")
            if len(line) != 2:
                continue
            offs = int(line[1][0:4], 16)
            bank = int(line[0], 16)

            absOffs = offs + (bank - 1) * 0x4000 if bank > 1 else offs
            symString = line[1].split()[1]
            if '.' in symString:
                continue
            symbols[absOffs] = symString

    return symbols
