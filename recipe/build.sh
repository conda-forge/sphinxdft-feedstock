#!/bin/bash
export CXX=$GXX # the sphinx configure script does not recognise x86_64-conda_cos6-linux-gnu-c++ as g++ so we replace it with x86_64-conda_cos6-linux-gnu-g++ which works fine.
./configure --prefix=${PREFIX} \
    OBJCXX=${CXX} \
    CFLAGS="${CFLAGS}" \
    CPPFLAGS="${CPPFLAGS} -Wno-literal-suffix -D__STDC_FORMAT_MACROS" \
    --enable-mkl --enable-mklfft --with-mklpath=${PREFIX} \
    --disable-debug --with-sxmath --enable-pcre2
make all -j${CPU_COUNT}
make install 
