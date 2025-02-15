#!/usr/bin/env bash

mkdir build
cd build

cmake -G Ninja -S .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_PREFIX_PATH="${PREFIX}"    \
    -DCXX_STD_VERSION=2011 \
    -DSET_OPTIMIZATION_FLAGS:BOOL=ON \
    -DUSE_LTO=ON \
    -DSTRICT_USE:BOOL=ON \
    -DUSE_ARC4:BOOL=ON \
    -DUSE_LZMA:BOOL=ON \
    -DUSE_DYNAMIC_UTIMENSAT:BOOL=ON \
    -DUSE_STATIC_LIBS:BOOL=OFF \
    -DLZMA_USE_STATIC_LIBS:BOOL=OFF \
    -DBoost_USE_STATIC_LIBS:BOOL=OFF \
    -DZLIB_USE_STATIC_LIBS:BOOL=OFF \
    -DBZip2_USE_STATIC_LIBS:BOOL=OFF \
    ;

cmake --build .

cmake --install .
