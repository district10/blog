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
PANDOC_EXT     = -f markdown+table_captions+ignore_line_breaks
PANDOC_EXTALL  = ignore_line_breaks markdown_github+ascii_identifiers
PANDOC_PLAIN   = $(PANDOC) -S -s --ascii -c main.css -B $(PARTS)/header.html -A $(PARTS)/footer.html
PANDOC_NORMAL  = $(PANDOC) -S -s --ascii --toc --mathjax -c main.css -A $(PARTS)/footer.html --highlight-style pygments $(PANDOC_EXT)
PANDOC_WITHBIB = $(PANDOC_NORMAL) --bibliography

# posts
POST_0051_INS = $(PIDIR)/post-0051-spatial-gis.bib $(PIDIR)/post-0051-spatial-gis.md
POST_0051_OUT = $(PODIR)/post-0051-spatial-gis.html
POST_0050_INS = $(PIDIR)/post-0050-gis-overall.bib $(PIDIR)/post-0050-gis-overall.md
POST_0050_OUT = $(PODIR)/post-0050-gis-overall.html
POST_0049_INS = $(PIDIR)/post-0049-imocap.md
POST_0049_OUT = $(PODIR)/post-0049-imocap.html
POST_0048_INS = $(PIDIR)/post-0048-low-poly-in-practice.md
POST_0048_OUT = $(PODIR)/post-0048-low-poly-in-practice.html
POST_0047_INS = $(PIDIR)/post-0047-more-about-vim.md
POST_0047_OUT = $(PODIR)/post-0047-more-about-vim.html
POST_0046_INS = $(PIDIR)/post-0046-awk.md
POST_0046_OUT = $(PODIR)/post-0046-awk.html
POST_0045_INS = $(PIDIR)/post-0045-learning-vim.md
POST_0045_OUT = $(PODIR)/post-0045-learning-vim.html
POST_0044_INS = $(PIDIR)/post-0044-git-github-notes.md
POST_0044_OUT = $(PODIR)/post-0044-git-github-notes.html
POST_0043_INS = $(PIDIR)/post-0043-awesome-c.md
POST_0043_OUT = $(PODIR)/post-0043-awesome-c.html
POST_0042_INS = $(PIDIR)/post-0042-rules-and-logic.md
POST_0042_OUT = $(PODIR)/post-0042-rules-and-logic.html
POST_0041_INS = $(PIDIR)/post-0041-lists-read-at-random.md
POST_0041_OUT = $(PODIR)/post-0041-lists-read-at-random.html
POST_0040_INS = $(PIDIR)/post-0040-shell-is-kidding-me.md
POST_0040_OUT = $(PODIR)/post-0040-shell-is-kidding-me.html
POST_0039_INS = $(PIDIR)/post-0039-newton-method.md
POST_0039_OUT = $(PODIR)/post-0039-newton-method.html
POST_0038_INS = $(PIDIR)/post-0038-salute-to-big-fish.md
POST_0038_OUT = $(PODIR)/post-0038-salute-to-big-fish.html
POST_0037_INS = $(PIDIR)/post-0037-pangu.md
POST_0037_OUT = $(PODIR)/post-0037-pangu.html
POST_0036_INS = $(PIDIR)/post-0036-clipboard.md
POST_0036_OUT = $(PODIR)/post-0036-clipboard.html
POST_0035_INS = $(PIDIR)/post-0035-pkg-config.md
POST_0035_OUT = $(PODIR)/post-0035-pkg-config.html
POST_0034_INS = $(PIDIR)/post-0034-github-dmca.md
POST_0034_OUT = $(PODIR)/post-0034-github-dmca.html
POST_0033_INS = $(PIDIR)/post-0033-md2docx.md
POST_0033_OUT = $(PODIR)/post-0033-md2docx.html
POST_0032_INS = $(PIDIR)/post-0032-dvorak.md
POST_0032_OUT = $(PODIR)/post-0032-dvorak.html
POST_0031_INS = $(PIDIR)/post-0031-brain-hole.md
POST_0031_OUT = $(PODIR)/post-0031-brain-hole.html
POST_0030_INS = $(PIDIR)/post-0030-fucking-day.md
POST_0030_OUT = $(PODIR)/post-0030-fucking-day.html
POST_0029_INS = $(PIDIR)/post-0029-kl-transform.md
POST_0029_OUT = $(PODIR)/post-0029-kl-transform.html
POST_0028_INS = $(PIDIR)/post-0028-pinboard.md
POST_0028_OUT = $(PODIR)/post-0028-pinboard.html
POST_0027_INS = $(PIDIR)/post-0027-ai-will-kill-us.md
POST_0027_OUT = $(PODIR)/post-0027-ai-will-kill-us.html
POST_0026_INS = $(PIDIR)/post-0026-english-or-chinese.md
POST_0026_OUT = $(PODIR)/post-0026-english-or-chinese.html
POST_0025_INS = $(PIDIR)/post-0025-doc-bridge-texture.md
POST_0025_OUT = $(PODIR)/post-0025-doc-bridge-texture.html
POST_0024_INS = $(PIDIR)/post-0024-linux-shell-scripting-cookbook.md
POST_0024_OUT = $(PODIR)/post-0024-linux-shell-scripting-cookbook.html
POST_0023_INS = $(PIDIR)/post-0023-learning-html5.md
POST_0023_OUT = $(PODIR)/post-0023-learning-html5.html
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
$(PODIR)/favicon.ico \
$(PODIR)/main.css \
$(PODIR)/ime.js \
$(PODIR)/about.html \
$(PODIR)/404.html \
$(PODIR)/cc-80x15.png \
$(PODIR)/post-0050-gis-overall.bib \
$(PODIR)/post-0050-gis-overall.md \

HTML = \
$(POST_0051_OUT) \
$(POST_0050_OUT) \
$(POST_0049_OUT) \
$(POST_0048_OUT) \
$(POST_0047_OUT) \
$(POST_0046_OUT) \
$(POST_0045_OUT) \
$(POST_0044_OUT) \
$(POST_0043_OUT) \
$(POST_0042_OUT) \
$(POST_0041_OUT) \
$(POST_0040_OUT) \
$(POST_0039_OUT) \
$(POST_0038_OUT) \
$(POST_0037_OUT) \
$(POST_0036_OUT) \
$(POST_0035_OUT) \
$(POST_0034_OUT) \
$(POST_0033_OUT) \
$(POST_0033_OUT) \
$(POST_0032_OUT) \
$(POST_0031_OUT) \
$(POST_0030_OUT) \
$(POST_0029_OUT) \
$(POST_0028_OUT) \
$(POST_0027_OUT) \
$(POST_0026_OUT) \
$(POST_0025_OUT) \
$(POST_0024_OUT) \
$(POST_0023_OUT) \
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
$(POST_0051_OUT): $(POST_0051_INS)
	$(PANDOC_WITHBIB) $^ -o $@
$(POST_0050_OUT): $(POST_0050_INS)
	$(PANDOC_WITHBIB) $^ -o $@
$(POST_0049_OUT): $(POST_0049_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0048_OUT): $(POST_0048_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0047_OUT): $(POST_0047_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0046_OUT): $(POST_0046_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0045_OUT): $(POST_0045_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0044_OUT): $(POST_0044_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0043_OUT): $(POST_0043_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0042_OUT): $(POST_0042_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0041_OUT): $(POST_0041_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0040_OUT): $(POST_0040_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0039_OUT): $(POST_0039_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0038_OUT): $(POST_0038_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0037_OUT): $(POST_0037_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0036_OUT): $(POST_0036_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0035_OUT): $(POST_0035_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0034_OUT): $(POST_0034_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0033_OUT): $(POST_0033_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0032_OUT): $(POST_0032_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0031_OUT): $(POST_0031_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0030_OUT): $(POST_0030_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0029_OUT): $(POST_0029_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0028_OUT): $(POST_0028_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0027_OUT): $(POST_0027_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0026_OUT): $(POST_0026_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0025_OUT): $(POST_0025_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0024_OUT): $(POST_0024_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0023_OUT): $(POST_0023_INS)
	$(PANDOC_NORMAL) $^ -o $@
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

# cp static files
$(PODIR)/%.ico: $(SDIR)/%.ico
	cp $< $@
$(PODIR)/%.css: $(SDIR)/%.css
	cp $< $@
$(PODIR)/%.js: $(SDIR)/%.js
	cp $< $@
$(PODIR)/%.png: $(SDIR)/%.png
	cp $< $@
$(PODIR)/%.html: $(SDIR)/%.html
	cp $< $@
$(PODIR)/%.txt: $(PIDIR)/%.md
	cp $< $@
$(PODIR)/%: $(PIDIR)/%
	cp $< $@

# trans static files
$(PODIR)/%.html: $(SDIR)/%.md
	$(PANDOC_NORMAL) $^ -o $@