#
# Copyright (C) 2011 The Android Open-Source Project
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

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/xiaomi/aries/init/init_aries.cpp

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=aries lpj=67677 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 lge.kcal=0|0|0|x
BOARD_KERNEL_CMDLINE += earlyprintk=serial,ttyHSL0,115200,n8
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Try to build the kernel
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/xiaomi/aries
TARGET_KERNEL_CONFIG := cyanogen_aries_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-


BOARD_USES_ALSA_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := false
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_AUDIO_AMPLIFIER := device/xiaomi/aries/libaudioamp
BOARD_USES_QCOM_HARDWARE := true
AUDIO_FEATURE_ENABLED_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := ARIES
TARGET_BOOTLOADER_NAME=aries
TARGET_BOARD_INFO_FILE := device/xiaomi/aries/board-info.txt

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xiaomi/aries/bluetooth

# Use the QCOM PowerHAL
TARGET_POWERHAL_VARIANT := qcom


# FIXME: HOSTAPD-derived wifi driver
# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

BOARD_EGL_CFG := device/xiaomi/aries/egl.cfg

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITION := false
TARGET_DISPLAY_USE_RETIRE_FENCE := true

WITH_DEXPREOPT_BOOT_IMG_ONLY ?= false
WITH_DEXPREOPT := false
DONT_DEXPREOPT_PREBUILTS := true

TARGET_RECOVERY_FSTAB = device/xiaomi/aries/fstab.aries
RECOVERY_FSTAB_VERSION = 2
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x01E00000 # 44M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00F00000 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE    := 402653184
BOARD_FLASH_BLOCK_SIZE             := 131072 # (BOARD_KERNEL_PAGESIZE * 64)


BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_USES_SECURE_SERVICES := true

BOARD_USES_EXTRA_THERMAL_SENSOR := true

BOARD_HAL_STATIC_LIBRARIES := libdumpstate.aries

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_USES_QC_TIME_SERVICES := true
TARGET_NO_RPC := true
TARGET_PROVIDES_GPS_LOC_API := true

#BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_NO_CELLINFOLIST := true
#BOARD_PROVIDES_RILD := true
TARGET_RIL_VARIANT := caf
#BOARD_PROVIDES_LIBRIL := true

#TARGET_QCOM_DISPLAY_VARIANT := caf

TARGET_RELEASETOOLS_EXTENSIONS := device/xiaomi/aries


# SELinux
#include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/xiaomi/aries/sepolicy

BOARD_CHARGER_ENABLE_SUSPEND := true

# QCOM Camera
USE_DEVICE_SPECIFIC_CAMERA:= true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
# Camera
#COMMON_GLOBAL_CFLAGS       += -DQCOM_BSP -DCAMERA_VENDOR_L_COMPAT
BOARD_USES_CAMERA_FAST_AUTOFOCUS := true
#V4L2_BASED_LIBCAM := true

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

HAVE_ADRENO_SOURCE:= false

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

MALLOC_SVELTE := true

-include vendor/xiaomi/aries/BoardConfigVendor.mk

BOARD_HAS_NO_SELECT_BUTTON := true

#for mokee
#BOARD_HARDWARE_CLASS := device/xiaomi/aries/mkhw/

#for cyanogen
#BOARD_HARDWARE_CLASS := device/xiaomi/aries/cmhw/

TARGET_USES_LOGD := false

## TWRP 
# RECOVERY_VARIANT :=twrp

## AnyKernel 
AK_BOOT_BLOCK := \/dev\/block\/platform\/msm_sdcc.1\/by-name\/boot

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/xiaomi/aries/include

## AnyRecoveryZip
TARGET_BUILD_REC_ZIP := true

# For MultiRom
include device/xiaomi/aries/mrom.mk
# For twrp.fstab
include device/xiaomi/aries/twrp.mk
