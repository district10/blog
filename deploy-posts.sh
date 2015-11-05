#!/bin/bash

SRC=_posts
DST=publish
INDEX=${SRC}/index.md

echo deploying...
rm ${INDEX}

for POST in ${DST}/post-*.html;
do
    LINK=`basename ${POST}`
    FILE=`head -q -n6 ${SRC}/${LINK%.*}.md | tail -n1`
    DATE=`head -q -n3 ${SRC}/${LINK%.*}.md | tail -n1` && DATE=${DATE:2:10}
    echo "* ${DATE} [${FILE}](${LINK})" >> ${INDEX}
done

sort -n ${INDEX} < ${INDEX}
echo deploying... done