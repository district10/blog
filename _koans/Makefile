GEN   = ../_bin/_gen.sh
NOW   = ../_bin/_now.sh
INDEX = ../_bin/koans_index.sh
PODIR = ../publish

MDS = $(wildcard koan*.md)
KOANS_HTML = $(addprefix $(PODIR)/, $(MDS:%.md=%.html))
KOANS = $(MDS)

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
