# Neuros Root Filesystem Makefile
#
#

ifndef PRJROOT
$(error You must first source the BSP environment: "source neuros-env")
endif


.PHONY: install clean

install:

	@echo "## Note: Portions of the root filesystem must be installed"
	@echo "   as root, using 'sudo'"

	@echo "## Cleaning rootfs..."
	@$(SU) rm -rf default

	@echo "## Duplicating base rootfs..."
	@cp -a base default

	@echo "## Copying over basic system libraries and stripping..."
	@cp -a $(TOOLCHAIN)/target/lib/ default
	@cd default/lib/ && arm-linux-strip --strip-unneeded *.so

	@echo "## Creating dev nodes..."
	@$(SU) $(PRJROOT)/build-tools/scripts/make-target-nodes.sh --devdir=$(PRJROOT)/rootfs/fs/dev

	@echo "## Copying over closed source kernel modules..."

clean:
	@echo "cleaning ..."

