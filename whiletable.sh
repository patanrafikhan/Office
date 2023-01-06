#!/bin/bash -x

halfDAy=1
fullDay=2
perHourSal=100
monthDay=31
maxDay=20
totalHour=0
perDay=0
absDay=0
day=1

while [[ $day -le $monthDay && $perDay -lt $maxDay && $totalHour -lt 120 ]]
do
	ranCheck=$((RANDOM%3))
	case $ranCheck in
		$halfDay)
			empHour=4 
			((perDay++)) ;;
		$fullDay)
			empHour=8
			((perDay++)) ;;
		*)
			empHour=0
			((absDay++)) ;;
	esac
	totalHour=$(($totalHour+$empHour))
	((day++))
done

monthlySal=$(($totalHour*$perHourSal))
echo "total monthly salary is $monthlySal"
echo "total day present is $perDay"
echo "Total day absent $absDay"
echo "Total Hour worked is $totalHour"
