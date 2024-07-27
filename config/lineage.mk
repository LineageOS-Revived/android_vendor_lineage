# Updater URI and changelog
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    lineage.updater.uri=https://raw.githubusercontent.com/LineageOS-Revived/ota_config/lineage-18.1/$(LINEAGE_BUILD).json

# Disable RescueParty due to high risk of data loss
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.disable_rescue=true

# Camera
ifneq ($(TARGET_APERTURE_OPTOUT),true)
PRODUCT_PACKAGES += \
    Aperture \
    Glimpse
endif

#Captive-Portal detection overlays
#(default: GrapheneOS - see vendor/lineage/overlay)
PRODUCT_PACKAGES += \
  overlay-204-android-Google \
  overlay-204-android-openSUSE \
  overlay-204-android-Ubuntu \
  overlay-204-networkstack-Google \
  overlay-204-networkstack-openSUSE \
  overlay-204-networkstack-Ubuntu
