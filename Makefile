PODIR=publish
KOANS=_koans
NOTES=_notes
PAGES=_pages
POSTS=_posts
READS=_reads
STATICS=_statics

all: koans reads notes pages posts statics

github:
	git add -A && git commit -m "lazy commit" && git push
    
qiniu:
	qrsync conf.json

koans:
	$(MAKE) -C $(KOANS)
reads:
	$(MAKE) -C $(READS)
notes:
	$(MAKE) -C $(NOTES)
pages:
	$(MAKE) -C $(PAGES)
posts:
	$(MAKE) -C $(POSTS)
statics:
	$(MAKE) -C $(STATICS)

cleanKoans:
	$(MAKE) -C $(KOANS) clean
cleanReads:
	$(MAKE) -C $(READS) clean
cleanNotes:
	$(MAKE) -C $(NOTES) clean
cleanPages:
	$(MAKE) -C $(PAGES) clean
cleanPosts:
	$(MAKE) -C $(POSTS) clean
cleanStatics:
	$(MAKE) -C $(STATICS) clean

clean:
	rm -f $(PODIR)/*