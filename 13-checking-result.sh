#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "Please run the script with root access"
    exit 1 #manuallt exit if error come
else
    echo "you are super suer"
fi
 dnf install nginxx -y

 if [ $? -ne 0 ]
 then
    echo "the nginstallation failure"
    exit 1
fi