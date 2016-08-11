#!/bin/sh

run_test () {
    echo testing $1.hdl
    tools/HardwareSimulator.sh projects/03/b/$1.tst
}

root=$(git rev-parse --show-toplevel)
if [ $? -ne 0 ];then
    exit
fi

cp $root/03/b/*.hdl $root/projects/03/b/
cd $root/

run_test RAM512
run_test RAM4K
run_test RAM16K
