PODIR = ../../publish
MDS   = $(wildcard *.md)
DOCS = $(addprefix $(PODIR)/, $(MDS:%.md=%.html))

all: $(DOCS)

clean:
	rm -f $(DOCS)

$(PODIR)/%.html: %.md
	pandoc -S -s --ascii -c main.css -A ../../footer.html \
		--toc --highlight-style pygments \
		-f markdown $^ \
		-o $@
