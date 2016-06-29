#MultiROM config. MultiROM also uses parts of TWRP config
DEVICE_RESOLUTION := 768x1280
TARGET_RECOVERY_IS_MULTIROM := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/xiaomi/aries/mrom/mr_init_devices.c
# MR_RD_ADDR := 0x82500000
MR_DPI := hdpi
MR_DPI_FONT := 216
MR_FSTAB := device/xiaomi/aries/mrom/twrp.fstab
MR_KEXEC_MEM_MIN := 0x85000000
MR_INFOS := device/xiaomi/aries/mrom_infos
MR_PIXEL_FORMAT := "RGBX_8888"
CMDLINE_FOR_HARDBOOT := console=ttyHSL0,115200,n8 androidboot.hardware=aries lpj=67677 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 lge.kcal=0|0|0|x root=mmcblk0
# ./kexec --load-hardboot ../zImage --mem-min=0x85000000 --atags-addr=0x80200100 --command-line='console=ttyHSL0,115200,n8 androidboot.hardware=aries lpj=67677 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 lge.kcal=0|0|0|x root=mmcblk0'

# atags-addr=0x80200100

