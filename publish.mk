MD   = $(wildcard *.md)
HTML = $(MD:%.md=%.html)

PANDOC_OPTIONS = -S -s --ascii \
	-c main.css \
	-A ../footer.html \
	--highlight-style pygments \
	-f markdown+east_asian_line_breaks

all: 

filter: 
	perl filter.pl

html: $(HTML)
%.html: %.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc \
		$^ \
		-o $@
