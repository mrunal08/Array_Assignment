#!/bin/bash
Jan=0
Feb=0
Mar=0
Apr=0
May=0
Jun=0
Jul=0
Aug=0
Sep=0
Oct=0
Nov=0
Dec=0
declare -A Birthday
for (( i=1; i<=50; i++ ))
do
        n=`echo $((RANDOM %24 +1))`
        if [[ ($n -eq 1)  ||  ($n -eq 13) ]]
        then
                ((Jan++))
                Birthday[1]=$Jan
        elif [[ $n -eq 2  ||  $n -eq 14 ]]
        then
                ((Feb++))
                Birthday[2]=$Feb
        elif [[ $n -eq 3  ||  $n -eq 15  ]]
        then
                ((Mar++))
                Birthday[3]=$Mar
        elif [[ $n -eq 4  ||  $n -eq 16 ]]
        then
                ((Apr++))
                Birthday[4]=$Apr
        elif [[ $n -eq 5  ||  $n -eq 17 ]]
        then
                ((May++))
                Birthday[5]=$May
        elif [[ $n -eq 6  ||  $n -eq 18 ]]
        then
                ((Jun++))
                Birthday[6]=$Jun

        elif [[ $n -eq 7  ||  $n -eq 19  ]]
        then
                ((Jul++))
                Birthday[7]=$Jul
        elif [[ $n -eq 8  ||  $n -eq 20 ]]
        then
                ((Aug++))
                Birthday[8]=$Aug
        elif [[ $n -eq 9  ||  $n -eq 21  ]]
        then
                ((Sep++))
                Birthday[9]=$Sep
        elif [[ $n -eq 10  ||  $n -eq 22 ]]
        then
                ((Oct++))
                Birthday[10]=$Oct
        elif [[ $n -eq 11  ||  $n -eq 23 ]]
        then
                ((Nov++))
                Birthday[11]=$Nov
        elif [[ $n -eq 12  ||  $n -eq 24 ]]
        then
                ((Dec++))
                Birthday[12]=$Dec
        fi
done
echo ${Birthday[@]}
for (( i=1; i<=12; i++ ))
do
        echo "Month_$i : ${Birthday[$i]}"
done
