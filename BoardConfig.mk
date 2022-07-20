#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lavender

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := lavender

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Kernel
TARGET_KERNEL_CONFIG := lavender_defconfig

# Inherit the proprietary files
-include vendor/xiaomi/lavender/BoardConfigVendor.mk
