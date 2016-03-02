GEN   = ../_bin/_gen.sh
PODIR = ../publish
INDEX = ../_bin/reads_index.sh

MDS = $(wildcard read*.md)
READS_HTML = $(addprefix $(PODIR)/, $(MDS:%.md=%.html))
READS = $(MDS)

all: $(PODIR)/reads.html $(READS_HTML)

clean:
	rm $(PODIR)/reads.html
	rm $(PODIR)/read-*.html

$(PODIR)/%.html: _read_header.md %.md _read_footer.md
	cat $^ | $(GEN) $@

$(PODIR)/reads.html: $(READS_HTML)
	$(INDEX) $@ $(READS_HTML)

index: $(READS_HTML)
	$(INDEX) $(PODIR)/reads.html $(READS_HTML)

r: read
read:
	$(EDITOR) $(firstword $(READS))

m: make
make:
	$(EDITOR) Makefile
