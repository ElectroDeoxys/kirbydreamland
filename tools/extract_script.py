import reader
import argparse
import symbols
import re

parser = argparse.ArgumentParser(description='Extracts animation and motion scripts.')
parser.add_argument('offsets', metavar='offsets', type=str, nargs='+',
                    help='offset(s) to parse')

args = parser.parse_args()

syms = symbols.read_symbols()
ram = symbols.read_ram()

x_velocities = { 0X00: "0", 0X70: "VEL_RIGHT_0_00", 0X71: "VEL_RIGHT_1_64TH", 0X72: "VEL_RIGHT_1_32TH", 0X73: "VEL_RIGHT_1_16TH", 0X74: "VEL_RIGHT_1_8TH", 0X75: "VEL_RIGHT_0_25", 0X76: "VEL_RIGHT_0_50", 0X77: "VEL_RIGHT_0_75", 0X78: "VEL_RIGHT_1_00", 0X79: "VEL_RIGHT_1_25", 0X7A: "VEL_RIGHT_2_00", 0X7B: "VEL_RIGHT_3_00", 0X7C: "VEL_RIGHT_4_00", 0X7D: "VEL_RIGHT_6_00", 0X7E: "VEL_RIGHT_8_00", 0X7F: "VEL_RIGHT_16_00", 0X80: "VEL_LEFT_0_00", 0X81: "VEL_LEFT_1_64TH", 0X82: "VEL_LEFT_1_32TH", 0X83: "VEL_LEFT_1_16TH", 0X84: "VEL_LEFT_1_8TH", 0X85: "VEL_LEFT_0_25", 0X86: "VEL_LEFT_0_50", 0X87: "VEL_LEFT_0_75", 0X88: "VEL_LEFT_1_00", 0X89: "VEL_LEFT_1_25", 0X8A: "VEL_LEFT_2_00", 0X8B: "VEL_LEFT_3_00", 0X8C: "VEL_LEFT_4_00", 0X8D: "VEL_LEFT_6_00", 0X8E: "VEL_LEFT_8_00", 0X8F: "VEL_LEFT_16_00" }
y_velocities = { 0X00: "0", 0X70: "VEL_DOWN_0_00", 0X71: "VEL_DOWN_1_64TH", 0X72: "VEL_DOWN_1_32TH", 0X73: "VEL_DOWN_1_16TH", 0X74: "VEL_DOWN_1_8TH", 0X75: "VEL_DOWN_0_25", 0X76: "VEL_DOWN_0_50", 0X77: "VEL_DOWN_0_75", 0X78: "VEL_DOWN_1_00", 0X79: "VEL_DOWN_1_25", 0X7A: "VEL_DOWN_2_00", 0X7B: "VEL_DOWN_3_00", 0X7C: "VEL_DOWN_4_00", 0X7D: "VEL_DOWN_6_00", 0X7E: "VEL_DOWN_8_00", 0X7F: "VEL_DOWN_16_00", 0X80: "VEL_UP_0_00", 0X81: "VEL_UP_1_64TH", 0X82: "VEL_UP_1_32TH", 0X83: "VEL_UP_1_16TH", 0X84: "VEL_UP_1_8TH", 0X85: "VEL_UP_0_25", 0X86: "VEL_UP_0_50", 0X87: "VEL_UP_0_75", 0X88: "VEL_UP_1_00", 0X89: "VEL_UP_1_25", 0X8A: "VEL_UP_2_00", 0X8B: "VEL_UP_3_00", 0X8C: "VEL_UP_4_00", 0X8D: "VEL_UP_6_00", 0X8E: "VEL_UP_8_00", 0X8F: "VEL_UP_16_00" }
sfx = {0X00: "SFX_00", 0X01: "SFX_INHALE", 0X02: "SFX_02", 0X03: "SFX_SWALLOW", 0X04: "SFX_JUMP", 0X05: "SFX_BUMP", 0X06: "SFX_DAMAGE", 0X07: "SFX_ENTER_DOOR", 0X08: "SFX_08", 0X09: "SFX_POWER_UP", 0X0A: "SFX_EXPLOSION", 0X0B: "SFX_RESTORE_HP", 0X0C: "SFX_WARP_STAR", 0X0D: "SFX_13", 0X0E: "SFX_14", 0X0F: "SFX_PUFF", 0X10: "SFX_STAR_SPIT", 0X11: "SFX_17", 0X12: "SFX_18", 0X13: "SFX_19", 0X14: "SFX_20", 0X15: "SFX_LOSE_LIFE", 0X16: "SFX_1UP", 0X17: "SFX_23", 0X18: "SFX_PAUSE_OFF", 0X19: "SFX_25", 0X1A: "SFX_CURSOR", 0X1B: "SFX_GAME_START", 0X1C: "SFX_28", 0X1D: "SFX_29", 0X1E: "SFX_30", 0X1F: "SFX_31", 0X20: "SFX_BOSS_DEFEAT", 0X21: "SFX_PAUSE_ON", 0X22: "SFX_34", 0X23: "SFX_35", 0XFF: "SFX_NONE"}
music = {0X00: "MUSIC_BUBBLY_CLOUDS_INTRO", 0X01: "MUSIC_GREEN_GREENS_INTRO", 0X02: "MUSIC_INVINCIBILITY_CANDY", 0X03: "MUSIC_GAME_OVER", 0X04: "MUSIC_SPARKLING_STAR", 0X05: "MUSIC_TITLESCREEN", 0X06: "MUSIC_FLOAT_ISLANDS_INTRO", 0X07: "MUSIC_LIFE_LOST", 0X08: "MUSIC_BOSS_BATTLE", 0X09: "MUSIC_MINT_LEAF", 0X0A: "MUSIC_VICTORY", 0X0B: "MUSIC_CREDITS", 0X0C: "MUSIC_CASTLE_LOLOLO_INTRO", 0X0D: "MUSIC_GREEN_GREENS", 0X0E: "MUSIC_FLOAT_ISLANDS", 0X0F: "MUSIC_BUBBLY_CLOUDS", 0X10: "MUSIC_CASTLE_LOLOLO", 0X11: "MUSIC_KING_DEDEDE_BATTLE", 0X12: "MUSIC_MT_DEDEDE", 0XFF: "MUSIC_NONE"}

def parse_word(args):
    return args[0] + args[1] * 0x100

def parse_local_address(data):
    return (2, ('l', parse_word(data)))

def parse_call_address(data):
    return (2, ('c', parse_word(data)))

def parse_jump_offset(args):
    offs = args[0]
    if offs >= 0x80:
        offs = offs - 0x100
    return (1, ('j', offs))

def parse_anim_script(data):
    return (2, ('a', parse_word(data)))

def parse_motion_script(data):
    return (2, ('m', parse_word(data)))

def parse_properties(data):
    return (2, ('o', parse_word(data)))

def parse_int(data):
    return (1, ('i', data[0]))

def parse_signed(data):
    x = data[0]
    if x >= 0x80:
        x = x - 0x100
    return (1, ('i', x))

def parse_bank1_func(data):
    return (2, ('f1', parse_word(data)))

def parse_bank5_func(data):
    return (2, ('f5', parse_word(data)))

def parse_byte(data):
    return (1, ('b', data[0]))

def parse_compliment_byte(data):
    x = data[0] ^ 0xff
    return (1, ('b', x))

def parse_percent(data):
    x = data[0] * 100 / 0xff
    return (1, ('p', x))

def parse_wram_address(data):
    return (2, ('w', parse_word(data)))

SCRIPT_END = 0xe0
JUMP_ABS = 0xe1
JUMP_REL = 0xe2
SCRIPT_CALL = 0xe3
SCRIPT_RET = 0xe4
SET_SCRIPTS = 0xe5
SCRIPT_REPEAT = 0xe6
SCRIPT_REPEAT_END = 0xe7
SCRIPT_EXEC = 0xe8
SCRIPT_EXEC_ARG = 0xe9
JUMP_IF_EQUAL = 0xea
JUMPTABLE = 0xeb
SCRIPT_DELAY = 0xec
SCRIPT_ED = 0xed
SET_UPDATE_FUNC = 0xee
CLEAR_UPDATE_FUNC = 0xef
SET_POSITION = 0xf0
POSITION_OFFSET = 0xf1
SET_REL_POS = 0xf2
SET_ABS_POS = 0xf3
SET_VALUE = 0xf4
INC_VALUE = 0xf5
DEC_VALUE = 0xf6
JUMP_IF_FLAGS = 0xf7
JUMP_IF_NOT_FLAGS = 0xf8
SET_FLAGS = 0xf9
JUMP_RANDOM = 0xfa
JUMPTABLE_RANDOM = 0xfb
CREATE_OBJECT = 0xfc
SCRIPT_CALL_RANDOM = 0xfd
CALLTABLE_RANDOM = 0xfe
SET_ANIM_SCRIPT = 0x100
SET_MOTION_SCRIPT = 0x101
SET_OBJECT_PROPERTIES = 0x102
SET_PAL_LIGHT = 0x103
SET_PAL_DARK = 0x104
SET_KIRBY_POS = 0x105
BRANCH_KIRBY_POS = 0x106
BRANCH_ON_KIRBY_VERTICAL_ALIGNMENT = 0x107
PLAY_SFX = 0x200
PLAY_MUSIC = 0x201

commands = {
    SCRIPT_END: ("script_end", []),
    JUMP_ABS: ("jump_abs", [parse_call_address]),
    JUMP_REL: ("jump_rel", [parse_jump_offset]),
    SCRIPT_CALL: ("script_call", [parse_call_address]),
    SCRIPT_RET: ("script_ret", []),
    SET_SCRIPTS: ("set_scripts", [parse_anim_script, parse_motion_script]),
    SCRIPT_REPEAT: ("script_repeat", [parse_int]),
    SCRIPT_REPEAT_END: ("script_repeat_end", []),
    SCRIPT_EXEC: ("script_exec", [parse_bank1_func]),
    SCRIPT_EXEC_ARG: ("script_exec_arg", [parse_bank1_func, parse_byte]),
    JUMP_IF_EQUAL: ("jump_if_equal", [parse_wram_address, parse_byte, parse_local_address]),
    JUMPTABLE: ("jumptable", [parse_wram_address]),
    SCRIPT_DELAY: ("script_delay", [parse_int]),
    SCRIPT_ED: ("script_ed", [parse_int]),
    SET_UPDATE_FUNC: ("set_update_func", [parse_bank5_func, parse_anim_script]),
    CLEAR_UPDATE_FUNC: ("clear_update_func", []),
    SET_POSITION: ("set_position", [parse_int, parse_int]),
    POSITION_OFFSET: ("position_offset", [parse_signed, parse_signed]),
    SET_REL_POS: ("set_rel_pos", []),
    SET_ABS_POS: ("set_abs_pos", []),
    SET_VALUE: ("set_value", [parse_wram_address, parse_byte]),
    INC_VALUE: ("inc_value", [parse_wram_address]),
    DEC_VALUE: ("dec_value", [parse_wram_address]),
    JUMP_IF_FLAGS: ("jump_if_flags", [parse_wram_address, parse_byte, parse_local_address]),
    JUMP_IF_NOT_FLAGS: ("jump_if_not_flags", [parse_wram_address, parse_byte, parse_local_address]),
    SET_FLAGS: ("set_flags", [parse_wram_address, parse_compliment_byte, parse_byte]),
    JUMP_RANDOM: ("jump_random", [parse_percent, parse_local_address]),
    JUMPTABLE_RANDOM: ("jumptable_random", [parse_int]),
    CREATE_OBJECT: ("create_object", [parse_anim_script, parse_motion_script, parse_properties]),
    SCRIPT_CALL_RANDOM: ("script_call_random", [parse_byte, parse_call_address]),
    CALLTABLE_RANDOM: ("calltable_random", [parse_byte]),

    # higher order commands: script_exec
    SET_ANIM_SCRIPT: ("set_anim_script", []),
    SET_MOTION_SCRIPT: ("set_motion_script", []),
    SET_OBJECT_PROPERTIES: ("set_object_properties", []),
    SET_PAL_LIGHT: ("set_pal_light", []),
    SET_PAL_DARK: ("set_pal_dark", []),
    SET_KIRBY_POS: ("set_kirby_pos", []),
    BRANCH_KIRBY_POS: ("branch_kirby_pos", []),
    BRANCH_ON_KIRBY_VERTICAL_ALIGNMENT: ("branch_on_kirby_vertical_alignment", []),

    # higher order commands: script_exec_arg
    PLAY_SFX: ("play_sfx", []),
    PLAY_MUSIC: ("play_music", []),
}


def get_command_string(cmd_byte, args, address_labels, cur_bank):
    def format_address_in_bank(addr, bank, default_prefix):
        abs_offset = addr if bank == 0 else addr + (bank - 1) * 0x4000
        if abs_offset in address_labels:
            return address_labels[abs_offset]
        elif abs_offset in syms:
            return syms[abs_offset]
        else:
            return default_prefix + f"{abs_offset:0x}"

    def format_local_address(addr):
        return format_address_in_bank(addr, cur_bank, ".script_")

    def format_anim_script(addr):
        return format_address_in_bank(addr, 9, "AnimScript_")

    def format_motion_script(addr):
        return format_address_in_bank(addr, 0xc, "MotionScript_")

    def format_properties(addr):
        return format_address_in_bank(addr, 0, "Properties_")

    def format_func_bank1(addr):
        return format_address_in_bank(addr, 1, "Func_")

    def format_func_bank5(addr):
        return format_address_in_bank(addr, 5, "Func_")

    def format_wram(addr):
        if addr in ram:
            return ram[addr]
        else:
            return f"${addr:04x}"

    def format_percent(x):
        return f"{x:.0f} percent + 1"

    def format_pointer_table(ptrs):
        out_str = "\n"
        for ptr in ptrs:
            out_str += "\tdw {}\n".format(format_local_address(ptr))
        return out_str

    arg_formatter_map = {
        'l': format_local_address,
        'a': format_anim_script,
        'm': format_motion_script,
        'o': format_properties,
        'i': lambda x: f"{x}",
        'f1': format_func_bank1,
        'f5': format_func_bank5,
        'b': lambda x: f"${x:02x}",
        'p': format_percent,
        'w': format_wram,
        's': lambda s: s,
        't': format_pointer_table
    }

    cmd_str, _ = commands[cmd_byte]

    if len(args) == 0:
        return cmd_str

    res_str = cmd_str + ' '

    for arg_type, arg in args:
        if arg_type == 't':
            res_str = res_str[:-2]
        if arg_type == 'c':
            arg_type = 'a' if cur_bank == 0x9 else 'm'

        res_str += arg_formatter_map[arg_type](arg) + ', '

    return res_str[:-2]

out_str = ""

for o in reader.standardise_list(args.offsets):
    # cache whole bank
    offset = int(o, 16)
    bank = int(offset / 0x4000)
    is_motion_script = (bank == 0xc)
    source = reader.get_rom_bytes(bank * 0x4000, 0x4000)
    pos = offset % 0x4000

    parsed_commands = []
    jump_addresses = set()
    while True:
        cmd_pos = bank * 0x4000 + pos
        cmd_byte = source[pos]
        pos += 1

        if cmd_byte == 0xff:
            break

        if cmd_byte < 0xe0:
            if is_motion_script:
                x_vel = source[pos+0]
                y_vel = source[pos+1]
                pos += 2
                parsed_commands.append((cmd_byte, cmd_pos, [x_vel, y_vel]))
            else:
                pointer = source[pos] + source[pos + 1] * 0x100
                pos += 2
                parsed_commands.append((cmd_byte, cmd_pos, [pointer]))

            if cmd_byte == 0:
                break # permanent motion
        else:
            cmd_str, parse_funcs = commands[cmd_byte]
            args = []
            for parse_func in parse_funcs:
                n_bytes, arg = parse_func(source[pos : pos + 2])
                args.append(arg)
                pos += n_bytes
            parsed_commands.append((cmd_byte, cmd_pos, args))

            if cmd_byte in [JUMP_ABS, JUMP_REL]:
                abs_address = 0
                local_address = None
                if cmd_byte == JUMP_ABS:
                    abs_address = (bank - 1) * 0x4000 + parsed_commands[-1][2][0][1]
                    local_address = parsed_commands[-1][2][0][1]
                    parsed_commands[-1][2][0] = ('c', local_address)
                else:
                    abs_address = cmd_pos + 1 + parsed_commands[-1][2][0][1]
                    local_address = abs_address - (bank - 1) * 0x4000
                    jump_addresses.add(abs_address)
                    parsed_commands[-1][2][0] = ('l', local_address)
                if abs_address < cmd_pos and (pos + bank * 0x4000) not in jump_addresses:
                    break
            elif cmd_byte == SET_SCRIPTS:
                gfx_script_addr = parsed_commands[-1][2][0]
                motion_script_addr = parsed_commands[-1][2][1]
                if is_motion_script:
                    if motion_script_addr[1] == pos + 0x4000:
                        cmd_byte = SET_ANIM_SCRIPT
                        parsed_commands[-1] = (cmd_byte, cmd_pos, [gfx_script_addr])
                else:
                    if gfx_script_addr[1] == pos + 0x4000:
                        cmd_byte = SET_MOTION_SCRIPT
                        parsed_commands[-1] = (cmd_byte, cmd_pos, [motion_script_addr])

            elif cmd_byte == SCRIPT_EXEC:
                _, func_addr = parsed_commands[-1][2][0]
                if func_addr in syms:
                    if syms[func_addr] == "ScriptFunc_SetObjectProperties":
                        n, arg = parse_properties(source[pos : pos + 2])
                        parsed_commands[-1] = (SET_OBJECT_PROPERTIES, cmd_pos, [arg])
                        pos += n
                    elif syms[func_addr] == "ScriptFunc_SetObjectPalLight":
                        parsed_commands[-1] = (SET_PAL_LIGHT, cmd_pos, [])
                    elif syms[func_addr] == "ScriptFunc_SetObjectPalDark":
                        parsed_commands[-1] = (SET_PAL_DARK, cmd_pos, [])
                    elif syms[func_addr] == "ScriptFunc_SetKirbyPosition":
                        parsed_commands[-1] = (SET_KIRBY_POS, cmd_pos, [])
                    elif syms[func_addr] == "ScriptFunc_BranchOnKirbyRelativePosition" or syms[func_addr] == "ScriptFunc_BranchOnKirbyVerticalAlignment":
                        n1, arg1 = parse_local_address(source[pos : pos + 2])
                        n2, arg2 = parse_local_address(source[pos + 2: pos + 4])
                        jump_addresses.add(arg1[1] + (bank - 1) * 0x4000)
                        jump_addresses.add(arg2[1] + (bank - 1) * 0x4000)
                        parsed_commands[-1] = (BRANCH_KIRBY_POS if syms[func_addr] == "ScriptFunc_BranchOnKirbyRelativePosition" else BRANCH_ON_KIRBY_VERTICAL_ALIGNMENT, cmd_pos, [arg1, arg2])
                        pos += n1 + n2

            elif cmd_byte == SCRIPT_EXEC_ARG:
                _, func_addr = parsed_commands[-1][2][0]
                _, func_arg = parsed_commands[-1][2][1]
                if func_addr in syms:
                    if syms[func_addr] == "PlaySFX":
                        parsed_commands[-1] = (PLAY_SFX, cmd_pos, [('s', sfx[func_arg])])
                    if syms[func_addr] == "PlayMusic":
                        parsed_commands[-1] = (PLAY_MUSIC, cmd_pos, [('s', music[func_arg])])

            elif cmd_byte in [JUMPTABLE_RANDOM, CALLTABLE_RANDOM]:
                num_entries = parsed_commands[-1][2][0][1] + 1
                entries = []
                for _ in range(0, num_entries):
                    ptr = parse_word(source[pos : pos + 2])
                    jump_addresses.add(ptr + (bank - 1) * 0x4000)
                    entries.append(ptr)
                    pos += 2
                parsed_commands[-1][2].append(('t', entries))
            elif cmd_byte == JUMPTABLE:
                # parse pointer table until we get to an entry
                # that doesn't look like a pointer
                entries = []
                while True:
                    ptr = parse_word(source[pos : pos + 2])
                    if ptr < 0x4000 or ptr > 0x8000:
                        break
                    jump_addresses.add(ptr + (bank - 1) * 0x4000)
                    entries.append(ptr)
                    pos += 2
                parsed_commands[-1][2].append(('t', entries))
            elif cmd_byte in [JUMP_IF_EQUAL, JUMP_IF_FLAGS, JUMP_IF_NOT_FLAGS]:
                jump_addresses.add(parsed_commands[-1][2][-1][1] + (bank - 1) * 0x4000)

            if cmd_byte in [SCRIPT_END, SCRIPT_RET, SET_SCRIPTS] and (pos + bank * 0x4000) not in jump_addresses:
                break # end of script

    address_labels = {}
    for jump_address in jump_addresses:
        address_labels[jump_address] = ".script_{:0x}".format(jump_address)

    # for the common case where the animation is a simple loop
    if len(address_labels) == 1:
        for k, v in address_labels.items():
            if k >= offset and k < (pos + bank * 0x4000):
                address_labels[k] = ".loop"

    #print(parsed_commands)

    label = "MotionScript" if is_motion_script else "AnimScript"
    out_str += label + f"_{o}:\n"
    for cmd_byte, cmd_pos, args in parsed_commands:
        if cmd_pos in address_labels:
            out_str += address_labels[cmd_pos] + "\n"
        if cmd_byte < 0xe0:
            if is_motion_script:
                x_vel = x_velocities[args[0]] if args[0] in x_velocities else str(args[0] / 8)
                y_vel = y_velocities[args[1]] if args[1] in y_velocities else str(args[1] / 8)
                out_str += f"\tset_velocities {cmd_byte:2d}, {x_vel}, {y_vel}\n"
            else:
                out_str += f"\tframe {cmd_byte:2d}, ${args[0]:04x}\n"
        else:
            out_str += "\t{}\n".format(get_command_string(cmd_byte, args, address_labels, bank))

    out_str += "; 0x{:04x}\n\n".format(bank * 0x4000 + pos)

out_str = re.sub(r"; 0x([a-f0-9]{5})\n(\n.+)\1:", lambda m: m[2] + m[1] + ":", out_str)
print(out_str)
