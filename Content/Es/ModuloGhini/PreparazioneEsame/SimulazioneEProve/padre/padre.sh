#!/bin/bash
SUM=0
for (( i=0; $i<10; i++ )) ; do
  ./figlio.sh  &
done | 
while read A B C; do 
  echo $C $A $B
  ((SUM=SUM+B))
done | sort
echo $SUM

while true ; do
  sleep 2
  NUMJOBS=`jobs | grep Running | wc -l`
  if (( $NUMJOBS==0 )) ; then
    exit 0
  fi
  
done


