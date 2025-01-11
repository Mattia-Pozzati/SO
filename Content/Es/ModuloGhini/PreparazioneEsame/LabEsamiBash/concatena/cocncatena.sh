#!/bin/bash

OUTPUT_FILE="output.txt"

> "$OUTPUT_FILE"

DIRECTORY="/usr/include/"

for FILE in "$DIRECTORY"std*; do
    if [ -f "$FILE" ]; then
        sed -n '2,4p' "$FILE" >> "$OUTPUT_FILE"
    fi
done