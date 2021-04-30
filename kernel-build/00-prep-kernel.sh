#!/bin/bash

  wd=$(cd $(dirname $0);pwd)
  cd /usr/src/linux
  rm -rf linux-5.10.12
  rm linux
  tar xzf ${wd}/linux-5.10.12.tar.gz
  ln -s linux-5.10.12 linux
  cp ${wd}/linux-5.10.12.config linux/.config
