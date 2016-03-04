PODIR=publish
PAGES=_pages
POSTS=_posts
STATICS=_statics
LYRICS=_miscs/lyrics
AG=_ag.sh
IDXPG=$(PODIR)/index.html
IDXPG2=$(PODIR)/index2.html
GENIDX=_bin/posts_index.sh
GENIDX2=_bin/posts_index2.sh

all: pages posts statics lyrics $(IDXPG)
pages posts statics lyrics: $(PODIR) EXE
$(PODIR):
	mkdir -p $(PODIR)
EXE:
	chmod +x */*.sh

gh: github
github:
	git add -A && git commit -m "lazy commit" && git push
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

pts: posts
posts:
	$(MAKE) -C $(POSTS)

pgs: pages
pages:
	$(MAKE) -C $(PAGES)

i: index
index: $(IDXPG)
$(IDXPG):
	$(GENIDX) $@

ri: removeindex
removeindex:
	rm -f $(PODIR)/index.html

i2:
	$(GENIDX2) $(IDXPG2)

ri2: removeindex2
removeindex2:
	rm -f $(IDXPG2)

EDITS = \
		_pages/notes.md \
		_pages/reads.md \
		_pages/koans.md \

it:
	$(EDITOR) -p $(EDITS)

f: footer
footer:
	$(EDITOR) _parts/footer.html

statics:
	$(MAKE) -C $(STATICS)

lrc: lyrics
lyrics:
	$(MAKE) -C $(LYRICS)

# clean
cpgs: cleanPages
cleanPages:
	$(MAKE) -C $(PAGES) clean

cpts: cleanPosts    
cleanPosts:
	$(MAKE) -C $(POSTS) clean

clrc: cleanLyrics
cleanLyrics:
	$(MAKE) -C $(LYRICS) clean

rm: clean
clean:
	rm -f $(PODIR)/*

# write
k: koan
koan:
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
	$(EDITOR) $(STATICS)/blog-query.js
c: css
css:
	$(EDITOR) $(STATICS)/main.css
j: js
js:
	$(EDITOR) $(STATICS)/main.js

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
	$(MAKE) -C $(LYRICS) song

t: typing
typing:
	$(MAKE) -C $(PAGES) typing

m: make
make:
	$(EDITOR) Makefile

mpt: mkPosts
mkPosts:
	$(MAKE) -C $(POSTS) make

ml: mkLyrics
mkLyrics:
	$(MAKE) -C $(LYRICS) make
