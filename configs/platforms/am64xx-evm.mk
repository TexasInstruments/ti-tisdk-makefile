#platform
SOC=am64

#add platform for scripts
PLATFORM?=am64xx-evm
YOCTO_MACHINE?=am64xx-evm

#Architecture
ARCH=arm64

#ARM Toolchains
export CROSS_COMPILE=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/aarch64-oe-linux/aarch64-oe-linux-
export CROSS_COMPILE_ARMV7=$(K3_R5_LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/arm-oe-eabi/arm-oe-eabi-

#Default CC value to be used when cross compiling.  This is so that the
#GNU Make default of "cc" is not used to point to the host compiler
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

# u-boot machine configs for a53 and r5
UBOOT_MACHINE=am64x_evm_a53_defconfig
UBOOT_MACHINE_R5=am64x_evm_r5_defconfig
MKIMAGE_DTB_FILE=a53/dts/upstream/src/arm64/ti/k3-am642-evm.dtb

KERNEL_DEVICETREE_PREFIX=ti/k3-am64

TI_LINUX_FIRMWARE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)
UBOOT_ATF=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl31.bin
UBOOT_TEE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl32.bin
TI_DM = ""

MAKE_ALL_TARGETS?= arm-benchmarks cryptodev u-boot u-boot-snagboot linux linux-dtbs
