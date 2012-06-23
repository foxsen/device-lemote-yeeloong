
LOCAL_PATH = $(call my-dir)

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_COPY_FILES += \
	device/lemote/yeeloong/vold.fstab:system/etc/vold.fstab \
	device/lemote/yeeloong/asound.conf:system/etc/asound.conf \
        device/lemote/yeeloong/init.rc:root/init.rc \
        device/lemote/yeeloong/init.sh:root/init.sh \
        device/lemote/yeeloong/yeeloong-keys.kl:system/usr/keylayout/cpcap-key.kl

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# back light

PRODUCT_PACKAGES += \
    lights.yeeloong \
    audio.primary.yeeloong

# Get the hardware acceleration libraries
$(call inherit-product-if-exists,device/common/gpu/gpu_mesa.mk)

# Get some sounds
$(call inherit-product-if-exists,frameworks/base/data/sounds/AllAudio.mk)

# Get the alsa files
$(call inherit-product-if-exists,device/lemote/yeeloong/alsa.mk)

# Get the wifi files
$(call inherit-product-if-exists,device/lemote/yeeloong/wifi.mk)




