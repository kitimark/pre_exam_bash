#!/bin/bash

# Change name files
for i in `find data?.txt`;do
	j=`echo $i | sed -e "s/data//g" | sed -e "s/.txt//g"`
	mv $i data0$j.txt
done

# Move files
for i in `find data*`;do
	j=`echo $i | sed -e "s/data//g" | sed -e "s/.txt//g"`
	mkdir Data$j
	mv $i Data$j/
done

mkdir myBackupProgram
for i in `find mydata*`;do
	j=`echo $i | sed -e "s/\.dat/.txt/g"`
	mv $i myBackupProgram/$j
done	
