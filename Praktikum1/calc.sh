#!/bin/bash

checkParameter() {
	echo "checking Parameters..."
	echo "got $# parameter(s)"

        if [ "$#" -eq 0 ]; then
               	read -p "Enter the first number: " num1
	       	read -p "Enter the second number: " num2
        elif [ "$#" -eq 1 ]; then
		num1="$1"
               	read -p "Enter the second number: " num2
      	else
		num1="$1"
		num2="$2"
	fi
}

if [ "$#" -eq 0 ]; then
	echo "Please use the -help option to see further information about this script"
fi

case "$1" in
	"add")
		echo "Add..."
		checkParameter $2 $3
		result="$(($num1+$num2))"		
		echo "$num1" + "$num2" = "$result"
		;;
		
	"sub")
		echo "Sub"
		checkParameter $2 $3
                result="$(($num1-$num2))"
                echo "$num1" - "$num2" = "$result"
		;;
	"mult")
		echo "Mult"
		checkParameter $2 $3
                result="$(($num1 * $num2))"
                echo "$num1" '*' "$num2" = "$result"
		;;
	"div")
		echo "Div"
		checkParameter $2 $3
                result="$(($num1/$num2))"
                echo "$num1" / "$num2" = "$result"
		;;
	"cross")
		echo "Cross"
		if [ ${#2} -eq 0 ]; then
			read -p "Insert number: " num1
		else
			num1="$2"
		fi

		num=$num1
		sum=0
		while [ ${num} -gt 0 ]; do
   			remainder=$(( $num % 10 ))
    			num=$(( $num / 10 ))
    			sum=$(( $sum + $remainder ))  
		done

		echo "Cross of "$num1" is "$sum""
		;;
	"-help")
		echo "Please enter at least one argument. The first argument has to be the desired operation. You can choose one of the following: 'add' 'sub' 'mult' 'div' 'cross' '-help'"
		;;
	*)
		echo "Please enter '-help' for more information on how to use this calculator."
		;;
esac
