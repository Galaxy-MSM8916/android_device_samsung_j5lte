
# Inherit from common
$(call inherit-product, device/samsung/j5-common/pa.mk)

$(call inherit-product, device/samsung/j5lte/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j5lte
PRODUCT_NAME := pa_j5lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J500F
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_GMS_CLIENTID_BASE := android-samsung
