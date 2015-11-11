#!/bin/bash

make clean && make && make deploy && upload.sh && push.sh
