#!/bin/bash

ceph-authtool --create-keyring ./ceph.mon.keyring --gen-key -n mon. --cap mon 'allow *'
ceph-authtool --create-keyring ./ceph.client.admin.keyring --gen-key -n client.admin --set-uid=0 --cap mon 'allow *' --cap osd 'allow *' --cap mds 'allow'
ceph-authtool ./ceph.mon.keyring --import-keyring ./ceph.client.admin.keyring
monmaptool --create --add a 127.0.0.1:6789 --fsid a7f64266-0894-4f1e-a635-d0aeaca0e993 ./monmap
monmaptool --add b 127.0.0.1:6790 ./monmap
monmaptool --add c 127.0.0.1:6791 ./monmap
