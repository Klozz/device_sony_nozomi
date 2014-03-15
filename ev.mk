# Inherit from AOSP device configuartion
$(call inherit-product, device/sony/nozomi/full_nozomi.mk)

# Inherit EV common GSM stuff.
$(call inherit-product, vendor/ev/config/gsm.mk)

# Boot Animation
#TARGET_SCREEN_HEIGHT := 1280
#TARGET_SCREEN_WIDTH := 720

# Inherit EV common Phone stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26i BUILD_FINGERPRINT=SEMC/LT26i_1257-6919/LT26i:4.1.2/6.2.B.0.200/N7__zg:user/release-keys PRIVATE_BUILD_DESC="LT26i-user 4.1.2 6.2.B.0.200 N7__zg test-keys"

PRODUCT_NAME := ev_nozomi
PRODUCT_DEVICE := nozomi
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia S

#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := Perdo
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Sony Xperia S\nPlease visit the\thread on XDA-developers.com\nfor the latest Evervolv updates\nGet the latest rom at goo.im\n------------------------------------------------\n"

# Copy compatible bootanimation
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/720p/media/bootanimation.zip:system/media/bootanimation.zip
	
# 720p overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/720p

# Pull all dictionaries
TARGET_USE_KEYBOARD := international

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot
