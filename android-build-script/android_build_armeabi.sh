#!/bin/bash

chmod a+x android_build.sh
source android_build.sh

#armeabi
ANDROID_ABI=armeabi
ANDROID_PLATFORM=android-14
ARCH=arm
COMPILATOR=arm-linux-androideabi-4.9
EABIARCH=arm-linux-androideabi
OPTIMIZE_CFLAGS="-O3 -fpic -fasm -Wno-psabi -fno-short-enums -fno-strict-aliasing -finline-limit=300 -mfloat-abi=softfp -mfpu=vfp -marm -march=armv6"
ADDITIONAL_CONFIGURE_FLAG="--enable-neon"
anroid_setup
anroid_build