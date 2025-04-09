import mmap
from math import floor as floor

def get_rom_bytes(offset, len):
# get len number of bytes from offset
    with open('baserom.gb') as rom:
        romMap = mmap.mmap(rom.fileno(), 0, access=mmap.ACCESS_READ)
        return romMap[offset : offset + len]

def get_rom_byte(offset):
# get one byte from offset
    return get_rom_bytes(offset, 1)

def get_pointer_at(offset):
# returns the abs offset of pointer at offset
    bank = int(offset / 0x4000) # round down
    return pointer_bytes_to_bank_offset(get_rom_bytes(offset, 2), bank)

def abs_offset_to_rel(offset):
    if offset >= 0x4000:
        return (offset % 0x4000) + 0x4000
    else:
        return offset

def pointer_bytes_to_offset(ptrBytes):
    assert(len(ptrBytes) == 3)
    return pointer_bytes_to_bank_offset(ptrBytes[1:2], ptrBytes[0])

def pointer_bytes_to_bank_offset(ptrBytes, bank):
    assert(len(ptrBytes) == 2)
    if bank == 0 or ptrBytes[1] < 0x40:
        return ptrBytes[0] + ptrBytes[1] * 0x100
    else:
        return (bank * 0x4000) + (ptrBytes[0] + ptrBytes[1] * 0x100) - 0x4000

def standardise_list(ls):
# sorts list 
    listSorted = sorted(ls)
    return list(dict.fromkeys(listSorted))

def offset_header_str(offset):
    return '; {:0x} ('.format(offset) + '{:02x}:'.format(floor(offset / 0x4000)) + '{:0x}'.format(abs_offset_to_rel(offset)) + ')'

def get_data_string(offset, len, suffix = 'Data_', export = False):
    out_str = suffix + '{:0x}'.format(offset)
    out_str += (': ', ':: ')[export] + offset_header_str(offset) + '\n'
    out_str += '{}' # for inserting the content
    out_str += '; 0x{:0x}\n'.format(offset + len)
    return out_str