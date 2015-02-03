LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=                 \
        AnotherPacketSource.cpp   \
        ATSParser.cpp             \
        ESQueue.cpp               \
        MPEG2PSExtractor.cpp      \
        MPEG2TSExtractor.cpp      \

LOCAL_C_INCLUDES:= \
        $(TOP)/frameworks/av/media/libstagefright \
        $(TOP)/frameworks/native/include/media/openmax \
<<<<<<< HEAD
        $(TOP)/hardware/qcom/media/mm-core/inc
=======
        $(TOP)/$(call project-path-for,qcom-media)/mm-core/inc
>>>>>>> e233453... mpeg2ts: Add support for parsing HEVC stream in MPEG2 TS container

LOCAL_CFLAGS += -Werror

LOCAL_MODULE:= libstagefright_mpeg2ts

ifeq ($(TARGET_ARCH),arm)
    LOCAL_CFLAGS += -Wno-psabi
endif

include $(BUILD_STATIC_LIBRARY)
