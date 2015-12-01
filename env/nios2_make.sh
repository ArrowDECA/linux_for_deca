#!/bin/sh

# Author	:	KMS	-	Martin Dubois, ing.
# Client	:	Coveloz
# Product	:	linux-socfpga
# Fichier	:	env/nios2_make.sh
# Usage		:	./env/nios2_make.sh [target]

echo  Executing env/nios2_make.sh $1

export PATH=/CodeSourcery/Sourcery_CodeBench_Lite_for_Nios_II_GNU_Linux/bin/:$PATH
export ARCH=nios2
export CROSS_COMPILE=nios2-linux-gnu-

make $1

if [ 0 != $? ] ; then
    echo  ERROR : make reported an error
    exit 1
fi

echo  OK : make completed normaly

