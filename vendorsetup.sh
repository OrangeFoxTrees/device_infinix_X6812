#
# Copyright (C) 2023 The OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

FDEVICE="X6812"
#set -o xtrace

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

    export FOX_VERSION="R11.1"
    export FOX_BUILD_TYPE=Unofficial
    # export FOX_ENABLE_LAB=1
    
    export TARGET_DEVICE_ALT="Infinix-X6812,X6812"
      export OF_MAINTAINER="aminegames125"

    export OF_AB_DEVICE=1
    export OF_USE_MAGISKBOOT=1
    export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1

    export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
    export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=0

    export FOX_USE_NANO_EDITOR=1
    export FOX_USE_BASH_SHELL=1
    export FOX_USE_TAR_BINARY=1
    export FOX_USE_XZ_UTILS=1

    export OF_ADVANCED_SECURITY=1

    # Temp
    export OF_NO_SPLASH_CHANGE=1

    export FOX_REMOVE_AAPT=1
    export FOX_DISABLE_APP_MANAGER=1
    export FOX_DELETE_AROMAFM=1

    export OF_STATUS_INDENT_LEFT=64
    export OF_STATUS_INDENT_RIGHT=64

    export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800"; # Tuesday, January 1, 2019 12:00:00 AM GMT+00:00


    # export FOX_BOARD_AVB_ENABLE=1
    # export AVBTOOL=external/avb
fi
#

