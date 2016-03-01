TRANS = ./_trans.sh
PIDIR = ../_posts
PODIR = ../publish
UTILS = \
$(PODIR)/clike.js \
$(PODIR)/codemirror.js \
$(PODIR)/dialog.js \
$(PODIR)/doubanBook.js \
$(PODIR)/doubanMovie.js \
$(PODIR)/hello.js \
$(PODIR)/ime.js \
$(PODIR)/matchbrackets.js \
$(PODIR)/searchcursor.js \
$(PODIR)/vim.js \
$(PODIR)/codemirror.css \
$(PODIR)/dialog.css \
$(PODIR)/midnight.css \
$(PODIR)/solarized.css \
$(PODIR)/tzxshow.js \

STATICS = \
$(UTILS) \
$(PODIR)/tangzhixiong.svg \
$(PODIR)/asciinema-player.css \
$(PODIR)/asciinema-player.js \
$(PODIR)/cc-80x15.png \
$(PODIR)/external.gif \
$(PODIR)/favicon.ico \
$(PODIR)/hr.gif \
$(PODIR)/main.css \
$(PODIR)/main.js \
$(PODIR)/robots.txt \

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

m: make
make:
	$(EDITOR) Makefile

css:
	$(EDITOR) main.css

js:
	$(EDITOR) main.js

make:
	$(EDITOR) Makefile
