LOCAL_PATH := device/samsung/gprimeltecan
$(call inherit-product-if-exists, vendor/samsung/gprimeltecan/gprimeltecan-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from common
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/gprimeltecan/gprimeltecan-common-vendor.mk)

include $(LOCAL_PATH)/keylayout/Layouts.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gprimeltecan/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img

#Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

PRODUCT_PACKAGES += libtime_genoff

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    antradio_app \
    com.dsi.ant.antradio_library \
    libantradio

#NFC
PRODUCT_PACKAGES += \
    Tag \
    com.android.nfc_extras \
    com.android.nfc.helper

#    NfcNci \
#    libnfc-nci \
#    libnfc_nci_jni \
#    nfc_nci.msm8916 \

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    audiod \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix
    
#VoLTE calling support
PRODUCT_PACKAGES += \
    com.android.ims \
    com.android.ims.internal \
    ims-common \
    voip-common

# Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/Diag.cfg:system/etc/Diag.cfg \
    $(LOCAL_PATH)/configs/Diag_audio.cfg:system/etc/Diag_audio.cfg \
    $(LOCAL_PATH)/configs/Diag_volte.cfg:system/etc/Diag_volte.cfg \
    $(LOCAL_PATH)/configs/Diag_zero.cfg:system/etc/Diag_zero.cfg
    
# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/General_cal.acdb:system/etc/General_cal.acdb \
    $(LOCAL_PATH)/audio/Global_cal.acdb:system/etc/Global_cal.acdb \
    $(LOCAL_PATH)/audio/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    $(LOCAL_PATH)/audio/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    $(LOCAL_PATH)/audio/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Boot jars
#PRODUCT_BOOT_JARS += \
#    qcom.fmradio \
#    tcmiface
    
#    qcmediaplayer   
#    oem-services \

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

#Camera
PRODUCT_PACKAGES += \
	camera.msm8916
	
#SAMSUNG RIL
#PRODUCT_PACKAGES += \
#	libsecril-client
	
# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libtinyxml \
    memtrack.msm8916

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# FM
PRODUCT_PACKAGES += \
#    FM2 \
#    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# INIT
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.class_main.sh \
    init.mdm.sh \
    init.qcom.audio.sh \
    init.qcom.bms.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.factory.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.target.rc \
    ueventd.qcom.rc \
    init.qcom.zram.sh \
    init.rilchip.rc \
    init.rilcommon.rc \
    twrp.fstab

#IMS SERVICE
#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/ims/framework/imsmanager-common.jar:system/framework/imsmanager-common.jar \
#	$(LOCAL_PATH)/ims/framework/imsmanager-internal.jar:system/framework/imsmanager-internal.jar \
#	$(LOCAL_PATH)/ims/framework/imsmanager.jar:system/framework/imsmanager.jar \
#	$(LOCAL_PATH)/ims/priv-app/ImsLogger+/ImsLogger+.apk:system/priv-app/ImsLogger+/ImsLogger+.apk \
#	$(LOCAL_PATH)/ims/priv-app/imsservice/imsservice.apk:system/priv-app/imsservice/imsservice.apk \
#	$(LOCAL_PATH)/ims/imscm.xml:system/etc/permissions/imscm.xml \
#	$(LOCAL_PATH)/ims/imsmanager_library.xml:system/etc/permissions/imsmanager_library.xml

# Keylayout
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
	$(LOCAL_PATH)/keylayout/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
	$(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
	$(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	$(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# libhealthd.qcom
PRODUCT_PACKAGES += \
    libhealthd

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni

# Default Property Overrides
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp \
	telephony.lteOnCdmaDevice=0 \
	persist.eons.enabled=true \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.radio.rilversion=8 \
	rild.libpath=/system/lib/libsec-ril.so \
	persist.cne.feature=0 \
	persist.radio.lte_vrte_ltd=1 \
	persist.radio.add_power_save=1 \
	camera2.portability.force_api=1 \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    ro.telephony.ril_class=SamsungQcomRIL

# GPS
#PRODUCT_PACKAGES += \
#    gps.default \
#    libloc_core \
#    libgps.utils \
#    libloc_eng \
#    libloc_api_v02

#Sensors
PRODUCT_PACKAGES += \
    sensors.default

#GPS Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# macloader
PRODUCT_PACKAGES += macloader

# Media configurations
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

#    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Misc
PRODUCT_PACKAGES += \
    curl \
    libbson \
    libcurl \
    tcpdump

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencMpeg4 \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libOmxVidEnc \
    libOmxVdpp \
    libstagefrighthw \
    qcmediaplayer

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# Prebuilt
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/prebuilt/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/prebuilt/qmi_config.xml:system/etc/data/qmi_config.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=false \
    dalvik.vm.heapgrowthlimit=128m \
    ro.security.icd.flagmode=single \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.location \
    ro.gps.agps_provider=1 \
    ro.pip.gated=0 \
    ro.product.model=SM-G530W \
    ro.product.device=gprimeltecan \
    cm.updater.uri=http://grandprime.ddns.net/api \
    ro.telephony.ril_class=SamsungQcomRIL

# Ril
PRODUCT_PACKAGES += \
    libxml2

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# security config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config
    
# ril switch script files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/scripts/rilswitch.sh:system/bin/rilswitch.sh \
	$(LOCAL_PATH)/scripts/rilswitch/caf/lib/libreference-ril.so:system/rilswitch/caf/lib/libreference-ril.so \
	$(LOCAL_PATH)/scripts/rilswitch/caf/bin/rild:system/rilswitch/caf/bin/rild \
	$(LOCAL_PATH)/scripts/rilswitch/caf/lib/libril.so:system/rilswitch/caf/lib/libril.so \
	$(LOCAL_PATH)/scripts/rilswitch/caf/lib/librilutils.so:system/rilswitch/caf/lib/librilutils.so

# Terminal
PRODUCT_PACKAGES += Terminal

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

#WLAN
PRODUCT_PACKAGES += \
    hostapd \
    hostapd_cli \
    libQWiFiSoftApCfg \
    libqsap_sdk \
    libwpa_client \
    wcnss_service \
    wpa_supplicant

# Inhert dalvik heap values from aosp
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
