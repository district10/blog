#!/bin/bash

pandoc -S -s --ascii -c main.css -A ../_parts/footer.html --toc --mathjax --highlight-style pygments -f markdown+table_captions -o $1
