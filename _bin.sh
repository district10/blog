#!/bin/bash

(cd /tmp && wget https://raw.githubusercontent.com/district10/aha/master/aha.c && \
    gcc -std=c99 aha.c -o aha && cp aha /bin )
