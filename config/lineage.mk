# Unofficial patch level
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.lineage.custom_version=2026-03-01

# Adblock
PRODUCT_PACKAGES += \
    hosts.adblock

PRODUCT_COPY_FILES += \
    vendor/lineage/etc/init/init.adblock.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.adblock.rc

# Media
PRODUCT_PACKAGES += \
    Glimpse_prebuilt \
    MuPDF \
    Twelve_prebuilt
