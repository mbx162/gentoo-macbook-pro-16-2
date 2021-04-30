# gentoo-macbook-pro-16-2
code required to run gentoo on macbook pro 16,2

## Steps to Reproduce

* Get LiveCD and flush it on a USB stick (C2A Adapter) hthttps://github.com/marcosfad/mbp-ubuntu
* See working NVME, almost working keyboard/touchbar, wifi (tplink/rtl)
* Install (to get a working /boot with efi&co, cannot be done from gentoo)
* Setup kernel patch&build environment configure a kernel build bce and ib modules
* Setup gentoo disk, stage & chroot
* Hack genkernel to load bce on boot and deploy kernel (/usr/share/genkernel/arch/x86_64/modules_load should include industrialio_triggered_buffer apple-bce in MODULES_USB)
* boot-loop-boot-until in system
* setup the system

## Things found on the way:

* several branches, forks and developers that publish code on github. none worked out of the box. what did work was the code _in_ the live-cd
* keyboard works for luks lvm passphrase entry
* no wifi, no suspend

## Useful Links

https://github.com/Dunedan/mbp-2016-linux
https://wiki.t2linux.org/
