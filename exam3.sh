#!/bin/bash

#for i in `find data?.txt`;do
#	j=`echo $i | sed -e "s/data//g" | sed -e "s/.txt//g"`
#	mv $i data0$j.txt
#done

for i in `find data*`;do
	j=`echo $i | sed -e "s/data//g" | sed -e "s/.txt//g"`
	mkdir Data$j
	mv $i Data$j/
done
