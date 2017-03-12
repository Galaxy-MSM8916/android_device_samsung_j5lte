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

BLOBBASE=/system/blobs/$VARIANT

DEVICE="gprimelte${VARIANT}"

if [ -d $BLOBBASE ]; then

	cd $BLOBBASE

	# copy all the blobs
	for FILE in `find . -type f` ; do
		mkdir -p `dirname /system/$FILE`
		echo "Copying $FILE to /system/$FILE ..."
		cp $FILE /system/$FILE
	done

	# set permissions on binary files
	for FILE in bin/* ; do
		echo "Setting /system/$FILE executable ..."
		chmod 755 /system/$FILE
	done
fi

# update the device name in the prop
echo "Updating device variant name ..."
sed -i s/gprimelte/${DEVICE}/g /system/build.prop

# remove the device blobs
echo "Cleaning up ..."
rm -rf /system/blobs

exit 0
