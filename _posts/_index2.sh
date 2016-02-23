#!/bin/bash

SRC=.
DST=$1
HEADER="_index_header.md"
FOOTER="_index_footer.md"

( \
cat ${SRC}/${HEADER}; \
    ( for POST in ${SRC}/post-*.md; \
    do \
        LINK=`basename ${POST/.md/.html}`; \
        FILE=`head -q -n5 ${SRC}/${LINK%.*}.md | tail -n1`; \
        DATE=`head -q -n3 ${SRC}/${LINK%.*}.md | tail -n1` && DATE=${DATE:2:10}; \
        echo -e "\n* ${DATE} [${FILE}](${LINK})"; \
    done; \
    ) | sed '/^$/d' | sort -nr; \
cat ${SRC}/${FOOTER}; \
) | \
pandoc -S -s --ascii -c main.css -A ../_parts/footer.html \
--toc --mathjax --highlight-style pygments -f markdown+table_captions -o ${DST}
