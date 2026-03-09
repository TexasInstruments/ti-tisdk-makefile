#platform
SOC=am62d

#add platform for scripts
PLATFORM?=am62dxx-evm
YOCTO_MACHINE?=am62dxx-evm
ARCH=arm64

#ARM Toolchains
export CROSS_COMPILE=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/aarch64-oe-linux/aarch64-oe-linux-
export CROSS_COMPILE_ARMV7=$(K3_R5_LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux/usr/bin/arm-oe-eabi/arm-oe-eabi-

#Default CC value to be used when cross compiling.  This is so that the
#GNU Make default of "cc" is not used to point to the host compiler
export CC=$(CROSS_COMPILE)gcc --sysroot=$(SDK_PATH_TARGET)

# u-boot machine configs for A53 and R5
UBOOT_MACHINE=am62dx_evm_a53_defconfig
UBOOT_MACHINE_R5=am62dx_evm_r5_defconfig
MKIMAGE_DTB_FILE=a53/dts/upstream/src/arm64/ti/k3-am62d2-evm.dtb

KERNEL_DEVICETREE_PREFIX=ti/k3-am62d2|ti/k3-am62a7-sk-edgeai|ti/k3-am62a7-sk-rpi-hdr-ehrpwm|ti/k3-am62x-sk|ti/k3-am62a7-sk-e3-max-opp

TI_LINUX_FIRMWARE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)
UBOOT_ATF=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl31.bin
UBOOT_TEE=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/bl32.bin
TI_DM=$(TI_SDK_PATH)/board-support/prebuilt-images/$(PLATFORM)/ti-dm/am62dxx/ipc_echo_testb_mcu1_0_release_strip.xer5f

MAKE_ALL_TARGETS?= cryptodev arm-benchmarks u-boot linux linux-dtbs
