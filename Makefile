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
PANDOC_PLAIN   = $(PANDOC) -S -s --ascii -c main.css -B $(PARTS)/header.html -A $(PARTS)/footer.html
PANDOC_NORMAL  = $(PANDOC) -S -s --ascii --mathjax -c main.css -A $(PARTS)/footer.html --highlight-style pygments
PANDOC_WITHBIB = $(PANDOC_NORMAL) --bibliography

# posts
POST_0002_INS = $(PIDIR)/post-002-how-to-make-this-blog.md
POST_0002_OUT = $(PODIR)/post-002-how-to-make-this-blog.html
POST_0001_INS = $(PIDIR)/post-001-pandoc-readme.md
POST_0001_OUT = $(PODIR)/post-001-pandoc-readme.html
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

HTML = \
$(POST_0002_OUT) \
$(POST_0001_OUT) \

# rules
all: $(HTML) $(STATICS) deploy $(POST_KOANS_O) $(POST_NOTES_O) $(POST_INDEX_O)
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
$(POST_0002_OUT): $(POST_0002_INS)
	$(PANDOC_NORMAL) $^ -o $@
$(POST_0001_OUT): $(POST_0001_INS)
	$(PANDOC_NORMAL) $^ -o $@

# get back left behinds
$(PODIR)/%.html: $(PIDIR)/%.md
	./left_behinds $@ $<

# cp static files
$(PODIR)/%.css: $(SDIR)/%.css
	cp $< $@
$(PODIR)/%.html: $(SDIR)/%.html
	cp $< $@