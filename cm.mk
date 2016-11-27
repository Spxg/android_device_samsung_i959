# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from i959 device
$(call inherit-product, device/samsung/i959/i959.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_i959
PRODUCT_DEVICE := i959
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SCH-I959

PRODUCT_BRAND := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SCH-I959 \
    PRODUCT_NAME=ja3gduosctc \
    PRODUCT_DEVICE=ja3gduosctc \
    TARGET_DEVICE=ja3gduosctc \
    BUILD_FINGERPRINT="samsung/ja3gduosctc/ja3gduosctc:5.0.1/LRX22C/I959KEUJOH4:user/release-keys" \
    PRIVATE_BUILD_DESC="ja3gduosctc-user 5.0.1 LRX22C I959KEUJOH4 release-keys"

TARGET_UNOFFICIAL_BUILD_ID := GearCM
