#!/bin/bash

totalPrice=0
totalAmount=0
index=1

if (($# == 1));then
	for i in `cat $1 | tr a-z A-Z | sort`;do
		name=`echo $i | cut -d',' -f1`
		price=`echo $i | cut -d',' -f2`
		amount=`echo $i | cut -d',' -f3`
		echo -n "${index}) ${name}(${amount}) : "
		echo $((price=price*amount))
		((totalAmount+=amount))
		((totalPrice+=price))
		((index++))
	done
else
		echo Where your input file
fi
echo "Total($totalAmount) : $totalPrice"
