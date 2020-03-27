#!/bin/bash
mkdir build
cd build || exit
cmake ..
make
./opencv_test