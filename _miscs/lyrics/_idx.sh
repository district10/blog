#!/bin/bash

(\
cat _lyrics_header.md; \
for i in $*; do \
    src=`basename ${i}` && md=${src%.*}-a.md; \
    href=`basename ${i}`; \
    header=`head -n 1 $md` && header=${header:2}; \
    author=`head -n 2 $md | tail -n 1` && author=${author:2}; \
    date=`head -n 3 $md | tail -n 1` && date=${date:2:10}; \
    echo -e "\n#. ${date} [${header} (${author})](${href})\n:   <iframe class=\"lyrics\" src=\"${href}\" width=\"1060\" height=\"520\"></iframe>\n"; \
    cat ${src%.*}-c.md; \
    echo -e "\n"; \
done; \
cat _lyrics_footer.md; \
cat ../../footer.html; \
) | \
pandoc \
-S -s --ascii -f markdown -c main.css \
-o ../../publish/lyrics.html
