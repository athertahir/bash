#!/bin/bash

# : after flag means value is expected
# : at the start to know unknown flags
while getopts :u:p:ab option; do
		case $option in 
		u) user=$OPTARG;;
		p) password=$OPTARG;;
		a) echo "a flag passed" ;;
		#*) echo "Unknown flag: $OPTARG" ;;
		?) echo "Unknown flag: $OPTARG" ;;
		esac
done

echo "User $user Password $password"

echo "What is your name?"
read name
echo "What is your password?"
read -s password
read -p "What is your qualification?" education

echo name: $name,  password: $password,  education: $education

select education in "matric" "F.Sc" "Engineering" "quit"
do
	case $education in 
		"matric")  echo $education;;
		"F.Sc")  echo $education;;
		"Engineering")  echo $education;;
		"quit")  echo "Quitting...." ; break;;
		*)  echo "Invalid Selection";;
	esac
done

read -p "Favouriate animal? " animal
while [[ -z $animal ]]; do
	animal="cat"
	break
done
echo "animal: $animal"

read -p "What year? [nnnn] " year
while [[ ! $year =~ [0-9]{4} ]]; do
	echo "Invalid year. Please add format: [nnnn]"
	read -p "What year? [nnnn] " year
done
echo "year: $year"
	