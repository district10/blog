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

MDPDFS = \
	post-0087-leetcode.md \

PDFS  = $(patsubst %.md, %.pdf, $(MDPDFS))
MDS   = $(wildcard *.md)
POSTS = $(addprefix $(PODIR)/, $(MDS:%.md=%.html))

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

pdf: $(addprefix $(PODIR)/, $(PDFS))
$(PODIR)/%.pdf: $(PIDIR)/%.md
	pandoc \
		--latex-engine=xelatex \
		-V mainfont="Microsoft YaHei" \
		--template=_pm-template \
		$(PANDOC_OPTIONS) \
		$< \
		-o $@

p: post
post:
	$(EDITOR) $(firstword $(CURFILES))

m: make
make:
	$(EDITOR) Makefile
