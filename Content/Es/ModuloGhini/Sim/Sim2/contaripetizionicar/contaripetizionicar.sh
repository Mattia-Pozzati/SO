if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <Stringa>"
    exit 0
fi

Stringa=$1
echo "La stringa ${Stringa} è lunga ${#Stringa} caratteri.\n\nVediamoli nel dettaglio:\n"

for (( i=0; i<${#Stringa}; i++ )); do
    c=${Stringa:i:1}
    echo $c | tr 'A-Z' 'a-z'
done | sort | uniq -c | while read A B; do echo "- $B -> $A"; done
