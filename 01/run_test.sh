#!/bin/sh

run_test () {
    echo testing $1.hdl
    tools/HardwareSimulator.sh projects/01/$1.tst
}

root=$(git rev-parse --show-toplevel)
if [ $? -ne 0 ];then
    exit
fi

cp $root/01/*.hdl $root/projects/01/
cd $root/

run_test Not
run_test And
run_test Or
run_test Xor
run_test Mux
run_test DMux
run_test Not16
run_test And16
run_test Or16
run_test Mux16
run_test Or8Way
run_test Mux4Way16
run_test Mux8Way16
run_test DMux4Way
run_test DMux8Way
