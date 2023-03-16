#!/bin/bash

shopt -s globstar

for file in **/*.png; do
    random=$(openssl rand -hex 3)
    mv "$file" "${file%/*}/$random.png"
done
