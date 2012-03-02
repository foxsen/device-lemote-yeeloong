#
# Copyright (C) 2009-2011 The Android-x86 Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#

# the path of target's AndroidBoard.mk that includes this file
TARGET_LOCAL_PATH := $(LOCAL_PATH)

LOCAL_PATH := $(call my-dir)

ifexist  = $(if $(wildcard $(1)),$(1),$(wildcard $(2)))
cfgfile  = $(call ifexist,$(TARGET_LOCAL_PATH)/$(1),$(LOCAL_PATH)/$(1))

define include-wpa-supplicant-conf
LOCAL_PATH := $(1)
include $$(CLEAR_VARS)
LOCAL_MODULE := wpa_supplicant.conf
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $$(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $$(LOCAL_MODULE)
LOCAL_PREBUILT_STRIP_COMMENTS := 1
include $$(BUILD_PREBUILT)
endef

define add-wpa-supplicant-conf
$(eval $(include-wpa-supplicant-conf))
endef

ifneq ($(BOARD_WPA_SUPPLICANT_DRIVER),)
$(call add-wpa-supplicant-conf,$(dir $(call cfgfile,wpa_supplicant.conf)))
endif
