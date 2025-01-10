# Esercizio Esame Pratica- zyx– inverti2.sh
### Ordinamento inverso di righe di un file mediante ricorsione:
Scrivere uno script inverti2.sh che prende come argomento il percorso di un file di testo e stampa le righe di quel file in ordine inverso, cioè dall'ultima riga alla prima.

Si suppone che: 
- il file non abbia tantissime righe.
- il file non contenga metacaratteri o stringhe che possono causare espansioni bash.
""Utilizzare un approccio ricorsivo.""
Potete utilizzare anche più di uno script, facendoli chiamare dallo script principale
inverti2.sh
Se il file contiene le righe seguenti:
 - Alfa beta gamma
- Gatto cane serpente maiale
- Asdrubale teofilo
Allora in output vedrò:
- Asdrubale teofilo
- Gatto cane serpente maiale
- Alfa beta gamma
