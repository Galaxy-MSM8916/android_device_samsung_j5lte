#Inherit from vendor
$(call inherit-product, vendor/samsung/gprimelte/gprimelte-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/gprimelte

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

# Variant blobs script
 PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/releasetools/copy_variant_blobs.sh:install/bin/copy_variant_blobs.sh

# NFC prebuilt files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
	$(LOCAL_PATH)/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf

PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=10

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.eons.enabled=true
