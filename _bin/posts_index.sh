#!/bin/bash

DST=$1

cat index.md | pandoc -S -s --ascii -c main.css -A footer.html -f markdown -o ${DST}
