Realizzare uno script nAnB.sh che prende come argomento una stringa di testo e verifica che la stringa sia
formata esattamente da N caratteri A seguiti da N caratteri B, con un N qualunque maggiore di zero.
Se la stringa corrisponde ai requisiti lo script scrive sullo standard output la parola "vero" seguita dal Numero
N individuato.
Altrimenti scrive "falso".
Ad esempio, passando come argomento:
AAABBB vedo in output "vero N=3"
ADABBB vedo in output "falso" perché c'è carattere diverso da A e da B
AAB vedo in output "falso"
AabB vedo in output "falso"
Realizzare lo script richiesto completando lo script base allegato.
Suggerimento: vi ricordo l'esistenza dei seguenti operatori per le variabili bash
${VAR:offset} sottostringa che parte dal offset-esimo carattere del contenuto
della variabile di nome VAR
${VAR:offset:length} sottostringa lunga length che parte dal offset-esimo
carattere del contenuto della variabile di nome VAR
Esempio:
VAR=“ciao”; echo ${VAR:0:1} viene messo in output c
