## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/elini/device_elini.mk)

PRODUCT_NAME := cm_elini

# Release name and versioning
PRODUCT_RELEASE_NAME := elini-aki-$(shell date +%Y%m%d)
PRODUCT_VERSION_DEVICE_SPECIFIC :=
#-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := elini

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_elini BUILD_ID=FRG83G BUILD_DISPLAY_ID=FRG83G BUILD_FINGERPRINT=LGE/elini/elini/elini:2.2.2/FRG83G/eng.user.20111130.205709:user/release-keys PRIVATE_BUILD_DESC="elini-user 2.2.2 FRG83G eng.user.20111130.205709 release-keys"
