exec 3<$1

if (($? == 0)); then
    while read -u 3 p1 p2 p3 p4; do
        echo $p3
    done
    exec 3>&-
fi