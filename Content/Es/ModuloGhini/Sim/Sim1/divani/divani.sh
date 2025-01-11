
if [[ $# -ge 2 && $1 -ge 0 && $2 -ge 0 ]]; then
    minL=$1
    maxH=$2
else
    echo "Usage: $0 <maxLenght(>0)> <maxHeight(>0)>"
fi

while read n l h d o; do
    if [[ ${l} -gt ${minL} && ${h} -lt ${maxH} ]]; then
        echo $n $l $h $d
    fi
done < "divani.input"