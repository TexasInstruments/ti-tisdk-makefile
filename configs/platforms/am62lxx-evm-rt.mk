#platform
SOC=am62l

#add platform for scripts
PLATFORM?=am62lxx-evm

#Architecture
ARCH=arm64

#ARM Toolchains
export CROSS_COMPILE=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/aarch64-oe-linux/aarch64-oe-linux-

#Default CC value to be used when cross compiling.  This is so that the
#GNU Make default of "cc" is not used to point to the host compiler
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

# rt fragment
RT_FRAGMENT=ti_rt.config

# u-boot machine config
UBOOT_MACHINE=am62lx_evm_defconfig

MKIMAGE_DTB_FILE=a53/dts/upstream/src/arm64/ti/k3-am62l3-evm.dtb

KERNEL_DEVICETREE_PREFIX=ti/k3-am62l

TFA_SPD?=opteed

TI_LINUX_FIRMWARE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)
UBOOT_AP_TRUSTED_ROM=$(TI_SDK_PATH)/board-support/built-images/bl1.bin
UBOOT_ATF=$(TI_SDK_PATH)/board-support/built-images/bl31.bin
UBOOT_TEE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl32.bin

MAKE_ALL_TARGETS?= arm-benchmarks atf u-boot linux linux-dtbs
