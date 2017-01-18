#!/bin/bash

killall -9 ceph-osd
killall -9 ceph-mon

rm -rf ceph.client.admin.keyring ceph.mon.keyring monmap
rm -rf mon osd run
