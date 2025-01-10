#!/bin/bash

# stampare a video il numero di parole "int" totali
# trovate tra le prime 10 parole di ciascuna riga
# del file ./prova.txt
# Attenzione, le parole che includono int non vanno contate.
# Ad esempio, le parole inta e bint non vanno contate.
# Il file passato come argomento ha 9 di queste parole int
# percio' lo script deve stampare a video 9

counter=0

while read {A..K}; do
	for w in {A..J}; do 
		if [[ ${!w} == "int" ]]; then
			(( counter += 1))
		fi
	done
done

echo parole contate = $counter


