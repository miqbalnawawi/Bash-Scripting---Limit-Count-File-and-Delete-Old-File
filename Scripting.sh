#!/bin/bash
max=4
n=0
ls -1t *.gz |
while read file; do
    n=$((n+1))
    if [[ $n -gt $max ]]; then
        rm -f "$file"
    fi
done
