#!/bin/bash

# Controllo che ci sia un argomento passato a riga di comando
if [ $# -ne 1 ]; then
  echo "Uso: $0 <numero_intero>"
  exit 1
fi

# Controllo che l'argomento sia un numero intero
if ! [[ $1 =~ ^-?[0-9]+$ ]]; then
  echo "Errore: l'argomento deve essere un numero intero."
  exit 1
fi

# Assegno l'argomento a una variabile
n=$1

# Caso base: se l'argomento è 0
if [ $n -eq 0 ]; then
  echo "$n"
  exit 0
fi

# Caso ricorsivo: se l'argomento è maggiore di 0
if [ $n -gt 0 ]; then
  # Lancio in background lo script stesso n volte con n-1
  for ((i=1; i<=n; i++)); do
    $0 $((n-1)) &
  done

  # Attendo che tutti i processi figli terminino
  wait

  # Stampo l'argomento corrente
  echo "$n"
fi

# Termino con successo
exit 0
