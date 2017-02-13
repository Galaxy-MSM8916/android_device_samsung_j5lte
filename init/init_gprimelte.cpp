/*
   Copyright (c) 2013, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

void vendor_load_properties(void)
{
    char bootloader[PROP_VALUE_MAX];
    int rc;

    rc = property_get("ro.bootloader", bootloader);
    if (!rc) {
	property_set("ro.product.model", "SM-XXXX");
	property_set("ro.product.device", "unknown");
        property_set("ro.build.description", "lineage_unknown-userdebug 6.0.1 MOB31K 4dae919457 test-keys");
        property_set("ro.build.display.id", "lineage_unknown-userdebug 6.0.1 MOB31K 4dae919457 test-keys");
        property_set("ro.build.fingerprint", "samsung/lineage_unknown/unknown:6.0.1/MOB31K/4dae919457:userdebug/test-keys");
	}
    else if (bootloader[4] == 'W') {
        property_set("ro.build.product", "gprimeltecan");
        property_set("ro.product.device", "gprimeltecan");
        property_set("ro.cm.device", "gprimeltecan");
        property_set("ro.product.model", "SM-G530W");
        property_set("ro.build.description", "lineage_gprimeltecan-userdebug 6.0.1 MOB31K 4dae919457 test-keys");
        property_set("ro.build.display.id", "lineage_gprimeltecan-userdebug 6.0.1 MOB31K 4dae919457 test-keys");
        property_set("ro.build.fingerprint", "samsung/lineage_gprimeltecan/gprimeltecan:6.0.1/MOB31K/4dae919457:userdebug/test-keys");
	}
    else if (bootloader[4] == 'T') {
		if (bootloader[5] == '1') {
			property_set("ro.build.product", "gprimeltemtr");
			property_set("ro.product.device", "gprimeltemtr");
			property_set("ro.cm.device", "gprimeltemtr");
			property_set("ro.product.model", "SM-G530T1");
			property_set("ro.build.description", "lineage_gprimeltemtr-userdebug 6.0.1 MOB31K 4dae919457 test-keys");
			property_set("ro.build.display.id", "lineage_gprimeltemtr-userdebug 6.0.1 MOB31K 4dae919457 test-keys");
			property_set("ro.build.fingerprint", "samsung/lineage_gprimeltemtr/gprimeltemtr:6.0.1/MOB31K/4dae919457:userdebug/test-keys");
		}
		else {
			property_set("ro.build.product", "gprimeltetmo");
			property_set("ro.product.device", "gprimeltetmo");
			property_set("ro.cm.device", "gprimeltetmo");
			property_set("ro.product.model", "SM-G530T");
			property_set("ro.build.description", "lineage_gprimeltetmo-userdebug 6.0.1 MOB31K 4dae919457 test-keys");
			property_set("ro.build.display.id", "lineage_gprimeltetmo-userdebug 6.0.1 MOB31K 4dae919457 test-keys");
			property_set("ro.build.fingerprint", "samsung/lineage_gprimeltetmo/gprimeltetmo:6.0.1/MOB31K/4dae919457:userdebug/test-keys");
		}
	}
}
