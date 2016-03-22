DIR_PUBLISH=publish
DIR_PAGES=_pages
DIR_POSTS=_posts
DIR_DOCS=_miscs/docs
DIR_LYRICS=_miscs/lyrics
DIR_STATICS=_statics

MD_POSTS = $(wildcard $(DIR_POSTS)/*.md)
PG_POSTS = $(addprefix $(DIR_PUBLISH)/, $(MD_POSTS:$(DIR_POSTS)/%=%))
MD_PAGES = $(wildcard $(DIR_PAGES)/*.md)
PG_PAGES = $(addprefix $(DIR_PUBLISH)/, $(MD_PAGES:$(DIR_PAGES)/%=%))
MD_DOCS = $(wildcard $(DIR_DOCS)/*.md)
PG_DOCS = $(addprefix $(DIR_PUBLISH)/, $(MD_DOCS:$(DIR_DOCS)/%=%))

ITEMS = \
	$(DIR_PUBLISH)/Makefile \
	$(DIR_PUBLISH)/filter.pl \
	$(DIR_PUBLISH)/footer.html \
	$(DIR_PUBLISH)/index.md \

all: items move statics lyrics html

# copy & make
items: $(ITEMS)
$(DIR_PUBLISH)/footer.html: footer.html
	mkdir -p $(DIR_PUBLISH)
	cp $< $@
$(DIR_PUBLISH)/Makefile: publish.mk
	cp $< $@
$(DIR_PUBLISH)/filter.pl: filter.pl
	cp $< $@

move: $(PG_POSTS) $(PG_PAGES)
$(DIR_PUBLISH)/%.md: index.md
	cp $< $@
$(DIR_PUBLISH)/%.md: $(DIR_PAGES)/%.md
	cp $< $@
$(DIR_PUBLISH)/%.md: $(DIR_POSTS)/%.md
	cp $< $@
$(DIR_PUBLISH)/%.md: $(DIR_DOCS)/%.md
	cp $< $@

statics:
	$(MAKE) -C $(DIR_STATICS)

lrc: lyrics
lyrics:
	$(MAKE) -C $(DIR_LYRICS)

# publish html
html:
	make -C $(DIR_PUBLISH) html

# clean
clean:
	rm -rf $(DIR_PUBLISH)/*

# update
gh: github
github:
	git add -A && git commit -m "`date` - `uname`" && git push
status:
	git status
diff:
	git diff
push:
	git push
pull:
	git pull

qn: qiniu
qiniu: 
	qrsync conf.json

# edits
EDITS = \
		_pages/notes.md \
		_pages/reads.md \
		_pages/koans.md \
		_posts/ \

it:
	$(EDITOR) -p $(EDITS)


f: footer
footer:
	$(EDITOR) _parts/footer.html



# write
k: koan
koan:
	$(date +%s | clip)
	$(EDITOR) _pages/koans.md

n: note
note:
	$(EDITOR) _pages/notes.md

r: read
read:
	$(EDITOR) _pages/reads.md

p: post
post:
	$(MAKE) -C $(POSTS) post

a: about
about:
	$(MAKE) -C $(PAGES) about

bq: blogquery
blogquery:
	$(EDITOR) $(DIR_STATICS)/blog-query.js

c: css
css:
	$(EDITOR) $(DIR_STATICS)/main.css

j: js
js:
	$(EDITOR) $(DIR_STATICS)/main.js

pm: poem
poem:
	$(MAKE) -C $(PAGES) poem

xm: xiami
xiami:
	$(MAKE) -C $(PAGES) xiami

q: quote
quote:
	$(MAKE) -C $(PAGES) quote

l: link
link:
	$(MAKE) -C $(PAGES) link

o: org
org:
	$(MAKE) -C $(PAGES) org

day:
	$(MAKE) -C $(PAGES) day
    
d: dent
dent:
	$(MAKE) -C $(PAGES) dent

db: douban
douban:
	$(MAKE) -C $(PAGES) douban

fun:
	$(MAKE) -C $(PAGES) fun

s: song
song:
	$(MAKE) -C $(DIR_LYRICS) song

t: typing
typing:
	$(MAKE) -C $(PAGES) typing

m: make
make:
	$(EDITOR) Makefile
