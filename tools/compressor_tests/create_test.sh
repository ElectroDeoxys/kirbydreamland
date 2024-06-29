#!/bin/bash

echo -n $'\xe5' > data.lz
echo -n $'\x0f' >> data.lz
dd if=/dev/zero oflag=append conv=notrunc of=data.lz bs=1c count=1

echo -n $'\x25' >> data.lz
echo -n $'\x01' >> data.lz

echo -n $'\x42' >> data.lz
echo -n $'\xaa' >> data.lz
echo -n $'\xbb' >> data.lz

echo -n $'\x64' >> data.lz
echo -n $'\x01' >> data.lz

echo -n $'\x07' >> data.lz
echo -n $'\xa3' >> data.lz
echo -n $'\x1f' >> data.lz
echo -n $'\x84' >> data.lz
echo -n $'\x89' >> data.lz
echo -n $'\xf2' >> data.lz
echo -n $'\xff' >> data.lz
echo -n $'\xff' >> data.lz
echo -n $'\xe7' >> data.lz

echo -n $'\x86' >> data.lz
echo -n $'\x01' >> data.lz
echo -n $'\x22' >> data.lz

echo -n $'\xa4' >> data.lz
echo -n $'\x01' >> data.lz
echo -n $'\x14' >> data.lz

echo -n $'\xc4' >> data.lz
echo -n $'\x01' >> data.lz
echo -n $'\x20' >> data.lz

echo -n $'\xff' >> data.lz

cp data.lz data.lz.bak
