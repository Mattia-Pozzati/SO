if [[ (( $# == 0)) && ! -f $1 ]];then
    echo "Usage: $0 <file>"
fi

in=$1

./invertiRic.sh < "$in"
