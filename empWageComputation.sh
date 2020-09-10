#!/bin/bash
echo ">---< Employee Wage Computation >---<"

wagePerHour=20
fullWorkingHours=16
isPresent=1
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is Present"
else
        echo "Not Present"
fi

dailyWage=$(( $wagePerHour * $fullWorkingHours ))
echo "Daily Wages : $dailyWage"
