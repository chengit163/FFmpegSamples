#!/bin/bash

chmod a+x android_build.sh
source android_build.sh

#x86
ANDROID_ABI=x86
ANDROID_PLATFORM=android-14
ARCH=x86
COMPILATOR=x86-4.9
EABIARCH=i686-linux-android
OPTIMIZE_CFLAGS="-O3 -DANDROID -Dipv6mr_interface=ipv6mr_ifindex -fasm -Wno-psabi -fno-short-enums -fno-strict-aliasing -fomit-frame-pointer -march=k8 -march=i686 -mtune=intel -mssse3 -mfpmath=sse -m32"
ADDITIONAL_CONFIGURE_FLAG="--disable-asm"
anroid_setup
anroid_build