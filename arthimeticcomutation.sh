#!/bin/bash -x

echo "enter the three inputs :: "
read a b c
echo $a $b $c
declare -A computations
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))
computations[0]=$result1
computations[1]=$result2
computations[2]=$result3
computations[3]=$result4
index=0
for i in ${computations[@]}
do
cpArray[((index++))]=$i
done
echo $result1 $result2 $result3 $result4
ascendingOrder=($(printf '%s\n' "${cpArray[@]}" | sort )) 
echo ${ascendingOrder[*]}
