p=1

while read A B C D; do
    if (( p != C )); then
        echo $C $(grep -c $C $1)
        (( p = C ))
    fi
    
done < $1
