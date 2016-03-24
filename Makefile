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
	$(DIR_PUBLISH)/footer.html \
	$(DIR_PUBLISH)/index.md \

all: $(DIR_PUBLISH) items move statics lyrics html

$(DIR_PUBLISH):
	mkdir -p $(DIR_PUBLISH)

# copy & make
items: $(ITEMS)
$(DIR_PUBLISH)/Makefile: publish.mk
	cp $< $@
$(DIR_PUBLISH)/filter.pl: filter.pl
	cp $< $@
$(DIR_PUBLISH)/footer.html: footer.html
	cp $< $@
$(DIR_PUBLISH)/index.md: index.md
	cp $< $@

move: $(PG_POSTS) $(PG_BIBS) $(PG_PAGES)
$(DIR_PUBLISH)/%.md: $(DIR_POSTS)/%.md
	cp $< $@
$(DIR_PUBLISH)/%.bib: $(DIR_POSTS)/%.bib
	cp $< $@
$(DIR_PUBLISH)/%.md: $(DIR_PAGES)/%.md
	cp $< $@
$(DIR_PUBLISH)/%.md: $(DIR_DOCS)/%.md
	cp $< $@

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
	$(DIR_PAGES)/notes.md \
	$(DIR_PAGES)/reads.md \
	$(DIR_PAGES)/koans.md \
	$(DIR_POSTS)
it:
	$(EDITOR) -p $(EDITS)
f: footer
footer:
	$(EDITOR) footer.html
k: koan
koan:
	$(date +%s | clip)
	$(EDITOR) $(DIR_PAGES)/koans.md
n: note
note:
	$(EDITOR) $(DIR_PAGES)/notes.md
r: read
read:
	$(EDITOR) $(DIR_PAGES)/reads.md
a: about
about:
	$(EDITOR) $(DIR_PAGES)/about.md
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
	$(EDITOR) $(DIR_PAGES)/poems.md
xm: xiami
xiami:
	$(EDITOR) $(DIR_PAGES)/xiami.md
q: quote
quote:
	$(EDITOR) $(DIR_PAGES)/quotes.md
l: link
link:
	$(EDITOR) $(DIR_PAGES)/links.md
day:
	$(EDITOR) $(DIR_PAGES)/days.md
d: dent
dent:
	$(EDITOR) $(DIR_PAGES)/dents.md
db: douban
douban:
	$(EDITOR) $(DIR_PAGES)/douban.md
fun:
	$(MAKE) -C $(PAGES) fun

s: song
song:
	$(MAKE) -C $(DIR_LYRICS) song

t: typing
typing:
	$(MAKE) -C $(PAGES) typing
	
time:
	date +%s | clip

m: make
make:
	$(EDITOR) Makefile
