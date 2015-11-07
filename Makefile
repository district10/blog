# dirs
PODIR = publish
SDIR  = _static
PIDIR = _posts
KOANS = _koans
NOTES = _notes
PARTS = _parts

# cmds
PANDOC         = pandoc
PANDOC_ARGS    = --toc --self-contained
PANDOC_EXT     = -f markdown+table_captions
PANDOC_EXTALL  = ignore_line_breaks markdown_github+ascii_identifiers
PANDOC_PLAIN   = $(PANDOC) -S -s --ascii -c main.css -B $(PARTS)/header.html -A $(PARTS)/footer.html
PANDOC_NORMAL  = $(PANDOC) -S -s --ascii --toc --mathjax -c main.css -A $(PARTS)/footer.html --highlight-style pygments $(PANDOC_EXT)
PANDOC_WITHBIB = $(PANDOC_NORMAL) --bibliography

# posts
POST_0022_INS = $(PIDIR)/post-0022-learning-html.md
POST_0022_OUT = $(PODIR)/post-0022-learning-html.html
POST_0021_INS = $(PIDIR)/post-0021-wikileaks.md
POST_0021_OUT = $(PODIR)/post-0021-wikileaks.html
POST_0020_INS = $(PIDIR)/post-0020-kaoyan-english.md
POST_0020_OUT = $(PODIR)/post-0020-kaoyan-english.html
POST_0019_INS = $(PIDIR)/post-0019-opencv-computer-vision-with-python.md
POST_0019_OUT = $(PODIR)/post-0019-opencv-computer-vision-with-python.html
POST_0018_INS = $(PIDIR)/post-0018-spatial-analysis.md
POST_0018_OUT = $(PODIR)/post-0018-spatial-analysis.html
POST_0017_INS = $(PIDIR)/post-0017-wikipedia-japan.md
POST_0017_OUT = $(PODIR)/post-0017-wikipedia-japan.html
POST_0016_INS = $(PIDIR)/post-0016-wikipedia-china.md
POST_0016_OUT = $(PODIR)/post-0016-wikipedia-china.html
POST_0015_INS = $(PIDIR)/post-0015-jacobian-and-determinant.md
POST_0015_OUT = $(PODIR)/post-0015-jacobian-and-determinant.html
POST_0014_INS = $(PIDIR)/post-0014-free-as-in-freedom.md
POST_0014_OUT = $(PODIR)/post-0014-free-as-in-freedom.html
POST_0013_INS = $(PIDIR)/post-0013-duckduckgo-another-search-engine.md
POST_0013_OUT = $(PODIR)/post-0013-duckduckgo-another-search-engine.html
POST_0012_INS = $(PIDIR)/post-0012-awk.md
POST_0012_OUT = $(PODIR)/post-0012-awk.html
POST_0011_INS = $(PIDIR)/post-0011-academic-integrity-at-princeton.md
POST_0011_OUT = $(PODIR)/post-0011-academic-integrity-at-princeton.html
POST_0010_INS = $(PIDIR)/post-0010-as-an-it-bird.md
POST_0010_OUT = $(PODIR)/post-0010-as-an-it-bird.html
POST_0009_INS = $(PIDIR)/post-0009-ascii-art.md
POST_0009_OUT = $(PODIR)/post-0009-ascii-art.html
POST_0008_INS = $(PIDIR)/post-0008-argc-argv-in-c.md
POST_0008_OUT = $(PODIR)/post-0008-argc-argv-in-c.html
POST_0007_INS = $(PIDIR)/post-0007-windows-configurations.md
POST_0007_OUT = $(PODIR)/post-0007-windows-configurations.html
POST_0006_INS = $(PIDIR)/post-0006-why-emacs-users-favor-dvorak.md
POST_0006_OUT = $(PODIR)/post-0006-why-emacs-users-favor-dvorak.html
POST_0005_INS = $(PIDIR)/post-0005-tao-of-programming.md
POST_0005_OUT = $(PODIR)/post-0005-tao-of-programming.html
POST_0004_INS = $(PIDIR)/post-0004-gphoto2.md
POST_0004_OUT = $(PODIR)/post-0004-gphoto2.html
POST_0003_INS = $(PIDIR)/post-0003-debian-configurations.md
POST_0003_OUT = $(PODIR)/post-0003-debian-configurations.html
POST_0002_INS = $(PIDIR)/post-0002-how-to-make-this-blog.md
POST_0002_OUT = $(PODIR)/post-0002-how-to-make-this-blog.html
POST_0001_INS = $(PIDIR)/post-0001-pandoc-readme.md
POST_0001_OUT = $(PODIR)/post-0001-pandoc-readme.html
POST_INDEX    = $(PIDIR)/index.md
POST_KOANS    = $(PIDIR)/koans.md
POST_NOTES    = $(PIDIR)/notes.md
POST_INDEX_O  = $(PODIR)/index.html
POST_KOANS_O  = $(PODIR)/koans.html
POST_NOTES_O  = $(PODIR)/notes.html

# outs
STATICS = \
$(PODIR)/main.css \
$(PODIR)/about.html \
$(PODIR)/404.html \
$(PODIR)/gotop.png \

HTML = \
$(POST_0022_OUT) \
$(POST_0021_OUT) \
$(POST_0020_OUT) \
$(POST_0019_OUT) \
$(POST_0018_OUT) \
$(POST_0017_OUT) \
$(POST_0016_OUT) \
$(POST_0015_OUT) \
$(POST_0014_OUT) \
$(POST_0013_OUT) \
$(POST_0012_OUT) \
$(POST_0011_OUT) \
$(POST_0010_OUT) \
$(POST_0009_OUT) \
$(POST_0008_OUT) \
$(POST_0007_OUT) \
$(POST_0006_OUT) \
$(POST_0005_OUT) \
$(POST_0004_OUT) \
$(POST_0003_OUT) \
$(POST_0002_OUT) \
$(POST_0001_OUT) \

# rules
all: $(HTML) $(STATICS) $(POST_KOANS_O) $(POST_NOTES_O) $(POST_INDEX_O)
clean:
	rm -f $(PODIR)/*
deploy:
	./deploy.sh

# index & koans & notes
$(POST_INDEX_O): $(POST_INDEX)
	$(PANDOC_PLAIN) $^ -o $@
$(POST_KOANS_O): $(POST_KOANS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_NOTES_O): $(POST_NOTES)
	$(PANDOC_NORMAL) $^ -o $@

# posts
$(POST_0022_OUT): $(POST_0022_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0021_OUT): $(POST_0021_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0020_OUT): $(POST_0020_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0019_OUT): $(POST_0019_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0018_OUT): $(POST_0018_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0017_OUT): $(POST_0017_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0016_OUT): $(POST_0016_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0015_OUT): $(POST_0015_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0014_OUT): $(POST_0014_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0013_OUT): $(POST_0013_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0012_OUT): $(POST_0012_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0011_OUT): $(POST_0011_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0010_OUT): $(POST_0010_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0009_OUT): $(POST_0009_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0008_OUT): $(POST_0008_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0007_OUT): $(POST_0007_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0006_OUT): $(POST_0006_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0005_OUT): $(POST_0005_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0004_OUT): $(POST_0004_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0003_OUT): $(POST_0003_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0002_OUT): $(POST_0002_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0001_OUT): $(POST_0001_INS)
	$(PANDOC_NORMAL) $^ -o $@

# get back left behinds
$(PODIR)/%.html: $(PIDIR)/%.md
	./left_behinds $@ $<

# cp & trans static files
$(PODIR)/%.css: $(SDIR)/%.css
	cp $< $@
$(PODIR)/%.png: $(SDIR)/%.png
	cp $< $@
$(PODIR)/%.html: $(SDIR)/%.html
	cp $< $@
$(PODIR)/%.html: $(SDIR)/%.md
	$(PANDOC_NORMAL) $^ -o $@