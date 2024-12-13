#!/usr/bin/env python3#
import subprocess
import math
import argparse

# global vals
banks = 0x10

def main():
    parser = argparse.ArgumentParser(description='Progress checker for kirbydreamland')
    parser.add_argument('-m', '--mapfile', default=None, type=argparse.FileType('r'), help="Turns on Overlay Section report using given map file.")
    parser.add_argument('-s', '--symfile', default=None, type=argparse.FileType('r'), help="Turns on Unnamed Symbol report using given sym file")
    parser.add_argument('-f', '--function_source', action='store_true', help='Shows a breakdown of what bank each unnamed function comes from. Ignores if symfile report is off')
    parser.add_argument('-o', '--other_unnamed', action='store_true', help='Shows all other unnamed symbols and a count of how many there are. Ignores if symfile report is off')
    parser.add_argument('--list_funcs', nargs="+", default=None, help="Lists every unnamed function in the given banks. WILL BE LONG. ignores if symfile report is off")

    args = parser.parse_args()

    if args.mapfile != None:
        reportOverlaySections(args.mapfile)
        print("\n")

    if args.symfile != None:
        # parse the list command
        listBankSet = set([])
        if args.list_funcs != None:
            listBankSet = parseBankList(args.list_funcs)
        reportUnnamedSymbols(args.symfile,listBankSet, args.function_source, args.other_unnamed)

def reportOverlaySections(mapFile):
    data = mapFile.read().split("\n")
    incromByteTotal = 0
    incromBytes = {}
    curBank = 0

    for line in data:
        # ignore the actual definition of the macro
        if 'TOTAL EMPTY' in line:
            splitline = line.split('$')
            total = int(splitline[1][0:4], 16)
            incromBytes[curBank] = total
            incromByteTotal += total
            curBank += 1
        elif line == '\tEMPTY':
            incromBytes[curBank] = 0x4000
            incromByteTotal += 0x4000
            curBank += 1

    print("Total: " + str(incromByteTotal) + " bytes (" + "{0:.2f}".format(100.0 - incromByteTotal / (0x4000 * banks) * 100) + "%)")
    print("Made up of the following: ")
    for i in range(0,banks):
        if incromBytes[i] == 0:
            continue

        bankName= "bank" + format(i,"02x") + ": "
        if i == 0:
            bankName = "home:   "
        bytesString = str(incromBytes[i])
        formattingStrings = " "*(8-len(bytesString)) 
        print(bankName + bytesString + formattingStrings + "bytes (" + "{0:.2f}".format(100.0 - incromBytes[i] / 0x4000 * 100) + "%)")


# reads sym files and looks for instances of tcgdisasm's automatic symbols
def reportUnnamedSymbols(symfile, listBankSet, showFunctionBanks, showOtherUnnamed):
    data = symfile.read().split("\n")

    # format [ [ "type" : number ], ... ]
    typeCounts = []

    # to cut back on for loops I'll manually list the super common ones, such as Func
    funcCounts = [0]*banks
    funcCount = 1
    animScriptCount = 0
    motionScriptCount = 0
    wramCount = 0
    hramCount = 0

    labelTotal = 0
    localLabelTotal = 0
    animScriptLabelTotal = 0
    motionScriptLabelTotal = 0
    unnamedLocalLabelTotal = 0
    unnamedLabelTotal = 0

    # expecting all lines to be formated as `bank:addr name`
    for line in data:

        splitline = line.split(":")

        # line not formatted as expected
        if len(splitline) < 2:
            continue

        # at this point it's probably some form of label
        if "." in line:
            localLabelTotal += 1
        else:
            labelTotal += 1
            if "AnimScript_" in line:
                animScriptLabelTotal += 1
            elif "MotionScript_" in line:
                motionScriptLabelTotal += 1

        bank = int(splitline[0], 16)
        splitline = splitline[1].split(" ")

        # line not formatted as expected
        if len(splitline) < 2:
            continue

        localAddr = int(splitline[0], 16)
        name = splitline[1]

        globalAddr = bank*0x4000 + localAddr
        if bank > 0:
            globalAddr -= 0x4000
        
        globalAddrString = format(globalAddr,"04x")
        if name.endswith(globalAddrString):

            # don't pay as much attention to local labels
            if "." in line:
                unnamedLocalLabelTotal += 1
                continue
            else:
                unnamedLabelTotal += 1

            labelType = name[0:len(globalAddrString)*-1]

            # take care of the common ones before looping
            if labelType == "Func_":
                if bank in listBankSet:
                    print("bank " + format(bank,'02x') + ":" + name)
                funcCounts[bank] += 1
                funcCount += 1
                continue
            elif labelType == "AnimScript_":
                animScriptCount += 1
                continue
            elif labelType == "MotionScript_":
                motionScriptCount += 1
                continue
            elif labelType == "w":
                wramCount += 1
                continue
            elif labelType == "h":
                hramCount += 1
                continue

            foundType = False
            for tc in typeCounts:
                if tc[0] == labelType:
                    tc[1] += 1
                    foundType = True

            if not foundType:
                typeCounts.append([labelType,1])

    # do some sorting.
    typeCounts = sorted(typeCounts, key = lambda x: x[1], reverse = True) 

    namedLabelTotal = labelTotal - unnamedLabelTotal
    namedLabelPercent = round((namedLabelTotal / labelTotal)*100, 3)
    namedLocalLabelTotal = localLabelTotal - unnamedLocalLabelTotal
    namedLocalLabelPercent = round((namedLocalLabelTotal / localLabelTotal)*100, 3)

    print("Named Labels: " + str(namedLabelTotal) + "/" + str(labelTotal) + " (" + str(namedLabelPercent) + "%)")
    print("Named Local Labels: " + str(namedLocalLabelTotal) + "/" + str(localLabelTotal) + " (" + str(namedLocalLabelPercent) + "%)")
    print()
    print("func count:   " + str(funcCount))
    if showFunctionBanks:
        for i in range(0,banks):
            if funcCounts[i] == 0:
                continue
            bank = "bank" + format(i,"02x") + ":"
            if i == 0:
                bank = "home:  "
            print("\t" + bank + " " + str(funcCounts[i]))

    print("animation scripts count: " + str(animScriptCount) + " ({:.2f}%)".format(animScriptCount / animScriptLabelTotal * 100))
    print("motion scripts count:    " + str(motionScriptCount) + " ({:.2f}%)".format(motionScriptCount / motionScriptLabelTotal * 100))
    print("wram count:              " + str(wramCount))
    print("hram count:              " + str(hramCount))
    if showOtherUnnamed:
        print()
        print("Additional types:")

        for tc in typeCounts:
            spaces = " " * (30 - len(tc[0]))
            if tc[1] == 1:
                print(tc[0])
                continue
            print(tc[0] + spaces + "x" + format(tc[1],"02"))

def parseBankList(strList):
    retSet = set([])
    for bankName in strList:
        if bankName == "home":
            retSet.add(0)
        elif bankName.startswith("bank"):
            retSet.add(int(bankName[4:],16))
        else:
            retSet.add(int(bankName,0))
    return retSet


if __name__ == '__main__':
    main()
