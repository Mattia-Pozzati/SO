PARI=""
DISPARI=""
num=1;
while (($num <= $#))
do
    if((num % 2 == 0));
    then
        PARI+="${!num} ";
    else
        DISPARI+="${!num} ";
    fi
    ((num+=1))
done

echo "PARI:\n" $PARI "\nDIPARI:\n" $DISPARI