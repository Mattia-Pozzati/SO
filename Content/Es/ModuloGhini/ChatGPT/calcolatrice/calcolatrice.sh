#!/bin/bash

if [[ $# -lt 3 ]]; then
    echo "Usage: $0 <Numero> <Operatore> <Numero>"
    exit
fi

# Assegna gli argomenti a variabili
n1=$1
op=$2
n2=$3

# Controllo degli operatori e calcolo
if [[ "$op" == "+" || "$op" == "-" ]]; then
    res=$(( n1 $op n2 ))
    echo "$n1 $op $n2 = $res"
elif [[ "$op" == ":" ]]; then
    if [[ "$n2" -eq 0 ]]; then
        echo "Errore: divisione per zero"
        exit
    fi
    res=$(( n1 / n2 ))
    echo "$n1 / $n2 = $res"
elif [[ "$op" == 'x' ]]; then
    res=$(( n1 * n2 ))
    echo "$n1 x $n2 = $res"
else
    echo "Operazione $op non supportata"
fi
