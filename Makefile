TARGET := iphone:clang:latest:15.0
INCLUDE_SDKVERSION = 14.5
INSTALL_TARGET_PROCESSES = birdview.HwaHae

THEOS_PACKAGE_SCHEME=rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = hwahae-jb

hwahae-jb_FILES = Tweak.x
hwahae-jb_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
