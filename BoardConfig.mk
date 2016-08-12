FORCE_32_BIT := true

-include vendor/samsung/gprimeltecan/BoardConfigVendor.mk

LOCAL_PATH := device/samsung/gprimeltecan

# Inherit from common
-include device/samsung/qcom-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm8916
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM_GPU       := qcom-adreno306
#ARCH_ARM_HAVE_TLS_REGISTER := true

# Architecture
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a53
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Audio
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
BOARD_USES_ALSA_AUDIO := true

# Asserts
TARGET_OTA_ASSERT_DEVICE := gprimeltevl,gprimeltecan,samsung_sm_g530w

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Custom RIL class
BOARD_RIL_CLASS    := ../../../device/samsung/gprimeltecan/ril
PROTOBUF_SUPPORTED := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Camera
TARGET_USE_VENDOR_CAMERA_EXT := true
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
# BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

#sec_s3fwrn5 <- NFC HAL

# CMHW
BOARD_HARDWARE_CLASS += $(LOCAL_PATH)/cmhw

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# default.prop
ADDITIONAL_DEFAULT_PROPERTIES += \
	camera2.portability.force_api=1

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver.so
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_HAVE_NEW_GRALLOC := true

# Encryption
TARGET_SWV8_DISK_ENCRYPTION := true

# FM
AUDIO_FEATURE_ENABLED_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
#TARGET_GPS_HAL_PATH := $(LOCAL_PATH)/gps
#TARGET_NO_RPC := true

#ART
#WITH_DEXPREOPT := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_gprimeltecan.cpp
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_UNIFIED_DEVICE := true
TARGET_PROVIDES_INIT_RC := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_fortuna_can_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SELINUX_LOG_CONFIG := selinux_log_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gprimeltecan
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# malloc implementation
MALLOC_IMPL := dlmalloc

# Partition sizes
TARGET_USERIMAGES_USE_EXT4          := true
BOARD_BOOTIMAGE_PARTITION_SIZE      := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 2359296000
BOARD_SYSTEMIMAGE_PARTITION_TPE    := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE     := 314572800
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE   := 8388608
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 4942966784
BOARD_FLASH_BLOCK_SIZE              := 131072

# Power
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm support
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := false

# RIL
TARGET_RIL_VARIANT := caf
#override to enable audio.
BOARD_PROVIDES_LIBRIL := false

# SELinux
include device/qcom/sepolicy/sepolicy.mk
include vendor/cm/sepolicy/sepolicy.mk
include vendor/cm/sepolicy/qcom/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/samsung/gprimeltecan/sepolicy

BOARD_SEPOLICY_UNION += \
	ueventd.te \
	file.te \
	shell.te \
	surfaceflinger.te \
	bluetooth_loader.te \
	wcnss_service.te \
	healthd.te \
	rild.te \
	qseecomd.te \
	system_server.te \
	time_daemon.te \
	sysinit.te \
	mm-qcamerad.te \
	file_contexts \
	init_shell.te \
	init.te \
	lkmd.te \
	qmuxd.te \
	rfs_access.te \
	rmt_storage.te \
	keystore.te \
	perfd.te \
	mediaserver.te \
	property_contexts

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# TWRP
#RECOVERY_VARIANT := twrp
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
#TW_SECONDARY_BRIGHTNESS_PATH := "/sys/devices/soc.0/1a00000.qcom\x2cmdss_mdp/qcom\x2cmdss_fb_primary.132/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
# TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,noauto_da_alloc,discard,journal_async_commit,errors=panic wait,check,encryptable=footer"
# TW_CRYPTO_FS_TYPE := "ext4"
# TW_CRYPTO_KEY_LOC := "footer"
# TW_CRYPTO_MNT_POINT := "/data"
# TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/7824900.sdhci/by-name/userdata"
#TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_HAS_DOWNLOAD_MODE := true
#DEVICE_RESOLUTION := 540x960
TW_HAS_MTP := true
# TW_IGNORE_MAJOR_AXIS_0 := true
TW_INCLUDE_CRYPTO := true
TW_INPUT_BLACKLIST := "accelerometer"
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_MTP_DEVICE := /dev/usb_mtp_gadget
TW_NEW_ION_HEAP := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_USB_STORAGE := true
TW_TARGET_USES_QCOM_BSP := true
TW_THEME := portrait_hdpi
ifeq ($(TW),)
	TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
else
	TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/twrp.fstab
endif

# Vold
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 67
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wifi
WLAN_CHIPSET := pronto
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_MODULE_PATH  := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"

# inherit from the proprietary version
-include vendor/samsung/gprimeltecan/BoardConfigVendor.mk

#make, move, symlink and strip the wlan kernel module.
KERNEL_EXTERNAL_MODULES:
	make -C device/samsung/gprimeltecan/wlan/prima/ WLAN_ROOT=$(ANDROID_BUILD_TOP)/device/samsung/gprimeltecan/wlan/prima/ \
		KERNEL_SOURCE=$(KERNEL_OUT) ARCH="arm" \
		CROSS_COMPILE="arm-eabi-"
#		CROSS_COMPILE=$(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
	mkdir $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)/ -p
	ln -sf /system/lib/modules/$(WLAN_CHIPSET)/$(WLAN_CHIPSET)_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko
	mv device/samsung/gprimeltecan/wlan/prima/wlan.ko $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)/$(WLAN_CHIPSET)_wlan.ko
	arm-eabi-strip --strip-debug $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)/$(WLAN_CHIPSET)_wlan.ko

TARGET_KERNEL_MODULES := KERNEL_EXTERNAL_MODULES
