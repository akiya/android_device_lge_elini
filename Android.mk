LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),elini)
    subdir_makefiles := \
        $(LOCAL_PATH)/libaudio/Android.mk \
        $(LOCAL_PATH)/libcamera/Android.mk \
        $(LOCAL_PATH)/libcopybit/Android.mk \

#        $(LOCAL_PATH)/brcm_patchram_plus/Android.mk
    include $(subdir_makefiles)
endif
