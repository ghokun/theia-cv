#!/bin/bash
mkdir build
cd build || exit
cmake ..
make
./opencv_test
cd .. || exit
rm -rf ./build
exit 0
