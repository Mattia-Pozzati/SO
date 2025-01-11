#!/bin/bash

echo "Inizio processo pong"

# Ciclo principale
while true; do
    # Aspetta che esista il file pong.txt
    if [[ -f "pong.txt" ]]; then
        echo "pong"          # Stampa "pong"
        rm "pong.txt"        # Rimuove il file pong.txt
        touch "ping.txt"     # Crea il file ping.txt per passare il testimone
    fi
    sleep 2                 # Aspetta 2 secondi per ridurre il carico della CPU
done
