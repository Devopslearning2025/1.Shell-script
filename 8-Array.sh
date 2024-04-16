#!/bin/bash

movies=("DJ" "RRR" "Athadu")

#size of array is 3
#index are 0,1,2

#list always starts with 0

echo "First movie is: ${movies[0]}"

echo "second movie is: ${movies[2]}"
echo "All movies are: ${movies{@}}"