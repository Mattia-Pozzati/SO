#!/bin/bash

# Creazione del file iniziale per avviare il processo
echo "Inizio processo ping"
touch "pong.txt"

# Ciclo principale
while true; do
    # Aspetta che esista il file ping.txt
    if [[ -f "ping.txt" ]]; then
        echo "ping"          # Stampa "ping"
        rm "ping.txt"        # Rimuove il file ping.txt
        touch "pong.txt"     # Crea il file pong.txt per passare il testimone
    fi
    sleep 2
done
