
sumP=0
sumD=0
i=1

while read A; do
    if (( i % 2 == 0 )); then
        (( sumP+=A ))
    else
        (( sumD+=A ))
    fi
    (( i+=1 )) 
done

echo "Ci sono $i righe: \nRighe pari -> $sumP \nRighe dispari -> $sumD"