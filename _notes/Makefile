GEN   = ../_bin/_gen.sh
NOW   = ../_bin/_now.sh
INDEX = ../_bin/notes_index.sh
PODIR = ../publish

MDS = $(wildcard note*.md)
NOTES_HTML = $(addprefix $(PODIR)/, $(MDS:%.md=%.html))
NOTES = $(MDS)

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
