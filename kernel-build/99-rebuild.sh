#!/bin/bash

./10-genkernel
./20-build-modules.sh
./30-genkernel-initramfs
./31-update-grub
