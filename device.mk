#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/lavender/lavender-vendor.mk)

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)
