#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/kindle/k10
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/mtk_plpath_utils \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    checkpoint_gc
    
# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# OTA packages - Commented out to reduce image size
# Uncomment if OTA functionality is needed
# PRODUCT_PACKAGES += \
#     otapreopt_script \
#     cppreopts.sh \
#     update_engine \
#     update_verifier \
#     update_engine_sideload
