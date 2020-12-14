#!/usr/local/bin/bash 
echo "Welcome to the Employee Wage program"
WagePerHr=20
DailyEmpWage=0
declare -A DailyWage;
totalMonthWage=0
declare -A totalMonthlyWage;
Fulltime=1
Halftime=2
absent=0
empHr=0
totalworkingdays=0
echo "Day"   "DailyWage"    "Total Monthly Wage"
while [[ $totalworkingdays -lt 20 && $totalworkinghours -lt 100 ]]
do
empcheck=$(($RANDOM%3))
case $empcheck in
$Fulltime)
totalworkingdays=$(($totalworkingdays+1))
empHr=8
totalworkinghours=$(($totalworkinghours+empHr)) ;;
$Halftime)
totalworkingdays=$(($totalworkingdays+1))
empHr=4
totalworkinghours=$(($totalworkinghours+empHr)) ;;
*)
totalworkingdays=$(($totalworkingdays+1))
empHr=0
totalworkinghours=$(($totalworkinghours+empHr)) ;;
esac

DailyEmpWage=$(($empHr*$WagePerHr))
DailyWage["Day " $totalworkingdays]=$DailyEmpWage
totalMonthWage=$(($totalMonthWage+$DailyEmpWage))
totalMonthlyWage["Day " $totalworkingdays]=$totalMonthWage
echo "$totalworkingdays" "$DailyEmpWage" "$totalMonthWage"
done
echo "Total Monthly Wage=" $totalMonthWage
echo "Total Working Days=" $totalworkingdays
echo "Total Working Hours=" $totalworkinghours
