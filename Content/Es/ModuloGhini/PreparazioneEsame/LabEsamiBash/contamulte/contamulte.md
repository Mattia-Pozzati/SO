## Esercizio Esame Pratica - 59 - conta multe uguali
Sia dato un file di testo multe.txt in cui, in ciascuna riga, e' contenuto :
- il nome e il cognome di un guidatore,
- l'ammontare della multa e 
- la data (giorno, mese, anno) in cui la multa gli è stata comminata.
I diversi campi in ciascuna riga sono separati da TAB o da spazi bianchi, scegliete voi.

Note:
- Le righe del file sono ordinate in modo crescente secondo il valore della multa.
- Ovviamente lo stesso valore può esistere più volte nel file.

Scrivere uno script bash, avente nome contamulte.sh, che viene eseguito lanciando questa riga di
comando ./contamulte.sh < multe.txt
e che produce il seguente risultato:
per ciascun valore di multa presente in quel file multe.txt, stampare una riga di testo contenente : il
valore della multa e il numero di volte che quel valore si ripete nel file.

NB: un esempio di file multe.txt e' contenuto qui:
https://www.cs.unibo.it/~ghini/didattica/sistemioperativi/SIMULAZIONITEMP/2017_06_12__BASE_es59_c
ontamulte.tgz
Se volete potete sostituire i caratteri bianchi con dei TAB.
esempio di file multe.txt
Luca Andreucci 57 11 maggio 2014
Giovanni Pau 57 20 aprile 2015
Luca Andreucci 123 28 luglio 2015
Astolfo Isoardi 160 21 dicembre 2015
Vittorio Ghini 1000 17 febbraio 2016
Gilles Villeneuve 1000 1 gennaio 1978
output da produrre
57 2
123 1
160 1
1000 2
Soluzione
https://www.cs.unibo.it/~ghini/didattica/sistemioperativi/SIMULAZIONITEMP/2017_06_12_es59_c
ontamulte.SOLUZIONE.tgz