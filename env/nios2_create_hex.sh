#!/bin/sh

# Author	KMS -	Martin Dubois, ing.
# Client	Coveloz
# Product	linux-socfpga
# File		env/create_hex.sh
# Usage		env/create_hex.sh

ALTERA=/altera/15.0
NIOS=$ALTERA/nios2eds
NIOS_BIN=$NIOS/bin
NIOS_BIN_GNU=$NIOS_BIN/gnu/H-x86_64-pc-linux-gnu/bin
NIOS_BOOT=$NIOS/components/altera_nios2/boot_loader_cfi.srec

export QUARTUS_ROOTDIR=$ALTERA/quartus

$NIOS_BIN/elf2flash --base=0x0 --input=vmlinux --end=0xffffff --reset=0x0 --boot=$NIOS_BOOT
$NIOS_BIN_GNU/nios2-elf-objcopy -O ihex vmlinux.flash vmlinux.hex



