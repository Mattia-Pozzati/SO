#!/bin/bash

(( i=${RANDOM}%2 ))
if [[ ${i} == "0" ]] ; then 
    echo -n a
else 
    echo -n c
fi