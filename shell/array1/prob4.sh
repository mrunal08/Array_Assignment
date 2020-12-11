#!/bin/bash
arr=()
echo "Enter array size:"
read a
echo "Enter Array Values:"
for (( i=0; i<$a; i++ ))
do
read x
arr[i]=$x
done
echo "Array: ${arr[@]}"
n=${#arr[@]}
array=0
for (( i=0; i<$n-2; i++ ))
do
for (( j=$i+1; j<$n-1; j++ ))
do
for (( k=$j+1; k<$n; k++ ))
do
if [ `expr ${arr[$i]} + ${arr[$j]} + ${arr[$k]}` -eq 0 ]
then
echo "Sum: ${arr[i]} ${arr[j]} ${arr[k]}"
echo " "
array=$(( $array + 1 ))
fi
done
done
done

if [[ $array -eq 0 ]]
then
echo "No sum found!!"
fi

