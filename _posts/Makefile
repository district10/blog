GEN   = ../_bin/_gen.sh
BIB   = ../_bin/_bib.sh
PIDIR = .
PODIR = ../publish

CURFILES = \
post-0086-game-of-throne-series.md \
post-0085-cvrs-presentation.md \

SOME_POSTS = \
$(POST_0049) $(POST_0047) $(POST_0046) $(POST_0042) $(POST_0035) $(POST_0029) $(POST_0028) $(POST_0023) $(POST_0024) $(POST_0022) \
$(POST_0014) $(POST_0013) $(POST_0010) $(POST_0004) $(POST_0001) 

PDFS = $(patsubst %.html, %.pdf, $(SOME_POSTS))
MDS = $(wildcard *.md)
POSTS = $(addprefix $(PODIR)/, $(MDS:%.md=%.html))

all: $(POSTS)

clean:
	rm -f $(POSTS)

$(PODIR)/post-0051-spatial-gis.html: $(PIDIR)/post-0051-spatial-gis.md
	$(BIB) $^ $@ &
$(PODIR)/post-0050-gis-overall.html: $(PIDIR)/post-0050-gis-overall.md
	$(BIB) $^ $@ &

$(PODIR)/%.html: $(PIDIR)/%.md
	cat $^ | $(GEN) $@

pdf: $(PDFS)
$(PODIR)/%.pdf: $(PIDIR)/%.md
	pandoc --latex-engine=xelatex -V mainfont="Microsoft YaHei" -f markdown --template=_pm-template $^ -o $@

p: post
post:
	$(EDITOR) $(firstword $(CURFILES))

m: make
make:
	$(EDITOR) Makefile
