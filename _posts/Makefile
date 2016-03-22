PIDIR = .
PODIR = ../publish
PANDOC_OPTIONS = -S -s --ascii \
	-c main.css \
	-A ../footer.html \
	--highlight-style pygments \
	-f markdown+east_asian_line_breaks

CURFILES = \
post-0086-game-of-throne-series.md \
post-0087-leetcode.md \
post-0085-cvrs-presentation.md \

MDS   = $(wildcard *.md)
POSTS = $(addprefix $(PODIR)/, $(MDS:%.md=%.html))
PDFS = $(addprefix $(PODIR)/, $(MDS:%.md=%.pdf))
DOCS = $(addprefix $(PODIR)/, $(MDS:%.md=%.docx))

all: $(POSTS)

$(POSTS): ../footer.html

clean:
	rm -f $(POSTS)

$(PODIR)/post-0050-gis-overall.html: $(PIDIR)/post-0050-gis-overall.md
	pandoc \
		--toc --mathjax \
		--bibliography $(patsubst %.md, %.bib, $<) \
		$(PANDOC_OPTIONS) \
		$< \
		-o $@
$(PODIR)/post-0051-spatial-gis.html: $(PIDIR)/post-0051-spatial-gis.md
	pandoc \
		--toc --mathjax \
		--bibliography $(patsubst %.md, %.bib, $<) \
		$(PANDOC_OPTIONS) \
		$< \
		-o $@

$(PODIR)/%.html: $(PIDIR)/%.md
	pandoc \
		--toc --mathjax \
		$(PANDOC_OPTIONS) \
		$< \
		-o $@

pdf: $(PDFS)
$(PODIR)/%.pdf: $(PIDIR)/%.md
	pandoc \
		--latex-engine=xelatex \
		--template=_pm-template \
		--highlight-style pygments \
		-f markdown+east_asian_line_breaks \
		$< \
		-o $@

docx: $(DOCS)
$(PODIR)/%.docx: $(PIDIR)/%.md
	pandoc \
		--highlight-style pygments \
		-f markdown+east_asian_line_breaks \
		$< \
		-o $@

p: post
post:
	$(EDITOR) $(firstword $(CURFILES))

m: make
make:
	$(EDITOR) Makefile
