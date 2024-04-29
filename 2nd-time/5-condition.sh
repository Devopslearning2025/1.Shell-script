#!/bin/bash

#NUMBER=$1

#if [ $NUMBER -gt 10 ]
#then
 #   echo "the given number $NUMBER is greaterthen 10"
#else
#    echo "the given number $NUMBER is lessthan 10"
#i   

#-gt, -lt, -eq, -ge, -le

if [ -f $1 ]
then
    echo "file is exists"
else
    echo "file is there, please create new one"
fi    