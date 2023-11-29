#Points to the root of the TI SDK
export TI_SDK_PATH?=__SDK__INSTALL_DIR__

export LINUX_DEVKIT_PATH=$(TI_SDK_PATH)/linux-devkit
export K3_R5_LINUX_DEVKIT_PATH=$(TI_SDK_PATH)/k3r5-devkit
SDK_PATH_TARGET=$(LINUX_DEVKIT_PATH)/sysroots/aarch64-oe-linux
SDK_PATH_HOST=$(LINUX_DEVKIT_PATH)/sysroots/x86_64-arago-linux

# The source directories for each component
ARM_BENCHMARKS_SRC_DIR=$(TI_SDK_PATH)/example-applications/*arm-benchmarks*
AM_SYSINFO_SRC_DIR=$(TI_SDK_PATH)/example-applications/*am-sysinfo*
OPROFILE_SRC_DIR=$(TI_SDK_PATH)/example-applications/*oprofile-example*
CRYPTODEV_SRC_DIR=$(TI_SDK_PATH)/board-support/extra-drivers/cryptodev*
IMG_ROGUE_SRC_DIR=$(TI_SDK_PATH)/board-support/extra-drivers/ti-img-rogue-driver*
UBOOT_SRC_DIR=$(TI_SDK_PATH)/board-support/ti-u-boot*
KIG_SRC_DIR=$(TI_SDK_PATH)/board-support/k3-image-gen-*
LINUXKERNEL_INSTALL_DIR=$(TI_SDK_PATH)/board-support/ti-linux-kernel*

export TI_SECURE_DEV_PKG=$(TI_SDK_PATH)/board-support/core-secdev-k3
