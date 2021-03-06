LOCAL_PATH := $(call my-dir)

PRIVATE_INCLUDE_PATH := $(LOCAL_PATH)/private_include
LOCAL_TEST_SOURCE_PATH := test
LOCAL_SOURCE_PATH := src
LOCAL_LIBS_PATH := libs

include $(CLEAR_VARS)
LOCAL_MODULE := qmi
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libqmi.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := qcci_legacy
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libqcci_legacy.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := qmiservices
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libqmiservices.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := cutils
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libcutils.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := diag
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libdiag.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := dsutils
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libdsutils.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := idl
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libidl.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := qmi_client_qmux
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libqmi_client_qmux.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := mdmdetect
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libmdmdetect.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := utils
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libutils.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := backtrace
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libbacktrace.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := stlport
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libstlport.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := gccdemangle
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libgccdemangle.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := unwind
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libunwind.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := unwind-ptrace
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libunwind-ptrace.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := c
LOCAL_SRC_FILES := $(LOCAL_LIBS_PATH)/$(TARGET_ARCH_ABI)/libc.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := voice_service
LOCAL_CFLAGS += -DFEATURE_DSS_LINUX_ANDROID
LOCAL_CFLAGS += -DFEATURE_QMI_ANDROID
LOCAL_C_INCLUDES += $(PRIVATE_INCLUDE_PATH)
LOCAL_C_INCLUDES += $(PRIVATE_INCLUDE_PATH)/qcom/core
LOCAL_C_INCLUDES += $(PRIVATE_INCLUDE_PATH)/qcom/platform
LOCAL_C_INCLUDES += $(PRIVATE_INCLUDE_PATH)/qcom/qmi
LOCAL_C_INCLUDES += $(PRIVATE_INCLUDE_PATH)/qcom/services
LOCAL_SRC_FILES += $(LOCAL_SOURCE_PATH)/voice_service.c
LOCAL_SHARED_LIBRARIES := qmi qcci_legacy qmiservices cutils diag dsutils idl qmi_client_qmux mdmdetect utils backtrace stlport gccdemangle unwind unwind-ptrace c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := idl_version_checker
LOCAL_CFLAGS += -DFEATURE_DSS_LINUX_ANDROID
LOCAL_CFLAGS += -DFEATURE_QMI_ANDROID
LOCAL_C_INCLUDES += $(PRIVATE_INCLUDE_PATH)
LOCAL_C_INCLUDES += $(PRIVATE_INCLUDE_PATH)/qcom/core
LOCAL_C_INCLUDES += $(PRIVATE_INCLUDE_PATH)/qcom/services
LOCAL_SRC_FILES += $(LOCAL_TEST_SOURCE_PATH)/idl_version_checker.c
LOCAL_SHARED_LIBRARIES := qmiservices idl
include $(BUILD_EXECUTABLE)
