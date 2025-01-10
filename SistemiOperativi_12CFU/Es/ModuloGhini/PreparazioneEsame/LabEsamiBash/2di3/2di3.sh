
INPUT="input.txt"

while read A B C F;do
    if [[ $C != "" && ${C:1:1} != "" ]];then
        echo ${C:1:1}
    fi
done < "$INPUT"

# Se il file non è formattato bene 

if [[ $C != "" ]];then
    echo ${C:1:1}
fi

