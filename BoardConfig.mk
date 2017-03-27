# Inherit from common
include device/samsung/gprimelte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gprimelte

# Asserts
TARGET_OTA_ASSERT_DEVICE := gprimelte,gprimeltecan,gprimeltetmo,gprimeltemtr,gprimeltespr

# Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_gprimelte
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_gprimelte.cpp

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_fortuna_can_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 2233466880
BOARD_SYSTEMIMAGE_PARTITION_TPE    := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 4942966784

# Misc.
TARGET_SYSTEM_PROP                              := $(LOCAL_PATH)/system.prop
