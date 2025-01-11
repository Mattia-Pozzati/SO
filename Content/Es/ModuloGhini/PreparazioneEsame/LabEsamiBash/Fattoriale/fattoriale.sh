n=$1
if (( n == 1)); then
    echo 1
else
    echo $(( n * $(./fattoriale.sh $((n - 1))) ))
fi