#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lavender

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := lavender

# Audio
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
TARGET_USE_QTI_BT_STACK := true

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/configs/vintf/framework_manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/vintf/manifest.xml
DEVICE_MATRIX_FILE += device/qcom/common/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/configs/vintf/device_framework_compatibility_matrix.xml

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 swiotlb=1 loop.max_part=7
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_CMDLINE += kpti=off
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/xiaomi/lavender
TARGET_KERNEL_CONFIG := lavender_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_COMPILE_WITH_MSM_KERNEL := true

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000 
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 116748414464
BOARD_PERSISTIMAGE_PARTITION_SIZE := 28295168
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VENDORIMAGE_PARTITION_SIZE := 2147483648
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/persist:/persist \
    /vendor/dsp:/dsp \
    /vendor/firmware_mnt:/firmware \
    /vendor/bt_firmware:/bt_firmware

TARGET_COPY_OUT_VENDOR := vendor

# Symlinks
TARGET_MOUNT_POINTS_SYMLINKS := true

# Vendor Security patch level
VENDOR_SECURITY_PATCH := 2022-03-05

# WLAN
BOARD_HAS_QCOM_WLAN := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"

# Inherit the proprietary files
-include vendor/xiaomi/lavender/BoardConfigVendor.mk
