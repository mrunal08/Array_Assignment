#!/bin/bash
count=1
abcd=0
declare -a p;
while [[ $count -le 100 ]]
do
if [[ $(($count%11)) -eq 0 ]]
then
abcd=$(($abcd+1))
for i in abcd
do
p[$i]="$count"
done
fi
count=$(($count+1))
done
echo "The numbers in which a single digit repeated twice is stored in array."
echo "Those numbers are ="
echo ${p[@]}
