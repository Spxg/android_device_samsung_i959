#
# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/samsung/i959

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot Animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal5410 \
    init.universal5410.rc \
    init.universal5410.usb.rc \
    init.universal5410.wifi.rc \
    ueventd.universal5410.rc

# Recovery Ramdisk
PRODUCT_PACKAGES += \
    init.recovery.universal5410.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# AAPT Config
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# ADB Debugging
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    $(LOCAL_PATH)/bluetooth/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd

# Camera
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1 \
    camera2.portability.force_api=1

PRODUCT_PACKAGES += \
    libhwjpeg \
    Snap

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images

# GearCM
PRODUCT_PACKAGES += \
    OTAUpdates

# GPS
PRODUCT_PACKAGES += \
    libdmitry \
    libstlport

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.cer:system/etc/gps.cer \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml \
    $(LOCAL_PATH)/configs/gps/SuplRootCert:system/etc/SuplRootCert

# GPU
PRODUCT_PACKAGES += \
    libcorkscrew \
    pvrsrvctl

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.disable_scissor_opt=true \
    ro.opengles.version=131072

# Hardware Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# HW Composer
PRODUCT_PACKAGES += \
    hwcomposer.exynos5 \
    libion

# IR
PRODUCT_PACKAGES += \
    consumerir.universal5410

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.exynos5

# Lights
PRODUCT_PACKAGES += \
    lights.universal5410

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Memory Tracker HAL
PRODUCT_PACKAGES += \
    memtrack.exynos5

# MobiCore
PRODUCT_PACKAGES += \
    mcDriverDaemon

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    com.android.nfc_extras \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.bcm2079x.universal5410

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# OMX
PRODUCT_PACKAGES += \
    libExynosOMX_Core \
    libOMX.Exynos.AVC.Decoder \
    libOMX.Exynos.AVC.Encoder \
    libOMX.Exynos.MPEG4.Decoder \
    libOMX.Exynos.MPEG4.Encoder \
    libOMX.Exynos.VP8.Decoder \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.universal5410

# Radio
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/ril/sbin/cbd:system/bin/cbd

PRODUCT_PROPERTY_OVERRIDES += \
    ril.sw_ver=I959KEUJOH4 \
    ril.hw_ver=Not Active \
    ril.rfcal_date=0000.00.00 \
    ril.product_code=Not Active \
    ril.modem.board=ESC6270

PRODUCT_PACKAGES += \
    libsamsung_symbols \
    libsecril-client-sap \
    SamsungServiceMode \
    modemloader

PRODUCT_PROPERTY_OVERRIDES += \
    ro.data.large_tcp_window_size=true

# SELinux
# temp fix build not booting
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.build.selinux=1

# Tethering Config
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# VM Config
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.dex2oat-swap=false \
    ro.kernel.android.checkjni=0

# Wi-Fi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libnetcmdiface \
    macloader \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=45

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    libtinyxml


#PRODUCT_PROPERTY_OVERRIDES += \
#    af.fast_track_multiplier=1 \
#    audio.offload.disable=1 \
#    media.aac_51_output_enabled=true \
#    persist.incall.workaround=true

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/ysound.xml:system/etc/ysound.xml \
    $(LOCAL_PATH)/configs/ymc/param/aec_adc.dat:system/etc/ymc/param/aec_adc.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_ae0_through.dat:system/etc/ymc/param/aec_ae0_through.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_ae1_through.dat:system/etc/ymc/param/aec_ae1_through.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_fifo.dat:system/etc/ymc/param/aec_cdsp_a_voice_fifo.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_nb.dat:system/etc/ymc/param/aec_cdsp_a_voice_nb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_param.dat:system/etc/ymc/param/aec_cdsp_a_voice_param.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_vbox.dat:system/etc/ymc/param/aec_cdsp_a_voice_vbox.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_wb.dat:system/etc/ymc/param/aec_cdsp_a_voice_wb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_config.dat:system/etc/ymc/param/aec_config.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_control_path_off.dat:system/etc/ymc/param/aec_control_path_off.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_control_path_resume.dat:system/etc/ymc/param/aec_control_path_resume.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_24khz_2mic_bi.dat:system/etc/ymc/param/aec_fdsp_24khz_2mic_bi.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_24khz_2mic_uni.dat:system/etc/ymc/param/aec_fdsp_24khz_2mic_uni.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_24khz_vbox_rec.dat:system/etc/ymc/param/aec_fdsp_24khz_vbox_rec.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_1mic.dat:system/etc/ymc/param/aec_fdsp_bypass_1mic.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_nb_bt.dat:system/etc/ymc/param/aec_fdsp_bypass_nb_bt.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_nb.dat:system/etc/ymc/param/aec_fdsp_bypass_nb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_voip.dat:system/etc/ymc/param/aec_fdsp_bypass_voip.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_wb_bt.dat:system/etc/ymc/param/aec_fdsp_bypass_wb_bt.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_wb.dat:system/etc/ymc/param/aec_fdsp_bypass_wb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_chsel_rec.dat:system/etc/ymc/param/aec_fdsp_chsel_rec.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_chsel.dat:system/etc/ymc/param/aec_hf50_chsel.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_chsel_src.dat:system/etc/ymc/param/aec_hf50_chsel_src.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_chsel_svoice.dat:system/etc/ymc/param/aec_hf50_chsel_svoice.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_nb_vbox_cp.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_swb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_swb_vbox_cp.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_vbox.dat:system/etc/ymc/param/aec_hf50_voip_vbox.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_svoice_2.dat:system/etc/ymc/param/aec_hf50_wb_svoice_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_svoicecar_2.dat:system/etc/ymc/param/aec_hf50_wb_svoicecar_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_wb_vbox_cp.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_vbox_svoice.dat:system/etc/ymc/param/aec_hf50_wb_vbox_svoice.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hp_dac0.dat:system/etc/ymc/param/aec_hp_dac0.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_line1_dac0.dat:system/etc/ymc/param/aec_line1_dac0.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_line2_dac1.dat:system/etc/ymc/param/aec_line2_dac1.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_lrmix.dat:system/etc/ymc/param/aec_lrmix.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_lrmix_dac1.dat:system/etc/ymc/param/aec_lrmix_dac1.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_rc_dac0.dat:system/etc/ymc/param/aec_rc_dac0.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_sidetone.dat:system/etc/ymc/param/aec_sidetone.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_sidetone_vol_nb.dat:system/etc/ymc/param/aec_sidetone_vol_nb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_sidetone_vol_wb.dat:system/etc/ymc/param/aec_sidetone_vol_wb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_sp_dac1.dat:system/etc/ymc/param/aec_sp_dac1.dat


# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/i959/i959-vendor.mk)
