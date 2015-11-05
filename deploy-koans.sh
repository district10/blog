#!/bin/bash

SRC=_koans
DST=_posts
INDEX=index.txt
KOANS=${DST}/koans.md

echo deploying koans...
rm ${KOANS}

for KOAN in ${SRC}/koan-*.md;
do
    echo ${KOAN} >> ${INDEX}
done
sort -n ${INDEX} < ${INDEX}

for KOAN in `cat ${INDEX}`
do
    cat      $KOAN >> ${KOANS}
    echo -e "\n\n" >> ${KOANS}
done

rm ${INDEX}
echo deploying notes... done
