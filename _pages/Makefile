GEN   = ../_gen.sh
PODIR = ../publish
PAGES = \
$(PODIR)/404.html \
$(PODIR)/about.html \
$(PODIR)/douban.html \
$(PODIR)/links.html \
$(PODIR)/xiami.html \

all: $(PAGES)

clean:
	rm -f $(PAGES)

$(PODIR)/%.html: %.md
	cat $^ | $(GEN) $@ &