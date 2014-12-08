# Copyright (C) 2013 Purity Project
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

# Check for target product

ifeq (purity_mako,$(TARGET_PRODUCT))

# Include Purity common configuration
include vendor/purity/config/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Override AOSP build properties
PRODUCT_NAME := purity_mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:5.0/LRX21T/1576899:user/release-keys PRIVATE_BUILD_DESC="occam-user 5.0 LRX21T 1576899 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/purity/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

endif
