#!/bin/bash

PS3='select menu: '


if [ -z "$PAR" ]; then
	echo "...none operator parameter..."
	
	select var1 in add sub div mul

	do
		echo "..."$var1" selected..."
		PAR="$var1"
		break
	done
	
else
	echo "...run calculater..."


fi

v1=$(<t1.txt)
v2=$(<t2.txt)
echo "num1 : "$v1""
echo "num2 : "$v2""
echo "op : "$PAR""

if [ $PAR == "add" ]; then
	result=$(($v1 + $v2))
	echo "result : "$result""

elif [ $PAR == "sub" ]; then
	result=$(($v1 - $v2))
	echo "result : "$result""

elif [ $PAR == "div" ]; then
	result=$(($v1 / $v2))
	echo "result : "$result""

elif [ $PAR == "mul" ]; then
	result=$(($v1 * $v2))
	echo "result : "$result""


fi
