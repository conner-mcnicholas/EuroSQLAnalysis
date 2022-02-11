#!/bin/bash
cd data
while read i
do
	tail -n +2 $i.csv > justdata/$i.csv
done < ../tablenames.txt
cd ..
