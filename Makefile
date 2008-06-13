# Neuros Root Filesystem Makefile
#
#

ifndef PRJROOT
$(error You must first source the BSP environment: "source neuros-env")
endif

.PHONY: install clean install-nfs

install: clean
	@echo "## Duplicating base rootfs..."
	@cp -a base default

	@echo "## Copying over basic system libraries and stripping..."
	@cp -a $(TOOLCHAIN)/target/lib/ default
	@cd default/lib/ && arm-linux-strip --strip-unneeded *.so

	@echo "## Creating dev nodes..."
	@$(FAKESU) -s fakeroot_state -i fakeroot_state $(PRJROOT)/build-tools/scripts/make-target-nodes.sh --devdir=$(PRJROOT)/rootfs/fs/dev

	@echo "## install done."

clean:
	@echo "## Cleaning rootfs..."
	@$(FAKESU) rm -rf default
	@rm -f fakeroot_state

	@echo "## clean done."

install-nfs:
	@cd fs || (echo "Rootfs is not built, so can't copy it for NFS. Exiting." && exit 1)

	@echo "## Packing up rootfs..."
# fist pack up the entire rootfs except the dev directory that need special handling.
	@cd fs && tar --create --exclude=.gitignore --exclude=./dev --file ../rootfs-nfs.tar .
# add the dev directory to the archive from inside fakeroot, so it will keep the device nodes as such
	@cd fs && $(FAKESU) -s ../fakeroot_state -i ../fakeroot_state \
	-- tar --append --exclude=.gitignore --file ../rootfs-nfs.tar ./dev
# unpack everything as root so that the dev nodes become real dev nodes and can be NFS mounted from the device
	mkdir -p nfs-rootfs

	@echo "## Unpacking the rootfs in the install directory..."
	@echo "To create the correct device nodes that NFS can use, you need to be root."
	@echo "The tool \"$(SU)\" may now request authentication to you."
	@cd nfs-rootfs && $(SU) tar --extract --file ../rootfs-nfs.tar

	@rm rootfs-nfs.tar

	@echo "## install-nfs done."

clean-nfs:
	@echo "## Cleaning installed rootfs..."
	@echo "To remove the rootfs installed for NFS mount, you need to be root since it contain device nodes."
	@echo "The tool \"$(SU)\" may now request authentication to you."
	@$(SU) rm -r nfs-rootfs

	@echo "## clean-nfs done."
