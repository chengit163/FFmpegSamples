#!/bin/bash

chmod a+x android_build.sh
source android_build.sh

#armeabi-v7a
ANDROID_ABI=armeabi-v7a
ANDROID_PLATFORM=android-14
ARCH=arm
COMPILATOR=arm-linux-androideabi-4.9
EABIARCH=arm-linux-androideabi
OPTIMIZE_CFLAGS=" -DANDROID -fPIC -ffunction-sections -funwind-tables -fstack-protector -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fomit-frame-pointer -fstrict-aliasing -funswitch-loops -finline-limit=300 "
ADDITIONAL_CONFIGURE_FLAG="--enable-neon"
anroid_setup
anroid_build