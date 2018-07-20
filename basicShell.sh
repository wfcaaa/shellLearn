#!/bin/bash
echo "Hello World!"

echo "this is a  begining of my shell progrommming---"

name="jax"
purpose="get 10000 after tax"
output="what I want to say is that \"${name} ${purpose}\"! "
echo ${output}

#get the lenth of varible name
echo ${#name}

# use charactor `` to run command in shell and use the result to assign to variable "file" in for loop
# we can use "#" to annotation or use ":<<!" annotation and "!" to annotation (the "!" be replace to other charactor, sucn as "EOF" "'" etc) 
:<<!
for file in `ls /home/jaxwu/tmpFile`;do
    echo ${file}
done
!

#use "ada" "coffe" "action" "java" to assign to variable "skill" one by one
for skill in ada coffe action java;do
    echo "I am good at ${skill} script"
done

#get the index from 1 to 7 of "string"
string="runoob is a great commpany"
echo ${string:1:7}

echo `expr index "$string" is`

# array you can use "@" or "*" to get all element if array
array=(0 1 2 3 4)
map=("this" "is" "a" "test" "script")

for index in ${array[@]};do
    echo ${map[$index]}
done

#get lenth of whole array
echo ${#array[@]}
echo ${#array[*]}

#get  param passed to shell scrpt the "$0" reprsent the execution script name "$1" represent the first param which follow the script "$2" represnt the second, "$@" represent all param
# some useful charactor "$#" represent the number of param(not include exectution script) "$*" and "$@" when they not enclosed with \"\" they are same, represent all param
# for example ,if we run ./test.sh hi world, the $* and $@ represent hi world,if they are enclose with ", the "$*" represent "hi world",and the "$@" represent "hi" "world".
# $$ represent the current process ID of the execution script, $! represent the last process ID of background, $? represnet the exit statue of the last command,and 0 represetn ok ,others 
# represent false, $# represent the number of the param which pass to script, $- is same to set display the current optional.
echo "shell pass param instance"
echo "execution file name is $0"
for para in $*;do
    echo $para
done

echo $#
echo "$*"
echo $$
echo $?
echo $-

if [ -n "${string}" ];then
    echo "include first param : $string"
else
    echo "not include first param"
fi

