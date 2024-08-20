#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from haydn device
$(call inherit-product, device/xiaomi/haydn/device.mk)

# Inherit some common everest stuff.
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := haydn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2012K11G
PRODUCT_NAME := everest_haydn

# Maintainer name for Everest
EVEREST_MAINTAINER := "Pankaj"

# Adding Blur support
TARGET_SUPPORTS_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080

# Build GAPPS\Vanilla
WITH_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build Launcher3 in GAPPS (default is Pixel Launcher)
TARGET_INCLUDE_PIXEL_LAUNCHER := false

# Quick switch (add more than one Launcher in build)
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true


PRODUCT_SYSTEM_NAME := haydn_global
PRODUCT_SYSTEM_DEVICE := haydn

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="haydn_global-user 14 UKQ1.231207.002 V816.0.2.0.UKKMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/haydn_global/haydn:14/UKQ1.231207.002/V816.0.2.0.UKKMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
