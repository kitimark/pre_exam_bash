#!/bin/bash

for i in `seq 100`;do
	k=0
	if ((i < 10));then
		k=0$i
	else
		k=$i
	fi

	for j in `seq $i`;do
		if (($i%2));then
			echo 13579 >> test/mydata$k.dat
		else
			echo 246810 >> test/mydata$k.dat
		fi
	done
done
