#!/bin/bash

PATH=`pwd`:$PATH

prepare_key.sh

mons="a"
for m in $mons; do
	mon.sh $m
	start_mon.sh $m	
done

osds="0 1 2 3 4"
for o in $osds; do
	osd.sh $o
	start_osd.sh $o
done
