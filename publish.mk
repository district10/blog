PANDOC_OPTIONS = -S -s --ascii \
	-c main.css \
	-A footer.html \
	--highlight-style pygments \
	-f markdown+east_asian_line_breaks

MD   = $(wildcard *.md)
HTML = $(MD:%.md=%.html)

TAGS = $(wildcard *.tags)
READINGLISTS = $(wildcard *.readinglist)

EXTRA_PAGES = ring.html tags.html reads.html

all: html
html: $(HTML)

# posts with bibs
post-0051-spatial-gis.html: post-0051-spatial-gis.bib
post-0051-spatial-gis.bib: 
	cp ../_posts/$@ $@
post-0051-spatial-gis.html: post-0051-spatial-gis.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc --mathjax \
		--bibliography $(patsubst %.md, %.bib, $<) \
		$< \
		-o $@
post-0050-gis-overall.html: post-0050-gis-overall.bib
post-0050-gis-overall.bib:
	cp ../_posts/$@ $@
post-0050-gis-overall.html: post-0050-gis-overall.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc --mathjax \
		--bibliography $(patsubst %.md, %.bib, $<) \
		$< \
		-o $@

# posts without mathjax
notes.html: notes.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc \
		$< \
		-o $@

# normal ones
%.html: %.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc --mathjax \
		$< \
		-o $@

# filtering
filter:
	perl filter.pl

# extra ones
extras: $(EXTRA_PAGES)
%.html: %.txt
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc \
		$< \
		-o $@

ring.txt: $(MD)
	cat $^ > $@
tags.txt: $(TAGS)
	cat $^ | perl ../tags.pl | perl -we 'print sort <>' > $@
reads.txt: $(READINGLISTS)
	cat $^ > $@

m:
	$(EDITOR) Makefile	
