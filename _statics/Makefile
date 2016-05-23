PODIR = ../publish

CURS = \
	   blog-query.js \
	   main.js \
	   main.css \
	   robots.txt

OCURS = $(addprefix $(PODIR)/, $(CURS))

UTILS = $(wildcard utils/*)
OUTILS = $(patsubst utils/%, $(PODIR)/%, $(UTILS))

IMGS = $(wildcard imgs/*)
OIMGS = $(patsubst imgs/%, $(PODIR)/%, $(IMGS))

all: $(OIMGS) $(OUTILS) $(OCURS)

$(PODIR)/%: imgs/%
	cp $^ $@
$(PODIR)/%: utils/%
	cp $^ $@
$(PODIR)/%: ./%
	cp $^ $@

m: make
make:
	$(EDITOR) Makefile
