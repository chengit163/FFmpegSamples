#!/bin/bash

chmod a+x android_build.sh
source android_build.sh

#x86_64
ANDROID_ABI=x86_64
ANDROID_PLATFORM=android-21
ARCH=x86_64
COMPILATOR=x86_64-4.9
EABIARCH=x86_64-linux-android
OPTIMIZE_CFLAGS=" -march=x86-64 -msse4.2 -mpopcnt -m64 -mtune=intel "
ADDITIONAL_CONFIGURE_FLAG="--disable-asm"
anroid_setup
anroid_build