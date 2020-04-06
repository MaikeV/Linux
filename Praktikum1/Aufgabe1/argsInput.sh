#!/bin/bash

echo script name: $0
echo arguments $1 - $2 - $3
echo number of arguments: $#

for argument in "$@"
do 
	echo "$argument"
done

echo ""

read -p "Enter your name : " name
echo "Hi, $name. Let us be friends!"

read -p "Enter number one : " n1
read -p "Enter number two : " n2
read -p "Enter number three : " n3
echo "Number1 - $n1"
echo "Number2 - $n2"
echo "Number3 - $n3"


