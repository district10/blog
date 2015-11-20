#!/bin/bash

output=$1
obasename=`basename ${output}`
a=${obasename%.*}-a.md;
b=${obasename%.*}-b.md;

(cat _a.md; \
tail -n +4 ${a}; \
cat _b.md; \
tail -n +4 ${b}; \
cat _c.md; \
(git diff --color-words --no-index ${a} ${b} | aha);
cat _d.md; \
) | \
pandoc -f markdown+hard_line_breaks --self-contained -S -s --ascii -c _main.css  -o $output
