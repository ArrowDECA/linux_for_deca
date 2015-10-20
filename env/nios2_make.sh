#!/bin/sh

# Author	:	KMS	-	Martin Dubois, ing.
# Client	:	Coveloz
# Product	:	linux-socfpga
# Fichier	:	env/make.sh
# Usage		:	./env/make.sh [target]

export PATH=/CodeSourcery/Sourcery_CodeBench_Lite_for_Nios_II_GNU_Linux/bin/:$PATH
export ARCH=nios2
export CROSS_COMPILE=nios2-linux-gnu-

make $1

