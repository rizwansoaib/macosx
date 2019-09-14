#!/bin/bash
fileid="1ckRZHQBaWvd5JBe123KfffzXe-_MIgo0"
filename="MacOSX.iso"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}