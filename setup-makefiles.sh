#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
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

set -e

# Required!
export DEVICE=j5lte
export DEVICE_COMMON=j5-common
export VENDOR=samsung

export SETUP_DEVICE_DIR=1
export SETUP_DEVICE_COMMON_DIR=0
export SETUP_BOARD_COMMON_DIR=0

./../../$VENDOR/$DEVICE_COMMON/setup-makefiles.sh $@
