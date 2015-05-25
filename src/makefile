.ONESHELL:

joy:
	make -f make.gc

joy-no-gc:
	make -f make.nogc

clean:
	rm -f joy
	rm -f joy-no-gc
	rm -f gc.succ gc.fail *.o
	cd gc; $(MAKE) clean
