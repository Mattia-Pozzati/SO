N=$1
Ris=1
count=1

while ((count <= N)) ; do
	Ris=$((Ris * count));
	count=$((count + 1));
done;
echo $Ris
