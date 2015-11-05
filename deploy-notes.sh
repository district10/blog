#!/bin/bash

SRC=_notes
DST=_posts
INDEX=index.txt
NOTES=${DST}/notes.md

echo deploying notes...
rm ${NOTES}

for NOTE in ${SRC}/note-*.md;
do
    echo ${NOTE} >> ${INDEX}
done
sort -n ${INDEX} < ${INDEX}

for NOTE in `cat ${INDEX}`
do
    cat      $NOTE >> ${NOTES}
    echo -e "\n\n" >> ${NOTES}
done

rm ${INDEX}
echo deploying notes... done
