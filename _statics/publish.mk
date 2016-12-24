FROM := markdown+abbreviations+pandoc_title_block
ifeq (,$(DUMB))
	FROM := $(FROM)+east_asian_line_breaks+emoji
endif
PANDOC_OPTIONS := -S -s --ascii --toc --highlight-style pygments --template template.html -f $(FROM) metadata.yaml

MD   := $(wildcard *.md)
HTML := $(MD:%.md=%.html)

all: html
html: template.html metadata.yaml
html: $(HTML)

notes.html: notes.md
	pandoc $(PANDOC_OPTIONS) \
		$(patsubst %.md, %.changes.yml, $<) \
		$< -o $@
koans.html: koans.md
	pandoc $(PANDOC_OPTIONS) \
		$(patsubst %.md, %.changes.yml, $<) \
		$< -o $@

%.html: %.md %.changes.yml
	pandoc $(PANDOC_OPTIONS) --mathjax \
		$(patsubst %.md, %.changes.yml, $<) \
		$< -o \
		$@

sitemap: sitemap.pl
	perl sitemap.pl | pandoc -s --ascii > sitemap.html
