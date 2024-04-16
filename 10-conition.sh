#!/bin/bash

number=$1

if [ $number -gt 10 ] 
then
    echo "The given number $number is greaterthan 10"
else
    echo "The given number $number is lessthan 10"
fi