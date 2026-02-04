#platform
SOC=am62a

#add platform for scripts
PLATFORM?=am62a-evm
YOCTO_MACHINE?=am62axx-evm
ARCH=arm64

#Set cross compilers
export CROSS_COMPILE=$(TI_SDK_PATH)/linux-devkit/sysroots/x86_64-arago-linux/usr/bin/aarch64-oe-linux/aarch64-oe-linux-
export CROSS_COMPILE_ARMV7=$(TI_SDK_PATH)/k3r5-devkit/sysroots/x86_64-arago-linux/usr/bin/arm-oe-eabi/arm-oe-eabi-

#Default CC value to be used when cross compiling.  This is so that the
#GNU Make default of "cc" is not used to point to the host compiler
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

# u-boot machine configs for A53 and R5
UBOOT_MACHINE=am62ax_evm_a53_defconfig
UBOOT_MACHINE_R5=am62ax_evm_r5_defconfig
MKIMAGE_DTB_FILE=a53/dts/upstream/src/arm64/ti/k3-am62a7-sk.dtb

KERNEL_DEVICETREE_PREFIX=ti/k3-am62a7|ti/k3-fpdlink|ti/k3-am62x-sk|ti/k3-v3link

TI_LINUX_FIRMWARE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)
UBOOT_ATF=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl31.bin
UBOOT_TEE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl32.bin
TI_DM=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/ti-dm/am62axx/dm_adas_mcu1_0_release_strip.out

MAKE_ALL_TARGETS?= cryptodev u-boot linux linux-dtbs
