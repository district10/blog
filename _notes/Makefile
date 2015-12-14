GEN   = ../_gen.sh
NOW   = ../_now.sh
PODIR = ../publish
NOTES = \
note-00001.md \

all: $(PODIR)/notes.html

clean:
	rm $(PODIR)/note*

$(PODIR)/notes.html: _note_header.md $(NOTES) _note_footer.md
	cat $^ | $(GEN) $@ &
    
n: note
note: now
	$(EDITOR) $(firstword $(NOTES))

now:
	$(NOW)

m: make
make:
	$(EDITOR) Makefile
