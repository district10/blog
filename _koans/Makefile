GEN   = ../_gen.sh
PODIR = ../publish
KOANS = \
koan-00001.md \

all: $(PODIR)/koans.html

clean:
	rm $(PODIR)/koan*

$(PODIR)/koans.html: _koan_header.md $(KOANS) _koan_footer.md
	cat $^ | $(GEN) $@ &

koan:
	$(EDITOR) $(firstword $(KOANS))
make:
	$(EDITOR) Makefile
