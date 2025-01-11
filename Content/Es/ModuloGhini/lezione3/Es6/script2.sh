Quanti=$#

while ((${Quanti} > 0)); do
    echo "${Quanti} > ${!Quanti}";
    ((Quanti=${Quanti} -1));
done;