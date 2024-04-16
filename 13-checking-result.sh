#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "Please run the script with root access"
    exit 1 #manuallt exit if error come
else
    echo "you are super suer"
fi
 dnf install git -y

 if [ $? -ne 0 ]
 then
    echo "the git installation .......failure"
    exit 1
else
    echo "Installation of git is success"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "The mysql installation failure"
    exit 1
else 
    echo "mysql installation success"
fi        