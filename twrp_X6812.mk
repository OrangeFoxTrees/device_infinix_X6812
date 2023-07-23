#
# Copyright (C) 2023 The OrangeFox Recovery Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from Infinix-X6812 device
$(call inherit-product, device/infinix/X6812/device.mk)

PRODUCT_DEVICE := X6812
PRODUCT_NAME := twrp_X6812
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6812
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6812_h6912-user 11 RP1A.200720.011 348590 release-keys"

BUILD_FINGERPRINT := Infinix/X6812-GL/Infinix-X6812:11/RP1A.200720.011/230608V632:user/release-keys
