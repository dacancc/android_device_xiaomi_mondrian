#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from mondrian device.
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Rom Stuff
EXTRA_UDFPS_ANIMATIONS := true
DERP_BUILDTYPE := Official

## Device identifier
PRODUCT_DEVICE := mondrian
PRODUCT_NAME := derp_mondrian
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
