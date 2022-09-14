obj-m := Parasite.o
KDIR ?= /mnt/linux

all:
	make -C $(KDIR) M=$(shell pwd) modules
	rm -r -f *.mod.c .*.cmd *.symvers *.o

clean:
	make -C $(KDIR) M=$(shell pwd) clean
