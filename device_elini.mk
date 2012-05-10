# Copyright (C) 2011 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS += device/lge/elini/overlay
PRODUCT_LOCALES += ja_JP

PRODUCT_PACKAGES += \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    audio.primary.msm7x27 \
    audio_policy.msm7x27 \
    com.android.future.usb.accessory \
    FileManager \
    Gallery \
    libOmxCore \
    libOmxVidEnc \
    lights.msm7x27 \
    rzscontrol \
    screencap

# Recovery tools
PRODUCT_PACKAGES += \
    flash_image \
    dump_image \
    erase_image \
    make_ext4fs \
    e2fsck

# Device permissions
PRODUCT_COPY_FILES += \
    device/lge/elini/files/etc/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    device/lge/elini/files/etc/permissions/android.hardware.location.network.xml:system/etc/permissions/android.hardware.location.network.xml \
    device/lge/elini/files/etc/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    device/lge/elini/files/etc/permissions/android.hardware.telephony.xml:system/etc/permissions/android.hardware.telephony.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# Graphics
PRODUCT_COPY_FILES += \
    device/lge/elini/files/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/lge/elini/files/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/lge/elini/files/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/lge/elini/files/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/lge/elini/files/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/lge/elini/files/lib/libgsl.so:system/lib/libgsl.so \
    device/lge/elini/files/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/lge/elini/files/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/lge/elini/files/lib/libC2D2.so:system/lib/libC2D2.so \
    device/lge/elini/files/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/lge/elini/files/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

#    device/lge/elini/files/lib/egl/egl.cfg:system/lib/egl/egl.cfg \

# Motoya Font
PRODUCT_COPY_FILES += \
    frameworks/base/data/fonts/MTLc3m.ttf:system/fonts/MTLc3m.ttf \

# Touch Panel
PRODUCT_COPY_FILES += \
    device/lge/elini/files/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc

# Keyboard
PRODUCT_COPY_FILES += \
    device/lge/elini/files/elini_keypad.idc:system/usr/idc/elini_keypad.idc \
    device/lge/elini/files/elini_keypad.kl:system/usr/keylayout/elini_keypad.kl \
    device/lge/elini/files/elini_keypad.kcm:system/usr/keychars/elini_keypad.kcm \

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/elini/files/init.elini.rc:root/init.elini.rc \
    device/lge/elini/files/ueventd.elini.rc:root/ueventd.elini.rc \
    device/lge/elini/files/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh \
    device/lge/elini/files/init.qcom.post_boot.sh:root/init.qcom.post_boot.sh \
    device/lge/elini/files/init.qcom.rc:root/init.qcom.rc \
    device/lge/elini/files/initlogo.rle:root/initlogo.rle \

# VPN
PRODUCT_COPY_FILES += \
    device/lge/elini/prebuilt/tun.ko:system/lib/modules/tun.ko \

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/elini/prebuilt/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/elini/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/elini/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/lge/elini/prebuilt/dhcpcd:system/bin/dhcpcd \

# SD Card
PRODUCT_COPY_FILES += \
    device/lge/elini/files/etc/vold.fstab:system/etc/vold.fstab \

# Audio
PRODUCT_COPY_FILES += \
    device/lge/elini/files/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/elini/files/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/lge/elini/files/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/elini/files/7k_handset.kl:system/usr/keylayout/7k_handset.kl \

# Cifs
PRODUCT_COPY_FILES += \
    device/lge/elini/prebuilt/cifs.ko:system/lib/modules/cifs.ko \

# Enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# RIL properties
#PRODUCT_PROPERTY_OVERRIDES += \
#    rild.libargs=-d/dev/smd0 \
#    rild.libpath=/system/lib/libril-qc-1.so \
#    ro.telephony.default_network=0 \
#    ro.telephony.call_ring.delay=0 \
#    ro.telephony.call_ring.multiple=false

# Networking properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=60

# Performance & graphics properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=32m \
    persist.sys.purgeable_assets=1 \
    persist.sys.use_16bpp_alpha=1 \
    persist.sys.use_dithering=0 \
    ro.media.dec.jpeg.memcap=20000000 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=160 \
    ro.vold.umsdirtyratio=20

# Touchscreen properties
PRODUCT_PROPERTY_OVERRIDES += \
    view.fading_edge_length=8 \
    view.minimum_fling_velocity=25 \
    view.scroll_friction=0.008 \
    view.touch_slop=15

# Compcache properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=18

# etc
PRODUCT_PROPERTY_OVERRIDES += \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
    debug.enabletr=false \
    ro.ril.ecclist=110,118,119 \
    ro.com.android.dateformat=yyyy-MM-dd \
    persist.sys.timezone=Asia/Tokyo


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/elini/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, vendor/lge/elini/elini-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# LDPI assets
PRODUCT_LOCALES += mdpi

PRODUCT_NAME := lge_elini
PRODUCT_DEVICE := elini
PRODUCT_MODEL := L-04C
PRODUCT_BRAND := DoCoMo
PRODUCT_MANUFACTURER := lge
