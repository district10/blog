.PHONY: k koan n note m time

RES_IN 	:= index.md metadata.yaml template.html sitemap.pl
STATICS := $(wildcard _statics/*)
POSTS   := $(wildcard _posts/*)
PAGES   := $(wildcard _pages/*)
RES_OUT := $(addprefix publish/, $(RES_IN)) $(addprefix publish/, $(STATICS:_statics/%=%)) $(addprefix publish/, $(POSTS:_posts/%=%)) $(addprefix publish/, $(PAGES:_pages/%=%)) 

all: $(RES_OUT) html
$(RES_OUT): publish/Makefile
publish/Makefile: publish.mk
	@mkdir -p $(@D)
	cp $< $@

clean:
	rm -rf publish/
w: watch
watch:
	java -jar jwatch.jar

perlcp = \
		perl cp.pl \
				$(1) \
				$(2:%.md=%.changes.yml) > \
				$(2)

publish/%: _statics/%
	cp $< $@

publish/%.md: _pages/%.md
	$(call perlcp, $<, $@)
publish/%: _pages/%
	cp $< $@

publish/%.md: _posts/%.md
	$(call perlcp, $<, $@)
publish/%: _posts/%
	cp $< $@

publish/%.md: %.md
	$(call perlcp, $<, $@)
publish/%: %
	cp $< $@

sitemap:
	make -C publish sitemap
html:
	make -C publish html
gh: github
github:
	git add -A; git commit -m "`date` - `uname` $(CMTMSG)"; git push
qn: qiniu
qiniu: 
	qrsync conf.json

# edits
i: index
index:
	$(EDITOR) index.md
a: about
about:
	$(EDITOR) $(DIR_PAGES)/about.md
l: link
link:
	$(EDITOR) $(DIR_PAGES)/links.md
n: k
note:
k: koan
koan: time
koan:
	$(EDITOR) -p \
		$(DIR_PAGES)/koans.md \
		$(DIR_PAGES)/plans.md \
		$(DIR_POSTS) \
	
time:
	@date +%s | tr -d '\r\n' | clip 2>/dev/null || date +%s | tr -d '\r\n' | xclip -selection clipboard
	@echo Unix time copied to your clipboard!
