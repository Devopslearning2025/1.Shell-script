#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with root user"
    exit 1
else
    echo "you are with root user"
fi

check_status(){
    if [ $1 -ne 0 ]
then
    echo "The installation ... FAILURE, check error"
    exit 
else
    echo " $2 installation .. SUCCESS"   
fi
}
dnf install gzip -y
check_status $? "installing gzip command"

dnf install tar -y
check_status $? "installing tar command"