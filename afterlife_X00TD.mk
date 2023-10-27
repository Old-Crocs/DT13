#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AfterLife stuff
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Afterlife flags
AFTERLIFE_MAINTAINER := Romeo_Delta_Wishkey

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

USE_PIXEL_CHARGING := true

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true


# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230805.001 10316531 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/cheetah/cheetah:13/TQ3A.230805.001/10316531:user/release-keys"
