GEN   = ../_gen.sh
PODIR = ../publish
INDEX = ./_index.sh
READS = \
read-00002.md \
read-00001.md \

READS_HTML = \
$(PODIR)/read-00002.html \
$(PODIR)/read-00001.html \

all: $(PODIR)/reads.html $(READS_HTML)

clean:
	rm $(PODIR)/reads.html
	rm $(PODIR)/read-*.html

$(PODIR)/%.html: _read_header.md %.md _read_footer.md
	cat $^ | $(GEN) $@ &

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
