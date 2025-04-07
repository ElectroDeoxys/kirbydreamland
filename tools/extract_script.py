import reader
import argparse
import symbols

parser = argparse.ArgumentParser(description='Extracts animation and motion scripts.')
parser.add_argument('offsets', metavar='offsets', type=str, nargs='+',
                    help='offset(s) to parse')

args = parser.parse_args()

syms = symbols.read_symbols()

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

def parseCreateObject(args):
    return parseWord(args[0:2]) + parseWord(args[2:4]) + parseWord(args[4:6])

xVelocities = { 0x00: "0", 0x70: "VEL_RIGHT_0_00", 0x71: "VEL_RIGHT_1_64TH", 0x72: "VEL_RIGHT_1_32TH", 0x73: "VEL_RIGHT_1_16TH", 0x74: "VEL_RIGHT_1_8TH", 0x75: "VEL_RIGHT_0_25", 0x76: "VEL_RIGHT_0_50", 0x77: "VEL_RIGHT_0_75", 0x78: "VEL_RIGHT_1_00", 0x79: "VEL_RIGHT_1_25", 0x7a: "VEL_RIGHT_2_00", 0x7b: "VEL_RIGHT_3_00", 0x7c: "VEL_RIGHT_4_00", 0x7d: "VEL_RIGHT_6_00", 0x7e: "VEL_RIGHT_8_00", 0x7f: "VEL_RIGHT_16_00", 0x80: "VEL_LEFT_0_00", 0x81: "VEL_LEFT_1_64TH", 0x82: "VEL_LEFT_1_32TH", 0x83: "VEL_LEFT_1_16TH", 0x84: "VEL_LEFT_1_8TH", 0x85: "VEL_LEFT_0_25", 0x86: "VEL_LEFT_0_50", 0x87: "VEL_LEFT_0_75", 0x88: "VEL_LEFT_1_00", 0x89: "VEL_LEFT_1_25", 0x8a: "VEL_LEFT_2_00", 0x8b: "VEL_LEFT_3_00", 0x8c: "VEL_LEFT_4_00", 0x8d: "VEL_LEFT_6_00", 0x8e: "VEL_LEFT_8_00", 0x8f: "VEL_LEFT_16_00" }
yVelocities = { 0x00: "0", 0x70: "VEL_DOWN_0_00", 0x71: "VEL_DOWN_1_64TH", 0x72: "VEL_DOWN_1_32TH", 0x73: "VEL_DOWN_1_16TH", 0x74: "VEL_DOWN_1_8TH", 0x75: "VEL_DOWN_0_25", 0x76: "VEL_DOWN_0_50", 0x77: "VEL_DOWN_0_75", 0x78: "VEL_DOWN_1_00", 0x79: "VEL_DOWN_1_25", 0x7a: "VEL_DOWN_2_00", 0x7b: "VEL_DOWN_3_00", 0x7c: "VEL_DOWN_4_00", 0x7d: "VEL_DOWN_6_00", 0x7e: "VEL_DOWN_8_00", 0x7f: "VEL_DOWN_16_00", 0x80: "VEL_UP_0_00", 0x81: "VEL_UP_1_64TH", 0x82: "VEL_UP_1_32TH", 0x83: "VEL_UP_1_16TH", 0x84: "VEL_UP_1_8TH", 0x85: "VEL_UP_0_25", 0x86: "VEL_UP_0_50", 0x87: "VEL_UP_0_75", 0x88: "VEL_UP_1_00", 0x89: "VEL_UP_1_25", 0x8a: "VEL_UP_2_00", 0x8b: "VEL_UP_3_00", 0x8c: "VEL_UP_4_00", 0x8d: "VEL_UP_6_00", 0x8e: "VEL_UP_8_00", 0x8f: "VEL_UP_16_00" }
sfx = {0x00: "SFX_00", 0x01: "SFX_INHALE", 0x02: "SFX_02", 0x03: "SFX_SWALLOW", 0x04: "SFX_JUMP", 0x05: "SFX_BUMP", 0x06: "SFX_DAMAGE", 0x07: "SFX_ENTER_DOOR", 0x08: "SFX_08", 0x09: "SFX_POWER_UP", 0x0a: "SFX_EXPLOSION", 0x0b: "SFX_RESTORE_HP", 0x0c: "SFX_WARP_STAR", 0x0d: "SFX_13", 0x0e: "SFX_14", 0x0f: "SFX_PUFF", 0x10: "SFX_STAR_SPIT", 0x11: "SFX_17", 0x12: "SFX_18", 0x13: "SFX_19", 0x14: "SFX_20", 0x15: "SFX_LOSE_LIFE", 0x16: "SFX_1UP", 0x17: "SFX_23", 0x18: "SFX_PAUSE_OFF", 0x19: "SFX_25", 0x1a: "SFX_CURSOR", 0x1b: "SFX_GAME_START", 0x1c: "SFX_28", 0x1d: "SFX_29", 0x1e: "SFX_30", 0x1f: "SFX_31", 0x20: "SFX_BOSS_DEFEAT", 0x21: "SFX_PAUSE_ON", 0x22: "SFX_34", 0x23: "SFX_35", 0xff: "SFX_NONE"}
music = {0x00: "MUSIC_BUBBLY_CLOUDS_INTRO", 0x01: "MUSIC_GREEN_GREENS_INTRO", 0x02: "MUSIC_INVINCIBILITY_CANDY", 0x03: "MUSIC_GAME_OVER", 0x04: "MUSIC_SPARKLING_STAR", 0x05: "MUSIC_TITLESCREEN", 0x06: "MUSIC_FLOAT_ISLANDS_INTRO", 0x07: "MUSIC_LIFE_LOST", 0x08: "MUSIC_BOSS_BATTLE", 0x09: "MUSIC_MINT_LEAF", 0x0a: "MUSIC_VICTORY", 0x0b: "MUSIC_CREDITS", 0x0c: "MUSIC_CASTLE_LOLOLO_INTRO", 0x0d: "MUSIC_GREEN_GREENS", 0x0e: "MUSIC_FLOAT_ISLANDS", 0x0f: "MUSIC_BUBBLY_CLOUDS", 0x10: "MUSIC_CASTLE_LOLOLO", 0x11: "MUSIC_KING_DEDEDE_BATTLE", 0x12: "MUSIC_MT_DEDEDE", 0xff: "MUSIC_NONE"}

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
    0xee: ("set_update_func", 4, parse2Words),
    0xef: ("clear_update_func", 0, None),
    0xf0: ("set_position", 2, parseByte),
    0xf1: ("position_offset", 2, parseByte),
    0xf2: ("set_rel_pos", 0, None),
    0xf3: ("set_abs_pos", 0, None),
    0xf4: ("set_value", 3, parseWordWithByte),
    0xf5: ("inc_value", 2, parseWord),
    0xf6: ("dec_value", 2, parseWord),
    0xf7: ("jump_if_flags", 5, parseWordByteWord),
    0xf8: ("jump_if_not_flags", 5, parseWordByteWord),
    0xf9: ("set_flags", 4, parseWord2Bytes),
    0xfa: ("jump_random", 3, parseByteWithWord),
    0xfb: ("jumptable_random", 1, parseByte),
    0xfc: ("create_object", 6, parseCreateObject),
    0xfd: ("script_call_random", 1, parseByte),
    0xfe: ("calltable_random", 1, parseByte),

    # higher order commands: script_exec
    0x100: ("set_anim_script", 2, None),
    0x101: ("set_motion_script", 2, None),
    0x102: ("set_object_properties", 2, None),
    0x103: ("set_pal_light", 0, None),
    0x104: ("set_pal_dark", 0, None),
    0x105: ("set_kirby_pos", 0, None),
    0x106: ("branch_kirby_pos", 4, None),
    0x107: ("branch_on_kirby_vertical_alignment", 4, None),

    # higher order commands: script_exec_arg
    0x200: ("play_sfx", 3, None),
    0x201: ("play_music", 3, None),
}

commandsWithNum = { 0xe6, 0xec, 0xed, 0x200, 0x201 }
commandsWithByte = { 0xfd }
commandsWith2Bytes = { 0xf0 }
commandsWith2Offsets = { 0xf1 }
commandsWithAddressAndByte = { 0xe9, 0xf4 }
commandsWithByteAndAddress = { 0xfa }
commandsWithAddressByteAddress = { 0xea, 0xf7, 0xf8 }
commandsWithAddress = { 0xe1, 0xe2, 0xe3, 0xe8, 0xf5, 0xf6, 0x100, 0x101, 0x102 }
commandsWith2Addresses = { 0xe5, 0xee, 0x106, 0x107 }
commandsWithAddressAnd2Bytes = { 0xf9 }
commandsWithTable = { 0xfb, 0xfe }

def getCommandString(cmdByte, args, addressLabels):
    cmdStr, nArgBytes, _ = commands[cmdByte]
    resStr = cmdStr
    if nArgBytes == 0:
        return resStr

    def parseAddress(a):
        if a in addressLabels:
            return addressLabels[a]
        elif a in syms:
            return syms[a]
        elif a == 0x0000:
            return "NULL"
        else:
            return "${:04x}".format(a % 0x8000)

    def convertToSignedInt(b):
        if b >= 0x80:
            return b - 0x100
        else:
            return b

    if cmdByte in commandsWithNum:
        return resStr + " {}".format(args[0])

    if cmdByte in commandsWithByte:
        return resStr + " ${:02x}".format(args[0])

    if cmdByte in commandsWith2Bytes:
        return resStr + " ${:02x}, ".format(args[0]) + "${:02x}".format(args[1])

    if cmdByte in commandsWith2Offsets:
        return resStr + " {}, ".format(convertToSignedInt(args[0])) + "{}".format(convertToSignedInt(args[1]))

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
    
    if cmdByte in commandsWithTable:
        resStr += " {}\n".format(len(args) - 1)
        for arg in args:
            resStr += "\tdw {}\n".format(parseAddress(arg))

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
                xVel = source[pos+0]
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

            if cmdByte in [0xe1, 0xe2]:
                absAddress = 0
                if cmdByte == 0xe1:
                    absAddress = (bank - 1) * 0x4000 + parsedCommands[-1][2][0]
                else:
                    absAddress = cmdPos + 1 + parsedCommands[-1][2][0]
                jumpAddresses.add(absAddress)
                parsedCommands[-1][2][0] = absAddress
                if absAddress < cmdPos:
                    break
            elif cmdByte == 0xe5:
                gfxScriptAddr = parsedCommands[-1][2][0]
                motionScriptAddr = parsedCommands[-1][2][1]
                if isMotionScript:
                    if motionScriptAddr == pos + 0x4000:
                        cmdByte = 0x100
                        parsedCommands[-1] = (cmdByte, cmdPos, [gfxScriptAddr])
                else:
                    if gfxScriptAddr == pos + 0x4000:
                        cmdByte = 0x101
                        parsedCommands[-1] = (cmdByte, cmdPos, [motionScriptAddr])

            elif cmdByte == 0xe8:
                funcAddr = parsedCommands[-1][2][0]
                if funcAddr in syms:
                    if syms[funcAddr] == "ScriptFunc_SetObjectProperties":
                        parsedCommands[-1] = (0x102, cmdPos, parseWord(source[pos : pos + 2]))
                        pos += 2
                    elif syms[funcAddr] == "ScriptFunc_SetObjectPalLight":
                        parsedCommands[-1] = (0x103, cmdPos, None)
                    elif syms[funcAddr] == "ScriptFunc_SetObjectPalDark":
                        parsedCommands[-1] = (0x104, cmdPos, None)
                    elif syms[funcAddr] == "ScriptFunc_SetKirbyPosition":
                        parsedCommands[-1] = (0x105, cmdPos, None)
                    elif syms[funcAddr] == "ScriptFunc_BranchOnKirbyRelativePosition":
                        parsedCommands[-1] = (0x106, cmdPos, parse2Words(source[pos : pos + 4]))
                        pos += 4
                    elif syms[funcAddr] == "ScriptFunc_BranchOnKirbyVerticalAlignment":
                        parsedCommands[-1] = (0x107, cmdPos, parse2Words(source[pos : pos + 4]))
                        pos += 4

            elif cmdByte == 0xe9:
                funcAddr = parsedCommands[-1][2][0]
                funcArg = parsedCommands[-1][2][1]
                if funcAddr in syms:
                    if syms[funcAddr] == "PlaySFX":
                        parsedCommands[-1] = (0x200, cmdPos, [sfx[funcArg]])
                    if syms[funcAddr] == "PlayMusic":
                        parsedCommands[-1] = (0x201, cmdPos, [music[funcArg]])

            elif cmdByte == 0xee:
                def convertAddress(addr):
                    return addr + (5 - 1) * 0x4000 if addr != 0x0000 else addr
                funcAddr1 = convertAddress(parsedCommands[-1][2][0])
                funcAddr2 = convertAddress(parsedCommands[-1][2][1])
                parsedCommands[-1] = (cmdByte, cmdPos, [funcAddr1, funcAddr2])

            elif cmdByte in [0xfb, 0xfe]:
                numEntries = parsedCommands[-1][2][0] + 1
                entries = []
                for _ in range(0, numEntries):
                    entries.append(parseWord(source[pos : pos + 2])[0])
                    pos += 2
                parsedCommands[-1] = (cmdByte, cmdPos, entries)

            if cmdByte == 0xe0 or cmdByte == 0xe4 or cmdByte == 0xe5:
                break # end of script

    addressLabels = {}
    for jumpAddress in jumpAddresses:
        addressLabels[jumpAddress] = ".asm_{:0x}".format(jumpAddress)

    # for the common case where the animation is a simple loop
    if len(addressLabels) == 1:
        for k, v in addressLabels.items():
            if k >= offset and k < offset + pos:
                addressLabels[k] = ".loop"

    label = "MotionScript" if isMotionScript else "AnimScript"
    outStr = label + "_{}:\n".format(o)
    for cmdByte, cmdPos, args in parsedCommands:
        if cmdPos in addressLabels:
            outStr += addressLabels[cmdPos] + "\n"
        if cmdByte < 0xe0:
            if isMotionScript:
                xVel = xVelocities[args[0]] if args[0] in xVelocities else str(args[0] / 8)
                yVel = yVelocities[args[1]] if args[1] in yVelocities else str(args[1] / 8)
                outStr += "\tset_velocities {:2d}".format(cmdByte) + ", {}".format(xVel) + ", {}\n".format(yVel)
            else:
                outStr += "\tframe {:2d}".format(cmdByte) + ", ${:04x}\n".format(args[0])
        else:
            outStr += "\t{}\n".format(getCommandString(cmdByte, args, addressLabels))

    outStr += "; 0x{:04x}".format(bank * 0x4000 + pos)
    print(outStr)
