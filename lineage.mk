
# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/lineage.mk)

$(call inherit-product, device/samsung/gprimelte/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gprimelte
PRODUCT_NAME := lineage_gprimelte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G530W
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_GMS_CLIENTID_BASE := android-samsung
