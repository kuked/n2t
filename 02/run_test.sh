#!/bin/sh

run_test () {
    echo testing $1.hdl
    tools/HardwareSimulator.sh projects/02/$1.tst
}

root=$(git rev-parse --show-toplevel)
if [ $? -ne 0 ];then
    exit
fi

cp $root/02/*.hdl $root/projects/02/
cd $root/

run_test HalfAdder
