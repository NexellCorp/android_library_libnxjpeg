LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_VENDOR_MODULE := true

LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libjpeg

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)	\
	external/libjpeg-turbo\
	$(call include-path-for)

LOCAL_CFLAGS += -DANDROID

LOCAL_SRC_FILES:= libnxjpeg.c

LOCAL_MODULE:= libnxjpeg

include $(BUILD_SHARED_LIBRARY)
