import reader
import argparse

parser = argparse.ArgumentParser(description='Extracts animation data.')
parser.add_argument('offsets', metavar='offsets', type=str, nargs='+',
                    help='offset(s) to parse')

args = parser.parse_args()

def parseByte(args):
    return args

def parseWord(args):
    return [args[0] + args[1] * 0x100]

def parse2Words(args):
    return parseWord(args[0:2]) + parseWord(args[2:4])

def parseWordWithByte(args):
    return parseWord(args[0:2]) + [args[2]]

def parseByteWithWord(args):
    return [args[0]] + parseWord(args[1:3])

def parseWordByteWord(args):
    return parseWord(args[0:2]) + [args[2]] + parseWord(args[3:5])

def parseWord2Bytes(args):
    return parseWord(args[0:2])+ [args[2], args[3]]

def parseAnimJr(args):
    offs = args[0]
    if offs >= 0x80:
        offs = offs - 0x100
    return [offs]

def parseAnimFC(args):
    return parseWord(args[0:2]) + parseWord(args[2:4]) + parseWord(args[4:6])

commands = {
    0xe0: ("script_end", 0, None),
    0xe1: ("jump_abs", 2, parseWord),
    0xe2: ("jump_rel", 1, parseAnimJr),
    0xe3: ("script_call", 2, parseWord),
    0xe4: ("script_ret", 0, None),
    0xe5: ("set_scripts", 4, parse2Words),
    0xe6: ("script_repeat", 1, parseByte),
    0xe7: ("script_repeat_end", 0, None),
    0xe8: ("script_exec", 2, parseWord),
    0xe9: ("script_exec_arg", 3, parseWordWithByte),
    0xea: ("jump_if_equal", 5, parseWordByteWord),
    0xeb: ("jumptable", 0, None),
    0xec: ("script_delay", 1, parseByte),
    0xed: ("script_ed", 1, parseByte),
    0xee: ("set_custom_func", 4, parse2Words),
    0xef: ("clear_custom_func", 0, None),
    0xf0: ("script_f0", 2, parseByte),
    0xf1: ("position_offset", 2, parseByte),
    0xf2: ("script_f2", 0, None),
    0xf3: ("script_f3", 0, None),
    0xf4: ("set_value", 3, parseWordWithByte),
    0xf5: ("inc_value", 2, parseWord),
    0xf6: ("dec_value", 2, parseWord),
    0xf7: ("jump_if_flags", 5, parseWordByteWord),
    0xf8: ("jump_if_not_flags", 5, parseWordByteWord),
    0xf9: ("script_f9", 4, parseWord2Bytes),
    0xfa: ("jump_random", 3, parseByteWithWord),
    0xfb: ("jumptable_random", 1, parseByte),
    0xfc: ("create_object", 6, parseAnimFC),
    0xfd: ("script_call_random", 1, parseByte),
    0xfe: ("calltable_random", 1, parseByte),

    # higher order commands
    0x100: ("set_gfx_script", 0, None),
    0x101: ("set_motion_script", 0, None),
}

commandsWithByte = { 0xe6, 0xec, 0xed, 0xfb, 0xfd, 0xfe }
commandsWith2Bytes = { 0xf0, 0xf1 }
commandsWithAddressAndByte = { 0xe9, 0xf4 }
commandsWithByteAndAddress = { 0xfa }
commandsWithAddressByteAddress = { 0xea, 0xf7, 0xf8 }
commandsWithAddress = { 0xe1, 0xe2, 0xe3, 0xe8, 0xf5, 0xf6 }
commandsWith2Addresses = { 0xe5, 0xee }
commandsWithAddressAnd2Bytes = { 0xf9 }

def getCommandString(cmdByte, args, addressLabels):
    cmdStr, nArgBytes, parseFunc = commands[cmdByte]
    resStr = cmdStr
    if nArgBytes == 0:
        return resStr

    def parseAddress(a):
        if a in addressLabels:
            return addressLabels[a]
        else:
            return "${:04x}".format(a)

    if cmdByte in commandsWithByte:
        return resStr + " ${:02x}".format(args[0])

    if cmdByte in commandsWith2Bytes:
        return resStr + " ${:02x}, ".format(args[0]) + "${:02x}".format(args[1])

    if cmdByte in commandsWithAddressAndByte:
        return resStr + " " + parseAddress(args[0]) + ", ${:02x}".format(args[1])

    if cmdByte in commandsWithByteAndAddress:
        return resStr + " " + "${:02x}, ".format(args[0]) + parseAddress(args[1])

    if cmdByte in commandsWithAddressByteAddress:
        return resStr + " " + parseAddress(args[0]) + ", ${:02x}, ".format(args[1]) + parseAddress(args[2])

    if cmdByte in commandsWithAddress:
        return resStr + " " + parseAddress(args[0])

    if cmdByte in commandsWith2Addresses:
        return resStr + " " + parseAddress(args[0]) + ", " + parseAddress(args[1])

    if cmdByte in commandsWithAddressAnd2Bytes:
        return resStr + " " + parseAddress(args[0]) + ", ${:02x}".format(args[1]) + ", ${:02x}".format(args[2])

    if cmdByte == 0xfc:
        return resStr + " " + parseAddress(args[0]) + ", " + parseAddress(args[1]) + ", " + parseAddress(args[2])

    return resStr

for o in args.offsets:
    # cache whole bank
    offset = int(o, 16)
    isMotionScript = (offset >= 0x10000 and offset < 0x14000)
    bank = int(offset / 0x4000)
    source = reader.getROMBytes(bank * 0x4000, 0x4000)
    pos = offset % 0x4000

    parsedCommands = []
    jumpAddresses = set()
    while True:
        cmdPos = bank * 0x4000 + pos
        cmdByte = source[pos]
        pos += 1

        if cmdByte == 0xff:
            break

        if cmdByte < 0xe0:
            if isMotionScript:
                xVel = source[pos]
                yVel = source[pos+1]
                pos += 2
                parsedCommands.append((cmdByte, cmdPos, [xVel, yVel]))
            else:
                pointer = source[pos] + source[pos + 1] * 0x100
                pos += 2
                parsedCommands.append((cmdByte, cmdPos, [pointer]))

            if cmdByte == 0:
                break # permanent motion
        else:
            cmdStr, nArgBytes, parseFunc = commands[cmdByte]
            args = []
            if parseFunc != None:
                args = parseFunc(source[pos : pos + nArgBytes])
            pos += nArgBytes
            parsedCommands.append((cmdByte, cmdPos, args))

            if cmdByte == 0xe1 or cmdByte == 0xe2:
                absAddress = 0
                if cmdByte == 0xe1:
                    absAddress = (bank - 1) * 0x4000 + parsedCommands[-1][2][0]
                else:
                    absAddress = cmdPos + 1 + parsedCommands[-1][2][0]
                jumpAddresses.add(absAddress)
                parsedCommands[-1][2][0] = absAddress
                if absAddress < cmdPos:
                    break

            if cmdByte == 0xe0 or cmdByte == 0xe4:
                break # end of script

    addressLabels = {}
    for jumpAddress in jumpAddresses:
        addressLabels[jumpAddress] = ".asm_{:0x}".format(jumpAddress)

    # for the common case where the animation is a simple loop
    if len(addressLabels) == 1:
        for k, v in addressLabels.items():
            addressLabels[k] = ".loop"

    label = "MotionScript" if isMotionScript else "GfxScript"
    outStr = label + "_{}:\n".format(o)
    for cmdByte, cmdPos, args in parsedCommands:
        if cmdPos in addressLabels:
            outStr += addressLabels[cmdPos] + "\n"
        if cmdByte < 0xe0:
            if isMotionScript:
                outStr += "\tset_velocities {:2d}".format(cmdByte) + ", ${:02x}".format(args[0]) + ", ${:02x}\n".format(args[1])
            else:
                outStr += "\tframe {:2d}".format(cmdByte) + ", ${:04x}\n".format(args[0])
        else:
            outStr += "\t{}\n".format(getCommandString(cmdByte, args, addressLabels))

    outStr += "; 0x{:04x}".format(bank * 0x4000 + pos)
    print(outStr)