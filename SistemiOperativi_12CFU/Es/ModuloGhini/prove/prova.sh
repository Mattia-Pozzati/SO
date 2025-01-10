for i in $( seq 0 $1 ); do
	echo $i
	(( n = i - 1))
	$0 "$n" &
done

wait 

echo $1
