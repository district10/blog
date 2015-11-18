TRANS = ./_trans.sh
PIDIR = ../_posts
PODIR = ../publish
STATICS = \
$(PODIR)/cc-80x15.png \
$(PODIR)/favicon.ico \
$(PODIR)/main.css \
$(PODIR)/main.js \
$(PODIR)/robots.txt \
$(PODIR)/doubanBook.js \
$(PODIR)/doubanMovie.js \
$(PODIR)/hello.js \
$(PODIR)/ime.js \

MISCS = \
$(PODIR)/post-0050-gis-overall.bib \
$(PODIR)/post-0050-gis-overall.md \

all: $(STATICS) $(MISCS)

clean:
	rm $(STATICS) $(MISCS)

$(PODIR)/%: %
	cp $< $@
$(PODIR)/%: $(PIDIR)/%
	cp $< $@
$(PODIR)/%: utils/%
	cp $< $@
$(PODIR)/%.txt: %.md
	cp $< $@

css:
	$(EDITOR) main.css

js:
	$(EDITOR) main.js

make:
	$(EDITOR) Makefile
