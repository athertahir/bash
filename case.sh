#!/bin/bash

a="cat"
case $a in 
	cat) echo "it's a cat" ;;
	dog|puppy) echo "it's a dog" ;;
	*) echo "No match" ;;
esac