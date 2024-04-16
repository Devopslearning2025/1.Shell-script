#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ] 
then
    echo "Please run the script is with root user"
    exit 1 #manually exit the script if user is not root
else
    echo "you are with root user"
fi

dnf install git -y