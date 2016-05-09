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

# This file includes all definitions that apply to ALL aries devices, and
# are also specific to aries devices
#
# Everything in this directory will become public

# overlays
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

	lights.mako \
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
	$(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
	$(LOCAL_PATH)/audio/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	$(LOCAL_PATH)/configs/thermald-aries.conf:system/etc/thermald.conf \
	$(LOCAL_PATH)/rootdir/init.aries.rc:root/init.aries.rc \
	$(LOCAL_PATH)/rootdir/init.aries.usb.rc:root/init.aries.usb.rc \
	$(LOCAL_PATH)/rootdir/fstab.aries:root/fstab.aries \
	$(LOCAL_PATH)/rootdir/ueventd.aries.rc:root/ueventd.aries.rc \
	$(LOCAL_PATH)/rootdir/etc/init.aries.bt.sh:system/etc/init.aries.bt.sh \
	$(LOCAL_PATH)/rootdir/etc/init.aries.fm.sh:system/etc/init.aries.fm.sh \
	$(LOCAL_PATH)/recovery/init.recovery.aries.rc:root/init.recovery.aries.rc \
	$(LOCAL_PATH)/rootdir/etc/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/rootdir/etc/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/rootdir/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/sensor00fn1a.kl:system/usr/keylayout/sensor00fn1a.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
	$(LOCAL_PATH)/rootdir/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
	$(LOCAL_PATH)/rootdir/usr/keychars/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
	$(LOCAL_PATH)/rootdir/usr/keychars/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm \
	$(LOCAL_PATH)/rootdir/usr/keychars/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Audio
PRODUCT_PACKAGES += \
	alsa.msm8960 \
	audio_policy.aries \
	audio.primary.aries \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler \
	tinymix \
	libqcomvoiceprocessing

# fmradio
PRODUCT_PACKAGES += \
	qcom.fmradio \
	libqcomfm_jni \
	FM2 \
	FMRecord

# Charger

PRODUCT_PACKAGES += \
	charger_res_images

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	e2fsck \
	setup_fs

# GPS
PRODUCT_PACKAGES += \
	libloc_adapter \
	libloc_eng \
	libloc_api_v02 \
	libloc_ds_api \
	libloc_core \
	libizat_core \
	libgeofence \
	libgps.utils \
	gps.msm8960 \
	flp.msm8960

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
	$(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# Graphics
PRODUCT_PACKAGES += \
	copybit.msm8960 \
	gralloc.msm8960 \
	hwcomposer.msm8960 \
	libgenlock \
	liboverlay \
	memtrack.msm8960 \
	copybit.msm8960 \
	librs_jni

# Keystore
PRODUCT_PACKAGES += \
	keystore.msm8960

# Lights
PRODUCT_PACKAGES += \
	lights.aries

# OMX
ifeq ($(findstring tiny, $(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
        libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert \
	libOmxAacEnc \
	libOmxAmrEnc \
	libOmxEvrcEnc \
	libOmxQcelp13Enc
endif

# Power
PRODUCT_PACKAGES += \
	power.aries

# QRNGD
PRODUCT_PACKAGES += qrngd

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# RIL
PRODUCT_PACKAGES += \
	hci_qcomm_init

# Wifi
PRODUCT_PACKAGES += \
	libwcnss_qmi \
	wcnss_service \
	libwpa_client \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant \
	wpa_supplicant.conf

# Bluetooth
PRODUCT_PACKAGES += \
	bdAddrLoader

# Dualboot
PRODUCT_PACKAGES += \
	syspart_select
	
ifeq ($(findstring tiny, $(TARGET_PRODUCT)),)
PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true
endif

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_TAGS += dalvik.gc.type-precise

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# This is the aries-specific audio package
$(call inherit-product, frameworks/base/data/sounds/AudioPackage10.mk)

$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)
