#!/bin/sh

# Author	KMS -	Martin Dubois, ing.
# Client	Coveloz
# Product	linux-socfpga
# File		env/create_hex.sh
# Usage		env/create_hex.sh

echo  Executing env/nios2_create_hex.sh

ALTERA=/altera/15.0
NIOS=$ALTERA/nios2eds
NIOS_BIN=$NIOS/bin
NIOS_BIN_GNU=$NIOS_BIN/gnu/H-x86_64-pc-linux-gnu/bin
NIOS_BOOT=$NIOS/components/altera_nios2/boot_loader_cfi.srec

export QUARTUS_ROOTDIR=$ALTERA/quartus

$NIOS_BIN/elf2flash --base=0x0 --input=vmlinux --end=0xffffff --reset=0x0 --boot=$NIOS_BOOT

if [ 0 != $? ] ; then
    echo  FATAL ERROR : elf2flash reported an error
    exit 1
fi

$NIOS_BIN_GNU/nios2-elf-objcopy -O ihex vmlinux.flash vmlinux.hex

if [ 0 != $? ] ; then
    echo  ERROR : nios2-elf-objcopy reported an error
    exit 2
fi

echo  OK : vmlinux.hex created

