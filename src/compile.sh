#!/usr/bin/env bash

clang -O2 -Wall -Wunused -Wno-compare-distinct-pointer-types -Wno-pointer-sign \
-D__KERNEL__ -D__ASM_SYSREG_H \
-I $LINUX_HEADERS/source/include \
-I $LINUX_HEADERS/source/include/generated/uapi  \
-I $LINUX_HEADERS/source/arch/x86/include \
-I $LINUX_HEADERS/build/include \
-I $LINUX_HEADERS/build/arch/x86/include \
-I $LINUX_HEADERS/build/include/uapi \
-I $LINUX_HEADERS/build/include/generated/uapi \
-I $LINUX_HEADERS/build/arch/x86/include/generated \
-target bpf -c drop.c -o drop.o