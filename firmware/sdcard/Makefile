include ../include/generated/variables.mak
include $(SOC_DIRECTORY)/software/common.mak

VPATH=$(SDCARD_DIRECTORY)

include $(SDCARD_DIRECTORY)/Makefile.mk

CCDEP=$(CC)

SDCARDOBJS=$(LIBSDCARDDIR)/sdcard.o

SDCARDLIB=libsdcard.a

all: $(SDCARDLIB)

.PHONY: all compile clean

# pull in dependency info for *existing* .o files
-include $(SDCARDOBJS:.o=.d)

%.o: %.c
	@mkdir -p $(@D)
	$(compile)

%.o: %.S
	@mkdir -p $(@D)
	$(assemble)

clean:
	rm -f $(SDCARDOBJS) $(SDCARDOBJS:.o=.d) libsdcard.a

libsdcard.a: $(SDCARDOBJS)
	$(AR) clr libsdcard.a $(SDCARDOBJS)
