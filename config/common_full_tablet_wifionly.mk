# Inherit common CM stuff
$(call inherit-product, vendor/beanstalk/config/common_full.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=Deneb.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/beanstalk/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
