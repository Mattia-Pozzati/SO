IFS=","
SUM=0
while read -r A B C; do
    (( SUM+= B ))
    echo "$A,$C"
done < "input.in" > "output.out"
echo $SUM >> "output.out"