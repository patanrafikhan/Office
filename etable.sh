#!/bin/bash -x

halfDAy=1
fullDay=2
perHourSal=100
maxDay=26
totalHour=0

for ((day=1; day<=$maxDay; day++))
do
	ranCheck=$((RANDOM%3))
	case $ranCheck in
		$halfDay)
			empHour=4 ;;
		$fullDay)
			empHour=8 ;;
		*)
			empHour=0 ;;
	esac
	totalHour=$(($totalHour+$empHour))
done

monthlySal=$(($totalHour*$perHourSal))
echo "total monthly salary is $monthlySal"

