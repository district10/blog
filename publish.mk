+EAST_ASIAN_LINE_BREAKS=$(echo '' | pandoc -f markdown+east_asian_line_breaks 2&>/dev/null && echo -n '+east_asian_line_breaks' || echo -n '')
PANDOC_OPTIONS = -S -s --ascii \
	-c main.css \
	-A footer.html \
	--highlight-style pygments \
	-f markdown$(+EAST_ASIAN_LINE_BREAKS)

MD   = $(wildcard *.md)
HTML = $(MD:%.md=%.html)

all: html
html: $(HTML)

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

reads.html: reads.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc \
		$< \
		-o $@
notes.html: notes.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc \
		$< \
		-o $@

%.html: %.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc --mathjax \
		$< \
		-o $@

m:
	$(EDITOR) Makefile
