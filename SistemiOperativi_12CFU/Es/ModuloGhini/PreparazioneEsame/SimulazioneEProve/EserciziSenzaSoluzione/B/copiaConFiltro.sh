#!/bin/bash

# Verifica che vengano passati due argomenti
if [[ $# -ne 2 ]]; then
    echo "Uso: $0 <directory_origine> <directory_destinazione>"
    exit 1
fi

SOURCE=$1
DEST=$2

# Verifica che la directory di origine esista
if [[ ! -d $SOURCE ]]; then
    echo "La directory di origine '$SOURCE' non esiste."
    exit 2
fi

# Creazione della directory di destinazione se non esiste
mkdir -p "$DEST"

# Copia ricorsiva dei file .txt, ignorando quelli vuoti
find "$SOURCE" -type f -name "*.txt" ! -empty -exec cp --parents {} "$DEST" \;

echo "Copia completata da '$SOURCE' a '$DEST'."
