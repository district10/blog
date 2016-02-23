GEN   = ../_gen.sh
NOW   = ../_now.sh
INDEX = ./_index.sh
PODIR = ../publish
NOTES = \
note-00002.md \
note-00001.md \

NOTES_HTML = \
$(PODIR)/note-00003.html \
$(PODIR)/note-00002.html \
$(PODIR)/note-00001.html \

all: $(PODIR)/notes.html $(NOTES_HTML)

clean:
	rm $(PODIR)/note*

$(PODIR)/%.html: _note_header.md %.md _note_footer.md
	cat $^ | $(GEN) $@ &

$(PODIR)/notes.html: $(NOTES_HTML)
	$(INDEX) $@ $(NOTES_HTML)
    
n: note
note:
	$(EDITOR) $(firstword $(NOTES))

now:
	$(NOW)

m: make
make:
	$(EDITOR) Makefile
