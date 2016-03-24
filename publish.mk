MD   = $(wildcard *.md)
HTML = $(MD:%.md=%.html)

PANDOC_OPTIONS = -S -s --ascii \
	-c main.css \
	-A footer.html \
	--highlight-style pygments \
	-f markdown+east_asian_line_breaks

all: html

html: $(HTML)

post-0051-spatial-gis.html: post-0051-spatial-gis.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc --mathjax \
		--bibliography $(patsubst %.md, %.bib, $^) \
		$< \
		-o $@
post-0050-gis-overall.html: post-0050-gis-overall.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc --mathjax \
		--bibliography $(patsubst %.md, %.bib, $^) \
		$< \
		-o $@

%.html: %.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc --mathjax \
		$< \
		-o $@
