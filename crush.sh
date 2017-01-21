#!/bin/bash

ceph osd getcrushmap -o crush.map
crushtool -d crush.map -o crush.txt
