# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-720x1280

$(call inherit-product, device/sony/nozomi/full_nozomi.mk)

# Inherit slim common GSM stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

# Inherit slim common Phone stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

#Boot Animation
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip
	
#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

#Extra Device info
PRODUCT_PROPERTY_OVERRIDES += \
	ro.device.cpu=Snapdragon S3 \
	ro.device.gpu=Adreno 220 \
	ro.device.rear_cam=12 MP \
	ro.device.front_cam=1.3 MP \
	ro.device.screen_res=720x1280

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26i BUILD_FINGERPRINT=SEMC/LT26i_1257-6919/LT26i:4.1.2/6.2.B.0.200/N7__zg:user/release-keys PRIVATE_BUILD_DESC="LT26i-user 4.1.2 6.2.B.0.200 N7__zg test-keys"

PRODUCT_NAME := slim_nozomi
PRODUCT_DEVICE := nozomi
# Release name
PRODUCT_RELEASE_NAME := SLIM-LT26