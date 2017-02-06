#!/bin/bash

mkdir $HOME/ceph-install
cd ceph
CXXFLAGS="-ggdb -g -O0" CFLAGS="-ggdb -g -O0" ./configure --prefix=$HOME/ceph-install --with-debug
make -j `getconf _NPROCESSORS_ONLN` && make install

#master branch
cd ceph
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX="/root/ceph-install" -DCMAKE_C_FLAGS="-ggdb -g -O0" -DBOOST_J=$(nproc) ..
make -j $(nproc) && make install
