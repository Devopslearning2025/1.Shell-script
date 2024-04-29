#!/bin/bash

#NUMBER=$1

#if [ $NUMBER -gt 10 ]
#then
 #   echo "the given number $NUMBER is greaterthen 10"
#else
#    echo "the given number $NUMBER is lessthan 10"
#i   

#-gt, -lt, -eq, -ge, -le

#if [ -f $1 ]
#then
#    echo "file is exists"
#else
#    echo "file is not there, please create new one"
#    touch $1; ls -1 $1
#fi    
if [ $# -eq 0 ]
then
    echo " Please keep the argument"
    exit 1
else
    echo "$@ argument has given"

for i in ${[@]}

do
    if [ -d $i ]
    then
        echo "Directory $1 is there"
        ls -l $1
    else
        echo "$1 directory is not present, creating it"
        mkdir -p $1; ls -l $1
    fi        
done