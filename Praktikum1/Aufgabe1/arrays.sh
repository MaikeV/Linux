#!/bin/bash

MyArray=("Element 1" "Element 2" 42 1337)

echo ${MyArray[0]}
echo ${MyArray[1]}
echo ${MyArray[2]}
echo ${MyArray[3]}

MyArray[3]="UpdatedContent"
MyArray[4]="AppendedContent"

echo ""

echo ${MyArray[0]}
echo ${MyArray[1]}
echo ${MyArray[2]}
echo ${MyArray[3]}
echo ${MyArray[4]}

echo ""

echo ${#MyArray[0]}
echo ${#MyArray[1]}
echo ${#MyArray[2]}
echo ${#MyArray[3]}
echo ${#MyArray[4]}

echo ""

echo There are ${#MyArray[@]} Elements in the Array

echo ""

echo "print array using loop:"

for j in "${MyArray[@]}"; do
	echo $j
done

echo ""

for j in "${MyArray[@]}"; do
	if [ ${#j} -gt "5" ]; then
		echo $j
	else
		echo "Variable too short"
	fi
done
