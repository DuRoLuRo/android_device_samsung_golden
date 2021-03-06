#
# Copyright (C) 2013 The Android Open Source Project
# Copyright (C) 2013 www.maclaw.pl MaclawStudio
# Copyright (C) 2013 Óliver García Albertos (oliverarafo@gmail.com)
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

# Add overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/golden/overlay

# Define kind of DPI
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Open-source HALs
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    lights.montblanc

# Misc packages
PRODUCT_PACKAGES += \
    macloader \
    make_ext4fs \
    setup_fs

# Prebuilts: /*
PRODUCT_COPY_FILES += \
    device/samsung/golden/prebuilt/root/init.rc:root/init.rc \
    device/samsung/golden/prebuilt/root/init.samsunggolden.rc:root/init.samsunggolden.rc \
    device/samsung/golden/prebuilt/root/init.samsunggolden.bt.rc:root/init.samsunggolden.bt.rc \
    device/samsung/golden/prebuilt/root/init.samsunggolden.usb.rc:root/init.samsunggolden.usb.rc \
    device/samsung/golden/prebuilt/root/fstab.samsunggolden:root/fstab.samsunggolden \
    device/samsung/golden/prebuilt/root/ueventd.samsunggolden.rc:root/ueventd.samsunggolden.rc

# Prebuilts: /lib/modules/*
PRODUCT_COPY_FILES += \
    device/samsung/golden/prebuilt/root/lib/modules/j4fs.ko:root/lib/modules/j4fs.ko \
    device/samsung/golden/prebuilt/root/lib/modules/param.ko:root/lib/modules/param.ko

# Prebuilts: /system/*
PRODUCT_COPY_FILES += \
    device/samsung/golden/prebuilt/system/omxloaders:system/omxloaders

# Prebuilts: /system/etc/*
PRODUCT_COPY_FILES += \
    device/samsung/golden/prebuilt/system/etc/asound.conf:system/etc/asound.conf \
    device/samsung/golden/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/golden/prebuilt/system/etc/cspsa.conf:system/etc/cspsa.conf \
    device/samsung/golden/prebuilt/system/etc/dbus.conf:system/etc/dbus.conf \
    device/samsung/golden/prebuilt/system/etc/gps.conf:system/etc/gps.conf \
    device/samsung/golden/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/golden/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/samsung/golden/prebuilt/system/etc/ste_modem.sh:system/etc/ste_modem.sh \
    device/samsung/golden/prebuilt/system/etc/sirfgps.conf:system/etc/sirfgps.conf \
    device/samsung/golden/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

# Prebuilts: /system/etc/AT/*
PRODUCT_COPY_FILES += \
    device/samsung/golden/prebuilt/system/etc/AT/manuf_id.cfg:system/etc/AT/manuf_id.cfg \
    device/samsung/golden/prebuilt/system/etc/AT/model_id.cfg:system/etc/AT/model_id.cfg \
    device/samsung/golden/prebuilt/system/etc/AT/system_id.cfg:system/etc/AT/system_id.cfg

# Prebuilts: /system/etc/permissions/*
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Prebuilts: /system/etc/wifi/*
PRODUCT_COPY_FILES += \
    device/samsung/golden/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Prebuilts: /system/usr/keylayout/*
PRODUCT_COPY_FILES += \
    device/samsung/golden/prebuilt/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Dalvik config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
