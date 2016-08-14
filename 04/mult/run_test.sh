#!/bin/sh

assemble () {
    echo assembling $1.asm
    tools/Assembler.sh 04/mult/$1.asm
    cp 04/mult/$1.hack projects/04/mult/
}

run_test () {
    echo testing $1.hack
    tools/CPUEmulator.sh projects/04/mult/$1.tst
}

root=$(git rev-parse --show-toplevel)
if [ $? -ne 0 ];then
    exit
fi
cd $root/

assemble Mult
run_test Mult

