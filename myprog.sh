#!/bin/bash


DIR1=temp

PS3='select menu: '
mkdir $DIR1
echo "$...create temp directory..."

cp t1.txt $DIR1
cp t2.txt $DIR1
cp cal.sh $DIR1

echo "$...copy files to temp directory..."
select var in add sub div mul

do
	echo "..."$var" selected..."
	break
done

PAR="$var"
export PAR #PAR ready to send
bash cal.sh  #run cal.sh



