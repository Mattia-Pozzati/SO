Quanti=1

while ((${Quanti} <= $#)); do
    echo "${Quanti} > ${!Quanti}";
    ((Quanti=${Quanti} + 1));
done;

./script2.sh "$@"