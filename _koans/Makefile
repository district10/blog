GEN   = ../_gen.sh
NOW   = ../_now.sh
INDEX = ./_index.sh
PODIR = ../publish
KOANS_HTML = \
$(PODIR)/koan-00002.html \
$(PODIR)/koan-00001.html \

KOANS = \
koan-00002.md \
koan-00001.md \

all: $(PODIR)/koans.html $(KOANS_HTML)

clean:
	rm $(PODIR)/koan*

$(PODIR)/%.html: _koan_header.md %.md _koan_footer.md
	cat $^ | $(GEN) $@

$(PODIR)/koans.html: $(KOANS_HTML)
	$(INDEX) $@ $(KOANS_HTML)

k: koan
koan: now
	$(EDITOR) $(firstword $(KOANS))

now:
	$(NOW)

m: make
make:
	$(EDITOR) Makefile
