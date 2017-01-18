#!/bin/bash

id=$1
mkdir -p osd/$id

ceph osd create
ceph-osd -i $id --mkfs --mkkey

ceph auth add osd.$id osd 'allow *' mon 'allow profile osd' -i ./ceph.client.admin.keyring

node=node$id
ceph osd crush add-bucket $node host
ceph osd crush move $node root=default
ceph osd crush add osd.$id 1.0 host=$node
