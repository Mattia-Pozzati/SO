#!/bin/bash

# Controllo del numero di argomenti
if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <directory> <extension>"
    exit
fi

# Assegna gli argomenti a variabili
dir=$1
ext=$2
backup="${dir}Backup_$(date "+%d-%m-%y")"

# Controllo se la directory esiste
if [[ ! -d "$dir" ]]; then
    echo "Errore: la directory $dir non esiste."
    exit
fi

# Creazione del backup
if [[ -z "$ext" ]]; then
    # Se non è specificata un'estensione, includi tutti i file
    tar -cf "$backup.tar" -C "$dir" .
else
    # Filtra i file per estensione
    files=$(find "$dir" -maxdepth 1 -type f -name "*.$ext")
    if [[ -z "$files" ]]; then
        echo "Errore: nessun file con estensione .$ext trovato nella directory $dir."
        exit
    fi
    tar -cf "$backup.tar" $files
fi

echo "Archivio creato con successo: $backup.tar"
