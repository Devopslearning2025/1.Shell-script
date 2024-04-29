#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with root user"
else
    echo "you are with root user"
fi

pwd