# Inherit AOSP device configuration for n7000.
$(call inherit-product, device/samsung/n7000/full_n7000.mk)

# Inherit common product files.
$(call inherit-product, vendor/common/products/common.mk)

# Inherit GSM product files.
$(call inherit-product, vendor/common/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := n7000
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n7000
PRODUCT_MODEL := Galaxy Note
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-N7000:4.0.3/IML74K/XXLPY:user/release-keys PRIVATE_BUILD_DESC="GT-N7000-user 4.0.3 IML74K XXLPY release-keys"

# Inherit common build.prop overrides
-include vendor/common/products/common_versions.mk

# Copy n7000 specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/common/proprietary/common/media/bootanimation/vertical-800x1280.zip:system/media/bootanimation.zip 
