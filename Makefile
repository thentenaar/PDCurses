# Make archives for distribution

include version.mif

PDC_DIR=PDCurses-$(VERDOT)

ZIPFILE = pdcurs$(VER).zip
TARBALL = $(PDC_DIR).tar.gz

all:
	@echo Look in folders for platform-specific build instructions.

$(ZIPFILE):
	zip -9ory $(ZIPFILE) *

zip: $(ZIPFILE)

../$(TARBALL):
	(cd ..; tar cvf - $(PDC_DIR)/* | gzip -9 > $(TARBALL))

dist: ../$(TARBALL)
