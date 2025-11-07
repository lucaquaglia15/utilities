#!/bin/sh

i=1

for f in *; do
    mv "$f" "sample_${i}.png"
    ((i++))
done