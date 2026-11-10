#platform
SOC=am437
TARGET_PRODUCT=ti437x

#add platform for scripts
PLATFORM?=am437x-hs-evm
YOCTO_MACHINE?=am437x-hs-evm

#Architecture
ARCH=arm

# u-boot machine config
UBOOT_MACHINE=am43xx_hs_evm_defconfig

# Override value of cross compiler
export CROSS_COMPILE=$(TI_SDK_PATH)/external-toolchain-dir/arm-gnu-toolchain-15.2.rel1-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf-
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

# secdev package in the SDK for U-Boot build
export TI_SECURE_DEV_PKG=$(TI_SDK_PATH)/board-support/proc-sdk-secdev*

# Toolchains required by the vairious SECDEV packages
export GCC_ARM_NONE_TOOLCHAIN=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/share/ti/gcc-arm-none-eabi

KERNEL_DEVICETREE_PREFIX=am437x-|am43x-

MAKE_ALL_TARGETS?= cryptodev u-boot-legacy linux-legacy linux-legacy-dtbs
