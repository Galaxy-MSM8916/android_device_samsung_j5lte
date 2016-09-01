# Inherit from common
include device/samsung/gprimelte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gprimeltecan

# Asserts
TARGET_OTA_ASSERT_DEVICE := gprimeltecan,gprimeltevl,samsung_sm_g530w,g530w

# Init
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_gprimeltecan.cpp

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_fortuna_can_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 2359296000
BOARD_SYSTEMIMAGE_PARTITION_TPE    := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 4942966784

# Misc.
TARGET_SYSTEM_PROP                              := $(LOCAL_PATH)/system.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS                  := $(LOCAL_PATH)
