#!/bin/bash
export CXX=$GXX # the sphinx configure script does not recognise x86_64-conda_cos6-linux-gnu-c++ as g++ so we replace it with x86_64-conda_cos6-linux-gnu-g++ which works fine. 
./configure OBJCXX=${GXX} --disable-debug --with-sxmath --enable-mkl --prefix=${PREFIX} --with-mklpath=${PREFIX} --enable-mklfft --enable-pcre2
make all -j${CPU_COUNT}
make install 
