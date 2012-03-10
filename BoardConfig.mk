# These definitions override the defaults in config/config.make.
TARGET_BOARD_PLATFORM := yeeloong

TARGET_COMPRESS_MODULE_SYMBOLS := false

TARGET_PRELINK_MODULE := true

TARGET_NO_BOOTLOADER := true

TARGET_NO_RECOVERY := true

#TARGET_NO_KERNEL := true

#BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

TARGET_PROVIDES_INIT_RC := true

USE_CAMERA_STUB := false

USE_CUSTOM_RUNTIME_HEAP_MAX := "512M"

TARGET_BOOTIMAGE_USE_EXT2 := true
#TARGET_USE_DISKINSTALLER := true


BOARD_KERNEL_CMDLINE := console=tty androidboot.hardware=yeeloong

BOARD_FLASH_BLOCK_SIZE := 512

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_USES_R600G := true
BOARD_USES_HWOPENGL :=        \
        $(BOARD_USES_I915C)   \
        $(BOARD_USES_I915G)   \
        $(BOARD_USES_I965C)   \
        $(BOARD_USES_I965G)   \
        $(BOARD_USES_NOUVEAU) \
        $(BOARD_USES_R600G)   \
        $(BOARD_USES_VMWGFX)  \

ifeq ($(strip $(sort $(BOARD_USES_HWOPENGL))),true)
BOARD_USES_DRM := true
BOARD_USES_MESA := true
BOARD_EGL_CFG := device/lemote/yeeloong/egl.cfg
endif

BOARD_GPU_DRIVERS := r600g

# This enables the wpa wireless driver
BOARD_WPA_SUPPLICANT_DRIVER ?= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB ?= private_lib_driver_cmd
WPA_SUPPLICANT_VERSION ?= VER_0_8_X
#WIFI_DRIVER_MODULE_PATH ?= auto

