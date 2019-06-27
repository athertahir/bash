#!/bin/bash

# use (()) for integer comparison
a=6
if [[ $a -gt 5 ]] ; then
		echo $a is greater than 5
elif [ $a -eq 5 ]
then
		echo "$a is equal to 5"
else
		echo "$a is not greater than 5"
fi

c="This is 1 a string!"
if [[ $c =~ [0-9]+ ]] ; then
		echo $c
else
		echo "No number in $c"
fi