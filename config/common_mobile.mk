# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/lineage/config/common.mk)

# Include AOSP audio files
include vendor/lineage/config/aosp_audio.mk

# Include Lineage audio files
include vendor/lineage/config/lineage_audio.mk

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Apps
PRODUCT_PACKAGES += \
    Backgrounds \
    Etar \
    ExactCalculator \
    Jelly \
    Profiles \
    Seedvault

ifneq ($(TARGET_EXCLUDES_AUDIOFX),true)
PRODUCT_PACKAGES += \
    AudioFX
endif

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
    TrebuchetQuickStepGo

PRODUCT_DEXPREOPT_SPEED_APPS += \
    TrebuchetQuickStepGo
else
PRODUCT_PACKAGES += \
    TrebuchetQuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    TrebuchetQuickStep
endif

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(WITH_LINEAGE_CHARGER),false)
PRODUCT_PACKAGES += \
    lineage_charger_animation
endif

# Customizations
PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay

# FaceUnlock
ifneq ($(TARGET_FACE_UNLOCK_OPTOUT), true)
PRODUCT_PACKAGES += \
    FaceUnlockOverlay \
    LMOFaceUnlock

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/app/LMOFaceUnlock/LMOFaceUnlock.apk \
    system/app/LMOFaceUnlock/lib/%/libtensorflowlite_jni.so \
    system/etc/face/detect-class1.tflite \
    system/etc/face/detect-class1.txt \
    system/etc/face/mobile_face_net.tflite \
    system/etc/face/mobile_face_net.txt \
    system/etc/permissions/android.hardware.biometrics.face.xml \
    system/lib%/libtensorflowlite_jni.so
endif

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    ThemePicker
