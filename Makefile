PODIR=publish

all: koans reads notes pages posts statics

github:
	git add -A && git commit -m "lazy commit" && git push
    
qiniu:
	qrsync conf.json

koans:
	cd _koans && $(MAKE)

reads:
	cd _reads && $(MAKE)

notes:
	cd _notes && $(MAKE)
    
pages:
	cd _pages && $(MAKE)

posts:
	cd _posts && $(MAKE)

statics:
	cd _statics && $(MAKE)

cleanKoans:
	rm -f $(PODIR)/koan*

cleanReads:
	rm -f $(PODIR)/read*

cleanNotes:
	rm -f $(PODIR)/note*
        
clean:
	rm -f $(PODIR)/*