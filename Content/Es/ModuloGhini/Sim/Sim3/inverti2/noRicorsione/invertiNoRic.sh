l=$(wc -l | while read A B; do echo $A;done)

for (( i=1; i <= l; i++ )); do
    echo $(tail -n "$i" | head -n 1)
done