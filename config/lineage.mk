# Unofficial patch level
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.lineage.custom_version=2026-06-01

# Adblock
PRODUCT_PACKAGES += \
    hosts.adblock

PRODUCT_COPY_FILES += \
    vendor/lineage/etc/init/init.adblock.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.adblock.rc

# Camera
ifneq ($(TARGET_APERTURE_OPTOUT),true)
PRODUCT_PACKAGES += \
    Aperture_prebuilt
endif

# Media
PRODUCT_PACKAGES += \
    Glimpse_prebuilt \
    MuPDF \
    Twelve_prebuilt

# Disable iorapd
PRODUCT_SYSTEM_PROPERTIES += \
    ro.iorapd.enable=false
