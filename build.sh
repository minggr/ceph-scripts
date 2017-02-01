#!/bin/bash

mkdir $HOME/ceph-install
cd ceph
CXXFLAGS="-ggdb -g -O0" CFLAGS="-ggdb -g -O0" ./configure --prefix=$HOME/ceph-install --with-debug
make -j `getconf _NPROCESSORS_ONLN` && make install

#master branch
cmake -DCMAKE_BUILD_TYPE=Debug ..
