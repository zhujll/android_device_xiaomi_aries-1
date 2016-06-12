#MultiROM config. MultiROM also uses parts of TWRP config
DEVICE_RESOLUTION := 768x1280
TARGET_RECOVERY_IS_MULTIROM := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/xiaomi/aries/mrom/mr_init_devices.c
MR_RD_ADDR := 0x82500000
MR_DPI := hdpi
MR_DPI_FONT := 216
MR_FSTAB := device/xiaomi/aries/recovery/root/etc/twrp.fstab
MR_KEXEC_MEM_MIN := 0x85000000
#MR_INFOS := device/lge/mako/mrom_infos
