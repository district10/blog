GEN   = ../_gen.sh
PODIR = ../publish
PAGES = \
$(PODIR)/404.html \
$(PODIR)/about.html \
$(PODIR)/days.html \
$(PODIR)/dents.html \
$(PODIR)/douban.html \
$(PODIR)/fun.html \
$(PODIR)/links.html \
$(PODIR)/orgit.html \
$(PODIR)/poems.html \
$(PODIR)/quotes.html \
$(PODIR)/typing.html \
$(PODIR)/xiami.html \

all: $(PAGES)

clean:
	rm -f $(PAGES)

$(PODIR)/%.html: %.md
	cat $^ | $(GEN) $@ &
    
a: about
about:
	$(EDITOR) about.md

day:
	$(EDITOR) days.md

dt: dent
dent:
	$(EDITOR) dents.md

pm: poem
poem:
	$(EDITOR) poems.md

xm: xiami
xiami:
	$(EDITOR) xiami.md

q: quote
quote:
	$(EDITOR) quotes.md

l: link
link:
	$(EDITOR) links.md

o: org
org:
	$(EDITOR) orgit.md

db: douban
douban:
	$(EDITOR) douban.md

f: fun
fun:
	$(EDITOR) fun.md

t: typing
typing:
	$(EDITOR) typing.md
	 
m: make
make:
	$(EDITOR) Makefile
