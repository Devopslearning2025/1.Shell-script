#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with root user"
    exit
else
    echo "you are with root user"
fi

pwd