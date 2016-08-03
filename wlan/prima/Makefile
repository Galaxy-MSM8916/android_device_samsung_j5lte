default: all

KBUILD_OPTIONS := WLAN_ROOT=$(PWD)
KBUILD_OPTIONS += MODNAME=wlan
BUILD_CROSS_COMPILE=$(BUILD_ROOT_DIR)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
#BUILD_CROSS_COMPILE=/opt/toolchains/arm-eabi-4.7/bin/arm-eabi-

#CFLAGS = -Wno-implicit
#obj-$(CONFIG_PRONTO_WLAN)		= wlan.ko
#obj-$(CONFIG_PRIMA_WLAN)		= wlan.ko
#obj-y		= wlan.ko


all::
	$(MAKE) -C $(KERNEL_SOURCE) $(KBUILD_OPTIONS) $(EXTRA_CFLAGS) ARCH=$(ARCH) \
		SUBDIRS=$(CURDIR) CROSS_COMPILE=$(BUILD_CROSS_COMPILE) modules
#CC=${CC} modules

modules_install:
	$(MAKE) INSTALL_MOD_STRIP=1 -C $(KERNEL_SRC) M=$(shell pwd) modules_install

clean::
	rm -f *.o *.ko *.mod.c *.mod.o *~ .*.cmd Module.symvers
	rm -rf .tmp_versions


