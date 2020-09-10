#!/bin/bash
echo ">---< Employee Wage Computation >---<"

isPresent=1
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is Present"
else
        echo "Not Presnet"
fi
