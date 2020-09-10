#!/bin/bash
echo ">---< Employee Wage Computation >---<"

wagePerHour=20
fullWorkingHours=16
halfWorkingHours=8
fullDay=2
halfDay=1
isPresent=1
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
