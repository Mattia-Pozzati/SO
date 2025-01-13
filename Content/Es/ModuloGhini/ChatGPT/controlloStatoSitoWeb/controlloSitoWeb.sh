#!/bin/bash

# Controlla se l'URL è stato fornito
if [[ -z "$1" ]]; then
  echo "Usage: $0 <url>"
  exit 1
fi

# Utilizza curl per controllare lo stato del sito
status=$(curl -o /dev/null -s -w "%{http_code}" "$1")

# Stampa lo stato HTTP
if [[ $? -eq 0 ]]; then
  echo "Lo stato HTTP del sito $1 è: $status"
else
  echo "Errore: Impossibile raggiungere il sito $1"
fi
