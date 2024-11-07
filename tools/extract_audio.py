import reader
import argparse

parser = argparse.ArgumentParser(description='Extracts audio data.')
parser.add_argument('offsets', metavar='offsets', type=str, nargs='+',
                    help='offset(s) to parse')

args = parser.parse_args()

waves = {
    0: "WAVEDUTY_12_5",
    1: "WAVEDUTY_25",
    2: "WAVEDUTY_50",
    3: "WAVEDUTY_75",
}

pan_modes = {
    1: "PAN_LEFT",
    2: "PAN_RIGHT",
    3: "PAN_CENTER",
}

tempo_modes = {
    0: "TEMPO_00",
    1: "TEMPO_01",
    2: "TEMPO_02",
    3: "TEMPO_03",
    4: "TEMPO_04",
    5: "TEMPO_05",
    6: "TEMPO_06",
    7: "TEMPO_07",
    8: "TEMPO_08",
    9: "TEMPO_09",
   10: "TEMPO_10",
   11: "TEMPO_11"
}

instruments = {
    0x00: "INSTRUMENT_00",
    0x01: "INSTRUMENT_01",
    0x02: "INSTRUMENT_02",
    0x03: "INSTRUMENT_03",
    0x04: "INSTRUMENT_04",
    0x05: "INSTRUMENT_05",
    0x06: "INSTRUMENT_06",
    0x07: "INSTRUMENT_07",
    0x08: "INSTRUMENT_08",
    0x09: "INSTRUMENT_09",
    0x0a: "INSTRUMENT_0A",
    0x0b: "INSTRUMENT_0B",
    0x0c: "INSTRUMENT_0C",
    0x0d: "INSTRUMENT_0D",
    0x0e: "INSTRUMENT_0E",
    0x0f: "INSTRUMENT_0F",
    0x10: "INSTRUMENT_10",
    0x11: "INSTRUMENT_11",
    0x12: "INSTRUMENT_12",
    0x13: "INSTRUMENT_13",
    0x14: "INSTRUMENT_14",
    0x15: "INSTRUMENT_15",
    0x16: "INSTRUMENT_16",
    0x17: "INSTRUMENT_17",
    0x18: "INSTRUMENT_18",
    0x19: "INSTRUMENT_19",
    0x1a: "INSTRUMENT_1A",
    0x1b: "INSTRUMENT_1B",
    0x1c: "INSTRUMENT_1C",
    0x1d: "INSTRUMENT_1D",
    0x1e: "INSTRUMENT_1E",
    0x1f: "INSTRUMENT_1F",
    0x20: "INSTRUMENT_20",
    0x21: "INSTRUMENT_21",
    0x22: "INSTRUMENT_22",
    0x23: "INSTRUMENT_23",
    0x24: "INSTRUMENT_24",
    0x25: "INSTRUMENT_25",
    0x26: "INSTRUMENT_26",
    0x27: "INSTRUMENT_27",
    0x28: "INSTRUMENT_28",
    0x29: "INSTRUMENT_29",
    0x2a: "INSTRUMENT_2A",
    0x2b: "INSTRUMENT_2B",
    0x2c: "INSTRUMENT_2C",
    0x2d: "INSTRUMENT_2D",
    0x2e: "INSTRUMENT_2E",
    0x2f: "INSTRUMENT_2F",
    0x30: "INSTRUMENT_30",
    0x31: "INSTRUMENT_31",
    0x32: "INSTRUMENT_32",
    0x33: "INSTRUMENT_33",
    0x34: "INSTRUMENT_34",
    0x35: "INSTRUMENT_35"
}

notes = {
    0x00: "C_0",
    0x01: "C#0",
    0x02: "D_0",
    0x03: "D#0",
    0x04: "E_0",
    0x05: "F_0",
    0x06: "F#0",
    0x07: "G_0",
    0x08: "G#0",
    0x09: "A_0",
    0x0a: "A#0",
    0x0b: "B_0",
    0x0c: "C_1",
    0x0d: "C#1",
    0x0e: "D_1",
    0x0f: "D#1",
    0x10: "E_1",
    0x11: "F_1",
    0x12: "F#1",
    0x13: "G_1",
    0x14: "G#1",
    0x15: "A_1",
    0x16: "A#1",
    0x17: "B_1",
    0x18: "C_2",
    0x19: "C#2",
    0x1a: "D_2",
    0x1b: "D#2",
    0x1c: "E_2",
    0x1d: "F_2",
    0x1e: "F#2",
    0x1f: "G_2",
    0x20: "G#2",
    0x21: "A_2",
    0x22: "A#2",
    0x23: "B_2",
    0x24: "C_3",
    0x25: "C#3",
    0x26: "D_3",
    0x27: "D#3",
    0x28: "E_3",
    0x29: "F_3",
    0x2a: "F#3",
    0x2b: "G_3",
    0x2c: "G#3",
    0x2d: "A_3",
    0x2e: "A#3",
    0x2f: "B_3",
    0x30: "C_4",
    0x31: "C#4",
    0x32: "D_4",
    0x33: "D#4",
    0x34: "E_4",
    0x35: "F_4",
    0x36: "F#4",
    0x37: "G_4",
    0x38: "G#4",
    0x39: "A_4",
    0x3a: "A#4",
    0x3b: "B_4",
    0x3c: "C_5",
    0x3d: "C#5",
    0x3e: "D_5",
    0x3f: "D#5",
    0x40: "E_5",
    0x41: "F_5",
    0x42: "F#5",
    0x43: "G_5",
    0x44: "G#5",
    0x45: "A_5",
    0x46: "A#5",
    0x47: "B_5"
}

def signed(x):
    return x if (x < 0x80) else (x - 0x100)

offsets_to_process =  args.offsets

while len(offsets_to_process) != 0:
    line_strings = []

    offset = int(offsets_to_process[0], 16)
    offsets_to_process = offsets_to_process[1:]

    new_offsets = []
    main_loop = None

    def nextByte():
        curOffs = offset
        while True:
            yield reader.getROMByte(curOffs)[0]
            curOffs += 1

    line_strings.append((offset, "AudioScript_{:x}:".format(offset)))

    gen = nextByte()

    while True:
        b = next(gen)
        if b == 0xe3:
            line_strings.append((offset, "\tpitch {}".format(signed(next(gen)))))
            offset += 2
        elif b == 0xf0:
            line_strings.append((offset, "\tvolume {}".format(next(gen))))
            offset += 2
        elif b == 0xf1:
            line_strings.append((offset, "\tvolume_shift {}".format(signed(next(gen)))))
            offset += 2
        elif b == 0xf2:
            line_strings.append((offset, "\ttempo_mode {}".format(tempo_modes[next(gen)])))
            offset += 2
        elif b == 0xf3:
            line_strings.append((offset, "\taudio_f3 ${:02x}".format(next(gen))))
            offset += 2
        elif b == 0xf4:
            line_strings.append((offset, "\taudio_f4 ${:02x}".format(next(gen))))
            offset += 2
        elif b == 0xf5:
            line_strings.append((offset, "\tbase_note {}".format(notes[next(gen)])))
            offset += 2
        elif b == 0xf6:
            line_strings.append((offset, "\tinstrument {}".format(instruments[next(gen)])))
            offset += 2
        elif b == 0xf7:
            line_strings.append((offset, "\taudio_f7 ${:02x}".format(next(gen))))
            offset += 2
        elif b == 0xf8:
            main_loop = next(gen) + (next(gen) << 8)
            line_strings.append((offset, "\taudio_jump .main_loop"))
            #line_strings.append((offset, "\taudio_jump ${:x}".format(main_loop)))
            break
        elif b == 0xfa:
            addr = next(gen) + (next(gen) << 8)
            line_strings.append((offset, "\taudio_call ${:04x}".format(addr)))

            addrStr = "{:x}".format(addr + 0x10000)
            if addrStr not in new_offsets:
                new_offsets.append(addrStr)
            offset += 3
        elif b == 0xfb:
            line_strings.append((offset, "\taudio_ret"))
            break
        elif b == 0xfc:
            line_strings.append((offset, "\taudio_repeat {}".format(next(gen))))
            offset += 2
        elif b == 0xfd:
            line_strings.append((offset, "\taudio_repeat_end"))
            offset += 1
        elif b == 0xfe:
            line_strings.append((offset, "\tpan {}".format(pan_modes[next(gen)])))
            offset += 2
        elif b == 0xff:
            line_strings.append((offset, "\taudio_end"))
            break
        else:
            arg = b >> 5
            if b & 0x1f == 0x10:
                if arg >= 6:
                    line_strings.append((offset, "\trest_long {}".format(next(gen))))
                    offset += 2
                else:
                    line_strings.append((offset, "\trest {}".format(arg)))
                    offset += 1
            else:
                note_offset = b & 0x1f
                note_offset = note_offset if (note_offset < 0x10) else note_offset - 0x20
                if arg >= 6:
                    line_strings.append((offset, "\tnote_long {}, {}".format(note_offset, next(gen))))
                    offset += 2
                else:
                    line_strings.append((offset, "\tnote {}, {}".format(note_offset, arg)))
                    offset += 1

    for o, s in line_strings:
        if main_loop == o - 0x10000:
            print(".main_loop")
        print("{}".format(s))
    print("")

    new_offsets.sort()
    offsets_to_process = new_offsets + offsets_to_process
