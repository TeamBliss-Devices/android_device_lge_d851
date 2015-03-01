#
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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/d851/d851-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    device/lge/g3-common/configs/mixer_paths_bcm.xml:system/etc/mixer_paths.xml

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

# Select Tmobile LTE IPV6 on first boot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/apn/apns-conf.xml:system/etc/apns-conf.xml

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface

#Viper4Android
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/viper4android/viper4android.apk:system/priv-app/Viper4Android/viper4android.apk \
    $(LOCAL_PATH)/viper4android/lib/libv4a_fx_ics.so:system/lib/soundfx/libv4a_fx_ics.so 

# Get BCMDHD configs
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# common g3
$(call inherit-product, device/lge/g3-common/g3.mk)
