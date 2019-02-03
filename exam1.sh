#!/bin/bash


for j in `seq 100`;do
	for i in `seq 25`
	do
		
		echo Aaaa >> data${j}.txt
		echo Bbbb >> data${j}.txt
	done
done
