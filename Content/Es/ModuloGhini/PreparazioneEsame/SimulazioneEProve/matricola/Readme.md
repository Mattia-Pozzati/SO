Esercizio Esame Pratica - 210 - selezmatricola.sh 1/3
Un file di testo lista.txt (passato insieme a questo stesso file .pdf nell'archivio tgz)
contiene l'elenco degli iscritti ad un esame scritto in cui ci sono studenti per quattro
esami, precisamente "SISTEMI OPERATIVI", "SISTEMI VIRTUALIZZATI", "SYSTEMS
INTEGRATION" e "VIRTUALIZZAZIONE E INTEGRAZIONE DI SISTEMI".
Nel file, per ciascuno studente iscritto, ci sono 3 righe, seguite da una riga vuota, il
cui contenuto è il seguente:
DATA ORA_INIZIO
MATRICOLA COGNOME NOME
NOME_ESAME
Scrivere uno script selezmatricola.sh che mette in output le matricole degli studenti
che vogliono sostenere l'esame di SISTEMI OPERATIVI, una riga per ciascuna
matricola.
Suggerimento:
il comando grep ha due opzioni -B 1 --no-group-separator che consente di mettere
in output ANCHE LA RIGA che precede quella che contiene la word selezionata.
il comando grep ha una opzione -v che consente di mettere in output le righe che
NON CONTENGONO la word passata a grep come argomento
Vedere la slide successiva per un esempio di input ed output.