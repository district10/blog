PODIR=publish
KOANS=_koans
NOTES=_notes
PAGES=_pages
POSTS=_posts
READS=_reads
STATICS=_statics
LYRICS=_miscs/lyrics
AG=_ag.sh
IDXPG=$(PODIR)/index.html
IDXPG2=$(PODIR)/index2.html
GENIDX=_bin/posts_index.sh
GENIDX2=_bin/posts_index2.sh

all: koans reads notes pages posts statics lyrics $(IDXPG) $(IDXPG2)
koans reads notes pages posts statics lyrics $(IDXPG) $(IDXPG2): $(PODIR) EXE
$(PODIR):
	mkdir -p $(PODIR)
EXE:
	chmod +x */*.sh
	# TODO: AHA

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

$(IDXPG): i
i: index
index:
	$(GENIDX) $(IDXPG)

ri: removeindex
removeindex:
	rm -f $(PODIR)/index.html

$(IDXPG2): i2
i2:
	$(GENIDX2) $(IDXPG2)

ri2: removeindex2
removeindex2:
	rm -f $(PODIR)/index2.html

EDITS = \
_koans/koan-00002.md \
_koans/koan-00001.md \
_notes/note-00002.md \
_notes/note-00001.md \
_reads/read-00002.md \
_reads/read-00001.md \
_posts \

it:
	$(EDITOR) -p $(EDITS)

f: footer
footer:
	$(EDITOR) _parts/footer.html

statics:
	rsync $(STATICS)/utils/*		$(PODIR)/
	rsync $(STATICS)/imgs/*		$(PODIR)/
	rsync $(STATICS)/*		$(PODIR)/

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

clrc: cleanLyrics
cleanLyrics:
	$(MAKE) -C $(LYRICS) clean

rm: clean
clean:
	rm -f $(PODIR)/*

# write
k: koan
koan:
	$(MAKE) -C $(KOANS) koan

n: note
note:
	$(MAKE) -C $(NOTES) note

p: post
post:
	$(MAKE) -C $(POSTS) post

hdr: header
header:
	$(MAKE) -C $(POSTS) header

r: read
read:
	$(MAKE) -C $(READS) read
    
a: about
about:
	$(MAKE) -C $(PAGES) about

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

# make make
m: make
make:
	$(EDITOR) Makefile

mk: mkKoans
mkKoans:
	$(MAKE) -C $(KOANS) make

mn: mkNotes
mkNotes:
	$(MAKE) -C $(NOTES) make

mpg: mkPages
mkPages:
	$(MAKE) -C $(PAGES) make

mpt: mkPosts
mkPosts:
	$(MAKE) -C $(POSTS) make

mr: mkReads
mkReads:
	$(MAKE) -C $(READS) make

ml: mkLyrics
mkLyrics:
	$(MAKE) -C $(LYRICS) make
