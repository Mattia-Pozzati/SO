FINDERPATH="/Users/mattiapozzati/Documents"
cd $FINDERPATH
for l in {c...g}; do
    for name in "${FINDERPATH}/?${l}*"; do
        if [[ -e $name && (${#name} -lt 18 || ${#name} -gt 23 )]]; then
            echo $name;
        fi
    done
done

