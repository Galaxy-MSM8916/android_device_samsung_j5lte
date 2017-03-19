#!/sbin/sh
#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Detect variant and copy its specific-blobs
BOOTLOADER=`getprop ro.bootloader`

case $BOOTLOADER in
  G530W*)      VARIANT="can" ;;
  G530T1*)           VARIANT="mtr" ;;
  G530T*)           VARIANT="tmo" ;;
  G530P*)           VARIANT="spr" ;;
  *)           VARIANT="unknown" ;;
esac

echo "Device variant is $VARIANT"

# exit if the device is unknown
if [ $VARIANT == "unknown" ]; then
	exit 1
fi

RADIO_DIR=/system/RADIO/$VARIANT
BLOCK_DEV_DIR=/dev/block/bootdevice/by-name

if [ -d ${RADIO_DIR} ]; then

	cd ${RADIO_DIR} 

	# flash the firmware
	for FILE in `find . -type f` ; do
		echo "Flashing ${FILE} to ${BLOCK_DEV_DIR}/${FILE} ..."
		dd if=${FILE} of=${BLOCK_DEV_DIR}/${FILE}
	done
fi

# remove the device blobs
echo "Cleaning up ..."
rm -rf /system/RADIO

exit 0
