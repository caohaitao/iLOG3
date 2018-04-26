#!/bin/bash
CC=/opt/ARM/opt/FriendlyARM/toolschain/4.5.1/bin/arm-linux-gcc 
AR=/opt/ARM/opt/FriendlyARM/toolschain/4.5.1/bin/arm-linux-ar
CFLAGS="-std=c99 -O2 -Wall"

$CC $CFLAGS ../LOG.c
$CC $CFLAGS ../LOGS.c
$CC $CFLAGS ../LOGCONF.c
$CC $CFLAGS ../LOGSCONF.c

$AR rcs libIOG3-arm.a LOG.o LOGS.o LOGCONF.o LOGSCONF.o
