#!/bin/bash
echo ">---< Employee Wage Computation >---<"

wagePerHour=20
fullWorkingHours=16
halfWorkingHours=8
fullDay=2
halfDay=1
isPresent=1
randomCheck=$(( RANDOM % 3 ))
if [ $isPresent -eq $randomCheck ]
then
        dailyHours=$halfWorkingHours
elif [ $isPresent -gt $randomCheck ]
then
        dailyHours=$fullWorkingHours
else
	dailyHours=$0
fi

dailyWage=$(( $wagePerHour * $dailyHours ))
echo "Daily Wages : $dailyWage"
