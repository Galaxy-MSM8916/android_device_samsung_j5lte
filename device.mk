#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gprimeltecan/gprimeltecan-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/gprimeltecan

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gprimeltecan/overlay

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/dt.img:dt.img

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-G530W \
	ro.product.device=gprimeltecan

