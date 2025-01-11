if [[ $1 -gt 0 ]]; then 
	RISULTATO=$(./fattoriale.sh "$1")
	echo "$1 ! = ${RISULTATO}"
else
	echo "$1 < 0";
	exit 1;
fi;


 
