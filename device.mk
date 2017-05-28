#Inherit from vendor
$(call inherit-product, vendor/samsung/j5ltexx/j5ltexx-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/j5-common/device-common.mk)

LOCAL_PATH := device/samsung/j5ltexx

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
