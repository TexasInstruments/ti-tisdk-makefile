#platform
SOC=am437
TARGET_PRODUCT=ti437x

#add platform for scripts
PLATFORM?=am437x-evm
YOCTO_MACHINE?=am437x-evm

#Architecture
ARCH=arm

# u-boot machine config
UBOOT_MACHINE=am43xx_evm_defconfig

# Override value of cross compiler
export CROSS_COMPILE=$(TI_SDK_PATH)/external-toolchain-dir/arm-gnu-toolchain-15.2.rel1-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf-
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

KERNEL_DEVICETREE_PREFIX=am437x-|am43x-

MAKE_ALL_TARGETS?= cryptodev u-boot-legacy linux-legacy linux-legacy-dtbs
