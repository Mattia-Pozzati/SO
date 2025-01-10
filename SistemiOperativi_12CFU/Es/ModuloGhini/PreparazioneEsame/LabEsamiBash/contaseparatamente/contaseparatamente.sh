i=0
input="./input/*" 
rm output.txt
for file in $input ;do
    if (( i % 2 == 0)); then
        echo $(wc -l "$file") >> output.txt
    else
        echo $(wc -l "$file")
    fi
    ((i += 1))
done