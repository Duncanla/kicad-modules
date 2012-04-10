MODULES=$(wildcard *.fpd)

.SUFFIXES:	.fpd .mod
.PHONY:		all clean

all:		$(MODULES:%.fpd=%.mod)

clean:
		rm -f *~*.fpd
		rm -f $(MODULES:%.fpd=%.mod)

.fpd.mod:
		fped -k $< $@
