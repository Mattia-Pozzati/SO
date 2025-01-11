## Divani
Esiste un file divani.txt che contiene una riga per ciascun divano prodotto da una ditta. In ogni riga, separati da spazi, ci sono il nome del divano (una sola parola), la larghezza, l'altezza e la profondità espresse in cm.
Scrivere uno script divani.sh che prende esattamente due argomenti, la larghezza minima e l'altezza
massima.
Lo script deve stampare a video l'elenco dei divani che rispettano due proprietà:
-  la loro larghezza è maggiore o uguale della larghezza passata come primo argomento;
-  la loro altezza è minore o uguale della altezza passata come secondo argomento allo script;
Usare come file divani.txt il seguente.
<code>
divano1 200 83 105
Divano2 170 85 115
divaNo3 185 65 99
divano4 170 85 115
divanO5 220 70 145
</code>
Provare ad eseguire lo script passando come argomenti i seguenti:

200 80 -> divanO5 220 70 145
180 71 -> divaNo3 185 65 99
          divanO5 220 70 145


