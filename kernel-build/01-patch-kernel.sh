#!/bin/bash

  wd=$(cd $(dirname $0);pwd)
  pushd /usr/src/linux
  date > 01-patch.log
  for src in $(ls -1 ${wd}/patches); do
    src="${src%%::*}"
    src="${src##*/}"
    [[ $src = *.patch ]] || continue
    echo "Applying patch $src..." >> 01-patch.log
    patch -Np1 < "${wd}/patches/$src" >> 01-patch.log || exit 1
  done
  echo "yay success" >> 01-patch.log
  echo "done..."
