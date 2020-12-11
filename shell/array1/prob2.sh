#!/bin/bash
declare -a temp;
for (( i=0; i<10 ; i++ ))
do
x=$(($RANDOM%1000))
if [[ $x -gt 99 ]]
then
b[i]=$x
fi
done
echo "10 random 3 digit numbers are= "
echo ${b[@]}
for (( i=0; i<9; i++ ))
do
for (( j=i+1; j<10; j++ ))
do
if [[ ${b[i]} -gt ${b[j]} ]]
then
z="${b[i]}"
b[$i]="${b[j]}"
b[$j]=$z;
fi
done
done
echo "Sorted output in ascending order= "
echo ${b[@]}
echo "Second largest no.= "
echo ${b[8]}
for (( i=0; i<9; i++ ))
do
for (( j=i+1; j<10; j++ ))
do
if [[ ${b[i]} -lt ${b[j]} ]]
then
z="${b[i]}"
b[$i]="${b[j]}"
b[$j]=$z;
fi
done
done
echo "Sorted output in descending order= "
echo ${b[@]}
echo "Second lowest no.="
echo ${b[8]}

