PODIR = ../publish
MDS   = $(wildcard *.md)
PAGES = $(addprefix $(PODIR)/, $(MDS:%.md=%.html))
PANDOC_OPTIONS = -S -s --ascii \
	-c main.css \
	-A ../footer.html \
	--highlight-style pygments \
	-f markdown+east_asian_line_breaks

all: $(PAGES)

clean:
	rm -f $(PAGES)

$(PODIR)/%.html: %.md
	pandoc \
		$(PANDOC_OPTIONS) \
		--toc \
		$^ \
		-o $@
    
4: 404
404:
	$(EDITOR) 404.md

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
