#!/bin/bash

pandoc -S -s --ascii -c main.css -A ../footer.html --toc --mathjax \
--highlight-style pygments -f markdown+table_captions --bibliography ${1%.*}.bib \
$1 -o $2
