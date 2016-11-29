FROM := markdown+abbreviations+pandoc_title_block
ifeq (,$(DUMB))
	FROM := $(FROM)+east_asian_line_breaks+emoji
endif
PANDOC_OPTIONS = -S -s --ascii --toc \
	--highlight-style pygments --template template.html \
	-f $(FROM) metadata.yaml

MD   = $(wildcard *.md)
HTML = $(MD:%.md=%.html)

TAGS = $(wildcard *.tags)
READINGLISTS = $(wildcard *.readinglist)

EXTRA_PAGES = ring.html tags.html reads.html
NO_MATHJAX_PAGES = $(EXTRA_PAGES) notes.html index.html

all: html
html: $(HTML)
# $(HTML): template.html metadata.yaml

# posts with bibs
post-0051-spatial-gis.html: post-0051-spatial-gis.bib
post-0051-spatial-gis.bib:
	cp ../_posts/$@ $@
post-0051-spatial-gis.html: post-0051-spatial-gis.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--mathjax \
		$< \
		-o $@
post-0050-gis-overall.html: post-0050-gis-overall.bib
post-0050-gis-overall.bib:
	cp ../_posts/$@ $@
post-0050-gis-overall.html: post-0050-gis-overall.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--mathjax \
		$< \
		-o $@

# fontawsome as test
post-0088-font-awesome.html: post-0088-font-awesome.md
	pandoc \
		$(PANDOC_OPTIONS) \
		$(patsubst %.md, %.changes.yml, $<) \
		$< \
		-o $@

# posts without mathjax
notes.html: notes.md
	pandoc \
		$(PANDOC_OPTIONS) \
		$(patsubst %.md, %.changes.yml, $<) \
		$< \
		-o $@
koans.html: koans.md
	pandoc \
		$(PANDOC_OPTIONS) \
		$(patsubst %.md, %.changes.yml, $<) \
		--toc \
		$< \
		-o $@

# extras
post-0084-complex-network-notes.html: post-0084-complex-network-notes.md
	pandoc \
		$(PANDOC_OPTIONS) \
		$< \
		-o $@

# normal ones
%.html: %.md
	pandoc \
		$(PANDOC_OPTIONS) \
		$(patsubst %.md, %.changes.yml, $<) \
		--toc --mathjax \
		$< \
		-o $@

# filtering
filter:
	perl filter.pl
sitemap:
	perl sitemap.pl | pandoc -s --ascii > sitemap.html

# extra ones
extras: $(EXTRA_PAGES)
%.html: %.txt
	pandoc \
		$(PANDOC_OPTIONS) \
		$(patsubst %.md, %.changes.yml, $<) \
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
