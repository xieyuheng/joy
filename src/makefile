.ONESHELL:

all:
	make -f make.nogc &&\
	make -f make.gc

clean:
	rm -f joy
	rm -f joy-no-gc
	rm -f gc.succ gc.fail *.o
	cd gc; $(MAKE) clean
