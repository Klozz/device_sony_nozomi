$(call inherit-product, device/sony/nozomi/full_nozomi.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/mk/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/mk/config/nfc_enhanced.mk)

PRODUCT_RELEASE_NAME := XS-MK

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26i BUILD_FINGERPRINT=SEMC/LT26i_1257-6919/LT26i:4.1.2/6.2.B.0.200/N7__zg:user/release-keys PRIVATE_BUILD_DESC="LT26i-user 4.1.2 6.2.B.0.200 N7__zg test-keys"

PRODUCT_NAME := mk_nozomi
PRODUCT_DEVICE := nozomi
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia S
