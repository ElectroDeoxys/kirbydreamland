import reader
import argparse
import symbols

parser = argparse.ArgumentParser(description='Extracts level object data.')
parser.add_argument('offsets', metavar='offsets', type=str, nargs='+',
                    help='offset(s) to parse')

args = parser.parse_args()

syms = symbols.read_symbols()

itemProperties = {
    "WarpStarFloorProperties",
    "WarpStarFloatingProperties",
    "EnergyDrinkProperties",
    "MaximTomatoProperties",
    "BombProperties",
    "MikeProperties",
    "SpicyFoodProperties",
    "InvincibilityCandyProperties"
}

def parseSigned(b):
    return b if b < 0x80 else b-0x100

offsetsSet = { o for o in args.offsets } # remove duplicates
offsets = sorted([o for o in offsetsSet]) # sort offsets

for o in offsets:
    offset = int(o, 16)
    objData = reader.getROMBytes(offset, 11)

    x = objData[0]
    y = objData[1]
    xOffs = parseSigned(objData[2])
    yOffs = parseSigned(objData[3])

    animScriptOffset = (objData[4] + (objData[5] << 8)) - 0x4000 + 0x20000
    animScript = syms[animScriptOffset] if animScriptOffset in syms else "AnimScript_{:0x}".format(animScriptOffset)

    motionScriptOffset = (objData[6] + (objData[7] << 8)) - 0x4000 + 0x10000
    motionScript = syms[motionScriptOffset] if motionScriptOffset in syms else "MotionScript_{:0x}".format(motionScriptOffset)

    propertiesOffset = objData[8] + (objData[9] << 8)
    properties = syms[propertiesOffset] if propertiesOffset in syms else "Properties_{:0x}".format(propertiesOffset)

    outStr = "LevelObject_{}:\n".format(o)
    outStr += "\tobject {}, {}, {}, {}, {}, {}, {}".format(x, y, xOffs, yOffs, animScript, motionScript, properties)

    # item properties have an extra byte for its consumable index
    if properties in itemProperties:
        outStr += ", {}".format(objData[10])
    print(outStr)
