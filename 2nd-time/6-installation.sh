#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with root user"
    exit 1
else
    echo "you are with root user"
fi

dnf install gzip -y
if [ $? -ne 0 ]
then
    echo "The installation ... FAILURE, check error"
    exit 
else
    echo " installation .. SUCCESS"   
fi

dnf install tar -y
if [ $? -ne 0 ]
then
    echo "The installation ... FAILURE, check error"
    exit 
else
    echo " installation .. SUCCESS"   
fi