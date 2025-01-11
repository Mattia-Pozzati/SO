#!/bin/bash

# contare quante volte il carattere c e' contenuto nelle 4 righe.
# non si possono usare file esterni.

RIGA="La civetta mattutina casca in pedi la mattina.
Tanto va la gatta al largo che ci lascia lo zio pino.
Fin che la barca va lasciala andare.
Trentatretrentini entrarono a Trento trotterellando.
"
for w in $RIGA; do
    echo $w
done | grep -o c | wc -l | while read A B ; do echo $B $A; done