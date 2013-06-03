LOCAL_PATH := $(call my-dir)

ifneq ($(USE_EXECLUDE_SUPERSU),) 
	#su binary 
        include $(CLEAR_VARS)
	LOCAL_MODULE := su
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/supersu
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

        #.su binary 
	include $(CLEAR_VARS)
	LOCAL_MODULE := .su
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/supersu
	LOCAL_SRC_FILES := su.ext
	include $(BUILD_PREBUILT)


	#SuperSU special installer APK
	include $(CLEAR_VARS)
	LOCAL_MODULE := Superuser.apk
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/supersu
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)
endif