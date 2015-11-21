GEN   = ../_gen.sh
PODIR = ../publish
PAGES = \
$(PODIR)/404.html \
$(PODIR)/about.html \
$(PODIR)/dents.html \
$(PODIR)/douban.html \
$(PODIR)/links.html \
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

dt: dent
dent:
	$(EDITOR) dents.md

l: link
link:
	$(EDITOR) links.md

db: douban
douban:
	$(EDITOR) douban.md

t: typing
typing:
	$(EDITOR) typing.md
	 
m: make
make:
	$(EDITOR) Makefile
