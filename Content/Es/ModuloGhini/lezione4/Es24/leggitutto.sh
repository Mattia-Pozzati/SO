FILEIN=$1
exec 3< $FILEIN

if (($? == 0));then
    while read -u 3 Line ; [[ $? -eq 0 || $Line != "" ]] ;do
        echo $Line
    done
    exec 3>&-
fi