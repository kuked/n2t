#!/bin/sh

root=$(git rev-parse --show-toplevel)
if [ $? -ne 0 ];then
    exit
fi
cd $root/
tools/Assembler.sh 04/fill/Fill.asm

cp 04/fill/Fill.hack projects/04/fill/
