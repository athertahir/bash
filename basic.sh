
cd ~ home variable
ls -l
mkdir rmdir
ls | more
ls > /dev/null

cp -v  * ./myapp 1> ../success.txt 2> ../error.txt
cp -v  * ./myapp &> ../log.txt

# brace expansion
touch {a,b,c,d}
touch {1..10}
touch file_{1..10..2}

echo {a..z}
echo {a..z..2}

ping -c 1 google.com | grep 'aa' | cut -d = -f 4
grep -i searchtext auth.log | awk {' print $12'}  // search line by line and print 12th word

# numbers
d=2
e=$((d+2))
echo $e
((e++))  ((e*-5))  ((e+=5))

g=$(echo 1/3 | bc -l)

# comparison
[[ $a $b ]]   && || !

[[ -z $a ]] # is null
[[ -n $a ]] # is not null
[[ -z $a && -n $b ]]
echo $?

# won't work because strings, use -lt -gt -le -ge -eq -ne && ||
[[ 20 > 100 ]]
echo $?

# strings 

c=$a$b
echo ${#a}  //length
c=${c:3}  ${c:3:4}  ${c:3:4}
echo ${#a} 


# styling 
echo -e "\033[2;31;4mERROR: \033[6;31;45mSomething Wrong. \033[0m"

none=$(tput sgr0)
red=$(tput setab 0; tput setaf 1)
flashred=$(tput setaf 0; tput setaf 1; tput bold)
echo -e $flashred"Error:"$none$red" Wrong"$none

# test tcp connection
nc -v localhost 8081