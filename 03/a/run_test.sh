#!/bin/sh

run_test () {
    echo testing $1.hdl
    tools/HardwareSimulator.sh projects/03/a/$1.tst
}

root=$(git rev-parse --show-toplevel)
if [ $? -ne 0 ];then
    exit
fi

cp $root/03/a/*.hdl $root/projects/03/a/
cd $root/

run_test Bit
run_test Register
run_test RAM8
run_test RAM64
