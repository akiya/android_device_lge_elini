#
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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from the proprietary version
-include vendor/lge/elini/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/lge/elini/include

# ARMv6-compatible processor rev 2 (v6l)
# CPU
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

# Target properties
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := elini
TARGET_OTA_ASSERT_DEVICE := elini

# Target information
TARGET_NO_BOOTLOADER := true
#TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RECOVERY := false

#Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := elini

# Browser
JS_ENGINE := v8

# USB mass storage
#BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/elini/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun"
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

# Recovery
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/elini/recovery/recovery_ui.c
BOARD_LDPI_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_DATADATA := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# Graphics
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_DO_NOT_SETS_CAN_DRAW := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
BOARD_EGL_CFG := device/lge/elini/prebuilt/egl.cfg
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

# WiFI
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := WEXT
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME := wireless
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_HAS_LGE_SOFTAP := true

# Kernel
BOARD_KERNEL_BASE := 0x12800000
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=elini
BOARD_PAGE_SIZE := 0x00000800
#BOARD_KERNEL_PAGESIZE := 4096

# # cat /proc/mtd
#dev:    size   erasesize  name
#mtd0: 00440000 00020000 "boot"
#mtd1: 0d200000 00020000 "system"
#mtd2: 00500000 00020000 "recovery"
#mtd3: 002c0000 00020000 "lgdrm"
#mtd4: 00100000 00020000 "splash"
#mtd5: 00100000 00020000 "FOTABIN"
#mtd6: 00640000 00020000 "FOTA"
#mtd7: 00040000 00020000 "misc"
#mtd8: 04000000 00020000 "cache"
#mtd9: 2b360000 00020000 "userdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0d200000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x2b360000
BOARD_FLASH_BLOCK_SIZE := 131072

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true

TARGET_PREBUILT_KERNEL := device/lge/elini/kernel


#ICS settings
#DISABLE_DEXPREOPT := true
BOARD_NO_PAGE_FLIPPING := true
COPYBIT_MSM7K := true
BUILD_OLD_LIBCAMERA:= true
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS -DMISSING_EGL_PIXEL_FORMAT_YV12
COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY -DDEBUG_CALC_FPS
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60

#TARGET_FORCE_CPU_UPLOAD := true
BOARD_USE_SKIA_LCDTEXT := true
#TARGET_GRALLOC_USES_ASHMEM := false
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
#TARGET_USES_GENLOCK := true


# If set ENABLE, Trebuchet Launcher hangs up...
#USE_OPENGL_RENDERER := true
