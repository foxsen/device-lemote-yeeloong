#
# This file is the build configuration for a full Android
# build for yeeloong hardware. 
#


# A few more packages that aren't quite used on all builds
PRODUCT_PACKAGES := \
        HoloSpiralWallpaper \
        LiveWallpapersPicker \
        VisualizationWallpapers

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/lemote/yeeloong/device.mk)

PRODUCT_LOCALES := en_US zh_CN

PRODUCT_NAME := yeeloong
PRODUCT_DEVICE := yeeloong
PRODUCT_BRAND := lemote
PRODUCT_MODEL := android on lemote Yeeloong laptop 
