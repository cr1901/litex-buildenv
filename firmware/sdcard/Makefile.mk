LIBSDCARDDIR=../../third_party/litesdcard/litesdcard/firmware
SDCARDDIR=.

CFLAGS += \
	-I$(SDCARD_DIRECTORY)/$(SDCARDDIR) \
	-I$(SDCARD_DIRECTORY)/$(LIBSDCARDDIR)
