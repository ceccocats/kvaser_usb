obj-m += kvaser_usb.o
kvaser_usb-y = kvaser_usb_core.o kvaser_usb_leaf.o kvaser_usb_hydra.o

ifndef KDIR
KDIR:=/lib/modules/$(shell uname -r)/build
endif
PWD:=$(shell pwd)
default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
