if [[ $1 -lt 0 || $# -lt 1 ]]; then
	echo "Usage: $0 <Numero Intero>"
	exit
fi

n=$1

if (( n == 0 || n == 1 )) ;then
	echo 1
	exit 0
fi
temp=$(( n - 1 ))
res=$(./prova.sh $temp)

echo $(( n * res ))