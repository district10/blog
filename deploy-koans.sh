#!/bin/bash

SRC=_koans
DST=_posts
INDEX=index.txt
KOANS=${DST}/koans.md

echo deploying koans...
rm ${KOANS} 2>/dev/null

for KOAN in ${SRC}/koan-*.md;
do
    echo ${KOAN} >> ${INDEX}
done
sort -nr ${INDEX} < ${INDEX}

for KOAN in `cat ${INDEX}`
do
    cat      $KOAN >> ${KOANS}
    echo -e "\n\n" >> ${KOANS}
done

rm ${INDEX} 2>/dev/null
echo deploying notes... done
