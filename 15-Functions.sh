#!/bin/bash

userid=$(id -u)

VALIDATE (){
    if [ $1 -ne 0 ]
    then
        echo "$2 ... failure"
        exigt 1
    else
        echo "$2 is success"
    fi
}

if [ $userid -ne 0 ]
then
    echo " Please run with root user"
    exit 1
else
    echo "you are with root user"    
fi

dnf install nginx -y
VALIDATE $? "Installing nginx"

dnf install gcc -y
VALIDATE $? "Installing gcc"