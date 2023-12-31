#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Exclude AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/system_ext/,$(TARGET_COPY_OUT_SYSTEM_EXT)/etc) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/vendor/,$(TARGET_COPY_OUT_VENDOR)/etc) \

# Properties
PRODUCT_VENDOR_PROPERTIES += \
ro.vendor.audio.hifi=false \
ro.vendor.audio.misound.bluetooth.enable=true \
ro.vendor.audio.ring.filter=true \
ro.vendor.audio.sfx.earadj=true \
ro.vendor.audio.sfx.scenario=true \
ro.vendor.audio.soundfx.type=mi \
ro.vendor.audio.soundfx.usb=true

PRODUCT_VENDOR_PROPERTIES += \
ro.vendor.dolby.dax.version=DAX3_3.6.1.6_r1 \
ro.vendor.audio.dolby.dax.support=true \
ro.vendor.audio.dolby.dax.version=DAX3_3.6 \
vendor.audio.dolby.ds2.enabled=true \
vendor.audio.dolby.ds2.hardbypass=false \
ro.audio.monitorRotation=true

$(call inherit-product, vendor/xiaomi/sweet-misound/common/common-vendor.mk)
