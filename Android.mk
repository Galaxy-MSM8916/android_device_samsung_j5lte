LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gprimeltecan)

include $(call all-subdir-makefiles,$(LOCAL_PATH))
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# AiO /firmware
FIRMWARE_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.mdt \
    dmverity.b00 dmverity.b01 dmverity.b02 dmverity.b03 dmverity.mdt \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.mdt \
    keymaste.b00 keymaste.b01 keymaste.b02 keymaste.b03 keymaste.mdt \
    playread.b00 playread.b01 playread.b02 playread.b03 playread.mdt \
    prov.b00 prov.b01 prov.b02 prov.b03 prov.mdt \
    reactive.b00 reactive.b01 reactive.b02 reactive.b03 reactive.mdt \
    sec_stor.b00 sec_stor.b01 sec_stor.b02 sec_stor.b03 sec_stor.mdt \
    skm.b00 skm.b01 skm.b02 skm.b03 skm.mdt \
    skmm_ta.b00 skmm_ta.b01 skmm_ta.b02 skmm_ta.b03 skmm_ta.mdt \
    sshdcpap.b00 sshdcpap.b01 sshdcpap.b02 sshdcpap.b03 sshdcpap.mdt \
    tbase.b00 tbase.b01 tbase.b02 tbase.b03 tbase.mdt \
    tima_atn.b00 tima_atn.b01 tima_atn.b02 tima_atn.b03 tima_atn.mdt \
    tima_key.b00 tima_key.b01 tima_key.b02 tima_key.b03 tima_key.mdt \
    tima_lkm.b00 tima_lkm.b01 tima_lkm.b02 tima_lkm.b03 tima_lkm.mdt \
    tima_pkm.b00 tima_pkm.b01 tima_pkm.b02 tima_pkm.b03 tima_pkm.mdt \
    tz_ccm.b00 tz_ccm.b01 tz_ccm.b02 tz_ccm.b03 tz_ccm.mdt \
    tz_otp.b00 tz_otp.b01 tz_otp.b02 tz_otp.b03 tz_otp.mdt \
    venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 venus.mdt \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 wcnss.b09 wcnss.b10 wcnss.b11 wcnss.mdt \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt \

FIRMWARE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_IMAGES)))
$(FIRMWARE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_SYMLINKS)

# /firmware-modem
FIRMWARE_MODEM_IMAGES := \
    mba.mbn modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 \
    modem.b05 modem.b06 modem.b07 modem.b08 modem.b10 modem.b11 \
    modem.b14 modem.b15 modem.b16 modem.b17 modem.b18 modem.b19 \
    modem.b20 modem.b23 modem.b24 modem.b25 modem.b27 modem.b28 \
    modem.mdt

FIRMWARE_MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MODEM_IMAGES)))
$(FIRMWARE_MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Firmware Modem link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MODEM_SYMLINKS)

# Create links for keymaster firmware files
#$(shell mkdir -p $(TARGET_OUT)/vendor/firmware/keymaster; \
#    ln -sf /firmware/image/keymaste.b00 \
#    $(TARGET_OUT)/vendor/firmware/keymaster/keymaster.b00; \
#    ln -sf /firmware/image/keymaste.b01 \
#    $(TARGET_OUT)/vendor/firmware/keymaster/keymaster.b01; \
#    ln -sf /firmware/image/keymaste.b02 \
#    $(TARGET_OUT)/vendor/firmware/keymaster/keymaster.b02; \
#    ln -sf /firmware/image/keymaste.b03 \
#    $(TARGET_OUT)/vendor/firmware/keymaster/keymaster.b03; \
#    ln -sf /firmware/image/keymaste.mdt \
#    $(TARGET_OUT)/vendor/firmware/keymaster/keymaster.mdt)

#Create link for nfc configs
$(shell mkdir -p $(TARGET_OUT)/etc/; \
    ln -sf /etc/libnfc-sec-hal.conf \
    $(TARGET_OUT)/etc/libnfc-brcm-hal.conf; \
    ln -sf /etc/libnfc-sec.conf \
    $(TARGET_OUT)/etc/libnfc-brcm.conf)

$(shell mkdir -p $(TARGET_OUT)/lib/modules/pronto; \
    ln -sf /system/lib/modules/pronto/pronto_wlan.ko \
$(TARGET_OUT)/lib/modules/wlan.ko)

#Create link for wifi config
$(shell mkdir -p $(TARGET_OUT)/etc/wifi; \
    ln -sf /etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(TARGET_OUT)/etc/wifi/WCNSS_qcom_cfg.ini)

include $(CLEAR_VARS)

endif
