#!/bin/bash

mkdir $HOME/ceph-install
cd ceph
./configure --prefix=$HOME/ceph-install
make -j `getconf _NPROCESSORS_ONLN` && make install
