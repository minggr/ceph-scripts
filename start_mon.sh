#!/bin/bash

id=$1
mkdir -p mon/$id
ceph-mon --mkfs -i $id --monmap ./monmap --keyring ./ceph.mon.keyring
#ceph-mon -d -i $id
ceph-mon -i $id
