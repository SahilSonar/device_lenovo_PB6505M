#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from source
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device stuff
$(call inherit-product, device/lenovo/PB6505M/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_PB6505M
PRODUCT_DEVICE := PB6505M
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Lenovo PB-6505M
PRODUCT_MANUFACTURER := lenovo

BUILD_FINGERPRINT := "Lenovo/LenovoPB-6505M/PB-6505M:9/PKQ1/PB-6505M_S000053_200221_ROW:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="P86255AA1-user 9 PKQ1 eng.cibuil.20200221.201404 release-keys" \
    PRODUCT_NAME="PB6505M" \
    TARGET_DEVICE="PB6505M"

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
