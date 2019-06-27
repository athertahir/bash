#!/bin/bash

date +"%d-%m-%Y"
date +"%H-%M-%S"
today=$(date +"%d-%m-%Y")
time =$(date +"%H:%M:%S")
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d"



# arrays
a=()
b=("a","b","c")
echo ${b[2]}
b[2]="kiwi"
echo ${b[@]}
echo ${b[@]: -1}

declare -A myarray
myarray[color]=blue
myarray["office"]="HQ West"
echo ${myarray["office"]} is ${myarray[color]}

# files
echo "test\n" > file.txt
#> file.txt
echo "test2" >> file.txt #append

i=1
while read f; do
	echo "Line $i : $f"
	((i++))
done < file.txt

# "-" removes tabs
echo done.txt <<- EndOfText
this is a 
	multiline
text

EndOfText