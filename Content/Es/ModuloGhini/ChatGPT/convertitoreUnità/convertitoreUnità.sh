if [[ -z $1 || -z $2 ]]; then
    echo "Usage: $0 <value> <C/F>"
    exit
fi

value=$1
unit=$2
newVal=0
otherUnit=""

if [[ $unit == "C" ]]; then
    # 𝐹 = 𝐶 × (9 / 5) + 32
    newVal=$(echo "scale=2; $value * ( 9 / 5 ) + 32 " | bc) 
    otherUnit="F"
elif [[ $unit == "F" ]]; then
    # 𝐹 = 𝐶 × (9 / 5) + 32
    newVal=$(echo "scale=2; ($value - 32) * 5 / 9" | bc)
    otherUnit="C"
else
    echo Error: $unit non supportata
fi

echo "${value}°${unit} =~ ${newVal}°${otherUnit}"
