#!/bin/bash
Parola=""
for (( i=0 ; i <= 3; i+=1 )); do
	Parola+=$(./lettera.sh)
done
echo $Parola

