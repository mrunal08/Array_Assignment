#!/bin/bash
echo"Welcome to the dice problem"
declare -A dice
c1=0
c2=0
c3=0
c4=0
c5=0
c6=0
echo"---------------"
echo"Now we are flipping a dice for 20 times"
for (( i=1; i<=20; i++ ))
do
diceoutput=$((RANDOM%6 +1))
echo "Dice Output =" $diceoutput

if [[ $diceoutput -eq 1 ]]
then
((c1++))
dice[1]=$c1
elif [[ $diceoutput -eq 2 ]]
then
((c2++))
dice[2]=$c2
elif [[ $diceoutput -eq 3 ]]
then
((c3++))
dice[3]=$c3
elif [[ $diceoutput -eq 4 ]]
then
((c4++))
dice[4]=$c4
elif [[ $diceoutput -eq 5 ]]
then
((c5++))
dice[5]=$c5
elif [[ $diceoutput -eq 6 ]]
then
((c6++))
dice[6]=$c6
fi
done
