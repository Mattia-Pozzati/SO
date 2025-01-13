OP='+ - * /'

for op in "${OP[@]}"; do
    if [[ "$1" == "$op" ]]; then
        echo true
        exit
    fi
done
echo false