# This is the top-level Joy makefile
# It is just a disguised shell script

all:
	@if test -f gc.fail; then make -f make.nogc; elif test -f gc.succ; then make -f make.gc; elif (cd gc; make test); then touch gc.succ; rm -f gc.fail; make -f make.gc; else touch gc.fail; rm -f gc.succ; make -f make.nogc; fi

# Whew!  The readable version looks like this:
# if test -f gc.fail
# then	make -f make.nogc
# elif test -f gc.succ
# then	make -f make.gc
# elif (cd gc; make test)
# then	touch gc.succ
#	rm -f gc.fail
#	make -f make.gc
# else	touch gc.fail
#	rm -f gc.succ
#	make -f make.nogc
# fi

clean:
	rm -f *~ */*~
	rm -f gc.succ gc.fail *.o
	cd gc; $(MAKE) clean
