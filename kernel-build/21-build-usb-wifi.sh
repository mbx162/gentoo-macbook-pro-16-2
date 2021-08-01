#!/bin/bash
pushd modules/rtl8192eu-linux
make clean || exit 1
make -j9 || exit 1

mkdir -p /lib/modules/$(uname -r)/kernel/drivers/net/wireless
make install || exit 1
popd
