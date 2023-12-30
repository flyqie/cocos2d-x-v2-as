LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# For Android Studio
#$(call import-add-path,$(LOCAL_PATH)/../../../../..)
#$(call import-add-path,$(LOCAL_PATH)/../../../../../cocos2dx)
#$(call import-add-path,$(LOCAL_PATH)/../../../../../cocos2dx/platform/third_party/android/prebuilt)
#$(call import-add-path,$(LOCAL_PATH)/../../../../../external)
#$(call import-add-path,$(LOCAL_PATH)/../../../../../extensions)
#$(call import-add-path,$(LOCAL_PATH)/../../../../../CocosDenshion/android)

# !!!! dangerous, ONLY for debuging c++ with Android Studio
ifeq ($(NDK_DEBUG),1)
  LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
endif
# !!!! dangerous!!!!

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../../Classes/AppDelegate.cpp \
                   ../../../Classes/HelloWorldScene.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)