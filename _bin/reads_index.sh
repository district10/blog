#!/bin/bash

SRC=.
DST=$1

shift

( \
cat ${SRC}/_index_header.md; \
    ( for READ in $*; \
    do \
        LINK=`basename ${READ}`; \
        FILE=`head -n1 ${SRC}/${LINK%.*}.md`; \
        echo -e "\n* [${FILE}](${LINK})"; \
    done; \
    ) | sed '/^$/d' | sort -nr; \
cat ${SRC}/_index_footer.md; \
) | \
pandoc -S -s --ascii -c main.css -A ../footer.html --toc -f markdown+table_captions -o ${DST}
