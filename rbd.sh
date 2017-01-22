#!/bin/bash

rbd create bar -s 1024 --image-format=2 --image-feature layering
rbd map bar
rbd unmap bar

echo "192.168.1.1:7000 name=admin,secret=AQDYCYNYncR4ORAA0t3K6cOj8wdYwgUR+Mi54w== mypool bar2" > /sys/bus/rbd/add
#/sys/bus/rbd/devices/0
echo 0 > /sys/bus/rbd/remove
