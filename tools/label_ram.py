import argparse
import re 

parser = argparse.ArgumentParser(description='Labels RAM addresses.')
parser.add_argument('filenames', metavar='filenames', type=str, nargs='+',
                    help='filename(s) to parse')

args = parser.parse_args()

wramFile = open("src/wram.asm", 'w')
sramFile = open("src/sram.asm", 'w')
hramFile = open("src/hram.asm", 'w')

addressSet = set()

for filename in args.filenames:
    with open(filename, 'r') as file:
        for line in file.readlines():
            line = line.split(';')[0] # discard comment
            match = re.search("(\\$[a-d][0-9a-f]{3})|(\\$ff[8-9a-f][0-9a-f])\\b", line)
            if match == None:
                continue
            addressSet.add(int(match.group()[1:], 16))

for address in addressSet:
    fileStr = ""
    if 0xa000 <= address and address < 0xc000:
        fileStr = "src/sram.asm"
    elif 0xc000 <= address and address < 0xe000:
        fileStr = "src/wram.asm"
    elif 0xff80 <= address and address < 0xffff:
        fileStr = "src/hram.asm"
    else:
        raise ValueError("Not within allowed range: " + str(address))
    with open(fileStr, 'r+') as file:
        matches = re.findall(" ; [a-df][0-9a-f]{3}", file.read())
        for match in matches:
            print(match.group())

