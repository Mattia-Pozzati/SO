if [[  -z $1  || -z $2 ]] ; then
    echo I need 2 integer
    exit 0
else
    W=$1
    H=$2
fi

while read n w h p; do 
    if [[ $w -ge $W && $h -le $H ]] ; then
        echo "$n $w $h $p" 
    fi
done < divani.input