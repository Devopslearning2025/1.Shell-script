#!/bin/bash

userid=$(id -u)

VALIDATE (){
    echo "exit status: $1"
    echo "what you are doing: $2"
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