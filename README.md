# gentoo-macbook-pro-16-2
code required to run gentoo on macbook pro 16,2

this is a ongoing project as long as i have to patch things to have a working machine

## Steps to Reproduce

* Get LiveCD and flush it on a USB stick (C2A Adapter) hthttps://github.com/marcosfad/mbp-ubuntu
* See working NVME, almost working keyboard/touchbar, wifi (tplink/rtl)
* Install (to get a working /boot with efi&co, cannot be done from gentoo)
* Setup kernel patch&build environment configure a kernel build bce and ib modules
* Setup gentoo disk, stage & chroot
* Hack genkernel to load bce on boot and deploy kernel
* boot-loop-boot-until in system
* setup the system

## Things found on the way:

* several branches, forks and developers that publish code on github. none worked out of the box. what did work was the code _in_ the live-cd
* no wifi, no suspend

## Things i add

* wifi: a 90degree usbc adapter and a rtl8192eu TP-Link TL-WN823N v2/v3 [Realtek RTL8192EU]
  https://github.com/clnhub/rtl8192eu-linux.git (unmodified)
* in /usr/share/genkernel/arch/x86_64 i add the apple-bce module to the MODULES_CRYPTO:
  `apple-bce apple-ib-tb apple-ibridge apple-ib-als`

## Things that work

* ssd/processing/display/touchpad/keyboard

## Things that dont

* suspend to ram
* backlit keys
* touchbar reliably switching between fn/nonfn display (fn+f1 still changes brightness)
* alt+ctrl+f1 to switch to console
* multitouch on trackpad




## Useful Links

https://github.com/Dunedan/mbp-2016-linux
https://wiki.t2linux.org/
