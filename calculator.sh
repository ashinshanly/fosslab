#!/bin/bash

while :
do

	echo "1.ADD  2.SUBTRACT  3.MULTIPLY  4.DIVIDE"
	read $input
	if [$input == 1];
	then
		echo "ENTER TWO NUMBERS:"
		read num1
		read num2
		result=$(num1+num2)
		echo $result
	fi

done
