#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
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

SRC=~/l04c

DEVICE=elini
MANUFACTURER=lge

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware

DIRS="
lib/egl
lib/hw
bin
etc/wl
etc/firmware
"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$DIR
done


FILES="
#2D
#lib/hw/gralloc.default.so
#lib/hw/gralloc.elini.so
#lib/liblgosp-hal.so

#Sensors
lib/hw/sensors.elini.so
lib/hw/lights.elini.so
bin/ami304d

#3D
#lib/egl/egl.cfg
#lib/egl/libEGL_adreno200.so
#lib/egl/libGLESv1_CM_adreno200.so
#lib/egl/libGLESv2_adreno200.so
#lib/egl/libq3dtools_adreno200.so
#lib/libgsl.so
#etc/firmware/yamato_pfp.fw
#etc/firmware/yamato_pm4.fw

#Camera
#lib/liboemcamera.so
lib/libmmipl.so
lib/libmmjpeg.so

#Wifi
etc/wl/nvram.txt
etc/wl/rtecdc.bin
etc/wl/rtecdc-apsta.bin
etc/wl/rtecdc-mfgtest.bin

#Audio
lib/liba2dp.so
lib/libaudioeq.so

#LGEservices
bin/qmuxd

#rmt_storage
bin/rmt_storage

#port-bridge
bin/port-bridge

#wipeirface
bin/wiperiface

#Touchscreen
bin/tsdown
etc/MELFAS_FIRM.bin

#netmgr
bin/netmgrd
lib/libdsutils.so
lib/libnetmgr.so

#RIL
lib/libril-qc-1.so
lib/liboncrpc.so
lib/libdsm.so
lib/libqueue.so
lib/libdiag.so
lib/libauth.so
lib/libcm.so
lib/libnv.so
lib/libpbmlib.so
lib/libwms.so
lib/libwmsts.so
lib/libmmgsdilib.so
lib/libgsdi_exp.so
lib/libgstk_exp.so
lib/libril-qcril-hook-oem.so
lib/liboem_rapi.so
lib/libsnd.so
lib/libqmi.so
lib/libdll.so
lib/liblgeat.so
lib/liblgdrm.so
lib/liblgdrmwbxml.so
lib/liblgerft.so
lib/libbcmwl.so
lib/libdss.so
bin/rild
lib/libril.so
lib/libloc-rpc.so
lib/libloc.so
lib/libcommondefs.so

#OMX
lib/libmm-adspsvc.so
lib/libOmxAacDec.so
lib/libOmxAacEnc.so
lib/libOmxAdpcmDec.so
lib/libOmxAmrDec.so
lib/libOmxAmrEnc.so
lib/libOmxAmrRtpDec.so
lib/libOmxAmrwbDec.so
lib/libOmxEvrcDec.so
lib/libOmxEvrcEnc.so
lib/libOmxH264Dec.so
lib/libOmxMp3Dec.so
lib/libOmxMpeg4Dec.so
lib/libOmxQcelp13Enc.so
lib/libOmxQcelpDec.so
lib/libOmxVidEnc.so
lib/libOmxWmaDec.so
lib/libOmxWmvDec.so
lib/libOmxCore.so
lib/libqcomm_omx.so

#Emoji
lib/libemoji_docomo.so
"


for FILE in $FILES; do
	if ! expr "$FILE" : "^#" > /dev/null; then
#		adb pull system/$FILE ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$FILE
		cp $SRC/system/$FILE ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$FILE
	fi
done

# Bluetooth
cp $SRC/system/bin/BCM4325D1_004.002.004.0262.0279.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware

chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin/*


(cat << EOF) | sed -e s/__MANUFACTURER__/$MANUFACTURER/g -e s/__DEVICE__/$DEVICE/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries

# 2D
#PRODUCT_COPY_FILES += \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liblgosp-hal.so:system/lib/liblgosp-hal.so \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gralloc.elini.so:system/lib/hw/gralloc.elini.so \\

# Sensors
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/sensors.elini.so:system/lib/hw/sensors.elini.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/ami304d:system/bin/ami304d \\

#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/lights.elini.so:system/lib/hw/lights.elini.so \\

# 3D
#PRODUCT_COPY_FILES += \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\

# Camera
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\

# Wifi
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \\

# Audio
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \\

# LGE services
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\

# rmt_storage
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rmt_storage:system/bin/rmt_storage \\

# port-bridge
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/port-bridge:system/bin/port-bridge \\

# wipeirface
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/wiperiface:system/bin/wiperiface \\

# Touchscreen firmware updater
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/tsdown:system/bin/tsdown \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin \\

# netmgr
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/netmgrd:system/bin/netmgrd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \\

# RIL
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libauth.so:system/lib/libauth.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcm.so:system/lib/libcm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libnv.so:system/lib/libnv.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libwms.so:system/lib/libwms.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsnd.so:system/lib/libsnd.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdll.so:system/lib/libdll.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liblgeat.so:system/lib/liblgeat.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liblgdrmwbxml.so:system/lib/liblgdrmwbxml.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liblgerft.so:system/lib/liblgerft.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libbcmwl.so:system/lib/libbcmwl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdss.so:system/lib/libdss.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rild:system/bin/rild \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libloc.so:system/lib/libloc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \\

# OMX
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqcomm_omx.so:system/lib/libqcomm_omx.so \\

# Bluetooth
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/BCM4325D1_004.002.004.0262.0279.hcd:system/etc/firmware/BCM4325D1_004.002.004.0262.0279.hcd \\

# Emoji
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libemoji_docomo.so:system/lib/libemoji_docomo.so \\

EOF

./setup-makefiles.sh
