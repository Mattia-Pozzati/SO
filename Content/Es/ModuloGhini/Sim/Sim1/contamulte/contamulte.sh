while read n c m r; do
    echo $m
done | sort -n | uniq -c | while read A B;  do echo "Multa -> $B ---- Numero di volte ->$A"; done