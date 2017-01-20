
# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/lineage.mk)

$(call inherit-product, device/samsung/gprimeltecan/full_gprimeltecan.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gprimeltecan
PRODUCT_NAME := lineage_gprimeltecan
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G530W
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_GMS_CLIENTID_BASE := android-samsung
