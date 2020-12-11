#!/bin/bash
c1=0
c2=0
c3=0
c4=0
c5=0
c6=0
condition=0
declare -A dice
while [ $condition -eq 0 ]
do
        n=`echo $((RANDOM %6 +1))`
        if [ $n -eq 1 ]
        then
                ((c1++))
                dice[1]=$c1
        elif [ $n -eq 2 ]
        then
                ((c2++))
                dice[2]=$c2
        elif [ $n -eq 3 ]
        then
                ((c3++))
                dice[3]=$c3
        elif [ $n -eq 4 ]
        then
                ((c4++))
                dice[4]=$c4
        elif [ $n -eq 5 ]
        then
                ((c5++))
                dice[5]=$c5
        elif [ $n -eq 6 ]
        then
                ((c6++))
                dice[6]=$c6
        fi
        for (( i=1; i<=6; i++ ))
        do
                if [[ ${dice[$i]} -eq 10 ]]
                then
                        echo ${dice[i]}
                        condition=$i
                fi
        done

done
echo ${dice[@]}
max=0
min=1000
count1=0
count2=0
for (( i=1; i<=6; i++ ))
do
        echo "$i : ${dice[$i]}"
        if [[ ${dice[$i]} -ge $max ]]
        then
                max=${dice[$i]}
                count1=$i
        fi
        if [[ ${dice[$i]} -le $min ]]
        then
                min=${dice[$i]}
                count2=$i
        fi
done
echo "$condition wins the match"
echo "Maximum number of times a dice is rolled :$count1 : $max"
echo "Minimum number of times a dice is rolled :$count2 : $min"

