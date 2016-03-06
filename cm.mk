# Copyright (C) 2014 The CyanogenMod Project
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


# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/xiaomi/kenzo/device.mk)


$(call inherit-product, device/qcom/common/Android.mk)
$(call inherit-product-if-exists, $(QCPATH)/common/config/device-vendor.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kenzo
PRODUCT_NAME := cm_kenzo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := HM NOTE 3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="kenzo" \
    PRODUCT_NAME="kenzo" \
    BUILD_FINGERPRINT="Xiaomi/kenzo/ferrari:6.0.1/MMB29M:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="kenzo-userdebug 6.0.1 MMB29M test-keys"
