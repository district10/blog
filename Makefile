.PHONY: n it q l

DIR_PUBLISH=publish
DIR_PAGES=_pages
DIR_POSTS=_posts
DIR_DOCS=_miscs/docs
DIR_LYRICS=_miscs/lyrics
DIR_STATICS=_statics

MD_POSTS = $(wildcard $(DIR_POSTS)/*.md)
PG_POSTS = $(addprefix $(DIR_PUBLISH)/, $(MD_POSTS:$(DIR_POSTS)/%=%))
MD_BIBS = $(wildcard $(DIR_POSTS)/*.bib)
PG_BIBS = $(addprefix $(DIR_PUBLISH)/, $(MD_BIBS:$(DIR_POSTS)/%=%))
MD_PAGES = $(wildcard $(DIR_PAGES)/*.md)
PG_PAGES = $(addprefix $(DIR_PUBLISH)/, $(MD_PAGES:$(DIR_PAGES)/%=%))
MD_DOCS = $(wildcard $(DIR_DOCS)/*.md)
PG_DOCS = $(addprefix $(DIR_PUBLISH)/, $(MD_DOCS:$(DIR_DOCS)/%=%))

ITEMS = \
	$(DIR_PUBLISH)/Makefile \
	$(DIR_PUBLISH)/filter.pl \
	$(DIR_PUBLISH)/sitemap.pl \
	$(DIR_PUBLISH)/index.md \
	$(DIR_PUBLISH)/template.html \
	$(DIR_PUBLISH)/metadata.yaml \

all: items move statics lyrics html

items move statics lyrics html extras: $(DIR_PUBLISH)
extras: items move statics lyrics html
$(DIR_PUBLISH):
	mkdir -p $(DIR_PUBLISH)

# copy & make
items: $(ITEMS)
$(DIR_PUBLISH)/Makefile: publish.mk
	cp $< $@
$(DIR_PUBLISH)/%.md: %.md
	perl cp.pl $< \
		$(DIR_PUBLISH)/$(<:%.md=%.readinglist) \
		$(DIR_PUBLISH)/$(<:%.md=%.tags) \
		$(DIR_PUBLISH)/$(<:%.md=%.changes.yml) > \
		$@
$(DIR_PUBLISH)/%: %
	cp $< $@

move: $(PG_BIBS) $(PG_POSTS) $(PG_PAGES) $(PG_DOCS)
$(DIR_PUBLISH)/post-0084-complex-network-notes.html: $(DIR_POSTS)/post-0084-complex-network-notes.md
	cp $< $@
$(DIR_PUBLISH)/%.md: $(DIR_POSTS)/%.md
	perl cp.pl $< \
		$(DIR_PUBLISH)/$(<:$(DIR_POSTS)/%.md=%.readinglist) \
		$(DIR_PUBLISH)/$(<:$(DIR_POSTS)/%.md=%.tags) \
		$(DIR_PUBLISH)/$(<:$(DIR_POSTS)/%.md=%.changes.yml) > \
		$@
$(DIR_PUBLISH)/%.bib: $(DIR_POSTS)/%.bib
	cp $< $@
$(DIR_PUBLISH)/%.md: $(DIR_PAGES)/%.md
	perl cp.pl $< \
		$(DIR_PUBLISH)/$(<:$(DIR_PAGES)/%.md=%.readinglist) \
		$(DIR_PUBLISH)/$(<:$(DIR_PAGES)/%.md=%.tags) \
		$(DIR_PUBLISH)/$(<:$(DIR_PAGES)/%.md=%.changes.yml) > \
		$@
$(DIR_PUBLISH)/%.md: $(DIR_DOCS)/%.md
	perl cp.pl $< \
		$(DIR_PUBLISH)/$(<:$(DIR_DOCS)/%.md=%.readinglist) \
		$(DIR_PUBLISH)/$(<:$(DIR_DOCS)/%.md=%.tags) \
		$(DIR_PUBLISH)/$(<:$(DIR_DOCS)/%.md=%.changes.yml) > \
		$@

extras: items
extras: 
	$(MAKE) -C $(DIR_PUBLISH) extras

filter:
	$(MAKE) -C $(DIR_PUBLISH) filter
sitemap: items
sitemap:
	$(MAKE) -C $(DIR_PUBLISH) sitemap

statics:
	$(MAKE) -C $(DIR_STATICS)

lrc: lyrics
lyrics:
	$(MAKE) -C $(DIR_LYRICS)

# publish html
html: $(DIR_PUBLISH)/Makefile
html:
	make -C $(DIR_PUBLISH) html

# clean
clean:
	rm -rf $(DIR_PUBLISH)/

# update
gh: github
github:
	git add -A; git commit -m "`date` - `uname` $(CMTMSG)"; git push
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
	$(DIR_POSTS) \
	$(DIR_PAGES)/notes.md \
	$(DIR_PAGES)/koans.md \
	$(DIR_PAGES)/plans.md \

it:
	$(EDITOR) $(EDITS) 2>/dev/null &
i: index
index:
	$(EDITOR) index.md 2>/dev/null &
koan: time
koan:
	$(EDITOR) $(DIR_PAGES)/koans.md 2>/dev/null &
k:
	$(EDITOR) $(DIR_PAGES)/koans.md 2>/dev/null &
n: note
note:
	$(EDITOR) $(DIR_PAGES)/notes.md 2>/dev/null &
a: about
about:
	$(EDITOR) $(DIR_PAGES)/about.md 2>/dev/null &
bq: blogquery
blogquery:
	$(EDITOR) $(DIR_STATICS)/blog-query.js 2>/dev/null &
c: css
css:
	$(EDITOR) $(DIR_STATICS)/main.css 2>/dev/null &
j: js
js:
	$(EDITOR) $(DIR_STATICS)/main.js 2>/dev/null &
pm: poem
poem:
	$(EDITOR) $(DIR_PAGES)/poems.md 2>/dev/null &
xm: xiami
xiami:
	$(EDITOR) $(DIR_PAGES)/xiami.md 2>/dev/null &
q: quote
quote:
	$(EDITOR) $(DIR_PAGES)/quotes.md 2>/dev/null &
l: link
link:
	$(EDITOR) $(DIR_PAGES)/links.md 2>/dev/null &
day:
	$(EDITOR) $(DIR_PAGES)/days.md 2>/dev/null &
d: dent
dent:
	$(EDITOR) $(DIR_PAGES)/dents.md 2>/dev/null &
db: douban
douban:
	$(EDITOR) $(DIR_PAGES)/douban.md 2>/dev/null &
plan:
	$(EDITOR) $(DIR_PAGES)/plans.md 2>/dev/null &
fun:
	$(MAKE) -C $(PAGES) fun
s: song
song:
	$(MAKE) -C $(DIR_LYRICS) song
t: typing
typing:
	$(MAKE) -C $(PAGES) typing
	
time:
	date +%s | clip 2>/dev/null || date +%s | xclip -selection clipboard

m: make
make:
	$(EDITOR) Makefile 2>/dev/null &
