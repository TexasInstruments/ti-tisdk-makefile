#platform
SOC=am335
TARGET_PRODUCT=ti335x

#add platform for scripts
PLATFORM?=am335x-evm
YOCTO_MACHINE?=am335x-evm

ARCH=arm

# u-boot machine config
UBOOT_MACHINE=am335x_evm_defconfig

# Override value of cross compiler
export CROSS_COMPILE=$(TI_SDK_PATH)/external-toolchain-dir/arm-gnu-toolchain-15.2.rel1-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf-
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

KERNEL_DEVICETREE_PREFIX=am335x-

MAKE_ALL_TARGETS?= cryptodev u-boot-legacy linux-legacy linux-legacy-dtbs
