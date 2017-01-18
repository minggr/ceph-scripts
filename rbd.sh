#!/bin/bash

rbd create bar -s 1024 --image-format=2 --image-feature layering
rbd map bar
rbd unmap bar
