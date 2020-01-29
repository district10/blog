.PHONY: k koan n note m time notes

PUBLISH ?= publish
PUBLISH := $(abspath $(PUBLISH))

EDITOR ?= gvim
RES_IN 	:= index.md 
STATICS := $(wildcard _statics/*)
POSTS   := $(wildcard _posts/*)
PAGES   := $(wildcard _pages/*)
RES_OUT := $(PUBLISH)/index.md $(addprefix $(PUBLISH)/, $(STATICS:_statics/%=%)) $(addprefix $(PUBLISH)/, $(POSTS:_posts/%=%)) $(addprefix $(PUBLISH)/, $(PAGES:_pages/%=%)) 

all: $(RES_OUT) html notes
$(RES_OUT): $(PUBLISH)/Makefile
$(PUBLISH)/Makefile: _statics/publish.mk
	@mkdir -p $(@D)
	cp $< $@
notes:
	PUBLISH=$(PUBLISH)/notes make -C notes || true

clean:
	rm -rf $(PUBLISH)/
w: watch
watch:
	java -jar jwatch.jar

perlcp = \
		perl cp.pl \
				$(1) \
				$(2:%.md=%.changes.yml) > \
				$(2)

$(PUBLISH)/%: _statics/%
	cp $< $@
$(PUBLISH)/%.md: _pages/%.md
	$(call perlcp, $<, $@)
$(PUBLISH)/%: _pages/%
	cp $< $@
$(PUBLISH)/%.md: _posts/%.md
	$(call perlcp, $<, $@)
$(PUBLISH)/%: _posts/%
	cp $< $@
$(PUBLISH)/%.md: %.md
	$(call perlcp, $<, $@)
$(PUBLISH)/%: %
	cp $< $@

serve:
	cd $(PUBLISH) && http-server -p 8000 || python3 -m http.server

time:
	@date +%s | tr -d '\r\n' | clip 2>/dev/null || date +%s | tr -d '\r\n' | (xclip -selection clipboard || pbcopy || true)
	@echo Unix time copied to your clipboard!
sitemap:
	make -C $(PUBLISH) sitemap
html:
	make -C $(PUBLISH) html
gh: github
github:
	git add -A; git commit -m "`date` - `uname` $(CMTMSG)"; git push
qn: qiniu
qiniu: 
	qrsync conf.json

i: index
index:
	$(EDITOR) index.md
a: about
about:
	$(EDITOR) _pages/about.md
l: link
link:
	$(EDITOR) _pages/links.md
n: k
note:
k: koan
koan: time
koan:
	$(EDITOR) -p \
		_pages/koans.md \
		_posts/
pn:
	$(EDITOR) -p \
		notes/notes/index.md \
		notes/notes/00001.md

cards:
	python3 cardify.py

lint:
	yapf -ir .

reset_submodules:
	git submodule update --init --recursive
gup:
	cd notes && git pull -r && git submodule update --init --recursive
	git pull -r
