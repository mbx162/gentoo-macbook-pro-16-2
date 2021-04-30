#!/bin/bash

  wd=$(cd $(dirname $0);pwd)
  pushd /usr/src/linux-5.11.13-gentoo-git
  for src in $(ls -1 ${wd}/patches); do
    src="${src%%::*}"
    src="${src##*/}"
    [[ $src = *.patch ]] || continue
    echo "Applying patch $src..."
    patch -Np1 < "${wd}/patches/$src"
    read -p succeeded?
  done