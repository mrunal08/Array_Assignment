#!/bin/bash
abc=0
declare -a primefactors;
read -p "Enter a number= " n
for (( i=2; i<=$n*$n; i++ ))
do
while [ $(($n%$i)) -eq 0 ]
do
abc=$(($abc+1))
for j in abc
do
primefactors[$j]="$i"
done
n=$(($n/$i))
done
done
echo "Prime factors are stored in array."
echo "Prime factors are= "
echo ${primefactors[@]}
