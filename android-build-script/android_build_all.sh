#!/bin/bash

chmod a+x android_build*.sh

#armeabi
./android_build_armeabi.sh

#armeabi-v7a
./android_build_armeabi-v7a.sh

#x86
./android_build_x86.sh

#arm64-v8a
./android_build_arm64-v8a.sh

#x86_64
./android_build_x86_64.sh