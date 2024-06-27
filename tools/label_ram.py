import argparse
import re 
import warnings

parser = argparse.ArgumentParser(description='Labels RAM addresses.')
parser.add_argument('filenames', metavar='filenames', type=str, nargs='+',
                    help='filename(s) to parse')

args = parser.parse_args()

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
    addressPrefix = ""
    if 0xa000 <= address and address < 0xc000:
        fileStr = "src/sram.asm"
        addressPrefix = "s"
    elif 0xc000 <= address and address < 0xe000:
        fileStr = "src/wram.asm"
        addressPrefix = "w"
    elif 0xff80 <= address and address < 0xffff:
        fileStr = "src/hram.asm"
        addressPrefix = "h"
    else:
        raise ValueError("Not within allowed range: " + str(address))
    
    fileText = ""
    pos = None
    unlabeled = True

    with open(fileStr, 'r') as file:
        fileText = file.read()
        matches = re.finditer(".* ; [a-df][0-9a-f]{3}\n", fileText)
        for match in matches:
            curAddress = int(match.group()[-6:], 16)
            if curAddress > address:
                pos = match.start()
                break
            elif curAddress == address:
                unlabeled = False
                break

        if pos == None:
            pos = len(fileText)

    if unlabeled:
        with open(fileStr, 'w') as file:
            strToInsert = addressPrefix + "{:4x}".format(address) + ":: ; {:4x}\n".format(address) + "\tdb\n\n"
            newFileText = fileText[:pos] + strToInsert + fileText[pos:]
            file.write(newFileText)
    else:
        warnings.warn("Unhandled case: " + "{:4x}".format(address))
