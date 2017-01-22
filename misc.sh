#!/bin/bash

#change config on the fly
ceph --show-config
ceph tell mon.* injectargs '--mon_data_avail_warn 1'
