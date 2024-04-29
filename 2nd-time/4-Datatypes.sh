#!/bin/bash

#if you define a variable as array, it can hold list of varaibles

#list always starts with zero
#Size fo the above is 3
#The index are 0, 1, 2

Movies=( "DJ" "Athadu" "RRR" )

#echo "The 1st movie from list is: ${Movies[0]}"
#echo "The 2nd movie from list is: ${Movies[1]} "
#echo "The movies are from the list is: ${Movies[@]}"

for i in $Movies
do
#echo $i; 
 #   ((i++))
 print ( i = 0; i <= 3; i++ )
done
