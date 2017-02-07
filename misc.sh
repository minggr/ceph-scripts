#!/bin/bash

#change config on the fly
ceph --show-config
ceph tell mon.* injectargs '--mon_data_avail_warn 1'

ceph osd pool create mypool 100

#set open files
ulimit -n 1024000


#create rbd EC pool
ceph osd pool create hot-storage 100
ceph osd pool create myecpool 100 100 erasure
ceph osd tier add myecpool hot-storage
ceph osd tier cache-mode hot-storage writeback
ceph osd tier set-overlay myecpool hot-storage
rbd create --size 10G myecpool/myvolume
