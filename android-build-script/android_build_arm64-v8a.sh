#!/bin/bash

chmod a+x android_build.sh
source android_build.sh

#arm64-v8a
ANDROID_ABI=arm64-v8a
ANDROID_PLATFORM=android-21
ARCH=arm64
COMPILATOR=aarch64-linux-android-4.9
EABIARCH=aarch64-linux-android
OPTIMIZE_CFLAGS=""
ADDITIONAL_CONFIGURE_FLAG="--enable-neon"
anroid_setup
anroid_build