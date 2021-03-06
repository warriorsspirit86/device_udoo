$(call inherit-product, device/udoo/imx6/imx6.mk)
$(call inherit-product-if-exists,vendor/google/products/gms.mk)

ifneq ($(wildcard device/udoo/udooneo_6sx/fstab.freescale),)
$(shell touch device/udoo/udooneo_6sx/fstab.freescale)
endif

# Overrides
PRODUCT_NAME := udooneo_6sx
PRODUCT_DEVICE := udooneo_6sx


# setup dm-verity configs.
#  PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk0p5
#  $(call inherit-product, build/target/product/verity.mk)


DEVICE_PACKAGE_OVERLAYS := device/udoo/udooneo_6sx/overlay

PRODUCT_AAPT_PREF_CONFIG := tvdpi
PRODUCT_CHARACTERISTICS := tv

# PRODUCT_CHARACTERISTICS := tablet

# PRODUCT_PACKAGES += \
# 	udooneo-m4uploader \
# 	Minicom \
# 	uim-sysfs

# PRODUCT_COPY_FILES += \
# 	device/udoo/common/tools/expand-data-partition:system/bin/expand-data-partition \
# 	device/udoo/common/tools/expand-data-fs.zip:system/etc/expand-data-fs.zip \
# 	device/udoo/udooneo_6sx/init.udoosx.rc:root/init.freescale.rc \
# 	device/udoo/udooneo_6sx/audio_policy.conf:system/etc/audio_policy.conf \
# 	device/udoo/udooneo_6sx/audio_effects.conf:system/vendor/etc/audio_effects.conf

# PRODUCT_COPY_FILES += \
# 	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
# 	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
# 	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
# 	frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
# 	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
# 	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
# 	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
# 	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
# 	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
# 	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
# 	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml
