#!/bin/bash
echo ">---< Employee Wage Computation >---<"

wagePerHour=20
fullWorkingHours=16
halfWorkingHours=8
fullDay=2
halfDay=1
totalWorkingHours=320
workingDayInMonth=20
day=1
presentHours=0
isPresent=1
while [ $day -le $workingDayInMonth ] && [ $presentHours -lt $totalWorkingHours ]
do
	randomCheck=$(( RANDOM % 3 ))
	case $randomCheck in
		"2")
			dailyHours=$fullWorkingHours;;
		"1")
			dailyHours=$halfWorkingHours;;
		*) dailyHours=0;;
	esac
	dailyWage=$(( $wagePerHour * $dailyHours ))
	echo "Daily Wages : $dailyWage"
	presentHours=$(( $presentHours + $dailyHours ))
	totalWage=$(( $presentHours * $wagePerHour ))
	echo "Total Wages : $totalWage"
	((day++))
done
