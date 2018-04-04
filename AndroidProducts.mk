LOCAL_PATH := device/samsung/j5lte
PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/omni_j5lte.mk \
	$(LOCAL_DIR)/rr_j5lte.mk \
	$(LOCAL_DIR)/pa_j5lte.mk \
	$(LOCAL_DIR)/lineage_j5lte.mk

COMMON_LUNCH_CHOICES := \
    lineage_j5lte-eng \
    lineage_j5lte-userdebug \
	lineage_j5lte-user