#!/bin/bash

userid=$(id -u)
script_name=$(echo $0|cut -d "." -f1)
date=$(date +%F-%H-%M-%S)
log=/tmp/$script_name-$date.log

VALIDATE (){
    if [ $1 -ne 0 ]
    then
        echo "$2 ... failure"
        exit 1
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

dnf install nginxx -y &>>$log
VALIDATE $? "Installing nginx"

dnf install gcc -y &>>$log
VALIDATE $? "Installing gcc"