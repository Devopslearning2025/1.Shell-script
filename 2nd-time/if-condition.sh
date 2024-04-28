#!/bin/bash

#today="monday"
today=$1

if [ $today == "sunday" ]
then
    echo "Enjoy the holiday"
else
    echo "Go to school"
fi    