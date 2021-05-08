TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Vibin

Vibin_FILES = $(wildcard *.xm *.m)
$(TWEAK_NAME)_PRIVATE_FRAMEWORKS = MediaRemote
Vibin_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk