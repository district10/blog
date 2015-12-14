GEN   = ../_gen.sh
NOW   = ../_now.sh
PODIR = ../publish
KOANS = \
koan-00001.md \

all: $(PODIR)/koans.html

clean:
	rm $(PODIR)/koan*

$(PODIR)/koans.html: _koan_header.md $(KOANS) _koan_footer.md
	cat $^ | $(GEN) $@ &

k: koan
koan: now
	$(EDITOR) $(firstword $(KOANS))

now:
	$(NOW)

m: make
make:
	$(EDITOR) Makefile
