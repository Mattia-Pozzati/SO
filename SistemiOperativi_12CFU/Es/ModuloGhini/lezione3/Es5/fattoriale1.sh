N=$1

if ((${N} > 1)); then
    ((Ris = Ris * N))
    source ./fattoriale1.sh "((${N} - 1))"
fi;