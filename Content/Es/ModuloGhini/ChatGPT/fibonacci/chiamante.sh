if [[ -z $1 ]]; then
    echo "Usage: $0 <N>\n\tN=numero>0"
fi

N=$1

> "fibonacci.txt"

for (( i=0 ; i<N ; i++ )); do
    echo "$(./fibonacci.sh "$i")" >> "fibonacci.txt"
done
