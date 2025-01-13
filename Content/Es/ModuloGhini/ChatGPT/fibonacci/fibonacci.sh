if (( $1 == 0 || $1 == 1 )); then
    echo $1
else
    echo $(( $( ./fibonacci.sh $(( $1 - 1 ))) + $( ./fibonacci.sh $(( $1 - 2 ))) ))
fi
