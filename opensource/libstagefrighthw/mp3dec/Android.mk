LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    STE_SoftMP3_Dec.cpp

LOCAL_C_INCLUDES := \
    frameworks/av/media/libstagefright/include \
    frameworks/native/include/media/openmax \
    $(MY_MULTIMEDIA_PATH)/audio/mp3/codec/include

LOCAL_CFLAGS := \
    -DARM -DNEON -DNDEBUG \
    -DBUILD_FIXED

LOCAL_SHARED_LIBRARIES := \
    libstagefright \
    libstagefright_omx \
    libstagefright_foundation \
    libutils \
    libdl

LOCAL_STATIC_LIBRARIES += liblog
LOCAL_MODULE := libstagefright_soft_ste_mp3dec
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
