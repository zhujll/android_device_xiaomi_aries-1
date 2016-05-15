LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    rild_shim.cpp
LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libril_shim
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    	boringssl-compat/bio_b64.c \
	boringssl-compat/p_dec.c \
	boringssl-compat/p_enc.c \
	boringssl-compat/p_open.c \
	boringssl-compat/p_seal.c \
	boringssl-compat/rsa_pss.c 
LOCAL_SHARED_LIBRARIES := liblog libcrypto
LOCAL_MODULE := libshim_boringssl
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
