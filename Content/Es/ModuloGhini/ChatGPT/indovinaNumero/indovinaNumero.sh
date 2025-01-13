#!/bin/bash

scale=200
rN=$(( RANDOM % scale ))

# Funzione per calcolare il valore assoluto
abs() {
    if (( $1 < 0 )); then
        echo $(( $1 * -1 ))
    else
        echo $1
    fi
}

while true; do
    read -p "Indovina: " gN

    # Verifica che l'input sia un numero
    if [[ ! "$gN" =~ ^-?[0-9]+$ ]]; then
        echo "gN deve essere un numero."
    # Verifica che l'input sia compreso nell'intervallo valido
    elif (( gN < 0 || gN > scale )); then
        echo "gN deve essere un numero tra 0 e $scale."
    elif (( rN == gN )); then
        echo "Hai vinto!"
        break
    else
        # Calcola la distanza assoluta tra il numero casuale e il numero inserito
        distance=$(abs $(( rN - gN )))
        # Distanze per la risposta
        if (( distance < $scale * 5/100 )); then
            echo "FUOCO!!"
        elif (( distance < $scale * 10/100 )); then
            echo "Piccolo Fuoco"
        elif (( distance < $scale * 20/100 )); then
            echo "Mare"
        else 
            echo "Oceano"
        fi
    fi
done
