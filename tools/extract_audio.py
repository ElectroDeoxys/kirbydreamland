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

for o in args.offsets:
    offset = int(o, 16)

    def nextByte():
        curOffs = offset
        while True:
            yield reader.getROMByte(curOffs)[0]
            curOffs += 1

    print("AudioScript_{}:".format(o))

    gen = nextByte()

    while True:
        b = next(gen)
        if (b & 0xe0) == 0x20:
            pitch_val = b & 0xf
            pitch_val = pitch_val if (pitch_val < 0x8) else (pitch_val - 16)
            if (b & 0x10) != 0:
                print("\tpitch_shift_b {}".format(pitch_val))
            else:
                print("\tpitch_shift {}".format(pitch_val))
        elif (b & 0xe0) == 0x40:
            vol_val = b & 0xf
            if (b & 0x10) != 0:
                print("\tvolume_b {}".format(vol_val))
            else:
                print("\tvolume {}".format(vol_val))
        elif (b & 0xe0) == 0x60:
            vol_shift_val = b & 0xf
            vol_shift_val = vol_shift_val if (vol_shift_val < 0x8) else (vol_shift_val - 16)
            if (b & 0x10) != 0:
                print("\tvolume_shift_b {}".format(vol_shift_val))
            else:
                print("\tvolume_shift {}".format(vol_shift_val))
        elif (b & 0xe0) == 0x80:
            wave_val = waves[b & 0xf]
            print("\twave {}".format(wave_val))
        elif b == 0xf8:
            addr = next(gen) + (next(gen) << 8)
            print("\taudio_jump ${:04x}".format(addr))
            break
        elif b == 0xfa:
            addr = next(gen) + (next(gen) << 8)
            print("\taudio_call ${:04x}".format(addr))
        elif b == 0xfb:
            print("\taudio_ret")
            break
        elif b == 0xfc:
            print("\taudio_repeat {}".format(next(gen)))
        elif b == 0xfd:
            print("\taudio_repeat_end")
        elif b == 0xff:
            print("\tdb $ff ; end")
            break
        else:
            print("\tdb ${:02x}".format(b))

