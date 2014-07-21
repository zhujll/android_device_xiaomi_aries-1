#
# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from common apq8064
-include device/xiaomi/apq8064-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_aries_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xiaomi/aries/bluetooth

# Camera
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# CM Hardware
BOARD_HARDWARE_CLASS += device/xiaomi/aries/cmhw

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 15728640
BOARD_CACHEIMAGE_PARTITION_SIZE    := 402999296
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3758096384  # 3221209088 - 16384 for crypto footer

# inherit from the proprietary version
-include vendor/xiaomi/aries/BoardConfigVendor.mk
