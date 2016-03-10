#!/bin/bash

SRC=_posts
DST=$1

( for POST in ${SRC}/post-*.md; \
do \
    LINK=`basename "${POST%.*}.html"`; \
    FILE=`head -q -n5 "${SRC}/${LINK%.*}.md" | tail -n1`; \
    DATE=`head -q -n3 "${SRC}/${LINK%.*}.md" | tail -n1` && DATE=${DATE:2:10}; \
    echo -e "\n* ${DATE} [${FILE}](${LINK})"; \
done; \
) | sed '/^$/d' | sort -nr | \
tee ${DST%.*}.txt | \
pandoc -S -s --ascii \
-f markdown -o ${DST}
