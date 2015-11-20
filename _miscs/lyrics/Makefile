GEN   = ./_gen.sh
IDX   = ./_idx.sh
PODIR = ../../publish
INDIR = ./
LRCIDX = $(PODIR)/lyrics.html
LYRICS = \
$(PODIR)/lyrics-00001.html \

all: $(LYRICS) $(LRCIDX)

clean:
	rm -f $(LYRICS) $(LRCIDX)

$(LYRICS): $(INDIR)/_a.md $(INDIR)/_b.md $(INDIR)/_c.md $(INDIR)/_d.md $(INDIR)/_main.css
$(PODIR)/%.html: $(INDIR)/%-a.md $(INDIR)/%-b.md
	$(GEN) $@

$(LRCIDX): $(LYRICS)
	$(IDX) $^

m: make
make:
	$(EDITOR) Makefile
