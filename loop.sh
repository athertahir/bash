#!/bin/bash

# use (()) for integer comparison
i=0
while [ $i -le 10 ]
do	
		echo i:$i
		((i+=1))
done


j=0
until [ $j -ge 10 ]; do	
		echo j:$j
		((j+=1))
done


for i in 1 2 3
do	
		echo i:$i
done

# brace expansion
for i in {1..100..10}
do	
		echo i:$i
done

# brace expansion
for ((k=1; k<5; k++))
do	
		echo k:$k
done


arr=("a" "b" "c")
# parameter expansion
for i in ${arr[@]}
do	
		echo i:$i
done

declare -A myarray
myarray[color]=blue
myarray["office B"]="HQ West"

# use because keys can contain spaces
for i in "${!myarray[@]}"
do	
		echo "$i:${myarray[$i]}"
done

# command substitution/ shell expansion
echo $(ls)
for i in $(ls)
do	
	echo $i
done
