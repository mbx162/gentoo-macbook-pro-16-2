#!/bin/bash

export KERNELRELEASE=5.11.13-gentoo-x86_64-g26143c15c819-dirty

pushd modules/apple-bce-0.1
make clean || exit 1
make -j9 || exit 1
make install || exit 1
popd
pushd modules/apple-ibridge-0.1
make clean || exit 1
make -j9 || exit 1
make install || exit 1
popd