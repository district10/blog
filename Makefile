PODIR=publish
KOANS=_koans
NOTES=_notes
PAGES=_pages
POSTS=_posts
READS=_reads
STATICS=_statics
LYRICS=_miscs/lyrics
AG=_ag.sh

all: koans reads notes pages posts statics lyrics

gh: github
github:
	git add -A && git commit -m "lazy commit" && git push

qn: qiniu
qiniu:
	qrsync conf.json

ag:
	$(AG) $(k)

# make htmls
kns: koans
koans:
	$(MAKE) -C $(KOANS)

rds: reads
reads:
	$(MAKE) -C $(READS)

nts: notes    
notes:
	$(MAKE) -C $(NOTES)

pgs: pages
pages:
	$(MAKE) -C $(PAGES)

pts: posts
posts:
	$(MAKE) -C $(POSTS)

i: index
index:
	$(MAKE) -C $(POSTS) index

EDITS = \
_koans/koan-00001.md \
_notes/note-00001.md \
_reads/read-00002.md \
_posts \

it:
	$(EDITOR) -p $(EDITS) &

f: footer
footer:
	$(EDITOR) _parts/footer.html

sts: statics
statics:
	$(MAKE) -C $(STATICS)

lrc: lyrics
lyrics:
	$(MAKE) -C $(LYRICS)

# clean
ckns: cleanKoans
cleanKoans:
	$(MAKE) -C $(KOANS) clean

crds: cleanReads
cleanReads:
	$(MAKE) -C $(READS) clean

cnts: cleanNotes
cleanNotes:
	$(MAKE) -C $(NOTES) clean

cpgs: cleanPages
cleanPages:
	$(MAKE) -C $(PAGES) clean

cpts: cleanPosts    
cleanPosts:
	$(MAKE) -C $(POSTS) clean

csts: cleanStatics
cleanStatics:
	$(MAKE) -C $(STATICS) clean

clrc: cleanLyrics
cleanLyrics:
	$(MAKE) -C $(LYRICS) clean

rm: clean
clean:
	rm -f $(PODIR)/*

# write
k: koan
koan:
	$(MAKE) -C $(KOANS) koan &

n: note
note:
	$(MAKE) -C $(NOTES) note &

p: post
post:
	$(MAKE) -C $(POSTS) post &

r: read
read:
	$(MAKE) -C $(READS) read &
    
a: about
about:
	$(MAKE) -C $(PAGES) about &

q: quote
quote:
	$(MAKE) -C $(PAGES) quote &

l: link
link:
	$(MAKE) -C $(PAGES) link &

day:
	$(MAKE) -C $(PAGES) day &
    
d: dent
dent:
	$(MAKE) -C $(PAGES) dent &

s: song
song:
	$(MAKE) -C $(LYRICS) song &

t: typing
typing:
	$(MAKE) -C $(PAGES) typing &

# make make
m: make
make:
	$(EDITOR) Makefile &

mk: mkKoans
mkKoans:
	$(MAKE) -C $(KOANS) make &

mn: mkNotes
mkNotes:
	$(MAKE) -C $(NOTES) make &

mpg: mkPages
mkPages:
	$(MAKE) -C $(PAGES) make &

mpt: mkPosts
mkPosts:
	$(MAKE) -C $(POSTS) make &

mr: mkReads
mkReads:
	$(MAKE) -C $(READS) make &

ms: mkStatics
mkStatics:
	$(MAKE) -C $(STATICS) make &

ml: mkLyrics
mkLyrics:
	$(MAKE) -C $(LYRICS) make &

c: css
css:
	$(MAKE) -C $(STATICS) css &

j: js
js:
	$(MAKE) -C $(STATICS) js &
