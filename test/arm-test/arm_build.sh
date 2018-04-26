#!/bin/bash
CC=/opt/ARM/opt/FriendlyARM/toolschain/4.5.1/bin/arm-linux-gcc

CFLAGS="-std=c99 -O2 -Wall"

$CC $CFLAGS -I ../../src/ -c main.c
$CC $CFLAGS -o arm-main main.o ../../src/arm_build/libIOG3-arm.a
