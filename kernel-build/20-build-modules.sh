#!/bin/bash

export KERNELRELEASE=5.13.0-gentoo-r1-x86_64-g2728d3aee48f-dirty
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