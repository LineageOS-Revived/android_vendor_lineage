LOCAL_PATH := $(call my-dir)

################################
# Copies the APN list file into $(TARGET_COPY_OUT_PRODUCT)/etc for the product as apns-conf.xml.
include $(CLEAR_VARS)

LOCAL_MODULE := apns-conf.xml
LOCAL_MODULE_CLASS := ETC

LOCAL_PREBUILT_MODULE_FILE := vendor/lineage/prebuilt/common/etc/apns-conf.xml

LOCAL_PRODUCT_MODULE := true

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fonts_customization.xml
LOCAL_SRC_FILES := etc/fonts_customization.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PRODUCT_MODULE := true
include $(BUILD_PREBUILT)
