IFS='"'
while read A B C D E F G; do
    echo $F >> cadutevic.txt
done < $1