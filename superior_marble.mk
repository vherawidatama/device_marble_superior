#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_DEVICE := marble
PRODUCT_NAME := superior_marble
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
BUILD_WITH_GAPPS := true

# Maintainer SuperiorOS
PRODUCT_PROPERTY_OVERRIDES += \
        ro.superior.maintainer=SMGLaboratory (VHP)

TARGET_INCLUDE_PIXEL_CHARGER := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    # Fix Safetynet - Play Protect Uncertified
    PRIVATE_BUILD_DESC="redfin-user 13 TQ3A.230705.001 10216780 release-keys" \

BUILD_FINGERPRINT := google/redfin/redfin:13/TQ3A.230705.001/10216780:user/release-keys
