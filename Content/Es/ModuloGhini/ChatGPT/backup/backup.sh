#!/bin/bash

# Gestione input
if [[ -d $1 && $# -gt 0 ]]; then
    dir=$1
else
    echo "Usage: $0 <Directory>"
    exit 1
fi

# Creazione della data in formato desiderato
date=$(date "+%d-%m-%y")

# Creazione della directory di backup
backupDir="${dir}Backup_${date}"

echo "Directory di backup: $backupDir"

if [[ ! -d "$backupDir" ]]; then
    mkdir "$backupDir"
fi

# Copia dei file .txt nella directory di backup
find "$dir" -name "*.txt" -exec cp {} "$backupDir" \;

# Rinominare i file nella directory di backup
for file in "$backupDir"/*; do
    if [[ -f "$file" ]]; then
        echo "$file ->"
        nf="${file%.*}"
        new_name="${nf}_${date}.txt"
        echo "$new_name"
        mv "$file" "$new_name"
    fi
done
