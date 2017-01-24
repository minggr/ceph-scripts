#!/bin/bash

mkdir $HOME/ceph-install
cd ceph
CXXFLAGS=-ggdb ./configure --prefix=$HOME/ceph-install --with-debug
make -j `getconf _NPROCESSORS_ONLN` && make install
