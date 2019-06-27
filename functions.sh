#!/bin/bash

# $@ contains argument values
# $# contains argument count

function helloworld {
	echo "Hello Worldl!"
}

echo "Calling function helloworld"
helloworld

function greet {
	echo "Hi $1!"
}

echo "Calling function greet"
greet Ather

function listDirectories {
	i=1
	for f in $@; do
		echo $i: $f
		((i++))
	done
}

echo "Calling function listDirectories"
listDirectories $(ls)