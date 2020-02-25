#!/bin/bash
clear
input="data.txt"
		OLDIFS=$IFS
		IFS=','
		while read empid empname intime outtime
		do
			if [ $(($outtime-$intime)) -lt 9 ]
			then
				echo "Emp Id: $empid"
				echo "Emp Name: $empname"
				echo "In Time: $intime"
				echo "Out out: $outtime"
			fi
		done < $input
		IFS=$OLDIFS