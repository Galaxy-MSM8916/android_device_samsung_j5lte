# CABL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=2

# RAM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.low_ram=false \
	ro.config.zram=false

# RIL
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.multisim.simslotcount=2 \
	persist.radio.multisim.config=dsds \
	rild.libpath2=/system/lib/libsec-ril-dsds.so

# EONS
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.eons.enabled=true

# Screen
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320
