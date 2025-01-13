IFS=' ,."'

while read A; do
    for w in $A; do
        echo $w
    done
done | sort | uniq -c | sort -r