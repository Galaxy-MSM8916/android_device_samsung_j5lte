default: all

KBUILD_OPTIONS := WLAN_ROOT=$(WLAN_ROOT)
KBUILD_OPTIONS += MODNAME=wlan

all::
	$(MAKE) -C $(KERNEL_SOURCE) $(KBUILD_OPTIONS) $(EXTRA_CFLAGS) ARCH=$(ARCH) \
		SUBDIRS=$(CURDIR) CROSS_COMPILE=$(CROSS_COMPILE) modules

modules_install:
	$(MAKE) INSTALL_MOD_STRIP=1 -C $(KERNEL_SRC) M=$(shell pwd) modules_install

clean::
	rm -f *.o *.ko *.mod.c *.mod.o *~ .*.cmd Module.symvers
	rm -rf .tmp_versions


