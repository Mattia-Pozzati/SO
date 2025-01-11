
while read -r A; do
    N=0
    if (( ${#A}%2 == 1 ));then
        echo "false"
    else
        for (( i=0; i<${#A}/2; i++ )); do
            (( j= ${#A} - $i - 1));
            if [[ (( ${A:i:1} == "A" )) && (( ${A:j:1} == "B" ))]];then
                ((N+=1))
            else
                echo "false"
            fi
        done
	if (( N != 0 )); then
        	echo "true N:"$N
	fi
    fi
done < "input.in"
