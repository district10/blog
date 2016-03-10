PIDIR = .
PODIR = ../publish

CURFILES = \
post-0086-game-of-throne-series.md \
post-0087-leetcode.md \
post-0085-cvrs-presentation.md \

MD_PDFS = \
	$(POST_0049) $(POST_0047) $(POST_0046) $(POST_0042) $(POST_0035) \
	$(POST_0029) $(POST_0028) $(POST_0023) $(POST_0024) $(POST_0022) \
	$(POST_0014) $(POST_0013) $(POST_0010) $(POST_0004) $(POST_0001) \

PDFS  = $(patsubst %.html, %.pdf, $(MD_PDFS))
MDS   = $(wildcard *.md)
POSTS = $(addprefix $(PODIR)/, $(MDS:%.md=%.html))

all: $(POSTS)

$(POSTS): ../footer.html

clean:
	rm -f $(POSTS)

$(PODIR)/post-0051-spatial-gis.html: $(PIDIR)/post-0051-spatial-gis.md
	pandoc -S -s --ascii -c main.css -A ../footer.html --toc --mathjax \
		--bibliography $(patsubst %.md, %.bib, $^) \
		--highlight-style pygments \
		-f markdown $^ \
		-o $@
$(PODIR)/post-0050-gis-overall.html: $(PIDIR)/post-0050-gis-overall.md
	pandoc -S -s --ascii -c main.css -A ../footer.html --toc --mathjax \
		--bibliography $(patsubst %.md, %.bib, $^) \
		--highlight-style pygments \
		-f markdown $^ \
		-o $@

$(PODIR)/%.html: $(PIDIR)/%.md
	pandoc -S -s --ascii -c main.css -A ../footer.html --toc --mathjax \
		--highlight-style pygments \
		-f markdown $^ \
		-o $@

pdf: $(PDFS)
$(PODIR)/%.pdf: $(PIDIR)/%.md
	pandoc --latex-engine=xelatex -V mainfont="Microsoft YaHei" \
		--template=_pm-template \
		-f markdown $^ \
		-o $@

p: post
post:
	$(EDITOR) $(firstword $(CURFILES))

m: make
make:
	$(EDITOR) Makefile
