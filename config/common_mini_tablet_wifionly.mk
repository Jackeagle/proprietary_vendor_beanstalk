# Inherit common CM stuff
$(call inherit-product, vendor/beanstalk/config/common.mk)

# Include CM audio files
include vendor/beanstalk/config/bean_audio.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=Deneb.ogg \
    ro.config.alarm_alert=Hassium.ogg

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/beanstalk/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
