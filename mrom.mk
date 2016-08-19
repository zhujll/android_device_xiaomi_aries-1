#MultiROM config. MultiROM also uses parts of TWRP config

# for twrp
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 768x1280
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_TARGET_USES_QCOM_BSP := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# for multirom twrp
TARGET_RECOVERY_IS_MULTIROM := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/xiaomi/aries/mrom/mr_init_devices.c
# MR_RD_ADDR := 0x82500000
MR_DPI := hdpi
MR_DPI_FONT := 216
MR_FSTAB := device/xiaomi/aries/mrom/twrp.fstab
MR_KEXEC_MEM_MIN := 0x85000000
MR_INFOS := device/xiaomi/aries/mrom_infos
#MR_DISABLE_ALPHA := true
# MR_DEVICE_HOOKS := device/xiaomi/aries/mrom/mr_hooks.c
# MR_DEVICE_HOOKS_VER := 5

MR_PIXEL_FORMAT := "RGBX_8888"
#MR_DEFAULT_BRIGHTNESS := 100
MR_QCOM_OVERLAY_USE_VSYNC := true
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/xiaomi/aries/mrom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
# atags-addr=0x80200100

