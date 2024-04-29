#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with root user"
    exit 1
else
    echo "you are with root user"
fi

dnf install tar -y

pwd