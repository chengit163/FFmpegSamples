#!/bin/bash

ANDROID_NDK_OUTPUT=android-build
ANDROID_NDK_HOME=/home/tim/developers/android-ndk-r10e
ANDROID_NDK_PLATFORM=linux-x86_64


anroid_setup()
{
	export PREFIX=$(pwd)/$ANDROID_NDK_OUTPUT/$ANDROID_ABI
	export SYSROOT=$ANDROID_NDK_HOME/platforms/$ANDROID_PLATFORM/arch-$ARCH
	export TOOLCHAIN=$ANDROID_NDK_HOME/toolchains/$COMPILATOR/prebuilt/$ANDROID_NDK_PLATFORM
	export CROSS_COMPILE=$TOOLCHAIN/bin/$EABIARCH-
	export CC="${CROSS_COMPILE}gcc --sysroot=$PLATFORM"
	export PKG_CONFIG="${CROSS_COMPILE}pkg-config"
	export LD="${CROSS_COMPILE}ld"
	export NM="${CROSS_COMPILE}nm"
	
	echo "......................... setup($ANDROID_ABI) ........................."
	echo "ANDROID_ABI: $ANDROID_ABI"
	echo "ANDROID_PLATFORM: $ANDROID_PLATFORM"
	echo "ARCH: $ARCH"
	echo "PREFIX: $PREFIX"
	echo "SYSROOT: $SYSROOT"
	echo "TOOLCHAIN: $TOOLCHAIN"
	echo "CROSS_COMPILE: $CROSS_COMPILE"
	echo "OPTIMIZE_CFLAGS: $OPTIMIZE_CFLAGS"
	echo "ADDITIONAL_CONFIGURE_FLAG: $ADDITIONAL_CONFIGURE_FLAG"
	
	mkdir -p $PREFIX
}

#--disable-everything
anroid_build()
{
	echo "......................... build start($ANDROID_ABI) ........................."
	./configure \
	--prefix=$PREFIX \
	--target-os=linux \
	--enable-cross-compile \
	--extra-libs="-lgcc" \
	--arch=$ARCH \
	--cross-prefix=$CROSS_COMPILE \
	--cc=$CC \
	--nm=$NM \
	--sysroot=$SYSROOT \
	--extra-cflags=" -O3 -fpic -DANDROID -DHAVE_SYS_UIO_H=1 -Dipv6mr_interface=ipv6mr_ifindex -fasm -Wno-psabi -fno-short-enums  -fno-strict-aliasing -finline-limit=300 $OPTIMIZE_CFLAGS " \
	--disable-static \
	--enable-shared \
	--enable-gpl \
	--enable-version3 \
	--disable-asm \
	--disable-yasm \
	--enable-small \
	--disable-debug \
	--disable-doc \
	--disable-programs \
    --disable-ffmpeg \
	--disable-ffplay \
	--disable-ffprobe \
	--disable-ffserver \
	--disable-symver \
	$ADDITIONAL_CONFIGURE_FLAG
	
	make clean
	make
	make install
	
	echo "......................... build end($ANDROID_ABI) ........................."
	echo ""
}