#!/bin/bash

# contare quante volte il carattere c e' contenuto nelle 4 righe.
# non si possono usare file esterni.

ls -1 -c -t -d $(find ".." -type d -name "*a*")| head -n 1
