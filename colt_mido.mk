#
# Copyright (C) 2017 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mido device
$(call inherit-product, device/xiaomi/mido/device.mk)

# Inherit some common ColtOS stuff.
$(call inherit-product, vendor/colt/config/common.mk)

# Official
COLT_BUILD_TYPE := UNOFFICIAL

# Maintainer
COLT_DEVICE_MAINTAINER := 🔥Pratyaksh💥Bharadwaj🔥

# Colt Stuff
PRODUCT_PRODUCT_PROPERTIES += \
ro.colt.maintainer := 🔥Pratyaksh💥Bharadwaj🔥
ro.colt.cpu := SD625(MSM8953)
# GApps
TARGET_GAPPS_ARCH := arm64

# Mido bootanimation flag
TARGET_BOOT_ANIMATION_RES := 1080x1920

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mido
PRODUCT_NAME :=colt_mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user-11-RQ2A.210405.005/7181113-release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"
