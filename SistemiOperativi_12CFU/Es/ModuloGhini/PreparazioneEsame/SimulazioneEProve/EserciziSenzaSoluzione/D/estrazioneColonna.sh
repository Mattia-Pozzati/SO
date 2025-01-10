if [[ $# == 2 && $1 -gt 0  && -f $2 ]]; then
    index=$1
    input=$2
else
    echo 'Usage : ./estrazioneColonna <index> <file>'
    exit 0
fi

i=0

while read A;do
    IFS=","
    for w in $A; do
        echo $i $w
        (( i+=1 ))
        if [[ $i -gt 4 ]];then
            (( i=0 ))
        fi
    done
done < $input | grep $index | while read A B; do echo $B; done

