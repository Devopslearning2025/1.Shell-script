#!/bin/bash

userid=$(id -u)
set -e
if [ $userid -ne 0 ] 
then
    echo "Please run the script is with root user"
    exit 1 #manually exit the script if user is not root
else
    echo "you are with root user"
fi

dnf install gcc -y
dnf install gzip -y
dnf install gziip -y

echo "completed the above all installation"