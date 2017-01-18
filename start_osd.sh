#!/bin/bash

id=$1

#ceph-osd -d -i $id
ceph-osd -i $id
