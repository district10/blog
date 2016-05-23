GEN   = ./_gen.sh
IDX   = ./_idx.sh
PODIR = ../../publish
INDIR = ./
LRCIDX = $(PODIR)/lyrics.html
LYRICS = \
$(PODIR)/lyrics-00008.html \
$(PODIR)/lyrics-00007.html \
$(PODIR)/lyrics-00006.html \
$(PODIR)/lyrics-00005.html \
$(PODIR)/lyrics-00004.html \
$(PODIR)/lyrics-00003.html \
$(PODIR)/lyrics-00002.html \
$(PODIR)/lyrics-00001.html \

all: aha $(LYRICS) $(LRCIDX)

$(LYRICS): aha
$(LRCIDX): aha
aha: aha.c
	gcc $^ -std=c99 -o $@

clean:
	rm -f $(LYRICS) $(LRCIDX)

$(LYRICS): $(INDIR)/_a.md $(INDIR)/_b.md $(INDIR)/_c.md $(INDIR)/_d.md $(INDIR)/_main.css
$(PODIR)/%.html: $(INDIR)/%-a.md $(INDIR)/%-b.md $(INDIR)/%-c.md
	$(GEN) $@

index: $(LRCIDX)
$(LRCIDX): $(LYRICS)
	$(IDX) $(LYRICS)

s: song
song: make

m: make
make:
	$(EDITOR) Makefile
