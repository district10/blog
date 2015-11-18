GEN   = ../_gen.sh
PODIR = ../publish
READS = \
read-00001.md \

all: $(PODIR)/reads.html

clean:
	rm $(PODIR)/reads.html

$(PODIR)/reads.html: _read_header.md $(READS) _read_footer.md
	cat $^ | $(GEN) $@ &
    
read:
	$(EDITOR) $(firstword $(READS))
make:
	$(EDITOR) Makefile
