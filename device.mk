#Inherit from vendor
$(call inherit-product, vendor/samsung/gprimelte/gprimelte-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/gprimelte

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gprimelte/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/base/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(LOCAL_PATH)/audio/spr/mixer_paths.xml:system/blobs/spr/etc/mixer_paths.xml

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/media_codecs_8929.xml:system/etc/media_codecs_8929.xml \
	$(LOCAL_PATH)/media/media_codecs_8939.xml:system/etc/media_codecs_8939.xml \
	$(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Copy baseband firmware
$(call inherit-product-if-exists, vendor/samsung/radio/G530T1UVS2AQA2/baseband.mk)
$(call inherit-product-if-exists, vendor/samsung/radio/G530TUVS2AQA2/baseband.mk)
$(call inherit-product-if-exists, vendor/samsung/radio/G530WVLS2AQB2/baseband.mk)
