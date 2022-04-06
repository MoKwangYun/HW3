#!/bin/bash

PS3='select menu: '
echo "project management in github"

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

array=()
array[0]=$(<t1.txt)
array[1]=$(<t2.txt)
echo "num1 : "${array[0]}""
echo "num2 : "${array[1]}""

echo "op : "$PAR""

if [ $PAR == "add" ]; then
	result=$((array[0] + array[1]))
	echo "result : "$result""

elif [ $PAR == "sub" ]; then
	result=$((array[0] - array[1]))
	echo "result : "$result""

elif [ $PAR == "div" ]; then
	result=$((array[0] / array[1]))
	echo "result : "$result""

elif [ $PAR == "mul" ]; then
	result=$((array[0] * array[1]))
	echo "result : "$result""


fi
