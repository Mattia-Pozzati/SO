exec 3<$1
NUM=0


if (($? == 0));then
    while read -u 3 -n 1 -r a;do
        ((NUM+=1))
    done;
    exec 3>&-
    echo Num of chars = $NUM
fi


