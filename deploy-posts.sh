#!/bin/bash

SRC=_posts
DST=publish
TMP=tmp.txt
INDEX=${SRC}/index.md

echo deploying...
rm ${INDEX} ${TMP} 2>/dev/null

for POST in ${DST}/post-*.html;
do
    LINK=`basename ${POST}`
    FILE=`head -q -n5 ${SRC}/${LINK%.*}.md | tail -n1`
    DATE=`head -q -n3 ${SRC}/${LINK%.*}.md | tail -n1` && DATE=${DATE:2:10}
    echo "* ${DATE} [${FILE}](${LINK})" >> ${TMP}
done

sort -nr ${TMP} > ${INDEX}
rm ${TMP} 2>/dev/null
echo deploying... done