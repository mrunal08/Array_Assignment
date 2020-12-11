#!/bin/bash
max=99
min=1000
for (( i=0; i<10; i++ ))
do
x=$(($RANDOM%1000))
if [[ $x -gt 99 ]]
then
a[i]=$x
fi
done
echo "$Displaying 10 random 3 digit numbers= "
echo ${a[@]}
for (( i=0; i<=9; i++ ))
do
echo ${a[$i]}
if [[ ${a[$i]} -gt $max ]]
then
max="${a[$i]}"
elif [[ ${a[i]} -lt $min ]]
then
min="${a[$i]}"
else
echo "Dummy"
fi
done
echo "Max= " $max
echo "Min= " $min
