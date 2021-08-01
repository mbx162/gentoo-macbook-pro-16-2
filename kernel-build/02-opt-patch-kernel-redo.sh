#!/bin/bash


  wd=$(cd $(dirname $0);pwd)
  pushd /usr/src/linux
  git clean -f
  git stash
  popd
  ./01-patch-kernel.sh
