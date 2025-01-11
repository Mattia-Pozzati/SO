
SUM=0
OP=""
INDEX=0
RES=0

for((i=1;i<= $#; i+=1));do ((INDEX+=i));done

for((i=1;i <= $#; i=$i+1));
do
    if ((i!=1));
    then
        OP+=" + "
    fi
    num=${!i};
    ((SUM+=num*num));
    OP+="$num^2"
done

((RES=SUM-INDEX))

echo -e "$OP = $SUM \n => $SUM - $INDEX = $RES"